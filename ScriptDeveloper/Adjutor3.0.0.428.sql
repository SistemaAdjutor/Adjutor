ALTER TABLE CNAE
    ALTER CNAE_DESCRICAO TYPE VARCHAR(500) CHARACTER SET NONE;
--------------------------------------------------------------------------------
commit WORK;

CREATE TABLE CLI_MENSAGENS (
    CLIM_REGISTRO INTEGER NOT NULL,
    CLI_CODIGO VARCHAR(5),
    CLIM_ATIVO VARCHAR(1) DEFAULT 'S',
    CLIM_VENDA VARCHAR(1) DEFAULT 'S',
    CLIM_FATURAMENTO VARCHAR(1) DEFAULT 'S',
    CLIM_MENSAGEM BLOB SUB_TYPE 1 SEGMENT SIZE 80);

ALTER TABLE CLI_MENSAGENS
ADD CONSTRAINT PK_CLI_MENSAGENS
PRIMARY KEY (CLIM_REGISTRO);

CREATE SEQUENCE GEN_CLI_MENSAGENS_ID;

SET TERM ^ ;

create trigger cli_mensagens_bi for cli_mensagens
active before insert position 0
as
begin
  if (new.clim_registro is null) then
    new.clim_registro = gen_id(gen_cli_mensagens_id,1);
end^

SET TERM ; ^

--------------------------------------------------------------------------------
commit WORK;

CREATE TABLE ARQUIVO(
    ARQ_REGISTRO INTEGER NOT NULL,
    ARQ_TIPO VARCHAR(10),
    ARQ_TIPO_TABELA VARCHAR(3),
    ARQ_REGISTRO_TABELA VARCHAR(10),
    ARQ_ARQUIVO BLOB SUB_TYPE 0 SEGMENT SIZE 80,
    ARQ_DESCRICAO VARCHAR(200));

CREATE SEQUENCE GEN_ARQUIVO_ID;

SET TERM ^ ;

create trigger ARQUIVO_bi for ARQUIVO
active before insert position 0
as
begin
  if (new.arq_registro is null) then
    new.arq_registro = gen_id(gen_ARQUIVO_id,1);
end^

SET TERM ; ^


--------------------------------------------------------------------------------
commit WORK;

ALTER TABLE CLI0000
    ADD CNAE_REGISTRO INTEGER,
    ADD CLI_MODO_TRIB_ST VARCHAR(4) DEFAULT 'NORM';

COMMENT ON COLUMN CLI0000.CNAE_REGISTRO IS
'REGISTRO DO CNAE';

COMMENT ON COLUMN CLI0000.CLI_MODO_TRIB_ST IS
'NORM = NORMAL
CNAE = PELO CNAE';

--------------------------------------------------------------------------------
commit WORK;

UPDATE CLI0000 SET CLI_MODO_TRIB_ST = 'NORM' WHERE CLI_MODO_TRIB_ST IS NULL;
--------------------------------------------------------------------------------
commit WORK;

COMMENT ON COLUMN ARQUIVO.ARQ_TIPO IS
'CLI = CLIENTE
PRD = PRODUTO';

--------------------------------------------------------------------------------
commit WORK;

ALTER TABLE CNAE
    ADD CNAE_CARGA_TRIB_MEDIA DECIMAL6;
--------------------------------------------------------------------------------
commit work;

CREATE SEQUENCE GEN_CNAE_ID;

SET TERM ^ ;

create trigger cnae_bi for cnae
active before insert position 0
as
begin
  if (new.cnae_registro is null) then
    new.cnae_registro = gen_id(gen_cnae_id,1);
end^

SET TERM ; ^

--------------------------------------------------------------------------------
commit work;


Update VERSAOSISTEMA SET
       VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.0.428' ,
       VERSAOSISTEMA.DATA   = '21.07.2015'
 where VERSAOSISTEMA.CODIGO = 1;


commit work;
