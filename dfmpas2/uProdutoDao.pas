unit uProdutoDao;

interface

function RetornaProdutoCodigoPelaReferencia(referencia,sCodigoFornecedor:String):String;
function RetornaProdutoDescricaoPelaReferencia(referencia:String):String;
function RetornaProdutoReferencia(const referencia:String):String;
function RetornaIdProdutoGrade(const sProdutoCodigo,sGrade:String):String;
function ProdutoGerenciaLote(const referencia:String):Boolean;

implementation

uses
   DataCad, SysUtils, UFuncoes, RWFunc, DB, Uteis, InicioDB;


function ProdutoGerenciaLote(const referencia:String):Boolean;
begin
   Result := False;
   if (referencia <> '') then
   begin
       dataCadastros.sqlUpdate1.Close;
       dataCadastros.sqlUpdate1.sql.text:= SQLDEF('PRODUTOS', 'SELECT t1.PRD_GERENCIA_LOTE FROM PRD0000 T1',' WHERE T1.PRD_REFER = '+QuotedStr(referencia),'','T1.');
       dataCadastros.sqlUpdate1.Open;
       if (not dataCadastros.sqlUpdate1.IsEmpty) then
          begin
             Result := dataCadastros.sqlUpdate1.FieldByName('PRD_GERENCIA_LOTE').AsString = 'S';
          end;
       dataCadastros.sqlUpdate1.Close;
    end;
end;

function RetornaIdProdutoGrade(const sProdutoCodigo,sGrade:String):String;
var
   resultado:String;
begin
   Result := '';
   resultado := '';
   if (sProdutoCodigo <> '') then
      begin
         dataCadastros.sqlUpdate1.Close;
         dataCadastros.sqlUpdate1.sql.text:= 'SELECT T1.prg_registro FROM prd_grade T1 WHERE T1.prd_codigo = '+QuotedStr(sProdutoCodigo)+' AND T1.prg_descricao = '+QuotedStr(sGrade);
         dataCadastros.sqlUpdate1.Open;
         if (not dataCadastros.sqlUpdate.IsEmpty) then
            begin
               resultado := dataCadastros.sqlUpdate1.FieldByName('prg_registro').AsString;
            end;
         dataCadastros.sqlUpdate1.Close;
      end;
   Result := resultado;
end;

function RetornaProdutoReferencia(const referencia:String):String;
var
   resultado:String;
begin
   Result := '';
   resultado := '';
   if (referencia <> '') then
      begin
         dataCadastros.sqlUpdate1.Close;
         dataCadastros.sqlUpdate1.sql.text:= SQLDEF('PRODUTOS', 'SELECT t1.PRD_CODIGO FROM PRD0000 T1',' WHERE T1.PRD_REFER = '+QuotedStr(referencia),'','T1.');
         dataCadastros.sqlUpdate1.Open;
         if (not dataCadastros.sqlUpdate1.IsEmpty) then
            begin
               resultado := dataCadastros.sqlUpdate1.FieldByName('PRD_CODIGO').AsString;
            end;
         dataCadastros.sqlUpdate1.Close;
      end;
   Result := resultado;
end;

function RetornaProdutoDescricaoPelaReferencia(referencia:String):String;
var
   resultado:String;
begin
   referencia := UpperCase(referencia);

   Result := '';
   if (referencia <> '') then
      begin
         if (resultado = '') then
            begin
               dataCadastros.sqlUpdate.Close;
               DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS', 'SELECT t1.PRD_DESCRI FROM PRD0000 T1',' WHERE T1.PRD_REFER = '+QuotedStr(referencia),'','T1.');
               dataCadastros.sqlUpdate.Open;
               if (not dataCadastros.sqlUpdate.IsEmpty) then
                  begin
                     resultado := dataCadastros.sqlUpdate.FieldByName('PRD_DESCRI').AsString;
                  end;
               dataCadastros.sqlUpdate.Close;
            end;
      end;
   Result := resultado;
end;


function RetornaProdutoCodigoPelaReferencia(referencia, sCodigoFornecedor:String):String;
var
   resultado:String;
begin
   referencia := UpperCase(referencia);
   sCodigoFornecedor := UpperCase(sCodigoFornecedor);

   Result := '';
   if (referencia <> '') then
      begin
         if (resultado = '') then
            begin
               dataCadastros.sqlUpdate.Close;
               DataCadastros.SqlUpdate.sql.text :=
               'SELECT t1.PRD_CODIGO FROM PRD0000_CODIGO T1 JOIN PRD0000 t2 ON (t1.PRD_CODIGO = t2.PRD_CODIGO AND t2.PRD_STATUS = ''A'' ) '+
               ' WHERE T1.PRDC_REFERENCIA = '+QuotedStr(referencia)+' and T1.FOR_CODIGO = '+QuotedStr(sCodigoFornecedor)+
                ConcatSe(' and t2.',DBInicio.ExclusivoSql('PRODUTOS'));
               dataCadastros.cdsSQLupd.Open;
               dataCadastros.cdsSQLupd.First;
               if (not dataCadastros.cdsSQLupd.IsEmpty) then
                  begin
                  // if dataCadastros.cdsSQLupd.RecordCount = 1  then
                     resultado := dataCadastros.cdsSQLupd.FieldByName('PRD_CODIGO').AsString
                  // else
                  //   resultado := '' {tem mais de dois registros}
                  end;
               dataCadastros.cdsSQLupd.Close;
            end;
      end;
   Result := resultado;
end;

end.

