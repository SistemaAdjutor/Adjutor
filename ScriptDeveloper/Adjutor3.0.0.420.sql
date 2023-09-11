CREATE TABLE PRD_DIRETIVA (
    PRDD_REGISTRO INTEGER NOT NULL,
    EMP_CODIGO VARCHAR(3),
    PRDD_DESCRICAO VARCHAR(100),
    PRDD_ATIVO VARCHAR(1) DEFAULT 'S');

CREATE SEQUENCE GEN_PRD_DIRETIVA_ID;

SET TERM ^ ;

create trigger prd_diretiva_bi for prd_diretiva
active before insert position 0
as
begin
  if (new.prdd_registro is null) then
    new.prdd_registro = gen_id(gen_prd_diretiva_id,1);
end^

SET TERM ; ^


commit work;
-----------------------------------------------------------------------------

ALTER TABLE PED_IT01
    ADD PRDD_REGISTRO INTEGER;

COMMENT ON COLUMN PED_IT01.PRDD_REGISTRO IS
'registro da tabela de diretivas';

commit work;
-----------------------------------------------------------------------------

update prd_grade set PRG_DESCRICAO = upper(PRG_DESCRICAO);

commit work;
-----------------------------------------------------------------------------

Update VERSAOSISTEMA SET
       VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.0.420' ,
       VERSAOSISTEMA.DATA   = '04.05.2015'
 where VERSAOSISTEMA.CODIGO = 1;


commit work;
