SET TERM ^ ;

create table wsNovi
(
    wsLic varchar(500)
)^

commit work^

insert into wsNovi Values ( 'http://novinow.ddns.net:8080/ValidadorOnline/valida/validar' )^

commit work^


Update VERSAOSISTEMA SET
       VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.0.454' ,
       VERSAOSISTEMA.DATA   = '06.07.2016'
 where VERSAOSISTEMA.CODIGO = 1^

COMMIT WORK^



SET TERM ; ^


