ALTER TABLE ENDERECO
    ADD FATOR FLOAT;
	
COMMIT WORK;		
	
ALTER TABLE PED0000
    ADD ENDERECO_ENTREGA INTEGER;
	
COMMIT WORK;		

ALTER TABLE ENDERECO
    ADD CIDADE VARCHAR(50);

COMMIT WORK;	
	
ALTER TABLE ENDERECO
    ALTER NUMERO TYPE VARCHAR(12);
	
 COMMIT WORK;	

SET TERM ^ ; 
create procedure get_empty
as
declare variable tbname varchar(250);
declare variable sqlcontar varchar(250);
declare variable registros integer;
begin
  for select rdb$relation_name from rdb$relations where rdb$view_blr is null and (rdb$system_flag is null or rdb$system_flag = 0) into :tbname do
    begin
      sqlcontar = 'select count (*) from ' || tbname;
      execute statement sqlcontar into :registros;
      if ((registros = 0) and (tbname = 'ENDERECO')) then
        begin
          insert into ENDERECO (CODIGO) values (1);
        end
    end
end
^
SET TERM ; ^


execute procedure get_empty;

COMMIT WORK;	

/******************************* ENDEREÇO DE ENTREGA**********************************/
  INSERT INTO endereco(
    codigo,
    COD_CLIENTE,
    COD_CIDADE ,
    COD_PAIS ,
    DESCRICAO,
    NUMERO ,
    COMPLEMENTO ,
    BAIRRO ,
    CXPOSTAL ,
    CEP ,
    ESTADO ,
    TIPO ,
    PADRAO,
	CIDADE	)
    select (select (max(codigo)+1) from endereco),
    cli_codigo/*Cliente*/,
    0/*Cidade*/,
    1058/*Pais*/,
    substring(CLI_ENDENTR from 1 for position(',' , cli_endentr)-1)/*Descricao*/,
    trim(substring(CLI_ENDENTR from position(',' , cli_endentr)+1 for position(' ' , cli_endentr)+1))/*Numero*/,
    ''/*Complemento*/,
    CLI_BAIENTR/*Bairro*/,
    ''/*CXPOSTAL*/,
    CLI_CEPENTR/*CEP*/,
    CLI_UFENTR/*Estado*/,
    '1'/*Tipo*/,
    ''/*Padrao*/,
	CLI_CIDADE
    from cli0000
    where  CLI_ENDENTR <> '' and position(',' , cli_endentr) > 0;


 COMMIT WORK;	

/******************************* ENDEREÇO DE COBRANÇA **********************************/

  INSERT INTO endereco(
    codigo,
    COD_CLIENTE,
    COD_CIDADE ,
    COD_PAIS ,
    DESCRICAO,
    NUMERO ,
    COMPLEMENTO ,
    BAIRRO ,
    CXPOSTAL ,
    CEP ,
    ESTADO ,
    TIPO ,
    PADRAO ,
	CIDADE)
    select (select (max(codigo)+1) from endereco),
    cli_codigo/*Cliente*/,
    0/*Cidade*/,
    1058/*Pais*/,
    substring( CLI_ENDFAT from 1 for position(',' , CLI_ENDFAT)-1)/*Descricao*/,
    trim(substring(CLI_ENDFAT from position(',' , CLI_ENDFAT)+1 for position(' ' , CLI_ENDFAT)+1))/*Numero*/,
    ''/*Complemento*/,
    CLI_BAIFAT/*Bairro*/,
    ''/*CXPOSTAL*/,
    CLI_CEPFAT/*CEP*/,
    CLI_UFFAT/*Estado*/,
    '0'/*Tipo*/,
    ''/*Padrao*/,
	CLI_CIDADE
    from cli0000
    where  CLI_ENDFAT <> '' and position(',' , CLI_ENDFAT) > 0;

COMMIT WORK;	
 
SET TERM ^ ; 
 execute block as
  declare variable x integer;
begin
  SELECT max(ENDERECO.codigo) from ENDERECO into x;
  execute statement 'set generator gen_endereco_id to ' || (x+1);
end
^
SET TERM ; ^
 
 COMMIT WORK;	
 
UPDATE  VERSAOSISTEMA SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.0.472',
       VERSAOSISTEMA.DATA   = '13.12.2016'
 where VERSAOSISTEMA.CODIGO = 1;
 
 COMMIT WORK;