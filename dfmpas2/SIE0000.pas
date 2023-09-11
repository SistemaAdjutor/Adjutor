unit SIE0000;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  DateUtils,   Dialogs, jpeg, ExtCtrls, StdCtrls, ComCtrls, TeeProcs, TeEngine, Chart,
  Grids, DBGrids, CheckLst, Mask, DB, DBClient, Buttons, Printers,
  VclTee.TeeGDIPlus,  JvToolEdit, QExport4, Data.FMTBcd, Datasnap.Provider, Data.SqlExpr,
  cxPCdxBarPopupMenu, cxLookAndFeels, cxLookAndFeelPainters, cxClasses,
  cxGraphics,  cxStyles, JvExComCtrls, JvComCtrls, JvExExtCtrls, JvExtComponent, JvPanel,
  VclTee.Series,  JvExMask, cxControls, cxPC, Vcl.Menus, QExport4XLS, JvPageList,
  JvNavigationPane, JvExControls, TFlatPanelUnit, BaseDBForm, ACBrEnterTab,
  ACBrBase, ACBrCalculadora, JvChart,  Animacao, JvComponentBase, JvDBGridExport, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, SgDbSeachComboUnit, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type

  TOrientacaoDatas = (odColunas, odLinhas);

  // tAccessGrid = Class( tdbGrid ) ; // AcessoSalvaEstadoGrida propriedades protegidas

  TFrmSie = class(TfrmBaseDB)
    jvpnlMenu: TJvPanel;
    tvMenu: TJvTreeView;
    imgFecha: TImage;
    imgAbre: TImage;
    pnlTitulo: TPanel;
    CdsResultado: TClientDataSet;
    CdsColunas: TClientDataSet;
    dsResultado: TDataSource;
    CdsColunasPosicao: TIntegerField;
    SaveDialog1: TSaveDialog;
    pmCentro: TPopupMenu;
    MarcarTodos1: TMenuItem;
    DesmarcarTodos1: TMenuItem;
    CdsColunasColuna: TStringField;
    QExport4XLS1: TQExport4XLS;
    Panel3: TPanel;
    grpFiltro: TGroupBox;
    rgVisualizao: TRadioGroup;
    grpEmpresa: TGroupBox;
    rbEmpresa: TRadioButton;
    RbMultiEmpresa: TRadioButton;
    grpPeriodo: TGroupBox;
    lblInicio: TLabel;
    lblFim: TLabel;
    edtInicial: TJvDateEdit;
    edtFinal: TJvDateEdit;
    cxpgcntrl: TcxPageControl;
    cxtbshtResultado: TcxTabSheet;
    dbgrd1: TdbGrid;
    cxtbshtGrafico: TcxTabSheet;
    chtGrafico: TChart;
    brsrsSeries1: TBarSeries;
    Panel2: TPanel;
    SpeedButton5: TSpeedButton;
    SpeedButton4: TSpeedButton;
    btnPizza: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton6: TSpeedButton;
    qResumo: TSQLQuery;
    dspResumo: TDataSetProvider;
    cdsResumo: TClientDataSet;
    dsResumo: TDataSource;
    cdsPivot: TClientDataSet;
    qTemp: TSQLQuery;
    dsPivot: TDataSource;
    fltpnMenu: TFlatPanel;
    JvNavigationPane1: TJvNavigationPane;
    jvnPlanoContas: TJvNavPanelPage;
    dbgrdPlanoConta: TdbGrid;
    jvnCentroCusto: TJvNavPanelPage;
    dbgrdCentroCusto: TdbGrid;
    dsPlanoContas: TDataSource;
    CdsPlanoContas: TClientDataSet;
    CdsPlanoContasNivel: TStringField;
    CdsPlanoContasDescricao: TStringField;
    CdsPlanoContasSelecionado: TBooleanField;
    CdsPlanoContasRegistro: TStringField;
    CdsPlanoContasiNivel: TIntegerField;
    CdsPlanoContasTipoNivel: TStringField;
    CdsPlanoContasNomeCampo: TStringField;
    dsCentroCusto: TDataSource;
    CdsCentroCusto: TClientDataSet;
    CdsCentroCustoNivel: TStringField;
    CdsCentroCustoDescricao: TStringField;
    CdsCentroCustoSelecionado: TBooleanField;
    CdsCentroCustoRegistro: TStringField;
    CdsCentroCustoiNivel: TIntegerField;
    CdsCentroCustotipoNivel: TStringField;
    CdsCentroCustoNomeCampo: TStringField;
    DsColunas: TDataSource;
    DspColunas: TDataSetProvider;
    qColunas: TSQLQuery;
    rgRegime: TGroupBox;
    rbCompetencia: TRadioButton;
    rbCaixa: TRadioButton;
    rbRealizado: TRadioButton;
    cbFilterBox: TComboBox;
    cbCampo: TComboBox;
    pFiltro: TPanel;
    btnLimpar: TBitBtn;
    rgPeriodoCliente: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton4: TRadioButton;
    JvDBGridExcelExport1: TJvDBGridExcelExport;
    cxResultado: TcxTabSheet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cdsNivel2Resultado: TClientDataSet;
    dsNivel2Resultado: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    rbEntradaPedido: TRadioButton;
    gbCliente: TGroupBox;
    EdClienteCodigo: TEdit;
    edCliente: TSgDbSearchCombo;
    qCli: TSQLQuery;
    cxGrid1DBTableView1NF_EMISSAO: TcxGridDBColumn;
    cxGrid1DBTableView1NF_TOT_NOTA: TcxGridDBColumn;
    cxGrid1DBTableView1REP_NOME: TcxGridDBColumn;
    cxGrid1DBTableView2CLI_RAZAO: TcxGridDBColumn;
    cxGrid1DBTableView2NF_TOT_NOTA: TcxGridDBColumn;
    cxGrid1DBTableView2REP_NOME: TcxGridDBColumn;
    qVendedor: TSQLQuery;
    gbVendedor: TGroupBox;
    edVendedorCodigo: TEdit;
    scVendedor: TSgDbSearchCombo;
    Panel1: TPanel;
    btnAtualizar: TButton;
    btnImprimir: TButton;
    btnFechar: TButton;
    gbContaCorrente: TGroupBox;
    cbContacorrente: TCheckBox;
    procedure imgAbreClick(Sender: tObject);
    procedure imgFechaClick(Sender: tObject);
    procedure tvMenuChange(Sender: tObject; Node: TTreeNode);
    procedure btnFecharClick(Sender: tObject);
    procedure tvMenuDblClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure btnAtualizarClick(Sender: tObject);
    procedure CdsColunasBeforePost(DataSet: TDataSet);
    procedure btnImprimirClick(Sender: tObject);
    procedure SpeedButton1Click(Sender: tObject);
    procedure SpeedButton2Click(Sender: tObject);
    procedure SpeedButton3Click(Sender: tObject);
    procedure btnPizzaClick(Sender: tObject);
    procedure SpeedButton4Click(Sender: tObject);
    procedure SpeedButton5Click(Sender: tObject);
    procedure SpeedButton7Click(Sender: tObject);
    procedure SpeedButton6Click(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure dbgrdPlanoContaDrawColumnCell(Sender: tObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgrdPlanoContaDblClick(Sender: tObject);
    procedure dbgrdCentroCustoDrawColumnCell(Sender: tObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgrdCentroCustoDblClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: tObject);
    procedure chtGraficoClickSeries(Sender: TCustomChart; Series: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState;
      X, Y: Integer);
    procedure dbgrd1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    function FieldExist(DataSet: TDataSet; FieldName: String): Boolean;
    procedure dbgrd1TitleClick(Column: TColumn);
    procedure cbFilterBoxClick(Sender: TObject);
    procedure cbFilterBoxExit(Sender: TObject);
    procedure cbFilterBoxChange(Sender: TObject);
    procedure cbCampoChange(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure ChamaTelaDetalhes(sender: tObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure EdClienteCodigoExit(Sender: TObject);
    procedure edClienteButtonClick(Sender: TObject);
    procedure edClienteSelect(Sender: TObject);
    procedure scVendedorSelect(Sender: TObject);
  private
    { Private declarations }
    sRelatorio: String;
    dDataInicial, dDataFinal: TDate;
    iMes, iAno: Integer;
    sqlFiltro: string;
    idbusca : string;
    procedure AtualizaForm;
    procedure LayoutPesquisa;


    //
    function RetornaSemana(Data: TDate): String;

    function RetornaMes(const Data: TDate): string;
    function RetornaBimestre(Data: TDate): string;
    function RetornaTrimestre(Data: TDate): string;
    function RetornaSemestre(Data: TDate): string;
    function RetornaAno(Data: TDate): string;
    //
    procedure GerarConsulta( cds : TClientDataSet; const sql: String);  overload;
    procedure GerarConsulta(  const sql: String);  overload;
    procedure GerarConsulta2( cds : TClientDataSet ; const sql: String);
    procedure GerarColunas( const sNomeColunaFixa,sNomeTitulo, sFieldColuna, iTamanhoColunaFixa,
      iTamanhoFildColuna, TipoCampo: string; const  orientacao: TOrientacaoDatas = odLinhas;  totaliza: Boolean = True; bUsarDataTitulo: Boolean = True);  overload;

    procedure GerarColunas( cds : TClientDataSet ; const sNomeColunaFixa,sNomeTitulo, sFieldColuna, iTamanhoColunaFixa,
      iTamanhoFildColuna, TipoCampo: string;const orientacao: TOrientacaoDatas;
      totaliza: Boolean = True; bUsarDataTitulo: Boolean = True);  overload;

    procedure GerarColunas(  const sNomeColunaFixa, sFieldColuna, iTamanhoColunaFixa,  iTamanhoFildColuna,
               TipoCampo: string;const orientacao: TOrientacaoDatas; totaliza: Boolean = True; bUsarDataTitulo: Boolean = True);  overload;

    procedure GerarColunas(cds : TClientDataSet ;  const sNomeColunaFixa, sFieldColuna, iTamanhoColunaFixa,  iTamanhoFildColuna,
               TipoCampo: string;const orientacao: TOrientacaoDatas; totaliza: Boolean = True; bUsarDataTitulo: Boolean = True);  overload;


    procedure GerarLinhas(const bUsaColunaFixa: Boolean; const   sNomeColunaFixa, sFieldColunaFixa, sFieldColuna, sFieldLinha: String;
      const bUsarDataTitulo: Boolean = True);


procedure GerarLinhas2(const bUsaColunaFixa: Boolean;
  const sNomeColunaFixa, sFieldColunaFixa, sFieldColuna, sFieldLinha: String;
  const bUsarDataTitulo: Boolean);




    procedure GerarLinhasSemData(cds: TClientDataSet; const sNomeColunaFixa, sFiltros: string); overload ;
    procedure GerarLinhasSemData(const sNomeColunaFixa, sFiltros: string); overload  ;

    procedure GerarGraficos(const Series: string);

    procedure GerarFiltros (const sColunasFiltradas:string);
    procedure PivotTemp(pDtIni, pDtFim: tDateTime; const  pViewRateioEmp,  pCampoGrupo, pCampoDtMin, pCampoDtMax: string);
    procedure PivotTempPLCC(pDtIni, pDtFim: tDateTime;const  pViewRateioEmp, pViewRateioGeral, pCampoDt: string);
    procedure PivotTempPL(pDtIni, pDtFim: tDateTime; const  pViewRateioEmp, pViewRateioGeral, pCampoGrupo, pCampoDtMin,  pCampoDtMax: string);
    procedure AjustaMascaraCampos;
    procedure AjustaGraficoPivot;
    procedure AjustaColunasGrid;
    procedure LimpaConsulta;
    procedure MarcarDesmarcarPlanoContasUnitario;
    procedure MarcarDesmarcarCentroCustoUnitario;
    procedure ProcessarBI;
    procedure Rel_ABCFornecedor(const sEmpresa : string; dDataInicial,dDataFinal : TDate);      //ABC FORNECEDOR
    procedure Rel_ABCProdutoValorCompras (const sEmpresa :string; dDataInicial, dDataFinal : TDate); // ABC PRODUTOS POR VALOR DA COMPRA
    procedure Rel_ClientesInativo (const sEmpresa :string; dDataInicial, dDataFinal : TDate; sregime: smallint); // clientes sem comprar / inativos/ ticket medio clientes sem compra
    procedure Rel_Metrica_Cliente    (const sEmpresa :string; dDataInicial, dDataFinal : TDate; sregime: smallint); //metricas cliente - ticket médio
    procedure Rel_Metrica_Vendedores    (const sEmpresa :string; dDataInicial, dDataFinal : TDate; sregime: smallint); //metricas vendedores ticket medio

    procedure Rel_ABCVendedor  (const sEmpresa :string; dDataInicial, dDataFinal : TDate; sregime: smallint); //curva abc vendedor em volume de vendas
    procedure Rel_ABCClientes (const sEmpresa :string; dDataInicial, dDataFinal : TDate; sregime: smallint); //curva abc cliente em volume de vendas
    procedure Rel_ABCProdutos_Venda (const sEmpresa :string; dDataInicial, dDataFinal : TDate);   // abc de produtos por volume de vendas

    procedure Rel_ABCProdutos_Unidade (const sEmpresa :string; dDataInicial, dDataFinal : TDate); // abc de produtos por unidade
    procedure Rel_ABCValorEstoqueCMedio  (const sEmpresa :string);   // abc de valor de estoque baseado em custo médio
    procedure Rel_ABCValorEstoqueCMedio_grupo  (const sEmpresa :string);   // abc de valor de estoque baseado em custo médio
    procedure Rel_ABCValorEstoqueCMedio_tipo  (const sEmpresa :string);   // abc de valor de estoque baseado em custo médio
    procedure Rel_ABCValorEstoqueCLiquido  (const sEmpresa :string);   // abc de valor de estoque baseado custo liquido
    procedure Rel_ABCValorEstoqueCLiquido_grupo  (const sEmpresa :string);   // abc de valor de estoque baseado custo liquido
    procedure Rel_ABCValorEstoqueCLiquido_tipo  (const sEmpresa :string);   // abc de valor de estoque baseado custo liquido
    procedure Rel_ABCQtdeEstoque  (const sEmpresa :string);   // abc de valor de estoque baseado custo liquido
    procedure Rel_ABCQtdeEstoque_tipo  (const sEmpresa :string);   // abc de valor de estoque baseado custo liquido
    procedure Rel_ABCQtdeEstoque_grupo  (const sEmpresa :string);   // abc de valor de estoque baseado custo liquido
    procedure Rel_Vendas_Periodicas  (const sEmpresa :string; dDataInicial, dDataFinal : TDate; sregime: smallint); //vendas periodicas
    procedure Rel_Vendas_CentroCusto (const sEmpresa: string; dDataInicial, dDataFinal: TDate);
    procedure Rel_Vendas_porCliente  (const sEmpresa :string; dDataInicial, dDataFinal : TDate; sregime: smallint); //vendas por cliente
    procedure Rel_Vendas_porVendedor  (const sEmpresa :string; dDataInicial, dDataFinal : TDate; sregime: smallint); //vendas por vendedor
    procedure Rel_Vendas_porEstado   (const sEmpresa :string; dDataInicial, dDataFinal : TDate; sregime: smallint); //vendas por estado
    procedure Rel_Vendas_porCidade   (const sEmpresa :string; dDataInicial, dDataFinal : TDate; sregime: smallint); //vendas por cidade
    procedure Rel_Vendas_porRegiao   (const sEmpresa :string; dDataInicial, dDataFinal : TDate; sregime: smallint); //vendas por região
    procedure Rel_Vendas_Produto  (const sEmpresa :string; dDataInicial, dDataFinal : TDate);   //relatorios de vendas por produto
    procedure Rel_Vendas_Produto_por_unidade(const sEmpresa: string; dDataInicial, dDataFinal: TDate);
    procedure Rel_Vendas_Grupo  (const sEmpresa :string; dDataInicial, dDataFinal : TDate);  // relatórios de vendas por grupo de produto
    procedure Rel_Vendas_Linhas  (const sEmpresa :string; dDataInicial, dDataFinal : TDate); // relaórios de vendas por linhas de produto
    procedure Rel_Vendas_Tipo  (const sEmpresa :string; dDataInicial, dDataFinal : TDate); // relatório de vendas por tipo de produto
    procedure Rel_Vendas_Grade  (const sEmpresa :string; dDataInicial, dDataFinal : TDate); // relatório de vendas por grade
    procedure Rel_Compras_Periodica (const sEmpresa: string; dDataInicial, dDataFinal: Tdate); // relatório de compras periodicas
    procedure Rel_ComprasFornecedor (const sEmpresa: string; dDataInicial, dDataFinal: Tdate); // relatório de compras por fornecedor
    procedure Rel_Inadimplencias( const sEmpresa: string; dDataInicial, dDataFinal: Tdate); //inadimplencia
    procedure Rel_rankpagadores (const sempresa: string);
    procedure Rel_VendasOrigem(const sempresa: string ; const dDataInicial, dDataFinal: Tdate);//vendas por origem
    procedure Totalizar();
  public
    { Public declarations }
  end;

var
  FrmSie: TFrmSie;

implementation

uses DataCad, uteis, iniciodb, Men0001, BaseDBPesquisaGerarFDAC, RWFunc, PesquisaClientesForm;

{$R *.dfm}
//For Accessing some Protected Methods
type TCDBGrid = class(TCustomDBGrid);


procedure TFrmSie.imgAbreClick(Sender: tObject);
begin
  jvpnlMenu.Visible := True;
  imgAbre.Visible := False;
  imgFecha.Visible := True;
end;

procedure TFrmSie.imgFechaClick(Sender: tObject);
begin
  jvpnlMenu.Visible := False;
  imgFecha.Visible := False;
  imgAbre.Visible := True;
end;

procedure TFrmSie.tvMenuChange(Sender: tObject; Node: TTreeNode);
begin
  AtualizaForm;
end;

procedure TFrmSie.AtualizaForm;
var
  Node, Sub, Sub1: TTreeNode;
begin
  sRelatorio := '';
  Node := tvMenu.Items.GetFirstNode;
  while Node <> nil do
  begin
    // Verifica se tem nods
    if (Node.getFirstChild <> nil) then
    begin
      Sub := Node.getFirstChild;
      while Sub <> nil do
      begin
        if (Sub.getFirstChild <> nil) then
        begin
          Sub1 := Sub.getFirstChild;
          while Sub1 <> nil do
          begin
            if (Sub1.Selected) then
            begin
              sRelatorio :=  LowerCase(Node.Text + '-' + Sub.Text + '-' + Sub1.Text);
              pnlTitulo.Caption := Node.Text + ' >> ' + Sub.Text + ' >> ' +
                Sub1.Text;
            end;
            Sub1 := Sub1.GetNextSibling;
          end;
        end
        else if (Sub.Selected) then
        begin
          sRelatorio := LowerCase(Node.Text + '-' + Sub.Text);
          pnlTitulo.Caption := Node.Text + ' >> ' + Sub.Text;
        end;
        Sub := Sub.GetNextSibling;
      end
    end
    else
    begin
      if (Node.Selected) then
      begin
        sRelatorio := LowerCase(Node.Text);
        pnlTitulo.Caption := Node.Text;
      end;
    end;
    Node := Node.GetNextSibling;
  end;
  LayoutPesquisa;

end;

procedure TFrmSie.btnFecharClick(Sender: tObject);
begin
  Close;
end;

procedure TFrmSie.tvMenuDblClick(Sender: tObject);
begin
  AtualizaForm;
end;

procedure TFrmSie.LayoutPesquisa;
begin
  gbVendedor.visible := False;
  gbCliente.Visible := False;
  cxtbshtGrafico.TabVisible := True;
  grpPeriodo.Visible:= True;
  gbContaCorrente.Visible := False;
  rgVisualizao.Items.Clear;
  rgVisualizao.Items.Add('Diário');
  rgVisualizao.Items.Add('Semanal');
  rgVisualizao.Items.Add('Mensal');
  rgVisualizao.Items.Add('Bimestral');
  rgVisualizao.Items.Add('Trimestral');
  rgVisualizao.Items.Add('Semestral');
  rgVisualizao.Items.Add('Anual');
  rbEntradaPedido.Visible := False;
  rgRegime.Visible := True;
 grpPeriodo.Caption := 'Período';
  if pos('origem',srelatorio)>0 then
  begin
    rgPeriodoCliente.Visible := False;
    rgRegime.Visible := true;
    rbCompetencia.Visible := true;
    rbEntradaPedido.Visible := true;
    rbCaixa.Enabled := False;
    rbRealizado.Enabled := False;
    grpPeriodo.Visible := True;
    rgVisualizao.Visible := True;
    rgVisualizao.ItemIndex := 2;
    cxtbshtGrafico.Visible := True;
    cxtbshtGrafico.TabVisible:= True;

  end
  else
  if pos('estado',srelatorio)>0 then
  begin
    rgPeriodoCliente.Visible := False;
    rgRegime.Visible := True;
    grpPeriodo.Visible := True;
    rgVisualizao.Visible := True;
    rgVisualizao.ItemIndex := 2;
    cxtbshtGrafico.Visible := True;
    cxtbshtGrafico.TabVisible:= True;
    rbEntradaPedido.Visible := True;
  end
  else
  if pos('pagadores',srelatorio)>0 then
  begin
    rgPeriodoCliente.Visible := False;
    rgRegime.Visible := False;
    grpPeriodo.Visible := False;
    rgVisualizao.Visible := False;
    cxtbshtGrafico.Visible := False;
    cxtbshtGrafico.TabVisible:= False;
  end
  else
  if pos('inadimplência',srelatorio)>0 then
  begin
    rgPeriodoCliente.Visible := False;
    rgRegime.Visible := False;
    rgVisualizao.Visible := True;
    rgVisualizao.Items.Clear;
    //rgVisualizao.Items.Add('Diário');
    //rgVisualizao.Items.Add('Semanal');
    rgVisualizao.Items.Add('Mensal');
    rgVisualizao.Items.Add('Bimestral');
    rgVisualizao.Items.Add('Trimestral');
    rgVisualizao.Items.Add('Semestral');
    rgVisualizao.Items.Add('Anual');

  end
  else
  if pos('ticket',srelatorio)>0 then
  begin
    rgVisualizao.Visible := False;
    rgVisualizao.ItemIndex := 0;
    grpPeriodo.Caption := 'Período';
    fltpnMenu.Visible := False;
    cxtbshtGrafico.TabVisible:= False;
  end
  else
  if (sRelatorio = 'Financeiro-Plano de Contas x Centro de Custo - Vencimento')
    or (sRelatorio = 'Financeiro-Plano de Contas x Centro de Custo - Quitação')
  then
  begin
    rgVisualizao.Visible := False;
    rgRegime.Visible := False;
    rgVisualizao.ItemIndex := 0;
    grpPeriodo.Caption := 'Período';
    fltpnMenu.Visible := True;
  end
  //financeiro centro de custo e vendas centro de custo
  else if pos('centro de custo',srelatorio)>0 then
  begin
    rgVisualizao.Visible := True;
    rgRegime.Visible := False;
    fltpnMenu.Visible := False;
    if sRelatorio = 'vendas-por centro de custo' then
    begin
       grpPeriodo.Caption := 'Entrada dos pedidos';

    end;
  end
  Else if pos('financeiro-der - plano',sRelatorio)> 0 then
  begin
    rgVisualizao.Visible := True;
    rgRegime.Visible := False;
    fltpnMenu.Visible := False;
  end
  Else if Pos('abc',sRelatorio)>0 then
  begin
   rgVisualizao.Visible := False;
   rgRegime.Visible:=  (Pos('vendas',sRelatorio)>0);
   cxtbshtGrafico.Visible := False;
   grpPeriodo.Visible := not (pos('estoque-',sRelatorio)>0);
   cxtbshtGrafico.TabVisible:= False;
   gbCliente.Visible := True;
  end
  else if pos('produto por unidade', sRelatorio) > 0  then
  begin
     rgRegime.Visible := False;
     rbCompetencia.Checked := True;
     rbCaixa.Visible:= False;
     rbRealizado.Visible:= False;
     rgVisualizao.Visible := True;
     grpPeriodo.Caption := 'Período de Competência';
     gbCliente.Visible := True;
  end
  else if (pos('produtos-',sRelatorio)>0) or (pos('compras-',srelatorio)>0) then
  begin
     rgRegime.Visible := True;
     rgRegime.Left := 426;
     rbCompetencia.Checked := True;
     rbCaixa.Visible:= False;
     rbRealizado.Visible:= False;
     rgVisualizao.Visible := True;
  end
  else if srelatorio = 'vendas-por cliente' then
  begin
    rgRegime.Visible := False;
    rgRegime.Left := 426;
    rgVisualizao.Visible := True;
    rgVisualizao.Left := 241 ;
    if rgVisualizao.ItemIndex = -1 then
        rgVisualizao.ItemIndex:= 0;
    rgRegime.Visible := True;
    fltpnMenu.Visible := False;
    rbCaixa.Visible:= True;
    rbRealizado.Visible:= True;
    gbVendedor.visible := True;
  end
  else
  begin
    rgRegime.Visible := False;
    rgRegime.Left := 426;
    rgVisualizao.Visible := True;
    rgVisualizao.Left := 241 ;
    if rgVisualizao.ItemIndex = -1 then
        rgVisualizao.ItemIndex:= 0;
    rgRegime.Visible := True;
    fltpnMenu.Visible := False;
    rbCaixa.Visible:= True;
    rbRealizado.Visible:= True;
    gbContaCorrente.Visible := True;
  end;
  case rgVisualizao.ItemIndex of
    0:
      grpPeriodo.Caption := 'Diário';
    1:
      grpPeriodo.Caption := 'Semanal';
    2:
      grpPeriodo.Caption := 'Mensal';
    3:
      grpPeriodo.Caption := 'Bimestral';
    4:
      grpPeriodo.Caption := 'Trimestral';
    5:
      grpPeriodo.Caption := 'Semestral';
    6:
      grpPeriodo.Caption := 'Anual';
  end;

end;

procedure TFrmSie.LimpaConsulta;
begin
  CdsResultado.Close;
  CdsResultado.FieldDefs.Clear;
end;

procedure TFrmSie.FormClose(Sender: tObject; var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TFrmSie.FormCreate(Sender: tObject);
begin
  inherited;
  edtInicial.Date := PrimeiroDiadoMes(Date);
  edtFinal.Date := Date;
  SalvaStatusGrid := False;
  dbgrd1.OnTitleClick := GridTitleClickDefault;
  cxpgcntrl.ActivePageIndex := 0 ;
//  TCDBGrid(dbgrd1).RowHeights [0] := 45;
  dbgrd1.Options := dbgrd1.Options + [dgTitleClick, dgColumnResize];
  dbgrd1.Options := dbgrd1.Options - [dgRowSelect];
  cbFilterBox.Hide;
  pFiltro.Visible := False;
  self.Constraints.MaxHeight:=0;
  self.Constraints.MaxWidth:=0;
  // desativado
  // Plano de Contas x Centro de Custo - Vencimento
  // Plano de Contas x Centro de Custo - Quitação
  // self.Constraints.MaxHeight := FrmMenu.height - 100
end;

procedure TFrmSie.FormDestroy(Sender: tObject);
begin
  FrmSie := Nil;
end;

procedure TFrmSie.FormShow(Sender: tObject);
var
  X: Integer;
begin
  tvMenu.FullExpand;

  CdsCentroCusto.EmptyDataSet;
  CdsPlanoContas.EmptyDataSet;
  // Carrega Grades

  // Plano de Contas
  X := 1;
  DataCadastros.sqlUpdate.Close;
  DataCadastros.sqlUpdate.sql.Text :=
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
    CdsPlanoContasNomeCampo.AsString := 'PC_FLD_' + X.ToString;
    inc(X);
    CdsPlanoContas.Post;
    DataCadastros.sqlUpdate.Next;
  end;
  CdsPlanoContas.tag := X;

  // Centro de Custo
  X := 1;
  DataCadastros.sqlUpdate.Close;
  DataCadastros.sqlUpdate.sql.Text :=
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
    CdsCentroCustoNomeCampo.AsString := 'CC_FLD_' + X.ToString;
    inc(X);

    CdsCentroCusto.Post;
    DataCadastros.sqlUpdate.Next;
  end;
  CdsCentroCusto.tag := X;

  DataCadastros.sqlUpdate.Close;

  CdsCentroCusto.First;
  CdsPlanoContas.First;

  LayoutPesquisa;

end;

procedure TFrmSie.btnAtualizarClick(Sender: tObject);
begin
  if sRelatorio = '' then
     EXIT;
  fmAnimacao := TfmAnimacao.Create(application);
  try
    fmAnimacao.Panel1.Caption :=  'Buscando Informações. Aguarde, isto poderá demorar um pouco...';
        fmAnimacao.Show;
     imgFecha.OnClick(self);
     dbgrd1.OnDblClick := nil;
     ProcessarBI;
  finally
    cxpgcntrl.ActivePageIndex := 0 ;
    fmAnimacao.Close;
  end;
end;

Procedure TFrmSie.AjustaMascaraCampos;
var
  nPOs: Integer;
begin
  for nPOs := 2 to cdsPivot.fields.count - 1 do
  begin
    if cdsPivot.fields[nPOs].InheritsFrom(tCurrencyField) then
      with tCurrencyField(cdsPivot.fields[nPOs]) do
        DisplayFormat := '###,###,##0.00';
  end;
end;

Procedure TFrmSie.PivotTemp( pDtIni, pDtFim: tDateTime;
  const pViewRateioEmp,  pCampoGrupo, pCampoDtMin,
  pCampoDtMax: string);
var
  fld: tField;
  Valor: Currency;
  nLcol, lAno, lSemana, nPOs: Integer;
  nmCampo: String;
  nmCampos: tStringList;

begin
  dbgrd1.DataSource := Nil;
  cxGrid1DBTableView1.DataController.DataSource := nil;
  qTemp.Close;
  qTemp.sql.Text := 'select distinct ' + pCampoGrupo + ' from ' +
    pViewRateioEmp + ' where ' +
    pCampoDtMin + '>=' + DateToSql(pDtIni) + ' and ' + pCampoDtMax + '<=' +
    DateToSql(pDtFim) + ConcatSe(' and emp_codigo = ',
    iif(rbEmpresa.Checked, qStr(dbInicio.Empresa.EMP_CODIGO), '')) +
    ' Order By ' + pCampoDtMin;

  qTemp.Open;

  cdsPivot.Close;
  cdsPivot.FieldDefs.Clear;

  cdsPivot.FieldDefs.add('Nivel', ftString, 15);
  cdsPivot.FieldDefs.add('Centro de Custo', ftString, 43);

  if pCampoGrupo.toUpper <> 'SEMANA' then
  begin
    while not qTemp.Eof do
    begin
      cdsPivot.FieldDefs.add(qTemp.fields[0].AsString, ftCurrency);
      qTemp.Next
    end;
  end
  Else
  begin
    // Semanal
    nmCampos := tStringList.Create;
    while not qTemp.Eof do
    begin
      lAno := StrToInt(Copy(qTemp.fields[0].AsString, 4, 4));
      lSemana := StrToInt(Copy(qTemp.fields[0].AsString, 1, 2));
      nmCampo := '( ' + DateToStr(StartOfAWeek(lAno, lSemana)) + ' a ' +
        DateToStr(EndOfAWeek(lAno, lSemana)) + ' )';
      nmCampos.add(qTemp.fields[0].AsString + '=' + nmCampo);
      cdsPivot.FieldDefs.add(nmCampo, ftCurrency);
      qTemp.Next
    end;
  end;

  cdsPivot.FieldDefs.add('Total', ftCurrency);
  nLcol := cdsPivot.FieldDefs.count - 1;

  qTemp.Close;
  cdsPivot.CreateDataSet;
  AjustaMascaraCampos;

  cdsPivot.IndexFieldNames := 'Nivel';
  cdsPivot.Open;

  qTemp.Close;
  qTemp.sql.Text := 'select distinct b.pcx_nivel, b.pcx_descri from ' +
                  pViewRateioEmp + ' a ' +
                  '  join pcx0000 b on b.pcx_codigo=a.pcx_codigo ' + ' where a.' +
                  pCampoDtMin + '>=' + DateToSql(pDtIni) + ' and a.' + pCampoDtMax + '<=' +
                  DateToSql(pDtFim) + ConcatSe(' and a.emp_codigo = ',
                  iif(rbEmpresa.Checked, qStr(dbInicio.Empresa.EMP_CODIGO), '')) +
                  ' Order By b.pcx_nivel';

  qTemp.Open;
  while not qTemp.Eof do
  begin
    cdsPivot.Append;
    cdsPivot.fields[0].AsString := qTemp.fields[0].AsString;
    cdsPivot.fields[1].AsString := qTemp.fields[1].AsString;
    cdsPivot.Post;
    qTemp.Next;
  end;

  qTemp.Close;
  qTemp.sql.Text := 'select a.pcx_codigo,'+pCampoGrupo+', pcx_nivel, sum(pago) pago, sum(recebido) recebido from ' +
    pViewRateioEmp + ' a ' +
    '  join pcx0000 b on b.pcx_codigo=a.pcx_codigo ' + 'Where a.' +
    pCampoDtMin + '>=' + DateToSql(pDtIni) + ' and a.' + pCampoDtMax + '<=' +
    DateToSql(pDtFim) + ConcatSe(' and a.emp_codigo = ',
    iif(rbEmpresa.Checked, qStr(dbInicio.Empresa.EMP_CODIGO), '')) +
    ' GROUP BY 1, 2, 3 '+
    ' Order By 1,2';

  qTemp.Open;
  while not qTemp.Eof do
  begin
    if cdsPivot.fields[0].AsString <> qTemp.FieldByName('pcx_nivel').AsString
    then
      cdsPivot.FindKey([qTemp.FieldByName('pcx_nivel').AsString]);

    nmCampo := qTemp.FieldByName(pCampoGrupo).AsString;
    if assigned(nmCampos) then
    begin
      nPOs := nmCampos.IndexOfName(nmCampo);
      nmCampo := nmCampos.ValueFromIndex[nPOs];
    end;

    fld := cdsPivot.FieldByName(nmCampo);

    Valor := qTemp.FieldByName('recebido').AsCurrency -
      qTemp.FieldByName('pago').AsCurrency;
    cdsPivot.edit;
    fld.AsCurrency := fld.AsCurrency + Valor;
    cdsPivot.fields[nLcol].AsCurrency := cdsPivot.fields[nLcol]
      .AsCurrency + Valor;
    cdsPivot.Post;
    qTemp.Next;
  end;
  qTemp.Close;

  AjustaGraficoPivot;
  dbgrd1.Columns.Clear;
  dbgrd1.DataSource := dsPivot;
  AjustaColunasGrid;

end;

Procedure TFrmSie.PivotTempPL(pDtIni, pDtFim: tDateTime;
  const pViewRateioEmp, pViewRateioGeral, pCampoGrupo, pCampoDtMin,
  pCampoDtMax: string);
var
  fld: tField;
  Valor: Currency;
  nLcol, lAno, lSemana, nPOs, X, Y: Integer;
  nmCampo: String;
  nmCampos: tStringList;
  nivel, nivelb: string;
  ListaNivel: tStringList;

begin

  ListaNivel := tStringList.Create;
  ListaNivel.Delimiter := '.';
  dbgrd1.DataSource := Nil;

  qTemp.Close;
  qTemp.sql.Text := 'select distinct ' + pCampoGrupo + ' from ' +
    iif(rbEmpresa.Checked, pViewRateioEmp, pViewRateioGeral) + ' where ' +
    pCampoDtMin + '>=' + DateToSql(pDtIni) + ' and ' + pCampoDtMax + '<=' +
    DateToSql(pDtFim) + ConcatSe(' and emp_codigo = ',
    iif(rbEmpresa.Checked, qStr(dbInicio.Empresa.EMP_CODIGO), '')) +
    ' Order By ' + pCampoDtMin;

  qTemp.Open;

  cdsPivot.Close;
  cdsPivot.FieldDefs.Clear;

  cdsPivot.FieldDefs.add('Nivel', ftString, 15);
  cdsPivot.FieldDefs.add('Reduzido', ftString, 3);
  cdsPivot.FieldDefs.add('Nome da Conta', ftString, 43);

  if pCampoGrupo.toUpper <> 'SEMANA' then
  begin
    while not qTemp.Eof do
    begin
      cdsPivot.FieldDefs.add(qTemp.fields[0].AsString, ftCurrency);
      qTemp.Next
    end;
  end
  Else
  begin
    // Semanal
    nmCampos := tStringList.Create;
    while not qTemp.Eof do
    begin
      lAno := StrToInt(Copy(qTemp.fields[0].AsString, 4, 4));
      lSemana := StrToInt(Copy(qTemp.fields[0].AsString, 1, 2));
      nmCampo := '( ' + DateToStr(StartOfAWeek(lAno, lSemana)) + ' a ' +
        DateToStr(EndOfAWeek(lAno, lSemana)) + ' )';
      nmCampos.add(qTemp.fields[0].AsString + '=' + nmCampo);
      cdsPivot.FieldDefs.add(nmCampo, ftCurrency);
      qTemp.Next
    end;
  end;

  cdsPivot.FieldDefs.add('Total', ftCurrency);
  nLcol := cdsPivot.FieldDefs.count - 1;

  qTemp.Close;
  cdsPivot.CreateDataSet;

  AjustaMascaraCampos;

  cdsPivot.IndexFieldNames := 'Nivel';
  cdsPivot.Open;

  qTemp.Close;
  qTemp.sql.Text := 'select distinct b.cct_nivel, b.cct_descri, b.cct_codigo ' +
    ' from ' + iif(rbEmpresa.Checked, pViewRateioEmp, pViewRateioGeral) + ' a '
    + '     join cct_0000 b on b.cct_codigo=a.cct_codigo ' + ' where a.' +
    pCampoDtMin + '>=' + DateToSql(pDtIni) + ' and a.' + pCampoDtMax + '<=' +
    DateToSql(pDtFim) + ConcatSe(' and a.emp_codigo = ',
    iif(rbEmpresa.Checked, qStr(dbInicio.Empresa.EMP_CODIGO), '')) +
    ' Order By b.cct_nivel';
  if delphiaberto then
    copytoclipboard(qTemp.sql.Text);
  qTemp.Open;
  while not qTemp.Eof do
  begin
    nivel := qTemp.fields[0].AsString;
    ListaNivel.Clear;
    ListaNivel.DelimitedText := nivel;
    nivelb := '';
    Y := ListaNivel.count - 2;
    for X := 0 to Y do
    begin
      nivelb := InsereAfter(nivelb, '.') + ListaNivel[X];
      if not cdsPivot.FindKey([nivelb]) then
      begin
        cdsPivot.Append;
        cdsPivot.fields[0].AsString := nivelb;
        cdsPivot.fields[1].AsString := '';
        cdsPivot.fields[2].AsString := dbInicio.BuscaUmDadoSqlAsString
          ('select cct_descri from cct_0000 where cct_nivel=' + qStr(nivelb));
        cdsPivot.Post;
      end;
    end;

    cdsPivot.Append;
    cdsPivot.fields[0].AsString := qTemp.fields[0].AsString;
    cdsPivot.fields[1].AsString := qTemp.fields[2].AsString;
    cdsPivot.fields[2].AsString := qTemp.fields[1].AsString;
    cdsPivot.Post;
    qTemp.Next;
  end;

  qTemp.Close;
  qTemp.sql.Text := 'select a.*, b.cct_nivel ' + ' from ' +
    iif(rbEmpresa.Checked, pViewRateioEmp, pViewRateioGeral) + ' a ' +
    '        join cct_0000 b on b.cct_codigo=a.cct_codigo ' + 'Where a.' +
    pCampoDtMin + '>=' + DateToSql(pDtIni) + ' and a.' + pCampoDtMax + '<=' +
    DateToSql(pDtFim) + ConcatSe(' and a.emp_codigo = ',
    iif(rbEmpresa.Checked, qStr(dbInicio.Empresa.EMP_CODIGO), '')) +
    ' Order By b.cct_nivel, a.' + pCampoDtMin;
  if delphiaberto then
    copytoclipboard(qTemp.sql.Text);
  qTemp.Open;
  while not qTemp.Eof do
  begin
    if cdsPivot.fields[0].AsString <> qTemp.FieldByName('cct_nivel').AsString
    then
      cdsPivot.FindKey([qTemp.FieldByName('cct_nivel').AsString]);

    nmCampo := qTemp.FieldByName(pCampoGrupo).AsString;
    if assigned(nmCampos) then
    begin
      nPOs := nmCampos.IndexOfName(nmCampo);
      nmCampo := nmCampos.ValueFromIndex[nPOs];
    end;

    fld := cdsPivot.FieldByName(nmCampo);

    Valor := qTemp.FieldByName('recebido').AsCurrency -
      qTemp.FieldByName('pago').AsCurrency;
    cdsPivot.edit;
    fld.AsCurrency := fld.AsCurrency + Valor;
    cdsPivot.fields[nLcol].AsCurrency := cdsPivot.fields[nLcol]
      .AsCurrency + Valor;
    cdsPivot.Post;

    nivel := qTemp.FieldByName('cct_nivel').AsString;
    ListaNivel.Clear;
    ListaNivel.DelimitedText := nivel;
    nivelb := '';
    Y := ListaNivel.count - 2;
    for X := 0 to Y do
    begin
      nivelb := InsereAfter(nivelb, '.') + ListaNivel[X];
      cdsPivot.FindKey([nivelb]);
      cdsPivot.edit;
      fld.AsCurrency := fld.AsCurrency + Valor;
      cdsPivot.fields[nLcol].AsCurrency := cdsPivot.fields[nLcol]
        .AsCurrency + Valor;
      cdsPivot.Post;
    end;

    qTemp.Next;
  end;
    qTemp.Close;

  AjustaGraficoPivot;

  dbgrd1.Columns.Clear;
  dbgrd1.DataSource := dsPivot;
  dbgrd1.DataSource.DataSet.EnableControls;
  dbgrd1.Refresh;
  AjustaColunasGrid;

end;

Procedure TFrmSie.PivotTempPLCC(pDtIni, pDtFim: tDateTime;
  const pViewRateioEmp, pViewRateioGeral, pCampoDt: string);
var
  fld: tField;
   Valor: Currency;
  { nLcol, }  X, Y: Integer;
  nmCampo: String;
  nivel, nivelb: string;
  ListaNivel: tStringList;

begin

  ListaNivel := tStringList.Create;
  ListaNivel.Delimiter := '.';
  dbgrd1.DataSource := Nil;

  qTemp.Close;
  qTemp.sql.Text := 'select distinct pcx_nivel, pcx_descri ' + ' from ' +
    iif(rbEmpresa.Checked, pViewRateioEmp, pViewRateioGeral) + ' where ' +
    pCampoDt + '>=' + DateToSql(pDtIni) + ' and ' + pCampoDt + '<=' +
    DateToSql(pDtFim) + ConcatSe(' and emp_codigo = ',
    iif(rbEmpresa.Checked, qStr(dbInicio.Empresa.EMP_CODIGO), '')) +
    ' Order By pcx_nivel';
  qTemp.Open;

  cdsPivot.Close;
  cdsPivot.FieldDefs.Clear;

  cdsPivot.FieldDefs.add('Nivel', ftString, 15);
  cdsPivot.FieldDefs.add('Reduzido', ftString, 3);
  cdsPivot.FieldDefs.add('Nome da Conta', ftString, 43);

  while not qTemp.Eof do
  begin
    cdsPivot.FieldDefs.add
      (qTemp.fields[0].AsString { +#13+qTemp.Fields[1].AsString } , ftCurrency);
    qTemp.Next
  end;

  { cdsPivot.FieldDefs.add( 'Total', ftCurrency ) ;
    nLcol := cdsPivot.FieldDefs.Count-1; }

  qTemp.Close;
  cdsPivot.CreateDataSet;

  Y := cdsPivot.FieldDefs.count - 1;
  for X := 0 to Y do
    if X > 2 then
      cdsPivot.fields[X].DisplayLabel := cdsPivot.fields[X].FieldName + ' - ' +
        dbInicio.BuscaUmDadoSqlAsString
        ('Select pcx_descri from pcx0000 where pcx_nivel=' +
        qStr(cdsPivot.fields[X].FieldName));

  AjustaMascaraCampos;
  cdsPivot.IndexFieldNames := 'Nivel';
  cdsPivot.Open;

  qTemp.Close;
  qTemp.sql.Text := 'select distinct cct_nivel, cct_descri, cct_codigo ' +
    ' from ' + iif(rbEmpresa.Checked, pViewRateioEmp, pViewRateioGeral) +
    ' where ' + pCampoDt + '>=' + DateToSql(pDtIni) + ' and ' + pCampoDt + '<='
    + DateToSql(pDtFim) + ConcatSe(' and emp_codigo = ',
    iif(rbEmpresa.Checked, qStr(dbInicio.Empresa.EMP_CODIGO), '')) +
    ' Order By cct_nivel';
  if delphiaberto then
    copytoclipboard(qTemp.sql.Text);
  qTemp.Open;
  while not qTemp.Eof do
  begin
    nivel := qTemp.fields[0].AsString;
    ListaNivel.Clear;
    ListaNivel.DelimitedText := nivel;
    nivelb := '';
    Y := ListaNivel.count - 2;
    for X := 0 to Y do
    begin
      nivelb := InsereAfter(nivelb, '.') + ListaNivel[X];
      if not cdsPivot.FindKey([nivelb]) then
      begin
        cdsPivot.Append;
        cdsPivot.fields[0].AsString := nivelb;
        cdsPivot.fields[1].AsString := '';
        cdsPivot.fields[2].AsString := dbInicio.BuscaUmDadoSqlAsString
          ('select cct_descri from cct_0000 where cct_nivel=' + qStr(nivelb));
        cdsPivot.Post;
      end;
    end;

    // 1.01.01
    cdsPivot.Append;
    cdsPivot.fields[0].AsString := nivel;
    cdsPivot.fields[1].AsString := qTemp.fields[2].AsString;
    cdsPivot.fields[2].AsString := qTemp.fields[1].AsString;
    cdsPivot.Post;
    qTemp.Next;
  end;

  qTemp.Close;
  qTemp.sql.Text := 'select PCX_CODIGO, ' + '       CCT_CODIGO, ' +
    '       PCX_NIVEL, ' + '       PCX_DESCRI, ' + '       CCT_NIVEL, ' +
    '       CCT_DESCRI, ' +
    '       Cast( sum( PAGO ) as Numeric (18,2) ) as Pago,  ' +
    '       Cast( sum( RECEBIDO ) as Numeric (18,2) ) as Recebido  ' + ' from '
    + iif(rbEmpresa.Checked, pViewRateioEmp, pViewRateioGeral) + ' Where ' +
    pCampoDt + '>=' + DateToSql(pDtIni) + ' and ' + pCampoDt + '<=' +
    DateToSql(pDtFim) + ConcatSe(' and emp_codigo = ',
    iif(rbEmpresa.Checked, qStr(dbInicio.Empresa.EMP_CODIGO), '')) +
    ' group by 1,2,3,4,5,6 ' + ' Order By cct_nivel, pcx_nivel ';

  if delphiaberto then
    copytoclipboard(qTemp.sql.Text);

  qTemp.Open;
  while not qTemp.Eof do
  begin

    if cdsPivot.fields[0].AsString <> qTemp.FieldByName('cct_nivel').AsString
    then
      cdsPivot.FindKey([qTemp.FieldByName('cct_nivel').AsString]);

    nmCampo := qTemp.FieldByName('pcx_nivel').AsString;

    fld := cdsPivot.FieldByName(nmCampo);

    Valor := qTemp.FieldByName('recebido').AsCurrency -
      qTemp.FieldByName('pago').AsCurrency;
    cdsPivot.edit;
    fld.AsCurrency := fld.AsCurrency + Valor;
    { CdsPivot.Fields[nLcol].AsCurrency := CdsPivot.Fields[nLcol].AsCurrency + valor; }
    cdsPivot.Post;

    nivel := qTemp.FieldByName('cct_nivel').AsString;
    ListaNivel.Clear;
    ListaNivel.DelimitedText := nivel;
    nivelb := '';
    Y := ListaNivel.count - 2;
    for X := 0 to Y do
    begin
      nivelb := InsereAfter(nivelb, '.') + ListaNivel[X];
      cdsPivot.FindKey([nivelb]);
      cdsPivot.edit;
      fld.AsCurrency := fld.AsCurrency + Valor;
      { CdsPivot.Fields[nLcol].AsCurrency := CdsPivot.Fields[nLcol].AsCurrency + valor; }
      cdsPivot.Post;
    end;

    qTemp.Next;
  end;
  qTemp.Close;

  AjustaGraficoPivot;
  dbgrd1.Columns.Clear;
  dbgrd1.DataSource := dsPivot;
  dbgrd1.Refresh;
  AjustaColunasGrid;

end;

procedure TFrmSie.ProcessarBI;
var
  dta: tDateTime;
  sEmpresa: String;
  sregime: smallint;
begin
if edtInicial.Date = 0 then
    edtInicial.Date := Date;
  if edtFinal.Date = 0 then
    edtFinal.Date := Date;
  if (edtInicial.Date > edtFinal.Date) then
  begin
    dta := edtFinal.Date;
    edtFinal.Date := edtInicial.Date;
    edtInicial.Date := dta
  end
  else
  begin
    try
      { PanelAguarde.Visible := True;
        JvGIFAnimator2.ANIMATE:=True;
        PanelAguarde.Refresh; }
      Screen.Cursor := crHourGlass;
      application.ProcessMessages;
      pFiltro.Visible := False;
      dbgrd1.DataSource := dsResultado;
      cxGrid1DBTableView1.DataController.DataSource := dsResultado;

      CdsResultado.Filter := '';
      CdsResultado.Filtered:= False;
      Try
        case rgVisualizao.ItemIndex of
          0,-1:
            begin // Diário
              dDataInicial := edtInicial.Date;
              dDataFinal := edtFinal.Date;
            end;
          1:
            begin //Semanal
              dDataInicial := StartOfTheWeek(edtInicial.Date);
              dDataFinal := EndOfTheWeek(edtFinal.Date);
            end;
          2:
            begin // Mensal
              dDataInicial := StartOfTheMonth(edtInicial.Date);
              dDataFinal := EndOfTheMonth(edtFinal.Date);
            end;
          3:
            begin // Bimestral
              dDataInicial := DiaInicioBimestre(edtInicial.Date);
              dDataFinal := DiaFinalBimestre(edtFinal.Date);
            end;
          4:
            begin // Trimestral
              dDataInicial := DiaInicioTrimestre(edtInicial.Date);
              dDataFinal := DiaFinalTrimestre(edtFinal.Date);
            end;
          5:
            begin // Semestral
              dDataInicial := DiaInicioSemestre(edtInicial.Date);
              dDataFinal := DiaFinalSemestre(edtFinal.Date);
            end;
          6:
            begin // Anual
              dDataInicial := DiaInicioAno(edtInicial.Date);
              dDataFinal := DiaFinalANo(edtFinal.Date);
            end;

        end;

        edtInicial.Date := dDataInicial;
        edtFinal.Date := dDataFinal;
        if rbCaixa.Checked then
           sregime:= 1
        else if rbRealizado.Checked then
           sregime := 2
        else if rbCompetencia.Checked then  // regime competencia default
          sregime := 0
        else if rbEntradaPedido.Checked then
          sregime := 3;



        // Empresa
        sEmpresa := iif(rbEmpresa.Checked, dbInicio.Empresa.EMP_CODIGO, '999');
        // Fecha Conexao
        DataCadastros.sqlUpdate.Close;
        // Limpa Colunas e Linhas
        if sRelatorio = 'vendas-por centro de custo' then
          Rel_Vendas_CentroCusto (sEmpresa, dDataInicial, dDataFinal)
        else
        if (sRelatorio =  'Financeiro-Plano de Contas x Centro de Custo - Vencimento') then
        // Fluxo de caixa Previsto
        begin
          PivotTempPLCC(edtInicial.Date, edtFinal.Date, 'Pl_CC_vencto_View',    'Pl_CC_vencto_View_geral', 'vencto');
        end
        else if (sRelatorio =  'Financeiro-Plano de Contas x Centro de Custo - Quitação') then
        // Fluxo de caixa Previsto
        begin
          PivotTempPLCC(edtInicial.Date, edtFinal.Date, 'Pl_CC_pagto_View',  'Pl_CC_pagto_View_geral', 'pagto');
        end
        else if pos('centro de custo',sRelatorio)>0 then      //DER - Centro de Custos - Competência (emissão)
        begin
          case rgVisualizao.ItemIndex of
            0:
              PivotTemp(edtInicial.Date, edtFinal.Date, 'LISTA_RATEIO_VIEW_EMISSAO',  'EMISSAO', 'EMISSAO', 'EMISSAO');
            1:
              PivotTemp(edtInicial.Date, edtFinal.Date, 'RATEIO_SEMANA_VIEW_EMISSAO',   'semana', 'DtMin', 'DtMax');
            2:
              PivotTemp(edtInicial.Date, edtFinal.Date, 'RESUMO_MENSAL_VIEW_EMISSAO',  'mes', 'DtMin', 'DtMax');
            3:
              PivotTemp(edtInicial.Date, edtFinal.Date, 'RATEIO_BIMESTRE_VIEW_EMISSAO', 'bimestre', 'DtMin', 'DtMax');
            4:
              PivotTemp(edtInicial.Date, edtFinal.Date, 'RATEIO_TRIMESTRE_VIEW_EMISSAO',  'trimestre', 'DtMin', 'DtMax');
            5:
              PivotTemp(edtInicial.Date, edtFinal.Date, 'RATEIO_SEMESTRE_VIEW_EMISSAO',  'semestre', 'DtMin', 'DtMax');
            6:
              PivotTemp(edtInicial.Date, edtFinal.Date, 'RATEIO_ANO_VIEW_EMISSAO',  'ano', 'DtMin', 'DtMax');
          end;
        end
        else if pos('plano de contas por caixa',sRelatorio)>0 then  ///DER - Plano de Contas - Caixa (vencimento)
        begin
          case rgVisualizao.ItemIndex of
            0:
              PivotTempPL(edtInicial.Date, edtFinal.Date,
                'RESUMO_PL_VENCTO_VIEW', 'RESUMO_PL_VENCTO_VIEW_geral',  'vencto', 'vencto', 'vencto');
            1:
              PivotTempPL(edtInicial.Date, edtFinal.Date,
                'RES_PL_VENCTO_SEM_VIEW', 'RES_PL_VENCTO_SEM_VIEW_geral', 'semana', 'DtMin', 'DtMax');
            2:
              PivotTempPL(edtInicial.Date, edtFinal.Date,
                'RES_PL_VENCTO_MES_VIEW', 'RES_PL_VENCTO_MES_VIEW_Geral', 'mes',  'DtMin', 'DtMax');
            3:
              PivotTempPL(edtInicial.Date, edtFinal.Date,
                'RES_PL_VENCTO_bim_VIEW', 'RES_PL_VENCTO_bim_VIEW_Geral','bimestre', 'DtMin', 'DtMax');
            4:
              PivotTempPL(edtInicial.Date, edtFinal.Date,
                'RES_PL_VENCTO_TRI_VIEW', 'RES_PL_VENCTO_TRI_VIEW_Geral', 'trimestre', 'DtMin', 'DtMax');
            5:
              PivotTempPL(edtInicial.Date, edtFinal.Date,
                'RES_PL_VENCTO_sms_VIEW', 'RES_PL_VENCTO_sms_VIEW_Geral','semestre', 'DtMin', 'DtMax');
            6:
              PivotTempPL(edtInicial.Date, edtFinal.Date,
                'RES_PL_VENCTO_ano_VIEW', 'RES_PL_VENCTO_ano_VIEW_Geral', 'ano', 'DtMin', 'DtMax');
          end;

        end
        else if pos('plano de contas por competência', sRelatorio)>0  then //DER - Plano de Contas - Competência (emissão)
        // Fluxo de caixa Previsto
        begin
          case rgVisualizao.ItemIndex of
            0:
              PivotTempPL(edtInicial.Date, edtFinal.Date,
                'RESUMO_PL_emissao_VIEW', 'RESUMO_PL_emissao_VIEW_geral',  'emissao', 'emissao', 'emissao');
            1:
              PivotTempPL(edtInicial.Date, edtFinal.Date,'RES_PL_EMISSAO_SEM_VIEW', 'RES_PL_EMISSAO_SEM_VIEW_geral',  'semana', 'DtMin', 'DtMax');
            2:
              PivotTempPL(edtInicial.Date, edtFinal.Date, 'RES_PL_EMISSAO_mes_VIEW', 'RES_PL_EMISSAO_mes_VIEW_Geral',  'mes', 'DtMin', 'DtMax');
            3:
              PivotTempPL(edtInicial.Date, edtFinal.Date, 'RES_PL_EMISSAO_bim_VIEW', 'RES_PL_EMISSAO_bim_VIEW_Geral',  'bimestre', 'DtMin', 'DtMax');
            4:
              PivotTempPL(edtInicial.Date, edtFinal.Date, 'RES_PL_EMISSAO_tri_VIEW', 'RES_PL_EMISSAO_tri_VIEW_Geral', 'trimestre', 'DtMin', 'DtMax');
            5:
              PivotTempPL(edtInicial.Date, edtFinal.Date, 'RES_PL_EMISSAO_sms_VIEW', 'RES_PL_EMISSAO_sms_VIEW_Geral', 'semestre', 'DtMin', 'DtMax');
            6:
              PivotTempPL(edtInicial.Date, edtFinal.Date, 'RES_PL_EMISSAO_ano_VIEW', 'RES_PL_EMISSAO_ano_VIEW_Geral',   'ano', 'DtMin', 'DtMax');
          end;

        end
        else if pos('plano de contas por quitação',sRelatorio)>0 then    //DER - Plano de Contas - Quitação
        // Fluxo de caixa Previsto
        begin
          case rgVisualizao.ItemIndex of
            0:
              PivotTempPL(edtInicial.Date, edtFinal.Date,'RESUMO_PL_PAGTO_VIEW', 'RESUMO_PL_PAGTO_VIEW_geral', 'PAGTO', 'PAGTO', 'PAGTO');
            1:
              PivotTempPL(edtInicial.Date, edtFinal.Date,
                'RES_PL_PAGTO_SEM_VIEW', 'RES_PL_PAGTO_SEM_VIEW_geral', 'semana', 'DtMin', 'DtMax');
            2:
              PivotTempPL(edtInicial.Date, edtFinal.Date, 'RES_PL_PAGTO_MES_VIEW', 'RES_PL_PAGTO_MES_VIEW_Geral', 'mes', 'DtMin', 'DtMax');
            3:
              PivotTempPL(edtInicial.Date, edtFinal.Date, 'RES_PL_PAGTO_BIM_VIEW', 'RES_PL_PAGTO_BIM_VIEW_Geral','bimestre', 'DtMin', 'DtMax');
            4:
              PivotTempPL(edtInicial.Date, edtFinal.Date,'RES_PL_PAGTO_TRI_VIEW', 'RES_PL_PAGTO_TRI_VIEW_Geral','trimestre', 'DtMin', 'DtMax');
            5:
              PivotTempPL(edtInicial.Date, edtFinal.Date,'RES_PL_PAGTO_SMS_VIEW', 'RES_PL_PAGTO_SMS_VIEW_Geral','semestre', 'DtMin', 'DtMax');
            6:
              PivotTempPL(edtInicial.Date, edtFinal.Date,'RES_PL_PAGTO_ANO_VIEW', 'RES_PL_PAGTO_ANO_VIEW_Geral', 'ano',
                'DtMin', 'DtMax');
          end;

        end
        else if (sRelatorio = 'vendas-periódicas') then // Fluxo de caixa Previsto
          Rel_Vendas_Periodicas(sempresa,dDataInicial,dDataFinal,sregime)
        else if (sRelatorio = 'vendas-por estado') then // Fluxo de caixa Previsto
           Rel_Vendas_porEstado(sEmpresa,dDataInicial,dDataFinal,sregime)
        else if (sRelatorio = 'vendas-por cidade') then // Fluxo de caixa Previsto
          Rel_Vendas_porCidade(sempresa,dDataInicial,dDataFinal,sregime)
        else if (sRelatorio = 'vendas-por região') then
           Rel_Vendas_porRegiao(sempresa,dDataInicial,dDataFinal,sregime)
        else if (sRelatorio = 'vendas-por cliente') then
           Rel_Vendas_porCliente(sempresa,dDataInicial,dDataFinal,sregime)
        else if (sRelatorio = 'vendas-por vendedor') then
           Rel_Vendas_porVendedor(sempresa,dDataInicial,dDataFinal,sregime)
        else if (sRelatorio = 'produtos-vendas-tipo') then
           Rel_Vendas_Tipo(sempresa,dDataInicial,dDataFinal)
        else if (sRelatorio = 'produtos-vendas-linha') then
           Rel_Vendas_Linhas(sEmpresa,dDataInicial,dDataFinal)
        else if (sRelatorio = 'produtos-vendas-grupo') then
           Rel_Vendas_Grupo(sEmpresa,dDataInicial,dDataFinal)
        else if (sRelatorio = 'produtos-vendas-produto') then
           Rel_Vendas_Produto(sEmpresa,dDataInicial,dDataFinal)
        else if (sRelatorio = 'produtos-vendas-produto por unidade') then
           Rel_Vendas_Produto_por_unidade(sEmpresa,dDataInicial,dDataFinal)
        else if (sRelatorio = 'produtos-vendas-grade') then
           Rel_Vendas_Grade(sempresa,dDataInicial,dDataFinal)
        else if (sRelatorio = 'compras-periódicas') then
           Rel_Compras_Periodica(sempresa,dDataInicial,dDataFinal)
        else if (sRelatorio = 'compras-por fornecedor') then
           Rel_ComprasFornecedor(sempresa,dDataInicial,dDataFinal)

        else if pos('ticket médio dos clientes sem compra',sRelatorio) > 0 then
         Rel_ClientesInativo(sEmpresa,dDataInicial,dDataFinal,sregime)
        else if pos('ticket médio dos clientes',sRelatorio)>0  then
          Rel_Metrica_Cliente(sEmpresa,dDataInicial,dDataFinal,sregime)
        else if pos('ticket médio dos vendedores',sRelatorio)>0 then
         Rel_Metrica_Vendedores(sEmpresa,dDataInicial,dDataFinal,sregime)
        else if pos('Produtividade por operação',srelatorio) > 0 then
        begin
          GerarConsulta('SELECT fb.DATA_INCIO, sum(FAB_REFUGADA) AS REFUGADA , sum(FAB_PRODUZIDA) AS PRODUZIDA,  OPE_DESCRICAO, sum(OSV_QTDE) AS SOLICITADA'+
                        '  ,sum(FAB_REFUGADA)/sum(OSV_QTDE)*100 AS QI                                       '+
                        '   FROM FABRICACAO fb                                                              '+
                        '    INNER JOIN PRD0000 P1 ON (P1.PRD_CODIGO = fb.PRD_CODIGO)                       '+
                        '    INNER JOIN OSV0001 OS ON (OS.OSV_CODIGO = FB.OSV_CODIGO)                       '+
                        '    INNER JOIN OPERACOES OP ON (FB.OPE_CODIGO = OP.OPE_CODIGO)                     '+
                        '  WHERE                                                                            '+
                        '   fb.DATA_INCIO  BETWEEN ' + DateToSql(dDataInicial) + ' AND ' + DateToSql(dDataFinal) +
                        '   AND FAB_REFUGADA > 0                  '+
                        '  GROUP BY DATA_INCIO, ope_descricao ');
          GerarColunas('OPE_DESCRICAO', 'DATA_INCIO', '250', '90', 'ftString', odColunas);
          GerarLinhas(True, 'OPE_DESCRICAO', 'OPERACAO', 'DATA_INCIO', 'REFUGADA');
          GerarGraficos('OPE_DESCRICAO');

        end
        else if (sRelatorio = 'compras-abc fornecedor') then
        begin
          Rel_ABCFornecedor (sEmpresa, dDataInicial,dDataFinal);

        end
        else if (sRelatorio = 'vendas-abc cliente') then
          Rel_ABCClientes(sEmpresa, dDataInicial, dDataFinal, sregime)
        else  if pos('abc produtos por unidades',srelatorio) >0 then
          Rel_ABCProdutos_Unidade(sempresa,dDataInicial,dDataFinal)
        else if pos('abc produtos por venda',sRelatorio)>0 then
         Rel_ABCProdutos_Venda(sEmpresa,dDataInicial,dDataFinal)
        else if pos('abc vendedor',sRelatorio)>0 then
          Rel_ABCVendedor(sEmpresa, dDataInicial, dDataFinal, sregime)
        else  if pos('abc produto por valor',srelatorio) >0 then
          Rel_ABCProdutoValorCompras(sEmpresa,dDataInicial,dDataFinal)
        else if pos('estoque-abc valor custo médio',sRelatorio)>0 then
        begin
          if pos('grupo',sRelatorio)>0 then
            Rel_ABCValorEstoqueCMedio_grupo(sEmpresa)
          else
          if pos('tipo',sRelatorio)>0 then
            Rel_ABCValorEstoqueCMedio_tipo(sEmpresa)
          else
            Rel_ABCValorEstoqueCMedio(sEmpresa)
        end
        else if pos('estoque-abc valor custo líquido',sRelatorio)>0 then
        begin
          if pos('grupo',sRelatorio)>0 then
            Rel_ABCValorEstoqueCLiquido_grupo(sEmpresa)
          else
          if pos('tipo',sRelatorio)>0 then
            Rel_ABCValorEstoqueCLiquido_tipo(sEmpresa)
          else
            Rel_ABCValorEstoqueCLiquido(sEmpresa)
        end
        else if pos('estoque-abc em quantidade',sRelatorio)>0 then
        begin
          if pos('grupo',sRelatorio)>0 then
            Rel_ABCQtdeEstoque_grupo(sEmpresa)
          else
          if pos('tipo',sRelatorio)>0 then
            Rel_ABCQtdeEstoque_tipo(sEmpresa)
          else
            Rel_ABCQtdeEstoque(sEmpresa)
        end
        else if pos('inadimplência',srelatorio) >0 then
          Rel_Inadimplencias(sEmpresa, dDataInicial, dDataFinal)
        else if pos('ranking pagadores',srelatorio)>0 then
          Rel_rankpagadores(sEmpresa)
        else if pos('origem',srelatorio)>0  then
          Rel_VendasOrigem(sEmpresa, dDataInicial, dDataFinal);

        dbgrd1.Refresh;
        cxGrid1.Refresh;
        ShowScrollbar(dbgrd1.Handle, SB_VERT, true);
        // uteis.aviso('Relatório em Implementação');
        // Fecha Conexao
        if CdsResultado.active then
          CdsResultado.First;
        DataCadastros.sqlUpdate.Close;
      Finally
        Screen.Cursor := crDefault;
      End;
      { PanelAguarde.Visible := False;
        JvGIFAnimator2.ANIMATE:=False; }
    except

      // PanelAguarde.Visible := False
      ON E: EXCEPTION DO
      begin
        // raise EXCEPTION.Create(E.Message);
        showmessage(E.Message);
        // Fecha Conexao
        DataCadastros.sqlUpdate.Close;
      end;
    end;
  end;
end;

procedure TFrmSie.AjustaColunasGrid;
var
  nPOs: Integer;
begin
  for nPOs := 2 to dbgrd1.Columns.count - 1 do
  begin
    if dbgrd1.Columns[nPOs].Width < 110 then
      dbgrd1.Columns[nPOs].Width := 110;
    dbgrd1.Columns[nPOs].title.alignment := taCenter;
  end;
end;

procedure TFrmSie.AjustaGraficoPivot;
var
  nLcol: Integer;
begin
  nLcol := cdsPivot.FieldDefs.count - 1;
  cdsPivot.First;
  chtGrafico.Series[0].Clear;
  // CdsPlanoContas.first;
  // while (not CdsPlanoContas.Eof) do
  // begin
  while (not cdsPivot.Eof) do
  begin
    // if (CdsPlanoContasSelecionado.AsBoolean) and (CdsPlanoContasNivel.AsString = CdsPivot.Fields[0].asstring) then
    if (cdsPivot.fields[nLcol].AsCurrency > 0) or
      (cdsPivot.fields[nLcol].AsString <> EmptyStr) then
      chtGrafico.Series[0].add(cdsPivot.fields[nLcol].AsCurrency,
        cdsPivot.fields[0].AsString);
    cdsPivot.Next;
  end;
  // CdsPivot.First;
  // CdsPlanoContas.Next;
  // end;
  cdsPivot.First;
end;
// GERAS OS NOMES DAS COLUNAS
 {sNomeColunaFixa = NOME DA COLUNAS SEPARADO POR ;
 }
procedure TFrmSie.GerarColunas( const sNomeColunaFixa,sNomeTitulo, sFieldColuna, iTamanhoColunaFixa,
      iTamanhoFildColuna, TipoCampo: string; const  orientacao: TOrientacaoDatas = odLinhas;  totaliza: Boolean = True; bUsarDataTitulo: Boolean = True);
begin
 GerarColunas( CdsResultado ,sNomeColunaFixa,sNomeTitulo, sFieldColuna,  iTamanhoColunaFixa,
            iTamanhoFildColuna, TipoCampo,  orientacao, totaliza, bUsarDataTitulo);
end;

procedure TFrmSie.GerarColunas( cds : TClientDataSet ; const sNomeColunaFixa,sNomeTitulo, sFieldColuna,  iTamanhoColunaFixa,
            iTamanhoFildColuna, TipoCampo: string;const  orientacao: TOrientacaoDatas; totaliza: Boolean; bUsarDataTitulo: Boolean);
// GerarColunas( 'TITULO' , 'VCTO' , 400, 90, odColunas, False);
var
  iQuantidadeColunas, i: Integer;
  colunaGrid: TColumn;
  sTeste: String;
  sNomeColunaIndiv: string;
  sColunas, sTipos, sTamanhos,sTitulos: tStringList;
begin

  cds.IndexFieldNames := '';
  // CdsColunas.EmptyDataSet;

  { while (dbGrd1.Columns.Count > 0) do
    dbGrd1.Columns.Clear; }

  iQuantidadeColunas := 0;
  if cds = CdsResultado then
  begin
    dbgrd1.Columns.Clear;
    cxGrid1DBTableView1.ClearItems;
    cxGrid1DBTableView2.ClearItems;
  end
  else
  begin
    cxGrid1DBTableView2.ClearItems;
  end;

  if (sNomeColunaFixa <> '') then
  begin
    sColunas := tStringList.Create;
    sColunas.Delimiter := ';';
    sColunas.StrictDelimiter := True;
    sColunas.DelimitedText := sNomeColunaFixa;

    sTipos := tStringList.Create;
    sTipos.Delimiter := ';';
    sTipos.StrictDelimiter := True;
    sTipos.DelimitedText := TipoCampo;

    sTamanhos := tStringList.Create;
    sTamanhos.Delimiter := ';';
    sTamanhos.StrictDelimiter := True;
    sTamanhos.DelimitedText := iTamanhoColunaFixa;

    for i := 0 to sColunas.count - 1 do
    begin
      sNomeColunaIndiv := sColunas[i];
      if lowercase(sTipos[i]) = 'ftstring' then
        cds.FieldDefs.add(Trim(sNomeColunaIndiv), ftString, StrToInt(sTamanhos[i]))
      else if lowercase(sTipos[i]) = 'ftinteger' then
        cds.FieldDefs.add(Trim(sNomeColunaIndiv), ftinteger)
      else if lowercase(sTipos[i]) = 'ftfloat' then
        cds.FieldDefs.add(Trim(sNomeColunaIndiv), ftFloat)
      else if lowercase(sTipos[i]) = 'ftdatetime' then
        cds.FieldDefs.add(Trim(sNomeColunaIndiv), ftDateTime)
      else if lowercase(sTipos[i]) = 'ftdate' then
        cds.FieldDefs.add(Trim(sNomeColunaIndiv), ftDate);

      inc(iQuantidadeColunas);

      if cds = CdsResultado then
      begin
        colunaGrid := dbgrd1.Columns.add;
        colunaGrid.FieldName := Trim(sNomeColunaIndiv);
        colunaGrid.Width := StrToInt(sTamanhos[i]);
        dbgrd1.Columns[colunaGrid.Index].Width := StrToInt(sTamanhos[i]);
        dbgrd1.Columns[i].title.alignment := taCenter;
        colunaGrid.ReadOnly := True;
        colunaGrid.Color := clBtnFace;
      end;


    end;

  end;
  // Define Colunas do Resultado
  if sFieldColuna <> '' then
  begin
    while (not DataCadastros.sqlUpdate.Eof) do
    begin

      if (orientacao = odLinhas) then
      begin
        if (not CdsColunas.Locate('Coluna',
          DataCadastros.sqlUpdate.FieldByName(sFieldColuna).AsString, [])) then
          CdsColunasColuna.AsString := DataCadastros.sqlUpdate.FieldByName
            (sFieldColuna).AsString;
      end
      else if (not bUsarDataTitulo) then
      begin
        if (not CdsColunas.Locate('Coluna',
          DataCadastros.sqlUpdate.FieldByName(sFieldColuna).AsString, [])) then
          CdsColunasColuna.AsString := DataCadastros.sqlUpdate.FieldByName
            (sFieldColuna).AsString;
      end
      else
        case rgVisualizao.ItemIndex of
          0: //diário
            if (not CdsColunas.Locate('Coluna',  DataCadastros.sqlUpdate.FieldByName(sFieldColuna).AsString, []))
            then
            begin
              CdsColunas.Insert;
              CdsColunasColuna.AsString := DataCadastros.sqlUpdate.FieldByName
                (sFieldColuna).AsString;
              CdsColunas.Post;
            end;

          1: // Semanal
           if not (cdscolunas.Locate('Coluna',RetornaSemana(DataCadastros.SqlUpdate.FieldByName(sFieldColuna).AsDateTime),[])) then
           begin
              CdsColunas.Insert;
              CdsColunasColuna.AsString := RetornaSemana(DataCadastros.SqlUpdate.FieldByName(sFieldColuna).AsDateTime);
              CdsColunas.Post;
           end;


          2: // Mensal
            if (not CdsColunas.Locate('Coluna', RetornaMes(DataCadastros.sqlUpdate.FieldByName(sFieldColuna)
              .AsDateTime), [])) then
            begin
              CdsColunas.Insert;
              CdsColunasColuna.AsString :=
                RetornaMes(DataCadastros.sqlUpdate.FieldByName(sFieldColuna)
                .AsDateTime);
              CdsColunas.Post;
            end;
          3: // Bimestral
            if (not CdsColunas.Locate('Coluna', RetornaBimestre(DataCadastros.sqlUpdate.FieldByName(sFieldColuna).AsDateTime), [])) then
            begin
              CdsColunas.Insert;
              CdsColunasColuna.AsString :=
                RetornaBimestre(DataCadastros.sqlUpdate.FieldByName
                (sFieldColuna).AsDateTime);
              CdsColunas.Post;
            end;
          4: // Trimestral
            if (not CdsColunas.Locate('Coluna',  RetornaTrimestre(DataCadastros.sqlUpdate.FieldByName(sFieldColuna)
              .AsDateTime), [])) then
            begin
              CdsColunas.Insert;
              CdsColunasColuna.AsString :=
                RetornaTrimestre(DataCadastros.sqlUpdate.FieldByName
                (sFieldColuna).AsDateTime);
              CdsColunas.Post;
            end;
          5: // Semestral   //Verifica se o vencimento existe
            if (not CdsColunas.Locate('Coluna',RetornaSemestre(DataCadastros.sqlUpdate.FieldByName(sFieldColuna)
              .AsDateTime), [])) then
            begin
              CdsColunas.Insert;
              CdsColunasColuna.AsString :=
                RetornaSemestre(DataCadastros.sqlUpdate.FieldByName (sFieldColuna).AsDateTime);
              CdsColunas.Post;
            end;

          6: // Anual
            if (not CdsColunas.Locate('Coluna',
              RetornaAno(DataCadastros.sqlUpdate.FieldByName(sFieldColuna).AsDateTime), [])) then
            begin
              CdsColunas.Insert;
              CdsColunasColuna.AsString :=
                RetornaAno(DataCadastros.sqlUpdate.FieldByName(sFieldColuna).AsDateTime);
              CdsColunas.Post;
            end;

        end;

      DataCadastros.sqlUpdate.Next;
    end;
    // Preenche Valores
    if cds=CdsResultado then
    begin
      CdsColunas.First;
      while (not CdsColunas.Eof) do
      begin
        if sRelatorio = 'produtos-vendas-produto por unidade' then
          cds.FieldDefs.add(CdsColunasColuna.AsString, ftInteger)
        else
          cds.FieldDefs.add(CdsColunasColuna.AsString, ftCurrency);
        sTeste := CdsColunasColuna.AsString;
        colunaGrid := dbgrd1.Columns.add;
        colunaGrid.FieldName := CdsColunasColuna.AsString;
        colunaGrid.Width := StrToInt(iTamanhoFildColuna);
        colunaGrid.ReadOnly := True;
        { if (totaliza) then
          dbgrd1DBTableView1.Columns[colunaGrid.index].Summary.Footerkind:=skSum; }
        CdsColunas.Next;
      end;
    end;
    if sRelatorio = 'vendas-por vendedor' then
    begin               // chr 255 para o total sair por último
      cds.FieldDefs.add('Total', ftCurrency);
      colunaGrid := dbgrd1.Columns.add;
      colunaGrid.FieldName := 'Total';
      colunaGrid.Width := 90;
      colunaGrid.ReadOnly := True;

    end;

  end;

  // Cria e limpa resultado
  try
    if (not cds.active) then
      Cds.CreateDataSet;
    iQuantidadeColunas := iQuantidadeColunas + CdsColunas.RecordCount - 1;
  except
    iQuantidadeColunas := 0;
  end;
  if sNomeTitulo <> '' then
  begin
    sTitulos := tStringList.Create;
    sTitulos.Delimiter := ';';
    sTitulos.StrictDelimiter := True;
    sTitulos.DelimitedText := sNomeTitulo;

    for I := 0 to sTitulos.Count-1 do
    begin
      sNomeColunaIndiv := sColunas[i];
      cds.FieldByName(Trim(sNomeColunaIndiv)).DisplayLabel  :=  sTitulos[i];
      if iTamanhoColunaFixa <> '' then
         cds.FieldByName(sNomeColunaIndiv).DisplayWidth := StrToInt(sTamanhos[i]) ;

    end;

  end;
  if cds= CdsResultado then
    cxGrid1DBTableView1.DataController.CreateAllItems(true)
  else if cds = cdsNivel2Resultado then
    cxGrid1DBTableView2.DataController.CreateAllItems(true);
end;

procedure TFrmSie.GerarColunas(  const sNomeColunaFixa, sFieldColuna, iTamanhoColunaFixa, iTamanhoFildColuna,
 TipoCampo: string; const orientacao: TOrientacaoDatas; totaliza, bUsarDataTitulo: Boolean);
begin
   GerarColunas(CdsResultado,sNomeColunaFixa,'', sFieldColuna, iTamanhoColunaFixa, iTamanhoFildColuna, TipoCampo, orientacao, totaliza, bUsarDataTitulo);

end;
procedure TFrmSie.GerarColunas(cds: TClientDataSet;const sNomeColunaFixa, sFieldColuna, iTamanhoColunaFixa, iTamanhoFildColuna, TipoCampo: string;
  const orientacao: TOrientacaoDatas; totaliza, bUsarDataTitulo: Boolean);
begin
  GerarColunas (CdsResultado, sNomeColunaFixa, sFieldColuna, iTamanhoColunaFixa, iTamanhoFildColuna,
       TipoCampo, orientacao, totaliza, bUsarDataTitulo)
end;

procedure TFrmSie.GerarConsulta(const sql: String);
begin
  GerarConsulta( CdsResultado, sql);
end;

procedure TFrmSie.GerarConsulta( cds : TClientDataSet ; const sql: String);
var
  i: Integer;
begin
  DataCadastros.sqlUpdate.sql.Text := sql;
  if dbInicio.IsDesenvolvimento then
    CopytoClipboard(sql);
  DataCadastros.sqlUpdate.Open;

  // Cria Colunas
  // CdsColunas.Open;
  CdsColunas.Close;
  CdsColunas.CreateDataSet;
  cds.Close;
  Cds.FieldDefs.Clear;
  for i := 0 to cds.FieldDefs.count - 1 do
    cds.FieldDefs[0].Destroy;
end;






procedure TFrmSie.GerarConsulta2( cds : TClientDataSet ; const sql: String);
var
  i: Integer;
begin
  DataCadastros.sqlUpdate2.sql.Text := sql;
  DataCadastros.sqlUpdate2.Open;

  // Cria Colunas
  // CdsColunas.Open;
  CdsColunas.Close;
  CdsColunas.CreateDataSet;
  cds.Close;
  Cds.FieldDefs.Clear;
  for i := 0 to cds.FieldDefs.count - 1 do
    cds.FieldDefs[0].Destroy;
end;




procedure TFrmSie.GerarFiltros(const sColunasFiltradas:string);
var sColunas : TStringList;
begin

    sColunas := TStringList.Create;
    sColunas.Delimiter := ';';
    sColunas.StrictDelimiter := True;
    sColunas.DelimitedText := sColunasFiltradas;
    cbCampo.Items.Clear;
    cbCampo.Items.AddStrings(sColunas);
    pFiltro.Visible := True;
end;

procedure TFrmSie.GerarGraficos(const Series: string);
var
  Total: Double;
  sSerieList: tStringList;
  i: Integer;
begin
  CdsResultado.First;
  if Series <> '' then
  begin
    chtGrafico.Series[0].Clear;
    while (not CdsResultado.Eof) do
    begin
      Total := 0;
      sSerieList := tStringList.Create;
      sSerieList.Delimiter := ';';
      sSerieList.StrictDelimiter := True;
      sSerieList.DelimitedText := Series;
      CdsColunas.First;

      while (not CdsColunas.Eof) do
      begin
        Total := Total + CdsResultado.FieldByName
          (CdsColunasColuna.AsString).AsFloat;
        CdsColunas.Next;
      end;
      for i := 0 to sSerieList.count - 1 do
        chtGrafico.Series[0].add(Total, CdsResultado.FieldByName(sSerieList[i]).AsString);
      chtGrafico.Series[0].Marks.Visible := False;
      CdsResultado.Next;
    end;
  end
  else
  begin
    CdsColunas.First;
    chtGrafico.Series[0].Clear;
    while (not CdsColunas.Eof) do
    begin
      chtGrafico.Series[0] .add(CdsResultado.FieldByName(CdsColunasColuna.AsString).AsFloat,  CdsColunasColuna.AsString);
      CdsColunas.Next;
    end;

  end;
end;


procedure TFrmSie.GerarLinhas(const bUsaColunaFixa: Boolean;
  const sNomeColunaFixa, sFieldColunaFixa, sFieldColuna, sFieldLinha: String;
  const bUsarDataTitulo: Boolean);
var
  sColunas, sColunasValor : TStringList;
  i: Integer;
  sColunasChaves: variant;

begin
  CdsResultado.DisableControls;
  DataCadastros.sqlUpdate.First;
  while (not DataCadastros.sqlUpdate.Eof) do
  begin
    if (bUsaColunaFixa) then
    begin
      // PEGAR TODAS AS COLUNAS FIXA "NOME"
      sColunas := TStringList.Create;
      sColunas.Delimiter := ';';
      sColunas.StrictDelimiter := True;
      sColunas.DelimitedText := sNomeColunaFixa;

      // COLUNAS FIXA VALOR
      sColunasValor := TStringList.Create;
      sColunasValor.Delimiter := ';';
      sColunasValor.StrictDelimiter := True;
      sColunasValor.DelimitedText := sFieldColunaFixa;


      // VALORES DAS COLUNAS TRANSFROMAR EM ARRAY VARIANT
      sColunasChaves := VarArrayCreate([0, sColunasValor.count - 1],
        varVariant);
      for i := 0 to sColunas.count - 1 do
      begin
        sColunasChaves[i] := DataCadastros.sqlUpdate.FieldByName
          (sColunasValor[i]).AsString
      end;
      // PROCURAR O REGISTRO PELAS DUAS COLUNAS
      if (not CdsResultado.Locate(sNomeColunaFixa, sColunasChaves, [])) then
      begin
        // INSERIR AS COLUNAS FIXAS
        CdsResultado.Insert;
        for i := 0 to sColunas.count - 1 do
        begin
          CdsResultado.FieldByName(sColunas[i]).AsString :=
            DataCadastros.sqlUpdate.FieldByName(sColunasValor[i]).AsString;
          if dbgrd1.Columns[i].PickList.IndexOf(sColunasValor[i]) < 0  then
             dbgrd1.Columns[i].PickList.Add(DataCadastros.sqlUpdate.FieldByName(sColunasValor[i]).AsString);
        end;
        CdsResultado.Post;
      end;
    end;
    if (not bUsarDataTitulo) then
    begin
      CdsResultado.edit;
      CdsResultado.FieldByName(DataCadastros.sqlUpdate.FieldByName(sFieldColuna)
        .AsString).AsFloat := CdsResultado.FieldByName
        (DataCadastros.sqlUpdate.FieldByName(sFieldColuna).AsString).AsFloat +
        DataCadastros.sqlUpdate.FieldByName(sFieldLinha).AsFloat;
      CdsResultado.Post;
    end
    else
      case rgVisualizao.ItemIndex of
        0:
          begin // Diário
            CdsResultado.edit;
            CdsResultado.FieldByName(DataCadastros.sqlUpdate.FieldByName
              (sFieldColuna).AsString).AsFloat :=
              CdsResultado.FieldByName
              (DataCadastros.sqlUpdate.FieldByName(sFieldColuna).AsString)
              .AsFloat + DataCadastros.sqlUpdate.FieldByName
              (sFieldLinha).AsFloat;
            CdsResultado.Post;
          end;
        1:
          begin // Semanal
            // Verifica se o vencimento existe
            CdsResultado.edit;
            CdsResultado.FieldByName(RetornaSemana(DataCadastros.sqlUpdate.FieldByName(sFieldColuna).AsDateTime)).AsFloat :=
              CdsResultado.FieldByName
              (RetornaSemana(DataCadastros.sqlUpdate.FieldByName(sFieldColuna).AsDateTime))
              .AsFloat + DataCadastros.sqlUpdate.FieldByName
              (sFieldLinha).AsFloat;
            CdsResultado.Post;
          end;
        2:
          begin // Mensal
            CdsResultado.edit;
            CdsResultado.FieldByName
              (RetornaMes(DataCadastros.sqlUpdate.FieldByName(sFieldColuna)
              .AsDateTime)).AsFloat := CdsResultado.FieldByName
              (RetornaMes(DataCadastros.sqlUpdate.FieldByName(sFieldColuna)
              .AsDateTime)).AsFloat + DataCadastros.sqlUpdate.FieldByName
              (sFieldLinha).AsFloat;
            CdsResultado.Post;
          end;
        3:
          begin // Bimestral
            CdsResultado.edit;
            CdsResultado.FieldByName
              (RetornaBimestre(DataCadastros.sqlUpdate.FieldByName(sFieldColuna)
              .AsDateTime)).AsFloat := CdsResultado.FieldByName
              (RetornaBimestre(DataCadastros.sqlUpdate.FieldByName(sFieldColuna)
              .AsDateTime)).AsFloat + DataCadastros.sqlUpdate.FieldByName
              (sFieldLinha).AsFloat;
            CdsResultado.Post;
          end;
        4:
          begin // Trimestral
            // Verifica se o vencimento existe
            CdsResultado.edit;
            CdsResultado.FieldByName
              (RetornaTrimestre(DataCadastros.sqlUpdate.FieldByName
              (sFieldColuna).AsDateTime)).AsFloat :=
              CdsResultado.FieldByName
              (RetornaTrimestre(DataCadastros.sqlUpdate.FieldByName
              (sFieldColuna).AsDateTime)).AsFloat +
              DataCadastros.sqlUpdate.FieldByName(sFieldLinha).AsFloat;
            CdsResultado.Post;
          end;
        5:
          begin // Semestral
            CdsResultado.edit;
            CdsResultado.FieldByName
              (RetornaSemestre(DataCadastros.sqlUpdate.FieldByName(sFieldColuna)
              .AsDateTime)).AsFloat := CdsResultado.FieldByName
              (RetornaSemestre(DataCadastros.sqlUpdate.FieldByName(sFieldColuna)
              .AsDateTime)).AsFloat + DataCadastros.sqlUpdate.FieldByName
              (sFieldLinha).AsFloat;
            CdsResultado.Post;
          end;
        6:
          begin // Anual
            CdsResultado.edit;
            CdsResultado.FieldByName
              (RetornaAno(DataCadastros.sqlUpdate.FieldByName(sFieldColuna)
              .AsDateTime)).AsFloat := CdsResultado.FieldByName
              (RetornaAno(DataCadastros.sqlUpdate.FieldByName(sFieldColuna)
              .AsDateTime)).AsFloat + DataCadastros.sqlUpdate.FieldByName
              (sFieldLinha).AsFloat;
            CdsResultado.Post;
          end;
      end;
    DataCadastros.sqlUpdate.Next;
  end;
  CdsResultado.EnableControls;
  // Fecha CdS
  DataCadastros.sqlUpdate.Close;
  //dbgrd1.Refresh;
end;




procedure TFrmSie.GerarLinhas2(const bUsaColunaFixa: Boolean;
  const sNomeColunaFixa, sFieldColunaFixa, sFieldColuna, sFieldLinha: String;
  const bUsarDataTitulo: Boolean);
var
  sColunas, sColunasValor : TStringList;
  i: Integer;
  sColunasChaves: variant;

begin
  cdsNivel2Resultado.DisableControls;
  DataCadastros.sqlUpdate2.First;
  while (not DataCadastros.sqlUpdate2.Eof) do
  begin
    if (bUsaColunaFixa) then
    begin
      // PEGAR TODAS AS COLUNAS FIXA "NOME"
      sColunas := TStringList.Create;
      sColunas.Delimiter := ';';
      sColunas.StrictDelimiter := True;
      sColunas.DelimitedText := sNomeColunaFixa;

      // COLUNAS FIXA VALOR
      sColunasValor := TStringList.Create;
      sColunasValor.Delimiter := ';';
      sColunasValor.StrictDelimiter := True;
      sColunasValor.DelimitedText := sFieldColunaFixa;


      // VALORES DAS COLUNAS TRANSFROMAR EM ARRAY VARIANT
      sColunasChaves := VarArrayCreate([0, sColunasValor.count - 1],
        varVariant);
      for i := 0 to sColunas.count - 1 do
      begin
        sColunasChaves[i] := DataCadastros.sqlUpdate2.FieldByName
          (sColunasValor[i]).AsString
      end;
      // PROCURAR O REGISTRO PELAS DUAS COLUNAS
      if (not cdsNivel2Resultado.Locate(sNomeColunaFixa, sColunasChaves, [])) then
      begin
        // INSERIR AS COLUNAS FIXAS
        cdsNivel2Resultado.Insert;
        for i := 0 to sColunas.count - 1 do
        begin
          cdsNivel2Resultado.FieldByName(sColunas[i]).AsString :=
            DataCadastros.sqlUpdate2.FieldByName(sColunasValor[i]).AsString;
          if dbgrd1.Columns[i].PickList.IndexOf(sColunasValor[i]) < 0  then
             dbgrd1.Columns[i].PickList.Add(DataCadastros.sqlUpdate2.FieldByName(sColunasValor[i]).AsString);
        end;
        cdsNivel2Resultado.Post;
      end;
    end;
    if (not bUsarDataTitulo) then
    begin
      cdsNivel2Resultado.edit;
      cdsNivel2Resultado.FieldByName(DataCadastros.sqlUpdate2.FieldByName(sFieldColuna)
        .AsString).AsFloat := cdsNivel2Resultado.FieldByName
        (DataCadastros.sqlUpdate2.FieldByName(sFieldColuna).AsString).AsFloat +
        DataCadastros.sqlUpdate2.FieldByName(sFieldLinha).AsFloat;
      cdsNivel2Resultado.Post;
    end
    else
      case rgVisualizao.ItemIndex of
        0:
          begin // Diário
            cdsNivel2Resultado.edit;
            cdsNivel2Resultado.FieldByName(DataCadastros.sqlUpdate2.FieldByName
              (sFieldColuna).AsString).AsFloat :=
              cdsNivel2Resultado.FieldByName
              (DataCadastros.sqlUpdate2.FieldByName(sFieldColuna).AsString)
              .AsFloat + DataCadastros.sqlUpdate2.FieldByName
              (sFieldLinha).AsFloat;
            cdsNivel2Resultado.Post;
          end;
        1:
          begin // Semanal
            // Verifica se o vencimento existe
            cdsNivel2Resultado.edit;
            cdsNivel2Resultado.FieldByName(RetornaSemana(DataCadastros.sqlUpdate2.FieldByName(sFieldColuna).AsDateTime)).AsFloat :=
              cdsNivel2Resultado.FieldByName
              (RetornaSemana(DataCadastros.sqlUpdate2.FieldByName(sFieldColuna).AsDateTime))
              .AsFloat + DataCadastros.sqlUpdate2.FieldByName
              (sFieldLinha).AsFloat;
            cdsNivel2Resultado.Post;
          end;
        2:
          begin // Mensal
            cdsNivel2Resultado.edit;
            cdsNivel2Resultado.FieldByName
              (RetornaMes(DataCadastros.sqlUpdate2.FieldByName(sFieldColuna)
              .AsDateTime)).AsFloat := cdsNivel2Resultado.FieldByName
              (RetornaMes(DataCadastros.sqlUpdate2.FieldByName(sFieldColuna)
              .AsDateTime)).AsFloat + DataCadastros.sqlUpdate2.FieldByName
              (sFieldLinha).AsFloat;
            cdsNivel2Resultado.Post;
          end;
        3:
          begin // Bimestral
            cdsNivel2Resultado.edit;
            cdsNivel2Resultado.FieldByName
              (RetornaBimestre(DataCadastros.sqlUpdate2.FieldByName(sFieldColuna)
              .AsDateTime)).AsFloat := cdsNivel2Resultado.FieldByName
              (RetornaBimestre(DataCadastros.sqlUpdate2.FieldByName(sFieldColuna)
              .AsDateTime)).AsFloat + DataCadastros.sqlUpdate2.FieldByName
              (sFieldLinha).AsFloat;
            cdsNivel2Resultado.Post;
          end;
        4:
          begin // Trimestral
            // Verifica se o vencimento existe
            cdsNivel2Resultado.edit;
            cdsNivel2Resultado.FieldByName
              (RetornaTrimestre(DataCadastros.sqlUpdate2.FieldByName
              (sFieldColuna).AsDateTime)).AsFloat :=
              cdsNivel2Resultado.FieldByName
              (RetornaTrimestre(DataCadastros.sqlUpdate2.FieldByName
              (sFieldColuna).AsDateTime)).AsFloat +
              DataCadastros.sqlUpdate2.FieldByName(sFieldLinha).AsFloat;
            cdsNivel2Resultado.Post;
          end;
        5:
          begin // Semestral
            cdsNivel2Resultado.edit;
            cdsNivel2Resultado.FieldByName
              (RetornaSemestre(DataCadastros.sqlUpdate2.FieldByName(sFieldColuna)
              .AsDateTime)).AsFloat := cdsNivel2Resultado.FieldByName
              (RetornaSemestre(DataCadastros.sqlUpdate2.FieldByName(sFieldColuna)
              .AsDateTime)).AsFloat + DataCadastros.sqlUpdate2.FieldByName
              (sFieldLinha).AsFloat;
            cdsNivel2Resultado.Post;
          end;
        6:
          begin // Anual
            cdsNivel2Resultado.edit;
            cdsNivel2Resultado.FieldByName
              (RetornaAno(DataCadastros.sqlUpdate2.FieldByName(sFieldColuna)
              .AsDateTime)).AsFloat := cdsNivel2Resultado.FieldByName
              (RetornaAno(DataCadastros.sqlUpdate2.FieldByName(sFieldColuna)
              .AsDateTime)).AsFloat + DataCadastros.sqlUpdate2.FieldByName
              (sFieldLinha).AsFloat;
            cdsNivel2Resultado.Post;
          end;
      end;
    DataCadastros.sqlUpdate2.Next;
  end;
  cdsNivel2Resultado.EnableControls;
  // Fecha CdS
  DataCadastros.sqlUpdate2.Close;
  //dbgrd1.Refresh;
end;








procedure TFrmSie.GerarLinhasSemData(const sNomeColunaFixa, sFiltros: string);
begin
   GerarLinhasSemData(CdsResultado, sNomeColunaFixa,  sFiltros);
end;

procedure TFrmSie.GerarLinhasSemData(cds: TClientDataSet; const sNomeColunaFixa,  sFiltros: string);
var
  sColunas, sCampoFiltros: TStringList;
  i: Integer;
begin
  cds.DisableControls;
  if cds = CdsResultado then
    dbgrd1.Columns.Clear;

  if (sNomeColunaFixa <> '') then
  begin
    sColunas := TStringList.Create;
    sColunas.Delimiter := ';';
    sColunas.StrictDelimiter := True;
    sColunas.DelimitedText := sNomeColunaFixa;

    sCampoFiltros := TStringList.Create;
    sCampoFiltros.Delimiter := ';';
    sCampoFiltros.StrictDelimiter := True;
    sCampoFiltros.DelimitedText := sFiltros;

    DataCadastros.sqlUpdate.First;
    while (not DataCadastros.sqlUpdate.Eof) do
    begin
      cds.Insert;
      for i := 0 to sColunas.count - 1 do
      begin
        cds.FieldByName(sColunas[i]).AsVariant :=
          DataCadastros.sqlUpdate.FieldByName(sColunas[i]).AsVariant;
        if cds = CdsResultado then
        begin
          if sCampoFiltros.Count > i   then
            if sCampoFiltros[i] = 'T' then
               if not VarIsNull(DataCadastros.sqlUpdate.FieldByName(sColunas[i]).AsVariant) then
                 if dbgrd1.Columns[i].PickList.IndexOf( DataCadastros.sqlUpdate.FieldByName(sColunas[i]).AsVariant)< 0  then
                      dbgrd1.Columns[i].PickList.Add( DataCadastros.sqlUpdate.FieldByName(sColunas[i]).AsVariant);
        end;
      end;
      cds.Post;
      DataCadastros.sqlUpdate.Next;
    end;
  end;
  cds.EnableControls;
  // Fecha CdS
  DataCadastros.sqlUpdate.Close;
  //dbgrd1.Refresh;

end;

function TFrmSie.RetornaSemana(Data: TDate): String;
var mes, ano, semana :string  ;
begin
  Mes :=(FormatDateTime('mm', Data));
  Ano :=(FormatDateTime('yyyy', Data));
  semana := IntToStr(WeekOfTheMonth(Data)) ;
//  Result := DateToStr(Date() - (DayOfWeek(Date()) - 1)) + '-' +
//    DateToStr(Date() + (7 - DayOfWeek(Date())));
  result := semana +  'º semana ' + mes+ '/'+ ano;

end;



function TFrmSie.FieldExist(DataSet: TDataSet; FieldName: String): Boolean;
begin
  result := not (DataSet.FindField(FieldName)=nil);
end;



// Formatação
function TFrmSie.RetornaMes(const Data: TDate): string;
var mes : integer;
begin
  mes := StrToInt(FormatDatetime('mm', Data));
  iAno := StrToInt(FormatDateTime('yyyy', Data));
//  Result := FormatDateTime('mm', Data) + '/' + IntToStr(iAno);
  result :=   MesExtenso(mes)+ '/' + IntToStr(iAno);
end;

function TFrmSie.RetornaBimestre(Data: TDate): string;
begin
  iMes := StrToInt(FormatDateTime('mm', Data));
  iAno := StrToInt(FormatDateTime('yyyy', Data));
  case iMes of
    1,2:
      Result := '1º BIM /' + IntToStr(iAno);
    3,4:
      Result := '2º BIM /' + IntToStr(iAno);
    5,6:
      Result := '3º BIM /' + IntToStr(iAno);
    7,8:
      Result := '4º BIM /' + IntToStr(iAno);
    9,10:
      Result := '5º BIM /' + IntToStr(iAno);
    11,12:
      Result := '6º BIM /' + IntToStr(iAno);
  end;
end;

function TFrmSie.RetornaTrimestre(Data: TDate): string;
begin
  iMes := StrToInt(FormatDateTime('mm', Data));
  iAno := StrToInt(FormatDateTime('yyyy', Data));
  case iMes of
    1,2,3:
      Result := '1º TRI /' + IntToStr(iAno);
    4,5,6:
      Result := '2º TRI /' + IntToStr(iAno);
    7,8,9:
      Result := '3º TRI /' + IntToStr(iAno);
    10,11,12:
      Result := '4º TRI /' + IntToStr(iAno);
  end;
end;

function TFrmSie.RetornaSemestre(Data: TDate): string;
begin
  iMes := StrToInt(FormatDateTime('mm', Data));
  iAno := StrToInt(FormatDateTime('yyyy', Data));
  if iMes <= 6 then
     Result := '1º SEM /' + IntToStr(iAno)
  else if iMes > 6 then
     Result := '2º SEM /' + IntToStr(iAno);
end;

procedure TFrmSie.Rel_ABCClientes(const sEmpresa: string; dDataInicial, dDataFinal: TDate; sregime: smallint);
begin
  GerarConsulta
    ('SELECT CONTA,CODIGO,VALOR,' +
    ' case                                 '+
        'WHEN (perc_acumulado<=80) THEN ''A''               '+
        'WHEN (perc_acumulado<=95) THEN ''B''               '+
        'ELSE ''C''                                         '+
    'END CURVA,                                            ' +
    'CLIENTE,  RANq as rank, ACUMULADO,  perc_acumulado, mesesciclo, (VALOR/ CONTA) as Ticket_Medio, ShareMarketIndividual,INDICEINADIMPLENCIA,VALORPEND FROM SUMARIZACAO_CLIENTE (' +
      iif(rbEmpresa.Checked,   QuotedStr(sEmpresa), QuotedStr('')) + ',' +
      DateToSql(dDataInicial) + ',' +  DateToSql(dDataFinal) + ','+
       IntToStr(sregime) + ')' + ' ORDER BY RANQ DESC  ');
  GerarColunas('Cliente;Curva;Rank;Valor;Acumulado;perc_acumulado;mesesciclo;Ticket_Medio;ShareMarketIndividual;INDICEINADIMPLENCIA;VALORPEND',
  'Cliente;Curva;Rank;Valor total;Acumulado;Acumulado %;Meses de retenção;Ticket médio;Share Market %;Índice inadimplência %;Inadimplência', '',
   '50;7;7;20;20;20;10;20;20;20;20','120',
     'ftString;ftstring;ftInteger;ftFloat;ftFloat;ftFloat;ftInteger;ftFloat;ftFloat;ftFloat;ftFloat', odColunas);
  GerarLinhasSemData('Cliente;Curva;Rank;Valor;Acumulado;perc_acumulado;mesesciclo;Ticket_Medio;ShareMarketIndividual;INDICEINADIMPLENCIA;VALORPEND','T');

  TFloatField(CdsResultado.FieldByName('Valor')).DisplayFormat := '#,###,###,##0.0000';
  TFloatField(CdsResultado.FieldByName('ValorPend')).DisplayFormat := '#,###,###,##0.0000';
  TFloatField(CdsResultado.FieldByName('Acumulado')).DisplayFormat :='#,###,###,##0.0000';
  TFloatField(CdsResultado.FieldByName('perc_acumulado')).DisplayFormat:= '#,###,###,##0.0000' + QuotedStr('%');
  TFloatField(CdsResultado.FieldByName('ShareMarketIndividual')).DisplayFormat:= '#,###,###,##0.0000' + QuotedStr('%');
  TFloatField(CdsResultado.FieldByName('INDICEINADIMPLENCIA')).DisplayFormat:= '#,###,###,##0.00' + QuotedStr('%');
  TFloatField(CdsResultado.FieldByName('mesesciclo')).DisplayFormat := '#####';
  TFloatField(CdsResultado.FieldByName('Ticket_Medio')).DisplayFormat := '#,###,###,##0.0000';
  GerarFiltros('Cliente');

end;

procedure TFrmSie.Rel_ABCFornecedor(const sEmpresa: string; dDataInicial, dDataFinal: TDate);
begin
  GerarConsulta
    ('SELECT codigo,valor,fornecedor,'+
    ' case                                 '+
        'WHEN (perc_acumulado<=80) THEN ''A''               '+
        'WHEN (perc_acumulado<=95) THEN ''B''               '+
        'ELSE ''C''                                         '+
    'END CURVA,                                            ' +
    ' CONTA, RANQ as rank, ACUMULADO,  perc_acumulado, ShareMarketIndividual  '
    + ' FROM SUMARIZACAO_FORNECEDOR (' + iif(rbEmpresa.Checked,
    QuotedStr(sEmpresa), QuotedStr('')) + ',' + DateToSql(dDataInicial) + ',' +
    DateToSql(dDataFinal) + ')' + ' ORDER BY ranq DESC ');
  GerarColunas('Fornecedor;Curva;Rank;Valor;Acumulado;perc_acumulado;ShareMarketIndividual',
  'Fornecedor;Curva;Rank;Volume compras;Acumulado;Acumulado %;Share Market %',
   '',
    '50;7;7;20;20;20;20','120',
   'ftString;ftString;FtInteger;ftFloat;ftFloat;ftFloat;ftFloat', odColunas);
  GerarLinhasSemData('Fornecedor;Curva;Rank;Valor;Acumulado;perc_acumulado;ShareMarketIndividual','T');
  GerarFiltros('Fornecedor');
  TFloatField(CdsResultado.FieldByName('Valor')).DisplayFormat :=  '#,###,###,##0.0000';
  TFloatField(CdsResultado.FieldByName('Acumulado')).DisplayFormat := '#,###,###,##0.0000';
  TFloatField(CdsResultado.FieldByName('perc_acumulado')).DisplayFormat:= '#,###,###,##0.0000' + QuotedStr('%');
  TFloatField(CdsResultado.FieldByName('ShareMarketIndividual')).DisplayFormat:= '#,###,###,##0.0000' + QuotedStr('%');
end;


procedure TFrmSie.Rel_ABCProdutos_Unidade(const sEmpresa: string; dDataInicial, dDataFinal: TDate);
begin
   GerarConsulta (
  'SELECT CONTA,CODIGO,qtde AS Quantidade, Unidade,(codigo||''-''|| produto ) as Produto,  RANq as rank, ACUMULADO,  perc_acumulado,ShareMarketIndividual ' +
  ' FROM ' +
  iif(EdClienteCodigo.Text = '', ' SUMARIZACAO_PRODUTO_unidades_SC',  ' SUMARIZACAO_PRODUTO_unidades') +
  ' ('+
  iif(rbEmpresa.Checked,   QuotedStr(sEmpresa), QuotedStr('')) + ',' +
  DateToSql(dDataInicial) + ',' +  DateToSql(dDataFinal) + ')  '+
  iif (EdClienteCodigo.Text = '', '',  ' WHERE CLI_CODIGO = ' + QuotedStr(EdClienteCodigo.Text)  )+
             ' ORDER BY RANQ DESC  ');
    GerarColunas('Produto;Rank;Quantidade;Unidade;Acumulado;perc_acumulado;ShareMarketIndividual',
    'Produto;Rank;Quantidade;Unidade;Acumulado;Acumulado %;Share Market %', '', '50;7;20;7;20;20;20','120', 'ftString;ftInteger;ftFloat;ftString;ftFloat;ftFloat;ftFloat', odColunas);
    GerarLinhasSemData('Produto;Rank;Quantidade;Unidade;Acumulado;perc_acumulado;ShareMarketIndividual','T');
    GerarFiltros('Produto');
    TFloatField(CdsResultado.FieldByName('Quantidade')).DisplayFormat := '#,###,###,##0.00';
    TFloatField(CdsResultado.FieldByName('Acumulado')).DisplayFormat :='#,###,###,##0.00';
    TFloatField(CdsResultado.FieldByName('perc_acumulado')).DisplayFormat:= '#,###,###,##0.0000' + QuotedStr('%');
    TFloatField(CdsResultado.FieldByName('ShareMarketIndividual')).DisplayFormat:= '#,###,###,##0.0000' + QuotedStr('%');
end;

procedure TFrmSie.Rel_ABCProdutos_Venda(const sEmpresa: string; dDataInicial, dDataFinal: TDate);
begin
  GerarConsulta (
  'SELECT CONTA,CODIGO,VALOR,(codigo||''-''|| produto) as Produto,  RANq as rank, ACUMULADO,  perc_acumulado,ShareMarketIndividual  FROM SUMARIZACAO_PRODUTO_RECEITA ('+
  iif(rbEmpresa.Checked,   QuotedStr(sEmpresa), QuotedStr('')) + ',' +
  DateToSql(dDataInicial) + ',' +  DateToSql(dDataFinal) + ')' + ' ORDER BY RANQ DESC  ');
  GerarColunas('Produto;Rank;Valor;Acumulado;perc_acumulado;ShareMarketIndividual',
  'Produto;Rank;Valor;Acumulado;Acumulado %;Share Market %', '', '50;10;20;20;20;20','120',  'ftString;ftInteger;ftFloat;ftFloat;ftFloat;ftFloat', odColunas);
  GerarLinhasSemData('Produto;Rank;Valor;Acumulado;perc_acumulado;ShareMarketIndividual','T');
  GerarFiltros('Produto');
  TFloatField(CdsResultado.FieldByName('Valor')).DisplayFormat := '#,###,###,##0.0000';
  TFloatField(CdsResultado.FieldByName('Acumulado')).DisplayFormat :='#,###,###,##0.0000';
  TFloatField(CdsResultado.FieldByName('perc_acumulado')).DisplayFormat:= '#,###,###,##0.0000' + QuotedStr('%');
  TFloatField(CdsResultado.FieldByName('ShareMarketIndividual')).DisplayFormat:= '#,###,###,##0.0000' + QuotedStr('%');
end;

procedure TFrmSie.Rel_ABCProdutoValorCompras(const sEmpresa: string; dDataInicial, dDataFinal: TDate);
begin
  GerarConsulta (
  'SELECT CONTA,CODIGO,VALOR,qtde, unidade, codigo, produto, '+
  ' case                                 '+
      'WHEN (perc_acumulado<=80) THEN ''A''               '+
      'WHEN (perc_acumulado<=95) THEN ''B''               '+
      'ELSE ''C''                                         '+
  'END CURVA,'+
  ' RANq as rank, ACUMULADO,  perc_acumulado,ShareMarketIndividual, Saldo_Estoque  FROM SUMARIZACAO_COMPRA_PRODUTO_REC ('+
  iif(rbEmpresa.Checked,   QuotedStr(sEmpresa), QuotedStr('')) + ',' +
  DateToSql(dDataInicial) + ',' +  DateToSql(dDataFinal) + ')' + ' ORDER BY RANQ DESC  ');

  GerarColunas('codigo;Produto;curva;Rank;Valor;qtde;unidade;Acumulado;perc_acumulado;ShareMarketIndividual;Saldo_Estoque',
  'Código;Produto;Curva;Rank;Valor;Qtde;Unidade;Acumulado;Acumulado %;Share Market %;Estoque', '', '10;40;5;10;20;20;7;20;20;20;20','120',
  'ftString;ftString;ftString;ftInteger;ftFloat;ftFloat;ftString;ftFloat;ftFloat;ftFloat;ftFloat', odColunas);

  GerarLinhasSemData('codigo;Produto;curva;Rank;Valor;Qtde;Unidade;Acumulado;perc_acumulado;ShareMarketIndividual;Saldo_Estoque','N;T');
//  dbgrd1.OnDblClick := ChamaTelaDetalhes;
  GerarFiltros('produto');
//  sqlfiltro:= 'SELECT fr.FOR_CODIGO, fr.FOR_RAZAO, SUM (ENF_QTDE) ENF_QTDE ,SUM (ENF_QTDE * COALESCE (ENF_PRECO,0)),  '+
//        '  count(*) AS conta,  PR.prd_codigo                                                                   '+
//        'FROM ENF0001 EF                                                                                       '+
//        'INNER JOIN ENF_IT01 E1 ON (EF.ENF_NOTANUMBER = E1.ENF_IT_NOTANUMBER AND ef.FOR_CODIGO = e1.FOR_CODIGO) '+
//        ' INNER JOIN PRD0000 PR ON (PR.PRD_CODIGO = E1.PRD_CODIGO)                                              '+
//        ' INNER JOIN FOR0000 fr ON (fr.FOR_CODIGO = e1.FOR_CODIGO)                                              '+
//        ' WHERE pr.PRD_REFER = :id                                                                              '+
//        ' AND ENF_EMISSAO BETWEEN '+DateToSQL(dDataInicial) +' and '+ DateToSQL(dDataFinal)+
//        '  GROUP BY  fr.FOR_CODIGO, fr.FOR_RAZAO, PR.prd_codigo                                                 '+
//        '       ORDER BY 1 desc ';
//  idbusca := 'codigo';
  TFloatField(CdsResultado.FieldByName('Valor')).DisplayFormat := '#,###,###,##0.0000';
  TFloatField(CdsResultado.FieldByName('Qtde')).DisplayFormat := '#,###,###,##0.00';
  TFloatField(CdsResultado.FieldByName('Acumulado')).DisplayFormat :='#,###,###,##0.0000';
  TFloatField(CdsResultado.FieldByName('perc_acumulado')).DisplayFormat:= '#,###,###,##0.0000' + QuotedStr('%');
  TFloatField(CdsResultado.FieldByName('ShareMarketIndividual')).DisplayFormat:= '#,###,###,##0.0000' + QuotedStr('%');
  TFloatField(CdsResultado.FieldByName('Saldo_Estoque')).DisplayFormat :='#,###,###,##0.00';

   //nivel 2
   GerarConsulta (cdsNivel2Resultado,
                  ' SELECT pr.prd_Refer, pr.FOR_CODIGO, fr.FOR_RAZAO, '+
                  '  (SELECT FIRST 1  it.ENF_PRECO FROM ENF0001 EF   '+
                  ' INNER JOIN ENF_IT01 it ON (EF.ENF_NOTANUMBER = it.ENF_IT_NOTANUMBER AND ef.FOR_CODIGO = it.FOR_CODIGO) '+
                  ' where it.FOR_CODIGO = fr.FOR_CODIGO  AND pr.PRD_REFER = it.prd_refer    '+
                  '  ORDER BY ENF_EMISSAO DESC   ) as precoUnit,      '+
                  '  (SELECT FIRST 1 ENF_EMISSAO FROM ENF0001 EF '+
                  ' INNER JOIN ENF_IT01 it ON (EF.ENF_NOTANUMBER = it.ENF_IT_NOTANUMBER AND ef.FOR_CODIGO = it.FOR_CODIGO) '+
                  ' where it.FOR_CODIGO = fr.FOR_CODIGO  AND pr.PRD_REFER = it.prd_refer '+
                  '  ORDER BY ENF_EMISSAO DESC   ) as dataEmissao, '+
                  '   (SELECT FIRST 1 cast(cast(coalesce(it.ENF_CUSTO * it.enf_qtde,0) + coalesce(it.enf_vlsubst,0) +           '+
                  '          coalesce(it.enf_it_vlipi,0) + coalesce(it.enf_it_valfrete,0) + coalesce(it.enf_it_vlseguro,0) +    '+
                  '     coalesce(it.enf_it_vldesp_aces,0) as numeric(18,4)) / it.enf_qtde as numeric(18,4)) as custo_entrada    '+
                  '     FROM ENF0001 EF                                                                                         '+
                  '  INNER JOIN ENF_IT01 it ON (EF.ENF_NOTANUMBER = it.ENF_IT_NOTANUMBER AND ef.FOR_CODIGO = it.FOR_CODIGO)     '+
                  '  where it.FOR_CODIGO = fr.FOR_CODIGO  AND pr.PRD_REFER = it.prd_refer                                       '+
                  '   ORDER BY ENF_EMISSAO DESC   ) as CustoEntrada                                                              '+
                  ' FROM FOR_PROD pr               '+
                  ' JOIN FOR0000 fr ON (fr.FOR_CODIGO = pr.FOR_CODIGO) '+
                  ' order by prd_refer ');
              //    ' WHERE PRD_REFER = '605205'

  GerarColunas(cdsNivel2Resultado,'prd_Refer;FOR_CODIGO;FOR_RAZAO;precoUnit;dataEmissao;CustoEntrada','Referência;Código Forn;Fornecedor;Preço Unit.;Data;Custo Entrada','','20;20;50;20;20;20','120',
   'ftString;ftString;ftString;ftFloat;ftDate;ftFloat',odcolunas);
 //  TFloatField(CdsResultado.FieldByName('CustoEntrada')).DisplayFormat :='#,###,###,##0.00';
  GerarLinhasSemData(cdsNivel2Resultado,'prd_Refer;FOR_CODIGO;FOR_RAZAO;precoUnit;dataEmissao;CustoEntrada','T');
  cxGrid1DBTableView2.DataController.DataSource := dsNivel2Resultado;
  cxGrid1DBTableView2.DataController.DetailKeyFieldNames := 'prd_refer';
  cxGrid1DBTableView2.DataController.KeyFieldNames := 'prd_refer';
  cxGrid1DBTableView2.DataController.MasterKeyFieldNames := 'prd_refer';
  cxGrid1Level2.GridView := cxGrid1DBTableView2;
  cxGrid1DBTableView2.DataController.Refresh;
end;

procedure TFrmSie.Rel_ABCQtdeEstoque(const sEmpresa: string);
begin
 GerarConsulta (
 ' SELECT codigo,' +
  ' case                                 '+
      'WHEN (perc_acumulado<=80) THEN ''A''               '+
      'WHEN (perc_acumulado<=95) THEN ''B''               '+
      'ELSE ''C''                                         '+
  'END CURVA,  Unidade,(codigo||''-''|| produto ) as Produto,          ' +
  ' CODIGO,  RANq as rank, ACUMULADO,  perc_acumulado, ShareMarketIndividual , QTDE ' +
  ' FROM SUMARIZACAO_PRODUTO_SALDO_EST (' +
    iif(rbEmpresa.Checked,   QuotedStr(sEmpresa), QuotedStr('')) +')'+
  ' ORDER BY RANQ DESC  ');
  GerarColunas('Produto;Curva;Rank;QTDE;Unidade;Acumulado;perc_acumulado;ShareMarketIndividual',
      'Produto;Curva;Rank;Estoque;Unidade;Acumulado;Acumulado%;Share Market %', '',
       '50;10;10;30;7;20;20;20','120',
       'ftString;ftString;ftInteger;ftFloat;ftString;ftFloat;ftFloat;ftFloat', odColunas);
  GerarLinhasSemData('Produto;Curva;Rank;Qtde;Unidade;Acumulado;perc_acumulado;ShareMarketIndividual','T');
  //    GerarFiltros('Produto');
  TFloatField(CdsResultado.FieldByName('Qtde')).DisplayFormat := '#,###,###,##0.0000';
  TFloatField(CdsResultado.FieldByName('Acumulado')).DisplayFormat :='#,###,###,##0.00';
  TFloatField(CdsResultado.FieldByName('perc_acumulado')).DisplayFormat:= '#,###,###,##0.0000' + QuotedStr('%');
  TFloatField(CdsResultado.FieldByName('ShareMarketIndividual')).DisplayFormat:= '#,###,###,##0.0000' + QuotedStr('%');

end;

procedure TFrmSie.Rel_ABCQtdeEstoque_grupo(const sEmpresa: string);
begin
  GerarConsulta (
 ' SELECT codigo,' +
  ' case                                 '+
      'WHEN (perc_acumulado<=80) THEN ''A''               '+
      'WHEN (perc_acumulado<=95) THEN ''B''               '+
      'ELSE ''C''                                         '+
  'END CURVA,(codigo||''-''|| grupo ) as grupo,          ' +
  ' CODIGO, RANq as rank, ACUMULADO,  perc_acumulado, ShareMarketIndividual , QTDE ' +
  ' FROM SUMARIZACAO_GRUPO_SALDO_EST (' +
    iif(rbEmpresa.Checked,   QuotedStr(sEmpresa), QuotedStr('')) +')'+
  ' ORDER BY RANQ DESC  ');
  GerarColunas('grupo;Curva;Rank;QTDE;Acumulado;perc_acumulado;ShareMarketIndividual',
      'Grupo;Curva;Rank;Estoque;Acumulado;Acumulado%;Share Market %', '',
       '50;10;10;30;20;20;20','120',
       'ftString;ftString;ftInteger;ftFloat;ftFloat;ftFloat;ftFloat', odColunas);
  GerarLinhasSemData('Grupo;Curva;Rank;QTDE;Acumulado;perc_acumulado;ShareMarketIndividual','T');
  //    GerarFiltros('Produto');
  TFloatField(CdsResultado.FieldByName('QTDE')).DisplayFormat := '#,###,###,##0.0000';

  TFloatField(CdsResultado.FieldByName('Acumulado')).DisplayFormat :='#,###,###,##0.00';
  TFloatField(CdsResultado.FieldByName('perc_acumulado')).DisplayFormat:= '#,###,###,##0.0000' + QuotedStr('%');
  TFloatField(CdsResultado.FieldByName('ShareMarketIndividual')).DisplayFormat:= '#,###,###,##0.0000' + QuotedStr('%');


end;

procedure TFrmSie.Rel_ABCQtdeEstoque_tipo(const sEmpresa: string);

begin
   GerarConsulta (
 ' SELECT codigo,' +
  ' case                                 '+
      'WHEN (perc_acumulado<=80) THEN ''A''               '+
      'WHEN (perc_acumulado<=95) THEN ''B''               '+
      'ELSE ''C''                                         '+
  'END CURVA,(codigo||''-''|| tipo ) as tipo,          ' +
  ' CODIGO,  RANq as rank, ACUMULADO,  perc_acumulado, ShareMarketIndividual , QTDE ' +
  ' FROM SUMARIZACAO_TIPO_SALDO_EST (' +
    iif(rbEmpresa.Checked,   QuotedStr(sEmpresa), QuotedStr('')) +')'+
  ' ORDER BY RANQ DESC  ');
  GerarColunas('tipo;Curva;Rank;QTDE;Acumulado;perc_acumulado;ShareMarketIndividual',
      'Tipo;Curva;Rank;Estoque;Acumulado;Acumulado%;Share Market %', '',
       '50;10;10;30;20;20;20','120',
       'ftString;ftString;ftInteger;ftFloat;ftFloat;ftFloat;ftFloat', odColunas);
  GerarLinhasSemData('Tipo;Curva;Rank;QTDE;Acumulado;perc_acumulado;ShareMarketIndividual','T');
  //    GerarFiltros('Produto');

  TFloatField(CdsResultado.FieldByName('Acumulado')).DisplayFormat :='#,###,###,##0.00';
  TFloatField(CdsResultado.FieldByName('perc_acumulado')).DisplayFormat:= '#,###,###,##0.0000' + QuotedStr('%');
  TFloatField(CdsResultado.FieldByName('ShareMarketIndividual')).DisplayFormat:= '#,###,###,##0.0000' + QuotedStr('%');
  TFloatField(CdsResultado.FieldByName('QTDE')).DisplayFormat :='#,###,###,##0.00';
end;

procedure TFrmSie.Rel_ABCValorEstoqueCLiquido(const sEmpresa: string);
begin
 GerarConsulta (
 ' SELECT codigo,' +
  ' case                                 '+
      'WHEN (perc_acumulado<=80) THEN ''A''               '+
      'WHEN (perc_acumulado<=95) THEN ''B''               '+
      'ELSE ''C''                                         '+
  'END CURVA,  Unidade,(codigo||''-''|| produto ) as Produto,          ' +
  ' CODIGO, VALOR , RANq as rank, ACUMULADO,  perc_acumulado, ShareMarketIndividual , QTDE, CUSTOLIQUIDO ' +
  ' FROM SUMARIZACAO_VALOR_EST_CUSTOLIQ (' +
    iif(rbEmpresa.Checked,   QuotedStr(sEmpresa), QuotedStr('')) +')'+
  ' ORDER BY RANQ DESC  ');
  GerarColunas('Produto;Curva;Rank;Valor;Unidade;Acumulado;perc_acumulado;ShareMarketIndividual;QTDE;CUSTOLIQUIDO',
      'Produto;Curva;Rank;Valor;Unidade;Acumulado;Acumulado%;Share Market %;Estoque;Custo Liquido', '',
       '50;10;10;30;7;20;20;20;20;20','120',
       'ftString;ftString;ftInteger;ftFloat;ftString;ftFloat;ftFloat;ftFloat;ftFloat;ftFloat', odColunas);
  GerarLinhasSemData('Produto;Curva;Rank;Valor;Unidade;Acumulado;perc_acumulado;ShareMarketIndividual;QTDE;CUSTOLIQUIDO','T');
  //    GerarFiltros('Produto');
  TFloatField(CdsResultado.FieldByName('Valor')).DisplayFormat := '#,###,###,##0.0000';
  TFloatField(CdsResultado.FieldByName('CUSTOLIQUIDO')).DisplayFormat := '#,###,###,##0.0000';
  TFloatField(CdsResultado.FieldByName('Acumulado')).DisplayFormat :='#,###,###,##0.00';
  TFloatField(CdsResultado.FieldByName('perc_acumulado')).DisplayFormat:= '#,###,###,##0.0000' + QuotedStr('%');
  TFloatField(CdsResultado.FieldByName('ShareMarketIndividual')).DisplayFormat:= '#,###,###,##0.0000' + QuotedStr('%');
  TFloatField(CdsResultado.FieldByName('QTDE')).DisplayFormat :='#,###,###,##0.00';

end;

procedure TFrmSie.Rel_ABCValorEstoqueCLiquido_grupo(const sEmpresa: string);
begin
  GerarConsulta (
 ' SELECT codigo,' +
  ' case                                 '+
      'WHEN (perc_acumulado<=80) THEN ''A''               '+
      'WHEN (perc_acumulado<=95) THEN ''B''               '+
      'ELSE ''C''                                         '+
  'END CURVA,(codigo||''-''|| grupo ) as grupo,          ' +
  ' CODIGO, VALOR , RANq as rank, ACUMULADO,  perc_acumulado, ShareMarketIndividual , QTDE ' +
  ' FROM SUMARIZACAO_VALOR_CLIQ_GRUPO (' +
    iif(rbEmpresa.Checked,   QuotedStr(sEmpresa), QuotedStr('')) +')'+
  ' ORDER BY RANQ DESC  ');
  GerarColunas('grupo;Curva;Rank;Valor;Acumulado;perc_acumulado;ShareMarketIndividual;QTDE',
      'Grupo;Curva;Rank;Valor;Acumulado;Acumulado%;Share Market %;Estoque', '',
       '50;10;10;30;20;20;20;20','120',
       'ftString;ftString;ftInteger;ftFloat;ftFloat;ftFloat;ftFloat;ftFloat', odColunas);
  GerarLinhasSemData('Grupo;Curva;Rank;Valor;Acumulado;perc_acumulado;ShareMarketIndividual;QTDE','T');
  //    GerarFiltros('Produto');
  TFloatField(CdsResultado.FieldByName('Valor')).DisplayFormat := '#,###,###,##0.0000';

  TFloatField(CdsResultado.FieldByName('Acumulado')).DisplayFormat :='#,###,###,##0.00';
  TFloatField(CdsResultado.FieldByName('perc_acumulado')).DisplayFormat:= '#,###,###,##0.0000' + QuotedStr('%');
  TFloatField(CdsResultado.FieldByName('ShareMarketIndividual')).DisplayFormat:= '#,###,###,##0.0000' + QuotedStr('%');
  TFloatField(CdsResultado.FieldByName('QTDE')).DisplayFormat :='#,###,###,##0.00';

end;

procedure TFrmSie.Rel_ABCValorEstoqueCLiquido_tipo(const sEmpresa: string);
begin
  GerarConsulta (
 ' SELECT codigo,' +
  ' case                                 '+
      'WHEN (perc_acumulado<=80) THEN ''A''               '+
      'WHEN (perc_acumulado<=95) THEN ''B''               '+
      'ELSE ''C''                                         '+
  'END CURVA,(codigo||''-''|| tipo ) as tipo,          ' +
  ' CODIGO, VALOR , RANq as rank, ACUMULADO,  perc_acumulado, ShareMarketIndividual , QTDE ' +
  ' FROM SUMARIZACAO_VALOR_CUSTOLIQ_TIPO (' +
    iif(rbEmpresa.Checked,   QuotedStr(sEmpresa), QuotedStr('')) +')'+
  ' ORDER BY RANQ DESC  ');
  GerarColunas('tipo;Curva;Rank;Valor;Acumulado;perc_acumulado;ShareMarketIndividual;QTDE',
      'Tipo;Curva;Rank;Valor;Acumulado;Acumulado%;Share Market %;Estoque', '',
       '50;10;10;30;20;20;20;20','120',
       'ftString;ftString;ftInteger;ftFloat;ftFloat;ftFloat;ftFloat;ftFloat', odColunas);
  GerarLinhasSemData('Tipo;Curva;Rank;Valor;Acumulado;perc_acumulado;ShareMarketIndividual;QTDE','T');
  //    GerarFiltros('Produto');
  TFloatField(CdsResultado.FieldByName('Valor')).DisplayFormat := '#,###,###,##0.0000';

  TFloatField(CdsResultado.FieldByName('Acumulado')).DisplayFormat :='#,###,###,##0.00';
  TFloatField(CdsResultado.FieldByName('perc_acumulado')).DisplayFormat:= '#,###,###,##0.0000' + QuotedStr('%');
  TFloatField(CdsResultado.FieldByName('ShareMarketIndividual')).DisplayFormat:= '#,###,###,##0.0000' + QuotedStr('%');
  TFloatField(CdsResultado.FieldByName('QTDE')).DisplayFormat :='#,###,###,##0.00';
end;

procedure TFrmSie.Rel_ABCValorEstoqueCMedio(const sEmpresa: string);
begin
 GerarConsulta (
 ' SELECT codigo,' +
  ' case                                 '+
      'WHEN (perc_acumulado<=80) THEN ''A''               '+
      'WHEN (perc_acumulado<=95) THEN ''B''               '+
      'ELSE ''C''                                         '+
  'END CURVA,  Unidade,(codigo||''-''|| produto ) as Produto,          ' +
  ' CODIGO, VALOR , RANq as rank, ACUMULADO,  perc_acumulado, ShareMarketIndividual , QTDE, CUSTOMEDIO ' +
  ' FROM SUMARIZACAO_VALOR_EST_CMEDIO (' +
    iif(rbEmpresa.Checked,   QuotedStr(sEmpresa), QuotedStr('')) +')'+
  ' ORDER BY RANQ DESC  ');
  GerarColunas('Produto;Curva;Rank;Valor;Unidade;Acumulado;perc_acumulado;ShareMarketIndividual;QTDE;CustoMedio',
      'Produto;Curva;Rank;Valor;Unidade;Acumulado;Acumulado%;Share Market %;Estoque;Custo Médio', '',
       '50;10;10;30;7;20;20;20;20;20','120',
       'ftString;ftString;ftInteger;ftFloat;ftString;ftFloat;ftFloat;ftFloat;ftFloat;ftFloat', odColunas);
  GerarLinhasSemData('Produto;Curva;Rank;Valor;Unidade;Acumulado;perc_acumulado;ShareMarketIndividual;QTDE;CustoMedio','T');
  //    GerarFiltros('Produto');
  TFloatField(CdsResultado.FieldByName('Valor')).DisplayFormat := '#,###,###,##0.0000';
  TFloatField(CdsResultado.FieldByName('CustoMedio')).DisplayFormat := '#,###,###,##0.0000';
  TFloatField(CdsResultado.FieldByName('Acumulado')).DisplayFormat :='#,###,###,##0.00';
  TFloatField(CdsResultado.FieldByName('perc_acumulado')).DisplayFormat:= '#,###,###,##0.0000' + QuotedStr('%');
  TFloatField(CdsResultado.FieldByName('ShareMarketIndividual')).DisplayFormat:= '#,###,###,##0.0000' + QuotedStr('%');
  TFloatField(CdsResultado.FieldByName('QTDE')).DisplayFormat :='#,###,###,##0.00';

end;

procedure TFrmSie.Rel_ABCValorEstoqueCMedio_grupo(const sEmpresa: string);
begin
 GerarConsulta (
 ' SELECT codigo,' +
  ' case                                 '+
      'WHEN (perc_acumulado<=80) THEN ''A''               '+
      'WHEN (perc_acumulado<=95) THEN ''B''               '+
      'ELSE ''C''                                         '+
  'END CURVA,(codigo||''-''|| grupo ) as grupo,          ' +
  ' CODIGO, VALOR , RANq as rank, ACUMULADO,  perc_acumulado, ShareMarketIndividual , QTDE ' +
  ' FROM SUMARIZACAO_VALOR_CMEDIO_GRUPO (' +
    iif(rbEmpresa.Checked,   QuotedStr(sEmpresa), QuotedStr('')) +')'+
  ' ORDER BY RANQ DESC  ');
  GerarColunas('grupo;Curva;Rank;Valor;Acumulado;perc_acumulado;ShareMarketIndividual;QTDE',
      'Grupo;Curva;Rank;Valor;Acumulado;Acumulado%;Share Market %;Estoque', '',
       '50;10;10;30;20;20;20;20','120',
       'ftString;ftString;ftInteger;ftFloat;ftFloat;ftFloat;ftFloat;ftFloat', odColunas);
  GerarLinhasSemData('Grupo;Curva;Rank;Valor;Acumulado;perc_acumulado;ShareMarketIndividual;QTDE','T');
  //    GerarFiltros('Produto');
  TFloatField(CdsResultado.FieldByName('Valor')).DisplayFormat := '#,###,###,##0.0000';

  TFloatField(CdsResultado.FieldByName('Acumulado')).DisplayFormat :='#,###,###,##0.00';
  TFloatField(CdsResultado.FieldByName('perc_acumulado')).DisplayFormat:= '#,###,###,##0.0000' + QuotedStr('%');
  TFloatField(CdsResultado.FieldByName('ShareMarketIndividual')).DisplayFormat:= '#,###,###,##0.0000' + QuotedStr('%');
  TFloatField(CdsResultado.FieldByName('QTDE')).DisplayFormat :='#,###,###,##0.00';

end;

procedure TFrmSie.Rel_ABCValorEstoqueCMedio_tipo(const sEmpresa: string);
begin
  GerarConsulta (
 ' SELECT codigo,' +
  ' case                                 '+
      'WHEN (perc_acumulado<=80) THEN ''A''               '+
      'WHEN (perc_acumulado<=95) THEN ''B''               '+
      'ELSE ''C''                                         '+
  'END CURVA,(codigo||''-''|| tipo ) as tipo,          ' +
  ' CODIGO, VALOR , RANq as rank, ACUMULADO,  perc_acumulado, ShareMarketIndividual , QTDE ' +
  ' FROM SUMARIZACAO_VALOR_CMEDIO_TIPO (' +
    iif(rbEmpresa.Checked,   QuotedStr(sEmpresa), QuotedStr('')) +')'+
  ' ORDER BY RANQ DESC  ');
  GerarColunas('tipo;Curva;Rank;Valor;Acumulado;perc_acumulado;ShareMarketIndividual;QTDE',
      'Tipo;Curva;Rank;Valor;Acumulado;Acumulado%;Share Market %;Estoque', '',
       '50;10;10;30;20;20;20;20','120',
       'ftString;ftString;ftInteger;ftFloat;ftFloat;ftFloat;ftFloat;ftFloat', odColunas);
  GerarLinhasSemData('Tipo;Curva;Rank;Valor;Acumulado;perc_acumulado;ShareMarketIndividual;QTDE','T');
  //    GerarFiltros('Produto');
  TFloatField(CdsResultado.FieldByName('Valor')).DisplayFormat := '#,###,###,##0.0000';

  TFloatField(CdsResultado.FieldByName('Acumulado')).DisplayFormat :='#,###,###,##0.00';
  TFloatField(CdsResultado.FieldByName('perc_acumulado')).DisplayFormat:= '#,###,###,##0.0000' + QuotedStr('%');
  TFloatField(CdsResultado.FieldByName('ShareMarketIndividual')).DisplayFormat:= '#,###,###,##0.0000' + QuotedStr('%');
  TFloatField(CdsResultado.FieldByName('QTDE')).DisplayFormat :='#,###,###,##0.00';
end;

procedure TFrmSie.Rel_ABCVendedor(const sEmpresa: string; dDataInicial, dDataFinal: TDate; sregime: smallint);
begin
  GerarConsulta (
  ' SELECT codigo,valor,' +
  ' case                                 '+
      'WHEN (perc_acumulado<=80) THEN ''A''               '+
      'WHEN (perc_acumulado<=95) THEN ''B''               '+
      'ELSE ''C''                                         '+
  'END CURVA,                                            ' +
  'VENDEDOR_NOME , VENDEDOR_RAZAO, CONTA, RANQ as rank, ACUMULADO,  perc_acumulado, ShareMarketIndividual,(VALOR/ CONTA) as Ticket_Medio FROM SUMARIZACAO_VENDEDOR ('+
  iif(rbEmpresa.Checked,   QuotedStr(sEmpresa), QuotedStr('')) + ',' +
  DateToSql(dDataInicial) + ',' +  DateToSql(dDataFinal) + ','+
  IntToStr(sregime) + ')' +
  ' ORDER BY RANQ DESC  ');
  GerarColunas('VENDEDOR_NOME;Curva;Rank;Valor;Acumulado;perc_acumulado;ShareMarketIndividual',
  'Vendedor;Curva;Rank;Volume Vendas;Acumulado;Acumulado%;Share Market %','',
   '50;7;7;20;20;20;30','120',  'ftString;ftstring;ftInteger;ftFloat;ftFloat;ftFloat;ftFloat', odColunas);
  GerarLinhasSemData('VENDEDOR_NOME;Curva;Rank;Valor;Acumulado;perc_acumulado;ShareMarketIndividual','T');
  GerarFiltros('Vendedor');
  TFloatField(CdsResultado.FieldByName('Valor')).DisplayFormat := '#,###,###,##0.0000';
  TFloatField(CdsResultado.FieldByName('Acumulado')).DisplayFormat :='#,###,###,##0.0000';
  TFloatField(CdsResultado.FieldByName('perc_acumulado')).DisplayFormat:= '#,###,###,##0.0000' + QuotedStr('%');
  TFloatField(CdsResultado.FieldByName('ShareMarketIndividual')).DisplayFormat:= '#,###,###,##0.0000' + QuotedStr('%');
end;

procedure TFrmSie.Rel_ClientesInativo(const sEmpresa: string; dDataInicial, dDataFinal: TDate; sregime : smallint);
begin
  GerarConsulta (
      'SELECT CONTA,CODIGO,VALOR,CLIENTE,  RANq as rank,  '+
      'case                                               '+
      'WHEN (perc_acumulado<=80) THEN ''A''               '+
      'WHEN (perc_acumulado<=95) THEN ''B''               '+
      'ELSE ''C''                                         '+
      'END CURVA ,                                        '+
      '(SELECT  MAX( NF_EMISSAO) FROM NF0001 T1           '+
      '   WHERE T1.NF_VENDA_FATURADA = ''S''              '+
      iif(rbEmpresa.Checked,' AND T1.EMP_CODIGO = ' + QuotedStr(sEmpresa), '')                        +
      '    AND s.CODIGO = T1.CLI_CODIGO  ) DATA_ULT,                                                 '+
      '(SELECT  MIN( NF_TOT_NOTA) FROM NF0001 T1                                                     '+
      '   WHERE T1.NF_VENDA_FATURADA = ''S''                                                         '+
      iif(rbEmpresa.Checked,' AND T1.EMP_CODIGO = ' + QuotedStr(sEmpresa), '')                        +
      '    AND s.CODIGO = T1.CLI_CODIGO  ) VALOR_MIN,                                                '+
      '(SELECT  MAX( NF_TOT_NOTA) FROM NF0001 T1                                                     '+
      '   WHERE T1.NF_VENDA_FATURADA = ''S''                                                         '+
      iif(rbEmpresa.Checked,' AND T1.EMP_CODIGO = ' + QuotedStr(sEmpresa), '')                        +
      '    AND s.CODIGO = T1.CLI_CODIGO  ) VALOR_MAX ,                                               '+
      ' (SELECT RP.rep_nome FROM CLI0000 cl INNER JOIN REP0000 RP on (CL.REP_CODIGO = RP.REP_CODIGO) '+
      '  WHERE CL.CLI_CODIGO = S.CODIGO),                                                            '+
      ' (VALOR/ CONTA) Ticket_Medio,                                                                 '+
      ' mesesCiclo,                                                                                  '+
      ' datediff(day,(SELECT  MAX( NF_EMISSAO) FROM NF0001 T1                                      '+
      '   WHERE T1.NF_VENDA_FATURADA = ''S''              '+
      iif(rbEmpresa.Checked,' AND T1.EMP_CODIGO = ' + QuotedStr(sEmpresa), '')                        +
      '    AND s.CODIGO = T1.CLI_CODIGO ), CURRENT_DATE) as DIAS_SEMCOMPRA                            '+
      ' FROM SUMARIZACAO_CLIENTE ('+
      iif(rbEmpresa.Checked,QuotedStr(sEmpresa), QuotedStr('')) + ',''01-01-1900'',CURRENT_DATE,'+ IntToStr(sregime)+') AS s  '+
      'WHERE                                                                                         '+
      ' NOT EXISTS                                                                                   '+
      '  (SELECT 1 FROM NF0001 T1                                                                    '+
      '   WHERE T1.NF_VENDA_FATURADA = ''S''                                                         '+
      iif(rbEmpresa.Checked,' AND T1.EMP_CODIGO = ' + QuotedStr(sEmpresa), '')                        +
      '    AND s.CODIGO = T1.CLI_CODIGO                                                              '+
      '    AND NF_EMISSAO  BETWEEN ' + DateToSql(dDataInicial) + ' AND ' + DateToSql(dDataFinal)  +')  '+
      ' order by ranq DESC '  );
  GerarColunas('cliente;curva;rank;valor;ticket_medio;mesesciclo;DIAS_SEMCOMPRA;conta;data_ult;valor_min;valor_max;rep_nome',
               'Cliente;Curva;Rank;Volume compras;Ticket Médio;Meses rentenção;Dias sem compra;No compras;Última compra;Compra min;Compra max;Vendedor',
               '', '50;7;7;10;10;10;10;10;20;10;10;20', '90',
               'ftstring;ftstring;ftinteger;ftfloat;ftfloat;ftinteger;ftinteger;ftinteger;ftDate;ftfloat;ftfloat;ftstring', odColunas);
  GerarLinhasSemData('cliente;curva;rank;valor;ticket_medio;mesesciclo;DIAS_SEMCOMPRA;conta;data_ult;valor_min;valor_max;rep_nome',
                   'T;T;F;F;F;F;F;F;F;F;F;T');
  GerarFiltros('Cliente;Curva;Vendedor');
  TFloatField(CdsResultado.FieldByName('valor')).DisplayFormat := '#,###,###,##0.00';
  TFloatField(CdsResultado.FieldByName('ticket_medio')).DisplayFormat := '#,###,###,##0.0000';
  TFloatField(CdsResultado.FieldByName('valor_min')).DisplayFormat := '#,###,###,##0.0000';
  TFloatField(CdsResultado.FieldByName('valor_max')).DisplayFormat := '#,###,###,##0.0000';


end;


procedure TFrmSie.Rel_ComprasFornecedor(const sEmpresa: string; dDataInicial, dDataFinal: Tdate);
begin
  GerarConsulta
    ('SELECT ENF_EMISSAO as EMISSAO,                           ' +
    ' FOR_RAZAO as FORNECEDOR,                                 ' +
    'SUM(ENF_TOT_NOTA) as  ENF_TOTAL                           ' +
    'FROM ENF0001 EF                                           ' +
    'INNER JOIN FOR0000 fN ON (FN.FOR_CODIGO = EF.FOR_CODIGO)  ' +
    'WHERE  COALESCE(EF.ENF_CANCELADA,''N'')  <> ''S''         ' +
    '  AND  ENF_INDUSTRIALIZACAO  = ''N''                      ' +
    ' and ENF_EMISSAO  BETWEEN ' + DateToSql(dDataInicial) + ' AND ' +  DateToSql(dDataFinal) + ' ' +
     iif(rbEmpresa.Checked,' AND EF.EMP_CODIGO = ' + QuotedStr(sEmpresa), '') +
    'GROUP BY ENF_EMISSAO, FOR_RAZAO '          +
    'ORDER BY 3 desc');

  GerarColunas('FORNECEDOR', 'EMISSAO', '250', '90', 'ftString', odColunas);
  GerarLinhas(True, 'FORNECEDOR', 'FORNECEDOR', 'EMISSAO', 'ENF_TOTAL');
  GerarGraficos('FORNECEDOR');
end;

procedure TFrmSie.Rel_Compras_Periodica(const sEmpresa: string; dDataInicial, dDataFinal: Tdate);
begin
  GerarConsulta
    ('SELECT ENF_EMISSAO as EMISSAO,                              ' +
    'SUM(ENF_TOT_NOTA) as  ENF_TOTAL                              ' +
    'FROM ENF0001 EF                                              ' +
    'WHERE COALESCE(EF.ENF_CANCELADA,''N'')  <> ''S''             ' +
    '  AND ENF_INDUSTRIALIZACAO  = ''N''                          ' +
    '  and ENF_EMISSAO  BETWEEN ' + DateToSql(dDataInicial) + ' AND ' +
    DateToSql(dDataFinal) + ' ' + iif(rbEmpresa.Checked,
    ' AND EF.EMP_CODIGO = ' + QuotedStr(sEmpresa), '') +
    'GROUP BY ENF_EMISSAO ');

  GerarColunas('', 'EMISSAO', '250', '90', '', odColunas);
  GerarLinhas(True, '', '', 'EMISSAO', 'ENF_TOTAL');
  GerarGraficos('');

end;

procedure TFrmSie.Rel_Inadimplencias(const sEmpresa: string; dDataInicial, dDataFinal: Tdate);
begin
  GerarConsulta(
  ' select clasdata,dias,valorpend,titulos,vendas,indice from SUM_INADIMPLENCIA ('+QuotedStr(sempresa)+ ','+ DateToSQL(dDataInicial) +','+ DateToSQL(dDataFinal) +
  ','+ IntToStr(rgVisualizao.ItemIndex+2) +')  ');
  GerarColunas('clasdata;dias;valorpend;titulos;vendas;indice',
  'Data;Dias;Inadimplência;Títulos;Vol Vendas;Índice', '',
  '20;10;40;10;40;10','120',
  'ftString;ftinteger;ftFloat;ftInteger;ftFloat;ftFloat', odColunas);
  GerarLinhasSemData('clasdata;dias;valorpend;titulos;vendas;indice','T');

  TFloatField(CdsResultado.FieldByName('valorpend')).DisplayFormat := '#,###,###,##0.0000';
  TFloatField(CdsResultado.FieldByName('vendas')).DisplayFormat :='#,###,###,##0.0000';
  TFloatField(CdsResultado.FieldByName('indice')).DisplayFormat:= '#,###,###,##0.0000' + QuotedStr('%');
  CdsResultado.First;
  chtGrafico.Series[0].Clear;
  while not CdsResultado.Eof do
  begin
    chtGrafico.Series[0].add(CdsResultado.FieldByName('indice').AsFloat, CdsResultado.FieldByName('clasdata').AsString);
    chtGrafico.Series[0].Marks.Visible := True;
    CdsResultado.Next
  end;
end;

procedure TFrmSie.Rel_Metrica_Cliente(const sEmpresa: string; dDataInicial, dDataFinal: TDate; sregime: smallint);
begin
  GerarConsulta
    ('SELECT CONTA,CODIGO,VALOR,CLIENTE,  RANq as rank, case '+
      'WHEN (perc_acumulado<=80) THEN ''A''               '+
      'WHEN (perc_acumulado<=95) THEN ''B''               '+
      'ELSE ''C''                                         '+
      'END CURVA, ACUMULADO,  perc_acumulado, mesesciclo, (VALOR/ CONTA) as Ticket_Medio, ShareMarketIndividual, '+
      '(SELECT  MAX( NF_EMISSAO) FROM NF0001 T1           '+
      '   WHERE T1.NF_VENDA_FATURADA = ''S''              '+
      iif(rbEmpresa.Checked,' AND T1.EMP_CODIGO = ' + QuotedStr(sEmpresa), '')                        +
      '    AND s.CODIGO = T1.CLI_CODIGO  ) DATA_ULT,                                                 '+
      '(SELECT  MIN( NF_TOT_NOTA) FROM NF0001 T1                                                     '+
      '   WHERE T1.NF_VENDA_FATURADA = ''S''                                                         '+
      iif(rbEmpresa.Checked,' AND T1.EMP_CODIGO = ' + QuotedStr(sEmpresa), '')                        +
      '    AND s.CODIGO = T1.CLI_CODIGO and NF_TOT_NOTA > 0 ) VALOR_MIN,                             '+
      '(SELECT  MAX( NF_TOT_NOTA) FROM NF0001 T1                                                     '+
      '   WHERE T1.NF_VENDA_FATURADA = ''S''                                                         '+
      iif(rbEmpresa.Checked,' AND T1.EMP_CODIGO = ' + QuotedStr(sEmpresa), '')                        +
      '    AND s.CODIGO = T1.CLI_CODIGO  ) VALOR_MAX ,                                               '+
     ' (SELECT RP.rep_nome FROM CLI0000 cl INNER JOIN REP0000 RP on (CL.REP_CODIGO = RP.REP_CODIGO)  '+
      '  WHERE CL.CLI_CODIGO = S.CODIGO) as rep_nome,                                                 '+
      ' datediff(day,(SELECT  MAX( NF_EMISSAO) FROM NF0001 T1                                      '+
      '   WHERE T1.NF_VENDA_FATURADA = ''S''              '+
      iif(rbEmpresa.Checked,' AND T1.EMP_CODIGO = ' + QuotedStr(sEmpresa), '')                        +
      '    AND s.CODIGO = T1.CLI_CODIGO ), CURRENT_DATE) as DIAS_SEMCOMPRA                            '+
      'FROM SUMARIZACAO_CLIENTE (' +
      iif(rbEmpresa.Checked,   QuotedStr(sEmpresa), QuotedStr('')) + ',' +
      DateToSql(dDataInicial) + ',' +  DateToSql(dDataFinal) + ','+
       IntToStr(sregime) + ') as s' + ' ORDER BY RANQ DESC  ');
  GerarColunas('Cliente;Curva;Rank;Valor;Ticket_Medio;mesesciclo;DIAS_SEMCOMPRA;conta;ShareMarketIndividual;data_ult;valor_min;valor_max;rep_nome',
  'Cliente;Curva;Rank;Volume vendas;Ticket médio;Meses de retenção;Dias sem compra;No compras;Share Market %;Última compra;Compra min;Compra max;Vendedor', '',
  '50;7;7;20;20;10;10;10;10;10;10;10;40','120',
    'ftString;ftstring;ftinteger;ftFloat;ftFloat;ftInteger;ftInteger;ftInteger;ftFloat;ftDate;ftFloat;ftFloat;ftstring', odColunas);
  GerarLinhasSemData('Cliente;Curva;Rank;Valor;Ticket_Medio;mesesciclo;DIAS_SEMCOMPRA;conta;ShareMarketIndividual;data_ult;valor_min;valor_max;rep_nome','T');

  TFloatField(CdsResultado.FieldByName('Valor')).DisplayFormat := '#,###,###,##0.0000';
  TFloatField(CdsResultado.FieldByName('valor_max')).DisplayFormat :='#,###,###,##0.0000';
  TFloatField(CdsResultado.FieldByName('valor_min')).DisplayFormat:= '#,###,###,##0.0000';
  TFloatField(CdsResultado.FieldByName('ShareMarketIndividual')).DisplayFormat:= '#,###,###,##0.0000' + QuotedStr('%');
  TFloatField(CdsResultado.FieldByName('mesesciclo')).DisplayFormat := '#####';
  TFloatField(CdsResultado.FieldByName('Ticket_Medio')).DisplayFormat := '#,###,###,##0.0000';
  GerarFiltros('Cliente');

end;

procedure TFrmSie.Rel_Metrica_Vendedores(const sEmpresa: string; dDataInicial, dDataFinal: TDate; sregime: smallint);
begin
  GerarConsulta (
  ' SELECT codigo,valor,VENDEDOR_NOME , '+
  ' case                                 '+
      'WHEN (perc_acumulado<=80) THEN ''A''               '+
      'WHEN (perc_acumulado<=95) THEN ''B''               '+
      'ELSE ''C''                                         '+
  'END CURVA,                                             ' +

  'VENDEDOR_RAZAO, CONTA, RANQ as rank, ACUMULADO,  perc_acumulado, ShareMarketIndividual,(VALOR/ CONTA) as Ticket_Medio FROM SUMARIZACAO_VENDEDOR ('+
  iif(rbEmpresa.Checked,   QuotedStr(sEmpresa), QuotedStr('')) + ',' +
  DateToSql(dDataInicial) + ',' +  DateToSql(dDataFinal) + ','+
  IntToStr(sregime) + ') as s' +
  ' ORDER BY RANQ DESC  ');
  GerarColunas('VENDEDOR_NOME;Curva;Rank;Valor;Ticket_Medio;ShareMarketIndividual',
  'Vendedor;Curva;Rank;Volume Vendas;Ticket Médio;Share Market %','', '50;7;7;20;20;10','120',
   'ftString;ftstring;ftinteger;ftFloat;ftFloat;ftFloat', odColunas);
  GerarLinhasSemData('VENDEDOR_NOME;Curva;Rank;Valor;Ticket_Medio;ShareMarketIndividual','T');
  GerarFiltros('Vendedor');
  TFloatField(CdsResultado.FieldByName('Valor')).DisplayFormat := '#,###,###,##0.0000';
  TFloatField(CdsResultado.FieldByName('Ticket_Medio')).DisplayFormat :='#,###,###,##0.0000';
//  TFloatField(CdsResultado.FieldByName('perc_acumulado')).DisplayFormat:= '#,###,###,##0.0000' + QuotedStr('%');
  TFloatField(CdsResultado.FieldByName('ShareMarketIndividual')).DisplayFormat:= '#,###,###,##0.0000' + QuotedStr('%');
end;

procedure TFrmSie.Rel_rankpagadores(const sempresa: string);
begin
   GerarConsulta ('SELECT avg(datediff(day, fpc_vencto,fpc_pagto)) media, max(fpc_vencto) vencto ,max(fpc_pagto) pagto,  '+
     ' ( SELECT sum(ft.FAT_VLFAT) FROM FAT0000 ft WHERE CLI_CODIGO = cl.CLI_CODIGO AND FAT_EXCLUSAO = ''N'' ) vendas,    '+
     'SUM(pc.FPC_VLPARC)/( SELECT sum(ft.FAT_VLFAT) FROM FAT0000 ft WHERE CLI_CODIGO = cl.CLI_CODIGO AND FAT_EXCLUSAO = ''N'' ) *100 as indice, '+
     'sum(pc.FPC_VLPARC) atrasos,  cl.CLI_CODIGO, cl.CLI_RAZAO '+
    ' from FAT0000 ft                   '+
    ' INNER JOIN CLI0000 cl ON (cl.CLI_CODIGO = ft.CLI_CODIGO) '+
    ' INNER JOIN FAT_PC01 pc ON (ft.FAT_CODIGO = pc.FAT_CODIGO) '+
    ' WHERE fpc_STATUS = ''Liquidada''                          '+
    ' AND fpc_pagto > fpc_vencto                                 '+
    iif(sempresa='999','', ' and ft.emp_codigo = '+QuotedStr(dbinicio.Empresa.EMP_CODIGO))+
    ' GROUP BY cl.CLI_CODIGO, cl.CLI_RAZAO, cl.CLI_EMAIL  '+
    ' ORDER BY 1                                      ') ;
   GerarColunas('media;vencto;pagto;atrasos;vendas;indice;CLI_CODIGO;CLI_RAZAO',
   'Média dias atrasados;Ult vencto;Ult pagto;Vl. atrasados;Total vendas;Índice;Código;Cliente','',
   '20;12;12;20;20;10;10;50','120',
   'ftinteger;ftDate;ftDate;ftFloat;ftFloat;ftFloat;ftstring;ftstring', odColunas);
  GerarLinhasSemData('media;vencto;pagto;atrasos;vendas;indice;CLI_CODIGO;CLI_RAZAO','T');
   TFloatField(CdsResultado.FieldByName('atrasos')).DisplayFormat := '#,###,###,##0.0000';
   TFloatField(CdsResultado.FieldByName('vendas')).DisplayFormat := '#,###,###,##0.0000';
  TFloatField(CdsResultado.FieldByName('indice')).DisplayFormat:= '#,###,###,##0.0000' + QuotedStr('%');
end;

procedure TFrmSie.Rel_VendasOrigem(const sempresa: string; const dDataInicial, dDataFinal: Tdate);
begin
  if rbEntradaPedido.Checked then
  begin
     GerarConsulta(
    ' SELECT COALESCE(co.cori_descricao,''SEM ORIGEM'') cori_descricao , PED_DTENTRADA,  SUM(PED_VLTOTAL_BRUTO) AS PED_VLTOTAL_LIQ   '+
    ' FROM PED0000 pe                           '+
    ' JOIN OPV0000 op ON (op.OPV_CODIGO = pe.OPV_CODIGO AND op.OPV_VENDA = ''S'' )'   +
    ' LEFT JOIN cliente_origem co ON (co.Cori_codigo = pe.cori_codigo) '+
    ' WHERE PED_SITUACAO NOT IN ( ''A'',''C'') '+
     iif(rbEmpresa.Checked, ' AND pe.EMP_CODIGO = ' +  QuotedStr(sEmpresa), '')+
    ' AND PED_DTENTRADA BETWEEN  ' + DateToSql(dDataInicial) + ' AND ' + DateToSql(dDataFinal)+
    ' GROUP BY 1,2');
      GerarColunas('Origem', 'PED_DTENTRADA', '100', '90', 'ftString',    odColunas);
      GerarLinhas(True, 'Origem', 'cori_descricao', 'PED_DTENTRADA', 'PED_VLTOTAL_LIQ');
  end
  else if rbCompetencia.Checked then
  begin
     GerarConsulta(
    ' SELECT COALESCE(co.cori_descricao,''SEM ORIGEM'') cori_descricao , NF_EMISSAO,  SUM(NF_TOT_NOTA) AS NF_TOT_NOTA   '+
    ' FROM PED0000 pe                           '+
    ' JOIN OPV0000 op ON (op.OPV_CODIGO = pe.OPV_CODIGO AND op.OPV_VENDA = ''S'' )'   +
    ' JOIN NF0001 NF ON (NF.PED_CODIGO  = PE.PED_CODIGO AND NF.EMP_CODIGO = PE.EMP_CODIGO ) '+
    ' LEFT JOIN cliente_origem co ON (co.Cori_codigo = pe.cori_codigo) '+
    ' WHERE PED_SITUACAO NOT IN ( ''A'',''C'') '+
     iif(rbEmpresa.Checked, ' AND NF.EMP_CODIGO = ' +  QuotedStr(sEmpresa), '')+
    ' AND NF.NF_CANCELADA <> ''S'' ' +
    ' AND NF.NF_EMISSAO BETWEEN  ' + DateToSql(dDataInicial) + ' AND ' + DateToSql(dDataFinal)+
    ' GROUP BY 1,2');
      GerarColunas('Origem', 'NF_EMISSAO', '100', '90', 'ftString',    odColunas);
      GerarLinhas(True, 'Origem', 'cori_descricao', 'NF_EMISSAO', 'NF_TOT_NOTA');


  end;
  GerarGraficos('Origem');
end;


procedure TFrmSie.Rel_Vendas_CentroCusto(const sEmpresa: string; dDataInicial, dDataFinal: TDate);
begin
  GerarConsulta(' SELECT pe.pcx_codigo, COALESCE(px.PCX_DESCRI,''NÃO DEFINIDO'') PCX_DESCRI , PED_DTENTRADA, SUM(PED_VLTOTAL_BRUTO) as PED_VLTOTAL_LIQ FROM PED0000 PE '+
                ' LEFT JOIN PCX0000 px ON (px.PCX_CODIGO = pe.PCX_CODIGO) '+
                ' WHERE PED_DTENTRADA BETWEEN '+DateToSql(dDataInicial) + ' AND ' + DateToSql(dDataFinal) +
                 iif(rbEmpresa.Checked, ' AND PE.EMP_CODIGO = ' + QuotedStr(sEmpresa), '')  +
                 ' AND PED_SITUACAO NOT IN ('+QuotedStr('A')+','+QuotedStr('C')+')'+
                'GROUP BY 3,1,2 order by 3 '     );
  GerarColunas('PCX_DESCRI','PED_DTENTRADA','90','90','ftString',odcolunas);
  CdsResultado.FieldByName('PCX_DESCRI').DisplayLabel := 'Centro de Custo';
  GerarLinhas(true,'PCX_DESCRI','PCX_DESCRI','PED_DTENTRADA','PED_VLTOTAL_LIQ');

  GerarGraficos('PCX_DESCRI');
end;

procedure TFrmSie.Rel_Vendas_Grade(const sEmpresa: string; dDataInicial, dDataFinal: TDate);
begin
  GerarConsulta('SELECT                                         '+
    'T7.NF_EMISSAO,                                             ' +
    'SUM (T1.NF_QTDE * COALESCE(t1.NF_PRECO,0)) AS NF_TOT_NOTA ,' +
    'T2.PRD_REFER ||'' - '' ||t2.PRD_DESCRI as PRODUTOS,        ' +
    'COALESCE(trim(GR.PRG_DESCRICAO),''SEM GRADE'')  as GRADE   ' +
    'FROM ' + 'NF_IT01 T1                                       ' +
    'JOIN NF0001 T7 ON (T7.NF_NOTANUMBER = T1.NF_IT_NOTANUMER)   ' +
    'JOIN PRD0000 T2 ON (T2.PRD_REFER = T1.PRD_REFER) ' +
    'LEFT JOIN PRD_GRADE GR  ON (T1.PRG_REGISTRO = GR.PRG_REGISTRO) ' +
    'WHERE T7.NF_VENDA_FATURADA = ''S'' AND  T7.NF_EMISSAO BETWEEN ' +
    DateToSql(dDataInicial) + ' AND ' + DateToSql(dDataFinal) + ' ' +
    iif(rbEmpresa.Checked, ' AND T7.EMP_CODIGO = ' +
    QuotedStr(sEmpresa), '') + ' AND T7.NF_CANCELADA <> ''S'' ' +
    'GROUP BY T2.PRD_REFER , t2.PRD_DESCRI, T7.NF_EMISSAO, COALESCE(trim(GR.PRG_DESCRICAO),''SEM GRADE'')   '
    + 'ORDER BY 1 ');
  GerarColunas('PRODUTOS;GRADE', 'NF_EMISSAO', '250;50', '90',
    'ftString;ftString', odColunas);
  GerarLinhas(True, 'PRODUTOS;GRADE', 'PRODUTOS;GRADE', 'NF_EMISSAO',
    'NF_TOT_NOTA');
  GerarGraficos('PRODUTOS;GRADE');

end;

procedure TFrmSie.Rel_Vendas_Grupo(const sEmpresa: string; dDataInicial, dDataFinal: TDate);
begin
  GerarConsulta('SELECT ' + 'T7.NF_EMISSAO,' +
    'SUM (T1.NF_QTDE * COALESCE(t1.NF_PRECO,0)) AS NF_TOT_NOTA ,' +
    'T3.PGR_DESCRI ' + 'FROM ' + 'NF_IT01 T1 ' +
    'JOIN NF0001 T7 ON (T7.NF_NOTANUMBER = T1.NF_IT_NOTANUMER) ' +
    'JOIN PRD0000 T2 ON (T2.PRD_REFER = T1.PRD_REFER) ' +
    'LEFT JOIN PRD_GRUPO T3 ON (T3.PGR_CODIGO = T2.PGR_CODIGO) ' +
    'WHERE T7.NF_VENDA_FATURADA = ''S'' AND T7.NF_EMISSAO BETWEEN ' +
    DateToSql(dDataInicial) + ' AND ' + DateToSql(dDataFinal) + ' ' +
    iif(rbEmpresa.Checked, ' AND T7.EMP_CODIGO = ' +
    QuotedStr(sEmpresa), '') + ' AND T7.NF_CANCELADA <> ''S'' ' +
    'GROUP BY T3.PGR_DESCRI, T7.NF_EMISSAO  ' + 'ORDER BY 1 ');
  GerarColunas('Grupo', 'NF_EMISSAO', '150', '90', 'ftString',
    odColunas);
  GerarLinhas(True, 'Grupo', 'PGR_DESCRI', 'NF_EMISSAO', 'NF_TOT_NOTA');
  GerarGraficos('Grupo');

end;

procedure TFrmSie.Rel_Vendas_Linhas(const sEmpresa: string; dDataInicial, dDataFinal: TDate);
begin
  GerarConsulta('SELECT ' + 'T7.NF_EMISSAO,' +
    'SUM (T1.NF_QTDE * COALESCE(t1.NF_PRECO,0)) AS NF_TOT_NOTA ,' +
    'T3.LIN_DESCRI ' + 'FROM ' + 'NF_IT01 T1 ' +
    'JOIN NF0001 T7 ON (T7.NF_NOTANUMBER = T1.NF_IT_NOTANUMER) ' +
    'JOIN PRD0000 T2 ON (T2.PRD_REFER = T1.PRD_REFER) ' +
    'LEFT JOIN PRD_LINHA T3 ON (T3.LIN_CODIGO = T2.LIN_CODIGO) ' +
    'WHERE T7.NF_VENDA_FATURADA = ''S'' AND  T7.NF_EMISSAO BETWEEN ' +
    DateToSql(dDataInicial) + ' AND ' + DateToSql(dDataFinal) + ' ' +
    iif(rbEmpresa.Checked, ' AND T7.EMP_CODIGO = ' +
    QuotedStr(sEmpresa), '') + ' AND T7.NF_CANCELADA <> ''S'' ' +
    'GROUP BY T3.LIN_DESCRI, T7.NF_EMISSAO  ' + 'ORDER BY 1 ');
  GerarColunas('Linha', 'NF_EMISSAO', '150', '90', 'ftString',
    odColunas);
  GerarLinhas(True, 'Linha', 'LIN_DESCRI', 'NF_EMISSAO', 'NF_TOT_NOTA');
  GerarGraficos('Linha');
end;

procedure TFrmSie.Rel_Vendas_Periodicas(const sEmpresa: string; dDataInicial, dDataFinal: TDate; sregime: smallint);
begin
  case sregime of
    0: // REGIME DE COMPETÊNCIA
      begin
        GerarConsulta('SELECT T1.NF_EMISSAO, ' +
          '       sum (T1.NF_TOT_NOTA-COALESCE(NF_VL_DESCTO_FAT,0) ) AS  NF_TOT_NOTA ' +
          '       FROM  NF0001 T1 ' +
          'WHERE  T1.NF_EMISSAO BETWEEN '
          + DateToSql(dDataInicial) + ' AND ' + DateToSql(dDataFinal) +
          ' ' + iif(rbEmpresa.Checked, ' AND T1.EMP_CODIGO = ' +
          QuotedStr(sEmpresa), '') +
          ' AND NF_CANCELADA = ''N''                ' +
          ' AND EXISTS (SELECT 1 FROM FAT0000 fat WHERE NF_NOTANUMBER = fat.FAT_CODIGO AND T1.EMP_CODIGO = fat.EMP_CODIGO) '+
          'GROUP BY T1.NF_EMISSAO ' + 'ORDER BY 1');
        GerarColunas('', 'NF_EMISSAO', '200', '90', '', odColunas);
        GerarLinhas(False, '', '', 'NF_EMISSAO', 'NF_TOT_NOTA');
      end;

    1: // CAIXA
      begin
        GerarConsulta
          (' SELECT SUM(CASE WHEN (FPC_VLPAGO = 0) OR (FPC_VLPAGO IS NULL) THEN FPC_VLPARC ELSE FPC_VLPAGO END) as VALOR,  ' +
          ' FPC_VENCTO                                             ' +
          ' FROM FAT_PC01                                          ' +
          ' WHERE FPC_EXCLUSAO <> ''S'' ' + iif(rbEmpresa.Checked,
          ' AND EMP_CODIGO = ' + QuotedStr(sEmpresa), '') +
          ' GROUP BY FPC_VENCTO                                     ' +
          ' HAVING FPC_VENCTO  BETWEEN ' + DateToSql(dDataInicial) +
          ' AND ' + DateToSql(dDataFinal) + ' ');

        GerarColunas('', 'FPC_VENCTO', '200', '90', '', odColunas);
        GerarLinhas(False, '', '', 'FPC_VENCTO', 'VALOR');
      end;
    2: // REALIZAVEL
      begin
        GerarConsulta
          (' SELECT SUM(FPC_VLPAGO) as VALOR,                       ' +
          ' FPC_PAGTO                                              ' +
          ' FROM FAT_PC01                                          ' +
          ' WHERE FPC_EXCLUSAO <> ''S'' ' + iif(rbEmpresa.Checked,
          ' AND EMP_CODIGO = ' + QuotedStr(sEmpresa), '') +
          ' GROUP BY FPC_PAGTO ' + ' HAVING FPC_PAGTO  BETWEEN ' +
          DateToSql(dDataInicial) + ' AND ' +
          DateToSql(dDataFinal) + ' ');

        GerarColunas('', 'FPC_PAGTO', '200', '90', '', odColunas);
        GerarLinhas(False, '', '', 'FPC_PAGTO', 'VALOR');
      end;

  end;
  GerarGraficos('');

end;

procedure TFrmSie.Rel_Vendas_porCidade(const sEmpresa: string; dDataInicial, dDataFinal: TDate; sregime: smallint);
begin
  case sregime of
    0:
      BEGIN
        GerarConsulta('SELECT T1.NF_EMISSAO,  (T1.NF_TOT_NOTA- COALESCE(NF_VL_DESCTO_FAT,0)) AS NF_TOT_NOTA, '
          + 'T3.CID_CIDADE||''/''||T2.CLI_UF  as CLI_CIDADE ' + 'FROM  '
          + 'NF0001 T1 ' +
          'JOIN CLI0000 T2 ON (T2.CLI_CODIGO = T1.CLI_CODIGO) ' +
          'join CID0000 t3 on (t3.CID_CODIGO = t2.CID_CODIGO) ' +
          'WHERE  T1.NF_VENDA_FATURADA = ''S'' AND  T1.NF_EMISSAO BETWEEN '
          + DateToSql(dDataInicial) + ' AND ' + DateToSql(dDataFinal) +
          ' ' + iif(rbEmpresa.Checked, ' AND T1.EMP_CODIGO = ' +
          QuotedStr(sEmpresa), '') + ' AND NF_CANCELADA <> ''S''   ' +
          'ORDER BY 1');
        GerarColunas('Cidade', 'NF_EMISSAO', '200', '90', 'ftString',
          odColunas);
        GerarLinhas(True, 'Cidade', 'CLI_CIDADE', 'NF_EMISSAO',
          'NF_TOT_NOTA');

      END;
    1:
      begin
        GerarConsulta
          ('SELECT SUM(CASE WHEN (FPC_VLPAGO = 0) OR (FPC_VLPAGO IS NULL) THEN FPC_VLPARC ELSE FPC_VLPAGO END) VALOR , FPC_VENCTO, T3.CID_CIDADE||''/''||T2.CLI_UF  as CLI_CIDADE  '
          + 'FROM FAT_PC01 F1                                                                                                 '
          + 'JOIN CLI0000 T2 ON (T2.CLI_CODIGO = F1.CLI_CODIGO)                                                               '
          + 'join CID0000 t3 on (t3.CID_CODIGO = t2.CID_CODIGO)                                                               '
          + ' WHERE FPC_EXCLUSAO <> ''S'' ' + iif(rbEmpresa.Checked,
          ' AND F1.EMP_CODIGO = ' + QuotedStr(sEmpresa), '') +
          'GROUP BY FPC_VENCTO, T3.CID_CIDADE||''/''||T2.CLI_UF                                                               '
          + 'HAVING FPC_VENCTO BETWEEN  ' + DateToSql(dDataInicial) +
          ' AND ' + DateToSql(dDataFinal) + ' ' +
          'ORDER BY 2                                                                                                       ');
        GerarColunas('Cidade', 'FPC_VENCTO', '200', '90', 'ftString',
          odColunas);
        GerarLinhas(True, 'Cidade', 'CLI_CIDADE', 'FPC_VENCTO',
          'VALOR');

      end;
    2:
      begin
        GerarConsulta
          ('SELECT SUM(FPC_VLPAGO) VALOR , FPC_PAGTO, T3.CID_CIDADE||''/''||T2.CLI_UF  as CLI_CIDADE  '
          + 'FROM FAT_PC01 F1                                                                                                 '
          + 'JOIN CLI0000 T2 ON (T2.CLI_CODIGO = F1.CLI_CODIGO)                                                               '
          + 'join CID0000 t3 on (t3.CID_CODIGO = t2.CID_CODIGO)                                                               '
          + ' WHERE FPC_EXCLUSAO <> ''S'' ' + iif(rbEmpresa.Checked,
          ' AND F1.EMP_CODIGO = ' + QuotedStr(sEmpresa), '') +
          'GROUP BY FPC_PAGTO, T3.CID_CIDADE||''/''||T2.CLI_UF                                                               '
          + 'HAVING FPC_PAGTO BETWEEN  ' + DateToSql(dDataInicial) +
          ' AND ' + DateToSql(dDataFinal) + ' ' +
          'ORDER BY 2                                                                                                       '

          );
        GerarColunas('Cidade', 'FPC_PAGTO', '200', '90', 'ftString',
          odColunas);
        GerarLinhas(True, 'Cidade', 'CLI_CIDADE', 'FPC_PAGTO', 'VALOR');

      end;

  end;
  GerarGraficos('Cidade');
end;

procedure TFrmSie.Rel_Vendas_porCliente(const sEmpresa: string; dDataInicial, dDataFinal: TDate; sregime: smallint);
begin
  case sregime of
    0:
      begin
        GerarConsulta('SELECT T1.NF_EMISSAO,' +
          'SUM(T1.NF_TOT_NOTA-COALESCE(NF_VL_DESCTO_FAT,0) ) AS NF_TOT_NOTA, T2.CLI_RAZAO, rp.REP_NOME AS REP_RAZAO ' +
          'FROM NF0001 T1 ' +
          'JOIN CLI0000 T2 ON (T2.CLI_CODIGO = T1.CLI_CODIGO) ' +
          ' LEFT JOIN REP0000 rp ON (rp.REP_CODIGO = T1.REP_CODIGO) ' +
          'left join REG0000 t3 on (t3.REG_CODIGO = t2.REG_CODIGO) ' +
          'WHERE T1.NF_VENDA_FATURADA = ''S''  ' +
          iif(rbEmpresa.Checked, ' AND T1.EMP_CODIGO = ' + QuotedStr(sEmpresa), '') +
          iif(edVendedorCodigo.Text <> '', ' AND T1.REP_CODIGO = ' + QuotedStr(edVendedorCodigo.Text), '') +
          ' AND NF_CANCELADA <> ''S'' ' +
          ' GROUP BY NF_EMISSAO, T2.CLI_RAZAO, rp.REP_NOME  ' +
          ' HAVING T1.NF_EMISSAO BETWEEN ' + DateToSql(dDataInicial) +
          ' AND ' + DateToSql(dDataFinal) + ' ' + ' ORDER BY 1');
        GerarColunas('Cliente;Vendedor', 'NF_EMISSAO', '250;250', '90', 'ftString;ftString', odColunas);
        GerarLinhas(True, 'Cliente;Vendedor', 'CLI_RAZAO;REP_RAZAO', 'NF_EMISSAO', 'NF_TOT_NOTA');
      end;
    1:
      begin
        GerarConsulta
          ('SELECT SUM(CASE WHEN (FPC_VLPAGO = 0) OR (FPC_VLPAGO IS NULL) THEN FPC_VLPARC ELSE FPC_VLPAGO END) VALOR , ' +
          ' FPC_VENCTO,  T2.CLI_RAZAO, rp.REP_NOME AS REP_RAZAO           '
          + 'FROM FAT_PC01 F1                                                                         '
          + 'JOIN CLI0000 T2 ON (T2.CLI_CODIGO = F1.CLI_CODIGO)                                       ' +
          ' LEFT JOIN REP0000 rp ON (rp.REP_CODIGO = F1.REP_CODIGO) ' +
          ' WHERE FPC_EXCLUSAO <> ''S'' ' +
          iif(rbEmpresa.Checked, ' AND F1.EMP_CODIGO = ' + QuotedStr(sEmpresa), '') +
          iif(edVendedorCodigo.Text <> '', ' AND T1.REP_CODIGO = ' + QuotedStr(edVendedorCodigo.Text), '') +
          'GROUP BY FPC_VENCTO, T2.CLI_RAZAO, rp.REP_NOME                                                       '
          + 'HAVING FPC_VENCTO BETWEEN ' + DateToSql(dDataInicial) +
          ' AND ' + DateToSql(dDataFinal) + ' ');
        GerarColunas('Cliente;Vendedor', 'FPC_VENCTO', '250;250', '90', 'ftString;ftString', odColunas);
        GerarLinhas(True, 'Cliente;Vendedor', 'CLI_RAZAO;REP_RAZAO', 'FPC_VENCTO', 'VALOR');
      end;
    2:
      begin
        GerarConsulta
          ('SELECT SUM(FPC_VLPAGO) VALOR , FPC_PAGTO,  T2.CLI_RAZAO, rp.REP_NOME AS REP_RAZAO           '
          + 'FROM FAT_PC01 F1                                                                         '
          + 'JOIN CLI0000 T2 ON (T2.CLI_CODIGO = F1.CLI_CODIGO)                                       '
          + ' LEFT JOIN REP0000 rp ON (rp.REP_CODIGO = F1.REP_CODIGO) '
          + ' WHERE FPC_EXCLUSAO <> ''S'' ' +
          iif(rbEmpresa.Checked, ' AND F1.EMP_CODIGO = ' + QuotedStr(sEmpresa), '') +
          iif(edVendedorCodigo.Text <> '', ' AND T1.REP_CODIGO = ' + QuotedStr(edVendedorCodigo.Text), '') +
          'GROUP BY FPC_PAGTO, T2.CLI_RAZAO, rp.REP_NOME                                                     '
          + 'HAVING FPC_PAGTO BETWEEN ' + DateToSql(dDataInicial) +
          ' AND ' + DateToSql(dDataFinal) + ' ');
        GerarColunas('Cliente;Vendedor', 'FPC_PAGTO', '250;250', '90', 'ftString;ftString',
          odColunas);
        GerarLinhas(True, 'Cliente;Vendedor', 'CLI_RAZAO;REP_RAZAO', 'FPC_PAGTO', 'VALOR');
      end;

  end;

  GerarGraficos('Cliente');
end;

procedure TFrmSie.Rel_Vendas_porEstado(const sEmpresa: string; dDataInicial, dDataFinal: TDate; sregime: smallint);
begin
  case sregime of
    0:
      begin
        GerarConsulta('SELECT T1.NF_EMISSAO, (T1.NF_TOT_NOTA-COALESCE(NF_VL_DESCTO_FAT,0)) AS NF_TOT_NOTA, '
          + 'T2.CLI_UF  FROM   NF0001 T1 ' +
          'JOIN CLI0000 T2 ON (T2.CLI_CODIGO = T1.CLI_CODIGO) ' +
          'WHERE T1.NF_VENDA_FATURADA = ''S'' AND T1.NF_EMISSAO BETWEEN '
          + DateToSql(dDataInicial) + ' AND ' + DateToSql(dDataFinal) +
          ' ' + iif(rbEmpresa.Checked, ' AND T1.EMP_CODIGO = ' +
          QuotedStr(sEmpresa), '') + ' AND NF_CANCELADA <> ''S''   ' +
          'ORDER BY 1');
        GerarColunas('Estado', 'NF_EMISSAO', '50', '90', 'ftString',
          odColunas);
        GerarLinhas(True, 'Estado', 'CLI_UF', 'NF_EMISSAO',
          'NF_TOT_NOTA');

      end;
    1:
      begin
        GerarConsulta
          ('SELECT SUM(CASE WHEN (FPC_VLPAGO = 0) OR (FPC_VLPAGO IS NULL) THEN FPC_VLPARC ELSE FPC_VLPAGO END) VALOR , FPC_VENCTO, T2.CLI_UF  '
          + 'FROM FAT_PC01 F1                                                            '
          + 'JOIN CLI0000 T2 ON (T2.CLI_CODIGO = F1.CLI_CODIGO)                          '
          + ' WHERE FPC_EXCLUSAO <> ''S'' ' + iif(rbEmpresa.Checked,
          ' AND F1.EMP_CODIGO = ' + QuotedStr(sEmpresa), '') +
          'GROUP BY FPC_VENCTO, CLI_UF                                                 '
          + 'HAVING FPC_VENCTO BETWEEN  ' + DateToSql(dDataInicial) +
          ' AND ' + DateToSql(dDataFinal) + ' ');
        GerarColunas('Estado', 'FPC_VENCTO', '50', '90', 'ftString',
          odColunas);
        GerarLinhas(True, 'Estado', 'CLI_UF', 'FPC_VENCTO', 'VALOR');

      end;
    2:
      begin
        GerarConsulta
          ('SELECT SUM(FPC_VLPAGO) VALOR , FPC_PAGTO, T2.CLI_UF                         '
          + 'FROM FAT_PC01 F1                                                            '
          + 'JOIN CLI0000 T2 ON (T2.CLI_CODIGO = F1.CLI_CODIGO)                          '
          + ' WHERE FPC_EXCLUSAO <> ''S'' ' + iif(rbEmpresa.Checked,
          ' AND F1.EMP_CODIGO = ' + QuotedStr(sEmpresa), '') +
          'GROUP BY FPC_PAGTO, CLI_UF                                                  '
          + 'HAVING FPC_PAGTO  BETWEEN ' + DateToSql(dDataInicial) +
          ' AND ' + DateToSql(dDataFinal));
        GerarColunas('Estado', 'FPC_PAGTO', '50', '90', 'ftString',
          odColunas);
        GerarLinhas(True, 'Estado', 'CLI_UF', 'FPC_PAGTO', 'VALOR');
      end;
    3:
     begin
      GerarConsulta(
      ' SELECT cl.CLI_UF, PED_DTENTRADA,  SUM(PED_VLTOTAL_BRUTO) AS PED_VLTOTAL_LIQ   '+
      ' FROM PED0000 pe                           '+
      ' JOIN OPV0000 op ON (op.OPV_CODIGO = pe.OPV_CODIGO AND op.OPV_VENDA = ''S'' )'   +
      ' LEFT JOIN CLI0000 cl ON (cl.CLI_CODIGO = pe.CLI_CODIGO) '+
      ' WHERE PED_SITUACAO NOT IN ( ''A'',''C'') '+
       iif(rbEmpresa.Checked, ' AND pe.EMP_CODIGO = ' + QuotedStr(sEmpresa), '') +
      ' AND PED_DTENTRADA BETWEEN  ' + DateToSql(dDataInicial) + ' AND ' + DateToSql(dDataFinal)+
      ' GROUP BY 1,2');
        GerarColunas('Estado', 'PED_DTENTRADA', '50', '90', 'ftString',    odColunas);
        GerarLinhas(True, 'Estado', 'CLI_UF', 'PED_DTENTRADA', 'PED_VLTOTAL_LIQ');
  end;

  end;
  GerarGraficos('Estado');
end;

procedure TFrmSie.Rel_Vendas_porRegiao(const sEmpresa: string; dDataInicial, dDataFinal: TDate; sregime: smallint);
begin
  case sregime of
    0:
      begin
        GerarConsulta('SELECT T1.NF_EMISSAO,  (T1.NF_TOT_NOTA-COALESCE(NF_VL_DESCTO_FAT,0)) AS NF_TOT_NOTA ,' +
          'COALESCE(T3.REG_DESCRI,''OUTROS'') AS REG_DESCRI ' +
          'FROM NF0001 T1 ' +
          'JOIN CLI0000 T2 ON (T2.CLI_CODIGO = T1.CLI_CODIGO) ' +
          'left join REG0000 t3 on (t3.REG_CODIGO = t2.REG_CODIGO) ' +
          'WHERE T1.NF_VENDA_FATURADA = ''S'' AND  T1.NF_EMISSAO BETWEEN '
          + DateToSql(dDataInicial) + ' AND ' + DateToSql(dDataFinal) +
          ' ' + iif(rbEmpresa.Checked, ' AND T1.EMP_CODIGO = ' +
          QuotedStr(sEmpresa), '') + ' AND t1.NF_CANCELADA <> ''S'' ' +
          'ORDER BY 1');
        GerarColunas('Região', 'NF_EMISSAO', '150', '90', 'ftString',
          odColunas);
        GerarLinhas(True, 'Região', 'REG_DESCRI', 'NF_EMISSAO',
          'NF_TOT_NOTA');
      end;
    1:
      begin
        GerarConsulta
          ('SELECT SUM(CASE WHEN (FPC_VLPAGO = 0) OR (FPC_VLPAGO IS NULL) THEN FPC_VLPARC ELSE FPC_VLPAGO END) VALOR , FPC_VENCTO, COALESCE(T3.REG_DESCRI,''OUTROS'') AS REG_DESCRI   '
          + 'FROM FAT_PC01 F1                                                                 '
          + 'JOIN CLI0000 T2 ON (T2.CLI_CODIGO = F1.CLI_CODIGO)                               '
          + 'left join REG0000 t3 on (t3.REG_CODIGO = t2.REG_CODIGO)                          '
          + 'WHERE FPC_EXCLUSAO <> ''S'' ' + iif(rbEmpresa.Checked,
          ' AND F1.EMP_CODIGO = ' + QuotedStr(sEmpresa), '') +
          'GROUP BY FPC_VENCTO, COALESCE(T3.REG_DESCRI,''OUTROS'')                          '
          + 'HAVING FPC_VENCTO BETWEEN   ' + DateToSql(dDataInicial) +
          ' AND ' + DateToSql(dDataFinal));
        GerarColunas('Região', 'FPC_VENCTO', '150', '90', 'ftString',
          odColunas);
        GerarLinhas(True, 'Região', 'REG_DESCRI', 'FPC_VENCTO',
          'VALOR');

      end;
    2:
      begin
        GerarConsulta
          ('SELECT SUM(FPC_VLPAGO) VALOR , FPC_PAGTO, COALESCE(T3.REG_DESCRI,''OUTROS'') AS REG_DESCRI     '
          + 'FROM FAT_PC01 F1                                                                 '
          + 'JOIN CLI0000 T2 ON (T2.CLI_CODIGO = F1.CLI_CODIGO)                               '
          + 'left join REG0000 t3 on (t3.REG_CODIGO = t2.REG_CODIGO)                          '
          + ' WHERE FPC_EXCLUSAO <> ''S'' ' + iif(rbEmpresa.Checked,
          ' AND F1.EMP_CODIGO = ' + QuotedStr(sEmpresa), '') +
          'GROUP BY FPC_PAGTO, COALESCE(T3.REG_DESCRI,''OUTROS'')                                            '
          + 'HAVING FPC_PAGTO BETWEEN   ' + DateToSql(dDataInicial) +
          ' AND ' + DateToSql(dDataFinal));
        GerarColunas('Região', 'FPC_PAGTO', '150', '90', 'ftString',
          odColunas);
        GerarLinhas(True, 'Região', 'REG_DESCRI', 'FPC_PAGTO', 'VALOR');
      end;

  end;

  GerarGraficos('Região');

end;

procedure TFrmSie.Totalizar;
var
  colunaGrid: TColumn;
  j : integer;
  total, totalGeral: double;
  totalColuna: array of Double;
begin

  CdsResultado.DisableControls;
  CdsResultado.First;
  while not CdsResultado.Eof do
  begin
    total := 0;
    SetLength(totalColuna, CdsResultado.FieldDefs.Count - 1);
    for j := 0 to CdsResultado.FieldDefs.Count - 1 do
    begin
      if CdsResultado.FieldDefs[j].DataType = ftCurrency then
      begin
        total := total + CdsResultado.FieldDefs[j].DataSet.Fields[j].asCurrency;
        totalColuna[j] := totalColuna[j] + CdsResultado.FieldDefs[j].DataSet.Fields[j].asCurrency;
      end;
    end;
    CdsResultado.Edit;     // ascii 255 no início
    CdsResultado.FieldByName('Total').asCurrency := total;
    totalGeral := totalGeral + total;
    TFloatField(CdsResultado.FieldByName('Total')).DisplayFormat := 'R$ #,###,###,##0.00';
    CdsResultado.Post;
    CdsResultado.Next;
  end;
  CdsResultado.Insert;
  for j := 0 to CdsResultado.FieldDefs.Count - 1 do
    if j = 0 then
      CdsResultado.FieldDefs[j].DataSet.Fields[j].asString := 'Total'
    else
    if j = CdsResultado.FieldDefs.Count - 1 then
      CdsResultado.FieldDefs[j].DataSet.Fields[j].asCurrency := totalGeral
    else
      CdsResultado.FieldDefs[j].DataSet.Fields[j].asCurrency := totalColuna[j];
  CdsResultado.Post;
  CdsResultado.IndexFieldNames := CdsResultado.FieldDefs[CdsResultado.FieldDefs.Count -1].name;


  CdsResultado.EnableControls;


end;



procedure TFrmSie.Rel_Vendas_porVendedor(const sEmpresa: string; dDataInicial, dDataFinal: TDate; sregime: smallint);
begin
  case sregime of
    0:    //competencia
      begin
        GerarConsulta('SELECT T1.NF_EMISSAO, ' +
          iif(not cbContacorrente.Checked,
              ' (T1.NF_TOT_NOTA-COALESCE(NF_VL_DESCTO_FAT,0)) AS NF_TOT_NOTA ,' ,
              ' (T1.NF_TOT_NOTA) AS NF_TOT_NOTA ,'
              ) +
          'T3.REP_NOME ' + 'FROM  ' + 'NF0001 T1 ' +
          'JOIN CLI0000 T2 ON (T2.CLI_CODIGO = T1.CLI_CODIGO) ' +
          'left join REP0000 t3 on (t3.REP_CODIGO = t1.REP_CODIGO) ' +
          'WHERE T1.NF_VENDA_FATURADA = ''S'' AND  T1.NF_EMISSAO BETWEEN '
          + DateToSql(dDataInicial) + ' AND ' + DateToSql(dDataFinal) +
          ' ' + iif(rbEmpresa.Checked, ' AND T1.EMP_CODIGO = ' +
          QuotedStr(sEmpresa), '') + ' AND NF_CANCELADA <> ''S'' ' +
          'ORDER BY 3, 1');
        GerarColunas('Vendedor', 'NF_EMISSAO', '150', '90', 'ftString', odColunas);
        GerarLinhas(True, 'Vendedor', 'REP_NOME', 'NF_EMISSAO', 'NF_TOT_NOTA');
        Totalizar;




        GerarConsulta2 (cdsNivel2Resultado,
           ' SELECT ' +
           '   T2.CLI_RAZAO , ' +
           '   SUM((T1.NF_TOT_NOTA-COALESCE(NF_VL_DESCTO_FAT,	0))) AS NF_TOT_NOTA , ' +
           '   t3.REP_NOME, NF_EMISSAO, ' +
           '   0 as TOTAL ' +
           ' FROM ' +
           '   NF0001 T1 ' +
           ' JOIN CLI0000 T2 ON	(T2.CLI_CODIGO = T1.CLI_CODIGO) ' +
           ' LEFT JOIN REP0000 t3 ON	(t3.REP_CODIGO = T1.REP_CODIGO) ' +
           ' WHERE ' +
           '   T1.NF_VENDA_FATURADA = ''S'' ' +
           '   AND T1.NF_EMISSAO BETWEEN ''2021-01-01'' AND ''2022-06-30'' ' +
           '   AND T1.EMP_CODIGO = ''001'' ' +
           '   AND NF_CANCELADA <> ''S'' ' +
           ' GROUP BY 1,3,4 ' +
           ' ORDER BY 4 ');
//        qNivel2.Open;
//        cdsNivel2.Open;
{        GerarColunas(
          cdsNivel2Resultado,
          'CLI_RAZAO;NF_TOT_NOTA;REP_NOME;NF_EMISSAO',
          'Cliente;Total;Vendedor;Emissao',
          '',
          '50;20;20;20',
          '120',
          'ftString;ftFloat;ftString;ftdatetime',
          odcolunas
        );
        }
        GerarColunas(
          CdsNivel2Resultado ,
          'CLI_RAZAO;NF_TOT_NOTA;NF_EMISSAO,TOTAL',
          'Cliente;Total;Emissao,Total',
          '',
          '50;20;20;20',
          '120',
          'ftString;ftFloat;ftdatetime;ftFloat',
          odcolunas,
          True,
          True);



//        GerarLinhas2SemData(cdsNivel2Resultado,'CLI_RAZAO;NF_TOT_NOTA;REP_NOME;NF_EMISSAO','T');
//       GerarLinhas2(True, 'CLI_RAZAO', 'CLI_RAZAO', 'NF_EMISSAO', 'NF_TOT_NOTA', True);

        cxGrid1DBTableView2.DataController.DataSource := dsNivel2Resultado;
        cxGrid1DBTableView2.DataController.DetailKeyFieldNames := 'REP_NOME';
        cxGrid1DBTableView2.DataController.KeyFieldNames := 'REP_NOME';
        cxGrid1DBTableView2.DataController.MasterKeyFieldNames := 'REP_NOME';
        cxGrid1DBTableView1.DataController.CreateAllItems(true);
        cxGrid1DBTableView2.DataController.CreateAllItems(true);
        cxGrid1Level2.GridView := cxGrid1DBTableView2;
        cxGrid1DBTableView2.DataController.Refresh;










      end;
    1:      // caixa
      begin
        GerarConsulta
        // primeiro o valor paggo, porque pode conter juros e mora , e valor da parcela é o previsto
          ('SELECT SUM(CASE WHEN (FPC_VLPAGO = 0) OR (FPC_VLPAGO IS NULL) THEN FPC_VLPARC ELSE FPC_VLPAGO END) VALOR , FPC_VENCTO,  T3.REP_NOME  '
          + 'FROM FAT_PC01 F1                                                              '
          + 'left join REP0000 t3 on (t3.REP_CODIGO = f1.REP_CODIGO)                       '
          + ' WHERE FPC_EXCLUSAO <> ''S'' '     // EXCLUIR AS FATURAS EXCLUIDAS
          + iif(rbEmpresa.Checked,  ' AND F1.EMP_CODIGO = ' + QuotedStr(sEmpresa), '') +
          'GROUP BY FPC_VENCTO, T3.REP_NOME                                                '
          + 'HAVING FPC_VENCTO BETWEEN ' + DateToSql(dDataInicial) +
          ' AND ' + DateToSql(dDataFinal) + ' ');
        GerarColunas('Vendedor', 'FPC_VENCTO', '150', '90', 'ftString',
          odColunas);
        GerarLinhas(True, 'Vendedor', 'REP_NOME', 'FPC_VENCTO',
          'VALOR');
        Totalizar;

      end;
    2:       //realizado
      begin
        GerarConsulta
          ('SELECT SUM(FPC_VLPAGO) VALOR , FPC_PAGTO,  T3.REP_NOME ' +
          'FROM FAT_PC01 F1                                                                '
          + 'left join REP0000 t3 on (t3.REP_CODIGO = f1.REP_CODIGO)                       '
          + ' WHERE FPC_EXCLUSAO <> ''S'' ' + iif(rbEmpresa.Checked,
          ' AND F1.EMP_CODIGO = ' + QuotedStr(sEmpresa), '') +
          'GROUP BY FPC_PAGTO, T3.REP_NOME                                                 '
          + 'HAVING FPC_PAGTO BETWEEN ' + DateToSql(dDataInicial) +
          ' AND ' + DateToSql(dDataFinal) + ' ');
        GerarColunas('Vendedor', 'FPC_PAGTO', '150', '90', 'ftString',
          odColunas);
        GerarLinhas(True, 'Vendedor', 'REP_NOME', 'FPC_PAGTO', 'VALOR');
        Totalizar;

      end;
  end;
  GerarGraficos('Vendedor');

end;

procedure TFrmSie.Rel_Vendas_Produto(const sEmpresa: string; dDataInicial, dDataFinal: TDate);
begin
  GerarConsulta('SELECT ' + 'T7.NF_EMISSAO,' +
    'SUM (T1.NF_QTDE * COALESCE(t1.NF_PRECO,0)) AS NF_TOT_NOTA ,' +
    'T2.PRD_REFER ||'' - '' ||t2.PRD_DESCRI as PRODUTOS ' + 'FROM ' +
    'NF_IT01 T1 ' +
    'JOIN NF0001 T7 ON (T7.NF_NOTANUMBER = T1.NF_IT_NOTANUMER) ' +
    'JOIN PRD0000 T2 ON (T2.PRD_REFER = T1.PRD_REFER) ' +
    'WHERE T7.NF_VENDA_FATURADA = ''S'' AND  T7.NF_EMISSAO BETWEEN ' +
    DateToSql(dDataInicial) + ' AND ' + DateToSql(dDataFinal) + ' ' +
    iif(rbEmpresa.Checked, ' AND T7.EMP_CODIGO = ' +
    QuotedStr(sEmpresa), '') + ' AND T7.NF_CANCELADA <> ''S'' ' +
    'GROUP BY T2.PRD_REFER , t2.PRD_DESCRI, T7.NF_EMISSAO  ' +
    'ORDER BY 1 ');
  GerarColunas('PRODUTOS', 'NF_EMISSAO', '250', '90', 'ftString',
    odColunas);
  GerarLinhas(True, 'PRODUTOS', 'PRODUTOS', 'NF_EMISSAO',
    'NF_TOT_NOTA');
  GerarGraficos('PRODUTOS');
end;

procedure TFrmSie.Rel_Vendas_Produto_por_unidade(const sEmpresa: string; dDataInicial, dDataFinal: TDate);
begin
  GerarConsulta('SELECT ' + 'T7.NF_EMISSAO,' +
    'SUM (T1.NF_QTDE ) AS QUANTIDADE ,' +
    'T2.PRD_REFER ||'' - '' ||t2.PRD_DESCRI as PRODUTOS ' + 'FROM ' +
    'NF_IT01 T1 ' +
    'JOIN NF0001 T7 ON (T7.NF_NOTANUMBER = T1.NF_IT_NOTANUMER) ' +
    'JOIN PRD0000 T2 ON (T2.PRD_REFER = T1.PRD_REFER) ' +
    'WHERE T7.NF_VENDA_FATURADA = ''S'' AND  T7.NF_EMISSAO BETWEEN ' +
    DateToSql(dDataInicial) + ' AND ' + DateToSql(dDataFinal) + ' ' +
    iif(rbEmpresa.Checked, ' AND T7.EMP_CODIGO = ' +
    QuotedStr(sEmpresa), '') +
    ' AND T7.NF_CANCELADA <> ''S'' ' +
    iif(EdClienteCodigo.Text = '', '', ' AND T7.CLI_CODIGO = ' + QuotedStr(EdClienteCodigo.Text) ) +
    ' GROUP BY T2.PRD_REFER , t2.PRD_DESCRI, T7.NF_EMISSAO  ' +
    ' ORDER BY 1 ');
  GerarColunas('PRODUTOS', 'NF_EMISSAO', '250', '90', 'ftString',
    odColunas);
  GerarLinhas(True, 'PRODUTOS', 'PRODUTOS', 'NF_EMISSAO',
    'QUANTIDADE');
  GerarGraficos('PRODUTOS');
end;

procedure TFrmSie.Rel_Vendas_Tipo(const sEmpresa: string; dDataInicial, dDataFinal: TDate);
begin
  GerarConsulta('SELECT ' + 'T7.NF_EMISSAO,' +
    'SUM (T1.NF_QTDE * COALESCE(t1.NF_PRECO,0)) AS NF_TOT_NOTA ,' +
    'T3.PTI_DESCRI ' + 'FROM ' + 'NF_IT01 T1 ' +
    'JOIN NF0001 T7 ON (T7.NF_NOTANUMBER = T1.NF_IT_NOTANUMER) ' +
    'JOIN PRD0000 T2 ON (T2.PRD_REFER = T1.PRD_REFER) ' +
    'LEFT JOIN PRD_TIPO T3 ON (T3.PTI_CODIGO = T2.PTI_CODIGO) ' +
    'WHERE T7.NF_VENDA_FATURADA = ''S'' AND  T7.NF_EMISSAO BETWEEN ' +
    DateToSql(dDataInicial) + ' AND ' + DateToSql(dDataFinal) + ' ' +
    iif(rbEmpresa.Checked, ' AND T7.EMP_CODIGO = ' +
    QuotedStr(sEmpresa), '') + ' AND T7.NF_CANCELADA <> ''S'' ' +
    'GROUP BY T3.PTI_DESCRI, T7.NF_EMISSAO  ' + 'ORDER BY 1 ');
  GerarColunas('Tipo Produto', 'NF_EMISSAO', '150', '90', 'ftString',
    odColunas);
  GerarLinhas(True, 'Tipo Produto', 'PTI_DESCRI', 'NF_EMISSAO',  'NF_TOT_NOTA');
  GerarGraficos('Tipo Produto');
end;

function TFrmSie.RetornaAno(Data: TDate): string;
begin
  iAno := StrToInt(FormatDateTime('yyyy', Data));
  Result := IntToStr(iAno);
end;

procedure TFrmSie.CdsColunasBeforePost(DataSet: TDataSet);
begin
  CdsColunasPosicao.AsInteger := CdsColunas.RecordCount + 1;
end;

procedure TFrmSie.ChamaTelaDetalhes(sender: tObject);
var tcr: tFrmBaseDBPesquisaGeraFDAC;
begin
  tcr  := tFrmBaseDBPesquisaGeraFDAC.Create(Application);
  try
    tcr.btnNovo.Visible := False;
    tcr.btnEdita.Visible := False;
    tcr.btnExclui.Visible := False;
    tcr.btnConsulta.Visible := False;
    tcr.btnSelect.Visible := False;
    tcr.SQLFiltro:= sqlFiltro;
    tcr.IDFiltro := CdsResultado.FieldByName(idbusca).AsString;
    tcr.ShowModal;

  finally
    FreeAndNil(tcr);

  end;

end;

procedure TFrmSie.chtGraficoClickSeries(Sender: TCustomChart;
  Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  Series.Labels[ValueIndex]
  (* SERIES.XValue
    SERIES.YValue *)
  // ShowMessage(    Series.ValuesList[ValueIndex].ValueSource);
end;

procedure TFrmSie.cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var i: integer;
begin
 // inherited;

 if (  (pos('abc',sRelatorio) > 0) or  (pos('ticket',srelatorio)>0)   ) and (FieldExist(cxGrid1DBTableView1.DataController.DataSet,'Curva')) then
 begin  // 'cliente/produtos/fornecedor A'   //perc_acumulado
  i:= cxGrid1DBTableView1.GetColumnByFieldName('curva').Index;
  //cxGrid1DBTableView1.Controller.SelectedRecords[0].Values[i];
   if (AViewInfo.GridRecord.Values[i] = 'A' )  then
      ACanvas.Brush.Color :=  $00008CFF  //
    else
     if (AViewInfo.GridRecord.Values[i] = 'B' )  then
       ACanvas.Brush.Color :=$FACE87
    else
      ACanvas.Brush.Color := $DCDCDC ;

  end
 else
 if (pos('abc',sRelatorio) > 0) and (FieldExist(cxGrid1DBTableView1.DataController.DataSet,'perc_acumulado')) then
 begin  // 'cliente/produtos/fornecedor A'   //perc_acumulado
    i:= cxGrid1DBTableView1.GetColumnByFieldName('perc_acumulado').Index;
    if (AViewInfo.GridRecord.Values[i] <=80.0)  then
      ACanvas.Brush.Color :=  $00008CFF  //
    else
     if (AViewInfo.GridRecord.Values[i] <=95.0)  then
       ACanvas.Brush.Color :=$FACE87
    else
      ACanvas.Brush.Color := $CDC9C9;// ;

  end


end;

procedure TFrmSie.dbgrd1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  //inherited;
  if (Column.FieldName = 'Total') or ((sRelatorio = 'vendas-por vendedor') AND (cdsResultado.RecNo = CdsResultado.RecordCount) )   then
  begin
    dbgrd1.Canvas.Brush.Color := clBlue;
    dbgrd1.Canvas.Font.Color := clWhite;
    dbgrd1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end
  else
  if (pos('abc',sRelatorio) > 0) and (FieldExist(TDBGrid(sender).DataSource.DataSet,'perc_acumulado')) then
  begin  // 'cliente/produtos/fornecedor A'   //perc_acumulado
    if (TDBGrid(sender).DataSource.DataSet.FieldByName('perc_acumulado').AsFloat <=80)  then
     TDBGrid(sender).canvas.Brush.Color :=  $00008CFF  //
    else
     if (TDBGrid(sender).DataSource.DataSet.FieldByName('perc_acumulado').AsFloat <=95)  then
      TDBGrid(sender).canvas.Brush.Color := $FACE87
    else
     TDBGrid(sender).canvas.Brush.Color := $DCDCDC ;// ;
    TDBGrid(sender).DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end
  else if (pos('ticket',srelatorio)>0) and (FieldExist(TDBGrid(sender).DataSource.DataSet,'Curva')) then
  begin
   if (TDBGrid(sender).DataSource.DataSet.FieldByName('Curva').asString = 'A' )  then
     TDBGrid(sender).canvas.Brush.Color :=  $00008CFF  //
    else
     if (TDBGrid(sender).DataSource.DataSet.FieldByName('Curva').AsString = 'B' )  then
      TDBGrid(sender).canvas.Brush.Color := $FACE87
    else
     TDBGrid(sender).canvas.Brush.Color := $DCDCDC ;// ;
    TDBGrid(sender).DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end
 else
    inherited;

end;

procedure TFrmSie.dbgrd1TitleClick(Column: TColumn);
var
  ARect : Trect;
  DummyTC : TColumn;
begin
  If column.PickList.Count > 0 then
  begin
    cbFilterbox.Items.Assign(column.PickList);
    ARect := TCDBGrid(Column.Grid).CalcTitleRect(Column,0,DummyTC);
    cbfilterBox.top := Column.Grid.Top+1;
    cbfilterBox.left := Column.Grid.left+Arect.Left+1;
    cbFilterbox.Width := Column.Width;
    cbFilterBox.Tag := Integer(Column); //Store the columnPointer
    cbFilterBox.Show;
    cbFilterBox.BringToFront;
    cbFilterBox.DroppedDown := True;
  end;

end;

procedure TFrmSie.dbgrdCentroCustoDblClick(Sender: tObject);
begin
  LimpaConsulta;
  MarcarDesmarcarCentroCustoUnitario;
end;

procedure TFrmSie.dbgrdCentroCustoDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Check: Integer;
  R: TRect;
begin
  if (not odd(CdsCentroCusto.RecNo)) then
    if not(GdSelected in State) then
    begin
      dbgrdCentroCusto.Canvas.Brush.Color := $00FFEFDF;
      dbgrdCentroCusto.Canvas.FillRect(Rect);
      dbgrdCentroCusto.DefaultDrawDataCell(Rect, Column.field, State);
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

procedure TFrmSie.dbgrdPlanoContaDblClick(Sender: tObject);
begin
  LimpaConsulta;
  MarcarDesmarcarPlanoContasUnitario;
end;

procedure TFrmSie.dbgrdPlanoContaDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Check: Integer;
  R: TRect;
begin
  if (not odd(CdsPlanoContas.RecNo)) then
    if not(GdSelected in State) then
    begin
      dbgrdPlanoConta.Canvas.Brush.Color := $00FFEFDF;
      dbgrdPlanoConta.Canvas.FillRect(Rect);
      dbgrdPlanoConta.DefaultDrawDataCell(Rect, Column.field, State);
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

procedure TFrmSie.edClienteButtonClick(Sender: TObject);
var tcr: tFrmPesquisaClientes;
begin
  tcr:= TFrmPesquisaClientes.Create(self);
  try
    tcr.ShowModal;
    if tcr.modalresult = mrok then
      edCliente.idRetorno := tcr.IDRetorno;
    EdClienteCodigo.Text := edCliente.idRetorno;
  finally
    FreeAndNil(tcr);
  end;
end;
procedure TFrmSie.EdClienteCodigoExit(Sender: TObject);
begin
  inherited;
  edCliente.idRetorno := edClienteCodigo.Text;
end;

procedure TFrmSie.edClienteSelect(Sender: TObject);
begin
  inherited;
  EdClienteCodigo.Text := edCliente.idRetorno;
end;

procedure TFrmSie.btnImprimirClick(Sender: tObject);
begin
  if not(dbgrd1.DataSource.DataSet.active) or
    (dbgrd1.DataSource.DataSet.RecordCount <= 0) then
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
        // ExportGrid4ToExcel(SaveDialog1.FileName,dbGrd1, False)

//        JvDBGridExcelExport1.Grid := dbgrd1;
//        JvDBGridExcelExport1.FileName := SaveDialog1.Filename;
//        JvDBGridExcelExport1.AutoFit := False;
//        JvDBGridExcelExport1.ExportGrid;

        QExport4XLS1.DataSet := dbgrd1.DataSource.DataSet;
        QExport4XLS1.dbgrid := dbgrd1;
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

//    MessageDlg('Arquivo Exportado com sucesso', mtInformation, [mbOk], 0);
  end;
end;

procedure TFrmSie.btnLimparClick(Sender: TObject);
begin
  inherited;
  CdsResultado.Filter:= '';
  CdsResultado.Filtered:= False;
end;

procedure TFrmSie.scVendedorSelect(Sender: TObject);
begin
  inherited;
  edVendedorCodigo.Text := scVendedor.idRetorno;
end;

procedure TFrmSie.SpeedButton1Click(Sender: tObject);
var
  cs: TChartSeries;
begin
  cs := chtGrafico.Series[0]; // Pass serie index you want
  ChangeSeriesType(cs, TPieSeries);
end;

procedure TFrmSie.SpeedButton2Click(Sender: tObject);
var
  cs: TChartSeries;
begin
  cs := chtGrafico.Series[0]; // Pass serie index you want
  ChangeSeriesType(cs, TBarSeries);
end;

procedure TFrmSie.SpeedButton3Click(Sender: tObject);
var
  cs: TChartSeries;
begin
  cs := chtGrafico.Series[0]; // Pass serie index you want
  ChangeSeriesType(cs, TLineSeries);
end;

procedure TFrmSie.btnPizzaClick(Sender: tObject);
var
  cs: TChartSeries;
begin
  cs := chtGrafico.Series[0]; // Pass serie index you want
  ChangeSeriesType(cs, TAreaSeries);
end;

procedure TFrmSie.cbCampoChange(Sender: TObject);
var

  i : integer;
begin
  if cbCampo.ItemIndex = -1 then
    exit;


  for i:=0 to CdsResultado.FieldCount-1 do
  begin
   if UpperCase(CdsResultado.Fields[i].DisplayLabel) = UpperCase(cbCampo.Items[cbCampo.ItemIndex]) then
   begin
      cbFilterbox.Items.Assign(dbgrd1.Columns[i].PickList);
      cbFilterBox.Show;
      cbFilterBox.BringToFront;
      cbFilterBox.DroppedDown := True;
   end;
  end;

end;

procedure TFrmSie.cbFilterBoxChange(Sender: TObject);
Var
 i : integer;
begin
 cbFilterBox.Hide;

  for i:=0 to CdsResultado.FieldCount-1 do
  begin
   if UpperCase(CdsResultado.Fields[i].DisplayLabel) = UpperCase(cbCampo.Items[cbCampo.ItemIndex]) then
   begin
     case CdsResultado.Fields[i].DataType of
      ftString :
           CdsResultado.Filter :=
                   CdsResultado.Fields[i].FieldName+' = '+QuotedStr(cbFilterBox.Text);

      ftInteger,
      ftFloat  :
                CdsResultado.Filter :=
                   CdsResultado.Fields[i].FieldName+' = '+cbFilterBox.Text;
     end;



   end;
  end;
   CdsResultado.Filtered := True;



end;

procedure TFrmSie.cbFilterBoxClick(Sender: TObject);
begin
  inherited;
  cbFilterBox.Hide;
end;

procedure TFrmSie.cbFilterBoxExit(Sender: TObject);
begin
  inherited;
  cbFilterBox.Hide;
end;

procedure TFrmSie.SpeedButton4Click(Sender: tObject);
var
  cs: TChartSeries;
begin
  cs := chtGrafico.Series[0]; // Pass serie index you want
  ChangeSeriesType(cs, THorizBarSeries);
end;

procedure TFrmSie.SpeedButton5Click(Sender: tObject);
var
  cs: TChartSeries;
begin
  cs := chtGrafico.Series[0]; // Pass serie index you want
  ChangeSeriesType(cs, TPointSeries);
end;

procedure TFrmSie.SpeedButton7Click(Sender: tObject);
begin
  SaveDialog1.Filter := 'BMP (*.bmp)';
  if SaveDialog1.Execute then
  begin
    chtGrafico.SaveToBitmapFile(SaveDialog1.Filename);
  end;
end;

procedure TFrmSie.SpeedButton6Click(Sender: tObject);
begin
  with TPrintDialog.Create(nil) do
    try
      if Execute then
        chtGrafico.Print;
    finally
      Free;
    end;
end;


procedure TFrmSie.MarcarDesmarcarPlanoContasUnitario;
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
      CdsPlanoContas.edit;
      CdsPlanoContasSelecionado.AsBoolean := bSelecao;
      CdsPlanoContas.Post;

      CdsPlanoContas.Next;
    end;
    CdsPlanoContas.Filtered := False;
    CdsPlanoContas.IndexFieldNames := 'Nivel';
    CdsPlanoContas.Locate('Nivel', sNivelTmp, []);
  end;

end;

procedure TFrmSie.MarcarDesmarcarCentroCustoUnitario;
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
      CdsCentroCusto.edit;
      CdsCentroCustoSelecionado.AsBoolean := bSelecao;
      CdsCentroCusto.Post;

      CdsCentroCusto.Next;
    end;
    CdsCentroCusto.Filtered := False;
    CdsCentroCusto.IndexFieldNames := 'Nivel';
    CdsCentroCusto.Locate('Nivel', sNivelTmp, []);
  end;

end;



end.
