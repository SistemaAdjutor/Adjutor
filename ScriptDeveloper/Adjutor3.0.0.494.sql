ALTER TABLE FTC0000
ADD FTC_BASEFORMULA INTEGER;
COMMIT WORK;

update ftc0000 set ftc0000.ftc_baseformula = (select min(prmt0001.pmt_unformula) from prmt0001);
COMMIT WORK;


UPDATE  VERSAOSISTEMA SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.0.494',
       VERSAOSISTEMA.DATA   = '19.09.2017'
 where VERSAOSISTEMA.CODIGO = 1;
 
COMMIT WORK;

