unit uClienteDao;

interface

function ClienteAtivo(sCodigo:String;out msg:String):Boolean;
function RetornaClienteCnpj(sCnpj:String):String;

implementation

uses
 DataCad, SysUtils, UFuncoes, RWFunc, uPedidoDoacao;


function RetornaClienteCnpj(sCnpj:String):String;
begin
   Result := '';
   if (sCnpj <> '')and(sCnpj <> '00000000000')and(sCnpj <> '00000000000000') then
      begin
         dataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :=SqlDef('CLIENTES','select t1.CLI_CODIGO from CLI0000 T1 ','WHERE T1.CLI_CGC = '+QuotedStr(ExtrairNumeros(sCnpj)),'','T1.');
         dataCadastros.sqlUpdate.Open;
         if (not dataCadastros.sqlUpdate.IsEmpty) then
            Result := dataCadastros.sqlUpdate.FieldByName('CLI_CODIGO').AsString;
         dataCadastros.sqlUpdate.Close;
      end;
end;


function ClienteAtivo(sCodigo:String;out msg:String):Boolean;
begin
   Result := False;
   if (sCodigo <> '') then
      begin
         dataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :=SqlDef('CLIENTES','select t1.CLI_INATIVO,t1.CLI_DTINATIVO,t1.CLI_MOTIVO from CLI0000 T1 ','WHERE T1.CLI_CODIGO = '+QuotedStr(sCodigo),'','T1.');
         dataCadastros.sqlUpdate.Open;
         if (not dataCadastros.sqlUpdate.IsEmpty) then
            begin
               if (dataCadastros.sqlUpdate.FieldByName('CLI_INATIVO').AsString <> 'A') then
                  begin
                    if frmPedidoDoacao = nil then
                       msg := 'Cliente Inativo '+FormatDateTime('DD/MM/YYYY',dataCadastros.sqlUpdate.FieldByName('CLI_DTINATIVO').AsDateTime)+' Motivo: '+dataCadastros.sqlUpdate.FieldByName('CLI_MOTIVO').AsString
                    else
                    begin
                      if dataCadastros.sqlUpdate.FieldByName('CLI_INATIVO').AsString = 'I' then
                        msg := 'Cliente Inativo '
                      else
                      if dataCadastros.sqlUpdate.FieldByName('CLI_INATIVO').AsString = 'R' then
                        msg := 'Cliente em Recuperação '
                    end;
                     Result := False;
                  end
               else
                  Result := True;
            end;

         dataCadastros.sqlUpdate.Close;
      end;
end;

end.
