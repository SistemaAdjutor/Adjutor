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
                              or (CCT.CCT_NIVEL in ('1','2','2.01','2.02','2.03','2.04','2.05','2.06','2.07','2.08','2.09','2.10'))
                JOIN PAG_PC01 PARCELA ON (PARCELA.PPC_EXCLUSAO <> 'S' and PAG0000.PAG_CODIGO = PARCELA.PAG_CODIGO )
                                      AND PARCELA.ppc_pagto between  '06/01/2016' and '06/02/2016'
                                      AND PAG0000.FOR_CODIGO = PARCELA.FOR_CODIGO
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


end
^
SET TERM ; ^



CREATE TABLE CONTA_CORRENTE (
    CODIGO VARCHAR(5),
    TIPO VARCHAR(1),
    CONTA VARCHAR(1),
    DOCUMENTO VARCHAR(20),
    DESCRICAO VARCHAR(40),
    VALOR NUMERIC(15,2),
    VALOR_UTILIZADO NUMERIC(15,2),
    LANCADO VARCHAR(1),
    USU_CODIGO INTEGER,
    COD_VENDEDOR VARCHAR(3),
    COD_CLIENTE VARCHAR(5),
    COD_FORNECEDOR VARCHAR(4),
    CANCELAMENTO VARCHAR(1),
    MOTIVO_CANCELAMENTO VARCHAR(50),
    USUARIO_CANCELAMENTO INTEGER);
	
COMMIT WORK;

COMMENT ON COLUMN CONTA_CORRENTE.TIPO IS
'V = VENDEDOR 
C = CLIENTE 
F = FORNECEDOR';

COMMIT WORK;

COMMENT ON COLUMN CONTA_CORRENTE.CONTA IS
'C = CREDITO 
D = DEBITO';

COMMIT WORK;

COMMENT ON COLUMN CONTA_CORRENTE.LANCADO IS
'A = AUTOMATICO 
M = MANUAL';

COMMIT WORK;

COMMENT ON COLUMN CONTA_CORRENTE.CANCELAMENTO IS
'0 = NAO 
1 = SIM';

COMMIT WORK;


update usuario_acesso
set usuario_acesso.usa_relatorio = 'S'
where usuario_acesso.usa_relatorio is null;

commit work;

update ope_regra
set ope_regra.opr_aliq_st_uf =
(case
    when (ope_regra.opr_ac = 'S') then
         (select icm0000.icms_subs
          from icm0000
          where icm0000.icm_descr_uf = 'ACRE')
    when (ope_regra.opr_al = 'S') then
         (select icm0000.icms_subs
          from icm0000
          where icm0000.icm_descr_uf = 'ALAGOAS')
    when (ope_regra.opr_ap = 'S') then
         (select icm0000.icms_subs
          from icm0000
          where icm0000.icm_descr_uf = 'AMAPÁ')
    when (ope_regra.opr_am = 'S') then
         (select icm0000.icms_subs
          from icm0000
          where icm0000.icm_descr_uf = 'AMAZONAS')
    when (ope_regra.opr_ba = 'S') then
         (select icm0000.icms_subs
          from icm0000
          where icm0000.icm_descr_uf = 'BAHIA')
    when (ope_regra.opr_ce = 'S') then
         (select icm0000.icms_subs
          from icm0000
          where icm0000.icm_descr_uf = 'CEARÁ')
    when (ope_regra.opr_df = 'S') then
         (select icm0000.icms_subs
          from icm0000
          where icm0000.icm_descr_uf = 'DISTRITO FEDERAL')
    when (ope_regra.opr_go = 'S') then
         (select icm0000.icms_subs
          from icm0000
          where icm0000.icm_descr_uf = 'GOIÁS')
    when (ope_regra.opr_es = 'S') then
         (select icm0000.icms_subs
          from icm0000
          where icm0000.icm_descr_uf = 'ESPIRITO SANTO')
    when (ope_regra.opr_ma = 'S') then
         (select icm0000.icms_subs
          from icm0000
          where icm0000.icm_descr_uf = 'MARANHÃO')
    when (ope_regra.opr_mt = 'S') then
         (select icm0000.icms_subs
          from icm0000
          where icm0000.icm_descr_uf = 'MATO GROSSO')
    when (ope_regra.opr_ms = 'S') then
         (select icm0000.icms_subs
          from icm0000
          where icm0000.icm_descr_uf = 'MATO GROSSO DO SUL')
    when (ope_regra.opr_mg = 'S') then
         (select icm0000.icms_subs
          from icm0000
          where icm0000.icm_descr_uf = 'MINAS GERAIS')
    when (ope_regra.opr_pa = 'S') then
         (select icm0000.icms_subs
          from icm0000
          where icm0000.icm_descr_uf = 'PARÁ')
    when (ope_regra.opr_pb = 'S') then
         (select icm0000.icms_subs
          from icm0000
          where icm0000.icm_descr_uf = 'PARAÍBA')
    when (ope_regra.opr_pr = 'S') then
         (select icm0000.icms_subs
          from icm0000
          where icm0000.icm_descr_uf = 'PARANÁ')
    when (ope_regra.opr_pe = 'S') then
         (select icm0000.icms_subs
          from icm0000
          where icm0000.icm_descr_uf = 'PERNAMBUCO')
    when (ope_regra.opr_pi = 'S') then
         (select icm0000.icms_subs
          from icm0000
          where icm0000.icm_descr_uf = 'PIAUÍ')
    when (ope_regra.opr_rj = 'S') then
         (select icm0000.icms_subs
          from icm0000
          where icm0000.icm_descr_uf = 'RIO DE JANEIRO')
    when (ope_regra.opr_rn = 'S') then
         (select icm0000.icms_subs
          from icm0000
          where icm0000.icm_descr_uf = 'RIO GRANDE DO NORTE')
    when (ope_regra.opr_rs = 'S') then
         (select icm0000.icms_subs
          from icm0000
          where icm0000.icm_descr_uf = 'RIO GRANDE DO SUL')
    when (ope_regra.opr_ro = 'S') then
         (select icm0000.icms_subs
          from icm0000
          where icm0000.icm_descr_uf = 'RONDÔNIA')
    when (ope_regra.opr_rr = 'S') then
         (select icm0000.icms_subs
          from icm0000
          where icm0000.icm_descr_uf = 'RORAIMA')
    when (ope_regra.opr_sp = 'S') then
         (select icm0000.icms_subs
          from icm0000
          where icm0000.icm_descr_uf = 'SÃO PAULO')
    when (ope_regra.opr_sc = 'S') then
         (select icm0000.icms_subs
          from icm0000
          where icm0000.icm_descr_uf = 'SANTA CATARINA')
    when (ope_regra.opr_se = 'S') then
         (select icm0000.icms_subs
          from icm0000
          where icm0000.icm_descr_uf = 'SERGIPE')
    when (ope_regra.opr_to = 'S') then
         (select icm0000.icms_subs
          from icm0000
          where icm0000.icm_descr_uf = 'TOCANTINS')
    when (ope_regra.opr_ex = 'S') then
         (select icm0000.icms_subs
          from icm0000
          where icm0000.icm_descr_uf = '')

end)
where ope_regra.opr_aliq_st_uf is null;
commit work;


update ope_regra
set ope_regra.opr_aliq_interestadual =
(case
    when (ope_regra.opr_ac = 'S') then
         (select icm0000.icm_aliq
          from icm0000
          where icm0000.icm_descr_uf = 'ACRE')
    when (ope_regra.opr_al = 'S') then
         (select icm0000.icm_aliq
          from icm0000
          where icm0000.icm_descr_uf = 'ALAGOAS')
    when (ope_regra.opr_ap = 'S') then
         (select icm0000.icm_aliq
          from icm0000
          where icm0000.icm_descr_uf = 'AMAPÁ')
    when (ope_regra.opr_am = 'S') then
         (select icm0000.icm_aliq
          from icm0000
          where icm0000.icm_descr_uf = 'AMAZONAS')
    when (ope_regra.opr_ba = 'S') then
         (select icm0000.icm_aliq
          from icm0000
          where icm0000.icm_descr_uf = 'BAHIA')
    when (ope_regra.opr_ce = 'S') then
         (select icm0000.icm_aliq
          from icm0000
          where icm0000.icm_descr_uf = 'CEARÁ')
    when (ope_regra.opr_df = 'S') then
         (select icm0000.icm_aliq
          from icm0000
          where icm0000.icm_descr_uf = 'DISTRITO FEDERAL')
    when (ope_regra.opr_go = 'S') then
         (select icm0000.icm_aliq
          from icm0000
          where icm0000.icm_descr_uf = 'GOIÁS')
    when (ope_regra.opr_es = 'S') then
         (select icm0000.icm_aliq
          from icm0000
          where icm0000.icm_descr_uf = 'ESPIRITO SANTO')
    when (ope_regra.opr_ma = 'S') then
         (select icm0000.icm_aliq
          from icm0000
          where icm0000.icm_descr_uf = 'MARANHÃO')
    when (ope_regra.opr_mt = 'S') then
         (select icm0000.icm_aliq
          from icm0000
          where icm0000.icm_descr_uf = 'MATO GROSSO')
    when (ope_regra.opr_ms = 'S') then
         (select icm0000.icm_aliq
          from icm0000
          where icm0000.icm_descr_uf = 'MATO GROSSO DO SUL')
    when (ope_regra.opr_mg = 'S') then
         (select icm0000.icm_aliq
          from icm0000
          where icm0000.icm_descr_uf = 'MINAS GERAIS')
    when (ope_regra.opr_pa = 'S') then
         (select icm0000.icm_aliq
          from icm0000
          where icm0000.icm_descr_uf = 'PARÁ')
    when (ope_regra.opr_pb = 'S') then
         (select icm0000.icm_aliq
          from icm0000
          where icm0000.icm_descr_uf = 'PARAÍBA')
    when (ope_regra.opr_pr = 'S') then
         (select icm0000.icm_aliq
          from icm0000
          where icm0000.icm_descr_uf = 'PARANÁ')
    when (ope_regra.opr_pe = 'S') then
         (select icm0000.icm_aliq
          from icm0000
          where icm0000.icm_descr_uf = 'PERNAMBUCO')
    when (ope_regra.opr_pi = 'S') then
         (select icm0000.icm_aliq
          from icm0000
          where icm0000.icm_descr_uf = 'PIAUÍ')
    when (ope_regra.opr_rj = 'S') then
         (select icm0000.icm_aliq
          from icm0000
          where icm0000.icm_descr_uf = 'RIO DE JANEIRO')
    when (ope_regra.opr_rn = 'S') then
         (select icm0000.icm_aliq
          from icm0000
          where icm0000.icm_descr_uf = 'RIO GRANDE DO NORTE')
    when (ope_regra.opr_rs = 'S') then
         (select icm0000.icm_aliq
          from icm0000
          where icm0000.icm_descr_uf = 'RIO GRANDE DO SUL')
    when (ope_regra.opr_ro = 'S') then
         (select icm0000.icm_aliq
          from icm0000
          where icm0000.icm_descr_uf = 'RONDÔNIA')
    when (ope_regra.opr_rr = 'S') then
         (select icm0000.icm_aliq
          from icm0000
          where icm0000.icm_descr_uf = 'RORAIMA')
    when (ope_regra.opr_sp = 'S') then
         (select icm0000.icm_aliq
          from icm0000
          where icm0000.icm_descr_uf = 'SÃO PAULO')
    when (ope_regra.opr_sc = 'S') then
         (select icm0000.icm_aliq
          from icm0000
          where icm0000.icm_descr_uf = 'SANTA CATARINA')
    when (ope_regra.opr_se = 'S') then
         (select icm0000.icm_aliq
          from icm0000
          where icm0000.icm_descr_uf = 'SERGIPE')
    when (ope_regra.opr_to = 'S') then
         (select icm0000.icm_aliq
          from icm0000
          where icm0000.icm_descr_uf = 'TOCANTINS')
    when (ope_regra.opr_ex = 'S') then
         (select icm0000.icm_aliq
          from icm0000
          where icm0000.icm_descr_uf = '')

end)
where ope_regra.opr_aliq_interestadual is null;
commit work;
  
 
UPDATE  VERSAOSISTEMA SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.0.479',
       VERSAOSISTEMA.DATA   = '06.03.2017'
 where VERSAOSISTEMA.CODIGO = 1;
 
 COMMIT WORK;

 