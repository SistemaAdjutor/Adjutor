unit uPesqCreditoFatura;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaForm, Data.DB, Data.DBXFirebird, Data.FMTBcd, Vcl.Menus, Datasnap.DBClient, Datasnap.Provider, Vcl.ExtCtrls, Data.SqlExpr, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons, Vcl.DBCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxCheckBox;

type
  TfrmPesqcreditoFatura = class(TfrmBaseDBPesquisa)
    cdsBuscoDocumento: TStringField;
    cdsBuscoData: TSQLTimeStampField;
    cdsBuscocredito: TFMTBCDField;
    cdsBuscousado: TFMTBCDField;
    cdsBuscoselecionado: TBooleanField;
    qBuscoDocumento: TStringField;
    qBuscoData: TSQLTimeStampField;
    qBuscocredito: TFMTBCDField;
    cdsBuscoCodigo: TStringField;
    strngfldBuscoCodigo: TStringField;
    qBuscousado: TFMTBCDField;
    btnCancelar: TBitBtn;
    cdsBuscototalusado: TAggregateField;
    Label1: TLabel;
    DBText1: TDBText;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1selecionado: TcxGridDBColumn;
    cxGrid1DBTableView1Codigo: TcxGridDBColumn;
    cxGrid1DBTableView1Documento: TcxGridDBColumn;
    cxGrid1DBTableView1Data: TcxGridDBColumn;
    cxGrid1DBTableView1credito: TcxGridDBColumn;
    cxGrid1DBTableView1usado: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsBuscoselecionadoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure btnSelectClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure cdsBuscoNewRecord(DataSet: TDataSet);
    procedure cdsBuscousadoChange(Sender: TField);
    procedure cdsBuscousadoValidate(Sender: TField);
    procedure cdsBuscoselecionadoChange(Sender: TField);
    procedure cxGrid1DBTableView1selecionadoPropertiesChange(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    fcod_cliente : string;
    fValorMaximo : double;
    procedure SetCod_Cliente (const aValue : string);
    procedure SetValorMaximo (const aValue: double);
  public
    procedure Filtro ;
    property Cod_Cliente : string read fcod_cliente write SetCod_Cliente;
    property ValorMaximo : double read fValorMaximo write SetValorMaximo;
  end;

var
  frmPesqcreditoFatura: TfrmPesqcreditoFatura;

implementation

{$R *.dfm}

uses Uteis;
{ TfrmPesqcreditoFatura }

procedure TfrmPesqcreditoFatura.btnCancelarClick(Sender: TObject);
begin
 // inherited;
  modalresult := mrCancel;
  Close;
end;

procedure TfrmPesqcreditoFatura.btnSelectClick(Sender: TObject);
begin
  //inherited;
  If cdsBusco.State  = dsEdit then
    cdsbusco.Post;
  if cdsBuscototalusado.Value > ValorMaximo then
    raise Exception.Create('Valor a utilizar é maior que a nota');
  application.ProcessMessages;
  ModalResult := mrOk;

end;

procedure TfrmPesqcreditoFatura.cdsBuscoNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.Cancel;
end;

procedure TfrmPesqcreditoFatura.cdsBuscoselecionadoChange(Sender: TField);
begin
  inherited;
  exit;
  if (Sender.Value > 0) and not cdsBuscoselecionado.AsBoolean  then
    cdsBuscoselecionado.AsBoolean := True;
end;

procedure TfrmPesqcreditoFatura.cdsBuscoselecionadoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
//  Text := EmptyStr;
end;

procedure TfrmPesqcreditoFatura.cdsBuscousadoChange(Sender: TField);
begin
  inherited;
  if (Sender.Value > 0) and not cdsBuscoselecionado.AsBoolean  then
  begin
    cdsBuscoselecionado.AsBoolean := True;


  end;

end;

procedure TfrmPesqcreditoFatura.cdsBuscousadoValidate(Sender: TField);
begin
  inherited;

  if (Sender.AsFloat > 0) and ( sender.AsFloat > cdsBuscocredito.AsFloat) then
    raise Exception.Create('Não pode inserir valor maior que o crédito disponível');

end;

procedure TfrmPesqcreditoFatura.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  if btnSelect.Visible then
     btnSelect.Click;
end;

procedure TfrmPesqcreditoFatura.cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key=VK_RETURN then
     if btnSelect.Visible then
        btnSelect.Click;

end;

procedure TfrmPesqcreditoFatura.cxGrid1DBTableView1selecionadoPropertiesChange(Sender: TObject);
begin
  inherited;
  if  not (cdsBusco.State in dsEditModes)  then
    cdsBusco.Edit;
  cdsBuscoselecionado.AsBoolean :=  not cdsBuscoselecionado.AsBoolean;
  if cdsBuscoselecionado.AsBoolean then
  begin
    cdsBuscousado.AsFloat :=  cdsBusco.FieldByName('credito').AsFloat
  end
  else
     cdsBusco.FieldByName('usado').AsFloat := 0;
  cdsBusco.Post;
end;

procedure TfrmPesqcreditoFatura.Filtro;
begin
	with qBusco do
	begin
		sql.Clear;
		SQL.Add('select  CODIGO, DOCUMENTO, DATA, VALOR-VALOR_UTILIZADO CREDITO , 0.0 usado from CONTA_CORRENTE cc ');
    SQL.Add(' join cli0000 cl ON (cl.cli_codigo = cc.cod_cliente) ');
    SQL.Add(' left JOIN CONTA_FATURA cfat ON (cfat.CODIGO_CONTA = cc.CODIGO) ');
    SQL.Add(' WHERE TIPO = ''C'' AND CONTA = ''C'' ');
    SQL.Add(' AND  (VALOR-VALOR_UTILIZADO) > 0 ');
    SQL.Add(' AND cod_cliente = '+QuotedStr(Cod_Cliente));

	end;
end;

procedure TfrmPesqcreditoFatura.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
	//Action := caFree;
end;

procedure TfrmPesqcreditoFatura.FormCreate(Sender: TObject);
begin
  inherited;
	Self.ProcedureFiltro:=Filtro;
  pnControle.Visible := False;
  Self.CampoID:='CODIGO';
end;

procedure TfrmPesqcreditoFatura.FormDestroy(Sender: TObject);
begin
//  inherited;
//  frmPesqcreditoFatura := nil;
end;

procedure TfrmPesqcreditoFatura.FormShow(Sender: TObject);
begin
  inherited;
//	AbreTabela:=True;
//	Filtro; // abre tabelas
//  btnPesquisa.Click;
//  DBGrid.ReadOnly := False;
  lbCntRegistros.Caption := IntToStr(cdsBusco.RecordCount) + ' Registro' + iif(cdsBusco.RecordCount <= 1, '', 's');
end;

procedure TfrmPesqcreditoFatura.SetCod_Cliente(const aValue: string);
begin
  fcod_cliente := aValue;
end;

procedure TfrmPesqcreditoFatura.SetValorMaximo(const aValue: double);
begin
   fValorMaximo := aValue;
end;

end.
