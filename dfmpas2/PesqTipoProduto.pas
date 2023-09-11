unit PesqTipoProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaForm, Data.DB, Data.DBXFirebird, Data.FMTBcd, Vcl.Menus, Datasnap.DBClient, Datasnap.Provider, Vcl.ExtCtrls, Data.SqlExpr, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons;

type
  TfrmPesqTipoProduto = class(TfrmBaseDBPesquisa)
    cdsBuscoPTI_CODIGO: TStringField;
    cdsBuscoPTI_DESCRI: TStringField;
    cdsBuscoPTI_SIGLA: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure DBGridKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    procedure filtro;
  public
    { Public declarations }
  end;

var
  frmPesqTipoProduto: TfrmPesqTipoProduto;

implementation

{$R *.dfm}

uses RWFunc;

{ TfrmBaseDBPesquisa1 }

procedure TfrmPesqTipoProduto.DBGridKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 if Key = #13 then
   btnSelect.Click;
end;

procedure TfrmPesqTipoProduto.filtro;
begin
  with qBusco do
  begin
    sql.Clear;
    sql.Text := SQLDEF('PRODUTOS',' SELECT PTI_CODIGO,PTI_DESCRI, PTI_SIGLA FROM PRD_TIPO ','','','');

  end;
end;

procedure TfrmPesqTipoProduto.FormCreate(Sender: TObject);
begin
  inherited;
	Self.CampoID:='pti_codigo';
  Self.IDRetorno := 'pti_codigo';
  Self.CampoIDRetorno := 'pti_codigo';
  Self.ProcedureFiltro:=Filtro;
end;

procedure TfrmPesqTipoProduto.FormShow(Sender: TObject);
begin
  inherited;
  btnPesquisa.Click;
  pnControle.Visible := False;
end;

end.
