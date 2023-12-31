UPDATE  VERSAOSISTEMA SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.505',
       VERSAOSISTEMA.DATA   = '20.03.2018'
 where VERSAOSISTEMA.CODIGO = 1;
 
commit work;

CREATE TABLE usuario_empresa (
usu_codigo INTEGER,
emp_codigo VARCHAR (3)

);

comment ON TABLE USUARIO_empresa IS 'PERMISSAO USUARIO AS EMPRESAS';
COMMENT ON COLUMN USUARIO_empresa.usu_codigo IS 'CODIGO DO USUARIO';
COMMENT ON COLUMN USUARIO_EMPRESA.EMP_CODIGO IS 'CODIGO IDENTIFICADOR DA EMPRESA'; 

-- permissão a todos as empresas 
INSERT INTO usuario_empresa
SELECT usu_codigo,emp_codigo FROM USUARIO, EMP0000;


commit work;

ALTER TABLE PED0000 ADD REP_CODIGO_INTERNO VARCHAR(3);
comment ON COLUMN PED0000.REP_CODIGO_INTERNO IS 'VENDEDOR TELEVENDAS QUE VAI GANHAR UMA PARTE DA COMISSAO';

commit work;

ALTER TABLE PED0000 ADD PED_COMISSAO_VEN  NUMERIC(15,2) ;
COMMENT ON COLUMN PED0000.PED_COMISSAO_VEN IS 'COMISSAO DO VENDENDOR INTERNO - TELEVENDAS';

commit work;

ALTER TABLE CLI0000 ADD VEND_INTERNO_CODIGO VARCHAR(3);
COMMENT ON COLUMN CLI0000.VEND_INTERNO_CODIGO IS 'CHAVE REFERENCIA DE VENDENDOR INTERNO (REP0000)';

commit work;

ALTER TABLE FAT0000 ADD FAT_COMISSAO_VEN  NUMERIC(15,2) ;
COMMENT ON COLUMN FAT0000.FAT_COMISSAO_VEN IS 'COMISSAO DO VENDENDOR INTERNO - TELEVENDAS';

commit work;
  
ALTER TABLE FAT0000 ADD REP_CODIGO_INTERNO VARCHAR(3);
comment ON COLUMN FAT0000.REP_CODIGO_INTERNO IS 'VENDEDOR TELEVENDAS QUE VAI GANHAR UMA PARTE DA COMISSAO';
commit work;
 
CREATE OR ALTER VIEW VW_VENDEDOR_COMISSAO (EMP_CODIGO, REP_NOME,REP_RAZAO,REP_AGENCIA,REP_CONTA,REP_BANCO,REP_BANCOFAVOR,nf_num_nfe,
FAT_CODIGO,FPC_NUMER,REP_CODIGO, FPC_DTEMIS,FPC_VLPARC,FPC_PAGTO,CLI_CODIGO,CLI_RAZAO,CLI_UF,
 FPC_VENCTO,FPC_VLPAGO,FPC_NPARCELAS,FPC_DESCONTADO,FAT_CANCELADA,PED_CODIGO,FAT_QTDITEM,FAT_VL_LIQ,FAT_VLNCOMIS,
 FAT_DTEMIS,FAT_COMIS1,FAT_COMIS2,  FAT_COMIS3,FAT_VLFAT,REP_FUNCAO,fat_icmsret,fat_vl_ipi  ,FPC_EXCLUSAO,REP_GERENTE,REP_SUPERVISAO ,REP_SITUACAO
)
AS
SELECT F2.EMP_CODIGO, r1.REP_NOME, r1.REP_RAZAO, r1.REP_AGENCIA, r1.REP_CONTA, r1.REP_BANCO, r1.REP_BANCOFAVOR, N1.nf_num_nfe,  
 F2.FAT_CODIGO,F2.FPC_NUMER,F2.REP_CODIGO AS REP_CODIGO ,F2.FPC_DTEMIS,F2.FPC_VLPARC,F2.FPC_PAGTO,F2.CLI_CODIGO,
 C1.CLI_RAZAO AS CLI_RAZAO,C1.CLI_UF,
 F2.FPC_VENCTO AS FPC_VENCTO,F2.FPC_VLPAGO,F2.FPC_NPARCELAS,F2.FPC_DESCONTADO, F1.FAT_CANCELADA,F1.PED_CODIGO,
 F1.FAT_QTDITEM,F1.FAT_VL_LIQ,F1.FAT_VLNCOMIS,F1.FAT_DTEMIS,F1.FAT_COMIS1,F1.FAT_COMIS2, 
 F1.FAT_COMIS3,F1.FAT_VLFAT,R1.REP_FUNCAO,f1.fat_icmsret,f1.fat_vl_ipi ,FPC_EXCLUSAO, REP_GERENTE,REP_SUPERVISAO,REP_SITUACAO
 FROM FAT_PC01 F2 
JOIN FAT0000 F1 ON (F1.FAT_CODIGO = F2.FAT_CODIGO) AND (F2.EMP_CODIGO = F1.EMP_CODIGO)
JOIN CLI0000 C1 ON (F2.CLI_CODIGO = C1.CLI_CODIGO)
JOIN REP0000 R1 ON (R1.REP_CODIGO = F2.REP_CODIGO)
LEFT JOIN nf0001 N1 ON (N1.nf_notanumber = F1.fat_codigo) AND (N1.EMP_CODIGO = F1.EMP_CODIGO) AND (N1.nf_status_nfe <> 'C')
 UNION ALL
SELECT F2.EMP_CODIGO, r1.REP_NOME, r1.REP_RAZAO, r1.REP_AGENCIA, r1.REP_CONTA, r1.REP_BANCO, r1.REP_BANCOFAVOR, N1.nf_num_nfe,  
 F2.FAT_CODIGO,F2.FPC_NUMER,F1.REP_CODIGO_INTERNO AS REP_CODIGO,F2.FPC_DTEMIS,F2.FPC_VLPARC,F2.FPC_PAGTO,F2.CLI_CODIGO,C1.CLI_RAZAO,C1.CLI_UF,
 F2.FPC_VENCTO,F2.FPC_VLPAGO,F2.FPC_NPARCELAS,F2.FPC_DESCONTADO,
F1.FAT_CANCELADA,F1.PED_CODIGO,F1.FAT_QTDITEM,F1.FAT_VL_LIQ,F1.FAT_VLNCOMIS,F1.FAT_DTEMIS,F1.FAT_COMISSAO_VEN,F1.FAT_COMIS2, 
 F1.FAT_COMIS3,F1.FAT_VLFAT,R1.REP_FUNCAO,f1.fat_icmsret,f1.fat_vl_ipi , FPC_EXCLUSAO ,REP_GERENTE,REP_SUPERVISAO,REP_SITUACAO
 FROM FAT_PC01 F2 
JOIN FAT0000 F1 ON (F1.FAT_CODIGO = F2.FAT_CODIGO) AND (F2.EMP_CODIGO = F1.EMP_CODIGO)
JOIN CLI0000 C1 ON (F2.CLI_CODIGO = C1.CLI_CODIGO)
JOIN REP0000 R1 ON (R1.REP_CODIGO = F1.REP_CODIGO_INTERNO)
LEFT JOIN nf0001 N1 ON (N1.nf_notanumber = F1.fat_codigo) AND (N1.EMP_CODIGO = F1.EMP_CODIGO) AND (N1.nf_status_nfe <> 'C');

COMMENT ON VIEW VW_VENDEDOR_COMISSAO IS 'VENDEDOR E VENDEDOR INTERNO PARA COMISSAO'; 
