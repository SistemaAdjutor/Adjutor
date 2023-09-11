
UPDATE  VERSAOSISTEMA SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.0.490',
       VERSAOSISTEMA.DATA   = '07.07.2017'
 where VERSAOSISTEMA.CODIGO = 1;
 
COMMIT WORK;


SET TERM ^ ;

CREATE OR ALTER procedure PCD_PLANO_CONTAS_CENTRO_PR (
    EMP_CODIGO varchar(3),
    DATA_INICIAL date,
    DATA_FINAL date)
returns (
    CCT_CODIGO varchar(3),
    TITULO varchar(200),
    CCT_NIVEL varchar(20),
    VALOR numeric(18,2),
    CENTRO varchar(31))
as
declare variable DATA_PROCESSO date;
declare variable TIPO varchar(1);
declare variable CCT_BASE varchar(3);
declare variable VALORTMP numeric(18,2);
declare variable CCT_CODIGO_CUSTO varchar(3);
declare variable TITULO_CUSTO varchar(100);
declare variable CCT_NIVEL_CUSTO varchar(20);
declare variable CCT_CODIGO_GUARDA varchar(3);
declare variable TITULO_GUARDA varchar(100);
declare variable CCT_NIVEL_GUARDA varchar(20);
begin
   if (:EMP_CODIGO <> '999') then
      BEGIN
        for
        SELECT distinct
            CCT.PCX_CODIGO,
            substring((CCT.PCX_NIVEL || ' - '|| CCT.PCX_DESCRI)  from 1 for 31)  as TITULO,
            CCT.PCX_NIVEL
        FROM PCX0000 CCT
        join FIN_RATEIO on FIN_RATEIO.PCX_CODIGO = CCT.PCX_CODIGO
        JOIN PAG_PC01 PARCELA ON (PARCELA.PPC_EXCLUSAO <> 'S' and PARCELA.PAG_REGISTRO = fin_rateio.fir_registro_cp_cr)
                              AND PARCELA.ppc_pagto between  :DATA_INICIAL and :DATA_FINAL
        JOIN pag_pagamento PAGIT ON (PAGIT.pag_registro = PARCELA.pag_registro AND PAGIT.pag_data_pagamento between  :DATA_INICIAL and :DATA_FINAL)

        into: CCT_CODIGO_CUSTO, :CENTRO, :CCT_NIVEL_CUSTO
        do
        begin
            VALOR = 0;
            valorTMP = 0;
            for
                SELECT distinct
                    CCT.CCT_CODIGO,
                    CCT.CCT_NIVEL || ' - '|| CCT.CCT_DESCRI as TITULO,
                    CCT.CCT_NIVEL,
                    CCT.CCT_CONTA
                FROM  CCT_0000 CCT
                JOIN PAG0000 ON CCT.CCT_CODIGO = PAG0000.CCT_CODIGO
                              or (CCT.CCT_NIVEL in ('1','2','2.01','2.02','2.03','2.04','2.05','2.06','2.07','2.08','2.09','2.10','2.10','2.11','2.12','2.13','2.14','2.15','2.16','2.17','2.18','2.19'))
                JOIN PAG_PC01 PARCELA ON (PARCELA.PPC_EXCLUSAO <> 'S' and PAG0000.PAG_CODIGO = PARCELA.PAG_CODIGO )
                                      AND PARCELA.ppc_pagto between  :DATA_INICIAL and :DATA_FINAL
                                      AND PAG0000.FOR_CODIGO = PARCELA.FOR_CODIGO
                                      ORDER BY CCT.cct_nivel
                into: CCT_CODIGO, :TITULO, :CCT_NIVEL, :TIPO
            do
            begin
                VALOR = 0;
                valorTMP = 0;

                SELECT
                COALESCE(sum(CAST(RATEIO.FIR_INDICE_REAL * (PAGIT.pag_valor) AS NUMERIC(18,5))),0)
                FROM
                FIN_RATEIO RATEIO
                JOIN PAG_PC01 PARCELA ON (PARCELA.PPC_EXCLUSAO <> 'S' and PARCELA.PAG_REGISTRO = RATEIO.FIR_REGISTRO_CP_CR)
                                      and PARCELA.ppc_pagto between  :DATA_INICIAL and :DATA_FINAL
                JOIN pag_pagamento PAGIT ON (PAGIT.pag_registro = PARCELA.pag_registro AND PAGIT.pag_data_pagamento between  :DATA_INICIAL and :DATA_FINAL)
                JOIN PAG0000 CABECA ON (CABECA.PAG_CODIGO = PARCELA.PAG_CODIGO AND CABECA.FOR_CODIGO = PARCELA.FOR_CODIGO)
                JOIN PCX0000 CENTROCUSTO ON (CENTROCUSTO.PCX_CODIGO = RATEIO.PCX_CODIGO AND CENTROCUSTO.PCX_NIVEL = :CCT_NIVEL_CUSTO)
                JOIN CCT_0000 PLANO ON (PLANO.CCT_CODIGO = CABECA.CCT_CODIGO AND PLANO.CCT_NIVEL LIKE :CCT_NIVEL||'%')
                WHERE
                RATEIO.FIR_REGISTRO_TIPO = 'P' AND RATEIO.FIR_INDICE > 0 AND RATEIO.EMP_CODIGO = :EMP_CODIGO AND RATEIO.pcx_codigo = :CCT_CODIGO_CUSTO
                INTO:valorTMP;
    
                /*select
                    COALESCE(sum(CAST(RATEIO.FIR_INDICE_REAL * FATIT.fre_valor AS NUMERIC(18,2))),0)
                from
                FIN_RATEIO RATEIO
                JOIN FAT_PC01 PARCELA ON (PARCELA.FPC_EXCLUSAO <> 'S' and PARCELA.FAT_REGISTRO = RATEIO.FIR_REGISTRO_CP_CR)
                join fat_recebimento fatit on (fatit.fat_registro = PARCELA.fat_registro AND FATIT.fre_data_recebimento BETWEEN :DATA_INICIAL and :DATA_FINAL )
                JOIN FAT0000 CABECA ON (CABECA.FAT_CODIGO = PARCELA.FAT_CODIGO)
                JOIN PCX0000 CENTROCUSTO ON (CENTROCUSTO.PCX_CODIGO = RATEIO.PCX_CODIGO AND CENTROCUSTO.PCX_NIVEL = :CCT_NIVEL_CUSTO)
                JOIN CCT_0000 PLANO ON (PLANO.CCT_CODIGO = CABECA.CCT_CODIGO AND PLANO.CCT_NIVEL LIKE :CCT_NIVEL||'%')
                WHERE RATEIO.FIR_REGISTRO_TIPO = 'R' AND RATEIO.FIR_INDICE > 0 AND RATEIO.EMP_CODIGO = :EMP_CODIGO AND RATEIO.pcx_codigo = :CCT_CODIGO_CUSTO
                INTO:VALOR; */
    
                --VALOR =  COALESCE(VALOR,0) - COALESCE(valorTMP,0);
                VALOR =  COALESCE(valorTMP,0);
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
                                      and PARCELA.PPC_PAGTO between  :DATA_INICIAL and :DATA_FINAL
                JOIN pag_pagamento PAGIT ON (PAGIT.pag_registro = PARCELA.pag_registro AND PAGIT.pag_data_pagamento between  :DATA_INICIAL and :DATA_FINAL)
                JOIN PAG0000 CABECA ON (CABECA.PAG_CODIGO = PARCELA.PAG_CODIGO AND CABECA.FOR_CODIGO = PARCELA.FOR_CODIGO)
                JOIN PCX0000 CENTROCUSTO ON (CENTROCUSTO.PCX_CODIGO = RATEIO.PCX_CODIGO AND CENTROCUSTO.PCX_NIVEL = :CCT_NIVEL_CUSTO)
                JOIN CCT_0000 PLANO ON (PLANO.CCT_CODIGO = CABECA.CCT_CODIGO AND PLANO.CCT_NIVEL LIKE :CCT_NIVEL||'%')
                WHERE
                RATEIO.FIR_REGISTRO_TIPO = 'P' AND RATEIO.FIR_INDICE > 0 AND RATEIO.pcx_codigo = :CCT_CODIGO_CUSTO
                INTO:valorTMP;
    
                /*select
                    COALESCE(sum(CAST(RATEIO.FIR_INDICE_REAL * FATIT.fre_valor AS NUMERIC(18,2))),0)
                from
                FIN_RATEIO RATEIO
                JOIN FAT_PC01 PARCELA ON (PARCELA.FPC_EXCLUSAO <> 'S' and PARCELA.FAT_REGISTRO = RATEIO.FIR_REGISTRO_CP_CR)
                                      AND PARCELA.FPC_PAGTO between :DATA_INICIAL and :DATA_FINAL
                join fat_recebimento fatit on (fatit.fat_registro = PARCELA.fat_registro AND FATIT.fre_data_recebimento BETWEEN :DATA_INICIAL and :DATA_FINAL )
                JOIN FAT0000 CABECA ON (CABECA.FAT_CODIGO = PARCELA.FAT_CODIGO)
                JOIN PCX0000 CENTROCUSTO ON (CENTROCUSTO.PCX_CODIGO = RATEIO.PCX_CODIGO AND CENTROCUSTO.PCX_NIVEL = :CCT_NIVEL_CUSTO)
                                         and RATEIO.PCX_CODIGO = CENTROCUSTO.PCX_CODIGO
                JOIN CCT_0000 PLANO ON (PLANO.CCT_CODIGO = CABECA.CCT_CODIGO AND PLANO.CCT_NIVEL LIKE :CCT_NIVEL||'%')
                WHERE RATEIO.FIR_REGISTRO_TIPO = 'R' AND RATEIO.FIR_INDICE > 0  AND RATEIO.pcx_codigo = :CCT_CODIGO_CUSTO
                INTO:VALOR;*/
    
                --VALOR =  COALESCE(VALOR,0) - COALESCE(valorTMP,0);
                VALOR =  COALESCE(valorTMP,0);
                SUSPEND;
            end
        end
      END


end^

SET TERM ; ^






