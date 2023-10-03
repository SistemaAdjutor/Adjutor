unit uRequisicaoMaterialAutorizacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, SgDbSeachComboUnit, Vcl.ComCtrls,
  JvExComCtrls, JvDateTimePicker, Vcl.ExtCtrls, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Datasnap.DBClient, Datasnap.Provider,
  cxCheckBox, cxButtonEdit, cxShellComboBox, cxSpinEdit, cxEditRepositoryItems, Vcl.Grids, Vcl.DBGrids,
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
  TfrmRequisicaoMaterialAutorizacao = class(TfrmBaseDB)
    qSetor: TSQLQuery;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel1: TPanel;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    dtDataInicialReq: TJvDateTimePicker;
    dtDataFinalReq: TJvDateTimePicker;
    GroupBox2: TGroupBox;
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
    edSetorCodigo: TEdit;
    GroupBox5: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    dtDataInicialLib: TJvDateTimePicker;
    dtDataFinalLib: TJvDateTimePicker;
    qConsultaRMA_SITUACAO: TStringField;
    qConsultaREM_CODIGO: TIntegerField;
    qConsultaREM_DATA: TDateField;
    qConsultaREM_REQUISITANTE: TStringField;
    qConsultaPRD_DESCRI: TStringField;
    qConsultaRMI_QUANTIDADE: TFMTBCDField;
    qConsultaSET_DESCRICAO: TStringField;
    qConsultaRMA_STATUS: TStringField;
    qConsultaUSU_NOME: TStringField;
    qConsultaRMA_DATA: TDateField;
    cdsConsultaRMA_SITUACAO: TStringField;
    cdsConsultaREM_CODIGO: TIntegerField;
    cdsConsultaREM_DATA: TDateField;
    cdsConsultaREM_REQUISITANTE: TStringField;
    cdsConsultaPRD_DESCRI: TStringField;
    cdsConsultaRMI_QUANTIDADE: TFMTBCDField;
    cdsConsultaSET_DESCRICAO: TStringField;
    cdsConsultaRMA_STATUS: TStringField;
    cdsConsultaUSU_NOME: TStringField;
    cdsConsultaRMA_DATA: TDateField;
    cxGrid1DBTableView1RMA_SITUACAO: TcxGridDBColumn;
    cxGrid1DBTableView1REM_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1REM_DATA: TcxGridDBColumn;
    cxGrid1DBTableView1REM_REQUISITANTE: TcxGridDBColumn;
    cxGrid1DBTableView1PRD_DESCRI: TcxGridDBColumn;
    cxGrid1DBTableView1RMI_QUANTIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1SET_DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1RMA_STATUS: TcxGridDBColumn;
    cxGrid1DBTableView1USU_NOME: TcxGridDBColumn;
    cxGrid1DBTableView1RMA_DATA: TcxGridDBColumn;
    qConsultaRMI_CODIGO: TIntegerField;
    cdsConsultaRMI_CODIGO: TIntegerField;
    cxGrid1DBTableView1RMI_CODIGO: TcxGridDBColumn;
    GroupBox1: TGroupBox;
    cbAutorizado: TCheckBox;
    cbConcluido: TCheckBox;
    cbTodos: TCheckBox;
    cdsConsultaStatus: TStringField;
    qConsultaREM_STATUS: TStringField;
    cdsConsultaREM_STATUS: TStringField;
    cxGrid1DBTableView1REM_STATUS: TcxGridDBColumn;
    cxGrid1DBTableView1Botao: TcxGridDBColumn;
    qConsultaPRD_UND: TStringField;
    cdsConsultaPRD_UND: TStringField;
    qConsultaPRD_REFER: TStringField;
    cdsConsultaPRD_REFER: TStringField;
    qConsultaPRD_CODIGO: TStringField;
    cdsConsultaPRD_CODIGO: TStringField;
    cxGrid1DBTableView1PRD_UND: TcxGridDBColumn;
    cxGrid1DBTableView1PRD_REFER: TcxGridDBColumn;
    cxGrid1DBTableView1PRD_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1SelecionaAutorizado: TcxGridDBColumn;
    btAutorizaRetirada: TButton;
    cbSelecionarAutorizados: TCheckBox;
    qConsultaSELECIONARETIRADA: TIntegerField;
    cdsConsultaSELECIONARETIRADA: TIntegerField;
    qConsultaRMA_CODIGO: TIntegerField;
    cdsConsultaRMA_CODIGO: TIntegerField;
    cxGrid1DBTableView1RMA_CODIGO: TcxGridDBColumn;
    qConsultaAMX_CODIGO: TStringField;
    cdsConsultaAMX_CODIGO: TStringField;
    cxGrid1DBTableView1AMX_CODIGO: TcxGridDBColumn;
    procedure btSairClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edSetorCodigoExit(Sender: TObject);
    procedure cbSetorSelect(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxGrid1DBTableView1RMA_SITUACAOPropertiesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid1DBTableView1RMA_STATUSPropertiesChange(Sender: TObject);
    procedure cxGrid1DBTableView1BotaoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid1DBTableView1RMA_STATUSGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
    procedure cbSelecionarAutorizadosClick(Sender: TObject);
    procedure btAutorizaRetiradaClick(Sender: TObject);
  private
    { Private declarations }
    procedure AtualizaStatusESituacao(rmiCodigo: string);
    var
      Registro : integer;
  public
    var
      arquivo: string;
    { Public declarations }
  end;

var
  frmRequisicaoMaterialAutorizacao: TfrmRequisicaoMaterialAutorizacao;

implementation

{$R *.dfm}

uses Uteis, InicioDB, uRequisicaoMaterial;

procedure TfrmRequisicaoMaterialAutorizacao.AtualizaStatusESituacao(rmiCodigo: string);
var
  situacao, status, usuario, data: string;
begin
  situacao := QuotedStr(VarToStr(cxGrid1DBTableView1.DataController.Controller.SelectedRecords[0].Values[cxGrid1DBTableView1RMA_SITUACAO.Index]));
  status := QuotedStr(VarToStr(cxGrid1DBTableView1.DataController.Controller.SelectedRecords[0].Values[cxGrid1DBTableView1RMA_STATUS.Index]));
  usuario := QuotedStr(DBInicio.Usuario.USERNAME);
  cdsConsulta.Edit;
  cdsConsultaUSU_NOME.AsString := DBInicio.Usuario.USERNAME;
  data :=  DateToSQL(Now);
  cdsConsultaRMA_DATA.AsDateTime := Date;
  cdsConsulta.Post;
  qAux.Close;
  qAux.SQL.Text := 'UPDATE REQUISICAO_MATERIAL_AUT SET ' +
    ' RMA_SITUACAO = ' + situacao + ', ' +
    ' RMA_STATUS = ' + status + ', ' +
    ' USU_NOME = ' + usuario + ', ' +
    ' RMA_DATA = ' + data +
    ' WHERE RMI_CODIGO = ' + rmiCodigo;
  if DBInicio.IsDesenvolvimento then
    CopyToClipBoard(qAux.SQL.Text);
  qAux.ExecSQL();
end;

procedure TfrmRequisicaoMaterialAutorizacao.btLimparClick(Sender: TObject);
begin
  inherited;
  edSetorCodigo.Text := '';
  cbSetor.idRetorno := '';
  dtDataInicialReq.Date := Now - 30;
  dtDataFinalReq.Date := Now;
  dtDataInicialLib.Clear;
  dtDataFinalLib.Clear;
  edRequerente.Text := '';
  cbAutorizado.State := cbGrayed;
  cbConcluido.State := cbGrayed;
end;

procedure TfrmRequisicaoMaterialAutorizacao.btPesquisarClick(Sender: TObject);
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
  qConsulta.Close;
  cdsConsulta.Close;
  qConsulta.SQL.Text :=
     ' SELECT	0 as SelecionaRetirada,  rma.RMA_CODIGO, rm.AMX_CODIGO,' +
     '   rma.RMA_SITUACAO, rm.REM_CODIGO, rm.REM_DATA, REM_REQUISITANTE, rmi.RMI_CODIGO,  ' +
     '   p.PRD_DESCRI, rmi.RMI_QUANTIDADE, s.SET_DESCRICAO, rma.RMA_STATUS, rma.USU_NOME, ' +
     '   rma.RMA_DATA, rm.REM_STATUS, p.PRD_UND, p.PRD_REFER, p.PRD_CODIGO ' +
     ' FROM ' +
     '   REQUISICAO_MATERIAL rm ' +
     ' JOIN REQUISICAO_MATERIAL_ITEM rmi ON	(rm.REM_CODIGO = rmi.REM_CODIGO) ' +
     ' JOIN REQUISICAO_MATERIAL_AUT rma  ON	(rma.RMI_CODIGO = rmi.RMI_CODIGO) ' +
     ' JOIN PRD0000 p ON	(p.PRD_REFER = rmi.PRD_REFER ) ' +
     ' JOIN SETOR s ON	(s.SET_CODIGO = rm.SET_CODIGO) ';
  SqlAdd(' rm.EMP_CODIGO = ' + QuotedStr(DBInicio.Empresa.EMP_CODIGO) );
  if not cbTodos.Checked then
  begin
    if edSetorCodigo.Text <> '' then
      SqlAdd(' s.SET_CODIGO = ' + QuotedStr(edSetorCodigo.Text) );
    if dtDataInicialReq.Date <> 0 then
      SqlAdd(' rm.REM_DATA  BETWEEN ' + DateToSQL(dtDataInicialReq.Date)+' AND '+ DateToSQL(dtDataFinalReq.Date) );
    if dtDataInicialLib.Date <> 0 then
      SqlAdd(' rma.RMA_DATA  BETWEEN ' + DateToSQL(dtDataInicialLib.Date)+' AND '+ DateToSQL(dtDataFinalLib.Date) );
    if edRequerente.Text <> '' then
      SqlAdd(' UPPER(rm.REM_REQUISITANTE) = ' + QuotedStr(edRequerente.Text) );
    if cbAutorizado.State <> cbGrayed then
    begin
      if cbAutorizado.Checked then
        SqlAdd(' UPPER(rma.RMA_SITUACAO) = ' + QuotedStr('A') )
      else
        SqlAdd(' UPPER(rma.RMA_SITUACAO) = ' + QuotedStr('N') );
    end;
    if cbConcluido.State <> cbGrayed then
    begin
      if cbConcluido.Checked then
        SqlAdd(' UPPER(rma.RMA_STATUS) = ' + QuotedStr('C') )
      else
        SqlAdd(' UPPER(rma.RMA_STATUS) = ' + QuotedStr('P') );
    end;
  end;
  qConsulta.SQL.Text := qConsulta.SQL.Text + ' ORDER BY rm.REM_CODIGO';
  if DBInicio.IsDesenvolvimento then
    CopyToClipBoard(qConsulta.SQL.Text);
  cdsConsulta.Open;
end;

procedure TfrmRequisicaoMaterialAutorizacao.btSairClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmRequisicaoMaterialAutorizacao.btAutorizaRetiradaClick(Sender: TObject);
var
  j : integer;
begin
  inherited;
  if MessageDlg('Confirma a Retirada de todos os materiais selecionados?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
    Exit;

  for j := 0 to cxGrid1DBTableView1.DataController.FilteredRecordCount -1 do
  begin
    Registro := j;
    // cxGrid1DBTableView1.DataController.FocusedRecordIndex := j;
    cxGrid1DBTableView1.ViewData.Rows[Registro].Focused := True;
    if cxGrid1DBTableView1.ViewData.Rows[Registro].Values[cxGrid1DBTableView1SelecionaAutorizado.Index] = 0 then
      Continue;
    cxGrid1DBTableView1BotaoPropertiesButtonClick(Sender, -1);
  end;
  btPesquisar.Click;
end;

procedure TfrmRequisicaoMaterialAutorizacao.cbSetorSelect(Sender: TObject);
begin
  inherited;
  edSetorCodigo.text := cbSetor.idRetorno;
end;

procedure TfrmRequisicaoMaterialAutorizacao.cbSelecionarAutorizadosClick(Sender: TObject);
var
  j : integer;
begin
  inherited;
  if not cbSelecionarAutorizados.Checked then
    exit;

  if MessageDlg('Confirma a Liberação de todos os materiais selecionados?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
    Exit;

  for j := 0 to cxGrid1DBTableView1.DataController.FilteredRecordCount -1 do
  begin
    cxGrid1DBTableView1.ViewData.Rows[j].Focused := True;
    qAux.Close;
    qAux.SQL.Text := 'UPDATE REQUISICAO_MATERIAL_AUT SET ' +
      ' RMA_SITUACAO = ''A'',  ' +
      ' USU_NOME = ' + QuotedStr(DBInicio.Usuario.USERNAME) + ', ' +
      ' RMA_DATA = ' + DateToSQL(Now) +
      ' WHERE RMI_CODIGO = ' + VarToStr(cxGrid1DBTableView1.DataController.Controller.SelectedRecords[0].Values[cxGrid1DBTableView1RMI_CODIGO.Index]);
    qAux.ExecSQL();
    cbSelecionarAutorizados.Checked := False;
    btPesquisar.Click;
  end;
end;

procedure TfrmRequisicaoMaterialAutorizacao.cxGrid1DBTableView1BotaoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  total, atendido: integer;
  remCodigo, rmiCodigo, remStatus, prdCodigo, amxCodigo, amxDescri: string;
  solicitado, saldo: double;
  confirma: boolean;
begin
  inherited;
  if cxGrid1DBTableView1.DataController.Controller.SelectedRecords[0].Values[cxGrid1DBTableView1RMA_SITUACAO.Index] <> 'A' then
  begin
    MessageDlg('Material não Autorizado para Retirada.', mtWarning, [mbOk], 0);
    Exit;
  end;

  if BuscaUmDadoSqlAsString('SELECT USP_REALIZA_RETIRADA_MATERIAL FROM USUARIO_PARAMETRO WHERE USP_COD_USUARIO = ' + QuotedStr(DBInicio.Usuario.CODIGO)) <> 'S' then
  begin
    MessageDlg('Usuário não autorizado a retirar material do almoxarifado', mtWarning, [mbOk], 0);
    Exit;
  end;

  if TComponent(Sender).Name = 'btAutorizaRetirada' then
  begin
    rmiCodigo := VarToStr(cxGrid1DBTableView1.ViewData.Rows[Registro].Values[cxGrid1DBTableView1RMI_CODIGO.Index]);
    remCodigo := VarToStr(cxGrid1DBTableView1.ViewData.Rows[Registro].Values[cxGrid1DBTableView1REM_CODIGO.Index]);
    prdCodigo  := VarToStr(cxGrid1DBTableView1.ViewData.Rows[Registro].Values[cxGrid1DBTableView1PRD_CODIGO.Index]);
    amxCodigo := BuscaUmDadoSqlAsString('SELECT AMX_CODIGO FROM PRD0000 WHERE PRD_CODIGO = ' + QuotedStr(prdCodigo));
    if amxCodigo = '' then
      amxCodigo := VarToStr(cxGrid1DBTableView1.ViewData.Rows[Registro].Values[cxGrid1DBTableView1AMX_CODIGO.Index]);
    solicitado := cxGrid1DBTableView1.ViewData.Rows[Registro].Values[cxGrid1DBTableView1RMI_QUANTIDADE.Index];
  end
  else
  begin
    rmiCodigo := VarToStr(cxGrid1DBTableView1.DataController.Controller.SelectedRecords[0].Values[cxGrid1DBTableView1RMI_CODIGO.Index]);
    remCodigo := VarToStr(cxGrid1DBTableView1.DataController.Controller.SelectedRecords[0].Values[cxGrid1DBTableView1REM_CODIGO.Index]);
    prdCodigo  := VarToStr(cxGrid1DBTableView1.DataController.Controller.SelectedRecords[0].Values[cxGrid1DBTableView1PRD_CODIGO.Index]);
    amxCodigo := BuscaUmDadoSqlAsString('SELECT AMX_CODIGO FROM PRD0000 WHERE PRD_CODIGO = ' + QuotedStr(prdCodigo));
    if amxCodigo = '' then
      amxCodigo := VarToStr(cxGrid1DBTableView1.DataController.Controller.SelectedRecords[0].Values[cxGrid1DBTableView1AMX_CODIGO.Index]);
    solicitado := cxGrid1DBTableView1.DataController.Controller.SelectedRecords[0].Values[cxGrid1DBTableView1RMI_QUANTIDADE.Index];
  end;

  saldo := BuscaUmDadoSqlAsFloat(
    ' SELECT FIRST 1 kas_saldo ' +
    '    FROM KARDEX_ALMOX_SALDO ' +
    '    WHERE PRD_CODIGO = ' + QuotedStr(prdCodigo) +
    '      AND AMX_CODIGO = ' + QuotedStr(amxCodigo)  +
    ConcatSE(' AND ', dbInicio.ExclusivoSql('ESTOQUES'))
  );
  if solicitado > saldo then
  begin
    amxDescri := AmxCodigo + ' - ' + BuscaUmDadoSqlAsString('SELECT AMX_DESCRI FROM ALMOX0000 WHERE AMX_CODIGO = ' + QuotedStr(amxCodigo));
    MessageDlg('Item sem estoque disponível no almoxarifado ' + amxDescri + '.' , mtWarning, [mbOk], 0);
    exit;
  end;


  if BuscaUmDadoSqlAsString('SELECT RMA_STATUS FROM REQUISICAO_MATERIAL_AUT WHERE RMI_CODIGO = ' + rmiCodigo) = 'C' then
  begin
    MessageDlg('Material já foi retirado do almoxarifado', mtWarning, [mbOk], 0);
    Exit;
  end;

  if TComponent(Sender).Name = 'btAutorizaRetirada' then
    confirma := True
  else
    confirma := MessageDlg('Confirma retirada do material do almoxarifado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes;

  if confirma then
  begin
    qAux.Close;
    qAux.sql.Text := 'UPDATE REQUISICAO_MATERIAL_AUT SET RMA_STATUS = ''C'' WHERE RMI_CODIGO = ' +  rmiCodigo;
    qAux.ExecSQL;

    if cdsConsulta.State = dsBrowse then
      cdsConsulta.Edit;
    cdsConsultaRMA_STATUS.AsString := 'C';

    total := BuscaUmDadoSqlAsInteger(
             'SELECT count(rma.RMI_CODIGO) ' +
            '   FROM REQUISICAO_MATERIAL_AUT rma ' +
            '     JOIN REQUISICAO_MATERIAL_ITEM rmi ON (rmi.RMI_CODIGO = rma.RMI_CODIGO ) ' +
            '     JOIN REQUISICAO_MATERIAL rm ON (rm.REM_CODIGO = rmi.REM_CODIGO) ' +
            '   WHERE rm.REM_CODIGO = ' + remCodigo);

    atendido := BuscaUmDadoSqlAsInteger(
             'SELECT count(rma.RMI_CODIGO) ' +
            '   FROM REQUISICAO_MATERIAL_AUT rma ' +
            '     JOIN REQUISICAO_MATERIAL_ITEM rmi ON (rmi.RMI_CODIGO = rma.RMI_CODIGO ) ' +
            '     JOIN REQUISICAO_MATERIAL rm ON (rm.REM_CODIGO = rmi.REM_CODIGO) ' +
            '   WHERE rm.REM_CODIGO = ' + remCodigo +
            '     AND rma.RMA_STATUS = ''C'' ');  // Concluído - atendido

    if atendido = 0 then
      remStatus := 'P'  // Pendente
    else if total = atendido then
      remStatus := 'A'  // Atendido
    else if atendido < total then
      remStatus := 'R'; // Parcial
    qAux.Close;
    qAux.sql.Text := 'UPDATE REQUISICAO_MATERIAL SET REM_STATUS = ' + QuotedStr(remStatus) + ' WHERE REM_CODIGO = ' +  remCodigo;
    qAux.ExecSQL;

    frmRequisicaoMaterial.KardexLancamento(
                    '0',
                    'REQ',
                    frmRequisicaoMaterial.cbAlmoxarifado.idRetorno,
                    '',
                    cdsConsultaPRD_CODIGO.AsString,
                    '',
                    cdsConsultaPRD_UND.AsString,
                    'S',
                    '',
                    '',
                    frmRequisicaoMaterial.dbObservacao.Text,
                    Now,
                    cdsConsultaRMI_QUANTIDADE.AsFloat,
                    cdsConsultaREM_CODIGO.AsString,
                    cdsConsultaREM_CODIGO.AsString,
                    0.00  );

    if TComponent(Sender).Name = 'btAutorizaRetirada' then
      MessageDlg('Materiais retirados com sucesso.' , mtInformation, [mbOk], 0)
    else
      MessageDlg('Material retirado do almoxarifado ' + frmRequisicaoMaterial.cbAlmoxarifado.Text + ' com sucesso.' , mtInformation, [mbOk], 0);
  end;

end;

procedure TfrmRequisicaoMaterialAutorizacao.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure TfrmRequisicaoMaterialAutorizacao.cxGrid1DBTableView1RMA_SITUACAOPropertiesChange(Sender: TObject);
begin
  inherited;
  if BuscaUmDadoSqlAsString('SELECT RMA_STATUS FROM REQUISICAO_MATERIAL_AUT WHERE RMI_CODIGO = ' + VarToStr(cxGrid1DBTableView1.DataController.Controller.SelectedRecords[0].Values[cxGrid1DBTableView1RMI_CODIGO.Index])) = 'C' then // concluído - atendido
  begin
    if cdsConsulta.State = dsBrowse then
      cdsConsulta.Edit;
    cdsConsultaRMA_SITUACAO.AsString := 'A';
    MessageDlg('Material já foi retirado do almoxarifado', mtWarning, [mbOk], 0);
    Exit;
  end;


  if BuscaUmDadoSqlAsString('SELECT RMA_SITUACAO FROM REQUISICAO_MATERIAL_AUT WHERE RMI_CODIGO = ' + VarToStr(cxGrid1DBTableView1.DataController.Controller.SelectedRecords[0].Values[cxGrid1DBTableView1RMI_CODIGO.Index])) = 'A' then
  begin
    if MessageDlg('Cancela a Autorização de retirada do material do almoxarifado?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
    begin
      if cdsConsulta.State = dsBrowse then
        cdsConsulta.Edit;
      cdsConsultaRMA_SITUACAO.AsString := 'A';
      Exit;
    end;
  end
  else
    if MessageDlg('Autoriza retirada do material do almoxarifado?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
    begin
      if cdsConsulta.State = dsBrowse then
        cdsConsulta.Edit;
      cdsConsultaRMA_SITUACAO.AsString := 'N';
      Exit;
    end;


  if BuscaUmDadoSqlAsString('SELECT USP_AUTORIZA_RETIRADA_MATERIAL FROM USUARIO_PARAMETRO WHERE USP_COD_USUARIO = ' + QuotedStr(DBInicio.Usuario.CODIGO)) <> 'S' then
  begin
    MessageDlg('Usuário sem permissão pra autorizar retirada de material do almoxarifado', mtWarning, [mbOk], 0);
    Exit;
  end;

  AtualizaStatusESituacao(VarToStr(cxGrid1DBTableView1.DataController.Controller.SelectedRecords[0].Values[cxGrid1DBTableView1RMI_CODIGO.Index]));
end;

procedure TfrmRequisicaoMaterialAutorizacao.cxGrid1DBTableView1RMA_STATUSGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
begin
  inherited;
  if AText = 'C' then
    AText := 'Atendido'
  else
    AText := 'Pendente';
end;

procedure TfrmRequisicaoMaterialAutorizacao.cxGrid1DBTableView1RMA_STATUSPropertiesChange(Sender: TObject);
begin
  inherited;
  AtualizaStatusESituacao(VarToStr(cxGrid1DBTableView1.DataController.Controller.SelectedRecords[0].Values[cxGrid1DBTableView1RMI_CODIGO.Index]));
end;

procedure  TfrmRequisicaoMaterialAutorizacao.edSetorCodigoExit(Sender: TObject);
begin
  inherited;
  cbSetor.idRetorno := edSetorCodigo.text;
end;

procedure TfrmRequisicaoMaterialAutorizacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmRequisicaoMaterial.Novo := True;
  frmRequisicaoMaterial.cdsItem.Close;
  frmRequisicaoMaterial.cdsItem.Open;
  frmRequisicaoMaterial.cdsRequisicao.Close;
  frmRequisicaoMaterial.cdsRequisicao.Open;
  if cxGrid1DBTableView1.DataController.Controller.SelectedRecords[0] <> nil then
    frmRequisicaoMaterial.cdsRequisicao.Locate('REM_CODIGO', VarToStr(cxGrid1DBTableView1.DataController.Controller.SelectedRecords[0].Values[cxGrid1DBTableView1REM_CODIGO.Index]), []);
  frmRequisicaoMaterial.Filtra;
  frmRequisicaoMaterial.Novo := False;
  cxGrid1DBTableView1.StoreToIniFile(arquivo, True, [gsoUseFilter] );

end;

procedure TfrmRequisicaoMaterialAutorizacao.FormShow(Sender: TObject);
begin
  inherited;
  arquivo := dbInicio.SistemaLocal + 'settings\' + Self.Name + 'cxGrid1DBTableView1.grid';
  cxGrid1DBTableView1.RestoreFromIniFile(arquivo, True, True, [gsoUseFilter] );
  dtDataInicialReq.Date := Now - 30;
  dtDataFinalReq.Date := Now;
  cdsConsulta.Open;

end;

end.
