unit Ped0004;

interface

uses
    PesquisaClientesForm,
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, BaseDBForm,
    Mask, StdCtrls, Buttons, Grids, DBGrids,RwFunc, Db, DBTables, math,
    Data.DBXFirebird, SgDbSeachComboUnit, ACBrEnterTab, ACBrBase, ACBrCalculadora, Data.FMTBCd,
    Datasnap.DBClient, Data.SqlExpr, Datasnap.Provider, Vcl.DBCtrls,
    Vcl.ExtCtrls, BaseForm, system.StrUtils, JvExMask, JvToolEdit, Vcl.ComCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, cxDBData, cxCheckBox, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, QExport4, QExport4XLS,
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
  cxDataControllerConditionalFormattingRulesManagerDialog ;

const
  UM_MYMESSAGE = WM_USER + 1;

type
  TFormPedidoGrid = class(TfrmBaseDB)
    DsPedidos: TDataSource;
    SqlCdsPesq: tClientDataSet;
    SqlCdsPesqPED_DTENTRADA: TSQLTimeStampField;
    SqlCdsPesqPED_DTSAIDA: TSQLTimeStampField;
    SqlCdsPesqPED_OBSNOTA: TStringField;
    SqlCdsPesqPED_DTLIM_ATD: TSQLTimeStampField;
    SqlCdsPesqCLI_FONE: TStringField;
    SqlCdsPesqCLI_RAZAO: TStringField;
    SqlCdsPesqPED_DTEMBARQUE: TSQLTimeStampField;
    SqlCdsPesqCLI_CGC: TStringField;
    SqlCdsItens: tClientDataSet;
    DsPedItens: TDataSource;
    SqlCdsItensPRD_REFER: TStringField;
    SqlCdsItensPRF_PRDDESCRI: TStringField;
    SqlCdsItensPRF_QTDE: TFMTBCdField;
    SqlCdsItensPRF_SITUACAO: TStringField;
    SqlCdsItensCC_SITUACAO: TStringField;
    SqlCdsPesqPED_VLTOTAL_BRUTO: TFMTBCdField;
    SqlCdsPesqPED_VLFATURADO: TFMTBCdField;
    SqlCdsItensPRF_QTDEFAT: TFMTBCdField;
    SqlCdsPesqPED_SITUACAO: TStringField;
    SqlCdsPesqREP_CODIGO: TStringField;
    SqlCdsPesqCLI_FANTASIA: TStringField;
    SqlCdsItensCC_TOTAL: TFloatField;
    SqlCdsPesqOPV_DESCRICAO: TStringField;
    SqlCdsPesqPED_REGISTRO: TIntegerField;
    SqlCdsPesqPED_CONTATO_CLIENTE: TStringField;
    SqlCdsPesqPED_CODIGO_ORCAMENTO: TStringField;
    SqlCdsItensPRD_PRODSERV: TStringField;
    SqlCdsPesqREP_NOME: TStringField;
    SqlCdsPesqPMT_MOTIVO: TStringField;
    SqlCdsPesqPED_MOTIVO_CANCELAMENTO: TStringField;
    SqlCdsPesqCLI_UF: TStringField;
    SqlCdsPesqPED_PCP_SIT_PRODUCAO: TStringField;
    SqlCdsPesqEMP_CODIGO: TStringField;
    dspSqlCdsPesq: TDataSetProvider;
    qSqlCdsPesq: TSQLQuery;
    dspSqlCdsItens: TDataSetProvider;
    qSqlCdsItens: TSQLQuery;
    SqlCdsClie: tSqlQuery;
    SqlCdsTipo: tSqlQuery;
    SqlCdsVendedor: tSqlQuery;
    qTotais: TSQLQuery;
    dspTotais: TDataSetProvider;
    CdsTotais: TClientDataSet;
    dsTotais: TDataSource;
    CdsTotaisIPI: TFMTBCdField;
    CdsTotaisFRETE: TFMTBCdField;
    CdsTotaisSEGURO: TFMTBCdField;
    CdsTotaisDESPSAS: TFMTBCdField;
    qCtoCusto: TSQLQuery;
    Panel1: TPanel;
    Lb_Lista: TLabel;
    GbData: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    DataTipo: TComboBox;
    GroupBox1: TGroupBox;
    Rad_Cliente: TRadioButton;
    Rad_Fantasia: TRadioButton;
    Rad_Pedido: TRadioButton;
    Rad_Pedido_Compra: TRadioButton;
    Rad_Vendedor: TRadioButton;
    Rad_Contato: TRadioButton;
    Rad_Orcamento: TRadioButton;
    rdCCusto: TRadioButton;
    GroupBox3: TGroupBox;
    cbTipo: TSgDbSearchCombo;
    name: TGroupBox;
    cbbFaturamento: TComboBox;
    rgEmpresaLogada: TRadioGroup;
    BtnSair: TBitBtn;
    BitPesquisar: TBitBtn;
    SqlCdsPesqPED_CODIGO: TStringField;
    SqlCdsPesqPED_VLTOTAL_IPI: TFMTBCdField;
    SqlCdsPesqPED_VLFRETE: TFMTBCdField;
    SqlCdsPesqPED_VLSEGURO: TFMTBCdField;
    SqlCdsPesqPED_DESP_ACES: TFMTBCdField;
    GroupBox6: TGroupBox;
    Label17: TLabel;
    Label22: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    TotalItens: TDBEdit;
    TotalPedido: TDBEdit;
    TotalFaturado: TDBEdit;
    TotalIPI: TDBEdit;
    TotalFrete: TDBEdit;
    TotalDespesas: TDBEdit;
    TotalSeguro: TDBEdit;
    CdsTotaisPEDIDO: TFMTBCdField;
    CdsTotaisFATURADO: TFMTBCdField;
    SqlCdsItensPRF_PRECO: TFMTBCdField;
    SqlCdsPesqselecionado: TBooleanField;
    btnAgrupar: TBitBtn;
    SqlCdsPesqOPV_CODIGO: TIntegerField;
    SqlCdsPesqPCL_CODIGO: TStringField;
    SqlCdsPesqcli_codigo: TStringField;
    SqlCdsPesqTRP_CODIGO: TStringField;
    SqlCdsPesqope_codigo: TIntegerField;
    SqlCdsPesqPED_FRETE: TStringField;
    SqlCdsPesqPED_ORS_FONE: TStringField;
    SqlCdsPesqPED_ORS_FAX: TStringField;
    SqlCdsPesqPED_ORS_EMAIL: TStringField;
    SqlCdsPesqPED_ORS_ESTADO: TStringField;
    SqlCdsPesqFPG_REGISTRO: TIntegerField;
    SqlCdsPesqPED_DESP_IMPOR: TFMTBCDField;
    SqlCdsPesqPED_VALOR_ST: TFMTBCDField;
    SqlCdsPesqPED_VLTOTAL_LIQ: TFMTBCDField;
    SqlCdsPesqPED_DESCTOVL: TFMTBCDField;
    SqlCdsPesqPED_EXP_UF: TStringField;
    SqlCdsPesqPED_EXP_LOCAL_EXP: TStringField;
    SqlCdsPesqPED_EXP_LOCAL_RECINTO: TStringField;
    SqlCdsPesqSitExp: TStringField;
    SqlCdsPesqPED_PLACA: TStringField;
    SqlCdsPesqENDERECO_ENTREGA: TIntegerField;
    SqlCdsItensprd_codigo: TStringField;
    SqlCdsItensPRDCO_CODIGO_ORIGINAL: TStringField;
    SqlCdsItensAMX_CODIGO_DESTINO: TStringField;
    SqlCdsItensPRF_COMPL_DESCRI: TStringField;
    SqlCdsItensPRF_TABPRECO: TStringField;
    SqlCdsItensPRF_PRECO_BRUTO: TFMTBCDField;
    SqlCdsItensPRF_CUSTO: TFMTBCDField;
    SqlCdsItensPRF_MARGEM_PRODUTO: TFMTBCDField;
    SqlCdsItensPRF_ACRESCIMO: TFMTBCDField;
    SqlCdsItensPRF_ITEMCOMIS: TFMTBCDField;
    SqlCdsItensPRF_IPIALIQ: TFMTBCDField;
    SqlCdsItensPRF_VALOR_ST: TFMTBCDField;
    SqlCdsItensPRF_ICMSALIQ: TFMTBCDField;
    SqlCdsItensPRDL_REGISTRO: TIntegerField;
    SqlCdsItensPRG_REGISTRO: TIntegerField;
    SqlCdsItensPRF_REGISTRO_VINCULADO: TIntegerField;
    SqlCdsItensPRF_VALOR_ICMS: TFMTBCDField;
    SqlCdsItensPRF_IDESCTO1: TFloatField;
    SqlCdsItensPRF_IDESCTO2: TFloatField;
    SqlCdsPesqPED_NUMERO_PED_CLIENTE: TStringField;
    SqlCdsPesqREP_CODIGO_INTERNO: TStringField;
    SqlCdsItensPRF_PRODUTO_AGREGADO: TStringField;
    SqlCdsItensPRF_PRAZO_DIAS: TIntegerField;
    SqlCdsItensPRF_QTDEPEND: TFMTBCDField;
    SqlCdsPesqpend: TFMTBCDField;
    SqlCdsItensPRF_PRODUTO_SEMVALOR: TStringField;
    RxDataInicial: TJvDateEdit;
    RxDataFinal: TJvDateEdit;
    Panel2: TPanel;
    GbCliente: TGroupBox;
    Edt_Lista: TEdit;
    cbPesq: TSgDbSearchCombo;
    CbFantasia: TSgDbSearchCombo;
    cbVendedor: TSgDbSearchCombo;
    gbCCusto: TGroupBox;
    EdProjetoObraCodigo: TEdit;
    CbProjetoObra: TSgDbSearchCombo;
    GbMotivoCancela: TGroupBox;
    LblMotivoCancelamento: TLabel;
    Panel3: TPanel;
    pfinalizado: TPanel;
    Image1: TImage;
    pfaturado: TPanel;
    Image2: TImage;
    pdespachado: TPanel;
    Image3: TImage;
    pimpedido: TPanel;
    Image4: TImage;
    pgPesquisa: TPageControl;
    tsPedidos: TTabSheet;
    tsitem: TTabSheet;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    rdNoi: TRadioButton;
    chkNaoLiberados: TCheckBox;
    ppedido: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    Label9: TLabel;
    DBText2: TDBText;
    cdsTotaisQUANTIDADE: TIntegerField;
    cxtbPedido: TcxGridDBTableView;
    cxLevelPedidos: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxlevel_Itens: TcxGridLevel;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxtbPedidoselecionado: TcxGridDBColumn;
    cxtbPedidoPED_CODIGO: TcxGridDBColumn;
    cxtbPedidoPED_DTENTRADA: TcxGridDBColumn;
    cxtbPedidoPED_DTSAIDA: TcxGridDBColumn;
    cxtbPedidoPED_OBSNOTA: TcxGridDBColumn;
    cxtbPedidoPED_DTLIM_ATD: TcxGridDBColumn;
    cxtbPedidoPED_DTEMBARQUE: TcxGridDBColumn;
    cxtbPedidoPED_VLTOTAL_BRUTO: TcxGridDBColumn;
    cxtbPedidoPED_VLFATURADO: TcxGridDBColumn;
    cxtbPedidoPED_SITUACAO: TcxGridDBColumn;
    cxtbPedidoREP_CODIGO: TcxGridDBColumn;
    cxtbPedidoCLI_CGC: TcxGridDBColumn;
    cxtbPedidoCLI_RAZAO: TcxGridDBColumn;
    cxtbPedidoCLI_FONE: TcxGridDBColumn;
    cxtbPedidoCLI_FANTASIA: TcxGridDBColumn;
    cxtbPedidoOPV_DESCRICAO: TcxGridDBColumn;
    cxtbPedidoPED_REGISTRO: TcxGridDBColumn;
    cxtbPedidoPED_CONTATO_CLIENTE: TcxGridDBColumn;
    cxtbPedidoPED_CODIGO_ORCAMENTO: TcxGridDBColumn;
    cxtbPedidoREP_NOME: TcxGridDBColumn;
    cxtbPedidoPMT_MOTIVO: TcxGridDBColumn;
    cxtbPedidoPED_MOTIVO_CANCELAMENTO: TcxGridDBColumn;
    cxtbPedidoCLI_UF: TcxGridDBColumn;
    cxtbPedidoPED_PCP_SIT_PRODUCAO: TcxGridDBColumn;
    cxtbPedidoEMP_CODIGO: TcxGridDBColumn;
    cxtbPedidoPED_VLTOTAL_IPI: TcxGridDBColumn;
    cxtbPedidoPED_VLFRETE: TcxGridDBColumn;
    cxtbPedidoPED_VLSEGURO: TcxGridDBColumn;
    cxtbPedidoPED_DESP_ACES: TcxGridDBColumn;
    cxtbPedidoPED_DESP_IMPOR: TcxGridDBColumn;
    cxtbPedidoPED_VALOR_ST: TcxGridDBColumn;
    cxtbPedidoPED_VLTOTAL_LIQ: TcxGridDBColumn;
    cxtbPedidoOPV_CODIGO: TcxGridDBColumn;
    cxtbPedidoPCL_CODIGO: TcxGridDBColumn;
    cxtbPedidocli_codigo: TcxGridDBColumn;
    cxtbPedidoTRP_CODIGO: TcxGridDBColumn;
    cxtbPedidoope_codigo: TcxGridDBColumn;
    cxtbPedidoPED_FRETE: TcxGridDBColumn;
    cxtbPedidoPED_ORS_FONE: TcxGridDBColumn;
    cxtbPedidoPED_ORS_FAX: TcxGridDBColumn;
    cxtbPedidoPED_ORS_EMAIL: TcxGridDBColumn;
    cxtbPedidoPED_ORS_ESTADO: TcxGridDBColumn;
    cxtbPedidoFPG_REGISTRO: TcxGridDBColumn;
    cxtbPedidoPED_DESCTOVL: TcxGridDBColumn;
    cxtbPedidoPED_EXP_UF: TcxGridDBColumn;
    cxtbPedidoPED_EXP_LOCAL_EXP: TcxGridDBColumn;
    cxtbPedidoPED_EXP_LOCAL_RECINTO: TcxGridDBColumn;
    cxtbPedidoSitExp: TcxGridDBColumn;
    cxtbPedidoPED_PLACA: TcxGridDBColumn;
    cxtbPedidoENDERECO_ENTREGA: TcxGridDBColumn;
    cxtbPedidoPED_NUMERO_PED_CLIENTE: TcxGridDBColumn;
    cxtbPedidoREP_CODIGO_INTERNO: TcxGridDBColumn;
    cxtbPedidopend: TcxGridDBColumn;
    cxGrid1DBTableView2PRD_REFER: TcxGridDBColumn;
    cxGrid1DBTableView2PRF_PRDDESCRI: TcxGridDBColumn;
    cxGrid1DBTableView2PRF_QTDE: TcxGridDBColumn;
    cxGrid1DBTableView2PRF_SITUACAO: TcxGridDBColumn;
    cxGrid1DBTableView2CC_SITUACAO: TcxGridDBColumn;
    cxGrid1DBTableView2PRF_QTDEFAT: TcxGridDBColumn;
    cxGrid1DBTableView2CC_TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView2PRD_PRODSERV: TcxGridDBColumn;
    cxGrid1DBTableView2PRF_PRECO: TcxGridDBColumn;
    cxGrid1DBTableView2prd_codigo: TcxGridDBColumn;
    cxGrid1DBTableView2PRDCO_CODIGO_ORIGINAL: TcxGridDBColumn;
    cxGrid1DBTableView2AMX_CODIGO_DESTINO: TcxGridDBColumn;
    cxGrid1DBTableView2PRF_COMPL_DESCRI: TcxGridDBColumn;
    cxGrid1DBTableView2PRF_TABPRECO: TcxGridDBColumn;
    cxGrid1DBTableView2PRF_PRECO_BRUTO: TcxGridDBColumn;
    cxGrid1DBTableView2PRF_CUSTO: TcxGridDBColumn;
    cxGrid1DBTableView2PRF_MARGEM_PRODUTO: TcxGridDBColumn;
    cxGrid1DBTableView2PRF_ACRESCIMO: TcxGridDBColumn;
    cxGrid1DBTableView2PRF_ITEMCOMIS: TcxGridDBColumn;
    cxGrid1DBTableView2PRF_IPIALIQ: TcxGridDBColumn;
    cxGrid1DBTableView2PRF_VALOR_ST: TcxGridDBColumn;
    cxGrid1DBTableView2PRF_ICMSALIQ: TcxGridDBColumn;
    cxGrid1DBTableView2PRDL_REGISTRO: TcxGridDBColumn;
    cxGrid1DBTableView2PRG_REGISTRO: TcxGridDBColumn;
    cxGrid1DBTableView2PRF_REGISTRO_VINCULADO: TcxGridDBColumn;
    cxGrid1DBTableView2PRF_VALOR_ICMS: TcxGridDBColumn;
    cxGrid1DBTableView2PRF_IDESCTO1: TcxGridDBColumn;
    cxGrid1DBTableView2PRF_IDESCTO2: TcxGridDBColumn;
    cxGrid1DBTableView2PRF_PRODUTO_AGREGADO: TcxGridDBColumn;
    cxGrid1DBTableView2PRF_PRAZO_DIAS: TcxGridDBColumn;
    cxGrid1DBTableView2PRF_QTDEPEND: TcxGridDBColumn;
    cxGrid1DBTableView2PRF_PRODUTO_SEMVALOR: TcxGridDBColumn;
    SqlCdsItensemp_codigo: TStringField;
    SqlCdsItensPED_CODIGO: TStringField;
    cxStyleRepository1: TcxStyleRepository;
    cxGreen: TcxStyle;
    cxBlue: TcxStyle;
    cxGray: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxRed: TcxStyle;
    chkProducao: TCheckBox;
    chkDemanda: TCheckBox;
    cxtbPedidoNF_EMISSAO: TcxGridDBColumn;
    SqlCdsPesqNF_EMISSAO: TDateField;
    SqlCdsItensPRF_B2B_PEDIDO_COMPRA: TStringField;
    SqlCdsItensPRF_B2B_ITEM_PEDIDO_COMPRA: TIntegerField;
    SqlCdsPesqCLI_BAIRRO: TStringField;
    cxtbPedidoCLI_BAIRRO: TcxGridDBColumn;
    SqlCdsPesqNF_NOTANUMBER: TStringField;
    NF_NOTANUMBER: TcxGridDBColumn;
    btExportar: TButton;
    SaveDialog1: TSaveDialog;
    QExport4XLS1: TQExport4XLS;
    SqlCdsItensPRF_PRAZO_ENTREGA: TDateField;
    SqlCdsItensPRF_SEQUENCIA: TIntegerField;
    SqlCdsItensPRF_REGISTRO: TIntegerField;
    SqlCdsItensPRD_UND: TStringField;
    cxPadrao: TcxStyle;
    SqlCdsPesqPED_VLDIFAL: TFMTBCDField;
    procedure BtnSairClick(Sender: tObject);
    procedure Rad_ClienteClick(Sender: tObject);
    procedure Edt_ListaExit(Sender: tObject);
    procedure BitPesquisarClick(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure cbPesqSelect(Sender: TObject);
    procedure CbFantasiaSelect(Sender: TObject);
    procedure CbProjetoObraSelect(Sender: TObject);
    procedure cbVendedorSelect(Sender: TObject);
    procedure EdProjetoObraCodigoExit(Sender: TObject);
    procedure btnAgruparClick(Sender: TObject);
    procedure cbbFaturamentoChange(Sender: TObject);
    procedure cbTipoChange(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure RxDataInicialExit(Sender: TObject);
    procedure RxDataFinalExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DataTipoChange(Sender: TObject);
    procedure tsitemShow(Sender: TObject);
    procedure SqlCdsPesqAfterScroll(DataSet: TDataSet);
    procedure SqlCdsPesqselecionadoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure chkNaoLiberadosClick(Sender: TObject);
    procedure cxlevel_ItensGetGridView(Sender: TcxGridLevel; AMasterRecord: TcxCustomGridRecord; var AGridView: TcxCustomGridView);
    procedure cxtbPedidoselecionadoPropertiesChange(Sender: TObject);
    procedure cxtbPedidoDblClick(Sender: TObject);
    procedure cxtbPedidoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxtbPedidoStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure cxtbPedidoDataControllerFilterChanged(Sender: TObject);
    procedure cxtbPedidoDataControllerFilterGetValueList(Sender: TcxFilterCriteria; AItemIndex: Integer; AValueList: TcxDataFilterValueList);
    procedure SqlCdsPesqPED_SITUACAOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure chkProducaoClick(Sender: TObject);
    procedure cxtbPedidoFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure cxtbPedidoDataControllerDetailExpanding(ADataController: TcxCustomDataController; ARecordIndex: Integer; var AAllow: Boolean);
    procedure FormShow(Sender: TObject);
    procedure btExportarClick(Sender: TObject);
    procedure cbPesqButtonClick(Sender: TObject);
  private
    fEnvase : boolean;
    sqlItem : string;
    Pesquisar : boolean;
    wcondicao: string;
    procedure LayOutPesq;
    procedure BuscaPedidos;
    procedure SomarTotais;
    procedure Transferir_pedido;
    procedure ValidarCliente(const razao:string); // valida seleção para agrupar, tem que ser o mesmo cliente, pode desconsiderar se nenhuma foi marcado
    procedure ValidaTipoPedido(const OPV_DESCRICAO : string);
    procedure ValidaItemPendente;
    procedure ValidarAgrupamento;
    procedure GravaPedido;
    procedure AbrirItem;
    procedure umMyMessage(var Message: TMessage); message UM_MYMESSAGE;
  public
    property Envase : boolean read fEnvase write fEnvase;
  end;

var
  FormPedidoGrid: TFormPedidoGrid;

implementation

{$R *.DFM}

uses Uteis, iniciodb , upedidodao, Animacao;

procedure TFormPedidoGrid.GravaPedido;
var
  clone, cloneItem : TClientDataSet;
  numped, p_PRF_PRAZO_ENTREGA: string;
  fCodEmSeqUnica:string;
  rValorFrete,
  rValorDespesas,
  rValorSeguro,
  rValorDespesasImportacao,
  rTotalIPI,
  rTotalST, rTotalDifal,
  rTotalValorLiquido,
  rValorTotalBruto, rDescontoValor  :Currency;
  obs,obsNota, obsPed, obsPedCli : string;
  vIdPedido, vIdPedItem, prfSequencia : integer;
  vtipoOpv,wvinculo : integer;

begin
  prfSequencia := 0;
  rValorFrete :=0 ;
  rValorDespesas := 0 ;
  rValorSeguro := 0 ;
  rValorDespesasImportacao :=0 ;
  rTotalIPI := 0;
  rTotalST := 0;
  rTotalDifal := 0;
  rTotalValorLiquido := 0;
  rValorTotalBruto := 0;
  rDescontoValor := 0 ;
  obs:= '';
  obsNota:= '';
 clone := TClientDataSet.Create(Self);
 try
  clone.CloneCursor(sqlCdsPesq,False,true);
  clone.Filtered := False;
  clone.Filter:= '(selecionado = true)';
  clone.Filtered := True;
  clone.First;
  while not clone.Eof do
  begin
    rValorFrete :=rValorFrete+ clone.FieldByName('PED_VLFRETE').AsCurrency;
    rValorDespesas :=  rValorDespesas +  clone.FieldByName('PED_DESP_ACES').AsCurrency;
    rValorSeguro := rValorSeguro + clone.FieldByName('PED_VLSEGURO').AsCurrency;
    rValorDespesasImportacao := rValorDespesasImportacao + clone.FieldByName('PED_DESP_IMPOR').AsCurrency;
    rTotalIPI := rTotalIPI + clone.FieldByName('PED_VLTOTAL_IPI').AsCurrency;
    rTotalST := rTotalST + clone.FieldByName('PED_VALOR_ST').AsCurrency;
    rTotalDifal := rTotalDifal + clone.FieldByName('PED_VLDIFAL').AsCurrency;
    rTotalValorLiquido :=  rTotalValorLiquido + clone.FieldByName('PED_VLTOTAL_LIQ').AsCurrency;
    rValorTotalBruto :=   rValorTotalBruto + clone.FieldByName('PED_VLTOTAL_BRUTO').AsCurrency;
    rDescontoValor := rDescontoValor + clone.FieldByName('PED_DESCTOVL').AsCurrency ;
    OpenAux(' select PED_OBSERVACAO_NOTA, PED_OBSERVACAO from PED0000 pe where pe.ped_codigo = '+
                 QuotedStr(clone.FieldByName('ped_codigo').AsString));

    obsNota := obsNota+#13+  qAux.FieldByName('PED_OBSERVACAO_NOTA').AsString;
    obs := obs+#13+  qaux.FieldByName('PED_OBSERVACAO').AsString;
    obsPed := obsPed + clone.FieldByName('PED_CODIGO').AsString +',';
    if clone.FieldByName('PED_NUMERO_PED_CLIENTE').AsString <> '' then
      obsPedCli := obsPedCli + clone.FieldByName('PED_NUMERO_PED_CLIENTE').AsString+',';
    clone.Next;
  end;
   obsPed := copy(obsPed,1,length(obsPed)-1);
   obsPed := 'Agrupando os pedidos : '+ obsPed;

   if obsPedCli<> '' then
   begin
    obsPedCli := copy(obsPedCli,1,length(obsPedCli)-1);
    obsPedcli := 'Agrupando as ordens do cliente : '+ obsPedCli;
   end;
  clone.First;
  if dbInicio.empresa.fSeqUnicaPed then
     fCodEmSeqUnica:='001'
  Else
     fCodEmSeqUnica:=dbInicio.Empresa.EMP_CODIGO;
  numPed:= StrZero( SequenciadorPRC ( dbInicio.MainDB, fCodEmSeqUnica,'PED0000', 'PED_CODIGO', 0 ) , 6 );
  //tipo de pedido
  OpenAux(' SELECT opv_codigo FROM OPV0000'+
          ' WHERE OPV_AGRUPADO = '+QuotedStr('S')+
          ' AND OPV_TIPO = '+QuotedStr('S') );
  if qAux.RecordCount = 0  then
    GeraException('Criar um tipo de venda de agrupamento. Vá até o cadastro de tipo de pedido.');
  vtipoOpv := qAux.FieldByName('opv_codigo').AsInteger;
  vIdPedido := DBInicio.GetNextSequence('gen_id_pedido');
  // gravar NOVO pedido
  GravarPedido(
    '', '' {Consumidor Final}, '' {Consumo Próprio}, ''{ordem de servico},numped,IntToStr(vtipoOpv){sTipoPedidoCodigo},clone.FieldByName('CLI_CODIGO').AsString,
    clone.FieldByName('REP_CODIGO').AsString {vendedor}, clone.FieldByName('REP_CODIGO_INTERNO').AsString, {vendendor interno}

     clone.FieldByName('PCL_CODIGO').AsString{sPrazoCodigo}, clone.FieldByName('TRP_CODIGO').AsString,
    IntToStr(clone.FieldByName('OPE_CODIGO').AsInteger), '' {projetoobra} ,
    clone.FieldByName('ped_frete').AsString,'' {sNumeroPedidoCliente},clone.FieldByName('PED_CONTATO_CLIENTE').AsString {sContatoCliente},
    'F'{situacao}, '' {sOrsCliente},clone.FieldByName('PED_ORS_FONE').AsString,clone.FieldByName('PED_ORS_FAX').AsString,
    clone.FieldByName('PED_ORS_EMAIL').AsString, ''{sOrsDiasEntrega},'' {sOrsDiasValidade},clone.FieldByName('PED_ORS_ESTADO').AsString,
    IntToStr(clone.FieldByName('FPG_REGISTRO').AsInteger {forma de pagamento}),false{bAplicaDescontoNotaFiscal},Date {data entrada} ,
    date {entrega - definir pelo usuario},
    0{rComissao1},0{rComissao2},0{rComissao3},0{rComissao4}, rDescontoValor,0{rDescontoPercentual1},0{rDescontoPercentual2},
    rValorFrete, rValorDespesas,  rValorSeguro, rValorDespesasImportacao, rTotalIPI, rTotalST, rTotalDifal, rTotalValorLiquido, rValorTotalBruto,
    obs  ,
    obsPed+#13+obspedcli{wsObservacaoNota} , clone.FieldByName('PED_EXP_UF').AsString, clone.FieldByName('PED_EXP_LOCAL_EXP').AsString,
    clone.FieldByName('PED_EXP_LOCAL_RECINTO').AsString,
    '', // OBSERVACAO PARA PRODUCAO
    vIdPedido {identificador unico do pedido}, clone.FieldByName('SitExp').AsString,
    clone.FieldByName('ENDERECO_ENTREGA').AsInteger,clone.FieldByName('PED_PLACA').AsString
  );

  // gravar os itens
  Clone.First;
  while not clone.Eof do
  begin
   sqlCdsItens.Close;
   qSqlCdsItens.sql.text := sqlItem+
                            ' where T1.EMP_CODIGO = '+QuotedStr(clone.FieldByName('EMP_CODIGO').AsString)+
                            ' AND t1.PED_CODIGO = '+ QuotedStr(clone.FieldByName('PED_CODIGO').AsString)+
                            ' order by 1 ';
   SqlCdsItens.PacketRecords:= -1;
   SqlCdsItens.Open;
   cloneItem := TClientDataSet.Create(Self);
   try
    cloneItem.CloneCursor(SqlCdsItens,false);
    cloneItem.First;
    while not cloneItem.Eof do
    begin
     //vIdPedItem := DBInicio.GetNextSequence('GEN_ITEM_PEDIDO');
     if cloneitem.FieldByName('PRF_REGISTRO_VINCULADO').AsInteger > 0 then
     begin
       OpenAux('SELECT PRF_REGISTRO,PRF_QTDE FROM PED_IT01 co  '+
                           ' WHERE PED_CODIGO = '+QuotedStr(numped)+
                            ConcatSe(' and co.',DBInicio.ExclusivoSql('PEDIDOS') )+
                           ' AND prf_registro = '+ IntToStr(cloneitem.FieldByName('PRF_REGISTRO_VINCULADO').AsInteger)

                          );
      if not qaux.IsEmpty then
         wvinculo := qaux.FieldByName('PRF_REGISTRO').AsInteger;

     end
     else
       wvinculo:=0;

     if cloneItem.FieldByName('PRF_PRAZO_ENTREGA').AsString = '' then
       p_PRF_PRAZO_ENTREGA := 'NULL'
     else
       p_PRF_PRAZO_ENTREGA := QuotedStr(DataAmericana(cloneItem.FieldByName('PRF_PRAZO_ENTREGA').AsString));
     vIdPedItem :=
     GravarPedidoItem(0,
                      '',
                      numPed,cloneItem.FieldByName('prd_codigo').AsString,cloneitem.FieldByName('prd_refer').AsString,
                      cloneItem.FieldByName('PRDCO_CODIGO_ORIGINAL').AsString,
                      {descrição do produto no item + numero do pedido }
                      copy(cloneItem.FieldByName('PRF_PRDDESCRI').AsString,1,85) + '(Ped. '+ clone.FieldByName('PED_CODIGO').AsString+ ')',
                      cloneItem.FieldByName('AMX_CODIGO_DESTINO').asstring,
                      cloneitem.FieldByName('PRF_COMPL_DESCRI').AsString, cloneitem.FieldByName('PRF_B2B_PEDIDO_COMPRA').AsString{ sPedidoB2b},
                      cloneItem.FieldByName('PRF_TABPRECO').AsString,
                      '' {USOU_VERBA},cloneItem.FieldByName('PRF_FLAG_ATUALIZA_ESTOQUE').AsString = 'S' {bAtualizaEstoque},
                      IIF(cloneItem.FieldByName('PRF_PRODUTO_AGREGADO').AsString='S',True,False) {bProdutoAgregado},
                      cloneItem.FieldByName('PRF_QTDE').AsCurrency,
                      cloneItem.FieldByName('PRF_QTDE').AsCurrency,
                      cloneItem.FieldByName('PRF_QTDEFAT').AsCurrency, cloneItem.FieldByName('PRF_PRECO').AsCurrency,
                      cloneItem.FieldByName('PRF_PRECO_BRUTO').AsCurrency, cloneItem.FieldByName('PRF_CUSTO').AsCurrency,
                      cloneItem.FieldByName('PRF_MARGEM_PRODUTO').AsCurrency, cloneItem.FieldByName('PRF_ACRESCIMO').AsCurrency,
                      cloneItem.FieldByName('PRF_IDESCTO1').AsCurrency, cloneItem.FieldByName('PRF_IDESCTO2').AsCurrency,
                      cloneItem.FieldByName('PRF_ITEMCOMIS').AsCurrency, cloneItem.FieldByName('PRF_IPIALIQ').AsCurrency,
                      cloneItem.FieldByName('PRF_VALOR_ST').AsCurrency, cloneItem.FieldByName('PRF_ICMSALIQ').AsCurrency,
                      cloneItem.FieldByName('PRF_VALOR_ICMS').AsCurrency,
                      0{rValorVerba}, 0{identificado do item do registro, como zero ele cria um novo item},
                      StrToInt(DBInicio.USUARIO.CODIGO), cloneitem.FieldByName('PRDL_REGISTRO').AsInteger {iCodigoLote},
                      cloneitem.FieldByName('PRG_REGISTRO').AsInteger {iCCdigoGrade},   cloneitem.FieldByName('PRF_B2B_ITEM_PEDIDO_COMPRA').AsInteger {PRF_B2B_ITEM_PEDIDO_COMPRA},
                      wvinculo{registro vinculado}, 0 {iDiretiva},
                      p_PRF_PRAZO_ENTREGA, {data de entrega}
                      inttostr(cloneItem.FieldByName('PRF_PRAZO_DIAS').AsInteger), {prazo}
                      0,{PesoKg}
                      0{qPendente},
                      iif(cloneItem.FieldByName('PRF_PRODUTO_SEMVALOR').AsString= 'S',True,False) {bProdutoSemValor}
                      )  ;

     Inc(prfSequencia);
     ExecSql(' UPDATE PED_IT01 SET PED_CODIGO_ORIGEM = '+QuotedStr(clone.FieldByName('PED_CODIGO').AsString)
             + ', PRD_UND = ' + QuotedStr(cloneItem.FieldByName('PRD_UND').AsString)
             +iif(agrupar, ', PRF_SEQUENCIA = ' + IntToStr(prfSequencia), '' )
             +' WHERE PRF_REGISTRO= '+IntToStr(vIdPedItem) );
     cloneItem.Next;
    end;

   finally
     FreeAndNil(cloneItem);
   end;
     ExecSql(' UPDATE PED0000  '+
             ' SET PED_SITUACAO = '+ QuotedStr('A')+
             ' ,PED_CODIGO_AGRUPADO = ' + QuotedStr(numPed)+
             ' ,PED_OBSERVACAO =  COALESCE (PED_OBSERVACAO, '''' )||  '+ QuotedStr('(Pedido agrupado em '+FormatDateTime('dd/mm/yyyy',date) +' no ped.'+ numPed+' )')+
             ' WHERE PED_CODIGO = '+ QuotedStr(clone.FieldByName('ped_codigo').AsString));

   clone.Next;
  end;

 finally
   FreeAndNil(clone);
   idRetorno :=  numPed;
   SqlCdsItens.PacketRecords:=-1;
 end;


end;

procedure TFormPedidoGrid.AbrirItem;
begin
  if not SqlCdsPesqPED_CODIGO.isnull then
  begin
    sqlCdsItens.Close;
    qSqlCdsItens.sql.text := sqlItem + ' where T1.EMP_CODIGO = ' + QuotedStr(SqlCdsPesqEMP_CODIGO.AsString) + ' AND t1.PED_CODIGO = ' + QuotedStr(SqlCdsPesqPED_CODIGO.AsString) + ' order by 1';
    SqlCdsItens.Open;
  end;
end;

procedure TFormPedidoGrid.DataTipoChange(Sender: TObject);
begin
  inherited;
  if (RxDataInicial.Date > 0)  and  (RxDataFinal.Date > 0 ) then
    BuscaPedidos;
end;

procedure TFormPedidoGrid.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);

begin
  inherited;
   if  (SqlCdsItensPRF_QTDEPEND.AsFloat >0) and  ( UpperCase(Column.FieldName) = 'PRF_QTDEPEND')  then
   begin
      TDBGrid(sender).Canvas.Font.Color := clRed;
      TDBGrid(sender).Canvas.FillRect(rect);
      TDBGrid(sender).DefaultDrawDataCell(Rect,column.Field,state);


   end
   else
   if (SqlCdsItensPRF_PRODUTO_AGREGADO.AsString = 'S') OR (SqlCdsItensPRF_PRODUTO_SEMVALOR.AsString = 'S') then
   begin
          TDBGrid(sender).Canvas.Font.Color := clGreen;
          TDBGrid(sender).Canvas.FillRect(rect);
          TDBGrid(sender).DefaultDrawDataCell(Rect,column.Field,state);
   end
   else
      TDBGrid(sender).Canvas.Font.Color :=  TDBGrid(sender).Canvas.Brush.Color;
end;

procedure TFormPedidoGrid.SomarTotais;
var filtro : string;
begin
  CdsTotais.DisableControls;
 try

  CdsTotais.Close;
   qTotais.sql.text :='SELECT CAST(COUNT(*) AS INTEGER) AS QUANTIDADE,'+
                      '       SUM(p1.PED_VLTOTAL_IPI) AS IPI,'+
                      '       SUM(p1.PED_VLFRETE) AS FRETE,'+
                      '       SUM(p1.PED_VLTOTAL_BRUTO) AS PEDIDO, '+
                      '       SUM(P1.PED_VLFATURADO) AS FATURADO, '+
                      '       SUM(p1.PED_VLSEGURO) AS SEGURO,'+
                      '       SUM(p1.PED_DESP_ACES) AS DESPSAS '+
                      'FROM PED0000 P1'+
                      '     LEFT JOIN CLI0000 C1 ON P1.CLI_CODIGO = C1.CLI_CODIGO '+
                      '     LEFT JOIN OPV0000 OPV ON P1.OPV_CODIGO = OPV.OPV_CODIGO '+
                      '     left join rep0000 t3 on t3.rep_codigo = p1.rep_codigo '+
                      '     left join PED_MOTIVO t4 on (t4.PMT_REGISTRO = p1.PMT_REGISTRO) ' ;
   if (DataTipo.ItemIndex = 2) then
   begin
      qTotais.sql.add(' join NF0001 T1 on  (T1.PED_CODIGO=p1.Ped_codigo and t1.emp_codigo = p1.emp_codigo and t1.NF_STATUS_NFE  NOT IN (''C'',''R'')   ');
      if (rxDataInicial.date>0) and  (rxDataFinal.date = 0 ) then
        qTotais.sql.add( '  and T1.NF_EMISSAO>='+datetosql(rxDataInicial.date)+')  ') ;
      if (rxDataInicial.date>0) and (rxDataFinal.date>0)  then
        qTotais.sql.add( ' and  T1.NF_EMISSAO BETWEEN '
              +datetosql(rxDataInicial.date)+ ' AND '  + datetosql(rxDataFinal.date)+ ' )  ');


   end;


    qTotais.sql.add( wCondicao );
    filtro :=  cxtbPedido.DataController.Filter.FilterText;
    if cxtbPedido.DataController.Filter.FilterText <> '' then
    begin
      filtro := StringReplace(filtro, 'EMP_CODIGO','P1.EMP_CODIGO',[rfReplaceAll] );
      filtro:= StringReplace(filtro, 'REP_CODIGO','t3.REP_CODIGO',[rfReplaceAll] );
    // replace  cxtbPedido.DataController.Filter.FilterText
      qTotais.sql.Add (' and '+ FILTRO);
//      CdsTotais.Filtered := False;
//     CdsTotais.Filter := cxtbPedido.DataController.Filter.FilterText;
//     CdsTotais.Filtered := True;
    end;
    CdsTotais.Open;
 finally
   CdsTotais.EnableControls;
 end;
end;

procedure TFormPedidoGrid.SqlCdsPesqAfterScroll(DataSet: TDataSet);
var data : TDateTime;
    usuario : string;
begin
  inherited;
  if NOT SqlCdsPesq.IsEmpty then
  begin
   GbMotivoCancela.Visible := (SqlCdsPesqPED_SITUACAO.AsString = 'C') and not SqlCdsPesq.IsEmpty;
   if GbMotivoCancela.Visible then
   begin
     OpenAux3('SELECT USU_NOME, PED_DATA_CANCELAMENTO FROM PED0000 PED   '+
              ' LEFT JOIN USUARIO USU ON (USU.USU_CODIGO = PED.PED_USUARIO_CANCELAMENTO) ' +
              ' WHERE PED_CODIGO = '+QuotedStr(SqlCdsPesqPED_CODIGO.AsString) + ' AND EMP_CODIGO = '+ QuotedStr(DBInicio.Empresa.EMP_CODIGO));
     usuario := qAux3.FieldByName('usu_nome').AsString;
     data := qAux3.FieldByName('PED_DATA_CANCELAMENTO').AsDateTime;

        GbMotivoCancela.Visible := True;
        LblMotivoCancelamento.Caption := 'CANCELADO '+SqlCdsPesqPMT_MOTIVO.AsString+'  '+ iif(usuario=EmptyStr,'', ' pelo usuário  '+usuario)+
        iif(data=0,'',' na data de '+DateToStr(data))+ ' '+    SqlCdsPesqPED_MOTIVO_CANCELAMENTO.AsString;
   end;
  end;
end;

procedure TFormPedidoGrid.SqlCdsPesqPED_SITUACAOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
    if SqlCdsPesqPED_SITUACAO.AsString = 'T' then
       Text := 'FATURADO'
    else
    if SqlCdsPesqPED_SITUACAO.AsString = 'F' then
       Text := 'À FATURAR'
    else
    if SqlCdsPesqPED_SITUACAO.AsString = 'P' then
       Text := 'PARCIAL'
    else
    if SqlCdsPesqPED_SITUACAO.AsString = 'A' then
       Text := 'AGRUPADO';
    if SqlCdsPesqPED_SITUACAO.AsString = 'C' then
       Text := 'CANCELADO';

end;

procedure TFormPedidoGrid.SqlCdsPesqselecionadoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  text := EmptyStr;
end;

procedure TFormPedidoGrid.btExportarClick(Sender: TObject);
begin
  inherited;

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

        QExport4XLS1.DataSet := cxtbPedido.DataController.DataSet;
//        QExport4XLS1.dbgrid := cxtbPedido;


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

procedure TFormPedidoGrid.btnAgruparClick(Sender: TObject);
begin
  inherited;
  agrupar := true;
  ValidarAgrupamento;
  try
   GravaPedido;
   // ReordenarItens(SqlCdsItens);
   MessageDlg('Agrupamento de pedido realizado com sucesso.', mtInformation, [mbOK], 0);

   ModalResult:=mrOk;
  except
  on e:exception do
   MessageDlg('Erro ocorrido :'+e.Message, mtError, [mbOK], 0);
  end;

  agrupar := false;
end;

procedure TFormPedidoGrid.BtnSairClick(Sender: tObject);
begin
     idRetorno := '';
     ModalResult := mrCancel;
end;

procedure TFormPedidoGrid.Rad_ClienteClick(Sender: tObject);
begin
    LayOutPesq;
end;

procedure TFormPedidoGrid.RxDataFinalExit(Sender: TObject);
begin
  inherited;
  if RxDataFinal.Date>0 then
   BuscaPedidos
end;

procedure TFormPedidoGrid.RxDataInicialExit(Sender: TObject);
begin
  inherited;
  if RxDataInicial.Date>0 then
    BuscaPedidos
end;

procedure TFormPedidoGrid.LayOutPesq;
begin
     RxDataInicial.Date := Date - 60;
     RxDataFinal.Date := Date;
     CBVendedor.Visible := False;

   if (dbInicio.Empresa.sPadraoConsultaPedidoStatus = 'T') then
      cbbFaturamento.ItemIndex := 0
   else
   if (dbInicio.Empresa.sPadraoConsultaPedidoStatus = 'F') then
      cbbFaturamento.ItemIndex := 1
   else
   if (dbInicio.Empresa.sPadraoConsultaPedidoStatus = 'P') then
      cbbFaturamento.ItemIndex := 2;

   GbCliente.Visible     := true;
   GbCliente.Width       := 405;
   GbCliente.TabOrder    := 1;
   BitPesquisar.TabOrder := 2;
   CbPesq.Visible        := False;
   CbFantasia.Visible    := False;
   Edt_Lista.Width       := 38;
   Edt_Lista.MaxLength   := 5;

    gbCCusto.Visible := False;
    if (Rad_Pedido_Compra.checked ) then
    begin
           GbCliente.Caption     := 'Informe a Ordem do Cliente';
           Edt_Lista.Text        := '';
           Edt_Lista.Width       := 96;
           Edt_Lista.MaxLength   := 15;
    end
    else
    if (Rad_Cliente.checked ) then
    begin
           GbCliente.Caption     := 'Informe o Cliente';
           CbPesq.Visible        := true;
           Edt_Lista.CLEAR;
    end
    else
    if (Rad_Fantasia.checked ) then
    begin

           cbFantasia.Clear;
           GbCliente.Caption     := 'Informe o Nome Fantasia do Cliente';
           CbFantasia.Visible    := true;
           Edt_Lista.CLEAR;
    end
    else
    if (Rad_Pedido.checked  ) then
    begin
           GbCliente.Caption     := 'Informe o Nº do Pedido';
           Edt_Lista.Text        := '';
           Edt_Lista.Width       := 54;
           Edt_Lista.MaxLength   := 7;
    end
    else
    if rdNoi.Checked then
    begin
           GbCliente.Caption     := 'Informe o Nº Orçamento';
           Edt_Lista.Text        := '';
           Edt_Lista.Width       := 54;
           Edt_Lista.MaxLength   := 7;
    end

    else
    if (Rad_Orcamento.checked ) then
    begin
           GbCliente.Caption     := 'Informe o Nº do Orçamento Industrial';
           Edt_Lista.Text        := '';
           Edt_Lista.Width       := 54;
           Edt_Lista.MaxLength   := 7;
    end
    else
    if (Rad_Vendedor.checked ) then
    begin
          cbVendedor.Clear;
           GbCliente.Caption     := 'Informe o Vendedor';
           CBVendedor.Visible    := True;
           Edt_Lista.Width       := 38;
           Edt_Lista.MaxLength   := 3;
           Edt_Lista.CLEAR;
    end
    else
    if (Rad_Contato.checked ) then
    begin
           GbCliente.Caption     := 'Informe o Contato';
           Edt_Lista.Width       := 350;
           Edt_Lista.MaxLength   := 100;
           Edt_Lista.Text        := '';
    end
    else
    if (rdCCusto.checked ) then
    begin
           gbCCusto.Visible := True;
           gbCCusto.TabOrder    := 1;
           BitPesquisar.TabOrder := 2;
    end;

   if self.Visible and  RxDataInicial.CanFocus then
      RxDataInicial.SetFocus;

end;

procedure TFormPedidoGrid.EdProjetoObraCodigoExit(Sender: TObject);
begin
     inherited;
     if (EdProjetoObraCodigo.Text <>'') then
     begin
        CbProjetoObra.idRetorno := STRzERO(EdProjetoObraCodigo.Text,3);
        if (CbProjetoObra.idRetorno='') then
           GeraException('Centro de Custo não localizado com o código informado');
     end;
end;

procedure TFormPedidoGrid.Edt_ListaExit(Sender: tObject);
begin
     if Rad_Cliente.checked then
     begin
          if Edt_Lista.Text <> '' then
          begin
               CbPesq.idRetorno:=StrZero(Edt_Lista.Text,5);
               if CbPesq.idRetorno='' then
                  GeraException('Cliente Não Localizado!');
          end
          Else
              CbPesq.Clear;
     end
     else
     if rad_fantasia.Checked then
     begin
          if Edt_Lista.Text <> '' then
          begin
               CbfANTASIA.idRetorno:=StrZero(Edt_Lista.Text,5);
               if CbfANTASIA.idRetorno='' then
                  GeraException('Cliente Não Localizado!');
          end
          Else
              CbFantasia.Clear;
     end
     else
     if Rad_Vendedor.checked  then
     begin
          if Edt_Lista.Text <> '' then
          begin
               CBVendedor.idretorno := StrZero(Edt_Lista.Text,3);
               if CBVendedor.idretorno='' then
                  GeraException('Vendedor Não Localizado!');
          end
          else
              CBVendedor.clear;
    end;
    if Edt_Lista.Text <> '' then
       BitPesquisar.Click;

end;

procedure TFormPedidoGrid.cbPesqButtonClick(Sender: TObject);
var
  tcr: tFrmPesquisaClientes;
begin
  inherited;
  tcr:= tFrmPesquisaClientes.Create(self);
  try
      tcr.ShowModal;
      if tcr.modalresult = mrok then
         CbPesq.idRetorno := tcr.IDRetorno;
  finally
       FreeAndNil(tcr);
  end;
end;

procedure TFormPedidoGrid.cbPesqSelect(Sender: TObject);
begin
    inherited;
    Edt_Lista.Text := CbPesq.IdRetorno;
    BitPesquisar.Click;
end;

procedure TFormPedidoGrid.CbProjetoObraSelect(Sender: TObject);
begin
   inherited;
   EdProjetoObraCodigo.Text := CbProjetoObra.idRetorno;
   BitPesquisar.Click;
end;

procedure TFormPedidoGrid.BitPesquisarClick(Sender: tObject);
begin
  if not Pesquisar then
      exit;
   BuscaPedidos;
   if cxGrid1.canfocus then
      cxGrid1.SetFocus;
end;

procedure TFormPedidoGrid.BuscaPedidos;
var Filtrados: Boolean ;
    campo: string;


    procedure SqlAdd( stt:string );
    begin
        if stt<>'' then
        begin
             if Filtrados then
                wCondicao := wCondicao + ' AND '+stt+ CrLf
             else
                wCondicao := wCondicao + ' where '+stt+ CrLf;
             Filtrados:=True;
        end;
    end;
///
begin
 try

      wCondicao := '';

      SqlCdsPesq.DisableControls;
      SqlCdsPesq.Close;
      SqlCdsPesq.SetProvider(dspSqlCdsPesq);




      qSqlCdsPesq.sql.text:= 'SELECT ' +
                             iif(DBInicio.Empresa.bHabilitaColunaNF, ' t1.NF_NOTANUMBER, ', ' DISTINCT '''' as NF_NOTANUMBER, ') +
                             ' p1.ped_CODIGO, p1.EMP_CODIGO, p1.PED_PCP_SIT_PRODUCAO,P1.PED_registro, P1.PED_CONTATO_CLIENTE, P1.PED_DTENTRADA, '+
                             '       P1.PED_VLTOTAL_BRUTO,P1.PED_DTSAIDA,P1.PED_OBSNOTA, '+
                             iif( (DataTipo.ItemIndex = 2) , ' t1.NF_TOT_NOTA PED_VLFATURADO, ' ,' P1.PED_VLFATURADO,') +
                            ' P1.PED_SITUACAO,P1.PED_DTLIM_ATD, '+
                             '       P1.PED_DTEMBARQUE, P1.REP_CODIGO, p1.REP_CODIGO_INTERNO,  c1.CLI_CODIGO, C1.CLI_FONE, p1.opv_codigo, OPV_DESCRICAO, '+
                             '       t4.PMT_MOTIVO,p1.PED_MOTIVO_CANCELAMENTO,c1.cli_uf, '+
                             '       P1.PED_CODIGO_ORCAMENTO, PED_VLTOTAL_IPI,PED_VALOR_ST, PED_VLDIFAL,  PED_VLFRETE, PED_VLSEGURO, PED_DESP_ACES, '+
                             '       P1.PED_VLTOTAL_LIQ, P1.PED_DESP_IMPOR,PED_DESCTOVL, PED_NUMERO_PED_CLIENTE, '+
                             '       p1.PED_EXP_UF,PED_EXP_LOCAL_EXP, PED_EXP_LOCAL_RECINTO, SitExp, PED_PLACA,ENDERECO_ENTREGA, '+
                             '       case when (C1.CLI_RAZAO IS NULL) then p1.PED_ORS_CLIENTE ELSE C1.CLI_RAZAO end as CLI_RAZAO, '+
                             '       C1.CLI_FANTASIA, C1.CLI_CGC, C1.CLI_BAIRRO, t3.rep_nome, p1.PCL_CODIGO,p1.TRP_CODIGO, p1.ope_codigo, p1.ped_frete,  '+
                             '       p1.PED_ORS_FONE, p1.PED_ORS_FAX, p1.PED_ORS_EMAIL,p1.PED_ORS_ESTADO, p1.FPG_REGISTRO,  '+
                             iif (DBInicio.Empresa.wAtualizaEstoque = 'P',
                             '      COALESCE((SELECT sum(PRF_QTDEPEND) FROM PED_IT01 it WHERE it.ped_codigo = p1.ped_codigo),0) as pend,  ' ,
                             '      CAST(0.00 as NUMERIC(18,5)) as pend,  '   ) +
                             iif(DataTipo.ItemIndex = 2, ' T1.NF_EMISSAO ',
                             '  (SELECT first 1 T1.NF_EMISSAO FROM NF0001 T1 WHERE T1.PED_CODIGO=p1.Ped_codigo  and t1.NF_STATUS_NFE <> ''C'' AND t1.emp_codigo = p1.emp_codigo ) as NF_EMISSAO ') +
                             '   FROM PED0000 P1 '+
                             '     JOIN OPV0000 OPV ON P1.OPV_CODIGO = OPV.OPV_CODIGO  AND COALESCE(OPV_PEDIDOINTERNO,''N'') = ''N'' '+
                             '     LEFT JOIN CLI0000 C1 ON P1.CLI_CODIGO = C1.CLI_CODIGO '+
                            //  '     LEFT JOIN NF0001 nf ON (nf.PED_CODIGO = p1.PED_CODIGO) ' +
                             '     left join rep0000 t3 on t3.rep_codigo = p1.rep_codigo '+
                             '     left join PED_MOTIVO t4 on (t4.PMT_REGISTRO = p1.PMT_REGISTRO) ' ;
       if rgEmpresaLogada.ItemIndex = 0 then
         SqlAdd(' p1.EMP_CODIGO = ' + QuotedStr(DBInicio.Empresa.EMP_CODIGO));
       if Envase then
       begin
          SqlAdd(' NOT EXISTS '+
                 '   (SELECT * FROM ORDEMPRODUCAO OP '+
                 '     WHERE OP.PED_CODIGO = P1.PED_CODIGO AND OP.EMP_CODIGO = P1.EMP_CODIGO AND OPR_STATUS <> ''C'') ');
          SqlAdd(' NOT EXISTS '+
                 '   (SELECT * FROM DEMANDA_PRODUCAO DEP '+
                 '     WHERE DEP.PED_CODIGO = P1.PED_CODIGO AND DEP.EMP_CODIGO = P1.EMP_CODIGO ) ');
          if( rgEmpresaLogada.ItemIndex = 0) then
                SQLADD( 'P1.EMP_CODIGO='+qStr( dbiNicio.Empresa.emp_codigo ));
       end
       Else
       begin
         if (DataTipo.ItemIndex = 2) then
         begin
           qSqlCdsPesq.sql.add(' join NF0001 T1 on  (T1.PED_CODIGO=p1.Ped_codigo and t1.emp_codigo = p1.emp_codigo and t1.NF_STATUS_NFE  NOT IN (''C'',''R'')   ');
            if (rxDataInicial.date>0) and  (rxDataFinal.date = 0 ) then
              qSqlCdsPesq.sql.add( '  and T1.NF_EMISSAO>='+datetosql(rxDataInicial.date)+')  ') ;
            if (rxDataInicial.date>0) and (rxDataFinal.date>0)  then
              qSqlCdsPesq.sql.add( ' and  T1.NF_EMISSAO BETWEEN '
                    +datetosql(rxDataInicial.date)+ ' AND '  + datetosql(rxDataFinal.date)+ ' )  ');


         end
         else
         begin
           qSqlCdsPesq.sql.add('left join NF0001 T1 on  (T1.PED_CODIGO=p1.Ped_codigo and t1.emp_codigo = p1.emp_codigo and t1.NF_STATUS_NFE  NOT IN (''C'',''R'')  ) ');
///            if (rxDataInicial.date>0) and  (rxDataFinal.date = 0 ) then
//              qSqlCdsPesq.sql.add( '  and T1.NF_EMISSAO>='+datetosql(rxDataInicial.date)+')  ') ;
//            if (rxDataInicial.date>0) and (rxDataFinal.date>0)  then
//              qSqlCdsPesq.sql.add( ' and  T1.NF_EMISSAO BETWEEN '
//                    +datetosql(rxDataInicial.date)+ ' AND '  + datetosql(rxDataFinal.date)+ ' )  ');


         end;
         if chkNaoLiberados.Checked then
           sqlAdd( 'Ped_faturar_liberado = ''N''');
         if DBInicio.Empresa.USP_LIMITE_CONSULTA_ORCA > 0  then
           SqlAdd( '(( DATEDIFF(DAY,PED_DTENTRADA,CURRENT_TIMESTAMP) <= '+ IntToStr(DBInicio.Empresa.USP_LIMITE_CONSULTA_ORCA)+ ' AND OPV_ORCAMENTO = ''S'')  '+
                  ' OR OPV_ORCAMENTO = ''N'' )');
       end;
        if (Edt_Lista.Text<>'') and (Rad_Orcamento.Checked or Rad_Pedido.checked or Rad_Pedido_Compra.checked or rdNoi.Checked)  then  // busca pelo numero informado, desconsidera outros filtros
        begin
            if rdNoi.Checked then
               sqlAdd( camposql( 'p1.ORC_CODIGO', ExtrairNumeros(Edt_Lista.Text) ) )
            else
            if (Rad_Orcamento.Checked) then
               sqlAdd( camposql( 'P1.PED_CODIGO_ORCAMENTO', StrZero(ExtrairNumeros(Edt_Lista.Text),6)+ExtrairLetra(Edt_Lista.Text) ) )
            else
            if Rad_Pedido.checked  then
               sqladd( camposql( 'P1.PED_CODIGO', StrZero(ExtrairNumeros(Edt_Lista.Text),6)+ExtrairLetra(Edt_Lista.Text)))
            Else
            if Rad_Pedido_Compra.checked  then
               sqladd( camposql( 'P1.PED_NUMERO_PED_CLIENTE',Edt_Lista.Text));
        END
        else
        begin

            if( rgEmpresaLogada.ItemIndex = 0) then
              SQLADD( 'P1.EMP_CODIGO='+qStr( dbiNicio.Empresa.emp_codigo ));

            if ( dbInicio.Empresa.VisualizaPedios_P ) and ( dbInicio.Empresa.fCODIGO_REPRES <> '000' ) then
               sqlAdd('( P1.REP_CODIGO ='+qStr(dbInicio.Empresa.fCODIGO_REPRES) +
                        ' or p1.REP_CODIGO_INTERNO = '+qStr(dbInicio.Empresa.fCODIGO_REPRES)+')'    );

            sqlAdd( camposql( 'P1.OPV_CODIGO', cbTipo.idRetorno ) ) ;

            if Rad_Cliente.checked then
                 sqlAdd( camposql( 'P1.CLI_CODIGO', cbPesq.idRetorno ) )
            Else
            if Rad_Fantasia.checked then
                 sqlAdd( camposql( 'P1.CLI_CODIGO', cbFantasia.idRetorno ) )
            Else
            if Rad_Vendedor.checked then
               sqlAdd( camposql( 'P1.REP_CODIGO', cbVendedor.idRetorno ) )
            Else
            if (Rad_Contato.Checked) then
               sqlAdd( camposql( 'P1.PED_CONTATO_CLIENTE', Edt_Lista.Text ) )
            else
            if (rdCCusto.Checked) then
               sqlAdd( camposql( 'P1.pcx_codigo', CbProjetoObra.idRetorno ));
             //A FATURAR = F , CANCELADO = C , FATURADO TOTAL = T, PARCIAL = P , FATURADO AGRUPADO  = A
            case cbbFaturamento.ItemIndex of
            0:sqladd('P1.PED_SITUACAO not in (''A'',''C'')');     //TODOS, EXCETO OS AGRUPADOS E CANCELADOS
            1:sqladd('P1.PED_SITUACAO not in (''A'',''F'',''C'')');     //FATURADO
            2:sqladd('P1.PED_SITUACAO in (''P'',''F'')');         //PENDENTES
            3:SqlAdd('P1.PED_SITUACAO in (''A'')');  //AGRUPADOS
            4:SqlAdd('P1.PED_SITUACAO in (''C'')');  //CANCELADOS
            5:SqlAdd('P1.PED_SITUACAO = ''P'' '); //PARCIAL
            6:SqlAdd('COALESCE((SELECT sum(PRF_QTDEPEND) FROM PED_IT01 it WHERE it.ped_codigo = p1.ped_codigo),0) > 0 '); //FALTA DE ESTOQUE
            end;

           campo := '';
          if (RxDataFinal.Date>0) and (RxDataInicial.Date > RxDataFinal.Date) then
             GeraException  ('Data final não pode ser menor que a data inicial!');

           if DataTipo.ItemIndex <> 2 then
           begin
              case DataTipo.ItemIndex of
              0: campo:='P1.PED_DTENTRADA';
              1: campo:='p1.PED_DTSAIDA';
              // 2: campo:='T1.NF_EMISSAO';
              end;



              if rxDataInicial.date>0  then
                 sqladd( campo+'>='+datetosql(rxDataInicial.date));
              if rxDataFinal.date>0  then
                 sqladd( campo+'<='+datetosql(rxDataFinal.date));

           end;

        end;
          if chkProducao.Checked then
          begin
            SqlAdd(' EXISTS '+
                  '   (SELECT * FROM ORDEMPRODUCAO OP '+
                  '     WHERE OP.PED_CODIGO = P1.PED_CODIGO AND OP.EMP_CODIGO = P1.EMP_CODIGO AND OPR_STATUS <> ''C'') ');

          end;
          if chkDemanda.Checked then
        //NÃO ENCAMINHADOS A DEMANDA E NÃO FATURADOS ANTES DE 09/06/2020
            SqlAdd(' NOT EXISTS '+
                  '   (SELECT * FROM DEMANDA_PRODUCAO OP '+
              '     WHERE OP.PED_CODIGO = P1.PED_CODIGO AND OP.EMP_CODIGO = P1.EMP_CODIGO ) '+
              ' AND NOT EXISTS               '+
              '  (SELECT 1                   '+
              '  FROM NF0001 T1              '+
              '  WHERE T1.PED_CODIGO=p1.Ped_codigo  and t1.NF_STATUS_NFE <> ''C'' '+
              '  AND NF_EMISSAO < ''2020-06-09'')  ');

      qSqlCdsPesq.sql.add( wCondicao );
      qSqlCdsPesq.sql.add ( 'order by '+concatse( campo, ' desc, ')+' p1.ped_codigo desc ');
      if DBInicio.IsDesenvolvimento then
        CopyToClipBoard(qSqlCdsPesq.SQL.Text);
      SqlCdsPesq.open;


      SomarTotais;

 finally
   SqlCdsPesq.EnableControls;

 end;

end;

procedure TFormPedidoGrid.cbbFaturamentoChange(Sender: TObject);
begin
  inherited;
  BuscaPedidos
end;

procedure TFormPedidoGrid.CbFantasiaSelect(Sender: TObject);
begin
  inherited;
  Edt_Lista.Text := CbFantasia.idRetorno ;
  BitPesquisar.Click;
end;

procedure TFormPedidoGrid.Transferir_pedido;
begin
  application.ProcessMessages;
  if (SqlCdsPesqEMP_CODIGO.AsString <> dbInicio.Empresa.EMP_CODIGO) then
    uteis.aviso('Este pedido está disponível somente para consulta, para acessar é necessário logar na empresa correspondente')
  else
  begin
     idRetorno := SqlCdsPesqPED_CODIGO.AsString;
     ModalResult:=mrOk;
  end;
end;

procedure TFormPedidoGrid.tsitemShow(Sender: TObject);
begin
  inherited;

  AbrirItem;
end;

procedure TFormPedidoGrid.umMyMessage(var Message: TMessage);
begin
 try

  TcxGridDBTableView(Message.LParam).ViewData.Collapse(True);
//  TcxCustomGridRecord(Message.WParam).Expand(True);

 except on E: Exception do
 end;


end;

procedure TFormPedidoGrid.ValidaItemPendente;
var
  clone : TClientDataSet;
begin
  clone := TClientDataSet.Create(Self);
 try
  AbrirItem ;
  clone.CloneCursor(SqlCdsItens,False);
  clone.Filtered := False;
  clone.Filter:= 'PRF_QTDEPEND > 0 ';
  clone.Filtered := True;
  clone.First;
  if (clone.RecordCount > 0) then
    GeraException('Têm itens com vendas pendentes que não pode ser agrupado.');
  //verifica se tem item

 finally
   FreeAndNil(clone);
 end;

end;

procedure TFormPedidoGrid.ValidarAgrupamento;
var
  clone : TClientDataSet;
begin
  clone := TClientDataSet.Create(Self);
  try
    if SqlCdsPesq.State in dsEditModes then
       SqlCdsPesq.Post;
    clone.CloneCursor(sqlCdsPesq,true);
    clone.Filtered := False;
    clone.Filter:= '(selecionado = true)';
    clone.Filtered := True;
    clone.First;
    if (clone.RecordCount < 2) then
      GeraException('Deve ser selecionado pelo menos dois pedidos do mesmo cliente.');
    //verifica se tem item

 finally
   FreeAndNil(clone);
 end;

end;

procedure TFormPedidoGrid.ValidarCliente(const razao:string);
var
  clone : TClientDataSet;
begin
 clone := TClientDataSet.Create(Self);
 try
  clone.CloneCursor(sqlCdsPesq,False);
  clone.Filtered := False;
  clone.Filter:= '(selecionado = true)';
  clone.Filtered := True;
  clone.First;
//  if (clone.RecordCount = 0) and (ConsiderarMarcados)  then
//    GeraException('Não foi selecionado nenhum pedido.');
  while (not clone.Eof)  do
  begin

   if clone.FieldByName('cli_razao').AsString <> razao then
     GeraException('Deve-se selecionar o mesmo cliente para agrupar.');
   clone.Next;
  end;

 finally
   FreeAndNil(clone);
 end;

end;

procedure TFormPedidoGrid.ValidaTipoPedido(const OPV_DESCRICAO: string);
var
  clone : TClientDataSet;
begin
 clone := TClientDataSet.Create(Self);
 try
  clone.CloneCursor(sqlCdsPesq,False);
  clone.Filtered := False;
  clone.Filter:= '(selecionado = true)';
  clone.Filtered := True;
  clone.First;

  while (not clone.Eof)  do
  begin

   if clone.FieldByName('OPV_DESCRICAO').AsString <> OPV_DESCRICAO then
     GeraException('Deve-se selecionar o mesmo tipo de pedido para agrupar.');
   clone.Next;
  end;

 finally
   FreeAndNil(clone);
 end;

end;

procedure TFormPedidoGrid.cbTipoChange(Sender: TObject);
begin
  inherited;
  BuscaPedidos;
end;

procedure TFormPedidoGrid.cbVendedorSelect(Sender: TObject);
begin
  inherited;
  Edt_Lista.Text := cbVendedor.idRetorno;
  BitPesquisar.Click;

end;


procedure TFormPedidoGrid.chkNaoLiberadosClick(Sender: TObject);
begin
  inherited;
  BitPesquisar.Click;
end;

procedure TFormPedidoGrid.chkProducaoClick(Sender: TObject);
begin
  inherited;
  BuscaPedidos;
end;

procedure TFormPedidoGrid.cxlevel_ItensGetGridView(Sender: TcxGridLevel; AMasterRecord: TcxCustomGridRecord; var AGridView: TcxCustomGridView);
begin
  sqlCdsItens.Close;
  qSqlCdsItens.sql.text := sqlItem + ' where T1.EMP_CODIGO = ' + QuotedStr( AMasterRecord.Values[cxtbPedidoEMP_CODIGO.Index] ) + ' AND t1.PED_CODIGO = ' + QuotedStr(AMasterRecord.Values[cxtbPedidoPED_CODIGO.Index ] ) + ' order by 1';
  SqlCdsItens.Open;
end;

procedure TFormPedidoGrid.cxtbPedidoDataControllerDetailExpanding(ADataController: TcxCustomDataController; ARecordIndex: Integer; var AAllow: Boolean);
begin
  inherited;
  cxtbPedido.ViewData.Collapse(true);
end;

procedure TFormPedidoGrid.cxtbPedidoDataControllerFilterChanged(Sender: TObject);
begin
  inherited;
  SomarTotais;
end;

procedure TFormPedidoGrid.cxtbPedidoDataControllerFilterGetValueList(Sender: TcxFilterCriteria; AItemIndex: Integer; AValueList: TcxDataFilterValueList);
begin
  inherited;

   AValueList.Delete(0);
   AValueList.Delete(0);
   AValueList.add(fviAll,0,'Todos',False);
end;

procedure TFormPedidoGrid.cxtbPedidoDblClick(Sender: TObject);
begin
  inherited;
  Transferir_pedido;
end;

procedure TFormPedidoGrid.cxtbPedidoFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
   if AFocusedRecord <> nil then
    PostMessage(Handle, UM_MYMESSAGE, Integer(AFocusedRecord), Integer(Sender));

end;

procedure TFormPedidoGrid.cxtbPedidoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
   if Key = VK_RETURN then
   begin
        Transferir_pedido;
        Key := 0;
   end;
   inherited;
end;

procedure TFormPedidoGrid.cxtbPedidoselecionadoPropertiesChange(Sender: TObject);
begin
  inherited;
   if SqlCdsPesqselecionado.AsBoolean then
   exit;
  try
   if SqlCdsPesqPED_SITUACAO.AsString = 'T' then // TOTALMENTE FATURADO
    GeraException('Pedido faturado, não pode selecionar');

  if SqlCdsPesqPED_SITUACAO.AsString = 'C' then  // CANCELADO
   GeraException('Pedido cancelado, não pode selecionar');

  if SqlCdsPesqPED_SITUACAO.AsString = 'A' then  // CANCELADO
   GeraException('Pedido agrupado, não pode selecionar');

  OpenAux('SELECT * FROM OPV0000 where opv_codigo = '+IntToStr(SqlCdsPesqOPV_CODIGO.AsInteger));

  if qAux.FieldByName('opv_agrupado').AsString = 'S' then
    GeraException('Pedido já agrupado');

  if qAux.FieldByName('opv_orcamento').AsString = 'S' then
    GeraException('Não pode agrupar orçamento');

    ValidarCliente(SqlCdsPesqCLI_RAZAO.AsString);
    ValidaTipoPedido(SqlCdsPesqOPV_DESCRICAO.AsString);
    ValidaItemPendente;
  except
    on e: Exception do
    begin

      if  not (sqlCdsPesq.State in dsEditModes)  then
        sqlCdsPesq.Edit;
      sqlCdsPesqselecionado.AsBoolean :=  False;
      sqlCdsPesq.Post;


    end;
  end;
end;

procedure TFormPedidoGrid.cxtbPedidoStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  inherited;
  IF NOT  (ARecord is TcxGridDataRow) then
    exit;

  AStyle := cxPadrao;
  if ARecord.Values[ cxtbPedidoPED_SITUACAO.Index] = 'T'  then // FATURADO
  begin
    AStyle := cxBlue;
    exit;
  end;

  if (ARecord.Values[ cxtbPedidopend.Index] > 0) then // com valores com pendencia
//  if ( StrToIntDef( ARecord.Values[ cxGrid1DBTableView2PRF_QTDEPEND.Index ], 0 ) > 0) then // com valores com pendencia
//  if ( BuscaUmDadoSqlAsFloat('SELECT sum(PRF_QTDEPEND) FROM PED_IT01 it WHERE it.ped_codigo = ' + QuotedStr(ARecord.Values[ cxtbPedidoPED_CODIGO.Index ] )    ) > 0) then // com valores com pendencia
  begin
    AStyle := cxred;
    exit;
  end;
  if ARecord.Values[ cxtbPedidoPED_SITUACAO.Index] = 'P' then   //parcial
   AStyle:= cxGreen;
  If MatchText(ARecord.Values[ cxtbPedidoPED_SITUACAO.Index],['C','A']) then // cancelado ou agrupado
  begin
    AStyle := cxGray;
  end;
end;

procedure TFormPedidoGrid.FormClose(Sender: TObject; var Action: TCloseAction);
var nome: string;
begin
  TestaPasta ( dbInicio.SistemaLocal+'settings' );
  nome:= 'FormPedidoGrid.cxtbPedido.grid';
  cxtbPedido.StoreToIniFile(dbInicio.SistemaLocal+'settings\'+nome, True, [gsoUseFilter] );
  inherited;
  SalvaEstadoPesquisaProc(Panel1);
 // SalvaEstadoPesquisaProc(Panel2);
end;

procedure TFormPedidoGrid.FormCreate(Sender: tObject);
var nome: string;
begin
 inherited;
 chkProducao.Visible := DBInicio.Empresa.PMT_HABILITAR_MRP;
 chkDemanda.Visible := DBInicio.Empresa.PMT_HABILITAR_MRP;
 envase := False;
// SELF.Width := 1091;
// SELF.Height := 627;
 Pesquisar:= False;
 LeEstadoPesquisa := True;
 SalvaEstadoPesquisa := true;
 chkNaoLiberados.Enabled := DBInicio.Empresa.wTipoLiberacaoFaturamento = 'M';
  self.Constraints.MaxHeight:=0;
 sqlItem := 'select PRF_FLAG_ATUALIZA_ESTOQUE, cast(CASE PRF_PRODUTO_AGREGADO  '+
            '         WHEN ''N'' THEN PRF_REGISTRO '+
            '         WHEN ''S'' THEN t1.prf_registro_vinculado|| ''.'' ||  PRF_REGISTRO   '+
             ' END AS NUMERIC(14,10)) registro_seq, t1.emp_codigo, t1.ped_codigo,  '+
            '  t1.PRD_REFER,t2.prd_codigo, PRDCO_CODIGO_ORIGINAL, t1.AMX_CODIGO_DESTINO,PRF_COMPL_DESCRI,PRF_TABPRECO,' +
            ' PRF_PRAZO_ENTREGA, PRF_PRECO_BRUTO, PRF_CUSTO, PRF_MARGEM_PRODUTO, PRF_ACRESCIMO, PRF_IDESCTO1, PRF_IDESCTO2, PRF_ITEMCOMIS, '+
            ' PRF_IPIALIQ, PRF_VALOR_ST,PRF_ICMSALIQ,PRF_VALOR_ICMS, PRDL_REGISTRO, PRG_REGISTRO, PRF_REGISTRO_VINCULADO, PRF_PRODUTO_AGREGADO,'+
            '  t1.prf_preco, t1.PRF_PRDDESCRI, t1.PRF_QTDE, t1.PRF_SITUACAO, t1.PRF_QTDEFAT, COALESCE(t2.PRD_PRODSERV,''P'') as  PRD_PRODSERV,PRF_PRAZO_DIAS, '+
            ' PRF_QTDEPEND, PRF_PRODUTO_SEMVALOR, PRF_B2B_PEDIDO_COMPRA, PRF_B2B_ITEM_PEDIDO_COMPRA, PRF_SEQUENCIA, PRF_REGISTRO, COALESCE(t1.PRD_UND,t2.PRD_UND) AS PRD_UND '+
            ' from PED_IT01 T1 '+
            ' left join PRD0000 t2 on (t2.PRD_CODIGO = t1.PRD_CODIGO) ';

 SqlCdsItensPRF_PRECO.DisplayFormat := '###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);

 gbcliente.Parent := Panel1;
 gbCCusto.Parent := Panel1;

 GbCliente.Left := 394;
 GbCliente.top := gbData.Top;
 gbCCusto.Left := 394;
 gbCCusto.top := gbData.Top;

 gbCliente.Height:= gbData.Height;

 cbVendedor.Top:=cbPesq.top;
 cbFantasia.Top:=cbPesq.top;
 cbVendedor.left:=cbPesq.left;
 cbFantasia.left:=cbPesq.left;

 RxDataInicial.Date := Date - 90;
 RxDataFinal.Date := Date;

 gbCliente.Height := gbCCusto.Height;
 cbbFaturamento.ItemIndex := 0;
 dataTipo.ItemIndex := 0;


 if (dbInicio.empresa.sPadraoPesquisaEmpresa = 'L') then
    rgEmpresaLogada.ItemIndex := 0
 else
    rgEmpresaLogada.ItemIndex := 1;
  CarregaEstadoPesquisa(Panel1)  ;
  LayOutPesq;
  CarregaEstadoPesquisa(Panel1)  ;

  TestaPasta ( dbInicio.SistemaLocal+'settings' );
  nome:= 'FormPedidoGrid.cxtbPedido.grid';
  cxtbPedido.RestoreFromIniFile(dbInicio.SistemaLocal+'settings\'+nome, True, True, [gsoUseFilter] );

  Pesquisar:= True;
  BuscaPedidos;

END;

procedure TFormPedidoGrid.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then
     if not TForm(self).ActiveControl.inheritsfrom( TCustomMemo) and
        not TForm(self).ActiveControl.inheritsfrom( TCustomGrid) then
          Key := VK_TAB;
end;


procedure TFormPedidoGrid.FormShow(Sender: TObject);
begin
  inherited;
  if DBInicio.Empresa.PMT_HABILITAR_MRP then
  begin
    btnAgrupar.Visible := not Envase;
    name.Visible := not envase;
    chkDemanda.Visible := not envase;
    chkProducao.Visible := not Envase;
    cxtbPedidoselecionado.Visible := not envase;
    if Envase then
      BitPesquisar.Click;
  end;
  Self.WindowState :=wsMaximized;
  LblMotivoCancelamento.Caption := '';
  edt_lista.SetFocus;
end;


end.




