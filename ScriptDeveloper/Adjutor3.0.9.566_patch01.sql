UPDATE  VERSAOSISTEMA 
SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.566 patch 1',
    VERSAOSISTEMA.DATA   = '09.03.2022',
	VERSAO = '3.0.9.566'
 where VERSAOSISTEMA.CODIGO = 1;
commit work;

CREATE TABLE USUARIO_ALMOXARIFADO (
    USU_CODIGO  INTEGER,
    AMX_CODIGO  VARCHAR(4)
);
insert into USUARIO_ALMOXARIFADO (USU_CODIGO, AMX_CODIGO) select us.usu_codigo, amx_codigo from usuario us, almox0000 al;
ALTER TABLE OPV0000 ADD OPV_BAIXAR_ESTOQUE_PELO_FAT CHAR(1) DEFAULT 'N';
UPDATE OPV0000 SET OPV_BAIXAR_ESTOQUE_PELO_FAT ='N';
commit work;
