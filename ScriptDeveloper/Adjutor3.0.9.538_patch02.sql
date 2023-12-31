UPDATE  VERSAOSISTEMA 
SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.538 patch 2',
       VERSAOSISTEMA.DATA   = '11.11.2019',
	    VERSAO = '3.0.9.538'
 where VERSAOSISTEMA.CODIGO = 1;


commit work;


ALTER TABLE OPE_REGRA ADD OPR_PERC_FCP NUMERIC (18,5);
COMMENT ON COLUMN OPE_REGRA.OPR_PERC_FCP IS 'PERCENTUAL FCP PARA O ESTADO/NCM ESPECIFICO';


ALTER TABLE NF0001 ADD NF_VALOR_TOTAL_FCPST NUMERIC (15,4);
ALTER TABLE NF_IT01 ADD NF_VALOR_FCP_st NUMERIC (15,4);

COMMIT WORK;  

ALTER TABLE PRMT0001 ADD PMT_ATIVAR_PPAC VARCHAR(1);
COMMENT ON COLUMN PRMT0001.PMT_ATIVAR_PPAC IS 'ATIVAR PPAC : S - SIM ; N - NAO ';
 
UPDATE PRMT0001
SET PMT_ATIVAR_PPAC = 'N';

COMMIT WORK;


ALTER TABLE PED0000 ADD PED_SubcabecalhoPPAC BLOB SUB_TYPE 0 SEGMENT SIZE 80;
COMMENT ON COLUMN PED0000.PED_SubcabecalhoPPAC IS 'CABECALHO DO PPAC';
