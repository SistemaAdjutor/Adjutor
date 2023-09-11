UPDATE  VERSAOSISTEMA 
SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.539 patch 2',
       VERSAOSISTEMA.DATA   = '06.12.2019',
	    VERSAO = '3.0.9.539'
 where VERSAOSISTEMA.CODIGO = 1;

 commit work;
 
-- MERCOS 
 ALTER TABLE EMP0000 ADD EMP_COMPANYTOKEN VARCHAR(36);
 ALTER TABLE EMP0000 ADD EMP_APPLICATIONTOKEN VARCHAR(36);
 ALTER TABLE EMP0000 ADD EMP_UltimaVerificacao timestamp;
 COMMENT ON COLUMN  EMP0000.EMP_COMPANYTOKEN	IS 'CHAVE DE TOKEN COMPANY MERCOS';
 COMMENT ON COLUMN  EMP0000.EMP_APPLICATIONTOKEN IS 'CHAVE DE TOKEN APPLICATION MERCOS';


ALTER TABLE CLI0000 ADD MER_CLIENTE_ID INTEGER ;
COMMENT ON COLUMN CLI0000.MER_CLIENTE_ID IS 'CODIGO DO CLIENTE NA MERCOS';
COMMENT ON COLUMN CLI0000.CLI_INSC is 'INSCRICAO ESTADUAL ';


ALTER TABLE CLI0000 ADD MER_MENSAGEM VARCHAR(400);
COMMENT ON COLUMN CLI0000.MER_MENSAGEM IS 'MENSAGEM DA MERCOS';

ALTER TABLE PRD0000 ADD MER_PRODUTO_ID INTEGER ;
COMMENT ON COLUMN PRD0000.MER_PRODUTO_ID IS 'CODIGO DO PRODUTO NA MERCOS';


ALTER TABLE PRD0000 ADD MER_MENSAGEM VARCHAR(400);
COMMENT ON COLUMN PRD0000.MER_MENSAGEM IS 'MENSAGEM DA MERCOS';

ALTER TABLE PEDIDO_WEB ADD SPW_CLIENTE_ID INTEGER;

COMMENT ON COLUMN PEDIDO_WEB.SPW_CLIENTE_ID IS 'MER_CLIENTE_ID';
COMMENT ON COLUMN PEDIDO_WEB.EMP_CODIGO IS 'CHAVE REFERENCIA DA TABELA EMPRESA (EMP0000)';
COMMENT ON COLUMN PEDIDO_WEB.PEDIDO_ID_EXTERNO IS 'CODIGO DO PEDIDO IMPORTADO';
COMMENT ON COLUMN PEDIDO_WEB.PEDIDO_ORIGEM IS 'ORIGEM DO PEDIDO . EX : MERCOS';
COMMENT ON COLUMN PEDIDO_WEB.CLI_CODIGO IS 'CHAVE REFERENCIA DA TABELA CLIENTES (CLI0000)';
COMMENT ON COLUMN PEDIDO_WEB.PW_STATUS IS 'P = PENDENTE A = APROVADO R = REJEITADO';

ALTER TABLE PEDIDO_WEB_ITEM ADD SPWI_PRODUTO_ID INTEGER;
COMMENT ON COLUMN PEDIDO_WEB_ITEM.SPWI_PRODUTO_ID IS 'MERCOS PRODUTO_ID';



SET TERM ^ ;

CREATE OR ALTER TRIGGER KARDEX_ALMOX_SALDO_BIU0 FOR KARDEX_ALMOX_SALDO
ACTIVE BEFORE INSERT OR UPDATE POSITION 0
AS
begin
  new.KAS_DATA_HORA = current_timestamp;
end
^

SET TERM ; ^

ALTER TABLE PRD0000 ADD PRD_ULTIMA_UPD_MERCOS TIMESTAMP;

COMMENT ON COLUMN PRD0000.PRD_ULTIMA_UPD_MERCOS IS 'ULTIMA ALTERACAO NO PRODUTOS DE ACORDO COM OS PRODUTOS MERCOS';
ALTER TABLE PRD0000 ADD PRD_UPD_LISTAPRECO_MERCOS TIMESTAMP;

COMMENT ON COLUMN PRD0000.PRD_UPD_LISTAPRECO_MERCOS IS 'ULTIMA ALTERACAO LISTA PRECOS';

SET TERM ^ ;


CREATE OR ALTER trigger prd0000_au0 for prd0000
active before update position 1
AS
begin
   IF ((NEW.PRD_DESCRI <> OLD.PRD_DESCRI)
       or (NEW.PRD_UND <> OLD.PRD_UND)
       or (NEW.PRD_COMPL <> OLD.PRD_COMPL)
       or (NEW.IPI_CODIGO <> OLD.IPI_CODIGO)
       or (NEW.PRD_PESOKg <> OLD.PRD_PESOKg))
   THEN
   BEGIN
      new.PRD_ULTIMA_UPD_MERCOS = current_timestamp;

   END
   IF ((NEW.PRD_PVENDA <> OLD.PRD_PVENDA)
       OR (NEW.PRD_PVENDA2 <> OLD.PRD_PVENDA2)
       OR (NEW.PRD_PVENDA3 <> OLD.PRD_PVENDA3)
       OR (NEW.PRD_PVENDA4 <> OLD.PRD_PVENDA4)
       OR (NEW.PRD_PVENDA5 <> OLD.PRD_PVENDA5)
       OR (NEW.PRD_PVENDA6 <> OLD.PRD_PVENDA6)      
   ) THEN
   BEGIN
       new.PRD_UPD_LISTAPRECO_MERCOS = current_timestamp;
   END
   
end  ^
SET TERM ; ^



COMMENT ON TRIGGER PRD0000_AU0 IS 'VERIFICA SE TEVE ALTERACAO DE CAMPOS DO PRODUTOS PARA ENVIAR A MERCOS';


ALTER TABLE CLI0000 ADD CLI_ULTIMA_UPD_MERCOS TIMESTAMP;
COMMENT ON COLUMN CLI0000.CLI_ULTIMA_UPD_MERCOS IS 'ULTIMA ALTERACAO NO CLIENTE DE ACORDO COM OS CLIENTES MERCOS';

SET TERM ^ ;

CREATE trigger cli0000_au0 for cli0000
active before update position 1
AS
begin
  IF ((NEW.CLI_RAZAO <> OLD.CLI_RAZAO)
   or (NEW.cli_fantasia <> OLD.cli_fantasia)
   or (NEW.CLI_FONE <> OLD.CLI_FONE)
   or (NEW.cli_cgc <> old.cli_cgc)
   or (NEW.CLI_INSC <> OLD.CLI_INSC)
   or (NEW.cli_suframa <> OLD.cli_suframa)
   or (new.CLI_EMAIL_ALTERNATIVO <> old.CLI_EMAIL_ALTERNATIVO)
   or (NEW.cli_cep <> OLD.cli_cep)
   or (new.cli_endere <> old.cli_endere)
   OR (new.cli_bairro <> old.cli_bairro)
   or (new.cli_cidade <> old.cli_cidade)
   or (new.cli_uf <> old.cli_uf)
  )THEN
   new.CLI_ULTIMA_UPD_MERCOS = current_timestamp;
end ^

SET TERM ; ^

COMMENT ON TRIGGER CLI0000_AU0 IS 'VERIFICA SE HOUVER ATUALIZACAO DO CLIENTE PARA ENVIAR A MERCOS';


ALTER TABLE REP0000 ADD MER_VENDEDOR_ID INTEGER;

COMMENT ON COLUMN REP0000.MER_VENDEDOR_ID IS 'CODIGO DO VENDEDOR NA MERCOS';

-- FIM MERCOS 
--- ABC VENDEDOR
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
  if (:EMP_CODIGO = '') then
    EMP_CODIGO = '999';/* MULTIEMPRESA */
	
  if (:REGIME = 0 ) then      /* competencia - EMISSĂO*/
  begin
   /* calcula o total geral */
		SELECT SUM (T7.NF_TOT_NOTA-COALESCE(NF_VL_DESCTO_FAT,0) ) AS valor
		FROM NF0001 T7 
		left join REP0000 t3 on (t3.REP_CODIGO = t7.REP_CODIGO)
		WHERE T7.NF_VENDA_FATURADA = 'S'
		AND NF_EMISSAO BETWEEN :DATA_INICIO AND :DATA_FIM
		AND  COALESCE(T7.NF_CANCELADA,'N') <> 'S'
		AND  (T7.EMP_CODIGO = :EMP_CODIGO or :EMP_CODIGO = '999')            
		INTO :valortotal ;
     /* calculo o total para cada vendedor */

       FOR 
        SELECT SUM (T7.NF_TOT_NOTA-COALESCE(NF_VL_DESCTO_FAT,0) ) AS valor ,
        count(*) AS conta,  T3.REP_CODIGO , t3.REP_RAZAO as vendedor_razao,
        t3.rep_nome as vendedor_nome
        FROM NF0001 T7
        LEFT join REP0000 t3 on (t3.REP_CODIGO = t7.REP_CODIGO)
        WHERE T7.NF_VENDA_FATURADA = 'S'
        AND NF_EMISSAO BETWEEN :DATA_INICIO AND :DATA_FIM
        AND COALESCE(T7.NF_CANCELADA,'N') <> 'S'
		AND  (T7.EMP_CODIGO = :EMP_CODIGO or :EMP_CODIGO = '999')        
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
   else if (:regime = 1) then  /*caixa - VENCIMENTO*/
   begin
         /* total geral do vendedor em caixa  */
		SELECT SUM(CASE WHEN (FPC_VLPAGO = 0) OR (FPC_VLPAGO IS NULL) THEN FPC_VLPARC ELSE FPC_VLPAGO END)  VALOR
		FROM FAT_PC01 F1                                                              
		left join REP0000 t3 on (t3.REP_CODIGO = f1.REP_CODIGO)                       
		WHERE FPC_EXCLUSAO <> 'S'
		AND FPC_VENCTO BETWEEN :DATA_INICIO AND :DATA_FIM
		AND (F1.EMP_CODIGO = :EMP_CODIGO or :EMP_CODIGO = '999')
		INTO :valortotal;
         /* total por vendedor por caixa */
      
        for
         SELECT SUM(CASE WHEN (F1.FPC_VLPAGO = 0) OR (F1.FPC_VLPAGO IS NULL) THEN F1.FPC_VLPARC ELSE F1.FPC_VLPAGO END)  VALOR,
             count(*) AS conta,  T3.REP_CODIGO , t3.REP_RAZAO as vendedor_razao,
             t3.rep_nome as vendedor_nome
           FROM FAT_PC01 F1
           left join REP0000 t3 on (t3.REP_CODIGO = f1.REP_CODIGO)
           WHERE FPC_EXCLUSAO <> 'S'
           AND (f1.EMP_CODIGO =  :EMP_CODIGO OR :EMP_CODIGO = '999')
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
		SELECT SUM(COALESCE(FPC_VLPAGO,FPC_VLPARC )) VALOR
		FROM FAT_PC01 F1                                                              
		left join REP0000 t3 on (t3.REP_CODIGO = f1.REP_CODIGO)                       
		WHERE FPC_EXCLUSAO <> 'S'
		AND FPC_PAGTO BETWEEN :DATA_INICIO AND :DATA_FIM
		AND (F1.EMP_CODIGO = :EMP_CODIGO OR :EMP_CODIGO = '999')
		INTO :valortotal;
         /* total por vendedor por caixa */
         for
         SELECT SUM(COALESCE(f1.FPC_VLPAGO,f1.FPC_VLPARC )) VALOR,
             count(*) AS conta,  T3.REP_CODIGO , t3.REP_RAZAO as vendedor_razao,
             t3.rep_nome as vendedor_nome
           FROM FAT_PC01 F1
           left join REP0000 t3 on (t3.REP_CODIGO = f1.REP_CODIGO)
           WHERE FPC_EXCLUSAO <> 'S'
           AND (f1.EMP_CODIGO =  :EMP_CODIGO OR :EMP_CODIGO = '999')
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

--- ABC CLIENTE
SET TERM ^ ;

CREATE OR ALTER PROCEDURE SUMARIZACAO_CLIENTE (EMP_CODIGO VARCHAR(3), DATA_INICIO DATE, DATA_FIM DATE, REGIME INTEGER)
RETURNS (
	CODIGO VARCHAR(18),
	VALOR NUMERIC,
	CLIENTE VARCHAR(100),
	CONTA INTEGER,
	RANQ INTEGER,
	ACUMULADO NUMERIC,
	SHAREMARKETINDIVIDUAL NUMERIC,
	PERC_ACUMULADO NUMERIC,
	MESESCICLO INTEGER,
	INDICEINADIMPLENCIA NUMERIC,
	VALORPEND NUMERIC
)
AS
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
  /* competencia - EMISSĂO*/
  begin
    select sum(NF_TOT_NOTA-COALESCE(NF_VL_DESCTO_FAT,0)) as VALOR
    from NF0001 NF
    join CLI0000 T2 on (T2.CLI_CODIGO = NF.CLI_CODIGO)
    where NF_EMISSAO between :DATA_INICIO and :DATA_FIM and
          NF_TOT_NOTA > 0 and
          NF_CANCELADA <> 'S' and
          NF_VENDA_FATURADA = 'S' and
          (NF.EMP_CODIGO = :EMP_CODIGO or :EMP_CODIGO = '999')
    into :VALORTOTAL;

    for select NF.CLI_CODIGO as CODIGO, sum(NF_TOT_NOTA-COALESCE(NF_VL_DESCTO_FAT,0)) as VALOR, count(*) as CONTA, CLI_RAZAO as CLIENTE,
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


ALTER TABLE OCP_IT01 ADD OCI_NOTADIFERE varchar(1);
comment ON COLUMN OCP_IT01.OCI_NOTADIFERE IS 'INDICA SE UNIDADE DE ORDEM DE COMPRA ESTA DIFERENTE DA UNIDADE DA NOTA';

ALTER TABLE OCP_IT01 ADD OCI_NOTADIFERE_MOTIVO varchar(200);
comment ON COLUMN OCP_IT01.OCI_NOTADIFERE_MOTIVO IS 'MOTIVO DA NOTA E PEDIDO ESTAREM COM ITEM DIFERENTE';

