unit uRequisicaoMaterial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDbEstoqueForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora, Vcl.StdCtrls, Vcl.Mask, RxToolEdit,
  RxCurrEdit, Vcl.Buttons, JvExControls, JvArrowButton, Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, Datasnap.Provider, Datasnap.DBClient, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, SgDbSeachComboUnit,
  Vcl.DBCtrls, frxClass, frxDBSet, Vcl.ComCtrls, JvExComCtrls, JvStatusBar,
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
  TfrmRequisicaoMaterial = class(TfrmBaseDbEstoque)
    Panel1: TPanel;
    lbDescCodigo: TLabel;
    Panel2: TPanel;
    btImprime: TJvArrowButton;
    btCancela: TBitBtn;
    btSalva: TBitBtn;
    btExclui: TBitBtn;
    btNovo: TBitBtn;
    btConsulta: TBitBtn;
    btEdita: TBitBtn;
    btSai: TBitBtn;
    Panel3: TPanel;
    btAdicionarItem: TBitBtn;
    gbTotalItens: TGroupBox;
    lbItens: TLabel;
    CurTotalItens: TCurrencyEdit;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    lbDtReq: TLabel;
    qRequisicao: TSQLQuery;
    qItem: TSQLQuery;
    dsItem: TDataSource;
    dsRequisicao: TDataSource;
    cdsItem: TClientDataSet;
    cdsRequisicao: TClientDataSet;
    dspRequisicao: TDataSetProvider;
    dspItem: TDataSetProvider;
    cdsItemRMI_CODIGO: TIntegerField;
    cdsItemREM_CODIGO: TIntegerField;
    cdsItemPRD_REFER: TStringField;
    cdsItemRMI_QUANTIDADE: TFMTBCDField;
    cdsRequisicaoREM_CODIGO: TIntegerField;
    cdsRequisicaoEMP_CODIGO: TStringField;
    cdsRequisicaoAMX_CODIGO: TStringField;
    cdsRequisicaoREM_DATA: TDateField;
    cdsRequisicaoREM_REQUISITANTE: TStringField;
    cdsRequisicaoSET_CODIGO: TIntegerField;
    cxGrid1DBTableView1RMI_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1REM_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1PRD_REFER: TcxGridDBColumn;
    cxGrid1DBTableView1RMI_QUANTIDADE: TcxGridDBColumn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    cbAlmoxarifado: TSgDbSearchCombo;
    qAlmoxarifado: TSQLQuery;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    cbSetor: TSgDbSearchCombo;
    qSetor: TSQLQuery;
    Panel4: TPanel;
    dbData: TDBText;
    dbCodigo: TDBText;
    dbAmxCodigo: TDBEdit;
    dbSetCodigo: TDBEdit;
    dbRequisitante: TDBEdit;
    frxRequisicao: TfrxReport;
    frxDBRequisicao: TfrxDBDataset;
    qRelatorio: TSQLQuery;
    dsRelatorio: TDataSource;
    cdsRequisicaoREM_OBSERVACAO: TMemoField;
    btAutoriza: TBitBtn;
    GroupBox3: TGroupBox;
    dbObservacao: TDBMemo;
    cdsItemPRD_UND: TStringField;
    cxGrid1DBTableView1PRD_UND: TcxGridDBColumn;
    cdsRequisicaoREM_STATUS: TStringField;
    rgRemStatus: TDBRadioGroup;
    cdsItemAMX_CODIGO: TStringField;
    GroupBox4: TGroupBox;
    StatusBar: TJvStatusBar;
    lbStatus: TLabel;
    lbVerde: TLabel;
    lbVermelho: TLabel;
    gbOrigem: TGroupBox;
    lbOrigem: TLabel;
    cdsRequisicaoRMO_CODIGO: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbAlmoxarifadoSelect(Sender: TObject);
    procedure edSetorExit(Sender: TObject);
    procedure cbSetorSelect(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbAmxCodigoExit(Sender: TObject);
    procedure cdsRequisicaoAfterEdit(DataSet: TDataSet);
    procedure btSaiClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure btEditaClick(Sender: TObject);
    procedure btSalvaClick(Sender: TObject);
    procedure btExcluiClick(Sender: TObject);
    procedure cxGrid1DBTableView1PRD_REFERGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
    procedure btConsultaClick(Sender: TObject);
    procedure btAdicionarItemClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure frxRequisicaoBeginDoc(Sender: TObject);
    procedure frxRequisicaoGetValue(const VarName: string; var Value: Variant);
    procedure btImprimeClick(Sender: TObject);
    procedure btCancelaClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btAutorizaClick(Sender: TObject);
    procedure dbAmxCodigoChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure rgRemStatusChange(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    { Private declarations }
    procedure HabilitaGravacao(estado: boolean);
    procedure CriafrmRequisicaoMaterialCadastraItem;
  var
      Origem: Integer;
  public
    procedure Filtra;
    var
      arquivo: string;
      Novo: boolean;
    { Public declarations }
  end;

var
  frmRequisicaoMaterial: TfrmRequisicaoMaterial;

implementation

{$R *.dfm}

uses uteis, InicioDB, uRequisicaoMaterialPesq, uRequisicaoMaterialCadastraItem, uRequisicaoMaterialAutorizacao;

procedure TfrmRequisicaoMaterial.FormShow(Sender: TObject);
begin
  inherited;
  arquivo := dbInicio.SistemaLocal + 'settings\' + Self.Name + 'cxGrid1DBTableView1.grid';
  cxGrid1DBTableView1.RestoreFromIniFile(arquivo, True, True, [gsoUseFilter] );
  cdsRequisicao.Open;
  cdsRequisicao.Last;
  cdsItem.Open;
  if cdsRequisicaoRMO_CODIGO.AsString = '' then
    lbOrigem.Caption := 'Indefinido'
  else
    lbOrigem.Caption := BuscaUmDadoSqlAsString('SELECT RMO_DESCRICAO FROM REQUISICAO_MATERIAL_ORI WHERE RMO_CODIGO = ' + cdsRequisicaoRMO_CODIGO.AsString);
  Filtra;
  cbAlmoxarifado.idRetorno := cdsRequisicaoAMX_CODIGO.AsString;
  cbSetor.idRetorno := cdsRequisicaoSET_CODIGO.AsString;
  HabilitaGravacao(False);
end;

procedure TfrmRequisicaoMaterial.frxRequisicaoBeginDoc(Sender: TObject);
begin
  inherited;
  TfrxPictureView(frxRequisicao.FindObject('LogoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);
end;

procedure TfrmRequisicaoMaterial.frxRequisicaoGetValue(const VarName: string; var Value: Variant);
begin
  inherited;
  if (VarName  = 'RAZAO') then
     Value := dbInicio.Empresa.FANTASIA
  else
  if (VarName  = 'CNPJ') then
     Value := dbInicio.Empresa.CNPJ_CNPF
  else
  if (VarName  = 'OBSERVACAO') then
       Value := cdsRequisicaoREM_OBSERVACAO.AsString
  else
  if (VarName  = 'ENDERECO') then
     Value := dbInicio.Empresa.ENDERECO ;
  if (VarName  = 'BAIRRO') then
     Value := dbInicio.Empresa.BAIRRO;
  if (VarName  = 'CIDADE') then
     Value := dbInicio.Empresa.CIDADE + ' - ' + dbInicio.Empresa.UF      ;
end;

procedure TfrmRequisicaoMaterial.HabilitaGravacao(estado: boolean);
begin
  btConsulta.Enabled := not estado;
  btImprime.Enabled  := not estado;
  btNovo.Enabled     := not estado;
  btExclui.Enabled   := not estado;
  btEdita.Enabled    := not estado;
  btCancela.Enabled  := estado;
  btSalva.Enabled    := estado;
end;

procedure TfrmRequisicaoMaterial.rgRemStatusChange(Sender: TObject);
begin
  inherited;
  if cdsRequisicaoREM_STATUS.AsString = 'P' then lbStatus.Caption := 'Pendente'
  else
  if cdsRequisicaoREM_STATUS.AsString = 'A' then lbStatus.Caption := 'Atendido'
  else
  if cdsRequisicaoREM_STATUS.AsString = 'R' then lbStatus.Caption := 'Parcial';
end;

procedure TfrmRequisicaoMaterial.dbAmxCodigoChange(Sender: TObject);
begin
  inherited;
  cbAlmoxarifado.idRetorno := dbAmxCodigo.Text;
end;

procedure TfrmRequisicaoMaterial.dbAmxCodigoExit(Sender: TObject);
begin
  inherited;
if BuscaUmDadoSqlAsString('SELECT USU_CODIGO FROM USUARIO_ALMOXARIFADO ua WHERE ua.USU_CODIGO = ' + DBInicio.Usuario.CODIGO + ' AND ua.AMX_CODIGO = ' + QuotedStr(cbAlmoxarifado.idRetorno)) = '' then
  begin
     MessageDlg('Usuário não autorizado para utilizar este almoxarifado', mtWarning, [mbOK], 0);
     cbAlmoxarifado.SetFocus;
     Exit;
  end;
  cbAlmoxarifado.idRetorno := dbAmxCodigo.Text;
end;

procedure TfrmRequisicaoMaterial.btAdicionarItemClick(Sender: TObject);
begin
  inherited;
  if rgRemStatus.ItemIndex = 1 then
  begin
    MessageDlg('Esta Requisição já foi totalmente atendida. Impossível adicionar mais itens.', mtWarning, [mbOk], 0);
    Exit;
  end;

  btSalva.Click;
  CriafrmRequisicaoMaterialCadastraItem;

  frmRequisicaoMaterialCadastraItem.cdsItem.Insert;
  frmRequisicaoMaterialCadastraItem.cdsItemAut.Open;
  frmRequisicaoMaterialCadastraItem.cdsItemAut.Insert;
  frmRequisicaoMaterialCadastraItem.cdsItemREM_CODIGO.AsString := cdsRequisicaoREM_CODIGO.AsString;
  frmRequisicaoMaterialCadastraItem.HabilitaGravacao(True);
  frmRequisicaoMaterialCadastraItem.ShowModal;
 end;

procedure TfrmRequisicaoMaterial.btAutorizaClick(Sender: TObject);
begin
  inherited;
  if not assigned(frmRequisicaoMaterialAutorizacao) then
    frmRequisicaoMaterialAutorizacao := TfrmRequisicaoMaterialAutorizacao.Create(Application);
  frmRequisicaoMaterialAutorizacao.btLimpar.Click;

  frmRequisicaoMaterialAutorizacao.btPesquisar.Click;
  frmRequisicaoMaterialAutorizacao.ShowModal;
end;

procedure TfrmRequisicaoMaterial.btCancelaClick(Sender: TObject);
begin
  inherited;
  Novo := True;
  cdsRequisicao.CancelUpdates;
  cdsItem.Close;
  cdsItem.Open;
  cdsRequisicao.Close;
  cdsRequisicao.Open;
  frmRequisicaoMaterial.Filtra;
  Novo := false;
  HabilitaGravacao(False);
end;

procedure TfrmRequisicaoMaterial.btConsultaClick(Sender: TObject);

begin
  inherited;
  if not assigned(frmRequisicaoMaterialPesq) then
    frmRequisicaoMaterialPesq := TfrmRequisicaoMaterialPesq.Create(Application);
  frmRequisicaoMaterialPesq.ShowModal;
  if frmRequisicaoMaterialPesq.cxGrid1DBTableView1.DataController.Controller.SelectedRecords[0] <> nil then
    cdsRequisicao.Locate('REM_CODIGO',  VarToStr(frmRequisicaoMaterialPesq.cxGrid1DBTableView1.DataController.Controller.SelectedRecords[0].Values[frmRequisicaoMaterialPesq.cxGrid1DBTableView1REM_CODIGO.Index]), [] );
  if cdsRequisicaoRMO_CODIGO.AsString = '' then
    lbOrigem.Caption := 'Indefinido'
  else
    lbOrigem.Caption := BuscaUmDadoSqlAsString('SELECT RMO_DESCRICAO FROM REQUISICAO_MATERIAL_ORI WHERE RMO_CODIGO = ' + cdsRequisicaoRMO_CODIGO.AsString);
  Filtra;
end;

procedure TfrmRequisicaoMaterial.btEditaClick(Sender: TObject);
begin
  inherited;
  Novo := false;
  if rgRemStatus.ItemIndex = 1 then
  begin
    MessageDlg('Esta Requisição já foi totalmente atendida. Impossível editar.', mtWarning, [mbOk], 0);
    Exit;
  end;
  cdsRequisicao.Edit;
  HabilitaGravacao(True);
end;

procedure TfrmRequisicaoMaterial.btExcluiClick(Sender: TObject);
begin
  inherited;
  if BuscaUmDadoSqlAsInteger(
    'SELECT count(rma.RMI_CODIGO) ' +
    '  FROM REQUISICAO_MATERIAL_AUT rma ' +
    '  JOIN REQUISICAO_MATERIAL_ITEM rmi ON (rmi.RMI_CODIGO = rma.RMI_CODIGO ) ' +
    '  JOIN REQUISICAO_MATERIAL rm ON (rm.REM_CODIGO = rmi.REM_CODIGO) ' +
    '  WHERE rma.RMA_STATUS = ''C'' AND  rm.REM_CODIGO = ' +
    cdsRequisicaoREM_CODIGO.AsString) > 0 then
  begin
    MessageDlg('Esta requisição já teve material retirado do almoxarifado, impossível excluir.', mtWarning, [mbOk], 0);
    Exit;
  end;

  if MessageDlg('Confirma exclusão da Requisição e todos os seus itens?', mtConfirmation, [mbYes, mbNo],0) = mrYes then
  begin
    qAux.Close;
    qAux.SQL.Text := 'DELETE FROM REQUISICAO_MATERIAL_ITEM WHERE REM_CODIGO = ' + cdsItemREM_CODIGO.AsString;
    qAux.ExecSQL;
    cdsRequisicao.Delete;
    cdsRequisicao.ApplyUpdates(0);
    Filtra;
  end;
end;

procedure TfrmRequisicaoMaterial.btImprimeClick(Sender: TObject);
begin
  inherited;
  qRelatorio.Close;
  qRelatorio.SQL.Text :=
    'SELECT rm.*, rmi.*, rmo.*,' +
    ' CASE rm.REM_STATUS WHEN ''P'' THEN ''Pendente'' WHEN ''A'' THEN ''Atendido'' ELSE ''Parcial'' END AS ReqStatus, ' +
    ' CASE rma.RMA_STATUS WHEN ''C'' THEN ''Atendido'' ELSE ''Pendente'' END AS RMA_STATUS, ' +
    ' p.PRD_DESCRI, p.PRD_UND, rmi.RMI_QUANTIDADE, s.SET_DESCRICAO, a.AMX_DESCRI, ' +
    ' (SELECT FIRST 1 kas_saldo ' +
    '    FROM kardex_almox_saldo k ' +
    '    WHERE prd_codigo = ' +
    '      (SELECT PRD_CODIGO ' +
    '        FROM PRD0000 p2 ' +
    '          WHERE p2.PRD_REFER = p.PRD_REFER) ' +
    '          AND AMX_CODIGO = ' + QuotedStr(dbAmxCodigo.Text) +
    '          AND k.EMP_CODIGO = ' + QuotedStr(DBInicio.Empresa.EMP_CODIGO) +  ') AS Saldo ' +
    '	FROM REQUISICAO_MATERIAL rm ' +
    ' JOIN REQUISICAO_MATERIAL_ITEM rmi ON (rm.REM_CODIGO = rmi.REM_CODIGO) ' +
    ' JOIN REQUISICAO_MATERIAL_AUT rma ON (rma.RMI_CODIGO = rmi.RMI_CODIGO) ' +
    ' JOIN REQUISICAO_MATERIAL_ORI rmo ON (rm.RMO_CODIGO = rmo.RMO_CODIGO) ' +
    ' JOIN PRD0000 p ON (p.PRD_REFER = rmi.PRD_REFER ) ' +
    ' JOIN SETOR s ON (s.SET_CODIGO = rm.SET_CODIGO) ' +
    ' JOIN ALMOX0000 a ON (a.AMX_CODIGO = rm.AMX_CODIGO) ' +
    ' WHERE rm.REM_CODIGO = ' + dbCodigo.Caption;
  qRelatorio.Open;
  if DBInicio.IsDesenvolvimento then
    CopyToClipBoard(qRelatorio.SQL.Text);
  frxRequisicao.ShowReport();
end;

procedure TfrmRequisicaoMaterial.btNovoClick(Sender: TObject);
begin
  inherited;
  Novo := True;
  cdsRequisicao.Insert;
  cbAlmoxarifado.idRetorno := '';
  cbSetor.idRetorno := '';
  Origem := 1;  // Origem 1 Lançamento Manual
  Novo := False;
  lbOrigem.Caption := BuscaUmDadoSqlAsString('SELECT RMO_DESCRICAO FROM REQUISICAO_MATERIAL_ORI WHERE RMO_CODIGO = ' + IntToStr(Origem));
  Filtra;
  HabilitaGravacao(True);
end;

procedure TfrmRequisicaoMaterial.btSaiClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmRequisicaoMaterial.btSalvaClick(Sender: TObject);
begin
  inherited;
  if cdsRequisicao.State = dsBrowse then
    cdsRequisicao.edit;
  if cdsRequisicao.State = dsInsert then
  begin
    cdsRequisicaoREM_CODIGO.AsInteger := DBInicio.GetNextSequence('GEN_REQUISICAO_MATERIAL');
    cdsRequisicaoREM_DATA.AsDateTime := Now;
    cdsRequisicaoEMP_CODIGO.AsString := DBInicio.Empresa.EMP_CODIGO;
    cdsRequisicaoRMO_CODIGO.AsInteger := Origem;
  end;
  cdsRequisicao.Post;
  cdsRequisicao.ApplyUpdates(0);
  HabilitaGravacao(False);
end;

procedure TfrmRequisicaoMaterial.cbAlmoxarifadoSelect(Sender: TObject);
begin
  inherited;
  if Novo then
    exit;
  if BuscaUmDadoSqlAsString('SELECT USU_CODIGO FROM USUARIO_ALMOXARIFADO ua WHERE ua.USU_CODIGO = ' + DBInicio.Usuario.CODIGO + ' AND ua.AMX_CODIGO = ' + QuotedStr(cbAlmoxarifado.idRetorno)) = '' then
  begin
     MessageDlg('Usuário não autorizado para utilizar este almoxarifado', mtWarning, [mbOK], 0);
     cbAlmoxarifado.SetFocus;
     Exit;
  end;
  dbAmxCodigo.Text := cbAlmoxarifado.idRetorno;
  if not (cdsRequisicao.State in dsEditModes) then
    cdsRequisicao.Edit;
end;

procedure TfrmRequisicaoMaterial.cbSetorSelect(Sender: TObject);
begin
  inherited;
  dbSetCodigo.Text := cbSetor.idRetorno;
  if not (cdsRequisicao.State in dsEditModes) then
    cdsRequisicao.Edit;
end;


procedure TfrmRequisicaoMaterial.cdsRequisicaoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  HabilitaGravacao(True);
end;

procedure TfrmRequisicaoMaterial.CriafrmRequisicaoMaterialCadastraItem;
begin
  if not assigned(frmRequisicaoMaterialCadastraItem) then
    frmRequisicaoMaterialCadastraItem := TfrmRequisicaoMaterialCadastraItem.Create(Application);
  frmRequisicaoMaterialCadastraItem.cdsItem.Open;
  frmRequisicaoMaterialCadastraItem.cdsItem.Filtered := False;
  frmRequisicaoMaterialCadastraItem.cdsItem.Filter := 'REM_CODIGO = ' + dbCodigo.Caption;
  frmRequisicaoMaterialCadastraItem.cdsItem.Filtered := True;
  frmRequisicaoMaterialCadastraItem.lbRemCodigo.Caption := cdsRequisicaoREM_CODIGO.AsString;

end;

procedure TfrmRequisicaoMaterial.cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if BuscaUmDadoSqlAsString('SELECT RMA_STATUS FROM REQUISICAO_MATERIAL_AUT WHERE RMI_CODIGO = ' + VarToStr(Sender.DataController.GetValue(AViewInfo.GridRecord.RecordIndex, 0)) ) = 'C' then // concluído - atendido
    ACanvas.Font.Color := clGreen
  else
  if BuscaUmDadoSqlAsString('SELECT RMA_STATUS FROM REQUISICAO_MATERIAL_AUT WHERE RMI_CODIGO = ' + VarToStr(Sender.DataController.GetValue(AViewInfo.GridRecord.RecordIndex, 0)) ) = 'P' then // pendente
    ACanvas.Font.Color := clRed;

end;

procedure TfrmRequisicaoMaterial.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  CriafrmRequisicaoMaterialCadastraItem;
  frmRequisicaoMaterialCadastraItem.cdsItem.Locate('RMI_CODIGO',  VarToStr(cxGrid1DBTableView1.DataController.Controller.SelectedRecords[0].Values[cxGrid1DBTableView1RMI_CODIGO.Index]), [] );
  frmRequisicaoMaterialCadastraItem.btEdita.Click;
  frmRequisicaoMaterialCadastraItem.cbProduto.idRetorno := frmRequisicaoMaterialCadastraItem.cdsItemPRD_REFER.AsString;
  frmRequisicaoMaterialCadastraItem.ShowModal;
end;

procedure TfrmRequisicaoMaterial.cxGrid1DBTableView1PRD_REFERGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
begin
  inherited;
  AText := AText + ' - ' + BuscaUmDadoSqlAsString('SELECT PRD_DESCRI FROM PRD0000 WHERE PRD_REFER = ' + QuotedStr(AText));
end;

procedure TfrmRequisicaoMaterial.edSetorExit(Sender: TObject);
begin
  inherited;
  cbSetor.idRetorno := dbSetCodigo.Text;
end;

procedure TfrmRequisicaoMaterial.Filtra;
begin
    cdsItem.Filtered := False;
    cdsItem.Filter :=
      'REM_CODIGO = ' + iif(cdsRequisicaoREM_CODIGO.AsString = '', '0', cdsRequisicaoREM_CODIGO.AsString); // +
     //  ' AND AMX_CODIGO = ' + QuotedStr(dbAmxCodigo.Text)  ;
    cdsItem.Filtered := True;
    CurTotalItens.Value := cdsitem.RecordCount;
end;

procedure TfrmRequisicaoMaterial.FormActivate(Sender: TObject);
begin
  inherited;
  Novo := False;
end;

procedure TfrmRequisicaoMaterial.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cxGrid1DBTableView1.StoreToIniFile(arquivo, True, [gsoUseFilter] );
  inherited;
  Action := caFree;
  frmRequisicaoMaterial := nil;
end;


procedure TfrmRequisicaoMaterial.FormCreate(Sender: TObject);
begin
  inherited;
  Novo := True;
end;

procedure TfrmRequisicaoMaterial.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    btAdicionarItem.Click;
  if Key = VK_F3 then
    btAutoriza.Click;
end;

end.
