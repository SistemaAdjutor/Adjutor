UPDATE  VERSAOSISTEMA 
SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.591',
    VERSAOSISTEMA.DATA   = '02.04.2024',
	VERSAO = '3.0.9.591'
 where VERSAOSISTEMA.CODIGO = 1;
commit work;

/* issue 1782 
DROP TABLE SECURITIZADORA ;
DROP GENERATOR GEN_SECURITIZADORA; */
CREATE GENERATOR GEN_SECURITIZADORA;
CREATE TABLE SECURITIZADORA (SEC_CODIGO INTEGER NOT NULL , SEC_DESCRICAO VARCHAR(255), EMP_CODIGO VARCHAR(3));
ALTER TABLE SECURITIZADORA ADD CONSTRAINT pkSECURITIZADORA PRIMARY KEY (SEC_CODIGO);
COMMENT ON COLUMN SECURITIZADORA.SEC_CODIGO IS 'Código da Securitizadora';
COMMENT ON COLUMN SECURITIZADORA.SEC_DESCRICAO IS 'Nome da Securitizadora';
COMMENT ON COLUMN SECURITIZADORA.EMP_CODIGO IS 'Empresa à qual Pertence a Securitizadora';

ALTER TABLE FAT_RECEBIMENTO ADD SEC_CODIGO INTEGER ;
COMMENT ON COLUMN FAT_RECEBIMENTO.SEC_CODIGO IS 'Código da Securitizadora';