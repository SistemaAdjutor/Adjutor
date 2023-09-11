UPDATE  VERSAOSISTEMA 
SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.570',
    VERSAOSISTEMA.DATA   = '01.07.2022',
	VERSAO = '3.0.9.570'
 where VERSAOSISTEMA.CODIGO = 1;
commit work;

ALTER TABLE OPE0000 ADD OPE_DESP_ACES_PIS_COFINS VARCHAR(1) DEFAULT 'S';
COMMENT ON COLUMN OPE0000.OPE_DESP_ACES_PIS_COFINS is 'Incluir despesas acessórias na base do PIS e COFINS';
UPDATE OPE0000 SET OPE_DESP_ACES_PIS_COFINS = 'S' WHERE OPE_DESP_ACES_PIS_COFINS <> 'N' OR OPE_DESP_ACES_PIS_COFINS IS NULL;

ALTER TABLE PRMT0001 ADD PMT_CENTRO_CUSTO_ENF VARCHAR(1) DEFAULT 'N';
COMMENT ON COLUMN PRMT0001.PMT_CENTRO_CUSTO_ENF is 'Adicionar Centro de Custo no Item da Entrada de Notas Fiscais por XML';
ALTER TABLE ENF_IT01 ADD PCX_CODIGO VARCHAR(3);
COMMENT ON COLUMN ENF_IT01.PCX_CODIGO is 'Centro de Custo Adicionado no Item da Entrada de Notas Fiscais por XML';

CREATE TABLE NATUREZA_CONTA_CONTABIL (
	NCC_CODIGO INT PRIMARY KEY NOT NULL
);
COMMENT ON COLUMN NATUREZA_CONTA_CONTABIL.NCC_CODIGO is 'Chave primária da Natureza da Operação Contábil';
ALTER TABLE NATUREZA_CONTA_CONTABIL ADD NCC_DESCRICAO VARCHAR(255);
COMMENT ON COLUMN NATUREZA_CONTA_CONTABIL.NCC_DESCRICAO is 'Descrição da Natureza da Operação Contábil';
ALTER TABLE CCT_0000 ADD NCC_CODIGO INT;
CREATE INDEX CCT_0000_NCC_CODIGO ON  CCT_0000 COMPUTED BY (NCC_CODIGO);
ALTER TABLE CCT_0000 ADD CCT_ANALITICO_SINTETICO VARCHAR(1);
ALTER TABLE CCT_0000 ADD CCT_CODIGO_CONTA VARCHAR(20);
INSERT INTO NATUREZA_CONTA_CONTABIL VALUES (1, 'Contas do Ativo');
INSERT INTO NATUREZA_CONTA_CONTABIL VALUES (2, 'Contas do Passivo');
INSERT INTO NATUREZA_CONTA_CONTABIL VALUES (3, 'Patrimônio Líquido');
INSERT INTO NATUREZA_CONTA_CONTABIL VALUES (4, 'Contas de Resultado');
INSERT INTO NATUREZA_CONTA_CONTABIL VALUES (5, 'Contas de Compensação');
INSERT INTO NATUREZA_CONTA_CONTABIL VALUES (9, 'Outras');

ALTER TABLE OPV0000 ADD OPV_META_VENDEDOR VARCHAR(1);
COMMENT ON COLUMN OPV0000.OPV_META_VENDEDOR IS 'Participa da meta do vendedor';
UPDATE OPV0000 SET OPV_META_VENDEDOR = 'N' WHERE OPV_META_VENDEDOR <> 'S' ;
ALTER TABLE OPV0000 ADD OPV_COMISSAO_META_VENDEDOR NUMERIC(18,5);
COMMENT ON COLUMN OPV0000.OPV_COMISSAO_META_VENDEDOR IS 'Comissão associada à meta do vendedor';

CREATE OR ALTER PROCEDURE PCD_KARDEX_EXTRATO (EMP_CODIGO VARCHAR(3), PRD_CODIGO VARCHAR(6), AMX_CODIGO VARCHAR(4), DATA_INICIAL TIMESTAMP, DATA_FINAL TIMESTAMP, SALDO_FINAL VARCHAR(1))
RETURNS (
	KEX_REGISTRO INTEGER,
	KEX_DATA_HORA TIMESTAMP,
	KEX_TIPO VARCHAR(1),
	KEX_QUANTIDADE NUMERIC (18,5),
	KEX_USUARIO_CODIGO INTEGER,
	KEX_USUARIO_DESCRICAO VARCHAR(30),
	KEX_SALDO NUMERIC (18,5),
	KEX_ORIGEM VARCHAR(40),
	KEX_DETALHE VARCHAR(255),
	KEX_OBSERVACAO VARCHAR(255),
	KEX_DOCUMENTO VARCHAR(255),
	KEX_PRECO NUMERIC (18,5),
	PRDL_LOTE VARCHAR(30),
	PRG_DESC_GRADE VARCHAR(100),
	COL_CODIGO INTEGER
)
AS
declare variable SALDO numeric(15,4);
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
            CAST(T1.kar_quantidade AS NUMERIC (18,5)),
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
                select first 1 left(opv0000.opv_descricao, 40) from ped0000 join opv0000 on opv0000.opv_codigo = ped0000.opv_codigo where ped0000.ped_registro = :registro_interno into kex_origem;
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
                kex_origem = 'PRODUCAO';
         end
         else 
         if (kex_ORIGEM = 'TRP') then 
            kex_ORIGEM = 'TRANSFERENCIA NO PEDIDO';
         if (kex_ORIGEM = 'EXP') then
            kex_ORIGEM = 'EXPEDICAO';
        suspend;
        END
end;


