
UPDATE  VERSAOSISTEMA SET 
		VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.0.498',
		 VERSAO = '3.0.9.498',
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
		 ShareMarketIndividual decimal(18,4),
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
		   ShareMarketIndividual = (valor/ valortotal)*100;
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
		   ShareMarketIndividual = (valor/ valortotal)*100;
           perc_acumulado = (acumulado/ valortotal)*100;
           suspend;
         end
    end
end
^

SET TERM ; ^

COMMENT ON PROCEDURE SUMARIZACAO_FORNECEDOR IS 'CURVA ABC FORNECEDOR EM VOLUME DE COMPRAS ';

SET TERM ^ ;
CREATE OR ALTER PROCEDURE SUMARIZACAO_CLIENTE  
(EMP_CODIGO VARCHAR(3), DATA_INICIO DATE, DATA_FIM DATE, REGIME integer)
returns (codigo varchar(18),
         valor decimal(18,4),
         cliente VARCHAR(100),
         conta integer, 
         ranq integer,
         acumulado decimal(18,4),
         ShareMarketIndividual decimal(18,4),
         perc_acumulado decimal(18,4),
         mesesCiclo integer ) /* Ciclo Total de Vida do Cliente  */
as
declare variable n integer;
declare variable valortotal decimal(18,4);
begin
   n = 0;
   acumulado = 0;
   ranq = 0 ;
   perc_acumulado = 0 ;

 if (:REGIME = 0 ) then      /* competencia - EMISSÃO*/
      begin
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
            SELECT NF.CLI_CODIGO AS codigo,SUM(NF_TOT_NOTA) AS valor,count(*) AS conta, CLI_RAZAO AS cliente,
             DATEDIFF( MONTH, MIN(NF_EMISSAO),MAX(NF_EMISSAO))  as mesesCiclo
            FROM NF0001 NF
            JOIN CLI0000 T2 ON (T2.CLI_CODIGO = NF.CLI_CODIGO)
            WHERE NF_EMISSAO  BETWEEN :DATA_INICIO AND :DATA_FIM
            AND NF_TOT_NOTA > 0
            AND NF_CANCELADA <> 'S'
            AND NF_VENDA_FATURADA ='S'
            GROUP BY NF.CLI_CODIGO, T2.CLI_RAZAO
            order by 2 desc
            
               into :codigo,:valor,:conta, :cliente, :mesesCiclo
           do
             begin
               if (:mesesCiclo= 0) then mesesCiclo = 1 ;
               n = n +1;
               ranq = n;
               ShareMarketIndividual = (valor/ valortotal)*100;
               acumulado = acumulado + valor;
               perc_acumulado = (acumulado/ valortotal)*100;
               suspend;
             end
          end
        else /* tem empresa */
        begin
           FOR 
            SELECT NF.CLI_CODIGO AS codigo,SUM(NF_TOT_NOTA) AS valor,count(*) AS conta, CLI_RAZAO AS cliente,
             DATEDIFF( MONTH, MIN(NF_EMISSAO),MAX(NF_EMISSAO)) as mesesCiclo
            FROM NF0001 NF
            JOIN CLI0000 T2 ON (T2.CLI_CODIGO = NF.CLI_CODIGO)
            WHERE NF_EMISSAO  BETWEEN :DATA_INICIO AND :DATA_FIM
            AND NF_TOT_NOTA > 0
            AND NF_CANCELADA <> 'S'
            AND NF_VENDA_FATURADA ='S'
            AND NF.EMP_CODIGO =  :EMP_CODIGO
            GROUP BY NF.CLI_CODIGO, t2.CLI_RAZAO
            order by 2 desc
            
               into :codigo,:valor,:conta, :cliente , :mesesCiclo
           do
             begin
               if (:mesesCiclo= 0) then mesesCiclo = 1;
               n = n +1;
               ranq = n;
               ShareMarketIndividual = (valor/ valortotal)*100;
               acumulado = acumulado + valor;
                perc_acumulado = (acumulado/ valortotal)*100;
               suspend;
             end
        end
  end
  else if (:regime = 1) then  /*caixa - VENCIMENTO*/
  begin
   if (:EMP_CODIGO = '') then
        SELECT SUM(COALESCE(FPC_VLPAGO,FPC_VLPARC )) VALOR
        FROM FAT_PC01 FT                                                              
        left join CLI0000 CL on (CL.CLI_CODIGO = fT.CLI_CODIGO)                       
        WHERE FPC_EXCLUSAO <> 'S'
        AND FPC_VENCTO BETWEEN :DATA_INICIO AND :DATA_FIM
        INTO :valortotal;
   else
        SELECT SUM(COALESCE(FPC_VLPAGO,FPC_VLPARC )) VALOR
        FROM FAT_PC01 FT                                                              
        left join CLI0000 CL on (CL.CLI_CODIGO = fT.CLI_CODIGO)                       
        WHERE FPC_EXCLUSAO <> 'S'
        AND FT.EMP_CODIGO = :EMP_CODIGO
        AND FPC_VENCTO BETWEEN :DATA_INICIO AND :DATA_FIM
        INTO :valortotal;
    if (:EMP_CODIGO = '') then
           for
            SELECT cl.CLI_CODIGO, SUM(COALESCE(ft.FPC_VLPAGO,ft.FPC_VLPARC )) VALOR,count(*) AS conta, CLI_RAZAO AS cliente,
                     DATEDIFF( MONTH, MIN(FPC_VENCTO),MAX(FPC_VENCTO))  as mesesCiclo
            FROM FAT_PC01 FT
            left join CLI0000 CL on (CL.CLI_CODIGO = fT.CLI_CODIGO)
            WHERE FPC_EXCLUSAO <> 'S'
            AND FPC_VENCTO BETWEEN :DATA_INICIO AND :DATA_FIM
            GROUP BY cl.CLI_CODIGO, cl.CLI_RAZAO
            order by 2 desc
            into :codigo,:valor,:conta, :cliente, :mesesCiclo
           do
             begin
               n = n +1;
               ranq = n;
               ShareMarketIndividual = (valor/ valortotal)*100;
               acumulado = acumulado + valor;
                perc_acumulado = (acumulado/ valortotal)*100;
               suspend;
             end
    else
         for
        SELECT cl.CLI_CODIGO, SUM(COALESCE(ft.FPC_VLPAGO,ft.FPC_VLPARC )) VALOR,count(*) AS conta, CLI_RAZAO AS cliente,
                 DATEDIFF( MONTH, MIN(FPC_VENCTO),MAX(FPC_VENCTO))  as mesesCiclo
        FROM FAT_PC01 FT
        left join CLI0000 CL on (CL.CLI_CODIGO = fT.CLI_CODIGO)
        WHERE FPC_EXCLUSAO <> 'S'
        AND FT.EMP_CODIGO = :EMP_CODIGO
        AND FPC_VENCTO BETWEEN :DATA_INICIO AND :DATA_FIM
        GROUP BY cl.CLI_CODIGO, cl.CLI_RAZAO
        order by 2 desc
        into :codigo,:valor,:conta, :cliente, :mesesCiclo
       do
         begin
           n = n +1;
           ranq = n;
           ShareMarketIndividual = (valor/ valortotal)*100;
           acumulado = acumulado + valor;
            perc_acumulado = (acumulado/ valortotal)*100;
           suspend;
         end
  end    /* fim if caixa */
  else if (:regime = 2) then   /*REALIZADO - PAGAMENTO*/
  begin
   if (:EMP_CODIGO = '') then
        SELECT SUM(FPC_VLPAGO ) VALOR
        FROM FAT_PC01 FT                                                              
        left join CLI0000 CL on (CL.CLI_CODIGO = fT.CLI_CODIGO)                       
        WHERE FPC_EXCLUSAO <> 'S'
        AND FPC_PAGTO BETWEEN :DATA_INICIO AND :DATA_FIM
        INTO :valortotal;
   else
        SELECT SUM(FPC_VLPAGO) VALOR
        FROM FAT_PC01 FT                                                              
        left join CLI0000 CL on (CL.CLI_CODIGO = fT.CLI_CODIGO)                       
        WHERE FPC_EXCLUSAO <> 'S'
        AND FT.EMP_CODIGO = :EMP_CODIGO
        AND FPC_PAGTO BETWEEN :DATA_INICIO AND :DATA_FIM
        INTO :valortotal;
  if (:EMP_CODIGO = '') then
           for
            SELECT cl.CLI_CODIGO, SUM(COALESCE(ft.FPC_VLPAGO,ft.FPC_VLPARC )) VALOR,count(*) AS conta, CLI_RAZAO AS cliente,
                     DATEDIFF( MONTH, MIN(FPC_PAGTO),MAX(FPC_PAGTO))  as mesesCiclo
            FROM FAT_PC01 FT
            left join CLI0000 CL on (CL.CLI_CODIGO = fT.CLI_CODIGO)
            WHERE FPC_EXCLUSAO <> 'S'
            AND FPC_PAGTO BETWEEN :DATA_INICIO AND :DATA_FIM
            GROUP BY cl.CLI_CODIGO, cl.CLI_RAZAO
            order by 2 desc
            into :codigo,:valor,:conta, :cliente, :mesesCiclo
           do
             begin
               n = n +1;
               ranq = n;
               ShareMarketIndividual = (valor/ valortotal)*100;
               acumulado = acumulado + valor;
                perc_acumulado = (acumulado/ valortotal)*100;
               suspend;
             end
    else
         for
        SELECT cl.CLI_CODIGO, SUM(COALESCE(ft.FPC_VLPAGO,ft.FPC_VLPARC )) VALOR,count(*) AS conta, CLI_RAZAO AS cliente,
                 DATEDIFF( MONTH, MIN(FPC_PAGTO),MAX(FPC_PAGTO))  as mesesCiclo
        FROM FAT_PC01 FT
        left join CLI0000 CL on (CL.CLI_CODIGO = fT.CLI_CODIGO)
        WHERE FPC_EXCLUSAO <> 'S'
        AND FT.EMP_CODIGO = :EMP_CODIGO
        AND FPC_PAGTO BETWEEN :DATA_INICIO AND :DATA_FIM
        AND FT.EMP_CODIGO = :EMP_CODIGO
        GROUP BY cl.CLI_CODIGO, cl.CLI_RAZAO
        order by 2 desc
        into :codigo,:valor,:conta, :cliente, :mesesCiclo
       do
         begin
           n = n +1;
           ranq = n;
           ShareMarketIndividual = (valor/ valortotal)*100;
           acumulado = acumulado + valor;
            perc_acumulado = (acumulado/ valortotal)*100;
           suspend;
         end
  end
end
^
SET TERM ; ^


COMMENT ON PROCEDURE SUMARIZACAO_CLIENTE IS 'CURVA ABC CLIENTE VOLUME DE VENDAS';


SET TERM ^ ;
CREATE OR ALTER PROCEDURE SUMARIZACAO_PRODUTO_RECEITA
(EMP_CODIGO VARCHAR(3), DATA_INICIO DATE, DATA_FIM DATE)
returns (codigo varchar(20),
         valor decimal(18,4),
         UNIDADE VARCHAR(7),
         produto VARCHAR(100),
         conta integer, 
         ranq integer,
         acumulado decimal(18,4),
         perc_acumulado decimal(18,4),
         ShareMarketIndividual decimal(18,4))
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
        count(*) AS conta, T2.PRD_REFER , t2.PRD_DESCRI as PRODUTOS, prd_und
        FROM NF_IT01 T1
        JOIN NF0001 T7 ON (T7.NF_NOTANUMBER = T1.NF_IT_NOTANUMER)  
         JOIN PRD0000 T2 ON (T2.PRD_REFER = T1.PRD_REFER) 
        WHERE T7.NF_VENDA_FATURADA = 'S'
        AND NF_EMISSAO BETWEEN :DATA_INICIO AND :DATA_FIM
        AND T7.NF_CANCELADA <> 'S'
       GROUP BY T2.PRD_REFER , t2.PRD_DESCRI, prd_und
        order by 1 desc
        into :valor,:conta,:codigo, :produto, :unidade
       do
         begin
           n = n +1;
           ranq = n;
           ShareMarketIndividual = (valor/ valortotal)*100;
           acumulado = acumulado + valor;
           perc_acumulado = (acumulado/ valortotal)*100;
           suspend;
         end
      end
    else /* tem empresa */
    begin
       FOR 
        SELECT SUM (T1.NF_QTDE * COALESCE(t1.NF_PRECO,0)) AS NF_TOT_NOTA ,
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
    end
end
^
SET TERM ; ^

COMMENT ON PROCEDURE SUMARIZACAO_PRODUTO_RECEITA IS 'CURVA ABC PRODUTO POR VOLUME DE VENDAS';
SET TERM ^ ;
CREATE OR ALTER PROCEDURE SUMARIZACAO_PRODUTO_UNIDADES (EMP_CODIGO VARCHAR(3), DATA_INICIO DATE, DATA_FIM DATE)
RETURNS (
    CODIGO VARCHAR(20),
    QTDE DECIMAL(18,4),
    UNIDADE VARCHAR(7),
    PRODUTO VARCHAR(100),
    CONTA INTEGER,
    RANQ INTEGER,
    ACUMULADO DECIMAL(18,4),
    PERC_ACUMULADO DECIMAL (18,4),
    ShareMarketIndividual decimal(18,4)
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
        SELECT SUM (coalesce(T1.NF_QTDE,0)) AS QTDE ,
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
end
^
SET TERM ; ^

COMMENT ON PROCEDURE SUMARIZACAO_PRODUTO_UNIDADES IS 'CURVA ABC PRODUTO POR UNIDADES VENDIDAS';

SET TERM ^ ;
CREATE OR ALTER PROCEDURE SUMARIZACAO_PRODUTO_CUSTO_TOTAL
(EMP_CODIGO VARCHAR(3), DATA_INICIO DATE, DATA_FIM DATE)
returns (codigo varchar(20),
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
end
^
SET TERM ; ^

COMMENT ON PROCEDURE SUMARIZACAO_PRODUTO_CUSTO_TOTAL IS 'CURVA ABC PRODUTO POR CUSTO TOTAL (NF_CUSTO)';

SET TERM ^ ;
CREATE OR ALTER PROCEDURE SUMARIZACAO_VENDEDOR
(EMP_CODIGO VARCHAR(3), DATA_INICIO DATE, DATA_FIM DATE, REGIME integer)
returns (codigo varchar(18),
         valor decimal(18,4),
         vendedor_razao VARCHAR(40),
         vendedor_nome  varchar(35),
         conta integer, 
         ranq integer,
         acumulado decimal(18,4),
         perc_acumulado decimal(18,4),
         ShareMarketIndividual decimal(18,4))
as
declare variable n integer;
declare variable valortotal decimal(18,4);
begin
   n = 0;
   acumulado = 0;
   ranq = 0 ;
   perc_acumulado = 0 ;
  if (:REGIME = 0 ) then      /* competencia - EMISSÃO*/
  begin
   /* calcula o total geral */
      if (:EMP_CODIGO = '') then
            SELECT SUM (T7.NF_TOT_NOTA) AS valor
            FROM NF0001 T7
            LEFT join REP0000 t3 on (t3.REP_CODIGO = t7.REP_CODIGO)
            WHERE T7.NF_VENDA_FATURADA = 'S'
            AND NF_EMISSAO BETWEEN :DATA_INICIO AND :DATA_FIM
            AND COALESCE(t7.NF_CANCELADA,'N') <> 'S'
            INTO :valortotal;
       else    /* tem empresa selecionada */
            SELECT SUM (T7.NF_TOT_NOTA ) AS valor
            FROM NF0001 T7 
            left join REP0000 t3 on (t3.REP_CODIGO = t7.REP_CODIGO)
            WHERE T7.NF_VENDA_FATURADA = 'S'
            AND NF_EMISSAO BETWEEN :DATA_INICIO AND :DATA_FIM
            AND  COALESCE(T7.NF_CANCELADA,'N') <> 'S'
            AND t7.EMP_CODIGO = :EMP_CODIGO
            INTO :valortotal ;
     /* calculo o total para cada vendedor */
    if (:EMP_CODIGO = '') then
   begin
       FOR 
        SELECT SUM (T7.NF_TOT_NOTA ) AS valor ,
        count(*) AS conta,  T3.REP_CODIGO , t3.REP_RAZAO as vendedor_razao,
        t3.rep_nome as vendedor_nome
        FROM NF0001 T7
        LEFT join REP0000 t3 on (t3.REP_CODIGO = t7.REP_CODIGO)
        WHERE T7.NF_VENDA_FATURADA = 'S'
        AND NF_EMISSAO BETWEEN :DATA_INICIO AND :DATA_FIM
        AND COALESCE(T7.NF_CANCELADA,'N') <> 'S'
       GROUP BY  T3.REP_CODIGO ,  t3.REP_RAZAO, t3.rep_nome
        order by 1 desc
        into :valor,:conta, :codigo, :vendedor_razao, :vendedor_nome
       do
         begin
           n = n +1;
           ranq = n;
           acumulado = acumulado + valor;
           ShareMarketIndividual = (valor/ valortotal)*100;
            perc_acumulado = (acumulado/ valortotal)*100;
           suspend;
         end
      end
    else /* tem empresa */
    begin
       FOR 
        SELECT SUM (T7.NF_TOT_NOTA) AS valor ,
        count(*) AS conta, T3.REP_CODIGO , t3.REP_RAZAO as vendedor_razao,
        t3.rep_nome as vendedor_nome
        FROM NF0001 T7
        LEFT join REP0000 t3 on (t3.REP_CODIGO = t7.REP_CODIGO)
        WHERE T7.NF_VENDA_FATURADA = 'S'
        AND NF_EMISSAO BETWEEN :DATA_INICIO AND :DATA_FIM
        AND COALESCE(T7.NF_CANCELADA,'N') <> 'S'
        AND t7.EMP_CODIGO =  :EMP_CODIGO
       GROUP BY  T3.REP_CODIGO ,  t3.REP_RAZAO, t3.rep_nome
       order by 1 desc
          into :valor,:conta, :codigo, :vendedor_razao, :vendedor_nome
       do
         begin
           n = n +1;
           ranq = n;
           acumulado = acumulado + valor;
           ShareMarketIndividual = (valor/ valortotal)*100;
            perc_acumulado = (acumulado/ valortotal)*100;
           suspend;
         end
    end /* fim do tem por empresa */
   end
   else if (:regime = 1) then  /*caixa - VENCIMENTO*/
   begin
         /* total geral do vendedor em caixa  */
       if (:EMP_CODIGO = '') then
            SELECT SUM(COALESCE(FPC_VLPAGO,FPC_VLPARC )) VALOR
            FROM FAT_PC01 F1                                                              
            left join REP0000 t3 on (t3.REP_CODIGO = f1.REP_CODIGO)                       
            WHERE FPC_EXCLUSAO <> 'S'
            AND FPC_VENCTO BETWEEN :DATA_INICIO AND :DATA_FIM
            INTO :valortotal;
       else
            SELECT SUM(COALESCE(FPC_VLPAGO,FPC_VLPARC )) VALOR
            FROM FAT_PC01 F1                                                              
            left join REP0000 t3 on (t3.REP_CODIGO = f1.REP_CODIGO)                       
            WHERE FPC_EXCLUSAO <> 'S'
            AND FPC_VENCTO BETWEEN :DATA_INICIO AND :DATA_FIM
            AND F1.EMP_CODIGO = :EMP_CODIGO
            INTO :valortotal;
         /* total por vendedor por caixa */
      if (:EMP_CODIGO = '') then
         for
           SELECT SUM(COALESCE(f1.FPC_VLPAGO,f1.FPC_VLPARC )) VALOR,
             count(*) AS conta,  T3.REP_CODIGO , t3.REP_RAZAO as vendedor_razao,
             t3.rep_nome as vendedor_nome
           FROM FAT_PC01 F1
           left join REP0000 t3 on (t3.REP_CODIGO = f1.REP_CODIGO)
           WHERE F1.FPC_EXCLUSAO <> 'S'
           AND FPC_VENCTO BETWEEN :DATA_INICIO AND :DATA_FIM
           GROUP BY  T3.REP_CODIGO ,  t3.REP_RAZAO, t3.rep_nome
            order by 1 desc
             into :valor, :conta, :codigo, :vendedor_razao, :vendedor_nome
           do
             begin
               n = n +1;
               ranq = n;
               acumulado = acumulado + valor;
               ShareMarketIndividual = (valor/ valortotal)*100;
                perc_acumulado = (acumulado/ valortotal)*100;
               suspend;
             end
      else
        for
         SELECT SUM(COALESCE(f1.FPC_VLPAGO,f1.FPC_VLPARC )) VALOR,
             count(*) AS conta,  T3.REP_CODIGO , t3.REP_RAZAO as vendedor_razao,
             t3.rep_nome as vendedor_nome
           FROM FAT_PC01 F1
           left join REP0000 t3 on (t3.REP_CODIGO = f1.REP_CODIGO)
           WHERE FPC_EXCLUSAO <> 'S'
           AND f1.EMP_CODIGO =  :EMP_CODIGO
           AND FPC_VENCTO BETWEEN :DATA_INICIO AND :DATA_FIM
           GROUP BY  T3.REP_CODIGO ,  t3.REP_RAZAO, t3.rep_nome           
           order by 1 desc
            into :valor,:conta, :codigo, :vendedor_razao, :vendedor_nome
           do
             begin
               n = n +1;
               ranq = n;
               acumulado = acumulado + valor;
               ShareMarketIndividual = (valor/ valortotal)*100;
                perc_acumulado = (acumulado/ valortotal)*100;
               suspend;
             end

   end  /* fim do vencimento (caixa) */
   else if (:regime = 2) then  /*REALIZADO - PAGAMENTO*/
   begin
       /* total geral do vendedor em caixa  */
       if (:EMP_CODIGO = '') then
            SELECT SUM(COALESCE(FPC_VLPAGO,FPC_VLPARC )) VALOR
            FROM FAT_PC01 F1                                                              
            left join REP0000 t3 on (t3.REP_CODIGO = f1.REP_CODIGO)                       
            WHERE FPC_EXCLUSAO <> 'S'
            AND FPC_PAGTO BETWEEN :DATA_INICIO AND :DATA_FIM
            INTO :valortotal;
       else
            SELECT SUM(COALESCE(FPC_VLPAGO,FPC_VLPARC )) VALOR
            FROM FAT_PC01 F1                                                              
            left join REP0000 t3 on (t3.REP_CODIGO = f1.REP_CODIGO)                       
            WHERE FPC_EXCLUSAO <> 'S'
            AND FPC_PAGTO BETWEEN :DATA_INICIO AND :DATA_FIM
            AND F1.EMP_CODIGO = :EMP_CODIGO
            INTO :valortotal;
         /* total por vendedor por caixa */
      if (:EMP_CODIGO = '') then
       for
           SELECT SUM(COALESCE(f1.FPC_VLPAGO,f1.FPC_VLPARC )) VALOR,
             count(*) AS conta,  T3.REP_CODIGO , t3.REP_RAZAO as vendedor_razao,
             t3.rep_nome as vendedor_nome
           FROM FAT_PC01 F1
           left join REP0000 t3 on (t3.REP_CODIGO = f1.REP_CODIGO)
           WHERE F1.FPC_EXCLUSAO <> 'S'
           AND FPC_PAGTO BETWEEN :DATA_INICIO AND :DATA_FIM
           GROUP BY  T3.REP_CODIGO ,  t3.REP_RAZAO, t3.rep_nome
            order by 1 desc
             into :valor,:conta, :codigo, :vendedor_razao, :vendedor_nome
           do
             begin
               n = n +1;
               ranq = n;
               acumulado = acumulado + valor;
               ShareMarketIndividual = (valor/ valortotal)*100;
                perc_acumulado = (acumulado/ valortotal)*100;
               suspend;
             end
      else
       for
         SELECT SUM(COALESCE(f1.FPC_VLPAGO,f1.FPC_VLPARC )) VALOR,
             count(*) AS conta,  T3.REP_CODIGO , t3.REP_RAZAO as vendedor_razao,
             t3.rep_nome as vendedor_nome
           FROM FAT_PC01 F1
           left join REP0000 t3 on (t3.REP_CODIGO = f1.REP_CODIGO)
           WHERE FPC_EXCLUSAO <> 'S'
           AND f1.EMP_CODIGO =  :EMP_CODIGO
           AND FPC_PAGTO BETWEEN :DATA_INICIO AND :DATA_FIM           
           GROUP BY  T3.REP_CODIGO ,  t3.REP_RAZAO, t3.rep_nome           
           order by 1 desc
            into :valor,:conta, :codigo, :vendedor_razao, :vendedor_nome
           do
             begin
               n = n +1;
               ranq = n;
               acumulado = acumulado + valor;
               ShareMarketIndividual = (valor/ valortotal)*100;
                perc_acumulado = (acumulado/ valortotal)*100;
               suspend;
             end
   
   end
end
^
SET TERM ; ^

COMMENT ON PROCEDURE SUMARIZACAO_VENDEDOR IS 'CURVA ABC DE VENDEDOR';

SET TERM ^ ;
CREATE OR ALTER PROCEDURE SUMARIZACAO_COMPRA_PRODUTO_REC
(EMP_CODIGO VARCHAR(3), DATA_INICIO DATE, DATA_FIM DATE)
returns (codigo varchar(20),
         valor decimal(18,4),
         UNIDADE VARCHAR(7),
         produto VARCHAR(100),
         conta integer, 
         ranq integer,
         acumulado decimal(18,4),
         perc_acumulado decimal(18,4), 
         ShareMarketIndividual decimal(18,4),
         Saldo_Estoque decimal(18,4)
         )
as
declare variable n integer;
declare variable valortotal decimal(18,4);
declare variable prd_codigo varchar(6);
begin
   n = 0;
   acumulado = 0;
   ranq = 0 ;
   perc_acumulado = 0 ;
   ShareMarketIndividual = 0;
   
  if (:EMP_CODIGO = '') then
        SELECT SUM (ENF_QTDE * COALESCE (ENF_PRECO,0)) AS NF_TOT_NOTA    
         FROM ENF0001 EF
      INNER JOIN ENF_IT01 E1 ON (EF.ENF_NOTANUMBER = E1.ENF_IT_NOTANUMBER)
      INNER JOIN PRD0000 PR ON (PR.PRD_REFER = E1.PRD_REFER) 
       WHERE ENF_EMISSAO  BETWEEN :DATA_INICIO AND :DATA_FIM
        AND ENF_TOT_NOTA > 0
        AND ENF_CANCELADA IS NULL
        INTO :valortotal;
   else    /* tem empresa selecionada */
        SELECT SUM (ENF_QTDE * COALESCE (ENF_PRECO,0)) AS NF_TOT_NOTA    
         FROM ENF0001 EF
      INNER JOIN ENF_IT01 E1 ON (EF.ENF_NOTANUMBER = E1.ENF_IT_NOTANUMBER)
      INNER JOIN PRD0000 PR ON (PR.PRD_REFER = E1.PRD_REFER) 
       WHERE ENF_EMISSAO  BETWEEN :DATA_INICIO AND :DATA_FIM
        AND ENF_TOT_NOTA > 0
        AND ENF_CANCELADA IS NULL
        AND EF.EMP_CODIGO = :EMP_CODIGO
        INTO :valortotal ;

   if (:EMP_CODIGO = '') then
   begin
       FOR 
        SELECT SUM (ENF_QTDE * COALESCE (ENF_PRECO,0)) AS NF_TOT_NOTA,
              count(*) AS conta, PR.PRD_REFER , PR.PRD_DESCRI as PRODUTOS, prd_und,PR.prd_codigo
         FROM ENF0001 EF
      INNER JOIN ENF_IT01 E1 ON (EF.ENF_NOTANUMBER = E1.ENF_IT_NOTANUMBER)
      INNER JOIN PRD0000 PR ON (PR.PRD_REFER = E1.PRD_REFER) 
       WHERE ENF_EMISSAO  BETWEEN :DATA_INICIO AND :DATA_FIM
        AND ENF_TOT_NOTA > 0
        AND ENF_CANCELADA IS NULL        
       GROUP BY PR.prd_codigo, PR.PRD_REFER , PR.PRD_DESCRI, prd_und
       ORDER BY 1 desc
        into :valor,:conta,:codigo, :produto, :unidade,:prd_codigo
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
           into :Saldo_Estoque;
           suspend;
         end
      end
    else /* tem empresa */
    begin
       FOR 
        SELECT SUM (ENF_QTDE * COALESCE (ENF_PRECO,0)) AS NF_TOT_NOTA,
              count(*) AS conta, PR.PRD_REFER , PR.PRD_DESCRI as PRODUTOS, prd_und, PR.prd_codigo
         FROM ENF0001 EF
      INNER JOIN ENF_IT01 E1 ON (EF.ENF_NOTANUMBER = E1.ENF_IT_NOTANUMBER)
      INNER JOIN PRD0000 PR ON (PR.PRD_REFER = E1.PRD_REFER) 
       WHERE ENF_EMISSAO  BETWEEN :DATA_INICIO AND :DATA_FIM
        AND ENF_TOT_NOTA > 0
        AND ENF_CANCELADA IS NULL    
        AND EF.EMP_CODIGO = :EMP_CODIGO        
       GROUP BY PR.prd_codigo, PR.PRD_REFER , PR.PRD_DESCRI, prd_und
       ORDER BY 1 desc
        into :valor,:conta,:codigo, :produto, :unidade, :prd_codigo
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
           AND EMP_CODIGO = :EMP_CODIGO      
           into :Saldo_Estoque;
           suspend;
         end
      end
end
^
SET TERM ; ^

commit work;


COMMENT ON PROCEDURE SUMARIZACAO_COMPRA_PRODUTO_REC IS 'CURVA ABC DE PRODUTOS EM COMPRAS POR VOLUME DE VENDAS';

SET TERM ^ ;

create or alter procedure ATUALIZACAO_CUSTOS (emp_codigo varchar(3))
as
declare variable PRD_REFER varchar(20) ;
declare variable entrada  NUMERIC(18,5);
declare variable ipi  NUMERIC(18,5);
declare variable substri  NUMERIC(18,5);
declare variable frete  NUMERIC(18,5);
declare variable DespeAces  NUMERIC(18,5);
declare variable Seguro  NUMERIC(18,5);
declare variable CustoCredito numeric(18,5);

declare variable pmt_calcularpv integer;
DECLARE VARIABLE PRD_PCUSTO NUMERIC(18,5);
declare variable PRD_CUSTOCOMIPI numeric(18,5);
declare variable comp varchar(2);
begin

     SELECT PRODUTOS FROM SHAREDB
     INTO :comp;

FOR 
    SELECT PRD_REFER FROM PRD0000 PR
    WHERE EXISTS 
            (SELECT 1  
            FROM ENF0001 EF
            INNER JOIN ENF_IT01 E1 ON (EF.ENF_NOTANUMBER = E1.ENF_IT_NOTANUMBER)
            WHERE PR.PRD_REFER = E1.PRD_REFER 
            AND EF.emp_codigo = :emp_codigo
            AND ef.ENF_INDUSTRIALIZACAO = 'N'
            )
  --  and not exists
  --     (Select 1 from ftc_it01 ftc where ftc.prd_refer = pr.prd_refer and ftc.emp_codigo= :emp_codigo)
    INTO :PRD_REFER
    DO
    BEGIN
        SELECT FIRST 1  e1.enf_custo - (( ENF_IT_VLPIS + ENF_IT_VLCOFINS + ENF_ICMS)/ CAST(e1.enf_qtde as numeric(18,4))),
        (e1.enf_custo + 
        ((ENF_IT_VLIPI + e1.enf_vlsubst + ENF_IT_VALFRETE + e1.ENF_IT_VLDESP_ACES + e1.ENF_IT_VLSEGURO)/ CAST(e1.enf_qtde as numeric(18,4)))) AS ENTRADA,
        ENF_IT_VLIPI/ CAST(e1.enf_qtde as numeric(18,4)) AS IPI,
        e1.enf_vlsubst/CAST(e1.enf_qtde as numeric(18,4)) AS substri,
        ENF_IT_VALFRETE/CAST(e1.enf_qtde as numeric(18,4)) AS frete,
         e1.ENF_IT_VLDESP_ACES /CAST(e1.enf_qtde as numeric(18,4)) AS DespeAces,
         e1.ENF_IT_VLSEGURO/CAST(e1.enf_qtde as numeric(18,4)) AS Seguro
         fROM ENF0001 EF
        INNER JOIN ENF_IT01 E1 ON (EF.ENF_NOTANUMBER = E1.ENF_IT_NOTANUMBER)
        WHERE E1.PRD_REFER = :PRD_REFER 
        AND E1.EMP_CODIGO = :EMP_CODIGO
        ORDER BY EF.ENF_EMISSAO DESC 
        INTO :CustoCredito, :entrada, :ipi, :substri, :frete, :DespeAces, :Seguro;
         if (:comp = 'C') then
             EXECUTE STATEMENT 'UPDATE PRD0000     '||
                                 ' SET PRD_CUSTOCOMIPI = '|| CAST(:entrada AS varchar(20)) ||
                                    ' , PRD_CUSTOFRETE = '|| CAST(:frete AS VARCHAR(20))   ||
                                    ' , PRD_CUSTOIPI = '|| CAST(:ipi AS VARCHAR(20))       ||
                                    ' , PRD_CUSTOSUBTRIB = '|| CAST(:substri AS VARCHAR(20))||
                                    ' , PRD_CUSTOADCIONAL = ('||CAST(:DespeAces AS VARCHAR(20))|| '+'|| CAST(:Seguro AS varchar(20))||  ')' ||
                                    ' , PRD_CUSTO_CREDITO = '|| cast (:CustoCredito  AS VARCHAR(20))   ||
                                ' WHERE PRD_REFER = '||:PRD_REFER  ;
        else
              EXECUTE STATEMENT 'UPDATE PRD0000     '||
                                 ' SET PRD_CUSTOCOMIPI = '|| CAST(:entrada AS varchar(20)) ||
                                    ' , PRD_CUSTOFRETE = '|| CAST(:frete AS VARCHAR(20))   ||
                                    ' , PRD_CUSTOIPI = '|| CAST(:ipi AS VARCHAR(20))       ||
                                    ' , PRD_CUSTOSUBTRIB = '|| CAST(:substri AS VARCHAR(20))||
                                    ' , PRD_CUSTOADCIONAL = ('||CAST(:DespeAces AS VARCHAR(20))|| '+'|| CAST(:Seguro AS varchar(20))||  ')' ||
                                    ' , PRD_CUSTO_CREDITO = '|| cast (:CustoCredito  AS VARCHAR(20))   ||
                                ' WHERE PRD_REFER = '||:PRD_REFER ||
                                ' EMP_CODIGO = '|| :EMP_CODIGO;

        SELECT PMT_CALCULARPV FROM PRMT0001 
        WHERE EMP_CODIGO = :EMP_CODIGO
        into :PMT_CALCULARPV;
        
        if (:comp = 'C') then
        begin
            SELECT first 1 PRD_PCUSTO, PRD_CUSTOCOMIPI FROM PRD0000
            WHERE PRD_REFER = :PRD_REFER
            INTO :PRD_PCUSTO, :PRD_CUSTOCOMIPI;

                --custo liquido
            if ((:PRD_PCUSTO > 0) AND (:PMT_CALCULARPV = 0)) then
    
               EXECUTE STATEMENT 
               'UPDATE PRD0000     '||           
               ' SET PRD_PVENDA =  '|| cast(:PRD_PCUSTO as varchar(20))|| ' * ((PRD_MARGEMVENDA/100) + 1) '||
                ' WHERE PRD_REFER = '||:PRD_REFER ;            
    
            else
            if ((:PRD_CUSTOCOMIPI > 0 ) and (:PMT_CALCULARPV = 1)) then --custo de entrada
    
              EXECUTE STATEMENT 
               'UPDATE PRD0000     '||           
               ' SET PRD_PVENDA =  '|| cast(:PRD_CUSTOCOMIPI as varchar(20))|| ' * ((PRD_MARGEMVENDA/100) + 1) '||
               ' WHERE PRD_REFER = '||:PRD_REFER ;
        end
        Else    
        begin
            SELECT PRD_PCUSTO, PRD_CUSTOCOMIPI FROM PRD0000
            WHERE PRD_REFER = :PRD_REFER
            AND EMP_CODIGO = :EMP_CODIGO
            INTO :PRD_PCUSTO, :PRD_CUSTOCOMIPI;
            
            --custo liquido
            if ((:PRD_PCUSTO > 0) AND (:PMT_CALCULARPV = 0)) then
    
               EXECUTE STATEMENT 
               'UPDATE PRD0000     '||           
               ' SET PRD_PVENDA =  '|| cast(:PRD_PCUSTO as varchar(20))|| ' * ((PRD_MARGEMVENDA/100) + 1) '||
                ' WHERE PRD_REFER = '||:PRD_REFER ||
               ' AND EMP_CODIGO = ' ||:EMP_CODIGO;            
    
            else
            if ((:PRD_CUSTOCOMIPI > 0 ) and (:PMT_CALCULARPV = 1)) then --custo de entrada
    
              EXECUTE STATEMENT 
               'UPDATE PRD0000     '||           
               ' SET PRD_PVENDA =  '|| cast(:PRD_CUSTOCOMIPI as varchar(20))|| ' * ((PRD_MARGEMVENDA/100) + 1) '||
               ' WHERE PRD_REFER = '||:PRD_REFER ||
               ' AND EMP_CODIGO = ' ||:EMP_CODIGO;


            
        end
   END

end
^

SET TERM ; ^



COMMENT ON PROCEDURE ATUALIZACAO_CUSTOS IS
'ATUALIZA OS CUSTO DE ENTRADA, FRETE, IPI, SUBS TRIBUTARIA, SEGURO E DESPESAS';

/* Following GRANT statetements are generated automatically */

GRANT SELECT ON PRD0000 TO PROCEDURE ATUALIZACAO_CUSTOS;
GRANT SELECT ON ENF0001 TO PROCEDURE ATUALIZACAO_CUSTOS;
GRANT SELECT ON ENF_IT01 TO PROCEDURE ATUALIZACAO_CUSTOS;

/* Existing privileges on this procedure */

GRANT EXECUTE ON PROCEDURE ATUALIZACAO_CUSTOS TO SYSDBA;

comment on procedure ATUALIZACAO_CUSTOS is 'ATUALIZA OS CUSTO DE ENTRADA, FRETE, IPI, SUBS TRIBUTARIA, SEGURO E DESPESAS';


UPDATE  OCP_IT01
SET OCI_SITUACAO = 'C'
WHERE OCI_QTDES <= OCI_QTDER;


COMMIT WORK;

/* tabelas produtcao  */

COMMENT ON TABLE PED0000 IS 'PEDIDO DE VENDA';
COMMENT ON COLUMN OCP_IT01.OCI_QTDES IS 'QUANTIDADE SOLICITADA';
COMMENT ON COLUMN OCP_IT01.OCI_QTDER IS 'QUANTIDADE RECEBIDA';
COMMENT ON COLUMN OCP_IT01.OCI_SITUACAO IS 'SITUACAO : C - CONCLUIDO; P - PENDENTE; F - PARCIAL';
COMMENT ON COLUMN OCP_IT01.OCI_PRECO IS 'PRECO';
COMMENT ON COLUMN OCP_IT01.OCI_IPI IS 'IPI %';
COMMENT ON COLUMN OCP_IT01.OCI_DESCRICAO IS 'DESCRICAO DO PRODUTO';
comment ON TABLE PRECOS0000 IS 'LISTA DE PRECOS DOS CLIENTES';
COMMENT ON COLUMN PRECOS0000.PRE_ID IS 'CODIGO DA LISTA DE PRECO';
COMMENT ON COLUMN PRECOS0000.PRE_DTCADASTRO IS 'DATA DE CADASTRO';
COMMENT ON COLUMN PRECOS0000.PRE_TIPO_TABELA IS 'TIPO: 0 - PADRAO; 1 - ALTERNATIVA;2 - PROMO; 3 - EXCLUSIVA';
COMMENT ON COLUMN PRECOS0000.PRE_DESCRICAO IS 'DECRICAO DA LISTA DE PRECOS';
COMMENT ON COLUMN PRECOS0000.PRE_VIGENCIA1 IS 'DATA DA INICIO DA VIGENCIA';
COMMENT ON COLUMN PRECOS0000.PRE_VIGENCIA2 IS 'DATA DO FIM DA VIGENCIA DA LISTA DE PRECOS';
comment ON TABLE PRECOS0001 IS 'ITEM DA LISTA DE PRECOS (PRODUTOS)';
COMMENT ON COLUMN PRECOS0001.PRE_ID IS 'CODIGO DA LISTA DE PRECO';
COMMENT ON COLUMN PRECOS0001.PRD_CODIGO IS 'CHAVE REFERENCIA DO PRODUTO';
COMMENT ON COLUMN PRECOS0001.PRE_MARGEM IS 'MARGEM DE VENDA';
COMMENT ON COLUMN PRECOS0001.PRE_PRECO IS 'PRECO DE VENDA';
COMMENT ON COLUMN PRECOS0001.CODIGO_PRODUTO_CLIENTE IS 'CLIENTE-CODIGO DO PRODUTO';
COMMENT ON COLUMN PRECOS0001.DESCRICAO_PRODUTO_CLIENTE IS 'CLIENTE-DESCRICAO PRODUTO';
COMMENT ON COLUMN PRECOS0001.PERC_COMISSAO IS 'COMISSAO %';
COMMENT ON COLUMN PRECOS0001.PERC_VERBA IS 'VERBA %';

 

COMMENT ON TABLE UND_MEDIDA IS 'CASDASTRO DE MEDIDDAS';
COMMENT ON TABLE USUARIO IS 'CASDASTRO DE USUARIOS';
COMMENT ON TABLE PED_IT01 IS 'ITEM DO PEDIDO DE VENDA';
COMMENT ON TABLE FOR0000 IS 'CADASTRO DE FORNECEDOR';
COMMENT ON TABLE FORMA_PAGAMENTO IS 'FORMA DE PAGAMENTO';


COMMENT ON TABLE FTC0000 IS 'CADASTRO DE FICHA TECNICA DO PRODUTO';
COMMENT ON TABLE FTC_IT01 IS 'ITENS DA FICHA TECNICA DO PRODUTO';
COMMENT ON TABLE ALMOX0000 IS 'CADASTRO DE ALMOXARIFADO';
COMMENT ON TABLE FAT0000 IS 'FATURAMENTO DE NOTA FISCAL';
COMMENT ON TABLE FAT_IT02 IS 'ITENS DO FATURAMENTO DE NOTA FISCAL';
COMMENT ON TABLE SHAREDB IS 'TABELAS COMPARTILHADAS';
COMMENT ON TABLE UND_MEDIDA IS 'CASDASTRO DE MEDIDDAS';
COMMENT ON TABLE USUARIO IS 'CASDASTRO DE USUARIOS';
COMMENT ON TABLE PED_IT01 IS 'ITEM DO PEDIDO DE VENDA';
COMMENT ON TABLE PRD0000 IS 'PRODUTO';
COMMENT ON COLUMN PRD0000.PRD_PCUSTO IS 'CUSTO LIQUIDO';
COMMENT ON COLUMN PRD0000.PRD_CUSTOCOMIPI IS 'CUSTO DE ENTRADA  = LIQUIDO+IPI+FRETE+DESPESAS+ST';
COMMENT ON COLUMN PRD0000.PRD_CUSTOFRETE  IS 'CUSTO DO FRETE';
COMMENT ON COLUMN PRD0000.PRD_CUSTOIPI IS 'CUSTO DO IPI';
COMMENT ON COLUMN PRD0000.PRD_CUSTOSUBTRIB IS 'CUSTO  DO SUBSTITUICAO TRIBUTARIA';
COMMENT ON TABLE PRMT0001 IS 'TABELA DE PARAMETRO';
COMMENT ON COLUMN PRMT0001.PMT_CALCULARPV IS 'CALCULA PRECO DE VENDA: 0 = CUSTO LIQUIDO, 1 = CUSTO ENTRADA';
COMMENT ON COLUMN PRD0000.PRD_CUSTOADCIONAL IS 'CUSTO ADICIONAL = DESPESAS ACESSORIAS';
COMMENT ON COLUMN PRD0000.PRD_CUSTO_CREDITO IS 'CUSTO DO PRODUTO SEM IMPOSTO (CUSTO LIQUIDO -ICMS-CON)';
comment on column PRD0000.PRD_MARGEMVENDA is 'MARGEM DE VENDA';
COMMENT ON COLUMN PRD0000.PRD_MARGEMOFERTA IS 'MARGEM DE OFERTA';
COMMENT ON COLUMN PRD0000.PRD_COMISSAO IS 'COMISSAO %';
COMMENT ON COLUMN PRD0000.PRD_PRECOOFERTA IS 'PRECO OFERTA (BASE CUSTO LIQUIDO OU CUSTO DE ENTRADA CONFORME O PARAMETRO PMT_CALCULARPV)';	
COMMENT ON COLUMN PRD0000.PRD_PMEDIO IS 'CUSTO MEDIO';
COMMENT ON COLUMN PRD0000.PRD_GRADE IS 'CHAVE REFERENCIA DA GRADE';
COMMENT ON COLUMN PRD0000.PGR_CODIGO IS 'CHAVE REFERENCIA DO GRUPO';
COMMENT ON COLUMN PRD0000.PRD_PESOLIQ IS 'PESO LIQUIDO';
COMMENT ON COLUMN PRD0000.PRD_PESOKg IS 'PESO BRUTO';
COMMENT ON COLUMN PRD0000.PRD_EMBALA IS 'EMBALAGEM';
COMMENT ON COLUMN PRD0000.PRD_GARANTIA IS 'GARANTIA';
COMMENT ON COLUMN PRD0000.PRD_INICIOOFERTA IS 'INICIO DA OFERTA';
COMMENT ON COLUMN PRD0000.PRD_FIMOFERTA IS 'PRAZO FINAL DA OFERTA';
COMMENT ON COLUMN PRD0000.PRD_STATUS IS 'PRODUTO ATIVO ';
COMMENT ON COLUMN PRD0000.PRD_GERENCIA_LOTE IS 'CONTROLE DE LOTE';
COMMENT ON COLUMN PRD0000.PRD_GRADE_OBRIGATORIO IS 'CADASTRO DA GRADE OBRIGTORIA';
COMMENT ON COLUMN PRD0000.PRD_DTPCUSTO IS 'DATA DO CUSTO';
COMMENT ON COLUMN PRD0000.PRD_MGDESPFIXAS IS 'DESPESAS FIXAS %';
COMMENT ON COLUMN PRD0000.PRD_INDICESOBMARGEM IS 'INDICE SOBRE VENDA';
COMMENT ON COLUMN PRD0000.PRD_DCVAR1 IS 'NOME DA VARIACAO 1'; 
COMMENT ON COLUMN PRD0000.PRD_DCVAR2 IS 'NOME DA VARIACAO 2';
COMMENT ON COLUMN PRD0000.PRD_DCVAR3 IS 'NOME DA VARIACAO 3';
COMMENT ON COLUMN PRD0000.PRD_DCVAR4 IS 'NOME DA VARIACAO 4';
COMMENT ON COLUMN PRD0000.PRD_DCVAR5 IS 'NOME DA VARIACAO 5';
COMMENT ON COLUMN PRD0000.PRD_DCVAR6 IS 'NOME DA VARIACAO 6';
COMMENT ON COLUMN PRD0000.PRD_DCVAR7 IS 'NOME DA VARIACAO 7';
COMMENT ON COLUMN PRD0000.PRD_DCVAR8 IS 'NOME DA VARIACAO 8';
COMMENT ON COLUMN PRD0000.PRD_VAR1 IS 'QUANTIDADE VARIACAO 1';
COMMENT ON COLUMN PRD0000.PRD_VAR2 IS 'QUANTIDADE VARIACAO 2';
COMMENT ON COLUMN PRD0000.PRD_VAR3 IS 'QUANTIDADE VARIACAO 3';
COMMENT ON COLUMN PRD0000.PRD_VAR4 IS 'QUANTIDADE VARIACAO 4';
COMMENT ON COLUMN PRD0000.PRD_VAR5 IS 'QUANTIDADE VARIACAO 5';
COMMENT ON COLUMN PRD0000.PRD_VAR6 IS 'QUANTIDADE VARIACAO 6';
COMMENT ON COLUMN PRD0000.PRD_VAR7 IS 'QUANTIDADE VARIACAO 7';
COMMENT ON COLUMN PRD0000.PRD_VAR8 IS 'QUANTIDADE VARIACAO 8';

COMMENT ON COLUMN PRD0000.PRD_PVENDA IS 'PRECO DE VENDA';
COMMENT ON COLUMN ENF_IT01.ENF_PRECO IS 'PRECO UNITARIO (CUSTO SEM O DESCONTO) ';
COMMENT ON COLUMN ENF_IT01.ENF_CUSTO IS 'CUSTO JA CONSIDERANDO O DESCONTO';



COMMENT ON TABLE PCX0000 IS 'CENTRO DE CUSTO';
COMMENT ON TABLE CCT_0000 IS 'PLANO DE CONTAS';
COMMENT ON TABLE PRD_GRUPO IS 'GRUPO DOS PRODUTOS';
COMMENT ON TABLE PRD_GRADE IS 'GRADE DE PRODUTOS, EX BLUSA AZUL, VERDE, AMARELA, PRETA, G P, XG';
COMMENT ON TABLE PRD_LOTE IS 'LOTE DE PODUTO';
COMMENT ON TABLE FOR0000 IS 'FORNECEDORES';
COMMENT ON TABLE CLI0000 IS 'CLIENTES';
COMMENT ON TABLE ENF0001 IS 'NOTA DE ENTRADA';
COMMENT ON TABLE NF0001 IS 'NOTA FISCAL DE SAIDA';
COMMENT ON TABLE NF_IT01 IS 'ITEM DA NOTA FISCAL';
COMMENT ON TABLE ENF_IT01 IS 'ITEM DA NOTA ENTRADA';
COMMENT ON TABLE REP0000 IS 'VENDEDOR';
COMMENT ON TABLE FAT_PC01 IS 'PARCELA DA FATURA';
COMMENT on TABLE ALMOX0000 IS 'ALMOXARIFADO';
comment ON VIEW VW_CONSULTA_NOTA_FISCAL_ENTRADA IS 'NOTA FISCAL DE ENTRADA';
comMent ON TABLE CID0000 IS 'CIDADE';


DROP TABLE OCORRENCIA;

CREATE TABLE OCORRENCIA (
OCO_CODIGO INTEGER NOT NULL,
OCO_DESCRICAO VARCHAR(60),
OCO_TIPO INTEGER,
CONSTRAINT PK_OCORRENCIA_APT PRIMARY KEY (OCO_CODIGO)
);
commit work;

COMMENT ON TABLE OCORRENCIA IS 'TABELA DE OCORRENCIAS PADROES DO CHAO DE FABRICA';
COMMENT ON COLUMN OCORRENCIA.OCO_CODIGO IS 'CHAVE PRINCIPAL';
COMMENT ON COLUMN OCORRENCIA.OCO_DESCRICAO IS 'DESCRICAO DA OCORRENCIA';
COMMENT ON COLUMN OCORRENCIA.OCO_TIPO IS 'TIPO: 1 - INFORMATIVA ; 2 - CRITICA (PARADA)';

/* CREATE SEQUENCE GEN_OCORRENCIA_CODIGO ; */


INSERT INTO OCORRENCIA VALUES (1,'PARADA DE MAQUINA',2);
INSERT INTO OCORRENCIA VALUES (2,'FALTA DE INSUMO/MATERIAL',2);
INSERT INTO OCORRENCIA VALUES (3,'FALTA DE ENERGIA ELETRICA',2);
INSERT INTO OCORRENCIA VALUES (4,'AUSENCIA DE COLABORADOR',1);
INSERT INTO OCORRENCIA VALUES (5,'QUEBRA DE PEÇA',1);
INSERT INTO OCORRENCIA VALUES (6,'ACIDENTE DE TRABALHO',1);
INSERT INTO OCORRENCIA VALUES (7,'CANCELAMENTO DA ORDEM',2);

/* SET generator GEN_OCORRENCIA_CODIGO TO 8; */

--#RDR, BSC, SOLVE
-- produção

DROP TABLE SETOR;
DROP SEQUENCE GEN_SETOR;
/*
CREATE TABLE SETOR ('
	CODIGO INTEGER NOT NULL,
	DESCRICAO VARCHAR(60),
	CONSTRAINT PK_SETOR PRIMARY KEY (CODIGO)
) ;

*/
DROP TABLE EQUIP;

CREATE TABLE EQUIPAMENTO (
	EQP_CODIGO INTEGER NOT NULL,
	EQP_DESCRICAO VARCHAR(60),
	CONSTRAINT PK_EQUIPAMENTO PRIMARY KEY (EQP_CODIGO)
) ;

commit work;

COMMENT ON TABLE EQUIPAMENTO IS 'CADASTRO DE EQUIPAMENTO';


CREATE TABLE COLABORADOR (
COL_CODIGO INTEGER NOT NULL,
COL_NOME VARCHAR (40),
COL_FUNC VARCHAR(30),
COL_SETOR VARCHAR(30),
COL_SALARIO_HORA NUMERIC(18,5),
CONSTRAINT PK_COLABORADOR PRIMARY KEY (COL_CODIGO)
) ;
   
commit work;

COMMENT ON TABLE COLABORADOR IS 'CADASTRO DO COLABORADORES';
COMMENT ON COLUMN COLABORADOR.COL_CODIGO IS 'CODIGO IDENTIFICADOR DO COLABORADOR';
COMMENT ON COLUMN COLABORADOR.COL_NOME IS 'NOME DO COLABORADOR';
COMMENT ON COLUMN COLABORADOR.COL_FUNC IS 'FUNCAO EXERCIDA' ;  
COMMENT ON COLUMN COLABORADOR.COL_SETOR IS 'SETOR DESCRICAO';
COMMENT ON COLUMN COLABORADOR.COL_SALARIO_HORA IS 'SALARIO POR HORA';

CREATE SEQUENCE GEN_COLABORADOR;

DROP TABLE OPERACOES;

CREATE TABLE OPERACOES (
	OPE_CODIGO INTEGER NOT NULL,
	OPE_DESCRICAO VARCHAR(60),	
	EQP_CODIGO INTEGER ,
	CONSTRAINT PK_OPERACOES PRIMARY KEY (OPE_CODIGO),
	CONSTRAINT FK_OPE_EQUIPA FOREIGN KEY (EQP_CODIGO) REFERENCES EQUIPAMENTO (EQP_CODIGO)
) ;

commit work;

COMMENT ON TABLE OPERACOES IS 'TABELA DE OPERACOES DE PRODUCAO';
COMMENT ON COLUMN OPERACOES.OPE_CODIGO IS 'CODIGO IDENTIFICADOR DA OPERACAO';
COMMENT ON COLUMN OPERACOES.OPE_DESCRICAO IS 'NOME - DESCRICAO DA OPERACAO';
COMMENT ON COLUMN OPERACOES.EQP_CODIGO IS 'CHAVE REFERENCIA DA TABELA DE EQUIPAMENTO PADRAO PARA ESTA OPERACAO';



CREATE TABLE ENGENHARIA_PROCESSO 
(ENG_CODIGO INTEGER NOT NULL,
PRD_CODIGO VARCHAR(6),
OPE_CODIGO INTEGER,
SEQUENCIA INTEGER,
TEMPO_ESTIMADO INTEGER,
ESP_ESBOCO BLOB SUB_TYPE 0,  
ESP_ESB_ARQ BLOB SUB_TYPE 0,
EQP_CODIGO INTEGER ,
CONSTRAINT PK_ENGENHARIA_PROCESSO PRIMARY KEY(ENG_CODIGO),
CONSTRAINT FK_ENG_PRODUTO FOREIGN KEY (PRD_CODIGO) REFERENCES PRD0000(PRD_CODIGO),
CONSTRAINT FK_ENG_OPERACAO FOREIGN KEY (OPE_CODIGO) REFERENCES OPERACOES (OPE_CODIGO),
constraint FK_ENG_EQUIPA FOREIGN KEY (EQP_CODIGO) REFERENCES EQUIPAMENTO (EQP_CODIGO)
);
commit work;
  
COMMENT ON TABLE  ENGENHARIA_PROCESSO IS 'A ENGENHARIA DE PROCESSO DETERMINA COMO A PRODUCAO DO PRODUTO DEVE SER FEITA NA FABRICA';
COMMENT ON COLUMN ENGENHARIA_PROCESSO.PRD_CODIGO  IS 'CHAVE REFERENCIA DO PRODUTO';
COMMENT ON COLUMN ENGENHARIA_PROCESSO.OPE_CODIGO IS 'CHAVE REFERENCIA DA OPERACAO';
COMMENT ON COLUMN ENGENHARIA_PROCESSO.EQP_CODIGO IS 'CHAVE REFERENCIA DO EQUIPAMENTO DA OPERACAO';
COMMENT ON COLUMN ENGENHARIA_PROCESSO.SEQUENCIA IS 'SEQUECIADE PRODUCAO DA OPERACAO';
COMMENT ON COLUMN ENGENHARIA_PROCESSO.TEMPO_ESTIMADO IS 'TEMPO ESTIMPADO/PADRAO EM MINUTOS PARA OPERACAO DE UM PRODUTO';

CREATE SEQUENCE GEN_ENGENHARIA_PROCESSO;



CREATE TABLE ESPECIFICACOES (
ESP_CODIGO INTEGER NOT NULL,
ESP_NOME VARCHAR(60),
ESP_PADROES VARCHAR(100),
ENG_CODIGO INTEGER,
ESP_COL1 VARCHAR(100),
ESP_COL2 VARCHAR(100),
ESP_COL3 VARCHAR(100),
ESP_COL4 VARCHAR(100),
ESP_COL5 VARCHAR(100),
ESP_COL6 VARCHAR(100),
ESP_COL7 VARCHAR(100),
CONSTRAINT PK_ESPECIFICACOES PRIMARY KEY (ESP_CODIGO),
CONSTRAINT PK_ESP_ENG FOREIGN KEY (ENG_CODIGO) REFERENCES ENGENHARIA_PROCESSO (ENG_CODIGO)

);

commit work;

COMMENT ON TABLE ESPECIFICACOES IS 'ESPECIFICACOES TECNICAS OU DE QUALIDADE';
COMMENT ON COLUMN ESPECIFICACOES.ESP_NOME IS 'NOME DA CARACTERISTICA';
COMMENT ON COLUMN ESPECIFICACOES.ESP_PADROES IS 'ESPECIFICACAO PADRAO PARA CARACTERISTICA';
COMMENT ON COLUMN ESPECIFICACOES.ENG_CODIGO IS 'CHAVE IDENTIFICADOR DA PROCESSO/PRODUTO (ENGENHARIA DE PROCESSO)';


CREATE SEQUENCE GEN_ESPECIFICACOES;


/* PARAMETRO DO NOME DOS CAMPOS DA ESPECIFICACAO */
ALTER TABLE PRMT0001 ADD ESP_NOME    VARCHAR(40) ;
ALTER TABLE PRMT0001 ADD ESP_PADROES VARCHAR(40);
ALTER TABLE PRMT0001 ADD ESP_COL1    VARCHAR(40);
ALTER TABLE PRMT0001 ADD ESP_COL2 VARCHAR(40);
ALTER TABLE PRMT0001 ADD ESP_COL3 VARCHAR(40);
ALTER TABLE PRMT0001 ADD ESP_COL4 VARCHAR(40);
ALTER TABLE PRMT0001 ADD ESP_COL5 VARCHAR(40);
ALTER TABLE PRMT0001 ADD ESP_COL6 VARCHAR(40);
ALTER TABLE PRMT0001 ADD ESP_COL7 VARCHAR(40);

commit work;

COMMENT ON TABLE PRMT0001 IS 'TABELA DE PARAMETRO';
COMMENT ON COLUMN PRMT0001.ESP_NOME   IS 'CAPTION/NOME CAMPO ESP_NOME DA TABELA ESPECIFICACAO';
COMMENT ON COLUMN PRMT0001.ESP_PADROES IS 'CAPTION/NOME CAMPO ESP_PADROES DA TABELA ESPECIFICACAO';
COMMENT ON COLUMN PRMT0001.ESP_COL1 IS 'CAPTION/NOME CAMPO ESP_COL1 DA TABELA ESPECIFICACAO';
COMMENT ON COLUMN PRMT0001.ESP_COL2 IS 'CAPTION/NOME CAMPO ESP_COL2 DA TABELA ESPECIFICACAO';
COMMENT ON COLUMN PRMT0001.ESP_COL3 IS 'CAPTION/NOME CAMPO ESP_COL3 DA TABELA ESPECIFICACAO';
COMMENT ON COLUMN PRMT0001.ESP_COL4 IS 'CAPTION/NOME CAMPO ESP_COL4 DA TABELA ESPECIFICACAO';
COMMENT ON COLUMN PRMT0001.ESP_COL5 IS 'CAPTION/NOME CAMPO ESP_COL5 DA TABELA ESPECIFICACAO';
COMMENT ON COLUMN PRMT0001.ESP_COL6 IS 'CAPTION/NOME CAMPO ESP_COL6 DA TABELA ESPECIFICACAO';
COMMENT ON COLUMN PRMT0001.ESP_COL7 IS 'CAPTION/NOME CAMPO ESP_COL7 DA TABELA ESPECIFICACAO';

SET TERM ^ ;

EXECUTE BLOCK AS 
/* BSC, KAVASAKI ATLAS */	
BEGIN
IF (EXISTS  (SELECT * FROM PRMT0001 P1 INNER JOIN EMP0000 E1 ON (E1.EMP_CODIGO = P1.EMP_CODIGO)
                WHERE EMP_RAZAO LIKE '%BSC%'  OR EMP_RAZAO LIKE '%KAVASAKI%' OR EMP_RAZAO LIKE '%ATLAS%' ))  THEN 
execute STATEMENT 'UPDATE  PRMT0001  SET ESP_NOME = ''Características'',  ESP_PADROES = ''Especificação'', ESP_COL1 = ''Frequência medição'', ESP_COL2 = ''Meio de medição'';';

END ^
SET TERM ; ^
   
CREATE TABLE FABRICACAO   (
FAB_CODIGO INTEGER NOT NULL,
OSV_CODIGO VARCHAR(12),
PRD_CODIGO VARCHAR(6),
ENG_CODIGO INTEGER, 
OPE_CODIGO INTEGER,
SEQUENCIA INTEGER,
TEMPO_ESTIMADO INTEGER,
FAB_ESBOCO BLOB SUB_TYPE 0,  
DATA_INCIO TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
DATA_CONCLUSAO TIMESTAMP,
FAB_PRODUZINDO decimal(18,5) DEFAULT 0.0 ,
FAB_REFUGADA decimal(18,5)  DEFAULT 0.0 ,
FAB_PRODUZIDA decimal(18,5)  DEFAULT 0.0 ,
EQP_CODIGO INTEGER,
CONSTRAINT PK_FABRICACAO PRIMARY KEY (FAB_CODIGO),
CONSTRAINT FK_FAB_PRODUTO FOREIGN KEY (PRD_CODIGO) REFERENCES PRD0000 (PRD_CODIGO),
CONSTRAINT FK_FAB_OPERACAO FOREIGN KEY (OPE_CODIGO) REFERENCES OPERACOES  (OPE_CODIGO),
CONSTRAINT FK_FAB_EQP FOREIGN KEY (EQP_CODIGO) REFERENCES EQUIPAMENTO (EQP_CODIGO)
);

commit work;

COMMENT ON TABLE FABRICACAO IS 'PROCESSOS DE FABRICACAO DA ORDEM DE PRODUCAO COPIA DOS DADOS DE ENGENHARA_PROCESSO';
COMMENT ON COLUMN FABRICACAO.SEQUENCIA IS 'SEQUECIADE PRODUCAO DA OPERACAO';
COMMENT ON COLUMN FABRICACAO.TEMPO_ESTIMADO IS 'TEMPO ESTIMPADO/PADRAO EM MINUTOS PARA OPERACAO DE UM PRODUTO';
COMMENT ON COLUMN FABRICACAO.FAB_ESBOCO IS 'DESENHO';
COMMENT ON COLUMN FABRICACAO.FAB_PRODUZINDO IS 'QUANTIDADE QUE ESTA EM PRODUCAO - INICIADA';
COMMENT ON COLUMN FABRICACAO.FAB_REFUGADA  IS 'QUANTIDADE ESTORNADA';
COMMENT ON COLUMN FABRICACAO.FAB_PRODUZIDA IS 'QUANTIDADE PRONTA';
COMMENT ON COLUMN FABRICACAO.ENG_CODIGO IS 'CHAVE DE REFERENCIA DA ENGENHARIA';
COMMENT ON COLUMN FABRICACAO.OSV_CODIGO IS 'CHAVE DE REFERENCIA DA ORDEM DE SERVICO';
COMMENT ON COLUMN FABRICACAO.PRD_CODIGO IS 'CHAVE DE REFERENCIA DO PRODUTO';
COMMENT ON COLUMN FABRICACAO.OPE_CODIGO IS 'CHAVE DE REFERENCIA DA OPERACAO';
COMMENT ON COLUMN FABRICACAO.EQP_CODIGO IS 'CHAVE DE REFERENCIA DO EQUIPAMENTO';


CREATE SEQUENCE GEN_FABRICACAO;


CREATE TABLE ESPECIFICACOES_REALIZADAS (
ESR_CODIGO INTEGER NOT NULL,
ESR_NOME VARCHAR(60),
ESR_PADROES VARCHAR(100),
FAB_CODIGO INTEGER,
ESR_COL1 VARCHAR(100),
ESR_COL2 VARCHAR(100),
ESR_COL3 VARCHAR(100),
ESR_COL4 VARCHAR(100),
ESR_COL5 VARCHAR(100),
ESR_COL6 VARCHAR(100),
ESR_COL7 VARCHAR(100),
CONSTRAINT PK_ESPECIFICACOES_REALIZADAS PRIMARY KEY (ESR_CODIGO),
CONSTRAINT PK_ESR_FAB FOREIGN KEY (FAB_CODIGO) REFERENCES FABRICACAO (FAB_CODIGO)

);

commit work;

COMMENT ON TABLE ESPECIFICACOES_REALIZADAS IS 'ESPECIFICACOES REALIZADAS TECNICAS OU DE QUALIDADE';
COMMENT ON TABLE ESPECIFICACOES_REALIZADAS IS 'CHAVE IDENTIFICADOR DAS ESPECIFICACAO';
COMMENT ON COLUMN ESPECIFICACOES_REALIZADAS.ESR_NOME IS 'NOME DA CARACTERISTICA';
COMMENT ON COLUMN ESPECIFICACOES_REALIZADAS.ESR_PADROES IS 'ESPECIFICACAO PADRAO PARA CARACTERISTICA';
COMMENT ON COLUMN ESPECIFICACOES_REALIZADAS.FAB_CODIGO IS 'CHAVE IDENTIFICADOR DA FABRICACAO (ENGENHARIA DE PROCESSO)';
COMMENT ON COLUMN ESPECIFICACOES_REALIZADAS.ESR_COL1  IS 'COLUMNA LIVRE 1';
COMMENT ON COLUMN ESPECIFICACOES_REALIZADAS.ESR_COL2  IS 'COLUMNA LIVRE 2';
COMMENT ON COLUMN ESPECIFICACOES_REALIZADAS.ESR_COL3  IS 'COLUMNA LIVRE 3';
COMMENT ON COLUMN ESPECIFICACOES_REALIZADAS.ESR_COL4  IS 'COLUMNA LIVRE 4';
COMMENT ON COLUMN ESPECIFICACOES_REALIZADAS.ESR_COL5  IS 'COLUMNA LIVRE 5';
COMMENT ON COLUMN ESPECIFICACOES_REALIZADAS.ESR_COL6  IS 'COLUMNA LIVRE 6';
COMMENT ON COLUMN ESPECIFICACOES_REALIZADAS.ESR_COL7  IS 'COLUMNA LIVRE 7';

CREATE SEQUENCE GEN_ESP_REALIZADAS;


CREATE TABLE APONTAMENTO_FAB (
APF_CODIGO INTEGER NOT NULL,
FAB_CODIGO INTEGER NOT NULL,
COL_CODIGO INTEGER ,
APF_DATA_INI TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
APF_DATA_FIM TIMESTAMP,
APF_INICIADA DECIMAL(18,5) DEFAULT 1.0,
APF_REFUGADO DECIMAL(18,5),
APF_FINALIZADAS DECIMAL(18,5),
APF_CANCELADO CHAR(1) default 'N',
APF_MOTIVOCANCELAMENTO VARCHAR (60),
EQP_CODIGO INTEGER ,	
CONSTRAINT PK_APONTAMENTO_FAB PRIMARY KEY (APF_CODIGO),
CONSTRAINT FK_APF_COLAB FOREIGN KEY (COL_CODIGO) REFERENCES COLABORADOR (COL_CODIGO),
CONSTRAINT FK_APF_FAB FOREIGN KEY (FAB_CODIGO) REFERENCES FABRICACAO (FAB_CODIGO),
CONSTRAINT FK_APF_EQUIPA FOREIGN KEY (EQP_CODIGO) REFERENCES EQUIPAMENTO (EQP_CODIGO)
);

commit work;

COMMENT ON TABLE APONTAMENTO_FAB IS 'CADASTRO DOS APONTAMENTO DE PRODUCAO';
COMMENT ON COLUMN APONTAMENTO_FAB.APF_CODIGO IS 'CHAVE IDENTIFICADOR DA TABELA APONTAMENTO_FAB';
COMMENT ON COLUMN APONTAMENTO_FAB.FAB_CODIGO IS 'CHAVE DE REFERENCIA DA TABELA FABRICACAO';
COMMENT ON COLUMN APONTAMENTO_FAB.COL_CODIGO IS 'CHAVE DE REFERENCIA DA TABELA COLABORADOR';
COMMENT ON COLUMN APONTAMENTO_FAB.APF_DATA_INI IS 'DATA INICIO DA OPERACAO';
COMMENT ON COLUMN APONTAMENTO_FAB.APF_DATA_FIM IS 'DATA FIM DA OPERACAO';
COMMENT ON COLUMN APONTAMENTO_FAB.APF_INICIADA IS 'QUANTIDADE QUE SERA FABRICADA NO APONTAMENTO';
COMMENT ON COLUMN APONTAMENTO_FAB.APF_CANCELADO IS 'APONTAMENTO FOI CANCELADO SE FOR S';
COMMENT ON COLUMN APONTAMENTO_FAB.APF_MOTIVOCANCELAMENTO IS 'MOTIVO DE CANCELAMENTO';
COMMENT ON COLUMN APONTAMENTO_FAB.APF_REFUGADO IS 'AO FINALIZAR QUANTO FORAM REFUGADAS';
COMMENT ON COLUMN APONTAMENTO_FAB.APF_FINALIZADAS IS 'AO FINALIZAR QUANTOS FORAM REALMENTE FINALIZADAS';
COMMENT ON COLUMN APONTAMENTO_FAB.EQP_CODIGO IS 'CHAVE DE REFERENCIA DA TABELA DE EQUIPAMENTO- EQUIPAMENTO USADO';


CREATE SEQUENCE GEN_APONTAMENTO_FAB;



CREATE TABLE OCORRENCIA_EVENTO (
OCE_CODIGO INTEGER NOT NULL,
OCO_CODIGO INTEGER ,
FAB_CODIGO INTEGER ,
APF_CODIGO INTEGER ,
COL_CODIGO INTEGER ,
OCE_ESTORNO INTEGER,
OCE_MOTIVO VARCHAR(60),
OCE_DATAOCORRENCIA TIMESTAMP,
OCE_DATAPREVISAO TIMESTAMP,
OCE_DATAFIM TIMESTAMP,
OCE_COMENTARIO VARCHAR(100),
CONSTRAINT PK_OCORRENCIA_EVE PRIMARY KEY (OCE_CODIGO),
CONSTRAINT FK_OCE_FAB FOREIGN KEY (FAB_CODIGO) REFERENCES FABRICACAO (FAB_CODIGO),
CONSTRAINT FK_OCE_APF FOREIGN KEY (APF_CODIGO) REFERENCES APONTAMENTO_FAB (APF_CODIGO),
CONSTRAINT FK_OCE_COL FOREIGN KEY (COL_CODIGO) REFERENCES COLABORADOR (COL_CODIGO),
CONSTRAINT FK_OCE_OCO FOREIGN KEY (OCO_CODIGO) REFERENCES OCORRENCIA (OCO_CODIGO)
);

--CREATE SEQUENCE 

CREATE SEQUENCE GEN_OCORRENCIA_EVENTO;

commit work;

COMMENT  ON TABLE OCORRENCIA_EVENTO IS 'OCORRENCIAS NO PROCESSO DE PRODUCAO DO PRODUTO' ;
COMMENT ON COLUMN OCORRENCIA_EVENTO.OCE_CODIGO IS 'IDENTIFICADOR DO EVENTO DA OCORRENCIA';
COMMENT ON COLUMN OCORRENCIA_EVENTO.FAB_CODIGO IS 'CHAVE DE REFERENCIA FABRICACAO';
COMMENT ON COLUMN OCORRENCIA_EVENTO.COL_CODIGO IS 'CHAVE DE REFERENCIA DE COLABORADORES';
COMMENT ON COLUMN ocorrencia_evento.APF_CODIGO IS 'CHAVE DE REFERENCIA DE APONTAMENTO_FAB';
COMMENT ON COLUMN OCORRENCIA_EVENTO.OCO_CODIGO IS 'CHAVE DE REFERENCIA DA OCORRENCIA';
COMMENT ON COLUMN OCORRENCIA_EVENTO.OCE_ESTORNO IS 'QUANTIDADE DE ESTORNO QUE OCORREU';
COMMENT ON COLUMN OCORRENCIA_EVENTO.OCE_MOTIVO IS 'MOTIVO - DESCRICAO DA OCORRENCIAS';
COMMENT ON COLUMN OCORRENCIA_EVENTO.OCE_DATAOCORRENCIA IS 'DATA DE QUANDO COMEÇOU A  OCORRENCIA';
COMMENT ON COLUMN OCORRENCIA_EVENTO.OCE_DATAFIM IS 'DATA DE QUANDO FOI RESOLVIDO/ CONTORNADO';
COMMENT ON COLUMN OCORRENCIA_EVENTO.OCE_DATAPREVISAO IS 'QUANDO VOLTARA EM PRODUCAO, CASO PAROU';
COMMENT ON COLUMN OCORRENCIA_EVENTO.OCE_COMENTARIO IS 'COMO FOI RESOLVIDO O OCORRIDO';




