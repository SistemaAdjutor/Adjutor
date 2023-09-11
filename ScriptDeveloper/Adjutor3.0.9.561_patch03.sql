UPDATE  VERSAOSISTEMA 
SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.561 patch 3',
    VERSAOSISTEMA.DATA   = '25.10.2021',
	VERSAO = '3.0.9.561'
 where VERSAOSISTEMA.CODIGO = 1;
commit work;

ALTER TABLE MODL_PROCESSOS ADD TEM_CARGA CHAR(1);

UPDATE modl_processos pro
SET tem_carga = 'S'
where exists (SELECT 'S' FROM MODl_PROCESSOS_OPERACOES mo1
          join operacoes ope on (ope.ope_codigo=mo1.ope_codigo)
        where mo1.pro_codigo = pro.pro_codigo
         and ope.ope_naousacarga='N' );

UPDATE modl_processos pro
SET tem_carga = 'N' WHERE TEM_CARGA IS null;