
UPDATE  VERSAOSISTEMA 
SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.534 patch 3',
       VERSAOSISTEMA.DATA   = '16.07.2019',
	    VERSAO = '3.0.9.534'
 where VERSAOSISTEMA.CODIGO = 1;

COMMIT WORK;


ALTER TABLE OPV0000 ADD OPV_TRANSF_PRECOCUSTO VARCHAR(1);

COMMENT ON COLUMN OPV0000.OPV_DESCRICAO IS 'DESCRICAO DO TIPO DE PEDIDO';
COMMENT ON COLUMN OPV0000.OPV_TIPO IS 'TIPO ENTRADA = E ; TIPO DE SAIDA : S ';
COMMENT ON COLUMN OPV0000.OPV_TRANSF_PRECOCUSTO IS 'VENDA TRANSFERENCIA A PRECO DE CUSTO';

UPDATE OPV0000
SET OPV_TRANSF_PRECOCUSTO = 'N';

  
COMMIT WORK;

CREATE TABLE EXPEDICAO (
    EXP_CODIGO        INTEGER NOT NULL,
    EMP_CODIGO        VARCHAR(3),
    EXP_DATAABERTURA  TIMESTAMP,
    EXP_DATAENCERRA   TIMESTAMP,
    EXP_SITUACAO      VARCHAR(1) NOT NULL,
    USU_CODIGO        INTEGER,
    EXP_DATAENVIO     TIMESTAMP,
    EXP_DATARETIRADA  TIMESTAMP,
    EXP_RETIROU       VARCHAR(50),
    PED_REGISTRO      INTEGER,
    EXP_OBSERVACAO    VARCHAR(100)
);

ALTER TABLE EXPEDICAO ADD CONSTRAINT PK_EXPEDICAO PRIMARY KEY (EXP_CODIGO);

COMMENT ON COLUMN EXPEDICAO.EXP_CODIGO IS 'NUMERO DA EXPEDICAO';
COMMENT ON COLUMN EXPEDICAO.EXP_DATAABERTURA IS 'DATA ABERTURA DA SEPARACAO';
COMMENT ON COLUMN EXPEDICAO.EXP_DATAENCERRA IS 'DATA DE ENCERRAMENTO DA SEPARACAO';
COMMENT ON COLUMN EXPEDICAO.EXP_SITUACAO IS 'E = EM SEPARACAO, F  = EFETIVADA C - ESTORNADA';
COMMENT ON COLUMN EXPEDICAO.USU_CODIGO IS 'RESPONSAVEL';
COMMENT ON COLUMN EXPEDICAO.EXP_DATAENVIO IS 'DATA DO ENVIO';
COMMENT ON COLUMN EXPEDICAO.EXP_DATARETIRADA IS 'DATA DE RETIRADA';
COMMENT ON COLUMN EXPEDICAO.EXP_RETIROU IS 'QUEM RETIROU';
COMMENT ON COLUMN EXPEDICAO.EMP_CODIGO IS 'CHAVE REFERENCIA DA EMPRESA (EMP0000)';
COMMENT ON TABLE EXPEDICAO IS 'CONTROLE DE EXPEDICAO DE PEDIDOS';
COMMENT ON COLUMN EXPEDICAO.EXP_OBSERVACAO IS 'OBSERVACAO';

CREATE SEQUENCE GEN_EXPEDICAO;

SET TERM ^ ;

create trigger expedicao_bi for expedicao
active before insert position 0
as
begin
  if (new.exp_codigo is null) then
    new.exp_codigo = gen_id(gen_expedicao,1);
end^

SET TERM ; ^

CREATE TABLE EXPEDICAO_ITEM (
    EXI_CODIGO INTEGER NOT NULL,
    EXP_CODIGO INTEGER NOT NULL,
    PRF_REGISTRO INTEGER NOT NULL,
    EXI_QTDE NUMERIC(18,5) NOT NULL);

ALTER TABLE EXPEDICAO_ITEM ADD CONSTRAINT PK_EXPEDICAO_ITEM PRIMARY KEY (EXI_CODIGO);

COMMENT ON COLUMN EXPEDICAO_ITEM.EXI_CODIGO IS 'ITEM SEPARADA';
COMMENT ON COLUMN EXPEDICAO_ITEM.EXP_CODIGO IS 'CHAVE REFERENCIA DA EXPEDICAO';
COMMENT ON COLUMN EXPEDICAO_ITEM.PRF_REGISTRO IS 'CHAVE DO ITEM DO PEDIDO (PED_IT01)';
COMMENT ON COLUMN EXPEDICAO_ITEM.EXI_QTDE IS 'QUANTIDADE SEPARADA';
COMMENT ON TABLE EXPEDICAO_ITEM IS 'ITEM SEPARADOS';

ALTER TABLE EXPEDICAO_ITEM ADD CONSTRAINT FK_EXPEDICAO_ITEM_1
FOREIGN KEY (EXP_CODIGO) REFERENCES EXPEDICAO(EXP_CODIGO) ON DELETE CASCADE ON UPDATE CASCADE;


CREATE SEQUENCE GEN_EXPEDICAO_ITEM;

SET TERM ^ ;

create trigger expedicao_item_bi for expedicao_item
active before insert position 0
as
begin
  if (new.exi_codigo is null) then
    new.exi_codigo = gen_id(gen_expedicao_item,1);
end^

SET TERM ; ^



ALTER TABLE PRMT0001 ADD PMT_EXPEDICAO_MULTIEMPRESA VARCHAR(1);
COMMENT ON COLUMN PRMT0001.PMT_EXPEDICAO_MULTIEMPRESA IS 'FATURAMENTO MULTIEMPRESA';

UPDATE PRMT0001
SET PMT_EXPEDICAO_MULTIEMPRESA = 'N';

  
 COMMIT WORK;
  
ALTER TABLE HISTORICO_EXPE ADD EMP_CODIGO VARCHAR(3);
COMMENT ON COLUMN HISTORICO_EXPE.EMP_CODIGO IS 'CHAVE REFERENCIA DA EMPRESA (EMP0000)';

UPDATE HISTORICO_EXPE
SET EMP_CODIGO = (SELECT FIRST 1 EMP_CODIGO FROM PED0000 P WHERE P.PED_CODIGO = HISTORICO_EXPE.PED_CODIGO);

  
 COMMIT WORK;
  
ALTER TABLE PED_IT01 ADD PRF_QTDE_EXPEDIDOS NUMERIC (18,5);
COMMENT ON COLUMN PED_IT01.PRF_QTDE_EXPEDIDOS IS 'QUANTIDADE DE ITENS EXPEDIDOS ';
COMMENT ON COLUMN PED_IT01.PRF_QTDEPEND IS 'QUANTIDA PENDENTE DE ESTOQUE';
COMMENT ON COLUMN PED_IT01.PRF_QTDEFAT IS 'QUANTIDA DE ITEM JA FATURADO';


ALTER TABLE USUARIO_PARAMETRO ADD USP_ESTORNAEXPEDICAO VARCHAR(1);
COMMENT ON COLUMN USUARIO_PARAMETRO.USP_ESTORNAEXPEDICAO IS 'PERMITE O USUARIO ESTORNA EXPEDICAO';
   
UPDATE USUARIO_PARAMETRO
  SET USP_ESTORNAEXPEDICAO = 'N';
  
  COMMIT WORK;
  
  
  UPDATE FOR0000
    SET FOR_ATIVO = 'A'
    WHERE FOR_ATIVO IS NULL OR FOR_ATIVO = '';
	
	commit work;
	
		
SET TERM ^ ;
create or alter procedure PCD_KARDEX_EXTRATO (
    EMP_CODIGO varchar(3),
    PRD_CODIGO varchar(6),
    AMX_CODIGO varchar(4),
    DATA_INICIAL timestamp,
    DATA_FINAL timestamp,
    SALDO_FINAL varchar(1))
returns (
    KEX_REGISTRO integer,
    KEX_DATA_HORA timestamp,
    KEX_TIPO varchar(1),
    KEX_QUANTIDADE numeric(14,4),
    KEX_USUARIO_CODIGO integer,
    KEX_USUARIO_DESCRICAO varchar(30),
    KEX_SALDO numeric(14,4),
    KEX_ORIGEM varchar(40),
    KEX_DETALHE varchar(255),
    KEX_OBSERVACAO varchar(255),
    KEX_DOCUMENTO varchar(255),
    KEX_PRECO numeric(14,4),
    PRDL_LOTE varchar(30),
    PRG_DESC_GRADE varchar(100),
    COL_CODIGO integer)
as
declare variable SALDO numeric(14,4);
declare variable AMX_CODIGO_ORIGEM varchar(4);
declare variable LOTE varchar(30);
declare variable REGISTRO_INTERNO integer;
begin
  /* Procedure Text */
  saldo = 0;
  kex_saldo = 0;
  kex_detalhe = '';
  kex_documento = '';
        for
        SELECT
            T1.kar_registro_interno,
            T1.kar_registro,
            T1.data_hora,
            T1.kar_entrada_saida,
            T1.kar_quantidade,
            T1.kar_saldo,
            t1.usu_codigo,
            t2.usu_nome,
            T1.kar_tipo_registro,
            T1.kar_observacao,
            T1.amx_codigo_origem,
            T1.kar_documento,
            T1.kar_descricao,
            T1.kar_preco,
            t3.prdl_lote,
            t4.prg_descricao,
            T1.col_codigo
        FROM
        KARDEX T1
        JOIN SHAREDB DB ON (ESTOQUES = 'C' OR T1.EMP_CODIGO = :emp_codigo)
        left join usuario t2 on (t2.usu_codigo = t1.usu_codigo)
        left join prd_lote t3 on (t3.prdl_registro = t1.prdl_registro)
        left outer join prd_grade t4 on (t4.prg_registro = t1.prg_registro)
        where t1.amx_codigo = :amx_codigo and t1.prd_codigo = :prd_codigo and t1.data_hora between :data_inicial and :data_final
        order by  t1.kar_registro
        into :registro_interno, :kex_registro, :kex_data_hora, :kex_tipo, :kex_quantidade, : saldo,:kex_usuario_codigo, :kex_usuario_descricao, :kex_ORIGEM, :kex_OBSERVACAO,
             :amx_codigo_ORIGEM, :kex_documento, :kex_detalhe, :kex_preco, :PRDL_LOTE, :PRG_DESC_GRADE , :COL_CODIGO
      DO
      BEGIN
        if (PRDL_LOTE <> '') then
            kex_OBSERVACAO = kex_OBSERVACAO ||' LOTE: '|| PRDL_LOTE ;
        kex_saldo = saldo;
        if (SALDO_FINAL <> 'S') then
        /*ORIGEM*/
        if (kex_ORIGEM = 'ENF') then
            begin
                kex_origem = 'ENTRADA NOTA FISCAL';
            end
        else
        if (kex_ORIGEM = 'PED') then
            begin
                select first 1 opv0000.opv_descricao from ped0000 join opv0000 on opv0000.opv_codigo = ped0000.opv_codigo where ped0000.ped_registro = :registro_interno into kex_origem;
                kex_origem = 'PEDIDO';
            end
        else
        if (kex_ORIGEM = 'NF') then
            begin
                kex_origem = 'NOTA FISCAL SAIDA';
            end
        else
        if (kex_ORIGEM = 'MAN') then
            begin
                kex_origem = 'MANUAL';
            end
        else
        if (kex_ORIGEM = 'BAL') then
            begin
                if (kex_observacao = 'ZERAR') then
                    BEGIN
                        kex_origem = 'ZERADO';
                    END
                ELSE
                    kex_origem = 'BALANCO';
            end
        else
        if (kex_ORIGEM = 'TRA') then
            begin
                kex_origem = 'TRANSFERENCIA';
            end
        else
         if (kex_origem = 'PRO') then
         begin
                kex_origem = 'PRODUÇÃO';
         end
         else 
         if (kex_ORIGEM = 'TRP') then 
            kex_ORIGEM = 'TRANSFERENCIA NO PEDIDO';
		 else
         if (kex_ORIGEM = 'EXP') then
            kex_ORIGEM = 'EXPEDICAO';
        suspend;
        END
end^

SET TERM ; ^
