
             UPDATE  VERSAOSISTEMA 
SET    VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.521',
       VERSAOSISTEMA.DATA   = '02.09.2018',
       VERSAO = '3.0.9.521'
 where VERSAOSISTEMA.CODIGO = 1;
 
 
SET SQL DIALECT 3;

SET TERM ^ ;

CREATE OR ALTER TRIGGER NF0001_BU0 FOR NF0001
ACTIVE BEFORE UPDATE POSITION 0
AS
declare variable numero INTEGER;
declare variable COMP varchar(1);
begin
  /* Trigger text */
  if (UPDATING) then
    begin
        if (old.NF_NOTANUMBER is not null) then
            begin
                if (old.NF_NUM_NFE is not null) then
                    begin
                        NUMERO = old.NF_NUM_NFE;
                    end
                else
                if (new.NF_NUM_NFE is not null) then
                    begin
                        NUMERO = new.NF_NUM_NFE;
                    end
                else
                   NUMERO = 0;
                SELECT RECEBER FROM SHAREDB INTO :comp;
                if (comp = 'E') then
                    UPDATE FAT0000 t1 set t1.NF_NUM_NFE = :NUMERO where t1.FAT_CODIGO = old.NF_NOTANUMBER  and emp_codigo = old.emp_codigo ;
                else
                    UPDATE FAT0000 t1 set t1.NF_NUM_NFE = :NUMERO where t1.FAT_CODIGO = old.NF_NOTANUMBER;
            end
    end
end
^
SET TERM ;^


CREATE TABLE TAREFAS_HISTORICO
(TAH_REGISTRO INTEGER NOT NULL,
 TRF_REGISTRO INTEGER NOT NULL, 
 TAH_DATA_REGISTRO TIMESTAMP,
 TAH_ASSUNTO BLOB SUB_TYPE 0,
 CONSTRAINT pk_tarefas_historico PRIMARY KEY (TAH_REGISTRO)
  );
 
 
COMMENT ON TABLE TAREFAS_HISTORICO IS 'HISTORICO DAS TAREFAS';
comment ON COLUMN TAREFAS_HISTORICO.TAH_REGISTRO IS 'CHAVE IDENTIFICADORA';
comment ON COLUMN TAREFAS_HISTORICO.TRF_REGISTRO IS 'REFERENCIA DA TAREFA';
comment ON COLUMN TAREFAS_HISTORICO.TAH_DATA_REGISTRO IS 'DATA DO REGISTRO DO ASSUNTO';
comment ON COLUMN TAREFAS_HISTORICO.TAH_ASSUNTO IS 'ASSUNTO';

CREATE SEQUENCE GEN_TAH_HISTORICO;
 
 
ALTER TABLE CLI0000 ADD CLI_UND_CONSUMIDORA INTEGER;
COMMENT ON COLUMN CLI0000.CLI_UND_CONSUMIDORA IS 'UNIDADE CONSUMIDORA DA COPEL';

UPDATE CLI0000
SET CLI_UND_CONSUMIDORA =  (SELECT FIRST 1 PED_UND_CONSUMIDORA FROM PED0000 P WHERE  P.CLI_CODIGO = CLI0000.CLI_CODIGO AND PED_UND_CONSUMIDORA IS NOT NULL)
WHERE EXISTS 
(SELECT * FROM PED0000 P 
  WHERE  P.CLI_CODIGO = CLI0000.CLI_CODIGO AND P.PED_UND_CONSUMIDORA IS NOT NULL);

ALTER TABLE CLI0000 ALTER COLUMN CLI_MOTIVO TYPE VARCHAR(400);


INSERT INTO BANCOS VALUES (901,'CELESC','001','S'); 

COMMIT WORK;

ALTER TABLE PRMT0001 ADD PMT_CALCULO_MARGEM INTEGER;
COMMENT ON COLUMN PRMT0001.PMT_CALCULO_MARGEM  IS '1 : MARGEM VENDA BRUTA (PRECO DE VENDA,CUSTO ENTRADA, COMPOSICAO MARGEM) ; 2 MARGEM VENDA LIQUIDA (PRECO DE VENDA , CUSTO DE ENTRADA, PRAZO, ICMS, FRETE-CIF)';

ALTER TABLE PCL0000 ADD PCL_TX_MARGEM NUMERIC(18,4);
COMMENT ON COLUMN PCL0000.PCL_TX_MARGEM IS 'TAXA % NA MARGEM DE VENDA - SE O PARAMETRO UTILIZADO CALCULO 2 - NO ITEM FINANCEIRO';

ALTER TABLE PED0000 ADD PED_VALOR_CIF NUMERIC(18,5);
COMMENT ON COLUMN PED0000.PED_VALOR_CIF IS 'VALOR DO FRETE CASO SEJA CIF PARA COMPOSICAO DA MARGEM ';

UPDATE PRMT0001
SET PMT_CALCULO_MARGEM = 1;

commit work;

ALTER TABLE EMP0000 add EMP_PASSWORD_COMPRAS VARCHAR(50);
comment ON COLUMN EMP0000.EMP_PASSWORD_compras IS 'PASSWORD ENCRIPITADO DO COMPRAS';


alter table EMP0000 add emp_sincrono varchar(1);
comment ON COLUMN EMP0000.emp_sincrono IS 'NFe sincrono S e assincrono N';

COMMIT WORK;

UPDATE EMP0000
SET emp_sincrono = CASE WHEN EMP_UF = 'SP' THEN 'N' ELSE 'S' END;


