SET TERM ^ ;

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

Update VERSAOSISTEMA SET
       VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.0.465' ,
       VERSAOSISTEMA.DATA   = '29.10.2016'
 where VERSAOSISTEMA.CODIGO = 1^

COMMIT WORK^

SET TERM ; ^





