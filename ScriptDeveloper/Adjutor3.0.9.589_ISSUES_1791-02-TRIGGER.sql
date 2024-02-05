CREATE TRIGGER ITEM_PEDIDO_BI0 FOR PED_IT01 BEFORE INSERT
AS
BEGIN
    IF (NEW.Prf_registro IS NULL) THEN
       NEW.Prf_registro = GEN_ID(GEN_ITEM_PEDIDO,1);
    if (new.prf_qtde<new.prf_qtdefat) then
        new.prf_situacao='P';
    else
        new.prf_situacao='F';
end;