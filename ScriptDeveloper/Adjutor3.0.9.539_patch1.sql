UPDATE  VERSAOSISTEMA 
SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.539 patch 1',
       VERSAOSISTEMA.DATA   = '05.12.2019',
	    VERSAO = '3.0.9.539'
 where VERSAOSISTEMA.CODIGO = 1;

 commit work;

 SET TERM ^ ;
 execute block as
  declare variable x integer;
begin
  SELECT max(SYS_SEQUENCIADOR.sequencia_registro) from SYS_SEQUENCIADOR into x;
  execute statement 'set generator gen_sequenciador to ' || (x+1);
END
^
SET TERM ; ^
 
ALTER TABLE NFSERVICO ADD  RPS_CODIGO INTEGER;
COMMENT ON COLUMN NFSERVICO.RPS_CODIGO IS 'NUMERO DO RPS';
COMMENT ON COLUMN NFSERVICO.NFSE_CODIGO IS 'CODIGO IDENTIFICADOR DA NOTA SERVICO';

INSERT INTO SYS_SEQUENCIADOR (SEQUENCIA_EMPRESA, SEQUENCIA_TABELA, SEQUENCIA_CAMPO, SEQUENCIA_VALOR)
SELECT '001','NFSERVICO','RPS_CODIGO',gen_id(GEN_nfservico,0)
FROM  rdb$database;

COMMIT WORK;

INSERT INTO SYS_SEQUENCIADOR (SEQUENCIA_EMPRESA, SEQUENCIA_TABELA, SEQUENCIA_CAMPO, SEQUENCIA_VALOR)
SELECT EMP_CODIGO,'NFSERVICO','RPS_CODIGO',0
FROM  EMP0000 
WHERE emp_codigo <> '001';

COMMIT WORK;

UPDATE NFSERVICO
SET RPS_CODIGO = NFSE_CODIGO
WHERE RPS_CODIGO IS NULL;


COMMIT WORK;
