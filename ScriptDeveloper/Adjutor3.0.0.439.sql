SET TERM ^ ;

CREATE OR ALTER PROCEDURE PCD_KARDEX_SALDO_FULL (
    emp_codigo varchar(4),
    prd_codigo varchar(6),
    data_inicial timestamp,
    data_final timestamp,
    amx_codigo varchar(4))
returns (
    saidas decimal(18,5),
    entradas decimal(18,5),
    saldo_anterior decimal(18,5),
    saldo numeric(15,4))
as
declare variable almxtmp varchar(4);
declare variable saldotmp numeric(15,4);
declare variable entradastmp numeric(15,4);
declare variable saidastmp numeric(15,4);
declare variable saldoanteriortmp numeric(15,4);
begin
  saldo = 0;
  saldo_anterior = 0;
  entradas = 0;
  saidas = 0;
  /* Procedure Text */
  /*sem passar almoxarifado*/
  if ((:amx_codigo = '') or (:amx_codigo is null)) then
    BEGIN
        FOR
        SELECT
            almox0000.amx_codigo
        FROM
            almox0000
        where
            almox0000.amx_fisico = 'S'
        into :almxtmp
      DO
      BEGIN
        /*zera variaveis*/
        saldotmp = 0;
        entradastmp = 0;
        saidastmp = 0;
        saldoanteriortmp = 0;
        /*soma os saldos anteriores*/
        SELECT
            first 1
            coalesce(T1.kar_saldo,0) as saldoFinal
        FROM
            kardex T1
        WHERE t1.amx_codigo = :almxtmp and  T1.emp_codigo = :emp_codigo AND T1.prd_codigo = :prd_codigo AND T1.data_hora <= :data_inicial
        ORDER BY T1.kar_registro DESC
        into :saldoanteriortmp;
        saldo_anterior = saldo_anterior + saldoanteriortmp;
        /*entradas*/
        SELECT
            coalesce(SUM(T1.kar_quantidade),0)
        FROM
        kardex T1
        WHERE t1.amx_codigo = :almxtmp and  T1.emp_codigo = :emp_codigo AND T1.prd_codigo = :prd_codigo AND T1.data_hora between :data_inicial AND :data_final AND T1.kar_entrada_saida = 'E'
        into :entradastmp;
        entradas = entradas + entradastmp;
        /*SAIDAS*/
        SELECT
            coalesce(SUM(T1.kar_quantidade),0)
        FROM
        kardex T1
        WHERE t1.amx_codigo = :almxtmp and  T1.emp_codigo = :emp_codigo AND T1.prd_codigo = :prd_codigo AND T1.data_hora between :data_inicial AND :data_final AND T1.kar_entrada_saida = 'S'
        into :saidastmp;
        saidas = saidas + saidastmp;
        /*SALDO FINAL*/
        SELECT
            first 1
            coalesce(T1.kar_saldo,0) as saldoFinal
        FROM
            kardex T1
        WHERE t1.amx_codigo = :almxtmp and  T1.emp_codigo = :emp_codigo AND T1.prd_codigo = :prd_codigo AND T1.data_hora <= :data_final
        ORDER BY T1.kar_registro DESC
        into :saldotmp;
        saldo = saldo + saldotmp;
      END
    END
  ELSE
    BEGIN
        FOR
        SELECT
            almox0000.amx_codigo
        FROM
            almox0000
        where
            almox0000.AMX_CODIGO = :amx_codigo
        into :almxtmp
      DO
      BEGIN
        /*zera variaveis*/
        saldotmp = 0;
        entradastmp = 0;
        saidastmp = 0;
        saldoanteriortmp = 0;
        /*soma os saldos anteriores*/
        SELECT
            first 1
            coalesce(T1.kar_saldo,0) as saldoFinal
        FROM
            kardex T1
        WHERE t1.amx_codigo = :almxtmp and  T1.emp_codigo = :emp_codigo AND T1.prd_codigo = :prd_codigo AND T1.data_hora <= :data_inicial
        ORDER BY T1.kar_registro DESC
        into :saldoanteriortmp;
        saldo_anterior = saldo_anterior + saldoanteriortmp;
        /*entradas*/
        SELECT
            coalesce(SUM(T1.kar_quantidade),0)
        FROM
        kardex T1
        WHERE t1.amx_codigo = :almxtmp and  T1.emp_codigo = :emp_codigo AND T1.prd_codigo = :prd_codigo AND T1.data_hora between :data_inicial AND :data_final AND T1.kar_entrada_saida = 'E'
        into :entradastmp;
        entradas = entradas + entradastmp;
        /*SAIDAS*/
        SELECT
            coalesce(SUM(T1.kar_quantidade),0)
        FROM
        kardex T1
        WHERE t1.amx_codigo = :almxtmp and  T1.emp_codigo = :emp_codigo AND T1.prd_codigo = :prd_codigo AND T1.data_hora between :data_inicial AND :data_final AND T1.kar_entrada_saida = 'S'
        into :saidastmp;
        saidas = saidas + saidastmp;
        /*SALDO FINAL*/
        SELECT
            first 1
            coalesce(T1.kar_saldo,0) as saldoFinal
        FROM
            kardex T1
        WHERE t1.amx_codigo = :almxtmp and  T1.emp_codigo = :emp_codigo AND T1.prd_codigo = :prd_codigo AND T1.data_hora <= :data_final
        ORDER BY T1.kar_registro DESC
        into :saldotmp;
        saldo = saldo + saldotmp;
      END
    END
  suspend;
end^

SET TERM ; ^

--------------------------------------------------------------------------------
commit work;


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
                   (SELECT sum(T2.ped_vltotal_liq - T2.ped_vlfaturado) AS LIMITE_PEDIDO FROM ped0000 T2 JOIN opv0000 T3 ON (T3.opv_codigo = T2.opv_codigo AND T3.opv_venda = 'S')WHERE T2.ped_situacao <> 'T' and T2.cli_codigo = T1.cli_codigo)
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
                   (SELECT sum(T2.ped_vltotal_liq - T2.ped_vlfaturado) AS LIMITE_PEDIDO FROM ped0000 T2 JOIN opv0000 T3 ON (T3.opv_codigo = T2.opv_codigo AND T3.opv_venda = 'S')WHERE T2.ped_situacao <> 'T' and T2.cli_codigo = T1.cli_codigo)
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
                   (SELECT coalesce(sum(t2.FPC_VLPARC - t2.FPC_VLPAGO + t2.FPC_JUROS + t2.FPC_MULTA - t2.FPC_DESCTO),0) FROM fat_pc01 T2 WHERE T2.cli_codigo = T1.cli_codigo AND T2.fpc_sitpag not in ('L','X'))
               else
                   0
           end as utilizado_fatura,
           case
               when (T1.cli_limitecred > 0) then
                   (SELECT sum(T2.ped_vltotal_bruto - T2.ped_vlfaturado) AS LIMITE_PEDIDO FROM ped0000 T2 JOIN opv0000 T3 ON (T3.opv_codigo = T2.opv_codigo AND T3.opv_venda = 'S')WHERE T2.ped_situacao not in ('T','C') and T2.cli_codigo = T1.cli_codigo)
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
                   (SELECT coalesce(sum(t2.FPC_VLPARC - t2.FPC_VLPAGO + t2.FPC_JUROS + t2.FPC_MULTA - t2.FPC_DESCTO),0) FROM fat_pc01 T2 WHERE T2.cli_codigo = T1.cli_codigo AND T2.fpc_sitpag not in ('L','X'))
               else
                   0
           end as utilizado_fatura,
           case
               when (T1.cli_limitecred > 0) then
                   (SELECT sum(T2.ped_vltotal_bruto - T2.ped_vlfaturado) AS LIMITE_PEDIDO FROM ped0000 T2 JOIN opv0000 T3 ON (T3.opv_codigo = T2.opv_codigo AND T3.opv_venda = 'S')WHERE T2.ped_situacao not in ('T','C') and T2.cli_codigo = T1.cli_codigo)
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

ALTER TABLE ARQUIVO_CNAB
    ALTER CNAB_NOME_ARQUIVO TYPE VARCHAR(50) CHARACTER SET NONE;

--------------------------------------------------------------------------------
commit work;


Update VERSAOSISTEMA SET
       VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.0.439' ,
       VERSAOSISTEMA.DATA   = '10.11.2015'
 where VERSAOSISTEMA.CODIGO = 1;


commit work;
