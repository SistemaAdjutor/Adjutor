unit uPedidoNovo;

interface


uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask,  rxToolEdit, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Buttons, Grids, DBGrids,  rxCurrEdit,
  ComCtrls, SqlExpr,SqlClientDataSet, Provider, DB, DBClient, DBLocal, DBLocalS, Menus,
  ImgList, frxClass, frxExportPDF, frxDBSet, FMTBCd, DBCtrls, RXDBCtrl,
  RxLookup, JvExComCtrls, JvDateTimePicker, JvDBDateTimePicker,
  JvExMask,  JvDBControls, JvExControls, JvArrowButton, rxDateUtil,
  jpeg, frxExportRTF, frxExportXLS, xmldom, XMLIntf, msxmldom, XMLDoc,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, ClipBrd,
  IdMultipartFormData, StrUtils, IdGlobal, JvExStdCtrls, JvCombobox,
  JvDBCombobox, TeEngine, Series, TeeProcs, Chart, iniciodb, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, VclTee.TeeGDIPlus, System.ImageList,
  SimpleDS, JvToolEdit, Data.DBXFirebird, SgDbSeachComboUnit,
  SgDbLookupComboUnit, SgDbAutoF8Unit, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinTheBezier, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light;
type
  TFrmPedidoNovo = class(TForm)
    Panel1: TPanel;
    BtnCancelar: TBitBtn;
    BtnGravar: TBitBtn;
    BtnExcluir:TBitBtn;
    BtnNovo: TBitBtn;
    BtnConsultar: TBitBtn;
    BtnRelatorios: TBitBtn;
    BtnDuplicar: TBitBtn;
    BtnEstoque: TBitBtn;
    PageControl1: TPageControl;
    TabPedido: TTabSheet;
    GBInformacoesCliente: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    LblCnpj: TLabel;
    LblIE: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    EdClientePrazo: TEdit;
    EdCnpj: TEdit;
    EdIE: TEdit;
    EdClienteCidade: TEdit;
    EdClienteUF: TEdit;
    EdClienteTelefone: TEdit;
    GBInformacoesPedido: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    SpeedTipo: TSpeedButton;
    Label7: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label24: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    EdPedidoNumero: TEdit;
    EdPedidoTipo: TEdit;
    DteEntrada: TDateEdit;
    DteEntrega: TDateEdit;
    CbTipoFrete: TComboBox;
    EdNumeroPedidoCliente: TEdit;
    CurComissaoVendedor: TCurrencyEdit;
    CurComissaoGerente: TCurrencyEdit;
    CurComissaoSupervisor: TCurrencyEdit;
    CurFrete: TCurrencyEdit;
    CurDespesasAcessorias: TCurrencyEdit;
    CurSeguro: TCurrencyEdit;
    CurDespesasImportacao: TCurrencyEdit;
    EdContatoCliente: TEdit;
    EdClienteConsumidorFinal: TEdit;
    PageControl2: TPageControl;
    TabPedidoItem: TTabSheet;
    GbObservacao: TGroupBox;
    MemoObservacaoPedido: TMemo;
    GbMensagemAdicionalNotaFiscal: TGroupBox;
    MemoMensagemAdicionalNotaFiscal: TMemo;
    GroupBox3: TGroupBox;
    Label17: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    CurTotalItens: TCurrencyEdit;
    CurTotalPesoLiquido: TCurrencyEdit;
    CurTotalDesconto: TCurrencyEdit;
    CurTotalIPI: TCurrencyEdit;
    CurTotalProduto: TCurrencyEdit;
    CurTotalPedido: TCurrencyEdit;
    TabHostoricoVenda: TTabSheet;
    Label33: TLabel;
    Label34: TLabel;
    EdHistoricoReferencia: TEdit;
    EdHistoricoDescricao: TEdit;
    GroupBox7: TGroupBox;
    DbGradeHistoricoItem: TDBGrid;
    TabSheet3: TTabSheet;
    GroupBox8: TGroupBox;
    GroupBox9: TGroupBox;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Documento: TGroupBox;
    DbGradeImportacaoDI: TDBGrid;
    DbGradeItemPedido: TDBGrid;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    GroupBox4: TGroupBox;
    DbGradeImportacaoAdicao: TDBGrid;
    Label9: TLabel;
    CurDescontoNotaFiscal: TCurrencyEdit;
    SqlCdsPedido: TSQLClientDataSet;
    Label10: TLabel;
    CurDescontoNotaFiscalAdicional: TCurrencyEdit;
    Label44: TLabel;
    CurDescontoNotaFiscalValor: TCurrencyEdit;
    Label45: TLabel;
    EdSituacao: TEdit;
    Label46: TLabel;
    CurValorFaturado: TCurrencyEdit;
    CbDescontoNF: TCheckBox;
    SqlCdsPedidoPED_REGISTRO: TIntegerField;
    SqlCdsPedidoPED_CODIGO: TStringField;
    SqlCdsPedidoOPV_CODIGO: TIntegerField;
    SqlCdsPedidoOPV_DESCRICAO: TStringField;
    SqlCdsPedidoOPV_ATESTOQUE: TStringField;
    SqlCdsPedidoPED_DTENTRADA: TSQLTimeStampField;
    SqlCdsPedidoPED_DTSAIDA: TSQLTimeStampField;
    SqlCdsPedidoPCL_CODIGO: TStringField;
    SqlCdsPedidoPCL_NOME: TStringField;
    SqlCdsPedidoPED_VLFRETE: TFMTBCdField;
    SqlCdsPedidoPED_DESP_ACES: TFMTBCdField;
    SqlCdsPedidoPED_VLSEGURO: TFMTBCdField;
    SqlCdsPedidoPED_DESP_IMPOR: TFMTBCdField;
    SqlCdsPedidoREP_CODIGO: TStringField;
    SqlCdsPedidoREP_NOME: TStringField;
    SqlCdsPedidoPED_COMIS1: TFMTBCdField;
    SqlCdsPedidoPED_COMIS2: TFMTBCdField;
    SqlCdsPedidoPED_COMIS3: TFMTBCdField;
    SqlCdsPedidoTRP_CODIGO: TStringField;
    SqlCdsPedidoTRP_RAZAO: TStringField;
    SqlCdsPedidoPED_FRETE: TStringField;
    SqlCdsPedidoPED_DESCTONF: TStringField;
    SqlCdsPedidoPED_DESCTOPC1: TFMTBCdField;
    SqlCdsPedidoPED_DESCTOPC2: TFMTBCdField;
    SqlCdsPedidoPED_DESCTOVL: TFMTBCdField;
    SqlCdsPedidoPED_NUMERO_PED_CLIENTE: TStringField;
    SqlCdsPedidoPED_CONTATO_CLIENTE: TStringField;
    SqlCdsPedidoPED_SITUACAO: TStringField;
    SqlCdsPedidoPED_VLFATURADO: TFMTBCdField;
    SqlCdsPedidoPED_OBSERVACAO: TBlobField;
    SqlCdsPedidoPED_OBSERVACAO_NOTA: TBlobField;
    SqlCdsPedidoItem: TSQLClientDataSet;
    SqlCdsPedidoItemPED_CODIGO: TStringField;
    SqlCdsPedidoItemPRF_REGISTRO: TIntegerField;
    SqlCdsPedidoItemPRD_REFER: TStringField;
    SqlCdsPedidoItemDESCRICAO: TStringField;
    SqlCdsPedidoItemPRF_QTDE: TFMTBCdField;
    SqlCdsPedidoItemPRF_QTDEFAT: TFMTBCdField;
    SqlCdsPedidoItemPRF_PRECO_BRUTO: TFMTBCdField;
    SqlCdsPedidoItemDESCONTO: TFMTBCdField;
    SqlCdsPedidoItemPRF_PRECO: TFMTBCdField;
    SqlCdsPedidoItemMARKUP: TFMTBCdField;
    SqlCdsPedidoItemTOTAL: TFMTBCdField;
    SqlCdsPedidoItemPRF_IPIALIQ: TFMTBCdField;
    SqlCdsPedidoItemPRF_ITEMCOMIS: TFMTBCdField;
    SqlCdsPedidoItemDI: TStringField;
    DsPedidoItem: TDataSource;
    SqlCdsPedidoItemPRD_PESOLIQ: TFMTBCdField;
    SqlCdsPedidoItemPRD_PESOKG: TFMTBCdField;
    CurDescontoIndice: TCurrencyEdit;
    BtnAlterar: TBitBtn;
    Label48: TLabel;
    SqlCdsTipoPedido: TSQLClientDataSet;
    SqlCdsTipoPedidoOPV_CODIGO: TIntegerField;
    SqlCdsTipoPedidoOPV_DESCRICAO: TStringField;
    SqlCdsTipoPedidoOPV_TIPO: TStringField;
    SqlCdsTipoPedidoEMP_CODIGO: TStringField;
    SqlCdsTipoPedidoOPV_ATESTOQUE: TStringField;
    SqlCdsTipoPedidoAMX_DESTINO: TStringField;
    SqlCdsTipoPedidoAMX_ORIGEM: TStringField;
    SqlCdsTipoPedidoOPV_TIPOPADRAO: TStringField;
    SqlCdsTipoPedidoOPV_SERVICO: TStringField;
    SqlCdsPedidoCLI_CODIGO: TStringField;
    PmuItemPedido: TPopupMenu;
    ImageMenuGride: TImageList;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    SqlCdsPedidoItemPRD_CODIGO: TStringField;
    SqlCdsPedidoItemPRD_DESCRI: TStringField;
    SqlCdsPedidoItemPRF_PRODUTO_AGREGADO: TStringField;
    SqlCdsPedidoItemPRG_REGISTRO: TIntegerField;
    SqlCdsPedidoItemPRF_COMPL_DESCRI: TStringField;
    SqlCdsPedidoItemAMX_CODIGO_DESTINO: TStringField;
    DsVendaItemHistorico: TDataSource;
    SqlCdsVendaItemHistorico: TSQLClientDataSet;
    SqlCdsVendaItemHistoricoPRD_REFER: TStringField;
    SqlCdsVendaItemHistoricoPED_CODIGO: TStringField;
    SqlCdsVendaItemHistoricoPRD_DESCRI: TStringField;
    SqlCdsVendaItemHistoricoNF_QTDE: TFMTBCdField;
    SqlCdsVendaItemHistoricoNF_PRECO: TFMTBCdField;
    SqlCdsVendaItemHistoricoNF_IPIVALOR: TFMTBCdField;
    SqlCdsVendaItemHistoricoNF_VLSUBST: TFMTBCdField;
    SqlCdsVendaItemHistoricoNF_IDESCTO1: TFMTBCdField;
    SqlCdsVendaItemHistoricoCLI_CODIGO: TStringField;
    SqlCdsVendaItemHistoricoNF_NUM_NFE: TIntegerField;
    SqlCdsVendaItemHistoricoNF_EMISSAO: TDateField;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    DSPedidoDI: TDataSource;
    CdSPedidoDI: TClientDataSet;
    CdSPedidoDIPID_REGISTRO: TIntegerField;
    CdSPedidoDIPRF_REGISTRO: TIntegerField;
    CdSPedidoDIPID_NUMERO_DI: TStringField;
    CdSPedidoDIPID_DATA_DI: TDateField;
    CdSPedidoDIPID_LOCAL_DESEMBARACO: TStringField;
    CdSPedidoDIPID_DATA_DESEMBARACO: TDateField;
    CdSPedidoDIPID_CODIGO_EXPORTADOR: TStringField;
    CdSPedidoDIPID_UF_DESEMBARACO: TStringField;
    DSPPedidoDI: TDataSetProvider;
    SqlPedidoDI: TSQLDataSet;
    SqlPedidoDIPID_REGISTRO: TIntegerField;
    SqlPedidoDIPRF_REGISTRO: TIntegerField;
    SqlPedidoDIPID_NUMERO_DI: TStringField;
    SqlPedidoDIPID_DATA_DI: TDateField;
    SqlPedidoDIPID_LOCAL_DESEMBARACO: TStringField;
    SqlPedidoDIPID_DATA_DESEMBARACO: TDateField;
    SqlPedidoDIPID_CODIGO_EXPORTADOR: TStringField;
    SqlPedidoDIPID_UF_DESEMBARACO: TStringField;
    DSPedidoDIAdicao: TDataSource;
    CdSPedidoDIAdicao: TClientDataSet;
    CdSPedidoDIAdicaoPDA_REGISTRO: TIntegerField;
    CdSPedidoDIAdicaoPID_REGISTRO: TIntegerField;
    CdSPedidoDIAdicaoPDA_ADICAO: TIntegerField;
    CdSPedidoDIAdicaoPDA_SEQ_ADICAO: TIntegerField;
    CdSPedidoDIAdicaoPDA_CODIGO_FABRICANTE: TStringField;
    DSPPedidoDIAdicao: TDataSetProvider;
    SQLPedidoDIAdicao: TSQLDataSet;
    SQLPedidoDIAdicaoPDA_REGISTRO: TIntegerField;
    SQLPedidoDIAdicaoPID_REGISTRO: TIntegerField;
    SQLPedidoDIAdicaoPDA_ADICAO: TIntegerField;
    SQLPedidoDIAdicaoPDA_SEQ_ADICAO: TIntegerField;
    SQLPedidoDIAdicaoPDA_CODIGO_FABRICANTE: TStringField;
    DBEdit35: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit32: TDBEdit;
    SqlCdsPedidoPCX_CODIGO: TStringField;
    TabNotasFiscaisCliente: TTabSheet;
    GroupBox1: TGroupBox;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    GroupBox2: TGroupBox;
    DBGrid3: TDBGrid;
    GroupBox5: TGroupBox;
    DBEdtNF_VALOR_ISS: TDBEdit;
    DBEdtNF_BASE_ISS: TDBEdit;
    DBEdtNF_VLBASESUBTRIB: TDBEdit;
    DBEdtNF_VL_SUBTRIB: TDBEdit;
    DBEdtNF_DESP_ACES: TDBEdit;
    DBEdtNF_VLSEGURO: TDBEdit;
    DBEdtNF_VL_IPI: TDBEdit;
    DBEdtNF_BASE_IPI: TDBEdit;
    DBEdtNF_BASEICMS: TDBEdit;
    DBEdtNF_VL_ICMS: TDBEdit;
    DBEdtNF_VLFRETE: TDBEdit;
    Label59: TLabel;
    Label58: TLabel;
    Label57: TLabel;
    Label56: TLabel;
    Label55: TLabel;
    Label54: TLabel;
    Label53: TLabel;
    Label52: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    GroupBox6: TGroupBox;
    DBGrid1: TDBGrid;
    TabClienteVendas: TTabSheet;
    DsClientProd: TDataSource;
    SQLClienteProd: TSQLClientDataSet;
    SQLClienteProdPRD_REFER: TStringField;
    SQLClienteProdPED_CODIGO: TStringField;
    SQLClienteProdPRD_DESCRI: TStringField;
    SQLClienteProdNF_QTDE: TFMTBCdField;
    SQLClienteProdNF_PRECO: TFMTBCdField;
    SQLClienteProdNF_IPIVALOR: TFMTBCdField;
    SQLClienteProdNF_VLSUBST: TFMTBCdField;
    SQLClienteProdNF_IDESCTO1: TFMTBCdField;
    SQLClienteProdNF_NUM_NFE: TIntegerField;
    SQLClienteProdNF_EMISSAO: TDateField;
    SQLClienteProdCC_TOTAL: TFloatField;
    GroupBox14: TGroupBox;
    RadRazao: TRadioButton;
    RadCodigo: TRadioButton;
    RadCgc: TRadioButton;
    RadCPF: TRadioButton;
    RadFantasia: TRadioButton;
    GbLista: TGroupBox;
    Msk_busca: TMaskEdit;
    BitPesquisa: TBitBtn;
    TabVendasFaturar: TTabSheet;
    SQLReservaProd: TSQLClientDataSet;
    SQLReservaProdPRD_REFER: TStringField;
    SQLReservaProdPRF_PRDDESCRI: TStringField;
    SQLReservaProdSQTDE: TFMTBCdField;
    DsReservaProd: TDataSource;
    SQLReservaPed: TSQLClientDataSet;
    SQLReservaPedPED_CODIGO: TStringField;
    SQLReservaPedPRD_REFER: TStringField;
    SQLReservaPedPED_DTENTRADA: TSQLTimeStampField;
    SQLReservaPedCLI_CODIGO: TStringField;
    SQLReservaPedCLI_RAZAO: TStringField;
    SQLReservaPedREP_CODIGO: TStringField;
    SQLReservaPedREP_NOME: TStringField;
    SQLReservaPedSQTDEFATURAR: TFMTBCdField;
    DsReservaPed: TDataSource;
    GroupBox15: TGroupBox;
    DBGrid4: TDBGrid;
    BitPesqReservaProd: TBitBtn;
    BitCancelaReservaProd: TBitBtn;
    GroupBox16: TGroupBox;
    EditProdReserva: TEdit;
    GroupBox17: TGroupBox;
    DBGrid5: TDBGrid;
    Bit_Sair: TBitBtn;
    EdClienteCodigo: TEdit;
    EdPrazoCodigo: TEdit;
    EdVendedorCodigo: TEdit;
    EdTransportadoraCodigo: TEdit;
    edCCustoCodigo: TEdit;
    Adicionar1: TMenuItem;
    JvDBDateEdit1: TJvDBDateEdit;
    JvDBDateEdit2: TJvDBDateEdit;
    BtnImprimir: TJvArrowButton;
    PopupMenuImpressao: TPopupMenu;
    PedidoNormal1: TMenuItem;
    PedidosemValores1: TMenuItem;
    SpeedButton1: TSpeedButton;
    CdSPedidoDILancado: TClientDataSet;
    DSPedidoDILancado: TDataSource;
    SQLCdSPedidoDILancado: TSQLDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    DateField1: TDateField;
    StringField2: TStringField;
    DateField2: TDateField;
    StringField3: TStringField;
    StringField4: TStringField;
    DSPCdSPedidoDILancado: TDataSetProvider;
    CdSPedidoDILancadoPID_REGISTRO: TIntegerField;
    CdSPedidoDILancadoPRF_REGISTRO: TIntegerField;
    CdSPedidoDILancadoPID_NUMERO_DI: TStringField;
    CdSPedidoDILancadoPID_DATA_DI: TDateField;
    CdSPedidoDILancadoPID_LOCAL_DESEMBARACO: TStringField;
    CdSPedidoDILancadoPID_DATA_DESEMBARACO: TDateField;
    CdSPedidoDILancadoPID_CODIGO_EXPORTADOR: TStringField;
    CdSPedidoDILancadoPID_UF_DESEMBARACO: TStringField;
    Label47: TLabel;
    SqlCdsPedidoPED_CODIGO_ORCAMENTO: TStringField;
    SqlCdsPedidoCLI_RAZAO: TStringField;
    SqlCdsTipoPedidoOPV_VENDA: TStringField;
    SqlCdsTipoPedidoOPV_ORCAMENTO: TStringField;
    Oramento1: TMenuItem;
    SqlCdsPedidoPED_ORS_CLIENTE: TStringField;
    SqlCdsPedidoPED_ORS_DIAS_ENTREGA: TIntegerField;
    SqlCdsPedidoPED_ORS_DIAS_VALIDADE: TIntegerField;
    SqlCdsPedidoPED_ORS_FONE: TStringField;
    SqlCdsPedidoPED_ORS_FAX: TStringField;
    SqlCdsPedidoPED_ORS_EMAIL: TStringField;
    Label100: TLabel;
    Label101: TLabel;
    GBInformacoesOrcamento: TGroupBox;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    EdOrsCliente: TEdit;
    EdOrsEmail: TMaskEdit;
    EdOrsFone: TMaskEdit;
    EdOrsFax: TMaskEdit;
    Image1: TImage;
    Image2: TImage;
    Label97: TLabel;
    EdOrsDiaEntrega: TCurrencyEdit;
    EdOrsDiaValidade: TCurrencyEdit;
    Panel3: TPanel;
    SpeedButton2: TSpeedButton;
    Panel4: TPanel;
    SpeedButton3: TSpeedButton;
    PainelClienteSemCadastro: TPanel;
    EspelhodaNotaFiscal1: TMenuItem;
    SqlCdsPedidoItemPRD_PRODSERV: TStringField;
    LblMovimentaEstoque: TPanel;
    PopupMenu1: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    BtnEmail: TJvArrowButton;
    N1: TMenuItem;
    AlterarComisso1: TMenuItem;
    SpeedButton4: TSpeedButton;
    SqlCdsPedidoPMT_MOTIVO: TStringField;
    SqlCdsPedidoPED_MOTIVO_CANCELAMENTO: TStringField;
    pmDuplicar: TPopupMenu;
    Duplicar1: TMenuItem;
    Copiar1: TMenuItem;
    SqlCdsPedidoItemPRF_ACRESCIMO: TFMTBCdField;
    lbl1: TLabel;
    OramentoImagem1: TMenuItem;
    OramentoImagemGrande1: TMenuItem;
    OramentoImagem2: TMenuItem;
    OramentoImagemGrande2: TMenuItem;
    SqlCdsPedidoItemPRF_QTDE_ENV_PRODUCAO: TFMTBCdField;
    Label22: TLabel;
    CurMarkup: TCurrencyEdit;
    SqlCdsPedidoItemPRF_CUSTO: TFMTBCdField;
    Romaneio1: TMenuItem;
    Romaneio2: TMenuItem;
    PedidoComLinha1: TMenuItem;
    PedidoComLinhadoProduto1: TMenuItem;
    SqlCdsPedidoItemPRDL_REGISTRO: TIntegerField;
    OramentoComLinhadoProduto1: TMenuItem;
    OramentoComLinhadoProduto2: TMenuItem;
    SqlCdsPedidoItemPRF_B2B_PEDIDO_COMPRA: TStringField;
    SqlCdsPedidoItemPRF_B2B_ITEM_PEDIDO_COMPRA: TIntegerField;
    SqlCdsPedidoItemPRF_VALOR_ST: TFMTBCdField;
    Label98: TLabel;
    CurTotalST: TCurrencyEdit;
    SqlCdsTipoPedidoOPV_CALCULA_ST: TStringField;
    SqlCdsPedidoItemPRD_UND: TStringField;
    Label99: TLabel;
    SqlCdsPedidoOPE_CODIGO: TIntegerField;
    CbCfop: TcxLookupComboBox;
    DsCfop: TDataSource;
    CdsCFOP: TSQLClientDataSet;
    CdsCFOPOPE_CODIGO: TStringField;
    CdsCFOPOPE_DESCRI: TStringField;
    SqlCdsPedidoItemPRD_ORIGEM: TIntegerField;
    lblEstado: TLabel;
    cbbClienteEstado: TComboBox;
    SqlCdsPedidoPED_ORS_ESTADO: TStringField;
    SqlCdsPedidoItemPRG_DESCRICAO: TStringField;
    IdHTTP1: TIdHTTP;
    vXMLDoc: TXMLDocument;
    SqlCdsTipoPedidoOPV_PRODUCAO: TStringField;
    SqlCdsPedidoCENTRO_CUSTO_CLIENTE: TStringField;
    SqlCdsPedidoFPG_REGISTRO: TIntegerField;
    tsRetornoIndust: TTabSheet;
    SqlCdsRetornoInd: TSQLClientDataSet;
    dbgrdRetornoInd: TDBGrid;
    dsRetornoInd: TDataSource;
    SqlCdsRetornoIndENF_ENTRADA: TDateField;
    SqlCdsRetornoIndENF_NOTANUMBER: TStringField;
    SqlCdsRetornoIndFOR_CODIGO: TStringField;
    SqlCdsRetornoIndFOR_RAZAO: TStringField;
    SqlCdsRetornoIndPRD_REFER: TStringField;
    SqlCdsRetornoIndPRD_DESCRI: TStringField;
    SqlCdsRetornoIndENF_QTDE: TFMTBCdField;
    SqlCdsRetornoIndPEDIND_QUANTIDADE: TFMTBCdField;
    SqlCdsRetornoIndPEDIND_REGISTRO: TIntegerField;
    SqlCdsRetornoIndENF_REGISTRO: TIntegerField;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel5: TPanel;
    SqlCdsTipoPedidoOPV_INDUSTRIALIZACAO: TStringField;
    SqlPedidoDIPID_VIA_TRANSPORTE: TIntegerField;
    SqlPedidoDIPID_VALOR_AFRMM: TFMTBCdField;
    SqlPedidoDIPID_FORMA_IMPORTACAO: TIntegerField;
    SqlPedidoDIPID_CNPJ_ADQUIRENTE: TStringField;
    SqlPedidoDIPID_UF_ADQUIRENTE: TStringField;
    Label102: TLabel;
    JvDBComboBox1: TJvDBComboBox;
    CdSPedidoDIPID_VIA_TRANSPORTE: TIntegerField;
    CdSPedidoDIPID_VALOR_AFRMM: TFMTBCdField;
    CdSPedidoDIPID_FORMA_IMPORTACAO: TIntegerField;
    CdSPedidoDIPID_CNPJ_ADQUIRENTE: TStringField;
    CdSPedidoDIPID_UF_ADQUIRENTE: TStringField;
    Label103: TLabel;
    DBEdit2: TDBEdit;
    Label104: TLabel;
    JvDBComboBox2: TJvDBComboBox;
    GroupBox18: TGroupBox;
    Label105: TLabel;
    DBEdit3: TDBEdit;
    Label106: TLabel;
    DBEdit4: TDBEdit;
    SQLCdSPedidoDILancadoPID_VIA_TRANSPORTE: TIntegerField;
    SQLCdSPedidoDILancadoPID_VALOR_AFRMM: TFMTBCdField;
    SQLCdSPedidoDILancadoPID_FORMA_IMPORTACAO: TIntegerField;
    SQLCdSPedidoDILancadoPID_CNPJ_ADQUIRENTE: TStringField;
    SQLCdSPedidoDILancadoPID_UF_ADQUIRENTE: TStringField;
    CdSPedidoDILancadoPID_VIA_TRANSPORTE: TIntegerField;
    CdSPedidoDILancadoPID_VALOR_AFRMM: TFMTBCdField;
    CdSPedidoDILancadoPID_FORMA_IMPORTACAO: TIntegerField;
    CdSPedidoDILancadoPID_CNPJ_ADQUIRENTE: TStringField;
    CdSPedidoDILancadoPID_UF_ADQUIRENTE: TStringField;
    PedidoSemItensdopKIT1: TMenuItem;
    SqlCdsPedidoItemITT_REGISTRO: TIntegerField;
    tsContatosCliente: TTabSheet;
    DsClienteContato: TDataSource;
    CdsClienteContato: TClientDataSet;
    CdsClienteContatoCC_REGISTRO: TIntegerField;
    CdsClienteContatoCLI_CODIGO: TStringField;
    CdsClienteContatoCC_NOME: TStringField;
    CdsClienteContatoCC_CARGO: TStringField;
    CdsClienteContatoCC_TELEFONE: TStringField;
    CdsClienteContatoCC_CELULAR: TStringField;
    CdsClienteContatoCC_RAMAL: TStringField;
    CdsClienteContatoCC_EMAIL: TStringField;
    DspClienteContato: TDataSetProvider;
    SqlCLienteContato: TSQLDataSet;
    SqlCLienteContatoCC_REGISTRO: TIntegerField;
    SqlCLienteContatoCLI_CODIGO: TStringField;
    SqlCLienteContatoCC_NOME: TStringField;
    SqlCLienteContatoCC_CARGO: TStringField;
    SqlCLienteContatoCC_TELEFONE: TStringField;
    SqlCLienteContatoCC_CELULAR: TStringField;
    SqlCLienteContatoCC_RAMAL: TStringField;
    SqlCLienteContatoCC_EMAIL: TStringField;
    grpContatos: TGroupBox;
    DBNavigator3: TDBNavigator;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    DBEdit9: TDBEdit;
    Label111: TLabel;
    Label112: TLabel;
    DBEdit10: TDBEdit;
    dbgrdContatos: TDBGrid;
    OrcamentoImagemSomenteTotal1: TMenuItem;
    OrcamentoImagemSomenteTotal2: TMenuItem;
    tsExportacao: TTabSheet;
    grpInformacoes: TGroupBox;
    lblUFDespacho: TLabel;
    edtExportacaoUF: TEdit;
    lblExportacaoDescricaoLocalEmbarque: TLabel;
    edtExportacaoDescricaoLocalEmbarque: TEdit;
    Label113: TLabel;
    edtExportacaoDescricaoRecinto: TEdit;
    SqlCdsPedidoPED_EXP_UF: TStringField;
    SqlCdsPedidoPED_EXP_LOCAL_EXP: TStringField;
    SqlCdsPedidoPED_EXP_LOCAL_RECINTO: TStringField;
    SqlCdsPedidoItemPRDD_REGISTRO: TIntegerField;
    SqlCdsPedidoItemPRF_TABPRECO: TStringField;
    SqlCdsPedidoItemPRDCO_CODIGO_ORIGINAL: TStringField;
    SqlCdsPedidoItemPRDD_SIGLA: TStringField;
    RomaneioM31: TMenuItem;
    RomaneioM32: TMenuItem;
    Label114: TLabel;
    edtPercentStProduto: TCurrencyEdit;
    PageControl3: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox11: TGroupBox;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label79: TLabel;
    Label81: TLabel;
    Label78: TLabel;
    Label89: TLabel;
    DbeCli_razao: TDBEdit;
    DbeCli_endere: TDBEdit;
    DbeCli_cidade: TDBEdit;
    DbeCli_fone: TDBEdit;
    DbeCli_fax: TDBEdit;
    DbeCli_dtinicio: TDBDateEdit;
    DbeCLI_BAIRRO: TDBEdit;
    DbeCli_emailNfe: TDBEdit;
    DbeCli_Fantasia: TDBEdit;
    GroupBox12: TGroupBox;
    RadPequena: TRadioButton;
    RadMedia: TRadioButton;
    RadGrande: TRadioButton;
    DBECLIUF: TDBEdit;
    DbeCliCep: TDBEdit;
    DbeCli_contato: TDBEdit;
    DbeCli_funcont: TDBEdit;
    DBEEmail_contato: TDBEdit;
    Grp_Credito: TGroupBox;
    Label80: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    DbeLimiteCred: TDBEdit;
    DbeLimiteUtiliz: TDBEdit;
    DbePediAbertos: TDBEdit;
    DbeValorUltimaCompra: TDBEdit;
    DBeUltCompra: TDBDateEdit;
    DBECLI_CGC: TDBEdit;
    DBEdit28: TDBEdit;
    GroupBox13: TGroupBox;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    btnGravarEndEntrega: TBitBtn;
    DbeCli_Endentr: TDBEdit;
    DbeCli_cidentr: TDBEdit;
    DbeCli_ufentr: TDBEdit;
    DbeCli_cepentr: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit27: TDBEdit;
    btnEditarEndEntrega: TBitBtn;
    SqlCdsGraficoVendas: TSQLClientDataSet;
    SqlCdsGraficoVendasANO: TSmallintField;
    SqlCdsGraficoVendasMES: TSmallintField;
    SqlCdsGraficoVendasMES_ANO: TStringField;
    SqlCdsGraficoVendasTOTAL: TFMTBCdField;
    TabSheet4: TTabSheet;
    GroupBox10: TGroupBox;
    DBGridClientesProd: TDBGrid;
    GroupBox20: TGroupBox;
    chtGrafico: TChart;
    brsrsSeries1: TBarSeries;
    frxReport1: TfrxReport;
    GroupBox19: TGroupBox;
    Label115: TLabel;
    DBGrid2: TDBGrid;
    CurTotalEstoqueEmpresa: TCurrencyEdit;
    DsSaldos: TDataSource;
    SqlCdsSaldos: TSQLClientDataSet;
    SqlCdsSaldosEMP_CODIGO: TStringField;
    SqlCdsSaldosEMP_RAZAO: TStringField;
    SqlCdsSaldosSALDO: TFMTBCdField;
    SQLReservaPedPRD_CODIGO: TStringField;
    SqlCdsPedidoItemSequencia: TIntegerField;
    SQLQuery1: TSQLQuery;
    SqlCdsPedidoItemID_DIRETIVAS: TIntegerField;
    SqlCdsPedidoItemPRF_IDESCTO1: TFloatField;
    SqlCdsPedidoItemPRF_IDESCTO2: TFloatField;
    RomaneioBSC1: TMenuItem;
    OramentoMais1: TMenuItem;
    OramentoMais2: TMenuItem;
    RomaneioPlanilha1: TMenuItem;
    qCli: TSQLQuery;
    edCliente: TSgDbSearchCombo;
    pnlAtraso: TPanel;
    Image3: TImage;
    qPrazo: TSQLQuery;
    edPrazo: TSgDbSearchCombo;
    edVendedor: TSgDbSearchCombo;
    qRep: TSQLQuery;
    qTransp: TSQLQuery;
    edTransportadora: TSgDbSearchCombo;
    qFPagto: TSQLQuery;
    edFPagto: TSgDbSearchCombo;
    qCCusto: TSQLQuery;
    edCCusto: TSgDbSearchCombo;
    ComboBox1: TComboBox;
    Lookup1: TsgDBLookupCombo;
    sgDBAutoF81: TsgDBAutoF8;
    procedure FormKeyDown(Sender: tObject; var Key: Word;
      Shift: TShiftState);
    procedure CurDescontoNotaFiscalExit(Sender: tObject);
    procedure CurDescontoNotaFiscalAdicionalExit(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure BtnConsultarClick(Sender: tObject);
    procedure CurFreteExit(Sender: tObject);
    procedure DbGradeItemPedidoDrawColumnCell(Sender: tObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure BtnNovoClick(Sender: tObject);
    procedure BtnCancelarClick(Sender: tObject);
    procedure BtnGravarClick(Sender: tObject);
    procedure BtnAlterarClick(Sender: tObject);
    procedure BtnExcluirClick(Sender: tObject);
    procedure Excluir1Click(Sender: tObject);
    procedure Alterar1Click(Sender: tObject);
    procedure DbGradeItemPedidoDblClick(Sender: tObject);
    procedure TabHostoricoVendaShow(Sender: tObject);
    procedure BtnEstoqueClick(Sender: tObject);
    procedure BtnImprimirClick(Sender: tObject);
    procedure BtnEmailClick(Sender: tObject);
    procedure BtnRelatoriosClick(Sender: tObject);
    procedure CdSPedidoDIAfterInsert(DataSet: TDataSet);
    procedure CdSPedidoDIAfterDelete(DataSet: TDataSet);
    procedure CdSPedidoDIAfterPost(DataSet: TDataSet);
    procedure CdSPedidoDIAdicaoAfterDelete(DataSet: TDataSet);
    procedure CdSPedidoDIAdicaoAfterInsert(DataSet: TDataSet);
    procedure CdSPedidoDIAdicaoAfterPost(DataSet: TDataSet);
    procedure DsPedidoItemDataChange(Sender: tObject; Field: TField);
    procedure DSPedidoDIDataChange(Sender: tObject; Field: TField);
    procedure TabNotasFiscaisClienteShow(Sender: tObject);
    procedure RadFantasiaClick(Sender: tObject);
    procedure BitPesquisaClick(Sender: tObject);
    procedure TabClienteVendasShow(Sender: tObject);
    procedure SQLClienteProdCalcFields(DataSet: TDataSet);
    procedure SQLReservaProdAfterScroll(DataSet: TDataSet);
    procedure BitCancelaReservaProdClick(Sender: tObject);
    procedure BitPesqReservaProdClick(Sender: tObject);
    procedure TabVendasFaturarShow(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure CbDescontoNFClick(Sender: tObject);
    procedure EdClienteCodigoExit(Sender: tObject);
    procedure EdPrazoCodigoExit(Sender: tObject);
    procedure EdVendedorCodigoExit(Sender: tObject);
    procedure EdTransportadoraCodigoExit(Sender: tObject);
    procedure edCCustoCodigoExit(Sender: tObject);
    procedure Adicionar1Click(Sender: tObject);
    procedure SpeedTipoClick(Sender: tObject);
    procedure PedidoNormal1Click(Sender: tObject);
    procedure PedidosemValores1Click(Sender: tObject);
    procedure SpeedButton1Click(Sender: tObject);
    procedure EdPedidoNumeroExit(Sender: tObject);
    procedure CdSPedidoDIBeforeEdit(DataSet: TDataSet);
    procedure EdNumeroPedidoClienteExit(Sender: tObject);
    procedure EdNumeroPedidoClienteEnter(Sender: tObject);
    procedure Oramento1Click(Sender: tObject);
    procedure EdPedidoTipoChange(Sender: tObject);
    procedure Image1Click(Sender: tObject);
    procedure Image2Click(Sender: tObject);
    procedure SpeedButton2Click(Sender: tObject);
    procedure SpeedButton3Click(Sender: tObject);
    procedure EdOrsDiaEntregaExit(Sender: tObject);
    procedure DteEntregaExit(Sender: tObject);
    procedure DteEntradaExit(Sender: tObject);
    procedure EspelhodaNotaFiscal1Click(Sender: tObject);
    procedure MenuItem1Click(Sender: tObject);
    procedure MenuItem2Click(Sender: tObject);
    procedure MenuItem3Click(Sender: tObject);
    procedure MenuItem4Click(Sender: tObject);
    procedure JvArrowButton1Click(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure AlterarComisso1Click(Sender: tObject);
    procedure SpeedButton4Click(Sender: tObject);
    procedure BtnDuplicarClick(Sender: tObject);
    procedure DBEdit28Change(Sender: tObject);
    procedure btnEditarEndEntregaClick(Sender: tObject);
    procedure btnGravarEndEntregaClick(Sender: tObject);
    procedure PedidoComImagem1Click(Sender: tObject);
    procedure PedidoComImagem2Click(Sender: tObject);
    procedure PedidoComImagemCentro1Click(Sender: tObject);
    procedure PedidoComImagemGrande1Click(Sender: tObject);
    procedure OramentoImagem1Click(Sender: tObject);
    procedure OramentoImagemGrande1Click(Sender: tObject);
    procedure OramentoImagem2Click(Sender: tObject);
    procedure OramentoImagemGrande2Click(Sender: tObject);
    procedure Romaneio2Click(Sender: tObject);
    procedure Romaneio1Click(Sender: tObject);
    procedure PedidoComLinha1Click(Sender: tObject);
    procedure PedidoComLinhadoProduto1Click(Sender: tObject);
    procedure OramentoComLinhadoProduto1Click(Sender: tObject);
    procedure OramentoComLinhadoProduto2Click(Sender: tObject);
    procedure CbCfopPropertiesChange(Sender: tObject);
    procedure CbCfopExit(Sender: tObject);
    procedure btnRemoverIndustrializacaoClick(Sender: tObject);
    procedure btnVincularIndustrializacaoClick(Sender: tObject);
    procedure PedidoSemItensdopKIT1Click(Sender: tObject);
    procedure CdsClienteContatoAfterPost(DataSet: TDataSet);
    procedure CdsClienteContatoBeforePost(DataSet: TDataSet);
    procedure OrcamentoImagemSomenteTotal1Click(Sender: tObject);
    procedure OrcamentoImagemSomenteTotal2Click(Sender: tObject);
    procedure RomaneioM31Click(Sender: tObject);
    procedure RomaneioM32Click(Sender: tObject);
    procedure DsReservaPedDataChange(Sender: tObject; Field: TField);
    procedure SqlCdsPedidoItemCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: tObject);
    procedure SqlCdsPedidoItemPRD_REFERGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure RomaneioBSC1Click(Sender: tObject);
    procedure OramentoMais1Click(Sender: tObject);
    procedure OramentoMais2Click(Sender: tObject);
    procedure RomaneioPlanilha1Click(Sender: tObject);
    procedure PageControl1Change(Sender: tObject);
    procedure edClienteButtonClick(Sender: tObject);
    procedure edClienteSelect(Sender: tObject);
    procedure EdClienteCodigoKeyPress(Sender: tObject; var Key: Char);
    procedure edPrazoSelect(Sender: tObject);
    procedure edVendedorSelect(Sender: tObject);
    procedure edTransportadoraSelect(Sender: tObject);
    procedure edFPagtoSelect(Sender: tObject);
    procedure edCCustoSelect(Sender: tObject);
  private
    { Private declarations }
    relatorio:TfrxReport;
    bEdicao, bInclusao, bAdicionadoForma:Boolean;
    rQuantidadeItens,
    rQuantidadeItensFaturado,
    rTotalPedidoComDesconto,
    rTotalComisPrecoLiquido:Currency;
    email_de_enviado
    :string;
    stream:TStream;
    JpedImage:TJPEGImage;
    MinhaImagem:TJPEGImage;

    sTipoGlobal:String;
    wRetornoInd:Boolean;

    vIdPedido: Integer ; 

    procedure AdicionaItem;
    procedure AlterarItem;
    procedure ExcluirItem;
    procedure DeletarItem;
    procedure DupicarCopiar(sTipo:String);
    procedure AtualizaSaldos;
    //
    procedure IncluirPedido;
    procedure CancelarPedido;
    procedure ExcluirPedido;
    procedure ImprimePedido(bVisualiza:Boolean;sTipo:String);
    procedure HabilitaDesabilitaEdicao(bStatus:Boolean);
    procedure HabilitaDesabilitaDescontoNota(bStatus:Boolean);
    procedure VerificaSePodeEditar;
    //
    procedure BuscaCliente(sCodigo:String);
    procedure GravaMediaComissao;
    procedure MovimentaEstoque(bStatus:Boolean);
    procedure BuscaPedidoItem(sPedidoCodigo:String);
    procedure BuscaVendaItemHistorico;
    procedure BuscaNotas;
    procedure BuscaClienteVenda;
    procedure BuscaprodutosCliente;
    Function BuscapedidosReservas(wreserva_Prd_refer:string):boolean;
    Procedure BuscaprodutosReservas;
    //
    procedure CalculaIndiceDescto;
    procedure CalcutaTotalItens;
    //

    procedure LayOutPesqClienteVenda;
    function LiberaSairPedido:Boolean;
    procedure VerificaComissaoVendedor;
    procedure AlterarComissao;
    procedure Reajuste;
    procedure EnviarPedidoProducao;
    procedure ConsultaRetornoIndustrializacao;
    procedure RetornoIndustrializacao;
    function GravaPedido:Boolean;
    procedure SetCfopOpvTipo(tipo: string);
    function GetTipoPedidoPadrao: integer;
    function NumeracaoRepetida: Boolean;
    procedure RemoverInfoNumeracaoPedido;
    procedure LerImagem;
    procedure AbreGraficoVendas;
    procedure LimparCampos;
  public
    { Public declarations }

    sPedidoBusca,
    sUltimoAlmoxDigitado,
    sPedidoClienteAnterior,
    sPedidoTitulo,
    sPedidoObs,
    sCfopClienteCodigo:String;
    sOrcamentoObs:WideString;
    iCodigoTipoPedido:Integer;
    bRecalculaSTGeral,
    bAlteraDesscricaodoItem,
    bHabilitaConsultaCompraVenda,
    bMostraMsgAtraso,
    bTipoPedidoCalculaST:Boolean;
    rComissaoGeral,
    rComissaoVendedor,
    rTotalProdutosBruto:Currency;
    bContinuaCancelamento, bEnviaProducao,bPedidoSemItemKit:Boolean;
    sCodCliente: string;
    procedure BuscaItensNota;
    procedure BuscaPedido(sPedidoCodigo:String);
    procedure BuscaTipoPedido(sTipoCodigo:Integer);
    procedure RecalculaSTItem;


  end;

var
  FrmPedidoNovo: TFrmPedidoNovo;

implementation

{$R *.dfm}

uses
  uPedidoItem, Men0001, DataCad, RWFunc, Ped0004, GImpPedi, uPedidoDAO,
  {uProcedimentos,} Prd0006, Email0000, DataMov, Ped0009, Cli0002,
  uPedidoTipo, uPedidoTipoInicial, uCadastroFrases, uPedidoReajuste,
  uPedidoCancelamento, uFinanceiroAnaliseCreditoCliente, uFinanceiroDao,
  uClienteDao, DataCad1, uPedidoConsultaProducao, Uteis,
  uVinculacaoIndustrializacaoRetorno, Math, uAvisos, RelatoriosPedidoForm;


procedure TFrmPedidoNovo.AdicionaItem;
var lMResult: tModalResult;
begin
   PageControl1.ActivePageIndex := 0;
   PageControl2.ActivePageIndex := 0;

   SqlCdsPedidoItem.DisableControls;
   try

      if (BtnGravar.Enabled) then
         BtnGravarClick(Self);

      if (SqlCdsPedido.IsEmpty) then
         uteis.aviso('Adicione um pedido antes de colocar os itens')
      else
      if (SqlCdsPedidoPED_SITUACAO.AsString = 'C') then
         uteis.aviso('Não pode mais adicionar item no pedido. Já foi cancelado')
      else
      if (EdSituacao.Text = ' FATURADO TOTAL') then
         uteis.aviso('Não pode mais adicionar item no pedido. Já foi faturado totalmente')
      else
      if (GravaPedido) then
      begin
            FrmPedidoItem := TFrmPedidoItem.Create(Application);
            try
               FrmPedidoItem.sTipo := 'I';
               FrmPedidoItem.CurDesconto.Value := CurDescontoNotaFiscal.Value;
               FrmPedidoItem.ShowModal;
               lMResult:=frmPedidoItem.ModalResult;
            finally
               FreeAndNil(FrmPedidoItem);
            end;
            CalcutaTotalItens;
            GravaPedido;
            //DbGradeItemPedido.SetFocus;
            SqlCdsPedidoItem.Last;
      end;
   finally
          SqlCdsPedidoItem.EnableControls;
   end;
end;

procedure TFrmPedidoNovo.BuscaCliente(sCodigo: String);
begin

     //edCliente.idRetorno:=sCodigo ;
     sCodCliente := sCodigo;

     bMostraMsgAtraso := False;

     CdsClienteContato.Close;
     CdsClienteContato.CommandText := 'select * from CLI_CONTATO T1 where CLI_CODIGO = '+qStr(sCodigo)+' ORDER BY T1.cc_nome';
     CdsClienteContato.Open;

     sCfopClienteCodigo := edCliente.ClientDS.FieldByName('OPE_CODIGO').AsString;

     EdCnpj.Text := MascaraCNPJ_CPF(edCliente.ClientDS.FieldByName('CLI_CGC').AsString);
     if (Length(EdCnpj.Text) = 14) then  //Pessoa Juridica
     begin
          LblCnpj.Caption := 'CNPJ:';
          LblIE.Caption := 'IE:';
     end
     else
     begin
          LblCnpj.Caption := 'CPF:';
          LblIE.Caption := 'RG:';
     end;

     EdIE.Text := edCliente.ClientDS.FieldByName('CLI_INSC').AsString;
     EdClienteCidade.Text := edCliente.ClientDS.FieldByName('CID_CIDADE').AsString;
     EdClienteUF.Text := edCliente.ClientDS.FieldByName('CID_ESTADO').AsString;
     EdClienteConsumidorFinal.Text := iif(edCliente.ClientDS.FieldByName('CLI_CONSFINAL').AsString = 'S','SIM','NÃO');
     EdPrazo.idRetorno := edCliente.ClientDS.FieldByName('PCL_NOME').AsString;
     EdClienteTelefone.Text := MascaraFone(edCliente.ClientDS.FieldByName('CLI_FONE').AsString);
     EdVendedor.IdRetorno := edCliente.ClientDS.FieldByName('REP_CODIGO').AsString;
     EdTransportadora.idRetorno := edCliente.ClientDS.FieldByName('TRP_CODIGO').AsString;
     CbCfop.EditValue := sCfopClienteCodigo;
     edCCusto.idRetorno := edCliente.ClientDS.FieldByName('PCX_CODIGO').AsString;

     pnlAtraso.Visible := False;

         if (bMostraMsgAtraso) then
         begin
              bMostraMsgAtraso := False;
              FormAvios := TFormAvios.Create(Application);
              try
                 if (dbInicio.Empresa.bMsgTelaVendasFaturaAtraso) then
                    if (SqlCdsTipoPedidoOPV_ORCAMENTO.AsString <> 'S') then
                       if (ClientePossuiFaturasAtrasadas(sCodigo)) then
                          FormAvios.Adicionaaviso('O Cliente possui faturas em atraso!');

                 DataCadastros.sqlUpdate2.Close;
                 DataCadastros.sqlUpdate2.sql.text := 'SELECT T1.clim_mensagem FROM cli_mensagens T1 WHERE T1.clim_ativo = ''S'' AND T1.clim_venda = ''S'' AND T1.cli_codigo = '+QuotedStr(EdClienteCodigo.Text);
                 DataCadastros.sqlUpdate2.Open;
                 while (not DataCadastros.sqlUpdate2.Eof) do
                 begin
                      FormAvios.Adicionaaviso(DataCadastros.sqlUpdate2.FieldByName('clim_mensagem').AsString);
                      DataCadastros.sqlUpdate2.Next;
                 end;
                 DataCadastros.sqlUpdate2.Close;
                 if (FormAvios.possuiAvisos) then
                    FormAvios.ShowModal;
              finally
                     FreeAndNil(FormAvios);
              end;
              bMostraMsgAtraso := False;
         end;

         if (EdClienteUF.Text = '') and (cbbClienteEstado.Text <> '') and (GBInformacoesOrcamento.Visible) then
            EdClienteUF.Text := cbbClienteEstado.Text;

         SetCfopOpvTipo( SqlCdsTipoPedidoOpv_TIPO.Asstring ) ;


end;

procedure TFrmPedidoNovo.LimparCampos;
begin

   HabilitaDesabilitaEdicao(false);

   edClienteCodigo.Clear;
   edCliente.Clear;
   edPrazoCodigo.Clear;
   edPrazo.Clear;
   edVendedorCodigo.Clear;
   edVendedor.Clear;
   edTransportadoraCodigo.Clear;
   edTransportadora.Clear;
   edFPagto.Clear;
   edCCustoCodigo.Clear;
   edCCusto.Clear;

   EdPedidoNumero.Clear;
   EdPedidoTipo.Clear;

   DteEntrada.Clear;
   DteEntrega.Clear;
   edPrazo.Clear;
   CurFrete.Clear;
   CurDespesasAcessorias.Clear;
   CurSeguro.Clear;
   CurDespesasImportacao.Clear;
   EdVendedor.Clear;
   CurComissaoVendedor.Clear;
   CurComissaoGerente.Clear;
   CurComissaoSupervisor.Clear;
   CbDescontoNF.Checked := False;
   EdTransportadora.Clear;
   CbCfop.EditValue := null;
   CbTipoFrete.ItemIndex := 1;
   EdCCusto.Clear;
   CurDescontoNotaFiscal.Clear;
   CurDescontoNotaFiscalAdicional.Clear;
   CurDescontoNotaFiscalValor.Clear;
   EdNumeroPedidoCliente.Clear;
   EdContatoCliente.Clear;
   EdSituacao.Text := '';
   edFPagto.clear;
   EdSituacao.color := clBtnFace;
   EdSituacao.Font.color := clblack;

   CurValorFaturado.Clear;
   MemoObservacaoPedido.Clear;
   MemoMensagemAdicionalNotaFiscal.Clear;
   TabNotasFiscaisCliente.Visible := False;
   GBInformacoesCliente.Visible := True;
   GBInformacoesOrcamento.Visible := False;
   EdOrsDiaEntrega.Clear;
   EdOrsDiaValidade.Clear;
   EdOrsCliente.Clear;
   EdOrsEmail.Clear;
   EdOrsFone.Clear;
   EdOrsFax.Clear;

   edtExportacaoUF.Clear;
   edtExportacaoDescricaoLocalEmbarque.Clear;
   edtExportacaoDescricaoRecinto.Clear;

   cbbClienteEstado.Text := dbInicio.Empresa.UF;

   SqlCdsPedidoItem.Close;
   CalcutaTotalItens;

end;

procedure TFrmPedidoNovo.BuscaPedido(sPedidoCodigo:String);
var sQuery:String;
begin
   //Realiza Pesquisa
   sQuery := 'select '+
             't1.cli_codigo,'+
             't6.cli_razao,'+
             't1.ped_registro, '+
             't1.ped_codigo, '+
             't1.PCX_CODIGO,'+
             't1.opv_codigo, '+
             't2.opv_descricao, '+
             'T1.OPE_CODIGO,'+
             't2.opv_atestoque, '+
             't1.ped_dtentrada, '+
             't1.ped_dtsaida, '+
             't1.pcl_codigo, '+
             't1.PED_CODIGO_ORCAMENTO,'+
             't3.pcl_nome, '+
             't1.ped_vlfrete, '+
             't1.ped_desp_aces, '+
             't1.ped_vlseguro, '+
             't1.ped_desp_impor, '+
             't1.rep_codigo, '+
             't4.rep_nome, '+
             't1.ped_comis1, '+
             't1.ped_comis2, '+
             't1.ped_comis3, '+

             't1.PED_EXP_UF,'+
             't1.PED_EXP_LOCAL_EXP,'+
             't1.PED_EXP_LOCAL_RECINTO,'+

             't1.trp_codigo, '+
             't5.trp_razao, '+
             't1.ped_frete, '+
             't1.ped_desctonf, '+
             't1.ped_desctopc1, '+
             't1.ped_desctopc2, '+
             't1.ped_desctovl, '+
             't1.ped_numero_ped_cliente, '+
             't1.ped_contato_cliente, '+
             't1.ped_situacao, '+
             't1.ped_vlfaturado, '+
             't1.PED_ORS_CLIENTE, '+
             't1.PED_ORS_DIAS_ENTREGA, '+
             't1.PED_ORS_DIAS_VALIDADE, '+
             't1.PED_ORS_FONE, '+
             't1.PED_ORS_FAX, '+
             't1.PED_ORS_EMAIL, '+
             'T1.PED_ORS_ESTADO,'+
             't1.ped_observacao, '+
             't1.ped_observacao_nota,'+
             't6.PCX_CODIGO as CENTRO_CUSTO_CLIENTE,'+
             't7.PMT_MOTIVO, '+
             't1.PED_MOTIVO_CANCELAMENTO , t1.FPG_REGISTRO '+
             'from ped0000 t1 '+
             'left join opv0000 t2 on (t2.opv_codigo = t1.opv_codigo) '+
             'left join pcl0000 t3 on (t3.pcl_codigo = t1.pcl_codigo) '+
             'left join rep0000 t4 on (t4.rep_codigo = t1.rep_codigo) '+
             'left join cli0000 t6 on (t6.cli_codigo = t1.cli_codigo) '+
             'left join PED_MOTIVO t7 on (t7.PMT_REGISTRO = t1.PMT_REGISTRO) '+  
             'left join trp0000 t5 on (t5.trp_codigo = t1.trp_codigo)';
   SqlCdsPedido.Close;
   SqlCdsPedido.CommandText := SQLDEF('PEDIDOS',sQuery,'where t1.PED_CODIGO = '+QuotedStr(sPedidoCodigo),'','t1.');
   SqlCdsPedido.Open;

   if (not SqlCdsPedido.IsEmpty) then
   begin

         vIdPedido := DBInicio.BuscaUmDadoSqlAsInteger('SELECT ID_PEDIDO FROM PED0000 WHERE PED_CODIGO='+qStr(sPedidoCodigo)+' and emp_codigo='+qStr(DBInicio.Empresa.EMP_CODIGO)); 
         //Habilita
         HabilitaDesabilitaEdicao(true);
         //Busca Tipo Pedido
         BuscaTipoPedido(SqlCdsPedidoOPV_CODIGO.AsInteger);
         iCodigoTipoPedido := SqlCdsPedidoOPV_CODIGO.AsInteger;
         EdPedidoNumero.Text := SqlCdsPedidoPED_CODIGO.AsString;
         DteEntrada.Date := SqlCdsPedidoPED_DTENTRADA.AsDateTime;
         DteEntrega.Date := SqlCdsPedidoPED_DTSAIDA.AsDateTime;
         //Prazo
         EdPrazo.idRetorno := SqlCdsPedidoPCL_CODIGO.AsString;
         CurFrete.Value := SqlCdsPedidoPED_VLFRETE.AsFloat;
         CurDespesasAcessorias.Value := SqlCdsPedidoPED_DESP_ACES.AsFloat;
         CurSeguro.Value := SqlCdsPedidoPED_VLSEGURO.AsFloat;
         CurDespesasImportacao.Value := SqlCdsPedidoPED_DESP_IMPOR.AsFloat;
         //Vendedor
         EdVendedor.idRetorno := SqlCdsPedidoREP_CODIGO.AsString;
         CurComissaoVendedor.Value := SqlCdsPedidoPED_COMIS1.AsFloat;
         CurComissaoGerente.Value := SqlCdsPedidoPED_COMIS2.AsFloat;
         CurComissaoSupervisor.Value := SqlCdsPedidoPED_COMIS3.AsFloat;
         CbDescontoNF.Checked := SqlCdsPedidoPED_DESCTONF.AsString = 'S';
         HabilitaDesabilitaDescontoNota(CbDescontoNF.Checked);
         //Transportadora
         EdTransportadora.idRetorno := SqlCdsPedidoTRP_CODIGO.AsString;
         //CFOP
         CbCfop.EditValue := PreenchezeroEsquerda(SqlCdsPedidoOPE_CODIGO.AsString,3);
         sCfopClienteCodigo := PreenchezeroEsquerda(SqlCdsPedidoOPE_CODIGO.AsString,3);
         CbTipoFrete.ItemIndex := iif(SqlCdsPedidoPED_FRETE.AsString = '0',0,
                                  iif(SqlCdsPedidoPED_FRETE.AsString = '1',1,
                                  iif(SqlCdsPedidoPED_FRETE.AsString = '2',2,
                                  3)));
         //Projeto Obra
         edCCusto.idRetorno := SqlCdsPedidoPCX_CODIGO.AsString;
         if (edCCusto.idRetorno = '') then
            edCCusto.idRetorno := SqlCdsPedidoCENTRO_CUSTO_CLIENTE.AsString;

         CurDescontoNotaFiscal.Value := SqlCdsPedidoPED_DESCTOPC1.AsFloat;
         CurDescontoNotaFiscalAdicional.Value := SqlCdsPedidoPED_DESCTOPC2.AsFloat;
         CurDescontoNotaFiscalValor.Value := SqlCdsPedidoPED_DESCTOVL.AsFloat;
         EdNumeroPedidoCliente.Text := SqlCdsPedidoPED_NUMERO_PED_CLIENTE.AsString;
         EdContatoCliente.Text := SqlCdsPedidoPED_CONTATO_CLIENTE.AsString;
         //EdPedidoNumeroOrcamento.Text := SqlCdsPedidoPED_CODIGO_ORCAMENTO.AsString;
         edFPagto.idRetorno:=SqlCdsPedidoFPG_REGISTRO.AsString;
         //Informações do Orçamento
         EdOrsCliente.Text := SqlCdsPedidoPED_ORS_CLIENTE.AsString;
         EdOrsEmail.Text := SqlCdsPedidoPED_ORS_EMAIL.AsString;
         EdOrsFone.Text := SqlCdsPedidoPED_ORS_FONE.AsString;
         EdOrsFax.Text := SqlCdsPedidoPED_ORS_FAX.AsString;
         cbbClienteEstado.Text := SqlCdsPedidoPED_ORS_ESTADO.AsString;
         EdOrsDiaEntrega.Text := SqlCdsPedidoPED_ORS_DIAS_ENTREGA.AsString;
         EdOrsDiaValidade.Text := SqlCdsPedidoPED_ORS_DIAS_VALIDADE.AsString;
         cbbClienteEstado.Text := SqlCdsPedidoPED_ORS_ESTADO.AsString;

         edtExportacaoUF.Text := SqlCdsPedidoPED_EXP_UF.AsString;
         edtExportacaoDescricaoLocalEmbarque.Text := SqlCdsPedidoPED_EXP_LOCAL_EXP.AsString;
         edtExportacaoDescricaoRecinto.Text := SqlCdsPedidoPED_EXP_LOCAL_RECINTO.AsString;

         if (SqlCdsTipoPedidoOPV_ORCAMENTO.AsString = 'S') and (SqlCdsPedidoPED_ORS_CLIENTE.AsString <> '') then
         begin
               GBInformacoesCliente.Visible := False;
               edCliente.ShowButton := False;
               GBInformacoesOrcamento.Visible := True;
         end;
         if SqlCdsPedidoPED_SITUACAO.AsString = 'C' then
            begin
                EdSituacao.Text := ' CANCELADO-'+SqlCdsPedidoPMT_MOTIVO.AsString;
                EdSituacao.Color := clRed;
                EdSituacao.Font.color := clWhite;
            end
         else
         if SqlCdsPedidoPED_SITUACAO.AsString = 'P' then
         begin
                EdSituacao.Text := ' FATURADO PARCIAL';
                EdSituacao.Color := clGreen;
                EdSituacao.Font.color := clBlack;
         end
         else
         if SqlCdsPedidoPED_SITUACAO.AsString = 'F' then
            begin
                EdSituacao.Text := ' À FATURAR';
                EdSituacao.color := clBtnFace;
                EdSituacao.Font.color := clblack;
            end
         else
         if SqlCdsPedidoPED_SITUACAO.AsString = 'T' then
            begin
                EdSituacao.Text := ' FATURADO TOTAL';
                EdSituacao.color := clBlue;
                EdSituacao.Font.color := clWhite;
                HabilitaDesabilitaEdicao(False);
            end;
         CurValorFaturado.Value := SqlCdsPedidoPED_VLFATURADO.AsFloat;
         MemoObservacaoPedido.Text := SqlCdsPedidoPED_OBSERVACAO.AsString;
         MemoMensagemAdicionalNotaFiscal.Text := SqlCdsPedidoPED_OBSERVACAO_NOTA.AsString;

         if (EdClienteUF.Text = '')and(cbbClienteEstado.Text <> '') then
            begin
               EdClienteUF.Text := cbbClienteEstado.Text;
            end;

         CdsCFOP.Close;
         CdsCFOP.CommandText := SQLDEF('TABELAS','Select OPE_CODIGO, OPE_NATUREZA||''-''||OPE_DESCRI as OPE_DESCRI FROM OPE0000','WHERE OPE_TIPO_OPERACAO <> ''C'' AND ((OPE_DENTRO = '+QuotedStr(iif(EdClienteUF.Text = dbInicio.Empresa.UF,'D','F'))+')OR(OPE_DENTRO = ''I''))','OPE_NATUREZA','');
         CdsCFOP.Open;

         BuscaPedidoItem( sPedidoCodigo );

   end
   else
       HabilitaDesabilitaEdicao(False);
end;

procedure TFrmPedidoNovo.BuscaPedidoItem(sPedidoCodigo: String);
var
   sQuery, sEmpresa:String;
   QryReg:TSQLQuery;
begin
   SqlCdsPedidoItem.Close;
   if (sPedidoCodigo <> '') then
   begin
         sEmpresa := '';
         QryReg := TSQLQuery.Create(Nil);
         QryReg.SQLConnection := DataCadastros.SQLConnection1;
         QryReg.SQL.Clear;
         QryReg.SQL.Add('Select PRODUTOS from SHAREDB');
         QryReg.Open;
         if (QryReg.FieldByName('PRODUTOS').AsString = 'E') then
            begin
               sEmpresa := ' and t2.emp_codigo = t1.emp_codigo ';
            end;
         QryReg.Close;
         FreeAndNil(QryReg);
         sQuery := 'select '+
                   't2.PRD_CODIGO,t1.ITT_REGISTRO,t1.PRF_TABPRECO,'+
                   't1.PRDL_REGISTRO,'+
                   't1.AMX_CODIGO_DESTINO,'+
                   't1.ped_codigo, '+
                   't1.prf_registro, '+
                   't1.prd_refer, '+
                   't4.prdd_sigla, '+
                   'coalesce(t1.PRF_PRDDESCRI,'''')||'' '+IIF(FrmMenu.wPmt_Utiliza_Complemento_Pedido = 'S','''||coalesce(t1.prf_compl_descri,'''')||''','')+' ''||coalesce(case when (T4.prdd_sigla <> '''') THEN ''[''||T4.prdd_sigla||'']'' END,'''') AS DESCRICAO, '+
                   't1.prf_qtde, '+
                   't2.prd_codigo,' +
                   't2.prd_descri, '+
                   't1.PRDD_REGISTRO,' +
                   't1.PRDCO_CODIGO_ORIGINAL,'+
                   't2.PRD_UND,'+
                   't1.prf_produto_agregado, '+
                   't1.prg_registro, '+
                   't1.prf_compl_descri, '+
                   't1.amx_codigo_destino, '+
                   't1.prf_idescto1, '+
                   't1.prf_idescto2, '+
                   't1.PRF_VALOR_ST, '+
                   't1.prf_qtdefat, '+
                   't1.prf_acrescimo, '+
                   't1.prf_preco_bruto, '+
                   'case '+
                   '    when (t1.prf_preco_bruto > t1.prf_preco) then '+
                   '        (t1.prf_preco_bruto - t1.prf_preco)  '+
                   '    else '+
                   '        0.00 '+
                   'end as desconto,'+
                   't1.prf_preco, '+
                   't1.prf_custo, '+
                   'case '+
                   '    when (0 > 0) then '+
                   '        0.00 '+
                   '    else '+
                   '        0.00 '+
                   'end as markup, '+
                   'Cast(cast(t1.prf_qtde as numeric(15,3)) * cast(t1.prf_preco as numeric(15,5))as numeric(18,2)) as total,'+
                   't1.prf_ipialiq, '+
                   't1.prf_itemcomis, '+
                   't1.PRF_B2B_PEDIDO_COMPRA,'+
                   't1.PRF_B2B_ITEM_PEDIDO_COMPRA,'+
                   'case '+
                   '    when ((select count(t6.pid_registro) from ped_it01_di t6 where t6.prf_registro = t1.prf_registro) > 0) then '+
                   '        ''S'' '+
                   '    else '+
                   '        ''N'' '+
                   'end as di, '+
                   't2.prd_pesoliq, '+
                   't2.prd_pesokg,'+
                   'T2.PRD_ORIGEM,'+
                   't1.prf_qtde_env_producao,'+
                   't3.PRG_DESCRICAO,'+
                   'COALESCE(t2.PRD_PRODSERV,''P'') as  PRD_PRODSERV, ID_DIRETIVAS '+
                   'from '+
                   'ped_it01 t1 '+
                   'join prd0000 t2 on t2.prd_refer = IIF(Coalesce(t1.prd_refer,'+qStr('')+')='+qStr('')+',T1.prdco_codigo_original,T1.prd_refer) '+sEmpresa+' '+
                   'left join prd_grade t3 on (t3.prg_registro = t1.prg_registro) '+
                   'left join prd_diretiva t4 on (t4.prdd_registro = t1.prdd_registro) ';
         SqlCdsPedidoItem.CommandText := SQLDEF('PEDIDOS',sQuery,'where t1.ped_codigo = '+QuotedStr(sPedidoCodigo),'PRF_REGISTRO','t1.');
         SqlCdsPedidoItem.Open;
         SqlCdsPedidoItem.First;
         sUltimoAlmoxDigitado := SqlCdsPedidoItemAMX_CODIGO_DESTINO.AsString;
   end;
   CalcutaTotalItens;
end;

procedure TFrmPedidoNovo.CalculaIndiceDescto;
begin

   CurDescontoIndice.Value:= CurDescontoNotaFiscal.Value ;

   if CurDescontoNotaFiscalAdicional.Value > 0 then
      CurDescontoIndice.Value:= CurDescontoNotaFiscal.Value + ( CurDescontoNotaFiscalAdicional.Value * (1-(CurDescontoNotaFiscal.Value/100)) );

   if (CurDescontoIndice.Value > 0) then
      CurDescontoNotaFiscalValor.Value := CurTotalProduto.Value * CurDescontoIndice.Value/100;

end;


procedure TFrmPedidoNovo.CalcutaTotalItens;
var
   rDescontoItem,
   rTotalCusto:Currency;
   vMultDesc,rTotalProduto:Real;

begin
   CalculaIndiceDescto;
   rQuantidadeItens := 0;
   rTotalCusto := 0;
   rDescontoItem :=0;
   rQuantidadeItensFaturado := 0;
   CurTotalItens.Clear;
   CurTotalPesoLiquido.Clear;
   CurTotalDesconto.Clear;
   CurTotalIPI.Clear;
   CurTotalProduto.Clear;
   CurTotalPedido.Clear;
   CurTotalST.Clear;
   rTotalPedidoComDesconto := 0;
   rTotalComisPrecoLiquido := 0;
   rTotalProdutosBruto := 0;
   edtPercentStProduto.Value := 0;
   SqlCdsPedidoItem.DisableControls;

   rTotalProduto := 0;
   if SqlCdsPedidoItem.active then
   begin
      SqlCdsPedidoItem.First;
      while (not SqlCdsPedidoItem.Eof) do // obtem valor total de produtos
      begin
           rTotalProduto := rTotalProduto + SqlCdsPedidoItemTOTAL.AsFloat;
           SqlCdsPedidoItem.Next;
      end;
      SqlCdsPedidoItem.First;
   end;

   if (CurDescontoIndice.Value > 0) then
   begin
         CurTotalDesconto.Value := rTotalProduto * (CurDescontoIndice.Value/100);
         if (CbDescontoNF.Checked)and((CurDescontoNotaFiscal.Value > 0) or (CurDescontoNotaFiscalAdicional.Value > 0)) then
            CurDescontoNotaFiscalValor.Value := CurTotalProduto.Value * (CurDescontoIndice.Value/100);
         vMultDesc:=1-(CurDescontoIndice.Value/100);
   end
   else
   if (CurDescontoNotaFiscalValor.Value > 0) then
   begin
      CurTotalDesconto.Value := CurDescontoNotaFiscalValor.Value;
      vMultDesc:=1-(CurTotalDesconto.Value/rTotalProduto);
   end
   else
   begin
      CurTotalDesconto.Value := 0;
      vMultDesc:=1;
   end;

   if (not SqlCdsPedidoItem.IsEmpty) then
      begin
         CurTotalItens.Value := SqlCdsPedidoItem.RecordCount;
         SqlCdsPedidoItem.First;
         rTotalProduto:=0;
         while (not SqlCdsPedidoItem.Eof) do
         begin
               rTotalCusto := rTotalCusto + (SqlCdsPedidoItemPRF_QTDE.AsCurrency * SqlCdsPedidoItemPRF_CUSTO.AsFloat);
               rTotalProdutosBruto := rTotalProdutosBruto + (SqlCdsPedidoItemPRF_QTDE.AsCurrency * SqlCdsPedidoItemPRF_PRECO_BRUTO.AsCurrency);
               rQuantidadeItens := rQuantidadeItens + SqlCdsPedidoItemPRF_QTDE.AsFloat;
               rQuantidadeItensFaturado := rQuantidadeItensFaturado + SqlCdsPedidoItemPRF_QTDEFAT.AsFloat;
               // rTotalPedidoComDesconto = valor total do pedido já com os descontos
               rTotalPedidoComDesconto := rTotalPedidoComDesconto + (SqlCdsPedidoItemPRF_QTDE.AsFloat * SqlCdsPedidoItemPRF_PRECO.AsFloat);
               // soma o valor de todos os desconto de cada item para calculo correto de comissao
               if (SqlCdsPedidoItemPRF_ITEMCOMIS.AsFloat > 0) then
                  rTotalComisPrecoLiquido := rTotalComisPrecoLiquido + ((SqlCdsPedidoItemPRF_QTDE.AsFloat * SqlCdsPedidoItemPRF_PRECO.AsFloat) * (SqlCdsPedidoItemPRF_ITEMCOMIS.AsFloat/100));

               //rDescontoItem := SqlCdsPedidoItemTOTAL.AsFloat * (CurDescontoIndice.Value/100);

               CurTotalPesoLiquido.Value := CurTotalPesoLiquido.Value + (SqlCdsPedidoItemPRD_PESOLIQ.AsFloat * SqlCdsPedidoItemPRF_QTDE.AsFloat);

               if (SqlCdsPedidoItemPRF_IPIALIQ.AsFloat > 0) then
                  CurTotalIPI.Value := CurTotalIPI.Value + ( (SqlCdsPedidoItemTOTAL.AsFloat) * (SqlCdsPedidoItemPRF_IPIALIQ.AsFloat/100));

               rTotalProduto := rTotalProduto + SqlCdsPedidoItemTOTAL.AsFloat;
               //CurTotalDesconto.Value := CurTotalDesconto.Value + SqlCdsPedidoItemDESCONTO.AsFloat * SqlCdsPedidoItemPRF_QTDE.AsFloat;
               CurTotalST.Value := CurTotalST.Value + SqlCdsPedidoItemPRF_VALOR_ST.AsFloat;
               SqlCdsPedidoItem.Next;
         end;
         SqlCdsPedidoItem.first;
         CurTotalProduto.Value := rTotalProduto;
      end;

   CurTotalPedido.Value := (CurTotalProduto.Value + CurTotalIPI.Value + CurFrete.Value + CurDespesasAcessorias.Value +CurSeguro.Value+CurTotalST.Value);

   //Markup
   if (FrmMenu.wACESSOS_USUARIO.bVisualizaMarkupPedido) then
      begin
         if (CurTotalProduto.Value > 0)and(rTotalCusto > 0) then
            CurMarkup.Value := ((CurTotalProduto.Value / rTotalCusto) - 1) * 100
      end
   else
      begin
         CurMarkup.Font.Color := CurMarkup.Color;
         CurMarkup.Clear;
      end;

   CurTotalPedido.Value := CurTotalPedido.Value - CurTotalDesconto.Value;
   try
     edtPercentStProduto.Value := (CurTotalST.Value * 100) / CurTotalProduto.Value;
   except
     edtPercentStProduto.Value := 0;
   end;

   SqlCdsPedidoItem.EnableControls;

end;
procedure TFrmPedidoNovo.FormKeyDown(Sender: tObject; var Key: Word;
  Shift: TShiftState);
begin
     if (Key = VK_F2) then
     begin
          Key := 0;
          AdicionaItem;
     end
     else
     if (Key = VK_F3) then
     begin
          Key := 0;
          Reajuste;
     end
     else
     if (Key = VK_F9) then
     begin
          Key := 0;
          try
             FrmPedidoConsultaProducao := TFrmPedidoConsultaProducao.Create(Application);
             FrmPedidoConsultaProducao.ShowModal;
          finally
                FrmPedidoConsultaProducao.Destroy;
                FrmPedidoConsultaProducao := Nil;
          end;
     end
     else
     if (Key = VK_F8) then
     begin
          Key := 0;
          EnviarPedidoProducao;
     end
     else
     if (Key = VK_F6) then
     begin
         Key := 0;
         RetornoIndustrializacao;
         wRetornoInd := True;
     end
     else
     if (Key = VK_F5) then
     begin
          Key := 0;
          if (dbInicio.Empresa.bVisualizaAnaliseCreditoCliente) then
          begin
               try
                  FrmFinanceiroAnaliseCreditoCliente := TFrmFinanceiroAnaliseCreditoCliente.Create(Application);
                  FrmFinanceiroAnaliseCreditoCliente.sCliente := EdClienteCodigo.Text;
                  FrmFinanceiroAnaliseCreditoCliente.ShowModal;
               finally
                  FrmFinanceiroAnaliseCreditoCliente.Destroy;
                  FrmFinanceiroAnaliseCreditoCliente := nil;
               end;
          end
          else
              uteis.erro  ('Sem permissão para visualizar a análise de Crédito');
     end;
end;
procedure TFrmPedidoNovo.HabilitaDesabilitaEdicao(bStatus: Boolean);
begin
   PageControl1.ActivePageIndex := 0;
   PageControl2.ActivePageIndex := 0;
   bEdicao := bStatus;
   //Groups Box
   GBInformacoesCliente.Enabled := bStatus;
   GBInformacoesPedido.Enabled := bStatus;
   GbObservacao.Enabled := bStatus;
   GbMensagemAdicionalNotaFiscal.Enabled := bStatus;
   //Botoes
   BtnConsultar.Enabled := not bStatus;
   if (bStatus) then
      BtnRelatorios.Enabled := dbInicio.Empresa.AcessoRelatorios_P  = 'S';
   BtnNovo.Enabled := not bStatus;
   BtnAlterar.Enabled := False;
   BtnExcluir.Enabled := False;
   BtnEmail.Enabled := False;
   BtnImprimir.Enabled := False;
   BtnDuplicar.Enabled := False;
   if (not SqlCdsPedido.IsEmpty) then
   begin
         BtnEmail.Enabled := not bStatus;
         BtnImprimir.Enabled := not bStatus;
         BtnDuplicar.Enabled := not bStatus;
         BtnAlterar.Enabled := not bStatus;
         if (SqlCdsPedidoPED_SITUACAO.AsString <> 'T') and (SqlCdsPedidoPED_SITUACAO.AsString <> 'C') then //à Faturar
         begin
               if (dbInicio.Empresa.ExclusaodePedido_P = 'S') then //Permissão do usuario
                  BtnExcluir.Enabled := not bStatus;
         end
         else
               GBInformacoesCliente.Enabled := False;
   end;
   BtnGravar.Enabled := bStatus;
   Bit_Sair.Visible := not bStatus;
   BtnCancelar.Enabled := bStatus;

  {
   //Focus
   if (bStatus) then
      begin
         if (GBInformacoesOrcamento.Visible) then
            begin
               EdOrsCliente.SetFocus;
            end
         else
         if (GBInformacoesCliente.Enabled) then
            begin
               EdClienteCodigo.SetFocus;
            end
         else
            begin
               if (EdPedidoNumero.Enabled) then
                  begin
                     EdPedidoNumero.SetFocus;
                     EdPedidoNumero.SelectAll;
                  end
               else
                  begin
                     DbGradeItemPedido.SetFocus;
                  end;
            end;
      end;       }
end;
procedure TFrmPedidoNovo.VerificaSePodeEditar;
begin
end;
procedure TFrmPedidoNovo.CurDescontoNotaFiscalExit(Sender: tObject);
begin
   CalculaIndiceDescto;
end;
procedure TFrmPedidoNovo.CurDescontoNotaFiscalAdicionalExit(Sender: tObject);
begin
   CalculaIndiceDescto;
end;


procedure TFrmPedidoNovo.FormShow(Sender: tObject);
begin

     bMostraMsgAtraso := True;
     wRetornoInd := False;

     SetCfopOpvTipo( '' ) ; // abre tabela cfop

     //Markup
     if (not FrmMenu.wACESSOS_USUARIO.bVisualizaMarkupPedido) then
     begin
         CurMarkup.Font.Color := CurMarkup.Color;
         CurMarkup.Clear;
     end;
     HabilitaDesabilitaEdicao(False);
     //
     DbGradeItemPedido.Columns[3].Visible := FrmMenu.bUtilizaCodigoOriginalVendaNF;
     PainelClienteSemCadastro.Visible := FrmMenu.wPrm_Orcamento_Cliente_Sem_Cadastro;
     BtnRelatorios.Enabled := dbInicio.Empresa.AcessoRelatorios_P  = 'S';
     AlterarComisso1.Enabled := dbInicio.Empresa.AlteraComissaoItem = 'S';

end;

procedure TFrmPedidoNovo.BtnConsultarClick(Sender: tObject);
begin
     if (LiberaSairPedido) then
     begin
          sPedidoBusca := '';
          PageControl1.TabIndex := 0;
          PageControl2.TabIndex := 0;
          bMostraMsgAtraso := True;
          FormPedidoGrid := TFormPedidoGrid.Create(Application);
          try
             FormPedidoGrid.ShowModal;
             if (sPedidoBusca <> '') then
                BuscaPedido(sPedidoBusca);

          finally
                 FreeAndNil(FormPedidoGrid);
          end;
          HabilitaDesabilitaEdicao(False);
     end;
end;

procedure TFrmPedidoNovo.CurFreteExit(Sender: tObject);
begin
   CalcutaTotalItens;
end;

procedure TFrmPedidoNovo.DbGradeItemPedidoDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
   Check: Integer;
   R: TRect;
begin
    if (not odd(SqlCdsPedidoItem.RecNo)) then
       if not (GdSelected in State) then
          begin
              DbGradeItemPedido.Canvas.Brush.Color := $00FFEFDF;
              DbGradeItemPedido.Canvas.Font.Color := clBlack;
              DbGradeItemPedido.Canvas.FillRect(rect);
              DbGradeItemPedido.DefaultDrawDataCell(Rect,column.Field,state);
          end;
       if (SqlCdsPedidoItemPRF_PRODUTO_AGREGADO.AsString = 'S') then
          begin
              DbGradeItemPedido.Canvas.Font.Color := clGreen;
              DbGradeItemPedido.Canvas.FillRect(rect);
              DbGradeItemPedido.DefaultDrawDataCell(Rect,column.Field,state);
          end;
   //Desenha um checkbox no dbgrid
   if Column.FieldName = 'DI' then
      begin
         DbGradeItemPedido.Canvas.FillRect(Rect);
         Check := 0;
         if SqlCdsPedidoItemDI.AsString = 'S' then
            Check := DFCS_CHECKED
         else
            Check := 0;
         R:=Rect;
         InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
         DrawFrameControl(DbGradeItemPedido.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
      end;
   if Column.FieldName = 'PRF_B2B_PEDIDO_COMPRA' then
      begin
         DbGradeItemPedido.Canvas.FillRect(Rect);
         Check := 0;
         if SqlCdsPedidoItemPRF_B2B_PEDIDO_COMPRA.AsString <> '' then
            Check := DFCS_CHECKED
         else
            Check := 0;
         R:=Rect;
         InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
         DrawFrameControl(DbGradeItemPedido.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
      end;
end;

procedure TFrmPedidoNovo.AlterarItem;
var lItb: tBookMark;
begin
   //Verifica se o Pedido já nao foi faturado totalmente
   if (SqlCdsPedidoItem.IsEmpty) then
      begin
         uteis.aviso('Não existe Item para ser alterado');
      end
   else
   if (SqlCdsPedidoPED_SITUACAO.AsString = 'C') then
      begin
         uteis.aviso('O Pedido não pode ser editado pois está cancelado');
      end
   else
   if (SqlCdsPedidoPED_SITUACAO.AsString = 'T') then
      begin
         uteis.aviso('O Pedido não pode ser editado pois já foi faturado totalmente');
      end
   else
   begin
        try

           lItb:= SqlCdsPedidoItem.GetBookmark;
           SqlCdsPedidoItem.DisableControls;

           FrmPedidoItem := TFrmPedidoItem.Create(Application);
           try
              FrmPedidoItem.sTipo := 'A';
              FrmPedidoItem.ShowModal;
           finally
              FreeAndNil( FrmPedidoItem );
           end;
           CalcutaTotalItens;
           GravaPedido;

        finally
               if lItb<>nil then
                  if SqlCdsPedidoItem.BookmarkValid(lItb) then
                     SqlCdsPedidoItem.GotoBookmark(lItb);
               SqlCdsPedidoItem.EnableControls;
        End;
   end;
end;
procedure TFrmPedidoNovo.ExcluirItem;
begin
   if (not SqlCdsPedidoItem.IsEmpty) then
      begin
         //Verifica se não foi fatutrado
         if (SqlCdsPedidoItemPRF_QTDEFAT.AsFloat > 0) then
            begin
               uteis.aviso('O Item não pode ser excluído pois já foi realizado o faturamento');
            end
         else
         //Verifica se não foi enviado Producao
         //if (SqlCdsPedidoItemPRF_QTDE_ENV_PRODUCAO.AsFloat > 0) then
         //   begin
         //      uteis.aviso('O Item não pode ser excluído pois foi enviado para a Produção');
         //   end
         //else
            begin
               DeletarItem;
            end;
      end;
end;

function TFrmPedidoNovo.GravaPedido: Boolean;
var sMsg: String;
begin
     PageControl1.ActivePageIndex := 0;
     PageControl2.ActivePageIndex := 0;
     if (CbCfop.EditValue = null) then
        CbCfop.EditValue := '';

     //Cliente Orçamento
     if ((EdClienteCodigo.Text = '') and (EdOrsCliente.Text = '')) then
     begin
          uteis.aviso('Informe o Cliente');
          try
             if (GBInformacoesOrcamento.Visible) then
                EdOrsCliente.SetFocus
             else
                edCliente.SetFocus;
          except
          end;
          Result := False;
     end
     else    //Cliente esta inativo
     if (not ClienteAtivo(EdClienteCodigo.Text,sMsg))and(not GBInformacoesOrcamento.Visible) then
     Begin
          uteis.erro  (Pchar(sMsg));
          Result := False;
     end
     else    //Cliente Sem  Orçamento
     if ((EdClienteCodigo.Text = '') and (SqlCdsTipoPedidoOPV_ORCAMENTO.AsString <> 'S')) then
     begin
          uteis.aviso('Informe o Cliente');
          edCliente.ShowButton := True;
          try
             edCliente.SetFocus;
          except
          end;
          Result := False;
     end
     else    //Numero do Pedido
     if (Trim(EdPedidoNumero.Text) = '') then
     begin
          uteis.aviso('Informe o Número do Pedido');
          try
             EdPedidoNumero.SetFocus;
             EdPedidoNumero.SelectAll;
          except
          end;
          Result := False;
     end
     else    //Data de Entrada
     if (DteEntrada.Text = '  /  /    ') then
     begin
          uteis.aviso('Informe a Data de Entrada');
          try
             DteEntrada.SetFocus;
             DteEntrada.SelectAll;
          except
          end;
          Result := False;
     end
     else    //Prazo
     if (EdPrazoCodigo.Text = '') then
     begin
          uteis.aviso('Informe o Prazo');
          try
             EdPrazoCodigo.SetFocus;
             EdPrazoCodigo.SelectAll;
          except
          end;
          Result := False;
     end
     else    //Vendedor
     if (EdVendedorCodigo.Text = '') then
     begin
          uteis.aviso('Informe o Vendedor');
          try
             EdVendedorCodigo.SetFocus;
             EdVendedorCodigo.SelectAll;
          except
          end;
          Result := False;
     end
     else    //Centro Custo
     if (edCCusto.idRetorno = '')and(FrmMenu.bCentroCustoObrigatorio) then
     begin
          uteis.aviso('Informe o Centro de Custo');
          try
             edCCusto.SetFocus;
             edCCusto.SelectAll;
          except
          end;
          Result := False;
     end
     else
     begin
          BuscaPedidoItem(EdPedidoNumero.Text);
          CalculaIndiceDescto;
          //Recalcula ST
          if bTipoPedidoCalculaST = True then
             RecalculaSTItem;
          CalcutaTotalItens;
          if (frmmenu.PARAMENTROS.PAR_COMISSAO_ITEM = 'S') OR (frmmenu.PARAMENTROS.PAR_COMISSAO_ESCALA = 'S') then
             GravaMediaComissao;
          Result := GravarPedido(     SqlCdsTipoPedidoOPV_SERVICO.AsString,
                                      EdPedidoNumero.Text,
                                      SqlCdsTipoPedidoOPV_CODIGO.AsString,
                                      EdClienteCodigo.Text,
                                      EdVendedorCodigo.Text,
                                      EdPrazoCodigo.Text,
                                      EdTransportadoraCodigo.Text,
                                      CbCfop.EditValue,
                                      edCCusto.idRetorno,

                                      IIF(CbTipoFrete.ItemIndex = 0,'0', IIF(CbTipoFrete.ItemIndex = 1,'1',  IIF(CbTipoFrete.ItemIndex = 2,'2','9'))),//A pagar = 'F' Pago = 'C'  Outros = 'O'

                                      EdNumeroPedidoCliente.Text,
                                      EdContatoCliente.Text,
                                      IIF(rQuantidadeItensFaturado = 0,'F',IIF(rQuantidadeItensFaturado >= rQuantidadeItens,'T','P')),//F = Faturar /P = Parcial /T = Faturado
                                      EdOrsCliente.Text,
                                      EdOrsFone.Text,
                                      EdOrsFax.Text,
                                      EdOrsEmail.Text,
                                      EdOrsDiaEntrega.Text,
                                      EdOrsDiaValidade.Text,
                                      cbbClienteEstado.Text,
                                      edFPagto.idRetorno,
                                      CbDescontoNF.Checked,
                                      DteEntrada.Date,
                                      DteEntrega.Date,
                                      CurComissaoVendedor.Value,
                                      CurComissaoGerente.Value,
                                      CurComissaoSupervisor.Value,
                                      CurTotalDesconto.Value,
                                      CurDescontoNotaFiscal.Value,
                                      CurDescontoNotaFiscalAdicional.Value,
                                      CurFrete.Value,
                                      CurDespesasAcessorias.Value,
                                      CurSeguro.Value,
                                      CurDespesasImportacao.Value,
                                      CurTotalIPI.Value,
                                      CurTotalST.Value,
                                      CurTotalDifal.Value,
                                      CurTotalProduto.Value,
                                      CurTotalPedido.Value,
                                      MemoObservacaoPedido.Text,
                                      MemoMensagemAdicionalNotaFiscal.Text,
                                      edtExportacaoUF.Text,
                                      edtExportacaoDescricaoLocalEmbarque.Text,
                                      edtExportacaoDescricaoRecinto.Text,
                                      vIdPedido  );

         if ((frmmenu.PARAMENTROS.PAR_COMISSAO_ITEM = 'N') and (frmmenu.PARAMENTROS.PAR_COMISSAO_ESCALA = 'N')) then
         begin
               DataCadastros.sqlUpdate.Close;
               DataCadastros.SqlUpdate.sql.text :='UPDATE PED_IT01 SET PRF_ITEMCOMIS ='+ValorAmericano(CurComissaoVendedor.Text)+' WHERE ped_codigo = '+QuotedStr(EdPedidoNumero.Text)+' AND EMP_CODIGO = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO);
               DataCadastros.sqlUpdate.Execsql;
               DataCadastros.sqlUpdate.Close;
         end;

         edVendedor.FiltroTabela:=dbInicio.ExclusivoSql('TABELAS');

         BuscaPedido(EdPedidoNumero.Text);

         HabilitaDesabilitaEdicao(false);
         bInclusao := False;
         bAdicionadoForma := False;

   end;
end;

Function TFrmPedidoNovo.GetTipoPedidoPadrao:integer;
begin
     result := dbInicio.BuscaUmDadoSqlAsInteger('Select min(OPV_CODIGO) from OPV0000 Where OPV_TIPOPADRAO = '+qStr('S')+ConcatSe(' and ',dbInicio.ExclusivoSql('TABELAS')));
end;

procedure TFrmPedidoNovo.IncluirPedido;
begin
     //Busca vazia para limpar os campos e data sets
     edCliente.idRetorno:='';

     LimparCampos;

     edVendedor.FiltroTabela:=ConcatSe(dbInicio.ExclusivoSql('TABELAS'),' and ')+'REP_SITUACAO = '+qStr('A');

   //Busca Tipo Pedido Padrão
   BuscaTipoPedido( GetTipoPedidoPadrao );
   DataCadastros.sqlUpdate.Close;


   //Verifica se pelo parametro ele permite alterar o numero do pedido ou inclui automatico
   if (FrmMenu.wNumer_Pedido = 'A') then //Automatico
   begin
         EdPedidoNumero.Text    := StrZero(SequenciadorPRC(DataCadastros.SQLConnection1, IIF(dbInicio.Empresa.bUtilizaSequenciaUnicaPedido,'001',dbInicio.Empresa.EMP_CODIGO),'PED0000', 'PED_CODIGO', 0),6);
         EdPedidoNumero.ReadOnly := True;
         EdPedidoNumero.TabStop := False;
         EdPedidoNumero.Color := $00d7d7d7;
   end
   else
   begin
         EdPedidoNumero.ReadOnly := False;
         EdPedidoNumero.TabStop := True;
         EdPedidoNumero.Color := clWhite;
         vIdPedido := DBInicio.GetNextSequence('gen_id_pedido'); 
   end;
   //Data de Entrada recebe a data atual
   DteEntrada.Date := Now;
   DteEntrega.Date := Now;
   cbbClienteEstado.Text := dbInicio.Empresa.UF;
   bInclusao := True;
   bMostraMsgAtraso := True;
   if (FrmMenu.sMensagemPadraoPedido <> '') then
     MemoObservacaoPedido.Lines.Add(FrmMenu.sMensagemPadraoPedido);
   bAdicionadoForma := False;
   HabilitaDesabilitaEdicao(True);
   EdClienteCodigo.SetFocus;
end;

procedure TFrmPedidoNovo.BtnNovoClick(Sender: tObject);
begin
   if (LiberaSairPedido) then
      IncluirPedido;
end;

procedure TFrmPedidoNovo.RemoverInfoNumeracaoPedido;
begin
   DBInicio.MainDB.ExecuteDirect( ' DELETE FROM ped_cntnum WHERE emp_codigo='+qStr(DBInicio.Empresa.EMP_CODIGO)+' and id_pedido='+inttostr( vIdPedido )+
                                  ' and (select count(*) from ped0000 where id_pedido='+inttostr( vIdPedido )+')=0 ' );
end;

procedure TFrmPedidoNovo.CancelarPedido;
begin
   if (bInclusao) then
   begin
        if (StrToIntDef(EdPedidoNumero.Text,0)<>0) then
           SequenciadorPRC(DataCadastros.SQLConnection1, IIF(dbInicio.Empresa.bUtilizaSequenciaUnicaPedido,'001',dbInicio.Empresa.EMP_CODIGO),'PED0000', 'PED_CODIGO', 1, EdPedidoNumero.Text);
   end;
   RemoverInfoNumeracaoPedido;

   LimparCampos;

   edVendedor.FiltroTabela:=dbInicio.ExclusivoSql('TABELAS') ;
   HabilitaDesabilitaEdicao(False);
end;

procedure TFrmPedidoNovo.BtnCancelarClick(Sender: tObject);
begin
   CancelarPedido;
end;

procedure TFrmPedidoNovo.BtnGravarClick(Sender: tObject);
var bVendedorAtivo, bTransportadoraAtiva, bContinua:Boolean;
begin
   bRecalculaSTGeral := True;
   bVendedorAtivo := True;
   bTransportadoraAtiva := True;
   bContinua := True;
   wRetornoInd:= False;
   //Vendedor Inativo
   if (EdVendedorCodigo.Text <> '') then
   begin
         DataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :=SQLDEF('REPRESENTANTES','Select REP_SITUACAO from REP0000','Where REP_CODIGO = '+QuotedStr(EdVendedorCodigo.Text)+'','','');
         DataCadastros.sqlUpdate.Open;
         bVendedorAtivo := DataCadastros.sqlUpdate.FieldByName('REP_SITUACAO').AsString = 'A';
         DataCadastros.sqlUpdate.Close;
   end;
   //Transportadora Inativa
   if (EdTransportadoraCodigo.Text <> '') then
   begin
         DataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :=SQLDEF('TRANSPORTADORAS','Select TRP_ATIVO from TRP0000','Where TRP_CODIGO = '+QuotedStr(EdTransportadoraCodigo.Text)+'','','');
         DataCadastros.sqlUpdate.Open;
         bTransportadoraAtiva := DataCadastros.sqlUpdate.FieldByName('TRP_ATIVO').AsString = 'S';
         DataCadastros.sqlUpdate.Close;
   end;
   if (not bVendedorAtivo)and (SqlCdsPedido.IsEmpty) then
   begin
         uteis.aviso('O Vendedor está Inativo !!!');
         bContinua := False;
   end;
   if (not bTransportadoraAtiva)and (SqlCdsPedido.IsEmpty) then
   begin
         uteis.aviso('A Transportadora está Inativa !!!');
         bContinua := False;
   end;
   if (bContinua) and (not bVendedorAtivo) then
      if (not uteis.confirmacao ( 'O Vendedor está Inativo !!! gostaria de salvar este pedido mesmo assim')=mrYes) then
         bContinua := False;

   if (bContinua) and (not bTransportadoraAtiva) then
      if (not uteis.confirmacao ( 'A transportadora está Inativa !!! Gostaria de salvar este pedido mesmo assim')=mrYes) then
         bContinua := False;

   if (EdPedidoTipo.Text = '') then
   begin
         uteis.aviso('O tipo do pedido não foi carregado caso tenha mais de um empresa no sistema verifique o compartilhamento (Tabelas) está ativa');
         bContinua := False;
   end;
   if (not SqlCdsPedido.IsEmpty) then
   begin
         if (SqlCdsPedidoCLI_CODIGO.AsString <> EdClienteCodigo.Text)and(not GBInformacoesOrcamento.Visible) then
         begin
               if (uteis.confirmacao ( ('O Cliente do Pedido foi alterado!'+#10#13+
                                     'De:'+SqlCdsPedidoCLI_RAZAO.AsString+#10#13+
                                     'Para:'+edCliente.Text+#10#13+
                                     'Confirma a alteração?'))<>mrYes) then
               begin
                     EdClienteCodigo.Text := SqlCdsPedidoCLI_CODIGO.AsString;
                     EdClienteCodigoExit(Sender);
                     bContinua := False;
               end;
         end;
   end;
   if (bContinua) then
   begin
         //Avalia o limite do cliente mas não bloqueia
         ValidaLimiteCredito(SqlCdsPedidoCLI_CODIGO.AsString,dbInicio.Empresa.EMP_CODIGO,False);
         GravaPedido;
   end;
   bRecalculaSTGeral := False;
end;

procedure TFrmPedidoNovo.BuscaTipoPedido(sTipoCodigo: Integer);
begin
     SqlCdsTipoPedido.Close;
     bTipoPedidoCalculaST := False;
     if (sTipoCodigo > 0) then
     begin
          SqlCdsTipoPedido.CommandText := SQLDEF('TABELAS','SELECT t1.* FROM OPV0000 t1','WHERE T1.OPV_CODIGO ='+QuotedStr(IntToStr(sTipoCodigo)),'','t1.')+ ' ORDER BY t1.OPV_DESCRICAO';
          SqlCdsTipoPedido.Open;
          //Verifica se localizou e atualiza na tela
          if (not SqlCdsTipoPedido.IsEmpty) then
          begin
               iCodigoTipoPedido := SqlCdsTipoPedidoOPV_CODIGO.AsInteger;
               EdPedidoTipo.Text := SqlCdsTipoPedidoOPV_DESCRICAO.AsString;
               if SqlCdsTipoPedidoOPV_CALCULA_ST.AsString = 'S' then
                   bTipoPedidoCalculaST := True;

               bEnviaProducao := SqlCdsTipoPedidoOPV_PRODUCAO.AsString = 'S';
               SetCfopOpvTipo( SqlCdsTipoPedidoOpv_TIPO.Asstring ) ;

               MovimentaEstoque(    SqlCdsTipoPedido.FieldByName('OPV_ATESTOQUE').asstring='S'      );

            end
         else
         begin
               iCodigoTipoPedido := 0;
               EdPedidoTipo.Text := '';
               bTipoPedidoCalculaST := False;
               bEnviaProducao  := false;
               MovimentaEstoque(False);
               SetCfopOpvTipo( '' ) ;

         end;
      end;
end;

procedure TFrmPedidoNovo.BtnAlterarClick(Sender: tObject);
begin
   //Verifica se o Pedido já nao foi faturado totalmente
   if (SqlCdsPedidoPED_SITUACAO.AsString = 'C') then
      begin
         uteis.aviso('O Pedido não pode ser editado pois está cancelado');
      end
   else
   if (SqlCdsPedidoPED_SITUACAO.AsString = 'T') then
      begin
         uteis.aviso('O Pedido não pode ser editado pois já foi faturado totalmente');
      end
   else
      begin
         bInclusao := False;
         bAdicionadoForma := False;
         HabilitaDesabilitaEdicao(true);
       //  DbGradeItemPedido.SetFocus;
      end;
end;

procedure TFrmPedidoNovo.BtnExcluirClick(Sender: tObject);
begin
   //Verifica se ja foi faturado e nao deixa excluir para gerar problemas
   if (rQuantidadeItensFaturado > 0) then
      uteis.aviso('O Pedido já possui faturas vinculadas e não pode ser cancelado!')
   else
   if (uteis.confirmacao ( ('Deseja Cancelar o Pedido '''+EdPedidoNumero.text+''' do Cliente '''+edCliente.Text+''' ?'))=mrYes) then
      ExcluirPedido;
end;

procedure TFrmPedidoNovo.DeletarItem;
begin
     SqlCdsPedidoItem.DISABLECONTROLS;
     TRY


   if (not SqlCdsPedidoItem.IsEmpty) then
      begin
         if (SqlCdsPedidoItemPRF_QTDEFAT.AsFloat > 0) then
            begin
               uteis.aviso('O Item já possui faturas vinculadas e não pode ser cancelado!');
            end
         else
            begin
               //Verifica se o tipo do pedido baixa estoque
               if (SqlCdsTipoPedidoOPV_ATESTOQUE.AsString = 'S') then
                  begin
                     //Verifica se atualiza estoque pelo pedido
                     if (FrmMenu.wAtualiza_Estoque = 'P') then
                        begin
                           KardexLancamento(SqlCdsPedidoItemPRF_REGISTRO.AsString,
                                            'PED',
                                            SqlCdsPedidoItem.FieldByName('AMX_CODIGO_DESTINO').AsString,
                                            '',
                                            SqlCdsPedidoItem.FieldByName('PRD_CODIGO').AsString,
                                            SqlCdsPedidoItem.FieldByName('PRG_REGISTRO').AsString,
                                            '',
                                            iif(SqlCdsTipoPedidoOPV_TIPO.AsString = 'S','E','S'),
                                            '',
                                            SqlCdsPedidoItemPRDL_REGISTRO.AsString,
                                            'EXCLUSÃO OU CANCELAMENTO DO PEDIDO',
                                            Now,
                                            SqlCdsPedidoItemPRF_QTDE.AsFloat,
                                            SqlCdsPedidoPED_CODIGO.AsString,
                                            edCliente.idRetorno+'-'+edCliente.Text,
                                            SqlCdsPedidoItemPRF_PRECO.AsFloat);
                        end;
                  end;
                  //Limpa Retorno da Industrialização
                  if wRetornoInd = True then
                    begin
                    try
                      ConsultaRetornoIndustrializacao;

                      DataCadastros.sqlUpdate2.Close;
                      DataCadastros.sqlUpdate2.sql.text := 'UPDATE ENF_IT01 SET ENF_QUANTIDADE_IND_RETORNO = ENF_QUANTIDADE_IND_RETORNO - '+ValorAmericano(FloatToStr(SqlCdsRetornoIndPEDIND_QUANTIDADE.AsFloat))+' WHERE ENF_REGISTRO = '+SqlCdsRetornoIndENF_REGISTRO.AsString;
                      DataCadastros.sqlUpdate2.ExecSql;

                      DataCadastros.sqlUpdate2.Close;
                      DataCadastros.sqlUpdate2.sql.text := 'DELETE FROM ped_it01_indust WHERE PRF_REGISTRO ='+SqlCdsPedidoItemPRF_REGISTRO.AsString;
                      DataCadastros.sqlUpdate2.ExecSql;
                    except

                    end;

                    ConsultaRetornoIndustrializacao;

                  end;
                  //Limpa Agregados
                  //Lista os Vinculados pelo registro e elimina
                  DataCadastros.sqlUpdate1.Close;
                  DataCadastros.sqlUpdate1.sql.text:= 'SELECT * FROM PED_IT01 T2 WHERE T2.PRF_REGISTRO_VINCULADO = '+SqlCdsPedidoItemPRF_REGISTRO.AsString;
                  DataCadastros.sqlUpdate1.Open;
                  DataCadastros.sqlUpdate1.First;
                  if (SqlCdsPedidoItemPRF_REGISTRO.AsInteger <> 0) then
                     begin
                        while (not DataCadastros.sqlUpdate1.Eof) do
                           begin
                              //
                              //Verifica se o tipo do pedido baixa estoque
                              if (SqlCdsTipoPedidoOPV_ATESTOQUE.AsString = 'S') then
                                 begin
                                    //Verifica se atualiza estoque pelo pedido
                                    if (FrmMenu.wAtualiza_Estoque = 'P') then
                                       begin
                                          KardexLancamento(DataCadastros.sqlUpdate1.FieldByName('PRF_REGISTRO').AsString,
                                                           'PED',
                                                           DataCadastros.sqlUpdate1.FieldByName('AMX_CODIGO_DESTINO').AsString,
                                                           '',
                                                           DataCadastros.sqlUpdate1.FieldByName('PRD_CODIGO').AsString,
                                                           DataCadastros.sqlUpdate1.FieldByName('PRG_REGISTRO').AsString,
                                                           '',
                                                           iif(sqlCdsTipoPedidoOPV_TIPO.AsString = 'S','E','S'),
                                                           '',
                                                           DataCadastros.sqlUpdate1.FieldByName('PRDL_REGISTRO').AsString,
                                                           'EXCLUSÃO OU CANCELAMENTO DO PEDIDO',
                                                           Now,
                                                           DataCadastros.sqlUpdate1.FieldByName('PRF_QTDE').AsFloat,
                                                           SqlCdsPedidoPED_CODIGO.AsString,
                                                           edCliente.idRetorno+'-'+edCliente.Text,
                                                           DataCadastros.sqlUpdate1.FieldByName('PRF_PRECO').AsFloat);
                                       end;
                                 end;

                              //Delete item da tabela
                              ExcluirPedidoItem(DataCadastros.sqlUpdate1.FieldByName('PRF_REGISTRO').AsInteger);

                              DataCadastros.sqlUpdate1.Next;
                           end;
                     end;
                  DataCadastros.sqlUpdate1.Close;

                  //Delete item da tabela
                  ExcluirPedidoItem(SqlCdsPedidoItemPRF_REGISTRO.AsInteger);
                  //Calcula Total
                  CalcutaTotalItens;
                  GravaPedido;
            end;
      end;
     FINALLY
       SqlCdsPedidoItem.eNABLECONTROLS;
     END;
end;

procedure TFrmPedidoNovo.Excluir1Click(Sender: tObject);
begin
   ExcluirItem;
end;
procedure TFrmPedidoNovo.Alterar1Click(Sender: tObject);
begin
   AlterarItem;
end;
procedure TFrmPedidoNovo.DbGradeItemPedidoDblClick(Sender: tObject);
begin
   AlterarItem;
end;
procedure TFrmPedidoNovo.BuscaVendaItemHistorico;
var
   sQuery:String;
begin
   sQuery := 'SELECT T1.PRD_REFER,T1.PED_CODIGO,t1.PRD_DESCRI,t1.NF_QTDE,t1.NF_PRECO,t1.NF_IPIVALOR, CASE WHEN (t1.NF_VLSUBST > 0) THEN t1.NF_VLSUBST/t1.NF_QTDE ELSE 0 END AS NF_VLSUBST,t1.NF_IDESCTO1,t2.CLI_CODIGO'+
             ',t2.NF_NUM_NFE,t2.NF_EMISSAO FROM NF_IT01 t1 join NF0001 t2 on (t1.NF_IT_NOTANUMER = t2.NF_NOTANUMBER)';
   SqlCdsVendaItemHistorico.Close;
   SqlCdsVendaItemHistorico.CommandText := SQLDEF('CLIENTES',sQuery,'WHERE t2.CLI_CODIGO = '+QuotedStr(EdClienteCodigo.Text)+' and t1.PRD_REFER = '+QuotedStr(SqlCdsPedidoItemPRD_REFER.AsString)+'','t2.NF_EMISSAO desc','T2.');
   SqlCdsVendaItemHistorico.Open;
   EdHistoricoReferencia.Text := SqlCdsPedidoItemPRD_REFER.AsString;
   EdHistoricoDescricao.Text := SqlCdsPedidoItemPRD_DESCRI.AsString;
end;

procedure TFrmPedidoNovo.TabHostoricoVendaShow(Sender: tObject);
begin
   BuscaVendaItemHistorico;
end;

procedure TFrmPedidoNovo.BtnEstoqueClick(Sender: tObject);
begin
   try
      FormProdutoGrid := TFormProdutoGrid.Create(Application);
      FormProdutoGrid.Tag := 1;
      FormProdutoGrid.ShowModal;
    finally
      FormProdutoGrid.Destroy;
      FormProdutoGrid := nil;
    end;
end;

procedure TFrmPedidoNovo.ImprimePedido(bVisualiza: Boolean; sTipo:String);
var tcr: TFrmRelatoriosPedido;
begin
     tcr:= TFrmRelatoriosPedido.Create(Self);
     try
        tcr.OrsCliente:=edOrsCliente.text;
        tcr.ClienteTelefone:=EdClienteTelefone.Text;
        tcr.DiaEntrega:=EdOrsDiaEntrega.Text;
        tcr.OrsEmail:=EdOrsEmail.Text;
        tcr.OrsDiaValidade:=EdOrsDiaValidade.Text;
        tcr.PedidoTipo:=EdPedidoTipo.Text;
        tcr.PedidoSemItemKit:=bPedidoSemItemKit;
        tcr.MemoPedido:=MemoObservacaoPedido.Text;
        tcr.MemoMsgAdicional:=MemoMensagemAdicionalNotaFiscal.Text;
        tcr.clientecodigo := EdClienteCodigo.Text;
        tcr.OrsFone:=edOrsFone.text;
        tcr.ImprimePedido( bVisualiza, sTipo, EdPedidoNumero.Text, EdVendedorCodigo.Text);
     finally
            FreeAndNil( tcr );
     end;
end;

procedure TFrmPedidoNovo.BtnImprimirClick(Sender: tObject);
begin
   if (SqlCdsTipoPedidoOPV_ORCAMENTO.AsString = 'S') then
      ImprimePedido(true,'OR')
   else
      ImprimePedido(true,'');
end;

procedure TFrmPedidoNovo.BtnEmailClick(Sender: tObject);
begin
   ImprimePedido(False,'');
end;

procedure TFrmPedidoNovo.BtnRelatoriosClick(Sender: tObject);
begin
   try
     FormGImpPedido := TFormGImpPedido.Create(Application);
     FormGImpPedido.ShowModal;
   finally
     FormGImpPedido.Destroy;
     FormGImpPedido := nil; //  nil é - From Assigned = False
   end;
end;

procedure TFrmPedidoNovo.CdSPedidoDIAfterInsert(DataSet: TDataSet);
begin
  CdSPedidoDIPID_REGISTRO.AsInteger := RetornaGenerator('gen_ped_it01_di_id',true);
  CdSPedidoDIPRF_REGISTRO.AsInteger := SqlCdsPedidoItemPRF_REGISTRO.AsInteger;
  CdSPedidoDIPID_VIA_TRANSPORTE.AsInteger := 4;
  CdSPedidoDIPID_FORMA_IMPORTACAO.AsInteger := 1;
   if (not CdSPedidoDILancado.IsEmpty) then
      begin
         if (uteis.confirmacao  ( Pchar('Existe a DI/DSI/DA '+CdSPedidoDILancadoPID_NUMERO_DI.AsString+' lançada neste pedido, gostaria de copiar as informações para o novo lançamento?'))=mrYes) then
            begin
               CdSPedidoDIPID_NUMERO_DI.AsString         := CdSPedidoDILancadoPID_NUMERO_DI.AsString;
               CdSPedidoDIPID_DATA_DI.AsString           := CdSPedidoDILancadoPID_DATA_DI.AsString;
               CdSPedidoDIPID_LOCAL_DESEMBARACO.AsString := CdSPedidoDILancadoPID_LOCAL_DESEMBARACO.AsString;
               CdSPedidoDIPID_DATA_DESEMBARACO.AsString  := CdSPedidoDILancadoPID_DATA_DESEMBARACO.AsString;
               CdSPedidoDIPID_CODIGO_EXPORTADOR.AsString := CdSPedidoDILancadoPID_CODIGO_EXPORTADOR.AsString;
               CdSPedidoDIPID_UF_DESEMBARACO.AsString    := CdSPedidoDILancadoPID_UF_DESEMBARACO.AsString;
               CdSPedidoDIPID_VIA_TRANSPORTE.AsString    := CdSPedidoDILancadoPID_VIA_TRANSPORTE.AsString;
               CdSPedidoDIPID_VALOR_AFRMM.AsString       := CdSPedidoDILancadoPID_VALOR_AFRMM.AsString;
               CdSPedidoDIPID_FORMA_IMPORTACAO.AsString  := CdSPedidoDILancadoPID_FORMA_IMPORTACAO.AsString;
               CdSPedidoDIPID_CNPJ_ADQUIRENTE.AsString   := CdSPedidoDILancadoPID_CNPJ_ADQUIRENTE.AsString;
               CdSPedidoDIPID_UF_ADQUIRENTE.AsString     := CdSPedidoDILancadoPID_UF_ADQUIRENTE.AsString;
               CdSPedidoDI.Post;
            end;
      end;
  DBEdit1.SetFocus;
  DBEdit1.SelectAll;
end;
procedure TFrmPedidoNovo.CdSPedidoDIAfterDelete(DataSet: TDataSet);
begin
  try
    CdSPedidoDI.ApplyUpdates(0);
    SqlCdsPedidoItem.Refresh;
  except
  end;
  CdSPedidoDIAdicao.Close;
  if ((not CdSPedidoDI.IsEmpty) and (CdSPedidoDIPID_REGISTRO.AsString <> '')) then
    begin
      CdSPedidoDIAdicao.CommandText := 'SELECT T1.*  FROM PED_IT01_DI_ADICAO T1 WHERE T1.PID_REGISTRO = '+iif(CdSPedidoDI.IsEmpty,'-1',CdSPedidoDIPID_REGISTRO.AsString);
      CdSPedidoDIAdicao.Open;
    end;
end;
procedure TFrmPedidoNovo.CdSPedidoDIAfterPost(DataSet: TDataSet);
begin
   if (CdSPedidoDIPID_NUMERO_DI.AsString = '')or
      (CdSPedidoDIPID_DATA_DI.AsString = '') or
      (CdSPedidoDIPID_LOCAL_DESEMBARACO.AsString = '')or
      (CdSPedidoDIPID_DATA_DESEMBARACO.AsString = '')or
      (CdSPedidoDIPID_CODIGO_EXPORTADOR.AsString = '')or
      (CdSPedidoDIPID_UF_DESEMBARACO.AsString = '') then
      begin
         uteis.aviso('TODOS os campos são de preenchimento obrigatório');
         CdSPedidoDI.Edit;
      end
   else
      begin
         try
           CdSPedidoDI.ApplyUpdates(0);
           SqlCdsPedidoItem.Refresh;
         except
         end;
         CdSPedidoDIAdicao.Close;
         if ((not CdSPedidoDI.IsEmpty) and (CdSPedidoDIPID_REGISTRO.AsString <> '')) then
           begin
             CdSPedidoDIAdicao.CommandText := 'SELECT T1.*  FROM PED_IT01_DI_ADICAO T1 WHERE T1.PID_REGISTRO = '+iif(CdSPedidoDI.IsEmpty,'-1',CdSPedidoDIPID_REGISTRO.AsString);
             CdSPedidoDIAdicao.Open;
           end;
      end;
end;
procedure TFrmPedidoNovo.CdSPedidoDIAdicaoAfterDelete(DataSet: TDataSet);
begin
  try
    CdSPedidoDIAdicao.ApplyUpdates(0);
  except
  end;
end;
procedure TFrmPedidoNovo.CdSPedidoDIAdicaoAfterInsert(DataSet: TDataSet);
begin
   if (CdSPedidoDI.IsEmpty) then
      begin
         uteis.aviso('Insira primeiro e grave a DI e depois lance as adições');
         CdSPedidoDIAdicao.Cancel;
      end
   else
   if (DSPedidoDI.State <> dsBrowse) then
      begin
         uteis.aviso('Grave a di antes de lanças as adições');
         CdSPedidoDIAdicao.Cancel;
      end
   else
      begin
         CdSPedidoDIAdicaoPDA_REGISTRO.AsInteger := RetornaGenerator('gen_ped_it01_di_adicao_id',true);
         CdSPedidoDIAdicaoPID_REGISTRO.AsInteger := CdSPedidoDIPID_REGISTRO.AsInteger;
         DBEdit33.SetFocus;
         DBEdit33.SelectAll;
      end;
end;
procedure TFrmPedidoNovo.CdSPedidoDIAdicaoAfterPost(DataSet: TDataSet);
begin
   if (CdSPedidoDIAdicaoPDA_ADICAO.AsString = '')or
      (CdSPedidoDIAdicaoPDA_SEQ_ADICAO.AsString = '')or
      (CdSPedidoDIAdicaoPDA_CODIGO_FABRICANTE.AsString = '') then
      begin
         uteis.aviso('TODOS os campos são obrigatórios');
         CdSPedidoDIAdicao.Edit;
      end
   else
      begin
         try
           CdSPedidoDIAdicao.ApplyUpdates(0);
         except
         end;
      end;
end;
procedure TFrmPedidoNovo.DsPedidoItemDataChange(Sender: tObject;
  Field: TField);
begin
  CdSPedidoDI.Close;
  CdSPedidoDI.CommandText := 'SELECT T1.*  FROM PED_IT01_DI T1 WHERE T1.PRF_REGISTRO = '+iif(SqlCdsPedidoItem.IsEmpty,'-1',SqlCdsPedidoItemPRF_REGISTRO.AsString);
  CdSPedidoDI.Open;
  CdSPedidoDILancado.Close;
  CdSPedidoDILancado.CommandText := 'SELECT T1.*  FROM PED_IT01_DI T1 WHERE T1.PRF_REGISTRO in (select t2.PRF_REGISTRO from PED_IT01 t2 where t2.PED_CODIGO = '+QuotedStr(EdPedidoNumero.Text)+')';
  CdSPedidoDILancado.Open;
  ConsultaRetornoIndustrializacao;
end;
procedure TFrmPedidoNovo.DSPedidoDIDataChange(Sender: tObject; Field: TField);
begin
  CdSPedidoDIAdicao.Close;
  if ((not CdSPedidoDI.IsEmpty) and (CdSPedidoDIPID_REGISTRO.AsString <> '')) then
    begin
      CdSPedidoDIAdicao.CommandText := 'SELECT T1.*  FROM PED_IT01_DI_ADICAO T1 WHERE T1.PID_REGISTRO = '+iif(CdSPedidoDI.IsEmpty,'-1',CdSPedidoDIPID_REGISTRO.AsString);
      CdSPedidoDIAdicao.Open;
    end;
end;
procedure TFrmPedidoNovo.BuscaItensNota;
begin
   try
      DataMovimento.CdsItemNota.Close;
      DataMovimento.CdsItemNota.CommandText := SQLDEF('PEDIDOS','SELECT NF2.* FROM NF_IT01 NF2 ','WHERE NF2.NF_IT_NOTANUMER = '''+DataMovimento.CdsNotaFiscalNF_NOTANUMBER.AsString+''' AND NF2.PED_CODIGO = '''+DataMovimento.CdsNotaFiscalPED_CODIGO.AsString+'''','NF2.NF_IT_NOTANUMER','NF2.');
      DataMovimento.CdsItemNota.Open;
   except on E:EdatabaseError do
       uteis.erro  (pchar('Erro ao localizar itens da nota fiscal !'+e.message));
   end;
end;

procedure TFrmPedidoNovo.BuscaNotas;
begin
   {Busca notas e itens da nota fiscal}
    try
      // fechar a SqlNota senao nao abre CdsNotafiscal.open
      DataMovimento.SQlNota.Close;
      DataMovimento.CdsNotaFiscal.Close;
      DataMovimento.CdsNotaFiscal.CommandText := SQLDEF('PEDIDOS','SELECT NF1.* FROM NF0001 NF1 ','WHERE NF1.CLI_CODIGO = '+QuotedStr(EdClienteCodigo.Text)+'','NF1.PED_CODIGO','NF1.');
      DataMovimento.CdsNotaFiscal.Open;
      if (DataMovimento.CdsNotaFiscal.IsEmpty = False) then
         begin
             DataMovimento.CdsNotaFiscal.First;
             BuscaItensNota;
         end
      else
         begin
             DataMovimento.CdsNotaFiscal.Close;
         end;
    except on E:EdatabaseError do
         uteis.erro  (pchar('Erro ao localizar notas fiscais ref. ao pedido !'+e.Message));
    end;
end;

procedure TFrmPedidoNovo.TabNotasFiscaisClienteShow(Sender: tObject);
begin
   BuscaNotas;
end;

procedure TFrmPedidoNovo.LayOutPesqClienteVenda;
begin
     Msk_busca.text      := '';
     Msk_busca.EditMask  := '';
   if RadCodigo.checked  then
   begin
           GBLista.Caption     := 'Código do Cliente:';
           GBLista.Width       := 100;
           Msk_busca.MaxLength := 5;
           Msk_busca.Width     := 50;
   end
   Else
   if RadRazao.checked  then
   begin
           GBLista.Caption     := 'Razão Social do Cliente:';
           GBLista.Width       := 351;
           Msk_busca.MaxLength := 50;
           Msk_busca.Width     := 340;
   end
   Else
   if RadFantasia.checked  then
   begin
           GBLista.Caption     := 'Nome Fantasia do Cliente:';
           GBLista.Width       := 351;
           Msk_busca.MaxLength := 50;
           Msk_busca.Width     := 340;
   end
   Else
   if RadCPF.checked  then
   begin
           GbLista.Caption     := 'CPF do Cliente:';
           GbLista.Width       := 130;
           Msk_busca.MaxLength := 11;
           Msk_busca.Width     := 117;
           Msk_busca.EditMask  := '999.999.999-99;0;_';
   end
   Else
   begin
           GbLista.Caption     := 'CNPJ do Cliente:';
           GbLista.Width       := 130;
           Msk_busca.MaxLength := 14;
           Msk_busca.Width     := 117;
           Msk_busca.EditMask  := '99.999.999/9999-99;0;_';
   end;
   Msk_busca.SetFocus;
end;
procedure TFrmPedidoNovo.RadFantasiaClick(Sender: tObject);
begin
     LayOutPesqClienteVenda;
end;

procedure TFrmPedidoNovo.BuscaClienteVenda;
begin
     DataCadastros.CdsClientes.Close;
     if RadRazao.Checked  then
        DataCadastros.CdsClientes.CommandText   := SQLDEF('CLIENTES','SELECT C1.* FROM CLI0000 C1 ','Where C1.CLI_RAZAO LIKE'+QuotedStr('%'+Msk_busca.Text+'%')+'','C1.CLI_CODIGO','C1.')
     Else
     if RadCodigo.Checked then
        DataCadastros.CdsClientes.CommandText   := SQLDEF('CLIENTES','SELECT C1.* FROM CLI0000 C1 ','Where C1.CLI_CODIGO = '''+StrZero(Msk_busca.Text,5)+'''','C1.CLI_CODIGO','C1.')
     Else
     if RadFantasia.Checked then
        DataCadastros.CdsClientes.CommandText   := SQLDEF('CLIENTES','SELECT C1.* FROM CLI0000 C1 ','Where C1.CLI_FANTASIA LIKE'+QuotedStr('%'+Msk_busca.Text+'%')+'','C1.CLI_CODIGO','C1.')
     Else
     if (RadCgc.Checked) or (RadCPF.Checked) then
        DataCadastros.CdsClientes.CommandText   := SQLDEF('CLIENTES','SELECT C1.* FROM CLI0000 C1 ','Where C1.CLI_CGC = '''+Msk_busca.Text+'''','C1.CLI_CODIGO','C1.');
     DataCadastros.CdsClientes.Open;
     if DataCadastros.CdsClientes.IsEmpty then
        uteis.aviso('O Cliente pesquisado não foi encontrado.')
     else
     begin
          sCodCliente := DataCadastros.CdsClientesCli_Codigo.AsString;
          BuscaprodutosCliente;
     end;

     AbreGraficoVendas;

     if Length(trim(DBECLI_CGC.Text)) = 14 then
        DataCadastros.CdsClientes.FieldByName('CLI_CGC').EditMask := '99\.999\.999\/9999\-99;0;_'
     else
        DataCadastros.CdsClientes.FieldByName('CLI_CGC').EditMask := '999\.999\.999\-99;0;_';
     Msk_busca.text      := '';
          DataCadastros.CdsClientes.Close;
     if RadRazao.Checked  then
        DataCadastros.CdsClientes.CommandText   := SQLDEF('CLIENTES','SELECT C1.* FROM CLI0000 C1 ','Where C1.CLI_RAZAO LIKE'+QuotedStr('%'+Msk_busca.Text+'%')+'','C1.CLI_CODIGO','C1.')
     Else
     if RadCodigo.Checked then
        DataCadastros.CdsClientes.CommandText   := SQLDEF('CLIENTES','SELECT C1.* FROM CLI0000 C1 ','Where C1.CLI_CODIGO = '''+StrZero(Msk_busca.Text,5)+'''','C1.CLI_CODIGO','C1.')
     Else
     if RadFantasia.Checked then
        DataCadastros.CdsClientes.CommandText   := SQLDEF('CLIENTES','SELECT C1.* FROM CLI0000 C1 ','Where C1.CLI_FANTASIA LIKE'+QuotedStr('%'+Msk_busca.Text+'%')+'','C1.CLI_CODIGO','C1.')
     Else
     if (RadCgc.Checked) or (RadCPF.Checked) then
        DataCadastros.CdsClientes.CommandText   := SQLDEF('CLIENTES','SELECT C1.* FROM CLI0000 C1 ','Where C1.CLI_CGC = '''+Msk_busca.Text+'''','C1.CLI_CODIGO','C1.');
     DataCadastros.CdsClientes.Open;
     if DataCadastros.CdsClientes.IsEmpty then
        uteis.aviso('O Cliente pesquisado não foi encontrado.')
     else
     begin
          sCodCliente := DataCadastros.CdsClientesCli_Codigo.AsString;
          BuscaprodutosCliente;
     end;

     AbreGraficoVendas;

     if Length(trim(DBECLI_CGC.Text)) = 14 then
        DataCadastros.CdsClientes.FieldByName('CLI_CGC').EditMask := '99\.999\.999\/9999\-99;0;_'
     else
        DataCadastros.CdsClientes.FieldByName('CLI_CGC').EditMask := '999\.999\.999\-99;0;_';
end;

procedure TFrmPedidoNovo.BitPesquisaClick(Sender: tObject);
begin
     BuscaClienteVenda;
end;

procedure TFrmPedidoNovo.TabClienteVendasShow(Sender: tObject);
begin
   sCodCliente := EdClienteCodigo.Text ;
   if sCodCliente <> '' then
   begin
      DataCadastros.CdsClientes.Close;
      DataCadastros.CdsClientes.CommandText   := SQLDEF('CLIENTES','SELECT C1.* FROM CLI0000 C1 ','Where C1.CLI_CODIGO = '''+sCodCliente+'''','C1.CLI_CODIGO','C1.');
      DataCadastros.CdsClientes.Open;
      BuscaprodutosCliente;
   end;
   // mostrar mascara cnpj ou CPF no registro atual
   if Length(trim(DBECLI_CGC.Text)) = 14 then
     DataCadastros.CdsClientes.FieldByName('CLI_CGC').EditMask := '99\.999\.999\/9999\-99;0;_'
   else
     DataCadastros.CdsClientes.FieldByName('CLI_CGC').EditMask := '999\.999\.999\-99;0;_';
   LayOutPesqClienteVenda;
end;

procedure TFrmPedidoNovo.BuscaprodutosCliente;
var  wsql1, sEmpresa : string;
begin
     sEmpresa := ' and @1emp_codigo='+qStr( dbInicio.Empresa.EMP_CODIGO );

     wsql1 := 'SELECT T1.PRD_REFER,T1.PED_CODIGO,t1.PRD_DESCRI,t1.NF_QTDE,t1.NF_PRECO,t1.NF_IPIVALOR,t1.NF_VLSUBST, '+
              '       t1.NF_IDESCTO1,t2.CLI_CODIGO,t2.NF_NUM_NFE,t2.NF_EMISSAO '+
              'FROM NF_IT01 t1 '+
              '     join opE0000 D on D.OPE_TIPO_OPERACAO='+QSTR('V')+
              '     join NF0001 t2 on  t2.ope_codigo=D.ope_codigo and t1.NF_IT_NOTANUMER = t2.NF_NOTANUMBER '+StringReplace(sEmpresa, '@1','t2.',[rfReplaceAll])+
              ' WHERE t2.CLI_CODIGO = '+QuotedStr(sCodCliente)+StringReplace(sEmpresa, '@1','t1.',[rfReplaceAll])+
              ' order by t2.NF_EMISSAO desc' ;

     SQLClienteProd.close;
     SQLClienteProd.CommandText := wSql1;
     SQLClienteProd.Open;

     AbreGraficoVendas;

end;

procedure TFrmPedidoNovo.AbreGraficoVendas;
begin
   SqlCdsGraficoVendas.Close;
   chtGrafico.Series[0].Clear;
   if (not DataCadastros.CdsClientes.IsEmpty) then
   begin
       SqlCdsGraficoVendas.CommandText := 'select '+
                                          '  first 12 '+
                                          '  (extract (year from t1.nf_emissao)) as ano, '+
                                          '  (extract (month from t1.nf_emissao)) as mes, '+
                                          '  (extract (month from t1.nf_emissao))||''/''||(extract (year from t1.nf_emissao)) as mes_ano, '+
                                          '  sum(t1.nf_tot_nota) as total  '+
                                          'from nf0001 t1 '+
                                          '     join opE0000 D on D.OPE_TIPO_OPERACAO='+QSTR('V')+
                                          'where t1.ope_codigo=D.ope_codigo and t1.cli_codigo = '+QuotedStr(sCodCliente)+' and T1.NF_CANCELADA = ''N'' and t1.emp_codigo = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+' '+
                                          'group by 1,2,3  '+
                                          'order by 1 desc, 2 desc';
       SqlCdsGraficoVendas.Open;
       while (not SqlCdsGraficoVendas.Eof) do
       begin
           chtGrafico.Series[0].Add(SqlCdsGraficoVendasTOTAL.AsFloat, SqlCdsGraficoVendasMES_ANO.AsString);
           SqlCdsGraficoVendas.Next;
       end;
     end;
end;

procedure TFrmPedidoNovo.SQLClienteProdCalcFields(DataSet: TDataSet);
begin
   SQLClienteProdCC_TOTAL.AsFloat := SQLClienteProdNF_QTDE.AsFloat*SQLClienteProdNF_PRECO.AsFloat;
end;
procedure TFrmPedidoNovo.SQLReservaProdAfterScroll(DataSet: TDataSet);
begin
// buscar os pedidos refente a cada produto que esta na reserva
   BuscapedidosReservas(SQLReservaProdPRD_REFER.AsString);
end;
procedure TFrmPedidoNovo.BitCancelaReservaProdClick(Sender: tObject);
begin
  EditProdReserva.Text := '';
  BuscaprodutosReservas;
end;
procedure TFrmPedidoNovo.BitPesqReservaProdClick(Sender: tObject);
var
   wsql1,wsql2,wsql3 :string;
begin
  // busca somente o produto da pesquisa
  if EditProdReserva.Text <> '' then
    begin
     wsql1 := '';
     wsql2 := '';
     wsql3 := '';
     // buscar todos os produtos que estao na Reserva
     wsql1 := 'SELECT T1.PRD_REFER,T1.PRF_PRDDESCRI,SUM(T1.PRF_QTDE) AS SQTDE FROM PED_IT01 T1 ';
     wsql2 := 'WHERE T1.PRF_SITUACAO <> ''T'' AND T1.PRF_FLAG_ATUALIZA_ESTOQUE = ''S'' and T1.PRD_REFER = '''+EditProdReserva.Text+''' GROUP BY T1.PRD_REFER,T1.PRF_PRDDESCRI ';
     wsql3 := 'ORDER BY T1.PRD_REFER';
     if Share('PEDIDOS') = 'E' Then
       begin
       SQLReservaProd.Close;
       SQLReservaProd.CommandText :=wsql1+wsql2+wsql3;
       SQLReservaProd.Open;
       end;
     if  not SQLReservaProd.IsEmpty then
        // buscar os pedidos refente a cada produto que esta na reserva
         BuscapedidosReservas(SQLReservaProdPRD_REFER.AsString)
      else
        begin
        uteis.aviso('Produto não consta na reserva de pedidos abertos');
        // carregar tela com todos os produtos novamente
        BitCancelaReservaProd.Click;
        end;
    end;
end;
procedure TFrmPedidoNovo.TabVendasFaturarShow(Sender: tObject);
begin
   BuscaprodutosReservas;
end;
function TFrmPedidoNovo.BuscapedidosReservas(
  wreserva_Prd_refer: string): boolean;
var
   wsql1,wsql2 : string;
begin
   wsql1 := '';
   wsql2 := '';
   wsql1 := 'SELECT T1.PED_CODIGO,T1.PRD_CODIGO,T1.PRD_REFER,T2.PED_DTENTRADA,T2.CLI_CODIGO,T3.CLI_RAZAO,T2.REP_CODIGO,T4.REP_NOME,(T1.PRF_QTDE-T1.PRF_QTDEFAT) AS SQTDEFATURAR FROM PED_IT01 T1 ';
   wsql2 := 'JOIN PED0000 T2 ON (T1.PED_CODIGO = T2.PED_CODIGO) JOIN CLI0000 T3 ON (T2.CLI_CODIGO = T3.CLI_CODIGO) JOIN REP0000 T4 ON (T2.REP_CODIGO = T4.REP_CODIGO)';
   SQLReservaPed.Close;
   SQLReservaPed.CommandText := SQLDEF('PEDIDOS',wsql1+wsql2,'WHERE T1.PRF_SITUACAO <> ''T'' AND T1.PRF_FLAG_ATUALIZA_ESTOQUE = ''S'' and T1.PRD_REFER ='''+wreserva_Prd_refer+'''','T2.PED_DTENTRADA','T1.');
   SQLReservaPed.Open;
   Result := True;
end;
procedure TFrmPedidoNovo.BuscaprodutosReservas;
var
wsql1,wsql2,wsql3 :string;
begin
  wsql1 := '';
  wsql2 := '';
  wsql3 := '';
   // buscar todos os produtos que estao na Reserva
   wsql1 := 'SELECT T1.PRD_REFER,T1.PRF_PRDDESCRI,SUM(T1.PRF_QTDE) AS SQTDE FROM PED_IT01 T1 ';
   wsql2 := 'WHERE T1.PRF_SITUACAO <> ''T'' AND T1.PRF_FLAG_ATUALIZA_ESTOQUE = ''S'' GROUP BY T1.PRD_REFER,T1.PRF_PRDDESCRI ';
   wsql3 := 'ORDER BY T1.PRD_REFER';
   if Share('PEDIDOS') = 'E' Then
     begin
     SQLReservaProd.Close;
     SQLReservaProd.CommandText :=wsql1+wsql2+wsql3;
     SQLReservaProd.Open;
     end;           
   // buscar os pedidos refente a cada produto que esta na reserva
   BuscapedidosReservas(SQLReservaProdPRD_REFER.AsString);
end;
procedure TFrmPedidoNovo.Bit_SairClick(Sender: tObject);
begin
   if (SqlCdsPedido.IsEmpty) then
      Close
   else
   begin
         if (BtnGravar.Enabled) then
               uteis.aviso('O Pedido não foi gravado!')
         else
         if (SqlCdsPedidoPED_SITUACAO.AsString = 'C') then
            Close
         else
         if (SqlCdsPedidoItem.IsEmpty) then
         begin
               if (uteis.confirmacao ( 'O Pedido não possui itens lançados, gostaria de cancelar este pedido?') = mrYes) then
                  ExcluirPedido;
         end
         else
             Close;
   end;
end;
procedure TFrmPedidoNovo.HabilitaDesabilitaDescontoNota(bStatus: Boolean);
begin
   if (bStatus) then
      begin
         CurDescontoNotaFiscal.ReadOnly := False;
         CurDescontoNotaFiscal.TabStop := True;
         CurDescontoNotaFiscal.Color := clWhite;
         CurDescontoNotaFiscalAdicional.ReadOnly := False;
         CurDescontoNotaFiscalAdicional.TabStop := True;
         CurDescontoNotaFiscalAdicional.Color := clWhite;
         CurDescontoNotaFiscalValor.ReadOnly := False;
         CurDescontoNotaFiscalValor.TabStop := True;
         CurDescontoNotaFiscalValor.Color := clWhite;
      end
   else
      begin
         CurDescontoNotaFiscal.Clear;
         CurDescontoNotaFiscal.ReadOnly := True;
         CurDescontoNotaFiscal.TabStop := False;
         CurDescontoNotaFiscal.Color := $00d7d7d7;
         CurDescontoNotaFiscalAdicional.Clear;
         CurDescontoNotaFiscalAdicional.ReadOnly := True;
         CurDescontoNotaFiscalAdicional.TabStop := False;
         CurDescontoNotaFiscalAdicional.Color := $00d7d7d7;
         CurDescontoNotaFiscalValor.Clear;
         CurDescontoNotaFiscalValor.ReadOnly := True;
         CurDescontoNotaFiscalValor.TabStop := False;
         CurDescontoNotaFiscalValor.Color := $00d7d7d7;
      end;
end;

procedure TFrmPedidoNovo.CbDescontoNFClick(Sender: tObject);
begin
   HabilitaDesabilitaDescontoNota(CbDescontoNF.Checked);
end;

procedure TFrmPedidoNovo.EdClienteCodigoExit(Sender: tObject);
begin
     edClienteCodigo.Text:=PreenchezeroEsquerda(EdClienteCodigo.Text,5);
     if edClienteCodigo.Text<>'00000' then
     begin
          edCliente.idRetorno:=edClienteCodigo.Text;
          if edCliente.idRetorno='' then
             GeraException('Cliente não localizado com o código informado');
     end
     Else
     begin
          edClienteCodigo.clear;
          edCliente.Clear;
     end;
end;

procedure TFrmPedidoNovo.EdClienteCodigoKeyPress(Sender: tObject;
  var Key: Char);
begin
     if Pos(key,'1234567890'+#8)=0 then
        key := #0;
end;

procedure TFrmPedidoNovo.edClienteSelect(Sender: tObject);
begin
     if edCliente.idRetorno<>'' then
     begin
          edClienteCodigo.Text:=edCliente.idRetorno;
          BuscaCliente(edCliente.idRetorno);
          if (EdPrazoCodigo.Enabled) then
             EdPrazoCodigo.SetFocus;
     end
     Else
          edClienteCodigo.clear;
end;

procedure TFrmPedidoNovo.EdPrazoCodigoExit(Sender: tObject);
begin
     EdPrazoCodigo.Text:=PreenchezeroEsquerda(EdPrazoCodigo.Text,3);
     if EdPrazoCodigo.Text<>'000' then
     begin
          edPrazo.idRetorno:=EdPrazoCodigo.Text;
          if edPrazo.idRetorno='' then
             GeraException('Prazo não localizado com o código informado');
     end
     Else
     begin
          EdPrazoCodigo.clear;
          edPrazo.Clear;
     end;
end;

procedure TFrmPedidoNovo.edPrazoSelect(Sender: tObject);
begin
     if edPrazo.idRetorno<>'' then
        edPrazoCodigo.Text:=edPrazo.idRetorno
     Else
         edPrazoCodigo.clear;
end;

procedure TFrmPedidoNovo.EdVendedorCodigoExit(Sender: tObject);
begin
     edVendedorCodigo.Text:=PreenchezeroEsquerda(edVendedorCodigo.Text,3);
     if edVendedorCodigo.Text<>'000' then
     begin
          edVendedor.idRetorno:=edVendedorCodigo.Text;
          if edVendedor.idRetorno='' then
             GeraException('Vendedor não localizado com o código informado');
     end
     Else
     begin
          edVendedorCodigo.clear;
          edVendedor.Clear;
     end;
end;

procedure TFrmPedidoNovo.edVendedorSelect(Sender: tObject);
begin
     if edVendedor.idRetorno<>'' then
     begin
        edVendedorCodigo.Text:=edVendedor.idRetorno;
        VerificaComissaoVendedor;
     end
     Else
         edVendedorCodigo.clear;
end;

procedure TFrmPedidoNovo.EdTransportadoraCodigoExit(Sender: tObject);
begin
     edTransportadoraCodigo.Text:=PreenchezeroEsquerda(edTransportadoraCodigo.Text,3);
     if edTransportadoraCodigo.Text<>'000' then
     begin
        edTransportadora.idRetorno:=edTransportadoraCodigo.Text;
        if edTransportadora.idRetorno='' then
           GeraException('Transportadora não localizada com o código informado');
     end
     Else
     begin
          edTransportadoraCodigo.clear;
          edTransportadora.Clear;
     end;
end;

procedure TFrmPedidoNovo.edCCustoCodigoExit(Sender: tObject);
begin
     edCCustoCodigo.Text:=PreenchezeroEsquerda(edCCustoCodigo.Text,3);
     if edCCustoCodigo.Text<>'000' then
     begin
        edCCusto.idRetorno:=edCCustoCodigo.Text;
        if edCCusto.idRetorno='' then
           GeraException('Centreo de Custo não localizado com o código informado');
     end
     Else
     begin
          edCCustoCodigo.clear;
          edCCusto.Clear;
     end;
end;

procedure TFrmPedidoNovo.Adicionar1Click(Sender: tObject);
begin
   AdicionaItem;
end;

procedure TFrmPedidoNovo.SpeedTipoClick(Sender: tObject);
begin
   if (not SqlCdsPedido.IsEmpty)and(SqlCdsTipoPedidoOPV_ORCAMENTO.AsString = 'S')and(SqlCdsPedidoCLI_CODIGO.AsString = '') then
      uteis.aviso('Somente poderá ser alterado o tipo do pedido quando, um cliente cadastrado estiver vinculado ao mesmo')
   else
   if (SqlCdsPedido.IsEmpty) then
   begin
         FrmPedidoTipoInicial := TFrmPedidoTipoInicial.Create(Application);
         try
            FrmPedidoTipoInicial.ShowModal;
         finally
            FreeAndNil( FrmPedidoTipoInicial );
         end;
   end
   else
   if (SqlCdsPedidoPED_SITUACAO.AsString = 'C') then
         uteis.aviso('O Pedido já não pode mais ser alterado pois já foi cancelado')
   else
   if (EdSituacao.Text = ' FATURADO TOTAL') then
         uteis.aviso('O Pedido já não pode mais ser alterado pois já foi faturado totalmente')
   else
   if (GravaPedido) then
   begin

         FrmPedidoTipo := TFrmPedidoTipo.Create(Application);
         try
            FrmPedidoTipo.ShowModal;
         finally
            FreeAndNil(FrmPedidoTipo);
         end;

         if (EdPedidoNumero.Text = '') then
            LimparCampos
         else
         begin
               BuscaPedido(EdPedidoNumero.Text);
               GravaPedido;
               if (SqlCdsTipoPedidoOPV_ORCAMENTO.AsString <> 'S') then
                  if (ClientePossuiFaturasAtrasadas(EdClienteCodigo.Text)) then
                     uteis.aviso('Este Cliente possui faturas em atraso');
         end;
   end;

   SetCfopOpvTipo( SqlCdsTipoPedidoOpv_TIPO.Asstring ) ;

end;

procedure TFrmPedidoNovo.SetCfopOpvTipo( tipo:string );
var vDentroForaEstado: string;
begin
   CdsCFOP.Close;
   if tipo<>'' then
   begin
        if not edCliente.ClientDS.active then
           vDentroForaEstado:='F'
        Else
        if edCliente.ClientDS.fieldbyname('CID_ESTADO').AsString=dbInicio.Empresa.UF then
           vDentroForaEstado:='D'
        Else
           vDentroForaEstado:='F';
        CdsCFOP.CommandText := SQLDEF( 'TABELAS',
                                       'Select OPE_CODIGO, OPE_NATUREZA||''-''||OPE_DESCRI as OPE_DESCRI FROM OPE0000','WHERE OPE_TIPO='+quotedstr(tipo)+' and OPE_DENTRO in ('+quotedstr(vDentroForaEstado)+','+quotedstr('I')+')',
                                       'OPE_NATUREZA','');
   end
   else // default
      CdsCFOP.CommandText := SQLDEF('TABELAS','Select OPE_CODIGO, OPE_NATUREZA||''-''||OPE_DESCRI as OPE_DESCRI FROM OPE0000','WHERE OPE_TIPO_OPERACAO <> ''C''','OPE_NATUREZA','');
   CdsCFOP.Open;
end;

procedure TFrmPedidoNovo.edCCustoSelect(Sender: tObject);
begin
     if edCCusto.idRetorno<>'' then
     begin
        edCCustoCodigo.Text:=edCCusto.idRetorno;
     end
     Else
         edCCustoCodigo.clear;
end;

procedure TFrmPedidoNovo.edFPagtoSelect(Sender: tObject);
begin
     if edFPagto.idRetorno<>'' then
     begin
           if (not bAdicionadoForma) then
           begin
                if (uteis.confirmacao  ( 'Gostaria de adicionar a forma de pagamento na Observação do Pedido ?')=mrYes) then
                begin
                     bAdicionadoForma := True;
                     MemoObservacaoPedido.Lines.Add('Forma de Pagamento: '+edFPagto.Text);
                end;
           end;
     end;
end;

procedure TFrmPedidoNovo.edTransportadoraSelect(Sender: tObject);
begin
     if edTransportadora.idRetorno<>'' then
     begin
        edTransportadoraCodigo.Text:=edTransportadora.idRetorno;
     end
     Else
          edTransportadoraCodigo.clear;
end;

procedure TFrmPedidoNovo.GravaMediaComissao;
begin
   CurComissaoVendedor.Value := 0;
   if (rTotalPedidoComDesconto > 0) and (rTotalComisPrecoLiquido > 0) then
      CurComissaoVendedor.Value := (rTotalComisPrecoLiquido / rTotalPedidoComDesconto )*100;
end;

procedure TFrmPedidoNovo.MovimentaEstoque(bStatus: Boolean);
begin
   if (bStatus) then
      begin
         LblMovimentaEstoque.Caption := 'Movimenta Estoque';
         LblMovimentaEstoque.Font.Color := clRed;
      end
   else
      begin
         LblMovimentaEstoque.Caption := 'Não Movimenta Estoque';
         LblMovimentaEstoque.Font.Color := clBlue;
      end;
   LblMovimentaEstoque.BringToFront ;
   
   if (FrmMenu.wAtualiza_Estoque = 'P') then
      LblMovimentaEstoque.Visible := True
   else
      LblMovimentaEstoque.Visible := False;
   if (not SqlCdsPedido.IsEmpty) then
      begin
         if (SqlCdsPedidoPED_SITUACAO.AsString = 'C') then
            begin
               LblMovimentaEstoque.Caption := SqlCdsPedidoPED_MOTIVO_CANCELAMENTO.AsString;
               LblMovimentaEstoque.Font.Color := clMaroon;
               LblMovimentaEstoque.Visible := True
            end;
      end;
end;

procedure TFrmPedidoNovo.ExcluirPedido;
var
   obs:String;
begin
   //Verifica se existe pedido
   if (SqlCdsPedido.IsEmpty) then
      begin
         uteis.aviso('Pedido não selecionado para cancelamento');
      end
   else
   if (SqlCdsPedidoPED_SITUACAO.AsString <> 'F') then
      begin
         uteis.aviso('Pedido não pode ser cancelado pois já possui faturas relacionadas');
      end
   else
   if (uteis.confirmacao ( ('Confirma o cancelamento do pedido '+EdPedidoNumero.Text))=mrYes) then
      begin
         bContinuaCancelamento := False;
         try
            FrmPedidoCancelemento := TFrmPedidoCancelemento.Create(Application);
            FrmPedidoCancelemento.ShowModal;
         finally
            FrmPedidoCancelemento.Destroy;
            FrmPedidoCancelemento := Nil;
         end;
         if (bContinuaCancelamento) then
            begin
               //Limpar itens
               SqlCdsPedidoItem.First;
               while (not SqlCdsPedidoItem.Eof) do
                  begin

                     //Limpa Retorno da Industrialização

                     try
                       ConsultaRetornoIndustrializacao;

                       DataCadastros.sqlUpdate2.Close;
                       DataCadastros.sqlUpdate2.sql.text := 'UPDATE ENF_IT01 SET ENF_QUANTIDADE_IND_RETORNO = ENF_QUANTIDADE_IND_RETORNO - '+ValorAmericano(FloatToStr(SqlCdsRetornoIndPEDIND_QUANTIDADE.AsFloat))+' WHERE ENF_REGISTRO = '+SqlCdsRetornoIndENF_REGISTRO.AsString;
                       DataCadastros.sqlUpdate2.ExecSql;

                       DataCadastros.sqlUpdate2.Close;
                       DataCadastros.sqlUpdate2.sql.text := 'DELETE FROM ped_it01_indust WHERE PRF_REGISTRO ='+SqlCdsPedidoItemPRF_REGISTRO.AsString;
                       DataCadastros.sqlUpdate2.ExecSql;
                     except

                     end;




                    ConsultaRetornoIndustrializacao;


                     if (SqlCdsTipoPedidoOPV_ATESTOQUE.AsString = 'S') then
                        begin
                           //Verifica se atualiza estoque pelo pedido
                           if (FrmMenu.wAtualiza_Estoque = 'P') then
                              begin
                                 KardexLancamento(SqlCdsPedidoItemPRF_REGISTRO.AsString,
                                                  'PED',
                                                  SqlCdsPedidoItem.FieldByName('AMX_CODIGO_DESTINO').AsString,
                                                  '',
                                                  SqlCdsPedidoItem.FieldByName('PRD_CODIGO').AsString,
                                                  SqlCdsPedidoItem.FieldByName('PRG_REGISTRO').AsString,
                                                  '',
                                                  iif(SqlCdsTipoPedidoOPV_TIPO.AsString = 'S','E','S'),
                                                  '',
                                                  SqlCdsPedidoItemPRDL_REGISTRO.AsString,
                                                  'EXCLUSÃO OU CANCELAMENTO DO PEDIDO',
                                                  Now,
                                                  SqlCdsPedidoItemPRF_QTDE.AsFloat,
                                                  SqlCdsPedidoPED_CODIGO.AsString,
                                                  edCliente.idRetorno+'-'+edCliente.Text,
                                                  SqlCdsPedidoItemPRF_PRECO.AsFloat);
                              end;
                        end;
                     //Delete item da tabela
                     //ExcluirPedidoItem(SqlCdsPedidoItemPRF_REGISTRO.AsInteger);
                     //Proximo
                     SqlCdsPedidoItem.Next;
                  end;
               //Exluir pedido da tabela
               //ExcluirPedidoCompleto(SqlCdsPedidoPED_REGISTRO.AsInteger);
               //Muda Tipo para Cancelado e adiciona na observação o motivo do Cancelamento
               BuscaPedido('');
               BuscaCliente('');
               BuscaPedidoItem('');
               HabilitaDesabilitaEdicao(False);
               uteis.aviso('Pedido Cancelado com sucesso');
            end;
         end;
end;

procedure TFrmPedidoNovo.PedidoNormal1Click(Sender: tObject);
begin
   ImprimePedido(true,'');
end;

procedure TFrmPedidoNovo.PedidosemValores1Click(Sender: tObject);
begin
   ImprimePedido(true,'SV');
end;

procedure TFrmPedidoNovo.LerImagem ;
begin
  DataCadastros.sqlUpdate.Close;
  DataCadastros.SqlUpdate.sql.text :='SELECT EMP_LOGO FROM EMP0000 WHERE EMP_CODIGO ='+QuotedStr(dbInicio.Empresa.EMP_CODIGO);
  DataCadastros.sqlUpdate.Open;
  if (not DataCadastros.sqlUpdate.IsEmpty) then
     begin
        if (DataCadastros.sqlUpdate.FieldByName('EMP_LOGO').AsString <> '') then
           begin
              stream := TMemoryStream.Create;
              stream := DataCadastros.sqlUpdate.CreateBlobStream(DataCadastros.sqlUpdate.FieldByName('EMP_LOGO'),bmRead);
              //FrmMenu.ImglogoMenu.saPicture.sa
              MinhaImagem := TJPEGImage.Create;
              MinhaImagem.LoadFromStream(stream);
              MinhaImagem.SaveToStream(stream);
              TfrxPictureView(relatorio.FindObject('LogoEmpresa')).Picture.Assign(MinhaImagem);
              if Assigned ( TfrxPictureView(relatorio.FindObject('LogoEmpresa2')) ) then
                 TfrxPictureView(relatorio.FindObject('LogoEmpresa2')).Picture.Assign(MinhaImagem);
           end;
     end;
end;
procedure TFrmPedidoNovo.SpeedButton1Click(Sender: tObject);
begin
     AdicionaItem;
end;

procedure TFrmPedidoNovo.EdPedidoNumeroExit(Sender: tObject);
begin
   EdPedidoNumero.Text := PreenchezeroEsquerda(EdPedidoNumero.Text,6);
   if (Trim(EdPedidoNumero.Text) <> '')and(EdPedidoNumero.Enabled) then
   begin
      if numeracaorepetida then
      begin
         EdPedidoNumero.Clear;
         EdPedidoNumero.SetFocus;
         Abort;
      end;
   end;
end;

Function TFrmPedidoNovo.NumeracaoRepetida: Boolean;
var vId : Integer;
    vSql : string ;
begin
     if (FrmMenu.wNumer_Pedido <> 'A') then // numaeração manual
     begin
          vSql := 'select count(*) '+
                  'from ped_cntnum a '+
                  //'join ped0000 b on b.emp_codigo = a.emp_codigo and a.ped_codigo = b.ped_codigo and b.id_pedido=a.id_pedido '+
                  'where a.emp_codigo='+qStr(DBInicio.Empresa.EMP_CODIGO)+
                  ' and a.ped_codigo = '+qStr(EdPedidoNumero.Text)+
                  ' and a.id_pedido<>'+inttostr( vIdPedido ) ;
          result := DBInicio.BuscaUmDadoSqlAsInteger( vSql ) > 0;
          if result then
          begin
               // testar se o pedido já foi salvo
               vSql := 'select count(*) '+
                       'from ped_cntnum a '+
                       'join ped0000 b on b.emp_codigo = a.emp_codigo and a.ped_codigo = b.ped_codigo and b.id_pedido=a.id_pedido '+
                       'where a.emp_codigo='+qStr(DBInicio.Empresa.EMP_CODIGO)+
                       ' and a.ped_codigo = '+qStr(EdPedidoNumero.Text)+
                       ' and a.id_pedido<>'+inttostr( vIdPedido ) ;
               result := DBInicio.BuscaUmDadoSqlAsInteger( vSql ) > 0;
               if Result then
                  uteis.Aviso('O pedido número '+EdPedidoNumero.Text+' já foi cadastrado!')
               else
                   Result := MessageDlg('O número '+EdPedidoNumero.Text+' informado para este pedido esta em uso !!!'+#13+#13+'Verifique se outro usuário não esta utilizando este número neste momento e só confirme se tiver certeza de que o pedido realmente não existe ou que outro usuário já não o esteja digitando!'+#13+#13+'Tem certeza que deseja usa-lo ?',mtConfirmation,[mbYes,mbNo],0 )<>mrYes
          end
          Else
          begin
               vId := DBInicio.BuscaUmDadoSqlAsInteger( 'select max(ID) '+
                                                        'from ped_cntnum a '+
                                                        'join ped0000 b on b.id_pedido=a.id_pedido '+
                                                        'where a.emp_codigo='+qStr(DBInicio.Empresa.EMP_CODIGO)+
                                                        ' and a.id_pedido='+inttostr( vIdPedido ) ) ;
               if vId = 0 then
                  dbInicio.MainDB.ExecuteDirect ('Insert into ped_cntnum ( id_pedido, ped_codigo, emp_codigo ) values ( '+inttostr(vIdPedido)+', '+qStr(EdPedidoNumero.Text)+', '+qStr(DBInicio.Empresa.EMP_CODIGO)+' )' )
               else
                  dbInicio.MainDB.ExecuteDirect ('update ped_cntnum set ped_codigo='+qStr(EdPedidoNumero.Text)+' where id = '+inttostr(vId));
          end;

     end
     Else
         Result := False;
end;

procedure TFrmPedidoNovo.CdSPedidoDIBeforeEdit(DataSet: TDataSet);
begin
   if (CdSPedidoDI.IsEmpty) then
      begin
         CdSPedidoDI.Insert;
      end;
end;
procedure TFrmPedidoNovo.EdNumeroPedidoClienteExit(Sender: tObject);
begin
   if (Trim(EdNumeroPedidoCliente.Text) <> '') then
      begin
         MemoMensagemAdicionalNotaFiscal.Text := StringReplace(MemoMensagemAdicionalNotaFiscal.Text,'Ordem do Cliente No:'+Trim(sPedidoClienteAnterior),'',[rfIgnoreCase,rfReplaceAll]);
         MemoMensagemAdicionalNotaFiscal.Text := 'Ordem do Cliente No.:'+Trim(EdNumeroPedidoCliente.Text)+' '+MemoMensagemAdicionalNotaFiscal.Text;
         if (Trim(EdNumeroPedidoCliente.Text) = '') then
            MemoMensagemAdicionalNotaFiscal.Text := StringReplace(MemoMensagemAdicionalNotaFiscal.Text,'Ordem do Cliente No:','',[rfIgnoreCase,rfReplaceAll]);
         MemoMensagemAdicionalNotaFiscal.Text := StringReplace(MemoMensagemAdicionalNotaFiscal.Text,'  ',' ',[rfIgnoreCase,rfReplaceAll]);
      end;
end;
procedure TFrmPedidoNovo.EdNumeroPedidoClienteEnter(Sender: tObject);
begin
   sPedidoClienteAnterior := EdNumeroPedidoCliente.Text;
end;

procedure TFrmPedidoNovo.Oramento1Click(Sender: tObject);
begin
   ImprimePedido(true,'OR');
end;
procedure TFrmPedidoNovo.EdPedidoTipoChange(Sender: tObject);
begin
   Caption := EdPedidoTipo.Text;
end;

procedure TFrmPedidoNovo.Image1Click(Sender: tObject);
begin
   if (SqlCdsTipoPedidoOPV_ORCAMENTO.AsString = 'S') then
   begin
         EdClienteCodigo.Clear;
         edCliente.idRetorno:='';
         GBInformacoesCliente.Visible := False;
         GBInformacoesOrcamento.Visible := True;
         edCliente.ShowButton  := False;
         EdOrsCliente.SetFocus;
   end
   else
         uteis.aviso(Pchar('Este '+EdPedidoTipo.Text+' não é do tipo orçamento'));
end;

procedure TFrmPedidoNovo.Image2Click(Sender: tObject);
begin
   EdOrsCliente.Clear;
   GBInformacoesOrcamento.Visible := False;
   GBInformacoesCliente.Visible := True;
   edCliente.ShowButton  := True;
end;

procedure TFrmPedidoNovo.SpeedButton2Click(Sender: tObject);
begin
   try
      FrmCadastroObservacao := TFrmCadastroObservacao.Create(Application);
      FrmCadastroObservacao.memo := MemoObservacaoPedido;
      FrmCadastroObservacao.ShowModal;
   finally
      FrmCadastroObservacao.Destroy;
      FrmCadastroObservacao :=Nil;
   end;
end;
procedure TFrmPedidoNovo.SpeedButton3Click(Sender: tObject);
begin
   try
      FrmCadastroObservacao := TFrmCadastroObservacao.Create(Application);
      FrmCadastroObservacao.memo := MemoMensagemAdicionalNotaFiscal;
      FrmCadastroObservacao.ShowModal;
   finally
      FrmCadastroObservacao.Destroy;
      FrmCadastroObservacao :=Nil;
   end;
end;
procedure TFrmPedidoNovo.EdOrsDiaEntregaExit(Sender: tObject);
begin
   DteEntrega.Date := Verificadiadata(DteEntrada.Date,EdOrsDiaEntrega.AsInteger);
end;
procedure TFrmPedidoNovo.DteEntregaExit(Sender: tObject);
begin
   if (DteEntrega.Text = '  /  /    ') then
      DteEntrega.Date := DteEntrada.Date;
   EdOrsDiaEntrega.AsInteger := Dias_Uteis(DteEntrada.Date,DteEntrega.Date);
end;
procedure TFrmPedidoNovo.DteEntradaExit(Sender: tObject);
begin
   if (DteEntrada.Text = '  /  /    ') then
      DteEntrada.Date := Now;
   DteEntrega.Date := Verificadiadata(DteEntrada.Date,EdOrsDiaEntrega.AsInteger);
end;
procedure TFrmPedidoNovo.EspelhodaNotaFiscal1Click(Sender: tObject);
begin
   ImprimePedido(true,'ESPELHO');
end;

procedure TFrmPedidoNovo.VerificaComissaoVendedor;
begin
   //Busca Informações dos Parâmetros
   dataCadastros.sqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text :=SqlDef('Parametros','Select PMT_ATULIZA_ESTOQUE,PMT_TUPPEDIDO,PMT_COMIS_GRP,PMT_VARIACOES,PMT_NUMER_PEDIDO,PMT_COMIS_REP,PMT_COMIS_SUP,PMT_COMIS_GER,PMT_PEDITEMDESC,PMT_ITENS_PEDIDO,PMT_KARDEX_PEDIDO,PMT_QTDE_DEC_PED FROM PRMT0001 ','','EMP_CODIGO','');
   dataCadastros.sqlUpdate.Open;
   bAlteraDesscricaodoItem := dataCadastros.sqlUpdate.FIELDBYNAME('PMT_PEDITEMDESC').AsString = 'S';
   bHabilitaConsultaCompraVenda := dataCadastros.sqlUpdate.FIELDBYNAME('PMT_KARDEX_PEDIDO').AsString = 'S';
   if (dataCadastros.sqlUpdate.FIELDBYNAME('PMT_COMIS_GRP').AsString = 'S') then
   begin
         CurComissaoVendedor.ReadOnly := False;
         CurComissaoVendedor.TabStop := True;
         CurComissaoVendedor.Color := clWhite;
         CurComissaoGerente.ReadOnly := False;
         CurComissaoGerente.TabStop := True;
         CurComissaoGerente.Color := clWhite;
         CurComissaoGerente.Font.Color := clBlack;
         CurComissaoSupervisor.ReadOnly := False;
         CurComissaoSupervisor.TabStop := True;
         CurComissaoSupervisor.Color := clWhite;
         CurComissaoSupervisor.Font.Color := clBlack;
         CurComissaoVendedor.Value := dataCadastros.sqlUpdate.FIELDBYNAME('PMT_COMIS_REP').AsFloat;
         rComissaoVendedor := dataCadastros.sqlUpdate.FIELDBYNAME('PMT_COMIS_REP').AsFloat;
         CurComissaoGerente.Value := dataCadastros.sqlUpdate.FIELDBYNAME('PMT_COMIS_GER').AsFloat;
         CurComissaoSupervisor.Value := dataCadastros.sqlUpdate.FIELDBYNAME('PMT_COMIS_SUP').AsFloat;
   end
   else
   begin
         CurComissaoVendedor.ReadOnly := False;
         CurComissaoVendedor.TabStop := True;
         CurComissaoVendedor.Color := clWhite;
         if (frmmenu.PARAMENTROS.PAR_COMISSAO_ITEM = 'S') OR (frmmenu.PARAMENTROS.PAR_COMISSAO_ESCALA = 'S') then
         begin
               CurComissaoVendedor.ReadOnly := True;
               CurComissaoVendedor.TabStop := False;
               CurComissaoVendedor.Color := $00d7d7d7;
               CurComissaoGerente.ReadOnly := True;
               CurComissaoGerente.TabStop := False;
               CurComissaoGerente.Color := $00d7d7d7;
               CurComissaoGerente.Font.Color := $00d7d7d7;
               CurComissaoSupervisor.ReadOnly := True;
               CurComissaoSupervisor.TabStop := False;
               CurComissaoSupervisor.Color := $00d7d7d7;
               CurComissaoSupervisor.Font.Color := $00d7d7d7;
         end
         else
         begin
               CurComissaoGerente.ReadOnly := True;
               CurComissaoGerente.TabStop := False;
               CurComissaoGerente.Color := $00d7d7d7;
               CurComissaoGerente.Font.Color := $00d7d7d7;
               CurComissaoSupervisor.ReadOnly := True;
               CurComissaoSupervisor.TabStop := False;
               CurComissaoSupervisor.Color := $00d7d7d7;
               CurComissaoSupervisor.Font.Color := $00d7d7d7;
         end;
   end;

   if not ((frmmenu.PARAMENTROS.PAR_COMISSAO_ITEM = 'S') or (frmmenu.PARAMENTROS.PAR_COMISSAO_ESCALA = 'S')) then
      if (CurComissaoVendedor.Value = 0) then
      begin    
         dataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :=SqlDef('TABELAS','Select REP_COMISSAO FROM REP0000 ','WHERE REP_CODIGO = '+QuotedStr(EdVendedorCodigo.Text),'EMP_CODIGO','');
         dataCadastros.sqlUpdate.Open;
         if (not dataCadastros.sqlUpdate.IsEmpty) then
         begin
               //if (dataCadastros.sqlUpdate.FieldByName('REP_COMISSAO').AsFloat > 0) then
               //   begin
                     CurComissaoVendedor.Value := dataCadastros.sqlUpdate.FieldByName('REP_COMISSAO').AsFloat;
                     rComissaoVendedor := dataCadastros.sqlUpdate.FieldByName('REP_COMISSAO').AsFloat;
               //   end;
         end;
         dataCadastros.sqlUpdate.Close;
      end;
end;

procedure TFrmPedidoNovo.MenuItem1Click(Sender: tObject);
begin
   ImprimePedido(False,'');
end;
procedure TFrmPedidoNovo.MenuItem2Click(Sender: tObject);
begin
   ImprimePedido(False,'SV');
end;
procedure TFrmPedidoNovo.MenuItem3Click(Sender: tObject);
begin
   ImprimePedido(False,'OR');
end;
procedure TFrmPedidoNovo.MenuItem4Click(Sender: tObject);
begin
   ImprimePedido(False,'ESPELHO');
end;
procedure TFrmPedidoNovo.JvArrowButton1Click(Sender: tObject);
begin
   if (SqlCdsTipoPedidoOPV_ORCAMENTO.AsString = 'S') then
      ImprimePedido(False,'OR')
   else
      ImprimePedido(False,'');
end;

function TFrmPedidoNovo.LiberaSairPedido: Boolean;
begin
   if (SqlCdsPedido.IsEmpty) then
      Result := True
   else
      begin
         if (BtnGravar.Enabled) then
            begin
               uteis.aviso('O Pedido não foi gravado!');
               Result := False;
            end
         else
         if (SqlCdsPedidoPED_SITUACAO.AsString = 'C') then
            begin
               Result := True;
            end
         else
         if (SqlCdsPedidoItem.IsEmpty) then
            begin
               uteis.aviso('O Pedido não possui item lançado, favor incluir um item ou Cancelar o pedido!');
               Result := False;
            end
         else
            Result := True;
      end;
end;

procedure TFrmPedidoNovo.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
   if not (LiberaSairPedido) then
      CanClose := False
   else
   begin
      CanClose := True;
      RemoverInfoNumeracaoPedido;
   end;
end;

procedure TFrmPedidoNovo.AlterarComisso1Click(Sender: tObject);
begin
  AlterarComissao;
end;
procedure TFrmPedidoNovo.AlterarComissao;
   var
      sComissao:String;
      rComissao:Currency;
begin
   if (SqlCdsPedidoItem.IsEmpty) then
      uteis.aviso('Não existe Item para alterar a comissão')
   else
      sComissao := InputBox('Alterar Comissão','Comissão',SqlCdsPedidoItemPRF_ITEMCOMIS.AsString);
   if (Trim(sComissao) = '') then
      sComissao := '0,00';
   try
      rComissao := StrToFloat(sComissao);
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :='UPDATE PED_IT01 set PRF_ITEMCOMIS = '+QuotedStr(ValorAmericano(sComissao))+' WHERE PRF_REGISTRO = '+SqlCdsPedidoItemPRF_REGISTRO.AsString;
      DataCadastros.sqlUpdate.Execsql;
      DataCadastros.sqlUpdate.Close;
      CalcutaTotalItens;
      GravaPedido;
   except
      uteis.aviso('Valor Informado é inválido');
   end;
end;
procedure TFrmPedidoNovo.SpeedButton4Click(Sender: tObject);
begin
   if (FrmMenu.wACESSOS_USUARIO.bReajusteVenda) then
      Reajuste
   else
      uteis.aviso('Sem permissão para realizar reajustes');
end;
procedure TFrmPedidoNovo.Reajuste;
begin
   if (SqlCdsPedido.IsEmpty) then
      begin
         uteis.aviso('Adicione um pedido');
      end
   else
   if (SqlCdsPedidoItem.IsEmpty) then
      begin
         uteis.aviso('O Pedido não contém itens');
      end
   else
   if (EdSituacao.Text <> ' À FATURAR') then
      begin
         uteis.aviso('Esta Função somente poderá ser utilizada em pedidos que não possuam faturamento');
      end
   else
   if (EdSituacao.Text = ' CANCELADO') then
      begin
         uteis.aviso('Esta Função somente poderá ser utilizada em pedidos não cancelados');
      end
   else
      begin
         //Chama Tela de de Reajuste
         try
            FrmPedidoReajuste := TFrmPedidoReajuste.Create(Application);
            FrmPedidoReajuste.ShowModal;
         finally
            FrmPedidoReajuste.Destroy;
            FrmPedidoReajuste := Nil;
         end;
         if bTipoPedidoCalculaST = True then
             RecalculaSTItem;

         CalcutaTotalItens;
         GravaPedido;
      end;
end;

procedure TFrmPedidoNovo.DupicarCopiar(sTipo:String);
begin
   if (sTipo = 'D') then //Duplicar
      begin
      end
   else
   if (sTipo = 'C') then //Copiar
      begin
      end;
end;

procedure TFrmPedidoNovo.edClienteButtonClick(Sender: tObject);
begin
     FormClienteGrid := TFormClienteGrid.Create(Application);
     try
        FormClienteGrid.Tag := -1;
        FormClienteGrid.ShowModal;
        if FormClienteGrid.ModalResult=mrOk then
           edCliente.idRetorno:=FormClienteGrid.CodigoRetorno;
     finally
          FreeAndNil(FormClienteGrid);
     end;
end;

procedure TFrmPedidoNovo.BtnDuplicarClick(Sender: tObject);
Var
  wProximo_Pedido : String;
begin
    if (LiberaSairPedido) then
       if (EdPedidoNumero.Text <> '') then
       begin
             FormPedidoDuplicar := TFormPedidoDuplicar.Create(Application);
             try
               FormPedidoDuplicar.Edt_Cod_Pedido.Text  := EdPedidoNumero.Text;
               FormPedidoDuplicar.Edt_Nome_Pedido.Text := edCliente.ClientDS.FieldByName('CLI_RAZAO').AsString;
               FormPedidoDuplicar.Edt_Cod_Cliente.Text  := edCliente.ClientDS.FieldByName('CLI_CODIGO').AsString;
               FormPedidoDuplicar.edClienteDestino.Text := edCliente.ClientDS.FieldByName('CLI_CODIGO').AsString;
               FormPedidoDuplicar.ShowModal;
             finally
                    FreeAndNil(FormPedidoDuplicar);
             end;

             if (sPedidoBusca <> '') then
             begin
                   BuscaPedido(sPedidoBusca);
                   BuscaPedidoItem(SqlCdsPedidoPED_CODIGO.AsString);
                   HabilitaDesabilitaEdicao(False);
             end;

       end
    else
           uteis.aviso('Nenhum Pedido Selecionado!');
end;

procedure TFrmPedidoNovo.DBEdit28Change(Sender: tObject);
begin
   btnGravarEndEntrega.Visible := False;
   btnEditarEndEntrega.Visible := False;
   if (DBEdit28.Text <> '') then
      begin
         btnEditarEndEntrega.Visible := True;
      end;
end;
procedure TFrmPedidoNovo.btnEditarEndEntregaClick(Sender: tObject);
begin
   DataCadastros.CdsClientes.Edit;
   DbeCli_Endentr.ReadOnly := False;
   DbeCli_Endentr.Color := clWhite;
   DBEdit18.ReadOnly := False;
   DBEdit18.Color := clWhite;
   DbeCli_cidentr.ReadOnly := False;
   DbeCli_cidentr.Color := clWhite;
   DbeCli_ufentr.ReadOnly := False;
   DbeCli_ufentr.Color := clWhite;
   DBEdit27.ReadOnly := False;
   DBEdit27.Color := clWhite;
   DbeCli_cepentr.ReadOnly := False;
   DbeCli_cepentr.Color := clWhite;
   btnEditarEndEntrega.Visible := False;
   btnGravarEndEntrega.Visible := True;
   DbeCli_Endentr.SetFocus;
end;
procedure TFrmPedidoNovo.btnGravarEndEntregaClick(Sender: tObject);
begin
   DbeCli_Endentr.ReadOnly := True;
   DbeCli_Endentr.Color := $00d7d7d7;
   DBEdit18.ReadOnly := True;
   DBEdit18.Color := $00d7d7d7;
   DbeCli_cidentr.ReadOnly := True;
   DbeCli_cidentr.Color := $00d7d7d7;
   DbeCli_ufentr.ReadOnly := True;
   DbeCli_ufentr.Color := $00d7d7d7;
   DBEdit27.ReadOnly := True;
   DBEdit27.Color := $00d7d7d7;
   DbeCli_cepentr.ReadOnly := True;
   DbeCli_cepentr.Color := $00d7d7d7;
   btnEditarEndEntrega.Visible := True;
   btnGravarEndEntrega.Visible := False;
   DataCadastros.CdsClientes.ApplyUpdates(0);
end;

procedure TFrmPedidoNovo.PageControl1Change(Sender: tObject);
begin
     sCodCliente := EdClienteCodigo.Text;
end;

procedure TFrmPedidoNovo.PedidoComImagem1Click(Sender: tObject);
begin
   ImprimePedido(true,'IMG');
end;
procedure TFrmPedidoNovo.PedidoComImagem2Click(Sender: tObject);
begin
   ImprimePedido(False,'IMG');
end;
procedure TFrmPedidoNovo.PedidoComImagemCentro1Click(Sender: tObject);
begin
   ImprimePedido(true,'IMGC');
end;
procedure TFrmPedidoNovo.PedidoComImagemGrande1Click(Sender: tObject);
begin
   ImprimePedido(true,'IMGG');
end;

procedure TFrmPedidoNovo.OramentoImagem1Click(Sender: tObject);
begin
   ImprimePedido(True,'IMG');
end;

procedure TFrmPedidoNovo.OramentoImagemGrande1Click(Sender: tObject);
begin
   ImprimePedido(True,'IMGG');
end;
procedure TFrmPedidoNovo.OramentoImagem2Click(Sender: tObject);
begin
   ImprimePedido(False,'IMG');
end;
procedure TFrmPedidoNovo.OramentoImagemGrande2Click(Sender: tObject);
begin
    ImprimePedido(False,'IMGG');
end;

procedure TFrmPedidoNovo.Romaneio2Click(Sender: tObject);
begin
   ImprimePedido(True,'ROM');
end;
procedure TFrmPedidoNovo.Romaneio1Click(Sender: tObject);
begin
   ImprimePedido(False,'ROM');
end;

procedure TFrmPedidoNovo.PedidoComLinha1Click(Sender: tObject);
begin
   ImprimePedido(False,'LINHA');
end;

procedure TFrmPedidoNovo.PedidoComLinhadoProduto1Click(Sender: tObject);
begin
   ImprimePedido(True,'LINHA');
end;

procedure TFrmPedidoNovo.OramentoComLinhadoProduto1Click(Sender: tObject);
begin
    ImprimePedido(True,'ORCAMENTOLINHA');
end;

procedure TFrmPedidoNovo.OramentoComLinhadoProduto2Click(Sender: tObject);
begin
    ImprimePedido(False,'ORCAMENTOLINHA');
end;

procedure TFrmPedidoNovo.CbCfopPropertiesChange(Sender: tObject);
begin
   CbCfop.Hint :=  CbCfop.Text;
end;
procedure TFrmPedidoNovo.RecalculaSTItem;
var
   rRetorno,
   wUfAliqMVA,
   wIcmsAliq,
   wCadProdAliqIcms,
   wUfAliqIcmsSubCli,
   rBaseIcms,
   rValorIcms,
   rBaseIcmsST,
   rPrecoTotal,
   wUfAliqIcmsForaEst,
   rValorST,
   wALiqICmsCliente,
   wUfAliqIcmsSubCliRegra,
   wReducaoBaseST
   :Currency;
   wCST_CODIGO,
   wCST_CODIGOProduto,
   wClassificacaoFiscal,
   wTemSubs,
   wExterior,
   wSeleciona:string;
   bLocalizadoRegra:Boolean;
   i:Integer;
   point:TBookmark;
begin
   if (bRecalculaSTGeral) then
     begin
        point := SqlCdsPedidoItem.GetBookmark;
        SqlCdsPedidoItem.DisableControls;
        SqlCdsPedidoItem.Refresh;
        SqlCdsPedidoItem.First;
        while (not SqlCdsPedidoItem.Eof) do
           begin
              rRetorno := 0;
              wUfAliqMVA := 0;
              wIcmsAliq := 0;
              wCadProdAliqIcms := 0;
              wUfAliqIcmsSubCli := 0;
              wUfAliqIcmsForaEst := 0;
              wUfAliqIcmsSubCliRegra := 0;
              wReducaoBaseST         := 0;
              rPrecoTotal := SqlCdsPedidoItemTOTAL.AsCurrency;
              wTemSubs := 'N';
              if (EdClienteUF.Text = '')and(cbbClienteEstado.Text <> '')and(GBInformacoesOrcamento.Visible) then
                 begin
                    EdClienteUF.Text := cbbClienteEstado.Text;
                 end;

              //Tipo do Pedido Calcula ST ?
              if (bTipoPedidoCalculaST)and(SqlCdsPedidoItemPRD_REFER.AsString <> '')and(sCfopClienteCodigo <> '')and(EdClienteUF.Text <> '') then
                 begin
                    //è Fora do Estado
                    //if (EdClienteUF.Text <> dbInicio.Empresa.UF) then
                    //   begin
                          //Busca Informações do Produto
                          DataCadastros.sqlUpdate1.Close;
                          DataCadastros.sqlUpdate1.sql.text:= SQLDEF('PRODUTOS','Select PR1.STB_TRIBUTACAO, PR1.IPI_CODIGO from PRD0000 PR1','where PR1.PRD_REFER = '''+SqlCdsPedidoItemPRD_REFER.AsString+'''','','PR1.');
                          DataCadastros.sqlUpdate1.Open;
                          {PRODUTO}
                          wCST_CODIGO := DataCadastros.sqlUpdate1.FieldByName('STB_TRIBUTACAO').AsString;
                          wCST_CODIGOProduto := DataCadastros.sqlUpdate1.FieldByName('STB_TRIBUTACAO').AsString;
                          wClassificacaoFiscal := DataCadastros.sqlUpdate1.FieldByName('IPI_CODIGO').AsString;
                          DataCadastros.sqlUpdate1.Close;
                          bLocalizadoRegra := False;
                          i := 8;
                          while (i >= 2) do
                             begin
                                DataCadastros.sqlUpdate1.Close;
                                DataCadastros.sqlUpdate1.sql.text:= SQLDEF('FISCAL','SELECT t1.* FROM ope_regra T1','where T1.ipi_codigo = '''+copy(wClassificacaoFiscal,1,I)+''' AND T1.opr_'+EdClienteUF.Text+' = ''S'' AND T1.ope_codigo_origem = '''+PreenchezeroEsquerda(sCfopClienteCodigo,3)+'''','','T1.');
                                DataCadastros.sqlUpdate1.open;
                                //Verifica se localizou alguma regra
                                if (not DataCadastros.sqlUpdate1.IsEmpty) then
                                   begin
                                      //Encontrou a regra e sai do laço
                                      bLocalizadoRegra := True;
                                      i := 0;
                                   end
                                else
                                   begin
                                      //Diminui 2 pois é a separação por genero da  classificação fiscal
                                      i := i -2;
                                   end;
                             end;
                          //Se nao localizou tenta pelo **
                          if (not bLocalizadoRegra) then
                             begin
                                DataCadastros.sqlUpdate1.Close;
                                DataCadastros.sqlUpdate1.sql.text:= SQLDEF('FISCAL','SELECT t1.* FROM ope_regra T1','where T1.ipi_codigo = ''**'' AND T1.opr_'+EdClienteUF.Text+' = ''S'' AND T1.ope_codigo_origem = '''+PreenchezeroEsquerda(sCfopClienteCodigo,3)+'''','','T1.');
                                DataCadastros.sqlUpdate1.open;
                                //Verifica se localizou alguma regra
                                if (not DataCadastros.sqlUpdate1.IsEmpty) then
                                   begin
                                      //Encontrou a regra e sai do laço
                                      bLocalizadoRegra := True;
                                   end
                             end;

                          if (bLocalizadoRegra)and(edCliente.ClientDS.fieldbyname('CLI_CONSFINAL').AsString <> 'S') then
                            begin
                                DataCadastros.CdsOperFisc.Open;
                                DataCadastros.CdsOperFisc.Locate('OPE_CODIGO',PreenchezeroEsquerda(DataCadastros.sqlUpdate1.FieldByName('OPE_DESTINO').AsString,3),[]);
                                // pega ST da regra
                                wCST_CODIGO := DataCadastros.sqlUpdate1.FieldByName('STB_TRIBUTACAO').AsString;
                                wReducaoBaseST         := DataCadastros.sqlUpdate1.FieldByName('OPR_REDUCAO_BASE_ST').AsFloat;
                                wUfAliqIcmsSubCliRegra := DataCadastros.sqlUpdate1.FieldByName('OPR_ALIQ_ST_UF').AsFloat;
                                if (edCliente.ClientDS.fieldbyname('CLI_CONSFINAL').AsString <> 'S') then
                                   begin
                                      //REGIME TRIBUTÁRIO DO SIMPLES TEM SEU MVA PROPRIO S=SIMPLES P = PRESUMIDO R = REAL
                                      if (edCliente.ClientDS.fieldbyname('CLI_REGIME_TRIBUTARIO').AsString = 'S') then
                                        begin
                                         if DataCadastros.sqlUpdate1.FieldByName('OPR_PERCENTUAL_MVA_SIMPLES').AsFloat > 0 then
                                            wUfAliqMVA := DataCadastros.sqlUpdate1.FieldByName('OPR_PERCENTUAL_MVA_SIMPLES').AsFloat
                                         else
                                            wUfAliqMVA := DataCadastros.sqlUpdate1.FieldByName('OPR_PERCENTUAL_MVA').AsFloat;
                                        end
                                       else
                                         wUfAliqMVA := DataCadastros.sqlUpdate1.FieldByName('OPR_PERCENTUAL_MVA').AsFloat;
                                   end;
                             end
                          else
                             begin
                                DataCadastros.CdsOperFisc.Open;
                                DataCadastros.CdsOperFisc.Locate('OPE_CODIGO',PreenchezeroEsquerda(sCfopClienteCodigo,3),[]);
                                // pega ST do cadastro do produto
                                wCST_CODIGO := wCST_CODIGOProduto;
                             end;
                          //se ST = 10 ou 60 tem st
                          if (wCST_CODIGO = '10')or(wCST_CODIGO = '60') then
                             begin
                                wTemSubs := 'S';
                             end
                          else
                             begin
                                wTemSubs := 'N';
                             end;
                          //Localiza Informações do Produto
                          DataCadastros.sqlUpdate1.Close;
                          DataCadastros.sqlUpdate1.sql.text:= SQLDEF('PRODUTOS','Select PR1.PRD_ALIQICM,PR1.PRD_ICMSUBS,PG1.PGR_COMISS,PR1.PRD_TEMSUB,PR1.STB_TRIBUTACAO from PRD0000 PR1 left join PRD_GRUPO PG1 ON PR1.PGR_CODIGO = PG1.PGR_CODIGO ','where PR1.PRD_REFER = '''+SqlCdsPedidoItemPRD_REFER.AsString+'''','PR1.PRD_REFER','PR1.');
                          DataCadastros.sqlUpdate1.Open;
                          wCadProdAliqIcms := DataCadastros.sqlUpdate1.FieldByName('PRD_ALIQICM').AsCurrency;
                          wIcmsAliq        := wCadProdAliqIcms;
                          wSeleciona := 'WHERE ICM_DESTINO = '''+EdClienteUF.Text+'''';
                          if (wIcmsAliq = 0) then
                             begin
                                DataCadastros1.CdsICMS.Close;
                                DataCadastros1.CdsICMS.CommandText := SQLDEF('TABELAS','SELECT * FROM ICM0000 ',wSeleciona,'ICM_DESTINO','');
                                DataCadastros1.CdsICMS.Open;
                                wIcmsAliq  := DataCadastros1.CdsICMSICM_ALIQ.AsCurrency;
                             end;
                          wSeleciona := 'WHERE ICM_DESTINO = '''+EdClienteUF.Text+'''';
                          // ver se cliente é do Exterior
                          wExterior := iif(EdClienteUF.Text = 'EX','S','N');
                          {Aliquotas de ICMS por UF origem}
                          DataCadastros1.CdsICMS.Close;
                          DataCadastros1.CdsICMS.CommandText := SQLDEF('TABELAS','SELECT * FROM ICM0000 ',wSeleciona,'ICM_DESTINO','');
                          DataCadastros1.CdsICMS.Open;
                          if DataCadastros1.CdsICMS.IsEmpty = false then
                             begin
                                {revisar}
                                wALiqICmsCliente  := DataCadastros1.CdsICMSICM_ALIQ.AsCurrency;
                                // nao calcular sub.trib. para consumirdor final e para cliente que usa no processo de industrialização
                                if (edCliente.ClientDS.fieldbyname('CLI_CONSFINAL').AsString = 'S') then
                                // or (FormFaturamento.SqlCdsPedidosCLI_CONSU_PROPRIO.AsString = 'S') then
                                   begin
                                      {Sem substituição tributária jko}
                                      wUfAliqIcmsForaEst:= DataCadastros1.CdsIcmsICM_ALIQ.AsCurrency;  {aliquota icms somente para destaque na NF}
                                      wUfAliqIcmsSubCli := 0;
                                      wUfAliqMVA        := 0;
                                   end
                                else
                                   begin
                                      {Com substituição tributária jko}
                                      wUfAliqIcmsForaEst:= DataCadastros1.CdsIcmsICM_ALIQ.AsCurrency;
                                      wUfAliqIcmsSubCli := DataCadastros1.CdsIcmsICMS_SUBS.AsCurrency;
                                      // se foi preenchido na tabela de ICMS dos estados o MVA o sistema prioriza perante a tabela de regras
                                      if DataCadastros1.CdsIcmsICM_MVA.AsCurrency > 0 then
                                        wUfAliqMVA        := DataCadastros1.CdsIcmsICM_MVA.AsCurrency;
                                      //wAliqreduzidaICMS := DataCadastros1.CdsIcmsICMS_REDUZIDO.AsCurrency;
                                   end;
                                  //Nova Regra venda fora do estado de mercadoria importada
                                 if (wExterior = 'N')and(DataCadastros1.CdsICMSICMS_PROD_IMPORTADO.AsFloat > 0)and((SqlCdsPedidoItemPRD_ORIGEM.AsString  = '1') or (SqlCdsPedidoItemPRD_ORIGEM.AsString  = '2') OR (SqlCdsPedidoItemPRD_ORIGEM.AsString  = '3')) then
                                   begin
                                     wUfAliqIcmsForaEst := DataCadastros1.CdsICMSICMS_PROD_IMPORTADO.AsFloat;
                                   end;
                             end
                          else
                             begin
                                //uteis.aviso('Favor cadastrar a tributação do ICMS desse cliente !');
                             end;
                          DataCadastros1.CdsICMS.Close;
                          if (wTemSubs = 'S')and
                             (wIcmsAliq > 0) then
                             begin
                                if (edCliente.ClientDS.fieldbyname('CLI_MODO_TRIB_ST').AsString = 'CNAE') and (edCliente.ClientDS.fieldbyname('CNAE_CARGA_TRIB_MEDIA').AsFloat > 0) then
                                  begin
                                     if (SqlCdsPedidoItemPRF_IPIALIQ.AsFloat > 0) then
                                        rPrecoTotal := rPrecoTotal + (SqlCdsPedidoItemTOTAL.AsFloat* (SqlCdsPedidoItemPRF_IPIALIQ.AsFloat/100));
                                     rRetorno := rPrecoTotal * (edCliente.ClientDS.fieldbyname('CNAE_CARGA_TRIB_MEDIA').AsFloat /100);
                                  end
                                else
                                  begin
                                    {UF destino}
                                    if (wUfAliqIcmsSubCliRegra > 0) then
                                       wUfAliqIcmsSubCli := wUfAliqIcmsSubCliRegra;
                                    rBaseIcms := StrToFloat(FormatFloat('#############0.00',rPrecoTotal));
                                    rBaseIcmsST := StrToFloat(FormatFloat('#############0.00',rBaseIcms + (rBaseIcms * (wUfAliqMVA/100))));

                                    {Reducao Base ST}
                                    if (wReducaoBaseST > 0)and(rBaseIcmsST > 0) then
                                       begin
                                          rBaseIcmsST := StrToFloat(FormatFloat('#############0.00',rBaseIcmsST - (rBaseIcmsST * (wReducaoBaseST/100))));
                                       end;

                                    rValorST := StrToFloat(FormatFloat('#############0.00',rBaseIcmsST * (wUfAliqIcmsSubCli/100)));
                                    rValorIcms :=  StrToFloat(FormatFloat('#############0.00',rBaseIcms * (wIcmsAliq/100)));
                                    if (rValorST > rValorIcms) then
                                       begin
                                          rRetorno :=  StrToFloat(FormatFloat('#############0.00',rValorST - rValorIcms));
                                       end;
                                  end;

                             end;
                      // end;
                 end;
              DataCadastros.sqlUpdate.Close;
              DataCadastros.SqlUpdate.sql.text :='UPDATE PED_IT01 SET PRF_VALOR_ST = '+ValorAmericano(FloatToStr(rRetorno))+' WHERE PRF_REGISTRO = '+SqlCdsPedidoItemPRF_REGISTRO.AsString;
              DataCadastros.sqlUpdate.Execsql;
              SqlCdsPedidoItem.Next;
           end;
           SqlCdsPedidoItem.Refresh;
           SqlCdsPedidoItem.GotoBookmark(point);
           SqlCdsPedidoItem.EnableControls;
     end;
end;
procedure TFrmPedidoNovo.CbCfopExit(Sender: tObject);
begin
   if (CbCfop.EditValue <> null) then
   begin
      sCfopClienteCodigo := CbCfop.EditValue;
   end;
end;

procedure TFrmPedidoNovo.EnviarPedidoProducao;
var
   sPedidoXML,retorno:WideString;
   data: TIdMultiPartFormDataStream;
   NodePai,NodeSec,NodeTmp: IXMLNode;
   sCodigo,mensagem, sDiretiva:String;
   memo: TMemo;

begin
   if (EdPedidoNumero.Text = '') then
      uteis.aviso('Selecione um pedido para enviar para producao')
   else
   if (not bEnviaProducao) then
      uteis.aviso('Tipo do Pedido não permite enviar para producao')
   else
   if (uteis.confirmacao ( 'Confirma o envio do pedido para Producao?')=mrYes) then
   begin

         memo:= TMemo.Create( self );
         memo.parent := self;
         try
            //Variaveis
            Memo.Clear;
            //Monta XML
            Memo.Lines.Add('<pedidoProducao>');
            Memo.Lines.Add('<empresaLicenciada>'+ExtrairNumeros(dbInicio.Empresa.CNPJ_CNPF)+'</empresaLicenciada>');
            Memo.Lines.Add('<empresa>'+ExtrairNumeros(EdCnpj.Text)+'</empresa>');
            Memo.Lines.Add('<numero>'+EdPedidoNumero.Text+'</numero>');
            Memo.Lines.Add('<dataEntrada>'+DteEntrada.Text+'</dataEntrada>');
            Memo.Lines.Add('<dataEntrega>'+DteEntrega.Text+'</dataEntrega>');
            Memo.Lines.Add('<observacao>'+MemoObservacaoPedido.Text+'</observacao>');
            //Filtra Itens
            Memo.Lines.Add('<pedidoProducaoItem>');
            SqlCdsPedidoItem.First;
            while (not SqlCdsPedidoItem.Eof) do
            begin
                  //Item do pedido
                  Memo.Lines.Add('<item>');
                  Memo.Lines.Add('<produtoServicoReferencia>'+SqlCdsPedidoItemPRD_REFER.AsString+'</produtoServicoReferencia>');
                  Memo.Lines.Add('<produtoServicoGrade>'+TiraAcento(SqlCdsPedidoItemPRG_DESCRICAO.AsString,true)+'</produtoServicoGrade>');
                  Memo.Lines.Add('<quantidade>'+AnsiReplaceStr(FormatFloat('0.0000' , SqlCdsPedidoItemPRF_QTDE.AsFloat), FormatSettings.DecimalSeparator , '.')+'</quantidade>');

                  if (SqlCdsPedidoItemPRDD_REGISTRO.AsInteger > 0) then
                  begin
                       DataCadastros.sqlUpdate2.Close;
                       DataCadastros.sqlUpdate2.sql.text := 'SELECT * FROM PRD_DIRETIVA WHERE PRDD_REGISTRO = '+SqlCdsPedidoItemPRDD_REGISTRO.AsString;
                       DataCadastros.sqlUpdate2.Open;
                       if (not DataCadastros.sqlUpdate2.IsEmpty) then
                          sDiretiva := DataCadastros.sqlUpdate2.FieldByName('PRDD_DESCRICAO').AsString
                       else
                          sDiretiva := '';
                       DataCadastros.sqlUpdate2.Close;
                       Memo.Lines.Add('<diretiva>'+TiraAcento(sDiretiva,True)+'</diretiva>');
                  end
                  Else
                  with dbinicio do
                  try
                     qAux.Close;
                     qAux.SQL.CLEAR;
                     qAux.SQL.add( 'Select B.PRDD_DESCRICAO' );
                     qAux.SQL.add( 'from PRD_DIRETIVA_ITEM A' );
                     qAux.SQL.add( '     join PRD_DIRETIVA B ON B.prdd_registro=A.prdd_registro' );
                     qAux.SQL.add( 'WHERE  A.prf_registro='+SqlCdsPedidoItemID_DIRETIVAS.AsString );
                     qAux.SQL.add( 'Order by B.PRDD_DESCRICAO' ) ;

                     if delphiaberto then
                        clipbrd.ClipBoard.asText:=qAux.SQL.Text ;

                     qAux.Open;

                     WHILE NOT qAux.EOF DO
                     BEGIN
                          Memo.Lines.Add('<diretiva>'+TiraAcento(qAux.FieldByName('PRDD_DESCRICAO').AsString,True)+'</diretiva>');
                          qAux.NEXT;
                     end;
                  Finally
                     qAux.Close;
                  end;

                  Memo.Lines.Add('</item>');

                  SqlCdsPedidoItem.Next;
            end;
            Memo.Lines.Add('</pedidoProducaoItem>');
            Memo.Lines.Add('</pedidoProducao>');

            //Transmite
            sPedidoXML := AnsiReplaceStr(Memo.Text,'#$D#$A','');
            sPedidoXML := AnsiReplaceStr(Memo.Text,'(','');
            sPedidoXML := AnsiReplaceStr(Memo.Text,')','');
            sPedidoXML := StringReplace(sPedidoXML, #$D#$A, '', [rfReplaceAll]);

            Memo.Text :=  sPedidoXML;

            data := TIdMultiPartFormDataStream.Create;
            data.AddFormField('xml',UTF8Encode(sPedidoXML), 'utf-8').ContentTransfer := '8bit' ;

            memo.Lines.savetofile( ExtractFilePath( Application.ExeName )+'/arquivo/diretivas_ped_'+SqlCdsPedidoPED_CODIGO.asstring+'.xml');
         finally
                FreeAndNil(memo);
         end;
         
         if not delphiaberto then // jamais enviar em design time
         begin
            try
               IdHTTP1.ReadTimeout := 3000;
               retorno := FrmMenu.sCaminhoServidorPCP+'webService/recepcaoPedidoProducao?lang=pt_BR';
               retorno := IdHTTP1.Post(FrmMenu.sCaminhoServidorPCP+'webService/recepcaoPedidoProducao?lang=pt_BR', data{, IndyUTF8Encoding});


               //le xml de retorno
               vXMLDoc.XML.Clear;
               vXMLDoc.XML.Add(retorno);
               vXMLDoc.Active := True;
               NodePai := vXMLDoc.DocumentElement.ChildNodes.First;
               NodePai.ChildNodes.First;
               sCodigo := '';
               repeat
                  if (NodePai.NodeName = 'status') then
                     sCodigo := NodePai.Text
                  else
                  if (NodePai.NodeName = 'msg') then
                     mensagem := NodePai.Text;

                  if (NodePai.NodeName = 'erros') then
                  begin
                        NodeSec := NodePai.ChildNodes.First;
                        repeat
                           mensagem := mensagem+' '+ NodeSec.Text;
                           NodeSec := NodeSec.NextSibling;
                        until NodeSec = nil;
                  end;
                  NodePai := NodePai.NextSibling;
               until NodePai = nil;
               //se importado pelo pcp atualiza quantidades
               if (sCodigo = 'OK') then
                  begin
                     DataCadastros.sqlUpdate.Close;
                     DataCadastros.SqlUpdate.sql.text :='UPDATE PED0000 SET PED_PCP_SIT_PRODUCAO = ''E'' WHERE PED_CODIGO = '+QuotedStr(EdPedidoNumero.Text)+ ' and EMP_CODIGO ='+QuotedStr(dbInicio.Empresa.EMP_CODIGO) ;
                     DataCadastros.sqlUpdate.Execsql;

                     uteis.aviso(PChar('Mensagem : '+mensagem));

                  end
               else
                  begin
                     uteis.aviso(PChar('Problemas : '+mensagem));
                  end;
            except
             on E : Exception do
               uteis.aviso(pchar('Problemas ao se conectar com o Webservice '+E.Message));
            end;
         end;

      end;
end;

procedure TFrmPedidoNovo.btnRemoverIndustrializacaoClick(Sender: tObject);
begin
  //Verifica se Tem Item no Pedido
  if (SqlCdsRetornoInd.IsEmpty) then
     uteis.aviso('Não existe registro para ser excluído')
  else
  begin
      if (uteis.confirmacao ( 'Confirma a desvinculação de retorno ?')=mrYes) then
      begin
          DataCadastros.sqlUpdate2.Close;
          DataCadastros.sqlUpdate2.sql.text := 'DELETE FROM ped_it01_indust WHERE pedind_registro ='+SqlCdsRetornoIndPEDIND_REGISTRO.AsString;
          DataCadastros.sqlUpdate2.ExecSql;

          DataCadastros.sqlUpdate2.Close;
          DataCadastros.sqlUpdate2.sql.text := 'UPDATE ENF_IT01 SET ENF_QUANTIDADE_IND_RETORNO = ENF_QUANTIDADE_IND_RETORNO - '+ValorAmericano(FloatToStr(SqlCdsRetornoIndPEDIND_QUANTIDADE.AsFloat))+' WHERE ENF_REGISTRO = '+SqlCdsRetornoIndENF_REGISTRO.AsString;
          DataCadastros.sqlUpdate2.ExecSql;

          ConsultaRetornoIndustrializacao;
      end;

  end;
end;

procedure TFrmPedidoNovo.ConsultaRetornoIndustrializacao;
begin
  //
  SqlCdsRetornoInd.Close;
  if (not SqlCdsPedidoItem.IsEmpty) then
    begin

      SqlCdsRetornoInd.CommandText := ' select t1.ENF_REGISTRO, '+
                                      '    t1.pedind_registro, '+
                                      '    t6.enf_entrada, '+
                                      '    t6.enf_notanumber, '+
                                      '    t6.for_codigo, '+
                                      '    t7.for_razao, '+
                                      '    t5.prd_refer, '+
                                      '    t5.prd_descri, '+
                                      '    t5.enf_qtde, '+
                                      '    t1.pedind_quantidade '+
                                      ' from ped_it01_indust t1 '+
                                      ' left join enf_it01 t5 on (t5.enf_registro = t1.enf_registro) '+
                                      ' left join enf0001 t6 on (t6.enf_notanumber = t5.enf_it_notanumber and t6.for_codigo = t5.for_codigo) '+
                                      ' left join for0000 t7 on (t7.for_codigo = t6.for_codigo) '+
                                      ' where t1.prf_registro = '+SqlCdsPedidoItemPRF_REGISTRO.AsString;
      SqlCdsRetornoInd.Open;

    end;

end;

procedure TFrmPedidoNovo.btnVincularIndustrializacaoClick(Sender: tObject);
begin
  if (SqlCdsPedidoItem.IsEmpty) then
    begin
      uteis.aviso('Não existe item para vincular');
    end
  else
    begin
      try
        FrmVinculacaoIndustrializacaoRetorno := TFrmVinculacaoIndustrializacaoRetorno.Create(Application);
        FrmVinculacaoIndustrializacaoRetorno.sPrdCodigo := SqlCdsPedidoItemPRD_CODIGO.AsString;
        FrmVinculacaoIndustrializacaoRetorno.iRegistroPedidoItem := SqlCdsPedidoItemPRF_REGISTRO.AsString;
        FrmVinculacaoIndustrializacaoRetorno.rQuantidade := SqlCdsPedidoItemPRF_QTDE.AsFloat;
        FrmVinculacaoIndustrializacaoRetorno.ShowModal;
      finally
        FrmVinculacaoIndustrializacaoRetorno.Destroy;
        FrmVinculacaoIndustrializacaoRetorno := nil;
      end;
      ConsultaRetornoIndustrializacao;
    end;

end;

procedure TFrmPedidoNovo.RetornoIndustrializacao;
begin
  if (BtnGravar.Enabled) then
      begin
         BtnGravarClick(Self);
      end;
   if (SqlCdsPedido.IsEmpty) then
      begin
         uteis.aviso('Adicione um pedido antes de colocar os itens');
      end
   else
   if (SqlCdsPedidoPED_SITUACAO.AsString = 'C') then
      begin
         uteis.aviso('Não pode mais adicionar item no pedido. Já foi cancelado');
      end
   else
   if (EdSituacao.Text = ' FATURADO TOTAL') then
      begin
         uteis.aviso('Não pode mais adicionar item no pedido. Já foi faturado totalmente');
      end
   else
   if (SqlCdsTipoPedidoOPV_INDUSTRIALIZACAO.AsString <> 'S') then
     begin
        uteis.aviso('O Tipo do Pedido não é de industrialização');
        wRetornoInd := False;
     end
   else
  if (GravaPedido) then
    begin
      try
        FrmVinculacaoIndustrializacaoRetorno := TFrmVinculacaoIndustrializacaoRetorno.Create(Application);
        FrmVinculacaoIndustrializacaoRetorno.sFornecedorCnpj := ExtrairNumeros(EdCnpj.Text);
        FrmVinculacaoIndustrializacaoRetorno.ShowModal;
      finally
        FrmVinculacaoIndustrializacaoRetorno.Destroy;
        FrmVinculacaoIndustrializacaoRetorno := nil;
      end;
      BuscaPedidoItem(EdPedidoNumero.Text);
      GravaPedido;
      CalcutaTotalItens;

    end;
end;

procedure TFrmPedidoNovo.PedidoSemItensdopKIT1Click(Sender: tObject);
begin
  bPedidoSemItemKit := True;
  ImprimePedido(true,'');
  bPedidoSemItemKit := False;

end;

procedure TFrmPedidoNovo.CdsClienteContatoAfterPost(DataSet: TDataSet);
begin
  CdsClienteContato.ApplyUpdates(0);
  CdsClienteContato.Refresh;
end;

procedure TFrmPedidoNovo.CdsClienteContatoBeforePost(DataSet: TDataSet);
begin
  if (EdClienteCodigo.Text <> '') then
    CdsClienteContatoCLI_CODIGO.AsString := EdClienteCodigo.Text;
end;

procedure TFrmPedidoNovo.OrcamentoImagemSomenteTotal1Click(Sender: tObject);
begin
  ImprimePedido(True,'ORCAMENTOIMAGEMTOTAL');
end;

procedure TFrmPedidoNovo.OrcamentoImagemSomenteTotal2Click(Sender: tObject);
begin
  ImprimePedido(False,'ORCAMENTOIMAGEMTOTAL');
end;

procedure TFrmPedidoNovo.RomaneioM31Click(Sender: tObject);
begin
   ImprimePedido(True,'ROM3');
end;

procedure TFrmPedidoNovo.RomaneioM32Click(Sender: tObject);
begin
  ImprimePedido(False,'ROM3');
end;

procedure TFrmPedidoNovo.AtualizaSaldos;
var
  tmp:Real;
begin
   CurTotalEstoqueEmpresa.Clear;
   SqlCdsSaldos.Close;
   SqlCdsSaldos.CommandText := SQLDEF('PRODUTOS','SELECT T1.emp_codigo,T2.emp_razao,SUM(T1.kas_saldo) AS SALDO FROM kardex_almox_saldo T1 JOIN emp0000 T2 ON (T2.emp_codigo = T1.emp_codigo)','WHERE T1.prd_codigo = '+QuotedStr(SQLReservaPedPRD_CODIGO.AsString),'','t1.')+' GROUP BY T1.emp_codigo, T2.emp_razao';
   SqlCdsSaldos.Open;
   SqlCdsSaldos.DisableControls;
   SqlCdsSaldos.First;
   while (not SqlCdsSaldos.Eof) do
      begin
         CurTotalEstoqueEmpresa.Value := CurTotalEstoqueEmpresa.Value +  SqlCdsSaldosSALDO.AsFloat;
         SqlCdsSaldos.Next;
      end;
   SqlCdsSaldos.First;
   SqlCdsSaldos.EnableControls;
end;

procedure TFrmPedidoNovo.DsReservaPedDataChange(Sender: tObject;
  Field: TField);
begin
  AtualizaSaldos;
end;


procedure TFrmPedidoNovo.SqlCdsPedidoItemCalcFields(DataSet: TDataSet);
begin
  SqlCdsPedidoItemSequencia.AsInteger := SqlCdsPedidoItem.RecNo;
end;

procedure TFrmPedidoNovo.FormCreate(Sender: tObject);
begin
     SELF.Width:=985;
     SELF.Height:=640;
     vIdPedido:=0;
     pagecontrol3.ActivePageIndex:=0;



     {edPrazo.ShowButton:=False;
     edVendedor.ShowButton:=False;
     edTransportadora.ShowButton:=False;
     edFPagto.ShowButton:=False;
     edCCUSTO.ShowButton:=False;}

     edCliente.FiltroTabela:=ConcatSe('t1.',dbInicio.ExclusivoSql('CLIENTES'));
     if (dbInicio.Empresa.bVisualizaClientes_P) and (dbInicio.Usuario.Codigo_REPRES <> '000') then
     begin
          if edCliente.FiltroTabela<>'' then
             edCliente.FiltroTabela:=edCliente.FiltroTabela+' and ';
          edCliente.FiltroTabela:=edCliente.FiltroTabela+'REP_CODIGO ='+qStr(dbInicio.Usuario.Codigo_REPRES);
     end;

     edPrazo.FiltroTabela:=dbInicio.ExclusivoSql('PRAZOS');
     edVendedor.FiltroTabela:=dbInicio.ExclusivoSql('TABELAS');
     edTransportadora.FiltroTabela:=dbInicio.ExclusivoSql('TABELAS');
     edFPagto.FiltroTabela:=dbInicio.ExclusivoSql('TABELAS');
     edCCUSTO.FiltroTabela:=ConcatSE(dbInicio.ExclusivoSql('TABELAS'),' and ')+'PCX_TIPO = '+qStr('L');

end;

procedure TFrmPedidoNovo.SqlCdsPedidoItemPRD_REFERGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
     if Sender.asstring='' then
        text:=SqlCdsPedidoItemPRDCO_CODIGO_ORIGINAL.AsString
     else
        text:=Sender.AsString ;
end;

procedure TFrmPedidoNovo.RomaneioBSC1Click(Sender: tObject);
begin
   ImprimePedido(True,'BSC');
end;


procedure TFrmPedidoNovo.OramentoMais1Click(Sender: tObject);
begin
     ImprimePedido(True, 'ORCMAIS');
end;

procedure TFrmPedidoNovo.OramentoMais2Click(Sender: tObject);
begin
     ImprimePedido(False, 'ORCMAIS');
end;

procedure TFrmPedidoNovo.RomaneioPlanilha1Click(Sender: tObject);
begin
   ImprimePedido(False,'BSC');
end;

end.

