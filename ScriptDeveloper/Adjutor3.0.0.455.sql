SET TERM ^ ;

CREATE INDEX OSV0001_IDX2 ON OSV0001 (OSV_CODIGO)^
COMMIT WORK^

alter table prmt0001 add pmt_coparticipacao char(1) ^
COMMIT WORK^

alter table prd_lote add PRDL_CUSTO decimal(18,5)^
alter table prd_lote add PRDL_NFE varchar(10)^
alter table prd_lote add FOR_CODIGO varchar(4)^
COMMIT WORK^

CREATE INDEX FIN_RATEIO_IDX3B ON FIN_RATEIO (FIR_REGISTRO_TIPO)^
CREATE INDEX FIN_RATEIO_IDX4B ON FIN_RATEIO (FIR_INDICE)^
CREATE INDEX FIN_RATEIO_IDX5B ON FIN_RATEIO (EMP_CODIGO)^
CREATE INDEX PAG_PC01_IDX1B ON PAG_PC01 (PPC_EXCLUSAO)^
CREATE INDEX PAG_PC01_IDX3B ON PAG_PC01 (PAG_REGISTRO)^
CREATE INDEX PAG_PC01_IDX4B ON PAG_PC01 (FOR_CODIGO)^
CREATE INDEX PAG0000_IDX3B ON PAG0000 (CCT_CODIGO)^
CREATE INDEX PAG0000_IDX1B ON PAG0000 (FOR_CODIGO)^
CREATE INDEX PCX0000_IDX2B ON PCX0000 (PCX_NIVEL)^
CREATE INDEX CCT_0000_IDX1B ON CCT_0000 (CCT_CODIGO)^
CREATE INDEX CCT_0000_IDX2B ON CCT_0000 (CCT_NIVEL)^
COMMIT WORK^

--DROP INDEX PCX0000_PERFIL_COLABORADOR_5^
alter table PCX0000_PERFIL_COLABORADOR add pcx_codigob varchar(3)^
COMMIT WORK^
update PCX0000_PERFIL_COLABORADOR A set A.pcx_codigob =(select B.pcx_codigo from pcx0000 B where B.pcx_codigo=A.pcx_codigo and A.Emp_codigo=B.Emp_codigo)^
COMMIT WORK^
alter table PCX0000_PERFIL_COLABORADOR drop pcx_codigo^
COMMIT WORK^
alter table PCX0000_PERFIL_COLABORADOR add pcx_codigo varchar(3)^
COMMIT WORK^
update PCX0000_PERFIL_COLABORADOR set pcx_codigo=pcx_codigob^
COMMIT WORK^
alter table PCX0000_PERFIL_COLABORADOR drop pcx_codigob^
COMMIT WORK^

CREATE INDEX PCX0000_PERFIL_COLABORADOR_1 ON PCX0000_PERFIL_COLABORADOR (PPC_REGISTRO)^
CREATE INDEX PCX0000_PERFIL_COLABORADOR_2 ON PCX0000_PERFIL_COLABORADOR (EMP_CODIGO)^
CREATE INDEX PCX0000_PERFIL_COLABORADOR_3 ON PCX0000_PERFIL_COLABORADOR (PCXPF_REGISTRO)^
CREATE INDEX PCX0000_PERFIL_COLABORADOR_4 ON PCX0000_PERFIL_COLABORADOR (CCT_0000)^
CREATE INDEX PCX0000_PERFIL_COLABORADOR_5 ON PCX0000_PERFIL_COLABORADOR (PCX_CODIGO)^
CREATE INDEX PCX0000_PLANO_1 ON PCX0000_PLANO (PCXP_REGISTRO)^
CREATE INDEX PCX0000_PLANO_2 ON PCX0000_PLANO (EMP_CODIGO)^
CREATE INDEX PCX0000_PLANO_3 ON PCX0000_PLANO (CCT_0000)^
CREATE INDEX PCX0000_PLANO_4 ON PCX0000_PLANO (PCX_CODIGO)^
CREATE INDEX PCX0000_PLANO_5 ON PCX0000_PLANO (PCXPF_REGISTRO)^
CREATE INDEX PCX0000_PERFIL_1 ON PCX0000_PERFIL (PCXPF_REGISTRO)^
CREATE INDEX PCX0000_PERFIL_2 ON PCX0000_PERFIL (EMP_CODIGO)^
CREATE INDEX PCX0000_PERFIL_3 ON PCX0000_PERFIL (PCXPF_DATA_INICIAL)^
CREATE INDEX PCX0000_PERFIL_4 ON PCX0000_PERFIL (PCXPF_DATA_FINAL)^
COMMIT WORK^


CREATE OR ALTER VIEW OPE0000_VIEW_PESQUISA(
    OPE_CODIGO,
    CFOP,
    OPE_NATUREZA,
    OPE_DESCRI,ope_tipo, OPE_DENTRO, OPE_ATIVA, emp_codigo)
AS
select  ope_codigo,
        ope_natureza||' - '||ope_descri as Cfop,
        ope_natureza,
        ope_descri, ope_tipo, OPE_DENTRO, OPE_ATIVA, emp_codigo
from ope0000^

commit work^

Create or alter View PCX0000_PERFIL_VIEW as
Select PCXPF_REGISTRO, EMP_CODIGO, PCXPF_DATA_INICIAL, PCXPF_DATA_FINAL,
       substring( Dt1 from 9 for 2 )||'/'||substring( Dt1 from 6 for 2 )||'/'||substring( Dt1 from 1 for 4 )||' - '||substring( Dt2 from 9 for 2 )||'/'||substring( Dt2 from 6 for 2 )||'/'||substring( Dt2 from 1 for 4 ) as Periodo
from (Select PCXPF_REGISTRO, EMP_CODIGO, PCXPF_DATA_INICIAL, PCXPF_DATA_FINAL, cast(PCXPF_DATA_INICIAL as varchar(10)) as Dt1, cast(PCXPF_DATA_FINAL as varchar(10)) as dt2 FROM PCX0000_PERFIL)^

commit work^

--ALTER TABLE CHEQUE ADD CONSTRAINT FK_CHEQUE_1 FOREIGN KEY (CHS_REGISTRO) REFERENCES CHEQUE_STATUS (CHS_REGISTRO)^


ALTER TABLE PRMT0001 ADD PMT_CSTPISCOFINS VARCHAR(2)^
ALTER TABLE PRD0000 ADD PRD_CSTPISCOFINS VARCHAR(2)^

alter table nf_it01 add cst_pis char(2)^
alter table nf_it01 add cst_cofins char(2)^

commit work^

CREATE or ALTER PROCEDURE UPDATE_PISCOFINS
AS
declare variable EMP_SIMPLES CHAR(1);
BEGIN
    for select EMP_OPTANTE_SIMPLES
    from emp0000
    into :EMP_SIMPLES DO
    begin
         if (EMP_SIMPLES='S') then
         begin
            update PRMT0001 set PMT_CSTPISCOFINS='99';
            update PRD0000 set PRD_CSTPISCOFINS='99';
            UPDATE NF_IT01 SET CST_PIS = '99', CST_COFINS = '99';
         END
         ELSE
         BEGIN
            update PRMT0001 set PMT_CSTPISCOFINS='01';
            update PRD0000 set PRD_CSTPISCOFINS='01';
    
            UPDATE NF_IT01 SET CST_PIS = '01', CST_COFINS = '01'  WHERE COALESCE(NF_VLCOFINS,0)>0;
            UPDATE NF_IT01 SET CST_PIS = '08', CST_COFINS = '08'  WHERE COALESCE(NF_VLCOFINS,0)=0;
         END
    END
END^

COMMIT WORK^

execUTE PROCEDURE UPDATE_PISCOFINS^

COMMIT WORK^

DROP PROCEDURE UPDATE_PISCOFINS^

create table cstpiscofins
(
    id integer,
    cst char(2),
    descricao VarChar(140) character set win1252 collate win_PTBR
    )^
Commit Work^

CREATE SEQUENCE GEN_ID_CSTPISCOFINS^
Commit Work^

CREATE or ALTER  trigger cstpiscofins_ai01 for cstpiscofins
active BEFORE insert position 0
AS
begin
    if (new.id is null) then
        new.id = GEN_ID(GEN_ID_CSTPISCOFINS, 1);
end ^

CREATE INDEX indx_cst_1 ON cstpiscofins (id)^
CREATE INDEX indx_cst_2 ON cstpiscofins (cst)^
CREATE INDEX indx_cst_3 ON cstpiscofins (descricao)^
--ALTER TABLE prd0000 ADD CONSTRAINT FK_cstpisscofins_1 FOREIGN KEY (CSTPISCOFINS) REFERENCES cstpiscofins (cst)^
--ALTER TABLE PRMT0001 ADD CONSTRAINT FK_cstpisscofins_2 FOREIGN KEY (CSTPISCOFINS) REFERENCES cstpiscofins (cst)^
Commit Work^
DELETE FROM CstPisCofins^
ALTER SEQUENCE GEN_ID_CSTPISCOFINS RESTART WITH 1^
Commit Work^

Insert Into CstPisCofins ( cst, descricao ) values ( '01','Operação Tributável com Alíquota Básica')^
Insert Into CstPisCofins (cst, descricao ) values ( '02','Operação Tributável com Alíquota Diferenciada')^
Insert Into CstPisCofins  ( cst, descricao ) values ( '03','Operação Tributável com Alíquota por Unidade de Medida de Produto')^
Insert Into CstPisCofins  ( cst, descricao ) values ( '04','Operação Tributável Monofásica - Revenda a Alíquota Zero')^
Insert Into CstPisCofins  ( cst, descricao ) values ( '05','Operação Tributável por Substituição Tributária')^
Insert Into CstPisCofins  ( cst, descricao ) values ( '06','Operação Tributável a Alíquota Zero')^
Insert Into CstPisCofins  ( cst, descricao ) values ( '07','Operação Isenta da Contribuição')^
Insert Into CstPisCofins  ( cst, descricao ) values ( '08','Operação sem Incidência da Contribuição')^
Insert Into CstPisCofins  ( cst, descricao ) values ( '09','Operação com Suspensão da Contribuição')^
Insert Into CstPisCofins  ( cst, descricao ) values ( '49','Outras Operações de Saída')^
Insert Into CstPisCofins  ( cst, descricao ) values ( '50','Operação com Direito a Crédito - Vinculada Exclusivamente a Receita Tributada no Mercado Interno')^
Insert Into CstPisCofins  ( cst, descricao ) values ( '51','Operação com Direito a Crédito - Vinculada Exclusivamente a Receita Não-Tributada no Mercado Interno')^
Insert Into CstPisCofins  ( cst, descricao ) values ( '52','Operação com Direito a Crédito - Vinculada Exclusivamente a Receita de Exportação')^
Insert Into CstPisCofins  ( cst, descricao ) values ( '53','Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno')^
Insert Into CstPisCofins  ( cst, descricao ) values ( '54','Operação com Direito a Crédito - Vinculada a Receitas Tributadas no Mercado Interno e de Exportação')^
Insert Into CstPisCofins  ( cst, descricao ) values ( '55','Operação com Direito a Crédito - Vinculada a Receitas Não Tributadas no Mercado Interno e de Exportação')^
Insert Into CstPisCofins  ( cst, descricao ) values ( '56','Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno e de Exportação')^
Insert Into CstPisCofins  ( cst, descricao ) values ( '60','Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Tributada no Mercado Interno')^
Insert Into CstPisCofins  ( cst, descricao ) values ( '61','Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Não-Tributada no Mercado Interno')^
Insert Into CstPisCofins  ( cst, descricao ) values ( '62','Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita de Exportação')^
Insert Into CstPisCofins  ( cst, descricao ) values ( '63','Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno')^
Insert Into CstPisCofins  ( cst, descricao ) values ( '64','Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas no Mercado Interno e de Exportação')^
Insert Into CstPisCofins  ( cst, descricao ) values ( '65','Crédito Presumido - Operação de Aquisição Vinculada a Receitas Não-Tributadas no Mercado Interno e de Exportação')^
Insert Into CstPisCofins  ( cst, descricao ) values ( '66','Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno e de Exportação')^
Insert Into CstPisCofins  ( cst, descricao ) values ( '67','Crédito Presumido - Outras Operações')^
Insert Into CstPisCofins  ( cst, descricao ) values ( '70','Operação de Aquisição sem Direito a Crédito')^
Insert Into CstPisCofins  ( cst, descricao ) values ( '71','Operação de Aquisição com Isenção')^
Insert Into CstPisCofins  ( cst, descricao ) values ( '72','Operação de Aquisição com Suspensão')^
Insert Into CstPisCofins  ( cst, descricao ) values ( '73','Operação de Aquisição a Alíquota Zero')^
Insert Into CstPisCofins  ( cst, descricao ) values ( '74','Operação de Aquisição sem Incidência da Contribuição')^
Insert Into CstPisCofins  ( cst, descricao ) values ( '75','Operação de Aquisição por Substituição Tributária')^
Insert Into CstPisCofins  ( cst, descricao ) values ( '98','Outras Operações de Entrada')^
Insert Into CstPisCofins  ( cst, descricao ) values ( '99','Outras Operações')^
commit work^

CREATE or alter trigger NF_IT01_BI0 for nf_it01
active before insert position 0
AS
declare variable cst char(2);
begin
    if (New.nf_registro IS NULL) THEN NEW.NF_REGISTRO = gen_id(gen_NF_IT01,1);
    if (new.prd_refer is not null) then
    begin
        cst = (select prd.prd_cstpiscofins from prd0000 prd where prd.prd_refer = new.prd_refer);
        new.cst_pis = cst;
        new.cst_cofins = cst;
    end
    else
    begin
        new.cst_pis = null;
        new.cst_cofins = null;
    end
end^

CREATE or alter trigger NF_IT01_Bu0 for nf_it01
active before update position 0
AS
declare variable cst char(2);
begin
    if (new.prd_refer is not null) then
    begin
        cst = (select prd.prd_cstpiscofins from prd0000 prd where prd.prd_refer = new.prd_refer);
        new.cst_pis = cst;
        new.cst_cofins = cst;
    end
    else
    begin
        new.cst_pis = null;
        new.cst_cofins = null;
    end
end^

commit work^

Update VERSAOSISTEMA SET
       VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.0.455' ,
       VERSAOSISTEMA.DATA   = '21.07.2016'
 where VERSAOSISTEMA.CODIGO = 1^

COMMIT WORK^

SET TERM ; ^




