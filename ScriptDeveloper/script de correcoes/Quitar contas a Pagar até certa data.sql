--- quitar toas as contas  a pagar até a data abaixo

update pag_pc01 set pag_pc01.ppc_pagto = pag_pc01.ppc_dtemis,
       pag_pc01.ppc_sitpag = 'L',pag_pc01.ppc_status = ' Liquidada',
       pag_pc01.ppc_vlpago = pag_pc01.ppc_vlparc
       where pag_pc01.ppc_vencto <= '01.08.2012' and pag_pc01.ppc_sitpag <> 'X';
commit;

