UPDATE  VERSAOSISTEMA 
SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.605',
    VERSAOSISTEMA.DATA   = '04.06.2025',
	VERSAO = '3.0.9.605'
 where VERSAOSISTEMA.CODIGO = 1;
commit work;

/* issue 2047 */
CREATE OR ALTER TRIGGER NF_IT01_BI0 FOR NF_IT01 BEFORE INSERT
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
           cst = (select prd.prd_cstpiscofins from prd0000 prd where prd.prd_refer = new.prd_refer and prd.prd_status = 'A' and prd.emp_codigo = new.emp_codigo);
        end
        else
           cst = (select prd.prd_cstpiscofins from prd0000 prd where prd.prd_refer = new.prd_refer and prd.prd_status = 'A' );
        new.cst_pis = cst;
        new.cst_cofins = cst;
    end
    else
    begin
        new.cst_pis = null;
        new.cst_cofins = null;
    end
end;
