UPDATE  VERSAOSISTEMA 
SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.583 patch 1',
    VERSAOSISTEMA.DATA   = '16.08.2023',
	VERSAO = '3.0.9.583'
 where VERSAOSISTEMA.CODIGO = 1;
commit work;

ALTER TABLE CLI0000 ADD CCT_CODIGO VARCHAR(3) DEFAULT ''; 
COMMENT ON COLUMN CLI0000.CCT_CODIGO IS 'Código da Conta do Plano de Contas Financeiras';
UPDATE CLI0000 SET CCT_CODIGO = '' WHERE CCT_CODIGO IS NULL;

ALTER TABLE PED0000 ADD CCT_CODIGO VARCHAR(3) DEFAULT ''; 
COMMENT ON COLUMN PED0000.CCT_CODIGO IS 'Código da Conta do Plano de Contas Financeiras';
UPDATE PED0000 SET CCT_CODIGO = '' WHERE CCT_CODIGO IS NULL;
COMMIT WORK;

ALTER TABLE OPV0000 ADD OPV_DEVOLUCAO VARCHAR(1) DEFAULT 'N';
COMMENT ON COLUMN OPV0000.OPV_DEVOLUCAO IS 'É Pedido de Devolução? {S]im | [N]ão';
UPDATE OPV0000 SET OPV_DEVOLUCAO = 'N' WHERE OPV_DEVOLUCAO IS NULL; 

ALTER TABLE ENF_IT01 ADD ENF_IT_QUANTIDADE_DEVOLVIDA NUMERIC (18,5) DEFAULT 0;
COMMENT ON COLUMN ENF_IT01.ENF_IT_QUANTIDADE_DEVOLVIDA IS 'Quantidade Devolvida do Item da Nota de Entrada;';
UPDATE ENF_IT01 SET ENF_IT_QUANTIDADE_DEVOLVIDA = 0 WHERE ENF_IT_QUANTIDADE_DEVOLVIDA IS NULL ;

ALTER TABLE ENF_IT01 ADD ENF_IT_QUANTIDADE_A_DEVOLVER NUMERIC (18,5) DEFAULT 0;
COMMENT ON COLUMN ENF_IT01.ENF_IT_QUANTIDADE_A_DEVOLVER IS 'Quantidade a Devolver do Item da Nota de Entrada;';
UPDATE ENF_IT01 SET ENF_IT_QUANTIDADE_A_DEVOLVER = 0 WHERE ENF_IT_QUANTIDADE_A_DEVOLVER IS NULL ;
COMMIT WORK;

CREATE TABLE ENF_DEVOLUCAO (
	ENF_NOTANUMBER VARCHAR(10),
	ENF_SERIE VARCHAR(3),
	FOR_CODIGO VARCHAR(6),
	EMP_CODIGO VARCHAR(3),
	ENF_ENTRADA DATE,
	OPE_CODIGO VARCHAR(3),
	ENF_BASEICMS NUMERIC(18,5),
	ENF_ALIQ_ICMS NUMERIC(18,5),
	ENF_VL_ICMS NUMERIC(18,5),
	ENF_VLBASESUBTRIB NUMERIC(18,5),
	ENF_VL_SUBTRIB NUMERIC(18,5),
	ENF_VL_IPI NUMERIC(18,5),
	ENF_BASE_IPI NUMERIC(18,5),
	ENF_VLPIS NUMERIC(18,5),
	ENF_VLCOFINS NUMERIC(18,5),
	ENF_ALIQCOFINS NUMERIC(18,5),
	ENF_ALIQPIS NUMERIC(18,5),
	ENF_CHAVE_NFESE CHAR(60),
	PED_CODIGO VARCHAR(7),	
	USU_CODIGO INTEGER
) ;
CREATE INDEX IDX_ENF_DEVOLUCAO ON ENF_DEVOLUCAO (ENF_NOTANUMBER, ENF_SERIE, FOR_CODIGO, EMP_CODIGO);

CREATE TABLE ENF_IT_DEVOLUCAO (
	ENF_IT_NOTANUMBER VARCHAR(10),
	ENF_SERIE VARCHAR(3),
	FOR_CODIGO VARCHAR(4),
	EMP_CODIGO VARCHAR(3),
	PRD_REFER VARCHAR(20),
	PRD_CODIGO VARCHAR(6),
	ENF_IT_BASEIPI NUMERIC(18,5),
	ENF_IPIALIQ NUMERIC(18,5),
	ENF_IT_VLIPI NUMERIC(18,5),
	ENF_IT_BASEICMS NUMERIC(18,5),
	ENF_ICMSALIQ NUMERIC(18,5),
	ENF_ICMS NUMERIC(18,5),
	ENF_IT_BASESUBTRIB NUMERIC(18,5),
	ENF_IT_ALIQSUBTRIB NUMERIC(18,5),
	ENF_VLSUBST NUMERIC(18,5),
	ENF_BASEPIS NUMERIC(18,5),
	ENF_IT_ALIQPIS NUMERIC(18,5),
	ENF_IT_VLPIS NUMERIC(18,5),
	ENF_BASECOFINS NUMERIC(18,5),
	ENF_IT_ALIQCOFINS NUMERIC(18,5),
	ENF_IT_VLCOFINS NUMERIC(18,5),
	ENF_IT_VALFRETE NUMERIC(18,5),
	ENF_IT_VLSEGURO NUMERIC(18,5),
	ENF_IT_VLDESP_ACES NUMERIC(18,5)
);
CREATE INDEX IDX_ENF_IT_DEVOLUCAO ON ENF_IT_DEVOLUCAO (ENF_IT_NOTANUMBER, ENF_SERIE, FOR_CODIGO, EMP_CODIGO);

ALTER TABLE SHAREDB ADD PRODUTO_PRECO_EMPRESA VARCHAR(1) DEFAULT 'E';
UPDATE SHAREDB SET PRODUTO_PRECO_EMPRESA = 'C' WHERE REGISTROS = 1 AND PRODUTO_PRECO_EMPRESA IS NULL;
CREATE TABLE PRD0000_PRECO_EMPRESA (
  EMP_CODIGO VARCHAR(3),
  PRD_CODIGO VARCHAR(5),
  PRD_PE_CUSTOCOMIPI NUMERIC(18,5),
  PRD_PE_MARGEMVENDA NUMERIC(18,5),
  PRD_PE_PVENDA NUMERIC(18,5),
  USU_CODIGO INTEGER,
  PRD_PE_DATA_ATUALIZACAO TIMESTAMP
 );
CREATE INDEX IDX_PRD0000_PRECO_EMPRESA ON PRD0000_PRECO_EMPRESA(EMP_CODIGO, PRD_CODIGO);

ALTER TABLE PRMT0001 ADD PMT_COMIS_SOBRE_DIF_VENDA_CUSTO VARCHAR(1) DEFAULT 'S';
COMMENT ON COLUMN PRMT0001.PMT_COMIS_SOBRE_DIF_VENDA_CUSTO IS 'Pagar comissão somente sobre o valor da diferença entre o Preço de Venda e o Preço de Custo - [S]im | [N]ão ';
UPDATE PRMT0001 SET PMT_COMIS_SOBRE_DIF_VENDA_CUSTO = 'N' WHERE PMT_COMIS_SOBRE_DIF_VENDA_CUSTO IS NULL;
COMMIT WORK;

