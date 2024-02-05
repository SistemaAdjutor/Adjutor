CREATE TRIGGER PED_IT01_BU0 FOR PED_IT01 BEFORE UPDATE
AS
begin
 if (new.prf_qtde<new.prf_qtdefat) then
      new.prf_situacao='P';
  else
    new.prf_situacao='F';
end;
