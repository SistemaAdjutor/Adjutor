
UPDATE  VERSAOSISTEMA 
SET    VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.522',
       VERSAOSISTEMA.DATA   = '11.09.2018',
       VERSAO = '3.0.9.522'
where VERSAOSISTEMA.CODIGO = 1;
 
 CREATE TABLE ManifestacaoNFE
 ( MFE_REGISTRO INTEGER NOT NULL,
 MFE_DATA_REGISTRO TIMESTAMP,
 MFE_NSU VARCHAR(15),
 MFE_CHAVE VARCHAR(44),
 MFE_DataEmissao TIMESTAMP,
 MFE_NOMEEMPRESA VARCHAR(100),
 MFE_IE VARCHAR(18),
 MFE_cnpjcpf VARCHAR(18),
 MFE_PROTOCOLO VARCHAR(15),
 MFE_VLNF NUMERIC(18,5),
 MFE_DataRecebimento TIMESTAMP,
 MFE_SitNFE VARCHAR (15),
 MFE_STATUS INTEGER,
 MFE_TIPONF VARCHAR(7)
 );
comment ON TABLE MANIFESTACAONFE IS 'MANIFESTACAO DO DESTINATARIO PARA NFE';
COMMENT ON COLUMN MANIFESTACAONFE.MFE_REGISTRO IS 'CHAVE DO MANIFESTO DA NFE';
COMMENT ON COLUMN MANIFESTACAONFE.MFE_DATA_REGISTRO IS 'DATA DO REGISTRO DO MANIFESTO';
COMMENT ON COLUMN MANIFESTACAONFE.MFE_NSU IS 'NUMERO IDENTIFICADOR DA RECEITA SEFAZ/ ATUALIZADO QUANDO SE FAZ UM EVENTO';
COMMENT ON COLUMN MANIFESTACAONFE.MFE_CHAVE IS 'CHAVE DA NFE';
COMMENT ON COLUMN MANIFESTACAONFE.MFE_DATAEMISSAO IS 'DATA DE EMISSAO DA NFE';
COMMENT ON COLUMN MANIFESTACAONFE.MFE_NOMEEMPRESA IS 'NOME DA EMPRESA QUE EMITIU A NFE';
COMMENT ON COLUMN MANIFESTACAONFE.MFE_IE IS 'INSCRICAO ESTADUAL DA EMPRESA EMITENTE DA NFE';
COMMENT ON COLUMN MANIFESTACAONFE.MFE_CNPJCPF IS 'CNPJ DA EMPRESA EMITENTE DA NFE';
COMMENT ON COLUMN MANIFESTACAONFE.MFE_PROTOCOLO IS 'PROTOCOLO DA NFE';
COMMENT ON COLUMN MANIFESTACAONFE.MFE_VLNF IS 'VALOR DA NFE';
COMMENT ON COLUMN MANIFESTACAONFE.MFE_DATARECEBIMENTO IS 'DATA DE RECEBIMENTO DA NFE';
COMMENT ON COLUMN MANIFESTACAONFE.MFE_SITNFE IS 'SITUACAO DA NFE : Autorizada, Denegada ou Cancelada ';
COMMENT ON COLUMN MANIFESTACAONFE.MFE_STATUS IS 'STATUS : 0 - sem manifesto, 1 - confirmada, 2 - desconhecimento, 3 - operacao nao realizada, 4 cinencia da operacao';
comment ON COLUMN MANIFESTACAONFE.MFE_TIPONF IS 'TIPO : ENTRADA , SAIDA';

CREATE SEQUENCE GEN_ManifestacaoNFE;

CREATE TABLE MNFE_HISTORICO
(MNH_REGISTRO INTEGER NOT NULL,
MNH_DATA_REGISTRO TIMESTAMP,
MFE_REGISTRO INTEGER,
MNH_STATUS INTEGER,
MNH_MENSAGEM VARCHAR(255),
MNH_XML BLOB SUB_TYPE 0);

COMMENT ON TABLE MNFE_HISTORICO IS 'HISTORICO DOS EVENTOS DE MANIFESTACAO DA NFE PELO DESTINATARIO';
COMMENT ON COLUMN MNFE_HISTORICO.MNH_STATUS IS 'DEFINIDO PELA SEFAZ, SENDO 138 DOCUMENTO LOCALIZADO E 128 LOTE DE EVENTO PROCESSADO ';
COMMENT ON COLUMN MNFE_HISTORICO.MNH_MENSAGEM IS 'MENSAGEM DE ERRO DO EVENTO OU DOWNLOAD XML';
COMMENT ON COLUMN MNFE_HISTORICO.MNH_XML IS 'XML DO EVENTO OU DA NFE (QUANDO FOR MSG DOWNLOAD XML)';

CREATE SEQUENCE GEN_MNFE_HISTORICO;

CREATE SEQUENCE GEN_MNFE_LOTE;

--ajustar sequencia 
SET TERM ^ ;

EXECUTE BLOCK AS
declare variable cod varchar(10);
declare variable stmt varchar(150);
BEGIN

    cod = (select max(PAG_REGISTRO) from PAG_PC01);
    stmt = 'ALTER SEQUENCE GEN_PAG_PC01 RESTART WITH '||cod;
    execute statement stmt;
END^

SET TERM ; ^

SET TERM ^ ;
CREATE OR ALTER PROCEDURE PCD_KARDEX_SALDO (EMP_CODIGO VARCHAR(3), PRD_CODIGO VARCHAR(6), AMX_CODIGO VARCHAR(4))
RETURNS (
    AMX_CODIGO_RET VARCHAR(4),
    AMX_DESCRI_RET VARCHAR(100),
    AMX_SALDO_RET NUMERIC(18,4)
)
AS
declare variable LOCALIZADO varchar(1);
declare variable COMPARTILHADO varchar(1);
begin
  /* Procedure Text */
  /*verifica se foi passado o almoxarifado caso nao tenha listar todas*/
  if ((:amx_codigo = '') or (:amx_codigo is null)) then
    begin
        /*lista os almoxarifados cadastrados*/
        FOR
            SELECT
                t1.amx_codigo,
                t1.amx_descri
            from almox0000 T1
        where t1.AMX_CODIGO in (SELECT K.AMX_CODIGO FROM KARDEX K WHERE K.PRD_CODIGO = :PRD_CODIGO GROUP BY K.AMX_CODIGO)
        INTO :amx_codigo_ret, :amx_descri_ret DO
        BEGIN
            amx_saldo_ret = NULL;
            SELECT ESTOQUES FROM SHAREDB
            into :compartilhado;
            if (compartilhado = 'C') then 
            begin
                select SUM(T2.kas_saldo)
                from kardex_almox_saldo T2
                    where T2.amx_codigo = :amx_codigo_ret AND T2.prd_codigo = :prd_codigo 
                INTO :amx_saldo_ret;
            end
            else    
            begin
                /*verifica se o almoxarifado esta na tabela de saldos por almoxarifado (KARDEX_ALMOX_SALDO) */
               Select SUM(T2.kas_saldo)
                from kardex_almox_saldo T2
               where T2.amx_codigo = :amx_codigo_ret AND T2.prd_codigo = :prd_codigo AND T2.emp_codigo = :emp_codigo
                INTO :amx_saldo_ret;
            end
            /*se o saldo de retorno for null quer dizer que o almoxarifado nao esta cadastrado nos saldos
              neste caso ele adiciona com o saldo zero */
            if (amx_saldo_ret IS NULL) then
                begin
                    insert into kardex_almox_saldo (emp_codigo,amx_codigo,prd_codigo,kas_saldo,kas_data_hora)
                                                      values(:emp_codigo,:amx_codigo_ret,:prd_codigo,0,current_timestamp);
                    /*adiciona o saldo zero*/
                    amx_saldo_ret = 0;
                end
            suspend;
        END
    end
  else
    begin
        /*lista os almoxarifados cadastrados*/
        FOR
            SELECT
                t1.amx_codigo,
                t1.amx_descri
            from almox0000 T1
            where
            t1.amx_codigo = :amx_codigo
        INTO :amx_codigo_ret, :amx_descri_ret DO
        BEGIN
            amx_saldo_ret = NULL;
            SELECT ESTOQUES FROM SHAREDB
            into :compartilhado;
            if (compartilhado = 'C') then
            begin
                select SUM(T2.kas_saldo)
                from kardex_almox_saldo T2
                    where T2.amx_codigo = :amx_codigo_ret AND T2.prd_codigo = :prd_codigo 
                INTO :amx_saldo_ret;
            end
            else
            begin
                select SUM(T2.kas_saldo)
                from kardex_almox_saldo T2
                    where T2.amx_codigo = :amx_codigo_ret AND T2.prd_codigo = :prd_codigo AND T2.emp_codigo = :emp_codigo
                INTO :amx_saldo_ret;            
             end
            /*se o saldo de retorno for null quer dizer que o almoxarifado nao esta cadastrado nos saldos
              neste caso ele adiciona com o saldo zero */
            if (amx_saldo_ret = NULL ) then
                begin
                    insert into kardex_almox_saldo (emp_codigo,amx_codigo,prd_codigo,kas_saldo,kas_data_hora)
                                                      values(:emp_codigo,:amx_codigo_ret,:prd_codigo,0,current_timestamp);
                    /*adiciona o saldo zero*/
                    amx_saldo_ret = 0;
                end
            suspend;
        END
    end
end
^

SET TERM ; ^


SET TERM ^ ;

EXECUTE BLOCK AS
declare variable pro varchar(2);
declare variable stmt varchar(300);
DECLARE VARIABLE dig integer;
DECLARE VARIABLE emp_codigo varchar(3);
BEGIN
    SELECT produtos FROM SHAREDB INTO pro;
    IF  (:pro = 'C') THEN
    begin
      SELECT FIRST 1 PMT_QTDE_DEC_PED FROM PRMT0001 WHERE emp_codigo = '001' INTO dig ;     
      stmt = 'UPDATE PRD0000  '||
                ' SET    PRD_PVENDA =  round(PRD_PVENDA, '||cast(:dig AS varchar(1)) ||')' ||
             '    ,PRD_PVENDA2 = ROUND(PRD_PVENDA2,'||cast(:dig AS varchar(1)) ||')'||
             '    ,PRD_PVENDA3 = ROUND(PRD_PVENDA3,'||cast(:dig AS varchar(1)) ||')'||
             '    ,PRD_PVENDA4 = ROUND(PRD_PVENDA4,'||cast(:dig AS varchar(1)) ||')'||
             '    ,PRD_PVENDA5 = ROUND(PRD_PVENDA5,'||cast(:dig AS varchar(1)) ||')'||
             '    ,PRD_PVENDA6 = ROUND(PRD_PVENDA6,'||cast(:dig AS varchar(1)) ||')';
      execute statement stmt;
    END 
    ELSE
    BEGIN
      FOR SELECT emp_codigo, PMT_QTDE_DEC_PED FROM PRMT0001 
      INTO :emp_codigo, :dig do
      BEGIN
          stmt = 'UPDATE PRD0000  '||
                 ' SET PRD_PVENDA =  round(PRD_PVENDA, '||cast(:dig AS varchar(1)) ||')' ||
                 '    ,PRD_PVENDA2 = ROUND(PRD_PVENDA2,'||cast(:dig AS varchar(1)) ||')'||
                 '    ,PRD_PVENDA3 = ROUND(PRD_PVENDA3,'||cast(:dig AS varchar(1)) ||')'||
                 '    ,PRD_PVENDA4 = ROUND(PRD_PVENDA4,'||cast(:dig AS varchar(1)) ||')'||
                 '    ,PRD_PVENDA5 = ROUND(PRD_PVENDA5,'||cast(:dig AS varchar(1)) ||')'||
                 '    ,PRD_PVENDA6 = ROUND(PRD_PVENDA6,'||cast(:dig AS varchar(1)) ||')'||
                 ' where emp_codigo = ' || cast(emp_codigo as varchar(3));
          execute statement stmt;      
                  
      END
    END
END^

SET TERM ; ^    


