ALTER TABLE PED_IT01
    ADD OPE_CODIGO VARCHAR(3);
	
COMMIT WORK;

ALTER TABLE PRMT0001
    ADD PMT_VALOR_KIT CHAR(1);
	
COMMIT WORK;

update cli0000
set cli0000.cli_celular = substring (cli0000.cli_celular from 2 for 11)
                                        where (substring (cli0000.cli_celular from 1 for 1) = '0' );

COMMIT WORK;

--------------------------------------------------------------------------------------------------
update cli0000
set cli0000.cli_celular = substring (cli0000.cli_celular from 1 for 2) || substring (cli0000.cli_celular from 4 for 11)
                                        where (substring (cli0000.cli_celular from 3 for 1) = '' );

COMMIT WORK;

--------------------------------------------------------------------------------------------------
update cli0000
set cli0000.cli_celular =
    case
        when CHAR_LENGTH (cli_celular) = 10 then
            substring(cli0000.cli_celular from 1 for 2) || '9' || substring(cli0000.cli_celular from 3 for 10)
        when CHAR_LENGTH (cli_celular) = 8 then
            case
                when CHAR_LENGTH (cli_fone) = 11 then
                    substring(cli0000.cli_fone from 2 for 2) || '9' || substring(cli0000.cli_celular from 1 for 8)
                when CHAR_LENGTH (cli_fone) = 8 then
                    '9' || cli0000.cli_celular
            end
         when CHAR_LENGTH (cli_celular) = 11 then
            cli0000.cli_celular
   when CHAR_LENGTH (cli_celular) < 8 then
   cli0000.cli_celular
     end;
commit WORK;


--------------------------------------------------------------------------------------------------------------

update rep0000
set REP0000.rep_celular = substring (REP0000.rep_celular from 2 for 11)
                                        where (substring (REP0000.rep_celular from 1 for 1) = '0' );

COMMIT WORK;
--------------------------------------------------------------------------------------------------
update rep0000
set REP0000.rep_celular = substring (REP0000.rep_celular from 1 for 2) || substring (REP0000.rep_celular from 4 for 11)
                                        where (substring (REP0000.rep_celular from 3 for 1) = '' );

COMMIT WORK;

--------------------------------------------------------------------------------------------------------------

update rep0000
set rep0000.REP_celular =
    case
        when CHAR_LENGTH (REP_celular) = 10 then
            substring(rep0000.REP_celular from 1 for 2) || '9' || substring(rep0000.REP_celular from 3 for 10)
        when CHAR_LENGTH (REP_celular) = 8 then
            case
                when CHAR_LENGTH (REP_FONE) = 11 then
                    substring(REP0000.REP_FONE from 2 for 2) || '9' || substring(rep0000.REP_celular from 1 for 8)
                when CHAR_LENGTH (REP_FONE) = 8 then
                    '9' || rep0000.REP_celular
            end
        when CHAR_LENGTH (REP_celular) = 11 then
            rep0000.REP_celular
  when CHAR_LENGTH (REP_celular) < 8 then
   rep0000.REP_celular
     end;

COMMIT WORK;



ALTER TABLE OPV0000
    ADD OPV_EXTERNO_HABILITA CHAR(1);
	
COMMIT WORK;

ALTER TABLE PEDIDO_WEB
    ADD OPV_HABILITADO INTEGER;	
	
COMMIT WORK;	


UPDATE  VERSAOSISTEMA SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.0.474',
       VERSAOSISTEMA.DATA   = '03.01.2017'
 where VERSAOSISTEMA.CODIGO = 1;
 
 COMMIT WORK;
