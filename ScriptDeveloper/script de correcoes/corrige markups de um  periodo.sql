-- atualiza todos os custos da nota conforme o cadastro de produto
-- somente mes de julho de 2013
--------------------------------------------------------------------------------
update nf_it01 t2 set t2.nf_custo =
(SELECT
  coalesce(cast(cast(cast(T1.prd_pvenda/(100 + T1.prd_margemvenda) as numeric(18,4)) * 100 as numeric(15,4)) AS numeric(15,4)),0)
FROM
PRD0000 T1
where t1.prd_refer =  t2.prd_refer)
  where t2.nf_it_notanumer in (select t5.nf_notanumber from nf0001 t5 where t5.nf_notanumber = t2.nf_it_notanumer
  and t5.nf_emissao BETWEEN '01/07/2013' and '31/07/2013');
COMMIT WORK;

-- atualiza todos os custos do pedido conforme o cadastro de produto
-- somente mes de julho de 2013
--------------------------------------------------------------------------------
update ped_it01 t2 set t2.prf_custo =
(SELECT
  coalesce(cast(cast(cast(T1.prd_pvenda/(100 + T1.prd_margemvenda) as numeric(18,4)) * 100 as numeric(15,4)) AS numeric(15,4)),0)
FROM
PRD0000 T1
where t1.prd_refer =  t2.prd_refer)
    where t2.ped_codigo in (select t5.ped_codigo from ped0000 t5 where t5.ped_codigo = t2.ped_codigo and t5.ped_dtentrada between
    '01/07/2013' and '31/07/2013');

COMMIT WORK;
-------------

