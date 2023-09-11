SET TERM ^ ;

alter table PRMT0001 add PMT_CNPJ_CLIENTE_DUPLICADO char(1)^
commit work^
---------------------------------------------------------------------------
Create or Alter View Lista_Rateio_View
as
select  t11.Emp_codigo, t11.pcx_codigo, t22.ppc_vencto as Vencto,
        sum ( T11.FIR_INDICE_REAL * ( T22.PPC_VLPARC - T22.PPC_VALOR_N_RATEIA) ) as Pago, 0.00 as Recebido
from FIN_RATEIO T11
    JOIN PAG_PC01 T22 ON T22.PAG_REGISTRO = T11.FIR_REGISTRO_CP_CR and t22.PPC_exclusao<>'S'
WHERE T11.FIR_REGISTRO_TIPO = 'P' AND T11.FIR_INDICE > 0
Group By t11.Emp_codigo, t11.pcx_codigo, t22.ppc_vencto
union all
select  t11.Emp_codigo, t11.pcx_codigo, t22.fpc_vencto as Vencto,
        0.00 as Pago, sum( T11.FIR_INDICE_REAL * T22.FPC_VLPARC ) as Recebido
from FIN_RATEIO T11
    JOIN FAT_PC01 T22 ON T22.FAT_REGISTRO = T11.FIR_REGISTRO_CP_CR and t22.FPC_exclusao<>'S'
WHERE T11.FIR_REGISTRO_TIPO = 'P' AND T11.FIR_INDICE > 0
Group By t11.Emp_codigo, t11.pcx_codigo, t22.fpc_vencto^
Commit work^
---------------------------------------------------------
Create or Alter View Lista_Rateio_View_Geral
as
select  t11.pcx_codigo, t22.ppc_vencto as Vencto,
        sum ( T11.FIR_INDICE_REAL * ( T22.PPC_VLPARC - T22.PPC_VALOR_N_RATEIA) ) as Pago, 0.00 as Recebido
from FIN_RATEIO T11
    JOIN PAG_PC01 T22 ON T22.PAG_REGISTRO = T11.FIR_REGISTRO_CP_CR and t22.PPC_exclusao<>'S'
WHERE T11.FIR_REGISTRO_TIPO = 'P' AND T11.FIR_INDICE > 0
Group By t11.pcx_codigo, t22.ppc_vencto
union all
select  t11.pcx_codigo, t22.fpc_vencto as Vencto,
        0.00 as Pago, sum( T11.FIR_INDICE_REAL * T22.FPC_VLPARC ) as Recebido
from FIN_RATEIO T11
    JOIN FAT_PC01 T22 ON T22.FAT_REGISTRO = T11.FIR_REGISTRO_CP_CR and t22.FPC_exclusao<>'S'
WHERE T11.FIR_REGISTRO_TIPO = 'P' AND T11.FIR_INDICE > 0
Group By t11.pcx_codigo, t22.fpc_vencto^
Commit work^
---------------------------------------------------------
Create or Alter View Lista_Pl_CC_VENCTO_View
as
SELECT  RT.emp_codigo, RT.pcx_codigo, PAG.cct_codigo, prc.ppc_vencto as Vencto,
        sum ( RT.FIR_INDICE_REAL * ( PRC.PPC_VLPARC - PRC.PPC_VALOR_N_RATEIA) ) as Pago,
        0.00 as Recebido
FROM fin_rateio RT
    join pag_pc01 PRC on PRC.emp_codigo=RT.emp_codigo AND PRC.pag_registro=RT.FIR_REGISTRO_CP_CR and PRC.PPC_exclusao<>'S'
    join pag0000 PAG on PAG.emp_codigo=RT.emp_codigo AND PAG.pag_codigo=PRC.pag_codigo and pag.for_codigo=prc.for_codigo
WHERE RT.FIR_REGISTRO_TIPO = 'P' AND RT.FIR_INDICE > 0
Group by RT.emp_codigo, RT.pcx_codigo, PAG.cct_codigo, prc.ppc_vencto
UNION all
select  RT.emp_codigo, RT.pcx_codigo, REC.cct_codigo, PRC.fpc_vencto as Vencto,
        0.00 as Pago,
        sum( RT.FIR_INDICE_REAL * PRC.FPC_VLPARC ) as Recebido
FROM fin_rateio RT
    join FAT_PC01 PRC on PRC.emp_codigo=RT.emp_codigo AND PRC.FAT_registro=RT.FIR_REGISTRO_CP_CR and PRC.FPC_EXCLUSAO <>'S'
    join fat0000 REC on REC.emp_codigo=RT.emp_codigo AND REC.FAT_codigo=PRC.FAT_codigo
WHERE RT.FIR_REGISTRO_TIPO = 'P' AND RT.FIR_INDICE > 0
Group by RT.emp_codigo, RT.pcx_codigo, REC.cct_codigo, PRC.fpc_vencto^
Commit work^
---------------------------------------------------------
Create or Alter View Lista_Pl_CC_VENCTO_View_Geral
as
SELECT  RT.pcx_codigo, PAG.cct_codigo, prc.ppc_vencto as Vencto,
        sum ( RT.FIR_INDICE_REAL * ( PRC.PPC_VLPARC - PRC.PPC_VALOR_N_RATEIA) ) as Pago,
        0.00 as Recebido
FROM fin_rateio RT
   join pag_pc01 PRC on PRC.emp_codigo=RT.emp_codigo AND PRC.pag_registro=RT.FIR_REGISTRO_CP_CR and PRC.PPC_exclusao<>'S'
    join pag0000 PAG on PAG.emp_codigo=RT.emp_codigo AND PAG.pag_codigo=PRC.pag_codigo and pag.for_codigo=prc.for_codigo
WHERE RT.FIR_REGISTRO_TIPO = 'P' AND RT.FIR_INDICE > 0
Group by RT.pcx_codigo, PAG.cct_codigo, prc.ppc_vencto
UNION all
select  RT.pcx_codigo, REC.cct_codigo, prc.fpc_vencto as Vencto,
        0.00 as Pago,
        sum( RT.FIR_INDICE_REAL * PRC.FPC_VLPARC ) as Recebido
FROM fin_rateio RT
    join FAT_PC01 PRC on PRC.emp_codigo=RT.emp_codigo AND PRC.FAT_registro=RT.FIR_REGISTRO_CP_CR and PRC.FPC_EXCLUSAO <>'S'
    join fat0000 REC on REC.emp_codigo=RT.emp_codigo AND REC.FAT_codigo=PRC.FAT_codigo
WHERE RT.FIR_REGISTRO_TIPO = 'P' AND RT.FIR_INDICE > 0
Group by RT.pcx_codigo, REC.cct_codigo, prc.fpc_vencto^
Commit work^
---------------------------------------------------------
Create or Alter View Lista_Rateio_View
as
select  t11.Emp_codigo, t11.pcx_codigo, t22.ppc_vencto as Vencto,
        sum ( T11.FIR_INDICE_REAL * ( T22.PPC_VLPARC - T22.PPC_VALOR_N_RATEIA) ) as Pago, 0.00 as Recebido
from FIN_RATEIO T11
    JOIN PAG_PC01 T22 on t22.emp_codigo=T11.emp_codigo AND T22.PAG_REGISTRO = T11.FIR_REGISTRO_CP_CR and t22.PPC_exclusao<>'S'
WHERE T11.FIR_REGISTRO_TIPO = 'P' AND T11.FIR_INDICE > 0
Group By t11.Emp_codigo, t11.pcx_codigo, t22.ppc_vencto
union all
select  t11.Emp_codigo, t11.pcx_codigo, t22.fpc_vencto as Vencto,
        0.00 as Pago, sum( T11.FIR_INDICE_REAL * T22.FPC_VLPARC ) as Recebido
from FIN_RATEIO T11
    JOIN FAT_PC01 T22 ON t22.emp_codigo=T11.emp_codigo AND T22.FAT_REGISTRO = T11.FIR_REGISTRO_CP_CR and t22.FPC_exclusao<>'S'
WHERE T11.FIR_REGISTRO_TIPO = 'P' AND T11.FIR_INDICE > 0
Group By t11.Emp_codigo, t11.pcx_codigo, t22.fpc_vencto^
Commit work^
---------------------------------------------------------
Create or Alter View Lista_Rateio_View_Geral
as
select  t11.pcx_codigo, t22.ppc_vencto as Vencto,
        sum ( T11.FIR_INDICE_REAL * ( T22.PPC_VLPARC - T22.PPC_VALOR_N_RATEIA) ) as Pago, 0.00 as Recebido
from FIN_RATEIO T11
    JOIN PAG_PC01 T22 ON T22.PAG_REGISTRO = T11.FIR_REGISTRO_CP_CR and t22.PPC_exclusao<>'S'
WHERE T11.FIR_REGISTRO_TIPO = 'P' AND T11.FIR_INDICE > 0
Group By t11.pcx_codigo, t22.ppc_vencto
union all
select  t11.pcx_codigo, t22.fpc_vencto as Vencto,
        0.00 as Pago, sum( T11.FIR_INDICE_REAL * T22.FPC_VLPARC ) as Recebido
from FIN_RATEIO T11
    JOIN FAT_PC01 T22 ON T22.FAT_REGISTRO = T11.FIR_REGISTRO_CP_CR and t22.FPC_exclusao<>'S'
WHERE T11.FIR_REGISTRO_TIPO = 'P' AND T11.FIR_INDICE > 0
Group By t11.pcx_codigo, t22.fpc_vencto^
Commit work^
---------------------------------------------------------
Create or Alter View Lista_Pl_CC_PAGTO_View
as
SELECT  RT.emp_codigo, RT.pcx_codigo, PAG.cct_codigo, PGT.pag_data_pagamento as Pagto,
        sum ( RT.FIR_INDICE_REAL * ( pgt.pag_valor - PRC.PPC_VALOR_N_RATEIA) ) as Pago,
        0.00 as Recebido
FROM fin_rateio RT
    join pag_pc01 PRC on PRC.emp_codigo=RT.emp_codigo AND PRC.pag_registro=RT.FIR_REGISTRO_CP_CR and PRC.PPC_exclusao<>'S'
    JOIN pag_pagamento PGT ON pgt.emp_codigo=RT.emp_codigo and PGT.pag_registro = PRC.pag_registro
    join pag0000 PAG on PAG.emp_codigo=RT.emp_codigo AND PAG.pag_codigo=PRC.pag_codigo and pag.for_codigo=prc.for_codigo
WHERE RT.FIR_REGISTRO_TIPO = 'P' AND RT.FIR_INDICE > 0
Group by RT.emp_codigo, RT.pcx_codigo, PAG.cct_codigo, PGT.pag_data_pagamento
UNION  all
select  RT.emp_codigo, RT.pcx_codigo, REC.cct_codigo, PGT.fre_data_recebimento as Pagto,
        0.00 as Pago,
        sum( RT.FIR_INDICE_REAL * pgt.fre_valor ) as Recebido
FROM fin_rateio RT
    join FAT_PC01 PRC on PRC.emp_codigo=RT.emp_codigo AND PRC.FAT_registro=RT.FIR_REGISTRO_CP_CR and PRC.FPC_EXCLUSAO <>'S'
    join fat_recebimento PGT on pgt.emp_codigo=RT.emp_codigo and PGT.fat_registro = PRC.fat_registro
    join fat0000 REC on REC.emp_codigo=RT.emp_codigo AND REC.FAT_codigo=PRC.FAT_codigo
WHERE RT.FIR_REGISTRO_TIPO = 'P' AND RT.FIR_INDICE > 0
Group by RT.emp_codigo, RT.pcx_codigo, REC.cct_codigo, PGT.fre_data_recebimento^
Commit work^
---------------------------------------------------------
Create or Alter View Lista_Pl_CC_PAGTO_View_geral
as
SELECT  RT.pcx_codigo, PAG.cct_codigo, PGT.pag_data_pagamento as Pagto,
        sum ( RT.FIR_INDICE_REAL * ( PRC.PPC_VLPARC - PRC.PPC_VALOR_N_RATEIA) ) as Pago,
        0.00 as Recebido
FROM fin_rateio RT
    join pag_pc01 PRC on PRC.emp_codigo=RT.emp_codigo AND PRC.pag_registro=RT.FIR_REGISTRO_CP_CR and PRC.PPC_exclusao<>'S'
    JOIN pag_pagamento PGT ON pgt.emp_codigo=RT.emp_codigo and PGT.pag_registro = PRC.pag_registro
    join pag0000 PAG on PAG.emp_codigo=RT.emp_codigo AND PAG.pag_codigo=PRC.pag_codigo
WHERE RT.FIR_REGISTRO_TIPO = 'P' AND RT.FIR_INDICE > 0
Group by RT.pcx_codigo, PAG.cct_codigo, PGT.pag_data_pagamento
UNION  all
select  RT.pcx_codigo, REC.cct_codigo, PGT.fre_data_recebimento as Pagto,
        0.00 as Pago,
        sum( RT.FIR_INDICE_REAL * PRC.FPC_VLPARC ) as Recebido
FROM fin_rateio RT
    join FAT_PC01 PRC on PRC.emp_codigo=RT.emp_codigo AND PRC.FAT_registro=RT.FIR_REGISTRO_CP_CR and PRC.FPC_EXCLUSAO <>'S'
    join fat_recebimento PGT on pgt.emp_codigo=RT.emp_codigo and PGT.fat_registro = PRC.fat_registro
    join fat0000 REC on REC.emp_codigo=RT.emp_codigo AND REC.FAT_codigo=PRC.FAT_codigo
WHERE RT.FIR_REGISTRO_TIPO = 'P' AND RT.FIR_INDICE > 0
Group by RT.pcx_codigo, REC.cct_codigo, PGT.fre_data_recebimento^
Commit work^
---------------------------------------------------------
create or alter view pl_vencto_view
as
select a.emp_codigo,  a.cct_codigo, a.ppc_vencto as vencto,
       sum (a.PPC_VLPARC  - a.PPC_VALOR_N_RATEIA) as Pago,
       0.00 as Recebido
from pag_pc01 a
where a.PPC_exclusao<>'S'
Group By 1,2,3
union all
select a.emp_codigo,  a.cct_codigo, a.fpc_vencto as vencto,
       0.00 as Pago,
       sum (a.fPC_VLPARC) as Recebido
from fat_pc01 a
where a.FPC_exclusao<>'S'
Group By 1,2,3^
Commit work^
---------------------------------------------------------
create or alter view pl_vencto_view_geral
as
select a.cct_codigo, a.ppc_vencto as vencto,
       sum (a.PPC_VLPARC  - a.PPC_VALOR_N_RATEIA) as Pago,
       0.00 as Recebido
from pag_pc01 a
where a.PPC_exclusao<>'S'
Group By 1,2
union all
select a.cct_codigo, a.fpc_vencto as vencto,
       0.00 as Pago,
       sum (a.fPC_VLPARC) as Recebido
from fat_pc01 a
where a.FPC_exclusao<>'S'
Group By 1,2^
Commit work^
---------------------------------------------------------
CREATE OR ALTER VIEW PL_Emissao_VIEW
AS
select a.emp_codigo,  a.cct_codigo, b.PAG_DTEMIS as Emissao,
       sum (a.PPC_VLPARC  - a.PPC_VALOR_N_RATEIA) as Pago,
       0.00 as Recebido
from pag_pc01 a
    JOIN PAG0000 b ON b.PAG_CODIGO = a.PAG_CODIGO AND b.FOR_CODIGO = a.FOR_CODIGO
where a.PPC_exclusao<>'S'
Group By 1,2,3
union all
select a.emp_codigo,  a.cct_codigo, b.FAT_DTEMIS as Emissao,
       0.00 as Pago,
       sum (a.fPC_VLPARC) as Recebido
from fat_pc01 a
    JOIN FAT0000 b ON b.FAT_CODIGO = a.FAT_CODIGO AND b.CLI_CODIGO = b.CLI_CODIGO
where a.FPC_exclusao<>'S'
Group By 1,2,3^
Commit work^
---------------------------------------------------------
CREATE OR ALTER VIEW PL_PAGTO_VIEW
AS
select a.emp_codigo,  a.cct_codigo, a.PPC_PAGTO as Pagto,
       sum (a.PPC_VLPAGO) as Pago,
       0.00 as Recebido
from pag_pc01 a
    JOIN PAG0000 b ON b.PAG_CODIGO = a.PAG_CODIGO AND b.FOR_CODIGO = a.FOR_CODIGO
where a.PPC_exclusao<>'S'
Group By 1,2,3
union all
select a.emp_codigo,  a.cct_codigo, a.fPC_PAGTO as Pagto,
       0.00 as Pago,
       sum (a.fPC_VLPAGO) as Recebido
from fat_pc01 a
    JOIN FAT0000 b ON b.FAT_CODIGO = a.FAT_CODIGO AND b.CLI_CODIGO = b.CLI_CODIGO
where a.FPC_exclusao<>'S'
Group By 1,2,3^
Commit work^
---------------------------------------------------------
CREATE OR ALTER VIEW LISTA_PL_CC_VENCTO_VIEW
as
SELECT  RT.emp_codigo, PRC.PPC_exclusao as Exclusao, RT.pcx_codigo, PAG.cct_codigo, prc.ppc_vencto as Vencto,
        sum ( RT.FIR_INDICE_REAL * ( PRC.PPC_VLPARC - PRC.PPC_VALOR_N_RATEIA) ) as Pago,
        0.00 as Recebido
FROM fin_rateio RT
    join pag_pc01 PRC on PRC.emp_codigo=RT.emp_codigo AND PRC.pag_registro=RT.FIR_REGISTRO_CP_CR and PRC.PPC_exclusao<>'S'
    join pag0000 PAG on PAG.emp_codigo=RT.emp_codigo AND PAG.pag_codigo=PRC.pag_codigo and pag.for_codigo=prc.for_codigo
WHERE RT.FIR_REGISTRO_TIPO = 'P' AND RT.FIR_INDICE > 0
Group by RT.emp_codigo, PRC.PPC_exclusao, RT.pcx_codigo, PAG.cct_codigo, prc.ppc_vencto
UNION all
select  RT.emp_codigo, PRC.FPC_EXCLUSAO as Exclusao, RT.pcx_codigo, REC.cct_codigo, PRC.fpc_vencto as Vencto,
        0.00 as Pago,
        sum( RT.FIR_INDICE_REAL * PRC.FPC_VLPARC ) as Recebido
FROM fin_rateio RT
    join FAT_PC01 PRC on PRC.emp_codigo=RT.emp_codigo AND PRC.FAT_registro=RT.FIR_REGISTRO_CP_CR and PRC.FPC_EXCLUSAO <>'S'
    join fat0000 REC on REC.emp_codigo=RT.emp_codigo AND REC.FAT_codigo=PRC.FAT_codigo
WHERE RT.FIR_REGISTRO_TIPO = 'P' AND RT.FIR_INDICE > 0
Group by RT.emp_codigo, PRC.FPC_EXCLUSAO, RT.pcx_codigo, REC.cct_codigo, PRC.fpc_vencto^
Commit work^
---------------------------------------------------------
CREATE OR ALTER VIEW LISTA_PL_CC_PAGTO_VIEW
AS
SELECT  RT.emp_codigo, PRC.PPC_exclusao as Exclusao, RT.pcx_codigo, PAG.cct_codigo, PGT.pag_data_pagamento as Pagto,
        sum ( RT.FIR_INDICE_REAL * ( pgt.pag_valor - PRC.PPC_VALOR_N_RATEIA) ) as Pago,
        0.00 as Recebido
FROM fin_rateio RT
    join pag_pc01 PRC on PRC.emp_codigo=RT.emp_codigo AND PRC.pag_registro=RT.FIR_REGISTRO_CP_CR and PRC.PPC_exclusao<>'S'
    JOIN pag_pagamento PGT ON pgt.emp_codigo=RT.emp_codigo and PGT.pag_registro = PRC.pag_registro
    join pag0000 PAG on PAG.emp_codigo=RT.emp_codigo AND PAG.pag_codigo=PRC.pag_codigo and pag.for_codigo=prc.for_codigo
WHERE RT.FIR_REGISTRO_TIPO = 'P' AND RT.FIR_INDICE > 0
Group by RT.emp_codigo, PRC.PPC_exclusao, RT.pcx_codigo, PAG.cct_codigo, PGT.pag_data_pagamento
UNION  all
select  RT.emp_codigo, PRC.FPC_exclusao as Exclusao, RT.pcx_codigo, REC.cct_codigo, PGT.fre_data_recebimento as Pagto,
        0.00 as Pago,
        sum( RT.FIR_INDICE_REAL * pgt.fre_valor ) as Recebido
FROM fin_rateio RT
    join FAT_PC01 PRC on PRC.emp_codigo=RT.emp_codigo AND PRC.FAT_registro=RT.FIR_REGISTRO_CP_CR and PRC.FPC_EXCLUSAO <>'S'
    join fat_recebimento PGT on pgt.emp_codigo=RT.emp_codigo and PGT.fat_registro = PRC.fat_registro
    join fat0000 REC on REC.emp_codigo=RT.emp_codigo AND REC.FAT_codigo=PRC.FAT_codigo
WHERE RT.FIR_REGISTRO_TIPO = 'P' AND RT.FIR_INDICE > 0
Group by RT.emp_codigo, PRC.FPC_exclusao, RT.pcx_codigo, REC.cct_codigo, PGT.fre_data_recebimento^
Commit work^
---------------------------------------------------------

Update VERSAOSISTEMA SET
       VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.0.467' ,
       VERSAOSISTEMA.DATA   = '09.11.2016'
 where VERSAOSISTEMA.CODIGO = 1^

COMMIT WORK^

SET TERM ; ^


