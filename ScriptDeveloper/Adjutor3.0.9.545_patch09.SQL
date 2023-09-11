UPDATE  VERSAOSISTEMA 
SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.545 patch 9',
    VERSAOSISTEMA.DATA   = '23.06.2020',
	VERSAO = '3.0.9.545'
 where VERSAOSISTEMA.CODIGO = 1;

commit work;


SET TERM ^ ;

create or alter procedure PCD_KARDEX_SALDO_FISICO_AMX (
    EMP_CODIGO varchar(4),
    PRD_CODIGO varchar(6),
    DATA timestamp,
    AMX_CODIGO varchar(4) )
returns (
    SALDO numeric(15,4))
as
declare variable ALMXTMP varchar(4);
declare variable SALDOTMP numeric(15,4);
declare variable ESTOQUE_EXCLUSIVO varchar(1);
begin
  saldo = 0;
  SELECT estoques FROM SHAREDB
  INTO :ESTOQUE_EXCLUSIVO;
  
  FOR
    SELECT almox0000.amx_codigo
    FROM  almox0000
    where almox0000.amx_fisico = 'S'
      AND (AMX_CODIGO = :AMX_CODIGO OR AMX_CODIGO = '9999')
    into :almxtmp
  DO
  BEGIN
    saldotmp = 0;
    SELECT
        first 1
        coalesce(T1.kar_saldo,0) as saldoFinal
    FROM
        kardex T1
    WHERE t1.amx_codigo = :almxtmp and  (T1.emp_codigo = :emp_codigo OR :ESTOQUE_EXCLUSIVO='C')  AND T1.prd_codigo = :prd_codigo AND T1.data_hora <= :data
    ORDER BY T1.kar_registro DESC
    into :saldotmp;

    saldo = saldo + saldotmp;
  END
  suspend;
end^

SET TERM ; ^

