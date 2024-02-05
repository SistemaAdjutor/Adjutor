CREATE OR ALTER PROCEDURE PRD_AJUSTA_SITUACAO_PEDIDOITEM (VCOD_PEDIDO CHAR(7), VCOD_EMP CHAR(3))
AS
declare variable SIT char(1);
begin

  select PED_SITUACAO  from PED0000  where PED_CODIGO = :VCOD_PEDIDO and  EMP_CODIGO = :VCOD_EMP   into :SIT;

  if  (SIT not in ('C','A')) then
    update PED0000
    set PED_SITUACAO = (select FIRST 1 VSIT
                        from PRD_AJUSTA_SITUACAO_PEDIDO(:VCOD_PEDIDO, :vcod_emp ))
    where PED_CODIGO = :VCOD_PEDIDO
	AND EMP_CODIGO = :VCOD_EMP;
  suspend;
END;