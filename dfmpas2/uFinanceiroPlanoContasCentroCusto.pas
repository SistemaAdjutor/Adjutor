unit uFinanceiroPlanoContasCentroCusto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TFlatSplitterUnit, ExtCtrls, TFlatPanelUnit, ImgList,
  JvImageList, ComCtrls, JvExComCtrls, JvDBTreeView, JvPageList,
  JvNavigationPane, JvExControls, DB, DBClient, Grids, DBGrids, DataCad,
  JvSpin, Mask, JvExMask, rxToolEdit, jvToolEdit, DateUtils, RWFunc,
  JvComponentBase,
  JvDBGridExport, JvGIFCtrl, Menus, System.ImageList, JvAnimatedImage,
  Datasnap.Provider;

type
  TFrmFinanceiroPlanoContasCentroCusto = class(TForm)
    fltpn1: TFlatPanel;
    fltpnMenu: TFlatPanel;
    FlatSplitter1: TFlatSplitter;
    fltpnPrincipal: TFlatPanel;
    JvNavigationPane1: TJvNavigationPane;
    jvnPlanoContas: TJvNavPanelPage;
    jvnCentroCusto: TJvNavPanelPage;
    JvImageList1: TJvImageList;
    dbgrdPlanoConta: TDBGrid;
    dbgrdCentroCusto: TDBGrid;
    dbgrdResultado: TDBGrid;
    CdsCentroCusto: TClientDataSet;
    CdsPlanoContas: TClientDataSet;
    dsCentroCusto: TDataSource;
    dsPlanoContas: TDataSource;
    CdsCentroCustoNivel: TStringField;
    CdsCentroCustoDescricao: TStringField;
    CdsCentroCustoSelecionado: TBooleanField;
    CdsPlanoContasNivel: TStringField;
    CdsPlanoContasDescricao: TStringField;
    CdsPlanoContasSelecionado: TBooleanField;
    CdsCentroCustoRegistro: TStringField;
    CdsPlanoContasRegistro: TStringField;
    dsResultado: TDataSource;
    CdsResultado: TClientDataSet;
    JvDBGridExcelExport1: TJvDBGridExcelExport;
    SaveDialog1: TSaveDialog;
    CdsCentroCustoiNivel: TIntegerField;
    CdsCentroCustotipoNivel: TStringField;
    CdsPlanoContasiNivel: TIntegerField;
    CdsPlanoContasTipoNivel: TStringField;
    pmPlanoContas: TPopupMenu;
    pmCentroCusto: TPopupMenu;
    MarcarTodos1: TMenuItem;
    DesmarcarTodos1: TMenuItem;
    MarcarTodos2: TMenuItem;
    DesmarcarTodos2: TMenuItem;
    grpFiltro: TGroupBox;
    cbbTipoConsulta: TComboBox;
    chkMostrarContasSemMovimento: TCheckBox;
    Panel1: TPanel;
    btnAtualizar: TButton;
    btnImprimir: TButton;
    btnFechar: TButton;
    grpEmpresa: TGroupBox;
    rbEmpresa: TRadioButton;
    RbMultiEmpresa: TRadioButton;
    rgVisualizao: TRadioGroup;
    grpPeriodo: TGroupBox;
    lblInicio: TLabel;
    lblFim: TLabel;
    edtInicial: TJvDateEdit;
    edtFinal: TJvDateEdit;
    edtMesInicial: TJvSpinEdit;
    edtAnoInicial: TJvSpinEdit;
    edtMesFinal: TJvSpinEdit;
    edtAnoFinal: TJvSpinEdit;
    CdsPlanoContasNomeCampo: TStringField;
    CdsCentroCustoNomeCampo: TStringField;
    procedure FormShow(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure dbgrdPlanoContaDrawColumnCell(Sender: tObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgrdCentroCustoDrawColumnCell(Sender: tObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnFecharClick(Sender: tObject);
    procedure btnAtualizarClick(Sender: tObject);
    procedure rgVisualizaoExit(Sender: tObject);
    procedure Button1Click(Sender: tObject);
    procedure btnImprimirClick(Sender: tObject);
    procedure dbgrdCentroCustoDblClick(Sender: tObject);
    procedure dbgrdPlanoContaDblClick(Sender: tObject);
    procedure MarcarTodos1Click(Sender: tObject);
    procedure DesmarcarTodos1Click(Sender: tObject);
    procedure MarcarTodos2Click(Sender: tObject);
    procedure DesmarcarTodos2Click(Sender: tObject);
    procedure chkMostrarContasSemMovimentoClick(Sender: tObject);
    procedure cbbTipoConsultaChange(Sender: tObject);
    procedure fltpnMenuResize(Sender: tObject);
    procedure FormDestroy(Sender: tObject);
  private
    dDataInicial, dDataFinal: TDate;
    sSemana: string;
    iMes, iAno: Integer;

    { Private declarations }
    procedure AtualizaForm;
    procedure LayoutPesquisa;
    procedure RealizaPesquisa;
    procedure LayoutFiltro;
    //
    function RetornaSemana(data: TDate): String;
    function InicioMes(mes, ano: Integer): TDate;
    function FinalMes(mes, ano: Integer): TDate;
    function InicioBimestre(bimestre, ano: Integer): TDate;
    function FinalBimestre(bimestre, ano: Integer): TDate;
    function InicioTrimestre(trimestre, ano: Integer): TDate;
    function FinalTrimestre(trimestre, ano: Integer): TDate;
    function InicioSemestre(semestre, ano: Integer): TDate;
    function FinalSemestre(semestre, ano: Integer): TDate;
    function InicioAno(ano: Integer): TDate;
    function FinalAno(ano: Integer): TDate;
    function RetornaMes(data: TDate): string;
    function RetornaBimestre(data: TDate): string;
    function RetornaTrimestre(data: TDate): string;
    function RetornaSemestre(data: TDate): string;
    function RetornaAno(data: TDate): string;

    function CountChar(Texto: String; C: Char): Integer;
    procedure AtualizaContagemNivel;

    procedure CalculaTotais;
    procedure ZerarLinhas(Clone: TClientDataSet; tipolinhas: string);
    procedure MarcarDesmarcarCentroCustoUnitario;
    procedure MarcarDesmarcarPlanoContasUnitario;

    procedure MarcarDesmarcarCentroCustoGeral(valor: Boolean);
    procedure MarcarDesmarcarPlanoContasGeral(valor: Boolean);

    procedure LimpaConsulta;
    procedure Atualizar;

  public
    { Public declarations }
  end;

var
  FrmFinanceiroPlanoContasCentroCusto: TFrmFinanceiroPlanoContasCentroCusto;

implementation

uses Men0001, ComObj, uteis, iniciodb, Animacao;

{$R *.dfm}

procedure TFrmFinanceiroPlanoContasCentroCusto.FormShow(Sender: tObject);
var
  x: Integer;

begin
  inherited;
  dbgrdResultado.Align := alClient;

  grpPeriodo.width := 160;
  edtInicial.Left := edtMesInicial.Left;
  edtFinal.Left := edtMesInicial.Left;

  CdsCentroCusto.EmptyDataSet;
  CdsPlanoContas.EmptyDataSet;
  // Carrega Grades

  // Plano de Contas
  x := 1;
  DataCadastros.sqlUpdate.Close;
  DataCadastros.sqlUpdate.sql.text :=
    'SELECT * FROM CCT_0000 ORDER BY CCT_NIVEL';
  DataCadastros.sqlUpdate.Open;
  DataCadastros.sqlUpdate.First;
  while (not DataCadastros.sqlUpdate.Eof) do
  begin
    CdsPlanoContas.Append;
    CdsPlanoContasSelecionado.AsBoolean := True;
    CdsPlanoContasRegistro.AsString := DataCadastros.sqlUpdate.FieldByName
      ('CCT_CODIGO').AsString;
    CdsPlanoContasNivel.AsString := DataCadastros.sqlUpdate.FieldByName
      ('CCT_NIVEL').AsString;
    CdsPlanoContasDescricao.AsString := DataCadastros.sqlUpdate.FieldByName
      ('CCT_DESCRI').AsString;
    CdsPlanoContasNomeCampo.AsString := 'PC_FLD_' + x.ToString;
    CdsPlanoContasTipoNivel.AsString := DataCadastros.sqlUpdate.FieldByName
      ('CCT_STATUS').AsString;
    inc(x);
    CdsPlanoContas.Post;
    DataCadastros.sqlUpdate.Next;
  end;
  CdsPlanoContas.tag := x;

  // Centro de Custo
  x := 1;
  DataCadastros.sqlUpdate.Close;
  DataCadastros.sqlUpdate.sql.text :=
    'SELECT * FROM PCX0000 ORDER BY PCX_NIVEL';
  DataCadastros.sqlUpdate.Open;
  DataCadastros.sqlUpdate.First;
  while (not DataCadastros.sqlUpdate.Eof) do
  begin
    CdsCentroCusto.Append;
    CdsCentroCustoSelecionado.AsBoolean := True;
    CdsCentroCustoRegistro.AsString := DataCadastros.sqlUpdate.FieldByName
      ('PCX_CODIGO').AsString;
    CdsCentroCustoNivel.AsString := DataCadastros.sqlUpdate.FieldByName
      ('PCX_NIVEL').AsString;
    CdsCentroCustoDescricao.AsString := DataCadastros.sqlUpdate.FieldByName
      ('PCX_NIVEL').AsString + ' - ' + DataCadastros.sqlUpdate.FieldByName
      ('PCX_DESCRI').AsString;
    CdsCentroCustoNomeCampo.AsString := CdsCentroCustoDescricao.AsString;
    // 'CC_FLD_'+x.ToString;
    CdsCentroCustotipoNivel.AsString := DataCadastros.sqlUpdate.FieldByName
      ('PCX_TIPO').AsString;
    inc(x);

    CdsCentroCusto.Post;
    DataCadastros.sqlUpdate.Next;
  end;
  CdsCentroCusto.tag := x;

  DataCadastros.sqlUpdate.Close;

  CdsCentroCusto.First;
  CdsPlanoContas.First;

  LayoutPesquisa;

end;

procedure TFrmFinanceiroPlanoContasCentroCusto.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
  Inherited;
  CdsCentroCusto.EmptyDataSet;
  CdsPlanoContas.EmptyDataSet;
  Action := CaFree;

end;

procedure TFrmFinanceiroPlanoContasCentroCusto.FormDestroy(Sender: tObject);
begin
  FrmFinanceiroPlanoContasCentroCusto := Nil;
end;

procedure TFrmFinanceiroPlanoContasCentroCusto.dbgrdPlanoContaDrawColumnCell
  (Sender: tObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  Check: Integer;
  R: TRect;
begin
  if (not odd(CdsPlanoContas.RecNo)) then
    if not(GdSelected in State) then
    begin
      dbgrdPlanoConta.Canvas.Brush.Color := $00FFEFDF;
      dbgrdPlanoConta.Canvas.FillRect(Rect);
      dbgrdPlanoConta.DefaultDrawDataCell(Rect, Column.Field, State);
    end;

  // Desenha um checkbox no dbgrid
  if Column.FieldName = 'Selecionado' then
  begin
    dbgrdPlanoConta.Canvas.FillRect(Rect);
    Check := 0;
    if CdsPlanoContasSelecionado.AsBoolean then
      Check := DFCS_CHECKED
    else
      Check := 0;
    R := Rect;
    InflateRect(R, -2, -2); { Diminue o tamanho do CheckBox }
    DrawFrameControl(dbgrdPlanoConta.Canvas.Handle, R, DFC_BUTTON,
      DFCS_BUTTONCHECK or Check);
  end;
end;

procedure TFrmFinanceiroPlanoContasCentroCusto.dbgrdCentroCustoDrawColumnCell
  (Sender: tObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  Check: Integer;
  R: TRect;
begin
  if (not odd(CdsCentroCusto.RecNo)) then
    if not(GdSelected in State) then
    begin
      dbgrdCentroCusto.Canvas.Brush.Color := $00FFEFDF;
      dbgrdCentroCusto.Canvas.FillRect(Rect);
      dbgrdCentroCusto.DefaultDrawDataCell(Rect, Column.Field, State);
    end;

  // Desenha um checkbox no dbgrid
  if Column.FieldName = 'Selecionado' then
  begin
    dbgrdCentroCusto.Canvas.FillRect(Rect);
    Check := 0;
    if CdsCentroCustoSelecionado.AsBoolean then
      Check := DFCS_CHECKED
    else
      Check := 0;
    R := Rect;
    InflateRect(R, -2, -2); { Diminue o tamanho do CheckBox }
    DrawFrameControl(dbgrdCentroCusto.Canvas.Handle, R, DFC_BUTTON,
      DFCS_BUTTONCHECK or Check);
  end;

end;

procedure TFrmFinanceiroPlanoContasCentroCusto.btnFecharClick(Sender: tObject);
begin
  Close;
end;

procedure TFrmFinanceiroPlanoContasCentroCusto.AtualizaForm;
begin

end;

function TFrmFinanceiroPlanoContasCentroCusto.FinalAno(ano: Integer): TDate;
begin
  Result := EndOfTheMonth(StrToDate('01/12/' + IntToStr(ano)));
end;

function TFrmFinanceiroPlanoContasCentroCusto.FinalBimestre(bimestre,
  ano: Integer): TDate;
begin
  case bimestre of
    1:
      Result := EndOfTheMonth(StrToDate('01/02/' + IntToStr(ano)));
    2:
      Result := EndOfTheMonth(StrToDate('01/04/' + IntToStr(ano)));
    3:
      Result := EndOfTheMonth(StrToDate('01/06/' + IntToStr(ano)));
    4:
      Result := EndOfTheMonth(StrToDate('01/08/' + IntToStr(ano)));
    5:
      Result := EndOfTheMonth(StrToDate('01/10/' + IntToStr(ano)));
    6:
      Result := EndOfTheMonth(StrToDate('01/12/' + IntToStr(ano)));
  end;
end;

function TFrmFinanceiroPlanoContasCentroCusto.FinalMes(mes,
  ano: Integer): TDate;
begin
  Result := EndOfTheMonth(StrToDate('01/' + IntToStr(mes) + '/' +
    IntToStr(ano)));
end;

function TFrmFinanceiroPlanoContasCentroCusto.FinalSemestre(semestre,
  ano: Integer): TDate;
begin
  case semestre of
    1:
      Result := EndOfTheMonth(StrToDate('01/06/' + IntToStr(ano)));
    2:
      Result := EndOfTheMonth(StrToDate('01/12/' + IntToStr(ano)));
  end;
end;

function TFrmFinanceiroPlanoContasCentroCusto.FinalTrimestre(trimestre,
  ano: Integer): TDate;
begin
  case trimestre of
    1:
      Result := EndOfTheMonth(StrToDate('01/03/' + IntToStr(ano)));
    2:
      Result := EndOfTheMonth(StrToDate('01/06/' + IntToStr(ano)));
    3:
      Result := EndOfTheMonth(StrToDate('01/09/' + IntToStr(ano)));
    4:
      Result := EndOfTheMonth(StrToDate('01/12/' + IntToStr(ano)));
  end;
end;

procedure TFrmFinanceiroPlanoContasCentroCusto.fltpnMenuResize(Sender: tObject);
begin
  dbgrdPlanoConta.Columns[2].width := fltpnMenu.width -
    (dbgrdPlanoConta.Columns[0].width + dbgrdPlanoConta.Columns[1].width + 10);
  dbgrdCentroCusto.Columns[2].width := fltpnMenu.width -
    (dbgrdCentroCusto.Columns[0].width + dbgrdCentroCusto.Columns[1]
    .width + 10);
end;

function TFrmFinanceiroPlanoContasCentroCusto.InicioAno(ano: Integer): TDate;
begin
  Result := StrToDate('01/01/' + IntToStr(ano));
end;

function TFrmFinanceiroPlanoContasCentroCusto.InicioBimestre(bimestre,
  ano: Integer): TDate;
begin
  case bimestre of
    1:
      Result := StrToDate('01/01/' + IntToStr(ano));
    2:
      Result := StrToDate('01/03/' + IntToStr(ano));
    3:
      Result := StrToDate('01/05/' + IntToStr(ano));
    4:
      Result := StrToDate('01/07/' + IntToStr(ano));
    5:
      Result := StrToDate('01/09/' + IntToStr(ano));
    6:
      Result := StrToDate('01/11/' + IntToStr(ano));
  end;
end;

function TFrmFinanceiroPlanoContasCentroCusto.InicioMes(mes,
  ano: Integer): TDate;
begin
  Result := StrToDate('01/' + IntToStr(mes) + '/' + IntToStr(ano));
end;

function TFrmFinanceiroPlanoContasCentroCusto.InicioSemestre(semestre,
  ano: Integer): TDate;
begin
  case semestre of
    1:
      Result := StrToDate('01/01/' + IntToStr(ano));
    2:
      Result := StrToDate('01/07/' + IntToStr(ano));
  end;
end;

function TFrmFinanceiroPlanoContasCentroCusto.InicioTrimestre(trimestre,
  ano: Integer): TDate;
begin
  case trimestre of
    1:
      Result := StrToDate('01/01/' + IntToStr(ano));
    2:
      Result := StrToDate('01/04/' + IntToStr(ano));
    3:
      Result := StrToDate('01/07/' + IntToStr(ano));
    4:
      Result := StrToDate('01/10/' + IntToStr(ano));
  end;
end;

procedure TFrmFinanceiroPlanoContasCentroCusto.LayoutFiltro;
begin

end;

procedure TFrmFinanceiroPlanoContasCentroCusto.LayoutPesquisa;
var
  dia, mes, ano: Integer;
begin
  // Visible False
  edtInicial.Visible := False;
  edtFinal.Visible := False;
  edtMesInicial.Visible := False;
  edtAnoInicial.Visible := False;
  edtMesFinal.Visible := False;
  edtAnoFinal.Visible := False;
  edtAnoInicial.Left := 104;
  edtAnoFinal.Left := 104;
  // Extrair data Atual
  dia := StrToInt(formatdatetime('dd', Date));
  mes := StrToInt(formatdatetime('mm', Date));
  ano := StrToInt(formatdatetime('yyyy', Date));
  //
  case rgVisualizao.ItemIndex of
    0:
      begin // Diário
        grpPeriodo.Caption := 'Período Diário';
        edtInicial.Visible := True;
        edtFinal.Visible := True;
        // Valores Padroes
        edtInicial.Date := PrimeiroDiadoMes(Date);
        edtFinal.Date := Date;
      end;
    1:
      begin // Semanal
        grpPeriodo.Caption := 'Período Semanal';
        edtMesInicial.MaxValue := 12;
        edtMesFinal.MaxValue := 12;
        edtMesInicial.Visible := True;
        edtAnoInicial.Visible := True;
        edtMesFinal.Visible := True;
        edtAnoFinal.Visible := True;
        // Valores Padroes
        edtMesInicial.Value := mes;
        edtAnoInicial.Value := ano;
        edtMesFinal.Value := mes;
        edtAnoFinal.Value := ano;
      end;
    2:
      begin // Mensal
        grpPeriodo.Caption := 'Período Mensal';
        edtMesInicial.MaxValue := 12;
        edtMesFinal.MaxValue := 12;
        edtMesInicial.Visible := True;
        edtAnoInicial.Visible := True;
        edtMesFinal.Visible := True;
        edtAnoFinal.Visible := True;
        // Valores Padroes
        edtMesInicial.Value := 1;
        edtAnoInicial.Value := ano;
        edtMesFinal.Value := 12;
        edtAnoFinal.Value := ano;
      end;
    3:
      begin // Bimestral
        grpPeriodo.Caption := 'Período Bimestral';
        edtMesInicial.MaxValue := 6;
        edtMesFinal.MaxValue := 6;
        edtMesInicial.Visible := True;
        edtAnoInicial.Visible := True;
        edtMesFinal.Visible := True;
        edtAnoFinal.Visible := True;
        // Valores Padroes
        edtMesInicial.Value := 1;
        edtAnoInicial.Value := ano;
        edtMesFinal.Value := 6;
        edtAnoFinal.Value := ano;
      end;
    4:
      begin // Trimestral
        grpPeriodo.Caption := 'Período Trimestral';
        edtMesInicial.MaxValue := 4;
        edtMesFinal.MaxValue := 4;
        edtMesInicial.Visible := True;
        edtAnoInicial.Visible := True;
        edtMesFinal.Visible := True;
        edtAnoFinal.Visible := True;
        // Valores Padroes
        edtMesInicial.Value := 1;
        edtAnoInicial.Value := ano;
        edtMesFinal.Value := 4;
        edtAnoFinal.Value := ano;
      end;
    5:
      begin // Semestral
        grpPeriodo.Caption := 'Período Semestral';
        edtMesInicial.MaxValue := 2;
        edtMesFinal.MaxValue := 2;
        edtMesInicial.Visible := True;
        edtAnoInicial.Visible := True;
        edtMesFinal.Visible := True;
        edtAnoFinal.Visible := True;
        // Valores Padroes
        edtMesInicial.Value := 1;
        edtAnoInicial.Value := ano - 1;
        edtMesFinal.Value := 12;
        edtAnoFinal.Value := ano;
      end;
    6:
      begin // Anual
        grpPeriodo.Caption := 'Período Anual';
        edtMesInicial.MaxValue := 12;
        edtMesFinal.MaxValue := 12;
        edtAnoInicial.Visible := True;
        edtAnoFinal.Visible := True;
        edtAnoInicial.Left := 64;
        edtAnoFinal.Left := 64;
        // Valores Padroes
        edtMesInicial.Value := 1;
        edtAnoInicial.Value := ano - 2;
        edtMesFinal.Value := 12;
        edtAnoFinal.Value := ano;
      end;
  end;
end;

procedure TFrmFinanceiroPlanoContasCentroCusto.RealizaPesquisa;
var
  sEmpresa, TMP: String;
  x, i, iQtdeSelecionada: Integer;
  bPrimeiro: Boolean;
  Field: TField;
  clonePlanoContas: TClientDataSet;
  cdsCadastros, clonecadastros, cloneResultado: TClientDataSet;
  dsp: TDataSetProvider;

begin

  CdsCentroCusto.DisableControls;
  CdsPlanoContas.DisableControls;

  Self.Update;

  case rgVisualizao.ItemIndex of
    0:
      begin // Diário
        dDataInicial := edtInicial.Date;
        dDataFinal := edtFinal.Date;
      end;
    1:
      begin // Semanal
        dDataInicial := edtInicial.Date;
        dDataFinal := edtFinal.Date;
      end;
    2:
      begin // Mensal
        dDataInicial := InicioMes(edtMesInicial.AsInteger,
          edtAnoInicial.AsInteger);
        dDataFinal := FinalMes(edtMesFinal.AsInteger, edtAnoFinal.AsInteger);
      end;
    3:
      begin // Bimestral
        dDataInicial := InicioBimestre(edtMesInicial.AsInteger,
          edtAnoInicial.AsInteger);
        dDataFinal := FinalBimestre(edtMesFinal.AsInteger,
          edtAnoFinal.AsInteger);
      end;
    4:
      begin // Trimestral
        dDataInicial := InicioTrimestre(edtMesInicial.AsInteger,
          edtAnoInicial.AsInteger);
        dDataFinal := FinalTrimestre(edtMesFinal.AsInteger,
          edtAnoFinal.AsInteger);
      end;
    5:
      begin // Semestral
        dDataInicial := InicioSemestre(edtMesInicial.AsInteger,
          edtAnoInicial.AsInteger);
        dDataFinal := FinalSemestre(edtMesFinal.AsInteger,
          edtAnoFinal.AsInteger);
      end;
    6:
      begin // Anual
        dDataInicial := InicioAno(edtAnoInicial.AsInteger);
        dDataFinal := FinalAno(edtAnoFinal.AsInteger);
      end;
  end;
  // Empresa
  screen.Cursor := crHourGlass;
  application.processmessages;

  try
    sEmpresa := iif(rbEmpresa.Checked, dbInicio.Empresa.EMP_CODIGO, '999');
    // Fecha Conexao
    //
    fmAnimacao := TfmAnimacao.Create(application);
    fmAnimacao.Panel1.Caption :=
      'Buscando Informações. Aguarde, isto poderá demorar um pouco...';
    fmAnimacao.Show;
    application.processmessages;

    DataCadastros.sqlUpdate.Close;
    if (cbbTipoConsulta.ItemIndex = 0) then
      DataCadastros.sqlUpdate.sql.text :=
        'select * from PCd_PLANO_CONTAS_CENTRO_PR(' + QuotedStr(sEmpresa) + ','
        + QuotedStr(DataAmericana(DateToStr(dDataInicial))) + ', ' +
        QuotedStr(DataAmericana(DateToStr(dDataFinal))) + ')'
    else
      DataCadastros.sqlUpdate.sql.text :=
        'select * from PCd_PLANO_CONTAS_CENTRO_SIMPLES(' + QuotedStr(sEmpresa) +
        ',' + QuotedStr(DataAmericana(DateToStr(dDataInicial))) + ', ' +
        QuotedStr(DataAmericana(DateToStr(dDataFinal))) + ')';

    DataCadastros.sqlUpdate.sql.text := DataCadastros.sqlUpdate.sql.text +
      ' where valor > 0 ';

    // dataCadastros.sqlUpdate.Open;
    DataCadastros.sqlUpdate.Active;
    cdsCadastros := TClientDataSet.Create(Self);
    dsp := TDataSetProvider.Create(Self);
    dsp.Name := 'dsp';
    dsp.DataSet := DataCadastros.sqlUpdate;
    dsp.Options := [poAllowCommandText];
    cdsCadastros.SetProvider(dsp);
    cdsCadastros.ProviderName := 'dsp';
    try
      with cdsCadastros do
      begin

        FieldDefs.Clear;
        FieldDefs.Add('CCT_CODIGO', ftString, 3);
        FieldDefs.Add('TITULO', ftString, 200);
        FieldDefs.Add('CCT_NIVEL', ftString, 20);
        FieldDefs.Add('VALOR', ftFloat);
        FieldDefs.Add('CENTRO', ftString, 31);
        // CreateDataSet;
        Active := True;

      end;

      application.processmessages;

      // Limpar
      CdsResultado.Close;
      // Cria Colunas com base nos centro de custos mascados
      CdsCentroCusto.First;
      CdsResultado.FieldDefs.Clear;

      for i := 0 to CdsResultado.FieldDefs.Count - 1 do
        CdsResultado.FieldDefs[0].Destroy;

      CdsResultado.FieldDefs.Add('*', ftString, 1);
      CdsResultado.FieldDefs.Add('iNivel', ftInteger);

      CdsResultado.FieldDefs.Add('Nivel', ftString, 50);
      CdsResultado.FieldDefs.Add('Descrição', ftString, 150);

      CdsCentroCusto.First;
      while (not CdsCentroCusto.Eof) do
      begin
        // não monstrar os subnivels do centro de custos
        if (CdsCentroCustoSelecionado.AsBoolean) and
          (CdsCentroCustotipoNivel.AsString = 'L') then
          CdsResultado.FieldDefs.Add(CdsCentroCustoNomeCampo.AsString, ftFloat);
        CdsCentroCusto.Next;
      end;

      application.processmessages;

      CdsResultado.FieldDefs.Add('TOTAL', ftFloat);

      CdsResultado.CreateDataSet;
      CdsResultado.IndexFieldNames := 'Nivel';

      CdsCentroCusto.IndexFieldNames := 'Nivel'; // mar
      CdsCentroCusto.First;
      while (not CdsCentroCusto.Eof) do
      begin
        if (CdsCentroCustoSelecionado.AsBoolean) and
          (CdsCentroCustotipoNivel.AsString = 'L') then
          if assigned(CdsResultado.findfield(CdsCentroCustoNomeCampo.AsString))
          then
            TFloatField(CdsResultado.FieldByName
              (CdsCentroCustoNomeCampo.AsString)).DisplayFormat :=
              '#,###,###,##0.0000';

        CdsCentroCusto.Next;
      end;
      TFloatField(CdsResultado.FieldByName('TOTAL')).DisplayFormat :=
        '#,###,###,##0.0000';

      CdsCentroCusto.First;
      // inclusão do plano de contas
      // Cria linhas com base nos itens de plano selecionados
      CdsPlanoContas.IndexFieldNames := 'Nivel';

      clonePlanoContas := TClientDataSet.Create(Self);
      try
        clonePlanoContas.CloneCursor(CdsPlanoContas, True);
        clonePlanoContas.LogChanges := False;
        clonePlanoContas.First;
        while not clonePlanoContas.Eof do
        begin
          if (clonePlanoContas.FieldByName('Selecionado').AsBoolean) then
          begin
            CdsResultado.Insert;

            CdsResultado.FieldByName('*').AsString :=
              clonePlanoContas.FieldByName('TipoNivel').AsString;
            CdsResultado.FieldByName('iNivel').AsInteger :=
              CountChar(clonePlanoContas.FieldByName('Nivel').AsString, '.');
            CdsResultado.FieldByName('Nivel').AsString :=
              clonePlanoContas.FieldByName('Nivel').AsString;
            CdsResultado.FieldByName('Descrição').AsString :=
              clonePlanoContas.FieldByName('Descricao').AsString;
            CdsResultado.Post;
          end;
          clonePlanoContas.Next;
        end;
      finally
        FreeAndNil(clonePlanoContas);
      end;
      ZerarLinhas(CdsResultado, 'L');

      dbgrdResultado.Columns[0].width := 15;
      dbgrdResultado.Columns[1].width := 15;
      dbgrdResultado.Columns[2].width := 100;
      dbgrdResultado.Columns[3].width := 260;

      x := 4; // a proxima coluna disponivel
      CdsCentroCusto.First;
      while not CdsCentroCusto.Eof do
      begin
        // if dbgrdResultado.Columns.count>=x then     //     if dbgrdResultado.Columns.count<=x then
        // begin
        if (CdsCentroCustoSelecionado.AsBoolean) and
          (CdsCentroCustotipoNivel.AsString = 'L') then
        begin
          dbgrdResultado.Columns[x].Title.Caption :=
            CdsCentroCustoDescricao.AsString;
          dbgrdResultado.Columns[x].width := 130;
          inc(x);
          // end;
        end;
        CdsCentroCusto.Next;
      end;

      // Colorir
      dbgrdResultado.Columns[2].Color := clSilver;
      dbgrdResultado.Columns[3].Color := clSilver;
      dbgrdResultado.Columns[dbgrdResultado.Columns.Count - 1].Color :=
        clSilver;
      dbgrdResultado.Columns[dbgrdResultado.Columns.Count - 1].width := 140;

      cloneResultado := TClientDataSet.Create(Self);
      clonecadastros := TClientDataSet.Create(Self);
      try
        cloneResultado.CloneCursor(CdsResultado, True);
        cloneResultado.LogChanges := False;
        clonecadastros.CloneCursor(cdsCadastros, True);
        clonecadastros.LogChanges := False;
        clonecadastros.First;
        while not clonecadastros.Eof do
        begin
          if (cloneResultado.Locate('Nivel',
            clonecadastros.FieldByName('CCT_NIVEL').AsString, [])) then
          begin
            if CdsCentroCusto.Locate('Descricao',
              clonecadastros.FieldByName('CENTRO').AsString, [lopartialkey])
            then
            begin
              TMP := CdsCentroCustoNomeCampo.AsString;
              if assigned(cloneResultado.findfield
                (CdsCentroCustoNomeCampo.AsString)) then
              begin
                cloneResultado.Edit;
                cloneResultado.FieldByName(TMP).AsFloat :=
                  cloneResultado.FieldByName(TMP).AsFloat +
                  clonecadastros.FieldByName('VALOR').AsFloat;
                cloneResultado.Post;
              end;
            end;
          end;
          clonecadastros.Next;
        end;

      finally
        FreeAndNil(cloneResultado);
        FreeAndNil(clonecadastros);

      end;

      CalculaTotais;

      Self.Update;

      CdsCentroCusto.EnableControls;
      CdsPlanoContas.EnableControls;
    finally
      FreeAndNil(clonecadastros);
      FreeAndNil(dsp);

    end;
  finally
    screen.Cursor := crDefault;
    fmAnimacao.Close;
  end;
end;

function TFrmFinanceiroPlanoContasCentroCusto.RetornaAno(data: TDate): string;
begin
  iAno := StrToInt(formatdatetime('yyyy', data));
  Result := IntToStr(iAno);
end;

function TFrmFinanceiroPlanoContasCentroCusto.RetornaBimestre
  (data: TDate): string;
begin
  iMes := StrToInt(formatdatetime('mm', data));
  iAno := StrToInt(formatdatetime('yyyy', data));
  case iMes of
    1:
      Result := '1 BIM /' + IntToStr(iAno);
    2:
      Result := '1 BIM /' + IntToStr(iAno);
    3:
      Result := '2 BIM /' + IntToStr(iAno);
    4:
      Result := '2 BIM /' + IntToStr(iAno);
    5:
      Result := '3 BIM /' + IntToStr(iAno);
    6:
      Result := '3 BIM /' + IntToStr(iAno);
    7:
      Result := '4 BIM /' + IntToStr(iAno);
    8:
      Result := '4 BIM /' + IntToStr(iAno);
    9:
      Result := '5 BIM /' + IntToStr(iAno);
    10:
      Result := '5 BIM /' + IntToStr(iAno);
    11:
      Result := '6 BIM /' + IntToStr(iAno);
    12:
      Result := '6 BIM /' + IntToStr(iAno);
  end;
end;

function TFrmFinanceiroPlanoContasCentroCusto.RetornaMes(data: TDate): string;
begin
  iAno := StrToInt(formatdatetime('yyyy', data));
  Result := formatdatetime('mm', data) + '/' + IntToStr(iAno);
end;

function TFrmFinanceiroPlanoContasCentroCusto.RetornaSemana
  (data: TDate): String;
begin
  Result := DateToStr(Date() - (DayOfWeek(Date()) - 1)) + '-' +
    DateToStr(Date() + (7 - DayOfWeek(Date())));
end;

function TFrmFinanceiroPlanoContasCentroCusto.RetornaSemestre
  (data: TDate): string;
begin
  iMes := StrToInt(formatdatetime('mm', data));
  iAno := StrToInt(formatdatetime('yyyy', data));
  case iMes of
    1:
      Result := '1 SEM /' + IntToStr(iAno);
    2:
      Result := '1 SEM /' + IntToStr(iAno);
    3:
      Result := '1 SEM /' + IntToStr(iAno);
    4:
      Result := '1 SEM /' + IntToStr(iAno);
    5:
      Result := '1 SEM /' + IntToStr(iAno);
    6:
      Result := '1 SEM /' + IntToStr(iAno);
    7:
      Result := '2 SEM /' + IntToStr(iAno);
    8:
      Result := '2 SEM /' + IntToStr(iAno);
    9:
      Result := '2 SEM /' + IntToStr(iAno);
    10:
      Result := '2 SEM /' + IntToStr(iAno);
    11:
      Result := '2 SEM /' + IntToStr(iAno);
    12:
      Result := '2 SEM /' + IntToStr(iAno);
  end;
end;

function TFrmFinanceiroPlanoContasCentroCusto.RetornaTrimestre
  (data: TDate): string;
begin
  iMes := StrToInt(formatdatetime('mm', data));
  iAno := StrToInt(formatdatetime('yyyy', data));
  case iMes of
    1:
      Result := '1 TRI /' + IntToStr(iAno);
    2:
      Result := '1 TRI /' + IntToStr(iAno);
    3:
      Result := '1 TRI /' + IntToStr(iAno);
    4:
      Result := '2 TRI /' + IntToStr(iAno);
    5:
      Result := '2 TRI /' + IntToStr(iAno);
    6:
      Result := '2 TRI /' + IntToStr(iAno);
    7:
      Result := '3 TRI /' + IntToStr(iAno);
    8:
      Result := '3 TRI /' + IntToStr(iAno);
    9:
      Result := '3 TRI /' + IntToStr(iAno);
    10:
      Result := '4 TRI /' + IntToStr(iAno);
    11:
      Result := '4 TRI /' + IntToStr(iAno);
    12:
      Result := '4 TRI /' + IntToStr(iAno);
  end;
end;

procedure TFrmFinanceiroPlanoContasCentroCusto.btnAtualizarClick
  (Sender: tObject);
begin
  Atualizar;
end;

procedure TFrmFinanceiroPlanoContasCentroCusto.Atualizar;
begin

  if (rgVisualizao.ItemIndex = 0) then // Diário
  begin
    if (edtInicial.Date > edtFinal.Date) then
    begin
      uteis.aviso('A data Inicial não pode ser maior que a data final');
      edtInicial.SetFocus;
      edtInicial.SelectAll;
    end
    else
      RealizaPesquisa;
  end
  else
  begin
    if (edtMesInicial.Visible) then
    begin
      if (edtAnoFinal.Value < edtAnoInicial.Value) then
      begin
        uteis.aviso('A ano Inicial não pode ser maior que o ano final');
        edtAnoInicial.SetFocus;
        edtAnoInicial.SelectAll;
      end
      else if (edtMesFinal.Value < edtMesInicial.Value) and
        ((edtAnoFinal.Value <= edtAnoInicial.Value)) then
      begin
        uteis.aviso('A periodo Inicial não pode ser maior que o periodo final');
        edtMesInicial.SetFocus;
        edtMesInicial.SelectAll;
      end
      else
        RealizaPesquisa;
    end
    else
    begin
      if (edtAnoFinal.Value < edtAnoInicial.Value) then
      begin
        uteis.aviso('A ano Inicial não pode ser maior que o ano final');
        edtAnoInicial.SetFocus;
        edtAnoInicial.SelectAll;
      end
      else
        RealizaPesquisa;
    end;
  end;
end;

procedure TFrmFinanceiroPlanoContasCentroCusto.rgVisualizaoExit
  (Sender: tObject);
begin
  LayoutPesquisa;
end;

procedure TFrmFinanceiroPlanoContasCentroCusto.ZerarLinhas
  (Clone: TClientDataSet; tipolinhas: string);
var
  clonedata: TClientDataSet;
  i: Integer;
begin
  clonedata := TClientDataSet.Create(Self);
  try
    clonedata.CloneCursor(Clone, True);
    clonedata.LogChanges := False;
    clonedata.First;
    while not clonedata.Eof do
    begin
      if (clonedata.FieldByName('*').AsString = tipolinhas) then
        for i := 4 to clonedata.FieldCount - 1 do
        begin
          clonedata.Edit;
          clonedata.Fields[i].AsFloat := 0;
          clonedata.Post;
        end;
      clonedata.Next
    end;

  finally
    FreeAndNil(clonedata);
  end;

end;

procedure TFrmFinanceiroPlanoContasCentroCusto.Button1Click(Sender: tObject);
var
  i: Integer;
begin
  i := dbgrdResultado.Columns.Count;
  dbgrdResultado.Columns.Add();
  dbgrdResultado.Columns[i].FieldName := 'Nivel';
  dbgrdResultado.Columns[i].Title.Caption := 'Ola ' + IntToStr(i);
end;

procedure TFrmFinanceiroPlanoContasCentroCusto.btnImprimirClick
  (Sender: tObject);
begin
  SaveDialog1.Filter := 'Arquivo do Microsoft Excel|*.xlsx';
  SaveDialog1.DefaultExt := 'xls';
  SaveDialog1.FilterIndex := 1;
  if (SaveDialog1.Execute) then
  begin
    JvDBGridExcelExport1.FileName :=
      ChangeFileExt(SaveDialog1.FileName, '.xlsx');
    try
      JvDBGridExcelExport1.ExportGrid;
    except

    end;
    MessageDlg('Arquivo Exportado com sucesso', mtInformation, [mbOk], 0);
  end;
end;

function TFrmFinanceiroPlanoContasCentroCusto.CountChar(Texto: String;
  C: Char): Integer;
var
  i, vTot: Integer;
begin
  vTot := 0;
  for i := 1 to Length(Texto) do
  begin
    if (Texto[i] = C) then
      inc(vTot);
  end;
  Result := vTot;
end;

procedure TFrmFinanceiroPlanoContasCentroCusto.AtualizaContagemNivel;
var
  pointer: TBookmark;
  sTipo: string;
begin
  CdsPlanoContas.First;
  while (not CdsPlanoContas.Eof) do
  begin
    pointer := CdsPlanoContas.GetBookmark;

    if (CdsPlanoContas.Locate('Nivel', CdsPlanoContasNivel.AsString + '.',
      [lopartialkey])) then
      sTipo := 'T'
    else
      sTipo := 'L';

    CdsPlanoContas.GotoBookmark(pointer);

    CdsPlanoContas.Edit;
    CdsPlanoContasiNivel.AsInteger :=
      CountChar(CdsPlanoContasNivel.AsString, '.');
    CdsPlanoContasTipoNivel.AsString := sTipo;

    CdsPlanoContas.Post;

    CdsPlanoContas.GotoBookmark(pointer);

    CdsPlanoContas.Next;
  end;
  CdsPlanoContas.First;



  CdsResultado.First;
  while (not CdsResultado.Eof) do
  begin
    CdsResultado.Edit;
    if (CdsPlanoContas.Locate('Nivel', CdsResultado.FieldByName('Nivel')
      .AsString, [])) then
      CdsResultado.FieldByName('*').AsString :=
        CdsPlanoContasTipoNivel.AsString;
    CdsResultado.Post;

    CdsResultado.Next;
  end;
  CdsResultado.First;
end;

procedure TFrmFinanceiroPlanoContasCentroCusto.CalculaTotais;
var
  pointer: TBookmark;
  valorTmp: Double;
  iNivelAnterior, i, contador: Integer;
  sMaster: string;
  cloneResultadoColuna: TClientDataSet; // somas as colunas
  cloneResultadoLinha: TClientDataSet; // soma as linhas por nivel
  cloneResultadoLinhaNivel: TClientDataSet;
  CloneResultTotalHoriz: TClientDataSet; // somas linhas por colunas
  sub1, str1: string;
begin
  AtualizaContagemNivel;

  cloneResultadoLinha := TClientDataSet.Create(Self);
  try
    cloneResultadoLinha.CloneCursor(CdsResultado, False, True);
    cloneResultadoLinha.LogChanges := False;
    cloneResultadoLinha.First;
    ZerarLinhas(cloneResultadoLinha, 'T');
    while not cloneResultadoLinha.Eof do
    begin
      if cloneResultadoLinha.FieldByName('*').AsString = 'T' then
      begin
        cloneResultadoLinhaNivel := TClientDataSet.Create(Self);
        try
          cloneResultadoLinhaNivel.CloneCursor(CdsResultado, False, True);
          cloneResultadoLinhaNivel.LogChanges := False;
          cloneResultadoLinhaNivel.Filter := '';
          cloneResultadoLinhaNivel.Filtered := False;
          cloneResultadoLinhaNivel.Filter := 'inivel > ' +
            VarToStr(cloneResultadoLinha.FieldByName('inivel').AsVariant);
          cloneResultadoLinhaNivel.Filtered := True;
          cloneResultadoLinhaNivel.First;
          while not cloneResultadoLinhaNivel.Eof do
          begin
            sub1 := cloneResultadoLinha.FieldByName('nivel').AsString + '.';
            /// 1.1.
            str1 := cloneResultadoLinhaNivel.FieldByName('nivel').AsString;
            /// pega todos 1.1.1 , 1.1.2 , 1.1.2.1, 1.1.2.2 etc...
            if (pos(sub1, str1, 1) = 1) and
              (cloneResultadoLinhaNivel.FieldByName('*').AsString = 'L') then
              for i := 4 to cloneResultadoLinha.FieldCount - 1 do
              begin
                if cloneResultadoLinha.State <> dsEdit then
                  cloneResultadoLinha.Edit;
                cloneResultadoLinha.Fields[i].AsFloat :=
                  cloneResultadoLinha.Fields[i].AsFloat +
                  cloneResultadoLinhaNivel.Fields[i].AsFloat;
              end;
            cloneResultadoLinhaNivel.Next;
          end;

        finally
          FreeAndNil(cloneResultadoLinhaNivel)
        end;

      end
      else

        if cloneResultadoLinha.State = dsEdit then
        cloneResultadoLinha.Post;
      cloneResultadoLinha.Next;
    end; // while not cloneResultadoLinha.Eof do
  finally
    FreeAndNil(cloneResultadoLinha);
  end;

  cloneResultadoColuna := TClientDataSet.Create(Self);
  try
    cloneResultadoColuna.CloneCursor(CdsResultado, False, True);
    cloneResultadoColuna.LogChanges := False;
    cloneResultadoColuna.First;
    while not cloneResultadoColuna.Eof do
    begin

      valorTmp := 0;
      // 4 coluna que começa os valores a ultima é o total
      for i := 4 to cloneResultadoColuna.FieldCount - 1 do
        valorTmp := valorTmp + cloneResultadoColuna.Fields[i].AsFloat;
      cloneResultadoColuna.Edit;
      cloneResultadoColuna.FieldByName('TOTAL').AsFloat := valorTmp;
      cloneResultadoColuna.Post;
      cloneResultadoColuna.Next;
    end;

  finally
    FreeAndNil(cloneResultadoColuna);
  end;



  CdsResultado.First;

  CdsCentroCusto.Filtered := False;

  CdsCentroCusto.First;

  if (not chkMostrarContasSemMovimento.Checked) then
  begin
    while (not CdsResultado.Eof) do
    begin
      if (CdsResultado.FieldByName('TOTAL').AsFloat = 0) then
        CdsResultado.Delete
      else
        CdsResultado.Next;
    end;
    CdsResultado.First;
  end;

end;

procedure TFrmFinanceiroPlanoContasCentroCusto.MarcarDesmarcarCentroCustoGeral
  (valor: Boolean);
var
  cloneCentroCusto: TClientDataSet;
begin
  if (not CdsCentroCusto.IsEmpty) then
  begin
    cloneCentroCusto := TClientDataSet.Create(Self);
    try
      cloneCentroCusto.CloneCursor(CdsCentroCusto, True);
      cloneCentroCusto.First;
      while not cloneCentroCusto.Eof do
      begin
        cloneCentroCusto.Edit;
        cloneCentroCusto.FieldByName('Selecionado').AsBoolean := valor;
        cloneCentroCusto.Post;
        cloneCentroCusto.Next;
      end;

    finally
      FreeAndNil(cloneCentroCusto);
    end;
  end;
end;

procedure TFrmFinanceiroPlanoContasCentroCusto.
  MarcarDesmarcarCentroCustoUnitario;
var
  pointer: TBookmark;
  sNivelTmp: string;
  bSelecao: Boolean;
begin
  if (not CdsCentroCusto.IsEmpty) then
  begin
    pointer := CdsCentroCusto.GetBookmark;
    sNivelTmp := CdsCentroCustoNivel.AsString;
    bSelecao := not CdsCentroCustoSelecionado.AsBoolean;

    // Muda Selecionado
    CdsCentroCusto.Filtered := False;
    CdsCentroCusto.Filter := 'Nivel like ' + QuotedStr(sNivelTmp + '%');
    CdsCentroCusto.Filtered := True;

    CdsCentroCusto.First;
    while (not CdsCentroCusto.Eof) do
    begin
      CdsCentroCusto.Edit;
      CdsCentroCustoSelecionado.AsBoolean := bSelecao;
      CdsCentroCusto.Post;

      CdsCentroCusto.Next;
    end;
    CdsCentroCusto.Filtered := False;
    CdsCentroCusto.IndexFieldNames := 'Nivel';
    CdsCentroCusto.Locate('Nivel', sNivelTmp, []);
  end;

end;

procedure TFrmFinanceiroPlanoContasCentroCusto.MarcarDesmarcarPlanoContasGeral
  (valor: Boolean);
var
  clonePlano: TClientDataSet;
begin
  if (not CdsPlanoContas.IsEmpty) then
  begin
    clonePlano := TClientDataSet.Create(Self);
    try
      clonePlano.CloneCursor(CdsPlanoContas, True);
      clonePlano.First;
      while not clonePlano.Eof do
      begin
        clonePlano.Edit;
        clonePlano.FieldByName('Selecionado').AsBoolean := valor;
        clonePlano.Post;
        clonePlano.Next;
      end;

    finally
      FreeAndNil(clonePlano)
    end;
  end;

end;

procedure TFrmFinanceiroPlanoContasCentroCusto.
  MarcarDesmarcarPlanoContasUnitario;
var
  pointer: TBookmark;
  sNivelTmp: string;
  bSelecao: Boolean;
begin
  if (not CdsPlanoContas.IsEmpty) then
  begin
    pointer := CdsCentroCusto.GetBookmark;
    sNivelTmp := CdsPlanoContasNivel.AsString;
    bSelecao := not CdsPlanoContasSelecionado.AsBoolean;

    // Muda Selecionado
    CdsPlanoContas.Filtered := False;
    CdsPlanoContas.Filter := 'Nivel like ' + QuotedStr(sNivelTmp + '%');
    CdsPlanoContas.Filtered := True;

    CdsPlanoContas.First;
    while (not CdsPlanoContas.Eof) do
    begin
      CdsPlanoContas.Edit;
      CdsPlanoContasSelecionado.AsBoolean := bSelecao;
      CdsPlanoContas.Post;

      CdsPlanoContas.Next;
    end;
    CdsPlanoContas.Filtered := False;
    CdsPlanoContas.IndexFieldNames := 'Nivel';
    CdsPlanoContas.Locate('Nivel', sNivelTmp, []);
  end;

end;

procedure TFrmFinanceiroPlanoContasCentroCusto.dbgrdCentroCustoDblClick
  (Sender: tObject);
begin
  LimpaConsulta;
  MarcarDesmarcarCentroCustoUnitario;
end;

procedure TFrmFinanceiroPlanoContasCentroCusto.LimpaConsulta;
begin
  CdsResultado.Close;
  CdsResultado.FieldDefs.Clear;
end;

procedure TFrmFinanceiroPlanoContasCentroCusto.dbgrdPlanoContaDblClick
  (Sender: tObject);
begin
  LimpaConsulta;
  MarcarDesmarcarPlanoContasUnitario;
end;

procedure TFrmFinanceiroPlanoContasCentroCusto.MarcarTodos1Click
  (Sender: tObject);
begin
  LimpaConsulta;
  MarcarDesmarcarPlanoContasGeral(True);
end;

procedure TFrmFinanceiroPlanoContasCentroCusto.DesmarcarTodos1Click
  (Sender: tObject);
begin
  LimpaConsulta;
  MarcarDesmarcarPlanoContasGeral(False);
end;

procedure TFrmFinanceiroPlanoContasCentroCusto.MarcarTodos2Click
  (Sender: tObject);
begin
  LimpaConsulta;
  MarcarDesmarcarCentroCustoGeral(True);
end;

procedure TFrmFinanceiroPlanoContasCentroCusto.DesmarcarTodos2Click
  (Sender: tObject);
begin
  LimpaConsulta;
  MarcarDesmarcarCentroCustoGeral(False);
end;

procedure TFrmFinanceiroPlanoContasCentroCusto.chkMostrarContasSemMovimentoClick
  (Sender: tObject);
begin
  LimpaConsulta;
end;

procedure TFrmFinanceiroPlanoContasCentroCusto.cbbTipoConsultaChange
  (Sender: tObject);
begin
  LimpaConsulta;
end;

end.

