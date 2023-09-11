
UPDATE  VERSAOSISTEMA 
SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.537 patch 1',
       VERSAOSISTEMA.DATA   = '03.10.2019',
	    VERSAO = '3.0.9.537'
 where VERSAOSISTEMA.CODIGO = 1;

COMMIT WORK;

COMMENT ON COLUMN PRMT0001.PMT_ATUALIZAR_CLIENTE IS 'ATUALIZAR PRAZO/fORMA DE PAGAMENTO NO CADASTRO DO CLIENTE PELO ULTIMO PRAZO DA VENDAS';


ALTER TABLE CLI0000 ADD CLI_SEMCOMISSAO VARCHAR(1);
COMMENT ON COLUMN CLI0000.CLI_SEMCOMISSAO IS 'NAO PERMITIR PAGTO DE COMISSAO AO VENDEDOR';

UPDATE CLI0000
SET CLI_SEMCOMISSAO = 'N';

commit work;

ALTER TABLE PRMT0001 ADD PMT_RETIRAR_ICMS_BASECOFINSPIS VARCHAR (1);
  COMMENT ON COLUMN PRMT0001.PMT_RETIRAR_ICMS_BASECOFINSPIS  IS 'RETIRAR ICMS DA BASE DE CALCULO DO PIS E COFINS DE ACORDO COM A SENTENCA STF'; 
  
 UPDATE PRMT0001 
 SET PMT_RETIRAR_ICMS_BASECOFINSPIS = 'N';
 
COMMIT WORK;

SET TERM ^ ;

CREATE OR ALTER trigger ocp_it01_bi0 for ocp_it01
active before insert position 0
AS
begin
  /* Trigger text */
  IF (NEW.oci_registro IS NULL) THEN  NEW.oci_registro = GEN_ID(gen_ocp_it01,1);
  new.OCI_SITUACAO = 'P'   ;

end
^
SET TERM ; ^


SET TERM ^ ;

CREATE OR ALTER TRIGGER OCP_IT01_BU0 FOR OCP_IT01
ACTIVE BEFORE UPDATE POSITION 0
AS
begin
  if (NEW.oci_qtder = 0 ) then
    NEW.OCI_SITUACAO = 'P';
  else
  if (NEW.oci_qtdes = NEW.oci_qtder) then
    NEW.OCI_SITUACAO = 'C';
  else if (NEW.oci_qtdes > NEW.oci_qtder) then
    new.OCI_SITUACAO = 'F';


end
^


SET TERM ; ^



SET TERM ^ ;

CREATE OR ALTER TRIGGER OCP_IT01_AIUD1 FOR OCP_IT01
ACTIVE AFTER INSERT OR UPDATE OR DELETE POSITION 1
AS
declare variable I INTEGER;
declare variable SITUACAO varchar(1);
declare variable SIT_TEMP varchar(1);
begin
  I=0;
  FOR
  SELECT OCI_SITUACAO
  FROM OCP_IT01
  WHERE OCP_CODIGO = COALESCE(OLD.ocp_codigo, NEW.ocp_codigo)
  GROUP BY OCI_SITUACAO
  INTO :situacao
  DO
  BEGIN
    I = 1+I;
    if (:sit_temp = '') then
    BEGIN
        SIT_TEMP = SITUACAO ;

    END
    ELSE
    BEGIN
      if ((SITUACAO  = 'F') or (SIT_TEMP = 'F'))  then
        sit_temp = 'F';

    END
    
  END
  IF (I=0) then
    UPDATE ocp0000
    SET OCP_STATUS =  'P'
    WHERE OCP_CODIGO = COALESCE(OLD.ocp_codigo, NEW.ocp_codigo);
  else
  if (  I=1 ) then
    UPDATE ocp0000
    SET OCP_STATUS =  :situacao
    WHERE OCP_CODIGO = COALESCE(OLD.ocp_codigo, NEW.ocp_codigo );
  ELSE
    UPDATE ocp0000
    SET OCP_STATUS = 'F'
    WHERE OCP_CODIGO = COALESCE(OLD.ocp_codigo, NEW.ocp_codigo );

end
^

SET TERM ; ^


COMMENT ON COLUMN ocp0000.ocp_status IS 'SITUACAO : C - CONCLUIDO; P - PENDENTE; F - PARCIAL';
SET TERM ^ ;

create or alter procedure ATUALIZACAO_CUSTOS (
    EMP_CODIGO varchar(3))
as
declare variable PRD_REFER varchar(20);
declare variable ENTRADA numeric(18,5);
declare variable LIQUIDA numeric(18,5);
declare variable IPI numeric(18,5);
declare variable SUBSTRI numeric(18,5);
declare variable FRETE numeric(18,5);
declare variable DESPEACES numeric(18,5);
declare variable SEGURO numeric(18,5);
declare variable CUSTOCREDITO numeric(18,5);
declare variable CUSTO numeric(18,5);
declare variable QTDE numeric(18,4);
declare variable PMT_CALCULARPV integer; /* - tipo de cálculo do preço de venda */
declare variable PMT_NAO_AUTO_PVENDA varchar(1); /* não atualiza preço de venda */
declare variable PRD_PCUSTO numeric(18,5);
declare variable PRD_PMEDIO numeric(18,5);
declare variable PRD_CUSTOCOMIPI numeric(18,5);
declare variable COMP varchar(2);
begin

  SELECT PRODUTOS FROM SHAREDB
  INTO :comp;
  
  SELECT PMT_CALCULARPV, PMT_NAO_AUTO_PVENDA FROM PRMT0001 p
  WHERE p.EMP_CODIGO = :EMP_CODIGO
  into :PMT_CALCULARPV,:PMT_NAO_AUTO_PVENDA;
  
FOR 
    SELECT PRD_REFER FROM PRD0000 PR
    WHERE EXISTS 
            (SELECT 1  
            FROM ENF0001 EF
            INNER JOIN ENF_IT01 E1 ON (EF.ENF_NOTANUMBER = E1.ENF_IT_NOTANUMBER)
            INNER JOIN OPE0000 OP1 ON (E1.ENF_CFOP = OP1.OPE_NATUREZA AND OPE_TIPO_OPERACAO = 'C')
            WHERE PR.PRD_REFER = E1.PRD_REFER 

            AND EF.emp_codigo = :emp_codigo
           
            )
  --  and not exists
  --     (Select 1 from ftc_it01 ftc where ftc.prd_refer = pr.prd_refer and ftc.emp_codigo= :emp_codigo)
    INTO :PRD_REFER
    DO
    BEGIN
        SELECT FIRST 1  ( ENF_IT_VLPIS + ENF_IT_VLCOFINS + ENF_ICMS) as custocredito,
              (ENF_IT_VLIPI + e1.enf_vlsubst + ENF_IT_VALFRETE + e1.ENF_IT_VLDESP_ACES + e1.ENF_IT_VLSEGURO) AS ENTRADA,  
        ENF_IT_VLIPI AS IPI,
        e1.enf_vlsubst AS substri,
        ENF_IT_VALFRETE AS frete,
         e1.ENF_IT_VLDESP_ACES  AS DespeAces,
         e1.ENF_IT_VLSEGURO AS seguro,
         CAST(e1.enf_qtde as numeric(18,4)) as qtde,
         CAST(e1.enf_custo AS NUMERIC(18,5))  as custo
         fROM ENF0001 EF
        INNER JOIN ENF_IT01 E1 ON (EF.ENF_NOTANUMBER = E1.ENF_IT_NOTANUMBER)
        INNER JOIN OPE0000 OP1 ON (E1.ENF_CFOP = OP1.OPE_NATUREZA AND OPE_TIPO_OPERACAO = 'C')
        WHERE E1.PRD_REFER = :PRD_REFER 
        AND E1.EMP_CODIGO = :EMP_CODIGO
        AND e1.enf_qtde > 0
        ORDER BY EF.ENF_EMISSAO DESC 
        INTO :CustoCredito, :entrada, :ipi, :substri, :frete, :despeaces, :seguro, :qtde, :custo;
         if (:seguro > 0) then
            seguro = CAST( (:Seguro / :qtde) AS  numeric(18,5));
         if (:despeaces > 0) then
            despeaces = CAST((:despeaces /:qtde) AS  numeric(18,5));
         if (:frete > 0 ) then
            frete = CAST((:frete/:qtde) AS  numeric(18,5));
         if (:substri > 0 ) then
            substri = CAST((:substri/:qtde) AS  numeric(18,5));
         if (:ipi > 0 ) then
            ipi = CAST((:ipi/:qtde) AS  numeric(18,5));
         if (:liquida > 0 )    then 
            liquida = CAST(:custo  AS  numeric(18,5)) ;
         else
            liquida = 0 ;         
            
         if (:entrada > 0) then
            entrada = CAST((:custo + (:entrada/:qtde)) AS  numeric(18,5));
         else
            entrada = CAST(:custo  AS  numeric(18,5));         
         if (:CustoCredito > 0) then
            CustoCredito = CAST((:custo - (:CustoCredito/:qtde)) AS  numeric(18,5));
        else 
            CustoCredito = CAST(:custo  AS  numeric(18,5));
            
         if (:comp = 'C') then
             EXECUTE STATEMENT 'UPDATE PRD0000     '||
                                 ' SET PRD_PCUSTO = '|| CAST(:liquida AS varchar(20)) ||
                                    ' , PRD_CUSTOCOMIPI = '|| CAST(:entrada AS varchar(20)) ||
                                    ' , PRD_CUSTOFRETE = '|| CAST(:frete AS VARCHAR(20))   ||
                                    ' , PRD_CUSTOIPI = '|| CAST(:ipi AS VARCHAR(20))       ||
                                    ' , PRD_CUSTOSUBTRIB = '|| CAST(:substri AS VARCHAR(20))||
                                    ' , PRD_CUSTOADCIONAL = ('||CAST(:DespeAces AS VARCHAR(20))|| '+'|| CAST(:Seguro AS varchar(20))||  ')' ||
                                    ' , PRD_CUSTO_CREDITO = '|| cast (:CustoCredito  AS VARCHAR(20))   ||
                                ' WHERE PRD_REFER = '||''''||CAST(:PRD_REFER AS VARCHAR(20) )||''''  ;
        else
              EXECUTE STATEMENT 'UPDATE PRD0000     '||
                                ' SET PRD_PCUSTO = '|| CAST(:liquida AS varchar(20)) ||
                                    ' , PRD_CUSTOCOMIPI = '|| CAST(:entrada AS varchar(20)) ||
                                    ' , PRD_CUSTOFRETE = '|| CAST(:frete AS VARCHAR(20))   ||
                                    ' , PRD_CUSTOIPI = '|| CAST(:ipi AS VARCHAR(20))       ||
                                    ' , PRD_CUSTOSUBTRIB = '|| CAST(:substri AS VARCHAR(20))||
                                    ' , PRD_CUSTOADCIONAL = ('||CAST(:DespeAces AS VARCHAR(20))|| '+'|| CAST(:Seguro AS varchar(20))||  ')' ||
                                    ' , PRD_CUSTO_CREDITO = '|| cast (:CustoCredito  AS VARCHAR(20))   ||
                                ' WHERE PRD_REFER = '||''''||CAST(:PRD_REFER AS VARCHAR(20) )||''''  ||
                                ' AND EMP_CODIGO = '|| :EMP_CODIGO;


      if (:PMT_NAO_AUTO_PVENDA = 'N'  ) then 
      begin
        if (:comp = 'C') then
        begin
            SELECT first 1 PRD_PCUSTO, PRD_CUSTOCOMIPI, PRD_PMEDIO FROM PRD0000
            WHERE PRD_REFER = :PRD_REFER
            INTO :PRD_PCUSTO, :PRD_CUSTOCOMIPI, :PRD_PMEDIO;

                --custo liquido
            if ((:PRD_PCUSTO > 0) AND (:PMT_CALCULARPV = 0)) then
    
               EXECUTE STATEMENT 
               'UPDATE PRD0000     '||           
               ' SET PRD_PVENDA =  '|| cast(:PRD_PCUSTO as varchar(20))|| ' * ((PRD_MARGEMVENDA/100) + 1) '||
                ' WHERE PRD_REFER = '||''''||CAST(:PRD_REFER AS VARCHAR(20) )||''''  ;            
    
            else
            if ((:PRD_CUSTOCOMIPI > 0 ) and (:PMT_CALCULARPV = 1)) then --custo de entrada
    
              EXECUTE STATEMENT 
               'UPDATE PRD0000     '||           
               ' SET PRD_PVENDA =  '|| cast(:PRD_CUSTOCOMIPI as varchar(20))|| ' * ((PRD_MARGEMVENDA/100) + 1) '||
               ' WHERE PRD_REFER = '||''''||CAST(:PRD_REFER AS VARCHAR(20) )||''''  ;
            else   
            if ((:PRD_PMEDIO > 0 ) and (:PMT_CALCULARPV = 2)) then --custo de médio
    
              EXECUTE STATEMENT 
               'UPDATE PRD0000     '||           
               ' SET PRD_PVENDA =  '|| cast(:PRD_PMEDIO as varchar(20))|| ' * ((PRD_MARGEMVENDA/100) + 1) '||
               ' WHERE PRD_REFER = '||''''||CAST(:PRD_REFER AS VARCHAR(20) )||''''  ;               
        end
        Else    
        begin
            SELECT PRD_PCUSTO, PRD_CUSTOCOMIPI, PRD_PMEDIO FROM PRD0000 p
            WHERE PRD_REFER = :PRD_REFER
            AND p.EMP_CODIGO = :EMP_CODIGO
            INTO :PRD_PCUSTO, :PRD_CUSTOCOMIPI, :PRD_PMEDIO;
            
            --custo liquido
            if ((:PRD_PCUSTO > 0) AND (:PMT_CALCULARPV = 0)) then
    
               EXECUTE STATEMENT 
               'UPDATE PRD0000     '||           
               ' SET PRD_PVENDA =  '|| cast(:PRD_PCUSTO as varchar(20))|| ' * ((PRD_MARGEMVENDA/100) + 1) '||
                ' WHERE PRD_REFER = '||''''||CAST(:PRD_REFER AS VARCHAR(20) )||''''  ||
               ' AND EMP_CODIGO = ' ||:EMP_CODIGO;            
    
            else
            if ((:PRD_CUSTOCOMIPI > 0 ) and (:PMT_CALCULARPV = 1)) then --custo de entrada
    
              EXECUTE STATEMENT 
               'UPDATE PRD0000     '||           
               ' SET PRD_PVENDA =  '|| cast(:PRD_CUSTOCOMIPI as varchar(20))|| ' * ((PRD_MARGEMVENDA/100) + 1) '||
               ' WHERE PRD_REFER = '||''''||CAST(:PRD_REFER AS VARCHAR(20) )||''''  ||
               ' AND EMP_CODIGO = ' ||:EMP_CODIGO;
            else   
            if ((:PRD_PMEDIO > 0 ) and (:PMT_CALCULARPV = 2)) then --custo de médio
    
              EXECUTE STATEMENT 
               'UPDATE PRD0000     '||           
               ' SET PRD_PVENDA =  '|| cast(:PRD_PMEDIO as varchar(20))|| ' * ((PRD_MARGEMVENDA/100) + 1) '||
               ' WHERE PRD_REFER = '||''''||CAST(:PRD_REFER AS VARCHAR(20) )||''''   ||
               ' AND EMP_CODIGO = ' ||:EMP_CODIGO;               


            
        end
      end    
   END

end^

SET TERM ; ^



