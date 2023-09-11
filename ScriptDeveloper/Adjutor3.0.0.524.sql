UPDATE  VERSAOSISTEMA 
SET    VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.524',
       VERSAOSISTEMA.DATA   = '30.10.2018',
       VERSAO = '3.0.9.524'
where VERSAOSISTEMA.CODIGO = 1;

ALTER TABLE BAN0000 ADD BAN_CobrancaDmaisX INTEGER ;

UPDATE BAN0000 SET BAN_CobrancaDmaisX = 0;
COMMIT WORK;

comment ON COLUMN BAN0000.BAN_COBRANCADMAISX IS 'DIAS PARA CREDITAR O VALOR DO BOLETO PAGO AO BENEFICIARIO';

ALTER TABLE EMP0000 ADD EMP_DIREITO_CREDITO NUMERIC(18,5);

COMMENT ON COLUMN EMP0000.EMP_DIREITO_CREDITO IS 'DIREITO DE CREDITO SIMPLES ';

UPDATE EMP0000 SET EMP_DIREITO_CREDITO = EMP_PERCENT_SIMPLES;
COMMIT WORK;

ALTER TABLE PED0000 ADD CLI_CPF VARCHAR(11);
COMMENT ON COLUMN PED0000.CLI_CPF IS 'CPF NA NOTA NFCE';

ALTER TABLE PCL0000 ADD pcl_baixa_automa varchar(1);

UPDATE PCL0000 SET pcl_baixa_automa = 'N';

COMMENT ON COLUMN PCL0000.pcl_baixa_automa IS 'LANCAMENTO DA BAIXA AUTOMATICA';

COMMIT WORK;

SET TERM ^ ;

CREATE or ALTER  PROCEDURE PCD_FLUXO_CAIXA (DATA_INICIAL DATE, DATA_FINAL DATE, CODIGO_EMPRESA VARCHAR(3))
RETURNS (
    DATA_MOVIMENTO DATE,
    VALOR_PREVISAO_RECEBER NUMERIC,
    VALOR_RECEBIDO NUMERIC,
    VALOR_RECEBER NUMERIC,
    VALOR_DESCONTADO NUMERIC,
    VALOR_PREVISAO_PAGAR NUMERIC,
    VALOR_PAGO NUMERIC,
    VALOR_PAGAR NUMERIC,
    SALDO_DO_DIA_PREV NUMERIC,
    SALDO_DO_DIA_REAL NUMERIC,
    SALDO_ACUMULADO_PREV NUMERIC,
    SALDO_ACUMULADO_REAL NUMERIC,
    BANCO_EXCLUSIVO VARCHAR(2)
)
AS
DECLARE VARIABLE DATA_PROCESSO DATE;
begin
   /*Inicializa variaveis*/
   DATA_PROCESSO        = :DATA_INICIAL;
   SALDO_DO_DIA_PREV    = 0;
   SALDO_DO_DIA_REAL    = 0;
   SALDO_ACUMULADO_PREV = 0;
   SALDO_ACUMULADO_REAL = 0;
   while (DATA_PROCESSO <= DATA_FINAL) do
    begin
       SELECT BANCOS FROM SHAREDB
       INTO :BANCO_EXCLUSIVO;
        /*multiempresa*********************************************************/
        if (CODIGO_EMPRESA = '999') then
            begin
                /*Previsão de Receber*/
                Select
                    sum(FPC_VLPARC)
                from FAT_PC01 FT LEFT JOIN BAN0000 B ON (FT.BAN_CODIGO = B.BAN_CODIGO  AND FPC_TIPODOC = 'BL' AND (B.EMP_CODIGO = FT.EMP_CODIGO OR :BANCO_EXCLUSIVO='C'))
                where FPC_EXCLUSAO = 'N'
                and (FPC_VENCTO + COALESCE(BAN_COBRANCADMAISX,0)) = :DATA_PROCESSO
                group by  (FPC_VENCTO + COALESCE(BAN_COBRANCADMAISX,0))
                INTO :VALOR_PREVISAO_RECEBER;
                /*Recebido*/
                Select
                    sum(FRE_RECEBIDO)
                from FAT_RECEBIMENTO
                    where FRE_DATA_RECEBIMENTO = :DATA_PROCESSO
                        group by FRE_DATA_RECEBIMENTO
                        INTO :VALOR_RECEBIDO;
                /*Valor Receber*/
                VALOR_RECEBER = VALOR_PREVISAO_RECEBER - VALOR_RECEBIDO;
        
                /*duplicatas descontadas*/
                Select sum(FPC_VLPARC)
                       from FAT_PC01
                       where FPC_EXCLUSAO = 'N'
                       and FPC_DATADESCTO = :DATA_PROCESSO
                       and FPC_DESCONTADO = 'S'
                       group by FPC_DATADESCTO
                       INTO :VALOR_DESCONTADO;
        
                /**/
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
        
        
                /*conta a pagar*/
                Select sum(PPC_VLPARC)
                       from PAG_PC01
                       where PPC_EXCLUSAO = 'N'
                             and PPC_VENCTO =:DATA_PROCESSO
                             group by PPC_VENCTO
                             INTO:VALOR_PREVISAO_PAGAR;
                /*pago*/
                Select
                    sum(PAG_PAGO)
                from PAG_PAGAMENTO
                    where PAG_DATA_PAGAMENTO = :DATA_PROCESSO
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
                SUSPEND;
                DATA_PROCESSO = DATA_PROCESSO + 1;
                /*inicializa variaveis */
                VALOR_PREVISAO_RECEBER = 0;
                VALOR_RECEBIDO = 0;
                VALOR_RECEBER = 0;
                VALOR_DESCONTADO = 0;
                VALOR_PREVISAO_PAGAR  = 0;
                VALOR_PAGO = 0;
                VALOR_PAGAR = 0;
            end
        else
            begin
                /*por empresa**********************************************************/
                /*Previsão de Receber*/
                Select
                    sum(FPC_VLPARC)
                from FAT_PC01 FT LEFT JOIN BAN0000 B ON (FT.BAN_CODIGO = B.BAN_CODIGO AND  FPC_TIPODOC = 'BL' AND (B.EMP_CODIGO = FT.EMP_CODIGO OR :BANCO_EXCLUSIVO='C'))
                    where FPC_EXCLUSAO = 'N'
                        and (FPC_VENCTO + COALESCE(BAN_COBRANCADMAISX,0)) = :DATA_PROCESSO
                        and FT.EMP_CODIGO = :CODIGO_EMPRESA
                        group by  (FPC_VENCTO + COALESCE(BAN_COBRANCADMAISX,0))
                        INTO :VALOR_PREVISAO_RECEBER;
                /*Recebido*/
                Select
                    sum(FRE_RECEBIDO)
                from FAT_RECEBIMENTO
                    where FRE_DATA_RECEBIMENTO = :DATA_PROCESSO
                        and EMP_CODIGO = :CODIGO_EMPRESA
                        group by FRE_DATA_RECEBIMENTO
                        INTO :VALOR_RECEBIDO;
                /*Valor Receber*/
                VALOR_RECEBER = VALOR_PREVISAO_RECEBER - VALOR_RECEBIDO;
        
                /*duplicatas descontadas*/
                Select sum(FPC_VLPARC)
                       from FAT_PC01
                       where FPC_EXCLUSAO = 'N'
                       and FPC_DATADESCTO = :DATA_PROCESSO
                       and FPC_DESCONTADO = 'S'
                       and EMP_CODIGO = :CODIGO_EMPRESA
                       group by FPC_DATADESCTO
                       INTO :VALOR_DESCONTADO;
        
                /**/
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
        
        
                /*conta a pagar*/
                Select sum(PPC_VLPARC)
                       from PAG_PC01
                       where PPC_EXCLUSAO = 'N'
                             and PPC_VENCTO =:DATA_PROCESSO
                             and EMP_CODIGO = :CODIGO_EMPRESA
                             group by PPC_VENCTO
                             INTO:VALOR_PREVISAO_PAGAR;
                /*pago*/
                Select
                    sum(PAG_PAGO)
                from PAG_PAGAMENTO
                    where PAG_DATA_PAGAMENTO = :DATA_PROCESSO
                        and EMP_CODIGO = :CODIGO_EMPRESA
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
                SUSPEND;
                DATA_PROCESSO = DATA_PROCESSO + 1;
                /*inicializa variaveis */
                VALOR_PREVISAO_RECEBER = 0;
                VALOR_RECEBIDO = 0;
                VALOR_RECEBER = 0;
                VALOR_DESCONTADO = 0;
                VALOR_PREVISAO_PAGAR  = 0;
                VALOR_PAGO = 0;
                VALOR_PAGAR = 0;
            end
    end
end^

SET TERM ; ^
