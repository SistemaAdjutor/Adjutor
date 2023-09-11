ALTER TABLE OPE0000
    ADD OPE_INDUSTRIALIZACAO VARCHAR(1);
--------------------------------------------------------------------------------
commit work;

update ope0000 set OPE_INDUSTRIALIZACAO = 'N' where OPE_INDUSTRIALIZACAO is null;
--------------------------------------------------------------------------------
commit work;

ALTER TABLE OPE0000 ALTER COLUMN OPE_INDUSTRIALIZACAO
SET DEFAULT 'N';

--------------------------------------------------------------------------------
commit work;

ALTER TABLE ENF_IT01
    ADD ENF_QUANTIDADE_IND_RETORNO DECIMAL6;
--------------------------------------------------------------------------------
commit work;

update ENF_IT01 set ENF_QUANTIDADE_IND_RETORNO = 0 where ENF_QUANTIDADE_IND_RETORNO is null;
--------------------------------------------------------------------------------
commit work;

CREATE TABLE PED_IT01_INDUST (
    PEDIND_REGISTRO INTEGER NOT NULL,
    PRF_REGISTRO INTEGER,
    ENF_REGISTRO INTEGER,
    PEDIND_QUANTIDADE DECIMAL5);

ALTER TABLE PED_IT01_INDUST
ADD CONSTRAINT PK_PED_IT01_INDUST
PRIMARY KEY (PEDIND_REGISTRO);

CREATE SEQUENCE GEN_PED_IT01_INDUST_ID;

SET TERM ^ ;

create trigger ped_it01_indust_bi for ped_it01_indust
active before insert position 0
as
begin
  if (new.pedind_registro is null) then
    new.pedind_registro = gen_id(gen_ped_it01_indust_id,1);
end^

SET TERM ; ^

--------------------------------------------------------------------------------
commit work;

ALTER TABLE enf0001
    ADD ENF_INDUSTRIALIZACAO VARCHAR(1);
--------------------------------------------------------------------------------
commit work;


update enf0001 set ENF_INDUSTRIALIZACAO = 'N' where ENF_INDUSTRIALIZACAO is null;
--------------------------------------------------------------------------------
commit work;

ALTER TABLE enf0001 ALTER COLUMN ENF_INDUSTRIALIZACAO
SET DEFAULT 'N';

--------------------------------------------------------------------------------
commit work;

ALTER TABLE OPV0000
    ADD OPV_INDUSTRIALIZACAO VARCHAR(1);

--------------------------------------------------------------------------------
commit work;

update OPV0000 set OPV_INDUSTRIALIZACAO = 'N' where OPV_INDUSTRIALIZACAO is null;
--------------------------------------------------------------------------------
commit work;


ALTER TABLE OPV0000 ALTER COLUMN OPV_INDUSTRIALIZACAO
SET DEFAULT 'N';

--------------------------------------------------------------------------------
commit work;

ALTER TABLE PRD0000
    ADD PRD_GRADE_OBRIGATORIO VARCHAR(1) DEFAULT 'N';

--------------------------------------------------------------------------------
commit work;


update PRD0000 set PRD_GRADE_OBRIGATORIO = 'N' where PRD_GRADE_OBRIGATORIO is null;
--------------------------------------------------------------------------------
commit work;

--------------------------------------------------------------------------------
Update VERSAOSISTEMA SET
       VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.0.408' ,
       VERSAOSISTEMA.DATA   = '22.10.2014'
 where VERSAOSISTEMA.CODIGO = 1;


commit work;
