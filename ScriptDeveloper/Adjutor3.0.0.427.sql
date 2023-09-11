SET TERM ^ ;

CREATE OR ALTER PROCEDURE PCD_RETORNA_REFERENCIA_ITEM_PED (
    emp_codigo varchar(3),
    prf_registro integer)
returns (
    prd_refer varchar(60))
as
declare variable item_codigo_orig varchar(60);
declare variable utiliza_cod_orig varchar(1);
begin
  /* Procedure Text */
  SELECT
    FIRST 1 PMT.pmt_utiliza_codigo_orig_vd_nf
   FROM prmt0001 PMT
   WHERE PMT.emp_codigo = :emp_codigo
    into: utiliza_cod_orig;

  SELECT
   FIRST 1 PEDI.prd_refer,
   PEDI.prdco_codigo_original
  from ped_it01 PEDI
  WHERE PEDI.prf_registro = :prf_registro
  INTO: prd_refer, item_codigo_orig;


  if (:utiliza_cod_orig = 'S') then
    BEGIN
        if (item_codigo_orig <> '') then
            prd_refer = item_codigo_orig;
    END
  suspend;
end^

SET TERM ; ^

--------------------------------------------------------------------------------
commit WORK;


Update VERSAOSISTEMA SET
       VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.0.427' ,
       VERSAOSISTEMA.DATA   = '16.07.2015'
 where VERSAOSISTEMA.CODIGO = 1;


commit work;
