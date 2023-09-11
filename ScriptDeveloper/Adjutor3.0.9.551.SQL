UPDATE  VERSAOSISTEMA 
SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.551',
    VERSAOSISTEMA.DATA   = '02.12.2020',
	VERSAO = '3.0.9.551'
 where VERSAOSISTEMA.CODIGO = 1;
 
commit work;


CREATE TABLE ARTEFATO (
    ART_CODIGO INTEGER NOT NULL,
    ART_NOME VARCHAR(100));

COMMENT ON COLUMN ARTEFATO.ART_CODIGO IS 'CODIGO DO ARTEFATO';
COMMENT ON COLUMN ARTEFATO.ART_NOME IS 'NOME DO ARTEFATO';

CREATE SEQUENCE GEN_ARTEFATO;

ALTER TABLE ARTEFATO ADD CONSTRAINT PK_ARTEFATO PRIMARY KEY (ART_CODIGO);

SET TERM ^ ;

create trigger artefato_bi for artefato
active before insert position 0
as
begin
  if (new.art_codigo is null) then
    new.art_codigo = gen_id(gen_artefato,1);
end^

SET TERM ; ^

COMMENT ON TABLE ARTEFATO IS 'CADASTRO DO ARTEFATO';

CREATE TABLE ARAME (
    ARA_CODIGO INTEGER NOT NULL,
    NOME VARCHAR(100));

ALTER TABLE ARAME ADD CONSTRAINT PK_ARAME PRIMARY KEY (ARA_CODIGO);
CREATE SEQUENCE GEN_ARAME;

SET TERM ^ ;

create trigger arame_bi for arame
active before insert position 0
as
begin
  if (new.ara_codigo is null) then
    new.ara_codigo = gen_id(gen_arame,1);
end^

SET TERM ; ^

COMMENT ON TABLE ARAME IS 'CADASTRO DE SECAO DO ARAME';

CREATE TABLE CLASSIFICACAO_MOLA (
    CMO_CODIGO INTEGER NOT NULL,
    CMO_NOME varchar(100));

COMMENT ON COLUMN CLASSIFICACAO_MOLA.CMO_NOME IS 'CLASSIFICACAO DA MOLA';
CREATE SEQUENCE GEN_CLASSIFICACAO_MOLA;

SET TERM ^ ;

create trigger classificacao_mola_bi for classificacao_mola
active before insert position 0
as
begin
  if (new.cmo_codigo is null) then
    new.cmo_codigo = gen_id(gen_classificacao_mola,1);
end^

SET TERM ; ^

COMMENT ON TABLE CLASSIFICACAO_MOLA IS 'CADASTRO DA CLASSIFICACAO DA MOLA';

CREATE TABLE GANCHO (
    GAN_CODIGO INTEGER NOT NULL,
    GAN_NOME VARCHAR(100));

ALTER TABLE GANCHO ADD CONSTRAINT PK_GANCHO PRIMARY KEY (GAN_CODIGO);

COMMENT ON COLUMN GANCHO.GAN_CODIGO IS 'CODIGO DO GANCHO';
COMMENT ON COLUMN GANCHO.GAN_NOME IS 'TIPO DE GANCHO';

CREATE SEQUENCE GEN_GANCHO;

SET TERM ^ ;

create trigger gancho_bi for gancho
active before insert position 0
as
begin
  if (new.gan_codigo is null) then
    new.gan_codigo = gen_id(gen_gancho,1);
end^

SET TERM ; ^

COMMENT ON TABLE GANCHO IS 'CADASTRO DO TIPO GANCHO';

CREATE TABLE ACABAMENTO_SUPERFICIAL (
    ASU_CODIGO INTEGER NOT NULL,
    ASU_NOME VARCHAR(100));

ALTER TABLE ACABAMENTO_SUPERFICIAL ADD CONSTRAINT PK_ACABAMENTO_SUPERFICIAL PRIMARY KEY (ASU_CODIGO);

COMMENT ON COLUMN ACABAMENTO_SUPERFICIAL.ASU_NOME IS 'NOME DO ACABAMENTO SUPERFICIAL';
CREATE SEQUENCE GEN_ACABAMENTO_SUPERFICIAL;

SET TERM ^ ;

create trigger acabamento_superficial_bi for acabamento_superficial
active before insert position 0
as
begin
  if (new.asu_codigo is null) then
    new.asu_codigo = gen_id(gen_acabamento_superficial,1);
end^

SET TERM ; ^

COMMENT ON TABLE ACABAMENTO_SUPERFICIAL IS 'ACABAMENTO SUPERFICIAL';

CREATE TABLE ACABAMENTO_CORES (
    ACO_CODIGO INTEGER NOT NULL,
    ACO_NOME VARCHAR(100));

ALTER TABLE ACABAMENTO_CORES
ADD CONSTRAINT PK_ACABAMENTO_CORES
PRIMARY KEY (ACO_CODIGO);

COMMENT ON COLUMN ACABAMENTO_CORES.ACO_NOME IS 'CORES';

CREATE SEQUENCE GEN_ACABAMENTO_CORES;

SET TERM ^ ;

create trigger acabamento_cores_bi for acabamento_cores
active before insert position 0
as
begin
  if (new.aco_codigo is null) then
    new.aco_codigo = gen_id(gen_acabamento_cores,1);
end^

SET TERM ; ^




CREATE TABLE TRATAMENTO_SUPERFICIAL (
    TSU_CODIGO INTEGER NOT NULL,
    TSU_NOME VARCHAR(100));

ALTER TABLE TRATAMENTO_SUPERFICIAL
ADD CONSTRAINT PK_TRATAMENTO_SUPERFICIAL
PRIMARY KEY (TSU_CODIGO);

COMMENT ON COLUMN TRATAMENTO_SUPERFICIAL.TSU_NOME IS
'TRATAMENTO SUPERFICIAL';

CREATE SEQUENCE GEN_TRATAMENTO_SUPERFICIAL;

SET TERM ^ ;

create trigger tratamento_superficial_bi for tratamento_superficial
active before insert position 0
as
begin
  if (new.tsu_codigo is null) then
    new.tsu_codigo = gen_id(gen_tratamento_superficial,1);
end^

SET TERM ; ^



create table mola_materia (
    mmo_codigo integer not null,
	PRD_CODIGO varchar(5) not null,
    ART_CODIGO integer,
    ARA_CODIGO integer,
    CMO_CODIGO integer,
    GAN_CODIGO integer,
    ACO_CODIGO integer,
    ASU_CODIGO integer,
    tsu_codigo integer,
    mmo_tempo_producao integer,
    mmo_peso_especifico numeric(18,5),
    mmo_cisalhamento numeric(18,5),
    mmo_res_tracao numeric(18,5),
    mmo_tratamento_termico varchar(1),
    mmo_tempo_tempera integer, 
    mmo_temperatura_tempera numeric(18,2),
    mmo_tempo_revenimento integer, 
    mmo_temperatura_revenimento numeric(18,2),
    mmo_dureza_minima integer,
    mmo_dureza_maxima integer,
    mmo_tratamento_superficial varchar(1),
    mmo_diametro_arame numeric(18,5),
    mmo_tolerancia_dia_min numeric(18,2),
    mmo_tolerancia_dia_max numeric(18,2),
    mmo_diametro_interno numeric(18,2),
    mmo_tolerancia_di_min numeric(18,2),
    mmo_tolerancia_di_max numeric(18,2),
    mmo_diametro_medio numeric (18,5),
    mmo_tolerancia_dm_min numeric(18,5),
    mmo_tolerancia_dm_max numeric(18,5),
    mmo_diametro_externo numeric(18,5),
    mmo_tolerancia_de_min numeric(18,5),
    mmo_tolerancia_de_max numeric(18,5),
    mmo_diametro_externo_meio numeric(18,5),
    mmo_tolerancia_dem_min numeric(18,5),
    mmo_tolerancia_dem_max numeric(18,5),
    mmo_vao numeric(18,5),
    mmo_tolerancia_vao_min numeric(18,5),
    mmo_tolerancia_vao_max numeric(18,5),
    mmo_passo numeric(18,5),
    mmo_tolerancia_passo_min numeric(18,5),
    mmo_tolerancia_passo_max numeric(18,5),
    mmo_com_livre numeric(18,5),
    mmo_tolerancia_livre_min numeric(18,5),
    mmo_tolerancia_livre_max numeric(18,5),
    mmo_com_solido numeric (18,5),
    mmo_tolerancia_solido_min numeric(18,5),
    mmo_tolerancia_solido_max numeric(18,5),    
    mmo_espirais_uteis numeric(18,5),
    mmo_tolerancia_esputeis_min numeric (18,5),
    mmo_tolerancia_esputeis_max numeric (18,5),
    mmo_espiral_total numeric (18,5),
    mmo_tolerancia_espt_min numeric(18,5),
    mmo_tolerancia_espt_max numeric(18,5),
    mmo_desenvolvimento numeric(18,5),
    mmo_tolerancia_des_min numeric(18,5),
    mmo_tolerancia_des_max numeric(18,5),    
    mmo_retificado varchar(1),
    mmo_paralielismo integer,
    mmo_perpendicularimo numeric(18,5),
    mmo_sentido varchar(20),
    mmo_peso numeric(18,5),     
    mmo_observacao BLOB SUB_TYPE 0 SEGMENT SIZE 80,
    mmo_constante_espe numeric(18,5),
    mmo_tolerancia_const_min numeric(18,5),
    mmo_tolerancia_const_max numeric(18,5),    
    mmo_constante_calculada numeric(18,5),
     mmo_const_calc_min numeric(18,5),
    mmo_const_calc_max numeric(18,5),
    mmo_altural1 numeric(18,5),
    mmo_tolerancia_alt1_min numeric(18,5),
    mmo_tolerancia_alt1_max numeric(18,5),
    mmo_altural2 numeric(18,5),
    mmo_tolerancia_alt2_min numeric(18,5),
    mmo_tolerancia_alt2_max numeric(18,5),
    mmo_altural3 numeric(18,5),
    mmo_tolerancia_alt3_min numeric(18,5),
    mmo_tolerancia_alt3_max numeric(18,5),
    mmo_altural4 numeric(18,5),
    mmo_tolerancia_alt4_min numeric(18,5),
    mmo_tolerancia_alt4_max numeric(18,5),
    mmo_cursos1 numeric(18,5),
    mmo_tolerancia_curs1_min numeric(18,5),
    mmo_tolerancia_curs1_max numeric(18,5),
    mmo_cursos2 numeric(18,5),
    mmo_tolerancia_curs2_min numeric(18,5),
    mmo_tolerancia_curs2_max numeric(18,5),    
    mmo_cursos3 numeric(18,5),
    mmo_tolerancia_curs3_min numeric(18,5),
    mmo_tolerancia_curs3_max numeric(18,5),    
    mmo_cursos4 numeric(18,5),
    mmo_tolerancia_curs4_min numeric(18,5),
    mmo_tolerancia_curs4_max numeric(18,5),    
    mmo_cargap1 numeric(18,5),
    mmo_tolerancia_carga1_min numeric(18,5),
    mmo_tolerancia_carga1_max numeric(18,5),    
    mmo_cargap2 numeric(18,5),
    mmo_tolerancia_carga2_min numeric(18,5),
    mmo_tolerancia_carga2_max numeric(18,5),        
    mmo_cargap3 numeric(18,5),
    mmo_tolerancia_carga3_min numeric(18,5),
    mmo_tolerancia_carga3_max numeric(18,5),        
    mmo_cargap4 numeric(18,5),
    mmo_tolerancia_carga4_min numeric(18,5),
    mmo_tolerancia_carga4_max numeric(18,5),        
    mmo_tensao1 numeric(18,5),
    mmo_tolerancia_tensao1_min numeric(18,5),
    mmo_tolerancia_tensao1_max numeric(18,5),    
    mmo_tensao2 numeric(18,5),
    mmo_tolerancia_tensao2_min numeric(18,5),
    mmo_tolerancia_tensao2_max numeric(18,5),        
    mmo_tensao3 numeric(18,5),
    mmo_tolerancia_tensao3_min numeric(18,5),
    mmo_tolerancia_tensao3_max numeric(18,5),        
    mmo_tensao4 numeric(18,5),
    mmo_tolerancia_tensao4_min numeric(18,5),
    mmo_tolerancia_tensao4_max numeric(18,5),        
    mmo_carga numeric(18,5),
    mmo_tolerancia_carga_min numeric(18,5),
    mmo_tolerancia_carga_max numeric(18,5),    
    mmo_tensao numeric(18,5),    
    mmo_tolerancia_ten_min numeric(18,5),    
    mmo_tolerancia_ten_max numeric(18,5),    
    mmo_maquina varchar(100),
    mmo_mandril varchar(100),
    mmo_cachimbo varchar(100),
    mmo_copiador varchar(100),
    mmo_gancho varchar(100),
    mmo_disco varchar(100),
    mmo_outros varchar(100),
    mmo_localizacao varchar(100),
    mmo_setor varchar(100),
    mmo_obsgerais BLOB SUB_TYPE 0 SEGMENT SIZE 80,
	MMO_TIPOEMBALAGEM varchar(100));	
	
	CREATE SEQUENCE GEN_MOLA_MATERIA_ID;
	SET TERM ^ ;

	create trigger mola_materia_bi for mola_materia
	active before insert position 0
	as
	begin
	  if (new.mmo_codigo is null) then
		new.mmo_codigo = gen_id(gen_mola_materia_id,1);
	end^

	SET TERM ; ^



comment on column mola_materia.mmo_carga is 'carga na altura solida';
comment on column mola_materia.mmo_tensao is 'tensao na altura solida';	
comment on column mola_materia.mmo_tempo_producao is 'tempo de producao em minutos';
comment on column mola_materia.mmo_peso_especifico is 'peso especifico em kgf por mm2';
comment on column mola_materia.mmo_cisalhamento is 'moduo de cisalhamento kgf por mm2';
comment on column mola_materia.mmo_res_tracao is 'resistencia tracao kgf por mm2';
comment on column mola_materia.mmo_tratamento_termico is 'tratamento termico SIM - S E N - NAO';
comment on column mola_materia.mmo_tempo_tempera is 'tempo da tempera em minutos';
comment on column mola_materia.mmo_temperatura_tempera is 'temperatura da tempera';
comment on column mola_materia.mmo_tempo_revenimento is 'tempo de revenimento';
comment on column mola_materia.mmo_temperatura_revenimento is 'temperatura do revenimento';
comment on column mola_materia.mmo_dureza_minima is 'dureza minima hrc';
comment on column mola_materia.mmo_dureza_maxima is 'dureza maxima hrc';
comment on column mola_materia.mmo_tratamento_superficial is 'tratamento superficial S - SIM N - NAO';
comment on column mola_materia.mmo_diametro_arame is 'diametro do arame';
comment on column mola_materia.mmo_tolerancia_dia_min is 'tolerancia do diametro do arame minimo';
comment on column mola_materia.mmo_tolerancia_dia_max is 'tolerancia do diametro do arame maximo';
comment on column mola_materia.mmo_tolerancia_di_min is 'tolerancia diametro interno minimo';
comment on column mola_materia.mmo_tolerancia_di_max is 'tolerancia diametro interno maximo';
comment on column mola_materia.mmo_diametro_medio is 'diametro medio';
comment on column mola_materia.mmo_tolerancia_dm_min is 'tolerancia diametro medio minimo';
comment on column mola_materia.mmo_tolerancia_dm_max is 'tolerancia diametro medio maximo';
comment on column mola_materia.mmo_diametro_externo is 'diametro externo';
comment on column mola_materia.mmo_tolerancia_de_min is 'tolerancia minima do diametro externo ';
comment on column mola_materia.mmo_tolerancia_de_max is 'tolerancia maxima do diametro externo';
comment on column mola_materia.mmo_diametro_externo_meio is 'diametro externo no meio';
comment on column mola_materia.mmo_tolerancia_dem_max is 'tolerancia maximo diametro externo no meio';
comment on column mola_materia.mmo_tolerancia_dem_min is 'tolerancia minimo diametro externo no meio';
comment on column mola_materia.mmo_vao is 'medida do vao';
comment on column mola_materia.mmo_tolerancia_vao_max is 'tolerancia maxima no vao';
comment on column mola_materia.mmo_tolerancia_vao_min is 'tolerancia minima no vao';
comment on column mola_materia.mmo_passo is 'passo ';
comment on column mola_materia.mmo_tolerancia_passo_max is 'tolerancia maxima do passo';	
comment on column mola_materia.mmo_tolerancia_passo_min is 'tolerancia minima do passo';
comment on column mola_materia.mmo_com_livre is 'comprimento livre';
comment on column mola_materia.mmo_tolerancia_livre_max is 'tolerancia maxima de comprimento livre ';
comment on column mola_materia.mmo_tolerancia_livre_min is 'tolerancia minima de comprimento livre';
comment on column mola_materia.mmo_com_solido is 'comprimento solido';
comment on column mola_materia.mmo_tolerancia_solido_max is 'tolerancia maxima do comprimento solido';
comment on column mola_materia.mmo_tolerancia_solido_min is 'tolerancia minima do comprimento solido';
comment on column mola_materia.mmo_espirais_uteis is 'numero de espirais  uteis';
comment on column mola_materia.mmo_tolerancia_esputeis_max is 'tolerancia maxima espirais uteis';
comment on column mola_materia.mmo_tolerancia_esputeis_min is 'tolerancia minima espirais uteis';
comment on column mola_materia.mmo_espiral_total is 'numero de espirais de total ';
comment on column mola_materia.mmo_tolerancia_espt_max is 'tolerancia espiral total maximo';
comment on column mola_materia.mmo_tolerancia_espt_min is 'tolerancia espiral total minimo';
comment on column mola_materia.mmo_desenvolvimento is 'desenvolvimento em mm';
comment on column mola_materia.mmo_tolerancia_des_max is 'tolerancia de desenvolvimento maximo';
comment on column mola_materia.mmo_tolerancia_des_min is 'tolerancia de desenvolvimento minimo';
comment on column mola_materia.mmo_retificado is 'retificado /esquadro SIM-NAO';
comment on column mola_materia.mmo_paralielismo is 'paralelismo maximo';
comment on column mola_materia.mmo_perpendicularimo is 'perpendicularismo maximo';
comment on column mola_materia.mmo_sentido is 'sentido de enrolamento : DIREITA-ESQUERDA';
comment on column mola_materia.mmo_peso is 'peso em kg';
comment on column mola_materia.mmo_observacao is 'observacao';

 create table tipo_mola (
	tim_codigo integer not null,
	pti_codigo varchar(3),
    mmo_tempo_producao varchar(1),
    mmo_peso_especifico varchar(1),
    mmo_cisalhamento varchar(1),
    mmo_res_tracao varchar(1),
    mmo_tratamento_termico varchar(1),
    mmo_tempo_tempera varchar(1), 
    mmo_temperatura_tempera varchar(1),
    mmo_tempo_revenimento varchar(1), 
    mmo_temperatura_revenimento varchar(1),
    mmo_dureza_minima varchar(1),
    mmo_dureza_maxima varchar(1),
    mmo_tratamento_superficial varchar(1),
    mmo_diametro_arame varchar(1),    
    mmo_diametro_interno varchar(1),    
    mmo_diametro_medio varchar(1),
    mmo_diametro_externo varchar(1),
    mmo_diametro_externo_meio varchar(1),
    mmo_vao varchar(1),
    mmo_passo varchar(1),
    mmo_com_livre varchar(1),
    mmo_com_solido varchar(1),
    mmo_espirais_uteis varchar(1),
    mmo_espiral_total varchar(1),
    mmo_desenvolvimento varchar(1),
    mmo_retificado varchar(1),
    mmo_paralielismo varchar(1),
    mmo_perpendicularimo varchar(1),
    mmo_sentido varchar(1),
    mmo_peso varchar(1),     
    mmo_observacao varchar(1),
    mmo_constante_espe varchar(1),
    mmo_constante_calculada varchar(1),
    mmo_altural1 varchar(1),
    mmo_altural2 varchar(1),
    mmo_altural3 varchar(1),
    mmo_altural4 varchar(1),
    mmo_cursos1 varchar(1),
    mmo_cursos2 varchar(1),
    mmo_cursos3 varchar(1),
    mmo_cursos4 varchar(1),
    mmo_cargap1 varchar(1),
    mmo_cargap2 varchar(1),
    mmo_cargap3 varchar(1),
    mmo_cargap4 varchar(1),
    mmo_tensao1 varchar(1),
    mmo_tensao2 varchar(1),
    mmo_tensao3 varchar(1),
    mmo_tensao4 varchar(1),
    mmo_carga varchar(1),
    mmo_tensao varchar(1),    
    mmo_maquina varchar(1),
    mmo_mandril varchar(1),
    mmo_cachimbo varchar(1),
    mmo_copiador varchar(1),
    mmo_gancho varchar(1),
    mmo_disco varchar(1),
    mmo_outros varchar(1),
	MMO_TIPOEMBALAGEM varchar(1),
    mmo_localizacao varchar(1),
    mmo_setor varchar(1),
    mmo_obsgerais varchar(1),
	ART_CODIGO varchar(1),
    ARA_CODIGO varchar(1),
    CMO_CODIGO varchar(1),
    GAN_CODIGO varchar(1),
    ACO_CODIGO varchar(1),
    ASU_CODIGO varchar(1),
    tsu_codigo varchar(1)
	
	);	
ALTER TABLE tipo_mola
ADD CONSTRAINT PK_tipo_mola PRIMARY KEY (tim_codigo);

	
	
CREATE SEQUENCE GEN_TIPO_MOLA;

SET TERM ^ ;

create trigger tipo_mola_bi for tipo_mola
active before insert position 0
as
begin
  if (new.tim_codigo is null) then
    new.tim_codigo = gen_id(GEN_TIPO_MOLA,1);
end^

SET TERM ; ^



ALTER TABLE MOLA_MATERIA ADD MMO_COMP_CORPO numeric(18,5);
COMMENT ON COLUMN MOLA_MATERIA.MMO_COMP_CORPO IS 'Comprimento do corpo';
ALTER TABLE MOLA_MATERIA ADD MMO_TOLERANCIA_COMP_CORPO_MAX  numeric(18,5);    
COMMENT ON COLUMN MOLA_MATERIA.MMO_TOLERANCIA_COMP_CORPO_MAX IS 'Tolerancia maxima Comprimento do corpo';
ALTER TABLE MOLA_MATERIA ADD MMO_TOLERANCIA_COMP_CORPO_MIN  numeric(18,5);    
COMMENT ON COLUMN MOLA_MATERIA.MMO_TOLERANCIA_COMP_CORPO_MIN IS 'Tolerancia minima Comprimento do corpo';

ALTER TABLE MOLA_MATERIA ADD MMO_ALT_GANCHO numeric(18,5);
COMMENT ON COLUMN MOLA_MATERIA.MMO_ALT_GANCHO IS 'Altura do gancho';
ALTER TABLE MOLA_MATERIA ADD MMO_TOLERANCIA_ALT_GANCHO_MAX  numeric(18,5);    
COMMENT ON COLUMN MOLA_MATERIA.MMO_TOLERANCIA_ALT_GANCHO_MAX IS 'Tolerancia maxima altura do gancho';
ALTER TABLE MOLA_MATERIA ADD MMO_TOLERANCIA_ALT_GANCHO_MIN  numeric(18,5);    
COMMENT ON COLUMN MOLA_MATERIA.MMO_TOLERANCIA_ALT_GANCHO_MIN IS 'Tolerancia minima altura do gancho';

ALTER TABLE MOLA_MATERIA ADD MMO_ABERT_GANCHO numeric(18,5);
COMMENT ON COLUMN MOLA_MATERIA.MMO_ABERT_GANCHO IS 'Abertura do gancho';
ALTER TABLE MOLA_MATERIA ADD MMO_TOLERANCIA_ABERT_GANCHO_MAX  numeric(18,5);    
COMMENT ON COLUMN MOLA_MATERIA.MMO_TOLERANCIA_ABERT_GANCHO_MAX IS 'Tolerancia maxima Abertura do gancho';
ALTER TABLE MOLA_MATERIA ADD MMO_TOLERANCIA_ABERT_GANCHO_MIN  numeric(18,5);    
COMMENT ON COLUMN MOLA_MATERIA.MMO_TOLERANCIA_ABERT_GANCHO_MIN IS 'Tolerancia minima Abertura do gancho';

ALTER TABLE MOLA_MATERIA ADD MMO_COMP_GANCHO numeric(18,5);
COMMENT ON COLUMN MOLA_MATERIA.MMO_COMP_GANCHO IS 'Comprimento total por fora do gancho';
ALTER TABLE MOLA_MATERIA ADD MMO_TOLERANCIA_COMP_GANCHO_MAX  numeric(18,5);    
COMMENT ON COLUMN MOLA_MATERIA.MMO_TOLERANCIA_COMP_GANCHO_MAX IS 'Tolerancia maxima Comprimento total por fora do gancho';
ALTER TABLE MOLA_MATERIA ADD MMO_TOLERANCIA_COMP_GANCHO_MIN  numeric(18,5);
COMMENT ON COLUMN MOLA_MATERIA.MMO_TOLERANCIA_COMP_GANCHO_MIN IS 'Tolerancia minima altura do gancho Comprimento total por fora do gancho';
