unit uCotacaoCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBFormFdac, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxClasses, cxLocalization, ACBrBase, ACBrEnterTab, Vcl.StdCtrls, Vcl.DBCtrls, JvExMask, JvToolEdit,
  Vcl.Mask, SgDbSeachComboUnit, ComboBoxRW, Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
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
  TfrmCotacaoCadastro = class(TfrmBaseDBFDAC)
    pTop: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    cbSetor: TComboBoxRw;
    edSetCodigo: TDBEdit;
    edCotSolicitante: TDBEdit;
    dtCotDataSolCotacao: TJvDateEdit;
    gbProduto: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    cbProduto: TComboBoxRw;
    edPrdRefer: TDBEdit;
    edCitPrdDescricao: TDBEdit;
    edCitQtdeMin: TDBEdit;
    edCitQtdeMax: TDBEdit;
    cbUndMedida: TDBLookupComboBox;
    dtCitDataNecessidade: TJvDateEdit;
    btAdicionarItem: TButton;
    edCotNumero: TDBEdit;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    tbCotacao: TFDTable;
    dsCotacao: TDataSource;
    dsItem: TDataSource;
    tbItem: TFDTable;
    tbUndMedida: TFDTable;
    dsUndMedida: TDataSource;
    tbItemCIT_CODIGO: TIntegerField;
    tbItemCOT_CODIGO: TIntegerField;
    tbItemPRD_REFER: TStringField;
    tbItemCIT_QUANTIDADE_SOLICITADA: TBCDField;
    tbItemPRD_DESCRICAO: TStringField;
    tbItemCIT_QTDE_MIN: TBCDField;
    tbItemCIT_QTDE_MAX: TBCDField;
    tbItemPRD_UNISIGLA: TStringField;
    tbItemCIT_APROVADA: TStringField;
    qItem: TFDQuery;
    dsqItem: TDataSource;
    qItemCIT_CODIGO: TIntegerField;
    qItemCOT_CODIGO: TIntegerField;
    qItemPRD_REFER: TStringField;
    qItemCIT_QUANTIDADE_SOLICITADA: TBCDField;
    qItemCIT_QTDE_MIN: TBCDField;
    qItemCIT_QTDE_MAX: TBCDField;
    qItemPRD_UNISIGLA: TStringField;
    qItemCIT_APROVADA: TStringField;
    qItemPRD_DESCRI: TStringField;
    cxGrid1DBTableView1COT_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1PRD_REFER: TcxGridDBColumn;
    cxGrid1DBTableView1PRD_DESCRI: TcxGridDBColumn;
    cxGrid1DBTableView1CIT_QTDE_MIN: TcxGridDBColumn;
    cxGrid1DBTableView1CIT_QTDE_MAX: TcxGridDBColumn;
    cxGrid1DBTableView1PRD_UNISIGLA: TcxGridDBColumn;
    cxGrid1DBTableView1CIT_CODIGO: TcxGridDBColumn;
    tbItemCIT_DATA_NECESSIDADE: TDateField;
    btGravarItem: TButton;
    Label12: TLabel;
    edCitQuantidadeSolicitada: TDBEdit;
    tbItemCIT_STATUS: TIntegerField;
    cbCitStatus: TComboBox;
    btSair: TButton;
    cxGrid1DBTableView1CIT_QUANTIDADE_SOLICITADA: TcxGridDBColumn;
    DBMemo1: TDBMemo;
    btExcluitItem: TButton;
    tbItemCIT_DATA_AUTORIZACAO: TDateField;
    tbItemCIT_RESPONSAVEL: TStringField;
    tbItemCIT_OBS_AUTORIZACAO: TStringField;
    qItemCIT_DATA_NECESSIDADE: TDateField;
    cxGrid1DBTableView1CIT_DATA_NECESSIDADE: TcxGridDBColumn;
    function GravarSolicitacao(): boolean;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbSetorChange(Sender: TObject);
    procedure edSetCodigoExit(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure btAdicionarItemClick(Sender: TObject);
    procedure btGravarItemClick(Sender: TObject);
    procedure cbProdutoChange(Sender: TObject);
    procedure edPrdReferExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure btExcluitItemClick(Sender: TObject);
    procedure AtualizaItem;
    procedure HabilitaCampos;
    procedure tbItemAfterInsert(DataSet: TDataSet);
  private
    var
      nome :string;
    { Private declarations }
  public
    var
      Inclui: boolean;
      cotCodigo: integer;
    { Public declarations }
  end;

var
  frmCotacaoCadastro: TfrmCotacaoCadastro;

implementation

{$R *.dfm}

uses InicioDB, UCotacaoPesquisa, Uteis;

procedure TfrmCotacaoCadastro.btAdicionarItemClick(Sender: TObject);
begin
  inherited;
  if not GravarSolicitacao()
    then exit;
  if tbItem.State = dsEdit then
    tbItem.Cancel;
  tbItem.Open;
  tbItem.Insert;
  tbUndMedida.Open;
  tbItemCOT_CODIGO.AsInteger := cotCodigo;
  cbCitStatus.ItemIndex := 1;
  btAdicionarItem.Enabled := False;
  btGravarItem.Enabled := True;
  btExcluitItem.Enabled := False;
  HabilitaCampos;
  cbProduto.idRetorno := '';
  edPrdRefer.SetFocus;
end;

procedure TfrmCotacaoCadastro.HabilitaCampos;
begin
  cbProduto.Enabled := True;
  dtCitDataNecessidade.Enabled := True;
  edPrdRefer.Enabled := True;
  edCitPrdDescricao.Enabled := True;
  edCitQuantidadeSolicitada.Enabled := True;
  edCitQtdeMin.Enabled := True;
  edCitQtdeMax.Enabled := True;
  cbUndMedida.Enabled := True;
end;

procedure TfrmCotacaoCadastro.tbItemAfterInsert(DataSet: TDataSet);
begin
  inherited;
  tbItemCIT_CODIGO.AsInteger := GetNextSequence('GEN_COTACAO_ITEM');
end;

procedure TfrmCotacaoCadastro.btGravarItemClick(Sender: TObject);
begin
  inherited;
  if (edPrdRefer.Text = '') and (edCitPrdDescricao.Text = '')  then
  begin
    MessageDlg('É necessário que se informe um produto', mtWarning, [mbOK], 0);
    exit;
  end;
  if (edCitQuantidadeSolicitada.Text = '') then
  begin
    MessageDlg('É necessário que se informe a quantidade desejada.', mtWarning, [mbOK], 0);
    exit;
  end;

  if not GravarSolicitacao()
    then exit;

  if tbItem.State = dsInsert then
  begin
    tbItemCIT_CODIGO.AsInteger := GetNextSequence('GEN_COTACAO_ITEM');
    tbItemCOT_CODIGO.AsInteger := cotCodigo;
  end;

  if tbItem.State in [dsEdit, dsInsert] then
  begin
    tbItemCIT_DATA_NECESSIDADE.AsDateTime := dtCitDataNecessidade.Date;
    tbItemCIT_STATUS.AsInteger := cbCitStatus.ItemIndex;
    tbItem.Post;
  end;
  AtualizaItem;
  frmCotacaoPesquisa.qCotacaoItem.Refresh;
  btAdicionarItem.Enabled := True;
  btGravarItem.Enabled := False;
  btExcluitItem.Enabled := False;
  cbProduto.Enabled := False;
  dtCitDataNecessidade.Enabled := False;
  edPrdRefer.Enabled := False;
  edCitPrdDescricao.Enabled := False;
  edCitQuantidadeSolicitada.Enabled := False;
  edCitQtdeMin.Enabled := False;
  edCitQtdeMax.Enabled := False;
  cbUndMedida.Enabled := False;
end;

procedure TfrmCotacaoCadastro.btSairClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmCotacaoCadastro.btExcluitItemClick(Sender: TObject);
begin
  inherited;
  if tbItemCIT_DATA_AUTORIZACAO.AsDateTime <> 0 then
  begin
    MessageDlg('Este item já teve sua cotação autorizada', mtInformation, [mbOK], 0);
    exit;
  end;
  if MessageDlg('Confirma exclusão do registro?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
    exit;
  tbItem.Delete;
  frmCotacaoPesquisa.qCotacao.Refresh;
  qItem.Refresh;
end;

function TfrmCotacaoCadastro.GravarSolicitacao(): boolean;
begin
  inherited;
  Result := False;
  if edCotSolicitante.Text = '' then
  begin
    MessageDlg('Solicitante não informado.', mtWarning, [mbOK], 0);
    edCotSolicitante.SetFocus;
    exit;
  end;
  if edSetCodigo.Text = '' then
  begin
    MessageDlg('Setor não informado.', mtWarning, [mbOK], 0);
    edSetCodigo.SetFocus;
    exit;
  end;
  if dtCotDataSolCotacao.Date = 0 then
  begin
    MessageDlg('Data da Solicitação não informada.', mtWarning, [mbOK], 0);
    dtCotDataSolCotacao.SetFocus;
    exit;
  end;
  Result := True;
  if Inclui then
  begin
    tbCotacao.FieldByName('COT_CODIGO').AsInteger := GetNextSequence('GEN_COTACAO');
    tbCotacao.FieldByName('EMP_CODIGO').AsString := DBInicio.Empresa.EMP_CODIGO;
    Inclui := False;
  end;
  cotCodigo := tbCotacao.FieldByName('COT_CODIGO').AsInteger;
  if tbCotacao.State = dsBrowse then
    tbCotacao.Edit;
  tbCotacao.FieldByName('COT_DATA_SOL_COTACAO').AsDateTime := dtCotDataSolCotacao.Date;
  tbCotacao.Post;
  tbCotacao.Edit;
  frmCotacaoPesquisa.qCotacao.Refresh;
end;

procedure TfrmCotacaoCadastro.cbProdutoChange(Sender: TObject);
begin
  inherited;
  if tbItem.State in [dsInactive, dsBrowse] then
  begin
    MessageDlg('É necessário escolher uma ação para prosseguir: Selecionar Item na grade ou Adicionar Item.', mtWarning, [mbOK], 0);
    exit;
  end;

  tbItemPRD_REFER.AsString := cbProduto.idRetorno;
  tbItemPRD_UNISIGLA.AsString := BuscaUmDadoSqlAsString('SELECT PRD_UND FROM PRD0000 WHERE PRD_REFER = ' + QuotedStr(cbProduto.idRetorno));
  edCitPrdDescricao.Text := cbProduto.Text;
  edCitQuantidadeSolicitada.SetFocus;
end;

procedure TfrmCotacaoCadastro.cbSetorChange(Sender: TObject);
begin
  inherited;
  if tbCotacao.State = dsBrowse then
    tbCotacao.Edit;
  tbCotacao.FieldByName('SET_CODIGO').AsString := cbSetor.idRetorno;
end;

procedure TfrmCotacaoCadastro.cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState;
  var AHandled: Boolean);
begin
  inherited;
  tbItem.Close;
  tbItem.Filtered := False;
  tbItem.Filter := ' CIT_CODIGO = ' + qItemCIT_CODIGO.AsString;
  tbItem.Filtered := True;
  tbItem.Open;
  tbItem.Edit;
  dtCitDataNecessidade.Date := tbItemCIT_DATA_NECESSIDADE.AsDateTime;
  cbCitStatus.ItemIndex := tbItemCIT_STATUS.AsInteger;
  cbProduto.IdRetorno := tbItemPRD_REFER.AsString;
  edCitPrdDescricao.Text := tbitemPRD_DESCRICAO.AsString;
  btGravarItem.Enabled := True;
  btExcluitItem.Enabled := True;
  btAdicionarItem.Enabled := True;
  HabilitaCampos;
end;

procedure TfrmCotacaoCadastro.edPrdReferExit(Sender: TObject);
begin
  inherited;
  cbProduto.idRetorno := tbItemPRD_REFER.AsString;
end;

procedure TfrmCotacaoCadastro.edSetCodigoExit(Sender: TObject);
begin
  inherited;
  cbSetor.idRetorno := edSetCodigo.Text;
end;

procedure TfrmCotacaoCadastro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  TestaPasta ( dbInicio.SistemaLocal+'settings' );
  cxGrid1DBTableView1.StoreToIniFile(dbInicio.SistemaLocal+'settings\'+nome, True, [gsoUseFilter] );
  Action := caFree;
  frmCotacaoCadastro := nil;
  if frmCotacaoPesquisa <> nil then
    frmCotacaoPesquisa.AbreOperacoes(1);

end;

procedure TfrmCotacaoCadastro.FormCreate(Sender: TObject);
begin
  inherited;
  nome:= 'frmCotacaoCadastro.cxGrid1DBBandedTableView1' + DBInicio.Usuario.CODIGO +  '.grid';
end;

procedure TfrmCotacaoCadastro.FormShow(Sender: TObject);
begin
  inherited;
  cxGrid1DBTableView1.RestoreFromIniFile(dbInicio.SistemaLocal+'settings\'+nome, True, True, [gsoUseFilter] );
  btGravarItem.Enabled := False;
  btExcluitItem.Enabled := False;
  AtualizaItem;
end;

procedure TfrmCotacaoCadastro.AtualizaItem;
begin
  qItem.Close;
  qItem.SQL.Text := 'SELECT ci.*, ' +
    '     CASE WHEN (ci.PRD_REFER IS NULL) OR (ci.PRD_REFER = '''') ' +
    '     THEN ci.PRD_DESCRICAO ' +
    '     ELSE pr.PRD_DESCRI ' +
    '   END AS PRD_DESCRI ' +
    ' FROM COTACAO_ITEM ci ' +
    ' LEFT JOIN PRD0000 pr ON (pr.PRD_REFER = ci.PRD_REFER) ' +
    ' WHERE ci.COT_CODIGO = ' + IntToStr(cotCodigo) +
    ' ORDER BY COT_CODIGO, CIT_CODIGO ';
  qItem.Open;

end;
end.
