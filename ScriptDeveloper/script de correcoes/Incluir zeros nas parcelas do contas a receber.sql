update fat_pc01
set fat_pc01.fat_codigo = ('00000'||fat_codigo)
where CHAR_LENGTH(fat_pc01.fat_codigo) = '1';
commit work;

update fat_pc01
set fat_pc01.fat_codigo = ('0000'||fat_codigo)
where CHAR_LENGTH(fat_pc01.fat_codigo) = '2';
commit work;

update fat_pc01
set fat_pc01.fat_codigo = ('000'||fat_codigo)
where CHAR_LENGTH(fat_pc01.fat_codigo) = '3';
commit work;

update fat_pc01
set fat_pc01.fat_codigo = ('00'||fat_codigo)
where CHAR_LENGTH(fat_pc01.fat_codigo) = '4';
commit work;

update fat_pc01
set fat_pc01.fat_codigo = ('0'||fat_codigo)
where CHAR_LENGTH(fat_pc01.fat_codigo) = '5';
commit work;

