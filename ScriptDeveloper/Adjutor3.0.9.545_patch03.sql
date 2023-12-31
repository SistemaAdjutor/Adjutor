UPDATE  VERSAOSISTEMA 
SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.545 patch 3',
    VERSAOSISTEMA.DATA   = '04.06.2020',
	VERSAO = '3.0.9.545'
 where VERSAOSISTEMA.CODIGO = 1;

commit work;

ALTER TABLE OPE0000 ADD OPE_ICMSDESON NUMERIC (18,5);
ALTER TABLE OPE0000 ADD OPE_MOTIVDESON INTEGER;
COMMENT ON COLUMN OPE0000.OPE_ICMSDESON IS 'ALIQUOTA ICMS DESONERACAO';
COMMENT ON COLUMN OPE0000.OPE_MOTIVDESON IS 'MOTIVO DE DESONERACAO';

ALTER TABLE NF_IT01 ADD NF_VALORICMSDESON NUMERIC (18,5);
ALTER TABLE NF_IT01 ADD NF_MOTIVDESON INTEGER ;
COMMENT ON COLUMN NF_IT01.NF_VALORICMSDESON IS 'VALOR DO ICMS DE DESONERACAO';
COMMENT ON COLUMN NF_IT01.NF_MOTIVDESON IS 'MOTIVO DE ICMS DESONERADO'; 

ALTER TABLE NF0001 ADD NF_TotalICMS_Deson NUMERIC (18,5);
COMMENT ON COLUMN NF0001.NF_TotalICMS_Deson IS 'TOTAL DE ICMS DESONERADO';
