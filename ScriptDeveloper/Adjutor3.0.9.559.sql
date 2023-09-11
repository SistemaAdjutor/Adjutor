UPDATE  VERSAOSISTEMA 
SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.559',
    VERSAOSISTEMA.DATA   = '05.08.2021',
	VERSAO = '3.0.9.559'
 where VERSAOSISTEMA.CODIGO = 1;
commit work;

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
    JOIN NF0001 T7 ON (T7.NF_NOTANUMBER = T1.NF_IT_NOTANUMER AND T7.emp_codigo=T1.emp_codigo)
     JOIN PRD0000 T2 ON (T2.PRD_REFER = T1.PRD_REFER  AND T2.emp_codigo=T1.emp_codigo)
    WHERE T7.NF_VENDA_FATURADA = 'S'
    AND NF_EMISSAO BETWEEN :DATA_INICIO AND :DATA_FIM
    AND T7.NF_CANCELADA <> 'S'
    AND (t7.EMP_CODIGO = :EMP_CODIGO or :EMP_CODIGO = '999')
    INTO :valortotal ;


   FOR 
    SELECT SUM (T1.NF_QTDE * COALESCE(t1.NF_PRECO,0)) AS NF_TOT_NOTA ,
    count(*) AS conta, T2.PRD_REFER , t2.PRD_DESCRI as PRODUTOS, prd_und
    FROM NF_IT01 T1
    JOIN NF0001 T7 ON (T7.NF_NOTANUMBER = T1.NF_IT_NOTANUMER AND T7.emp_codigo=T1.emp_codigo)
     JOIN PRD0000 T2 ON (T2.PRD_REFER = T1.PRD_REFER  AND T2.emp_codigo=T1.emp_codigo )
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

COMMENT ON PROCEDURE SUMARIZACAO_PRODUTO_RECEITA IS
'CURVA ABC PRODUTO POR VOLUME DE VENDAS';

/* Following GRANT statetements are generated automatically */

GRANT SELECT ON NF_IT01 TO PROCEDURE SUMARIZACAO_PRODUTO_RECEITA;
GRANT SELECT ON NF0001 TO PROCEDURE SUMARIZACAO_PRODUTO_RECEITA;
GRANT SELECT ON PRD0000 TO PROCEDURE SUMARIZACAO_PRODUTO_RECEITA;

/* Existing privileges on this procedure */

GRANT EXECUTE ON PROCEDURE SUMARIZACAO_PRODUTO_RECEITA TO SYSDBA;


commit work;


ALTER TABLE USUARIO_PARAMETRO ADD USP_HABILITA_COLUNA_NF CHAR(1) DEFAULT 'N';
UPDATE USUARIO_PARAMETRO SET USP_HABILITA_COLUNA_NF = 'N';
commit work;

ALTER TABLE PCX0000_PLANO ADD PCXP_INDICE_REAL_TEMP DECIMAL(18,8);
UPDATE PCX0000_PLANO SET PCXP_INDICE_REAL_TEMP = PCXP_INDICE_REAL;
ALTER TABLE PCX0000_PLANO DROP PCXP_INDICE_REAL;
ALTER TABLE PCX0000_PLANO ALTER PCXP_INDICE_REAL_TEMP TO PCXP_INDICE_REAL;
commit work;


CREATE OR ALTER VIEW PL_EMISSAO_VIEW(
    EMP_CODIGO,
    CCT_CODIGO,
    EMISSAO,
    PAGO,
    RECEBIDO)
AS
select a.emp_codigo,  a.cct_codigo, b.PAG_DTEMIS as Emissao,
       sum (a.PPC_VLPARC  - a.PPC_VALOR_N_RATEIA) as Pago,
       0.00 as Recebido
from pag_pc01 a
    JOIN PAG0000 b ON b.PAG_CODIGO = a.PAG_CODIGO AND b.FOR_CODIGO = a.FOR_CODIGO  AND b.emp_codigo=a.emp_codigo
where a.PPC_exclusao<>'S'
Group By 1,2,3
union all
select a.emp_codigo,  a.cct_codigo, b.FAT_DTEMIS as Emissao,
       0.00 as Pago,
       sum (a.fPC_VLPARC) as Recebido
from fat_pc01 a
    JOIN FAT0000 b ON b.FAT_CODIGO = a.FAT_CODIGO AND b.CLI_CODIGO = b.CLI_CODIGO   AND b.emp_codigo=a.emp_codigo
where a.FPC_exclusao<>'S'
Group By 1,2,3
;

