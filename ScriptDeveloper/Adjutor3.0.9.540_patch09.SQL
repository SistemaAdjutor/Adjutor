UPDATE  VERSAOSISTEMA 
SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.540 patch 9',
       VERSAOSISTEMA.DATA   = '17.01.2020',
	    VERSAO = '3.0.9.540'
 where VERSAOSISTEMA.CODIGO = 1;

 commit work;
 
--erro no faturamento
update nf_it01
set  ope_codigo = lpad(OPE_CODIGO,3,'0')
where char_length(ope_codigo) <> 3;


commit work;

-- erro na migração
UPDATE NF_IT01 IT
SET nf_totalitem =cast( ( cast(coalesce(it.NF_QTDE,0.0) as  double precision) * cast( COALESCE(it.NF_PRECO,0.0)  as double precision) ) as decimal(18,5))
WHERE nf_totalitem IS NULL OR NF_TOTALITEM = 0 ;


commit work;

