SET TERM ^ ;

--alter table ped0000 drop id_pedido^
--drop table ped_cntnum^
--commit work^

alter table ped0000 add id_pedido integer^

create table ped_cntnum
(
    id integer not null,
    id_pedido integer, 
    ped_codigo varchar(7),
    emp_codigo VARCHAR(3)
) ^
commit work^

ALTER TABLE ped_cntnum ADD CONSTRAINT PK_ped_cntnum PRIMARY KEY (ID)^
CREATE INDEX ped_cntnum_IDX1 ON ped_cntnum ( id )^
CREATE INDEX ped_cntnum_IDX2 ON ped_cntnum ( id_pedido )^
CREATE INDEX ped_cntnum_IDX3 ON ped_cntnum ( emp_codigo, ped_codigo )^

commit work^

create sequence gen_id_ped_cntnum^
create sequence gen_id_pedido^

CREATE OR ALTER TRIGGER PED_CNTNUM_BI0 FOR PED_CNTNUM
ACTIVE BEFORE INSERT POSITION 0
AS
begin
    if (new.id is null) then
        new.id = gen_id ( gen_id_ped_cntnum, 1 );
end
^
commit work ^

update ped0000 set id_pedido = gen_id ( gen_id_pedido,1 ) where id_pedido is null ^
commit work ^
CREATE INDEX ped0000_IDXX ON ped0000 ( id_pedido )^

--delete from  PED_CNTNUM

insert into PED_CNTNUM ( id_pedido, ped_codigo, emp_codigo )
select id_pedido, ped_codigo, emp_codigo from ped0000 ^
commit work^

CREATE OR ALTER TRIGGER PEDIDO_BI0 FOR PED0000
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  /* Trigger text */
  if (new.ped_registro is null) then
    NEW.ped_registro = GEN_ID(GEN_PEDIDO,1);
  if ( coalesce (new.id_pedido,0) = 0 )  then
  begin
     new.id_pedido = gen_id ( gen_id_pedido,1 );
     insert into ped_cntnum (id_pedido, emp_codigo, ped_codigo) values (new.id_pedido, new.emp_codigo, new.ped_codigo);
  end

end
^

alter table prmt0001 add pmt_permitevendaabaixocusto char(1)^
alter table prmt0001 add PMT_USAR_SEQUENCIA_NFE_UNICA char(1)^
UPDATE prmt0001 SET PMT_USAR_SEQUENCIA_NFE_UNICA = 'N'^
commit work^

ALTER TABLE USUARIO ADD PERMITE_VENDA_ABAIXO_CUSTO CHAR(1)^
UPDATE USUARIO SET PERMITE_VENDA_ABAIXO_CUSTO = 'N'^
ALTER TABLE USUARIO ADD PERMITE_VER_CUSTO CHAR(1)^
UPDATE USUARIO SET PERMITE_VER_CUSTO = 'S'^
COMMIT WORK^


update RDB$FIELDS set RDB$FIELD_SCALE = -6
where RDB$FIELD_NAME = (SELECT RDB$FIELD_SOURCE FROM RDB$RELATION_FIELDS
WHERE RDB$RELATION_NAME = 'PRECOS0001'
AND RDB$FIELD_NAME = 'PRE_PRECO') ^


Update VERSAOSISTEMA SET
       VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.0.450' ,
       VERSAOSISTEMA.DATA   = '09.05.2016'
 where VERSAOSISTEMA.CODIGO = 1^

COMMIT WORK^



SET TERM ; ^


