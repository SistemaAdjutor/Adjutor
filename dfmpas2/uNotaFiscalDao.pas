unit uNotaFiscalDao;

interface

//Nota Fiscal de Entrada
function ExisteNotaFiscalEntradaChaveNfe(chave: String;out numeroNota, fornecedorCodigo:String):Boolean;

implementation

uses
   DataCad, SysUtils, UFuncoes, RWFunc, DB;

function ExisteNotaFiscalEntradaChaveNfe(chave: String;out numeroNota, fornecedorCodigo:String):Boolean;
begin
   Result := False;
   if (chave <> '') then
      begin
         dataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :=SqlDef('PEDIDOS','SELECT FOR_CODIGO, ENF_NOTANUMBER FROM ENF0001 T1 ','WHERE T1.ENF_CHAVE_NFE = '+QuotedStr(chave),'','T1.');
         dataCadastros.sqlUpdate.Open;
         if (not dataCadastros.sqlUpdate.IsEmpty) then
            begin
               numeroNota := dataCadastros.sqlUpdate.FieldByName('ENF_NOTANUMBER').AsString;
               fornecedorCodigo := dataCadastros.sqlUpdate.FieldByName('FOR_CODIGO').AsString;
               Result := True;
            end;
         dataCadastros.sqlUpdate.Close;
      end;
end;

end.
