UPDATE  VERSAOSISTEMA 
SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.537',
       VERSAOSISTEMA.DATA   = '01.10.2019',
	    VERSAO = '3.0.9.537'
 where VERSAOSISTEMA.CODIGO = 1;

commit work;



SET TERM ^ ;

CREATE OR ALTER PROCEDURE ATUALIZACAO_CUSTOS (EMP_CODIGO VARCHAR(3))
AS
declare variable PRD_REFER varchar(20);
declare variable ENTRADA numeric(18,5);
declare variable IPI numeric(18,5);
declare variable SUBSTRI numeric(18,5);
declare variable FRETE numeric(18,5);
declare variable DESPEACES numeric(18,5);
declare variable SEGURO numeric(18,5);
declare variable CUSTOCREDITO numeric(18,5);
declare variable CUSTO numeric(18,5);
declare variable QTDE numeric(18,4);
declare variable PMT_CALCULARPV integer;  --- tipo de cálculo do preço de venda
declare variable PMT_NAO_AUTO_PVENDA varchar(1); --não atualiza preço de venda 
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
                                 ' SET PRD_CUSTOCOMIPI = '|| CAST(:entrada AS varchar(20)) ||
                                    ' , PRD_CUSTOFRETE = '|| CAST(:frete AS VARCHAR(20))   ||
                                    ' , PRD_CUSTOIPI = '|| CAST(:ipi AS VARCHAR(20))       ||
                                    ' , PRD_CUSTOSUBTRIB = '|| CAST(:substri AS VARCHAR(20))||
                                    ' , PRD_CUSTOADCIONAL = ('||CAST(:DespeAces AS VARCHAR(20))|| '+'|| CAST(:Seguro AS varchar(20))||  ')' ||
                                    ' , PRD_CUSTO_CREDITO = '|| cast (:CustoCredito  AS VARCHAR(20))   ||
                                ' WHERE PRD_REFER = '||''''||CAST(:PRD_REFER AS VARCHAR(20) )||''''  ;
        else
              EXECUTE STATEMENT 'UPDATE PRD0000     '||
                                 ' SET PRD_CUSTOCOMIPI = '|| CAST(:entrada AS varchar(20)) ||
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



CREATE INDEX KARDEX__IDX ON KARDEX_ALMOX_SALDO (AMX_CODIGO,EMP_CODIGO,PRD_CODIGO);