UPDATE  VERSAOSISTEMA 
SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.588',
    VERSAOSISTEMA.DATA   = '08.01.2024',
	VERSAO = '3.0.9.588'
 where VERSAOSISTEMA.CODIGO = 1;
commit work;

/* issue 1759 */
ALTER TABLE FTC_IT01 ADD FTI_UC_TEMP DOUBLE PRECISION;
UPDATE FTC_IT01 SET FTI_UC_TEMP = FTI_UC; 
ALTER TABLE FTC_IT01 DROP FTI_UC;
ALTER TABLE FTC_IT01 ALTER COLUMN FTI_UC_TEMP TO FTI_UC;

ALTER TABLE FTC_IT01 ADD FTI_UCMODIFIC_TEMP DOUBLE PRECISION;
UPDATE FTC_IT01 SET FTI_UCMODIFIC_TEMP = FTI_UCMODIFIC; 
ALTER TABLE FTC_IT01 DROP FTI_UCMODIFIC;
ALTER TABLE FTC_IT01 ALTER COLUMN FTI_UCMODIFIC_TEMP TO FTI_UCMODIFIC;

ALTER TABLE OSV_IT02 ADD OSI_UC_TEMP DOUBLE PRECISION;
UPDATE OSV_IT02 SET OSI_UC_TEMP = OSI_UC; 
ALTER TABLE OSV_IT02 DROP OSI_UC;
ALTER TABLE OSV_IT02 ALTER COLUMN OSI_UC_TEMP TO OSI_UC;

ALTER TABLE MATERIAPRIMA_ORDEMPRODUCAO      ADD MP_CONSUMOTOTAL_TEMP DOUBLE PRECISION;
UPDATE MATERIAPRIMA_ORDEMPRODUCAO      SET MP_CONSUMOTOTAL_TEMP = MP_CONSUMOTOTAL; 
ALTER TABLE MATERIAPRIMA_ORDEMPRODUCAO      DROP MP_CONSUMOTOTAL;
ALTER TABLE MATERIAPRIMA_ORDEMPRODUCAO      ALTER COLUMN MP_CONSUMOTOTAL_TEMP TO MP_CONSUMOTOTAL;

commit work;
