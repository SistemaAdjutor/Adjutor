unit uRequisicaoMaterialPesq;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, SgDbSeachComboUnit, Vcl.ComCtrls,
  JvExComCtrls, JvDateTimePicker, Vcl.ExtCtrls, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Datasnap.DBClient, Datasnap.Provider,
  Vcl.Menus, JvExControls, JvArrowButton, frxClass, frxDBSet, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  TfrmRequisicaoMaterialPesq = class(TfrmBaseDB)
    qSetor: TSQLQuery;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel1: TPanel;
    qAlmoxarifado: TSQLQuery;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    dtDataInicial: TJvDateTimePicker;
    dtDataFinal: TJvDateTimePicker;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    cbAlmoxarifado: TSgDbSearchCombo;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    cbSetor: TSgDbSearchCombo;
    GroupBox4: TGroupBox;
    edRequerente: TEdit;
    btPesquisar: TSpeedButton;
    btLimpar: TSpeedButton;
    btSair: TSpeedButton;
    qConsulta: TSQLQuery;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    edAmxCodigo: TEdit;
    edSetorCodigo: TEdit;
    qDetalhe: TSQLQuery;
    dspDetalhe: TDataSetProvider;
    cdsDetalhe: TClientDataSet;
    dsDetalhe: TDataSource;
    qConsultaREM_CODIGO: TIntegerField;
    qConsultaEMP_CODIGO: TStringField;
    qConsultaAMX_CODIGO: TStringField;
    qConsultaREM_DATA: TDateField;
    qConsultaREM_REQUISITANTE: TStringField;
    qConsultaSET_CODIGO: TIntegerField;
    cdsConsultaREM_CODIGO: TIntegerField;
    cdsConsultaEMP_CODIGO: TStringField;
    cdsConsultaAMX_CODIGO: TStringField;
    cdsConsultaREM_DATA: TDateField;
    cdsConsultaREM_REQUISITANTE: TStringField;
    cdsConsultaSET_CODIGO: TIntegerField;
    qDetalheRMI_CODIGO: TIntegerField;
    qDetalheREM_CODIGO: TIntegerField;
    qDetalhePRD_REFER: TStringField;
    qDetalheRMI_QUANTIDADE: TFMTBCDField;
    cdsDetalheRMI_CODIGO: TIntegerField;
    cdsDetalheREM_CODIGO: TIntegerField;
    cdsDetalhePRD_REFER: TStringField;
    cdsDetalheRMI_QUANTIDADE: TFMTBCDField;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView1REM_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1EMP_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1AMX_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1REM_DATA: TcxGridDBColumn;
    cxGrid1DBTableView1REM_REQUISITANTE: TcxGridDBColumn;
    cxGrid1DBTableView1SET_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView2RMI_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView2REM_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView2PRD_REFER: TcxGridDBColumn;
    cxGrid1DBTableView2RMI_QUANTIDADE: TcxGridDBColumn;
    qConsultaREM_OBSERVACAO: TMemoField;
    cdsConsultaREM_OBSERVACAO: TMemoField;
    cxGrid1DBTableView1REM_OBSERVACAO: TcxGridDBColumn;
    chkNaoAtendidas: TCheckBox;
    qConsultaREM_STATUS: TStringField;
    cdsConsultaREM_STATUS: TStringField;
    cxGrid1DBTableView1REM_STATUS: TcxGridDBColumn;
    bitImportarXLS: TJvArrowButton;
    pmImprimir: TPopupMenu;
    Listagem1: TMenuItem;
    ListagemporProduto1: TMenuItem;
    frxDBListagem: TfrxDBDataset;
    frxDBListagemProduto: TfrxDBDataset;
    frxListagem: TfrxReport;
    frxListagemProduto: TfrxReport;
    qListagem: TSQLQuery;
    qListagemProduto: TSQLQuery;
    procedure btSairClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edAmxCodigoExit(Sender: TObject);
    procedure cbAlmoxarifadoSelect(Sender: TObject);
    procedure edSetorCodigoExit(Sender: TObject);
    procedure cbSetorSelect(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    procedure cxGrid1DBTableView1SET_CODIGOGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
    procedure cxGrid1DBTableView2PRD_REFERGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxGrid1DBTableView1REM_OBSERVACAOGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
    procedure cxGrid1DBTableView1AMX_CODIGOGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid1DBTableView1REM_STATUSGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
    procedure cxGrid1DBTableView2CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure Listagem1Click(Sender: TObject);
    procedure ListagemporProduto1Click(Sender: TObject);
    procedure frxListagemGetValue(const VarName: string; var Value: Variant);
    procedure frxListagemBeginDoc(Sender: TObject);
    procedure frxListagemProdutoBeginDoc(Sender: TObject);
  private
    { Private declarations }
  public
    var
      arquivo, arquivo2: string;

    { Public declarations }
  end;

var
  frmRequisicaoMaterialPesq: TfrmRequisicaoMaterialPesq;

implementation

{$R *.dfm}

uses Uteis, InicioDB;

procedure TfrmRequisicaoMaterialPesq.btLimparClick(Sender: TObject);
begin
  inherited;
  edAmxCodigo.Text := '';
  cbAlmoxarifado.idRetorno := '';
  edSetorCodigo.Text := '';
  cbSetor.idRetorno := '';
  dtDataInicial.Date := Now - 30;
  dtDataFinal.Date := Now;
  edRequerente.Text := '';
end;

procedure TfrmRequisicaoMaterialPesq.btPesquisarClick(Sender: TObject);
var
  where : boolean;
  procedure SqlAdd( stt: string );
  begin
    if stt<>'' then
    begin
      if where then
       qConsulta.sql.add( ' where '+stt )
      else
       qConsulta.sql.add( ' and '+stt );
      where := False;
    end;
  end;
begin
  inherited;
  where := true;
  cdsConsulta.Close;
  cdsDetalhe.Close;
  qConsulta.Close;
  qConsulta.SQL.Text := 'SELECT * FROM REQUISICAO_MATERIAL';
  SqlAdd(' EMP_CODIGO = ' + QuotedStr(DBInicio.Empresa.EMP_CODIGO) );
  if chkNaoAtendidas.Checked  then
    SqlAdd(' REM_STATUS <> ' + QuotedStr('A') );
  if edAmxCodigo.Text <> '' then
    SqlAdd(' AMX_CODIGO = ' + QuotedStr(edAmxCodigo.Text) );
  if edSetorCodigo.Text <> '' then
    SqlAdd(' SET_CODIGO = ' + QuotedStr(edSetorCodigo.Text) );
  if dtDataInicial.Date <> 0 then
    SqlAdd(' REM_DATA  BETWEEN ' + DateToSQL(dtDataInicial.Date)+' AND '+ DateToSQL(dtDataFinal.Date) );
  if edRequerente.Text <> '' then
    SqlAdd(' UPPER(REM_REQUISITANTE) = ' + QuotedStr(edRequerente.Text) );
  if DBInicio.IsDesenvolvimento then
    CopyToClipBoard(qConsulta.SQL.Text);

  cdsConsulta.Open;
  cdsDetalhe.Open;


end;

procedure TfrmRequisicaoMaterialPesq.btSairClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmRequisicaoMaterialPesq.cbAlmoxarifadoSelect(Sender: TObject);
begin
  inherited;
  edAmxCodigo.Text := cbAlmoxarifado.idRetorno;
end;

procedure TfrmRequisicaoMaterialPesq.cbSetorSelect(Sender: TObject);
begin
  inherited;
  edSetorCodigo.text := cbSetor.idRetorno;
end;

procedure TfrmRequisicaoMaterialPesq.cxGrid1DBTableView1AMX_CODIGOGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
begin
  inherited;
  AText := AText + ' - ' +  BuscaUmDadoSqlAsString('SELECT AMX_DESCRI FROM ALMOX0000 WHERE AMX_CODIGO = ' + QuotedStr(AText));
end;

procedure TfrmRequisicaoMaterialPesq.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure TfrmRequisicaoMaterialPesq.cxGrid1DBTableView1REM_OBSERVACAOGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
begin
  inherited;
  AText := cdsConsultaREM_OBSERVACAO.AsString;
end;

procedure TfrmRequisicaoMaterialPesq.cxGrid1DBTableView1REM_STATUSGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
begin
  inherited;
  if aText = 'P' then
    aText := 'Pendente'
  else if aText = 'A' then
    aText := 'Atendido'
  else if aText = 'R' then
    aText := 'Parcial'
end;

procedure TfrmRequisicaoMaterialPesq.cxGrid1DBTableView1SET_CODIGOGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
begin
  inherited;
  if AText = '' then
    AText := '0';
  AText := BuscaUmDadoSqlAsString('SELECT SET_DESCRICAO FROM SETOR WHERE SET_CODIGO = ' + AText);
end;

procedure TfrmRequisicaoMaterialPesq.cxGrid1DBTableView2CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if BuscaUmDadoSqlAsString('SELECT RMA_STATUS FROM REQUISICAO_MATERIAL_AUT WHERE RMI_CODIGO = ' + VarToStr(Sender.DataController.GetValue(AViewInfo.GridRecord.RecordIndex, 0)) ) = 'C' then // concluído - atendido
    ACanvas.Font.Color := clGreen
  else
  if BuscaUmDadoSqlAsString('SELECT RMA_STATUS FROM REQUISICAO_MATERIAL_AUT WHERE RMI_CODIGO = ' + VarToStr(Sender.DataController.GetValue(AViewInfo.GridRecord.RecordIndex, 0)) ) = 'P' then // pendente
    ACanvas.Font.Color := clRed;
end;

procedure TfrmRequisicaoMaterialPesq.cxGrid1DBTableView2PRD_REFERGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
begin
  inherited;
  AText := AText + ' - ' +  BuscaUmDadoSqlAsString('SELECT PRD_DESCRI FROM PRD0000 WHERE PRD_REFER = ' + QuotedStr(AText));
end;

procedure TfrmRequisicaoMaterialPesq.edAmxCodigoExit(Sender: TObject);
begin
  inherited;
  cbAlmoxarifado.idRetorno := edAmxCodigo.Text;
end;

procedure TfrmRequisicaoMaterialPesq.edSetorCodigoExit(Sender: TObject);
begin
  inherited;
  cbSetor.idRetorno := edSetorCodigo.text;
end;

procedure TfrmRequisicaoMaterialPesq.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cxGrid1DBTableView1.StoreToIniFile(arquivo, True, [gsoUseFilter] );
  cxGrid1DBTableView2.StoreToIniFile(arquivo2, True, [gsoUseFilter] );
  inherited;
end;

procedure TfrmRequisicaoMaterialPesq.FormShow(Sender: TObject);
begin
  inherited;
  arquivo := dbInicio.SistemaLocal + 'settings\' + Self.Name + 'cxGrid1DBTableView1.grid';
  arquivo2 := dbInicio.SistemaLocal + 'settings\' + Self.Name + 'cxGrid1DBTableView2.grid';
  cxGrid1DBTableView1.RestoreFromIniFile(arquivo, True, True, [gsoUseFilter] );
  cxGrid1DBTableView2.RestoreFromIniFile(arquivo2, True, True, [gsoUseFilter] );
  dtDataInicial.Date := Now - 30;
  dtDataFinal.Date := Now;
  cdsConsulta.Open;
  cdsDetalhe.Open;
  btPesquisar.Click;
end;

procedure TfrmRequisicaoMaterialPesq.frxListagemBeginDoc(Sender: TObject);
begin
  inherited;
  TfrxPictureView(frxListagem.FindObject('LogoEmpresa')).Picture.Bitmap.Assign(DbInicio.Empresa.LOGO);

end;

procedure TfrmRequisicaoMaterialPesq.frxListagemGetValue(const VarName: string; var Value: Variant);
begin
  inherited;
  if (VarName  = 'RAZAO') then
       Value := DBInicio.Empresa.RAZAO
  else
  if (VarName  = 'ENDERECO') then
     Value := DBInicio.Empresa.ENDERECO
  else
  if (VarName  = 'CEP')  then
       Value := DBInicio.Empresa.CEP
  else
  if (VarName  = 'CIDADE') then
       Value := DBInicio.Empresa.CIDADE
  else
  if (VarName  = 'UF') then
     Value := DBInicio.Empresa.UF
  else
  if (VarName  = 'SITE')   then
     Value := DBInicio.Empresa.HOME_PAGE
  else
  if (VarName  = 'FONE') then
     Value := DBInicio.Empresa.FONE
  else
  if (VarName  = 'CNPJ')  then
     Value := DBInicio.Empresa.CNPJ_CNPF
  else
  if (VarName  = 'INSCR') then
     Value := DBInicio.Empresa.INSC_EST
  else
  if (VarName  = 'EMAIL') then
     Value := DBInicio.Empresa.EMAIL;
end;

procedure TfrmRequisicaoMaterialPesq.frxListagemProdutoBeginDoc(Sender: TObject);
begin
  inherited;
  TfrxPictureView(frxListagemProduto.FindObject('LogoEmpresa')).Picture.Bitmap.Assign(DbInicio.Empresa.LOGO);

end;

procedure TfrmRequisicaoMaterialPesq.Listagem1Click(Sender: TObject);
var
  sql : string;
begin
  inherited;
  qListagem.Close;
  sql :=
    'SELECT a.AMX_CODIGO, a.AMX_DESCRI , rm.REM_CODIGO, rm.REM_DATA, rm.REM_REQUISITANTE, ' +
    '       rmi.PRD_REFER, p.PRD_DESCRI, rmi.RMI_QUANTIDADE,  ' +
    ' CASE WHEN rm.REM_STATUS = ''P'' THEN ''Pendente'' WHEN rm.REM_STATUS = ''A'' THEN ''Atendido'' WHEN rm.REM_STATUS = ''R'' THEN ''Parcial'' END REM_STATUS ' +
    '  FROM REQUISICAO_MATERIAL rm ' +
    '    JOIN REQUISICAO_MATERIAL_ITEM rmi ON (rmi.REM_CODIGO = rm.REM_CODIGO ) ' +
    '    JOIN ALMOX0000 a ON (a.AMX_CODIGO = rm.AMX_CODIGO) ' +
    '    JOIN PRD0000 p ON (p.PRD_REFER = rmi.PRD_REFER) ';
   sql := sql + 'WHERE rm.EMP_CODIGO = ' + QuotedStr(DBInicio.Empresa.EMP_CODIGO) ;
  if chkNaoAtendidas.Checked  then
    sql := sql + ' AND  rm.REM_STATUS <> ' + QuotedStr('A') ;
  if edAmxCodigo.Text <> '' then
    sql := sql + ' AND a.AMX_CODIGO = ' + QuotedStr(edAmxCodigo.Text) ;
  if edSetorCodigo.Text <> '' then
    sql := sql + ' AND rm.SET_CODIGO = ' + QuotedStr(edSetorCodigo.Text) ;
  if dtDataInicial.Date <> 0 then
    sql := sql + ' AND rm.REM_DATA  BETWEEN ' + DateToSQL(dtDataInicial.Date)+' AND '+ DateToSQL(dtDataFinal.Date) ;
  if edRequerente.Text <> '' then
    sql := sql + ' AND UPPER(rm.REM_REQUISITANTE) = ' + QuotedStr(edRequerente.Text) ;
  sql := sql + '  ORDER BY a.AMX_DESCRI, rm.REM_DATA, rm.REM_CODIGO  ';
  qListagem.SQL.Text := sql;
  qListagem.Open;
  frxListagem.ShowReport;
end;

procedure TfrmRequisicaoMaterialPesq.ListagemporProduto1Click(Sender: TObject);
var
  sql : string;
begin
  inherited;
  qListagemProduto.Close;
  sql :=
    'SELECT a.AMX_CODIGO, a.AMX_DESCRI , rmi.PRD_REFER, p.PRD_DESCRI, ' +
    '       COUNT(rm.REM_CODIGO) AS Requisicoes, ' +
    '       SUM(rmi.RMI_QUANTIDADE) AS Total ' +
    '  FROM REQUISICAO_MATERIAL rm ' +
    '    JOIN REQUISICAO_MATERIAL_ITEM rmi ON (rmi.REM_CODIGO = rm.REM_CODIGO ) ' +
    '    JOIN ALMOX0000 a ON (a.AMX_CODIGO = rm.AMX_CODIGO) ' +
    '    JOIN PRD0000 p ON (p.PRD_REFER = rmi.PRD_REFER) ';
   sql := sql + 'WHERE rm.EMP_CODIGO = ' + QuotedStr(DBInicio.Empresa.EMP_CODIGO) ;
  if chkNaoAtendidas.Checked  then
    sql := sql + ' AND  rm.REM_STATUS <> ' + QuotedStr('A') ;
  if edAmxCodigo.Text <> '' then
    sql := sql + ' AND a.AMX_CODIGO = ' + QuotedStr(edAmxCodigo.Text) ;
  if edSetorCodigo.Text <> '' then
    sql := sql + ' AND rm.SET_CODIGO = ' + QuotedStr(edSetorCodigo.Text) ;
  if dtDataInicial.Date <> 0 then
    sql := sql + ' AND rm.REM_DATA  BETWEEN ' + DateToSQL(dtDataInicial.Date)+' AND '+ DateToSQL(dtDataFinal.Date) ;
  if edRequerente.Text <> '' then
    sql := sql + ' AND UPPER(rm.REM_REQUISITANTE) = ' + QuotedStr(edRequerente.Text) ;
  sql := sql + ' GROUP BY a.AMX_CODIGO, a.AMX_DESCRI ,rmi.PRD_REFER, p.PRD_DESCRI ' ;
  sql := sql + '  ORDER BY a.AMX_DESCRI, p.PRD_DESCRI  ';
  qListagemProduto.SQL.Text := sql;
  qListagemProduto.Open;

  frxListagemProduto.ShowReport;
end;

end.
