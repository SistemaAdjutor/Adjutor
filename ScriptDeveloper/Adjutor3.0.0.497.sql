
UPDATE  VERSAOSISTEMA SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.0.497',
       VERSAOSISTEMA.DATA   = CURRENT_DATE
 where VERSAOSISTEMA.CODIGO = 1;
 



SET TERM ^ ;
CREATE OR ALTER PROCEDURE SUMARIZACAO_FORNECEDOR  
(EMP_CODIGO VARCHAR(3), DATA_INICIO DATE, DATA_FIM DATE)
returns (codigo varchar(18),
         valor decimal(18,4),
         fornecedor VARCHAR(40),
         conta integer, 
         ranq integer,
         acumulado decimal(18,4),
         perc_acumulado decimal(18,4))
as
declare variable n integer;
declare variable valortotal decimal(18,4);
begin
   n = 0;
   acumulado = 0;
   ranq = 0 ;
   perc_acumulado = 0 ;
  if (:EMP_CODIGO = '') then
       select SUM(ENF_TOT_NOTA) AS valor
       from ENF0001 EF
	   INNER JOIN FOR0000 fN ON (FN.FOR_CODIGO = EF.FOR_CODIGO)
       WHERE ENF_EMISSAO  BETWEEN :DATA_INICIO AND :DATA_FIM
        AND ENF_TOT_NOTA > 0
        AND ENF_CANCELADA IS NULL
        INTO :valortotal;
   else    /* tem empresa selecionada */
       select SUM(ENF_TOT_NOTA) AS valor
       from ENF0001 EF
	   INNER JOIN FOR0000 fN ON (FN.FOR_CODIGO = EF.FOR_CODIGO)
       WHERE ENF_EMISSAO  BETWEEN :DATA_INICIO AND :DATA_FIM
        AND ENF_TOT_NOTA > 0
        AND ENF_CANCELADA IS NULL
        AND EF.EMP_CODIGO = :EMP_CODIGO
        INTO :valortotal ;

   if (:EMP_CODIGO = '') then
   begin
       FOR 
        SELECT OC.FOR_CODIGO AS codigo,SUM(ENF_TOT_NOTA) AS valor,count(*) AS conta, FOR_RAZAO AS fornecedor
        FROM ENF0001 OC
        INNER JOIN FOR0000 fN ON (FN.FOR_CODIGO = OC.FOR_CODIGO)
        WHERE ENF_EMISSAO  BETWEEN :DATA_INICIO AND :DATA_FIM
        AND ENF_TOT_NOTA > 0
        AND ENF_CANCELADA IS NULL 
        GROUP BY OC.FOR_CODIGO, FN.FOR_RAZAO
        order by 2 desc
        
           into :codigo,:valor,:conta, :fornecedor
       do
         begin
           n = n +1;
           ranq = n;
           acumulado = acumulado + valor;
            perc_acumulado = (acumulado/ valortotal)*100;
           suspend;
         end
      end
    else /* tem empresa */
    begin
       FOR 
        SELECT EF.FOR_CODIGO AS codigo,SUM(ENF_TOT_NOTA) AS valor,count(*) AS conta, FOR_RAZAO AS fornecedor
        FROM ENF0001 EF
        INNER JOIN FOR0000 fN ON (FN.FOR_CODIGO = EF.FOR_CODIGO)
        WHERE ENF_EMISSAO  BETWEEN :DATA_INICIO AND :DATA_FIM
        AND ENF_TOT_NOTA > 0
        AND ENF_CANCELADA IS NULL
        AND EF.EMP_CODIGO =  :EMP_CODIGO
        GROUP BY EF.FOR_CODIGO, FN.FOR_RAZAO
        order by 2 desc
        
           into :codigo,:valor,:conta, :fornecedor
       do
         begin
           n = n +1;
           ranq = n;
           acumulado = acumulado + valor;
            perc_acumulado = (acumulado/ valortotal)*100;
           suspend;
         end
    end
end^

SET TERM ; ^

SET TERM ^ ;
CREATE OR ALTER PROCEDURE SUMARIZACAO_CLIENTE  
(EMP_CODIGO VARCHAR(3), DATA_INICIO DATE, DATA_FIM DATE)
returns (codigo varchar(18),
         valor decimal(18,4),
         cliente VARCHAR(100),
         conta integer, 
         ranq integer,
         acumulado decimal(18,4),
         perc_acumulado decimal(18,4))
as
declare variable n integer;
declare variable valortotal decimal(18,4);
begin
   n = 0;
   acumulado = 0;
   ranq = 0 ;
   perc_acumulado = 0 ;
  if (:EMP_CODIGO = '') then
       select SUM(NF_TOT_NOTA) AS valor
       from NF0001 NF
      JOIN CLI0000 T2 ON (T2.CLI_CODIGO = NF.CLI_CODIGO)
       WHERE NF_EMISSAO  BETWEEN :DATA_INICIO AND :DATA_FIM
        AND NF_TOT_NOTA > 0
        AND NF_CANCELADA <> 'S'
        AND NF_VENDA_FATURADA ='S'
        INTO :valortotal;
   else    /* tem empresa selecionada */
       select SUM(NF_TOT_NOTA) AS valor
       from NF0001 NF
       JOIN CLI0000 T2 ON (T2.CLI_CODIGO = NF.CLI_CODIGO)
       WHERE NF_EMISSAO  BETWEEN :DATA_INICIO AND :DATA_FIM
        AND NF_TOT_NOTA > 0
        AND NF_CANCELADA <> 'S'
        AND NF_VENDA_FATURADA ='S'
        AND NF.EMP_CODIGO = :EMP_CODIGO
        INTO :valortotal ;

   if (:EMP_CODIGO = '') then
   begin
       FOR 
        SELECT NF.CLI_CODIGO AS codigo,SUM(NF_TOT_NOTA) AS valor,count(*) AS conta, CLI_RAZAO AS cliente
        FROM NF0001 NF
        JOIN CLI0000 T2 ON (T2.CLI_CODIGO = NF.CLI_CODIGO)
        WHERE NF_EMISSAO  BETWEEN :DATA_INICIO AND :DATA_FIM
        AND NF_TOT_NOTA > 0
        AND NF_CANCELADA <> 'S'
        AND NF_VENDA_FATURADA ='S'
        GROUP BY NF.CLI_CODIGO, T2.CLI_RAZAO
        order by 2 desc
        
           into :codigo,:valor,:conta, :cliente
       do
         begin
           n = n +1;
           ranq = n;
           acumulado = acumulado + valor;
            perc_acumulado = (acumulado/ valortotal)*100;
           suspend;
         end
      end
    else /* tem empresa */
    begin
       FOR 
        SELECT NF.CLI_CODIGO AS codigo,SUM(NF_TOT_NOTA) AS valor,count(*) AS conta, CLI_RAZAO AS cliente
        FROM NF0001 NF
        JOIN CLI0000 T2 ON (T2.CLI_CODIGO = NF.CLI_CODIGO)
        WHERE NF_EMISSAO  BETWEEN :DATA_INICIO AND :DATA_FIM
        AND NF_TOT_NOTA > 0
        AND NF_CANCELADA <> 'S'
        AND NF_VENDA_FATURADA ='S'
        AND NF.EMP_CODIGO =  :EMP_CODIGO
        GROUP BY NF.CLI_CODIGO, t2.CLI_RAZAO
        order by 2 desc
        
           into :codigo,:valor,:conta, :cliente
       do
         begin
           n = n +1;
           ranq = n;
           acumulado = acumulado + valor;
            perc_acumulado = (acumulado/ valortotal)*100;
           suspend;
         end
    end
end^
SET TERM ; ^



SET TERM ^ ;
CREATE OR ALTER PROCEDURE SUMARIZACAO_PRODUTO_RECEITA
(EMP_CODIGO VARCHAR(3), DATA_INICIO DATE, DATA_FIM DATE)
returns (codigo varchar(18),
         valor decimal(18,4),
         produto VARCHAR(100),
         conta integer, 
         ranq integer,
         acumulado decimal(18,4),
         perc_acumulado decimal(18,4))
as
declare variable n integer;
declare variable valortotal decimal(18,4);
begin
   n = 0;
   acumulado = 0;
   ranq = 0 ;
   perc_acumulado = 0 ;
  if (:EMP_CODIGO = '') then
        SELECT SUM (T1.NF_QTDE * COALESCE(t1.NF_PRECO,0)) AS NF_TOT_NOTA
        FROM NF_IT01 T1                                       
        JOIN NF0001 T7 ON (T7.NF_NOTANUMBER = T1.NF_IT_NOTANUMER)  
         JOIN PRD0000 T2 ON (T2.PRD_REFER = T1.PRD_REFER) 
        WHERE T7.NF_VENDA_FATURADA = 'S'
        AND NF_EMISSAO BETWEEN :DATA_INICIO AND :DATA_FIM
        AND T7.NF_CANCELADA <> 'S'
        INTO :valortotal;
   else    /* tem empresa selecionada */
        SELECT SUM (T1.NF_QTDE * COALESCE(t1.NF_PRECO,0)) AS NF_TOT_NOTA
        FROM NF_IT01 T1                                       
        JOIN NF0001 T7 ON (T7.NF_NOTANUMBER = T1.NF_IT_NOTANUMER)  
         JOIN PRD0000 T2 ON (T2.PRD_REFER = T1.PRD_REFER) 
        WHERE T7.NF_VENDA_FATURADA = 'S'
        AND NF_EMISSAO BETWEEN :DATA_INICIO AND :DATA_FIM
        AND T7.NF_CANCELADA <> 'S'
        AND t7.EMP_CODIGO = :EMP_CODIGO
        INTO :valortotal ;

   if (:EMP_CODIGO = '') then
   begin
       FOR 
        SELECT SUM (T1.NF_QTDE * COALESCE(t1.NF_PRECO,0)) AS NF_TOT_NOTA ,
        count(*) AS conta, T2.PRD_REFER , t2.PRD_DESCRI as PRODUTOS
        FROM NF_IT01 T1
        JOIN NF0001 T7 ON (T7.NF_NOTANUMBER = T1.NF_IT_NOTANUMER)  
         JOIN PRD0000 T2 ON (T2.PRD_REFER = T1.PRD_REFER) 
        WHERE T7.NF_VENDA_FATURADA = 'S'
        AND NF_EMISSAO BETWEEN :DATA_INICIO AND :DATA_FIM
        AND T7.NF_CANCELADA <> 'S'
       GROUP BY T2.PRD_REFER , t2.PRD_DESCRI
        order by 1 desc
        into :valor,:conta,:codigo, :produto
       do
         begin
           n = n +1;
           ranq = n;
           acumulado = acumulado + valor;
            perc_acumulado = (acumulado/ valortotal)*100;
           suspend;
         end
      end
    else /* tem empresa */
    begin
       FOR 
        SELECT SUM (T1.NF_QTDE * COALESCE(t1.NF_PRECO,0)) AS NF_TOT_NOTA ,
        count(*) AS conta, T2.PRD_REFER , t2.PRD_DESCRI as PRODUTOS
        FROM NF_IT01 T1
        JOIN NF0001 T7 ON (T7.NF_NOTANUMBER = T1.NF_IT_NOTANUMER)  
         JOIN PRD0000 T2 ON (T2.PRD_REFER = T1.PRD_REFER) 
        WHERE T7.NF_VENDA_FATURADA = 'S'
        AND NF_EMISSAO BETWEEN :DATA_INICIO AND :DATA_FIM
        AND T7.NF_CANCELADA <> 'S'
        AND t7.EMP_CODIGO =  :EMP_CODIGO
       GROUP BY T2.PRD_REFER , t2.PRD_DESCRI
       order by 1 desc
          into :valor,:conta, :codigo, :produto
       do
         begin
           n = n +1;
           ranq = n;
           acumulado = acumulado + valor;
            perc_acumulado = (acumulado/ valortotal)*100;
           suspend;
         end
    end
end^
SET TERM ; ^

SET TERM ^ ;
CREATE OR ALTER PROCEDURE SUMARIZACAO_PRODUTO_UNIDADES
(EMP_CODIGO VARCHAR(3), DATA_INICIO DATE, DATA_FIM DATE)
returns (codigo varchar(18),
         qtde decimal(18,4),
		 unidade varchar(7),
         produto VARCHAR(100),
         conta integer, 
         ranq integer,
         acumulado decimal(18,4),
         perc_acumulado decimal(18,4))
as
declare variable n integer;
declare variable valortotal decimal(18,4);
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
        INTO :valortotal;
   else    /* tem empresa selecionada */
        SELECT SUM (T1.NF_QTDE ) AS QTDE
        FROM NF_IT01 T1                                       
        JOIN NF0001 T7 ON (T7.NF_NOTANUMBER = T1.NF_IT_NOTANUMER)  
         JOIN PRD0000 T2 ON (T2.PRD_REFER = T1.PRD_REFER) 
        WHERE T7.NF_VENDA_FATURADA = 'S'
        AND NF_EMISSAO BETWEEN :DATA_INICIO AND :DATA_FIM
        AND T7.NF_CANCELADA <> 'S'
        AND t7.EMP_CODIGO = :EMP_CODIGO
        INTO :valortotal ;

   if (:EMP_CODIGO = '') then
   begin
       FOR 
        SELECT SUM (T1.NF_QTDE ) AS QTDE ,
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
           acumulado = acumulado + qtde;
            perc_acumulado = (acumulado/ valortotal)*100;
           suspend;
         end
      end
    else /* tem empresa */
    begin
       FOR 
        SELECT SUM (T1.NF_QTDE) AS QTDE ,
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
           acumulado = acumulado + qtde;
            perc_acumulado = (acumulado/ valortotal)*100;
           suspend;
         end
    end
end^
SET TERM ; ^

SET TERM ^ ;
CREATE OR ALTER PROCEDURE SUMARIZACAO_PRODUTO_CUSTO_TOTAL
(EMP_CODIGO VARCHAR(3), DATA_INICIO DATE, DATA_FIM DATE)
returns (codigo varchar(18),
         valor decimal(18,4),
         produto VARCHAR(100),
         conta integer, 
         ranq integer,
         acumulado decimal(18,4),
         perc_acumulado decimal(18,4))
as
declare variable n integer;
declare variable valortotal decimal(18,4);
begin
   n = 0;
   acumulado = 0;
   ranq = 0 ;
   perc_acumulado = 0 ;
  if (:EMP_CODIGO = '') then
        SELECT SUM (T1.NF_CUSTO) AS CUSTO
        FROM NF_IT01 T1                                       
        JOIN NF0001 T7 ON (T7.NF_NOTANUMBER = T1.NF_IT_NOTANUMER)  
         JOIN PRD0000 T2 ON (T2.PRD_REFER = T1.PRD_REFER) 
        WHERE T7.NF_VENDA_FATURADA = 'S'
        AND NF_EMISSAO BETWEEN :DATA_INICIO AND :DATA_FIM
        AND T7.NF_CANCELADA <> 'S'
        INTO :valortotal;
   else    /* tem empresa selecionada */
        SELECT SUM (T1.NF_CUSTO ) AS CUSTO
        FROM NF_IT01 T1                                       
        JOIN NF0001 T7 ON (T7.NF_NOTANUMBER = T1.NF_IT_NOTANUMER)  
         JOIN PRD0000 T2 ON (T2.PRD_REFER = T1.PRD_REFER) 
        WHERE T7.NF_VENDA_FATURADA = 'S'
        AND NF_EMISSAO BETWEEN :DATA_INICIO AND :DATA_FIM
        AND T7.NF_CANCELADA <> 'S'
        AND t7.EMP_CODIGO = :EMP_CODIGO
        INTO :valortotal ;

   if (:EMP_CODIGO = '') then
   begin
       FOR 
        SELECT SUM (T1.NF_CUSTO ) AS CUSTO ,
        count(*) AS conta, T2.PRD_REFER , t2.PRD_DESCRI as PRODUTOS
        FROM NF_IT01 T1
        JOIN NF0001 T7 ON (T7.NF_NOTANUMBER = T1.NF_IT_NOTANUMER)  
         JOIN PRD0000 T2 ON (T2.PRD_REFER = T1.PRD_REFER) 
        WHERE T7.NF_VENDA_FATURADA = 'S'
        AND NF_EMISSAO BETWEEN :DATA_INICIO AND :DATA_FIM
        AND T7.NF_CANCELADA <> 'S'
       GROUP BY T2.PRD_REFER , t2.PRD_DESCRI
        order by 1 desc
        into :valor,:conta,:codigo, :produto
       do
         begin
           n = n +1;
           ranq = n;
           acumulado = acumulado + valor;
            perc_acumulado = (acumulado/ valortotal)*100;
           suspend;
         end
      end
    else /* tem empresa */
    begin
       FOR 
        SELECT SUM (T1.NF_CUSTO) AS CUSTO ,
        count(*) AS conta, T2.PRD_REFER , t2.PRD_DESCRI as PRODUTOS
        FROM NF_IT01 T1
        JOIN NF0001 T7 ON (T7.NF_NOTANUMBER = T1.NF_IT_NOTANUMER)  
         JOIN PRD0000 T2 ON (T2.PRD_REFER = T1.PRD_REFER) 
        WHERE T7.NF_VENDA_FATURADA = 'S'
        AND NF_EMISSAO BETWEEN :DATA_INICIO AND :DATA_FIM
        AND T7.NF_CANCELADA <> 'S'
        AND t7.EMP_CODIGO =  :EMP_CODIGO
       GROUP BY T2.PRD_REFER , t2.PRD_DESCRI
       order by 1 desc
          into :valor,:conta, :codigo, :produto
       do
         begin
           n = n +1;
           ranq = n;
           acumulado = acumulado + valor;
            perc_acumulado = (acumulado/ valortotal)*100;
           suspend;
         end
    end
end^
SET TERM ; ^
