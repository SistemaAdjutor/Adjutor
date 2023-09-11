SET TERM  ^ ;
CREATE OR ALTER PROCEDURE TIRA_ACENTOS (
     dado varchar(512) = '')
returns (
     retorno varchar(512))
as
declare variable com_acento varchar(40) = 'àâêôûãõáéíóúçüÀÂÊÔÛÃÕÁÉÍÓÚÇÜÑñ';
declare variable sem_acento varchar(40) = 'aaeouaoaeioucuAAEOUAOAEIOUCUNn';
declare variable letra varchar(1) = '';
begin
   RETORNO = '';
   While (DADO<>'') do
   begin
      Select case substring(:DADO from 1 for 1)
            when 'à' then
                 'a'
            when 'â' then
                 'a'
            when 'ã' then
                 'a'
            when 'á' then
                 'a'
            when 'À' then
                 'A'
            when 'Ã' then
                 'A'
            when 'Á' then
                 'A'
            when 'ê' then
                 'e'
            when 'é' then
                 'e'
            when 'Ê' then
                 'e'
            when 'É' then
                 'E'
            when 'ô' then
                 'o'
            when 'õ' then
                 'o'
            when 'ó' then
                 'o'
            when 'Ô' then
                 'O'
            when 'Ó' then
                 'O'
            when 'Õ' then
                 'O'
            when 'û' then
                 'u'
            when 'ú' then
                 'u'
            when 'ü' then
                 'u'
            when 'Û' then
                 'U'
            when 'Ú' then
                 'U'
            when 'Ü' then
                 'U'
            when 'í' then
                 'i'
            when 'Í' then
                 'I'
            when 'ç' then
                 'c'
            when 'Ç' then
                 'C'
            when 'ñ' then
                 'n'
            when 'Ñ' then
                 'N'
            when '&' then
                 'e'
            else
               substring(:DADO from 1 for 1)
            end
      from rdb$database into :LETRA;

      RETORNO = RETORNO || LETRA;

      DADO  = substring(DADO from 2 for 512);

   end

   suspend;
end^

SET TERM ; ^




commit work