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
  select EMP_SEQUENCIA_NFE FROM EMP0000 WHERE EMP_CODIGO = '00'||:emp_codigo into :maximo;
  select coalesce(max(t11.nfi_inutilizar),0) from nf0001_inutilizar t11 WHERE T11.emp_codigo = :emp_codigo  into:ULTIMO_INUTILIZAR;
  if (maximo >ULTIMO_INUTILIZAR ) then 
    ULTIMO_INUTILIZAR = maximo;
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
end;

