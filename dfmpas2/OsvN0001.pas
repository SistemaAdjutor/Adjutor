unit OsvN0001;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, BaseDbEstoqueForm,
  Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, Db, DBTables, RwFunc,System.Variants,
  Provider, SqlExpr,SqlClientDataSet, DBClient, DBLocal, DBLocalS, ComCtrls, Mask,  rxToolEdit,
   rxCurrEdit, DBCtrls, ppBands, ppVar, ppCtrls, ppPrnabl, ppClass, ppCache,
  ppDB, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppModule, raCodMod,
  ImgList, FMTBCd, jpeg, Data.DBXFirebird,
  ppDesignLayer, ppParameter, System.ImageList, SimpleDS, frxClass, frxDBSet, ACBrEnterTab, ACBrBase, ACBrCalculadora, ACBrETQ, JvExMask, JvToolEdit, ppStrtch, ppMemo, Vcl.Menus,
  frmApontamentoFab, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  frxExportPDF, System.StrUtils, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, frxExportBaseDialog;

type
  TFormOrdServCentroNovo = class(TfrmBaseDbEstoque)
    SqlCdsOPImp: TSQLClientDataSet;
    DsOP: TDataSource;
    DsCelOP: TDataSource;
    SqlCdsCelOp: TSQLClientDataSet;
    SqlCdsParam: TSQLClientDataSet;
    SqlCdsParamPMT_CELULAPROD: TStringField;
    SqlCdsParamPMT_MDL_OP: TStringField;
    SqlCdsParamPMT_PROCESPROD: TStringField;
    SqlCdsParamPMT_UNFORMULA: TSmallintField;
    SqlCdsCelOpCEL_CODIGO: TStringField;
    SqlCdsCelOpCEL_NOME: TStringField;
    SqlCdsCelOpCEM_TUPTRAB: TFMTBCdField;
    SqlCdsCelOpCEM_TRABALHO: TStringField;
    pgcPCP: TPageControl;
    tsOrdem: TTabSheet;
    DbGridCelulas: TDBGrid;
    SqlCdsParamPMT_VARIACOES: TStringField;
    SqlCdsItemOP: TSQLClientDataSet;
    DsItemOP: TDataSource;
    tsitemOS: TTabSheet;
    GroupBox4: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    EdtOp: TEdit;
    EdtEmissao: TEdit;
    EdtRefer: TEdit;
    EdtDescri: TEdit;
    CurrQtde: TCurrencyEdit;
    GrpVar: TGroupBox;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Label20: TLabel;
    Label21: TLabel;
    Bevel7: TBevel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    CurrTotal: TCurrencyEdit;
    CurrMod1: TCurrencyEdit;
    CurrMod2: TCurrencyEdit;
    CurrMod3: TCurrencyEdit;
    CurrMod4: TCurrencyEdit;
    CurrMod5: TCurrencyEdit;
    CurrMod6: TCurrencyEdit;
    CurrMod7: TCurrencyEdit;
    CurrMod8: TCurrencyEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    SqlCdsProduto: TSQLClientDataSet;
    DsProduto: TDataSource;
    SqlCdsProdutoPRD_REFER: TStringField;
    SqlCdsProdutoPRD_DCVAR1: TStringField;
    SqlCdsProdutoPRD_DCVAR2: TStringField;
    SqlCdsProdutoPRD_DCVAR3: TStringField;
    SqlCdsProdutoPRD_DCVAR4: TStringField;
    SqlCdsProdutoPRD_DCVAR5: TStringField;
    SqlCdsProdutoPRD_DCVAR6: TStringField;
    SqlCdsProdutoPRD_DCVAR7: TStringField;
    SqlCdsProdutoPRD_DCVAR8: TStringField;
    SqlCdsParamPMT_EMPRESACLASSE: TStringField;
    SqlCdsCelOpCEM_DTENTROU: TDateField;
    SqlCdsCelOpCEM_DTCONCLUIU: TDateField;
    ppDBPipeline2: TppDBPipeline;
    ppRelOSP01: TppReport;
    ppRelOSP02: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    LBL_01_EMPRESA: TppLabel;
    ppLine29: TppLine;
    ppLine1: TppLine;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    LblSolicitado: TppLabel;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText13: TppDBText;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppShape12: TppShape;
    ppLabel9: TppLabel;
    ppShape13: TppShape;
    ppShape14: TppShape;
    ppShape15: TppShape;
    ppLabel10: TppLabel;
    ppShape16: TppShape;
    ppShape17: TppShape;
    ppShape18: TppShape;
    ppShape19: TppShape;
    ppShape20: TppShape;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppDBText12: TppDBText;
    ppDBText11: TppDBText;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel12: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppDetailBand2: TppDetailBand;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppLine2: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppShape21: TppShape;
    ppShape22: TppShape;
    ppLabel19: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppShape23: TppShape;
    ppShape24: TppShape;
    ppShape25: TppShape;
    ppShape26: TppShape;
    ppShape27: TppShape;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLabel20: TppLabel;
    ppLabel11: TppLabel;
    ppLabel21: TppLabel;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppShape28: TppShape;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppShape29: TppShape;
    ppShape30: TppShape;
    ppShape31: TppShape;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppShape32: TppShape;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    SqlCdsEmpenho: TSQLClientDataSet;
    DsEmpenho: TDataSource;
    TabSheet_apontadas: TTabSheet;
    DBGrid1: TDBGrid;
    DsEstoque: TDataSource;
    SqlCdsEstoque: TSQLClientDataSet;
    Panel3: TPanel;
    Pan_Materia: TPanel;
    Bit_Automatico: TBitBtn;
    Bit_Manual: TBitBtn;
    Label1: TLabel;
    Edt_Materia: TEdit;
    Label2: TLabel;
    DtDataEmissao: TDateEdit;
    Label3: TLabel;
    CurrQtdeEstoque: TCurrencyEdit;
    Bit_GravarMateria: TBitBtn;
    Bit_CancelarMateria: TBitBtn;
    GroupBox2: TGroupBox;
    DBGrid2: TDBGrid;
    GroupBox3: TGroupBox;
    DBGrid3: TDBGrid;
    Pan_Refazer: TPanel;
    Bit_Refazer: TBitBtn;
    Panel6: TPanel;
    GroupBox1: TGroupBox;
    Panel8: TPanel;
    Rad_Todas: TRadioButton;
    Panel9: TPanel;
    Rad_Concluida_Parcial: TRadioButton;
    Rad_Producao: TRadioButton;
    Panel7: TPanel;
    Panel10: TPanel;
    Rad_Concluida: TRadioButton;
    Panel11: TPanel;
    Rad_Estornada: TRadioButton;
    Panel12: TPanel;
    Panel13: TPanel;
    ppLine3: TppLine;
    SqlCdsEmpenhoEPM_CODIGO: TIntegerField;
    SqlCdsEmpenhoOSV_CODIGO: TStringField;
    SqlCdsEmpenhoPRD_REFER_ITENS: TStringField;
    SqlCdsEmpenhoEPM_QTDE: TFMTBCdField;
    SqlCdsEmpenhoEPM_DATAEMPENHO: TDateField;
    SqlCdsEmpenhoEPM_TIPOEMPENHO: TStringField;
    SqlCdsEmpenhoEPM_NUMDOC: TStringField;
    SqlCdsEmpenhoEPM_ORIGEM: TStringField;
    SqlCdsEmpenhoEMP_CODIGO: TStringField;
    SqlCdsEmpenhoEPM_STATUS: TStringField;
    SqlCdsEmpenhoPRD_DESCRI: TStringField;
    SqlCdsEmpenhoPRD_UND: TStringField;
    SqlCdsEmpenhoPTI_SIGLA: TStringField;
    SqlCdsEmpenhoTIPO_EMPENHO_CC: TStringField;
    SqlCdsItemOPOSV_CODIGO: TStringField;
    SqlCdsItemOPPRD_REFER_ITENS: TStringField;
    SqlCdsItemOPOSI_RESERVADO: TFMTBCdField;
    SqlCdsItemOPOSI_EMPENHO: TFMTBCdField;
    SqlCdsItemOPOSI_APONTADO: TFMTBCdField;
    SqlCdsItemOPPRD_DESCRI: TStringField;
    SqlCdsItemOPPRD_UND: TStringField;
    SqlCdsItemOPPTI_SIGLA: TStringField;
    SqlCdsItemOPOSI_STATUSEMPENHO: TStringField;
    SqlCdsItemOPWSTATUSEMPENHO: TStringField;
    imgList1: TImageList;
    Rad_Almoxarifado: TRadioButton;
    Grp_Pesquisa: TGroupBox;
    Rd_OS: TRadioButton;
    Rd_Pedido: TRadioButton;
    Rd_Refer: TRadioButton;
    Rd_Descricao: TRadioButton;
    BitCancelar: TBitBtn;
    BitPesquisar: TBitBtn;
    Grp_Ops: TGroupBox;
    Chk_Pendente: TCheckBox;
    SqlCdsParamPMT_OPS_CONCLUIR: TStringField;
    SqlCdsItemOPSepara_CC: TStringField;
    SqlCdsEstoqueOSI_REGISTRO: TIntegerField;
    SqlCdsEstoqueEMP_CODIGO: TStringField;
    SqlCdsEstoqueOSV_CODIGO: TStringField;
    SqlCdsEstoquePRD_REFER_ITENS: TStringField;
    SqlCdsEstoquePRD_DESCRI: TStringField;
    SqlCdsEstoquePRD_UND: TStringField;
    SqlCdsEstoquePTI_SIGLA: TStringField;
    SqlCdsEstoqueFALTA_EMPENHAR: TFMTBCdField;
    SqlCdsEstoqueWSALDO: TFMTBCdField;
    ppLine35: TppLine;
    ppLabel82: TppLabel;
    ppDBText80: TppDBText;
    ppDBText81: TppDBText;
    ppLabel83: TppLabel;
    ppDBText82: TppDBText;
    ppLabel84: TppLabel;
    ppDBText83: TppDBText;
    ppDBText84: TppDBText;
    ppLabel85: TppLabel;
    ppDBText85: TppDBText;
    Panel4: TPanel;
    Bit_Celulas: TBitBtn;
    Bit_Processo: TBitBtn;
    Panel2: TPanel;
    Bit_Imprimir: TBitBtn;
    BitEstornar: TBitBtn;
    Bit_Sair: TBitBtn;
    Bit_OpReservar: TBitBtn;
    Bit_OpProducao: TBitBtn;
    Bit_Concluir: TBitBtn;
    Panel15: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    Rd_Num_Lote: TRadioButton;
    Rd_Cliente: TRadioButton;
    SqlCdsItemOPPRD_LOTE: TStringField;
    SqlCdsItemOPFTC_TUP: TFMTBCdField;
    ppDBText86: TppDBText;
    LblProduzir: TppLabel;
    ppDBText87: TppDBText;
    SqlCdsItemOPOSI_QTDE1: TFMTBCdField;
    SqlCdsItemOPOSI_QTDE2: TFMTBCdField;
    SqlCdsItemOPOSI_QTDE3: TFMTBCdField;
    SqlCdsItemOPOSI_QTDE4: TFMTBCdField;
    SqlCdsItemOPOSI_QTDE5: TFMTBCdField;
    SqlCdsItemOPOSI_QTDE6: TFMTBCdField;
    SqlCdsItemOPOSI_QTDE7: TFMTBCdField;
    SqlCdsItemOPOSI_QTDE8: TFMTBCdField;
    SqlCdsItemOPQTDE3_CC: TCurrencyField;
    SqlCdsItemOPQTDE1_CC: TCurrencyField;
    SqlCdsItemOPQTDE2_CC: TCurrencyField;
    SqlCdsItemOPQTDE4_CC: TCurrencyField;
    SqlCdsItemOPQTDE5_CC: TCurrencyField;
    SqlCdsItemOPQTDE6_CC: TCurrencyField;
    SqlCdsItemOPQTDE7_CC: TCurrencyField;
    SqlCdsItemOPQTDE8_CC: TCurrencyField;
    SqlCdsItemOPQTDE_CC: TCurrencyField;
    ppLabel87: TppLabel;
    ppRelOSP03: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppShape48: TppShape;
    LBL_03_EMPRESA: TppLabel;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLabel86: TppLabel;
    ppDBText88: TppDBText;
    ppDBText89: TppDBText;
    ppDBText90: TppDBText;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppDBText91: TppDBText;
    ppDBText92: TppDBText;
    ppLabel92: TppLabel;
    ppShape49: TppShape;
    ppShape50: TppShape;
    ppShape54: TppShape;
    ppShape55: TppShape;
    ppShape56: TppShape;
    ppShape57: TppShape;
    ppShape58: TppShape;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppShape59: TppShape;
    ppLabel95: TppLabel;
    ppShape64: TppShape;
    ppShape65: TppShape;
    ppShape66: TppShape;
    ppShape67: TppShape;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLine38: TppLine;
    ppLabel104: TppLabel;
    ppDBText101: TppDBText;
    ppDBText102: TppDBText;
    ppLabel105: TppLabel;
    ppDBText103: TppDBText;
    ppLabel106: TppLabel;
    ppDBText104: TppDBText;
    ppDBText105: TppDBText;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    ppDBText106: TppDBText;
    ppLabel109: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText107: TppDBText;
    ppDBText108: TppDBText;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLine45: TppLine;
    ppLine49: TppLine;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLine52: TppLine;
    ppLine53: TppLine;
    ppSummaryBand3: TppSummaryBand;
    ppShape68: TppShape;
    ppShape69: TppShape;
    ppShape70: TppShape;
    ppLabel110: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppShape71: TppShape;
    ppShape72: TppShape;
    ppShape73: TppShape;
    ppShape74: TppShape;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppDBText111: TppDBText;
    ppDBText112: TppDBText;
    ppDBText113: TppDBText;
    ppDBText114: TppDBText;
    ppDBText115: TppDBText;
    ppDBText116: TppDBText;
    ppDBText117: TppDBText;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    ppShape76: TppShape;
    ppShape77: TppShape;
    ppShape78: TppShape;
    ppLabel117: TppLabel;
    ppLabel118: TppLabel;
    ppShape79: TppShape;
    ppLabel119: TppLabel;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppLabel122: TppLabel;
    ppLabel123: TppLabel;
    ppLabel124: TppLabel;
    ppLabel125: TppLabel;
    ppLabel126: TppLabel;
    ppLabel127: TppLabel;
    ppLine57: TppLine;
    ppLine58: TppLine;
    ppLine59: TppLine;
    ppLabel128: TppLabel;
    ppLabel129: TppLabel;
    ppDBText109: TppDBText;
    ppDBText95: TppDBText;
    SqlCdsEstoquePRD_CODIGO: TStringField;
    Label8: TLabel;
    dbedtOSV_RESPONSAVEL: TDBEdit;
    ppRelOSP05: TppReport;
    ppHeaderBand4: TppHeaderBand;
    LBL_05_EMPRESA: TppLabel;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppDBText96: TppDBText;
    ppDBText97: TppDBText;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppDBText127: TppDBText;
    ppLabel99: TppLabel;
    ppDBText128: TppDBText;
    ppDBText129: TppDBText;
    ppLabel130: TppLabel;
    ppDBText130: TppDBText;
    ppLabel131: TppLabel;
    ppVariable1: TppVariable;
    ppShape51: TppShape;
    ppLabel132: TppLabel;
    ppShape52: TppShape;
    ppShape53: TppShape;
    ppLabel134: TppLabel;
    ppLabel135: TppLabel;
    ppShape60: TppShape;
    ppShape61: TppShape;
    ppShape80: TppShape;
    ppShape84: TppShape;
    ppLabel136: TppLabel;
    ppDBText145: TppDBText;
    ppLabel137: TppLabel;
    ppDBText146: TppDBText;
    ppLine48: TppLine;
    ppLabel138: TppLabel;
    ppDBText147: TppDBText;
    ppLabel139: TppLabel;
    ppDBText148: TppDBText;
    ppLabel140: TppLabel;
    ppDBText149: TppDBText;
    ppDBText150: TppDBText;
    ppShape85: TppShape;
    ppLabel141: TppLabel;
    ppLabel142: TppLabel;
    ppLabel143: TppLabel;
    ppDBText151: TppDBText;
    ppLabel144: TppLabel;
    ppDBText152: TppDBText;
    ppDetailBand4: TppDetailBand;
    ppLine60: TppLine;
    ppLine62: TppLine;
    ppLine64: TppLine;
    ppLine66: TppLine;
    ppDBText153: TppDBText;
    ppLine67: TppLine;
    ppLine68: TppLine;
    ppLine70: TppLine;
    ppDBText154: TppDBText;
    ppLine73: TppLine;
    ppDBText155: TppDBText;
    ppDBText156: TppDBText;
    ppDBText157: TppDBText;
    ppDBText163: TppDBText;
    ppDBText164: TppDBText;
    ppDBText165: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    ppShape86: TppShape;
    ppLabel145: TppLabel;
    ppLabel146: TppLabel;
    ppLabel147: TppLabel;
    ppLabel148: TppLabel;
    ppLabel149: TppLabel;
    ppLabel150: TppLabel;
    ppLabel151: TppLabel;
    ppLabel152: TppLabel;
    ppLabel153: TppLabel;
    ppLabel154: TppLabel;
    ppLabel155: TppLabel;
    ppLabel156: TppLabel;
    ppLabel157: TppLabel;
    ppLabel158: TppLabel;
    ppLabel159: TppLabel;
    ppLabel160: TppLabel;
    ppLabel161: TppLabel;
    ppLabel162: TppLabel;
    ppLabel163: TppLabel;
    ppLabel164: TppLabel;
    ppLabel165: TppLabel;
    ppLabel166: TppLabel;
    ppLabel167: TppLabel;
    ppLabel168: TppLabel;
    ppLine75: TppLine;
    ppShape87: TppShape;
    ppDBText166: TppDBText;
    ppDBText167: TppDBText;
    ppLabel169: TppLabel;
    ppDBText168: TppDBText;
    ppDBText169: TppDBText;
    ppDBText170: TppDBText;
    ppDBText171: TppDBText;
    ppDBText172: TppDBText;
    raCodeModule2: TraCodeModule;
    ppLabel170: TppLabel;
    ppLine63: TppLine;
    ppLabel171: TppLabel;
    ppDBText133: TppDBText;
    SqlCdsItemOPGRADE: TStringField;
    ppLabel6: TppLabel;
    ppDBText134: TppDBText;
    ppLine61: TppLine;
    GrpBusca: TGroupBox;
    Edt_Nome: TEdit;
    frxOP: TfrxReport;
    frxdbdtstOrdemProducao: TfrxDBDataset;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    dta: TJvDateEdit;
    dtb: TJvDateEdit;
    ComboBuscaCampo: TComboBox;
    dbGridOS: TDBGrid;
    sqlOp: TSQLQuery;
    cdsOp: TClientDataSet;
    cdsOpOSV_REGISTRO: TIntegerField;
    cdsOpOSV_PAI: TStringField;
    cdsOpEMP_CODIGO: TStringField;
    cdsOpOSV_CODIGO: TStringField;
    cdsOpOSV_EMISSAO: TSQLTimeStampField;
    cdsOpOSV_VARIACAO: TStringField;
    cdsOpOSV_QTDE_SOLICITADA: TFMTBCDField;
    cdsOpOSV_QTDE: TFMTBCDField;
    cdsOpOSV_QTDE_CONVERTIDA: TFMTBCDField;
    cdsOpOSV_QTDE1: TFMTBCDField;
    cdsOpOSV_QTDE2: TFMTBCDField;
    cdsOpOSV_QTDE3: TFMTBCDField;
    cdsOpOSV_QTDE4: TFMTBCDField;
    cdsOpOSV_QTDE5: TFMTBCDField;
    cdsOpOSV_QTDE6: TFMTBCDField;
    cdsOpOSV_QTDE7: TFMTBCDField;
    cdsOpOSV_QTDE8: TFMTBCDField;
    cdsOpOSV_STATUS: TStringField;
    cdsOpOSV_IMPRESSO: TStringField;
    cdsOpOSV_LOTE: TStringField;
    cdsOpPED_CODIGO: TStringField;
    cdsOpOSV_CONCLUSAO: TSQLTimeStampField;
    cdsOpOSV_VALIDADE: TSQLTimeStampField;
    cdsOpFTC_TUP: TFMTBCDField;
    cdsOpOSV_PRECOUNIT: TFMTBCDField;
    cdsOpCEL_CODIGO: TStringField;
    cdsOpPRD_DESCRI: TStringField;
    cdsOpPRD_CODIGO: TStringField;
    cdsOpPGR_CODIGO: TStringField;
    cdsOpOSV_STATUS_SITUACAO: TStringField;
    cdsOpOSV_ESTOQUE: TFMTBCDField;
    cdsOpCLI_CODIGO: TStringField;
    cdsOpOSV_ORDEM_COMPRA: TStringField;
    cdsOpOSV_RESPONSAVEL: TStringField;
    cdsOpOSV_GERAR_PI: TStringField;
    cdsOpCLI_RAZAO: TStringField;
    cdsOpPRD_REFER: TStringField;
    cdsOpOSV_STATUS_CC: TStringField;
    sqlOpOSV_REGISTRO: TIntegerField;
    sqlOpOSV_PAI: TStringField;
    sqlOpEMP_CODIGO: TStringField;
    sqlOpOSV_CODIGO: TStringField;
    sqlOpOSV_EMISSAO: TSQLTimeStampField;
    sqlOpOSV_VARIACAO: TStringField;
    sqlOpOSV_QTDE_SOLICITADA: TFMTBCDField;
    sqlOpOSV_QTDE: TFMTBCDField;
    sqlOpOSV_QTDE_CONVERTIDA: TFMTBCDField;
    sqlOpOSV_QTDE1: TFMTBCDField;
    sqlOpOSV_QTDE2: TFMTBCDField;
    sqlOpOSV_QTDE3: TFMTBCDField;
    sqlOpOSV_QTDE4: TFMTBCDField;
    sqlOpOSV_QTDE5: TFMTBCDField;
    sqlOpOSV_QTDE6: TFMTBCDField;
    sqlOpOSV_QTDE7: TFMTBCDField;
    sqlOpOSV_QTDE8: TFMTBCDField;
    sqlOpOSV_STATUS: TStringField;
    sqlOpOSV_IMPRESSO: TStringField;
    sqlOpOSV_LOTE: TStringField;
    sqlOpPED_CODIGO: TStringField;
    sqlOpOSV_CONCLUSAO: TSQLTimeStampField;
    sqlOpOSV_VALIDADE: TSQLTimeStampField;
    sqlOpFTC_TUP: TFMTBCDField;
    sqlOpOSV_PRECOUNIT: TFMTBCDField;
    sqlOpCEL_CODIGO: TStringField;
    sqlOpPRD_DESCRI: TStringField;
    sqlOpPRD_CODIGO: TStringField;
    sqlOpPGR_CODIGO: TStringField;
    sqlOpOSV_STATUS_SITUACAO: TStringField;
    sqlOpOSV_ESTOQUE: TFMTBCDField;
    sqlOpCLI_CODIGO: TStringField;
    sqlOpOSV_ORDEM_COMPRA: TStringField;
    sqlOpOSV_RESPONSAVEL: TStringField;
    sqlOpOSV_GERAR_PI: TStringField;
    sqlOpCLI_RAZAO: TStringField;
    sqlOpPRD_REFER: TStringField;
    dsOpGrade: TDataSource;
    cdsOpCC_IMPRESSO: TBooleanField;
    frxOP1: TfrxReport;
    frxDBfichatecnica: TfrxDBDataset;
    SqlCdsFichaTecnica: TSqlClientDataSet;
    SqlCdsFichaTecnicaOSV_CODIGO: TStringField;
    SqlCdsFichaTecnicaPRD_REFER_ITENS: TStringField;
    SqlCdsFichaTecnicaOSI_QTDE1: TFMTBCDField;
    SqlCdsFichaTecnicaPRD_DESCRI: TStringField;
    SqlCdsFichaTecnicaPRD_UND: TStringField;
    cdsOpPRD_GERENCIA_LOTE: TStringField;
   // sqlOpPRD_GERENCIA_LOTE: TStringField;
    cdsOpOSV_QTDE_CONCLUIDA: TFMTBCDField;
    SqlCdsItemOPOSI_UC: TFloatField;
    cdsOpPRD_UND: TStringField;
    sqlOpPRD_UND: TStringField;
    ppHeaderBand2: TppHeaderBand;
    LBL_02_EMPRESA: TppLabel;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppDBText25: TppDBText;
    ppDBText28: TppDBText;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel40: TppLabel;
    ppDBText26: TppDBText;
    ppLabel39: TppLabel;
    ppDBText27: TppDBText;
    ppDBText29: TppDBText;
    ppLabel41: TppLabel;
    ppDBText30: TppDBText;
    ppLabel42: TppLabel;
    ppVarToTup: TppVariable;
    ppShape33: TppShape;
    ppLabel43: TppLabel;
    ppShape34: TppShape;
    ppShape35: TppShape;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppShape36: TppShape;
    ppShape39: TppShape;
    ppShape42: TppShape;
    ppShape43: TppShape;
    ppLabel47: TppLabel;
    ppLabel73: TppLabel;
    ppDBText44: TppDBText;
    ppLine27: TppLine;
    ppLabel36: TppLabel;
    ppDBText45: TppDBText;
    ppLabel59: TppLabel;
    ppDBText46: TppDBText;
    ppLabel74: TppLabel;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppShape44: TppShape;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppDBText51: TppDBText;
    ppLabel133: TppLabel;
    ppLabel172: TppLabel;
    ppDBText35: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppLine21: TppLine;
    ppLine26: TppLine;
    ppLine28: TppLine;
    ppLine30: TppLine;
    ppLine32: TppLine;
    ppDBText32: TppDBText;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine39: TppLine;
    ppDBText33: TppDBText;
    ppDBText50: TppDBText;
    ppDBText56: TppDBText;
    ppLine34: TppLine;
    ppDBText57: TppDBText;
    ppDBText34: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppShape45: TppShape;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLine22: TppLine;
    ppShape46: TppShape;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppLabel75: TppLabel;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    raCodeModule1: TraCodeModule;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppLabel173: TppLabel;
    ppLabel174: TppLabel;
    ppLabel175: TppLabel;
    ppShape37: TppShape;
    ppLine31: TppLine;
    ppDBText31: TppDBText;
    frxOP2: TfrxReport;
    SqlCdsFichaTecnicaOSI_UC: TFloatField;
    SqlCdsFichaTecnicaOSI_QTDE_TOTAL_cc: TCurrencyField;
    SqlCdsFichaTecnicaPTI_SIGLA: TStringField;
    sqlOpOSV_DTENTREGA: TSQLTimeStampField;
    cdsOpOSV_DTENTREGA: TSQLTimeStampField;
    SqlCdsOPImpPED_NUMERO_PED_CLIENTE: TStringField;
    SqlCdsOPImpEMP_CODIGO: TStringField;
    SqlCdsOPImpOSV_CODIGO: TStringField;
    SqlCdsOPImpOSV_EMISSAO: TSQLTimeStampField;
    SqlCdsOPImpPRD_REFER: TStringField;
    SqlCdsOPImpPGR_CODIGO: TStringField;
    SqlCdsOPImpPRD_DESCRI: TStringField;
    SqlCdsOPImpPRD_DCVAR1: TStringField;
    SqlCdsOPImpOSV_ORDEM_COMPRA: TStringField;
    SqlCdsOPImpOSV_RESPONSAVEL: TStringField;
    SqlCdsOPImpOSV_DTENTREGA: TSQLTimeStampField;
    SqlCdsOPImpPED_DTENTRADA: TSQLTimeStampField;
    SqlCdsOPImpPED_DTSAIDA: TSQLTimeStampField;
    SqlCdsOPImpCLI_CODIGO: TStringField;
    SqlCdsOPImpOSV_LOTE: TStringField;
    SqlCdsOPImpOSV_QTDE_SOLICITADA: TFMTBCDField;
    SqlCdsOPImpOSV_ESTOQUE: TFMTBCDField;
    SqlCdsOPImpOSV_QTDE: TFMTBCDField;
    SqlCdsOPImpOSV_QTDE_CONVERTIDA: TFMTBCDField;
    SqlCdsOPImpOSV_QTDE1: TFMTBCDField;
    SqlCdsOPImpOSV_OBS1: TStringField;
    SqlCdsOPImpOSV_OBS2: TStringField;
    SqlCdsOPImpOSV_OBS3: TStringField;
    SqlCdsOPImpOSV_OBS4: TStringField;
    SqlCdsOPImpOSV_OBS5: TStringField;
    SqlCdsOPImpOSV_OBS6: TStringField;
    SqlCdsOPImpOSV_OBS7: TStringField;
    SqlCdsOPImpPED_CODIGO: TStringField;
    SqlCdsOPImpOSV_VARIACAO: TStringField;
    SqlCdsOPImpCLI_RAZAO: TStringField;
    SqlCdsOPImpFTC_TUP: TFMTBCDField;
    SqlCdsOPImpOSV_PRECOUNIT: TFMTBCDField;
    SqlCdsOPImpCEL_CODIGO: TStringField;
    SqlCdsOPImpOSV_STATUS: TStringField;
    SqlCdsOPImpFTC_PROC1: TStringField;
    SqlCdsOPImpPRD_COMPL: TStringField;
    SqlCdsOPImpPRD_UND: TStringField;
    SqlCdsOPImpCLI_FONE: TStringField;
    SqlCdsOPImpCLI_CELULAR: TStringField;
    SqlCdsOPImpCLI_ENDERE: TStringField;
    SqlCdsOPImpCLI_BAIRRO: TStringField;
    SqlCdsOPImpOSV_STATUS_CC: TStringField;
    frxOP3: TfrxReport;
    ppLine33: TppLine;
    BitLimparEstorno: TBitBtn;
    sqlOpOSV_CODIGO_PAI: TStringField;
    cdsOpOSV_CODIGO_PAI: TStringField;
    SqlCdsOPImpFTC_PROC3: TStringField;
    SqlCdsOPImpFTC_PROC2: TStringField;
    SqlCdsOPImpFTC_PROC4: TStringField;
    SqlCdsOPImpFTC_PROC5: TStringField;
    SqlCdsOPImpFTC_PROC6: TStringField;
    SqlCdsOPImpFTC_PROC7: TStringField;
    SqlCdsOPImpFTC_PROC8: TStringField;
    SqlCdsOPImpOSV_CONCLUSAO: TSQLTimeStampField;
    mPROC_PRC_M1: TppMemo;
    pmApontar: TPopupMenu;
    miGerarEngenhariaProcessos: TMenuItem;
    miApontar: TMenuItem;
    tsEngenharia: TTabSheet;
    GroupBox5: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    EdtOpEng: TEdit;
    EdtEmissaoEng: TEdit;
    EdtReferEnge: TEdit;
    EdtDescriEnge: TEdit;
    CurrQtdeEnge: TCurrencyEdit;
    dsEngeGeral: TDataSource;
    dbgEngGeral: TDBGrid;
    qEngeGeral: TSqlClientDataSet;
    qEngeGeralOPE_DESCRICAO: TStringField;
    qEngeGeralSEQUENCIA: TIntegerField;
    qEngeGeralOSV_QTDE: TFMTBCDField;
    qEngeGeralOSV_DTENTREGA: TSQLTimeStampField;
    qEngeGeralFAB_PRODUZINDO: TFMTBCDField;
    qEngeGeralFAB_PRODUZIDA: TFMTBCDField;
    qEngeGeralFAB_REFUGADA: TFMTBCDField;
    qEngeGeralPRD_DESCRI: TStringField;
    qEngeGeralRestantes: TLargeintField;
    qEngeGeralFAB_CODIGO: TIntegerField;
    qEngeGeralOPE_CODIGO: TIntegerField;
    frxOP_Mod9: TfrxReport;
    frxDBEngenharia: TfrxDBDataset;
    qEspecifica: TSQLQuery;
    frxDBEspecifica: TfrxDBDataset;
    qEspecificaESR_CODIGO: TIntegerField;
    qEspecificaESR_NOME: TStringField;
    qEspecificaESR_PADROES: TStringField;
    qEspecificaESR_COL1: TStringField;
    qEspecificaESR_COL2: TStringField;
    qEspecificaESR_COL3: TStringField;
    qEspecificaESR_COL4: TStringField;
    qEspecificaESR_COL5: TStringField;
    qEspecificaESR_COL6: TStringField;
    qEspecificaESR_COL7: TStringField;
    qEspecificaFAB_CODIGO: TIntegerField;
    qParamEsp: TSQLQuery;
    qParamEspESP_NOME: TStringField;
    qParamEspESP_PADROES: TStringField;
    qParamEspESP_COL1: TStringField;
    qParamEspESP_COL2: TStringField;
    qParamEspESP_COL3: TStringField;
    qParamEspESP_COL4: TStringField;
    qParamEspESP_COL5: TStringField;
    qParamEspESP_COL6: TStringField;
    qParamEspESP_COL7: TStringField;
    frxDbParam: TfrxDBDataset;
    SqlCdsEmpenhoPRDL_REGISTRO: TIntegerField;
    CbLoteProduto: TcxLookupComboBox;
    Label31: TLabel;
    CdsLoteProduto: TSqlClientDataSet;
    CdsLoteProdutoPRDL_REGISTRO: TIntegerField;
    CdsLoteProdutoEMP_CODIGO: TStringField;
    CdsLoteProdutoPRDL_DATA_FABRICACAO: TDateField;
    CdsLoteProdutoPRDL_DATA_VALIDADE: TDateField;
    CdsLoteProdutoPRDL_LOTE: TStringField;
    CdsLoteProdutoPRDL_PRECO_MAXIMO: TFMTBCDField;
    CdsLoteProdutoPRDL_SALDO: TFMTBCDField;
    CdsLoteProdutoPRD_CODIGO: TStringField;
    dsLoteProduto: TDataSource;
    Bit_Estornar: TBitBtn;
    SqlCdsEmpenhoPRD_CODIGO: TStringField;
    SqlCdsEmpenhoPRDL_LOTE: TStringField;
    ppRelOSP10: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppShape38: TppShape;
    ppLabel2: TppLabel;
    ppLine40: TppLine;
    ppDBText16: TppDBText;
    ppDBText24: TppDBText;
    ppDBText36: TppDBText;
    ppLabel114: TppLabel;
    ppLabel176: TppLabel;
    ppLabel177: TppLabel;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppLabel178: TppLabel;
    ppShape40: TppShape;
    ppShape41: TppShape;
    ppShape47: TppShape;
    ppShape62: TppShape;
    ppShape75: TppShape;
    ppShape81: TppShape;
    ppLabel179: TppLabel;
    ppLabel180: TppLabel;
    ppShape82: TppShape;
    ppLabel181: TppLabel;
    ppShape83: TppShape;
    ppShape88: TppShape;
    ppShape89: TppShape;
    ppLabel183: TppLabel;
    ppLabel184: TppLabel;
    ppLabel185: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLine42: TppLine;
    ppLabel186: TppLabel;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppLabel187: TppLabel;
    ppDBText41: TppDBText;
    ppLabel188: TppLabel;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppLabel189: TppLabel;
    ppLabel190: TppLabel;
    ppDBText47: TppDBText;
    ppLabel191: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppLine65: TppLine;
    ppLine69: TppLine;
    ppLine71: TppLine;
    ppLine72: TppLine;
    ppLine76: TppLine;
    ppLine77: TppLine;
    ppDBText55: TppDBText;
    ppSummaryBand5: TppSummaryBand;
    ppShape91: TppShape;
    ppShape92: TppShape;
    ppShape93: TppShape;
    ppLabel192: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppShape94: TppShape;
    ppShape95: TppShape;
    ppLabel195: TppLabel;
    ppShape98: TppShape;
    ppLabel198: TppLabel;
    ppLabel199: TppLabel;
    ppShape101: TppShape;
    ppLabel200: TppLabel;
    ppLabel202: TppLabel;
    ppLabel203: TppLabel;
    ppLabel204: TppLabel;
    ppLabel206: TppLabel;
    ppLabel209: TppLabel;
    ppMemo1: TppMemo;
    ppDesignLayers5: TppDesignLayers;
    ppDesignLayer5: TppDesignLayer;
    ppParameterList5: TppParameterList;
    pmemoLote: TppMemo;
    ppLabel88: TppLabel;
    ppLine41: TppLine;
    ppLine56: TppLine;
    ppLine78: TppLine;
    ppLine79: TppLine;
    ppLine83: TppLine;
    ppLine84: TppLine;
    ppLine85: TppLine;
    ppLine86: TppLine;
    ppLabel193: TppLabel;
    ppLabel194: TppLabel;
    ppLine80: TppLine;
    ppLabel196: TppLabel;
    ppLine81: TppLine;
    ppLabel197: TppLabel;
    ppLine82: TppLine;
    ppLabel201: TppLabel;
    ppLine87: TppLine;
    ppLabel205: TppLabel;
    ppLine88: TppLine;
    ppLabel207: TppLabel;
    ppLine89: TppLine;
    ppLabel208: TppLabel;
    ppLine90: TppLine;
    ppLabel210: TppLabel;
    ppLabel211: TppLabel;
    ppLabel212: TppLabel;
    ppLabel213: TppLabel;
    ppLine92: TppLine;
    ppLine93: TppLine;
    frxOp_Mod11: TfrxReport;
    qEngeGeralFAB_OBSERVACAO: TBlobField;
    ppLine94: TppLine;
    ppLine96: TppLine;
    ppLabel214: TppLabel;
    ppLine97: TppLine;
    ppLabel215: TppLabel;
    ppLabel216: TppLabel;
    ppLabel217: TppLabel;
    ppLine98: TppLine;
    ppLine99: TppLine;
    frxPDFExport1: TfrxPDFExport;
    SqlCdsFichaTecnicaope_codigo: TIntegerField;
    SqlCdsFichaTecnicaope_descricao: TStringField;
    frxOp_Mod12: TfrxReport;
    SqlCdsFichaTecnicalotes: TStringField;
    BitBtn1: TBitBtn;
    frxDBop: TfrxDBDataset;
    frxListaOrdem: TfrxReport;
    dspop: TDataSetProvider;
    SqlCdsItemOPTOTALUC_CC: TFloatField;
    SqlCdsItemOPFTC_ETAPAS: TBlobField;
    ppDBMemo1: TppDBMemo;
    ppFooterBand1: TppFooterBand;
    ppSystemVariable4: TppSystemVariable;
    ppLabel182: TppLabel;
    ppLabel218: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    SqlCdsOPImpFTC_ETAPAS: TBlobField;
  //  sqlOpOSV_QTDE_CONCLUIDA: TFMTBCDField;
    procedure Bit_SairClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure Bit_ImprimirClick(Sender: tObject);
    procedure BitEstornarClick(Sender: tObject);
    procedure Bit_CelulasClick(Sender: tObject);
    procedure BitSairClick(Sender: tObject);
    procedure BitLocalizarClick(Sender: tObject);
    procedure Rad_TodasClick(Sender: tObject);
    procedure SqlCdsItemOPCalcFields(DataSet: TDataSet);
    procedure pgcPCPChange(Sender: tObject);
    procedure SqlCdsEmpenhoCalcFields(DataSet: TDataSet);
    procedure Bit_AutomaticoClick(Sender: tObject);
    procedure Bit_ManualClick(Sender: tObject);
    procedure Bit_EstornarClick(Sender: tObject);
    procedure Bit_GravarMateriaClick(Sender: tObject);
    procedure Bit_CancelarMateriaClick(Sender: tObject);
    procedure DBGrid2DblClick(Sender: tObject);
    procedure DBGrid2KeyPress(Sender: tObject; var Key: Char);
    procedure DBGrid3KeyPress(Sender: tObject; var Key: Char);
    procedure DBGrid3DblClick(Sender: tObject);
    procedure CurrQtdeEstoqueClick(Sender: tObject);
    procedure CurrQtdeEstoqueExit(Sender: tObject);
    procedure Bit_RefazerClick(Sender: tObject);
    procedure Bit_OpReservarClick(Sender: tObject);
    procedure Bit_ConcluirClick(Sender: tObject);
    procedure DbGridOSDblClick(Sender: tObject);
    procedure Bit_OpProducaoClick(Sender: tObject);
    procedure CdsOPAfterScroll(DataSet: TDataSet);
    procedure Rd_OSClick(Sender: tObject);
    procedure Edt_NomeExit(Sender: tObject);
    procedure Edt_NomeEnter(Sender: tObject);
    procedure BitPesquisarClick(Sender: tObject);
    procedure Chk_PendenteClick(Sender: tObject);
    procedure SqlCdsOPImpCalcFields(DataSet: TDataSet);
    procedure DbGridOSKeyPress(Sender: tObject; var Key: Char);
    procedure DbGridOSEnter(Sender: tObject);
    procedure Edt_NomeKeyPress(Sender: tObject; var Key: Char);
    procedure frxOPGetValue(const VarName: String; var Value: Variant);
    procedure DsOpGradeDataChange(Sender: tObject; Field: TField);
    procedure cdsOpOSV_STATUS_CCGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FormCreate(Sender: tObject);
    procedure Rad_ConcluidaClick(Sender: TObject);
    procedure frxOP1GetValue(const VarName: string; var Value: Variant);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dbGridOSDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SqlCdsFichaTecnicaCalcFields(DataSet: TDataSet);
    procedure BitLimparEstornoClick(Sender: TObject);
    procedure Rad_EstornadaClick(Sender: TObject);
    procedure mProcPRCPrint(Sender: TObject);
    procedure mPROC_PRC_M1Print(Sender: TObject);
    procedure miGerarEngenhariaProcessosClick(Sender: TObject);
    procedure dbgEngGeralDblClick(Sender: TObject);
    procedure Bit_ProcessoClick(Sender: TObject);
    procedure pmemoLotePrint(Sender: TObject);
    procedure ppLabel2Print(Sender: TObject);
    procedure tsitemOSShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure frxListaOrdemGetValue(const VarName: string; var Value: Variant);
    procedure FormActivate(Sender: TObject);
  private

         wPmt_Amx_Producao_Entrada: string;
         wPmt_Amx_Producao_saida : string;
    {variaveis}
     wBotao,
     wTpAponta  : String[1];

    procedure ImprimirOP(wNumOP:String);
    procedure HabilitaBotao;
    procedure DesabilitaBotao;
    procedure LimpaObjetos;
    procedure ApontarManual;
    procedure BuscaLoteProduto(const prd_codigo: string);
    procedure ConfirmaApontarManual;
    procedure EstornarEmpenho;
    procedure ConfirmaEstornarEmpenho;
    procedure FocalizarnaGrid;
    Procedure mostraItensOrdem;
    Procedure mostraMateriaPrima;
    Procedure ParametroGrade;
    Procedure LayOutPcp;
    procedure Atualiza_Empenho_Manual(const xTpEmpenho,xOP,xMateria,xEmpresa,xQtde,xFaltaEmpenhar :String);
    Function  Verifica_Qtde_Empenho(const pOPCODIGO,pMATERIA,pEMPRESA:String;pQtdeEstorno: Currency):Boolean;
    procedure BuscaCelulaProducao;
    procedure AdicionaUnidadeMedidaRel2(const sProdutoCodigo:String);
    function GerarFabricacao(cds: TClientDataSet) : integer;
    function GerarEspecificacoes(cds: TClientDataSet) : integer;
    function ProdutoControleLote(const prd_refer :string)  :boolean;

  public
    { Public declarations }
    wBotao_Proc_Producao : String[1];
    procedure Busca;
    procedure buscaEngenharia;
    procedure BuscaParametros;
  end;

var
  FormOrdServCentroNovo: TFormOrdServCentroNovo;

implementation

uses Uteis, Osv0006, CEL0007, OsvN0003, DmProdu, Men0001, DataCad, osv0005,
  DataCad1, CELN0007, RwSQLComando, iniciodb, ufrmpreviewrb, OsvN0002,  MonOperacoes;

{$R *.DFM}

procedure TFormOrdServCentroNovo.Bit_SairClick(Sender: tObject);
begin
    Close;
end;

procedure TFormOrdServCentroNovo.FormShow(Sender: tObject);
begin
    inherited;
    {abrir primeiro a tabela de parametro para atribuir nas variaveis:}
    ParametroGrade;
    //
    pgcPCP.ActivePageIndex := 0;
    Rd_OS.Checked := True;
    LayOutPcp;
    Busca;
    //
   //mostraItensOrdem;
    miGerarEngenhariaProcessos.Visible := (DBInicio.Usuario.username = 'ADM');
    Bit_Imprimir.Enabled := Uteis.AcessoUsuario('ProduçãoPCP-Ordens de Produção',DBInicio.Usuario.CODIGO,self).Relatorio or (DBInicio.Usuario.USERNAME = 'ADM');
end;

procedure TFormOrdServCentroNovo.FormActivate(Sender: TObject);
begin
  inherited;
  application.processmessages;
end;

procedure TFormOrdServCentroNovo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if not assigned(FormOrdServCentroGerar) then
    Action := CaFree;
end;

procedure TFormOrdServCentroNovo.FormCreate(Sender: tObject);
begin
 inherited;
 Self.width:=1048;
 self.height:=629;
 ComboBuscaCampo.ItemIndex := 0; // data de emissão
 dta.date := Date - 90 ;     // entra buscando OP dos ultimos 90 dias
 wPmt_Amx_Producao_saida := dbInicio.GetParametroSistema('PMT_AMX_PRODUCAO_SAIDA');
 wPmt_Amx_Producao_Entrada:= dbInicio.GetParametroSistema('PMT_AMX_PRODUCAO_ENTRADA');
 SalvaStatusGrid := false;
end;

procedure TFormOrdServCentroNovo.FormDestroy(Sender: TObject);
begin
  inherited;
  if not assigned(FormOrdServCentroGerar) then
    FormOrdServCentroNovo := Nil;
end;

procedure TFormOrdServCentroNovo.Bit_ImprimirClick(Sender: tObject);
var
i :Integer;
begin
     mostraItensOrdem;
     if not CdsOP.IsEmpty then
     begin
          if (CdsOPOSV_STATUS.AsString <> 'E') or (CdsOPOSV_STATUS.AsString <> 'C') then      //  Estornada ou Concluida
          begin
               if DbGridOS.SelectedRows.Count > 1 then
               begin
                    for i := 0 to DbGridOS.SelectedRows.Count -1 do
                    begin
                         if i > 0 then
                         begin
                              ppRelOSP01.ShowPrintDialog := false;
                              ppRelOSP02.ShowPrintDialog := false;
                         end
                         else
                         begin
                              ppRelOSP01.ShowPrintDialog := True;
                              ppRelOSP02.ShowPrintDialog := True;
                         end;
                         // CdsOP.GotoBookmark(Pointer(DBGridOS.SelectedRows.Items[i]));
                         ImprimirOP(CdsOPOSV_CODIGO.AsString);
                    end;
               end
               else
                   ImprimirOP(CdsOPOSV_CODIGO.AsString);
               CdsOp.Next;
          end
          else
              uteis.aviso('Ordem de Produção Estornada ou Concluída ! Não é possível imprimi-lá !');
     end
     else
         uteis.aviso('Não há ordem de produção à ser impressa !');
     DbGridOS.SetFocus;
end;

procedure TFormOrdServCentroNovo.BitBtn1Click(Sender: TObject);
var  SavePlace: TBookmark;
begin
//  inherited;
  if not cdsOp.IsEmpty then
  begin
    SavePlace := cdsOp.GetBookmark;
    frxListaOrdem.ShowReport;
    cdsOp.GotoBookmark(SavePlace);
  end;
end;

procedure TFormOrdServCentroNovo.BitEstornarClick(Sender: tObject);
begin
      OpenAux('SELECT count(1) apt  FROM FABRICACAO fab INNER JOIN APONTAMENTO_FAB apt ON  (fab.FAB_CODIGO = apt.FAB_CODIGO)   '+
              ' WHERE OSV_CODIGO = '+ CdsOPOSV_CODIGO.AsString );

      if qAux.FieldByName('apt').AsInteger > 0 then
       GeraException('Já houve apontamento.');
      FormOrdServRefazer := TFormOrdServRefazer.Create(Application);
      try
        pgcPCP.ActivePageIndex := 0;
        if (CdsOPOSV_STATUS.AsString = 'I') then
            FormOrdServRefazer.LblInf.Caption    := 'Processar Estorno de OP Concluida Parcial'
        else
        if (CdsOPOSV_STATUS.AsString = 'R') then
            FormOrdServRefazer.LblInf.Caption    := 'Estornar OP da Reserva'
        else
         if (CdsOPOSV_STATUS.AsString = 'P') then
            FormOrdServRefazer.LblInf.Caption    := 'Processar Estorno de OP na Produção'
        else
        if (CdsOPOSV_STATUS.AsString = 'X') then
           FormOrdServRefazer.LblInf.Caption    := 'Estornar OP do Almoxarifado';
        //                                     NOVI
        FormOrdServRefazer.GroupEstornar.Caption := 'OP para Estornar';
        FormOrdServRefazer.wBotao_Proc_Producao  := 'E';
        FormOrdServRefazer.Edt_OP.Text           := CdsOPOSV_CODIGO.AsString;//ExtrairNumeros(CdsOPOSV_CODIGO.AsString);
        FormOrdServRefazer.Edt_Emissao.Text      := CdsOPOSV_EMISSAO.AsString;
        FormOrdServRefazer.Edt_Referencia.Text   := CdsOPPRD_REFER.AsString;
        FormOrdServRefazer.Edt_Material.Text     := CdsOPPRD_DESCRI.AsString;
        FormOrdServRefazer.Curr_Qtde.Value       := CdsOPOSV_QTDE.AsCurrency;
        FormOrdServRefazer.ShowModal;
      finally
        freeAndNil(FormOrdServRefazer);
        pgcPCP.ActivePageIndex := 0;
        CdsOP.Close;
        CdsOP.Open;
        if SqlCdsParamPMT_CELULAPROD.AsString = 'S' then
        begin
             SqlCdsCelOp.Close;
             SqlCdsCelOp.Open;
        end;
        DbGridOS.SetFocus;
      end;
end;

procedure TFormOrdServCentroNovo.Bit_CelulasClick(Sender: tObject);
begin
    if not CdsOP.IsEmpty then
       begin
           try
             try
               FormEnviaCelulaNovo := TFormEnviaCelulaNovo.Create(Application);
               FormEnviaCelulaNovo.ShowModal;
             finally
               FormEnviaCelulaNovo.Destroy;
               FormEnviaCelulaNovo := nil;
               //
               if SqlCdsCelOp.Active then
                  SqlCdsCelOp.Refresh;
               CdsOP.Refresh;
             end;
           except
                //beep;
                uteis.erro  ('Ocorreu um erro na criação do formulário!');
           end;
       end
    else
       begin
           uteis.aviso('Não Existem Ordem de Produção!');
       end;
end;

procedure TFormOrdServCentroNovo.BitSairClick(Sender: tObject);
begin
    Close;
end;

procedure TFormOrdServCentroNovo.Busca;
var Cmp:String;
    flgOk, flgw: boolean;

//
  procedure sqladd(stt:string);
  begin
         if flgw then
          sqlOP.SQL.Add('and '+stt)
       Else
          sqlOP.SQL.Add('where '+stt);
       flgw:=True;
  end;
//
begin
    flgw:=False;
    pgcPCP.ActivePageIndex := 0;

    CdsOP.close;
    //Cds1.close;

    sqlop.sql.clear ;
    sqlop.sql.add('Select O1.OSV_REGISTRO,');
    sqlop.sql.add('       O1.OSV_PAI,');
    sqlop.sql.add('       O1.OSV_CODIGO_PAI,');
    sqlop.sql.add('       O1.EMP_CODIGO,');
    sqlop.sql.add('       O1.OSV_CODIGO,');
    sqlop.sql.add('       O1.OSV_EMISSAO,');
    sqlop.sql.add('       O1.PRD_REFER,');
    sqlop.sql.add('       O1.OSV_VARIACAO,');
    sqlop.sql.add('       O1.OSV_QTDE_SOLICITADA,');
    sqlop.sql.add('       O1.OSV_QTDE,');
    sqlop.sql.add('       O1.OSV_QTDE_CONVERTIDA,');
    sqlop.sql.add('       O1.OSV_QTDE_CONCLUIDA,');
    sqlop.sql.add('       O1.OSV_QTDE1,');
    sqlop.sql.add('       O1.OSV_QTDE2,');
    sqlop.sql.add('       O1.OSV_QTDE3,');
    sqlop.sql.add('       O1.OSV_QTDE4,');
    sqlop.sql.add('       O1.OSV_QTDE5,');
    sqlop.sql.add('       O1.OSV_QTDE6,');
    sqlop.sql.add('       O1.OSV_QTDE7,');
    sqlop.sql.add('       O1.OSV_QTDE8,');
    sqlop.sql.add('       O1.OSV_STATUS,');
    sqlop.sql.add('       O1.OSV_IMPRESSO,');
    sqlop.sql.add('       O1.OSV_LOTE,');
    sqlop.sql.add('       O1.PED_CODIGO,');
    sqlop.sql.add('       O1.OSV_CONCLUSAO,');
    sqlop.sql.add('       O1.OSV_VALIDADE,');
    sqlop.sql.add('       O2.FTC_TUP,');
    sqlop.sql.add('       O1.OSV_PRECOUNIT,');
    sqlop.sql.add('       O1.CEL_CODIGO,');
    sqlop.sql.add('       P1.PRD_DESCRI,');
    sqlop.sql.add('       P1.PRD_CODIGO,');
    sqlop.sql.add('       P1.PGR_CODIGO,');
    sqlop.SQL.Add('       P1.PRD_GERENCIA_LOTE,');    // MARCIO
    sqlop.SQL.Add('       P1.PRD_UND,');
    sqlop.sql.add('       O1.OSV_STATUS_SITUACAO,');
    sqlop.sql.add('       O1.OSV_ESTOQUE,');
    sqlop.sql.add('       O1.CLI_CODIGO,');
    sqlop.sql.add('       O1.OSV_ORDEM_COMPRA,');
    sqlop.sql.add('       O1.OSV_DTENTREGA,');
    sqlop.sql.add('       O1.OSV_RESPONSAVEL,');
    sqlop.sql.add('       O1.OSV_GERAR_PI,');
    sqlop.sql.add('      '''' PRD_COMPL,');
    sqlop.sql.add('       C1.CLI_RAZAO');
    sqlop.sql.add('from OSV0001 O1');
    sqlop.sql.add('     left join PRD0000 P1 on O1.PRD_REFER = P1.PRD_REFER '+ConcatSe( 'and P1.',dbInicio.ExclusivoSql('produtos') ) );
    sqlop.sql.add('     left join FTC0000 O2 on O2.PRD_REFER = O1.PRD_REFER '+ConcatSe( 'and O2.',dbInicio.ExclusivoSql('produtos') ) );
    sqlop.sql.add('     left join CLI0000 C1 on C1.CLI_CODIGO = O1.CLI_CODIGO '+ConcatSe( 'and C1.',dbInicio.ExclusivoSql('clientes') ) );

    if Rad_concluida_parcial.Checked  then
       SqlAdd( 'O1.OSV_STATUS = '+qStr('I') )
    Else
    if Rad_Concluida.Checked  then
       SqlAdd('O1.OSV_STATUS = '+qStr('C') )
    Else
    if Rad_Estornada.Checked  then
       SqlAdd('O1.OSV_STATUS = '+qStr('E') )
    else
    if Rad_Producao.Checked then //or Rad_Reserva.Checked then                SqlAdd('O1.OSV_STATUS = '+qStr('R') );
    begin
      SqlAdd('(O1.OSV_STATUS = '+qStr('P')+' or O1.OSV_STATUS = '+qStr('I')+')');       // Producao

      if (Chk_Pendente.Checked) then
         SqlAdd('O1.OSV_STATUS_SITUACAO = '+qStr('N') )
    end;
//      else
//      if Rad_Almoxarifado.Checked  then
//         SqlAdd('O1.OSV_STATUS = '+qStr('X') );


    if DbInicio.Exclusivo( 'ORDEMPRODUCAO' ) then
       SqlAdd( 'O1.EMP_CODIGO = '+qStr( dbInicio.Empresa.EMP_CODIGO ) );

   Cmp:='';
   if (Rd_OS.Checked) then
      Cmp := 'O1.OSV_CODIGO'
   else
   if (Rd_Pedido.Checked) then
      Cmp := 'O1.PED_CODIGO'
   else
   if (Rd_Refer.Checked) then
      Cmp := 'O1.PRD_REFER'
   Else
   if (Rd_Descricao.Checked) then
      Cmp := 'P1.PRD_DESCRI'
   Else
   if (Rd_Num_Lote.Checked) then
      Cmp := 'O1.OSV_LOTE'
   Else
   if (Rd_Cliente.Checked) then
   begin
           if StrToIntDef(Edt_Nome.text,0)<>0 then
              Cmp := 'O1.CLI_CODIGO'
           Else
              Cmp := 'C1.CLI_RAZAO';
   end;

   if (dta.date<>0) and (dtb.date = 0) then
      case ComboBuscaCampo.ItemIndex of
      0:sqladd('O1.OSV_EMISSAO>='+datetosql( dta.Date ));
      1:sqladd('O1.OSV_DTENTREGA>='+datetosql( dta.Date ));
      2:sqladd('O1.OSV_CONCLUSAO>='+datetosql( dta.Date ));
      3:sqladd('O1.OSV_VALIDADE>='+datetosql( dta.Date ));
      end;
   if (dtb.date<>0)  and (dta.date = 0) then
      case ComboBuscaCampo.ItemIndex of
      0:sqladd('O1.OSV_EMISSAO<='+datetosql( dtb.Date ));
      1:sqladd('O1.OSV_DTENTREGA<='+datetosql( dtb.Date ));
      2:sqladd('O1.OSV_CONCLUSAO<='+datetosql( dtb.Date ));
      3:sqladd('O1.OSV_VALIDADE<='+datetosql( dtb.Date ));
      end;

   if (dtb.date = dta.date)  then
      case ComboBuscaCampo.ItemIndex of
      0:sqladd('O1.OSV_EMISSAO='+datetosql( dtb.Date ));
      1:sqladd('O1.OSV_DTENTREGA='+datetosql( dtb.Date ));
      2:sqladd('O1.OSV_CONCLUSAO='+datetosql( dtb.Date ));
      3:sqladd('O1.OSV_VALIDADE='+datetosql( dtb.Date ));
      end;

    if (Cmp<>'') and (trim(Edt_Nome.text)<>'') then
    begin
         if IsNum(Edt_Nome.text) then
            flgOk := StrToInt(Edt_Nome.text)<>0
         Else
            flgOk := True;
         if flgOk  then
         begin
              SqlAdd( CampoSql( Cmp,Edt_Nome.text) );
              sqlop.sql.add('order by '+Cmp);
         end
         Else
             sqlop.sql.add('order by O1.OSV_EMISSAO DESC,O1.OSV_REGISTRO DESC');
    End
    Else
       sqlop.sql.add('order by O1.OSV_EMISSAO DESC,O1.OSV_REGISTRO DESC');



    Grp_Ops.Visible               := Rad_Producao.Checked;
    TabSheet_apontadas.TabVisible := Rad_Producao.Checked;
//      Pan_Refazer.Visible           := Rad_Producao.Checked;
    Bit_Concluir.Enabled          := Rad_Producao.Checked;
    if Grp_Ops.Visible then
    begin
       Bit_Refazer.Enabled           := True;
       Bit_Refazer.Visible           := True;
       if Rad_Producao.Checked then
          Bit_Refazer.Caption           := 'Re&fazer Empenhado'
       Else
          Bit_Refazer.Caption           := 'Re&fazer Reserva';
    end;

    Bit_OpReservar.Enabled        := Rad_concluida_parcial.Checked or Rad_Almoxarifado.Checked;
    Bit_OpProducao.Enabled        := Rad_concluida_parcial.Checked or Rad_Almoxarifado.Checked;
    BitEstornar.Enabled           := Rad_concluida_parcial.Checked or Rad_Producao.Checked or Rad_Almoxarifado.Checked;
    BitLimparEstorno.Enabled      := Rad_Estornada.Checked;

    if DBInicio.IsDesenvolvimento then
      CopyToClipBoard(sqlop.sql.Text);
    CdsOP.Open;


    //Cds1.Open;

end;

procedure TFormOrdServCentroNovo.BitLimparEstornoClick(Sender: TObject);
var
wOpDeletar : string;
begin
  inherited;

  if uteis.confirmacao('O histórico deste estorno será eliminado definitivo e se precisar poderá usar novamente a numeração desta OP. Confirma ação ? ') = idNo then
      exit;

  if cdsOpOSV_STATUS.AsString <> 'E' then
     begin
     uteis.aviso('Impossível limpar. OP deve ser estornada antes de limpar estorno.');
     exit;
     end;


  wOpDeletar := CdsOPOSV_CODIGO_PAI.AsString;       // vai deletar OP e sub Ops se existir
  //Deletar OP Estornada
  DataCadastros.sqlUpdate.Close;
  DataCadastros.SqlUpdate.sql.text :='DELETE FROM OSV0001 WHERE OSV_CODIGO_PAI = '+qstr(wOpDeletar);
  DataCadastros.sqlUpdate.Execsql;
  //
  //Deletar itens da OP Estornada
  DataCadastros.sqlUpdate.Close;
  DataCadastros.SqlUpdate.sql.text :='DELETE FROM OSV_IT02 WHERE OSV_CODIGO = '+qstr(wOpDeletar);
  DataCadastros.sqlUpdate.Execsql;
  cdsOP.Refresh;
  //
  // voltar generator
  wOpDeletar :=  InttoStr((StrtoInt(wOpDeletar) - 1));
  DataCadastros.sqlUpdate.close;
  // generator assume o numero da OP diminuido de 1 para fazer o próximo ao gerar OP
  DataCadastros.sqlUpdate.SQL.Text :='Set generator GEN_NUM_OP to '+InttoStr((StrtoInt(wOpDeletar)))+'';
  DataCadastros.sqlUpdate.Execsql;


end;

procedure TFormOrdServCentroNovo.BitLocalizarClick(Sender: tObject);
begin
    try
      try
        pgcPCP.ActivePageIndex := 0;
        FormConsultaOSV := TFormConsultaOSV.Create(Application);
        FormConsultaOSV.ShowModal;
      finally
        begin
            FormConsultaOSV.Destroy;
            FormConsultaOSV := nil;
        end;
      end;
    except
        //beep;
        uteis.erro  ('Ocorreu um erro na criação do formulário!');
    end;
end;

procedure TFormOrdServCentroNovo.Rad_ConcluidaClick(Sender: TObject);
begin
     inherited;
    // ComboBuscaCampo.ItemIndex:= 0;
    // dta.date := Date - 30 ; //busca concluidas dos ultimos 30 dias da emissao

     Busca;
end;

procedure TFormOrdServCentroNovo.Rad_EstornadaClick(Sender: TObject);
begin
  inherited;
 //  ComboBuscaCampo.ItemIndex:=0;
 //  dta.date := Date - 15 ; //busca estornadas dos ultimos 15 dias da emissao
   Busca;

end;

procedure TFormOrdServCentroNovo.Rad_TodasClick(Sender: tObject);
begin
   //  ComboBuscaCampo.ItemIndex:=0;
  //   dta.date := Date - 30 ; //busca todas dos ultimos 30 dias da emissao
     Busca;

end;

procedure TFormOrdServCentroNovo.ImprimirOP;
var lotes: string;
begin
    if (CdsOP.IsEmpty) then
       uteis.aviso('Não Existem Ordens na Produção!')
    else
    begin
          Screen.Cursor := crHourGlass;
          try
            wSql1 := 'SELECT F1.FTC_ETAPAS, e1.PED_NUMERO_PED_CLIENTE,O1.EMP_CODIGO,O1.OSV_CODIGO,O1.OSV_EMISSAO,O1.PRD_REFER,P1.PGR_CODIGO,P1.PRD_DESCRI,P1.PRD_DCVAR1,o1.OSV_ORDEM_COMPRA,'+
                    ' o1.OSV_RESPONSAVEL, ';
            wSql2 := 'E1.PED_DTENTRADA,E1.PED_DTSAIDA, C1.CLI_CODIGO,O1.OSV_LOTE,O1.OSV_QTDE_SOLICITADA,O1.OSV_ESTOQUE,O1.OSV_QTDE,O1.OSV_QTDE_CONVERTIDA,O1.OSV_QTDE1, '+
                     ' O1.OSV_OBS1,O1.OSV_OBS2,O1.OSV_OBS3,O1.OSV_OBS4,O1.OSV_OBS5,O1.OSV_OBS6,O1.OSV_OBS7, ';
            wSql3 := 'O1.PED_CODIGO,O1.OSV_VARIACAO,C1.CLI_RAZAO,F1.FTC_TUP,O1.OSV_PRECOUNIT,O1.CEL_CODIGO,O1.OSV_STATUS, O1.OSV_DTENTREGA, O1.OSV_CONCLUSAO, '+
                     'F1.FTC_PROC1, F1.FTC_PROC2, F1.FTC_PROC3, F1.FTC_PROC4, F1.FTC_PROC5, F1.FTC_PROC6, F1.FTC_PROC7, F1.FTC_PROC8,   ';
            wSql4 := 'P1.PRD_COMPL, P1.PRD_UND,C1.CLI_FONE, C1.CLI_CELULAR,C1.CLI_ENDERE,C1.CLI_BAIRRO FROM OSV0001 O1 JOIN PRD0000 P1 ON (O1.PRD_REFER = P1.PRD_REFER) '+
                     ' LEFT JOIN PED0000 E1 ON (E1.PED_CODIGO = O1.PED_CODIGO) AND (E1.EMP_CODIGO = O1.EMP_CODIGO) ';
            wSql5 := 'LEFT JOIN CLI0000 C1 ON (C1.CLI_CODIGO = O1.CLI_CODIGO)  LEFT JOIN FTC0000 F1 ON (F1.PRD_REFER  = O1.PRD_REFER) ';
            wSeleciona := 'Where O1.OSV_CODIGO = '''+CdsOPOSV_CODIGO.AsString+''' and O1.PRD_REFER = '''+CdsOPPRD_REFER.AsString+'''';
            SqlCdsOPImp.Close;
            SqlCdsOPImp.PacketRecords := -1;

            SqlCdsOPImp.CommandText := SQLDEF('ORDEMPRODUCAO',wSql1+wSql2+wSql3+wSql4+wSql5,wSeleciona,'O1.OSV_CODIGO','O1.');
            SqlCdsOPImp.Open;


            wSql1 :=  'SELECT O1.OSV_CODIGO, O2.PRD_REFER_ITENS, O2.OSI_UC, O2.OSI_QTDE1, P.PRD_DESCRI, P.PRD_UND,P2.PTI_SIGLA, ope.ope_codigo, ope.ope_descricao ';
            wSql2 :=  ' FROM OSV0001 O1 JOIN OSV_IT02 O2 ON (O1.OSV_CODIGO = O2.OSV_CODIGO) JOIN PRD0000 P ON (P.PRD_REFER = O2.PRD_REFER_ITENS) left join PRD_TIPO P2 on (P.PTI_CODIGO = P2.PTI_CODIGO)';
            wsql3 :=  ' left join operacoes ope on (ope.ope_codigo = o2.ope_codigo) ';
            wSeleciona := 'Where O1.OSV_CODIGO = '''+CdsOPOSV_CODIGO.AsString+''' and O1.PRD_REFER = '''+CdsOPPRD_REFER.AsString+'''';
            SqlCdsFichaTecnica.Close;
            SqlCdsFichaTecnica.PacketRecords := -1;
            SqlCdsFichaTecnica.CommandText := SQLDEF('ORDEMPRODUCAO',wSql1+wSql2+wsql3,wSeleciona,'O1.OSV_CODIGO','O1.');
            SqlCdsFichaTecnica.Open;


            if not SqlCdsOPImp.IsEmpty then
               MostraMateriaPrima;

            if SqlCdsParamPMT_MDL_OP.AsString = '1' then  // QUIMICA
            begin
                   LBL_01_EMPRESA.Caption  := dbInicio.Empresa.Razao;
                   if DbGridOS.SelectedRows.Count > 1 then
                      ppRelOSP01.DeviceType   := 'Printer'
                   else
                       ppRelOSP01.DeviceType   := 'Screen';
                   {BUSCA AS UNIDADES DE MEDIDA DO TRABALHO}
                   AdicionaUnidadeMedidaRel2(CdsOPPRD_REFER.AsString);
                   RBuilderPreview(ppRelOSP01);
               end
               ELSE
            if SqlCdsParamPMT_MDL_OP.AsString = '2' then  // BOLSAS
               begin
                   LBL_02_EMPRESA.Caption  := dbInicio.Empresa.Razao;
                     if DbGridOS.SelectedRows.Count > 1 then
                         ppRelOSP02.DeviceType   := 'Printer'
                     else
                        ppRelOSP02.DeviceType   := 'Screen';

                   ppRelOSP02.Print;
               end
               ELSE
            if SqlCdsParamPMT_MDL_OP.AsString = '3' then  // QUIMICA COM DESCRIÇÃO E SEM TARA
               begin
                   LBL_03_EMPRESA.Caption  := dbInicio.Empresa.Razao;
                     if DbGridOS.SelectedRows.Count > 1 then
                         ppRelOSP03.DeviceType   := 'Printer'
                     else
                        ppRelOSP03.DeviceType   := 'Screen';

                   RBuilderPreview(ppRelOSP03);
               end
               ELSE

            if SqlCdsParamPMT_MDL_OP.AsString = '4' then  // Usinagem 01
            begin
                 TfrxMemoView(frxOP.FindObject('wFrxRazao')).Text:=dbInicio.Empresa.Razao;
                 frxOP.ShowReport()
            end
            ELSE

            if SqlCdsParamPMT_MDL_OP.AsString = '5' then  // espuma
            begin
                   LBL_05_EMPRESA.Caption  := dbInicio.Empresa.Razao;
                     if DbGridOS.SelectedRows.Count > 1 then
                         ppRelOSP05.DeviceType   := 'Printer'
                     else
                        ppRelOSP05.DeviceType   := 'Screen';

                   RBuilderPreview(ppRelOSP05);
            end
            ELSE

            if SqlCdsParamPMT_MDL_OP.AsString = '6' then  // Serralheiria
            begin
                 frxOP1.ShowReport()
            end
            ELSE
             if SqlCdsParamPMT_MDL_OP.AsString = '7' then  // Usinagem 02
                begin
                    frxOP2.ShowReport()
                end
             ELSE
             if SqlCdsParamPMT_MDL_OP.AsString = '8' then  // Usinagem 03
                begin
                    frxOP3.ShowReport()
                end;
             if SqlCdsParamPMT_MDL_OP.AsString = '9' then  // Usinagem modelo 9
             begin
                buscaEngenharia;
                BuscaParametros;
                frxOP_Mod9.ShowReport()
             end
             Else if SqlCdsParamPMT_MDL_OP.AsString = '10' then  // Usinagem modelo 10 do lote
              begin
                LBL_05_EMPRESA.Caption  := dbInicio.Empresa.Razao;
                   if DbGridOS.SelectedRows.Count > 1 then
                       ppRelOSP05.DeviceType   := 'Printer'
                   else
                      ppRelOSP05.DeviceType   := 'Screen';
                 RBuilderPreview(ppRelOSP10)
              end
             else if SqlCdsParamPMT_MDL_OP.AsString = '11' then  // etapas por operação
             begin
                buscaEngenharia;
                BuscaParametros;
                frxOP_Mod11.ShowReport()
             end
             else if SqlCdsParamPMT_MDL_OP.AsString = '12' then  // etapas por operação
             begin
                SqlCdsFichaTecnica.First;
                while  not SqlCdsFichaTecnica.Eof do
                begin
                  OpenAux(' SELECT EPM_QTDE, PL.PRDL_LOTE FROM EPM_0000 E JOIN PRD_LOTE PL ON (PL.PRDL_REGISTRO = E.PRDL_REGISTRO) '+
                          ' WHERE OSV_CODIGO = '+ QuotedStr(SqlCdsFichaTecnicaOSV_CODIGO.AsString) +
                          ' AND PRD_REFER_ITENS = '+QuotedStr(SqlCdsFichaTecnicaPRD_REFER_ITENS.AsString)  );

                  qAux.First;
                  if not qAux.IsEmpty then
                  begin
                  lotes := '' ;

                   while not qaux.Eof do
                   begin
                    LOTES := lotes + '('+ qAux.FieldByName('prdl_lote').AsString +' : '+ FloatToStr(qaux.FieldByName('EPM_QTDE').AsFloat)+') ';
                    qaux.Next;
                   end;
                   SqlCdsFichaTecnica.Edit;
                   SqlCdsFichaTecnicalotes.AsString := lotes;
                   SqlCdsFichaTecnica.Post;
                  end;
                  SqlCdsFichaTecnica.Next;
                end;



                buscaEngenharia;
                BuscaParametros;
                frxOP_Mod12.ShowReport()
             end ;



          except on E:EDataBaseError do
            uteis.erro  (pchar('Erro ao gerar o relatório: '+e.message));
          end;
          Screen.Cursor := crDefault;
       end;
end;
procedure TFormOrdServCentroNovo.SqlCdsItemOPCalcFields(DataSet: TDataSet);
begin
    if (SqlCdsParamPMT_VARIACOES.AsString = 'S') then
       begin
           if ((SqlCdsItemOPOSI_QTDE1.AsCurrency+
                SqlCdsItemOPOSI_QTDE2.AsCurrency+
                SqlCdsItemOPOSI_QTDE3.AsCurrency+
                SqlCdsItemOPOSI_QTDE4.AsCurrency+
                SqlCdsItemOPOSI_QTDE5.AsCurrency+
                SqlCdsItemOPOSI_QTDE6.AsCurrency+
                SqlCdsItemOPOSI_QTDE7.AsCurrency+
                SqlCdsItemOPOSI_QTDE8.AsCurrency)<>0) then
              begin
//                  SqlCdsItemOPTOTALUC_CC.AsCurrency := ((SqlCdsItemOPOSI_QTDE1.AsCurrency+SqlCdsItemOPOSI_QTDE2.AsCurrency+SqlCdsItemOPOSI_QTDE3.AsCurrency+SqlCdsItemOPOSI_QTDE4.AsCurrency+SqlCdsItemOPOSI_QTDE5.AsCurrency+SqlCdsItemOPOSI_QTDE6.AsCurrency+SqlCdsItemOPOSI_QTDE7.AsCurrency+SqlCdsItemOPOSI_QTDE8.AsCurrency)*SqlCdsItemOPOSI_UC.AsCurrency)/FrmMenu.wPmt_UnFormula;
                  SqlCdsItemOPTOTALUC_CC.AsCurrency := ((SqlCdsItemOPOSI_QTDE1.AsCurrency+SqlCdsItemOPOSI_QTDE2.AsCurrency+SqlCdsItemOPOSI_QTDE3.AsCurrency+SqlCdsItemOPOSI_QTDE4.AsCurrency+SqlCdsItemOPOSI_QTDE5.AsCurrency+SqlCdsItemOPOSI_QTDE6.AsCurrency+SqlCdsItemOPOSI_QTDE7.AsCurrency+SqlCdsItemOPOSI_QTDE8.AsCurrency)*SqlCdsItemOPOSI_UC.AsCurrency);
                  SqlCdsItemOPQTDE1_CC.AsCurrency   := SqlCdsItemOPOSI_QTDE1.AsCurrency;
                  SqlCdsItemOPQTDE2_CC.AsCurrency   := SqlCdsItemOPOSI_QTDE2.AsCurrency;
                  SqlCdsItemOPQTDE3_CC.AsCurrency   := SqlCdsItemOPOSI_QTDE3.AsCurrency;
                  SqlCdsItemOPQTDE4_CC.AsCurrency   := SqlCdsItemOPOSI_QTDE4.AsCurrency;
                  SqlCdsItemOPQTDE5_CC.AsCurrency   := SqlCdsItemOPOSI_QTDE5.AsCurrency;
                  SqlCdsItemOPQTDE6_CC.AsCurrency   := SqlCdsItemOPOSI_QTDE6.AsCurrency;
                  SqlCdsItemOPQTDE7_CC.AsCurrency   := SqlCdsItemOPOSI_QTDE7.AsCurrency;
                  SqlCdsItemOPQTDE8_CC.AsCurrency   := SqlCdsItemOPOSI_QTDE8.AsCurrency;
              end
           else
              begin
                  SqlCdsItemOPQTDE_CC.AsFloat    := CurrQtde.Value;
//                  SqlCdsItemOPTOTALUC_CC.AsCurrency := ((CurrQtde.Value*SqlCdsItemOPOSI_UC.AsCurrency)/FrmMenu.wPmt_UnFormula);
                  //SqlCdsItemOPOSI_UC.Value;

                  if (SqlCdsItemOPPTI_SIGLA.AsString = 'FE') then     // Ferramenta
                     SqlCdsItemOPTOTALUC_CC.AsFloat := (SqlCdsItemOPOSI_UC.AsFloat)
                  else
                     SqlCdsItemOPTOTALUC_CC.AsFloat := ((CurrQtde.Value * SqlCdsItemOPOSI_UC.AsFloat));
              end;
       end
    else
       begin
           SqlCdsItemOPQTDE_CC.asfloat    := CdsOPOSV_QTDE.asfloat;
//           SqlCdsItemOPTOTALUC_CC.AsCurrency := ((CdsOPOSV_QTDE.AsCurrency * SqlCdsItemOPOSI_UC.AsCurrency)/FrmMenu.wPmt_UnFormula);
           if (SqlCdsItemOPPTI_SIGLA.AsString = 'FE') then    //ferramenta
              SqlCdsItemOPTOTALUC_CC.AsFloat := (SqlCdsItemOPOSI_UC.AsFloat)
           else
              SqlCdsItemOPTOTALUC_CC.AsFloat := (( RoundTo( SqlCdsItemOPQTDE_CC.asfloat,-2) * SqlCdsItemOPOSI_UC.AsFloat));
       end;
    {Coloca um Status na Impressao do Item da Op
     Estoque, conforme o parametro do BaixaEStoqAlmox}
    if (SqlCdsItemOPOSI_STATUSEMPENHO.AsString = 'S') then
       begin
           if (frmmenu.wBaixaEstqAlmox = 'S') then
              SqlCdsItemOPSepara_CC.AsString := ''
           else
              SqlCdsItemOPSepara_CC.AsString :='Estoque';
       end
    else
       SqlCdsItemOPSepara_CC.AsString := '';
end;

procedure TFormOrdServCentroNovo.pgcPCPChange(Sender: tObject);
begin
    if pgcPCP.TabIndex = 2 then
    begin
           Screen.Cursor := crHourGlass;
             wSql1 := 'select O2.OSI_REGISTRO,O2.EMP_CODIGO,O2.OSV_CODIGO,O2.PRD_REFER_ITENS,P1.PRD_CODIGO, P1.PRD_DESCRI,P1.PRD_UND,P2.PTI_SIGLA,';
             wSql2 := 'CAST((((O2.osi_qtde1+O2.osi_qtde2+O2.osi_qtde3+O2.osi_qtde4+O2.osi_qtde5+O2.osi_qtde6+O2.osi_qtde7+O2.osi_qtde8))-(O2.osi_reservado + O2.osi_empenho)) AS NUMERIC(15,4)) AS FALTA_EMPENHAR,';
             wSql3 := '(select first 1 amx_saldo_ret FROM pCd_kardex_saldo(O2.EMP_CODIGO,P1.PRD_CODIGO,'+QuotedStr(wPmt_Amx_Producao_Entrada)+')) AS WSALDO ';
             wSql4 := 'from OSV_IT02 O2 left join PRD0000 P1 ON (O2.PRD_REFER_ITENS = P1.PRD_REFER) left join PRD_TIPO P2 on (P1.PTI_CODIGO = P2.PTI_CODIGO) ';
             //
             wSeleciona := 'where O2.OSV_CODIGO = '''+CdsOPOSV_CODIGO.AsString+''' and O2.OSI_STATUSEMPENHO <>''S''';
             wOrdem     := 'P1.PRD_DESCRI';
             //
             SqlCdsEstoque.Close;
             SqlCdsEstoque.CommandText := SQLDEF('ORDEMPRODUCAO',wSql1+wSql2+wSql3+wSql4,wSeleciona,wOrdem,'O2.');
             SqlCdsEstoque.Open;
           Screen.Cursor := crDefault;
    end
    else if pgcPCP.ActivePage = tsEngenharia then
    begin
      buscaEngenharia;
     EdtOpEng.Text      := CdsOPOSV_CODIGO.AsString;
     EdtEmissaoEng.Text := CdsOPOSV_EMISSAO.Text;
     EdtReferEnge.Text   := CdsOPPRD_REFER.AsString;
     EdtDescriEnge.Text  := CdsOPPRD_DESCRI.AsString;
     CurrQtdeEnge.Value  := CdsOPOSV_QTDE.AsCurrency;
    end;
end;

procedure TFormOrdServCentroNovo.pmemoLotePrint(Sender: TObject);
Var Lotes : TStrings;
begin
  inherited;

  OpenAux(' SELECT EPM_QTDE, PL.PRDL_LOTE FROM EPM_0000 E JOIN PRD_LOTE PL ON (PL.PRDL_REGISTRO = E.PRDL_REGISTRO) '+
          ' WHERE OSV_CODIGO = '+ QuotedStr(SqlCdsItemOPOSV_CODIGO.AsString) +
          ' AND PRD_REFER_ITENS = '+QuotedStr(SqlCdsItemOPPRD_REFER_ITENS.AsString)  );

  qAux.First;
  if not qAux.IsEmpty then
  begin
  lotes := TStringList.Create;
  try
   while not qaux.Eof do
   begin
    LOTES.Add( qAux.FieldByName('prdl_lote').AsString +' : '+ FloatToStr(qaux.FieldByName('EPM_QTDE').AsFloat));
    qaux.Next;
   end;

  finally
   TppMemo(Sender).Lines := lotes;
   FreeAndNil(lotes);

  end;


  end
  Else
   TppMemo(Sender).Lines.Clear;


end;

procedure TFormOrdServCentroNovo.ppLabel2Print(Sender: TObject);
begin
  inherited;
  tpplabel(sender).Text := DBInicio.Empresa.RAZAO;
end;

procedure TFormOrdServCentroNovo.SqlCdsEmpenhoCalcFields(DataSet: TDataSet);
begin
    if (SqlCdsEmpenhoEPM_TIPOEMPENHO.AsString = 'A') then
       SqlCdsEmpenhoTIPO_EMPENHO_CC.AsString := 'Automático';
    if (SqlCdsEmpenhoEPM_TIPOEMPENHO.AsString = 'M') then
       SqlCdsEmpenhoTIPO_EMPENHO_CC.AsString := 'Manual';
    if (SqlCdsEmpenhoEPM_TIPOEMPENHO.AsString = 'E') then
       SqlCdsEmpenhoTIPO_EMPENHO_CC.AsString := 'Estorno';
end;

procedure TFormOrdServCentroNovo.SqlCdsFichaTecnicaCalcFields(DataSet: TDataSet);
begin
  inherited;

   if (SqlCdsFichaTecnicaPTI_SIGLA.AsString = 'FE') then     // Ferramenta
        SqlCdsFichaTecnicaOSI_QTDE_TOTAL_cc.AsCurrency := (SqlCdsFichaTecnicaOSI_UC.AsFloat)
    else
       SqlCdsFichaTecnicaOSI_QTDE_TOTAL_cc.AsCurrency := (SqlCdsFichaTecnicaOSI_QTDE1.AsCurrency);
end;

procedure TFormOrdServCentroNovo.Bit_AutomaticoClick(Sender: tObject);
Var
  wApontado , wApontadoLote   : Double;
  wStatusAp    : String;
begin
    Screen.Cursor := crHourGlass;
    if not SqlCdsEstoque.IsEmpty  then
       begin
           try
             try
               wBotao := '1';
               Pan_Materia.Enabled := False;
               SqlCdsEstoque.First;
               SqlCdsEstoque.DisableControls;
               while not SqlCdsEstoque.Eof do
                begin
                    if (Rad_Producao.checked ) then
                       begin
                           wApontado := 0;
                           if (SqlCdsEstoqueWSALDO.AsCurrency >= SqlCdsEstoqueFALTA_EMPENHAR.AsCurrency) then
                              begin
                                  wApontado := SqlCdsEstoqueFALTA_EMPENHAR.AsCurrency;
                                  wStatusAp := 'S';
                              end
                           else
                              begin
                                  wApontado := SqlCdsEstoqueWSALDO.AsCurrency;
                                  wStatusAp := 'P';
                              end;
                           //
                           if (SqlCdsEstoqueWSALDO.AsCurrency > 0) then
                              begin
                                 if (wApontado > 0) then
                                 begin
                                     if ProdutoControleLote(SqlCdsEstoquePRD_REFER_ITENS.AsString)  then    //faz controle de lote
                                     begin
                                       OpenAux(' SELECT prdl_registro, prdl_saldo, prd_refer FROM PRD_LOTE l JOIN PRD0000 p ON (p.PRD_CODIGO = l.PRD_CODIGO)  '+
                                               ' WHERE p.PRD_REFER ='+ QuotedStr(SqlCdsEstoquePRD_REFER_ITENS.AsString) +
                                               ' AND prdl_saldo >0 ' +
                                               ' ORDER BY prdl_registro, prdl_data_validade ');
                                       qAux.First;
                                       while (wApontado<>0)  do
                                       begin
                                         if wApontado <=  qAux.FieldByName('PRDL_SALDO').AsFloat then
                                            wApontadoLote :=  wApontado
                                         else
                                           wApontadoLote :=  qAux.FieldByName('PRDL_SALDO').AsFloat;

                                         KardexLancamento(SqlCdsEstoqueOSI_REGISTRO.AsString,
                                                          'PRO',
                                                          wPmt_Amx_Producao_saida,
                                                          '',
                                                          SqlCdsEstoquePRD_CODIGO.AsString,
                                                          '',//grade
                                                          '',
                                                          'S',
                                                          '',
                                                          inttostr(qAux.FieldByName('PRDL_REGISTRO').AsInteger),
                                                          'SAIDA PARA PRODUCAO',
                                                          Now,
                                                          wApontadoLote,
                                                          SqlCdsEstoqueOSV_CODIGO.AsString,
                                                          SqlCdsEstoquePRD_REFER_ITENS.AsString,
                                                          0.00
                                                          );
                                        Inserir_Empenho('A',
                                                       SqlCdsEstoqueOSV_CODIGO.AsString,
                                                       SqlCdsEstoquePRD_REFER_ITENS.AsString,
                                                       DBInicio.Empresa.EMP_CODIGO,
                                                       DataAmericana(DateToStr(now)),
                                                       ValorAmericano(FloatToStr(wApontadoLote)),
                                                       qAux.FieldByName('PRDL_REGISTRO').AsInteger
                                                       );
                                         wApontado :=  wApontado - wApontadoLote;
                                         qAux.Next;
                                       end;

                                     end
                                     else
                                     begin
                                       KardexLancamento(SqlCdsEstoqueOSI_REGISTRO.AsString,
                                                        'PRO',
                                                        wPmt_Amx_Producao_saida,
                                                        '',
                                                        SqlCdsEstoquePRD_CODIGO.AsString,
                                                        '',//grade
                                                        '',
                                                        'S',
                                                        '',
                                                        '',//Rever Lote Novo
                                                        'SAIDA PARA PRODUCAO',
                                                        Now,
                                                        wApontado,
                                                        SqlCdsEstoqueOSV_CODIGO.AsString,
                                                        SqlCdsEstoquePRD_REFER_ITENS.AsString,
                                                        0.00
                                                        );
                                       Inserir_Empenho('A',
                                                       SqlCdsEstoqueOSV_CODIGO.AsString,
                                                       SqlCdsEstoquePRD_REFER_ITENS.AsString,
                                                       SqlCdsEstoqueEMP_CODIGO.AsString,
                                                       DataAmericana(DateToStr(now)),
                                                       ValorAmericano(FloatToStr(wApontado)),0);
                                     end;
                                     {Atualizar Campo OSI_EMPENHO na tabela OSV_IT02}
                                     Incrementa_Qtde_Reserva_Empenho(SqlCdsEstoqueOSI_REGISTRO.AsString,
                                                                     'P',
                                                                     wStatusAp,
                                                                     ValorAmericano(FloatToStr(wApontado)));
                                     {Atualizar Campo PRD_EMPENHO na tabela PRD0000}
                                     Atualiza_Empenho_Estoque('A',
                                                              SqlCdsEstoquePRD_REFER_ITENS.AsString,
                                                              ValorAmericano(FloatToStr(wApontado)));
                                     {Atualiza o Campo PRD_SALDOPRODUCAO}
                                     AtualizaQtdeProducao(SqlCdsEstoquePRD_REFER_ITENS.AsString,
                                                          'E',
                                                          ValorAmericano(FloatToStr(wApontado)));
                                 end;
                              end;
                           //
                       end;
                    SqlCdsEstoque.Next;
                end;
               Mudar_Status_Empenho(SqlCdsEstoqueEMP_CODIGO.AsString,
                                    SqlCdsEstoqueOSV_CODIGO.AsString);
               //CdsOP.Refresh;
               SqlCdsEstoque.EnableControls;
             except on E:EDataBaseError do
                uteis.erro  (pchar('Erro ao fazer o Apontamento Automático ! '+e.message));
             end;
           finally
             begin
                 uteis.aviso('Apontamento automático efetuado com Sucesso !');
                 SqlCdsEstoque.Refresh;
                 SqlCdsEmpenho.Refresh;
                 SqlCdsEstoque.First;
                 DbGrid2.SetFocus;
             end;
          end;
       end
    else
       begin
           uteis.aviso('Não há material para fazer o apontamento automático !');
           DBGrid2.SetFocus;
       end;
    Screen.Cursor := crDefault;
end;

procedure TFormOrdServCentroNovo.Bit_ManualClick(Sender: tObject);
begin
    if (Edt_Materia.Text <> '') then
       begin
           wTpAponta           := 'M';
           wBotao              := '1';
           Bit_Manual.Enabled  := False;
           Pan_Materia.Enabled := True;
           HabilitaBotao;
           DtDataEmissao.Enabled := true;
           DtDataEmissao.SetFocus;
           DtDataEmissao.SelectAll;
       end
    else
       begin
           uteis.aviso('Selecione o item do estoque para apontar a quantidade !');
           DbGrid2.SetFocus;
       end;
end;

procedure TFormOrdServCentroNovo.Bit_EstornarClick(Sender: tObject);
begin
    if (Edt_Materia.Text <> '') then
       begin
           wTpAponta            := 'E';
           wBotao               := '2';
           Bit_Estornar.Enabled := False;
           Bit_GravarMateria.Enabled := true;
           Bit_CancelarMateria.Enabled := True;
           DtDataEmissao.Enabled := False;

           if SqlCdsEmpenhoPRDL_LOTE.AsString <> '' then
           begin
            BuscaLoteProduto(Edt_Materia.Text);
            CbLoteProduto.EditValue  :=   SqlCdsEmpenhoPRDL_REGISTRO.AsVariant;

           end;
           CbLoteProduto.Enabled := False;
           CurrQtdeEstoque.MaxValue :=
            sqlcdsempenho.FieldByName('EPM_QTDE').AsFloat ;
       end
    else
       begin
           uteis.aviso('Selecione um apontamento para estornar !');
           DbGrid3.SetFocus;
       end;
end;

procedure TFormOrdServCentroNovo.Bit_GravarMateriaClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    try
      try
        if (wTpAponta = 'M') then
           begin
               if ProdutoControleLote(SqlCdsEstoquePRD_REFER_ITENS.AsString) and (CbLoteProduto.EditValue=0) then
                  GeraException('Lote é obrigatório para este produto.');
               ConfirmaApontarManual;
           end;
        if (wTpAponta = 'E') then
           begin
               ConfirmaEstornarEmpenho;
           end;
      except on E:EDataBaseError do
         uteis.erro  (pchar('Erro ao Gravar a materia ! '+e.message));
      else
        Screen.Cursor := crDefault;
      end;
    finally
      begin
          SqlCdsEstoque.Refresh;
          SqlCdsEmpenho.Refresh;
          FocalizarnaGrid;
          Screen.Cursor := crDefault;
      end;
    end;

end;

procedure TFormOrdServCentroNovo.Bit_CancelarMateriaClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    try
        Edt_Materia.Text       := '';
        DtDataEmissao.Date     := 0;
        CurrQtdeEstoque.Value  := 0;
        CbLoteProduto.EditValue := 0;
        Bit_Manual.Enabled     := False;
        Bit_Automatico.Enabled := False;
        Pan_Materia.Enabled := False;
    finally
      FocalizarnaGrid;
      Screen.Cursor := crDefault;
    end;

end;

procedure TFormOrdServCentroNovo.DBGrid2DblClick(Sender: tObject);
begin
    ApontarManual;
end;

procedure TFormOrdServCentroNovo.DesabilitaBotao;
begin
  Bit_GravarMateria.Enabled := False;
  Bit_CancelarMateria.Enabled := False;
  Bit_Estornar.Enabled := False;
end;

procedure TFormOrdServCentroNovo.HabilitaBotao;
begin
  Bit_GravarMateria.Enabled := True;
  Bit_CancelarMateria.Enabled := true;

end;

procedure TFormOrdServCentroNovo.LimpaObjetos;
begin
    Edt_Materia.Text      := '';
    DtDataEmissao.Text    := '';
    CurrQtdeEstoque.Value := 0;
    CbLoteProduto.EditValue := 0 ;
end;

procedure TFormOrdServCentroNovo.ApontarManual;
begin
    if (SqlCdsEstoqueWSALDO.AsCurrency>0) then
       begin
           Edt_Materia.Text   := SqlCdsEstoquePRD_REFER_ITENS.AsString;
           DtDataEmissao.Date := now;
           if (SqlCdsEstoqueWSALDO.AsCurrency>=SqlCdsEstoqueFALTA_EMPENHAR.AsCurrency) then
              begin
                  CurrQtdeEstoque.Value := SqlCdsEstoqueFALTA_EMPENHAR.AsCurrency;
              end
           else
              begin
                  CurrQtdeEstoque.Value := SqlCdsEstoqueWSALDO.AsCurrency;
              end;
           Bit_Manual.Enabled     := True;
           Bit_Manual.SetFocus;
           Bit_Automatico.Enabled := False;
           if ProdutoControleLote(SqlCdsEstoquePRD_REFER_ITENS.AsString) then
           begin
             BuscaLoteProduto(SqlCdsEstoquePRD_CODIGO.AsString);
             CbLoteProduto.Enabled := True ;    //faz controle de lote;
           end
           else
             CbLoteProduto.Enabled := False;

       end
    else
       begin
           uteis.aviso('Qtde do Estoque tem que ser maior que zero !');
           DBGrid2.SetFocus;
       end;
end;

procedure TFormOrdServCentroNovo.DBGrid2KeyPress(Sender: tObject;
  var Key: Char);
begin
    if (key=#13) then
       begin
           ApontarManual;
           Key :=#0;
       end;
end;

procedure TFormOrdServCentroNovo.DBGrid3KeyPress(Sender: tObject;
  var Key: Char);
begin
    if (key =#13) then
       begin
           EstornarEmpenho;
           Key := #0;
       end;
end;

procedure TFormOrdServCentroNovo.DBGrid3DblClick(Sender: tObject);
begin
    EstornarEmpenho;
end;

procedure TFormOrdServCentroNovo.FocalizarnaGrid;
begin
    LimpaObjetos;
    DesabilitaBotao;
    Bit_Automatico.Enabled := True;
    Bit_Manual.Enabled     := False;
    Pan_Materia.Enabled    := false;
    if (wBotao='1') then
       DbGrid2.SetFocus
    else
       DbGrid3.SetFocus;
end;

procedure TFormOrdServCentroNovo.ConfirmaApontarManual;
begin
    try
      KardexLancamento(SqlCdsEmpenhoOSV_CODIGO.AsString,
                       'PRO',
                       wPmt_Amx_Producao_Entrada,
                       '',
                       SqlCdsEmpenhoPRD_CODIGO.AsString,
                       '',//grade
                       '',
                       'S',
                       '',
                       VarToStr(CbLoteProduto.EditValue),
                       'SAIDA PARA PRODUCAO',
                       Now,
                       CurrQtdeEstoque.Value,
                       SqlCdsEstoqueOSV_CODIGO.AsString,
                       SqlCdsEstoquePRD_REFER_ITENS.AsString,
                       0.00);
      {Inserir informacao no apontamento}
      Inserir_empenho('M',
                      SqlCdsEstoqueOSV_CODIGO.AsString,
                      SqlCdsEstoquePRD_REFER_ITENS.AsString,
                      SqlCdsEstoqueEMP_CODIGO.AsString,
                      DataAmericana(DtDataEmissao.Text),
                      ValorAmericano(CurrQtdeEstoque.Text),
                      CbLoteProduto.EditValue);

      {Atualizar Campo PRD_EMPENHO na tabela PRD0000}
      Atualiza_Empenho_Estoque('A',
                               SqlCdsEstoquePRD_REFER_ITENS.AsString,
                               ValorAmericano(CurrQtdeEstoque.Text));
      {Atualiza o Campo PRD_SALDOPRODUCAO}
      AtualizaQtdeProducao(SqlCdsEstoquePRD_REFER_ITENS.AsString,
                           'E',
                           ValorAmericano(CurrQtdeEstoque.Text));
      {Atualiza o Empenho Manual}
      Atualiza_Empenho_Manual('M',
                              SqlCdsEstoqueOSV_CODIGO.AsString,
                              SqlCdsEstoquePRD_REFER_ITENS.AsString,
                              SqlCdsEstoqueEMP_CODIGO.AsString,
                              ValorAmericano(CurrQtdeEstoque.Text),
                              ValorAmericano(SqlCdsEstoqueFALTA_EMPENHAR.AsString));
      SqlCdsEstoque.Refresh;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro no Apontamento Manual ! '+E.Message));
    end;
end;

procedure TFormOrdServCentroNovo.CurrQtdeEstoqueClick(Sender: tObject);
begin
    CurrQtdeEstoque.SelectAll;
end;

procedure TFormOrdServCentroNovo.CurrQtdeEstoqueExit(Sender: tObject);
begin
    if (ActiveControl.Name = 'Bit_CancelarMateria') and (Bit_CancelarMateria.Enabled ) then
       exit;
    if (wTpAponta = 'M') then
       begin
           if (CurrQtdeEstoque.Value > SqlCdsEstoqueFALTA_EMPENHAR.AsCurrency) then
              begin
                  uteis.aviso('Quantidade informada não pode ser maior que a quantidade que falta apontar !');
                  CurrQtdeEstoque.Value := SqlCdsEstoqueFALTA_EMPENHAR.AsCurrency;
                  CurrQtdeEstoque.SetFocus;
              end;
       end;
    if (wTpAponta = 'E') then
       begin
           if (CurrQtdeEstoque.Value > SqlCdsEmpenhoEPM_QTDE.AsCurrency) then
              begin
                  uteis.aviso('Quantidade informada não pode ser maior que a quantidade apontada !');
                  CurrQtdeEstoque.Value := SqlCdsEmpenhoEPM_QTDE.AsCurrency;
                  CurrQtdeEstoque.SetFocus;
              end;
       end;
end;

procedure TFormOrdServCentroNovo.dbgEngGeralDblClick(Sender: TObject);
begin
  inherited;
  if not qEngeGeral.IsEmpty then
  begin
    if not assigned(frmApontamento) then
    begin
      frmApontamento := TFrmApontamento.Create(Application);
      if (MDIChildCount > 1) then
        SendMessage(ClientHandle, WM_MDICASCADE, 0, 0);

    end;
    frmApontamento.edOperacao.idRetorno := intToStr(qEngeGeralOPE_CODIGO.Value);
    frmApontamento.cdsEngenharia.Locate('OSV_CODIGO',EdtOpEng.Text,[]);
    frmApontamento.Show;
  end;
end;

procedure TFormOrdServCentroNovo.Bit_RefazerClick(Sender: tObject);
begin
     if not SqlCdsItemOP.IsEmpty then
     begin
          FormOrdServRefazer := TFormOrdServRefazer.Create(Application);
          try
             FormOrdServRefazer.Caption               := 'Refazer o Empenho';
             FormOrdServRefazer.GroupEstornar.Caption := 'Dados da OP para Refazer o Empenho';
             FormOrdServRefazer.Edt_OP.Text := CdsOPOSV_CODIGO.AsString;
             FormOrdServRefazer.Edt_Emissao.Text      := CdsOPOSV_EMISSAO.AsString;
             FormOrdServRefazer.Edt_Referencia.Text   := CdsOPPRD_REFER.AsString;
             FormOrdServRefazer.Edt_Material.Text     := CdsOPPRD_DESCRI.AsString;
             FormOrdServRefazer.Curr_Qtde.Value       := CdsOPOSV_QTDE.AsCurrency;

             FormOrdServRefazer.wBotao_Proc_Producao  := 'F';
             FormOrdServRefazer.ShowModal;
          finally
            FreeAndNil( FormOrdServRefazer );
          end;
     end
     else
     begin
          if (Rad_Producao.Checked) then
             uteis.aviso('Não há materia para empenhar !');
     end;
end;

procedure TFormOrdServCentroNovo.Bit_ConcluirClick(Sender: tObject);
begin
     if not DBInicio.Empresa.wPMT_OP_SEMAPONTA   then
     begin
       OpenAux(' SELECT cast(count(1) as integer) qde FROM FABRICACAO fab INNER JOIN OSV0001 os ON (os.OSV_CODIGO = fab.OSV_CODIGO)  ' +
               ' WHERE fab.OSV_CODIGO = '+  CdsOPOSV_CODIGO.AsString +
               ' AND osv_qtde > (FAB_PRODUZIDA + FAB_REFUGADA) ' )  ;
       if qAux.fieldByName('qde').AsInteger > 0  then
          GeraException('Não foram finalizados todas as operações. Aponte todas as operações.');
     end;

     if not CdsOP.IsEmpty then
     begin
          if (CdsOPOSV_STATUS.AsString <>'C') then      //<> Concluida
          begin
               if (SqlCdsParamPMT_OPS_CONCLUIR.AsString = 'S') then // Verifica se o Parametro deixa concluir mesmo com pendencia de falta de materia-prima
               begin
                     FormConcluirOP := TFormConcluirOP.Create(Application);
                     try
                       pgcPCP.ActivePageIndex := 0;
                       FormConcluirOP.ShowModal;
                     finally
                            FreeAndNil(FormConcluirOP);
                            pgcPCP.ActivePageIndex := 0;

                     end;
               end
               else
               begin
                     if (CdsOPOSV_STATUS_SITUACAO.AsString = 'S') then  {Verifica se na op existe pendencia de materia prima}
                     begin
                          FormConcluirOP := TFormConcluirOP.Create(Application);
                          try
                             pgcPCP.ActivePageIndex := 0;
                             FormConcluirOP.ShowModal;

                          finally
                                 FreeAndNil( FormConcluirOP );
                                 pgcPCP.ActivePageIndex := 0;
                                 if CdsOp.IsEmpty then
                                    SqlCdsCelOp.Close;
                          end;
                     end
                     else
                     begin
                          uteis.aviso('Impossível concluir OP, tem materiais faltando !');
                          pgcPCP.ActivePageIndex := 0;
                     end;
               end;
          end
          else
          begin
               uteis.aviso('Ordem de Produção já concluído !');
               pgcPCP.ActivePageIndex := 0;
          end;
     end
     else
           uteis.aviso('Não há ordem de produção para concluir !');
end;

procedure TFormOrdServCentroNovo.DbGridOSDblClick(Sender: tObject);
begin
    pgcPCP.ActivePageIndex := 1;

end;

procedure TFormOrdServCentroNovo.dbGridOSDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if (DbGridOS.Focused) then
       begin
          if cdsOPOSV_STATUS.AsString = 'I' then              // parcial
             DbGridOS.Canvas.Font.Color:= $000080;
          if cdsOPOSV_STATUS.AsString = 'P' then              // producao
             DbGridOS.Canvas.Font.Color:= $000000;
          if cdsOPOSV_STATUS.AsString = 'E' then
             DbGridOS.Canvas.Font.Color:= $000000EA;         // estornada
          if cdsOPOSV_STATUS.AsString = 'C' then
             DbGridOS.Canvas.Font.Color:= $00FF2424;         // concluida
          if (gdSelected in State) then
             DbGridOS.Canvas.Font.Color  := clWindow;
          DbGridOS.DefaultDrawDataCell(Rect, DbGridOS.Columns[datacol].field, State);
       end
    else
       begin
          if cdsOPOSV_STATUS.AsString = 'I' then
             DbGridOS.Canvas.Font.Color:=  $000080;          //  Marrom
          if cdsOPOSV_STATUS.AsString = 'P' then
             DbGridOS.Canvas.Font.Color:= $000000;            // Preto
          if cdsOPOSV_STATUS.AsString = 'E' then
             DbGridOS.Canvas.Font.Color:= $000000EA;          // Vermelho
          if cdsOPOSV_STATUS.AsString = 'C' then
             DbGridOS.Canvas.Font.Color:= $00FF2424;          // Azul
          DbGridOS.DefaultDrawDataCell(Rect, DbGridOS.Columns[datacol].field, State);
       end;
    //
   

end;

procedure TFormOrdServCentroNovo.Bit_OpReservarClick(Sender: tObject);
begin
    try
      try
        pgcPCP.ActivePageIndex := 0;

        FormOrdServRefazer := TFormOrdServRefazer.Create(Application);
        if (CdsOPOSV_STATUS.AsString = 'A') then
           FormOrdServRefazer.LblInf.Caption := 'Transferência de O.P. aberta para reserva';
        //
        FormOrdServRefazer.GroupEstornar.Caption := 'Dados da OP para Reserva';
        FormOrdServRefazer.wBotao_Proc_Producao  := 'R';
        //FormOrdServRefazer.Edt_OP.Text           := ExtrairNumeros(CdsOPOSV_CODIGO.AsString);
        FormOrdServRefazer.Edt_OP.Text           := CdsOPOSV_CODIGO.AsString;
        FormOrdServRefazer.Edt_Emissao.Text      := CdsOPOSV_EMISSAO.AsString;
        FormOrdServRefazer.Edt_Referencia.Text   := CdsOPPRD_REFER.AsString;
        FormOrdServRefazer.Edt_Material.Text     := CdsOPPRD_DESCRI.AsString;
        FormOrdServRefazer.Curr_Qtde.Value       := CdsOPOSV_QTDE.AsCurrency;
        FormOrdServRefazer.ShowModal;
      finally
        begin
            FormOrdServRefazer.Destroy;
            FormOrdServRefazer := nil;
            pgcPCP.ActivePageIndex := 0;
//          CdsOP.Refresh;
            DbGridOS.SetFocus;
        end;
      end;
    except
        //beep;
        uteis.erro  ('Ocorreu um erro na criação do formulário!');
    end;
end;

procedure TFormOrdServCentroNovo.Bit_ProcessoClick(Sender: TObject);
begin
  inherited;
   if not assigned(frmMonitorOperacoes) then
  begin
    frmMonitorOperacoes := TfrmMonitorOperacoes.Create(Application);
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0);

  end;
  frmMonitorOperacoes.Show;
end;

procedure TFormOrdServCentroNovo.Bit_OpProducaoClick(Sender: tObject);
begin
    try
      pgcPCP.ActivePageIndex := 0;
      begin
          try
            FormOrdServRefazer := TFormOrdServRefazer.Create(Application);
            if (CdsOPOSV_STATUS.AsString = 'A') then
               begin
                   if frmmenu.wBaixaEstqAlmox = 'S' then // se tiver no parametro para baixar estoque no almoxarifado
                      FormOrdServRefazer.LblInf.Caption    := 'Transferência de O.P. aberta para almoxarifado'
                   else
                      FormOrdServRefazer.LblInf.Caption    := 'Transferência de O.P. aberta para produção';
               end
            else
               if (CdsOPOSV_STATUS.AsString = 'R') then
                  FormOrdServRefazer.LblInf.Caption    := 'Transferência de O.P. reservada para produção';
            //
            FormOrdServRefazer.GroupEstornar.Caption := 'Dados da OP para produção';
            FormOrdServRefazer.wBotao_Proc_Producao  := 'P';
            FormOrdServRefazer.Edt_OP.Text           := CdsOPOSV_CODIGO.AsString;
            FormOrdServRefazer.Edt_Emissao.Text      := CdsOPOSV_EMISSAO.AsString;
            FormOrdServRefazer.Edt_Referencia.Text   := CdsOPPRD_REFER.AsString;
            FormOrdServRefazer.Edt_Material.Text     := CdsOPPRD_DESCRI.AsString;
            FormOrdServRefazer.Curr_Qtde.Value       := CdsOPOSV_QTDE.AsCurrency;
            FormOrdServRefazer.ShowModal;
          finally
            begin
                FormOrdServRefazer.Destroy;
                FormOrdServRefazer := nil;
                pgcPCP.ActivePageIndex := 0;
                DbGridOS.SetFocus;
            end;
          end;
      end;
    except
        //beep;
        uteis.erro  ('Ocorreu um erro na criação do formulário!');
    end;
end;

procedure TFormOrdServCentroNovo.EstornarEmpenho;
begin
    if (SqlCdsEmpenhoEPM_TIPOEMPENHO.AsString <> 'E') then
       begin
           Edt_Materia.Text       := SqlCdsEmpenhoPRD_REFER_ITENS.AsString;
           DtDataEmissao.Date     := iif(SqlCdsEmpenhoEPM_DATAEMPENHO.AsDateTime=0,now,SqlCdsEmpenhoEPM_DATAEMPENHO.AsDateTime);
           CurrQtdeEstoque.Value  := SqlCdsEmpenhoEPM_QTDE.AsCurrency;
           Pan_Materia.Enabled := True;
           Bit_Estornar.Enabled := True;
           if Bit_Estornar.CanFocus then
              Bit_Estornar.SetFocus;
           Bit_Manual.Enabled     := False;
           Bit_Automatico.Enabled := False;
       end
    else
       begin
           uteis.aviso('Não é possível estornar o Material já estornado !');
           DBGrid3.SetFocus;
       end;
end;

procedure TFormOrdServCentroNovo.ConfirmaEstornarEmpenho;
begin
    try
//      {Verifica a quantidade para o Estorno do Empenho}
//      if (Verifica_Qtde_Empenho(SqlCdsEmpenhoOSV_CODIGO.AsString,
//                                SqlCdsEmpenhoPRD_REFER_ITENS.AsString,
//                                SqlCdsEmpenhoEMP_CODIGO.AsString,
//                                CurrQtdeEstoque.Value) = True) then
//         begin
             KardexLancamento(SqlCdsEmpenhoOSV_CODIGO.AsString,
                              'PRO',
                              wPmt_Amx_Producao_Entrada,
                              '',
                              SqlCdsEmpenhoPRD_CODIGO.AsString,
                              '',//grade
                              '',
                              'E',
                              '',
                              IntToStr(SqlCdsEmpenhoPRDL_REGISTRO.AsInteger),//Rever Lote Novo
                              'ESTORNO DE EMPENHO DA PRODUCAO',
                              Now,
                              CurrQtdeEstoque.Value,
                              SqlCdsEmpenhoOSV_CODIGO.AsString,
                              SqlCdsEmpenhoPRD_REFER_ITENS.AsString,
                              0.00
                              );
             {Inserir informacao no apontamento}
             Inserir_Empenho('E',
                             SqlCdsEmpenhoOSV_CODIGO.AsString,
                             SqlCdsEmpenhoPRD_REFER_ITENS.AsString,
                             SqlCdsEmpenhoEMP_CODIGO.AsString,
                             DataAmericana(DtDataEmissao.Text),
                             ValorAmericano(CurrQtdeEstoque.Text),
                             SqlCdsEmpenhoPRDL_REGISTRO.AsInteger  );
             {Atualizar Campo PRD_EMPENHO na tabela PRD0000}
             Atualiza_Empenho_Estoque('E',
                                      SqlCdsEmpenhoPRD_REFER_ITENS.AsString,
                                      ValorAmericano(CurrQtdeEstoque.Text));
             {Atualiza o Campo PRD_SALDOPRODUCAO}
             AtualizaQtdeProducao(SqlCdsEmpenhoPRD_REFER_ITENS.AsString,
                                  'S',
                                  ValorAmericano(CurrQtdeEstoque.Text));
             {Atualiza Status do Apontamento}
             Atualiza_Empenho_Manual('E',
                                     SqlCdsEmpenhoOSV_CODIGO.AsString,
                                     SqlCdsEmpenhoPRD_REFER_ITENS.AsString,
                                     SqlCdsEmpenhoEMP_CODIGO.AsString,
                                     ValorAmericano(CurrQtdeEstoque.Text),
                                     '0');
//         end
//      else
//         begin
//             uteis.aviso('A quantidade estornada, ultrapassa a quantidade para produzir !');
//             DBGrid3.SetFocus;
//             Bit_CancelarMateria.Click;
//         end;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro no Estorno do Apontamento ! '+E.Message));
    end;
end;

procedure TFormOrdServCentroNovo.Atualiza_Empenho_Manual(const xTpEmpenho, xOP,
  xMateria, xEmpresa, xQtde, xFaltaEmpenhar: String);
var
  wStatusEmpenho : String[1];
begin
    try
      {Atualiza Status do Item Apontado na tabela OSV_IT02}
      if (xTpEmpenho<>'E') then
       begin
           if (StrToFloat(xQtde) >= StrToFloat(xFaltaEmpenhar)) then
              begin
                  wStatusEmpenho := 'S';
              end
           else
              begin
                  wStatusEmpenho := 'P';
              end;
           wSql1      := 'Update OSV_IT02 set OSI_STATUSEMPENHO = '''+wStatusEmpenho+''','+
                                             'OSI_EMPENHO = (OSI_EMPENHO + '+ValorAmericano(xQtde)+')';
       end
      else
      begin
           wStatusEmpenho := 'N';
           wSql1          := 'Update OSV_IT02 set OSI_STATUSEMPENHO = '''+wStatusEmpenho+''','+
                                                 'OSI_EMPENHO = (OSI_EMPENHO - '+ValorAmericano(xQtde)+')';
      end;
      //
      wSeleciona := ' where EMP_CODIGO = '''+xEmpresa+''' AND OSV_CODIGO = '''+xOP+''' AND PRD_REFER_ITENS = '''+xMateria+'''';
      //
      dbInicio.ExecSql(wSql1+wSeleciona);
      //

    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao atualizar o Status do Empenho ! '+e.message));
    end;
end;



procedure TFormOrdServCentroNovo.mostraItensOrdem;
var
   sEmpresa:String;
begin
  sEmpresa := '';
 IF CdsOPOSV_CODIGO.AsString = '' then
  exit;
  if DBInicio.Exclusivo('PRODUTOS') then
     sEmpresa := '  and p1.EMP_CODIGO = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO);


  {mostra detalhes da ordem de produtocao guia itens da ordem}
  Screen.Cursor := crHourGlass;
  try
     EdtOp.Text      := CdsOPOSV_CODIGO.AsString;
     EdtEmissao.Text := CdsOPOSV_EMISSAO.Text;
     EdtRefer.Text   := CdsOPPRD_REFER.AsString;
     EdtDescri.Text  := CdsOPPRD_DESCRI.AsString;
     CurrQtde.Value  := CdsOPOSV_QTDE.AsCurrency;

     CurrTotal.Value := (CurrMod1.Value+CurrMod2.Value+CurrMod3.Value+CurrMod4.Value+CurrMod5.Value+CurrMod6.Value+CurrMod7.Value+CurrMod8.Value);
      {Mostrar as descricoes das variacoes}
      SqlCdsProduto.Close;
      SqlCdsProduto.CommandText := SQLDEF('PRODUTOS','Select P1.PRD_REFER,P1.PRD_DCVAR1,P1.PRD_DCVAR2,P1.PRD_DCVAR3,P1.PRD_DCVAR4,P1.PRD_DCVAR5,P1.PRD_DCVAR6,P1.PRD_DCVAR7,P1.PRD_DCVAR8 from PRD0000 P1 ',
                                          'where P1.PRD_REFER = '''+CdsOPPRD_REFER.AsString+'''','P1.PRD_REFER','P1.');
      SqlCdsProduto.Open;

      {Mostrar os itens}
      MostraMateriaPrima;
      //
      {Abre a tabela de apontamentos}
      wSql1 := ' Select E1.*,'+
               ' CASE WHEN (L1.PRDL_REGISTRO is null) THEN P1.PRD_DESCRI' +
               ' ELSE  P1.PRD_DESCRI || '' (LOTE:''||L1.PRDL_LOTE||'')'' END AS PRD_DESCRI, PRDL_LOTE, '+
               ' P1.PRD_UND,T1.PTI_SIGLA, p1.prd_codigo from EPM_0000 E1 ';
      wSql2 := ' LEFT JOIN PRD0000 P1 ON (E1.PRD_REFER_ITENS = P1.PRD_REFER '+sEmpresa+') ';
      wSql3 := ' LEFT JOIN PRD_TIPO T1 ON (P1.PTI_CODIGO = T1.PTI_CODIGO) '   +
               ' LEFT JOIN PRD_LOTE L1 ON (L1.PRDL_REGISTRO = E1.PRDL_REGISTRO)'   ;
      SqlCdsEmpenho.Close;
      SqlCdsEmpenho.CommandText := SQLDEF('ORDEMPRODUCAO',wSql1+wSql2+wSql3,'where E1.OSV_CODIGO = '''+CdsOPOSV_CODIGO.AsString+'''','E1.PRD_REFER_ITENS,E1.EPM_DATAEMPENHO','E1.');
      SqlCdsEmpenho.Open;

    Screen.Cursor := crDefault;
   except on E:EdatabaseError do
      begin
        Screen.Cursor := crDefault;
        uteis.erro  (pchar('Erro ao mostrar itens da ordem de produção !'+e.message));
      end;
   end;
end;

procedure TFormOrdServCentroNovo.MostraMateriaPrima;
var lOrdem :String;
begin

//     if SqlCdsParamPMT_MDL_OP.AsString = '1' then  // QUIMICA
       lOrdem := 'O2.OSI_REGISTRO';
//     else
//         lOrdem := 'P2.PRD_DESCRI';

     SqlCdsItemOP.Close;
     SqlCdsItemOP.CommandText := ' Select O2.OSV_CODIGO, '+
                                 '        O2.PRD_REFER_ITENS, '+
                                 '        O2.OSI_UC, '+
                                 '        O2.OSI_QTDE1, '+
                                 '        O2.OSI_QTDE2, '+
                                 '        O2.OSI_QTDE3, '+
                                 '        O2.OSI_QTDE4, '+
                                 '        O2.OSI_QTDE5, '+
                                 '        O2.OSI_QTDE6, '+
                                 '        O2.OSI_QTDE7, '+
                                 '        O2.OSI_QTDE8, '+
                                 '        O2.OSI_RESERVADO, '+
                                 '        O2.OSI_EMPENHO, '+
                                 '        O2.OSI_APONTADO, '+
                                 '        P2.PRD_DESCRI, '+
                                 '        P2.PRD_UND, '+
                                 '        P2.PRD_LOTE, '+
                                 '        P3.PTI_SIGLA, '+
                                 '        F4.FTC_TUP, '+
                                 '        F4.FTC_ETAPAS, '+
                                 '        O2.OSI_STATUSEMPENHO, '+
                                 '        case O2.OSI_STATUSEMPENHO when '+qStr('N')+' then '+qStr('Pendente')+
                                 '                                  when '+qStr('P')+' then '+qStr('Parcial')+
                                 '                                  when '+qStr('S')+' then '+qStr('Concluído')+
                                 '                                  when '+qStr(' ')+' then '+qStr('Direto')+
                                 '        end as wStatusEmpenho, '+
                                 '        (SELECT FIRST 1 GR.PRG_DESCRICAO FROM PRD_GRADE GR WHERE GR.PRG_REGISTRO = O2.PRG_REGISTRO) AS GRADE '+
                                 'from OSV_IT02 O2 '+
                                 '     left join PRD0000 P2 on (O2.PRD_REFER_ITENS = P2.PRD_REFER '+ ConcatSe('and p2.',DBInicio.ExclusivoSql('PRODUTOS'))  + ')'+
                                 '     left join PRD_TIPO P3 on (P3.PTI_CODIGO = P2.PTI_CODIGO) '+
                                 '     left join FTC0000 F4 on (F4.PRD_REFER = O2.PRD_REFER and f4.emp_codigo = O2.emp_codigo ) '+
                                 '     LEFT JOIN OSV0001 OSV1 ON (OSV1.OSV_CODIGO = O2.OSV_CODIGO) '+
                                 'Where O2.OSV_CODIGO = '+qStr(CdsOPOSV_CODIGO.AsString)+' and O2.PRD_REFER = '+qStr(CdsOPPRD_REFER.AsString) +
                                 ConcatSe(' and O2.' , dbInicio.ExclusivoSql('ORDEMPRODUCAO') )+
                                 ' order by '+LOrdem ;
//     if DelphiAberto then
//        CopytoClipBoard( SqlCdsItemOP.CommandText );
  SqlCdsItemOP.Open;

end;

procedure TFormOrdServCentroNovo.mProcPRCPrint(Sender: TObject);
begin
  inherited;
  TppMemo(Sender).Text := SqlCdsOPImpFTC_ETAPAS.AsString + SqlCdsOPImpFTC_PROC1.AsString + SqlCdsOPImpFTC_PROC2.AsString + SqlCdsOPImpFTC_PROC3.AsString    +
   SqlCdsOPImpFTC_PROC4.AsString +  SqlCdsOPImpFTC_PROC5.AsString +  SqlCdsOPImpFTC_PROC6.AsString +   SqlCdsOPImpFTC_PROC7.AsString +
     SqlCdsOPImpFTC_PROC8.AsString;
end;

procedure TFormOrdServCentroNovo.mPROC_PRC_M1Print(Sender: TObject);
begin
  inherited;
  TppMemo(Sender).Text :=  SqlCdsOPImpFTC_PROC1.AsString + SqlCdsOPImpFTC_PROC2.AsString + SqlCdsOPImpFTC_PROC3.AsString    +
   SqlCdsOPImpFTC_PROC4.AsString +  SqlCdsOPImpFTC_PROC5.AsString +  SqlCdsOPImpFTC_PROC6.AsString +   SqlCdsOPImpFTC_PROC7.AsString +
     SqlCdsOPImpFTC_PROC8.AsString;
end;

procedure TFormOrdServCentroNovo.CdsOPAfterScroll(DataSet: TDataSet);
var bmostrar: Boolean;
begin
    //mostraItensOrdem;
    if SqlCdsParamPMT_CELULAPROD.AsString = 'S' then
       BuscaCelulaProducao;
    bmostrar := Not  DbGridOs.DataSource.DataSet.IsEmpty ;
    Bit_Celulas.Enabled           := bmostrar;
    Bit_Processo.Enabled          := bmostrar;
    Bit_OpReservar.Enabled        := bmostrar and ( ( CdsOPOSV_STATUS.AsString='A' ) or ( CdsOPOSV_STATUS.AsString='E') );
    Bit_OpProducao.Enabled        := bmostrar and ( ( CdsOPOSV_STATUS.AsString='A' ) or ( CdsOPOSV_STATUS.AsString='E') or ( CdsOPOSV_STATUS.AsString='R') );
    BitEstornar.Enabled           := bmostrar and ( CdsOPOSV_STATUS.AsString<>'C' ) and ( CdsOPOSV_STATUS.AsString<>'E' );
    Bit_Concluir.Enabled          := bmostrar and ( MatchStr(CdsOPOSV_STATUS.AsString,['P','I']) );

    TabSheet_apontadas.TabVisible := (CdsOPOSV_STATUS.AsString = 'P');
    if (CdsOPOSV_STATUS.AsString = 'R')  OR (CdsOPOSV_STATUS.AsString = 'P') then
    begin
         if (CdsOPOSV_STATUS.AsString = 'R') THEN
            Bit_Refazer.Caption           := 'Re&fazer Reserva'
         Else
            Bit_Refazer.Caption           := 'Re&fazer Empenhado';
         Bit_Refazer.Enabled           := True;
    end;

end;

procedure TFormOrdServCentroNovo.cdsOpOSV_STATUS_CCGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
     if (CdsOPOSV_STATUS.AsString = 'C') then
        Text := 'Concluída'
     Else
     if (CdsOPOSV_STATUS.AsString = 'I') then
        Text := 'C.Parcial'
     Else
     if (CdsOPOSV_STATUS.AsString = 'E') then
        Text := 'Estornada'
     else
     if (CdsOPOSV_STATUS.AsString = 'P') then
        Text := 'Produção'
     Else
     if (CdsOPOSV_STATUS.AsString = 'X') then
        Text := 'Almoxarifado'
     Else
         Text := 'Reservada' ;
end;

procedure TFormOrdServCentroNovo.ParametroGrade;
begin
      SqlCdsParam.Close;
      SqlCdsParam.CommandText := SQLDEF('PARAMETROS','select P2.PMT_OPS_CONCLUIR,P2.PMT_CELULAPROD,P2.PMT_EMPRESACLASSE,P2.PMT_VARIACOES,P2.PMT_MDL_OP,P2.PMT_PROCESPROD,P2.PMT_UNFORMULA from PRMT0001 P2 ','','','P2.');
      SqlCdsParam.Open;

   {
    Try
      SqlCdsParam.Close;
      SqlCdsParam.CommandText := SQLDEF('PARAMETROS','select P2.PMT_OPS_CONCLUIR,P2.PMT_CELULAPROD,P2.PMT_EMPRESACLASSE,P2.PMT_VARIACOES,P2.PMT_MDL_OP,P2.PMT_PROCESPROD,P2.PMT_UNFORMULA from PRMT0001 P2 ','','','P2.');
      SqlCdsParam.Open;
      if SqlCdsParam.IsEmpty = false then
         begin
                    GrpVar.Visible := false;
                    DbGrid1.Top                 := 37;
                    DbGrid1.Height              := 396;
                    DbGrid1.Width               := 953;
                    DbGrid1.Columns[00].Width   := 75;   //Materia
                    DbGrid1.Columns[01].Width   := 200;  //Descricao materia-Prima
                    DbGrid1.Columns[02].Width   := 20;   //Sigla
                    DbGrid1.Columns[03].Width   := 56;   //U.C.
                    DbGrid1.Columns[04].Width   := 27;   //UND
                    DbGrid1.Columns[05].Visible := True; //Qtde
                    DbGrid1.Columns[05].Width   := 64;   //QTDE

                    DbGrid1.Columns[06].Width   := 63;   //Total U.C.
                    DbGrid1.Columns[07].Width   := 85;   //Empenhado

                    DbGrid1.Columns[08].Width   := 80;   //Sit.Empenho
                    DbGrid1.Columns[09].Width   := 72;   //Reserva
                    DbGrid1.Columns[10].Visible := False;//var1
                    DbGrid1.Columns[11].Visible := False;//var2
                    DbGrid1.Columns[12].Visible := False;//var3
                    DbGrid1.Columns[13].Visible := False;//var4
                    DbGrid1.Columns[14].Visible := False;//var5
                    DbGrid1.Columns[15].Visible := False;//var6
                    DbGrid1.Columns[16].Visible := False;//var7
                    DbGrid1.Columns[17].Visible := False;//var8

             // preparar a tela conforme paramentros
             if (SqlCdsParamPMT_CELULAPROD.AsString = 'S') then
                // mostrar grade de celulas de produçao e ajuste grade de O.S.
                begin
                    Bit_Celulas.Enabled         := True;
                    DbGridCelulas.Visible       := True;
                    DbGridOS.Height             := 294;
                    DbGridOS.Columns[0].Width   :=  58;  //O.P.
                    DbGridOS.Columns[1].Width   :=  63;  //EMISSAO
                    DbGridOS.Columns[2].Width   :=  80;  //REFERENCIA
                    DbGridOS.Columns[3].Width   := 235;  //DESCRICAO
                    DbGridOS.Columns[4].Visible := True; //VAR
                    DbGridOS.Columns[4].Width   :=  45;  //QUANT.
                    DbGridOS.Columns[5].Width   :=  45;  //QUANT.
                    DbGridOS.Columns[6].Width   :=  43;  //PEDIDO
                    DbGridOS.Columns[7].Width   :=  43;  //TUP
                    DbGridOS.Columns[8].Width   :=  70;  //STATUS
                    DbGridOS.Columns[9].Width   :=  25;  //CEL
                    DbGridOS.Columns[9].Visible := True;
                    DbGridOS.Columns[10].Width   :=  25; //IMP
                end
             else
                begin
                    Bit_Celulas.Enabled         := False;
                    DbGridCelulas.Visible       := False;
                    DbGridOS.Height             := 396;
                    DbGridOS.Columns[0].Width   :=  58;  //O.P.
                    DbGridOS.Columns[1].Width   :=  63;  //EMISSAO
                    DbGridOS.Columns[2].Width   :=  80;  //REFERENCIA
                    DbGridOS.Columns[3].Width   := 317;  //DESCRICAO
                    DbGridOS.Columns[4].Visible := False;//VAR
                    DbGridOS.Columns[5].Width   :=  45;  //QUANT.
                    DbGridOS.Columns[6].Width   :=  43;  //PEDIDO
                    DbGridOS.Columns[7].Width   :=  43;  //TUP
                    DbGridOS.Columns[8].Width   :=  70;  //STATUS
                    DbGridOS.Columns[9].Width   :=  25;  //CEL
                    DbGridOS.Columns[9].Visible := false;
                    DbGridOS.Columns[10].Width  :=  25;  //IMP
                end;
                // prepapar a tela conforme paramentros
             if SqlCdsParamPMT_PROCESPROD.AsString = 'S' then
                Bit_Processo.Enabled := True
             else
                Bit_Processo.Enabled := False;
         end;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao abrir a tabela de parametros !'+e.message));
    end;     }

end;

procedure TFormOrdServCentroNovo.LayOutPcp;
begin
    Grp_Pesquisa.TabOrder := 0;
    GrpBusca.TabOrder   := 1;
    BitPesquisar.TabOrder := 2;
    BitCancelar.TabOrder  := 3;
    if (Rd_OS.Checked) then
    begin
           GrpBusca.Caption := 'Código da O.P.:';
           Edt_Nome.MaxLength := 6;
           Edt_Nome.Width     := 60;
    end
    else
    if (Rd_Pedido.Checked) then
    begin
           GrpBusca.Caption := 'Código do Pedido:';
           Edt_Nome.MaxLength := 7;
           Edt_Nome.Width     := 45;
    end
    else
    if (Rd_Refer.Checked) then
    begin
           GrpBusca.Caption := 'Referência do Produto:';
           Edt_Nome.MaxLength := 20;
           Edt_Nome.Width     := 120;
    end
    else
    if (Rd_Descricao.Checked) then
    begin
           GrpBusca.Caption := 'Descrição do Produto:';
           Edt_Nome.MaxLength := 50;
           Edt_Nome.Width     := 300;
    end
    else
    if (Rd_Num_Lote.Checked) then
    begin
           GrpBusca.Caption := 'Número do Lote:';
           Edt_Nome.MaxLength := 20;
           Edt_Nome.Width     := 120;
    end
    else
    if (Rd_Cliente.Checked) then
    begin
           GrpBusca.Caption := 'Código ou Nome do Cliente:';
           Edt_Nome.MaxLength := 5;
           Edt_Nome.Width     := 50;
    end;
    Edt_Nome.text := '';
    Edt_Nome.SetFocus;
end;

procedure TFormOrdServCentroNovo.Rd_OSClick(Sender: tObject);
begin
    LayOutPcp;
end;

procedure TFormOrdServCentroNovo.Edt_NomeExit(Sender: tObject);
Var
  pLetra : String[1];
begin
    Edt_Nome.Color := clWindow;
    if (Rd_OS.Checked) then
    begin
          pLetra := ExtrairLetra(Edt_Nome.Text);
          if (pLetra = '') then
             Edt_Nome.Text := StrZero(Edt_Nome.Text,6)
          else
             Edt_Nome.Text := StrZero(Edt_Nome.Text,7);
    end;
end;

procedure TFormOrdServCentroNovo.Edt_NomeEnter(Sender: tObject);
begin
  try
    Edt_Nome.Text := '';
    Edt_Nome.SelectAll;
    Edt_nome.Color := $0080FFFF;
  except
    // faz nada
  end;
end;

procedure TFormOrdServCentroNovo.BitPesquisarClick(Sender: tObject);
begin
  Busca
end;

procedure TFormOrdServCentroNovo.miGerarEngenhariaProcessosClick(Sender: TObject);
var i : integer;
begin
  inherited;
  try
   i:= GerarFabricacao(cdsOp);
   if i> 0  then
     i:= i+ GerarEspecificacoes(cdsOp);
 except
   on e:exception do
   begin
    uteis.erro  (Pchar('Ocorreu uma erro nas operações do processo !'+e.message));
    raise;
   end;
 end;
 if i>0 then
    uteis.aviso('Engenharia de processo gerada com sucesso ! ')
 else
   uteis.aviso('Sem estrutura de operações cadastrado no produto ! ')
end;

procedure TFormOrdServCentroNovo.Chk_PendenteClick(Sender: tObject);
begin
   Busca;
end;

procedure TFormOrdServCentroNovo.SqlCdsOPImpCalcFields(DataSet: TDataSet);
begin
   if (SqlCdsOPImpOSV_STATUS.AsString = 'I') then
       SqlCdsOPImpOSV_STATUS_CC.AsString := 'C.Parcial';
    if (SqlCdsOPImpOSV_STATUS.AsString = 'R') then
       SqlCdsOPImpOSV_STATUS_CC.AsString := 'Reservada';
    if (SqlCdsOPImpOSV_STATUS.AsString = 'P') then
       SqlCdsOPImpOSV_STATUS_CC.AsString := 'Produção';
    if (SqlCdsOPImpOSV_STATUS.AsString = 'C') then
       SqlCdsOPImpOSV_STATUS_CC.AsString := 'Concluída';
    if (SqlCdsOPImpOSV_STATUS.AsString = 'E') then
       SqlCdsOPImpOSV_STATUS_CC.AsString := 'Estornada';
    if (SqlCdsOPImpOSV_STATUS.AsString = 'X') then
       SqlCdsOPImpOSV_STATUS_CC.AsString := 'Almoxarifado';
    //
    // SqlCdsOPImpDESC_PROD_CC.AsString := Trim(SqlCdsOPImpPRD_DESCRI.AsString);



//
end;


procedure TFormOrdServCentroNovo.tsitemOSShow(Sender: TObject);
begin
  inherited;
 mostraItensOrdem;
end;

function TFormOrdServCentroNovo.Verifica_Qtde_Empenho(const pOPCODIGO,pMATERIA,pEMPRESA:String;pQtdeEstorno: Currency): Boolean;
Var
  pFaltaEmpenhar,
  pQtdeProduzir : Currency;
begin
   result := False;
    try
      pFaltaEmpenhar := pQtdeEstorno;
      pQtdeProduzir  := 0.0;
      wSQL1      := 'Select O2.OSI_REGISTRO,CAST((CAST(O2.osi_uc AS NUMERIC(15,4))*(O2.osi_qtde1+O2.osi_qtde2+O2.osi_qtde3+O2.osi_qtde4+O2.osi_qtde5+O2.osi_qtde6+O2.osi_qtde7+O2.osi_qtde8)) AS NUMERIC(15,4)) AS QTDE_PRODUZIR,';
      wSQL2      := 'CAST((CAST(O2.osi_uc AS NUMERIC(15,4))*(O2.osi_qtde1+O2.osi_qtde2+O2.osi_qtde3+O2.osi_qtde4+O2.osi_qtde5+O2.osi_qtde6+O2.osi_qtde7+O2.osi_qtde8)-(O2.OSI_RESERVADO+O2.OSI_EMPENHO)) AS NUMERIC(15,4)) AS FALTA_EMPENHAR ';
      wSQL3      := 'From OSV_IT02 O2 ';
      wSELECIONA := 'Where O2.OSV_CODIGO = '''+pOPCODIGO+''' and O2.PRD_REFER_ITENS = '''+pMATERIA+''' and O2.EMP_CODIGO = '''+pEMPRESA+'''';
      wOrdem     := 'Order by O2.OSV_CODIGO,O2.PRD_REFER_ITENS,O2.EMP_CODIGO';

      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=wSQL1 + wSQL2 + wSQL3 + wSELECIONA + wORDEM;
      DataCadastros.sqlUpdate.Open;
      if (not DataCadastros.sqlUpdate.IsEmpty) then
         begin
             pQtdeProduzir  := DataCadastros.sqlUpdate.FieldByName('QTDE_PRODUZIR').AsCurrency;
             pFaltaEmpenhar := pFaltaEmpenhar + DataCadastros.sqlUpdate.FieldByName('FALTA_EMPENHAR').AsCurrency;
             if (pFaltaEmpenhar > pQtdeProduzir) then
                Result := False
             else
                Result := True;
         end;
      DataCadastros.sqlUpdate.Close;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao verificar a Qtde do Empenho ! '+e.Message));
    end;
end;

procedure TFormOrdServCentroNovo.DbGridOSKeyPress(Sender: tObject;
  var Key: Char);
begin
    if (key =#13) then
       begin
           pgcPCP.ActivePageIndex := 1;
           //mostraItensOrdem;
           Key := #0;
       end;
end;

procedure TFormOrdServCentroNovo.BuscaCelulaProducao;
begin
     SqlCdsCelOp.Close;
     if (CdsOP.IsEmpty) then
     begin
          SqlCdsCelOp.CommandText := SQLDEF('ORDEMPRODUCAO','select C1.CEL_CODIGO,C2.CEL_NOME,C1.CEM_DTENTROU,C1.CEM_TUPTRAB,C1.CEM_DTCONCLUIU,C1.CEM_TRABALHO from CEL_MOV03 C1 '+
                                             'LEFT JOIN CEL0000 C2 ON C1.CEL_CODIGO = C2.CEL_CODIGO','where C1.OSV_CODIGO = '''+CdsOPOSV_CODIGO.AsString+'''','C1.OSV_CODIGO','C1.');
          SqlCdsCelOp.Open;
     end;
end;

procedure TFormOrdServCentroNovo.buscaEngenharia;
begin
   qEngeGeral.Close;
   qEngeGeral.CommandText:= ' SELECT FAB_CODIGO, OP.OPE_DESCRICAO, FB.SEQUENCIA, P1.PRD_DESCRI, OS.OSV_DTENTREGA, '+
                            ' DATEDIFF(DAY,CURRENT_DATE, OS.OSV_DTENTREGA) RESTANTES, OS.OSV_QTDE, '+
                           ' FB.FAB_PRODUZIDA, FB.FAB_PRODUZINDO,FB.FAB_REFUGADA, fb.OPE_CODIGO, fb.FAB_OBSERVACAO '+
                           ' FROM FABRICACAO FB                                        '+
                           '  INNER JOIN PRD0000 P1 ON (P1.PRD_CODIGO = fb.PRD_CODIGO) '+
                           '  INNER JOIN OSV0001 OS ON (OS.OSV_CODIGO = FB.OSV_CODIGO  AND P1.PRD_REFER = os.PRD_REFER) '+
                           '   INNER JOIN OPERACOES OP  ON (OP.OPE_CODIGO = FB.OPE_CODIGO) ' +
                           '  WHERE FB.OSV_CODIGO =  '+ QuotedStr(CdsOPOSV_CODIGO.AsString) +
                           '   ORDER BY SEQUENCIA ';

   qEngeGeral.Open;
end;

procedure TFormOrdServCentroNovo.BuscaLoteProduto(const prd_codigo: string);
begin
		 CdsLoteProduto.Close;
		 CdsLoteProduto.CommandText := SQLDEF('PRODUTOS','SELECT * from PRD_LOTE','where PRD_CODIGO = '+ QuotedStr(prd_codigo) +' AND prdl_saldo >0 ' ,'PRD_CODIGO','');
		 CdsLoteProduto.Open;
end;

procedure TFormOrdServCentroNovo.BuscaParametros;
begin
 qEspecifica.Close;

 qEspecifica.CommandText := 'SELECT OSV_CODIGO, ESR_CODIGO, ESR_NOME,ESR_PADROES,er.FAB_CODIGO,ESR_COL1, ESR_COL2,  '+
                          'ESR_COL3,ESR_COL4,ESR_COL5,ESR_COL6,ESR_COL7  FROM ESPECIFICACOES_REALIZADAS er '        +
                          ' join FABRICACAO FB  ON (fb.FAB_CODIGO = er.FAB_CODIGO) '+
                          ' WHERE FB.OSV_CODIGO =' +QuotedStr(CdsOPOSV_CODIGO.AsString) ;

 qEspecifica.Open;

 qParamEsp.Close;
 qParamEsp.CommandText := 'SELECT  ESP_NOME, ESP_PADROES,ESP_COL1,ESP_COL2,ESP_COL3,ESP_COL4,ESP_COL5,ESP_COL6,ESP_COL7 '+
                          ' FROM PRMT0001 WHERE EMP_CODIGO = '+ QuotedStr(DBInicio.Empresa.EMP_CODIGO);
 qParamEsp.Open;

end;

function TFormOrdServCentroNovo.ProdutoControleLote(const prd_refer :string)  :boolean;
begin
  OpenAux2('select PRD_GERENCIA_LOTE from prd0000 where PRD_REFER =' + QuotedStr(prd_refer));
  result := qAux2.FieldByName('PRD_GERENCIA_LOTE').AsString = 'S';

end;

procedure TFormOrdServCentroNovo.DbGridOSEnter(Sender: tObject);
begin
    if SqlCdsParamPMT_CELULAPROD.AsString = 'S' then
       BuscaCelulaProducao;
end;

procedure TFormOrdServCentroNovo.Edt_NomeKeyPress(Sender: tObject;
  var Key: Char);
begin
   if (Rd_Cliente.Checked) then
      begin
         if not (key in ['0'..'9',#8]) then
            begin
               //beep;
               Key := #0;
            end;
      end;
end;

procedure TFormOrdServCentroNovo.AdicionaUnidadeMedidaRel2(const sProdutoCodigo:String);
 Var
   QryReg:TSQLQuery;
begin
    QryReg := TSQLQuery.Create(Nil);
   try
     QryReg.SQLConnection := DataCadastros.SQLConnection1;
     QryReg.SQL.Clear;
     QryReg.SQL.Add('SELECT T1.PRD_UND, PRD_UNDCOMP FROM PRD0000 T1 WHERE T1.PRD_REFER = '''+sProdutoCodigo+'''');
     QryReg.Open;
     LblProduzir.Caption   := QryReg.Fields[0].AsString;
     LblSolicitado.Caption := IIF(QryReg.Fields[1].AsString = '',QryReg.Fields[0].AsString,QryReg.Fields[1].AsString);
   finally
     FreeAndNil(QryReg);
   end;

end;

procedure TFormOrdServCentroNovo.frxListaOrdemGetValue(const VarName: string; var Value: Variant);
begin
  inherited;
  if (VarName  = 'RAZAO') then
     Value := dbInicio.Empresa.FANTASIA
  else
  if (VarName = 'FILTROS') then
  Begin
    if dtb.date>0 then
      Value := ' Período de '+FormatDateTime('dd/mm/yyyy',dta.date)+ ' a '+ FormatDateTime('dd/mm/yyyy',dtb.date)
    else
      Value := ' Período de '+FormatDateTime('dd/mm/yyyy',dta.date)+ ' em diante';
  End;
end;

procedure TFormOrdServCentroNovo.frxOP1GetValue(const VarName: string; var Value: Variant);
begin
  inherited;
  if (VarName = 'RazaoSocial') then
     Value := dbInicio.Empresa.RAZAO;
end;

procedure TFormOrdServCentroNovo.frxOPGetValue(const VarName: String;
  var Value: Variant);
begin
  if (VarName  = 'RAZAO') then
     Value := dbInicio.Empresa.FANTASIA
  else
  if (VarName  = 'ENDERECO') then
     Value := dbInicio.Empresa.ENDERECO
  else
  if (VarName  = 'CEP') then
     Value := dbInicio.Empresa.CEP
  else
  if (VarName  = 'CIDADE') then
     Value := dbInicio.Empresa.CIDADE
  else
  if (VarName  = 'UF') then
     Value := dbInicio.Empresa.UF
  else
  if (VarName  = 'SITE') then
     Value := dbInicio.Empresa.HOME_PAGE
  else
  if (VarName  = 'FONE') then
     Value := dbInicio.Empresa.FONE
  else
  if (VarName  = 'EMAIL') then
     Value := dbInicio.Empresa.EMAIL
  else
  if (VarName  = 'CNPJ') then
     Value := dbInicio.Empresa.CNPJ_CNPF
  else
  if (VarName  = 'INSCR') then
     Value := dbInicio.Empresa.INSC_EST;

  DataCadastros.sqlUpdate.Close;
  DataCadastros.SqlUpdate.sql.text :='SELECT EMP_LOGO FROM EMP0000 WHERE EMP_CODIGO ='+QuotedStr(dbInicio.Empresa.EMP_CODIGO);
  DataCadastros.sqlUpdate.Open;
end;

function TFormOrdServCentroNovo.GerarEspecificacoes(cds: TClientDataSet): integer;
begin

  try
  DataCadastros.sqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text :=
    'INSERT INTO ESPECIFICACOES_REALIZADAS (ESR_CODIGO,FAB_CODIGO, ESR_NOME, ESR_PADROES, ESR_COL1, '+
    ' ESR_COL2,ESR_COL3,ESR_COL4,ESR_COL5,ESR_COL6,ESR_COL7 )                                      '+
    ' SELECT gen_id (GEN_ESP_REALIZADAS,1 ), FAB_CODIGO, ESP_NOME, ESP_PADROES,                    '+
    '   ESP_COL1,ESP_COL2,ESP_COL3,ESP_COL4,ESP_COL5,ESP_COL6,ESP_COL7                             '+
    '  FROM ENGENHARIA_PROCESSO EP                                                                 '+
    '  INNER JOIN PRD0000 P1 ON (P1.PRD_CODIGO = EP.PRD_CODIGO)                                    '+
    '  INNER JOIN ESPECIFICACOES e1 ON (E1.ENG_CODIGO = EP.ENG_CODIGO)                             '+
    '  INNER JOIN FABRICACAO FB ON (FB.ENG_CODIGO = EP.ENG_CODIGO)                                 '+
    ' WHERE p1.PRD_REFER = '+ qstr(cds.FieldByName('PRD_REFER').AsString) +
    ' AND FB.OSV_CODIGO = ' + qstr(cds.FieldByName('OSV_CODIGO').AsString);

   DataCadastros.sqlUpdate.Execsql;
   result :=  DataCadastros.sqlUpdate.RowsAffected;
  except
    on e:exception do
    begin
     uteis.erro  (Pchar('Ocorreu uma erro nas operações do processo !'+e.message));
     result := -1;
     raise;
    end;
  end;
end;

function TFormOrdServCentroNovo.GerarFabricacao(cds: TClientDataSet) : integer;
begin

 try
 DataCadastros.sqlUpdate.Close;
 DataCadastros.SqlUpdate.sql.text :='INSERT INTO FABRICACAO (FAB_CODIGO, PRD_CODIGO, OPE_CODIGO, sequencia, TEMPO_ESTIMADO, ENG_CODIGO, FAB_OBSERVACAO, OSV_CODIGO )   '+
                                    ' SELECT gen_id (GEN_FABRICACAO,1 ), EP.PRD_CODIGO, OPE_CODIGO, sequencia,TEMPO_ESTIMADO , ENG_CODIGO,ENG_OBSERVACAO '+ cds.FieldByName('OSV_CODIGO').AsString +
                                    ' FROM ENGENHARIA_PROCESSO EP                                                                            '+
                                    ' INNER JOIN PRD0000 P1 ON (P1.PRD_CODIGO = EP.PRD_CODIGO)                                               '+
                                    ' WHERE PRD_REFER = '+ qstr(cds.FieldByName('PRD_REFER').AsString);

 DataCadastros.sqlUpdate.Execsql;
 result := DataCadastros.SqlUpdate.RowsAffected;
 except
   on e:exception do
   begin
    uteis.erro  (Pchar('Ocorreu uma erro nas operações do processo !'+e.message));
    result := -1;
    raise;
   end;
 end;
end;

procedure TFormOrdServCentroNovo.DsOpGradeDataChange(Sender: tObject; Field: TField);
begin
     mostraItensOrdem;
end;

end.


