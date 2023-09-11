UPDATE  VERSAOSISTEMA 
SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.571 patch 1',
    VERSAOSISTEMA.DATA   = '11.08.2022',
	VERSAO = '3.0.9.571'
 where VERSAOSISTEMA.CODIGO = 1;
commit work;

ALTER TABLE BAN_TRANSFERENCIA ALTER BTR_OBSERVACAO TYPE VARCHAR(255); 

ALTER TABLE OPERACOES ADD SET_CODIGO INT;
CREATE GENERATOR  GEN_REQUISICAO_MATERIAL_ORI;
SET GENERATOR GEN_REQUISICAO_MATERIAL_ORI TO 0;
CREATE TABLE REQUISICAO_MATERIAL_ORI (
	RMO_CODIGO INT PRIMARY KEY NOT NULL
);
COMMENT ON COLUMN REQUISICAO_MATERIAL_ORI.RMO_CODIGO  is 'Chave primária da Origem da Requisicao de MAterial';
ALTER TABLE REQUISICAO_MATERIAL_ORI ADD RMO_DESCRICAO VARCHAR(255);
COMMENT ON COLUMN REQUISICAO_MATERIAL_ORI.RMO_DESCRICAO  is 'Descrição  da Origem da Requisicao de MAterial';
ALTER TABLE REQUISICAO_MATERIAL ADD RMO_CODIGO INT;
COMMENT ON COLUMN REQUISICAO_MATERIAL.RMO_CODIGO  is 'Chave primária da Origem da Requisicao de MAterial';

CREATE GENERATOR GEN_CAPACIDADE;
SET GENERATOR GEN_CAPACIDADE TO 0;
CREATE TABLE CAPACIDADE (
	CAP_CODIGO INT PRIMARY KEY NOT NULL
);
COMMENT ON COLUMN CAPACIDADE.CAP_CODIGO  is 'Chave primária da Capacidade do Item do Pedido';
ALTER TABLE CAPACIDADE ADD CAP_DESCRICAO VARCHAR(255);
COMMENT ON COLUMN CAPACIDADE.CAP_DESCRICAO  is 'Descrição da Capacidade do Item do Pedido';
ALTER TABLE PED_IT01 ADD CAP_CODIGO INT;
COMMENT ON COLUMN PED_IT01.CAP_CODIGO  is 'Chave primária da Capacidade do Item do Pedido';

CREATE OR ALTER PROCEDURE SUMARIZACAO_PRODUTO_UNIDADES_SC (EMP_CODIGO VARCHAR(3), DATA_INICIO DATE, DATA_FIM DATE)
RETURNS (
	CODIGO VARCHAR(20),
	QTDE DECIMAL(18,4),
	UNIDADE VARCHAR(7),
	PRODUTO VARCHAR(100),
	CONTA INTEGER,
	RANQ INTEGER,
	ACUMULADO DECIMAL(18,4),
	PERC_ACUMULADO DECIMAL(18,4),
	SHAREMARKETINDIVIDUAL DECIMAL(18,4)
)
AS
declare variable n integer;
declare variable qtdetotal decimal(18,4);
begin
   n = 0;
   acumulado = 0;
   ranq = 0 ;
   perc_acumulado = 0 ;
  if (:EMP_CODIGO = '') then
        SELECT DISTINCT SUM (T1.NF_QTDE) AS QTDE
        FROM NF_IT01 T1                                       
        JOIN NF0001 T7 ON (T7.NF_NOTANUMBER = T1.NF_IT_NOTANUMER)  
         JOIN PRD0000 T2 ON (T2.PRD_REFER = T1.PRD_REFER) 
        WHERE T7.NF_VENDA_FATURADA = 'S'
        AND NF_EMISSAO BETWEEN :DATA_INICIO AND :DATA_FIM
        AND T7.NF_CANCELADA <> 'S'
        INTO :qtdetotal;
   else    /* tem empresa selecionada */
        SELECT DISTINCT SUM (T1.NF_QTDE ) AS QTDE
        FROM NF_IT01 T1                                       
        JOIN NF0001 T7 ON (T7.NF_NOTANUMBER = T1.NF_IT_NOTANUMER)  
         JOIN PRD0000 T2 ON (T2.PRD_REFER = T1.PRD_REFER) 
        WHERE T7.NF_VENDA_FATURADA = 'S'
        AND NF_EMISSAO BETWEEN :DATA_INICIO AND :DATA_FIM
        AND T7.NF_CANCELADA <> 'S'
        AND t7.EMP_CODIGO = :EMP_CODIGO
        INTO :qtdetotal ;

   if (:EMP_CODIGO = '') then
   begin
       FOR 
        SELECT DISTINCT SUM ((coalesce(T1.NF_QTDE,0)) ) AS QTDE ,
        count(*) AS conta, T2.PRD_REFER , t2.PRD_DESCRI as PRODUTOS, prd_und
        FROM NF_IT01 T1
         JOIN NF0001 T7 ON (T7.NF_NOTANUMBER = T1.NF_IT_NOTANUMER)  
         JOIN PRD0000 T2 ON (T2.PRD_REFER = T1.PRD_REFER) 
        WHERE T7.NF_VENDA_FATURADA = 'S'
        AND NF_EMISSAO BETWEEN :DATA_INICIO AND :DATA_FIM
        AND T7.NF_CANCELADA <> 'S'
       GROUP BY T2.PRD_REFER , t2.PRD_DESCRI, prd_und
        order by 1 desc
        into :qtde,:conta,:codigo, :produto, :unidade
       do
         begin
           n = n +1;
           ranq = n;
           ShareMarketIndividual = (:qtde/ qtdetotal)*100;
           acumulado = acumulado + qtde;
           perc_acumulado = round((acumulado/ qtdetotal),4)*100;
           suspend;
         end
      end
    else /* tem empresa */
    begin
       FOR 
        SELECT DISTINCT SUM (coalesce(T1.NF_QTDE,0)) AS QTDE ,
        count(*) AS conta, T2.PRD_REFER , t2.PRD_DESCRI as PRODUTOS, prd_und
        FROM NF_IT01 T1
         JOIN NF0001 T7 ON (T7.NF_NOTANUMBER = T1.NF_IT_NOTANUMER)           
         JOIN PRD0000 T2 ON (T2.PRD_REFER = T1.PRD_REFER) 
        WHERE T7.NF_VENDA_FATURADA = 'S'
        AND NF_EMISSAO BETWEEN :DATA_INICIO AND :DATA_FIM
        AND T7.NF_CANCELADA <> 'S'
        AND t7.EMP_CODIGO =  :EMP_CODIGO
       GROUP BY T2.PRD_REFER , t2.PRD_DESCRI, prd_und
       order by 1 desc
          into :qtde,:conta, :codigo, :produto, :unidade
       do
         begin
           n = n +1;
           ranq = n;
           ShareMarketIndividual = (:qtde/ qtdetotal)*100;
           acumulado = acumulado + qtde;
           perc_acumulado = round((acumulado/ qtdetotal),4)*100;
           suspend;
         end
    end
END;


