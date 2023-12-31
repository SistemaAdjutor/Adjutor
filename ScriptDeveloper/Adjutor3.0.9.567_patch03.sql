UPDATE  VERSAOSISTEMA 
SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.567 patch 3',
    VERSAOSISTEMA.DATA   = '26.04.2022',
	VERSAO = '3.0.9.567'
 where VERSAOSISTEMA.CODIGO = 1;
commit work;

ALTER TABLE OPE0000 ADD OPE_RETORNO_INDUST_SOBRA VARCHAR(1);


CREATE SEQUENCE GEN_COTACAO;
ALTER SEQUENCE GEN_COTACAO RESTART WITH 100;
  COMMENT ON SEQUENCE GEN_COTACAO IS 'Gerador de Códigos para as Cotações';
CREATE TABLE COTACAO (
	COT_CODIGO INT PRIMARY KEY
);
  COMMENT ON COLUMN COTACAO.COT_CODIGO is 'Chave Primária da Cotação';
ALTER TABLE COTACAO ADD COT_NUMERO VARCHAR(20);
  COMMENT ON COLUMN COTACAO.COT_NUMERO is 'Número da Cotação';
ALTER TABLE COTACAO ADD COT_SOLICITANTE VARCHAR(70);
  COMMENT ON COLUMN COTACAO.COT_SOLICITANTE is 'Nome do Solicitante';
ALTER TABLE COTACAO ADD COT_OBSERVACAO VARCHAR(255);
  COMMENT ON COLUMN COTACAO.COT_OBSERVACAO is 'Observações para a Solicitação';
ALTER TABLE COTACAO ADD SET_CODIGO INT;
  COMMENT ON COLUMN COTACAO.SET_CODIGO is 'Código do Setor Solicitante';
ALTER TABLE COTACAO ADD COT_DATA_SOL_COTACAO DATE;
  COMMENT ON COLUMN COTACAO.COT_DATA_SOL_COTACAO is 'Data da Solicitação da Cotação';
  CREATE INDEX IDX_COT_COT_DATA_SOL_COTACAO ON COTACAO COMPUTED BY (COT_DATA_SOL_COTACAO);
ALTER TABLE COTACAO ADD COT_DATA_FINALIZACAO DATE;
  COMMENT ON COLUMN COTACAO.COT_DATA_FINALIZACAO is 'Data da Finalização da Cotação';
ALTER TABLE COTACAO ADD COT_APROVADA VARCHAR(1);
  COMMENT ON COLUMN COTACAO.COT_APROVADA is 'Cotação Aprovada S/N';
ALTER TABLE COTACAO ADD EMP_CODIGO VARCHAR(3);
  COMMENT ON COLUMN COTACAO.EMP_CODIGO is 'Empresa a qual pertence esta cotação';
 
CREATE SEQUENCE GEN_COTACAO_ITEM;
ALTER SEQUENCE GEN_COTACAO_ITEM RESTART WITH 100;
  COMMENT ON SEQUENCE GEN_COTACAO_ITEM IS 'Gerador de Códigos para os Itens Cotados';  
CREATE TABLE COTACAO_ITEM (
	CIT_CODIGO INT PRIMARY KEY
);
  COMMENT ON COLUMN COTACAO_ITEM.CIT_CODIGO is 'Chave Primária dos Itens da Cotação';
ALTER TABLE COTACAO_ITEM ADD COT_CODIGO INT;
  COMMENT ON COLUMN COTACAO_ITEM.COT_CODIGO is 'Código da Cotação';
ALTER TABLE COTACAO_ITEM ADD PRD_REFER VARCHAR(20);
  COMMENT ON COLUMN COTACAO_ITEM.PRD_REFER is 'Referência do Produto (Item) que Foi Cotado. Tabela PRD0000';
  CREATE INDEX IDX_CIT_PRD_REFER ON COTACAO_ITEM COMPUTED BY(PRD_REFER);
ALTER TABLE COTACAO_ITEM ADD CIT_QUANTIDADE_SOLICITADA NUMERIC(18,4);
  COMMENT ON COLUMN COTACAO_ITEM.CIT_QUANTIDADE_SOLICITADA is 'Quantidade Solicitada na Cotação';
ALTER TABLE COTACAO_ITEM ADD PRD_DESCRICAO VARCHAR(70);
  COMMENT ON COLUMN COTACAO_ITEM.PRD_DESCRICAO is 'Descrição do Produto (Item) que Foi Cotado. Tabela PRD0000';
ALTER TABLE COTACAO_ITEM ADD CIT_QTDE_MIN NUMERIC(18,4);
  COMMENT ON COLUMN COTACAO_ITEM.CIT_QTDE_MIN is 'Quantidade Mínima Necessária';
ALTER TABLE COTACAO_ITEM ADD CIT_QTDE_MAX NUMERIC(18,4);
  COMMENT ON COLUMN COTACAO_ITEM.CIT_QTDE_MAX is 'Quantidade Máxima';
ALTER TABLE COTACAO_ITEM ADD PRD_UNISIGLA VARCHAR(6);
  COMMENT ON COLUMN COTACAO_ITEM.PRD_UNISIGLA is 'Unidade de Medida';
ALTER TABLE COTACAO_ITEM ADD CIT_APROVADA VARCHAR(1);
  COMMENT ON COLUMN COTACAO_ITEM.CIT_APROVADA is 'Item Aprovado para Cotação S/N';
ALTER TABLE COTACAO_ITEM ADD CIT_DATA_NECESSIDADE DATE;
  COMMENT ON COLUMN COTACAO_ITEM.CIT_DATA_NECESSIDADE is 'Data da Previsão da Necessidade';
ALTER TABLE COTACAO_ITEM ADD CIT_STATUS INT;
  COMMENT ON COLUMN COTACAO_ITEM.CIT_STATUS is 'Status do Item da Cotação: 0 - Não Definido / 1 - Aberta / 2 - Rejeitada / 3 - Autorização de Cotação / 4 - Cotação Finalizada / 5 - Autorização de Compra / 6 - Concluída / 7 - Cancelada';
ALTER TABLE COTACAO_ITEM ADD CIT_DATA_AUTORIZACAO DATE;
  COMMENT ON COLUMN COTACAO_ITEM.CIT_DATA_AUTORIZACAO is 'Data da Autorização da Cotação';
ALTER TABLE COTACAO_ITEM ADD CIT_RESPONSAVEL VARCHAR(70);
  COMMENT ON COLUMN COTACAO_ITEM.CIT_RESPONSAVEL is 'Responsável pela Autorização da Cotação';
ALTER TABLE COTACAO_ITEM ADD CIT_OBS_AUTORIZACAO VARCHAR(255);
  COMMENT ON COLUMN COTACAO_ITEM.CIT_OBS_AUTORIZACAO  is 'Observação da Autorização da Cotação';
 
CREATE SEQUENCE GEN_COTACAO_FORNECEDOR;
ALTER SEQUENCE GEN_COTACAO_FORNECEDOR RESTART WITH 100;
  COMMENT ON SEQUENCE GEN_COTACAO_FORNECEDOR IS 'Gerador de Códigos para os Forncedores'; 
CREATE TABLE COTACAO_FORNECEDOR (
	COF_CODIGO INT PRIMARY KEY
);
  COMMENT ON COLUMN COTACAO_FORNECEDOR.COF_CODIGO is 'Chave Primária dos Itens e Fornecedores';
ALTER TABLE COTACAO_FORNECEDOR ADD CIT_CODIGO INT;
  COMMENT ON COLUMN COTACAO_FORNECEDOR.CIT_CODIGO is 'Chave Primária de Ligação com a Tabela COTACAO_ITEM';
  CREATE INDEX IDX_COF_CIT_CODIGO ON COTACAO_FORNECEDOR COMPUTED BY (CIT_CODIGO);
  ALTER TABLE COTACAO_FORNECEDOR ADD CONSTRAINT FK_COF_CIT_CODIGO FOREIGN KEY(CIT_CODIGO) REFERENCES COTACAO_ITEM;
ALTER TABLE COTACAO_FORNECEDOR ADD FOR_CODIGO VARCHAR(4);
  COMMENT ON COLUMN COTACAO_FORNECEDOR.FOR_CODIGO is 'Chave de Ligação com a Tabela FOR0000 (Fornecedores)';
  CREATE INDEX IDX_COF_FOR_CODIGO ON FOR0000 COMPUTED BY (FOR_CODIGO);
ALTER TABLE COTACAO_FORNECEDOR ADD COF_QUANTIDADE_COTADA NUMERIC(18,4);
  COMMENT ON COLUMN COTACAO_FORNECEDOR.COF_QUANTIDADE_COTADA is 'Quantidade Realmente Cotada';
ALTER TABLE COTACAO_FORNECEDOR ADD COF_PRECO_COTACAO NUMERIC(18,4);
  COMMENT ON COLUMN COTACAO_FORNECEDOR.COF_PRECO_COTACAO is 'Preço da Cotação';
ALTER TABLE COTACAO_FORNECEDOR ADD COF_DATA_PRAZO_PAGAMENTO DATE;
  COMMENT ON COLUMN COTACAO_FORNECEDOR.COF_DATA_PRAZO_PAGAMENTO is 'Data do Prazo de Pagamento';
ALTER TABLE COTACAO_FORNECEDOR ADD COF_DATA_AUTORIZACAO DATE;
  COMMENT ON COLUMN COTACAO_FORNECEDOR.COF_DATA_AUTORIZACAO is 'Data da Autorização da Compra';
ALTER TABLE COTACAO_FORNECEDOR ADD COF_DATA_PRAZO_ENTREGA DATE;
  COMMENT ON COLUMN COTACAO_FORNECEDOR.COF_DATA_PRAZO_ENTREGA is 'Data do Prazo de Entrega do Produto';
ALTER TABLE COTACAO_FORNECEDOR ADD COF_TIPO_FRETE VARCHAR(3);
  COMMENT ON COLUMN COTACAO_FORNECEDOR.COF_TIPO_FRETE is 'Tipo do Frete CIF-FOB';
ALTER TABLE COTACAO_FORNECEDOR ADD COF_APROVADA VARCHAR(1);
  COMMENT ON COLUMN COTACAO_FORNECEDOR.COF_APROVADA is 'Cotação do Fornecedor Aprovada';
ALTER TABLE COTACAO_FORNECEDOR ADD COF_FORNECEDOR_NOME VARCHAR(100);
  COMMENT ON COLUMN COTACAO_FORNECEDOR.COF_FORNECEDOR_NOME is 'Nome do Fornecedor';
ALTER TABLE COTACAO_FORNECEDOR ADD COF_FORNECEDOR_EMAIL VARCHAR(100);
  COMMENT ON COLUMN COTACAO_FORNECEDOR.COF_FORNECEDOR_EMAIL is 'e-Mail do Fornecedor';
ALTER TABLE COTACAO_FORNECEDOR ADD COF_FORNECEDOR_FONE VARCHAR(30);
  COMMENT ON COLUMN COTACAO_FORNECEDOR.COF_FORNECEDOR_FONE is 'Telefone do Fornecedor';
 