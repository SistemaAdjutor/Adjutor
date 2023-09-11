unit uNaturezaOperacaoDao;

interface

function RetornaRegistroCFOP(sCFOP:String):string;

implementation

uses
 DataCad, SysUtils, UFuncoes, RWFunc;

function RetornaRegistroCFOP(sCFOP:String):string;
begin
   Result := '';
   if (sCFOP <> '') then
      begin
         dataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :=SqlDef('OPERACAOFISCAL','select first 1 t1.OPE_CODIGO from OPE0000 T1 ','WHERE T1.OPE_NATUREZA = '+QuotedStr(sCFOP),'','T1.');
         dataCadastros.sqlUpdate.Open;
         Result := dataCadastros.sqlUpdate.FieldByName('OPE_CODIGO').AsString;
         dataCadastros.sqlUpdate.Close;
      end;
end;
end.
