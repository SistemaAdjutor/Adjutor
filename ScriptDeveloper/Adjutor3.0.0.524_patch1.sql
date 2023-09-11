UPDATE  VERSAOSISTEMA 
SET    VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.524',
       VERSAOSISTEMA.DATA   = '07.11.2018',
       VERSAO = '3.0.9.524'
where VERSAOSISTEMA.CODIGO = 1;

ALTER TABLE NF_IT01 ADD nf_totalitem numeric(18,5);
COMMENT ON COLUMN NF_IT01.NF_TOTALITEM IS 'TOTAL DO ITEM QUANTIDADE X PRECO';

/* pode demorar alguns minutos */
alter trigger NF_IT01_BU0 inactive;
UPDATE NF_IT01 SET nf_totalitem = cast(NF_QTDE * NF_PRECO as numeric(18,5));
COMMIT WORK;
alter trigger NF_IT01_BU0 active;



ALTER TABLE PED0000 ALTER COLUMN CLI_CPF TYPE VARCHAR(14);

ALTER TABLE FORMA_PAGAMENTO ADD FPG_BAIXARECEBER VARCHAR(1);
COMMENT ON COLUMN FORMA_PAGAMENTO.FPG_BAIXARECEBER IS 'Executar baixa fnanceira automatica';
UPDATE FORMA_PAGAMENTO SET FPG_BAIXARECEBER = 'N';

COMMIT WORK;

CREATE INDEX PRD0000_IDX1 ON PRD0000 (EMP_CODIGO,PRD_STATUS,PRD_REFER);

COMMIT WORK;

SET TERM ^ ;

CREATE OR ALTER PROCEDURE PCD_FLUXO_CAIXA (DATA_INICIAL DATE, DATA_FINAL DATE, CODIGO_EMPRESA VARCHAR(3))
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
                and (FPC_VENCTO + COALESCE(BAN_DIASCRED_COBRANCA,0)) = :DATA_PROCESSO
                group by  (FPC_VENCTO + COALESCE(BAN_DIASCRED_COBRANCA,0))
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
                        and (FPC_VENCTO + COALESCE(BAN_DIASCRED_COBRANCA,0)) = :DATA_PROCESSO
                        and FT.EMP_CODIGO = :CODIGO_EMPRESA
                        group by  (FPC_VENCTO + COALESCE(BAN_DIASCRED_COBRANCA,0))
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

ALTER TABLE BAN0000 DROP  BAN_COBRANCADMAISX ;