UPDATE  VERSAOSISTEMA 
SET    VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.528 patch 3',
       VERSAOSISTEMA.DATA   = '10.02.2018',
       VERSAO = '3.0.9.528'
where VERSAOSISTEMA.CODIGO = 1;

COMMIT WORK;

COMMENT ON COLUMN PED0000.PED_ORS_CLIENTE IS 'NOME DO CLIENTE PARA ORCAMENTO';
COMMENT ON COLUMN PED0000.PED_ORS_DIAS_ENTREGA IS 'DIAS ENTREGA';
COMMENT ON COLUMN PED0000.PED_ORS_DIAS_VALIDADE IS 'DIAS VALIDADE DO ORCAMENTO';
COMMENT ON COLUMN PED0000.PED_ORS_FONE IS 'FONE ORCAMENTO';
COMMENT ON COLUMN PED0000.PED_ORS_FAX IS 'FAX ORCAMENTO';
COMMENT ON COLUMN PED0000.PED_ORS_EMAIL IS 'EMAIL DO CLIENTE DO ORCAMENTO';
COMMENT ON COLUMN PED0000.PED_ORS_ESTADO IS 'ESTADO DO CLIENTE DO ORCAMENTO';

SET TERM ^ ;
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
END
^
SET TERM ; ^



ALTER TABLE PED_IT01 ADD PRF_PRODUTO_SEMVALOR VARCHAR(1);

ALTER TRIGGER PED_IT01_AU0 INACTIVE;

UPDATE PED_IT01
SET PRF_PRODUTO_SEMVALOR = 'S' , PRF_PRODUTO_AGREGADO = 'N'
WHERE PRF_REGISTRO_VINCULADO = 0
AND PRF_PRODUTO_AGREGADO = 'S';

COMMIT WORK;

UPDATE PED_IT01
SET PRF_PRODUTO_SEMVALOR = 'N'
WHERE PRF_PRODUTO_SEMVALOR IS NULL;

ALTER TRIGGER PED_IT01_AU0 ACTIVE;

COMMIT WORK;

SET TERM ^ ;
CREATE OR ALTER TRIGGER NF_IT01_BI0 FOR NF_IT01
ACTIVE BEFORE INSERT POSITION 0
AS
declare variable cst char(2);
declare variable compartilhada varchar(1);
begin
    if (New.nf_registro IS NULL) THEN NEW.NF_REGISTRO = gen_id(gen_NF_IT01,1);
    if (new.prd_refer is not null) then
    begin
        select produtos from sharedb into :compartilhada;
        if (:compartilhada = 'E') then
        begin
           cst = (select prd.prd_cstpiscofins from prd0000 prd where prd.prd_refer = new.prd_refer and prd.emp_codigo = new.emp_codigo);
        end
        else
           cst = (select prd.prd_cstpiscofins from prd0000 prd where prd.prd_refer = new.prd_refer);
        new.cst_pis = cst;
        new.cst_cofins = cst;
    end
    else
    begin
        new.cst_pis = null;
        new.cst_cofins = null;
    end
end
^
SET TERM ; ^

SET TERM ^ ;
CREATE OR ALTER TRIGGER NF_IT01_BU0 FOR NF_IT01
ACTIVE BEFORE UPDATE POSITION 0
AS
declare variable cst char(2);
declare variable compartilhada varchar(1);
begin
    if (new.prd_refer is not null) then
    begin
      select produtos from sharedb into :compartilhada;
      if (:compartilhada = 'E') then
      begin
           cst = (select prd.prd_cstpiscofins from prd0000 prd where prd.prd_refer = new.prd_refer and prd.emp_codigo = new.emp_codigo);
      end
      else
        cst = (select prd.prd_cstpiscofins from prd0000 prd where prd.prd_refer = new.prd_refer);
        new.cst_pis = cst;
        new.cst_cofins = cst;
    end
    else
    begin
        new.cst_pis = null;
        new.cst_cofins = null;
    end
end;
