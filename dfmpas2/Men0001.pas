unit Men0001;

// {$D-}
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  baseform, math, system.UITypes,
  Menus, ComCtrls, StdCtrls, ExtCtrls, Buttons, ImgList, DBGrids,
  dateutils, RXCtrls, ToolWin, Mask, rxToolEdit, rxCurrEdit, Rwfunc, Provider,
  Inifiles, RXShell, DBClient, DB, SqlExpr, SqlClientDataSet,
  RwSQLComando, jpeg,
  Shellapi, RxGIF, xmldom, XMLIntf, rzLaunch,
  msxmldom, XMLDoc, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, JvExControls, JvGradient, frxClass,
  uCadastroFormaPagamento,
  JvGradientCaption, JvComponentBase, JvFormAnimation, OleCtrls,
  pngextra, pngimage, InicioDB, JvBalloonHint, Vcl.Styles,
  System.ImageList, PngFunctions, Data.DBXFirebird, JvLabel,
  Data.FMTBCd, dxGDIPlusClasses,StrUtils, JvExExtCtrls, JvExtComponent, JvPanel, JvButton, JvTransparentButton;

type
  TFrmMenu = class(TForm)
    ImageList1: TImageList;
    Status: TStatusBar;
    MainMenu: TMainMenu;
    Cadastros: TMenuItem;
    Clientes1: TMenuItem;
    Produtos1: TMenuItem;
    Bancos1: TMenuItem;
    Transportadoras1: TMenuItem;
    representante: TMenuItem;
    Fornecedor: TMenuItem;
    N13: TMenuItem;
    PrazosdePagamento: TMenuItem;
    OperacaoFiscal: TMenuItem;
    N1: TMenuItem;
    PlanodeContas: TMenuItem;
    CentrodeCustos: TMenuItem;
    N20: TMenuItem;
    Tabelas1: TMenuItem;
    Regiao1: TMenuItem;
    Atividade1: TMenuItem;
    Eventos2: TMenuItem;
    N6: TMenuItem;
    TipoProduto: TMenuItem;
    GrupoProduto: TMenuItem;
    LinhaProduto: TMenuItem;
    Almoxarifado1: TMenuItem;
    N12: TMenuItem;
    ClassIPI: TMenuItem;
    AliquotasICMS1: TMenuItem;
    IssMunicpios1: TMenuItem;
    tributosEspecficos1: TMenuItem;
    Financeiro: TMenuItem;
    Receber1: TMenuItem;
    Pagar1: TMenuItem;
    N3: TMenuItem;
    CaixaFixo1: TMenuItem;
    FechamentodoCaixaFixo1: TMenuItem;
    N4: TMenuItem;
    SalododeBanco1: TMenuItem;
    FluxoDeCaixa1: TMenuItem;
    N5: TMenuItem;
    Cheques1: TMenuItem;
    BoletosDuplicataRecibo1: TMenuItem;
    TransmissoBancos1: TMenuItem;
    ImportaoArquivoRetornoBancoCNAB1: TMenuItem;
    ConsultaArquivoRetornoRemessaBancoCNAB1: TMenuItem;
    RemessadasFaturasDescontar1: TMenuItem;
    Comercial: TMenuItem;
    Pedidos: TMenuItem;
    Faturamento2: TMenuItem;
    Vendas1: TMenuItem;
    N2: TMenuItem;
    EventosRep1: TMenuItem;
    Movimentos: TMenuItem;
    OrdemdeCompra2: TMenuItem;
    EntradadeNotaFiscal1: TMenuItem;
    ConsultadeNotaFiscaldeEntrada1: TMenuItem;
    ConsultadeNotaFiscaldeSada1: TMenuItem;
    AtualizaodePreos1: TMenuItem;
    N15: TMenuItem;
    N29: TMenuItem;
    Producao: TMenuItem;
    PlanilhadeCustos1: TMenuItem;
    N11: TMenuItem;
    PrevisodeConsumodeMaterial2: TMenuItem;
    AtualizaoGeraldeCustos1: TMenuItem;
    N14: TMenuItem;
    ndicesparaClculodeCustos1: TMenuItem;
    miprocessos: TMenuItem;
    ClulasdeProduo1: TMenuItem;
    MonitoramentodeClulas1: TMenuItem;
    N17: TMenuItem;
    CadastrodeClulas1: TMenuItem;
    CadastrodeIntegrantes1: TMenuItem;
    CadastrodasMetas1: TMenuItem;
    N25: TMenuItem;
    PCPCentrodeProduoNovo1: TMenuItem;
    PrevisodeConsumodeMaterial1: TMenuItem;
    Gerencial: TMenuItem;
    InformaesExecutivas1: TMenuItem;
    Administrador: TMenuItem;
    N7: TMenuItem;
    BackupDados: TMenuItem;
    N9: TMenuItem;
    TransfClientes1: TMenuItem;
    RecalculaPreoMdio1: TMenuItem;
    ExportarArquivoContabilidade1: TMenuItem;
    Sobre1: TMenuItem;
    N28: TMenuItem;
    ManutenoRenew1: TMenuItem;
    Configuracoes: TMenuItem;
    CadastrodaEmpresa1: TMenuItem;
    CadastroUsuarios: TMenuItem;
    N18: TMenuItem;
    Parametros1: TMenuItem;
    CompartilhamentoDB1: TMenuItem;
    N19: TMenuItem;
    CaminhodoBancoDados1: TMenuItem;
    N22: TMenuItem;
    Sequnciador1: TMenuItem;
    N23: TMenuItem;
    sair: TMenuItem;
    ransfernciadeOperaodeNatureza1: TMenuItem;
    N30: TMenuItem;
    ManutenodeCheques1: TMenuItem;
    ConsultarProdutosdasOpemaberto1: TMenuItem;
    ransfernciadeContaCaixa1: TMenuItem;
    RwSqlGeralCmd: TRwSQLComando;
    Cidades1: TMenuItem;
    RegraNAturezadeOperao1: TMenuItem;
    SituaoTributria1: TMenuItem;
    LBLinkBlog: TLabel;
    AuxlioaoUsurioBlogNovi1: TMenuItem;
    N32: TMenuItem;
    WebSite1: TMenuItem;
    MarkupComissao: TMenuItem;
    ZerarEstoquedosProdutos1: TMenuItem;
    N26: TMenuItem;
    N33: TMenuItem;
    N34: TMenuItem;
    Licena1: TMenuItem;
    N35: TMenuItem;
    ExportardadospEFDContbil1: TMenuItem;
    Kardex: TMenuItem;
    KardexTransfer: TMenuItem;
    EmissodeNFSe1: TMenuItem;
    N37: TMenuItem;
    EntradaeSadaManual: TMenuItem;
    N38: TMenuItem;
    ProjetosObras1: TMenuItem;
    VinculaoEntradadeNota1: TMenuItem;
    ipodePedido1: TMenuItem;
    N40: TMenuItem;
    AnlisedeCrdito1: TMenuItem;
    PedidodeProduo1: TMenuItem;
    NotasdeEntradaseSaidasporProduto1: TMenuItem;
    N41: TMenuItem;
    Observaes1: TMenuItem;
    IdHTTP1: TIdHTTP;
    ConciliaoBancria1: TMenuItem;
    N42: TMenuItem;
    AnlisedeCrdito2: TMenuItem;
    FluxoCaixaSaldoBanco1: TMenuItem;
    Fiscal: TMenuItem;
    Sintegra2: TMenuItem;
    SpedContribies1: TMenuItem;
    SpedFiscal1: TMenuItem;
    ConversodeMedidas1: TMenuItem;
    ConsultaMarkup1: TMenuItem;
    EmissodeRecibo1: TMenuItem;
    EntradaseSadasdeProdutos1: TMenuItem;
    RateioporCentrodeCusto1: TMenuItem;
    miInformaesExecutivas: TMenuItem;
    PedidoWeb1: TMenuItem;
    SincronizarComisses1: TMenuItem;
    GerenciadordeCheques1: TMenuItem;
    FormadePagamento1: TMenuItem;
    GerenciadodeIndustrializao1: TMenuItem;
    AnlisePlanodeContasxCentrodeCusto1: TMenuItem;
    Diretivas1: TMenuItem;
    ImglogoMenu: TImage;
    Cnae1: TMenuItem;
    Image3: TImage;
    fISCAL1: TMenuItem;
    N10: TMenuItem;
    imgLogoNovi: TImage;
    Endereamento1: TMenuItem;
    N31: TMenuItem;
    abelaIBPT1: TMenuItem;
    abelaCEST1: TMenuItem;
    N21: TMenuItem;
    abelaCSOSN1: TMenuItem;
    ExecutarScrptSQL1: TMenuItem;
    N39: TMenuItem;
    CurvaABCProdutosporVendedor1: TMenuItem;
    JvBalloonHint1: TJvBalloonHint;
    N43: TMenuItem;
    abelasdePreos1: TMenuItem;
    N44: TMenuItem;
    RelatriodeInventarioCiclico1: TMenuItem;
    Estilo1: TMenuItem;
    N8: TMenuItem;
    ImportarXMLNFEsMigrao1: TMenuItem;
    eXPEDIO1: TMenuItem;
    GiroEstoque: TMenuItem;
    Timer1: TTimer;
    SpBPedidos: TPNGButton;
    SpBProdutos: TPNGButton;
    SpBClientes: TPNGButton;
    Image1: TImage;
    SpBFaturamento: TPNGButton;
    SpBLogoff: TPNGButton;
    SpBSaida: TPNGButton;
    SpBAjuda: TPNGButton;
    btnSuporteRemoto: TPNGButton;
    PNGButton3: TPNGButton;
    SpBProducao: TPNGButton;
    SpBBackup: TPNGButton;
    Label3: TLabel;
    Image2: TImage;
    Pan_Versao: TPanel;
    RxLEmpresa: TJvLabel;
    RxLversao: TJvLabel;
    LbEmpresa: TLabel;
    CEmpresa: TCurrencyEdit;
    CbEmpresa: TComboBox;
    ContaCorrenteVerba1: TMenuItem;
    Cadastros1: TMenuItem;
    Colaborador: TMenuItem;
    Equipamento1: TMenuItem;
    Ocorrencias1: TMenuItem;
    Ocorrncia1: TMenuItem;
    miConsultaPedidoscomGrade: TMenuItem;
    miApontamentos: TMenuItem;
    miGerenciarApontamento: TMenuItem;
    miCustosEntrada: TMenuItem;
    miItemservio: TMenuItem;
    Timerbakcup: TTimer;
    miNFe401: TMenuItem;
    miVendasperdidas: TMenuItem;
    miImportarCte: TMenuItem;
    NovaconsultaNFentrada1: TMenuItem;
    miCRM: TMenuItem;
    miConsultarenovacao: TMenuItem;
    miLogoff: TMenuItem;
    miInadimplencia: TMenuItem;
    miposicaoestoque: TMenuItem;
    miturnos: TMenuItem;
    miorcamento: TMenuItem;
    miServios: TMenuItem;
    Formaoprecos1: TMenuItem;
    micadastroprocessos: TMenuItem;
    miPCP: TMenuItem;
    N24: TMenuItem;
    miApontamentosdeCarga1: TMenuItem;
    miPedidoindustrializao: TMenuItem;
    AtualizaoMercos1: TMenuItem;
    Pivot1: TMenuItem;
    miApontar: TMenuItem;
    miSetor: TMenuItem;
    imgSuporte: TImage;
    imgDashboard: TImage;
    miDashboard: TMenuItem;
    Origemdocliente1: TMenuItem;
    Unidadedemedida1: TMenuItem;
    Exportarimagensdobanco1: TMenuItem;
    miDemandaProducao: TMenuItem;
    miGerenciamentoPCP: TMenuItem;
    NovoApontamentos1: TMenuItem;
    N16: TMenuItem;
    Previsodecompras1: TMenuItem;
    miEnvaseprodutos: TMenuItem;
    CadastrosMolas1: TMenuItem;
    Artefato1: TMenuItem;
    SeodeArame1: TMenuItem;
    Classificao1: TMenuItem;
    ipodeGancho1: TMenuItem;
    Acabamentosuperficial1: TMenuItem;
    Acabamentodecores1: TMenuItem;
    mitratamentosuperficial: TMenuItem;
    Habilitarcampospelotipo1: TMenuItem;
    iposdeEmbalagem1: TMenuItem;
    Parmetros1: TMenuItem;
    ControledeQualidade1: TMenuItem;
    CustoDeFabricaPorCentroDeCusto: TMenuItem;
    RentabilidadedaOS1: TMenuItem;
    XMLSCOAManaus1: TMenuItem;
    Programaodosprocessos1: TMenuItem;
    Cotao1: TMenuItem;
    RegularizaodeEstoques1: TMenuItem;
    RequisiodeMaterial1: TMenuItem;
    pnNovidade: TJvPanel;
    Label1: TLabel;
    Label2: TLabel;
    imgFacebook: TImage;
    imgInstagram: TImage;
    btNovidade: TJvTransparentButton;
    lbNovo: TLabel;
    lbFechaPainelInformativo: TLabel;
    N27: TMenuItem;
    OrigemdaRequisiodeMateriais1: TMenuItem;
    Capacidade1: TMenuItem;
    FichadecontedodeImportao1: TMenuItem;
    Histricodoenviodeemail1: TMenuItem;
    procedure Clientes1Click(Sender: tObject);
    procedure Representantes1Click(Sender: tObject);
    procedure Transportadoras1Click(Sender: tObject);
    procedure Bancos1Click(Sender: tObject);
    procedure Receber1Click(Sender: tObject);
    procedure Pagar1Click(Sender: tObject);
    procedure Lcto_EventosClick(Sender: tObject);
    procedure sairClick(Sender: tObject);
    procedure SalododeBanco1Click(Sender: tObject);
    procedure FluxoDeCaixa1Click(Sender: tObject);
    procedure BitBtn1Click(Sender: tObject);
    procedure Regiao1Click(Sender: tObject);
    procedure Atividade1Click(Sender: tObject);
    procedure OperacaoClick(Sender: tObject);
    procedure TipoProdutoClick(Sender: tObject);
    procedure GrupoProdutoClick(Sender: tObject);
    procedure LinhaProdutoClick(Sender: tObject);
    procedure ClassIPIClick(Sender: tObject);
    procedure representanteClick(Sender: tObject);
    procedure PedidosClick(Sender: tObject);
    procedure EntradaNotasClick(Sender: tObject);
    procedure FornecedorClick(Sender: tObject);
    procedure EventosRep1Click(Sender: tObject);

    procedure Balano1Click(Sender: tObject);
    procedure TransmissoBancos1Click(Sender: tObject);
    procedure AtualizaodePreo1Click(Sender: tObject);
    procedure ParcelasFaturamento1Click(Sender: tObject);
    procedure Eventos2Click(Sender: tObject);
    procedure AliquotasICMS1Click(Sender: tObject);
    procedure Cheques1Click(Sender: tObject);
    procedure ContasdeAnalise2Click(Sender: tObject);
    procedure Produtos1Click(Sender: tObject);
    procedure ContaProjetoCaixa1Click(Sender: tObject);
    procedure OrdemdeCompra2Click(Sender: tObject);
    procedure EntradadeNotaFiscal1Click(Sender: tObject);
    procedure AtualizaodePreos1Click(Sender: tObject);
    procedure CaixaFixo1Click(Sender: tObject);
    procedure FechamentodoCaixaFixo1Click(Sender: tObject);
    procedure Faturamento2Click(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure IssMunicpios1Click(Sender: tObject);
    procedure tributosEspecficos1Click(Sender: tObject);
    procedure ndicesparaClculodeCustos1Click(Sender: tObject);
    procedure PlanilhadeCustos1Click(Sender: tObject);
    procedure CadastrodeClulas1Click(Sender: tObject);
    procedure CadastrodeIntegrantes1Click(Sender: tObject);
    procedure CadastrodasMetas1Click(Sender: tObject);
    procedure miprocessosClick(Sender: tObject);
    procedure MonitoramentodeClulas1Click(Sender: tObject);
    procedure AtualizaoGeraldeCustos1Click(Sender: tObject);
    procedure CadastrodaEmpresa1Click(Sender: tObject);
    procedure CadastroUsuariosClick(Sender: tObject);
    procedure InformaesExecutivas1Click(Sender: tObject);
    procedure Almoxarifado1Click(Sender: tObject);
    procedure Parametros1Click(Sender: tObject);
    procedure SpBSaidaClick(Sender: tObject);
    procedure SpBLogoffClick(Sender: tObject);
    procedure SpBClientesClick(Sender: tObject);
    procedure SpBProdutosClick(Sender: tObject);
    procedure SpBPedidosClick(Sender: tObject);
    procedure SpBProducaoClick(Sender: tObject);
    procedure SpBFaturamentoClick(Sender: tObject);
    procedure CentrodeCustosClick(Sender: tObject);
    procedure PlanodeContasClick(Sender: tObject);
    procedure PrazosdePagamentoClick(Sender: tObject);
    procedure SpBBackupClick(Sender: tObject);
    procedure OperacaoFiscalClick(Sender: tObject);
    procedure CompartilhamentoDB1Click(Sender: tObject);
    procedure BackupDadosClick(Sender: tObject);
    procedure TransfClientes1Click(Sender: tObject);
    procedure RecalculaPreoMdio1Click(Sender: tObject);
    procedure Vendas1Click(Sender: tObject);
    procedure ConsultadeNotaFiscaldeEntrada1Click(Sender: tObject);
    procedure CaminhodoBancoDados1Click(Sender: tObject);
    procedure Sequnciador1Click(Sender: tObject);
    procedure ConsultadeNotaFiscaldeSada1Click(Sender: tObject);
    procedure PrevisodeConsumodeMaterial2Click(Sender: tObject);
    procedure PCPCentrodeProduoNovo1Click(Sender: tObject);
    procedure PrevisodeConsumodeMaterial1Click(Sender: tObject);
    procedure ManutenoRenew1Click(Sender: tObject);
    procedure Departamentos1Click(Sender: tObject);
    procedure RemessadasFaturasDescontar1Click(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure ransfernciadeOperaodeNatureza1Click(Sender: tObject);
    procedure ManutenodeCheques1Click(Sender: tObject);
    procedure ConsultarProdutosdasOpemaberto1Click(Sender: tObject);
    procedure ransfernciadeContaCaixa1Click(Sender: tObject);
    procedure Cidades1Click(Sender: tObject);
    procedure RegraNAturezadeOperao1Click(Sender: tObject);
    procedure SituaoTributria1Click(Sender: tObject);

    function ProcuraINI: Boolean;

    procedure LBLinkBlogMouseMove(Sender: tObject; Shift: TShiftState;
      X, Y: Integer);
    procedure Image1MouseMove(Sender: tObject; Shift: TShiftState;
      X, Y: Integer);
    procedure Ajuda1Click(Sender: tObject);
    procedure WEB1Click(Sender: tObject);
    procedure AuxlioaoUsurioBlogNovi1Click(Sender: tObject);
    procedure WebSite1Click(Sender: tObject);
    procedure CoolBarMouseMove(Sender: tObject; Shift: TShiftState;
      X, Y: Integer);
    procedure LBLinkBlogClick(Sender: tObject);
    procedure MarkupComissaoClick(Sender: tObject);
    procedure Licena1Click(Sender: tObject);
    procedure ExportardadospEFDContbil1Click(Sender: tObject);
    procedure KardexClick(Sender: tObject);
    procedure KardexTransferClick(Sender: tObject);
    procedure EmissodeNFSe1Click(Sender: tObject);
    procedure SpBAjudaClick(Sender: tObject);
    procedure KardexZerarClick(Sender: tObject);
    procedure EntradaeSadaManualClick(Sender: tObject);
    procedure VinculaoEntradadeNota1Click(Sender: tObject);
    procedure Custos1Click(Sender: tObject);
    procedure ipodePedido1Click(Sender: tObject);
    procedure AnlisedeCrdito1Click(Sender: tObject);
    procedure PedidodeProduo1Click(Sender: tObject);
    procedure CEmpresaExit(Sender: tObject);
    procedure NotasdeEntradaseSaidasporProduto1Click(Sender: tObject);
    procedure Observaes1Click(Sender: tObject);
    procedure ConciliaoBancria1Click(Sender: tObject);
    procedure AnlisedeCrdito2Click(Sender: tObject);
    procedure Novo1Click(Sender: tObject);
    procedure FluxoCaixaSaldoBanco1Click(Sender: tObject);
    procedure SpedFiscal1Click(Sender: tObject);
    procedure Sintegra2Click(Sender: tObject);
    procedure SpedContribies1Click(Sender: tObject);
    procedure Sobre1Click(Sender: tObject);
    procedure ConversodeMedidas1Click(Sender: tObject);
    procedure btnSuporteRemotoClick(Sender: tObject);
    procedure ConsultaMarkup1Click(Sender: tObject);
    procedure EmissodeRecibo1Click(Sender: tObject);
    procedure EntradaseSadasdeProdutos1Click(Sender: tObject);
    procedure RateioporCentrodeCusto1Click(Sender: tObject);
    procedure miInformaesExecutivasClick(Sender: tObject);
    procedure PedidoWeb1Click(Sender: tObject);
    procedure SincronizarComisses1Click(Sender: tObject);
    procedure GerenciadordeCheques1Click(Sender: tObject);
    procedure FormadePagamento1Click(Sender: tObject);
    procedure GerenciadodeIndustrializao1Click(Sender: tObject);
    procedure AnlisePlanodeContasxCentrodeCusto1Click(Sender: tObject);
    procedure Diretivas1Click(Sender: tObject);
    procedure RxLabel1Click(Sender: tObject);
    procedure Cnae1Click(Sender: tObject);
    procedure FormResize(Sender: tObject);
    procedure Endereamento1Click(Sender: tObject);
    procedure abelaIBPT1Click(Sender: tObject);
    procedure abelaCEST1Click(Sender: tObject);
    procedure abelaCSOSN1Click(Sender: tObject);
    procedure ExecutarScrptSQL1Click(Sender: tObject);
    procedure CurvaABCProdutosporVendedor1Click(Sender: tObject);
    procedure abelasdePreos1Click(Sender: tObject);
    procedure RelatriodeInventarioCiclico1Click(Sender: tObject);
    procedure Estilo1Click(Sender: tObject);
    procedure JvImage2Click(Sender: tObject);
    procedure TestaTipoForm(Sender: tObject);
    procedure eXPEDIO1Click(Sender: tObject);
    procedure Button1Click(Sender: tObject);
    procedure Button2Click(Sender: tObject);
    procedure CbEmpresaChange(Sender: tObject);
    procedure BoletosDuplicataRecibo1Click(Sender: tObject);
    procedure ImportaoArquivoRetornoBancoCNAB1Click(Sender: tObject);
    procedure ConsultaArquivoRetornoRemessaBancoCNAB1Click(Sender: tObject);
    procedure ExportarArquivoContabilidade1Click(Sender: tObject);
    procedure ImportarXMLNFEsMigrao1Click(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure GiroEstoqueClick(Sender: tObject);
    procedure Timer1Timer(Sender: tObject);
    procedure PNGButton3Click(Sender: tObject);
    procedure Gerenciadordeetiquetas1Click(Sender: tObject);
    procedure ContaCorrenteVerba1Click(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure ColaboradorClick(Sender: tObject);
    procedure Equipamento1Click(Sender: tObject);
    procedure Ocorrencias1Click(Sender: tObject);
    procedure Ocorrncia1Click(Sender: tObject);
    procedure miConsultaPedidoscomGradeClick(Sender: tObject);
    procedure miApontamentosClick(Sender: TObject);
    procedure miGerenciarApontamentoClick(Sender: TObject);
    procedure miCustosEntradaClick(Sender: TObject);
    procedure miItemservioClick(Sender: TObject);
    procedure TimerbakcupTimer(Sender: TObject);
    procedure miNFe401Click(Sender: TObject);
    procedure miVendasperdidasClick(Sender: TObject);
    procedure miImportarCteClick(Sender: TObject);
    procedure miCRMClick(Sender: TObject);
    procedure miConsultarenovacaoClick(Sender: TObject);
    procedure miInadimplenciaClick(Sender: TObject);
    procedure miposicaoestoqueClick(Sender: TObject);
    procedure miorcamentoClick(Sender: TObject);
    procedure miServiosClick(Sender: TObject);
    procedure Formaoprecos1Click(Sender: TObject);
    procedure micadastroprocessosClick(Sender: TObject);
    procedure miPCPClick(Sender: TObject);
    procedure miApontamentosdeCarga1Click(Sender: TObject);
    procedure miPedidoindustrializaoClick(Sender: TObject);
    procedure Pivot1Click(Sender: TObject);
    procedure AtualizaoMercos1Click(Sender: TObject);
    procedure miApontarClick(Sender: TObject);
    procedure miturnosClick(Sender: TObject);
    procedure miSetorClick(Sender: TObject);
    procedure PNGButton1Click(Sender: TObject);
    procedure imgSuporteClick(Sender: TObject);
    procedure imgDashboardClick(Sender: TObject);
    procedure miDashboardClick(Sender: TObject);
    procedure Origemdocliente1Click(Sender: TObject);
    procedure Exportarimagensdobanco1Click(Sender: TObject);
    procedure Unidadedemedida1Click(Sender: TObject);
    procedure miDemandaProducaoClick(Sender: TObject);
    procedure miGerenciamentoPCPClick(Sender: TObject);

    procedure NovoApontamentos1Click(Sender: TObject);
    procedure Previsodecompras1Click(Sender: TObject);
    procedure miEnvaseprodutosClick(Sender: TObject);
    procedure Artefato1Click(Sender: TObject);
    procedure SeodeArame1Click(Sender: TObject);
    procedure Classificao1Click(Sender: TObject);
    procedure ipodeGancho1Click(Sender: TObject);
    procedure Acabamentosuperficial1Click(Sender: TObject);
    procedure Acabamentodecores1Click(Sender: TObject);
    procedure mitratamentosuperficialClick(Sender: TObject);
    procedure Habilitarcampospelotipo1Click(Sender: TObject);
    procedure iposdeEmbalagem1Click(Sender: TObject);
    procedure Parmetros1Click(Sender: TObject);
    procedure ControledeQualidade1Click(Sender: TObject);
    procedure CustoDeFabricaPorCentroDeCustoClick(Sender: TObject);
    procedure RentabilidadedaOS1Click(Sender: TObject);
    procedure SolicitaodeCompra1Click(Sender: TObject);
    procedure XMLSCOAManaus1Click(Sender: TObject);
    procedure Programaodosprocessos1Click(Sender: TObject);
    procedure Cotao1Click(Sender: TObject);
    procedure CEmpresaEnter(Sender: TObject);
    procedure CbEmpresaEnter(Sender: TObject);
    procedure RegularizaodeEstoques1Click(Sender: TObject);
    procedure RequisiodeMaterial1Click(Sender: TObject);
    procedure lbFechaPainelInformativoClick(Sender: TObject);
    procedure imgFacebookClick(Sender: TObject);
    procedure imgInstagramClick(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure btNovidadeClick(Sender: TObject);
    procedure OrigemdaRequisiodeMateriais1Click(Sender: TObject);
    procedure Capacidade1Click(Sender: TObject);
    procedure FichadecontedodeImportao1Click(Sender: TObject);
    procedure Histricodoenviodeemail1Click(Sender: TObject);
    procedure MainMenuChange(Sender: TObject; Source: TMenuItem; Rebuild: Boolean);
    procedure Button1000Click(Sender: TObject);
  private
    LastActiveForm: String;
    empCodigo: string;
    idRetorno : integer;

    { Procedimentos }

    procedure AlteraEmpresa(const sEmp_Codigo: String; pShowMsg: Boolean);
    procedure AtualizaParametros;

    procedure dadosempresatela;
    procedure LiberaAcessoMenus;
    procedure AgendadorBackup;
    function FormatarNomeBackup : string;
  public
    { Public declarations }

    wEmpresa, wMsgSataus: String;
    bFezBackup: boolean;
    wBtnAlt_IPI: String[001];
    wPub_Estoque: String[001];
    wBaixaEstqAlmox: String[001];

    wBtnDuplica: String[001];
    wDescrCompl: String[001];
    wVariacoes: String[001];
    wPmtOPsProduzir: String[001];

    wPermitirSaldoZero: String[001];
    { S=Sim permite, N=Não permite saldo zero no Item de pedido }

    wServicoCliente: String[001];
    { Mostra a Aba de Servicos no cadastro de clientes caso o parametro = S }
    sProjetoCaixa: String[001];
    sGerarNumLote: String[001];
    bUtilizaNfse: Boolean;
    // subspastas do sistema
    PathNewFotos: String[050];

    PathNewRel: String[050];
    PathIniNF: String[050];
    wFiltroProduto: String;
    // wPmt_Unformula     : Integer;

    iCasaDecimaisOcp: Integer;
    // BancoConexao       : TConexaoBase;

    wPmt_Amx_Faturamento: string[4];
    wPmt_Utiliza_Complemento_Pedido_NotaFiscal: String[001];
    wPmt_Utiliza_Analise_Producao: String[001];
    wPrm_Cadastro_Produto_Tela_Venda: Boolean;
    bUtilizaRecursosAvancadosCentroCusto: Boolean;
    bAtivaCoParticipacao: Boolean;
    iRegistroSelecionado: Integer;
    sCaminhoServidorPCP: WideString;

    sTipoBaseCustoProducao: String;

    procedure ApplicationEvents1Message(var Msg: TMsg; var Handled: Boolean);
    Function ChamaLogin: Boolean;

  end;

var
  FrmMenu: TFrmMenu;

implementation

uses Uteis, Rep0001, Trp0001, Ban0001, Eve0001, Pag0001,
  uPedidosExpedicao, uGiroDoEstoque, cNab0002,
  Prd0001, Prd0002, Prd0003, Prd0004, Prd0005,
  Reg0001, CCT0001, Pcl0001, Sab0001, Flu0001, Cli0001,
  Cli0004, Ope0001, OCP0001,  Nfs0001, For0001, Balanco,

  PrdPreco, ICMS0000, SINTEGRA, EvR0001,
  PCX0000, DataCad, CAIXA001, Caixa002, Fat0000, Trib0001,
  Cus0001, GimpCust, CEL0002, CEL0005,
  Cus0002, PrevC001, GImpAdmi, Emp0001, Almox0001, Usuar001,
  Prmd0001, TRANSFCLIE, PrdMedio,
  Nfs0003, sis00072, cnab0001, cnab0003, GImpBoletos, ConfiguraBancoForm,
  Fat0004, OsvN0001, OsvN0002, ImpCh,
  Dep0001, Rec0005, Ped0008, SEQ0000, Mnt0001,
  CEL0008,
  Nat0001, Cheque0002, OsvN0008, TRANSFCTACAIXA,
  CID0001, RNOP0001, STR0001, markup001, val0002, LicencaForm, Comimedia,
  EFD0001, KAR0001, KAR0002, KAR0003, KAR0004, PCX0002, PCX0001,
  uPedido, Opv00001, uFinanceiroAnaliseCredito,
  uBackupRestore, uProdutoCompraVenda, uCadastroFrases,
  uFinanceiroConciliacao, SIE0000, Flu0001Simples, Sped, uPedidoPCP,
  uCadastroConversaoMedida, uConsulaMarkup, uRecibo, SpedFiscal,
  uEntradaSaidaProdutos, uFinanceiroManutencaoRateio, uPedidoWeb, uCheque,
  EnfIndustrializacao, uFinanceiroPlanoContasCentroCusto, uCadastroDiretiva,
  uCnae, uProdutoEnderecamento, IbptForm, CestForm, CSOSNForm,
  ScriptForm,  ProdutosPorVendedorForm, PesquisaTabelasForm,
  SelectStyleForm,
  uRelatorioInventarioCiclico, EditCompartilhamentoDb, ImportarXMLMigracaoNovi,
  CEL0001,  Animacao, UPesqContaCorrenteCredito, UPesqEquip,
  UPesqOcorrencia, MonOperacoes,
  EtiqGerenciador, uPesqColaborador, UPesqOperacoes, PesqPedidoGrade , frmApontamentoFab, nfse_principal, UPesqServico, nfe40_main, UPedidoDoacao,
  PesqVendaPerdida, pesqcte,   uPesqRenovacao, upesqtarefas, usobre, uPesqInadimplencia, Rec0003, Pag0004, uPosicaoEstoque,
  uPesqProcessos, uIncApontaIndustrial, uSimulacaoPrecoServico,
  UPesqOrcamentoPRO, uPesqpcp, uPesqPedidoIndus, uPesqServicoPRO, uPesqTurno, uPivotCliente, uPesqFormaPrecos, PesqApontamentos,
  uPesqSetor, uFichaConteudoImportacao,
  uMercosAtualizacao  ,
  upesqissmunicipio,uDashboradCom, urlmon, upesqcliorigem,pesqunidade , uDemandaProducao, uGerenciamentoPCP, uNovoAponta, uPrevisaoCompras, uEnvaseProdutos, uPesqArtefato, uPesqArame,
  uPesqClassificacao, uPesqGancho, uPesqAcabamentoSup,PesqCores, upesqtratamento, uPesqTipoMola, uPesqParametrosDaQualidade, uControleDeQualidade, uPesqTipoEmbalagem,
  CustoFabricaCentroCusto, uRentabilidadeOS, uSolicitacaoCompra, uXMLSCOAManaus, uProgramacaoProcessoFabricacao, UCotacaoPesquisa, uCotacaoAutorizacao, uRegularizacaoEstoque,
  uRequisicaoMaterial, uPesqRequisicaoMaterialOri, uPesqCapacidade, uHistoricoEmail,
  testes, uDashboradInteligencia;



{$R *.DFM}
  // procedure ChamaFormularioBackup; external 'Backup.dll' name 'ChamaFormularioBackup';

procedure TFrmMenu.Clientes1Click(Sender: tObject);
begin
  SpBClientesClick(Nil);
end;

procedure TFrmMenu.Representantes1Click(Sender: tObject);
begin
  FormRepres := TFormRepres.Create(Application);
  try
    FormRepres.ShowModal;
  finally
    FreeAndNil(FormRepres);
  end;
end;

procedure TFrmMenu.RequisiodeMaterial1Click(Sender: TObject);
begin
  if not assigned(frmRequisicaoMaterial) then
    frmRequisicaoMaterial := TfrmRequisicaoMaterial.Create(Application);
  frmRequisicaoMaterial.Show;
end;

procedure TFrmMenu.Transportadoras1Click(Sender: tObject);
begin
  if not assigned(FormTransport) then
  begin
    FormTransport := TFormTransport.Create(Application);
    FormTransport.BotoesAcesso;
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      FormTransport.Position := poDesktopCenter;

    // finally
    // FreeAndNil(FormTransport);
    // end;
  end;
  FormTransport.Show;
end;

procedure TFrmMenu.Bancos1Click(Sender: tObject);
begin
  if not assigned(FormBanco) then
  Begin
    FormBanco := TFormBanco.Create(Application);
    FormBanco.BotoesAcesso;
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      FormBanco.Top := 0;
    // FormBanco.Position :=  poDesktopCenter;

    // finally
    // FreeAndNil(FormBanco);
    // end;
  end;
  FormBanco.Show;
end;

procedure TFrmMenu.Receber1Click(Sender: tObject);
begin
  if not assigned(FormContasRecParceGrid) then
    FormContasRecParceGrid :=TFormContasRecParceGrid.Create(Application);
  try
    FormContasRecParceGrid.BotoesAcesso;
    FormContasRecParceGrid.SalvaEstadoPesquisa := True;
    FormContasRecParceGrid.LeEstadoPesquisa := true;
    FormContasRecParceGrid.ShowModal;
  finally
    FreeAndNil(FormContasRecParceGrid);
  end;

end;

procedure TFrmMenu.Pagar1Click(Sender: tObject);
begin

  FormContasPagarGrid :=TFormContasPagarGrid.Create(Application);
  try
    FormContasPagarGrid.BotoesAcesso;
    FormContasPagarGrid.SalvaEstadoPesquisa := True;
    FormContasPagarGrid.LeEstadoPesquisa := True;
    FormContasPagarGrid.ShowModal;
  finally
   FreeAndNil( FormContasPagarGrid );

  end;


end;

procedure TFrmMenu.Lcto_EventosClick(Sender: tObject);
begin
  FormEveRepres := TFormEveRepres.Create(Application);
  try
    FormEveRepres.ShowModal;
  finally
    FreeAndNil(FormEveRepres);
  end;
end;

procedure TFrmMenu.sairClick(Sender: tObject);
begin
  close;
end;

procedure TFrmMenu.SalododeBanco1Click(Sender: tObject);
begin
  if not assigned(FormSaldoBAnco) then
  begin
    // try
    FormSaldoBAnco := TFormSaldoBAnco.Create(Application);
    FormSaldoBAnco.BotoesAcesso;
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0);
    // finally
    // FormSaldoBAnco.Destroy;
    // FormSaldoBAnco := nil;
    // end;
  end;
  FormSaldoBAnco.Show;
end;

procedure TFrmMenu.FluxoDeCaixa1Click(Sender: tObject);
begin
  if not assigned(FormFluxoCaixa) then
  begin
    FormFluxoCaixa := TFormFluxoCaixa.Create(Application);
    FormFluxoCaixa.BotoesAcesso;
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      FormFluxoCaixa.Top := 0;

    // finally
    // FreeAndNil(FormFluxoCaixa);
    // end;
  end;
  FormFluxoCaixa.Show;
end;

procedure TFrmMenu.BitBtn1Click(Sender: tObject);
begin
  close;
end;

procedure TFrmMenu.BoletosDuplicataRecibo1Click(Sender: tObject);
begin
  if not assigned(FrmGimpBoletos) then
  begin
    FrmGimpBoletos := TFrmGimpBoletos.Create(Application);
    FrmGimpBoletos.BotoesAcesso;
    // try
    // if (MDIChildCount > 1) then
    //  SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    // else
    //  FrmGimpBoletos.Top := 0;
    // finally
    // FreeAndNil(FrmGimpBoletos);
    // end;
  end;
  FrmGimpBoletos.Show;
end;

procedure TFrmMenu.Regiao1Click(Sender: tObject);
begin
  /// try
  if not assigned(FormRegiao) then
  begin
    FormRegiao := TFormRegiao.Create(Application);
    FormRegiao.BotoesAcesso;
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)

      // finally
      // FormRegiao.Destroy;
      // FormRegiao := nil;
      // end;
  end;
  FormRegiao.Show;
end;

procedure TFrmMenu.Atividade1Click(Sender: tObject);
begin
  if not assigned(FormCliAtividade) then
  begin
    FormCliAtividade := TFormCliAtividade.Create(Application);
    FormCliAtividade.BotoesAcesso;
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)

      // finally
      // FreeAndNil(FormCliAtividade);
      // end;
  end;
  FormCliAtividade.Height := 188;
  FormCliAtividade.Width := 427;
  FormCliAtividade.Show;
end;

procedure TFrmMenu.OperacaoClick(Sender: tObject);
begin
  FormOperFisc := TFormOperFisc.Create(Application);
  try
    FormOperFisc.ShowModal;
  finally
    FormOperFisc.Destroy;
    FormOperFisc := nil;
  end;
end;

procedure TFrmMenu.Timer1Timer(Sender: tObject);
begin
  if (MDIChildCount > 1) then
    PNGButton3.Visible := true
  else
    PNGButton3.Visible := false;



end;

procedure TFrmMenu.TimerbakcupTimer(Sender: TObject);
var
  hh, min, seg,mseg: word;
begin
  if not bFezBackup then
  begin
    DecodeTime(time,hh,min,seg,mseg);
    if (hh in [12,13])  then
       AgendadorBackup; //agendador de backup automático

  end;

end;

procedure TFrmMenu.TipoProdutoClick(Sender: tObject);
begin
  if not assigned(FormProdTipo) then
  begin
    FormProdTipo := TFormProdTipo.Create(Application);
    FormProdTipo.BotoesAcesso;
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)

      // finally
      // FreeAndNil( FormProdTipo );
      // end;
  end;
  FormProdTipo.Show;
end;

procedure TFrmMenu.GrupoProdutoClick(Sender: tObject);
begin
  if not assigned(FormProdGrupo) then
  begin
    // try
    FormProdGrupo := TFormProdGrupo.Create(Application);
    FormProdGrupo.BotoesAcesso;
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)

      // finally
      // FormProdGrupo.Destroy;
      // FormProdGrupo := nil;
      // end;
  end;
  FormProdGrupo.Show;
end;

procedure TFrmMenu.Habilitarcampospelotipo1Click(Sender: TObject);
begin
   if not assigned(frmPesqtipoMola) then
    frmPesqtipoMola := TfrmPesqtipoMola.Create(Application);
  frmPesqtipoMola.Show;

end;

procedure TFrmMenu.Histricodoenviodeemail1Click(Sender: TObject);
begin
  if not assigned(frmHistoricoEmail) then
    frmHistoricoEmail := TfrmHistoricoEmail.Create(Application);
  frmHistoricoEmail.Show;
end;

procedure TFrmMenu.LinhaProdutoClick(Sender: tObject);
begin
  if not assigned(FormPrdLinha) then
  begin
    FormPrdLinha := TFormPrdLinha.Create(Application);
    FormPrdLinha.BotoesAcesso;
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)

      // finally
      // FreeAndNil(FormPrdLinha);
      // end;
  end;
  FormPrdLinha.Show;
end;

procedure TFrmMenu.Classificao1Click(Sender: TObject);
begin
 if not Assigned(frmPesqClassificacao) then
  frmPesqClassificacao := tfrmPesqClassificacao.create(self);
  frmPesqClassificacao.showmodal;
end;

procedure TFrmMenu.ClassIPIClick(Sender: tObject);
begin
  // try
  if not assigned(FormPrd_Ipi) then
  begin
    FormPrd_Ipi := TFormPrd_Ipi.Create(Application);
    FormPrd_Ipi.BotoesAcesso;
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)

      // finally
      // FormPrd_Ipi.Destroy;
      // FormPrd_Ipi := nil;
      // end;
  end;
  FormPrd_Ipi.Show;
end;

procedure TFrmMenu.representanteClick(Sender: tObject);
begin
  if not assigned(FormRepres) then
  begin
    FormRepres := TFormRepres.Create(Application);
    FormRepres.BotoesAcesso;
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      FormRepres.Position := poDesktopCenter;

    // finally
    // FreeAndNil(FormRepres);
    // end;
  end;
  FormRepres.Show;
end;

procedure TFrmMenu.PedidosClick(Sender: tObject);
begin
  if DBInicio.Empresa.wPmt_TelaPedidoDoacao then
  begin
    if not assigned(frmPedidoDoacao) then
    begin
      frmPedidoDoacao := TfrmPedidoDoacao.Create(Application);

      if (MDIChildCount > 1) then
        SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)

    end;
     frmPedidoDoacao.Show;
  end
  else
  begin
    if not assigned(FrmPedido) then
    begin
      FrmPedido := TFrmPedido.Create(Application);
      FrmPedido.BotoesAcesso;
      if (MDIChildCount > 1) then
        SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
      else
        FrmPedido.Top := 0;
    end;
    FrmPedido.Show;
  end;



end;

procedure TFrmMenu.EntradaNotasClick(Sender: tObject);
begin
  FormContasPagar := TFormContasPagar.Create(Application);
  FormNfEntrada := TFormNfEntrada.Create(Application);
  try
    begin
      FormNfEntrada.ShowModal;
    end;
  finally
    FormNfEntrada.Destroy;
    FormNfEntrada := nil;
    FormContasPagar.Destroy;
    FormContasPagar := nil;
  end;
end;

procedure TFrmMenu.FornecedorClick(Sender: tObject);
begin
  if not assigned(FormFornec) then
  begin
    FormFornec := TFormFornec.Create(Application);
    FormFornec.BotoesAcesso;
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      FormFornec.Top := 0;

    // finally
    // FreeAndNil( FormFornec );
    // end;
  end;
  FormFornec.Show;
end;

procedure TFrmMenu.EventosRep1Click(Sender: tObject);
begin
  if not assigned(FormEveRepres) then
  begin
    // try
    FormEveRepres := TFormEveRepres.Create(Application);
    FormEveRepres.BotoesAcesso;
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0);

  end;
  FormEveRepres.Show;
end;

procedure TFrmMenu.Balano1Click(Sender: tObject);
begin
   FormBalanco := TFormBalanco.Create(Application);
  try
    wPub_Estoque := 'B'; // Balanço
    FormBalanco.ShowModal;
  finally
    FormBalanco.Destroy;
    FormBalanco := nil;
  end;
end;

procedure TFrmMenu.TransmissoBancos1Click(Sender: tObject);
begin
  if not assigned(FormGeradorCNAB) then
  begin
    FormGeradorCNAB := TFormGeradorCNAB.Create(Application);
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0);

  end;
  FormGeradorCNAB.Show;
end;

procedure TFrmMenu.AtualizaodePreo1Click(Sender: tObject);
begin
  FormAtualizaPreco := TFormAtualizaPreco.Create(Application);
  try
    FormAtualizaPreco.ShowModal;
  finally
    FreeAndNil(FormAtualizaPreco);
  end;
end;

procedure TFrmMenu.ParcelasFaturamento1Click(Sender: tObject);
begin
   FormParcelas := TFormParcelas.Create(Application);
  try
    FormParcelas.ShowModal;
  finally
    FormParcelas.Destroy;
    FormParcelas := nil;
  end;
end;

procedure TFrmMenu.Parmetros1Click(Sender: TObject);
begin
  if not assigned(frmPesqParametrosDaQualidade) then
  begin
    frmPesqParametrosDaQualidade := TfrmPesqParametrosDaQualidade.Create(Application);
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      frmPesqParametrosDaQualidade.Top := 0;

  end;
  frmPesqParametrosDaQualidade.Show;
end;

procedure TFrmMenu.Eventos2Click(Sender: tObject);
begin

  // try
  if not assigned(FormEvento) then
  begin
    FormEvento := TFormEvento.Create(Application);
    FormEvento.BotoesAcesso;
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)

      // finally
      // FormEvento.Destroy;
      // FormEvento := nil;
      // end;
  end;
  FormEvento.Show;
end;

procedure TFrmMenu.AliquotasICMS1Click(Sender: tObject);
begin
  if not assigned(FormAliqICms) then
  begin
    // try
    FormAliqICms := TFormAliqICms.Create(Application);
    FormAliqICms.BotoesAcesso;
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      FormAliqICms.Top := 0;

    // finally
    // FormAliqICms.Destroy;
    // FormAliqICms := nil;
    // end;
  end;
  FormAliqICms.Show;
end;

procedure TFrmMenu.Cheques1Click(Sender: tObject);
begin
  if not assigned(FormImpCheque) then
  begin
    FormImpCheque := TFormImpCheque.Create(Application);
    FormImpCheque.BotoesAcesso;
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      FormImpCheque.Top := 0;

    // finally
    // FreeAndNil(FormImpCheque);
    // end;
  end;
  FormImpCheque.Show;
end;

procedure TFrmMenu.ContasdeAnalise2Click(Sender: tObject);
begin
   FormContAnalise := TFormContAnalise.Create(Application);
  try
    FormContAnalise.ShowModal;
  finally
    FormContAnalise.Destroy;
    FormContAnalise := nil;
  end;
end;

procedure TFrmMenu.ControledeQualidade1Click(Sender: TObject);
begin
  if not Assigned(frmControleDeQualidade) then
    frmControleDeQualidade := TfrmControleDeQualidade.Create(application);
  frmControleDeQualidade.show;
end;

procedure TFrmMenu.Produtos1Click(Sender: tObject);
begin
  SpBProdutosClick(Nil);
end;

procedure TFrmMenu.Programaodosprocessos1Click(Sender: TObject);
begin
  if not Assigned(frmProgramacaoProcessoFabricacao) then
    frmProgramacaoProcessoFabricacao := TfrmProgramacaoProcessoFabricacao.Create(application);
  frmProgramacaoProcessoFabricacao.show;
end;

procedure TFrmMenu.ContaCorrenteVerba1Click(Sender: tObject);
// var tcr : tfmPesqContaCorrenteCredito;
begin
  if not assigned(fmPesqContaCorrenteCredito) then
  begin
    fmPesqContaCorrenteCredito := TfmPesqContaCorrenteCredito.Create(application);
    fmPesqContaCorrenteCredito.BotoesAcesso;
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      fmPesqContaCorrenteCredito.Top := 0;

    // finally
    // FreeAndNil(FormOrdCompra);
    // end;
  end;
  fmPesqContaCorrenteCredito.Show;

end;

procedure TFrmMenu.ContaProjetoCaixa1Click(Sender: tObject);
begin
   FormProjCaixa := TFormProjCaixa.Create(Application);
  try
    FormProjCaixa.ShowModal;
  finally
    FormProjCaixa.Destroy;
    FormProjCaixa := nil;
  end;
end;

procedure TFrmMenu.OrdemdeCompra2Click(Sender: tObject);
begin
  if not assigned(FormOrdCompra) then
  begin
    FormOrdCompra := TFormOrdCompra.Create(Application);
    FormOrdCompra.BotoesAcesso;
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      FormOrdCompra.Top := 0;

    // finally
    // FreeAndNil(FormOrdCompra);
    // end;
  end;
  FormOrdCompra.Show;
end;

procedure TFrmMenu.OrigemdaRequisiodeMateriais1Click(Sender: TObject);
begin
   if not assigned(frmPesqRequisicaoMaterialOri) then
    frmPesqRequisicaoMaterialOri := TfrmPesqRequisicaoMaterialOri.Create(Application);
  frmPesqRequisicaoMaterialOri.Show;

end;

procedure TFrmMenu.Origemdocliente1Click(Sender: TObject);
begin
   if not assigned(frmPesqOrigemCliente) then
    frmPesqOrigemCliente := TfrmPesqOrigemCliente.Create(Application);
  frmPesqOrigemCliente.Show;
end;

procedure TFrmMenu.EntradadeNotaFiscal1Click(Sender: tObject);
begin
  if not assigned(FormNfEntrada) then
  begin
    FormNfEntrada := TFormNfEntrada.Create(Application);
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      FormNfEntrada.Top := 0;

  end;
  FormNfEntrada.Show;
end;

procedure TFrmMenu.AtualizaodePreos1Click(Sender: tObject);
begin
  if not assigned(FormAtualizaPreco) then
  begin
    FormAtualizaPreco := TFormAtualizaPreco.Create(Application);
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0);

    // finally
    // FreeAndNil( FormAtualizaPreco );
    // end;
  end;
  FormAtualizaPreco.Show;
end;

procedure TFrmMenu.CaixaFixo1Click(Sender: tObject);
begin
  if not assigned(FormCaixaFixo) then
  begin
    FormCaixaFixo := TFormCaixaFixo.Create(Application);
    FormCaixaFixo.BotoesAcesso;
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      FormCaixaFixo.Top := 81;

    // finally
    // FormCaixaFixo.Destroy;
    // FormCaixaFixo := nil;
    // end;
  end;
  FormCaixaFixo.Show;
end;

procedure TFrmMenu.FechamentodoCaixaFixo1Click(Sender: tObject);
begin
  if not assigned(FormCaixaFecha) then
  begin
    FormCaixaFecha := TFormCaixaFecha.Create(Application);
    FormCaixaFecha.BotoesAcesso;
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      FormCaixaFecha.Top := 104;

    // finally
    // FreeAndNil(FormCaixaFecha);
    // end;
  end;
  FormCaixaFecha.Height := 440;
  FormCaixaFecha.Width := 580;
  FormCaixaFecha.Show;
end;

procedure TFrmMenu.FichadecontedodeImportao1Click(Sender: TObject);
begin
  if not assigned(frmFichaConteudoImportacao) then
    frmFichaConteudoImportacao := TfrmFichaConteudoImportacao.Create(Self);
  frmFichaConteudoImportacao.Show;
end;

procedure TFrmMenu.Faturamento2Click(Sender: tObject);
begin
  if not assigned(FormFaturamento) then
  begin
    // try
    FormFaturamento := TFormFaturamento.Create(Application);
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      FormFaturamento.Top := 0;

    // Finally
    // FormFaturamento.Destroy;
    // FormFaturamento := nil;
    // end;
  end;
  FormFaturamento.Show;
end;

procedure TFrmMenu.FormCreate(Sender: tObject);


begin

  Height := 636;
  Width := 1144;

  Image2.Width := Screen.Width;
  //labelicencas.Left := Screen.Width - (labelicencas.Width + 30);
  RxLEmpresa.Left := Screen.Width -
    (RxLEmpresa.Width );
  RxLversao.Left := 522;//Screen.Width - (Screen.Width div 2);

  inherited;

  self.DoubleBuffered := true;
  RxLversao.Caption := 'Versão : ' + DBInicio.Versao.VERSAOCOMPLETO;
  imgLogoNovi.Top := self.Height - 205;
  LastActiveForm := '';
  Screen.OnActiveFormChange := TestaTipoForm;

  Status.Panels[1].Text := DateTimeToStr(date);
  Status.Panels[0].Text := 'Usuário: ' + DBInicio.Usuario.NOME;
  ExecutarScrptSQL1.Enabled := DELPHIABERTO;

  self.WindowState := wsMaximized;

  dadosempresatela;




  if FileExists(ExtractFileDir(Application.ExeName) + '\logo\fundo\' +
    DBInicio.Emp_Codigo + '.jpg') then
    Image1.Picture.LoadFromFile(ExtractFileDir(Application.ExeName) +
      '\logo\fundo\' + DBInicio.Emp_Codigo + '.jpg');

end;

procedure TFrmMenu.dadosempresatela;
begin
  AtualizaParametros;
  CEmpresa.Text := DBInicio.Empresa.Emp_Codigo;
  CbEmpresa.Text := DBInicio.Empresa.RAZAO;
  ImglogoMenu.Picture.Bitmap := nil;
  ImglogoMenu.Picture.assign(DBInicio.Empresa.Logo);
//  if DBInicio.Empresa.CHAVE <> '' then
//    labelicencas.Caption := 'Licenças Autorizadas : ' +
//      IntToStr(Conexoes(DBInicio.Empresa.CHAVE));
end;

procedure TFrmMenu.TestaTipoForm(Sender: tObject);
var
  qtd, X: Integer;
begin
  // compatibilizar novi / baseform
  if assigned(Screen.ActiveForm) then
  begin
    if LastActiveForm <> Screen.ActiveForm.name then
    begin
      if not Screen.ActiveForm.inheritsfrom(tFrmBase) then
      BEGIN
        if DELPHIABERTO then
          Application.OnMessage := Nil
        ELSE
        begin
          Application.OnMessage := ApplicationEvents1Message;
          if Screen.ActiveForm.Tag = 0 then
          begin
            qtd := Screen.ActiveForm.ComponentCount;
            for X := 0 to qtd - 1 do
            begin
              if Screen.ActiveForm.Components[X].inheritsfrom(tCustomEdit) then
                tCustomEdit(Screen.ActiveForm.Components[X]).StyleElements :=
                  [seFont, { seClient, } seBorder];
            end;
          end;
          Screen.ActiveForm.Tag := 1;
        end;
      END
      Else
        Application.OnMessage := Nil;
      LastActiveForm := Screen.ActiveForm.name;
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure TFrmMenu.IssMunicpios1Click(Sender: tObject);
begin
  if not assigned(fmPesqColaborador) then
  begin
    frmIssMunicipios := TfrmIssMunicipios.Create(Application);
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      frmIssMunicipios.Top := 0;

  end;
  frmIssMunicipios.Show;

//  if not assigned(FormCadIssMuni) then
//  begin
//    FormCadIssMuni := TFormCadIssMuni.Create(Application);
//    FormCadIssMuni.BotoesAcesso;
//    // try
//    if (MDIChildCount > 1) then
//      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
//
//      // finally
//      // FreeAndNil(FormCadIssMuni);
//      // end;
//  end;
//  FormCadIssMuni.Show;
end;

procedure TFrmMenu.JvImage2Click(Sender: tObject);
begin
  if not assigned(frmNfe40) then
  begin
    frmNfe40 := TfrmNfe40.Create(Application);

    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)

  end;
  frmNfe40.Show;
end;

procedure TFrmMenu.btNovidadeClick(Sender: TObject);
begin
  pnNovidade.Visible := True;
  btNovidade.Visible := False;
end;

procedure TFrmMenu.tributosEspecficos1Click(Sender: tObject);
begin
  if not assigned(FormCadTributos) then
  begin
    // try
    FormCadTributos := TFormCadTributos.Create(Application);
    FormCadTributos.BotoesAcesso;
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)

      // finally
      // FormCadTributos.Destroy;
      // FormCadTributos:= nil;
      // end;
  end;
  FormCadTributos.Show;
end;

procedure TFrmMenu.Unidadedemedida1Click(Sender: TObject);
begin
 if not Assigned(frmCadUnidadeMedida) then
   frmCadUnidadeMedida := TfrmCadUnidadeMedida.Create(Application);
 frmCadUnidadeMedida.Show;

end;

procedure TFrmMenu.ndicesparaClculodeCustos1Click(Sender: tObject);
begin
  if not assigned(FormCusto) then
  begin
    // try
    FormCusto := TFormCusto.Create(Application);
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0);

    // finally
    // FormCusto.Destroy;
    // FormCusto := nil;
    // end;
  end;
  FormCusto.Show;
end;

procedure TFrmMenu.PlanilhadeCustos1Click(Sender: tObject);
begin
  if not assigned(FormGimpCusto) then
  begin
    // try
    FormGimpCusto := TFormGimpCusto.Create(Application);
    FormGimpCusto.BotoesAcesso;
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      FormGimpCusto.Top := 0;

    // finally
    // FormGimpCusto.Destroy;
    // FormGimpCusto := nil;
    // end;
  end;
  FormGimpCusto.Show;
end;

procedure TFrmMenu.CadastrodeClulas1Click(Sender: tObject);
begin
  if not assigned(FormCelula) then

  begin
    FormCelula := TFormCelula.Create(Application);
    FormCelula.BotoesAcesso;
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0);

    // finally
    // FreeAndNil(FormCelula);
    // end;
  end;
  FormCelula.Show;
end;

procedure TFrmMenu.CadastrodeIntegrantes1Click(Sender: tObject);
begin
  if not assigned(FormComponentes) then
  begin
    // try
    FormComponentes := TFormComponentes.Create(Application);
    FormComponentes.BotoesAcesso;
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0);

    // finally
    // FormComponentes.Destroy;
    // FormComponentes := nil;
    // end;
  end;
  FormComponentes.Show;
end;

procedure TFrmMenu.CadastrodasMetas1Click(Sender: tObject);
begin
  if not assigned(FormMetaProd) then
  begin
    // try
    FormMetaProd := TFormMetaProd.Create(Application);
    FormMetaProd.BotoesAcesso;
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0);

    // finally
    // FormMetaProd.Destroy;
    // FormMetaProd := nil;
    // end;
  end;
  FormMetaProd.Show;
end;

procedure TFrmMenu.miprocessosClick(Sender: tObject);
begin
//  if not assigned(FormPCPCadastro) then
//  begin
//    // try
//    FormPCPCadastro := TFormPCPCadastro.Create(Application);
//    FormPCPCadastro.BotoesAcesso;
//    if (MDIChildCount > 1) then
//      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0);
//
//    // finally
//    // FormPCPCadastro.Destroy;
//    // FormPCPCadastro := nil;
//    // end;
//  end;
//  FormPCPCadastro.Show;
 if not assigned(frmPesqProcessos) then
   frmPesqProcessos := TfrmPesqProcessos.Create(Application);
 frmPesqProcessos.Show;
end;

procedure TFrmMenu.MonitoramentodeClulas1Click(Sender: tObject);
begin
  if not assigned(FormMovCelulas) then
  begin
    // try
    FormMovCelulas := TFormMovCelulas.Create(Application);
    FormMovCelulas.BotoesAcesso;
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0);

    // finally
    // FormMovCelulas.Destroy;
    // FormMovCelulas := nil;
    // end;
  end;
  FormMovCelulas.Show;
end;

procedure TFrmMenu.AtualizaoGeraldeCustos1Click(Sender: tObject);
begin
  if not assigned(FormCustoGlobal) then
  begin
    // try
    FormCustoGlobal := TFormCustoGlobal.Create(Application);
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0);

    // finally
    // FormCustoGlobal.Destroy;
    // FormCustoGlobal := nil;
    // end;
  end;
  FormCustoGlobal.Show;
end;

procedure TFrmMenu.AtualizaoMercos1Click(Sender: TObject);
begin
  if not assigned(frmAtualizaMercos) then
     frmAtualizaMercos := TfrmAtualizaMercos.Create(Application);
  frmAtualizaMercos.Show;
end;

procedure TFrmMenu.CadastrodaEmpresa1Click(Sender: tObject);
begin
  FormEmpresa := TFormEmpresa.Create(Application);
  FormEmpresa.BotoesAcesso;
  try
    FormEmpresa.ShowModal;
    if FormEmpresa.ModalResult = mrOk then
      SpBLogoffClick(nil);
  finally
    FreeAndNil(FormEmpresa);
  end;
end;

procedure TFrmMenu.CadastroUsuariosClick(Sender: tObject);
begin
  FrmCadastroUsuario := TFrmCadastroUsuario.Create(Application);
  FrmCadastroUsuario.BotoesAcesso;
  try
    FrmCadastroUsuario.ShowModal;
    if FrmCadastroUsuario.ModalResult = mrOk then
      SpBLogoffClick(nil);
  finally
    FreeAndNil(FrmCadastroUsuario);
  end;
  imgDashboard.Visible := DBInicio.Empresa.bUSP_DASH_VENDAS
                          or DBInicio.Empresa.bUSP_DASH_FINANCEIRO
                          or (dbInicio.BuscaUmDadoSqlAsString('SELECT USP_DASH_INTELIGENCIA FROM USUARIO_PARAMETRO WHERE USP_COD_USUARIO = ' + DBInicio.Usuario.CODIGO) = 'S');
  imgSuporte.Visible := DBInicio.Empresa.bUSP_ABRICHAMADO;
end;

procedure TFrmMenu.InformaesExecutivas1Click(Sender: tObject);
begin
  if not assigned(FormGImpRelAdm) then
  begin
    // try
    FormGImpRelAdm := TFormGImpRelAdm.Create(Application);
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      FormGImpRelAdm.Top := 81;

    // finally
    // FormGImpRelAdm.Destroy;
    // FormGImpRelAdm := nil;
    // end;
  end;
  FormGImpRelAdm.Show;
end;

procedure TFrmMenu.Almoxarifado1Click(Sender: tObject);
begin
  // try
  if not assigned(FormCadAlmox) then
  begin
    FormCadAlmox := TFormCadAlmox.Create(Application);
    FormCadAlmox.BotoesAcesso;
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)

      // finally
      // FormCadAlmox.Destroy;
      // FormCadAlmox := nil;
      // end;
  end;
  FormCadAlmox.Show;
end;

procedure TFrmMenu.Parametros1Click(Sender: tObject);
begin
  TrimAppmemorySize;
  FormParametros := TFormParametros.Create(Application);
  FormParametros.BotoesAcesso;
  try
    FormParametros.ShowModal;
    if FormParametros.ModalResult = mrOk then
      SpBLogoffClick(nil);

  finally
    FreeAndNil(FormParametros);
  end;
  TrimAppmemorySize;
end;

procedure TFrmMenu.SpBSaidaClick(Sender: tObject);
begin
  lbFechaPainelInformativoClick(Sender);
  if DELPHIABERTO then
    close
  Else

  // if messageDlg('Deseja realmente sair do sistema?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    Uteis.aviso('Não esqueça de fazer Backup ao final de cada dia !');
    close;
  end;
end;

procedure TFrmMenu.SpBLogoffClick(Sender: tObject);
begin
  lbFechaPainelInformativoClick(Sender);
  ChamaLogin;
  imgSuporte.Visible := DBInicio.Empresa.bUSP_ABRICHAMADO;
  Status.Panels[0].Text := 'Usuário: ' + DBInicio.Usuario.NOME;
  imgDashboard.Visible := DBInicio.Empresa.bUSP_DASH_VENDAS
                          or DBInicio.Empresa.bUSP_DASH_FINANCEIRO
                          or (dbInicio.BuscaUmDadoSqlAsString('SELECT USP_DASH_INTELIGENCIA FROM USUARIO_PARAMETRO WHERE USP_COD_USUARIO = ' + DBInicio.Usuario.CODIGO) = 'S');
end;

procedure TFrmMenu.SpBClientesClick(Sender: tObject);
begin
  lbFechaPainelInformativoClick(Sender);
  if Not DBInicio.LaunchExe('CLIENTES') then
  begin
    TrimAppmemorySize;
    if not assigned(FormCliente) then
    begin
      FormCliente := TFormCliente.Create(Self);
      FormCliente.BotoesAcesso;
      if (MDIChildCount > 1) then
      begin
        SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
      end
      else
      begin
        FormCliente.Top := 0;
      end;

      // try

      // finally
      // FreeAndNil(FormCliente);
      // end;
    end;
    FormCliente.Show;
  end;
end;

procedure TFrmMenu.SpBProdutosClick(Sender: tObject);
begin
  lbFechaPainelInformativoClick(Sender);
  if Not DBInicio.LaunchExe('PRODUTOS') then
  begin
    if not assigned(FormProduto) then
    begin
      FormProduto := TFormProduto.Create(Application);
      FormProduto.BotoesAcesso;
        if (MDIChildCount > 1) then
          SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
        else
        // FormProduto.Position := poDesktopCenter;
        begin
          FormProduto.Top := 0;
        end;
      FormProduto.Show;
    end;

  end;
end;

procedure TFrmMenu.SpBPedidosClick(Sender: tObject);
begin
  lbFechaPainelInformativoClick(Sender);
  if DBInicio.Empresa.wPmt_TelaPedidoDoacao then
  begin
    if not assigned(frmPedidoDoacao) then
    begin
      frmPedidoDoacao := TfrmPedidoDoacao.Create(Application);

      if (MDIChildCount > 1) then
        SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)

    end;
     frmPedidoDoacao.Show;
  end
  else
  begin
    if not assigned(FrmPedido) then
    begin
      FrmPedido := TFrmPedido.Create(nil);
      if (MDIChildCount > 1) then
        SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
      else
        FrmPedido.Top := 0;
    end;
    FrmPedido.Show;
  end;
end;

procedure TFrmMenu.SpBProducaoClick(Sender: tObject);
begin
  lbFechaPainelInformativoClick(Sender);
  if NOT Assigned(frmGerenciamentoPCP) then
    frmGerenciamentoPCP:= TfrmGerenciamentoPCP.Create(Application);
  frmGerenciamentoPCP.Show;

{
  if not assigned(FormOrdServCentroGerar) then
  begin
    FormOrdServCentroGerar := TFormOrdServCentroGerar.Create(Application);
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      FormOrdServCentroGerar.Top := 0;

    // finally
    // FreeAndNil( FormOrdServCentroGerar );
    // end;
  end;
  FormOrdServCentroGerar.Show;

  }
end;

procedure TFrmMenu.SpBFaturamentoClick(Sender: tObject);
begin
  lbFechaPainelInformativoClick(Sender);
  if Not DBInicio.LaunchExe('Faturamento') then
  begin
    if not assigned(FormFaturamento) then
    begin
      FormFaturamento := TFormFaturamento.Create(Application);
      // try
      if (MDIChildCount > 1) then
      begin
        SendMessage(ClientHandle, WM_MDICASCADE, 0, 0);
        FormFaturamento.Width := 977;
        FormFaturamento.Height := 631;

      end
      else
      begin
        FormFaturamento.Top := 0;
        // FormFaturamento.Position := poDesktopCenter;
      end;
      // Finally
      // FreeAndNil(FormFaturamento);
      // end;
    end;
    FormFaturamento.Show;
  end;
end;

procedure TFrmMenu.CentrodeCustosClick(Sender: tObject);
begin
  if not assigned(FormProjCaixa) then
  begin
    FormProjCaixa := TFormProjCaixa.Create(Application);
    FormProjCaixa.BotoesAcesso;
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      FormProjCaixa.Top := 0;

    // finally
    // freeandnil(FormProjCaixa);
    // end;
  end;
  FormProjCaixa.Show;
end;

procedure TFrmMenu.PlanodeContasClick(Sender: tObject);
begin
  if not assigned(FormContAnalise) then
  begin
    FormContAnalise := TFormContAnalise.Create(Application);
    FormContAnalise.BotoesAcesso;
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      FormContAnalise.Top := 0;

    // finally
    // FreeAndNil(FormContAnalise);
    // end;
  end;
  FormContAnalise.Show;
end;

procedure TFrmMenu.PNGButton1Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', PChar('https://novisistemas.freshdesk.com/support/login'), '',
    '', SW_SHOWNORMAL)
end;

procedure TFrmMenu.PNGButton3Click(Sender: tObject);
begin
  lbFechaPainelInformativoClick(Sender);
  if (MDIChildCount > 1) then
    SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
end;

procedure TFrmMenu.PrazosdePagamentoClick(Sender: tObject);
begin
  if not assigned(FormParcelas) then
  begin
    FormParcelas := TFormParcelas.Create(Application);
    FormParcelas.BotoesAcesso;
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    ELSE
      FormParcelas.Top := 103;

    // finally
    // FreeAndNil(FormParcelas);
    // end;
  end;
  FormParcelas.Show;
end;

procedure TFrmMenu.SpBBackupClick(Sender: tObject);
begin
  lbFechaPainelInformativoClick(Sender);
//  DataCadastros.SQLConnection1.Connected := false;
//  FrmBackupRestore := TFrmBackupRestore.Create(Application);
//  try
//    FrmBackupRestore.ShowModal;
//  finally
//    FrmBackupRestore.Destroy;
//    FrmBackupRestore := Nil;
//  end;
//  DataCadastros.SQLConnection1.Connected := true;
 if not assigned(PesqTarefas) then
   PesqTarefas := tPesqTarefas.Create(application);
 PesqTarefas.Show;
end;

procedure TFrmMenu.OperacaoFiscalClick(Sender: tObject);
begin
  if not assigned(FormOperFisc) then
  begin
    FormOperFisc := TFormOperFisc.Create(Application);
    FormOperFisc.BotoesAcesso;
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      FormOperFisc.Top := 0;

    // finally
    // FreeAndNil(FormOperFisc);
    // end;
  end;
  FormOperFisc.Show;
end;

procedure TFrmMenu.CompartilhamentoDB1Click(Sender: tObject);
var
  tcr: TfrmEditCompartilhamentoDb;
begin
  tcr := TfrmEditCompartilhamentoDb.Create(self);
  try
    tcr.EditaUnico('Estruturação da Base de Dados Multi-Empresa');
    if tcr.ModalResult = mrOk then
    begin
      SpBLogoffClick(nil);
      dbinicio.CarregarCompartilhamentos;
    end;
  finally
    FreeAndNil(tcr);
  end;
end;

procedure TFrmMenu.BackupDadosClick(Sender: tObject);
begin
  DataCadastros.SQLConnection1.Connected := false;
  FrmBackupRestore := TFrmBackupRestore.Create(Application);
  try

    FrmBackupRestore.ShowModal;
  finally
    FrmBackupRestore.Destroy;
    FrmBackupRestore := Nil;
  end;
  DataCadastros.SQLConnection1.Connected := true;
end;

procedure TFrmMenu.Estilo1Click(Sender: tObject);
var
  tcr: tFrmSelectStyle;
begin
  if not assigned(FrmSelectStyle) then
  begin
    tcr := tFrmSelectStyle.Create(self);
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      tcr.Top := 0;

    // finally
    // freeandnil(tcr);
    // end;
  end;
  tcr.Height := 211;
  tcr.Width := 461;
  tcr.Show;
end;

procedure TFrmMenu.TransfClientes1Click(Sender: tObject);
begin
  if not assigned(FormTransfClie) then
  begin
    // try
    FormTransfClie := TFormTransfClie.Create(Application);
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0);

    // finally
    // FormTransfClie.Destroy;
    // FormTransfClie := nil;
    // end;
  end;
  FormTransfClie.Show;
end;

procedure TFrmMenu.RecalculaPreoMdio1Click(Sender: tObject);
begin
  if not assigned(FormRecalculaPMedio) then
  begin
    // try
    FormRecalculaPMedio := TFormRecalculaPMedio.Create(Application);
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0);

    // finally
    // FormRecalculaPMedio.Destroy;
    // FormRecalculaPMedio := nil;
    // end;
  end;
  FormRecalculaPMedio.Show
end;

procedure TFrmMenu.Vendas1Click(Sender: tObject);
begin
  if not assigned(FormConsultaPedido) then
  begin
    FormConsultaPedido := TFormConsultaPedido.Create(Application);
    FormConsultaPedido.BotoesAcesso;
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      FormConsultaPedido.Top := 0;

    // finally
    // FreeAndNil(FormConsultaPedido);
    // end;
  end;
  FormConsultaPedido.Show;
end;

procedure TFrmMenu.ConsultaArquivoRetornoRemessaBancoCNAB1Click
  (Sender: tObject);
begin
  if not assigned(FrmRetornoCNAB) then
  begin
    // try
    FrmRetornoCNAB := TFrmRetornoCNAB.Create(Application);
    FrmRetornoCNAB.BotoesAcesso;
    // FrmRetornoCNAB.Height                   := 550;
    // FrmRetornoCNAB.Top                      := 0;
    // FrmRetornoCNAB.Left                     := 0;
    // FrmRetornoCNAB.Bevel2.Top               := 492;
    // FrmRetornoCNAB.BitBtnSair.Top           := 497;
    // FrmRetornoCNAB.NbookPages.Height        := 490;
    FrmRetornoCNAB.NbookPages.PageIndex := 0;
    FrmRetornoCNAB.BitBaixaTitulos.Visible := true;
    FrmRetornoCNAB.BitEstornoRemessa.Visible := true;
    FrmRetornoCNAB.BitImprimir1.Visible := true;
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0);

    // finally
    // FrmRetornoCNAB.Destroy;
    // FrmRetornoCNAB := Nil;
    // end;
  end;
  FrmRetornoCNAB.Show;
end;

procedure TFrmMenu.ConsultadeNotaFiscaldeEntrada1Click(Sender: tObject);
begin
  if not assigned(FormConsNFGrid) then
  begin
    FormConsNFGrid := TFormConsNFGrid.Create(Application);
    FormConsNFGrid.BotoesAcesso;
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      FormConsNFGrid.Top := 0;

    // finally
    // FreeAndNil(FormConsNFGrid);
    // end;
  end;
  FormConsNFGrid.Show;
end;

procedure TFrmMenu.CaminhodoBancoDados1Click(Sender: tObject);
begin
  FrmConfiguraBanco := TFrmConfiguraBanco.Create(Application);
  try
    FrmConfiguraBanco.ShowModal;
    if FrmConfiguraBanco.ModalResult = mrOk then
      SpBLogoffClick(nil);
  finally
    FreeAndNil(FrmConfiguraBanco);
  end;
end;

procedure TFrmMenu.Capacidade1Click(Sender: TObject);
begin
   if not assigned(frmPesqCapacidade) then
    frmPesqCapacidade := TfrmPesqCapacidade.Create(Application);
  frmPesqCapacidade.Show;

end;

procedure TFrmMenu.SeodeArame1Click(Sender: TObject);
begin
 if not Assigned(frmPesqArame) then
  frmPesqArame := tfrmPesqArame.create(self);
  frmPesqArame.showmodal;
end;

procedure TFrmMenu.Sequnciador1Click(Sender: tObject);
begin
  if not assigned(FrmSequenciador) then
  begin
    // try
    FrmSequenciador := TFrmSequenciador.Create(Application);
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0);

    // finally
    // FrmSequenciador.Destroy;
    // FrmSequenciador := nil;
    // end;
  end;
  FrmSequenciador.Show;
end;

procedure TFrmMenu.ColaboradorClick(Sender: tObject);
begin
  if not assigned(fmPesqColaborador) then
  begin
    fmPesqColaborador := TfmPesqColaborador.Create(Application);
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      fmPesqColaborador.Top := 0;

  end;
  fmPesqColaborador.Show;
end;

Function TFrmMenu.ChamaLogin: Boolean;
begin
  if DBInicio.Login then
  begin
    DBInicio.OpenIni;
    DBInicio.IniciaDB(DataCadastros.SQLConnection1);
    DBInicio.IniciaDBFireDAC(dbinicio.FDACConn);
    AlteraEmpresa(DBInicio.Empresa.Emp_Codigo, false);
    SpBClientes.Enabled := Clientes1.Enabled;
    SpBProdutos.Enabled := Produtos1.Enabled;
    SpBPedidos.Enabled := Pedidos.Enabled;
    SpBProducao.Enabled := PCPCentrodeProduoNovo1.Enabled;
    SpBFaturamento.Enabled := Faturamento2.Enabled;
    //SpBSaida.Enabled := sair.Enabled;
    //SpBLogoff.Enabled := miLogoff.Enabled;
//    if sair.Enabled then
//      self.BorderIcons := [biSystemMenu,biMinimize,biMaximize]
//    else
//      self.BorderIcons := [];
    SpBBackup.Enabled := BackupDados.Enabled;
    TrimAppmemorySize;
    ImglogoMenu.Picture.Bitmap := nil;
    ImglogoMenu.Picture.assign(DBInicio.Empresa.Logo);
    LiberaAcessoMenus;
  end
  Else
    Application.terminate;
end;

procedure TFrmMenu.ConsultadeNotaFiscaldeSada1Click(Sender: tObject);
begin
  if not assigned(FrmConsultaNFSaida) then
  begin
    FrmConsultaNFSaida := TFrmConsultaNFSaida.Create(Application);
    FrmConsultaNFSaida.BotoesAcesso;
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      FrmConsultaNFSaida.Top := 0;

    // finally
    // FreeAndNil(FrmConsultaNFSaida);
    // end;
  end;
  FrmConsultaNFSaida.Show;
end;

procedure TFrmMenu.PrevisodeConsumodeMaterial2Click(Sender: tObject);
begin
  if not assigned(FormPrevConsumo) then
  begin
    FormPrevConsumo := TFormPrevConsumo.Create(Application);
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      FormPrevConsumo.Top := 0;

    // finally
    // FreeAndNil(FormPrevConsumo);
    // end;
  end;
  FormPrevConsumo.Show;
end;

procedure TFrmMenu.PCPCentrodeProduoNovo1Click(Sender: tObject);
begin
  if not assigned(FormOrdServCentroNovo) then
  begin
    FormOrdServCentroNovo := TFormOrdServCentroNovo.Create(Application);
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      FormOrdServCentroNovo.Top := 0;

    // finally
    // freeAndNil(FormOrdServCentroNovo);
    // end;
  end;
  FormOrdServCentroNovo.Show;
end;

procedure TFrmMenu.Previsodecompras1Click(Sender: TObject);
begin
  if not Assigned(FrmPrevisaoCompras) then
    FrmPrevisaoCompras := TFrmPrevisaoCompras.Create(self);
  FrmPrevisaoCompras.ShowModal;
end;

procedure TFrmMenu.PrevisodeConsumodeMaterial1Click(Sender: tObject);
begin
  if not assigned(FormOrdServCentroGerar) then
  begin
    // try
    FormOrdServCentroGerar := TFormOrdServCentroGerar.Create(Application);
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      FormOrdServCentroGerar.Top := 0;

  end;
  FormOrdServCentroGerar.Show;
end;

procedure TFrmMenu.ManutenoRenew1Click(Sender: tObject);
begin
  if not assigned(FrmManutencao) then
  begin
    // try
    FrmManutencao := TFrmManutencao.Create(Application);
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0);

  end;
  FrmManutencao.Show;
end;

procedure TFrmMenu.Departamentos1Click(Sender: tObject);
begin
  FormDepartamento := TFormDepartamento.Create(Application);
  try
    FormDepartamento.ShowModal;
  finally
    FormDepartamento.Destroy;
    FormDepartamento := nil;
  end;
end;

procedure TFrmMenu.RemessadasFaturasDescontar1Click(Sender: tObject);
begin
  if not assigned(FrmRemessaDescontar) then
  begin
    // try
    FrmRemessaDescontar := TFrmRemessaDescontar.Create(Application);
    FrmRemessaDescontar.BotoesAcesso;
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      FrmRemessaDescontar.Top := 0;

    // finally
    // FrmRemessaDescontar.Destroy;
    // FrmRemessaDescontar := nil;
    // end;
  end;
  FrmRemessaDescontar.Show;
end;

procedure TFrmMenu.RentabilidadedaOS1Click(Sender: TObject);
begin
  if not assigned(frmRentabilidadeOS) then
  begin
    frmRentabilidadeOS := TfrmRentabilidadeOS.Create(Application);
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0);
  end;
  frmRentabilidadeOS.Show;
end;

procedure TFrmMenu.FormClose(Sender: tObject; var Action: TCloseAction);
begin
 Application.Free;
 Application := NIL;
 DBInicio.MainDB.CloneConnection;
 ExitProcess(0);

end;

procedure TFrmMenu.FormCloseQuery(Sender: tObject; var CanClose: Boolean);
begin
  inherited;
  if not DELPHIABERTO then
  begin
    if Application.messagebox('Deseja Sair do Sistema ?', 'Saída...',
      mb_yesno + mb_iconquestion) = idno then
      CanClose := false
    Else
    begin
      DBInicio.ExecSQL('DELETE FROM PEDIDO_EM_EDICAO WHERE USU_LOGIN = ' + QuotedStr(DBInicio.Usuario.USERNAME) + ' AND EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo));
      Application.terminate;
    end;
  end
  Else
  begin
    DBInicio.ExecSQL('DELETE FROM PEDIDO_EM_EDICAO WHERE USU_LOGIN = ' + QuotedStr(DBInicio.Usuario.USERNAME) + ' AND EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo));
    Application.terminate;
  end;
end;

procedure TFrmMenu.ransfernciadeOperaodeNatureza1Click(Sender: tObject);
begin
  if not assigned(FrmOpNatureza) then
  begin
    // try
    FrmOpNatureza := TFrmOpNatureza.Create(Application);
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      FrmOpNatureza.Top := 237;

    // finally
    // FrmOpNatureza.Destroy;
    // FrmOpNatureza := nil;
    // end;
  end;
  FrmOpNatureza.Show;
end;

procedure TFrmMenu.MainMenuChange(Sender: TObject; Source: TMenuItem; Rebuild: Boolean);
begin
  lbFechaPainelInformativoClick(Sender);
end;

procedure TFrmMenu.ManutenodeCheques1Click(Sender: tObject);
begin
  if not assigned(FrmChequeConsulta) then
  begin
    // try
    FrmChequeConsulta := TFrmChequeConsulta.Create(Application);
    FrmChequeConsulta.BotoesAcesso;
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0);

    // finally
    // FrmChequeConsulta.Destroy;
    // FrmChequeConsulta := nil;
    // end;
  end;
  FrmChequeConsulta.Show;
end;

procedure TFrmMenu.ConsultarProdutosdasOpemaberto1Click(Sender: tObject);
begin
  if not assigned(FormProdutosOPs) then
  begin
    // try
    FormProdutosOPs := TFormProdutosOPs.Create(Application);
    FormProdutosOPs.BotoesAcesso;
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0);

    // finally
    // FormProdutosOPs.Destroy;
    // FormProdutosOPs := nil;
    // end;
  end;
  FormProdutosOPs.Height := 529;
  FormProdutosOPs.Width := 785;
  FormProdutosOPs.Show;
end;

procedure TFrmMenu.ransfernciadeContaCaixa1Click(Sender: tObject);
begin
  if not assigned(FrmTransfCtaCaixa) then
  begin
    // try
    FrmTransfCtaCaixa := TFrmTransfCtaCaixa.Create(Application);
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0);

    // finally
    // FrmTransfCtaCaixa.Destroy;
    // FrmTransfCtaCaixa := nil;
    // end;
  end;
  FrmTransfCtaCaixa.Show;
end;

procedure TFrmMenu.Cidades1Click(Sender: tObject);
begin
  // try
  if not assigned(FormCadCidade) then
  begin
    FormCadCidade := TFormCadCidade.Create(Application);
    FormCadCidade.BotoesAcesso;
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)

      // finally
      // FormCadCidade.Destroy;
      // FormCadCidade := nil;
      // end;
  end;
  FormCadCidade.Show;
end;

procedure TFrmMenu.RegraNAturezadeOperao1Click(Sender: tObject);
begin
  if not assigned(FormRegraNatOp) then
  begin
    FormRegraNatOp := TFormRegraNatOp.Create(Application);
    FormRegraNatOp.BotoesAcesso;
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      FormRegraNatOp.Top := 0;

    // finally
    // FreeAndNil( FormRegraNatOp );
    // end;
  end;
  FormRegraNatOp.Show;
end;

procedure TFrmMenu.RegularizaodeEstoques1Click(Sender: TObject);
begin
  if not assigned(frmRegularizacaoEstoque) then
    frmRegularizacaoEstoque := TfrmRegularizacaoEstoque.Create(Application);
  frmRegularizacaoEstoque.Show;
end;

procedure TFrmMenu.SituaoTributria1Click(Sender: tObject);
begin
  if not assigned(FormCadSitTributaria) then
  begin
    FormCadSitTributaria := TFormCadSitTributaria.Create(Application);
    FormCadSitTributaria.BotoesAcesso;
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)

      // finally
      // FreeAndNil( FormCadSitTributaria );
      // end;
  end;
  FormCadSitTributaria.Show;
end;

function TFrmMenu.ProcuraINI: Boolean;
var
  Path: String;
begin
  Path := ExtractFilePath(Application.ExeName) + '\Adjutor.ini';
  if not FileExists(Path) then
    Result := false
  else
    Result := true;
end;

procedure TFrmMenu.LBLinkBlogMouseMove(Sender: tObject; Shift: TShiftState;
  X, Y: Integer);
begin
  LBLinkBlog.Font.Style := [fsBold, fsUnderline];
end;

procedure TFrmMenu.Image1MouseMove(Sender: tObject; Shift: TShiftState;
  X, Y: Integer);
begin
  LBLinkBlog.Font.Style := [fsBold];
end;

procedure TFrmMenu.imgDashboardClick(Sender: TObject);
begin
  lbFechaPainelInformativoClick(Sender);
  if (dbInicio.BuscaUmDadoSqlAsString('SELECT USP_DASH_INTELIGENCIA FROM USUARIO_PARAMETRO WHERE USP_COD_USUARIO = ' + DBInicio.Usuario.CODIGO) = 'S') then
  begin
    if not Assigned(frmDashBoardInteligencia) then
      frmDashBoardInteligencia := TfrmDashBoardInteligencia.Create(Application);
    frmDashBoardInteligencia.ShowModal;
  end
  else
  begin
    if not Assigned(frmDashBoardComecialFin) then
      frmDashBoardComecialFin := tfrmDashBoardComecialFin.Create(Application);
    frmDashBoardComecialFin.ShowModal;
  end;
end;

procedure TFrmMenu.imgFacebookClick(Sender: TObject);
begin
  ShellExecute(Handle, 'open', PChar('https://www.facebook.com/novisistemas'), '', '', SW_SHOWNORMAL);
end;

procedure TFrmMenu.imgInstagramClick(Sender: TObject);
begin
ShellExecute(Handle, 'open', PChar('https://www.instagram.com/novisistemas/'), '', '', SW_SHOWNORMAL);
end;

procedure TFrmMenu.imgSuporteClick(Sender: TObject);
begin
  ShellExecute(Handle, 'open', PChar('https://novisistemas.freshdesk.com/support/login'), '', '', SW_SHOWNORMAL);
end;

procedure TFrmMenu.ImportaoArquivoRetornoBancoCNAB1Click(Sender: tObject);
begin
  if not assigned(FrmRetornoCNAB_novo) then
  begin
    FrmRetornoCNAB_novo := TFrmRetornoCNAB_NOVO.Create(Application);
    FrmRetornoCNAB_novo.BotoesAcesso;
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0);

    // finally
    // FreeAndNil(FrmRetornoCNAB_NOVO);
    // end;
  end;
  FrmRetornoCNAB_novo.Show;
end;

procedure TFrmMenu.ImportarXMLNFEsMigrao1Click(Sender: tObject);
var
  tcr: tfrmImportarXMLMigracaoNovi;
begin
  if not assigned(frmImportarXMLMigracaoNovi) then
  begin
    tcr := tfrmImportarXMLMigracaoNovi.Create(self);
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0);

    // finally
    // FreeAndNil(tcr);
    // end;
  end;
  tcr.Show;
end;

procedure TFrmMenu.Acabamentodecores1Click(Sender: TObject);
begin
 if not Assigned(frmPesqCores) then
  frmPesqCores := tfrmPesqCores.create(self);
  frmPesqCores.showmodal;
end;

procedure TFrmMenu.Acabamentosuperficial1Click(Sender: TObject);
begin

 if not Assigned(frmPesqAcabamentoSup) then
  frmPesqAcabamentoSup := tfrmPesqAcabamentoSup.create(self);
  frmPesqAcabamentoSup.showmodal;
end;

procedure TFrmMenu.AgendadorBackup;
begin
  DataCadastros.SQLConnection1.Connected := false;
  try
    Timerbakcup.Enabled:= False;
    bFezBackup := True;
    FrmBackupRestore := TFrmBackupRestore.Create(Application);
    FrmBackupRestore.NomeBackup := FormatarNomeBackup;
    try
     FrmBackupRestore.btnBackup.Click;
    except
     bFezBackup := False;
    end;

  finally
    FrmBackupRestore.Destroy;
    FrmBackupRestore := Nil;
    Timerbakcup.Enabled:= True;
  end;
  DataCadastros.SQLConnection1.Connected := true;
end;

procedure TFrmMenu.Ajuda1Click(Sender: tObject);
begin
  ShellExecute(Handle, 'open', PChar('http://www.novisistemas.com.br/blog/'),
    '', '', SW_SHOWNORMAL)
end;

procedure TFrmMenu.WEB1Click(Sender: tObject);
begin
  ShellExecute(Handle, 'open', PChar('http://www.novisistemas.com.br'), '', '',
    SW_SHOWNORMAL)
end;

procedure TFrmMenu.AuxlioaoUsurioBlogNovi1Click(Sender: tObject);
begin
  ShellExecute(Handle, 'open', PChar('https://novisistemas.freshdesk.com/support/login'), '',
    '', SW_SHOWNORMAL)
end;

procedure TFrmMenu.WebSite1Click(Sender: tObject);
begin
  ShellExecute(Handle, 'open', PChar('http://www.novisistemas.com.br'), '', '',
    SW_SHOWNORMAL)
end;

procedure TFrmMenu.XMLSCOAManaus1Click(Sender: TObject);
begin
  if not Assigned(frmXMLSCOAManaus) then
    frmXMLSCOAManaus := tfrmXMLSCOAManaus.create(self);
  frmXMLSCOAManaus.Show;
end;

procedure TFrmMenu.CoolBarMouseMove(Sender: tObject; Shift: TShiftState;
  X, Y: Integer);
begin
  LBLinkBlog.Font.Style := [fsBold];
end;

procedure TFrmMenu.Cotao1Click(Sender: TObject);
begin
  if not assigned(frmCotacaoPesquisa) then
    frmCotacaoPesquisa := TfrmCotacaoPesquisa.Create(Application);
  frmCotacaoPesquisa.Show;
end;

procedure TFrmMenu.Label1Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', PChar('https://novisistemas.freshdesk.com/support/solutions/folders/42000110772'), '', '', SW_SHOWNORMAL)
end;

procedure TFrmMenu.lbFechaPainelInformativoClick(Sender: TObject);
begin
  pnNovidade.Visible := False;
  btNovidade.Visible := True;
end;

procedure TFrmMenu.LBLinkBlogClick(Sender: tObject);
begin
  ShellExecute(Handle, 'open', PChar('https://www.novisistemas.com.br/artigos/'), '', '', SW_SHOWNORMAL)
end;

procedure TFrmMenu.MarkupComissaoClick(Sender: tObject);
begin
  // try
  if not assigned(FormTabelaMarkup) then
  begin
    FormTabelaMarkup := TFormTabelaMarkup.Create(Application);
    FormTabelaMarkup.BotoesAcesso;
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      FormTabelaMarkup.Top := 0;

    // finally
    // FormTabelaMarkup.Destroy;
    // FormTabelaMarkup := nil;
    // end;
  end;
  FormTabelaMarkup.Width := 767;
  FormTabelaMarkup.Height := 638;
  FormTabelaMarkup.Show;
end;

procedure TFrmMenu.Licena1Click(Sender: tObject);
begin
  FrmLicenca := TFrmLicenca.Create(Application);
  try
    FrmLicenca.iNrDias := DaysBetween(date, Validade(DBInicio.Empresa.CHAVE));;
    FrmLicenca.iNrLicencas := Conexoes(DBInicio.Empresa.CHAVE);
    FrmLicenca.ShowModal;
  finally
    FrmLicenca.Destroy;
    FrmLicenca := Nil;
  end;
end;

procedure TFrmMenu.ExportarArquivoContabilidade1Click(Sender: tObject);
begin
  if not assigned(FrmExportacaoContabilitadade) then
  begin
    FrmExportacaoContabilitadade := TFrmExportacaoContabilitadade.Create
      (Application);
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0);

    // finally
    // FreeAndNil( FrmExportacaoContabilitadade);
    // end;
  end;
  FrmExportacaoContabilitadade.Show;
end;

procedure TFrmMenu.ExportardadospEFDContbil1Click(Sender: tObject);
begin
  if not assigned(FrmEFD) then
  begin
    // try
    FrmEFD := TFrmEFD.Create(Application);
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0);

    // finally
    // FrmEFD.Destroy;
    // FrmEFD := nil;
    // end;
  end;
  FrmEFD.Height := 444;
  FrmEFD.Width := 693;
  FrmEFD.Show;
end;

procedure TFrmMenu.Exportarimagensdobanco1Click(Sender: TObject);
var
 FotoJpg : TJpegImage;
 vlogoStream : TStream  ;
begin
  if DBInicio.Empresa.spmt_CaminhoFoto = '' then
    raise Exception.Create('Não definido o caminho em parametros');
  fmAnimacao := TfmAnimacao.Create(application);
  try
    fmAnimacao.Panel1.Caption :=  'Buscando Informações. Aguarde, isto poderá demorar um pouco...';
    fmAnimacao.Show;

     with DataCadastros do
     begin
       CdsProdutos.Close;
       SqlProdutos.SQL.Text := ' SELECT * FROM PRD0000 WHERE PRD_FOTO IS NOT null';
       CdsProdutos.Open;
       while not CdsProdutos.Eof do
       begin
        vlogoStream := CdsProdutos.CreateBlobStream(CdsProdutos.FieldByName('prd_foto'),bmRead);
        FotoJpg := TJpegImage.Create;
        try
          fotojpg.LoadFromStream(vlogoStream);
          FotoJpg.SaveToFile(DBInicio.Empresa.spmt_CaminhoFoto + '\'+CdsProdutosPRD_REFER.AsString+ '.bmp');
        finally
          FreeAndNil(vlogoStream);
          FreeAndNil(FotoJpg);
        end;

        CdsProdutos.Next;
       end;

     end;
  finally
    fmAnimacao.close;
  end;
end;

procedure TFrmMenu.KardexClick(Sender: tObject);
begin
  if not assigned(FrmKardex) then
  begin
    FrmKardex := TFrmKardex.Create(Application);
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      FrmKardex.Top := 0;

    // finally
    // FreeAndNil( FrmKardex );
    // end;
  end;
  FrmKardex.Height := 635;
  FrmKardex.Width := 964;
  FrmKardex.Show;
end;

procedure TFrmMenu.KardexTransferClick(Sender: tObject);
begin
  if not assigned(FrmKardexTransferencia) then
  begin
    FrmKardexTransferencia := TFrmKardexTransferencia.Create(Application);
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0);

    // finally
    // FreeAndNil( FrmKardexTransferencia );
    // end;
  end;
  FrmKardexTransferencia.Show;
end;

procedure TFrmMenu.EmissodeNFSe1Click(Sender: tObject);
begin
  if not assigned(frmNfse) then
  begin
    // try
    frmNfse := TfrmNfse.Create(Application);

    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0);

    // finally
    // FrmNotaFiscalServico.Destroy;
    // FrmNotaFiscalServico := Nil;
    // end;
  end;
  frmNfse.Show;
end;

procedure TFrmMenu.SpBAjudaClick(Sender: tObject);
begin
  lbFechaPainelInformativoClick(Sender);
  ShellExecute(Handle, 'open', PChar('https://novisistemas.freshdesk.com/support/solutions'), '',
    '', SW_SHOWNORMAL)
end;

procedure TFrmMenu.KardexZerarClick(Sender: tObject);
begin
  if not assigned(KardexZerarEstoque) then
  begin
    // try
    KardexZerarEstoque := TKardexZerarEstoque.Create(Application);
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0);

    // finally
    // KardexZerarEstoque.Destroy;
    // KardexZerarEstoque := Nil;
    // end;
  end;
  KardexZerarEstoque.Show;
end;

procedure TFrmMenu.EntradaeSadaManualClick(Sender: tObject);
begin
  if not assigned(FrmKardexLancamentoManual) then
  begin
    FrmKardexLancamentoManual := TFrmKardexLancamentoManual.Create(Application);
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0);

    // finally
    // FreeAndNil(FrmKardexLancamentoManual);
    // end;
  end;
  FrmKardexLancamentoManual.Show;
end;

procedure TFrmMenu.VinculaoEntradadeNota1Click(Sender: tObject);
begin
  if not assigned(FrmProjetoObraNotaEntrada) then
  begin
    // try
    FrmProjetoObraNotaEntrada := TFrmProjetoObraNotaEntrada.Create(Application);
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      FrmProjetoObraNotaEntrada.Top := 0;

    // finally
    // FrmProjetoObraNotaEntrada.Destroy;
    // FrmProjetoObraNotaEntrada := Nil;
    // end;
  end;
  FrmProjetoObraNotaEntrada.Height := 607;
  FrmProjetoObraNotaEntrada.Width := 971;
  FrmProjetoObraNotaEntrada.Show;

end;

procedure TFrmMenu.CustoDeFabricaPorCentroDeCustoClick(Sender: TObject);
begin
  if not assigned(frmCustoFabricaCentroCusto) then
  begin
    frmCustoFabricaCentroCusto := TfrmCustoFabricaCentroCusto.Create(Application);
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0);
  end;
  frmCustoFabricaCentroCusto.Show;
end;

procedure TFrmMenu.Custos1Click(Sender: tObject);
begin
   FrmProjetoObraCusto := TFrmProjetoObraCusto.Create(Application);
  try
    FrmProjetoObraCusto.ShowModal;
  finally
    FrmProjetoObraCusto.Destroy;
    FrmProjetoObraCusto := Nil;
  end;
end;

procedure TFrmMenu.ipodeGancho1Click(Sender: TObject);
begin
 if not Assigned(frmPesqGancho) then
  frmPesqGancho := tfrmPesqGancho.create(self);
  frmPesqGancho.showmodal;
end;

procedure TFrmMenu.ipodePedido1Click(Sender: tObject);
begin
  if not assigned(FrmCadastroTipoPedido) then
  begin
    FrmCadastroTipoPedido := TFrmCadastroTipoPedido.Create(Application);
    FrmCadastroTipoPedido.BotoesAcesso;
    // try
 //   if (MDIChildCount > 1) then
   //   SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)

      // finally
      // FreeAndNil( FrmCadastroTipoPedido );
      // end;
  end;
  // FrmCadastroTipoPedido.Width := 648;
  // FrmCadastroTipoPedido.Height := 547;
  FrmCadastroTipoPedido.Show;
end;

procedure TFrmMenu.iposdeEmbalagem1Click(Sender: TObject);
begin
   if not assigned(frmPesquisaTipoEmbalagem) then
    frmPesquisaTipoEmbalagem := TfrmPesquisaTipoEmbalagem.Create(Application);
  frmPesquisaTipoEmbalagem.Show;
end;

procedure TFrmMenu.AnlisedeCrdito1Click(Sender: tObject);
begin
  if not assigned(FrmFinanceiroAnaliseCredito) then
  begin
    FrmFinanceiroAnaliseCredito := TFrmFinanceiroAnaliseCredito.Create   (Application);
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      FrmFinanceiroAnaliseCredito.Top := 0;

    // finally
    // FreeAndNil( FrmFinanceiroAnaliseCredito);
    // end;
  end;
  FrmFinanceiroAnaliseCredito.Show;
end;

procedure TFrmMenu.PedidodeProduo1Click(Sender: tObject);
begin
  if not assigned(FrmPedidoPCP) then
  begin
    FrmPedidoPCP := TFrmPedidoPCP.Create(Application);
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      FrmPedidoPCP.Top := 0;

    // finally
    // FreeAndNil(FrmPedidoPCP);
    // end;
  end;
  FrmPedidoPCP.Show;
end;

procedure TFrmMenu.CEmpresaEnter(Sender: TObject);
begin
  empCodigo := CEmpresa.Text;
end;

procedure TFrmMenu.CEmpresaExit(Sender: tObject);

begin
  if StrZero(CEmpresa.Text, 3) <> DBInicio.Empresa.Emp_Codigo then
  begin

   if NOT matchstr(DBInicio.Usuario.USERNAME,['ADM','NOVI'])  then
     if DBInicio.BuscaUmDadoSqlAsInteger('Select cast(count(*) as integer) as conta from    usuario_empresa where usu_codigo = ' +DBInicio.Usuario.CODIGO + ' and emp_codigo= '+ QuotedStr(StrZero(CEmpresa.Text, 3)))= 0 then
     begin
       MessageDlg('Usuário sem permissão para empresa ' + CEmpresa.Text, mtError, [mbOK] ,0);
       CEmpresa.Text := empCodigo;
       Exit;
     end;

    if DBInicio.BuscaUmDadoSqlAsInteger   ('Select cast(count(*) as integer) as conta from    emp0000 where emp_codigo = ' +   qStr(StrZero(CEmpresa.Text, 3))) <> 0 then
      AlteraEmpresa(StrZero(CEmpresa.Text, 3), true)
    else
    begin
      CEmpresa.Text := DBInicio.Empresa.Emp_Codigo;
      AlteraEmpresa(DBInicio.Empresa.Emp_Codigo, true);
    end;
    CbEmpresa.Text := DBInicio.Empresa.RAZAO;
  end;
end;

procedure TFrmMenu.AlteraEmpresa(const sEmp_Codigo: String; pShowMsg: Boolean);
begin
  if MDIChildCount > 0 then
    raise Exception.Create('Feche todas as telas antes de alterar a empresa');
  DBInicio.CarregaEmpresaSelecionada(sEmp_Codigo);
  AtualizaParametros;
  ImglogoMenu.Visible := false;
  ImglogoMenu.Picture.Bitmap := nil;
  ImglogoMenu.Picture.assign(DBInicio.Empresa.Logo);
  ImglogoMenu.Visible := true;

  if FileExists(ExtractFileDir(Application.ExeName) + '\logo\fundo\' +
    sEmp_Codigo + '.jpg') then
    Image1.Picture.LoadFromFile(ExtractFileDir(Application.ExeName) +
      '\logo\fundo\' + sEmp_Codigo + '.jpg');

  if pShowMsg then
    Uteis.aviso(PChar('Empresa Alterada para: ' + #13 + #13 +
      DBInicio.Empresa.Emp_Codigo + ' - ' + CbEmpresa.Text));

  CEmpresa.Text := DBInicio.Empresa.Emp_Codigo;
  CbEmpresa.Text := DBInicio.Empresa.RAZAO;
end;

procedure TFrmMenu.CbEmpresaChange(Sender: tObject);
begin
  if CbEmpresa.Text <> '' then
  begin
    CEmpresa.Text := DBInicio.BuscaUmDadoSqlAsString
      ('Select emp_codigo from emp0000 where emp_razao = ' +
      qStr(CbEmpresa.Text));
     if NOT matchstr(DBInicio.Usuario.USERNAME,['ADM','NOVI'])  then
       if DBInicio.BuscaUmDadoSqlAsInteger('Select cast(count(*) as integer) as conta from    usuario_empresa where usu_codigo = ' +DBInicio.Usuario.CODIGO + ' and emp_codigo= '+ QuotedStr(StrZero(CEmpresa.Text, 3)))= 0 then
       begin
          MessageDlg('Usuário sem permissão para empresa ' + CEmpresa.Text, mtError, [mbOK] ,0);
          CbEmpresa.ItemIndex := idRetorno;
          CEmpresa.Text := empCodigo;
          Exit;
       end;
    AlteraEmpresa(StrZero(CEmpresa.Text, 3), true);
  end;
  CbEmpresa.Text := DBInicio.Empresa.RAZAO;
end;

procedure TFrmMenu.CbEmpresaEnter(Sender: TObject);
begin
  idRetorno := CbEmpresa.ItemIndex;
  empCodigo := CEmpresa.Text;
end;

procedure TFrmMenu.NotasdeEntradaseSaidasporProduto1Click(Sender: tObject);
begin
  if not assigned(FrmProdutoCompraVenda) then
  begin
    // try
    FrmProdutoCompraVenda := TFrmProdutoCompraVenda.Create(Application);
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      FrmProdutoCompraVenda.Top := 0;

    // finally
    // FrmProdutoCompraVenda.Destroy;
    // FrmProdutoCompraVenda := Nil;
    // end;
  end;
  FrmProdutoCompraVenda.Show;
end;

procedure TFrmMenu.Observaes1Click(Sender: tObject);
begin
  if not assigned(FrmCadastroObservacao) then
  begin
    // try
    FrmCadastroObservacao := TFrmCadastroObservacao.Create(Application);
    FrmCadastroObservacao.BotoesAcesso;
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)

      // finally
      // FrmCadastroObservacao.Destroy;
      // FrmCadastroObservacao :=Nil;
      // end;
  end;
  FrmCadastroObservacao.Show;
end;

procedure TFrmMenu.Ocorrencias1Click(Sender: tObject);
begin
  if not assigned(fmPesqOperacoes) then
  begin
    fmPesqOperacoes := TfmPesqOperacoes.Create(Application);

    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      fmPesqOperacoes.Top := 0;

  end;
  fmPesqOperacoes.Show;
end;

procedure TFrmMenu.Ocorrncia1Click(Sender: tObject);
begin
  if not assigned(fmPesqOcorrencia) then
  begin
    fmPesqOcorrencia := TfmPesqOcorrencia.Create(Application);
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      fmPesqOcorrencia.Top := 0;

  end;
  fmPesqOcorrencia.Show;
end;

procedure TFrmMenu.ConciliaoBancria1Click(Sender: tObject);
begin
  if not assigned(FrmFinanceiroConciliacao) then
  begin
    FrmFinanceiroConciliacao := TFrmFinanceiroConciliacao.Create(Application);
    FrmFinanceiroConciliacao.BotoesAcesso;
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      FrmFinanceiroConciliacao.Top := 0;

    // finally
    // FreeAndNil(FrmFinanceiroConciliacao);
    // end;
  end;
  FrmFinanceiroConciliacao.Width := 980;
  FrmFinanceiroConciliacao.Height := 640;
  FrmFinanceiroConciliacao.Show;
end;

procedure TFrmMenu.AnlisedeCrdito2Click(Sender: tObject);
begin
  if not assigned(FrmFinanceiroAnaliseCredito) then
  begin
    // try
    FrmFinanceiroAnaliseCredito := TFrmFinanceiroAnaliseCredito.Create (Application);
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      FrmFinanceiroAnaliseCredito.Top := 0;

    // finally
    // FrmFinanceiroAnaliseCredito.Destroy;
    // FrmFinanceiroAnaliseCredito := Nil;
    // end;
  end;
  FrmFinanceiroAnaliseCredito.Show;
end;

procedure TFrmMenu.AtualizaParametros;
var
  i, sty: Integer;
begin
  i := 0;
  sty := 0;

  wSql1 := 'SELECT * FROM PRMT0001 ';
  DataCadastros.sqlUpdate.close;
  DataCadastros.sqlUpdate.sql.Text := SQLDEF('PARAMETROS', wSql1,
    'WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.Empresa.Emp_Codigo), '', '');
  DataCadastros.sqlUpdate.Open;
  if not DataCadastros.sqlUpdate.IsEmpty then
  begin
    sProjetoCaixa := DataCadastros.sqlUpdate.Fieldbyname('PMT_PROJCX').AsString;
    wDescrCompl := DataCadastros.sqlUpdate.Fieldbyname
      ('PMT_COMPLTO_NF').AsString;
    wBtnDuplica := DataCadastros.sqlUpdate.Fieldbyname
      ('PMT_BTN_DUPLICA').AsString;
    wBtnAlt_IPI := DataCadastros.sqlUpdate.Fieldbyname
      ('PMT_BTN_ALT_IPI_ENF').AsString;

    wBaixaEstqAlmox := DataCadastros.sqlUpdate.Fieldbyname
      ('PMT_BAIXA_EST_AXF').AsString;
    wVariacoes := DataCadastros.sqlUpdate.Fieldbyname('PMT_VARIACOES').AsString;
    // wPmt_Unformula                := DataCadastros.sqlUpdate.FieldbyName('PMT_UNFORMULA').AsInteger;
    wPmtOPsProduzir := DataCadastros.sqlUpdate.Fieldbyname
      ('PMT_OPSPRODUZIR').AsString;
    PathNewFotos := DataCadastros.sqlUpdate.Fieldbyname('PMT_PATHFOTO')
      .AsString;
    PathNewRel := DataCadastros.sqlUpdate.Fieldbyname
      ('PMT_PATHRELATORIO').AsString;

    iCasaDecimaisOcp := DataCadastros.sqlUpdate.Fieldbyname('PMT_QTDE_DEC_OCP')
      .AsInteger;
    wServicoCliente := DataCadastros.sqlUpdate.Fieldbyname
      ('PMT_PRESTACAO_SERVICO').AsString;
    sGerarNumLote := DataCadastros.sqlUpdate.Fieldbyname
      ('PMT_GERAR_NUM_LOTE').AsString;
    bUtilizaNfse := IIF(DataCadastros.sqlUpdate.Fieldbyname('PMT_ATIVA_NFSE')
      .AsString = 'S', true, false);

    wPmt_Amx_Faturamento := DataCadastros.sqlUpdate.Fieldbyname
      ('PMT_AMX_FATURAMENTO').AsString;

    bUtilizaRecursosAvancadosCentroCusto := DataCadastros.sqlUpdate.Fieldbyname
      ('PMT_FIN_HABILITA_CENTRO_C_AVANC').AsString = 'S';
    bAtivaCoParticipacao := DataCadastros.sqlUpdate.Fieldbyname
      ('pmt_coparticipacao').AsString = 'S';
    wPmt_Utiliza_Analise_Producao := DataCadastros.sqlUpdate.Fieldbyname
      ('PMT_UTILIZA_ANALISE_PRODUCAO').AsString;
    wPrm_Cadastro_Produto_Tela_Venda := DataCadastros.sqlUpdate.Fieldbyname
      ('PMT_VENDA_LIBERADA_CAD_PRODUTO').AsString = 'S';

    sTipoBaseCustoProducao := DataCadastros.sqlUpdate.Fieldbyname
      ('PMT_CUSTO_BASE_PRODUCAO').AsString;
  end;
  abelasdePreos1.Enabled := (DBInicio.Empresa.fPmt_multTab = 'S') or (dbinicio.Usuario.USERNAME = 'ADM') or (dbinicio.Usuario.USERNAME = 'NOVI');
  DataCadastros.sqlUpdate.close;;
  DataCadastros.sqlUpdate.close;
  DataCadastros.sqlUpdate.sql.Text :=
    'select EMP_CODIGO, EMP_RAZAO from EMP0000 order by EMP_CODIGO';
  DataCadastros.sqlUpdate.Open;
  CbEmpresa.Clear;

  sty := DBInicio.BuscaUmDadoSqlAsInteger('Select cast(count(*) as integer) as conta from    EMP0000 ');

  while not DataCadastros.sqlUpdate.Eof do
  begin
    CbEmpresa.Items.Add(DataCadastros.sqlUpdate.Fieldbyname('EMP_RAZAO')
      .AsString);
    DataCadastros.sqlUpdate.Next;
  end;

  for i := 0 to sty do
  begin
    if (CbEmpresa.Items[i] = DBInicio.Empresa.RAZAO) then
    begin
      CbEmpresa.ItemIndex := i;
      Exit;
    end;
  end;

end;

procedure TFrmMenu.Novo1Click(Sender: tObject);
begin
    FrmSie := TFrmSie.Create(Application);
  try
    FrmSie.ShowModal;
  finally
    FrmSie.Destroy;
    FrmSie := nil;
  end;
end;

procedure TFrmMenu.NovoApontamentos1Click(Sender: TObject);
begin
  if not Assigned( frmNovoApontamento) then
   frmNovoApontamento := TfrmNovoApontamento.Create(application);
   frmNovoApontamento.show;
end;

procedure TFrmMenu.FluxoCaixaSaldoBanco1Click(Sender: tObject);
begin
  if not assigned(FormFluxoCaixaSimples) then
  begin
    FormFluxoCaixaSimples := TFormFluxoCaixaSimples.Create(Application);
    FormFluxoCaixaSimples.BotoesAcesso;
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      FormFluxoCaixaSimples.Top := 0;

    // finally
    // FreeAndNil(FormFluxoCaixaSimples);
    // end;
  end;
  FormFluxoCaixaSimples.Show;
end;

procedure TFrmMenu.SpedFiscal1Click(Sender: tObject);
begin
  if not assigned(FrmSpedFiscal) then
  begin
    // try
    FrmSpedFiscal := TFrmSpedFiscal.Create(Application);
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      FrmSpedFiscal.Top := 0;

    // finally
    // FrmSpedFiscal.Destroy;
    // FrmSpedFiscal := nil ;
    // end;
  end;
  FrmSpedFiscal.Height := 602;
  FrmSpedFiscal.Width := 964;
  FrmSpedFiscal.Show;
end;

procedure TFrmMenu.Sintegra2Click(Sender: tObject);
begin
  if not assigned(FormSINTEGRA) then
  begin
    // try
    FormSINTEGRA := TFormSINTEGRA.Create(Application);
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      FormSINTEGRA.Top := 0;

    // finally
    // FormSINTEGRA.Destroy;
    // FormSINTEGRA := nil;
    // end;
  end;
  FormSINTEGRA.Show;
end;

procedure TFrmMenu.SpedContribies1Click(Sender: tObject);
begin
  if not assigned(FrmSped) then
  begin
    // try
    FrmSped := TFrmSped.Create(Application);
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0);

    // finally
    // FrmSped.Destroy;
    // FrmSped := nil;
    // end;
  end;
  FrmSped.Height := 602;
  FrmSped.Width := 964;
  FrmSped.Show;
end;

procedure TFrmMenu.Sobre1Click(Sender: tObject);
begin
  if not assigned(frmSobre) then
     frmSobre := TfrmSobre.Create(Application);
  try
    frmSobre.ShowModal;

  finally
    FreeAndNil(frmSobre);
  end;



//  Uteis.aviso('Sistema Desenvolvido e Mantido por Novi Sistemas Ltda');
end;

procedure TFrmMenu.SolicitaodeCompra1Click(Sender: TObject);
begin
  if not assigned(frmSolicitacaoCompra) then
  begin
    frmSolicitacaoCompra := TfrmSolicitacaoCompra.Create(Application);
    // frmSolicitacaoCompra.BotoesAcesso;
  end;
  frmSolicitacaoCompra.Show;
end;

procedure TFrmMenu.ConversodeMedidas1Click(Sender: tObject);
begin
  // try
  if not assigned(FormCadastroConversaoMedida) then
  begin
    FormCadastroConversaoMedida := TFormCadastroConversaoMedida.Create  (Application);
    FormCadastroConversaoMedida.BotoesAcesso;
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)

      // finally
      // FormCadastroConversaoMedida.Destroy;
      // FormCadastroConversaoMedida := nil;
      // end;
  end;
  FormCadastroConversaoMedida.Height := 476;
  FormCadastroConversaoMedida.Width := 643;
  FormCadastroConversaoMedida.Show;
end;

procedure TFrmMenu.btnSuporteRemotoClick(Sender: tObject);
var
  Origem, Destino: String;
begin
  lbFechaPainelInformativoClick(Sender);
  Origem := 'https://download.anydesk.com/AnyDesk.exe';
  Destino := ExtractFileDir(Application.ExeName) + '\AnyDesk.exe';
  if DownloadArquivo(Origem, Destino) then
    ShellExecute(0, Nil, pWideCHAR(Destino), Nil, Nil, SW_SHOWNORMAL)
  else
    ShowMessage
      ('Não foi possivel fazer o download, verifique sua conexão com a internet!')
end;

procedure TFrmMenu.Button1000Click(Sender: TObject);
begin
  Form3.showmodal;
end;

procedure TFrmMenu.Button1Click(Sender: tObject);
var
  tcr: TFrmExpedicaoPedidos;
begin
  tcr := TFrmExpedicaoPedidos.Create(Application);
  try
    tcr.ShowModal;
  finally
    FreeAndNil(tcr);
  end;
end;

procedure TFrmMenu.Button2Click(Sender: tObject);
begin
  FrmGiroDoEstoquexCompras := TFrmGiroDoEstoquexCompras.Create(Application);
  try
    FrmGiroDoEstoquexCompras.ShowModal;
  finally
    FreeAndNil(FrmGiroDoEstoquexCompras);
  end;
end;

procedure TFrmMenu.ConsultaMarkup1Click(Sender: tObject);
begin
  if not assigned(FrmConsultaMarkup) then
    FrmConsultaMarkup := TFrmConsultaMarkup.Create(Application);
  FrmConsultaMarkup.Show;
end;

procedure TFrmMenu.miApontamentosClick(Sender: TObject);
begin
   if not assigned(frmApontamento) then
  begin
    frmApontamento := TFrmApontamento.Create(Application);
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0);

  end;
  frmApontamento.Show;

end;

procedure TFrmMenu.miApontarClick(Sender: TObject);
begin
  if not assigned(frmApontamentoIndustrial) then
   frmApontamentoIndustrial := TfrmApontamentoIndustrial.Create(Application);
 frmApontamentoIndustrial.Novo('Apontamento de industrialização');

end;

procedure TFrmMenu.micadastroprocessosClick(Sender: TObject);
begin
  if not assigned(frmSimularPrecoServicos) then
   frmSimularPrecoServicos := TfrmSimularPrecoServicos.Create(Application);
 frmSimularPrecoServicos.Show;
end;

procedure TFrmMenu.miConsultaPedidoscomGradeClick(Sender: tObject);
begin
  if not assigned(FrmPesquisaPedidoGrade) then
  begin
    FrmPesquisaPedidoGrade := TFrmPesquisaPedidoGrade.Create(Application);
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0);

  end;
  FrmPesquisaPedidoGrade.Show;

end;

procedure TFrmMenu.miConsultarenovacaoClick(Sender: TObject);
begin
 if not assigned(FrmPesqRenovacao) then
   FrmPesqRenovacao := TFrmPesqRenovacao.Create(Application);
 FrmPesqRenovacao.Show;
end;

procedure TFrmMenu.miCRMClick(Sender: TObject);
begin
 if not assigned(PesqTarefas) then
   PesqTarefas := tPesqTarefas.Create(application);
 PesqTarefas.Show;


end;

procedure TFrmMenu.miCustosEntradaClick(Sender: TObject);
var complmsg: string;
begin
 if DBInicio.Empresa.wPMT_NAO_AUTO_PVENDA  then
  complmsg := '* Não será atualizado o preço de Venda'
 else
   complmsg := '* O preço de venda será atualizado pelos custos';
if (MessageDlg('Esta rotina vai refazer os cálculos dos CUSTO DE '+#13+#10+
               ' ENTRADA, de frete, de IPI, substituição tributária, '+#13+#10+
               ' adicionais, que são despesas acessórias e seguro, '+#13+#10+
               ' e do CUSTO SEM IMPOSTOS, além do preço de venda.   ' +#13+#10+
               ' O recalculo será feito pela última nota de'+#13+#10+
               ' entrada, que não seja industrialização. '+#13+#10+
               ' Confirma rotina ? '+#13#10+
               complmsg
               , mtConfirmation, [mbYes, mbNo], 0) in [mrYes]) then
  begin

    fmAnimacao := TfmAnimacao.Create(application);
   try
    fmAnimacao.Panel1.Caption :=  'Buscando Informações. Aguarde, isto poderá demorar um pouco...';
    fmAnimacao.Show;
      with  DataCadastros.sATUALIZACAO_CUSTOS do
      begin
           Executa_Transacao('I',0);
           try
             Close;
             SQLConnection  := DataCadastros.SQLConnection1;
             StoredProcName := 'ATUALIZACAO_CUSTOS';
             ParamByName('emp_codigo').Text    := DBInicio.Empresa.EMP_CODIGO;
             ExecProc;
             Executa_Transacao('C',iNumeroTransacaoAtual);
           except on E: Exception do
           begin
             MessageDlg('erro: '+e.Message, mtInformation, [mbOK], 0);
             Executa_Transacao('R',iNumeroTransacaoAtual);
             raise;
           end;
           end;
       end;
       MessageDlg('Atualizado com sucesso', mtInformation, [mbOK], 0);
   finally
     fmAnimacao.Close;
   end;

 end;
end;

procedure TFrmMenu.miDashboardClick(Sender: TObject);
begin
 if not Assigned(frmDashBoardComecialFin) then
   frmDashBoardComecialFin := tfrmDashBoardComecialFin.Create(Application);
 frmDashBoardComecialFin.ShowModal;
end;

procedure TFrmMenu.miDemandaProducaoClick(Sender: TObject);
begin
  if not Assigned(frmDemandaProducao) then
    frmDemandaProducao := TfrmDemandaProducao.Create(Application);
  frmDemandaProducao.Show;
end;

procedure TFrmMenu.miEnvaseprodutosClick(Sender: TObject);
begin
  if NOT Assigned(frmEnvaseProdutos) then
    frmEnvaseProdutos:= TfrmEnvaseProdutos.Create(Application);
  frmEnvaseProdutos.Show;
end;

procedure TFrmMenu.miGerenciamentoPCPClick(Sender: TObject);
begin
  if NOT Assigned(frmGerenciamentoPCP) then
    frmGerenciamentoPCP:= TfrmGerenciamentoPCP.Create(Application);
  frmGerenciamentoPCP.Show;
end;

procedure TFrmMenu.miGerenciarApontamentoClick(Sender: TObject);
begin
   if not assigned(frmMonitorOperacoes) then
  begin
    frmMonitorOperacoes := TfrmMonitorOperacoes.Create(Application);
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0);

  end;
  frmMonitorOperacoes.Show;

end;

procedure TFrmMenu.miImportarCteClick(Sender: TObject);

begin


  if not assigned(frmPesqCTE) then
  begin
    frmPesqCTE := tfrmPesqCTE.Create(Application);
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0);
  end;
  frmPesqCTE.Show;


end;

procedure TFrmMenu.miInadimplenciaClick(Sender: TObject);
begin
 if not assigned(frmPesquisaInadimplencia) then
  begin
    frmPesquisaInadimplencia := TfrmPesquisaInadimplencia.Create(Application);

    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      frmPesquisaInadimplencia.Top := 0;

  end;
  frmPesquisaInadimplencia.Show;
end;

procedure TFrmMenu.miItemservioClick(Sender: TObject);
begin
  if not assigned(frmPesqServico) then
  begin
    frmPesqServico := TfrmPesqServico.Create(Application);

    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      frmPesqServico.Top := 0;

  end;
  frmPesqServico.Show;
end;

procedure TFrmMenu.miNFe401Click(Sender: TObject);
begin
  if not assigned(frmNfe40) then
  begin
    frmNfe40 := TfrmNfe40.Create(Application);

    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)

  end;
  frmNfe40.Show;
end;

procedure TFrmMenu.miorcamentoClick(Sender: TObject);
begin
  if not assigned(pesqorcamentoproducao) then
    PesqOrcamentoProducao := TPesqOrcamentoProducao.Create(Application);
  PesqOrcamentoProducao.Show;
end;

procedure TFrmMenu.miPCPClick(Sender: TObject);
begin
    if not assigned(frmPCP) then
    frmPCP := TfrmPCP.Create(Application);
  frmPCP.Show;
end;

procedure TFrmMenu.miPedidoindustrializaoClick(Sender: TObject);
begin
  if not assigned(frmPedidoIndustrializacao) then
    frmPedidoIndustrializacao := TfrmPedidoIndustrializacao.Create(Application);
  frmPedidoIndustrializacao.Show;

end;

procedure TFrmMenu.miServiosClick(Sender: TObject);
begin
   if not assigned(frmServicos) then
    frmServicos := TfrmServicos.Create(Application);
  frmServicos.Show;

end;



procedure TFrmMenu.miSetorClick(Sender: TObject);
begin
   if not assigned(frmPesquisaSetor) then
    frmPesquisaSetor := TfrmPesquisaSetor.Create(Application);
  frmPesquisaSetor.Show;

end;

procedure TFrmMenu.mitratamentosuperficialClick(Sender: TObject);
begin
   if not assigned(frmPesqTratamento) then
    frmPesqTratamento := TfrmPesqTratamento.Create(Application);
  frmPesqTratamento.Show;
end;

procedure TFrmMenu.miturnosClick(Sender: TObject);
begin
  if not assigned(frmPesqTurnos) then
    frmPesqTurnos := TfrmPesqTurnos.Create(Application);
  frmPesqTurnos.Show;


end;

procedure TFrmMenu.miposicaoestoqueClick(Sender: TObject);
begin
 if not assigned(frmPosicaoEstoque) then
 begin
  frmPosicaoEstoque := TfrmPosicaoEstoque.Create(Application);
  if (MDIChildCount > 1) then
    SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)

 end;
 frmPosicaoEstoque.Show;
end;

procedure TFrmMenu.miVendasperdidasClick(Sender: TObject);
begin
 if not assigned(frmVendaPerdidas) then
 begin
  frmVendaPerdidas := TfrmVendaPerdidas.Create(Application);
  if (MDIChildCount > 1) then
    SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)

 end;
 frmVendaPerdidas.Show;
end;

procedure TFrmMenu.EmissodeRecibo1Click(Sender: tObject);
begin
  if not assigned(FrmRecibo) then
  begin
    // try
    FrmRecibo := TFrmRecibo.Create(Application);
    FrmRecibo.BotoesAcesso;
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0);

    // finally
    // FrmRecibo.Destroy;
    // FrmRecibo := nil;
    // end;
  end;
  FrmRecibo.Show;
end;

procedure TFrmMenu.EntradaseSadasdeProdutos1Click(Sender: tObject);
begin
  if not assigned(FrmEntradaSaidaProdutos) then
  begin
    FrmEntradaSaidaProdutos := TFrmEntradaSaidaProdutos.Create(Application);
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0);

    // finally
    // Freeandnil(FrmEntradaSaidaProdutos);
    // end;
  end;
  FrmEntradaSaidaProdutos.Show;
end;

procedure TFrmMenu.Equipamento1Click(Sender: tObject);
begin
  if not assigned(fmPesqEquip) then
  begin
    fmPesqEquip := TfmPesqEquip.Create(Application);

    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      fmPesqEquip.Top := 0;

  end;
  fmPesqEquip.Show;
end;

procedure TFrmMenu.RateioporCentrodeCusto1Click(Sender: tObject);
begin

  // try
  if not assigned(FrmFinanceiroRateioCentroCusto) then
  begin
    FrmFinanceiroRateioCentroCusto := TFrmFinanceiroRateioCentroCusto.Create   (Application);
    if (MDIChildCount > 1) then
    begin
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    end
    else
    begin
      FrmFinanceiroRateioCentroCusto.Top := 0;
    end;
    // finally
    // FrmFinanceiroRateioCentroCusto.Destroy;
    // FrmFinanceiroRateioCentroCusto := nil;
    // end;
  end;
  FrmFinanceiroRateioCentroCusto.Height := 637;
  FrmFinanceiroRateioCentroCusto.Width := 973;
  FrmFinanceiroRateioCentroCusto.Show;
end;

procedure TFrmMenu.miInformaesExecutivasClick(Sender: tObject);
begin
  if not assigned(FrmSie) then
  begin
    FrmSie := TFrmSie.Create(Application);
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      FrmSie.Top := 5;

    // finally
    // FreeAndNil(FrmSie);
    // end;
  end;
  FrmSie.Show;
end;

procedure TFrmMenu.PedidoWeb1Click(Sender: tObject);
begin
//  if not Assigned(frmPesqPedidosWeb) then
//    frmPesqPedidosWeb := TfrmPesqPedidosWeb.Create(Application);
//  frmPesqPedidosWeb.Show;
  if not assigned(FrmPedidoWeb) then
  begin
    // try
    FrmPedidoWeb := TFrmPedidoWeb.Create(Application);
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      FrmPedidoWeb.Top := 0;

    // finally
    // FrmPedidoWeb.Destroy;
    // FrmPedidoWeb := nil;
    // end;
  end;
  FrmPedidoWeb.Show;
end;

procedure TFrmMenu.Pivot1Click(Sender: TObject);
begin
  if not Assigned(frmBasePivotFDAC) then
   frmBasePivotFDAC := TfrmBasePivotFDAC.Create(Application);
   frmBasePivotFDAC.WindowState := wsMaximized;
   frmBasePivotFDAC.Show;
end;

procedure TFrmMenu.SincronizarComisses1Click(Sender: tObject);
begin
  if not assigned(FormRecalculaComisPed) then
  begin
    // try
    FormRecalculaComisPed := TFormRecalculaComisPed.Create(Application);
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0);

    // finally
    // FormRecalculaComisPed.Destroy;
    // FormRecalculaComisPed := nil;
    // end;
  end;
  FormRecalculaComisPed.Show;
end;

procedure TFrmMenu.GerenciadordeCheques1Click(Sender: tObject);
begin
  if not assigned(FrmCheque) then
  begin
    FrmCheque := TFrmCheque.Create(Application);
    FrmCheque.BotoesAcesso;
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      FrmCheque.Top := 0;

    // finally
    // FreeAndNil(FrmCheque);
    // end;
  end;
  FrmCheque.Width := 964;
  FrmCheque.Height := 602;
  FrmCheque.Show;
end;

procedure TFrmMenu.Gerenciadordeetiquetas1Click(Sender: tObject);
begin
  if not assigned(FrmGerenciadorEtiquetas) then
  begin
    FrmGerenciadorEtiquetas := TFrmGerenciadorEtiquetas.Create(Application);
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      FrmGerenciadorEtiquetas.Top := 0;

    // finally
    // FreeAndNil(FormOrdCompra);
    // end;
  end;
  FrmGerenciadorEtiquetas.Show;
end;

procedure TFrmMenu.FormadePagamento1Click(Sender: tObject);
begin
  // try
  if not assigned(FrmCadastroFormaPagamento) then
  begin
    FrmCadastroFormaPagamento := TFrmCadastroFormaPagamento.Create(Application);
    FrmCadastroFormaPagamento.BotoesAcesso;
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)

      // finally
      // FrmCadastroFormaPagamento.Destroy;
      // FrmCadastroFormaPagamento := Nil;
      // end;
  end;
  FrmCadastroFormaPagamento.Show;
end;

procedure TFrmMenu.Formaoprecos1Click(Sender: TObject);
begin
   if not assigned(frmFormacaoPreco) then
    frmFormacaoPreco := TfrmFormacaoPreco.Create(Application);
   frmFormacaoPreco.Show

end;

function TFrmMenu.FormatarNomeBackup: string;
var
 path : string;
 ArquivoIni:TiniFile;
 wArquivo : String;
begin
  wArquivo   := ExtractFileName(Application.ExeName);
  wArquivo   := copy(wArquivo,1,pos('.EXE',UpperCase(wArquivo)));
  ArquivoIni := TiniFile.Create(dbInicio.SistemaLocal+'\'+wArquivo+'ini');
  try
    path:= ArquivoIni.ReadString('SERVIDOR','PATHBACKUP','D:\jobdados');

     case DayOfWeek( now ) of
        1: path:= path + '\Domingo';
        2: path:= path + '\Segunda';
        3: path:= path + '\Terca';
        4: path:= path + '\Quarta';
        5: path:= path + '\Quinta';
        6: path:= path + '\Sexta';
        7: path:= path + '\Sabado';
     end;
     result:= StringReplace(path+ '\backupAdjutor.gbk','\\','\',[rfReplaceAll,rfIgnoreCase]);
  finally
     ArquivoIni.free;
  end;
end;

procedure TFrmMenu.GiroEstoqueClick(Sender: tObject);
begin
  if not assigned(FrmGiroDoEstoquexCompras) then
  begin
    FrmGiroDoEstoquexCompras := TFrmGiroDoEstoquexCompras.Create(Application);
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0);

    // finally
    // FreeAndNil(FrmGiroDoEstoquexCompras);
    // end;
  end;
  FrmGiroDoEstoquexCompras.Show;
end;

procedure TFrmMenu.GerenciadodeIndustrializao1Click(Sender: tObject);
begin
  if not assigned(FrmEnfIndustrializacao) then
  begin
    // try
    // begin
    FrmEnfIndustrializacao := TFrmEnfIndustrializacao.Create(Application);
    FrmEnfIndustrializacao.WindowState := wsMaximized;
    FrmEnfIndustrializacao.BotoesAcesso;
//    if (MDIChildCount > 1) then
//      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
//    else
//      FrmEnfIndustrializacao.Top := 0;

    // end;
    // finally
    // FrmEnfIndustrializacao.Destroy;
    // FrmEnfIndustrializacao := nil;
    // end;
  end;
  FrmEnfIndustrializacao.Show;
end;

procedure TFrmMenu.AnlisePlanodeContasxCentrodeCusto1Click(Sender: tObject);
begin
  if not assigned(FrmFinanceiroPlanoContasCentroCusto) then
  begin
    FrmFinanceiroPlanoContasCentroCusto :=
      TFrmFinanceiroPlanoContasCentroCusto.Create(Application);
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      FrmFinanceiroPlanoContasCentroCusto.Top := 101;

    // finally
    // FreeAndNil( FrmFinanceiroPlanoContasCentroCusto );
    // end;
  end;
  FrmFinanceiroPlanoContasCentroCusto.Show;
end;

procedure TFrmMenu.Diretivas1Click(Sender: tObject);
begin
  if not assigned(FormDiretiva) then
  begin
    FormDiretiva := TFormDiretiva.Create(Application);
    FormDiretiva.BotoesAcesso;
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)

      // finally
      // FreeAndNil(FormDiretiva);
      // end;
  end;
  FormDiretiva.Show;
end;

procedure TFrmMenu.RxLabel1Click(Sender: tObject);
begin
  ShellExecute(Handle, 'open', PChar('http://www.novisistemas.com.br'), '', '',
    SW_SHOWNORMAL)
end;

procedure TFrmMenu.Cnae1Click(Sender: tObject);
begin
  // try
  if not assigned(FormCnae) then
  begin
    FormCnae := TFormCnae.Create(Application);
    FormCnae.BotoesAcesso;
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)

      // finally
      // FormCnae.Destroy;
      // FormCnae := nil;
      // end;
  end;
  FormCnae.Show;
end;

procedure TFrmMenu.FormResize(Sender: tObject);
begin
  inherited;
  imgLogoNovi.Top := self.Height - 205;
  pnNovidade.top := Pan_Versao.top - 125;
  btNovidade.top := Pan_Versao.top - 25;
end;

procedure TFrmMenu.FormShow(Sender: tObject);
var
  List: TStringList;
  arquivo, linha, cap: string;
  j, inicio, fim : integer;
begin
  EmissodeNFSe1.Caption := 'Emissão de NFSe'; // +  Capitalize(dbinicio.Empresa.CIDADE);
  if DBInicio.Usuario.USERNAME <> DBInicio.Usuario.USUARIOPADRAO then
    LiberaAcessoMenus;
  DeletarArquivos(  DBInicio.Versao.PATH+'NFe4'+'\temp\' ,'logo.jpg');
  imgSuporte.Visible := DBInicio.Empresa.bUSP_ABRICHAMADO;
  miEnvaseprodutos.Visible := DBInicio.Empresa.PMT_HABILITA_ENVASE;
  miDemandaProducao.Visible := DBInicio.Empresa.PMT_HABILITAR_MRP ;
  Previsodecompras1.Visible := DBInicio.Empresa.PMT_HABILITAR_MRP ;
  miGerenciamentoPCP.Visible := DBInicio.Empresa.PMT_HABILITAR_MRP ;
  NovoApontamentos1.Visible := DBInicio.Empresa.PMT_HABILITAR_MRP ;

  PCPCentrodeProduoNovo1.Visible := DBInicio.Empresa.PMT_HABILITAR_PRODU_ANTIGO;
  PrevisodeConsumodeMaterial1.Visible := DBInicio.Empresa.PMT_HABILITAR_PRODU_ANTIGO;
  miApontamentos.Visible := DBInicio.Empresa.PMT_HABILITAR_PRODU_ANTIGO;
  miGerenciarApontamento.Visible := DBInicio.Empresa.PMT_HABILITAR_PRODU_ANTIGO;
  if dbInicio.BuscaUmDadoSqlAsString('SELECT USP_DASH_INTELIGENCIA ' +
                            ' FROM USUARIO_PARAMETRO ' +
                            ' WHERE USP_COD_USUARIO = ' + QuotedStr(DBInicio.Usuario.CODIGO) ) = 'S' then
  begin
    if not Assigned(frmDashBoardInteligencia) then
      frmDashBoardInteligencia := tfrmDashBoardInteligencia.Create(Application);
     frmDashBoardInteligencia.ShowModal;
  end
  else
  if (DBInicio.Empresa.bUSP_DASH_VENDAS
    or DBInicio.Empresa.bUSP_DASH_FINANCEIRO)
    or (dbInicio.BuscaUmDadoSqlAsString('SELECT USP_DASH_INTELIGENCIA FROM USUARIO_PARAMETRO WHERE USP_COD_USUARIO = ' + DBInicio.Usuario.CODIGO) = 'S') then
  begin
    if not dbinicio.Empresa.bNaoAbrirDash then
    begin
     if not Assigned(frmDashBoardComecialFin) then
      frmDashBoardComecialFin := tfrmDashBoardComecialFin.Create(Application);
      frmDashBoardComecialFin.ShowModal;
    end;
    imgDashboard.Visible := True;
    miDashboard.Visible := true;
     miDashboard.Enabled := true;
  end
  else
  begin
   imgDashboard.Visible := False;
   miDashboard.Visible := false;
  end;
  lbNovo.Caption := 'Veja o que há de novo na versão ' + DBInicio.Versao.VERSAO + iif(DBInicio.Versao.patch > 0,  ' patch ' + IntToStr(DBInicio.Versao.patch), '');
  lbNovo.Width := pnNovidade.Width;
  lbNovo.Font.Color := clWebOrange;
  btNovidade.Click;
  arquivo := DBInicio.SistemaLocal + 'logVersões\Versao' + DBInicio.Versao.VERSAO + '.txt';
  if (FileExists(arquivo)) then
  begin
    List := TStringList.Create;
    List.Loadfromfile(arquivo);
    for j := List.Count -1  downto 0 do
    begin
      linha := Trim(List[j]);
      if copy(linha, 1, 1) = '*' then
      begin
        inicio := pos('-', linha) + 1 ;
        fim := pos('[', linha) - 1;
        cap := copy(linha, inicio, fim - inicio);
      end;


    end;

    List.Free;
  end;
  RxLEmpresa.Caption := 'Copyright© 2009-' + IntToStr(YearOf(Now)) + ' by Novi Sistemas';
end;

procedure TFrmMenu.Endereamento1Click(Sender: tObject);
begin
  if not assigned(FrmProdutoEnderecamento) then
  begin
    FrmProdutoEnderecamento := TFrmProdutoEnderecamento.Create(Application);
    FrmProdutoEnderecamento.BotoesAcesso;
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)

      // finally
      // FreeAndNil(FrmProdutoEnderecamento);
      // end;
  end;
  FrmProdutoEnderecamento.Show;
end;

procedure TFrmMenu.abelaIBPT1Click(Sender: tObject);
var
  tcr: tFrmIBPT;
begin
  // try
  if not assigned(FrmIBPT) then
  begin
    tcr := tFrmIBPT.Create(Application);
    tcr.BotoesAcesso;
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)

      // finally
      // FreeAndNil(tcr);
      // end;
  end;
  tcr.Width := 846;
  tcr.Height := 436;
  tcr.Show;
end;

procedure TFrmMenu.abelaCEST1Click(Sender: tObject);
var
  tcr: tFrmCEST;
begin
  if not assigned(FrmCEST) then
  begin
    // try
    tcr := tFrmCEST.Create(Application);
    tcr.BotoesAcesso;
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)

      // finally
      // FreeAndNil(tcr);
      // TrimAppMemorySize;
      // end;
  end;
  tcr.Width := 781;
  tcr.Height := 455;
  tcr.Show;
end;

procedure TFrmMenu.abelaCSOSN1Click(Sender: tObject);
var
  tcr: tFrmCSOSN;
begin
  if not assigned(FrmCSOSN) then
  begin
    // try
    tcr := tFrmCSOSN.Create(Application);
    tcr.BotoesAcesso;
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)

      // finally
      // FreeAndNil(tcr);
      // end;
  end;
  tcr.Width := 675;
  tcr.Height := 455;
  tcr.Show;
end;

procedure TFrmMenu.ExecutarScrptSQL1Click(Sender: tObject);
var
  tcr: TFrmScript;
begin
  if not assigned(FrmScript) then
  begin
    // try
    tcr := TFrmScript.Create(Application);
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      tcr.Top := 309;

    // finally
    // FreeAndNil(tcr);
    // end;
  end;
  tcr.Show;
end;

procedure TFrmMenu.eXPEDIO1Click(Sender: tObject);
var
  tcr: TFrmExpedicaoPedidos;
begin
  if not assigned(FrmExpedicaoPedidos) then
  begin
    tcr := TFrmExpedicaoPedidos.Create(Application);
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      tcr.Top := 0;

    // finally
    // FreeAndNil(tcr);
    // end;
  end;
  tcr.Show;
end;

procedure TFrmMenu.CurvaABCProdutosporVendedor1Click(Sender: tObject);
var
  tcr: tFrmProdutosPorVendedor;
begin

  if not assigned(FrmProdutosPorVendedor) then
  begin
    // try
    tcr := tFrmProdutosPorVendedor.Create(Application);
    // tcr.Filtro;
    // tcr.btnImprime.Click;
//    if (MDIChildCount > 1) then
//      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0);

    // finally
    // FreeAndNil(tcr);
    // end;
  end;
   tcr.Show;


end;

procedure TFrmMenu.miApontamentosdeCarga1Click(Sender: TObject);
begin
  if not assigned(frmApontamentosCargas) then
   frmApontamentosCargas := TfrmApontamentosCargas.Create(Application);
 frmApontamentosCargas.Show;
end;

procedure TFrmMenu.ApplicationEvents1Message(var Msg: TMsg;
  var Handled: Boolean);
var
  act: TWinControl;
begin
  if Msg.message = WM_KEYDOWN then
  begin
    if Msg.wParam = VK_RETURN then
    begin
      act := Screen.ActiveControl;
      if not((act is TCustomMemo) or (act is TBitBtn) or (act is TBitBtn) or
        (act is TDBGrid) or (act is TGroupBox)) then
        Screen.ActiveForm.Perform(WM_NextDlgCtl, 0, 0);
    end;
  end;
end;

procedure TFrmMenu.Artefato1Click(Sender: TObject);
begin
 if not Assigned(frmPesqArtefato) then
  frmPesqArtefato := tfrmPesqArtefato.create(self);
  frmPesqArtefato.showmodal;

end;

procedure TFrmMenu.abelasdePreos1Click(Sender: tObject);
begin
  if not assigned(FrmPesquisaTabelas) then
  begin
    FrmPesquisaTabelas := tFrmPesquisaTabelas.Create(self);
    FrmPesquisaTabelas.BotoesAcesso;
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      FrmPesquisaTabelas.Top := 0;

    // finally
    // FreeAndNil(tcr);
    // end;
  end;
  FrmPesquisaTabelas.Show;
end;

procedure TFrmMenu.RelatriodeInventarioCiclico1Click(Sender: tObject);
begin
  if not assigned(RelatorioInventarioCiclicoForm) then
  begin
    RelatorioInventarioCiclicoForm := TRelatorioInventarioCiclicoForm.Create  (Application);
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0);

    // finally
    // Freeandnil(RelatorioInventarioCiclicoForm);
    // end;
  end;
  RelatorioInventarioCiclicoForm.Show;
end;

procedure TFrmMenu.LiberaAcessoMenus;
Var
  i: Integer;
  sql: String;
  ///
  procedure LiberaAcessoSubmenus(Form: TComponent; NomeComp: String; wNOME_MENU: String);
  Var
    Y: Integer;
    wSUB_MENU, pSql: String;
  begin
    for Y := 0 to TMenuItem(Form.FindComponent(NomeComp)).Count - 1 do
    begin
      if TMenuItem(Form.FindComponent(NomeComp)).Items[Y].Tag = -1 then
        TMenuItem(Form.FindComponent(NomeComp)).Items[Y].Enabled := True
      else
      if TMenuItem(Form.FindComponent(NomeComp)).Items[Y].Caption <> '-' then
      begin
        wSUB_MENU :=
          (wNOME_MENU + ExtrairCarecter(TMenuItem(Form.FindComponent(NomeComp))
          .Items[Y].Caption));
        pSql := 'from USUARIO_ACESSO where USA_COD_USUARIO = ' +
          qStr(DBInicio.Usuario.codigo) + ' and USA_MENU = ' + qStr(wSUB_MENU);
        if DBInicio.BuscaUmDadoSqlAsInteger('select count(*) ' + pSql) > 0 then
          TMenuItem(Form.FindComponent(NomeComp)).Items[Y].Enabled :=
            (DBInicio.BuscaUmDadoSqlAsInteger('select USA_ACESSO ' + pSql) > 0)
        else
          TMenuItem(Form.FindComponent(NomeComp)).Items[Y].Enabled := false;
      end;
    end;
  end;

///
begin
  for i := 0 to FrmMenu.MainMenu.Items.Count - 1 do
  begin
    if FrmMenu.MainMenu.Items[i].Caption <> '-' then
    begin
      sql := 'from USUARIO_ACESSO where USA_COD_USUARIO = ' +
        qStr(DBInicio.Usuario.codigo) + ' and USA_MENU = ' +
        qStr(ExtrairCarecter(FrmMenu.MainMenu.Items[i].Caption));

      if DBInicio.BuscaUmDadoSqlAsInteger('select count(*) ' + sql) > 0 then
      begin
        if DBInicio.BuscaUmDadoSqlAsInteger('select USA_ACESSO ' + sql) > 0 then
        begin
          FrmMenu.MainMenu.Items[i].Enabled := true;
          LiberaAcessoSubmenus(FrmMenu, FrmMenu.MainMenu.Items[i].name,
            ExtrairCarecter(FrmMenu.MainMenu.Items[i].Caption));
        end
        else
        begin
          FrmMenu.MainMenu.Items[i].Enabled := false;
          LiberaAcessoSubmenus(FrmMenu, FrmMenu.MainMenu.Items[i].name,
            ExtrairCarecter(FrmMenu.MainMenu.Items[i].Caption));
        end;
      end
      else
      begin
        FrmMenu.MainMenu.Items[i].Enabled := false;
        LiberaAcessoSubmenus(FrmMenu, FrmMenu.MainMenu.Items[i].name,
          ExtrairCarecter(FrmMenu.MainMenu.Items[i].Caption));
      end;
    end;
  end;

  FrmMenu.SpBClientes.Enabled := FrmMenu.Clientes1.Enabled;
  FrmMenu.SpBProdutos.Enabled := FrmMenu.Produtos1.Enabled;
  FrmMenu.SpBPedidos.Enabled := FrmMenu.Pedidos.Enabled;
  FrmMenu.SpBProducao.Enabled := FrmMenu.PCPCentrodeProduoNovo1.Enabled;
  FrmMenu.SpBFaturamento.Enabled := FrmMenu.Faturamento2.Enabled;
  FrmMenu.SpBBackup.Enabled := FrmMenu.BackupDados.Enabled;
  miorcamento.Visible := DBInicio.Empresa.wPMT_PROD_TERMICO;
  micadastroprocessos.Visible := DBInicio.Empresa.wPMT_PROD_TERMICO;
  Formaoprecos1.Visible := DBInicio.Empresa.wPMT_PROD_TERMICO;
  miprocessos.Visible := DBInicio.Empresa.wPMT_PROD_TERMICO;
  miPedidoindustrializao.Visible := DBInicio.Empresa.wPMT_PROD_TERMICO;
  miPCP.Visible := DBInicio.Empresa.wPMT_PROD_TERMICO;
  miApontar.Visible := DBInicio.Empresa.wPMT_PROD_TERMICO;
  miApontamentosdeCarga1.Visible := DBInicio.Empresa.wPMT_PROD_TERMICO;
  N25.Visible := DBInicio.Empresa.wPMT_PROD_TERMICO;
end;

end.
