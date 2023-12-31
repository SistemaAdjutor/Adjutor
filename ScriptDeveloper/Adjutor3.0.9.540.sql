UPDATE  VERSAOSISTEMA 
SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.540',
       VERSAOSISTEMA.DATA   = '07.01.2020',
	    VERSAO = '3.0.9.540'
 where VERSAOSISTEMA.CODIGO = 1;

commit work;


ALTER TABLE USUARIO_PARAMETRO ADD USP_DASH_VENDAS VARCHAR(1);
ALTER TABLE USUARIO_PARAMETRO ADD USP_DASH_FINANCEIRO VARCHAR(1);

comment ON COLUMN USUARIO_PARAMETRO.USP_DASH_VENDAS IS 'PERMITE ACESSO DASHBOARD VENDAS';
comment ON COLUMN USUARIO_PARAMETRO.USP_DASH_FINANCEIRO IS 'PERMITE ACESSO DASHBOARD FINANCEIRO';

UPDATE USUARIO_PARAMETRO
SET USP_DASH_VENDAS = 'N' , USP_DASH_FINANCEIRO = 'N';

commit work;


ALTER TABLE OPE0000 ADD OPE_CST_IPI VARCHAR(2);
ALTER TABLE OPE0000 ADD OPE_CST_PISCOFINS VARCHAR(2);

COMMENT ON COLUMN OPE0000.OPE_CST_IPI IS 'CST DEFAUT PARA IPI NA CFOP';
COMMENT ON COLUMN OPE0000.OPE_CST_PISCOFINS IS 'CST DEFAUT PARA PIS/COFINS NA CFOP. TEM PRIORIDADE SOBRE O CAD PRODUTOS';
COMMENT ON COLUMN OPE0000.OPE_TRIBIPI IS 'TRIBUTA IPI: S - SIM; N - NAO';
COMMENT ON COLUMN OPE0000.OPE_TRIBPISCOFINS IS 'TRIBUTA PIS E COFINS: S - SIM; N - NAO';
COMMENT ON COLUMN OPE0000.OPE_TRIBICMS IS 'TRIBUTA ICMS: S - SIM; N - NAO';
COMMENT ON COLUMN OPE0000.OPE_ATIVA IS 'TRIBUTA ATIVA: S - SIM; N - NAO';
COMMENT ON COLUMN OPE0000.OPE_NATUREZA IS 'CFOP';
COMMENT ON COLUMN OPE0000.OPE_NATUREZA_ENTRADA IS 'CFOP DE ENTRADA - PARA PEGAR NA NF ENTRADA ATRAVEZ DA CFOP SAIDA';
COMMENT ON COLUMN OPE0000.OPE_TIPO IS 'TIPO DE CFOP : S - SAIDAS (FATURAMENTO) E - ENTRADA(FORNECEDORES) ';
COMMENT ON COLUMN OPE0000.EMP_CSOSN IS 'CSOSN Especifico da Operação';
COMMENT ON COLUMN OPE0000.EMP_CSOSN_ST IS 'CSOSN Especifico da Operação COM ST';


ALTER TABLE NF_IT01 ADD CST_IPI VARCHAR(2);
COMMENT ON COLUMN NF_IT01.CST_IPI IS 'CST DO IPI ENTRADA :00,01,02,03,04,05,49  SAIDA : 50,51,52,53,54,55,99';
COMMENT ON COLUMN NF_IT01.CST_PIS IS 'CST DO PIS';
COMMENT ON COLUMN NF_IT01.CST_COFINS IS 'CST COFINS';


UPDATE NF_IT01
SET CST_IPI = (SELECT FIRST 1
                     CASE NF_ENTR_SAID
				       WHEN 'S' THEN '50' 
				       WHEN 'E' THEN '49'
				       END 
				   FROM NF0001 nf
				   WHERE nf.NF_NOTANUMBER =  NF_IT_NOTANUMER AND nf.EMP_CODIGO = NF_IT01.EMP_CODIGO);
				   
COMMIT WORK;

--ATUALIZANDO SPED

CREATE OR ALTER VIEW VW_SPED_NOTAS_FISCAIS_ITENS (REGISTRO_NOTA, CODIGO_ITEM, DESCRICAO_ITEM, QUANTIDADE, UNIDADE, VALOR_ITEM, VALOR_DESCONTO, INDICADOR_MOVIMENTACAO, CST_ICMS, CFOP, CODIGO_CFOP, OPE_CODIGO, VALOR_BASE_ICMS, ALIQUOTA_ICMS, VALOR_ICMS, VALOR_BASE_ICMS_ST, ALIQUOTA_ICMS_ST, VALOR_ICMS_ST, INDICADOR_APURACAO_IPI, CST_IPI, CODIGO_ENQUAD_IPI, VALOR_BASE_IPI, ALIQUOTA_IPI, VALOR_IPI, CST_PIS, VALOR_BASE_PIS, ALIQ_PIS, QUANTIDADE_BASE_PIS, ALIQ_PIS_REAIS, VALOR_PIS, CST_COFINS, VALOR_BASE_COFINS, ALIQUOTA_COFINS, QUANTIDADE_BASE_COFINS, ALIQ_COFINS_REAIS, VALOR_COFINS, FOR_CODIGO)
AS
SELECT
CAST('E'||T1.ENF_IT_NOTANUMBER AS VARCHAR(30)),
T1.PRD_CODIGO,
CAST(T1.PRD_DESCRI AS VARCHAR(500)),
coalesce(t1.ENF_QTDE_ORIGINAL, T1.ENF_QTDE),
COALESCE(T1.ENF_UCOM,(SELECT FIRST 1 CASE PRD_PRODSERV    WHEN 'S' THEN COALESCE(T3.PRD_UND,'UN') ELSE T3.PRD_UND END AS UNIDADE_MEDIDA  FROM PRD0000 T3 WHERE T3.PRD_REFER = T1.PRD_REFER)),
COALESCE(T1.ENF_PRECO_ORIGINAL,T1.ENF_PRECO),
T1.ENF_IT_DESCTO,
CAST((CASE WHEN (1=1) THEN
    'S'
END) AS VARCHAR(1)),
COALESCE(t1.STB_TRIBUTACAO,'00'),
/*(CASE WHEN
(SELECT FIRST 1 ENF_MODELO_NF FROM enf0001 EF WHERE  T1.ENF_IT_NOTANUMBER = EF.ENF_NOTANUMBER)='57' THEN '00'
ELSE COALESCE(t1.STB_TRIBUTACAO,'00') END) AS CST_ICMS,*/
t1.ENF_CFOP,
t1.ENF_CFOP,
T1.OPE_CODIGO AS OPE_CODIGO,
t1.ENF_IT_BASEICMS,
t1.ENF_ICMSALIQ,
t1.ENF_ICMS,
t1.ENF_IT_BASESUBTRIB AS VALOR_BASE_ICMS_ST,
t1.ENF_IT_ALIQSUBTRIB AS ALIQUOTA_ICMS_ST,
CAST(ENF_IT_VLSUBTRIB AS NUMERIC(18,2)) as VALOR_ICMS_ST,
CAST((CASE WHEN (1=1) THEN
    0
END) AS INTEGER),
t1.CST_IPI,
CAST(CASE WHEN (1=1) THEN
    'XXX'
END as varchar(3)),
COALESCE(T1.ENF_IT_BASEIPI,0) AS VALOR_BASE_IPI,
COALESCE(T1.ENF_IPIALIQ,0) AS ALIQUOTA_IPI,
COALESCE(T1.ENF_IT_VLIPI,0) AS VALOR_IPI ,
t1.CST_PIS,
COALESCE(T1.ENF_BASEPIS,0),
COALESCE(T1.ENF_IT_ALIQPIS,0),
CASE WHEN (1=1) THEN
    0.00
END,
CASE WHEN (1=1) THEN
    0.00
END,
COALESCE(T1.ENF_IT_VLPIS,0),
t1.CST_COFINS,
COALESCE(T1.ENF_BASECOFINS,0),
COALESCE(T1.ENF_IT_ALIQCOFINS,0),
CASE WHEN (1=1) THEN
    0.00
END,
CASE WHEN (1=1) THEN
    0.00
END,
COALESCE(T1.ENF_IT_VLCOFINS,0),
T1.FOR_CODIGO
FROM
ENF_IT01 T1
UNION ALL 
SELECT
CAST('S'||T2.NF_IT_NOTANUMER AS VARCHAR(30)),
(SELECT FIRST 1 T3.PRD_CODIGO FROM PRD0000 T3 WHERE T3.PRD_REFER = T2.PRD_REFER),
T2.PRD_DESCRI,
T2.NF_QTDE,
(SELECT FIRST 1 T3.PRD_UND FROM PRD0000 T3 WHERE T3.PRD_REFER = T2.PRD_REFER),
T2.NF_PRECO,
T2.NF_IDESCTO1,
CAST((CASE WHEN (1=1) THEN
    'S'
END) AS VARCHAR(1)),
COALESCE((SELECT FIRST 1 cast(T3.PRD_ORIGEM as varchar(1)) FROM PRD0000 T3 WHERE T3.PRD_REFER = T2.PRD_REFER),'00')||t2.STB_TRIBUTACAO,
cast(t2.NTP_CFOP as varchar(4)),
cast(t2.NTP_CFOP as varchar(4)),
OPE_CODIGO,
t2.NF_ICMSBASE,
t2.NF_ICMSALIQ,
t2.NF_ICMSVALOR,
t2.NF_SUBTRIBASE,
t2.NF_ALIQSUBTRIB,
CAST(t2.NF_VLSUBST AS NUMERIC(18,2)) as VALOR_ICMS_ST,
CAST((CASE WHEN (1=1) THEN  0 END) AS INTEGER),
CST_IPI, 
CAST(CASE WHEN (1=1) THEN  'XXX' END as varchar(3)),
COALESCE(T2.NF_IPIBASE,0) AS VALOR_BASE_IPI,
COALESCE(T2.NF_IPIALIQ,0) AS ALIQUOTA_IPI,
COALESCE(T2.NF_IPIVALOR,0) AS VALOR_IPI,
CAST(CASE WHEN (T2.NF_BASE_PIS > 0) THEN
    coalesce(CST_PIS,'01')
    ELSE
    '99'
END as varchar(3)),
COALESCE(T2.NF_BASE_PIS,0),
COALESCE(T2.NF_ALIQPIS,0),
CASE WHEN (1=1) THEN
    0.00
END,
CASE WHEN (1=1) THEN
    0.00
END,
COALESCE(T2.NF_VLPIS,0),
cast(CASE WHEN (T2.NF_BASE_COFINS > 0) THEN
    coalesce(CST_COFINS, '01')
    ELSE
    '99'
END as varchar(3)),
COALESCE(T2.NF_BASE_COFINS,0),
COALESCE(T2.NF_ALIQCOFINS,0),
CASE WHEN (1=1) THEN
    0.00
END,
CASE WHEN (1=1) THEN
    0.00
END,
COALESCE(T2.NF_VLCOFINS,0),
NULL
FROM
NF_IT01 T2
WHERE
  EXISTS (SELECT 1 FROM PRD0000 T3 WHERE T3.PRD_REFER = T2.PRD_REFER)
  AND PRD_REFER IS NOT NULL;


DROP TRIGGER NF_IT01_BU0;
DROP TRIGGER NF_IT01_BI0;

SET TERM ^ ;

CREATE OR ALTER TRIGGER NF_IT01_BI0 FOR NF_IT01
ACTIVE BEFORE INSERT POSITION 0
AS
begin
    if (New.nf_registro IS NULL) THEN NEW.NF_REGISTRO = gen_id(gen_NF_IT01,1);
   
end
^
SET TERM ; ^


-- ERRO ACONTECE SOMENTE NA DOAÇÃO
UPDATE PED0000 p
  SET PED_VLFATURADO = PED_VLTOTAL_BRUTO
  WHERE EXISTS (SELECT * FROM FAT0000 f WHERE p.PED_CODIGO = f.PED_CODIGO AND p.EMP_CODIGO = f.EMP_CODIGO)
  AND (SELECT  PMT_PEDIDO_DOACAO FROM PRMT0001 WHERE PRMT0001.EMP_CODIGO = P.EMP_CODIGO) = 'S' ;
  
  
  COMMIT WORK;
  
  
  