unit uPesqCodigoOriginalFabricante;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaBaseForm, Data.DB, Data.DBXFirebird, Data.FMTBcd, Vcl.Menus, Datasnap.DBClient, Datasnap.Provider, Vcl.ExtCtrls, Data.SqlExpr, ACBrEnterTab,
  ACBrBase, ACBrCalculadora, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ComCtrls;

type
  TfrmCodOriginalFabricante = class(TfrmBaseDBPesquisaBase)
    LabeledEdit1: TLabeledEdit;
    cdsBuscoPRDCO_REGISTRO: TIntegerField;
    cdsBuscoPRDCO_CODIGO_ORIGINAL: TStringField;
    cdsBuscoPRD_CODIGO: TStringField;
    cdsBuscoCLI_CODIGO: TStringField;
    cdsBuscoPRDCO_DESCRICAO: TStringField;
    cdsBuscoPED_CODIGO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSelectClick(Sender: TObject);
  private
     FProduto: string;
  public
    procedure FiltraCodigoOriginal;
    property Produto :string read FProduto write FProduto;
  end;

var
  frmCodOriginalFabricante: TfrmCodOriginalFabricante;

implementation

{$R *.dfm}
uses uteis;

procedure TfrmCodOriginalFabricante.btnSelectClick(Sender: TObject);
begin
  if cdsBusco.State in dsEditModes then
    cdsBusco.Post;
  cdsBusco.ApplyUpdates(0);
  inherited;

end;

procedure TfrmCodOriginalFabricante.FiltraCodigoOriginal;
begin
 	with qBusco do
	begin
		sql.Clear;
		SQL.Add('select * from PRD_CODIGOORIGINAL');
    SqlAdd( CampoSql( 'PRDCO_CODIGO_ORIGINAL',LabeledEdit1.Text) );
    SqlAdd(CampoSql('PRD_CODIGO',Produto));
	end;
end;

procedure TfrmCodOriginalFabricante.FormCreate(Sender: TObject);
begin
  inherited;
	Self.CampoID:='PRDCO_REGISTRO';
  self.CampoIDRetorno :=  'PRDCO_CODIGO_ORIGINAL';
	Self.ProcedureFiltro:=FiltraCodigoOriginal;
end;

procedure TfrmCodOriginalFabricante.FormResize(Sender: TObject);
begin
  inherited;
  Width := 415;
end;

procedure TfrmCodOriginalFabricante.FormShow(Sender: TObject);
begin
  inherited;
	AbreTabela:=True;
	Filtro; // abre tabelas
  DBGrid.ReadOnly := False;

end;

end.
