unit Prd0001;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  BaseDbForm,
  StdCtrls, DBCtrls, Mask, ExtCtrls, ComCtrls, Buttons, DB, DBTables, RwFunc,
  Grids, DBGrids, DirOutln, Provider, SqlExpr, SqlClientDataSet, DBClient,
  DBLocal, DBLocalS,
  rxToolEdit, rxCurrEdit, RXDBCtrl, Menus, ppBands, ppCtrls, ppVar, ppPrnabl,
  ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  ppStrtch, ppSubRpt, ppModule, raCodMod, MIDASLIB, ppParameter, jpeg,
  FMTBCd, RxDBComb, JvExStdCtrls, JvCombobox,
  JvDBCombobox, ComboBoxRw, daDataModule, frxClass, frxDBSet, frxExportXLS,
  frxExportPDF, Shellapi, SgDbSeachComboUnit, SgDbLookupComboUnit,
  JvExDBGrids, JvDBGrid, JvComponentBase, JvFormTransparent,
  ppDesignLayer, SimpleDS, Data.DBXFirebird, ACBrEnterTab,
  ACBrBase, ACBrCalculadora, ACBrETQ, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxDBEdit;

type
  TFormProduto = class(TfrmBaseDB)
    DsQFornec: TDataSource;
    CdsFornecedorAux: TSQLClientDataSet;
    CdsFornecedorAuxFOR_CODIGO: TStringField;
    CdsFornecedorAuxFOR_RAZAO: TStringField;
    CdsFornecedorAuxFOR_CONTATO: TStringField;
    CdsFornecedorAuxFOR_FONCONT: TStringField;
    CdsFornecedorAuxFOR_FONE: TStringField;
    CdsFornecedorAuxFOR_EMAIL: TStringField;
    CdsFornecedorAuxFOR_PRAZOVENDAS: TStringField;
    SqlCdsSegm: TSQLClientDataSet;
    SqlCdsSegmLIN_CODIGO: TStringField;
    SqlCdsSegmLIN_DESCRI: TStringField;
    SqlCdsSegmEMP_CODIGO: TStringField;
    SqlCdsfor: TSQLClientDataSet;
    SqlCdsforFOR_CODIGO: TStringField;
    SqlCdsforFOR_RAZAO: TStringField;
    PctrlProdutos: TPageControl;
    Tbs_Produtos: TTabSheet;
    Tbs_FichaTec: TTabSheet;
    GroupBox7: TGroupBox;
    Label2: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    DbePrd_Descri: TDBEdit;
    Panel8: TPanel;
    Bit_Lista: TBitBtn;
    Bit_Relatorio: TBitBtn;
    Panel1: TPanel;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    Bit_novo: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    PAN_FTC03: TPanel;
    Label32: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    DbDtFTC_CRIACAO: TDBDateEdit;
    DbeFTC_TUP: TDBEdit;
    EdtDescricao: TEdit;
    GrpVariacoes: TGroupBox;
    Label37: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    DbeFTCvar1: TDBEdit;
    DbeFTCvar2: TDBEdit;
    DbeFTCvar3: TDBEdit;
    DbeFTCvar4: TDBEdit;
    DbeFTCvar5: TDBEdit;
    DbeFTCvar6: TDBEdit;
    DbeFTCvar7: TDBEdit;
    DbeFTCvar8: TDBEdit;
    GrpMateria: TGroupBox;
    DBGridFichaTecnicaItem: TDBGrid;
    GrpProcesso: TGroupBox;
    ScrollBox1: TScrollBox;
    DbeFtc_proc1: TDBEdit;
    DbeFtc_proc2: TDBEdit;
    DbeFtc_proc3: TDBEdit;
    DBEFtc_proc4: TDBEdit;
    DBEFtc_proc5: TDBEdit;
    DBEFtc_proc6: TDBEdit;
    DBEFtc_Proc7: TDBEdit;
    DBEFtc_Proc8: TDBEdit;
    GrpMateriaPrima: TGroupBox;
    Label57: TLabel;
    SpProduto: TSpeedButton;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    EdtRefer: TEdit;
    EdtProduto: TEdit;
    CurrConsumo: TCurrencyEdit;
    CurrAnterior: TCurrencyEdit;
    DateModif: TDateEdit;
    SqlCdsProduto: TSQLClientDataSet;
    SqlCdsProdutoPRD_DCVAR1: TStringField;
    SqlCdsProdutoPRD_DCVAR2: TStringField;
    SqlCdsProdutoPRD_DCVAR3: TStringField;
    SqlCdsProdutoPRD_DCVAR4: TStringField;
    SqlCdsProdutoPRD_DCVAR5: TStringField;
    SqlCdsProdutoPRD_DCVAR6: TStringField;
    SqlCdsProdutoPRD_DCVAR7: TStringField;
    SqlCdsProdutoPRD_DCVAR8: TStringField;
    PAN_FTC01: TPanel;
    BIT_FTC_RELATORIO: TBitBtn;
    PAN_FTC02: TPanel;
    BIT_FTC_CANCELAR: TBitBtn;
    BIT_FTC_EXCLUIR: TBitBtn;
    BIT_FTC_GRAVAR: TBitBtn;
    Bit_FTC_Novo: TBitBtn;
    Bit_FTC_Copiar: TBitBtn;
    DBNavigator1: TDBNavigator;
    EdtPrd_codigo: TEdit;
    CdsItensFicha: TClientDataSet;
    DsItensFicha: TDataSource;
    SqlCdsMaterial: TSQLClientDataSet;
    SqlRelProdutos: TSQLClientDataSet;
    SqlRelProdutosFTC_TUP: TFMTBCdField;
    SqlRelProdutosFTC_CRIACAO: TSQLTimeStampField;
    SqlRelProdutosPRD_DCVAR1: TStringField;
    SqlRelProdutosPRD_DCVAR2: TStringField;
    SqlRelProdutosPRD_DCVAR3: TStringField;
    SqlRelProdutosPRD_DCVAR4: TStringField;
    SqlRelProdutosPRD_DCVAR5: TStringField;
    SqlRelProdutosPRD_DCVAR6: TStringField;
    SqlRelProdutosPRD_DCVAR7: TStringField;
    SqlRelProdutosPRD_DCVAR8: TStringField;
    SqlRelProdutosFTC_PROC1: TStringField;
    SqlRelProdutosFTC_PROC2: TStringField;
    SqlRelProdutosFTC_PROC3: TStringField;
    SqlRelProdutosFTC_PROC4: TStringField;
    SqlRelProdutosFTC_PROC5: TStringField;
    SqlRelProdutosFTC_PROC6: TStringField;
    SqlRelProdutosFTC_PROC7: TStringField;
    SqlRelProdutosFTC_PROC8: TStringField;
    SqlRelProdutosPTI_CODIGO: TStringField;
    SqlRelProdutosPTI_DESCRI: TStringField;
    SqlRelProdutosPGR_CODIGO: TStringField;
    SqlRelProdutosPGR_DESCRI: TStringField;
    SqlRelProdutosLIN_CODIGO: TStringField;
    SqlRelProdutosLIN_DESCRI: TStringField;
    DsRelProduto: TDataSource;
    SqlItensGrade: TSQLClientDataSet;
    SqlItensGradeFTI_REGISTRO: TIntegerField;
    SqlItensGradeFTI_MODIFICADA: TSQLTimeStampField;
    SqlItensGradeFTI_UC: TFMTBCdField;
    SqlItensGradeFTI_UCMODIFIC: TFMTBCdField;
    SqlItensGradeFTI_MODE1: TStringField;
    SqlItensGradeFTI_MODE2: TStringField;
    SqlItensGradeFTI_MODE3: TStringField;
    SqlItensGradeFTI_MODE4: TStringField;
    SqlItensGradeFTI_MODE5: TStringField;
    SqlItensGradeFTI_MODE6: TStringField;
    SqlItensGradeFTI_MODE7: TStringField;
    SqlItensGradeFTI_MODE8: TStringField;
    SqlItensGradeFTI_PRECOCUSTO: TFMTBCdField;
    SqlItensGradeEMP_CODIGO: TStringField;
    SqlItensGradePRD_UND: TStringField;
    DsRelItens: TDataSource;
    SqlItensGradePRD_GRADE: TStringField;
    CdsRelItens: TClientDataSet;
    CdsRelItensPRD_DESCRI: TStringField;
    CdsRelItensPRD_UND: TStringField;
    CdsRelItensFTI_MODE1: TStringField;
    CdsRelItensFTI_MODE2: TStringField;
    CdsRelItensFTI_MODE3: TStringField;
    CdsRelItensFTI_MODE4: TStringField;
    CdsRelItensFTI_MODE5: TStringField;
    CdsRelItensFTI_MODE6: TStringField;
    CdsRelItensFTI_MODE7: TStringField;
    CdsRelItensFTI_MODE8: TStringField;
    CdsRelItensFTI_UC: TCurrencyField;
    DsItensGrade: TDataSource;
    CdsRelItensFTI_ITEM: TStringField;
    SqlItensGradePRD_PCUSTO: TFMTBCdField;
    SqlItensGradeFTI_NIVEL: TIntegerField;
    SqlItensGradeFTI_SEQUENCIA: TIntegerField;
    SqlItensGradeFTI_REFER_PAI: TStringField;
    SqlItensGradeFTI_TIPO_PI: TStringField;
    SqlCdsFichaTec: TSQLClientDataSet;
    SqlItensGradePTI_SIGLA: TStringField;
    SqlItensGradeGrade_cc: TStringField;
    GrpGrade: TGroupBox;
    DBGridGrade: TDBGrid;
    PopupMenu1: TPopupMenu;
    AlterarItensdaFichaTecnica1: TMenuItem;
    ExcluirItensdaFichaTcnica1: TMenuItem;
    CdsRelItensPTI_SIGLA: TStringField;
    Tbs_Detalhe: TTabSheet;
    GroupBox10: TGroupBox;
    DBGrid2: TDBGrid;
    SqlCdsEstoqueDetalhe: TSQLClientDataSet;
    SqlCdsEstoqueDetalheOSV_CODIGO: TStringField;
    SqlCdsEstoqueDetalheOSV_QTDE: TFMTBCdField;
    SqlCdsEstoqueDetalheOSV_QTDE1: TFMTBCdField;
    SqlCdsEstoqueDetalheOSV_QTDE2: TFMTBCdField;
    SqlCdsEstoqueDetalheOSV_QTDE3: TFMTBCdField;
    SqlCdsEstoqueDetalheOSV_QTDE4: TFMTBCdField;
    SqlCdsEstoqueDetalheOSV_QTDE5: TFMTBCdField;
    SqlCdsEstoqueDetalheOSV_QTDE6: TFMTBCdField;
    SqlCdsEstoqueDetalheOSV_QTDE7: TFMTBCdField;
    SqlCdsEstoqueDetalheOSV_QTDE8: TFMTBCdField;
    SqlCdsEstoqueDetalheOSV_STATUS: TStringField;
    DsEstoqueDetalhe: TDataSource;
    SqlCdsEstoqueDetalheCC_STATUS: TStringField;
    SqlCdsEstoqueDetalheCC_QTDE: TCurrencyField;
    SqlCdsEstoqueDetalheCC_VARIACAO: TStringField;
    Label65: TLabel;
    SqlCdsEstoqueDetalheOSV_EMISSAO: TSQLTimeStampField;
    SqlCdsEstoqueDetalheCLI_RAZAO: TStringField;
    CTotalProd: TCurrencyEdit;
    SqlCdsVar: TSQLClientDataSet;
    SqlCdsEstoqueDetalhePED_CODIGO: TStringField;
    SqlCdsVarPRF_VAR1: TFMTBCdField;
    SqlCdsVarPRF_VAR2: TFMTBCdField;
    SqlCdsVarPRF_VAR3: TFMTBCdField;
    SqlCdsVarPRF_VAR4: TFMTBCdField;
    SqlCdsVarPRF_VAR5: TFMTBCdField;
    SqlCdsVarPRF_VAR6: TFMTBCdField;
    SqlCdsVarPRF_VAR7: TFMTBCdField;
    SqlCdsVarPRF_VAR8: TFMTBCdField;
    SqlCdsVarPED_SITUACAO: TStringField;
    SqlCdsVarOPV_ATESTOQUE: TStringField;
    SqlCdsVarPED_CODIGO: TStringField;
    DataSource1: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
    ppRelFichaTec: TppReport;
    PgCtrl_Produtos: TPageControl;
    TbS_Caract: TTabSheet;
    RichDoc: TRichEdit;
    BitBtn1: TBitBtn;
    TabSheet3: TTabSheet;
    Panel16: TPanel;
    GroupBox11: TGroupBox;
    Label41: TLabel;
    Label76: TLabel;
    Label78: TLabel;
    Label81: TLabel;
    DBECustoliquido: TDBEdit;
    DBECustoEntrada: TDBEdit;
    DBECustoMedio: TDBEdit;
    GroupBox12: TGroupBox;
    Label82: TLabel;
    Label83: TLabel;
    DBEmargemVenda: TDBEdit;
    DBEmargemOferta: TDBEdit;
    gbPrecos: TGroupBox;
    Label79: TLabel;
    Label85: TLabel;
    Label80: TLabel;
    DBEprecoVenda: TDBEdit;
    DBEprecoOferta: TDBEdit;
    DBComboBox3: TDBComboBox;
    GroupBox14: TGroupBox;
    Label84: TLabel;
    Label86: TLabel;
    DBDateEdit1: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    TabSheet1: TTabSheet;
    TbS_Fornec: TTabSheet;
    DBGrid1: TDBGrid;
    TbS_FatorConv: TTabSheet;
    Label17: TLabel;
    utilizar: TDBCheckBox;
    GroupBox1: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    Label27: TLabel;
    Label74: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    GroupBox6: TGroupBox;
    DBRadioGroup1: TDBRadioGroup;
    DBEdit51: TDBEdit;
    DBRadioGroup2: TDBRadioGroup;
    TbS_Variacoes: TTabSheet;
    Label28: TLabel;
    Label31: TLabel;
    Label1: TLabel;
    Label21: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DbeVar1: TDBEdit;
    DbeVar4: TDBEdit;
    DbeVar5: TDBEdit;
    DbeVar2: TDBEdit;
    DbeVar3: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DbeVar6: TDBEdit;
    DBEdit15: TDBEdit;
    DbeVar7: TDBEdit;
    DbeVAr8: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label77: TLabel;
    DBEcomissao: TDBEdit;
    DBECustoCredito: TDBEdit;
    tsPrecos: TTabSheet;
    Panel6: TPanel;
    GroupBox4: TGroupBox;
    LabTabelaVenda: TLabel;
    LabTabela2: TLabel;
    DBEdit20: TDBEdit;
    DBEdit50: TDBEdit;
    LabTabela3: TLabel;
    DBEdit52: TDBEdit;
    GroupBox5: TGroupBox;
    Label63: TLabel;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    Label66: TLabel;
    DBEdit58: TDBEdit;
    SqlRelProdutosPRD_DESCRI: TStringField;
    SqlItensGradePRD_DESCRI: TStringField;
    SqlCdsMaterialPRD_DESCRI: TStringField;
    SqlCdsEstoqueDetalhePRD_DESCRI: TStringField;
    CdsSaldos: TClientDataSet;
    CdsSaldosAMX_CODIGO_RET: TStringField;
    CdsSaldosAMX_DESCRI_RET: TStringField;
    CdsSaldosAMX_SALDO_RET: TFMTBCdField;
    DspSaldos: TDataSetProvider;
    SqlSaldos: TSQLDataSet;
    SqlSaldosAMX_CODIGO_RET: TStringField;
    SqlSaldosAMX_DESCRI_RET: TStringField;
    SqlSaldosAMX_SALDO_RET: TFMTBCdField;
    DsSaldos: TDataSource;
    DBRadClasse: TDBRadioGroup;
    SqlCdsProdutoPRD_DESCRI: TStringField;
    Panel18: TPanel;
    ImgProduto: TImage;
    TabGrade: TTabSheet;
    Label10: TLabel;
    Label11: TLabel;
    DBNavigator2: TDBNavigator;
    GroupBox8: TGroupBox;
    DBEdit21: TDBEdit;
    DBEdit59: TDBEdit;
    DBGrid3: TDBGrid;
    DsGrade: TDataSource;
    Label12: TLabel;
    dbedtPRG_INDICE: TDBEdit;
    CdsGrade: TClientDataSet;
    DspGrade: TDataSetProvider;
    SqlGrade: TSQLDataSet;
    SqlGradePRG_REGISTRO: TIntegerField;
    SqlGradeEMP_CODIGO: TStringField;
    SqlGradePRG_SALDO: TFMTBCdField;
    SqlGradePRG_DESCRICAO: TStringField;
    SqlGradePRG_PRECO: TFMTBCdField;
    CdsGradePRG_REGISTRO: TIntegerField;
    CdsGradeEMP_CODIGO: TStringField;
    CdsGradePRG_SALDO: TFMTBCdField;
    CdsGradePRG_DESCRICAO: TStringField;
    CdsGradePRG_PRECO: TFMTBCdField;
    GroupBox15: TGroupBox;
    Label26: TLabel;
    Label39: TLabel;
    Label64: TLabel;
    Label87: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit17: TDBEdit;
    GroupBox16: TGroupBox;
    Label40: TLabel;
    Label62: TLabel;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    Panel7: TPanel;
    Label16: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    DBeFor_codigo: TDBEdit;
    EdtFor: TEdit;
    DBEdit4: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    CdsSpedTipo: TSQLClientDataSet;
    CdsSpedTipoSPED_TIPREGISTRO: TIntegerField;
    CdsSpedTipoSPED_TIPCODIGO: TStringField;
    CdsSpedTipoSPED_TIPDESCRI: TStringField;
    CdsSpedTipoEMP_CODIGO: TStringField;
    dsSpedTipo: TDataSource;
    CdsSpedServico: TSQLClientDataSet;
    CdsSpedGenero: TSQLClientDataSet;
    dsSpedServico: TDataSource;
    dsSpedGenero: TDataSource;
    CdsSpedServicoSRV_REGISTRO: TIntegerField;
    CdsSpedServicoEMP_CODIGO: TStringField;
    CdsSpedServicoSRV_CODIGO: TStringField;
    CdsSpedServicoSRV_DESCRICAO: TStringField;
    CdsSpedServicoSRV_LANCAMENTO: TStringField;
    CdsSpedGeneroSPED_GENREGISTRO: TIntegerField;
    CdsSpedGeneroSPED_GENCODIGO: TStringField;
    CdsSpedGeneroSPED_GENDESCRI: TStringField;
    CdsSpedGeneroEMP_CODIGO: TStringField;
    TabSheet5: TTabSheet;
    dsProdutosReferencia: TDataSource;
    DBGrid4: TDBGrid;
    DBLookupComboBox2: TDBLookupComboBox;
    Label91: TLabel;
    Label92: TLabel;
    DBNavigator3: TDBNavigator;
    dsFornecedor: TDataSource;
    CdsFornecedor: TSQLClientDataSet;
    CdsFornecedorFOR_CODIGO: TStringField;
    CdsFornecedorFOR_RAZAO: TStringField;
    SQLProdutoCodigo: TSQLDataSet;
    SQLProdutoCodigoPRDC_REGISTRO: TIntegerField;
    SQLProdutoCodigoPRD_CODIGO: TStringField;
    SQLProdutoCodigoFOR_CODIGO: TStringField;
    SQLProdutoCodigoFOR_RAZAO: TStringField;
    DspProdutoCodigo: TDataSetProvider;
    CdsProdutosReferencia: TClientDataSet;
    CdsProdutosReferenciaPRDC_REGISTRO: TIntegerField;
    CdsProdutosReferenciaPRD_CODIGO: TStringField;
    CdsProdutosReferenciaFOR_CODIGO: TStringField;
    CdsProdutosReferenciaFOR_RAZAO: TStringField;
    btnAddImage: TSpeedButton;
    btnRemoveImage: TSpeedButton;
    OpenDialog1: TOpenDialog;
    SQLProdutoCodigoPRDC_REFERENCIA: TStringField;
    CdsProdutosReferenciaPRDC_REFERENCIA: TStringField;
    TabSheet4: TTabSheet;
    dbgrdCompras: TDBGrid;
    CdsCompras: TSQLClientDataSet;
    CdsComprasENF_EMISSAO: TDateField;
    CdsComprasENF_NOTANUMBER: TStringField;
    CdsComprasFOR_CODIGO: TStringField;
    CdsComprasFOR_RAZAO: TStringField;
    CdsComprasENF_PRECO: TFMTBCdField;
    CdsComprasCUSTO_ENTRADA: TFMTBCdField;
    CdsComprasENF_QTDE: TFMTBCdField;
    CdsComprasENF_IPIALIQ: TFMTBCdField;
    CdsComprasENF_VLSUBST: TFMTBCdField;
    CdsComprasENF_IT_VALFRETE: TFMTBCdField;
    CdsComprasENF_IT_VLDESP_ACES: TFMTBCdField;
    CdsComprasENF_ICMSALIQ: TFMTBCdField;
    CdsComprasENF_CFOP: TStringField;
    CdsComprasFOR_FONE: TStringField;
    CdsComprasFOR_CONTATO: TStringField;
    dsCompras: TDataSource;
    dsLote: TDataSource;
    dbedtPRDC_REFERENCIA: TDBEdit;
    CdsLotes: TClientDataSet;
    DspLotes: TDataSetProvider;
    QLotes: TSQLQuery;
    QLotesPRDL_REGISTRO: TIntegerField;
    QLotesEMP_CODIGO: TStringField;
    QLotesPRDL_DATA_FABRICACAO: TDateField;
    QLotesPRDL_DATA_VALIDADE: TDateField;
    QLotesPRDL_LOTE: TStringField;
    QLotesPRDL_PRECO_MAXIMO: TFMTBCdField;
    QLotesPRDL_SALDO: TFMTBCdField;
    QLotesPRD_CODIGO: TStringField;
    QLotesPRDL_CADASTRO: TDateField;
    QLotesPRDL_DESCRICAO: TStringField;
    SqlGradePRG_MEDIDA_1: TFMTBCdField;
    SqlGradePRG_MEDIDA_2: TFMTBCdField;
    SqlGradePRG_MEDIDA_3: TFMTBCdField;
    SqlGradePRG_REDUCAO_PERCENT: TFMTBCdField;
    SqlGradePRG_INDICE: TFMTBCdField;
    CdsGradePRG_MEDIDA_1: TFMTBCdField;
    CdsGradePRG_MEDIDA_2: TFMTBCdField;
    CdsGradePRG_MEDIDA_3: TFMTBCdField;
    CdsGradePRG_REDUCAO_PERCENT: TFMTBCdField;
    CdsGradePRG_INDICE: TFMTBCdField;
    Label100: TLabel;
    dbedtPRG_MEDIDA_2: TDBEdit;
    dbedtPRG_MEDIDA_3: TDBEdit;
    Label101: TLabel;
    dbedtPRG_MEDIDA_1: TDBEdit;
    Label102: TLabel;
    dbedtPRG_REDUCAO_PERCENT: TDBEdit;
    Label103: TLabel;
    CdsGradeCC_PRECO: TFloatField;
    Label104: TLabel;
    dbedtPRG_PRECO: TDBEdit;
    CdsGradeCC_UND: TStringField;
    CdsGradeCC_PRECO_BASE: TFloatField;
    CdsComprasENF_IT_DESCTO: TFMTBCdField;
    CdsComprasDescontoAplicado: TFloatField;
    Label105: TLabel;
    dbedtPRD_DTPCUSTO: TDBEdit;
    SQLProdutoCodigoPRDC_DESSCRICAO: TStringField;
    CdsProdutosReferenciaPRDC_DESSCRICAO: TStringField;
    dbedtPRDC_DESSCRICAO: TDBEdit;
    Label106: TLabel;
    SqlItensGradePRD_REFER: TStringField;
    SqlItensGradePRD_REFER_ITENS: TStringField;
    SqlRelProdutosPRD_REFER: TStringField;
    SqlCdsProdutoPRD_REFER: TStringField;
    SqlCdsVarPRD_REFER: TStringField;
    SqlCdsMaterialPRD_REFER: TStringField;
    SqlCdsEstoqueDetalhePRD_REFER: TStringField;
    CdsRelItensPRD_REFER: TStringField;
    CdsRelItensPRD_REFER_ITENS: TStringField;
    Label107: TLabel;
    CbGrade: TComboBoxRw;
    SdCadastroGrade: TSpeedButton;
    Label108: TLabel;
    CurCustoFicha: TCurrencyEdit;
    Label110: TLabel;
    Label111: TLabel;
    DBEdit60: TDBEdit;
    tsVendas: TTabSheet;
    GroupBox18: TGroupBox;
    EditDataI: TDateEdit;
    EditDataF: TDateEdit;
    BitPesquisar: TBitBtn;
    BtnRelatorios: TBitBtn;
    GroupBox19: TGroupBox;
    DBGrid5: TDBGrid;
    CdsVendas: TSQLClientDataSet;
    CdsVendasNF_EMISSAO: TDateField;
    CdsVendasNF_NOTANUMBER: TStringField;
    CdsVendasNF_NUM_NFE: TIntegerField;
    CdsVendasNTP_CFOP: TIntegerField;
    CdsVendasPED_CODIGO: TStringField;
    CdsVendasCLI_CODIGO: TStringField;
    CdsVendasCLI_RAZAO: TStringField;
    CdsVendasNF_QTDE: TFMTBCdField;
    CdsVendasNF_PRECO: TFMTBCdField;
    CdsVendasTOTAL: TFMTBCdField;
    CdsVendasVALOR_IPI: TFMTBCdField;
    CdsVendasVALOR_ST: TFMTBCdField;
    CdsVendasTOTAL_COM_IMPOSTOS: TFMTBCdField;
    dsVendas: TDataSource;
    frxReport1: TfrxReport;
    frxdbdtstVendas: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    SqlGradePRD_CODIGO: TStringField;
    CdsGradePRD_CODIGO: TStringField;
    DBMemo1: TDBMemo;
    DsCodigoOriginal: TDataSource;
    CdsCodigoOriginal: TClientDataSet;
    DspCodigoOriginal: TDataSetProvider;
    PageControl2: TPageControl;
    TabSheet9: TTabSheet;
    TabSheet10: TTabSheet;
    TabSheet11: TTabSheet;
    JvDBComboBox1: TJvDBComboBox;
    Label93: TLabel;
    Label18: TLabel;
    DBePrd_minimo: TDBEdit;
    Label24: TLabel;
    DbePrd_Maximo: TDBEdit;
    GroupBox17: TGroupBox;
    GroupBox3: TGroupBox;
    Label88: TLabel;
    DBEdit23: TDBEdit;
    dblkcbbSPED_TIPCODIGO: TDBLookupComboBox;
    Label90: TLabel;
    DBEdit61: TDBEdit;
    dblkcbbSPED_GENCODIGO: TDBLookupComboBox;
    Label89: TLabel;
    DBEdit62: TDBEdit;
    dblkcbbSRV_REGISTRO: TDBLookupComboBox;
    Label34: TLabel;
    DbcLkPrd_IPI: TDBLookupComboBox;
    SpeedButton6: TSpeedButton;
    Label38: TLabel;
    DBEdit16: TDBEdit;
    DbePrd_ICMSubs: TDBEdit;
    DBE_SITRIBUT: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit22: TDBEdit;
    Label6: TLabel;
    Label3: TLabel;
    EdtPrd_Refer: TEdit;
    Bit_AlterarRef: TBitBtn;
    Bit_Equivalencia: TBitBtn;
    GroupBox2: TGroupBox;
    DBText1: TDBText;
    DBText2: TDBText;
    GroupBox21: TGroupBox;
    Label23: TLabel;
    DBEPRD_TIPO: TDBEdit;
    CbTipo: TSgDbLookupCombo;
    CbGrupo: TSgDbLookupCombo;
    DBEPRD_GRUPO: TDBEdit;
    Label22: TLabel;
    Label7: TLabel;
    DBEPRD_SEGMENTO: TDBEdit;
    CbSegm: TSgDbLookupCombo;
    GroupBox22: TGroupBox;
    Label30: TLabel;
    DbePrd_PesoLiq: TDBEdit;
    Label25: TLabel;
    DbePrd_PesoKg: TDBEdit;
    Label5: TLabel;
    DbePrd_embala: TDBEdit;
    Label9: TLabel;
    DbePrd_Garantia: TDBEdit;
    Label13: TLabel;
    DBEPRD_CODBAR: TDBEdit;
    GroupBox23: TGroupBox;
    dbchkProdutoAtivo: TDBCheckBox;
    dbchkPRD_GERENCIA_LOTE: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    Label109: TLabel;
    dbcbbPRD_UND_GRADE_CALCULO: TDBComboBox;
    TabSheet6: TTabSheet;
    GroupBox9: TGroupBox;
    GroupBox24: TGroupBox;
    DBGrid7: TDBGrid;
    FilenameArquivo: TFilenameEdit;
    Label29: TLabel;
    Label67: TLabel;
    EdDescricaoArquivo: TEdit;
    btnSalvarArquivo: TBitBtn;
    SqlArquivo: TSQLDataSet;
    DspArquivo: TDataSetProvider;
    CdsArquivo: TClientDataSet;
    dsArquivo: TDataSource;
    SqlArquivoARQ_REGISTRO: TIntegerField;
    SqlArquivoARQ_TIPO: TStringField;
    SqlArquivoARQ_TIPO_TABELA: TStringField;
    SqlArquivoARQ_REGISTRO_TABELA: TStringField;
    SqlArquivoARQ_ARQUIVO: TBlobField;
    SqlArquivoARQ_DESCRICAO: TStringField;
    SqlArquivoARQ_DATA: TDateField;
    CdsArquivoARQ_REGISTRO: TIntegerField;
    CdsArquivoARQ_TIPO: TStringField;
    CdsArquivoARQ_TIPO_TABELA: TStringField;
    CdsArquivoARQ_REGISTRO_TABELA: TStringField;
    CdsArquivoARQ_ARQUIVO: TBlobField;
    CdsArquivoARQ_DESCRICAO: TStringField;
    CdsArquivoARQ_DATA: TDateField;
    SqlArquivoARQ_NOME_ARQUIVO: TStringField;
    CdsArquivoARQ_NOME_ARQUIVO: TStringField;
    pmArquivo: TPopupMenu;
    ExcluirArquivo1: TMenuItem;
    AbrirArquivo1: TMenuItem;
    N1: TMenuItem;
    btnCadastroEnderecamento: TSpeedButton;
    cbbEnderecamento: TComboBox;
    dbedtPRDE_REGISTRO: TDBEdit;
    Label68: TLabel;
    SqlCdsEnderecamento: TSQLClientDataSet;
    SqlCdsEnderecamentoPRDE_REGISTRO: TIntegerField;
    SqlCdsEnderecamentoEMP_CODIGO: TStringField;
    SqlCdsEnderecamentoPRDE_ENDERECO: TStringField;
    Label69: TLabel;
    DBCheckBox2: TDBCheckBox;
    DBEdit24: TSgDbLookupCombo;
    btnExcel: TBitBtn;
    mnuListar: TPopupMenu;
    Listagem1: TMenuItem;
    N2: TMenuItem;
    N2CdigosdoFornecedor1: TMenuItem;
    TabSheet2: TTabSheet;
    grCodCli: TJvDBGrid;
    SqlCodCli: TSQLQuery;
    SqlCodCliPRDCO_REGISTRO: TIntegerField;
    SqlCodCliPRD_CODIGO: TStringField;
    SqlCodCliPRDCO_CODIGO_ORIGINAL: TStringField;
    SqlCodCliCLI_CODIGO: TStringField;
    SqlCodCliPRDCO_DESCRICAO: TStringField;
    SqlCodCliCLI_RAZAO: TStringField;
    CdsCodigoOriginalPRDCO_REGISTRO: TIntegerField;
    CdsCodigoOriginalPRD_CODIGO: TStringField;
    CdsCodigoOriginalPRDCO_CODIGO_ORIGINAL: TStringField;
    CdsCodigoOriginalCLI_CODIGO: TStringField;
    CdsCodigoOriginalPRDCO_DESCRICAO: TStringField;
    CdsCodigoOriginalCLI_RAZAO: TStringField;
    BtnDuplicar: TBitBtn;
    JvTransparentForm1: TJvTransparentForm;
    QLotesPRDL_CUSTO: TFMTBCdField;
    QLotesPRDL_NFE: TStringField;
    QLotesFOR_CODIGO: TStringField;
    Lotes: TTabSheet;
    dbgrdLote: TDBGrid;
    Panel2: TPanel;
    DBNavigator4: TDBNavigator;
    Label75: TLabel;
    DBEdit25: TDBEdit;
    dbedtPRDL_PRECO_MAXIMO: TDBEdit;
    Label97: TLabel;
    Label96: TLabel;
    DBDateEdit4: TDBDateEdit;
    DBDateEdit3: TDBDateEdit;
    Label95: TLabel;
    Label98: TLabel;
    dbedtPRDL_DESCRICAO: TDBEdit;
    Label112: TLabel;
    DBEdit26: TDBEdit;
    sgDBLookupCombo1: TSgDbLookupCombo;
    Label70: TLabel;
    Label99: TLabel;
    DBDateEdit5: TDBDateEdit;
    dbedtPRDL_LOTE: TDBEdit;
    Label94: TLabel;
    QLotesFOR_RAZAO: TStringField;
    CdsLotesPRDL_REGISTRO: TIntegerField;
    CdsLotesEMP_CODIGO: TStringField;
    CdsLotesPRDL_DATA_FABRICACAO: TDateField;
    CdsLotesPRDL_DATA_VALIDADE: TDateField;
    CdsLotesPRDL_LOTE: TStringField;
    CdsLotesPRDL_PRECO_MAXIMO: TFMTBCdField;
    CdsLotesPRDL_SALDO: TFMTBCdField;
    CdsLotesPRD_CODIGO: TStringField;
    CdsLotesPRDL_CADASTRO: TDateField;
    CdsLotesPRDL_DESCRICAO: TStringField;
    CdsLotesPRDL_CUSTO: TFMTBCdField;
    CdsLotesPRDL_NFE: TStringField;
    CdsLotesFOR_CODIGO: TStringField;
    CdsLotesFOR_RAZAO: TStringField;
    qFor: TSQLQuery;
    qForFOR_CODIGO: TStringField;
    qForFOR_RAZAO: TStringField;
    Label490: TLabel;
    DBEdit33: TDBEdit;
    SgDbSearchCombo1: TSgDbSearchCombo;
    DbePrd_ICMS: TDBEdit;
    Label33: TLabel;
    qCstPC: TSQLQuery;
    TabSheet7: TTabSheet;
    DBCheckBox3: TDBCheckBox;
    Label113: TLabel;
    SqlProdutos: TSQLQuery;
    SqlProdutosPRD_CODIGO: TStringField;
    SqlProdutosPRD_DTCADASTRO: TDateField;
    SqlProdutosPRD_DESCRI_RES: TStringField;
    SqlProdutosPRD_UND: TStringField;
    SqlProdutosPRD_EMBALA: TStringField;
    SqlProdutosPGR_CODIGO: TStringField;
    SqlProdutosPTI_CODIGO: TStringField;
    SqlProdutosIPI_CODIGO: TStringField;
    SqlProdutosPRD_ALIQICM: TFMTBCdField;
    SqlProdutosLIN_CODIGO: TStringField;
    SqlProdutosPRD_CARACT: TMemoField;
    SqlProdutosPRD_MINIMO: TFMTBCdField;
    SqlProdutosPRD_PCUSTO: TFMTBCdField;
    SqlProdutosPRD_PVENDA: TFMTBCdField;
    SqlProdutosPRD_PMEDIO: TFMTBCdField;
    SqlProdutosPRD_PMATPRI: TFMTBCdField;
    SqlProdutosPRD_MAOOBRA: TFMTBCdField;
    SqlProdutosPRD_ESTOQUE: TFMTBCdField;
    SqlProdutosPRD_SAIDA: TFMTBCdField;
    SqlProdutosPRD_PENDENTE: TFMTBCdField;
    SqlProdutosFOR_CODIGO: TStringField;
    SqlProdutosPRD_ENTRADA: TFMTBCdField;
    SqlProdutosPRD_MAXIMO: TFMTBCdField;
    SqlProdutosPRD_TEMSUB: TStringField;
    SqlProdutosPRD_SITRIBUT: TStringField;
    SqlProdutosPRD_ICMSUBS: TFMTBCdField;
    SqlProdutosPRD_UTILCONV: TStringField;
    SqlProdutosPRD_UNDCOMP: TStringField;
    SqlProdutosPRD_PESOKG: TFMTBCdField;
    SqlProdutosPRD_FATORC: TFMTBCdField;
    SqlProdutosPRD_DIVMULT: TStringField;
    SqlProdutosEMP_CODIGO: TStringField;
    SqlProdutosPRD_DTPCUSTO: TSQLTimeStampField;
    SqlProdutosPRD_TABPRECO: TStringField;
    SqlProdutosPRD_GARANTIA: TStringField;
    SqlProdutosPRD_FAMILIA: TStringField;
    SqlProdutosPRD_CODBARRA: TStringField;
    SqlProdutosPRD_VAR1: TFMTBCdField;
    SqlProdutosPRD_VAR2: TFMTBCdField;
    SqlProdutosPRD_VAR3: TFMTBCdField;
    SqlProdutosPRD_VAR4: TFMTBCdField;
    SqlProdutosPRD_VAR5: TFMTBCdField;
    SqlProdutosPRD_VAR6: TFMTBCdField;
    SqlProdutosPRD_VAR7: TFMTBCdField;
    SqlProdutosPRD_VAR8: TFMTBCdField;
    SqlProdutosPRD_DCVAR1: TStringField;
    SqlProdutosPRD_DCVAR2: TStringField;
    SqlProdutosPRD_DCVAR3: TStringField;
    SqlProdutosPRD_DCVAR4: TStringField;
    SqlProdutosPRD_DCVAR5: TStringField;
    SqlProdutosPRD_DCVAR6: TStringField;
    SqlProdutosPRD_DCVAR7: TStringField;
    SqlProdutosPRD_DCVAR8: TStringField;
    SqlProdutosPRD_CURVA: TStringField;
    SqlProdutosPRD_CODMERCOSUL: TStringField;
    SqlProdutosPRD_DTPVENDA: TDateField;
    SqlProdutosAMX_CODIGO: TStringField;
    SqlProdutosPRD_GRADE: TStringField;
    SqlProdutosPRD_CUSTOCOMIPI: TFMTBCdField;
    SqlProdutosPRD_RESERVA: TFMTBCdField;
    SqlProdutosPRD_EMPENHO: TFMTBCdField;
    SqlProdutosPRD_SALDOPRODUCAO: TFMTBCdField;
    SqlProdutosPRD_SIMULACAO: TFMTBCdField;
    SqlProdutosPRD_COMISSAO: TFMTBCdField;
    SqlProdutosPRD_RESERVA_VAR1: TFMTBCdField;
    SqlProdutosPRD_RESERVA_VAR2: TFMTBCdField;
    SqlProdutosPRD_RESERVA_VAR3: TFMTBCdField;
    SqlProdutosPRD_RESERVA_VAR4: TFMTBCdField;
    SqlProdutosPRD_RESERVA_VAR5: TFMTBCdField;
    SqlProdutosPRD_RESERVA_VAR6: TFMTBCdField;
    SqlProdutosPRD_RESERVA_VAR7: TFMTBCdField;
    SqlProdutosPRD_RESERVA_VAR8: TFMTBCdField;
    SqlProdutosPRD_DT_ULT_COMPRA: TDateField;
    SqlProdutosPRD_VL_ULT_COMPRA: TFMTBCdField;
    SqlProdutosPRD_NF_ULT_COMPRA: TStringField;
    SqlProdutosFOR_CODIGO_ANT: TStringField;
    SqlProdutosPRD_DT_ULT_COMPRA_ANT: TDateField;
    SqlProdutosPRD_VL_ULT_COMPRA_ANT: TFMTBCdField;
    SqlProdutosPRD_NF_ULT_COMPRA_ANT: TStringField;
    SqlProdutosPRD_LOTE: TStringField;
    SqlProdutosPRD_FATOR_PROD: TFMTBCdField;
    SqlProdutosPRD_DIV_MULT_PROD: TStringField;
    SqlProdutosSTB_TRIBUTACAO: TStringField;
    SqlProdutosPRD_ORIGEM: TIntegerField;
    SqlProdutosPRD_CUSTO_CREDITO: TFMTBCdField;
    SqlProdutosPRD_MARGEMVENDA: TFMTBCdField;
    SqlProdutosPRD_MARGEMOFERTA: TFMTBCdField;
    SqlProdutosPRD_PRECOOFERTA: TFMTBCdField;
    SqlProdutosPRD_INICIOOFERTA: TDateField;
    SqlProdutosPRD_FIMOFERTA: TDateField;
    SqlProdutosPRD_PVENDA2: TFMTBCdField;
    SqlProdutosPRD_PVENDA3: TFMTBCdField;
    SqlProdutosPRD_PVENDA4: TFMTBCdField;
    SqlProdutosPRD_PVENDA5: TFMTBCdField;
    SqlProdutosPRD_PVENDA6: TFMTBCdField;
    SqlProdutosUSU_CODIGO_ATUAL_TAB: TIntegerField;
    SqlProdutosUSU_LOGIN_ATUAL_TAB: TStringField;
    SqlProdutosPRD_DATA_ATUAL_TAB: TSQLTimeStampField;
    SqlProdutosPRD_PESOLIQ: TFMTBCdField;
    SqlProdutosSPED_GENCODIGO: TStringField;
    SqlProdutosSPED_TIPCODIGO: TStringField;
    SqlProdutosPRD_UNICODIGO: TIntegerField;
    SqlProdutosPRD_PRODSERV: TStringField;
    SqlProdutosPRD_DESCRI: TStringField;
    SqlProdutosPRD_COMPL: TStringField;
    SqlProdutosPRD_CODORIGINAL: TStringField;
    SqlProdutosPRD_CUSTOFRETE: TFMTBCdField;
    SqlProdutosPRD_CUSTOIPI: TFMTBCdField;
    SqlProdutosPRD_CUSTOSUBTRIB: TFMTBCdField;
    SqlProdutosPRD_CUSTOADCIONAL: TFMTBCdField;
    SqlProdutosPRD_MGDESPFIXAS: TFMTBCdField;
    SqlProdutosPRD_INDICESOBMARGEM: TFMTBCdField;
    SqlProdutosSRV_REGISTRO: TIntegerField;
    SqlProdutosPRD_FOTO: TBlobField;
    SqlProdutosPRD_STATUS: TStringField;
    SqlProdutosPRD_GERENCIA_LOTE: TStringField;
    SqlProdutosPRD_REFER: TStringField;
    SqlProdutosPRD_UND_GRADE_CALCULO: TStringField;
    SqlProdutosPRD_GRADE_OBRIGATORIO: TStringField;
    SqlProdutosPRDE_REGISTRO: TIntegerField;
    SqlProdutosCEST_COD: TStringField;
    SqlProdutosCEST_REVISAR: TStringField;
    SqlProdutosPRD_CSTPISCOFINS: TStringField;
    DspProdutos: TDataSetProvider;
    CdsProdutos: TClientDataSet;
    CdsProdutosPRD_CODIGO: TStringField;
    CdsProdutosPRD_DESCRI_RES: TStringField;
    CdsProdutosPRD_UND: TStringField;
    CdsProdutosPRD_EMBALA: TStringField;
    CdsProdutosPGR_CODIGO: TStringField;
    CdsProdutosPTI_CODIGO: TStringField;
    CdsProdutosIPI_CODIGO: TStringField;
    CdsProdutosPRD_ALIQICM: TFMTBCdField;
    CdsProdutosPRD_CARACT: TMemoField;
    CdsProdutosPRD_MAXIMO: TFMTBCdField;
    CdsProdutosPRD_MINIMO: TFMTBCdField;
    CdsProdutosPRD_PCUSTO: TFMTBCdField;
    CdsProdutosPRD_PVENDA: TFMTBCdField;
    CdsProdutosPRD_PMEDIO: TFMTBCdField;
    CdsProdutosPRD_PMATPRI: TFMTBCdField;
    CdsProdutosPRD_MAOOBRA: TFMTBCdField;
    CdsProdutosPRD_ESTOQUE: TFMTBCdField;
    CdsProdutosPRD_SAIDA: TFMTBCdField;
    CdsProdutosPRD_PENDENTE: TFMTBCdField;
    CdsProdutosPRD_ENTRADA: TFMTBCdField;
    CdsProdutosFOR_CODIGO: TStringField;
    CdsProdutosPRD_TEMSUB: TStringField;
    CdsProdutosPRD_SITRIBUT: TStringField;
    CdsProdutosPRD_ICMSUBS: TFMTBCdField;
    CdsProdutosPRD_UTILCONV: TStringField;
    CdsProdutosPRD_UNDCOMP: TStringField;
    CdsProdutosPRD_PESOKG: TFMTBCdField;
    CdsProdutosPRD_FATORC: TFMTBCdField;
    CdsProdutosPRD_DIVMULT: TStringField;
    CdsProdutosEMP_CODIGO: TStringField;
    CdsProdutosPRD_DTPCUSTO: TSQLTimeStampField;
    CdsProdutosPRD_TABPRECO: TStringField;
    CdsProdutosPRD_GARANTIA: TStringField;
    CdsProdutosPRD_FAMILIA: TStringField;
    CdsProdutosPRD_VAR1: TFMTBCdField;
    CdsProdutosPRD_VAR2: TFMTBCdField;
    CdsProdutosPRD_VAR3: TFMTBCdField;
    CdsProdutosPRD_VAR4: TFMTBCdField;
    CdsProdutosPRD_VAR5: TFMTBCdField;
    CdsProdutosPRD_VAR6: TFMTBCdField;
    CdsProdutosPRD_VAR7: TFMTBCdField;
    CdsProdutosPRD_VAR8: TFMTBCdField;
    CdsProdutosPRD_DCVAR1: TStringField;
    CdsProdutosPRD_DCVAR2: TStringField;
    CdsProdutosPRD_DCVAR3: TStringField;
    CdsProdutosPRD_DCVAR4: TStringField;
    CdsProdutosPRD_DCVAR5: TStringField;
    CdsProdutosPRD_DCVAR6: TStringField;
    CdsProdutosPRD_DCVAR7: TStringField;
    CdsProdutosPRD_DCVAR8: TStringField;
    CdsProdutosPRD_FISICO_CC: TCurrencyField;
    CdsProdutosPRD_ANTECIPADO_CC: TCurrencyField;
    CdsProdutosPRD_DTCADASTRO: TDateField;
    CdsProdutosPRD_CURVA: TStringField;
    CdsProdutosPRD_CODMERCOSUL: TStringField;
    CdsProdutosPRD_DTPVENDA: TDateField;
    CdsProdutosAMX_CODIGO: TStringField;
    CdsProdutosPRD_CODBARRA: TStringField;
    CdsProdutosPRD_GRADE: TStringField;
    CdsProdutosLIN_CODIGO: TStringField;
    CdsProdutosPRD_CUSTOCOMIPI: TFMTBCdField;
    CdsProdutosPRD_RESERVA: TFMTBCdField;
    CdsProdutosPRD_EMPENHO: TFMTBCdField;
    CdsProdutosPRD_SALDOPRODUCAO: TFMTBCdField;
    CdsProdutosPRD_COMISSAO: TFMTBCdField;
    CdsProdutosPRD_RESERVA_VAR1: TFMTBCdField;
    CdsProdutosPRD_RESERVA_VAR2: TFMTBCdField;
    CdsProdutosPRD_RESERVA_VAR3: TFMTBCdField;
    CdsProdutosPRD_RESERVA_VAR4: TFMTBCdField;
    CdsProdutosPRD_RESERVA_VAR5: TFMTBCdField;
    CdsProdutosPRD_RESERVA_VAR6: TFMTBCdField;
    CdsProdutosPRD_RESERVA_VAR7: TFMTBCdField;
    CdsProdutosPRD_RESERVA_VAR8: TFMTBCdField;
    CdsProdutosPRD_SIMULACAO: TFMTBCdField;
    CdsProdutosPRD_DT_ULT_COMPRA: TDateField;
    CdsProdutosPRD_VL_ULT_COMPRA: TFMTBCdField;
    CdsProdutosPRD_NF_ULT_COMPRA: TStringField;
    CdsProdutosFOR_CODIGO_ANT: TStringField;
    CdsProdutosPRD_DT_ULT_COMPRA_ANT: TDateField;
    CdsProdutosPRD_VL_ULT_COMPRA_ANT: TFMTBCdField;
    CdsProdutosPRD_NF_ULT_COMPRA_ANT: TStringField;
    CdsProdutosPRD_LOTE: TStringField;
    CdsProdutosPRD_FATOR_PROD: TFMTBCdField;
    CdsProdutosPRD_DIV_MULT_PROD: TStringField;
    CdsProdutosSTB_TRIBUTACAO: TStringField;
    CdsProdutosPRD_ORIGEM: TIntegerField;
    CdsProdutosPRD_MARGEMVENDA: TFMTBCdField;
    CdsProdutosPRD_MARGEMOFERTA: TFMTBCdField;
    CdsProdutosPRD_PRECOOFERTA: TFMTBCdField;
    CdsProdutosPRD_INICIOOFERTA: TDateField;
    CdsProdutosPRD_FIMOFERTA: TDateField;
    CdsProdutosPRD_CUSTO_CREDITO: TFMTBCdField;
    CdsProdutosPRD_PVENDA2: TFMTBCdField;
    CdsProdutosPRD_PVENDA3: TFMTBCdField;
    CdsProdutosPRD_PVENDA4: TFMTBCdField;
    CdsProdutosPRD_PVENDA5: TFMTBCdField;
    CdsProdutosPRD_PVENDA6: TFMTBCdField;
    CdsProdutosUSU_CODIGO_ATUAL_TAB: TIntegerField;
    CdsProdutosUSU_LOGIN_ATUAL_TAB: TStringField;
    CdsProdutosPRD_DATA_ATUAL_TAB: TSQLTimeStampField;
    CdsProdutosPRD_PESOLIQ: TFMTBCdField;
    CdsProdutosSPED_GENCODIGO: TStringField;
    CdsProdutosSPED_TIPCODIGO: TStringField;
    CdsProdutosPRD_UNICODIGO: TIntegerField;
    CdsProdutosPRD_PRODSERV: TStringField;
    CdsProdutosPRD_DESCRI: TStringField;
    CdsProdutosPRD_COMPL: TStringField;
    CdsProdutosPRD_CODORIGINAL: TStringField;
    CdsProdutosPRD_CUSTOFRETE: TFMTBCdField;
    CdsProdutosPRD_CUSTOIPI: TFMTBCdField;
    CdsProdutosPRD_CUSTOSUBTRIB: TFMTBCdField;
    CdsProdutosPRD_CUSTOADCIONAL: TFMTBCdField;
    CdsProdutosPRD_MGDESPFIXAS: TFMTBCdField;
    CdsProdutosPRD_INDICESOBMARGEM: TFMTBCdField;
    CdsProdutosSRV_REGISTRO: TIntegerField;
    CdsProdutosPRD_FOTO: TBlobField;
    CdsProdutosPRD_STATUS: TStringField;
    CdsProdutosPRD_GERENCIA_LOTE: TStringField;
    CdsProdutosPRD_REFER: TStringField;
    CdsProdutosPRD_UND_GRADE_CALCULO: TStringField;
    CdsProdutosPRD_GRADE_OBRIGATORIO: TStringField;
    CdsProdutosPRDE_REGISTRO: TIntegerField;
    CdsProdutosCEST_COD: TStringField;
    CdsProdutosCEST_REVISAR: TStringField;
    CdsProdutosPRD_CSTPISCOFINS: TStringField;
    DsProdutos: TDataSource;
    DsPrdClassIPI: TDataSource;
    CdsPrdClassIPI: TClientDataSet;
    CdsPrdClassIPIIPI_CODIGO: TStringField;
    CdsPrdClassIPIIPI_ALIQ: TFMTBCdField;
    CdsPrdClassIPIEMP_CODIGO: TStringField;
    CdsPrdClassIPIIPI_APELIDO: TStringField;
    CdsPrdClassIPINCM_TEMCREDITO: TStringField;
    CdsPrdClassIPINCM_DESC_FAMILIA: TStringField;
    CdsPrdClassIPIIPI_VALOR_POR_ITEM: TFMTBCdField;
    CdsPrdClassIPIIPI_EX: TStringField;
    DspPrdClassIPI: TDataSetProvider;
    SqlPrdClassIPI: TSQLQuery;
    SqlPrdClassIPIIPI_CODIGO: TStringField;
    SqlPrdClassIPIIPI_ALIQ: TFMTBCdField;
    SqlPrdClassIPIEMP_CODIGO: TStringField;
    SqlPrdClassIPIIPI_APELIDO: TStringField;
    SqlPrdClassIPINCM_TEMCREDITO: TStringField;
    SqlPrdClassIPINCM_DESC_FAMILIA: TStringField;
    SqlPrdClassIPIIPI_VALOR_POR_ITEM: TFMTBCdField;
    SqlPrdClassIPIIPI_EX: TStringField;
    SqlProdutosprd_especifico: TStringField;
    SqlProdutosid_prd_especifico: TIntegerField;
    CdsProdutosPRD_ESPECIFICO: TStringField;
    CdsProdutosID_PRD_ESPECIFICO: TIntegerField;
    SqlProdutosPRD_ESPECIFICO_REDST: TSingleField;
    CdsProdutosPRD_ESPECIFICO_REDST: TSingleField;
    dsTipoProduto: TDataSource;
    edSigla: TDBEdit;
    qTipoProduto: TSQLQuery;
    qGrupo: TSQLQuery;
    qLinha: TSQLQuery;
    qCest: TSQLQuery;
    DBComboBox2: TDBComboBox;
    GroupBox13: TGroupBox;
    DBEdit30: TDBEdit;
    qItensFicha: TSQLQuery;
    DspItensFicha: TDataSetProvider;
    qItensFichaFTI_REGISTRO: TIntegerField;
    qItensFichaFTI_MODIFICADA: TSQLTimeStampField;
    qItensFichaFTI_UC: TFMTBCdField;
    qItensFichaFTI_UCMODIFIC: TFMTBCdField;
    qItensFichaFTI_MODE1: TStringField;
    qItensFichaFTI_MODE2: TStringField;
    qItensFichaFTI_MODE3: TStringField;
    qItensFichaFTI_MODE4: TStringField;
    qItensFichaFTI_MODE5: TStringField;
    qItensFichaFTI_MODE6: TStringField;
    qItensFichaFTI_MODE7: TStringField;
    qItensFichaFTI_MODE8: TStringField;
    qItensFichaFTI_PRECOCUSTO: TFMTBCdField;
    qItensFichaEMP_CODIGO: TStringField;
    qItensFichaPRD_UND: TStringField;
    qItensFichaPRD_GRADE: TStringField;
    qItensFichaPRD_PCUSTO: TFMTBCdField;
    qItensFichaFTI_NIVEL: TIntegerField;
    qItensFichaFTI_SEQUENCIA: TIntegerField;
    qItensFichaFTI_REFER_PAI: TStringField;
    qItensFichaFTI_TIPO_PI: TStringField;
    qItensFichaPTI_SIGLA: TStringField;
    qItensFichaPRD_DESCRI: TStringField;
    qItensFichaPRD_REFER: TStringField;
    qItensFichaPRD_REFER_ITENS: TStringField;
    qItensFichaPRG_REGISTRO: TIntegerField;
    qItensFichaPRG_DESCRICAO: TStringField;
    cxGrid2: TDBGrid;
    Bit_ExcluirMateria: TBitBtn;
    Bit_GravarMateria: TBitBtn;
    Bit_CancelarMateria: TBitBtn;
    CdsItensFichaFTI_REGISTRO: TIntegerField;
    CdsItensFichaPRD_REFER: TStringField;
    CdsItensFichaPRD_REFER_ITENS: TStringField;
    CdsItensFichaPRG_REGISTRO: TIntegerField;
    CdsItensFichaFTI_MODIFICADA: TSQLTimeStampField;
    CdsItensFichaFTI_UC: TFMTBCDField;
    CdsItensFichaFTI_UCMODIFIC: TFMTBCDField;
    CdsItensFichaFTI_MODE1: TStringField;
    CdsItensFichaFTI_MODE2: TStringField;
    CdsItensFichaFTI_MODE3: TStringField;
    CdsItensFichaFTI_MODE4: TStringField;
    CdsItensFichaFTI_MODE5: TStringField;
    CdsItensFichaFTI_MODE6: TStringField;
    CdsItensFichaFTI_MODE7: TStringField;
    CdsItensFichaFTI_MODE8: TStringField;
    CdsItensFichaFTI_PRECOCUSTO: TFMTBCDField;
    CdsItensFichaEMP_CODIGO: TStringField;
    CdsItensFichaFTI_NIVEL: TIntegerField;
    CdsItensFichaFTI_SEQUENCIA: TIntegerField;
    CdsItensFichaFTI_REFER_PAI: TStringField;
    CdsItensFichaFTI_TIPO_PI: TStringField;
    CdsItensFichaPRD_DESCRI: TStringField;
    CdsItensFichaPRD_UND: TStringField;
    CdsItensFichaPRD_GRADE: TStringField;
    CdsItensFichaPTI_SIGLA: TStringField;
    CdsItensFichaPRD_PCUSTO: TFMTBCDField;
    CdsItensFichaPRG_DESCRICAO: TStringField;
    DSSitTributaria: TDataSource;
    CDSSitTributaria: TClientDataSet;
    CDSSitTributariaSTB_CODIGO: TIntegerField;
    CDSSitTributariaEMP_CODIGO: TIntegerField;
    CDSSitTributariaSTB_DATA_CADASTRO: TDateField;
    CDSSitTributariaSTB_DATA_ATUALIZA: TDateField;
    CDSSitTributariaSTB_TRIBUTACAO: TStringField;
    CDSSitTributariaSTB_DESCRICAO: TStringField;
    CDSSitTributariaSTB_SUBSTITUICAO: TStringField;
    CDSSitTributariaSTB_SUBSTITUICAO_DENTRO_UF: TStringField;
    DSPSitTributaria: TDataSetProvider;
    SQLSitTributaria: TSQLQuery;
    SQLSitTributariaSTB_CODIGO: TIntegerField;
    SQLSitTributariaEMP_CODIGO: TIntegerField;
    SQLSitTributariaSTB_DATA_CADASTRO: TDateField;
    SQLSitTributariaSTB_DATA_ATUALIZA: TDateField;
    SQLSitTributariaSTB_TRIBUTACAO: TStringField;
    SQLSitTributariaSTB_DESCRICAO: TStringField;
    SQLSitTributariaSTB_SUBSTITUICAO: TStringField;
    SQLSitTributariaSTB_SUBSTITUICAO_DENTRO_UF: TStringField;
    N3: TMenuItem;
    VeraFichaTcnicaDesteItem1: TMenuItem;
    CdsItensFichaGrade_CC: TStringField;
    NumEdit2: TCurrencyEdit;
    Label114: TLabel;
    qItensFichaTOTALITEM: TFMTBCDField;
    CdsItensFichaTOTALITEM: TFMTBCDField;
    CdsRelItensPRD_PCUSTO: TCurrencyField;
    ppHeaderBand1: TppHeaderBand;
    ppShape4: TppShape;
    ppShape3: TppShape;
    LBL_00_EMPRESA: TppLabel;
    LBL_00_LTITULO1: TppLabel;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable12: TppSystemVariable;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel23: TppLabel;
    ppDBText23: TppDBText;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine16: TppLine;
    ppLine1: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine7: TppLine;
    ppLine14: TppLine;
    ppLine5: TppLine;
    ppLine9: TppLine;
    ppLabel25: TppLabel;
    ppShape15: TppShape;
    ppLabel26: TppLabel;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppLine2: TppLine;
    ppLine29: TppLine;
    ppLabel27: TppLabel;
    ppLine35: TppLine;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppLine36: TppLine;
    ppLabel28: TppLabel;
    ppLine37: TppLine;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppLine43: TppLine;
    ppLabel30: TppLabel;
    ppLabel2: TppLabel;
    ppLabel7: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText11: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLine6: TppLine;
    ppLine8: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine27: TppLine;
    ppLine34: TppLine;
    ppLine21: TppLine;
    ppDBText12: TppDBText;
    ppDBText38: TppDBText;
    ppLine44: TppLine;
    ppDBText40: TppDBText;
    ppLine32: TppLine;
    ppDBText5: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLine40: TppLine;
    raCodeModule1: TraCodeModule;
    daDataModule1: TdaDataModule;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    CdsRelItensTOTALITEM: TFMTBCDField;
    ppDBText4: TppDBText;
    ppLabel24: TppLabel;
    ppLabel8: TppLabel;
    CdsRelItensTOTAL: TCurrencyField;
    ppDBText3: TppDBText;
    ppLine13: TppLine;
    DBComboBox1: TcxDBComboBox;
    ppLine10: TppLine;
    lbComissao1: TLabel;
    lbComissao2: TLabel;
    lbComissao3: TLabel;
    lbVerba1: TLabel;
    lbVerba2: TLabel;
    lbVerba3: TLabel;
    LabTabela4: TLabel;
    LabTabela5: TLabel;
    LabTabela6: TLabel;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    lbComissao4: TLabel;
    lbComissao5: TLabel;
    lbComissao6: TLabel;
    lbVerba4: TLabel;
    lbVerba5: TLabel;
    lbVerba6: TLabel;
    SqlProdutosPRD_PERC_COMISSAO: TFMTBCDField;
    SqlProdutosPRD_PERC_VENDA: TFMTBCDField;
    SqlProdutosPRD_PERC_COMISSAO2: TFMTBCDField;
    SqlProdutosPRD_PERC_VENDA2: TFMTBCDField;
    SqlProdutosPRD_PERC_COMISSAO3: TFMTBCDField;
    SqlProdutosPRD_PERC_VENDA3: TFMTBCDField;
    SqlProdutosPRD_PERC_COMISSAO4: TFMTBCDField;
    SqlProdutosPRD_PERC_VENDA4: TFMTBCDField;
    CdsProdutosPRD_PERC_COMISSAO: TFMTBCDField;
    CdsProdutosPRD_PERC_VENDA: TFMTBCDField;
    CdsProdutosPRD_PERC_COMISSAO2: TFMTBCDField;
    CdsProdutosPRD_PERC_VENDA2: TFMTBCDField;
    CdsProdutosPRD_PERC_COMISSAO3: TFMTBCDField;
    CdsProdutosPRD_PERC_VENDA3: TFMTBCDField;
    CdsProdutosPRD_PERC_COMISSAO4: TFMTBCDField;
    CdsProdutosPRD_PERC_VENDA4: TFMTBCDField;
    SqlProdutosPRD_PERC_COMISSAO5: TFMTBCDField;
    SqlProdutosPRD_PERC_VENDA5: TFMTBCDField;
    SqlProdutosPRD_PERC_COMISSAO6: TFMTBCDField;
    SqlProdutosPRD_PERC_VENDA6: TFMTBCDField;
    CdsProdutosPRD_PERC_COMISSAO5: TFMTBCDField;
    CdsProdutosPRD_PERC_VENDA5: TFMTBCDField;
    CdsProdutosPRD_PERC_COMISSAO6: TFMTBCDField;
    CdsProdutosPRD_PERC_VENDA6: TFMTBCDField;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;

    procedure Bit_SairClick(Sender: tObject);
    procedure Bit_novoClick(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure DesabilitaBotoes;
    procedure DesabilitaBotoesFTC;
    procedure HabilitaBotoes;
    procedure HabilitaBotoesFTC;
    procedure verificaEdicao;
    procedure verificaEdicaoFTC;
    procedure CalculaCusto;

    procedure Bit_CancelarClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure DBNavigator1Click(Sender: tObject; Button: TNavigateBtn);
    procedure FormShow(Sender: tObject);
    procedure Bit_ListaClick(Sender: tObject);
    procedure Bit_RelatorioClick(Sender: tObject);
    procedure EdtPrd_ReferExit(Sender: tObject);
    procedure PgCtrl_ProdutosChange(Sender: tObject);
    procedure AtivaSqls;
    procedure DbeVar2Exit(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: tObject);
    procedure Panel7Enter(Sender: tObject);
    procedure DBEPRD_CODBARKeyPress(Sender: tObject; var Key: Char);
    procedure DBEPRD_CODBARExit(Sender: tObject);
    procedure DBEPRD_CODBAREnter(Sender: tObject);
    procedure PctrlProdutosChange(Sender: tObject);
    procedure Bit_FTC_NovoClick(Sender: tObject);
    procedure Bit_FTC_CopiarClick(Sender: tObject);
    procedure BIT_FTC_EXCLUIRClick(Sender: tObject);
    procedure BIT_FTC_GRAVARClick(Sender: tObject);
    procedure BIT_FTC_RELATORIOClick(Sender: tObject);
    procedure SpProdutoClick(Sender: tObject);
    procedure Bit_ExcluirMateriaClick(Sender: tObject);
    procedure Bit_GravarMateriaClick(Sender: tObject);
    procedure Bit_CancelarMateriaClick(Sender: tObject);
    procedure Bit_FTC_CancelarClick(Sender: tObject);
    procedure DBGridFichaTecnicaItemDblClick(Sender: tObject);
    procedure EdtReferChange(Sender: tObject);
    procedure EdtReferExit(Sender: tObject);
    procedure CdsItensFichaAfterScroll(DataSet: TDataSet);
    procedure DbeFTC_TUPExit(Sender: tObject);
    procedure AlterarItensdaFichaTecnica1Click(Sender: tObject);
    procedure ExcluirItensdaFichaTcnica1Click(Sender: tObject);
    procedure Bit_AlterarRefClick(Sender: tObject);
    procedure Bit_EquivalenciaClick(Sender: tObject);
    procedure DBGridFichaTecnicaItemKeyDown(Sender: tObject; var Key: Word;
      Shift: TShiftState);
    procedure DbDtFTC_CRIACAOKeyPress(Sender: tObject; var Key: Char);
    procedure SqlCdsEstoqueDetalheCalcFields(DataSet: TDataSet);
    procedure DBECustoliquidoEnter(Sender: tObject);
    procedure DBECustoliquidoExit(Sender: tObject);
    procedure DBEmargemVendaExit(Sender: tObject);
    procedure DBEprecoVendaExit(Sender: tObject);
    procedure DBEmargemOfertaExit(Sender: tObject);
    procedure DBEprecoOfertaExit(Sender: tObject);
    procedure CdsGradeBeforeInsert(DataSet: TDataSet);
    procedure CdsGradeAfterInsert(DataSet: TDataSet);
    procedure TabGradeShow(Sender: tObject);
    procedure CdsGradeAfterPost(DataSet: TDataSet);
    procedure CdsProdutosReferenciaAfterPost(DataSet: TDataSet);
    procedure CdsProdutosReferenciaBeforePost(DataSet: TDataSet);
    procedure CdsProdutosReferenciaBeforeInsert(DataSet: TDataSet);
    procedure CdsProdutosReferenciaAfterDelete(DataSet: TDataSet);
    procedure SpeedButton5Click(Sender: tObject);
    procedure JvDBComboBox1Change(Sender: tObject);
    procedure DbcLkPrd_IPIExit(Sender: tObject);
    procedure btnAddImageClick(Sender: tObject);
    procedure btnRemoveImageClick(Sender: tObject);
    procedure TabSheet4Show(Sender: tObject);
    procedure dbgrdLoteDrawColumnCell(Sender: tObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CdsLotesAfterDelete(DataSet: TDataSet);
    procedure CdsLotesAfterPost(DataSet: TDataSet);
    procedure CdsLotesBeforeInsert(DataSet: TDataSet);
    procedure CdsLotesBeforePost(DataSet: TDataSet);
    procedure SqlItensGradeAfterDelete(DataSet: TDataSet);
    procedure SqlItensGradeAfterPost(DataSet: TDataSet);
    procedure CdsGradeAfterDelete(DataSet: TDataSet);
    procedure dbedtPRG_MEDIDA_1Exit(Sender: tObject);
    procedure dbedtPRG_MEDIDA_2Exit(Sender: tObject);
    procedure dbedtPRG_MEDIDA_3Exit(Sender: tObject);
    procedure dbedtPRG_REDUCAO_PERCENTExit(Sender: tObject);
    procedure CdsGradeCalcFields(DataSet: TDataSet);
    procedure CdsComprasCalcFields(DataSet: TDataSet);
    procedure SdCadastroGradeClick(Sender: tObject);
    procedure EditDataIExit(Sender: tObject);
    procedure EditDataFExit(Sender: tObject);
    procedure BitPesquisarClick(Sender: tObject);
    procedure frxReport1GetValue(const VarName: String; var Value: Variant);
    procedure BtnRelatoriosClick(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure DBMemo1KeyPress(Sender: tObject; var Key: Char);
    procedure SpeedButton7Click(Sender: tObject);
    procedure SpeedButton8Click(Sender: tObject);
    procedure btnSalvarArquivoClick(Sender: tObject);
    procedure DBGrid7DblClick(Sender: tObject);
    procedure DBGrid7KeyPress(Sender: tObject; var Key: Char);
    procedure AbrirArquivo1Click(Sender: tObject);
    procedure ExcluirArquivo1Click(Sender: tObject);
    procedure cbbEnderecamentoExit(Sender: tObject);
    procedure cbbEnderecamentoClick(Sender: tObject);
    procedure dbedtPRDE_REGISTROExit(Sender: tObject);
    procedure btnCadastroEnderecamentoClick(Sender: tObject);
    procedure btnExcelClick(Sender: tObject);
    procedure Listagem1Click(Sender: tObject);
    procedure N2CdigosdoFornecedor1Click(Sender: tObject);
    procedure dAfterInsert(DataSet: TDataSet);
    procedure grCodCliEditButtonClick(Sender: tObject);
    procedure CdsCodigoOriginalBeforePost(DataSet: TDataSet);
    procedure CdsCodigoOriginalAfterPost(DataSet: TDataSet);
    procedure CdsCodigoOriginalBeforeDelete(DataSet: TDataSet);
    procedure CdsCodigoOriginalAfterDelete(DataSet: TDataSet);
    procedure CdsCodigoOriginalCLI_CODIGOValidate(Sender: TField);
    procedure BtnDuplicarClick(Sender: tObject);
    procedure CdsCodigoOriginalBeforeInsert(DataSet: TDataSet);
    procedure CdsCodigoOriginalBeforeEdit(DataSet: TDataSet);
    procedure sgDBLookupCombo1MenuPesquisaClick(Sender: tObject);
    procedure sgDBLookupCombo1Change(Sender: tObject);
    procedure CdsLotesPRDL_DATA_FABRICACAOGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure CdsProdutosAfterInsert(DataSet: TDataSet);
    procedure CdsProdutosBeforeEdit(DataSet: TDataSet);
    procedure CdsProdutosCalcFields(DataSet: TDataSet);
    procedure CdsProdutosAfterScroll(DataSet: TDataSet);
    procedure CbTipoMenuNovoClick(Sender: tObject);
    procedure CbTipoSelect(Sender: tObject);
    procedure CbGrupoMenuNovoClick(Sender: tObject);
    procedure CbSegmMenuNovoClick(Sender: tObject);
    procedure DBEdit24MenuPesquisaClick(Sender: tObject);
    procedure CdsProdutosID_PRD_ESPECIFICOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure CdsProdutosID_PRD_ESPECIFICOSetText(Sender: TField; const Text: string);
    procedure DBEPRD_TIPOExit(Sender: TObject);
    procedure DBEPRD_GRUPOExit(Sender: TObject);
    procedure DBEPRD_SEGMENTOExit(Sender: TObject);
    procedure CdsItensFichaAfterInsert(DataSet: TDataSet);
    procedure DbePrd_PesoLiqExit(Sender: TObject);
    procedure DBComboBox1Change(Sender: TObject);
    procedure CdsCodigoOriginalCLI_CODIGOSetText(Sender: TField; const Text: string);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure VeraFichaTcnicaDesteItem1Click(Sender: TObject);
    procedure CdsProdutosAfterPost(DataSet: TDataSet);
    procedure CdsProdutosAfterCancel(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure CdsProdutosNewRecord(DataSet: TDataSet);
  private
    bAlteraCustosAutomaticosProdutos: Boolean;
    wBtnAltRefer: string;
    wBtnEquivale: string;
    PathNewFicha: string;
    pVENDA_VER_CUSTO: string;
    wVariacoes: string;
    wCalcularPV: Integer;
    wIncluir, wIncluirItem: Boolean;
    sUltDtCpra,

      wPA, wPI, wSitTributaria: String;
    wCodBarr: String[13];
    procedure MostraDados;
    procedure BuscaRefer;
    procedure BuscaItens;
    procedure LimparDadosFTC;
    procedure HabilitaMateria;
    procedure DesabilitaMateria;
    procedure AlterarItensFTC;
    procedure ExcluirItensFTC;
    procedure BuscaMaterial;
    procedure MostrarGrade;
    procedure MostraEstoqueDetalhe;

    Function CamposObrigatorios: Boolean;
    procedure AtualizaProdutoGrade;
    procedure CalculaIndiceGrade;
    procedure RecalculaIndicesGrade;
    procedure CadastrarNovaGrade;
    procedure BuscaVendas;
    procedure AbrirArquivo;
    procedure ExcluirArquivo;
    procedure OpenClassIpi;
    procedure MostraFichaTecnica(pCond: Boolean);
    procedure OpenItensFicha;

  public
    wcodbarrant, sGradeDescricaoCadastrada: string;
    procedure BuscaProduto;
    procedure BotoesAcesso;
  end;

var
  FormProduto: TFormProduto;
  wRefAnterior: String;
  wcustoliquidoatual: Currency;



implementation

{$R *.DFM}

uses Uteis, Prd0006, GImpProd, Iniciodb, PesquisaClientesForm, For0002, ConsultaEstruturaForm,
  DmProdu, Ftc0003, Prd0012, Prd0013, Prd0004, Prd0003, Prd0002, Prd0005, uEntradaNotaXmlItem,
  uEntradaNotaXml, uPedidoWebAcao, uCadastroGrade, uProdutoDao, uProdutoEnderecamento, CestForm,
  EditCestForm, ExportProdutoExcelForm, ExportCodFornForm, TelaCopiaProdutoForm, ufrmpreviewrb, uPedidoItem, Nfs0001;

var
  WClicked: Boolean;

procedure TFormProduto.HabilitaBotoes;
begin
  Bit_novo.Enabled := True;
  Bit_Excluir.Enabled := True;
  Bit_Sair.Enabled := True;
  Bit_Relatorio.Enabled := True;
  Bit_Lista.Enabled := True;
  Bit_Gravar.Enabled := False;
  Bit_Cancelar.Enabled := False;
  DBNavigator1.Enabled := True;
  BotoesAcesso;
end;

procedure TFormProduto.DesabilitaBotoes;
begin
     BotoesAcesso;
     Bit_novo.Enabled := False;
     Bit_Excluir.Enabled := False;
     Bit_Sair.Enabled := False;
     Bit_Relatorio.Enabled := False;
     Bit_Lista.Enabled := False;
     Bit_Gravar.Enabled := True;
     Bit_Cancelar.Enabled := True;
     DBNavigator1.Enabled := False;

end;

procedure TFormProduto.BuscaProduto;
begin

  if not CdsProdutos.Locate('PRD_REFER', EdtPrd_Refer.Text, []) then
  begin
       Uteis.aviso('Código do Produto não encontrado!');
       EdtPrd_Refer.Text := CdsProdutosPRD_REFER.AsString;
  end
  else
  begin
       EdtPrd_Refer.Text := CdsProdutosPRD_REFER.AsString;
       MostraDados;
       if (DmProducao.CdsFichaTec.State in [dsBrowse]) then
          BuscaRefer;
       if PctrlProdutos.ActivePageIndex = 2 then
          MostraEstoqueDetalhe;
  end;
end;

procedure TFormProduto.FormShow(Sender: tObject);
begin
  inherited;

  WClicked := False;
  wIncluir := False;
  EdtPrd_Refer.Hint := 'Informe a referência para pesquisa. ' + #13 +    'Pressione Esc para limpar a tela da ficha !';
  PctrlProdutos.ActivePage := Tbs_Produtos;
  PgCtrl_Produtos.ActivePage := TabSheet3; { preços }   // TbS_Caract;
  //
  Bit_AlterarRef.Visible := (wBtnAltRefer = 'S');
  Bit_Equivalencia.Visible := (wBtnEquivale = 'S');
  //
  try
    cbbEnderecamento.Items.Clear;
    SqlCdsEnderecamento.Close;
    SqlCdsEnderecamento.CommandText :=SQLDEF('TABELAS', 'SELECT * FROM PRD0000_ENDERECAMENTO', '','PRDE_ENDERECO', '');
    SqlCdsEnderecamento.Open;

    cbbEnderecamento.Items.Add('');
    while not SqlCdsEnderecamento.Eof do
    begin
      cbbEnderecamento.Items.Add(SqlCdsEnderecamentoPRDE_ENDERECO.AsString);
      SqlCdsEnderecamento.Next;
    end;
    cbbEnderecamento.ItemIndex := 0;

    CdSSitTributaria.Open;
    CdsSpedTipo.Open;
    CdsSpedServico.Open;
    CdsSpedGenero.Open;
    CdsFornecedor.Open;

    CdsProdutos.Close;
    SqlProdutos.sql.Text := SQLDEF('PRODUTOS', 'SELECT * FROM PRD0000', '',
      'PRD_CODIGO', '');
    CdsProdutos.Open;

    // CdsProdutos.Last;
    if CdsProdutos.isEmpty Then
      DsProdutos.AutoEdit := False;

    { Busca no Parametros o Codigo do Produtos Acabado e Produto Intermediário }
    wSitTributaria := dbInicio.GetParametroSistema('PMT_SITRIBUTARIA');

    { Carrega o Nome das tabelas de preço }
    LabTabelaVenda.Caption := dbInicio.empresa.wPmt_Tabnome1;
    LabTabela2.Caption := dbInicio.empresa.wPmt_Tabnome2;
    LabTabela3.Caption := dbInicio.empresa.wPmt_Tabnome3;
    LabTabela4.Caption := dbInicio.empresa.wPmt_Tabnome4;
    LabTabela5.Caption := dbInicio.empresa.wPmt_Tabnome5;
    LabTabela6.Caption := dbInicio.empresa.wPmt_Tabnome6;


    OpenClassIpi;

    TbS_Variacoes.TabVisible := (wVariacoes = 'S');

    HabilitaBotoes;
    MostraDados;
    //DbePrd_Descri.SetFocus;

  except
    on E: EdatabaseError do
      Uteis.erro(Pchar('Erro ao abrir as tabelas !' + E.message));
  end;
  { 06/11/2009 jko }
  DBE_SITRIBUT.Visible := False;
  DbePrd_ICMSubs.Visible := False;

  // Parametros de alteração de Custo Manual
  if bAlteraCustosAutomaticosProdutos then
  begin
    DBECustoEntrada.Color := clWhite;
    DBECustoEntrada.ReadOnly := False;
    DBECustoEntrada.TabStop := True;

    DBECustoMedio.Color := clWhite;
    DBECustoMedio.ReadOnly := False;
    DBECustoMedio.TabStop := True;

    DBECustoCredito.Color := clWhite;
    DBECustoCredito.ReadOnly := False;
    DBECustoCredito.TabStop := True;
  end;

  if (Assigned(FrmPedidoWebAcao)) then
  begin
    EdtPrd_Refer.Text := FrmPedidoWebAcao.CdsIensPedidoReferencia.AsString;
    BuscaProduto;
    AtivaSqls;
  end
  else
    //
    if (Assigned(FrmEntradaNotaXmlItem)) then
    begin
         EdtPrd_Refer.Text := FrmEntradaNotaXmlItem.dbedtReferencia.Text;
         if EdtPrd_Refer.Text<>'' then
         begin
              BuscaProduto;
              AtivaSqls;
         end;
    end
    else

    if (Assigned(FrmEntradaNotaXml)) then
    begin
         EdtPrd_Refer.Text := FrmEntradaNotaXml.CdsItensReferencia.asString;
         if EdtPrd_Refer.Text<>'' then
         begin
              BuscaProduto;
              AtivaSqls;
         end;
    end;

    BuscaVendas;

end;

procedure TFormProduto.Bit_novoClick(Sender: tObject);
begin
  try
    Bit_AlterarRef.Visible := False;
    PgCtrl_Produtos.ActivePage := TabSheet3; { preços } // TbS_Caract;

    //CbTipo.Clear;
    //CbGrupo.Clear;
    //CbSegm.Clear;

    DsProdutos.AutoEdit := True;
    CdsProdutos.Insert;
    EdtPrd_codigo.Text := StrZero(CdsProdutosPRD_CODIGO.AsString, 5);
    EdtPrd_Refer.Text := FormataRefer( CdsProdutosPRD_CODIGO.AsString );
    DBE_SITRIBUT.Text := wSitTributaria;
    utilizar.Field.Value := False;
    DBEdit2.Field.Value := 0;
    CdsProdutosPRD_PRODSERV.AsString := 'P'; // P ou S
    CdsProdutosPRD_UTILCONV.AsString := 'N';
    CdsProdutosPRD_STATUS.AsString := 'A';
    CdsProdutosPRD_FATORC.AsString := '0';
    CdsProdutosPRD_DIVMULT.AsString := 'D';
    CdsProdutosPRD_ORIGEM.AsInteger := 0; // 0 ,1 ou 2
    CdsProdutosSTB_TRIBUTACAO.AsString := '00';
    CdsProdutosSPED_TIPCODIGO.AsString := '';
    CdsProdutosSPED_GENCODIGO.AsString := '';
    DesabilitaBotoes;
    uteis.HabilitaIncluir('CadastrosProdutos',DBInicio.Usuario.CODIGO,FormProduto);
    EdtPrd_Refer.SetFocus;

  except
    on E: EdatabaseError do
      Uteis.erro(Pchar('Erro ao inserir o registro !' + E.message));
  end;
end;

procedure TFormProduto.Bit_ExcluirClick(Sender: tObject);
begin
  if CdsProdutos.isEmpty Then
    Uteis.aviso('Não existe produto cadastrado !')
  else
  begin

    if BuscaUmDadoSqlAsInteger('SELECT count(*) FROM PED_IT01 Where PRD_REFER = ' +qStr(EdtPrd_Refer.Text)) > 0 then
    begin
         Uteis.aviso(Pchar('Produto não pode ser excluido.' + #13 +'Existe pedidos que utilizá-o.'));
         EdtPrd_codigo.Text := CdsProdutosPRD_CODIGO.AsString;
         EdtPrd_Refer.Text := CdsProdutosPRD_REFER.AsString;
    end
    else if Uteis.confirmacao('Tem certeza que deseja Excluir este produto ?') = Mryes
    then
    begin
        ExecSql('DELETE FROM PRD0000_CODIGO WHERE PRD_CODIGO = ' + qStr(CdsProdutosPRD_CODIGO.AsString));
        CdsProdutos.Delete;
        CdsProdutos.ApplyUpdates(0);
        EdtPrd_codigo.Text := CdsProdutosPRD_CODIGO.AsString;
        EdtPrd_Refer.Text := CdsProdutosPRD_REFER.AsString;
        if CdsProdutos.isEmpty then
          ExecSql('Update SYSFILE SET SYS_PRODUTO = ' + qStr('0'));
    end;

    EdtPrd_Refer.SetFocus;
    MostraDados;
  end;

end;

procedure TFormProduto.Bit_GravarClick(Sender: tObject);
VAR sReferTmp: String;
begin
     if CdsCodigoOriginal.State <> dsBrowse then
     begin
          CdsCodigoOriginal.Post;
          CdsCodigoOriginal.ApplyUpdates(0);
     end;

     if CamposObrigatorios then
     begin
          if (CdsProdutos.State = dsBrowse) then
             HabilitaBotoes
          Else
          Begin
                if (Trim(CdsProdutosIPI_CODIGO.AsString) <> '') then
                   CdsProdutosSPED_GENCODIGO.AsString := COPY(Trim(CdsProdutosIPI_CODIGO.AsString), 1, 2);

                CdsProdutosPRD_CODIGO.AsString := StrZero( CdsProdutosPRD_CODIGO.AsString,CdsProdutosPRD_CODIGO.Size );
                CdsProdutosPRD_DTCADASTRO.AsDateTime := date;
                CdsProdutosEMP_CODIGO.AsString := dbInicio.empresa.EMP_CODIGO;
                CdsProdutosPRD_REFER.AsString := EdtPrd_Refer.Text;
                if (CdsProdutosPRD_UND_GRADE_CALCULO.AsString = '') then
                   CdsProdutosPRD_UND_GRADE_CALCULO.AsString :=CdsProdutosPRD_UND.AsString;

                if CdsProdutosPRD_DCVAR1.IsNull = True then
                   CdsProdutosPRD_DCVAR1.AsString := 'X';
                sReferTmp := CdsProdutosPRD_REFER.AsString;

                CdsProdutos.Post;
                CdsProdutos.ApplyUpdates(-1);


                DsProdutos.AutoEdit := True;
                CdsProdutos.refresh;

                CdsProdutos.Locate('PRD_REFER', sReferTmp, []);
                RecalculaIndicesGrade;
                HabilitaBotoes;
                MostraDados;

                Bit_AlterarRef.Visible := (wBtnAltRefer = 'S');

                PctrlProdutos.ActivePage := Tbs_Produtos;
                PgCtrl_Produtos.ActivePage := TabSheet3; { preços }    // TbS_Caract;
                DbePrd_Descri.SetFocus;

          End;

     end;

end;

procedure TFormProduto.Bit_CancelarClick(Sender: tObject);
begin

  CdsProdutos.Cancel;
  { Protege tb vazia }
  if CdsProdutos.isEmpty Then
  begin
    DsProdutos.AutoEdit := False;
    EdtPrd_Refer.Enabled := False;
  end;

  { volta código refer na tela }
  HabilitaBotoes;
  MostraDados;
  PctrlProdutos.ActivePage := Tbs_Produtos;
  PgCtrl_Produtos.ActivePage := TabSheet3; { preços }  // TbS_Caract;
  if (PctrlProdutos.ActivePageIndex = 1) then // cad.produtos
    DbePrd_Descri.SetFocus;
  if (PctrlProdutos.ActivePageIndex = 0) then // ficha técnica
    DbDtFTC_CRIACAO.SetFocus;
end;

procedure TFormProduto.Bit_SairClick(Sender: tObject);
begin
     Close;
end;

procedure TFormProduto.DBNavigator1Click(Sender: tObject; Button: TNavigateBtn);
begin
  MostraDados;
  if PgCtrl_Produtos.ActivePage.PageIndex = 1 then // cadastro produto
    AtivaSqls;
end;

procedure TFormProduto.FormCloseQuery(Sender: tObject; var CanClose: Boolean);
begin
  inherited;
  verificaEdicao; // procedure local
end;

procedure TFormProduto.Bit_ListaClick(Sender: tObject);
begin
     FormProdutoGrid := TFormProdutoGrid.Create(Application);
     try
        FormProdutoGrid.TAG := 4;
        FormProdutoGrid.ShowModal;
        if FormProdutoGrid.ModalResult = mrOk then
        begin
             EdtPrd_Refer.Text := FormProdutoGrid.ReferRetorno;
             BuscaProduto;
        end;
     finally
            FreeAndNil(FormProdutoGrid);
     end;
end;

procedure TFormProduto.Bit_RelatorioClick(Sender: tObject);
begin
  FormGImpProduto := TFormGImpProduto.Create(Application);
  try
    FormGImpProduto.ShowModal;
  finally
    FreeAndNil(FormGImpProduto);
  end;
end;

procedure TFormProduto.EdtPrd_ReferExit(Sender: tObject);
begin
     EdtPrd_Refer.Text := FormataRefer ( EdtPrd_Refer.Text );
     if (ActiveControl.Name = 'Bit_Cancelar') then
        Bit_Cancelar.Click
     Else
     if (CdsProdutos.State in [dsBrowse]) and not(CdsProdutos.isEmpty) then
     begin
          BuscaProduto;
          AtivaSqls;
     end
     else
     if CdsProdutos.State in [dsinsert, dsEdit] then
        if BuscaUmDadoSqlAsInteger('Select count(*) from PRD0000 where PRD_REFER = '+ qStr(EdtPrd_Refer.Text) + ConcatSE(' and ',dbInicio.ExclusivoSql('PRODUTOS'))) > 0 THEN
        begin
             Uteis.aviso('Este produto já existe...');
             EdtPrd_Refer.Text := '';
             EdtPrd_Refer.SetFocus;
        end;

end;

procedure TFormProduto.AtivaSqls;
begin
    CdsFornecedorAux.Close;
    if (not CdsProdutos.isEmpty) then
    begin
         CdsFornecedorAux.CommandText := SQLDEF('FORNECEDORES', 'SELECT ' + 'T1.FOR_CODIGO, ' + 'T1.FOR_RAZAO, ' + 'T1.FOR_CONTATO, ' +
                                                              'T1.FOR_FONCONT, ' + 'T1.FOR_FONE, ' + 'T1.FOR_EMAIL, ' +
                                                              'T1.FOR_PRAZOVENDAS ' + 'FROM FOR0000 T1 ',
                                                              'WHERE T1.FOR_CODIGO in (SELECT T1.for_codigo FROM enf_it01 T1 WHERE T1.prd_refer = '
                                                              + qStr(CdsProdutosPRD_REFER.AsString) +
                                                              ' GROUP BY T1.for_codigo) or T1.FOR_CODIGO in (select t2.for_codigo from PRD0000_CODIGO t2 where t2.prd_codigo = '
                                                              + qStr(CdsProdutosPRD_CODIGO.AsString) + ')', 'FOR_CODIGO', '');;
         CdsFornecedorAux.Open;
    end;
end;

procedure TFormProduto.PgCtrl_ProdutosChange(Sender: tObject);
begin
  if PgCtrl_Produtos.ActivePage.PageIndex = 1 then // produtos
    AtivaSqls;
end;

procedure TFormProduto.PopupMenu1Popup(Sender: TObject);
begin
  inherited;
  VeraFichaTcnicaDesteItem1.Enabled:=CdsItensFichaPTI_SIGLA.AsString='PI';

end;

procedure TFormProduto.DbeVar2Exit(Sender: tObject);
begin
  DbeVar3.SetFocus;
end;

procedure TFormProduto.FormClose(Sender: tObject; var Action: TCloseAction);
begin
  inherited;
  CdSSitTributaria.Close;
  DmProducao.CdsFichaTec.Close;
  CdsItensFicha.Close;

  if (not assigned(FrmPedidoItem)) and (not assigned(FrmEntradaNotaXmlItem)) and (not assigned(FormNfEntrada)) and (not assigned(FormNfEntrada)) then
     Action := CaFree;
end;

procedure TFormProduto.BitBtn1Click(Sender: tObject);
begin
  RichDoc.Clear;
  if not FileExists(PathNewFicha + '\' + EdtPrd_Refer.Text + '.Rtf') then
    CopyFile(Pchar(Trim(PathNewFicha) + '\' + 'Default.Rtf'),
      Pchar(Trim(PathNewFicha) + '\' + EdtPrd_Refer.Text + '.Rtf'), False);
  WinExec(PAnsiChar('RWEDITOR.EXE "' + Trim(PathNewFicha) + '\' +
    EdtPrd_Refer.Text + '.Rtf' + '"'), sw_show);
end;

procedure TFormProduto.Panel7Enter(Sender: tObject);
begin
  CdsFornecedorAux.Close;
  CdsFornecedorAux.CommandText := '';
  CdsFornecedorAux.Open;
end;

procedure TFormProduto.DBEPRD_CODBARKeyPress(Sender: tObject; var Key: Char);
begin
  if not(Key in ['0' .. '9', #8]) then
    Key := #0;
end;

procedure TFormProduto.DBEPRD_GRUPOExit(Sender: TObject);
begin
  inherited;
  cbGrupo.IdRetorno:=StrZero( DBEPRD_grupo.Text, 3 );
  if cbGrupo.IdRetorno='' then
     GeraException ('Grupo não localizado com este código!');

End;

procedure TFormProduto.DbePrd_PesoLiqExit(Sender: TObject);
begin
  inherited;
   if CdsProdutos.state <> dsBrowse then
      if (CdsProdutosPRD_PESOKg.isNull) OR (CdsProdutosPRD_PESOKg.AsFloat=0) then
         CdsProdutosPRD_PESOKg.AsFloat:=StrToFloatDef(DbePrd_PesoLiq.Text,0) ;
end;

procedure TFormProduto.DBEPRD_SEGMENTOExit(Sender: TObject);
begin
  inherited;
  cbSegm.IdRetorno := StrZero( DBEPRD_segmento.Text, 3 );
  if cbSegm.IdRetorno='' then
     GeraException ('Marca/Linha não localizada com este código!');
end;

procedure TFormProduto.DBEPRD_TIPOExit(Sender: TObject);
begin
     inherited;
     cbTipo.IdRetorno:=StrZero( DBEPRD_TIPO.Text, 3 );
     if cbTipo.IdRetorno='' then
        GeraException ('Tipo não localizado com este código!');
end;

procedure TFormProduto.DBEPRD_CODBARExit(Sender: tObject);
VAR
  lref: String;
begin
  if (CdsProdutos.State in [dsinsert]) or
    (wCodBarr <> DBEPRD_CODBAR.Field.AsString) then
    if (DBEPRD_CODBAR.Field.Text <> '') then
    begin
      lref := buscaumdadosqlasString
        ('SELECT PRD_REFER from PRD0000 where PRD_CODBARRA = ' +
        qStr(DBEPRD_CODBAR.Text) + ConcatSE(' and ',
        dbInicio.ExclusivoSql('PRODUTOS')));
      if lref <> '' then
      begin
        Uteis.aviso(Pchar('Atenção o Produto de Referência ' + lref +
          ' já está utilizando este código de barras!'));
        DBEPRD_CODBAR.Text := '';
        DBEPRD_CODBAR.SetFocus;
      end;
    end;
end;

procedure TFormProduto.MostraDados;
var
  NmFile: String;
begin
     EdtPrd_codigo.Text := CdsProdutosPRD_CODIGO.AsString;
     AtivaSqls;

     CdsSaldos.DisableControls;
     CdsSaldos.Close;
     if (not CdsProdutos.isEmpty) then
     begin
          CdsSaldos.CommandText := 'SELECT * FROM pCd_kardex_saldo(' +QStr(dbInicio.empresa.EMP_CODIGO) + ',' +qStr(CdsProdutosPRD_CODIGO.AsString) + ',null)';
          CdsSaldos.Open;
     end;
     CdsSaldos.EnableControls;

     CdsProdutosReferencia.Close;
     if (not CdsProdutos.isEmpty) then
     begin
          CdsProdutosReferencia.CommandText := 'SELECT T1.*, T2.FOR_RAZAO FROM PRD0000_CODIGO T1 JOIN FOR0000 T2 ON (T2.FOR_CODIGO = T1.FOR_CODIGO) WHERE T1.PRD_CODIGO = '+
                                                qStr(CdsProdutosPRD_CODIGO.AsString) + ' ORDER BY T1.PRDC_REFERENCIA';
          CdsProdutosReferencia.Open;
     end;

     CdsLotes.Close;
     if (not CdsProdutos.isEmpty) then
     begin
        QLotes.sql.Clear;
        QLotes.sql.Add('select A.*, B.for_razao');
        QLotes.sql.Add('from PRD_LOTE A');
        QLotes.sql.Add('    LEFT JOIN for0000 B ON B.for_codigo=A.for_codigo');
        QLotes.sql.Add('WHERE A.prd_CODIGO = ' +qStr(CdsProdutosPRD_CODIGO.AsString));
        QLotes.sql.Add('ORDER BY A.PRDL_DATA_VALIDADE');
        CdsLotes.Open;
     end;

     CdsCodigoOriginal.Close;
     if (not CdsProdutos.isEmpty) then
     begin
          CdsCodigoOriginal.Close;
          SqlCodCli.sql.Clear;
          SqlCodCli.sql.Add('SELECT A.*, B.cli_razao');
          SqlCodCli.sql.Add('FROM PRD_CODIGOORIGINAL A');
          SqlCodCli.sql.Add('    LEFT JOIN cli0000 B ON B.cli_codigo=A.cli_codigo');
          SqlCodCli.sql.Add('where A.PRD_CODIGO = ' +
          qStr(CdsProdutosPRD_CODIGO.AsString));
          SqlCodCli.sql.Add('ORDER BY A.CLI_CODIGO');
          CdsCodigoOriginal.Open;
     end;

     EdtPrd_Refer.Text := CdsProdutosPRD_REFER.AsString;
     MostraFichaTecnica(not DBEPRD_TIPO.Field.IsNull);

     if (dbedtPRDE_REGISTRO.Text = '') then
     begin
          cbbEnderecamento.ItemIndex := 0;
          cbbEnderecamento.Text := '';
          dbedtPRDE_REGISTRO.Text := '';
     end
     else
     if SqlCdsEnderecamento.Locate('PRDE_REGISTRO', dbedtPRDE_REGISTRO.Text,[])  then
        cbbEnderecamento.Text := SqlCdsEnderecamentoPRDE_ENDERECO.AsString
     else
     begin
        cbbEnderecamento.ItemIndex := 0;
        cbbEnderecamento.Text := '';
        dbedtPRDE_REGISTRO.Text := '';
     end;

     SqlCdsfor.Close;
     SqlCdsfor.CommandText := 'Select FOR_CODIGO,FOR_RAZAO from FOR0000 where FOR_CODIGO = '+qstr(DBeFor_codigo.Field.Text);
     SqlCdsfor.Open;
     if not SqlCdsfor.isEmpty then
        EdtFor.Text := SqlCdsforFOR_RAZAO.AsString
     else
         EdtFor.Text := ''  ;

     Le_Imagem_JPEG_toBMP(CdsProdutosPRD_FOTO, ImgProduto);

     NmFile := Trim(PathNewFicha) + '\' + CdsProdutosPRD_REFER.AsString + '.Rtf';
     if FileExists(NmFile) then
        RichDoc.Lines.LoadFromFile(NmFile)
     else
        RichDoc.Clear;

     AtualizaProdutoGrade;

     if (PctrlProdutos.ActivePageIndex = 4) then
        TabSheet4Show(Self);

     JvDBComboBox1.Hint := JvDBComboBox1.Text;
     JvDBComboBox1.ShowHint := true ;

     BuscaVendas;

     CdsArquivo.Close;
     if (not CdsProdutos.isEmpty) then
     begin
          CdsArquivo.CommandText := 'SELECT * FROM ARQUIVO where ARQ_REGISTRO_TABELA = ' +qStr(CdsProdutosPRD_CODIGO.AsString) +
                                    ' and ARQ_TIPO_TABELA = ''PRD'' ORDER BY ARQ_DESCRICAO ';
          CdsArquivo.Open;
     end;

end;

procedure TFormProduto.MostraFichaTecnica(pCond: Boolean);
begin
  if (edSigla.Text = 'PA') or (edSigla.Text = 'PI') or (edSigla.Text = 'KT')
  then
  begin
    Tbs_FichaTec.TabVisible := pCond;
    Tbs_Detalhe.TabVisible := pCond;
  end
  else
  begin
    Tbs_FichaTec.TabVisible := False;
    Tbs_Detalhe.TabVisible := False;
  end;
end;


procedure TFormProduto.CbTipoMenuNovoClick(Sender: tObject);
begin
     inherited;

     if not assigned(FormProdTipo) then
      begin
      FormProdTipo := TFormProdTipo.Create(Application);
      FormProdTipo.BotoesAcesso;
      //try
      if (MDIChildCount > 1) then
             SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)

      //finally
             //FreeAndNil( FormProdTipo );
      //end;
      end;
      FormProdTipo.Show;

end;

procedure TFormProduto.CbTipoSelect(Sender: tObject);
begin
    if CbTipo.idRetorno <> '' then
    begin

         MostraFichaTecnica(True);
    end;
end;

procedure TFormProduto.CbGrupoMenuNovoClick(Sender: tObject);
begin
  inherited;

  if not assigned(FormProdGrupo) then
      begin
      //try
        FormProdGrupo := TFormProdGrupo.Create(Application);
        FormProdGrupo.BotoesAcesso;
      if (MDIChildCount > 1) then
             SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)

      //finally
        //FormProdGrupo.Destroy;
        //FormProdGrupo := nil;
      //end;
      end;
      FormProdGrupo.Show;


end;

procedure TFormProduto.CbSegmMenuNovoClick(Sender: tObject);
begin
  inherited;

  if not assigned(FormPrdLinha) then
      begin
      FormPrdLinha := TFormPrdLinha.Create(Application);
      FormPrdLinha.BotoesAcesso;
      //try
      if (MDIChildCount > 1) then
             SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)

      //finally
        //FreeAndNil(FormPrdLinha);
      //end;
      end;
      FormPrdLinha.Show;

end;

procedure TFormProduto.DBEPRD_CODBAREnter(Sender: tObject);
begin
  wCodBarr := DBEPRD_CODBAR.Field.Text;
end;

procedure TFormProduto.PctrlProdutosChange(Sender: tObject);
begin
  if (PctrlProdutos.ActivePageIndex = 0) then // ficha tecnica
  begin
    verificaEdicao;
    BuscaItens;
    try
      if EdtPrd_Refer.Text <> '' then
      begin
        EdtRefer.Color := clWindow;
        HabilitaBotoesFTC;
        DesabilitaMateria;
        DBNavigator1.Enabled := False;
        EdtDescricao.Text := DbePrd_Descri.Text;

        if (CdsItensFicha.isEmpty ) then
          Bit_FTC_Novo.Click
        else
          BuscaProduto;
      end;
    except
      on E: EdatabaseError do
        Uteis.erro(Pchar('Erro ao abrir a tabela de Parametros !' + E.message));
    end;

  end
  else
  begin
    if (PctrlProdutos.ActivePageIndex = 2) then // estoque
    begin
      MostraEstoqueDetalhe;
    end;
    if (PctrlProdutos.ActivePageIndex = 1) then // produtos
    begin
      verificaEdicao;
      if DBNavigator1.Enabled = False then
        DBNavigator1.Enabled := true;
    end;

  end;
end;

procedure TFormProduto.BuscaRefer;
var
  sEmpresa: String;
begin
  sEmpresa := '';
  if dbInicio.Exclusivo('PRODUTOS') then
    sEmpresa := ' and F1.emp_codigo = P1.emp_codigo ';

  wSql1 := 'select F1.*,P2.PTI_SIGLA,P1.PRD_DESCRI,P1.PRD_DCVAR1,P1.PRD_DCVAR2,P1.PRD_DCVAR3,P1.PRD_DCVAR4,P1.PRD_DCVAR5,P1.PRD_DCVAR6,P1.PRD_DCVAR7,P1.PRD_DCVAR8 ';
  wSql2 := 'from FTC0000 F1 LEFT JOIN PRD0000 P1 ON (F1.PRD_REFER = P1.PRD_REFER'
    + sEmpresa + ') LEFT JOIN prd_tipo P2 ON (P2.pti_codigo = P1.pti_codigo) ';
  wSeleciona := 'where F1.PRD_REFER = ''' + EdtPrd_Refer.Text + '''';
  wOrdem := 'F1.PRD_REFER';
  //
  DmProducao.CdsFichaTec.Close;
  DmProducao.CdsFichaTec.CommandText := SQLDEF('PRODUTOS', wSql1 + wSql2, wSeleciona, wOrdem, 'F1.'); // 'PRODUTO'
  DmProducao.CdsFichaTec.Open;
  if (DmProducao.CdsFichaTec.isEmpty = False) then
  begin
    wIncluir := False;
    EdtDescricao.Text := DmProducao.CdsFichaTecPRD_DESCRI.AsString;
    if DmProducao.CdsFichaTec.Active  then
      DmProducao.DsFichaTec.AutoEdit := true;
  end
  else
  begin
    if DmProducao.CdsFichaTec.Active  then
      DmProducao.DsFichaTec.AutoEdit := False;
  end;
  BuscaItens;

end;

procedure TFormProduto.BuscaItens;
var
  sEmpresa: String;
begin
  sEmpresa := '';
  if dbInicio.Exclusivo('PRODUTOS') then
    sEmpresa := ' and F1.emp_codigo = P1.emp_codigo ';

  wSql1 := 'SELECT F1.*,P1.PRD_DESCRI,P1.PRD_DCVAR1,P1.PRD_DCVAR2,P1.PRD_DCVAR3,P1.PRD_DCVAR4,P1.PRD_DCVAR5,P1.PRD_DCVAR6,P1.PRD_DCVAR7,P1.PRD_DCVAR8,';
  wSql2 := 'T1.PTI_SIGLA FROM FTC0000 F1 LEFT JOIN PRD0000 P1 ON (F1.PRD_REFER = P1.PRD_REFER'+ sEmpresa + ') LEFT JOIN PRD_TIPO T1 ON (P1.PTI_CODIGO = T1.PTI_CODIGO) ';

  DmProducao.CdsFichaTec.Close;
  DmProducao.CdsFichaTec.CommandText := SQLDEF('PRODUTOS', wSql1 + wSql2,
    'where F1.PRD_REFER = ''' + EdtPrd_Refer.Text + '''' + sEmpresa,
    'F1.PRD_REFER', 'F1.');
  DmProducao.CdsFichaTec.Open;

  if sEmpresa <> '' then
    sEmpresa := ' and F2.emp_codigo = P1.emp_codigo ';

  OpenItensFicha;


  if (CdsItensFicha.isEmpty ) then
    MostrarGrade;
end;

procedure TFormProduto.OpenItensFicha;

begin
    CdsItensFicha.DISABLECONTROLS;
    CdsItensFicha.Close;
    qItensFicha.sql.Clear;

    qItensFicha.sql.text :=  'Select F2.*,P1.PRD_DESCRI,P1.PRD_UND,P1.PRD_GRADE,P2.PTI_SIGLA, g1.PRG_DESCRICAO, '+
                             'cast( '+
                             'case '+
                             '     WHEN PRMT.pmt_calcularpv = ''0'' THEN '+
                             '         P1.PRD_PCUSTO '+
                             '     WHEN PRMT.pmt_calcularpv = ''1'' THEN '+
                             '         P1.prd_custocomipi '+
                             'END as numeric(15,4)) AS PRD_PCUSTO, '+
                             'cast( '+
                             '(case '+
                             '     WHEN PRMT.pmt_calcularpv = ''0'' THEN '+
                             '         P1.PRD_PCUSTO '+
                             '     WHEN PRMT.pmt_calcularpv = ''1'' THEN '+
                             '         P1.prd_custocomipi '+
                             'END  * F2.fti_uc) as numeric(15,4)) AS TotalItem '+
                             'from ftc_it01 F2 '+
                             '     left join prd0000 P1 on (f2.prd_refer_itens = p1.prd_refer) '+
                             '     left join PRD_TIPO P2 ON P1.pti_codigo = P2.PTI_CODIGO ' +
                             '     LEFT join PRD_GRADE g1 on g1.PRG_REGISTRO = f2.PRG_REGISTRO '+
                             '     left JOIN prmt0001 PRMT ON PRMT.emp_codigo = P1.emp_codigo '+
                             'WHERE F2.PRD_REFER = ' + qStr(EdtPrd_Refer.Text)+ ' '+
                             ConcatSe( ' and f2.', dbInicio.ExclusivoSql('PRODUTOS') )+' '+
                             'order by F2.PRD_REFER' ;



    if delphiaberto  then
       copytoclipboard( qItensFicha.sql.text );



    CdsItensFicha.Open;
    CdsItensFicha.ENABLECONTROLS;
    CalculaCusto;
end;

procedure TFormProduto.CalculaCusto;
var total: Currency;
begin
    total := 0;
    CdsItensFicha.Refresh;
    NumEdit2.text := '0';
    CdsItensFicha.First;
    CdsItensFicha.DisableControls;
    while not CdsItensFicha.Eof do
     begin
          total := NumEdit2.value + (CdsItensFichaPRD_PCUSTO.AsFloat * CdsItensFichaFTI_UC.AsFloat);
          NumEdit2.value :=   total;
          CdsItensFicha.Next;
     end;
    CdsItensFicha.EnableControls;
    CdsItensFicha.First;
end;

procedure TFormProduto.Bit_FTC_NovoClick(Sender: tObject);
var
  sEmpresa: String;
begin
  sEmpresa := '';
  if dbInicio.Exclusivo('PRODUTOS') then
    sEmpresa := ' and F1.emp_codigo = P1.emp_codigo ';

  if PctrlProdutos.ActivePageIndex = 1 then // se produtos
    PctrlProdutos.ActivePageIndex := 0; // passe para ficha
  wSql1 := 'SELECT F1.*,P1.PRD_DESCRI,P1.PRD_DCVAR1,P1.PRD_DCVAR2,P1.PRD_DCVAR3,P1.PRD_DCVAR4,P1.PRD_DCVAR5,P1.PRD_DCVAR6,P1.PRD_DCVAR7,P1.PRD_DCVAR8,';
  wSql2 := 'T1.PTI_SIGLA FROM FTC0000 F1 LEFT JOIN PRD0000 P1 ON (F1.PRD_REFER = P1.PRD_REFER'
    + sEmpresa + ') LEFT JOIN PRD_TIPO T1 ON (P1.PTI_CODIGO = T1.PTI_CODIGO) ';
  //
  DmProducao.CdsFichaTec.Close;
  DmProducao.CdsFichaTec.CommandText := SQLDEF('PRODUTOS', wSql1 + wSql2,
    'where F1.PRD_REFER = ''' + EdtPrd_Refer.Text + '''',
    'F1.PRD_REFER', 'F1.');
  DmProducao.CdsFichaTec.Open;
  if (DmProducao.CdsFichaTec.isEmpty ) then
  begin
    wIncluir := true;
    GrpGrade.Visible := False;
    DmProducao.CdsFichaTec.Insert;

    DbDtFTC_CRIACAO.date := now;
    DbeFTC_TUP.Field.AsCurrency := 1;
    DmProducao.CdsFichaTecPRD_REFER.AsString := EdtPrd_Refer.Text;
    DmProducao.CdsFichaTecEmp_Codigo.AsString := dbInicio.empresa.EMP_CODIGO;
    DmProducao.CdsFichaTec.ApplyUpdates(0);
    DmProducao.CdsFichaTec.Edit;
    DesabilitaBotoesFTC;
    LimparDadosFTC;
    DbDtFTC_CRIACAO.SetFocus;

  end
  else
    BuscaProduto;
end;

procedure TFormProduto.Bit_FTC_CopiarClick(Sender: tObject);
begin
  if EdtPrd_Refer.Text <> '' then
  begin
    FormCopiaFichaTec := TFormCopiaFichaTec.Create(Application);
    try
      FormCopiaFichaTec.ShowModal;
    finally
      FreeAndNil(FormCopiaFichaTec);
    end;
  end;
end;

procedure TFormProduto.BIT_FTC_EXCLUIRClick(Sender: tObject);
begin

  if EdtPrd_Refer.Text <> '' then
  begin
    if (not DmProducao.CdsFichaTec.isEmpty) then
      if (Uteis.confirmacao('Deseja excluir essa Ficha Técnica?') = Mryes) then
        if (Uteis.confirmacao
          ('A ficha de "Custo" do produto também será excluida. Confirma a exclusão?')
          = Mryes) then
        begin
          ExecSql('Delete from FTC_IT01 where PRD_REFER = ' +
            qStr(EdtPrd_Refer.Text) + ConcatSE(' and ',
            dbInicio.ExclusivoSql('PRODUTOS')));
          DmProducao.CdsFichaTec.Delete;
          DmProducao.CdsFichaTec.ApplyUpdates(0);
          CdsItensFicha.Close;
          SqlItensGrade.Close;
        end;
  end
  else
    Uteis.aviso('Informe uma Referência !');
  HabilitaBotoes;
  EdtDescricao.Text := '';
  LimparDadosFTC;
  wIncluir := False;
  if (PctrlProdutos.ActivePageIndex = 0) then // ficha
    PctrlProdutos.ActivePageIndex := 1; // cadastro

  EdtPrd_Refer.SetFocus;

end;

procedure TFormProduto.BIT_FTC_GRAVARClick(Sender: tObject);
begin
  if (CdsItensFicha.isEmpty ) and (EdtPrd_Refer.Text <> '') then
  begin
    Uteis.aviso('Informe a Matéria-Prima !');

    EdtRefer.SetFocus;
    exit;
  end;
  if DbDtFTC_CRIACAO.Text = '  /  /    ' then
  begin
    Uteis.aviso('Digite a data de criação');
    DbDtFTC_CRIACAO.SetFocus;
    exit;
  end;
  if DbeFTC_TUP.Text = '0' then
  begin
    Uteis.aviso('Você não informou o TUP. Vou colocar o TUP padrão = 1 ');
    DbeFTC_TUP.Field.AsCurrency := 1;
  end;

  DmProducao.CdsFichaTecPRD_REFER.AsString := EdtPrd_Refer.Text;
  DmProducao.CdsFichaTecEmp_Codigo.AsString := dbInicio.empresa.EMP_CODIGO;

  if DmProducao.CdsFichaTec.State in [dsEdit, dsinsert] then
    DmProducao.CdsFichaTec.ApplyUpdates(0);
  LimparDadosFTC;
  wIncluir := False;
  DesabilitaMateria;
  HabilitaBotoesFTC;
  Tbs_Produtos.TabVisible := true;
  if (PctrlProdutos.ActivePageIndex = 0) then // ficha tec
    DBGridFichaTecnicaItem.SetFocus
  else
    EdtPrd_Refer.SetFocus;

end;

procedure TFormProduto.BIT_FTC_RELATORIOClick(Sender: tObject);
var
  sEmpresa: String;
  wI, wS: Integer;
begin
  if EdtPrd_Refer.Text <> '' then
  begin
    sEmpresa := '';
    if dbInicio.Exclusivo('PRODUTOS') then
      sEmpresa := ' and F1.emp_codigo = P1.emp_codigo ';

    wSql1 := 'SELECT F1.PRD_REFER,F1.FTC_TUP,F1.FTC_CRIACAO,F1.FTC_PROC1,F1.FTC_PROC2,F1.FTC_PROC3,F1.FTC_PROC4,F1.FTC_PROC5,F1.FTC_PROC6,F1.FTC_PROC7,F1.FTC_PROC8,P1.PRD_DESCRI,';
    wSql2 := 'P1.PRD_DCVAR1,P1.PRD_DCVAR2,P1.PRD_DCVAR3,P1.PRD_DCVAR4,P1.PRD_DCVAR5,P1.PRD_DCVAR6,P1.PRD_DCVAR7,P1.PRD_DCVAR8,P1.PTI_CODIGO,T1.PTI_DESCRI,P1.PGR_CODIGO,G1.PGR_DESCRI,P1.LIN_CODIGO,L1.LIN_DESCRI FROM FTC0000 F1 ';
    wSql3 := 'LEFT JOIN PRD0000 P1 on (F1.PRD_REFER  = P1.PRD_REFER' + sEmpresa
      + ') LEFT JOIN PRD_TIPO T1 on (P1.PTI_CODIGO = T1.PTI_CODIGO) LEFT JOIN PRD_GRUPO G1 on (P1.PGR_CODIGO = G1.PGR_CODIGO) LEFT JOIN PRD_LINHA L1 on (P1.LIN_CODIGO = L1.LIN_CODIGO) ';
    SqlRelProdutos.Close;
    SqlRelProdutos.CommandText := SQLDEF('PRODUTOS', wSql1 + wSql2 + wSql3,
      'WHERE F1.PRD_REFER = ''' + EdtPrd_Refer.Text + '''',
      'F1.PRD_REFER', 'F1.');
    SqlRelProdutos.Open;
    if (SqlRelProdutos.isEmpty = False) then
    begin
      if (CdsItensFicha.isEmpty = False) then
      begin
        if (not CdsRelItens.Active) then
          CdsRelItens.CreateDataSet;
        CdsRelItensFTI_UC.Currency := False;
        { limpar arquivo }
        CdsRelItens.EmptyDataSet;
        CdsItensFicha.DisableControls;
        CdsItensFicha.First;
        wI := 1;
        while not CdsItensFicha.Eof do
        begin
          CdsRelItens.Append;
          CdsRelItensFTI_ITEM.AsString := StrZero(IntToStr(wI), 2);
          CdsRelItensPRD_REFER.AsString := CdsItensFichaPRD_REFER.AsString;
          CdsRelItensPRD_REFER_ITENS.AsString :=
            CdsItensFichaPRD_REFER_ITENS.AsString;
          CdsRelItensPRD_DESCRI.AsString := CdsItensFichaPRD_DESCRI.AsString;
          CdsRelItensPRD_UND.AsString := CdsItensFichaPRD_UND.AsString;
          CdsRelItensPTI_SIGLA.AsString := CdsItensFichaPTI_SIGLA.AsString;
          CdsRelItensPRD_PCUSTO.AsCurrency :=
            CdsItensFichaPRD_PCUSTO.AsCurrency;
          CdsRelItensFTI_UC.AsCurrency := CdsItensFichaFTI_UC.AsCurrency;
          CdsRelItensFTI_MODE1.AsString := CdsItensFichaFTI_MODE1.AsString;
          CdsRelItensFTI_MODE2.AsString := CdsItensFichaFTI_MODE2.AsString;
          CdsRelItensFTI_MODE3.AsString := CdsItensFichaFTI_MODE3.AsString;
          CdsRelItensFTI_MODE4.AsString := CdsItensFichaFTI_MODE4.AsString;
          CdsRelItensFTI_MODE5.AsString := CdsItensFichaFTI_MODE5.AsString;
          CdsRelItensFTI_MODE6.AsString := CdsItensFichaFTI_MODE6.AsString;
          CdsRelItensFTI_MODE7.AsString := CdsItensFichaFTI_MODE7.AsString;
          CdsRelItensFTI_MODE8.AsString := CdsItensFichaFTI_MODE8.AsString;
          CdsRelItensTOTALITEM.AsCurrency := CdsItensFichaTOTALITEM.AsCurrency;
          CdsRelItensTOTAL.AsCurrency := NumEdit2.Value;
          CdsRelItens.Post;
          if (CdsItensFichaPTI_SIGLA.AsString = 'PA') or
            (CdsItensFichaPTI_SIGLA.AsString = 'PI') then
          begin

            if sEmpresa <> '' then
              sEmpresa := ' and f2.emp_codigo = P1.emp_codigo ';

            wSql1 := 'Select F2.*, P1.PRD_DESCRI, P1.PRD_UND, P1.PRD_GRADE, P2.PTI_SIGLA, case WHEN PRMT.pmt_custo_base_producao = ''CL'' THEN P1.PRD_PCUSTO WHEN PRMT.pmt_custo_base_producao = ''CE'' ';
            wSql2 := 'THEN P1.prd_custocomipi WHEN PRMT.pmt_custo_base_producao = ''CM'' THEN P1.prd_pmedio WHEN PRMT.pmt_custo_base_producao = ''SI'' THEN P1.prd_custo_credito END AS PRD_PCUSTO, ';
            wSql3 := '(case WHEN PRMT.pmt_custo_base_producao = ''CL'' THEN P1.PRD_PCUSTO WHEN PRMT.pmt_custo_base_producao = ''CE'' THEN ';
            wSql4 := 'P1.prd_custocomipi WHEN PRMT.pmt_custo_base_producao = ''CM'' THEN P1.prd_pmedio WHEN PRMT.pmt_custo_base_producao = ''SI'' THEN ';
            wSql5 := 'P1.prd_custo_credito END  * F2.fti_uc) AS TotalItem ';
            wSql6 := 'from ftc_it01 F2 left join prd0000 P1 on (f2.prd_refer_itens = p1.prd_refer'
              + sEmpresa +
              ') left join PRD_TIPO P2 ON P1.pti_codigo = P2.PTI_CODIGO left JOIN prmt0001 PRMT ON PRMT.emp_codigo = P1.emp_codigo ';
            wSeleciona := 'WHERE F2.PRD_REFER = ''' +
              CdsItensFichaPRD_REFER_ITENS.AsString + '''';
            wOrdem := 'F2.PRD_REFER,F2.FTI_REGISTRO';
            //
            SqlItensGrade.Close;
            SqlItensGrade.CommandText := SQLDEF('PRODUTOS', wSql1 + wSql2 + wSql3 + wSql4 + wSql5 + wSql6,
              wSeleciona, wOrdem, 'F2.');
            SqlItensGrade.Open;
            if (SqlItensGrade.isEmpty = False) then
            begin
              SqlItensGrade.First;
              wS := 1;
              while not SqlItensGrade.Eof do
              begin
                CdsRelItens.Append;
                CdsRelItensFTI_ITEM.AsString := StrZero(IntToStr(wI), 2) + '.' +
                  StrZero(IntToStr(wS), 3);
                CdsRelItensPRD_REFER.AsString :=
                  CdsItensFichaPRD_REFER.AsString;
                CdsRelItensPRD_REFER_ITENS.AsString :=
                  SqlItensGradePRD_REFER_ITENS.AsString;
                CdsRelItensPRD_DESCRI.AsString :=
                  SqlItensGradePRD_DESCRI.AsString;
                CdsRelItensPRD_UND.AsString := SqlItensGradePRD_UND.AsString;
                CdsRelItensPTI_SIGLA.AsString :=
                  SqlItensGradePTI_SIGLA.AsString;
                CdsRelItensPRD_PCUSTO.AsCurrency :=
                  SqlItensGradePRD_PCUSTO.AsCurrency;
                CdsRelItensFTI_UC.AsCurrency := SqlItensGradeFTI_UC.AsCurrency;
                CdsRelItensFTI_MODE1.AsString :=
                  SqlItensGradeFTI_MODE1.AsString;
                CdsRelItensFTI_MODE2.AsString :=
                  SqlItensGradeFTI_MODE2.AsString;
                CdsRelItensFTI_MODE3.AsString :=
                  SqlItensGradeFTI_MODE3.AsString;
                CdsRelItensFTI_MODE4.AsString :=
                  SqlItensGradeFTI_MODE4.AsString;
                CdsRelItensFTI_MODE5.AsString :=
                  SqlItensGradeFTI_MODE5.AsString;
                CdsRelItensFTI_MODE6.AsString :=
                  SqlItensGradeFTI_MODE6.AsString;
                CdsRelItensFTI_MODE7.AsString :=
                  SqlItensGradeFTI_MODE7.AsString;
                CdsRelItensFTI_MODE8.AsString :=
                  SqlItensGradeFTI_MODE8.AsString;
                CdsRelItens.Post;
                SqlItensGrade.Next;
                Inc(wS);
              end;
            end;
          end;
          CdsItensFicha.Next;
          Inc(wI);
        end;
        CdsItensFicha.EnableControls;
        LBL_00_EMPRESA.Caption := dbInicio.empresa.RAZAO;
        LBL_00_LTITULO1.Caption := 'FICHA TECNICA DO PRODUTO';
        ppRelFichaTec.DeviceType := 'Screen';
        RBuilderPreview(ppRelFichaTec);
      end
      else
        Uteis.aviso('Não existe itens lançado na ficha');
      CdsItensFicha.EnableControls;

    end
    else
      Uteis.aviso('Não Existe Ficha a ser impressa');
  end
  else
    Uteis.aviso('Informe uma Referência !');
  wIncluir := False;
end;

procedure TFormProduto.SpProdutoClick(Sender: tObject);
begin
    if EdtPrd_Refer.Text <> '' then
    begin
         CbGrade.Condicao := 'prd_codigo = ' +
         qStr(RetornaProdutoReferencia(EdtRefer.Text));

         FormProdutoGrid := TFormProdutoGrid.Create(Application);
         try
            FormProdutoGrid.ShowModal;
            if FormProdutoGrid.modalresult=mrok then
            begin
                 EdtRefer.Text := FormProdutoGrid.ReferRetorno;
                 EdtProduto.Text := FormProdutoGrid.DescricaoRetorno;
                 if CdsItensFicha.Locate('PRD_REFER_ITENS', EdtRefer.Text, [])  then
                    AlterarItensFTC
                 Else
                    wIncluirItem := True;
            end;
         finally
                FreeAndNil( FormProdutoGrid );
         end;
    end
    else
    begin
         Uteis.aviso('Informe a Referência do Produto Acabado !');
         EdtPrd_Refer.SetFocus;
    end;
end;

procedure TFormProduto.Bit_ExcluirMateriaClick(Sender: tObject);
begin
  if EdtRefer.Text <> '' then
  begin
    ExcluirItensFTC;

    CdsItensFicha.refresh;
    LimparDadosFTC;
    SpProduto.Enabled := true;
    EdtRefer.TabStop := true;
    EdtRefer.ReadOnly := False;
    EdtRefer.Color := clWindow;
    if (PctrlProdutos.ActivePageIndex = 0) then
      EdtRefer.SetFocus
    else
      DBGridFichaTecnicaItem.SetFocus;

  end
  else
  begin
    Uteis.aviso('Informe uma Materia-Prima !');
    DBGridFichaTecnicaItem.SetFocus;
  end;
end;


procedure TFormProduto.Bit_GravarMateriaClick(Sender: tObject);
begin
     if BuscaUmDadoSqlAsInteger('SELECT COUNT(*) FROM FTC0000 WHERE PRD_REFER = ' + qStr(EdtPrd_Refer.Text) + ConcatSE(' and ',dbInicio.ExclusivoSql('PRODUTOS'))) = 0 then
     begin
          if (not wIncluir) then
          begin
               Uteis.aviso('"Atenção" Crie a ticha técnica para o produto !' + #13#10 + 'Clique no botão Criar Ficha !');
               HabilitaBotoesFTC;
               Bit_FTC_Novo.SetFocus;
               exit;
          end;
     end
     Else
     if CurrConsumo.Value <= 0 then
     begin
          Uteis.aviso('A Quantidade de consumo deve ser informada !');
          CurrConsumo.SetFocus;
          exit;
     end
     Else
     if Trim(EdtRefer.Text) = '' then
     begin
          Uteis.aviso('Informe o código do material !');
          EdtRefer.SetFocus;
          exit;
     end
     Else
     BEGIN
          if wIncluirItem  then
             CdsItensFicha.Insert
          ELSE
          if CdsItensFicha.Locate('FTI_REGISTRO', CdsItensFichaFTI_REGISTRO.AsInteger, [])  then
             CdsItensFicha.Edit;

          CdsItensFichaPRD_REFER.AsString := EdtPrd_Refer.Text;
          CdsItensFichaPRD_REFER_ITENS.AsString := EdtRefer.Text;
          CdsItensFichaFTI_MODIFICADA.AsDateTime := DateModif.date;
          CdsItensFichaFTI_UC.AsCurrency := CurrConsumo.Value;
          CdsItensFichaFTI_UCMODIFIC.AsCurrency := CurrAnterior.Value;
          CdsItensFichaFTI_PRECOCUSTO.AsCurrency := CurCustoFicha.Value;
          CdsItensFichaPRG_REGISTRO.AsString := CbGrade.CodigoLista;
          cdsItensFichaEmp_codigo.asstring := dbInicio.Empresa.emp_codigo;

          CdsItensFicha.post;
          CdsItensFicha.ApplyUpdates(0);

          CdsItensFicha.Close;
          CdsItensFicha.Open;

          LimparDadosFTC;

          SpProduto.Enabled := true;
          EdtRefer.TabStop := true;
          EdtRefer.ReadOnly := False;
          EdtRefer.Color := clWindow;
          CalculaCusto;
          if wIncluirItem  then
             CdsItensFicha.Last;
     END;
end;

procedure TFormProduto.Bit_CancelarMateriaClick(Sender: tObject);
begin
  LimparDadosFTC;
  SpProduto.Enabled := true;
  PAN_FTC01.Enabled := true;
  PAN_FTC02.Enabled := true;
  PAN_FTC03.Enabled := true;
  GrpVariacoes.Enabled := true;
  GrpMateria.Enabled := true;
  GrpProcesso.Enabled := true;
  EdtRefer.TabStop := true;
  EdtRefer.ReadOnly := False;
  EdtRefer.Color := clWindow;
  EdtRefer.SetFocus;
end;

procedure TFormProduto.LimparDadosFTC;
begin
  EdtRefer.Text := '';
  EdtProduto.Text := '';
  CurrConsumo.Value := 0;
  CurrAnterior.Value := 0;
  DateModif.Text := '';
end;

procedure TFormProduto.DesabilitaMateria;
begin
  EdtProduto.Enabled := False;
  CurrConsumo.Enabled := False;
  CurrAnterior.Enabled := False;
  DateModif.Enabled := False;
  CbGrade.Enabled := False;

end;

procedure TFormProduto.HabilitaMateria;
begin
  EdtProduto.Enabled := true;
  CurrConsumo.Enabled := true;
  CurrAnterior.Enabled := true;
  DateModif.Enabled := true;
  CbGrade.Enabled := true;

end;

procedure TFormProduto.verificaEdicao;
begin
  if CdsProdutos.State in [dsEdit, dsinsert] then
  begin
    MostraFichaTecnica(False);
    if Uteis.confirmacao('Deseja salvar as alterações do Cadastro de Produtos ?') = idyes then
      Bit_Gravar.Click
    else
      Bit_Cancelar.Click;
  end;
end;

procedure TFormProduto.verificaEdicaoFTC;
begin
  if DmProducao.CdsFichaTec.State in [dsEdit, dsinsert] then
  begin
    Tbs_Produtos.TabVisible := False;
    if Uteis.confirmacao('Deseja salvar alterações da Ficha Técnica ?') = idyes
    then
      BIT_FTC_GRAVAR.Click // chama o evento onclick do botão gravar
    else
      BIT_FTC_CANCELAR.Click; // chama o evento onclick do botão cancelar
  end;
end;

procedure TFormProduto.Bit_FTC_CancelarClick(Sender: tObject);
begin
  if wIncluir then
    ExecSql('Delete from FTC_IT01 where PRD_REFER = ' + qStr(EdtPrd_Refer.Text)
      + ConcatSE(' and ', dbInicio.ExclusivoSql('PRODUTOS')));

  wIncluir := False;
  DmProducao.CdsFichaTec.Cancel;
  EdtDescricao.Text := '';
  LimparDadosFTC;
  HabilitaBotoes;
  Tbs_Produtos.TabVisible := true;
  PctrlProdutos.ActivePageIndex := 1; // cad.produto
  //EdtPrd_Refer.SetFocus;

end;

procedure TFormProduto.DesabilitaBotoesFTC;
begin
  BIT_FTC_RELATORIO.Enabled := False;
  Bit_FTC_Novo.Enabled := False;
  Bit_FTC_Copiar.Enabled := False;
  BIT_FTC_EXCLUIR.Enabled := False;
  // Bit_FTC_Sair.Visible      := False;
  BIT_FTC_CANCELAR.Enabled := true;
  BIT_FTC_GRAVAR.Enabled := true;
end;

procedure TFormProduto.HabilitaBotoesFTC;
begin
  BIT_FTC_RELATORIO.Enabled := true;
  Bit_FTC_Novo.Enabled := true;
  Bit_FTC_Copiar.Enabled := true;
  BIT_FTC_EXCLUIR.Enabled := true;
  // Bit_FTC_Sair.Visible      := true;
  BIT_FTC_CANCELAR.Enabled := False;
  BIT_FTC_GRAVAR.Enabled := False;
end;

procedure TFormProduto.AlterarItensFTC;
begin

    EdtRefer.Text := CdsItensFichaPRD_REFER_ITENS.AsString;
    EdtProduto.Text := CdsItensFichaPRD_DESCRI.AsString;
    CurrConsumo.Value := CdsItensFichaFTI_UC.AsCurrency;
    DateModif.date := CdsItensFichaFTI_MODIFICADA.AsDateTime;
    CurrAnterior.Value := CdsItensFichaFTI_UCMODIFIC.AsCurrency;
    CurCustoFicha.Value := CdsItensFichaFTI_PRECOCUSTO.AsCurrency;

    CbGrade.Condicao := 'prd_codigo = ' + qStr(RetornaProdutoReferencia(CdsItensFichaPRD_REFER_ITENS.Text));

    CbGrade.TextoLocalizar := CdsItensFichaPRG_REGISTRO.AsString;
    CbGrade.Localizar := true;

    EdtRefer.Color := $00D7D7D7;
    EdtRefer.TabStop := False;
    EdtRefer.ReadOnly := true;
    SpProduto.Enabled := False;
    wIncluirItem := False;
    CurrConsumo.SetFocus;

end;

procedure TFormProduto.ExcluirItensFTC;
begin
  if Uteis.confirmacao(('Confirma a exclusão do Item ?' + #13 + 'Material : ' +
    CdsItensFichaPRD_REFER_ITENS.AsString + #13 + 'Descrição : ' +
    CdsItensFichaPRD_DESCRI.AsString)) = Mryes then
    ExecSql('Delete from FTC_IT01 where FTI_REGISTRO = ' +
      qStr(IntToStr(CdsItensFichaFTI_REGISTRO.AsInteger)) + ConcatSE(' and ',
      dbInicio.ExclusivoSql('PRODUTOS')));
  CalculaCusto;
end;

procedure TFormProduto.DBGridFichaTecnicaItemDblClick(Sender: tObject);
begin
     if (CdsItensFicha.isEmpty = False) then
        AlterarItensFTC;
end;

procedure TFormProduto.EdtReferChange(Sender: tObject);
begin

  if EdtRefer.Text <> '' then
  begin
    CbGrade.Text := '';
    CbGrade.Condicao := 'prd_codigo = ' +
      qStr(RetornaProdutoReferencia(EdtRefer.Text));
    Bit_GravarMateria.Enabled := true;
    Bit_CancelarMateria.Enabled := true;
    Bit_ExcluirMateria.Enabled := true;
    GrpVariacoes.Enabled := False;
    GrpMateria.Enabled := False;
    GrpProcesso.Enabled := False;
    CbGrade.Condicao := 'prd_codigo = ' +
      qStr(RetornaProdutoReferencia(EdtRefer.Text));
    HabilitaMateria;
  end
  else
  begin
    CbGrade.Text := '';

    Bit_GravarMateria.Enabled := False;
    Bit_CancelarMateria.Enabled := False;
    Bit_ExcluirMateria.Enabled := False;
    GrpVariacoes.Enabled := true;
    GrpMateria.Enabled := true;
    GrpProcesso.Enabled := true;

    CbGrade.Condicao := 'prd_codigo = ' + qStr('');

    DesabilitaMateria;
  end;

end;

procedure TFormProduto.EdtReferExit(Sender: tObject);
begin
  if (ActiveControl.Name = 'Bit_Excluir') or
    (ActiveControl.Name = 'Bit_Relatorio') or (ActiveControl.Name = 'Bit_Lista')
    or (ActiveControl.Name = 'Bit_novo') or
    (ActiveControl.Name = 'Bit_Cancelar') or (ActiveControl.Name = 'Bit_Sair')
  then
    exit;
  if (EdtRefer.Text <> '') then
  begin
    if (EdtRefer.Text <> EdtPrd_Refer.Text) then
    begin
      if (DmProducao.CdsFichaTec.isEmpty) then
      begin
        Uteis.aviso
          ('Antes de inserir um item precisa criar a Ficha, clique em Criar Ficha e depois em Gravar');
        LimparDadosFTC;
        EdtRefer.SetFocus;
      end
      else
        BuscaMaterial;
    end
    else
    begin
      Uteis.aviso(Pchar('Impossível inserir este material.' + #13 +
        'Este material é a própria ficha técnica !'));
      LimparDadosFTC;
      EdtRefer.SetFocus;
    end;
  end;

end;

procedure TFormProduto.BuscaMaterial;
begin
    if (ActiveControl.Name = 'Bit_CancelarMateria') or (ActiveControl.Name = 'Bit_GravarMateria') then
       exit;

    SqlCdsMaterial.Close;
    SqlCdsMaterial.CommandText := SQLDEF('PRODUTOS', 'select P2.PRD_REFER,P2.PRD_DESCRI from PRD0000 P2 ',
                                                     'where P2.PRD_REFER = ''' + EdtRefer.Text + '''', 'P2.PRD_REFER', 'P2.');
    SqlCdsMaterial.Open;
    if SqlCdsMaterial.isEmpty = False then
    begin
         wIncluirItem := true;
         EdtProduto.Text := SqlCdsMaterialPRD_DESCRI.AsString;
         CbGrade.Condicao := 'prd_codigo = ' +
         qStr(RetornaProdutoReferencia(EdtRefer.Text));
         HabilitaMateria;
         CurrConsumo.SetFocus;
    end
    else
    begin
         Uteis.aviso('Materia-Prima não cadastrada !');
         EdtRefer.Text := '';
         EdtProduto.Text := '';
         EdtRefer.SetFocus;
    end;

end;

procedure TFormProduto.CdsItensFichaAfterInsert(DataSet: TDataSet);
begin
     inherited;
     CdsItensFichaFTI_REGISTRO.AsInteger:=dbInicio.GetNextSequence('GEN_FTC_IT01_REGISTRO');
end;

procedure TFormProduto.CdsItensFichaAfterScroll(DataSet: TDataSet);
begin
     MostrarGrade;
end;

procedure TFormProduto.MostrarGrade;
begin
  //if (CdsItensFichaPTI_SIGLA.AsString = 'PA') or  (CdsItensFichaPTI_SIGLA.AsString = 'PI') then
  //begin
       wSql1 := 'Select FG2.*,P1.PRD_DESCRI,P1.PRD_UND,P1.PRD_GRADE,P2.PTI_SIGLA,P1.PRD_PCUSTO from ftc_it01 FG2 ';
       wSql2 := 'left join prd0000 P1 on FG2.prd_refer_itens = p1.prd_refer left join PRD_TIPO P2 ON P1.pti_codigo = P2.PTI_CODIGO ';
       SqlItensGrade.Close;
       SqlItensGrade.CommandText := SQLDEF('PRODUTOS', wSql1 + wSql2,
                                    'WHERE FG2.PRD_REFER = ''' + CdsItensFichaPRD_REFER_ITENS.AsString +
                                    '''', 'FG2.PRD_REFER,FG2.FTI_REGISTRO', 'FG2.');
       SqlItensGrade.Open;
       if SqlItensGrade.RecordCount > 0 then
       begin

       GrpMateria.Height := 158;
       GrpGrade.Visible := true;
       GrpGrade.Top := 190;
       if wVariacoes = 'S' then
       begin
           DBGridGrade.Columns[0].Width := 71; // Codigo
           DBGridGrade.Columns[1].Width := 370; // Descricao
           DBGridGrade.Columns[2].Width := 21; // Sigla
           DBGridGrade.Columns[3].Width := 90; // UC
           DBGridGrade.Columns[4].Width := 31; // UND

       end
       else
       begin
           { Dimensionando o grid qdo nao tem variaçao }
           DBGridGrade.Columns[0].Width := 71; // codigo
           DBGridGrade.Columns[1].Width := 525; // descricao
           DBGridGrade.Columns[2].Width := 21; // Sigla
           DBGridGrade.Columns[3].Width := 90; // uc
           DBGridGrade.Columns[4].Width := 31; // UND

       end;
  end
  else
  begin
       GrpGrade.Visible := False;
       GrpMateria.Height := 256;
  end;
end;

procedure TFormProduto.DbeFTC_TUPExit(Sender: tObject);
begin
     if (DmProducao.CdsFichaTec.State in [dsEdit, dsinsert]) then
        EdtRefer.SetFocus;
end;

procedure TFormProduto.AlterarItensdaFichaTecnica1Click(Sender: tObject);
begin
     if (CdsItensFicha.isEmpty = False) then
        AlterarItensFTC;
end;

procedure TFormProduto.ExcluirItensdaFichaTcnica1Click(Sender: tObject);
begin
  if (CdsItensFicha.isEmpty = False) then
  begin
       ExcluirItensFTC;
       LimparDadosFTC;
       CdsItensFicha.refresh;
       SpProduto.Enabled := true;
       EdtRefer.TabStop := true;
       EdtRefer.ReadOnly := False;
       EdtRefer.Color := clWindow;
       if (PctrlProdutos.ActivePageIndex = 0) then
          EdtRefer.SetFocus
       else
          DBGridFichaTecnicaItem.SetFocus;
  end;

end;

procedure TFormProduto.Bit_AlterarRefClick(Sender: tObject);
begin
  try
    try
      FormAlterarRef := TFormAlterarRef.Create(Application);
      FormAlterarRef.Edt_De.Text := EdtPrd_Refer.Text;
      FormAlterarRef.ShowModal;
    finally
      begin
        FormAlterarRef.Destroy;
        FormAlterarRef := nil;

      end;
    end;
  except
    // beep;
    Uteis.erro('Ocorreu um erro na criação do formulário!');
  end;
end;

procedure TFormProduto.Bit_EquivalenciaClick(Sender: tObject);
begin
  try
    try
      FrmPrdEquivalente := TFrmPrdEquivalente.Create(Application);
      FrmPrdEquivalente.Edt_Refer.Text := EdtPrd_Refer.Text;
      FrmPrdEquivalente.Edt_Descri.Text := DbePrd_Descri.Text;
      FrmPrdEquivalente.wCodEmpresa := CdsProdutosEMP_CODIGO.AsString;
      FrmPrdEquivalente.ShowModal;
    finally
      FrmPrdEquivalente.Destroy;
      FrmPrdEquivalente := nil;
    end;
  except
    // beep;
    Uteis.erro('Ocorreu um erro na criação do formulário!');
  end;
end;

procedure TFormProduto.DBGridFichaTecnicaItemKeyDown(Sender: tObject;
  var Key: Word; Shift: TShiftState);
begin
     if Key = VK_DELETE then
     BEGIN
          ExcluirItensdaFichaTcnica1.Click;
          Key := 0;
     END
     else
     if Key = VK_RETURN then
     begin
          if (CdsItensFicha.isEmpty = False) then
             AlterarItensFTC;
          Key := 0;
     end;
     INHERITED ;
end;

procedure TFormProduto.DbDtFTC_CRIACAOKeyPress(Sender: tObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if DbDtFTC_CRIACAO.Text <> '  /  /    ' then
      if not TestaDataStr(DbDtFTC_CRIACAO.Text) then
        DbDtFTC_CRIACAO.SetFocus;

    Key := #0;
  end;
end;

procedure TFormProduto.SqlCdsEstoqueDetalheCalcFields(DataSet: TDataSet);
begin
  { }
  if SqlCdsEstoqueDetalheOSV_STATUS.AsString = 'A' then
    SqlCdsEstoqueDetalheCC_STATUS.AsString := 'ABERTO'
  else if SqlCdsEstoqueDetalheOSV_STATUS.AsString = 'X' then
    SqlCdsEstoqueDetalheCC_STATUS.AsString := 'ALMOXARIFADO'
  else if SqlCdsEstoqueDetalheOSV_STATUS.AsString = 'P' then
    SqlCdsEstoqueDetalheCC_STATUS.AsString := 'PRODUÇÃO'
  else if SqlCdsEstoqueDetalheOSV_STATUS.AsString = 'R' then
    SqlCdsEstoqueDetalheCC_STATUS.AsString := 'ABERTO';

  { }
  if SqlCdsEstoqueDetalheOSV_QTDE1.AsCurrency <> 0 then
  begin
    SqlCdsEstoqueDetalheCC_VARIACAO.AsString := CdsProdutosPRD_DCVAR1.AsString;
    SqlCdsEstoqueDetalheCC_QTDE.AsCurrency :=
      SqlCdsEstoqueDetalheOSV_QTDE1.AsCurrency;
  end
  else if SqlCdsEstoqueDetalheOSV_QTDE2.AsCurrency <> 0 then
  begin
    SqlCdsEstoqueDetalheCC_VARIACAO.AsString := CdsProdutosPRD_DCVAR2.AsString;
    SqlCdsEstoqueDetalheCC_QTDE.AsCurrency :=
      SqlCdsEstoqueDetalheOSV_QTDE2.AsCurrency;
  end
  else if SqlCdsEstoqueDetalheOSV_QTDE3.AsCurrency <> 0 then
  begin
    SqlCdsEstoqueDetalheCC_VARIACAO.AsString := CdsProdutosPRD_DCVAR3.AsString;
    SqlCdsEstoqueDetalheCC_QTDE.AsCurrency :=
      SqlCdsEstoqueDetalheOSV_QTDE3.AsCurrency;
  end
  else if SqlCdsEstoqueDetalheOSV_QTDE4.AsCurrency <> 0 then
  begin
    SqlCdsEstoqueDetalheCC_VARIACAO.AsString := CdsProdutosPRD_DCVAR4.AsString;
    SqlCdsEstoqueDetalheCC_QTDE.AsCurrency :=
      SqlCdsEstoqueDetalheOSV_QTDE4.AsCurrency;
  end
  else if SqlCdsEstoqueDetalheOSV_QTDE5.AsCurrency <> 0 then
  begin
    SqlCdsEstoqueDetalheCC_VARIACAO.AsString := CdsProdutosPRD_DCVAR5.AsString;
    SqlCdsEstoqueDetalheCC_QTDE.AsCurrency :=
      SqlCdsEstoqueDetalheOSV_QTDE5.AsCurrency;
  end
  else if SqlCdsEstoqueDetalheOSV_QTDE6.AsCurrency <> 0 then
  begin
    SqlCdsEstoqueDetalheCC_VARIACAO.AsString := CdsProdutosPRD_DCVAR6.AsString;
    SqlCdsEstoqueDetalheCC_QTDE.AsCurrency :=
      SqlCdsEstoqueDetalheOSV_QTDE6.AsCurrency;
  end
  else if SqlCdsEstoqueDetalheOSV_QTDE7.AsCurrency <> 0 then
  begin
    SqlCdsEstoqueDetalheCC_VARIACAO.AsString := CdsProdutosPRD_DCVAR7.AsString;
    SqlCdsEstoqueDetalheCC_QTDE.AsCurrency :=
      SqlCdsEstoqueDetalheOSV_QTDE7.AsCurrency;
  end
  else if SqlCdsEstoqueDetalheOSV_QTDE8.AsCurrency <> 0 then
  begin
    SqlCdsEstoqueDetalheCC_VARIACAO.AsString := CdsProdutosPRD_DCVAR8.AsString;
    SqlCdsEstoqueDetalheCC_QTDE.AsCurrency :=
      SqlCdsEstoqueDetalheOSV_QTDE8.AsCurrency;
  end
  Else if SqlCdsEstoqueDetalheOSV_QTDE.AsCurrency <> 0 then
  begin
    SqlCdsEstoqueDetalheCC_VARIACAO.AsString := CdsProdutosPRD_DCVAR1.AsString;
    SqlCdsEstoqueDetalheCC_QTDE.AsCurrency :=
      SqlCdsEstoqueDetalheOSV_QTDE.AsCurrency;
  end;

end;

procedure TFormProduto.MostraEstoqueDetalhe;
var
  wSql1, wSLQ2: String;
begin
  { }
  { wSQL1 := 'Select V1.OSV_CODIGO,V1.PRD_REFER,V1.OSV_QTDE,V1.OSV_QTDE1,V1.OSV_QTDE2,V1.OSV_QTDE3,V1.OSV_QTDE4,V1.OSV_QTDE5,V1.OSV_QTDE6,V1.OSV_QTDE7,V1.OSV_QTDE8,V1.OSV_STATUS,P1.PRD_DESCRI from OSV0001 V1';
    wSQL2 := ' left join PRD0000 P1 on (P1.PRD_REFER = V1.PRD_REFER) Where V1.OSV_STATUS not in(''C'',''E'') and V1.PRD_REFER = '''+EdtPrd_Refer.Text+'''';
  }
  wSql1 := 'Select V1.PED_CODIGO,V1.OSV_CODIGO,V1.PRD_REFER,V1.OSV_QTDE,V1.OSV_QTDE1,V1.OSV_QTDE2,V1.OSV_QTDE3,V1.OSV_QTDE4,V1.OSV_QTDE5,V1.OSV_QTDE6,V1.OSV_QTDE7,V1.OSV_QTDE8, V1.OSV_EMISSAO,V1.OSV_STATUS,P1.PRD_DESCRI,C1.CLI_RAZAO from OSV0001 V1';
  wSql2 := ' left join PRD0000 P1 on (P1.PRD_REFER = V1.PRD_REFER) Left join cli0000 C1 on (V1.CLI_CODIGO = C1.CLI_CODIGO) Where V1.OSV_STATUS not in(''C'',''E'') and V1.PRD_REFER = '''
    + EdtPrd_Refer.Text + '''';

  CTotalProd.Value := 0;
  SqlCdsEstoqueDetalhe.Close;
  SqlCdsEstoqueDetalhe.CommandText := wSql1 + wSql2;
  SqlCdsEstoqueDetalhe.Open;

end;

function TFormProduto.CamposObrigatorios: Boolean;
begin

     Result := true;
     if (Trim(EdtPrd_Refer.Text) = '') then
     begin
          Result := False;
          Uteis.aviso('Informe a referência !');
          PctrlProdutos.ActivePage := Tbs_Produtos;
          EdtPrd_Refer.SetFocus;
     end;
     if (DBComboBox1.Text = '') then
     begin
          Result := False;
          Uteis.aviso('Informe o tipo de Unidade !');
          PctrlProdutos.ActivePage := Tbs_Produtos;
          DBComboBox1.SetFocus;
     end;

     if (DBEPRD_TIPO.Field.IsNull) then
     begin
          Result := False;
          Uteis.aviso('Informe o Tipo de produto !');
          PctrlProdutos.ActivePage := Tbs_Produtos;
          DBEPRD_TIPO.SetFocus;
     end;

     if (DbePrd_Descri.Field.IsNull) then
     begin
          Result := False;
          Uteis.aviso('Informe a Descrição do produto !');
          PctrlProdutos.ActivePage := Tbs_Produtos;
          DbePrd_Descri.SetFocus;
     end;

     if (CdsProdutosPRD_UTILCONV.AsString = 'S') then
     begin
          if ((CdsProdutosPRD_FATORC.AsCurrency = 0) and (CdsProdutosPRD_FATOR_PROD.AsCurrency = 0)) then
          begin
               Result := False;
               Uteis.aviso('Se ativar o fator de conversão favor informar no minimo um fator!');
          end;
     end;

end;

procedure TFormProduto.DBECustoliquidoEnter(Sender: tObject);
begin
  wcustoliquidoatual := CdsProdutosPRD_PCUSTO.AsCurrency;
end;

procedure TFormProduto.DBECustoliquidoExit(Sender: tObject);
begin

  if not(CdsProdutos.State in [dsBrowse]) then
  begin
    // foi alterado o custo liquido
    if CdsProdutosPRD_PCUSTO.AsCurrency <> wcustoliquidoatual then
    begin
      if Uteis.confirmacao
        ('O Custo Liquido foi alterado. Atualiza o Custo de Entrada Também ?') = Mryes
      then
        CdsProdutosPRD_CUSTOCOMIPI.AsCurrency :=
          CdsProdutosPRD_PCUSTO.AsCurrency;

    end;

    // se margem esta zerada e tem preço de venda então calcula a margem de venda
    if (CdsProdutosPRD_MARGEMVENDA.AsCurrency = 0) and
      (CdsProdutosPRD_PVENDA.AsCurrency > 0) then
      if CdsProdutosPRD_PCUSTO.AsCurrency > CdsProdutosPRD_PVENDA.AsCurrency
      then
      begin
        Uteis.aviso
          ('Atenção : Você digitou o preço de Custo maior que o preço de Venda atual. Os preços serão igualados !');
        CdsProdutosPRD_PVENDA.AsCurrency := CdsProdutosPRD_PCUSTO.AsCurrency;
        CdsProdutosPRD_MARGEMVENDA.AsCurrency := 0;
      end
      else
        CdsProdutosPRD_MARGEMVENDA.AsCurrency :=
          ((CdsProdutosPRD_PVENDA.AsCurrency /
          CdsProdutosPRD_PCUSTO.AsCurrency) - 1) * 100;

    CdsProdutosPRD_DTPCUSTO.AsDateTime := date;
    // se já tem a margem recalcula então o preço de venda e oferta
    if CdsProdutosPRD_MARGEMVENDA.AsCurrency > 0 then
    begin
      CdsProdutosPRD_PVENDA.AsCurrency :=
        (CdsProdutosPRD_PCUSTO.AsCurrency + (CdsProdutosPRD_PCUSTO.AsCurrency *
        CdsProdutosPRD_MARGEMVENDA.AsCurrency / 100));
      if CdsProdutosPRD_MARGEMOFERTA.AsCurrency > 0 then
        CdsProdutosPRD_PRECOOFERTA.AsCurrency :=
          (CdsProdutosPRD_PCUSTO.AsCurrency + (CdsProdutosPRD_PCUSTO.AsCurrency
          * CdsProdutosPRD_MARGEMOFERTA.AsCurrency / 100));
    end;
  end;

end;

procedure TFormProduto.DBEdit24MenuPesquisaClick(Sender: tObject);
VAR
  tcr: TfrmCEST;
begin
  tcr := TfrmCEST.Create(Self);
  try
    tcr.NCM := CdsProdutosIPI_CODIGO.AsString;
    tcr.CampoIDRetorno := 'CEST_COD';
    if tcr.pesquisa(0) then
    begin
      if CdsProdutos.State = dsBrowse then
        CdsProdutos.Edit;
      CdsProdutosCEST_COD.AsString := tcr.idRetorno;
    end;
  finally
    FreeAndNil(tcr);
  end;
end;

procedure TFormProduto.DBEmargemVendaExit(Sender: tObject);
begin
  if not(CdsProdutos.State in [dsBrowse]) then
  begin
    // calcular conforme parametro -> 0 = custo liquido, 1 = custo enttrada
    if wCalcularPV = 0 then
    begin
      if CdsProdutosPRD_PCUSTO.AsCurrency > 0 then
        CdsProdutosPRD_PVENDA.AsCurrency :=
          (CdsProdutosPRD_PCUSTO.AsCurrency + (CdsProdutosPRD_PCUSTO.AsCurrency
          * CdsProdutosPRD_MARGEMVENDA.AsCurrency / 100))
      else
        // se preço de custo = 0 então calcula o preço de custo
        if CdsProdutosPRD_MARGEMVENDA.AsCurrency > 0 then
          CdsProdutosPRD_PCUSTO.AsCurrency := CdsProdutosPRD_PVENDA.AsCurrency /
            (CdsProdutosPRD_MARGEMVENDA.AsCurrency / 100 + 1);
    end
    else
    begin
      if CdsProdutosPRD_CUSTOCOMIPI.AsCurrency > 0 then
        CdsProdutosPRD_PVENDA.AsCurrency :=
          (CdsProdutosPRD_CUSTOCOMIPI.AsCurrency +
          (CdsProdutosPRD_CUSTOCOMIPI.AsCurrency *
          CdsProdutosPRD_MARGEMVENDA.AsCurrency / 100))
      else
        // se preço de custo = 0 então calcula o preço de custo
        if CdsProdutosPRD_MARGEMVENDA.AsCurrency > 0 then
          CdsProdutosPRD_CUSTOCOMIPI.AsCurrency :=
            CdsProdutosPRD_PVENDA.AsCurrency /
            (CdsProdutosPRD_MARGEMVENDA.AsCurrency / 100 + 1);

    end;
  end;
end;

procedure TFormProduto.DBEprecoVendaExit(Sender: tObject);
begin
  if not(CdsProdutos.State in [dsBrowse]) then
  begin
    // calcular conforme parametro -> 0 = custo liquido, 1 = custo enttrada
    if wCalcularPV = 0 then
    begin
      if CdsProdutosPRD_PCUSTO.AsCurrency > 0 then
        CdsProdutosPRD_MARGEMVENDA.AsCurrency :=
          ((CdsProdutosPRD_PVENDA.AsCurrency /
          CdsProdutosPRD_PCUSTO.AsCurrency) - 1) * 100
      else
        // se preço de custo = 0 então calcula o preço de custo
        if CdsProdutosPRD_MARGEMVENDA.AsCurrency > 0 then
          CdsProdutosPRD_PCUSTO.AsCurrency := CdsProdutosPRD_PVENDA.AsCurrency /
            (CdsProdutosPRD_MARGEMVENDA.AsCurrency / 100 + 1);
    end
    else
    begin
      if CdsProdutosPRD_CUSTOCOMIPI.AsCurrency > 0 then
        CdsProdutosPRD_MARGEMVENDA.AsCurrency :=
          ((CdsProdutosPRD_PVENDA.AsCurrency /
          CdsProdutosPRD_CUSTOCOMIPI.AsCurrency) - 1) * 100
      else
        // se preço de custo = 0 então calcula o preço de custo
        if CdsProdutosPRD_MARGEMVENDA.AsCurrency > 0 then
          CdsProdutosPRD_CUSTOCOMIPI.AsCurrency :=
            CdsProdutosPRD_PVENDA.AsCurrency /
            (CdsProdutosPRD_MARGEMVENDA.AsCurrency / 100 + 1);
    end;
  end;
end;

procedure TFormProduto.DBEmargemOfertaExit(Sender: tObject);
begin
  if not(CdsProdutos.State in [dsBrowse]) then
  begin
    // calcular conforme parametro -> 0 = custo liquido, 1 = custo enttrada
    if wCalcularPV = 0 then
      if CdsProdutosPRD_MARGEMOFERTA.AsCurrency > 0 then
        CdsProdutosPRD_PRECOOFERTA.AsCurrency :=
          (CdsProdutosPRD_PCUSTO.AsCurrency + (CdsProdutosPRD_PCUSTO.AsCurrency
          * CdsProdutosPRD_MARGEMOFERTA.AsCurrency / 100))
      else if CdsProdutosPRD_MARGEMOFERTA.AsCurrency > 0 then
        CdsProdutosPRD_PRECOOFERTA.AsCurrency :=
          (CdsProdutosPRD_CUSTOCOMIPI.AsCurrency +
          (CdsProdutosPRD_CUSTOCOMIPI.AsCurrency *
          CdsProdutosPRD_MARGEMOFERTA.AsCurrency / 100));

  end;
end;

procedure TFormProduto.DBEprecoOfertaExit(Sender: tObject);
begin
  if not(CdsProdutos.State in [dsBrowse]) then
  begin
    if CdsProdutosPRD_PRECOOFERTA.AsCurrency > 0 then
      CdsProdutosPRD_MARGEMOFERTA.AsCurrency :=
        ((CdsProdutosPRD_PRECOOFERTA.AsCurrency /
        CdsProdutosPRD_PCUSTO.AsCurrency) - 1) * 100;
  end;
end;

procedure TFormProduto.CdsGradeBeforeInsert(DataSet: TDataSet);
begin
  if (CdsProdutos.isEmpty) then
  begin
    raise Exception.Create('Primeiro Selecione um produto');
  end;
end;

procedure TFormProduto.CdsGradeAfterInsert(DataSet: TDataSet);
begin
  CdsGradeEMP_CODIGO.AsString := dbInicio.empresa.EMP_CODIGO;
  CdsGradePRD_CODIGO.AsString := CdsProdutosPRD_CODIGO.AsString;
  DBEdit59.SetFocus;
end;

procedure TFormProduto.TabGradeShow(Sender: tObject);
begin
  AtualizaProdutoGrade;
end;

procedure TFormProduto.AtualizaProdutoGrade;
begin
  CdsGrade.Close;
  if (not CdsProdutos.isEmpty) then
  begin

    CdsGrade.CommandText := SQLDEF('PRODUTOS', 'SELECT * FROM PRD_GRADE',
      'WHERE PRD_CODIGO = ' + qStr(CdsProdutosPRD_CODIGO.AsString),
      'PRG_DESCRICAO', '');
    CdsGrade.Open;
  end;
end;

procedure TFormProduto.CdsGradeAfterPost(DataSet: TDataSet);
begin
  CdsGrade.ApplyUpdates(0);
  CdsGrade.refresh;
end;

procedure TFormProduto.CdsProdutosReferenciaAfterPost(DataSet: TDataSet);
begin
  CdsProdutosReferencia.ApplyUpdates(0);
  CdsProdutosReferencia.refresh;
end;

procedure TFormProduto.CdsProdutosReferenciaBeforePost(DataSet: TDataSet);
begin
  CdsProdutosReferenciaPRD_CODIGO.AsString := CdsProdutosPRD_CODIGO.AsString;
end;

procedure TFormProduto.CdsProdutosReferenciaBeforeInsert(DataSet: TDataSet);
begin
  dbedtPRDC_REFERENCIA.SetFocus;
end;

procedure TFormProduto.CdsProdutosAfterCancel(DataSet: TDataSet);
begin
     inherited;
     EdtPrd_Refer.ReadOnly:=False;
     EdtPrd_Refer.Enabled:=True;
     EdtPrd_Refer.TabStop:=True;
end;

procedure TFormProduto.CdsProdutosAfterInsert(DataSet: TDataSet);
begin
  inherited;
  CdsProdutosPRD_CODIGO.AsString := StrZero(dbInicio.GetNextSequence('GEN_PRD_CODIGO'),5);
//  CdsProdutosPRD_CODIGO.AsString := IntToStr(dbInicio.GetNextSequence('GEN_PRD_CODIGO'));
end;

procedure TFormProduto.CdsProdutosAfterPost(DataSet: TDataSet);
begin
     inherited;
     EdtPrd_Refer.ReadOnly:=False;
     EdtPrd_Refer.Enabled:=True;
     EdtPrd_Refer.TabStop:=True;

end;

procedure TFormProduto.CdsProdutosAfterScroll(DataSet: TDataSet);
begin
  inherited;
  MostraFichaTecnica(True);
end;

procedure TFormProduto.CdsProdutosBeforeEdit(DataSet: TDataSet);
begin
     inherited;
     DesabilitaBotoes;
     EdtPrd_Refer.ReadOnly:=True;
     EdtPrd_Refer.Enabled:=False;
     EdtPrd_Refer.TabStop:=False;
end;

procedure TFormProduto.CdsProdutosCalcFields(DataSet: TDataSet);
begin
  inherited;
  CdsProdutosPRD_FISICO_CC.AsCurrency := (CdsProdutosPRD_ESTOQUE.AsCurrency + CdsProdutosPRD_ENTRADA.AsCurrency) -
    (CdsProdutosPRD_SAIDA.AsCurrency + CdsProdutosPRD_RESERVA.AsCurrency +
    CdsProdutosPRD_EMPENHO.AsCurrency);
  CdsProdutosPRD_ANTECIPADO_CC.AsCurrency :=
    (CdsProdutosPRD_ESTOQUE.AsCurrency + CdsProdutosPRD_ENTRADA.AsCurrency +
    CdsProdutosPRD_PENDENTE.AsCurrency) -
    (CdsProdutosPRD_SAIDA.AsCurrency + CdsProdutosPRD_RESERVA.AsCurrency +
    CdsProdutosPRD_EMPENHO.AsCurrency);
end;

procedure TFormProduto.CdsProdutosID_PRD_ESPECIFICOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  case SENDER.AsInteger of
  1:text := 'ARMAS';
  2:text := 'VEÍCULOS';
  3:text := 'MEDICAMENTOS';
  4:text := 'COMBUSTÍVEIS';
  end;
end;

procedure TFormProduto.CdsProdutosID_PRD_ESPECIFICOSetText(Sender: TField; const Text: string);
begin
  inherited;
  IF TEXT='ARMAS' THEN
     SENDER.AsInteger:=1
  ELSE
  IF TEXT='VEÍCULOS' THEN
     SENDER.AsInteger:=2
  ELSE
  IF TEXT='MEDICAMENTOS' THEN
     SENDER.AsInteger:=3
  ELSE
  IF TEXT='COMBUSTÍVEIS' THEN
     SENDER.AsInteger:=4
  else
      SENDER.CLEAR;
end;

procedure TFormProduto.CdsProdutosNewRecord(DataSet: TDataSet);
begin
  inherited;
    CdsProdutosPRD_PERC_VENDA.Value  := dbInicio.empresa.wPmt_Percvenda1;
    CdsProdutosPRD_PERC_VENDA2.Value := dbInicio.empresa.wPmt_Percvenda2;
    CdsProdutosPRD_PERC_VENDA3.Value := dbInicio.empresa.wPmt_Percvenda3;
    CdsProdutosPRD_PERC_VENDA4.Value := dbInicio.empresa.wPmt_Percvenda4;
    CdsProdutosPRD_PERC_VENDA5.Value := dbInicio.empresa.wPmt_Percvenda5;
    CdsProdutosPRD_PERC_VENDA6.Value := dbInicio.empresa.wPmt_Percvenda6;

    CdsProdutosPRD_PERC_COMISSAO.Value  := dbInicio.empresa.wPmt_PercComissao1;
    CdsProdutosPRD_PERC_COMISSAO2.Value := dbInicio.empresa.wPmt_PercComissao2;
    CdsProdutosPRD_PERC_COMISSAO3.Value := dbInicio.empresa.wPmt_PercComissao3;
    CdsProdutosPRD_PERC_COMISSAO4.Value := dbInicio.empresa.wPmt_PercComissao4;
    CdsProdutosPRD_PERC_COMISSAO5.Value := dbInicio.empresa.wPmt_PercComissao5;
    CdsProdutosPRD_PERC_COMISSAO6.Value := dbInicio.empresa.wPmt_PercComissao6;
end;

procedure TFormProduto.CdsProdutosReferenciaAfterDelete(DataSet: TDataSet);
begin
  CdsProdutosReferencia.ApplyUpdates(0);
end;

procedure TFormProduto.SpeedButton5Click(Sender: tObject);
begin
   if not assigned(FormPrd_Ipi) then
      begin
        FormPrd_Ipi := TFormPrd_Ipi.Create(Application);
        FormPrd_Ipi.BotoesAcesso;
      if (MDIChildCount > 1) then
             SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)

      //finally
        //FormPrd_Ipi.Destroy;
        //FormPrd_Ipi := nil;
      //end;
      end;
      FormPrd_Ipi.Show;

end;

procedure TFormProduto.OpenClassIpi;
begin
  CdsPrdClassIPI.Close;
  SqlPrdClassIPI.sql.Text := 'SELECT * FROM IPI0000 ' +
    ConcatSE('where ', dbInicio.ExclusivoSql('Tabelas')) +
    ' order by IPI_CODIGO';
  CdsPrdClassIPI.Open;
end;

procedure TFormProduto.JvDBComboBox1Change(Sender: tObject);
begin
  JvDBComboBox1.Hint := JvDBComboBox1.Text;
  JvDBComboBox1.ShowHint := true;
end;

procedure TFormProduto.DbcLkPrd_IPIExit(Sender: tObject);
begin
  if CdsProdutos.State in [dsBrowse] then
    CdsProdutos.Edit;
  if (Trim(DbcLkPrd_IPI.Text) <> '') then
    CdsProdutosSPED_GENCODIGO.AsString := COPY(Trim(DbcLkPrd_IPI.Text), 1, 2);

end;

procedure TFormProduto.DBComboBox1Change(Sender: TObject);
begin
     inherited;
     if CdsProdutos.State=DSbROWSE then
        CdsProdutos.eDIT;
     DesabilitaBotoes;
end;

procedure TFormProduto.btnAddImageClick(Sender: tObject);
begin
  if CdsProdutos.State in [dsBrowse] then
    CdsProdutos.Edit;
  if (OpenDialog1.Execute) then
  begin
    CdsProdutosPRD_FOTO.LoadFromFile(OpenDialog1.FileName);
  end;
  Le_Imagem_JPEG_toBMP(CdsProdutosPRD_FOTO, ImgProduto);
end;

procedure TFormProduto.btnRemoveImageClick(Sender: tObject);
begin
  if CdsProdutos.State in [dsBrowse] then
    CdsProdutos.Edit;
  CdsProdutosPRD_FOTO.AsString := '';
  Le_Imagem_JPEG_toBMP(CdsProdutosPRD_FOTO, ImgProduto);
end;

procedure TFormProduto.TabSheet4Show(Sender: tObject);
begin
  CdsCompras.PacketRecords := 50;
  CdsCompras.Close;
  if (not CdsProdutos.isEmpty) then
  begin
    CdsCompras.CommandText := 'select ' + 't3.enf_emissao, ' +
      't3.enf_notanumber, ' + 't1.for_codigo, ' + 't2.for_razao, ' +
      't1.ENF_CUSTO as  enf_preco, ' +
      'cast(cast(coalesce(t1.ENF_CUSTO * t1.enf_qtde,0) + coalesce(t1.enf_vlsubst,0) + '
      + ' coalesce(t1.enf_it_vlipi,0) + coalesce(t1.enf_it_valfrete,0) + coalesce(t1.enf_it_vlseguro,0) + coalesce(t1.enf_it_vldesp_aces,0)as numeric(18,4)) / t1.enf_qtde as numeric(18,4)) as custo_entrada,'
      + 't1.enf_qtde, ' + 't1.enf_ipialiq, ' +
      'cast(t1.enf_vlsubst / t1.enf_qtde as numeric(18,4)) as enf_vlsubst, ' +
      'cast(t1.enf_it_valfrete / t1.enf_qtde as numeric(18,4)) as enf_it_valfrete, '
      + 'cast(t1.enf_it_vldesp_aces / t1.enf_qtde as numeric(18,4)) as enf_it_vldesp_aces, '
      + 't1.enf_icmsaliq, ' + 't1.enf_cfop, ' + 't1.ENF_IT_DESCTO, ' +
      't2.for_fone, ' + 't2.for_contato ' + 'from enf_it01 t1 ' +
      'join for0000 t2 on (t2.for_codigo = t1.for_codigo) ' +
      'join enf0001 t3 on (t3.enf_notanumber = t1.enf_it_notanumber and t3.for_codigo = t1.for_codigo) '
      + 'where t1.prd_refer = ' + qStr(CdsProdutosPRD_REFER.AsString) + ' '
      + 'order by t3.enf_entrada desc';
    CdsCompras.Open;
  end;
end;

procedure TFormProduto.VeraFichaTcnicaDesteItem1Click(Sender: TObject);
begin
  inherited;
  VisualizaFichaTecnica( CdsItensFichaPRD_REFER_ITENS.AsString );
end;

procedure TFormProduto.dbgrdLoteDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (CdsLotesPRDL_DATA_VALIDADE.AsDateTime < date) then
  begin
    dbgrdLote.Canvas.Font.Color := clRed;
    dbgrdLote.DefaultDrawDataCell(Rect, dbgrdLote.Columns[DataCol]
      .Field, State);
  end;
end;

procedure TFormProduto.CdsLotesAfterDelete(DataSet: TDataSet);
begin
  CdsLotes.ApplyUpdates(0);
end;

procedure TFormProduto.CdsLotesAfterPost(DataSet: TDataSet);
begin
  CdsLotes.ApplyUpdates(0);
  CdsLotes.refresh;
end;

procedure TFormProduto.CdsLotesBeforeInsert(DataSet: TDataSet);
begin
  dbedtPRDL_LOTE.SetFocus;
end;

procedure TFormProduto.CdsLotesBeforePost(DataSet: TDataSet);
begin
  CdsLotesPRD_CODIGO.AsString := CdsProdutosPRD_CODIGO.AsString;
  CdsLotesEMP_CODIGO.AsString := CdsProdutosEMP_CODIGO.AsString;
end;

procedure TFormProduto.CdsLotesPRDL_DATA_FABRICACAOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if (Sender.IsNull) OR (Sender.AsDateTime = 0) THEN
    Text := ''
  ELSE
    Text := DATETOSTR(Sender.AsDateTime);
end;

procedure TFormProduto.SqlItensGradeAfterDelete(DataSet: TDataSet);
begin
  SqlItensGrade.ApplyUpdates(0);
end;

procedure TFormProduto.SqlItensGradeAfterPost(DataSet: TDataSet);
begin
  SqlItensGrade.ApplyUpdates(0);
  SqlItensGrade.refresh;
end;

procedure TFormProduto.CdsGradeAfterDelete(DataSet: TDataSet);
begin
  CdsGrade.ApplyUpdates(0);
end;

procedure TFormProduto.CalculaIndiceGrade;
var
  sUnidade: String;
begin
  if (CdsGrade.State <> dsBrowse) then
  begin
    if (CdsProdutosPRD_UND_GRADE_CALCULO.AsString <> '') then
      sUnidade := CdsProdutosPRD_UND_GRADE_CALCULO.AsString
    else
      sUnidade := CdsProdutosPRD_UND.AsString;

    // M2 Normal
    if (sUnidade = 'M2') and (CdsGradePRG_MEDIDA_1.AsFloat <> 0) and
      (CdsGradePRG_MEDIDA_2.AsFloat <> 0) and (CdsGradePRG_MEDIDA_3.AsFloat = 0)
    then
    begin
      CdsGradePRG_INDICE.AsFloat := CdsGradePRG_MEDIDA_1.AsFloat *
        CdsGradePRG_MEDIDA_2.AsFloat;
      if (CdsGradePRG_REDUCAO_PERCENT.AsFloat > 0) then
        CdsGradePRG_INDICE.AsFloat := CdsGradePRG_INDICE.AsFloat -
          (CdsGradePRG_INDICE.AsFloat *
          (CdsGradePRG_REDUCAO_PERCENT.AsFloat / 100));
    end
    else
      // M2 Doido
      if (sUnidade = 'M2') and (CdsGradePRG_MEDIDA_1.AsFloat <> 0) and
        (CdsGradePRG_MEDIDA_2.AsFloat <> 0) and
        (CdsGradePRG_MEDIDA_3.AsFloat <> 0) then
      begin
        CdsGradePRG_INDICE.AsFloat :=
          (CdsGradePRG_MEDIDA_1.AsFloat * CdsGradePRG_MEDIDA_2.AsFloat *
          CdsGradePRG_MEDIDA_3.AsFloat) / 1000000;
        if (CdsGradePRG_REDUCAO_PERCENT.AsFloat > 0) then
          CdsGradePRG_INDICE.AsFloat := CdsGradePRG_INDICE.AsFloat -
            (CdsGradePRG_INDICE.AsFloat *
            (CdsGradePRG_REDUCAO_PERCENT.AsFloat / 100));
      end
      else
        // M3
        if (sUnidade = 'M3') and (CdsGradePRG_MEDIDA_1.AsFloat <> 0) and
          (CdsGradePRG_MEDIDA_2.AsFloat <> 0) and
          (CdsGradePRG_MEDIDA_3.AsFloat <> 0) then
        begin
          CdsGradePRG_INDICE.AsFloat :=
            (CdsGradePRG_MEDIDA_1.AsFloat * CdsGradePRG_MEDIDA_2.AsFloat *
            CdsGradePRG_MEDIDA_3.AsFloat) / 1000000;
          if (CdsGradePRG_REDUCAO_PERCENT.AsFloat > 0) then
            CdsGradePRG_INDICE.AsFloat := CdsGradePRG_INDICE.AsFloat -
              (CdsGradePRG_INDICE.AsFloat *
              (CdsGradePRG_REDUCAO_PERCENT.AsFloat / 100));
        end
        else
          // M2 LINEAR
          if (sUnidade = 'MT') and (CdsGradePRG_MEDIDA_1.AsFloat <> 0) and
            (CdsGradePRG_MEDIDA_2.AsFloat <> 0) and
            (CdsGradePRG_MEDIDA_3.AsFloat <> 0) then
          begin
            CdsGradePRG_INDICE.AsFloat :=
              ((CdsGradePRG_MEDIDA_1.AsFloat * CdsGradePRG_MEDIDA_2.AsFloat *
              CdsGradePRG_MEDIDA_3.AsFloat) / 1000000);
            if (CdsGradePRG_REDUCAO_PERCENT.AsFloat > 0) then
              CdsGradePRG_INDICE.AsFloat := CdsGradePRG_INDICE.AsFloat -
                (CdsGradePRG_INDICE.AsFloat *
                (CdsGradePRG_REDUCAO_PERCENT.AsFloat / 100));
          end
          else
            CdsGradePRG_INDICE.AsFloat := 0;
  end;

end;

procedure TFormProduto.dbedtPRG_MEDIDA_1Exit(Sender: tObject);
begin
  CalculaIndiceGrade;
end;

procedure TFormProduto.dbedtPRG_MEDIDA_2Exit(Sender: tObject);
begin
  CalculaIndiceGrade;
end;

procedure TFormProduto.dbedtPRG_MEDIDA_3Exit(Sender: tObject);
begin
  CalculaIndiceGrade;
end;

procedure TFormProduto.dbedtPRG_REDUCAO_PERCENTExit(Sender: tObject);
begin
  CalculaIndiceGrade;
end;

procedure TFormProduto.CdsGradeCalcFields(DataSet: TDataSet);
begin
  if (CdsGradePRG_PRECO.AsFloat > 0) then
  begin
    CdsGradeCC_PRECO.AsFloat := CdsGradePRG_PRECO.AsFloat
  end
  else if (CdsProdutos.isEmpty) then
  begin
    CdsGradeCC_PRECO.AsFloat := 0;
  end
  else
  begin
    if (CdsGradePRG_INDICE.AsFloat <= 0) then
      CdsGradeCC_PRECO.AsFloat := CdsProdutosPRD_PVENDA.AsFloat
    else
      CdsGradeCC_PRECO.AsFloat := CdsGradePRG_INDICE.AsFloat *
        CdsProdutosPRD_PVENDA.AsFloat;

  end;
  if (not CdsProdutos.isEmpty) then
  begin
    CdsGradeCC_UND.AsString := CdsProdutosPRD_UND.AsString;
    CdsGradeCC_PRECO_BASE.AsFloat := CdsProdutosPRD_PVENDA.AsFloat;
  end;
end;

procedure TFormProduto.RecalculaIndicesGrade;
begin
  CdsGrade.First;
  while (not CdsGrade.Eof) do
  begin
    CdsGrade.Edit;
    // M2 Normal
    if (CdsProdutosPRD_UND_GRADE_CALCULO.AsString = 'M2') and
      (CdsGradePRG_MEDIDA_1.AsFloat <> 0) and
      (CdsGradePRG_MEDIDA_2.AsFloat <> 0) and (CdsGradePRG_MEDIDA_3.AsFloat = 0)
    then
    begin
      CdsGradePRG_INDICE.AsFloat := CdsGradePRG_MEDIDA_1.AsFloat *
        CdsGradePRG_MEDIDA_2.AsFloat;
      if (CdsGradePRG_REDUCAO_PERCENT.AsFloat > 0) then
        CdsGradePRG_INDICE.AsFloat := CdsGradePRG_INDICE.AsFloat -
          (CdsGradePRG_INDICE.AsFloat *
          (CdsGradePRG_REDUCAO_PERCENT.AsFloat / 100));
    end
    else
      // M2 Doido
      if (CdsProdutosPRD_UND_GRADE_CALCULO.AsString = 'M2') and
        (CdsGradePRG_MEDIDA_1.AsFloat <> 0) and
        (CdsGradePRG_MEDIDA_2.AsFloat <> 0) and
        (CdsGradePRG_MEDIDA_3.AsFloat <> 0) then
      begin
        CdsGradePRG_INDICE.AsFloat :=
          (CdsGradePRG_MEDIDA_1.AsFloat * CdsGradePRG_MEDIDA_2.AsFloat *
          CdsGradePRG_MEDIDA_3.AsFloat) / 1000000;
        if (CdsGradePRG_REDUCAO_PERCENT.AsFloat > 0) then
          CdsGradePRG_INDICE.AsFloat := CdsGradePRG_INDICE.AsFloat -
            (CdsGradePRG_INDICE.AsFloat *
            (CdsGradePRG_REDUCAO_PERCENT.AsFloat / 100));
      end
      else
        // M3
        if (CdsProdutosPRD_UND_GRADE_CALCULO.AsString = 'M3') and
          (CdsGradePRG_MEDIDA_1.AsFloat <> 0) and
          (CdsGradePRG_MEDIDA_2.AsFloat <> 0) and
          (CdsGradePRG_MEDIDA_3.AsFloat <> 0) then
        begin
          CdsGradePRG_INDICE.AsFloat :=
            (CdsGradePRG_MEDIDA_1.AsFloat * CdsGradePRG_MEDIDA_2.AsFloat *
            CdsGradePRG_MEDIDA_3.AsFloat) / 1000000;
          if (CdsGradePRG_REDUCAO_PERCENT.AsFloat > 0) then
            CdsGradePRG_INDICE.AsFloat := CdsGradePRG_INDICE.AsFloat -
              (CdsGradePRG_INDICE.AsFloat *
              (CdsGradePRG_REDUCAO_PERCENT.AsFloat / 100));
        end
        else
          // M2 LINEAR
          if (CdsProdutosPRD_UND_GRADE_CALCULO.AsString = 'MT') and
            (CdsGradePRG_MEDIDA_1.AsFloat <> 0) and
            (CdsGradePRG_MEDIDA_2.AsFloat <> 0) and
            (CdsGradePRG_MEDIDA_3.AsFloat <> 0) then
          begin
            CdsGradePRG_INDICE.AsFloat :=
              ((CdsGradePRG_MEDIDA_1.AsFloat * CdsGradePRG_MEDIDA_2.AsFloat *
              CdsGradePRG_MEDIDA_3.AsFloat) / 1000000);
            if (CdsGradePRG_REDUCAO_PERCENT.AsFloat > 0) then
              CdsGradePRG_INDICE.AsFloat := CdsGradePRG_INDICE.AsFloat -
                (CdsGradePRG_INDICE.AsFloat *
                (CdsGradePRG_REDUCAO_PERCENT.AsFloat / 100));
          end
          else
            CdsGradePRG_INDICE.AsFloat := 0;
    //
    CdsGrade.ApplyUpdates(0);
    CdsGrade.Next;
  end;
end;

procedure TFormProduto.CdsComprasCalcFields(DataSet: TDataSet);
begin
  if (CdsComprasENF_IT_DESCTO.AsCurrency > 0) and
    (CdsComprasENF_QTDE.AsFloat > 0) then
    CdsComprasDescontoAplicado.AsFloat :=
      (CdsComprasENF_IT_DESCTO.AsFloat / CdsComprasENF_QTDE.AsCurrency)
  else
    CdsComprasDescontoAplicado.AsCurrency := 0;
end;

procedure TFormProduto.CadastrarNovaGrade;
var
  sGrade: String;
  sQuery: WideString;
begin
  // Verificar se o produto esta selecionado
  if (EdtRefer.Text = '') then
  begin
    Uteis.aviso('Informe o Produto antes de cadastrar a grade');
  end
  else
  begin
    // Chama a tela de cadastro de grade
    sGradeDescricaoCadastrada := '';
    try
      FrmCadastroGrade := TFrmCadastroGrade.Create(Application);
      FrmCadastroGrade.sProdutoCodigo := RetornaProdutoReferencia
        (EdtRefer.Text);
      FrmCadastroGrade.edtProdutoReferencia.Text := EdtPrd_Refer.Text;
      FrmCadastroGrade.edtProdutoDescricao.Text := EdtProduto.Text;
      FrmCadastroGrade.sProdutoUnidade := 'PC';
      FrmCadastroGrade.rPrecoItem := 0;
      FrmCadastroGrade.ShowModal;
    finally
      FrmCadastroGrade.Destroy;
      FrmCadastroGrade := nil;
    end;

    CbGrade.Condicao := 'prd_codigo = ' +
      qStr(RetornaProdutoReferencia(EdtRefer.Text));

    if (sGradeDescricaoCadastrada <> '') then
    begin
      CbGrade.TextoLocalizar := sGradeDescricaoCadastrada;
      CbGrade.Localizar := true;
      CbGrade.SetFocus;
    end;
  end;
end;

procedure TFormProduto.SdCadastroGradeClick(Sender: tObject);
begin
  CadastrarNovaGrade;
end;

procedure TFormProduto.sgDBLookupCombo1Change(Sender: tObject);
begin
  { if CdsLotes.State=dsBrowse then
    CdsLotes.Edit; }
end;

procedure TFormProduto.sgDBLookupCombo1MenuPesquisaClick(Sender: tObject);
var
  tcr: TFormFornecGrid;
begin
  try
    tcr := TFormFornecGrid.Create(Self);
    tcr.ShowModal;
    if tcr.iRetorno <> '' then
      CdsLotesFOR_CODIGO.AsString := tcr.iRetorno;
  finally
    FreeAndNil(tcr);
  end;

end;

procedure TFormProduto.BuscaVendas;
begin
  CdsVendas.Close;
  if (EdtPrd_Refer.Text <> '') then
  begin
    CdsVendas.CommandText :=   'select  t3.NF_EMISSAO, ' +
                               '        t3.NF_NOTANUMBER, ' +
                               '        t3.NF_NUM_NFE, ' +
                               '        T1.NTP_CFOP, ' +
                               '        t3.PED_CODIGO, '+
                               '        t3.CLI_CODIGO, ' +
                               '        t2.CLI_RAZAO, ' +
                               '        t1.NF_QTDE, ' +
                               '        t1.NF_PRECO, ' +
                               '        CAST((t1.NF_QTDE * t1.NF_PRECO) AS NUMERIC(18,4)) as TOTAL, ' +
                               '        CAST( CASE WHEN T1.NF_IPIALIQ > 0 THEN (t1.NF_PRECO * (T1.NF_IPIALIQ / 100)) ELSE 0 END AS NUMERIC(18,4)) AS VALOR_IPI, '+
                               '        CAST( CASE WHEN T1.NF_VLSUBST > 0 THEN (T1.NF_VLSUBST / t1.NF_QTDE) ELSE 0 END AS NUMERIC(18,4)) AS VALOR_ST, '+
                               '        CAST( CAST((t1.NF_QTDE * t1.NF_PRECO) AS NUMERIC(18,4)) + '+
                               '              CAST( CASE WHEN T1.NF_IPIALIQ > 0 '+
                               '                         THEN (t1.NF_PRECO * (T1.NF_IPIALIQ / 100)) '+
                               '                         ELSE 0 '+
                               '                    END AS NUMERIC(18,4)) + '+
                               '              CAST( CASE WHEN T1.NF_VLSUBST > 0 '+
                               '                         THEN (T1.NF_VLSUBST / t1.NF_QTDE) '+
                               '                         ELSE 0 '+
                               '                    END AS NUMERIC(18,4)) AS NUMERIC(18,4)) AS TOTAL_COM_IMPOSTOS '+
                               'from  NF_IT01 t1  ' +
                               '      join opE0000 D on (D.OPE_TIPO_OPERACAO=''V'') or (D.OPE_TIPO_OPERACAO=''O'')'+
                               '      join NF0001 t3 on (t3.NF_NOTANUMBER = t1.NF_IT_NOTANUMER)  and (T3.OPE_CODIGO = D.OPE_CODIGO)' +
                               '      join CLI0000 t2 on (t2.CLI_CODIGO = t3.CLI_CODIGO) '+
                               'where t1.PRD_REFER = ' + qStr(EdtPrd_Refer.Text) +
                               '      and t3.NF_EMISSAO BETWEEN ' + DateToSql(EditDataI.Date) +' and ' + dateToSql(EditDataF.DAte) +
                               ConcatSE(' and t1.',dbInicio.ExclusivoSql('PRODUTOS') )+
                               ' ORDER BY T3.NF_EMISSAO DESC' ;
    if DELPHIABERTO then
       cOPYtOcLIPbOARD( CdsVendas.cOMMANDtEXT );

    CdsVendas.Open;
  end;
end;

procedure TFormProduto.EditDataIExit(Sender: tObject);
begin
  if EditDataI.Text <> '  /  /    ' then
  begin
    if not TestaDataStr(EditDataI.Text) then
      EditDataI.SetFocus;
  end;
end;

procedure TFormProduto.EditDataFExit(Sender: tObject);
begin
  if EditDataF.Text <> '  /  /    ' then
  begin
    if not TestaDataStr(EditDataF.Text) then
      EditDataF.SetFocus;
  end;
end;

procedure TFormProduto.BitPesquisarClick(Sender: tObject);
begin
  BuscaVendas;
end;

procedure TFormProduto.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
  if (VarName = 'Empresa') then
    Value := dbInicio.empresa.RAZAO
  else if (VarName = 'Filtro') then
    Value := 'Produto : ' + CdsProdutosPRD_REFER.AsString + '-' +
      CdsProdutosPRD_DESCRI.AsString + ' Emissão: ' + EditDataI.Text + ' até ' +
      EditDataF.Text;
end;

procedure TFormProduto.BtnRelatoriosClick(Sender: tObject);
begin
     frxReport1.ShowReport();
end;

procedure TFormProduto.FormCreate(Sender: tObject);
begin
  inherited;

  EdtPrd_Refer.MaxLength:=dbInicio.Empresa.FormatoPadraoReferencia.Length;
  dsTipoProduto.DataSet := CbTipo.CdS;

  wBtnEquivale := dbInicio.GetParametroSistema('PMT_BTN_EQUIV');
  PathNewFicha := dbInicio.GetParametroSistema('PMT_PATHFICHA');
  wBtnAltRefer := dbInicio.GetParametroSistema('PMT_BTN_ALT_REFER');
  Bit_AlterarRef.Visible := wBtnAltRefer='S';
  Bit_AlterarRef.Enabled := wBtnAltRefer='S';

  bAlteraCustosAutomaticosProdutos := (dbInicio.GetParametroUsuario('USP_ALTERA_CUSTOS_PRODUTO') = 'S');
  pVENDA_VER_CUSTO := dbInicio.GetParametroUsuario('PERMITE_VER_CUSTO');
  wVariacoes := dbInicio.GetParametroSistema('PMT_VARIACOES');
  wCalcularPV := StrToIntDef(dbInicio.GetParametroSistema('PMT_CALCULARPV'), 0);
  EditDataI.date := date - 60;
  EditDataF.date := date;
  PctrlProdutos.ActivePageIndex := 1;
  PageControl2.ActivePageIndex := 0;
  Self.Height := 635;
  Self.Width := 976;
  if (dbInicio.empresa.fPmt_multTab = 'S') then
    tsPrecos.PageControl := nil;
  IF (pVENDA_VER_CUSTO <> 'S') then
  BEGIN
       DBECustoliquido.PasswordChar := '*';
       DBECustoEntrada.PasswordChar := '*';
       DBECustoMedio.PasswordChar := '*';
       DBECustoCredito.PasswordChar := '*';
  end;
end;

procedure TFormProduto.FormDestroy(Sender: TObject);
begin
  inherited;
  if (not assigned(FrmPedidoItem)) and (not assigned(FrmEntradaNotaXmlItem)) and (not assigned(FormNfEntrada)) and (not assigned(FormNfEntrada)) then
     FormProduto := Nil;
end;

procedure TFormProduto.DBMemo1KeyPress(Sender: tObject; var Key: Char);
begin
  if (Key <> '#13') then
  begin
    Key := UpCase(Key);
  end;
end;

procedure TFormProduto.SpeedButton7Click(Sender: tObject);
var
  Value: string;

begin
  if (not CdsProdutos.isEmpty) then
  begin
    // Keep asking the user for their town
    repeat
      Value := InputBox('Código Original', 'Entre com o Código:', '');
    until Value <> '';

    CdsCodigoOriginal.Insert;
    CdsCodigoOriginalPRD_CODIGO.AsString := CdsProdutosPRD_CODIGO.AsString;
    CdsCodigoOriginalPRDCO_CODIGO_ORIGINAL.AsString := UpperCase(Value);
    CdsCodigoOriginal.Post;
    CdsCodigoOriginal.ApplyUpdates(0);

    CdsCodigoOriginal.refresh;

  end
  else
  begin
    Uteis.aviso('Nenhum produto selecionado');
  end;
end;

procedure TFormProduto.SpeedButton8Click(Sender: tObject);
begin
  if (not CdsProdutos.isEmpty) then
  begin
    if (not CdsCodigoOriginal.isEmpty) then
    begin
      if (Uteis.confirmacao(Pchar('Confirma a exclusão do código : ' +
        CdsCodigoOriginalPRDCO_CODIGO_ORIGINAL.AsString)) = Mryes) then
      begin
        CdsCodigoOriginal.Delete;
        CdsCodigoOriginal.ApplyUpdates(0);
      end;
    end
    else
    begin
      Uteis.aviso('Nenhum código para ser excluído');
    end;
  end
  else
  begin
    Uteis.aviso('Nenhum produto selecionado');
  end;
end;

procedure TFormProduto.btnSalvarArquivoClick(Sender: tObject);
begin
  if (CdsProdutos.isEmpty) then
  begin
    Uteis.aviso('Selecione um produto');
  end
  else if (FilenameArquivo.FileName = '') then
  begin
    Uteis.aviso('Informe o Arquivo');
  end
  else
  begin
    CdsArquivo.Insert;
    CdsArquivoARQ_TIPO.AsString := ExtractFileExt(FilenameArquivo.FileName);
    CdsArquivoARQ_TIPO_TABELA.AsString := 'PRD';
    CdsArquivoARQ_REGISTRO_TABELA.AsString := CdsProdutosPRD_CODIGO.AsString;
    if (EdDescricaoArquivo.Text <> '') then
      CdsArquivoARQ_DESCRICAO.AsString := EdDescricaoArquivo.Text
    else
      CdsArquivoARQ_DESCRICAO.AsString :=
        ExtractFileName(FilenameArquivo.FileName);
    CdsArquivoARQ_NOME_ARQUIVO.AsString :=
      ExtractFileName(FilenameArquivo.FileName);
    CdsArquivoARQ_DATA.AsDateTime := now;
    CdsArquivoARQ_ARQUIVO.LoadFromFile(FilenameArquivo.FileName);
    CdsArquivo.ApplyUpdates(0);
    CdsArquivo.refresh;
    FilenameArquivo.Clear;
    EdDescricaoArquivo.Clear;
  end;

end;

procedure TFormProduto.AbrirArquivo;
var
  PathBuf: array [0 .. 255] of Char;
  TempPath: string;
begin
  if (not CdsArquivo.isEmpty) then
  begin
    // Recupera o diretorio TEMP do windows
    GetTempPath(SizeOf(PathBuf), PathBuf);
    // Monta o path completo para o nosso diretório temporário
    TempPath := StrPas(PathBuf) + 'Blobs';
    // Verifica se o diretório temporário já existe, caso contrário cria.
    if not DirectoryExists(TempPath) then
      if not ForceDirectories(TempPath) then
      begin
        MessageDlg('Não foi possível criar o diretório temporário!', mtError,
          [mbOk], 0);
        SysUtils.Abort;
      end;
    TempPath := TempPath + '\' + CdsArquivoARQ_NOME_ARQUIVO.AsString;
    // Grava o blob no arquivo temporario
    CdsArquivoARQ_ARQUIVO.SaveToFile(TempPath);
    // Chama a aplicação associada à extensão do arquivo
    try
      ShellExecute(Self.Handle, 'open', Pchar(TempPath), nil, nil,
        SW_SHOWNORMAL)
    finally
      // DeleteFile(TempPath);
    end;
  end;
end;

procedure TFormProduto.DBGrid7DblClick(Sender: tObject);
begin
  AbrirArquivo;
end;

procedure TFormProduto.DBGrid7KeyPress(Sender: tObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    AbrirArquivo;
  end;
end;

procedure TFormProduto.AbrirArquivo1Click(Sender: tObject);
begin
  AbrirArquivo;
end;

procedure TFormProduto.ExcluirArquivo;
begin
  if (not CdsArquivo.isEmpty) then
  begin
    if (Uteis.confirmacao('Confirma a exclusão do Arquivo ') = Mryes) then
    begin
      CdsArquivo.Delete;
      CdsArquivo.ApplyUpdates(0);
    end;
  end;

end;

procedure TFormProduto.ExcluirArquivo1Click(Sender: tObject);
begin
  ExcluirArquivo;
end;

procedure TFormProduto.cbbEnderecamentoExit(Sender: tObject);
begin

  if (cbbEnderecamento.Text <> '') or (cbbEnderecamento.ItemIndex <> 0) then
  begin
    if CdsProdutos.State in [dsBrowse] then
      CdsProdutos.Edit;
    if SqlCdsEnderecamento.Locate('PRDE_ENDERECO', cbbEnderecamento.Text, [])
    then
    begin
      dbedtPRDE_REGISTRO.Text := SqlCdsEnderecamentoPRDE_REGISTRO.AsString;
    end
    else
    begin
      cbbEnderecamento.ItemIndex := 0;
      cbbEnderecamento.Text := '';
      dbedtPRDE_REGISTRO.Text := '';
    end;
  end
  else
  begin
    cbbEnderecamento.ItemIndex := 0;
    cbbEnderecamento.Text := '';
    dbedtPRDE_REGISTRO.Text := '';
  end;

end;

procedure TFormProduto.cbbEnderecamentoClick(Sender: tObject);
begin
  if (cbbEnderecamento.Text <> '') then
  begin
    if CdsProdutos.State in [dsBrowse] then
      CdsProdutos.Edit;
    if SqlCdsEnderecamento.Locate('PRDE_ENDERECO', cbbEnderecamento.Text, [])
    then
      dbedtPRDE_REGISTRO.Field.Text := SqlCdsEnderecamentoPRDE_REGISTRO.AsString
    else
    begin
      dbedtPRDE_REGISTRO.Field.Text := '';
      cbbEnderecamento.ItemIndex := 0;
      cbbEnderecamento.Text := '';
    end;
  end;
end;

procedure TFormProduto.dbedtPRDE_REGISTROExit(Sender: tObject);
begin

  if (dbedtPRDE_REGISTRO.Field.Text <> '') then
  begin
    if SqlCdsEnderecamento.Locate('PRDE_REGISTRO', dbedtPRDE_REGISTRO.Text, [])
       then
    begin
      cbbEnderecamento.Text := SqlCdsEnderecamentoPRDE_ENDERECO.AsString;
    end
    else
    begin
      cbbEnderecamento.Text := '';
      dbedtPRDE_REGISTRO.Field.Text := '';
      cbbEnderecamento.ItemIndex := 0;
    end;
  end;

end;

procedure TFormProduto.btnCadastroEnderecamentoClick(Sender: tObject);
begin

    if not assigned(FrmProdutoEnderecamento) then
      begin
      FrmProdutoEnderecamento := TFrmProdutoEnderecamento.Create(Application);
      FrmProdutoEnderecamento.BotoesAcesso;
      //try
      if (MDIChildCount > 1) then
             SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)

    //finally
           //FreeAndNil(FrmProdutoEnderecamento);
    //end;
    end;
    FrmProdutoEnderecamento.Show;

    cbbEnderecamento.Items.Clear;
    SqlCdsEnderecamento.Close;
    SqlCdsEnderecamento.CommandText :=
      SQLDEF('TABELAS', 'SELECT * FROM PRD0000_ENDERECAMENTO', '',
      'PRDE_ENDERECO', '');
    SqlCdsEnderecamento.Open;
    SqlCdsEnderecamento.First;
    cbbEnderecamento.Items.Add('');
    while not SqlCdsEnderecamento.Eof do
    begin
      cbbEnderecamento.Items.Add(SqlCdsEnderecamentoPRDE_ENDERECO.AsString);
      SqlCdsEnderecamento.Next;
    end;
    if (dbedtPRDE_REGISTRO.Text = '') then
    begin
      cbbEnderecamento.ItemIndex := 0;
      cbbEnderecamento.Text := '';
      dbedtPRDE_REGISTRO.Text := '';
    end
    else if SqlCdsEnderecamento.Locate('PRDE_REGISTRO', dbedtPRDE_REGISTRO.Text,
      [])  then
    begin
      cbbEnderecamento.Text := SqlCdsEnderecamentoPRDE_ENDERECO.AsString;
    end
    else
    begin
      cbbEnderecamento.ItemIndex := 0;
      cbbEnderecamento.Text := '';
      dbedtPRDE_REGISTRO.Text := '';
    end;
end;

procedure TFormProduto.btnExcelClick(Sender: tObject);
var
  Ponto: TPoint;
begin
  inherited;
  Ponto := btnExcel.ClientToScreen(Point(0, btnExcel.Height));
  mnuListar.Popup(Ponto.X, Ponto.Y);
end;

procedure TFormProduto.Listagem1Click(Sender: tObject);
var
  tcr: tFrmExportProdutoExcel;
begin
  try
    tcr := tFrmExportProdutoExcel.Create(Self);
    tcr.botao := tButton(btnExcel);
    tcr.Exportar;
  finally
    FreeAndNil(tcr);
  end;
end;

procedure TFormProduto.N2CdigosdoFornecedor1Click(Sender: tObject);
var
  tcr: tFrmExportCodForn;
begin
  try
    tcr := tFrmExportCodForn.Create(Self);
    tcr.botao := tButton(btnExcel);
    tcr.Exportar;
  finally
    FreeAndNil(tcr);
  end;
end;

procedure TFormProduto.dAfterInsert(DataSet: TDataSet);
begin
  CdsCodigoOriginalPRDCO_REGISTRO.AsInteger :=
    dbInicio.GetNextSequence('gen_prd_codigooriginal_id');
  CdsCodigoOriginalPRD_CODIGO.AsString := CdsProdutosPRD_CODIGO.AsString;
  grCodCli.SelectedField := CdsCodigoOriginalPRDCO_CODIGO_ORIGINAL;

end;

procedure TFormProduto.grCodCliEditButtonClick(Sender: tObject);
var tcr: tFrmPesquisaClientes;
begin
    tcr:= tFrmPesquisaClientes.Create(self);
    try
        tcr.ShowModal;
        if tcr.modalresult = mrok then
        begin
          if CdsCodigoOriginal.State = dsBrowse then
             CdsCodigoOriginal.edit;
          CdsCodigoOriginalCLI_CODIGO.AsString := tcr.IDRetorno;
        end;
    finally
         FreeAndNil(tcr);
    end;
end;

procedure TFormProduto.CdsCodigoOriginalBeforePost(DataSet: TDataSet);
begin
  if CdsCodigoOriginalPRDCO_CODIGO_ORIGINAL.AsString = '' then
    GeraException('Informe o código original do produto!')
  Else if CdsCodigoOriginal.State = dsinsert then
    If dbInicio.BuscaUmDadoSqlAsInteger
      ('select count(*) from PRD_CODIGOORIGINAL where PRD_CODIGO=' +
      qStr(CdsProdutosPRD_CODIGO.AsString) + ' and PRDCO_CODIGO_ORIGINAL=' +
      qStr(CdsCodigoOriginalPRDCO_CODIGO_ORIGINAL.AsString)) > 0 then
      GeraException('Código original do produto já informado!')
end;

procedure TFormProduto.CdsCodigoOriginalAfterPost(DataSet: TDataSet);
begin
  CdsCodigoOriginal.ApplyUpdates(0);
end;

procedure TFormProduto.CdsCodigoOriginalBeforeDelete(DataSet: TDataSet);
begin
  if MessageDlg('Confirma a Exclusão ?', mtConfirmation, [mbYes, mbNo], 0) <> Mryes
  then
    Abort;
end;

procedure TFormProduto.CdsCodigoOriginalAfterDelete(DataSet: TDataSet);
begin
  CdsCodigoOriginal.ApplyUpdates(0);
end;

procedure TFormProduto.CdsCodigoOriginalCLI_CODIGOSetText(Sender: TField; const Text: string);
begin
  inherited;
  sender.asstring := StrZero( StrToIntDef( Text,0 ), 5 );

end;

procedure TFormProduto.CdsCodigoOriginalCLI_CODIGOValidate(Sender: TField);
begin
  CdsCodigoOriginalCLI_RAZAO.AsString := dbInicio.buscaumdadosqlasString('SELECT CLI_RAZAO FROM CLI0000 WHERE CLI_CODIGO=' +qStr(CdsCodigoOriginalCLI_CODIGO.AsString));
  if CdsCodigoOriginalCLI_RAZAO.AsString = '' then
     GeraException('Cliente não localizado!');
end;

procedure TFormProduto.BtnDuplicarClick(Sender: tObject);
var
  tcr: tFrmTelaCopiaProduto;
begin
     tcr := tFrmTelaCopiaProduto.Create(Self);
     try
        tcr.Edit1.Text := EdtPrd_Refer.Text;
        tcr.Edit4.Text := DbePrd_Descri.Text;
        tcr.ShowModal;
        if tcr.ModalResult = mrOk then
        begin
             CdsProdutos.Refresh;
             EdtPrd_Refer.Text := tcr.Edit2.Text;
             EdtPrd_ReferExit(nil);
        end;
  finally
         FreeAndNil(tcr);
  end;
end;

procedure TFormProduto.CdsCodigoOriginalBeforeInsert(DataSet: TDataSet);
begin
  DesabilitaBotoes;
end;

procedure TFormProduto.CdsCodigoOriginalBeforeEdit(DataSet: TDataSet);
begin
  DesabilitaBotoes;
end;

procedure TFormProduto.BotoesAcesso;

begin

     if Assigned(FormProduto) then
     begin
       Bit_novo.Enabled := Uteis.AcessoUsuario('CadastrosProdutos',DBInicio.Usuario.CODIGO,FormProduto).Incluir;
       Bit_Excluir.Enabled := Uteis.AcessoUsuario('CadastrosProdutos',DBInicio.Usuario.CODIGO,FormProduto).Exluir;
       Bit_Relatorio.Enabled := Uteis.AcessoUsuario('CadastrosProdutos',DBInicio.Usuario.CODIGO,FormProduto).Relatorio;
       DsProdutos.AutoEdit := Uteis.AcessoUsuario('CadastrosProdutos',DBInicio.Usuario.CODIGO,FormProduto).Alterar;
     end;
end;

end.




