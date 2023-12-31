UPDATE  VERSAOSISTEMA 
SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.578 patch 3',
    VERSAOSISTEMA.DATA   = '28.03.2023',
	VERSAO = '3.0.9.578'
 where VERSAOSISTEMA.CODIGO = 1;
commit work;

ALTER TABLE OPE0000 ADD OPE_ARTIGO_DIFERIMENTO VARCHAR(255);
COMMENT ON COLUMN OPE0000.OPE_ARTIGO_DIFERIMENTO IS 'Texto que aparece na diferimento';
UPDATE OPE0000 SET OPE_ARTIGO_DIFERIMENTO = 'Conforme art. 28 do RICMS/2017';

ALTER TABLE OPE0000 ADD OPE_ARTIGO_REDUCAO VARCHAR(255);
COMMENT ON COLUMN OPE0000.OPE_ARTIGO_REDUCAO IS 'Texto que aparece no aproveitamento de credito';
UPDATE OPE0000 SET OPE_ARTIGO_REDUCAO = 'Conforme art. 28 do RICMS/2017';
