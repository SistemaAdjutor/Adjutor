CREATE OR ALTER PROCEDURE PRD_AJUSTA_SITUACAO_PEDIDO (VCOD_PEDIDO CHAR(7), VCOD_EMP CHAR(3))
RETURNS (
	VSIT CHAR(1)
)
AS
declare variable VQTDFAT float;
declare variable VQTD float;
declare variable vDoacao varchar(1);
begin
  select pmt_Pedido_Doacao from PRMT0001
  where emp_codigo = :VCOD_EMP
  into :vDoacao;
  if (:vDoacao <> 'S') then
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
  end
 else 
   vsit = 'T';
  suspend;
end;