unit uProgramacaoProcessoFabricacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora, Vcl.StdCtrls, SgDbSeachComboUnit, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, Vcl.Mask, JvExMask, JvToolEdit, Vcl.ExtCtrls, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Vcl.Buttons, frxClass, frxDBSet, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, cxGridBandedTableView,
  cxGridDBBandedTableView, JvExControls, JvArrowButton, Vcl.Menus;

type
  TfrmProgramacaoProcessoFabricacao = class(TfrmBaseDB)
    cxProcesso: TcxGrid;
    cxProcessoDBTableView1: TcxGridDBTableView;
    cxProcessoLevel1: TcxGridLevel;
    Panel1: TPanel;
    lblProjcx: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    btnModificarOperacao: TButton;
    btnAbrirApontamentos: TButton;
    EdOperacaoCodigo: TEdit;
    scOperacoes: TSgDbSearchCombo;
    edEquipamentoCodigo: TEdit;
    scEquipamento: TSgDbSearchCombo;
    qOperacao: TSQLQuery;
    qEquipamento: TSQLQuery;
    gbPeriodo: TGroupBox;
    lblInicio: TLabel;
    lblFim: TLabel;
    dtInicialEntrega: TJvDateEdit;
    dtFinalEntrega: TJvDateEdit;
    edEspecificacao: TEdit;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    dtInicialAjustada: TJvDateEdit;
    dtFinalAjustada: TJvDateEdit;
    Label5: TLabel;
    edClienteCodigo: TEdit;
    scCliente: TSgDbSearchCombo;
    qCliente: TSQLQuery;
    dsProcesso: TDataSource;
    btnPesquisa: TSpeedButton;
    btnExportar: TSpeedButton;
    frxDBPPF: TfrxDBDataset;
    frxPPF: TfrxReport;
    qProcesso: TFDQuery;
    qProcessoPRD_UND: TStringField;
    qProcessoINTERNO: TBCDField;
    qProcessoEXTERNO: TBCDField;
    qProcessoALTURA1: TBCDField;
    qProcessoALTURA2: TBCDField;
    qProcessoPRF_QTDE: TFMTBCDField;
    qProcessoIOP_DATA_PREVISTA: TSQLTimeStampField;
    qProcessoIOP_DATA_AJUSTADA: TSQLTimeStampField;
    qProcessoIOP_DATA_INICIO: TSQLTimeStampField;
    qProcessoIOP_DATA_CONCLUSAO: TSQLTimeStampField;
    qProcessoFAB_PRODUZIDA: TFMTBCDField;
    qProcessoFAB_DIAS: TFMTBCDField;
    qProcessoFAB_CODIGO: TIntegerField;
    qProcessoOPE_DESCRICAO: TStringField;
    qProcessoOPE_CODIGO: TIntegerField;
    qProcessoIOP_NORDEM: TStringField;
    lbRegistro: TLabel;
    SpeedButton1: TSpeedButton;
    cxStyleRepository1: TcxStyleRepository;
    cxAmarelo: TcxStyle;
    Label6: TLabel;
    qProcessoCLI_RAZAO: TStringField;
    qProcessoPRD_REFER: TStringField;
    qProcessoPRD_DESCRI: TStringField;
    qProcessoIOP_STATUS: TStringField;
    cxProcessoDBTableView1IOP_NORDEM: TcxGridDBColumn;
    cxProcessoDBTableView1CLI_RAZAO: TcxGridDBColumn;
    cxProcessoDBTableView1PRD_REFER: TcxGridDBColumn;
    cxProcessoDBTableView1PRD_DESCRI: TcxGridDBColumn;
    cxProcessoDBTableView1PRD_UND: TcxGridDBColumn;
    cxProcessoDBTableView1INTERNO: TcxGridDBColumn;
    cxProcessoDBTableView1EXTERNO: TcxGridDBColumn;
    cxProcessoDBTableView1ALTURA1: TcxGridDBColumn;
    cxProcessoDBTableView1ALTURA2: TcxGridDBColumn;
    cxProcessoDBTableView1IOP_STATUS: TcxGridDBColumn;
    cxProcessoDBTableView1PRF_QTDE: TcxGridDBColumn;
    cxProcessoDBTableView1FAB_PRODUZIDA: TcxGridDBColumn;
    cxProcessoDBTableView1FAB_DIAS: TcxGridDBColumn;
    cxProcessoDBTableView1IOP_DATA_PREVISTA: TcxGridDBColumn;
    cxProcessoDBTableView1IOP_DATA_AJUSTADA: TcxGridDBColumn;
    cxProcessoDBTableView1IOP_DATA_INICIO: TcxGridDBColumn;
    cxProcessoDBTableView1IOP_DATA_CONCLUSAO: TcxGridDBColumn;
    cxProcessoDBTableView1FAB_CODIGO: TcxGridDBColumn;
    cxProcessoDBTableView1OPE_DESCRICAO: TcxGridDBColumn;
    cxProcessoDBTableView1OPE_CODIGO: TcxGridDBColumn;
    pmListar: TPopupMenu;
    ListadeOrdemdeProduo1: TMenuItem;
    miOrdemProducao: TMenuItem;
    btnrelatorios: TJvArrowButton;
    qOP11Corpo: TFDQuery;
    frxDBOP11Corpo: TfrxDBDataset;
    qOP11Cabecalho: TFDQuery;
    frxDBOP11Cabecalho: TfrxDBDataset;
    frxOP11: TfrxReport;
    qProcessoEQP_DESCRICAO: TStringField;
    cxProcessoDBTableView1EQP_DESCRICAO: TcxGridDBColumn;
    qProcessoEMP_CODIGO: TStringField;
    procedure scOperacoesChange(Sender: TObject);
    procedure EdOperacaoCodigoExit(Sender: TObject);
    procedure scEquipamentoChange(Sender: TObject);
    procedure edClienteCodigoExit(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure edEquipamentoCodigoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure scClienteChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure frxReport1BeginDoc(Sender: TObject);
    procedure btnListarClick(Sender: TObject);
    procedure frxPPFGetValue(const VarName: string; var Value: Variant);
    procedure cxProcessoDBTableView1DataControllerDataChanged(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
    procedure btnModificarOperacaoClick(Sender: TObject);
    procedure btnAbrirApontamentosClick(Sender: TObject);
    procedure cxProcessoDBTableView1DataControllerDetailExpanding(ADataController: TcxCustomDataController; ARecordIndex: Integer; var AAllow: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ListadeOrdemdeProduo1Click(Sender: TObject);
    procedure miOrdemProducaoClick(Sender: TObject);
    procedure frxOP11BeginDoc(Sender: TObject);
    procedure frxOP11GetValue(const VarName: string; var Value: Variant);
    procedure cxProcessoDBTableView1EQP_DESCRICAOGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
  private
    var
      arquivoIni: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProgramacaoProcessoFabricacao: TfrmProgramacaoProcessoFabricacao;

implementation

{$R *.dfm}

uses InicioDB, Uteis, uPesquisaOperacaoProcessoFabricacao, uNovoAponta;

procedure TfrmProgramacaoProcessoFabricacao.FormCreate(Sender: TObject);
begin
  inherited;
  arquivoIni := dbInicio.SistemaLocal + 'settings\frmProgramacaoProcessoFabricacao.grid';
end;

procedure TfrmProgramacaoProcessoFabricacao.FormShow(Sender: TObject);
begin
  inherited;
  cxProcessoDBTableView1.RestoreFromIniFile(arquivoIni);
  qProcessoINTERNO.DisplayLabel := BuscaUmDadoSqlAsString('SELECT PMT_HABILITA_MEDIDAPRD_DESC1 FROM PRMT0001 WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo));
  qProcessoEXTERNO.DisplayLabel := BuscaUmDadoSqlAsString('SELECT PMT_HABILITA_MEDIDAPRD_DESC2 FROM PRMT0001 WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo));
  qProcessoALTURA1.DisplayLabel := BuscaUmDadoSqlAsString('SELECT PMT_HABILITA_MEDIDAPRD_DESC3 FROM PRMT0001 WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo));
  qProcessoALTURA2.DisplayLabel := BuscaUmDadoSqlAsString('SELECT PMT_HABILITA_MEDIDAPRD_DESC4 FROM PRMT0001 WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo));
  btnPesquisa.Click;
end;

procedure TfrmProgramacaoProcessoFabricacao.frxOP11BeginDoc(Sender: TObject);
begin
  inherited;
  TfrxPictureView(frxOP11.FindObject('LogoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);
end;

procedure TfrmProgramacaoProcessoFabricacao.frxOP11GetValue(const VarName: string; var Value: Variant);
begin
  inherited;
  if VarName = 'EMPRESA' then
    Value := DBInicio.Empresa.FANTASIA;
  if VarName = 'USUARIO' then
    Value := DBInicio.Usuario.USERNAME;
end;

procedure TfrmProgramacaoProcessoFabricacao.frxPPFGetValue(const VarName: string; var Value: Variant);
begin
  inherited;
  if VarName = 'Interno' then Value := cxProcessoDBTableView1INTERNO.Caption;
  if VarName = 'Externo' then Value := cxProcessoDBTableView1EXTERNO.Caption;
  if VarName = 'Altura1' then Value := cxProcessoDBTableView1ALTURA1.Caption;
  if VarName = 'Altura2' then Value := cxProcessoDBTableView1ALTURA2.Caption;
end;

procedure TfrmProgramacaoProcessoFabricacao.frxReport1BeginDoc(Sender: TObject);
begin
  inherited;
  TfrxPictureView(frxPPF.FindObject('LogoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);
end;

procedure TfrmProgramacaoProcessoFabricacao.ListadeOrdemdeProduo1Click(Sender: TObject);
begin
  inherited;
  frxPPF.ShowReport();
end;

procedure TfrmProgramacaoProcessoFabricacao.miOrdemProducaoClick(Sender: TObject);
var
  joinEquipamento: string;
begin
  inherited;
  if BuscaUmDadoSqlAsString('SELECT EQP_CODIGO FROM FABRICACAO f WHERE FAB_CODIGO = ' + VarToStr(cxProcessoDBTableView1.DataController.Controller.SelectedRecords[0].Values[cxProcessoDBTableView1FAB_CODIGO.Index]) ) = '' then
    joinEquipamento := ' LEFT JOIN EQUIPAMENTO eq ON (eq.EQP_CODIGO = ope.EQP_CODIGO) '
  else
    joinEquipamento := ' LEFT JOIN EQUIPAMENTO eq ON (eq.EQP_CODIGO = fb.EQP_CODIGO) ';

    qOP11Cabecalho.Close;
    qOP11Cabecalho.SQL.Clear;
    qOP11Cabecalho.SQL.Text :=
        'SELECT  ft.FTC_ETAPAS, pe.PED_OBS_PRODUCAO, pe.PED_CODIGO, iop.IOP_CODIGO, ' +
        ' ope.OPE_NOME, pr.PRD_REFER, pr.PRD_DESCRI, pr.PRD_COMPL, cl.CLI_RAZAO, ' +
        ' iop.IOP_QUANTIDADE, pr.PRD_UND, pe.PED_DTENTRADA, iop.IOP_NORDEM, eq.EQP_DESCRICAO ' +
        ' FROM ORDEMPRODUCAO op '+
        ' JOIN ITEM_ORDEMPRODUCAO iop ON (iop.OPR_CODIGO = op.OPR_CODIGO) ' +
        ' JOIN PRD0000 pr ON (pr.PRD_CODIGO = iop.PRD_CODIGO) ' +
        ' JOIN CLI0000 cl ON (cl.CLI_CODIGO = op.CLI_CODIGO) ' +
        ' JOIN PED0000 pe ON (pe.PED_CODIGO = op.PED_CODIGO) AND (pe.EMP_CODIGO = op.EMP_CODIGO) ' +
        ' JOIN FABRICACAO fb ON (pr.PRD_CODIGO = fb.PRD_CODIGO AND fb.IOP_CODIGO = iop.IOP_CODIGO ) ' +
        ' JOIN OPERACOES ope ON	(ope.OPE_CODIGO = fb.OPE_CODIGO) ' +
        joinEquipamento +
        ' LEFT JOIN FTC0000 ft ON (ft.PRD_REFER = pr.PRD_REFER) ' +
        ' LEFT JOIN PCX0000 pc ON (pc.PCX_CODIGO = pe.PCX_CODIGO) ' +
        ' WHERE iop.IOP_NORDEM = ' + QuotedStr(VarToStr(cxProcessoDBTableView1.DataController.Controller.SelectedRecords[0].Values[cxProcessoDBTableView1IOP_NORDEM.Index])) +
        '   AND fb.FAB_CODIGO = ' + VarToStr(cxProcessoDBTableView1.DataController.Controller.SelectedRecords[0].Values[cxProcessoDBTableView1FAB_CODIGO.Index])
        ;
    qOP11Cabecalho.Open;

    CopyToClipBoard(qOP11Cabecalho.SQL.Text);

    if qOP11Cabecalho.IsEmpty then
      raise Exception.Create('Ordem de Produção não Iniciada.');


    qOP11Corpo.Close;
    qOP11Corpo.SQL.Clear;
    qOP11Corpo.SQL.Text := 'SELECT DISTINCT ' +
      ' pr.PRD_REFER, pr.PRD_DESCRI, pr.prd_und, mp.prd_codigo, mp.MP_UCONSUMO, MP_CONSUMOTOTAL, ' +
      ' MP.iop_codigo ' +
      '  FROM MATERIAPRIMA_ORDEMPRODUCAO mp ' +
      '   JOIN PRD0000 pr ON (pr.PRD_CODIGO = mp.PRD_CODIGO) ' +
      '   JOIN ITEM_ORDEMPRODUCAO iop ON (iop.OPR_CODIGO = MP.OPR_CODIGO) ' +
      ' WHERE MP.MP_CONSUMOTOTAL > 0 ' +
      '   AND MP.PED_CODIGO = ' + QuotedStr(qOP11Cabecalho.FieldByName('PED_CODIGO').AsString) +
      '   AND MP.IOP_CODIGO = ' + QuotedStr(qOP11Cabecalho.FieldByName('IOP_CODIGO').AsString) ;
    qOP11Corpo.Open;

    // CopyToClipBoard(qOP11Corpo.SQL.Text);



    frxOP11.ShowReport();

end;

procedure TfrmProgramacaoProcessoFabricacao.FormActivate(Sender: TObject);
begin
  inherited;
  frmProgramacaoProcessoFabricacao.WindowState := wsMaximized;
end;

procedure TfrmProgramacaoProcessoFabricacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  cxProcessoDBTableView1.StoreToIniFile(arquivoIni);
  Action := caFree;
  frmProgramacaoProcessoFabricacao := nil;
end;

procedure TfrmProgramacaoProcessoFabricacao.btnPesquisaClick(Sender: TObject);
var
  sql: string;

begin
  inherited;

  qProcesso.Close;
  qProcesso.SQL.Clear;
  sql :=
    ' SELECT DISTINCT op.emp_codigo, ' +
    '   fb.FAB_CODIGO, iop.IOP_NORDEM, COALESCE(cl.CLI_FANTASIA, cl.CLI_RAZAO) CLI_RAZAO, pr.PRD_REFER, ' +
    '   pr.PRD_DESCRI, pr.PRD_UND, pr.INTERNO, pr.EXTERNO, pr.altura1, pr.altura2, ' +
    '   CASE ' +
    '     WHEN iop.IOP_STATUS = ''L'' THEN ''PENDENTE'' ' +
    '     WHEN iop.IOP_STATUS = ''I'' THEN ''INICIADA'' ' +
    '   END IOP_STATUS, ' +
    '   it.PRF_QTDE, fb.FAB_DIAS, iop.IOP_DATA_PREVISTA, ' +
    '   COALESCE(iop.IOP_DATA_AJUSTADA,	pe.PED_DTSAIDA) IOP_DATA_AJUSTADA, ' +
    '   iop.IOP_DATA_INICIO, iop.IOP_DATA_CONCLUSAO, ' +
    '   fb.FAB_PRODUZIDA, fb.FAB_DIAS, opr.OPE_DESCRICAO, opr.OPE_CODIGO, eq.EQP_DESCRICAO ' +
    ' FROM ORDEMPRODUCAO op ' +
    ' JOIN CLI0000 cl ON cl.CLI_CODIGO = op.CLI_CODIGO ' +
    ' JOIN ITEM_ORDEMPRODUCAO iop ON (iop.OPR_CODIGO = op.OPR_CODIGO ) ' +
    ' JOIN PRD0000 pr ON (pr.PRD_CODIGO = iop.PRD_CODIGO) ' +
    ' JOIN PED0000 pe ON (pe.PED_CODIGO = op.PED_CODIGO AND op.EMP_CODIGO = pe.EMP_CODIGO) ' +
    ' JOIN FABRICACAO fb ON (pr.PRD_CODIGO = fb.PRD_CODIGO AND iop.IOP_CODIGO = fb.IOP_CODIGO) '+
    ' LEFT JOIN FTC0000 ft ON (ft.PRD_REFER = pr.PRD_REFER) ' +
    ' LEFT JOIN PRD_LOTE lot ON (lot.IOP_CODIGO = iop.IOP_CODIGO) ' +
    ' LEFT JOIN PED_IT01 it ON (it.PED_CODIGO = op.PED_CODIGO AND it.PRD_CODIGO = iop.PRD_CODIGO) ' +
    ' LEFT JOIN OPERACOES opr ON (opr.OPE_CODIGO = fb.OPE_CODIGO)' +
       ' LEFT JOIN EQUIPAMENTO eq ON (eq.EQP_CODIGO = fb.EQP_CODIGO) ' +
    ' WHERE ' +
    '   EXISTS (SELECT * FROM DEMANDA_PRODUCAO dpr WHERE dpr.PED_CODIGO = op.PED_CODIGO AND dpr.EMP_CODIGO = op.EMP_CODIGO ) ' +
    '   AND ( iop.iop_status <> ''F'')   ';

   if (EdOperacaoCodigo.Text <> '') then
      sql := sql + ' AND opr.OPE_CODIGO = ' + EdOperacaoCodigo.Text;
   if (edEquipamentoCodigo.Text <> '') then
      sql := sql + ' AND eq.EQP_CODIGO = ' + edEquipamentoCodigo.Text;
   if (edClienteCodigo.Text <> '') then
      sql := sql + ' AND cl.CLI_CODIGO = ' + edClienteCodigo.Text;


   if (dtInicialEntrega.date > 0) and (dtFinalEntrega.date = 0)then
      sql := sql + ' AND iop.IOP_DATA_PREVISTA >= ' + DateToSQL(dtInicialEntrega.Date) ;
   if (dtInicialEntrega.date > 0) and (dtFinalEntrega.date > 0)then
      sql := sql + ' AND iop.IOP_DATA_PREVISTA BETWEEN ' + DateToSQL(dtInicialEntrega.Date) + ' AND ' + DateToSQL(dtFinalEntrega.Date + StrToTime('23:59:59'));

   if (dtInicialAjustada.date > 0) and (dtFinalAjustada.date = 0)then
      sql := sql + ' AND iop.IOP_DATA_AJUSTADA >= ' + DateToSQL(dtInicialAjustada.Date) ;
   if (dtInicialAjustada.date > 0) and (dtFinalAjustada.date > 0)then
      sql := sql + ' AND iop.IOP_DATA_AJUSTADA BETWEEN ' + DateToSQL(dtInicialAjustada.Date) + ' AND ' + DateTimeToSQL(dtFinalAjustada.Date + StrToTime('23:59:59'));

  sql := sql + ' ORDER BY iop.IOP_NORDEM, fb.SEQUENCIA';
  qProcesso.SQL.Text := sql;
  qProcesso.Open;
  lbRegistro.Caption := 'Nº de Registros: ' + IntToStr(qProcesso.RecordCount);
end;

procedure TfrmProgramacaoProcessoFabricacao.cxProcessoDBTableView1DataControllerDataChanged(Sender: TObject);
begin
  inherited;
  if cxProcessoDBTableView1.DataController.Controller.SelectedRecords[0] <> nil then
  begin
    if VarToStr(cxProcessoDBTableView1.DataController.Controller.SelectedRecords[0].Values[cxProcessoDBTableView1FAB_DIAS.Index]) = '' then
      cxProcessoDBTableView1.DataController.Controller.SelectedRecords[0].Values[cxProcessoDBTableView1FAB_DIAS.Index] := 0;
    qAux.Close;
    qAux.SQL.Text := 'UPDATE FABRICACAO SET FAB_DIAS = ' + FloatToSQL(cxProcessoDBTableView1.DataController.Controller.SelectedRecords[0].Values[cxProcessoDBTableView1FAB_DIAS.Index]) +
    ' WHERE FAB_CODIGO = ' + QuotedStr(VarToStr(cxProcessoDBTableView1.DataController.Controller.SelectedRecords[0].Values[cxProcessoDBTableView1FAB_CODIGO.Index])) ;
    qAux.ExecSql;
  end;
end;

procedure TfrmProgramacaoProcessoFabricacao.cxProcessoDBTableView1DataControllerDetailExpanding(ADataController: TcxCustomDataController; ARecordIndex: Integer; var AAllow: Boolean);
begin
  inherited;
    cxProcessoDBTableView1.ViewData.Collapse(true);
end;

procedure TfrmProgramacaoProcessoFabricacao.cxProcessoDBTableView1EQP_DESCRICAOGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
begin
  inherited;
    if AText = '' then
    begin
      AText := BuscaUmDadoSqlAsString(
        'SELECT	eq.EQP_DESCRICAO ' +
        ' FROM	FABRICACAO FB ' +
        ' JOIN OPERACOES OP ON	(OP.OPE_CODIGO = FB.OPE_CODIGO) ' +
        ' JOIN EQUIPAMENTO eq ON (eq.EQP_CODIGO = op.EQP_CODIGO) ' +
        ' WHERE	FB.FAB_CODIGO  =  ' + VarToStr(cxProcessoDBTableView1.DataController.GetValue(ARecordIndex, cxProcessoDBTableView1FAB_CODIGO.Index))
      );
    end;
end;

procedure TfrmProgramacaoProcessoFabricacao.edClienteCodigoExit(Sender: TObject);
begin
  inherited;
  scCliente.idRetorno := EdClienteCodigo.Text;
end;

procedure TfrmProgramacaoProcessoFabricacao.edEquipamentoCodigoExit(Sender: TObject);
begin
  inherited;
  scEquipamento.idRetorno := edEquipamentoCodigo.Text;
end;

procedure TfrmProgramacaoProcessoFabricacao.EdOperacaoCodigoExit(Sender: TObject);
begin
  inherited;
  scOperacoes.idRetorno := EdOperacaoCodigo.Text;
end;

procedure TfrmProgramacaoProcessoFabricacao.scClienteChange(Sender: TObject);
begin
  inherited;
  edClienteCodigo.Text := scCliente.idRetorno;
end;

procedure TfrmProgramacaoProcessoFabricacao.scEquipamentoChange(Sender: TObject);
begin
  inherited;
  edEquipamentoCodigo.Text := scEquipamento.idRetorno;
  if edEquipamentoCodigo.Text = '' then
    edEspecificacao.Text := ''
  else
    edEspecificacao.Text := BuscaUmDadoSqlAsString('SELECT EQP_ESPECIFICACAO FROM equipamento WHERE EQP_CODIGO = ' + edEquipamentoCodigo.Text)
end;

procedure TfrmProgramacaoProcessoFabricacao.scOperacoesChange(Sender: TObject);
begin
  inherited;
  EdOperacaoCodigo.Text := scOperacoes.idRetorno;
end;

procedure TfrmProgramacaoProcessoFabricacao.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  EdOperacaoCodigo.Text := '';
  scOperacoes.idRetorno := '';
  edEquipamentoCodigo.Text := '';
  scEquipamento.idRetorno := '';
  dtInicialEntrega.Text := '';
  dtFinalEntrega.Text := '';
  dtInicialAjustada.Text := '';
  dtFinalAjustada.Text := '';
  edClienteCodigo.Text := '';
  scCliente.idRetorno := '';
  edEspecificacao.Text := '';
end;

procedure TfrmProgramacaoProcessoFabricacao.btnAbrirApontamentosClick(Sender: TObject);
begin
  inherited;
  if not Assigned(frmNovoApontamento) then
    frmNovoApontamento := TfrmNovoApontamento.Create(application);
  frmNovoApontamento.show;
end;

procedure TfrmProgramacaoProcessoFabricacao.btnExportarClick(Sender: TObject);
var
  lista: TStringList;
begin
  inherited;
  btnPesquisa.Click;
  lista := TStringList.Create;
  lista.Clear;
 	lista.add('IOP_NORDEM');
	lista.add('CLI_RAZAO');
	lista.add('PRD_REFER');
	lista.add('PRD_DESCRI');
	lista.add('PRD_UND');
	lista.add('INTERNO');
	lista.add('EXTERNO');
	lista.add('altura1');
	lista.add('altura2');
	lista.add('PRF_QTDE');
	lista.add('FAB_DIAS');
	lista.add('IOP_DATA_PREVISTA');
	lista.add('IOP_DATA_AJUSTADA');
	lista.add('IOP_DATA_INICIO');
  lista.add('IOP_STATUS');
	lista.add('FAB_PRODUZIDA');
  CriaCSV(dsProcesso, lista, Self);
end;

procedure TfrmProgramacaoProcessoFabricacao.btnListarClick(Sender: TObject);
begin
  frxPPF.ShowReport();
end;

procedure TfrmProgramacaoProcessoFabricacao.btnModificarOperacaoClick(Sender: TObject);
begin
  inherited;
  if not Assigned(frmPesquisaOperacaoProcessoFabricacao) then
    frmPesquisaOperacaoProcessoFabricacao := TfrmPesquisaOperacaoProcessoFabricacao.Create(application);
  if cxProcessoDBTableView1.DataController.Controller.SelectedRecords[0] <> nil then
  begin
    frmPesquisaOperacaoProcessoFabricacao.edPesquisa.Text := VarToStr(cxProcessoDBTableView1.DataController.Controller.SelectedRecords[0].Values[cxProcessoDBTableView1IOP_NORDEM.Index]);
    frmPesquisaOperacaoProcessoFabricacao.btnPesquisa.Click;
  end;
  frmPesquisaOperacaoProcessoFabricacao.ShowModal;
end;

end.
