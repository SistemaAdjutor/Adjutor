/ * ATUALIZAR TODOS OS PAGAMENTOS EM ABERTO */
execute block as
declare variable PAG_REGISTRO integer;
BEGIN
    FOR 
        SELECT PAG_REGISTRO FROM PAG_PC01 
        WHERE PPC_SITPAG <> 'X' 
        AND PPC_SITPAG = 'P' 
        AND PPC_VENCTO BETWEEN '01.01.2013' AND '10.12.2017'
        -- AND pag_codigo = '01634' -- REGISTRO PARA TESTE
        INTO :PAG_REGISTRO
    DO
    BEGIN
    
        UPDATE pag_pc01
        SET
            ppc_sitpag = 'L',
            ppc_status = 'Liquidada',
            ppc_vlpago = ppc_vlparc,
            ppc_pagto = ppc_vencto,  /* ALTERAR A DATA DE VENCIMENTO */
            ppc_obs = 'atualizado por script',
            PPC_PREVISAO = 'N'
        WHERE PAG_REGISTRO = :PAG_REGISTRO;

        INSERT INTO pag_pagamento (PAP_REGISTRO, EMP_CODIGO, PAG_REGISTRO, PAG_DATA_PAGAMENTO,PAG_MULTA, PAG_JUROS, PAG_VALOR,  
                                     BAN_CODIGO,FPG_REGISTRO,USU_CODIGO, PAG_CONCILIADO, PAG_DATA_LANCAMENTO, PAG_OBSERVACAO)
        SELECT
        GEN_ID(GEN_PAG_PAGAMENTO_ID,1),
        T1.EMP_CODIGO,
        T1.PAG_REGISTRO,
        T1.ppc_vencto, 
        0.0, /* PAG_MULTA */
        0.0,  /* PAG_JUROS */
        T1.PPC_VLPARC, /*PAG_PAGO */
        T1.BAN_CODIGO,   /*ATENÇÃO: SE NÃO TIVER O BANCO NA PARCELA ELE NÃO APARECER O REGISTRO DE PAGAMENTO , GARANTA QUE TENHA BANCO ANTES*/
        4, /* FORMA OUTROS, MUDAR SE NECESSÁRIO : FORMA DE PAGAMENTO PROCURAR O CODIGO EM  SELECT FPG_REGISTRO, FPG_DESCRICAO FROM FORMA_PAGAMENTO */
        (SELECT USU_CODIGO FROM USUARIO WHERE USU_LOGIN = 'NOVI') ,
        'S', /* PAG_CONCILIADO  */
        CURRENT_DATE,   /* PAG_DATA_LANCAMENTO */
         'atualizado por script'
        FROM pag_pc01 t1
        WHERE PAG_REGISTRO =  :PAG_REGISTRO;
        

    END
END;
  commit WORK;
