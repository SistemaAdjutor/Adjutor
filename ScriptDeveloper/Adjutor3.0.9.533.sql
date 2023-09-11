UPDATE  VERSAOSISTEMA 
SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.533',
       VERSAOSISTEMA.DATA   = '27.05.2019',
	    VERSAO = '3.0.9.533'
 where VERSAOSISTEMA.CODIGO = 1;

COMMIT WORK;

SET TERM ^ ;

create or alter procedure SUMARIZACAO_CLIENTE (
    EMP_CODIGO varchar(3),
    DATA_INICIO date,
    DATA_FIM date,
    REGIME integer)
returns (
    CODIGO varchar(18),
    VALOR numeric(12,4),
    CLIENTE varchar(100),
    CONTA integer,
    RANQ integer,
    ACUMULADO numeric(12,4),
    SHAREMARKETINDIVIDUAL numeric(12,4),
    PERC_ACUMULADO numeric(12,4),
    MESESCICLO integer,
    INDICEINADIMPLENCIA numeric(12,2),
    VALORPEND numeric(12,4))
as
declare variable N integer;
declare variable VALORTOTAL decimal(18,4);
begin
  N = 0;
  ACUMULADO = 0;
  RANQ = 0;
  PERC_ACUMULADO = 0;
  if (:EMP_CODIGO = '') then
    EMP_CODIGO = '999';/* MULTIEMPRESA */

  if (:REGIME = 0) then
  /* competencia - EMISSÃO*/
  begin
    select sum(NF_TOT_NOTA) as VALOR
    from NF0001 NF
    join CLI0000 T2 on (T2.CLI_CODIGO = NF.CLI_CODIGO)
    where NF_EMISSAO between :DATA_INICIO and :DATA_FIM and
          NF_TOT_NOTA > 0 and
          NF_CANCELADA <> 'S' and
          NF_VENDA_FATURADA = 'S' and
          (NF.EMP_CODIGO = :EMP_CODIGO or :EMP_CODIGO = '999')
    into :VALORTOTAL;

    for select NF.CLI_CODIGO as CODIGO, sum(NF_TOT_NOTA) as VALOR, count(*) as CONTA, CLI_RAZAO as CLIENTE,
               datediff(month, min(NF_EMISSAO), max(NF_EMISSAO)) as MESESCICLO
        from NF0001 NF
        join CLI0000 T2 on (T2.CLI_CODIGO = NF.CLI_CODIGO)
        where NF_EMISSAO between :DATA_INICIO and :DATA_FIM and
              NF_TOT_NOTA > 0 and
              NF_CANCELADA <> 'S' and
              NF_VENDA_FATURADA = 'S' and
              (NF.EMP_CODIGO = :EMP_CODIGO or :EMP_CODIGO = '999')
        group by NF.CLI_CODIGO, T2.CLI_RAZAO
        order by 2 desc

        into :CODIGO, :VALOR, :CONTA, :CLIENTE, :MESESCICLO
    do
    begin

      select coalesce(sum(PC.FPC_VLPARC), 0) VALORPEND
      from FAT0000 FT
      inner join FAT_PC01 PC on (FT.FAT_CODIGO = PC.FAT_CODIGO)
      where FPC_STATUS = 'Pendente' and
            FPC_EXCLUSAO = 'N' and
            FT.CLI_CODIGO = :CODIGO and
            FPC_VENCTO between :DATA_INICIO and :DATA_FIM and
            (FT.EMP_CODIGO = :EMP_CODIGO or :EMP_CODIGO = '999')
      into :VALORPEND;

      if (:VALOR > 0 and
          :VALORPEND > 0) then
        INDICEINADIMPLENCIA = VALORPEND / VALOR * 100;
      else
        INDICEINADIMPLENCIA = 0;

      if (:MESESCICLO = 0) then
        MESESCICLO = 1;
      N = N + 1;
      RANQ = N;
      SHAREMARKETINDIVIDUAL = (VALOR / VALORTOTAL) * 100;
      ACUMULADO = ACUMULADO + VALOR;
      PERC_ACUMULADO = (ACUMULADO / VALORTOTAL) * 100;
      suspend;
    end

  end
  else
  if (:REGIME = 1) then
  /*caixa - VENCIMENTO*/
  begin

    select sum(
           case
             when (FPC_VLPAGO = 0) or (FPC_VLPAGO is null) then FPC_VLPARC
             else FPC_VLPAGO
           end) as VALOR
    from FAT_PC01 FT
    left join CLI0000 CL on (CL.CLI_CODIGO = FT.CLI_CODIGO)
    where FPC_EXCLUSAO <> 'S' and
          (FT.EMP_CODIGO = :EMP_CODIGO or :EMP_CODIGO = '999') and
          FPC_VENCTO between :DATA_INICIO and :DATA_FIM
    into :VALORTOTAL;

    for select CL.CLI_CODIGO, sum(
               case
                 when (FT.FPC_VLPAGO = 0) or (FT.FPC_VLPAGO is null) then FT.FPC_VLPARC
                 else FT.FPC_VLPAGO
               end) as VALOR,
               count(*) as CONTA, CLI_RAZAO as CLIENTE,
               datediff(month, min(FPC_VENCTO), max(FPC_VENCTO)) as MESESCICLO
        from FAT_PC01 FT
        left join CLI0000 CL on (CL.CLI_CODIGO = FT.CLI_CODIGO)
        where FPC_EXCLUSAO <> 'S' and
              (FT.EMP_CODIGO = :EMP_CODIGO or :EMP_CODIGO = '999') and
              FPC_VENCTO between :DATA_INICIO and :DATA_FIM
        group by CL.CLI_CODIGO, CL.CLI_RAZAO
        order by 2 desc
        into :CODIGO, :VALOR, :CONTA, :CLIENTE, :MESESCICLO
    do
    begin
      select coalesce(sum(PC.FPC_VLPARC), 0) VALORPEND
      from FAT0000 FT
      inner join FAT_PC01 PC on (FT.FAT_CODIGO = PC.FAT_CODIGO)
      where FPC_STATUS = 'Pendente' and
            FPC_EXCLUSAO = 'N' and
            FT.CLI_CODIGO = :CODIGO and
            FPC_VENCTO between :DATA_INICIO and :DATA_FIM and
            (FT.EMP_CODIGO = :EMP_CODIGO or :EMP_CODIGO = '999')
      into :VALORPEND;
      if (:VALOR > 0 and
          :VALORPEND > 0) then
        INDICEINADIMPLENCIA = VALORPEND / VALOR * 100;
      else
        INDICEINADIMPLENCIA = 0;
      N = N + 1;
      RANQ = N;
      SHAREMARKETINDIVIDUAL = (VALOR / VALORTOTAL) * 100;
      ACUMULADO = ACUMULADO + VALOR;
      PERC_ACUMULADO = (ACUMULADO / VALORTOTAL) * 100;
      suspend;
    end
  end /* fim if caixa */
  else
  if (:REGIME = 2) then
  /*REALIZADO - PAGAMENTO*/
  begin

    select sum(FPC_VLPAGO) VALOR
    from FAT_PC01 FT
    left join CLI0000 CL on (CL.CLI_CODIGO = FT.CLI_CODIGO)
    where FPC_EXCLUSAO <> 'S' and
          (FT.EMP_CODIGO = :EMP_CODIGO or :EMP_CODIGO = '999') and
          FPC_PAGTO between :DATA_INICIO and :DATA_FIM
    into :VALORTOTAL;

    for select CL.CLI_CODIGO, sum(coalesce(FT.FPC_VLPAGO, FT.FPC_VLPARC)) VALOR, count(*) as CONTA,
               CLI_RAZAO as CLIENTE, datediff(month, min(FPC_PAGTO), max(FPC_PAGTO)) as MESESCICLO
        from FAT_PC01 FT
        left join CLI0000 CL on (CL.CLI_CODIGO = FT.CLI_CODIGO)
        where FPC_EXCLUSAO <> 'S' and
              (FT.EMP_CODIGO = :EMP_CODIGO or :EMP_CODIGO = '999') and
              FPC_PAGTO between :DATA_INICIO and :DATA_FIM
        group by CL.CLI_CODIGO, CL.CLI_RAZAO
        order by 2 desc
        into :CODIGO, :VALOR, :CONTA, :CLIENTE, :MESESCICLO
    do
    begin
      select coalesce(sum(PC.FPC_VLPARC), 0) VALORPEND
      from FAT0000 FT
      inner join FAT_PC01 PC on (FT.FAT_CODIGO = PC.FAT_CODIGO)
      where FPC_STATUS = 'Pendente' and
            FPC_EXCLUSAO = 'N' and
            FT.CLI_CODIGO = :CODIGO and
            FPC_VENCTO between :DATA_INICIO and :DATA_FIM and
            (FT.EMP_CODIGO = :EMP_CODIGO or :EMP_CODIGO = '999')
      into :VALORPEND;
      if (:VALOR > 0 and
          :VALORPEND > 0) then
        INDICEINADIMPLENCIA = VALORPEND / VALOR * 100;
      else
        INDICEINADIMPLENCIA = 0;
      N = N + 1;
      RANQ = N;
      SHAREMARKETINDIVIDUAL = (VALOR / VALORTOTAL) * 100;
      ACUMULADO = ACUMULADO + VALOR;
      PERC_ACUMULADO = (ACUMULADO / VALORTOTAL) * 100;
      suspend;
    end
  end
end
^

SET TERM ; ^

COMMENT ON PROCEDURE SUMARIZACAO_CLIENTE IS 'CURVA ABC CLIENTE VOLUME DE VENDAS';


CREATE INDEX FAT_PC01_IDX8 ON FAT_PC01 (FPC_STATUS,FPC_EXCLUSAO);


SET TERM ^ ;

create or alter procedure SUMARIZACAO_GRUPO_SALDO_EST (
    EMP_CODIGO varchar(3))
returns (
    CODIGO varchar(20),
    QTDE decimal(12,4),
    GRUPO varchar(100),
    RANQ integer,
    ACUMULADO decimal(18,4),
    PERC_ACUMULADO decimal(18,4),
    SHAREMARKETINDIVIDUAL decimal(18,4))
as
declare variable N integer;
declare variable VALORTOTAL decimal(18,4);
begin
   n = 0;
   acumulado = 0;
   ranq = 0 ;
   perc_acumulado = 0 ;
   if (:EMP_CODIGO = '') then
    emp_codigo = '999';
  
    SELECT SUM(KAS_SALDO)  FROM PRD0000 PR INNER JOIN KARDEX_ALMOX_SALDO KAS ON (KAS.PRD_CODIGO = PR.PRD_CODIGO)
    WHERE KAS_SALDO > 0
    AND (PR.EMP_CODIGO =  :EMP_CODIGO or :emp_codigo = '999')
    INTO :valortotal ;
  
   FOR 
    SELECT SUM(KAS_SALDO), gr.PGR_CODIGO, PGR_DESCRI
    FROM PRD0000 PR INNER JOIN KARDEX_ALMOX_SALDO KAS ON (KAS.PRD_CODIGO = PR.PRD_CODIGO)
    JOIN PRD_GRUPO gr ON (gr.PGR_CODIGO = PR.PGR_CODIGO)
    WHERE KAS_SALDO > 0
    AND (PR.EMP_CODIGO = :EMP_CODIGO or :EMP_CODIGO = '999')
    GROUP BY 2,3
    order by 1 desc
     into :qtde, :codigo, :GRUPO
   do
     begin
       n = n +1;
       ranq = n;
       ShareMarketIndividual = (qtde/ valortotal)*100;
       acumulado = acumulado + qtde;
       perc_acumulado = (acumulado/ valortotal)*100;
       suspend;
     end
    
end
^

SET TERM ; ^

SET TERM ^ ;

create or alter procedure SUMARIZACAO_TIPO_SALDO_EST (
    EMP_CODIGO varchar(3))
returns (
    CODIGO varchar(20),
    QTDE decimal(12,0),
    TIPO varchar(100),
    RANQ integer,
    ACUMULADO decimal(18,4),
    PERC_ACUMULADO decimal(18,4),
    SHAREMARKETINDIVIDUAL decimal(18,4))
as
declare variable N integer;
declare variable VALORTOTAL decimal(18,4);
begin
   n = 0;
   acumulado = 0;
   ranq = 0 ;
   perc_acumulado = 0 ;
   if (:EMP_CODIGO = '') then
    emp_codigo = '999';
  
    SELECT SUM(KAS_SALDO)  FROM PRD0000 PR INNER JOIN KARDEX_ALMOX_SALDO KAS ON (KAS.PRD_CODIGO = PR.PRD_CODIGO)
    WHERE KAS_SALDO > 0
    AND (PR.EMP_CODIGO =  :EMP_CODIGO or :emp_codigo = '999')
    INTO :valortotal ;
  
   FOR 
    SELECT SUM(KAS_SALDO), TP.PTI_CODIGO , TP.PTI_DESCRI
    FROM PRD0000 PR INNER JOIN KARDEX_ALMOX_SALDO KAS ON (KAS.PRD_CODIGO = PR.PRD_CODIGO)
    JOIN PRD_TIPO TP ON (TP.PTI_CODIGO = PR.PTI_CODIGO)
    WHERE KAS_SALDO > 0
    AND (PR.EMP_CODIGO = :EMP_CODIGO or :EMP_CODIGO = '999')
    GROUP BY 2,3
    order by 1 desc
     into :qtde,:codigo, :tipo
   do
     begin
       n = n +1;
       ranq = n;
       ShareMarketIndividual = (qtde/ valortotal)*100;
       acumulado = acumulado + qtde;
       perc_acumulado = (acumulado/ valortotal)*100;
       suspend;
     end   
end
^

SET TERM ; ^

SET TERM ^ ;

create or alter procedure SUMARIZACAO_VENDEDOR (
    EMP_CODIGO varchar(3),
    DATA_INICIO date,
    DATA_FIM date,
    REGIME integer)
returns (
    CODIGO varchar(18),
    VALOR decimal(12,4),
    VENDEDOR_RAZAO varchar(40),
    VENDEDOR_NOME varchar(35),
    CONTA integer,
    RANQ integer,
    ACUMULADO decimal(12,4),
    PERC_ACUMULADO decimal(12,4),
    SHAREMARKETINDIVIDUAL decimal(12,4))
as
declare variable N integer;
declare variable VALORTOTAL decimal(18,4);
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

COMMENT ON PROCEDURE SUMARIZACAO_VENDEDOR IS 'CURVA ABC DE VENDEDOR';

