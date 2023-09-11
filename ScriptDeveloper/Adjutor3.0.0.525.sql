UPDATE  VERSAOSISTEMA 
SET    VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.525',
       VERSAOSISTEMA.DATA   = '03.12.2018',
       VERSAO = '3.0.9.525'
where VERSAOSISTEMA.CODIGO = 1;

ALTER TABLE ENF_IT01 ADD OPE_CODIGO VARCHAR(3);

comment on column KARDEX.KAR_TIPO_REGISTRO is 'PED = PEDIDO ;ENF = Nota de entrada; NF = NOTA FISCAL; MAN = MANUAL ; TRA = TRANSFERENCIA; TRP = TRANF PEDIDO; BAL = BALANCO; PRO = PRODUCAO';

ALTER TABLE OPE0000 ADD OPE_ENTRADA_INDUST VARCHAR(1);
ALTER TABLE OPE0000 ADD OPE_RETORNO_INDUST VARCHAR(1);

COMMENT ON COLUMN OPE0000.OPE_ENTRADA_INDUST  IS 'ENTRADA DE INDUSTRIALIZACAO - ENTRA NO ESTOQUE';
COMMENT ON COLUMN OPE0000.OPE_RETORNO_INDUST IS 'RETORNO DE INDUSTRIALIZACAO - SAI DO ESTOQUE';

UPDATE OPE0000
SET OPE_ENTRADA_INDUST = 'N' , OPE_RETORNO_INDUST = 'N';

COMMENT ON COLUMN CLI0000.OPE_CODIGO IS 'CHAVE REFERENCIA DA OPERACAO FISCAL (OPE0000)'; 
COMMENT ON COLUMN ENF0001.OPE_CODIGO IS 'CHAVE REFERENCIA DA OPERACAO FISCAL (OPE0000)'; 
COMMENT ON COLUMN ENF_IT01.OPE_CODIGO IS 'CHAVE REFERENCIA DA OPERACAO FISCAL (OPE0000)'; 
COMMENT ON COLUMN ENGENHARIA_PROCESSO.OPE_CODIGO IS 'CHAVE REFERENCIA DA OPERACAO FISCAL (OPE0000)'; 
COMMENT ON COLUMN ENTCTE.OPE_CODIGO IS 'CHAVE REFERENCIA DA OPERACAO FISCAL (OPE0000)'; 
COMMENT ON COLUMN FABRICACAO.OPE_CODIGO IS 'CHAVE REFERENCIA DA OPERACAO FISCAL (OPE0000)'; 
COMMENT ON COLUMN FAT0000.OPE_CODIGO IS 'CHAVE REFERENCIA DA OPERACAO FISCAL (OPE0000)'; 
COMMENT ON COLUMN FTC_IT01.OPE_CODIGO IS 'CHAVE REFERENCIA DA OPERACAO FISCAL (OPE0000)'; 
COMMENT ON COLUMN NF0001.OPE_CODIGO IS 'CHAVE REFERENCIA DA OPERACAO FISCAL (OPE0000)'; 
COMMENT ON COLUMN NF_IT01.OPE_CODIGO IS 'CHAVE REFERENCIA DA OPERACAO FISCAL (OPE0000)'; 
COMMENT ON COLUMN OPE0000.OPE_CODIGO IS 'CHAVE REFERENCIA DA OPERACAO FISCAL (OPE0000)'; 
COMMENT ON COLUMN OPE0000_VIEW_PESQUISA.OPE_CODIGO IS 'CHAVE REFERENCIA DA OPERACAO FISCAL (OPE0000)'; 
COMMENT ON COLUMN OPERACOES.OPE_CODIGO IS 'CHAVE REFERENCIA DA OPERACAO FISCAL (OPE0000)'; 
COMMENT ON COLUMN OSV_IT02.OPE_CODIGO IS 'CHAVE REFERENCIA DA OPERACAO FISCAL (OPE0000)'; 
COMMENT ON COLUMN PED0000.OPE_CODIGO IS 'CHAVE REFERENCIA DA OPERACAO FISCAL (OPE0000)'; 
COMMENT ON COLUMN PED_IT01.OPE_CODIGO IS 'CHAVE REFERENCIA DA OPERACAO FISCAL (OPE0000)'; 

SET TERM ^ ;
CREATE OR ALTER PROCEDURE PCD_KARDEX_EXTRATO (EMP_CODIGO VARCHAR(3), PRD_CODIGO VARCHAR(6), AMX_CODIGO VARCHAR(4), DATA_INICIAL TIMESTAMP, DATA_FINAL TIMESTAMP, SALDO_FINAL VARCHAR(1))
RETURNS (
	KEX_REGISTRO INTEGER,
	KEX_DATA_HORA TIMESTAMP,
	KEX_TIPO VARCHAR(1),
	KEX_QUANTIDADE NUMERIC,
	KEX_USUARIO_CODIGO INTEGER,
	KEX_USUARIO_DESCRICAO VARCHAR(30),
	KEX_SALDO NUMERIC,
	KEX_ORIGEM VARCHAR(40),
	KEX_DETALHE VARCHAR(255),
	KEX_OBSERVACAO VARCHAR(255),
	KEX_DOCUMENTO VARCHAR(255),
	KEX_PRECO NUMERIC,
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
                    kex_origem = 'BALANÇO';
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
        suspend;
        END
end
^
SET TERM ; ^