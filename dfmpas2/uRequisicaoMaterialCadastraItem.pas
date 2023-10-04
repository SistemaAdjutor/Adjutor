unit uRequisicaoMaterialCadastraItem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, JvExMask, JvSpin, JvDBSpinEdit, Datasnap.DBClient, Datasnap.Provider, Vcl.Mask, Vcl.DBCtrls, Vcl.StdCtrls, SgDbSeachComboUnit, Vcl.Buttons, Vcl.ExtCtrls,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfrmRequisicaoMaterialCadastraItem = class(TfrmBaseDB)
    Panel1: TPanel;
    btCancela: TBitBtn;
    btSalva: TBitBtn;
    btExclui: TBitBtn;
    btNovo: TBitBtn;
    btEdita: TBitBtn;
    btSai: TBitBtn;
    Panel2: TPanel;
    lbDescCodigo: TLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    cbProduto: TSgDbSearchCombo;
    dbPrdRefer: TDBEdit;
    lbRemCodigo: TLabel;
    qItem: TSQLQuery;
    dspItem: TDataSetProvider;
    cdsItem: TClientDataSet;
    dsItem: TDataSource;
    cdsItemRMI_CODIGO: TIntegerField;
    cdsItemREM_CODIGO: TIntegerField;
    cdsItemPRD_REFER: TStringField;
    cdsItemRMI_QUANTIDADE: TFMTBCDField;
    JvDBSpinEdit1: TJvDBSpinEdit;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1RMI_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1REM_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1PRD_REFER: TcxGridDBColumn;
    cxGrid1DBTableView1RMI_QUANTIDADE: TcxGridDBColumn;
    qItemAut: TSQLTable;
    dspItemAut: TDataSetProvider;
    cdsItemAut: TClientDataSet;
    dsItemAut: TDataSource;
    cdsItemAutRMA_CODIGO: TIntegerField;
    cdsItemAutRMI_CODIGO: TIntegerField;
    cdsItemAutUSU_NOME: TStringField;
    cdsItemAutRMA_SITUACAO: TStringField;
    cdsItemAutRMA_STATUS: TStringField;
    cdsItemAutRMA_DATA: TDateField;
    Label2: TLabel;
    procedure cxGrid1DBTableView1PRD_REFERGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
    procedure dbPrdReferExit(Sender: TObject);
    procedure cbProdutoSelect(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure btEditaClick(Sender: TObject);
    procedure btExcluiClick(Sender: TObject);
    procedure btSalvaClick(Sender: TObject);
    procedure btSaiClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCancelaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbPrdReferChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    procedure HabilitaGravacao(estado: boolean);
    var
      arquivo: string;
    { Public declarations }
  end;

var
  frmRequisicaoMaterialCadastraItem: TfrmRequisicaoMaterialCadastraItem;

implementation

{$R *.dfm}

uses InicioDB, uRequisicaoMaterial;

procedure TfrmRequisicaoMaterialCadastraItem.btCancelaClick(Sender: TObject);
begin
  inherited;
  cdsItem.CancelUpdates;
  cdsItemAut.CancelUpdates;
  HabilitaGravacao(False);
end;

procedure TfrmRequisicaoMaterialCadastraItem.btEditaClick(Sender: TObject);
begin
  inherited;
  if BuscaUmDadoSqlAsString('SELECT RMA_STATUS FROM REQUISICAO_MATERIAL_AUT WHERE RMI_CODIGO = ' + cdsItemRMI_CODIGO.AsString) = 'C' then
  begin
    MessageDlg('Material já foi retirado do almoxarifado, impossível editar.', mtWarning, [mbOk], 0);
    Exit;
  end;

  cdsItem.Edit;
  HabilitaGravacao(True);
end;

procedure TfrmRequisicaoMaterialCadastraItem.btExcluiClick(Sender: TObject);
begin
  inherited;
  if BuscaUmDadoSqlAsString('SELECT RMA_STATUS FROM REQUISICAO_MATERIAL_AUT WHERE RMI_CODIGO = ' + cdsItemRMI_CODIGO.AsString) = 'C' then
  begin
    MessageDlg('Material já foi retirado do almoxarifado, impossível excluir.', mtWarning, [mbOk], 0);
    Exit;
  end;

  if MessageDlg('Confirma a exclusão do item?', mtConfirmation, [mbYes, mbNo],0) = mrYes then
  begin
    cdsItem.Delete;
    cdsItem.ApplyUpdates(0);
  end;
end;

procedure TfrmRequisicaoMaterialCadastraItem.btNovoClick(Sender: TObject);
begin
  inherited;
  cdsItem.Insert;
  cdsItemAut.Insert;
  HabilitaGravacao(True);
end;

procedure TfrmRequisicaoMaterialCadastraItem.btSaiClick(Sender: TObject);
begin
  inherited;
  Close;
 end;

procedure TfrmRequisicaoMaterialCadastraItem.btSalvaClick(Sender: TObject);
begin
  inherited;
  if cdsItemRMI_CODIGO.AsString <> '' then
    if BuscaUmDadoSqlAsString('SELECT RMA_SITUACAO FROM REQUISICAO_MATERIAL_AUT WHERE RMI_CODIGO = ' + cdsItemRMI_CODIGO.AsString) = 'A' then
    begin
      MessageDlg('Já foi autorizada a retirada deste material, impossível Editar.', mtWarning, [mbOk], 0);
      HabilitaGravacao(False);
      Exit;
    end;

  if cdsItem.State = dsBrowse then
    cdsItem.edit;
  if cdsItem.State = dsInsert then
  begin
    cdsItemRMI_CODIGO.AsInteger := DBInicio.GetNextSequence('GEN_REQUISICAO_MATERIAL_ITEM');
    cdsItemAutRMA_CODIGO.AsInteger := DBInicio.GetNextSequence('GEN_REQUISICAO_MATERIAL_AUT');
    cdsItemAutRMI_CODIGO.AsInteger := cdsItemRMI_CODIGO.AsInteger;
    cdsItemAut.Post;
    cdsItemAut.ApplyUpdates(0);
  end;
  cdsItemREM_CODIGO.AsInteger := StrToInt(lbRemCodigo.Caption);
  cdsItem.Post;
  cdsItem.ApplyUpdates(0);
  HabilitaGravacao(False);
end;

procedure TfrmRequisicaoMaterialCadastraItem.cbProdutoSelect(Sender: TObject);
begin
  inherited;
  dbPrdRefer.Text := cbProduto.idRetorno;
end;

procedure TfrmRequisicaoMaterialCadastraItem.cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState;
  var AHandled: Boolean);
begin
  inherited;
  if BuscaUmDadoSqlAsString('SELECT RMA_STATUS FROM REQUISICAO_MATERIAL_AUT WHERE RMI_CODIGO = ' + cdsItemRMI_CODIGO.AsString) = 'C' then
  begin
    MessageDlg('Material já foi retirado do almoxarifado, impossível Editar.', mtWarning, [mbOk], 0);
    HabilitaGravacao(False);
    Exit;
  end
  else
    if BuscaUmDadoSqlAsString('SELECT RMA_SITUACAO FROM REQUISICAO_MATERIAL_AUT WHERE RMI_CODIGO = ' + cdsItemRMI_CODIGO.AsString) = 'A' then
    begin
      MessageDlg('Já foi autorizada a retirada deste material, impossível Editar.', mtWarning, [mbOk], 0);
      HabilitaGravacao(False);
      Exit;
    end
  else
    HabilitaGravacao(True);

end;

procedure TfrmRequisicaoMaterialCadastraItem.cxGrid1DBTableView1PRD_REFERGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
begin
  inherited;
  AText := BuscaUmDadoSqlAsString('SELECT PRD_DESCRI FROM PRD0000 WHERE PRD_REFER = ' + QuotedStr(AText));
end;

procedure TfrmRequisicaoMaterialCadastraItem.dbPrdReferChange(Sender: TObject);
begin
  inherited;
//  cbProduto.idRetorno := dbPrdRefer.Text;
end;

procedure TfrmRequisicaoMaterialCadastraItem.dbPrdReferExit(Sender: TObject);
begin
  inherited;
  cbProduto.idRetorno := dbPrdRefer.Text;
end;

procedure TfrmRequisicaoMaterialCadastraItem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cxGrid1DBTableView1.StoreToIniFile(arquivo, True, [gsoUseFilter] );
  inherited;
  frmRequisicaoMaterial.Novo := True;
  frmRequisicaoMaterial.cdsItem.Close;
  frmRequisicaoMaterial.cdsItem.Open;
  frmRequisicaoMaterial.cdsRequisicao.Close;
  frmRequisicaoMaterial.cdsRequisicao.Open;
  frmRequisicaoMaterial.cdsRequisicao.Locate('REM_CODIGO', cdsItemREM_CODIGO.AsInteger , []);
  frmRequisicaoMaterial.Filtra;
  frmRequisicaoMaterial.Novo := False;
  Action := caFree;
  frmRequisicaoMaterialCadastraItem := nil;
end;

procedure TfrmRequisicaoMaterialCadastraItem.FormCreate(Sender: TObject);
begin
  inherited;
  cbProduto.WherePersonalizado := ' WHERE PRD_STATUS = ''A'' AND AMX_CODIGO = ' + QuotedStr(frmRequisicaoMaterial.cbAlmoxarifado.idRetorno);
end;

procedure TfrmRequisicaoMaterialCadastraItem.FormShow(Sender: TObject);
begin
  inherited;
  arquivo := dbInicio.SistemaLocal + 'settings\' + Self.Name + 'cxGrid1DBTableView1.grid';
  cxGrid1DBTableView1.RestoreFromIniFile(arquivo, True, True, [gsoUseFilter] );
  if not cdsItemAut.Active then
    cdsItemAut.Open;
end;

procedure TfrmRequisicaoMaterialCadastraItem.HabilitaGravacao(estado: boolean);
begin
  btNovo.Enabled     := not estado;
  btExclui.Enabled   := not estado;
  btEdita.Enabled    := not estado;
  btCancela.Enabled  := estado;
  btSalva.Enabled    := estado;
end;

end.
