CREATE TABLE IND_TIPORETORNO (
    ITT_REGISTRO INTEGER NOT NULL,
    EMP_CODIDO VARCHAR(4),
    ITT_DESCRICAO VARCHAR(255));

ALTER TABLE IND_TIPORETORNO
ADD CONSTRAINT PK_IND_TIPORETORNO
PRIMARY KEY (ITT_REGISTRO);

CREATE SEQUENCE GEN_IND_TIPORETORNO_ID;

SET TERM ^ ;

create trigger ind_tiporetorno_bi for ind_tiporetorno
active before insert position 0
as
begin
  if (new.itt_registro is null) then
    new.itt_registro = gen_id(gen_ind_tiporetorno_id,1);
end^

SET TERM ; ^

--------------------------------------------------------------------------------
commit work;

ALTER TABLE PED_IT01
    ADD ITT_REGISTRO INTEGER;

COMMENT ON COLUMN PED_IT01.ITT_REGISTRO IS
'registro do tipo de retorno de industrializacao';

--------------------------------------------------------------------------------
commit work;

CREATE TABLE CLI_CONTATO (
    CC_REGISTRO INTEGER NOT NULL,
    CLI_CODIGO VARCHAR(5),
    CC_NOME VARCHAR(100),
    CC_CARGO VARCHAR(50),
    CC_TELEFONE VARCHAR(12),
    CC_CELULAR VARCHAR(12),
    CC_RAMAL VARCHAR(10),
    CC_EMAIL VARCHAR(200));

ALTER TABLE CLI_CONTATO
ADD CONSTRAINT PK_CLI_CONTATO
PRIMARY KEY (CC_REGISTRO);

CREATE SEQUENCE GEN_CLI_CONTATO_ID;

SET TERM ^ ;

create trigger cli_contato_bi for cli_contato
active before insert position 0
as
begin
  if (new.cc_registro is null) then
    new.cc_registro = gen_id(gen_cli_contato_id,1);
end^

SET TERM ; ^

--------------------------------------------------------------------------------
commit work;

UPDATE ped0000 T2 SET T2.ped_vlfaturado = (SELECT coalesce(sum(T1.nf_tot_nota),0) FROM nf0001 T1 WHERE T1.nf_cancelada <> 'S' AND T1.ped_codigo =  T2.ped_codigo) WHERE T2.ped_vlfaturado > T2.ped_vltotal_bruto;

--------------------------------------------------------------------------------
commit work;

ALTER TABLE ENF_IT01
    ADD ITT_REGISTRO INTEGER;

COMMENT ON COLUMN ENF_IT01.ITT_REGISTRO IS
'registro do tipo de retorno de industrializacao';


--------------------------------------------------------------------------------
commit work;

ALTER TABLE ENF_IT01
    ADD ENF_OBS_INDUSTRIALIZACAO BLOB SUB_TYPE 1 SEGMENT SIZE 80;

--------------------------------------------------------------------------------
commit work;



Update VERSAOSISTEMA SET
       VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.0.414' ,
       VERSAOSISTEMA.DATA   = '31.12.2014'
 where VERSAOSISTEMA.CODIGO = 1;


commit work;
