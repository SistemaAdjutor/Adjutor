
UPDATE  VERSAOSISTEMA 
SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.531',
       VERSAOSISTEMA.DATA   = '20.03.2019',
	    VERSAO = '3.0.9.531'
 where VERSAOSISTEMA.CODIGO = 1;

 commit work;


ALTER TABLE PED_IT01 ADD PRF_DTPENDENCIA TIMESTAMP ;
COMMENT ON COLUMN PED_IT01.PRF_DTPENDENCIA IS 'DATA/HORA DA PENDENCIA';


UPDATE PED_IT01
SET PRF_DTPENDENCIA = (SELECT PED_DTENTRADA FROM PED0000 PED WHERE PED.PED_CODIGO = PED_IT01.PED_CODIGO AND PED.EMP_CODIGO = PED_IT01.EMP_CODIGO)  
WHERE PRF_QTDEPEND > 0;

COMMIT WORK ;

INSERT INTO PRD_UNIDADE VALUES (34,34,'S50','SACO 50','001');
INSERT INTO PRD_UNIDADE VALUES (35,35,'SO','SACO','001'); 
INSERT INTO PRD_UNIDADE VALUES (36,36,'MH','MILHEIRO','001');
INSERT INTO PRD_UNIDADE VALUES (37,37,'TON','TONELADA','001');
INSERT INTO PRD_UNIDADE VALUES (38,38,'CA','CAIXA','001');

commit work;


UPDATE TRP0000
SET TRP_ATIVO = 'S' 
WHERE  (TRP_ATIVO = 'A') OR TRP_ATIVO = '' OR TRP_ATIVO IS NULL;

COMMIT WORK;


ALTER TABLE PRMT0001 ADD PMT_OP_SEMAPONTA VARCHAR(1);
COMMENT ON COLUMN PRMT0001.PMT_OP_SEMAPONTA IS 'CONCLUIR ORDEM PRODUCAO SEM NENHUM APOONTAMENTO';

UPDATE PRMT0001
SET PMT_OP_SEMAPONTA = 'N';

commit work;

SET TERM ^ ;
CREATE OR ALTER PROCEDURE SUM_INADIMPLENCIA (EMP_CODIGO VARCHAR(3), DATA_INICIO DATE, DATA_FIM DATE, TIPOPERIODO INTEGER)
/**  tipo periodo Diário = 0 ; Semanal = 1; Mensal  = 2; Bimestral = 3; Trimestral = 4;;Semestral = 5;Anual = 6  **/
RETURNS (  
 CLASDATA VARCHAR(10),
 DIAS INTEGER,
 VALORPEND NUMERIC(12,4),
 TITULOS INTEGER,
 VENDAS NUMERIC(12,4),
 INDICE NUMERIC(12,2)
 )
 as
DECLARE VARIABLE mes integer;
DECLARE VARIABLE ano integer;
DECLARE VARIABLE tDIAS INTEGER;
DECLARE VARIABLE tVALORPEND NUMERIC(12,4);
DECLARE VARIABLE tTITULOS INTEGER;
DECLARE VARIABLE tVENDAS NUMERIC(12,4);
declare variable achou SMALLINT;
BEGIN
  dias = 0;
  valorpend = 0 ;
  titulos = 0 ;
  vendas = 0 ;
 mes =  EXTRACT(MONTH FROM DATA_FIM);
 ano = extract(year FROM DATA_FIM);
 achou = 1;

 while (achou=1 ) do
 begin
    tdias = 0;
    tvalorpend = 0;
    ttitulos = 0 ;
    tvendas = 0;
    indice = 0 ;
    SELECT       
     COALESCE(sum(datediff(day, fpc_vencto,CURRENT_DATE)),0) dias,  COALESCE(sum(pc.FPC_VLPARC),0) valorpend, 
     COALESCE(count(*),0) qtde 
     from FAT0000 ft                                                                                                                                                                   
     INNER JOIN FAT_PC01 pc ON (ft.FAT_CODIGO = pc.FAT_CODIGO)                                                                
     WHERE fpc_STATUS = 'Pendente'                                                                                          
     AND fpc_vencto <= CURRENT_DATE   
     --AND fpc_vencto BETWEEN :data_inicio AND :data_fim
     AND extract( month FROM  fpc_vencto) = :mes
     AND EXTRACT(YEAR FROM fpc_vencto) = :ano
     AND (ft.EMP_CODIGO = :emp_codigo OR :emp_codigo = '999')
    --- GROUP BY 1
    -- HAVING sum(pc.FPC_VLPARC)  > 0
     ORDER BY 3,2
     INTO  :tDIAS, :tVALORPEND, :tTITULOS;
     
     SELECT coalesce(sum(pc.FPC_VLPARC),0) FROM FAT_PC01 pc 
        WHERE extract( month FROM  fpc_vencto) = :MES
        AND EXTRACT(YEAR FROM fpc_vencto) = :ano
        AND FPC_STATUS <> 'Excluída'
          AND (pc.EMP_CODIGO = :emp_codigo OR :emp_codigo = '999')
        INTO :tvendas;
        dias = dias + tdias;
        valorpend = valorpend+ tvalorpend;
        titulos = titulos + ttitulos;
        vendas = vendas + tvendas;

        clasdata = cast(mes AS varchar(2))||'/'|| cast(ano AS varchar(4) );
        IF ((:tipoperiodo = 2)  /* mensal */
        OR  (:tipoperiodo = 3 AND :mes IN (2,4,6,8,10,12)) /* bimestral */
        OR (:tipoperiodo = 4 AND :mes IN (3,6,9,12))  /* trimestral */
        OR (:tipoperiodo = 5 AND :mes IN (6,12))
        OR (:tipoperiodo = 6 AND :mes = 1)) /* ANUAL */
        THEN 
        BEGIN
           IF (:vendas > 0  AND :valorpend > 0 )  THEN 
                   indice = :valorpend/:vendas *100;
               clasdata =
               CASE
                WHEN (:tipoperiodo = 2) THEN cast(mes AS varchar(2))||'/'|| cast(ano AS varchar(4) )
                WHEN (:tipoperiodo = 3) THEN 
                       CASE 
                         WHEN (mes = 2) THEN  '1 BI/'|| cast(ano AS varchar(4) ) 
                         WHEN (mes = 4) THEN '2 BI/'|| cast(ano AS varchar(4) )
                         WHEN (mes = 6) THEN  '3 BI/'|| cast(ano AS varchar(4) )
                         WHEN (mes = 8) THEN '4 BI/'|| cast(ano AS varchar(4) )
                         WHEN (mes = 10) THEN  '5 BI/'|| cast(ano AS varchar(4) )
                         WHEN (mes = 12) THEN '6 BI/'|| cast(ano AS varchar(4) )
                    END
             WHEN (:tipoperiodo = 4) THEN 
                       CASE 
                         WHEN (mes = 3) THEN  '1 TRI/'|| cast(ano AS varchar(4) ) 
                         WHEN (mes = 6) THEN '2 TRI/'|| cast(ano AS varchar(4) )
                         WHEN (mes = 9) THEN  '3 TRI/'|| cast(ano AS varchar(4) )
                         WHEN (mes = 12) THEN '4 TRI/'|| cast(ano AS varchar(4) )
                       END
               WHEN (:tipoperiodo = 5) THEN 
                       CASE 
                         WHEN (mes = 6) THEN '1 SEM/'|| cast(ano AS varchar(4) )
                         WHEN (mes = 12) THEN '2 SEM/'|| cast(ano AS varchar(4) )
                       END
               WHEN (:tipoperiodo = 6) THEN  cast(ano AS varchar(4) )
            END;
           suspend;
          dias = 0;
          valorpend = 0 ;
          titulos = 0 ;
          vendas = 0 ;
 
        END
        if ((mes = EXTRACT(MONTH FROM DATA_INICIO)) AND (ano = EXTRACT(YEAR FROM DATA_INICIO))) then
            achou = 0;
        IF (mes = 1 ) THEN 
        BEGIN
            mes = 12;
            ano = ano -1;
        END
        else
            mes = mes - 1;                 
     
 END         
END  
^
SET TERM ; ^

/* */

SET TERM ^ ;

CREATE OR ALTER PROCEDURE SUMARIZACAO_PRODUTO_SALDO_EST (EMP_CODIGO VARCHAR(3))
RETURNS (
    CODIGO VARCHAR(20),
    QTDE decimal(18,4),
    UNIDADE VARCHAR(7),
    PRODUTO VARCHAR(100),
    RANQ INTEGER,
    ACUMULADO decimal(18,4),
    PERC_ACUMULADO decimal(18,4),
    SHAREMARKETINDIVIDUAL decimal(18,4)
)
AS
declare variable n integer;
declare variable valortotal decimal(18,4);
begin
   n = 0;
   acumulado = 0;
   ranq = 0 ;
   perc_acumulado = 0 ;
   if (:EMP_CODIGO = '') then
    emp_codigo = '999';
  
    SELECT SUM(KAS_SALDO)  FROM PRD0000 PR INNER JOIN KARDEX_ALMOX_SALDO KAS ON (KAS.PRD_CODIGO = PR.PRD_CODIGO)
    WHERE KAS_SALDO > 0
    AND (PR.EMP_CODIGO =  :EMP_CODIGO or :emp_codigo = '999')
    INTO :valortotal ;
  
   FOR 
    SELECT SUM(KAS_SALDO), PR.PRD_REFER , PR.PRD_DESCRI as PRODUTOS, prd_und  
    FROM PRD0000 PR INNER JOIN KARDEX_ALMOX_SALDO KAS ON (KAS.PRD_CODIGO = PR.PRD_CODIGO)
    WHERE KAS_SALDO > 0
    AND (PR.EMP_CODIGO = :EMP_CODIGO or :emp_codigo = '999')
    GROUP BY 2,3,4
    order by 1 desc
     into :qtde,:codigo, :produto, :unidade
   do
     begin
       n = n +1;
       ranq = n;
       ShareMarketIndividual = (qtde/ valortotal)*100;
       acumulado = acumulado + qtde;
        perc_acumulado = (acumulado/ valortotal)*100;
       suspend;
     end
    
end
^

SET TERM ; ^

SET TERM ^ ;
CREATE OR ALTER PROCEDURE SUMARIZACAO_TIPO_SALDO_EST (EMP_CODIGO VARCHAR(3))
RETURNS (
    CODIGO VARCHAR(20),
    QTDE DECIMAL,   
    TIPO VARCHAR(100),
    RANQ INTEGER,
    ACUMULADO decimal(18,4),
    PERC_ACUMULADO decimal(18,4),
    SHAREMARKETINDIVIDUAL decimal(18,4)
)
AS
declare variable n integer;
declare variable valortotal decimal(18,4);
begin
   n = 0;
   acumulado = 0;
   ranq = 0 ;
   perc_acumulado = 0 ;
   if (:EMP_CODIGO = '') then
    emp_codigo = '999';
  
    SELECT SUM(KAS_SALDO)  FROM PRD0000 PR INNER JOIN KARDEX_ALMOX_SALDO KAS ON (KAS.PRD_CODIGO = PR.PRD_CODIGO)
    WHERE KAS_SALDO > 0
    AND (PR.EMP_CODIGO =  :EMP_CODIGO or :emp_codigo = '999')
    INTO :valortotal ;
  
   FOR 
    SELECT SUM(KAS_SALDO), TP.PTI_CODIGO , TP.PTI_DESCRI
    FROM PRD0000 PR INNER JOIN KARDEX_ALMOX_SALDO KAS ON (KAS.PRD_CODIGO = PR.PRD_CODIGO)
    JOIN PRD_TIPO TP ON (TP.PTI_CODIGO = PR.PTI_CODIGO)
    WHERE KAS_SALDO > 0
    AND (PR.EMP_CODIGO = :EMP_CODIGO or :EMP_CODIGO = '999')
    GROUP BY 2,3
    order by 1 desc
     into :qtde,:codigo, :tipo
   do
     begin
       n = n +1;
       ranq = n;
       ShareMarketIndividual = (qtde/ valortotal)*100;
       acumulado = acumulado + qtde;
       perc_acumulado = (acumulado/ valortotal)*100;
       suspend;
     end   
end
^
SET TERM ; ^

SET TERM ^ ;
CREATE OR ALTER PROCEDURE SUMARIZACAO_GRUPO_SALDO_EST (EMP_CODIGO VARCHAR(3))
RETURNS (
    CODIGO VARCHAR(20),
    QTDE DECIMAL,    
    GRUPO VARCHAR(100),
    RANQ INTEGER,
    ACUMULADO decimal(18,4),
    PERC_ACUMULADO decimal(18,4),
    SHAREMARKETINDIVIDUAL decimal(18,4)
)
AS
declare variable n integer;
declare variable valortotal decimal(18,4);
begin
   n = 0;
   acumulado = 0;
   ranq = 0 ;
   perc_acumulado = 0 ;
   if (:EMP_CODIGO = '') then
    emp_codigo = '999';
  
    SELECT SUM(KAS_SALDO)  FROM PRD0000 PR INNER JOIN KARDEX_ALMOX_SALDO KAS ON (KAS.PRD_CODIGO = PR.PRD_CODIGO)
    WHERE KAS_SALDO > 0
    AND (PR.EMP_CODIGO =  :EMP_CODIGO or :emp_codigo = '999')
    INTO :valortotal ;
  
   FOR 
    SELECT SUM(KAS_SALDO), gr.PGR_CODIGO, PGR_DESCRI
    FROM PRD0000 PR INNER JOIN KARDEX_ALMOX_SALDO KAS ON (KAS.PRD_CODIGO = PR.PRD_CODIGO)
    JOIN PRD_GRUPO gr ON (gr.PGR_CODIGO = PR.PGR_CODIGO)
    WHERE KAS_SALDO > 0
    AND (PR.EMP_CODIGO = :EMP_CODIGO or :EMP_CODIGO = '999')
    GROUP BY 2,3
    order by 1 desc
     into :qtde, :codigo, :GRUPO
   do
     begin
       n = n +1;
       ranq = n;
       ShareMarketIndividual = (qtde/ valortotal)*100;
       acumulado = acumulado + qtde;
       perc_acumulado = (acumulado/ valortotal)*100;
       suspend;
     end
    
end
^
SET TERM ; ^

SET TERM ^ ;
CREATE OR ALTER PROCEDURE SUMARIZACAO_VALOR_EST_CMEDIO (EMP_CODIGO VARCHAR(3))
RETURNS (
	CODIGO VARCHAR(20),
	VALOR decimal(18,4),
	QTDE decimal(18,4),
	CUSTOMEDIO decimal(18,4),
	UNIDADE VARCHAR(7),
	PRODUTO VARCHAR(100),
	RANQ INTEGER,
	ACUMULADO decimal(18,4),
	PERC_ACUMULADO decimal(18,4),
	SHAREMARKETINDIVIDUAL decimal(18,4)
)
AS
declare variable n integer;
declare variable valortotal decimal(18,4);
begin
   n = 0;
   acumulado = 0;
   ranq = 0 ;
   perc_acumulado = 0 ;
  if (:EMP_CODIGO = '') then
   EMP_CODIGO = '999';
   
    /* VALOR TOTAL DO ESTOQUE */  
    SELECT SUM(KAS_SALDO*PRD_PMEDIO)  
	FROM PRD0000 PR INNER JOIN KARDEX_ALMOX_SALDO KAS ON (KAS.PRD_CODIGO = PR.PRD_CODIGO)
    WHERE KAS_SALDO > 0
    AND (PR.EMP_CODIGO =:EMP_CODIGO OR :EMP_CODIGO = '999')
    INTO :valortotal ;

   FOR 
	SELECT SUM(KAS_SALDO*PRD_PMEDIO), SUM(KAS_SALDO),PRD_PMEDIO , PR.PRD_REFER , PR.PRD_DESCRI as PRODUTOS, prd_und
	FROM PRD0000 PR INNER JOIN KARDEX_ALMOX_SALDO KAS ON (KAS.PRD_CODIGO = PR.PRD_CODIGO)
	WHERE KAS_SALDO > 0
	AND (PR.EMP_CODIGO = :EMP_CODIGO OR :EMP_CODIGO = '999')
	GROUP BY 3,4,5,6
	order by 1 desc
	 into :valor, :QTDE,:CUSTOMEDIO, :codigo, :produto, :unidade
   do
	 begin
	   --valor =  QTDE * CUSTOMEDIO ;
	   n = n +1;
	   ranq = n;
	   ShareMarketIndividual = (valor/ valortotal)*100;
	   acumulado = acumulado + VALOR;
		perc_acumulado = (acumulado/ valortotal)*100;
	   suspend;
	 end  
end
^
SET TERM ; ^

SET TERM ^ ;
CREATE OR ALTER PROCEDURE SUMARIZACAO_VALOR_CMEDIO_TIPO (EMP_CODIGO VARCHAR(3))
RETURNS (
	CODIGO VARCHAR(20),
	VALOR decimal(18,4),
	QTDE decimal(18,4),
	TIPO VARCHAR(100),
	RANQ INTEGER,
	ACUMULADO decimal(18,4),
	PERC_ACUMULADO decimal(18,4),
	SHAREMARKETINDIVIDUAL decimal(18,4)
)
AS
declare variable n integer;
declare variable valortotal decimal(18,4);
begin
   n = 0;
   acumulado = 0;
   ranq = 0 ;
   perc_acumulado = 0 ;
  if (:EMP_CODIGO = '') then
   EMP_CODIGO = '999';
   
    /* VALOR TOTAL DO ESTOQUE */  
    SELECT SUM(KAS_SALDO*PRD_PMEDIO)  
	FROM PRD0000 PR INNER JOIN KARDEX_ALMOX_SALDO KAS ON (KAS.PRD_CODIGO = PR.PRD_CODIGO)
    WHERE KAS_SALDO > 0
    AND (PR.EMP_CODIGO =:EMP_CODIGO OR :EMP_CODIGO = '999')
    INTO :valortotal ;

       FOR 
		SELECT SUM(KAS_SALDO*PRD_PMEDIO), SUM(KAS_SALDO), TP.PTI_CODIGO , TP.PTI_DESCRI
        FROM PRD0000 PR 
		JOIN KARDEX_ALMOX_SALDO KAS ON (KAS.PRD_CODIGO = PR.PRD_CODIGO)
		JOIN PRD_TIPO TP ON (TP.PTI_CODIGO = PR.PTI_CODIGO)
        WHERE KAS_SALDO > 0
        AND (PR.EMP_CODIGO = :EMP_CODIGO OR :EMP_CODIGO = '999')
		GROUP BY 3,4
        order by 1 DESC
         into :valor, :QTDE,:codigo, :tipo
       do
         begin
           --valor =  QTDE * CUSTOMEDIO ;
           n = n +1;
           ranq = n;
           ShareMarketIndividual = (valor/ valortotal)*100;
           acumulado = acumulado + VALOR;
           perc_acumulado = (acumulado/ valortotal)*100;
           suspend;
         end  
end
^
SET TERM ; ^

SET TERM ^ ;
CREATE OR ALTER PROCEDURE SUMARIZACAO_VALOR_CMEDIO_GRUPO (EMP_CODIGO VARCHAR(3))
RETURNS (
	CODIGO VARCHAR(20),
	VALOR decimal(18,4),
	QTDE decimal(18,4),
	GRUPO VARCHAR(100),
	RANQ INTEGER,
	ACUMULADO decimal(18,4),
	PERC_ACUMULADO decimal(18,4),
	SHAREMARKETINDIVIDUAL decimal(18,4)
)
AS
declare variable n integer;
declare variable valortotal decimal(18,4);
begin
   n = 0;
   acumulado = 0;
   ranq = 0 ;
   perc_acumulado = 0 ;
  if (:EMP_CODIGO = '') then
   EMP_CODIGO = '999';
   
    /* VALOR TOTAL DO ESTOQUE */  
    SELECT SUM(KAS_SALDO*PRD_PMEDIO)  
	FROM PRD0000 PR INNER JOIN KARDEX_ALMOX_SALDO KAS ON (KAS.PRD_CODIGO = PR.PRD_CODIGO)
    WHERE KAS_SALDO > 0
    AND (PR.EMP_CODIGO =:EMP_CODIGO OR :EMP_CODIGO = '999')
    INTO :valortotal ;

       FOR 
		SELECT SUM(KAS_SALDO*PRD_PMEDIO), SUM(KAS_SALDO), gr.PGR_CODIGO, PGR_DESCRI
        FROM PRD0000 PR 
		JOIN KARDEX_ALMOX_SALDO KAS ON (KAS.PRD_CODIGO = PR.PRD_CODIGO)
		JOIN PRD_GRUPO gr ON (gr.PGR_CODIGO = PR.PGR_CODIGO)
        WHERE KAS_SALDO > 0
        AND (PR.EMP_CODIGO = :EMP_CODIGO OR :EMP_CODIGO = '999')
		GROUP BY 3,4
        order by 1 DESC
         into :valor, :QTDE,:codigo, :GRUPO
       do
         begin
           --valor =  QTDE * CUSTOMEDIO ;
           n = n +1;
           ranq = n;
           ShareMarketIndividual = (valor/ valortotal)*100;
           acumulado = acumulado + VALOR;
           perc_acumulado = (acumulado/ valortotal)*100;
           suspend;
         end  
end
^
SET TERM ; ^

SET TERM ^ ;
CREATE OR ALTER PROCEDURE SUMARIZACAO_VALOR_EST_CUSTOLIQ (EMP_CODIGO VARCHAR(3))
RETURNS (
	CODIGO VARCHAR(20),
	VALOR decimal(18,4),
	QTDE decimal(18,4),
	CUSTOLIQUIDO decimal(18,4),
	UNIDADE VARCHAR(7),
	PRODUTO VARCHAR(100),
	RANQ INTEGER,
	ACUMULADO decimal(18,4),
	PERC_ACUMULADO decimal(18,4),
	SHAREMARKETINDIVIDUAL decimal(18,4)
)
AS
declare variable n integer;
declare variable valortotal decimal(18,4);
begin
   n = 0;
   acumulado = 0;
   ranq = 0 ;
   perc_acumulado = 0 ;
   /* 999 todas as empresas */
   if (:EMP_CODIGO = '') then
     EMP_CODIGO = '999';
   
   
  SELECT SUM(KAS_SALDO*PRD_PCUSTO)  FROM PRD0000 PR INNER JOIN KARDEX_ALMOX_SALDO KAS ON (KAS.PRD_CODIGO = PR.PRD_CODIGO)
  WHERE KAS_SALDO > 0
  AND (PR.EMP_CODIGO = :EMP_CODIGO or :EMP_CODIGO = '999')
  INTO :valortotal ;
    
   FOR 
	SELECT SUM(KAS_SALDO*PRD_PCUSTO), SUM(KAS_SALDO),PRD_PCUSTO , PR.PRD_REFER , PR.PRD_DESCRI as PRODUTOS, prd_und
	FROM PRD0000 PR INNER JOIN KARDEX_ALMOX_SALDO KAS ON (KAS.PRD_CODIGO = PR.PRD_CODIGO)
	WHERE KAS_SALDO > 0
	AND (PR.EMP_CODIGO = :EMP_CODIGO OR :EMP_CODIGO = '999')  
	GROUP BY 3,4,5,6
	order by 1 desc
	 into :valor,:QTDE,:CUSTOLIQUIDO, :codigo, :produto, :unidade
   do
	 begin
	   --valor =  QTDE * CUSTOLIQUIDO ;
	   n = n +1;
	   ranq = n;
	   ShareMarketIndividual = (valor/ valortotal)*100;
	   acumulado = acumulado + VALOR;
		perc_acumulado = (acumulado/ valortotal)*100;
	   suspend;
	 end
end
^
SET TERM ; ^

SET TERM ^ ;
CREATE OR ALTER PROCEDURE SUMARIZACAO_VALOR_CUSTOLIQ_TIPO (EMP_CODIGO VARCHAR(3))
RETURNS (
	CODIGO VARCHAR(20),
	VALOR decimal(18,4),
	QTDE decimal(18,4),
	TIPO VARCHAR(100),
	RANQ INTEGER,
	ACUMULADO decimal(18,4),
	PERC_ACUMULADO decimal(18,4),
	SHAREMARKETINDIVIDUAL decimal(18,4)
)
AS
declare variable n integer;
declare variable valortotal decimal(18,4);
begin
   n = 0;
   acumulado = 0;
   ranq = 0 ;
   perc_acumulado = 0 ;
   /* 999 todas as empresas */
   if (:EMP_CODIGO = '') then
     EMP_CODIGO = '999';
   
   
  SELECT SUM(KAS_SALDO*PRD_PCUSTO)  FROM PRD0000 PR INNER JOIN KARDEX_ALMOX_SALDO KAS ON (KAS.PRD_CODIGO = PR.PRD_CODIGO)
  WHERE KAS_SALDO > 0
  AND (PR.EMP_CODIGO = :EMP_CODIGO or :EMP_CODIGO = '999')
  INTO :valortotal ;
    
   FOR 
	SELECT SUM(KAS_SALDO*PRD_PCUSTO), SUM(KAS_SALDO), TP.PTI_CODIGO , TP.PTI_DESCRI
	FROM PRD0000 PR INNER JOIN KARDEX_ALMOX_SALDO KAS ON (KAS.PRD_CODIGO = PR.PRD_CODIGO)
	JOIN PRD_TIPO TP ON (TP.PTI_CODIGO = PR.PTI_CODIGO)
	WHERE KAS_SALDO > 0
	AND (PR.EMP_CODIGO = :EMP_CODIGO OR :EMP_CODIGO = '999')  
	GROUP BY 3,4
	order by 1 desc
	 into :valor, :QTDE,:codigo, :tipo
   do
	 begin
	   --valor =  QTDE * CUSTOLIQUIDO ;
	   n = n +1;
	   ranq = n;
	   ShareMarketIndividual = (valor/ valortotal)*100;
	   acumulado = acumulado + VALOR;
		perc_acumulado = (acumulado/ valortotal)*100;
	   suspend;
	 end
end
^
SET TERM ; ^

SET TERM ^ ;
CREATE OR ALTER PROCEDURE SUMARIZACAO_VALOR_CLIQ_GRUPO (EMP_CODIGO VARCHAR(3))
RETURNS (
	CODIGO VARCHAR(20),
	VALOR decimal(18,4),
	QTDE decimal(18,4),
	GRUPO VARCHAR(100),
	RANQ INTEGER,
	ACUMULADO decimal(18,4),
	PERC_ACUMULADO decimal(18,4),
	SHAREMARKETINDIVIDUAL decimal(18,4) /* FATIA DO MERCADO */ 
)
AS
declare variable n integer;
declare variable valortotal decimal(18,4);
begin
   n = 0;
   acumulado = 0;
   ranq = 0 ;
   perc_acumulado = 0 ;
   /* 999 todas as empresas */
   if (:EMP_CODIGO = '') then
     EMP_CODIGO = '999';
   
   
  SELECT SUM(KAS_SALDO*PRD_PCUSTO)  FROM PRD0000 PR INNER JOIN KARDEX_ALMOX_SALDO KAS ON (KAS.PRD_CODIGO = PR.PRD_CODIGO)
  WHERE KAS_SALDO > 0
  AND (PR.EMP_CODIGO = :EMP_CODIGO or :EMP_CODIGO = '999')
  INTO :valortotal ;
    
   FOR 
	SELECT SUM(KAS_SALDO*PRD_PCUSTO), SUM(KAS_SALDO),  gr.PGR_CODIGO, PGR_DESCRI
	FROM PRD0000 PR INNER JOIN KARDEX_ALMOX_SALDO KAS ON (KAS.PRD_CODIGO = PR.PRD_CODIGO)
	JOIN PRD_GRUPO gr ON (gr.PGR_CODIGO = PR.PGR_CODIGO)
	WHERE KAS_SALDO > 0
	AND (PR.EMP_CODIGO = :EMP_CODIGO OR :EMP_CODIGO = '999')  
	GROUP BY 3,4
	order by 1 desc
	 into :valor, :QTDE,:codigo, :GRUPO
   do
	 begin
	   --valor =  QTDE * CUSTOLIQUIDO ;
	   n = n +1;
	   ranq = n;
	   ShareMarketIndividual = (valor/ valortotal)*100;
	   acumulado = acumulado + VALOR;
		perc_acumulado = (acumulado/ valortotal)*100;
	   suspend;
	 end
end
^
SET TERM ; ^


SET TERM ^ ;
CREATE OR ALTER PROCEDURE PCD_FLUXO_CAIXA(DATA_INICIAL DATE, DATA_FINAL DATE, CODIGO_EMPRESA VARCHAR(3), SALDOBANCO VARCHAR(1), MENSAL VARCHAR(1))
/* saldobanco - 1 - verifica saldo inicial do banco */
RETURNS (
    DATA_MOVIMENTO DATE,
    VALOR_PREVISAO_RECEBER NUMERIC(18,2),
    VALOR_RECEBIDO NUMERIC(18,2),
    VALOR_RECEBER NUMERIC(18,2),
    VALOR_DESCONTADO NUMERIC(18,2),
    VALOR_PREVISAO_PAGAR NUMERIC(18,2),
    VALOR_PAGO NUMERIC(18,2),
    VALOR_PAGAR NUMERIC(18,2),
    SALDO_DO_DIA_PREV NUMERIC(18,2),
    SALDO_DO_DIA_REAL NUMERIC(18,2),
    SALDO_ACUMULADO_PREV NUMERIC(18,2),
    SALDO_ACUMULADO_REAL NUMERIC(18,2),
    SALDO_INICIAL_PREV NUMERIC(18,2),
    SALDO_INICIAL_REAL NUMERIC(18,2)
)
AS
DECLARE VARIABLE DATA_PROCESSO DATE;
DECLARE VARIABLE DATA_CONCILIACAO DATE;
DECLARE VARIABLE SALDO_BANCO NUMERIC(18,2);

DECLARE VARIABLE SALDO_INI_PREV_TEMP NUMERIC(18,2);
DECLARE VARIABLE SALDO_INI_REAL_TEMP NUMERIC(18,2);

DECLARE VARIABLE RECEBER_BANCO NUMERIC(18,2);
DECLARE VARIABLE PAGAR_BANCO NUMERIC(18,2);

DECLARE VARIABLE PREVRECEBER_BANCO NUMERIC(18,2);
DECLARE VARIABLE PREVPAGAR_BANCO NUMERIC(18,2);

DECLARE VARIABLE BAN_CODIGO VARCHAR(4);
DECLARE VARIABLE BANCO_EXCLUSIVO VARCHAR(2);
begin
   /*Inicializa variaveis*/
   DATA_PROCESSO        = :DATA_INICIAL;
   SALDO_DO_DIA_PREV    = 0;
   SALDO_DO_DIA_REAL    = 0;
   SALDO_ACUMULADO_PREV = 0;
   SALDO_ACUMULADO_REAL = 0;
   SALDO_INICIAL_PREV = 0 ;
   SALDO_INICIAL_REAL = 0 ;
   SALDO_INI_REAL_TEMP = 0 ;
   SALDO_INI_PREV_TEMP = 0 ;
   PREVRECEBER_BANCO = 0 ;
   PREVPAGAR_BANCO = 0 ;
   RECEBER_BANCO = 0 ;
   PAGAR_BANCO = 0 ;
   SELECT BANCOS FROM SHAREDB
   INTO :BANCO_EXCLUSIVO;
   if (SALDOBANCO = 'S') then
   begin
    for
     SELECT BAN_CODIGO, COALESCE(BAN_CONCILIACAO_SALDO,0), BAN_CONCILIACAO_DATA
     FROM BAN0000 
     WHERE 
     /* BAN_FLUXOCAIXA = 'S'  SEM VAI PEGAR TODOS AS CONTAS
     AND BAN_CONCILIACAO_DATA IS NOT NULL */
      (EMP_CODIGO = :CODIGO_EMPRESA or :CODIGO_EMPRESA = '999' )
     INTO :BAN_CODIGO, :SALDO_BANCO, :DATA_CONCILIACAO
     do
     begin   
	   If (DATA_CONCILIACAO   < DATA_INICIAL) then
	   BEGIN
	    SALDO_INI_PREV_TEMP = SALDO_BANCO + SALDO_INI_PREV_TEMP;
		SALDO_INI_REAL_TEMP = SALDO_BANCO + SALDO_INI_REAL_TEMP;
	   END	
      /* RECEBIDO PELO CONTA BANCO ANTES DO PERIODO E DEPOIS DA CONCILIACAO */ 
        If (DATA_CONCILIACAO + 1  < DATA_INICIAL-1) then
        begin
            /* RECEBIDO */
            SELECT COALESCE(sum(COALESCE(FRE_RECEBIDO,0)),0)
            from FAT_RECEBIMENTO
           WHERE BAN_CODIGO = :BAN_CODIGO
             AND FRE_DATA_RECEBIMENTO BETWEEN :DATA_CONCILIACAO+1 AND  :DATA_INICIAL-1
             and (EMP_CODIGO = :CODIGO_EMPRESA or :CODIGO_EMPRESA = '999')
             INTO :RECEBER_BANCO;
            
            /*PAGO E DEPOSITADO NO BANCOS ANTES DO PERIODO SOLICITADO */
            Select COALESCE(sum(COALESCE(PAG_PAGO,0)),0)
            from PAG_PAGAMENTO
            WHERE BAN_CODIGO = :BAN_CODIGO
             AND PAG_DATA_PAGAMENTO BETWEEN :DATA_CONCILIACAO+1 AND :DATA_INICIAL-1
            and (EMP_CODIGO = :CODIGO_EMPRESA or :CODIGO_EMPRESA = '999')        
            INTO :PAGAR_BANCO;      
            SALDO_INI_REAL_TEMP = SALDO_INI_REAL_TEMP + RECEBER_BANCO - PAGAR_BANCO;
            
            /*  PREVISAO RECEBER */
            Select  COALESCE(sum(COALESCE(FPC_VLPARC,0)),0)
            from FAT_PC01 FT LEFT JOIN BAN0000 B ON (FT.BAN_CODIGO = B.BAN_CODIGO AND  FPC_TIPODOC = 'BL' AND (B.EMP_CODIGO = FT.EMP_CODIGO OR :BANCO_EXCLUSIVO='C'))
            where FPC_EXCLUSAO = 'N'
            and (FPC_VENCTO + COALESCE(BAN_DIASCRED_COBRANCA,0)) BETWEEN :DATA_CONCILIACAO+1 AND  :DATA_INICIAL-1
            and  FT.BAN_CODIGO = :BAN_CODIGO
            and (FT.EMP_CODIGO = :CODIGO_EMPRESA or :CODIGO_EMPRESA = '999')
            INTO :PREVRECEBER_BANCO;            

            /*PREV conta a pagar*/
            Select COALESCE(sum(COALESCE(PPC_VLPARC,0)),0)
              from PAG_PC01
             where PPC_EXCLUSAO = 'N'
               and PPC_VENCTO  BETWEEN :DATA_CONCILIACAO+1 AND  :DATA_INICIAL-1
               and  BAN_CODIGO = :BAN_CODIGO
               and (EMP_CODIGO = :CODIGO_EMPRESA or :CODIGO_EMPRESA = '999')
              INTO :PREVPAGAR_BANCO;            
             
            SALDO_INI_PREV_TEMP =  SALDO_INI_PREV_TEMP +PREVRECEBER_BANCO - PREVPAGAR_BANCO;
        end
        
     end
   end
      /* xunxo - pegar as contas previsão a receber e pagar que não foram colocadas o banco*/
            /* RECEBIDO */
      DATA_CONCILIACAO = '2018-12-31';
     if (DATA_CONCILIACAO <> DATA_INICIAL-1) then
     begin
         PREVPAGAR_BANCO = 0 ;
         PREVRECEBER_BANCO = 0 ;
        /*  PREVISAO RECEBER */
        Select  sum(COALESCE(FPC_VLPARC,0))
        from FAT_PC01 FT 
        where FPC_EXCLUSAO = 'N'
        and FPC_VENCTO  BETWEEN :DATA_CONCILIACAO+1 AND  :DATA_INICIAL-1
        and  ( BAN_CODIGO  is null OR TRIM(BAN_CODIGO) = '' OR BAN_CODIGO = '0000')
        and (FT.EMP_CODIGO = :CODIGO_EMPRESA or :CODIGO_EMPRESA = '999')
        INTO :PREVRECEBER_BANCO;            
    
        /*PREV conta a pagar*/
        Select sum(COALESCE(PPC_VLPARC,0))
          from PAG_PC01
         where PPC_EXCLUSAO = 'N'
           and PPC_VENCTO  BETWEEN :DATA_CONCILIACAO+1 AND  :DATA_INICIAL-1
           and ( BAN_CODIGO  is null OR trim(BAN_CODIGO) = '' OR BAN_CODIGO = '0000')
           and (EMP_CODIGO = :CODIGO_EMPRESA or :CODIGO_EMPRESA = '999')
          INTO :PREVPAGAR_BANCO;            
          
         SALDO_INI_PREV_TEMP =  SALDO_INI_PREV_TEMP +PREVRECEBER_BANCO - PREVPAGAR_BANCO;
    end
   
   /* fim xunxo */
   /* 
   SALDO_INICIAL_PREV = SALDO_INICIAL;
   SALDO_INICIAL_REAL = SALDO_INICIAL; */
   SALDO_ACUMULADO_PREV = SALDO_INI_PREV_TEMP;
   SALDO_ACUMULADO_REAL =  SALDO_INI_REAL_TEMP;
   while (DATA_PROCESSO <= DATA_FINAL) do
    begin
	
     if (SALDOBANCO = 'S') then
     begin
         SALDO_BANCO = 0;
         SELECT SUM(COALESCE(BAN_CONCILIACAO_SALDO,0))
         FROM BAN0000 
         WHERE BAN_CONCILIACAO_DATA  = :DATA_PROCESSO
         /* BAN_FLUXOCAIXA = 'S'  SEM VAI PEGAR TODOS AS CONTAS
         AND BAN_CONCILIACAO_DATA IS NOT NULL */
         AND (EMP_CODIGO = :CODIGO_EMPRESA or :CODIGO_EMPRESA = '999' OR :BANCO_EXCLUSIVO='C')
         INTO :SALDO_BANCO;
         if (SALDO_BANCO is not null ) then
         begin
           SALDO_INI_PREV_TEMP = SALDO_INI_PREV_TEMP + SALDO_BANCO;
           SALDO_INI_REAL_TEMP = SALDO_INI_REAL_TEMP + SALDO_BANCO;
           SALDO_ACUMULADO_PREV = SALDO_ACUMULADO_PREV + SALDO_BANCO;
           SALDO_ACUMULADO_REAL =  SALDO_ACUMULADO_REAL + SALDO_BANCO;
         end
     end
         
        /* para multiempresa (CODIGO_EMPRESA = '999') ******/
        /*Previsão de Receber*/
        Select COALESCE(sum(FPC_VLPARC),0)
        from FAT_PC01 FT LEFT JOIN BAN0000 B ON (FT.BAN_CODIGO = B.BAN_CODIGO AND  FPC_TIPODOC = 'BL' AND (B.EMP_CODIGO = FT.EMP_CODIGO OR :BANCO_EXCLUSIVO='C'))
		where FPC_EXCLUSAO = 'N'
		and (FPC_VENCTO + COALESCE(BAN_DIASCRED_COBRANCA,0)) = :DATA_PROCESSO
		and (FT.EMP_CODIGO = :CODIGO_EMPRESA or :CODIGO_EMPRESA = '999')
		group by  (FPC_VENCTO + COALESCE(BAN_DIASCRED_COBRANCA,0))
		INTO :VALOR_PREVISAO_RECEBER;
                
        /*Recebido*/
        Select COALESCE(sum(FRE_RECEBIDO),0)
        from FAT_RECEBIMENTO
        where FRE_DATA_RECEBIMENTO = :DATA_PROCESSO
          and (EMP_CODIGO = :CODIGO_EMPRESA or :CODIGO_EMPRESA = '999')
        group by FRE_DATA_RECEBIMENTO
         INTO :VALOR_RECEBIDO;

        /*Valor Receber*/
        VALOR_RECEBER = VALOR_PREVISAO_RECEBER - VALOR_RECEBIDO;

        /*duplicatas descontadas*/
        Select COALESCE(sum(FPC_VLPARC),0)
		   from FAT_PC01
		   where FPC_EXCLUSAO = 'N'
		   and FPC_DATADESCTO = :DATA_PROCESSO
		   and FPC_DESCONTADO = 'S'
		   and (EMP_CODIGO = :CODIGO_EMPRESA or :CODIGO_EMPRESA = '999')
		   group by FPC_DATADESCTO
		   INTO :VALOR_DESCONTADO;

        if (:VALOR_PREVISAO_RECEBER IS NULL) then
           VALOR_PREVISAO_RECEBER = 0;
        /**/
        if (:VALOR_RECEBIDO IS NULL) then
           VALOR_RECEBIDO = 0;
        /**/
        if (:VALOR_RECEBER IS NULL) then
           VALOR_RECEBER = 0;
        /**/
        if (:VALOR_DESCONTADO IS NULL) then
           VALOR_DESCONTADO = 0;


        /*PREV conta a pagar*/
        Select COALESCE(sum(PPC_VLPARC),0)
	   from PAG_PC01
	   where PPC_EXCLUSAO = 'N'
		 and PPC_VENCTO =:DATA_PROCESSO
		 and (EMP_CODIGO = :CODIGO_EMPRESA or :CODIGO_EMPRESA = '999')
		 group by PPC_VENCTO
		 INTO:VALOR_PREVISAO_PAGAR;
		 
        /*pago*/
        Select COALESCE(sum(PAG_PAGO),0)
        from PAG_PAGAMENTO
		where PAG_DATA_PAGAMENTO = :DATA_PROCESSO
		and (EMP_CODIGO = :CODIGO_EMPRESA or :CODIGO_EMPRESA = '999')
		group by PAG_DATA_PAGAMENTO
		INTO :VALOR_PAGO;
        /*Valor Pagar*/
        VALOR_PAGAR = VALOR_PREVISAO_PAGAR - VALOR_PAGO;

        /**/
        if (:VALOR_PREVISAO_PAGAR IS NULL) then
           VALOR_PREVISAO_PAGAR = 0;
        /**/
        if (:VALOR_PAGO IS NULL) then
           VALOR_PAGO = 0;
        /**/
        if (:VALOR_PAGAR IS NULL) then
           VALOR_PAGAR = 0;


        /*movimento*/
        DATA_MOVIMENTO = DATA_PROCESSO;
        /*SALDO DO DIA*/
        SALDO_DO_DIA_PREV    = ((VALOR_PREVISAO_RECEBER) - VALOR_PREVISAO_PAGAR);
        SALDO_DO_DIA_REAL    = ((VALOR_RECEBIDO) - VALOR_PAGO);
        
      
        /*SALDO ACUMULADO*/
        SALDO_ACUMULADO_PREV = (SALDO_ACUMULADO_PREV + SALDO_DO_DIA_PREV);
        SALDO_ACUMULADO_REAL = (SALDO_ACUMULADO_REAL + SALDO_DO_DIA_REAL);
		
        if (SALDOBANCO = 'S') then
        begin
         IF ((MENSAL = 'S' AND EXTRACT(DAY FROM DATA_MOVIMENTO )=1  ) OR (MENSAL <> 'S') ) THEN
          begin
            SALDO_INICIAL_PREV = SALDO_INI_PREV_TEMP;
            SALDO_INICIAL_REAL = SALDO_INI_REAL_TEMP;
          end    
          ELSE
		  begin
            SALDO_INICIAL_PREV = 0;
            SALDO_INICIAL_REAL = 0;
		  end	
        end

        SUSPEND;

        /* SALDOS INICIAIS */
        if (SALDOBANCO = 'S') then
        begin
          SALDO_INI_REAL_TEMP = SALDO_ACUMULADO_REAL;
          SALDO_INI_PREV_TEMP = SALDO_ACUMULADO_PREV;
        end
        
        DATA_PROCESSO = DATA_PROCESSO + 1;
        /*inicializa variaveis */
        VALOR_PREVISAO_RECEBER = 0;
        VALOR_RECEBIDO = 0;
        VALOR_RECEBER = 0;
        VALOR_DESCONTADO = 0;
        VALOR_PREVISAO_PAGAR  = 0;
        VALOR_PAGO = 0;
        VALOR_PAGAR = 0;
    end
end
^
SET TERM ; ^

/* SUMARIZACAO_CLIENTE */
SET TERM ^ ;

create or alter procedure SUMARIZACAO_CLIENTE (
    EMP_CODIGO varchar(3),
    DATA_INICIO date,
    DATA_FIM date,
    REGIME integer)
returns (
    CODIGO varchar(18),
    VALOR NUMERIC(12,4),
    CLIENTE varchar(100),  /* NOME DO CLIENTE */
    CONTA integer,
    RANQ integer,                         /* RANK NA CURVA ABC */
    ACUMULADO NUMERIC(9,4),
    SHAREMARKETINDIVIDUAL NUMERIC(9,4),   /* FATIA DO MERCADO */
    PERC_ACUMULADO NUMERIC(9,4),
    MESESCICLO integer,                  /* meses de rentenção */
    INDICEINADIMPLENCIA  NUMERIC(12,2),  /* INDICE da inadimplecia para periodo:  VALOR PENDENTE POR TOTAL DE VENDAS */
    VALORPEND NUMERIC(12,4)              /* VALOR PENDENTE                      */ 
    )
as
declare variable N integer;
declare variable VALORTOTAL decimal(18,4);
begin
   n = 0;
   acumulado = 0;
   ranq = 0 ;
   perc_acumulado = 0 ;
 if (:EMP_CODIGO = '') then
   EMP_CODIGO = '999'; /* MULTIEMPRESA */

   
 if (:REGIME = 0 ) then      /* competencia - EMISSÃO*/
      begin
          select SUM(NF_TOT_NOTA) AS valor
           from NF0001 NF
           JOIN CLI0000 T2 ON (T2.CLI_CODIGO = NF.CLI_CODIGO)
           WHERE NF_EMISSAO  BETWEEN :DATA_INICIO AND :DATA_FIM
            AND NF_TOT_NOTA > 0
            AND NF_CANCELADA <> 'S'
            AND NF_VENDA_FATURADA ='S'
            AND (NF.EMP_CODIGO = :EMP_CODIGO or :EMP_CODIGO = '999')
            INTO :valortotal ;        
       
           FOR 
            SELECT NF.CLI_CODIGO AS codigo,SUM(NF_TOT_NOTA) AS valor,count(*) AS conta, CLI_RAZAO AS cliente,
             DATEDIFF( MONTH, MIN(NF_EMISSAO),MAX(NF_EMISSAO)) as mesesCiclo
            FROM NF0001 NF
            JOIN CLI0000 T2 ON (T2.CLI_CODIGO = NF.CLI_CODIGO)
            WHERE NF_EMISSAO  BETWEEN :DATA_INICIO AND :DATA_FIM
            AND NF_TOT_NOTA > 0
            AND NF_CANCELADA <> 'S'
            AND NF_VENDA_FATURADA ='S'
            AND (NF.EMP_CODIGO =  :EMP_CODIGO OR :EMP_CODIGO = '999')
            GROUP BY NF.CLI_CODIGO, t2.CLI_RAZAO
            order by 2 desc
            
               into :codigo,:valor,:conta, :cliente , :mesesCiclo
           do
             begin
             
                 SELECT       
                       COALESCE(sum(pc.FPC_VLPARC),0) valorpend 
                     from FAT0000 ft                                                                                                                                                                   
                     INNER JOIN FAT_PC01 pc ON (ft.FAT_CODIGO = pc.FAT_CODIGO)                                                                
                     WHERE fpc_STATUS = 'Pendente'                                                                                          
					 AND FPC_EXCLUSAO = 'N'
                     AND FT.CLI_CODIGO = :codigo
                     AND fpc_vencto BETWEEN :data_inicio AND :data_fim
                     AND (ft.EMP_CODIGO = :emp_codigo OR :emp_codigo = '999')
                     INTO  :VALORPEND  ; 
                     
                IF (:valor > 0  AND :valorpend > 0 )  THEN             
                 INDICEINADIMPLENCIA =  valorpend/valor *100;
                ELSE 
                INDICEINADIMPLENCIA =0;
                 
               if (:mesesCiclo= 0) then mesesCiclo = 1;
               n = n +1;
               ranq = n;
               ShareMarketIndividual = (valor/ valortotal)*100;
               acumulado = acumulado + valor;
                perc_acumulado = (acumulado/ valortotal)*100;
               suspend;
             end
        
  end
  else if (:regime = 1) then  /*caixa - VENCIMENTO*/
  begin
  
        SELECT SUM(CASE WHEN (FPC_VLPAGO = 0) OR (FPC_VLPAGO IS NULL) THEN FPC_VLPARC ELSE FPC_VLPAGO END) AS VALOR
        FROM FAT_PC01 FT                                                              
        left join CLI0000 CL on (CL.CLI_CODIGO = fT.CLI_CODIGO)                       
        WHERE FPC_EXCLUSAO <> 'S'
        AND (FT.EMP_CODIGO = :EMP_CODIGO OR :EMP_CODIGO = '999')
        AND FPC_VENCTO BETWEEN :DATA_INICIO AND :DATA_FIM
        INTO :valortotal;
    
        for
        SELECT cl.CLI_CODIGO, SUM(CASE WHEN (ft.FPC_VLPAGO = 0) OR (ft.FPC_VLPAGO IS NULL) THEN ft.FPC_VLPARC ELSE ft.FPC_VLPAGO END) AS VALOR,count(*) AS conta, CLI_RAZAO AS cliente,
                 DATEDIFF( MONTH, MIN(FPC_VENCTO),MAX(FPC_VENCTO))  as mesesCiclo
        FROM FAT_PC01 FT
        left join CLI0000 CL on (CL.CLI_CODIGO = fT.CLI_CODIGO)
        WHERE FPC_EXCLUSAO <> 'S'
        AND (FT.EMP_CODIGO = :EMP_CODIGO OR :EMP_CODIGO = '999')
        AND FPC_VENCTO BETWEEN :DATA_INICIO AND :DATA_FIM
        GROUP BY cl.CLI_CODIGO, cl.CLI_RAZAO
        order by 2 desc
        into :codigo,:valor,:conta, :cliente, :mesesCiclo
       do
         begin
             SELECT       
                   COALESCE(sum(pc.FPC_VLPARC),0) valorpend 
                 from FAT0000 ft                                                                                                                                                                   
                 INNER JOIN FAT_PC01 pc ON (ft.FAT_CODIGO = pc.FAT_CODIGO)                                                                
                 WHERE fpc_STATUS = 'Pendente'   
				 AND FPC_EXCLUSAO = 'N'				 
                 AND FT.CLI_CODIGO = :codigo
                 AND fpc_vencto BETWEEN :data_inicio AND :data_fim
                 AND (ft.EMP_CODIGO = :emp_codigo OR :emp_codigo = '999')
                 INTO  :VALORPEND  ; 
            IF (:valor > 0  AND :valorpend > 0 )  THEN             
             INDICEINADIMPLENCIA =  valorpend/valor *100;
            ELSE 
            INDICEINADIMPLENCIA =0;         
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

        SELECT SUM(FPC_VLPAGO) VALOR
        FROM FAT_PC01 FT                                                              
        left join CLI0000 CL on (CL.CLI_CODIGO = fT.CLI_CODIGO)                       
        WHERE FPC_EXCLUSAO <> 'S'
        AND (FT.EMP_CODIGO = :EMP_CODIGO OR :EMP_CODIGO = '999')
        AND FPC_PAGTO BETWEEN :DATA_INICIO AND :DATA_FIM
        INTO :valortotal;
  
        for
        SELECT cl.CLI_CODIGO, SUM(COALESCE(ft.FPC_VLPAGO,ft.FPC_VLPARC )) VALOR,count(*) AS conta, CLI_RAZAO AS cliente,
                 DATEDIFF( MONTH, MIN(FPC_PAGTO),MAX(FPC_PAGTO))  as mesesCiclo
        FROM FAT_PC01 FT
        left join CLI0000 CL on (CL.CLI_CODIGO = fT.CLI_CODIGO)
        WHERE FPC_EXCLUSAO <> 'S'
        AND (FT.EMP_CODIGO = :EMP_CODIGO OR :EMP_CODIGO = '999')
        AND FPC_PAGTO BETWEEN :DATA_INICIO AND :DATA_FIM       
        GROUP BY cl.CLI_CODIGO, cl.CLI_RAZAO
        order by 2 desc
        into :codigo,:valor,:conta, :cliente, :mesesCiclo
       do
         begin
             SELECT       
                   COALESCE(sum(pc.FPC_VLPARC),0) valorpend 
                 from FAT0000 ft                                                                                                                                                                   
                 INNER JOIN FAT_PC01 pc ON (ft.FAT_CODIGO = pc.FAT_CODIGO)                                                                
                 WHERE fpc_STATUS = 'Pendente'   
				 AND FPC_EXCLUSAO = 'N'				 
                 AND FT.CLI_CODIGO = :codigo
                 AND fpc_vencto BETWEEN :data_inicio AND :data_fim
                 AND (ft.EMP_CODIGO = :emp_codigo OR :emp_codigo = '999')
                 INTO  :VALORPEND  ; 
            IF (:valor > 0  AND :valorpend > 0 )  THEN             
             INDICEINADIMPLENCIA =  valorpend/valor *100;
            ELSE 
            INDICEINADIMPLENCIA =0;         
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

SET TERM ^ ;

create or alter procedure PCD_KARDEX_SALDO_FULL (
    EMP_CODIGO varchar(4),
    PRD_CODIGO varchar(6),
    DATA_INICIAL timestamp,
    DATA_FINAL timestamp,
    AMX_CODIGO varchar(4))
returns (
    SAIDAS decimal(18,5),
    ENTRADAS decimal(18,5),
    SALDO_ANTERIOR decimal(18,5),
    SALDO numeric(15,4))
as
declare variable ALMXTMP varchar(4);
declare variable SALDOTMP numeric(15,4);
declare variable ENTRADASTMP numeric(15,4);
declare variable SAIDASTMP numeric(15,4);
declare variable SALDOANTERIORTMP numeric(15,4);
declare variable ESTOQUE_EXCLUSIVO varchar(1);
begin
  saldo = 0;
  saldo_anterior = 0;
  entradas = 0;
  saidas = 0;
  SELECT estoques FROM SHAREDB
  INTO :ESTOQUE_EXCLUSIVO;
   
  if ((:amx_codigo = '') or (:amx_codigo is null)) then
    amx_codigo = '999';

  
    FOR
    SELECT
        almox0000.amx_codigo
    FROM
        almox0000
    where
        (almox0000.amx_fisico = 'S' and :amx_codigo = '999')
      or (almox0000.AMX_CODIGO = :amx_codigo )    
    into :almxtmp
    DO
      BEGIN
        /*zera variaveis*/
        saldotmp = 0;
        entradastmp = 0;
        saidastmp = 0;
        saldoanteriortmp = 0;
        /*soma os saldos anteriores*/
        SELECT
            first 1
            coalesce(T1.kar_saldo,0) as saldoFinal
        FROM
            kardex T1
        WHERE t1.amx_codigo = :almxtmp and  (T1.emp_codigo = :emp_codigo OR :ESTOQUE_EXCLUSIVO='C') AND T1.prd_codigo = :prd_codigo AND T1.data_hora <= :data_inicial
        ORDER BY T1.kar_registro DESC
        into :saldoanteriortmp;
        saldo_anterior = saldo_anterior + saldoanteriortmp;
        /*entradas*/
        SELECT
            coalesce(SUM(T1.kar_quantidade),0)
        FROM
        kardex T1
        WHERE t1.amx_codigo = :almxtmp and  (T1.emp_codigo = :emp_codigo OR :ESTOQUE_EXCLUSIVO='C') AND T1.prd_codigo = :prd_codigo AND T1.data_hora between :data_inicial AND :data_final AND T1.kar_entrada_saida = 'E'
        into :entradastmp;
        entradas = entradas + entradastmp;
        /*SAIDAS*/
        SELECT
            coalesce(SUM(T1.kar_quantidade),0)
        FROM
        kardex T1
        WHERE t1.amx_codigo = :almxtmp and  (T1.emp_codigo = :emp_codigo OR :ESTOQUE_EXCLUSIVO='C') AND T1.prd_codigo = :prd_codigo AND T1.data_hora between :data_inicial AND :data_final AND T1.kar_entrada_saida = 'S'
        into :saidastmp;
        saidas = saidas + saidastmp;
        /*SALDO FINAL*/
        SELECT
            first 1
            coalesce(T1.kar_saldo,0) as saldoFinal
        FROM
            kardex T1
        WHERE t1.amx_codigo = :almxtmp and  (T1.emp_codigo = :emp_codigo OR :ESTOQUE_EXCLUSIVO='C') AND T1.prd_codigo = :prd_codigo AND T1.data_hora <= :data_final
        ORDER BY T1.kar_registro DESC
        into :saldotmp;
        saldo = saldo + saldotmp;
        
      END
  suspend;

end
^

SET TERM ; ^


SET TERM ^ ;

create or alter procedure PCD_KARDEX_SALDO_DATA (
    EMP_CODIGO varchar(4),
    PRD_CODIGO varchar(6),
    DATA timestamp,
    AMX_CODIGO varchar(4))
returns (
    SALDO numeric(15,4))
as
declare variable ALMXTMP varchar(4);
declare variable SALDOTMP numeric(15,4);
declare variable ESTOQUE_EXCLUSIVO varchar(1);
begin

  SELECT estoques FROM SHAREDB
  INTO :ESTOQUE_EXCLUSIVO;
  if ((:amx_codigo = '') or (:amx_codigo is null)) then
    amx_codigo = '999';
  saldo = 0;
  
 
	FOR
	SELECT
		almox0000.amx_codigo
	FROM
		almox0000
	where
		(almox0000.amx_fisico = 'S' and :amx_codigo = '999')
		or (almox0000.AMX_CODIGO = :amx_codigo )  
	into :almxtmp
  DO
  BEGIN
	saldotmp = 0;
	SELECT
		first 1
		coalesce(T1.kar_saldo,0) as saldoFinal
	FROM
		kardex T1
	WHERE t1.amx_codigo = :almxtmp and  (T1.emp_codigo = :emp_codigo or :ESTOQUE_EXCLUSIVO = 'C') AND T1.prd_codigo = :prd_codigo AND T1.data_hora <= :data
	ORDER BY T1.kar_registro DESC
	into :saldotmp;

	saldo = saldo + saldotmp;
  END
  suspend;
end
^

SET TERM ; ^

SET TERM ^ ;

create or alter procedure PCD_KARDEX_SALDO_FISICO (
    EMP_CODIGO varchar(4),
    PRD_CODIGO varchar(6),
    DATA timestamp)
returns (
    SALDO numeric(15,4))
as
declare variable ALMXTMP varchar(4);
declare variable SALDOTMP numeric(15,4);
declare variable ESTOQUE_EXCLUSIVO varchar(1);
begin
  saldo = 0;
  SELECT estoques FROM SHAREDB
  INTO :ESTOQUE_EXCLUSIVO;
  
  FOR
    SELECT
        almox0000.amx_codigo
    FROM
        almox0000
    where
        almox0000.amx_fisico = 'S'
    into :almxtmp
  DO
  BEGIN
    saldotmp = 0;
    SELECT
        first 1
        coalesce(T1.kar_saldo,0) as saldoFinal
    FROM
        kardex T1
    WHERE t1.amx_codigo = :almxtmp and  (T1.emp_codigo = :emp_codigo OR :ESTOQUE_EXCLUSIVO='C')  AND T1.prd_codigo = :prd_codigo AND T1.data_hora <= :data
    ORDER BY T1.kar_registro DESC
    into :saldotmp;

    saldo = saldo + saldotmp;
  END
  suspend;
end
^

SET TERM ; ^

 UPDATE BAN0000
 SET BAN_CONCILIACAO_DATA = '2018-12-31', BAN_FLUXOCAIXA = 'S'
 WHERE BAN_CONCILIACAO_DATA IS NULL;
 
 commit work;
 
 
 COMMENT ON COLUMN FAT_PC01.FPC_DESCONTADO IS 'S - RECEBIVEL ANTECIPADO - N TÍTULO NORMAL';
 COMMENT ON COLUMN FAT_PC01.FPC_DTDESC IS 'DATA DESCONTADO O TITULO, DATA DE RECEBIDO';