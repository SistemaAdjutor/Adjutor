/* Integridade : deleta registro que esta ta tabela FA_IT02 e não tem na FAT_PC01   */
delete
from
FAT_IT02

where FAT_IT02.FAT_CODIGO

not in (
SELECT 
t1.FAT_CODIGO
from
FAT_PC01 t1

);

