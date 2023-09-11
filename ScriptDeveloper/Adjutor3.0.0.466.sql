SET TERM ^ ;

alter table USUARIO_PARAMETRO add USP_USAPRAZODESABILITADO char(1)^
commit work^
---------------------------------------------------------------------------
alter table OCP0000 add ocp_prazo varchar(35)^
commit work^
---------------------------------------------------------------------------

update ocp0000 a set ocp_prazo=(select b.pcl_nome from pcl0000 b where b.pcl_codigo=a.pcl_codigo)^
commit work^
---------------------------------------------------------------------------

create or alter view prd0000_view
as
select prd_codigo, prd_refer, prd_descri, prd_und, prd_refer||' - '||prd_descri as descricao
from prd0000^
commit work^
---------------------------------------------------------------------------
Create or alter View clientes_ativos_view
as
select MON$ATTACHMENT_NAME, MON$REMOTE_ADDRESS, Count(*) as qty
from MON$ATTACHMENTS
group by MON$ATTACHMENT_NAME, MON$REMOTE_ADDRESS^
commit work^
----------------------------------------------------------
INSERT INTO sped_modelo_doc_fiscal
VALUES (null, 60, 'Nota Fiscal de Serviço Eletrônica')^
----------------------------------------------------------
CREATE OR ALTER VIEW LISTA_QTDE_VENDAS_MESANO
AS
select
    prd.prd_refer,
    extract( month from nf.nf_emissao ) as mes,
    extract( year from nf.nf_emissao ) as ano,
    SUM( itnf.nf_qtde ) as Qtd,
    (extract( year from nf.nf_emissao )*12)+extract( month from nf.nf_emissao ) as Ref
from nf0001 nf
    join nf_it01 itnf on itnf.nf_it_notanumer = nf.nf_notanumber
    join opE0000 D on d.ope_codigo=itnf.ope_codigo and d.OPE_TIPO_OPERACAO='V'
    join prd0000 prd on prd.prd_refer=itnf.prd_refer
group by 1,2,3^
Commit work^
-----------------------------------------------------------
create or alter procedure MesOFTHEYEAR (PDATE date) returns (RNUM char(8))
as
begin
    Select Mes||'/'||cast(Extract(year from :pDate) as char(4))
    From
        (Select
        case
            when Extract( month from :pDate ) = 1 then 'Jan'
            when Extract( month from :pDate ) = 2 then 'Fev'
            when Extract( month from :pDate ) = 3 then 'Mar'
            when Extract( month from :pDate ) = 4 then 'Abr'
            when Extract( month from :pDate ) = 5 then 'Mai'
            when Extract( month from :pDate ) = 6 then 'Jun'
            when Extract( month from :pDate ) = 7 then 'Jul'
            when Extract( month from :pDate ) = 8 then 'Ago'
            when Extract( month from :pDate ) = 9 then 'Set'
            when Extract( month from :pDate ) = 10 then 'Out'
            when Extract( month from :pDate ) = 11 then 'Nov'
            else 'Dez'
        end as Mes
        from rdb$database)
    into :rNum;
    suspend;
end^
commit work^
---------------------------------------------------------
create or alter procedure WeekOfTheYear( pDate Date ) returns ( rNum char(8)) as
begin
    select right( '0'||((EXTRACT( YEARDAY FROM :pDate ) - EXTRACT( WEEKDAY FROM :pDate-1 ) + 7) / 7),2) ||'/'||cast(Extract(year from :pDate) as char(4)) from rdb$database into :rNum;
    suspend;
end^
commit work^
---------------------------------------------------------
create or alter procedure BIOFTHEYEAR ( PDATE date)
returns ( RNUM char(6))
as
begin
    Select Cast ( Round( cast( Extract( month from Cast( :pDate as Date) ) as Numeric(5,2))  / 2 , 0 ) as Char(1) )||'/'||cast(Extract(year from :pDate) as char(4)) from rdb$database into :rNum;
    suspend;
end^
commit work^
---------------------------------------------------------
create or alter procedure TriOFTHEYEAR (PDATE date) returns (RNUM char(6))
as
begin
    Select Trimestre||'/'||cast(Extract(year from :pDate) as char(4))
    From
        (Select
        case
            when Extract( month from :pDate ) >0 and Extract( month from :pDate )< 4 then 1
            when Extract( month from :pDate ) >3 and Extract( month from :pDate )< 7 then 2
            when Extract( month from :pDate ) >6 and Extract( month from :pDate )< 10 then 3
            else 4
        end as Trimestre
        from rdb$database)
    into :rNum;
    suspend;
end^
commit work^
---------------------------------------------------------
create or alter procedure SemOFTHEYEAR (PDATE date) returns (RNUM char(6))
as
begin
    Select Semestre||'/'||cast(Extract(year from :pDate) as char(4))
    From
        (Select
        case
            when Extract( month from :pDate ) >0 and Extract( month from :pDate )< 7 then 1
            else 2
        end as Semestre
        from rdb$database)
    into :rNum;
    suspend;
end^
commit work^
---------------------------------------------------------
Create or Alter View Lista_Rateio_View
as
select  t11.Emp_codigo, t11.pcx_codigo, t22.ppc_vencto as Vencto,
        sum ( T11.FIR_INDICE_REAL * ( T22.PPC_VLPARC - T22.PPC_VALOR_N_RATEIA) ) as Pago, 0.00 as Recebido
from FIN_RATEIO T11
    JOIN PAG_PC01 T22 ON T22.PAG_REGISTRO = T11.FIR_REGISTRO_CP_CR
WHERE T11.FIR_REGISTRO_TIPO = 'P' AND T11.FIR_INDICE > 0
Group By t11.Emp_codigo, t11.pcx_codigo, t22.ppc_vencto
union all
select  t11.Emp_codigo, t11.pcx_codigo, t22.fpc_vencto as Vencto,
        0.00 as Pago, sum( T11.FIR_INDICE_REAL * T22.FPC_VLPARC ) as Recebido
from FIN_RATEIO T11
    JOIN FAT_PC01 T22 ON T22.FAT_REGISTRO = T11.FIR_REGISTRO_CP_CR
WHERE T11.FIR_REGISTRO_TIPO = 'P' AND T11.FIR_INDICE > 0
Group By t11.Emp_codigo, t11.pcx_codigo, t22.fpc_vencto^
Commit work^
---------------------------------------------------------
Create or Alter View Lista_Rateio_View_Geral
as
select  t11.pcx_codigo, t22.ppc_vencto as Vencto,
        sum ( T11.FIR_INDICE_REAL * ( T22.PPC_VLPARC - T22.PPC_VALOR_N_RATEIA) ) as Pago, 0.00 as Recebido
from FIN_RATEIO T11
    JOIN PAG_PC01 T22 ON T22.PAG_REGISTRO = T11.FIR_REGISTRO_CP_CR
WHERE T11.FIR_REGISTRO_TIPO = 'P' AND T11.FIR_INDICE > 0
Group By t11.pcx_codigo, t22.ppc_vencto
union all
select  t11.pcx_codigo, t22.fpc_vencto as Vencto,
        0.00 as Pago, sum( T11.FIR_INDICE_REAL * T22.FPC_VLPARC ) as Recebido
from FIN_RATEIO T11
    JOIN FAT_PC01 T22 ON T22.FAT_REGISTRO = T11.FIR_REGISTRO_CP_CR
WHERE T11.FIR_REGISTRO_TIPO = 'P' AND T11.FIR_INDICE > 0
Group By t11.pcx_codigo, t22.fpc_vencto^
Commit work^
---------------------------------------------------------
Create or Alter View Resumo_Rateio_View
as
select a.emp_codigo, a.pcx_codigo, a.Vencto, sum(a.pago) as pago , sum(a.recebido) as recebido
from Lista_Rateio_View a
group by a.emp_codigo, a.pcx_codigo, a.Vencto^
Commit work^
---------------------------------------------------------
Create or Alter View Resumo_Rateio_View_Geral
as
select a.pcx_codigo, a.Vencto, sum(a.pago) as pago , sum(a.recebido) as recebido
from Lista_Rateio_View a
group by a.pcx_codigo, a.Vencto^
Commit work^
---------------------------------------------------------
ALTER TABLE PCX0000 ADD NIVEL_PAI      VARCHAR(15)^
Commit Work^
---------------------------------------------------------
CREATE INDEX PCX0000_IDX_NIVELPAI ON PCX0000 (NIVEL_PAI)^
Commit Work^
---------------------------------------------------------
Create or alter View Resumo_Rateio_Semana_View
as
select a.emp_codigo,  a.pcx_codigo, wy.rnum as Semana, Sum(a.pago) as pago, Sum(a.recebido) as recebido, Min(a.vencto) as DtMin, Max(a.vencto) as DtMax
from    resumo_rateio_view a
    join pcx0000 b on b.pcx_codigo=a.pcx_codigo
    join WeekOfTheYear (a.vencto) WY on 1=1
group by 1,2,3^
Commit Work^
---------------------------------------------------------
Create or alter View Resumo_Rateio_Semana_View_Geral
as
select a.pcx_codigo, wy.rnum as Semana, Sum(a.pago) as pago, Sum(a.recebido) as recebido, Min(a.vencto) as DtMin, Max(a.vencto) as DtMax
from    resumo_rateio_view a
    join pcx0000 b on b.pcx_codigo=a.pcx_codigo
    join WeekOfTheYear (a.vencto) WY on 1=1
group by 1,2^
Commit Work^
---------------------------------------------------------
Create or alter View Resumo_Bimestre_View
as
select a.emp_codigo,  a.pcx_codigo, wy.rnum as Bimestre, Sum(a.pago) as pago, Sum(a.recebido) as recebido, Min(a.vencto) as DtMin, Max(a.vencto) as DtMax
from    resumo_rateio_view a
    join pcx0000 b on b.pcx_codigo=a.pcx_codigo
    join BiOfTheYear (a.vencto) WY on 1=1
group by 1,2,3^
Commit Work^
---------------------------------------------------------
Create or alter View Resumo_Bimestre_View_Geral
as
select a.pcx_codigo, wy.rnum as Bimestre, Sum(a.pago) as pago, Sum(a.recebido) as recebido, Min(a.vencto) as DtMin, Max(a.vencto) as DtMax
from    resumo_rateio_view a
    join pcx0000 b on b.pcx_codigo=a.pcx_codigo
    join BiOfTheYear (a.vencto) WY on 1=1
group by 1,2^
Commit Work^
---------------------------------------------------------
Create or alter View Resumo_Trimestre_View
as
select a.emp_codigo,  a.pcx_codigo, wy.rnum as Trimestre, Sum(a.pago) as pago, Sum(a.recebido) as recebido, Min(a.vencto) as DtMin, Max(a.vencto) as DtMax
from    resumo_rateio_view a
    join pcx0000 b on b.pcx_codigo=a.pcx_codigo
    join TriOfTheYear (a.vencto) WY on 1=1
group by 1,2,3^
Commit Work^
---------------------------------------------------------
Create or alter View Resumo_Trimestre_View_Geral
as
select a.pcx_codigo, wy.rnum as Trimestre, Sum(a.pago) as pago, Sum(a.recebido) as recebido, Min(a.vencto) as DtMin, Max(a.vencto) as DtMax
from    resumo_rateio_view a
    join pcx0000 b on b.pcx_codigo=a.pcx_codigo
    join TriOfTheYear (a.vencto) WY on 1=1
group by 1,2^
Commit Work^
---------------------------------------------------------
Create or alter View Resumo_Semestre_View
as
select a.emp_codigo,  a.pcx_codigo, wy.rnum as Semestre, Sum(a.pago) as pago, Sum(a.recebido) as recebido, Min(a.vencto) as DtMin, Max(a.vencto) as DtMax
from    resumo_rateio_view a
    join pcx0000 b on b.pcx_codigo=a.pcx_codigo
    join SemOfTheYear (a.vencto) WY on 1=1
group by 1,2,3^
Commit Work^
---------------------------------------------------------
Create or alter View Resumo_Semestre_View_Geral
as
select a.pcx_codigo, wy.rnum as Semestre, Sum(a.pago) as pago, Sum(a.recebido) as recebido, Min(a.vencto) as DtMin, Max(a.vencto) as DtMax
from    resumo_rateio_view a
    join pcx0000 b on b.pcx_codigo=a.pcx_codigo
    join SemOfTheYear (a.vencto) WY on 1=1
group by 1,2^
Commit Work^
---------------------------------------------------------
Create or alter View Resumo_Ano_View
as
select a.emp_codigo,  a.pcx_codigo, Extract( year from a.vencto ) as Ano, Sum(a.pago) as pago, Sum(a.recebido) as recebido, Min(a.vencto) as DtMin, Max(a.vencto) as DtMax
from    resumo_rateio_view a
    join pcx0000 b on b.pcx_codigo=a.pcx_codigo
group by 1,2,3^
Commit Work^
---------------------------------------------------------
Create or alter View Resumo_Ano_View_Geral
as
select a.pcx_codigo, Extract( year from a.vencto ) as Ano, Sum(a.pago) as pago, Sum(a.recebido) as recebido, Min(a.vencto) as DtMin, Max(a.vencto) as DtMax
from    resumo_rateio_view a
    join pcx0000 b on b.pcx_codigo=a.pcx_codigo
group by 1,2^
Commit Work^
---------------------------------------------------------
Create or alter View Resumo_Mensal_View
as
select a.emp_codigo,  a.pcx_codigo, wy.rnum as Mes, Sum(a.pago) as pago, Sum(a.recebido) as recebido, Min(a.vencto) as DtMin, Max(a.vencto) as DtMax
from    resumo_rateio_view a
    join pcx0000 b on b.pcx_codigo=a.pcx_codigo
    join MesOfTheYear (a.vencto) WY on 1=1
group by 1,2,3^
Commit Work^
---------------------------------------------------------
Create or alter View Resumo_Mensal_View_Geral
as
select a.pcx_codigo, wy.rnum as Mes, Sum(a.pago) as pago, Sum(a.recebido) as recebido, Min(a.vencto) as DtMin, Max(a.vencto) as DtMax
from    resumo_rateio_view a
    join pcx0000 b on b.pcx_codigo=a.pcx_codigo
    join MesOfTheYear (a.vencto) WY on 1=1
group by 1,2^
Commit Work^
---------------------------------------------------------
create or alter procedure PRC_NIVELPAI ( PCX_NIVEL varchar(15) )
returns (NIVEL_PAI varchar(15))
as
declare variable NIVEL varchar(15);
declare variable POSANT integer;
declare variable POS integer;
begin
    nivel = pcx_nivel;
    pos = position ('.' in nivel ) ;
    posant = 0 ;
    while (pos > 0) do
    begin
        posant = posant + pos;
        nivel = substring( nivel from pos+1 for 15);
        pos = position ('.' in nivel );
    end
    if (posant>0) then
        nivel = substring( pcx_nivel from 1 for posant-1);
    Else
        nivel = '';
    nivel_pai = nivel ;
    suspend;
end^
COMMIT WORK^
---------------------------------------------------------
CREATE OR ALTER TRIGGER PCX0000_BI1 FOR PCX0000
ACTIVE BEFORE INSERT POSITION 1
as
declare variable NIVELPAI VARCHAR(15);
begin
    select * from PRC_NIVELPAI( new.pcx_nivel ) into :NIVELPAI;
    NEW.nivel_pai = :nivelpai;
end ^

CREATE OR ALTER TRIGGER PCX0000_BU1 FOR PCX0000
ACTIVE BEFORE UPDATE POSITION 1
as
declare variable NIVELPAI VARCHAR(15);
begin
    select * from PRC_NIVELPAI( new.pcx_nivel ) into :NIVELPAI;
    NEW.nivel_pai = :nivelpai;
end^
commit work^
---------------------------------------------------------
UPDATE PCX0000 SET PCX_NIVEL = PCX_NIVEL^
commit work^
---------------------------------------------------------
create or alter view pcx0000_view
as
select pcx_codigo, pcx_nivel, pcx_nivel||' - '||pcx_descri as pcx_descri, pcx_tipo
from pcx0000^
Commit work^
---------------------------------------------------------
create or alter procedure WEEKOFTHEYEAR(PDATE date)
returns (RNUM char(8))
as
begin
        select right( '0'||(((EXTRACT( YEARDAY FROM :pDate ) - EXTRACT( WEEKDAY FROM :pDate-1 ) + 7) / 7)+1) ,2) ||'/'||cast(Extract(year from :pDate) as char(4)) from rdb$database into :rNum;
        suspend;
end^
Commit work^
---------------------------------------------------------
CREATE INDEX PAG_PAGAMENTO_IDX1 ON PAG_PAGAMENTO (PAG_REGISTRO)^
CREATE INDEX PAG_PAGAMENTO_IDX2 ON PAG_PAGAMENTO (EMP_CODIGO)^
CREATE INDEX FAT_RECEBIMENTO_IDX1 ON FAT_RECEBIMENTO (FAT_REGISTRO)^
CREATE INDEX FAT_RECEBIMENTO_IDX2 ON FAT_RECEBIMENTO (EMP_CODIGO)^
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
create or alter view Pl_CC_vencto_View
as
select a.EMP_CODIGO,
       a.PCX_CODIGO,
       a.CCT_CODIGO,
       a.VENCTO,
       a.PAGO,
       a.RECEBIDO,
       b.pcx_nivel,
       b.pcx_descri,
       c.cct_nivel,
       c.cct_descri
From Lista_Pl_CC_vencto_View a
    join pcx0000 b on b.pcx_codigo=a.pcx_codigo
    join cct_0000 c on c.cct_codigo=a.cct_codigo^
Commit work^
---------------------------------------------------------
create or alter view Pl_CC_vencto_View_geral
as
select a.PCX_CODIGO,
       a.CCT_CODIGO,
       a.VENCTO,
       a.PAGO,
       a.RECEBIDO,
       b.pcx_nivel,
       b.pcx_descri,
       c.cct_nivel,
       c.cct_descri
From Lista_Pl_CC_vencto_View_geral a
    join pcx0000 b on b.pcx_codigo=a.pcx_codigo
    join cct_0000 c on c.cct_codigo=a.cct_codigo^
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
create or alter view Pl_CC_pagto_View
as
select a.EMP_CODIGO,
       a.PCX_CODIGO,
       a.CCT_CODIGO,
       a.pagto,
       a.PAGO,
       a.RECEBIDO,
       b.pcx_nivel,
       b.pcx_descri,
       c.cct_nivel,
       c.cct_descri
From Lista_Pl_CC_pagto_View a
    join pcx0000 b on b.pcx_codigo=a.pcx_codigo
    join cct_0000 c on c.cct_codigo=a.cct_codigo^
Commit work^
---------------------------------------------------------
create or alter view Pl_CC_pagto_View_geral
as
select a.PCX_CODIGO,
       a.CCT_CODIGO,
       a.pagto,
       a.PAGO,
       a.RECEBIDO,
       b.pcx_nivel,
       b.pcx_descri,
       c.cct_nivel,
       c.cct_descri
From Lista_Pl_CC_pagto_View_geral a
    join pcx0000 b on b.pcx_codigo=a.pcx_codigo
    join cct_0000 c on c.cct_codigo=a.cct_codigo^
Commit work^
---------------------------------------------------------
create or alter view pl_vencto_view
as
select a.emp_codigo,  a.cct_codigo, a.ppc_vencto as vencto,
       sum (a.PPC_VLPARC  - a.PPC_VALOR_N_RATEIA) as Pago,
       0.00 as Recebido
from pag_pc01 a
Group By 1,2,3
union all
select a.emp_codigo,  a.cct_codigo, a.fpc_vencto as vencto,
       0.00 as Pago,
       sum (a.fPC_VLPARC) as Recebido
from fat_pc01 a
Group By 1,2,3^
Commit work^
---------------------------------------------------------
create or alter view pl_vencto_view_geral
as
select a.cct_codigo, a.ppc_vencto as vencto,
       sum (a.PPC_VLPARC  - a.PPC_VALOR_N_RATEIA) as Pago,
       0.00 as Recebido
from pag_pc01 a
Group By 1,2
union all
select a.cct_codigo, a.fpc_vencto as vencto,
       0.00 as Pago,
       sum (a.fPC_VLPARC) as Recebido
from fat_pc01 a
Group By 1,2^
Commit work^
---------------------------------------------------------
CREATE OR ALTER VIEW RESUMO_PL_VENCTO_VIEW
AS
select a.emp_codigo, a.cct_codigo, a.Vencto, sum(a.pago) as pago , sum(a.recebido) as recebido
from PL_VENCTO_VIEW a
group by a.emp_codigo, a.cct_codigo, a.Vencto^
Commit work^
---------------------------------------------------------
CREATE OR ALTER VIEW RESUMO_PL_VENCTO_VIEW_geral
AS
select a.cct_codigo, a.Vencto, sum(a.pago) as pago , sum(a.recebido) as recebido
from PL_VENCTO_VIEW a
group by a.cct_codigo, a.Vencto^
Commit work^
---------------------------------------------------------
CREATE OR ALTER VIEW RES_PL_VENCTO_SEM_VIEW
AS
select a.emp_codigo,  a.CCT_codigo, wy.rnum as Semana, Sum(a.pago) as pago, Sum(a.recebido) as recebido, min(a.vencto) as DtMin, Max(a.Vencto) as DtMax
from    RESUMO_PL_VENCTO_VIEW a
    join CCT_0000 b on b.CCT_codigo=a.CCT_codigo
    join WeekOfTheYear (a.vencto) WY on 1=1
group by 1,2,3^
Commit work^
---------------------------------------------------------
CREATE OR ALTER VIEW RES_PL_VENCTO_SEM_VIEW_GERAL
AS
select a.CCT_codigo, wy.rnum as Semana, Sum(a.pago) as pago, Sum(a.recebido) as recebido, min(a.vencto) as DtMin, Max(a.Vencto) as DtMax
from    RESUMO_PL_VENCTO_VIEW a
    join CCT_0000 b on b.CCT_codigo=a.CCT_codigo
    join WeekOfTheYear (a.vencto) WY on 1=1
group by 1,2^
Commit work^
---------------------------------------------------------
CREATE OR ALTER VIEW RES_PL_VENCTO_MES_VIEW
AS
select a.emp_codigo,  a.CCT_codigo, wy.rnum as Mes, Sum(a.pago) as pago, Sum(a.recebido) as recebido, min(a.vencto) as DtMin, Max(a.Vencto) as DtMax
from    RESUMO_PL_VENCTO_VIEW a
    join CCT_0000 b on b.CCT_codigo=a.CCT_codigo
    join MesOfTheYear (a.vencto) WY on 1=1
group by 1,2,3^
Commit work^
---------------------------------------------------------
CREATE OR ALTER VIEW RES_PL_VENCTO_MES_VIEW_GERAL
AS
select a.CCT_codigo, wy.rnum as Mes, Sum(a.pago) as pago, Sum(a.recebido) as recebido, min(a.vencto) as DtMin, Max(a.Vencto) as DtMax
from    RESUMO_PL_VENCTO_VIEW a
    join CCT_0000 b on b.CCT_codigo=a.CCT_codigo
    join MesOfTheYear (a.vencto) WY on 1=1
group by 1,2^
Commit work^
---------------------------------------------------------
CREATE OR ALTER VIEW RES_PL_VENCTO_bim_VIEW
AS
select a.emp_codigo,  a.CCT_codigo, wy.rnum as Bimestre, Sum(a.pago) as pago, Sum(a.recebido) as recebido, min(a.vencto) as DtMin, Max(a.Vencto) as DtMax
from    RESUMO_PL_VENCTO_VIEW a
    join CCT_0000 b on b.CCT_codigo=a.CCT_codigo
    join BiOfTheYear (a.vencto) WY on 1=1
group by 1,2,3^
Commit work^
---------------------------------------------------------
CREATE OR ALTER VIEW RES_PL_VENCTO_bIM_VIEW_GERAL
AS
select a.CCT_codigo, wy.rnum as Bimestre, Sum(a.pago) as pago, Sum(a.recebido) as recebido, min(a.vencto) as DtMin, Max(a.Vencto) as DtMax
from    RESUMO_PL_VENCTO_VIEW a
    join CCT_0000 b on b.CCT_codigo=a.CCT_codigo
    join BiOfTheYear (a.vencto) WY on 1=1
group by 1,2^
Commit work^
---------------------------------------------------------
CREATE OR ALTER VIEW RES_PL_VENCTO_TRI_VIEW
AS
select a.emp_codigo,  a.CCT_codigo, wy.rnum as Trimestre, Sum(a.pago) as pago, Sum(a.recebido) as recebido, min(a.vencto) as DtMin, Max(a.Vencto) as DtMax
from    RESUMO_PL_VENCTO_VIEW a
    join CCT_0000 b on b.CCT_codigo=a.CCT_codigo
    join TriOfTheYear (a.vencto) WY on 1=1
group by 1,2,3^
Commit work^
---------------------------------------------------------
CREATE OR ALTER VIEW RES_PL_VENCTO_TRI_VIEW_GERAL
AS
select a.CCT_codigo, wy.rnum as Trimestre, Sum(a.pago) as pago, Sum(a.recebido) as recebido, min(a.vencto) as DtMin, Max(a.Vencto) as DtMax
from    RESUMO_PL_VENCTO_VIEW a
    join CCT_0000 b on b.CCT_codigo=a.CCT_codigo
    join TriOfTheYear (a.vencto) WY on 1=1
group by 1,2^
Commit work^
---------------------------------------------------------
CREATE OR ALTER VIEW RES_PL_VENCTO_sms_VIEW
AS
select a.emp_codigo,  a.CCT_codigo, wy.rnum as Semestre, Sum(a.pago) as pago, Sum(a.recebido) as recebido, min(a.vencto) as DtMin, Max(a.Vencto) as DtMax
from    RESUMO_PL_VENCTO_VIEW a
    join CCT_0000 b on b.CCT_codigo=a.CCT_codigo
    join SemOfTheYear (a.vencto) WY on 1=1
group by 1,2,3^
Commit work^
---------------------------------------------------------
CREATE OR ALTER VIEW RES_PL_VENCTO_sms_VIEW_GERAL
AS
select a.CCT_codigo, wy.rnum as Semestre, Sum(a.pago) as pago, Sum(a.recebido) as recebido, min(a.vencto) as DtMin, Max(a.Vencto) as DtMax
from    RESUMO_PL_VENCTO_VIEW a
    join CCT_0000 b on b.CCT_codigo=a.CCT_codigo
    join SemOfTheYear (a.vencto) WY on 1=1
group by 1,2^
Commit work^
---------------------------------------------------------
CREATE OR ALTER VIEW RES_PL_VENCTO_ano_VIEW
AS
select a.emp_codigo,  a.CCT_codigo, Extract( year from a.vencto ) as Ano, Sum(a.pago) as pago, Sum(a.recebido) as recebido, min(a.vencto) as DtMin, Max(a.Vencto) as DtMax
from    RESUMO_PL_VENCTO_VIEW a
    join CCT_0000 b on b.CCT_codigo=a.CCT_codigo
group by 1,2,3^
Commit work^
---------------------------------------------------------
CREATE OR ALTER VIEW RES_PL_VENCTO_ano_VIEW_GERAL
AS
select a.CCT_codigo, Extract( year from a.vencto ) as Ano, Sum(a.pago) as pago, Sum(a.recebido) as recebido, min(a.vencto) as DtMin, Max(a.Vencto) as DtMax
from    RESUMO_PL_VENCTO_VIEW a
    join CCT_0000 b on b.CCT_codigo=a.CCT_codigo
group by 1,2^
Commit work^
---------------------------------------------------------
CREATE OR ALTER VIEW PL_Emissao_VIEW
AS
select a.emp_codigo,  a.cct_codigo, b.PAG_DTEMIS as Emissao,
       sum (a.PPC_VLPARC  - a.PPC_VALOR_N_RATEIA) as Pago,
       0.00 as Recebido
from pag_pc01 a
    JOIN PAG0000 b ON b.PAG_CODIGO = a.PAG_CODIGO AND b.FOR_CODIGO = a.FOR_CODIGO
Group By 1,2,3
union all
select a.emp_codigo,  a.cct_codigo, b.FAT_DTEMIS as Emissao,
       0.00 as Pago,
       sum (a.fPC_VLPARC) as Recebido
from fat_pc01 a
    JOIN FAT0000 b ON b.FAT_CODIGO = a.FAT_CODIGO AND b.CLI_CODIGO = b.CLI_CODIGO
Group By 1,2,3^
Commit work^
---------------------------------------------------------
CREATE OR ALTER VIEW RESUMO_PL_emissao_VIEW
AS
select a.emp_codigo, a.cct_codigo, a.emissao, sum(a.pago) as pago , sum(a.recebido) as recebido
from PL_Emissao_VIEW a
group by a.emp_codigo, a.cct_codigo, a.emissao^
Commit work^
---------------------------------------------------------
CREATE OR ALTER VIEW RESUMO_PL_emissao_VIEW_geral
AS
select a.cct_codigo, a.emissao, sum(a.pago) as pago , sum(a.recebido) as recebido
from PL_Emissao_VIEW a
group by a.cct_codigo, a.emissao^
Commit work^
---------------------------------------------------------
CREATE OR ALTER VIEW RES_PL_EMISSAO_SEM_VIEW
AS
select a.emp_codigo,  a.CCT_codigo, wy.rnum as Semana, Sum(a.pago) as pago, Sum(a.recebido) as recebido, min(a.EMISSAO) as DtMin, Max(a.EMISSAO) as DtMax
from    RESUMO_PL_emissao_VIEW a
    join CCT_0000 b on b.CCT_codigo=a.CCT_codigo
    join WeekOfTheYear (a.EMISSAO) WY on 1=1
group by 1,2,3^
Commit work^
---------------------------------------------------------
CREATE OR ALTER VIEW RES_PL_EMISSAO_SEM_VIEW_GERAL
AS
select a.CCT_codigo, wy.rnum as Semana, Sum(a.pago) as pago, Sum(a.recebido) as recebido, min(a.EMISSAO) as DtMin, Max(a.EMISSAO) as DtMax
from    RESUMO_PL_emissao_VIEW a
    join CCT_0000 b on b.CCT_codigo=a.CCT_codigo
    join WeekOfTheYear (a.EMISSAO) WY on 1=1
group by 1,2^
Commit work^
---------------------------------------------------------
CREATE OR ALTER VIEW RES_PL_EMISSAO_mes_VIEW
AS
select a.emp_codigo,  a.CCT_codigo, wy.rnum as Mes, Sum(a.pago) as pago, Sum(a.recebido) as recebido, min(a.EMISSAO) as DtMin, Max(a.EMISSAO) as DtMax
from    RESUMO_PL_emissao_VIEW a
    join CCT_0000 b on b.CCT_codigo=a.CCT_codigo
    join MesOfTheYear (a.emissao) WY on 1=1
group by 1,2,3^
Commit work^
---------------------------------------------------------
CREATE OR ALTER VIEW RES_PL_EMISSAO_mes_VIEW_GERAL
AS
select a.CCT_codigo, wy.rnum as Mes, Sum(a.pago) as pago, Sum(a.recebido) as recebido, min(a.EMISSAO) as DtMin, Max(a.EMISSAO) as DtMax
from    RESUMO_PL_emissao_VIEW a
    join CCT_0000 b on b.CCT_codigo=a.CCT_codigo
    join MesOfTheYear (a.emissao) WY on 1=1
group by 1,2^
Commit work^
---------------------------------------------------------
CREATE OR ALTER VIEW RES_PL_EMISSAO_bim_VIEW
AS
select a.emp_codigo,  a.CCT_codigo, wy.rnum as Bimestre, Sum(a.pago) as pago, Sum(a.recebido) as recebido, min(a.EMISSAO) as DtMin, Max(a.EMISSAO) as DtMax
from    RESUMO_PL_emissao_VIEW a
    join CCT_0000 b on b.CCT_codigo=a.CCT_codigo
    join BiOfTheYear (a.emissao) WY on 1=1
group by 1,2,3^
Commit work^
---------------------------------------------------------
CREATE OR ALTER VIEW RES_PL_EMISSAO_bim_VIEW_GERAL
AS
select a.CCT_codigo, wy.rnum as Bimestre, Sum(a.pago) as pago, Sum(a.recebido) as recebido, min(a.EMISSAO) as DtMin, Max(a.EMISSAO) as DtMax
from    RESUMO_PL_emissao_VIEW a
    join CCT_0000 b on b.CCT_codigo=a.CCT_codigo
    join BiOfTheYear (a.emissao) WY on 1=1
group by 1,2^
Commit work^
---------------------------------------------------------
CREATE OR ALTER VIEW RES_PL_EMISSAO_tri_VIEW
AS
select a.emp_codigo,  a.CCT_codigo, wy.rnum as Trimestre, Sum(a.pago) as pago, Sum(a.recebido) as recebido, min(a.EMISSAO) as DtMin, Max(a.EMISSAO) as DtMax
from    RESUMO_PL_emissao_VIEW a
    join CCT_0000 b on b.CCT_codigo=a.CCT_codigo
    join TriOfTheYear (a.emissao) WY on 1=1
group by 1,2,3^
Commit work^
---------------------------------------------------------
CREATE OR ALTER VIEW RES_PL_EMISSAO_tri_VIEW_GERAL
AS
select a.CCT_codigo, wy.rnum as Trimestre, Sum(a.pago) as pago, Sum(a.recebido) as recebido, min(a.EMISSAO) as DtMin, Max(a.EMISSAO) as DtMax
from    RESUMO_PL_emissao_VIEW a
    join CCT_0000 b on b.CCT_codigo=a.CCT_codigo
    join TriOfTheYear (a.emissao) WY on 1=1
group by 1,2^
Commit work^
---------------------------------------------------------
CREATE OR ALTER VIEW RES_PL_EMISSAO_sms_VIEW
AS
select a.emp_codigo,  a.CCT_codigo, wy.rnum as Semestre, Sum(a.pago) as pago, Sum(a.recebido) as recebido, min(a.EMISSAO) as DtMin, Max(a.EMISSAO) as DtMax
from    RESUMO_PL_emissao_VIEW a
    join CCT_0000 b on b.CCT_codigo=a.CCT_codigo
    join SemOfTheYear (a.emissao) WY on 1=1
group by 1,2,3^
Commit work^
---------------------------------------------------------
CREATE OR ALTER VIEW RES_PL_EMISSAO_sms_VIEW_GERAL
AS
select a.CCT_codigo, wy.rnum as Semestre, Sum(a.pago) as pago, Sum(a.recebido) as recebido, min(a.EMISSAO) as DtMin, Max(a.EMISSAO) as DtMax
from    RESUMO_PL_emissao_VIEW a
    join CCT_0000 b on b.CCT_codigo=a.CCT_codigo
    join SemOfTheYear (a.emissao) WY on 1=1
group by 1,2^
Commit work^
---------------------------------------------------------
CREATE OR ALTER VIEW RES_PL_EMISSAO_ano_VIEW
AS
select a.emp_codigo,  a.CCT_codigo, Extract( year from a.emissao ) as Ano, Sum(a.pago) as pago, Sum(a.recebido) as recebido, min(a.EMISSAO) as DtMin, Max(a.EMISSAO) as DtMax
from    RESUMO_PL_emissao_VIEW a
    join CCT_0000 b on b.CCT_codigo=a.CCT_codigo
group by 1,2,3^
Commit work^
---------------------------------------------------------
CREATE OR ALTER VIEW RES_PL_EMISSAO_ano_VIEW_GERAL
AS
select a.CCT_codigo, Extract( year from a.emissao ) as Ano, Sum(a.pago) as pago, Sum(a.recebido) as recebido, min(a.EMISSAO) as DtMin, Max(a.EMISSAO) as DtMax
from    RESUMO_PL_emissao_VIEW a
    join CCT_0000 b on b.CCT_codigo=a.CCT_codigo
group by 1,2^
Commit work^
---------------------------------------------------------
CREATE OR ALTER VIEW PL_PAGTO_VIEW
AS
select a.emp_codigo,  a.cct_codigo, a.PPC_PAGTO as Pagto,
       sum (a.PPC_VLPAGO) as Pago,
       0.00 as Recebido
from pag_pc01 a
    JOIN PAG0000 b ON b.PAG_CODIGO = a.PAG_CODIGO AND b.FOR_CODIGO = a.FOR_CODIGO
Group By 1,2,3
union all
select a.emp_codigo,  a.cct_codigo, a.fPC_PAGTO as Pagto,
       0.00 as Pago,
       sum (a.fPC_VLPAGO) as Recebido
from fat_pc01 a
    JOIN FAT0000 b ON b.FAT_CODIGO = a.FAT_CODIGO AND b.CLI_CODIGO = b.CLI_CODIGO
Group By 1,2,3^
Commit work^
---------------------------------------------------------
CREATE OR ALTER VIEW RESUMO_PL_PAGTO_VIEW
AS
select a.emp_codigo, a.cct_codigo, a.PAGTO, sum(a.pago) as pago , sum(a.recebido) as recebido
from PL_PAGTO_VIEW a
group by a.emp_codigo, a.cct_codigo, a.PAGTO^
Commit work^
---------------------------------------------------------
CREATE OR ALTER VIEW RESUMO_PL_PAGTO_VIEW_GERAL
AS
select a.emp_codigo, a.cct_codigo, a.PAGTO, sum(a.pago) as pago , sum(a.recebido) as recebido
from PL_PAGTO_VIEW a
group by a.emp_codigo, a.cct_codigo, a.PAGTO^
Commit work^
---------------------------------------------------------
CREATE OR ALTER VIEW RES_PL_PAGTO_SEM_VIEW
AS
select a.emp_codigo,  a.CCT_codigo, wy.rnum as Semana, Sum(a.pago) as pago, Sum(a.recebido) as recebido, min(a.PAGTO) as DtMin, Max(a.PAGTO) as DtMax
from    RESUMO_PL_PAGTO_VIEW a
    join WeekOfTheYear (a.PAGTO) WY on 1=1
group by 1,2,3^
Commit work^
---------------------------------------------------------
CREATE OR ALTER VIEW RES_PL_PAGTO_SEM_VIEW_GERAL
AS
select a.CCT_codigo, wy.rnum as Semana, Sum(a.pago) as pago, Sum(a.recebido) as recebido, min(a.PAGTO) as DtMin, Max(a.PAGTO) as DtMax
from    RESUMO_PL_PAGTO_VIEW a
    join WeekOfTheYear (a.PAGTO) WY on 1=1
group by 1,2^
Commit work^
---------------------------------------------------------
CREATE OR ALTER VIEW RES_PL_PAGTO_MES_VIEW
AS
select a.emp_codigo,  a.CCT_codigo, wy.rnum as MES, Sum(a.pago) as pago, Sum(a.recebido) as recebido, min(a.PAGTO) as DtMin, Max(a.PAGTO) as DtMax
from    RESUMO_PL_PAGTO_VIEW a
    join MesOfTheYear (a.PAGTO) WY on 1=1
group by 1,2,3^
Commit work^
---------------------------------------------------------
CREATE OR ALTER VIEW RES_PL_PAGTO_MES_VIEW_GERAL
AS
select a.CCT_codigo, wy.rnum as MES, Sum(a.pago) as pago, Sum(a.recebido) as recebido, min(a.PAGTO) as DtMin, Max(a.PAGTO) as DtMax
from    RESUMO_PL_PAGTO_VIEW a
    join MesOfTheYear (a.PAGTO) WY on 1=1
group by 1,2^
Commit work^
---------------------------------------------------------
CREATE OR ALTER VIEW RES_PL_PAGTO_BIM_VIEW
AS
select a.emp_codigo,  a.CCT_codigo, wy.rnum as BIMESTRE, Sum(a.pago) as pago, Sum(a.recebido) as recebido, min(a.PAGTO) as DtMin, Max(a.PAGTO) as DtMax
from    RESUMO_PL_PAGTO_VIEW a
    join BiOfTheYear (a.PAGTO) WY on 1=1
group by 1,2,3^
Commit work^
---------------------------------------------------------
CREATE OR ALTER VIEW RES_PL_PAGTO_BIM_VIEW_GERAL
AS
select a.CCT_codigo, wy.rnum as BIMESTRE, Sum(a.pago) as pago, Sum(a.recebido) as recebido, min(a.PAGTO) as DtMin, Max(a.PAGTO) as DtMax
from    RESUMO_PL_PAGTO_VIEW a
    join BiOfTheYear (a.PAGTO) WY on 1=1
group by 1,2^
Commit work^
---------------------------------------------------------
CREATE OR ALTER VIEW RES_PL_PAGTO_TRI_VIEW
AS
select a.emp_codigo,  a.CCT_codigo, wy.rnum as TRIMESTRE, Sum(a.pago) as pago, Sum(a.recebido) as recebido, min(a.PAGTO) as DtMin, Max(a.PAGTO) as DtMax
from    RESUMO_PL_PAGTO_VIEW a
    join TriOfTheYear (a.PAGTO) WY on 1=1
group by 1,2,3^
Commit work^
---------------------------------------------------------
CREATE OR ALTER VIEW RES_PL_PAGTO_TRI_VIEW_GERAL
AS
select a.CCT_codigo, wy.rnum as TRIMESTRE, Sum(a.pago) as pago, Sum(a.recebido) as recebido, min(a.PAGTO) as DtMin, Max(a.PAGTO) as DtMax
from    RESUMO_PL_PAGTO_VIEW a
    join TriOfTheYear (a.PAGTO) WY on 1=1
group by 1,2^
Commit work^
---------------------------------------------------------
CREATE OR ALTER VIEW RES_PL_PAGTO_SMS_VIEW
AS
select a.emp_codigo,  a.CCT_codigo, wy.rnum as SEMESTRE, Sum(a.pago) as pago, Sum(a.recebido) as recebido, min(a.PAGTO) as DtMin, Max(a.PAGTO) as DtMax
from    RESUMO_PL_PAGTO_VIEW a
    join SemOfTheYear (a.PAGTO) WY on 1=1
group by 1,2,3^
Commit work^
---------------------------------------------------------
CREATE OR ALTER VIEW RES_PL_PAGTO_SMS_VIEW_GERAL
AS
select a.CCT_codigo, wy.rnum as SEMESTRE, Sum(a.pago) as pago, Sum(a.recebido) as recebido, min(a.PAGTO) as DtMin, Max(a.PAGTO) as DtMax
from    RESUMO_PL_PAGTO_VIEW a
    join SemOfTheYear (a.PAGTO) WY on 1=1
group by 1,2^
Commit work^
---------------------------------------------------------
CREATE OR ALTER VIEW RES_PL_PAGTO_ANO_VIEW
AS
select a.emp_codigo,  a.CCT_codigo, Extract( year from a.PAGTO ) as Ano, Sum(a.pago) as pago, Sum(a.recebido) as recebido, min(a.PAGTO) as DtMin, Max(a.PAGTO) as DtMax
from    RESUMO_PL_PAGTO_VIEW a
group by 1,2,3^
Commit work^
---------------------------------------------------------
CREATE OR ALTER VIEW RES_PL_PAGTO_ANO_VIEW_GERAL
AS
select a.CCT_codigo, Extract( year from a.PAGTO ) as Ano, Sum(a.pago) as pago, Sum(a.recebido) as recebido, min(a.PAGTO) as DtMin, Max(a.PAGTO) as DtMax
from    RESUMO_PL_PAGTO_VIEW a
group by 1,2^
Commit work^
---------------------------------------------------------
CREATE OR ALTER VIEW USUARIO_TUDO_VIEW
AS
select a.*, c.*
from USUARIO_PARAMETRO a, usuario c
where c.usu_codigo = a.usp_cod_usuario^
Commit work^
---------------------------------------------------------

Update VERSAOSISTEMA SET
       VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.0.466' ,
       VERSAOSISTEMA.DATA   = '07.11.2016'
 where VERSAOSISTEMA.CODIGO = 1^

COMMIT WORK^

SET TERM ; ^


