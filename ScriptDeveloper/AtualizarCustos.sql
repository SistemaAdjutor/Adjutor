SET TERM ^ ;

create or alter procedure ATUALIZACAO_CUSTOS (emp_codigo varchar(3))
as
declare variable PRD_REFER varchar(20) ;
declare variable entrada  NUMERIC(18,5);
declare variable ipi  NUMERIC(18,5);
declare variable substri  NUMERIC(18,5);
declare variable frete  NUMERIC(18,5);
declare variable DespeAces  NUMERIC(18,5);
declare variable Seguro  NUMERIC(18,5);
declare variable CustoCredito numeric(18,5);

declare variable pmt_calcularpv integer;
DECLARE VARIABLE PRD_PCUSTO NUMERIC(18,5);
declare variable PRD_CUSTOCOMIPI numeric(18,5);
declare variable comp varchar(2);
begin

     SELECT PRODUTOS FROM SHAREDB
     INTO :comp;

FOR 
    SELECT PRD_REFER FROM PRD0000 PR
    WHERE EXISTS 
            (SELECT 1  
            FROM ENF0001 EF
            INNER JOIN ENF_IT01 E1 ON (EF.ENF_NOTANUMBER = E1.ENF_IT_NOTANUMBER)
            WHERE PR.PRD_REFER = E1.PRD_REFER 
            AND EF.emp_codigo = :emp_codigo
            AND ef.ENF_INDUSTRIALIZACAO = 'N'
            )
  --  and not exists
  --     (Select 1 from ftc_it01 ftc where ftc.prd_refer = pr.prd_refer and ftc.emp_codigo= :emp_codigo)
    INTO :PRD_REFER
    DO
    BEGIN
        SELECT FIRST 1  e1.enf_custo - (( ENF_IT_VLPIS + ENF_IT_VLCOFINS + ENF_ICMS)/ CAST(e1.enf_qtde as numeric(18,4))),
        (e1.enf_custo + 
        ((ENF_IT_VLIPI + e1.enf_vlsubst + ENF_IT_VALFRETE + e1.ENF_IT_VLDESP_ACES + e1.ENF_IT_VLSEGURO)/ CAST(e1.enf_qtde as numeric(18,4)))) AS ENTRADA,
        ENF_IT_VLIPI/ CAST(e1.enf_qtde as numeric(18,4)) AS IPI,
        e1.enf_vlsubst/CAST(e1.enf_qtde as numeric(18,4)) AS substri,
        ENF_IT_VALFRETE/CAST(e1.enf_qtde as numeric(18,4)) AS frete,
         e1.ENF_IT_VLDESP_ACES /CAST(e1.enf_qtde as numeric(18,4)) AS DespeAces,
         e1.ENF_IT_VLSEGURO/CAST(e1.enf_qtde as numeric(18,4)) AS Seguro
         fROM ENF0001 EF
        INNER JOIN ENF_IT01 E1 ON (EF.ENF_NOTANUMBER = E1.ENF_IT_NOTANUMBER)
        WHERE E1.PRD_REFER = :PRD_REFER 
        AND E1.EMP_CODIGO = :EMP_CODIGO
        ORDER BY EF.ENF_EMISSAO DESC 
        INTO :CustoCredito, :entrada, :ipi, :substri, :frete, :DespeAces, :Seguro;
         if (:comp = 'C') then
             EXECUTE STATEMENT 'UPDATE PRD0000     '||
                                 ' SET PRD_CUSTOCOMIPI = '|| CAST(:entrada AS varchar(20)) ||
                                    ' , PRD_CUSTOFRETE = '|| CAST(:frete AS VARCHAR(20))   ||
                                    ' , PRD_CUSTOIPI = '|| CAST(:ipi AS VARCHAR(20))       ||
                                    ' , PRD_CUSTOSUBTRIB = '|| CAST(:substri AS VARCHAR(20))||
                                    ' , PRD_CUSTOADCIONAL = ('||CAST(:DespeAces AS VARCHAR(20))|| '+'|| CAST(:Seguro AS varchar(20))||  ')' ||
                                    ' , PRD_CUSTO_CREDITO = '|| cast (:CustoCredito  AS VARCHAR(20))   ||
                                ' WHERE PRD_REFER = '||:PRD_REFER  ;
        else
              EXECUTE STATEMENT 'UPDATE PRD0000     '||
                                 ' SET PRD_CUSTOCOMIPI = '|| CAST(:entrada AS varchar(20)) ||
                                    ' , PRD_CUSTOFRETE = '|| CAST(:frete AS VARCHAR(20))   ||
                                    ' , PRD_CUSTOIPI = '|| CAST(:ipi AS VARCHAR(20))       ||
                                    ' , PRD_CUSTOSUBTRIB = '|| CAST(:substri AS VARCHAR(20))||
                                    ' , PRD_CUSTOADCIONAL = ('||CAST(:DespeAces AS VARCHAR(20))|| '+'|| CAST(:Seguro AS varchar(20))||  ')' ||
                                    ' , PRD_CUSTO_CREDITO = '|| cast (:CustoCredito  AS VARCHAR(20))   ||
                                ' WHERE PRD_REFER = '||:PRD_REFER ||
                                ' EMP_CODIGO = '|| :EMP_CODIGO;

        SELECT PMT_CALCULARPV FROM PRMT0001 
        WHERE EMP_CODIGO = :EMP_CODIGO
        into :PMT_CALCULARPV;
        
        if (:comp = 'C') then
        begin
            SELECT first 1 PRD_PCUSTO, PRD_CUSTOCOMIPI FROM PRD0000
            WHERE PRD_REFER = :PRD_REFER
            INTO :PRD_PCUSTO, :PRD_CUSTOCOMIPI;

                --custo liquido
            if ((:PRD_PCUSTO > 0) AND (:PMT_CALCULARPV = 0)) then
    
               EXECUTE STATEMENT 
               'UPDATE PRD0000     '||           
               ' SET PRD_PVENDA =  '|| cast(:PRD_PCUSTO as varchar(20))|| ' * ((PRD_MARGEMVENDA/100) + 1) '||
                ' WHERE PRD_REFER = '||:PRD_REFER ;            
    
            else
            if ((:PRD_CUSTOCOMIPI > 0 ) and (:PMT_CALCULARPV = 1)) then --custo de entrada
    
              EXECUTE STATEMENT 
               'UPDATE PRD0000     '||           
               ' SET PRD_PVENDA =  '|| cast(:PRD_CUSTOCOMIPI as varchar(20))|| ' * ((PRD_MARGEMVENDA/100) + 1) '||
               ' WHERE PRD_REFER = '||:PRD_REFER ;
        end
        Else    
        begin
            SELECT PRD_PCUSTO, PRD_CUSTOCOMIPI FROM PRD0000
            WHERE PRD_REFER = :PRD_REFER
            AND EMP_CODIGO = :EMP_CODIGO
            INTO :PRD_PCUSTO, :PRD_CUSTOCOMIPI;
            
            --custo liquido
            if ((:PRD_PCUSTO > 0) AND (:PMT_CALCULARPV = 0)) then
    
               EXECUTE STATEMENT 
               'UPDATE PRD0000     '||           
               ' SET PRD_PVENDA =  '|| cast(:PRD_PCUSTO as varchar(20))|| ' * ((PRD_MARGEMVENDA/100) + 1) '||
                ' WHERE PRD_REFER = '||:PRD_REFER ||
               ' AND EMP_CODIGO = ' ||:EMP_CODIGO;            
    
            else
            if ((:PRD_CUSTOCOMIPI > 0 ) and (:PMT_CALCULARPV = 1)) then --custo de entrada
    
              EXECUTE STATEMENT 
               'UPDATE PRD0000     '||           
               ' SET PRD_PVENDA =  '|| cast(:PRD_CUSTOCOMIPI as varchar(20))|| ' * ((PRD_MARGEMVENDA/100) + 1) '||
               ' WHERE PRD_REFER = '||:PRD_REFER ||
               ' AND EMP_CODIGO = ' ||:EMP_CODIGO;


            
        end
   END

end
^

SET TERM ; ^

COMMENT ON PROCEDURE ATUALIZACAO_CUSTOS IS
'ATUALIZA OS CUSTO DE ENTRADA, FRETE, IPI, SUBS TRIBUTARIA, SEGURO E DESPESAS';

/* Following GRANT statetements are generated automatically */

GRANT SELECT ON PRD0000 TO PROCEDURE ATUALIZACAO_CUSTOS;
GRANT SELECT ON ENF0001 TO PROCEDURE ATUALIZACAO_CUSTOS;
GRANT SELECT ON ENF_IT01 TO PROCEDURE ATUALIZACAO_CUSTOS;

/* Existing privileges on this procedure */

GRANT EXECUTE ON PROCEDURE ATUALIZACAO_CUSTOS TO SYSDBA;

comment on procedure ATUALIZACAO_CUSTOS is 'ATUALIZA OS CUSTO DE ENTRADA, FRETE, IPI, SUBS TRIBUTARIA, SEGURO E DESPESAS';
execute procedure atualizacao_custos('001');