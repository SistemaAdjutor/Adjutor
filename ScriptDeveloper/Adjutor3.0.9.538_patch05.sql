
UPDATE  VERSAOSISTEMA 
SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.538 patch 5',
       VERSAOSISTEMA.DATA   = '19.11.2019',
	    VERSAO = '3.0.9.538'
 where VERSAOSISTEMA.CODIGO = 1;
commit work;


DROP INDEX NFSERVICO_SRV_CODIGO_IDX;

CREATE INDEX NFSERVICO_SRV_CODIGO_IDX
ON NFSERVICO COMPUTED BY (REPLACE(SRV_CODIGO,'.',''));

SET TERM ^ ;
EXECUTE BLOCK
AS
DECLARE INDEX_NAME VARCHAR(31);
BEGIN
FOR SELECT RDB$INDEX_NAME FROM RDB$INDICES INTO :INDEX_NAME DO
  EXECUTE STATEMENT 'SET STATISTICS INDEX ' || :INDEX_NAME || ';';
END^
SET TERM ; ^
COMMIT;

INSERT INTO FOR_PROD (FOR_codigo, prd_refer, emp_codigo)
SELECT DISTINCT FOR_CODIGO, prd_refer, emp_codigo FROM ENF_IT01 it
WHERE NOT EXISTS (SELECT * FROM FOR_PROD fr WHERE fr.FOR_CODIGO = it.FOR_CODIGO AND it.PRD_REFER = fr.PRD_REFER );

commit work;

SET TERM ^ ;

create or alter procedure SUMARIZACAO_COMPRA_PRODUTO_REC (
    EMP_CODIGO varchar(3),
    DATA_INICIO date,
    DATA_FIM date)
returns (
    CODIGO varchar(20),
    VALOR decimal(18,4),
	QTDE DECIMAL(18,4),
    UNIDADE varchar(7),
    PRODUTO varchar(100),
    CONTA integer,
    RANQ integer,
    ACUMULADO decimal(18,4),
    PERC_ACUMULADO decimal(18,4),
    SHAREMARKETINDIVIDUAL decimal(18,4),
    SALDO_ESTOQUE decimal(18,4))
as
declare variable N integer;
declare variable VALORTOTAL decimal(18,4);
declare variable PRD_CODIGO varchar(6);
begin
   n = 0;
   acumulado = 0;
   ranq = 0 ;
   perc_acumulado = 0 ;
   ShareMarketIndividual = 0;
    if (:EMP_CODIGO = '') then
    EMP_CODIGO = '999';/* MULTIEMPRESA */
   

	SELECT SUM (ENF_QTDE * COALESCE (ENF_PRECO,0)) AS NF_TOT_NOTA    
	 FROM ENF0001 EF
  INNER JOIN ENF_IT01 E1 ON (EF.ENF_NOTANUMBER = E1.ENF_IT_NOTANUMBER AND ef.FOR_CODIGO = e1.FOR_CODIGO)
  INNER JOIN PRD0000 PR ON (PR.PRD_REFER = E1.PRD_REFER) 
   WHERE ENF_EMISSAO  BETWEEN :DATA_INICIO AND :DATA_FIM
	AND ENF_TOT_NOTA > 0
	AND ENF_CANCELADA IS NULL
	AND (EF.EMP_CODIGO = :EMP_CODIGO or :EMP_CODIGO = '999')
	INTO :valortotal ;


       FOR 
        SELECT SUM (ENF_QTDE) ENF_QTDE ,SUM (ENF_QTDE * COALESCE (ENF_PRECO,0)) AS NF_TOT_NOTA,
              count(*) AS conta, PR.PRD_REFER , PR.PRD_DESCRI as PRODUTOS, prd_und, PR.prd_codigo
         FROM ENF0001 EF
      INNER JOIN ENF_IT01 E1 ON (EF.ENF_NOTANUMBER = E1.ENF_IT_NOTANUMBER AND ef.FOR_CODIGO = e1.FOR_CODIGO)
      INNER JOIN PRD0000 PR ON (PR.PRD_REFER = E1.PRD_REFER) 
       WHERE ENF_EMISSAO  BETWEEN :DATA_INICIO AND :DATA_FIM
        AND ENF_TOT_NOTA > 0
        AND ENF_CANCELADA IS NULL    
        AND (EF.EMP_CODIGO = :EMP_CODIGO or :EMP_CODIGO = '999')
       GROUP BY PR.prd_codigo, PR.PRD_REFER , PR.PRD_DESCRI, prd_und
       ORDER BY 1 desc
        into :QTDE, :valor,:conta,:codigo, :produto, :unidade, :prd_codigo
       do
         begin
           n = n +1;
           ranq = n;
           acumulado = acumulado + valor;
           ShareMarketIndividual = (valor/ valortotal)*100;
           perc_acumulado = (acumulado/ valortotal)*100;
           SELECT COALESCE(SUM(kas_saldo),0)  
           FROM kardex_almox_saldo
           WHERE prd_codigo = :prd_codigo
           AND (EMP_CODIGO = :EMP_CODIGO or :EMP_CODIGO = '999')    
           into :Saldo_Estoque;
           suspend;
         end

end^

SET TERM ; ^

SET TERM ^ ;

create or alter procedure SUMARIZACAO_PRODUTO_RECEITA (
    EMP_CODIGO varchar(3),
    DATA_INICIO date,
    DATA_FIM date)
returns (
    CODIGO varchar(20),
    VALOR decimal(18,4),
    UNIDADE varchar(7),
    PRODUTO varchar(100),
    CONTA integer,
    RANQ integer,
    ACUMULADO decimal(18,4),
    PERC_ACUMULADO decimal(18,4),
    SHAREMARKETINDIVIDUAL decimal(18,4))
as
declare variable N integer;
declare variable VALORTOTAL decimal(18,4);
begin
   n = 0;
   acumulado = 0;
   ranq = 0 ;
   perc_acumulado = 0 ;
    if (:EMP_CODIGO = '') then
    EMP_CODIGO = '999';/* MULTIEMPRESA */

	

	SELECT SUM (T1.NF_QTDE * COALESCE(t1.NF_PRECO,0)) AS NF_TOT_NOTA
	FROM NF_IT01 T1                                       
	JOIN NF0001 T7 ON (T7.NF_NOTANUMBER = T1.NF_IT_NOTANUMER)  
	 JOIN PRD0000 T2 ON (T2.PRD_REFER = T1.PRD_REFER) 
	WHERE T7.NF_VENDA_FATURADA = 'S'
	AND NF_EMISSAO BETWEEN :DATA_INICIO AND :DATA_FIM
	AND T7.NF_CANCELADA <> 'S'
	AND (t7.EMP_CODIGO = :EMP_CODIGO or :EMP_CODIGO = '999')
	INTO :valortotal ;


   FOR 
	SELECT SUM (T1.NF_QTDE * COALESCE(t1.NF_PRECO,0)) AS NF_TOT_NOTA ,
	count(*) AS conta, T2.PRD_REFER , t2.PRD_DESCRI as PRODUTOS, prd_und
	FROM NF_IT01 T1
	JOIN NF0001 T7 ON (T7.NF_NOTANUMBER = T1.NF_IT_NOTANUMER)  
	 JOIN PRD0000 T2 ON (T2.PRD_REFER = T1.PRD_REFER) 
	WHERE T7.NF_VENDA_FATURADA = 'S'
	AND NF_EMISSAO BETWEEN :DATA_INICIO AND :DATA_FIM
	AND T7.NF_CANCELADA <> 'S'
	AND (t7.EMP_CODIGO = :EMP_CODIGO or :EMP_CODIGO = '999')
   GROUP BY T2.PRD_REFER , t2.PRD_DESCRI, prd_und
   order by 1 desc
	  into :valor,:conta, :codigo, :produto , :unidade
   do
	 begin
	   n = n +1;
	   ranq = n;
	   ShareMarketIndividual = (valor/ valortotal)*100;
	   acumulado = acumulado + valor;
	   perc_acumulado = (acumulado/ valortotal)*100;
	   suspend;
	 end

end^

SET TERM ; ^

SET TERM ^ ;
create or alter procedure SUMARIZACAO_FORNECEDOR (
    EMP_CODIGO varchar(3),
    DATA_INICIO date,
    DATA_FIM date)
returns (
    CODIGO varchar(18),
    VALOR decimal(18,4),
    FORNECEDOR varchar(40),
    CONTA integer,
    RANQ integer,
    ACUMULADO decimal(18,4),
    SHAREMARKETINDIVIDUAL decimal(18,4),
    PERC_ACUMULADO decimal(18,4))
as
declare variable N integer;
declare variable VALORTOTAL decimal(18,4);
begin
   n = 0;
   acumulado = 0;
   ranq = 0 ;
   perc_acumulado = 0 ;
    if (:EMP_CODIGO = '') then
    EMP_CODIGO = '999';/* MULTIEMPRESA */

	

   select SUM(ENF_TOT_NOTA) AS valor
   from ENF0001 EF
   INNER JOIN FOR0000 fN ON (FN.FOR_CODIGO = EF.FOR_CODIGO)
   WHERE ENF_EMISSAO  BETWEEN :DATA_INICIO AND :DATA_FIM
	AND ENF_TOT_NOTA > 0
	AND ENF_CANCELADA IS NULL
	AND (EF.EMP_CODIGO = :EMP_CODIGO or :EMP_CODIGO = '999')
	INTO :valortotal ;


   FOR 
	SELECT EF.FOR_CODIGO AS codigo,SUM(ENF_TOT_NOTA) AS valor,count(*) AS conta, FOR_RAZAO AS fornecedor
	FROM ENF0001 EF
	INNER JOIN FOR0000 fN ON (FN.FOR_CODIGO = EF.FOR_CODIGO)
	WHERE ENF_EMISSAO  BETWEEN :DATA_INICIO AND :DATA_FIM
	AND ENF_TOT_NOTA > 0
	AND ENF_CANCELADA IS NULL
	AND (EF.EMP_CODIGO = :EMP_CODIGO or :EMP_CODIGO = '999')
	GROUP BY EF.FOR_CODIGO, FN.FOR_RAZAO
	order by 2 desc
	
	   into :codigo,:valor,:conta, :fornecedor
   do
	 begin
	   n = n +1;
	   ranq = n;
	   acumulado = acumulado + valor;
	   ShareMarketIndividual = (valor/ valortotal)*100;
	   perc_acumulado = (acumulado/ valortotal)*100;
	   suspend;
	 end

end^

SET TERM ; ^

