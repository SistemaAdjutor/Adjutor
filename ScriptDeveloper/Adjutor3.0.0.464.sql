SET TERM ^ ;

CREATE SEQUENCE GEN_CCT_0000_ID^
COMMIT WORK^

CREATE or ALTER PROCEDURE UPDATE_prd_codigo_gen
AS
declare variable cod varchar(10);
declare variable stmt varchar(150);
BEGIN

    cod = (select max(CCT_CODIGO) from CCT_0000);
    stmt = 'ALTER SEQUENCE GEN_CCT_0000_ID RESTART WITH '||cod;
    execute statement stmt;

END^

COMMIT WORK^

execUTE PROCEDURE UPDATE_prd_codigo_gen^

COMMIT WORK^

DROP PROCEDURE UPDATE_prd_codigo_gen^

COMMIT WORK^


Update VERSAOSISTEMA SET
       VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.0.464' ,
       VERSAOSISTEMA.DATA   = '21.10.2016'
 where VERSAOSISTEMA.CODIGO = 1^

COMMIT WORK^

SET TERM ; ^


