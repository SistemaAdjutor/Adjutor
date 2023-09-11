-- QUITAS TODAS AS CONTAS A RECEBER ATÉ A DATA ABAIXO

update fat_pc01 set fat_pc01.fpc_pagto = fat_pc01.fpc_dtemis,
       fat_pc01.fpc_sitpag = 'L',fat_pc01.fpc_status = 'Liquidada',
       fat_pc01.fpc_vlpago = fat_pc01.fpc_vlparc
       where fat_pc01.fpc_vencto <='01.08.2012' and  fat_pc01.fpc_sitpag <> 'X';

commit;


