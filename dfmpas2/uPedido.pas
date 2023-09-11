
unit uPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, BaseDbEstoqueForm,
  Dialogs, ExtCtrls, StdCtrls, Mask,  rxToolEdit, Buttons, Grids, DBGrids,  rxCurrEdit,
  ComCtrls, SqlExpr, Provider, DB, DBClient, Menus,
  ImgList, frxClass, frxExportPDF, frxDBSet, FMTBCd, DBCtrls, RXDBCtrl,
  jpeg, xmldom, XMLIntf, msxmldom, XMLDoc,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, vcl.ClipBrd,
  IdMultipartFormData, StrUtils, IdGlobal, JvExStdCtrls, JvCombobox,
  JvDBCombobox, TeEngine, Series, TeeProcs, Chart, System.ImageList,
  JvToolEdit, Data.DBXFirebird, SgDbSeachComboUnit,   ACBrUtil,
  SgDbAutoF8Unit, SgDbLookupComboUnit, ACBrEnterTab, ACBrBase, ACBrCalculadora, BaseForm, JvExControls, JvArrowButton, JvExMask, JvDBControls, JvExComCtrls, JvComCtrls,  pesqcodigooriginal,
  JvValidators, JvComponentBase, JvErrorIndicator, JvMaskEdit, VclTee.TeeGDIPlus, BaseTelaRelatorioForm, dateutils, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, JvAnimatedImage, JvGIFCtrl, FireDAC.Stan.Async, FireDAC.DApt, JvEdit, JvValidateEdit;

type
  TItens = class
  private
    FReferencia: String;
    FQtd: String;
    FPreco: String;
  public
    property Referencia : String read FReferencia write FReferencia;
    property Qtd        : String read FQtd        write FQtd;
    property Preco      : String read FPreco      write FPreco;
  end;



type
  TFrmPedido = class(TfrmBaseDbEstoque)
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
    GBInformacoesPedido: TGroupBox;
    SqlCdsPedido: tSqlQuery;
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
    SqlCdsPedidoItem: tClientDataSet;
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
    BtnAlterar: TBitBtn;
    SqlCdsTipoPedido: tSqlQuery;
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
    SqlCdsVendaItemHistorico: tClientDataSet;
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
    SqlPedidoDI: TSQLQuery;
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
    SQLPedidoDIAdicao: TSQLQuery;
    SQLPedidoDIAdicaoPDA_REGISTRO: TIntegerField;
    SQLPedidoDIAdicaoPID_REGISTRO: TIntegerField;
    SQLPedidoDIAdicaoPDA_ADICAO: TIntegerField;
    SQLPedidoDIAdicaoPDA_SEQ_ADICAO: TIntegerField;
    SQLPedidoDIAdicaoPDA_CODIGO_FABRICANTE: TStringField;
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
    SQLClienteProd: tClientDataSet;
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
    TabVendasFaturar: TTabSheet;
    dsPedidosFaturar: TDataSource;
    DsReservaPed: TDataSource;
    GroupBox15: TGroupBox;
    dbgridProdutosaFaturar: TDBGrid;
    BitPesqReservaProd: TBitBtn;
    BitCancelaReservaProd: TBitBtn;
    GroupBox16: TGroupBox;
    EditProdReserva: TEdit;
    GroupBox17: TGroupBox;
    dbgridPedidoFaturar: TDBGrid;
    Bit_Sair: TBitBtn;
    Adicionar1: TMenuItem;
    BtnImprimir: TJvArrowButton;
    PopupMenuImpressao: TPopupMenu;
    PedidoNormal1: TMenuItem;
    PedidosemValores1: TMenuItem;
    CdSPedidoDILancado: TClientDataSet;
    DSPedidoDILancado: TDataSource;
    SQLCdSPedidoDILancado: TSQLQuery;
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
    EspelhodaNotaFiscal1: TMenuItem;
    SqlCdsPedidoItemPRD_PRODSERV: TStringField;
    PopupMenu1: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    BtnEmail: TJvArrowButton;
    N1: TMenuItem;
    AlterarComisso1: TMenuItem;
    SqlCdsPedidoPMT_MOTIVO: TStringField;
    SqlCdsPedidoPED_MOTIVO_CANCELAMENTO: TStringField;
    pmDuplicar: TPopupMenu;
    Duplicar1: TMenuItem;
    Copiar1: TMenuItem;
    SqlCdsPedidoItemPRF_ACRESCIMO: TFMTBCdField;
    OramentoImagem1: TMenuItem;
    OramentoImagemGrande1: TMenuItem;
    OramentoImagem2: TMenuItem;
    OramentoImagemGrande2: TMenuItem;
    SqlCdsPedidoItemPRF_QTDE_ENV_PRODUCAO: TFMTBCdField;
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
    SqlCdsTipoPedidoOPV_CALCULA_ST: TStringField;
    SqlCdsPedidoItemPRD_UND: TStringField;
    SqlCdsPedidoOPE_CODIGO: TIntegerField;
    DsCfop: TDataSource;
    CdsCFOP: tClientDataSet;
    CdsCFOPOPE_CODIGO: TStringField;
    CdsCFOPOPE_DESCRI: TStringField;
    SqlCdsPedidoItemPRD_ORIGEM: TIntegerField;
    SqlCdsPedidoPED_ORS_ESTADO: TStringField;
    SqlCdsPedidoItemPRG_DESCRICAO: TStringField;
    IdHTTP1: TIdHTTP;
    vXMLDoc: TXMLDocument;
    SqlCdsTipoPedidoOPV_PRODUCAO: TStringField;
    SqlCdsPedidoCENTRO_CUSTO_CLIENTE: TStringField;
    SqlCdsPedidoFPG_REGISTRO: TIntegerField;
    SqlCdsRetornoInd: tClientDataSet;
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
    SqlCdsTipoPedidoOPV_INDUSTRIALIZACAO: TStringField;
    SqlPedidoDIPID_VIA_TRANSPORTE: TIntegerField;
    SqlPedidoDIPID_VALOR_AFRMM: TFMTBCdField;
    SqlPedidoDIPID_FORMA_IMPORTACAO: TIntegerField;
    SqlPedidoDIPID_CNPJ_ADQUIRENTE: TStringField;
    SqlPedidoDIPID_UF_ADQUIRENTE: TStringField;
    CdSPedidoDIPID_VIA_TRANSPORTE: TIntegerField;
    CdSPedidoDIPID_VALOR_AFRMM: TFMTBCdField;
    CdSPedidoDIPID_FORMA_IMPORTACAO: TIntegerField;
    CdSPedidoDIPID_CNPJ_ADQUIRENTE: TStringField;
    CdSPedidoDIPID_UF_ADQUIRENTE: TStringField;
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
    SqlCLienteContato: TSQLQuery;
    SqlCLienteContatoCC_REGISTRO: TIntegerField;
    SqlCLienteContatoCLI_CODIGO: TStringField;
    SqlCLienteContatoCC_NOME: TStringField;
    SqlCLienteContatoCC_CARGO: TStringField;
    SqlCLienteContatoCC_TELEFONE: TStringField;
    SqlCLienteContatoCC_CELULAR: TStringField;
    SqlCLienteContatoCC_RAMAL: TStringField;
    SqlCLienteContatoCC_EMAIL: TStringField;
    grpContatos: TGroupBox;
    dbgrdContatos: TDBGrid;
    OrcamentoImagemSomenteTotal1: TMenuItem;
    OrcamentoImagemSomenteTotal2: TMenuItem;
    SqlCdsPedidoPED_EXP_UF: TStringField;
    SqlCdsPedidoPED_EXP_LOCAL_EXP: TStringField;
    SqlCdsPedidoPED_EXP_LOCAL_RECINTO: TStringField;
    SqlCdsPedidoItemPRDD_REGISTRO: TIntegerField;
    SqlCdsPedidoItemPRF_TABPRECO: TStringField;
    SqlCdsPedidoItemPRDCO_CODIGO_ORIGINAL: TStringField;
    SqlCdsPedidoItemPRDD_SIGLA: TStringField;
    RomaneioM31: TMenuItem;
    RomaneioM32: TMenuItem;
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
    SqlCdsGraficoVendas: tSqlQuery;
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
    GroupBox19: TGroupBox;
    Label115: TLabel;
    dbGridSaldo: TDBGrid;
    CurTotalEstoqueEmpresa: TCurrencyEdit;
    DsSaldos: TDataSource;
    SqlCdsSaldos: tClientDataSet;
    SqlCdsSaldosEMP_CODIGO: TStringField;
    SqlCdsSaldosEMP_RAZAO: TStringField;
    SqlCdsSaldosSALDO: TFMTBCdField;
    SqlCdsPedidoItemSequencia: TIntegerField;
    SqlCdsPedidoItemID_DIRETIVAS: TIntegerField;
    SqlCdsPedidoItemPRF_IDESCTO1: TFloatField;
    SqlCdsPedidoItemPRF_IDESCTO2: TFloatField;
    RomaneioBSC1: TMenuItem;
    OramentoMais1: TMenuItem;
    OramentoMais2: TMenuItem;
    RomaneioPlanilha1: TMenuItem;
    qCli: TSQLQuery;
    qPrazo: TSQLQuery;
    qRep: TSQLQuery;
    qTransp: TSQLQuery;
    qFPagto: TSQLQuery;
    qCCusto: TSQLQuery;
    Lookup1: TsgDBLookupCombo;
    qCfop: TSQLQuery;
    DspCdsVendaItemHistorico: TDataSetProvider;
    qCdsVendaItemHistorico: TSQLQuery;
    qPedidosFaturar: TSQLQuery;
    DspClienteProd: TDataSetProvider;
    qClienteProd: TSQLQuery;
    dspCdsPedidoItem: TDataSetProvider;
    qCdsPedidoItem: TSQLQuery;
    dspCdsCFOP: TDataSetProvider;
    qCdsCFOP: TSQLQuery;
    dspSqlCdsSaldos: TDataSetProvider;
    qSqlCdsSaldos: TSQLQuery;
    dspSqlCdsRetornoInd: TDataSetProvider;
    qSqlCdsRetornoInd: TSQLQuery;
    Panel2: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    SqlCdsPedidoSITEXP: TStringField;
    Panel10: TPanel;
    Panel11: TPanel;
    Label111: TLabel;
    DBEdit9: TDBEdit;
    Label110: TLabel;
    DBEdit11: TDBEdit;
    DBNavigator3: TDBNavigator;
    DBEdit12: TDBEdit;
    Label109: TLabel;
    Label108: TLabel;
    DBEdit13: TDBEdit;
    Label107: TLabel;
    DBEdit14: TDBEdit;
    DBEdit10: TDBEdit;
    Label112: TLabel;
    pnFrete: TPanel;
    CurVlrKM: TCurrencyEdit;
    Label23: TLabel;
    Label118: TLabel;
    CurFator: TCurrencyEdit;
    CurQtdeTonelada: TCurrencyEdit;
    Label119: TLabel;
    Button1: TButton;
    Button2: TButton;
    PageControl4: TPageControl;
    TabSheet5: TTabSheet;
    GBInformacoesCliente: TGroupBox;
    Label5: TLabel;
    LblCnpj: TLabel;
    LblIE: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    EdCnpj: TEdit;
    EdIE: TEdit;
    EdClienteCidade: TEdit;
    EdClienteUF: TEdit;
    EdClienteTelefone: TEdit;
    EdClienteCodigo: TEdit;
    PainelClienteSemCadastro: TPanel;
    Image1: TImage;
    edCliente: TSgDbSearchCombo;
    pnlAtraso: TPanel;
    Image3: TImage;
    GBInformacoesOrcamento: TGroupBox;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    lblEstado: TLabel;
    EdOrsCliente: TEdit;
    EdOrsEmail: TMaskEdit;
    EdOrsFax: TMaskEdit;
    Image2: TImage;
    cbbClienteEstado: TComboBox;
    TabSheet6: TTabSheet;
    DBGrid6: TDBGrid;
    sqlClienteEnder: TSQLQuery;
    sqlClienteEnderCODIGO: TIntegerField;
    sqlClienteEnderCOD_CLIENTE: TIntegerField;
    sqlClienteEnderCOD_CIDADE: TIntegerField;
    sqlClienteEnderCOD_PAIS: TIntegerField;
    sqlClienteEnderDESCRICAO: TStringField;
    sqlClienteEnderCOMPLEMENTO: TStringField;
    sqlClienteEnderBAIRRO: TStringField;
    sqlClienteEnderCXPOSTAL: TStringField;
    sqlClienteEnderCEP: TStringField;
    sqlClienteEnderTIPO: TStringField;
    sqlClienteEnderPADRAO: TStringField;
    sqlClienteEnderESTADO: TStringField;
    sqlClienteEnderDESCTIPO: TStringField;
    sqlClienteEnderPAI_PAIS: TStringField;
    sqlClienteEnderNUMERO: TStringField;
    sqlClienteEnderCIDADE: TStringField;
    dspClienteEnder: TDataSetProvider;
    cdsClienteEnder: TClientDataSet;
    cdsClienteEnderCODIGO: TIntegerField;
    cdsClienteEnderCOD_CLIENTE: TIntegerField;
    cdsClienteEnderCOD_CIDADE: TIntegerField;
    cdsClienteEnderCOD_PAIS: TIntegerField;
    cdsClienteEnderDESCRICAO: TStringField;
    cdsClienteEnderCOMPLEMENTO: TStringField;
    cdsClienteEnderBAIRRO: TStringField;
    cdsClienteEnderCXPOSTAL: TStringField;
    cdsClienteEnderCEP: TStringField;
    cdsClienteEnderTIPO: TStringField;
    cdsClienteEnderPADRAO: TStringField;
    cdsClienteEnderESTADO: TStringField;
    cdsClienteEnderDESCTIPO: TStringField;
    cdsClienteEnderPAI_PAIS: TStringField;
    cdsClienteEnderNUMERO: TStringField;
    cdsClienteEnderCIDADE: TStringField;
    dsClienteEnder: TDataSource;
    pnEndereco: TPanel;
    Panel13: TPanel;
    Button3: TButton;
    Button4: TButton;
    DBGrid7: TDBGrid;
    dsClienteEnderSelecionado: TDataSource;
    cdsClienteEnderSelecionado: TClientDataSet;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    dspClienteEnderSelecionado: TDataSetProvider;
    sqlClienteEnderSelecionado: TSQLQuery;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    StringField26: TStringField;
    StringField27: TStringField;
    StringField28: TStringField;
    SqlCdsPedidoENDERECO_ENTREGA: TIntegerField;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Panel12: TPanel;
    sqlClienteEnderSelecionadoFATOR: TSingleField;
    sqlClienteEnderFATOR: TSingleField;
    cdsClienteEnderSelecionadoFATOR: TSingleField;
    cdsClienteEnderFATOR: TSingleField;
    SqlCdsPedidoItempti_sigla: TStringField;
    AdicionarItemKit1: TMenuItem;
    qBuscoFrete: TSQLQuery;
    EdSituacao: TEdit;
    Label45: TLabel;
    SqlCdsTipoPedidoOPV_COMISSAO_VERBA: TStringField;
    SqlCdsPedidoItemUsou_Verba: TStringField;
    SqlCdsPedidoItemVALOR_VERBA: TFMTBCDField;
    qBuscoPrazo: TSQLQuery;
    SqlCdsPedidoGERAR_VERBA: TStringField;
    SqlCdsTipoPedidoOPV_BONIFICACAO: TStringField;
    SqlCdsPedidoPED_PLACA: TStringField;
    miPedidoGrade: TMenuItem;
    SqlCdsPedidoItemprf_registro_vinculado: TIntegerField;
    miAdicionarcodigooriginal: TMenuItem;
    miAdicionarNCM: TMenuItem;
    miAdicionarUnd1: TMenuItem;
    SqlCdsPedidoItemNCM_CODIGO: TStringField;
    SqlCdsPedidoOPV_AGRUPADO: TStringField;
    SqlCdsPedidoPED_COMISSAO_VEN: TFMTBCDField;
    SqlCdsPedidoREP_CODIGO_INTERNO: TStringField;
    SqlCdsPedidoItemPRF_PRAZO_DIAS: TIntegerField;
    miPedidocomprazos: TMenuItem;
    pcInformacoes: TJvPageControl;
    tsoutros: TTabSheet;
    tsComisssao: TTabSheet;
    TsDesconto: TTabSheet;
    gbcomissao: TGroupBox;
    SpeedButton5: TSpeedButton;
    Label19: TLabel;
    Label21: TLabel;
    Label20: TLabel;
    CurComissaoInterna: TCurrencyEdit;
    CurComissaoVendedor: TCurrencyEdit;
    CurComissaoSupervisor: TCurrencyEdit;
    CurComissaoGerente: TCurrencyEdit;
    pInforPrincipais: TPanel;
    Label7: TLabel;
    EdPrazoCodigo: TEdit;
    edPrazo: TSgDbSearchCombo;
    Label14: TLabel;
    EdVendedorCodigo: TEdit;
    edVendedor: TSgDbSearchCombo;
    Label6: TLabel;
    edVendInternoCodigo: TEdit;
    edVendInterno: TSgDbSearchCombo;
    Label15: TLabel;
    EdTransportadoraCodigo: TEdit;
    edTransportadora: TSgDbSearchCombo;
    edPlaca: TEdit;
    edFPagto: TSgDbSearchCombo;
    Label47: TLabel;
    Label48: TLabel;
    edCCustoCodigo: TEdit;
    edCCusto: TSgDbSearchCombo;
    lbPlaca: TLabel;
    pdesconto: TPanel;
    CbDescontoNF: TCheckBox;
    Label9: TLabel;
    CurDescontoNotaFiscal: TCurrencyEdit;
    Label10: TLabel;
    CurDescontoNotaFiscalAdicional: TCurrencyEdit;
    Label44: TLabel;
    CurDescontoNotaFiscalValor: TCurrencyEdit;
    poutros: TPanel;
    Label99: TLabel;
    edCfop: TSgDbSearchCombo;
    Label116: TLabel;
    cbExped: TComboBox;
    CurMarkup: TEdit;
    Label22: TLabel;
    Label117: TLabel;
    CurrValorAFaturar: TCurrencyEdit;
    CurValorFaturado: TCurrencyEdit;
    Label46: TLabel;
    CurDespesasAcessorias: TCurrencyEdit;
    Label25: TLabel;
    CurSeguro: TCurrencyEdit;
    Label16: TLabel;
    CbTipoFrete: TComboBox;
    Label27: TLabel;
    EdContatoCliente: TEdit;
    sbFrete: TSpeedButton;
    CurFrete: TCurrencyEdit;
    Label24: TLabel;
    ppedido: TPanel;
    Label1: TLabel;
    EdPedidoNumero: TEdit;
    Label2: TLabel;
    EdPedidoTipo: TEdit;
    SpeedTipo: TSpeedButton;
    Label101: TLabel;
    EdOrsDiaValidade: TCurrencyEdit;
    Label100: TLabel;
    Label97: TLabel;
    EdOrsDiaEntrega: TCurrencyEdit;
    Label4: TLabel;
    Label3: TLabel;
    Label18: TLabel;
    EdNumeroPedidoCliente: TEdit;
    ImageList1: TImageList;
    pitens: TPanel;
    PageControl2: TPageControl;
    TabPedidoItem: TTabSheet;
    Panel4: TPanel;
    SpeedButton1: TBitBtn;
    GroupBox3: TGroupBox;
    Label17: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label98: TLabel;
    Label114: TLabel;
    CurTotalItens: TCurrencyEdit;
    CurTotalPesoLiquido: TCurrencyEdit;
    CurTotalDesconto: TCurrencyEdit;
    CurTotalIPI: TCurrencyEdit;
    CurTotalProduto: TCurrencyEdit;
    CurTotalPedido: TCurrencyEdit;
    CurTotalST: TCurrencyEdit;
    edtPercentStProduto: TCurrencyEdit;
    SpeedButton4: TBitBtn;
    DbGradeItemPedido: TDBGrid;
    TabHostoricoVenda: TTabSheet;
    Label33: TLabel;
    Label34: TLabel;
    EdHistoricoReferencia: TEdit;
    EdHistoricoDescricao: TEdit;
    GroupBox7: TGroupBox;
    DbGradeHistoricoItem: TDBGrid;
    TabSheet3: TTabSheet;
    GroupBox8: TGroupBox;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    GroupBox4: TGroupBox;
    DbGradeImportacaoAdicao: TDBGrid;
    DBNavigator2: TDBNavigator;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    GroupBox9: TGroupBox;
    tsRetornoIndust: TTabSheet;
    dbgrdRetornoInd: TDBGrid;
    tsExportacao: TTabSheet;
    grpInformacoes: TGroupBox;
    lblUFDespacho: TLabel;
    lblExportacaoDescricaoLocalEmbarque: TLabel;
    Label113: TLabel;
    edtExportacaoUF: TEdit;
    edtExportacaoDescricaoLocalEmbarque: TEdit;
    edtExportacaoDescricaoRecinto: TEdit;
    TabObservacoes: TTabSheet;
    GbObservacao: TGroupBox;
    MemoObservacaoPedido: TMemo;
    Panel9: TPanel;
    SpeedButton2: TSpeedButton;
    GbMensagemAdicionalNotaFiscal: TGroupBox;
    MemoMensagemAdicionalNotaFiscal: TMemo;
    Panel14: TPanel;
    SpeedButton3: TSpeedButton;
    pDiminuir: TFlowPanel;
    spRedimecionarItem: TSpeedButton;
    pIdItem: TPanel;
    Documento: TGroupBox;
    DbGradeImportacaoDI: TDBGrid;
    Splitter3: TSplitter;
    pDeclaraImpo: TPanel;
    Label35: TLabel;
    DBEdit1: TDBEdit;
    Label36: TLabel;
    JvDBDateEdit1: TJvDBDateEdit;
    DBEdit16: TDBEdit;
    DBEdit15: TDBEdit;
    Label38: TLabel;
    DBEdit8: TDBEdit;
    Label37: TLabel;
    Label102: TLabel;
    Label104: TLabel;
    GroupBox18: TGroupBox;
    Label105: TLabel;
    Label106: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBNavigator1: TDBNavigator;
    CurDespesasImportacao: TCurrencyEdit;
    Label26: TLabel;
    Label103: TLabel;
    DBEdit2: TDBEdit;
    JvDBDateEdit2: TJvDBDateEdit;
    Label39: TLabel;
    JvDBComboBox1: TJvDBComboBox;
    JvDBComboBox2: TJvDBComboBox;
    Label40: TLabel;
    Splitter4: TSplitter;
    miRomaneioProducao: TMenuItem;
    SqlCdsPedidoItemPRF_PESOKG: TFMTBCDField;
    miPedidoPesoGrade: TMenuItem;
    miAdicionarVariosCodigos: TMenuItem;
    btnFaturarNFCE: TBitBtn;
    Splitter5: TSplitter;
    SqlCdsPedidoItemPRF_MARGEM_PRODUTO: TFMTBCDField;
    SqlCdsPedidoItemPRF_ICMSALIQ: TFMTBCDField;
    SqlCdsPedidoItemPRF_VALOR_ICMS: TFMTBCDField;
    Splitter6: TSplitter;
    miOrdemdeServio: TMenuItem;
    OrdemdeServio1: TMenuItem;
    SqlCdsPedidoItemQtdeKit: TFMTBCDField;
    miDefinirPrazoEntrega: TMenuItem;
    qProdutosaFaturar: TSQLQuery;
    dsProdutosFaturar: TDataSource;
    cdsProdutosaFaturar: TClientDataSet;
    dspProdutosAFaturar: TDataSetProvider;
    cdsProdutosaFaturarPRD_CODIGO: TStringField;
    cdsProdutosaFaturarPRD_REFER: TStringField;
    cdsProdutosaFaturarPRD_DESCRI: TStringField;
    cdsProdutosaFaturarQTDEAFAT: TFMTBCDField;
    cdsPedidosFaturar: TClientDataSet;
    dspPedidosFaturar: TDataSetProvider;
    cdsPedidosFaturarPED_CODIGO: TStringField;
    cdsPedidosFaturarPED_DTENTRADA: TSQLTimeStampField;
    cdsPedidosFaturarCLI_CODIGO: TStringField;
    cdsPedidosFaturarCLI_RAZAO: TStringField;
    cdsPedidosFaturarREP_CODIGO: TStringField;
    cdsPedidosFaturarREP_NOME: TStringField;
    cdsPedidosFaturarPED_DTSAIDA: TSQLTimeStampField;
    cdsPedidosFaturarSQTDEFATURAR: TFMTBCDField;
    btnAgenda: TBitBtn;
    CurrValorCIF: TCurrencyEdit;
    lvalorMargemCIF: TLabel;
    SqlCdsPedidoPED_VALOR_CIF: TFMTBCDField;
    SqlCdsPedidoCLI_CPF: TStringField;
    Panel3: TPanel;
    SqlCdsPedidoItemprf_qtdePend: TFMTBCDField;
    miRomaneiockitseparado: TMenuItem;
    miPedidoKitSeparado: TMenuItem;
    SqlCdsPedidoItemPRF_PRODUTO_SEMVALOR: TStringField;
    chkCorridos: TCheckBox;
    JvErrorIndicator1: TJvErrorIndicator;
    JvValidators1: TJvValidators;
    VendedorAtivo: TJvCustomValidator;
    DteEntrega: TJvDateEdit;
    DteEntrada: TJvDateEdit;
    SqlCdsPedidoItemKIT_VIRTUAL: TIntegerField;
    btnFaturamento: TButton;
    SqlCdsPedidoPed_faturar_liberado: TStringField;
    pMensagemFat: TFlowPanel;
    SqlCdsPedidoORC_CODIGO: TIntegerField;
    btnOrdemProducao: TButton;
    miPedidoCabResumido: TMenuItem;
    Oramentocabealhoresumido1: TMenuItem;
    Romaneiocabealhoresumido1: TMenuItem;
    SqlCdsTipoPedidoOPV_TRANSF_PRECOCUSTO: TStringField;
    SqlCdsTipoPedidoOPV_FATURAMENTO: TStringField;
    PedidoPPAC1: TMenuItem;
    PedidoPPACSimples1: TMenuItem;
    SqlCdsTipoPedidoOPV_ESTOQUE_REMESSAINDUS: TStringField;
    SqlCdsPedidoItemPED_TIPOPECA_TERM: TStringField;
    SqlCdsPedidoItemPED_MATERIAL_TERM: TStringField;
    SqlCdsPedidoItemPED_DUREZASUPERFICIAL_TERM: TStringField;
    SqlCdsPedidoItemPED_DUREZANUCLEO_TERM: TStringField;
    SqlCdsPedidoItemPED_PROFUNDIDADE_TERM: TStringField;
    SqlCdsPedidoItemPED_TAMANHOGRAO_TERM: TStringField;
    SqlCdsPedidoItemPED_EHT_TERM: TStringField;
    SqlCdsPedidoItemPED_DESENHO_TERM: TStringField;
    PedidoPPACComposto1: TMenuItem;
    PedidoPPACSimples2: TMenuItem;
    SqlCdsPedidoItemPRF_QUANT_TRIB: TFMTBCDField;
    AdicionarUndtributria1: TMenuItem;
    AdicionarQuantidadetributria1: TMenuItem;
    SomenteServios1: TMenuItem;
    udo1: TMenuItem;
    tudo1: TMenuItem;
    SomenteServios2: TMenuItem;
    Button5: TButton;
    qPedidosFaturarPED_CODIGO: TStringField;
    qPedidosFaturarPED_DTENTRADA: TSQLTimeStampField;
    qPedidosFaturarCLI_CODIGO: TStringField;
    qPedidosFaturarCLI_RAZAO: TStringField;
    qPedidosFaturarREP_CODIGO: TStringField;
    qPedidosFaturarREP_NOME: TStringField;
    qPedidosFaturarPED_DTSAIDA: TSQLTimeStampField;
    qPedidosFaturarSQTDEFATURAR: TFMTBCDField;
    miCodigoFabriante: TMenuItem;
    tsPPAC: TTabSheet;
    mCabPPAC: TMemo;
    SqlCdsPedidoPED_SubcabecalhoPPAC: TBlobField;
    pbtnCabPPAC: TPanel;
    sbmCabPPACAddObs: TSpeedButton;
    Label120: TLabel;
    cbOrigem: TSgDbSearchCombo;
    SqlCdsPedidoCORI_CODIGO: TIntegerField;
    qOrigem: TSQLQuery;
    pPPAC: TPanel;
    OramentoImagemBig1: TMenuItem;
    SQLClienteProdEMP_CODIGO: TStringField;
    cbClienteVendas: TSgDbSearchCombo;
    edClienteVendas: TEdit;
    Label121: TLabel;
    SqlCdsTipoPedidoOPV_EXPEDICAO: TStringField;
    FDMemTable1: TFDMemTable;
    EntregaHoras: TMaskEdit;
    Label122: TLabel;
    RomaneiocomcodOriginal1: TMenuItem;
    RomaneiodeCorte1: TMenuItem;
    Ordemdeproduo1: TMenuItem;
    Pedidocomespao1: TMenuItem;
    SqlCdsPedidoItemPRD_UND_TRIB: TStringField;
    SqlCdsPedidoItemPRF_PRAZO_ENTREGA: TDateField;
    Label123: TLabel;
    cbOrsConsFinal: TComboBox;
    rgOrsCliConsuProprio: TRadioGroup;
    SqlCdsPedidoPED_ORS_CLI_CONSFINAL: TIntegerField;
    SqlCdsPedidoPED_ORS_CLI_CONSU_PROPRIO: TIntegerField;
    Label124: TLabel;
    cbOrsCliRegimeTributario: TComboBox;
    SqlCdsPedidoPED_ORS_CLI_REGIME_TRIBUTARIO: TIntegerField;
    tsObsProducao: TTabSheet;
    SqlCdsPedidoPED_OBS_PRODUCAO: TBlobField;
    gbObsProducao: TGroupBox;
    MemoObservacaoProducao: TMemo;
    Panel15: TPanel;
    SpeedButton6: TSpeedButton;
    NotasIndustrializacao: TTabSheet;
    qNotaSaida: TSQLQuery;
    qNotaEntrada: TSQLQuery;
    dspNotaSaida: TDataSetProvider;
    dspNotaEntrada: TDataSetProvider;
    cdsNotaSaida: TClientDataSet;
    cdsNotaEntrada: TClientDataSet;
    dsNotaSaida: TDataSource;
    dsNotaEntrada: TDataSource;
    GroupBox12: TGroupBox;
    grdNotaSaida: TDBGrid;
    GroupBox14: TGroupBox;
    grdNotaEntrada: TDBGrid;
    cdsNotaSaidaNF_NOTANUMBER: TStringField;
    cdsNotaSaidaNF_EMISSAO: TDateField;
    cdsNotaSaidaNF_SAIDA: TDateField;
    cdsNotaSaidaNF_HORASAIDA: TTimeField;
    cdsNotaSaidaNTP_CFOP: TIntegerField;
    cdsNotaSaidaNF_TOT_PROD: TFMTBCDField;
    cdsNotaSaidaNF_TOT_NOTA: TFMTBCDField;
    cdsNotaEntradaENF_NOTANUMBER: TStringField;
    cdsNotaEntradaENF_EMISSAO: TDateField;
    cdsNotaEntradaENF_ENTRADA: TDateField;
    cdsNotaEntradaENF_CFOP: TStringField;
    cdsNotaEntradaENF_TOT_PROD: TFMTBCDField;
    cdsNotaEntradaENF_TOT_NOTA: TFMTBCDField;
    Panel16: TPanel;
    SqlCdsTipoPedidoOPV_INDUST_POR_KIT: TStringField;
    qInscricaoEstadual: TSQLQuery;
    dspInscricaoEstadual: TDataSetProvider;
    cdsInscricaoEstadual: TClientDataSet;
    dsInscricaoEstadual: TDataSource;
    dblcInscricaoEstadual: TDBLookupComboBox;
    lbIE: TLabel;
    SqlCdsPedidoEMI_IE: TStringField;
    SqlCdsPedidoEMI_CODIGO: TIntegerField;
    PanelAguarde: TPanel;
    JvGIFAnimator1: TJvGIFAnimator;
    pinfo: TPanel;
    SqlCdsPedidoOPV_BAIXAR_ESTOQUE_PELO_FAT: TStringField;
    SqlCdsTipoPedidoOPV_BAIXAR_ESTOQUE_PELO_FAT: TStringField;
    pnPedidoMinimo: TPanel;
    btLiberaPedidoMinimo: TButton;
    btAdicionaXML: TJvArrowButton;
    pmAdiciona: TPopupMenu;
    AdicionaItem1: TMenuItem;
    ImportarXML1: TMenuItem;
    XMLDocument1: TXMLDocument;
    OpenDialog1: TOpenDialog;
    lbArquivoXML: TLabel;
    edArquivoXML: TEdit;
    btAbreArquivoXML: TBitBtn;
    SqlCdsPedidoPED_CAMINHO_XML: TStringField;
    LblMovimentaEstoque: TPanel;
    SqlCdsPedidoItemPesoLiquido: TFMTBCDField;
    SqlCdsPedidoItemPRG_MEDIDA_1: TFMTBCDField;
    SqlCdsPedidoItemPRG_MEDIDA_2: TFMTBCDField;
    SqlCdsPedidoItemPRG_MEDIDA_3: TFMTBCDField;
    SqlCdsPedidoItemPRG_MICRA: TFMTBCDField;
    SqlCdsPedidoItemPRD_FATOR_PROD: TFMTBCDField;
    SqlCdsPedidoItemPRF_PESO: TFMTBCDField;
    SqlCdsPedidoItemPESADO: TStringField;
    SqlCdsPedidoItemFKP: TFMTBCDField;
    SqlCdsPedidoItemFKG: TFMTBCDField;
    SqlCdsPedidoItemCAP_CODIGO: TIntegerField;
    SqlCdsPedidoItemACO_CODIGO: TIntegerField;
    RomaneioIndstria1: TMenuItem;
    qROrdemServico: TFDQuery;
    qROrdemServicoIOP_CODIGO: TIntegerField;
    qROrdemServicoPRO_CODIGO: TIntegerField;
    qROrdemServicoIOP_NORDEM: TStringField;
    qROrdemServicoOPR_CODIGO: TStringField;
    qROrdemServicoCLI_CODIGO: TStringField;
    qROrdemServicoCLI_RAZAO: TStringField;
    qROrdemServicoPED_CODIGO: TStringField;
    qROrdemServicoOPR_EMISSAO: TSQLTimeStampField;
    qROrdemServicoOPR_DTENTREGA: TSQLTimeStampField;
    qROrdemServicoPED_VLTOTAL_BRUTO: TFMTBCDField;
    qROrdemServicoPRD_DESCRI: TStringField;
    qROrdemServicoIOP_QUANTIDADE: TFMTBCDField;
    qROrdemServicoIOP_PESO: TFMTBCDField;
    qROrdemServicoPRO_DESCRICAO: TStringField;
    qROrdemServicoIOP_SEQUENCIA: TIntegerField;
    qROrdemServicoPED_TIPOPECA_TERM: TStringField;
    qROrdemServicoPED_MATERIAL_TERM: TStringField;
    qROrdemServicoPED_DUREZASUPERFICIAL_TERM: TStringField;
    qROrdemServicoPED_DUREZANUCLEO_TERM: TStringField;
    qROrdemServicoPED_PROFUNDIDADE_TERM: TStringField;
    qROrdemServicoPED_TAMANHOGRAO_TERM: TStringField;
    qROrdemServicoPED_EHT_TERM: TStringField;
    qROrdemServicoPED_DESENHO_TERM: TStringField;
    qROrdemServicosrv_nome: TStringField;
    qROrdemServicoPED_NUMERO_PED_CLIENTE: TStringField;
    qROrdemServicoPED_CONTATO_CLIENTE: TStringField;
    qROrdemServicoIOP_PRECO: TFMTBCDField;
    qROrdemServicoPRD_UND: TStringField;
    qROrdemServicoPRE_ACORDOCOM: TIntegerField;
    qROrdemServicousu_nome: TStringField;
    qROrdemServicoPRF_QTDE_ENV_PRODUCAO: TFMTBCDField;
    qROrdemServicoPRD_REFER: TStringField;
    qROrdemServicoOPR_DATAFATURA: TSQLTimeStampField;
    qROrdemServicoOPR_LEADTIME: TBCDField;
    qROrdemServicoOPR_CONCLUSAO: TSQLTimeStampField;
    qROrdemServicoOPR_TEMPOATRASO: TIntegerField;
    dsOrdemServico: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    SqlCdsPedidoPED_VLDIFAL: TFMTBCDField;
    Label126: TLabel;
    CurTotalDifal: TCurrencyEdit;
    SqlCdsPedidoItemPRD_ALIQICM: TFMTBCDField;
    SqlCdsPedidoItemIPI_CODIGO: TStringField;
    SqlCdsPedidoCLI_CONSFINAL: TStringField;
    SqlCdsPedidoCLI_CONSU_PROPRIO: TStringField;
    GroupBox21: TGroupBox;
    cbFinalidade: TJvDBComboBox;
    cbCliConsFinal: TJvDBComboBox;
    Label8: TLabel;
    frxPedidoTrat: TfrxReport;
    edOrsFone: TMaskEdit;
    N2: TMenuItem;
    miAlterarPeso: TMenuItem;
    gbAlterarPeso: TGroupBox;
    Label125: TLabel;
    curPeso: TJvValidateEdit;
    btCancelaPeso: TBitBtn;
    btSalvaPeso: TBitBtn;

    procedure FormKeyDown(Sender: tObject; var Key: Word;Shift: TShiftState);
    procedure CurDescontoNotaFiscalExit(Sender: tObject);
    procedure CurDescontoNotaFiscalAdicionalExit(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure BtnConsultarClick(Sender: tObject);
    procedure CurFreteExit(Sender: tObject);
    procedure DbGradeItemPedidoDrawColumnCell(Sender: tObject;const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
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
    procedure TabClienteVendasShow(Sender: tObject);
    procedure SQLClienteProdCalcFields(DataSet: TDataSet);
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
    procedure btnRemoverIndustrializacaoClick(Sender: tObject);
    procedure btnVincularIndustrializacaoClick(Sender: tObject);
    procedure PedidoSemItensdopKIT1Click(Sender: tObject);
    procedure CdsClienteContatoAfterPost(DataSet: TDataSet);
    procedure CdsClienteContatoBeforePost(DataSet: TDataSet);
    procedure OrcamentoImagemSomenteTotal1Click(Sender: tObject);
    procedure OrcamentoImagemSomenteTotal2Click(Sender: tObject);
    procedure RomaneioM31Click(Sender: tObject);
    procedure RomaneioM32Click(Sender: tObject);
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
    procedure edCCustoSelect(Sender: tObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure sbFreteClick(Sender: TObject);
    procedure TabSheet6Show(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBGrid7DblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SqlCdsPedidoItemAfterScroll(DataSet: TDataSet);
    procedure AdicionarItemKit1Click(Sender: TObject);
    procedure edTransportadoraExit(Sender: TObject);
    procedure edPrazoExit(Sender: TObject);
    procedure EdClienteCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPrazoCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdVendedorCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edCCustoCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdTransportadoraCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PedidocomGrade1Click(Sender: TObject);
    procedure miPedidoGradeClick(Sender: TObject);
    procedure MemoObservacaoPedidoEnter(Sender: TObject);
    procedure MemoObservacaoPedidoExit(Sender: TObject);
    procedure MemoMensagemAdicionalNotaFiscalEnter(Sender: TObject);
    procedure MemoMensagemAdicionalNotaFiscalExit(Sender: TObject);
    procedure EdPedidoNumeroChange(Sender: TObject);
    procedure miAdicionarcodigooriginalClick(Sender: TObject);
    procedure PmuItemPedidoPopup(Sender: TObject);
    procedure miAdicionarUnd1Click(Sender: TObject);
    procedure miAdicionarNCMClick(Sender: TObject);
    procedure edVendInternoSelect(Sender: TObject);
    procedure edVendInternoCodigoExit(Sender: TObject);
    procedure edVendInternoCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SqlCdsPedidoItemPRF_PRAZO_DIASGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure miPedidocomprazosClick(Sender: TObject);
    procedure spRedimecionarItemClick(Sender: TObject);
    procedure miRomaneioProducaoClick(Sender: TObject);
    procedure btnFaturarNFCEClick(Sender: TObject);
    procedure miPedidoPesoGradeClick(Sender: TObject);
    procedure miAdicionarVariosCodigosClick(Sender: TObject);
    procedure OrdemdeServio1Click(Sender: TObject);
    procedure SqlCdsPedidoItemPRF_QTDEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure SqlCdsPedidoItemDESCRICAOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure miDefinirPrazoEntregaClick(Sender: TObject);
    procedure pdescontoClick(Sender: TObject);
    procedure cdsProdutosaFaturarAfterScroll(DataSet: TDataSet);
    procedure btnAgendaClick(Sender: TObject);
    procedure CbTipoFreteChange(Sender: TObject);
    procedure SqlCdsPedidoItemPRF_MARGEM_PRODUTOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure miRomaneiockitseparadoClick(Sender: TObject);
    procedure miPedidoKitSeparadoClick(Sender: TObject);
    procedure chkCorridosClick(Sender: TObject);
    procedure FreteTransportadora ;
    procedure VendedorAtivoValidate(Sender: TObject; ValueToValidate: Variant; var Valid: Boolean);
    procedure btnFaturamentoClick(Sender: TObject);
    procedure miPedidoCabResumidoClick(Sender: TObject);
    procedure Oramentocabealhoresumido1Click(Sender: TObject);
    procedure Romaneiocabealhoresumido1Click(Sender: TObject);
    procedure EditProdReservaKeyPress(Sender: TObject; var Key: Char);
    procedure btnOrdemProducaoClick(Sender: TObject);
    procedure PedidoPPAC1Click(Sender: TObject);
    procedure PedidoPPACSimples1Click(Sender: TObject);
    procedure PedidoPPACComposto1Click(Sender: TObject);
    procedure PedidoPPACSimples2Click(Sender: TObject);
    procedure AdicionarQuantidadetributria1Click(Sender: TObject);
    procedure AdicionarUndtributria1Click(Sender: TObject);
    procedure udo1Click(Sender: TObject);
    procedure SomenteServios1Click(Sender: TObject);
    procedure tudo1Click(Sender: TObject);
    procedure SomenteServios2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure miCodigoFabrianteClick(Sender: TObject);
    procedure sbmCabPPACAddObsClick(Sender: TObject);
    procedure cbClienteVendasButtonClick(Sender: TObject);
    procedure cbClienteVendasSelect(Sender: TObject);
    procedure edClienteVendasExit(Sender: TObject);
    procedure edClienteVendasKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edClienteVendasKeyPress(Sender: TObject; var Key: Char);
    procedure OramentoImagemBig1Click(Sender: TObject);
    procedure RomaneiocomcodOriginal1Click(Sender: TObject);
    procedure RomaneiodeCorte1Click(Sender: TObject);
    procedure Ordemdeproduo1Click(Sender: TObject);
    procedure Pedidocomespao1Click(Sender: TObject);
    procedure cbOrsConsFinalChange(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure NotasIndustrializacaoShow(Sender: TObject);
    procedure Panel16Click(Sender: TObject);
    procedure btLiberaPedidoMinimoClick(Sender: TObject);
    procedure CurDescontoNotaFiscalValorExit(Sender: TObject);
    procedure ImportarXML1Click(Sender: TObject);
    procedure btAbreArquivoXMLClick(Sender: TObject);
    procedure DbGradeItemPedidoEnter(Sender: TObject);
    procedure DbGradeItemPedidoExit(Sender: TObject);
    procedure DbGradeItemPedidoKeyPress(Sender: TObject; var Key: Char);
    procedure Panel6Click(Sender: TObject);
    procedure Panel7Click(Sender: TObject);
    procedure Panel8Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure DbGradeItemPedidoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edClienteEnter(Sender: TObject);
    procedure edClienteClick(Sender: TObject);
    procedure EdClienteCodigoEnter(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SqlCdsPedidoItemPRF_PESOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure RomaneioIndstria1Click(Sender: TObject);
    procedure qROrdemServicoCalcFields(DataSet: TDataSet);
    procedure cbbClienteEstadoChange(Sender: TObject);
    procedure CurDifalChange(Sender: TObject);
    procedure cbFinalidadeChange(Sender: TObject);
    procedure miAlterarPesoClick(Sender: TObject);
    procedure btSalvaPesoClick(Sender: TObject);
    procedure btCancelaPesoClick(Sender: TObject);
    procedure curPesoExit(Sender: TObject);
  private
    pOldId: string ;
    wCurDescontoIndice: Real;
    fIgnoreItens: boolean;
    bEdicao, bInclusao:Boolean;
    rQuantidadeItens,
    rQuantidadeItensFaturado,
    rTotalPedidoComDesconto,
    rTotalComisPrecoLiquido:Currency;

    wRetornoInd:Boolean;
    vIdPedido: Integer ;

    function AdicionaItem: boolean;
    procedure AlterarItem;
    procedure ExcluirItem;
    procedure DeletarItem;
    procedure AtualizaSaldos;
    //
    procedure CancelarPedido;
    procedure ExcluirPedido;
    procedure ImprimePedido(const bVisualiza:Boolean; sTipo:String);
    procedure HabilitaDesabilitaEdicao(const bStatus:Boolean);
    procedure HabilitaDesabilitaDescontoNota(bStatus:Boolean);

    //
    procedure BuscaCliente(const sCodigo:String);
    procedure GravaMediaComissao;
    procedure MovimentaEstoque(bStatus:Boolean);
    procedure BuscaPedidoItem(const sPedidoCodigo:String; bCalcula: boolean);
    procedure BuscaVendaItemHistorico;
    procedure BuscaNotas;
    procedure BuscaClienteVenda;
    procedure BuscaprodutosCliente;
    Function BuscapedidosReservas(const wreserva_Prd_refer:string):boolean;
    Procedure BuscaprodutosReservas;
    //
    procedure CalculaIndiceDescto;
    procedure CalcutaTotalItens;
    //


    function LiberaSairPedido:Boolean;
    procedure VerificaComissaoVendedor;
    procedure AlterarComissao;
    procedure Reajuste;
    procedure EnviarPedidoProducao;
    procedure ConsultaRetornoIndustrializacao;
    procedure RetornoIndustrializacao;
    function GravaPedido:Boolean;
    procedure SetCfopOpvTipo(const tipo: string);
    function GetTipoPedidoPadrao: integer;
    function NumeracaoRepetida: Boolean;
    procedure RemoverInfoNumeracaoPedido;
    procedure AbreGraficoVendas;
    procedure LimparCampos;
    procedure MontaFiltroCfop;
    procedure SituacaoPedido;
    procedure BuscaEnderecoEntrega(const pCodigo:string);
    function ValidaPedido: boolean;
    Function TemTipoItem(const pTipoItem:string ): boolean;
    procedure IndustrializacaoPorKit;
    procedure LoadXML;
    procedure PedidoEmEdicao(pedido: string);
    procedure ApagaPedidoEmEdicao();
    function buscaAliquotaICMS(prdRefer: string): double;
    procedure CalculaDifal;


  public
    { Public declarations }

    sPedidoBusca,
    sUltimoAlmoxDigitado,
    sPedidoClienteAnterior,
    sPedidoTitulo,
    sPedidoObs,

    sOrcamentoObs:WideString;
    iCodigoTipoPedido,wCodigoEndereco:Integer;
    bRecalculaSTGeral,

    bMostraMsgAtraso,
    bTipoPedidoCalculaST:Boolean;
    rComissaoGeral,
    rComissaoVendedor,
    rTotalProdutosBruto,
    rComissaoDoPrazo,
    rVerbaDoPrazo:Currency;
    bEnviaProducao,bPedidoSemItemKit:Boolean;
    sCodCliente,sOperacao: string;
    WDiretivaKit:integer;
    wAdcProdKit : boolean;
    ChecaNFC: boolean;

    procedure BuscaItensNota;
    procedure BuscaPedido (sPedidoCodigo:String );
    procedure BuscaTipoPedido(sTipoCodigo:Integer);
    procedure RecalculaSTItem;
    procedure BotoesAcesso;
    function PedidoMinimo(pedido: string): Boolean;

  end;

var
  FrmPedido: TFrmPedido;

implementation

{$R *.dfm}

uses
  Winapi.ShellAPI, EMAIL0001,
  uPedidoItem, DataCad, RWFunc, Ped0004, GImpPedi, uPedidoDAO,
  DataMov, Ped0009, PesquisaClientesForm, iniciodb,
  uPedidoTipo, uPedidoTipoInicial, uCadastroFrases, uPedidoReajuste,
  uPedidoCancelamento, uFinanceiroAnaliseCreditoCliente,
  uClienteDao, DataCad1, uDemandaProducao, Uteis,
  uVinculacaoIndustrializacaoRetorno, uAvisos, RelatoriosPedidoForm, fat0008, Fat0003, uPesqTarefas, UPosicaoEstoque, uUndTributaria, uPesqCodigoOriginalFabricante,
  uProdutoDao, uProducaoDAO, uconfirmademanda, AutorizaForm, uAutorizaPedidoAbaixoMinimo, uIndustrializacaoPorKit;


function TFrmPedido.AdicionaItem: boolean;
var
   regAtual : TBookmark;
begin

  Result := False;
  if (SqlCdsPedidoPED_SITUACAO.AsString = 'C') then
     raise Exception.Create('Não é possível incluir mais itens. Pedido cancelado!');

  if (EdSituacao.Text = 'FATURADO TOTAL') then
     raise Exception.Create('Não é possível incluir mais itens. Pedido totalmente faturado!');

  if (EdSituacao.Text = 'AGRUPADO') then
    raise Exception.Create('Não é possível incluir mais itens. Pedido já foi agrupado!');

  if (MatchStr(SqlCdsPedidoPED_SITUACAO.AsString ,['F','P'] ) )  and (SqlCdsPedidoPed_faturar_liberado.AsString = 'S') and ( DBInicio.empresa.wTipoLiberacaoFaturamento = 'M') then
    raise Exception.Create('Pedido já liberado para faturamento');

  if SqlCdsPedidoOPV_AGRUPADO.AsString = 'S' then
    raise Exception.Create('Não é possível incluir mais itens, pois é um agrupamento de pedidos');

//  if BuscaUmDadoSqlAsInteger( 'SELECT OPR_CODIGO FROM ORDEMPRODUCAO ' +
//                          ' WHERE PED_CODIGO = '+  QuotedStr(SqlCdsPedidoPED_CODIGO.AsString) +
//                          '  AND OPR_STATUS <> '+ QuotedStr('C') )>1 then
//    raise Exception.Create('Ordem de produção já gerada. Não pode adicionar item.');

  if (BtnGravar.Enabled) then
     BtnGravarClick(Self);

  if (SqlCdsPedido.IsEmpty) then
     raise Exception.Create('Adicione um pedido antes de colocar os itens');

   sOperacao := 'I';
   PageControl1.ActivePageIndex := 0;
   PageControl2.ActivePageIndex := 0;

   regAtual := SqlCdsPedidoItem.GetBookMark;
   try
     SqlCdsPedidoItem.DisableControls;
       if (BtnGravar.Enabled) then
         BtnGravarClick(Self);

         SqlCdsPedidoItem.GotoBookMark(regAtual);
         FrmPedidoItem := TFrmPedidoItem.Create(Self);
         try
            FrmPedidoItem.sTipo := 'I';
            FrmPedidoItem.NumeroPedido := FrmPedido.EdPedidoNumero.Text;
            FrmPedidoItem.iRegistroItemAnterior :=  SqlCdsPedidoItemPRF_REGISTRO.AsInteger;
            FrmPedidoItem.CurDesconto.Value := CurDescontoNotaFiscal.Value;
            FrmPedidoItem.ShowModal;
            Result := FrmPedidoItem.ModalResult = 1;
            Sleep(500);
            EsvaziaBuffer;
            if not Result then
            begin
              FreeAndNil(FrmPedidoItem); // := nil;
              Exit;
            end;
         finally
            FreeAndNil(FrmPedidoItem); // := nil;
         end;
         BuscaPedidoItem( EdPedidoNumero.Text, false );
         BuscaPedido(EdPedidoNumero.Text);
         // CalcutaTotalItens;
         GravaPedido;
         SqlCdsPedidoItem.Last;

   finally
      if DbGradeItemPedido = nil then
        abort;
      if not SqlCdsPedidoItem.IsEmpty then
        SqlCdsPedidoItem.FreeBookmark(regAtual);
      ReordenarItens(SqlCdsPedidoItem);
      SqlCdsPedidoItem.EnableControls;
      DbGradeItemPedido.SetFocus;

   end;
end;

procedure TFrmPedido.BuscaCliente(const sCodigo: String);
begin
     if scodigo= ''  then
      exit;

     sCodCliente := sCodigo;

     bMostraMsgAtraso := False;

     CdsClienteContato.Close;
     CdsClienteContato.CommandText := 'select * from CLI_CONTATO T1 where CLI_CODIGO = '+qStr(sCodigo)+' ORDER BY T1.cc_nome';
     CdsClienteContato.Open;

     edCliente.idRetorno:=sCodCliente;

      EdIE.Text := edCliente.CdS.FieldByName('CLI_INSC').AsString;
      EdClienteCidade.Text := edCliente.CdS.FieldByName('CID_CIDADE').AsString;
      EdClienteUF.Text := edCliente.CdS.FieldByName('CID_ESTADO').AsString;
      // EdClienteConsumidorFinal.Text := iif(edCliente.CdS.FieldByName('CLI_CONSFINAL').AsString = 'S','SIM','NÃO');
      // lbFinalidade.Caption := iif(edCliente.CdS.FieldByName('CLI_CONSU_PROPRIO').AsString = 'S','Uso e consumo ou industrialização','Revenda');
      if bInclusao then
      begin
        cbCliConsFinal.ItemIndex := iif(edCliente.CdS.FieldByName('CLI_CONSFINAL').AsString = 'S', 0, 1);
        cbFinalidade.ItemIndex := iif(edCliente.CdS.FieldByName('CLI_CONSU_PROPRIO').AsString = 'S', 0, 1);
      end
      else
      begin
        cbCliConsFinal.ItemIndex := iif(SqlCdsPedidoCLI_CONSFINAL.AsString = 'S', 0, 1);
        cbFinalidade.ItemIndex := iif(SqlCdsPedidoCLI_CONSU_PROPRIO.AsString = 'S', 0, 1);
      end;

      EdClienteTelefone.Text := MascaraFone(edCliente.CdS.FieldByName('CLI_FONE').AsString);
      if not(CurFrete.Value > 0) then
         CurFrete.Value := edCliente.CdS.FieldByName('CLI_VALORFRETE').AsFloat;

      if not(CurDespesasAcessorias.Value > 0) then
         CurDespesasAcessorias.Value := edCliente.CdS.FieldByName('CLI_VALORDESPESAS').AsFloat;


      EdCnpj.Text := MascaraCNPJ_CPF(edCliente.CdS.FieldByName('CLI_CGC').AsString);
       if (Length(EdCnpj.Text) = 18) then  //Pessoa Juridica
       begin
            LblCnpj.Caption := 'CNPJ:';
            LblIE.Caption := 'IE:';
       end
       else
       begin
            LblCnpj.Caption := 'CPF:';
            LblIE.Caption := 'RG:';
       end;

     MontaFiltroCfop;
     //visualizar somente seus pedidos não deixar ver informações do cliente  que não é atrelado ao vendendor
//     TabClienteVendas.TabVisible := not (DBInicio.Empresa.VisualizaPedios_P and
//                not MatchStr(dbInicio.Empresa.fCODIGO_REPRES,[edCliente.CdS.FieldByName('REP_CODIGO').AsString,edCliente.CDS.FieldByName('VEND_INTERNO_CODIGO').AsString])) ;

     if bInclusao then
     begin
         // padrões do cliente
         edCfop.idRetorno := edCliente.CdS.FieldByName('OPE_CODIGO').AsString;
         EdPrazo.idRetorno := edCliente.CdS.FieldByName('PCL_CODIGO').AsString;
         if DBInicio.Empresa.PMT_VINCULAR_VENDEDOR AND (DBInicio.Empresa.fCODIGO_REPRES <> '') then
           edVendedor.idRetorno :=  DBInicio.Empresa.fCODIGO_REPRES
         else
           EdVendedor.IdRetorno := edCliente.CdS.FieldByName('REP_CODIGO').AsString;
         edVendInterno.idRetorno :=  edCliente.CDS.FieldByName('VEND_INTERNO_CODIGO').AsString;
         EdTransportadora.idRetorno := edCliente.CdS.FieldByName('TRP_CODIGO').AsString;
         edFPagto.idRetorno := IntToStr(edcliente.CDS.FieldByName('FPG_REGISTRO').AsInteger) ;
         edCCusto.idRetorno := edCliente.CdS.FieldByName('PCX_CODIGO').AsString;
         cbOrigem.idRetorno := edCliente.CdS.FieldByName('CORI_CODIGO').AsString;
         if (edCliente.CdS.FieldByName('CLI_FRETE').AsString <> '') or NOT (edCliente.CDS.FieldByName('CLI_FRETE').IsNull) then
         begin
           if edCliente.CdS.FieldByName('CLI_FRETE').Value = EmptyStr then
               CbTipoFrete.ItemIndex := 5  //sem frete numero 9

           else if StrToInt(edCliente.CdS.FieldByName('CLI_FRETE').AsString) in [0,1,2,3,4] then
              CbTipoFrete.ItemIndex :=  StrToInt(edCliente.CdS.FieldByName('CLI_FRETE').AsString)
           else
              CbTipoFrete.ItemIndex := 5 ; //sem frete numero 9


         end;
         OpenAux('SELECT codigo FROM ENDERECO '+
                 ' WHERE  padrao = ''1'''+
                 ' AND COD_CLIENTE = '+QuotedStr(edCliente.idRetorno) );
         if not qAux.IsEmpty then
           wCodigoEndereco :=  qAux.FieldByName('codigo').AsInteger
         else
           wCodigoEndereco := 0;

         pnlAtraso.Visible := False;

         if (EdClienteUF.Text = '') and (cbbClienteEstado.Text <> '') and (GBInformacoesOrcamento.Visible) then
            EdClienteUF.Text := cbbClienteEstado.Text;
         if SqlCdsTipoPedido.Active then
           SetCfopOpvTipo( SqlCdsTipoPedidoOpv_TIPO.Asstring ) ;
     end;


end;

procedure TFrmPedido.LimparCampos;
begin
   if ActiveControl<>nil then
     if (ActiveControl.name <> 'SpeedButton1') or (ActiveControl.name <> 'btAdicionaXML') then
        HabilitaDesabilitaEdicao(false);
   cbExped.ItemIndex:=0;
   EdCnpj.Clear;
   EdIE.Clear;
   EdClienteCidade.Clear;
   EdClienteUF.Clear;
   // EdClienteConsumidorFinal.Clear;
   cbCliConsFinal.ItemIndex := -1;
   EdClienteTelefone.Clear;

   edClienteCodigo.Clear;
   edCliente.Clear;
   wCodigoEndereco := 0 ;
   edPrazoCodigo.Clear;
   edPrazo.Clear;
   cbOrigem.Clear;
   edVendedorCodigo.Clear;
   edVendedor.Clear;
   edVendInternoCodigo.Clear;
   edVendInterno.Clear;
   edTransportadoraCodigo.Clear;
   edTransportadora.Clear;
   edFPagto.Clear;
   edCCustoCodigo.Clear;
   edCCusto.Clear;
   edCfop.Clear;
   EdPedidoNumero.Clear;
   EdPedidoTipo.Clear;
   DteEntrada.Clear;
   DteEntrega.Clear;
   EntregaHoras.Clear;

   CurFrete.Clear;
   CurrValorCIF.Clear;
   CurDespesasAcessorias.Clear;
   CurSeguro.Clear;
   CurDespesasImportacao.Clear;
   EdVendedor.Clear;
   CurComissaoVendedor.Clear;
   CurComissaoGerente.Clear;
   CurComissaoSupervisor.Clear;
   CurMarkup.Clear;
   CbDescontoNF.Checked := False;
   EdTransportadora.Clear;
   CbTipoFrete.ItemIndex := 1;
   EdCCusto.Clear;
   CurDescontoNotaFiscal.Clear;
   CurDescontoNotaFiscalAdicional.Clear;
   CurDescontoNotaFiscalValor.Clear;
   EdNumeroPedidoCliente.Clear;
   edArquivoXML.Clear;
   EdContatoCliente.Clear;
   EdSituacao.Text := '';
   edFPagto.clear;
   EdSituacao.color := clBtnFace;
   EdSituacao.Font.color := clblack;
   CurValorFaturado.Clear;
   MemoObservacaoPedido.Clear;
   MemoObservacaoProducao.Clear;
   MemoMensagemAdicionalNotaFiscal.Clear;
   mCabPPAC.Clear;
   TabNotasFiscaisCliente.Visible := False;
   GBInformacoesCliente.Visible := True;
   TabSheet5.Caption := 'Informações';
   GBInformacoesOrcamento.Visible := False;
   GBInformacoesCliente.BringToFront;
   EdOrsDiaEntrega.Clear;
   EdOrsDiaValidade.Clear;
   EdOrsCliente.Clear;
   EdOrsEmail.Clear;
   EdOrsFone.Clear;
   EdOrsFax.Clear;
   cbOrsConsFinal.ItemIndex := -1;
   rgOrsCliConsuProprio.ItemIndex := -1;
   cbOrsCliRegimeTributario.ItemIndex := -1;
   edtExportacaoUF.Clear;
   edtExportacaoDescricaoLocalEmbarque.Clear;
   edtExportacaoDescricaoRecinto.Clear;
   cbbClienteEstado.Text := dbInicio.EMPRESA.UF;

   BuscaPedido( '' );
   CurTotalPedido.Clear;
   CurTotalProduto.Clear;
   edtPercentStProduto.Clear;
   CurTotalST.Clear;
   CurTotalIPI.Clear;
   CurTotalDesconto.Clear;
   CurTotalPesoLiquido.Clear;
   CurTotalItens.Clear;
   CurTotalDifal.Clear;

   SqlCdsPedidoItem.Close;
   CalcutaTotalItens;

end;


procedure TFrmPedido.BuscaPedido(sPedidoCodigo:String);
var sQuery:String;
begin
     if sPedidoCodigo='' then
        sPedidoCodigo := '-1';

   sQuery := 'select ' +
             '       t1.EMI_IE, ' +
             '       t1.CLI_CONSFINAL, ' +
             '       t1.CLI_CONSU_PROPRIO, ' +
             '       t1.EMI_CODIGO, ' +
             '       t1.cli_codigo,'+
             '       t6.cli_razao,'+
             '       t1.ped_registro, '+
             '       t1.ped_codigo, '+
             '       t1.PCX_CODIGO,'+
             '       t1.opv_codigo, '+
             '       t2.opv_descricao, '+
             '       T1.OPE_CODIGO,'+
             '       T2.OPV_AGRUPADO,'+
             '       t2.opv_atestoque, '+
             '       t1.ped_dtentrada, '+
             '       t1.ped_dtsaida, '+
             '       t1.pcl_codigo, '+
             '       t1.PED_CODIGO_ORCAMENTO,'+
             '       t3.pcl_nome, '+
             '       t1.ped_vlfrete, '+
             '       t1.ped_desp_aces, '+
             '       t1.ped_vlseguro, '+
             '       t1.ped_vldifal, '+
             '       t1.ped_desp_impor, '+
             '       t1.rep_codigo, '+
             '       t4.rep_nome, '+
             '       t1.ped_comis1, '+
             '       t1.ped_comis2, '+
             '       t1.ped_comis3, '+
             '       t1.PED_EXP_UF,'+
             '       t1.PED_EXP_LOCAL_EXP,'+
             '       t1.PED_EXP_LOCAL_RECINTO,'+
             '       t1.trp_codigo, '+
             '       t5.trp_razao, '+
             '       t1.ped_frete, '+
             '       t1.ped_desctonf, '+
             '       t1.ped_desctopc1, '+
             '       t1.ped_desctopc2, '+
             '       t1.ped_desctovl, '+
             '       t1.ped_numero_ped_cliente, '+
             '       t1.ped_caminho_xml, '+
             '       t1.ped_contato_cliente, '+
             '       t1.ped_situacao, '+
             '       t1.ped_vlfaturado, '+
             '       t1.PED_ORS_CLIENTE, '+
             '       t1.PED_ORS_DIAS_ENTREGA, '+
             '       t1.PED_ORS_DIAS_VALIDADE, '+
             '       t1.PED_ORS_FONE, '+
             '       t1.PED_ORS_FAX, '+
             '       t1.PED_ORS_EMAIL, '+
             '       T1.PED_ORS_ESTADO,'+
             '       T1.PED_ORS_CLI_CONSFINAL,'+
             '       T1.PED_ORS_CLI_CONSU_PROPRIO,'+
             '       T1.PED_ORS_CLI_REGIME_TRIBUTARIO, ' +
             '       t1.ped_observacao, '+
             '       t1.ped_obs_producao, '+
             '       t1.ped_observacao_nota,'+
             '       t6.PCX_CODIGO as CENTRO_CUSTO_CLIENTE,'+
             '       t7.PMT_MOTIVO, '+
             '       t1.PED_MOTIVO_CANCELAMENTO , t1.FPG_REGISTRO, '+
             '       t1.sitexp, ' +
             '       t1.ENDERECO_ENTREGA, '+
             '       t4.GERAR_VERBA, '+
             '       T1.PED_PLACA, '+
             '       t1.CLI_CPF, ' +
             ' t1.REP_CODIGO_INTERNO, '+
             ' t1.PED_COMISSAO_VEN, '+
             ' t1.orc_codigo, '+
             ' T1.PED_VALOR_CIF, ' +
             ' T1.Ped_faturar_liberado , t1.PED_SubcabecalhoPPAC, T1.CORI_CODIGO, t2.OPV_BAIXAR_ESTOQUE_PELO_FAT ' +
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
     //Busca Tipo Pedido
     BuscaTipoPedido(SqlCdsPedidoOPV_CODIGO.AsInteger);
      cbExped.Enabled := (SqlCdsTipoPedidoopv_expedicao.AsString = 'S') and (DBInicio.Empresa.PMT_LIBERAR_EXPEDICAO = 'P');
//     if cbExped.Enabled then
//     begin
     if (SqlCdsPedidoSitExp.isnull) or (SqlCdsPedidoSitExp.AsString='PEN') then
        cbExped.ItemIndex := 0
     else if SqlCdsPedidoSitExp.AsString='LIB' then
        cbExped.ItemIndex := 1
     else if SqlCdsPedidoSitExp.AsString='SEP' then
        cbExped.ItemIndex := 2
     else if SqlCdsPedidoSitExp.AsString='FIN' then
        cbExped.ItemIndex := 3
     else if SqlCdsPedidoSitExp.AsString = 'FAT' then
        cbExped.ItemIndex := 4
     else if  SqlCdsPedidoSitExp.AsString = 'DEP' then
        cbExped.ItemIndex := 5
     else if SqlCdsPedidoSITEXP.AsString = 'DPA' then
        cbExped.ItemIndex := 6
     else if  SqlCdsPedidoSitExp.AsString = 'IMP' then
        cbExped.ItemIndex := 7;
//     end;

     wCodigoEndereco := SqlCdsPedidoENDERECO_ENTREGA.AsInteger;
     edCliente.idRetorno:=SqlCdsPedidoCli_Codigo.AsString;

     cbCliConsFinal.ItemIndex := iif(SqlCdsPedidoCLI_CONSFINAL.AsString = 'S', 0, 1);
     cbFinalidade.ItemIndex := iif(SqlCdsPedidoCLI_CONSU_PROPRIO.AsString = 'S', 0, 1);

     vIdPedido := DBInicio.BuscaUmDadoSqlAsInteger('SELECT ID_PEDIDO FROM PED0000 WHERE PED_CODIGO='+qStr(sPedidoCodigo)+' and emp_codigo='+qStr(DBInicio.Empresa.EMP_CODIGO));
     if SqlCdsPedidoCLI_CPF.AsString <> '' then
        EdCnpj.Text := SqlCdsPedidoCLI_CPF.AsString;

     dblcInscricaoEstadual.KeyValue := SqlCdsPedidoEMI_CODIGO.AsString;
     iCodigoTipoPedido := SqlCdsPedidoOPV_CODIGO.AsInteger;
     EdPedidoNumero.Text := SqlCdsPedidoPED_CODIGO.AsString;
     DteEntrada.Date := SqlCdsPedidoPED_DTENTRADA.AsDateTime;
     DteEntrega.Date := SqlCdsPedidoPED_DTSAIDA.AsDateTime  ;
     EntregaHoras.EditText := FormatDateTime('hh:nn', SqlCdsPedidoPED_DTSAIDA.AsDateTime );
     //Prazo
     EdPrazo.idRetorno := SqlCdsPedidoPCL_CODIGO.AsString;
     IF NOT SqlCdsPedidoCORI_CODIGO.IsNull Then
       cbOrigem.idRetorno := IntToStr( SqlCdsPedidoCORI_CODIGO.AsInteger)
     else
       cbOrigem.idRetorno := '';
     CurFrete.Value := SqlCdsPedidoPED_VLFRETE.AsFloat;
     CurrValorCIF.Value := SqlCdsPedidoPED_VALOR_CIF.AsFloat;
     CurDespesasAcessorias.Value := SqlCdsPedidoPED_DESP_ACES.AsFloat;
     CurTotalDifal.Value := SqlCdsPedidoPED_VLDIFAL.AsFloat;;
     CurSeguro.Value := SqlCdsPedidoPED_VLSEGURO.AsFloat;
     CurDespesasImportacao.Value := SqlCdsPedidoPED_DESP_IMPOR.AsFloat;
     //Vendedor
     EdVendedor.idRetorno := SqlCdsPedidoREP_CODIGO.AsString;
     edVendInterno.idRetorno := SqlCdsPedidoREP_CODIGO_INTERNO.AsString;
     CurComissaoVendedor.Value := SqlCdsPedidoPED_COMIS1.AsFloat;
     CurComissaoInterna.Value := SqlCdsPedidoPED_COMISSAO_VEN.asFloat;
     CurComissaoGerente.Value := SqlCdsPedidoPED_COMIS2.AsFloat;
     CurComissaoSupervisor.Value := SqlCdsPedidoPED_COMIS3.AsFloat;
     CbDescontoNF.Checked := SqlCdsPedidoPED_DESCTONF.AsString = 'S';
     HabilitaDesabilitaDescontoNota(CbDescontoNF.Checked);
     //Transportadora
     EdTransportadora.idRetorno := SqlCdsPedidoTRP_CODIGO.AsString;
     //CFOP
     edCfop.idRetorno := StrZero(SqlCdsPedidoOPE_CODIGO.AsString,3);

     CbTipoFrete.ItemIndex := iif(SqlCdsPedidoPED_FRETE.AsString = '0',0,
                              iif(SqlCdsPedidoPED_FRETE.AsString = '1',1,
                              iif(SqlCdsPedidoPED_FRETE.AsString = '2',2,
                              iif(SqlCdsPedidoPED_FRETE.AsString = '3',3,
                              iif(SqlCdsPedidoPED_FRETE.AsString = '4',4,
                              5)))));
     //Projeto Obra
     edCCusto.idRetorno := SqlCdsPedidoPCX_CODIGO.AsString;
     if (edCCusto.idRetorno = '') then
        edCCusto.idRetorno := SqlCdsPedidoCENTRO_CUSTO_CLIENTE.AsString;

     CurDescontoNotaFiscal.Value := SqlCdsPedidoPED_DESCTOPC1.AsFloat;
     CurDescontoNotaFiscalAdicional.Value := SqlCdsPedidoPED_DESCTOPC2.AsFloat;
     CurDescontoNotaFiscalValor.Value := SqlCdsPedidoPED_DESCTOVL.AsFloat;
     EdNumeroPedidoCliente.Text := SqlCdsPedidoPED_NUMERO_PED_CLIENTE.AsString;
     edArquivoXML.Text := SqlCdsPedidoPED_CAMINHO_XML.AsString;
     EdContatoCliente.Text := SqlCdsPedidoPED_CONTATO_CLIENTE.AsString;
     edPlaca.Text := SqlCdsPedidoPED_PLACA.AsString;
     //EdPedidoNumeroOrcamento.Text := SqlCdsPedidoPED_CODIGO_ORCAMENTO.AsString;
     edFPagto.idRetorno:=SqlCdsPedidoFPG_REGISTRO.AsString;
     //Informações do Orçamento
     EdOrsCliente.Text := SqlCdsPedidoPED_ORS_CLIENTE.AsString;
     EdOrsEmail.Text := SqlCdsPedidoPED_ORS_EMAIL.AsString;
//     EdOrsFone.Text :=MascaraFone(OnlyNumber(SqlCdsPedidoPED_ORS_FONE.AsString));
     EdOrsFone.Text := SqlCdsPedidoPED_ORS_FONE.AsString;
     EdOrsFax.Text := SqlCdsPedidoPED_ORS_FAX.AsString;
     cbOrsConsFinal.ItemIndex := SqlCdsPedidoPED_ORS_CLI_CONSFINAL.AsInteger;
     rgOrsCliConsuProprio.ItemIndex := SqlCdsPedidoPED_ORS_CLI_CONSU_PROPRIO.AsInteger;
     cbOrsCliRegimeTributario.ItemIndex := SqlCdsPedidoPED_ORS_CLI_REGIME_TRIBUTARIO.AsInteger;
     cbbClienteEstado.Text := SqlCdsPedidoPED_ORS_ESTADO.AsString;
     EdOrsDiaEntrega.Text := SqlCdsPedidoPED_ORS_DIAS_ENTREGA.AsString;
     EdOrsDiaValidade.Text := SqlCdsPedidoPED_ORS_DIAS_VALIDADE.AsString;
     cbbClienteEstado.Text := SqlCdsPedidoPED_ORS_ESTADO.AsString;

     edtExportacaoUF.Text := SqlCdsPedidoPED_EXP_UF.AsString;
     edtExportacaoDescricaoLocalEmbarque.Text := SqlCdsPedidoPED_EXP_LOCAL_EXP.AsString;
     edtExportacaoDescricaoRecinto.Text := SqlCdsPedidoPED_EXP_LOCAL_RECINTO.AsString;
     GBInformacoesOrcamento.Visible :=  (SqlCdsTipoPedidoOPV_ORCAMENTO.AsString = 'S') and (SqlCdsPedidoPED_ORS_CLIENTE.AsString <> '');
     GBInformacoesCliente.Visible := not   GBInformacoesOrcamento.Visible;


//         if  GBInformacoesOrcamento.Visible then
//         begin
//               TabSheet5.Caption := 'Informações';
//         end;

     SituacaoPedido;

     CurValorFaturado.Value := SqlCdsPedidoPED_VLFATURADO.AsFloat;

     MemoObservacaoPedido.Text := SqlCdsPedidoPED_OBSERVACAO.AsString;
     MemoObservacaoProducao.Text := SqlCdsPedidoPED_OBS_PRODUCAO.AsString;
     MemoMensagemAdicionalNotaFiscal.Text := SqlCdsPedidoPED_OBSERVACAO_NOTA.AsString;
     mCabPPAC.Text := SqlCdsPedidoPED_SubcabecalhoPPAC.AsString;

     if (EdClienteUF.Text = '')and(cbbClienteEstado.Text <> '') then
        begin
           EdClienteUF.Text := cbbClienteEstado.Text;
        end;

     CdsCFOP.Close;
     CdsCFOP.CommandText := SQLDEF('OPERACAOFISCAL','Select OPE_CODIGO, OPE_NATUREZA||''-''||OPE_DESCRI as OPE_DESCRI FROM OPE0000','WHERE OPE_TIPO_OPERACAO <> ''C'' AND ((OPE_DENTRO = '+QuotedStr(iif(EdClienteUF.Text = dbInicio.EMPRESA.UF,'D','F'))+')OR(OPE_DENTRO = ''I''))','OPE_NATUREZA','');
     CdsCFOP.Open;
     BuscaPedidoItem( sPedidoCodigo, false );
     //CalcutaTotalItens;

   end
   else
   if ActiveControl<>nil then
     if (ActiveControl.name <> 'SpeedButton1') or (ActiveControl.name <> 'btAdicionaXML') then
        HabilitaDesabilitaEdicao(False);


    if edPrazo.idRetorno <> EmptyStr then
    begin
       qBuscoFrete.Close;
       qBuscoFrete.SQL.Clear;
       qBuscoFrete.SQL.Add('SELECT PERC_COMISSAO, PERC_VERBA FROM PCL0000 WHERE PCL0000.PCL_CODIGO = '+edPrazo.idRetorno);
       qBuscoFrete.Open;

       rComissaoDoPrazo :=  qBuscoFrete.Fields[0].AsCurrency;
       rVerbaDoPrazo    :=  qBuscoFrete.Fields[1].AsCurrency;
    end;
 if SqlCdsTipoPedido.Active then
   if (SqlCdsTipoPedidoOPV_INDUSTRIALIZACAO.AsString <> 'S') then
     wRetornoInd := False
   else
     wRetornoInd := True;

  PedidoMinimo(sPedidoCodigo);
  CalcutaTotalItens;

end;

procedure TFrmPedido.BuscaPedidoItem(const sPedidoCodigo: String; bCalcula: boolean);
var
   sQuery, sEmpresa:String;
begin
   SqlCdsPedidoItem.Close;
   if (sPedidoCodigo <> '') then
   begin
         sEmpresa := '';
         if dbinicio.Exclusivo('PRODUTOS') then
            sEmpresa := ' and t2.emp_codigo = t1.emp_codigo ';

         sQuery := 'select cast(CASE PRF_PRODUTO_AGREGADO  '+
                   '         WHEN ''N'' THEN PRF_REGISTRO '+
                   '         WHEN ''S'' THEN t1.prf_registro_vinculado|| ''.'' ||  PRF_REGISTRO   '+
                   ' END AS NUMERIC(14,10)) registro_seq,  '+
                   ' t2.PRD_CODIGO,t1.ITT_REGISTRO,t1.PRF_TABPRECO,'+
                   '       t1.PRF_SEQUENCIA,'+
                   '       t1.PRDL_REGISTRO,'+
                   '       t1.AMX_CODIGO_DESTINO,'+
                   '       t1.ped_codigo, '+
                   '       t1.prf_registro, '+
                   '       t1.prd_refer, '+
                   '       t4.prdd_sigla, '+
                   '       T1.PRF_PRDDESCRI  AS DESCRICAO,' +
                   '       t1.PRF_PESO, ' +
//                   '       coalesce(t1.PRF_PRDDESCRI,'''')||'' '+IIF(dbInicio.GetParametroSistema('PMT_COMP_ITEM_PEDIDO') = 'S','''||coalesce(t1.prf_compl_descri,'''')||''','')+' ''||coalesce(case when (T4.prdd_sigla <> '''') THEN ''[''||T4.prdd_sigla||'']'' END,'''') AS DESCRICAO, '+
                   '       t1.prf_qtde, '+
                   '       t2.prd_codigo,' +
                   '       t2.prd_descri, '+
                   '       t1.PRDD_REGISTRO,' +
                   '       t1.PRDCO_CODIGO_ORIGINAL,'+
                   '       COALESCE(t1.PRD_UND,t2.PRD_UND) AS PRD_UND,'+
                   '       t1.prf_produto_agregado, '+
                   '       t1.prg_registro, '+
                   '       t1.prf_compl_descri, '+
                   '       t1.amx_codigo_destino, '+
                   '       t1.prf_idescto1, '+
                   '       t1.prf_idescto2, '+
                   '       t1.PRF_VALOR_ST, '+
                   '       t1.prf_qtdefat, '+
                   '       t1.prf_acrescimo, '+
                   '       t1.prf_preco_bruto, '+
                   '       case when (t1.prf_preco_bruto > t1.prf_preco) '+
                   '            then (t1.prf_preco_bruto - t1.prf_preco) '+
                   '            else 0.00 '+
                   '       end as desconto,'+
                   '       t1.prf_preco, '+
                   '       t1.prf_custo, '+
                   '       0.00 as markup, '+
                   ' CASE PRF_PRODUTO_AGREGADO'+
                   ' WHEN ''N'' THEN cast(cast(t1.PRF_QTDE as numeric(15,3)) * cast(t1.PRF_PRECO as numeric(15,5)) as numeric(18,2))                                                                              '+
                   ' ELSE cast(cast(t1.PRF_QTDE as numeric(15,3)) * cast(t1.PRF_PRECO as numeric(15,5)) as numeric(18,2))*(SELECT PRF_QTDE FROM PED_IT01 it2 WHERE it2.PRF_REGISTRO = t1.PRF_REGISTRO_VINCULADO)' +
                   ' END AS TOTAL, '  +
                   ' (SELECT PRF_QTDE FROM PED_IT01 it2 WHERE it2.PRF_REGISTRO = t1.PRF_REGISTRO_VINCULADO) as QtdeKit, '+
                  // '       cast(cast(t1.PRF_QTDE as numeric(15,3)) * cast(t1.PRF_PRECO as numeric(15,5)) as numeric(18,2))  as total,'+
                   '       t1.prf_ipialiq, '+
                   '       t1.prf_itemcomis, '+
                   '       t1.PRF_B2B_PEDIDO_COMPRA,'+
                   '       t1.PRF_B2B_ITEM_PEDIDO_COMPRA,'+
                   '       case '+
                   '            when ((select count(t6.pid_registro) from ped_it01_di t6 where t6.prf_registro = t1.prf_registro) > 0) then '+
                   '            ''S'' '+
                   '            else '+
                   '            ''N'' '+
                   '       end as di, '+
                   '       t2.prd_pesoliq, '+
                   '       t2.prd_pesokg,'+
                   '       T2.PRD_ORIGEM,'+
                   '       t1.prf_qtde_env_producao,'+
                   '       t3.PRG_DESCRICAO,'+
                   '       t3.PRG_MEDIDA_1,'+
                   '       t3.PRG_MEDIDA_2,'+
                   '       t3.PRG_MEDIDA_3,'+
                   '       t2.PRD_FATOR_PROD,'+
                   '       t2.PRD_ALIQICM, '+
                   '       t2.IPI_CODIGO, '+
                   '       t5.pti_sigla,'+
                   '       COALESCE(t2.PRD_PRODSERV,''P'') as  PRD_PRODSERV, ID_DIRETIVAS,Usou_Verba, Valor_Verba,'+
                   '       t1.prf_registro_vinculado, '+
                   '      COALESCE(t1.NCM_CODIGO,t2.ipi_codigo) AS NCM_CODIGO, PRF_PRAZO_ENTREGA, PRF_PRAZO_DIAS,  ' +
                   '     (CASE ' +
                   '          WHEN (SELECT PMT_HAB_TERMICO FROM PRMT0001 p WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo) + ') = ''S'' THEN t1.PRF_PESOKG ' +
                   '          WHEN COALESCE(t1.PRD_UND,	t2.PRD_UND) = ''KG''  THEN  t1.PRF_QTDE ' +
                   '          ELSE CASE ' +
                   '                    WHEN t2.PRD_PESOliq = 0 THEN PRF_PESOKG ' +
                   '                    ELSE t2.PRD_PESOLIQ  * t1.PRF_QTDE ' +
                   '               END ' +
                   '     END) AS PRF_PESOKG, ' +
                   '     PRF_MARGEM_PRODUTO, PRF_ICMSALIQ, PRF_VALOR_ICMS, COALESCE(prf_qtdePend,0) AS prf_qtdePend , ' +
                   '     PRF_PRODUTO_SEMVALOR, ' +
                   ' (SELECT CAST(COUNT(1) AS INTEGER) FROM PED_IT01 it2 WHERE T1.PRF_REGISTRO = IT2.PRF_REGISTRO_VINCULADO)  KIT_VIRTUAL, '+
                   ' PED_TIPOPECA_TERM, PED_MATERIAL_TERM , PED_DUREZASUPERFICIAL_TERM, PED_DUREZANUCLEO_TERM , PED_PROFUNDIDADE_TERM ,  PED_TAMANHOGRAO_TERM, PED_EHT_TERM , PED_DESENHO_TERM,  ' +
                   ' PRF_QUANT_TRIB, T2.PRD_UND_TRIB, T1.CAP_CODIGO, T1.ACO_CODIGO '+
                   'from  ped_it01 t1 '+
                   ' join  prd0000 t2 on t2.prd_codigo = t1.prd_codigo '+
                //  '      join prd0000 t2 on t2.prd_refer = IIF(Coalesce(t1.prd_refer,'+qStr('')+')='+qStr('')+',T1.prdco_codigo_original,T1.prd_refer) '+sEmpresa+' '+
                   '      left join prd_grade t3 on (t3.prg_registro = t1.prg_registro) '+
                   '      left join prd_diretiva t4 on (t4.prdd_registro = t1.prdd_registro) '+
                   '      left join PRD_TIPO T5 on (t5.pti_codigo = t2.pti_codigo) ';
         qCdsPedidoItem.sql.text := SQLDEF('PEDIDOS',sQuery,'where t1.ped_codigo = '+qStr(sPedidoCodigo),'t1.PRF_SEQUENCIA' ,'t1.');
         if DBInicio.IsDesenvolvimento then
            CopyToClipBoard(qCdsPedidoItem.sql.text);
         SqlCdsPedidoItem.Open;
         sUltimoAlmoxDigitado := SqlCdsPedidoItemAMX_CODIGO_DESTINO.AsString;
   end;
   if bCalcula then
     CalcutaTotalItens;
end;


procedure TFrmPedido.CalculaIndiceDescto;
begin

   wCurDescontoIndice:= CurDescontoNotaFiscal.Value ;

   if CurDescontoNotaFiscalAdicional.Value > 0 then
      wCurDescontoIndice := CurDescontoNotaFiscal.Value + ( CurDescontoNotaFiscalAdicional.Value * (1-(CurDescontoNotaFiscal.Value/100)) );

   if (wCurDescontoIndice > 0) then
      CurDescontoNotaFiscalValor.Value := CurTotalProduto.Value * wCurDescontoIndice/100;

end;


function TFrmPedido.buscaAliquotaICMS(prdRefer: string): double;
var
  regime: string;
  origem, uf: string;
  aliq: double;
  estadual: boolean;
begin

  {
    0 – Nacional, exceto as indicadas nos códigos  3, 4, 5 e 8
    1 – Estrangeira – Importação direta, exceto a indicada no código 6
    2 – Estrangeira – Adquirida no mercado interno, exceto a indicada no código 7
    3 – Nacional, mercadoria ou bem com Conteúdo de Importação superior a 40% (quarenta por cento)
    4 – Nacional, cuja produção tenha sido feita em conformidade com os processos produtivos básicos de que tratam o Decreto-Lei nº 288/67, e as Leis nºs 8.248/91, 8.387/91, 10.176/01 e 11.484/07
    5 – Nacional, mercadoria ou bem com Conteúdo de Importação inferior ou igual a 40% (quarenta por cento)
    6 - Estrangeira - Importação direta, sem similar nacional, constante em lista da CAMEX e gás natural
    7 - Estrangeira - Adquirida no mercado interno, sem similar nacional, constante lista CAMEX e gás natural.
    8 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 70% (setenta por cento).
  }
  case dbinicio.BuscaUmDadoSqlAsInteger('SELECT PRD_ORIGEM FROM PRD0000 WHERE PRD_REFER = ' + QuotedStr(prdRefer) ) of
    0, 4 ,5 ,6, 7 : origem := 'N';
    1, 2, 3, 8 : origem := 'E';
  end;

  if EdClienteCodigo.Text <> '' then
  begin
//    regime := dbinicio.BuscaUmDadoSqlAsString('SELECT CLI_REGIME_TRIBUTARIO FROM CLI0000 WHERE CLI_CODIGO = ' + QuotedStr(EdClienteCodigo.Text) );
    estadual := EdClienteUF.Text = DBInicio.Empresa.UF;
    uf := EdClienteUF.Text;
  end
  else
  begin
//    regime := iif(cbOrsCliRegimeTributario.ItemIndex = 0, 'S', 'N');
    estadual := cbbClienteEstado.Text = DBInicio.Empresa.UF;
    uf := cbbClienteEstado.Text;
  end;
  regime := dbinicio.BuscaUmDadoSqlAsString('SELECT EMP_CRT FROM EMP0000 WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo) );
  if (regime = '3')  then
  begin
    aliq := dbinicio.BuscaUmDadoSqlAsFloat('SELECT PRD_ALIQICM FROM PRD0000 WHERE PRD_REFER = ' + QuotedStr(prdRefer) );
    if aliq = 0 then
    begin
      if estadual and (origem = 'N') then
        aliq := dbinicio.BuscaUmDadoSqlAsFloat('select ICM_ALIQ ' +
                                      'from ICM0000 WHERE ICM_DESTINO = ' + quotedstr(uf) + ConcatSe( ' AND ', dbInicio.ExclusivoSql('ICMS') ) )
      else
      if estadual and (origem = 'E') then
        aliq := dbinicio.BuscaUmDadoSqlAsFloat('select ICMS_PROD_IMPORTADO ' +
                                      'from ICM0000 WHERE ICM_DESTINO = ' + quotedstr(uf) + ConcatSe( ' AND ', dbInicio.ExclusivoSql('ICMS') )  )
      else
      if not estadual and (origem = 'N') then
        aliq := dbinicio.BuscaUmDadoSqlAsFloat('select ICM_ALIQ ' +
                                      'from ICM0000 WHERE ICM_DESTINO = ' + quotedstr(uf) + ConcatSe( ' AND ', dbInicio.ExclusivoSql('ICMS') ) )
      else
      if (origem = 'E') then
        aliq := dbinicio.BuscaUmDadoSqlAsFloat('select ICMS_PROD_IMPORTADO ' +
                                      'from ICM0000 WHERE ICM_DESTINO = ' + quotedstr(uf) + ConcatSe( ' AND ', dbInicio.ExclusivoSql('ICMS') )  ) ;
    end;
  end
  else
    aliq := 0;


  Result := aliq;

end;

procedure TFrmPedido.CalcutaTotalItens;
var
   rTotalCusto:Currency;
   rTotalProduto:Real;
   clone: TClientDataSet;
   i : Integer;
   rMarkup, wIcmsAliq : double;
   bNaotributaIPI: Boolean;
begin
   CalculaIndiceDescto;
   rQuantidadeItens := 0;
   rTotalCusto := 0;
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
   try
     // if FrmPedidoItem = nil then
     //  FrmPedidoItem := TFrmPedidoItem.Create(Self);
     SqlCdsPedidoItem.DisableControls;

     rTotalProduto := 0;
     if SqlCdsPedidoItem.active then
     begin
          SqlCdsPedidoItem.First;
          while (not SqlCdsPedidoItem.Eof) do // obtem valor total de produtos
          begin

            if (SqlCdsPedidoItemPRF_PRODUTO_AGREGADO.AsString = 'N') then//or ((DBInicio.Empresa.wPMT_VALOR_KIT) and (DBInicio.Empresa.wPMT_ITENS_KIT)) then
              rTotalProduto := rTotalProduto + SqlCdsPedidoItemTOTAL.AsFloat;
            if dbInicio.Empresa.PMT_HABILITA_ICMS_PEDIDO then
              wIcmsAliq := buscaAliquotaICMS(SqlCdsPedidoItemPRD_REFER.AsString)
            else
              wIcmsAliq := 0;

            ExecSQL('UPDATE PED_IT01 SET ' +
                    ' PRF_ICMSALIQ = ' + FloatToSQL(wIcmsAliq) + ', ' +
                    ' PRF_VALOR_ICMS = ' + FloatToSQL((SqlCdsPedidoItemTOTAL.AsFloat / 100 * wIcmsAliq)) +
                    ' WHERE PED_CODIGO = ' + QuotedStr(SqlCdsPedidoItemPED_CODIGO.AsString) +
                    ' AND PRD_REFER = ' + QuotedStr(SqlCdsPedidoItemPRD_REFER.AsString) +
                    ' AND EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo) +
                    ' AND PRF_SEQUENCIA = ' + IntToStr(SqlCdsPedidoItemSequencia.AsInteger))
                    ;

            SqlCdsPedidoItem.Next;
          end;
          SqlCdsPedidoItem.First;
     end;
     // FreeAndNil(FrmPedidoItem);

     if (wCurDescontoIndice > 0) then
     begin
           CurTotalDesconto.Value := rTotalProduto * (wCurDescontoIndice/100);
           if (CbDescontoNF.Checked)and((CurDescontoNotaFiscal.Value > 0) or (CurDescontoNotaFiscalAdicional.Value > 0)) then
              if CurTotalProduto.Value > 0 then // valor ainda não calculado
               CurDescontoNotaFiscalValor.Value := CurTotalProduto.Value * (wCurDescontoIndice/100);
           //vMultDesc:=1-(wCurDescontoIndice/100);
     end
     else
     if (CurDescontoNotaFiscalValor.Value > 0) then
     begin
        CurTotalDesconto.Value := CurDescontoNotaFiscalValor.Value;
        //vMultDesc:=1-(CurTotalDesconto.Value/rTotalProduto);
     end
     else
     begin
        CurTotalDesconto.Value := 0;
        //vMultDesc:=1;
     end;

     IF SqlCdsPedidoItem.ACTIVE THEN
        if (not SqlCdsPedidoItem.IsEmpty) then
        begin
           CurTotalItens.Value := SqlCdsPedidoItem.RecordCount;
           SqlCdsPedidoItem.First;
           rTotalProduto:=0;
           while (not SqlCdsPedidoItem.Eof) do
           begin
                 if (SqlCdsPedidoItemPRF_PRODUTO_AGREGADO.AsString = 'N')then
                    rTotalCusto := rTotalCusto + (SqlCdsPedidoItemPRF_QTDE.AsCurrency * SqlCdsPedidoItemPRF_CUSTO.AsFloat);
                 rTotalProdutosBruto := rTotalProdutosBruto + (SqlCdsPedidoItemPRF_QTDE.AsCurrency * SqlCdsPedidoItemPRF_PRECO_BRUTO.AsCurrency);
                 rQuantidadeItens := rQuantidadeItens + SqlCdsPedidoItemPRF_QTDE.AsFloat;

                 rQuantidadeItensFaturado := rQuantidadeItensFaturado + SqlCdsPedidoItemPRF_QTDEFAT.AsFloat;

                 // rTotalPedidoComDesconto = valor total do pedido já com os descontos
                 rTotalPedidoComDesconto := rTotalPedidoComDesconto + (SqlCdsPedidoItemPRF_QTDE.AsFloat * SqlCdsPedidoItemPRF_PRECO.AsFloat);
                 // soma o valor de todos os desconto de cada item para calculo correto de comissao
                 if (SqlCdsPedidoItemPRF_ITEMCOMIS.AsFloat > 0) then
                    rTotalComisPrecoLiquido := rTotalComisPrecoLiquido + ((SqlCdsPedidoItemPRF_QTDE.AsFloat * SqlCdsPedidoItemPRF_PRECO.AsFloat) * (SqlCdsPedidoItemPRF_ITEMCOMIS.AsFloat/100));

                 //rDescontoItem := SqlCdsPedidoItemTOTAL.AsFloat * (wCurDescontoIndice/100);
                 if SqlCdsPedidoItemPRF_PESOKG.AsFloat > 0  then
                   CurTotalPesoLiquido.Value := CurTotalPesoLiquido.Value + (SqlCdsPedidoItemPRF_PESOKG.AsFloat) // * SqlCdsPedidoItemPRF_QTDE.AsFloat
                 else
                   CurTotalPesoLiquido.Value := CurTotalPesoLiquido.Value + (iif(SqlCdsPedidoItemPRD_PESOLIQ.AsFloat = 0, SqlCdsPedidoItemPRF_PESO.AsFloat, SqlCdsPedidoItemPRD_PESOLIQ.AsFloat * SqlCdsPedidoItemPRF_QTDE.AsFloat) );
                 bNaotributaIPI := False;
                  if (edCfop.IDRetorno <> '') then
                    bNaotributaIPI := BuscaUmDadoSqlAsString('SELECT OPE_TRIBIPI FROM OPE0000 where ope_codigo = '+QuotedStr(edCfop.idRetorno) )  = 'N';


                 if (SqlCdsPedidoItemPRF_IPIALIQ.AsFloat > 0) AND NOT bNaotributaIPI then
                    CurTotalIPI.Value := CurTotalIPI.Value + ( (SqlCdsPedidoItemTOTAL.AsFloat) * (SqlCdsPedidoItemPRF_IPIALIQ.AsFloat/100));

                 if (SqlCdsPedidoItemPRF_PRODUTO_AGREGADO.AsString = 'N') then //AND (SqlCdsPedidoItemPRF_ATUALIZOU_ESTOQUE.AsString = 'S')  then
                    rTotalProduto := rTotalProduto + SqlCdsPedidoItemTOTAL.AsFloat;

                    //CurTotalDesconto.Value := CurTotalDesconto.Value + SqlCdsPedidoItemDESCONTO.AsFloat * SqlCdsPedidoItemPRF_QTDE.AsFloat;
                 CurTotalST.Value := CurTotalST.Value + SqlCdsPedidoItemPRF_VALOR_ST.AsFloat;
                 SqlCdsPedidoItem.Next;
           end;
           SqlCdsPedidoItem.first;
           // o pedido tem desconto e tem IPI, não incluir o desconto do pedido sobre o IPI, somente o valor liquidio
           // regra de 3 simples : valor IPI = VALOR LIQUIDO X IPI TOTAL / SOBRE VALOR TOTAL
           if (CurTotalIPI.Value > 0) and (CurTotalDesconto.Value > 0) then
             CurTotalIPI.Value := (rTotalProduto - CurTotalDesconto.Value )* CurTotalIPI.Value / rTotalProduto    ;
           CurTotalProduto.Value := rTotalProduto;
         end;

     CurTotalPedido.Value := (CurTotalProduto.Value + CurTotalIPI.Value + CurFrete.Value + CurDespesasAcessorias.Value +CurSeguro.Value+CurTotalDifal.Value+CurTotalST.Value) ;

     //Markup
     if (dbInicio.Empresa.bVisualizaMarkupPedido) then
     begin
       if not SqlCdsPedidoItem.IsEmpty and SqlCdsPedidoItem.Active then
       begin
         if (CurTotalProduto.Value > 0)and(rTotalCusto > 0) then
           CurMarkup.Text := FormatFloat( '##0.00 %',    ((CurTotalProduto.Value / rTotalCusto) - 1) * 100 );
        end;
       if SqlCdsPedidoItem.IsEmpty then
         CurMarkup.Text := '0.00 %';
     end
     else
         CurMarkup.Text := '0.00 %';

     CurTotalPedido.Value := CurTotalPedido.Value - CurTotalDesconto.Value;
     IF SqlCdsPedidoPED_SITUACAO.AsString = 'T' then
       CurrValorAFaturar.Value:=0
     else
     begin
       CurrValorAFaturar.Value := CurTotalPedido.Value - CurValorFaturado.Value ;
       if CurrValorAFaturar.Value<0 then
          CurrValorAFaturar.Value:=0;
     end;
     if CurTotalProduto.Value<>0 then
        edtPercentStProduto.Value := (CurTotalST.Value * 100) / CurTotalProduto.Value
     Else
        edtPercentStProduto.Value := 0;

   finally
     SqlCdsPedidoItem.EnableControls;
   end;
end;

procedure TFrmPedido.FormKeyDown(Sender: tObject; var Key: Word;
  Shift: TShiftState);
begin
     inherited;

     if (Key = VK_F2) then
     begin
          Key := 0;
          if BuscaUmDadoSqlAsString('SELECT PMT_IMPORTA_ITENS_XML FROM PRMT0001 WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.Empresa.EMP_CODIGO)) = 'S'  then
          begin
            SpeedButton1Click(Sender);            
          end
          else
          begin
            SpeedButton1.SetFocus;
            SpeedButton1.Click;
            if frmPedido = nil then
              Abort;
          end;
          //AdicionaItem;
     end
     else
     if (Key = VK_F3) then
     begin
          Key := 0;
          Reajuste;
     end
     else
     if (key = VK_F11) then
        spRedimecionarItem.Click
     else
     if (Key = VK_F4) AND (SqlCdsTipoPedidoOPV_INDUST_POR_KIT.AsString = 'S') then
     begin
        Key := 0;
        IndustrializacaoPorKit;
     end
     else
     if (Key = VK_F4) AND (SqlCdsTipoPedidoOPV_INDUST_POR_KIT.AsString <> 'S') then
     begin
        MessageDlg('Tipo de pedido não é Industrialização por Kit', mtWarning, [mbOK], 0);
     end
     else
     if (Key = VK_F5) then
     begin
          Key := 0;
          if (dbInicio.GetParametroUsuario('USP_VISUALIZA_ANALISE_CREDITO_') = 'S') then
          begin
            FrmFinanceiroAnaliseCreditoCliente := TFrmFinanceiroAnaliseCreditoCliente.Create(Application);
            try
              FrmFinanceiroAnaliseCreditoCliente.sCliente := EdClienteCodigo.Text;
              FrmFinanceiroAnaliseCreditoCliente.ShowModal;
            finally
              FrmFinanceiroAnaliseCreditoCliente.Destroy;
              FrmFinanceiroAnaliseCreditoCliente := nil;
            end;
          end
          else
              uteis.erro  ('Sem permissão para visualizar a análise de Crédito');
     end
     else
     if key = VK_F7 then
       btnAgenda.Click
     else
     if (Key = VK_F6) then
     begin
         Key := 0;
         RetornoIndustrializacao;
         wRetornoInd := True;
     end

     else
     if (Key = VK_F8) and DBInicio.Empresa.PMT_HABILITAR_MRP then
     begin
          Key := 0;
          EnviarPedidoProducao;
     end

     else
     if (Key = VK_F9 ) and DBInicio.Empresa.PMT_HABILITAR_MRP  then
     begin
        Key := 0;
        if not Assigned(frmDemandaProducao) then
          frmDemandaProducao := TfrmDemandaProducao.Create(Application);
        frmDemandaProducao.Show;

     end  ;
end;



procedure TFrmPedido.HabilitaDesabilitaEdicao(const bStatus: Boolean);
var agrupado : Boolean;
begin

   agrupado:=  SqlCdsPedido.ACTIVE and (not SqlCdsPedido.IsEmpty) and (SqlCdsPedidoOPV_AGRUPADO.AsString = 'S'); //O pedido não pode ser editado pois é um agrupamento de pedidos

   BotoesAcesso;
   PageControl1.ActivePageIndex := 0;
   PageControl2.ActivePageIndex := 0;
   bEdicao := bStatus;

   cbExped.Enabled := bstatus and (DBInicio.Empresa.PMT_LIBERAR_EXPEDICAO = 'P') and  (SqlCdsTipoPedidoopv_expedicao.AsString='S');
   ;
 //  GBInformacoesPedido.Visible :=false ;
   tsComisssao.TabVisible := DBInicio.Empresa.bHabilitaComissaoPedido;
   //Groups Box
   // GBInformacoesCliente.Enabled := bStatus and not agrupado;
   GBInformacoesCliente.Enabled := bStatus;
   EdClienteCodigo.Enabled := bStatus and not agrupado;
   EdCliente.Enabled := bStatus and not agrupado;
   dblcInscricaoEstadual.Enabled := bStatus and not agrupado;



   GBInformacoesPedido.Enabled := True;
   pInforPrincipais.Enabled := bstatus ;
   poutros.Enabled := bstatus ;

   gbcomissao.Enabled := bstatus ;
   pPPAC.Enabled :=  bstatus ;
   pdesconto.Enabled :=bstatus;
   ppedido.Enabled := bstatus ;
   SpeedTipo.Enabled := bStatus and not agrupado;

   PageControl4.Enabled := bStatus; //  and not agrupado;
   GbObservacao.Enabled := bStatus ;
   gbObsProducao.Enabled := bStatus ;
   GbMensagemAdicionalNotaFiscal.Enabled := bStatus ;
   //Botoes
   BtnConsultar.Enabled := not bStatus;
   if (bStatus) then
      BtnRelatorios.Enabled := dbInicio.Empresa.AcessoRelatorios_P  = 'S';
   BtnNovo.Enabled := not bStatus;
   if BuscaUmDadoSqlAsString('SELECT PMT_IMPORTA_ITENS_XML FROM PRMT0001 WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.Empresa.EMP_CODIGO)) = 'S'  then
   begin
     if not bStatus and SqlCdsPedido.IsEmpty then
     begin
       btAdicionaXML.Caption := 'Pesquisar [F2]';
       btAdicionaXML.Hint := 'Pesquisar itens';
       btAdicionaXML.Glyph := nil;
       ImageList1.GetBitmap(3,btAdicionaXML.Glyph);
       btAdicionaXML.Tag := 1 ;
     end
     else
     begin
       btAdicionaXML.Caption := 'Adicionar [F2]';
       btAdicionaXML.Hint := 'Adiciona novo item';
       btAdicionaXML.Glyph := nil;
       ImageList1.GetBitmap(2,btAdicionaXML.Glyph);
       btAdicionaXML.Tag := 0 ;
     end;     
   end
   else
   begin
     if not bStatus and SqlCdsPedido.IsEmpty then
     begin
       SpeedButton1.Caption := 'Pesquisar [F2]';
       SpeedButton1.Hint := 'Pesquisar itens';
       SpeedButton1.Glyph := nil;
       ImageList1.GetBitmap(3,SpeedButton1.Glyph);
       SpeedButton1.Tag := 1 ;
     end
     else
     begin
       SpeedButton1.Caption := 'Adicionar [F2]';
       SpeedButton1.Hint := 'Adiciona novo item';
       SpeedButton1.Glyph := nil;
       ImageList1.GetBitmap(2,SpeedButton1.Glyph);
       SpeedButton1.Tag := 0 ;

     end;

   end;
   BtnAlterar.Enabled := False;
   BtnExcluir.Enabled := False;
   BtnEmail.Enabled := False;
   BtnImprimir.Enabled := False;

   BtnDuplicar.Enabled := False;
   btnFaturarNFCE.Visible := DBInicio.Empresa.wPmt_Ativa_NFCE;
   btnFaturarNFCE.Enabled := not bStatus and SqlCdsPedido.ACTIVE and not SqlCdsPedido.IsEmpty and  (SqlCdsTipoPedidoOPV_ORCAMENTO.AsString <> 'S')
      and (SqlCdsTipoPedidoOPV_FATURAMENTO.AsString = 'S') and not MatchStr(SqlCdsPedidoPED_SITUACAO.AsString,['T','C','A'])  ;

   btnFaturamento.Enabled := not bStatus and SqlCdsPedido.ACTIVE and not SqlCdsPedido.IsEmpty and   (SqlCdsTipoPedidoOPV_ORCAMENTO.AsString <> 'S')
    and (SqlCdsTipoPedidoOPV_FATURAMENTO.AsString = 'S') and not MatchStr(SqlCdsPedidoPED_SITUACAO.AsString,['T','C','A'])
    and ((SqlCdsPedidoPed_faturar_liberado.AsString = 'N') AND (DBInicio.Empresa.wTipoLiberacaoFaturamento = 'M'))    //MANUAL E NÃO LIBERADO
    and (SqlCdsTipoPedidoOPV_INDUSTRIALIZACAO.AsString <> 'S') ; // não é industrialização

   btnOrdemProducao.Visible :=  not bStatus and SqlCdsPedido.ACTIVE and not SqlCdsPedido.IsEmpty and dbinicio.empresa.wPMT_PROD_TERMICO;// (SqlCdsTipoPedidoOPV_INDUSTRIALIZACAO.AsString = 'S' ) ;
   btnOrdemProducao.Enabled :=  not bStatus and SqlCdsPedido.ACTIVE and not SqlCdsPedido.IsEmpty and dbinicio.empresa.wPMT_PROD_TERMICO;// (SqlCdsTipoPedidoOPV_INDUSTRIALIZACAO.AsString = 'S' ) ;

   pMensagemFat.Visible:=  SqlCdsPedido.ACTIVE and not SqlCdsPedido.IsEmpty and   (SqlCdsTipoPedidoOPV_ORCAMENTO.AsString <> 'S')
    and (SqlCdsTipoPedidoOPV_FATURAMENTO.AsString = 'S') and not MatchStr(SqlCdsPedidoPED_SITUACAO.AsString,['T','C','A'])
    and ((SqlCdsPedidoPed_faturar_liberado.AsString = 'S') AND (DBInicio.Empresa.wTipoLiberacaoFaturamento = 'M'));

   IF SqlCdsPedido.ACTIVE THEN
   if (not SqlCdsPedido.IsEmpty) then
   begin
         BtnEmail.Enabled := not bStatus and SqlCdsPedido.ACTIVE and not SqlCdsPedido.IsEmpty and (pnPedidoMinimo.Font.Color = clGreen);
         BtnImprimir.Enabled := not bStatus and SqlCdsPedido.ACTIVE and not (SqlCdsPedido.IsEmpty or SqlCdsPedidoItem.IsEmpty) and (pnPedidoMinimo.Font.Color = clGreen);
         if not DBInicio.Empresa.USP_DESABILITA_COPIAR_PEDIDO then
            BtnDuplicar.Enabled := not bStatus and SqlCdsPedido.ACTIVE and not SqlCdsPedido.IsEmpty;
         BtnAlterar.Enabled := not bStatus and SqlCdsPedido.ACTIVE and not SqlCdsPedido.IsEmpty ;

         if not MatchStr(SqlCdsPedidoPED_SITUACAO.AsString,['T','C','A'])  then //à Faturar
             //Permissão do usuario
           BtnExcluir.Enabled := not bStatus and dbInicio.Empresa.bUSP_EXCLUSAO_PEDIDO_P
         else
           GBInformacoesCliente.Enabled := False;
   end;

   if ActiveControl<>nil then
     if (ActiveControl.name <> 'SpeedButton1') or (ActiveControl.name <> 'btAdicionaXML')  then
       BotoesAcesso;
   BtnGravar.Enabled := bStatus;
   Bit_Sair.Visible := not bStatus;
   BtnCancelar.Enabled := bStatus;

  edVendedor.Enabled :=  NOT DBInicio.Empresa.USP_BLOQUEIO_ALTERA_VENDEDOR;
  EdVendedorCodigo.Enabled := NOT DBInicio.Empresa.USP_BLOQUEIO_ALTERA_VENDEDOR;
  edVendInternoCodigo.Enabled := NOT DBInicio.Empresa.USP_BLOQUEIO_ALTERA_VENDEDOR;
  edVendInterno.Enabled := NOT DBInicio.Empresa.USP_BLOQUEIO_ALTERA_VENDEDOR;

end;

procedure TFrmPedido.CurDescontoNotaFiscalExit(Sender: tObject);
var tcr : tFrmAutoriza;
    fAutorizado : boolean;
begin
  fAutorizado:= true;
  if  (dbinicio.Empresa.DesctoMaximo_P < (CurDescontoNotaFiscal.value + CurDescontoNotaFiscalAdicional.Value ) ) and (dbinicio.Empresa.DesctoMaximo_P>0) then
  begin

     tcr := tFrmAutoriza.Create(self) ;
       try
          tcr.TipoValidacao := vPrecoAbaixoCusto;
          tcr.lbAviso.Caption := 'Preço de venda informado é menor que o valor de custo ou abaixo da 1a tabela !';
          tcr.ShowModal;
          if tcr.modalresult<>mrOk then
          begin
             CurDescontoNotaFiscal.Value := 0 ;
             CurDescontoNotaFiscalAdicional.Value := 0;
             CurDescontoNotaFiscalValor.Value := 0;
             fAutorizado:= False;
             GeraException('Não Autorizado!');
          end
          else
             fAutorizado := True;
       finally
         FreeAndNil( tcr ) ;
       end;

  end;
  if fAutorizado then CalculaIndiceDescto;


end;

procedure TFrmPedido.CurDescontoNotaFiscalValorExit(Sender: TObject);
var
  desconto: Double;
  tcr : tFrmAutoriza;
begin
  CurDescontoNotaFiscalAdicional.Value := 0;
  CurDescontoNotaFiscal.Value := 0;
  desconto := (CurDescontoNotaFiscalValor.Value  / CurTotalProduto.Value) * 100;
  if (dbinicio.Empresa.DesctoMaximo_P < desconto) and (dbinicio.Empresa.DesctoMaximo_P > 0) then
  begin
     tcr := tFrmAutoriza.Create(self) ;
       try
          tcr.TipoValidacao := vPrecoAbaixoCusto;
          tcr.lbAviso.Caption := 'Preço de venda informado é menor que o valor de custo ou abaixo da 1a tabela !';
          tcr.ShowModal;
          if tcr.modalresult<>mrOk then
          begin
             CurDescontoNotaFiscal.Value := 0 ;
             CurDescontoNotaFiscalAdicional.Value := 0;
             CurDescontoNotaFiscalValor.Value := 0;
             GeraException('Não Autorizado!');
          end
       finally
         FreeAndNil( tcr ) ;
       end;
  end;


end;

procedure TFrmPedido.CurDifalChange(Sender: TObject);
begin
  inherited;
  CurTotalDifal.Value := SqlCdsPedidoPED_VLDIFAL.AsFloat;;
end;

procedure TFrmPedido.CurDescontoNotaFiscalAdicionalExit(Sender: tObject);
begin
   CurDescontoNotaFiscalExit(Sender);
   // CalculaIndiceDescto;
end;


procedure TFrmPedido.FormShow(Sender: tObject);
begin
  inherited;
  pnPedidoMinimo.Font.Color := clRed;
  pnPedidoMinimo.Caption := '';
  bMostraMsgAtraso := True;

  SetCfopOpvTipo( '' ) ; // abre tabela cfop

  if (dbInicio.Empresa.bVisualizaMarkupPedido) then
     CurMarkup.Text := '0,00 %';

  HabilitaDesabilitaEdicao(False);

//  DbGradeItemPedido.Columns[3].Visible := (dbInicio.empresa.wPMT_UTILIZA_CODIGO_ORIG_VD)
//           OR DBInicio.Empresa.bPMT_HABILITAR_CODORIGINAL ;
  PainelClienteSemCadastro.Visible := (dbInicio.GetParametroSistema('PMT_VENDA_CLI_SEM_CAD') = 'S');
  BtnRelatorios.Enabled := dbInicio.Empresa.AcessoRelatorios_P  = 'S';
  AlterarComisso1.Enabled := (dbInicio.GetParametroUsuario('USP_ALTERA_COMISSAO') = 'S');
  //BotoesAcesso;
  Width:=1350;
  Height:=638;
  tsPPAC.TabVisible := DBInicio.Empresa.bPMT_ATIVAR_PPAC;

  BtnDuplicar.Enabled := not DBInicio.Empresa.USP_DESABILITA_COPIAR_PEDIDO;
  edCfop.FiltroTabela := 'ope_oculta = ''N''';



  if DBInicio.GetParametroSistema('PMT_MULTIPLAS_IE') = 'S' then
  begin
    qInscricaoEstadual.Close;
    cdsInscricaoEstadual.Close;
    qInscricaoEstadual.SQL.Clear;
    qInscricaoEstadual.SQL.Text := 'SELECT EMI_CODIGO, EMI_IE || CAST('' - '' AS VARCHAR(3)) || EMI_DESCRICAO AS EMI_DESCRICAO FROM EMP_MULTIPLAS_IE;';
    qInscricaoEstadual.Open;
    cdsInscricaoEstadual.Open;
  end
  else
  begin
      lbIE.Visible := False;
      dblcInscricaoEstadual.Visible:= False;
  end;

  PanelAguarde.Top := (Self.Height div 2) - (PanelAguarde.Height div 2);
  PanelAguarde.Left := (Self.Width div 2) - (PanelAguarde.Width div 2);

  if BuscaUmDadoSqlAsString('SELECT PMT_IMPORTA_ITENS_XML FROM PRMT0001 WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.Empresa.EMP_CODIGO)) = 'S'  then
  begin
    btAdicionaXML.Visible := True;
    btAdicionaXML.Left := SpeedButton1.Left;
    lbArquivoXML.Visible := True;
    edArquivoXML.Visible := True;
    btAbreArquivoXML.Visible := True;
    SpeedButton1.Visible := False;
  end
  else
  begin
    SpeedButton1.Visible := True;
    btAdicionaXML.Visible := False;
  end;
  if ((DBInicio.GetParametroSistema('PMT_VENDA_GRADE') = 'S') or (DBInicio.GetParametroSistema('PMT_DIGITACAO_GRID_VENDAS') = 'S'))  and  (dbInicio.GetParametroSistema('PMT_PEDIDO_IND_PLASTICA') = 'S') then
  begin
    GetColumn(DbGradeItemPedido, 'PRG_MEDIDA_1').Title.Caption := DBInicio.GetParametroSistema('PMT_GRADE_MEDIDA1');
    GetColumn(DbGradeItemPedido, 'PRG_MEDIDA_2').Title.Caption := DBInicio.GetParametroSistema('PMT_GRADE_MEDIDA2');
    GetColumn(DbGradeItemPedido, 'PRG_MEDIDA_3').Title.Caption := DBInicio.GetParametroSistema('PMT_GRADE_MEDIDA3');
    GetColumn(DbGradeItemPedido, 'PRG_MICRA').Title.Caption := 'Micra';
  end
  else
  begin
    GetColumn(DbGradeItemPedido, 'PRG_MEDIDA_1').Visible := False;
    GetColumn(DbGradeItemPedido, 'PRG_MEDIDA_2').Visible := False;
    GetColumn(DbGradeItemPedido, 'PRG_MEDIDA_3').Visible := False;
    GetColumn(DbGradeItemPedido, 'PRG_MICRA').Visible := False;
    GetColumn(DbGradeItemPedido, 'PRF_PESO').Visible := False;
    GetColumn(DbGradeItemPedido, 'FKP').Visible := False;
    GetColumn(DbGradeItemPedido, 'FKG').Visible := False;
  end;
  if dbInicio.GetParametroSistema('PMT_PEDIDO_IND_PLASTICA') = 'S' then
  begin
    GetColumn(DbGradeItemPedido, 'PRD_PRODSERV').Visible := False; // 2
    GetColumn(DbGradeItemPedido, 'PRD_REFER').Visible := False; // 3
    GetColumn(DbGradeItemPedido, 'PRF_PRAZO_ENTREGA').Visible := False; // 6
    GetColumn(DbGradeItemPedido, 'PRF_PRAZO_DIAS').Visible := False;  // 7
    GetColumn(DbGradeItemPedido, 'PRF_PESOKG').Visible := False; // 11
    GetColumn(DbGradeItemPedido, 'prf_qtdePend').Visible := False; // 12
    GetColumn(DbGradeItemPedido, 'DESCONTO').Visible := False; // 14
    GetColumn(DbGradeItemPedido, 'PRF_QTDEFAT').Visible := False; // 17
    GetColumn(DbGradeItemPedido, 'PRF_ITEMCOMIS').Visible := False; // 18
    GetColumn(DbGradeItemPedido, 'PRF_IPIALIQ').Visible := False; // 19
    GetColumn(DbGradeItemPedido, 'DI').Visible := False; // 20
    GetColumn(DbGradeItemPedido, 'PRF_MARGEM_PRODUTO').Visible := False; // 22
    GetColumn(DbGradeItemPedido, 'PESADO').Visible := False; // 27
    GetColumn(DbGradeItemPedido, 'PRF_B2B_PEDIDO_COMPRA').Visible := False; // 31
  end;
  if dbInicio.GetParametroSistema('PMT_UTILIZA_CODIGO_ORIG_VD_PD') = 'S' then
    GetColumn(DbGradeItemPedido, 'PRDCO_CODIGO_ORIGINAL').Visible := True
  else
    GetColumn(DbGradeItemPedido, 'PRDCO_CODIGO_ORIGINAL').Visible := False;

  GetColumn(DbGradeItemPedido, 'PRF_ICMSALIQ').Visible := dbInicio.GetParametroSistema('PMT_HABILITA_ICMS_PEDIDO') = 'S';

  TabClienteVendas.TabVisible := BuscaUmDadoSqlAsString('SELECT USP_EXIBE_ABA_INFO_CLIENTE FROM USUARIO_PARAMETRO WHERE USP_COD_USUARIO = ' +  DBInicio.Usuario.CODIGO  ) = 'S' ;
  JvGIFAnimator1.Animate := True;
  edVendedor.WherePersonalizado := ' WHERE REP_SITUACAO = ''A'' ' ;
  edVendInterno.WherePersonalizado := ' WHERE REP_SITUACAO = ''A'' ' ;




end;

procedure TFrmPedido.FreteTransportadora;
var Frete: String;
begin
  inherited;
  if edTransportadora.idRetorno <> EmptyStr then
  begin
     qBuscoFrete.Close;
     qBuscoFrete.SQL.Clear;
     qBuscoFrete.SQL.Add('SELECT FRETE FROM TRP0000 WHERE TRP0000.TRP_CODIGO = '+edTransportadora.idRetorno);
     qBuscoFrete.Open;

     Frete :=  qBuscoFrete.Fields[0].AsString;

     if Frete = '0' then
         CbTipoFrete.ItemIndex := 0
     else
     if Frete = '1' then
         CbTipoFrete.ItemIndex := 1
     else
     if Frete = '2' then
         CbTipoFrete.ItemIndex := 2
     else
     if Frete = '3' then
         CbTipoFrete.ItemIndex := 3
     else
     if Frete = '4' then
         CbTipoFrete.ItemIndex := 4
     else
     if Frete = '9' then
         CbTipoFrete.ItemIndex := 5
     else
     if Frete = '' then
         CbTipoFrete.ItemIndex := 1;

  end;
end;

procedure TFrmPedido.BtnConsultarClick(Sender: tObject);
begin
     BtnConsultar.Enabled := False;
     PanelAguarde.Visible := True;
     Application.ProcessMessages;
     ApagaPedidoEmEdicao();
     DeleteFile(DBInicio.SistemaLocal + 'settings\FormPedidoGrid.cxtbPedido.grid');
     if (LiberaSairPedido) then
     begin
          sPedidoBusca := '';
          PageControl1.TabIndex := 0;
          PageControl2.TabIndex := 0;
          bMostraMsgAtraso := True;
          FormPedidoGrid := TFormPedidoGrid.Create(Application);
          try
            FormPedidoGrid.Envase := False;
             DeletarArquivos( InsereBarraDiretorio ( ExtractFileDir(Application.ExeName) )+'\settings', '*PedidoUsu'+DBInicio.Usuario.CODIGO+'.psq' ); //Limpar arquivos persistencia pesquisas
             FormPedidoGrid.ShowModal;
             if FormPedidoGrid.modalresult=mrOk then
             begin
                 sPedidoBusca:=FormPedidoGrid.idRetorno;
                 PedidoEmEdicao(sPedidoBusca);
                 BuscaPedido(sPedidoBusca);
                 PedidoMinimo(sPedidoBusca);
             end;
          finally
                 FreeAndNil(FormPedidoGrid);
          end;
          HabilitaDesabilitaEdicao(False);
     end;
     BtnConsultar.Enabled := True;
     PanelAguarde.Visible := False;
end;

procedure TFrmPedido.CurFreteExit(Sender: tObject);
begin
   CalcutaTotalItens;
   if BtnGravar.Focused then
    BtnGravar.Click;
end;


procedure TFrmPedido.DbGradeItemPedidoDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
   Check: Integer;
   R: TRect;
   pesos, micra: double;
begin
   if  (UpperCase(Column.FieldName) = 'PRG_MICRA') and (SqlCdsPedidoItemPRD_FATOR_PROD.AsFloat > 0)  then
   begin
      pesos := SqlCdsPedidoItemPRG_MEDIDA_1.AsFloat * SqlCdsPedidoItemPRG_MEDIDA_2.AsFloat * SqlCdsPedidoItemPRG_MEDIDA_3.AsFloat * SqlCdsPedidoItemPRD_FATOR_PROD.AsFloat;

      if SqlCdsPedidoItemPRD_UND.AsString = 'MIL' then
        micra := (SqlCdsPedidoItemPRF_PESO.AsFloat / SqlCdsPedidoItemPRF_QTDE.AsFloat) * (SqlCdsPedidoItemPRG_MEDIDA_3.AsFloat / pesos)
      else
        micra := (SqlCdsPedidoItemPRF_QTDE.AsFloat / SqlCdsPedidoItemPRF_PESO.AsFloat ) * (SqlCdsPedidoItemPRG_MEDIDA_3.AsFloat / pesos);

      TDBGrid(sender).Canvas.Font.Color := clBlack;
      if (micra < SqlCdsPedidoItemPRG_MEDIDA_3.AsFloat * 0.95) then
        TDBGrid(sender).Canvas.Font.Color := clGreen;
      if (micra > SqlCdsPedidoItemPRG_MEDIDA_3.AsFloat * 1.05) then
        TDBGrid(sender).Canvas.Font.Color := clRed;
      if not ((micra >= SqlCdsPedidoItemPRG_MEDIDA_3.AsFloat * 0.8) and  (micra <= SqlCdsPedidoItemPRG_MEDIDA_3.AsFloat * 1.2)) then
        TDBGrid(sender).Canvas.Font.Color := clFuchsia;

      TDBGrid(sender).DefaultDrawDataCell(rect, Column.Field, State);
   end
   else
   if  (SqlCdsPedidoItemprf_qtdePend.AsFloat >0 ) and  ( UpperCase(Column.FieldName) = 'PRF_QTDEPEND')   then
   begin
      TDBGrid(sender).Canvas.Font.Color := clRed;
     // DbGradeItemPedido.Canvas.FillRect(rect);
      TDBGrid(sender).DefaultDrawDataCell(rect, Column.Field, State);
   end
   else
   if (SqlCdsPedidoItemPRF_PRODUTO_AGREGADO.AsString = 'S') OR (SqlCdsPedidoItemPRF_PRODUTO_SEMVALOR.AsString = 'S') then
   begin
          TDBGrid(sender).Canvas.Font.Color := clGreen;
          TDBGrid(sender).Canvas.FillRect(rect);
          TDBGrid(sender).DefaultDrawDataCell(Rect,column.Field,state);
   end
   else
      TDBGrid(sender).Canvas.Font.Color :=  TDBGrid(sender).Canvas.Brush.Color;

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
      //   TDBGrid(sender).Canvas.Font.Color :=  TDBGrid(sender).Canvas.Brush.Color;
         InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
         DrawFrameControl(DbGradeItemPedido.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
   end;
   if (Column.FieldName = 'PRG_MICRA') then
   begin
     DbGradeItemPedido.Canvas.Brush.Color := clYellow;
     DbGradeItemPedido.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   end;
end;

procedure TFrmPedido.DbGradeItemPedidoEnter(Sender: TObject);
begin
  inherited;
  ACBrEnterTab1.EnterAsTab := False;
end;

procedure TFrmPedido.DbGradeItemPedidoExit(Sender: TObject);
begin
  inherited;
  ACBrEnterTab1.EnterAsTab := True;
end;

procedure TFrmPedido.DbGradeItemPedidoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    SpeedButton1.Click;
end;

procedure TFrmPedido.DbGradeItemPedidoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = VK_F2 then
    SpeedButton1.Click
  else
    FormKeyDown(Sender, Key, Shift);
end;

procedure TFrmPedido.DBGrid7DblClick(Sender: TObject);
begin
  inherited;
  Button3.Click;
end;

procedure TFrmPedido.AlterarItem;
var lItb: tBookMark;
  cdsClone: TClientDataSet;
begin

  if SqlCdsPedidoItemPRF_QTDEFAT.AsFloat  = SqlCdsPedidoItemPRF_QTDE.AsFloat then
     raise Exception.Create('Item já faturado por completo.');

  if (SqlCdsPedidoItem.IsEmpty) then
     raise Exception.Create('Não existe item para ser alterado.');

  if (SqlCdsPedidoPED_SITUACAO.AsString = 'C') then
     raise Exception.Create('O pedido não pode ser editado pois está cancelado.');

  if (SqlCdsPedidoPED_SITUACAO.AsString = 'T') then
      raise Exception.Create('O pedido não pode ser editado pois já foi faturado totalmente.');

  if (SqlCdsPedidoPED_SITUACAO.AsString = 'A') then
      raise Exception.Create('O pedido não pode ser editado pois já foi agrupado.');

  if MatchStr(SqlCdsPedidoPED_SITUACAO.AsString ,['F','P'] )
   and (SqlCdsPedidoPed_faturar_liberado.AsString = 'S') and ( DBInicio.empresa.wTipoLiberacaoFaturamento = 'M') then
     raise Exception.Create('Pedido já liberado para faturamento');

  if SqlCdsPedidoOPV_AGRUPADO.AsString = 'S' then
   raise Exception.Create('O pedido não pode ser editado pois é um agrupamento de pedidos.');

//  if dbinicio.empresa.wPMT_PROD_TERMICO and
//   (BuscaUmDadoSqlAsInteger( 'SELECT OPR_CODIGO FROM ORDEMPRODUCAO ' +
//                              ' WHERE PED_CODIGO = '+  QuotedStr(SqlCdsPedidoPED_CODIGO.AsString) +
//                              '  AND OPR_STATUS <> '+ QuotedStr('C') )>1) then
//     raise Exception.Create ('Ordem de produção já gerada. Não pode alterar');
     
  sOperacao := 'A';
   
  try

     lItb:= SqlCdsPedidoItem.GetBookmark;
     SqlCdsPedidoItem.DisableControls;


     if FrmPedidoItem = nil then
       FrmPedidoItem := TFrmPedidoItem.Create(nil);
     try
        FrmPedidoItem.sTipo := 'A';
        FrmPedidoItem.NumeroPedido := FrmPedido.EdPedidoNumero.Text;
        FrmPedidoItem.iRegistroItemAnterior :=  SqlCdsPedidoItemPRF_REGISTRO.AsInteger;
        FrmPedidoItem.ProdutoGradeIncluido := (SqlCdsPedidoItemPRG_REGISTRO.Value <> 0);
        FrmPedidoItem.CurPeso.Value := SqlCdsPedidoItemPRF_PESO.AsFloat;
        FrmPedidoItem.ShowModal;
        PanelAguarde.Visible := True;
        Application.ProcessMessages;
        // Sleep(500);
        EsvaziaBuffer;
        if FrmPedidoItem.ExclusaoItensGrade then
        begin
           cdsclone:= TClientDataSet.Create(nil);
           try
            cdsclone.CloneCursor(FrmPedidoItem.cdsItemGrade,true);
            cdsclone.Filter:= 'PRG_QTDE = 0 and PRG_QTDEAnterior <> 0 ';
            cdsclone.Filtered := True;
            cdsclone.First;
            while not cdsclone.Eof do
            begin
                SqlCdsPedidoItem.Locate('prf_registro',cdsclone.FieldByName('PRF_Registro').Value,[]);
                DeletarItem;
                cdsClone.Next;
            end;
           finally
            FreeAndNil(cdsclone);
           end;
        end;

     finally
//       try
         Sleep(500);
         EsvaziaBuffer;
         if frmPedido = nil then
           Abort
         else
           FreeAndNil(frmPedidoItem);
  //     Except on e:exception do
//         Abort;
 //      end;
        // frmPedidoItem.Free;
        //frmPedidoItem := nil;
     end;

     CalcutaTotalItens;
     GravaPedido;

  finally
     if (lItb <> nil) and (FrmPedido <> nil)  then
     begin
        if SqlCdsPedidoItem.BookmarkValid(lItb) then
           SqlCdsPedidoItem.GotoBookmark(lItb);
       SqlCdsPedidoItem.EnableControls;
     end;
     PanelAguarde.Visible := False;
     if FrmPedidoItem = nil then
       abort;
  End;
   
end;

procedure TFrmPedido.ExcluirItem;
begin
  if (SqlCdsPedidoItem.IsEmpty) then
    exit;
  if (SqlCdsPedidoPED_SITUACAO.AsString = 'C') then
    raise Exception.Create('Pedido já cancelado!');
  if (MatchStr(SqlCdsPedidoPED_SITUACAO.AsString ,['F','P'] ) )  and (SqlCdsPedidoPed_faturar_liberado.AsString = 'S') and ( DBInicio.empresa.wTipoLiberacaoFaturamento = 'M') then
     raise Exception.Create('Pedido já liberado para faturamento') ;
    
  //Verifica se não foi fatutrado
  if (SqlCdsPedidoItemPRF_QTDEFAT.AsFloat > 0) then
     raise Exception.Create('O Item não pode ser excluído já tem faturamento realizado.');
      
  if not DBInicio.Empresa.bPermitirExcluirItem and
  // sem permissão se o for (ORÇAMENTO), não permitir remover os itens que compõe o kit, porem pode remover o kit
  // e na venda não permitir o que os usuários excluam nenhum item
  (((SqlCdsTipoPedidoOPV_ORCAMENTO.AsString = 'S')   and  (SqlCdsPedidoItemPRF_PRODUTO_AGREGADO.AsString = 'S'))
    or (SqlCdsTipoPedidoOPV_VENDA.AsString = 'S'))  then
    raise Exception.Create ('Sem permissão para excluir o item.');

  if SqlCdsPedidoOPV_AGRUPADO.AsString = 'S' then
      raise Exception.Create('O Item não pode ser excluído pois é um agrupamento de pedidos. Excluir o item, exclua este pedido e altere no pedido original.');
   

   if (dbinicio.empresa.wPMT_PROD_TERMICO) and
   (BuscaUmDadoSqlAsInteger( 'SELECT OPR_CODIGO FROM ORDEMPRODUCAO ' +
                            ' WHERE PED_CODIGO = '+  QuotedStr(SqlCdsPedidoPED_CODIGO.AsString) +
                            '  AND OPR_STATUS <> '+ QuotedStr('C') )>1) then
    raise Exception.Create('Ordem de produção já gerada. Não pode excluir item.');
    if (DBInicio.Empresa.PMT_HABILITAR_MRP) and
     (BuscaUmDadoSqlAsInteger( 'SELECT OPR_CODIGO FROM ORDEMPRODUCAO op' +
                            ' WHERE ' +
                            '    EXISTS (SELECT * FROM DEMANDA_PRODUCAO dp ' +
                            '               JOIN PRD0000 pr ON (pr.PRD_CODIGO = dp.PRD_CODIGO) ' +
                            '            WHERE dp.PED_CODIGO = op.PED_CODIGO AND dp.EMP_CODIGO = op.EMP_CODIGO ' +
                            '            AND pr.PRD_refer = ' + QuotedStr(SqlCdsPedidoItemPRD_REFER.AsString) + ')' +
                            ' AND op.PED_CODIGO = '+  QuotedStr(SqlCdsPedidoPED_CODIGO.AsString)  ) > 1) then
    raise Exception.Create('Ordem de produção já gerada. Não pode excluir item.');

    if (DBInicio.BuscaUmDadoSqlAsInteger('SELECT PRF_REGISTRO FROM DEMANDA_PRODUCAO ' +
                                       ' WHERE PRF_REGISTRO = ' + SqlCdsPedidoItemPRF_REGISTRO.AsString +
                                       ' AND EMP_CODIGO = ' + QuotedStr(dbInicio.Empresa.EMP_CODIGO)) > 0)
     then
     begin
       MessageDlg('Este pedido já foi enviado para o PCP Demanda, não é possível excluir itens', mtWarning, [mbOk], 0);
       Exit;
     end;



   DeletarItem;
   ReordenarItens(SqlCdsPedidoItem);
   bRecalculaSTGeral := True;
   RecalculaSTItem;
   CalculaDifal;
   CalcutaTotalItens;
end;

function TFrmPedido.GravaPedido: Boolean;
var  lSit, sSituacao, sql, ie, ConsumidorFinal, Finalidade: String;
     semComissao, continua, venda, orcamento : boolean;
     valor: double;
     DataEntrega : TDateTime;
begin
     PageControl1.ActivePageIndex := 0;
     PageControl2.ActivePageIndex := 0;
     SqlCdsPedidoItem.DisableControls;

     if ValidaPedido then
     begin
          PedidoMinimo(EdPedidoNumero.Text);

          if not SqlCdsPedidoItem.isempty then
            BuscaPedidoItem(EdPedidoNumero.Text, false);
          CalculaIndiceDescto;
          //Recalcula ST
          if bTipoPedidoCalculaST then
          begin
            bRecalculaSTGeral := True;
            RecalculaSTItem;
          end;
          CalculaDifal;
          CalcutaTotalItens;


          if (dbInicio.Empresa.pComissaoItem) OR (dbInicio.Empresa.pComissaoEscala) or DBInicio.Empresa.pComissaoSimples or (DBInicio.Empresa.wPMT_PAGAR_COMISSAO_VERBA) then
             GravaMediaComissao;
          if bInclusao and NOT cbExped.Enabled and (cbExped.ItemIndex < 1 ) and (DBInicio.Empresa.PMT_LIBERAR_EXPEDICAO = 'P') then
             lSit := 'LIB'
          else
            case cbExped.itemindex of
            0: lSit := 'PEN';   //pendente
            1: lSit := 'LIB';   //liberaod
            2: lSit := 'SEP';  //em separação
            3: lSit := 'FIN'; //FINALIZADO
            4: lSit := 'FAT'; //faturado
            5: lSit := 'DEP'; // DESPACHADO
            6: lSit := 'DPA'; //despachado parcial
            7: lSit := 'IMP';  //IMPEDIDO
            end;
           if lSit = EmptyStr then
             lSit := 'PEN';
           SqlCdsPedidoSitExp.AsString := lsit;
          if rQuantidadeItensFaturado=0 then
             sSituacao:='F'
          Else
          IF rQuantidadeItensFaturado >= rQuantidadeItens then
             sSituacao := 'T'
          Else
             sSituacao := 'P';
         semComissao :=   False;
         // if FrmPedido.edCliente.idRetorno <> '' then
         if edCliente.idRetorno <> '' then
         begin
            semComissao :=
               BuscaUmDadoSqlAsString('select CLI_SEMCOMISSAO from CLI0000 where cli_codigo = '+ QuotedStr(edCliente.idRetorno)) = 'S';
               // BuscaUmDadoSqlAsString('select CLI_SEMCOMISSAO from CLI0000 where cli_codigo = '+ QuotedStr(FrmPedido.edCliente.idRetorno)) = 'S';

         end;
         if EntregaHoras.Text = '00:00' then
           DataEntrega := StrToDateTime(FormatDateTime('dd/mm/yyy',DteEntrega.Date) + '00:00:00')
         else
           DataEntrega := StrToDateTime(FormatDateTime('dd/mm/yyy',DteEntrega.Date) + EntregaHoras.Text+ ':00');
          if (VarToStr(dblcInscricaoEstadual.KeyValue) = '') or (dblcInscricaoEstadual.KeyValue = null) then
            ie := '0'
          else
            ie := BuscaUmDadoSqlAsString('SELECT emi.EMI_CODIGO FROM EMP_MULTIPLAS_IE emi WHERE emi.EMI_CODIGO =  ' + QuotedStr(VarToStr(dblcInscricaoEstadual.KeyValue)));
          if ie = '' then
            ie := '0';

          if (EdClienteCodigo.Text = '') AND (DBInicio.GetParametroSistema('PMT_VENDA_CLI_SEM_CAD_OBRIG') <> 'S') then
          begin
            if cbOrsConsFinal.ItemIndex >= 0 then
              ConsumidorFinal := cbCliConsFinal.Values[cbOrsConsFinal.ItemIndex]
            else
              ConsumidorFinal := '';
            if rgOrsCliConsuProprio.ItemIndex >= 0 then
              Finalidade := cbFinalidade.Values[rgOrsCliConsuProprio.ItemIndex]
            else
              Finalidade := '';
          end
          else
          begin
            ConsumidorFinal := cbCliConsFinal.Values[iif(edCliente.idRetorno = '', cbOrsConsFinal.ItemIndex, cbCliConsFinal.ItemIndex )];
            Finalidade := cbFinalidade.Values[iif(edCliente.idRetorno = '', rgOrsCliConsuProprio.ItemIndex, cbFinalidade.ItemIndex )];
          end;



          Result := GravarPedido(     ie,
                                      ConsumidorFinal ,
                                      Finalidade,
                                      SqlCdsTipoPedidoOPV_SERVICO.AsString,
                                      EdPedidoNumero.Text,
                                      SqlCdsTipoPedidoOPV_CODIGO.AsString,
                                      EdClienteCodigo.Text,
                                      EdVendedorCodigo.Text,
                                      edVendInternoCodigo.Text,
                                      EdPrazoCodigo.Text,
                                      EdTransportadoraCodigo.Text,
                                      edCfop.idRetorno,
                                      edCCusto.idRetorno,

                                      IIF(CbTipoFrete.ItemIndex = 0,'0',
                                      IIF(CbTipoFrete.ItemIndex = 1,'1',
                                      IIF(CbTipoFrete.ItemIndex = 2,'2',
                                      IIF(CbTipoFrete.ItemIndex = 3,'3',
                                      IIF(CbTipoFrete.ItemIndex = 4,'4',
                                      '9'))))),//A pagar = 'F' Pago = 'C'  Outros = 'O'

                                      EdNumeroPedidoCliente.Text,
                                      EdContatoCliente.Text,

                                      sSituacao,

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
                                      DataEntrega,

                                      iif(semComissao,0,CurComissaoVendedor.Value),
                                      iif(semComissao,0,CurComissaoGerente.Value),
                                      iif(semComissao,0,CurComissaoSupervisor.Value),
                                      iif(semComissao,0,CurComissaoInterna.Value),
                                      CurTotalDesconto.Value,
                                      CurDescontoNotaFiscal.Value,
                                      CurDescontoNotaFiscalAdicional.Value,
                                      CurFrete.Value,
                                      CurDespesasAcessorias.Value,
                                      CurSeguro.Value,
                                      CurDespesasImportacao.Value,
                                      CurTotalIPI.Value,
                                      CurTotalST.Value,
                                      CurTotalProduto.Value,
                                      CurTotalPedido.Value,
                                      MemoObservacaoPedido.Text,
                                      MemoObservacaoProducao.Text,
                                      MemoMensagemAdicionalNotaFiscal.Text,
                                      edtExportacaoUF.Text,
                                      edtExportacaoDescricaoLocalEmbarque.Text,
                                      edtExportacaoDescricaoRecinto.Text,
                                      vIdPedido, lSit, wCodigoEndereco,edPlaca.Text, CurrValorCIF.Value,
                                      iif( (Length(EdCnpj.Text) = 11),RetirarMascaraCNPJ_INSC(EdCnpj.Text),'') ,
                                      mCabPPAC.Text,
                                      StrToIntDef(cbOrigem.idRetorno,0),
                                      cbOrsConsFinal.ItemIndex,
                                      rgOrsCliConsuProprio.ItemIndex,
                                      cbOrsCliRegimeTributario.ItemIndex
                                      );

         if Result then
           ExecSql('UPDATE PED0000 SET ' +
            ' PED_CAMINHO_XML = ' + QuotedStr(edArquivoXML.Text) + ',' +
            ' PED_VLDIFAL = ' + FloatToSQL(CurTotalDifal.Value) +
            ' WHERE PED_CODIGO = ' + QuotedStr(EdPedidoNumero.Text) );
          {grava os padrões do cliente : transportadora, forma de pagamento e prazo}
         if edCliente.idRetorno <> '' then
         begin
           if DBInicio.empresa.Wpmt_atualiza_prazo_cliente then
           begin
             SQL := ' PCL_CODIGO = ' +  QuotedStr(edPrazo.idRetorno) ;
             if edFPagto.idRetorno <> '' then
                SQL  := ConcatSe( SQL , ' , ')+ ' FPG_REGISTRO  = '+edFPagto.idRetorno;

           end
           else
             SQL := '';
           if cbOrigem.idRetorno<>'' then
            sql:=  ConcatSe( SQL , ' , ')+ ' cori_codigo = '+cbOrigem.idRetorno;

           if edTransportadora.idRetorno <> ''  then
              SQL := ConcatSe( SQL , ' , ')+ ' TRP_CODIGO = '+ QuotedStr(edTransportadora.idRetorno);
           if CbTipoFrete.ItemIndex <> -1  then
           begin
              if CbTipoFrete.ItemIndex <= 4 then
                sql:= ConcatSe( SQL , ' , ')+ ' CLI_FRETE = '+ QuotedStr (IntToStr(CbTipoFrete.ItemIndex))
              else
                sql:= ConcatSe( SQL , ' , ')+ 'CLI_FRETE = '+ QuotedStr('9');
           end;
           if sql <> '' then
           begin
              SQL := 'UPDATE CLI0000 SET '+ sql+  ' WHERE cli_codigo = '+ QuotedStr(edCliente.idRetorno);
              continua := true;
              PanelAguarde.Visible := True;
              Application.ProcessMessages;
              if qAux.SQLConnection <> nil then
              begin
                while continua do
                begin
                  try
                     qAux.Close;
                     qAux.SQLConnection.Connected := False;
                     qaux.SQL.Text := SQL;
                     qAux.SQLConnection.Connected := True;
                     BeginTransaction;
                     qAux.ExecSql;
                     CommitTransaction;
                  except
                     continue;
                  end;
                  continua := false;
                end;
              end
              else
                Abort;
              if PanelAguarde <> nil then
                PanelAguarde.Visible := False;
           end;

         end;


         if (not (dbInicio.Empresa.pComissaoItem or dbInicio.Empresa.pComissaoEscala or DBInicio.Empresa.pComissaoSimples or dbInicio.Empresa.bHabilitarTabelaPreco)
         and  (dbInicio.Empresa.fPMT_MULTTAB <> 'S')) then
         begin
               dbInicio.qAux.Close;
               dbInicio.qAux.sql.text :='UPDATE PED_IT01 SET PRF_ITEMCOMIS ='+ValorAmericano(CurComissaoVendedor.Text)+' WHERE ped_codigo = '+QuotedStr(EdPedidoNumero.Text)+' AND EMP_CODIGO = '+QuotedStr(dbInicio.EMPRESA.EMP_CODIGO);
               dbInicio.qAux.Execsql;
               dbInicio.qAux.Close;
         end;

         if edVendedor = nil then
          exit;
         edVendedor.FiltroTabela:=dbInicio.ExclusivoSql('TABELAS');

         BuscaPedido(EdPedidoNumero.Text);

        HabilitaDesabilitaEdicao(false);
        bInclusao := False;

   end;
   SqlCdsPedidoItem.EnableControls;
end;

Function TFrmPedido.GetTipoPedidoPadrao:integer;
begin
  if DBInicio.Empresa.USP_PERMITE_ALTER_TIPO then
     result := dbInicio.BuscaUmDadoSqlAsInteger('Select min(OPV_CODIGO) from OPV0000 Where OPV_TIPOPADRAO = '+qStr('S')+ConcatSe(' and ',dbInicio.ExclusivoSql('TABELAS')))
  else
  begin
     if (DBInicio.Empresa.USP_PERMITE_ALTER_TIPO = False) and (DBInicio.Empresa.USP_OPV_CODIGO = 0) then
     begin
        MessageDlg('O usuário ' + DBInicio.Usuario.USERNAME + ', não permite mudar o Tipo do Pedido e não existe pedido padrão cadastrado para ele.', mtWarning, [mbOK], 0 );
        Abort;
     end;
     result := DBInicio.Empresa.USP_OPV_CODIGO;
  end;
end;


procedure TFrmPedido.BtnNovoClick(Sender: tObject);
var fCodEmSeqUnica:string;
 repetido : boolean;
begin

   ApagaPedidoEmEdicao();

   pnPedidoMinimo.Caption := '';
   pnPedidoMinimo.Font.Color := clRed;
   pnPedidoMinimo.Visible := False;

   DeletarArquivos( InsereBarraDiretorio ( ExtractFileDir(Application.ExeName) )+'\settings', '*PedidoUsu'+DBInicio.Usuario.CODIGO+'.psq' ); //Limpar arquivos persistencia pesquisas
   PageControl4.ActivePageIndex := 0;
   if (LiberaSairPedido) then
   begin
        GBInformacoesPedido.Visible := true;
        bInclusao := True;
        LimparCampos;

        //BuscaPedido('');
        edVendedor.FiltroTabela:=ConcatSe(dbInicio.ExclusivoSql('TABELAS'),' and ')+'REP_SITUACAO = '+qStr('A');

        BuscaTipoPedido( GetTipoPedidoPadrao );

        dbInicio.qAux.Close;

        if dbInicio.empresa.fSeqUnicaPed then
           fCodEmSeqUnica:='001'
        Else
           fCodEmSeqUnica:=dbInicio.Empresa.EMP_CODIGO;

        if (dbInicio.Empresa.fPedNumeracaoAutomatica) then //Automatico
        begin
             EdPedidoNumero.Text    := StrZero( SequenciadorPRC ( dbInicio.MainDB, fCodEmSeqUnica,'PED0000', 'PED_CODIGO', 0 ) , 6 );
             if EdPedidoNumero.Text <> '' then
              begin
                repetido := true;
                while repetido do
                begin

                  OpenAux3('SELECT ped_codigo FROM PED0000  '+
                           ' WHERE PED_CODIGO = '+ QuotedStr(EdPedidoNumero.Text)  +
                           ' and emp_codigo = '+ QuotedStr(fCodEmSeqUnica));

                  repetido := not qAux3.FieldByName('PED_CODIGO').ISNULL;
                  if repetido then
                    EdPedidoNumero.Text    := StrZero( SequenciadorPRC ( dbInicio.MainDB, fCodEmSeqUnica,'PED0000', 'PED_CODIGO', 0 ) , 6 );
                end;
              end;
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

        DteEntrada.Date := Now;
        DteEntrega.Date := Now;
        EntregaHoras.Text := '00:00';
        cbbClienteEstado.Text := dbInicio.EMPRESA.UF;
        EdOrsDiaValidade.Value := DBInicio.Empresa.p_NumDiasValidade_Orcamento;

        bMostraMsgAtraso := True;
        if (dbInicio.Empresa.sMensagemPadraoPedido <> '') then
           MemoObservacaoPedido.Lines.Add(dbInicio.Empresa.sMensagemPadraoPedido);

        HabilitaDesabilitaEdicao(True);
        uteis.HabilitaIncluir('ComercialPedidos',DBInicio.Usuario.CODIGO,FrmPedido);
        EdClienteCodigo.SetFocus;


   end;
  edVendedor.Enabled :=  NOT DBInicio.Empresa.USP_BLOQUEIO_ALTERA_VENDEDOR;
  EdVendedorCodigo.Enabled := NOT DBInicio.Empresa.USP_BLOQUEIO_ALTERA_VENDEDOR;
  edVendInternoCodigo.Enabled := NOT DBInicio.Empresa.USP_BLOQUEIO_ALTERA_VENDEDOR;
  edVendInterno.Enabled := NOT DBInicio.Empresa.USP_BLOQUEIO_ALTERA_VENDEDOR;
  btLiberaPedidoMinimo.Enabled := BtnGravar.Enabled;

end;

procedure TFrmPedido.btnOrdemProducaoClick(Sender: TObject);
var sql :string;
   ordemprod,s : integer;
   pro_codigo, model_pro_codigo, pop_codigo, EOP_CODIGO : integer; //codigo do processo do mrp II

   pedido, comCopia : string;
   LOGO            :tBitMap;
   searchResult : TSearchRec;
   tcr : TfrmEMAIL0001;
begin
  inherited;
  if SqlCdsPedidoItem.IsEmpty then
    raise Exception.Create('Pedido sem itens');
  if BuscaUmDadoSqlAsInteger( 'SELECT OPR_CODIGO FROM ORDEMPRODUCAO ' +
                              ' WHERE PED_CODIGO = '+  QuotedStr(SqlCdsPedidoPED_CODIGO.AsString) +
                              '  AND OPR_STATUS <> '+ QuotedStr('C') )>1 then
    raise Exception.Create('Ordem de produção já gerada');

  try
   BeginTransaction;
   ordemprod := GetNextSequence('GEN_ORDEMPRODUCAO');
   sql := 'INSERT INTO ORDEMPRODUCAO (OPR_CODIGO, EMP_CODIGO, OPR_EMISSAO, PED_CODIGO, OPR_STATUS, CLI_CODIGO, OPR_DTENTREGA) '+
          ' VALUES( '+ IntToStr(ordemprod) +','+
          QuotedStr(DBInicio.Empresa.EMP_CODIGO)+','+
          DateTimeToSQL(Now)+','+
          QuotedStr(SqlCdsPedidoPED_CODIGO.AsString)+','+
          QuotedStr('L')+','+
          QuotedStr(SqlCdsPedidoCLI_CODIGO.AsString)+  ','+
          DateTimeToSQL(SqlCdsPedidoPED_DTSAIDA.AsDateTime)+
          ')';
   ExecSql(sql);

   //ITEM
   s:=1;
   SqlCdsPedidoItem.first;
   while not SqlCdsPedidoItem.Eof do
   begin
     model_pro_codigo := BuscaUmDadoSqlAsInteger ('select PRO_CODIGO FROM PRD0000 WHERE PRD_CODIGO = '+ QuotedStr(SqlCdsPedidoItemPRD_CODIGO.asstring));

     if model_pro_codigo = 0  then
      raise Exception.Create('Produto não tem processo definido');

     pro_codigo := GetNextSequence('GEN_PROCESSOS') ;  //copia do processos
     //modelo do procsso



     // INCLUIR O PROCESSO COPIADO DO MODELO MODL_PROCESSO
     SQL:= 'INSERT INTO PROCESSOS (PRO_CODIGO, EMP_CODIGO, PRO_DESCRICAO, SRV_CODIGO) '+
           'SELECT '+ IntToStr(pro_codigo) + ', EMP_CODIGO, PRO_DESCRICAO, SRV_CODIGO FROM MODL_PROCESSOS '+
           ' WHERE PRO_CODIGO = '+  IntToStr(model_pro_codigo);
     ExecSql(sql);

     SQL:='INSERT INTO ITEM_ORDEMPRODUCAO (PRD_CODIGO, OPR_CODIGO, IOP_SEQUENCIA, ' +
          ' IOP_NORDEM, IOP_QUANTIDADE, IOP_PESO, IOP_STATUS,'+
          ' IOP_PRECO, PRF_REGISTRO, pro_codigo) '+
          ' VALUES( '+
          QuotedStr(SqlCdsPedidoItemPRD_CODIGO.asstring)+','+
          IntToStr(ordemprod) +','+
          IntToStr(s)+','+
          QuotedStr(strzero(SqlCdsPedidoPED_CODIGO.AsString,6)+'-'+strzero( s,2))+','+
          FloatToSQL(SqlCdsPedidoItemPRF_QTDE.AsFloat)+','+
          FloatToSQL(SqlCdsPedidoItemPRF_PESOKG.AsFloat) + ',' +  // FloatToSQL(SqlCdsPedidoItemPRD_PESOLIQ.AsFloat) + ',' +  // FloatToSQL(SqlCdsPedidoItemPesoLiquido.AsFloat) + ','
          QuotedStr('L')+','+
          FloatToSQL( SqlCdsPedidoItemPRF_PRECO.AsFloat)+','+
          IntToStr(SqlCdsPedidoItemPRF_REGISTRO.AsInteger)+ ','+
          IntToStr(pro_codigo)+
          ')';
     ExecSql(sql);

     sql := 'UPDATE PED_IT01 SET PRF_PRDDESCRI = ' +
             QuotedStr(SqlCdsPedidoItemDESCRICAO.AsString + ' / OS:' + strzero(SqlCdsPedidoPED_CODIGO.AsString,6) + '-' + strzero(IntToStr(s), 2)) +
             ' WHERE PED_CODIGO = ' + QuotedStr(SqlCdsPedidoPED_CODIGO.AsString) +
             ' AND PRD_REFER = ' + QuotedStr(SqlCdsPedidoItemPRD_REFER.AsString) +
             ' AND PRF_REGISTRO = ' + SqlCdsPedidoItemPRF_REGISTRO.AsString;
     ExecSql(sql);

     //operações do modelo processo
     OpenAux( 'SELECT OPE_CODIGO, POP_TEMPOESTIMADO, POP_SEQ FROM modl_processos_operacoes '+
            ' WHERE pro_codigo = '+  IntToStr(model_pro_codigo));
     qAux.First;
     while NOT qAux.EOF do
     Begin
       //PROCESSO_OPERACOES
       pop_codigo := GetNextSequence('gen_processos_operacoes_id');
       //copiado as operações
       sql:= 'INSERT INTO PROCESSOS_OPERACOES (PRO_CODIGO, OPE_CODIGO,  POP_SEQ, POP_CODIGO) '+
             ' values ( '+ IntToStr(pro_codigo) + ','+
             qAux.FieldByName('OPE_CODIGO').AsString + ','  +
             qAux.FieldByName('POP_SEQ').AsString + ','+
             IntToStr(pop_codigo) + ')';
       ExecSql(sql);

       //RESULTADO final  DAS OPERAÇÕES
       ExecSql( ' INSERT INTO ESPE_OPERACAO_RESUL (OPE_CODIGO, EOR_SEQ, EOR_NOME, POP_CODIGO) '+
                ' SELECT OPE_CODIGO, EOR_SEQ, EOR_NOME,'+  IntToStr(pop_codigo) + ' FROM MODLESPE_OPERACAO_RESUL ' +
                '  WHERE OPE_CODIGO ='+qAux.FieldByName('OPE_CODIGO').AsString );


       // MODELO especificações
       OpenAux2( 'SELECT * FROM MODL_ESPECIFICACOES_OPERACAO  '+
                 ' WHERE OPE_CODIGO ='+  qAux.FieldByName('OPE_CODIGO').AsString+
                 ' ORDER BY EOP_SEQ' );
       qAux2.First;
       while not qAux2.eof do
       begin
         //ESPECIFICACOES
         EOP_CODIGO := GetNextSequence('gen_especificacoes_operacao');
         sql := 'INSERT INTO ESPECIFICACOES_OPERACAO (EOP_CODIGO,  EOP_SEQ, OPE_CODIGO, EOP_NOME, EOP_DESCRICAO, POP_CODIGO)' +
                ' VALUES ('+ IntToStr( EOP_CODIGO) +','+
                  qAux2.FieldByName('EOP_SEQ').AsString +','+
                 qAux.FieldByName('OPE_CODIGO').AsString +','+
                 QuotedStr(qAux2.FieldByName('EOP_NOME').AsString)+','+
                 QuotedStr(qAux2.FieldByName('EOP_DESCRICAO').AsString)+',' +
                 IntToStr(pop_codigo)+  ')';

         ExecSql(sql);

         // VALORES FIXOS
         SQL:= 'INSERT INTO QUALIDADE_PRODUCAO  ( QPR_SEQUENCIA, EOP_CODIGO, PRO_CODIGO, QPR_VALOR, POP_CODIGO  )' +
               ' SELECT QPR_SEQUENCIA, '+ IntToStr( EOP_CODIGO) +', '+ IntToStr( pro_codigo) + ' , QPR_VALOR, '+ IntToStr(pop_codigo) +
               ' FROM MODL_QUALIDADE_PRODUCAO     '+
               ' WHERE EOP_CODIGO = '+ qAux2.FieldByName('EOP_CODIGO').AsString +  // codigo do modelo da especificação
               ' AND PRO_CODIGO = '+ IntToStr( model_pro_codigo) ; // codigo do modelo processo
         ExecSql(SQL);

         qAux2.Next
       end;

       qaux.Next
     End;
     inc(s);
     SqlCdsPedidoItem.Next;
   end;
   CommitTransaction;
   SqlCdsPedidoItem.Refresh;
   MessageDlg('Ordem de produção gerada', mtInformation, [mbOK], 0);





     qROrdemServico.sql.Text :=
       ' SELECT  pr.prd_refer , iop.iop_codigo,  iop.IOP_SEQUENCIA,po.pro_codigo, iop_nordem, lpad( op.opr_codigo,7,''0'') opr_codigo , cl.cli_codigo, cl.cli_razao, pe.ped_codigo, OPR_EMISSAO, OPR_DTENTREGA, ' +
       ' PED_VLTOTAL_BRUTO,                                     ' +
       ' pr.PRD_DESCRI,IOP_QUANTIDADE, IOP_PESO, po.PRO_DESCRICAO, srv_nome,                                                                       ' +
       ' PED_TIPOPECA_TERM, PED_MATERIAL_TERM , PED_DUREZASUPERFICIAL_TERM, PED_DUREZANUCLEO_TERM , PED_PROFUNDIDADE_TERM ,  PED_TAMANHOGRAO_TERM, PED_EHT_TERM , PED_DESENHO_TERM,'+
       ' srv_nome, PED_CONTATO_CLIENTE, PED_NUMERO_PED_CLIENTE, IOP_PRECO, '+
       '  (SELECT FIRST 1 PRE_ACORDOCOM FROM precos0000 pre WHERE pre.CLI_CODIGO = cl.cli_codigo ORDER BY PRE_VIGENCIA1 DESC ) PRE_ACORDOCOM, ' +
       ' (SELECT FIRST 1 u.USU_NOME  FROM PED_IT01 it JOIN USUARIO u ON (u.USU_CODIGO = it.USU_CODIGO ) WHERE it.PRF_REGISTRO = iop.PRF_REGISTRO) as usu_nome,  '+
       ' (SELECT FIRST 1 PRF_QTDE_ENV_PRODUCAO FROM PED_IT01 IT WHERE IT.PED_CODIGO = PE.PED_CODIGO AND IOP.PRD_CODIGO = IT.PRD_CODIGO) AS PRF_QTDE_ENV_PRODUCAO, '+
       ' (select FIRST 1 COALESCE(t1.PRD_UND,t2.PRD_UND)  FROM ped_it01 t1 join  prd0000 t2 on t2.prd_codigo = t1.prd_codigo AND  iop.PRD_CODIGO = t1.PRD_CODIGO AND pe.PED_CODIGO = t1.PED_CODIGO) prd_und, '+
       ' op.OPR_DATAFATURA, op.OPR_LEADTIME, op.opr_conclusao  '+
       ' FROM ped0000 pe                                                                                                                                                                               '+
       ' join cli0000 cl on (cl.cli_codigo = pe.cli_codigo)                                                                                                                                            '+
       ' join ordemproducao op on (op.ped_codigo =  pe.ped_codigo and op.emp_codigo = pe.emp_codigo )                                                                                                  '+
       ' join item_ordemproducao iop on (op.opr_codigo = iop.opr_codigo)                                                                                                                               '+
       ' join prd0000 pr on (pr.prd_codigo = iop.prd_codigo)                                                              '+
       ' join processos po ON (po.PRO_CODIGO = iop.PRO_CODIGO)      '+ // alteração do modelo aqui
       ' join PED_IT01 it on (it.PRF_REGISTRO = iop.PRF_REGISTRO  )                                                                                                                                    '+
        ' left join servico se on (se.srv_codigo = po.srv_codigo) '+
       ' WHERE :nordem = ''0''  '+
       '   AND pe.ped_codigo = :pedido  '+
       '   AND op.emp_codigo = :emp_codigo '+
       ' order by IOP_SEQUENCIA';


      pedido := edPedidoNumero.Text;
      if (DBInicio.Empresa.sPMT_CAMINHO_PEDIN <> '')
      and (FindFirst( DBInicio.Empresa.sPMT_CAMINHO_PEDIN + '\pdfs\tratamento'+ pedido+'.pdf', faAnyFile, searchResult) = 0) then
      begin
       ShellExecute(Application.Handle, 'open', PChar(DBInicio.Empresa.sPMT_CAMINHO_PEDIN + '\pdfs\'+searchResult.Name), nil, nil, SW_SHOWMAXIMIZED);
       exit;
      end;
      qROrdemServico.Close;
      qROrdemServico.ParamByName('nordem').AsString :=  '0';
      qROrdemServico.ParamByName('pedido').AsString :=  pedido;
      if DBInicio.Exclusivo('PEDIDOS') then
       qROrdemServico.ParamByName('emp_codigo').AsString := DBInicio.Empresa.EMP_CODIGO
      Else
       qROrdemServico.ParamByName('emp_codigo').AsString := DBInicio.Emp_Codigo;
      qROrdemServico.Open;

      qROrdemServico.First;

      LOGO :=tBitMap.Create;


      try
        OpenAux('select EMP_LOGO from EMP0000 where EMP_CODIGO ='+qStr(qROrdemServico.ParamByName('emp_codigo').AsString));
        Le_Imagem_JPEG_toBMP( (qaux.Fields[0] as tBlobField) , logo );
        TfrxPictureView(frxPedidoTrat.FindObject('LogoEmpresa')).Picture.Assign(LOGO);
      finally
        FreeAndNil(logo);
      end;
      if DBInicio.Empresa.sPMT_CAMINHO_PEDIN <> '' then
      begin
        frxPedidoTrat.PrepareReport();
        ForceDirectories(DBInicio.Empresa.sPMT_CAMINHO_PEDIN + '\pdfs\');
        frxPDFExport1.FileName := DBInicio.Empresa.sPMT_CAMINHO_PEDIN + '\pdfs\tratamento'+ pedido+'.pdf';
        frxPedidoTrat.Export(frxPDFExport1);

        tcr := TfrmEmail0001.Create(Nil);
        try
          tcr.modulo := 'Pedido de Tratamento Térmico';
          tcr.titulo := 'PEDIDO DE TRATAMENTO TÉRMICO Nº ' +  Pedido  + ' - R$ ' +  FormatFloat('##0.00', CurrValorAFaturar.Value) ;

          tcr.sClienteCodigo := EdClienteCidade.text;
          tcr.sCaminhoArquivo := frxPDFExport1.FileName;
          tcr.sEmailCliente   := BuscaUmDadoSqlAsString('SELECT CLI_EMAIL FROM CLI0000 WHERE CLI_CODIGO = ' + QuotedStr(EdClienteCodigo.Text));
          tcr.sAssunto        := 'PEDIDO DE TRATAMENTO TÉRMICO Nº ' +  Pedido + ' - ' + dbInicio.Empresa.FANTASIA;
          comCopia := BuscaUmDadoSqlAsString('SELECT PMT_ENVIA_COPIA_PEDIDO_INDUST FROM PRMT0001 WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo) );
          if comCopia <> '' then
            tcr.sComCopia := comCopia;

          tcr.ProcessarInformacoes;
          if tcr.ssucesso  then
          begin
            GravaHistoricoEmail(tcr.modulo, tcr.EdMail.Text,  tcr.titulo, 'C', EdClienteCodigo.Text, Now, DBInicio.Usuario.CODIGO, tcr.sCaminhoArquivo);

          end;

        finally
          FreeAndNil(tcr);
        end;


      end
      else
      begin
        MessageDlg(
          'Em Configurações / Parâmetros / Produção / (Aba) Orçamento Industrial ' + #13 + #10 +
          'Não existe um caminho para gravar o PDF do Pedido de Industrialização. Favor inserir a informação',
          mtWarning, [mbOK], 0
        );
      end;

    except ON E:EXCEPTION DO
    Begin
      RollBackTransaction;
      MessageDlg(e.Message, mtWarning, [mbOK], 0);
      // raise Exception.Create(e.message);
    End;

  end;

end;

procedure TFrmPedido.RemoverInfoNumeracaoPedido;
begin
   DBInicio.MainDB.ExecuteDirect( ' DELETE FROM ped_cntnum WHERE emp_codigo='+qStr(DBInicio.Empresa.EMP_CODIGO)+' and id_pedido='+inttostr( vIdPedido )+
                                  ' and (Select cast(count(*) as integer) as conta from    ped0000 where id_pedido='+inttostr( vIdPedido )+')=0 ' );
end;


procedure TFrmPedido.CancelarPedido;
var fCodEmSeqUnica:string;
begin
   if (bInclusao) then
   begin
        if dbInicio.empresa.fSeqUnicaPed then
           fCodEmSeqUnica:='001'
        Else
           fCodEmSeqUnica:=dbInicio.Empresa.EMP_CODIGO;

        if (StrToIntDef(EdPedidoNumero.Text,0)<>0) then
           SequenciadorPRC(dbInicio.MainDB, fCodEmSeqUnica,'PED0000', 'PED_CODIGO', 1, EdPedidoNumero.Text);
   end;
   RemoverInfoNumeracaoPedido;

   ApagaPedidoEmEdicao();
   LimparCampos;

   edVendedor.FiltroTabela:=dbInicio.ExclusivoSql('TABELAS') ;
   HabilitaDesabilitaEdicao(False);
   cdsClienteEnder.Close;
   cdsClienteEnderSelecionado.Close;

   pnEndereco.Visible := false;
   pnFrete.Visible := false;
   sCodCliente := EmptyStr;
   PageControl4.ActivePageIndex := 0;
end;

procedure TFrmPedido.cbbClienteEstadoChange(Sender: TObject);
begin
  inherited;
  EdClienteUF.Text := cbbClienteEstado.Text;
  MontaFiltroCfop;
end;

procedure TFrmPedido.cbClienteVendasButtonClick(Sender: TObject);
var tcr: tFrmPesquisaClientes;
begin
  tcr:= tFrmPesquisaClientes.Create(self);
  try
    tcr.ShowModal;
    if tcr.modalresult = mrok then
      cbClienteVendas.idRetorno := tcr.IDRetorno;


  finally
       FreeAndNil(tcr);
  end;

end;

procedure TFrmPedido.cbClienteVendasSelect(Sender: TObject);
begin
 if cbClienteVendas.idRetorno<>'' then
 begin
   edClienteVendas.Text:=cbClienteVendas.idRetorno;
   BuscaClienteVenda;
 end
 Else
   edClienteVendas.clear;
end;

procedure TFrmPedido.BtnCancelarClick(Sender: tObject);
begin
   CancelarPedido;
end;

procedure TFrmPedido.BtnGravarClick(Sender: tObject);
var bVendedorAtivo, bTransportadoraAtiva, bContinua:Boolean;
begin
//  edVendedor.Enabled := true;
//  EdVendedorCodigo.Enabled := true;
//  edVendInternoCodigo.Enabled := true;
//  edVendInterno.Enabled := true;

   PanelAguarde.Visible := True;
   Application.ProcessMessages;
   bRecalculaSTGeral := true;
   bVendedorAtivo := True;
   bTransportadoraAtiva := True;
   bContinua := True;
   wRetornoInd:= False;
//somente teste
//   JvErrorIndicator1.ClearErrors;
//   JvValidators1.Validate;
   //Vendedor Inativo
  if (EdVendedorCodigo.Text <> '') then
    bVendedorAtivo:= BuscaUmDadoSqlAsString(SQLDEF('REPRESENTANTES','Select REP_SITUACAO from REP0000','Where REP_CODIGO = '+QuotedStr(EdVendedorCodigo.Text)+'','','')) = 'A';

   //Transportadora Inativa
  if (EdTransportadoraCodigo.Text <> '') then
    bTransportadoraAtiva:=  BuscaUmDadoSqlAsString (SQLDEF('TRANSPORTADORAS','Select TRP_ATIVO from TRP0000','Where TRP_CODIGO = '+QuotedStr(EdTransportadoraCodigo.Text)+'','','')) = 'S';

   if not fIgnoreItens then
      if SqlCdsPedidoItem.IsEmpty or (SqlCdsPedidoItem.RecordCount = 0)  then
         if Assigned(self.ActiveControl) then
            if (self.ActiveControl.name <>'SpeedButton1') or (self.ActiveControl.name <>'btAdicionaXML') then
            begin
                 uteis.aviso('Pedido sem itens, por favor informe um item ou cancele!!!');
                 bContinua := False;
            end;

   if DBInicio.GetParametroSistema('PMT_MULTIPLAS_IE') = 'S' then
   begin
      if dblcInscricaoEstadual.KeyValue = Null then
      begin
         MessageDlg('Inscrição Estadual não informada!!!', mtError, [mbOK], 0);
         PanelAguarde.Visible := False;
         abort;
      end;

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
         if (StrZero(SqlCdsPedidoCLI_CODIGO.AsString,5)<>'00000') and (SqlCdsPedidoCLI_CODIGO.AsString <> EdClienteCodigo.Text)and(not GBInformacoesOrcamento.Visible) then
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
         dbInicio.ValidaLimiteCredito(SqlCdsPedidoCLI_CODIGO.AsString,dbInicio.EMPRESA.EMP_CODIGO,False);
         bRecalculaSTGeral := True;
         GravaPedido;
   end;
   bRecalculaSTGeral := False;
   bInclusao:=False;
   PanelAguarde.Visible := False;
end;

procedure TFrmPedido.BuscaTipoPedido(sTipoCodigo: Integer);
begin
     SqlCdsTipoPedido.Close;
     bTipoPedidoCalculaST := False;

     SqlCdsTipoPedido.CommandText := SQLDEF('TABELAS','SELECT t1.* FROM OPV0000 t1','WHERE T1.OPV_CODIGO ='+QuotedStr(IntToStr(sTipoCodigo)),'','t1.')+ ' ORDER BY t1.OPV_DESCRICAO';
     SqlCdsTipoPedido.Open;

     if (sTipoCodigo > 0) then
     begin
//          SqlCdsTipoPedido.CommandText := SQLDEF('TABELAS','SELECT t1.* FROM OPV0000 t1','WHERE T1.OPV_CODIGO ='+QuotedStr(IntToStr(sTipoCodigo)),'','t1.')+ ' ORDER BY t1.OPV_DESCRICAO';
//          SqlCdsTipoPedido.Open;
          //Verifica se localizou e atualiza na tela
          if (not SqlCdsTipoPedido.IsEmpty) then
          begin
               iCodigoTipoPedido := SqlCdsTipoPedidoOPV_CODIGO.AsInteger;
               EdPedidoTipo.Text := SqlCdsTipoPedidoOPV_DESCRICAO.AsString;
               MontaFiltroCfop;
               if SqlCdsTipoPedidoOPV_CALCULA_ST.AsString = 'S' then
                   bTipoPedidoCalculaST := True;

               bEnviaProducao := SqlCdsTipoPedidoOPV_PRODUCAO.AsString = 'S';
               SetCfopOpvTipo( SqlCdsTipoPedidoOpv_TIPO.Asstring ) ;

               MovimentaEstoque(    SqlCdsTipoPedido.FieldByName('OPV_ATESTOQUE').asstring='S'      );
               cbExped.Enabled := (DBInicio.Empresa.PMT_LIBERAR_EXPEDICAO = 'P') and (SqlCdsTipoPedidoopv_expedicao.AsString = 'S');
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

procedure TFrmPedido.BtnAlterarClick(Sender: tObject);
begin
  PanelAguarde.Visible := True;
  Application.ProcessMessages;
  PedidoEmEdicao(EdPedidoNumero.Text);
  // GravaPedido;
  if (SqlCdsPedidoPED_SITUACAO.AsString = 'C') then
  begin
    PanelAguarde.Visible := False;
    raise Exception.Create ('O Pedido não pode ser editado pois está cancelado');
  end;


  if MatchStr(SqlCdsPedidoPED_SITUACAO.AsString,['F','P'] )  and (SqlCdsPedidoPed_faturar_liberado.AsString = 'S') and ( DBInicio.empresa.wTipoLiberacaoFaturamento = 'M') then
  begin
     PanelAguarde.Visible := False;
     raise Exception.Create('Pedido já liberado para faturamento');
  end;
  if (SqlCdsPedidoPED_SITUACAO.AsString = 'T') then
  begin
    PanelAguarde.Visible := False;
    raise Exception.Create('O Pedido não pode ser editado pois já foi faturado totalmente');
  end;
  if (SqlCdsPedidoPED_SITUACAO.AsString = 'A') then
  begin
    PanelAguarde.Visible := False;
    raise Exception.Create('O pedido não pode ser editado pois já foi agrupado');
  end;
  bInclusao := False;
  HabilitaDesabilitaEdicao(true);
  if (wCodigoEndereco = 0) and (edCliente.idRetorno <> '') then
  begin
     OpenAux('SELECT codigo FROM ENDERECO '+
             ' WHERE  padrao = ''1'''+
             ' AND COD_CLIENTE = '+QuotedStr(edCliente.idRetorno) );
     if not qAux.IsEmpty then
       wCodigoEndereco :=  qAux.FieldByName('codigo').AsInteger

  end;

  btLiberaPedidoMinimo.Enabled := BtnGravar.Enabled;
  PanelAguarde.Visible := False;

end;

procedure TFrmPedido.BtnExcluirClick(Sender: tObject);
begin
  if MessageDlg('Confirma a Exclusão do Pedido?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
    exit;
  if (rQuantidadeItensFaturado > 0) then
    uteis.aviso('O Pedido já possui faturas vinculadas e não pode ser cancelado!')
  else
   begin
   if (SqlCdsPedidoPED_SITUACAO.AsString = 'C') then
       uteis.aviso('Pedido já foi cancelado!')
   else
   if (SqlCdsPedidoPED_SITUACAO.AsString = 'A') then
         uteis.Aviso('O pedido não pode ser cancelado pois já foi agrupado.')
   else
   if (MatchStr(SqlCdsPedidoPED_SITUACAO.AsString ,['F','P'] ) )  and (SqlCdsPedidoPed_faturar_liberado.AsString = 'S') and ( DBInicio.empresa.wTipoLiberacaoFaturamento = 'M') then
        uteis.aviso('Pedido já liberado para faturamento')
   else
   if (BuscaUmDadoSqlAsInteger( 'SELECT OPR_CODIGO FROM ORDEMPRODUCAO ' +
                              ' WHERE PED_CODIGO = '+  QuotedStr(SqlCdsPedidoPED_CODIGO.AsString) +
                              iif(dbInicio.Exclusivo('ORDEMPRODUCAO'), ' AND EMP_CODIGO = '+qStr(DBInicio.Empresa.EMP_CODIGO), '') +
                              '  AND OPR_STATUS <> '+ QuotedStr('C') )>1) then
   begin
     uteis.aviso('Ordem de produção já gerada')

   end
   else
    begin
      ExcluirPedido;
      SqlCdsPedido.Refresh;
      LimparCampos;
    end;

  end;
  btLiberaPedidoMinimo.Enabled := BtnGravar.Enabled;

end;

procedure TFrmPedido.btnFaturamentoClick(Sender: TObject);
begin
  inherited;
  ExecSql( 'update PED0000  set PED_USU_LIBEROU_FATURAMENTO = '+  DBInicio.Usuario.CODIGO  + ','+
  ' PED_DATA_LIBERACAO = '+ DateToSQL(Date) + ',' + ' Ped_faturar_liberado = ''S'' ' +
  ' WHERE PED_CODIGO = ' +QuotedStr(EdPedidoNumero.Text ) +
  ConcatSe(' and ',DBInicio.ExclusivoSql('PEDIDOS'))
  );
  BuscaPedido(EdPedidoNumero.Text );
  btnFaturamento.Enabled := False;
  pMensagemFat.Visible:= True;
  ShowMessage('Liberado para faturar');
end;

procedure TFrmPedido.btnFaturarNFCEClick(Sender: TObject);
var
 bPossuiProdutos,bPossuiServicos : boolean;
 sTipoFaturamento : string;

begin
  inherited;
  if EdPedidoNumero.Text <> '' then
  begin
    Panel1.Enabled := False;
    try

     if BuscaUmDadoSqlAsInteger( 'Select cast(count(*) as integer) as conta from    PED_IT01 t1  where PED_CODIGO = '+
                                       qStr(EdPedidoNumero.Text)+
                                       ConcatSe( ' and t1.', dbInicio.ExclusivoSql('PEDIDOS') ) )=0 then
             uteis.aviso('O pedido não possui itens e não pode ser faturado')
          else if BuscaUmDadoSqlAsString('SELECT OPE_ESCRITA FROM OPE0000 '+
                                         ' WHERE ope_codigo = '+QuotedStr(edCfop.idRetorno) +
                                         ConcatSe(' and ',DBInicio.ExclusivoSql('OPERACAOFISCAL') )) = 'N'   then
           Uteis.Aviso('Não pode gerar NFCE, porque o CFOP não pode gerar escrita fiscal')
         else
         if SqlCdsPedidoPED_SITUACAO.AsString <> 'T' then
         begin


            bPossuiProdutos := TemTipoItem( 'P' );
            bPossuiServicos := TemTipoItem( 'S' );

            if (bPossuiServicos and bPossuiProdutos) then
            begin
                  //Chama tela de opção de faturamento pois existe produtos e serviços a serem faturados
                  FormFaturamentoOpcao := TFormFaturamentoOpcao.Create(FrmPedido);
                  try
                     FormFaturamentoOpcao.ShowModal;
                     sTipoFaturamento:=FormFaturamentoOpcao.TipoFaturamento;
                  finally
                     FreeAndNil(FormFaturamentoOpcao);
                  end;

            end
            else if bPossuiProdutos then
                 sTipoFaturamento := 'P'
            else if bPossuiServicos then
                 sTipoFaturamento := 'S';


            if (dblcInscricaoEstadual.KeyValue <> null) and (DBInicio.GetParametroSistema('PMT_MULTIPLAS_IE') = 'S') then
            begin
              if BuscaUmDadoSqlAsString('SELECT PED_CODIGO FROM PEDIDO_IE WHERE PED_CODIGO = ' + QuotedStr(edPedidoNumero.Text)) = '' then
              begin
                ExecSql('INSERT INTO PEDIDO_IE VALUES( ' +
                  QuotedStr(edPedidoNumero.Text) + ',' +
                  QuotedStr('') + ',' +
                  VarToStr(dblcInscricaoEstadual.KeyValue) +
                  ')'
                );
              end
              else
              begin
                ExecSql('UPDATE PEDIDO_IE SET ' +
                  'EMI_CODIGO = ' + VarToStr(dblcInscricaoEstadual.KeyValue) +
                  ' WHERE PED_CODIGO = ' + QuotedStr(edPedidoNumero.Text)
                );

              end;

            end;





           FormFatPedido := TFormFatPedido.Create(frmPedido);
           try

              FormFatPedido.CarregarParametros ;
              FormFatPedido.chkNotaConsumidor.Checked := True;
              FormFatPedido.TipoFaturamento := sTipoFaturamento;
              FormFatPedido.EmpCodigo := DBInicio.Empresa.EMP_CODIGO;
              FormFatPedido.EmpCodigoOriginal:= DBInicio.Empresa.EMP_CODIGO;
              FormFatPedido.CodPedido := EdPedidoNumero.Text;
              FormFatPedido.GerarPedido := True;
              FormFatPedido.dblcInscricaoEstadual.KeyValue := dblcInscricaoEstadual.KeyValue;
              FormFatPedido.ShowModal;
              if BuscaUmDadoSqlAsString('select first 1 nf_status_nfe from nf0001 '+
                                 ' where ped_codigo = '+qStr(EdPedidoNumero.Text)+
                                  ConcatSe( ' and ', dbInicio.ExclusivoSql('PEDIDOS') ))  <> 'A' then
                uteis.Aviso('Ocorreram erros no envio da NFCe');

           finally
                  FreeAndNil( FormFatPedido );
           end;

         end
         else
             uteis.aviso('Pedido já faturado !');
    finally
      Panel1.Enabled := true;
      btnFaturarNFCE.Enabled :=  BuscaUmDadoSqlAsString('select first 1 nf_status_nfe from nf0001 '+
                                 ' where ped_codigo = '+qStr(EdPedidoNumero.Text)+
                                  ConcatSe( ' and ', dbInicio.ExclusivoSql('PEDIDOS') ))  <> 'A'
    end;
  end;
end;

procedure TFrmPedido.DeletarItem;
var sQuery: string;
 dQtde, pedIndQuantidade : double;
     bAtualizouEstoque : boolean;
    amx_destino :string;
begin
     SqlCdsPedidoItem.DISABLECONTROLS;
     TRY
        if (SqlCdsTipoPedidoOPV_VENDA.AsString = 'S') then
          amx_destino := BuscaUmDadoSqlAsString('SELECT AMX_CODIGO FROM ALMOX0000 WHERE AMX_CNPJ_PART = '+QuotedStr(RetirarMascaraCNPJ_INSC(DBInicio.Empresa.CNPJ_CNPF)))
        else
        if (SqlCdsTipoPedidoOPV_ESTOQUE_REMESSAINDUS.AsString = 'S')
           and (SqlCdsTipoPedidoOPV_VENDA.AsString = 'N')
           and (BuscaUmDadoSqlAsString('SELECT AMX_DESCRI FROM ALMOX0000 WHERE AMX_CNPJ_PART = ' + QuotedStr(RetirarMascaraCNPJ_INSC(EdCnpj.Text))) <> '')
        then
        begin
           amx_destino := BuscaUmDadoSqlAsString('SELECT AMX_CODIGO FROM ALMOX0000 WHERE AMX_CNPJ_PART = '+QuotedStr(RetirarMascaraCNPJ_INSC(EdCnpj.Text)));
        end
        else
           amx_destino := '';

        if (not SqlCdsPedidoItem.IsEmpty) then
        begin
             if (SqlCdsPedidoItemPRF_QTDEFAT.AsFloat > 0) then
                uteis.aviso('O Item já possui qtde faturada e não pode ser excluido!')
             else
             begin
                 dQtde:= 1;
                 if SqlCdsPedidoItemprf_registro_vinculado.AsInteger> 0 then
                 begin
                    OpenAux('SELECT PRF_REGISTRO,PRF_QTDE FROM PED_IT01 co  '+
                     ' WHERE PED_CODIGO = '+QuotedStr(EdPedidoNumero.Text)+
                     ' AND prf_registro = '+ IntToStr(SqlCdsPedidoItemprf_registro_vinculado.AsInteger));
                    if not qaux.IsEmpty then
                       dQtde := qaux.FieldByName('PRF_QTDE').AsFloat;

                 end;

                  if (SqlCdsTipoPedidoOPV_ATESTOQUE.AsString = 'S')  AND (dbInicio.Empresa.wAtualizaEstoque = 'P') then //Verifica se o tipo do pedido baixa estoque
                  begin
                       //Verifica se atualiza estoque pelo pedido
                       //verifica se o item não é perda, desta maneira não teve saida do estoque e assim, não pode ser dado entrada no estoque se for excluido
                       bAtualizouEstoque := (SqlCdsPedidoItemprf_qtdePend.AsFloat < SqlCdsPedidoItemprf_qtde.AsFloat*dQtde);
                        if ((dbInicio.Empresa.wAtualizaEstoque = 'P') and
                            (bAtualizouEstoque) and
                            (SqlCdsPedidoItemPRF_PRODUTO_AGREGADO.asstring = 'N') and
                             not (SqlCdsPedidoItemPRD_PRODSERV.AsString = 'S') AND
                             (SqlCdsPedidoItem.FieldByName('PTI_SIGLA').AsString <> 'KT')
                            )
                        OR
                        ((dbInicio.Empresa.wAtualizaEstoque = 'P') and
                            (bAtualizouEstoque) and
                            (SqlCdsPedidoItemPRF_PRODUTO_AGREGADO.asstring = 'N') and
                             not (SqlCdsPedidoItemPRD_PRODSERV.AsString = 'S') AND
                             (SqlCdsPedidoItem.FieldByName('PTI_SIGLA').AsString = 'KT')  AND (DBInicio.Empresa.wPMT_CONTROLA_KIT)
                            )
                        OR
                        ((SqlCdsPedidoItemPRF_PRODUTO_AGREGADO.asstring = 'S') and
                        not (DBInicio.Empresa.wPMT_CONTROLA_KIT) and
                        (bAtualizouEstoque)) then
                       begin
                           KardexLancamento(SqlCdsPedidoItemPRF_REGISTRO.AsString,                 //OK
                                            'PED',
                                            SqlCdsPedidoItem.FieldByName('AMX_CODIGO_DESTINO').AsString,
                                            amx_destino,
                                            SqlCdsPedidoItem.FieldByName('PRD_CODIGO').AsString,
                                            SqlCdsPedidoItem.FieldByName('PRG_REGISTRO').AsString,
                                            '',
                                            iif(SqlCdsTipoPedidoOPV_TIPO.AsString = 'S','E','S'),
                                            '',
                                            SqlCdsPedidoItemPRDL_REGISTRO.AsString,
                                            'EXCLUSÃO OU CANCELAMENTO DO ITEM NO PEDIDO',
                                            Now,
                                            (SqlCdsPedidoItemPRF_QTDE.AsFloat*dQtde)-SqlCdsPedidoItemprf_qtdePend.AsFloat,  //pelo numeros de kits, se houver senão ele joga 1  ,excluindo os pendentes
                                            SqlCdsPedidoPED_CODIGO.AsString,
                                            edCliente.idRetorno+'-'+edCliente.Text,
                                            SqlCdsPedidoItemPRF_PRECO.AsFloat,
                                        edCliente.idRetorno,'','',SqlCdsPedidoItem.FieldByName('PRD_REFER').AsString,
                                        ((SqlCdsTipoPedidoOPV_ESTOQUE_REMESSAINDUS.AsString = 'S') AND (EdCnpj.Text <> '') ){é industrialização }

                                        );
                       end;
                  end;

                  //Limpa Retorno da Industrialização
                  if wRetornoInd  then
                  begin
                      ConsultaRetornoIndustrializacao;
                      if SqlCdsRetornoIndENF_REGISTRO.AsString <> '' then
                      begin
                        pedIndQuantidade := BuscaumDadoSqlAsFloat(' SELECT SUM(pedind_quantidade) FROM ped_it01_indust WHERE prf_registro = ' + SqlCdsPedidoItemPRF_REGISTRO.AsString);
                        dbInicio.ExecSql('UPDATE ENF_IT01 SET ENF_QUANTIDADE_IND_RETORNO = ENF_QUANTIDADE_IND_RETORNO - '+ValorAmericano(FloatToStr(pedIndQuantidade))+' WHERE ENF_REGISTRO = '+SqlCdsRetornoIndENF_REGISTRO.AsString);
                        dbInicio.ExecSql('DELETE FROM ped_it01_indust WHERE PRF_REGISTRO =' + SqlCdsPedidoItemPRF_REGISTRO.AsString);
                        dbInicio.ExecSql('DELETE FROM PED_IND_KIT WHERE ENF_NOTANUMBER = ' +  QuotedStr(SqlCdsRetornoIndENF_NotaNumber.AsString) + ' AND PRD_REFER =  ' + QuotedStr(SqlCdsRetornoIndPRD_REFER.AsString) + ' AND QTD_RETORNADO = ' + FloatToSQL(SqlCdsRetornoIndPEDIND_QUANTIDADE.AsFloat) + ' AND ENF_REGISTRO = ' + SqlCdsRetornoIndENF_REGISTRO.AsString  );
                      end;
                      ConsultaRetornoIndustrializacao;
                  end;
                  // volta quantidade no lote
                  if (SqlCdsPedidoItemPRDL_REGISTRO.AsInteger > 0)
                  AND (dbInicio.Empresa.wAtualizaEstoque = 'P')
                  AND (DBInicio.GetParametroSistema('PMT_ATUALIZA_LOTE') = 'P')
                  and (SqlCdsTipoPedidoOPV_ATESTOQUE.Asstring = 'S')
                  then  // voltar qtde ao lote
                    movimentaLote(
                      SqlCdsPedidoItemPRF_REGISTRO.AsInteger,
                      SqlCdsPedidoItemPRDL_REGISTRO.AsInteger,
                      screen.ActiveForm.Name,
                      'E',
                      SqlCdsPedidoItemPRF_QTDE.AsFloat,
                      0);
//                        dbInicio.ExecSql('update prd_lote set prdl_saldo=prdl_saldo+'+FloatToSql( SqlCdsPedidoItemPRF_QTDE.AsFloat)+'  WHERE PRDL_REGISTRO='+InttoStr(SqlCdsPedidoItemPRDL_REGISTRO.AsInteger));

                  //Limpa Agregados
                  //Lista os Vinculados pelo registro e elimina
                  qAux2.Close;
                  qAux2.sql.text:= 'SELECT * FROM PED_IT01 T2 WHERE T2.PRF_REGISTRO_VINCULADO = '+SqlCdsPedidoItemPRF_REGISTRO.AsString;
                  qAux2.Open;
                  if (SqlCdsPedidoItemPRF_REGISTRO.AsInteger <> 0) then
                  begin
                       while (not qAux2.Eof) do
                       begin

                             bAtualizouEstoque := (qAux2.FieldByName('prf_qtdePend').AsFloat) <> (qAux2.FieldByName('prf_qtde').AsFloat*SqlCdsPedidoItemPRF_QTDE.AsFloat);
                            if (SqlCdsTipoPedidoOPV_ATESTOQUE.AsString = 'S')   //Verifica se o tipo do pedido baixa estoque
                             and (dbInicio.Empresa.wAtualizaEstoque = 'P')   //Verifica se atualiza estoque pelo pedido
                             and not DBInicio.Empresa.wPMT_CONTROLA_KIT then
                            begin

                                  if bAtualizouEstoque then
                                  KardexLancamento(qAux2.FieldByName('PRF_REGISTRO').AsString,     //0K
                                                          'PED',
                                                          qAux2.FieldByName('AMX_CODIGO_DESTINO').AsString,
                                                          amx_destino,
                                                          qAux2.FieldByName('PRD_CODIGO').AsString,
                                                          qAux2.FieldByName('PRG_REGISTRO').AsString,
                                                          '',
                                                          iif(sqlCdsTipoPedidoOPV_TIPO.AsString = 'S','E','S'),
                                                          '',
                                                          qAux2.FieldByName('PRDL_REGISTRO').AsString,
                                                          'EXCLUSÃO OU CANCELAMENTO DO ITEM DO PEDIDO',
                                                          Now,
                                                          //quantidade do item x numero de kit menos a quantidade pendentes de cada item
                                                          (qAux2.FieldByName('PRF_QTDE').AsFloat*SqlCdsPedidoItemPRF_QTDE.AsFloat)-qAux2.FieldByName('prf_qtdePend').AsFloat,
                                                          SqlCdsPedidoPED_CODIGO.AsString,
                                                          edCliente.idRetorno+'-'+edCliente.Text,
                                                      qAux2.FieldByName('PRF_PRECO').AsFloat,'','','',qAux2.FieldByName('PRD_REFER').AsString,
                                                     ((SqlCdsTipoPedidoOPV_ESTOQUE_REMESSAINDUS.AsString = 'S') AND (EdCnpj.Text <> '') ){é industrialização }
                                                      );

                            end;

                           //Delete item da tabela
                            ExcluirPedidoItem(qAux2.FieldByName('PRF_REGISTRO').AsInteger);
                           qAux2.Next;
                       end;
                  end;
                  qAux2.Close;

                  //Delete item da tabela
                  if  ((dbInicio.Empresa.bHabilitarTabelaPreco) or (dbInicio.Empresa.fPMT_MULTTAB = 'S')) and
                       (SqlCdsTipoPedidoOPV_COMISSAO_VERBA.Value = 'S') and (SqlCdsPedido.FieldByName('GERAR_VERBA').AsString = '1') then

                  begin
                     if (not SqlCdsPedidoItem.FieldByName('Valor_Verba').IsNull) and (SqlCdsPedidoItem.FieldByName('Valor_Verba').Value > 0) and (SqlCdsPedidoItemUsou_Verba.Value = 'S') then
                     begin

                       FrmPedidoItem.GravaContaCorrente('I','V','C',FrmPedido.SqlCdsPedidoPED_CODIGO.Value,'CREDITO PELA EXCLUSAO DE ITEM DO PEDIDO DE VENDA',
                                          'A',FrmPedido.SqlCdsPedidoREP_CODIGO.Value,FrmPedido.SqlCdsPedidoCLI_CODIGO.Value,'0','0','',SqlCdsPedidoItemPRD_REFER.Value,SqlCdsPedidoItem.FieldByName('Valor_Verba').Value,0,
                                          StrToInt(DBInicio.Usuario.CODIGO),-1,now);
                     end
                     else
                     begin
                       FrmPedidoItem.ExcluiContaCorrente(SqlCdsPedidoItemPRD_REFER.Value,FrmPedido.SqlCdsPedidoPED_CODIGO.Value);
                     end;

                  end;
                   if (SqlCdsTipoPedidoOPV_BONIFICACAO.Value = 'S') then
                     FrmPedidoItem.ExcluiContaCorrente(SqlCdsPedidoItemPRD_REFER.Value,FrmPedido.SqlCdsPedidoPED_CODIGO.Value);

                  ExcluirPedidoItem(SqlCdsPedidoItemPRF_REGISTRO.AsInteger);

                 // atualizar total preço buruto liquido para o kit, quando for excluido um agregado e
                 // o kit se compõem pelos itens seus preços
                 if (SqlCdsPedidoItemPRF_PRODUTO_AGREGADO.AsString = 'S') and (DBInicio.Empresa.wPMT_ITENS_KIT) then
                 begin
                   dataCadastros.sqlUpdate.Close;

                   DataCadastros.SqlUpdate.sql.text :=SqlDef('PEDIDOS','SELECT sum(T1.PRF_PRECO_BRUTO * t1.PRF_QTDE) as Bruto, '+
                                                             ' sum(T1.PRF_PRECO * t1.PRF_QTDE) as Liq, '+
                                                             ' min( prf_registro_vinculado) as prf_registro_vinculado, '+
                                                             ' sum(PRF_CUSTO * t1.PRF_QTDE) AS custo '+
                                                            // ' SUM(PRF_MARGEM_PRODUTO)/count(*) margem '+
                                                             ' FROM ped_it01 T1 ',
                                                             ' WHERE PRF_REGISTRO_VINCULADO = ' + IntToStr (SqlCdsPedidoItemprf_registro_vinculado.AsInteger)
                                                               , '','T1.');
                   dataCadastros.sqlUpdate.Open;
                   if (dataCadastros.sqlUpdate.FieldByName('Bruto').Value > 0) and (dataCadastros.sqlUpdate.FieldByName('Liq').Value > 0) then
                   begin
                     with dataCadastros.sqlUpdate do
                     begin
                       sQuery := 'UPDATE ped_it01 SET PRF_PRECO_BRUTO = '+FloatToSql(dataCadastros.sqlUpdate.FieldByName('Bruto').AsCurrency) +
                                 ' , PRF_PRECO = '+FloatToSql(dataCadastros.sqlUpdate.FieldByName('Liq').AsCurrency) +
                                 ' , PRF_CUSTO = '+FloatToSql(dataCadastros.sqlUpdate.FieldByName('custo').AsCurrency) +
                                 ' , PRF_MARGEM_PRODUTO = '+FloatToSql((( FieldByName('Liq').AsCurrency / uteis.RoundTo(FieldByName('custo').AsCurrency,-2))-1)*100)+
                                 ' WHERE PRF_REGISTRO = '''+ IntToStr (SqlCdsPedidoItemprf_registro_vinculado.AsInteger) +
                                 ''' and EMP_CODIGO = '''+(dbInicio.Empresa.EMP_CODIGO)+ '''';

                       dataCadastros.sqlUpdate.Close;
                       DataCadastros.SqlUpdate.sql.text :=sQuery;
                       dataCadastros.sqlUpdate.Execsql;
                       dataCadastros.sqlUpdate.Close;
                     end;
                   end;


                 end; // fim -se

                  //Calcula Total
                  CalcutaTotalItens;
                  GravaPedido;


             end;
        end;
     FINALLY
             SqlCdsPedidoItem.eNABLECONTROLS;
     END;
end;

procedure TFrmPedido.Excluir1Click(Sender: tObject);
begin
   sOperacao := 'I';
   ExcluirItem;
end;
procedure TFrmPedido.Alterar1Click(Sender: tObject);
begin
  try
    AlterarItem;
  except on e:exception do

  end;
end;

procedure TFrmPedido.DbGradeItemPedidoDblClick(Sender: tObject);
begin
  try
    AlterarItem;
  except on e:exception do

  end;
end;

procedure TFrmPedido.BuscaVendaItemHistorico;
begin
     SqlCdsVendaItemHistorico.DisableControls;
     try
        IF SqlCdsVendaItemHistorico.ACTIVE THEN
           SqlCdsVendaItemHistorico.Close;

        //DspCdsVendaItemHistorico.DataSet := qCdsVendaItemHistorico;
        //SqlCdsVendaItemHistorico.ProviderName :=  'DspCdsVendaItemHistorico';
        //DsVendaItemHistorico.DataSet := SqlCdsVendaItemHistorico;

        qCdsVendaItemHistorico.sql.Clear;
        qCdsVendaItemHistorico.sql.add ( 'SELECT T1.PRD_REFER, ');
        qCdsVendaItemHistorico.sql.add ( '       T1.PED_CODIGO, ');
        qCdsVendaItemHistorico.sql.add ( '       t1.PRD_DESCRI, ');
        qCdsVendaItemHistorico.sql.add ( '       t1.NF_QTDE, ');
        qCdsVendaItemHistorico.sql.add ( '       t1.NF_PRECO, ');
        qCdsVendaItemHistorico.sql.add ( '       t1.NF_IPIVALOR, ');
        qCdsVendaItemHistorico.sql.add ( '       CASE WHEN (t1.NF_VLSUBST > 0) THEN t1.NF_VLSUBST/t1.NF_QTDE ELSE 0 END AS NF_VLSUBST, ');
        qCdsVendaItemHistorico.sql.add ( '       t1.NF_IDESCTO1, ');
        qCdsVendaItemHistorico.sql.add ( '       t2.CLI_CODIGO, ');
        qCdsVendaItemHistorico.sql.add ( '       t2.NF_NUM_NFE, ');
        qCdsVendaItemHistorico.sql.add ( '       t2.NF_EMISSAO ');
        qCdsVendaItemHistorico.sql.add ( 'FROM NF_IT01 t1 ');
        qCdsVendaItemHistorico.sql.add ( '     join NF0001 t2 on (t1.NF_IT_NOTANUMER = t2.NF_NOTANUMBER) ');
        qCdsVendaItemHistorico.sql.add ( 'WHERE t2.CLI_CODIGO = '+qStr(EdClienteCodigo.Text));
        qCdsVendaItemHistorico.sql.add ( '      and t1.PRD_REFER = '+qStr(SqlCdsPedidoItemPRD_REFER.AsString));
        qCdsVendaItemHistorico.sql.add ( '      '+ConcatSe(' and t2.', dbinicio.exclusivosql( 'CLIENTES')));
        qCdsVendaItemHistorico.sql.add ( 'Order By t2.NF_EMISSAO desc');

        if delphiaberto then
           CopyToClipBoard( qCdsVendaItemHistorico.sql.Text );

        SqlCdsVendaItemHistorico.Open;
        EdHistoricoReferencia.Text := SqlCdsPedidoItemPRD_REFER.AsString;
        EdHistoricoDescricao.Text := SqlCdsPedidoItemPRD_DESCRI.AsString;

     finally

        SqlCdsVendaItemHistorico.EnableControls;

     end;

end;

procedure TFrmPedido.Button1Click(Sender: TObject);
begin
  inherited;
  if CurQtdeTonelada.Value = 0 then
    CurQtdeTonelada.Value := 1;
  if CurVlrKM.Value = 0 then
    CurVlrKM.Value := 1;
  if CurFator.Value = 0 then
    CurFator.Value := 1;

  CurFrete.Value := (CurQtdeTonelada.Value * CurVlrKM.Value * CurFator.Value);
  if (CurQtdeTonelada.Value = 0)  and  (CurVlrKM.Value = 0) and (CurFator.Value = 0)  or (CurFrete.Value = 1) then
    CurFrete.Value :=0;

  AnimateWindow(pnFrete.Handle, 500, AW_HOR_NEGATIVE or  AW_HIDE);
  pnFrete.Visible := false;
end;

procedure TFrmPedido.Button2Click(Sender: TObject);
begin
  inherited;
  AnimateWindow(pnFrete.Handle, 500, AW_HOR_NEGATIVE or  AW_HIDE);
  pnFrete.Visible := false;
end;

procedure TFrmPedido.Button3Click(Sender: TObject);
begin
  inherited;
  wCodigoEndereco := cdsClienteEnderCODIGO.Value;

  pnEndereco.Visible := false;

    if wCodigoEndereco > 0 then
    begin
      cdsClienteEnderSelecionado.Close;
      cdsClienteEnderSelecionado.ParamByName('codigo').AsInteger := wCodigoEndereco;
      cdsClienteEnderSelecionado.Open;
    end
    else
     cdsClienteEnderSelecionado.Close;
   if SqlCdsPedido.State in [dsInsert,dsEdit] then
     SqlCdsPedidoENDERECO_ENTREGA.AsInteger := wCodigoEndereco;

end;

procedure TFrmPedido.Button4Click(Sender: TObject);
begin
  inherited;
  pnEndereco.Visible := false;
end;

procedure TFrmPedido.Button5Click(Sender: TObject);
var tcr: tFrmBaseTelaRelatorio;
fCabFiltro : STRING;
begin
  inherited;
  tcr:= tFrmBaseTelaRelatorio.Create(self);
    try
       fCabFiltro := 'Produto: '+cdsProdutosaFaturarPRD_REFER.AsString +'-'+ cdsProdutosaFaturarPRD_DESCRI.AsString;
       tcr.TituloRelatorio:='Lista de pedidos aberto';
//       qBusco.Filtered := False;
//       qBusco.Filter := cdsBusco.Filter;
//       qbusco.Filtered := True;
       tcr.Query:=qPedidosFaturar;
       tcr.LinhaTitulo1 := '' ;
        tcr.LinhaTitulo2 := fCabFiltro;
      // tcr.SelecionaTodos:=btnLimparClick;
       tcr.ImprimeAuto;
//       tcr.ShowModal;
    finally
      FreeAndNil(tcr);

    end;

end;

procedure TFrmPedido.TabHostoricoVendaShow(Sender: tObject);
begin
     BuscaVendaItemHistorico;
end;

procedure TFrmPedido.BtnEstoqueClick(Sender: tObject);
begin
 if not assigned(frmPosicaoEstoque) then
 begin
  frmPosicaoEstoque := TfrmPosicaoEstoque.Create(Application);
  if (MDIChildCount > 1) then
    SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)

     end;
 frmPosicaoEstoque.Show;
end;

procedure TFrmPedido.ImportarXML1Click(Sender: TObject);
begin
  inherited;
  if EdPedidoNumero.Text = '' then
  begin
    MessageDlg('Sem pedido para inserir os itens, por favor escolha um ou crie um novo', mtWarning, [mbOK], 0);
    Exit;
  end;
  if GravaPedido then
    if OpenDialog1.Execute then
    begin
      XMLDocument1.FileName := OpenDialog1.FileName;
      XMLDocument1.Active := True;
      LoadXML;
      GravaPedido;
    end;
end;

procedure TFrmPedido.ImprimePedido(const bVisualiza: Boolean; sTipo:String);
var tcr: TFrmRelatoriosPedido;
  resumido : boolean;
begin
     tcr:= TFrmRelatoriosPedido.Create(Self);
     resumido := False;
     try
        if pos('Resumido',stipo)>0 then
        begin
          stipo :=  AnsiReplaceStr(sTipo,'Resumido','');
          resumido := True;
        end;
        tcr.OrsCliente:=edOrsCliente.text;
        tcr.ClienteTelefone:=EdClienteTelefone.Text;
        tcr.DiaEntrega:=EdOrsDiaEntrega.Text;
        tcr.OrsEmail:=EdOrsEmail.Text;
        tcr.OrsDiaValidade:=EdOrsDiaValidade.Text;
        tcr.PedidoTipo:=EdPedidoTipo.Text;
        tcr.PedidoSemItemKit:=bPedidoSemItemKit;
        tcr.MemoPedido:=MemoObservacaoPedido.Text;
        tcr.MemoProducao:=MemoObservacaoProducao.Text;
        tcr.MemoMsgAdicional:=MemoMensagemAdicionalNotaFiscal.Text;
        tcr.clientecodigo := EdClienteCodigo.Text;
        tcr.OrsFone:=edOrsFone.text;
        tcr.CabecalhoResumido := resumido;
        tcr.ImprimePedido( bVisualiza, sTipo, EdPedidoNumero.Text, EdVendedorCodigo.Text);
     finally
        FreeAndNil( tcr );
     end;
end;


procedure TFrmPedido.BtnImprimirClick(Sender: tObject);
begin
   if (SqlCdsTipoPedidoOPV_ORCAMENTO.AsString = 'S') then
      ImprimePedido(true,'OR')
   else if (dbInicio.Empresa.wAtualizaEstoque = 'P') then
     ImprimePedido(true,'PEDKIT')
   else
      ImprimePedido(true,'');
end;

procedure TFrmPedido.BtnEmailClick(Sender: tObject);
begin
   ImprimePedido(False,'');
end;

procedure TFrmPedido.BtnRelatoriosClick(Sender: tObject);
begin
   FormGImpPedido := TFormGImpPedido.Create(Application);
   try
     FormGImpPedido.ShowModal;
   finally
     FreeAndNil(FormGImpPedido);

   end;
end;

procedure TFrmPedido.CdSPedidoDIAfterInsert(DataSet: TDataSet);
begin
  CdSPedidoDIPID_REGISTRO.AsInteger := dbInicio.GetNextSequence('gen_ped_it01_di_id');
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
procedure TFrmPedido.CdSPedidoDIAfterDelete(DataSet: TDataSet);
begin
  try
    CdSPedidoDI.ApplyUpdates(0);
    SqlCdsPedidoItem.Refresh;
  except
    GeraException('Erro ao atualizar DI');
  end;
  CdSPedidoDIAdicao.Close;
  if ((not CdSPedidoDI.IsEmpty) and (CdSPedidoDIPID_REGISTRO.AsString <> '')) then
    begin
      CdSPedidoDIAdicao.CommandText := 'SELECT T1.*  FROM PED_IT01_DI_ADICAO T1 WHERE T1.PID_REGISTRO = '+iif(CdSPedidoDI.IsEmpty,'-1',CdSPedidoDIPID_REGISTRO.AsString);
      CdSPedidoDIAdicao.Open;
    end;
end;
procedure TFrmPedido.CdSPedidoDIAfterPost(DataSet: TDataSet);
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
           GeraException('Erro ao atualizar DI');
         end;
         CdSPedidoDIAdicao.Close;
         if ((not CdSPedidoDI.IsEmpty) and (CdSPedidoDIPID_REGISTRO.AsString <> '')) then
           begin
             CdSPedidoDIAdicao.CommandText := 'SELECT T1.*  FROM PED_IT01_DI_ADICAO T1 WHERE T1.PID_REGISTRO = '+iif(CdSPedidoDI.IsEmpty,'-1',CdSPedidoDIPID_REGISTRO.AsString);
             CdSPedidoDIAdicao.Open;
           end;
      end;
end;
procedure TFrmPedido.CdSPedidoDIAdicaoAfterDelete(DataSet: TDataSet);
begin
  try
    CdSPedidoDIAdicao.ApplyUpdates(0);
  except
    GeraException('Erro ao atualizar DI');
  end;
end;
procedure TFrmPedido.CdSPedidoDIAdicaoAfterInsert(DataSet: TDataSet);
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
         CdSPedidoDIAdicaoPDA_REGISTRO.AsInteger := dbInicio.GetNextSequence('gen_ped_it01_di_adicao_id');
         CdSPedidoDIAdicaoPID_REGISTRO.AsInteger := CdSPedidoDIPID_REGISTRO.AsInteger;
//         DBEdit33.SetFocus;
//         DBEdit33.SelectAll;
      end;
end;
procedure TFrmPedido.CdSPedidoDIAdicaoAfterPost(DataSet: TDataSet);
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
           GeraException('Erro ao atualizar DI');
         end;
      end;
end;

procedure TFrmPedido.DsPedidoItemDataChange(Sender: tObject;
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

procedure TFrmPedido.DSPedidoDIDataChange(Sender: tObject; Field: TField);
begin
  CdSPedidoDIAdicao.Close;
  if ((not CdSPedidoDI.IsEmpty) and (CdSPedidoDIPID_REGISTRO.AsString <> '')) then
    begin
      CdSPedidoDIAdicao.CommandText := 'SELECT T1.*  FROM PED_IT01_DI_ADICAO T1 WHERE T1.PID_REGISTRO = '+iif(CdSPedidoDI.IsEmpty,'-1',CdSPedidoDIPID_REGISTRO.AsString);
      CdSPedidoDIAdicao.Open;
    end;
end;
procedure TFrmPedido.BuscaItensNota;
begin
   try
      DataMovimento.CdsItemNota.Close;
      DataMovimento.CdsItemNota.CommandText := SQLDEF('PEDIDOS','SELECT NF2.* FROM NF_IT01 NF2 ','WHERE NF2.NF_IT_NOTANUMER = '''+DataMovimento.CdsNotaFiscalNF_NOTANUMBER.AsString+''' AND NF2.PED_CODIGO = '''+DataMovimento.CdsNotaFiscalPED_CODIGO.AsString+'''','NF2.NF_IT_NOTANUMER','NF2.');
      DataMovimento.CdsItemNota.Open;
   except on E:EdatabaseError do
       uteis.erro  (pchar('Erro ao localizar itens da nota fiscal !'+e.message));
   end;
end;

procedure TFrmPedido.BuscaNotas;
begin
     groupbox6.caption := 'Notas Fiscais Refrêntes ao Pedido Número: '+edPedidoNumero.Text;
     DataMovimento.SQlNota.Close;
     DataMovimento.CdsNotaFiscal.Close;
     DataMovimento.CdsNotaFiscal.CommandText := SQLDEF('PEDIDOS','SELECT NF1.* FROM NF0001 NF1 ','WHERE NF1.PED_CODIGO = '+QuotedStr(edPedidoNumero.Text)+'','NF1.PED_CODIGO','NF1.');
     DataMovimento.CdsNotaFiscal.Open;
     if (not DataMovimento.CdsNotaFiscal.IsEmpty ) then
     begin
             DataMovimento.CdsNotaFiscal.First;
             BuscaItensNota;
     end
     else
         DataMovimento.CdsNotaFiscal.Close;
end;

procedure TFrmPedido.TabNotasFiscaisClienteShow(Sender: tObject);
begin
   BuscaNotas;
end;

procedure TFrmPedido.TabSheet6Show(Sender: TObject);
begin
  inherited;

  if sCodCliente <> EmptyStr then
  begin
    pnEndereco.Top := (DBGrid6.Top);
    pnEndereco.Left := (DBGrid6.Left+10);

    pnEndereco.Height := 185;
    pnEndereco.Width := DBGrid6.Width;

    pnEndereco.Parent := FrmPedido;
    //AnimateWindow(pnFrete.Handle, 500, AW_HOR_POSITIVE or AW_SLIDE or  AW_ACTIVATE);
    pnEndereco.Visible := true;
    BuscaEnderecoEntrega(sCodCliente);

  end;
end;

procedure TFrmPedido.BuscaClienteVenda;
begin
     with DataCadastros  do
     begin
    CdsClientes.close;
    SqlClientes.Sql.Text   := SQLDEF('CLIENTES','SELECT C1.* FROM CLI0000 C1 ','Where C1.cli_codigo = '+QuotedStr(edClienteVendas.Text) ,'C1.CLI_CODIGO','C1.');
           CdsClientes.Open;

           if CdsClientes.IsEmpty then
              uteis.aviso('O Cliente pesquisado não foi encontrado.')
           else
           begin
                sCodCliente := CdsClientesCli_Codigo.AsString;
                BuscaprodutosCliente;
           end;

         AbreGraficoVendas;

         end;
end;

procedure TFrmPedido.BuscaEnderecoEntrega(const pCodigo:string);
begin
    if sCodCliente <> EmptyStr then
    begin
      cdsClienteEnder.Close;
      cdsClienteEnder.ParamByName('COD_CLIENTE').AsString := pCodigo;
      cdsClienteEnder.Open;
    end
    else
     cdsClienteEnder.Close;
end;

procedure TFrmPedido.TabClienteVendasShow(Sender: tObject);
begin
  cbClienteVendas.idRetorno :=  EdClienteCodigo.Text ;

end;

procedure TFrmPedido.BuscaprodutosCliente;
var  wsql1, sEmpresa : string;
begin

     wsql1 := 'SELECT T2.EMP_CODIGO, T1.PRD_REFER,T1.PED_CODIGO,t1.PRD_DESCRI,t1.NF_QTDE,t1.NF_PRECO,t1.NF_IPIVALOR,t1.NF_VLSUBST, '+
              '       t1.NF_IDESCTO1,t2.CLI_CODIGO,t2.NF_NUM_NFE,t2.NF_EMISSAO '+
              'FROM NF_IT01 t1 '+
              '     join opE0000 D on D.OPE_TIPO_OPERACAO='+QSTR('V')+
              '     join NF0001 t2 on  t2.ope_codigo=D.ope_codigo and t1.NF_IT_NOTANUMER = t2.NF_NOTANUMBER AND T2.EMP_CODIGO  = T1.EMP_CODIGO '+
              ' WHERE t2.CLI_CODIGO = '+QuotedStr(edClienteVendas.Text) +
              ' order by t2.NF_EMISSAO desc' ;

     SQLClienteProd.close;
     SQLClienteProd.CommandText := wSql1;
     SQLClienteProd.Open;

     AbreGraficoVendas;

end;

procedure TFrmPedido.AbreGraficoVendas;
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
                                          'where t1.ope_codigo=D.ope_codigo and t1.cli_codigo = '+QuotedStr(edClienteVendas.Text)+' and T1.NF_CANCELADA = ''N'' '+
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

procedure TFrmPedido.SQLClienteProdCalcFields(DataSet: TDataSet);
begin
   SQLClienteProdCC_TOTAL.AsFloat := SQLClienteProdNF_QTDE.AsFloat*SQLClienteProdNF_PRECO.AsFloat;
end;
procedure TFrmPedido.BitCancelaReservaProdClick(Sender: tObject);
begin
     EditProdReserva.Clear;
     BuscaprodutosReservas;
end;

procedure TFrmPedido.BitPesqReservaProdClick(Sender: tObject);
begin
     BuscaProdutosReservas;
end;

procedure TFrmPedido.TabVendasFaturarShow(Sender: tObject);
begin
   BuscaprodutosReservas;
end;

function TFrmPedido.TemTipoItem(const pTipoItem: string): boolean;
begin
 Result := BuscaUmDadoSqlAsInteger( 'Select cast(count(*) as integer) as conta from    PED_IT01 pd '+
                                             'join prd0000 prd on prd.prd_codigo=pd.prd_codigo and prd.prd_prodserv='+qStr(pTipoItem)+
                                             ' Where pd.Ped_Codigo='+qStr(EdPedidoNumero.Text) )>0;
end;

procedure TFrmPedido.tudo1Click(Sender: TObject);
begin
  inherited;
  ImprimePedido(False,'SEV');
end;

procedure TFrmPedido.udo1Click(Sender: TObject);
begin
  inherited;
  ImprimePedido(True,'SEV');
end;

function TFrmPedido.BuscapedidosReservas(const wreserva_Prd_refer: string): boolean;
var wItem, srepr: string ;
begin
     if trim(wreserva_Prd_refer)<>'' then
        wItem := ' and t1.prd_refer = '+qStr(trim(wreserva_Prd_refer))
     Else
        wItem := '';
//      if (dbInicio.Empresa.VisualizaPedios_P) and (dbInicio.Empresa.fCODIGO_REPRES <> '000') then
//        srepr :=  ' and ( t2.REP_CODIGO ='+qStr(dbInicio.Empresa.fCODIGO_REPRES) +
//                  ' or t2.REP_CODIGO_INTERNO = '+  QuotedStr(dbInicio.Empresa.fCODIGO_REPRES) +')'   ;

     cdsPedidosFaturar.Close;
     qPedidosFaturar.SQL.Clear;
     qPedidosFaturar.SQL.TEXT:=  'SELECT DISTINCT T1.PED_CODIGO, T2.PED_DTENTRADA, T2.CLI_CODIGO, T3.CLI_RAZAO, T2.REP_CODIGO, T4.REP_NOME, T2.PED_DTSAIDA, '+
     ' (t1.PRF_QTDE-T1.PRF_QTDEFAT)*COALESCE((SELECT PRF_QTDE-PRF_QTDEFAT FROM PED_IT01 kit WHERE kit.PRF_REGISTRO = T1.PRF_REGISTRO_VINCULADO),1)  AS  SQTDEFATURAR '+
                                'FROM PED_IT01 T1 ' +
                                '     JOIN PED0000 T2 ON (T1.PED_CODIGO = T2.PED_CODIGO) '+
                                '     JOIN CLI0000 T3 ON (T2.CLI_CODIGO = T3.CLI_CODIGO) '+
                                '     JOIN REP0000 T4 ON (T2.REP_CODIGO = T4.REP_CODIGO) '+
                                '     join opv0000 t5 on (t5.OPV_CODIGO = t2.OPV_CODIGO) '+
                                'WHERE T1.PRF_SITUACAO <> '+qStr('T')+
//                                '      AND T1.PRF_FLAG_ATUALIZA_ESTOQUE = '+qStr('S')+
                                wItem+ srepr +
                                '      and t2.ped_situacao NOT IN ( '+qStr('C')+','+QuotedStr('A')+','+QuotedStr('T')+ ')'+
                                '      and t5.OPV_VENDA='+qStr('S')+
                                ' AND PRF_QTDEFAT <> PRF_QTDE'+
                                ConcatSe(' and t1.',dbInicio.ExclusivoSql('PEDIDOS') )+
                                ' order BY T2.PED_DTENTRADA ';
     cdsPedidosFaturar.Open;
     Result := True;
end;

procedure TFrmPedido.BuscaprodutosReservas;
begin
   cdsProdutosaFaturar.Close;
   qProdutosaFaturar.SQL.Clear;
   qProdutosaFaturar.SQL.Add(  ' SELECT pr.PRD_CODIGO, pr.prd_refer, pr.PRD_DESCRI,  SUM ((it.PRF_QTDE-it.PRF_QTDEFAT) '+
                               ' * COALESCE((SELECT PRF_QTDE-PRF_QTDEFAT FROM PED_IT01 kit WHERE kit.PRF_REGISTRO = it.PRF_REGISTRO_VINCULADO),1))  '+
                               ' AS QTDEAFAT    ' +
                               ' FROM PED_IT01 it                                                                                    '+
                               ' JOIN PRD0000 pr ON (pr.PRD_CODIGO = it.PRD_CODIGO )                   '+
                               ' JOIN PED0000 pe ON (pe.PED_CODIGO = it.PED_CODIGO)                                                  '+
                               ' join opv0000 op on (op.OPV_CODIGO = pe.OPV_CODIGO)                                                  '+
                               ' WHERE IT.PRF_SITUACAO <> '+qStr('T')+
                               ' AND ped_situacao NOT IN ( '+qStr('C')+','+QuotedStr('A')+','+QuotedStr('T')+ ')'+
                               ' AND op.opv_venda= ' + QuotedStr('S')+
                               ' AND PRF_QTDEFAT <> PRF_QTDE '+
                            //   ' AND COALESCE(PRF_ATUALIZOU_ESTOQUE,''S'') = '+QuotedStr('S')+
                               ConcatSe(' and it.',dbInicio.ExclusivoSql('PEDIDOS') ));

    if EditProdReserva.Text <> '' then
      qProdutosaFaturar.SQL.Add( ' and  pr.prd_refer = '+QuotedStr( EditProdReserva.Text));

    if (dbInicio.Empresa.VisualizaPedios_P) and (dbInicio.Empresa.fCODIGO_REPRES <> '000') then
      qProdutosaFaturar.SQL.Add( ' and ( pe.REP_CODIGO ='+qStr(dbInicio.Empresa.fCODIGO_REPRES) +
                                  ' or pe.REP_CODIGO_INTERNO = '+  QuotedStr(dbInicio.Empresa.fCODIGO_REPRES) +')' )  ;

     qProdutosaFaturar.SQL.Add(' GROUP BY 1,2,3');

     cdsProdutosaFaturar.Open;
end;

procedure TFrmPedido.Bit_SairClick(Sender: tObject);
begin
     if LiberaSairPedido then
        Close;
end;

procedure TFrmPedido.BotoesAcesso;
begin
     if assigned(FrmPedido) then
     begin
       BtnNovo.Enabled := Uteis.AcessoUsuario('ComercialPedidos',DBInicio.Usuario.CODIGO,FrmPedido).Incluir;
       // BtnExcluir.Enabled := Uteis.AcessoUsuario('ComercialPedidos',DBInicio.Usuario.CODIGO,FrmPedido).Exluir;
       BtnExcluir.Enabled := dbInicio.Empresa.bUSP_EXCLUSAO_PEDIDO_P;
       BtnRelatorios.Enabled := Uteis.AcessoUsuario('ComercialPedidos',DBInicio.Usuario.CODIGO,FrmPedido).Relatorio;
       BtnImprimir.Enabled := Uteis.AcessoUsuario('ComercialPedidos',DBInicio.Usuario.CODIGO,FrmPedido).Relatorio;
       BtnAlterar.Enabled := Uteis.AcessoUsuario('ComercialPedidos',DBInicio.Usuario.CODIGO,FrmPedido).Alterar;
     end;
end;


procedure TFrmPedido.btAbreArquivoXMLClick(Sender: TObject);
begin
  inherited;
  if OpenDialog1.Execute then
    edArquivoXML.Text := ChangeFileExt(ExtractFileName(OpenDialog1.FileName), '');
end;


procedure TFrmPedido.btLiberaPedidoMinimoClick(Sender: TObject);
var
  tcr : TfrmAutorizaPedidoAbaixoMinimo;
begin
  if (pnPedidoMinimo.Font.Color = clRed) then
  begin
     tcr := TfrmAutorizaPedidoAbaixoMinimo.Create(self) ;
       try
          tcr.lbAviso.Caption := pnPedidoMinimo.Caption;
          tcr.ShowModal;
          if tcr.modalresult <> mrOk then
          begin
             GeraException('Não Autorizado!');
          end
          else
          begin
            qAux.Close;
            qAux.SQL.Text := 'UPDATE PED0000 SET PED_PERMITE_VL_ABAIXO_PRAZO_MIN = ''S'' WHERE PED_CODIGO = ' + QuotedStr(EdPedidoNumero.Text);
            qAux.ExecSQL;
            pnPedidoMinimo.Font.Color := clGreen;
          end;
       finally
         FreeAndNil( tcr ) ;
       end;

  end;
end;


procedure TFrmPedido.btnAgendaClick(Sender: TObject);
begin
  inherited;
 if not assigned(PesqTarefas) then
   PesqTarefas := tPesqTarefas.Create(application);
  PesqTarefas.edOrigem.ItemIndex := 56;

 PesqTarefas.rgAcao.ItemIndex := 8;   
 PesqTarefas.Show;

end;
procedure TFrmPedido.HabilitaDesabilitaDescontoNota(bStatus: Boolean);
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

procedure TFrmPedido.CbDescontoNFClick(Sender: tObject);
begin
  if (dbInicio.Empresa.USP_ALTERA_DESCONTO_NOTA) then
   HabilitaDesabilitaDescontoNota(CbDescontoNF.Checked)
  else
   CbDescontoNF.Checked := False;
end;

procedure TFrmPedido.cbFinalidadeChange(Sender: TObject);
begin
  inherited;
  bRecalculaSTGeral := True;
  RecalculaSTItem;
  CalcutaTotalItens;
end;

procedure TFrmPedido.cbOrsConsFinalChange(Sender: TObject);
begin
  inherited;
  {
  if cbOrsConsFinal.ItemIndex = 0 then
    rgOrsCliConsuProprio.Visible := False
  else
    rgOrsCliConsuProprio.Visible := True;
   ???????????? }
end;

procedure TFrmPedido.CbTipoFreteChange(Sender: TObject);
begin
  inherited;
  CurrValorCIF.Visible := CbTipoFrete.ItemIndex = 0;
  lvalorMargemCIF.Visible := CbTipoFrete.ItemIndex = 0;
end;

procedure TFrmPedido.EdClienteCodigoEnter(Sender: TObject);
begin
  inherited;
  edCliente.idRetorno := '';
end;

procedure TFrmPedido.EdClienteCodigoExit(Sender: tObject);
begin
     edClienteCodigo.Text:=StrZero(EdClienteCodigo.Text,5);
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

procedure TFrmPedido.EdClienteCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
     edClienteButtonClick(nil);
end;

procedure TFrmPedido.EdClienteCodigoKeyPress(Sender: tObject;
  var Key: Char);
begin
     if Pos(key,'1234567890'+#8)=0 then
        key := #0;
end;

procedure TFrmPedido.edClienteEnter(Sender: TObject);
begin
  inherited;
  edCliente.idRetorno := '';
end;

procedure TFrmPedido.edClienteSelect(Sender: tObject);
var amx_destino : string;
begin
 if edCliente.idRetorno<>'' then
 begin
   dbInicio.ValidaLimiteCredito(edCliente.idRetorno,dbInicio.EMPRESA.EMP_CODIGO,False);

   if (edCliente.idRetorno <>  SqlCdsPedidoCLI_CODIGO.AsString) and 
      (BuscaUmDadoSqlAsInteger( 'SELECT OPR_CODIGO FROM ORDEMPRODUCAO ' +
                      ' WHERE PED_CODIGO = '+  QuotedStr(SqlCdsPedidoPED_CODIGO.AsString) +
                      '  AND EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo) +
                      '  AND OPR_STATUS <> '+ QuotedStr('C') )>1) then
   begin
     edCliente.idRetorno :=  SqlCdsPedidoCLI_CODIGO.AsString  ;
     raise Exception.Create('Ordem de produção já gerada. Não pode mudar cliente.');
   end;
   
   edClienteCodigo.Text:=edCliente.idRetorno;
//   if  (pOldId<>edCliente.idRetorno) then
//   begin
      ClientePossuiFaturasAtrasadas(edCliente.idRetorno,'CLIM_VENDA');
      OpenAux('SELECT codigo FROM ENDERECO '+
              ' WHERE  padrao = ''1'''+
              ' AND COD_CLIENTE = '+QuotedStr(edCliente.idRetorno) );
      if not qAux.IsEmpty then
         wCodigoEndereco :=  qAux.FieldByName('codigo').AsInteger
      else
        wCodigoEndereco := 0;
        pOldId:=edCliente.idRetorno;
//   end;
     BuscaCliente(edCliente.idRetorno);
      if (EdPrazoCodigo.CanFocus) then
         EdPrazoCodigo.SetFocus;
 end

 Else
      edClienteCodigo.clear;

end;

procedure TFrmPedido.edClienteVendasExit(Sender: TObject);
begin
  inherited;
  edClienteVendas.Text:=StrZero(edClienteVendas.Text,5);
  if edClienteVendas.Text<>'00000' then
  begin
      cbClienteVendas.idRetorno:=edClienteVendas.Text;
      if cbClienteVendas.idRetorno='' then
         GeraException('Cliente não localizado com o código informado');
  end
  Else
  begin
      edClienteVendas.clear;
      cbClienteVendas.Clear;
  end;


end;

procedure TFrmPedido.edClienteVendasKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
     cbClienteVendasButtonClick (nil);
end;

procedure TFrmPedido.edClienteVendasKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
     if Pos(key,'1234567890'+#8)=0 then
        key := #0;
end;

procedure TFrmPedido.EdPrazoCodigoExit(Sender: tObject);
begin
  if edPrazo.Text = '' then
  begin
      edPrazo.SetFocus;
      Exit;
  end;

     PedidoMinimo(EdPedidoNumero.Text);
     EdPrazoCodigo.Text:=StrZero(EdPrazoCodigo.Text,3);
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
  if edPrazo.idRetorno <> EmptyStr then
  begin
     qBuscoFrete.Close;
     qBuscoFrete.SQL.Clear;
     qBuscoFrete.SQL.Add('SELECT PERC_COMISSAO, PERC_VERBA FROM PCL0000 WHERE PCL0000.PCL_CODIGO = '+edPrazo.idRetorno);
     qBuscoFrete.Open;

     rComissaoDoPrazo :=  qBuscoFrete.Fields[0].AsCurrency;
     rVerbaDoPrazo    :=  qBuscoFrete.Fields[1].AsCurrency;
  end;

end;

procedure TFrmPedido.EdPrazoCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
   if Key = VK_F4 then
      edPrazo.Button.Click;
end;

procedure TFrmPedido.edPrazoExit(Sender: TObject);
begin
  inherited;
  if edPrazo.idRetorno <> EmptyStr then
  begin
     qBuscoFrete.Close;
     qBuscoFrete.SQL.Clear;
     qBuscoFrete.SQL.Add('SELECT PERC_COMISSAO, PERC_VERBA FROM PCL0000 WHERE PCL0000.PCL_CODIGO = '+edPrazo.idRetorno);
     qBuscoFrete.Open;

     rComissaoDoPrazo :=  qBuscoFrete.Fields[0].AsCurrency;
     rVerbaDoPrazo    :=  qBuscoFrete.Fields[1].AsCurrency;
  end;
end;

procedure TFrmPedido.edPrazoSelect(Sender: tObject);
begin
     if edPrazo.idRetorno<>'' then
        edPrazoCodigo.Text:=edPrazo.idRetorno
     Else
         edPrazoCodigo.clear;
     if edPrazoCodigo.Text = '' then
       PedidoMinimo('-1')
     else
       PedidoMinimo(EdPedidoNumero.Text);
end;

procedure TFrmPedido.EdVendedorCodigoExit(Sender: tObject);
begin
     edVendedorCodigo.Text:=StrZero(edVendedorCodigo.Text,3);
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

procedure TFrmPedido.EdVendedorCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
   if Key = VK_F4 then
      edVendedor.Button.Click;
end;

procedure TFrmPedido.edVendedorSelect(Sender: tObject);
begin
     if edVendedor.idRetorno<>'' then
     begin
        edVendedorCodigo.Text:=edVendedor.idRetorno;
        VerificaComissaoVendedor;
     end
     Else
         edVendedorCodigo.clear;
end;

procedure TFrmPedido.edVendInternoCodigoExit(Sender: TObject);
begin
  inherited;
   edVendInternoCodigo.Text:=StrZero(edVendInternoCodigo.Text,3);
   if edVendInternoCodigo.Text<>'000' then
   begin
        edVendInterno.idRetorno:=edVendInternoCodigo.Text;
        if edVendInterno.idRetorno='' then
           GeraException('Vendedor não localizado com o código informado');
   end
   Else
   begin
        edVendInternoCodigo.clear;
        edVendInterno.Clear;
   end;
end;

procedure TFrmPedido.edVendInternoCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
   if Key = VK_F4 then
      edVendInterno.Button.Click;
end;

procedure TFrmPedido.edVendInternoSelect(Sender: TObject);
begin
  inherited;
     if edVendInterno.idRetorno<>'' then
     begin
        edVendInternoCodigo.Text:=edVendInterno.idRetorno;
        //VerificaComissaoVendedor;
     end
     Else
         edVendInternoCodigo.clear;
end;

procedure TFrmPedido.EdTransportadoraCodigoExit(Sender: tObject);
var Frete: String;
begin
     edTransportadoraCodigo.Text:=StrZero(edTransportadoraCodigo.Text,3);
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

     if edTransportadora.idRetorno  <> EmptyStr then
     begin
         qBuscoFrete.Close;
         qBuscoFrete.SQL.Clear;
         qBuscoFrete.SQL.Add('SELECT FRETE FROM TRP0000 WHERE TRP0000.TRP_CODIGO = '+edTransportadora.idRetorno);
         qBuscoFrete.Open;


         Frete :=  qBuscoFrete.Fields[0].AsString;
         if CbTipoFrete.ItemIndex = -1 then
         begin
           if Frete = '0' then
               CbTipoFrete.ItemIndex := 0
           else
           if Frete = '1' then
               CbTipoFrete.ItemIndex := 1
           else
           if Frete = '2' then
               CbTipoFrete.ItemIndex := 2
           else
           if Frete = '3' then
               CbTipoFrete.ItemIndex := 3
           else
           if Frete = '4' then
               CbTipoFrete.ItemIndex := 4
           else
           if Frete = '9' then
               CbTipoFrete.ItemIndex := 5
           else
           if Frete = '' THEN
               CbTipoFrete.ItemIndex := 1;
         end;
     end;

end;

procedure TFrmPedido.EdTransportadoraCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
   if Key = VK_F4 then
      edTransportadora.Button.Click;
end;

procedure TFrmPedido.edCCustoCodigoExit(Sender: tObject);
begin
     edCCustoCodigo.Text:=StrZero(edCCustoCodigo.Text,3);
     if edCCustoCodigo.Text<>'000' then
     begin
        edCCusto.idRetorno:=edCCustoCodigo.Text;
        if edCCusto.idRetorno='' then
           GeraException('Centro de Custo não localizado com o código informado');
     end
     Else
     begin
          edCCustoCodigo.clear;
          edCCusto.Clear;
     end;
end;

procedure TFrmPedido.edCCustoCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
     edCCusto.Button.Click;
end;

procedure TFrmPedido.Adicionar1Click(Sender: tObject);
begin

   AdicionaItem;

end;

procedure TFrmPedido.AdicionarItemKit1Click(Sender: TObject);
begin
  inherited;
  wAdcProdKit := true;
  SpeedButton1.Click;
end;

procedure TFrmPedido.AdicionarQuantidadetributria1Click(Sender: TObject);
var quant: string;
begin
  inherited;
  quant:= InputBox('Quantidade tributária','Quantidade :', FloatToStr(SqlCdsPedidoItemPRF_QUANT_TRIB.AsFloat));
  if not (SqlCdsPedidoItem.State in dsEditModes) then
     SqlCdsPedidoItem.Edit;
  SqlCdsPedidoItemPRF_QUANT_TRIB.AsFloat := StrToFloatDef(quant,0);
  ExecSql(' update PED_IT01 set PRF_QUANT_TRIB = ' + FloatToSQL(SqlCdsPedidoItemPRF_QUANT_TRIB.AsFloat) +
          ' where prf_registro  ='+ IntToStr(SqlCdsPedidoItemPRF_REGISTRO.AsInteger));
  SqlCdsPedidoItem.Post;
end;

procedure TFrmPedido.AdicionarUndtributria1Click(Sender: TObject);
begin
  inherited;
  frmUndTributaria := TfrmUndTributaria.Create(application);
  try
    if frmUndTributaria.ShowModal = mrOk then
    begin
      if not (SqlCdsPedidoItem.State in dsEditModes) then
        SqlCdsPedidoItem.Edit;
      SqlCdsPedidoItemPRD_UND_TRIB.AsString := frmUndTributaria.cxComboBox1.Text;
      SqlCdsPedidoItem.Post;
      ExecSql('update PRD0000 set PRD_UND_TRIB = '+ QuotedStr(frmUndTributaria.cxComboBox1.Text) +
      ' where prd_codigo = '+QuotedStr(SqlCdsPedidoItemPRD_CODIGO.AsString)  );

    end;
  finally
    frmUndTributaria.Free;
  end;

end;

procedure TFrmPedido.SpeedTipoClick(Sender: tObject);
begin
  if pnPedidoMinimo.Font.Color = clRed then
  begin
    MessageDlg('Valor mínimo do pedido não atingido', mtWarning, [mbok], 0);
    exit;
  end;
   if (not SqlCdsPedido.IsEmpty) and (SqlCdsTipoPedidoOPV_ORCAMENTO.AsString = 'S') and (SqlCdsPedidoCLI_CODIGO.AsString = '') then
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
   if (MatchStr(SqlCdsPedidoPED_SITUACAO.AsString ,['F','P'] ) )  and (SqlCdsPedidoPed_faturar_liberado.AsString = 'S') and ( DBInicio.empresa.wTipoLiberacaoFaturamento = 'M') then
        uteis.aviso('Pedido já liberado para faturamento')
   else
   if (SqlCdsPedidoPED_SITUACAO.AsString = 'C') then
         uteis.aviso('Não é possivel fazer alterações. Pedido cancelado!')
   else
   if (EdSituacao.Text = 'FATURADO TOTAL') then
         uteis.aviso('Não é possivel fazer alterações. Pedido totalmente faturado!')
   else
   if (EdSituacao.Text = 'AGRUPADO') then
        uteis.aviso('Não é possível incluir mais itens. Pedido já foi agrupado!')
   else
   if (EdSituacao.Text = 'FATURADO PARCIAL') then
        uteis.aviso('Não é possivel fazer alterações. Pedido já foi faturado parcialmente!')

   else
  if ValidaPedido then
  begin
      if (BtnGravar.Enabled) then
         BtnGravarClick(Self);
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
       if (SqlCdsTipoPedidoopv_expedicao.AsString = 'S')   AND (cbExped.ItemIndex < 1 ) and (DBInicio.Empresa.PMT_LIBERAR_EXPEDICAO = 'P') then
          cbExped.ItemIndex := 1;
       GravaPedido;
     end;
     SqlCdsPedidoItem.EnableControls;
  end;

  SetCfopOpvTipo( SqlCdsTipoPedidoOpv_TIPO.Asstring ) ;
  SqlCdsPedidoItem.EnableControls;

end;

procedure TFrmPedido.spRedimecionarItemClick(Sender: TObject);
begin
  inherited;
  if GBInformacoesPedido.Visible then
  begin
    GBInformacoesPedido.Visible := False ;
    ImageList1.Draw(spRedimecionarItem.Glyph.Canvas,1,1,0) ;
    spRedimecionarItem.Hint := 'Diminuir';
    spRedimecionarItem.Caption :='Diminuir (F11)';
    self.WindowState := wsMaximized;
  end
  else
  begin
    GBInformacoesPedido.Visible := True ;
    ImageList1.Draw(spRedimecionarItem.Glyph.Canvas,1,1,1);
    spRedimecionarItem.Hint := 'Aumentar';
    spRedimecionarItem.Caption :='Aumentar (F11)';
    self.WindowState := wsNormal;
  end;
end;

procedure TFrmPedido.SetCfopOpvTipo( const tipo:string );
var vDentroForaEstado: string;
begin
   CdsCFOP.Close;
   if tipo<>'' then
   begin
        if not edCliente.CdS.active then
           vDentroForaEstado:='F'
        Else
        if edCliente.CdS.fieldbyname('CID_ESTADO').AsString=dbInicio.EMPRESA.UF then
           vDentroForaEstado:='D'
        Else
           vDentroForaEstado:='F';
        CdsCFOP.CommandText := SQLDEF( 'OPERACAOFISCAL',
                                       'Select OPE_CODIGO, OPE_NATUREZA||''-''||OPE_DESCRI as OPE_DESCRI FROM OPE0000','WHERE OPE_TIPO='+quotedstr(tipo)+' and OPE_DENTRO in ('+quotedstr(vDentroForaEstado)+','+quotedstr('I')+')',
                                       'OPE_NATUREZA','');
   end
   else // default
      CdsCFOP.CommandText := SQLDEF('OPERACAOFISCAL','Select OPE_CODIGO, OPE_NATUREZA||''-''||OPE_DESCRI as OPE_DESCRI FROM OPE0000','WHERE OPE_TIPO_OPERACAO <> ''C''','OPE_NATUREZA','');
   CdsCFOP.Open;
end;

procedure TFrmPedido.edCCustoSelect(Sender: tObject);
begin
     if edCCusto.idRetorno<>'' then
     begin
        edCCustoCodigo.Text:=edCCusto.idRetorno;
     end
     Else
         edCCustoCodigo.clear;
end;

procedure TFrmPedido.MontaFiltroCfop;
var wSql : string ;
begin
     if SqlCdsTipoPedido.active then
     begin
         if SqlCdsTipoPedidoOPV_TIPO.asstring='E' then
            wSql := ' OPE_TIPO = '+qStr('E')
         else
         if SqlCdsTipoPedidoOPV_TIPO.asstring='S' then
            wSql := ' OPE_TIPO = '+qStr('S');

         if EdClienteCodigo.Text = '' then
         begin
           if cbbClienteEstado.ItemIndex <> -1 then
             if cbbClienteEstado.Text = dbInicio.EMPRESA.UF then // estadual
                wSql := wSql+' and OPE_DENTRO IN (''I'','+qStr('D')+')' {Filtra todas as operacoes de dentro do estado + a independente}
             else
                wSql := wSql+' and OPE_DENTRO IN (''I'','+qStr('F')+')' ; {Filtra todas as operacoes de fora do estado + a independente}
         end
         else
         begin
           if EdClienteUF.Text<>'' then
             if EdClienteUF.Text = dbInicio.EMPRESA.UF then // estadual
                wSql := wSql+' and OPE_DENTRO IN (''I'','+qStr('D')+')' {Filtra todas as operacoes de dentro do estado + a independente}
             else
                wSql := wSql+' and OPE_DENTRO IN (''I'','+qStr('F')+')' ; {Filtra todas as operacoes de fora do estado + a independente}
         end;

         wSql := wSql+'and ope_oculta = ''N'' and OPE_ATIVA = '+qStr('S')+ ConcatSe(' and ',dbInicio.ExclusivoSql('OPERACAOFISCAL') ) ;
         edCfop.FiltroTabela := wSql;
         wsql:=edCfop.IdRetorno;
         edCfop.IdRetorno:=wSql;
     end;
end;


procedure TFrmPedido.edTransportadoraExit(Sender: TObject);
begin

;;
end;

procedure TFrmPedido.edTransportadoraSelect(Sender: tObject);
begin
  if edTransportadora.idRetorno<>'' then
  begin
    edTransportadoraCodigo.Text:=edTransportadora.idRetorno;
    lbPlaca.Visible := true;
    edPlaca.Visible := true;
    edTransportadora.Width := 130;
  end
  Else
  begin
      edTransportadoraCodigo.clear;
      lbPlaca.Visible := false;
      edPlaca.Visible := false;
      edPlaca.Clear;
      edTransportadora.Width := edVendedor.Width;
  end;
  FreteTransportadora
end;

procedure TFrmPedido.GravaMediaComissao;
begin
   CurComissaoVendedor.Value := 0;
   if (rTotalPedidoComDesconto > 0) and (rTotalComisPrecoLiquido > 0) then
      CurComissaoVendedor.Value := (rTotalComisPrecoLiquido / rTotalPedidoComDesconto )*100;
end;

procedure TFrmPedido.MovimentaEstoque(bStatus: Boolean);
begin
   if (bStatus) then
      begin
         LblMovimentaEstoque.Caption := 'Movimenta Estoque';
         LblMovimentaEstoque.Font.Color := clGreen;
      end
   else
      begin
         LblMovimentaEstoque.Caption := 'Não Movimenta Estoque';
         LblMovimentaEstoque.Font.Color := clBlue;
      end;
   LblMovimentaEstoque.BringToFront ;
   
   if (dbInicio.Empresa.wAtualizaEstoque = 'P') then
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

procedure TFrmPedido.ExcluirPedido;
var
    dQtdekit,dQtdeEstoque,dQtdePerdida: Double;
    orcamento, agrupado : boolean;
    btemItens : boolean;
    amx_destino: string;
begin
{
  if (SqlCdsTipoPedidoOPV_ESTOQUE_REMESSAINDUS.AsString = 'S') AND (EdCnpj.Text <> '')  then // entrada no estoque do terceiro
  begin
     amx_destino := BuscaUmDadoSqlAsString('SELECT AMX_CODIGO FROM ALMOX0000 WHERE AMX_CNPJ_PART = '+QuotedStr(RetirarMascaraCNPJ_INSC(EdCnpj.Text)));
     if amx_destino = '' then
       amx_destino := BuscaUmDadoSqlAsString('SELECT AMX_CODIGO FROM ALMOX0000 WHERE AMX_CNPJ_PART = '+QuotedStr(RetirarMascaraCNPJ_INSC(DBInicio.Empresa.CNPJ_CNPF)))
  end
  else
     amx_destino := '';
 }

        if (SqlCdsTipoPedidoOPV_VENDA.AsString = 'S') then
          amx_destino := BuscaUmDadoSqlAsString('SELECT AMX_CODIGO FROM ALMOX0000 WHERE AMX_CNPJ_PART = '+QuotedStr(RetirarMascaraCNPJ_INSC(DBInicio.Empresa.CNPJ_CNPF)))
        else
        if (SqlCdsTipoPedidoOPV_ESTOQUE_REMESSAINDUS.AsString = 'S')
           and (SqlCdsTipoPedidoOPV_VENDA.AsString = 'N')
           and (BuscaUmDadoSqlAsString('SELECT AMX_DESCRI FROM ALMOX0000 WHERE AMX_CNPJ_PART = ' + QuotedStr(RetirarMascaraCNPJ_INSC(EdCnpj.Text))) <> '')
        then
        begin
           amx_destino := BuscaUmDadoSqlAsString('SELECT AMX_CODIGO FROM ALMOX0000 WHERE AMX_CNPJ_PART = '+QuotedStr(RetirarMascaraCNPJ_INSC(EdCnpj.Text)));
        end
        else
           amx_destino := '';


  orcamento := (SqlCdsTipoPedidoOPV_ORCAMENTO.AsString = 'S');
  if orcamento then
  begin
    btemItens :=  (BuscaUmDadoSqlAsInteger(' Select cast(count(*) as integer) as conta from    ped_it01 ' +
                             ' where PED_CODIGO = '+QuotedStr(FrmPedido.EdPedidoNumero.Text)))> 0;

  end;
  agrupado := (SqlCdsPedidoOPV_AGRUPADO.AsString  = 'S');
  if not orcamento or  agrupado  then
    FrmPedidoCancelemento := TFrmPedidoCancelemento.Create(Application);

  try
    if not orcamento or  agrupado  then
    begin
      FrmPedidoCancelemento.NumPedido:= EdPedidoNumero.Text ;
      FrmPedidoCancelemento.ShowModal;
    end;
    if orcamento or (FrmPedidoCancelemento.ModalResult = mrOK) then
    begin
         SqlCdsPedidoItem.First;
         while (not SqlCdsPedidoItem.Eof) do
         begin
                          {
              if SqlCdsPedidoItemPRF_REGISTRO.asstring<>'' then
                 ConsultaRetornoIndustrializacao;
              if SqlCdsRetornoIndENF_REGISTRO.asstring<>'' then
                 ExecSql( ' UPDATE ENF_IT01 SET ENF_QUANTIDADE_IND_RETORNO = ENF_QUANTIDADE_IND_RETORNO - '+FloatToSql(SqlCdsRetornoIndPEDIND_QUANTIDADE.AsFloat)+
                          ' WHERE ENF_REGISTRO = '+SqlCdsRetornoIndENF_REGISTRO.AsString );
              if SqlCdsPedidoItemPRF_REGISTRO.asstring<>'' then
                 ExecSql( ' DELETE FROM ped_it01_indust WHERE PRF_REGISTRO ='+SqlCdsPedidoItemPRF_REGISTRO.AsString );
              if SqlCdsPedidoItemPRF_REGISTRO.asstring<>'' then
                 ConsultaRetornoIndustrializacao;
                         }
              if (SqlCdsTipoPedidoOPV_ATESTOQUE.AsString = 'S') then
              begin
                // é kit e não controla o estoque pelo kit então pula a checagem, vai para os proximos (que deve ser os itens)
                if not DBInicio.Empresa.wPMT_CONTROLA_KIT  and (SqlCdsPedidoItem.FieldByName('pti_sigla').AsString = 'KT') then // controla estoque pelo kit , não pelos itens
                begin
                  SqlCdsPedidoItem.Next;
                  Continue;
                end;

                 if SqlCdsPedidoItemPRF_PRODUTO_AGREGADO.AsString = 'S' then
                 begin

                     dQtdekit:=
                     BuscaUmDadoSqlAsInteger('SELECT PRF_QTDE FROM PED_IT01 co  '+
                                           ' WHERE PED_CODIGO = '+QuotedStr(FrmPedido.EdPedidoNumero.Text)+
                                           ' AND EMP_CODIGO = ' +QuotedStr(DBInicio.Empresa.EMP_CODIGO) +
                                           ' AND exists (SELECT PRD_CODIGO, PRF_PRDDESCRI FROM PED_IT01 orig '+
                                           '              WHERE orig.prf_registro = '+ IntToStr(SqlCdsPedidoItemprf_registro_vinculado.AsInteger)+
                                           '              AND orig.PRD_CODIGO  = co.PRD_CODIGO      '+

                                           ')' );


                 end
                  else
                    dQtdekit := 1;
                  dQtdeEstoque:=  FrmPedido.SqlCdsPedidoItemPRF_QTDE.AsFloat *dQtdekit ;
                  dQtdePerdida := SqlCdsPedidoItemprf_qtdePend.AsFloat ;

                   // Verifica se atualiza estoque pelo pedido
                   if (dbInicio.Empresa.wAtualizaEstoque = 'P') and (SqlCdsPedidoItemprf_qtdePend.AsFloat <> dQtdeEstoque) then
                      KardexLancamento( SqlCdsPedidoItemPRF_REGISTRO.AsString,                            //OK
                                        'PED',
                                        SqlCdsPedidoItem.FieldByName('AMX_CODIGO_DESTINO').AsString,
                                        amx_destino,
                                        SqlCdsPedidoItem.FieldByName('PRD_CODIGO').AsString,
                                        SqlCdsPedidoItem.FieldByName('PRG_REGISTRO').AsString,
                                        '',
                                        iif(SqlCdsTipoPedidoOPV_TIPO.AsString = 'S','E','S'),
                                        '',
                                        SqlCdsPedidoItemPRDL_REGISTRO.AsString,
                                        'EXCLUSÃO OU CANCELAMENTO DO PEDIDO',
                                        Now,
                                        dQtdeEstoque-dQtdePerdida,
                                        SqlCdsPedidoPED_CODIGO.AsString,
                                        edCliente.idRetorno+'-'+edCliente.Text,
                                        SqlCdsPedidoItemPRF_PRECO.AsFloat,'','','',SqlCdsPedidoItem.FieldByName('PRD_REFER').AsString,
                                        ((SqlCdsTipoPedidoOPV_ESTOQUE_REMESSAINDUS.AsString = 'S') AND (EdCnpj.Text <> '')) {é industrialização }
                                        );


              end;
              // volta quantidade no lote
              // if (SqlCdsPedidoItemPRDL_REGISTRO.AsInteger > 0) AND (dbInicio.Empresa.wAtualizaEstoque = 'P') then
              //      dbInicio.ExecSql('update prd_lote set prdl_saldo=prdl_saldo+'+FloatToSql( SqlCdsPedidoItemPRF_QTDE.AsFloat)+'  WHERE PRDL_REGISTRO='+InttoStr(SqlCdsPedidoItemPRDL_REGISTRO.AsInteger));

               if (DBInicio.GetParametroSistema('PMT_ATUALIZA_LOTE') = 'P')
               and (SqlCdsTipoPedidoOPV_ATESTOQUE.Asstring = 'S')
               then
                 movimentaLote(SqlCdsPedidoItemPRF_REGISTRO.AsInteger, SqlCdsPedidoItemPRDL_REGISTRO.AsInteger, screen.ActiveForm.Name, 'E', SqlCdsPedidoItemPRF_QTDE.AsFloat, 0);





              //Limpa Retorno da Industrialização
              if wRetornoInd  then
              begin
                  ConsultaRetornoIndustrializacao;
                  if SqlCdsRetornoIndENF_REGISTRO.AsString <> '' then
                  begin
                    dbInicio.ExecSql('UPDATE ENF_IT01 SET ENF_QUANTIDADE_IND_RETORNO = ENF_QUANTIDADE_IND_RETORNO - '+ValorAmericano(FloatToStr(SqlCdsRetornoIndPEDIND_QUANTIDADE.AsFloat))+' WHERE ENF_REGISTRO = '+SqlCdsRetornoIndENF_REGISTRO.AsString);
                    dbInicio.ExecSql('DELETE FROM ped_it01_indust WHERE PRF_REGISTRO ='+SqlCdsPedidoItemPRF_REGISTRO.AsString);
                    dbInicio.ExecSql('DELETE FROM PED_IND_KIT WHERE ENF_NOTANUMBER = ' +  QuotedStr(SqlCdsRetornoIndENF_NotaNumber.AsString) + ' AND PRD_REFER =  ' + QuotedStr(SqlCdsRetornoIndPRD_REFER.AsString) + ' AND QTD_RETORNADO = ' + FloatToSQL(SqlCdsRetornoIndPEDIND_QUANTIDADE.AsFloat) + ' AND ENF_REGISTRO = ' + SqlCdsRetornoIndENF_REGISTRO.AsString   );

                  end;
                  ConsultaRetornoIndustrializacao;
              end;

              SqlCdsPedidoItem.Next;
         end;
           //excluir o crm se houver
        execsql('DELETE FROM TAREFAS_CRM '+
                'WHERE PED_CODIGO = '+ QuotedStr(EdPedidoNumero.Text)+
              ConcatSe(' and ', DBInicio.ExclusivoSql('PEDIDOS')));
      // não mostrar motivo do cancelamento e excluir registro
        if orcamento and not btemItens and not agrupado then
        begin

          //excluindo os itens
          ExecSql('DELETE FROM PED_IT01  '+
                  'WHERE PED_CODIGO = '+ QuotedStr(EdPedidoNumero.Text)+
                  ConcatSe(' and ', DBInicio.ExclusivoSql('PEDIDOS')));

          ExecSql('DELETE from PED0000 ' +
                  'WHERE PED_CODIGO = '+ QuotedStr(EdPedidoNumero.Text)+
                  ConcatSe(' and ', DBInicio.ExclusivoSql('PEDIDOS')));

        end ;

         if agrupado then
         begin
           dbInicio.ExecSql('UPDATE PED0000                       '+
                   ' SET PED_CODIGO_AGRUPADO = NULL , PED_OBSERVACAO = NULL '+
                   ' , PED_SITUACAO = ''F'' '+
                   ' WHERE PED_CODIGO IN (SELECT  PED_CODIGO_ORIGEM FROM PED_IT01 WHERE PED_CODIGO = '+QuotedStr(EdPedidoNumero.Text)+
                                         ConcatSe(' and ',DBInicio.ExclusivoSql('PEDIDOS'))+  ')'
                   + ConcatSe(' and ',DBInicio.ExclusivoSql('PEDIDOS'))

                   );
            uteis.aviso( 'Pedido '+EdPedidoNumero.Text+' cancelado o agrupamento !' );
         end
         else
         begin
           dbInicio.ExecSql('UPDATE PED0000                       '+
                   ' SET PED_SITUACAO = ''C'' '+
                   ' WHERE PED_CODIGO  = '+QuotedStr(EdPedidoNumero.Text)+
                      ConcatSe(' and ',DBInicio.ExclusivoSql('PEDIDOS'))  );

            if not SqlCdsPedidoORC_CODIGO.IsNull and  (SqlCdsPedidoORC_CODIGO.AsInteger > 0 ) then
              ExecSql(' UPDATE ORCAMENTO_PROD SET ORC_SITUACAO = ''E''  WHERE ORC_CODIGO = '+IntToStr(SqlCdsPedidoORC_CODIGO.AsInteger));

            uteis.aviso( 'Pedido '+EdPedidoNumero.Text+' cancelado !!!' );
         end;

        LimparCampos;
        HabilitaDesabilitaEdicao( False );

    end;

  finally
    if not orcamento then
      FreeAndnil(FrmPedidoCancelemento);

  end;

end;

procedure TFrmPedido.PedidoNormal1Click(Sender: tObject);
begin
   ImprimePedido(true,'');
end;

procedure TFrmPedido.PedidoPPAC1Click(Sender: TObject);
begin
  inherited;
  ImprimePedido(true, 'PPAC');
end;

procedure TFrmPedido.PedidoPPACComposto1Click(Sender: TObject);
begin
  inherited;
  ImprimePedido(false, 'PPAC');
end;

procedure TFrmPedido.PedidoPPACSimples1Click(Sender: TObject);
begin
  inherited;
  ImprimePedido(true, 'PPACSI');
end;

procedure TFrmPedido.PedidoPPACSimples2Click(Sender: TObject);
begin
  inherited;
  ImprimePedido(false, 'PPACSI');
end;

procedure TFrmPedido.PedidosemValores1Click(Sender: tObject);
begin
   ImprimePedido(true,'SV');
end;

procedure TFrmPedido.PmuItemPedidoPopup(Sender: TObject);
var
bNcm: boolean;
begin
  inherited;
  bncm :=  (DBInicio.empresa.bPMT_NCM_UND_ITEM_PROV) and (DBInicio.empresa.sReferenciaProvisoriaOrcamento = SqlCdsPedidoItemPRD_REFER.AsString) ;
  miAdicionarNCM.Visible := bncm  and  not SqlCdsPedidoItem.IsEmpty;
  miAdicionarUnd1.Visible := bncm and  not SqlCdsPedidoItem.IsEmpty;
  miAdicionarcodigooriginal.Visible := dbinicio.empresa.bPMT_HABILITAR_CODORIGINAL and  not SqlCdsPedidoItem.IsEmpty;
  miAdicionarVariosCodigos.Visible := NOT DBInicio.Empresa.bPMT_HABILITAR_CODORIGINAL and  not SqlCdsPedidoItem.IsEmpty;
  miCodigoFabriante.Visible  := (dbinicio.empresa.bPMT_HABILITAR_CODORIGINAL or DBInicio.Empresa.wPMT_UTILIZA_CODIGO_ORIG_VD)  and  not SqlCdsPedidoItem.IsEmpty;
  miAlterarPeso.Visible := dbInicio.Empresa.PMT_PEDIDO_IND_PLASTICA and (SqlCdsPedidoItemPRD_UND.AsString = 'MIL') and (pos('FATURADO', EdSituacao.Text) > 0 )
end;

procedure TFrmPedido.qROrdemServicoCalcFields(DataSet: TDataSet);
begin
  inherited;
   qROrdemServicoOPR_TEMPOATRASO.asinteger := minutesbetween( qROrdemServicoOPR_DTENTREGA.AsDateTime,qROrdemServicoOPR_CONCLUSAO.AsDateTime);
end;

procedure TFrmPedido.SpeedButton1Click(Sender: tObject);
begin
  try
    if SqlCdsPedido.Active then
      if (BuscaUmDadoSqlAsInteger( 'SELECT OPR_CODIGO FROM ORDEMPRODUCAO ' +
                                ' WHERE PED_CODIGO = '+  QuotedStr(SqlCdsPedidoPED_CODIGO.AsString) +
                                iif(dbInicio.Exclusivo('ORDEMPRODUCAO'), ' AND EMP_CODIGO = '+qStr(DBInicio.Empresa.EMP_CODIGO), '') +
                                '  AND OPR_STATUS <> '+ QuotedStr('C') )>1) then
      begin
        uteis.aviso('Ordem de produção já gerada. Não pode inserir item.');
        Exit;
      end;

    if (SpeedButton1.Tag = 1)  then
    begin
      if FrmPedidoItem = nil then
        FrmPedidoItem := TFrmPedidoItem.Create(nil);
      try
          FrmPedidoItem.Pesquisa := True;
          FrmPedidoItem.sTipo := 'I';
          FrmPedidoItem.ShowModal;
          PanelAguarde.Visible := True;
          Sleep(500); // essencial para que dê tempo de processar todas as mensagens e não dar erro quando fechar o form com ESC
          EsvaziaBuffer;
          Application.ProcessMessages;
          if DbGradeItemPedido = nil then
            abort;
          DbGradeItemPedido.SetFocus;
      finally
        FrmPedidoItem.Close;
        PanelAguarde.Visible := False;
      end;

    end
    else
    if (SpeedButton1.Tag = 0) or (TComponent(Sender).Name = 'AdicionaItem1') then
    begin
      WDiretivaKit := 0;
      if not SqlCdsPedidoItem.IsEmpty  and  (SqlCdsPedidoItempti_sigla.Value = 'KT') and (ActiveControl.Name <> 'SpeedButton1') then
         WDiretivaKit := SqlCdsPedidoItemID_DIRETIVAS.AsInteger;
      bRecalculaSTGeral := true;
      if btnGravar.Enabled then
        GravaPedido;
      if AdicionaItem then
      begin
        bRecalculaSTGeral := True;
        RecalculaSTItem;
        CalculaDifal;
        if not btnGravar.Enabled then
          CalcutaTotalItens;
      end;

    end;

  Except on e:Exception do
    // frmPedido := nil;
  end;

end;

procedure TFrmPedido.EdPedidoNumeroChange(Sender: TObject);
begin
  inherited;
//  if EdPedidoNumero.Text <> '' then
//  begin
//    OpenAux3('SELECT ped_codigo FROM PED0000  '+
//             ' WHERE PED_CODIGO = '+ EdPedidoNumero.Text);
//
//    IF not qAux3.FieldByName('PED_CODIGO').ISNULL then
//      GeraException('Número do pedido já existe.');
//
//  end;

end;

procedure TFrmPedido.EdPedidoNumeroExit(Sender: tObject);
begin
   EdPedidoNumero.Text := StrZero(EdPedidoNumero.Text,6);
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

procedure TFrmPedido.NotasIndustrializacaoShow(Sender: TObject);
var
  enfNumero: string;
begin
  inherited;
  if edPedidoNumero.Text = '' then
    exit;
  qNotaSaida.Close;
  cdsNotaSaida.Close;
  qNotaSaida.SQL.Clear;
  qNotaSaida.SQL.Text :=
    'SELECT nf.NF_NOTANUMBER, nf.NF_EMISSAO, nf.NF_SAIDA, nf.NF_HORASAIDA, nit.NTP_CFOP, nf.NF_TOT_PROD, nf.NF_TOT_NOTA' +
    ' FROM NF0001 nf ' +
    '  JOIN NF_IT01 nit ON(nit.PED_CODIGO = nf.PED_CODIGO) ' +
    ' JOIN REF_NFE_IND ni ON (nf.NF_NOTANUMBER = ni.NF_NOTANUMBER) ' +
    ' WHERE nf.PED_CODIGO = ' + QuotedStr(edPedidoNumero.Text);
  qNotaSaida.Open;
  cdsNotaSaida.Open;

  enfNumero := BuscaUmDadoSqlAsString('SELECT ENF_NOTANUMBER FROM REF_NFE_IND WHERE NF_NOTANUMBER = ' + QuotedStr(qNotaSaida.FieldByName('NF_NOTANUMBER').AsString));

  qNotaEntrada.Close;
  cdsNotaEntrada.Close;
  qNotaEntrada.SQL.Clear;
  qNotaEntrada.SQL.Text :=
  'SELECT enf.ENF_NOTANUMBER, enf.ENF_EMISSAO, enf.ENF_ENTRADA, nit.ENF_CFOP, enf.ENF_TOT_PROD, enf.ENF_TOT_NOTA ' +
  ' FROM ENF0001 enf ' +
  '  JOIN ENF_IT01 nit ON(nit.ENF_IT_NOTANUMBER = enf.ENF_NOTANUMBER ) ' +
  '  JOIN REF_NFE_IND ni ON (enf.ENF_NOTANUMBER = ni.ENF_NOTANUMBER) ' +
  ' WHERE enf.ENF_NOTANUMBER = ' + QuotedStr(enfNumero);

  qNotaEntrada.Open;
  cdsNotaEntrada.Open;


end;

Function TFrmPedido.NumeracaoRepetida: Boolean;
var vId : Integer;
    vSql : string ;
begin
     if (dbInicio.GetParametroSistema('PMT_NUMER_PEDIDO') <> 'A') then // numeração manual
     begin
          vSql := 'select cast(count(*) as integer) '+
                  'from ped_cntnum a '+
                  //'join ped0000 b on b.emp_codigo = a.emp_codigo and a.ped_codigo = b.ped_codigo and b.id_pedido=a.id_pedido '+
                  'where a.emp_codigo='+qStr(DBInicio.Empresa.EMP_CODIGO)+
                  ' and a.ped_codigo = '+qStr(EdPedidoNumero.Text)+
                  ' and a.id_pedido<>'+inttostr( vIdPedido ) ;
          result := DBInicio.BuscaUmDadoSqlAsInteger( vSql ) > 0;
          if result then
          begin
               // testar se o pedido já foi salvo
               vSql := 'select cast(count(*) as integer) '+
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

procedure TFrmPedido.CdSPedidoDIBeforeEdit(DataSet: TDataSet);
begin
   if (CdSPedidoDI.IsEmpty) then
      begin
         CdSPedidoDI.Insert;
      end;
end;
procedure TFrmPedido.cdsProdutosaFaturarAfterScroll(DataSet: TDataSet);
begin
  inherited;
   BuscapedidosReservas(cdsProdutosaFaturarPRD_REFER.AsString);
   AtualizaSaldos;
end;

procedure TFrmPedido.chkCorridosClick(Sender: TObject);
begin
  inherited;
  if EdOrsDiaEntrega.AsInteger>0 then
  begin
    DteEntrega.Date := Verificadiadata(DteEntrada.Date,EdOrsDiaEntrega.AsInteger,chkCorridos.Checked);
//    EntregaHoras.Text := '00:00';
  end;
end;

procedure TFrmPedido.EdNumeroPedidoClienteExit(Sender: tObject);
var
  texto: string;
begin

  if DBInicio.GetParametroSistema('PMT_PEDIDO_IND_PLASTICA') = 'S' then
    texto := 'Pedido Nº:'
  else
    texto := 'Ordem do Cliente Nº:';

  if (Trim(EdNumeroPedidoCliente.Text) <> '') then
  begin
     MemoMensagemAdicionalNotaFiscal.Text := StringReplace(MemoMensagemAdicionalNotaFiscal.Text,texto+Trim(sPedidoClienteAnterior),'',[rfIgnoreCase,rfReplaceAll]);
     MemoMensagemAdicionalNotaFiscal.Text := texto+Trim(EdNumeroPedidoCliente.Text)+' '+MemoMensagemAdicionalNotaFiscal.Text;
     if (Trim(EdNumeroPedidoCliente.Text) = '') then
        MemoMensagemAdicionalNotaFiscal.Text := StringReplace(MemoMensagemAdicionalNotaFiscal.Text,texto,'',[rfIgnoreCase,rfReplaceAll]);
     MemoMensagemAdicionalNotaFiscal.Text := StringReplace(MemoMensagemAdicionalNotaFiscal.Text,'  ',' ',[rfIgnoreCase,rfReplaceAll]);
  end;
end;
procedure TFrmPedido.EditProdReservaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13  then
    BitPesqReservaProd.Click;

end;

procedure TFrmPedido.EdNumeroPedidoClienteEnter(Sender: tObject);
begin
   sPedidoClienteAnterior := EdNumeroPedidoCliente.Text;
end;

procedure TFrmPedido.Oramento1Click(Sender: tObject);
begin
   ImprimePedido(true,'OR');
end;
procedure TFrmPedido.Oramentocabealhoresumido1Click(Sender: TObject);
begin
  inherited;
  ImprimePedido(true,'ORResumido');
end;

procedure TFrmPedido.EdPedidoTipoChange(Sender: tObject);
begin
   Caption := EdPedidoTipo.Text;
   MontaFiltroCfop;
end;

procedure TFrmPedido.Image1Click(Sender: tObject);
begin
  if (SqlCdsTipoPedidoOPV_ORCAMENTO.AsString = 'S') then
  begin
    EdClienteCodigo.Clear;
    edCliente.idRetorno:='';
    GBInformacoesOrcamento.Visible := True;
    TabSheet5.Caption := 'Informações';
    GBInformacoesOrcamento.BringToFront;
    GBInformacoesCliente.Visible := False;
    EdOrsCliente.SetFocus;
    if DBInicio.Empresa.PMT_VINCULAR_VENDEDOR AND (DBInicio.Empresa.fCODIGO_REPRES <> '') then
      edVendedor.idRetorno := DBInicio.Empresa.fCODIGO_REPRES;
  end
  else
    uteis.aviso(Pchar('Este '+EdPedidoTipo.Text+' não é do tipo orçamento'));
end;

procedure TFrmPedido.Image2Click(Sender: tObject);
begin
   EdOrsCliente.Clear;
   GBInformacoesCliente.Visible := True;
   GBInformacoesOrcamento.Visible := False;
   GBInformacoesCliente.BringToFront;
   TabSheet5.Caption := 'Informações';
end;

procedure TFrmPedido.SpeedButton2Click(Sender: tObject);
begin
     FrmCadastroObservacao := TFrmCadastroObservacao.Create(Application);
   try
      FrmCadastroObservacao.FormStyle := fsNormal;
      FrmCadastroObservacao.Visible := false;
      FrmCadastroObservacao.memo := MemoObservacaoPedido;
      FrmCadastroObservacao.ShowModal;
   finally
      FrmCadastroObservacao.Destroy;
      FrmCadastroObservacao :=Nil;
   end;
end;
procedure TFrmPedido.SpeedButton3Click(Sender: tObject);
begin
   FrmCadastroObservacao := TFrmCadastroObservacao.Create(Application);
   try
      FrmCadastroObservacao.memo := MemoMensagemAdicionalNotaFiscal;
      FrmCadastroObservacao.FormStyle := fsNormal;
      FrmCadastroObservacao.Visible := false;
      FrmCadastroObservacao.ShowModal;
   finally
      FrmCadastroObservacao :=Nil;
   end;
end;
procedure TFrmPedido.EdOrsDiaEntregaExit(Sender: tObject);
begin
  DteEntrega.Date := Verificadiadata(DteEntrada.Date,EdOrsDiaEntrega.AsInteger,chkCorridos.Checked);
end;
procedure TFrmPedido.DteEntregaExit(Sender: tObject);
begin
   if (DteEntrega.Text = '  /  /    ') then
   begin
      DteEntrega.Date := DteEntrada.Date;
      EntregaHoras.Text := '00:00';
   end;
   if not chkCorridos.Checked then
     EdOrsDiaEntrega.AsInteger := Dias_Uteis(DteEntrada.Date,DteEntrega.Date)
   else
     EdOrsDiaEntrega.AsInteger := DaysBetween( DteEntrada.Date,DteEntrega.Date)
end;
procedure TFrmPedido.DteEntradaExit(Sender: tObject);
begin
   if (DteEntrada.Text = '  /  /    ') then
      DteEntrada.Date := Now;
   if EdOrsDiaEntrega.AsInteger >=0 then
   begin
     DteEntrega.Date := Verificadiadata(DteEntrada.Date,EdOrsDiaEntrega.AsInteger,chkCorridos.Checked);
     EntregaHoras.Text := '00:00';
   end;
end;
procedure TFrmPedido.EspelhodaNotaFiscal1Click(Sender: tObject);
begin
   ImprimePedido(true,'ESPELHO');
end;

function TFrmPedido.ValidaPedido: boolean;
var sMsg :string;
begin
     //Cliente Orçamento
     result := True;
     if ((EdClienteCodigo.Text = '') and (EdOrsCliente.Text = '')) then
     begin
          uteis.aviso('Informe o Cliente');

          if (GBInformacoesOrcamento.Visible) then
          begin
            if EdOrsCliente.CanFocus then
             EdOrsCliente.SetFocus
          end
          else
          begin
            if edcliente.CanFocus then
              edCliente.SetFocus;
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
          if edcliente.CanFocus then
            edCliente.SetFocus;

          Result := False;
     end
     else    //Numero do Pedido
     if (Trim(EdPedidoNumero.Text) = '') then
     begin
          uteis.aviso('Informe o Número do Pedido');
          if EdPedidoNumero.CanFocus then
          begin
            EdPedidoNumero.SetFocus;
            EdPedidoNumero.SelectAll;
          end;
          Result := False;
     end
     else    //Data de Entrada
     if (DteEntrada.Text = '  /  /    ') then
     begin
          uteis.aviso('Informe a Data de Entrada');
          if DteEntrada.CanFocus then
          begin
             DteEntrada.SetFocus;
            DteEntrada.SelectAll;
          end;
          Result := False;
     end
     else    //Prazo
     if (EdPrazoCodigo.Text = '') then
     begin
          uteis.aviso('Informe o Prazo');
          if EdPrazoCodigo.CanFocus then
          begin
            edPrazoCodigo.SetFocus;
            EdPrazoCodigo.SelectAll;
          end;
          Result := False;
     end
     else    //Vendedor
     if (EdVendedorCodigo.Text = '') then
     begin
          uteis.aviso('Informe o Vendedor');
          if EdVendedorCodigo.CanFocus then
          begin
             EdVendedorCodigo.SetFocus;
             EdVendedorCodigo.SelectAll;
          end;
          Result := False;
     end
     else    //Centro Custo
     if (edCCusto.idRetorno = '') and (dbInicio.Empresa.bCentroCustoObrigatorio) then
     begin
          uteis.aviso('Informe o Centro de Custo');
          if edCCusto.CanFocus then
          begin
             edCCusto.SetFocus;
             edCCusto.SelectAll;
          end;
          Result := False;
     end
     else
     if (EdClienteCodigo.Text = '') AND (DBInicio.GetParametroSistema('PMT_VENDA_CLI_SEM_CAD_OBRIG') = 'S') then
     begin
         if (EdOrsCliente.Text = '') and EdOrsCliente.CanFocus then
         begin
            uteis.Aviso( 'O Cliente não foi preenchido.');
            EdOrsCliente.SetFocus;
            Result := False;
         end
         else
         if (cbbClienteEstado.Text = '') and cbbClienteEstado.CanFocus then
         begin
            uteis.Aviso( 'O Estado do cliente não foi preenchido.');
            cbbClienteEstado.SetFocus;
            Result := False;
         end
         else
         if (cbOrsConsFinal.ItemIndex = -1) and cbOrsConsFinal.CanFocus then
         begin
            uteis.Aviso( 'Não foi informado se o cliente é consumidor final.');
            cbOrsConsFinal.SetFocus;
            Result := False;
         end
         else
         if (cbOrsCliRegimeTributario.ItemIndex = -1) and cbOrsCliRegimeTributario.CanFocus then
         begin
            uteis.Aviso( 'Não foi informado o regime tributário do cliente.');
            cbOrsCliRegimeTributario.SetFocus;
            Result := False;
         end
         else
         if (rgOrsCliConsuProprio.ItemIndex = -1) and rgOrsCliConsuProprio.CanFocus then
         begin
            uteis.Aviso( 'Não foi informado se é para Revenda ou Consumo Próprio.');
            rgOrsCliConsuProprio.SetFocus;
            Result := False;
         end;

     end;
end;

procedure TFrmPedido.VendedorAtivoValidate(Sender: TObject; ValueToValidate: Variant; var Valid: Boolean);
begin
  inherited;
 if (EdVendedorCodigo.Text <> '') then
   valid := BuscaUmDadoSqlAsString(SQLDEF('REPRESENTANTES','Select REP_SITUACAO from REP0000','Where REP_CODIGO = '+QuotedStr(EdVendedorCodigo.Text)+'','','')) = 'A';
end;

procedure TFrmPedido.VerificaComissaoVendedor;
begin
   //Busca Informações dos Parâmetros
//   dbInicio.qAux.Close;
//   dbInicio.qAux.sql.text :=SqlDef('Parametros','Select PMT_ATULIZA_ESTOQUE,PMT_TUPPEDIDO,PMT_COMIS_GRP,PMT_VARIACOES,PMT_NUMER_PEDIDO,PMT_COMIS_REP,PMT_COMIS_SUP,PMT_COMIS_GER,PMT_PEDITEMDESC,
//   PMT_ITENS_PEDIDO,PMT_KARDEX_PEDIDO,PMT_QTDE_DEC_PED FROM PRMT0001 ','','EMP_CODIGO','');
//   dbInicio.qAux.Open;

   if dbInicio.EMPRESA.pComissaoPadrao then
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
         CurComissaoVendedor.Value := dbInicio.Empresa.pComissaoRepresentantePadrao;
         rComissaoVendedor := dbInicio.Empresa.pComissaoRepresentantePadrao;
         CurComissaoGerente.Value := dbInicio.Empresa.pComissaoGerentePadrao;
         CurComissaoSupervisor.Value := dbInicio.Empresa.pComissaoSupervisorPadrao;
   end
   else
   begin
         CurComissaoVendedor.ReadOnly := False;
         CurComissaoVendedor.TabStop := True;
         CurComissaoVendedor.Color := clWhite;
         if dbInicio.Empresa.pComissaoItem OR dbInicio.Empresa.pComissaoEscala OR DBInicio.Empresa.pComissaoSimples then
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

   if not ((dbInicio.Empresa.pComissaoItem) or (dbInicio.Empresa.pComissaoEscala) OR DBInicio.Empresa.pComissaoSimples ) then
      if (CurComissaoVendedor.Value = 0) then
      begin    
         dbInicio.qAux.Close;
         dbInicio.qAux.sql.text :=SqlDef('TABELAS','Select REP_COMISSAO FROM REP0000 ','WHERE REP_CODIGO = '+QuotedStr(EdVendedorCodigo.Text),'EMP_CODIGO','');
         dbInicio.qAux.Open;
         if (not dbInicio.qAux.IsEmpty) then
         begin
               //if (dbInicio.qAux.FieldByName('REP_COMISSAO').AsFloat > 0) then
               //   begin
                     CurComissaoVendedor.Value := dbInicio.qAux.FieldByName('REP_COMISSAO').AsFloat;
                     rComissaoVendedor := dbInicio.qAux.FieldByName('REP_COMISSAO').AsFloat;
               //   end;
         end;
         dbInicio.qAux.Close;
      end;
end;

procedure TFrmPedido.MemoMensagemAdicionalNotaFiscalEnter(Sender: TObject);
begin
  inherited;
  ACBrEnterTab1.EnterAsTab := False;
end;

procedure TFrmPedido.MemoMensagemAdicionalNotaFiscalExit(Sender: TObject);
begin
  inherited;
   ACBrEnterTab1.EnterAsTab := True;
end;

procedure TFrmPedido.MemoObservacaoPedidoEnter(Sender: TObject);
begin
  inherited;
  ACBrEnterTab1.EnterAsTab := False;
end;

procedure TFrmPedido.MemoObservacaoPedidoExit(Sender: TObject);
begin
  inherited;
  ACBrEnterTab1.EnterAsTab := True;
end;

procedure TFrmPedido.MenuItem1Click(Sender: tObject);
begin
   ImprimePedido(False,'');
end;
procedure TFrmPedido.MenuItem2Click(Sender: tObject);
begin
   ImprimePedido(False,'SV');
end;
procedure TFrmPedido.MenuItem3Click(Sender: tObject);
begin
   ImprimePedido(False,'OR');
end;
procedure TFrmPedido.MenuItem4Click(Sender: tObject);
begin
   ImprimePedido(False,'ESPELHO');
end;
procedure TFrmPedido.miAdicionarcodigooriginalClick(Sender: TObject);
var codorig :string;
 id :integer;
 ini,fim :integer;
 desc: string;
 tamDesc, tamCod : integer;
begin
  inherited;
  codorig := InputBox('Código Original do produto','Código do cliente:',SqlCdsPedidoItemPRDCO_CODIGO_ORIGINAL.AsString);
  desc :=  SqlCdsPedidoItemDESCRICAO.AsString;

  //tamanhos

  tamCod := length (codorig);
 //tamanho máximo é 100 , tirando 2 colcheltes e codigo original
 tamDesc := 100-2-  tamCod;
 if tamDesc > length(desc) then
     tamDesc := Length(desc);
  if codorig <> '' then
  begin
    if not (SqlCdsPedidoItem.State in dsEditModes) then
      SqlCdsPedidoItem.Edit;
    if DBInicio.Empresa.bPMT_HABILITAR_CODORIGINAL then
    begin
      if SqlCdsPedidoItemPRDCO_CODIGO_ORIGINAL.AsString = '' then
        desc := copy( SqlCdsPedidoItemDESCRICAO.AsString,1,tamDesc) + '['+ codorig  +']'
      else
      begin
        ini := Pos('[',SqlCdsPedidoItemDESCRICAO.AsString);
        fim := pos(']',SqlCdsPedidoItemDESCRICAO.AsString);
        if (ini > 0) and (fim > 0)  then
        begin
          desc:= copy(SqlCdsPedidoItemDESCRICAO.AsString,1,ini-1);
          tamDesc :=  Length(desc);
          if tamDesc > (100-2-tamCod) then
             desc := Copy(desc,1,100-2-tamCod);

          desc:= desc + '['+ codorig  +']'
        end
        else
          desc:=  SqlCdsPedidoItemDESCRICAO.AsString + '['+ codorig  +']'
      end;
    end;
    SqlCdsPedidoItemDESCRICAO.AsString:= desc;
    SqlCdsPedidoItemPRDCO_CODIGO_ORIGINAL.AsString := codorig;
    SqlCdsPedidoItem.Post;


    ExecSql(' UPDATE PED_IT01 '+
            ' SET PRDCO_CODIGO_ORIGINAL = '+ QuotedStr(codorig)+
            ' , PRF_PRDDESCRI  = '+ QuotedStr(desc) +
            ' WHERE ped_codigo ='+QuotedStr(EdPedidoNumero.Text) +
            ' and prf_registro = '+IntToStr(SqlCdsPedidoItemPRF_REGISTRO.AsInteger) );
    OpenAux(' SELECT PRDCO_REGISTRO FROM PRD_CODIGOORIGINAL '+
            ' WHERE PRD_CODIGO = '+ QuotedStr(SqlCdsPedidoItemPRD_CODIGO.AsString)+
            ' AND CLI_CODIGO =   '+ QuotedStr(EdClienteCodigo.Text));
    if qAux.FieldByName('PRDCO_REGISTRO').AsInteger = 0  then
    begin
      id := dbInicio.GetNextSequence('gen_prd_codigooriginal_id');
      desc:=BuscaUmDadoSqlAsString('SELECT PRD_DESCRI FROM PRD0000 WHERE PRD_CODIGO = '+QuotedStr(SqlCdsPedidoItemPRD_CODIGO.AsString)  );
      desc:= copy(desc,1,60);
      ExecSql('INSERT INTO PRD_CODIGOORIGINAL (PRDCO_REGISTRO, PRD_CODIGO, PRDCO_CODIGO_ORIGINAL, CLI_CODIGO,PRDCO_DESCRICAO) '+
              ' VALUES ('+ inttostr(id) + ','+
              QuotedStr(SqlCdsPedidoItemPRD_CODIGO.AsString) + ','+
              QuotedStr(codorig)+','+
              QuotedStr(EdClienteCodigo.Text) + ','+
              QuotedStr(desc)+ ')  ');
    end
   else
     ExecSql(' update  PRD_CODIGOORIGINAL '+
             ' set  PRDCO_CODIGO_ORIGINAL = '+ QuotedStr(codorig)+
             ' WHERE PRD_CODIGO = '+ QuotedStr(SqlCdsPedidoItemPRD_CODIGO.AsString)+
             ' AND CLI_CODIGO =   '+ QuotedStr(EdClienteCodigo.Text));

  end;
end;

procedure TFrmPedido.miAdicionarNCMClick(Sender: TObject);
var vncm: string;
begin
  inherited;
  vncm := InputBox('NCM no item provisório','Classif.Fiscal / NCM:',SqlCdsPedidoItemNCM_CODIGO.AsString);
  if not (SqlCdsPedidoItem.State in dsEditModes) then
    SqlCdsPedidoItem.Edit;
  SqlCdsPedidoItemNCM_CODIGO.AsString := vncm;
  SqlCdsPedidoItem.Post;
  ExecSql(' UPDATE PED_IT01 '+
          ' SET NCM_CODIGO = '+ QuotedStr(vncm) + ' where ped_codigo ='+QuotedStr(EdPedidoNumero.Text) +
          ' and prf_registro = '+IntToStr(SqlCdsPedidoItemPRF_REGISTRO.AsInteger) );
end;

procedure TFrmPedido.miAdicionarUnd1Click(Sender: TObject);
var vund: string;
begin
  inherited;
  vund := InputBox('Unidade de medida no item provisório','Unidade medida:',SqlCdsPedidoItemPRD_UND.AsString);
  if not (SqlCdsPedidoItem.State in dsEditModes) then
    SqlCdsPedidoItem.Edit;
  SqlCdsPedidoItemPRD_UND.AsString := vund;
  SqlCdsPedidoItem.Post;
  ExecSql(' UPDATE PED_IT01 '+
          ' SET PRD_UND = '+ QuotedStr(vund) + ' where ped_codigo ='+QuotedStr(EdPedidoNumero.Text) +
          ' and prf_registro = '+IntToStr(SqlCdsPedidoItemPRF_REGISTRO.AsInteger) );
end;

procedure TFrmPedido.miAdicionarVariosCodigosClick(Sender: TObject);
begin
  inherited;
  if not assigned(frmPesqCodOriginal) then
  begin
    frmPesqCodOriginal := TfrmPesqCodOriginal.Create(Application);

    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      frmPesqCodOriginal.Top := 0;

  end;
  frmPesqCodOriginal.Pedido := EdPedidoNumero.Text;
  frmPesqCodOriginal.Produto := SqlCdsPedidoItemPRD_CODIGO.AsString;
  frmPesqCodOriginal.Cliente := edCliente.CdS.FieldByName('CLI_CODIGO').AsString;
  frmPesqCodOriginal.Show;
end;

procedure TFrmPedido.miCodigoFabrianteClick(Sender: TObject);
begin
  inherited;
  if not assigned(frmCodOriginalFabricante) then
  begin
    frmCodOriginalFabricante := TfrmCodOriginalFabricante.Create(Application);

    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      frmCodOriginalFabricante.Top := 0;

  end;

  frmCodOriginalFabricante.Produto := SqlCdsPedidoItemPRD_CODIGO.AsString;
  try
    frmCodOriginalFabricante.ShowModal;
    if frmCodOriginalFabricante.IDRetorno <> '' then
    begin
      ExecSql(' UPDATE PED_IT01 '+
              ' SET PRDCO_CODIGO_ORIGINAL = '+ QuotedStr(frmCodOriginalFabricante.cdsBuscoPRDCO_CODIGO_ORIGINAL.AsString)+
             iif(frmCodOriginalFabricante.cdsBuscoPRDCO_DESCRICAO.AsString = '','',  ' , PRF_PRDDESCRI  = '+ QuotedStr(frmCodOriginalFabricante.cdsBuscoPRDCO_DESCRICAO.AsString)) +
              ' WHERE prf_registro = '+IntToStr(SqlCdsPedidoItemPRF_REGISTRO.AsInteger) );
      if not (SqlCdsPedidoItem.State in dsEditModes) then
        SqlCdsPedidoItem.Edit;
      if frmCodOriginalFabricante.cdsBuscoPRDCO_DESCRICAO.AsString <> '' then
        SqlCdsPedidoItemDESCRICAO.AsString:= frmCodOriginalFabricante.cdsBuscoPRDCO_DESCRICAO.AsString;
      SqlCdsPedidoItemPRDCO_CODIGO_ORIGINAL.AsString := frmCodOriginalFabricante.cdsBuscoPRDCO_CODIGO_ORIGINAL.AsString;
      SqlCdsPedidoItem.Post;
    end;
  finally
    frmCodOriginalFabricante.Free;
    frmCodOriginalFabricante := nil;
  end;



end;

procedure TFrmPedido.miDefinirPrazoEntregaClick(Sender: TObject);
var dias: integer;
begin
  inherited;
  if (MatchStr(SqlCdsPedidoPED_SITUACAO.AsString ,['F','P'] ) )  and (SqlCdsPedidoPed_faturar_liberado.AsString = 'S') and ( DBInicio.empresa.wTipoLiberacaoFaturamento = 'M') then
  uteis.aviso('Pedido já liberado para faturamento')
  else
  if not SqlCdsPedido.IsEmpty then
  begin
   dias:=  StrToIntDef(InputBox('Prazo de entrega','Dias','0'),0);
   ExecSql( ' update ped_it01 set PRF_PRAZO_DIAS = '+inttostr(dias)
   + 'where prf_registro = ' + IntToStr(SqlCdsPedidoItemPRF_REGISTRO.AsInteger) );
   SqlCdsPedidoItem.Refresh;
  end;

end;

procedure TFrmPedido.miPedidoCabResumidoClick(Sender: TObject);
begin
  inherited;
  ImprimePedido(true, 'PRZResumido'); // PEDIDOS COM PRAZOS


end;

procedure TFrmPedido.miPedidocomprazosClick(Sender: TObject);
begin
  inherited;
  ImprimePedido(true, 'PRZ'); // PEDIDOS COM PRAZOS
end;

procedure TFrmPedido.miPedidoGradeClick(Sender: TObject);
begin
  inherited;
   ImprimePedido(true,'GRD');
end;

procedure TFrmPedido.miPedidoKitSeparadoClick(Sender: TObject);
begin
  inherited;
  ImprimePedido(True, 'PEDKIT');
end;

procedure TFrmPedido.miPedidoPesoGradeClick(Sender: TObject);
begin
  inherited;
  ImprimePedido(True, 'PESOGRADE');
end;

procedure TFrmPedido.miRomaneiockitseparadoClick(Sender: TObject);
begin
  inherited;
   ImprimePedido(True, 'ROMKIT');
end;

procedure TFrmPedido.miRomaneioProducaoClick(Sender: TObject);
begin
  inherited;
   ImprimePedido(True, 'ROMPRD');
end;

procedure TFrmPedido.JvArrowButton1Click(Sender: tObject);
begin
   if (SqlCdsTipoPedidoOPV_ORCAMENTO.AsString = 'S') then
      ImprimePedido(False,'OR')
   else
      ImprimePedido(False,'');
end;

function TFrmPedido.LiberaSairPedido: Boolean;
begin
     Result := not BtnGravar.Enabled;
     if (BtnGravar.Enabled) then
        uteis.aviso('O Pedido não foi salvo!');
end;

procedure TFrmPedido.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  ApagaPedidoEmEdicao();
  Action := caFree;
  FrmPedido := nil;
end;

procedure TFrmPedido.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   if not (LiberaSairPedido) then
      CanClose := False
   else
   begin
      CanClose := True;
      RemoverInfoNumeracaoPedido;
   end;
   inherited;
end;

procedure TFrmPedido.AlterarComisso1Click(Sender: tObject);
begin
  AlterarComissao;
end;
procedure TFrmPedido.AlterarComissao;
var
  sComissao:String;

begin
   if (SqlCdsPedidoItem.IsEmpty) then
      uteis.aviso('Não existe Item para alterar a comissão')
   else
      sComissao := InputBox('Alterar Comissão','Comissão',SqlCdsPedidoItemPRF_ITEMCOMIS.AsString);
   if (Trim(sComissao) = '') then
      sComissao := '0,00';
   try

      dbInicio.qAux.Close;
      dbInicio.qAux.sql.text :='UPDATE PED_IT01 set PRF_ITEMCOMIS = '+QuotedStr(ValorAmericano(sComissao))+' WHERE PRF_REGISTRO = '+SqlCdsPedidoItemPRF_REGISTRO.AsString;
      dbInicio.qAux.Execsql;
      dbInicio.qAux.Close;
      CalcutaTotalItens;
      GravaPedido;
   except
      uteis.aviso('Valor Informado é inválido');
   end;
end;
procedure TFrmPedido.SpeedButton4Click(Sender: tObject);
begin
   if (dbInicio.Empresa.bReajusteVenda) then
      Reajuste
   else
      uteis.aviso('Sem permissão para realizar reajustes');
end;
procedure TFrmPedido.SpeedButton6Click(Sender: TObject);
begin
  inherited;
     FrmCadastroObservacao := TFrmCadastroObservacao.Create(Application);
   try
      FrmCadastroObservacao.FormStyle := fsNormal;
      FrmCadastroObservacao.Visible := false;
      FrmCadastroObservacao.memo := MemoObservacaoProducao;
      FrmCadastroObservacao.ShowModal;
   finally
      FrmCadastroObservacao.Destroy;
      FrmCadastroObservacao :=Nil;
   end;
end;

procedure TFrmPedido.Reajuste;
begin
     if (SqlCdsPedido.IsEmpty) then
         uteis.aviso('Adicione um pedido')
     else
     if (SqlCdsPedidoItem.IsEmpty) then
        uteis.aviso('O Pedido não contém itens')
     else
     if (MatchStr(SqlCdsPedidoPED_SITUACAO.AsString ,['F','P'] ) )  and (SqlCdsPedidoPed_faturar_liberado.AsString = 'S') and ( DBInicio.empresa.wTipoLiberacaoFaturamento = 'M') then
        uteis.aviso('Pedido já liberado para faturamento')
     else
     if (EdSituacao.Text = 'CANCELADO') then
         uteis.aviso('Esta Função somente poderá ser utilizada em pedidos não cancelados')
     else
     if (EdSituacao.Text <> 'À FATURAR') then
         uteis.aviso('Esta Função somente poderá ser utilizada em pedidos que não possuam faturamento')
     else
     if ValidaPedido then
     begin
         FrmPedidoReajuste := TFrmPedidoReajuste.Create(Application);
         try
            FrmPedidoReajuste.ShowModal;
         finally
                FreeAndNil( FrmPedidoReajuste );
         end;
         if bTipoPedidoCalculaST  then
             RecalculaSTItem;
         CalcutaTotalItens;
         GravaPedido;
     end;
end;


procedure TFrmPedido.edClienteButtonClick(Sender: tObject);
var tcr: tFrmPesquisaClientes;
begin
    edCliente.idRetorno := '';
    tcr:= tFrmPesquisaClientes.Create(self);
    try
        tcr.ShowModal;
        if tcr.modalresult = mrok then
           edCliente.idRetorno := tcr.IDRetorno;


    finally
         FreeAndNil(tcr);
    end;
end;

procedure TFrmPedido.edClienteClick(Sender: TObject);
begin
  inherited;
  edCliente.idRetorno := '';

end;

procedure TFrmPedido.BtnDuplicarClick(Sender: tObject);
begin
    if (LiberaSairPedido) then
       if (EdPedidoNumero.Text <> '') then
       begin
//         if (DBInicio.Empresa.wAtualizaEstoque = 'P') and (SqlCdsTipoPedidoOPV_ATESTOQUE.AsString = 'S')   then
//           raise Exception.Create('Tipo de pedido movimenta estoque portanto não é permitido copia do pedido.');

           if SqlCdsPedidoOPV_AGRUPADO.AsString = 'S' then
               GeraException('O pedido não pode ser copiado pois é um agrupamento de pedidos');
             FormPedidoDuplicar := TFormPedidoDuplicar.Create(Application);
             try
               if edCliente.idRetorno <> '' then
               Begin
                 FormPedidoDuplicar.Edt_Cod_Pedido.Text  := EdPedidoNumero.Text;
                 FormPedidoDuplicar.Edt_Nome_Pedido.Text := edCliente.CdS.FieldByName('CLI_RAZAO').AsString;
                 FormPedidoDuplicar.Edt_Cod_Cliente.Text  := edCliente.CdS.FieldByName('CLI_CODIGO').AsString;
                 FormPedidoDuplicar.edClienteDestino.Text := edCliente.CdS.FieldByName('CLI_CODIGO').AsString;
               End;
               FormPedidoDuplicar.ShowModal;
               if FormPedidoDuplicar.ModalResult=mrOk then
               begin
                  ApagaPedidoEmEdicao();
                  sPedidoBusca:=FormPedidoDuplicar.IDRetorno;
                  PedidoEmEdicao(sPedidoBusca)
               end;
             finally
                FreeAndNil(FormPedidoDuplicar);
             end;

             if (sPedidoBusca <> '') then
             begin
                   // BuscaPedido(sPedidoBusca);
                   BuscaPedidoItem(SqlCdsPedidoPED_CODIGO.AsString, false);
                   BuscaPedido(sPedidoBusca);
                   ReordenarItens(SqlCdsPedidoItem);
                   HabilitaDesabilitaEdicao(False);
             end;

       end
    else
           uteis.aviso('Nenhum Pedido Selecionado!');
   PedidoMinimo(EdPedidoNumero.Text);
end;

procedure TFrmPedido.DBEdit28Change(Sender: tObject);
begin
   btnGravarEndEntrega.Visible := False;
   btnEditarEndEntrega.Visible := False;
   if (DBEdit28.Text <> '') then
      begin
         btnEditarEndEntrega.Visible := True;
      end;
end;
procedure TFrmPedido.btnEditarEndEntregaClick(Sender: tObject);
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
procedure TFrmPedido.btnGravarEndEntregaClick(Sender: tObject);
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

procedure TFrmPedido.PageControl1Change(Sender: tObject);
begin
     sCodCliente := EdClienteCodigo.Text;
end;

procedure TFrmPedido.Panel16Click(Sender: TObject);
begin
  inherited;
  IndustrializacaoPorKit;
end;

procedure TFrmPedido.Panel3Click(Sender: TObject);
begin
  inherited;
  spRedimecionarItem.Click
end;

procedure TFrmPedido.Panel5Click(Sender: TObject);
begin
  inherited;
  if not Assigned(frmDemandaProducao) then
    frmDemandaProducao := TfrmDemandaProducao.Create(Application);
  frmDemandaProducao.Show;
end;

procedure TFrmPedido.Panel6Click(Sender: TObject);
begin
  inherited;
          if (dbInicio.GetParametroUsuario('USP_VISUALIZA_ANALISE_CREDITO_') = 'S') then
          begin
            FrmFinanceiroAnaliseCreditoCliente := TFrmFinanceiroAnaliseCreditoCliente.Create(Application);
            try
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

procedure TFrmPedido.Panel7Click(Sender: TObject);
begin
  inherited;
  RetornoIndustrializacao;
end;

procedure TFrmPedido.Panel8Click(Sender: TObject);
begin
  inherited;
  EnviarPedidoProducao;
end;

procedure TFrmPedido.pdescontoClick(Sender: TObject);
begin
  inherited;
  CbDescontoNF.Enabled :=  (dbInicio.Empresa.USP_ALTERA_DESCONTO_NOTA);
end;

procedure TFrmPedido.Pedidocomespao1Click(Sender: TObject);
begin
  inherited;
  ImprimePedido(true, 'ESPACO');
end;

procedure TFrmPedido.PedidocomGrade1Click(Sender: TObject);
begin
  inherited;
  ImprimePedido(true,'GRA');
end;

procedure TFrmPedido.PedidoComImagem1Click(Sender: tObject);
begin
   ImprimePedido(true,'IMG');
end;
procedure TFrmPedido.PedidoComImagem2Click(Sender: tObject);
begin
   ImprimePedido(False,'IMG');
end;
procedure TFrmPedido.PedidoComImagemCentro1Click(Sender: tObject);
begin
   ImprimePedido(true,'IMGC');
end;
procedure TFrmPedido.PedidoComImagemGrande1Click(Sender: tObject);
begin
   ImprimePedido(true,'IMGG');
end;

procedure TFrmPedido.OramentoImagem1Click(Sender: tObject);
begin
   ImprimePedido(True,'IMG');
end;

procedure TFrmPedido.OramentoImagemGrande1Click(Sender: tObject);
begin
   ImprimePedido(True,'IMGG');
end;
procedure TFrmPedido.OramentoImagem2Click(Sender: tObject);
begin
   ImprimePedido(False,'IMG');
end;
procedure TFrmPedido.OramentoImagemBig1Click(Sender: TObject);
begin
  inherited;
  ImprimePedido(True, 'IMGBIG');
end;

procedure TFrmPedido.OramentoImagemGrande2Click(Sender: tObject);
begin
    ImprimePedido(False,'IMGG');
end;

procedure TFrmPedido.Romaneio2Click(Sender: tObject);
begin
   ImprimePedido(True,'ROM');
end;
procedure TFrmPedido.Romaneio1Click(Sender: tObject);
begin
   ImprimePedido(False,'ROM');
end;

procedure TFrmPedido.PedidoComLinha1Click(Sender: tObject);
begin
   ImprimePedido(False,'LINHA');
end;

procedure TFrmPedido.PedidoComLinhadoProduto1Click(Sender: tObject);
begin
   ImprimePedido(True,'LINHA');
end;


function TFrmPedido.PedidoMinimo(pedido: string): Boolean;
var
  venda, orcamento, liberado : boolean;
  valor: double;
begin
  if not SqlCdsTipoPedido.Active then
    exit;
  btLiberaPedidoMinimo.Enabled := BtnGravar.Enabled;
  if (EdPrazoCodigo.Text = '') and (pedido <> '-1') then
  begin
     MessageDlg('Escolha um prazo de pagamento', mtWarning, [mbOK], 0);
     edPrazo.SetFocus;
     Exit;
  end;
  if SqlCdsTipoPedidoOPV_CODIGO.AsString = '' then
  begin
     MessageDlg('Tipo do Pedido não informado', mtWarning, [mbOK], 0);
     Exit;
  end;
  venda := BuscaUmDadoSqlAsString('SELECT OPV_VENDA FROM OPV0000 WHERE OPV_CODIGO = ' + SqlCdsTipoPedidoOPV_CODIGO.AsString ) = 'S';
  orcamento := BuscaUmDadoSqlAsString('SELECT OPV_ORCAMENTO FROM OPV0000 WHERE OPV_CODIGO = ' + SqlCdsTipoPedidoOPV_CODIGO.AsString  ) = 'S';
  valor := BuscaUmDadoSqlAsFloat('SELECT PCL_VALOR_MINIMO_VENDA FROM PCL0000 WHERE PCL_CODIGO = ' + QuotedStr(EdPrazoCodigo.Text)  );
  liberado := BuscaUmDadoSqlAsString('SELECT PED_PERMITE_VL_ABAIXO_PRAZO_MIN FROM PED0000 WHERE PED_CODIGO = ' + QuotedStr(pedido) ) = 'S';
  pnPedidoMinimo.Font.Color := clRed;
  if venda or orcamento then
  begin
    if valor > 0 then
    begin
      pnPedidoMinimo.Visible := True;
      pnPedidoMinimo.Caption := 'Valor mínimo para o prazo ' + edPrazo.Text + ' é de: R$ ' + FormatFloat('###,###,##0.00', valor);
      if (CurTotalPedido.Value < valor) and not liberado  then
      begin
        pnPedidoMinimo.Font.Color := clRed;
        Result := False;
      end
      else
      begin
        pnPedidoMinimo.Font.Color := clGreen;
        Result := True;
      end;
    end
    else
    begin
      pnPedidoMinimo.Visible := False;
      pnPedidoMinimo.Font.Color := clGreen;
      Result := True;
    end;
  end
  else
  begin
      pnPedidoMinimo.Visible := False;
      pnPedidoMinimo.Font.Color := clGreen;
      Result := True;
  end;

  BtnEmail.Enabled := pnPedidoMinimo.Font.Color = clGreen;
  BtnImprimir.Enabled  := pnPedidoMinimo.Font.Color = clGreen;
end;

procedure TFrmPedido.OramentoComLinhadoProduto1Click(Sender: tObject);
begin
    ImprimePedido(True,'ORCAMENTOLINHA');
end;

procedure TFrmPedido.OramentoComLinhadoProduto2Click(Sender: tObject);
begin
    ImprimePedido(False,'ORCAMENTOLINHA');
end;

procedure TFrmPedido.RecalculaSTItem;
var
   rRetorno, wUfAliqMVA, wIcmsAliq, wCadProdAliqIcms, wUfAliqIcmsSubCli, rBaseIcms, rValorIcms, rBaseIcmsST, rPrecoTotal,
   wUfAliqIcmsForaEst, rValorST, wALiqICmsCliente, wUfAliqIcmsSubCliRegra,wUFAliqInterRegra, wReducaoBaseST :Currency;
   wCST_CODIGO, wCST_CODIGOProduto, wClassificacaoFiscal, wTemSubs, wExterior, wSeleciona:string;
   wFator, wDifalSt,  rateio, wUfResultMVA, wValorSubs : Currency ;
   sOrigem : string;
   bLocalizadoRegra, bisentaICMS,
   CLI_CONSFINAL, CLI_CONSU_PROPRIO, CLI_REGIME_TRIBUTARIO,CLI_MODO_TRIB_ST, CNAE_CARGA_TRIB_MEDIA, opeIpiBaseIcms :Boolean;
   i:Integer;
   point:TBookmark;
begin
  if (bRecalculaSTGeral)  and SqlCdsPedidoItem.Active then
  begin
    try
        point := SqlCdsPedidoItem.GetBookmark;
        SqlCdsPedidoItem.DisableControls;
        SqlCdsPedidoItem.Close;
        SqlCdsPedidoItem.Open;
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
              wUFAliqInterRegra :=0;
              wReducaoBaseST         := 0;

              wFator := 0;
              wDifalSt := 0;

              rPrecoTotal := SqlCdsPedidoItemTOTAL.AsCurrency  ;
              wTemSubs := 'N';
              if (EdClienteUF.Text = '')and(cbbClienteEstado.Text <> '')and(GBInformacoesOrcamento.Visible) then
                 EdClienteUF.Text := cbbClienteEstado.Text;

              //Tipo do Pedido Calcula ST ?
              if (bTipoPedidoCalculaST)and(SqlCdsPedidoItemPRD_REFER.AsString <> '')and(edCfop.idRetorno <> '')and(EdClienteUF.Text <> '') then
              begin
                          //Busca Informações do Produto
                          dbInicio.qAux2.Close;
                          dbInicio.qAux2.sql.text:= SQLDEF('PRODUTOS','Select PR1.STB_TRIBUTACAO, PR1.IPI_CODIGO, pr1.prd_origem from PRD0000 PR1','where PR1.PRD_REFER = '''+SqlCdsPedidoItemPRD_REFER.AsString+'''','','PR1.');
                          dbInicio.qAux2.Open;
                          {PRODUTO}
                          wCST_CODIGO := dbInicio.qAux2.FieldByName('STB_TRIBUTACAO').AsString;
                          wCST_CODIGOProduto := dbInicio.qAux2.FieldByName('STB_TRIBUTACAO').AsString;
                          wClassificacaoFiscal := dbInicio.qAux2.FieldByName('IPI_CODIGO').AsString;

                          bLocalizadoRegra := False;
                          sorigem := EmptyStr;
                          if MatchStr(dbInicio.qAux2.FieldByName('PRD_ORIGEM').AsString,['1','2','6','7']) then   // estrangeira
                            sorigem := 'E'
                          else
                            sOrigem := 'N';
                          dbInicio.qAux2.Close;


                          i := 8;
                          while (i >= 2) do
                             begin
                                dbInicio.qAux2.Close;
                                dbInicio.qAux2.sql.text:= SQLDEF('FISCAL','SELECT t1.* FROM ope_regra T1',
                                                              'where OPR_ATIVO = ''S'' and  T1.ipi_codigo = '''+copy(wClassificacaoFiscal,1,I)+''' AND T1.opr_'+EdClienteUF.Text+' = ''S'' AND T1.ope_codigo_origem = '''+StrZero(edCfop.idRetorno,3)+''''
                                                              + iif( sOrigem <> '', ' and OPR_ORIGEM = ' +QuotedStr(sOrigem),'')  ,'','T1.');
                                dbInicio.qAux2.open;
                                if ( dbInicio.qAux2.IsEmpty) then
                                begin
                                   dbInicio.qAux2.Close;
                                   dbInicio.qAux2.sql.text:= SQLDEF('FISCAL','SELECT t1.* FROM ope_regra T1','where OPR_ATIVO = ''S'' and T1.ipi_codigo = '''+copy(wClassificacaoFiscal,1,I)+
                                   ''' AND T1.opr_'+EdClienteUF.Text+' = ''S'' AND T1.ope_codigo_origem = '''+StrZero(edCfop.idRetorno,3)+'''' + ' and OPR_ORIGEM = ' +QuotedStr('I'),'','T1.');
                                   dbInicio.qAux2.open;
                                end;
                                //Verifica se localizou alguma regra
                                if (not dbInicio.qAux2.IsEmpty) then
                                   begin
                                      //Encontrou a regra e sai do laço
                                      wCST_CODIGOProduto := dbInicio.qAux2.FieldByName('STB_TRIBUTACAO').AsString;
                                      bLocalizadoRegra := True;
                                      i := 0;
                                   end
                                else
                                   begin

                                      i := i -1;
                                   end;
                             end;
                          //Se nao localizou tenta pelo **
                          if (not bLocalizadoRegra) then
                             begin
                                dbInicio.qAux2.Close;
                                dbInicio.qAux2.sql.text:= SQLDEF('FISCAL','SELECT t1.* FROM ope_regra T1 JOIN REGRA_FISCAL_PROD_CAP pc ON (pc.OPR_REGISTRO = t1.OPR_REGISTRO) ','where OPR_ATIVO = ''S'' and  T1.ipi_codigo = ''**'' AND T1.opr_'+EdClienteUF.Text+' = ''S'' AND T1.ope_codigo_origem = '''+StrZero(edCfop.idRetorno,3)+''''  + ' AND pc.cap_codigo = ' + IntToStr(StrToIntDef(SqlCdsPedidoItemCAP_CODIGO.AsString, 0))      ,'','T1.');
                                dbInicio.qAux2.open;
                                //Verifica se localizou alguma regra
                                if (not dbInicio.qAux2.IsEmpty) then
                                   begin
                                      //Encontrou a regra e sai do laço
                                      bLocalizadoRegra := True;
                                   end
                             end;

                              if FrmPedido.edCliente.CdS.Active then
                              begin
                                // CLI_CONSFINAL := FrmPedido.edCliente.CdS.FieldByName('CLI_CONSFINAL').AsString = 'S';
                                // CLI_CONSFINAL := FrmPedido.SqlCdsPedidoCLI_CONSFINAL.AsString = 'S';
                                CLI_CONSFINAL := FrmPedido.cbCliConsFinal.ItemIndex = 0; // 0 = SIM / 1 = NÃO
                              end
                              else
                              begin
                                CLI_CONSFINAL := FrmPedido.cbOrsConsFinal.ItemIndex = 0; // 0 = SIM / 1 = NÃO
                              end;



                          if (bLocalizadoRegra)and not (CLI_CONSFINAL) then
                            begin
                                DataCadastros.CdsOperFisc.Open;
                                DataCadastros.CdsOperFisc.Locate('OPE_CODIGO',StrZero(dbInicio.qAux2.FieldByName('OPE_DESTINO').AsString,3),[]);
                                // pega ST da regra
                                bisentaICMS :=   dbInicio.qAux2.FieldByName('OPR_ISENTARICIMS').AsString = 'S';
                                wCST_CODIGO := dbInicio.qAux2.FieldByName('STB_TRIBUTACAO').AsString;
                                wReducaoBaseST         := dbInicio.qAux2.FieldByName('OPR_REDUCAO_BASE_ST').AsFloat;
                                wUfAliqIcmsSubCliRegra := dbInicio.qAux2.FieldByName('OPR_ALIQ_ST_UF').AsFloat;
                                wUFAliqInterRegra      := dbInicio.qAux2.FieldByName('OPR_ALIQ_INTERESTADUAL').AsFloat;
                                wIcmsAliq              :=  wUFAliqInterRegra;

                                if FrmPedido.edCliente.CdS.Active then
                                begin
                                  // CLI_CONSU_PROPRIO := FrmPedido.SqlCdsPedidoCLI_CONSU_PROPRIO.AsString = 'S';
                                  CLI_CONSU_PROPRIO := FrmPedido.cbFinalidade.Values[FrmPedido.cbFinalidade.ItemIndex] = 'S';
                                end
                                else
                                begin
                                  CLI_CONSU_PROPRIO := FrmPedido.rgOrsCliConsuProprio.ItemIndex = 0 // 0 = Uso e consumo ou industrialização / 1 = Revenda
                                end;

                                if CLI_CONSU_PROPRIO then  //consumo próprio é somente diferencial de aliquota
                                  wUfAliqMVA := 0
                                else
                                begin
                                  if FrmPedido.edCliente.CdS.Active then
                                  begin
                                    // CLI_CONSFINAL := FrmPedido.SqlCdsPedidoCLI_CONSFINAL.AsString = 'S';
                                    // CLI_CONSFINAL := FrmPedido.edCliente.CdS.FieldByName('CLI_CONSFINAL').AsString = 'S';
                                    CLI_CONSFINAL := FrmPedido.cbCliConsFinal.ItemIndex = 0; // 0 = SIM / 1 = NÃO
                                  end
                                  else
                                  begin
                                    CLI_CONSFINAL := FrmPedido.cbOrsConsFinal.ItemIndex = 0; // 0 = SIM / 1 = NÃO
                                  end;

                                  if not (CLI_CONSFINAL) then
                                     begin
                                        //REGIME TRIBUTÁRIO DO SIMPLES TEM SEU MVA PROPRIO S=SIMPLES P = PRESUMIDO R = REAL
                                        if FrmPedido.edCliente.CdS.Active then
                                        begin
                                          CLI_REGIME_TRIBUTARIO := FrmPedido.edCliente.CdS.FieldByName('CLI_REGIME_TRIBUTARIO').AsString <> 'S';
                                        end
                                        else
                                        begin
                                          CLI_REGIME_TRIBUTARIO := FrmPedido.cbOrsCliRegimeTributario.ItemIndex <> 0; // 0 = SIM / 1 = NÃO
                                        end;
                                        if (CLI_REGIME_TRIBUTARIO) then
                                          wUfAliqMVA := dbInicio.qAux2.FieldByName('OPR_PERCENTUAL_MVA').AsFloat
                                        else
                                          wUfAliqMVA := dbInicio.qAux2.FieldByName('OPR_PERCENTUAL_MVA_SIMPLES').AsFloat;

  {
                                        if (CLI_REGIME_TRIBUTARIO) then
                                          begin
                                           if dbInicio.qAux2.FieldByName('OPR_PERCENTUAL_MVA_SIMPLES').AsFloat > 0 then
                                              wUfAliqMVA := dbInicio.qAux2.FieldByName('OPR_PERCENTUAL_MVA_SIMPLES').AsFloat
                                           else
                                              wUfAliqMVA := dbInicio.qAux2.FieldByName('OPR_PERCENTUAL_MVA').AsFloat;
                                          end
                                          else
                                           wUfAliqMVA := dbInicio.qAux2.FieldByName('OPR_PERCENTUAL_MVA').AsFloat;
}
                                     end;

                                end;

                            end

                            else
                            begin
                               DataCadastros.CdsOperFisc.Open;
                               DataCadastros.CdsOperFisc.Locate('OPE_CODIGO',StrZero(edCfop.idRetorno,3),[]);
                               // pega ST do cadastro do produto
                               wCST_CODIGO := wCST_CODIGOProduto;
                            end;

                          //se ST = 10 ou 60 tem st                      substituição tributária
                          if MatchStr(wCST_CODIGO,['10','70']) OR bisentaICMS then
                                wTemSubs := 'S'
                          else
                                wTemSubs := 'N';


                           if dbInicio.Empresa.PMT_PEDIDO_IND_PLASTICA  then
                           begin
                              if BuscaUmDadoSqlAsInteger(
                                 ' SELECT COUNT(rfpc.PRD_REFER) ' +
                                 ' FROM OPE_REGRA opr ' +
                                 '   LEFT JOIN REGRA_FISCAL_PROD_CAP rfpc ON (rfpc.OPR_REGISTRO = opr.OPR_REGISTRO) ' +
                                 '   LEFT JOIN OPE0000 o ON o.OPE_CODIGO = opr.OPE_CODIGO_ORIGEM ' +
                                 '   LEFT JOIN CAPACIDADE cap ON cap.CAP_CODIGO = rfpc.CAP_CODIGO ' +
                                 ' WHERE rfpc.PRD_REFER = ' + QuotedStr(SqlCdsPedidoItemPRD_REFER.AsString) +
                                 '   AND rfPC.CAP_CODIGO = ' + IntToStr(StrToIntDef(SqlCdsPedidoItemCAP_CODIGO.AsString, 0)) +
                                 '   AND cap.CAP_SUBSTITUICAO_TRIBUTARIA = ''S'' '
                              ) > 0
                              then wTemSubs := 'S'
                              else wTemSubs := 'N'
                              ;
                           end;


                          if wTemSubs = 'N' then
                          begin
                            ExecSql('UPDATE PED_IT01 SET PRF_VALOR_ST = '+ValorAmericano(FloatToStr(0))+' WHERE PRF_REGISTRO = '+SqlCdsPedidoItemPRF_REGISTRO.AsString);

                            SqlCdsPedidoItem.Next;
                            Continue;
                          end;

                          CurTotalDifal.Value := 0;
                          ExecSql('UPDATE PED0000 SET PED_VLDIFAL = ' + FloatToSQL(0) + ' WHERE PED_CODIGO = ' + QuotedStr(EdPedidoNumero.Text) );





                         wSeleciona := 'WHERE ICM_DESTINO = '''+FrmPedido.EdClienteUF.Text+'''';
                         // ver se cliente é do Exterior
                         wExterior := iif(FrmPedido.EdClienteUF.Text = 'EX','S','N');

                         {Aliquotas de ICMS por UF origem}
                         DataCadastros1.CdsICMS.Close;
                         DataCadastros1.CdsICMS.CommandText := SQLDEF('ICMS','SELECT * FROM ICM0000 ',wSeleciona,'ICM_DESTINO','');
                         DataCadastros1.CdsICMS.Open;


                          //Nova Regra venda fora do estado de mercadoria importada
                          if (wExterior = 'N') and (DataCadastros1.CdsICMSICMS_PROD_IMPORTADO.AsFloat > 0) and
                             (MatchStr(BuscaUmDadoSQLAsString('SELECT PRD_ORIGEM FROM PRD0000 p WHERE PRD_REFER = ' + QuotedStr(SqlCdsPedidoItemPRD_REFER.AsString)),['1','2','3','8'])) then
                            wIcmsAliq := DataCadastros1.CdsICMSICMS_PROD_IMPORTADO.AsFloat;





                          //Localiza Informações do Produto
                          dbInicio.qAux2.Close;
                          dbInicio.qAux2.sql.text:= SQLDEF('PRODUTOS','Select PR1.PRD_ALIQICM,PR1.PRD_ICMSUBS,PG1.PGR_COMISS,PR1.PRD_TEMSUB,PR1.STB_TRIBUTACAO from PRD0000 PR1 left join PRD_GRUPO PG1 ON PR1.PGR_CODIGO = PG1.PGR_CODIGO ','where PR1.PRD_REFER = '''+SqlCdsPedidoItemPRD_REFER.AsString+'''','PR1.PRD_REFER','PR1.');
                          dbInicio.qAux2.Open;
                          wCadProdAliqIcms := dbInicio.qAux2.FieldByName('PRD_ALIQICM').AsCurrency;
                          if wCadProdAliqIcms > 0 then   // aliq. no cadastro de produto tem prioridade acima da regra
                             wIcmsAliq        := wCadProdAliqIcms;
                          wSeleciona := 'WHERE ICM_DESTINO = '''+EdClienteUF.Text+'''';
                          if (wIcmsAliq = 0) then
                          begin
                                DataCadastros1.CdsICMS.Close;
                                DataCadastros1.CdsICMS.CommandText := SQLDEF('ICMS','SELECT * FROM ICM0000 ',wSeleciona,'ICM_DESTINO','');
                                DataCadastros1.CdsICMS.Open;
                                wIcmsAliq  := DataCadastros1.CdsICMSICM_ALIQ.AsCurrency;
                          end;
                          wSeleciona := 'WHERE ICM_DESTINO = '''+EdClienteUF.Text+'''';
                          // ver se cliente é do Exterior
                          wExterior := iif(EdClienteUF.Text = 'EX','S','N');
                          {Aliquotas de ICMS por UF origem}
                          DataCadastros1.CdsICMS.Close;
                          DataCadastros1.CdsICMS.CommandText := SQLDEF('ICMS','SELECT * FROM ICM0000 ',wSeleciona,'ICM_DESTINO','');
                          DataCadastros1.CdsICMS.Open;
                          if not DataCadastros1.CdsICMS.IsEmpty then
                             begin
                                {revisar}
                                wALiqICmsCliente  := DataCadastros1.CdsICMSICM_ALIQ.AsCurrency;
                                // nao calcular sub.trib. para consumirdor final e para cliente que usa no processo de industrialização

                                  if FrmPedido.edCliente.CdS.Active then
                                  begin
                                    // CLI_CONSFINAL := FrmPedido.SqlCdsPedidoCLI_CONSFINAL.AsString = 'S';
                                    // CLI_CONSFINAL := FrmPedido.edCliente.CdS.FieldByName('CLI_CONSFINAL').AsString = 'S';
                                    CLI_CONSFINAL := FrmPedido.cbCliConsFinal.ItemIndex = 0; // 0 = SIM / 1 = NÃO
                                  end
                                  else
                                  begin
                                    CLI_CONSFINAL := FrmPedido.cbOrsConsFinal.ItemIndex = 0; // 0 = SIM / 1 = NÃO
                                  end;


                                if (CLI_CONSFINAL) then
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
                          if (wTemSubs = 'S') and (wIcmsAliq > 0) then
                          begin

                                if FrmPedido.edCliente.CdS.Active then
                                begin
                                  CLI_MODO_TRIB_ST := edCliente.CdS.fieldbyname('CLI_MODO_TRIB_ST').AsString = 'CNAE';
                                  CNAE_CARGA_TRIB_MEDIA := edCliente.CdS.fieldbyname('CNAE_CARGA_TRIB_MEDIA').AsFloat > 0;
                                end
                                else
                                begin
                                  CLI_MODO_TRIB_ST := False;
                                  CNAE_CARGA_TRIB_MEDIA := False;
                                end;

                                if (CLI_MODO_TRIB_ST) and (CNAE_CARGA_TRIB_MEDIA) then
                                begin
                                     if (SqlCdsPedidoItemPRF_IPIALIQ.AsFloat > 0) then
                                        rPrecoTotal := rPrecoTotal + (SqlCdsPedidoItemTOTAL.AsFloat* (SqlCdsPedidoItemPRF_IPIALIQ.AsFloat/100));
                                     rRetorno := rPrecoTotal * (edCliente.CdS.fieldbyname('CNAE_CARGA_TRIB_MEDIA').AsFloat /100);
                                end
                                else
                                begin
                                    {UF destino}
                                    if (wUfAliqIcmsSubCliRegra > 0) then
                                       wUfAliqIcmsSubCli := wUfAliqIcmsSubCliRegra
                                    else
                                       wUfAliqIcmsSubCli := wIcmsAliq;     // 01/03/2017 marcio
                                    rateio := Uteis.RoundTo ((CurFrete.value + CurSeguro.Value + {CurTotalDifal.Value + } CurDespesasAcessorias.Value - CurDescontoNotaFiscalValor.Value) / CurTotalProduto.value *
                                                  (FrmPedido.SqlCdsPedidoItemPRF_QTDE.AsFloat *  FrmPedido.SqlCdsPedidoItemPRF_PRECO.AsFloat), -2);

                                    rBaseIcms :=rateio +StrToFloat(FormatFloat('#############0.00',rPrecoTotal));

                                    if SqlCdsPedidoItemPRF_IPIALIQ.AsFloat > 0 then
                                      rBaseIcmsST :=  rBaseIcms + ((FrmPedido.SqlCdsPedidoItemPRF_QTDE.AsFloat *  FrmPedido.SqlCdsPedidoItemPRF_PRECO.AsFloat / 100) * SqlCdsPedidoItemPRF_IPIALIQ.AsFloat)
                                    else
                                      rBaseIcmsST :=  rBaseIcms;



                                    rBaseIcmsST := StrToFloat(FormatFloat('#############0.00',rBaseIcmsST  + (rBaseIcmsST * (wUfAliqMVA/100))));


                                    // CurTotalIPI.Value > 0
//                                    if SqlCdsPedidoItemPRF_IPIALIQ.AsFloat > 0 then
//                                      rBaseIcmsST :=  rBaseIcmsST + ((FrmPedido.SqlCdsPedidoItemPRF_QTDE.AsFloat *  FrmPedido.SqlCdsPedidoItemPRF_PRECO.AsFloat / 100) * SqlCdsPedidoItemPRF_IPIALIQ.AsFloat);

//                                      rBaseIcmsST :=  rBaseIcmsST + ((rBaseIcmsST / 100) * SqlCdsPedidoItemPRF_IPIALIQ.AsFloat);

                                    {Reducao Base ST}
                                    if (wReducaoBaseST > 0)and(rBaseIcmsST > 0) then
                                       rBaseIcmsST := StrToFloat(FormatFloat('#############0.00',rBaseIcmsST - (rBaseIcmsST * (wReducaoBaseST/100))));


                                    OpeIpiBaseIcms := DataCadastros.CdsOperFisc.FieldByName('OPE_IPINABASEICMS').AsString = 'S';
                                    // OPE_IPINABASEICMS
                                    if opeIpiBaseIcms then
                                      rValorIcms :=  uteis.roundto( rBaseIcmsST * (wIcmsAliq/100), -2)
                                    else
                                      rValorIcms :=  uteis.roundto( rBaseIcms * (wIcmsAliq/100), -2);
                                    //incluido o defal para todos os estados

                                    if (bLocalizadoRegra) and (wUfAliqMVA=0)  then // MVA zerado na regra ou zerado por isenção icms para uso consumo (combustiveis)
                                    begin
                                      if bisentaICMS then
                                        rValorIcms:=0;
                                      wFator := RoundTo( (100 - wUfAliqIcmsSubCli) / 100, -2 );  // Fator -> Aliquota Interna: 18% = (100 - 18)/100 = 0,82
                                      wDifalSt := RoundTo( rBaseIcmsST - rValorIcms, -2 ) ; // 1000 - 40 = 960
                                      wDifalST := RoundTo( wDifalST / wFator ); // 960 / 0,82 = 1170,73
                                      rValorST := RoundTo( wDifalST * ( wUfAliqIcmsSubCli / 100 ), -2 ); // 1170,73 * 18% =210,43

                                          //wDifalST - rValorIcms ; // 210,73 - 40 = 170,73
                                          //wDifalSt := RoundTo( rValorST / rBaseIcms * 100, -2 ) ; // 170,73 / 1000 * 100 = 17,07
                                      if (rValorST > rValorIcms) then
                                          rRetorno :=  StrToFloat(FormatFloat('#############0.00',rValorST - rValorIcms));
                                  end
                                    Else
                                    begin
                                      if bisentaICMS then
                                        rValorIcms:=0;
                                      wUfResultMVA := Uteis.RoundTo ( rBaseIcmsST * wUfAliqIcmsSubCli / 100, -3 );
                                      wValorSubs := Uteis.RoundTo ( wUfResultMVA - rValorIcms, -3 );
                                     // rValorST := uteis.roundto( rBaseIcmsST * (wUfAliqIcmsSubCli/100), -2 );
                                      rRetorno :=  StrToFloat(FormatFloat('#############0.00',wValorSubs));

                                    end;

                                  end;

                          end;
                 end;

              dbInicio.qAux.Close;
              dbInicio.qAux.sql.text :='UPDATE PED_IT01 SET PRF_VALOR_ST = '+ValorAmericano(FloatToStr(rRetorno))+' WHERE PRF_REGISTRO = '+SqlCdsPedidoItemPRF_REGISTRO.AsString;
              dbInicio.qAux.Execsql;
              SqlCdsPedidoItem.Next;
        end;
    finally
      SqlCdsPedidoItem.Refresh;
      // SqlCdsPedidoItem.GotoBookmark(point);
      SqlCdsPedidoItem.EnableControls;
    end;

  end;

end;

procedure TFrmPedido.EnviarPedidoProducao;
var  Tipo : uProducaoDAO.TItemProducao;
begin
  if SqlCdsPedido.IsEmpty then
   GeraException('Não há pedido');

  if (SqlCdsPedidoPED_SITUACAO.AsString = 'C') then
    raise Exception.Create ('O Pedido não pode ser editado pois está cancelado');

  if  SqlCdsTipoPedidoOPV_PRODUCAO.AsString = 'N' then
    raise Exception.Create('Tipo pedido não é produção');

  if SqlCdsPedidoItem.IsEmpty then
    raise Exception.Create('Sem item');


   if BuscaUmDadoSqlAsInteger(' SELECT count(*) FROM ITEM_ORDEMPRODUCAO IOP '+
                              '  JOIN ORDEMPRODUCAO OPR ON OPR.OPR_CODIGO = IOP.OPR_CODIGO '+
                              ' WHERE ORE_CODIGO IS NOT NULL  ' +
                              ' AND PED_CODIGO = '+QuotedStr(EdPedidoNumero.text) ) >0 then
    raise Exception.Create('Envase já enviada');

  if BuscaUmDadoSqlAsInteger('SELECT CAST(COUNT(*) AS INTEGER) FROM DEMANDA_PRODUCAO '+
                              ' WHERE PED_CODIGO = '+QuotedStr(EdPedidoNumero.text) +
                              '  AND EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo)
                               ) > 0

                              then
    raise Exception.Create('Demanda já enviada');

   SqlCdsPedidoItem.Filtered := False;
   SqlCdsPedidoItem.Filter := '(pti_sigla = ''PA'') OR (pti_sigla = ''PI'') OR (pti_sigla =''KT'') ';
   SqlCdsPedidoItem.Filtered := True;
   if SqlCdsPedidoItem.IsEmpty then
   Begin
      SqlCdsPedidoItem.Filtered := False;
      raise Exception.Create('Não há itens a produzir : deve ter pelo menos PA, PI, KT');
   End;
   if not assigned(frmConfirmaDemanda) then
     frmConfirmaDemanda := TfrmConfirmaDemanda.Create( self);
   frmConfirmaDemanda.FDMemTable1.CreateDataSet;
   frmConfirmaDemanda.FDMemTable1.CopyDataSet(SqlCdsPedidoItem,[coRestart, coAppend]);

   if frmConfirmaDemanda.ShowModal <> mrOk then
   begin
     SqlCdsPedidoItem.Filtered := False;
      exit;
   end;
   SqlCdsPedidoItem.Filtered := False;

   if not Assigned(ProducaoDao) then
     ProducaoDao := TProducaoDao.Create(self);
   try
     SqlCdsPedidoItem.First  ;
     SqlCdsPedidoItem.DisableControls;

     while not SqlCdsPedidoItem.Eof do
     begin
       IF MatchStr(SqlCdsPedidoItempti_sigla.AsString,['PA','PI','KT']) then
       begin
        OpenAux2('SELECT prd_envase FROM PRD0000 WHERE PRD_CODIGO = '+QuotedStr( SqlCdsPedidoItemPRD_CODIGO.AsString));
        if qAux2.FieldByName('PRD_ENVASE').AsString = 'S' then
        begin
          ProducaoDao.EnviarItemProducao(
                 SqlCdsPedidoItemPRD_CODIGO.AsString,
                 SqlCdsPedidoItemPRD_REFER.AsString,
                 EdPedidoNumero.text,
                 now, // data de emissao
                 SqlCdsPedidoPED_DTENTRADA.AsDateTime, //dt entrega
                 SqlCdsPedidoCLI_CODIGO.AsString,
                 SqlCdsPedidoItemPRF_QTDE.AsFloat,       // quantidade producao
                 SqlCdsPedidoItemPRF_PESOKG.AsFloat,
                 SqlCdsPedidoItemPRF_PRECO.AsFloat,
                 SqlCdsPedidoItemPRF_REGISTRO.AsInteger,
                 0,    //fti _registro
                 0,    //dep_codigo
                 0,    //programação
                 Tipo,
                 False, //subordens
                 True// envase
                   );

        end
        else // demanda
          ProducaoDao.EnviarDemanda( EdPedidoNumero.text,
                                   SqlCdsPedidoItemPRD_CODIGO.AsString,
                                   'R', //situacao
                                   0,  // fti_registro (ficha tecnica)
                                   SqlCdsPedidoItemPRF_REGISTRO.AsInteger,
                                    0, // iop_codigo (somente preenche quando vai a produção)
                                   SqlCdsPedidoPED_DTSAIDA.AsDateTime,
                                   0 );//estoque )

       end;

       SqlCdsPedidoItem.Next;
     end;

       ShowMessage('Pedido enviado a demanda de produção');
   finally
     FreeAndNil(ProducaoDao);
     SqlCdsPedidoItem.EnableControls;
   end;


end;

procedure TFrmPedido.btnRemoverIndustrializacaoClick(Sender: tObject);
begin
  //Verifica se Tem Item no Pedido
  if (SqlCdsRetornoInd.IsEmpty)  then
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

procedure TFrmPedido.ConsultaRetornoIndustrializacao;
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

procedure TFrmPedido.btnVincularIndustrializacaoClick(Sender: tObject);
begin
  if (SqlCdsPedidoItem.IsEmpty) then
    begin
      uteis.aviso('Não existe item para vincular');
    end
  else
    begin
      FrmVinculacaoIndustrializacaoRetorno := TFrmVinculacaoIndustrializacaoRetorno.Create(Application);
      try
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

procedure TFrmPedido.RetornoIndustrializacao;
begin

     if (BtnGravar.Enabled) then
     try
        fIgnoreItens:=True;
        BtnGravarClick(Self);
     finally
            fIgnoreItens:=False;
     end;

     if (SqlCdsPedido.IsEmpty) then
         uteis.aviso('Adicione um pedido antes de colocar os itens')
     else
     if (SqlCdsPedidoPED_SITUACAO.AsString = 'C') then
         uteis.aviso('Pedido cancelado não permite adicionar novos itens!')
     else
     if (EdSituacao.Text = 'FATURADO TOTAL') then
         uteis.aviso('Pedido faturado não permite adicionar novos itens!')
     else
     if (EdSituacao.Text = 'AGRUPADO') then
        uteis.aviso('Não é possível incluir mais itens. Pedido já foi agrupado!')
     else
     if (MatchStr(SqlCdsPedidoPED_SITUACAO.AsString ,['F','P'] ) )  and (SqlCdsPedidoPed_faturar_liberado.AsString = 'S') and ( DBInicio.empresa.wTipoLiberacaoFaturamento = 'M') then
        uteis.aviso('Pedido já liberado para faturamento')
     else
     if (SqlCdsTipoPedidoOPV_INDUSTRIALIZACAO.AsString <> 'S') then
     begin
          uteis.aviso('O Tipo do Pedido não é de industrialização');
          wRetornoInd := False;
     end
     else
     if ValidaPedido then
     begin
          FrmVinculacaoIndustrializacaoRetorno := TFrmVinculacaoIndustrializacaoRetorno.Create(Application);
          try
             FrmVinculacaoIndustrializacaoRetorno.sFornecedorCnpj := ExtrairNumeros(EdCnpj.Text);
             FrmVinculacaoIndustrializacaoRetorno.ShowModal;
          finally
                 FreeAndNil( FrmVinculacaoIndustrializacaoRetorno );
          end;
          BuscaPedidoItem(EdPedidoNumero.Text, false);
          GravaPedido;
          CalcutaTotalItens;
          ReordenarItens(SqlCdsPedidoItem);
    end;

end;

procedure TFrmPedido.PedidoSemItensdopKIT1Click(Sender: tObject);
begin
  bPedidoSemItemKit := True;
  ImprimePedido(true,'');
  bPedidoSemItemKit := False;

end;

procedure TFrmPedido.CdsClienteContatoAfterPost(DataSet: TDataSet);
begin
  CdsClienteContato.ApplyUpdates(0);
  CdsClienteContato.Refresh;
end;

procedure TFrmPedido.CdsClienteContatoBeforePost(DataSet: TDataSet);
begin
  if (EdClienteCodigo.Text <> '') then
    CdsClienteContatoCLI_CODIGO.AsString := EdClienteCodigo.Text;
end;

procedure TFrmPedido.OrcamentoImagemSomenteTotal1Click(Sender: tObject);
begin
  ImprimePedido(True,'ORCAMENTOIMAGEMTOTAL');
end;

procedure TFrmPedido.OrcamentoImagemSomenteTotal2Click(Sender: tObject);
begin
  ImprimePedido(False,'ORCAMENTOIMAGEMTOTAL');
end;

procedure TFrmPedido.Ordemdeproduo1Click(Sender: TObject);
begin
  inherited;
  ImprimePedido(True, 'OP')
end;

procedure TFrmPedido.OrdemdeServio1Click(Sender: TObject);
begin
  inherited;
//  ImprimePedido(True,'SEV');
end;

procedure TFrmPedido.RomaneioM31Click(Sender: tObject);
begin
   ImprimePedido(True,'ROM3');
end;

procedure TFrmPedido.RomaneioM32Click(Sender: tObject);
begin
  ImprimePedido(False,'ROM3');
end;

procedure TFrmPedido.AtualizaSaldos;
begin
   CurTotalEstoqueEmpresa.Clear;
   SqlCdsSaldos.Close;
   SqlCdsSaldos.CommandText := SQLDEF('PRODUTOS','SELECT T1.emp_codigo,T2.emp_razao,SUM(T1.kas_saldo) AS SALDO FROM kardex_almox_saldo T1 JOIN emp0000 T2 ON (T2.emp_codigo = T1.emp_codigo)','WHERE T1.prd_codigo = '+QuotedStr(cdsProdutosaFaturarPRD_CODIGO.AsString),'','t1.')+' GROUP BY T1.emp_codigo, T2.emp_razao';
   SqlCdsSaldos.Open;
   try
     SqlCdsSaldos.DisableControls;
     SqlCdsSaldos.First;
     while (not SqlCdsSaldos.Eof) do
        begin
           CurTotalEstoqueEmpresa.Value := CurTotalEstoqueEmpresa.Value +  SqlCdsSaldosSALDO.AsFloat;
           SqlCdsSaldos.Next;
        end;
     SqlCdsSaldos.First;
   finally
     SqlCdsSaldos.EnableControls;
   end;
end;

procedure TFrmPedido.SqlCdsPedidoItemAfterScroll(DataSet: TDataSet);
begin
  inherited;
  try
    if ((SqlCdsPedidoItempti_sigla.AsString = 'KT') and  (DBInicio.Empresa.wPMT_VALOR_KIT)) then
      PmuItemPedido.Items.Items[5].Visible := true
    else
      PmuItemPedido.Items.Items[5].Visible := false;
  Except
    // faz nada
  end;
end;

procedure TFrmPedido.SqlCdsPedidoItemCalcFields(DataSet: TDataSet);
var
  pesos: double;

begin
//  SqlCdsPedidoItemSequencia.AsInteger := SqlCdsPedidoItem.RecNo;

  if dbInicio.Empresa.PMT_PEDIDO_IND_PLASTICA then
    SqlCdsPedidoItemPesoLiquido.AsCurrency := SqlCdsPedidoItemPRF_PESO.AsCurrency / SqlCdsPedidoItemPRF_QTDE.AsCurrency
  else
  if (SqlCdsTipoPedidoOPV_INDUSTRIALIZACAO.AsString = 'S') and (SqlCdsPedidoItemPRD_UND.AsString = 'KG') and (SqlCdsPedidoItemPRF_PESOKG.AsCurrency = SqlCdsPedidoItemPRF_QTDE.AsCurrency) then
    SqlCdsPedidoItemPesoLiquido.AsCurrency := SqlCdsPedidoItemPRF_QTDE.AsCurrency
  else
    if DBInicio.Empresa.wPMT_PROD_TERMICO then
    begin
      if SqlCdsPedidoItemPRF_QTDE_ENV_PRODUCAO.AsFloat = 0 then
        SqlCdsPedidoItemPesoLiquido.AsCurrency := SqlCdsPedidoItemPRF_PESOKG.AsCurrency * SqlCdsPedidoItemPRF_QTDE.AsCurrency
      else
        SqlCdsPedidoItemPesoLiquido.AsCurrency := SqlCdsPedidoItemPRF_PESOKG.AsCurrency * SqlCdsPedidoItemPRF_QTDE_ENV_PRODUCAO.AsFloat;
      // GetColumn(DbGradeItemPedido, 'PRF_QTDEFAT').Title.Caption := 'Peso Unitário';

    end

  else
    try
      SqlCdsPedidoItemPesoLiquido.AsCurrency := SqlCdsPedidoItemPRF_PESOKG.AsCurrency / SqlCdsPedidoItemPRF_QTDE.AsCurrency;
    except
      // faz nada
    end;

  if SqlCdsPedidoItemPRD_FATOR_PROD.AsFloat > 0  then
  begin
    pesos := SqlCdsPedidoItemPRG_MEDIDA_1.AsFloat * SqlCdsPedidoItemPRG_MEDIDA_2.AsFloat * SqlCdsPedidoItemPRG_MEDIDA_3.AsFloat * SqlCdsPedidoItemPRD_FATOR_PROD.AsFloat;
    if SqlCdsPedidoItemPRD_UND.AsString = 'MIL' then
      SqlCdsPedidoItemPRG_MICRA.AsCurrency := (SqlCdsPedidoItemPRF_PESO.AsFloat / SqlCdsPedidoItemPRF_QTDE.AsFloat) * (SqlCdsPedidoItemPRG_MEDIDA_3.AsFloat / pesos)
    else
      SqlCdsPedidoItemPRG_MICRA.AsCurrency := (SqlCdsPedidoItemPRF_QTDE.AsFloat / SqlCdsPedidoItemPRF_PESO.AsFloat ) * (SqlCdsPedidoItemPRG_MEDIDA_3.AsFloat / pesos);
    // SqlCdsPedidoItemPRG_MICRA.AsCurrency :=  ((SqlCdsPedidoItemPRG_MEDIDA_3.AsFloat / pesos) *  (SqlCdsPedidoItemPRF_PESO.AsCurrency / SqlCdsPedidoItemPRF_QTDE.AsCurrency));
  end;
  if (SqlCdsPedidoItemPRF_PESO.AsFloat / SqlCdsPedidoItemPRF_QTDE.AsFloat) > pesos then
    SqlCdsPedidoItemPESADO.AsString := 'Pesado'
  else
    SqlCdsPedidoItemPESADO.AsString := 'Leve';

  if SqlCdsPedidoItemPRD_UND.AsString = 'KG' then
    SqlCdsPedidoItemFKP.AsFloat := SqlCdsPedidoItemPRF_PRECO.AsFloat
  else
    SqlCdsPedidoItemFKP.AsFloat := (SqlCdsPedidoItemPRF_PRECO.AsFloat / SqlCdsPedidoItemPRG_MEDIDA_1.AsFloat / SqlCdsPedidoItemPRG_MEDIDA_2.AsFloat / SqlCdsPedidoItemPRG_MEDIDA_3.AsFloat) * 10;



  if SqlCdsPedidoItemPRD_UND.AsString = 'KG' then
    SqlCdsPedidoItemFKG.AsFloat := SqlCdsPedidoItemTOTAL.AsFloat / SqlCdsPedidoItemPRF_QTDE.AsFloat;
  if SqlCdsPedidoItemPRD_UND.AsString = 'MIL' then
    SqlCdsPedidoItemFKG.AsFloat := SqlCdsPedidoItemTOTAL.AsFloat / SqlCdsPedidoItemPRF_PESO.AsFloat;

end;

procedure TFrmPedido.SqlCdsPedidoItemDESCRICAOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if (SqlCdsPedidoItemPRF_PRODUTO_AGREGADO.AsString = 'N') and (SqlCdsPedidoItemPRDD_SIGLA.AsString <> '') then
     Text := SqlCdsPedidoItemDESCRICAO.AsString + '[ ' + SqlCdsPedidoItemPRDD_SIGLA.AsString + ' ]'
  else if (SqlCdsPedidoItemPRF_PRODUTO_AGREGADO.AsString = 'S') then
    Text := SqlCdsPedidoItemDESCRICAO.AsString + ' [ '+ IntToStr(SqlCdsPedidoItemQtdeKit.AsInteger) + ' x '+
       IntToStr(SqlCdsPedidoItemPRF_QTDE.AsInteger) +  ' ]'
  else
    Text := SqlCdsPedidoItemDESCRICAO.AsString;

end;

procedure TFrmPedido.FormCreate(Sender: tObject);
begin
  inherited;

  if FrmPedidoItem <> nil then
    FreeAndNil(FrmPedidoItem);

  GBInformacoesOrcamento.Visible := False;

  fIgnoreItens:=False;
  pcInformacoes.ActivePage := tsoutros;
  SQLClienteProdNF_PRECO.DisplayFormat:='###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);


     //SELF.Width:=985;
     //SELF.Height:=685;
     vIdPedido:=0;
     pagecontrol3.ActivePageIndex:=0;

     GBInformacoesOrcamento.Left:= GBInformacoesCliente.left;
     GBInformacoesOrcamento.Top:= GBInformacoesCliente.Top;
     GBInformacoesOrcamento.width  := GBInformacoesCliente.width;
     GBInformacoesOrcamento.Height  := GBInformacoesCliente.Height;

     edCliente.FiltroTabela:=ConcatSe('t1.',dbInicio.ExclusivoSql('CLIENTES'));
     if (dbInicio.Empresa.bVisualizaClientes_P) and (dbInicio.Empresa.fCODIGO_REPRES <> '000') then
     begin
          if edCliente.FiltroTabela<>'' then
             edCliente.FiltroTabela:=edCliente.FiltroTabela+' and ';
          edCliente.FiltroTabela:=edCliente.FiltroTabela+'( REP_CODIGO ='+qStr(dbInicio.Empresa.fCODIGO_REPRES) +
                                                           ' or VEND_INTERNO_CODIGO = '+  QuotedStr(dbInicio.Empresa.fCODIGO_REPRES) +')'   ;
     end;

     edPrazo.FiltroTabela:=dbInicio.ExclusivoSql('PRAZOS');
     if not dbInicio.Empresa.pUSP_USAPRAZODESABILITADO then
        edPrazo.FiltroTabela:= ConcatSe( edPrazo.FiltroTabela, ' and ' )+'PCL_DISPONIVEL='+qStr('S');

     edVendedor.FiltroTabela:=ConcatSe(dbInicio.ExclusivoSql('TABELAS'),' and ')+' rep_situacao='+qStr('A'); // só ativos
     edTransportadora.FiltroTabela:=dbInicio.ExclusivoSql('TABELAS');
     edFPagto.FiltroTabela:=dbInicio.ExclusivoSql('TABELAS');
     edCCUSTO.FiltroTabela:=ConcatSE(dbInicio.ExclusivoSql('TABELAS'),' and ')+'PCX_TIPO = '+qStr('L');

    // LimparCampos;
     BUSCACLIENTE( '' );

     MontaFiltroCfop ;
    PageControl4.ActivePageIndex := 0;
    wCodigoEndereco := 0;
    wAdcProdKit := false;
    rComissaoDoPrazo := 0;
    rVerbaDoPrazo := 0;
    sOperacao := '';
    self.Constraints.MaxHeight:=0;
    self.Constraints.MaxWidth:=0;
    GBInformacoesCliente.Align := alTop;
    GBInformacoesOrcamento.Align := alTop;
end;

procedure TFrmPedido.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmPedido := Nil;
end;

procedure TFrmPedido.SqlCdsPedidoItemPRD_REFERGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
     if Sender.asstring='' then
        text:=SqlCdsPedidoItemPRDCO_CODIGO_ORIGINAL.AsString
     else
        text:=Sender.AsString ;
end;


procedure TFrmPedido.SqlCdsPedidoItemPRF_MARGEM_PRODUTOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if not (dbInicio.Empresa.bVisualizaMarkupPedido) then
    text := '*****'
  else
    text := FormatFloat('###,###,##0.000%',Sender.AsFloat);
end;

procedure TFrmPedido.SqlCdsPedidoItemPRF_PESOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
   if (SqlCdsPedidoItemPRD_UND.AsString = 'KG')  then
     Text := '-'
   else
     Text :=  FormatFloat('###,###,##0.00', Sender.AsFloat);

end;

procedure TFrmPedido.SqlCdsPedidoItemPRF_PRAZO_DIASGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if not SqlCdsPedido.IsEmpty then
  begin
    if TField(Sender).IsNull then
      Text := ''
    else if TField(Sender).AsInteger =0  then
      Text := 'Imediato'
    else if TField(sender).AsInteger = 1 then
      Text := '1 dia'
    else
      Text := IntToStr( TField(Sender).AsInteger) + ' dias';

  end;


end;

procedure TFrmPedido.SqlCdsPedidoItemPRF_QTDEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if SqlCdsPedidoItemPRF_PRODUTO_AGREGADO.AsString = 'S' then
     Text :=  FloatToStr(SqlCdsPedidoItemPRF_QTDE.AsFloat *  SqlCdsPedidoItemQtdeKit.AsFloat)
  else
    Text :=  FloatToStr(SqlCdsPedidoItemPRF_QTDE.AsFloat) ;
end;

procedure TFrmPedido.RomaneioBSC1Click(Sender: tObject);
begin
   ImprimePedido(True,'BSC');
end;

procedure TFrmPedido.Romaneiocabealhoresumido1Click(Sender: TObject);
begin
  inherited;
   ImprimePedido(True,'ROMResumido');
end;

procedure TFrmPedido.RomaneiocomcodOriginal1Click(Sender: TObject);
begin
  inherited;
  ImprimePedido(True,'ROMORIG');
end;

procedure TFrmPedido.RomaneiodeCorte1Click(Sender: TObject);
begin
  inherited;
  ImprimePedido(True,'ROMCORTE');
end;

procedure TFrmPedido.RomaneioIndstria1Click(Sender: TObject);
begin
  inherited;
   ImprimePedido(True,'ROMIND');
end;

procedure TFrmPedido.OramentoMais1Click(Sender: tObject);
begin
     ImprimePedido(True, 'ORCMAIS');
end;

procedure TFrmPedido.OramentoMais2Click(Sender: tObject);
begin
     ImprimePedido(False, 'ORCMAIS');
end;

procedure TFrmPedido.RomaneioPlanilha1Click(Sender: tObject);
begin
   ImprimePedido(False,'ROMANEIOPLANILHA');
end;

procedure TFrmPedido.sbFreteClick(Sender: TObject);
begin
  inherited;
  CurQtdeTonelada.Value := 0;
  CurVlrKM.Value := 0;
  CurFator.Value := cdsClienteEnderSelecionadoFATOR.Value;
  pnFrete.Top := CbDescontoNF.Top;
  pnFrete.Left := CbDescontoNF.Left;
  pnFrete.Parent := FrmPedido;
  AnimateWindow(pnFrete.Handle, 500, AW_HOR_POSITIVE or AW_SLIDE or  AW_ACTIVATE);
  pnFrete.Visible := true;
end;


procedure TFrmPedido.sbmCabPPACAddObsClick(Sender: TObject);
begin
  inherited;
   FrmCadastroObservacao := TFrmCadastroObservacao.Create(Application);
   try
      FrmCadastroObservacao.FormStyle := fsNormal;
      FrmCadastroObservacao.Visible := false;
      FrmCadastroObservacao.memo := mCabPPAC;
      FrmCadastroObservacao.ShowModal;
   finally
      FrmCadastroObservacao.Destroy;
      FrmCadastroObservacao :=Nil;
   end;
end;

Procedure TFrmPedido.SituacaoPedido;
begin
     if SqlCdsPedidoPED_SITUACAO.AsString = 'C' then
     begin
          EdSituacao.Text := 'CANCELADO-'+SqlCdsPedidoPMT_MOTIVO.AsString;
          EdSituacao.Color := clRed;
          EdSituacao.Font.color := clWhite;
     end
     else
     if SqlCdsPedidoPED_SITUACAO.AsString = 'P' then
     begin
          EdSituacao.Text := 'FATURADO PARCIAL';
          EdSituacao.Color := clGreen;
          EdSituacao.Font.color := clBlack;
     end
     else
     if SqlCdsPedidoPED_SITUACAO.AsString = 'F' then
     begin
          EdSituacao.Text := 'À FATURAR';
          EdSituacao.color := clBtnFace;
          EdSituacao.Font.color := clblack;
     end
     else
     if SqlCdsPedidoPED_SITUACAO.AsString = 'T' then
     begin
          EdSituacao.Text := 'FATURADO TOTAL';
          EdSituacao.color := clBlue;
          EdSituacao.Font.color := clWhite;
          HabilitaDesabilitaEdicao(False);
     end
     else
     if SqlCdsPedidoPED_SITUACAO.AsString = 'A' then
     begin
          EdSituacao.Text := 'AGRUPADO';
          EdSituacao.color := clBlue;
          EdSituacao.Font.color := clWhite;
          HabilitaDesabilitaEdicao(False);
     end;

end;

procedure TFrmPedido.SomenteServios1Click(Sender: TObject);
begin
  inherited;
  ImprimePedido(True,'SEVS');
end;

procedure TFrmPedido.SomenteServios2Click(Sender: TObject);
begin
  inherited;
  ImprimePedido(False,'SEVS');
end;

procedure TFrmPedido.IndustrializacaoPorKit;
begin
  GravaPedido;
  if FrmIndustrializacaoPorKit = nil then
    FrmIndustrializacaoPorKit := TFrmIndustrializacaoPorKit.Create(Application);
  try
    FrmIndustrializacaoPorKit.ShowModal;
  finally
    FreeAndNil( FrmIndustrializacaoPorKit );
  end;
  BuscaPedido(EdPedidoNumero.Text);
  ReordenarItens(SqlCdsPedidoItem);
end;

procedure TFrmPedido.LoadXML;
Var
  tempItens: TItens;
  I : Integer;
  sDescricaoProduto, prdCodigo, arquivoLog, MensagemLoadXML: string;
  comissao, totalcomissao: Double;
  log: TextFile;
begin
  MensagemLoadXML := '';
  for I := 0 to XMLDocument1.DocumentElement.ChildNodes.Count - 1 do
  begin
      tempItens := TItens.Create;
      with XMLDocument1,
           XMLDocument1.DocumentElement.ChildNodes[I] do
      begin
        tempItens.Referencia  := ChildNodes['REFERÊNCIA'].Text;
        tempItens.Qtd         := ChildNodes['Qtd'].Text;
        tempItens.Preco       := ChildNodes['Preço_x0020_uni'].Text;
        tempItens.Qtd := StringReplace(tempItens.Qtd, '.', ',', [rfReplaceAll, rfIgnoreCase]);
        tempItens.Preco := StringReplace(tempItens.Preco, '.', ',', [rfReplaceAll, rfIgnoreCase]);
        if tempItens.Referencia = '' then
          Continue;

        sDescricaoProduto := RetornaProdutoDescricaoPelaReferencia(tempItens.Referencia);
        prdCodigo := BuscaUmDadoSqlAsString('SELECT PRD_CODIGO FROM PRD0000 WHERE PRD_REFER = ' + QuotedStr(tempItens.Referencia)  );
        if prdCodigo = '' then
          MensagemLoadXML := MensagemLoadXML + 'Referência ' + tempItens.Referencia + ' não cadastrada.'  + #13 + #10
        else
        begin
          comissao :=  PercentualComissao(tempItens.Referencia, prdCodigo, EdClienteCodigo.Text, StrToFloat(tempItens.Preco) ) ;
          if comissao>0 then
           totalcomissao := totalcomissao +  (StrToFloat(tempItens.Qtd) * StrToFloat(tempItens.Preco) * (comissao/100));
          GravarPedidoItem(0,
                          '',
                          EdPedidoNumero.Text,
                          prdCodigo,
                          tempItens.Referencia,
                          '',
                          COPY(sDescricaoProduto,1,100),
                          dbInicio.GetParametroSistema('PMT_AMX_VENDA'),
                          '',
                          '',
                          '',
                          '0',
                          True,
                          False,
                          StrToFloat(tempItens.Qtd),
                          StrToFloat(tempItens.Qtd),
                          0,
                          StrToFloat(tempItens.Preco), //preço
                          StrToFloat(tempItens.Preco), //preço bruto
                          0, //custo
                          0,//Margem
                          0,//acrescimo
                          0,//desconto
                          0,//desconto2
                          comissao ,//rComissaoItem
                          0,
                          0,
                          0,
                          0,
                          0,
                          StrToInt(dbInicio.Usuario.Codigo),
                          0,
                          0,
                          0,
                          0,
                          0,
                          0,'');
        end;
      end;
   end;
   BuscaPedido(EdPedidoNumero.Text);
   edArquivoXML.Text := ChangeFileExt(ExtractFileName(OpenDialog1.FileName), '');
   ExecSql('UPDATE PED0000 SET PED_CAMINHO_XML = ' + QuotedStr(edArquivoXML.Text) + ' WHERE PED_CODIGO = ' + QuotedStr(EdPedidoNumero.Text) );

   TestaPasta ( dbInicio.SistemaLocal+'log' );
   arquivoLog := dbInicio.SistemaLocal+'log\XML do Pedido ' + EdPedidoNumero.Text + '.log';
   AssignFile(log, arquivoLog);
   Rewrite(log);
   WriteLn(log, MensagemLoadXML);
   CloseFile(log);

   if MensagemLoadXML <> '' then
     if MessageDlg(MensagemLoadXML + #13 + #13 + 'Gravado em ' + arquivoLog + #13 + #13 + 'Deseja Abrir o Arquivo?', mtWarning, [mbYes, mbNo], 0) = mrYes then
       ShellExecute(0, 'OPEN', PChar(arquivoLog), '', '', SW_SHOWNORMAL);


end;



procedure TFrmPedido.PedidoEmEdicao(pedido: string);
begin
  qAux.Close;
  qAux.SQL.Text := 'SELECT PED_CODIGO, EMP_CODIGO, USU_LOGIN FROM PEDIDO_EM_EDICAO WHERE PED_CODIGO = ' + QuotedStr(pedido) + ' AND EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo);
  qAux.Open;
  if qAux.IsEmpty then
  begin
    qAux.Close;
    qAux.SQL.Text := 'INSERT INTO PEDIDO_EM_EDICAO VALUES (' + QuotedStr(pedido) + ', ' + QuotedStr(DBInicio.Emp_Codigo)+ ', ' + QuotedStr(DBInicio.Usuario.USERNAME) + ')';
    qAux.ExecSql;
  end
  else
  begin
    if qAux.FieldByName('USU_LOGIN').AsString <> DBInicio.Usuario.USERNAME then
    begin
      MessageDlg('Este Pedido está sendo editado pelo usuário ' + qAux.FieldByName('USU_LOGIN').AsString + ', impossível prosseguir.', mtWarning, [mbOk], 0);
      BtnConsultar.Enabled := True;
      PanelAguarde.Visible := False;
      Abort;
    end;

  end;

end;


procedure TFrmPedido.ApagaPedidoEmEdicao();
begin
 ExecSQL('DELETE FROM PEDIDO_EM_EDICAO WHERE USU_LOGIN = ' + QuotedStr(DBInicio.Usuario.USERNAME) + ' AND EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo));
end;

procedure TFrmPedido.CalculaDifal;
var
  wConsumidor, wVenda, opeFreteNaBase, ipiNaBaseICMS, opeICMSTotalNota, bIsentarICMS, bIPIPorUnidade : Boolean;
  wForaEstSN, opeNatureza, iRegCfopPrincipal, wCST_CODIGO, wTemSubs, wExterior : string;
  rAliqAux, wAliqIcmsImportado, wALiqICmsInterEstadual, wALiqICmsInternow, wDifal,
  wALiqICmsInterno, wIcmDifal, wBaseProduto, rateioTmp, rt1, a, b,
  wDescontoIndividual, wFreteIndividual, wSeguroIndividual, wDespesaIndividual, wUfAliqIcmsInterestadlRegra, wBaseIcmsIndividual,
  wAliqreduzidaICMS, wIcmsAliq, wValorIcmsIndividual, wUfAliqIcmsForaEst, wCadProdAliqIcms,
  wALiqICmsCliente, wDesctoValorICMS, wValorProdGeral,wValorProdIndividual, ipiValorPorItem, rValorIPIUnidade,
  lBase, wIPIFrete, wValorIPI, wBaseIPIIndividual, wIPIDESPIMPORT, wRateioFreteSeguroDesp,
  wBaseIcms, wBaseValorSubs, sNF_ICMSVALOR, wDesctoValorIPI  : double;
  IcmTipoCalculoDifal, bRegra, GetCSOSN: integer;

begin

  if not DBInicio.Empresa.PMT_VALOR_DIFAL_PEDIDO then
  begin
    CurTotalDifal.Value := 0;
    ExecSql('UPDATE PED0000 SET PED_VLDIFAL = ' + FloatToSQL(wIcmDifal) + ' WHERE PED_CODIGO = ' + QuotedStr(EdPedidoNumero.Text) );
    Exit;
  end;

  if not SqlCdsPedidoItem.Active
    then exit;

  if EdClienteCodigo.Text = '' then
  begin
    wConsumidor := cbOrsConsFinal.ItemIndex = 0;
    if (cbbClienteEstado.Text <> DBInicio.Empresa.UF) then
      wForaEstSN := 'S'
    else
      wForaEstSN := 'N';
  end
  else
  begin
    // wConsumidor := (BuscaUmDadoSqlAsString('SELECT CLI_CONSFINAL FROM CLI0000 WHERE CLI_CODIGO = ' + QuotedStr(EdClienteCodigo.Text)) = 'S');
    wConsumidor := (BuscaUmDadoSqlAsString('SELECT CLI_CONSFINAL FROM PED0000 WHERE PED_CODIGO = ' + QuotedStr(EdPedidoNumero.Text)) = 'S');
    if (EdClienteUF.Text <> DBInicio.Empresa.UF) then
      wForaEstSN := 'S'
    else
      wForaEstSN := 'N';
  end;

  qAux.Close;
  qAux.SQL.Text := 'SELECT * FROM OPE0000 WHERE OPE_CODIGO = ' + QuotedStr(edCfop.idRetorno) + ConcatSe( ' AND ', dbInicio.ExclusivoSql('OPERACAOFISCAL'));
  qAux.Open;
  wVenda := qAux.FieldByName('OPE_TIPO_OPERACAO').AsString = 'V';
  opeFreteNaBase := qAux.FieldByName('OPE_FRETENABASE').AsString = 'S';
  ipiNaBaseICMS := qAux.FieldByName('OPE_IPINABASEICMS').AsString = 'S';
  opeICMSTotalNota:=  qAux.FieldByName('OPE_ICMS_TOTALNOTA').AsString = 'S';
  opeNatureza := qAux.FieldByName('OPE_NATUREZA').AsString;
  iRegCfopPrincipal := qAux.FieldByName('OPE_CODIGO').AsString;

  qAux2.Close;
  qAux2.Sql.Text := 'select ICM_ALIQ, ' +
                    '       ICMS_SUBS, '  +
                    '       ICMS_PROD_IMPORTADO, ' +
                    '       SOMA_MVA_SN, ' +
                    '       ICM_MVA, ' +
                    '       ICM_SUB_TRI_SN, ' +
                    '       ICMS_REDUZIDO, ' +
                    '       FCP_PERC, ' +
                    '       ICM_TIPO_CALCULO_DIFAL ' +
                    'from ICM0000 WHERE ICM_DESTINO = ' + quotedstr(EdClienteUF.Text) + ConcatSe( ' AND ', dbInicio.ExclusivoSql('ICMS') )  ;
  qAux2.open;
  wAliqIcmsImportado    := qAux2.FieldByName('ICMS_PROD_IMPORTADO').asCurrency;
  wALiqICmsInterEstadual := qAux2.FieldByName('ICM_ALIQ').asCurrency; // INTERESTADUAL
  wALiqICmsInterno      := qAux2.FieldByName('ICMS_SUBS').asCurrency;  // ESTADUAL
  icmTipoCalculoDifal   := qAux2.FieldByName('ICM_TIPO_CALCULO_DIFAL').AsInteger;
  wAliqreduzidaICMS  := qAux2.FieldByName('ICMS_REDUZIDO').AsFloat;

  wExterior := iif(EdClienteUF.Text = 'EX', 'S', 'N');

  if FormFatPedido = nil then
    FormFatPedido := TFormFatPedido.Create(frmPedido);

  bRegra := FormFatPedido.BuscaRegra ( '', EdClienteUF.Text, iRegCfopPrincipal, ''  ) ;

  openaux3 ( 'SELECT * FROM ope_regra where opr_registro = ' + IntToStr( bRegra ) );
  if qAux3.FieldByName('OPR_ISENTARICIMS').AsString = 'S' then
    bIsentarICMS := True
  else
    bIsentarICMS := False;

  wValorProdGeral := BuscaUmDadoSqlAsFloat('SELECT SUM(PRF_QTDE * PRF_PRECO) FROM PED_IT01 pi2 WHERE PED_CODIGO = ' + QuotedStr(EdPedidoNumero.Text) +  ' AND EMP_CODIGO =' + QuotedStr(DBInicio.Emp_Codigo) );



  wIcmDifal := 0;


  if wConsumidor and wVenda and (wForaEstSN = 'S') and DBInicio.Empresa.PMT_HABILITAR_DIFAL then  // SO INTERESTADUAL decreto EC 87(VENDA FORA DO ESTADO A CONSUMIDOR FINAL )
  begin

    SqlCdsPedidoItem.DisableControls;
    SqlCdsPedidoItem.First;
    while not SqlCdsPedidoItem.Eof  do
    begin

      rt1 := (Uteis.RoundTo( (SqlCdsPedidoItemPRF_QTDE.asCurrency * SqlCdsPedidoItemPRF_PRECO.asCurrency) , -2)/ wValorProdGeral) ;
      wDescontoIndividual := Uteis.RoundTo(rt1 * CurDescontoNotaFiscalValor.Value,-2);
      wFreteIndividual :=  Uteis.RoundTo(rt1 * CurFrete.Value,-2);
      wSeguroIndividual := Uteis.RoundTo(rt1 * CurSeguro.Value,-2);
      wDespesaIndividual := Uteis.RoundTo(rt1 * CurDespesasAcessorias.Value,-2);



      wBaseProduto := (SqlCdsPedidoItemPRF_QTDE.asCurrency * SqlCdsPedidoItemPRF_PRECO.asCurrency)  ;
      wValorProdIndividual := wBaseProduto;



                    wCST_CODIGO := BuscaUmDadoSQLAsString( ' SELECT COALESCE(p.STB_TRIBUTACAO,''00'') AS STB_TRIBUTACAO FROM PRD0000 p JOIN PED_IT01 pi2 ON p.PRD_REFER = pi2.PRD_REFER WHERE PED_CODIGO = ' + QuotedStr(EdPedidoNumero.Text) + ' AND pi2.PRD_REFER = ' + QuotedStr(SqlCdsPedidoItemPRD_REFER.AsString) ) ;

                    if MatchStr(wCST_CODIGO,['10','30','70'])   then
                       wTemSubs := 'S'
                    else
                       wTemSubs := 'N';


                     if (dbInicio.Empresa.PMT_PEDIDO_IND_PLASTICA)  then
                     begin
                        if (BuscaUmDadoSqlAsInteger(
                           ' SELECT COUNT(rfpc.PRD_REFER) ' +
                           ' FROM OPE_REGRA opr ' +
                           '   LEFT JOIN REGRA_FISCAL_PROD_CAP rfpc ON (rfpc.OPR_REGISTRO = opr.OPR_REGISTRO) ' +
                           '   LEFT JOIN OPE0000 o ON o.OPE_CODIGO = opr.OPE_CODIGO_ORIGEM ' +
                           ' WHERE rfpc.PRD_REFER = ' + QuotedStr(SqlCdsPedidoItemPRD_REFER.AsString) +
                           '   AND rfPC.CAP_CODIGO = ' + IntToStr(StrToIntDef(SqlCdsPedidoItemCAP_CODIGO.AsString, 0))
                        ) > 0) and (wCST_CODIGO <> '00')
                        then wTemSubs := 'S'
                        else wTemSubs := 'N'
                        ;
                     end;



                    if qAux.FieldByName('EMP_CSOSN').AsInteger <> 0 then
                      GetCSOSN := qAux.FieldByName('EMP_CSOSN').AsInteger; // pega da cfop
                    if (qAux.FieldByName('EMP_CSOSN_ST').AsInteger <> 0) and (wTemSubs = 'S') then
                     GetCSOSN := qAux.FieldByName('EMP_CSOSN_ST').AsInteger;





										// Tributar ICMS verificar em Natureza da Operação
										// quando a empresa é do simples, preciso calcular o icms normal para fazer os calculos da substituição tributaria, se houver
										// antes de gravar sera zerado os valores de base e valor de icms
										// CST 40, 41 e 50 nao deve tributar ICMS
										if ((wCST_CODIGO <> '40') and (wCST_CODIGO <> '41') and (wCST_CODIGO <> '50')) or bIsentarICMS then
										begin
												 if (qAux.FieldByName('OPE_TRIBICMS').AsString = 'S') or ((DBInicio.Empresa.OPT_SIMPLES = 'S') and (GetCSOSN <> 900) and (DBInicio.Empresa.emp_crt = '1')) then
												 begin
															// OPERAÇÃO FISCAL -Tributar ICMS = 'S'
															// aplicar aliquota do ICMS
															// não se preocupar, logo abaixo o sistema vai aplicar desconto nos icms se tiver desconto na nota
                              wUfAliqIcmsInterestadlRegra := qAux3.FieldByName('OPR_ALIQ_INTERESTADUAL').AsFloat; // adr

                              wCadProdAliqIcms := SqlCdsPedidoItemPRD_ALIQICM.AsFloat;
                              if wCadProdAliqIcms > 0 then
                                   wIcmsAliq := wCadProdAliqIcms;
                              //Achar Regra da Classificação Fiscal por Estado
                              if (SqlCdsPedidoItemIPI_CODIGO.AsString <> '') then
                              begin
                                  wIcmsAliq :=BuscaUmDadoSqlasFloat (  'SELECT IPII_ALIQUOTA FROM IPI0000_ICMS '+
                                                                       'WHERE IPI_CODIGO = ' + QStr(SqlCdsPedidoItemIPI_CODIGO.AsString) +
                                                                       ' and IPII_ESTADO = ' + QStr(EdClienteUF.Text)+
                                                                       ConcatSe( ' and ' , dbInicio.ExclusivoSql('TABELAS') ) );

                                   if wIcmsAliq > 0 then
                                   begin
                                        wALiqICmsCliente := wIcmsAliq;
                                        wCadProdAliqIcms := wIcmsAliq;
                                   end;
                              end;

															if wUfAliqIcmsInterestadlRegra > 0 then
															begin
																	 wBaseIcmsIndividual := Uteis.RoundTo ( SqlCdsPedidoItemPRF_QTDE.asCurrency * SqlCdsPedidoItemPRF_PRECO.asCurrency, -2);

																	if (wBaseIcmsIndividual > 0) and (wAliqreduzidaICMS > 0) then
																		 wBaseIcmsIndividual := wBaseIcmsIndividual - (wBaseIcmsIndividual * (wAliqreduzidaICMS / 100));

																	if (wAliqreduzidaICMS <> 100) then    // ICMS NORMAL
																			begin
  																			// Produtos importandos tributar com aliquota diferenciada


                                        if (wExterior = 'N') and (qAux2.FieldByName('ICMS_PROD_IMPORTADO').AsFloat > 0) and
                                           (MatchStr(BuscaUmDadoSQLAsString('SELECT PRD_ORIGEM FROM PRD0000 p WHERE PRD_REFER = ' + QuotedStr(SqlCdsPedidoItemPRD_REFER.AsString)),['1','2','3','8'])) then
                                        begin
                                          wIcmsAliq := qAux2.FieldByName('ICMS_PROD_IMPORTADO').AsFloat;
                                          wUfAliqIcmsInterestadlRegra := qAux2.FieldByName('ICMS_PROD_IMPORTADO').AsFloat;
                                        end
                                        else wIcmsAliq := wUfAliqIcmsInterestadlRegra ;





																			 wValorIcmsIndividual := wValorIcmsIndividual + Uteis.RoundTo ( (( SqlCdsPedidoItemPRF_QTDE.asCurrency * SqlCdsPedidoItemPRF_PRECO.asCurrency) - wDescontoIndividual) *  wUfAliqIcmsInterestadlRegra / 100, -2);
																			 // wValorIcmsIndividual := wValorIcmsIndividual + Uteis.RoundTo ( CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat * CdsItemPedidoPRF_PRECO.AsFloat *  wUfAliqIcmsInterestadlRegra / 100, -2);
																			end;
															end
															else
															if (wForaEstSN = 'S') then // venda interestadual
															begin
																	wBaseIcmsIndividual := Uteis.RoundTo ( (SqlCdsPedidoItemPRF_QTDE.asCurrency * SqlCdsPedidoItemPRF_PRECO.asCurrency) - wDescontoIndividual, -2);

																	if (wBaseIcmsIndividual > 0) and (wAliqreduzidaICMS > 0) then
																		 wBaseIcmsIndividual := wBaseIcmsIndividual - (wBaseIcmsIndividual * (wAliqreduzidaICMS / 100));

																	if (wAliqreduzidaICMS <> 100) then      // é icms normal
																	begin
																		 // Produtos importandos tributar com aliquota diferenciada 4%
																		 if (wExterior = 'N') and ((SqlCdsPedidoItemPRD_ORIGEM.AsString = '1') or (SqlCdsPedidoItemPRD_ORIGEM.AsString = '2') or (SqlCdsPedidoItemPRD_ORIGEM.AsString = '3') or (SqlCdsPedidoItemPRD_ORIGEM.AsString = '8') ) then
																					begin
																					 wUfAliqIcmsForaEst:= qAux2.FieldByName('ICMS_PROD_IMPORTADO').AsFloat;
																					 wIcmsAliq := wUfAliqIcmsForaEst;
																					end
																		 else
																				 wIcmsAliq := wUfAliqIcmsForaEst;

																			wValorIcmsIndividual := wValorIcmsIndividual + Uteis.RoundTo(((SqlCdsPedidoItemPRF_QTDE.asCurrency * SqlCdsPedidoItemPRF_PRECO.asCurrency) - wDescontoIndividual) * wUfAliqIcmsForaEst / 100, -2);

																	end;

															end
															else
															if wCadProdAliqIcms > 0 then
															begin
																	// com aliquota no produto
																	// Incidência de ICMS VIA - PRODUTO
																	// Aliquota estadual -cadastro do produto é a tributação da UF da EMPRESA

																	wBaseIcmsIndividual := Uteis.RoundTo (SqlCdsPedidoItemPRF_QTDE.asCurrency * SqlCdsPedidoItemPRF_PRECO.asCurrency  - wDescontoIndividual,-2);

																	if (wBaseIcmsIndividual > 0) and (wAliqreduzidaICMS > 0) then
																		 wBaseIcmsIndividual := wBaseIcmsIndividual - (wBaseIcmsIndividual * wAliqreduzidaICMS / 100);

																	if (wAliqreduzidaICMS <> 100) then
																	begin
																			 wValorIcmsIndividual := wValorIcmsIndividual +
																															 Uteis.RoundTo(wBaseIcmsIndividual * wCadProdAliqIcms / 100, -2);
																			 wIcmsAliq := wCadProdAliqIcms;
																	end;
															end
															else  // sem aliquota no produto- usa da tabela do estado
															begin

																	if (DBInicio.Empresa.OPT_SIMPLES = 'S') or (wForaEstSN = 'N') then
																	begin
																			 //wBaseIcmsIndividual := Uteis.RoundTo ( wBaseIcmsIndividual + SimpleUteis.RoundTo(CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat * CdsItemPedidoPRF_PRECO.AsFloat)));
																			 wBaseIcmsIndividual := Uteis.RoundTo( SqlCdsPedidoItemPRF_QTDE.asCurrency * SqlCdsPedidoItemPRF_PRECO.asCurrency , -2 );

																			 if (wBaseIcmsIndividual > 0) and (wAliqreduzidaICMS > 0) then
																					wBaseIcmsIndividual := wBaseIcmsIndividual - (wBaseIcmsIndividual * wAliqreduzidaICMS / 100);

																			 if (wAliqreduzidaICMS <> 100) then
																			 begin
																						wValorIcmsIndividual := wValorIcmsIndividual + Uteis.RoundTo ( ((SqlCdsPedidoItemPRF_QTDE.asCurrency * SqlCdsPedidoItemPRF_PRECO.asCurrency) - wDescontoIndividual) * wALiqICmsCliente / 100 , -2 );
																						wIcmsAliq := wALiqICmsCliente;
																			 end;
																	end;

															end;

															// Aplicar o valor do desconto no ICMS (com rateio) antes de acrescentar outros na base do ICMS
															if CurDescontoNotaFiscalValor.Value > 0 then
															begin
   														     wDesctoValorICMS := Uteis.RoundTo ( (wIcmsAliq / 100) * (CurDescontoNotaFiscalValor.Value / wValorProdGeral * wValorProdIndividual) , -2 );
																	 // calcula a base do icms referente ao icms com desconto
																	 wBaseIcmsIndividual := wValorProdIndividual - wDescontoIndividual;
															end
															else
																	wDesctoValorICMS := 0;





                             bIPIPorUnidade := False;
                             rValorIPIUnidade := 0;

                              if (qAux.FieldByName('OPE_TRIBIPI').AsString = 'S') then
                              begin
                                   if (SqlCdsPedidoItemIPI_CODIGO.AsString <> '') then
                                   begin
                                        ipiValorPorItem := BuscaUmDadoSqlAsFloat( 'select IPI_VALOR_POR_ITEM from IPI0000 where IPI_CODIGO = ' + qStr(SqlCdsPedidoItemIPI_CODIGO.AsString) );
                                        if (ipiValorPorItem > 0) then
                                        begin
                                             bIPIPorUnidade := True;
                                             rValorIPIUnidade := ipiValorPorItem;
                                        end;
                                   end;

                                   if (bIPIPorUnidade) then
                                      wValorIPI := rValorIPIUnidade * SqlCdsPedidoItemPRF_QTDE.AsFloat
                                   else
                                   begin
                                        //rateio do frete/Seguro e desp. aces. na base do IPI  - Formula : FRETE/TOTAL DOS PRODUTOS DA NOTA*TOTAL UNITARIO DE CADA PRODUTO
                                        if (qAux.FieldByName('OPE_FRETEBASEIPI').AsString = 'S') then
                                        begin
                                             lBase := (CurFrete.Value + CurSeguro.Value + CurDespesasAcessorias.Value ) / wValorProdGeral * wValorProdIndividual;
                                             wIPIFrete := Uteis.RoundTo ( SqlCdsPedidoItemPRF_IPIALIQ.AsFloat / 100 * lBase , -2 );
                                             wBaseIPIIndividual := Uteis.RoundTo( wBaseIPIIndividual + lBase , -2 );
                                        end
                                        else
                                            wIPIFrete := 0;

                                        // Calculo IPI
                                        if CurDescontoNotaFiscalValor.Value > 0 then    // é desconto para aplicar na nota
                                            wValorIPI := Uteis.RoundTo( (SqlCdsPedidoItemPRF_IPIALIQ.AsFloat/100) * ( SqlCdsPedidoItemPRF_QTDE.asCurrency * SqlCdsPedidoItemPRF_PRECO.asCurrency ), -2)    // p bruto
                                        else
                                            wValorIPI := Uteis.RoundTo( (SqlCdsPedidoItemPRF_IPIALIQ.AsFloat/100) * ( SqlCdsPedidoItemPRF_QTDE.asCurrency * SqlCdsPedidoItemPRF_PRECO.asCurrency ), -2);         // p liquido

                                        // Incluir Despesas de Importação na Base do IPI com rateio por item
                                        // Formula : DESPESAS DE IMPORTAÇÃO/TOTAL DOS PRODUTOS DA NOTA*TOTAL UNITARIO DE CADA PRODUTO
                                        if (qAux.FieldByName('OPE_DESPIMPORIPI').AsString = 'S') then
                                           wIPIDESPIMPORT := Uteis.RoundTo ( (SqlCdsPedidoItemPRF_IPIALIQ.AsFloat / 100) * (SqlCdsPedidoPED_DESP_IMPOR.AsFloat / wValorProdGeral * wValorProdIndividual), -2 )
                                        else
                                           wIPIDESPIMPORT := 0;

                                        // Redução IPI
                                        if (qAux.FieldByName('OPE_REDU_IPI').AsFloat > 0) and (wValorIPI > 0) then //a variavel wValorIPIND soma todos os ipi dos produtos que tem icms exclusivo pode resultar em valor negativo}
                                           wValorIPI := wValorIPI - Uteis.RoundTo ( wValorIPI * qAux.FieldByName('OPE_REDU_IPI').AsFloat / 100, -2);
                                   end;

                                   { Aplicar desconto no valor do IPI fazendo o rateio por item da nota - so aplicade desconto NO IPI quando é
                                    desconto nos itens de venda. se  marcado desconto na nota o IPI deve ser cheio sem o desconto}


                                   if CurDescontoNotaFiscalValor.Value > 0 then    // é desconto para aplicar na nota
                                   begin
                                        // rateio do valor do desconto para cada item da nota (util para ICMS)
                                        // wDesctoItemValor := Uteis.RoundTo ( CurDescontoNotaFiscalValor.Value / wValorProdGeral * wValorProdIndividual, -2);
                                        // rateio do valor do IPI
                                        wDesctoValorIPI := Uteis.RoundTo ( (SqlCdsPedidoItemPRF_IPIALIQ.AsFloat / 100) * (CurDescontoNotaFiscalValor.Value/ wValorProdGeral * wValorProdIndividual), -2);
                                   end
                                   else
                                   begin
                                        // wDesctoItemValor := 0;
                                        wDesctoValorIPI := 0;
                                   end;


                              end;







															// Acrescentar IPI na base do ICMS; operacao para consumidor final
															if (qAux.FieldByName('OPE_IPINABASEICMS').AsString = 'S') then
															begin
																	 wBaseIcmsIndividual := Uteis.RoundTo ( wBaseIcmsIndividual + wValorIPI + wIPIDESPIMPORT, -2);
																	 wValorIcmsIndividual := Uteis.RoundTo ( wBaseIcmsIndividual * wIcmsAliq / 100 ,-2);
															end;

															// Incluir frete rateando o valor do frete e desp. na base do ICMS

															if (qAux.FieldByName('OPE_FRETENABASE').AsString = 'S') and ((CurFrete.Value > 0) or (CurSeguro.Value > 0) or (CurDespesasAcessorias.Value > 0)) then
															begin
																	 wRateioFreteSeguroDesp := Uteis.RoundTo( (CurFrete.Value + CurSeguro.Value + CurDespesasAcessorias.Value) / wValorProdGeral * (SqlCdsPedidoItemPRF_QTDE.asCurrency * SqlCdsPedidoItemPRF_PRECO.asCurrency), -2);
																	 wBaseIcmsIndividual := Uteis.RoundTo ( wBaseIcmsIndividual + wRateioFreteSeguroDesp,-2);
																	 wValorIcmsIndividual := Uteis.RoundTo ( (wBaseIcmsIndividual * wIcmsAliq) / 100, -2);
															end;
                               wBaseIcms :=  wBaseIcmsIndividual ; //base de icms sem redução da base
															//aplicando o percentual (multiplicador) de diminuição da base do ICMS
															if qaux.FieldByName('OPE_INDICE_IMP').AsFloat > 0 then
															begin
																	 wBaseIcmsIndividual := Uteis.RoundTo ( wBaseIcmsIndividual - (wBaseIcmsIndividual * qAux.FieldByName('OPE_INDICE_IMP').AsFloat / 100),-2);
																	 wValorIcmsIndividual := Uteis.RoundTo ( wValorIcmsIndividual - (wValorIcmsIndividual * qAux.FieldByName('OPE_INDICE_IMP').AsFloat) / 100,-2);
															end;

															//aplicando o fator (divisor) de aumento para base do ICMS
															if qAux.FieldByName('OPE_AUMEN_ICMS').AsFloat > 0 then
															begin
																	 wBaseIcmsIndividual := Uteis.RoundTo ( wBaseIcmsIndividual / qaux.FieldByName('OPE_AUMEN_ICMS').AsFloat,-2 );
                                   wValorIcmsIndividual := Uteis.RoundTo ( (wBaseIcmsIndividual * wIcmsAliq) / 100, -2);
																	 //wValorIcmsIndividual := Uteis.RoundTo ( wValorIcmsIndividual / qOperFiscOPE_AUMEN_ICMS.AsFloat, -2 );
															end;

															// calcular redução da aliquota do ICMS que consta na tabela do ICMS do estado
															// BASE ICMS * REDUZIDA / ALIQUOTA INTERNA
															if (wAliqreduzidaICMS > 0) and (wAliqreduzidaICMS <> 100) then
															begin
																	 // a aliquota reduzida é calculada sobre a base do icms normal
																	 wValorIcmsIndividual := Uteis.RoundTo ( wBaseIcmsIndividual * wAliqreduzidaICMS / 100 , -2);
																	 // a base no icms normal agora é reduzida pela dividao do vl do icms pela aliq normal
																	 wBaseIcmsIndividual := Uteis.RoundTo ( wBaseIcmsIndividual * wAliqreduzidaICMS / wIcmsAliq, -2 );
															end;

															// Aplicar REDUÇÃO PERCENTUAL do valor do ICMS . Não aplicar reducao para empresa do simples pois so fazendo calculo para achar valor ST
															if (qAux.FieldByName('OPE_REDU_ICM').AsFloat > 0) then //and (fOPT_SIMPLES <> 'S') then
																wValorIcmsIndividual := Uteis.RoundTo ( wValorIcmsIndividual - (wValorIcmsIndividual * qAux.FieldByName('OPE_REDU_ICM').AsFloat/ 100),-2);

												 end;  // fim do laço ICMS

												 // ratear frete+seguro+despesas para substitução tributária
												 // na legislação da substituição tributária sempre é somado estes valores na base da substituição
												 if (wTemSubs = 'S') then
												 begin
															if wIcmsAliq=0 then
																 wIcmsAliq := wUfAliqIcmsForaEst;
															wRateioFreteSeguroDesp := Uteis.RoundTo ( (CurFrete.Value + CurSeguro.Value + CurDespesasAcessorias.Value) / wValorProdGeral * (SqlCdsPedidoItemPRF_QTDE.asCurrency * SqlCdsPedidoItemPRF_PRECO.asCurrency), -2);
                              wRateioFreteSeguroDesp := wRateioFreteSeguroDesp - wDescontoIndividual;
															wBaseValorSubs := Uteis.RoundTo ( wBaseValorSubs + wRateioFreteSeguroDesp, -2);
												 end;

										end;  // fim  CST

                    sNF_ICMSVALOR := wValorIcmsIndividual;
                    if not ((DBInicio.Empresa.OPT_SIMPLES = 'S') and (DBInicio.Empresa.emp_crt = '1')) then
                       sNF_ICMSVALOR := wValorIcmsIndividual // iif(wValorIcms = 0, wValorIcmsIndividual, wValorIcms)
                    else
                    if ( GetCSOSN <> 900) and (DBInicio.Empresa.emp_crt = '1') AND (DBInicio.Empresa.OPT_SIMPLES = 'S') then
                       sNF_ICMSVALOR := 0;




      if ipiNaBaseICMS  then
        wBaseProduto := wBaseProduto + (wBaseProduto / 100 * SqlCdsPedidoItemPRF_IPIALIQ.AsCurrency);


      if opeFreteNaBase then
        wBaseProduto := wBaseProduto + (( + wSeguroIndividual + wFreteIndividual + wDespesaIndividual) - wDescontoIndividual)
      else
        wBaseProduto := (SqlCdsPedidoItemPRF_QTDE.asCurrency * SqlCdsPedidoItemPRF_PRECO.asCurrency) - wDescontoIndividual  ;

      if opeICMSTotalNota then
       wBaseProduto := wBaseProduto * (1 + sNF_ICMSVALOR);
      wBaseProduto := wBaseProduto -  wDesctoValorIPI;






      // não é exportação e origem = 1,2 ou 3(importados)
      if (wAliqIcmsImportado > 0) and ( (SqlCdsPedidoItemPRD_ORIGEM.AsInteger = 1) or (SqlCdsPedidoItemPRD_ORIGEM.AsInteger = 2) or (SqlCdsPedidoItemPRD_ORIGEM.AsInteger = 3) ) then
        rAliqAux := wAliqIcmsImportado
      else
        rAliqAux := wALiqICmsInterEstadual;
      wDifal := (wALiqICmsInterno - rAliqAux) ;      // percentual do difal
      if (wConsumidor) and (dbInicio.Empresa.UF <> EdClienteUF.Text) then
      begin
        if IcmTipoCalculoDifal = 1 then // o cálculo é com base por dentro
        begin
          a := wBaseProduto - ((wBaseProduto / 100) *  rAliqAux);
          b := a / (1 -(wALiqICmsInterno / 100));
          wIcmDifal := wIcmDifal +  ( b - wBaseProduto )  // wIcmDifal valor do difal
        end
        else // o cálculo é com base por fora
        begin
          wIcmDifal := wIcmDifal + wBaseProduto * (wDifal / 100) // wIcmDifal valor do difal
        end;

      end
      else
        wIcmDifal := wIcmDifal + ( wBaseProduto / 100 ) * wDifal;  // wIcmDifal valor do difal
      SqlCdsPedidoItem.Next;
    end;

  end;

  SqlCdsPedidoItem.EnableControls;
  CurTotalDifal.Value := wIcmDifal;
  ExecSql('UPDATE PED0000 SET PED_VLDIFAL = ' + FloatToSQL(wIcmDifal) + ' WHERE PED_CODIGO = ' + QuotedStr(EdPedidoNumero.Text) );
  freeandnil(FormFatPedido);
end;


procedure TFrmPedido.miAlterarPesoClick(Sender: TObject);
begin
  inherited;
  gbAlterarPeso.Left := (Self.Width div 2) - (gbAlterarPeso.Width div 2);
  gbAlterarPeso.Top := (Self.Height div 2) - (gbAlterarPeso.Height div 2);
  gbAlterarPeso.BringToFront;
  curPeso.Value := SqlCdsPedidoItemPRF_PESO.AsFloat;
  gbAlterarPeso.Visible := True;
  curPeso.SetFocus;
end;

procedure TFrmPedido.btSalvaPesoClick(Sender: TObject);
begin
  inherited;
  ExecSql( 'UPDATE PED_IT01 SET PRF_PESO = ' + FloatToSQL(CurPeso.Value) + ' WHERE PRF_REGISTRO = ' + SqlCdsPedidoItemPRF_REGISTRO.AsString );
  gbAlterarPeso.Visible := False;
  SqlCdsPedidoItem.Refresh;
end;

procedure TFrmPedido.btCancelaPesoClick(Sender: TObject);
begin
  inherited;
  gbAlterarPeso.Visible := False;
end;

procedure TFrmPedido.curPesoExit(Sender: TObject);
begin
  inherited;
  if not (btSalvaPeso.Focused or btCancelaPeso.Focused)  then
    curPeso.SetFocus;
end;

end.




