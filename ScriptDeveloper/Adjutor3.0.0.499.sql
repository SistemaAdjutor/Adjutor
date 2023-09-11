
UPDATE  VERSAOSISTEMA SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.0.499',
       VERSAOSISTEMA.DATA   = CURRENT_DATE
 where VERSAOSISTEMA.CODIGO = 1;

commit work; 
 
ALTER TABLE USUARIO ADD USU_EMAIL_SENHA VARCHAR(20) ;

CREATE OR ALTER VIEW RES_PL_EMISSAO_SEM_VIEW (EMP_CODIGO, CCT_CODIGO, SEMANA, PAGO, RECEBIDO, DTMIN, DTMAX)
AS
select a.emp_codigo,  a.CCT_codigo, LPAD(EXTRACT( WEEK FROM a.EMISSAO ),2,'0')   ||'/'||cast(Extract(year from a.EMISSAO) as char(4)) as Semana, Sum(a.pago) as pago, Sum(a.recebido) as recebido, min(a.EMISSAO) as DtMin, Max(a.EMISSAO) as DtMax
from    RESUMO_PL_emissao_VIEW a
    join CCT_0000 b on b.CCT_codigo=a.CCT_codigo
group by 1,2,3;

CREATE OR ALTER VIEW RES_PL_EMISSAO_SEM_VIEW_GERAL (CCT_CODIGO, SEMANA, PAGO, RECEBIDO, DTMIN, DTMAX)
AS
select a.CCT_codigo, LPAD(EXTRACT( WEEK FROM a.EMISSAO ),2,'0')   ||'/'||cast(Extract(year from a.EMISSAO) as char(4)) as Semana, Sum(a.pago) as pago, Sum(a.recebido) as recebido, min(a.EMISSAO) as DtMin, Max(a.EMISSAO) as DtMax
from    RESUMO_PL_emissao_VIEW a
    join CCT_0000 b on b.CCT_codigo=a.CCT_codigo
group by 1,2;

CREATE OR ALTER VIEW RES_PL_VENCTO_SEM_VIEW_GERAL (CCT_CODIGO, SEMANA, PAGO, RECEBIDO, DTMIN, DTMAX)
AS
select a.CCT_codigo, LPAD(EXTRACT( WEEK FROM a.vencto ),2,'0')   ||'/'||cast(Extract(year from a.vencto) as char(4)) as Semana, Sum(a.pago) as pago, Sum(a.recebido) as recebido, min(a.vencto) as DtMin, Max(a.Vencto) as DtMax
from    RESUMO_PL_VENCTO_VIEW a
    join CCT_0000 b on b.CCT_codigo=a.CCT_codigo
group by 1,2;


CREATE OR ALTER VIEW RES_PL_VENCTO_SEM_VIEW (EMP_CODIGO, CCT_CODIGO, SEMANA, PAGO, RECEBIDO, DTMIN, DTMAX)
AS
select a.emp_codigo,  a.CCT_codigo, LPAD(EXTRACT( WEEK FROM a.vencto ),2,'0')   ||'/'||cast(Extract(year from a.vencto) as char(4)) as Semana, Sum(a.pago) as pago, Sum(a.recebido) as recebido, min(a.vencto) as DtMin, Max(a.Vencto) as DtMax
from    RESUMO_PL_VENCTO_VIEW a
    join CCT_0000 b on b.CCT_codigo=a.CCT_codigo
group by 1,2,3;

CREATE OR ALTER VIEW RES_PL_PAGTO_SEM_VIEW_GERAL (CCT_CODIGO, SEMANA, PAGO, RECEBIDO, DTMIN, DTMAX)
AS
select a.CCT_codigo, LPAD(EXTRACT( WEEK FROM a.PAGTO ),2,'0')   ||'/'||cast(Extract(year from a.PAGTO) as char(4)) as Semana, Sum(a.pago) as pago, Sum(a.recebido) as recebido, min(a.PAGTO) as DtMin, Max(a.PAGTO) as DtMax
from    RESUMO_PL_PAGTO_VIEW a
group by 1,2;

CREATE OR ALTER VIEW RES_PL_PAGTO_SEM_VIEW (EMP_CODIGO, CCT_CODIGO, SEMANA, PAGO, RECEBIDO, DTMIN, DTMAX)
AS
select a.emp_codigo,  a.CCT_codigo, LPAD(EXTRACT( WEEK FROM a.PAGTO ),2,'0')   ||'/'||cast(Extract(year from a.PAGTO) as char(4)) as Semana, Sum(a.pago) as pago, Sum(a.recebido) as recebido, min(a.PAGTO) as DtMin, Max(a.PAGTO) as DtMax
from    RESUMO_PL_PAGTO_VIEW a
group by 1,2,3;

CREATE OR ALTER VIEW RESUMO_RATEIO_SEMANA_VIEW (EMP_CODIGO, PCX_CODIGO, SEMANA, PAGO, RECEBIDO, DTMIN, DTMAX)
AS
select a.emp_codigo,  a.pcx_codigo,LPAD(EXTRACT( WEEK FROM a.vencto ),2,'0')   ||'/'||cast(Extract(year from a.vencto) as char(4)) as Semana, Sum(a.pago) as pago, Sum(a.recebido) as recebido, Min(a.vencto) as DtMin, Max(a.vencto) as DtMax
from    resumo_rateio_view a
    join pcx0000 b on b.pcx_codigo=a.pcx_codigo
group by 1,2,3;


CREATE OR ALTER VIEW RESUMO_RATEIO_SEMANA_VIEW_GERAL (PCX_CODIGO, SEMANA, PAGO, RECEBIDO, DTMIN, DTMAX)
AS
select a.pcx_codigo,LPAD(EXTRACT( WEEK FROM a.vencto ),2,'0')   ||'/'||cast(Extract(year from a.vencto) as char(4)) as Semana, Sum(a.pago) as pago, Sum(a.recebido) as recebido, Min(a.vencto) as DtMin, Max(a.vencto) as DtMax
from    resumo_rateio_view a
    join pcx0000 b on b.pcx_codigo=a.pcx_codigo
group by 1,2;

CREATE OR ALTER VIEW LISTA_QTDE_VENDAS_MESANO (PRD_REFER, MES, ANO, QTD, "REF")
AS
select
   prd.prd_refer,
   extract( month from nf.nf_emissao ) as mes,
   extract( year from nf.nf_emissao ) as ano,
   SUM( itnf.nf_qtde ) as Qtd,
   (extract( year from nf.nf_emissao )*12)+extract( month from nf.nf_emissao ) as Ref
from nf0001 nf
   join nf_it01 itnf on itnf.nf_it_notanumer = nf.nf_notanumber
   join prd0000 prd on prd.prd_refer=itnf.prd_refer
   WHERE NF_VENDA_FATURADA = 'S' 
group by 1,2,3;


comment on view LISTA_QTDE_VENDAS_MESANO  is 'GIRO DE ESTOQUE - VENDAS POR MES ANO';
COMMENT ON VIEW RES_PL_EMISSAO_SEM_VIEW IS 'PLANO DE CONTAS POR SEMANA DA DATA DE EMISSAO E EMPRESA';
COMMENT ON VIEW RES_PL_EMISSAO_SEM_VIEW_GERAL IS 'PLANO DE CONTAS POR SEMANA DATA DE EMISSAO';
COMMENT ON VIEW RES_PL_VENCTO_SEM_VIEW_GERAL IS 'PLANO DE CONTAS PRO DATA DE VENCIMENTO';
COMMENT ON VIEW RES_PL_VENCTO_SEM_VIEW IS 'PLANO DE CONTAS POR SEMANA DA DATA DE VENCIMENTO E EMPRESA';