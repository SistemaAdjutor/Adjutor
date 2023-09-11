UPDATE  VERSAOSISTEMA 
SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.566 patch 5',
    VERSAOSISTEMA.DATA   = '30.03.2022',
	VERSAO = '3.0.9.566'
 where VERSAOSISTEMA.CODIGO = 1;
commit work;

ALTER TABLE PRMT0001 ADD PMT_IMPORTA_ITENS_XML VARCHAR(1);
ALTER TABLE PED0000 ADD PED_CAMINHO_XML VARCHAR(255);

CREATE OR ALTER PROCEDURE SUMARIZACAO_PRODUTO_UNIDADES (EMP_CODIGO VARCHAR(3), DATA_INICIO DATE, DATA_FIM DATE)
RETURNS (
	CODIGO VARCHAR(20),
	QTDE DECIMAL(18,4),
	UNIDADE VARCHAR(7),
	PRODUTO VARCHAR(100),
	CONTA INTEGER,
	RANQ INTEGER,
	ACUMULADO DECIMAL(18,4),
	PERC_ACUMULADO DECIMAL(18,4),
	SHAREMARKETINDIVIDUAL DECIMAL(18,4),
	CLI_CODIGO VARCHAR(5)
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
        SELECT SUM (T1.NF_QTDE) AS QTDE
        FROM NF_IT01 T1                                       
        JOIN NF0001 T7 ON (T7.NF_NOTANUMBER = T1.NF_IT_NOTANUMER)  
         JOIN PRD0000 T2 ON (T2.PRD_REFER = T1.PRD_REFER) 
        WHERE T7.NF_VENDA_FATURADA = 'S'
        AND NF_EMISSAO BETWEEN :DATA_INICIO AND :DATA_FIM
        AND T7.NF_CANCELADA <> 'S'
        INTO :qtdetotal;
   else    /* tem empresa selecionada */
        SELECT SUM (T1.NF_QTDE ) AS QTDE
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
        SELECT SUM ((coalesce(T1.NF_QTDE,0)) ) AS QTDE ,
        count(*) AS conta, T2.PRD_REFER , t2.PRD_DESCRI as PRODUTOS, prd_und, c.CLI_CODIGO
        FROM NF_IT01 T1
         JOIN NF0001 T7 ON (T7.NF_NOTANUMBER = T1.NF_IT_NOTANUMER)  
         JOIN CLI0000 c ON (C.CLI_CODIGO = T7.CLI_CODIGO)
         JOIN PRD0000 T2 ON (T2.PRD_REFER = T1.PRD_REFER) 
        WHERE T7.NF_VENDA_FATURADA = 'S'
        AND NF_EMISSAO BETWEEN :DATA_INICIO AND :DATA_FIM
        AND T7.NF_CANCELADA <> 'S'
       GROUP BY T2.PRD_REFER , t2.PRD_DESCRI, prd_und, c.CLI_CODIGO
        order by 1 desc
        into :qtde,:conta,:codigo, :produto, :unidade, :cli_codigo
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
        SELECT SUM (coalesce(T1.NF_QTDE,0)) AS QTDE ,
        count(*) AS conta, T2.PRD_REFER , t2.PRD_DESCRI as PRODUTOS, prd_und, c.CLI_CODIGO
        FROM NF_IT01 T1
         JOIN NF0001 T7 ON (T7.NF_NOTANUMBER = T1.NF_IT_NOTANUMER)  
         JOIN CLI0000 c ON (C.CLI_CODIGO = T7.CLI_CODIGO)
         JOIN PRD0000 T2 ON (T2.PRD_REFER = T1.PRD_REFER) 
        WHERE T7.NF_VENDA_FATURADA = 'S'
        AND NF_EMISSAO BETWEEN :DATA_INICIO AND :DATA_FIM
        AND T7.NF_CANCELADA <> 'S'
        AND t7.EMP_CODIGO =  :EMP_CODIGO
       GROUP BY T2.PRD_REFER , t2.PRD_DESCRI, prd_und, c.CLI_CODIGO
       order by 1 desc
          into :qtde,:conta, :codigo, :produto, :unidade, :cli_codigo
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
end;

