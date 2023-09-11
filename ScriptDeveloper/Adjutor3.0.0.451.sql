SET TERM ^ ;


create or alter procedure PCD_SEQUENCIA_NFE (
    EMP_CODIGO varchar(3),
    CONTINGENCIA varchar(1))
returns (
    RETORNO integer)
as
declare variable SEQ_UNICA char(1);
begin
  select PMT_USAR_SEQUENCIA_NFE_UNICA from PRMT0001 where EMP_CODIGO = '001'  into :SEQ_UNICA;

  if (SEQ_UNICA = 'S') then
    EMP_CODIGO = '001';

  if (CONTINGENCIA = 'S') then
  begin
    select max(T1.EMP_SEQUENCIA_NFE_SCAN)  from EMP0000 T1  where T1.EMP_CODIGO = :EMP_CODIGO  into :RETORNO;

    if (SEQ_UNICA = 'S') then
      update EMP0000 T1 set T1.EMP_SEQUENCIA_NFE_SCAN = :RETORNO + 1;
    else
      update EMP0000 T1 set T1.EMP_SEQUENCIA_NFE_SCAN = T1.EMP_SEQUENCIA_NFE_SCAN + 1  where T1.EMP_CODIGO = :EMP_CODIGO;

  end
  else
  begin
    select max(T1.EMP_SEQUENCIA_NFE)  from EMP0000 T1   where T1.EMP_CODIGO = :EMP_CODIGO  into :RETORNO;

    if (SEQ_UNICA = 'S') then
      update EMP0000 T1 set T1.EMP_SEQUENCIA_NFE = :RETORNO + 1;
    else
      update EMP0000 T1 set T1.EMP_SEQUENCIA_NFE = T1.EMP_SEQUENCIA_NFE + 1 where T1.EMP_CODIGO = :EMP_CODIGO;

  end
  suspend;
end^

alter table prmt0001 DROP pmt_permitevendaabaixocusto ^


Update VERSAOSISTEMA SET
       VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.0.451' ,
       VERSAOSISTEMA.DATA   = '17.05.2016'
 where VERSAOSISTEMA.CODIGO = 1^

COMMIT WORK^



SET TERM ; ^


