unit uFornecedorDao;

interface

function RetornaRegistroFornecedorPorCnpj(cnpj: String;out bDuplicidade:Boolean):String;
function AtualizaPrecodeCusto(registro: String):Boolean;

implementation

uses
   DataCad, SysUtils, UFuncoes, RWFunc, DB, iniciodb, uteis;


function AtualizaPrecodeCusto(registro: String):Boolean;
begin
 {OBS ANTES ERA FOR_ATUALIZA_PCUSTO, AGORA FOR_ATUALIZA_PVENDA ELE NÃO ATUALIZA NEM PREÇO DE VENDA, NEM CUSTO }
   Result := False;
   if (registro <> '') then
      begin
         dataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :=SqlDef('FORNECEDORES','SELECT t1.FOR_ATUALIZA_PVENDA FROM FOR0000 T1 ',' WHERE T1.FOR_CODIGO =  '+QuotedStr(registro),'','T1.');
         dataCadastros.sqlUpdate.Open;
         if (not dataCadastros.sqlUpdate.IsEmpty) then
            begin
               Result := dataCadastros.sqlUpdate.FieldByName('FOR_ATUALIZA_PVENDA').AsString = 'S';
            end;
         dataCadastros.sqlUpdate.Close;
      end;
end;


function RetornaRegistroFornecedorPorCnpj(cnpj: String;out bDuplicidade:Boolean):String;
begin
     if (cnpj <> '') then
         Result := dbInicio.BuscaUmDadoSqlasString ( 'SELECT FOR_CODIGO FROM FOR0000 WHERE FOR_CGC='+qStr(cnpj)+ConcatSe( ' AND ', dbInicio.ExclusivoSql( 'FORNECEDORES' ) ) )
     Else
         Result := '';

     bDuplicidade := dbInicio.BuscaUmDadoSqlasInteger ( 'Select cast(count(*) as integer) as conta from    FOR0000 WHERE FOR_CGC='+qStr(cnpj)+ConcatSe( ' AND ', dbInicio.ExclusivoSql( 'FORNECEDORES' ) ) )>1 ;
end;

end.
