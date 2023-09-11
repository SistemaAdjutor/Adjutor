unit Nfs0003;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Provider, SqlExpr,SqlClientDataSet, DB, DBClient, DBCtrls, Math,
  Grids, DBGrids, StdCtrls, Mask,  rxToolEdit, Buttons,RwFunc, ppBands, ppVar,
  ppCtrls, ppPrnabl, ppClass, ppCache, ppDB, ppProd, ppReport, ppComm,
  ppRelatv, ppDBPipe, ExtCtrls, ppModule, raCodMod, FMTBCd,
  MIDASLIB, frxClass, frxDBSet,
  ImgList, RXDBCtrl, Data.DBXFirebird, ppDesignLayer, ppParameter,
  System.ImageList, SimpleDS, BaseDBForm, ACBrBase, ACBrDFe, ACBrNFe, ACBrEnterTab, ACBrCalculadora, JvBaseDlg, JvSelectDirectory,
  animacao, SgDbSeachComboUnit, JvExMask, JvToolEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, BaseDBFormFdac;

type
  TFormConsNFGrid = class(TfrmBaseDB)
    Lb_lista: TLabel;
    Label1: TLabel;
    DsNF: TDataSource;
    SqlCdsItensNF: TSQLClientDataSet;
    DsItemNF: TDataSource;
    SqlCdsItensNFENF_REGISTRO: TIntegerField;
    SqlCdsItensNFENF_IT_NOTANUMBER: TStringField;
    SqlCdsItensNFOCP_CODIGO: TStringField;
    SqlCdsItensNFPRD_REFER: TStringField;
    SqlCdsItensNFPRD_DESCRI: TStringField;
    SqlCdsItensNFENF_QTDE: TFMTBCdField;
    SqlCdsItensNFENF_PRECO: TFMTBCdField;
    SqlCdsItensNFENF_IPIALIQ: TFMTBCdField;
    SqlCdsItensNFENF_VLSUBST: TFMTBCdField;
    SqlCdsItensNFFOR_CODIGO: TStringField;
    SqlCdsItensNFENF_TOTAL_CC: TCurrencyField;
    ppRpImpNota: TppReport;
    SqlCdsImpNotas: TSQLClientDataSet;
    DsImpNota: TDataSource;
    SqlCdsItensNFAMX_CODIGO: TStringField;
    SqlCdsItensNFEMP_CODIGO: TStringField;
    SqlCdsItensNFAMX_DESCRI: TStringField;
    PanEntradaNF: TPanel;
    Panel4: TPanel;
    BitBtn2: TBitBtn;
    PrinterEntradaNF: TPrinterSetupDialog;
    DsNotasDetalhada: TDataSource;
    SqlCdsFornecedor: TSQLClientDataSet;
    SqlCdsFornecedorFOR_CODIGO: TStringField;
    SqlCdsFornecedorFOR_RAZAO: TStringField;
    ppHeaderBand1: TppHeaderBand;
    ppLine14: TppLine;
    LBL_00_EMPRESA: TppLabel;
    LBL_00_TITULO1: TppLabel;
    LBL_00_TITULO2: TppLabel;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable12: TppSystemVariable;
    ppLine29: TppLine;
    ppLine1: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel22: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBTextFornecedor: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText21: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine2: TppLine;
    ppLabel9: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLabel12: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    raCodeModule1: TraCodeModule;
    SqlCdsAlmox: TSQLClientDataSet;
    SqlCdsAlmoxAMX_CODIGO: TStringField;
    SqlCdsAlmoxAMX_DESCRI: TStringField;
    SqlCdsAlmoxAMX_TIPO: TStringField;
    SqlCdsAlmoxEMP_CODIGO: TStringField;
    ppRpImpNotaDetalhado: TppReport;
    CdsImpNotasDetalhada: TClientDataSet;
    SqlCdsImpNotasDetalhada: TSQLClientDataSet;
    SqlCdsImpNotasDetalhadaENF_QTDE: TFMTBCdField;
    SqlCdsImpNotasDetalhadaENF_PRECO: TFMTBCdField;
    SqlCdsImpNotasDetalhadaENF_IPIALIQ: TFMTBCdField;
    SqlCdsImpNotasDetalhadaAMX_CODIGO: TStringField;
    SqlCdsImpNotasDetalhadaAMX_DESCRI: TStringField;
    SqlCdsImpNotasDetalhadaOCP_CODIGO: TStringField;
    SqlCdsImpNotasDetalhadaENF_EMISSAO: TDateField;
    SqlCdsImpNotasDetalhadaFOR_CODIGO: TStringField;
    SqlCdsImpNotasDetalhadaENF_TOT_PROD: TFMTBCdField;
    SqlCdsImpNotasDetalhadaENF_VLFRETE: TFMTBCdField;
    SqlCdsImpNotasDetalhadaENF_VLSEGURO: TFMTBCdField;
    SqlCdsImpNotasDetalhadaENF_DESP_ACES: TFMTBCdField;
    SqlCdsImpNotasDetalhadaENF_TOT_NOTA: TFMTBCdField;
    SqlCdsImpNotasDetalhadaFOR_RAZAO: TStringField;
    CdsImpNotasDetalhadaENF_IT_NOTANUMBER: TStringField;
    CdsImpNotasDetalhadaAMX_CODIGO: TStringField;
    CdsImpNotasDetalhadaAMX_DESCRI: TStringField;
    CdsImpNotasDetalhadaOCP_CODIGO: TStringField;
    CdsImpNotasDetalhadaENF_EMISSAO: TDateField;
    CdsImpNotasDetalhadaFOR_CODIGO: TStringField;
    CdsImpNotasDetalhadaFOR_RAZAO: TStringField;
    CdsImpNotasDetalhadaTOTAL_PRODUTOS: TCurrencyField;
    CdsImpNotasDetalhadaVALOR_IPI: TCurrencyField;
    CdsImpNotasDetalhadaTOTAL_NF: TCurrencyField;
    ppLabel11: TppLabel;
    ppDBText13: TppDBText;
    SqlCdsImpNotasDetalhadaENF_ENTRADA: TDateField;
    CdsImpNotasDetalhadaENF_ENTRADA: TDateField;
    ppDBImpNota1: TppDBPipeline;
    ppLabel31: TppLabel;
    ppDBText31: TppDBText;
    ppHeaderBand2: TppHeaderBand;
    ppLine3: TppLine;
    LBL_01_EMPRESA: TppLabel;
    LBL_01_TITULO1: TppLabel;
    LBL_01_TITULO2: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLine4: TppLine;
    ppDetailBand1: TppDetailBand;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    DBTextFornecedor: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText12: TppDBText;
    ppDBText14: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLabel28: TppLabel;
    ppLine12: TppLine;
    ppDBCalc9: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel29: TppLabel;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppLine17: TppLine;
    ppLine10: TppLine;
    ppLabel21: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLine11: TppLine;
    ppLabel27: TppLabel;
    ppLabel10: TppLabel;
    ppLabel13: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel32: TppLabel;
    ppLine16: TppLine;
    ppDBCalc8: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    raCodeModule2: TraCodeModule;
    ppDBText5: TppDBText;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppLabel14: TppLabel;
    CdsImpNotasDetalhadaVALOR_ICMS: TCurrencyField;
    SqlCdsImpNotasDetalhadaENF_ALIQ_ICMS: TFMTBCdField;
    ppDBImpNota: TppDBPipeline;
    SqlNF: TSQLQuery;
    DspNF: TDataSetProvider;
    CdsNF: TClientDataSet;
    CdsNFOPE_NATUREZA: TStringField;
    CdsNFENF_EMISSAO: TDateField;
    CdsNFOCP_CODIGO: TStringField;
    CdsNFFOR_CODIGO: TStringField;
    CdsNFENF_TOT_PROD: TFMTBCdField;
    CdsNFENF_VLFRETE: TFMTBCdField;
    CdsNFENF_VLSEGURO: TFMTBCdField;
    CdsNFENF_DESP_ACES: TFMTBCdField;
    CdsNFENF_TOT_NOTA: TFMTBCdField;
    CdsNFENF_TIPO_NF_ENTRADA: TStringField;
    CdsNFRAZAO_SOCIAL: TStringField;
    SqlCdsImpNotasDetalhadaENF_VL_ICMS: TFMTBCdField;
    SQLCdSCFOP: TSQLClientDataSet;
    DSCFOP: TDataSource;
    frxCFOP: TfrxReport;
    frxDBCFOP: TfrxDBDataset;
    SqlCdsItensNFENF_IT_VLIPI: TFMTBCdField;
    CdsNFENF_REGISTRO: TIntegerField;
    CdsNFENF_FECHADO_PROJETO_OBRA: TStringField;
    CdsNFENF_NOTANUMBER: TStringField;
    CdsNFNFE_XML: TStringField;
    ImageList1: TImageList;
    SQLCdSCFOPENF_CFOP: TStringField;
    SQLCdSCFOPENF_ENTRADA: TDateField;
    SQLCdSCFOPENF_EMISSAO: TDateField;
    SQLCdSCFOPENF_IT_NOTANUMBER: TStringField;
    SQLCdSCFOPFOR_RAZAO: TStringField;
    SQLCdSCFOPPRODUTOS: TFMTBCdField;
    SQLCdSCFOPVALOR_ST: TFMTBCdField;
    SQLCdSCFOPVALOR_IPI: TFMTBCdField;
    SQLCdSCFOPOUTROS: TFMTBCdField;
    SQLCdSCFOPNOTAS: TFMTBCdField;
    CdsImpNotasDetalhadaVALOR_ICMS_ST: TFloatField;
    SqlCdsImpNotasDetalhadaENF_VL_SUBTRIB: TFMTBCdField;
    ppLabel15: TppLabel;
    ppDBText15: TppDBText;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    SqlCdsImpNotasDetalhadaENF_IT_NOTANUMBER: TStringField;
    SQLCdSCFOPBASE_ICMS: TFMTBCdField;
    SQLCdSCFOPVALOR_ICMS: TFMTBCdField;
    CdsNFEMP_CODIGO: TStringField;
    CdsNFENF_BASE_IPI: TFMTBCdField;
    CdsNFENF_VALOR_IPI: TFMTBCdField;
    CdsNFENF_BASE_ICMS: TFMTBCdField;
    CdsNFENF_VALOR_ICMS: TFMTBCdField;
    CdsNFENF_BASE_ICMS_ST: TFMTBCdField;
    CdsNFENF_VALOR_ICMS_ST: TFMTBCdField;
    SqlCdsItensNFENF_QTDE_LANCADO_PROJETO: TFMTBCdField;
    SqlCdsItensNFENF_QTDE_PEDIDO_COMPRA: TFMTBCdField;
    SqlCdsItensNFOCI_REGISTRO: TIntegerField;
    SqlCdsItensNFENF_CUSTO: TFMTBCdField;
    SqlCdsItensNFENF_ICMSALIQ: TFMTBCdField;
    SqlCdsItensNFENF_UNIDADE_TRABALHO: TFMTBCdField;
    SqlCdsItensNFENF_LOTE: TStringField;
    SqlCdsItensNFPRD_CODIGO: TStringField;
    SqlCdsItensNFENF_ICMS: TFMTBCdField;
    SqlCdsItensNFENF_CFOP: TStringField;
    SqlCdsItensNFENF_IT_BASEIPI: TFMTBCdField;
    SqlCdsItensNFENF_IT_NUM_DI: TFMTBCdField;
    SqlCdsItensNFENF_IT_NCM: TIntegerField;
    SqlCdsItensNFENF_IT_DESCTO: TFMTBCdField;
    SqlCdsItensNFENF_IT_BASEICMS: TFMTBCdField;
    SqlCdsItensNFENF_IT_BASESUBTRIB: TFMTBCdField;
    SqlCdsItensNFENF_IT_VALFRETE: TFMTBCdField;
    SqlCdsItensNFENF_IT_VLSEGURO: TFMTBCdField;
    SqlCdsItensNFENF_IT_VLDESP_ACES: TFMTBCdField;
    SqlCdsItensNFENF_IT_VLSUBTRIB: TFMTBCdField;
    SqlCdsItensNFENF_IT_ALIQSUBTRIB: TFMTBCdField;
    SqlCdsItensNFENF_IT_ISSQN: TFMTBCdField;
    SqlCdsItensNFENF_IT_ALIQISSQN: TFMTBCdField;
    SqlCdsItensNFENF_IT_VLISSQN: TFMTBCdField;
    SqlCdsItensNFENF_IT_ALIQPIS: TFMTBCdField;
    SqlCdsItensNFENF_IT_VLPIS: TFMTBCdField;
    SqlCdsItensNFENF_IT_ALIQCOFINS: TFMTBCdField;
    SqlCdsItensNFENF_IT_VLCOFINS: TFMTBCdField;
    SqlCdsItensNFENF_CST_PIS: TFMTBCdField;
    SqlCdsItensNFENF_BASEPIS: TFMTBCdField;
    SqlCdsItensNFENF_CST_COFINS: TFMTBCdField;
    SqlCdsItensNFENF_BASECOFINS: TFMTBCdField;
    SqlCdsItensNFUSU_CODIGO: TIntegerField;
    SqlCdsItensNFPRF_REGISTRO: TIntegerField;
    SqlCdsItensNFREPETICAO_REFER: TIntegerField;
    SqlCdsItensNFSTB_TRIBUTACAO: TStringField;
    SqlCdsItensNFCST_PIS: TStringField;
    SqlCdsItensNFCST_COFINS: TStringField;
    SqlCdsItensNFCST_IPI: TStringField;
    SqlCdsItensNFENF_ATUALIZA_PRECO: TStringField;
    SqlCdsItensNFENF_ATUALIZA_ESTOQUE: TStringField;
    SqlCdsItensNFPRDL_REGISTRO: TIntegerField;
    Panel1: TPanel;
    grp00: TGroupBox;
    LTBox: TListBox;
    grp01: TGroupBox;
    RadVideo: TRadioButton;
    RadImpressora: TRadioButton;
    qNfeConf: TSQLQuery;
    qNfeConfPTI_CODIGO: TStringField;
    qNfeConfPTI_DESCRI: TStringField;
    qNfeConfPRD_REFER: TStringField;
    qNfeConfPRD_DESCRI: TStringField;
    qNfeConfPRD_UND: TStringField;
    qNfeConfENF_QTDE: TFMTBCdField;
    qNfeConfENF_PRECO: TFMTBCdField;
    qNfeConfENF_IT_DESCTO: TFMTBCdField;
    qNfeConfOPE_NATUREZA: TStringField;
    qNfeConfPRD_ORIGEM: TIntegerField;
    qNfeConfAMX_DESCRI: TStringField;
    qNfeConfVLTOTAL: TFMTBCdField;
    qNfeConfENF_NOTANUMBER: TStringField;
    qNfeConfFOR_CODIGO: TStringField;
    qNfeConfFOR_RAZAO: TStringField;
    Panel2: TPanel;
    GrpPesquisa: TGroupBox;
    RadEmissao: TRadioButton;
    RadEntrada: TRadioButton;
    grpPeriodo: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    pnNumNf: TGroupBox;
    Edit1: TEdit;
    grpFornecedor: TGroupBox;
    EditFor: TEdit;
    CbxFornecedor: TComboBox;
    GrpAlmox: TGroupBox;
    EdtAlmox: TEdit;
    CbxAlmox: TComboBox;
    grp05: TGroupBox;
    BitConfig: TBitBtn;
    BitOk: TBitBtn;
    BitCancelarEntNF: TBitBtn;
    qNfeConfObs: TStringField;
    GroupBox1: TGroupBox;
    GbInformePeriodo: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Edt_lista: TEdit;
    BitPesquisar: TBitBtn;
    BitImprimir: TBitBtn;
    BitSair: TBitBtn;
    pnGrids: TPanel;
    Label8: TLabel;
    DbGridNF: TrxDBGrid;
    Panel5: TPanel;
    DBEdit1: TDBEdit;
    DbGridItemNF: TrxDBGrid;
    SqlCdsImpNotasENF_NOTANUMBER: TStringField;
    SqlCdsImpNotasOPE_NATUREZA: TStringField;
    SqlCdsImpNotasENF_EMISSAO: TDateField;
    SqlCdsImpNotasENF_ENTRADA: TDateField;
    SqlCdsImpNotasENF_VL_DESCTO: TFMTBCdField;
    SqlCdsImpNotasFOR_CODIGO: TStringField;
    SqlCdsImpNotasENF_TOT_PROD: TFMTBCdField;
    SqlCdsImpNotasENF_VLFRETE: TFMTBCdField;
    SqlCdsImpNotasENF_VLSEGURO: TFMTBCdField;
    SqlCdsImpNotasENF_DESP_ACES: TFMTBCdField;
    SqlCdsImpNotasENF_TOT_NOTA: TFMTBCdField;
    SqlCdsImpNotasENF_TIPO_NF_ENTRADA: TStringField;
    SqlCdsImpNotasFOR_RAZAO: TStringField;
    SqlCdsImpNotasFOR_FONE: TStringField;
    SqlCdsImpNotasTRP_RAZAO: TStringField;
    SqlCdsImpNotasTRP_FONE: TStringField;
    SqlCdsImpNotasCC_RAZAO: TStringField;
    BtEtiqueta: TButton;
    btnGerarXML: TBitBtn;
    SaveDialog1: TSaveDialog;
    ACBrNFe1: TACBrNFe;
    JvSelectDirectory1: TJvSelectDirectory;
    grproduto: TGroupBox;
    cbReferencia: TSgDbSearchCombo;
    edProdutoCodigo: TEdit;
    btnReprocessar: TBitBtn;
    DataFinal: TJvDateEdit;
    DataInicial: TJvDateEdit;
    RxDataInicial: TJvDateEdit;
    RxDataFinal: TJvDateEdit;
    grpCentroCusto: TGroupBox;
    cbCentroCusto: TSgDbSearchCombo;
    edtCentro: TEdit;
    FileOpenDialog1: TFileOpenDialog;
    btnEtiquetas: TBitBtn;
    CdsNFENF_ENTRADA: TDateField;
    radExcel: TRadioButton;
    frxPorProduto: TfrxReport;
    frxDBqForProduto: TfrxDBDataset;
    dsqForProduto: TDataSource;
    qForProduto: TSQLQuery;
    qForProdutoAMX_CODIGO: TStringField;
    qForProdutoFOR_RAZAO: TStringField;
    qForProdutoENF_NOTANUMBER: TStringField;
    qForProdutoENF_ENTRADA: TDateField;
    qForProdutoENF_EMISSAO: TDateField;
    qForProdutoPRD_REFER: TStringField;
    qForProdutoPRD_DESCRI: TStringField;
    qForProdutoENF_QTDE: TFMTBCDField;
    qForProdutoENF_PRECO: TFMTBCDField;
    qForProdutoTOTAL: TFMTBCDField;
    qXml: TFDQuery;
    ppRpImpNotaCentroCusto: TppReport;
    ppParameterList3: TppParameterList;
    SqlCdsImpNotasPCX_NIVEL: TStringField;
    SqlCdsImpNotasPCX_DESCRI: TStringField;
    dsImpNotaCC: TDataSource;
    qImpNotaCC: TFDQuery;
    qImpNotaCCPRD_REFER: TStringField;
    qImpNotaCCPRD_DESCRI: TStringField;
    qImpNotaCCENF_QTDE: TFMTBCDField;
    qImpNotaCCENF_PRECO: TFMTBCDField;
    qImpNotaCCENF_NOTANUMBER: TStringField;
    qImpNotaCCENF_EMISSAO: TDateField;
    qImpNotaCCENF_ENTRADA: TDateField;
    qImpNotaCCFOR_CODIGO: TStringField;
    qImpNotaCCENF_TOT_PROD: TFMTBCDField;
    qImpNotaCCENF_TOT_NOTA: TFMTBCDField;
    qImpNotaCCFOR_RAZAO: TStringField;
    qImpNotaCCFOR_FONE: TStringField;
    qImpNotaCCPCX_NIVEL: TStringField;
    qImpNotaCCPCX_DESCRI: TStringField;
    ppDBImpNotaCC: TppDBPipeline;
    qImpNotaCCOPE_NATUREZA: TStringField;
    ppHeaderBand3: TppHeaderBand;
    ppLine5: TppLine;
    LBL_00_EMPRESA_CC: TppLabel;
    LBL_00_TITULO1_CC: TppLabel;
    LBL_00_TITULO2_CC: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel30: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel38: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText29: TppDBText;
    ppDBText32: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText30: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLine8: TppLine;
    ppLabel36: TppLabel;
    ppDBCalc14: TppDBCalc;
    ppLabel37: TppLabel;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    btExcluiNF: TButton;
    qForProdutoEMP_CODIGO: TStringField;
    dspForProduto: TDataSetProvider;
    cdsForProduto: TClientDataSet;
    dsForProdutoExcel: TDataSource;
    cdsForProdutoAMX_CODIGO: TStringField;
    cdsForProdutoFOR_RAZAO: TStringField;
    cdsForProdutoENF_NOTANUMBER: TStringField;
    cdsForProdutoENF_ENTRADA: TDateField;
    cdsForProdutoENF_EMISSAO: TDateField;
    cdsForProdutoPRD_REFER: TStringField;
    cdsForProdutoPRD_DESCRI: TStringField;
    cdsForProdutoENF_QTDE: TFMTBCDField;
    cdsForProdutoENF_PRECO: TFMTBCDField;
    cdsForProdutoTOTAL: TFMTBCDField;
    cdsForProdutoEMP_CODIGO: TStringField;
    procedure BitPesquisarClick(Sender: tObject);
    procedure BitSairClick(Sender: tObject);
    procedure SqlCdsItensNFCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure Edt_listaExit(Sender: tObject);
    procedure Edt_listaEnter(Sender: tObject);
    procedure RxDataInicialExit(Sender: tObject);
    procedure RxDataFinalExit(Sender: tObject);
    procedure RxDataInicialEnter(Sender: tObject);
    procedure RxDataFinalEnter(Sender: tObject);
    procedure RxDataInicialClick(Sender: tObject);
    procedure RxDataFinalClick(Sender: tObject);
    procedure Edt_listaClick(Sender: tObject);
    procedure BitImprimirClick(Sender: tObject);
    procedure BitConfigClick(Sender: tObject);
    procedure BitBtn2Click(Sender: tObject);
    procedure BitOkClick(Sender: tObject);
    procedure EditForKeyPress(Sender: tObject; var Key: Char);
    procedure EditForEnter(Sender: tObject);
    procedure CbxFornecedorEnter(Sender: tObject);
    procedure CbxFornecedorExit(Sender: tObject);
    procedure EditForExit(Sender: tObject);
    procedure DataInicialEnter(Sender: tObject);
    procedure DataFinalEnter(Sender: tObject);
    procedure DataInicialExit(Sender: tObject);
    procedure DataFinalExit(Sender: tObject);
    procedure CbxFornecedorClick(Sender: tObject);
    procedure EdtAlmoxEnter(Sender: tObject);
    procedure EdtAlmoxExit(Sender: tObject);
    procedure CbxAlmoxEnter(Sender: tObject);
    procedure CbxAlmoxClick(Sender: tObject);
    procedure CbxAlmoxExit(Sender: tObject);
    procedure LTBoxClick(Sender: tObject);
    procedure SqlCdsImpNotasCalcFields(DataSet: TDataSet);
    procedure DbGridNFDrawColumnCell(Sender: tObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DbGridItemNFDrawColumnCell(Sender: tObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DbGridNFTitleClick(Column: TColumn);
    procedure CdsNFAfterScroll(DataSet: TDataSet);
    procedure frxCFOPGetValue(const VarName: String; var Value: Variant);
    procedure DbGridNFDblClick(Sender: tObject);
    procedure DbGridNFKeyPress(Sender: tObject; var Key: Char);
    procedure FormCreate(Sender: tObject);
    procedure qNfeConfPTI_DESCRIGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qNfeConfPRD_DESCRIGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qNfeConfVLTotalGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qNfeConfENF_NOTANUMBERGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qNfeConfFOR_RAZAOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qNfeConfENF_QTDEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qNfeConfENF_PRECOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure Edt_listaChange(Sender: tObject);
    procedure BitCancelarEntNFClick(Sender: tObject);
    procedure pnGridsResize(Sender: tObject);
    procedure BtEtiquetaClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnGerarXMLClick(Sender: TObject);
    procedure edProdutoCodigoExit(Sender: TObject);
    procedure cbReferenciaButtonClick(Sender: TObject);
    procedure cbReferenciaSelect(Sender: TObject);
    procedure btnReprocessarClick(Sender: TObject);
    procedure edtCentroExit(Sender: TObject);
    procedure cbCentroCustoSelect(Sender: TObject);
    procedure ppSystemVariable11GetText(Sender: TObject; var Text: string);
    procedure ppSystemVariable2GetText(Sender: TObject; var Text: string);
    procedure btnEtiquetasClick(Sender: TObject);
    procedure frxPorProdutoBeginDoc(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btExcluiNFClick(Sender: TObject);
    procedure frxPorProdutoGetValue(const VarName: string; var Value: Variant);
  private
PathNewRel : STRING;
    wSql1,wSql2,wSql3,wSql4,wSeleciona,wOrdem,wDataI,wDataF,wNF,
    wAlmox,wAlmoxDescri,wFornecedor : String;
    wTotalNF,wValorIPI,wTotalAlmox,wValorICMS : Currency;

    procedure LayOutNF;
    procedure SelecionaNota;
    procedure ImprimeRelItensCnfAuto;
  public
    { Public declarations }
    procedure BotoesAcesso;
  end;

var
  FormConsNFGrid: TFormConsNFGrid;
  pesquisou : boolean;
implementation

{$R *.dfm}

uses Uteis, Nfs0001, Men0001, DataCad, PCX0002, BaseTelaRelatorioForm, ufrmpreviewrb, iniciodb, uEtiquetasEntrada, prd0006,
uNovaEtiquetaEntradas;

procedure TFormConsNFGrid.BitPesquisarClick(Sender: tObject);
var vNome, vNum, msg: String ;
    vDt1, vDt2:TDateTime;
    FlgTemPesquisa: Boolean ;
///
   procedure SqlAdd( pStt:string );
   begin
        SqlNF.SQL.Add( pStt );
        FlgTemPesquisa:=True;
   end;
///
begin
     if BitPesquisar.Caption='&Limpar' then
     begin
          CdsNF.Close;
          Edt_lista.Clear;
          RxDataInicial.Clear;
          RxDataFinal.Clear;
          Edt_Lista.SetFocus;
     end;

     FlgTemPesquisa:=False;
     vNome := Trim( Edt_Lista.Text );
     wOrdem     := 'ENF_EMISSAO DESC';
     if StrToIntDef( StringReplace(vNome,'%','',[rfReplaceAll]),-1 ) <> -1 then
     begin
          vNum := vNome;
          vNome := '';
          wOrdem     := 'ENF_NOTANUMBER';
     end;

     if not EmptyDate ( RxDataInicial.Date ) then
        vDt1:=RxDataInicial.Date;
     if not EmptyDate ( RxDataFinal.Date ) then
        vDt2:=RxDataFinal.Date;
     if (not EmptyDate( vDt1)) and (not EmptyDate(vdt2)) and (vDt1>vDt2) then
     begin
          RxDataInicial.Date:=vDt2;
          RxDataFinal.Date:=vDt1;
          vDt1:=RxDataInicial.Date;
          vDt2:=RxDataFinal.Date;
     end;

     CdsNF.Close;
     SqlNF.SQL.Clear;
     SqlNF.SQL.Add('SELECT * FROM VW_CONSULTA_NOTA_FISCAL_ENTRADA ');
     SqlNF.SQL.Add('Where emp_codigo='+qStr( DBInicio.Empresa.EMP_CODIGO ));
     if vNum<>'' then
        sqladd( ' and '+CampoSql('ENF_NOTANUMBER',vNum) )
     else
     if vNome<>'' then
        sqlAdd( ' and '+CampoSql('RAZAO_SOCIAL',vNome) );
     if not EmptyDate(vDt1) then
        sqlAdd( ' and ENF_EMISSAO >= '+DateToSql( vDt1 ) );
     if not EmptyDate(vDt2) then
        sqlAdd( ' and ENF_EMISSAO <= '+DateToSql( vDt2 ) );
     msg := '';
     if FlgTemPesquisa then
        BitPesquisar.Caption:='&Limpar'
     Else
         BitPesquisar.Caption:='&Pesquisar';
     try
        SqlNF.SQL.Add('ORDER BY '+wOrdem);
        CdsNF.Open;
        if CdsNF.RecordCount=0 then
        begin
           SqlCdsItensNF.Close;
           msg :='Não Existem Registros!';
        end
        else
          pesquisou := True;

     except
        msg := 'Dados inválidos para pesquisa!'
     end;
     if msg<>'' then
        GeraException(msg);
end;

procedure TFormConsNFGrid.BitSairClick(Sender: tObject);
begin
    Close;
end;

procedure TFormConsNFGrid.BotoesAcesso;
begin
     if assigned(FormConsNFGrid) then
     begin
       BitImprimir.Enabled := Uteis.AcessoUsuario('MovimentosConsulta de Nota Fiscal de Entrada',DBInicio.Usuario.CODIGO,FormConsNFGrid).Relatorio;
     end;
end;

procedure TFormConsNFGrid.BtEtiquetaClick(Sender: TObject);
begin
     FrmEtiquetasEntrada := TFrmEtiquetasEntrada.Create(Application);
     try
          FrmEtiquetasEntrada.Refer := SqlCdsItensNFPRD_REFER.AsString;
          FrmEtiquetasEntrada.Descri := SqlCdsItensNFPRD_DESCRI.AsString;
          FrmEtiquetasEntrada.QtdItens := SqlCdsItensNFENF_QTDE.AsString;
          FrmEtiquetasEntrada.ShowModal;
     finally
          FreeAndNil(FrmEtiquetasEntrada);
     end;
end;

procedure TFormConsNFGrid.btExcluiNFClick(Sender: TObject);
var
  nf, fornecedor, empresa : string;
begin
  inherited;
  nf := QuotedStr(CdsNFENF_NOTANUMBER.AsString);
  fornecedor := QuotedStr(CdsNFFOR_CODIGO.AsString);
  empresa :=  QuotedStr(CdsNFEMP_CODIGO.AsString);
  OpenAux(
     ' SELECT ' +
     '   O2.ENF_IT_NOTANUMBER ' +
     ' FROM ' +
     '   ENF_IT01 O2 ' +
     ' WHERE ' +
     '   O2.ENF_IT_NOTANUMBER = ' + nf +
     '   AND O2.FOR_CODIGO = ' + fornecedor +
     '   AND O2.EMP_CODIGO = ' + empresa 
  );
  if (not qAux.IsEmpty) then
  begin
    MessageDlg('Esta rotina é exclusiva para excluir as notas fiscais sem itens.' + #13  + #13 + 'Para excluir a Nota Fiscal, utilize a rotina padrão de exclusão de itens da NF', mtInformation, [mbOk], 0);
    Exit;
  end;
  if MessageDlg('Confirma Exclusão da NF?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
    Exit;
  qAux.Close;
  qAux.Sql.Text := 'Delete from ENF0001  where ENF_NOTANUMBER = ' + nf + ' and FOR_CODIGO = ' + fornecedor + '  AND EMP_CODIGO = ' + empresa;
  qAux.ExecSQL;
  qAux.Close;
  qAux.Sql.Text := 'Delete from PAG0000 where PAG_NUMDOC = ' + nf + ' AND FOR_CODIGO = ' + fornecedor + '  AND EMP_CODIGO = ' + empresa;
  qAux.ExecSQL;
  qAux.Close;
  qAux.Sql.Text := 'Delete from PAG_PC01  where PAG_NUMDOC = ' + nf + ' AND FOR_CODIGO = ' + fornecedor + '  AND EMP_CODIGO = ' + empresa; 
  qAux.ExecSQL;
  BitPesquisar.Click;
end;

procedure TFormConsNFGrid.btnEtiquetasClick(Sender: TObject);
begin
  inherited;
  if not assigned(frmNovaEtiquetaEntrada) then
    frmNovaEtiquetaEntrada := tfrmNovaEtiquetaEntrada.create(application);
  frmNovaEtiquetaEntrada.NotaFiscal := CdsNFENF_NOTANUMBER.AsString ;
  frmNovaEtiquetaEntrada.Fornecedor := CdsNFRAZAO_SOCIAL.AsString;
  frmNovaEtiquetaEntrada.Emissao := CdsNFENF_EMISSAO.AsDateTime;
  frmNovaEtiquetaEntrada.Entrada := CdsNFENF_ENTRADA.AsDateTime;
  SqlCdsItensNF.First;
  frmNovaEtiquetaEntrada.cdsItem.Close;
  frmNovaEtiquetaEntrada.cdsItem.CreateDataSet;
  while not SqlCdsItensNF.Eof do
  begin

    frmNovaEtiquetaEntrada.cdsItem.Insert;
    frmNovaEtiquetaEntrada.cdsItem.FieldByName('prd_refer').AsString := SqlCdsItensNFPRD_REFER.AsString;
    frmNovaEtiquetaEntrada.cdsItem.FieldByName('prd_descri').AsString := SqlCdsItensNFPRD_DESCRI.AsString;
    frmNovaEtiquetaEntrada.cdsItem.FieldByName('enf_qtde').Asfloat := SqlCdsItensNFENF_QTDE.AsFloat;
    frmNovaEtiquetaEntrada.cdsItemPRDL_REGISTRO.AsInteger := SqlCdsItensNFPRDL_REGISTRO.AsInteger;
    if SqlCdsItensNFPRDL_REGISTRO.AsInteger>0  then
    begin
      frmNovaEtiquetaEntrada.qAux.Close;
      frmNovaEtiquetaEntrada.qAux.SQL.Text := 'select * from PRD_LOTE where PRDL_REGISTRO = ' + IntToStr(SqlCdsItensNFPRDL_REGISTRO.AsInteger);
      frmNovaEtiquetaEntrada.qAux.Open;
      if NOT qAux.IsEmpty then
      begin
        frmNovaEtiquetaEntrada.cdsItemNUMLOTE.AsString := frmNovaEtiquetaEntrada.qAux.FieldByName('PRDL_LOTE').AsString;
        frmNovaEtiquetaEntrada.cdsItemPRDL_DATA_FABRICACAO.AsDateTime := frmNovaEtiquetaEntrada.qAux.FieldByName('PRDL_DATA_FABRICACAO').AsDateTime;
        frmNovaEtiquetaEntrada.cdsItemPRDL_DATA_VALIDADE.AsDateTime := frmNovaEtiquetaEntrada.qAux.FieldByName('PRDL_DATA_VALIDADE').AsDateTime;
      end;

    end;

    frmNovaEtiquetaEntrada.cdsItem.Post;
    SqlCdsItensNF.Next;
  end;
    frmNovaEtiquetaEntrada.showmodal;

end;

procedure TFormConsNFGrid.btnGerarXMLClick(Sender: TObject);
Var clone : TClientDataSet;
dir,chave :string;
i : integer;
xml :TStringStream;
xmlstream : TStream;
begin

 try
    if (rxDataInicial.Date = 0) or (RxDataFinal.Date = 0) then
    begin
      MessageDlg('Informe um Período', mtWarning, [mbOK], 0);
      Exit;
    end;


    if not pesquisou then
      BitPesquisar.Click;
    //pegar todos os resultados
    CdsNF.First;
    CdsNF.FetchOnDemand := False;
    while not (CdsNF.GetNextPacket = 0) do
      CdsNF.GetNextPacket;

    clone := TClientDataSet.Create(Self);
    try
      clone.CloneCursor(CdsNF,False,true);
      clone.FetchOnDemand := false;
      Screen.cursor := crHourGlass;
      clone.Filtered := False;
      clone.Filter := 'NFE_XML = ''S''';
      clone.Filtered := True;
      clone.First;//  try
      dir := DBInicio.Versao.PATH;
      FileOpenDialog1.Options := FileOpenDialog1.Options + [fdoPickFolders];
      FileOpenDialog1.DefaultFolder := dir;
      FileOpenDialog1.Title := 'Selecione o Diretório';


      if  FileOpenDialog1.Execute then
      begin
        fmAnimacao := TfmAnimacao.Create(application);
        fmAnimacao.Panel1.Font.Color := clBlack   ;
        fmAnimacao.Show;

        for I := 0 to clone.RecordCount-1 do
        begin
          // OpenAux('SELECT ENF_XML FROM ENF0001 E1 WHERE ENF_NOTANUMBER = ' + QuotedStr(clone.FieldByName('ENF_NOTANUMBER').AsString));
          qXml.Close;
          qXml.SQL.Text := 'SELECT ENF_XML FROM ENF0001 E1 ' +
                          ' WHERE ENF_NOTANUMBER = ' + QuotedStr(clone.FieldByName('ENF_NOTANUMBER').AsString) +
                          '   AND ENF_EMISSAO >= '+ DateToSql(rxDataInicial.Date) +
                          '   AND ENF_EMISSAO <= '+DateToSql(RxDataFinal.Date) +
                          '   AND ENF_REGISTRO = ' + QuotedStr(clone.FieldByName('ENF_REGISTRO').AsString)
                          ;
          qXml.Open();
          // ler os primeiras strings
          if (qXml.FieldByName('ENF_XML').AsString <> '') then
          begin
           xml :=  TStringStream.Create;
           xmlstream := qXml.CreateBlobStream(qXml.FieldByName('ENF_XML'),bmRead);
           xml.CopyFrom(xmlstream,xmlstream.Size) ;
           try
             if ACBrNFe1.NotasFiscais.LoadFromStream(xml,false) then
             begin
               //chave:= ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.chNFe;
               chave:= ACBrNFe1.NotasFiscais.Items[0].numid;
               if chave <> '' then
               begin
                  application.ProcessMessages;
                  fmAnimacao.Panel1.Caption := 'Nota de entrada ' + IntToStr(i)+ ' de '+ IntToStr(clone.RecordCount);
                  ACBrNFe1.NotasFiscais.GravarXML(FileOpenDialog1.filename+'\'+chave+'-NFe.xml');
                  ACBrNFe1.NotasFiscais.Clear;
                  qXml.Close;
               end;
             end;
           finally
             FreeAndNil(xml);
             FreeAndNil(xmlstream);

           end;
          end;

          clone.next;
        end;
        MessageDlg('XML das notas exportado com sucesso', mtInformation, [mbOk], 0);
      End;

    finally
      FreeAndNil(clone);
      Screen.cursor := crDefault;
      if assigned(fmAnimacao) then
       fmAnimacao.Close;
    end;

 except
      on E: EXCEPTION do
        raise EXCEPTION.Create(E.Message);
 end;
end;

procedure TFormConsNFGrid.btnReprocessarClick(Sender: TObject);
var clone: TClientDataSet;
 xml :TStringStream;
 xmlstream : TStream;
 i : integer;
 sprd_codigo : string;

 dFatorConversao : Double;
begin
  inherited;
  if not CdsNF.IsEmpty then
  begin
    if not pesquisou then
      BitPesquisar.Click;
    //pegar todos os resultados
    CdsNF.First;
    CdsNF.FetchOnDemand := False;
    while not (CdsNF.GetNextPacket = 0) do
      CdsNF.GetNextPacket;
    clone := TClientDataSet.Create(Self);
    try
      clone.CloneCursor(cdsnf,false);
//      clone.Filtered := False;
//      clone.Filter := 'NFE_XML = '+QuotedStr('S');
//      clone.Filtered := True;
      clone.FetchOnDemand := false;
      Screen.cursor := crHourGlass;
      GroupBox1.Enabled := False;
      clone.First;
      while not clone.Eof do
      begin
        if clone.FieldByName('NFE_XML').AsString = 'S'  then    // nota importarda pelo xml
        begin
          // OpenAux('SELECT ENF_XML FROM ENF0001 WHERE ENF_REGISTRO = '+ IntToStr(clone.FieldByName('ENF_REGISTRO').AsInteger) );
          qXml.Close;
          qXml.SQL.Text := 'SELECT ENF_XML FROM ENF0001 WHERE ENF_REGISTRO = '+ IntToStr(clone.FieldByName('ENF_REGISTRO').AsInteger) ;
          qXml.Open;
          if qXml.FieldByName('ENF_XML').AsString <> '' then
          begin
            xml :=  TStringStream.Create;
            xmlstream := qXml.CreateBlobStream(qXml.FieldByName('ENF_XML'),bmRead);
            try
               xml.CopyFrom(xmlstream,xmlstream.Size) ;
               if ACBrNFe1.NotasFiscais.LoadFromStream(xml,TRUE) then
               begin
                for i:=0 to  ACBrNFe1.NotasFiscais.Items[0].NFE.Det.Count-1 do
                begin
                   //pega codigo do produto
                   sprd_codigo:=
                   dbinicio.BuscaUmDadoSqlAsString('SELECT FIRST 1 T1.PRD_CODIGO FROM PRD0000_CODIGO T1 ' +
                                                  ' JOIN PRD0000 E ON T1.PRD_CODIGO = E.PRD_CODIGO '+ ConcatSe ( ' and e.',dbinicio.ExclusivoSql('PRODUTOS')) +
                                                  ' WHERE T1.PRDC_REFERENCIA = '+ QuotedStr(Trim(acbrnfe1.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.cProd))+
                                                  '  AND T1.FOR_CODIGO = '+ QuotedStr(clone.FieldByName('FOR_CODIGO').AsString))    ;

                  // busca o item da nota
                  OpenAux2('SELECT ENF_QTDE, ENF_PRECO, PRD_UND FROM ENF_IT01 it '+
                           ' JOIN PRD0000 PR ON (PR.PRD_CODIGO = IT.PRD_CODIGO) '+
                           ' WHERE IT.PRD_CODIGO = '+QuotedStr(sprd_codigo) +
                           ' AND IT.EMP_CODIGO = '+QuotedStr(clone.FieldByName('EMP_CODIGO').AsString) +
                           ' AND ENF_IT_NOTANUMBER = '+QuotedStr(clone.FieldByName('ENF_NOTANUMBER').AsString) );
                  if not qAux2.IsEmpty then
                  begin
                   // rQuantidade :=
                   // UNIDADE DE COMPRE É DIFERENTE DA UNIDADE DE ESTOCAGEM
                    if UpperCase(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.uCom) <> UpperCase(qAux2.FieldByName('PRD_UND').AsString) then
                     dFatorConversao := qAux2.FieldByName('ENF_QTDE').AsCurrency /ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.qCom
                    Else
                     dFatorConversao := 1;



                    dbinicio.ExecSql
                    ('UPDATE ENF_IT01   '+
                            ' SET ENF_UCOM = '+ QuotedStr(UpperCase(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.uCom)) +
                            ' ,ENF_UTRIB = '+QuotedStr(UpperCase(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.uTrib) )+
                            ' ,ENF_QTDE_ORIGINAL  = '+FloatToSQL(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.qCom) +
                            ' ,ENF_PRECO_ORIGINAL = ' +FloatToSQL(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.vUnCom)+
                            ' ,ENF_PTOTAL_ORIGINAL = '+FloatToSQL(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.vProd)+
                            ' WHERE PRD_CODIGO = '+QuotedStr(sprd_codigo) +
                            ' AND EMP_CODIGO = '+QuotedStr(clone.FieldByName('EMP_CODIGO').AsString) +
                            ' AND ENF_IT_NOTANUMBER = '+QuotedStr(clone.FieldByName('ENF_NOTANUMBER').AsString) );
                    // INCLUSAO PRD_FATORCONVERSAO
                    if (dbinicio.BuscaUmDadoSqlAsInteger('Select cast(count(*) as integer) as conta from    PRD_FATORCONVERSAO  '+
                                               ' WHERE PRD_CODIGO = '+QuotedStr(sprd_codigo)+
                                               ' AND FOR_CODIGO = '+ QuotedStr(clone.FieldByName('FOR_CODIGO').AsString)+
                                               ' AND UNID_CONV  = '+ QuotedStr(UpperCase(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.uCom)))=0)
                      and  (UpperCase(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.uCom) <> UpperCase(qAux2.FieldByName('PRD_UND').AsString) )

                                               then
                    begin
                       dbinicio.ExecSql('insert into PRD_FATORCONVERSAO (PRD_CODIGO, FOR_CODIGO, UNID_CONV, FAT_CONV) ' +
                               'values ('+QuotedStr(sprd_codigo) + ','+  QuotedStr(clone.FieldByName('FOR_CODIGO').AsString)+','+
                               QuotedStr(UpperCase(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.uCom))+ ',' +
                             FloatToSQL(dFatorConversao) +')')



                    end;

                  end;

                end;

               end;
            finally
              FreeAndNil(xml);
              FreeAndNil(xmlstream);
              ACBrNFe1.NotasFiscais.Clear;
            end;

          end;
        end // nota manual  , ele joga o  mesmo valor
        else
        begin
           dbinicio.ExecSql
                    ('UPDATE ENF_IT01   '+
                        ' SET ENF_UCOM = (select prd_und from PRD0000 PR  where PR.PRD_CODIGO = ENF_IT01.PRD_CODIGO) ' +
                        ' ,ENF_UTRIB = (select prd_und from PRD0000 PR  where PR.PRD_CODIGO = ENF_IT01.PRD_CODIGO)'+
                        ' ,ENF_QTDE_ORIGINAL  = ENF_QTDE'    +
                        ' ,ENF_PRECO_ORIGINAL = ENF_PRECO '   +
                        ' ,ENF_PTOTAL_ORIGINAL = (ENF_QTDE*ENF_PRECO) ' +
                        ' WHERE EMP_CODIGO = '+QuotedStr(clone.FieldByName('EMP_CODIGO').AsString) +
                        ' AND ENF_IT_NOTANUMBER = '+QuotedStr(clone.FieldByName('ENF_NOTANUMBER').AsString) );

        end;
        clone.Next;
      end;
    finally
      MessageDlg('Reprocesso realizado com sucesso', mtInformation, [mbOK], 0);
      GroupBox1.Enabled := True;
      Screen.Cursor := crDefault;
      clone.Free;
    end;


  end;
end;

procedure TFormConsNFGrid.cbCentroCustoSelect(Sender: TObject);
begin
  inherited;
  if cbCentroCusto.idRetorno <> '' then
    edtCentro.Text := cbCentroCusto.idRetorno
  else
  begin
     cbCentroCusto.Clear;
     edtCentro.Clear;
  end;
end;

procedure TFormConsNFGrid.cbReferenciaButtonClick(Sender: TObject);
begin
  inherited;
  FormProdutoGrid := TFormProdutoGrid.Create(Application);
   try
      FormProdutoGrid.ShowModal;
      if FormProdutoGrid.ModalResult=mrOk then
         cbReferencia.IdRetorno := FormProdutoGrid.ReferRetorno ;
   finally
          FreeAndNil( FormProdutoGrid );
   end;
end;

procedure TFormConsNFGrid.cbReferenciaSelect(Sender: TObject);
begin
  inherited;
  if cbReferencia.idRetorno <> '' then
    edProdutoCodigo.Text := cbReferencia.idRetorno
  else
  begin
   cbReferencia.Clear;
   edProdutoCodigo.Clear;

  end;
end;

procedure TFormConsNFGrid.SqlCdsItensNFCalcFields(DataSet: TDataSet);
begin
    SqlCdsItensNFENF_TOTAL_CC.AsCurrency := (SqlCdsItensNFENF_QTDE.AsCurrency * SqlCdsItensNFENF_PRECO.AsCurrency);
end;


procedure TFormConsNFGrid.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.Cursor := crHourGlass;
    try
      CdsNF.PacketRecords := -1;
      CdsNF.Close;
      SqlCdsImpNotas.PacketRecords := -1;
      SqlCdsImpNotas.Close;
      SqlCdsItensNF.Close;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao fechar as tabelas !'+e.message));
    end;
    Screen.Cursor := crDefault;
     if (not assigned(FormNfEntrada)) or (not assigned(FrmProjetoObraNotaEntrada)) then
       Action := CaFree;
end;

procedure TFormConsNFGrid.Edt_listaExit(Sender: tObject);
begin
     Edt_Lista.Color := clWindow;
end;

procedure TFormConsNFGrid.Edt_listaEnter(Sender: tObject);
begin
    Edt_Lista.Text  := '';
    Edt_Lista.Color := $0080FFFF;
end;

procedure TFormConsNFGrid.RxDataInicialExit(Sender: tObject);
begin
    if RxDataInicial.Text <> '  /  /    ' then
       begin
           if not TestaDataStr(RxDataInicial.Text) then
              RxDataInicial.setfocus;
       end;
    RxDataInicial.Color := clWindow;
end;

procedure TFormConsNFGrid.RxDataFinalExit(Sender: tObject);
begin
    if RxDatafinal.Text <> '  /  /    ' then
       begin
           if not TestaDataStr(RxDataFinal.Text) then
              RxDataFinal.setfocus;
           if RxDataFinal.Date< RxDataInicial.Date then
              begin
                  uteis.aviso('Data final menor que a Data inicial !');
                  RxDataFinal.SetFocus;
              end;
       end;
    RxDataFinal.Color := clWindow;
end;

procedure TFormConsNFGrid.RxDataInicialEnter(Sender: tObject);
begin
    RxDataInicial.Text := '  /  /    ';
    RxDataInicial.Color := $0080FFFF;
    RxDataInicial.SelectAll;
end;

procedure TFormConsNFGrid.RxDataFinalEnter(Sender: tObject);
begin
    RxDataFinal.SelectAll;
    RxDataFinal.Color := $0080FFFF;
end;

procedure TFormConsNFGrid.RxDataInicialClick(Sender: tObject);
begin
    RxDataInicial.SelectAll;
end;

procedure TFormConsNFGrid.RxDataFinalClick(Sender: tObject);
begin
    RxDataFinal.SelectAll;
end;

procedure TFormConsNFGrid.Edt_listaClick(Sender: tObject);
begin
    Edt_lista.SelectAll;
end;

procedure TFormConsNFGrid.BitImprimirClick(Sender: tObject);
begin
     radExcel.Visible := False;
     if PanEntradaNF.Tag=0 then
     begin
          // combo fornecedor
          SqlCdsFornecedor.Close;
          SqlCdsFornecedor.CommandText := SQLDEF('FORNECEDORES','Select F1.FOR_CODIGO,F1.FOR_RAZAO From FOR0000 F1','','F1.FOR_RAZAO','F1.');
          SqlCdsFornecedor.Open;
          SqlCdsFornecedor.First;
          CbxFornecedor.Items.Clear;
          CbxFornecedor.Items.Add('TODOS');
          while not SqlCdsFornecedor.Eof do
          begin
               CbxFornecedor.Items.Add(SqlCdsFornecedorFOR_RAZAO.AsString);
               SqlCdsFornecedor.Next;
          end;
          CbxFornecedor.ItemIndex := 0;
          // combo almox
          SqlCdsAlmox.Close;
          SqlCdsAlmox.CommandText := SQLDEF('TABELAS','SELECT A1.* From ALMOX0000 A1','','A1.AMX_DESCRI','A1.');
          SqlCdsAlmox.Open;
          SqlCdsAlmox.First;
          CbxAlmox.Items.Clear;
          CbxAlmox.Items.Add('TODOS');
          while not SqlCdsAlmox.Eof do
          begin
               CbxAlmox.Items.Add(SqlCdsAlmoxAMX_DESCRI.AsString);
               SqlCdsAlmox.Next;
          end;
          CbxAlmox.ItemIndex := 0;
          // itens do menu listbox
          LTBox.Items.Add('Relatório Entrada de Notas Fiscais');               // 0
          LTBox.Items.Add('Relatório Entrada de Notas Fiscais (Detalhado)');   // 1
          LTBox.Items.Add('Relatório Entrada de Notas Fiscais por CFOP');      // 2
          LTBox.Items.Add('Relação de Itens para Conferência');                // 3
          LTBox.Items.Add('Relatório Entrada de Notas Fiscais por Produto');   // 4
          LTBox.Items.Add('Relatório Centro de Custo');                        // 5
          LTBox.Items.Add('Relatório Centro de Custo por Item');               // 6
          // LTBox.Items.Add('Relatório Nota Fiscal Por Produto Pendente');
          LTBox.ItemIndex := 0;
          if (dbInicio.Empresa.wMultiAlmox = 'S') then
             GrpAlmox.Visible := True
          else
             GrpAlmox.Visible := False;

          PanEntradaNF.Tag:=1;
     end;

     if not CdsNF.IsEmpty  then
     begin
           pnGridsResize(Nil);
           PanEntradaNF.Visible  := true;
           RadEmissao.Checked := true;
           LayOutNF;
           CbxFornecedor.ItemIndex := 0;
     end;
end;

procedure TFormConsNFGrid.BitConfigClick(Sender: tObject);
begin
    PrinterEntradaNF.Execute;
end;

procedure TFormConsNFGrid.BitBtn2Click(Sender: tObject);
begin
     PanEntradaNF.Visible  := False;
end;


procedure TFormConsNFGrid.ImprimeRelItensCnfAuto;
var tcr : TfrmBaseTelaRelatorio;

dt1,dt2 : TDateTime;
begin
     qNfeConf.Close;
     qNfeConf.SQL.Clear;
     qNfeConf.SQL.Add('SELECT  pr.pti_codigo,');
     qNfeConf.SQL.Add('        tp.pti_descri,');
     qNfeConf.SQL.Add('        I1.PRD_REFER,');
     qNfeConf.SQL.Add('        PR.PRD_DESCRI,');
     qNfeConf.SQL.Add('        PR.prd_und,');
     qNfeConf.SQL.Add('        i1.enf_qtde,');
     qNfeConf.SQL.Add('        I1.enf_preco,');
     qNfeConf.SQL.Add('        I1.ENF_IT_DESCTO, nf.enf_notanumber,');
     qNfeConf.SQL.Add('        nf.OPE_NATUREZA,');
     qNfeConf.SQL.Add('        pr.PRD_ORIGEM,');
     qNfeConf.SQL.Add('        AL.AMX_DESCRI,');
     qNfeConf.SQL.Add('        fr.for_codigo, fr.for_razao, 0.00 as VlTotal');
     qNfeConf.SQL.Add('FROM    ENF_IT01 I1');
     qNfeConf.SQL.Add('    Join enf0001 nf on nf.enf_notanumber=I1.ENF_IT_NOTANUMBER');
     qNfeConf.SQL.Add('    Join prd0000 pr on pr.prd_refer=i1.prd_refer');
     qNfeConf.SQL.Add('    left Join prd_tipo tp on tp.pti_codigo=pr.pti_codigo');
     qNfeConf.SQL.Add('    left Join ALMOX0000 AL ON AL.AMX_CODIGO=i1.AMX_CODIGO');
     qNfeConf.SQL.Add('    join for0000 fr on fr.for_codigo=nf.for_codigo');
     qNfeConf.SQL.Add(' where I1.EMP_CODIGO = '+dbInicio.Empresa.EMP_CODIGO);
     if  Edit1.Text <> '' then
       qNfeConf.SQL.Add('and   I1.ENF_IT_NOTANUMBER = '+qStr( StrZero( Edit1.Text , 10 ) ));
     if (CbxFornecedor.Text<> 'TODOS') then
        qNfeConf.SQL.Add('   AND I1.FOR_CODIGO = '+qStr( StrZero( StrToIntDef(EditFor.Text,0), 4 ) ));
     if cbReferencia.idRetorno <> '' then
       qNfeConf.SQL.Add(' and I1.PRD_REFER = '+QuotedStr(cbReferencia.idRetorno) );
     if cbCentroCusto.idRetorno <>'' then
      qNfeConf.sql.Add(' and nf.pcx_codigo = '+QuotedStr(cbCentroCusto.idRetorno));

     if RadEmissao.Checked or RadEntrada.Checked then
     begin

       if not EmptyDate ( DataInicial.Date ) then
          Dt1:=DataInicial.Date;
       if not EmptyDate ( DataFinal.Date ) then
          Dt2:=DataFinal.Date;
         if (not EmptyDate( Dt1)) and (not EmptyDate(dt2)) and (Dt1>Dt2) then
         begin
              DataInicial.Date:=Dt2;
              DataFinal.Date:=Dt1;
              Dt1:=RxDataInicial.Date;
              Dt2:=RxDataFinal.Date;
         end;

         wDataI          := DateToSql(DataInicial.Date);
         wDataF          := DateToSql(DataFinal.Date);

         if (RadEmissao.checked ) then
            wOrdem     := 'nf.ENF_EMISSAO'
         Else
            wOrdem     := 'nf.ENF_ENTRADA';

         qNfeConf.SQL.Add (' and '+wOrdem+' BETWEEN '+wDataI+' AND '+wDataF);
     end;

     qNfeConf.SQL.Add('ORDER BY AL.AMX_DESCRI, I1.enf_registro');



     if DelphiAberto then
        CopyToClipBoard(qNfeConf.SQL.text);
     tcr := TfrmBaseTelaRelatorio.Create( self );
     try
        tcr.TituloRelatorio:='Relação de Entradas de Itens para Conferência';
        tcr.Query:=qNfeConf;
        tcr.groupfield:='AMX_DESCRI';
        tcr.grouplabel:='Almoxarifado:';
        tcr.LinhaTitulo1 := '' ;
        tcr.LinhaTitulo2 := 'Nota Fiscal Nro.: '+Edit1.Text+' Fornecedor: '+EditFor.Text+' - '+CbxFornecedor.Text;
        tcr.Zebrar:=False;
        tcr.Quadricular:=True;
        tcr.QuadroConferidoPor:=True; 
        tcr.ImprimeAuto;

     finally
            FreeAndNil( tcr );
     end;

end;

procedure TFormConsNFGrid.BitOkClick(Sender: tObject);
var dt1, dt2: tDateTime;
    sql: string;
    lista: TStringList;

begin

    if LTBox.ItemIndex = 3 then //ImptrimeEspelhoNfConferencia
       ImprimeRelItensCnfAuto
    Else
    begin
         wTotalNF :=0;
         wValorIPI:=0;
         wTotalAlmox:=0;
         Screen.Cursor := crHourGlass;
         LBL_00_TITULO2.Caption := '';
         LBL_01_TITULO2.Caption := '';

         if (LTBox.ItemIndex < 3) or (LTBox.ItemIndex = 5) or (LTBox.ItemIndex = 6) then //Rels 0,1,2,5, 6
         begin
              if RadEmissao.Checked or RadEntrada.Checked then
              begin

                   if not EmptyDate ( DataInicial.Date ) then
                      Dt1:=DataInicial.Date;
                   if not EmptyDate ( DataFinal.Date ) then
                      Dt2:=DataFinal.Date;
                   if (not EmptyDate( Dt1)) and (not EmptyDate(dt2)) and (Dt1>Dt2) then
                   begin
                        DataInicial.Date:=Dt2;
                        DataFinal.Date:=Dt1;
                        Dt1:=RxDataInicial.Date;
                        Dt2:=RxDataFinal.Date;
                   end;

                   wDataI          := DateToSql(DataInicial.Date);
                   wDataF          := DateToSql(DataFinal.Date);

                   if (RadEmissao.checked ) then
                      wOrdem     := 'E1.ENF_EMISSAO'
                   Else
                      wOrdem     := 'E1.ENF_ENTRADA';

                   wSeleciona := 'where '+wOrdem+' BETWEEN '+wDataI+' AND '+wDataF;
                   LBL_00_TITULO2.Caption := 'Periodo de : '+DataInicial.Text+' até '+DataFinal.Text;
                   LBL_01_TITULO2.Caption := 'Periodo de : '+DataInicial.Text+' até '+DataFinal.Text;
                   LBL_00_TITULO2_CC.Caption := 'Periodo de : '+DataInicial.Text+' até '+DataFinal.Text;
                   // LBL_01_TITULO2_CC.Caption := 'Periodo de : '+DataInicial.Text+' até '+DataFinal.Text;

              end;

              if (CbxFornecedor.Text<> 'TODOS') then
              begin
                     LBL_00_TITULO2.Caption := LBL_00_TITULO2.Caption + ' - Codigo: '+EditFor.Text+' - '+CbxFornecedor.Text;
                     LBL_01_TITULO2.Caption := LBL_01_TITULO2.Caption + ' - Codigo: '+EditFor.Text+' - '+CbxFornecedor.Text;
                     LBL_00_TITULO2_CC.Caption := LBL_00_TITULO2.Caption + ' - Codigo: '+EditFor.Text+' - '+CbxFornecedor.Text;
                     // LBL_01_TITULO2_CC.Caption := LBL_01_TITULO2.Caption + ' - Codigo: '+EditFor.Text+' - '+CbxFornecedor.Text;
                     wSeleciona := wSeleciona + ' AND E1.FOR_CODIGO = '''+EditFor.Text+'''';
              end
              else
              begin
                     LBL_00_TITULO2.Caption := LBL_00_TITULO2.Caption + ' - TODOS OS FORNECEDORES';
                     LBL_01_TITULO2.Caption := LBL_01_TITULO2.Caption + ' - TODOS OS FORNECEDORES';
                     LBL_00_TITULO2_CC.Caption := LBL_00_TITULO2.Caption + ' - TODOS OS FORNECEDORES';
                     // LBL_01_TITULO2_CC.Caption := LBL_01_TITULO2.Caption + ' - TODOS OS FORNECEDORES';
              end;

              if cbCentroCusto.idRetorno <>'' then
              begin
                LBL_00_TITULO2.Caption := LBL_00_TITULO2.Caption + ' - Centro Custo: '+cbCentroCusto.idRetorno+' - '+cbCentroCusto.Text;
                LBL_01_TITULO2.Caption := LBL_01_TITULO2.Caption + ' - Centro Custo: '+cbCentroCusto.idRetorno+' - '+cbCentroCusto.Text;
                LBL_00_TITULO2_CC.Caption := LBL_00_TITULO2.Caption + ' - Centro Custo: '+cbCentroCusto.idRetorno+' - '+cbCentroCusto.Text;
                // LBL_01_TITULO2_CC.Caption := LBL_01_TITULO2.Caption + ' - Centro Custo: '+cbCentroCusto.idRetorno+' - '+cbCentroCusto.Text;
                if LTBox.ItemIndex = 5 then
                  wSeleciona := wSeleciona + ' and e1.pcx_codigo = '+QuotedStr(cbCentroCusto.idRetorno)
                else
                if LTBox.ItemIndex = 6 then
                wSeleciona := wSeleciona + ' and ei.pcx_codigo = '+QuotedStr(cbCentroCusto.idRetorno);
              end;
         end;

         if (LTBox.ItemIndex = 0) then
         begin
               //Objeto Abaixo serve para o relatorio de Entrada de Notas Fiscais
               wSql1 := 'SELECT E1.ENF_NOTANUMBER, E1.OPE_NATUREZA,E1.OCP_CODIGO,E1.ENF_EMISSAO,E1.ENF_ENTRADA, ' +
               ' E1.ENF_VL_DESCTO,E1.FOR_CODIGO,E1.ENF_TOT_PROD,E1.ENF_VLFRETE,E1.ENF_VLSEGURO,E1.ENF_DESP_ACES, ' +
               ' E1.ENF_TOT_NOTA,E1.ENF_TIPO_NF_ENTRADA,F1.FOR_RAZAO,F1.FOR_FONE,' +
               ' p.PCX_NIVEL, p.PCX_DESCRI,' ;
               wSql2 := 'T1.TRP_RAZAO,T1.TRP_FONE '+
                        'FROM ENF0001 E1 LEFT '+
                        ' JOIN FOR0000 F1 ON ((F1.FOR_CODIGO = E1.FOR_CODIGO) AND (E1.ENF_TIPO_NF_ENTRADA IN (''N'',''C'')))'+
                        ' LEFT JOIN PCX0000 p ON (p.PCX_CODIGO = E1.PCX_CODIGO) ' +
                        ' LEFT JOIN TRP0000 T1 ON ((T1.TRP_CODIGO = E1.FOR_CODIGO) ) ';
               //
               SqlCdsImpNotas.Close;
               SqlCdsImpNotas.CommandText := SQLDEF('ORDENSCOMPRA',wSql1+wSql2,wSeleciona,wOrdem,'E1.');
               SqlCdsImpNotas.Open;
               LBL_00_EMPRESA.Caption    := dbInicio.Empresa.Razao;
               LBL_00_TITULO1.Caption    := 'RELATORIO DE NOTAS FISCAIS DE ENTRADA'+IIF(RadEmissao.checked ,' (DATA DE EMISSAO)',' (DATA DE ENTRADA)');


               if (RadVideo.checked ) then
                  ppRpImpNota.DeviceType := 'Screen';
               if (RadImpressora.checked ) then
               begin
                      ppRpImpNota.DeviceType      := 'Printer';
                      ppRpImpNota.ShowPrintDialog := true;
               end;

               RBuilderPreview(ppRpImpNota);
               Screen.Cursor := crDefault;
         end
         Else
         if LTBox.ItemIndex = 1 then
         begin
               if (CbxAlmox.Text<> 'TODOS') then
                  wSeleciona := wSeleciona + ' AND E2.AMX_CODIGO = '''+EdtAlmox.Text+'''';
               //Objeto Abaixo serve para o relatorio de Entrada de Notas Fiscais Detalhada
               wSql1 := 'SELECT E2.ENF_IT_NOTANUMBER,E2.ENF_QTDE,E2.ENF_PRECO,E2.ENF_IPIALIQ,E2.AMX_CODIGO,E2.FOR_CODIGO,A1.AMX_DESCRI,E1.OCP_CODIGO,E1.enf_vl_subtrib,';
               wSql2 := 'E1.ENF_VL_ICMS,E1.ENF_EMISSAO,E1.ENF_ENTRADA,E1.ENF_TOT_PROD,E1.ENF_VLFRETE,E1.ENF_VLSEGURO,E1.ENF_DESP_ACES,E1.ENF_TOT_NOTA,E1.ENF_ALIQ_ICMS,F1.FOR_RAZAO '+
                        'FROM ENF_IT01 E2 '+
                        'JOIN ENF0001 E1 ON (E2.ENF_IT_NOTANUMBER = E1.ENF_NOTANUMBER) AND (E2.for_codigo = E1.for_codigo) AND (E1.ENF_TIPO_NF_ENTRADA IN (''N'',''C''))'+
                        'JOIN FOR0000 F1 ON (E2.FOR_CODIGO = F1.FOR_CODIGO) '+
                        'LEFT JOIN ALMOX0000 A1 ON (A1.AMX_CODIGO = E2.AMX_CODIGO) ';
               SqlCdsImpNotasDetalhada.Close;
               SqlCdsImpNotasDetalhada.CommandText := SQLDEF('ORDENSCOMPRA',wSql1+wSql2,wSeleciona,'A1.AMX_DESCRI,E1.ENF_EMISSAO','E2.');
               SqlCdsImpNotasDetalhada.Open;
               if not CdsImpNotasDetalhada.Active then
                  CdsImpNotasDetalhada.CreateDataSet;
               if not SqlCdsImpNotasDetalhada.IsEmpty then
               begin
                      //limpar arquivo
                      CdsImpNotasDetalhada.EmptyDataSet;
                      SqlCdsImpNotasDetalhada.First;
                      while not SqlCdsImpNotasDetalhada.Eof do
                      begin
                           wAlmox      := SqlCdsImpNotasDetalhadaAMX_CODIGO.AsString;
                           wAlmoxDescri:= SqlCdsImpNotasDetalhadaAMX_DESCRI.AsString;
                           wNF         := SqlCdsImpNotasDetalhadaENF_IT_NOTANUMBER.AsString;
                           wFornecedor := SqlCdsImpNotasDetalhadaFOR_CODIGO.AsString;
                           wTotalAlmox := 0;
                           wValorIPI   := 0;
                           wValorICMS  := 0;
                           wTotalNF    := 0;
                           CdsImpNotasDetalhada.Append;
                           CdsImpNotasDetalhadaENF_IT_NOTANUMBER.AsString := SqlCdsImpNotasDetalhadaENF_IT_NOTANUMBER.AsString;
                           CdsImpNotasDetalhadaAMX_CODIGO.AsString        := StrZero(wAlmox,3);
                           CdsImpNotasDetalhadaAMX_DESCRI.AsString        := wAlmoxDescri; //SqlCdsImpNotasDetalhadaAMX_DESCRI.AsString;
                           CdsImpNotasDetalhadaOCP_CODIGO.AsString        := SqlCdsImpNotasDetalhadaOCP_CODIGO.AsString;
                           CdsImpNotasDetalhadaENF_EMISSAO.AsDateTime     := SqlCdsImpNotasDetalhadaENF_EMISSAO.AsDateTime;
                           CdsImpNotasDetalhadaENF_ENTRADA.AsDateTime     := SqlCdsImpNotasDetalhadaENF_ENTRADA.AsDateTime;
                           CdsImpNotasDetalhadaFOR_CODIGO.AsString        := SqlCdsImpNotasDetalhadaFOR_CODIGO.AsString;
                           CdsImpNotasDetalhadaFOR_RAZAO.AsString         := SqlCdsImpNotasDetalhadaFOR_RAZAO.AsString;
                           wValorICMS                                     := SqlCdsImpNotasDetalhadaENF_VL_ICMS.AsFloat;

                           CdsImpNotasDetalhadaVALOR_ICMS_ST.AsCurrency   := SqlCdsImpNotasDetalhadaENF_VL_SUBTRIB.AsCurrency;


                          while (SqlCdsImpNotasDetalhadaENF_IT_NOTANUMBER.AsString = wNF)and(SqlCdsImpNotasDetalhadaAMX_CODIGO.AsString = wAlmox)and (SqlCdsImpNotasDetalhadaFOR_CODIGO.AsString = wFornecedor) and not SqlCdsImpNotasDetalhada.Eof do
                           begin
                                wTotalAlmox := wTotalAlmox + (SqlCdsImpNotasDetalhadaENF_PRECO.AsCurrency   * SqlCdsImpNotasDetalhadaENF_QTDE.AsCurrency);
                                wValorIPI   := wValorIPI   + ((SqlCdsImpNotasDetalhadaENF_PRECO.AsCurrency  * SqlCdsImpNotasDetalhadaENF_IPIALIQ.AsCurrency)  /100) * SqlCdsImpNotasDetalhadaENF_QTDE.AsCurrency;
                                //wValorICMS  := wValorICMS  + ((SqlCdsImpNotasDetalhadaENF_PRECO.AsCurrency  * SqlCdsImpNotasDetalhadaENF_ALIQ_ICMS.AsCurrency)/100) * SqlCdsImpNotasDetalhadaENF_QTDE.AsCurrency;
                                wTotalNF    := wTotalNF    + (((SqlCdsImpNotasDetalhadaENF_PRECO.AsCurrency * SqlCdsImpNotasDetalhadaENF_IPIALIQ.AsCurrency)  /100) + SqlCdsImpNotasDetalhadaENF_PRECO.AsCurrency) * SqlCdsImpNotasDetalhadaENF_QTDE.AsCurrency;
                             SqlCdsImpNotasDetalhada.Next;
                           end;
                           CdsImpNotasDetalhadaTOTAL_PRODUTOS.AsCurrency  := wTotalAlmox;
                           CdsImpNotasDetalhadaVALOR_IPI.AsCurrency       := wValorIPI;
                           CdsImpNotasDetalhadaVALOR_ICMS.AsCurrency      := wValorICMS;
                           CdsImpNotasDetalhadaTOTAL_NF.AsCurrency        := wTotalNF+CdsImpNotasDetalhadaVALOR_ICMS_ST.AsCurrency;
                           CdsImpNotasDetalhada.Post;
                      end;

                      CdsImpNotasDetalhada.First;
                      LBL_01_EMPRESA.Caption    := dbInicio.Empresa.Razao;
                      LBL_01_TITULO1.Caption    := 'RELATORIO DE TRIBUTOS DE NOTAS FISCAIS DE ENTRADA '+IIF(RadEmissao.checked ,' (DATA DE EMISSAO)',' (DATA DE ENTRADA)');
                      if (RadVideo.checked ) then
                         ppRpImpNotaDetalhado.DeviceType := 'Screen';
                      if (RadImpressora.checked ) then
                      begin
                             ppRpImpNotaDetalhado.DeviceType := 'Printer';
                             ppRpImpNotaDetalhado.ShowPrintDialog := true;
                      end;

                      RBuilderPreview(ppRpImpNotaDetalhado);
                      Screen.Cursor := crDefault;
               end
               else
               begin
                      CdsImpNotasDetalhada.First;
                      LBL_01_EMPRESA.Caption    := dbInicio.Empresa.Razao;
                      LBL_01_TITULO1.Caption    := 'RELATORIO DE TRIBUTOS DE NOTAS FISCAIS DE ENTRADA '+IIF(RadEmissao.checked ,' (DATA DE EMISSAO)',' (DATA DE ENTRADA)');
                      if (RadVideo.checked ) then
                         ppRpImpNotaDetalhado.DeviceType := 'Screen';
                      if (RadImpressora.checked ) then
                      begin
                             ppRpImpNotaDetalhado.DeviceType := 'Printer';
                             ppRpImpNotaDetalhado.ShowPrintDialog := true;
                      end;
                     
                      RBuilderPreview(ppRpImpNotaDetalhado);
                      Screen.Cursor := crDefault;
               end;
         end
         Else
         if LTBox.ItemIndex = 2 then
         begin


              SQLCdSCFOP.Close;
              SQLCdSCFOP.CommandText := 'SELECT SUM(e2.enf_it_baseicms) as BASE_ICMS, SUM(e2.enf_icms) as VALOR_ICMS,'+
                                        'E2.ENF_CFOP, '+
                                        'E1.ENF_ENTRADA, '+
                                        'E1.ENF_EMISSAO, '+
                                        'E2.ENF_IT_NOTANUMBER, '+
                                        'CAST(F1.FOR_RAZAO AS VARCHAR(70)) as FOR_RAZAO, '+
                                        'SUM(CAST(E2.ENF_QTDE* '+
                                        'E2.ENF_PRECO AS NUMERIC(18,2))) AS PRODUTOS, '+
                                        'SUM(e2.ENF_VLSUBST) as VALOR_ST, '+
                                        'SUM(CAST((E2.ENF_IPIALIQ/100)AS NUMERIC (18,4))*CAST((E2.ENF_QTDE*E2.ENF_PRECO)AS NUMERIC (18,4))) AS VALOR_IPI, '+
                                        'CAST(SUM(E1.ENF_VLFRETE+E1.ENF_VLSEGURO+E1.ENF_DESP_ACES)AS NUMERIC (18,4)) AS OUTROS, '+
                                        'CAST((SUM(CAST(E2.ENF_QTDE* '+
                                        'E2.ENF_PRECO AS NUMERIC(18,2))) + '+
                                        'SUM(e2.ENF_VLSUBST) + '+
                                        //'SUM(e2.ENF_IT_DESCTO) + '+
                                        'SUM(CAST((E2.ENF_IPIALIQ/100)AS NUMERIC (18,4))*CAST((E2.ENF_QTDE*E2.ENF_PRECO)AS NUMERIC (18,4))) + '+
                                        'CAST(SUM(E1.ENF_VLFRETE+E1.ENF_VLSEGURO+E1.ENF_DESP_ACES)AS NUMERIC (18,4)) '+
                                        ')AS NUMERIC (18,4)) AS NOTAS '+
                                        'FROM ENF_IT01 E2 JOIN ENF0001 E1 ON (E2.ENF_IT_NOTANUMBER = E1.ENF_NOTANUMBER) AND (E2.for_codigo = E1.for_codigo) AND (E1.ENF_TIPO_NF_ENTRADA = ''N'') '+
                                        'JOIN FOR0000 F1 ON (E2.FOR_CODIGO = F1.FOR_CODIGO)  '+
                                        'LEFT JOIN ALMOX0000 A1 ON (A1.AMX_CODIGO = E2.AMX_CODIGO)  '+
                                        //filtros
                                        'where E1.'+iif(RadEmissao.Checked,'ENF_EMISSAO','ENF_ENTRADA')+' BETWEEN '+wDataI+' AND '+wDataF+'  AND E1.EMP_CODIGO = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+'  '+
                                        iif(cbCentroCusto.idRetorno <> '', ' and e1.pcx_codigo = '+QuotedStr(cbCentroCusto.idRetorno),'')+
                                        'GROUP BY E2.ENF_CFOP,E1.ENF_ENTRADA, E2.ENF_IT_NOTANUMBER, E1.ENF_EMISSAO, 7  '+
                                        'UNION all  '+
                                        'SELECT  SUM(CAST(t1.enf_baseicms AS NUMERIC(18,2))) AS enf_baseicms, SUM(CAST(t1.enf_vl_icms AS NUMERIC(18,2))) AS enf_vl_icms, '+
                                        't1.OPE_NATUREZA, '+
                                        't1.ENF_ENTRADA, '+
                                        't1.ENF_EMISSAO, '+
                                        't1.ENF_NOTANUMBER, '+
                                        't2.TRP_RAZAO, '+
                                        'SUM(CAST(t1.ENF_TOT_NOTA AS NUMERIC(18,2))) AS PRODUTOS, '+
                                        'SUM(CAST(t1.ENF_TOT_CSUB AS NUMERIC(18,2))) AS ENF_TOT_CSUB, '+
                                        'SUM(t1.ENF_VL_IPI) AS ENF_VL_IPI , '+
                                        'SUM(CAST(t1.ENF_VLFRETE + t1.ENF_VLSEGURO + t1.ENF_DESP_ACES  AS NUMERIC(18,2))) AS OUTROS, '+
                                        'SUM(CAST(t1.ENF_TOT_NOTA AS NUMERIC(18,2))) AS NOTAS '+
                                        'FROM ENF0001 t1  '+
                                        'JOIN TRP0000 t2 on (t2.TRP_CODIGO = t1.FOR_CODIGO) '+
                                        //filtros
                                        'WHERE t1.'+iif(RadEmissao.Checked,'ENF_EMISSAO','ENF_ENTRADA')+' BETWEEN '+wDataI+' AND '+wDataF+'  AND t1.EMP_CODIGO = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+' and t1.ENF_TIPO_NF_ENTRADA = ''C''  '+
                                         iif(cbCentroCusto.idRetorno <> '', ' and t1.pcx_codigo = '+QuotedStr(cbCentroCusto.idRetorno),'')+
                                        'GROUP BY t1.OPE_NATUREZA,t1.ENF_ENTRADA, t1.ENF_EMISSAO,t1.ENF_NOTANUMBER,t2.TRP_RAZAO'+
                                        ' ORDER BY 3,4,5,6';
              SQLCdSCFOP.Open;
              LBL_00_EMPRESA.Caption    := dbInicio.Empresa.Razao;
              LBL_00_TITULO1.Caption    := 'RELATORIO DE NOTAS FISCAIS DE ENTRADA'+IIF(RadEmissao.checked ,' (DATA DE EMISSAO)',' (DATA DE ENTRADA)');
              frxCFOP.ShowReport;
              Screen.Cursor := crDefault;
         end
         Else
         if LTBox.ItemIndex = 4 then
         begin
            sql := ' SELECT DISTINCT fo.EMP_CODIGO, ka.AMX_CODIGO, fo.for_razao, ne.enf_notanumber, ne.enf_entrada, ne.enf_emissao, ' +
                   ' 	nfit.prd_refer, pr.prd_descri, nfit.enf_qtde,	nfit.enf_preco, ' +
                   '  (nfit.enf_qtde * nfit.enf_preco) AS total ' +
                   ' FROM enf_it01 nfit ' +
                   '  INNER JOIN enf0001 ne ON nfit.enf_it_notanumber = ne.enf_notanumber AND ne.' + iif(RadEmissao.Checked,'ENF_EMISSAO','ENF_ENTRADA') + ' BETWEEN ' + DateToSQL(DataInicial.Date) + ' AND ' + DateToSQL(DataFinal.Date) + ' ' +
                   '  INNER JOIN for0000 fo ON nfit.for_codigo = fo.for_codigo ' +
	                 '  INNER JOIN prd0000 pr ON nfit.prd_refer = pr.prd_refer ' +
                   '  INNER JOIN kardex ka ON ka.prd_codigo = pr.prd_codigo ' +
                   ' WHERE nfit.emp_codigo = ' + QuotedStr(DBInicio.Emp_Codigo) +
                   iif(EdtAlmox.Text = '' , '' , ' AND ka.amx_codigo = ' + QuotedStr(EdtAlmox.Text)  ) +
                   iif(EditFor.Text = '' , '' , ' AND fo.for_codigo = ' + QuotedStr(EditFor.Text)  ) +
                   iif(edProdutoCodigo.Text = '' , '' , ' AND pr.prd_refer = ' + QuotedStr(edProdutoCodigo.Text)  ) +
                   ' ORDER BY fo.FOR_RAZAO, ne.ENF_NOTANUMBER';
            if radExcel.Checked then
            begin
              sql := ' SELECT DISTINCT fo.EMP_CODIGO, ka.AMX_CODIGO, fo.for_razao, ne.enf_notanumber, ne.enf_entrada, ne.enf_emissao, ' +
                     ' 	nfit.prd_refer, pr.prd_descri, nfit.enf_qtde,	nfit.enf_preco, ' +
                     '  (nfit.enf_qtde * nfit.enf_preco) AS total ' +
                     ' FROM enf_it01 nfit ' +
                     '  INNER JOIN enf0001 ne ON nfit.enf_it_notanumber = ne.enf_notanumber AND ne.' + iif(RadEmissao.Checked,'ENF_EMISSAO','ENF_ENTRADA') + ' BETWEEN ' + DateToSQL(DataInicial.Date) + ' AND ' + DateToSQL(DataFinal.Date) + ' ' +
                     '  INNER JOIN for0000 fo ON nfit.for_codigo = fo.for_codigo ' +
                     '  INNER JOIN prd0000 pr ON nfit.prd_refer = pr.prd_refer ' +
                     '  INNER JOIN kardex ka ON ka.prd_codigo = pr.prd_codigo ' +
                     ' WHERE 1 = 1 '  +
                     iif(EdtAlmox.Text = '' , '' , ' AND ka.amx_codigo = ' + QuotedStr(EdtAlmox.Text)  ) +
                     iif(EditFor.Text = '' , '' , ' AND fo.for_codigo = ' + QuotedStr(EditFor.Text)  ) +
                     iif(edProdutoCodigo.Text = '' , '' , ' AND pr.prd_refer = ' + QuotedStr(edProdutoCodigo.Text)  ) +
                     ' ORDER BY fo.FOR_RAZAO, ne.ENF_NOTANUMBER';
              qForProduto.Close;
              cdsForProduto.Close;
              qForProduto.SQL.Clear;
              qForProduto.SQL.Text := sql;
              if DBInicio.IsDesenvolvimento then
                CopyToClipBoard(sql);
              cdsForProduto.Open;
              lista := TStringList.Create;
              lista.Clear;
              lista.add('enf_notanumber');
              lista.add('enf_emissao');
              lista.add('enf_entrada');
              lista.add('AMX_CODIGO');
              lista.add('for_razao');
              lista.add('prd_refer');
              lista.add('prd_descri');
              lista.add('enf_qtde');
              lista.add('enf_preco');
              lista.add('total');
              CriaCSV(dsForProdutoExcel, lista, Self);
            end
            else
            begin
              sql := ' SELECT DISTINCT fo.EMP_CODIGO, ka.AMX_CODIGO, fo.for_razao, ne.enf_notanumber, ne.enf_entrada, ne.enf_emissao, ' +
                     ' 	nfit.prd_refer, pr.prd_descri, nfit.enf_qtde,	nfit.enf_preco, ' +
                     '  (nfit.enf_qtde * nfit.enf_preco) AS total ' +
                     ' FROM enf_it01 nfit ' +
                     '  INNER JOIN enf0001 ne ON nfit.enf_it_notanumber = ne.enf_notanumber AND ne.' + iif(RadEmissao.Checked,'ENF_EMISSAO','ENF_ENTRADA') + ' BETWEEN ' + DateToSQL(DataInicial.Date) + ' AND ' + DateToSQL(DataFinal.Date) + ' ' +
                     '  INNER JOIN for0000 fo ON nfit.for_codigo = fo.for_codigo ' +
                     '  INNER JOIN prd0000 pr ON nfit.prd_refer = pr.prd_refer ' +
                     '  INNER JOIN kardex ka ON ka.prd_codigo = pr.prd_codigo ' +
                     ' WHERE nfit.emp_codigo = ' + QuotedStr(DBInicio.Emp_Codigo) +
                     iif(EdtAlmox.Text = '' , '' , ' AND ka.amx_codigo = ' + QuotedStr(EdtAlmox.Text)  ) +
                     iif(EditFor.Text = '' , '' , ' AND fo.for_codigo = ' + QuotedStr(EditFor.Text)  ) +
                     iif(edProdutoCodigo.Text = '' , '' , ' AND pr.prd_refer = ' + QuotedStr(edProdutoCodigo.Text)  ) +
                     ' ORDER BY fo.FOR_RAZAO, ne.ENF_NOTANUMBER';
              qForProduto.Close;
              qForProduto.SQL.Clear;
              qForProduto.SQL.Text := sql;
              if DBInicio.IsDesenvolvimento then
                CopyToClipBoard(sql);
              qForProduto.Open;
              frxPorProduto.ShowReport;
            end;
         end
         Else
         if (LTBox.ItemIndex = 5) or  (LTBox.ItemIndex = 6) then
         begin
               //Objeto Abaixo serve para o relatorio de Centro de Custo por Item
               wSql1 := 'SELECT e1.OPE_NATUREZA, p2.PRD_REFER , p2.PRD_DESCRI, ei.ENF_QTDE, ei.ENF_PRECO, ' +
               ' E1.ENF_NOTANUMBER, E1.ENF_EMISSAO,E1.ENF_ENTRADA, ' +
               ' E1.FOR_CODIGO,ei.ENF_PRECO * ei.ENF_QTDE as ENF_TOT_PROD, ' +
               ' ei.ENF_PTOTAL_ORIGINAL ENF_TOT_NOTA,F1.FOR_RAZAO,F1.FOR_FONE,' +
               ' p.PCX_NIVEL, ' +
               ' COALESCE (p.PCX_DESCRI, (SELECT pcx.PCX_DESCRI FROM PCX0000 pcx WHERE pcx.PCX_CODIGO = ei.PCX_CODIGO)) AS PCX_DESCRI ' ;
               wSql2 := 'FROM ENF0001 E1  '+
                        ' JOIN enf_it01 ei ON ( ei.enf_it_notanumber = E1.enf_notanumber ) ' +
                        ' JOIN PRD0000 p2 ON (p2.PRD_REFER = ei.PRD_REFER) ' +
                        ' LEFT JOIN FOR0000 F1 ON ((F1.FOR_CODIGO = E1.FOR_CODIGO) AND (E1.ENF_TIPO_NF_ENTRADA IN (''N'',''C'')))'+
                        ' LEFT JOIN PCX0000 p ON (p.PCX_CODIGO = ei.PCX_CODIGO) ' +
                        ' LEFT JOIN TRP0000 T1 ON ((T1.TRP_CODIGO = E1.FOR_CODIGO) ) ';
               //
               qImpNotaCC.Close;

               wSeleciona := wSeleciona + iif((EditFor.Text = '') OR (EditFor.Text = '0000') , '' , ' AND f1.for_codigo = ' + QuotedStr(EditFor.Text)  );
               wSeleciona := wSeleciona + iif(edProdutoCodigo.Text = '' , '' , ' AND p2.prd_refer = ' + QuotedStr(edProdutoCodigo.Text)  );
               qImpNotaCC.Sql.Text := SQLDEF('ORDENSCOMPRA',wSql1+wSql2,wSeleciona,wOrdem +',E1.ENF_NOTANUMBER','E1.');
               if DBInicio.IsDesenvolvimento then
                 CopyToClipBoard(qImpNotaCC.SQL.Text);
               qImpNotaCC.Open;
               LBL_00_EMPRESA_CC.Caption    := dbInicio.Empresa.Razao;
               LBL_00_TITULO1_CC.Caption    := 'RELATORIO DE NOTAS FISCAIS DE ENTRADA'+IIF(RadEmissao.checked ,' (DATA DE EMISSAO)',' (DATA DE ENTRADA)');
               if (RadVideo.checked ) then
                  ppRpImpNota.DeviceType := 'Screen';
               if (RadImpressora.checked ) then
               begin
                      ppRpImpNotaCentroCusto.DeviceType      := 'Printer';
                      ppRpImpNotaCentroCusto.ShowPrintDialog := true;
               end;
               RBuilderPreview(ppRpImpNotaCentroCusto);
               Screen.Cursor := crDefault;
         end

         ;


         //Cabecalho do Relatorios
         Screen.cursor := crDefault;

    end;

end;


procedure TFormConsNFGrid.EditForKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;
end;

procedure TFormConsNFGrid.edProdutoCodigoExit(Sender: TObject);
begin
  inherited;
  if edProdutoCodigo.Text <> '' then
  begin
     cbReferencia.idRetorno := edProdutoCodigo.Text;
     if cbReferencia.idRetorno = '' then
        GeraException('Produto não localizado')
  end
  else
  begin
   cbReferencia.Clear;
   edProdutoCodigo.Clear;

  end;
end;

procedure TFormConsNFGrid.EditForEnter(Sender: tObject);
begin
    EditFor.Color := $0080FFFF;
end;

procedure TFormConsNFGrid.CbxFornecedorEnter(Sender: tObject);
begin
    CbxFornecedor.Color := $0080FFFF;
end;

procedure TFormConsNFGrid.CbxFornecedorExit(Sender: tObject);
begin
    if (CbxFornecedor.Text <> 'TODOS') then
       begin
          if SqlCdsFornecedor.Locate('FOR_RAZAO',CbxFornecedor.Text,[]) then
             EditFor.Text := SqlCdsFornecedorFOR_CODIGO.AsString;
       end
    else
       begin
           EditFor.Text := '';
       end;
    CbxFornecedor.Color := clWindow;
end;

procedure TFormConsNFGrid.EditForExit(Sender: tObject);
begin
    EditFor.Text := StrZero(EditFor.Text,EditFor.MaxLength);
    if (CbxFornecedor.Visible ) then
       begin
           if SqlCdsFornecedor.Locate('FOR_CODIGO',EditFor.Text,[]) then
              CbxFornecedor.Text := SqlCdsFornecedorFOR_RAZAO.AsString;
       end;
    EditFor.Color := clWindow;
end;

procedure TFormConsNFGrid.DataInicialEnter(Sender: tObject);
begin
    DataInicial.Color := $0080FFFF;
end;

procedure TFormConsNFGrid.DataFinalEnter(Sender: tObject);
begin
    DataFinal.Color := $0080FFFF;
end;

procedure TFormConsNFGrid.DataInicialExit(Sender: tObject);
begin
    if DataInicial.Text <> '  /  /    ' then
       begin
           if not TestaDataStr(DataInicial.Text) then
                DataInicial.setfocus;
//           DataFinal.Date := DataInicial.Date;
       end;
    DataInicial.Color := clWindow;
end;

procedure TFormConsNFGrid.DataFinalExit(Sender: tObject);
begin
    if DataFinal.Text <> '  /  /    ' then
       begin
           if not TestaDataStr(DataFinal.Text) then
              DataFinal.setfocus;
       end;
    if DataFinal.Date < DataInicial.Date then
       begin
           uteis.aviso('Data final menor que a data inicial !');
           DataFinal.SetFocus;
           DataFinal.SelectAll;
       end;
    DataFinal.Color := clWindow;
end;

procedure TFormConsNFGrid.CbxFornecedorClick(Sender: tObject);
begin
    CbxFornecedor.Color := clWindow;
    if (CbxFornecedor.ItemIndex <> 0) then
       begin
           SqlCdsFornecedor.Locate('FOR_RAZAO',CbxFornecedor.Text,[]);
           EditFor.Text := SqlCdsFornecedorFOR_CODIGO.AsString;
       end
    else
       begin
           EditFor.Text := '';
       end;
end;

procedure TFormConsNFGrid.EdtAlmoxEnter(Sender: tObject);
begin
    EdtAlmox.Color := $0080FFFF;
end;

procedure TFormConsNFGrid.EdtAlmoxExit(Sender: tObject);
begin
    EdtAlmox.Text := StrZero(EdtAlmox.Text,EdtAlmox.MaxLength);
    if (CbxAlmox.Visible ) then
       begin
           if SqlCdsAlmox.Locate('AMX_CODIGO',EdtAlmox.Text,[]) then
              CbxAlmox.Text := SqlCdsAlmoxAMX_DESCRI.AsString;
       end;
    EdtAlmox.Color := clWindow;
end;

procedure TFormConsNFGrid.edtCentroExit(Sender: TObject);
begin
  inherited;
  cbCentroCusto.idRetorno := edtCentro.Text  ;

end;

procedure TFormConsNFGrid.CbxAlmoxEnter(Sender: tObject);
begin
    CbxAlmox.Color := $0080FFFF;
end;

procedure TFormConsNFGrid.CbxAlmoxClick(Sender: tObject);
begin
    if (CbxAlmox.ItemIndex <> 0) then
       begin
           SqlCdsAlmox.Locate('AMX_DESCRI',CbxAlmox.Text,[]);
           EdtAlmox.Text := SqlCdsAlmoxAMX_CODIGO.AsString;
       end
    else
       begin
           EdtAlmox.Text := '';
       end;
end;

procedure TFormConsNFGrid.CbxAlmoxExit(Sender: tObject);
begin
    if (CbxAlmox.Text <> 'TODOS') then
       begin
          if SqlCdsAlmox.Locate('AMX_DESCRI',CbxAlmox.Text,[]) then
             EdtAlmox.Text := SqlCdsAlmoxAMX_CODIGO.AsString;
       end
    else
       begin
           EdtAlmox.Text := '';
       end;
    CbxAlmox.Color := clWindow;
end;

procedure TFormConsNFGrid.LTBoxClick(Sender: tObject);
begin
     LayOutNF;
end;

procedure TFormConsNFGrid.LayOutNF;
begin
    GrpPesquisa.Visible    := false;  // 0,1,2
    GrpPeriodo.Visible     := false;  // 0,1,2
    GrpAlmox.Visible       := false;  // 1,2
    GrpFornecedor.Visible  := false;  // 0,1,3
    pnNumNF.Visible        := False;  // 3
    radExcel.Visible        := False;  // 4
    grpCentroCusto.Visible := False; // 5, 6
    DataInicial.Date       := Now;
    DataFinal.Date         := Now;


    if (LTBox.ItemIndex = 0)  then
    begin
         GrpPesquisa.Visible    := True ;
         GrpPeriodo.Visible     := True;
         GrpFornecedor.Visible  := True;
         grproduto.Visible      := False;
         DataInicial.SetFocus;
         DataInicial.SelectAll;
    end
    Else
    if  (LTBox.ItemIndex = 5) or  (LTBox.ItemIndex = 6)  then
    begin
         GrpPesquisa.Visible    := True ;
         GrpPeriodo.Visible     := True;
         GrpFornecedor.Visible  := True;
         grproduto.Visible      := True;
         grpCentroCusto.Visible := True;
         DataInicial.SetFocus;
         DataInicial.SelectAll;
    end
    Else
    if (LTBox.ItemIndex = 1) then
    begin
         GrpPesquisa.Visible   := true;
         GrpPeriodo.Visible    := true;
         GrpFornecedor.Visible := true;
         GrpAlmox.Visible      := true;
         grproduto.Visible     := False;
    end
    Else
    if (LTBox.ItemIndex = 2) then
    begin
           GrpPesquisa.Visible   := true;
           GrpPeriodo.Visible    := true;
           GrpAlmox.Visible      := true;
           grproduto.Visible     := False;
    end
    Else
    if (LTBox.ItemIndex = 3) then
    begin
         pnNumNf.visible := True;
         grpFornecedor.visible := True;
         grproduto.Visible := True;
         GrpPesquisa.Visible := True;
         grpPeriodo.Visible := True;
         if Cdsnf.active then
         if not CdsnfENF_NOTANUMBER.IsNull then
         begin
              Edit1.Text := CdsnfENF_NOTANUMBER.AsString;
              EditFor.Text := CdsnfFOR_CODIGO.AsString;
              EditForExit(NIL);
         end;
    end
    else
    if (LTBox.ItemIndex = 4) then
    begin
         GrpAlmox.Visible       := True;
         GrpFornecedor.Visible  := True;
         GrpPesquisa.Visible    := True ;
         GrpPeriodo.Visible     := True;
         grproduto.Visible      := True;
         grpCentroCusto.Visible := False;
         radExcel.Visible        := True;
         DataInicial.SetFocus;
         DataInicial.SelectAll;
    end;

    Self.Refresh;
end;

procedure TFormConsNFGrid.SqlCdsImpNotasCalcFields(DataSet: TDataSet);
begin
   if (SqlCdsImpNotasENF_TIPO_NF_ENTRADA.AsString = 'N') then
      SqlCdsImpNotasCC_RAZAO.AsString := SqlCdsImpNotasFOR_RAZAO.AsString
   else
      SqlCdsImpNotasCC_RAZAO.AsString := SqlCdsImpNotasTRP_RAZAO.AsString;
end;

procedure TFormConsNFGrid.DbGridNFDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
Check: Integer;
R: TRect;
begin
    if (not odd(CdsNF.RecNo)) then
       if not (GdSelected in State) then
          begin
              DbGridNF.Canvas.Brush.Color := $00FFEFDF;
              DbGridNF.Canvas.FillRect(rect);
              DbGridNF.DefaultDrawDataCell(Rect,column.Field,state);
          end;

   //Desenha um checkbox no dbgrid
   if Column.FieldName = 'ENF_FECHADO_PROJETO_OBRA' then
      begin
         DbGridNF.Canvas.FillRect(Rect);
         Check := 0;
         if CdsNFENF_FECHADO_PROJETO_OBRA.AsString = 'S' then
            Check := DFCS_CHECKED
         else
            Check := 0;
         R:=Rect;
         TDBGrid(sender).Canvas.Font.Color :=  TDBGrid(sender).Canvas.Brush.Color;
         InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
         DrawFrameControl(DbGridNF.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
      end;
   if Column.FieldName = 'NFE_XML' then
      begin
         DbGridNF.Canvas.FillRect(Rect);
         Check := 0;
         if CdsNFNFE_XML.AsString = 'S' then
            Check := DFCS_CHECKED
         else
            Check := 0;
         R:=Rect;
         InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
         DrawFrameControl(DbGridNF.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
      end;
end;

procedure TFormConsNFGrid.DbGridItemNFDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    if (not odd(SqlCdsItensNF.RecNo)) then
       if not (GdSelected in State) then
          begin
              DbGridItemNF.Canvas.Brush.Color := $00FFEFDF;
              DbGridItemNF.Canvas.FillRect(rect);
              DbGridItemNF.DefaultDrawDataCell(Rect,column.Field,state);
          end;
end;

procedure TFormConsNFGrid.DbGridNFTitleClick(Column: TColumn);
begin
   MarcarIndexarCampoGrade(DbGridNF,
                           Column,
                           CdsNF);
end;

procedure TFormConsNFGrid.CdsNFAfterScroll(DataSet: TDataSet);
begin
      if not DataSet.IsEmpty then
      begin
        Application.ProcessMessages;
        SqlCdsItensNF.Close;
        SqlCdsItensNF.CommandText := SQLDEF('ORDENSCOMPRA','SELECT I1.*,A1.AMX_DESCRI FROM ENF_IT01 I1 LEFT JOIN ALMOX0000 A1 ON (A1.AMX_CODIGO = I1.AMX_CODIGO)','WHERE I1.ENF_IT_NOTANUMBER = '''+CdsNFENF_NOTANUMBER.AsString+''' AND I1.FOR_CODIGO = '''+CdsNFFOR_CODIGO.AsString+'''','I1.ENF_IT_NOTANUMBER,A1.AMX_DESCRI','I1.');
        SqlCdsItensNF.Open;
        Application.ProcessMessages;
      end
      Else
        SqlCdsItensNF.Close;
end;

procedure TFormConsNFGrid.frxCFOPGetValue(const VarName: String;
  var Value: Variant);
begin
   if (VarName = 'EMPRESA') then
      Value := Trim(dbInicio.Empresa.RAZAO);
   if (VarName = 'FILTRO') then
      Value := LBL_00_TITULO1.Caption+': '+DataInicial.Text+' À '+DataFinal.Text+'';
end;

procedure TFormConsNFGrid.frxPorProdutoBeginDoc(Sender: TObject);
begin
  inherited;
  TfrxPictureView(frxPorProduto.FindObject('LogoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);
end;

procedure TFormConsNFGrid.frxPorProdutoGetValue(const VarName: string; var Value: Variant);
begin
  inherited;
  if (VarName  = 'EMPRESA') then
     Value := DBInicio.Empresa.RAZAO;
  if (VarName  = 'DataI') then
     Value := DataInicial.Text;
  if (VarName  = 'DataF') then
     Value := DataFinal.Text;
end;

procedure TFormConsNFGrid.DbGridNFDblClick(Sender: tObject);
begin
   SelecionaNota;
   ModalResult := mrOk;
end;

procedure TFormConsNFGrid.SelecionaNota;
var
   iReg:Integer;
begin
   if (not CdsNF.IsEmpty) then
      begin
         if (Assigned(FrmProjetoObraNotaEntrada)) then
            begin
               iReg := CdsNFENF_REGISTRO.AsInteger;
               FrmMenu.iRegistroSelecionado := iReg;
               Close;
            end
         else
         if (Assigned(FormNfEntrada)) then
            begin
               FormNfEntrada.EdtNota.Text := CdsNFENF_NOTANUMBER.AsString;
               FormNfEntrada.EdtFor_Codigo.Text := CdsNFFOR_CODIGO.AsString;
               Close;
            end;
      end;

end;

procedure TFormConsNFGrid.DbGridNFKeyPress(Sender: tObject; var Key: Char);
begin
   if (Key = #13) then
      begin
         Key := #0;
         SelecionaNota;
      end;
end;

procedure TFormConsNFGrid.FormCreate(Sender: tObject);
var vDec: Integer;
begin
  btnReprocessar.Enabled := DBInicio.Usuario.USERNAME = 'NOVI';
  Edit1.Clear;
  self.height:= 600;
  self.width := 1075;
  pnGrids.Align := alClient;
  BitPesquisarClick(nil);

  vDec := dbInicio.Empresa.iCasaDecimaisEnf;
  if dbInicio.Empresa.iCasaDecimaisEnf<2 then
      vDec := 2;
  SqlCdsItensNFENF_PRECO.DisplayFormat := '###,###,##0.'+StrZero('',vDec);

  // PanEntradaNF.Parent := pnGrids;

  PathNewRel := dbInicio.GetParametroSistema('PMT_PATHRELATORIO');

end;

procedure TFormConsNFGrid.FormDestroy(Sender: TObject);
begin
     if (not assigned(FormNfEntrada)) or (not assigned(FrmProjetoObraNotaEntrada)) then
        FormConsNFGrid := Nil;
end;

procedure TFormConsNFGrid.FormShow(Sender: TObject);
begin
  inherited;
  Edt_lista.SetFocus;
end;

procedure TFormConsNFGrid.qNfeConfPTI_DESCRIGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
     Text := Sender.DataSet.fieldbyname('pti_codigo').asstring+' - '+sender.AsString; // cod tipo - decri tipo 
end;

procedure TFormConsNFGrid.qNfeConfPRD_DESCRIGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
     Text := Sender.DataSet.fieldbyname('PRD_REFER').asstring+' - '+sender.AsString; // cod  - decri produto
end;

procedure TFormConsNFGrid.qNfeConfVLTotalGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
     Text := FormatFloat( '###,##0.00' , Sender.DataSet.fieldbyname('enf_qtde').AsFloat * Sender.DataSet.fieldbyname('enf_preco').AsFloat );
end;

procedure TFormConsNFGrid.qNfeConfENF_NOTANUMBERGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
     Text := IntToStr( StrToIntDef( Sender.asstring,0 ) ) ;
end;

procedure TFormConsNFGrid.qNfeConfFOR_RAZAOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
     Text := Sender.DataSet.fieldbyname('FOR_CODIGO').asstring+' - '+sender.AsString; // cod  - decri produto
end;

procedure TFormConsNFGrid.qNfeConfENF_QTDEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
     Text := FormatFloat( '###,##0.000', Sender.Value );
end;

procedure TFormConsNFGrid.qNfeConfENF_PRECOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
     Text := FormatFloat( '###,##0.00', Sender.Value );
end;

procedure TFormConsNFGrid.Edt_listaChange(Sender: tObject);
begin
 BitPesquisar.Caption:='&Pesquisar';
 pesquisou := False;
end;

procedure TFormConsNFGrid.BitCancelarEntNFClick(Sender: tObject);
begin
  PanEntradaNF.Visible  := False;

end;

procedure TFormConsNFGrid.pnGridsResize(Sender: tObject);
begin
  PanEntradaNF.Left := Trunc((pnGrids.Width - PanEntradaNF.Width) / 2) ;
  PanEntradaNF.Top :=  50;  //Trunc((pnGrids.Height - PanEntradaNF.Height) / 2) ;

end;

procedure TFormConsNFGrid.ppSystemVariable11GetText(Sender: TObject; var Text: string);
begin
  inherited;
  text:= FormatDateTime('dd/mm/yyyy hh:m',now);
end;

procedure TFormConsNFGrid.ppSystemVariable2GetText(Sender: TObject; var Text: string);
begin
  inherited;
  text:= StringReplace(text,'of','de',[]);
  text:= StringReplace(text,'Page','Pág.',[]);
end;

end.






