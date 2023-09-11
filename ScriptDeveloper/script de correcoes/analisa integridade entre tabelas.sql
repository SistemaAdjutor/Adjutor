
/* Integridade : compara registro que esta ta tabela FA_IT02 e não tem na FAT_PC01   */
select
t2.*
from
FAT_IT02 t2

where t2.FAT_CODIGO

not in (
SELECT 
t1.FAT_CODIGO
from
FAT_PC01 t1

);

