unit uVinculacaoCoresRetorno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, InicioDB,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora, Vcl.StdCtrls, Datasnap.DBClient, Datasnap.Provider,
  Vcl.Grids, Vcl.DBGrids, Vcl.Samples.Spin, SgDbSeachComboUnit, Vcl.ExtCtrls, Vcl.Buttons, SimpleDS, JvExStdCtrls, JvEdit, JvValidateEdit, Vcl.Mask, RxToolEdit, RxCurrEdit,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  cxButtonEdit, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid;

type
  TfrmVinculacaoCoresRetorno = class(TfrmBaseDB)
    qCor: TSQLQuery;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    lbReferencia: TLabel;
    lbItem: TLabel;
    cbCor: TSgDbSearchCombo;
    Label3: TLabel;
    Label4: TLabel;
    Panel3: TPanel;
    cdsGrade: TClientDataSet;
    dsGrade: TDataSource;
    BitConfirmar: TBitBtn;
    bitFinalizar: TBitBtn;
    edQuantidade: TCurrencyEdit;
    cdsGradeACO_CODIGO: TIntegerField;
    cdsGradeACO_NOME: TStringField;
    cdsGradeENF_REGISTRO: TIntegerField;
    cdsGradePEDIND_QUANTIDADE: TFMTBCDField;
    cdsGradeBOTAO: TStringField;
    Label5: TLabel;
    lbTotal: TLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ACO_NOME: TcxGridDBColumn;
    cxGrid1DBTableView1PEDIND_QUANTIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1BOTAO: TcxGridDBColumn;
    Bit_Sair: TBitBtn;
    procedure BitConfirmarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbCorSelect(Sender: TObject);
    procedure edQuantidadeKeyPress(Sender: TObject; var Key: Char);
    procedure bitFinalizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ApagaRegistro;
    procedure cxGrid1DBTableView1BOTAOPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGrid1DBTableView1EditKeyUp(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure cxGrid1DBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
  private
    { Private declarations }
  public
    enfRegistro: integer;
    lancaGrade: boolean;
    quantidadeTotal, quantidadeMaxima, quantidadeRetornada: double;


    { Public declarations }
  end;

var
  frmVinculacaoCoresRetorno: TfrmVinculacaoCoresRetorno;

implementation

{$R *.dfm}

uses Uteis;


procedure TfrmVinculacaoCoresRetorno.FormCreate(Sender: TObject);
begin
  inherited;
  cdsGrade.CreateDataSet;
end;

procedure TfrmVinculacaoCoresRetorno.FormShow(Sender: TObject);
begin
  inherited;
  cdsGrade.Filtered := False;
  cdsGrade.Filter := 'ENF_REGISTRO = ' + IntToStr(enfRegistro);
  cdsGrade.Filtered := True;
end;

procedure TfrmVinculacaoCoresRetorno.cbCorSelect(Sender: TObject);
begin
  inherited;
  if edQuantidade.CanFocus then
    edQuantidade.SetFocus;
end;

procedure TfrmVinculacaoCoresRetorno.cxGrid1DBTableView1BOTAOPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  ApagaRegistro;
end;

procedure TfrmVinculacaoCoresRetorno.cxGrid1DBTableView1EditKeyUp(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 46  then
    ApagaRegistro;
end;

procedure TfrmVinculacaoCoresRetorno.cxGrid1DBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  TcxButtonEditProperties(cxGrid1DBTableView1BOTAO.Properties).Buttons[0].Caption := 'Excluir';
end;

procedure TfrmVinculacaoCoresRetorno.edQuantidadeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    BitConfirmar.Click;
    cbCor.SetFocus;
  end;
end;

procedure TfrmVinculacaoCoresRetorno.bitFinalizarClick(Sender: TObject);
var
  total: double;
begin
  inherited;
  if cdsGrade.Recordcount = 0 then
  begin
    MessageDlg('Escolha uma cor.', mtWarning, [mbOK], 0);
    ModalResult := mrNone;
    Abort;
  end;
  cdsGrade.First;
  while not cdsGrade.Eof do
  begin
    total := total + cdsGradePEDIND_QUANTIDADE.AsFloat;
    cdsGrade.Next;
  end;
  quantidadeRetornada := total;
end;

procedure TfrmVinculacaoCoresRetorno.ApagaRegistro;
begin
  quantidadeTotal := quantidadeTotal + cdsGradePEDIND_QUANTIDADE.AsFloat;
  edQuantidade.Value := quantidadeTotal;
  cdsGrade.Delete;
end;

procedure TfrmVinculacaoCoresRetorno.BitConfirmarClick(Sender: TObject);
var
  total: double;
begin
  inherited;
  if cbCor.idRetorno = '' then
  begin
    MessageDlg('Escolha uma cor.', mtWarning, [mbOK], 0);
    Exit;
  end;
  if (edQuantidade.Value <= 0) and lancaGrade then
  begin
    MessageDlg('Escolha uma quantidade válida.', mtWarning, [mbOK], 0);
    Exit;
  end;

  if not lancaGrade then
    if cdsGrade.RecordCount > 0 then
    begin
      MessageDlg('É permitido somente uma cor quando lançado para vários itens.', mtWarning, [mbOK], 0);
      Exit;
    end;


  cdsGrade.First;
  while not cdsGrade.Eof do
  begin
    total := total + cdsGradePEDIND_QUANTIDADE.AsFloat;
    cdsGrade.Next;
  end;
  total := total + edQuantidade.Value;
  if (total > quantidadeMaxima) and lancaGrade  then
  begin
    MessageDlg('Não é possível retornar uma quantidade maior que a quantidade total', mtWarning, [mbOK], 0);
    edQuantidade.SetFocus;
    Exit;
  end;

  cdsGrade.Insert;
  cdsGradeACO_CODIGO.AsString := cbCor.idRetorno;
  cdsGradeACO_NOME.AsString := cbCor.Text;
  cdsGradePEDIND_QUANTIDADE.AsFloat := edQuantidade.Value;
  cdsGradeENF_REGISTRO.AsInteger := enfRegistro;
  cdsGrade.Post;

  if not lancaGrade then
    Exit;


  quantidadeTotal := quantidadeTotal - edQuantidade.Value;
  edQuantidade.Value := quantidadeTotal;

  total := 0;
  cdsGrade.First;
  while not cdsGrade.Eof do
  begin
    total := total + cdsGradePEDIND_QUANTIDADE.AsFloat;
    cdsGrade.Next;
  end;
  lbTotal.Caption := FormatFloat('###.###.###,##', total);


  cbCor.idRetorno := '';
  cbCor.SetFocus;
end;


end.
