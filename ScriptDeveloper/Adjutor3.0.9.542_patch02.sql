UPDATE  VERSAOSISTEMA 
SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.542 patch 2',
       VERSAOSISTEMA.DATA   = '13.03.2020',
	    VERSAO = '3.0.9.542'
 where VERSAOSISTEMA.CODIGO = 1;

commit work; 

ALTER TABLE FAT_PC01 ADD FPC_ENVIADO_CARTA VARCHAR(1) ;
COMMENT ON COLUMN FAT_PC01.FPC_ENVIADO_CARTA IS 'ENVIADO CARTA COBRANCA DO TITULO VENCIDO';

CREATE INDEX KARDEX_IDX3 ON KARDEX (PRD_CODIGO,amx_codigo);

CREATE TABLE SPED_K280 (
    KSP_CODIGO  INTEGER NOT NULL,
    EMP_CODIGO  VARCHAR(3),
    ANO         INTEGER,
    MES         INTEGER,
    REF_ANO     INTEGER,
    REF_MES     INTEGER,
    QTDE_DIF    NUMERIC(18,5),
    QTDE_DECLA  NUMERIC(18,5),
    PRD_CODIGO  VARCHAR(5)
);

ALTER TABLE SPED_K280 ADD CONSTRAINT PKSPED_K280 PRIMARY KEY (KSP_CODIGO);
COMMENT ON TABLE SPED_K280 IS 'sped k280';
COMMENT ON COLUMN SPED_K280.QTDE_DIF IS 'QUANTIDADE DE CORRECAO';



CREATE SEQUENCE GEN_SPED_K280;

SET TERM ^ ;

create trigger sped_k280_bi for sped_k280
active before insert position 0
as
begin
  if (new.ksp_codigo is null) then
    new.ksp_codigo = gen_id(gen_sped_k280,1);
end
^

SET TERM ; ^
 
SET TERM ^ ;

create or alter procedure SUMARIZACAO_FORNECEDOR (
    EMP_CODIGO varchar(3),
    DATA_INICIO date,
    DATA_FIM date)
returns (
    CODIGO varchar(18),
    VALOR decimal(18,4),
    FORNECEDOR varchar(70),
    CONTA integer,
    RANQ integer,
    ACUMULADO decimal(18,4),
    SHAREMARKETINDIVIDUAL decimal(18,4),
    PERC_ACUMULADO decimal(18,4))
as
declare variable N integer;
declare variable VALORTOTAL decimal(18,4);
begin
   n = 0;
   acumulado = 0;
   ranq = 0 ;
   perc_acumulado = 0 ;
    if (:EMP_CODIGO = '') then
    EMP_CODIGO = '999';/* MULTIEMPRESA */

    

   select SUM(ENF_TOT_NOTA) AS valor
   from ENF0001 EF
   INNER JOIN FOR0000 fN ON (FN.FOR_CODIGO = EF.FOR_CODIGO)
   WHERE ENF_EMISSAO  BETWEEN :DATA_INICIO AND :DATA_FIM
    AND ENF_TOT_NOTA > 0
    AND ENF_CANCELADA IS NULL AND  ENF_INDUSTRIALIZACAO  = 'N'
    AND (EF.EMP_CODIGO = :EMP_CODIGO or :EMP_CODIGO = '999')
    INTO :valortotal ;


   FOR 
    SELECT EF.FOR_CODIGO AS codigo,SUM(ENF_TOT_NOTA) AS valor,count(*) AS conta, FOR_RAZAO AS fornecedor
    FROM ENF0001 EF
    INNER JOIN FOR0000 fN ON (FN.FOR_CODIGO = EF.FOR_CODIGO)
    WHERE ENF_EMISSAO  BETWEEN :DATA_INICIO AND :DATA_FIM
    AND ENF_TOT_NOTA > 0
    AND ENF_CANCELADA IS NULL AND  ENF_INDUSTRIALIZACAO  = 'N'
    AND (EF.EMP_CODIGO = :EMP_CODIGO or :EMP_CODIGO = '999')
    GROUP BY EF.FOR_CODIGO, FN.FOR_RAZAO
    order by 2 desc
    
       into :codigo,:valor,:conta, :fornecedor
   do
     begin
       n = n +1;
       ranq = n;
       acumulado = acumulado + valor;
       ShareMarketIndividual = (valor/ valortotal)*100;
       perc_acumulado = (acumulado/ valortotal)*100;
       suspend;
     end

end^

SET TERM ; ^


 
SET TERM ^ ;
execute block as
  declare CLI_CODIGO VARCHAR (5);
  DECLARE CLI_DTULTCOM timestamp ;
  DECLARE CLI_VL_ULTCOMP NUMERIC (18,5);
BEGIN
     
    FOR
    SELECT CLI_CODIGO FROM CLI0000
    INTO :CLI_CODIGO
    DO 
    BEGIN
        SELECT FIRST 1 NF_EMISSAO, NF_TOT_NOTA FROM NF0001 NF1
        WHERE NF_EMISSAO = (SELECT MAX(NF.NF_EMISSAO) FROM NF0001 NF WHERE NF.CLI_CODIGO = :CLI_CODIGO AND NF_CANCELADA = 'N' )
        AND NF1.CLI_CODIGO = :CLI_CODIGO AND NF1.NF_CANCELADA = 'N' 
        ORDER BY NF_REGISTRO DESC    
        INTO :CLI_DTULTCOM, :CLI_VL_ULTCOMP;

    
        UPDATE CLI0000 CL
        SET CLI_DTULTCOM  = :CLI_DTULTCOM        
        , CLI_VL_ULTCOMP =  :CLI_VL_ULTCOMP
        WHERE CLI_CODIGO = :CLI_CODIGO;
                
    END
end    
^
SET TERM ; ^
commit work;
