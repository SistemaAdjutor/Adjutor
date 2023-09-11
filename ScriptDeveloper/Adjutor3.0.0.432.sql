SET TERM ^ ;

CREATE OR ALTER PROCEDURE PCD_LIMITE_CLIENTE (
    cli_codigo varchar(5),
    emp_codigo varchar(3))
returns (
    limite numeric(18,5),
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
           end as UTILIZADO
         FROM cli0000 T1 WHERE T1.emp_codigo = :emp_codigo AND T1.cli_codigo = :cli_codigo
         into :limite, :utilizado;

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
           end as UTILIZADO
         FROM cli0000 T1 WHERE  T1.cli_codigo = :cli_codigo
         into :limite, :utilizado;
    end
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

UPDATE CID0000 set CID_ESTADO = 'PR'
where cid_codigo = 4280;

--------------------------------------------------------------------------------
commit work;

UPDATE CID0000 set CID_COD_IBGE = '4128625'
where cid_codigo = 4280;

--------------------------------------------------------------------------------
commit work;

ALTER TABLE PRMT0001
    ADD PMT_CONS_VENDA_PEDDO_STAT VARCHAR(1) DEFAULT 'T';

--------------------------------------------------------------------------------
commit work;

update PRMT0001 set PMT_CONS_VENDA_PEDDO_STAT = 'T' where PMT_CONS_VENDA_PEDDO_STAT is null;
--------------------------------------------------------------------------------
commit work;

Update VERSAOSISTEMA SET
       VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.0.432' ,
       VERSAOSISTEMA.DATA   = '17.08.2015'
 where VERSAOSISTEMA.CODIGO = 1;


commit work;
