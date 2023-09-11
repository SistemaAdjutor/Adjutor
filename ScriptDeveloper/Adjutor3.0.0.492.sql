ALTER TABLE PRMT0001
ADD PMT_DIGITACAO_GRID_VENDAS CHAR(1)  DEFAULT 'N';

commit work;

update PRMT0001  set PMT_DIGITACAO_GRID_VENDAS = 'N' ;

commit work;

UPDATE  VERSAOSISTEMA SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.0.492',
       VERSAOSISTEMA.DATA   = '18.08.2017'
 where VERSAOSISTEMA.CODIGO = 1;
 
COMMIT WORK;

SET TERM ^ ;

create or alter procedure PCD_KARDEX_EXTRATO (
    EMP_CODIGO varchar(3),
    PRD_CODIGO varchar(6),
    AMX_CODIGO varchar(4),
    DATA_INICIAL timestamp,
    DATA_FINAL timestamp,
    SALDO_FINAL varchar(1))
returns (
    KEX_REGISTRO integer,
    KEX_DATA_HORA timestamp,
    KEX_TIPO varchar(1),
    KEX_QUANTIDADE numeric(15,4),
    KEX_USUARIO_CODIGO integer,
    KEX_USUARIO_DESCRICAO varchar(30),
    KEX_SALDO numeric(15,4),
    KEX_ORIGEM varchar(40),
    KEX_DETALHE varchar(255),
    KEX_OBSERVACAO varchar(255),
    KEX_DOCUMENTO varchar(255),
    KEX_PRECO numeric(18,4),
    PRDL_LOTE varchar(30),
    PRG_DESC_GRADE varchar(100))
as
declare variable SALDO numeric(15,4);
declare variable AMX_CODIGO_ORIGEM varchar(4);
declare variable LOTE varchar(30);
declare variable REGISTRO_INTERNO integer;
begin
  /* Procedure Text */
  saldo = 0;
  kex_saldo = 0;
  kex_detalhe = '';
  kex_documento = '';
        for
        SELECT
            T1.kar_registro_interno,
            T1.kar_registro,
            T1.data_hora,
            T1.kar_entrada_saida,
            T1.kar_quantidade,
            T1.kar_saldo,
            t1.usu_codigo,
            t2.usu_nome,
            T1.kar_tipo_registro,
            T1.kar_observacao,
            T1.amx_codigo_origem,
            T1.kar_documento,
            T1.kar_descricao,
            T1.kar_preco,
            t3.prdl_lote,
            t4.prg_descricao
        FROM
        KARDEX T1
        left join usuario t2 on (t2.usu_codigo = t1.usu_codigo)
        left join prd_lote t3 on (t3.prdl_registro = t1.prdl_registro)
        left outer join prd_grade t4 on (t4.prg_registro = t1.prg_registro)
        where t1.emp_codigo = :emp_codigo and t1.amx_codigo = :amx_codigo and t1.prd_codigo = :prd_codigo and t1.data_hora between :data_inicial and :data_final
        order by  t1.kar_registro
        into :registro_interno, :kex_registro, :kex_data_hora, :kex_tipo, :kex_quantidade, : saldo,:kex_usuario_codigo, :kex_usuario_descricao, :kex_ORIGEM, :kex_OBSERVACAO,
             :amx_codigo_ORIGEM, :kex_documento, :kex_detalhe, :kex_preco, :PRDL_LOTE, :PRG_DESC_GRADE
      DO
      BEGIN
        if (PRDL_LOTE <> '') then
            kex_OBSERVACAO = kex_OBSERVACAO ||' LOTE: '|| PRDL_LOTE ;
        kex_saldo = saldo;
        if (SALDO_FINAL <> 'S') then
        /*ORIGEM*/
        if (kex_ORIGEM = 'ENF') then
            begin
                kex_origem = 'ENTRADA NOTA FISCAL';
            end
        else
        if (kex_ORIGEM = 'PED') then
            begin
                select first 1 opv0000.opv_descricao from ped0000 join opv0000 on opv0000.opv_codigo = ped0000.opv_codigo where ped0000.ped_registro = :registro_interno into kex_origem;
                kex_origem = 'PEDIDO';
            end
        else
        if (kex_ORIGEM = 'NF') then
            begin
                kex_origem = 'NOTA FISCAL SAIDA';
            end
        else
        if (kex_ORIGEM = 'MAN') then
            begin
                kex_origem = 'MANUAL';
            end
        else
        if (kex_ORIGEM = 'BAL') then
            begin
                if (kex_observacao = 'ZERAR') then
                    BEGIN
                        kex_origem = 'ZERADO';
                    END
                ELSE
                    kex_origem = 'BALANÇO';
            end
        else
        if (kex_ORIGEM = 'TRA') then
            begin
                kex_origem = 'TRANSFERENCIA';
            end
        suspend;
        END
end^

SET TERM ; ^

/* Following GRANT statetements are generated automatically */

GRANT SELECT ON KARDEX TO PROCEDURE PCD_KARDEX_EXTRATO;
GRANT SELECT ON USUARIO TO PROCEDURE PCD_KARDEX_EXTRATO;
GRANT SELECT ON PRD_LOTE TO PROCEDURE PCD_KARDEX_EXTRATO;
GRANT SELECT ON PRD_GRADE TO PROCEDURE PCD_KARDEX_EXTRATO;
GRANT SELECT ON PED0000 TO PROCEDURE PCD_KARDEX_EXTRATO;
GRANT SELECT ON OPV0000 TO PROCEDURE PCD_KARDEX_EXTRATO;

/* Existing privileges on this procedure */

GRANT EXECUTE ON PROCEDURE PCD_KARDEX_EXTRATO TO SYSDBA;