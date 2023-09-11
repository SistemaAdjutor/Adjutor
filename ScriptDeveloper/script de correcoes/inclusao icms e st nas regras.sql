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



