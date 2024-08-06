UPDATE  VERSAOSISTEMA 
SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.595',
    VERSAOSISTEMA.DATA   = '06.08.2024',
	VERSAO = '3.0.9.595'
 where VERSAOSISTEMA.CODIGO = 1;
commit work;

CREATE OR ALTER PROCEDURE PCD_FLUXO_CAIXA (DATA_INICIAL DATE, DATA_FINAL DATE, CODIGO_EMPRESA VARCHAR(3), SALDOBANCO VARCHAR(1), MENSAL VARCHAR(1))
RETURNS (
	DATA_MOVIMENTO DATE,
	VALOR_PREVISAO_RECEBER NUMERIC(18,5),
	VALOR_RECEBIDO NUMERIC(18,5),
	VALOR_RECEBER NUMERIC(18,5),
	VALOR_DESCONTADO NUMERIC(18,5),
	VALOR_PREVISAO_PAGAR NUMERIC(18,5),
	VALOR_PAGO NUMERIC(18,5),
	VALOR_PAGAR NUMERIC(18,5),
	SALDO_DO_DIA_PREV NUMERIC(18,5),
	SALDO_DO_DIA_REAL NUMERIC(18,5),
	SALDO_ACUMULADO_PREV NUMERIC(18,5),
	SALDO_ACUMULADO_REAL NUMERIC(18,5),
	SALDO_INICIAL_PREV NUMERIC(18,5),
	SALDO_INICIAL_REAL NUMERIC(18,5)
)
AS
declare variable DATA_PROCESSO date;
declare variable DATA_CONCILIACAO date;
declare variable SALDO_BANCO numeric(18,5);
declare variable SALDO_INI_PREV_TEMP numeric(18,5);
declare variable SALDO_INI_REAL_TEMP numeric(18,5);
declare variable RECEBER_BANCO numeric(18,5);
declare variable PAGAR_BANCO numeric(18,5);
declare variable PREVRECEBER_BANCO numeric(18,5);
declare variable PREVPAGAR_BANCO numeric(18,5);
declare variable BAN_CODIGO varchar(4);
declare variable BANCO_EXCLUSIVO varchar(2);
begin
   /*Inicializa variaveis*/
   DATA_PROCESSO        = :DATA_INICIAL;
   SALDO_DO_DIA_PREV    = 0;
   SALDO_DO_DIA_REAL    = 0;
   SALDO_ACUMULADO_PREV = 0;
   SALDO_ACUMULADO_REAL = 0;
   SALDO_INICIAL_PREV = 0 ;
   SALDO_INICIAL_REAL = 0 ;
   SALDO_INI_REAL_TEMP = 0 ;
   SALDO_INI_PREV_TEMP = 0 ;
   PREVRECEBER_BANCO = 0 ;
   PREVPAGAR_BANCO = 0 ;
   RECEBER_BANCO = 0 ;
   PAGAR_BANCO = 0 ;
   SELECT BANCOS FROM SHAREDB
   INTO :BANCO_EXCLUSIVO;
   if (SALDOBANCO = 'S') then
   begin
    for
     SELECT BAN_CODIGO, ROUND(COALESCE(BAN_CONCILIACAO_SALDO,0), 5), BAN_CONCILIACAO_DATA
     FROM BAN0000 
     WHERE 
     /* BAN_FLUXOCAIXA = 'S'  SEM VAI PEGAR TODOS AS CONTAS
     AND BAN_CONCILIACAO_DATA IS NOT NULL */
      (EMP_CODIGO = :CODIGO_EMPRESA or :CODIGO_EMPRESA = '999' )
     INTO :BAN_CODIGO, :SALDO_BANCO, :DATA_CONCILIACAO
     do
     begin   
       If (DATA_CONCILIACAO   < DATA_INICIAL) then
       BEGIN
        SALDO_INI_PREV_TEMP = SALDO_BANCO + SALDO_INI_PREV_TEMP;
        SALDO_INI_REAL_TEMP = SALDO_BANCO + SALDO_INI_REAL_TEMP;
       END    
      /* RECEBIDO PELO CONTA BANCO ANTES DO PERIODO E DEPOIS DA CONCILIACAO */ 
        If (DATA_CONCILIACAO + 1  < DATA_INICIAL-1) then
        begin
            /* RECEBIDO */
            SELECT ROUND(COALESCE(sum(COALESCE(FRE_RECEBIDO,0)),0), 5)
            from FAT_RECEBIMENTO
           WHERE BAN_CODIGO = :BAN_CODIGO
             AND FRE_DATA_RECEBIMENTO BETWEEN :DATA_CONCILIACAO+1 AND  :DATA_INICIAL-1
             and (EMP_CODIGO = :CODIGO_EMPRESA or :CODIGO_EMPRESA = '999')
             INTO :RECEBER_BANCO;
            
            /*PAGO E DEPOSITADO NO BANCOS ANTES DO PERIODO SOLICITADO */
            Select ROUND(COALESCE(sum(COALESCE(PAG_PAGO,0)),0), 5)
            from PAG_PAGAMENTO
            WHERE BAN_CODIGO = :BAN_CODIGO
             AND PAG_DATA_PAGAMENTO BETWEEN :DATA_CONCILIACAO+1 AND :DATA_INICIAL-1
            and (EMP_CODIGO = :CODIGO_EMPRESA or :CODIGO_EMPRESA = '999')        
            INTO :PAGAR_BANCO;      
            SALDO_INI_REAL_TEMP = SALDO_INI_REAL_TEMP + RECEBER_BANCO - PAGAR_BANCO;
            
            /*  PREVISAO RECEBER */
            Select  ROUND(COALESCE(sum(COALESCE(FPC_VLPARC,0)),0), 5)
            from FAT_PC01 FT 
            LEFT JOIN FORMA_PAGAMENTO FP ON (FP.FPG_REGISTRO = FT.FPG_REGISTRO )
            LEFT JOIN BAN0000 B ON (FT.BAN_CODIGO = B.BAN_CODIGO AND (FT.FPC_TIPODOC = 'BL' 
            OR FPG_DESCRICAO IN ('CARTAO DE CREDITO','BOLETO')) 
                                    AND (B.EMP_CODIGO = FT.EMP_CODIGO OR :BANCO_EXCLUSIVO='C'))
            where FPC_EXCLUSAO = 'N'
            and (FPC_VENCTO + COALESCE(BAN_DIASCRED_COBRANCA,0)) BETWEEN :DATA_CONCILIACAO+1 AND  :DATA_INICIAL-1
            and  FT.BAN_CODIGO = :BAN_CODIGO
            and (FT.EMP_CODIGO = :CODIGO_EMPRESA or :CODIGO_EMPRESA = '999')
            INTO :PREVRECEBER_BANCO;            

            /*PREV conta a pagar*/
            Select ROUND(COALESCE(sum(COALESCE(PPC_VLPARC,0)),0), 5)
              from PAG_PC01
             where PPC_EXCLUSAO = 'N'
               and PPC_VENCTO  BETWEEN :DATA_CONCILIACAO+1 AND  :DATA_INICIAL-1
               and  BAN_CODIGO = :BAN_CODIGO
               and (EMP_CODIGO = :CODIGO_EMPRESA or :CODIGO_EMPRESA = '999')
              INTO :PREVPAGAR_BANCO;            
             
            SALDO_INI_PREV_TEMP =  SALDO_INI_PREV_TEMP +PREVRECEBER_BANCO - PREVPAGAR_BANCO;
        end
        
     end
   end
      /*  pegar as contas previsao a receber e pagar que nao foram colocadas o banco*/
            /* RECEBIDO */
      DATA_CONCILIACAO = '2018-12-31';
     if (DATA_CONCILIACAO <> DATA_INICIAL-1) then
     begin
         PREVPAGAR_BANCO = 0 ;
         PREVRECEBER_BANCO = 0 ;
        /*  PREVISAO RECEBER */
        Select  ROUND(sum(COALESCE(FPC_VLPARC,0)), 5)
        from FAT_PC01 FT 
        where FPC_EXCLUSAO = 'N'
        and FPC_VENCTO  BETWEEN :DATA_CONCILIACAO+1 AND  :DATA_INICIAL-1
        and  ( BAN_CODIGO  is null OR TRIM(BAN_CODIGO) = '' OR BAN_CODIGO = '0000')
        and (FT.EMP_CODIGO = :CODIGO_EMPRESA or :CODIGO_EMPRESA = '999')
        INTO :PREVRECEBER_BANCO;            
    
        /*PREV conta a pagar*/
        Select ROUND(sum(COALESCE(PPC_VLPARC,0)), 5)
          from PAG_PC01
         where PPC_EXCLUSAO = 'N'
           and PPC_VENCTO  BETWEEN :DATA_CONCILIACAO+1 AND  :DATA_INICIAL-1
           and ( BAN_CODIGO  is null OR trim(BAN_CODIGO) = '' OR BAN_CODIGO = '0000')
           and (EMP_CODIGO = :CODIGO_EMPRESA or :CODIGO_EMPRESA = '999')
          INTO :PREVPAGAR_BANCO;            
          
         SALDO_INI_PREV_TEMP =  SALDO_INI_PREV_TEMP +PREVRECEBER_BANCO - PREVPAGAR_BANCO;
    end
   
   /* fim xunxo */
   SALDO_ACUMULADO_PREV = COALESCE(SALDO_INI_PREV_TEMP,0);
   SALDO_ACUMULADO_REAL = COALESCE(SALDO_INI_REAL_TEMP,0);
   while (DATA_PROCESSO <= DATA_FINAL) do
    begin
    
     if (SALDOBANCO = 'S') then
     begin
         SALDO_BANCO = 0;
         SELECT ROUND(SUM(COALESCE(BAN_CONCILIACAO_SALDO ,0)), 5)
         FROM BAN0000 
         WHERE BAN_CONCILIACAO_DATA  = :DATA_PROCESSO
         /* BAN_FLUXOCAIXA = 'S'  SEM VAI PEGAR TODOS AS CONTAS
         AND BAN_CONCILIACAO_DATA IS NOT NULL */
         AND (EMP_CODIGO = :CODIGO_EMPRESA or :CODIGO_EMPRESA = '999' OR :BANCO_EXCLUSIVO='C')
         INTO :SALDO_BANCO;
         if (SALDO_BANCO is not null ) then
         begin
           SALDO_INI_PREV_TEMP = SALDO_INI_PREV_TEMP + SALDO_BANCO;
           SALDO_INI_REAL_TEMP = SALDO_INI_REAL_TEMP + SALDO_BANCO;
           SALDO_ACUMULADO_PREV = SALDO_ACUMULADO_PREV + SALDO_BANCO;
           SALDO_ACUMULADO_REAL =  SALDO_ACUMULADO_REAL + SALDO_BANCO;
         end
     end
        /*Previsao de Receber*/
     
        Select ROUND(COALESCE(sum(FPC_VLPARC),0), 5)
        from FAT_PC01 FT
        LEFT JOIN FORMA_PAGAMENTO FP ON (FP.FPG_REGISTRO = FT.FPG_REGISTRO )
        LEFT JOIN BAN0000 B ON (FT.BAN_CODIGO = B.BAN_CODIGO AND (FT.FPC_TIPODOC = 'BL' OR 
            FPG_DESCRICAO IN ('CARTAO DE CREDITO','BOLETO'))
              AND (B.EMP_CODIGO = FT.EMP_CODIGO OR :BANCO_EXCLUSIVO='C'))
        where FPC_EXCLUSAO = 'N'
        and (( FPC_DESCONTADO = 'N' AND (FPC_VENCTO + COALESCE(BAN_DIASCRED_COBRANCA,0)) = :DATA_PROCESSO)
          or  (FPC_DESCONTADO = 'S' AND fpc_pagto = :DATA_PROCESSO  )  )      
        and (FT.EMP_CODIGO = :CODIGO_EMPRESA or :CODIGO_EMPRESA = '999')
       -- group by  (FPC_VENCTO + COALESCE(BAN_DIASCRED_COBRANCA,0))
        INTO :VALOR_PREVISAO_RECEBER;
                
        /*Recebido*/
        Select ROUND(COALESCE(sum(FRE_RECEBIDO),0), 5)
        from FAT_RECEBIMENTO
        where FRE_DATA_RECEBIMENTO = :DATA_PROCESSO
          and (EMP_CODIGO = :CODIGO_EMPRESA or :CODIGO_EMPRESA = '999')
        --group by FRE_DATA_RECEBIMENTO
         INTO :VALOR_RECEBIDO;
        if (:VALOR_RECEBIDO IS NULL) then
           VALOR_RECEBIDO = 0;
        /*Valor Receber*/
        VALOR_RECEBER = VALOR_PREVISAO_RECEBER - VALOR_RECEBIDO;

        /*duplicatas descontadas*/
        Select ROUND(COALESCE(sum(FPC_VLPARC),0), 5)
           from FAT_PC01
           where FPC_EXCLUSAO = 'N'
           and FPC_DATADESCTO = :DATA_PROCESSO
           and FPC_DESCONTADO = 'S'
           and (EMP_CODIGO = :CODIGO_EMPRESA or :CODIGO_EMPRESA = '999')
           group by FPC_DATADESCTO
           INTO :VALOR_DESCONTADO;

        if (:VALOR_PREVISAO_RECEBER IS NULL) then
           VALOR_PREVISAO_RECEBER = 0;
        /**/
        if (:VALOR_RECEBIDO IS NULL) then
           VALOR_RECEBIDO = 0;
        /**/
        if (:VALOR_RECEBER IS NULL) then
           VALOR_RECEBER = 0;
        /**/
        if (:VALOR_DESCONTADO IS NULL) then
           VALOR_DESCONTADO = 0;


        /*PREV conta a pagar*/
        Select ROUND(COALESCE(sum(PPC_VLPARC),0),5)
       from PAG_PC01
       where PPC_EXCLUSAO = 'N'
         and PPC_VENCTO =:DATA_PROCESSO
         and (EMP_CODIGO = :CODIGO_EMPRESA or :CODIGO_EMPRESA = '999')
         group by PPC_VENCTO
         INTO:VALOR_PREVISAO_PAGAR;
         
        /*pago*/
        Select ROUND(COALESCE(sum(PAG_PAGO),0), 5)
        from PAG_PAGAMENTO
        where PAG_DATA_PAGAMENTO = :DATA_PROCESSO
        and (EMP_CODIGO = :CODIGO_EMPRESA or :CODIGO_EMPRESA = '999')
        group by PAG_DATA_PAGAMENTO
        INTO :VALOR_PAGO;
        /*Valor Pagar*/
        VALOR_PAGAR = VALOR_PREVISAO_PAGAR - VALOR_PAGO;

        /**/
        if (:VALOR_PREVISAO_PAGAR IS NULL) then
           VALOR_PREVISAO_PAGAR = 0;
        /**/
        if (:VALOR_PAGO IS NULL) then
           VALOR_PAGO = 0;
        /**/
        if (:VALOR_PAGAR IS NULL) then
           VALOR_PAGAR = 0;
        /*movimento*/
        DATA_MOVIMENTO = DATA_PROCESSO;
        /*SALDO DO DIA*/
        SALDO_DO_DIA_PREV    = ((VALOR_PREVISAO_RECEBER) - VALOR_PREVISAO_PAGAR);
        SALDO_DO_DIA_REAL    = ((VALOR_RECEBIDO) - VALOR_PAGO);
        
      
        /*SALDO ACUMULADO*/
        SALDO_ACUMULADO_PREV = (SALDO_ACUMULADO_PREV + SALDO_DO_DIA_PREV);
        SALDO_ACUMULADO_REAL = (SALDO_ACUMULADO_REAL + SALDO_DO_DIA_REAL);
        
        if (SALDOBANCO = 'S') then
        begin
         IF ((MENSAL = 'S' AND EXTRACT(DAY FROM DATA_MOVIMENTO )=1  ) OR (MENSAL <> 'S') ) THEN
          begin
            SALDO_INICIAL_PREV = SALDO_INI_PREV_TEMP;
            SALDO_INICIAL_REAL = SALDO_INI_REAL_TEMP;
          end    
          ELSE
          begin
            SALDO_INICIAL_PREV = 0;
            SALDO_INICIAL_REAL = 0;
          end    
        end

        SUSPEND;

        /* SALDOS INICIAIS */
        if (SALDOBANCO = 'S') then
        begin
          SALDO_INI_REAL_TEMP = SALDO_ACUMULADO_REAL;
          SALDO_INI_PREV_TEMP = SALDO_ACUMULADO_PREV;
        end
        
        DATA_PROCESSO = DATA_PROCESSO + 1;
        /*inicializa variaveis */
        VALOR_PREVISAO_RECEBER = 0;
        VALOR_RECEBIDO = 0;
        VALOR_RECEBER = 0;
        VALOR_DESCONTADO = 0;
        VALOR_PREVISAO_PAGAR  = 0;
        VALOR_PAGO = 0;
        VALOR_PAGAR = 0;
    END
end;
