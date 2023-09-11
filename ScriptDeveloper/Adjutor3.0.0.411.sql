CREATE OR ALTER VIEW VW_CABECALHO_NFE(
    EMP_CODIGO,
    NF_TIPO,
    NF_STATUS_NFE,
    NF_ENVIADO_NFE_EMAIL,
    NF_EMAIL_ENVIO_NFE,
    NF_REGISTRO,
    CCT_CODIGO,
    NF_TIPO_PEDIDO,
    NF_CHAVE_NFE,
    nf_chave_nfe_referenciada,
    NF_LOTE_NFE,
    NF_PROTOCOLO_NFE,
    NF_PROTOCOLO_NFE_CANCEL,
    NF_DATA_EMISSAO,
    NF_SAIDA,
    NF_NUM_NOTA_FISCAL,
    NF_NUM_NFE,
    OPE_CODIGO,
    NF_CFOP,
    NF_PERCENTUAL_MVA,
    NOP_DESCRICAO,
    PED_NUM_PEDIDO,
    PED_DATA_EMISSAO,
    NF_COD_CLI_FORN,
    RAZAO,
    FANTASIA,
    CNPJ_CPF,
    INC_ESTADUAL,
    ENDERECO,
    BAIRRO,
    CID_COD_IBGE,
    CIDADE,
    AUF_COD_IBGE,
    AUF_CODIGO,
    CEP,
    FONE,
    EMAIL,
    AUF_INSCRICAO_SUB,
    NF_BASE_ICMS,
    NF_VALOR_ICMS,
    NF_BASE_ICMS_SUBST,
    NF_VALOR_ICMS_SUBST,
    NF_VALOR_PRODUTOS,
    NF_VALOR_SERVICOS,
    NF_VALOR_FRETE,
    NF_VALOR_SEGURO,
    NF_OUTROS,
    NF_VALOR_IPI,
    NF_VALOR_NOTA_FISCAL,
    TR_CODIGO,
    TR_RAZAO,
    NF_TIPO_FRETE,
    NF_PLACA_VEICULO,
    TR_UF,
    TR_INSC_EST,
    TR_CNPJ_CNPF,
    TR_ENDERECO,
    TR_CIDADE,
    TR_FONE,
    NF_QUANTIDADE,
    NF_ESPECIE,
    NF_MARCA,
    NF_NUMERO,
    NF_PESO_BRUTO,
    NF_PESO_LIQUIDO,
    NF_MENSAGEM_01,
    NF_MENSAGEM_02,
    PED_OBSERVACAO_NOTA,
    NFC_INF_COMPLEMENTARES,
    MSG_NFE_OPER_FISCAL,
    MSG_NFE_FATURAMENTO,
    TP_DESCRICAO,
    NF_POR_CONTA,
    NF_VALOR_PRODUTOS_ST,
    NOP_IMPORTACAO,
    FATURAS,
    NF_VL_DESCTO,
    NF_PROTOCOLO_AUTORIZACAO,
    NF_DATA_AUTORIZACAO,
    NF_HORA_AUTORIZACAO,
    NF_ALIQCREDSIMPLES,
    NF_VLCREDSIMPLES,
    NF_ENTRADA_SAIDA,
    NF_STATUS_NFSE,
    SRV_REGISTRO,
    NF_NFSE_VLR_IR,
    NF_NFSE_VLR_CSLL,
    NF_NFSE_VLR_INSS,
    NF_NFSE_VLR_COFINS,
    NF_NFSE_VLR_PIS,
    NF_NFSE_VLR_DEDUCOES,
    NF_NFSE_VLR_ISS,
    NF_NFSE_VLR_BASE_CALCULO,
    NF_NFSE_DESCRICAO,
    NF_NFSE_ALIQUOTA_ISS,
    NF_EXPORT_UF_EMBARQUE,
    NF_EXPORT_LOCAL_EMBARQUE,
    NF_DESP_ACES,
    NF_VALORTOT_PIS,
    NF_VALORTOT_COFINS,
    NF_COMPLEMENTAR,
    NFE_STATUS_PRODUCAO,
    NF_CC_STATUS,
    NF_CC_DATA,
    NF_CC_SEQUENCIA,
    NF_CC_USUARIO,
    NF_CC_DESCRICAO,
    NF_SERIE,
    NF_CANCELADA)
AS
SELECT
            /*INFORMAÇÕES CABEÇALHO NOTA*/
            T1.EMP_CODIGO,
            /*O TIPO E PARA SER CLIENTE OU FORNECEDOR NO SISTEMA AS NOTAS DE FORNECEDORES SÃO CADASTRADOS COMO CLIENTE*/
            T1.NF_ENTR_SAID AS NF_TIPO,
            T1.NF_STATUS_NFE,
            T1.NF_ENVIADO_NFE_EMAIL,
            T1.NF_EMAIL_ENVIO_NFE,
            T1.NF_REGISTRO,
            /*SISTEMA NAO TRABALHA COM CONTA ANALISE*/
            CASE
                WHEN (1=1) THEN
                    'C'
            END AS CCT_CODIGO,
            /*O TIPO DO PEDIDO E PARA SER CLIENTE OU FORNECEDOR NO SISTEMA AS NOTAS DE FORNECEDORES SÃO CADASTRADOS COMO CLIENTE*/
            CASE
                WHEN (1=1) THEN
                    'C'
            END AS NF_TIPO_PEDIDO,
            T1.NF_CHAVE_NFE,
            T1.nf_chave_nfe_referenciada,
            T1.NF_LOTE_NFE,
            T1.NF_PROTOCOLO_NFE,
            T1.NF_PROTOCOLO_NFE_CANC,
            T1.NF_EMISSAO,
            T1.NF_SAIDA,
            T1.NF_NOTANUMBER,
            T1.NF_NUM_NFE,
            t1.ope_codigo,
            T1.OPE_NATUREZA,
            CASE
                WHEN (1=1) THEN
                    0
            END AS NF_PERCENTUAL_MVA,
            T3.OPE_DESCRINATUREZA,
            T2.PED_CODIGO,
            T2.PED_DTENTRADA,
            T2.CLI_CODIGO,
            /*INFORMAÇÕES DESTINATARIO*/
            T4.CLI_RAZAO AS RAZAO,
            T4.CLI_FANTASIA AS FANTASIA,
            T4.CLI_CGC AS CNPJ_CPF,
            T4.CLI_INSC AS INC_ESTADUAL,
            T4.CLI_ENDERE AS ENDERECO,
            T4.CLI_BAIRRO AS BAIRRO,
            T6.CID_COD_IBGE AS CID_COD_IBGE,
            T6.CID_CIDADE AS CIDADE,
            (SELECT
            T55.ICM_COD_IBGE
            FROM
            ICM0000 T55 WHERE T55.ICM_DESTINO = T4.CLI_UF)  AS AUF_COD_IBGE,
            T4.CLI_UF AS AUF,
            T4.CLI_CEP AS CEP,
            T4.CLI_FONE AS FONE,
            T4.CLI_EMAIL AS EMAIL,
            T7.ICM_IE_SUBTRIB AS AUF_INSCRICAO_SUB,
            /*IMPOSTOS E TOTAIS*/
            T1.NF_BASEICMS AS NF_BASE_ICMS,
            T1.NF_VL_ICMS AS NF_VALOR_ICMS,
            T1.NF_VLBASESUBTRIB AS NF_BASE_ICMS_SUBST,
            T1.NF_VL_SUBTRIB AS NF_VALOR_ICMS_SUBST,
            T1.NF_TOT_PROD AS NF_VALOR_PRODUTOS,
            /*SISTEMA NAO POSSUI SERVIÇOS*/
            CASE
                WHEN (1=1) THEN
                    0
            END AS NF_VALOR_SERVICOS,
            T1.NF_VLFRETE AS NF_VALOR_FRETE,
            T1.NF_VLSEGURO AS NF_VALOR_SEGURO,
            T1.NF_DESP_ACES AS NF_DESPESAS_ACESS,
            T1.NF_VL_IPI AS NF_VALOR_IPI,
            T1.NF_TOT_NOTA AS NF_VALOR_NOTA_FISCAL,
            /*TRANSPORTADOR/VOLUMES*/
            T5.TRP_CODIGO AS TR_CODIGO,
            T5.TRP_RAZAO AS TR_RAZAO,
            T2.PED_FRETE,
            T1.NF_PLACAVE AS NF_PLACA_VEICULO,
            T5.TRP_UF AS TR_UF,
            T5.TRP_INSC AS TR_INSC_EST,
            T5.TRP_CGC AS TR_CNPJ_CNPF,
            T5.TRP_ENDERE AS TR_ENDERECO,
            T5.TRP_CIDADE AS TR_CIDADE,
            t5.TRP_FONE as TR_FONE,
            T1.NF_QTDE AS NF_QUANTIDADE,
            T1.NF_ESPECIE,
            T1.NF_MARCA,
            T1.NF_NUMERO,
            T1.NF_PESOBRU AS NF_PESO_BRUTO,
            T1.NF_PESOLIQ AS NF_PESO_LIQUIDO,
            /*DADOS ADICIONAIS*/
            COALESCE(T1.NF_OBS_OPER,'') || '' ||
            COALESCE(T1.NF_OBS_OPER_AVISO2,'')
            AS NF_MENSAGEM_01,
            T1.NF_OBS_OPER AS NF_MENSAGEM_02,
            case
                when (1 = 1 ) then
                ''
            end as PED_OBSERVACAO_NOTA,
            /*msg pedido*/
            COALESCE(T1.NF_OBS_OPER,'') || ' ' ||
            COALESCE(T1.NF_OBS_OPER_AVISO2,'')
            AS NFC_INF_COMPLEMENTARES,
            COALESCE(T1.NF_OBS_OPER,'') || ' ' ||
            COALESCE(T1.NF_OBSG6,'') || ' ' ||
            COALESCE(T1.NF_OBS_OPER_AVISO2,'') AS MSG_NFE_OPER_FISCAL,
            T1.nf_observacao  AS MSG_NFE_FATURAMENTO,
            CASE
                WHEN (1=1) THEN
                    ''
            END AS TP_DESCRICAO,
            CASE
                WHEN (T2.PED_FRETE = 'F') THEN
                    '02'
                ELSE
                    '01'
            END AS NF_POR_CONTA,
            CASE
                WHEN (1=1) THEN
                    0
            END AS NF_VALOR_PRODUTOS_ST,
            CASE
                WHEN (1=1) THEN
                    'N'
            END AS NOP_IMPORTACAO,
            CASE
                WHEN (1=1) THEN
                    ''--(select TORETURN from PCD_RETORNA_FATURA(t1.NF_NOTANUMBER))
            END AS FATURAS,
            t1.NF_VL_DESCTO,
            t1.nf_protocolo_autorizacao,
            t1.nf_data_autorizacao,
            t1.nf_hora_autorizacao,
            T1.NF_ALIQCREDSIMPLES,
            T1.NF_VLCREDSIMPLES,
            T1.nf_entr_said,
            t1.NF_STATUS_NFSE,
            t1.SRV_REGISTRO,
            t1.NF_NFSE_VLR_IR,
            t1.NF_NFSE_VLR_CSLL,
            t1.NF_NFSE_VLR_INSS,
            t1.NF_NFSE_VLR_COFINS,
            t1.NF_NFSE_VLR_PIS,
            t1.NF_NFSE_VLR_DEDUCOES,
            t1.NF_NFSE_VLR_ISS,
            t1.NF_NFSE_VLR_BASE_CALCULO,
            t1.NF_NFSE_DESCRICAO,
            t1.NF_NFSE_ALIQUOTA_ISS,
            t1.nf_export_uf_embarque,
            t1.nf_export_local_embarque,
            t1.nf_desp_aces,
            t1.NF_VALORTOT_PIS,
            t1.NF_VALORTOT_COFINS,
            t1.NF_COMPLEMENTAR,
            t1.NFE_STATUS_PRODUCAO,
            t1.NF_CC_STATUS,
            t1.NF_CC_DATA,
            t1.NF_CC_SEQUENCIA,
            t1.NF_CC_USUARIO,
            t1.NF_CC_DESCRICAO,
            T1.NF_SERIE,
            t1.NF_CANCELADA
        FROM
            NF0001 T1
            join ped0000 t2 on (t2.ped_codigo = t1.ped_codigo and t2.emp_codigo = t1.emp_codigo)
            JOIN ope0000 T3 ON (T3.ope_codigo = T1.ope_codigo AND T3.OPE_ESCRITA = 'S')
            JOIN CLI0000 T4 ON (T4.CLI_CODIGO = T1.CLI_CODIGO)
            LEFT JOIN CID0000 T6 ON (T6.CID_CODIGO = T4.CID_CODIGO)
            LEFT JOIN ICM0000 T7 ON (T7.ICM_UF_DESTINO = T4.CLI_UF)
            LEFT JOIN TRP0000 T5 ON (T5.trp_codigo = T2.trp_codigo)
;
--------------------------------------------------------------------------------
commit work;

SET TERM ^ ;

CREATE OR ALTER PROCEDURE PCD_PLANO_CONTAS_CENTRO_PR (
    emp_codigo varchar(3),
    data_inicial date,
    data_final date)
returns (
    cct_codigo varchar(3),
    titulo varchar(200),
    cct_nivel varchar(20),
    valor numeric(18,2),
    centro varchar(31))
as
declare variable data_processo date;
declare variable tipo varchar(1);
declare variable cct_base varchar(3);
declare variable valortmp numeric(18,2);
declare variable cct_codigo_custo varchar(3);
declare variable titulo_custo varchar(100);
declare variable cct_nivel_custo varchar(20);
declare variable cct_codigo_guarda varchar(3);
declare variable titulo_guarda varchar(100);
declare variable cct_nivel_guarda varchar(20);
begin
   if (:EMP_CODIGO <> '999') then
      BEGIN
        for
        SELECT
            CCT.PCX_CODIGO,
            substring((CCT.PCX_NIVEL || ' - '|| CCT.PCX_DESCRI)  from 1 for 31)  as TITULO,
            CCT.PCX_NIVEL
        FROM PCX0000 CCT
        into: CCT_CODIGO_CUSTO, :CENTRO, :CCT_NIVEL_CUSTO
        do
        begin
            VALOR = 0;
            valorTMP = 0;
            for
                SELECT
                    CCT.CCT_CODIGO,
                    CCT.CCT_NIVEL || ' - '|| CCT.CCT_DESCRI as TITULO,
                    CCT.CCT_NIVEL,
                    CCT.CCT_CONTA
                FROM  CCT_0000 CCT
                    into: CCT_CODIGO, :TITULO, :CCT_NIVEL, :TIPO
            do
            begin
                VALOR = 0;
                valorTMP = 0;

                SELECT
                COALESCE(sum(CAST(RATEIO.FIR_INDICE_REAL * (PAGIT.pag_valor) AS NUMERIC(18,2))),0)
                FROM
                FIN_RATEIO RATEIO
                JOIN PAG_PC01 PARCELA ON (PARCELA.PPC_EXCLUSAO <> 'S' and PARCELA.PAG_REGISTRO = RATEIO.FIR_REGISTRO_CP_CR)
                JOIN pag_pagamento PAGIT ON (PAGIT.pag_registro = PARCELA.pag_registro AND PAGIT.pag_data_pagamento between  :DATA_INICIAL and :DATA_FINAL)
                JOIN PAG0000 CABECA ON (CABECA.PAG_CODIGO = PARCELA.PAG_CODIGO AND CABECA.FOR_CODIGO = PARCELA.FOR_CODIGO)
                JOIN PCX0000 CENTROCUSTO ON (CENTROCUSTO.PCX_CODIGO = RATEIO.PCX_CODIGO AND CENTROCUSTO.PCX_NIVEL = :CCT_NIVEL_CUSTO)
                JOIN CCT_0000 PLANO ON (PLANO.CCT_CODIGO = CABECA.CCT_CODIGO AND PLANO.CCT_NIVEL LIKE :CCT_NIVEL||'%')
                WHERE
                RATEIO.FIR_REGISTRO_TIPO = 'P' AND RATEIO.FIR_INDICE > 0 AND RATEIO.EMP_CODIGO = :EMP_CODIGO AND RATEIO.pcx_codigo = :CCT_CODIGO_CUSTO
                INTO:valorTMP;
    
                select
                    COALESCE(sum(CAST(RATEIO.FIR_INDICE_REAL * FATIT.fre_valor AS NUMERIC(18,2))),0)
                from
                FIN_RATEIO RATEIO
                JOIN FAT_PC01 PARCELA ON (PARCELA.FPC_EXCLUSAO <> 'S' and PARCELA.FAT_REGISTRO = RATEIO.FIR_REGISTRO_CP_CR)
                join fat_recebimento fatit on (fatit.fat_registro = PARCELA.fat_registro AND FATIT.fre_data_recebimento BETWEEN :DATA_INICIAL and :DATA_FINAL )
                JOIN FAT0000 CABECA ON (CABECA.FAT_CODIGO = PARCELA.FAT_CODIGO)
                JOIN PCX0000 CENTROCUSTO ON (CENTROCUSTO.PCX_CODIGO = RATEIO.PCX_CODIGO AND CENTROCUSTO.PCX_NIVEL = :CCT_NIVEL_CUSTO)
                JOIN CCT_0000 PLANO ON (PLANO.CCT_CODIGO = CABECA.CCT_CODIGO AND PLANO.CCT_NIVEL LIKE :CCT_NIVEL||'%')
                WHERE RATEIO.FIR_REGISTRO_TIPO = 'R' AND RATEIO.FIR_INDICE > 0 AND RATEIO.EMP_CODIGO = :EMP_CODIGO AND RATEIO.pcx_codigo = :CCT_CODIGO_CUSTO
                INTO:VALOR;
    
                VALOR =  COALESCE(VALOR,0) - COALESCE(valorTMP,0);
                SUSPEND;
            end
        end
      END
   ELSE
      BEGIN
        for
        SELECT
            CCT.PCX_CODIGO,
            substring((CCT.PCX_NIVEL || ' - '|| CCT.PCX_DESCRI)  from 1 for 31)  as TITULO,
            CCT.PCX_NIVEL
        FROM PCX0000 CCT
        into: CCT_CODIGO_CUSTO, :CENTRO, :CCT_NIVEL_CUSTO
        do
        begin
            VALOR = 0;
            valorTMP = 0;
            for
                SELECT
                    CCT.CCT_CODIGO,
                    CCT.CCT_NIVEL || ' - '|| CCT.CCT_DESCRI as TITULO,
                    CCT.CCT_NIVEL,
                    CCT.CCT_CONTA
                FROM  CCT_0000 CCT
                    into: CCT_CODIGO, :TITULO, :CCT_NIVEL, :TIPO
            do
            begin
                VALOR = 0;
                valorTMP = 0;

                SELECT
                COALESCE(sum(CAST(RATEIO.FIR_INDICE_REAL * (PAGIT.pag_valor) AS NUMERIC(18,2))),0)
                FROM
                FIN_RATEIO RATEIO
                JOIN PAG_PC01 PARCELA ON (PARCELA.PPC_EXCLUSAO <> 'S' and PARCELA.PAG_REGISTRO = RATEIO.FIR_REGISTRO_CP_CR)
                JOIN pag_pagamento PAGIT ON (PAGIT.pag_registro = PARCELA.pag_registro AND PAGIT.pag_data_pagamento between  :DATA_INICIAL and :DATA_FINAL)
                JOIN PAG0000 CABECA ON (CABECA.PAG_CODIGO = PARCELA.PAG_CODIGO AND CABECA.FOR_CODIGO = PARCELA.FOR_CODIGO)
                JOIN PCX0000 CENTROCUSTO ON (CENTROCUSTO.PCX_CODIGO = RATEIO.PCX_CODIGO AND CENTROCUSTO.PCX_NIVEL = :CCT_NIVEL_CUSTO)
                JOIN CCT_0000 PLANO ON (PLANO.CCT_CODIGO = CABECA.CCT_CODIGO AND PLANO.CCT_NIVEL LIKE :CCT_NIVEL||'%')
                WHERE
                RATEIO.FIR_REGISTRO_TIPO = 'P' AND RATEIO.FIR_INDICE > 0 AND RATEIO.pcx_codigo = :CCT_CODIGO_CUSTO
                INTO:valorTMP;
    
                select
                    COALESCE(sum(CAST(RATEIO.FIR_INDICE_REAL * FATIT.fre_valor AS NUMERIC(18,2))),0)
                from
                FIN_RATEIO RATEIO
                JOIN FAT_PC01 PARCELA ON (PARCELA.FPC_EXCLUSAO <> 'S' and PARCELA.FAT_REGISTRO = RATEIO.FIR_REGISTRO_CP_CR)
                join fat_recebimento fatit on (fatit.fat_registro = PARCELA.fat_registro AND FATIT.fre_data_recebimento BETWEEN :DATA_INICIAL and :DATA_FINAL )
                JOIN FAT0000 CABECA ON (CABECA.FAT_CODIGO = PARCELA.FAT_CODIGO)
                JOIN PCX0000 CENTROCUSTO ON (CENTROCUSTO.PCX_CODIGO = RATEIO.PCX_CODIGO AND CENTROCUSTO.PCX_NIVEL = :CCT_NIVEL_CUSTO)
                JOIN CCT_0000 PLANO ON (PLANO.CCT_CODIGO = CABECA.CCT_CODIGO AND PLANO.CCT_NIVEL LIKE :CCT_NIVEL||'%')
                WHERE RATEIO.FIR_REGISTRO_TIPO = 'R' AND RATEIO.FIR_INDICE > 0  AND RATEIO.pcx_codigo = :CCT_CODIGO_CUSTO
                INTO:VALOR;
    
                VALOR =  COALESCE(VALOR,0) - COALESCE(valorTMP,0);
                SUSPEND;
            end
        end
      END


end^

SET TERM ; ^

--------------------------------------------------------------------------------
commit work;

SET TERM ^ ;

CREATE OR ALTER PROCEDURE PCD_PLANO_CONTAS_CENTRO_SIMPLES (
    emp_codigo varchar(3),
    data_inicial date,
    data_final date)
returns (
    cct_codigo varchar(3),
    titulo varchar(200),
    cct_nivel varchar(20),
    valor numeric(18,2),
    centro varchar(31))
as
declare variable data_processo date;
declare variable tipo varchar(1);
declare variable cct_base varchar(3);
declare variable valortmp numeric(18,2);
declare variable cct_codigo_custo varchar(3);
declare variable titulo_custo varchar(100);
declare variable cct_nivel_custo varchar(20);
declare variable cct_codigo_guarda varchar(3);
declare variable titulo_guarda varchar(100);
declare variable cct_nivel_guarda varchar(20);
begin
   if (:EMP_CODIGO <> '999') then
      BEGIN
        for
        SELECT
            CCT.PCX_CODIGO,
            substring((CCT.PCX_NIVEL || ' - '|| CCT.PCX_DESCRI)  from 1 for 31)  as TITULO,
            CCT.PCX_NIVEL
        FROM PCX0000 CCT
        into: CCT_CODIGO_CUSTO, :CENTRO, :CCT_NIVEL_CUSTO
        do
        begin
            VALOR = 0;
            valorTMP = 0;
            for
                SELECT
                    CCT.CCT_CODIGO,
                    CCT.CCT_NIVEL || ' - '|| CCT.CCT_DESCRI as TITULO,
                    CCT.CCT_NIVEL,
                    CCT.CCT_CONTA
                FROM  CCT_0000 CCT
                    into: CCT_CODIGO, :TITULO, :CCT_NIVEL, :TIPO
            do
            begin
                VALOR = 0;
                valorTMP = 0;

                SELECT
                COALESCE(sum(CAST(RATEIO.FIR_INDICE_REAL * (PARCELA.PPC_VLPARC - PARCELA.PPC_VALOR_N_RATEIA) AS NUMERIC(18,2))),0)
                FROM
                FIN_RATEIO RATEIO
                JOIN PAG_PC01 PARCELA ON (PARCELA.PPC_EXCLUSAO <> 'S' and PARCELA.PAG_REGISTRO = RATEIO.FIR_REGISTRO_CP_CR AND PARCELA.PPC_VENCTO BETWEEN :DATA_INICIAL and :DATA_FINAL)
                JOIN PAG0000 CABECA ON (CABECA.PAG_CODIGO = PARCELA.PAG_CODIGO AND CABECA.FOR_CODIGO = PARCELA.FOR_CODIGO)
                JOIN PCX0000 CENTROCUSTO ON (CENTROCUSTO.PCX_CODIGO = RATEIO.PCX_CODIGO AND CENTROCUSTO.PCX_NIVEL = :CCT_NIVEL_CUSTO)
                JOIN CCT_0000 PLANO ON (PLANO.CCT_CODIGO = CABECA.CCT_CODIGO AND PLANO.CCT_NIVEL LIKE :CCT_NIVEL||'%')
                WHERE
                RATEIO.FIR_REGISTRO_TIPO = 'P' AND RATEIO.FIR_INDICE > 0 AND RATEIO.EMP_CODIGO = :EMP_CODIGO  AND RATEIO.pcx_codigo = :CCT_CODIGO_CUSTO
                INTO:valorTMP;
    
                select
                    COALESCE(sum(CAST(RATEIO.FIR_INDICE_REAL * PARCELA.FPC_VLPARC AS NUMERIC(18,2))),0)
                from
                FIN_RATEIO RATEIO
                JOIN FAT_PC01 PARCELA ON (PARCELA.FPC_EXCLUSAO <> 'S' and PARCELA.FAT_REGISTRO = RATEIO.FIR_REGISTRO_CP_CR and PARCELA.FPC_VENCTO BETWEEN :DATA_INICIAL and :DATA_FINAL)
                JOIN FAT0000 CABECA ON (CABECA.FAT_CODIGO = PARCELA.FAT_CODIGO)
                JOIN PCX0000 CENTROCUSTO ON (CENTROCUSTO.PCX_CODIGO = RATEIO.PCX_CODIGO AND CENTROCUSTO.PCX_NIVEL = :CCT_NIVEL_CUSTO)
                JOIN CCT_0000 PLANO ON (PLANO.CCT_CODIGO = CABECA.CCT_CODIGO AND PLANO.CCT_NIVEL LIKE :CCT_NIVEL||'%')
                WHERE RATEIO.FIR_REGISTRO_TIPO = 'R' AND RATEIO.FIR_INDICE > 0 AND RATEIO.EMP_CODIGO = :EMP_CODIGO  AND RATEIO.pcx_codigo = :CCT_CODIGO_CUSTO
                INTO:VALOR;
    
                VALOR =  COALESCE(VALOR,0) - COALESCE(valorTMP,0);
                SUSPEND;
            end
        end
      END
   ELSE
      BEGIN
        for
        SELECT
            CCT.PCX_CODIGO,
            substring((CCT.PCX_NIVEL || ' - '|| CCT.PCX_DESCRI)  from 1 for 31)  as TITULO,
            CCT.PCX_NIVEL
        FROM PCX0000 CCT
        into: CCT_CODIGO_CUSTO, :CENTRO, :CCT_NIVEL_CUSTO
        do
        begin
            VALOR = 0;
            valorTMP = 0;
            for
                SELECT
                    CCT.CCT_CODIGO,
                    CCT.CCT_NIVEL || ' - '|| CCT.CCT_DESCRI as TITULO,
                    CCT.CCT_NIVEL,
                    CCT.CCT_CONTA
                FROM  CCT_0000 CCT
                    into: CCT_CODIGO, :TITULO, :CCT_NIVEL, :TIPO
            do
            begin
                VALOR = 0;
                valorTMP = 0;

                SELECT
                COALESCE(sum(CAST(RATEIO.FIR_INDICE_REAL * (PARCELA.PPC_VLPARC - PARCELA.PPC_VALOR_N_RATEIA) AS NUMERIC(18,2))),0)
                FROM
                FIN_RATEIO RATEIO
                JOIN PAG_PC01 PARCELA ON (PARCELA.PPC_EXCLUSAO <> 'S' and PARCELA.PAG_REGISTRO = RATEIO.FIR_REGISTRO_CP_CR AND PARCELA.PPC_VENCTO BETWEEN :DATA_INICIAL and :DATA_FINAL)
                JOIN PAG0000 CABECA ON (CABECA.PAG_CODIGO = PARCELA.PAG_CODIGO AND CABECA.FOR_CODIGO = PARCELA.FOR_CODIGO)
                JOIN PCX0000 CENTROCUSTO ON (CENTROCUSTO.PCX_CODIGO = RATEIO.PCX_CODIGO AND CENTROCUSTO.PCX_NIVEL = :CCT_NIVEL_CUSTO)
                JOIN CCT_0000 PLANO ON (PLANO.CCT_CODIGO = CABECA.CCT_CODIGO AND PLANO.CCT_NIVEL LIKE :CCT_NIVEL||'%')
                WHERE
                RATEIO.FIR_REGISTRO_TIPO = 'P' AND RATEIO.FIR_INDICE > 0  AND RATEIO.pcx_codigo = :CCT_CODIGO_CUSTO
                INTO:valorTMP;
    
                select
                    COALESCE(sum(CAST(RATEIO.FIR_INDICE_REAL * PARCELA.FPC_VLPARC AS NUMERIC(18,2))),0)
                from
                FIN_RATEIO RATEIO
                JOIN FAT_PC01 PARCELA ON (PARCELA.FPC_EXCLUSAO <> 'S' and PARCELA.FAT_REGISTRO = RATEIO.FIR_REGISTRO_CP_CR and PARCELA.FPC_VENCTO BETWEEN :DATA_INICIAL and :DATA_FINAL)
                JOIN FAT0000 CABECA ON (CABECA.FAT_CODIGO = PARCELA.FAT_CODIGO)
                JOIN PCX0000 CENTROCUSTO ON (CENTROCUSTO.PCX_CODIGO = RATEIO.PCX_CODIGO AND CENTROCUSTO.PCX_NIVEL = :CCT_NIVEL_CUSTO)
                JOIN CCT_0000 PLANO ON (PLANO.CCT_CODIGO = CABECA.CCT_CODIGO AND PLANO.CCT_NIVEL LIKE :CCT_NIVEL||'%')
                WHERE RATEIO.FIR_REGISTRO_TIPO = 'R' AND RATEIO.FIR_INDICE > 0  AND RATEIO.pcx_codigo = :CCT_CODIGO_CUSTO
                INTO:VALOR;
    
                VALOR =  COALESCE(VALOR,0) - COALESCE(valorTMP,0);
                SUSPEND;
            end
        end
      END


end^

SET TERM ; ^

--------------------------------------------------------------------------------
commit work;



--------------------------------------------------------------------------------
Update VERSAOSISTEMA SET
       VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.0.411' ,
       VERSAOSISTEMA.DATA   = '18.11.2014'
 where VERSAOSISTEMA.CODIGO = 1;


commit work;
