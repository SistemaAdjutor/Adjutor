UPDATE  VERSAOSISTEMA SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.504',
       VERSAOSISTEMA.DATA   = '13.03.2018'
 where VERSAOSISTEMA.CODIGO = 1;
 
commit work;

SET TERM ^ ;
CREATE OR ALTER PROCEDURE SUMARIZACAO_CLIENTE (EMP_CODIGO VARCHAR(3), DATA_INICIO DATE, DATA_FIM DATE, REGIME INTEGER)
RETURNS (
	CODIGO VARCHAR(18),
	VALOR DECIMAL,
	CLIENTE VARCHAR(100),
	CONTA INTEGER,
	RANQ INTEGER,
	ACUMULADO DECIMAL,
	SHAREMARKETINDIVIDUAL DECIMAL,
	PERC_ACUMULADO DECIMAL,
	MESESCICLO INTEGER
)
AS
declare variable n integer;
declare variable valortotal decimal(18,4);
begin
   n = 0;
   acumulado = 0;
   ranq = 0 ;
   perc_acumulado = 0 ;

 if (:REGIME = 0 ) then      /* competencia - EMISSÃO*/
      begin
      if (:EMP_CODIGO = '') then
           select SUM(NF_TOT_NOTA) AS valor
           from NF0001 NF
          JOIN CLI0000 T2 ON (T2.CLI_CODIGO = NF.CLI_CODIGO)
           WHERE NF_EMISSAO  BETWEEN :DATA_INICIO AND :DATA_FIM
            AND NF_TOT_NOTA > 0
            AND NF_CANCELADA <> 'S'
            AND NF_VENDA_FATURADA ='S'
            INTO :valortotal;
       else    /* tem empresa selecionada */
           select SUM(NF_TOT_NOTA) AS valor
           from NF0001 NF
           JOIN CLI0000 T2 ON (T2.CLI_CODIGO = NF.CLI_CODIGO)
           WHERE NF_EMISSAO  BETWEEN :DATA_INICIO AND :DATA_FIM
            AND NF_TOT_NOTA > 0
            AND NF_CANCELADA <> 'S'
            AND NF_VENDA_FATURADA ='S'
            AND NF.EMP_CODIGO = :EMP_CODIGO
            INTO :valortotal ;
    
       if (:EMP_CODIGO = '') then
       begin
           FOR 
            SELECT NF.CLI_CODIGO AS codigo,SUM(NF_TOT_NOTA) AS valor,count(*) AS conta, CLI_RAZAO AS cliente,
             DATEDIFF( MONTH, MIN(NF_EMISSAO),MAX(NF_EMISSAO))  as mesesCiclo
            FROM NF0001 NF
            JOIN CLI0000 T2 ON (T2.CLI_CODIGO = NF.CLI_CODIGO)
            WHERE NF_EMISSAO  BETWEEN :DATA_INICIO AND :DATA_FIM
            AND NF_TOT_NOTA > 0
            AND NF_CANCELADA <> 'S'
            AND NF_VENDA_FATURADA ='S'
            GROUP BY NF.CLI_CODIGO, T2.CLI_RAZAO
            order by 2 desc
            
               into :codigo,:valor,:conta, :cliente, :mesesCiclo
           do
             begin
               if (:mesesCiclo= 0) then mesesCiclo = 1 ;
               n = n +1;
               ranq = n;
               ShareMarketIndividual = (valor/ valortotal)*100;
               acumulado = acumulado + valor;
               perc_acumulado = (acumulado/ valortotal)*100;
               suspend;
             end
          end
        else /* tem empresa */
        begin
           FOR 
            SELECT NF.CLI_CODIGO AS codigo,SUM(NF_TOT_NOTA) AS valor,count(*) AS conta, CLI_RAZAO AS cliente,
             DATEDIFF( MONTH, MIN(NF_EMISSAO),MAX(NF_EMISSAO)) as mesesCiclo
            FROM NF0001 NF
            JOIN CLI0000 T2 ON (T2.CLI_CODIGO = NF.CLI_CODIGO)
            WHERE NF_EMISSAO  BETWEEN :DATA_INICIO AND :DATA_FIM
            AND NF_TOT_NOTA > 0
            AND NF_CANCELADA <> 'S'
            AND NF_VENDA_FATURADA ='S'
            AND NF.EMP_CODIGO =  :EMP_CODIGO
            GROUP BY NF.CLI_CODIGO, t2.CLI_RAZAO
            order by 2 desc
            
               into :codigo,:valor,:conta, :cliente , :mesesCiclo
           do
             begin
               if (:mesesCiclo= 0) then mesesCiclo = 1;
               n = n +1;
               ranq = n;
               ShareMarketIndividual = (valor/ valortotal)*100;
               acumulado = acumulado + valor;
                perc_acumulado = (acumulado/ valortotal)*100;
               suspend;
             end
        end
  end
  else if (:regime = 1) then  /*caixa - VENCIMENTO*/
  begin
   if (:EMP_CODIGO = '') then
        SELECT SUM(CASE WHEN (FPC_VLPAGO = 0) OR (FPC_VLPAGO IS NULL) THEN FPC_VLPARC ELSE FPC_VLPAGO END) AS VALOR
        FROM FAT_PC01 FT                                                              
        left join CLI0000 CL on (CL.CLI_CODIGO = fT.CLI_CODIGO)                       
        WHERE FPC_EXCLUSAO <> 'S'
        AND FPC_VENCTO BETWEEN :DATA_INICIO AND :DATA_FIM
        INTO :valortotal;
   else
        SELECT SUM(CASE WHEN (FPC_VLPAGO = 0) OR (FPC_VLPAGO IS NULL) THEN FPC_VLPARC ELSE FPC_VLPAGO END) AS VALOR
        FROM FAT_PC01 FT                                                              
        left join CLI0000 CL on (CL.CLI_CODIGO = fT.CLI_CODIGO)                       
        WHERE FPC_EXCLUSAO <> 'S'
        AND FT.EMP_CODIGO = :EMP_CODIGO
        AND FPC_VENCTO BETWEEN :DATA_INICIO AND :DATA_FIM
        INTO :valortotal;
    if (:EMP_CODIGO = '') then
           for
            SELECT cl.CLI_CODIGO, SUM(CASE WHEN (ft.FPC_VLPAGO = 0) OR (ft.FPC_VLPAGO IS NULL) THEN ft.FPC_VLPARC ELSE ft.FPC_VLPAGO END) AS VALOR,count(*) AS conta, CLI_RAZAO AS cliente,
                     DATEDIFF( MONTH, MIN(FPC_VENCTO),MAX(FPC_VENCTO))  as mesesCiclo
            FROM FAT_PC01 FT
            left join CLI0000 CL on (CL.CLI_CODIGO = fT.CLI_CODIGO)
            WHERE FPC_EXCLUSAO <> 'S'
            AND FPC_VENCTO BETWEEN :DATA_INICIO AND :DATA_FIM
            GROUP BY cl.CLI_CODIGO, cl.CLI_RAZAO
            order by 2 desc
            into :codigo,:valor,:conta, :cliente, :mesesCiclo
           do
             begin
               n = n +1;
               ranq = n;
               ShareMarketIndividual = (valor/ valortotal)*100;
               acumulado = acumulado + valor;
                perc_acumulado = (acumulado/ valortotal)*100;
               suspend;
             end
    else
         for
        SELECT cl.CLI_CODIGO, SUM(CASE WHEN (ft.FPC_VLPAGO = 0) OR (ft.FPC_VLPAGO IS NULL) THEN ft.FPC_VLPARC ELSE ft.FPC_VLPAGO END) AS VALOR,count(*) AS conta, CLI_RAZAO AS cliente,
                 DATEDIFF( MONTH, MIN(FPC_VENCTO),MAX(FPC_VENCTO))  as mesesCiclo
        FROM FAT_PC01 FT
        left join CLI0000 CL on (CL.CLI_CODIGO = fT.CLI_CODIGO)
        WHERE FPC_EXCLUSAO <> 'S'
        AND FT.EMP_CODIGO = :EMP_CODIGO
        AND FPC_VENCTO BETWEEN :DATA_INICIO AND :DATA_FIM
        GROUP BY cl.CLI_CODIGO, cl.CLI_RAZAO
        order by 2 desc
        into :codigo,:valor,:conta, :cliente, :mesesCiclo
       do
         begin
           n = n +1;
           ranq = n;
           ShareMarketIndividual = (valor/ valortotal)*100;
           acumulado = acumulado + valor;
            perc_acumulado = (acumulado/ valortotal)*100;
           suspend;
         end
  end    /* fim if caixa */
  else if (:regime = 2) then   /*REALIZADO - PAGAMENTO*/
  begin
   if (:EMP_CODIGO = '') then
        SELECT SUM(FPC_VLPAGO ) VALOR
        FROM FAT_PC01 FT                                                              
        left join CLI0000 CL on (CL.CLI_CODIGO = fT.CLI_CODIGO)                       
        WHERE FPC_EXCLUSAO <> 'S'
        AND FPC_PAGTO BETWEEN :DATA_INICIO AND :DATA_FIM
        INTO :valortotal;
   else
        SELECT SUM(FPC_VLPAGO) VALOR
        FROM FAT_PC01 FT                                                              
        left join CLI0000 CL on (CL.CLI_CODIGO = fT.CLI_CODIGO)                       
        WHERE FPC_EXCLUSAO <> 'S'
        AND FT.EMP_CODIGO = :EMP_CODIGO
        AND FPC_PAGTO BETWEEN :DATA_INICIO AND :DATA_FIM
        INTO :valortotal;
  if (:EMP_CODIGO = '') then
           for
            SELECT cl.CLI_CODIGO, SUM(COALESCE(ft.FPC_VLPAGO,ft.FPC_VLPARC )) VALOR,count(*) AS conta, CLI_RAZAO AS cliente,
                     DATEDIFF( MONTH, MIN(FPC_PAGTO),MAX(FPC_PAGTO))  as mesesCiclo
            FROM FAT_PC01 FT
            left join CLI0000 CL on (CL.CLI_CODIGO = fT.CLI_CODIGO)
            WHERE FPC_EXCLUSAO <> 'S'
            AND FPC_PAGTO BETWEEN :DATA_INICIO AND :DATA_FIM
            GROUP BY cl.CLI_CODIGO, cl.CLI_RAZAO
            order by 2 desc
            into :codigo,:valor,:conta, :cliente, :mesesCiclo
           do
             begin
               n = n +1;
               ranq = n;
               ShareMarketIndividual = (valor/ valortotal)*100;
               acumulado = acumulado + valor;
                perc_acumulado = (acumulado/ valortotal)*100;
               suspend;
             end
    else
         for
        SELECT cl.CLI_CODIGO, SUM(COALESCE(ft.FPC_VLPAGO,ft.FPC_VLPARC )) VALOR,count(*) AS conta, CLI_RAZAO AS cliente,
                 DATEDIFF( MONTH, MIN(FPC_PAGTO),MAX(FPC_PAGTO))  as mesesCiclo
        FROM FAT_PC01 FT
        left join CLI0000 CL on (CL.CLI_CODIGO = fT.CLI_CODIGO)
        WHERE FPC_EXCLUSAO <> 'S'
        AND FT.EMP_CODIGO = :EMP_CODIGO
        AND FPC_PAGTO BETWEEN :DATA_INICIO AND :DATA_FIM
        AND FT.EMP_CODIGO = :EMP_CODIGO
        GROUP BY cl.CLI_CODIGO, cl.CLI_RAZAO
        order by 2 desc
        into :codigo,:valor,:conta, :cliente, :mesesCiclo
       do
         begin
           n = n +1;
           ranq = n;
           ShareMarketIndividual = (valor/ valortotal)*100;
           acumulado = acumulado + valor;
            perc_acumulado = (acumulado/ valortotal)*100;
           suspend;
         end
  end
end
^
SET TERM ; ^

SET TERM ^ ;
CREATE OR ALTER PROCEDURE SUMARIZACAO_VENDEDOR (EMP_CODIGO VARCHAR(3), DATA_INICIO DATE, DATA_FIM DATE, REGIME INTEGER)
RETURNS (
	CODIGO VARCHAR(18),
	VALOR DECIMAL,
	VENDEDOR_RAZAO VARCHAR(40),
	VENDEDOR_NOME VARCHAR(35),
	CONTA INTEGER,
	RANQ INTEGER,
	ACUMULADO DECIMAL,
	PERC_ACUMULADO DECIMAL,
	SHAREMARKETINDIVIDUAL DECIMAL
)
AS
declare variable n integer;
declare variable valortotal decimal(18,4);
begin
   n = 0;
   acumulado = 0;
   ranq = 0 ;
   perc_acumulado = 0 ;
  if (:REGIME = 0 ) then      /* competencia - EMISSÃO*/
  begin
   /* calcula o total geral */
      if (:EMP_CODIGO = '') then
            SELECT SUM (T7.NF_TOT_NOTA) AS valor
            FROM NF0001 T7
            LEFT join REP0000 t3 on (t3.REP_CODIGO = t7.REP_CODIGO)
            WHERE T7.NF_VENDA_FATURADA = 'S'
            AND NF_EMISSAO BETWEEN :DATA_INICIO AND :DATA_FIM
            AND COALESCE(t7.NF_CANCELADA,'N') <> 'S'
            INTO :valortotal;
       else    /* tem empresa selecionada */
            SELECT SUM (T7.NF_TOT_NOTA ) AS valor
            FROM NF0001 T7 
            left join REP0000 t3 on (t3.REP_CODIGO = t7.REP_CODIGO)
            WHERE T7.NF_VENDA_FATURADA = 'S'
            AND NF_EMISSAO BETWEEN :DATA_INICIO AND :DATA_FIM
            AND  COALESCE(T7.NF_CANCELADA,'N') <> 'S'
            AND t7.EMP_CODIGO = :EMP_CODIGO
            INTO :valortotal ;
     /* calculo o total para cada vendedor */
    if (:EMP_CODIGO = '') then
   begin
       FOR 
        SELECT SUM (T7.NF_TOT_NOTA ) AS valor ,
        count(*) AS conta,  T3.REP_CODIGO , t3.REP_RAZAO as vendedor_razao,
        t3.rep_nome as vendedor_nome
        FROM NF0001 T7
        LEFT join REP0000 t3 on (t3.REP_CODIGO = t7.REP_CODIGO)
        WHERE T7.NF_VENDA_FATURADA = 'S'
        AND NF_EMISSAO BETWEEN :DATA_INICIO AND :DATA_FIM
        AND COALESCE(T7.NF_CANCELADA,'N') <> 'S'
       GROUP BY  T3.REP_CODIGO ,  t3.REP_RAZAO, t3.rep_nome
        order by 1 desc
        into :valor,:conta, :codigo, :vendedor_razao, :vendedor_nome
       do
         begin
           n = n +1;
           ranq = n;
           acumulado = acumulado + valor;
           ShareMarketIndividual = (valor/ valortotal)*100;
            perc_acumulado = (acumulado/ valortotal)*100;
           suspend;
         end
      end
    else /* tem empresa */
    begin
       FOR 
        SELECT SUM (T7.NF_TOT_NOTA) AS valor ,
        count(*) AS conta, T3.REP_CODIGO , t3.REP_RAZAO as vendedor_razao,
        t3.rep_nome as vendedor_nome
        FROM NF0001 T7
        LEFT join REP0000 t3 on (t3.REP_CODIGO = t7.REP_CODIGO)
        WHERE T7.NF_VENDA_FATURADA = 'S'
        AND NF_EMISSAO BETWEEN :DATA_INICIO AND :DATA_FIM
        AND COALESCE(T7.NF_CANCELADA,'N') <> 'S'
        AND t7.EMP_CODIGO =  :EMP_CODIGO
       GROUP BY  T3.REP_CODIGO ,  t3.REP_RAZAO, t3.rep_nome
       order by 1 desc
          into :valor,:conta, :codigo, :vendedor_razao, :vendedor_nome
       do
         begin
           n = n +1;
           ranq = n;
           acumulado = acumulado + valor;
           ShareMarketIndividual = (valor/ valortotal)*100;
            perc_acumulado = (acumulado/ valortotal)*100;
           suspend;
         end
    end /* fim do tem por empresa */
   end
   else if (:regime = 1) then  /*caixa - VENCIMENTO*/
   begin
         /* total geral do vendedor em caixa  */
       if (:EMP_CODIGO = '') then
            SELECT SUM(CASE WHEN (FPC_VLPAGO = 0) OR (FPC_VLPAGO IS NULL) THEN FPC_VLPARC ELSE FPC_VLPAGO END)  VALOR
            FROM FAT_PC01 F1                                                              
            left join REP0000 t3 on (t3.REP_CODIGO = f1.REP_CODIGO)                       
            WHERE FPC_EXCLUSAO <> 'S'
            AND FPC_VENCTO BETWEEN :DATA_INICIO AND :DATA_FIM
            INTO :valortotal;
       else
            SELECT SUM(CASE WHEN (FPC_VLPAGO = 0) OR (FPC_VLPAGO IS NULL) THEN FPC_VLPARC ELSE FPC_VLPAGO END)  VALOR
            FROM FAT_PC01 F1                                                              
            left join REP0000 t3 on (t3.REP_CODIGO = f1.REP_CODIGO)                       
            WHERE FPC_EXCLUSAO <> 'S'
            AND FPC_VENCTO BETWEEN :DATA_INICIO AND :DATA_FIM
            AND F1.EMP_CODIGO = :EMP_CODIGO
            INTO :valortotal;
         /* total por vendedor por caixa */
      if (:EMP_CODIGO = '') then
         for
           SELECT SUM(CASE WHEN (F1.FPC_VLPAGO = 0) OR (F1.FPC_VLPAGO IS NULL) THEN F1.FPC_VLPARC ELSE F1.FPC_VLPAGO END)  VALOR,
             count(*) AS conta,  T3.REP_CODIGO , t3.REP_RAZAO as vendedor_razao,
             t3.rep_nome as vendedor_nome
           FROM FAT_PC01 F1
           left join REP0000 t3 on (t3.REP_CODIGO = f1.REP_CODIGO)
           WHERE F1.FPC_EXCLUSAO <> 'S'
           AND FPC_VENCTO BETWEEN :DATA_INICIO AND :DATA_FIM
           GROUP BY  T3.REP_CODIGO ,  t3.REP_RAZAO, t3.rep_nome
            order by 1 desc
             into :valor, :conta, :codigo, :vendedor_razao, :vendedor_nome
           do
             begin
               n = n +1;
               ranq = n;
               acumulado = acumulado + valor;
               ShareMarketIndividual = (valor/ valortotal)*100;
                perc_acumulado = (acumulado/ valortotal)*100;
               suspend;
             end
      else
        for
         SELECT SUM(CASE WHEN (F1.FPC_VLPAGO = 0) OR (F1.FPC_VLPAGO IS NULL) THEN F1.FPC_VLPARC ELSE F1.FPC_VLPAGO END)  VALOR,
             count(*) AS conta,  T3.REP_CODIGO , t3.REP_RAZAO as vendedor_razao,
             t3.rep_nome as vendedor_nome
           FROM FAT_PC01 F1
           left join REP0000 t3 on (t3.REP_CODIGO = f1.REP_CODIGO)
           WHERE FPC_EXCLUSAO <> 'S'
           AND f1.EMP_CODIGO =  :EMP_CODIGO
           AND FPC_VENCTO BETWEEN :DATA_INICIO AND :DATA_FIM
           GROUP BY  T3.REP_CODIGO ,  t3.REP_RAZAO, t3.rep_nome           
           order by 1 desc
            into :valor,:conta, :codigo, :vendedor_razao, :vendedor_nome
           do
             begin
               n = n +1;
               ranq = n;
               acumulado = acumulado + valor;
               ShareMarketIndividual = (valor/ valortotal)*100;
                perc_acumulado = (acumulado/ valortotal)*100;
               suspend;
             end

   end  /* fim do vencimento (caixa) */
   else if (:regime = 2) then  /*REALIZADO - PAGAMENTO*/
   begin
       /* total geral do vendedor em caixa  */
       if (:EMP_CODIGO = '') then
            SELECT SUM(COALESCE(FPC_VLPAGO,FPC_VLPARC )) VALOR
            FROM FAT_PC01 F1                                                              
            left join REP0000 t3 on (t3.REP_CODIGO = f1.REP_CODIGO)                       
            WHERE FPC_EXCLUSAO <> 'S'
            AND FPC_PAGTO BETWEEN :DATA_INICIO AND :DATA_FIM
            INTO :valortotal;
       else
            SELECT SUM(COALESCE(FPC_VLPAGO,FPC_VLPARC )) VALOR
            FROM FAT_PC01 F1                                                              
            left join REP0000 t3 on (t3.REP_CODIGO = f1.REP_CODIGO)                       
            WHERE FPC_EXCLUSAO <> 'S'
            AND FPC_PAGTO BETWEEN :DATA_INICIO AND :DATA_FIM
            AND F1.EMP_CODIGO = :EMP_CODIGO
            INTO :valortotal;
         /* total por vendedor por caixa */
      if (:EMP_CODIGO = '') then
       for
           SELECT SUM(COALESCE(f1.FPC_VLPAGO,f1.FPC_VLPARC )) VALOR,
             count(*) AS conta,  T3.REP_CODIGO , t3.REP_RAZAO as vendedor_razao,
             t3.rep_nome as vendedor_nome
           FROM FAT_PC01 F1
           left join REP0000 t3 on (t3.REP_CODIGO = f1.REP_CODIGO)
           WHERE F1.FPC_EXCLUSAO <> 'S'
           AND FPC_PAGTO BETWEEN :DATA_INICIO AND :DATA_FIM
           GROUP BY  T3.REP_CODIGO ,  t3.REP_RAZAO, t3.rep_nome
            order by 1 desc
             into :valor,:conta, :codigo, :vendedor_razao, :vendedor_nome
           do
             begin
               n = n +1;
               ranq = n;
               acumulado = acumulado + valor;
               ShareMarketIndividual = (valor/ valortotal)*100;
                perc_acumulado = (acumulado/ valortotal)*100;
               suspend;
             end
      else
       for
         SELECT SUM(COALESCE(f1.FPC_VLPAGO,f1.FPC_VLPARC )) VALOR,
             count(*) AS conta,  T3.REP_CODIGO , t3.REP_RAZAO as vendedor_razao,
             t3.rep_nome as vendedor_nome
           FROM FAT_PC01 F1
           left join REP0000 t3 on (t3.REP_CODIGO = f1.REP_CODIGO)
           WHERE FPC_EXCLUSAO <> 'S'
           AND f1.EMP_CODIGO =  :EMP_CODIGO
           AND FPC_PAGTO BETWEEN :DATA_INICIO AND :DATA_FIM           
           GROUP BY  T3.REP_CODIGO ,  t3.REP_RAZAO, t3.rep_nome           
           order by 1 desc
            into :valor,:conta, :codigo, :vendedor_razao, :vendedor_nome
           do
             begin
               n = n +1;
               ranq = n;
               acumulado = acumulado + valor;
               ShareMarketIndividual = (valor/ valortotal)*100;
                perc_acumulado = (acumulado/ valortotal)*100;
               suspend;
             end
   
   end
end
^
SET TERM ; ^

ALTER TABLE ENF0001 ADD ENF_MODALIDADE VARCHAR(1);
COMMENT ON COLUMN ENF0001.ENF_MODALIDADE IS 'TIPO DE PAGAMENTO 0 - A VISTA, 1 - PRAZO, 2 - OUTROS, 9 - SEM PAGAMENTO';
