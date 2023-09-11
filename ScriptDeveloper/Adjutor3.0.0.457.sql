SET TERM ^ ;

update nf_pc01 set fat_codigo = RIGHT('000000'||fat_codigo,6) where char_length ( trim ( fat_codigo ) )<6^
update fat0000 set fat_codigo = RIGHT('000000'||fat_codigo,6) where char_length ( trim ( fat_codigo ) )<6^
update fat_pc01 set fat_codigo = RIGHT('000000'||fat_codigo,6) where char_length ( trim ( fat_codigo ) )<6^
update fat_it02 set fat_codigo = RIGHT('000000'||fat_codigo,6) where char_length ( trim ( fat_codigo ) )<6^
update PRD0000 set prd_codigo = RIGHT('00000'||prd_codigo,5) where char_length ( trim ( prd_codigo ) )<5^
update PRD0000_CODIGO set prd_codigo = RIGHT('00000'||prd_codigo,5) where char_length ( trim ( prd_codigo ) )<5^
COMMIT WORK ^

alter table PRMT0001 add FMT_PAD_REFER varchar(20)^
commit work^

create or alter procedure PRD_AJUSTA_SITUACAO_PEDIDO (     VCOD_PEDIDO char(7),  VCOD_EMP char(3))
returns (
    VSIT char(1))
as
declare variable VQTDFAT float;
declare variable VQTD float;
begin
  select sum(PRF_QTDE), sum(PRF_QTDEFAT)
  from PED_IT01
  where PED_CODIGO = :VCOD_PEDIDO and
        EMP_CODIGO = :VCOD_EMP and
        PRF_PRODUTO_AGREGADO = 'N'
  into :VQTD, :VQTDFAT;
  if (VQTDFAT >= VQTD) then
    VSIT = 'T';
  else
  if (VQTDFAT > 0) then
    VSIT = 'P';
  else
    VSIT = 'F';
  suspend;
end^

commit work^

create or alter trigger PEDIDO_BI0 for PED0000
active before insert position 0
as
begin
  if (new.PED_REGISTRO is null) then
    new.PED_REGISTRO = gen_id(GEN_PEDIDO, 1);
  if (coalesce(new.ID_PEDIDO, 0) = 0) then
  begin
    new.ID_PEDIDO = gen_id(GEN_ID_PEDIDO, 1);
    insert into PED_CNTNUM (ID_PEDIDO, EMP_CODIGO, PED_CODIGO)
    values (new.ID_PEDIDO, new.EMP_CODIGO, new.PED_CODIGO);
  end
  if (new.PED_SITUACAO <> 'C') then
    new.PED_SITUACAO = (select VSIT from PRD_AJUSTA_SITUACAO_PEDIDO( new.PED_CODIGO, new.EMP_CODIGO ) );
end^

create or alter trigger PED0000_BU0 for PED0000
active before update position 0
as
begin
  if (new.PED_SITUACAO <> 'C') then
    new.PED_SITUACAO = (select VSIT
    from PRD_AJUSTA_SITUACAO_PEDIDO(new.PED_CODIGO, new.EMP_CODIGO));
end^

create or alter procedure PRD_AJUSTA_SITUACAO_PEDIDOITEM ( VCOD_PEDIDO char(7),  VCOD_EMP char(3) )
as
declare variable SIT char(1);
begin

  select PED_SITUACAO  from PED0000  where PED_CODIGO = :VCOD_PEDIDO and  EMP_CODIGO = :VCOD_EMP   into :SIT;

  if (SIT <> 'C') then
    update PED0000
    set PED_SITUACAO = (select VSIT
                        from PRD_AJUSTA_SITUACAO_PEDIDO(:VCOD_PEDIDO, :vcod_emp ))
    where PED_CODIGO = :VCOD_PEDIDO;
  suspend;
end^

commit work^

create or alter trigger PED_IT01_AI0 for PED_IT01
active after insert position 0
as
begin
  execute procedure PRD_AJUSTA_SITUACAO_PEDIDOITEM(new.PED_CODIGO, new.EMP_CODIGO);
end^

create or alter trigger PED_IT01_AU0 for PED_IT01
active after update position 0
as
begin
  execute procedure PRD_AJUSTA_SITUACAO_PEDIDOITEM(new.PED_CODIGO, new.EMP_CODIGO);
end^

CREATE OR ALTER TRIGGER PED_IT01_AD0 FOR PED_IT01
ACTIVE AFTER DELETE POSITION 0
AS
begin
     EXECUTE PROCEDURE PRD_AJUSTA_SITUACAO_PEDIDOITEM(OLD.ped_codigo, OLD.EMP_CODIGO);
end^

commit work^



Update VERSAOSISTEMA SET
       VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.0.457' ,
       VERSAOSISTEMA.DATA   = '13.09.2016'
 where VERSAOSISTEMA.CODIGO = 1^

COMMIT WORK^

SET TERM ; ^



