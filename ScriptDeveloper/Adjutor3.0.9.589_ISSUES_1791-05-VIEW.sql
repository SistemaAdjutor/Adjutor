CREATE TRIGGER PEDIDO_BI0 FOR PED0000 BEFORE INSERT
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
  if ((new.PED_SITUACAO <> 'C') AND (NEW.PED_SITUACAO <> 'I') ) then
    new.PED_SITUACAO = (select VSIT from PRD_AJUSTA_SITUACAO_PEDIDO( new.PED_CODIGO, new.EMP_CODIGO ) );
END;