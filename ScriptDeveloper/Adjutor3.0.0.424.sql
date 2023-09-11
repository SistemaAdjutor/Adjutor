CREATE TABLE PRD_CODIGOORIGINAL (
    PRDCO_REGISTRO INTEGER NOT NULL,
    PRD_CODIGO VARCHAR(6),
    PRDCO_CODIGO_ORIGINAL VARCHAR(60));

CREATE SEQUENCE GEN_PRD_CODIGOORIGINAL_ID;

SET TERM ^ ;

create trigger prd_codigooriginal_bi for prd_codigooriginal
active before insert position 0
as
begin
  if (new.prdco_registro is null) then
    new.prdco_registro = gen_id(gen_prd_codigooriginal_id,1);
end^

SET TERM ; ^

commit work;
--------------------------------------------------------------------------------
ALTER TABLE PED_IT01
    ADD PRDCO_CODIGO_ORIGINAL VARCHAR(60);

commit work;
--------------------------------------------------------------------------------
ALTER TABLE nf_it01
    ADD PRDCO_CODIGO_ORIGINAL VARCHAR(60);

commit work;
--------------------------------------------------------------------------------
ALTER TABLE PRMT0001
    ADD PMT_UTILIZA_CODIGO_ORIG_VD_NF VARCHAR(1);
commit work;
--------------------------------------------------------------------------------
UPDATE prmt0001 SET  PMT_UTILIZA_CODIGO_ORIG_VD_NF = 'N' WHERE PMT_UTILIZA_CODIGO_ORIG_VD_NF IS NULL;

commit work;
--------------------------------------------------------------------------------
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
    PMT.pmt_utiliza_codigo_orig_vd_nf
   FROM prmt0001 PMT
   WHERE PMT.emp_codigo = :emp_codigo
    into: utiliza_cod_orig;

  SELECT
   PEDI.prd_refer,
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



commit work;
--------------------------------------------------------------------------------


Update VERSAOSISTEMA SET
       VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.0.424' ,
       VERSAOSISTEMA.DATA   = '24.06.2015'
 where VERSAOSISTEMA.CODIGO = 1;


commit work;
