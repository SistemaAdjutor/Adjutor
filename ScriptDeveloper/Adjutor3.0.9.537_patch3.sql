UPDATE  VERSAOSISTEMA 
SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.537 patch 3',
       VERSAOSISTEMA.DATA   = '10.10.2019',
	    VERSAO = '3.0.9.537'
 where VERSAOSISTEMA.CODIGO = 1;

COMMIT WORK;

ALTER TABLE PED_IT01 ADD PED_TIPOPECA_TERM VARCHAR ( 30);
ALTER TABLE PED_IT01 ADD PED_MATERIAL_TERM VARCHAR (15);
ALTER TABLE PED_IT01 ADD PED_DUREZASUPERFICIAL_TERM   VARCHAR (30);
ALTER TABLE PED_IT01 ADD PED_DUREZANUCLEO_TERM VARCHAR(30);
ALTER TABLE PED_IT01 ADD PED_PROFUNDIDADE_TERM VARCHAR (35);
ALTER TABLE PED_IT01 ADD PED_TAMANHOGRAO_TERM  VARCHAR (20);
ALTER TABLE PED_IT01 ADD PED_EHT_TERM   VARCHAR (24);
ALTER TABLE PED_IT01 ADD PED_DESENHO_TERM  VARCHAR (20); 
--ALTER TABLE PED0000 ADD PED_PESOUNITARIO  NUMERIC(15,8);

ALTER TABLE PROCESSOS DROP  TPR_CODIGO;
DROP TABLE TIPO_PROCESSO;

ALTER TABLE PROCESSOS ADD SRV_CODIGO INTEGER;

ALTER TABLE SERVICO ADD CONSTRAINT PK_SERVICO PRIMARY KEY (SRV_CODIGO);
ALTER TABLE SERVICO DROP CONSTRAINT SET_CODIGO;
ALTER TABLE SERVICO ADD CONSTRAINT FK_SERVICO_SETOR FOREIGN KEY (SET_CODIGO) REFERENCES SETOR(SET_CODIGO) ON DELETE SET NULL ON UPDATE CASCADE; 
ALTER TABLE PROCESSOS ADD CONSTRAINT FK_PROCESSOS_servico FOREIGN KEY (SRV_CODIGO) REFERENCES SERVICO(SRV_CODIGO) ON UPDATE CASCADE  ;
  
ALTER TABLE APONTAMENTO_PROCESSO ADD USU_CODIGO INTEGER;  
COMMENT ON COLUMN APONTAMENTO_PROCESSO.USU_CODIGO IS 'USUARIO QUE FEZ O APONTAMENTO';


ALTER TABLE CARGA ADD EQP_CODIGO INTEGER;
COMMENT ON COLUMN CARGA.EQP_CODIGO IS 'EQUIPAMENTO USADO AO APONTAR';

ALTER TABLE processos_producao ADD EQP_CODIGO INTEGER;
COMMENT ON COLUMN processos_producao.EQP_CODIGO IS 'EQUIPAMENTO USADO AO APONTAR';

ALTER TABLE processos_producao ADD PCP_DATAINI TIMESTAMP;
ALTER TABLE processos_producao ADD PCP_DATAFIM TIMESTAMP;
COMMENT ON COLUMN PROCESSOS_PRODUCAO.PCP_DATAINI IS 'INICIO DO PROCESSO';
COMMENT ON COLUMN PROCESSOS_PRODUCAO.PCP_DATAFIM IS 'FIM DO PROCESSO';

COMMENT ON COLUMN CARGA.CAR_STATUS IS 'STATUS P - PENDENTE ; C - CONFIRMADO ;F- FINALIZADO ;A- CANCELADO E - EM ANDAMENTO ; S - PARADO STAND BY';
COMMENT ON COLUMN PROCESSOS_PRODUCAO.PCP_STATUS IS 'STATUS: P - PENDENTE ; C - CARGA CONFIRMADA ;F- CARGA FINALIZADA ;A- CARGA CANCELADA E - EM ANDAMENTO ; S - PARADO STAND BY';
COMMENT ON COLUMN ITEM_ORDEMPRODUCAO.IOP_STATUS IS 'L - LIBERADA ; E - ANDAMENTO C- CANCELADA F- FINALIZADA';
COMMENT ON COLUMN APONTAMENTO_PROCESSO.APP_STATUS IS 'SITUACAO :  E  - ANDAMENTO , F -FINALIZAR ; P - PARADO ';
COMMENT ON COLUMN ORDEMPRODUCAO.OPR_STATUS IS ' P - PENDENTE ; L - LIBERADOS; F - FECHADAS CONCLUIDAS; C - CANCELADAS';
COMMENT ON COLUMN ORCAMENTO_PROD.ORC_SITUACAO IS 'P= PENDENTE; E = EM ANDAMENTO; A = APROVADO ; R = RECUSADO ; C= CANCELADO ; V - EM REVISAO';
COMMENT ON COLUMN CARGA.DATA_CARGA IS 'DATA REALIZACAO DO PCP'  ;


CREATE TABLE SIMULACAO_ITORC (
    SPR_CODIGO INTEGER NOT NULL,
    OIP_CODIGO INTEGER NOT NULL,
    SET_CODIGO INTEGER NOT NULL,
    SPR_HORASTRAB NUMERIC(18,4),
    SPR_PESO NUMERIC(15,4),
    SPR_VALORTOTAL INTEGER,
    SPR_DATASIMULACAO TIMESTAMP);

ALTER TABLE SIMULACAO_ITORC
ADD CONSTRAINT PK_SIMULACAO_ITORC
PRIMARY KEY (SPR_CODIGO);

COMMENT ON COLUMN SIMULACAO_ITORC.SPR_CODIGO IS 'CODIGO IDENTIFICADOR';
COMMENT ON COLUMN SIMULACAO_ITORC.OIP_CODIGO IS 'CHAVE DO ITEM (ORCIT_PROD)';
COMMENT ON COLUMN SIMULACAO_ITORC.SET_CODIGO IS 'CHAVE REFERENCIA DO SETOR';
COMMENT ON COLUMN SIMULACAO_ITORC.SPR_HORASTRAB IS 'HORAS TRABALHADAS';
COMMENT ON COLUMN SIMULACAO_ITORC.SPR_PESO IS 'PESO DO MATERIAL';
COMMENT ON COLUMN SIMULACAO_ITORC.SPR_VALORTOTAL IS 'PV * HORAS/ PESO EM GRAMAS';
COMMENT ON COLUMN SIMULACAO_ITORC.SPR_DATASIMULACAO IS 'DATA QUE FOI FEITA A SIMULACAO';

CREATE SEQUENCE GEN_SIMULACAO_ITORC;

SET TERM ^ ;

create trigger simulacao_itorc_bi for simulacao_itorc
active before insert position 0
as
begin
  if (new.spr_codigo is null) then
    new.spr_codigo = gen_id(gen_simulacao_itorc,1);
end^

SET TERM ; ^

COMMENT ON TABLE SIMULACAO_ITORC IS 'SIMULACAO DE PRECO DO ITEM DO ORCAMENTO DE PRODUCAO';


ALTER TABLE ORCIT_PROD ADD IOP_CUSTO NUMERIC(15,8);

COMMENT ON COLUMN ORCIT_PROD.IOP_CUSTO IS 'CUSTO  (PRECO SUGERIDO)';

ALTER TABLE ORCIT_PROD ADD IOP_LUCRO NUMERIC(15,8);
COMMENT ON COLUMN ORCIT_PROD.IOP_LUCRO IS '% lucro';

delete from APONTAMENTO_PROCESSO;
delete from carga;
delete from processos_producao;
delete from item_ordemproducao;
delete from ordemproducao;

COMMIT;
