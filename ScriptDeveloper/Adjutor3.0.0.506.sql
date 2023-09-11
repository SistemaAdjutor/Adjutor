
UPDATE  VERSAOSISTEMA SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.506',
       VERSAOSISTEMA.DATA   = '05.04.2018'
 where VERSAOSISTEMA.CODIGO = 1;
commit work;

ALTER TABLE EPM_0000 ADD PRDL_REGISTRO INTEGER; 
COMMENT ON COLUMN EPM_0000.PRDL_REGISTRO IS 'CHAVE REFERENCIA DO LOTE DE PRODUTO';
COMMENT ON COLUMN KARDEX.PRDL_REGISTRO IS 'CHAVE REFERENCIA DO LOTE DE PRODUTO';
COMMENT ON COLUMN PED_IT01.PRDL_REGISTRO IS 'CHAVE REFERENCIA DO LOTE DE PRODUTO';
COMMENT ON COLUMN ENF_IT01.PRDL_REGISTRO IS 'CHAVE REFERENCIA DO LOTE DE PRODUTO';
COMMENT ON COLUMN NF_IT01.PRDL_REGISTRO IS 'CHAVE REFERENCIA DO LOTE DE PRODUTO';
COMMENT ON TABLE EPM_0000 IS 'PRODUTOS DA ORDEM DE PRODUCAO QUE FORAM EMPENHADOS';
COMMENT ON COLUMN EPM_0000.OSV_CODIGO IS 'CHAVE REFERENCIA DA ORDEM PRODUCAO';
COMMENT ON COLUMN EPM_0000.EPM_QTDE IS 'QUANTIDADE EMPENHADA';
COMMENT ON COLUMN EPM_0000.EPM_DATAEMPENHO IS 'DATA DO EMPENHO';
COMMENT ON COLUMN EPM_0000.EPM_NUMDOC IS 'NUMEDO DO DOCUMENTO DE EMPENHO';
COMMENT ON COLUMN EPM_0000.EPM_STATUS IS 'TIPO DE EMPENHO : A - AUTOMATICO , M - MANUAL , E - ESTORNO';

ALTER TABLE PRMT0001 ADD PMT_NUMDIAS_ORC INTEGER;
COMMENT ON COLUMN PRMT0001.PMT_NUMDIAS_ORC IS 'VALIDADE PADRAO P/ ORCAMENTO - DIAS';

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
    PRG_DESC_GRADE VARCHAR(100)
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
            t4.prg_descricao
        FROM
        KARDEX T1
        left join usuario t2 on (t2.usu_codigo = t1.usu_codigo)
        left join prd_lote t3 on (t3.prdl_registro = t1.prdl_registro)
        left outer join prd_grade t4 on (t4.prg_registro = t1.prg_registro)
        where t1.emp_codigo = :emp_codigo and t1.amx_codigo = :amx_codigo and t1.prd_codigo = :prd_codigo and t1.data_hora between :data_inicial and :data_final
        order by  t1.kar_registro
        into :registro_interno, :kex_registro, :kex_data_hora, :kex_tipo, :kex_quantidade, : saldo,:kex_usuario_codigo, :kex_usuario_descricao, :kex_ORIGEM, :kex_OBSERVACAO,
             :amx_codigo_ORIGEM, :kex_documento, :kex_detalhe, :kex_preco, :PRDL_LOTE, :PRG_DESC_GRADE
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
        suspend;
        END
end ^
SET TERM ; ^

comment ON PROCEDURE PCD_KARDEX_EXTRATO IS 'HISTORICO DO KARDEX';
comment ON PROCEDURE PCD_KARDEX_SALDO IS 'HISTORICO DO SALDO';

COMMENT ON COLUMN PED0000.SitExp IS 'PEN = PENDENTE, LIB = LIBERADO, SEP = EM SEPERACAO, FIN = FINALIZADO, DEP = DESPACHADO, IMP = IMPEDIDO, FAT = FATURADO ';

CREATE TABLE HISTORICO_EXPE (
HIS_REGISTRO INTEGER,
PED_CODIGO VARCHAR(7),
SITEXP VARCHAR(3),
DATASIT TIMESTAMP,
USU_CODIGO INTEGER,
OBSERVACAO BLOB SUB_TYPE 0);

CREATE SEQUENCE GEN_HIST_EXPE ;


COMMENT ON TABLE PAG_PAGAMENTO IS 'BAIXAS REALIZADAS/PAGAMENTOS TOTAL OU PARCIAL' ;
ALTER TABLE PAG_PAGAMENTO ADD PAG_OBSERVACAO VARCHAR (50);
COMMENT ON COLUMN PAG_PAGAMENTO.PAG_OBSERVACAO IS 'OBSERVACOES NUMERO DO CUPOM ETC';
COMMENT ON COLUMN PAG_PAGAMENTO.PAG_DATA_PAGAMENTO IS 'DATA DA BAIXA';
COMMENT ON COLUMN PAG_PAGAMENTO.PAG_VALOR IS 'VALOR BAIXADO';
COMMENT ON COLUMN PAG_PAGAMENTO.PAG_DESCONTO IS 'DESCONTO';
COMMENT ON COLUMN PAG_PAGAMENTO.PAG_PAGO IS 'VALOR RECEBIDO';
