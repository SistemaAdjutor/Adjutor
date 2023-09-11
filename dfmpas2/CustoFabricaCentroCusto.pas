unit CustoFabricaCentroCusto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora, Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPCdxBarPopupMenu, VclTee.TeeGDIPlus, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Vcl.Buttons, VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs, VCLTee.Chart, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, cxPC, Datasnap.DBClient, QExport4, QExport4XLS, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxLayoutContainer, cxGridLayoutView, cxGridDBLayoutView, cxGridCustomLayoutView, RxToolEdit,
  RxCurrEdit, JvSpin, FileCtrl ;

type
  TfrmCustoFabricaCentroCusto = class(TfrmBaseDB)
    GroupBox1: TGroupBox;
    gbPeriodo: TGroupBox;
    lblInicio: TLabel;
    lblFim: TLabel;
    dtInicial: TJvDateEdit;
    dtFinal: TJvDateEdit;
    gbEmpresa: TGroupBox;
    rbEmpresa: TRadioButton;
    RbMultiEmpresa: TRadioButton;
    cxpgcntrl: TcxPageControl;
    cxtbshtResultado: TcxTabSheet;
    cxtbshtGrafico: TcxTabSheet;
    chtGrafico: TChart;
    brsrsSeries1: TBarSeries;
    Panel1: TPanel;
    SpeedButton5: TSpeedButton;
    SpeedButton4: TSpeedButton;
    btnPizza: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton6: TSpeedButton;
    btAtualizar: TButton;
    btExportar: TButton;
    btFechar: TButton;
    cdsPivot: TClientDataSet;
    dsPivot: TDataSource;
    qDados: TSQLQuery;
    cdsTotal: TClientDataSet;
    SaveDialog1: TSaveDialog;
    QExport4XLS1: TQExport4XLS;
    dsTotal: TDataSource;
    gridPivot: TDBGrid;
    gbAgrupamento: TGroupBox;
    rbSegundoNivel: TRadioButton;
    rbTerceiroNivel: TRadioButton;
    formaPreco: TcxTabSheet;
    cdsBuscaDetalhes: TFDQuery;
    dsBuscaDetalhes: TDataSource;
    gbFiltro: TGroupBox;
    Label1: TLabel;
    edCentroCusto: TEdit;
    Label2: TLabel;
    edPlanoContas: TEdit;
    gbMesAno: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    btGera: TButton;
    btConsulta: TButton;
    gridPrecoVenda: TDBGrid;
    cdsBuscaDetalhesSET_DESCRICAO: TStringField;
    cdsBuscaDetalhesCIO_IMPOSTOS: TBCDField;
    cdsBuscaDetalhesCIO_MKP: TBCDField;
    cdsBuscaDetalhesCIO_REPORTE: TBCDField;
    cdsBuscaDetalhesCIO_PV: TBCDField;
    cdsBuscaDetalhesSET_CODIGO: TIntegerField;
    btCalcula: TButton;
    cbAprovado: TCheckBox;
    ano: TJvSpinEdit;
    mes: TJvSpinEdit;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    edTotalCP: TCurrencyEdit;
    edTotalDespesa: TCurrencyEdit;
    edTotalGeral: TCurrencyEdit;
    cdsBuscaDetalhesCIO_CUSTOS: TBCDField;
    cdsBuscaDetalhesCIO_DESPESAS: TBCDField;
    cdsBuscaDetalhesCIO_TOTAL: TFMTBCDField;
    Panel2: TPanel;
    Label7: TLabel;
    lbTotalPontoDeEquilibrio: TLabel;
    procedure btFecharClick(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure btnPizzaClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure btExportarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure gridPivotDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dtFinalExit(Sender: TObject);
    procedure cxpgcntrlChange(Sender: TObject);
    procedure btGeraClick(Sender: TObject);
    procedure btConsultaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxgrd1DBTableView2InitEditValue(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var AValue: Variant);
    procedure gridPrecoVendaColExit(Sender: TObject);
    procedure btCalculaClick(Sender: TObject);
    procedure cbAprovadoClick(Sender: TObject);
    procedure btConsultaExit(Sender: TObject);
    procedure mesChange(Sender: TObject);
    procedure anoChange(Sender: TObject);
    procedure mesExit(Sender: TObject);
    procedure anoExit(Sender: TObject);
    procedure gridPrecoVendaExit(Sender: TObject);
    procedure gridPrecoVendaKeyPress(Sender: TObject; var Key: Char);
    procedure gbMesAnoDblClick(Sender: TObject);
  private
    { Private declarations }
    procedure AjustaMascaraCampos;
    procedure AjustaGraficoPivot;
    procedure AjustaColunasGrid;
    var Consulta: boolean;
  public
    var CalculaMKP: boolean;
    { Public declarations }
  end;

var
  frmCustoFabricaCentroCusto: TfrmCustoFabricaCentroCusto;


implementation

{$R *.dfm}

uses uteis, InicioDB, Animacao, Men0001;

procedure TfrmCustoFabricaCentroCusto.AjustaColunasGrid;
var
  nPOs: Integer;
begin
  for nPOs := 2 to gridPivot.Columns.count - 1 do
  begin
    if gridPivot.Columns[nPOs].Width < 110 then
      gridPivot.Columns[nPOs].Width := 110;
    gridPivot.Columns[nPOs].title.alignment := taCenter;
  end;
  gridPivot.Columns[gridPivot.Columns.count - 1].Width := 120;
end;

procedure TfrmCustoFabricaCentroCusto.AjustaGraficoPivot;
var
  nCols, j: Integer;
begin
  cdsTotal.First;
  chtGrafico.Series[0].Clear;
  nCols := cdsTotal.Fields.Count-1;
  for j := 2 to nCols-1 do
  begin
    if (cdsTotal.fields[j].AsCurrency > 0) or (cdsTotal.fields[j].AsString <> EmptyStr) then
      chtGrafico.Series[0].add(cdsTotal.fields[j].AsCurrency, cdsTotal.fields[j].FieldName);
  end;
  cdsTotal.First;
end;

procedure TfrmCustoFabricaCentroCusto.AjustaMascaraCampos;
var
  nPOs: Integer;
begin
  for nPOs := 2 to cdsPivot.fields.count - 1 do
  begin
    if cdsPivot.fields[nPOs].InheritsFrom(tCurrencyField) then
      with tCurrencyField(cdsPivot.fields[nPOs]) do
        DisplayFormat := '###,###,##0.00';
    if cdsTotal.fields[nPOs].InheritsFrom(tCurrencyField) then
      with tCurrencyField(cdsTotal.fields[nPOs]) do
        DisplayFormat := '###,###,##0.00';
end;
end;

procedure TfrmCustoFabricaCentroCusto.anoChange(Sender: TObject);
begin
  inherited;
  btConsulta.Click;
end;

procedure TfrmCustoFabricaCentroCusto.anoExit(Sender: TObject);
begin
  inherited;
  Consulta := False;
end;

procedure TfrmCustoFabricaCentroCusto.btAtualizarClick(Sender: TObject);
var
  nivel, nivelDescricao, sql, sEmpresa, dataInicial, dataFinal, descriAnt, cctNivelAnt : string;
  nLcol, j: Integer;
  fld, fldTotal: tField;
  Valor: Currency;
  ano, mes, dia: Word;
  Despesa, Total, TotalCC, TotalSS : Double;

begin
  inherited;
   // dtInicial.Text := '01/03/2021';
   // dtFinal.Text := '31/03/2021';


  if dtInicial.Date > dtFinal.Date then
  begin
    ShowMessage('Data Inicial deve ser maior que Data Final.');
    Exit;
  end;

  fmAnimacao := TfmAnimacao.Create(application);
  fmAnimacao.Panel1.Caption :=  'Consultando a base de dados. Por favor, aguarde...';
  fmAnimacao.Panel1.Font.Color := clBlack;
  Application.ProcessMessages;
  fmAnimacao.Show;

  DecodeDate(Date(), ano, mes, dia);
  if dtInicial.Date = 0 then
    dtInicial.Text := '01/' + StrZero(IntToStr(mes), 2) + '/' +  IntToStr(ano);
  if dtFinal.Date = 0 then
    dtfinal.Text := StrZero(IntToStr(dia), 2) + '/' + StrZero(IntToStr(mes), 2) + '/' +  IntToStr(ano);


  gridPivot.DataSource := nil;
  cdsPivot.DisableControls;
  sEmpresa := iif(rbEmpresa.Checked, dbInicio.Empresa.EMP_CODIGO, '999');
  dataInicial := DateToSql(dtInicial.Date);
  dataFinal := DateToSql(dtFinal.Date);

  if rbSegundoNivel.Checked then
    nivel := QuotedStr('T')
  else
    nivel := QuotedStr('L');

  sql := ' SELECT t3.pcx_descri, t3.PCX_PARTICIPA_CUSTO_OPERACIONAL ' +
         ' FROM pag_pc01 t1 ' +
      	 '  join fin_rateio t2 on (t2.fir_registro_cp_cr = t1.pag_registro and t2.fir_registro_tipo = ''P'' and t2.FIR_TIPO = ' + nivel + ' AND T2.fir_indice > 0) ' +
      	 '  join pcx0000 t3 on (t3.pcx_codigo = t2.pcx_codigo) ' +
      	 '  JOIN PAG0000 pg ON (pg.PAG_CODIGO = t1.PAG_CODIGO AND pg.EMP_CODIGO = t1.EMP_CODIGO) ' +
         '  JOIN CCT_0000 pc ON (pc.CCT_CODIGO = pg.CCT_CODIGO) ' +
         ' WHERE  pg.PAG_DTEMIS >= ' + dataInicial + ' AND pg.PAG_DTEMIS <= ' + dataFinal +
         iif (rbEmpresa.Checked, ' 	AND T1.EMP_CODIGO = ' + sEmpresa , '') +
         '  	AND COALESCE(t3.NIVEL_PAI, '''') <> '''' ' +
         '    AND t1.PPC_SITPAG <> ''X'' ' +
         ' GROUP BY 1, 2 ' +
         ' ORDER BY T3.PCX_PARTICIPA_CUSTO_OPERACIONAL DESC, t3.PCX_DESCRI ' ;
  qDados.Close;
  qDados.SQL.Clear;
  qDados.SQL.Text := sql;
  qDados.Open;

  cdsPivot.Close;
  cdsPivot.FieldDefs.Clear;
  cdsPivot.FieldDefs.add('Nível Plano de Contas', ftString, 43);
  cdsPivot.FieldDefs.add('Centro de Custo -->', ftString, 43);

  cdsTotal.Close;
  cdsTotal.FieldDefs.Clear;
  cdsTotal.FieldDefs.add('Geral', ftString, 43);
  cdsTotal.FieldDefs.add('Totais', ftString, 43);


  while not qDados.Eof do
  begin
    cdsPivot.FieldDefs.add(qDados.fields[0].AsString, ftCurrency);
    cdstotal.FieldDefs.add(qDados.fields[0].AsString, ftCurrency);
    qDados.Next
  end;

  cdsPivot.FieldDefs.add('Total', ftCurrency);
  cdsTotal.FieldDefs.add('Total', ftCurrency);

  nLcol := cdsPivot.FieldDefs.count - 1;

  qDados.Close;
  cdsPivot.CreateDataSet;
  cdsTotal.CreateDataSet;

  AjustaMascaraCampos;

  cdsPivot.Open;
  cdsTotal.Open;
  cdstotal.Append;
  cdsTotal.FieldByName('Totais').AsString := 'Totais';
  cdsTotal.Post;

  gridPivot.Columns.Clear;


  sql := ' SELECT pc.cct_nivel, pc.CCT_DESCRI, t3.pcx_descri, t3.pcx_nivel, ' +
         '   SUM(cast((t1.ppc_vlparc - t1.PPC_VALOR_N_RATEIA) * t2.fir_indice_real as numeric(18,4))) as  VALOR ' +
         ' FROM pag_pc01 t1 ' +
      	 '  join fin_rateio t2 on (t2.EMP_CODIGO = t1.EMP_CODIGO AND t2.fir_registro_cp_cr = t1.pag_registro and t2.fir_registro_tipo = ''P'' and t2.FIR_TIPO = ' + nivel + ' AND T2.fir_indice > 0) ' +
      	 '  join pcx0000 t3 on (t3.pcx_codigo = t2.pcx_codigo ) ' +
      	 '  JOIN PAG0000 pg ON (pg.PAG_CODIGO = t1.PAG_CODIGO AND pg.EMP_CODIGO = t1.EMP_CODIGO) ' +
         '  JOIN CCT_0000 pc ON (pc.CCT_CODIGO = pg.CCT_CODIGO ) ' +
         ' WHERE  pg.PAG_DTEMIS >= ' + dataInicial + ' AND pg.PAG_DTEMIS <= ' + dataFinal +
         iif (rbEmpresa.Checked, ' 	AND T1.EMP_CODIGO = ' + sEmpresa , '') +
         '  	AND COALESCE(t3.NIVEL_PAI, '''') <> '''' ' +
         '    AND t1.PPC_SITPAG <> ''X'' ' +
         ' GROUP BY 1,2,3,4 ' +
         ' ORDER BY pc.cct_nivel, t3.PCX_NIVEL ';
  qDados.SQL.Clear;
  qDados.SQL.Text := sql;
  qDados.Open;
  if qDados.Eof then
  begin
    ShowMessage('Sem dados para mostrar');
    fmAnimacao.Close;
    exit;
  end;

  while not qDados.Eof do
  begin
    for j := 0 to cdsPivot.Fields.Count -1 do
      begin
        try
          if edPlanoContas.Text <> '' then
            begin
              if Pos(UpperCase(RetiraAcentos(edPlanoContas.Text)), RetiraAcentos(UpperCase(qDados.FieldByName('CCT_DESCRI').AsString))) = 0  then
              begin
                descriAnt := qDados.FieldByName('CCT_DESCRI').AsString;
                cctNivelAnt := qDados.FieldByName('cct_nivel').AsString;
                qDados.Next;
                Continue;
              end;
            end;


          // if qDados.FieldByName('CCT_DESCRI').AsString <> descriAnt then
          if qDados.FieldByName('cct_nivel').AsString <> cctNivelAnt then
          begin
            nivelDescricao := QuotedStr(Copy(qDados.FieldByName('CCT_NIVEL').AsString , 0, Pos('.', qDados.FieldByName('CCT_NIVEL').AsString) -1));
            qAux.Close;
            qAux.SQL.Clear;
            qAux.SQL.Text := 'SELECT CCT_DESCRI FROM CCT_0000 WHERE CCT_NIVEL = ' + nivelDescricao;
            qAux.Open;


            if edCentroCusto.Text <> '' then
              begin
                if Pos(RetiraAcentos(UpperCase(edCentroCusto.Text)), UpperCase(RetiraAcentos(qAux.FieldByName('CCT_DESCRI').AsString))) = 0  then
                begin
                  descriAnt := qDados.FieldByName('PCX_DESCRI').AsString;
                  cctNivelAnt := qDados.FieldByName('cct_nivel').AsString;
                  qDados.Next;
                  Continue;
                end;
              end;



            cdsPivot.Append;
            cdsPivot.FieldByName('Nível Plano de Contas').AsString := qAux.FieldByName('CCT_DESCRI').AsString;
            cdsPivot.FieldByName('Centro de Custo -->').AsString := qDados.FieldByName('CCT_DESCRI').AsString;
            cdsPivot.Post;
          end;
          cdsPivot.Edit;
          fld := cdsPivot.FieldByName(qDados.FieldByName('pcx_descri').AsString);
          Valor := qDados.FieldByName('valor').AsCurrency;
          fld.AsCurrency := Valor;
          cdsPivot.fields[nLcol].AsCurrency := cdsPivot.fields[nLcol].AsCurrency + Valor;
          cdsPivot.Post;

          fldTotal := cdsTotal.FieldByName(qDados.FieldByName('pcx_descri').AsString);
          cdsTotal.First;
          cdsTotal.Edit;
          cdsTotal.fields[nLcol].AsCurrency := cdsTotal.fields[nLcol].AsCurrency + Valor;
          fldTotal.AsCurrency := fldTotal.AsCurrency + Valor;
          cdsTotal.Post;

          descriAnt := qDados.FieldByName('CCT_DESCRI').AsString;
          cctNivelAnt := qDados.FieldByName('cct_nivel').AsString;
          qDados.Next;
        except
          qDados.Next;
        end;
      end;

  end;
  if cdsPivot.Eof then
  begin
    fmAnimacao.Close;
    Exit;
  end;
  while true do
  begin
    cdsPivot.Last;
    if cdsPivot.FieldByName('Centro de Custo -->').AsString = '' then
    begin
      if not cdsPivot.IsEmpty then
        cdsPivot.Delete
      else
        break;
    end
    else
      break;
  end;
  cdsPivot.Append;
  cdsPivot.FieldByName('Centro de Custo -->').AsString := 'Totais';
  cdsPivot.Post;

  for j := 2 to cdsTotal.Fields.Count -1 do
  begin
    cdsPivot.Edit;
    cdsPivot.fields[j].AsCurrency := cdsTotal.Fields[j].AsCurrency;
    cdsPivot.Post;
  end;
  cdsPivot.First;
  gridPivot.DataSource := dsPivot;
  AjustaGraficoPivot;
  SpeedButton1.Click;
  cdsPivot.EnableControls;
  AjustaColunasGrid;

  qAux.Close;
  qAux.SQL.Clear;
  qAux.SQL.Text := 'SELECT ' +
    ' SUM(cast((t1.ppc_vlparc - t1.PPC_VALOR_N_RATEIA) * t2.fir_indice_real as numeric(18,4))) as  Custo ' +
    '  FROM pag_pc01 t1 ' +
    ' join fin_rateio t2 on (t2.fir_registro_cp_cr = t1.pag_registro and t2.fir_registro_tipo = ''P'' and t2.FIR_TIPO = ' + nivel + ' AND T2.fir_indice > 0) ' +
    ' join pcx0000 t3 on (t3.pcx_codigo = t2.pcx_codigo) ' +
    iif (rbSegundoNivel.Checked , '  JOIN setor se on(se.PCX_CODIGO = t3.PCX_CODIGO ) ', '') +
    ' JOIN PAG0000 pg ON (pg.PAG_CODIGO = t1.PAG_CODIGO AND pg.EMP_CODIGO = t1.EMP_CODIGO) ' +
    ' JOIN CCT_0000 pc ON (pc.CCT_CODIGO = pg.CCT_CODIGO ) ' +
    ' WHERE  pg.PAG_DTEMIS >= ' + DateToSql(dtInicial.Date) + ' AND pg.PAG_DTEMIS <= ' + DateToSql(dtFinal.Date) +
    iif (rbEmpresa.Checked, ' 	AND T1.EMP_CODIGO = ' + QuotedStr(dbInicio.Empresa.EMP_CODIGO) , '') +
    ' AND COALESCE(t3.NIVEL_PAI, '''') <> '''' ' +
    ' AND t1.PPC_SITPAG <> ''X'' ' +
    ' AND t3.PCX_PARTICIPA_CUSTO_OPERACIONAL = ''S'' ';
  qAux.Open;
  TotalCC := qAux.FieldByName('Custo').AsFloat;
  edTotalCP.Text := FloatToStr(TotalCC);

  qAux.Close;
  qAux.SQL.Clear;
  qAux.SQL.Text := 'SELECT ' +
    ' SUM(cast((t1.ppc_vlparc - t1.PPC_VALOR_N_RATEIA) * t2.fir_indice_real as numeric(18,4))) as  Despesa ' +
    '  FROM pag_pc01 t1 ' +
    ' join fin_rateio t2 on (t2.fir_registro_cp_cr = t1.pag_registro and t2.fir_registro_tipo = ''P'' and t2.FIR_TIPO = ' + nivel + ' AND T2.fir_indice > 0) ' +
    ' join pcx0000 t3 on (t3.pcx_codigo = t2.pcx_codigo) ' +
    iif (rbSegundoNivel.Checked , '  JOIN setor se on(se.PCX_CODIGO = t3.PCX_CODIGO ) ', '') +
    ' JOIN PAG0000 pg ON (pg.PAG_CODIGO = t1.PAG_CODIGO AND pg.EMP_CODIGO = t1.EMP_CODIGO) ' +
    ' JOIN CCT_0000 pc ON (pc.CCT_CODIGO = pg.CCT_CODIGO ) ' +
    ' WHERE  pg.PAG_DTEMIS >= ' + DateToSql(dtInicial.Date) + ' AND pg.PAG_DTEMIS <= ' + DateToSql(dtFinal.Date) +
    iif (rbEmpresa.Checked, ' 	AND T1.EMP_CODIGO = ' + QuotedStr(dbInicio.Empresa.EMP_CODIGO) , '') +
    ' AND COALESCE(t3.NIVEL_PAI, '''') <> '''' ' +
    ' AND t1.PPC_SITPAG <> ''X'' ' +
    ' AND t3.PCX_PARTICIPA_CUSTO_OPERACIONAL = ''N'' ';
  qAux.Open;
  Despesa := qAux.FieldByName('Despesa').AsFloat;

  qAux.Close;
  qAux.SQL.Clear;
  qAux.SQL.Text := 'SELECT ' +
    ' SUM(cast((t1.ppc_vlparc - t1.PPC_VALOR_N_RATEIA) * t2.fir_indice_real as numeric(18,4))) as  Total ' +
    '  FROM pag_pc01 t1 ' +
    ' join fin_rateio t2 on (t2.fir_registro_cp_cr = t1.pag_registro and t2.fir_registro_tipo = ''P'' and t2.FIR_TIPO = ' + nivel + ' AND T2.fir_indice > 0) ' +
    ' join pcx0000 t3 on (t3.pcx_codigo = t2.pcx_codigo) ' +
    iif (rbSegundoNivel.Checked , '  JOIN setor se on(se.PCX_CODIGO = t3.PCX_CODIGO ) ', '') +
    ' JOIN PAG0000 pg ON (pg.PAG_CODIGO = t1.PAG_CODIGO AND pg.EMP_CODIGO = t1.EMP_CODIGO) ' +
    ' JOIN CCT_0000 pc ON (pc.CCT_CODIGO = pg.CCT_CODIGO ) ' +
    ' WHERE  pg.PAG_DTEMIS >= ' + DateToSql(dtInicial.Date) + ' AND pg.PAG_DTEMIS <= ' + DateToSql(dtFinal.Date) +
    iif (rbEmpresa.Checked, ' 	AND T1.EMP_CODIGO = ' + QuotedStr(dbInicio.Empresa.EMP_CODIGO) , '') +
    ' AND t1.PPC_SITPAG <> ''X'' ' +
    ' AND COALESCE(t3.NIVEL_PAI, '''') <> '''' ' ;
  qAux.Open;
  Total := qAux.FieldByName('Total').AsFloat;




  qAux.Close;
  qAux.SQL.Clear;
  qAux.SQL.Text := 'SELECT ' +
    ' SUM(cast((t1.ppc_vlparc - t1.PPC_VALOR_N_RATEIA) * t2.fir_indice_real as numeric(18,4))) as  Total ' +
    '  FROM pag_pc01 t1 ' +
    ' join fin_rateio t2 on (t2.fir_registro_cp_cr = t1.pag_registro and t2.fir_registro_tipo = ''P'' and t2.FIR_TIPO = ' + nivel + ' AND T2.fir_indice > 0) ' +
    ' join pcx0000 t3 on (t3.pcx_codigo = t2.pcx_codigo) ' +
    ' JOIN PAG0000 pg ON (pg.PAG_CODIGO = t1.PAG_CODIGO AND pg.EMP_CODIGO = t1.EMP_CODIGO) ' +
    ' JOIN CCT_0000 pc ON (pc.CCT_CODIGO = pg.CCT_CODIGO ) ' +
    ' WHERE  pg.PAG_DTEMIS >= ' + DateToSql(dtInicial.Date) + ' AND pg.PAG_DTEMIS <= ' + DateToSql(dtFinal.Date) +
    iif (rbEmpresa.Checked, ' 	AND T1.EMP_CODIGO = ' + QuotedStr(dbInicio.Empresa.EMP_CODIGO) , '') +
    ' AND t1.PPC_SITPAG <> ''X'' ' +
    ' AND COALESCE(t3.NIVEL_PAI, '''') <> '''' ' ;
  qAux.Open;
  TotalSS := qAux.FieldByName('Total').AsFloat;



  edTotalDespesa.Text := FloatToStr(Despesa + (TotalSS - Total));


  edTotalGeral.Text := qAux.FieldByName('Total').AsString;

//  edDespesaAdministrativa.Text := FloatToStr(TotalSS - Total);

  fmAnimacao.Close;
  gridPivot.SetFocus;
end;

procedure TfrmCustoFabricaCentroCusto.btExportarClick(Sender: TObject);
begin
  if (cxpgcntrl.ActivePageIndex = 0) or (cxpgcntrl.ActivePageIndex = 1)  then
    if not(cdsPivot.Active) or (cdsPivot.IsEmpty) then
      GeraException('Não Existem Registros!');
  if (cxpgcntrl.ActivePageIndex = 2) then
    if not(cdsBuscaDetalhes.Active) or (cdsBuscaDetalhes.IsEmpty) then
      GeraException('Não Existem Registros!');


  SaveDialog1.Filter := 'Planilha Excel |*.xls ';    //'Text file|*.txt|Word file|*.doc';
  SaveDialog1.title := 'Exportar Dados';
  SaveDialog1.DefaultExt := '.xls';
  if SaveDialog1.Execute then
  begin
    try
        fmAnimacao := TfmAnimacao.Create(application);
      try
        fmAnimacao.Panel1.Caption :=
          'Buscando Informações. Aguarde, isto poderá demorar um pouco...';
        fmAnimacao.Show;
        if (cxpgcntrl.ActivePageIndex = 0) or (cxpgcntrl.ActivePageIndex = 1)  then
        begin
          QExport4XLS1.DataSet := gridPivot.DataSource.DataSet;
          QExport4XLS1.dbgrid := gridPivot;
        end
        else
        if (cxpgcntrl.ActivePageIndex = 2) then
        begin
          QExport4XLS1.DataSet := gridPrecoVenda.DataSource.DataSet;
          QExport4XLS1.dbgrid := gridPrecoVenda;
        end;


        QExport4XLS1.Filename := SaveDialog1.Filename;
        QExport4XLS1.Execute;
        ShowMessage('Arquivo Exportado com sucesso');
      finally
        fmAnimacao.Close;
      end;
    except
      on E: EXCEPTION do
        raise EXCEPTION.Create(E.Message);
    end;
  end;

end;

procedure TfrmCustoFabricaCentroCusto.btFecharClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TfrmCustoFabricaCentroCusto.btGeraClick(Sender: TObject);
var
  sql: string;
begin
  inherited;
  if dtInicial.Date > dtFinal.Date then
  begin
    ShowMessage('Data Inicial deve ser maior que Data Final.');
    Exit;
  end;
  if mes.Text = '  ' then
  begin
    ShowMessage('Favor informar o mês a ser gerado');
    mes.SetFocus;
    exit;
  end;
  if ano.Text = '    ' then
  begin
    ShowMessage('Favor informar o ano a ser gerado');
    ano.SetFocus;
    exit;
  end;
  Consulta := False;
  qAux.Close;
  qAux.SQL.Clear;
  qAux.SQL.Text := 'SELECT * FROM CUSTOINDUST WHERE CIO_MES = ' + mes.Text + ' AND CIO_ANO = ' + ano.Text;
  qAux.Open;
  if qAux.IsEmpty = false then
  begin
    ShowMessage('Este mês e ano já foram gerados, favor consultar');
    exit;
  end;
  if MessageDlg('Confirma a geração?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
    exit;


  sql := 'INSERT INTO CUSTOINDUST (cio_codigo, EMP_CODIGO,CIO_MES, CIO_ANO, SET_CODIGO) '+
          ' SELECT  gen_id(GEN_CUSTOINDUST_ID,1),'+QuotedStr(dbinicio.Empresa.EMP_CODIGO)+','+
           mes.text+ ','+ ano.text+','+  ' set_codigo '+
          ' FROM SETOR se  ' +
          ' JOIN PCX0000 cc ON (se.PCX_CODIGO = cc.PCX_CODIGO AND cc.PCX_PARTICIPA_CUSTO_OPERACIONAL = ''S'' ) ' +
          ' WHERE NOT EXISTS '+
          '  (SELECT 1 FROM CUSTOINDUST ci WHERE ci.SET_CODIGO = se.SET_CODIGO '+
          iif(DBINICIO.Exclusivo('ORDEMPRODUCAO') ,' and ci.emp_codigo = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO) ,'' )+
          ' AND cio_mes = '+ mes.Text+ ' AND cio_ano = '+ ano.Text+')'  +
          iif(DBINICIO.Exclusivo('ORDEMPRODUCAO') ,' and se.emp_codigo = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO) ,'' );
  ExecSql(sql);
  Consulta := True;
  cbAprovado.Checked := False;
  Consulta := False;

  cdsBuscaDetalhes.Close;
  cdsBuscaDetalhes.Open;
end;

procedure TfrmCustoFabricaCentroCusto.btnPizzaClick(Sender: TObject);
var
  cs: TChartSeries;
begin
  cs := chtGrafico.Series[0]; // Pass serie index you want
  ChangeSeriesType(cs, TAreaSeries);
end;

procedure TfrmCustoFabricaCentroCusto.btCalculaClick(Sender: TObject);
var
  nivel: string;
  Custo, Despesa, MKP, PrecoVenda, PontoEquilibrio, Total, cioReporteTotal, PercentualReporte,
  despesaNaoOperacional, TotalSSPV, TotalCCPV, DespesaPV, TotalPV, TotalPE: Double;
begin
  inherited;
  Consulta := False;
  if dtInicial.Date > dtFinal.Date then
  begin
    ShowMessage('Data Inicial deve ser maior que Data Final.');
    Exit;
  end;
  if mes.Text = '  ' then
  begin
    ShowMessage('Favor informar o mês no qual será inserido a formação do preço');
    mes.SetFocus;
    exit;
  end;
  if ano.Text = '    ' then
  begin
    ShowMessage('Favor informar o ano no qual será inserido a formação do preço');
    ano.SetFocus;
    exit;
  end;

  qAux.Close;
  qAux.SQL.Clear;
  qAux.SQL.Text := 'SELECT CIO_APROVADO FROM CUSTOINDUST WHERE CIO_APROVADO = ''S'' AND CIO_MES = ' + mes.Text + ' AND CIO_ANO = ' + ano.Text;
  qAux.Open;
  if not qAux.IsEmpty then
  begin
    ShowMessage('Este período já foi Aprovado, não disponível para recálculo');
    exit;
  end;

  if (dtInicial.Text = '') or (dtInicial.text = '  /  /    ') then
  begin
    ShowMessage('Favor informar a data inicial do período a ser calculado');
    dtInicial.SetFocus;
    exit;
  end;
  if (dtFinal.Text = '')  or (dtFinal.text = '  /  /    ')  then
  begin
    ShowMessage('Favor informar a data Final do período a ser calculado');
    dtFinal.SetFocus;
    exit;
  end;

  btConsulta.Click;
  if cdsBuscaDetalhes.IsEmpty then
  begin
    ShowMessage('Não foram gerados os dados para cálculo');
    btGera.SetFocus;
    exit;
  end;


  fmAnimacao := TfmAnimacao.Create(application);
  fmAnimacao.Panel1.Caption :=  'Consultando a base de dados. Por favor, aguarde...';
  fmAnimacao.Panel1.Font.Color := clBlack;
  Application.ProcessMessages;
  fmAnimacao.Show;


  nivel := QuotedStr('T');
  qAux.Close;
  qAux.SQL.Clear;
  qAux.SQL.Text := 'SELECT ' +
    ' SUM(cast((t1.ppc_vlparc - t1.PPC_VALOR_N_RATEIA) * t2.fir_indice_real as numeric(18,4))) as  Custo ' +
    '  FROM pag_pc01 t1 ' +
    ' join fin_rateio t2 on (t2.fir_registro_cp_cr = t1.pag_registro and t2.fir_registro_tipo = ''P'' and t2.FIR_TIPO = ' + nivel + ' AND T2.fir_indice > 0) ' +
    ' join pcx0000 t3 on (t3.pcx_codigo = t2.pcx_codigo) ' +
    iif (rbSegundoNivel.Checked , '  JOIN setor se on(se.PCX_CODIGO = t3.PCX_CODIGO ) ', '') +
    ' JOIN PAG0000 pg ON (pg.PAG_CODIGO = t1.PAG_CODIGO AND pg.EMP_CODIGO = t1.EMP_CODIGO) ' +
    ' JOIN CCT_0000 pc ON (pc.CCT_CODIGO = pg.CCT_CODIGO ) ' +
    ' WHERE  pg.PAG_DTEMIS >= ' + DateToSql(dtInicial.Date) + ' AND pg.PAG_DTEMIS <= ' + DateToSql(dtFinal.Date) +
    iif (rbEmpresa.Checked, ' 	AND T1.EMP_CODIGO = ' + QuotedStr(dbInicio.Empresa.EMP_CODIGO) , '') +
    ' AND COALESCE(t3.NIVEL_PAI, '''') <> '''' ' +
    ' AND t1.PPC_SITPAG <> ''X'' ' +
    ' AND t3.PCX_PARTICIPA_CUSTO_OPERACIONAL = ''S'' ';
  qAux.Open;
  TotalCCPV := qAux.FieldByName('Custo').AsFloat;

  qAux.Close;
  qAux.SQL.Clear;
  qAux.SQL.Text := 'SELECT ' +
    ' SUM(cast((t1.ppc_vlparc - t1.PPC_VALOR_N_RATEIA) * t2.fir_indice_real as numeric(18,4))) as  Despesa ' +
    '  FROM pag_pc01 t1 ' +
    ' join fin_rateio t2 on (t2.fir_registro_cp_cr = t1.pag_registro and t2.fir_registro_tipo = ''P'' and t2.FIR_TIPO = ' + nivel + ' AND T2.fir_indice > 0) ' +
    ' join pcx0000 t3 on (t3.pcx_codigo = t2.pcx_codigo) ' +
    iif (rbSegundoNivel.Checked , '  JOIN setor se on(se.PCX_CODIGO = t3.PCX_CODIGO ) ', '') +
    ' JOIN PAG0000 pg ON (pg.PAG_CODIGO = t1.PAG_CODIGO AND pg.EMP_CODIGO = t1.EMP_CODIGO) ' +
    ' JOIN CCT_0000 pc ON (pc.CCT_CODIGO = pg.CCT_CODIGO ) ' +
    ' WHERE  pg.PAG_DTEMIS >= ' + DateToSql(dtInicial.Date) + ' AND pg.PAG_DTEMIS <= ' + DateToSql(dtFinal.Date) +
    iif (rbEmpresa.Checked, ' 	AND T1.EMP_CODIGO = ' + QuotedStr(dbInicio.Empresa.EMP_CODIGO) , '') +
    ' AND COALESCE(t3.NIVEL_PAI, '''') <> '''' ' +
    ' AND t1.PPC_SITPAG <> ''X'' ' +
    ' AND t3.PCX_PARTICIPA_CUSTO_OPERACIONAL = ''N'' ';
  qAux.Open;
  DespesaPV := qAux.FieldByName('Despesa').AsFloat;

  qAux.Close;
  qAux.SQL.Clear;
  qAux.SQL.Text := 'SELECT ' +
    ' SUM(cast((t1.ppc_vlparc - t1.PPC_VALOR_N_RATEIA) * t2.fir_indice_real as numeric(18,4))) as  Total ' +
    '  FROM pag_pc01 t1 ' +
    ' join fin_rateio t2 on (t2.fir_registro_cp_cr = t1.pag_registro and t2.fir_registro_tipo = ''P'' and t2.FIR_TIPO = ' + nivel + ' AND T2.fir_indice > 0) ' +
    ' join pcx0000 t3 on (t3.pcx_codigo = t2.pcx_codigo) ' +
    iif (rbSegundoNivel.Checked , '  JOIN setor se on(se.PCX_CODIGO = t3.PCX_CODIGO ) ', '') +
    ' JOIN PAG0000 pg ON (pg.PAG_CODIGO = t1.PAG_CODIGO AND pg.EMP_CODIGO = t1.EMP_CODIGO) ' +
    ' JOIN CCT_0000 pc ON (pc.CCT_CODIGO = pg.CCT_CODIGO ) ' +
    ' WHERE  pg.PAG_DTEMIS >= ' + DateToSql(dtInicial.Date) + ' AND pg.PAG_DTEMIS <= ' + DateToSql(dtFinal.Date) +
    iif (rbEmpresa.Checked, ' 	AND T1.EMP_CODIGO = ' + QuotedStr(dbInicio.Empresa.EMP_CODIGO) , '') +
    ' AND t1.PPC_SITPAG <> ''X'' ' +
    ' AND COALESCE(t3.NIVEL_PAI, '''') <> '''' ' ;
  qAux.Open;
  TotalPV := qAux.FieldByName('Total').AsFloat;

  qAux.Close;
  qAux.SQL.Clear;
  qAux.SQL.Text := 'SELECT ' +
    ' SUM(cast((t1.ppc_vlparc - t1.PPC_VALOR_N_RATEIA) * t2.fir_indice_real as numeric(18,4))) as  Total ' +
    '  FROM pag_pc01 t1 ' +
    ' join fin_rateio t2 on (t2.fir_registro_cp_cr = t1.pag_registro and t2.fir_registro_tipo = ''P'' and t2.FIR_TIPO = ' + nivel + ' AND T2.fir_indice > 0) ' +
    ' join pcx0000 t3 on (t3.pcx_codigo = t2.pcx_codigo) ' +
    ' JOIN PAG0000 pg ON (pg.PAG_CODIGO = t1.PAG_CODIGO AND pg.EMP_CODIGO = t1.EMP_CODIGO) ' +
    ' JOIN CCT_0000 pc ON (pc.CCT_CODIGO = pg.CCT_CODIGO ) ' +
    ' WHERE  pg.PAG_DTEMIS >= ' + DateToSql(dtInicial.Date) + ' AND pg.PAG_DTEMIS <= ' + DateToSql(dtFinal.Date) +
    iif (rbEmpresa.Checked, ' 	AND T1.EMP_CODIGO = ' + QuotedStr(dbInicio.Empresa.EMP_CODIGO) , '') +
    ' AND t1.PPC_SITPAG <> ''X'' ' +
    ' AND COALESCE(t3.NIVEL_PAI, '''') <> '''' ' ;
  qAux.Open;
  TotalSSPV := qAux.FieldByName('Total').AsFloat;

  qAux.Close;
  qAux.SQL.Clear;
  qAux.SQL.Text := 'SELECT SUM(CIO_REPORTE) as CIO_REPORTE_TOTAL ' +
    ' FROM CUSTOINDUST ci ' +
    ' JOIN SETOR se on se.SET_codigo = ci.SET_CODIGO ' +
    ' JOIN PCX0000 cc ON cc.PCX_CODIGO = se.PCX_CODIGO ' +
    ' WHERE cc.PCX_PARTICIPA_CUSTO_OPERACIONAL = ''S'' ' +
    ' AND ci.CIO_MES = ' + mes.text + '  AND CIO_ANO = ' + ano.Text  +
    ' ORDER BY 1';
  qAux.Open;
  cioReporteTotal := qAux.FieldByName('CIO_REPORTE_TOTAL').AsFloat;


  cdsBuscaDetalhes.DisableControls;
  cdsBuscaDetalhes.First;
  while not cdsBuscaDetalhes.Eof do
  begin
    if cdsBuscaDetalhesCIO_REPORTE.AsFloat = 0 then
    begin
      ShowMessage(cdsBuscaDetalhesSET_DESCRICAO.AsString + ' - Não possui valor de Reporte. Favor Preencher');
      cdsBuscaDetalhes.Next;
      continue;
    end;

    qAux.Close;
    qAux.SQL.Clear;
    qAux.SQL.Text := 'SELECT ' +
      ' SUM(cast((t1.ppc_vlparc - t1.PPC_VALOR_N_RATEIA) * t2.fir_indice_real as numeric(18,4))) / ' +
          FloatToSQL(cdsBuscaDetalhesCIO_REPORTE.AsFloat) + ' as  Custo ' +
      '  FROM pag_pc01 t1 ' +
      ' join fin_rateio t2 on (t2.fir_registro_cp_cr = t1.pag_registro and t2.fir_registro_tipo = ''P'' and t2.FIR_TIPO = ''T'' AND T2.fir_indice > 0) ' +
      ' join pcx0000 t3 on (t3.pcx_codigo = t2.pcx_codigo) ' +
      ' JOIN setor se on(se.PCX_CODIGO = t3.PCX_CODIGO ) ' +
      ' JOIN PAG0000 pg ON (pg.PAG_CODIGO = t1.PAG_CODIGO  AND pg.EMP_CODIGO = t1.EMP_CODIGO) ' +
      ' JOIN CCT_0000 pc ON (pc.CCT_CODIGO = pg.CCT_CODIGO ) ' +
      ' WHERE  pg.PAG_DTEMIS >= ' + DateToSql(dtInicial.Date) + ' AND pg.PAG_DTEMIS <= ' + DateToSql(dtFinal.Date) +
      iif (rbEmpresa.Checked, ' 	AND T1.EMP_CODIGO = ' + QuotedStr(dbInicio.Empresa.EMP_CODIGO) , '') +
      ' AND COALESCE(t3.NIVEL_PAI, '''') <> '''' ' +
      ' AND t1.PPC_SITPAG <> ''X'' ' +
      ' AND t3.PCX_PARTICIPA_CUSTO_OPERACIONAL = ''S'' ' +
      ' AND se.SET_CODIGO = ' + cdsBuscaDetalhesSET_CODIGO.AsString;
    qAux.Open;
    Custo := qAux.FieldByName('Custo').AsFloat;

    qAux.Close;
    qAux.SQL.Clear;
    qAux.SQL.Text := 'SELECT ' +
      ' SUM(cast((t1.ppc_vlparc - t1.PPC_VALOR_N_RATEIA) * t2.fir_indice_real as numeric(18,4))) / ' +
          FloatToSQL(cdsBuscaDetalhesCIO_REPORTE.AsFloat) + ' as  Total ' +
      '  FROM pag_pc01 t1 ' +
      ' join fin_rateio t2 on (t2.fir_registro_cp_cr = t1.pag_registro and t2.fir_registro_tipo = ''P'' and t2.FIR_TIPO = ''T'' AND T2.fir_indice > 0) ' +
      ' join pcx0000 t3 on (t3.pcx_codigo = t2.pcx_codigo) ' +
      ' JOIN setor se on(se.PCX_CODIGO = t3.PCX_CODIGO ) ' +
      ' JOIN PAG0000 pg ON (pg.PAG_CODIGO = t1.PAG_CODIGO AND pg.EMP_CODIGO = t1.EMP_CODIGO) ' +
      ' JOIN CCT_0000 pc ON (pc.CCT_CODIGO = pg.CCT_CODIGO ) ' +
      ' WHERE  pg.PAG_DTEMIS >= ' + DateToSql(dtInicial.Date) + ' AND pg.PAG_DTEMIS <= ' + DateToSql(dtFinal.Date) +
      iif (rbEmpresa.Checked, ' 	AND T1.EMP_CODIGO = ' + QuotedStr(dbInicio.Empresa.EMP_CODIGO) , '') +
      ' AND COALESCE(t3.NIVEL_PAI, '''') <> '''' ' +
      ' AND t1.PPC_SITPAG <> ''X'' ' ;
    qAux.Open;
    Total := qAux.FieldByName('Total').AsFloat;


    if CalculaMKP then
      MKP := cdsBuscaDetalhesCIO_MKP.AsFloat
    else
      MKP := (Despesa / Total) * 100 ;
    PercentualReporte := cdsBuscaDetalhesCIO_REPORTE.AsFloat / cioReporteTotal ;
    Despesa := ((DespesaPV + (TotalSSPV - TotalPV)) * PercentualReporte) / cdsBuscaDetalhesCIO_REPORTE.AsFloat;
    PrecoVenda := (Custo + Despesa)  + ((Custo + Despesa) * (MKP / 100));

    cdsBuscaDetalhes.Edit;
    cdsBuscaDetalhesCIO_CUSTOS.AsFloat := Custo;
    cdsBuscaDetalhesCIO_DESPESAS.AsFloat :=  Despesa;
    cdsBuscaDetalhesCIO_MKP.AsFloat := MKP;
    cdsBuscaDetalhesCIO_PV.AsFloat := PrecoVenda;
    cdsBuscaDetalhes.Post;
    cdsBuscaDetalhes.Next;
  end;


  cdsBuscaDetalhes.Close;
  cdsBuscaDetalhes.SQL.Clear;
  cdsBuscaDetalhes.SQL.Text := 'SELECT SET_DESCRICAO, ' +
    ' ci.*  ,  (((ci.cio_custos + ci.cio_despesas) -   (((ci.cio_custos + ci.cio_despesas) / 100) * ci.CIO_MKP)       ) * ci.CIO_REPORTE) as CIO_TOTAL ' +
    ' FROM CUSTOINDUST ci ' +
    ' JOIN SETOR se on se.SET_codigo = ci.SET_CODIGO ' +
    ' JOIN PCX0000 cc ON cc.PCX_CODIGO = se.PCX_CODIGO ' +
    ' WHERE cc.PCX_PARTICIPA_CUSTO_OPERACIONAL = ''S'' ' +
    ' AND ci.CIO_MES = ' + mes.text + '  AND CIO_ANO = ' + ano.Text  +
    ' ORDER BY 1';
  if DBInicio.IsDesenvolvimento then
    CopyToClipBoard(cdsBuscaDetalhes.SQL.Text);
  cdsBuscaDetalhes.Open;
  TotalPE := 0;
  cdsBuscaDetalhes.First;
  while not cdsBuscaDetalhes.Eof do
  begin
      TotalPE := TotalPE + cdsBuscaDetalhesCIO_TOTAL.AsFloat;
      cdsBuscaDetalhes.Next;
  end;
  lbTotalPontoDeEquilibrio.Caption := FormatFloat('###.###.###,##', TotalPE);
  cdsBuscaDetalhes.First;

  fmAnimacao.Close;
  cdsBuscaDetalhes.EnableControls;
  btConsulta.SetFocus;
end;

procedure TfrmCustoFabricaCentroCusto.btConsultaClick(Sender: TObject);
var
  TotalPE: double;
begin
  inherited;
  Consulta := True;
  if mes.Text = '  ' then
  begin
    ShowMessage('Favor informar o mês a ser consultado');
    mes.SetFocus;
    exit;
  end;
  if ano.Text = '    ' then
  begin
    ShowMessage('Favor informar o ano a ser consultado');
    ano.SetFocus;
    exit;
  end;

  qAux.Close;
  qAux.SQL.Clear;
  qAux.SQL.Text := 'SELECT CIO_APROVADO FROM CUSTOINDUST WHERE CIO_APROVADO = ''S'' AND CIO_MES = ' + mes.Text + ' AND CIO_ANO = ' + ano.Text;
  qAux.Open;
//  Consulta := True;
  if not qAux.IsEmpty then
    cbAprovado.Checked := True
  else
    cbAprovado.Checked := False;


  cdsBuscaDetalhes.Close;
  cdsBuscaDetalhes.SQL.Clear;
  cdsBuscaDetalhes.SQL.Text := 'SELECT SET_DESCRICAO, ' +
    ' ci.*  ,  (((ci.cio_custos + ci.cio_despesas) +   (((ci.cio_custos + ci.cio_despesas) / 100) * ci.CIO_MKP)       ) * ci.CIO_REPORTE) as CIO_TOTAL ' +
    ' FROM CUSTOINDUST ci ' +
    ' JOIN SETOR se on se.SET_codigo = ci.SET_CODIGO ' +
    ' JOIN PCX0000 cc ON cc.PCX_CODIGO = se.PCX_CODIGO ' +
    ' WHERE cc.PCX_PARTICIPA_CUSTO_OPERACIONAL = ''S'' ' +
    ' AND ci.CIO_MES = ' + mes.text + '  AND CIO_ANO = ' + ano.Text  +
    ' ORDER BY 1';
  if DBInicio.IsDesenvolvimento then
    CopyToClipBoard(cdsBuscaDetalhes.SQL.Text);
  cdsBuscaDetalhes.Open;
  TotalPE := 0;
  cdsBuscaDetalhes.First;
  while not cdsBuscaDetalhes.Eof do
  begin
      TotalPE := TotalPE + cdsBuscaDetalhesCIO_TOTAL.AsFloat;
      cdsBuscaDetalhes.Next;
  end;
  lbTotalPontoDeEquilibrio.Caption := FormatFloat('###.###.###,##', TotalPE);
  cdsBuscaDetalhes.First;

  if cdsBuscaDetalhes.IsEmpty then
    ShowMessage('Sem dados para mostrar.');

end;

procedure TfrmCustoFabricaCentroCusto.btConsultaExit(Sender: TObject);
begin
  inherited;
  Consulta := False;
end;

procedure TfrmCustoFabricaCentroCusto.cbAprovadoClick(Sender: TObject);
var
  Aprovado : string;
begin
  inherited;
    if Consulta then
      exit;
    if mes.Text = '  ' then
    begin
      ShowMessage('Favor informar o mês a ser aprovado');
      mes.SetFocus;
      exit;
    end;
    if ano.Text = '    ' then
    begin
      ShowMessage('Favor informar o ano a ser aprovado');
      ano.SetFocus;
      exit;
    end;

    qAux.Close;
    qAux.SQL.Clear;
    qAux.SQL.Text := 'SELECT CIO_APROVADO FROM CUSTOINDUST WHERE CIO_MES = ' + mes.Text + ' AND CIO_ANO = ' + ano.Text;
    qAux.Open;
    if qAux.IsEmpty and cbAprovado.Checked then
    begin
      ShowMessage('Este mês e ano não foram abertos');
      cbAprovado.Checked := False;
      Exit;
    end;
    if qAux.IsEmpty then
      Exit;

    if not cbAprovado.Checked then
      if MessageDlg('Tem certeza que deseja abrir para recálculo?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
      begin
        cbAprovado.Checked := True;
        exit;
      end;

    if cbAprovado.Checked then
      Aprovado := QuotedStr('S')
    else
      Aprovado := QuotedStr('N');

    qAux.Close;
    qAux.SQL.Clear;
    qAux.SQL.Text := 'UPDATE CUSTOINDUST SET CIO_APROVADO = ' + Aprovado +' WHERE CIO_MES = ' + mes.Text + ' AND CIO_ANO = ' + ano.Text;
    qAux.ExecSQL;
    if cbAprovado.Checked then
      ShowMessage('Aprovação gravada com sucesso')
    else
      ShowMessage('Abertura de recálculo gravada com sucesso')

end;

procedure TfrmCustoFabricaCentroCusto.cxgrd1DBTableView2InitEditValue(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var AValue: Variant);
begin
  inherited;
  gbMesAno.Caption := aitem.EditValue + ' - ' + aedit.EditingValue + ' - ' + AValue;

end;

procedure TfrmCustoFabricaCentroCusto.cxpgcntrlChange(Sender: TObject);
begin
  inherited;
   if cxpgcntrl.activepage.name = 'formaPreco' then
   begin
       gbFiltro.Visible := False;
       btAtualizar.Visible := False;
       gbAgrupamento.Visible := False;
       gbMesAno.Visible := True;
       gbPeriodo.Left := 114;
       btConsulta.Click;
       btConsulta.SetFocus;

   end
   else
   begin
       gbFiltro.Visible := True;
       btAtualizar.Visible := True;
       gbAgrupamento.Visible := True;
       gbMesAno.Visible := False;
       gbPeriodo.Left := 282;
   end;

end;

procedure TfrmCustoFabricaCentroCusto.gridPrecoVendaColExit(Sender: TObject);
begin
  inherited;
  if cdsBuscaDetalhes.State = dsEdit then
    cdsBuscaDetalhes.Post;
end;

procedure TfrmCustoFabricaCentroCusto.gridPrecoVendaExit(Sender: TObject);
begin
  inherited;
  if cdsBuscaDetalhes.State = dsEdit then
    cdsBuscaDetalhes.Post;

end;

procedure TfrmCustoFabricaCentroCusto.gridPrecoVendaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    if (Sender as TDBGrid).Columns[(Sender as TDBGrid).Columns.Grid.SelectedIndex].FieldName = 'CIO_MKP' then
    begin
      CalculaMKP := True;
      gbMesAno.Font.Color := clBlue;
      gbMesAno.Caption := 'Mês/Ano - Calculando pelo Índice de Markup Informado';
    end;
end;

procedure TfrmCustoFabricaCentroCusto.mesChange(Sender: TObject);
begin
  inherited;
  btConsulta.Click;
end;

procedure TfrmCustoFabricaCentroCusto.mesExit(Sender: TObject);
begin
  inherited;
  Consulta := False;
end;

procedure TfrmCustoFabricaCentroCusto.dtFinalExit(Sender: TObject);
begin
  inherited;
  if cxpgcntrl.activepage.name <> 'formaPreco' then
    btAtualizar.SetFocus;
end;

procedure TfrmCustoFabricaCentroCusto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmCustoFabricaCentroCusto := nil;
  FreeAndNil(frmCustoFabricaCentroCusto);
  with TFileListBox.Create(Self) do
  try
    Visible := False;
    Parent := Self;
    Directory := dbInicio.SistemaLocal+'settings';
    Mask := 'frmCustoFabricaCentroCusto*.*';
    while Items.Count > 0 do begin
      DeleteFile(Items[0]);
      Update;
      Application.ProcessMessages;
      end;
  finally
    free;
  end;







end;

procedure TfrmCustoFabricaCentroCusto.FormShow(Sender: TObject);
begin
  inherited;
  cxpgcntrl.ActivePageIndex := 0;
  Self.Constraints.MaxHeight := FrmMenu.height - 30;
  Self.Constraints.MaxWidth := Screen.Width;
  Self.Top := 0;
  Self.Left := 0;
  Self.WindowState := wsMaximized;
  mes.Value := StrToInt(formatdatetime('mm',Date));
  ano.Value := StrToInt(formatdatetime('yyyy',Date));
  Consulta := True;
  gbMesAno.Left := 3;
  gbMesAno.Top := 63;
  CalculaMKP := False;
end;

procedure TfrmCustoFabricaCentroCusto.gbMesAnoDblClick(Sender: TObject);
begin
  inherited;
      CalculaMKP := not CalculaMKP;
      if CalculaMKP then
      begin
        gbMesAno.Font.Color := clBlue;
        gbMesAno.Caption := 'Mês/Ano - Calculando pelo Índice de Markup Informado';
      end
      else
      begin
        gbMesAno.Font.Color := clWindowText;
        gbMesAno.Caption := 'Mês/Ano - Calculando pelo Reporte Informado';

      end;
end;

procedure TfrmCustoFabricaCentroCusto.gridPivotDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);

begin
  inherited;
  if cdsPivot.RecNo mod 2 = 0 then
    gridPivot.Canvas.Brush.Color := clSilver;

  if (gdSelected in State) then
  begin
     gridPivot.Canvas.Font.Color := clBlue;
     gridPivot.Canvas.Font.Style := [fsBold];
     gridPivot.Canvas.Brush.Color := clSkyBlue;
     gridPivot.Canvas.FillRect(Rect);
     gridPivot.Canvas.TextOut(Rect.Left, Rect.Top,Column.Field.AsString);
  end;

  if cdsPivot.FieldByName('Centro de Custo -->').AsString = 'Totais' then
  begin
    gridPivot.Canvas.Brush.Color := clBlue;
    gridPivot.Canvas.Font.Color := clWhite;
    gridPivot.Canvas.Font.Style := [fsBold];
  end;
  gridPivot.DefaultDrawColumnCell(Rect, DataCol, Column, State);



end;

procedure TfrmCustoFabricaCentroCusto.SpeedButton1Click(Sender: TObject);
var
  cs: TChartSeries;
begin
  cs := chtGrafico.Series[0]; // Pass serie index you want
  ChangeSeriesType(cs, TPieSeries);
end;


procedure TfrmCustoFabricaCentroCusto.SpeedButton2Click(Sender: TObject);
var
  cs: TChartSeries;
begin
  cs := chtGrafico.Series[0]; // Pass serie index you want
  ChangeSeriesType(cs, TBarSeries);
end;

procedure TfrmCustoFabricaCentroCusto.SpeedButton3Click(Sender: TObject);
var
  cs: TChartSeries;
begin
  cs := chtGrafico.Series[0]; // Pass serie index you want
  ChangeSeriesType(cs, TLineSeries);
end;

procedure TfrmCustoFabricaCentroCusto.SpeedButton4Click(Sender: TObject);
var
  cs: TChartSeries;
begin
  cs := chtGrafico.Series[0]; // Pass serie index you want
  ChangeSeriesType(cs, THorizBarSeries);
end;

procedure TfrmCustoFabricaCentroCusto.SpeedButton5Click(Sender: TObject);
var
  cs: TChartSeries;
begin
  cs := chtGrafico.Series[0]; // Pass serie index you want
  ChangeSeriesType(cs, TPointSeries);
end;

procedure TfrmCustoFabricaCentroCusto.SpeedButton6Click(Sender: TObject);
begin
  with TPrintDialog.Create(nil) do
    try
      if Execute then
        chtGrafico.Print;
    finally
      Free;
    end;
end;

procedure TfrmCustoFabricaCentroCusto.SpeedButton7Click(Sender: TObject);
begin
  SaveDialog1.Filter := 'BMP (*.bmp)';
  if SaveDialog1.Execute then
  begin
    chtGrafico.SaveToBitmapFile(SaveDialog1.Filename);
  end;
end;

end.
