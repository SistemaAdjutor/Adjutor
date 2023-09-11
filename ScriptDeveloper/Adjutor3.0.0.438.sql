SET TERM ^ ;

CREATE OR ALTER PROCEDURE PCD_LIMITE_CLIENTE (
    cli_codigo varchar(5),
    emp_codigo varchar(3))
returns (
    limite numeric(18,5),
    utilizado_pedido numeric(18,5),
    utilizado_fatura numeric(18,5),
    utilizado numeric(18,5),
    saldo numeric(18,5),
    liberado varchar(1))
as
begin
  /* Procedure Text */

  if (:emp_codigo <> '999') then
    BEGIN
        SELECT
           T1.cli_limitecred AS LIMITE,
           case
               when (T1.cli_limitecred > 0) then
                   (SELECT coalesce(sum(t2.FPC_VLPARC - t2.FPC_VLPAGO + t2.FPC_JUROS + t2.FPC_MULTA - t2.FPC_DESCTO),0) FROM fat_pc01 T2 WHERE T2.cli_codigo = T1.cli_codigo AND T2.fpc_status <> 'L')
               else
                   0
           end as utilizado_fatura,
           case
               when (T1.cli_limitecred > 0) then
                   (SELECT (T2.ped_vltotal_liq - T2.ped_vlfaturado) AS LIMITE_PEDIDO FROM ped0000 T2 JOIN opv0000 T3 ON (T3.opv_codigo = T2.opv_codigo AND T3.opv_venda = 'S')WHERE T2.ped_situacao <> 'T' and T2.cli_codigo = T1.cli_codigo)
               else
                   0
           end as utilizado_pedido


         FROM cli0000 T1 WHERE T1.emp_codigo = :emp_codigo AND T1.cli_codigo = :cli_codigo
         into :limite, :utilizado_fatura, :utilizado_pedido;

    END
  ELSE
    BEGIN
        SELECT
           T1.cli_limitecred AS LIMITE,
           case
               when (T1.cli_limitecred > 0) then
                   (SELECT coalesce(sum(t2.FPC_VLPARC - t2.FPC_VLPAGO + t2.FPC_JUROS + t2.FPC_MULTA - t2.FPC_DESCTO),0) FROM fat_pc01 T2 WHERE T2.cli_codigo = T1.cli_codigo AND T2.fpc_status <> 'L')
               else
                   0
           end as utilizado_fatura,
           case
               when (T1.cli_limitecred > 0) then
                   (SELECT (T2.ped_vltotal_liq - T2.ped_vlfaturado) AS LIMITE_PEDIDO FROM ped0000 T2 JOIN opv0000 T3 ON (T3.opv_codigo = T2.opv_codigo AND T3.opv_venda = 'S')WHERE T2.ped_situacao <> 'T' and T2.cli_codigo = T1.cli_codigo)
               else
                   0
           end as utilizado_pedido
         FROM cli0000 T1 WHERE  T1.cli_codigo = :cli_codigo
         into :limite, :utilizado_fatura, :utilizado_pedido;
    end
  utilizado = utilizado_fatura + utilizado_pedido;
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


--------------------------------------------------------------------------------
commit work;




--------------------------------------------------------------------------------
commit work;

Update VERSAOSISTEMA SET
       VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.0.438' ,
       VERSAOSISTEMA.DATA   = '03.11.2015'
 where VERSAOSISTEMA.CODIGO = 1;


commit work;
