SET TERM ^ ;

alter table ped0000 add SitExp Char( 3 ) ^

commit work^

create index ped0000_SitExp on ped0000( SitExp ) ^
create index cli0000_indx10 on cli0000 ( cli_fantasia )^
create index cli0000_indx12 on cli0000 ( cli_uf )^
create index cli0000_indx11 on cli0000 ( emp_codigo )^
commit work^

CREATE OR ALTER TRIGGER CID0000_BI FOR CID0000
ACTIVE BEFORE INSERT POSITION 0
AS
BEGIN
  IF (NEW.CID_CODIGO IS NULL) THEN
    NEW.CID_CODIGO = GEN_ID(GEN_CID0000_ID,1);
END
^

commit work^

---------------------------------------------------------------------

CREATE OR ALTER VIEW prod_pesq_view (prd_codigo, prd_refer, prd_descri, prd_und, Descricao)
as
select prd_codigo,
       prd_refer,
       prd_descri,
       prd_und,
       prd_refer||' - '||prd_descri||' ('||prd_und||')' as Descricao
from prd0000^
commit work^

CREATE or ALTER VIEW USUARIO_TUDO_VIEW
AS
select a.*, c.*
from USUARIO_PARAMETRO a, usuario c
where c.usu_codigo = a.usp_cod_usuario^
commit work^

alter table prd0000 add prd_especifico char(1)^
alter table prd0000 add id_prd_especifico integer^
alter table prd0000 add prd_especifico_redst float^
Alter table nf_it01 add prd_pmc float^
CREATE INDEX XFOR_cnpj ON FOR0000 (FOR_cgc)^
CREATE INDEX XTRP_cnpj ON TRP0000 (TRP_cgc)^
CREATE INDEX XCID_CIDADE ON CID0000 (cid_estado, cid_cidade)^

commit work^

UPDATE PRD0000 SET PRD_ESPECIFICO='N'^

--SET TERM ^ ;

CREATE SEQUENCE GEN_PRD_CODIGO^
CREATE SEQUENCE GEN_FAT_PC01_REGISTRO^
CREATE SEQUENCE GEN_NF_REGISTRO^
CREATE SEQUENCE GEN_FAT0000_REGISTRO^
CREATE SEQUENCE GEN_FTC_IT01_REGISTRO^
CREATE SEQUENCE GEN_FOR0000_CODIGO^
CREATE SEQUENCE GEN_CLI0000_CODIGO^
CREATE SEQUENCE GEN_TRP0000_CODIGO^
CREATE SEQUENCE GEN_PCL0000_CODIGO^
CREATE SEQUENCE gen_ope0000_codigo^
CREATE SEQUENCE gen_caixa001_lancto^

COMMIT WORK^

CREATE or ALTER PROCEDURE UPDATE_prd_codigo_gen
AS
declare variable cod varchar(10);
declare variable stmt varchar(150);
BEGIN

    cod = (select Coalesce(max(NP_REGISTRO),0) from NF_PED);
    stmt = 'ALTER SEQUENCE gen_nf_ped RESTART WITH '||cod;
    execute statement stmt;


    cod = (select Coalesce(max(PES_REGISTRO),0) from prd_ensa);
    stmt = 'ALTER SEQUENCE gen_prd_ensa RESTART WITH '||cod;
    execute statement stmt;

    cod = (select Coalesce(max( kar_registro ),0) from kardex);
    stmt = 'ALTER SEQUENCE gen_kardex_id RESTART WITH '||cod;
    execute statement stmt;


    cod = (select Coalesce(max( nf_registro),0) from nf_it01);
    stmt = 'ALTER SEQUENCE GEN_NF_IT01 RESTART WITH '||cod;
    execute statement stmt;

    cod = (select coalesce( Max(cxa_lancto), 0) from caixa001);
    stmt = 'ALTER SEQUENCE gen_caixa001_lancto RESTART WITH '||cod;
    execute statement stmt;

    cod = (select coalesce( Max(ope_CODIGO), 0) from ope0000);
    stmt = 'ALTER SEQUENCE GEN_ope0000_CODIGO RESTART WITH '||cod;
    execute statement stmt;

    cod = (select coalesce( Max(PCL_CODIGO), 0) from PCL0000);
    stmt = 'ALTER SEQUENCE GEN_PCL0000_CODIGO RESTART WITH '||cod;
    execute statement stmt;

    cod = (select coalesce( Max(TRP_CODIGO), 0) from TRP0000);
    stmt = 'ALTER SEQUENCE GEN_TRP0000_CODIGO RESTART WITH '||cod;
    execute statement stmt;

    cod = (select coalesce( Max(FOR_CODIGO), 0) from FOR0000);
    stmt = 'ALTER SEQUENCE GEN_FOR0000_CODIGO RESTART WITH '||cod;
    execute statement stmt;

    cod = (select coalesce( Max(CLI_CODIGO), 0) from CLI0000);
    stmt = 'ALTER SEQUENCE GEN_CLI0000_CODIGO RESTART WITH '||cod;
    execute statement stmt;

    cod = (select coalesce( Max(prd_codigo), 0) from prd0000);
    stmt = 'ALTER SEQUENCE GEN_PRD_CODIGO RESTART WITH '||cod;
    execute statement stmt;

    cod = (select coalesce( Max(fat_registro), 0) from FAT_PC01);
    stmt = 'ALTER SEQUENCE GEN_FAT_PC01_REGISTRO RESTART WITH '||cod;
    execute statement stmt;

    cod = (select coalesce( Max(nf_registro), 0) from nf_it01);
    stmt = 'ALTER SEQUENCE GEN_NF_IT01 RESTART WITH '||cod;
    execute statement stmt;

    cod = (select coalesce( Max(nf_registro), 0) from nf0001);
    stmt = 'ALTER SEQUENCE GEN_NF_REGISTRO RESTART WITH '||cod;
    execute statement stmt;

    cod = (select coalesce( Max(fat_registro), 0) from FAT0000);
    stmt = 'ALTER SEQUENCE GEN_FAT0000_REGISTRO RESTART WITH '||cod;
    execute statement stmt;

    cod = (select coalesce( Max(FTI_REGISTRO), 0) from FTC_IT01);
    stmt = 'ALTER SEQUENCE GEN_FTC_IT01_REGISTRO RESTART WITH '||cod;
    execute statement stmt;

END^

COMMIT WORK^

execUTE PROCEDURE UPDATE_prd_codigo_gen^

COMMIT WORK^

DROP PROCEDURE UPDATE_prd_codigo_gen^

COMMIT WORK^

--SET TERM ^ ;

create or alter procedure PRD_AJUSTA_SITUACAO_PEDIDO (
    VCOD_PEDIDO char(7))
returns (
    VSIT char(1))
as
declare variable VQTDFAT float;
declare variable VQTD float;
begin
    select sum ( prf_qtde ), sum( prf_qtdefat )
    from ped_it01
    where PED_CODIGO = :vcod_pedido and prf_produto_agregado='N'
    into :vqtd,  :vqtdfat;
    if (vQtdFat>=vQtd) then 
        vSit='T' ;
    else
    if (vQtdFat>0) then
        vSit='P' ;
    else
        vSit='F' ;
    suspend;
end^

CREATE OR ALTER TRIGGER PEDIDO_BI0 FOR PED0000
ACTIVE BEFORE INSERT POSITION 0
AS
begin
    if (new.ped_registro is null) then  
        NEW.ped_registro = GEN_ID(GEN_PEDIDO,1);
    if ( coalesce (new.id_pedido,0) = 0 )  then
    begin
        new.id_pedido = gen_id ( gen_id_pedido,1 );
        insert into ped_cntnum (id_pedido, emp_codigo, ped_codigo) values (new.id_pedido, new.emp_codigo, new.ped_codigo);
    end
    if (NEW.ped_situacao<>'C') then
        NEW.ped_situacao=(select vsit from prd_ajusta_situacao_pedido( new.ped_codigo));
end^

CREATE OR ALTER TRIGGER PED0000_BU0 FOR PED0000
ACTIVE BEFORE UPDATE POSITION 0
AS
begin
    if (NEW.ped_situacao<>'C') then
        NEW.ped_situacao=(select vsit from prd_ajusta_situacao_pedido( new.ped_codigo )) ;
end^

create or alter procedure PRD_AJUSTA_SITUACAO_PEDIDOITEM (
    VCOD_PEDIDO char(7))
as
declare variable SIT char(1);
begin
     select ped_situacao
     from ped0000
     where ped_codigo=:vcod_pedido
     into :sit;

     if (sit<>'C') then
        update ped0000 set ped_situacao = (select vsit from PRD_AJUSTA_SITUACAO_PEDIDO( :vcod_pedido )) where ped_codigo=:vCod_pedido;
     suspend;
end^

CREATE OR ALTER TRIGGER ITEM_PEDIDO_BI0 FOR PED_IT01
ACTIVE BEFORE INSERT POSITION 0
AS
begin
    NEW.Prf_registro = GEN_ID(GEN_ITEM_PEDIDO,1);
    if (new.prf_qtde<new.prf_qtdefat) then
        new.prf_situacao='P';
    else
        new.prf_situacao='F';
end^

CREATE OR ALTER TRIGGER PED_IT01_AD0 FOR PED_IT01
ACTIVE AFTER DELETE POSITION 0
AS
begin
     EXECUTE PROCEDURE prd_ajusta_situacao_pedidoITEM( OLD.ped_codigo);
end^

CREATE OR ALTER TRIGGER PED_IT01_AI0 FOR PED_IT01
ACTIVE AFTER INSERT POSITION 0
AS
begin
     EXECUTE PROCEDURE prd_ajusta_situacao_pedidoITEM( new.ped_codigo);
end^

CREATE OR ALTER TRIGGER PED_IT01_AU0 FOR PED_IT01
ACTIVE AFTER UPDATE POSITION 0
AS
begin
     EXECUTE PROCEDURE prd_ajusta_situacao_pedidoITEM( new.ped_codigo);
end^

CREATE OR ALTER TRIGGER PED_IT01_BU0 FOR PED_IT01
ACTIVE BEFORE UPDATE POSITION 0
AS
begin
 if (new.prf_qtde<new.prf_qtdefat) then
      new.prf_situacao='P';
  else
    new.prf_situacao='F';
end^

CREATE OR ALTER TRIGGER FAT0000_BI0 FOR FAT0000
ACTIVE BEFORE INSERT POSITION 0
AS
begin
    if (NEW.FAT_REGISTRO IS NULL) then
        NEW.FAT_REGISTRO=GEN_ID(GEN_FAT_PC01_REGISTRO,1);
end
^

COMMIT WORK^

update rdb$fields Z set Z.RDB$COLLATION_ID=Null, RDB$CHARACTER_SET_ID=53 where Z.RDB$field_name in
(
   select B.rdb$field_source
   from rdb$fields A
        join rdb$relation_fields B on  B.RDB$field_source = a.RDB$field_name
        join rdb$relations C on C.rdb$relation_name=B.rdb$relation_name  and C.rdb$flags=1 and C.rdb$view_source is null
    where a.rdb$field_type in ( 14, 37 ) and a.rdb$field_length>10
)^


commit work^

update rdb$relation_fields Z set Z.RDB$COLLATION_ID=6 where Z.rdb$field_source in
(   select B.rdb$field_source
    from rdb$fields A
        join rdb$relation_fields B on  B.RDB$field_source = a.RDB$field_name
        join rdb$relations C on C.rdb$relation_name=B.rdb$relation_name  and C.rdb$flags=1 and C.rdb$view_source is null
    where a.rdb$field_type in ( 14, 37 ) and a.rdb$field_length>10
)^

commit work^


Update VERSAOSISTEMA SET
       VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.0.456' ,
       VERSAOSISTEMA.DATA   = '28.07.2016'
 where VERSAOSISTEMA.CODIGO = 1^

COMMIT WORK^

SET TERM ; ^





