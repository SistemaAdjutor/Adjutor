unit BaseDBFormFdac;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,  baseFormFDAC,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,  ACBrEnterTab, ACBrBase,  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error,
  FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Phys, FireDAC.Phys.FB, Data.DB, FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxClasses, cxLocalization, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Phys.FBDef, system.Threading;

type
  TfrmBaseDBFDAC = class(TfrmBasefdac)
    qAux: TFDQuery;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDTransac: TFDTransaction;
    FDGUIxErrorDialog1: TFDGUIxErrorDialog;
    qAux2: TFDQuery;
    qAux3: TFDQuery;
    qAux4: TFDQuery;
    dbConn: TFDConnection;
    FDStoredProc1: TFDStoredProc;

    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    fCampoID: string;
    fCampoIDRetorno: string;
    fDbConn : TFDConnection;
    procedure SetSqlConnection(const Value:  TFDConnection);
   procedure FormatarCamposTabelas;
  public
    Property CampoID: string read fCampoID write fCampoID;
    Property CampoIDRetorno: string read fCampoIDRetorno write fCampoIDRetorno;
    function OpenAux(const pSql: string): boolean;
    function OpenAux2(const pSql: string): boolean;
    function OpenAux3(const pSql: string): boolean;
    function OpenAux4(const pSql: string): boolean;

    function BuscaUmDadoSql(const sql: string; const DefaultValue:Variant): variant;
    function BuscaUmDadoSqlAsInteger(const sql: string): integer;
    function BuscaUmDadoSqlAsString(const sql: string): String;
    function BuscaUmDadoSqlAsDateTime(const sql: string): tDateTime;
    function BuscaUmDadoSqlAsCurrency(const sql: string): Currency ;
    function BuscaUmDadoSqlAsFloat(const sql: string): Extended;
    Function GetNextSequence(const pNomeGenerator:string):integer;
    function ExecSql(const pSql:string; Transacional: boolean = True):boolean;
    procedure VarrerComponentes  ;
    Property SqlConnection: TFDConnection Read fDbConn Write SetSqlConnection;
    function SequenciadorPRC( Empresa, Tabela, Campo: string; Pendencia: integer; const ValorAtual: string): string;

  end;

var
  frmBaseDBFDAC: TfrmBaseDBFDAC;

implementation

{$R *.dfm}

{ TfrmBaseDBFDAC }
 uses InicioDB, uteis;

function TfrmBaseDBFDAC.BuscaUmDadoSql(const sql: string; const DefaultValue: Variant): variant;
var qry: TFDQuery;
    msgErro: string ;
begin

  qry := TFDQuery.Create(nil);
  try
    qry.SQL.Clear;
    qry.Connection := DbConn;
    qry.Close;
    try
      if dbInicio.IsDesenvolvimento then
        CopyToClipboard(sql);
      qry.Open(sql);
      if qry.Fields[0].isnull then
        Result := DefaultValue
      Else
        Result := qry.Fields[0].AsVariant;
    except
      on E:EDataBaseError do
       begin
          msgErro := 'BuscaUmDadoSql: '+#13+qry.SQL.text+#13+'Retornou o Erro: '+E.Message;
          raise Exception.Create(msgErro);
       end;
    end;
  finally
       qry.close;
       FreeAndNil(qry);
  end;
end;

function TfrmBaseDBFDAC.BuscaUmDadoSqlAsCurrency(const sql: string): Currency;
begin
  Result := BuscaUmDadoSql(sql,0.00);
end;

function TfrmBaseDBFDAC.BuscaUmDadoSqlAsDateTime(const sql: string): tDateTime;
begin
  Result := BuscaUmDadoSql(sql,0);
end;

function TfrmBaseDBFDAC.BuscaUmDadoSqlAsFloat(const sql: string): Extended;
begin
  Result := BuscaUmDadoSql(sql,0);
end;

function TfrmBaseDBFDAC.BuscaUmDadoSqlAsInteger(const sql: string): integer;
begin
  Result := BuscaUmDadoSql(sql,0);
end;

function TfrmBaseDBFDAC.BuscaUmDadoSqlAsString(const sql: string): String;
begin
  Result := BuscaUmDadoSql(sql,'');
end;

function TfrmBaseDBFDAC.ExecSql(const pSql: string; Transacional: boolean = True):boolean;
var ExeSQL: TFDQuery;

begin
  ExeSQL := TFDQuery.Create(dbconn);
  try
    FDTransac.Connection := dbconn;
    ExeSQL.Transaction := FDTransac;
    ExeSQL.SQL.Text := psql;
    if DBInicio.IsDesenvolvimento then
      CopyToClipBoard(pSql);
    ExeSQL.Connection := dbconn;
    if Transacional then
      dbConn.StartTransaction;
    try
      //ExeSQL.Prepare;
      ExeSQL.ExecSQL ;
      if Transacional then
        dbConn.Commit;
      result := True;
    except
     on e: exception do
     begin
        if Transacional then
          dbConn.Rollback;
        result := False;
        raise Exception.Create(e.Message);
     end;
    end;
  finally
    ExeSQL.Free;
  end;


end;

procedure TfrmBaseDBFDAC.FormatarCamposTabelas;
var x,w: integer ;
    dst: TFDQuery;
begin
   for x  := 0 to self.ComponentCount-1 do
   begin
        if self.Components[x].InheritsFrom(TFDQuery) then
        begin
             dst := TFDQuery( self.Components[x] );
             for w := 0 to dst.FieldCount-1 do
             begin
                  if (dst.Fields[w].DataType = ftFloat) or
                     (dst.Fields[w].DataType = ftCurrency) or
                     (dst.Fields[w].DataType = ftBCD) or
                     (dst.Fields[w].DataType = ftFMTBcd) or
                     (dst.Fields[w].DataType = ftExtended) then
                     if tNumericField(dst.Fields[w]).DisplayFormat='' then
                        tNumericField(dst.Fields[w]).DisplayFormat:='###,###,##0.00';
             end;
        end;

   end;
end;

procedure TfrmBaseDBFDAC.FormCreate(Sender: TObject);
begin
  inherited;
  CampoID := '';
  CampoIDRetorno:= '';
  dbConn.Close;
//  dbConn.Connected := False;
  if not assigned( dbInicio ) then
     iniciodb.SplashStart(False);
  DbConn.Params.Clear;
  DbConn:= DBInicio.FDACConn;
 // dbConn.Params := dbinicio.FDACConn.Params;
  DbConn.Open;
  if not dbConn.connected then
    DBInicio.IniciaDBFireDAC( dbConn ) ;
  VarrerComponentes;
  FormatarCamposTabelas ;
end;

procedure TfrmBaseDBFDAC.FormDestroy(Sender: TObject);
begin
  inherited;
  if assigned(qAux) then
    FreeAndNil(qAux);
  if assigned(qAux2) then
    FreeAndNil(qAux2);
  if assigned(qAux3) then
    FreeAndNil(qAux3);
  if assigned(qAux4) then
    FreeAndNil(qAux4);


//  dbConn := nil;
//  FDTransac := nil;
  frmBaseDBFDAC := nil;
end;

procedure TfrmBaseDBFDAC.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #27 then
    Close;
end;

function TfrmBaseDBFDAC.GetNextSequence(const pNomeGenerator: string): integer;
var FDTemp: TFDQuery;
begin
  FDTemp := TFDQuery.Create(nil);
  try
    FDTemp.SQL.Clear;
    FDTemp.Connection := dbconn;
    FDTemp.Close;
    try
      FDTemp.Open('SELECT GEN_ID('+pNomeGenerator+', 1) as seq FROM RDB$DATABASE');
      result := fdtemp.FieldByName('seq').AsInteger;
    except
      result := 0;
      raise;
    end;
  finally
    FreeAndNil(fdtemp);
  end;

end;

function TfrmBaseDBFDAC.OpenAux(const pSql: string):boolean;
begin
  try
    qAux.sql.Clear;
    qAux.Connection := dbConn;
    qAux.sql.Text := pSql ;
    if dbInicio.isDesenvolvimento then
      copyToClipboard(pSql);
    qAux.open(pSql);
    result := true;
  except
  on e: exception do
  begin
    result := False;
    raise Exception.Create('Erro select :' +e.Message);
  end;

  end;

end;

function TfrmBaseDBFDAC.OpenAux2(const pSql: string):boolean;
begin
  try
    qAux2.close;
    qAux2.sql.Clear;
    qAux2.Connection := dbConn;
    qAux2.sql.Text := pSql ;
    if dbInicio.isDesenvolvimento then
      copyToClipboard(pSql);
    qAux2.open;
    result := true;
  except
    on e: exception do
    begin
      result := False;
      raise Exception.Create('Erro select :' +e.Message);
    end;

  end;
end;

function TfrmBaseDBFDAC.OpenAux3(const pSql: string):boolean;
begin
 try
    qAux3.close;
    qAux3.sql.Clear;
    qAux3.Connection := dbConn;
    qAux3.sql.Text := pSql ;
    if dbInicio.isDesenvolvimento then
      copyToClipboard(pSql);
    qAux3.open;
    result := true;
  except
    on e: exception do
    begin
      result := False;
      raise Exception.Create('Erro select :'+ e.Message);
    end;

  end;
end;

function TfrmBaseDBFDAC.OpenAux4(const pSql: string):boolean;
begin
  try
    qAux4.close;
    qAux4.sql.Clear;
    qAux4.Connection := dbConn;
    qAux4.sql.Text := pSql ;
    if dbInicio.isDesenvolvimento then
      copyToClipboard(pSql);
    qAux4.open;
    result := true;
  except
    on e: exception do
    begin
      result := False;
      raise Exception.Create('Erro select :'+ e.Message);
    end;

  end;
end;

function TfrmBaseDBFDAC.SequenciadorPRC(Empresa, Tabela, Campo: string; Pendencia: integer; const ValorAtual: string): string;
var SProcedure : TFDStoredProc;
begin
  SProcedure :=  TFDStoredProc.Create(self);
  try
  with SProcedure do
  begin
    Connection := dbConn;
    StoredProcName := 'PRC_SEQUENCIADORA';
    Prepare;
    with SProcedure, Params do
    begin
      Params.Clear;
      with Add do
      begin
        Name := 'EMPRESA';
        ParamType := ptInput;
        DataType := ftString;
        Size := 3;
      end;
      with Add do
      begin
        Name := 'TABELA';
        ParamType := ptInput;
        DataType := ftString;
        Size := 20;
      end;
      with Add do
      begin
        Name := 'CAMPO';
        ParamType := ptInput;
        DataType := ftString;
        Size := 40;
      end;
      with Add do
      begin
        Name := 'PENDENCIA';
        ParamType := ptInput;
        DataType := ftInteger;
      end;
      with Add do
      begin
        Name := 'VALORATUAL';
        ParamType := ptInput;
        DataType := ftString;
      end;
      with Add do
      begin
        Name := 'ID_RETORNO';
        ParamType := ptOutput;
        DataType := ftInteger;
      end;
       ParamByName('EMPRESA').Text    := EMPRESA;
       ParamByName('TABELA').Text     := TABELA;
       ParamByName('CAMPO').Text      := CAMPO;
       ParamByName('PENDENCIA').Text  := IntToStr(Pendencia);
       ParamByName('VALORATUAL').Text := ValorAtual;
       try
        ExecProc;
       except
         on e:exception do
         begin
           raise Exception.Create(e.Message);

         end;
       end;
      Result := ParamByName('ID_RETORNO').Text;

    end;
  end;
  finally
    FreeAndNil(SProcedure);
  end;

end;

procedure TfrmBaseDBFDAC.SetSqlConnection(const Value: TFDConnection);
     var qtd, x: integer;
begin
 FDbConn := Value ;
 qtd := self.ComponentCount;
 for x := 0 to qtd - 1 do
    if self.Components[x].InheritsFrom(TFDCustomQuery) then
         TFDCustomQuery(self.Components[x]).Connection:=fDbConn;

end;

procedure TfrmBaseDBFDAC.VarrerComponentes;
var
   i : Integer;
begin
  for I := 0 to self.ComponentCount-1 do
  begin
    if self.Components[i].InheritsFrom(TFDQuery) then
    begin
      TFDQuery( self.Components[i] ).Connection := dbConn;

    end;


  end;
end;

end.
