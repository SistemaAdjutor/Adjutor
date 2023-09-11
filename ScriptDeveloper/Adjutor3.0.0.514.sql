
UPDATE  VERSAOSISTEMA 
SET    VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.514',
       VERSAOSISTEMA.DATA   = '01.06.2018',
	   VERSAO = '3.0.9.514'
 where VERSAOSISTEMA.CODIGO = 1;
commit work;

/* corrige os itens do item de serviço */
UPDATE SRV0000
SET srv_codigo =  SUBSTRING(SRV_CODIGO FROM 1 FOR 2 )||'.'||SUBSTRING(SRV_CODIGO FROM 3 FOR 4 )
WHERE CHAR_LENGTH(SRV_CODIGO) = 4    ;

commit work;

ALTER TABLE ENDERECO ADD CNPJ VARCHAR(18);
ALTER TABLE NF0001 ADD NF_FORMAPAGTO INTEGER;
COMMENT ON COLUMN NF0001.NF_FORMAPAGTO IS 'FORMA DE PAGAMENTO : 01=DINHEIRO ;02=CHEQUE;03=CARTAO DE CREDITO;04=CARTAO DE DEBITO;05=CREDITO LOJA;10=VALE ALIMENTACAO;11=VALE REFEICAO;12=VALE PRESENTE;13=VALE COMBUSTIVEL;99=OUTROS';
COMMENT ON TABLE NF0001_INU_CANC IS 'INUTILIZACOES REALIZADAS';
ALTER TABLE NF0001_HISTORICO ADD NFH_XML BLOB SUB_TYPE 0;
COMMENT ON COLUMN NF0001_HISTORICO.NFH_XML IS 'XML DO EVENTO DO NFE';

CREATE SEQUENCE GEN_LOTE_NFCe;
CREATE SEQUENCE GEN_SEQ_NFCe;

ALTER TABLE NF0001 ADD NF_SEQ_CCE INTEGER;
COMMENT ON COLUMN NF0001.NF_SEQ_CCE IS 'SEQUENCIA ATUAL DA CORRECAO';

ALTER TABLE NF0001 ADD NF_NUM_NFCe INTEGER;
COMMENT ON COLUMN NF0001.NF_NUM_NFCe IS 'NUMERO DO NFCE';

COMMENT ON COLUMN NF0001.NF_LOTE_NFE IS 'LOTE NFE/ NFCE';
COMMENT ON COLUMN NF0001.NF_CHAVE_NFE IS 'CHAVE DA NFE/NFCE';
COMMENT ON COLUMN NF0001.NF_PROTOCOLO_NFE IS 'PROTOCOLO DA NFE/NFCE';
COMMENT ON COLUMN NF0001.NF_PROTOCOLO_NFE_CANC IS 'PROTOCOLO DE CANCELAMENTO NFE';

ALTER TABLE EMP0000 ADD EMP_CSC VARCHAR(36);
ALTER TABLE EMP0000 ADD EMP_idToken VARCHAR(6);
ALTER TABLE EMP0000 ADD EMP_NFE_FAT VARCHAR(1);

COMMENT ON COLUMN EMP0000.EMP_CSC IS 'CSC DO NFCE';
COMMENT ON COLUMN EMP0000.EMP_IDTOKEN IS 'IDTOKEN DO NFCE';
COMMENT ON COLUMN EMP0000.EMP_NFE_FAT IS 'MARCA CHEKBOX PARA ENVIAR NFE NA EMISSAO DA FATURA';

update emp0000
set EMP_NFE_FAT = 'N';
 
ALTER TABLE PRMT0001 ADD EMP_HAB_NFCE VARCHAR(1);
COMMENT ON COLUMN PRMT0001.EMP_HAB_NFCE IS 'HABILITA NFCE';

update PRMT0001
set EMP_HAB_NFCE = 'N';

COMMIT WORK;

comment ON COLUMN NF0001.IBPT_VLAPROXTRIBUTOS IS 'VALOR APROXIMADO DOS IMPOSTOS';

SET TERM ^ ;

CREATE OR ALTER PROCEDURE PCD_NFE_STATUS (EMP_CODIGO VARCHAR(3))
RETURNS (
    NFE INTEGER,
    STATUS VARCHAR(15)
)
AS
declare variable maximo integer;
declare variable maximotmp integer;
declare variable minimotmp integer;
declare variable status_banco char(1);
declare variable ultimo_inutilizar integer;
begin
  select coalesce(max(t11.nfi_inutilizar),0) from nf0001_inutilizar t11 WHERE T11.emp_codigo =  :emp_codigo
  into:ULTIMO_INUTILIZAR;
  select max(t1.nf_num_nfe), min(coalesce(t1.nf_num_nfe,0)) from nf0001 t1 WHERE T1.emp_codigo = '00'||:emp_codigo and t1.nf_interno = 'N'
  into:maximo, minimotmp;
  select max(t2.fic_numero_nfe) from NF0001_INU_CANC t2 WHERE T2.emp_codigo = :emp_codigo
  into:maximotmp;
  if (maximotmp > maximo) then
    maximo = maximotmp;
  if (ULTIMO_INUTILIZAR >  minimotmp) then
      minimotmp = ULTIMO_INUTILIZAR;
  status_banco = '';
  WHILE (maximo > minimotmp) DO
    begin
       status_banco = '';
       select first 1 coalesce(t1.nf_status_nfe,'') from nf0001 t1
       where t1.nf_num_nfe = :maximo AND T1.emp_codigo = '00'||:emp_codigo
       into:status_banco;
       if (status_banco = 'A') then
        begin
         status = 'AUTORIZADA';
        end
       else
       if (status_banco = 'C') then
        begin
         status = 'CANCELADA';
        end
       else
       if (status_banco = 'T') then
        begin
         status = 'TRANSMITIDA';
        end
       else
       if (status_banco = '') then
        BEGIN
            status_banco = '';
            select first 1 t2.fic_tipo from NF0001_INU_CANC t2
            where t2.fic_numero_nfe = :maximo AND T2.emp_codigo = '00'||:emp_codigo
            into:status_banco;
            if (status_banco = 'I') then
             begin
              status = 'INUTILIZADA';
             end
            else
            if (status_banco = 'C') then
             begin
              status = 'CANCELADA';
             end
            ELSE
             BEGIN
              status = 'INUTILIZAR';
              insert into nf0001_inutilizar (nfi_inutilizar,emp_codigo,nfi_ok) VALUES (:maximo,:emp_codigo,'N');
             END
        END
       else
           status = 'opa-7';
       /*info*/
       nfe = maximo;
       maximo = maximo-1;
       suspend;
       status_banco = '';
    end
end

^


SET TERM ; ^

COMMENT ON PROCEDURE PCD_NFE_STATUS IS 'PROCURA OS NUMEROS NAO UTILIZADOS';
