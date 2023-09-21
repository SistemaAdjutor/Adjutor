unit BaseDBForm;



interface

uses SysUtils, BaseForm, System.Classes, Data.DBXFirebird, Data.FMTBcd, Data.DB, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora, ACBrETQ, Vcl.Controls, Vcl.StdCtrls, SgDbSeachComboUnit, SqlClientDataSet;

type
  TfrmBaseDB = class(TfrmBase)
    DBConn: TSQLConnection;
    qAux: TSQLQuery;
    qAux2: TSQLQuery;
    qAux3: TSQLQuery;
    procedure FormCreate(Sender: TObject);
  private
   fCampoID: string;
   fCampoIDRetorno: string;
   procedure FormatarCamposTabelas;
  public
    Property CampoID: string read fCampoID write fCampoID;
    Property CampoIDRetorno: string read fCampoIDRetorno write fCampoIDRetorno;
    procedure OpenAux(const pSql: string);
    procedure OpenAux2(const pSql: string);
    procedure OpenAux3(const pSql: string);
  end;

var
  frmBaseDB: TfrmBaseDB;

implementation

Uses InicioDB {$ifdef SISTEMA},  Men0001{$ENDIF}, Uteis;

{$R *.dfm}

procedure TfrmBaseDB.FormCreate(Sender: TObject);
begin

  inherited ;
  try
    if DBConn.Connected then
      DBConn.Close;
  Except on e:Exception do
    Abort;
  end;
  CampoID := '';
  CampoIDRetorno:= '';

  DBConn :=DBInicio.maindb;
  SqlConnection:=DBConn;
  {$ifdef SISTEMA}
  if not assigned( dbInicio ) then
     iniciodb.SplashStart(False);
   if not DBConn.Connected then
      DBInicio.IniciaDB( dbConn ) ;
  FormatarCamposTabelas ;
  {$endif}
 // self.Constraints.MaxHeight := FrmMenu.height - 100
end;


procedure TfrmBaseDB.FormatarCamposTabelas ;
var x,y,z,w: integer ;
    dst: tDataSet;
begin
     y := self.ComponentCount-1;
     for x  := 0 to y do
     begin
          if self.Components[x].InheritsFrom(tDataSet) then
          begin
               if Self.Components[x].ClassType = TSQLClientDataSet then
              begin
                tSqlClientDataSet( self.Components[x] ).DBConnection := DBInicio.MainDB;

              end;
               dst := tDataSet( self.Components[x] );
               z := dst.FieldCount-1;
               for w := 0 to z do
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

Procedure TfrmBaseDB.OpenAux( const pSql: string ) ;
begin
      qAux.close;
      qAux.Sql.Text := pSql ;
      if dbInicio.IsDesenvolvimento then
        copyToClipboard(pSql);
      qAux.open;
end;

Procedure TfrmBaseDB.OpenAux2( const pSql: string ) ;
begin
      qAux2.close;
      qAux2.Sql.Text := pSql ;
      if dbInicio.IsDesenvolvimento then
        copyToClipboard(pSql);
      qAux2.open;
end;

Procedure TfrmBaseDB.OpenAux3( const pSql: string ) ;
begin
      qAux3.close;
      qAux3.sql.Text := pSql ;
      if dbInicio.IsDesenvolvimento then
        copyToClipboard(pSql);
      qAux3.open;
end;

end.




