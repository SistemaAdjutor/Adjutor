-- LISTA_QTDE_VENDAS_MESANO source

CREATE OR ALTER VIEW LISTA_QTDE_VENDAS_MESANO (PRD_REFER, PRD_CODIGO, MES, ANO, QTD, "REF")
AS

SELECT 
	prd_refer,
    prd_codigo,
    mes,
    ANO,
    sum(Qtd) AS qtd,
    ref 
FROM 
(select
    prd.prd_refer AS prd_refer,
    prd.prd_codigo AS prd_codigo,
    extract( month from nf.nf_emissao ) as mes,
    extract( year from nf.nf_emissao ) as ano,
     itnf.nf_qtde as Qtd,
    (extract( year from nf.nf_emissao )*12)+extract( month from nf.nf_emissao ) as Ref
from nf0001 nf
    join nf_it01 itnf on itnf.nf_it_notanumer = nf.nf_notanumber
    join prd0000 prd on prd.prd_codigo=itnf.prd_codigo
    WHERE NF_VENDA_FATURADA = 'S'
UNION all
SELECT prd.prd_refer,
    prd.prd_codigo,
    extract( month from nf.nf_emissao ) as mes,
    extract( year from nf.nf_emissao ) as ano,
     prf_qtde * (SELECT PRF_QTDE FROM PED_IT01 it2 WHERE it2.PRF_REGISTRO = it.PRF_REGISTRO_VINCULADO)  as Qtd, 
    (extract( year from nf.nf_emissao )*12)+extract( month from nf.nf_emissao ) as Ref
FROM PED_IT01 it
JOIN NF0001 nf ON (it.PED_CODIGO = nf.PED_CODIGO)
 join prd0000 prd on (prd.prd_codigo=it.prd_codigo)
WHERE PRF_REGISTRO_VINCULADO > 0 
AND  NF_VENDA_FATURADA = 'S' )
group by 1,2,3,4,6;