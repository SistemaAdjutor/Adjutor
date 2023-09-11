UPDATE  VERSAOSISTEMA 
SET    VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.525 PATCH 6 ',
       VERSAOSISTEMA.DATA   = '18.01.2019',
       VERSAO = '3.0.9.525'
where VERSAOSISTEMA.CODIGO = 1;


ALTER TABLE MANIFESTACAONFE ADD EMP_CODIGO VARCHAR(3);

UPDATE MANIFESTACAONFE SET EMP_CODIGO = '001';

commit work;

ALTER TABLE OCP_IT01 ADD OCI_PERC_ICMS_ST NUMERIC(18,5);

COMMENT ON COLUMN OCP_IT01.OCI_PERC_ICMS_ST IS 'PERCENTUAL DE ICMS ST';

ALTER TABLE OCP0000 ADD OCP_ICMSST NUMERIC(18,5);

COMMENT ON COLUMN OCP0000.OCP_ICMSST IS 'VALOR TOTAL DO ST NA NOTA';

alter table NFSERVICO alter column NFSE_CEP type varchar(11);


CREATE OR ALTER procedure PRC_SEQUENCIADORA (
    EMPRESA char(3),
    TABELA char(30),
    CAMPO char(30),
    PENDENCIA integer,
    VALORATUAL char(10))
returns (
    ID_RETORNO integer)
as
declare variable ID_SEQUENCIA integer;
BEGIN
    ID_SEQUENCIA = 0;
    /* Inclui uma Nova Pendencia na Tabela de Pendencias */
    if (Pendencia = 1) then
       begin
           INSERT INTO SYS_SEQUENCIADOR_PENDENCIAS (SEQUENCIA_EMPRESA,SEQUENCIA_TABELA,SEQUENCIA_CAMPO,PENDENCIA_VALOR)
           VALUES(:EMPRESA, :TABELA ,:CAMPO ,:VALORATUAL);
           SUSPEND;
           exit;
       end
    /* é verificado a existência de pendências no contador, caso encontre continua */
    if (exists(SELECT PENDENCIA_VALOR
               FROM SYS_SEQUENCIADOR_PENDENCIAS
               WHERE SEQUENCIA_EMPRESA = :EMPRESA
               AND SEQUENCIA_TABELA    = :TABELA
               AND SEQUENCIA_CAMPO     = :CAMPO)) then
       begin
           /* Aqui é recuperado a sequencia perdida, armazenada no banco de Dados */
           FOR SELECT FIRST 1 coalesce(PENDENCIA_VALOR,0)
           FROM SYS_SEQUENCIADOR_PENDENCIAS
           WHERE SEQUENCIA_EMPRESA = :EMPRESA
           AND SEQUENCIA_TABELA    = :TABELA
           AND SEQUENCIA_CAMPO     = :CAMPO
           AND PENDENCIA_VALOR <> 0
           ORDER BY PENDENCIA_VALOR 
           INTO :ID_SEQUENCIA DO
             BEGIN
               ID_RETORNO = :ID_SEQUENCIA;
             END
       end
    else
       /* Caso nao exista pendências, a variavel ID_SEQUENCIA é setada para 0 (zero)*/
       ID_SEQUENCIA = 0;
   /* Caso a variavel ID_SEQUENCIA esteja maior que 0 (zero) continua */
   if (ID_SEQUENCIA <> 0) then
      begin
          /* Se chegamos ate aqui, é porque existe uma pendencia.
             Entao recuperamos ela, e deletamos-action do banco de
             dados SYS_SEQUENCIADOR_PENDENCIAS, para que nem outro
             usuario na rede utilize enquanto trabalhamos com ela. */
          ID_RETORNO = :ID_SEQUENCIA;
          DELETE FROM SYS_SEQUENCIADOR_PENDENCIAS
          WHERE SEQUENCIA_EMPRESA = :EMPRESA
          AND SEQUENCIA_TABELA    = :TABELA
          AND SEQUENCIA_CAMPO     = :CAMPO
          AND PENDENCIA_VALOR     = :ID_SEQUENCIA;
          SUSPEND;
          exit;
      end
   else
  begin
      /* Caso a varivel ID_SEQUENCIA esteja igual a 0 (zero),
         isso indica que nao houve pendencias. Entao executa
         conforme abaixo */
      /* Primeiramente verifica se a tabela SYS_SEQUENCIADOR tem um
         valor referenciado armazenado, para ser incrementado */
      if (not(exists(SELECT SEQUENCIA_VALOR
         FROM SYS_SEQUENCIADOR
         WHERE SEQUENCIA_EMPRESA = :EMPRESA
         AND SEQUENCIA_TABELA    = :TABELA
         AND SEQUENCIA_CAMPO     = :CAMPO))) then
         begin
             /* Caso nao exista cria um novo, e retorna com o valor 1,
                que no caso seria a sequencia inicial que o usuario
                teria.*/
             INSERT INTO SYS_SEQUENCIADOR (SEQUENCIA_EMPRESA,SEQUENCIA_TABELA,SEQUENCIA_CAMPO,SEQUENCIA_VALOR)
             VALUES(:EMPRESA , :TABELA , :CAMPO , 2);
             ID_RETORNO = 1;
         end
      else
         begin
             /* Caso exista, recupera a sequencia armazenada */
             SELECT SEQUENCIA_VALOR
             FROM SYS_SEQUENCIADOR
             WHERE SEQUENCIA_EMPRESA = :EMPRESA
             AND SEQUENCIA_TABELA    = :TABELA
             AND SEQUENCIA_CAMPO     = :CAMPO
             /* Retorna com a sequencia recuparada */
             INTO :ID_SEQUENCIA;
             /* Apos recuperar o valor armazenado, incrementa com mais 1..*/
             UPDATE SYS_SEQUENCIADOR
             SET SEQUENCIA_VALOR = SEQUENCIA_VALOR + 1
             WHERE SEQUENCIA_EMPRESA = :EMPRESA
             AND SEQUENCIA_TABELA    = :TABELA
             AND SEQUENCIA_CAMPO     = :CAMPO;

             ID_RETORNO = :ID_SEQUENCIA;
         end
  end
   SUSPEND;
END;
