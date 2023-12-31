SET TERM ^ ;
execute block as
  declare variable x integer;
begin
  SELECT max(prd0000.prd_codigo) from prd0000 into x;
  execute statement 'set generator GEN_PRD_CODIGO to ' || (x+1);
end
^
SET TERM ; ^

commit work;

DROP VIEW  USUARIO_TUDO_VIEW;
COMMIT WORK;

ALTER TABLE USUARIO
   ADD USU_RELATORIO CHAR(1);
COMMIT WORK;

ALTER TABLE USUARIO_PARAMETRO
   ADD PERMITE_VER_CUSTO CHAR(1);
COMMIT WORK;

ALTER TABLE USUARIO_PARAMETRO
    ADD PERMITE_VENDA_ABAIXO_CUSTO CHAR(1);
COMMIT WORK;

ALTER TABLE USUARIO DROP PERMITE_VENDA_ABAIXO_CUSTO;
COMMIT WORK;

ALTER TABLE USUARIO DROP PERMITE_VER_CUSTO;
COMMIT WORK;

CREATE OR ALTER VIEW USUARIO_TUDO_VIEW(
    USP_REGISTRO,
    USP_COD_USUARIO,
    USP_STAT_PRECO_BRUTO_P,
    USP_STAT_PRECO_LIQUIDO_P,
    USP_STAT_DESC_AUTOMATICO_P,
    USP_DESCONTO_MAX_P,
    USP_REEMISSAO_PEDIDO_P,
    USP_EXCLUSAO_PEDIDO_P,
    USP_STAT_PRECO_BRUTO_T,
    USP_STAT_PRECO_LIQUIDO_T,
    USP_STAT_DESC_AUTOMATICO_T,
    USP_DESCONTO_MAX_T,
    USP_REEMISSAO_PEDIDO_T,
    USP_EXCLUSAO_PEDIDO_T,
    USP_STAT_COMISSAO,
    USP_STAT_CUSTO,
    USP_STAT_MARGEM,
    USP_STAT_PRECO_VENDA,
    USP_STAT_MARGEM_MINIMA,
    USP_STAT_PRECO_OFERTA,
    USP_ALTERA_DESCONTO_P,
    USP_ALTERA_DESCONTO_T,
    USP_DESCONTO_OFERTA_P,
    USP_DESCONTO_OFERTA_T,
    USP_ALTERA_NF_ENTRADA,
    USP_RELATORIOS_P,
    USP_VISUALIZA_PEDIDOS_P,
    USP_ALTERA_COMISSAO,
    USP_KARDEX_LANC_ENTRADA,
    USP_KARDEX_LANC_SAIDA,
    USP_KARDEX_LANC_BALANCO,
    USP_LIBERA_ANALISE_CREDITO,
    USP_LIBERA_ANALISE_PRODUCAO,
    USP_VENDA_CADASTRO_PRODUTO,
    USP_VENDA_REAJUSTE,
    USP_VISUALIZA_CLIENTES_P,
    USP_VISUALIZA_ANALISE_CREDITO_,
    USP_ALTERA_CUSTOS_PRODUTO,
    USP_VISUALIZA_MARKUP_PEDIDO,
    USP_VENDA_TRANSFERENCIA,
    USP_ALTERA_TABELA_PRECOS,
    USP_USAPRAZODESABILITADO,
    LIBERA_COLABORADOR,
    PERMITE_VER_CUSTO,
    PERMITE_VENDA_ABAIXO_CUSTO,
    USU_CODIGO,
    USU_DATA_CADASTRO,
    USU_DATA_ATUALIZACAO,
    USU_NOME,
    USU_SENHA,
    USU_TIPO_USUARIO,
    USU_LIBERA_CREDITO,
    USU_LIBERA_PRECO,
    USU_LIBERA_DESCONTO,
    USU_MENU01,
    USU_MENU02,
    USU_MENU03,
    USU_MENU04,
    USU_MENU05,
    USU_MENU06,
    USU_MENU07,
    USU_MENU08,
    USU_MENU09,
    USU_MENU010,
    USU_MENU011,
    USU_MENU012,
    USU_MENU013,
    USU_MENU014,
    USU_MENU015,
    USU_INCLUSAO,
    USU_ALTERACAO,
    USU_EXCLUSAO,
    USU_ESTATISTICA,
    USU_LOGIN,
    USU_EMAIL,
    USU_REEMISSAO_PED,
    REP_CODIGO,
    USU_RELATORIO)
AS
select a.*, c.*
from USUARIO_PARAMETRO a, usuario c
where c.usu_codigo = a.usp_cod_usuario;
COMMIT WORK;



UPDATE  VERSAOSISTEMA SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.0.487',
       VERSAOSISTEMA.DATA   = '06.06.2017'
 where VERSAOSISTEMA.CODIGO = 1;
 
COMMIT WORK;
