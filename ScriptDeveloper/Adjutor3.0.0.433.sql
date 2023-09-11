ALTER TABLE OCP_IT01
    ADD OCI_DESCRICAO BLOB SUB_TYPE 1 SEGMENT SIZE 80;

--------------------------------------------------------------------------------
commit work;

UPDATE OCP_IT01 T2 SET T2.OCI_DESCRICAO = (SELECT first 1 T1.prd_descri FROM prd0000 T1 WHERE T1.prd_refer = T2.prd_refer) WHERE T2.OCI_DESCRICAO IS NULL;

--------------------------------------------------------------------------------
commit work;

ALTER TABLE PRMT0001
    ADD PMT_FAT_CONFIRMA_PARCELA VARCHAR(1) DEFAULT 'N';

--------------------------------------------------------------------------------
commit work;


UPDATE PRMT0001 SET PMT_FAT_CONFIRMA_PARCELA = 'N' WHERE PMT_FAT_CONFIRMA_PARCELA IS NULL;

--------------------------------------------------------------------------------
commit work;

CREATE TABLE PRD0000_ENDERECAMENTO (
    PRDE_REGISTRO INTEGER NOT NULL,
    PRD_CODIGO VARCHAR(4),
    PRDE_ENDERECO VARCHAR(30));

ALTER TABLE PRD0000_ENDERECAMENTO
ADD CONSTRAINT PK_PRD0000_ENDERECAMENTO
PRIMARY KEY (PRDE_REGISTRO);

CREATE SEQUENCE GEN_PRD0000_ENDERECAMENTO_ID;

SET TERM ^ ;

create trigger prd0000_enderecamento_bi for prd0000_enderecamento
active before insert position 0
as
begin
  if (new.prde_registro is null) then
    new.prde_registro = gen_id(gen_prd0000_enderecamento_id,1);
end^

SET TERM ; ^


--------------------------------------------------------------------------------
commit work;

ALTER TABLE PRD0000_ENDERECAMENTO
    ALTER PRD_CODIGO TO EMP_CODIGO;

--------------------------------------------------------------------------------
commit work;

ALTER TABLE PRD0000
    ADD PRDE_REGISTRO INTEGER;

COMMENT ON COLUMN PRD0000.PRDE_REGISTRO IS
'registro da tabela de enderecamento';

--------------------------------------------------------------------------------
commit work;


Update VERSAOSISTEMA SET
       VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.0.433' ,
       VERSAOSISTEMA.DATA   = '20.08.2015'
 where VERSAOSISTEMA.CODIGO = 1;


commit work;
