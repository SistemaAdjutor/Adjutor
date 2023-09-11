UPDATE  VERSAOSISTEMA 
SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.545',
    VERSAOSISTEMA.DATA   = '02.06.2020',
	VERSAO = '3.0.9.545'
 where VERSAOSISTEMA.CODIGO = 1;

commit work;

SET TERM ^ ;

CREATE OR ALTER PROCEDURE PCD_LIMITE_CLIENTE (CLI_CODIGO VARCHAR(5), EMP_CODIGO VARCHAR(3))
RETURNS (
	LIMITE NUMERIC(18,5),
	UTILIZADO_PEDIDO NUMERIC(18,5),
	UTILIZADO_FATURA NUMERIC(18,5),
	UTILIZADO NUMERIC(18,5),
	SALDO NUMERIC(18,5),
	LIBERADO VARCHAR(1)
)
AS
begin
  /* Procedure Text */
 /* CLI_CODIGO E CHAVE UNICA, NĂO TEM NECESSIDADE DE FILTRAR POR EMPRESA */
    
    SELECT
       T1.cli_limitecred AS LIMITE,
       case
           when (T1.cli_limitecred > 0) then
               (SELECT coalesce(sum(t2.FPC_VLPARC - t2.FPC_VLPAGO + t2.FPC_JUROS + t2.FPC_MULTA - t2.FPC_DESCTO),0) FROM fat_pc01 T2 WHERE T2.cli_codigo = T1.cli_codigo AND T2.fpc_sitpag not in ('L','X') AND FPC_STATUS <> 'Devolução' )+
               (SELECT coalesce(sum(t2.FPC_VLPARC + t2.FPC_JUROS + t2.FPC_MULTA - t2.FPC_DESCTO),0) FROM fat_pc01 T2 WHERE T2.cli_codigo = T1.cli_codigo AND FPC_STATUS =  'Liq.p/Descto' )
           else
               0
       end as utilizado_fatura,
       case
           when (T1.cli_limitecred > 0) then
               (SELECT sum(T2.ped_vltotal_bruto - T2.ped_vlfaturado) AS LIMITE_PEDIDO FROM ped0000 T2 JOIN opv0000 T3 ON (T3.opv_codigo = T2.opv_codigo AND T3.opv_venda = 'S')WHERE T2.ped_situacao not in ('T','C') and T2.cli_codigo = T1.cli_codigo)
           else
               0
       end as utilizado_pedido
     FROM cli0000 T1 WHERE  T1.cli_codigo = :cli_codigo and ( T1.emp_codigo = :emp_codigo or :emp_codigo = '999')
     into :limite, :utilizado_fatura, :utilizado_pedido;

  utilizado = coalesce(utilizado_fatura,0) + coalesce(utilizado_pedido,0);
  saldo = limite - utilizado;
  if (:limite <= 0) then
    BEGIN
        limite = 0;
        utilizado = 0;
        liberado = 'S';
    END
  ELSE
    BEGIN
        liberado = 'S';
        if (:limite < :utilizado) then
            liberado = 'N';
    END
  suspend;
end^

SET TERM ; ^


ALTER TABLE USUARIO_PARAMETRO ADD USP_LIMITE_CONSULTA_ORCA INTEGER;
UPDATE USUARIO_PARAMETRO SET USP_LIMITE_CONSULTA_ORCA = 0; 

ALTER TABLE EPM_0000 ALTER PRD_REFER_ITENS TYPE varchar (20);
ALTER TABLE REQUISICAO_COMPRA_ITENS  ALTER PRD_REFER_ITENS  TYPE varchar (20);
ALTER TABLE PRD_RESERVA_ALMOX  ALTER PRD_REFER   TYPE varchar (20);
ALTER TABLE KARDEX    ALTER PRD_REFER   TYPE varchar (20);
ALTER TABLE CEL_MOV03   ALTER PRD_REFER   TYPE varchar (20);
ALTER TABLE COT_IT01   ALTER PRD_REFER   TYPE varchar (20);
ALTER TABLE ENF_IT01   ALTER PRD_REFER   TYPE varchar (20);
ALTER TABLE FAT_IT02   ALTER PRD_REFER   TYPE varchar (20);
ALTER TABLE FOR_PROD   ALTER PRD_REFER   TYPE varchar (20);
ALTER TABLE FTC_IT01   ALTER PRD_REFER   TYPE varchar (20);
ALTER TABLE FTC_IT01   ALTER PRD_REFER_ITENS  TYPE varchar (20);
ALTER TABLE FTC0000    ALTER PRD_REFER   TYPE varchar (20);
ALTER TABLE APONTAMENTOS   ALTER PRD_REFER_ITENS  TYPE varchar (20);
ALTER TABLE NF_IT01    ALTER PRD_REFER   TYPE varchar (20);
ALTER TABLE PED_VENDA_PERDIDA  ALTER PRD_REFER   TYPE varchar (20);
ALTER TABLE OCP_IT01   ALTER PRD_REFER   TYPE varchar (20);
ALTER TABLE OSV_IT02   ALTER PRD_REFER   TYPE varchar (20);
ALTER TABLE OSV_IT02   ALTER PRD_REFER_ITENS  TYPE varchar (20);
ALTER TABLE PAG_IT02   ALTER PRD_REFER   TYPE varchar (20);
ALTER TABLE PSV0000    ALTER PRD_REFER   TYPE varchar (20);
ALTER TABLE PED_EB02   ALTER PRD_REFER   TYPE varchar (20);
ALTER TABLE PED_EB03   ALTER PRD_REFER   TYPE varchar (20);
ALTER TABLE PED_IT01   ALTER PRD_REFER   TYPE varchar (20);
ALTER TABLE PRD_ENSA   ALTER PRD_REFER   TYPE varchar (20);
ALTER TABLE PRD_PEND   ALTER PRD_REFER   TYPE varchar (20);
ALTER TABLE PRD_TEMP   ALTER PRD_REFER   TYPE varchar (20);
ALTER TABLE PSV_IT01   ALTER PRD_REFER   TYPE varchar (20);
ALTER TABLE PSV_IT01   ALTER PRD_REFER_ITENS  TYPE varchar (20);
ALTER TABLE PSV_IT02   ALTER PRD_REFER   TYPE varchar (20);
ALTER TABLE ALMOX_IT01   ALTER PRD_REFER   TYPE varchar (20);
ALTER TABLE PRD_EQUIV   ALTER PRD_REFER   TYPE varchar (20);
ALTER TABLE TMP_ENTNF   ALTER PRD_REFER   TYPE varchar (20);
ALTER TABLE TMPESTAT   ALTER PRD_REFER   TYPE varchar (20);