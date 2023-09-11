UPDATE  VERSAOSISTEMA 
SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.549',
    VERSAOSISTEMA.DATA   = '06.10.2020',
	VERSAO = '3.0.9.549'
 where VERSAOSISTEMA.CODIGO = 1;
 
commit work;

UPDATE FTC0000
 SET FTC_ETAPAS = COALESCE(FTC_PROC1,'') || COALESCE(FTC_PROC2,'') || COALESCE(FTC_PROC3,'') || 
 COALESCE(FTC_PROC4,'') ||COALESCE(FTC_PROC5,'') || COALESCE(FTC_PROC6,'') || COALESCE(FTC_PROC7,'') || COALESCE(FTC_PROC8,'');
 
 
 COMMIT WORK;
 
 
 ALTER TABLE PRMT0001 ADD PMT_CLIENTE_PRODUCAO VARCHAR(5); 
COMMENT ON COLUMN PRMT0001.PMT_CLIENTE_PRODUCAO IS 'CLIENTE PADRAO NA PRODUCAO';


ALTER TABLE OPV0000 ADD opv_pedidoInterno varchar(1);
comment ON COLUMN opv0000.opv_pedidointerno IS 'pedido interno de produção';

SET TERM ^ ;
execute block as
  declare variable x integer;
begin
  SELECT max(OPV_codigo)+1 from OPV0000 into x;
 
  
  execute statement ' INSERT INTO OPV0000 (OPV_CODIGO, opv_descricao, EMP_CODIGO, opv_tipo, OPV_PRODUCAO, opv_pedidointerno) ' ||
                   ' VALUES ('||X|| ',''Pedido Interno'', ''001'',''S'',''S'' ,''S'')';

end
^
SET TERM ; ^

COMMIT WORK;

COMMENT ON COLUMN PED0000.PED_SITUACAO IS 'A FATURAR = F , CANCELADO = C , FATURADO TOTAL = T, PARCIAL = P , FATURADO AGRUPADO  = A ; I - PEDIDO INTERNO';


SET TERM ^ ;
ALTER TRIGGER PEDIDO_BI0 
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
END
^
SET TERM ; ^

SET TERM ^ ;
ALTER TRIGGER PED0000_BU0 
as
begin
  if (new.PED_SITUACAO not in ('C','A','I')) then
    new.PED_SITUACAO = (select VSIT
    from PRD_AJUSTA_SITUACAO_PEDIDO(new.PED_CODIGO, new.EMP_CODIGO));
end

^
SET TERM ; ^

