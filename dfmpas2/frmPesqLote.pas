unit frmPesqLote;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaForm, Data.DB, Data.DBXFirebird, Data.FMTBcd, Vcl.Menus, Datasnap.DBClient, Datasnap.Provider, Vcl.ExtCtrls, Data.SqlExpr, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons;

type
  TfrmPesqSelecaoLote = class(TfrmBaseDBPesquisa)
    qBuscoPRDL_REGISTRO: TIntegerField;
    qBuscoPRDL_LOTE: TStringField;
    qBuscoPRDL_DATA_FABRICACAO: TDateField;
    qBuscoPRDL_DATA_VALIDADE: TDateField;
    qBuscoPRDL_SALDO: TFMTBCDField;
    cdsBuscoPRDL_REGISTRO: TIntegerField;
    cdsBuscoPRDL_LOTE: TStringField;
    cdsBuscoPRDL_DATA_FABRICACAO: TDateField;
    cdsBuscoPRDL_DATA_VALIDADE: TDateField;
    cdsBuscoPRDL_SALDO: TFMTBCDField;
    cdsBuscoSelecionado: TBooleanField;
    Button1: TButton;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridCellClick(Column: TColumn);
    procedure cdsBuscoSelecionadoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
  private
    fPrd_Codigo: string;
  public
    procedure filtra;
    property PRD_CODIGO: string read fprd_codigo write fprd_codigo;
  end;

var
  frmPesqSelecaoLote: TfrmPesqSelecaoLote;

implementation

{$R *.dfm}

procedure TfrmPesqSelecaoLote.cdsBuscoSelecionadoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text:= EmptyStr;
end;

procedure TfrmPesqSelecaoLote.DBGridCellClick(Column: TColumn);
begin
  inherited;
  if not (cdsbusco.IsEmpty) and (Column.FieldName = 'Selecionado') then
  begin
    if  not (cdsbusco.State in dsEditModes)  then
      cdsbusco.Edit;
    cdsbuscoselecionado.AsBoolean :=  not cdsbuscoselecionado.AsBoolean;
    cdsbusco.Post;
  end;

end;

procedure TfrmPesqSelecaoLote.DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
Check: Integer;
R: TRect;
begin

  if Column.FieldName = 'Selecionado' then
  begin
    DBGrid.Canvas.FillRect(Rect);
    Check := 0;
    if cdsBusco.FindField('selecionado').AsBoolean then
        Check := DFCS_CHECKED
    else Check := 0;
    R:=Rect;
    TDBGrid(sender).Canvas.Font.Color :=  TDBGrid(sender).Canvas.Brush.Color;
    InflateRect(R,-2,-2); //Diminue o tamanho do CheckBox
    DrawFrameControl(DBGrid.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
  end;

end;

procedure TfrmPesqSelecaoLote.filtra;
begin
	with qBusco do
	begin
		sql.Clear;
		SQL.Add('select PRDL_REGISTRO, PRDL_LOTE, PRDL_DATA_FABRICACAO, PRDL_DATA_VALIDADE, PRDL_SALDO');
    SQL.Add(' FROM PRD_LOTE pd ');
    SQL.Add('Where prdl_saldo > 0  AND prd_codigo = '+QuotedStr(PRD_CODIGO));

  end;
end;

procedure TfrmPesqSelecaoLote.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if cdsBusco.State in dsEditModes then
    cdsBusco.Post;

end;

procedure TfrmPesqSelecaoLote.FormCreate(Sender: TObject);
begin
  inherited;
	Self.CampoID:='PRDCO_REGISTRO';
	Self.ProcedureFiltro:=Filtra;
end;

procedure TfrmPesqSelecaoLote.FormResize(Sender: TObject);
begin
  inherited;
  self.Width := 536
end;

procedure TfrmPesqSelecaoLote.FormShow(Sender: TObject);
begin
  inherited;
	AbreTabela:=True;
	Filtro; // abre tabelas
  with cdsBusco.IndexDefs.AddIndexDef do
  begin
    Name   := 'validade';
    Fields := 'PRDL_DATA_FABRICACAO';
    Options := [];
  end;
  cdsBusco.IndexName :=  'validade';
end;

end.
