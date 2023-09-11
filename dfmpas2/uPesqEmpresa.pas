unit uPesqEmpresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaForm, Data.DB, Data.DBXFirebird, Data.FMTBcd, Vcl.Menus, Datasnap.DBClient, Datasnap.Provider, Vcl.ExtCtrls, Data.SqlExpr, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons;

type
  TfrmPesqEmpresa = class(TfrmBaseDBPesquisa)
    cdsBuscoEMP_CODIGO: TStringField;
    cdsBuscoEMP_FANTASIA: TStringField;
    qBuscoEMP_CODIGO: TStringField;
    qBuscoEMP_FANTASIA: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    fempresa : string;
    procedure filtra;
  public
   property EmpCodigo : string read fempresa write fempresa;
  end;

var
  frmPesqEmpresa: TfrmPesqEmpresa;

implementation

{$R *.dfm}
  USES InicioDB, Fat0000;
{ TfrmBaseDBPesquisa2 }

procedure TfrmPesqEmpresa.filtra;
begin
  qBusco.SQL.Text := ' SELECT e.EMP_CODIGO, e.EMP_FANTASIA FROM EMP0000 e' +
                     ' JOIN USUARIO_EMPRESA ue ON (ue.EMP_CODIGO = e.EMP_CODIGO AND usu_codigo = '+ DBInicio.Usuario.CODIGO + ')'+
                     ' WHERE e.EMP_CODIGO <> '+QuotedStr(EmpCodigo);
end;

procedure TfrmPesqEmpresa.FormCreate(Sender: TObject);
begin
  inherited;
	Self.CampoID:='EMP_CODIGO';
  self.CampoIDRetorno:= 'EMP_CODIGO';
	Self.ProcedureFiltro:=Filtra;
end;

procedure TfrmPesqEmpresa.FormDestroy(Sender: TObject);
begin
 // inherited;

end;

procedure TfrmPesqEmpresa.FormShow(Sender: TObject);
begin
  inherited;
	AbreTabela:=True;
	Filtro; // abre tabelas
end;

end.
