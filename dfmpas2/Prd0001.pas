unit Prd0001;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  BaseDbForm,
  system.Variants,
  StdCtrls,
  DBCtrls,
  Mask,
  ExtCtrls,
  ComCtrls,
  Buttons,
  DB,
  RwFunc,
  Grids,
  DBGrids,
  DirOutln,
  Provider,
  SqlExpr,
  SqlClientDataSet,
  DBClient,
  rxToolEdit,
  rxCurrEdit,
  RXDBCtrl,
  Menus,
  ppBands,
  ppCtrls,
  ppVar,
  ppPrnabl,
  ppClass,
  ppCache,
  ppProd,
  ppReport,
  ppComm,
  ppRelatv,
  ppDB,
  ppDBPipe,
  ppStrtch,
  ppModule,
  raCodMod,
  MIDASLIB,
  ppParameter,
  jpeg,
  FMTBCd,
  JvExStdCtrls,
  JvCombobox,
  JvDBCombobox,
  ComboBoxRw,
  daDataModule,
  frxClass,
  frxDBSet,
  frxExportXLS,
  frxExportPDF,
  Shellapi,
  SgDbSeachComboUnit,
  SgDbLookupComboUnit,
  JvExDBGrids,
  JvDBGrid,
  JvComponentBase,
  JvFormTransparent,
  ppDesignLayer,
  SimpleDS,
  Data.DBXFirebird,
  ACBrEnterTab,
  ACBrBase,
  ACBrCalculadora,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  cxContainer,
  cxEdit,
  cxTextEdit,
  cxMaskEdit,
  cxDropDownEdit,
  cxDBEdit,
  dxGDIPlusClasses,
  JvExMask,
  JvToolEdit,
  JvDBControls,
  UEquip,
  Uoperacoes,
  copiarEngenharia,
  JvExControls,
  JvArrowButton,
  JvMenus,
  importproduto,
  animacao,
  ppMemo,
  uFiltroExportarExcel,
  JvDBGridExport,
  JvEdit,
  JvValidateEdit,
  JvExComCtrls,
  JvComCtrls,
  cxLookupEdit,
  cxDBLookupEdit,
  cxDBLookupComboBox,
  system.Threading,
  cxBlobEdit,
  StrUtils,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.Async,
  FireDAC.DApt,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  JvMaskEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  TFormProduto = class( TfrmBaseDB )
    DsQFornec : TDataSource;
    CdsFornecedorAux : TSQLClientDataSet;
    CdsFornecedorAuxFOR_CODIGO : TStringField;
    CdsFornecedorAuxFOR_RAZAO : TStringField;
    CdsFornecedorAuxFOR_CONTATO : TStringField;
    CdsFornecedorAuxFOR_FONCONT : TStringField;
    CdsFornecedorAuxFOR_FONE : TStringField;
    CdsFornecedorAuxFOR_EMAIL : TStringField;
    CdsFornecedorAuxFOR_PRAZOVENDAS : TStringField;
    SqlCdsSegm : TSQLClientDataSet;
    SqlCdsSegmLIN_CODIGO : TStringField;
    SqlCdsSegmLIN_DESCRI : TStringField;
    SqlCdsSegmEMP_CODIGO : TStringField;
    SqlCdsfor : TSQLClientDataSet;
    SqlCdsforFOR_CODIGO : TStringField;
    SqlCdsforFOR_RAZAO : TStringField;
    PctrlProdutos : TPageControl;
    Tbs_Produtos : TTabSheet;
    Tbs_FichaTec : TTabSheet;
    GroupBox7 : TGroupBox;
    Label2 : TLabel;
    Label4 : TLabel;
    lcompl : TLabel;
    DbePrd_Descri : TDBEdit;
    Panel8 : TPanel;
    Bit_Lista : TBitBtn;
    Bit_Relatorio : TBitBtn;
    Panel1 : TPanel;
    Bit_Cancelar : TBitBtn;
    Bit_Sair : TBitBtn;
    Bit_novo : TBitBtn;
    Bit_Excluir : TBitBtn;
    Bit_Gravar : TBitBtn;
    PAN_FTC03 : TPanel;
    Label32 : TLabel;
    Label35 : TLabel;
    Label36 : TLabel;
    DbeFTC_TUP : TDBEdit;
    EdtDescricao : TEdit;
    SqlCdsProduto : TSQLClientDataSet;
    SqlCdsProdutoPRD_DCVAR1 : TStringField;
    SqlCdsProdutoPRD_DCVAR2 : TStringField;
    SqlCdsProdutoPRD_DCVAR3 : TStringField;
    SqlCdsProdutoPRD_DCVAR4 : TStringField;
    SqlCdsProdutoPRD_DCVAR5 : TStringField;
    SqlCdsProdutoPRD_DCVAR6 : TStringField;
    SqlCdsProdutoPRD_DCVAR7 : TStringField;
    SqlCdsProdutoPRD_DCVAR8 : TStringField;
    PAN_FTC02 : TPanel;
    DBNavigator1 : TDBNavigator;
    EdtPrd_codigo : TEdit;
    CdsItensFicha : TClientDataSet;
    DsItensFicha : TDataSource;
    SqlCdsMaterial : TSQLClientDataSet;
    SqlRelProdutos : TSQLClientDataSet;
    SqlRelProdutosFTC_TUP : TFMTBCdField;
    SqlRelProdutosFTC_CRIACAO : TSQLTimeStampField;
    SqlRelProdutosPRD_DCVAR1 : TStringField;
    SqlRelProdutosPRD_DCVAR2 : TStringField;
    SqlRelProdutosPRD_DCVAR3 : TStringField;
    SqlRelProdutosPRD_DCVAR4 : TStringField;
    SqlRelProdutosPRD_DCVAR5 : TStringField;
    SqlRelProdutosPRD_DCVAR6 : TStringField;
    SqlRelProdutosPRD_DCVAR7 : TStringField;
    SqlRelProdutosPRD_DCVAR8 : TStringField;
    SqlRelProdutosFTC_PROC1 : TStringField;
    SqlRelProdutosFTC_PROC2 : TStringField;
    SqlRelProdutosFTC_PROC3 : TStringField;
    SqlRelProdutosFTC_PROC4 : TStringField;
    SqlRelProdutosFTC_PROC5 : TStringField;
    SqlRelProdutosFTC_PROC6 : TStringField;
    SqlRelProdutosFTC_PROC7 : TStringField;
    SqlRelProdutosFTC_PROC8 : TStringField;
    SqlRelProdutosPTI_CODIGO : TStringField;
    SqlRelProdutosPTI_DESCRI : TStringField;
    SqlRelProdutosPGR_CODIGO : TStringField;
    SqlRelProdutosPGR_DESCRI : TStringField;
    SqlRelProdutosLIN_CODIGO : TStringField;
    SqlRelProdutosLIN_DESCRI : TStringField;
    DsRelProduto : TDataSource;
    SqlItensGrade : TSQLClientDataSet;
    SqlItensGradeFTI_REGISTRO : TIntegerField;
    SqlItensGradeFTI_MODIFICADA : TSQLTimeStampField;
    SqlItensGradeFTI_UC : TFMTBCdField;
    SqlItensGradeFTI_UCMODIFIC : TFMTBCdField;
    SqlItensGradeFTI_MODE1 : TStringField;
    SqlItensGradeFTI_MODE2 : TStringField;
    SqlItensGradeFTI_MODE3 : TStringField;
    SqlItensGradeFTI_MODE4 : TStringField;
    SqlItensGradeFTI_MODE5 : TStringField;
    SqlItensGradeFTI_MODE6 : TStringField;
    SqlItensGradeFTI_MODE7 : TStringField;
    SqlItensGradeFTI_MODE8 : TStringField;
    SqlItensGradeFTI_PRECOCUSTO : TFMTBCdField;
    SqlItensGradeEMP_CODIGO : TStringField;
    SqlItensGradePRD_UND : TStringField;
    DsRelItens : TDataSource;
    SqlItensGradePRD_GRADE : TStringField;
    CdsRelItens : TClientDataSet;
    CdsRelItensPRD_DESCRI : TStringField;
    CdsRelItensPRD_UND : TStringField;
    CdsRelItensFTI_MODE1 : TStringField;
    CdsRelItensFTI_MODE2 : TStringField;
    CdsRelItensFTI_MODE3 : TStringField;
    CdsRelItensFTI_MODE4 : TStringField;
    CdsRelItensFTI_MODE5 : TStringField;
    CdsRelItensFTI_MODE6 : TStringField;
    CdsRelItensFTI_MODE7 : TStringField;
    CdsRelItensFTI_MODE8 : TStringField;
    CdsRelItensFTI_UC : TCurrencyField;
    DsItensGrade : TDataSource;
    CdsRelItensFTI_ITEM : TStringField;
    SqlItensGradePRD_PCUSTO : TFMTBCdField;
    SqlItensGradeFTI_NIVEL : TIntegerField;
    SqlItensGradeFTI_SEQUENCIA : TIntegerField;
    SqlItensGradeFTI_REFER_PAI : TStringField;
    SqlItensGradeFTI_TIPO_PI : TStringField;
    SqlCdsFichaTec : TSQLClientDataSet;
    SqlItensGradePTI_SIGLA : TStringField;
    SqlItensGradeGrade_cc : TStringField;
    PopupMenu1 : TPopupMenu;
    AlterarItensdaFichaTecnica1 : TMenuItem;
    ExcluirItensdaFichaTcnica1 : TMenuItem;
    CdsRelItensPTI_SIGLA : TStringField;
    Tbs_Detalhe : TTabSheet;
    GroupBox10 : TGroupBox;
    DBGrid2 : TDBGrid;
    SqlCdsEstoqueDetalhe : TSQLClientDataSet;
    SqlCdsEstoqueDetalheOSV_CODIGO : TStringField;
    SqlCdsEstoqueDetalheOSV_QTDE : TFMTBCdField;
    SqlCdsEstoqueDetalheOSV_QTDE1 : TFMTBCdField;
    SqlCdsEstoqueDetalheOSV_QTDE2 : TFMTBCdField;
    SqlCdsEstoqueDetalheOSV_QTDE3 : TFMTBCdField;
    SqlCdsEstoqueDetalheOSV_QTDE4 : TFMTBCdField;
    SqlCdsEstoqueDetalheOSV_QTDE5 : TFMTBCdField;
    SqlCdsEstoqueDetalheOSV_QTDE6 : TFMTBCdField;
    SqlCdsEstoqueDetalheOSV_QTDE7 : TFMTBCdField;
    SqlCdsEstoqueDetalheOSV_QTDE8 : TFMTBCdField;
    SqlCdsEstoqueDetalheOSV_STATUS : TStringField;
    DsEstoqueDetalhe : TDataSource;
    SqlCdsEstoqueDetalheCC_STATUS : TStringField;
    SqlCdsEstoqueDetalheCC_QTDE : TCurrencyField;
    SqlCdsEstoqueDetalheCC_VARIACAO : TStringField;
    Label65 : TLabel;
    SqlCdsEstoqueDetalheOSV_EMISSAO : TSQLTimeStampField;
    SqlCdsEstoqueDetalheCLI_RAZAO : TStringField;
    SqlCdsVar : TSQLClientDataSet;
    SqlCdsEstoqueDetalhePED_CODIGO : TStringField;
    SqlCdsVarPRF_VAR1 : TFMTBCdField;
    SqlCdsVarPRF_VAR2 : TFMTBCdField;
    SqlCdsVarPRF_VAR3 : TFMTBCdField;
    SqlCdsVarPRF_VAR4 : TFMTBCdField;
    SqlCdsVarPRF_VAR5 : TFMTBCdField;
    SqlCdsVarPRF_VAR6 : TFMTBCdField;
    SqlCdsVarPRF_VAR7 : TFMTBCdField;
    SqlCdsVarPRF_VAR8 : TFMTBCdField;
    SqlCdsVarPED_SITUACAO : TStringField;
    SqlCdsVarOPV_ATESTOQUE : TStringField;
    SqlCdsVarPED_CODIGO : TStringField;
    DataSource1 : TDataSource;
    ppDBPipeline1 : TppDBPipeline;
    ppDBPipeline2 : TppDBPipeline;
    ppRelFichaTec : TppReport;
    PgCtrl_Produtos : TPageControl;
    TbS_Caract : TTabSheet;
    RichDoc : TRichEdit;
    BitBtn1 : TBitBtn;
    TabSheet3 : TTabSheet;
    Panel16 : TPanel;
    gbCustos : TGroupBox;
    Label41 : TLabel;
    Label76 : TLabel;
    Label78 : TLabel;
    Label81 : TLabel;
    DBECustoliquido : TDBEdit;
    DBECustoEntrada : TDBEdit;
    DBECustoMedio : TDBEdit;
    gbMargens : TGroupBox;
    Label82 : TLabel;
    Label83 : TLabel;
    DBEmargemVenda : TDBEdit;
    DBEmargemOferta : TDBEdit;
    gbPrecos : TGroupBox;
    Label79 : TLabel;
    Label80 : TLabel;
    DBEprecoVenda : TDBEdit;
    DBComboBox3 : TDBComboBox;
    GroupBox14 : TGroupBox;
    Label84 : TLabel;
    Label86 : TLabel;
    TabSheet1 : TTabSheet;
    TbS_Fornec : TTabSheet;
    DBGrid1 : TDBGrid;
    TbS_FatorConv : TTabSheet;
    Label17 : TLabel;
    utilizar : TDBCheckBox;
    GroupBox1 : TGroupBox;
    Label19 : TLabel;
    Label20 : TLabel;
    Label27 : TLabel;
    Label74 : TLabel;
    DBEdit1 : TDBEdit;
    DBEdit2 : TDBEdit;
    DBEdit3 : TDBEdit;
    GroupBox6 : TGroupBox;
    DBRadioGroup1 : TDBRadioGroup;
    DBEdit51 : TDBEdit;
    DBRadioGroup2 : TDBRadioGroup;
    TbS_Variacoes : TTabSheet;
    Label28 : TLabel;
    Label31 : TLabel;
    Label1 : TLabel;
    Label21 : TLabel;
    Label45 : TLabel;
    Label46 : TLabel;
    Label47 : TLabel;
    Label48 : TLabel;
    Label49 : TLabel;
    Label50 : TLabel;
    Label51 : TLabel;
    Label52 : TLabel;
    Label14 : TLabel;
    Label15 : TLabel;
    DbeVar1 : TDBEdit;
    DbeVar4 : TDBEdit;
    DbeVar5 : TDBEdit;
    DbeVar2 : TDBEdit;
    DbeVar3 : TDBEdit;
    DBEdit9 : TDBEdit;
    DBEdit10 : TDBEdit;
    DBEdit11 : TDBEdit;
    DBEdit12 : TDBEdit;
    DBEdit13 : TDBEdit;
    DbeVar6 : TDBEdit;
    DBEdit15 : TDBEdit;
    DbeVar7 : TDBEdit;
    DbeVAr8 : TDBEdit;
    DBEdit5 : TDBEdit;
    DBEdit6 : TDBEdit;
    Label77 : TLabel;
    DBEcomissao : TDBEdit;
    DBECustoCredito : TDBEdit;
    tsPrecos : TTabSheet;
    Panel6 : TPanel;
    GroupBox4 : TGroupBox;
    LabTabelaVenda : TLabel;
    LabTabela2 : TLabel;
    DBEdit20 : TDBEdit;
    DBEdit50 : TDBEdit;
    LabTabela3 : TLabel;
    DBEdit52 : TDBEdit;
    GroupBox5 : TGroupBox;
    Label63 : TLabel;
    DBEdit56 : TDBEdit;
    DBEdit57 : TDBEdit;
    Label66 : TLabel;
    DBEdit58 : TDBEdit;
    SqlRelProdutosPRD_DESCRI : TStringField;
    SqlItensGradePRD_DESCRI : TStringField;
    SqlCdsMaterialPRD_DESCRI : TStringField;
    SqlCdsEstoqueDetalhePRD_DESCRI : TStringField;
    CdsSaldos : TClientDataSet;
    CdsSaldosAMX_CODIGO_RET : TStringField;
    CdsSaldosAMX_DESCRI_RET : TStringField;
    CdsSaldosAMX_SALDO_RET : TFMTBCdField;
    DspSaldos : TDataSetProvider;
    SqlSaldos : TSQLDataSet;
    SqlSaldosAMX_CODIGO_RET : TStringField;
    SqlSaldosAMX_DESCRI_RET : TStringField;
    SqlSaldosAMX_SALDO_RET : TFMTBCdField;
    DsSaldos : TDataSource;
    DBRadClasse : TDBRadioGroup;
    SqlCdsProdutoPRD_DESCRI : TStringField;
    pfoto : TPanel;
    ImgProduto : TImage;
    TabGrade : TTabSheet;
    GroupBox8 : TGroupBox;
    DBGrid3 : TDBGrid;
    DsGrade : TDataSource;
    CdsGrade : TClientDataSet;
    DspGrade : TDataSetProvider;
    SqlGrade : TSQLDataSet;
    SqlGradePRG_REGISTRO : TIntegerField;
    SqlGradeEMP_CODIGO : TStringField;
    SqlGradePRG_SALDO : TFMTBCdField;
    SqlGradePRG_DESCRICAO : TStringField;
    SqlGradePRG_PRECO : TFMTBCdField;
    CdsGradePRG_REGISTRO : TIntegerField;
    CdsGradeEMP_CODIGO : TStringField;
    CdsGradePRG_SALDO : TFMTBCdField;
    CdsGradePRG_DESCRICAO : TStringField;
    CdsGradePRG_PRECO : TFMTBCdField;
    GroupBox15 : TGroupBox;
    Label26 : TLabel;
    Label39 : TLabel;
    Label64 : TLabel;
    Label87 : TLabel;
    DBEdit7 : TDBEdit;
    DBEdit8 : TDBEdit;
    DBEdit14 : TDBEdit;
    DBEdit17 : TDBEdit;
    GroupBox16 : TGroupBox;
    Label40 : TLabel;
    Label62 : TLabel;
    DBEdit18 : TDBEdit;
    DBEdit19 : TDBEdit;
    Panel7 : TPanel;
    Label16 : TLabel;
    Label71 : TLabel;
    Label72 : TLabel;
    Label73 : TLabel;
    DBeFor_codigo : TDBEdit;
    EdtFor : TEdit;
    DBEdit4 : TDBEdit;
    DBEdit27 : TDBEdit;
    DBEdit28 : TDBEdit;
    DBEdit29 : TDBEdit;
    DBEdit48 : TDBEdit;
    DBEdit49 : TDBEdit;
    CdsSpedTipo : TSQLClientDataSet;
    CdsSpedTipoSPED_TIPREGISTRO : TIntegerField;
    CdsSpedTipoSPED_TIPCODIGO : TStringField;
    CdsSpedTipoSPED_TIPDESCRI : TStringField;
    CdsSpedTipoEMP_CODIGO : TStringField;
    dsSpedTipo : TDataSource;
    CdsSpedServico : TSQLClientDataSet;
    CdsSpedGenero : TSQLClientDataSet;
    dsSpedServico : TDataSource;
    dsSpedGenero : TDataSource;
    CdsSpedServicoSRV_REGISTRO : TIntegerField;
    CdsSpedServicoEMP_CODIGO : TStringField;
    CdsSpedServicoSRV_CODIGO : TStringField;
    CdsSpedServicoSRV_DESCRICAO : TStringField;
    CdsSpedServicoSRV_LANCAMENTO : TStringField;
    CdsSpedGeneroSPED_GENREGISTRO : TIntegerField;
    CdsSpedGeneroSPED_GENCODIGO : TStringField;
    CdsSpedGeneroSPED_GENDESCRI : TStringField;
    CdsSpedGeneroEMP_CODIGO : TStringField;
    TabSheet5 : TTabSheet;
    dsProdutosReferencia : TDataSource;
    DBGrid4 : TDBGrid;
    DBLookupComboBox2 : TDBLookupComboBox;
    Label91 : TLabel;
    Label92 : TLabel;
    DBNavigator3 : TDBNavigator;
    dsFornecedor : TDataSource;
    CdsFornecedor : TSQLClientDataSet;
    CdsFornecedorFOR_CODIGO : TStringField;
    CdsFornecedorFOR_RAZAO : TStringField;
    SQLProdutoCodigo : TSQLDataSet;
    SQLProdutoCodigoPRDC_REGISTRO : TIntegerField;
    SQLProdutoCodigoPRD_CODIGO : TStringField;
    SQLProdutoCodigoFOR_CODIGO : TStringField;
    SQLProdutoCodigoFOR_RAZAO : TStringField;
    DspProdutoCodigo : TDataSetProvider;
    CdsProdutosReferencia : TClientDataSet;
    CdsProdutosReferenciaPRDC_REGISTRO : TIntegerField;
    CdsProdutosReferenciaPRD_CODIGO : TStringField;
    CdsProdutosReferenciaFOR_CODIGO : TStringField;
    CdsProdutosReferenciaFOR_RAZAO : TStringField;
    OpenDialog1 : TOpenDialog;
    SQLProdutoCodigoPRDC_REFERENCIA : TStringField;
    CdsProdutosReferenciaPRDC_REFERENCIA : TStringField;
    TabSheet4 : TTabSheet;
    dbgrdCompras : TDBGrid;
    CdsCompras : TSQLClientDataSet;
    CdsComprasENF_EMISSAO : TDateField;
    CdsComprasENF_NOTANUMBER : TStringField;
    CdsComprasFOR_CODIGO : TStringField;
    CdsComprasFOR_RAZAO : TStringField;
    CdsComprasENF_PRECO : TFMTBCdField;
    CdsComprasCUSTO_ENTRADA : TFMTBCdField;
    CdsComprasENF_QTDE : TFMTBCdField;
    CdsComprasENF_IPIALIQ : TFMTBCdField;
    CdsComprasENF_VLSUBST : TFMTBCdField;
    CdsComprasENF_IT_VALFRETE : TFMTBCdField;
    CdsComprasENF_IT_VLDESP_ACES : TFMTBCdField;
    CdsComprasENF_ICMSALIQ : TFMTBCdField;
    CdsComprasENF_CFOP : TStringField;
    CdsComprasFOR_FONE : TStringField;
    CdsComprasFOR_CONTATO : TStringField;
    dsCompras : TDataSource;
    dsLote : TDataSource;
    dbedtPRDC_REFERENCIA : TDBEdit;
    SqlGradePRG_MEDIDA_1 : TFMTBCdField;
    SqlGradePRG_MEDIDA_2 : TFMTBCdField;
    SqlGradePRG_MEDIDA_3 : TFMTBCdField;
    SqlGradePRG_REDUCAO_PERCENT : TFMTBCdField;
    SqlGradePRG_INDICE : TFMTBCdField;
    CdsGradePRG_MEDIDA_1 : TFMTBCdField;
    CdsGradePRG_MEDIDA_2 : TFMTBCdField;
    CdsGradePRG_MEDIDA_3 : TFMTBCdField;
    CdsGradePRG_REDUCAO_PERCENT : TFMTBCdField;
    CdsGradePRG_INDICE : TFMTBCdField;
    CdsGradeCC_PRECO : TFloatField;
    CdsGradeCC_UND : TStringField;
    CdsGradeCC_PRECO_BASE : TFloatField;
    CdsComprasENF_IT_DESCTO : TFMTBCdField;
    CdsComprasDescontoAplicado : TFloatField;
    Label105 : TLabel;
    dbedtPRD_DTPCUSTO : TDBEdit;
    SQLProdutoCodigoPRDC_DESSCRICAO : TStringField;
    CdsProdutosReferenciaPRDC_DESSCRICAO : TStringField;
    dbedtPRDC_DESSCRICAO : TDBEdit;
    Label106 : TLabel;
    SqlItensGradePRD_REFER : TStringField;
    SqlItensGradePRD_REFER_ITENS : TStringField;
    SqlRelProdutosPRD_REFER : TStringField;
    SqlCdsProdutoPRD_REFER : TStringField;
    SqlCdsVarPRD_REFER : TStringField;
    SqlCdsMaterialPRD_REFER : TStringField;
    SqlCdsEstoqueDetalhePRD_REFER : TStringField;
    CdsRelItensPRD_REFER : TStringField;
    CdsRelItensPRD_REFER_ITENS : TStringField;
    Label110 : TLabel;
    tsVendas : TTabSheet;
    GroupBox18 : TGroupBox;
    BitPesquisar : TBitBtn;
    BtnRelatorios : TBitBtn;
    GroupBox19 : TGroupBox;
    DBGrid5 : TDBGrid;
    CdsVendas : TSQLClientDataSet;
    CdsVendasNF_EMISSAO : TDateField;
    CdsVendasNF_NOTANUMBER : TStringField;
    CdsVendasNF_NUM_NFE : TIntegerField;
    CdsVendasNTP_CFOP : TIntegerField;
    CdsVendasPED_CODIGO : TStringField;
    CdsVendasCLI_CODIGO : TStringField;
    CdsVendasCLI_RAZAO : TStringField;
    CdsVendasNF_QTDE : TFMTBCdField;
    CdsVendasNF_PRECO : TFMTBCdField;
    CdsVendasTOTAL : TFMTBCdField;
    CdsVendasVALOR_IPI : TFMTBCdField;
    CdsVendasVALOR_ST : TFMTBCdField;
    CdsVendasTOTAL_COM_IMPOSTOS : TFMTBCdField;
    dsVendas : TDataSource;
    frxReport1 : TfrxReport;
    frxdbdtstVendas : TfrxDBDataset;
    frxPDFExport1 : TfrxPDFExport;
    frxXLSExport1 : TfrxXLSExport;
    SqlGradePRD_CODIGO : TStringField;
    CdsGradePRD_CODIGO : TStringField;
    mComplemento : TDBMemo;
    DsCodigoOriginal : TDataSource;
    CdsCodigoOriginal : TClientDataSet;
    DspCodigoOriginal : TDataSetProvider;
    PageControl2 : TPageControl;
    TabSheet9 : TTabSheet;
    TabSheet10 : TTabSheet;
    TabSheet11 : TTabSheet;
    JvDBComboBox1 : TJvDBComboBox;
    Label93 : TLabel;
    Label18 : TLabel;
    DBePrd_minimo : TDBEdit;
    Label24 : TLabel;
    DbePrd_Maximo : TDBEdit;
    GroupBox3 : TGroupBox;
    Label88 : TLabel;
    DBtipoSPED : TDBEdit;
    dblkcbbSPED_TIPCODIGO : TDBLookupComboBox;
    Label90 : TLabel;
    edGeneroSPED : TDBEdit;
    dblkcbbSPED_GENCODIGO : TDBLookupComboBox;
    Label89 : TLabel;
    DBEdit62 : TDBEdit;
    dblkcbbSRV_REGISTRO : TDBLookupComboBox;
    Label34 : TLabel;
    DbcLkPrd_IPI : TDBLookupComboBox;
    SpeedButton6 : TSpeedButton;
    Label38 : TLabel;
    DBEdit16 : TDBEdit;
    DbePrd_ICMSubs : TDBEdit;
    DBE_SITRIBUT : TDBEdit;
    DBLookupComboBox1 : TDBLookupComboBox;
    DBEdit22 : TDBEdit;
    Label6 : TLabel;
    Label3 : TLabel;
    EdtPrd_Refer : TEdit;
    Bit_AlterarRef : TBitBtn;
    Bit_Equivalencia : TBitBtn;
    GroupBox21 : TGroupBox;
    Label23 : TLabel;
    DBEPRD_TIPO : TDBEdit;
    CbTipo : TSgDbLookupCombo;
    CbGrupo : TSgDbLookupCombo;
    DBEPRD_GRUPO : TDBEdit;
    Label22 : TLabel;
    Label7 : TLabel;
    DBEPRD_SEGMENTO : TDBEdit;
    CbSegm : TSgDbLookupCombo;
    GroupBox22 : TGroupBox;
    Label30 : TLabel;
    DbePrd_PesoLiq : TDBEdit;
    Label25 : TLabel;
    DbePrd_PesoKg : TDBEdit;
    Label5 : TLabel;
    DbePrd_embala : TDBEdit;
    Label9 : TLabel;
    DbePrd_Garantia : TDBEdit;
    Label13 : TLabel;
    DBEPRD_CODBAR : TDBEdit;
    GroupBox23 : TGroupBox;
    dbchkProdutoAtivo : TDBCheckBox;
    dbchkPRD_GERENCIA_LOTE : TDBCheckBox;
    DBCheckBox1 : TDBCheckBox;
    Label109 : TLabel;
    dbcbbPRD_UND_GRADE_CALCULO : TDBComboBox;
    TabSheet6 : TTabSheet;
    GroupBox9 : TGroupBox;
    GroupBox24 : TGroupBox;
    DBGrid7 : TDBGrid;
    FilenameArquivo : TFilenameEdit;
    Label29 : TLabel;
    Label67 : TLabel;
    EdDescricaoArquivo : TEdit;
    btnSalvarArquivo : TBitBtn;
    SqlArquivo : TSQLDataSet;
    DspArquivo : TDataSetProvider;
    CdsArquivo : TClientDataSet;
    dsArquivo : TDataSource;
    SqlArquivoARQ_REGISTRO : TIntegerField;
    SqlArquivoARQ_TIPO : TStringField;
    SqlArquivoARQ_TIPO_TABELA : TStringField;
    SqlArquivoARQ_REGISTRO_TABELA : TStringField;
    SqlArquivoARQ_ARQUIVO : TBlobField;
    SqlArquivoARQ_DESCRICAO : TStringField;
    SqlArquivoARQ_DATA : TDateField;
    CdsArquivoARQ_REGISTRO : TIntegerField;
    CdsArquivoARQ_TIPO : TStringField;
    CdsArquivoARQ_TIPO_TABELA : TStringField;
    CdsArquivoARQ_REGISTRO_TABELA : TStringField;
    CdsArquivoARQ_ARQUIVO : TBlobField;
    CdsArquivoARQ_DESCRICAO : TStringField;
    CdsArquivoARQ_DATA : TDateField;
    SqlArquivoARQ_NOME_ARQUIVO : TStringField;
    CdsArquivoARQ_NOME_ARQUIVO : TStringField;
    pmArquivo : TPopupMenu;
    ExcluirArquivo1 : TMenuItem;
    AbrirArquivo1 : TMenuItem;
    N1 : TMenuItem;
    btnCadastroEnderecamento : TSpeedButton;
    Label68 : TLabel;
    SqlCdsEnderecamento : TSQLClientDataSet;
    SqlCdsEnderecamentoPRDE_REGISTRO : TIntegerField;
    SqlCdsEnderecamentoEMP_CODIGO : TStringField;
    SqlCdsEnderecamentoPRDE_ENDERECO : TStringField;
    Label69 : TLabel;
    DBCheckBox2 : TDBCheckBox;
    DBEdit24 : TSgDbLookupCombo;
    btnExcel : TBitBtn;
    mnuListar : TPopupMenu;
    Listagem1 : TMenuItem;
    N2 : TMenuItem;
    N2CdigosdoFornecedor1 : TMenuItem;
    TabSheet2 : TTabSheet;
    grCodCli : TJvDBGrid;
    SqlCodCli : TSQLQuery;
    SqlCodCliPRDCO_REGISTRO : TIntegerField;
    SqlCodCliPRD_CODIGO : TStringField;
    SqlCodCliPRDCO_CODIGO_ORIGINAL : TStringField;
    SqlCodCliCLI_CODIGO : TStringField;
    SqlCodCliPRDCO_DESCRICAO : TStringField;
    SqlCodCliCLI_RAZAO : TStringField;
    CdsCodigoOriginalPRDCO_REGISTRO : TIntegerField;
    CdsCodigoOriginalPRD_CODIGO : TStringField;
    CdsCodigoOriginalPRDCO_CODIGO_ORIGINAL : TStringField;
    CdsCodigoOriginalCLI_CODIGO : TStringField;
    CdsCodigoOriginalPRDCO_DESCRICAO : TStringField;
    CdsCodigoOriginalCLI_RAZAO : TStringField;
    BtnDuplicar : TBitBtn;
    JvTransparentForm1 : TJvTransparentForm;
    Lotes : TTabSheet;
    dbgrdLote : TDBGrid;
    Panel2 : TPanel;
    DBNavigator4 : TDBNavigator;
    Label75 : TLabel;
    DBEdit25 : TDBEdit;
    dbedtPRDL_PRECO_MAXIMO : TDBEdit;
    Label97 : TLabel;
    Label96 : TLabel;
    Label95 : TLabel;
    Label98 : TLabel;
    dbedtPRDL_DESCRICAO : TDBEdit;
    Label112 : TLabel;
    DBEdit26 : TDBEdit;
    sgDBLookupCombo1 : TSgDbLookupCombo;
    Label70 : TLabel;
    Label99 : TLabel;
    dbedtPRDL_LOTE : TDBEdit;
    Label94 : TLabel;
    qFor : TSQLQuery;
    qForFOR_CODIGO : TStringField;
    qForFOR_RAZAO : TStringField;
    Label490 : TLabel;
    DBEdit33 : TDBEdit;
    SgDbSearchCombo1 : TSgDbSearchCombo;
    DbePrd_ICMS : TDBEdit;
    Label33 : TLabel;
    qCstPC : TSQLQuery;
    TabSheet7 : TTabSheet;
    DBCheckBox3 : TDBCheckBox;
    Label113 : TLabel;
    SqlProdutos : TSQLQuery;
    SqlProdutosPRD_CODIGO : TStringField;
    SqlProdutosPRD_DTCADASTRO : TDateField;
    SqlProdutosPRD_DESCRI_RES : TStringField;
    SqlProdutosPRD_UND : TStringField;
    SqlProdutosPRD_EMBALA : TStringField;
    SqlProdutosPGR_CODIGO : TStringField;
    SqlProdutosPTI_CODIGO : TStringField;
    SqlProdutosIPI_CODIGO : TStringField;
    SqlProdutosPRD_ALIQICM : TFMTBCdField;
    SqlProdutosLIN_CODIGO : TStringField;
    SqlProdutosPRD_CARACT : TMemoField;
    SqlProdutosPRD_MINIMO : TFMTBCdField;
    SqlProdutosPRD_PCUSTO : TFMTBCdField;
    SqlProdutosPRD_PVENDA : TFMTBCdField;
    SqlProdutosPRD_PMEDIO : TFMTBCdField;
    SqlProdutosPRD_PMATPRI : TFMTBCdField;
    SqlProdutosPRD_MAOOBRA : TFMTBCdField;
    SqlProdutosPRD_ESTOQUE : TFMTBCdField;
    SqlProdutosPRD_SAIDA : TFMTBCdField;
    SqlProdutosPRD_PENDENTE : TFMTBCdField;
    SqlProdutosFOR_CODIGO : TStringField;
    SqlProdutosPRD_ENTRADA : TFMTBCdField;
    SqlProdutosPRD_MAXIMO : TFMTBCdField;
    SqlProdutosPRD_TEMSUB : TStringField;
    SqlProdutosPRD_SITRIBUT : TStringField;
    SqlProdutosPRD_ICMSUBS : TFMTBCdField;
    SqlProdutosPRD_UTILCONV : TStringField;
    SqlProdutosPRD_UNDCOMP : TStringField;
    SqlProdutosPRD_PESOKG : TFMTBCdField;
    SqlProdutosPRD_FATORC : TFMTBCdField;
    SqlProdutosPRD_DIVMULT : TStringField;
    SqlProdutosEMP_CODIGO : TStringField;
    SqlProdutosPRD_DTPCUSTO : TSQLTimeStampField;
    SqlProdutosPRD_TABPRECO : TStringField;
    SqlProdutosPRD_GARANTIA : TStringField;
    SqlProdutosPRD_FAMILIA : TStringField;
    SqlProdutosPRD_CODBARRA : TStringField;
    SqlProdutosPRD_VAR1 : TFMTBCdField;
    SqlProdutosPRD_VAR2 : TFMTBCdField;
    SqlProdutosPRD_VAR3 : TFMTBCdField;
    SqlProdutosPRD_VAR4 : TFMTBCdField;
    SqlProdutosPRD_VAR5 : TFMTBCdField;
    SqlProdutosPRD_VAR6 : TFMTBCdField;
    SqlProdutosPRD_VAR7 : TFMTBCdField;
    SqlProdutosPRD_VAR8 : TFMTBCdField;
    SqlProdutosPRD_DCVAR1 : TStringField;
    SqlProdutosPRD_DCVAR2 : TStringField;
    SqlProdutosPRD_DCVAR3 : TStringField;
    SqlProdutosPRD_DCVAR4 : TStringField;
    SqlProdutosPRD_DCVAR5 : TStringField;
    SqlProdutosPRD_DCVAR6 : TStringField;
    SqlProdutosPRD_DCVAR7 : TStringField;
    SqlProdutosPRD_DCVAR8 : TStringField;
    SqlProdutosPRD_CURVA : TStringField;
    SqlProdutosPRD_CODMERCOSUL : TStringField;
    SqlProdutosPRD_DTPVENDA : TDateField;
    SqlProdutosAMX_CODIGO : TStringField;
    SqlProdutosPRD_GRADE : TStringField;
    SqlProdutosPRD_CUSTOCOMIPI : TFMTBCdField;
    SqlProdutosPRD_RESERVA : TFMTBCdField;
    SqlProdutosPRD_EMPENHO : TFMTBCdField;
    SqlProdutosPRD_SALDOPRODUCAO : TFMTBCdField;
    SqlProdutosPRD_SIMULACAO : TFMTBCdField;
    SqlProdutosPRD_COMISSAO : TFMTBCdField;
    SqlProdutosPRD_RESERVA_VAR1 : TFMTBCdField;
    SqlProdutosPRD_RESERVA_VAR2 : TFMTBCdField;
    SqlProdutosPRD_RESERVA_VAR3 : TFMTBCdField;
    SqlProdutosPRD_RESERVA_VAR4 : TFMTBCdField;
    SqlProdutosPRD_RESERVA_VAR5 : TFMTBCdField;
    SqlProdutosPRD_RESERVA_VAR6 : TFMTBCdField;
    SqlProdutosPRD_RESERVA_VAR7 : TFMTBCdField;
    SqlProdutosPRD_RESERVA_VAR8 : TFMTBCdField;
    SqlProdutosPRD_DT_ULT_COMPRA : TDateField;
    SqlProdutosPRD_VL_ULT_COMPRA : TFMTBCdField;
    SqlProdutosPRD_NF_ULT_COMPRA : TStringField;
    SqlProdutosFOR_CODIGO_ANT : TStringField;
    SqlProdutosPRD_DT_ULT_COMPRA_ANT : TDateField;
    SqlProdutosPRD_VL_ULT_COMPRA_ANT : TFMTBCdField;
    SqlProdutosPRD_NF_ULT_COMPRA_ANT : TStringField;
    SqlProdutosPRD_LOTE : TStringField;
    SqlProdutosPRD_FATOR_PROD : TFMTBCdField;
    SqlProdutosPRD_DIV_MULT_PROD : TStringField;
    SqlProdutosSTB_TRIBUTACAO : TStringField;
    SqlProdutosPRD_ORIGEM : TIntegerField;
    SqlProdutosPRD_CUSTO_CREDITO : TFMTBCdField;
    SqlProdutosPRD_MARGEMVENDA : TFMTBCdField;
    SqlProdutosPRD_MARGEMOFERTA : TFMTBCdField;
    SqlProdutosPRD_PRECOOFERTA : TFMTBCdField;
    SqlProdutosPRD_INICIOOFERTA : TDateField;
    SqlProdutosPRD_FIMOFERTA : TDateField;
    SqlProdutosPRD_PVENDA2 : TFMTBCdField;
    SqlProdutosPRD_PVENDA3 : TFMTBCdField;
    SqlProdutosPRD_PVENDA4 : TFMTBCdField;
    SqlProdutosPRD_PVENDA5 : TFMTBCdField;
    SqlProdutosPRD_PVENDA6 : TFMTBCdField;
    SqlProdutosUSU_CODIGO_ATUAL_TAB : TIntegerField;
    SqlProdutosUSU_LOGIN_ATUAL_TAB : TStringField;
    SqlProdutosPRD_DATA_ATUAL_TAB : TSQLTimeStampField;
    SqlProdutosPRD_PESOLIQ : TFMTBCdField;
    SqlProdutosSPED_GENCODIGO : TStringField;
    SqlProdutosSPED_TIPCODIGO : TStringField;
    SqlProdutosPRD_UNICODIGO : TIntegerField;
    SqlProdutosPRD_PRODSERV : TStringField;
    SqlProdutosPRD_DESCRI : TStringField;
    SqlProdutosPRD_COMPL : TStringField;
    SqlProdutosPRD_CODORIGINAL : TStringField;
    SqlProdutosPRD_CUSTOFRETE : TFMTBCdField;
    SqlProdutosPRD_CUSTOIPI : TFMTBCdField;
    SqlProdutosPRD_CUSTOSUBTRIB : TFMTBCdField;
    SqlProdutosPRD_CUSTOADCIONAL : TFMTBCdField;
    SqlProdutosPRD_MGDESPFIXAS : TFMTBCdField;
    SqlProdutosPRD_INDICESOBMARGEM : TFMTBCdField;
    SqlProdutosSRV_REGISTRO : TIntegerField;
    SqlProdutosPRD_STATUS : TStringField;
    SqlProdutosPRD_GERENCIA_LOTE : TStringField;
    SqlProdutosPRD_REFER : TStringField;
    SqlProdutosPRD_UND_GRADE_CALCULO : TStringField;
    SqlProdutosPRD_GRADE_OBRIGATORIO : TStringField;
    SqlProdutosPRDE_REGISTRO : TIntegerField;
    SqlProdutosCEST_COD : TStringField;
    SqlProdutosCEST_REVISAR : TStringField;
    SqlProdutosPRD_CSTPISCOFINS : TStringField;
    DspProdutos : TDataSetProvider;
    CdsProdutos : TClientDataSet;
    CdsProdutosPRD_CODIGO : TStringField;
    CdsProdutosPRD_DESCRI_RES : TStringField;
    CdsProdutosPRD_UND : TStringField;
    CdsProdutosPRD_EMBALA : TStringField;
    CdsProdutosPGR_CODIGO : TStringField;
    CdsProdutosPTI_CODIGO : TStringField;
    CdsProdutosIPI_CODIGO : TStringField;
    CdsProdutosPRD_ALIQICM : TFMTBCdField;
    CdsProdutosPRD_CARACT : TMemoField;
    CdsProdutosPRD_MAXIMO : TFMTBCdField;
    CdsProdutosPRD_MINIMO : TFMTBCdField;
    CdsProdutosPRD_PCUSTO : TFMTBCdField;
    CdsProdutosPRD_PVENDA : TFMTBCdField;
    CdsProdutosPRD_PMEDIO : TFMTBCdField;
    CdsProdutosPRD_PMATPRI : TFMTBCdField;
    CdsProdutosPRD_MAOOBRA : TFMTBCdField;
    CdsProdutosPRD_ESTOQUE : TFMTBCdField;
    CdsProdutosPRD_SAIDA : TFMTBCdField;
    CdsProdutosPRD_PENDENTE : TFMTBCdField;
    CdsProdutosPRD_ENTRADA : TFMTBCdField;
    CdsProdutosFOR_CODIGO : TStringField;
    CdsProdutosPRD_TEMSUB : TStringField;
    CdsProdutosPRD_SITRIBUT : TStringField;
    CdsProdutosPRD_ICMSUBS : TFMTBCdField;
    CdsProdutosPRD_UTILCONV : TStringField;
    CdsProdutosPRD_UNDCOMP : TStringField;
    CdsProdutosPRD_PESOKG : TFMTBCdField;
    CdsProdutosPRD_FATORC : TFMTBCdField;
    CdsProdutosPRD_DIVMULT : TStringField;
    CdsProdutosEMP_CODIGO : TStringField;
    CdsProdutosPRD_DTPCUSTO : TSQLTimeStampField;
    CdsProdutosPRD_TABPRECO : TStringField;
    CdsProdutosPRD_GARANTIA : TStringField;
    CdsProdutosPRD_FAMILIA : TStringField;
    CdsProdutosPRD_VAR1 : TFMTBCdField;
    CdsProdutosPRD_VAR2 : TFMTBCdField;
    CdsProdutosPRD_VAR3 : TFMTBCdField;
    CdsProdutosPRD_VAR4 : TFMTBCdField;
    CdsProdutosPRD_VAR5 : TFMTBCdField;
    CdsProdutosPRD_VAR6 : TFMTBCdField;
    CdsProdutosPRD_VAR7 : TFMTBCdField;
    CdsProdutosPRD_VAR8 : TFMTBCdField;
    CdsProdutosPRD_DCVAR1 : TStringField;
    CdsProdutosPRD_DCVAR2 : TStringField;
    CdsProdutosPRD_DCVAR3 : TStringField;
    CdsProdutosPRD_DCVAR4 : TStringField;
    CdsProdutosPRD_DCVAR5 : TStringField;
    CdsProdutosPRD_DCVAR6 : TStringField;
    CdsProdutosPRD_DCVAR7 : TStringField;
    CdsProdutosPRD_DCVAR8 : TStringField;
    CdsProdutosPRD_FISICO_CC : TCurrencyField;
    CdsProdutosPRD_ANTECIPADO_CC : TCurrencyField;
    CdsProdutosPRD_DTCADASTRO : TDateField;
    CdsProdutosPRD_CURVA : TStringField;
    CdsProdutosPRD_CODMERCOSUL : TStringField;
    CdsProdutosPRD_DTPVENDA : TDateField;
    CdsProdutosAMX_CODIGO : TStringField;
    CdsProdutosPRD_CODBARRA : TStringField;
    CdsProdutosPRD_GRADE : TStringField;
    CdsProdutosLIN_CODIGO : TStringField;
    CdsProdutosPRD_CUSTOCOMIPI : TFMTBCdField;
    CdsProdutosPRD_RESERVA : TFMTBCdField;
    CdsProdutosPRD_EMPENHO : TFMTBCdField;
    CdsProdutosPRD_SALDOPRODUCAO : TFMTBCdField;
    CdsProdutosPRD_COMISSAO : TFMTBCdField;
    CdsProdutosPRD_RESERVA_VAR1 : TFMTBCdField;
    CdsProdutosPRD_RESERVA_VAR2 : TFMTBCdField;
    CdsProdutosPRD_RESERVA_VAR3 : TFMTBCdField;
    CdsProdutosPRD_RESERVA_VAR4 : TFMTBCdField;
    CdsProdutosPRD_RESERVA_VAR5 : TFMTBCdField;
    CdsProdutosPRD_RESERVA_VAR6 : TFMTBCdField;
    CdsProdutosPRD_RESERVA_VAR7 : TFMTBCdField;
    CdsProdutosPRD_RESERVA_VAR8 : TFMTBCdField;
    CdsProdutosPRD_SIMULACAO : TFMTBCdField;
    CdsProdutosPRD_DT_ULT_COMPRA : TDateField;
    CdsProdutosPRD_VL_ULT_COMPRA : TFMTBCdField;
    CdsProdutosPRD_NF_ULT_COMPRA : TStringField;
    CdsProdutosFOR_CODIGO_ANT : TStringField;
    CdsProdutosPRD_DT_ULT_COMPRA_ANT : TDateField;
    CdsProdutosPRD_VL_ULT_COMPRA_ANT : TFMTBCdField;
    CdsProdutosPRD_NF_ULT_COMPRA_ANT : TStringField;
    CdsProdutosPRD_LOTE : TStringField;
    CdsProdutosPRD_FATOR_PROD : TFMTBCdField;
    CdsProdutosPRD_DIV_MULT_PROD : TStringField;
    CdsProdutosSTB_TRIBUTACAO : TStringField;
    CdsProdutosPRD_ORIGEM : TIntegerField;
    CdsProdutosPRD_MARGEMVENDA : TFMTBCdField;
    CdsProdutosPRD_MARGEMOFERTA : TFMTBCdField;
    CdsProdutosPRD_PRECOOFERTA : TFMTBCdField;
    CdsProdutosPRD_INICIOOFERTA : TDateField;
    CdsProdutosPRD_FIMOFERTA : TDateField;
    CdsProdutosPRD_CUSTO_CREDITO : TFMTBCdField;
    CdsProdutosPRD_PVENDA2 : TFMTBCdField;
    CdsProdutosPRD_PVENDA3 : TFMTBCdField;
    CdsProdutosPRD_PVENDA4 : TFMTBCdField;
    CdsProdutosPRD_PVENDA5 : TFMTBCdField;
    CdsProdutosPRD_PVENDA6 : TFMTBCdField;
    CdsProdutosUSU_CODIGO_ATUAL_TAB : TIntegerField;
    CdsProdutosUSU_LOGIN_ATUAL_TAB : TStringField;
    CdsProdutosPRD_DATA_ATUAL_TAB : TSQLTimeStampField;
    CdsProdutosPRD_PESOLIQ : TFMTBCdField;
    CdsProdutosSPED_GENCODIGO : TStringField;
    CdsProdutosSPED_TIPCODIGO : TStringField;
    CdsProdutosPRD_UNICODIGO : TIntegerField;
    CdsProdutosPRD_PRODSERV : TStringField;
    CdsProdutosPRD_DESCRI : TStringField;
    CdsProdutosPRD_COMPL : TStringField;
    CdsProdutosPRD_CODORIGINAL : TStringField;
    CdsProdutosPRD_CUSTOFRETE : TFMTBCdField;
    CdsProdutosPRD_CUSTOIPI : TFMTBCdField;
    CdsProdutosPRD_CUSTOSUBTRIB : TFMTBCdField;
    CdsProdutosPRD_CUSTOADCIONAL : TFMTBCdField;
    CdsProdutosPRD_MGDESPFIXAS : TFMTBCdField;
    CdsProdutosPRD_INDICESOBMARGEM : TFMTBCdField;
    CdsProdutosSRV_REGISTRO : TIntegerField;
    CdsProdutosPRD_STATUS : TStringField;
    CdsProdutosPRD_GERENCIA_LOTE : TStringField;
    CdsProdutosPRD_REFER : TStringField;
    CdsProdutosPRD_UND_GRADE_CALCULO : TStringField;
    CdsProdutosPRD_GRADE_OBRIGATORIO : TStringField;
    CdsProdutosPRDE_REGISTRO : TIntegerField;
    CdsProdutosCEST_COD : TStringField;
    CdsProdutosCEST_REVISAR : TStringField;
    CdsProdutosPRD_CSTPISCOFINS : TStringField;
    DsProdutos : TDataSource;
    DsPrdClassIPI : TDataSource;
    CdsPrdClassIPI_OLD : TClientDataSet;
    CdsPrdClassIPI_OLDIPI_CODIGO : TStringField;
    CdsPrdClassIPI_OLDIPI_ALIQ : TFMTBCdField;
    CdsPrdClassIPI_OLDEMP_CODIGO : TStringField;
    CdsPrdClassIPI_OLDIPI_APELIDO : TStringField;
    CdsPrdClassIPI_OLDNCM_TEMCREDITO : TStringField;
    CdsPrdClassIPI_OLDNCM_DESC_FAMILIA : TMemoField;
    CdsPrdClassIPI_OLDIPI_VALOR_POR_ITEM : TFMTBCdField;
    CdsPrdClassIPI_OLDIPI_EX : TStringField;
    DspPrdClassIPI : TDataSetProvider;
    SqlProdutosprd_especifico : TStringField;
    SqlProdutosid_prd_especifico : TIntegerField;
    CdsProdutosPRD_ESPECIFICO : TStringField;
    CdsProdutosID_PRD_ESPECIFICO : TIntegerField;
    SqlProdutosPRD_ESPECIFICO_REDST : TSingleField;
    CdsProdutosPRD_ESPECIFICO_REDST : TSingleField;
    dsTipoProduto : TDataSource;
    edSigla : TDBEdit;
    qTipoProduto : TSQLQuery;
    qGrupo : TSQLQuery;
    qLinha : TSQLQuery;
    qCest : TSQLQuery;
    DBComboBox2 : TDBComboBox;
    GroupBox13 : TGroupBox;
    DBEdit30 : TDBEdit;
    qItensFicha : TSQLQuery;
    DspItensFicha : TDataSetProvider;
    CdsItensFichaFTI_REGISTRO : TIntegerField;
    CdsItensFichaPRD_REFER : TStringField;
    CdsItensFichaPRD_REFER_ITENS : TStringField;
    CdsItensFichaPRG_REGISTRO : TIntegerField;
    CdsItensFichaFTI_MODIFICADA : TSQLTimeStampField;
    CdsItensFichaFTI_UCMODIFIC : TFMTBCdField;
    CdsItensFichaFTI_MODE1 : TStringField;
    CdsItensFichaFTI_MODE2 : TStringField;
    CdsItensFichaFTI_MODE3 : TStringField;
    CdsItensFichaFTI_MODE4 : TStringField;
    CdsItensFichaFTI_MODE5 : TStringField;
    CdsItensFichaFTI_MODE6 : TStringField;
    CdsItensFichaFTI_MODE7 : TStringField;
    CdsItensFichaFTI_MODE8 : TStringField;
    CdsItensFichaFTI_PRECOCUSTO : TFMTBCdField;
    CdsItensFichaEMP_CODIGO : TStringField;
    CdsItensFichaFTI_NIVEL : TIntegerField;
    CdsItensFichaFTI_SEQUENCIA : TIntegerField;
    CdsItensFichaFTI_REFER_PAI : TStringField;
    CdsItensFichaFTI_TIPO_PI : TStringField;
    CdsItensFichaPRD_DESCRI : TStringField;
    CdsItensFichaPRD_UND : TStringField;
    CdsItensFichaPRD_GRADE : TStringField;
    CdsItensFichaPTI_SIGLA : TStringField;
    CdsItensFichaPRD_PCUSTO : TFMTBCdField;
    CdsItensFichaPRG_DESCRICAO : TStringField;
    DSSitTributaria : TDataSource;
    CDSSitTributaria : TClientDataSet;
    CDSSitTributariaSTB_CODIGO : TIntegerField;
    CDSSitTributariaEMP_CODIGO : TIntegerField;
    CDSSitTributariaSTB_DATA_CADASTRO : TDateField;
    CDSSitTributariaSTB_DATA_ATUALIZA : TDateField;
    CDSSitTributariaSTB_TRIBUTACAO : TStringField;
    CDSSitTributariaSTB_DESCRICAO : TStringField;
    CDSSitTributariaSTB_SUBSTITUICAO : TStringField;
    CDSSitTributariaSTB_SUBSTITUICAO_DENTRO_UF : TStringField;
    DSPSitTributaria : TDataSetProvider;
    SQLSitTributaria : TSQLQuery;
    SQLSitTributariaSTB_CODIGO : TIntegerField;
    SQLSitTributariaEMP_CODIGO : TIntegerField;
    SQLSitTributariaSTB_DATA_CADASTRO : TDateField;
    SQLSitTributariaSTB_DATA_ATUALIZA : TDateField;
    SQLSitTributariaSTB_TRIBUTACAO : TStringField;
    SQLSitTributariaSTB_DESCRICAO : TStringField;
    SQLSitTributariaSTB_SUBSTITUICAO : TStringField;
    SQLSitTributariaSTB_SUBSTITUICAO_DENTRO_UF : TStringField;
    N3 : TMenuItem;
    VeraFichaTcnicaDesteItem1 : TMenuItem;
    CdsItensFichaGrade_CC : TStringField;
    CdsItensFichaTOTALITEM : TFMTBCdField;
    CdsRelItensPRD_PCUSTO : TCurrencyField;
    ppHeaderBand1 : TppHeaderBand;
    ppShape4 : TppShape;
    ppShape3 : TppShape;
    LBL_00_EMPRESA : TppLabel;
    LBL_00_LTITULO1 : TppLabel;
    ppSystemVariable11 : TppSystemVariable;
    ppSystemVariable12 : TppSystemVariable;
    ppLabel1 : TppLabel;
    ppDBText1 : TppDBText;
    ppDBText2 : TppDBText;
    ppLabel3 : TppLabel;
    ppLabel4 : TppLabel;
    ppLabel5 : TppLabel;
    ppLabel6 : TppLabel;
    ppLabel23 : TppLabel;
    ppDBText23 : TppDBText;
    ppLine11 : TppLine;
    ppLine12 : TppLine;
    ppLine16 : TppLine;
    ppLine1 : TppLine;
    ppLine3 : TppLine;
    ppLine4 : TppLine;
    ppLine7 : TppLine;
    ppLine14 : TppLine;
    ppLine5 : TppLine;
    ppLine9 : TppLine;
    ppLabel25 : TppLabel;
    ppShape15 : TppShape;
    ppLabel26 : TppLabel;
    ppDBText32 : TppDBText;
    ppDBText33 : TppDBText;
    ppLine2 : TppLine;
    ppLine29 : TppLine;
    ppLabel27 : TppLabel;
    ppLine35 : TppLine;
    ppDBText34 : TppDBText;
    ppDBText35 : TppDBText;
    ppLine36 : TppLine;
    ppLabel28 : TppLabel;
    ppLine37 : TppLine;
    ppDBText36 : TppDBText;
    ppDBText37 : TppDBText;
    ppLine43 : TppLine;
    ppLabel30 : TppLabel;
    ppLabel2 : TppLabel;
    ppLabel7 : TppLabel;
    ppDetailBand2 : TppDetailBand;
    ppDBText11 : TppDBText;
    ppDBText13 : TppDBText;
    ppDBText14 : TppDBText;
    ppLine6 : TppLine;
    ppLine8 : TppLine;
    ppLine22 : TppLine;
    ppLine23 : TppLine;
    ppLine24 : TppLine;
    ppLine27 : TppLine;
    ppLine34 : TppLine;
    ppLine21 : TppLine;
    ppDBText38 : TppDBText;
    ppLine44 : TppLine;
    ppDBText40 : TppDBText;
    ppLine32 : TppLine;
    ppDBText5 : TppDBText;
    ppSummaryBand1 : TppSummaryBand;
    ppLine38 : TppLine;
    ppLine39 : TppLine;
    ppLine40 : TppLine;
    raCodeModule1 : TraCodeModule;
    daDataModule1 : TdaDataModule;
    ppDesignLayers1 : TppDesignLayers;
    ppDesignLayer1 : TppDesignLayer;
    CdsRelItensTOTALITEM : TFMTBCdField;
    ppDBText4 : TppDBText;
    ppLabel24 : TppLabel;
    ppLabel8 : TppLabel;
    CdsRelItensTOTAL : TCurrencyField;
    ppLine10 : TppLine;
    lbComissao1 : TLabel;
    lbComissao2 : TLabel;
    lbComissao3 : TLabel;
    lbVerba1 : TLabel;
    lbVerba2 : TLabel;
    lbVerba3 : TLabel;
    LabTabela4 : TLabel;
    LabTabela5 : TLabel;
    LabTabela6 : TLabel;
    DBEdit38 : TDBEdit;
    DBEdit39 : TDBEdit;
    DBEdit40 : TDBEdit;
    lbComissao4 : TLabel;
    lbComissao5 : TLabel;
    lbComissao6 : TLabel;
    lbVerba4 : TLabel;
    lbVerba5 : TLabel;
    lbVerba6 : TLabel;
    SqlProdutosPRD_PERC_COMISSAO : TFMTBCdField;
    SqlProdutosPRD_PERC_VENDA : TFMTBCdField;
    SqlProdutosPRD_PERC_COMISSAO2 : TFMTBCdField;
    SqlProdutosPRD_PERC_VENDA2 : TFMTBCdField;
    SqlProdutosPRD_PERC_COMISSAO3 : TFMTBCdField;
    SqlProdutosPRD_PERC_VENDA3 : TFMTBCdField;
    SqlProdutosPRD_PERC_COMISSAO4 : TFMTBCdField;
    SqlProdutosPRD_PERC_VENDA4 : TFMTBCdField;
    CdsProdutosPRD_PERC_COMISSAO : TFMTBCdField;
    CdsProdutosPRD_PERC_VENDA : TFMTBCdField;
    CdsProdutosPRD_PERC_COMISSAO2 : TFMTBCdField;
    CdsProdutosPRD_PERC_VENDA2 : TFMTBCdField;
    CdsProdutosPRD_PERC_COMISSAO3 : TFMTBCdField;
    CdsProdutosPRD_PERC_VENDA3 : TFMTBCdField;
    CdsProdutosPRD_PERC_COMISSAO4 : TFMTBCdField;
    CdsProdutosPRD_PERC_VENDA4 : TFMTBCdField;
    SqlProdutosPRD_PERC_COMISSAO5 : TFMTBCdField;
    SqlProdutosPRD_PERC_VENDA5 : TFMTBCdField;
    SqlProdutosPRD_PERC_COMISSAO6 : TFMTBCdField;
    SqlProdutosPRD_PERC_VENDA6 : TFMTBCdField;
    CdsProdutosPRD_PERC_COMISSAO5 : TFMTBCdField;
    CdsProdutosPRD_PERC_VENDA5 : TFMTBCdField;
    CdsProdutosPRD_PERC_COMISSAO6 : TFMTBCdField;
    CdsProdutosPRD_PERC_VENDA6 : TFMTBCdField;
    DBEdit31 : TDBEdit;
    DBEdit32 : TDBEdit;
    DBEdit34 : TDBEdit;
    DBEdit35 : TDBEdit;
    DBEdit36 : TDBEdit;
    DBEdit37 : TDBEdit;
    DBEdit41 : TDBEdit;
    DBEdit42 : TDBEdit;
    DBEdit43 : TDBEdit;
    DBEdit44 : TDBEdit;
    DBEdit45 : TDBEdit;
    DBEdit46 : TDBEdit;
    Timer1 : TTimer;
    GroupBox26 : TGroupBox;
    Label11 : TLabel;
    lbMedida1 : TLabel;
    lbMedida2 : TLabel;
    lbMedida3 : TLabel;
    Label103 : TLabel;
    Label111 : TLabel;
    Label104 : TLabel;
    Label12 : TLabel;
    DBEdit59 : TDBEdit;
    dbedtPRG_MEDIDA_1 : TDBEdit;
    dbedtPRG_MEDIDA_2 : TDBEdit;
    dbedtPRG_MEDIDA_3 : TDBEdit;
    dbedtPRG_REDUCAO_PERCENT : TDBEdit;
    DBEdit60 : TDBEdit;
    dbedtPRG_PRECO : TDBEdit;
    dbedtPRG_INDICE : TDBEdit;
    DBNavigator2 : TDBNavigator;
    Label10 : TLabel;
    DBEdit21 : TDBEdit;
    CdsVendasPRDL_LOTE : TStringField;
    Label115 : TLabel;
    DbeBaseFormula : TDBEdit;
    pcFichaTecnica : TPageControl;
    tsGeral : TTabSheet;
    tsProcesso : TTabSheet;
    GrpVariacoes : TGroupBox;
    Label37 : TLabel;
    Label42 : TLabel;
    Label43 : TLabel;
    Label44 : TLabel;
    Label53 : TLabel;
    Label54 : TLabel;
    Label55 : TLabel;
    Label56 : TLabel;
    DbeFTCvar1 : TDBEdit;
    DbeFTCvar2 : TDBEdit;
    DbeFTCvar3 : TDBEdit;
    DbeFTCvar4 : TDBEdit;
    DbeFTCvar5 : TDBEdit;
    DbeFTCvar6 : TDBEdit;
    DbeFTCvar7 : TDBEdit;
    DbeFTCvar8 : TDBEdit;
    GrpMateria : TGroupBox;
    DBGridFichaTecnicaItem : TDBGrid;
    GroupBoxEtapasOpera : TGroupBox;
    GrpProcesso : TGroupBox;
    ScrollBox1 : TScrollBox;
    GrpMateriaPrima : TGroupBox;
    Label57 : TLabel;
    SpProduto : TSpeedButton;
    Label58 : TLabel;
    Label59 : TLabel;
    Label60 : TLabel;
    Label61 : TLabel;
    Label107 : TLabel;
    SdCadastroGrade : TSpeedButton;
    Label108 : TLabel;
    EdtRefer : TEdit;
    EdtProduto : TEdit;
    CurrAnterior : TCurrencyEdit;
    Bit_ExcluirMateria : TBitBtn;
    Bit_GravarMateria : TBitBtn;
    Bit_CancelarMateria : TBitBtn;
    CbGrade : TComboBoxRw;
    BIT_FTC_RELATORIO : TBitBtn;
    PAN_FTC01 : TPanel;
    Bit_FTC_Novo : TBitBtn;
    Bit_FTC_Copiar : TBitBtn;
    BIT_FTC_EXCLUIR : TBitBtn;
    BIT_FTC_GRAVAR : TBitBtn;
    BIT_FTC_CANCELAR : TBitBtn;
    laCustoTotal : TLabel;
    dbProcessos : TDBGrid;
    dbEspecificacoes : TDBGrid;
    qOperacoes : TSQLQuery;
    qEspecifica : TSQLQuery;
    dsProcessos : TDataSource;
    dspProcessos : TDataSetProvider;
    qProcesso : TSQLQuery;
    cdsProcessos : TClientDataSet;
    cdsProcessosOPE_DESCRICAO : TStringField;
    cdsProcessosOPE_CODIGO : TIntegerField;
    cdsProcessosSEQUENCIA : TIntegerField;
    cdsProcessosPRD_REFER : TStringField;
    cdsProcessosPRD_DESCRI : TStringField;
    dsEspecifica : TDataSource;
    cdsEspecifica : TClientDataSet;
    dspEspecifica : TDataSetProvider;
    cdsEspecificaESP_CODIGO : TIntegerField;
    cdsEspecificaESP_NOME : TStringField;
    cdsEspecificaESP_PADROES : TStringField;
    cdsEspecificaENG_CODIGO : TIntegerField;
    cdsEspecificaESP_COL1 : TStringField;
    cdsEspecificaESP_COL2 : TStringField;
    cdsEspecificaESP_COL3 : TStringField;
    cdsEspecificaESP_COL4 : TStringField;
    cdsEspecificaESP_COL5 : TStringField;
    cdsEspecificaESP_COL6 : TStringField;
    cdsEspecificaESP_COL7 : TStringField;
    cdsProcessosENG_CODIGO : TIntegerField;
    btnExcluiParam : TBitBtn;
    btnCriarParam : TBitBtn;
    btnEditaParam : TBitBtn;
    btnEngProcesso : TBitBtn;
    BitBtn3 : TBitBtn;
    BitBtn4 : TBitBtn;
    cdsProcessosTEMPO_ESTIMADO : TIntegerField;
    cdsProcessosEQP_CODIGO : TIntegerField;
    cdsProcessosEQP_DESCRICAO : TStringField;
    Total : TLabel;
    btnEquipamentos : TBitBtn;
    btnNovaOperacao : TBitBtn;
    btnCopiar : TBitBtn;
    pMedidas : TPanel;
    DBEdit47 : TDBEdit;
    lbDesc1 : TLabel;
    lbDesc2 : TLabel;
    DBEdit53 : TDBEdit;
    lbDesc3 : TLabel;
    DBEdit54 : TDBEdit;
    lbDesc4 : TLabel;
    DBEdit55 : TDBEdit;
    CdsProdutosInterno : TFMTBCdField;
    CdsProdutosEXTERNO : TFMTBCdField;
    CdsProdutosALTURA1 : TFMTBCdField;
    CdsProdutosALTURA2 : TFMTBCdField;
    SqlProdutosInterno : TFMTBCdField;
    SqlProdutosEXTERNO : TFMTBCdField;
    SqlProdutosALTURA1 : TFMTBCdField;
    SqlProdutosALTURA2 : TFMTBCdField;
    bitImportarXLS : TJvArrowButton;
    JvPopupMenu1 : TJvPopupMenu;
    miImportarExcel : TMenuItem;
    miLeaiute : TMenuItem;
    CdsCodigoOriginalPED_CODIGO : TStringField;
    SqlCodCliPED_CODIGO : TStringField;
    pnMargem : TPanel;
    Label8 : TLabel;
    Label119 : TLabel;
    Label120 : TLabel;
    btnConfirmarMargem : TButton;
    CdsProdutosPRD_PER_ICMS : TFMTBCdField;
    CdsProdutosPRD_PER_PISCONFINS : TFMTBCdField;
    CdsProdutosPRD_PER_IPI : TFMTBCdField;
    CdsProdutosPRD_PER_FRETE : TFMTBCdField;
    CdsProdutosPRD_PER_OUTROS : TFMTBCdField;
    CdsProdutosPRD_PER_LUCRO : TFMTBCdField;
    DBEdit63 : TDBEdit;
    DBEdit64 : TDBEdit;
    DBEdit65 : TDBEdit;
    DBEdit66 : TDBEdit;
    DBEdit67 : TDBEdit;
    DBEdit68 : TDBEdit;
    Label121 : TLabel;
    Label122 : TLabel;
    Label123 : TLabel;
    SqlProdutosPRD_PER_ICMS : TFMTBCdField;
    SqlProdutosPRD_PER_PISCONFINS : TFMTBCdField;
    SqlProdutosPRD_PER_IPI : TFMTBCdField;
    SqlProdutosPRD_PER_FRETE : TFMTBCdField;
    SqlProdutosPRD_PER_OUTROS : TFMTBCdField;
    SqlProdutosPRD_PER_LUCRO : TFMTBCdField;
    spMargemVenda : TSpeedButton;
    Label124 : TLabel;
    ppDBMemo1 : TppDBMemo;
    CdsProdutosPRD_OUTROSCUSTOS : TFMTBCdField;
    Label125 : TLabel;
    DBEdit69 : TDBEdit;
    SqlProdutosPRD_OUTROSCUSTOS : TFMTBCdField;
    Label126 : TLabel;
    EdOperacaoCodigo : TEdit;
    edOperacao : TSgDbSearchCombo;
    SQLQuery1 : TSQLQuery;
    CdsItensFichaOPE_CODIGO : TIntegerField;
    CdsItensFichaope_descricao : TStringField;
    Label127 : TLabel;
    Label128 : TLabel;
    CdsItensFichaprd_pvenda : TFMTBCdField;
    DateModif : TJvDateEdit;
    EditDataI : TJvDateEdit;
    EditDataF : TJvDateEdit;
    DbDtFTC_CRIACAO : TJvDBDateEdit;
    DBDateEdit1 : TJvDBDateEdit;
    DBDateEdit2 : TJvDBDateEdit;
    DBDateEdit4 : TJvDBDateEdit;
    DBDateEdit3 : TJvDBDateEdit;
    DBDateEdit5 : TJvDBDateEdit;
    tsMPusado : TTabSheet;
    pUsadoem : TPanel;
    btnMP_Expotar : TJvArrowButton;
    dgMPusado : TDBGrid;
    cdsMPusado : TClientDataSet;
    cdsMPusadoPRD_REFER : TStringField;
    cdsMPusadoPRD_DESCRI : TStringField;
    cdsMPusadoPRD_UND : TStringField;
    cdsMPusadoFTC_CRIACAO : TSQLTimeStampField;
    cdsMPusadoFTI_UC : TFMTBCdField;
    dsMPusado : TDataSource;
    qMPusado : TSQLQuery;
    dspMPusado : TDataSetProvider;
    puExportar : TPopupMenu;
    miExcel : TMenuItem;
    miWord : TMenuItem;
    SaveDialog1 : TSaveDialog;
    JvDBGridWordExport1 : TJvDBGridWordExport;
    JvDBGridExcelExport1 : TJvDBGridExcelExport;
    pExportarLote : TPopupMenu;
    miLoteExcel : TMenuItem;
    miLoteWord : TMenuItem;
    Panel3 : TPanel;
    JvArrowButton1 : TJvArrowButton;
    CurPerda : TJvValidateEdit;
    Label129 : TLabel;
    CdsItensFichaFTI_PERDA : TFMTBCdField;
    currPrecoVenda : TJvValidateEdit;
    currCustoFicha : TJvValidateEdit;
    frxMPusado : TfrxReport;
    fdsMPusado : TfrxDBDataset;
    cdsMPusadoFTI_PERDA : TFMTBCdField;
    Button1 : TButton;
    ppDBCalc1 : TppDBCalc;
    CdsProdutosPRD_CBENEF : TStringField;
    SqlProdutosPRD_CBENEF : TStringField;
    SqlProdutosPRD_TIPOPECA_TERM : TStringField;
    SqlProdutosPRD_MATERIAL_TERM : TStringField;
    SqlProdutosPRD_DUREZASUPERFICIAL_TERM : TStringField;
    SqlProdutosPRD_DUREZANUCLEO_TERM : TStringField;
    SqlProdutosPRD_PROFUNDIDADE_TERM : TStringField;
    SqlProdutosPRD_TAMANHOGRAO_TERM : TStringField;
    SqlProdutosPRD_EHT_TERM : TStringField;
    SqlProdutosPRD_DESENHO_TERM : TStringField;
    CdsProdutosPRD_TIPOPECA_TERM : TStringField;
    CdsProdutosPRD_MATERIAL_TERM : TStringField;
    CdsProdutosPRD_DUREZASUPERFICIAL_TERM : TStringField;
    CdsProdutosPRD_DUREZANUCLEO_TERM : TStringField;
    CdsProdutosPRD_PROFUNDIDADE_TERM : TStringField;
    CdsProdutosPRD_TAMANHOGRAO_TERM : TStringField;
    CdsProdutosPRD_EHT_TERM : TStringField;
    CdsProdutosPRD_DESENHO_TERM : TStringField;
    tsTratamentoTermico : TTabSheet;
    Label130 : TLabel;
    DBEdit70 : TDBEdit;
    Label131 : TLabel;
    DBEdit71 : TDBEdit;
    Label132 : TLabel;
    DBEdit72 : TDBEdit;
    Label136 : TLabel;
    DBEdit75 : TDBEdit;
    Label135 : TLabel;
    DBEdit74 : TDBEdit;
    Label134 : TLabel;
    DBEdit73 : TDBEdit;
    Label137 : TLabel;
    DBEdit76 : TDBEdit;
    Label133 : TLabel;
    DBEdit77 : TDBEdit;
    N3Mesmoleaiutedeimportao1 : TMenuItem;
    miExportalExcel : TMenuItem;
    CdsVendasEMP_CODIGO : TStringField;
    Label138 : TLabel;
    DBEdit78 : TDBEdit;
    qProcessos : TSQLQuery;
    qProcessosPRO_CODIGO : TIntegerField;
    qProcessosPRO_DESCRICAO : TStringField;
    Label139 : TLabel;
    cbProcesso : TSgDbSearchCombo;
    CdsProdutosPRO_CODIGO : TIntegerField;
    SqlProdutosPRO_CODIGO : TIntegerField;
    CdsProdutosprd_und_trib : TStringField;
    SqlProdutosprd_und_trib : TStringField;
    tsServico : TTabSheet;
    qCnae : TSQLQuery;
    qservico : TSQLQuery;
    Label141 : TLabel;
    EdCnaeCodigo : TDBEdit;
    PesqCNAE : TSgDbSearchCombo;
    Label142 : TLabel;
    edServicoCodigo : TDBEdit;
    PesqServico : TSgDbSearchCombo;
    SqlProdutosCNAE_CODIGO : TStringField;
    SqlProdutosSRV_CODIGO : TStringField;
    CdsProdutosCNAE_CODIGO : TStringField;
    CdsProdutosSRV_CODIGO : TStringField;
    chkmultiempresa : TCheckBox;
    Label143 : TLabel;
    CdsProdutosPRD_IMPOSTOS_RETIRADOS : TFMTBCdField;
    SqlProdutosPRD_IMPOSTOS_RETIRADOS : TFMTBCdField;
    Label144 : TLabel;
    dbedtPRD_DTPCUSTO1 : TDBEdit;
    Label140 : TLabel;
    cxDBComboBox1 : TcxDBComboBox;
    cxDBLookupComboBox1 : TcxDBLookupComboBox;
    dsUnidade : TDataSource;
    cdsUnidade : TClientDataSet;
    dspunidade : TDataSetProvider;
    qUnidade : TSQLQuery;
    cdsUnidadePRD_UNICODIGO : TIntegerField;
    cdsUnidadePRD_UNISIGLA : TStringField;
    cdsUnidadePRD_UNIDESCRI : TStringField;
    CurrConsumo : TJvValidateEdit;
    CdsItensFichaFTI_UC : TFMTBCdField;
    GroupBox12 : TGroupBox;
    Label145 : TLabel;
    btncompras : TBitBtn;
    dtInicio : TJvDateEdit;
    dtFim : TJvDateEdit;
    chkMultiempresaCompras : TCheckBox;
    CdsComprasEMP_CODIGO : TStringField;
    Label146 : TLabel;

    mDescricaoEtapas : TDBMemo;

    CdsProdutosPRD_VAIXML : TStringField;
    SqlProdutosPRD_VAIXML : TStringField;
    DBCheckBox4 : TDBCheckBox;
    DBEprecoOferta : TDBEdit;
    Label85 : TLabel;
    DBEMultiplicador : TDBEdit;
    lmultiplicador : TLabel;
    CdsProdutosPRD_MULTIPLICADOR : TFMTBCdField;
    SqlProdutosPRD_MULTIPLICADOR : TFMTBCdField;
    chkEnvase : TDBCheckBox;
    CdsProdutosPRD_ENVASE : TStringField;
    SqlProdutosPRD_ENVASE : TStringField;
    SqlRelProdutosFTC_ETAPAS : TBlobField;
    ppDBMemo2 : TppDBMemo;
    CbAlmoxarifado : TComboBoxRw;
    EdAlmoxarifadoCodigo : TEdit;
    Label147 : TLabel;
    CdsItensFichaAMX_CODIGO : TStringField;
    CdsItensFichaamx_Descri : TStringField;
    tsCamposTecnicos : TTabSheet;
    dsMola : TDataSource;
    qMola : TSQLQuery;
    cdsMola : TClientDataSet;
    BIT_MOLA_GRAVAR : TBitBtn;
    BIT_MOLA_CANCELAR : TBitBtn;
    TRATAMENTO_CODIGO : TPageControl;
    tsCampos1 : TTabSheet;
    tsCampos2 : TTabSheet;
    tsCampos3 : TTabSheet;
    Label148 : TLabel;
    TEMPO_PRODUCAO : TDBEdit;
    dspMola : TDataSetProvider;
    Label149 : TLabel;
    cdsMolaMMO_CODIGO : TIntegerField;
    cdsMolaPRD_CODIGO : TStringField;
    cdsMolaART_CODIGO : TIntegerField;
    cdsMolaARA_CODIGO : TIntegerField;
    cdsMolaCMO_CODIGO : TIntegerField;
    cdsMolaGAN_CODIGO : TIntegerField;
    cdsMolaACO_CODIGO : TIntegerField;
    cdsMolaASU_CODIGO : TIntegerField;
    cdsMolaTSU_CODIGO : TIntegerField;
    cdsMolaMMO_TEMPO_PRODUCAO : TIntegerField;
    cdsMolaMMO_PESO_ESPECIFICO : TFMTBCdField;
    cdsMolaMMO_CISALHAMENTO : TFMTBCdField;
    cdsMolaMMO_RES_TRACAO : TFMTBCdField;
    cdsMolaMMO_TRATAMENTO_TERMICO : TStringField;
    cdsMolaMMO_TEMPO_TEMPERA : TIntegerField;
    cdsMolaMMO_TEMPERATURA_TEMPERA : TFMTBCdField;
    cdsMolaMMO_TEMPO_REVENIMENTO : TIntegerField;
    cdsMolaMMO_TEMPERATURA_REVENIMENTO : TFMTBCdField;
    cdsMolaMMO_DUREZA_MINIMA : TIntegerField;
    cdsMolaMMO_DUREZA_MAXIMA : TIntegerField;
    cdsMolaMMO_TRATAMENTO_SUPERFICIAL : TStringField;
    cdsMolaMMO_DIAMETRO_ARAME : TStringField;
    cdsMolaMMO_TOLERANCIA_DIA_MIN : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_DIA_MAX : TFMTBCdField;
    cdsMolaMMO_DIAMETRO_INTERNO : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_DI_MIN : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_DI_MAX : TFMTBCdField;
    cdsMolaMMO_DIAMETRO_MEDIO : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_DM_MIN : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_DM_MAX : TFMTBCdField;
    cdsMolaMMO_DIAMETRO_EXTERNO : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_DE_MIN : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_DE_MAX : TFMTBCdField;
    cdsMolaMMO_DIAMETRO_EXTERNO_MEIO : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_DEM_MIN : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_DEM_MAX : TFMTBCdField;
    cdsMolaMMO_VAO : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_VAO_MIN : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_VAO_MAX : TFMTBCdField;
    cdsMolaMMO_PASSO : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_PASSO_MIN : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_PASSO_MAX : TFMTBCdField;
    cdsMolaMMO_COM_LIVRE : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_LIVRE_MIN : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_LIVRE_MAX : TFMTBCdField;
    cdsMolaMMO_COM_SOLIDO : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_SOLIDO_MIN : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_SOLIDO_MAX : TFMTBCdField;
    cdsMolaMMO_ESPIRAIS_UTEIS : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_ESPUTEIS_MIN : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_ESPUTEIS_MAX : TFMTBCdField;
    cdsMolaMMO_ESPIRAL_TOTAL : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_ESPT_MIN : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_ESPT_MAX : TFMTBCdField;
    cdsMolaMMO_DESENVOLVIMENTO : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_DES_MIN : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_DES_MAX : TFMTBCdField;
    cdsMolaMMO_RETIFICADO : TStringField;
    cdsMolaMMO_PARALIELISMO : TIntegerField;
    cdsMolaMMO_PERPENDICULARIMO : TFMTBCdField;
    cdsMolaMMO_SENTIDO : TStringField;
    cdsMolaMMO_PESO : TFMTBCdField;
    cdsMolaMMO_OBSERVACAO : TBlobField;
    cdsMolaMMO_CONSTANTE_ESPE : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_CONST_MIN : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_CONST_MAX : TFMTBCdField;
    cdsMolaMMO_CONSTANTE_CALCULADA : TFMTBCdField;
    cdsMolaMMO_CONST_CALC_MIN : TFMTBCdField;
    cdsMolaMMO_CONST_CALC_MAX : TFMTBCdField;
    cdsMolaMMO_ALTURAL1 : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_ALT1_MIN : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_ALT1_MAX : TFMTBCdField;
    cdsMolaMMO_ALTURAL2 : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_ALT2_MIN : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_ALT2_MAX : TFMTBCdField;
    cdsMolaMMO_ALTURAL3 : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_ALT3_MIN : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_ALT3_MAX : TFMTBCdField;
    cdsMolaMMO_ALTURAL4 : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_ALT4_MIN : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_ALT4_MAX : TFMTBCdField;
    cdsMolaMMO_CURSOS1 : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_CURS1_MIN : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_CURS1_MAX : TFMTBCdField;
    cdsMolaMMO_CURSOS2 : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_CURS2_MIN : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_CURS2_MAX : TFMTBCdField;
    cdsMolaMMO_CURSOS3 : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_CURS3_MIN : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_CURS3_MAX : TFMTBCdField;
    cdsMolaMMO_CURSOS4 : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_CURS4_MIN : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_CURS4_MAX : TFMTBCdField;
    cdsMolaMMO_CARGAP1 : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_CARGA1_MIN : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_CARGA1_MAX : TFMTBCdField;
    cdsMolaMMO_CARGAP2 : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_CARGA2_MIN : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_CARGA2_MAX : TFMTBCdField;
    cdsMolaMMO_CARGAP3 : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_CARGA3_MIN : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_CARGA3_MAX : TFMTBCdField;
    cdsMolaMMO_CARGAP4 : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_CARGA4_MIN : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_CARGA4_MAX : TFMTBCdField;
    cdsMolaMMO_TENSAO1 : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_TENSAO1_MIN : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_TENSAO1_MAX : TFMTBCdField;
    cdsMolaMMO_TENSAO2 : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_TENSAO2_MIN : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_TENSAO2_MAX : TFMTBCdField;
    cdsMolaMMO_TENSAO3 : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_TENSAO3_MIN : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_TENSAO3_MAX : TFMTBCdField;
    cdsMolaMMO_TENSAO4 : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_TENSAO4_MIN : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_TENSAO4_MAX : TFMTBCdField;
    cdsMolaMMO_CARGA : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_CARGA_MIN : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_CARGA_MAX : TFMTBCdField;
    cdsMolaMMO_TENSAO : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_TEN_MIN : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_TEN_MAX : TFMTBCdField;
    cdsMolaMMO_MAQUINA : TStringField;
    cdsMolaMMO_MANDRIL : TStringField;
    cdsMolaMMO_CACHIMBO : TStringField;
    cdsMolaMMO_COPIADOR : TStringField;
    cdsMolaMMO_GANCHO : TStringField;
    cdsMolaMMO_DISCO : TStringField;
    cdsMolaMMO_OUTROS : TStringField;
    cdsMolaMMO_LOCALIZACAO : TStringField;
    cdsMolaMMO_SETOR : TStringField;
    cdsMolaMMO_OBSGERAIS : TBlobField;
    PESO_ESPECIFICO : TDBEdit;
    Label150 : TLabel;
    RES_TRACAO : TDBEdit;
    Label151 : TLabel;
    CISALHAMENTO : TDBEdit;
    Label153 : TLabel;
    Label154 : TLabel;
    Label155 : TLabel;
    Label156 : TLabel;
    Label157 : TLabel;
    TEMPO_TEMPERA : TDBEdit;
    TEMPERATURA_TEMPERA : TDBEdit;
    TEMPERATURA_REVENIMENTO : TDBEdit;
    Label158 : TLabel;
    Label159 : TLabel;
    DUREZA_MINIMA : TDBEdit;
    Label160 : TLabel;
    Label161 : TLabel;
    Label162 : TLabel;
    DUREZA_MAXIMA : TDBEdit;
    Label163 : TLabel;
    Label165 : TLabel;
    Label166 : TLabel;
    Label167 : TLabel;
    Label168 : TLabel;
    Label169 : TLabel;
    Label170 : TLabel;
    Label171 : TLabel;
    Label172 : TLabel;
    TRATAMENTO_SUPERFICIAL : TDBComboBox;
    TRATAMENTO_TERMICO : TDBComboBox;
    Label174 : TLabel;
    Label175 : TLabel;
    DIAMETRO_ARAME : TDBEdit;
    Label176 : TLabel;
    Label177 : TLabel;
    DIA_MAX : TDBEdit;
    DIA_MIN : TDBEdit;
    Label179 : TLabel;
    DI_MIN : TDBEdit;
    Label180 : TLabel;
    DI_MAX : TDBEdit;
    Label181 : TLabel;
    DIAMETRO_INTERNO : TDBEdit;
    Label182 : TLabel;
    DM_MIN : TDBEdit;
    Label183 : TLabel;
    DM_MAX : TDBEdit;
    Label184 : TLabel;
    DIAMETRO_MEDIO : TDBEdit;
    Label185 : TLabel;
    DE_MIN : TDBEdit;
    Label189 : TLabel;
    DE_MAX : TDBEdit;
    Label190 : TLabel;
    DIAMETRO_EXTERNO : TDBEdit;
    Label191 : TLabel;
    DEM_MIN : TDBEdit;
    Label195 : TLabel;
    DEM_MAX : TDBEdit;
    Label196 : TLabel;
    DIAMETRO_EXTERNO_MEIO : TDBEdit;
    Label197 : TLabel;
    Label198 : TLabel;
    VAO : TDBEdit;
    Label199 : TLabel;
    VAO_MAX : TDBEdit;
    VAO_MIN : TDBEdit;
    Label200 : TLabel;
    Label225 : TLabel;
    PASSO : TDBEdit;
    Label202 : TLabel;
    PASSO_MAX : TDBEdit;
    PASSO_MIN : TDBEdit;
    Label203 : TLabel;
    Label204 : TLabel;
    COM_LIVRE : TDBEdit;
    Label205 : TLabel;
    LIVRE_MAX : TDBEdit;
    LIVRE_MIN : TDBEdit;
    Label206 : TLabel;
    Label207 : TLabel;
    COM_SOLIDO : TDBEdit;
    Label208 : TLabel;
    SOLIDO_MAX : TDBEdit;
    SOLIDO_MIN : TDBEdit;
    Label209 : TLabel;
    Label210 : TLabel;
    ESPIRAS_UTEIS : TDBEdit;
    Label211 : TLabel;
    ESPUTEIS_MAX : TDBEdit;
    ESPUTEIS_MIN : TDBEdit;
    Label212 : TLabel;
    Label213 : TLabel;
    ESPIRAL_TOTAL : TDBEdit;
    Label214 : TLabel;
    ESPT_MAX : TDBEdit;
    ESPT_MIN : TDBEdit;
    Label215 : TLabel;
    Label216 : TLabel;
    DESENVOLVIMENTO : TDBEdit;
    Label217 : TLabel;
    DES_MAX : TDBEdit;
    DES_MIN : TDBEdit;
    Label218 : TLabel;
    Label219 : TLabel;
    PARALIELISMO : TDBEdit;
    Label220 : TLabel;
    Label221 : TLabel;
    PERPENDICULARIMO : TDBEdit;
    Label222 : TLabel;
    RETIFICADO : TDBComboBox;
    SENTIDO : TDBComboBox;
    Label223 : TLabel;
    Label224 : TLabel;
    CONSTANTE_ESPE : TDBEdit;
    CONSTANTE_CALCULADA : TDBEdit;
    CONST_MAX : TDBEdit;
    CONST_MIN : TDBEdit;
    CONST_CALC_MAX : TDBEdit;
    CONST_CALC_MIN : TDBEdit;
    Label226 : TLabel;
    ALTURAL1 : TDBEdit;
    Label227 : TLabel;
    Label228 : TLabel;
    Label229 : TLabel;
    Label230 : TLabel;
    Label231 : TLabel;
    Label232 : TLabel;
    Label233 : TLabel;
    Label234 : TLabel;
    Label235 : TLabel;
    Label236 : TLabel;
    Label237 : TLabel;
    CARGA1_MAX : TDBEdit;
    Label238 : TLabel;
    CARGAP1 : TDBEdit;
    Label239 : TLabel;
    Label240 : TLabel;
    Label241 : TLabel;
    Label242 : TLabel;
    CARGA1_MIN : TDBEdit;
    CURS1_MIN : TDBEdit;
    CURS1_MAX : TDBEdit;
    Label243 : TLabel;
    Label244 : TLabel;
    Label245 : TLabel;
    Label246 : TLabel;
    Label247 : TLabel;
    Label248 : TLabel;
    Label249 : TLabel;
    ALTURAL4 : TDBEdit;
    CURSOS1 : TDBEdit;
    Label250 : TLabel;
    ALT3_MIN : TDBEdit;
    Label251 : TLabel;
    ALT2_MIN : TDBEdit;
    Label252 : TLabel;
    Label253 : TLabel;
    Label254 : TLabel;
    ALT1_MIN : TDBEdit;
    ALT2_MAX : TDBEdit;
    ALT3_MAX : TDBEdit;
    Label255 : TLabel;
    Label256 : TLabel;
    Label257 : TLabel;
    Label258 : TLabel;
    Label259 : TLabel;
    ALTURAL2 : TDBEdit;
    ALTURAL3 : TDBEdit;
    Label260 : TLabel;
    Label261 : TLabel;
    Label262 : TLabel;
    Label263 : TLabel;
    Label264 : TLabel;
    Label265 : TLabel;
    ALT1_MAX : TDBEdit;
    ALT4_MAX : TDBEdit;
    ALT4_MIN : TDBEdit;
    CURSOS2 : TDBEdit;
    CURS2_MAX : TDBEdit;
    CURS2_MIN : TDBEdit;
    CURSOS3 : TDBEdit;
    CURS3_MAX : TDBEdit;
    CURS3_MIN : TDBEdit;
    CURSOS4 : TDBEdit;
    CURS4_MAX : TDBEdit;
    CURS4_MIN : TDBEdit;
    CARGAP2 : TDBEdit;
    CARGA2_MAX : TDBEdit;
    CARGA2_MIN : TDBEdit;
    CARGAP3 : TDBEdit;
    CARGA3_MAX : TDBEdit;
    CARGA3_MIN : TDBEdit;
    CARGAP4 : TDBEdit;
    CARGA4_MAX : TDBEdit;
    CARGA4_MIN : TDBEdit;
    tsCampos4 : TTabSheet;
    Label267 : TLabel;
    MAQUINA : TDBEdit;
    Label268 : TLabel;
    MANDRIL : TDBEdit;
    Label269 : TLabel;
    CACHIMBO : TDBEdit;
    COPIADOR : TDBEdit;
    Label270 : TLabel;
    GANCHO : TDBEdit;
    Label271 : TLabel;
    DISCO : TDBEdit;
    Label272 : TLabel;
    Label273 : TLabel;
    OUTROS : TDBEdit;
    Label274 : TLabel;
    Label275 : TLabel;
    LOCALIZACAO : TDBEdit;
    Label276 : TLabel;
    Label277 : TLabel;
    Label278 : TLabel;
    Label279 : TLabel;
    SETOR : TDBEdit;
    Label280 : TLabel;
    OBSGERAIS : TDBMemo;
    Label281 : TLabel;
    PESOKG : TDBEdit;
    Label282 : TLabel;
    Label283 : TLabel;
    mobservacoesMola : TDBMemo;
    SgDbSearchCombo2 : TSgDbSearchCombo;
    SgDbSearchCombo3 : TSgDbSearchCombo;
    SgDbSearchCombo4 : TSgDbSearchCombo;
    CBACABAMENTO : TSgDbSearchCombo;
    CBaCABAMENTOCORES : TSgDbSearchCombo;
    TRATAMENTO_SUPERFICIAL2 : TSgDbSearchCombo;
    Label173 : TLabel;
    edTempo_revenimento : TDBEdit;
    Label201 : TLabel;
    Label284 : TLabel;
    TENSAO1 : TDBEdit;
    Label285 : TLabel;
    TENSAO1_MAX : TDBEdit;
    Label286 : TLabel;
    TENSAO1_MIN : TDBEdit;
    TENSAO2_MIN : TDBEdit;
    TENSAO3_MIN : TDBEdit;
    TENSAO4_MIN : TDBEdit;
    Label287 : TLabel;
    Label288 : TLabel;
    Label289 : TLabel;
    TENSAO2_MAX : TDBEdit;
    TENSAO3_MAX : TDBEdit;
    TENSAO4_MAX : TDBEdit;
    Label290 : TLabel;
    Label291 : TLabel;
    Label292 : TLabel;
    TENSAO2 : TDBEdit;
    TENSAO3 : TDBEdit;
    TENSAO4 : TDBEdit;
    Label293 : TLabel;
    Label294 : TLabel;
    Label295 : TLabel;
    Label296 : TLabel;
    Label297 : TLabel;
    TENSAO : TDBEdit;
    CARGA : TDBEdit;
    CARGA_MAX : TDBEdit;
    TEN_MAX : TDBEdit;
    TEN_MIN : TDBEdit;
    CARGA_MIN : TDBEdit;
    Label298 : TLabel;
    Label299 : TLabel;
    Label300 : TLabel;
    Label301 : TLabel;
    Label302 : TLabel;
    SgDbSearchCombo8 : TSgDbSearchCombo;
    Label303 : TLabel;
    ALT_GANCHO : TDBEdit;
    ALT_GANCHO_MAX : TDBEdit;
    Label304 : TLabel;
    Label305 : TLabel;
    ALT_GANCHO_MIN : TDBEdit;
    Label306 : TLabel;
    ABERT_GANCHO : TDBEdit;
    ABERT_GANCHO_MAX : TDBEdit;
    Label307 : TLabel;
    Label308 : TLabel;
    ABERT_GANCHO_MIN : TDBEdit;
    Label309 : TLabel;
    COMP_GANCHO : TDBEdit;
    COMP_GANCHO_MAX : TDBEdit;
    Label310 : TLabel;
    Label311 : TLabel;
    COMP_GANCHO_MIN : TDBEdit;
    Label315 : TLabel;
    COMP_CORPO : TDBEdit;
    Label316 : TLabel;
    COMP_CORPO_MAX : TDBEdit;
    COMP_CORPO_MIN : TDBEdit;
    Label317 : TLabel;
    cdsMolaMMO_COMP_CORPO : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_COMP_CORPO_MAX : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_COMP_CORPO_MIN : TFMTBCdField;
    cdsMolaMMO_ALT_GANCHO : TStringField;
    cdsMolaMMO_TOLERANCIA_ALT_GANCHO_MAX : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_ALT_GANCHO_MIN : TFMTBCdField;
    cdsMolaMMO_ABERT_GANCHO : TStringField;
    cdsMolaMMO_TOLERANCIA_ABERT_GANCHO_MAX : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_ABERT_GANCHO_MIN : TFMTBCdField;
    cdsMolaMMO_COMP_GANCHO : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_COMP_GANCHO_MAX : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_COMP_GANCHO_MIN : TFMTBCdField;
    Label312 : TLabel;
    cdsMolaMMO_TIPOEMBALAGEM : TStringField;
    GroupBox2 : TGroupBox;
    DBText1 : TDBText;
    DBText2 : TDBText;
    dsGancho : TDataSource;
    cdsGancho : TClientDataSet;
    qGancho : TSQLQuery;
    dspGancho : TDataSetProvider;
    cdsGanchoGAN_CODIGO : TIntegerField;
    cdsGanchoGAN_NOME : TStringField;
    cdsGanchoGAN_QTD_ESPIRAS : TSingleField;
    DE_MAIOR_MAX : TDBEdit;
    Label164 : TLabel;
    DIAMETRO_EXT_MAIOR : TDBEdit;
    Label178 : TLabel;
    DE_MAIOR_MIN : TDBEdit;
    Label186 : TLabel;
    DE_MENOR_MAX : TDBEdit;
    Label187 : TLabel;
    Label188 : TLabel;
    MMO_TOLERANCIA_DE_MENOR_MIN : TDBEdit;
    Label192 : TLabel;
    cdsMolaMMO_DIAMETRO_EXT_MAIOR : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_DE_MAIOR_MIN : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_DE_MAIOR_MAX : TFMTBCdField;
    cdsMolaMMO_DIAMETRO_EXT_MENOR : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_DE_MENOR_MIN : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_DE_MENOR_MAX : TFMTBCdField;
    DIAMETRO_EXT_MENOR : TDBEdit;
    cdsMolaMMO_PARTE_DI : TStringField;
    dbMmoParteDI : TDBCheckBox;
    cdsMolaMMO_TOLERANCIA_DI_MENOR_MIN : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_DI_MENOR_MAX : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_DI_MAIOR_MIN : TFMTBCdField;
    cdsMolaMMO_TOLERANCIA_DI_MAIOR_MAX : TFMTBCdField;
    DIAMETRO_INT_MAIOR : TDBEdit;
    Label152 : TLabel;
    Label193 : TLabel;
    DIAMETRO_INT_MENOR : TDBEdit;
    Label194 : TLabel;
    Label266 : TLabel;
    DI_MAIOR_MAX : TDBEdit;
    DI_MENOR_MAX : TDBEdit;
    Label313 : TLabel;
    Label314 : TLabel;
    DI_MAIOR_MIN : TDBEdit;
    DI_MENOR_MIN : TDBEdit;
    Label318 : TLabel;
    PERDA : TDBEdit;
    cdsMolaMMO_PERDA : TFMTBCdField;
    Label319 : TLabel;
    cdsMolaMMO_TIPO_HASTE : TStringField;
    cdsMolaMMO_COMPRIMENTO_HASTE_HA : TFMTBCdField;
    cdsMolaMMO_COMPRIMENTO_HASTE_HB : TFMTBCdField;
    cdsMolaMMO_POSICAO_HASTE : TStringField;
    Label320 : TLabel;
    HASTEHA : TDBEdit;
    Label321 : TLabel;
    HASTEHB : TDBEdit;
    TIPO_HASTE : TDBComboBox;
    Label322 : TLabel;
    POSICAO_HASTE : TDBComboBox;
    TIPOEMBALAGEM : TSgDbSearchCombo;
    cdsMolaTEM_CODIGO : TIntegerField;
    cdsMolaMMO_DIAMETRO_INT_MENOR : TStringField;
    cdsMolaMMO_DIAMETRO_INT_MAIOR : TStringField;
    tsQualidade : TTabSheet;
    dbsPRD_REFER : TSgDbSearchCombo;
    Label323 : TLabel;
    QParametros : TSQLQuery;
    dspParametros : TDataSetProvider;
    dsParametros : TDataSource;
    cdsParametros : TClientDataSet;
    cdsParametrosPAR_CODIGO : TIntegerField;
    cdsParametrosPAR_DESCRICAO : TStringField;
    DBGrid6 : TDBGrid;
    bbAdicionarParametro : TBitBtn;
    bbEditarParametro : TBitBtn;
    bbExcluirParametro : TBitBtn;
    Label324 : TLabel;
    Label325 : TLabel;
    Label326 : TLabel;
    edPRD_REFER : TDBEdit;
    dsCQP : TDataSource;
    cdsCQP : TClientDataSet;
    dspCQP : TDataSetProvider;
    cdsCQPPRD_REFER : TStringField;
    cdsCQPPAR_CODIGO : TIntegerField;
    cdsCQPCQP_ESPERADO : TStringField;
    cdsCQPCQP_VALOR_MIN : TStringField;
    cdsCQPCQP_VALOR_MAX : TStringField;
    dbCQP_ESPERADO : TDBEdit;
    dbCQP_VALOR_MIN : TDBEdit;
    dbCQP_VALOR_MAX : TDBEdit;
    qCQP : TSQLQuery;
    qCQPPRD_REFER : TStringField;
    qCQPPAR_CODIGO : TIntegerField;
    qCQPCQP_ESPERADO : TStringField;
    qCQPCQP_VALOR_MIN : TStringField;
    qCQPCQP_VALOR_MAX : TStringField;
    bbGravarParametro : TBitBtn;
    bbCancelarParametro : TBitBtn;
    qCQPPAR_DESCRICAO : TStringField;
    cdsCQPPAR_DESCRICAO : TStringField;
    dbCQP_PAR_DESCRICAO : TDBEdit;
    edSaldo : TMaskEdit;
    Label327 : TLabel;
    TabSheet8 : TTabSheet;
    GroupBox20 : TGroupBox;
    Label328 : TLabel;
    Label329 : TLabel;
    btnIndustrializacao : TBitBtn;
    dtInicioInd : TJvDateEdit;
    dtFimInd : TJvDateEdit;
    chkMultiempresaIndustrializacao : TCheckBox;
    dbgrdIndustrializacao : TDBGrid;
    CdsIndustrializacao : TSQLClientDataSet;
    dsIndustrializacao : TDataSource;
    CdsIndustrializacaoENF_EMISSAO : TDateField;
    CdsIndustrializacaoENF_NOTANUMBER : TStringField;
    CdsIndustrializacaoFOR_CODIGO : TStringField;
    CdsIndustrializacaoFOR_RAZAO : TStringField;
    CdsIndustrializacaoENF_PRECO : TFMTBCdField;
    CdsIndustrializacaoCUSTO_ENTRADA : TFMTBCdField;
    CdsIndustrializacaoENF_QTDE : TFMTBCdField;
    CdsIndustrializacaoENF_IPIALIQ : TFMTBCdField;
    CdsIndustrializacaoENF_VLSUBST : TFMTBCdField;
    CdsIndustrializacaoENF_IT_VALFRETE : TFMTBCdField;
    CdsIndustrializacaoENF_IT_VLDESP_ACES : TFMTBCdField;
    CdsIndustrializacaoENF_IT_DESCTO : TFMTBCdField;
    CdsIndustrializacaoENF_ICMSALIQ : TFMTBCdField;
    CdsIndustrializacaoENF_CFOP : TStringField;
    CdsIndustrializacaoFOR_FONE : TStringField;
    CdsIndustrializacaoFOR_CONTATO : TStringField;
    CdsIndustrializacaoDescontoAplicado : TFloatField;
    CdsIndustrializacaoEMP_CODIGO : TStringField;
    DBEdit23 : TDBEdit;
    Label100 : TLabel;
    SqlProdutosPRD_DESCONTO : TFMTBCdField;
    CdsProdutosPRD_DESCONTO : TFMTBCdField;
    EditarFicha1 : TMenuItem;
    DBEdit61 : TDBEdit;
    Label101 : TLabel;
    CdsComprasENF_ORIGEM_MERCADORIA : TIntegerField;
    CdsItensFichaFTI_PERCENTUAL : TFMTBCdField;
    lbPercentualConsumo : TLabel;
    curPercentualConsumo : TJvValidateEdit;
    Label102 : TLabel;
    currTotalConsumo : TJvValidateEdit;
    GrpGrade : TGroupBox;
    DBGridGrade : TDBGrid;
    qAuxF : TFDQuery;
    cdsMolaMMO_DIAMETRO_MEDIO_MEIO : TFMTBCdField;
    cdsMolaMMO_DIAMETRO_MEDIO_MEIO_MIN : TFMTBCdField;
    cdsMolaMMO_DIAMETRO_MEDIO_MEIO_MAX : TFMTBCdField;
    Label114 : TLabel;
    Label116 : TLabel;
    Label117 : TLabel;
    MMO_DIAMETRO_MEDIO_MEIO_MIN : TDBEdit;
    MMO_DIAMETRO_MEDIO_MEIO_MAX : TDBEdit;
    MMO_DIAMETRO_MEDIO_MEIO : TDBEdit;
    CdsPrdClassIPI : TFDQuery;
    CdsPrdClassIPIIPI_CODIGO : TStringField;
    CdsPrdClassIPIIPI_ALIQ : TFMTBCdField;
    CdsPrdClassIPIEMP_CODIGO : TStringField;
    CdsPrdClassIPIIPI_APELIDO : TStringField;
    CdsPrdClassIPINCM_TEMCREDITO : TStringField;
    CdsPrdClassIPINCM_DESC_FAMILIA : TMemoField;
    CdsPrdClassIPIIPI_VALOR_POR_ITEM : TFMTBCdField;
    CdsPrdClassIPIIPI_EX : TStringField;
    sgdbEnderecamento : TSgDbSearchCombo;
    qRegistroEndereco : TSQLQuery;
    SqlProdutosPRD_CAPACIDADE_OBRIGATORIA: TStringField;
    CdsProdutosPRD_CAPACIDADE_OBRIGATORIA: TStringField;
    DBCheckBox5: TDBCheckBox;
    cbGrauTolerancia : TDBComboBox;
    cdsMolaMMO_GRAU_TOLERANCIA_DM : TIntegerField;
    Label118 : TLabel;
    BitBtn2 : TBitBtn;
    gbEmpresaPreco : TGroupBox;
    cbPrecoEmpresa : TJvDBComboBox;
    GroupBox11 : TGroupBox;
    lbUsuario : TLabel;
    lbAtualizado : TLabel;
    edCustoEntrada : TJvValidateEdit;
    edMargemVenda : TJvValidateEdit;
    edPrecoVenda : TJvValidateEdit;
    GroupBox25: TGroupBox;
    Label330: TLabel;
    IncluirArquivoFichaTecnica: TFilenameEdit;
    BitBtn5: TBitBtn;
    cdsMolaMMO_ARQUIVO_FICHA_TECNICA: TStringField;
    cbAlmoxarifadoLote: TComboBoxRw;
    cdsLotes: TFDQuery;
    cdsLotesPRDL_REGISTRO: TIntegerField;
    cdsLotesEMP_CODIGO: TStringField;
    cdsLotesPRDL_DATA_FABRICACAO: TDateField;
    cdsLotesPRDL_DATA_VALIDADE: TDateField;
    cdsLotesPRDL_LOTE: TStringField;
    cdsLotesPRDL_PRECO_MAXIMO: TFMTBCDField;
    cdsLotesPRDL_SALDO: TFMTBCDField;
    cdsLotesPRD_CODIGO: TStringField;
    cdsLotesPRDL_CADASTRO: TDateField;
    cdsLotesPRDL_DESCRICAO: TStringField;
    cdsLotesPRDL_CUSTO: TFMTBCDField;
    cdsLotesPRDL_NFE: TStringField;
    cdsLotesFOR_CODIGO: TStringField;
    cdsLotesFOR_RAZAO: TStringField;
    cdsLotesPRDL_QTDELOTE: TFMTBCDField;
    cdsLotesQtde_USADA: TFMTBCDField;
    cdsLotesAMX_CODIGO: TStringField;
    cdsLotesAMX_DESCRI: TStringField;
    cbSemEstoque: TCheckBox;
    cbApenasComEstoque: TCheckBox;
    cbLoteVencido: TCheckBox;
    cbFiltroAlmoxarifado: TComboBoxRw;
    Label331: TLabel;
    Label332: TLabel;
    prdeRegistro: TEdit;
    PageControl1: TPageControl;
    TabSheet12: TTabSheet;
    TabSheet13: TTabSheet;
    cxGrid2: TDBGrid;
    cdsEnderecos: TClientDataSet;
    dsEnderecos: TDataSource;
    DBGrid8: TDBGrid;
    cdsEnderecosPRDE_REGISTRO: TIntegerField;
    cdsEnderecosPRDE_ENDERECO: TStringField;
    cdsEnderecosEMP_RAZAO: TStringField;
    dspEnderecos: TDataSetProvider;
    qEnderecos: TSQLQuery;
    dsRegistroEndereco: TDataSource;
    procedure Bit_SairClick( Sender : tObject );
    procedure Bit_novoClick( Sender : tObject );
    procedure Bit_ExcluirClick( Sender : tObject );
    procedure Bit_GravarClick( Sender : tObject );
    procedure DesabilitaBotoes;
    procedure DesabilitaBotoesFTC;
    procedure HabilitaBotoes;
    procedure HabilitaBotoesFTC;
    procedure verificaEdicao;
    procedure verificaEdicaoFTC;
    procedure CalculaCusto;

    procedure Bit_CancelarClick( Sender : tObject );
    procedure FormCloseQuery( Sender : tObject; var CanClose : Boolean );
    procedure DBNavigator1Click( Sender : tObject; Button : TNavigateBtn );
    procedure FormShow( Sender : tObject );
    procedure Bit_ListaClick( Sender : tObject );
    procedure Bit_RelatorioClick( Sender : tObject );
    procedure EdtPrd_ReferExit( Sender : tObject );
    procedure PgCtrl_ProdutosChange( Sender : tObject );
    procedure AtivaSqls;
    procedure DbeVar2Exit( Sender : tObject );
    procedure FormClose( Sender : tObject; var Action : TCloseAction );
    procedure BitBtn1Click( Sender : tObject );
    procedure DBEPRD_CODBARKeyPress( Sender : tObject; var Key : Char );
    procedure DBEPRD_CODBARExit( Sender : tObject );
    procedure DBEPRD_CODBAREnter( Sender : tObject );
    procedure PctrlProdutosChange( Sender : tObject );
    procedure Bit_FTC_NovoClick( Sender : tObject );
    procedure Bit_FTC_CopiarClick( Sender : tObject );
    procedure BIT_FTC_EXCLUIRClick( Sender : tObject );
    procedure BIT_FTC_GRAVARClick( Sender : tObject );
    procedure BIT_FTC_RELATORIOClick( Sender : tObject );
    procedure SpProdutoClick( Sender : tObject );
    procedure Bit_ExcluirMateriaClick( Sender : tObject );
    procedure Bit_GravarMateriaClick( Sender : tObject );
    procedure Bit_CancelarMateriaClick( Sender : tObject );
    procedure Bit_FTC_CancelarClick( Sender : tObject );
    procedure DBGridFichaTecnicaItemDblClick( Sender : tObject );
    procedure EdtReferChange( Sender : tObject );
    procedure EdtReferExit( Sender : tObject );
    procedure CdsItensFichaAfterScroll( DataSet : TDataSet );
    procedure DbeFTC_TUPExit( Sender : tObject );
    procedure AlterarItensdaFichaTecnica1Click( Sender : tObject );
    procedure ExcluirItensdaFichaTcnica1Click( Sender : tObject );
    procedure Bit_AlterarRefClick( Sender : tObject );
    procedure Bit_EquivalenciaClick( Sender : tObject );
    procedure DBGridFichaTecnicaItemKeyDown( Sender : tObject; var Key : Word; Shift : TShiftState );
    procedure DbDtFTC_CRIACAOKeyPress( Sender : tObject; var Key : Char );
    procedure SqlCdsEstoqueDetalheCalcFields( DataSet : TDataSet );
    procedure DBECustoliquidoEnter( Sender : tObject );
    procedure DBECustoliquidoExit( Sender : tObject );
    procedure DBEprecoVendaExit( Sender : tObject );
    procedure DBEmargemOfertaExit( Sender : tObject );
    procedure DBEprecoOfertaExit( Sender : tObject );
    procedure CdsGradeBeforeInsert( DataSet : TDataSet );
    procedure CdsGradeAfterInsert( DataSet : TDataSet );
    procedure TabGradeShow( Sender : tObject );
    procedure CdsGradeAfterPost( DataSet : TDataSet );
    procedure CdsProdutosReferenciaAfterPost( DataSet : TDataSet );
    procedure CdsProdutosReferenciaBeforePost( DataSet : TDataSet );
    procedure CdsProdutosReferenciaBeforeInsert( DataSet : TDataSet );
    procedure CdsProdutosReferenciaAfterDelete( DataSet : TDataSet );
    procedure SpeedButton5Click( Sender : tObject );
    procedure JvDBComboBox1Change( Sender : tObject );
    procedure DbcLkPrd_IPIExit( Sender : tObject );
    procedure TabSheet4Show( Sender : tObject );
    procedure dbgrdLoteDrawColumnCell( Sender : tObject; const Rect : TRect; DataCol : Integer; Column : TColumn; State : TGridDrawState );
    procedure CdsLotesAfterDelete( DataSet : TDataSet );
    procedure CdsLotesAfterPost( DataSet : TDataSet );
    procedure CdsLotesBeforeInsert( DataSet : TDataSet );
    procedure CdsLotesBeforePost( DataSet : TDataSet );
    procedure SqlItensGradeAfterDelete( DataSet : TDataSet );
    procedure SqlItensGradeAfterPost( DataSet : TDataSet );
    procedure CdsGradeAfterDelete( DataSet : TDataSet );
    procedure dbedtPRG_MEDIDA_1Exit( Sender : tObject );
    procedure dbedtPRG_MEDIDA_2Exit( Sender : tObject );
    procedure dbedtPRG_MEDIDA_3Exit( Sender : tObject );
    procedure dbedtPRG_REDUCAO_PERCENTExit( Sender : tObject );
    procedure CdsGradeCalcFields( DataSet : TDataSet );
    procedure CdsComprasCalcFields( DataSet : TDataSet );
    procedure SdCadastroGradeClick( Sender : tObject );
    procedure EditDataIExit( Sender : tObject );
    procedure EditDataFExit( Sender : tObject );
    procedure BitPesquisarClick( Sender : tObject );
    procedure frxReport1GetValue( const VarName : String; var Value : Variant );
    procedure BtnRelatoriosClick( Sender : tObject );
    procedure FormCreate( Sender : tObject );
    procedure mComplementoKeyPress( Sender : tObject; var Key : Char );
    procedure SpeedButton7Click( Sender : tObject );
    procedure SpeedButton8Click( Sender : tObject );
    procedure btnSalvarArquivoClick( Sender : tObject );
    procedure DBGrid7DblClick( Sender : tObject );
    procedure DBGrid7KeyPress( Sender : tObject; var Key : Char );
    procedure AbrirArquivo1Click( Sender : tObject );
    procedure ExcluirArquivo1Click( Sender : tObject );
    procedure btnCadastroEnderecamentoClick( Sender : tObject );
    procedure btnExcelClick( Sender : tObject );
    procedure Listagem1Click( Sender : tObject );
    procedure N2CdigosdoFornecedor1Click( Sender : tObject );
    procedure dAfterInsert( DataSet : TDataSet );
    procedure grCodCliEditButtonClick( Sender : tObject );
    procedure CdsCodigoOriginalBeforePost( DataSet : TDataSet );
    procedure CdsCodigoOriginalAfterPost( DataSet : TDataSet );
    procedure CdsCodigoOriginalBeforeDelete( DataSet : TDataSet );
    procedure CdsCodigoOriginalAfterDelete( DataSet : TDataSet );
    procedure CdsCodigoOriginalCLI_CODIGOValidate( Sender : TField );
    procedure BtnDuplicarClick( Sender : tObject );
    procedure CdsCodigoOriginalBeforeInsert( DataSet : TDataSet );
    procedure CdsCodigoOriginalBeforeEdit( DataSet : TDataSet );
    procedure sgDBLookupCombo1MenuPesquisaClick( Sender : tObject );
    procedure cdsLotesPRDL_DATA_FABRICACAOGetText( Sender : TField; var Text : string; DisplayText : Boolean );
    procedure CdsProdutosAfterInsert( DataSet : TDataSet );
    procedure CdsProdutosBeforeEdit( DataSet : TDataSet );
    procedure CdsProdutosCalcFields( DataSet : TDataSet );
    procedure CdsProdutosAfterScroll( DataSet : TDataSet );
    procedure CbTipoMenuNovoClick( Sender : tObject );
    procedure CbTipoSelect( Sender : tObject );
    procedure CbGrupoMenuNovoClick( Sender : tObject );
    procedure CbSegmMenuNovoClick( Sender : tObject );
    procedure DBEdit24MenuPesquisaClick( Sender : tObject );
    procedure CdsProdutosID_PRD_ESPECIFICOGetText( Sender : TField; var Text : string; DisplayText : Boolean );
    procedure CdsProdutosID_PRD_ESPECIFICOSetText( Sender : TField; const Text : string );
    procedure DBEPRD_TIPOExit( Sender : tObject );
    procedure DBEPRD_GRUPOExit( Sender : tObject );
    procedure DBEPRD_SEGMENTOExit( Sender : tObject );
    procedure CdsItensFichaAfterInsert( DataSet : TDataSet );
    procedure DbePrd_PesoLiqExit( Sender : tObject );
    procedure TRATAMENTO_TERMICOChange( Sender : tObject );
    procedure CdsCodigoOriginalCLI_CODIGOSetText( Sender : TField; const Text : string );
    procedure PopupMenu1Popup( Sender : tObject );
    procedure VeraFichaTcnicaDesteItem1Click( Sender : tObject );
    procedure CdsProdutosAfterPost( DataSet : TDataSet );
    procedure CdsProdutosAfterCancel( DataSet : TDataSet );
    procedure FormDestroy( Sender : tObject );
    procedure CdsProdutosNewRecord( DataSet : TDataSet );
    procedure pcFichaTecnicaChange( Sender : tObject );
    procedure cdsProcessosAfterScroll( DataSet : TDataSet );
    procedure btnCriarParamClick( Sender : tObject );
    procedure AcoesOperacoes( Sender : tObject );
    function MaiorSequencia( cds : TClientDataSet ) : Integer;
    procedure btnEquipamentosClick( Sender : tObject );
    procedure btnNovaOperacaoClick( Sender : tObject );
    procedure btnCopiarClick( Sender : tObject );
    procedure miLeaiuteClick( Sender : tObject );
    procedure miImportarExcelClick( Sender : tObject );
    procedure spMargemVendaClick( Sender : tObject );
    procedure btnConfirmarMargemClick( Sender : tObject );
    procedure FormActivate( Sender : tObject );
    procedure EdOperacaoCodigoExit( Sender : tObject );
    procedure edOperacaoSelect( Sender : tObject );
    procedure CdsProdutosPRD_PVENDAChange( Sender : TField );
    procedure tsMPusadoEnter( Sender : tObject );
    procedure miExcelClick( Sender : tObject );
    procedure miWordClick( Sender : tObject );
    procedure btnMP_ExpotarClick( Sender : tObject );
    procedure CdsLotesCalcFields( DataSet : TDataSet );
    procedure miLoteExcelClick( Sender : tObject );
    procedure miLoteWordClick( Sender : tObject );
    procedure JvArrowButton1Click( Sender : tObject );
    procedure Button1Click( Sender : tObject );
    procedure frxMPusadoGetValue( const VarName : string; var Value : Variant );
    procedure N3Mesmoleaiutedeimportao1Click( Sender : tObject );
    procedure miExportalExcelClick( Sender : tObject );
    procedure DBECustoMedioExit( Sender : tObject );
    procedure DBECustoEntradaExit( Sender : tObject );
    procedure PesqCNAESelect( Sender : tObject );
    procedure chkmultiempresaClick( Sender : tObject );
    procedure SqlCdsEstoqueDetalheOSV_STATUSGetText( Sender : TField; var Text : string; DisplayText : Boolean );
    procedure btncomprasClick( Sender : tObject );
    procedure chkMultiempresaComprasClick( Sender : tObject );
    procedure mDescricaoEtapasEnter( Sender : tObject );
    procedure mDescricaoEtapasExit( Sender : tObject );
    procedure DbeBaseFormulaChange( Sender : tObject );
    procedure CbAlmoxarifadoSelect( Sender : tObject );
    procedure EdAlmoxarifadoCodigoExit( Sender : tObject );
    procedure BIT_MOLA_GRAVARClick( Sender : tObject );
    procedure RichDocClick( Sender : tObject );
    procedure cdsMolaBeforePost( DataSet : TDataSet );
    procedure cdsMolaMMO_TRATAMENTO_TERMICOGetText( Sender : TField; var Text : string; DisplayText : Boolean );
    procedure cdsMolaMMO_TRATAMENTO_SUPERFICIALGetText( Sender : TField; var Text : string; DisplayText : Boolean );
    procedure cdsMolaMMO_RETIFICADOGetText( Sender : TField; var Text : string; DisplayText : Boolean );
    procedure BIT_MOLA_CANCELARClick( Sender : tObject );
    procedure cdsMolaBeforeInsert( DataSet : TDataSet );
    procedure DIAMETRO_ARAMEExit( Sender : tObject );
    procedure VAOExit( Sender : tObject );
    procedure COM_LIVREExit( Sender : tObject );
    procedure PASSOChange( Sender : tObject );
    procedure cdsMolaBeforeEdit( DataSet : TDataSet );
    procedure cdsMolaGAN_CODIGOChange( Sender : TField );
    procedure DIAMETRO_EXTERNOExit( Sender : tObject );
    procedure cdsGanchoAfterOpen( DataSet : TDataSet );
    procedure SgDbSearchCombo8Exit( Sender : tObject );
    procedure mobservacoesMolaKeyPress( Sender : tObject; var Key : Char );
    procedure DESENVOLVIMENTOExit( Sender : tObject );
    procedure DIAMETRO_MEDIOExit( Sender : tObject );
    procedure ESPIRAL_TOTALExit( Sender : tObject );
    procedure ESPIRAS_UTEISExit( Sender : tObject );
    procedure PASSOExit( Sender : tObject );
    procedure DIAMETRO_EXT_MAIORExit( Sender : tObject );
    procedure DIAMETRO_EXT_MENORExit( Sender : tObject );
    procedure DIAMETRO_INTERNOExit( Sender : tObject );
    procedure DIAMETRO_EXTERNO_MEIOExit( Sender : tObject );
    procedure COM_SOLIDOExit( Sender : tObject );
    procedure PERDAExit( Sender : tObject );
    procedure cdsMolaMMO_TIPO_HASTEGetText( Sender : TField; var Text : string; DisplayText : Boolean );
    procedure cdsMolaMMO_POSICAO_HASTEGetText( Sender : TField; var Text : string; DisplayText : Boolean );
    procedure COMP_CORPOExit( Sender : tObject );
    procedure DIAMETRO_MEDIOKeyPress( Sender : tObject; var Key : Char );
    procedure DIAMETRO_INTERNOKeyPress( Sender : tObject; var Key : Char );
    procedure VAOKeyPress( Sender : tObject; var Key : Char );
    procedure PASSOKeyPress( Sender : tObject; var Key : Char );
    procedure ESPIRAS_UTEISChange( Sender : tObject );
    procedure ESPIRAL_TOTALKeyPress( Sender : tObject; var Key : Char );
    procedure DESENVOLVIMENTOKeyPress( Sender : tObject; var Key : Char );
    procedure DIAMETRO_EXTERNO_MEIOKeyPress( Sender : tObject; var Key : Char );
    procedure COM_SOLIDOKeyPress( Sender : tObject; var Key : Char );
    procedure ESPIRAS_UTEISKeyPress( Sender : tObject; var Key : Char );
    procedure PERDAKeyPress( Sender : tObject; var Key : Char );
    procedure COMP_CORPOKeyPress( Sender : tObject; var Key : Char );
    procedure DIAMETRO_EXT_MAIORKeyPress( Sender : tObject; var Key : Char );
    procedure DIAMETRO_EXT_MENORKeyPress( Sender : tObject; var Key : Char );
    procedure DIAMETRO_INT_MAIORKeyPress( Sender : tObject; var Key : Char );
    procedure DIAMETRO_INT_MENORKeyPress( Sender : tObject; var Key : Char );
    procedure bbGravarParametroClick( Sender : tObject );
    procedure bbAdicionarParametroClick( Sender : tObject );
    procedure bbEditarParametroClick( Sender : tObject );
    procedure bbExcluirParametroClick( Sender : tObject );
    procedure bbCancelarParametroClick( Sender : tObject );
    procedure dbsPRD_REFERChange( Sender : tObject );
    procedure TabSheet8Show( Sender : tObject );
    procedure btnIndustrializacaoClick( Sender : tObject );
    procedure CdsIndustrializacaoCalcFields( DataSet : TDataSet );
    procedure EditarFicha1Click( Sender : tObject );
    procedure dbedtPRG_MEDIDA_2Change( Sender : tObject );
    procedure dbedtPRG_MEDIDA_1Change( Sender : tObject );
    procedure dbedtPRG_MEDIDA_3Change( Sender : tObject );
    procedure curPercentualConsumoChange( Sender : tObject );
    procedure MMO_DIAMETRO_MEDIO_MEIOExit( Sender : tObject );
    procedure SgDbSearchCombo8Select( Sender : tObject );
    procedure HASTEHAExit( Sender : tObject );
    procedure HASTEHBExit( Sender : tObject );
    procedure cbGrauToleranciaChange( Sender : tObject );
    procedure BitBtn2Click( Sender : tObject );
    procedure CbGrupoSelect(Sender: TObject);
    procedure DBECustoEntradaEnter( Sender : tObject );
    procedure DBEmargemVendaEnter( Sender : tObject );
    procedure DBEmargemVendaExit( Sender : tObject );
    procedure DBEprecoVendaEnter( Sender : tObject );
    procedure cbPrecoEmpresaChange( Sender : tObject );
    procedure edCustoEntradaClick( Sender : tObject );
    procedure edMargemVendaClick( Sender : tObject );
    procedure edPrecoVendaExit( Sender : tObject );
    procedure edCustoEntradaExit( Sender : tObject );
    procedure edMargemVendaEnter( Sender : tObject );
    procedure edMargemVendaExit( Sender : tObject );
    procedure edPrecoVendaEnter( Sender : tObject );
    procedure edCustoEntradaEnter( Sender : tObject );
    procedure IncluirArquivoFichaTecnicaChange(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure cbSemEstoqueClick(Sender: TObject);
    procedure cbApenasComEstoqueClick(Sender: TObject);
    procedure cbLoteVencidoClick(Sender: TObject);
    procedure cbFiltroAlmoxarifadoChange(Sender: TObject);
    procedure sgdbEnderecamentoSelect(Sender: TObject);
    procedure sgdbEnderecamentoChange(Sender: TObject);
    private
      // pVENDA_VER_CUSTO, pCUSTO_ALTERA, pAlteraCustosAutomaticosProdutos: string;
      wBtnAltRefer : string;
      wBtnEquivale : string;
      PathNewFicha : string;
      fListaEmpresas : TStringList;
      wCalcularPV : Integer;
      wIncluir, wIncluirItem : Boolean;
      FNotaEntrada : Boolean;

      wSitTributaria : String;
      wCodBarr : String[ 13 ];
      procedure MostraCamposQualidade( estado : Boolean );
      procedure MostraBotoesQualidade( estado : Boolean );
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
      procedure MostraCompras;
      procedure MostraIndustrializacao;
      Function CamposObrigatorios : Boolean;
      procedure AtualizaProdutoGrade;
      procedure CalculaIndiceGrade;
      procedure RecalculaIndicesGrade;
      procedure CadastrarNovaGrade;
      procedure BuscaVendas;
      procedure AbrirArquivo;
      procedure ExcluirArquivo;
      procedure OpenClassIpi;
      procedure MostraFichaTecnica( pCond : Boolean );
      procedure OpenItensFicha;
      procedure OpenEngenharia;
      procedure OpenEspecificacoes( Eng_Codigo : Integer );
      procedure OpenTitulosEspecificacoes;
      procedure AtualizarComissoes;
      procedure AbrirMPusado;
      procedure AbrirSaldoProdutos;
      procedure RecalculaPrecosFichaTecnica;
      procedure CalculaCampo( Sender : tObject );
      procedure SetToleranciaDM;
      procedure ComissaoPorGrupo;
      procedure FiltraGrid();
    public
      wcodbarrant, sGradeDescricaoCadastrada : string;
      calculaValor : Boolean;
      procedure BuscaProduto;
      procedure BotoesAcesso;
      procedure HabilitarCamposMola;
      procedure SetValorDiametroExterno;
      procedure SetValorDiametroMedio;
      procedure SetValorDiametroMedioMeio;
      procedure SetValorDiametroInterno;
      procedure SetValorPasso;
      procedure SetValorPeso;
      procedure SetValorDesenvolvimento;
      procedure SetValorEspiralTotal;
      procedure SetValorEspiraisUteis;
      procedure SetValorVao;
      procedure SetValorComprimentoSolido;
      procedure SetValorDiametroExternoMaior;
      procedure SetValorDiametroExternoMenor;
      procedure SetValorDiametroInternoMaior;
      procedure SetValorDiametroInternoMenor;
      procedure SetComprimentoSolido;
      procedure SetValores( calcula : Boolean );
      procedure SetComprimentoTotalPorForaDoGancho;
      property eNotaEntrada : Boolean
        read FNotaEntrada
        Write FNotaEntrada; // cadastro feito pela nota de entrada xml
      procedure PrecoEmpresaComboEmpresa( );
      procedure PrecoEmpresaCorDBEdit( );
      procedure CarregaPrecoEmpresa( );
      procedure GravaPrecoEmpresa( );
  end;

var
  FormProduto : TFormProduto;
  wRefAnterior : String;
  wcustoliquidoatual : Currency;

implementation

{$R *.DFM}

uses
  Uteis,
  Prd0006,
  GImpProd,
  Iniciodb,
  PesquisaClientesForm,
  For0002,
  ConsultaEstruturaForm,
  DmProdu,
  Ftc0003,
  Prd0012,
  Prd0013,
  Prd0004,
  Prd0003,
  Prd0002,
  Prd0005,
  uEntradaNotaXml,
  uPedidoWebAcao,
  uCadastroGrade,
  uProdutoDao,
  uProdutoEnderecamento,
  CestForm,
  ExportProdutoExcelForm,
  ExportCodFornForm,
  TelaCopiaProdutoForm,
  ufrmpreviewrb,
  uEspecificacao,
  uEngenhariaProcesso,
  uEntradaNotaXmlItem,
  ExportProdutoImport,
  DataCad,
  uInfoComplFichaTecnica,
  uMolaToleranciaDiametroMedio;

var
  WClicked : Boolean;

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
//  CdsProdutos.close;
//  SqlProdutos.sql.Text := SQLDEF( 'PRODUTOS', 'SELECT * FROM PRD0000', 'WHERE PRD_REFER = ' + qStr( EdtPrd_Refer.Text ), 'PRD_REFER', '' );
//  CdsProdutos.Open;
  try
     CdsProdutos.Refresh;
  except
    CdsProdutos.Close;
    CdsProdutos.Open;
    CdsProdutos.Locate('PRD_REFER', EdtPrd_Refer.Text, [] );
  end;

  if eNotaEntrada then // para otimizar
  begin
    // SqlProdutos.sql.Text := SQLDEF( 'PRODUTOS', 'SELECT * FROM PRD0000',
    // 'WHERE PRD_REFER = ' + qStr( EdtPrd_Refer.Text ), 'PRD_REFER', '' );
    // CdsProdutos.Open;
    // CdsProdutos.Refresh;
    if ( Assigned( FrmEntradaNotaXmlItem ) ) then
      CdsProdutos.Edit;
    MostraDados;
    if ( DmProducao.CdsFichaTec.State in [ dsBrowse ] ) then
      BuscaRefer;
    if PctrlProdutos.ActivePageIndex = 2 then
      MostraEstoqueDetalhe;

  end;

  if not CdsProdutos.Locate( 'PRD_REFER', EdtPrd_Refer.Text, [ ] ) then
  begin
    Uteis.aviso( 'Código do Produto não encontrado!' );
    EdtPrd_Refer.Text := CdsProdutosPRD_REFER.AsString;
    EdtPrd_Refer.Setfocus;
    Abort;
  end
  else
  begin
    EdtPrd_Refer.Text := CdsProdutosPRD_REFER.AsString;
    MostraDados;
    if ( DmProducao.CdsFichaTec.State in [ dsBrowse ] ) then
      BuscaRefer;
    if PctrlProdutos.ActivePageIndex = 2 then
      MostraEstoqueDetalhe;
  end;


end;

procedure TFormProduto.FormShow( Sender : tObject );
begin
  inherited;
  PrecoEmpresaComboEmpresa;
  PrecoEmpresaCorDBEdit;
  DBEMultiplicador.Enabled := DBInicio.Empresa.fPMT_MULTIPLICADOR_P;
  DBEMultiplicador.Visible := DBInicio.Empresa.fPMT_MULTIPLICADOR_P;
  lmultiplicador.Visible := DBInicio.Empresa.fPMT_MULTIPLICADOR_P;
  try
    TRY
      CdsProdutos.DisableControls;
      tsTratamentoTermico.TabVisible := DBInicio.Empresa.wPMT_PROD_TERMICO;
      WClicked := False;
      wIncluir := False;
      EdtPrd_Refer.Hint := 'Informe a referência para pesquisa. ' + #13 + 'Pressione Esc para limpar a tela da ficha !';
      PctrlProdutos.ActivePage := Tbs_Produtos;
      PgCtrl_Produtos.ActivePage := TabSheet3; { preços }   // TbS_Caract;
      Bit_AlterarRef.Visible := ( wBtnAltRefer = 'S' );
      Bit_Equivalencia.Visible := ( wBtnEquivale = 'S' );
      try
        CDSSitTributaria.Open;
        CdsSpedTipo.Open;
        CdsSpedServico.Open;
        CdsSpedGenero.Open;
        CdsFornecedor.Open;

        CdsProdutos.close;
        if ( Assigned( FrmPedidoWebAcao ) ) then
          EdtPrd_Refer.Text := FrmPedidoWebAcao.CdsIensPedidoReferencia.AsString
        else
          if ( eNotaEntrada ) then
          begin

            SqlProdutos.sql.Text := SQLDEF( 'PRODUTOS', 'SELECT * FROM PRD0000', 'WHERE PRD_REFER = ' + qStr( EdtPrd_Refer.Text ), 'PRD_REFER', '' );

          end
          else
            if ( Assigned( FrmEntradaNotaXml ) ) then
            begin
              EdtPrd_Refer.Text := FrmEntradaNotaXml.CdsItensReferencia.AsString;
              SqlProdutos.sql.Text := SQLDEF( 'PRODUTOS', 'SELECT * FROM PRD0000', 'WHERE PRD_REFER = ' + qStr( EdtPrd_Refer.Text ), 'PRD_REFER', '' );
            end
            else
              SqlProdutos.sql.Text := SQLDEF( 'PRODUTOS', 'SELECT * FROM PRD0000', '', 'PRD_REFER', '' );
        CdsProdutos.Open;
        // CdsProdutos.Addindex('idxPRD_REFER', 'PRD_REFER', []);  demora mais ainda para abrir o form....
        // CdsProdutos.IndexName := '';

        EdtPrd_codigo.Text := CdsProdutosPRD_CODIGO.AsString;
        if ( Assigned( FrmEntradaNotaXmlItem ) ) then
          CdsProdutos.Edit;

        // CdsProdutos.Last;
        if CdsProdutos.isEmpty Then
          DsProdutos.AutoEdit := False;

        { Busca no Parametros o Codigo do Produtos Acabado e Produto Intermediário }
        wSitTributaria := DBInicio.GetParametroSistema( 'PMT_SITRIBUTARIA' );

        { Carrega o Nome das tabelas de preço }
        LabTabelaVenda.Caption := DBInicio.Empresa.wPmt_Tabnome1;
        LabTabela2.Caption := DBInicio.Empresa.wPmt_Tabnome2;
        LabTabela3.Caption := DBInicio.Empresa.wPmt_Tabnome3;
        LabTabela4.Caption := DBInicio.Empresa.wPmt_Tabnome4;
        LabTabela5.Caption := DBInicio.Empresa.wPmt_Tabnome5;
        LabTabela6.Caption := DBInicio.Empresa.wPmt_Tabnome6;

        // Carrega o nome das Medidas da Grade
        DBGrid3.Columns[ 3 ].Title.Caption := DBInicio.GetParametroSistema( 'PMT_GRADE_MEDIDA1' );
        DBGrid3.Columns[ 4 ].Title.Caption := DBInicio.GetParametroSistema( 'PMT_GRADE_MEDIDA2' );
        DBGrid3.Columns[ 5 ].Title.Caption := DBInicio.GetParametroSistema( 'PMT_GRADE_MEDIDA3' );
        lbMedida1.Caption := DBInicio.GetParametroSistema( 'PMT_GRADE_MEDIDA1' );
        lbMedida2.Caption := DBInicio.GetParametroSistema( 'PMT_GRADE_MEDIDA2' );
        lbMedida3.Caption := DBInicio.GetParametroSistema( 'PMT_GRADE_MEDIDA3' );

        OpenClassIpi;

        TbS_Variacoes.TabVisible := DBInicio.Empresa.WvARIACOES;
        if not eNotaEntrada then
        begin
          HabilitaBotoes;
          MostraDados;
        end
        else
        begin
          DesabilitaBotoes;
          BringToFront;
        end;
        if ( DBInicio.GetParametroSistema( 'PMT_LANCA_PERC_MATERIA_PRIMA' ) = 'S' ) then
        begin
          curPercentualConsumo.Visible := True;
          lbPercentualConsumo.Visible := True;
          GetColumn( DBGridFichaTecnicaItem, 'FTI_PERCENTUAL' ).Visible := True;
        end;
        // DbePrd_Descri.SetFocus;

      except
        on E : EdatabaseError do
          Uteis.erro( Pchar( 'Erro ao abrir as tabelas !' + E.message ) );
      end;
      // Parametros de alteração de Custos automaticos Manual
      // AtivaSqls;
      // BuscaVendas;
    finally
      CdsProdutos.EnableControls;
      HabilitaBotoes;
      CarregaPrecoEmpresa( );
      cdsProdutos.Cancel;
      EdtPrd_Refer.Enabled := True;
      EdtPrd_Refer.SetFocus;
    end;

  except
    on E : Exception do
      ShowMessage( E.message );
  end;
end;

procedure TFormProduto.Bit_novoClick( Sender : tObject );
begin
  try
    Bit_AlterarRef.Visible := False;
    PgCtrl_Produtos.ActivePage := TabSheet3; { preços } // TbS_Caract;

    // CbTipo.Clear;
    // CbGrupo.Clear;
    // CbSegm.Clear;

    DsProdutos.AutoEdit := True;
    CdsProdutos.Insert;
    EdtPrd_codigo.Text := StrZero( CdsProdutosPRD_CODIGO.AsString, 5 );
    EdtPrd_Refer.Text := CdsProdutosPRD_REFER.AsString;
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
    edCustoEntrada.Value := 0;
    edMargemVenda.Value := 0;
    edPrecoVenda.Value := 0;
    DesabilitaBotoes;
    Uteis.HabilitaIncluir( 'CadastrosProdutos', DBInicio.Usuario.CODIGO, FormProduto );
    EdtPrd_Refer.Enabled := True;
    EdtPrd_Refer.Setfocus;

  except
    on E : EdatabaseError do
      Uteis.erro( Pchar( 'Erro ao inserir o registro !' + E.message ) );
  end;
end;

procedure TFormProduto.Bit_ExcluirClick( Sender : tObject );
begin
  if CdsProdutos.isEmpty Then
    Uteis.aviso( 'Não existe produto cadastrado !' )
  else
  begin

    if BuscaUmDadoSqlAsInteger( 'Select cast(count(*) as integer) as conta from    PED_IT01 Where PRD_REFER = ' + qStr( EdtPrd_Refer.Text ) ) > 0 then
    begin
      Uteis.aviso( Pchar( 'Produto não pode ser excluido.' + #13 + 'Existe pedidos que utilizá-o.' ) );
      EdtPrd_codigo.Text := CdsProdutosPRD_CODIGO.AsString;
      EdtPrd_Refer.Text := CdsProdutosPRD_REFER.AsString;
    end
    else
      if BuscaUmDadoSqlAsInteger( 'Select cast(count(*) as integer) as conta from ENF_IT01 IT WHERE IT.PRD_CODIGO = ' + QuotedStr( EdtPrd_codigo.Text ) ) > 0 then
      begin
        Uteis.aviso( Pchar( 'Produto não pode ser excluido.' + #13 + 'Existe nota de entrada. Tente desativar somente' ) );
        EdtPrd_codigo.Text := CdsProdutosPRD_CODIGO.AsString;
        EdtPrd_Refer.Text := CdsProdutosPRD_REFER.AsString;
      end

      else
        if Uteis.confirmacao( 'Tem certeza que deseja Excluir este produto ?' ) = Mryes then
        begin
          ExecSql( 'DELETE FROM PRD0000_CODIGO WHERE PRD_CODIGO = ' + qStr( CdsProdutosPRD_CODIGO.AsString ) );
          CdsProdutos.Delete;
          CdsProdutos.ApplyUpdates( 0 );
          EdtPrd_codigo.Text := CdsProdutosPRD_CODIGO.AsString;
          EdtPrd_Refer.Text := CdsProdutosPRD_REFER.AsString;
          if CdsProdutos.isEmpty then
            ExecSql( 'Update SYSFILE SET SYS_PRODUTO = ' + qStr( '0' ) );
        end;

    EdtPrd_Refer.Setfocus;
    MostraDados;
  end;

end;

procedure TFormProduto.Bit_GravarClick( Sender : tObject );
VAR
  sReferTmp : String;
  localizado : Boolean;
begin
  if CdsCodigoOriginal.State in dsEditModes then
  begin
    CdsCodigoOriginal.Post;
    CdsCodigoOriginal.ApplyUpdates( 0 );
  end;

  if CamposObrigatorios then
  begin
    if ( CdsProdutos.State = dsBrowse ) then
      HabilitaBotoes
    Else
    Begin
      if ( CdsProdutosPRD_CUSTOCOMIPI.AsFloat = 0 ) and ( CdsProdutosPRD_PCUSTO.AsFloat > 0 ) then
        CdsProdutosPRD_CUSTOCOMIPI.AsFloat := CdsProdutosPRD_PCUSTO.AsFloat;
      if ( Trim( CdsProdutosIPI_CODIGO.AsString ) <> '' ) then
        CdsProdutosSPED_GENCODIGO.AsString := COPY( Trim( CdsProdutosIPI_CODIGO.AsString ), 1, 2 );

      CdsProdutosPRD_CODIGO.AsString := StrZero( CdsProdutosPRD_CODIGO.AsString, CdsProdutosPRD_CODIGO.Size );
      if CdsProdutos.State = dsInsert then
        CdsProdutosPRD_DTCADASTRO.AsDateTime := date;
      CdsProdutosEMP_CODIGO.AsString := DBInicio.Empresa.EMP_CODIGO;
      CdsProdutosPRD_REFER.AsString := EdtPrd_Refer.Text;
      if ( CdsProdutosPRD_UND_GRADE_CALCULO.AsString = '' ) then
        CdsProdutosPRD_UND_GRADE_CALCULO.AsString := CdsProdutosPRD_UND.AsString;

      if CdsProdutosPRD_DCVAR1.IsNull then
        CdsProdutosPRD_DCVAR1.AsString := 'X';
      sReferTmp := CdsProdutosPRD_REFER.AsString;
      AtualizarComissoes;
      GravaPrecoEmpresa;
      CdsProdutos.Post;
      if Assigned( FrmEntradaNotaXmlItem ) then
      begin
        if FrmEntradaNotaXmlItem.sPrdCodigo = CdsProdutosPRD_CODIGO.AsString then
        begin
          FrmEntradaNotaXml.CdsItensReferencia.AsString := FormProduto.CdsProdutosPRD_REFER.AsString;
          FrmEntradaNotaXml.cdsItensDescricao.AsString := FormProduto.CdsProdutosPRD_DESCRI.AsString;
          FrmEntradaNotaXmlItem.edtUnidadeSistema.Text := FormProduto.CdsProdutosPRD_UND.AsString;
        end;
      end;
      CdsProdutos.ApplyUpdates( - 1 );


      if eNotaEntrada then
      begin
        Self.ModalResult := mrOk;
        Exit;
      end;
      DsProdutos.AutoEdit := True;
      // CdsProdutos.Refresh;

      SqlProdutos.sql.Text := SQLDEF( 'PRODUTOS', 'SELECT * FROM PRD0000', '', 'PRD_REFER', '' );
      // SqlProdutos.sql.Text := SQLDEF( 'PRODUTOS', 'SELECT * FROM PRD0000',  'WHERE PRD_REFER = ' + qStr( sReferTmp ), 'PRD_REFER', '' );
      CdsProdutos.close;
      CdsProdutos.Open;
      localizado := CdsProdutos.Locate( 'PRD_REFER', sReferTmp, [ ] );

      if BuscaUmDadoSqlAsInteger('SELECT PRDE_REGISTRO FROM PRD0000_ENDERECAMENTO_EMPRESA ' +
                                 ' WHERE PRD_REFER = ' + QuotedStr(CdsProdutosPRD_REFER.AsString) +
                                 ' AND EMP_CODIGO = ' + QuotedStr(dbInicio.EMP_CODIGO)  ) > 0 then
      begin
        if sgdbEnderecamento.idRetorno = ''
        then
          ExecSQL('DELETE FROM PRD0000_ENDERECAMENTO_EMPRESA ' +
                  ' WHERE PRD_REFER = ' + QuotedStr(CdsProdutosPRD_REFER.AsString) + ' AND EMP_CODIGO = ' + QuotedStr(dbInicio.EMP_CODIGO) )
        else
          ExecSQL('UPDATE PRD0000_ENDERECAMENTO_EMPRESA SET PRDE_REGISTRO = ' + sgdbEnderecamento.idRetorno +
                  ' WHERE PRD_REFER = ' + QuotedStr(CdsProdutosPRD_REFER.AsString) + ' AND EMP_CODIGO = ' + QuotedStr(dbInicio.EMP_CODIGO) );
      end
      else
      begin
        ExecSQL('INSERT INTO PRD0000_ENDERECAMENTO_EMPRESA(PRD_REFER, EMP_CODIGO, PRDE_REGISTRO) ' +
                ' VALUES(' + QuotedStr(CdsProdutosPRD_REFER.AsString) + ', ' +
                             QuotedStr(dbInicio.EMP_CODIGO) + ',' +
                             iif(sgdbEnderecamento.idRetorno = '', '0', sgdbEnderecamento.idRetorno)  +
                         ')'
                )
      end;


      RecalculaIndicesGrade;
      MostraDados;
      HabilitaBotoes;

      Bit_AlterarRef.Visible := ( wBtnAltRefer = 'S' );

      PctrlProdutos.ActivePage := Tbs_Produtos;
      PgCtrl_Produtos.ActivePage := TabSheet3; { preços }
      DbePrd_Descri.Setfocus;

    End;

  end;

end;

procedure TFormProduto.Bit_CancelarClick( Sender : tObject );
begin

  CdsProdutos.Cancel;
  { Protege tb vazia }
  if CdsProdutos.isEmpty Then
  begin
    DsProdutos.AutoEdit := False;
    EdtPrd_Refer.Enabled := False;
  end;

  { volta código refer na tela }
  MostraDados;
  HabilitaBotoes;
  PctrlProdutos.ActivePage := Tbs_Produtos;
  PgCtrl_Produtos.ActivePage := TabSheet3; { preços }  // TbS_Caract;
  if ( PctrlProdutos.ActivePageIndex = 1 ) then // cad.produtos
    if DbePrd_Descri.CanFocus then
      DbePrd_Descri.Setfocus;
  if ( PctrlProdutos.ActivePageIndex = 0 ) then // ficha técnica
    if DbDtFTC_CRIACAO.CanFocus then
      DbDtFTC_CRIACAO.Setfocus;
end;

procedure TFormProduto.Bit_SairClick( Sender : tObject );
begin
  if Assigned( FrmEntradaNotaXmlItem ) then
  begin
    if CamposObrigatorios then
      close;
  end
  else
    close;
end;

procedure TFormProduto.DBNavigator1Click( Sender : tObject; Button : TNavigateBtn );
begin
  if CdsProdutos.FieldByName( 'PRD_STATUS' ).AsString = 'I' then
  begin
    if Button in [ nbFirst, nbNext ] then
    begin
      while CdsProdutos.FieldByName( 'PRD_STATUS' ).AsString = 'I' do
        CdsProdutos.Next;
    end
    else
      if Button in [ nbLast, nbPrior ] then
      begin
        while CdsProdutos.FieldByName( 'PRD_STATUS' ).AsString = 'I' do
          CdsProdutos.Prior;

      end;

  end;
  if ( PctrlProdutos.ActivePage = tsVendas ) then
    BuscaVendas;

  MostraDados;

  if PgCtrl_Produtos.ActivePage.PageIndex = 1 then // cadastro produto
    AtivaSqls;
end;

procedure TFormProduto.dbsPRD_REFERChange( Sender : tObject );
begin
  inherited;
  dbCQP_PAR_DESCRICAO.Text := dbsPRD_REFER.Text;
end;

procedure TFormProduto.FormCloseQuery(
  Sender       : tObject;
  var CanClose : Boolean );
  begin
    inherited;
    verificaEdicao; // procedure local
//    if eNotaEntrada and not CamposObrigatorios
//    then
//      CanClose := False;
  end;

procedure TFormProduto.Bit_ListaClick( Sender : tObject );
begin
  FormProdutoGrid := TFormProdutoGrid.Create( Application );
  try
    FormProdutoGrid.TAG := 4;
    FormProdutoGrid.ShowModal;
    if FormProdutoGrid.ModalResult = mrOk then
    begin
      EdtPrd_Refer.Text := FormProdutoGrid.ReferRetorno;
      BuscaProduto;
    end;
  finally
    FreeAndNil( FormProdutoGrid );
  end;
end;

procedure TFormProduto.BIT_MOLA_CANCELARClick( Sender : tObject );
begin
  inherited;
  cdsMola.Cancel;
  BIT_MOLA_GRAVAR.Enabled := False;
  BIT_MOLA_CANCELAR.Enabled := False;
end;

procedure TFormProduto.BIT_MOLA_GRAVARClick( Sender : tObject );
begin
  inherited;
  if ( cdsMolaMMO_PARTE_DI.IsNull ) then
    cdsMolaMMO_PARTE_DI.AsString := 'F';

  cdsMola.Post;
  cdsMola.ApplyUpdates( 0 );
  // cdsMola.Refresh;
  cdsMola.Close;
  cdsMola.Open;

  BIT_MOLA_GRAVAR.Enabled := False;
  BIT_MOLA_CANCELAR.Enabled := False;
end;

procedure TFormProduto.Bit_RelatorioClick( Sender : tObject );
begin
  FormGImpProduto := TFormGImpProduto.Create( Application );
  try
    FormGImpProduto.ShowModal;
  finally
    FreeAndNil( FormGImpProduto );
  end;
end;

procedure TFormProduto.EdtPrd_ReferExit( Sender : tObject );

begin
  if Bit_Lista.CanFocus then
    if Bit_Lista.Focused then
      Exit;
  if Bit_Sair.CanFocus then
    if Bit_Sair.Focused then
    begin
      Close;
      Abort;
    end;
  if EdtPrd_Refer.Text = '' then
  begin
    Uteis.aviso( 'Informe uma referência...' );
    EdtPrd_Refer.Setfocus;
    Exit;
  end;
  if eNotaEntrada then
  begin
    if BuscaUmDadoSqlAsInteger( 'Select cast(count(*) as integer) as conta from    PRD0000 where prd_codigo <> ' + QuotedStr( CdsProdutosPRD_CODIGO.AsString ) + ' and PRD_REFER = ' + qStr( EdtPrd_Refer.Text ) + ConcatSE( ' and ', DBInicio.ExclusivoSql( 'PRODUTOS' ) ) ) > 0 THEN
    begin
      Uteis.aviso( 'Esta referência já existe em outro produto...' );
      EdtPrd_Refer.Text := '';
      EdtPrd_Refer.Setfocus;
      Exit;
    end;
  end;
  EdtPrd_Refer.Text := FormataRefer( EdtPrd_Refer.Text );
  if Assigned( ActiveControl ) then
  begin

    if ( ActiveControl.Name = 'Bit_novo' ) then
      Bit_novo.Click
    Else
    if ( ActiveControl.Name = 'Bit_Cancelar' ) then
      Bit_Cancelar.Click
    Else
      if ( CdsProdutos.State in [ dsBrowse ] ) and not ( CdsProdutos.isEmpty ) and not eNotaEntrada then
      begin

        BuscaProduto;
        AtivaSqls;
        DesabilitaBotoes;
      end
      else
        if CdsProdutos.State in [ dsInsert, dsEdit, dsBrowse ] then
          if BuscaUmDadoSqlAsInteger( 'Select cast(count(*) as integer) as conta from    PRD0000 where prd_codigo <> ' + QuotedStr( CdsProdutosPRD_CODIGO.AsString ) + ' and PRD_REFER = ' + qStr( EdtPrd_Refer.Text ) + ConcatSE( ' and ', DBInicio.ExclusivoSql( 'PRODUTOS' ) ) ) > 0 THEN
          begin
            Uteis.aviso( 'Este produto já existe...' );
            EdtPrd_Refer.Text := '';
            EdtPrd_Refer.Setfocus;
          end;
    if ( BuscaUmDadoSqlAsString( SQLDEF( 'PRODUTOS', 'SELECT PRD_REFER FROM PRD0000', 'WHERE PRD_REFER = ' + qStr( EdtPrd_Refer.Text ), 'PRD_REFER', '' ) ) = '' ) and not ( CdsProdutos.State in [ dsInsert, dsEdit ] ) then
    begin
      if Bit_novo.CanFocus then
        if Bit_novo.Focused then
          Exit;

      EdtPrd_Refer.Text := '';
      EdtPrd_Refer.Enabled := True;
      // if EdtPrd_Refer.CanFocus then
      EdtPrd_Refer.Setfocus;
      Abort;
    end;

  end;
end;

procedure TFormProduto.AtivaSqls;
begin
  CdsFornecedorAux.close;
  if ( not CdsProdutos.isEmpty ) then
  begin
    CdsFornecedorAux.CommandText := 'SELECT ' + 'T1.FOR_CODIGO, ' + 'T1.FOR_RAZAO, ' + 'T1.FOR_CONTATO, ' + 'T1.FOR_FONCONT, ' + 'T1.FOR_FONE, ' + 'T1.FOR_EMAIL, ' + 'T1.FOR_PRAZOVENDAS FROM FOR0000 T1 ' + ' WHERE T1.FOR_CODIGO in (SELECT T1.for_codigo FROM enf_it01 T1 WHERE T1.prd_refer = ' + qStr( CdsProdutosPRD_REFER.AsString ) + ' GROUP BY T1.for_codigo) or T1.FOR_CODIGO in (select t2.for_codigo from PRD0000_CODIGO t2 ' + ' JOIN PRD0000 E ON T2.PRD_CODIGO = E.PRD_CODIGO ' +
      ' where t2.prd_codigo = ' + qStr( CdsProdutosPRD_CODIGO.AsString ) + ConcatSE( ' and E.', DBInicio.ExclusivoSql( 'PRODUTOS' ) ) + ')' + 'ORDER BY FOR_CODIGO ';

    CdsFornecedorAux.Open;
  end;
end;

procedure TFormProduto.PgCtrl_ProdutosChange( Sender : tObject );
begin
  if PgCtrl_Produtos.ActivePage.PageIndex = 1 then // produtos
    AtivaSqls;
end;

procedure TFormProduto.PopupMenu1Popup( Sender : tObject );
  begin
    inherited;
    VeraFichaTcnicaDesteItem1.Enabled := CdsItensFichaPTI_SIGLA.AsString = 'PI';

  end;

procedure TFormProduto.DbeVar2Exit( Sender : tObject );
  begin
    DbeVar3.SetFocus;
  end;

procedure TFormProduto.FiltraGrid;

begin
  cdsLotes.Filtered := False;
  cdsLotes.Filter := '1 = 1 ';
  if cbSemEstoque.Checked then
    cdsLotes.Filter := cdsLotes.Filter + ' AND PRDL_SALDO <= 0 ';
  if cbApenasComEstoque.Checked then
    cdsLotes.Filter := cdsLotes.Filter + ' AND PRDL_SALDO > 0 ';
  if cbLoteVencido.Checked then
    cdsLotes.Filter := cdsLotes.Filter + ' AND PRDL_DATA_VALIDADE < ' + QuotedStr(FormatDateTime('dd/mm/yyyy', Date));
  if cbFiltroAlmoxarifado.idRetorno <> '' then
    cdsLotes.Filter := cdsLotes.Filter + ' AND AMX_CODIGO =  ' + QuotedStr(cbFiltroAlmoxarifado.idRetorno);
  cdsLotes.Filtered := True;
end;

procedure TFormProduto.FormActivate( Sender : tObject );
  var
    arquivo : string;
  begin
    inherited;
    arquivo := Trim( PathNewFicha ) + '\' + EdtPrd_Refer.Text + '.Rtf';
    if FileExists( arquivo )
    then
      RichDoc.Lines.LoadFromFile( arquivo );
    if not ( CdsProdutos.isEmpty ) and not ( CdsProdutos.State in dsEditModes )
    then
    begin
      // CdsProdutos.Refresh;
      CdsProdutos.Close;
      CdsProdutos.Open;
      CdsProdutos.Locate('PRD_REFER', EdtPrd_Refer.Text, [] );
    end;

  end;

procedure TFormProduto.FormClose(
  Sender     : tObject;
  var Action : TCloseAction );
  begin
    inherited;
    if Assigned( FrmEntradaNotaXmlItem )
    then
    begin
//      if ( ModalResult <> mrOk ) and not CamposObrigatorios
//      then
//        Exit;

    end;
    CDSSitTributaria.Close;
    DmProducao.CdsFichaTec.Close;
    CdsItensFicha.Close;
    FormProduto := nil;
    Action := CaFree;

  end;

procedure TFormProduto.BitBtn1Click( Sender : tObject );
var
  arquivo : string;

begin
  RichDoc.Clear;
  if not FileExists( PathNewFicha + '\' + EdtPrd_Refer.Text + '.Rtf' ) then
    CopyFile( Pchar( Trim( PathNewFicha ) + '\' + 'Default.Rtf' ), Pchar( Trim( PathNewFicha ) + '\' + EdtPrd_Refer.Text + '.Rtf' ), False );
  arquivo := Trim( PathNewFicha ) + '\' + EdtPrd_Refer.Text + '.Rtf';
  ShellExecute( Application.Handle, Pchar( 'open' ), Pchar( ExtractFilePath( Application.ExeName ) + '\' + 'RWEDITOR.EXE ' ), Pchar( arquivo ), nil, SW_SHOWNORMAL )

end;

procedure TFormProduto.BitBtn2Click( Sender : tObject );
begin
  inherited;
  // verificar
  VeraFichaTcnicaDesteItem1.Enabled := CdsItensFichaPTI_SIGLA.AsString = 'PI';

  if not Assigned( frmMolaToleranciaDiametroMedio ) then
    frmMolaToleranciaDiametroMedio := TfrmMolaToleranciaDiametroMedio.Create( Self );
  frmMolaToleranciaDiametroMedio.ShowModal;
  FreeAndNil( frmMolaToleranciaDiametroMedio );
end;

procedure TFormProduto.BitBtn5Click(Sender: TObject);
begin
  inherited;
  ShellExecute( Self.Handle, 'open', Pchar( IncluirArquivoFichaTecnica.FileName ), nil, nil, SW_SHOWNORMAL )
end;

procedure TFormProduto.bbCancelarParametroClick( Sender : tObject );
begin
  inherited;
  cdsCQP.Cancel;
  MostraCamposQualidade( False );
  MostraBotoesQualidade( True );
end;

procedure TFormProduto.bbGravarParametroClick( Sender : tObject );
begin
  inherited;
  if cdsCQP.State = dsEdit then
  begin
    qAux.sql.Clear;
    qAux.sql.Text := 'UPDATE CONTROLE_DE_QUALIDADE_PRODUTO SET ' + 'CQP_ESPERADO = ' + QuotedStr( dbCQP_ESPERADO.Text ) + ',' + 'CQP_VALOR_MIN = ' + QuotedStr( dbCQP_VALOR_MIN.Text ) + ',' + 'CQP_VALOR_MAX = ' + QuotedStr( dbCQP_VALOR_MAX.Text ) + ' WHERE PRD_REFER = ' + QuotedStr( edPRD_REFER.Text ) + ' AND PAR_CODIGO = ' + QuotedStr( dbsPRD_REFER.idRetorno );
    qAux.ExecSql;

  end
  else
    if cdsCQP.State = dsInsert then
    begin
      qAux.sql.Clear;
      qAux.sql.Text := 'INSERT INTO CONTROLE_DE_QUALIDADE_PRODUTO ' + ' (PRD_REFER, PAR_CODIGO, CQP_ESPERADO, CQP_VALOR_MIN, CQP_VALOR_MAX) ' + ' VALUES ( ' + QuotedStr( edPRD_REFER.Text ) + ',' + dbsPRD_REFER.idRetorno + ',' + QuotedStr( dbCQP_ESPERADO.Text ) + ',' + QuotedStr( dbCQP_VALOR_MIN.Text ) + ',' + QuotedStr( dbCQP_VALOR_MAX.Text ) + ' )';
      qAux.ExecSql;

      // cdsCQP.Post;
      // cdsCQP.ApplyUpdates(0);
    end;
  cdsCQP.Edit;
  cdsCQPPAR_DESCRICAO.Text := dbsPRD_REFER.Text;
  cdsCQP.Post;
  MostraCamposQualidade( False );
  MostraBotoesQualidade( True );
end;

procedure TFormProduto.pcFichaTecnicaChange( Sender : tObject );
begin
  inherited;
  if pcFichaTecnica.ActivePage = tsQualidade then
  begin
    edPRD_REFER.Text := DBText1.Caption;
    cdsCQP.close;
    qCQP.close;
    cdsCQP.Filtered := False;
    cdsCQP.Filter := 'PRD_REFER = ' + QuotedStr( DBText1.Caption );
    cdsCQP.Filtered := True;
    cdsCQP.Open;
    qCQP.Open;
    MostraCamposQualidade( False );
    MostraBotoesQualidade( True );
  end
  else
    if pcFichaTecnica.ActivePage = tsProcesso then
    begin
      OpenEngenharia;
      OpenTitulosEspecificacoes;
    end
    else
      if pcFichaTecnica.ActivePage = tsCamposTecnicos then
      begin
        TRATAMENTO_CODIGO.ActivePage := tsCampos1;
        // cdsMola.DisableControls;
        try
          cdsMola.close;
          qMola.close;
          qMola.sql.Clear;
          qMola.sql.Text := 'SELECT * FROM MOLA_MATERIA WHERE PRD_CODIGO =' + EdtPrd_codigo.Text;
          qMola.Open;
          cdsMola.Open;
          // cdsMola.Refresh;
          // qMola.Refresh;
          if CdsProdutosPTI_CODIGO.AsString = EmptyStr then
            raise Exception.Create( 'Preencha o tipo de produto' );
          if cdsMola.isEmpty then
            cdsMola.Insert
          else
            if not ( cdsMola.State in dsEditModes ) then
              cdsMola.Edit;

          IncluirArquivoFichaTecnica.FileName := cdsMolaMMO_ARQUIVO_FICHA_TECNICA.AsString;

          BIT_MOLA_GRAVAR.Enabled := True;
          BIT_MOLA_CANCELAR.Enabled := True;
          HabilitarCamposMola;
        finally
          cdsMola.EnableControls;
        end;
      end;

end;

procedure TFormProduto.DBEPRD_CODBARKeyPress( Sender : tObject; var Key : Char );
begin
  if not ( Key in [ '0' .. '9', #8 ] ) then
    Key := #0;
end;

procedure TFormProduto.DBEPRD_GRUPOExit( Sender : tObject );
begin
  inherited;
  if DBEPRD_GRUPO.Text <> '' then
  begin
    CbGrupo.idRetorno := StrZero( DBEPRD_GRUPO.Text, 3 );
    if CbGrupo.idRetorno = '' then
      GeraException( 'Grupo não localizado com este código!' );
  end;
End;

procedure TFormProduto.DbePrd_PesoLiqExit( Sender : tObject );
begin
  inherited;
  if CdsProdutos.State <> dsBrowse then
    if ( CdsProdutosPRD_PESOKG.IsNull ) OR ( CdsProdutosPRD_PESOKG.AsFloat = 0 ) then
      CdsProdutosPRD_PESOKG.AsFloat := StrToFloatDef( DbePrd_PesoLiq.Text, 0 );
end;

procedure TFormProduto.DBEPRD_SEGMENTOExit( Sender : tObject );
begin
  inherited;
  if DBEPRD_SEGMENTO.Text <> '' then
  begin
    CbSegm.idRetorno := StrZero( DBEPRD_SEGMENTO.Text, 3 );
    if CbSegm.idRetorno = '' then
      GeraException( 'Marca/Linha não localizada com este código!' );
  end;
end;

procedure TFormProduto.DBEPRD_TIPOExit( Sender : tObject );
begin
  inherited;
  if DBEPRD_TIPO.Text <> '' then
  begin
    CbTipo.idRetorno := StrZero( DBEPRD_TIPO.Text, 3 );
    if CbTipo.idRetorno = '' then
      GeraException( 'Tipo não localizado com este código!' );
  end;
end;

procedure TFormProduto.DBEPRD_CODBARExit( Sender : tObject );
VAR
  lref : String;
begin
  if ( CdsProdutos.State in [ dsInsert ] ) or ( wCodBarr <> DBEPRD_CODBAR.Field.AsString ) then
    if ( DBEPRD_CODBAR.Field.Text <> '' ) then
    begin
      lref := BuscaUmDadoSqlAsString( 'SELECT PRD_REFER from PRD0000 where PRD_CODBARRA = ' + qStr( DBEPRD_CODBAR.Text ) + ConcatSE( ' and ', DBInicio.ExclusivoSql( 'PRODUTOS' ) ) );
      if lref <> '' then
      begin
        Uteis.aviso( Pchar( 'Atenção o Produto de Referência ' + lref + ' já está utilizando este código de barras!' ) );
        DBEPRD_CODBAR.Text := '';
        DBEPRD_CODBAR.Setfocus;
      end;
    end;
end;

function TFormProduto.MaiorSequencia( cds : TClientDataSet ) : Integer;
var
  clone : TClientDataSet;
  i : Integer;
begin
  clone := TClientDataSet.Create( Self );
  try
    clone.CloneCursor( cds, True );
    clone.First;
    i := clone.FieldByName( 'sequencia' ).AsInteger;
    while not clone.Eof do
    begin
      if clone.FieldByName( 'sequencia' ).AsInteger > i then
        i := clone.FieldByName( 'sequencia' ).AsInteger;
      clone.Next;
    end;
    result := i;
  finally
    FreeAndNil( clone );
  end;

end;

procedure TFormProduto.MostraBotoesQualidade( estado : Boolean );
begin
  bbAdicionarParametro.Enabled := estado;
  bbEditarParametro.Enabled := estado;
  bbExcluirParametro.Enabled := estado;
  bbGravarParametro.Enabled := not estado;
  bbCancelarParametro.Enabled := not estado;

end;

procedure TFormProduto.MostraCamposQualidade( estado : Boolean );
begin
  dbsPRD_REFER.Enabled := estado;
  dbCQP_ESPERADO.Enabled := estado;
  dbCQP_VALOR_MIN.Enabled := estado;
  dbCQP_VALOR_MAX.Enabled := estado;

end;

procedure TFormProduto.MostraCompras;
var
  sql : string;
begin
  CdsCompras.PacketRecords := 50;
  CdsCompras.close;
  CdsCompras.DisableControls;
  if ( not CdsProdutos.isEmpty ) then
  begin
    sql := 'select t3.emp_codigo, t3.enf_emissao, t1.ENF_ORIGEM_MERCADORIA, ' + 't3.enf_notanumber,  t1.for_codigo,  t2.for_razao, ' + 't1.ENF_CUSTO as  enf_preco, ' + 'cast(cast(coalesce(t1.ENF_CUSTO * t1.enf_qtde,0) + coalesce(t1.enf_vlsubst,0) + ' + ' coalesce(t1.enf_it_vlipi,0) + coalesce(t1.enf_it_valfrete,0) + coalesce(t1.enf_it_vlseguro,0) + ' + ' coalesce(t1.enf_it_vldesp_aces,0)as numeric(18,4)) / t1.enf_qtde as numeric(18,4)) as custo_entrada,' + 't1.enf_qtde,  t1.enf_ipialiq, ' +
      'cast(t1.enf_vlsubst / t1.enf_qtde as numeric(18,4)) as enf_vlsubst, ' + 'cast(t1.enf_it_valfrete / t1.enf_qtde as numeric(18,4)) as enf_it_valfrete, ' + 'cast(t1.enf_it_vldesp_aces / t1.enf_qtde as numeric(18,4)) as enf_it_vldesp_aces, ' + 't1.enf_icmsaliq, t1.enf_cfop, t1.ENF_IT_DESCTO, ' + 't2.for_fone,  t2.for_contato ' + ' from enf_it01 t1 ' + 'join for0000 t2 on (t2.for_codigo = t1.for_codigo) ' +
      'join enf0001 t3 on (t3.enf_notanumber = t1.enf_it_notanumber and t3.for_codigo = t1.for_codigo and t1.emp_codigo = t3.emp_codigo) ' + 'where ' + ' t3.ENF_INDUSTRIALIZACAO <> ''S'' ' + ' AND t1.prd_CODIGO = ' + qStr( CdsProdutosPRD_CODIGO.AsString ) + iif( chkMultiempresaCompras.Checked, '', ' and t3.emp_codigo = ' + DBInicio.Empresa.EMP_CODIGO );

    if ( dtInicio.date > 0 ) and ( dtFim.date > 0 ) then
      sql := sql + ' and  t3.enf_emissao between ' + DateToSql( dtInicio.date ) + ' and ' + DateToSql( dtFim.date )
    else
      if ( dtInicio.date = 0 ) and ( dtFim.date > 0 ) then
        sql := sql + ' and  t3.enf_emissao <= ' + DateToSql( dtFim.date )
      else
        if ( dtInicio.date > 0 ) and ( dtFim.date = 0 ) then
          sql := sql + ' and  t3.enf_emissao >= ' + DateToSql( dtInicio.date );

    sql := sql + ' order by t3.enf_entrada desc';
    CdsCompras.CommandText := sql;
    if DBInicio.IsDesenvolvimento then
      CopyToClipBoard( sql );

    CdsCompras.Open;
    CdsCompras.EnableControls;
  end;
end;

procedure TFormProduto.MostraDados;
var
  NmFile : String;
  Saldo : double;
  searchResult : TSearchRec;
  Task : ITask;
begin
  Task := TTask.Create(
    procedure
    begin
      if FindFirst( DBInicio.Empresa.spmt_CaminhoFoto + '\' + CdsProdutosPRD_REFER.AsString + '.*', faAnyFile, searchResult ) = 0 then
      begin
        pfoto.Caption := 'Carregando';
        ImgProduto.Picture.LoadFromFile( DBInicio.Empresa.spmt_CaminhoFoto + '\' + searchResult.Name );
        // Le_Imagem_JPEG_toBMP(CdsProdutosPRD_FOTO, ImgProduto);
        pfoto.Caption := '';
      end
      else
      begin
        ImgProduto.Picture := nil;
        pfoto.Caption := 'Sem foto';
      end;
    end );
  Task.Start;
  EdtPrd_codigo.Text := CdsProdutosPRD_CODIGO.AsString;
  AtivaSqls;
  AbrirSaldoProdutos;

  CdsProdutosReferencia.close;
  if ( not CdsProdutos.isEmpty ) then
  begin
    CdsProdutosReferencia.CommandText := 'SELECT T1.*, T2.FOR_RAZAO FROM PRD0000_CODIGO T1 JOIN FOR0000 T2 ON (T2.FOR_CODIGO = T1.FOR_CODIGO) ' + ' JOIN PRD0000 E ON T1.PRD_CODIGO = E.PRD_CODIGO ' + ConcatSE( ' and E.', DBInicio.ExclusivoSql( 'PRODUTOS' ) ) + ' WHERE T1.PRD_CODIGO = ' + qStr( CdsProdutosPRD_CODIGO.AsString ) +

      ' ORDER BY T1.PRDC_REFERENCIA';
    CdsProdutosReferencia.Open;
  end;
  Saldo := BuscaUmDadoSqlAsFloat( 'SELECT	SUM(PRDL_SALDO) FROM PRD_LOTE A WHERE PRD_CODIGO = ' + qStr( CdsProdutosPRD_CODIGO.AsString ) );
  edSaldo.Text := FormatFloat( '##,###,###.00', Saldo );
  CdsLotes.close;
  if ( not CdsProdutos.isEmpty ) then
  begin
    cdsLotes.sql.Clear;
    cdsLotes.sql.Add( 'select A.*, B.for_razao, C.amx_descri' );
    cdsLotes.sql.Add( 'from PRD_LOTE A' );
    cdsLotes.sql.Add( '    LEFT JOIN for0000 B ON B.for_codigo=A.for_codigo' );
    cdsLotes.sql.Add( '    LEFT JOIN almox0000 C ON C.amx_codigo = A.amx_codigo' );
    cdsLotes.sql.Add( 'WHERE A.prd_CODIGO = ' + qStr( CdsProdutosPRD_CODIGO.AsString ) );
    cdsLotes.sql.Add( 'ORDER BY A.PRDL_DATA_VALIDADE' );
    CdsLotes.Open;
  end;

  CdsCodigoOriginal.close;
  if ( not CdsProdutos.isEmpty ) then
  begin
    CdsCodigoOriginal.close;
    SqlCodCli.sql.Clear;
    SqlCodCli.sql.Add( 'SELECT A.*, B.cli_razao' );
    SqlCodCli.sql.Add( 'FROM PRD_CODIGOORIGINAL A' );
    SqlCodCli.sql.Add( '    LEFT JOIN cli0000 B ON B.cli_codigo=A.cli_codigo' );
    SqlCodCli.sql.Add( 'where A.PRD_CODIGO = ' + qStr( CdsProdutosPRD_CODIGO.AsString ) );
    SqlCodCli.sql.Add( 'ORDER BY A.CLI_CODIGO' );
    CdsCodigoOriginal.Open;
  end;
  { 06/11/2009 jko }
  DBE_SITRIBUT.Visible := False;
  // DbePrd_ICMSubs.Visible := False;
  // Parametros de alteração de Custos automaticos Manual
  if ( DBInicio.GetParametroUsuario( 'USP_ALTERA_CUSTOS_PRODUTO' ) = 'S' ) then
  begin
    if DBInicio.Exclusivo( 'PRODUTO_PRECO_EMPRESA' ) then
      DBECustoEntrada.Color := clSkyBlue
    else
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

  EdtPrd_Refer.Text := CdsProdutosPRD_REFER.AsString;
  if not CdsProdutosPTI_CODIGO.IsNull then
    MostraFichaTecnica( True );

  if DBeFor_codigo.Field <> nil then
  begin
    SqlCdsfor.close;
    SqlCdsfor.CommandText := 'Select FOR_CODIGO,FOR_RAZAO from FOR0000 where FOR_CODIGO = ' + qStr( DBeFor_codigo.Field.Text );
    SqlCdsfor.Open;
  end;

  if not SqlCdsfor.isEmpty then
    EdtFor.Text := SqlCdsforFOR_RAZAO.AsString
  else
    EdtFor.Text := '';

  NmFile := Trim( PathNewFicha ) + '\' + CdsProdutosPRD_REFER.AsString + '.Rtf';
  if FileExists( NmFile ) then
    RichDoc.Lines.LoadFromFile( NmFile )
  else
    RichDoc.Clear;

  AtualizaProdutoGrade;

  if ( PctrlProdutos.ActivePageIndex = 4 ) then
    TabSheet4Show( Self );

  JvDBComboBox1.Hint := JvDBComboBox1.Text;
  JvDBComboBox1.ShowHint := True;

  // BuscaVendas;

  CdsArquivo.close;
  if ( not CdsProdutos.isEmpty ) then
  begin
    CdsArquivo.CommandText := 'SELECT * FROM ARQUIVO where ARQ_REGISTRO_TABELA = ' + qStr( CdsProdutosPRD_CODIGO.AsString ) + ' and ARQ_TIPO_TABELA = ''PRD'' ORDER BY ARQ_DESCRICAO ';
    CdsArquivo.Open;
  end;
  CarregaPrecoEmpresa;

  sgdbEnderecamento.idRetorno := dbInicio.BuscaUmDadoSqlAsString('SELECT PRDE_REGISTRO FROM PRD0000_ENDERECAMENTO_EMPRESA WHERE PRD_REFER = ' + QuotedStr(CdsProdutosPRD_REFER.AsString) +  ' AND EMP_CODIGO = ' + QuotedStr(dbInicio.EMP_CODIGO)  );
  if dbInicio.IsDesenvolvimento then
    CopyToClipBoard('SELECT PRDE_REGISTRO FROM PRD0000_ENDERECAMENTO_EMPRESA WHERE PRD_REFER = ' + QuotedStr(CdsProdutosPRD_REFER.AsString) +  ' AND EMP_CODIGO = ' + QuotedStr(dbInicio.EMP_CODIGO)  );

  prdeRegistro.Text := sgdbEnderecamento.idRetorno;
  cdsEnderecos.Close;
  qEnderecos.SQL.Text := 'SELECT pee.PRDE_REGISTRO, pe.PRDE_ENDERECO, E.EMP_RAZAO ' +
                              ' FROM PRD0000_ENDERECAMENTO_EMPRESA pee ' +
                              ' JOIN PRD0000_ENDERECAMENTO pe ON (pe.PRDE_REGISTRO = pee.PRDE_REGISTRO) ' +
                              ' JOIN EMP0000 e ON (e.EMP_CODIGO = pee.EMP_CODIGO ) ' +
                              ' WHERE PRD_REFER = ' + QuotedStr(CdsProdutosPRD_REFER.AsString) +
                                ConcatSE( ' AND pee.', DBInicio.ExclusivoSql( 'ENDERECO_ESTOQUE' )) +
                              ' ORDER BY pee.EMP_CODIGO, pe.PRDE_ENDERECO  ' ;
  if dbInicio.IsDesenvolvimento then
    CopyToClipBoard(qEnderecos.SQL.Text);

  cdsEnderecos.Open;

end;

procedure TFormProduto.MostraFichaTecnica( pCond : Boolean );
begin
  if ( edSigla.Text = 'PA' ) or ( edSigla.Text = 'PI' ) or ( edSigla.Text = 'KT' ) then
  begin
    Tbs_FichaTec.TabVisible := pCond;
    Tbs_Detalhe.TabVisible := pCond;
    pcFichaTecnica.ActivePage := tsGeral;
  end
  else
  begin
    Tbs_FichaTec.TabVisible := False;
    Tbs_Detalhe.TabVisible := False;
  end;

  qAux.close;
  qAux.sql.Clear;
  qAux.sql.Text := 'SELECT USP_STAT_CAMPO_TECNICO FROM USUARIO_PARAMETRO WHERE USP_COD_USUARIO = ' + QuotedStr( DBInicio.Usuario.CODIGO );
  qAux.Open;
  pcFichaTecnica.Pages[ 2 ].TabVisible := ( qAux.FieldByName( 'USP_STAT_CAMPO_TECNICO' ).AsString = 'S' );
  qAux.close;

end;

procedure TFormProduto.MostraIndustrializacao;
var
  sql : string;
begin
  CdsIndustrializacao.PacketRecords := 50;
  CdsIndustrializacao.close;
  CdsIndustrializacao.DisableControls;
  if ( not CdsProdutos.isEmpty ) then
  begin
    sql := 'select t3.emp_codigo, t3.enf_emissao, ' + 't3.enf_notanumber,  t1.for_codigo,  t2.for_razao, ' + 't1.ENF_CUSTO as  enf_preco, ' + 'cast(cast(coalesce(t1.ENF_CUSTO * t1.enf_qtde,0) + coalesce(t1.enf_vlsubst,0) + ' + ' coalesce(t1.enf_it_vlipi,0) + coalesce(t1.enf_it_valfrete,0) + coalesce(t1.enf_it_vlseguro,0) + ' + ' coalesce(t1.enf_it_vldesp_aces,0)as numeric(18,4)) / t1.enf_qtde as numeric(18,4)) as custo_entrada,' + 't1.enf_qtde,  t1.enf_ipialiq, ' +
      'cast(t1.enf_vlsubst / t1.enf_qtde as numeric(18,4)) as enf_vlsubst, ' + 'cast(t1.enf_it_valfrete / t1.enf_qtde as numeric(18,4)) as enf_it_valfrete, ' + 'cast(t1.enf_it_vldesp_aces / t1.enf_qtde as numeric(18,4)) as enf_it_vldesp_aces, ' + 't1.enf_icmsaliq, t1.enf_cfop, t1.ENF_IT_DESCTO, ' + 't2.for_fone,  t2.for_contato ' + ' from enf_it01 t1 ' + 'join for0000 t2 on (t2.for_codigo = t1.for_codigo) ' +
      'join enf0001 t3 on (t3.enf_notanumber = t1.enf_it_notanumber and t3.for_codigo = t1.for_codigo and t1.emp_codigo = t3.emp_codigo) ' + 'where ' + ' t3.ENF_INDUSTRIALIZACAO = ''S'' ' + ' AND t1.prd_CODIGO = ' + qStr( CdsProdutosPRD_CODIGO.AsString ) + iif( chkMultiempresaIndustrializacao.Checked, '', ' and t3.emp_codigo = ' + DBInicio.Empresa.EMP_CODIGO );

    if ( dtInicioInd.date > 0 ) and ( dtFimInd.date > 0 ) then
      sql := sql + ' and  t3.enf_emissao between ' + DateToSql( dtInicioInd.date ) + ' and ' + DateToSql( dtFimInd.date )
    else
      if ( dtInicioInd.date = 0 ) and ( dtFimInd.date > 0 ) then
        sql := sql + ' and  t3.enf_emissao <= ' + DateToSql( dtFimInd.date )
      else
        if ( dtInicioInd.date > 0 ) and ( dtFimInd.date = 0 ) then
          sql := sql + ' and  t3.enf_emissao >= ' + DateToSql( dtInicioInd.date );

    sql := sql + ' order by t3.enf_entrada desc';
    CdsIndustrializacao.CommandText := sql;
    CdsIndustrializacao.Open;
    CdsIndustrializacao.EnableControls;
  end;
end;

procedure TFormProduto.CbTipoMenuNovoClick( Sender : tObject );
begin
  inherited;

  if not Assigned( FormProdTipo ) then
  begin
    FormProdTipo := TFormProdTipo.Create( Application );
    FormProdTipo.BotoesAcesso;
    // try
    if ( MDIChildCount > 1 ) then
      SendMessage( ClientHandle, WM_MDICASCADE, 0, 0 )

      // finally
      // FreeAndNil( FormProdTipo );
      // end;
  end;
  FormProdTipo.Show;

end;

procedure TFormProduto.CbTipoSelect( Sender : tObject );
begin
  if CbTipo.idRetorno <> '' then
  begin
    MostraFichaTecnica( True );
  end;
end;

procedure TFormProduto.CbGrupoMenuNovoClick( Sender : tObject );
begin
  inherited;

  if not Assigned( FormProdGrupo ) then
  begin
    // try
    FormProdGrupo := TFormProdGrupo.Create( Application );
    FormProdGrupo.BotoesAcesso;
    if ( MDIChildCount > 1 ) then
      SendMessage( ClientHandle, WM_MDICASCADE, 0, 0 )

      // finally
      // FormProdGrupo.Destroy;
      // FormProdGrupo := nil;
      // end;
  end;
  FormProdGrupo.Show;

end;

procedure TFormProduto.CbGrupoSelect(Sender: TObject);
var
  ComissaoGrupo: double;
begin
  inherited;
  ComissaoGrupo := DBInicio.BuscaUmDadoSqlAsFloat('SELECT PGR_COM_PERC FROM PRD_GRUPO WHERE PGR_CODIGO = ' + QuotedStr(CbGrupo.idRetorno) );
  if comissaoGrupo > 0 then
  begin
    if not (CdsProdutos.State in dsEditModes) then
      CdsProdutos.edit;
    CdsProdutosPRD_COMISSAO.AsFloat := ComissaoGrupo;
  end;
end;

procedure TFormProduto.CbSegmMenuNovoClick( Sender : tObject );
begin
  inherited;

  if not Assigned( FormPrdLinha ) then
  begin
    FormPrdLinha := TFormPrdLinha.Create( Application );
    FormPrdLinha.BotoesAcesso;
    FormPrdLinha.sCodigoBuscar := FormProduto.DBEPRD_SEGMENTO.Text;
    // DataCadastros.CdsPrdLinha.Locate('LIN_CODIGO', FormProduto.DBEPRD_SEGMENTO.Text, []);
    // try
    if ( MDIChildCount > 1 ) then
      SendMessage( ClientHandle, WM_MDICASCADE, 0, 0 )

      // finally
      // FreeAndNil(FormPrdLinha);
      // end;
  end;
  FormPrdLinha.Show;
  FormPrdLinha.FormShow( Sender );
end;

procedure TFormProduto.cbSemEstoqueClick(Sender: TObject);
begin
  inherited;
  FiltraGrid();
end;

procedure TFormProduto.DBEPRD_CODBAREnter( Sender : tObject );
begin
  wCodBarr := DBEPRD_CODBAR.Field.Text;
end;

procedure TFormProduto.PctrlProdutosChange( Sender : tObject );
begin
  if ( PctrlProdutos.ActivePageIndex = 0 ) then // ficha tecnica
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

        if ( CdsItensFicha.isEmpty ) then
          Bit_FTC_Novo.Click
        else
          BuscaProduto;
      end;
    except
      on E : EdatabaseError do
        Uteis.erro( Pchar( 'Erro ao abrir a tabela de Parametros !' + E.message ) );
    end;

  end
  else
    if ( PctrlProdutos.ActivePage = tsVendas ) then
      BuscaVendas

    else
    begin
      if ( PctrlProdutos.ActivePageIndex = 2 ) then // estoque
      begin
        MostraEstoqueDetalhe;
      end;
      if ( PctrlProdutos.ActivePageIndex = 1 ) then // produtos
      begin
        verificaEdicao;
        if NOT DBNavigator1.Enabled then
          DBNavigator1.Enabled := True;
      end;

    end;
end;

procedure TFormProduto.PERDAExit( Sender : tObject );
begin
  inherited;
  SetValores( calculaValor );
  calculaValor := True;
end;

procedure TFormProduto.PERDAKeyPress( Sender : tObject; var Key : Char );
begin
  inherited;
  calculaValor := True;
end;

procedure TFormProduto.PesqCNAESelect( Sender : tObject );
begin
  inherited;
  EdCnaeCodigo.Text := PesqCNAE.idRetorno;
  OpenAux2( 'select srv_codigo from cnae where cnae_codigo = ' + QuotedStr( EdCnaeCodigo.Text ) );
  if qAux2.FieldByName( 'srv_codigo' ).AsString <> '' then
  begin
    if not ( CdsProdutos.State in dsEditModes ) then
      CdsProdutos.Edit;
    CdsProdutosSRV_CODIGO.AsString := qAux2.FieldByName( 'srv_codigo' ).AsString;
    // CdsNfse.Post;
  end;
end;

procedure TFormProduto.BuscaRefer;
var
  sEmpresa : String;
begin
  sEmpresa := '';
  if DBInicio.Exclusivo( 'PRODUTOS' ) then
    sEmpresa := ' and F1.emp_codigo = P1.emp_codigo ';

  wSql1 := 'select F1.*,P2.PTI_SIGLA,P1.PRD_DESCRI,P1.PRD_DCVAR1,P1.PRD_DCVAR2,P1.PRD_DCVAR3,P1.PRD_DCVAR4,P1.PRD_DCVAR5,P1.PRD_DCVAR6,P1.PRD_DCVAR7,P1.PRD_DCVAR8 ';
  wSql2 := 'from FTC0000 F1 LEFT JOIN PRD0000 P1 ON (F1.PRD_REFER = P1.PRD_REFER' + sEmpresa + ') LEFT JOIN prd_tipo P2 ON (P2.pti_codigo = P1.pti_codigo) ';
  wSeleciona := 'where F1.PRD_REFER = ''' + EdtPrd_Refer.Text + '''';
  wOrdem := 'F1.PRD_REFER';
  //
  DmProducao.CdsFichaTec.close;
  DmProducao.CdsFichaTec.CommandText := SQLDEF( 'PRODUTOS', wSql1 + wSql2, wSeleciona, wOrdem, 'F1.' ); // 'PRODUTO'
  DmProducao.CdsFichaTec.Open;
  if NOT ( DmProducao.CdsFichaTec.isEmpty ) then
  begin
    wIncluir := False;
    EdtDescricao.Text := DmProducao.CdsFichaTecPRD_DESCRI.AsString;
    if DmProducao.CdsFichaTec.Active then
      DmProducao.DsFichaTec.AutoEdit := True;
  end
  else
  begin
    if DmProducao.CdsFichaTec.Active then
      DmProducao.DsFichaTec.AutoEdit := False;
  end;
  BuscaItens;

end;

procedure TFormProduto.BuscaItens;
var
  sEmpresa : String;
begin
  sEmpresa := '';
  if DBInicio.Exclusivo( 'PRODUTOS' ) then
    sEmpresa := ' and F1.emp_codigo = P1.emp_codigo ';

  wSql1 := 'SELECT F1.*,P1.PRD_DESCRI,P1.PRD_DCVAR1,P1.PRD_DCVAR2,P1.PRD_DCVAR3,P1.PRD_DCVAR4,P1.PRD_DCVAR5,P1.PRD_DCVAR6,P1.PRD_DCVAR7,P1.PRD_DCVAR8,';
  wSql2 := 'T1.PTI_SIGLA FROM FTC0000 F1 LEFT JOIN PRD0000 P1 ON (F1.PRD_REFER = P1.PRD_REFER' + sEmpresa + ') LEFT JOIN PRD_TIPO T1 ON (P1.PTI_CODIGO = T1.PTI_CODIGO) ';

  DmProducao.CdsFichaTec.close;
  DmProducao.CdsFichaTec.CommandText := SQLDEF( 'PRODUTOS', wSql1 + wSql2, 'where F1.PRD_REFER = ''' + EdtPrd_Refer.Text + '''' + sEmpresa, 'F1.PRD_REFER', 'F1.' );
  DmProducao.CdsFichaTec.Open;

  if sEmpresa <> '' then
    sEmpresa := ' and F2.emp_codigo = P1.emp_codigo ';

  OpenItensFicha;

  if ( CdsItensFicha.isEmpty ) then
    MostrarGrade;
end;

procedure TFormProduto.OpenItensFicha;

begin
  CdsItensFicha.DisableControls;
  CdsItensFicha.close;
  qItensFicha.sql.Clear;

  qItensFicha.sql.Text := 'Select F2.*,P1.PRD_DESCRI,P1.PRD_UND,P1.PRD_GRADE,P2.PTI_SIGLA, g1.PRG_DESCRICAO, ' + 'cast( ' + 'case ' + '     WHEN PRMT.pmt_calcularpv = ''0'' THEN ' + '         P1.PRD_PCUSTO ' + '     WHEN PRMT.pmt_calcularpv = ''1'' THEN ' + '         P1.prd_custocomipi ' + '     WHEN PRMT.pmt_calcularpv = ''2'' THEN ' + '         P1.PRD_PMEDIO ' + 'END as numeric(15,4)) AS PRD_PCUSTO, ' + 'cast( ' + '(case ' + '     WHEN PRMT.pmt_calcularpv = ''0'' THEN ' +
    '         P1.PRD_PCUSTO ' + '     WHEN PRMT.pmt_calcularpv = ''1'' THEN ' + '         P1.prd_custocomipi ' + '     WHEN PRMT.pmt_calcularpv = ''2'' THEN ' + '         P1.PRD_PMEDIO ' + 'END  * F2.fti_uc) as numeric(15,5)) AS TotalItem, ' + ' ope.OPE_CODIGO, ope_descricao, p1.prd_pvenda as prd_pvenda, ' + ' p1.amx_codigo, amx_Descri ' + 'from ftc_it01 F2 ' + ' join prd0000 P1 on (f2.prd_refer_itens = p1.prd_refer ' + ConcatSE( ' and P1.', DBInicio.ExclusivoSql( 'PRODUTOS' ) ) + ')' +
    ' join PRD_TIPO P2 ON P1.pti_codigo = P2.PTI_CODIGO ' + ' LEFT join PRD_GRADE g1 on g1.PRG_REGISTRO = f2.PRG_REGISTRO ' + ' left JOIN prmt0001 PRMT ON PRMT.emp_codigo = P1.emp_codigo ' + ' LEFT join operacoes ope on (ope.ope_codigo = f2.ope_codigo )' + ' left join almox0000 am on (am.amx_codigo = f2.amx_codigo ' + ConcatSE( ' and am.', DBInicio.ExclusivoSql( 'ESTOQUES' ) ) + ' )' + 'WHERE F2.PRD_REFER = ' + qStr( EdtPrd_Refer.Text ) + ' ' +
    ConcatSE( ' and f2.', DBInicio.ExclusivoSql( 'PRODUTOS' ) ) + ' ' + 'order by F2.FTI_REGISTRO, F2.PRD_REFER';

  if DBInicio.IsDesenvolvimento then
    CopyToClipBoard( qItensFicha.sql.Text );
  CdsItensFicha.Open;

  CdsItensFicha.EnableControls;
  CalculaCusto;
end;

procedure TFormProduto.OpenTitulosEspecificacoes;
var
  i : Integer;
begin
  qAux.close;
  qAux.sql.Clear;
  qAux.sql.Text := ' SELECT ESP_NOME,ESP_PADROES, ESP_COL1,ESP_COL2,ESP_COL3,ESP_COL4,ESP_COL5,ESP_COL6,ESP_COL7  FROM PRMT0001 ' + ' WHERE EMP_CODIGO = ' + DBInicio.Empresa.EMP_CODIGO;
  qAux.Open;

  for i := 0 to dbEspecificacoes.Columns.Count - 1 do
    if ( not ( qAux.FieldByName( dbEspecificacoes.Columns[ i ].FieldName ).AsString = '' ) or ( qAux.FieldByName( dbEspecificacoes.Columns[ i ].FieldName ).IsNull ) ) then
    begin
      dbEspecificacoes.Columns[ i ].Title.Caption := qAux.FieldByName( dbEspecificacoes.Columns[ i ].FieldName ).AsString;
      dbEspecificacoes.Columns[ i ].Visible := True;

    end
    else
      dbEspecificacoes.Columns[ i ].Visible := False;

end;

procedure TFormProduto.PASSOChange( Sender : tObject );
begin
  inherited;
  // if (cdsMola.State in dsEditModes) and (cdsMolaMMO_COM_LIVRE.AsFloat > 0 ) and (cdsMolaMMO_PASSO.AsFloat>0) then
  // begin
  // cdsMolaMMO_ESPIRAIS_UTEIS.AsFloat :=  cdsMolaMMO_COM_LIVRE.AsFloat /cdsMolaMMO_PASSO.AsFloat
  // end;
end;

procedure TFormProduto.PASSOExit( Sender : tObject );
begin
  inherited;
  SetValorVao;
  SetValores( calculaValor );
  calculaValor := True;
end;

procedure TFormProduto.PASSOKeyPress( Sender : tObject; var Key : Char );
begin
  inherited;
  calculaValor := True;
end;

procedure TFormProduto.CalculaCusto;
var
  Total, custo, totalConsumo, subTotalConsumo : Currency;
var
  clone : TClientDataSet;
  base : double;
begin
  Total := 0;
  custo := 0;
  totalConsumo := 0;
  if DbeBaseFormula.Text = EmptyStr then
    Exit;

  if not CdsItensFicha.isEmpty then
  begin
    // CdsItensFicha.Refresh;
    cdsItensFicha.Close;
    cdsItensFicha.Open;
  end;

  CdsItensFicha.First;
  clone := TClientDataSet.Create( Self );
  try
    // CdsItensFicha.DisableControls;
    clone.CloneCursor( CdsItensFicha, False );
    clone.First;
    while not clone.Eof do
    begin
      custo := custo + ( clone.FieldByName( 'TOTALITEM' ).AsCurrency );
      totalConsumo := totalConsumo + ( clone.FieldByName( 'FTI_UC' ).AsCurrency );
      if ( clone.FieldByName( 'FTI_UC' ).AsFloat > 0 ) and ( clone.FieldByName( 'prd_pvenda' ).AsFloat > 0 ) then
        Total := Total + ( clone.FieldByName( 'FTI_UC' ).AsFloat * clone.FieldByName( 'prd_pvenda' ).AsFloat );

      clone.Next;
    end;

    base := StrToFloat( DbeBaseFormula.Text );
    // DmProducao.CdsFichaTec.FieldByName('FTC_BASEFORMULA').AsFloat  ;
    if base = 0 then
      base := 1;

    currPrecoVenda.Value := Total / base;
    currCustoFicha.Value := custo / base;

    subTotalConsumo := DBInicio.BuscaUmDadoSqlAsFloat( 'SELECT  SUM(FTI_UC) FROM FTC_IT01 fi ' + ' WHERE PRD_REFER = ' + QuotedStr( CdsProdutosPRD_REFER.AsString ) );
    if subTotalConsumo < CdsProdutosPRD_PESOLIQ.AsCurrency * base then
      currTotalConsumo.Color := clBlue
    else
      if subTotalConsumo > CdsProdutosPRD_PESOLIQ.AsCurrency * base then
        currTotalConsumo.Color := clRed
      else
        if subTotalConsumo = CdsProdutosPRD_PESOLIQ.AsCurrency * base then
          currTotalConsumo.Color := clGreen;

    currTotalConsumo.Value := totalConsumo;
  finally
    // CdsItensFicha.EnableControls;
    FreeAndNil( clone );
  end;

  // CdsItensFicha.First;
end;

procedure TFormProduto.Bit_FTC_NovoClick( Sender : tObject );
var
  sEmpresa : String;
begin
  sEmpresa := '';
  if DBInicio.Exclusivo( 'PRODUTOS' ) then
    sEmpresa := ' and F1.emp_codigo = P1.emp_codigo ';

  if PctrlProdutos.ActivePageIndex = 1 then // se produtos
    PctrlProdutos.ActivePageIndex := 0; // passe para ficha
  wSql1 := 'SELECT F1.*,P1.PRD_DESCRI,P1.PRD_DCVAR1,P1.PRD_DCVAR2,P1.PRD_DCVAR3,P1.PRD_DCVAR4,P1.PRD_DCVAR5,P1.PRD_DCVAR6,P1.PRD_DCVAR7,P1.PRD_DCVAR8,';
  wSql2 := 'T1.PTI_SIGLA FROM FTC0000 F1 LEFT JOIN PRD0000 P1 ON (F1.PRD_REFER = P1.PRD_REFER' + sEmpresa + ') LEFT JOIN PRD_TIPO T1 ON (P1.PTI_CODIGO = T1.PTI_CODIGO) ';
  //
  DmProducao.CdsFichaTec.close;
  DmProducao.CdsFichaTec.CommandText := SQLDEF( 'PRODUTOS', wSql1 + wSql2, 'where F1.PRD_REFER = ''' + EdtPrd_Refer.Text + '''', 'F1.PRD_REFER', 'F1.' );
  DmProducao.CdsFichaTec.Open;
  if ( DmProducao.CdsFichaTec.isEmpty ) then
  begin
    wIncluir := True;
    GrpGrade.Visible := False;
    DmProducao.CdsFichaTec.Insert;

    DbDtFTC_CRIACAO.date := now;
    DbeFTC_TUP.Field.AsCurrency := 1; // dfault
    DbeBaseFormula.Field.AsInteger := 1; // dfault
    DmProducao.CdsFichaTecPRD_REFER.AsString := EdtPrd_Refer.Text;
    DmProducao.CdsFichaTecEmp_Codigo.AsString := DBInicio.Empresa.EMP_CODIGO;
    DmProducao.CdsFichaTec.ApplyUpdates( 0 );
    DmProducao.CdsFichaTec.Edit;
    DesabilitaBotoesFTC;
    LimparDadosFTC;
    DbDtFTC_CRIACAO.Setfocus;

  end
  else
    BuscaProduto;
end;

procedure TFormProduto.Bit_FTC_CopiarClick( Sender : tObject );
begin
  if EdtPrd_Refer.Text <> '' then
  begin
    FormCopiaFichaTec := TFormCopiaFichaTec.Create( Application );
    try
      FormCopiaFichaTec.ShowModal;
    finally
      FreeAndNil( FormCopiaFichaTec );
    end;
  end;
end;

procedure TFormProduto.BIT_FTC_EXCLUIRClick( Sender : tObject );
begin

  if EdtPrd_Refer.Text <> '' then
  begin
    if ( not DmProducao.CdsFichaTec.isEmpty ) then
      if ( Uteis.confirmacao( 'Deseja excluir essa Ficha Técnica?' ) = Mryes ) then
        if ( Uteis.confirmacao( 'A ficha de "Custo" do produto também será excluida. Confirma a exclusão?' ) = Mryes ) then
        begin
          ExecSql( 'Delete from FTC_IT01 where PRD_REFER = ' + qStr( EdtPrd_Refer.Text ) + ConcatSE( ' and ', DBInicio.ExclusivoSql( 'PRODUTOS' ) ) );
          DmProducao.CdsFichaTec.Delete;
          DmProducao.CdsFichaTec.ApplyUpdates( 0 );
          CdsItensFicha.close;
          SqlItensGrade.close;
        end;
  end
  else
    Uteis.aviso( 'Informe uma Referência !' );
  HabilitaBotoes;
  EdtDescricao.Text := '';
  LimparDadosFTC;
  wIncluir := False;
  if ( PctrlProdutos.ActivePageIndex = 0 ) then // ficha
    PctrlProdutos.ActivePageIndex := 1; // cadastro

  EdtPrd_Refer.Setfocus;

end;

procedure TFormProduto.BIT_FTC_GRAVARClick( Sender : tObject );
var
  j : Integer;
begin
  if ( CdsItensFicha.isEmpty ) and ( EdtPrd_Refer.Text <> '' ) then
  begin
    Uteis.aviso( 'Informe a Matéria-Prima !' );

    EdtRefer.Setfocus;
    Exit;
  end;
  if DbDtFTC_CRIACAO.Text = '  /  /    ' then
  begin
    Uteis.aviso( 'Digite a data de criação' );
    DbDtFTC_CRIACAO.Setfocus;
    Exit;
  end;
  if DbeFTC_TUP.Text = '0' then
  begin
    Uteis.aviso( 'Você não informou o TUP. Vou colocar o TUP padrão = 1 ' );
    DbeFTC_TUP.Field.AsCurrency := 1;
  end;

  if DmProducao.CdsFichaTec.State in [ dsEdit, dsInsert ] then
  begin
    DmProducao.CdsFichaTecPRD_REFER.AsString := EdtPrd_Refer.Text;
    DmProducao.CdsFichaTecEmp_Codigo.AsString := DBInicio.Empresa.EMP_CODIGO;
    DmProducao.CdsFichaTecAMX_CODIGO.AsString := EdAlmoxarifadoCodigo.Text;
    DmProducao.CdsFichaTec.Post;
    DmProducao.CdsFichaTec.ApplyUpdates( 0 );
    // POG para gravar o FTC_ETAPAS que não grava no post...   :/
    ExecSql( 'UPDATE FTC0000 SET FTC_ETAPAS = ' + QuotedStr( mDescricaoEtapas.Text ) + ' WHERE PRD_REFER = ' + QuotedStr( EdtPrd_Refer.Text ) );
  end;
  LimparDadosFTC;
  wIncluir := False;
  DesabilitaMateria;
  HabilitaBotoesFTC;
  Tbs_Produtos.TabVisible := True;
  if ( PctrlProdutos.ActivePageIndex = 0 ) then // ficha tec
    DBGridFichaTecnicaItem.Setfocus
  else
    EdtPrd_Refer.Setfocus;
  for j := 1 to 9 do
    PctrlProdutos.Pages[ j ].TabVisible := True;
end;

procedure TFormProduto.BIT_FTC_RELATORIOClick( Sender : tObject );
var
  sEmpresa : String;
  wI, wS : Integer;
begin
  if EdtPrd_Refer.Text <> '' then
  begin
    sEmpresa := '';
    if DBInicio.Exclusivo( 'PRODUTOS' ) then
      sEmpresa := ' and F1.emp_codigo = P1.emp_codigo ';

    wSql1 := 'SELECT F1.PRD_REFER,F1.FTC_TUP,F1.FTC_CRIACAO,F1.FTC_PROC1,F1.FTC_PROC2,F1.FTC_PROC3,F1.FTC_PROC4,F1.FTC_PROC5,F1.FTC_PROC6,F1.FTC_PROC7,F1.FTC_PROC8,f1.FTC_ETAPAS, P1.PRD_DESCRI,';
    wSql2 := 'P1.PRD_DCVAR1,P1.PRD_DCVAR2,P1.PRD_DCVAR3,P1.PRD_DCVAR4,P1.PRD_DCVAR5,P1.PRD_DCVAR6,P1.PRD_DCVAR7,P1.PRD_DCVAR8,P1.PTI_CODIGO,T1.PTI_DESCRI,P1.PGR_CODIGO,G1.PGR_DESCRI,P1.LIN_CODIGO,L1.LIN_DESCRI FROM FTC0000 F1 ';
    wSql3 := 'LEFT JOIN PRD0000 P1 on (F1.PRD_REFER  = P1.PRD_REFER' + sEmpresa + ') LEFT JOIN PRD_TIPO T1 on (P1.PTI_CODIGO = T1.PTI_CODIGO) LEFT JOIN PRD_GRUPO G1 on (P1.PGR_CODIGO = G1.PGR_CODIGO) LEFT JOIN PRD_LINHA L1 on (P1.LIN_CODIGO = L1.LIN_CODIGO) ';
    SqlRelProdutos.close;
    SqlRelProdutos.CommandText := SQLDEF( 'PRODUTOS', wSql1 + wSql2 + wSql3, 'WHERE F1.PRD_REFER = ''' + EdtPrd_Refer.Text + '''', 'F1.PRD_REFER', 'F1.' );
    SqlRelProdutos.Open;
    if NOT ( SqlRelProdutos.isEmpty ) then
    begin
      if NOT ( CdsItensFicha.isEmpty ) then
      begin
        if ( not CdsRelItens.Active ) then
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
          CdsRelItensFTI_ITEM.AsString := StrZero( IntToStr( wI ), 2 );
          CdsRelItensPRD_REFER.AsString := CdsItensFichaPRD_REFER.AsString;
          CdsRelItensPRD_REFER_ITENS.AsString := CdsItensFichaPRD_REFER_ITENS.AsString;
          CdsRelItensPRD_DESCRI.AsString := CdsItensFichaPRD_DESCRI.AsString;
          CdsRelItensPRD_UND.AsString := CdsItensFichaPRD_UND.AsString;
          CdsRelItensPTI_SIGLA.AsString := CdsItensFichaPTI_SIGLA.AsString;
          CdsRelItensPRD_PCUSTO.AsCurrency := CdsItensFichaPRD_PCUSTO.AsCurrency;
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
          // CdsRelItensTOTAL.AsCurrency := NumEdit2.Value;
          CdsRelItens.Post;
          if ( CdsItensFichaPTI_SIGLA.AsString = 'PA' ) or ( CdsItensFichaPTI_SIGLA.AsString = 'PI' ) then
          begin

            if sEmpresa <> '' then
              sEmpresa := ' and f2.emp_codigo = P1.emp_codigo ';

            wSql1 := 'Select F2.*, P1.PRD_DESCRI, P1.PRD_UND, P1.PRD_GRADE, P2.PTI_SIGLA, case WHEN PRMT.pmt_custo_base_producao = ''CL'' THEN P1.PRD_PCUSTO WHEN PRMT.pmt_custo_base_producao = ''CE'' ';
            wSql2 := 'THEN P1.prd_custocomipi WHEN PRMT.pmt_custo_base_producao = ''CM'' THEN P1.prd_pmedio WHEN PRMT.pmt_custo_base_producao = ''SI'' THEN P1.prd_custo_credito END AS PRD_PCUSTO, ';
            wSql3 := '(case WHEN PRMT.pmt_custo_base_producao = ''CL'' THEN P1.PRD_PCUSTO WHEN PRMT.pmt_custo_base_producao = ''CE'' THEN ';
            wSql4 := 'P1.prd_custocomipi WHEN PRMT.pmt_custo_base_producao = ''CM'' THEN P1.prd_pmedio WHEN PRMT.pmt_custo_base_producao = ''SI'' THEN ';
            wSql5 := 'P1.prd_custo_credito END  * F2.fti_uc) AS TotalItem ';
            wSql6 := 'from ftc_it01 F2 left join prd0000 P1 on (f2.prd_refer_itens = p1.prd_refer ' + sEmpresa + ') left join PRD_TIPO P2 ON P1.pti_codigo = P2.PTI_CODIGO left JOIN prmt0001 PRMT ON PRMT.emp_codigo = P1.emp_codigo ';
            wSeleciona := 'WHERE F2.PRD_REFER = ''' + CdsItensFichaPRD_REFER_ITENS.AsString + '''';
            wOrdem := 'F2.PRD_REFER,F2.FTI_REGISTRO';
            //
            SqlItensGrade.close;
            SqlItensGrade.CommandText := SQLDEF( 'PRODUTOS', wSql1 + wSql2 + wSql3 + wSql4 + wSql5 + wSql6, wSeleciona, wOrdem, 'F2.' );
            SqlItensGrade.Open;
            if NOT ( SqlItensGrade.isEmpty ) then
            begin
              SqlItensGrade.First;
              wS := 1;
              while not SqlItensGrade.Eof do
              begin
                CdsRelItens.Append;
                CdsRelItensFTI_ITEM.AsString := StrZero( IntToStr( wI ), 2 ) + '.' + StrZero( IntToStr( wS ), 3 );
                CdsRelItensPRD_REFER.AsString := CdsItensFichaPRD_REFER.AsString;
                CdsRelItensPRD_REFER_ITENS.AsString := SqlItensGradePRD_REFER_ITENS.AsString;
                CdsRelItensPRD_DESCRI.AsString := SqlItensGradePRD_DESCRI.AsString;
                CdsRelItensPRD_UND.AsString := SqlItensGradePRD_UND.AsString;
                CdsRelItensPTI_SIGLA.AsString := SqlItensGradePTI_SIGLA.AsString;
                CdsRelItensPRD_PCUSTO.AsCurrency := SqlItensGradePRD_PCUSTO.AsCurrency;
                CdsRelItensFTI_UC.AsCurrency := SqlItensGradeFTI_UC.AsCurrency;
                CdsRelItensFTI_MODE1.AsString := SqlItensGradeFTI_MODE1.AsString;
                CdsRelItensFTI_MODE2.AsString := SqlItensGradeFTI_MODE2.AsString;
                CdsRelItensFTI_MODE3.AsString := SqlItensGradeFTI_MODE3.AsString;
                CdsRelItensFTI_MODE4.AsString := SqlItensGradeFTI_MODE4.AsString;
                CdsRelItensFTI_MODE5.AsString := SqlItensGradeFTI_MODE5.AsString;
                CdsRelItensFTI_MODE6.AsString := SqlItensGradeFTI_MODE6.AsString;
                CdsRelItensFTI_MODE7.AsString := SqlItensGradeFTI_MODE7.AsString;
                CdsRelItensFTI_MODE8.AsString := SqlItensGradeFTI_MODE8.AsString;
                CdsRelItens.Post;
                SqlItensGrade.Next;
                Inc( wS );
              end;
            end;
          end;
          CdsItensFicha.Next;
          Inc( wI );
        end;
        CdsItensFicha.EnableControls;
        LBL_00_EMPRESA.Caption := DBInicio.Empresa.RAZAO;
        LBL_00_LTITULO1.Caption := 'FICHA TECNICA DO PRODUTO';
        ppRelFichaTec.DeviceType := 'Screen';
        RBuilderPreview( ppRelFichaTec );
      end
      else
        Uteis.aviso( 'Não existe itens lançado na ficha' );
      CdsItensFicha.EnableControls;

    end
    else
      Uteis.aviso( 'Não Existe Ficha a ser impressa' );
  end
  else
    Uteis.aviso( 'Informe uma Referência !' );
  wIncluir := False;
end;

procedure TFormProduto.SpProdutoClick( Sender : tObject );
begin
  if EdtPrd_Refer.Text <> '' then
  begin
    CbGrade.Condicao := 'prd_codigo = ' + qStr( RetornaProdutoReferencia( EdtRefer.Text ) );

    FormProdutoGrid := TFormProdutoGrid.Create( Application );
    try
      FormProdutoGrid.ShowModal;
      if FormProdutoGrid.ModalResult = mrOk then
      begin
        if ( FormProdutoGrid.ReferRetorno = EdtPrd_Refer.Text ) then
        begin
          Uteis.aviso( Pchar( 'Impossível inserir este material.' + #13 + 'Este material é a própria ficha técnica !' ) );
          FreeAndNil( FormProdutoGrid );
          Exit;
        end;

        EdtRefer.Text := FormProdutoGrid.ReferRetorno;
        EdtProduto.Text := FormProdutoGrid.DescricaoRetorno;
        if CdsItensFicha.Locate( 'PRD_REFER_ITENS', EdtRefer.Text, [ ] ) then
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
    Uteis.aviso( 'Informe a Referência do Produto Acabado !' );
    EdtPrd_Refer.Setfocus;
  end;
end;

procedure TFormProduto.Bit_ExcluirMateriaClick( Sender : tObject );
begin
  if EdtRefer.Text <> '' then
  begin
    ExcluirItensFTC;

    // CdsItensFicha.Refresh;
    cdsItensFicha.Close;
    cdsItensFicha.Open;

    LimparDadosFTC;
    SpProduto.Enabled := True;
    EdtRefer.TabStop := True;
    EdtRefer.ReadOnly := False;
    EdtRefer.Color := clWindow;
    if ( PctrlProdutos.ActivePageIndex = 0 ) then
      EdtRefer.Setfocus
    else
      DBGridFichaTecnicaItem.Setfocus;

  end
  else
  begin
    Uteis.aviso( 'Informe uma Materia-Prima !' );
    DBGridFichaTecnicaItem.Setfocus;
  end;
end;

procedure TFormProduto.Bit_GravarMateriaClick( Sender : tObject );
begin
  if BuscaUmDadoSqlAsInteger( 'Select cast(count(*) as integer) as conta from    FTC0000 WHERE PRD_REFER = ' + qStr( EdtPrd_Refer.Text ) + ConcatSE( ' and ', DBInicio.ExclusivoSql( 'PRODUTOS' ) ) ) = 0 then
  begin
    if ( not wIncluir ) then
    begin
      Uteis.aviso( '"Atenção" Crie a ticha técnica para o produto !' + #13#10 + 'Clique no botão Criar Ficha !' );
      HabilitaBotoesFTC;
      Bit_FTC_Novo.Setfocus;
      Exit;
    end;
  end
  Else
    if CurrConsumo.Value <= 0 then
    begin
      Uteis.aviso( 'A Quantidade de consumo deve ser informada !' );
      CurrConsumo.Setfocus;
      Exit;
    end
    Else
      if Trim( EdtRefer.Text ) = '' then
      begin
        Uteis.aviso( 'Informe o código do material !' );
        EdtRefer.Setfocus;
        Exit;
      end
      else
      BEGIN
        if ( DBInicio.GetParametroSistema( 'PMT_LANCA_PERC_MATERIA_PRIMA' ) = 'S' ) then
          if BuscaUmDadoSqlAsFloat( 'SELECT  SUM(FTI_UC) FROM FTC_IT01 fi ' + ' WHERE PRD_REFER = ' + QuotedStr( CdsProdutosPRD_REFER.AsString ) + ' AND PRD_REFER_ITENS <> ' + QuotedStr( EdtRefer.Text ) ) + ( CdsProdutosPRD_PESOLIQ.AsFloat / 100 ) * curPercentualConsumo.Value > CdsProdutosPRD_PESOLIQ.AsFloat then
            Uteis.aviso( 'Quantidade informada supera o Peso Líquido do produto final.' + #13 + 'Favor revisar os itens da Ficha Técnica!' );

        if wIncluirItem then
          CdsItensFicha.Insert
        ELSE
          if CdsItensFicha.Locate( 'FTI_REGISTRO', CdsItensFichaFTI_REGISTRO.AsInteger, [ ] ) then
            CdsItensFicha.Edit;

        CdsItensFichaPRD_REFER.AsString := EdtPrd_Refer.Text;
        CdsItensFichaPRD_REFER_ITENS.AsString := EdtRefer.Text;
        CdsItensFichaFTI_MODIFICADA.AsDateTime := DateModif.date;
        // CdsItensFichaFTI_UC.AsFloat := CurrConsumo.AsFloat;
        CdsItensFichaFTI_UCMODIFIC.AsFloat := CurrAnterior.Value;
        // CdsItensFichaFTI_PRECOCUSTO.AsCurrency := cdsite
        CdsItensFichaPRG_REGISTRO.AsString := CbGrade.CodigoLista;
        CdsItensFichaEMP_CODIGO.AsString := DBInicio.Empresa.EMP_CODIGO;
        if edOperacao.idRetorno <> '' then
          CdsItensFichaOPE_CODIGO.AsInteger := StrToInt( edOperacao.idRetorno );

        CdsItensFichaFTI_PERDA.Value := CurPerda.AsFloat;
        CdsItensFichaAMX_CODIGO.AsString := CbAlmoxarifado.idRetorno;
        CdsItensFichaFTI_PERCENTUAL.AsFloat := curPercentualConsumo.AsFloat;
        // NÃO ATUALIZA...
        CdsItensFicha.Post;
        CdsItensFicha.ApplyUpdates( 0 ); // não ta funcionando direito Às vezes
        ExecSql( ' UPDATE FTC_IT01   ' + ' SET FTI_UC = ' + FloatToSQL( CurrConsumo.AsFloat ) + ', ' + '     FTI_PERCENTUAL = ' + FloatToSQL( curPercentualConsumo.AsFloat ) + iif( edOperacao.idRetorno <> '', ', OPE_CODIGO =' + QuotedStr( edOperacao.idRetorno ), '' ) + iif( CbAlmoxarifado.idRetorno <> '', '  , AMX_CODIGO = ' + QuotedStr( CbAlmoxarifado.idRetorno ), ', amx_codigo = null' ) + ' WHERE FTI_REGISTRO = ' + CdsItensFichaFTI_REGISTRO.AsString );

        CdsItensFicha.close;
        CdsItensFicha.Open;

        LimparDadosFTC;

        SpProduto.Enabled := True;
        EdtRefer.TabStop := True;
        EdtRefer.ReadOnly := False;
        EdtRefer.Color := clWindow;
        CalculaCusto;
        RecalculaPrecosFichaTecnica;
        if wIncluirItem then
          CdsItensFicha.Last;
      END;
end;

procedure TFormProduto.Bit_CancelarMateriaClick( Sender : tObject );
begin
  LimparDadosFTC;
  SpProduto.Enabled := True;
  PAN_FTC01.Enabled := True;
  PAN_FTC02.Enabled := True;
  PAN_FTC03.Enabled := True;
  GrpVariacoes.Enabled := True;
  GrpMateria.Enabled := True;
  GrpProcesso.Enabled := True;
  EdtRefer.TabStop := True;
  EdtRefer.ReadOnly := False;
  EdtRefer.Color := clWindow;
  EdtRefer.Setfocus;
end;

procedure TFormProduto.LimparDadosFTC;
begin
  EdtRefer.Text := '';
  EdtProduto.Text := '';
  CurrConsumo.Value := 0;
  curPercentualConsumo.Value := 0;
  CurrAnterior.Value := 0;
  DateModif.Text := '';
  edOperacao.idRetorno := '';
  CbAlmoxarifado.idRetorno := '';
  EdAlmoxarifadoCodigo.Clear;
end;

procedure TFormProduto.DesabilitaMateria;
begin
  EdtProduto.Enabled := False;
  CurrConsumo.Enabled := False;
  CurrAnterior.Enabled := False;
  DateModif.Enabled := False;
  CbGrade.Enabled := False;

end;

procedure TFormProduto.SetValorDiametroExterno;
var
  sTipo : String;
  sVariacao : String;
  procedure formula1; // DI + (2*D)
  begin
    cdsMolaMMO_DIAMETRO_EXTERNO.AsFloat := cdsMolaMMO_DIAMETRO_INTERNO.AsFloat + ( 2 * StrToFloatDef( cdsMolaMMO_DIAMETRO_ARAME.AsString, 0 ) );
  end;

begin
  if not qAux3.isEmpty then
  begin
    sTipo := qAux3.FieldByName( 'mmo_tipo' ).AsString;
    sVariacao := qAux3.FieldByName( 'mmo_variacao' ).AsString;

    if ( MatchText( sTipo, [ 'C', 'R', 'O', 'D' ] ) ) then
    begin
      if ( MatchText( sVariacao, [ 'P', 'V', 'B' ] ) ) then
      begin
        if cdsMolaMMO_PARTE_DI.AsString = 'S' then
          formula1;
      end;

    end;

  end;

  // cdsMolaMMO_DIAMETRO_INTERNO.AsFloat := cdsMolaMMO_DIAMETRO_EXTERNO.AsFloat - (2 * StrToFloatDef(cdsMolaMMO_DIAMETRO_ARAME.AsString, 0));
end;

procedure TFormProduto.SetValorDiametroMedio;
var
  sTipo : String;
  sVariacao : String;

  // if MatchText(qAux3.FieldByName('mmo_variacao').AsString, ['B']) then
  // DIAMETRO_MEDIO.Hint := '(De + DMe / 2) - D'
  // else
  // DIAMETRO_MEDIO.Hint := 'Di + D = Dm ou De - D = Dm';

  procedure formula1; // DI + D
  begin
    cdsMolaMMO_DIAMETRO_MEDIO.AsFloat := ( cdsMolaMMO_DIAMETRO_INTERNO.AsFloat + StrToFloatDef( cdsMolaMMO_DIAMETRO_ARAME.AsString, 0 ) );
  end;
  procedure formula2; // ((DE + DEm) /2) - D
  begin
    cdsMolaMMO_DIAMETRO_MEDIO.AsFloat := ( ( cdsMolaMMO_DIAMETRO_EXTERNO.AsFloat + cdsMolaMMO_DIAMETRO_EXTERNO_MEIO.AsFloat ) / 2 ) - StrToFloatDef( cdsMolaMMO_DIAMETRO_ARAME.AsString, 0 );
  end;
  procedure formula3; // ((DI-) + (DI+)) / 2 + D
  begin
    cdsMolaMMO_DIAMETRO_MEDIO.AsFloat := ( cdsMolaMMO_DIAMETRO_INT_MENOR.AsFloat + cdsMolaMMO_DIAMETRO_INT_MAIOR.AsFloat ) / 2 + StrToFloatDef( cdsMolaMMO_DIAMETRO_ARAME.AsString, 0 );
  end;
  procedure formula4; // ((DE+) + (De-)) / 2 - D
  begin
    cdsMolaMMO_DIAMETRO_MEDIO.AsFloat := ( ( cdsMolaMMO_DIAMETRO_EXT_MAIOR.AsFloat + cdsMolaMMO_DIAMETRO_EXT_MENOR.AsFloat ) / 2 - ( StrToFloatDef( cdsMolaMMO_DIAMETRO_ARAME.AsString, 0 ) ) );
  end;
  procedure formula5; // DE - D
  begin
    cdsMolaMMO_DIAMETRO_MEDIO.AsFloat := cdsMolaMMO_DIAMETRO_EXTERNO.AsFloat - StrToFloatDef( cdsMolaMMO_DIAMETRO_ARAME.AsString, 0 );
  end;

begin
  { TIPO DA MOLA
    C = Compressão
    R = Tração
    O = Torção
    D = Condutor

    VARIAÇÃO
    P = Paralela
    C = Conica
    B = Biconica
    V = Convexa }
  if not qAux3.isEmpty then
  begin
    sTipo := qAux3.FieldByName( 'mmo_tipo' ).AsString;
    sVariacao := qAux3.FieldByName( 'mmo_variacao' ).AsString;
    if ( MatchText( sTipo, [ 'C', 'R', 'O', 'D' ] ) ) then
    begin
      if ( sVariacao = 'P' ) then
      begin
        if cdsMolaMMO_PARTE_DI.AsString = 'S' then
          formula1 // DI + D
        else
          formula5; // DE - D
      end
      else
        if ( sVariacao = 'B' ) then
        begin
          if cdsMolaMMO_PARTE_DI.AsString = 'S' then
            formula1 // DI + D
          else
            formula2; // ((DE + DEm) / 2) - D
        end
        else
          if ( sVariacao = 'V' ) then
          begin
            if cdsMolaMMO_PARTE_DI.AsString = 'S' then
              formula1 // DI + D
            else
              formula2; // ((DE + DEm) /2) - D
          end
          else
            if ( sVariacao = 'C' ) then
            begin // ((Di-)  +  (Di+))  /2 + D
              if cdsMolaMMO_PARTE_DI.AsString = 'S' then
                formula3
              else // ((De+) + (De-)) / 2 - D
                formula4;
            end;
    end;
  end;
end;

procedure TFormProduto.SetValorDiametroMedioMeio;
var
  sTipo : String;
  sVariacao : String;
  procedure formula1; // ((DE + D) + (DEMM - D))/2
  begin
    cdsMolaMMO_DIAMETRO_MEDIO_MEIO.AsFloat := ( ( cdsMolaMMO_DIAMETRO_EXTERNO.AsFloat + StrToFloatDef( cdsMolaMMO_DIAMETRO_ARAME.AsString, 0 ) ) + ( cdsMolaMMO_DIAMETRO_EXTERNO_MEIO.AsFloat - StrToFloatDef( cdsMolaMMO_DIAMETRO_ARAME.AsString, 0 ) ) ) / 2
  end;

begin
  if not qAux3.isEmpty then
  begin
    sTipo := qAux3.FieldByName( 'mmo_tipo' ).AsString;
    sVariacao := qAux3.FieldByName( 'mmo_variacao' ).AsString;
    if ( MatchText( sTipo, [ 'C', 'R', 'O', 'D' ] ) ) then
    begin
      if ( MatchText( sVariacao, [ 'B' ] ) ) then
      begin
        formula1 // ((DE + D) + (DEMM - D))/2
      end
    end;
  end;
end;

procedure TFormProduto.SetValorDiametroInterno;
var
  sTipo : String;
  sVariacao : String;
  procedure formula1; // DE - (2*D)
  begin
    cdsMolaMMO_DIAMETRO_INTERNO.AsFloat := ( cdsMolaMMO_DIAMETRO_EXTERNO.AsFloat ) - ( 2 * StrToFloatDef( cdsMolaMMO_DIAMETRO_ARAME.AsString, 0 ) );
  end;

begin
  if not qAux3.isEmpty then
  begin
    sTipo := qAux3.FieldByName( 'mmo_tipo' ).AsString;
    sVariacao := qAux3.FieldByName( 'mmo_variacao' ).AsString;

    if ( MatchText( sTipo, [ 'C', 'R', 'O', 'D' ] ) ) then
    begin
      if ( MatchText( sVariacao, [ 'P', 'B', 'V' ] ) ) then
      begin
        if cdsMolaMMO_PARTE_DI.AsString <> 'S' then
          formula1;
      end;

    end;

  end;

  // cdsMolaMMO_DIAMETRO_INTERNO.AsFloat := cdsMolaMMO_DIAMETRO_EXTERNO.AsFloat - (2 * StrToFloatDef(cdsMolaMMO_DIAMETRO_ARAME.AsString, 0));
end;

procedure TFormProduto.SetValorPasso;
begin
  // cdsMolaMMO_PASSO.AsFloat := cdsMolaMMO_VAO.AsFloat + StrToFloatDef(cdsMolaMMO_DIAMETRO_ARAME.AsString, 0);
  cdsMolaMMO_PASSO.AsFloat := cdsMolaMMO_VAO.AsFloat + StrToFloatDef( cdsMolaMMO_DIAMETRO_ARAME.AsString, 0 );
end;

procedure TFormProduto.SetValorPeso;
begin
  cdsMolaMMO_PESO.AsFloat := StrToFloatDef( cdsMolaMMO_DIAMETRO_ARAME.AsString, 0 ) * StrToFloatDef( cdsMolaMMO_DIAMETRO_ARAME.AsString, 0 ) * 0.0062 * cdsMolaMMO_DESENVOLVIMENTO.AsFloat;
end;

procedure TFormProduto.SetValorDesenvolvimento;
begin
  if qAux3.FieldByName( 'mmo_tipo' ).AsString = 'O' then
    cdsMolaMMO_DESENVOLVIMENTO.AsFloat := ( ( cdsMolaMMO_DIAMETRO_MEDIO.AsFloat * 3.1416 * cdsMolaMMO_ESPIRAL_TOTAL.AsFloat ) + ( cdsMolaMMO_COMPRIMENTO_HASTE_HA.AsFloat + cdsMolaMMO_COMPRIMENTO_HASTE_HB.AsFloat ) ) / 1000 + cdsMolaMMO_PERDA.AsFloat
  else
    cdsMolaMMO_DESENVOLVIMENTO.AsFloat := ( cdsMolaMMO_DIAMETRO_MEDIO.AsFloat * 3.1416 * cdsMolaMMO_ESPIRAL_TOTAL.AsFloat ) / 1000 + cdsMolaMMO_PERDA.AsFloat;
end;

procedure TFormProduto.SetValorEspiralTotal;
var
  sTipo : String;
  sVariacao : String;
  procedure formula1; // IF + 1.5
  begin
    cdsMolaMMO_ESPIRAL_TOTAL.AsFloat := cdsMolaMMO_ESPIRAIS_UTEIS.AsFloat + 1.5;
  end;
  procedure formula2; // IF + QTD ESPIRAS DO GANCHO
  begin
    if ( cdsMolaGAN_CODIGO.AsInteger > 0 ) then
    begin
      cdsMolaMMO_ESPIRAL_TOTAL.AsFloat := cdsMolaMMO_ESPIRAIS_UTEIS.AsFloat + cdsGanchoGAN_QTD_ESPIRAS.AsFloat;
    end
    else
    begin
      cdsMolaMMO_ESPIRAL_TOTAL.AsFloat := cdsMolaMMO_ESPIRAIS_UTEIS.AsFloat;
    end;
  end;

begin

  if not qAux3.isEmpty then
  begin
    sTipo := qAux3.FieldByName( 'mmo_tipo' ).AsString;
    sVariacao := qAux3.FieldByName( 'mmo_variacao' ).AsString;
  end;

  if { gancho } ( SgDbSearchCombo8.Enabled ) and ( SgDbSearchCombo8.idRetorno = '' ) then
  begin
    MessageDlg( 'Favor informar o Tipo do Gancho', mtWarning, [ mbOK ], 0 );
    if SgDbSearchCombo8.CanFocus then
      SgDbSearchCombo8.Setfocus;
    Exit;
  end;

  if { gancho } ( SgDbSearchCombo8.Enabled ) then
  begin
    cdsGancho.Open;
    cdsGancho.Locate( 'GAN_CODIGO', SgDbSearchCombo8.idRetorno, [ ] );
  end;

  {
    TIPO DA MOLA
    C = Compressão
    R = Tração
    O = Torção
    D = Condutor

    VARIAÇÃO
    P = Paralela
    C = Conica
    B = Biconica
    V = Convexa
  }

  if ( sTipo = 'C' ) then
  begin
    formula1;
  end
  else
    if ( sTipo = 'R' ) and ( SgDbSearchCombo8.idRetorno <> '' ) then
    begin
      formula2;
    end
    else
      if ( sTipo = 'O' ) then
      begin
        formula1;
      end;

end;

procedure TFormProduto.SetValorEspiraisUteis;
var
  sTipo : String;
  sVariacao : String;
  procedure formula1; // Lk / D
  begin
    cdsMolaMMO_ESPIRAIS_UTEIS.AsFloat := cdsMolaMMO_COMP_CORPO.AsFloat / StrToFloatDef( cdsMolaMMO_DIAMETRO_ARAME.AsString, 0 );
  end;
  procedure formula2; // Lk / P
  begin
    if ( cdsMolaMMO_COMP_CORPO.AsFloat > 0 ) And ( cdsMolaMMO_PASSO.AsFloat > 0 ) then
      cdsMolaMMO_ESPIRAIS_UTEIS.AsFloat := cdsMolaMMO_COMP_CORPO.AsFloat / cdsMolaMMO_PASSO.AsFloat;
  end;
  procedure formula3; // L0 / P
  begin
    if ( cdsMolaMMO_COM_LIVRE.AsFloat > 0 ) And ( cdsMolaMMO_PASSO.AsFloat > 0 ) then
      cdsMolaMMO_ESPIRAIS_UTEIS.AsFloat := cdsMolaMMO_COM_LIVRE.AsFloat / cdsMolaMMO_PASSO.AsFloat;
  end;
  procedure formula4; // Lk / P
  begin
    if ( cdsMolaMMO_COMP_CORPO.AsFloat > 0 ) And ( cdsMolaMMO_PASSO.AsFloat > 0 ) then
      cdsMolaMMO_ESPIRAIS_UTEIS.AsFloat := cdsMolaMMO_COMP_CORPO.AsFloat / cdsMolaMMO_PASSO.AsFloat;
  end;

begin

  {
    TIPO DA MOLA
    C = Compressão
    R = Tração
    O = Torção
    D = Condutor

    VARIAÇÃO
    P = Paralela
    C = Conica
    B = Biconica
    V = Convexa
  }

  if not qAux3.isEmpty then
  begin
    sTipo := qAux3.FieldByName( 'mmo_tipo' ).AsString;
    sVariacao := qAux3.FieldByName( 'mmo_variacao' ).AsString;

    if ( MatchText( sTipo, [ 'C' ] ) ) then
    begin
      formula3;
    end
    else
      if ( sTipo = 'R' ) then
      begin
        if ( sVariacao = 'P' ) then
          formula4
        else
          if ( sVariacao = 'C' ) then
            formula1
          else
            if ( sVariacao = 'B' ) then
              formula2;
      end
      else
        if ( sTipo = 'O' ) then
        begin
          formula1;
        end;
  end;

end;

procedure TFormProduto.SetValorVao;
begin
  cdsMolaMMO_VAO.AsFloat := cdsMolaMMO_PASSO.AsFloat - StrToFloatDef( cdsMolaMMO_DIAMETRO_ARAME.AsString, 0 );
end;

procedure TFormProduto.SetComprimentoSolido;
begin
  cdsMolaMMO_COM_SOLIDO.AsFloat := cdsMolaMMO_ESPIRAL_TOTAL.AsFloat * StrToFloatDef( cdsMolaMMO_DIAMETRO_ARAME.AsString, 0 );
end;

procedure TFormProduto.SetComprimentoTotalPorForaDoGancho;
begin
  if COMP_GANCHO.Enabled and ( qAux3.FieldByName( 'mmo_tipo' ).AsString <> 'O' ) // torção
  then
    cdsMolaMMO_COMP_GANCHO.AsFloat := ( 2 * StrToFloatDef( cdsMolaMMO_DIAMETRO_ARAME.AsString, 0 ) ) + cdsMolaMMO_COM_LIVRE.AsFloat
  else
    cdsMolaMMO_COMP_GANCHO.AsFloat := 0;

end;

procedure TFormProduto.SetValorComprimentoSolido;
var
  sTipo : String;
  sVariacao : String;
  procedure formula1; // lF * D
  begin
    cdsMolaMMO_COM_SOLIDO.AsFloat := cdsMolaMMO_ESPIRAL_TOTAL.AsFloat * StrToFloatDef( cdsMolaMMO_DIAMETRO_ARAME.AsString, 0 );
  end;

begin
  if not qAux3.isEmpty then
  begin
    sTipo := qAux3.FieldByName( 'mmo_tipo' ).AsString;
    sVariacao := qAux3.FieldByName( 'mmo_variacao' ).AsString;

    if ( MatchText( sTipo, [ 'C', 'T' ] ) ) then
    begin
      formula1;
    end;

  end;

end;

procedure TFormProduto.SetValorDiametroExternoMaior;
var
  sTipo : String;
  sVariacao : String;
  procedure formula1; // IF * D
  begin
    cdsMolaMMO_DIAMETRO_EXT_MAIOR.AsFloat := cdsMolaMMO_DIAMETRO_INT_MAIOR.AsFloat + ( 2 * StrToFloatDef( cdsMolaMMO_DIAMETRO_ARAME.AsString, 0 ) );
  end;

begin
  if not qAux3.isEmpty then
  begin
    sTipo := qAux3.FieldByName( 'mmo_tipo' ).AsString;
    sVariacao := qAux3.FieldByName( 'mmo_variacao' ).AsString;

    if ( MatchText( sTipo, [ 'C', 'R', 'O', 'D' ] ) and ( sVariacao = 'C' ) and ( cdsMolaMMO_PARTE_DI.AsString = 'S' ) ) then
    begin
      formula1;
    end;

  end;
end;

procedure TFormProduto.SetValorDiametroExternoMenor;
var
  sTipo : String;
  sVariacao : String;
  procedure formula1; // (Di-) + 2 * D
  begin
    cdsMolaMMO_DIAMETRO_EXT_MENOR.AsFloat := cdsMolaMMO_DIAMETRO_INT_MENOR.AsFloat + ( 2 * StrToFloatDef( cdsMolaMMO_DIAMETRO_ARAME.AsString, 0 ) );
  end;

begin
  if not qAux3.isEmpty then
  begin
    sTipo := qAux3.FieldByName( 'mmo_tipo' ).AsString;
    sVariacao := qAux3.FieldByName( 'mmo_variacao' ).AsString;

    if ( MatchText( sTipo, [ 'C', 'R', 'O', 'D' ] ) and ( sVariacao = 'C' ) and ( cdsMolaMMO_PARTE_DI.AsString = 'S' ) ) then
    begin
      formula1;
    end;

  end;
end;

procedure TFormProduto.SetValorDiametroInternoMaior;
var
  sTipo : String;
  sVariacao : String;
  procedure formula1; // (De+) - 2 * D
  begin
    cdsMolaMMO_DIAMETRO_INT_MAIOR.AsFloat := ( ( cdsMolaMMO_DIAMETRO_EXT_MAIOR.AsFloat ) - ( 2 * StrToFloatDef( cdsMolaMMO_DIAMETRO_ARAME.AsString, 0 ) ) );
  end;

begin
  if not qAux3.isEmpty then
  begin
    sTipo := qAux3.FieldByName( 'mmo_tipo' ).AsString;
    sVariacao := qAux3.FieldByName( 'mmo_variacao' ).AsString;
    if ( MatchText( sTipo, [ 'C', 'R', 'O', 'D' ] ) and ( sVariacao = 'C' ) and ( cdsMolaMMO_PARTE_DI.AsString <> 'S' ) ) then
    begin
      formula1;
    end;

  end;
end;

procedure TFormProduto.SetValorDiametroInternoMenor;
var
  sTipo : String;
  sVariacao : String;
  procedure formula1; // (De-) - 2 * D
  begin
    cdsMolaMMO_DIAMETRO_INT_MENOR.AsFloat := ( ( cdsMolaMMO_DIAMETRO_EXT_MENOR.AsFloat ) - ( 2 * StrToFloatDef( cdsMolaMMO_DIAMETRO_ARAME.AsString, 0 ) ) );
  end;

begin
  if not qAux3.isEmpty then
  begin
    sTipo := qAux3.FieldByName( 'mmo_tipo' ).AsString;
    sVariacao := qAux3.FieldByName( 'mmo_variacao' ).AsString;
    if ( MatchText( sTipo, [ 'C', 'R', 'O', 'D' ] ) and ( sVariacao = 'C' ) and ( cdsMolaMMO_PARTE_DI.AsString <> 'S' ) ) then
    begin
      formula1;
    end;

  end;
end;

procedure TFormProduto.SetValores( calcula : Boolean );
begin
  if not calcula then
    Exit;
  if ( qAux3.isEmpty ) then
    OpenAux3( 'select * from tipo_mola where pti_codigo = ' + QuotedStr( CdsProdutosPTI_CODIGO.AsString ) );

  try
    if not ( cdsMola.State in dsEditModes ) then
      cdsMola.Edit;
    SetValorDiametroExterno;
    SetValorDiametroExternoMaior;
    SetValorDiametroExternoMenor;
    SetValorDiametroInternoMaior;
    SetValorDiametroInternoMenor;
    SetValorDiametroInterno;

    SetValorDiametroMedio;
    SetValorDiametroMedioMeio;
    // SetValorPasso;
    // SetValorVao;
    SetValorComprimentoSolido;
    SetValorEspiraisUteis;
    SetValorEspiralTotal;
    SetValorDesenvolvimento;
    SetValorPeso;

    SetComprimentoTotalPorForaDoGancho;
    SetComprimentoSolido;


    // cdsMola.Post;

  except
    on E : Exception do
      ShowMessage( E.message );
  end;

end;

procedure TFormProduto.DESENVOLVIMENTOExit( Sender : tObject );
begin
  inherited;
  if cdsMola.State in dsEditModes then
  begin
    SetValores( calculaValor );
    calculaValor := True;
  end;
end;

procedure TFormProduto.DESENVOLVIMENTOKeyPress( Sender : tObject; var Key : Char );
begin
  inherited;
  calculaValor := True;
end;

procedure TFormProduto.DIAMETRO_ARAMEExit( Sender : tObject );
begin
  inherited;
  if ( cdsMolaMMO_DIAMETRO_ARAME.AsFloat > 10 ) then
  begin
    if not ( cdsMola.State in dsEditModes ) then
      cdsMola.Edit;
    cdsMolaMMO_PERDA.AsFloat := BuscaUmDadoSqlAsFloat( 'select MMO_PERDA_PADRAO  from tipo_mola where pti_codigo = ' + QuotedStr( CdsProdutosPTI_CODIGO.AsString ) );
  end;
  SetValores( True );
  SetToleranciaDM;
end;

procedure TFormProduto.DIAMETRO_EXTERNOExit( Sender : tObject );
begin
  inherited;
  SetValores( True );
end;

procedure TFormProduto.DIAMETRO_EXTERNO_MEIOExit( Sender : tObject );
begin
  inherited;
  SetValores( True );
end;

procedure TFormProduto.DIAMETRO_EXTERNO_MEIOKeyPress( Sender : tObject; var Key : Char );
begin
  inherited;
  calculaValor := False;
end;

procedure TFormProduto.DIAMETRO_EXT_MAIORExit( Sender : tObject );
begin
  inherited;
  SetValores( True );
  calculaValor := True;
end;

procedure TFormProduto.DIAMETRO_EXT_MAIORKeyPress( Sender : tObject; var Key : Char );
begin
  inherited;
  calculaValor := False;
end;

procedure TFormProduto.DIAMETRO_EXT_MENORExit( Sender : tObject );
begin
  inherited;
  SetValores( calculaValor );
  calculaValor := True;
end;

procedure TFormProduto.DIAMETRO_EXT_MENORKeyPress( Sender : tObject; var Key : Char );
begin
  inherited;
  calculaValor := False;
end;

procedure TFormProduto.DIAMETRO_INTERNOExit( Sender : tObject );
begin
  inherited;
  SetValores( calculaValor );
  calculaValor := True;
end;

procedure TFormProduto.DIAMETRO_INTERNOKeyPress( Sender : tObject; var Key : Char );
begin
  inherited;
  calculaValor := False;

end;

procedure TFormProduto.DIAMETRO_INT_MAIORKeyPress( Sender : tObject; var Key : Char );
begin
  inherited;
  calculaValor := False;
end;

procedure TFormProduto.DIAMETRO_INT_MENORKeyPress( Sender : tObject; var Key : Char );
begin
  inherited;
  calculaValor := False;
end;

procedure TFormProduto.DIAMETRO_MEDIOExit( Sender : tObject );
begin
  inherited;
  if cdsMola.State in dsEditModes then
  begin
    SetValores( calculaValor );
    calculaValor := True;
  end;
  SetToleranciaDM;
end;

procedure TFormProduto.DIAMETRO_MEDIOKeyPress( Sender : tObject; var Key : Char );
begin
  inherited;
  calculaValor := False;
end;

procedure TFormProduto.HabilitaMateria;
begin
  EdtProduto.Enabled := True;
  CurrConsumo.Enabled := True;
  CurrAnterior.Enabled := True;
  DateModif.Enabled := True;
  CbGrade.Enabled := True;

end;

procedure TFormProduto.HabilitarCamposMola;
var
  i, j : Integer;
begin

  OpenAux3( 'select * from tipo_mola where pti_codigo = ' + QuotedStr( CdsProdutosPTI_CODIGO.AsString ) );
  if not qAux3.isEmpty then
  begin
    TEMPO_PRODUCAO.Enabled := qAux3.FieldByName( 'mmo_tempo_producao' ).AsString = 'S';
    PESO_ESPECIFICO.Enabled := qAux3.FieldByName( 'mmo_peso_especifico' ).AsString = 'S';
    CISALHAMENTO.Enabled := qAux3.FieldByName( 'mmo_cisalhamento' ).AsString = 'S';
    RES_TRACAO.Enabled := qAux3.FieldByName( 'mmo_res_tracao' ).AsString = 'S';
    TRATAMENTO_TERMICO.Enabled := qAux3.FieldByName( 'mmo_tratamento_termico' ).AsString = 'S';
    TEMPO_TEMPERA.Enabled := qAux3.FieldByName( 'mmo_tempo_tempera' ).AsString = 'S';

    TEMPERATURA_TEMPERA.Enabled := qAux3.FieldByName( 'mmo_temperatura_tempera' ).AsString = 'S';
    edTempo_revenimento.Enabled := qAux3.FieldByName( 'mmo_tempo_revenimento' ).AsString = 'S';
    TEMPERATURA_REVENIMENTO.Enabled := qAux3.FieldByName( 'mmo_temperatura_revenimento' ).AsString = 'S';

    DUREZA_MINIMA.Enabled := qAux3.FieldByName( 'mmo_dureza_minima' ).AsString = 'S';
    DUREZA_MAXIMA.Enabled := qAux3.FieldByName( 'mmo_dureza_maxima' ).AsString = 'S';

    TRATAMENTO_SUPERFICIAL.Enabled := qAux3.FieldByName( 'mmo_tratamento_superficial' ).AsString = 'S';

    DIAMETRO_ARAME.Enabled := qAux3.FieldByName( 'mmo_diametro_arame' ).AsString = 'S';
    DIA_MAX.Enabled := qAux3.FieldByName( 'mmo_diametro_arame' ).AsString = 'S';
    DIA_MIN.Enabled := qAux3.FieldByName( 'mmo_diametro_arame' ).AsString = 'S';

    DIAMETRO_INTERNO.Enabled := qAux3.FieldByName( 'mmo_diametro_interno' ).AsString = 'S';
    DI_MAX.Enabled := qAux3.FieldByName( 'mmo_diametro_interno' ).AsString = 'S';
    DI_MIN.Enabled := qAux3.FieldByName( 'mmo_diametro_interno' ).AsString = 'S';

    DIAMETRO_MEDIO.Enabled := qAux3.FieldByName( 'mmo_diametro_medio' ).AsString = 'S';
    DM_MAX.Enabled := qAux3.FieldByName( 'mmo_diametro_medio' ).AsString = 'S';
    DM_MIN.Enabled := qAux3.FieldByName( 'mmo_diametro_medio' ).AsString = 'S';

    MMO_DIAMETRO_MEDIO_MEIO.Enabled := qAux3.FieldByName( 'mmo_diametro_medio_meio' ).AsString = 'S';
    MMO_DIAMETRO_MEDIO_MEIO_MAX.Enabled := qAux3.FieldByName( 'mmo_diametro_medio_meio' ).AsString = 'S';
    MMO_DIAMETRO_MEDIO_MEIO_MIN.Enabled := qAux3.FieldByName( 'mmo_diametro_medio_meio' ).AsString = 'S';

    DIAMETRO_EXTERNO.Enabled := qAux3.FieldByName( 'mmo_diametro_externo' ).AsString = 'S';
    DE_MIN.Enabled := qAux3.FieldByName( 'mmo_diametro_externo' ).AsString = 'S';
    DE_MAX.Enabled := qAux3.FieldByName( 'mmo_diametro_externo' ).AsString = 'S';

    DIAMETRO_EXTERNO_MEIO.Enabled := qAux3.FieldByName( 'mmo_diametro_externo_meio' ).AsString = 'S';
    DEM_MAX.Enabled := qAux3.FieldByName( 'mmo_diametro_externo_meio' ).AsString = 'S';
    DEM_MIN.Enabled := qAux3.FieldByName( 'mmo_diametro_externo_meio' ).AsString = 'S';

    VAO.Enabled := qAux3.FieldByName( 'mmo_vao' ).AsString = 'S';
    VAO_MAX.Enabled := qAux3.FieldByName( 'mmo_vao' ).AsString = 'S';
    VAO_MIN.Enabled := qAux3.FieldByName( 'mmo_vao' ).AsString = 'S';

    PASSO.Enabled := qAux3.FieldByName( 'mmo_passo' ).AsString = 'S';
    PASSO_MAX.Enabled := qAux3.FieldByName( 'mmo_passo' ).AsString = 'S';
    PASSO_MIN.Enabled := qAux3.FieldByName( 'mmo_passo' ).AsString = 'S';

    COM_LIVRE.Enabled := qAux3.FieldByName( 'mmo_com_livre' ).AsString = 'S';
    LIVRE_MAX.Enabled := qAux3.FieldByName( 'mmo_com_livre' ).AsString = 'S';
    LIVRE_MIN.Enabled := qAux3.FieldByName( 'mmo_com_livre' ).AsString = 'S';

    COM_SOLIDO.Enabled := qAux3.FieldByName( 'mmo_com_solido' ).AsString = 'S';
    SOLIDO_MAX.Enabled := qAux3.FieldByName( 'mmo_com_solido' ).AsString = 'S';
    SOLIDO_MIN.Enabled := qAux3.FieldByName( 'mmo_com_solido' ).AsString = 'S';

    ESPIRAS_UTEIS.Enabled := qAux3.FieldByName( 'mmo_espirais_uteis' ).AsString = 'S';
    ESPUTEIS_MAX.Enabled := qAux3.FieldByName( 'mmo_espirais_uteis' ).AsString = 'S';
    ESPUTEIS_MIN.Enabled := qAux3.FieldByName( 'mmo_espirais_uteis' ).AsString = 'S';

    ESPIRAL_TOTAL.Enabled := qAux3.FieldByName( 'mmo_espiral_total' ).AsString = 'S';
    ESPT_MAX.Enabled := qAux3.FieldByName( 'mmo_espiral_total' ).AsString = 'S';
    ESPT_MIN.Enabled := qAux3.FieldByName( 'mmo_espiral_total' ).AsString = 'S';

    DESENVOLVIMENTO.Enabled := qAux3.FieldByName( 'mmo_desenvolvimento' ).AsString = 'S';
    DES_MAX.Enabled := qAux3.FieldByName( 'mmo_desenvolvimento' ).AsString = 'S';
    DES_MIN.Enabled := qAux3.FieldByName( 'mmo_desenvolvimento' ).AsString = 'S';

    RETIFICADO.Enabled := qAux3.FieldByName( 'mmo_retificado' ).AsString = 'S';
    PARALIELISMO.Enabled := qAux3.FieldByName( 'mmo_paralielismo' ).AsString = 'S';
    PERPENDICULARIMO.Enabled := qAux3.FieldByName( 'mmo_perpendicularimo' ).AsString = 'S';
    SENTIDO.Enabled := qAux3.FieldByName( 'mmo_sentido' ).AsString = 'S';
    PESOKG.Enabled := qAux3.FieldByName( 'mmo_peso' ).AsString = 'S';
    mobservacoesMola.Enabled := qAux3.FieldByName( 'mmo_observacao' ).AsString = 'S';

    CONSTANTE_ESPE.Enabled := qAux3.FieldByName( 'mmo_constante_espe' ).AsString = 'S';
    CONST_MAX.Enabled := qAux3.FieldByName( 'mmo_constante_espe' ).AsString = 'S';
    CONST_MIN.Enabled := qAux3.FieldByName( 'mmo_constante_espe' ).AsString = 'S';

    CONSTANTE_CALCULADA.Enabled := qAux3.FieldByName( 'mmo_constante_calculada' ).AsString = 'S';
    CONST_CALC_MAX.Enabled := qAux3.FieldByName( 'mmo_constante_calculada' ).AsString = 'S';
    CONST_CALC_MIN.Enabled := qAux3.FieldByName( 'mmo_constante_calculada' ).AsString = 'S';

    ALTURAL1.Enabled := qAux3.FieldByName( 'mmo_altural1' ).AsString = 'S';
    ALT1_MAX.Enabled := qAux3.FieldByName( 'mmo_altural1' ).AsString = 'S';
    ALT1_MIN.Enabled := qAux3.FieldByName( 'mmo_altural1' ).AsString = 'S';

    ALTURAL2.Enabled := qAux3.FieldByName( 'mmo_altural2' ).AsString = 'S';
    ALT2_MIN.Enabled := qAux3.FieldByName( 'mmo_altural2' ).AsString = 'S';
    ALT2_MAX.Enabled := qAux3.FieldByName( 'mmo_altural2' ).AsString = 'S';

    ALTURAL3.Enabled := qAux3.FieldByName( 'mmo_altural3' ).AsString = 'S';
    ALT3_MAX.Enabled := qAux3.FieldByName( 'mmo_altural3' ).AsString = 'S';
    ALT3_MIN.Enabled := qAux3.FieldByName( 'mmo_altural3' ).AsString = 'S';

    ALTURAL4.Enabled := qAux3.FieldByName( 'mmo_altural4' ).AsString = 'S';
    ALT4_MAX.Enabled := qAux3.FieldByName( 'mmo_altural4' ).AsString = 'S';
    ALT4_MIN.Enabled := qAux3.FieldByName( 'mmo_altural4' ).AsString = 'S';

    CURSOS1.Enabled := qAux3.FieldByName( 'mmo_cursos1' ).AsString = 'S';
    CURS1_MIN.Enabled := qAux3.FieldByName( 'mmo_cursos1' ).AsString = 'S';
    CURS1_MAX.Enabled := qAux3.FieldByName( 'mmo_cursos1' ).AsString = 'S';

    CURSOS2.Enabled := qAux3.FieldByName( 'mmo_cursos2' ).AsString = 'S';
    CURS2_MIN.Enabled := qAux3.FieldByName( 'mmo_cursos2' ).AsString = 'S';
    CURS2_MAX.Enabled := qAux3.FieldByName( 'mmo_cursos2' ).AsString = 'S';

    CURSOS3.Enabled := qAux3.FieldByName( 'mmo_cursos3' ).AsString = 'S';
    CURS3_MAX.Enabled := qAux3.FieldByName( 'mmo_cursos3' ).AsString = 'S';
    CURS3_MIN.Enabled := qAux3.FieldByName( 'mmo_cursos3' ).AsString = 'S';

    CURSOS4.Enabled := qAux3.FieldByName( 'mmo_cursos4' ).AsString = 'S';
    CURS4_MAX.Enabled := qAux3.FieldByName( 'mmo_cursos4' ).AsString = 'S';
    CURS4_MIN.Enabled := qAux3.FieldByName( 'mmo_cursos4' ).AsString = 'S';

    CARGAP1.Enabled := qAux3.FieldByName( 'mmo_cargap1' ).AsString = 'S';
    CARGA1_MAX.Enabled := qAux3.FieldByName( 'mmo_cargap1' ).AsString = 'S';
    CARGA1_MIN.Enabled := qAux3.FieldByName( 'mmo_cargap1' ).AsString = 'S';

    CARGAP2.Enabled := qAux3.FieldByName( 'mmo_cargap2' ).AsString = 'S';
    CARGA2_MAX.Enabled := qAux3.FieldByName( 'mmo_cargap2' ).AsString = 'S';
    CARGA2_MIN.Enabled := qAux3.FieldByName( 'mmo_cargap2' ).AsString = 'S';

    CARGAP3.Enabled := qAux3.FieldByName( 'mmo_cargap3' ).AsString = 'S';
    CARGA3_MAX.Enabled := qAux3.FieldByName( 'mmo_cargap3' ).AsString = 'S';
    CARGA3_MIN.Enabled := qAux3.FieldByName( 'mmo_cargap3' ).AsString = 'S';

    CARGAP4.Enabled := qAux3.FieldByName( 'mmo_cargap4' ).AsString = 'S';
    CARGA4_MAX.Enabled := qAux3.FieldByName( 'mmo_cargap4' ).AsString = 'S';
    CARGA4_MIN.Enabled := qAux3.FieldByName( 'mmo_cargap4' ).AsString = 'S';

    TENSAO1.Enabled := qAux3.FieldByName( 'mmo_tensao1' ).AsString = 'S';
    TENSAO1_MAX.Enabled := qAux3.FieldByName( 'mmo_tensao1' ).AsString = 'S';
    TENSAO1_MIN.Enabled := qAux3.FieldByName( 'mmo_tensao1' ).AsString = 'S';

    TENSAO2.Enabled := qAux3.FieldByName( 'mmo_tensao2' ).AsString = 'S';
    TENSAO2_MIN.Enabled := qAux3.FieldByName( 'mmo_tensao2' ).AsString = 'S';
    TENSAO2_MAX.Enabled := qAux3.FieldByName( 'mmo_tensao2' ).AsString = 'S';

    TENSAO3.Enabled := qAux3.FieldByName( 'mmo_tensao3' ).AsString = 'S';
    TENSAO3_MIN.Enabled := qAux3.FieldByName( 'mmo_tensao3' ).AsString = 'S';
    TENSAO3_MAX.Enabled := qAux3.FieldByName( 'mmo_tensao3' ).AsString = 'S';

    TENSAO4.Enabled := qAux3.FieldByName( 'mmo_tensao4' ).AsString = 'S';
    TENSAO4_MAX.Enabled := qAux3.FieldByName( 'mmo_tensao4' ).AsString = 'S';
    TENSAO4_MIN.Enabled := qAux3.FieldByName( 'mmo_tensao4' ).AsString = 'S';

    CARGA.Enabled := qAux3.FieldByName( 'mmo_carga' ).AsString = 'S';
    CARGA_MAX.Enabled := qAux3.FieldByName( 'mmo_carga' ).AsString = 'S';
    CARGA_MIN.Enabled := qAux3.FieldByName( 'mmo_carga' ).AsString = 'S';

    TENSAO.Enabled := qAux3.FieldByName( 'mmo_tensao' ).AsString = 'S';
    TEN_MAX.Enabled := qAux3.FieldByName( 'mmo_tensao' ).AsString = 'S';
    TEN_MIN.Enabled := qAux3.FieldByName( 'mmo_tensao' ).AsString = 'S';

    MAQUINA.Enabled := qAux3.FieldByName( 'mmo_maquina' ).AsString = 'S';
    MANDRIL.Enabled := qAux3.FieldByName( 'mmo_mandril' ).AsString = 'S';
    CACHIMBO.Enabled := qAux3.FieldByName( 'mmo_cachimbo' ).AsString = 'S';
    COPIADOR.Enabled := qAux3.FieldByName( 'mmo_copiador' ).AsString = 'S';
    GANCHO.Enabled := qAux3.FieldByName( 'mmo_gancho' ).AsString = 'S';
    DISCO.Enabled := qAux3.FieldByName( 'mmo_disco' ).AsString = 'S';
    OUTROS.Enabled := qAux3.FieldByName( 'mmo_outros' ).AsString = 'S';
    TIPOEMBALAGEM.Enabled := qAux3.FieldByName( 'mmo_tipoembalagem' ).AsString = 'S';
    LOCALIZACAO.Enabled := qAux3.FieldByName( 'mmo_localizacao' ).AsString = 'S';

    SETOR.Enabled := qAux3.FieldByName( 'mmo_setor' ).AsString = 'S';
    OBSGERAIS.Enabled := qAux3.FieldByName( 'mmo_obsgerais' ).AsString = 'S';
    CBACABAMENTO.Enabled := qAux3.FieldByName( 'ASU_CODIGO' ).AsString = 'S';
    SgDbSearchCombo8.Enabled := qAux3.FieldByName( 'GAN_CODIGO' ).AsString = 'S';
    ALT_GANCHO.Enabled := qAux3.FieldByName( 'MMO_ALT_GANCHO' ).AsString = 'S';
    ALT_GANCHO_MAX.Enabled := qAux3.FieldByName( 'MMO_ALT_GANCHO' ).AsString = 'S';
    ALT_GANCHO_MIN.Enabled := qAux3.FieldByName( 'MMO_ALT_GANCHO' ).AsString = 'S';
    ABERT_GANCHO.Enabled := qAux3.FieldByName( 'MMO_ABERT_GANCHO' ).AsString = 'S';
    ABERT_GANCHO_MAX.Enabled := qAux3.FieldByName( 'MMO_ABERT_GANCHO' ).AsString = 'S';
    ABERT_GANCHO_MIN.Enabled := qAux3.FieldByName( 'MMO_ABERT_GANCHO' ).AsString = 'S';
    COMP_GANCHO.Enabled := qAux3.FieldByName( 'MMO_COMP_GANCHO' ).AsString = 'S';
    COMP_GANCHO_MAX.Enabled := qAux3.FieldByName( 'MMO_COMP_GANCHO' ).AsString = 'S';
    COMP_GANCHO_MIN.Enabled := qAux3.FieldByName( 'MMO_COMP_GANCHO' ).AsString = 'S';
    COMP_CORPO.Enabled := qAux3.FieldByName( 'MMO_COMP_CORPO' ).AsString = 'S';
    COMP_CORPO_MAX.Enabled := qAux3.FieldByName( 'MMO_COMP_CORPO' ).AsString = 'S';
    COMP_CORPO_MIN.Enabled := qAux3.FieldByName( 'MMO_COMP_CORPO' ).AsString = 'S';
    DIAMETRO_EXT_MAIOR.Enabled := qAux3.FieldByName( 'MMO_DIAMETRO_EXT_MAIOR' ).AsString = 'S';
    DE_MAIOR_MAX.Enabled := qAux3.FieldByName( 'MMO_DIAMETRO_EXT_MAIOR' ).AsString = 'S';
    DE_MAIOR_MIN.Enabled := qAux3.FieldByName( 'MMO_DIAMETRO_EXT_MAIOR' ).AsString = 'S';
    DIAMETRO_EXT_MENOR.Enabled := qAux3.FieldByName( 'MMO_DIAMETRO_EXT_MENOR' ).AsString = 'S';
    DE_MENOR_MAX.Enabled := qAux3.FieldByName( 'MMO_DIAMETRO_EXT_MENOR' ).AsString = 'S';
    MMO_TOLERANCIA_DE_MENOR_MIN.Enabled := qAux3.FieldByName( 'MMO_DIAMETRO_EXT_MENOR' ).AsString = 'S';
    DIAMETRO_INT_MAIOR.Enabled := qAux3.FieldByName( 'MMO_DIAMETRO_INT_MAIOR' ).AsString = 'S';
    DI_MAIOR_MAX.Enabled := qAux3.FieldByName( 'MMO_DIAMETRO_INT_MAIOR' ).AsString = 'S';
    DI_MAIOR_MIN.Enabled := qAux3.FieldByName( 'MMO_DIAMETRO_INT_MAIOR' ).AsString = 'S';
    DIAMETRO_INT_MENOR.Enabled := qAux3.FieldByName( 'MMO_DIAMETRO_INT_MAIOR' ).AsString = 'S';
    DI_MENOR_MAX.Enabled := qAux3.FieldByName( 'MMO_DIAMETRO_INT_MENOR' ).AsString = 'S';
    DI_MENOR_MIN.Enabled := qAux3.FieldByName( 'MMO_DIAMETRO_INT_MENOR' ).AsString = 'S';
    PERDA.Enabled := qAux3.FieldByName( 'MMO_PERDA' ).AsString = 'S';
    TIPO_HASTE.Enabled := qAux3.FieldByName( 'MMO_TIPO_HASTE' ).AsString = 'S';
    HASTEHA.Enabled := qAux3.FieldByName( 'MMO_COMPRIMENTO_HASTE_HA' ).AsString = 'S';
    HASTEHB.Enabled := qAux3.FieldByName( 'MMO_COMPRIMENTO_HASTE_HB' ).AsString = 'S';
    POSICAO_HASTE.Enabled := qAux3.FieldByName( 'MMO_POSICAO_HASTE' ).AsString = 'S';

    {
      TIPO DA MOLA
      C = Compressão
      R = Tração
      O = Torção
      D = Condutor

      VARIAÇÃO
      P = Paralela
      C = Conica
      B = Biconica
      V = Convexa
    }
    dbMmoParteDI.Enabled := MatchText( qAux3.FieldByName( 'mmo_variacao' ).AsString, [ 'P', 'C' ] );

    if MatchText( qAux3.FieldByName( 'mmo_variacao' ).AsString, [ 'B' ] ) then
      DIAMETRO_MEDIO.Hint := '(De + DMe / 2) - D'
    else
      DIAMETRO_MEDIO.Hint := 'Di + D = Dm ou De - D = Dm';

    if MatchText( qAux3.FieldByName( 'mmo_tipo' ).AsString, [ 'C' ] ) then
      ESPIRAS_UTEIS.Hint := 'L0 / P'
    else
      if MatchText( qAux3.FieldByName( 'mmo_tipo' ).AsString, [ 'R', 'O' ] ) then
        ESPIRAS_UTEIS.Hint := 'Lk / P'
      else
        ESPIRAS_UTEIS.Hint := '';

    for i := 0 to TRATAMENTO_CODIGO.PageCount - 1 do
      for j := 0 to TRATAMENTO_CODIGO.Pages[ i ].ControlCount - 1 do
      begin
        if ( ( TRATAMENTO_CODIGO.Pages[ i ].Controls[ j ] is TDBComboBox ) and ( TDBComboBox( TRATAMENTO_CODIGO.Pages[ i ].Controls[ j ] ).Enabled ) ) then
          TDBComboBox( TRATAMENTO_CODIGO.Pages[ i ].Controls[ j ] ).Color := clWhite
        else
          if ( ( TRATAMENTO_CODIGO.Pages[ i ].Controls[ j ] is TDBEdit ) and ( TDBEdit( TRATAMENTO_CODIGO.Pages[ i ].Controls[ j ] ).Enabled ) ) then
            TDBEdit( TRATAMENTO_CODIGO.Pages[ i ].Controls[ j ] ).Color := clWhite
          else
            if ( ( TRATAMENTO_CODIGO.Pages[ i ].Controls[ j ] is TDBEdit ) and not ( TDBEdit( TRATAMENTO_CODIGO.Pages[ i ].Controls[ j ] ).Enabled ) ) then
            begin
              TDBEdit( TRATAMENTO_CODIGO.Pages[ i ].Controls[ j ] ).Text := '0';
              TDBEdit( TRATAMENTO_CODIGO.Pages[ i ].Controls[ j ] ).OnChange := CalculaCampo;
            end
            else
              if ( ( TRATAMENTO_CODIGO.Pages[ i ].Controls[ j ] is TDBMemo ) and ( TDBMemo( TRATAMENTO_CODIGO.Pages[ i ].Controls[ j ] ).Enabled ) ) then
                TDBMemo( TRATAMENTO_CODIGO.Pages[ i ].Controls[ j ] ).Color := clWhite
              else
                if ( ( TRATAMENTO_CODIGO.Pages[ i ].Controls[ j ] is TSgDbSearchCombo ) and ( TSgDbSearchCombo( TRATAMENTO_CODIGO.Pages[ i ].Controls[ j ] ).Enabled ) ) then
                  TSgDbSearchCombo( TRATAMENTO_CODIGO.Pages[ i ].Controls[ j ] ).Color := clWhite
                else
                  TDBComboBox( TRATAMENTO_CODIGO.Pages[ i ].Controls[ j ] ).Color := clInactiveBorder;

      end;

  end;
end;

procedure TFormProduto.HASTEHAExit( Sender : tObject );
begin
  inherited;
  SetValores( True );
end;

procedure TFormProduto.HASTEHBExit( Sender : tObject );
begin
  inherited;
  SetValores( True );
end;

procedure TFormProduto.IncluirArquivoFichaTecnicaChange(Sender: TObject);
begin
  inherited;
  if not (cdsMola.State in dsEditModes) then
    cdsMola.Edit;
  cdsMolaMMO_ARQUIVO_FICHA_TECNICA.AsString := IncluirArquivoFichaTecnica.FileName;
end;

procedure TFormProduto.verificaEdicao;
begin
  if CdsProdutos.State in [ dsEdit, dsInsert ] then
  begin
    MostraFichaTecnica( False );
    if Uteis.confirmacao( 'Deseja salvar as alterações do Cadastro de Produtos ?' ) = idyes then
      Bit_Gravar.Click
    else
      Bit_Cancelar.Click;
  end;
end;

procedure TFormProduto.verificaEdicaoFTC;
begin
  if DmProducao.CdsFichaTec.State in [ dsEdit, dsInsert ] then
  begin
    Tbs_Produtos.TabVisible := False;
    if Uteis.confirmacao( 'Deseja salvar alterações da Ficha Técnica ?' ) = idyes then
      BIT_FTC_GRAVAR.Click // chama o evento onclick do botão gravar
    else
      BIT_FTC_CANCELAR.Click; // chama o evento onclick do botão cancelar
  end;
end;

procedure TFormProduto.Bit_FTC_CancelarClick( Sender : tObject );
var
  j : Integer;
begin
  if wIncluir then
    ExecSql( 'Delete from FTC_IT01 where PRD_REFER = ' + qStr( EdtPrd_Refer.Text ) + ConcatSE( ' and ', DBInicio.ExclusivoSql( 'PRODUTOS' ) ) );

  wIncluir := False;
  DmProducao.CdsFichaTec.Cancel;
  EdtDescricao.Text := '';
  LimparDadosFTC;
  HabilitaBotoes;
  Tbs_Produtos.TabVisible := True;
  for j := 1 to 9 do
    PctrlProdutos.Pages[ j ].TabVisible := True;
  PctrlProdutos.ActivePageIndex := 1; // cad.produto
  // EdtPrd_Refer.SetFocus;

end;

procedure TFormProduto.DesabilitaBotoesFTC;
var
  j : Integer;
begin
  for j := 1 to 9 do
    PctrlProdutos.Pages[ j ].TabVisible := False;

  BIT_FTC_RELATORIO.Enabled := False;
  Bit_FTC_Novo.Enabled := False;
  Bit_FTC_Copiar.Enabled := False;
  BIT_FTC_EXCLUIR.Enabled := False;
  // Bit_FTC_Sair.Visible      := False;
  BIT_FTC_CANCELAR.Enabled := True;
  BIT_FTC_GRAVAR.Enabled := True;
end;

procedure TFormProduto.HabilitaBotoesFTC;
begin
  BIT_FTC_RELATORIO.Enabled := True;
  Bit_FTC_Novo.Enabled := True;
  Bit_FTC_Copiar.Enabled := True;
  BIT_FTC_EXCLUIR.Enabled := True;
  // Bit_FTC_Sair.Visible      := true;
  BIT_FTC_CANCELAR.Enabled := False;
  BIT_FTC_GRAVAR.Enabled := False;
end;

procedure TFormProduto.AlterarItensFTC;
begin

  EdtRefer.Text := CdsItensFichaPRD_REFER_ITENS.AsString;
  EdtProduto.Text := CdsItensFichaPRD_DESCRI.AsString;
  CurrConsumo.AsFloat := CdsItensFichaFTI_UC.AsFloat;
  curPercentualConsumo.Value := CdsItensFichaFTI_PERCENTUAL.AsFloat;
  DateModif.date := CdsItensFichaFTI_MODIFICADA.AsDateTime;
  CurrAnterior.Value := CdsItensFichaFTI_UCMODIFIC.AsCurrency;
  edOperacao.idRetorno := IntToStr( CdsItensFichaOPE_CODIGO.AsInteger );
  CurPerda.Value := CdsItensFichaFTI_PERDA.AsFloat;
  CbAlmoxarifado.idRetorno := CdsItensFichaAMX_CODIGO.AsString;
  // CurCustoFicha.Value := CdsItensFichaFTI_PRECOCUSTO.AsCurrency;

  CbGrade.Condicao := 'prd_codigo = ' + qStr( RetornaProdutoReferencia( CdsItensFichaPRD_REFER_ITENS.Text ) );

  CbGrade.TextoLocalizar := CdsItensFichaPRG_REGISTRO.AsString;
  CbGrade.Localizar := True;
  CbAlmoxarifado.idRetorno := CdsItensFichaAMX_CODIGO.AsString;

  EdtRefer.Color := $00D7D7D7;
  EdtRefer.TabStop := False;
  EdtRefer.ReadOnly := True;
  SpProduto.Enabled := False;
  wIncluirItem := False;
  CurrConsumo.Setfocus;

end;

procedure TFormProduto.ExcluirItensFTC;
begin
  if Uteis.confirmacao( ( 'Confirma a exclusão do Item ?' + #13 + 'Material : ' + CdsItensFichaPRD_REFER_ITENS.AsString + #13 + 'Descrição : ' + CdsItensFichaPRD_DESCRI.AsString ) ) = Mryes then
    ExecSql( 'Delete from FTC_IT01 where FTI_REGISTRO = ' + qStr( IntToStr( CdsItensFichaFTI_REGISTRO.AsInteger ) ) + ConcatSE( ' and ', DBInicio.ExclusivoSql( 'PRODUTOS' ) ) );
  CalculaCusto;
end;

procedure TFormProduto.DBGridFichaTecnicaItemDblClick( Sender : tObject );
begin
  if NOT ( CdsItensFicha.isEmpty ) then
    AlterarItensFTC;
end;

procedure TFormProduto.EdtReferChange( Sender : tObject );
begin

  if EdtRefer.Text <> '' then
  begin
    CbGrade.Text := '';
    CbGrade.Condicao := 'prd_codigo = ' + qStr( RetornaProdutoReferencia( EdtRefer.Text ) );
    Bit_GravarMateria.Enabled := True;
    Bit_CancelarMateria.Enabled := True;
    Bit_ExcluirMateria.Enabled := True;
    GrpVariacoes.Enabled := False;
    GrpMateria.Enabled := False;
    GrpProcesso.Enabled := False;
    CbGrade.Condicao := 'prd_codigo = ' + qStr( RetornaProdutoReferencia( EdtRefer.Text ) );
    HabilitaMateria;
  end
  else
  begin
    CbGrade.Text := '';

    Bit_GravarMateria.Enabled := False;
    Bit_CancelarMateria.Enabled := False;
    Bit_ExcluirMateria.Enabled := False;
    GrpVariacoes.Enabled := True;
    GrpMateria.Enabled := True;
    GrpProcesso.Enabled := True;

    CbGrade.Condicao := 'prd_codigo = ' + qStr( '' );

    DesabilitaMateria;
  end;

end;

procedure TFormProduto.EdtReferExit( Sender : tObject );
begin
  if ( ActiveControl.Name = 'Bit_Excluir' ) or ( ActiveControl.Name = 'Bit_Relatorio' ) or ( ActiveControl.Name = 'Bit_Lista' ) or ( ActiveControl.Name = 'Bit_novo' ) or ( ActiveControl.Name = 'Bit_Cancelar' ) or ( ActiveControl.Name = 'Bit_Sair' ) then
    Exit;
  if ( EdtRefer.Text <> '' ) then
  begin
    if ( EdtRefer.Text <> EdtPrd_Refer.Text ) then
    begin
      if ( DmProducao.CdsFichaTec.isEmpty ) then
      begin
        Uteis.aviso( 'Antes de inserir um item precisa criar a Ficha, clique em Criar Ficha e depois em Gravar' );
        LimparDadosFTC;
        EdtRefer.Setfocus;
      end
      else
        BuscaMaterial;
    end
    else
    begin
      Uteis.aviso( Pchar( 'Impossível inserir este material.' + #13 + 'Este material é a própria ficha técnica !' ) );
      LimparDadosFTC;
      EdtRefer.Setfocus;
    end;
  end;

end;

procedure TFormProduto.ESPIRAL_TOTALExit( Sender : tObject );
begin
  inherited;
  if calculaValor = False then
    Exit;
  if cdsMola.State in dsEditModes then
  begin

    SetValorDiametroMedio;
    SetValorDiametroInterno;

    SetValorPasso;
    SetValorPeso;
    SetValorDesenvolvimento;
    SetValorVao;
    SetValorComprimentoSolido;
    SetValorDiametroExterno;
    SetValorDiametroExternoMaior;
    SetValorDiametroExternoMenor;
    SetValorDiametroInternoMaior;
    SetValorDiametroInternoMenor;
    SetValorEspiraisUteis;
    // SetValorEspiralTotal;
  end;
end;

procedure TFormProduto.ESPIRAL_TOTALKeyPress( Sender : tObject; var Key : Char );
begin
  inherited;
  calculaValor := False;
end;

procedure TFormProduto.ESPIRAS_UTEISChange( Sender : tObject );
begin
  // inherited;
  // calculaValor := False;
end;

procedure TFormProduto.ESPIRAS_UTEISExit( Sender : tObject );
begin
  // inherited;
  if cdsMola.State in dsEditModes then
  begin
    SetValores( calculaValor );
    calculaValor := True;
  end;
end;

procedure TFormProduto.ESPIRAS_UTEISKeyPress( Sender : tObject; var Key : Char );
begin
  // inherited;
  calculaValor := True;
end;

procedure TFormProduto.BuscaMaterial;
begin
  if ( ActiveControl.Name = 'Bit_CancelarMateria' ) or ( ActiveControl.Name = 'Bit_GravarMateria' ) then
    Exit;

  SqlCdsMaterial.close;
  SqlCdsMaterial.CommandText := SQLDEF( 'PRODUTOS', 'select P2.PRD_REFER,P2.PRD_DESCRI from PRD0000 P2 ', 'where P2.PRD_REFER = ''' + EdtRefer.Text + '''', 'P2.PRD_REFER', 'P2.' );
  SqlCdsMaterial.Open;
  if NOT SqlCdsMaterial.isEmpty then
  begin
    wIncluirItem := True;
    EdtProduto.Text := SqlCdsMaterialPRD_DESCRI.AsString;
    CbGrade.Condicao := 'prd_codigo = ' + qStr( RetornaProdutoReferencia( EdtRefer.Text ) );
    HabilitaMateria;
    CurrConsumo.Setfocus;
  end
  else
  begin
    Uteis.aviso( 'Materia-Prima não cadastrada !' );
    EdtRefer.Text := '';
    EdtProduto.Text := '';
    EdtRefer.Setfocus;
  end;

end;

procedure TFormProduto.CdsIndustrializacaoCalcFields( DataSet : TDataSet );
begin
  inherited;
  if ( CdsIndustrializacaoENF_IT_DESCTO.AsCurrency > 0 ) and ( CdsIndustrializacaoENF_QTDE.AsFloat > 0 ) then
    CdsIndustrializacaoDescontoAplicado.AsFloat := ( CdsIndustrializacaoENF_IT_DESCTO.AsFloat / CdsIndustrializacaoENF_QTDE.AsCurrency )
  else
    CdsIndustrializacaoDescontoAplicado.AsCurrency := 0;

end;

procedure TFormProduto.CdsItensFichaAfterInsert( DataSet : TDataSet );
begin
  inherited;
  CdsItensFichaFTI_REGISTRO.AsInteger := DBInicio.GetNextSequence( 'GEN_FTC_IT01_REGISTRO' );
end;

procedure TFormProduto.CdsItensFichaAfterScroll( DataSet : TDataSet );
begin
  MostrarGrade;
end;

procedure TFormProduto.MostrarGrade;
begin
  wSql1 := 'Select FG2.*,P1.PRD_DESCRI,P1.PRD_UND,P1.PRD_GRADE,P2.PTI_SIGLA,P1.PRD_PCUSTO from ftc_it01 FG2 ';
  wSql2 := 'left join prd0000 P1 on FG2.prd_refer_itens = p1.prd_refer left join PRD_TIPO P2 ON P1.pti_codigo = P2.PTI_CODIGO ';
  SqlItensGrade.close;
  SqlItensGrade.CommandText := SQLDEF( 'PRODUTOS', wSql1 + wSql2, 'WHERE FG2.PRD_REFER = ''' + CdsItensFichaPRD_REFER_ITENS.AsString + '''', 'FG2.PRD_REFER,FG2.FTI_REGISTRO', 'FG2.' );
  SqlItensGrade.Open;
  if SqlItensGrade.RecordCount > 0 then
  begin
    GrpGrade.BringToFront;
    GrpGrade.Align := alBottom;
    Self.Height := 710;
    GrpGrade.Visible := True;
    if DBInicio.Empresa.WvARIACOES then
    begin
      DBGridGrade.Columns[ 0 ].Width := 71; // Codigo
      DBGridGrade.Columns[ 1 ].Width := 370; // Descricao
      DBGridGrade.Columns[ 2 ].Width := 21; // Sigla
      DBGridGrade.Columns[ 3 ].Width := 90; // UC
      DBGridGrade.Columns[ 4 ].Width := 31; // UND
    end
    else
    begin
      { Dimensionando o grid qdo nao tem variaçao }
      DBGridGrade.Columns[ 0 ].Width := 71; // codigo
      DBGridGrade.Columns[ 1 ].Width := 525; // descricao
      DBGridGrade.Columns[ 2 ].Width := 21; // Sigla
      DBGridGrade.Columns[ 3 ].Width := 90; // uc
      DBGridGrade.Columns[ 4 ].Width := 31; // UND
    end;
  end
  else
  begin
    GrpGrade.Visible := False;
    Self.Height := 620;
  end;
end;

procedure TFormProduto.DbeFTC_TUPExit( Sender : tObject );
begin
  if ( DmProducao.CdsFichaTec.State in [ dsEdit, dsInsert ] ) then
    EdtRefer.Setfocus;
end;

procedure TFormProduto.AlterarItensdaFichaTecnica1Click( Sender : tObject );
begin
  if NOT ( CdsItensFicha.isEmpty ) then
    AlterarItensFTC;
end;

procedure TFormProduto.ExcluirItensdaFichaTcnica1Click( Sender : tObject );
begin
  if NOT ( CdsItensFicha.isEmpty ) then
  begin
    ExcluirItensFTC;
    LimparDadosFTC;

    // CdsItensFicha.Refresh;
    cdsItensFicha.Close;
    cdsItensFicha.Open;

    SpProduto.Enabled := True;
    EdtRefer.TabStop := True;
    EdtRefer.ReadOnly := False;
    EdtRefer.Color := clWindow;
    if ( PctrlProdutos.ActivePageIndex = 0 ) then
      EdtRefer.Setfocus
    else
      DBGridFichaTecnicaItem.Setfocus;
  end;

end;

procedure TFormProduto.Bit_AlterarRefClick( Sender : tObject );
begin
  try
    FormAlterarRef := TFormAlterarRef.Create( Application );
    try
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
    Uteis.erro( 'Ocorreu um erro na criação do formulário!' );
  end;
end;

procedure TFormProduto.Bit_EquivalenciaClick( Sender : tObject );
begin
  try
    FrmPrdEquivalente := TFrmPrdEquivalente.Create( Application );
    try
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
    Uteis.erro( 'Ocorreu um erro na criação do formulário!' );
  end;
end;

procedure TFormProduto.DBGridFichaTecnicaItemKeyDown( Sender : tObject; var Key : Word; Shift : TShiftState );
begin
  if Key = VK_DELETE then
  BEGIN
    ExcluirItensdaFichaTcnica1.Click;
    Key := 0;
  END
  else
    if Key = VK_RETURN then
    begin
      if NOT ( CdsItensFicha.isEmpty ) then
        AlterarItensFTC;
      Key := 0;
    end;
  INHERITED;
end;

procedure TFormProduto.DbDtFTC_CRIACAOKeyPress( Sender : tObject; var Key : Char );
begin
  if Key = #13 then
  begin
    if DbDtFTC_CRIACAO.Text <> '  /  /    ' then
      if not TestaDataStr( DbDtFTC_CRIACAO.Text ) then
        DbDtFTC_CRIACAO.Setfocus;

    Key := #0;
  end;
end;

procedure TFormProduto.DbeBaseFormulaChange( Sender : tObject );
begin
  inherited;
  if not DmProducao.CdsFichaTec.Active or DmProducao.CdsFichaTec.isEmpty or not CdsItensFicha.Active then
    Exit;
  CalculaCusto;
end;

procedure TFormProduto.SqlCdsEstoqueDetalheCalcFields( DataSet : TDataSet );
begin
  { }

  { }
  if SqlCdsEstoqueDetalheOSV_QTDE1.AsCurrency <> 0 then
  begin
    SqlCdsEstoqueDetalheCC_VARIACAO.AsString := CdsProdutosPRD_DCVAR1.AsString;
    SqlCdsEstoqueDetalheCC_QTDE.AsCurrency := SqlCdsEstoqueDetalheOSV_QTDE1.AsCurrency;
  end
  else
    if SqlCdsEstoqueDetalheOSV_QTDE2.AsCurrency <> 0 then
    begin
      SqlCdsEstoqueDetalheCC_VARIACAO.AsString := CdsProdutosPRD_DCVAR2.AsString;
      SqlCdsEstoqueDetalheCC_QTDE.AsCurrency := SqlCdsEstoqueDetalheOSV_QTDE2.AsCurrency;
    end
    else
      if SqlCdsEstoqueDetalheOSV_QTDE3.AsCurrency <> 0 then
      begin
        SqlCdsEstoqueDetalheCC_VARIACAO.AsString := CdsProdutosPRD_DCVAR3.AsString;
        SqlCdsEstoqueDetalheCC_QTDE.AsCurrency := SqlCdsEstoqueDetalheOSV_QTDE3.AsCurrency;
      end
      else
        if SqlCdsEstoqueDetalheOSV_QTDE4.AsCurrency <> 0 then
        begin
          SqlCdsEstoqueDetalheCC_VARIACAO.AsString := CdsProdutosPRD_DCVAR4.AsString;
          SqlCdsEstoqueDetalheCC_QTDE.AsCurrency := SqlCdsEstoqueDetalheOSV_QTDE4.AsCurrency;
        end
        else
          if SqlCdsEstoqueDetalheOSV_QTDE5.AsCurrency <> 0 then
          begin
            SqlCdsEstoqueDetalheCC_VARIACAO.AsString := CdsProdutosPRD_DCVAR5.AsString;
            SqlCdsEstoqueDetalheCC_QTDE.AsCurrency := SqlCdsEstoqueDetalheOSV_QTDE5.AsCurrency;
          end
          else
            if SqlCdsEstoqueDetalheOSV_QTDE6.AsCurrency <> 0 then
            begin
              SqlCdsEstoqueDetalheCC_VARIACAO.AsString := CdsProdutosPRD_DCVAR6.AsString;
              SqlCdsEstoqueDetalheCC_QTDE.AsCurrency := SqlCdsEstoqueDetalheOSV_QTDE6.AsCurrency;
            end
            else
              if SqlCdsEstoqueDetalheOSV_QTDE7.AsCurrency <> 0 then
              begin
                SqlCdsEstoqueDetalheCC_VARIACAO.AsString := CdsProdutosPRD_DCVAR7.AsString;
                SqlCdsEstoqueDetalheCC_QTDE.AsCurrency := SqlCdsEstoqueDetalheOSV_QTDE7.AsCurrency;
              end
              else
                if SqlCdsEstoqueDetalheOSV_QTDE8.AsCurrency <> 0 then
                begin
                  SqlCdsEstoqueDetalheCC_VARIACAO.AsString := CdsProdutosPRD_DCVAR8.AsString;
                  SqlCdsEstoqueDetalheCC_QTDE.AsCurrency := SqlCdsEstoqueDetalheOSV_QTDE8.AsCurrency;
                end
                Else
                  if SqlCdsEstoqueDetalheOSV_QTDE.AsCurrency <> 0 then
                  begin
                    SqlCdsEstoqueDetalheCC_VARIACAO.AsString := CdsProdutosPRD_DCVAR1.AsString;
                    SqlCdsEstoqueDetalheCC_QTDE.AsCurrency := SqlCdsEstoqueDetalheOSV_QTDE.AsCurrency;
                  end;

end;

procedure TFormProduto.SqlCdsEstoqueDetalheOSV_STATUSGetText( Sender : TField; var Text : string; DisplayText : Boolean );
begin
  inherited;
  if Sender.AsString = 'A' then
    Text := 'ABERTO'
  else
    if Sender.AsString = 'X' then
      Text := 'ALMOXARIFADO'
    else
      if Sender.AsString = 'P' then
        Text := 'PRODUÇÃO'
      else
        if Sender.AsString = 'E' then
          Text := 'ESTONADO'
        else
          if Sender.AsString = 'I' then
            Text := 'CONCLUIDO PARCIAL'
          else
            if Sender.AsString = 'C' then
              Text := 'CONCLUIDO';

end;

procedure TFormProduto.MostraEstoqueDetalhe;
var
  wSql1 : String;
begin
  { }
  { wSQL1 := 'Select V1.OSV_CODIGO,V1.PRD_REFER,V1.OSV_QTDE,V1.OSV_QTDE1,V1.OSV_QTDE2,V1.OSV_QTDE3,V1.OSV_QTDE4,V1.OSV_QTDE5,V1.OSV_QTDE6,V1.OSV_QTDE7,V1.OSV_QTDE8,V1.OSV_STATUS,P1.PRD_DESCRI from OSV0001 V1';
    wSQL2 := ' left join PRD0000 P1 on (P1.PRD_REFER = V1.PRD_REFER) Where V1.OSV_STATUS not in(''C'',''E'') and V1.PRD_REFER = '''+EdtPrd_Refer.Text+'''';
  }
  wSql1 := 'Select V1.PED_CODIGO,V1.OSV_CODIGO,V1.PRD_REFER,V1.OSV_QTDE,V1.OSV_QTDE1,V1.OSV_QTDE2,V1.OSV_QTDE3,V1.OSV_QTDE4,V1.OSV_QTDE5,V1.OSV_QTDE6,V1.OSV_QTDE7,V1.OSV_QTDE8, V1.OSV_EMISSAO,V1.OSV_STATUS,P1.PRD_DESCRI,C1.CLI_RAZAO from OSV0001 V1';
  wSql2 := ' left join PRD0000 P1 on (P1.PRD_REFER = V1.PRD_REFER) Left join cli0000 C1 on (V1.CLI_CODIGO = C1.CLI_CODIGO) Where V1.OSV_STATUS not in(''E'') and V1.PRD_REFER = ''' + EdtPrd_Refer.Text + '''';

  SqlCdsEstoqueDetalhe.close;
  SqlCdsEstoqueDetalhe.CommandText := wSql1 + wSql2 + '  ORDER BY V1.OSV_EMISSAO DESC ';
  SqlCdsEstoqueDetalhe.Open;

end;

function TFormProduto.CamposObrigatorios : Boolean;
begin

  result := True;
  if ( Trim( EdtPrd_Refer.Text ) = '' ) then
  begin
    result := False;
    Uteis.aviso( 'Informe a referência !' );
    PctrlProdutos.ActivePage := Tbs_Produtos;
    EdtPrd_Refer.Setfocus;
  end;
  if ( cxDBLookupComboBox1.Text = '' ) and not ( DBRadClasse.Value = 'S' ) then
  begin
    result := False;
    Uteis.aviso( 'Informe o tipo de unidade !' );
    PctrlProdutos.ActivePage := Tbs_Produtos;
    cxDBLookupComboBox1.Setfocus;
  end;

  if ( DBEPRD_TIPO.Text = EmptyStr ) then
  begin
    result := False;
    if DBRadClasse.Value = 'P' then
      Uteis.aviso( 'Informe o tipo de produto !' )
    else
      Uteis.aviso( 'Informe o tipo de serviço !' );
    PctrlProdutos.ActivePage := Tbs_Produtos;
    DBEPRD_TIPO.Setfocus;
  end;
  if DBInicio.Empresa.PRD_SPEDVALIDA and ( CdsProdutosSPED_TIPCODIGO.AsString = '' ) then
  begin
    result := False;
    Uteis.aviso( 'Tipo do SPED deve ser preenchido (aba Fiscal )' );
    if DBtipoSPED.CanFocus then
      DBtipoSPED.Setfocus;
  end;
  if DBInicio.Empresa.PRD_SPEDVALIDA AND ( CdsProdutosSPED_GENCODIGO.AsString = '' ) and ( CdsProdutosSPED_TIPCODIGO.AsString <> '00' ) then
  Begin
    result := False;
    Uteis.aviso( 'Gênero do SPED deve ser preenchido (aba Fiscal )' );
    if edGeneroSPED.CanFocus then
      edGeneroSPED.Setfocus;
  End;
  if ( DbePrd_Descri.Field.IsNull ) then
  begin
    result := False;
    if DBRadClasse.Value = 'P' then
      Uteis.aviso( 'Informe a descrição do produto !' )
    else
      Uteis.aviso( 'Informe a descrição do serviço !' );
    PctrlProdutos.ActivePage := Tbs_Produtos;
    DbePrd_Descri.Setfocus;
  end;

  if ( CdsProdutosPRD_UTILCONV.AsString = 'S' ) and not ( DBRadClasse.Value = 'S' ) then
  begin
    if ( ( CdsProdutosPRD_FATORC.AsCurrency = 0 ) and ( CdsProdutosPRD_FATOR_PROD.AsCurrency = 0 ) ) then
    begin
      result := False;
      Uteis.aviso( 'Se ativar o fator de conversão favor informar no mínimo um fator!' );
    end;
  end;

end;

procedure TFormProduto.CbAlmoxarifadoSelect( Sender : tObject );
begin
  inherited;
  if CbAlmoxarifado.idRetorno <> '' then
  begin
    EdAlmoxarifadoCodigo.Text := CbAlmoxarifado.idRetorno;
    if DmProducao.CdsFichaTec.State in [ dsBrowse ] then
    begin
      DmProducao.CdsFichaTec.Edit;
      DmProducao.CdsFichaTecAMX_CODIGO.AsString := EdAlmoxarifadoCodigo.Text;
    end;
  end
  Else
  begin
    EdAlmoxarifadoCodigo.Clear;
  end;
  DesabilitaBotoesFTC;
end;

procedure TFormProduto.cbApenasComEstoqueClick(Sender: TObject);
begin
  inherited;
  FiltraGrid();
end;

procedure TFormProduto.cbFiltroAlmoxarifadoChange(Sender: TObject);
begin
  inherited;
  FiltraGrid();
end;

procedure TFormProduto.cbGrauToleranciaChange( Sender : tObject );
begin
  inherited;
  SetToleranciaDM;
end;

procedure TFormProduto.DBECustoEntradaEnter( Sender : tObject );
begin
  inherited;
  PrecoEmpresaCorDBEdit;
end;

procedure TFormProduto.DBECustoEntradaExit( Sender : tObject );
begin
  inherited;
  if not ( CdsProdutos.State in [ dsBrowse ] ) then
  begin

    if DBInicio.GetParametroSistema( 'PMT_METODO_CALCULO_PRECO' ) = '1' then // o cálculo é feito por dentro
    begin
      if wCalcularPV = 0 then
        CdsProdutosPRD_PVENDA.AsCurrency := ( CdsProdutosPRD_PCUSTO.AsCurrency / ( 1 - ( CdsProdutosPRD_MARGEMVENDA.AsFloat / 100 ) ) )
      else
        if wCalcularPV = 1 then
          CdsProdutosPRD_PVENDA.AsCurrency := ( CdsProdutosPRD_CUSTOCOMIPI.AsCurrency / ( 1 - ( CdsProdutosPRD_MARGEMVENDA.AsFloat / 100 ) ) )
        else
          if wCalcularPV = 2 then
            CdsProdutosPRD_PVENDA.AsCurrency := ( CdsProdutosPRD_PMEDIO.AsCurrency / ( 1 - ( CdsProdutosPRD_MARGEMVENDA.AsFloat / 100 ) ) );
      Exit;
    end;

    // se margem esta zerada e tem preço de venda então calcula a margem de venda pelo custo de entrada
    if ( CdsProdutosPRD_MARGEMVENDA.AsCurrency = 0 ) and ( CdsProdutosPRD_PVENDA.AsCurrency > 0 ) and ( wCalcularPV = 1 ) then
    begin
      if CdsProdutosPRD_CUSTOCOMIPI.AsCurrency > CdsProdutosPRD_PVENDA.AsCurrency then
      begin
        if not DBInicio.Empresa.wPMT_NAO_AUTO_PVENDA then
        begin
          Uteis.aviso( 'Atenção : Você digitou o preço de Custo maior que o preço de Venda atual. Os preços serão igualados !' );
          // RoundTo(TField(Sender).AsFloat * (1+ (wTab2/100) ),dbInicio.Empresa.fPMT_QTDE_DEC_PED*-1);
          CdsProdutosPRD_PVENDA.AsCurrency := RoundTo( CdsProdutosPRD_CUSTOCOMIPI.AsCurrency, DBInicio.Empresa.fPMT_QTDE_DEC_PED * - 1 );
        end;
        CdsProdutosPRD_MARGEMVENDA.AsCurrency := 0;
      end
      else
      begin
        if CdsProdutosPRD_CUSTOCOMIPI.AsCurrency = 0 then
          CdsProdutosPRD_MARGEMVENDA.AsCurrency := 0
        else
          CdsProdutosPRD_MARGEMVENDA.AsCurrency := ( ( CdsProdutosPRD_PVENDA.AsCurrency / CdsProdutosPRD_CUSTOCOMIPI.AsCurrency ) - 1 ) * 100;
      end;
    end;

    CdsProdutosPRD_DTPCUSTO.AsDateTime := date;
    // se já tem a margem recalcula então o preço de venda e oferta
    if ( CdsProdutosPRD_MARGEMVENDA.AsCurrency > 0 ) and ( wCalcularPV = 1 ) then
    begin
      if not DBInicio.Empresa.wPMT_NAO_AUTO_PVENDA then
        CdsProdutosPRD_PVENDA.AsCurrency := RoundTo( ( CdsProdutosPRD_CUSTOCOMIPI.AsCurrency * ( 1 + ( CdsProdutosPRD_MARGEMVENDA.AsCurrency / 100 ) ) ), DBInicio.Empresa.fPMT_QTDE_DEC_PED * - 1 );

      if CdsProdutosPRD_MARGEMOFERTA.AsCurrency > 0 then
        CdsProdutosPRD_PRECOOFERTA.AsCurrency := RoundTo( ( CdsProdutosPRD_CUSTOCOMIPI.AsCurrency * ( 1 + ( CdsProdutosPRD_MARGEMOFERTA.AsCurrency / 100 ) ) ), DBInicio.Empresa.fPMT_QTDE_DEC_PED * - 1 );

    end;
  end;
  PrecoEmpresaCorDBEdit;
end;

procedure TFormProduto.DBECustoliquidoEnter( Sender : tObject );
begin
  wcustoliquidoatual := CdsProdutosPRD_PCUSTO.AsCurrency;
end;

procedure TFormProduto.DBECustoliquidoExit( Sender : tObject );
begin

  if not ( CdsProdutos.State in [ dsBrowse ] ) then
  begin
    // foi alterado o custo liquido
    if CdsProdutosPRD_PCUSTO.AsCurrency <> wcustoliquidoatual then
    begin
      if Uteis.confirmacao( 'O Custo Liquido foi alterado. Atualiza o Custo de Entrada Também ?' ) = Mryes then
        CdsProdutosPRD_CUSTOCOMIPI.AsCurrency := CdsProdutosPRD_PCUSTO.AsCurrency;

    end;

    if DBInicio.GetParametroSistema( 'PMT_METODO_CALCULO_PRECO' ) = '1' then // o cálculo é feito por dentro
    begin
      if wCalcularPV = 0 then
        CdsProdutosPRD_PVENDA.AsCurrency := ( CdsProdutosPRD_PCUSTO.AsCurrency / ( 1 - ( CdsProdutosPRD_MARGEMVENDA.AsFloat / 100 ) ) )
      else
        if wCalcularPV = 1 then
          CdsProdutosPRD_PVENDA.AsCurrency := ( CdsProdutosPRD_CUSTOCOMIPI.AsCurrency / ( 1 - ( CdsProdutosPRD_MARGEMVENDA.AsFloat / 100 ) ) )
        else
          if wCalcularPV = 2 then
            CdsProdutosPRD_PVENDA.AsCurrency := ( CdsProdutosPRD_PMEDIO.AsCurrency / ( 1 - ( CdsProdutosPRD_MARGEMVENDA.AsFloat / 100 ) ) );
      Exit;
    end;

    // se margem esta zerada e tem preço de venda então calcula a margem de venda
    if ( CdsProdutosPRD_MARGEMVENDA.AsCurrency = 0 ) and ( CdsProdutosPRD_PVENDA.AsCurrency > 0 ) AND ( wCalcularPV = 0 ) then
    begin
      if CdsProdutosPRD_PCUSTO.AsCurrency > CdsProdutosPRD_PVENDA.AsCurrency then
      begin
        if not DBInicio.Empresa.wPMT_NAO_AUTO_PVENDA then
        begin
          Uteis.aviso( 'Atenção : Você digitou o preço de Custo maior que o preço de Venda atual. Os preços serão igualados !' );
          // RoundTo(TField(Sender).AsFloat * (1+ (wTab2/100) ),dbInicio.Empresa.fPMT_QTDE_DEC_PED*-1);
          CdsProdutosPRD_PVENDA.AsCurrency := RoundTo( CdsProdutosPRD_PCUSTO.AsCurrency, DBInicio.Empresa.fPMT_QTDE_DEC_PED * - 1 );
        end;
        CdsProdutosPRD_MARGEMVENDA.AsCurrency := 0;
      end
      else
      begin
        if CdsProdutosPRD_PCUSTO.AsCurrency = 0 then
          CdsProdutosPRD_MARGEMVENDA.AsCurrency := 0
        else
          CdsProdutosPRD_MARGEMVENDA.AsCurrency := ( ( CdsProdutosPRD_PVENDA.AsCurrency / CdsProdutosPRD_PCUSTO.AsCurrency ) - 1 ) * 100;
      end;
    end;

    CdsProdutosPRD_DTPCUSTO.AsDateTime := date;
    // se já tem a margem recalcula então o preço de venda e oferta, SE O PREÇO DE VENDA FOR PELO CUSTO LIQUIDO
    if ( CdsProdutosPRD_MARGEMVENDA.AsCurrency > 0 ) AND ( wCalcularPV = 0 ) then
    begin
      if not DBInicio.Empresa.wPMT_NAO_AUTO_PVENDA then
        CdsProdutosPRD_PVENDA.AsCurrency := RoundTo( ( ( CdsProdutosPRD_PCUSTO.AsCurrency + ( CdsProdutosPRD_PCUSTO.AsCurrency * CdsProdutosPRD_MARGEMVENDA.AsCurrency / 100 ) ) ), DBInicio.Empresa.fPMT_QTDE_DEC_PED * - 1 );

      if CdsProdutosPRD_MARGEMOFERTA.AsCurrency > 0 then
        CdsProdutosPRD_PRECOOFERTA.AsCurrency := ( CdsProdutosPRD_PCUSTO.AsCurrency + ( CdsProdutosPRD_PCUSTO.AsCurrency * CdsProdutosPRD_MARGEMOFERTA.AsCurrency / 100 ) );
    end;
  end;

end;

procedure TFormProduto.DBECustoMedioExit( Sender : tObject );
begin
  inherited;
  if not ( CdsProdutos.State in [ dsBrowse ] ) then
  begin

    if DBInicio.GetParametroSistema( 'PMT_METODO_CALCULO_PRECO' ) = '1' then // o cálculo é feito por dentro
    begin
      if wCalcularPV = 0 then
        CdsProdutosPRD_PVENDA.AsCurrency := ( CdsProdutosPRD_PCUSTO.AsCurrency / ( 1 - ( CdsProdutosPRD_MARGEMVENDA.AsFloat / 100 ) ) )
      else
        if wCalcularPV = 1 then
          CdsProdutosPRD_PVENDA.AsCurrency := ( CdsProdutosPRD_CUSTOCOMIPI.AsCurrency / ( 1 - ( CdsProdutosPRD_MARGEMVENDA.AsFloat / 100 ) ) )
        else
          if wCalcularPV = 2 then
            CdsProdutosPRD_PVENDA.AsCurrency := ( CdsProdutosPRD_PMEDIO.AsCurrency / ( 1 - ( CdsProdutosPRD_MARGEMVENDA.AsFloat / 100 ) ) );
      Exit;
    end;

    // se margem esta zerada e tem preço de venda então calcula a margem de venda pelo custo medio
    if ( CdsProdutosPRD_MARGEMVENDA.AsCurrency = 0 ) and ( CdsProdutosPRD_PVENDA.AsCurrency > 0 ) and ( wCalcularPV = 2 ) then
    begin
      if CdsProdutosPRD_PMEDIO.AsCurrency > CdsProdutosPRD_PVENDA.AsCurrency then
      begin
        if not DBInicio.Empresa.wPMT_NAO_AUTO_PVENDA then
        begin
          Uteis.aviso( 'Atenção : Você digitou o preço de Custo maior que o preço de Venda atual. Os preços serão igualados !' );
          // RoundTo(TField(Sender).AsFloat * (1+ (wTab2/100) ),dbInicio.Empresa.fPMT_QTDE_DEC_PED*-1);
          CdsProdutosPRD_PVENDA.AsCurrency := RoundTo( CdsProdutosPRD_PMEDIO.AsCurrency, DBInicio.Empresa.fPMT_QTDE_DEC_PED * - 1 );
        end;
        CdsProdutosPRD_MARGEMVENDA.AsCurrency := 0;
      end
      else
      begin
        if CdsProdutosPRD_PMEDIO.AsCurrency = 0 then
          CdsProdutosPRD_MARGEMVENDA.AsCurrency := 0
        else
          CdsProdutosPRD_MARGEMVENDA.AsCurrency := ( ( CdsProdutosPRD_PVENDA.AsCurrency / CdsProdutosPRD_PMEDIO.AsCurrency ) - 1 ) * 100;
      end;
    end;

    CdsProdutosPRD_DTPCUSTO.AsDateTime := date;
    // se já tem a margem recalcula então o preço de venda e oferta
    if ( CdsProdutosPRD_MARGEMVENDA.AsCurrency > 0 ) and ( wCalcularPV = 2 ) then
    begin
      if not DBInicio.Empresa.wPMT_NAO_AUTO_PVENDA then
        CdsProdutosPRD_PVENDA.AsCurrency := RoundTo( ( CdsProdutosPRD_PMEDIO.AsCurrency * ( 1 + ( CdsProdutosPRD_MARGEMVENDA.AsCurrency / 100 ) ) ), DBInicio.Empresa.fPMT_QTDE_DEC_PED * - 1 );

      if CdsProdutosPRD_MARGEMOFERTA.AsCurrency > 0 then
        CdsProdutosPRD_PRECOOFERTA.AsCurrency := RoundTo( ( CdsProdutosPRD_PMEDIO.AsCurrency * ( 1 + ( CdsProdutosPRD_MARGEMOFERTA.AsCurrency / 100 ) ) ), DBInicio.Empresa.fPMT_QTDE_DEC_PED * - 1 );

    end;
  end;

end;

procedure TFormProduto.DBEdit24MenuPesquisaClick( Sender : tObject );
VAR
  tcr : TfrmCEST;
begin
  tcr := TfrmCEST.Create( Self );
  try
    tcr.NCM := CdsProdutosIPI_CODIGO.AsString;
    tcr.CampoIDRetorno := 'CEST_COD';
    if tcr.pesquisa( 0 ) then
    begin
      if CdsProdutos.State = dsBrowse then
        CdsProdutos.Edit;
      CdsProdutosCEST_COD.AsString := tcr.idRetorno;
    end;
  finally
    FreeAndNil( tcr );
  end;
end;

procedure TFormProduto.DBEmargemOfertaExit( Sender : tObject );
begin
  if not ( CdsProdutos.State in [ dsBrowse ] ) then
  begin
    if CdsProdutosPRD_MARGEMOFERTA.AsCurrency > 0 then
    begin
      if wCalcularPV = 0 then
        CdsProdutosPRD_PRECOOFERTA.AsCurrency := ( CdsProdutosPRD_PCUSTO.AsCurrency + ( CdsProdutosPRD_PCUSTO.AsCurrency * CdsProdutosPRD_MARGEMOFERTA.AsCurrency / 100 ) )
      else
        if wCalcularPV = 1 then
          CdsProdutosPRD_PRECOOFERTA.AsCurrency := ( CdsProdutosPRD_CUSTOCOMIPI.AsCurrency + ( CdsProdutosPRD_CUSTOCOMIPI.AsCurrency * CdsProdutosPRD_MARGEMOFERTA.AsCurrency / 100 ) )
        else
          if wCalcularPV = 2 then
            CdsProdutosPRD_PRECOOFERTA.AsCurrency := ( CdsProdutosPRD_PMEDIO.AsCurrency + ( CdsProdutosPRD_PMEDIO.AsCurrency * CdsProdutosPRD_MARGEMOFERTA.AsCurrency / 100 ) )

    end;
    // calcular conforme parametro -> 0 = custo liquido, 1 = custo enttrada

  end;
end;

procedure TFormProduto.TabGradeShow( Sender : tObject );
begin
  AtualizaProdutoGrade;
end;

procedure TFormProduto.AtualizaProdutoGrade;
begin
  CdsGrade.close;
  if ( not CdsProdutos.isEmpty ) then
  begin

    CdsGrade.CommandText := SQLDEF( 'PRODUTOS', 'SELECT * FROM PRD_GRADE', 'WHERE PRD_CODIGO = ' + qStr( CdsProdutosPRD_CODIGO.AsString ), 'PRG_DESCRICAO', '' );
    CdsGrade.Open;
  end;
end;

procedure TFormProduto.AtualizarComissoes;
var
  lin_cod : string;
  comis1, comis2, comis3, comis4, comis5, comis6 : double;
begin
  if DBInicio.Empresa.bHabilitarTabelaPreco then
  begin
    lin_cod := BuscaUmDadoSqlAsString( ' SELECT LIN_CODIGO FROM PRD0000 ' + ' WHERE PRD_CODIGO = ' + QuotedStr( CdsProdutosPRD_CODIGO.AsString ) + ConcatSE( ' and ', DBInicio.ExclusivoSql( 'produtos' ) ) );
    if lin_cod <> '' then
      OpenAux3( '	SELECT * FROM MKP0000  ' + ' WHERE LIN_CODIGO = ' + QuotedStr( lin_cod ) + ' AND EMP_CODIGO = ' + QuotedStr( DBInicio.Empresa.EMP_CODIGO ) );

    if ( lin_cod = '' ) or ( qAux3.isEmpty ) then
      OpenAux3( '	SELECT * FROM MKP0000  ' + ' WHERE  LIN_CODIGO = ' + QuotedStr( '999' ) + ' AND EMP_CODIGO = ' + QuotedStr( DBInicio.Empresa.EMP_CODIGO ) );
    if not ( qAux3.isEmpty ) then
    begin
      CdsProdutosPRD_PERC_COMISSAO.AsFloat := qAux3.FieldByName( 'MKP_COMIS1' ).AsFloat;
      CdsProdutosPRD_PERC_COMISSAO2.AsFloat := qAux3.FieldByName( 'MKP_COMIS2' ).AsFloat;
      CdsProdutosPRD_PERC_COMISSAO3.AsFloat := qAux3.FieldByName( 'MKP_COMIS3' ).AsFloat;
      CdsProdutosPRD_PERC_COMISSAO4.AsFloat := qAux3.FieldByName( 'MKP_COMIS4' ).AsFloat;
      CdsProdutosPRD_PERC_COMISSAO5.AsFloat := qAux3.FieldByName( 'MKP_COMIS5' ).AsFloat;
      CdsProdutosPRD_PERC_COMISSAO6.AsFloat := qAux3.FieldByName( 'MKP_COMIS6' ).AsFloat;
    end;
  end;
end;

procedure TFormProduto.bbAdicionarParametroClick( Sender : tObject );
begin
  inherited;
  MostraCamposQualidade( True );
  MostraBotoesQualidade( False );

  cdsCQP.Insert;
  edPRD_REFER.Text := DBText1.Caption;
  dbsPRD_REFER.Setfocus;
end;

procedure TFormProduto.CdsGradeAfterPost( DataSet : TDataSet );
begin
  CdsGrade.ApplyUpdates( 0 );
  // CdsGrade.Refresh;
  cdsGrade.Close;
  cdsGrade.Open;
end;

procedure TFormProduto.CdsProdutosReferenciaAfterPost( DataSet : TDataSet );
begin
  CdsProdutosReferencia.ApplyUpdates( 0 );
  // CdsProdutosReferencia.Refresh;
  CdsProdutosReferencia.Close;
  CdsProdutosReferencia.Open;
end;

procedure TFormProduto.CdsProdutosReferenciaBeforePost( DataSet : TDataSet );
begin
  CdsProdutosReferenciaPRD_CODIGO.AsString := CdsProdutosPRD_CODIGO.AsString;
end;

procedure TFormProduto.chkmultiempresaClick( Sender : tObject );
begin
  inherited;
  BitPesquisar.Click;
end;

procedure TFormProduto.chkMultiempresaComprasClick( Sender : tObject );
begin
  inherited;
  MostraCompras;
end;


procedure TFormProduto.COMP_CORPOExit( Sender : tObject );
begin
  inherited;
  SetValores( calculaValor );
  calculaValor := True;
end;

procedure TFormProduto.COMP_CORPOKeyPress( Sender : tObject; var Key : Char );
begin
  inherited;
  calculaValor := True;
end;

procedure TFormProduto.COM_LIVREExit( Sender : tObject );
begin
  inherited;
  calculaValor := True;
  SetValores( calculaValor );

end;

procedure TFormProduto.COM_SOLIDOExit( Sender : tObject );
begin
  inherited;
  SetValores( calculaValor );
  calculaValor := True;
end;

procedure TFormProduto.COM_SOLIDOKeyPress( Sender : tObject; var Key : Char );
begin
  inherited;
  calculaValor := False;
end;

procedure TFormProduto.CdsProdutosBeforeEdit( DataSet : TDataSet );
begin
  inherited;
  DesabilitaBotoes;
  EdtPrd_Refer.ReadOnly := not eNotaEntrada;
  EdtPrd_Refer.Enabled := eNotaEntrada;
  EdtPrd_Refer.TabStop := eNotaEntrada;
end;

procedure TFormProduto.CdsProdutosCalcFields( DataSet : TDataSet );
begin
  inherited;
  CdsProdutosPRD_FISICO_CC.AsCurrency := ( CdsProdutosPRD_ESTOQUE.AsCurrency + CdsProdutosPRD_ENTRADA.AsCurrency ) - ( CdsProdutosPRD_SAIDA.AsCurrency + CdsProdutosPRD_RESERVA.AsCurrency + CdsProdutosPRD_EMPENHO.AsCurrency );
  CdsProdutosPRD_ANTECIPADO_CC.AsCurrency := ( CdsProdutosPRD_ESTOQUE.AsCurrency + CdsProdutosPRD_ENTRADA.AsCurrency + CdsProdutosPRD_PENDENTE.AsCurrency ) - ( CdsProdutosPRD_SAIDA.AsCurrency + CdsProdutosPRD_RESERVA.AsCurrency + CdsProdutosPRD_EMPENHO.AsCurrency );
end;

procedure TFormProduto.CdsProdutosID_PRD_ESPECIFICOGetText( Sender : TField; var Text : string; DisplayText : Boolean );
begin
  inherited;
  case Sender.AsInteger of
    1 : Text := 'ARMAS';
    2 : Text := 'VEÍCULOS';
    3 : Text := 'MEDICAMENTOS';
    4 : Text := 'COMBUSTÍVEIS';
  end;
end;

procedure TFormProduto.CdsProdutosID_PRD_ESPECIFICOSetText( Sender : TField; const Text : string );
begin
  inherited;
  IF Text = 'ARMAS' THEN
    Sender.AsInteger := 1
  ELSE
    IF Text = 'VEÍCULOS' THEN
      Sender.AsInteger := 2
    ELSE
      IF Text = 'MEDICAMENTOS' THEN
        Sender.AsInteger := 3
      ELSE
        IF Text = 'COMBUSTÍVEIS' THEN
          Sender.AsInteger := 4
        else
          Sender.Clear;
end;

procedure TFormProduto.CdsProdutosNewRecord( DataSet : TDataSet );
begin
  inherited;
  CdsProdutosPRD_PERC_VENDA.Value := DBInicio.Empresa.wPmt_Percvenda1;
  CdsProdutosPRD_PERC_VENDA2.Value := DBInicio.Empresa.wPmt_Percvenda2;
  CdsProdutosPRD_PERC_VENDA3.Value := DBInicio.Empresa.wPmt_Percvenda3;
  CdsProdutosPRD_PERC_VENDA4.Value := DBInicio.Empresa.wPmt_Percvenda4;
  CdsProdutosPRD_PERC_VENDA5.Value := DBInicio.Empresa.wPmt_Percvenda5;
  CdsProdutosPRD_PERC_VENDA6.Value := DBInicio.Empresa.wPmt_Percvenda6;

  CdsProdutosPRD_PERC_COMISSAO.Value := DBInicio.Empresa.wPmt_PercComissao1;
  CdsProdutosPRD_PERC_COMISSAO2.Value := DBInicio.Empresa.wPmt_PercComissao2;
  CdsProdutosPRD_PERC_COMISSAO3.Value := DBInicio.Empresa.wPmt_PercComissao3;
  CdsProdutosPRD_PERC_COMISSAO4.Value := DBInicio.Empresa.wPmt_PercComissao4;
  CdsProdutosPRD_PERC_COMISSAO5.Value := DBInicio.Empresa.wPmt_PercComissao5;
  CdsProdutosPRD_PERC_COMISSAO6.Value := DBInicio.Empresa.wPmt_PercComissao6;
end;

procedure TFormProduto.CdsProdutosPRD_PVENDAChange( Sender : TField );
var
  wTab2, wTab3, wTab4, wTab5, wTab6 : double;
  lin_cod : string;
begin
  inherited;
  if DBInicio.Empresa.bHabilitarTabelaPreco then
  begin
    lin_cod := BuscaUmDadoSqlAsString( ' SELECT LIN_CODIGO FROM PRD0000 ' + ' WHERE PRD_CODIGO = ' + QuotedStr( CdsProdutosPRD_CODIGO.AsString ) + ConcatSE( ' and ', DBInicio.ExclusivoSql( 'produtos' ) ) );
    if lin_cod <> '' then
      OpenAux3( '	SELECT * FROM MKP0000  ' + ' WHERE LIN_CODIGO = ' + QuotedStr( lin_cod ) + ' AND EMP_CODIGO = ' + QuotedStr( DBInicio.Empresa.EMP_CODIGO ) );

    if ( lin_cod = '' ) or ( qAux3.isEmpty ) then
      OpenAux3( '	SELECT * FROM MKP0000  ' + ' WHERE  LIN_CODIGO = ' + QuotedStr( '999' ) + ' AND EMP_CODIGO = ' + QuotedStr( DBInicio.Empresa.EMP_CODIGO ) );
    if ( qAux3.isEmpty ) then
    begin
      wTab2 := 0;
      wTab3 := 0;
      wTab4 := 0;
      wTab5 := 0;
      wTab6 := 0;
    end
    else
    begin
      wTab2 := qAux3.FieldByName( 'MKP_PERC2' ).AsFloat;
      wTab3 := qAux3.FieldByName( 'MKP_PERC3' ).AsFloat;
      wTab4 := qAux3.FieldByName( 'MKP_PERC4' ).AsFloat;
      wTab5 := qAux3.FieldByName( 'MKP_PERC5' ).AsFloat;
      wTab6 := qAux3.FieldByName( 'MKP_PERC6' ).AsFloat;
    end;
    if wTab2 > 0 then
      wTab2 := ( wTab2 / 100 ) + 1;

    if wTab3 > 0 then
      wTab3 := ( wTab3 / 100 ) + 1;

    if wTab4 > 0 then
      wTab4 := ( wTab4 / 100 ) + 1;

    if wTab5 > 0 then
      wTab5 := ( wTab5 / 100 ) + 1;

    if wTab6 > 0 then
      wTab6 := ( wTab6 / 100 ) + 1;

    // conforme parametro -> 0 = custo liquido, 1 = custo enttrada
    CdsProdutosPRD_PVENDA2.AsFloat := RoundTo( TField( Sender ).AsFloat * ( ( wTab2 ) ), DBInicio.Empresa.fPMT_QTDE_DEC_PED * - 1 );
    CdsProdutosPRD_PVENDA3.AsFloat := RoundTo( TField( Sender ).AsFloat * ( ( wTab3 ) ), DBInicio.Empresa.fPMT_QTDE_DEC_PED * - 1 );
    CdsProdutosPRD_PVENDA4.AsFloat := RoundTo( TField( Sender ).AsFloat * ( ( wTab4 ) ), DBInicio.Empresa.fPMT_QTDE_DEC_PED * - 1 );
    CdsProdutosPRD_PVENDA5.AsFloat := RoundTo( TField( Sender ).AsFloat * ( ( wTab5 ) ), DBInicio.Empresa.fPMT_QTDE_DEC_PED * - 1 );
    CdsProdutosPRD_PVENDA6.AsFloat := RoundTo( TField( Sender ).AsFloat * ( ( wTab6 ) ), DBInicio.Empresa.fPMT_QTDE_DEC_PED * - 1 );
    CdsProdutosPRD_PERC_COMISSAO.AsFloat := qAux3.FieldByName( 'MKP_COMIS1' ).AsFloat;
    CdsProdutosPRD_PERC_COMISSAO2.AsFloat := qAux3.FieldByName( 'MKP_COMIS2' ).AsFloat;
    CdsProdutosPRD_PERC_COMISSAO3.AsFloat := qAux3.FieldByName( 'MKP_COMIS3' ).AsFloat;
    CdsProdutosPRD_PERC_COMISSAO4.AsFloat := qAux3.FieldByName( 'MKP_COMIS4' ).AsFloat;
    CdsProdutosPRD_PERC_COMISSAO5.AsFloat := qAux3.FieldByName( 'MKP_COMIS5' ).AsFloat;
    CdsProdutosPRD_PERC_COMISSAO6.AsFloat := qAux3.FieldByName( 'MKP_COMIS6' ).AsFloat;
  end;
end;

procedure TFormProduto.CdsProdutosReferenciaAfterDelete( DataSet : TDataSet );
begin
  CdsProdutosReferencia.ApplyUpdates( 0 );
end;

procedure TFormProduto.SgDbSearchCombo8Exit( Sender : tObject );
begin
  inherited;
  SetValores( True );
end;

procedure TFormProduto.SgDbSearchCombo8Select( Sender : tObject );
begin
  inherited;
  // SetValores( True );
end;

procedure TFormProduto.SpeedButton5Click( Sender : tObject );
begin
  if not Assigned( FormPrd_Ipi ) then
  begin
    FormPrd_Ipi := TFormPrd_Ipi.Create( Application );
    FormPrd_Ipi.BotoesAcesso;
    if ( MDIChildCount > 1 ) then
      SendMessage( ClientHandle, WM_MDICASCADE, 0, 0 )

      // finally
      // FormPrd_Ipi.Destroy;
      // FormPrd_Ipi := nil;
      // end;
  end;
  FormPrd_Ipi.Show;

end;

procedure TFormProduto.OpenClassIpi;
begin
  CdsPrdClassIPI.DisableControls;
  CdsPrdClassIPI.close;
  CdsPrdClassIPI.sql.Text := 'SELECT * FROM IPI0000 ' + ConcatSE( 'where ', DBInicio.ExclusivoSql( 'Tabelas' ) ) + ' order by IPI_CODIGO';
  CdsPrdClassIPI.Open;
  CdsPrdClassIPI.EnableControls;
end;

procedure TFormProduto.OpenEngenharia;
begin
  cdsProcessos.DisableControls;
  try
    cdsProcessos.close;
    qProcesso.sql.Clear;
    qProcesso.sql.Text := 'SELECT ENG_CODIGO, OP.OPE_DESCRICAO, OP.OPE_CODIGO, EP.SEQUENCIA, EP.TEMPO_ESTIMADO, PR.PRD_REFER, PR.PRD_DESCRI,  ' + ' EQ.EQP_CODIGO, eq.EQP_DESCRICAO ' + ' FROM ENGENHARIA_PROCESSO ep ' + ' INNER JOIN PRD0000 PR ON (pr.PRD_CODIGO = ep.prd_codigo)     ' + ' INNER JOIN OPERACOES OP ON (OP.OPE_CODIGO = EP.OPE_CODIGO)   ' + ' LEFT JOIN EQUIPAMENTO EQ ON (EQ.EQP_CODIGO = EP.EQP_CODIGO) ' + ' WHERE PR.PRD_REFER = ' + qStr( EdtPrd_Refer.Text ) + ' ORDER BY SEQUENCIA';
    cdsProcessos.Open;

  finally
    cdsProcessos.EnableControls;
  end;

end;

procedure TFormProduto.OpenEspecificacoes( Eng_Codigo : Integer );
begin
  cdsEspecifica.DisableControls;
  try
    cdsEspecifica.close;
    qEspecifica.sql.Clear;
    qEspecifica.sql.Text := 'SELECT ESP_CODIGO, ESP_NOME, ESP_PADROES, ENG_CODIGO,ESP_COL1, ESP_COL2, ESP_COL3, ESP_COL4, ' + ' ESP_COL5, ESP_COL6, ESP_COL7                                                                ' + ' FROM ESPECIFICACOES                                                                         ' + ' WHERE ENG_CODIGO =  ' + IntToStr( Eng_Codigo );

    cdsEspecifica.Open;
  finally
    cdsEspecifica.EnableControls;
  end;
end;

procedure TFormProduto.JvArrowButton1Click( Sender : tObject );
begin
  inherited;
  miLoteExcel.Click;
end;

procedure TFormProduto.JvDBComboBox1Change( Sender : tObject );
begin
  JvDBComboBox1.Hint := JvDBComboBox1.Text;
  JvDBComboBox1.ShowHint := True;
end;

procedure TFormProduto.DbcLkPrd_IPIExit( Sender : tObject );
begin
  if CdsProdutos.State in [ dsBrowse ] then
    CdsProdutos.Edit;
  if ( Trim( DbcLkPrd_IPI.Text ) <> '' ) then
    CdsProdutosSPED_GENCODIGO.AsString := COPY( Trim( DbcLkPrd_IPI.Text ), 1, 2 );

end;

procedure TFormProduto.TRATAMENTO_TERMICOChange( Sender : tObject );
begin
  inherited;
  if CdsProdutos.State = dsBrowse then
    CdsProdutos.Edit;
  DesabilitaBotoes;
  HabilitarCamposMola;
end;

procedure TFormProduto.TabSheet4Show( Sender : tObject );
begin
  MostraCompras;
end;

procedure TFormProduto.TabSheet8Show( Sender : tObject );
begin
  inherited;
  MostraIndustrializacao;
end;

procedure TFormProduto.tsMPusadoEnter( Sender : tObject );
begin
  inherited;
  AbrirMPusado;
end;

procedure TFormProduto.VAOExit( Sender : tObject );
begin
  inherited;
  SetValorPasso;
  SetValores( calculaValor );
  calculaValor := True;
end;

procedure TFormProduto.VAOKeyPress( Sender : tObject; var Key : Char );
begin
  inherited;
  calculaValor := True;
end;

procedure TFormProduto.VeraFichaTcnicaDesteItem1Click( Sender : tObject );
begin
  inherited;
  VisualizaFichaTecnica( CdsItensFichaPRD_REFER_ITENS.AsString );
end;

procedure TFormProduto.dbgrdLoteDrawColumnCell( Sender : tObject; const Rect : TRect; DataCol : Integer; Column : TColumn; State : TGridDrawState );
begin
  if ( CdsLotesPRDL_DATA_VALIDADE.AsDateTime < date ) then
  begin
    dbgrdLote.Canvas.Font.Color := clRed;
    dbgrdLote.DefaultDrawDataCell( Rect, dbgrdLote.Columns[ DataCol ].Field, State );
  end;
end;

procedure TFormProduto.CdsLotesAfterDelete( DataSet : TDataSet );
begin
  CdsLotes.ApplyUpdates( 0 );
end;

procedure TFormProduto.CdsLotesAfterPost( DataSet : TDataSet );
begin
  CdsLotes.ApplyUpdates( 0 );
  CdsLotes.Close;
  cdsLotes.Open;
end;

procedure TFormProduto.CdsLotesBeforeInsert( DataSet : TDataSet );
begin
  dbedtPRDL_LOTE.Setfocus;
end;

procedure TFormProduto.CdsLotesBeforePost( DataSet : TDataSet );
begin
  CdsLotesPRD_CODIGO.AsString := CdsProdutosPRD_CODIGO.AsString;
  CdsLotesEMP_CODIGO.AsString := CdsProdutosEMP_CODIGO.AsString;
end;

procedure TFormProduto.CdsLotesCalcFields( DataSet : TDataSet );
begin
  inherited;

  if ( CdsLotesPRDL_QTDELOTE.AsFloat > 0 ) and ( CdsLotesPRDL_QTDELOTE.AsFloat > CdsLotesPRDL_SALDO.AsFloat ) then
    CdsLotesQtde_USADA.AsFloat := CdsLotesPRDL_QTDELOTE.AsFloat - CdsLotesPRDL_SALDO.AsFloat
  else
    CdsLotesQtde_USADA.AsFloat := 0

end;

procedure TFormProduto.cdsLotesPRDL_DATA_FABRICACAOGetText( Sender : TField; var Text : string; DisplayText : Boolean );
begin
  if ( Sender.IsNull ) OR ( Sender.AsDateTime = 0 ) THEN
    Text := ''
  ELSE
    Text := DATETOSTR( Sender.AsDateTime );
end;

procedure TFormProduto.cdsMolaBeforeEdit( DataSet : TDataSet );
begin
  inherited;
  BIT_MOLA_GRAVAR.Enabled := True;
  BIT_MOLA_CANCELAR.Enabled := True;
end;

procedure TFormProduto.cdsMolaBeforeInsert( DataSet : TDataSet );
begin
  inherited;
  BIT_MOLA_GRAVAR.Enabled := True;
  BIT_MOLA_CANCELAR.Enabled := True;
end;

procedure TFormProduto.cdsMolaBeforePost( DataSet : TDataSet );
begin
  inherited;
  if cdsMolaMMO_CODIGO.IsNull then
  begin
    cdsMolaPRD_CODIGO.AsString := CdsProdutosPRD_CODIGO.AsString;
    cdsMolaMMO_CODIGO.AsInteger := GetNextSequence( 'GEN_MOLA_MATERIA_ID' );
  end;
end;

procedure TFormProduto.cdsMolaGAN_CODIGOChange( Sender : TField );
begin
  inherited;
  cdsGancho.DisableControls;
  try
    cdsGancho.close;
    qGancho.sql.Clear;
    qGancho.sql.Text := 'SELECT * FROM GANCHO WHERE GAN_CODIGO =' + cdsMolaGAN_CODIGO.AsString;
    cdsGancho.Open;
  finally
    cdsGancho.EnableControls;
  end;

end;

procedure TFormProduto.cdsMolaMMO_POSICAO_HASTEGetText( Sender : TField; var Text : string; DisplayText : Boolean );
begin
  inherited;
  if Sender.AsString = '3' then
    Text := '360/0º'
  else
    if Sender.AsString = '9' then
      Text := '90º'
    else
      if Sender.AsString = '1' then
        Text := '180º'
      else
        if Sender.AsString = '2' then
          Text := '270º'
end;

procedure TFormProduto.cdsMolaMMO_RETIFICADOGetText( Sender : TField; var Text : string; DisplayText : Boolean );
begin
  inherited;
  if Sender.AsString = 'S' then
    Text := 'SIM'
  else
    Text := 'NÃO'
end;

procedure TFormProduto.cdsMolaMMO_TIPO_HASTEGetText( Sender : TField; var Text : string; DisplayText : Boolean );
begin
  inherited;
  if Sender.AsString = 'A' then
    Text := 'Amostra'
  else
    if Sender.AsString = 'D' then
      Text := 'Desenho'
end;

procedure TFormProduto.cdsMolaMMO_TRATAMENTO_SUPERFICIALGetText( Sender : TField; var Text : string; DisplayText : Boolean );
begin
  inherited;
  if Sender.AsString = 'S' then
    Text := 'SIM'
  else
    Text := 'NÃO'
end;

procedure TFormProduto.cdsMolaMMO_TRATAMENTO_TERMICOGetText( Sender : TField; var Text : string; DisplayText : Boolean );
begin
  inherited;
  if Sender.AsString = 'N' then
    Text := 'Não'
  else
    if Sender.AsString = 'R' then
      Text := 'REVENIMENTO'
    else
      if Sender.AsString = 'A' then
        Text := 'ALIVIO DE TENSÃO'
      else
        if Sender.AsString = 'C' then
          Text := 'CEMENTAÇÃO'
        else
          if Sender.AsString = 'T' then
            Text := 'TEMPERA E REVENIMENTO'
          else
            if Sender.AsString = 'I' then
              Text := 'ISENTO';

end;

procedure TFormProduto.cdsProcessosAfterScroll( DataSet : TDataSet );
begin
  inherited;
  OpenEspecificacoes( DataSet.FieldByName( 'eng_codigo' ).AsInteger );
end;

procedure TFormProduto.SqlItensGradeAfterDelete( DataSet : TDataSet );
begin
  SqlItensGrade.ApplyUpdates( 0 );
end;

procedure TFormProduto.SqlItensGradeAfterPost( DataSet : TDataSet );
begin
  SqlItensGrade.ApplyUpdates( 0 );
  // SqlItensGrade.Refresh;
  SqlItensGrade.Close;
  SqlItensGrade.Open;
end;

procedure TFormProduto.CdsGradeAfterDelete( DataSet : TDataSet );
begin
  CdsGrade.ApplyUpdates( 0 );
end;

procedure TFormProduto.CalculaIndiceGrade;
var
  sUnidade : String;
begin
  if not ( CdsGrade.State in [ dsBrowse, dsInactive ] ) then
  begin
    if ( CdsProdutosPRD_UND_GRADE_CALCULO.AsString <> '' ) then
      sUnidade := CdsProdutosPRD_UND_GRADE_CALCULO.AsString
    else
      sUnidade := CdsProdutosPRD_UND.AsString;

    // M2 Normal
    if ( sUnidade = 'M2' ) and ( CdsGradePRG_MEDIDA_1.AsFloat <> 0 ) and ( CdsGradePRG_MEDIDA_2.AsFloat <> 0 ) and ( CdsGradePRG_MEDIDA_3.AsFloat = 0 ) then
    begin
      CdsGradePRG_INDICE.AsFloat := CdsGradePRG_MEDIDA_1.AsFloat * CdsGradePRG_MEDIDA_2.AsFloat;
      if ( CdsGradePRG_REDUCAO_PERCENT.AsFloat > 0 ) then
        CdsGradePRG_INDICE.AsFloat := CdsGradePRG_INDICE.AsFloat - ( CdsGradePRG_INDICE.AsFloat * ( CdsGradePRG_REDUCAO_PERCENT.AsFloat / 100 ) );
    end
    else
      // M2 Doido
      if ( sUnidade = 'M2' ) and ( CdsGradePRG_MEDIDA_1.AsFloat <> 0 ) and ( CdsGradePRG_MEDIDA_2.AsFloat <> 0 ) and ( CdsGradePRG_MEDIDA_3.AsFloat <> 0 ) then
      begin
        CdsGradePRG_INDICE.AsFloat := ( CdsGradePRG_MEDIDA_1.AsFloat * CdsGradePRG_MEDIDA_2.AsFloat * CdsGradePRG_MEDIDA_3.AsFloat ) / 1000000;
        if ( CdsGradePRG_REDUCAO_PERCENT.AsFloat > 0 ) then
          CdsGradePRG_INDICE.AsFloat := CdsGradePRG_INDICE.AsFloat - ( CdsGradePRG_INDICE.AsFloat * ( CdsGradePRG_REDUCAO_PERCENT.AsFloat / 100 ) );
      end
      else
        // M3
        if ( sUnidade = 'M3' ) and ( CdsGradePRG_MEDIDA_1.AsFloat <> 0 ) and ( CdsGradePRG_MEDIDA_2.AsFloat <> 0 ) and ( CdsGradePRG_MEDIDA_3.AsFloat <> 0 ) then
        begin
          CdsGradePRG_INDICE.AsFloat := ( CdsGradePRG_MEDIDA_1.AsFloat * CdsGradePRG_MEDIDA_2.AsFloat * CdsGradePRG_MEDIDA_3.AsFloat ) / 1000000;
          if ( CdsGradePRG_REDUCAO_PERCENT.AsFloat > 0 ) then
            CdsGradePRG_INDICE.AsFloat := CdsGradePRG_INDICE.AsFloat - ( CdsGradePRG_INDICE.AsFloat * ( CdsGradePRG_REDUCAO_PERCENT.AsFloat / 100 ) );
        end
        else
          // M2 LINEAR
          if ( sUnidade = 'MT' ) and ( CdsGradePRG_MEDIDA_1.AsFloat <> 0 ) and ( CdsGradePRG_MEDIDA_2.AsFloat <> 0 ) and ( CdsGradePRG_MEDIDA_3.AsFloat <> 0 ) then
          begin
            CdsGradePRG_INDICE.AsFloat := ( ( CdsGradePRG_MEDIDA_1.AsFloat * CdsGradePRG_MEDIDA_2.AsFloat * CdsGradePRG_MEDIDA_3.AsFloat ) / 1000000 );
            if ( CdsGradePRG_REDUCAO_PERCENT.AsFloat > 0 ) then
              CdsGradePRG_INDICE.AsFloat := CdsGradePRG_INDICE.AsFloat - ( CdsGradePRG_INDICE.AsFloat * ( CdsGradePRG_REDUCAO_PERCENT.AsFloat / 100 ) );
          end
          else
            CdsGradePRG_INDICE.AsFloat := 0;
    CdsGradePRG_DESCRICAO.AsString := dbedtPRG_MEDIDA_1.Text + ' x ' + dbedtPRG_MEDIDA_2.Text + ' x ' + dbedtPRG_MEDIDA_3.Text;
  end;

end;

procedure TFormProduto.DBEprecoVendaEnter( Sender : tObject );
begin
  inherited;
  PrecoEmpresaCorDBEdit;
end;

procedure TFormProduto.DBEprecoVendaExit( Sender : tObject );
var
  porFora, precoProdutoEmpresa : boolean;
begin
  if not ( CdsProdutos.State in [ dsBrowse ] ) then
  begin

    porFora := DBInicio.GetParametroSistema( 'PMT_METODO_CALCULO_PRECO' ) = '0';
    precoProdutoEmpresa := DBInicio.Exclusivo( 'PRODUTO_PRECO_EMPRESA' );
    if precoProdutoEmpresa then
    begin
      if porFora then
      begin
        // calcular conforme parametro -> 0 = custo liquido, 1 = custo entrada , 2 = custo médio
        if wCalcularPV = 0 then
        begin
          if CdsProdutosPRD_PCUSTO.AsCurrency > 0 then
            CdsProdutosPRD_MARGEMVENDA.AsCurrency := ( ( CdsProdutosPRD_PVENDA.AsCurrency / CdsProdutosPRD_PCUSTO.AsCurrency ) - 1 ) * 100
          else
            // se preço de custo = 0 então calcula o preço de custo
            if CdsProdutosPRD_MARGEMVENDA.AsCurrency > 0 then
              CdsProdutosPRD_PCUSTO.AsCurrency := CdsProdutosPRD_PVENDA.AsCurrency / ( CdsProdutosPRD_MARGEMVENDA.AsCurrency / 100 + 1 );
        end
        else
          if wCalcularPV = 1 then
          begin
            if CdsProdutosPRD_CUSTOCOMIPI.AsCurrency > 0 then
              CdsProdutosPRD_MARGEMVENDA.AsCurrency := ( ( CdsProdutosPRD_PVENDA.AsCurrency / CdsProdutosPRD_CUSTOCOMIPI.AsCurrency ) - 1 ) * 100
            else
              // se preço de custo = 0 então calcula o preço de custo
              if CdsProdutosPRD_MARGEMVENDA.AsCurrency > 0 then
                CdsProdutosPRD_CUSTOCOMIPI.AsCurrency := CdsProdutosPRD_PVENDA.AsCurrency / ( CdsProdutosPRD_MARGEMVENDA.AsCurrency / 100 + 1 );
          end
          else
            if wCalcularPV = 2 then // custo médio
            begin
              if CdsProdutosPRD_PMEDIO.AsCurrency > 0 then
                CdsProdutosPRD_MARGEMVENDA.AsCurrency := ( ( CdsProdutosPRD_PVENDA.AsCurrency / CdsProdutosPRD_PMEDIO.AsCurrency ) - 1 ) * 100
              else
                // se preço de custo = 0 então calcula o preço de custo
                if CdsProdutosPRD_MARGEMVENDA.AsCurrency > 0 then
                  CdsProdutosPRD_PMEDIO.AsCurrency := CdsProdutosPRD_PVENDA.AsCurrency / ( CdsProdutosPRD_MARGEMVENDA.AsCurrency / 100 + 1 );

            end;
        CdsProdutosPRD_PER_LUCRO.AsFloat := CdsProdutosPRD_MARGEMVENDA.AsFloat - ( CdsProdutosPRD_PER_ICMS.AsFloat + CdsProdutosPRD_PER_PISCONFINS.AsFloat + CdsProdutosPRD_PER_IPI.AsFloat + CdsProdutosPRD_PER_FRETE.AsFloat + CdsProdutosPRD_PER_OUTROS.AsFloat );

      end
      else
      begin
        if wCalcularPV = 0 then
          CdsProdutosPRD_MARGEMVENDA.AsCurrency := (CdsProdutosPRD_PCUSTO.AsCurrency / CdsProdutosPRD_PVENDA.AsCurrency ) * 100
        else
          if wCalcularPV = 1 then
            CdsProdutosPRD_MARGEMVENDA.AsCurrency := (CdsProdutosPRD_CUSTOCOMIPI.AsCurrency / CdsProdutosPRD_PVENDA.AsCurrency) * 100
          else
            if wCalcularPV = 2 then
              CdsProdutosPRD_MARGEMVENDA.AsCurrency := (CdsProdutosPRD_PMEDIO.AsCurrency / CdsProdutosPRD_PVENDA.AsCurrency) * 100;
      end;
    end
    else
    if porFora then
    begin
      // calcular conforme parametro -> 0 = custo liquido, 1 = custo entrada , 2 = custo médio
      if wCalcularPV = 0 then
      begin
        if CdsProdutosPRD_PCUSTO.AsCurrency > 0 then
          CdsProdutosPRD_MARGEMVENDA.AsCurrency := ( ( CdsProdutosPRD_PVENDA.AsCurrency / CdsProdutosPRD_PCUSTO.AsCurrency ) - 1 ) * 100
        else
          // se preço de custo = 0 então calcula o preço de custo
          if CdsProdutosPRD_MARGEMVENDA.AsCurrency > 0 then
            CdsProdutosPRD_PCUSTO.AsCurrency := CdsProdutosPRD_PVENDA.AsCurrency / ( CdsProdutosPRD_MARGEMVENDA.AsCurrency / 100 + 1 );
      end
      else
        if wCalcularPV = 1 then
        begin
          if CdsProdutosPRD_CUSTOCOMIPI.AsCurrency > 0 then
            CdsProdutosPRD_MARGEMVENDA.AsCurrency := ( ( CdsProdutosPRD_PVENDA.AsCurrency / CdsProdutosPRD_CUSTOCOMIPI.AsCurrency ) - 1 ) * 100
          else
            // se preço de custo = 0 então calcula o preço de custo
            if CdsProdutosPRD_MARGEMVENDA.AsCurrency > 0 then
              CdsProdutosPRD_CUSTOCOMIPI.AsCurrency := CdsProdutosPRD_PVENDA.AsCurrency / ( CdsProdutosPRD_MARGEMVENDA.AsCurrency / 100 + 1 );
        end
        else
          if wCalcularPV = 2 then // custo médio
          begin
            if CdsProdutosPRD_PMEDIO.AsCurrency > 0 then
              CdsProdutosPRD_MARGEMVENDA.AsCurrency := ( ( CdsProdutosPRD_PVENDA.AsCurrency / CdsProdutosPRD_PMEDIO.AsCurrency ) - 1 ) * 100
            else
              // se preço de custo = 0 então calcula o preço de custo
              if CdsProdutosPRD_MARGEMVENDA.AsCurrency > 0 then
                CdsProdutosPRD_PMEDIO.AsCurrency := CdsProdutosPRD_PVENDA.AsCurrency / ( CdsProdutosPRD_MARGEMVENDA.AsCurrency / 100 + 1 );

          end;
      CdsProdutosPRD_PER_LUCRO.AsFloat := CdsProdutosPRD_MARGEMVENDA.AsFloat - ( CdsProdutosPRD_PER_ICMS.AsFloat + CdsProdutosPRD_PER_PISCONFINS.AsFloat + CdsProdutosPRD_PER_IPI.AsFloat + CdsProdutosPRD_PER_FRETE.AsFloat + CdsProdutosPRD_PER_OUTROS.AsFloat );

    end
    else
    begin
      if wCalcularPV = 0 then
        CdsProdutosPRD_MARGEMVENDA.AsCurrency := (CdsProdutosPRD_PCUSTO.AsCurrency / CdsProdutosPRD_PVENDA.AsCurrency ) * 100
      else
        if wCalcularPV = 1 then
          CdsProdutosPRD_MARGEMVENDA.AsCurrency := (CdsProdutosPRD_CUSTOCOMIPI.AsCurrency / CdsProdutosPRD_PVENDA.AsCurrency) * 100
        else
          if wCalcularPV = 2 then
            CdsProdutosPRD_MARGEMVENDA.AsCurrency := (CdsProdutosPRD_PMEDIO.AsCurrency / CdsProdutosPRD_PVENDA.AsCurrency) * 100;
    end;
  end;
  PrecoEmpresaCorDBEdit;
end;

procedure TFormProduto.DBEmargemVendaEnter( Sender : tObject );
begin
  inherited;
  PrecoEmpresaCorDBEdit;
end;

procedure TFormProduto.DBEmargemVendaExit( Sender : tObject );
begin
  inherited;
  PrecoEmpresaCorDBEdit;
end;

procedure TFormProduto.DBEprecoOfertaExit( Sender : tObject );
begin
  if not ( CdsProdutos.State in [ dsBrowse ] ) then
  begin
    if CdsProdutosPRD_PRECOOFERTA.AsCurrency > 0 then
      CdsProdutosPRD_MARGEMOFERTA.AsCurrency := ( ( CdsProdutosPRD_PRECOOFERTA.AsCurrency / CdsProdutosPRD_PCUSTO.AsCurrency ) - 1 ) * 100;
  end;
end;

procedure TFormProduto.CdsGradeBeforeInsert( DataSet : TDataSet );
begin
  if ( CdsProdutos.isEmpty ) then
  begin
    raise Exception.Create( 'Primeiro Selecione um produto' );
  end;
end;

procedure TFormProduto.CdsGradeAfterInsert( DataSet : TDataSet );
begin
  CdsGradeEMP_CODIGO.AsString := DBInicio.Empresa.EMP_CODIGO;
  CdsGradePRD_CODIGO.AsString := CdsProdutosPRD_CODIGO.AsString;
  DBEdit59.Setfocus;
end;

procedure TFormProduto.bbEditarParametroClick( Sender : tObject );
begin
  inherited;
  cdsCQP.Edit;
  MostraCamposQualidade( True );
  MostraBotoesQualidade( False );
  dbsPRD_REFER.Setfocus;
end;

procedure TFormProduto.bbExcluirParametroClick( Sender : tObject );
begin
  inherited;
  if MessageDlg( 'Deseja Excluir o Registro', mtWarning, mbYesNo, 0 ) = Mryes then
  begin
    qAux.sql.Clear;
    qAux.sql.Text := 'DELETE FROM CONTROLE_DE_QUALIDADE_PRODUTO ' + ' WHERE PRD_REFER = ' + QuotedStr( edPRD_REFER.Text ) + ' AND PAR_CODIGO = ' + QuotedStr( dbsPRD_REFER.idRetorno );
    qAux.ExecSql;

    cdsCQP.close;
    qCQP.close;
    // cdsCQP.Filtered := False;
    // cdsCQP.Filter := 'PRD_REFER = ' + QuotedStr(DBText1.Caption) ;
    // cdsCQP.Filtered := True;
    cdsCQP.Open;
    qCQP.Open;
  end;

end;

procedure TFormProduto.curPercentualConsumoChange( Sender : tObject );
begin
  inherited;
  CurrConsumo.Value := ( CdsProdutosPRD_PESOLIQ.AsFloat / 100 ) * curPercentualConsumo.Value;
end;

procedure TFormProduto.CdsProdutosReferenciaBeforeInsert( DataSet : TDataSet );
begin
  dbedtPRDC_REFERENCIA.Setfocus;
end;

procedure TFormProduto.CdsProdutosAfterCancel( DataSet : TDataSet );
begin
  inherited;
  EdtPrd_Refer.ReadOnly := False;
  EdtPrd_Refer.Enabled := True;
  EdtPrd_Refer.TabStop := True;
end;

procedure TFormProduto.CdsProdutosAfterInsert( DataSet : TDataSet );
var
  max : Integer;
  ref : string;
begin
  inherited;
  max := BuscaUmDadoSqlAsInteger( 'SELECT max(CAST(prd_codigo AS INTEGER)) from prd0000' ) + 1;
  CdsProdutosPRD_CODIGO.AsString := StrZero( max, 5 );
  ref := BuscaUmDadoSqlAsString( SQLDEF( 'PRODUTOS', 'SELECT COALESCE(max(PRD_REFER),0) FROM PRD0000', '', '1 desc', '' ) );
  ref := IntToStr( StrToIntDef( ref, - 1 ) + 1 );
  if StrToInt( ref ) > 0 then
    max := StrToIntDef( ref, max );
  while BuscaUmDadoSqlAsInteger( 'Select cast(count(*) as integer) as conta from    PRD0000 where PRD_REFER = ' + qStr( FormataRefer( StrZero( max, 5 ) ) ) + ConcatSE( ' and ', DBInicio.ExclusivoSql( 'PRODUTOS' ) ) ) > 0 do
    Inc( max );
  CdsProdutosPRD_REFER.AsString := FormataRefer( StrZero( max, 5 ) );

  // StrZero(dbInicio.GetNextSequence('GEN_PRD_CODIGO'),5);
  // CdsProdutosPRD_CODIGO.AsString := IntToStr(dbInicio.GetNextSequence('GEN_PRD_CODIGO'));
end;

procedure TFormProduto.CdsProdutosAfterPost( DataSet : TDataSet );
begin
  inherited;
  EdtPrd_Refer.ReadOnly := False;
  EdtPrd_Refer.Enabled := True;
  EdtPrd_Refer.TabStop := True;

end;

procedure TFormProduto.CdsProdutosAfterScroll( DataSet : TDataSet );
begin
  inherited;
  cdsMPusado.close;
  if PctrlProdutos.ActivePage = tsMPusado then
    AbrirMPusado;

  MostraFichaTecnica( True );
end;

procedure TFormProduto.dbedtPRG_MEDIDA_1Change( Sender : tObject );
begin
  inherited;
  CalculaIndiceGrade
end;

procedure TFormProduto.dbedtPRG_MEDIDA_1Exit( Sender : tObject );
begin
  CalculaIndiceGrade;
end;

procedure TFormProduto.dbedtPRG_MEDIDA_2Change( Sender : tObject );
begin
  inherited;
  CalculaIndiceGrade
end;

procedure TFormProduto.dbedtPRG_MEDIDA_2Exit( Sender : tObject );
begin
  CalculaIndiceGrade;
end;

procedure TFormProduto.dbedtPRG_MEDIDA_3Change( Sender : tObject );
begin
  inherited;
  CalculaIndiceGrade
end;

procedure TFormProduto.dbedtPRG_MEDIDA_3Exit( Sender : tObject );
begin
  CalculaIndiceGrade;
end;

procedure TFormProduto.dbedtPRG_REDUCAO_PERCENTExit( Sender : tObject );
begin
  CalculaIndiceGrade;
end;

procedure TFormProduto.CdsGradeCalcFields( DataSet : TDataSet );
begin
  if ( CdsGradePRG_PRECO.AsFloat > 0 ) then
  begin
    CdsGradeCC_PRECO.AsFloat := CdsGradePRG_PRECO.AsFloat
  end
  else
    if ( CdsProdutos.isEmpty ) then
    begin
      CdsGradeCC_PRECO.AsFloat := 0;
    end
    else
    begin
      if ( CdsGradePRG_INDICE.AsFloat <= 0 ) then
        CdsGradeCC_PRECO.AsFloat := CdsProdutosPRD_PVENDA.AsFloat
      else
        CdsGradeCC_PRECO.AsFloat := CdsGradePRG_INDICE.AsFloat * CdsProdutosPRD_PVENDA.AsFloat;

    end;
  if ( not CdsProdutos.isEmpty ) then
  begin
    CdsGradeCC_UND.AsString := CdsProdutosPRD_UND.AsString;
    CdsGradeCC_PRECO_BASE.AsFloat := CdsProdutosPRD_PVENDA.AsFloat;
  end;
end;

procedure TFormProduto.RecalculaIndicesGrade;
begin
  if not CdsGrade.Active then
    Exit;
  CdsGrade.First;
  while ( not CdsGrade.Eof ) do
  begin
    CdsGrade.Edit;
    // M2 Normal
    if ( CdsProdutosPRD_UND_GRADE_CALCULO.AsString = 'M2' ) and ( CdsGradePRG_MEDIDA_1.AsFloat <> 0 ) and ( CdsGradePRG_MEDIDA_2.AsFloat <> 0 ) and ( CdsGradePRG_MEDIDA_3.AsFloat = 0 ) then
    begin
      CdsGradePRG_INDICE.AsFloat := CdsGradePRG_MEDIDA_1.AsFloat * CdsGradePRG_MEDIDA_2.AsFloat;
      if ( CdsGradePRG_REDUCAO_PERCENT.AsFloat > 0 ) then
        CdsGradePRG_INDICE.AsFloat := CdsGradePRG_INDICE.AsFloat - ( CdsGradePRG_INDICE.AsFloat * ( CdsGradePRG_REDUCAO_PERCENT.AsFloat / 100 ) );
    end
    else
      // M2 Doido
      if ( CdsProdutosPRD_UND_GRADE_CALCULO.AsString = 'M2' ) and ( CdsGradePRG_MEDIDA_1.AsFloat <> 0 ) and ( CdsGradePRG_MEDIDA_2.AsFloat <> 0 ) and ( CdsGradePRG_MEDIDA_3.AsFloat <> 0 ) then
      begin
        CdsGradePRG_INDICE.AsFloat := ( CdsGradePRG_MEDIDA_1.AsFloat * CdsGradePRG_MEDIDA_2.AsFloat * CdsGradePRG_MEDIDA_3.AsFloat ) / 1000000;
        if ( CdsGradePRG_REDUCAO_PERCENT.AsFloat > 0 ) then
          CdsGradePRG_INDICE.AsFloat := CdsGradePRG_INDICE.AsFloat - ( CdsGradePRG_INDICE.AsFloat * ( CdsGradePRG_REDUCAO_PERCENT.AsFloat / 100 ) );
      end
      else
        // M3
        if ( CdsProdutosPRD_UND_GRADE_CALCULO.AsString = 'M3' ) and ( CdsGradePRG_MEDIDA_1.AsFloat <> 0 ) and ( CdsGradePRG_MEDIDA_2.AsFloat <> 0 ) and ( CdsGradePRG_MEDIDA_3.AsFloat <> 0 ) then
        begin
          CdsGradePRG_INDICE.AsFloat := ( CdsGradePRG_MEDIDA_1.AsFloat * CdsGradePRG_MEDIDA_2.AsFloat * CdsGradePRG_MEDIDA_3.AsFloat ) / 1000000;
          if ( CdsGradePRG_REDUCAO_PERCENT.AsFloat > 0 ) then
            CdsGradePRG_INDICE.AsFloat := CdsGradePRG_INDICE.AsFloat - ( CdsGradePRG_INDICE.AsFloat * ( CdsGradePRG_REDUCAO_PERCENT.AsFloat / 100 ) );
        end
        else
          // M2 LINEAR
          if ( CdsProdutosPRD_UND_GRADE_CALCULO.AsString = 'MT' ) and ( CdsGradePRG_MEDIDA_1.AsFloat <> 0 ) and ( CdsGradePRG_MEDIDA_2.AsFloat <> 0 ) and ( CdsGradePRG_MEDIDA_3.AsFloat <> 0 ) then
          begin
            CdsGradePRG_INDICE.AsFloat := ( ( CdsGradePRG_MEDIDA_1.AsFloat * CdsGradePRG_MEDIDA_2.AsFloat * CdsGradePRG_MEDIDA_3.AsFloat ) / 1000000 );
            if ( CdsGradePRG_REDUCAO_PERCENT.AsFloat > 0 ) then
              CdsGradePRG_INDICE.AsFloat := CdsGradePRG_INDICE.AsFloat - ( CdsGradePRG_INDICE.AsFloat * ( CdsGradePRG_REDUCAO_PERCENT.AsFloat / 100 ) );
          end
          else
            CdsGradePRG_INDICE.AsFloat := 0;
    //
    CdsGrade.ApplyUpdates( 0 );
    CdsGrade.Next;
  end;
end;

procedure TFormProduto.RichDocClick( Sender : tObject );
var
  arquivo : string;
begin
  inherited;
  arquivo := Trim( PathNewFicha ) + '\' + EdtPrd_Refer.Text + '.Rtf';
  if FileExists( arquivo ) then
    RichDoc.Lines.LoadFromFile( arquivo )

end;

procedure TFormProduto.CdsComprasCalcFields( DataSet : TDataSet );
begin
  if ( CdsComprasENF_IT_DESCTO.AsCurrency > 0 ) and ( CdsComprasENF_QTDE.AsFloat > 0 ) then
    CdsComprasDescontoAplicado.AsFloat := ( CdsComprasENF_IT_DESCTO.AsFloat / CdsComprasENF_QTDE.AsCurrency )
  else
    CdsComprasDescontoAplicado.AsCurrency := 0;
end;

procedure TFormProduto.cdsGanchoAfterOpen( DataSet : TDataSet );
begin
  inherited;
  SetValorEspiralTotal;
end;

procedure TFormProduto.CadastrarNovaGrade;

begin
  // Verificar se o produto esta selecionado
  if ( EdtRefer.Text = '' ) then
  begin
    Uteis.aviso( 'Informe o Produto antes de cadastrar a grade' );
  end
  else
  begin
    // Chama a tela de cadastro de grade
    sGradeDescricaoCadastrada := '';
    FrmCadastroGrade := TFrmCadastroGrade.Create( Application );
    try
      FrmCadastroGrade.sProdutoCodigo := RetornaProdutoReferencia( EdtRefer.Text );
      FrmCadastroGrade.edtProdutoReferencia.Text := EdtPrd_Refer.Text;
      FrmCadastroGrade.edtProdutoDescricao.Text := EdtProduto.Text;
      FrmCadastroGrade.sProdutoUnidade := 'PC';
      FrmCadastroGrade.rPrecoItem := 0;
      FrmCadastroGrade.ShowModal;
    finally
      FrmCadastroGrade.Destroy;
      FrmCadastroGrade := nil;
    end;

    CbGrade.Condicao := 'prd_codigo = ' + qStr( RetornaProdutoReferencia( EdtRefer.Text ) );

    if ( sGradeDescricaoCadastrada <> '' ) then
    begin
      CbGrade.TextoLocalizar := sGradeDescricaoCadastrada;
      CbGrade.Localizar := True;
      CbGrade.Setfocus;
    end;
  end;
end;

procedure TFormProduto.SdCadastroGradeClick( Sender : tObject );
begin
  CadastrarNovaGrade;
end;

procedure TFormProduto.sgdbEnderecamentoChange(Sender: TObject);
begin
  inherited;
  prdeRegistro.Text := sgdbEnderecamento.idRetorno;
  if not ( CdsProdutos.State in dsEditModes ) then
    CdsProdutos.Edit;
end;

procedure TFormProduto.sgdbEnderecamentoSelect(Sender: TObject);
begin
  inherited;
  prdeRegistro.Text := sgdbEnderecamento.idRetorno;
  if not ( CdsProdutos.State in dsEditModes ) then
    CdsProdutos.Edit;
end;

procedure TFormProduto.sgDBLookupCombo1MenuPesquisaClick( Sender : tObject );
var
  tcr : TFormFornecGrid;
begin
  tcr := TFormFornecGrid.Create( Self );
  try
    tcr.ShowModal;
    if tcr.iRetorno <> '' then
      CdsLotesFOR_CODIGO.AsString := tcr.iRetorno;
  finally
    FreeAndNil( tcr );
  end;

end;

procedure TFormProduto.BuscaVendas;
var
  Empresa : string;
begin
  CdsVendas.DisableControls;
  CdsVendas.close;
  if ( EdtPrd_Refer.Text <> '' ) then
  begin
    // fListaEmpresas
    if chkmultiempresa.Checked then
      Empresa := ' and t1.emp_codigo IN ( ' + fListaEmpresas.CommaText + ')'
    Else
      Empresa := ' and t1.emp_codigo = ' + QuotedStr( DBInicio.Empresa.EMP_CODIGO );

    CdsVendas.CommandText := 'select  t3.NF_EMISSAO, ' + '        t3.NF_NOTANUMBER, ' + '        t3.NF_NUM_NFE, ' + '        T1.NTP_CFOP, ' + '        t3.PED_CODIGO, ' + '        t3.CLI_CODIGO, ' + '        t2.CLI_RAZAO, ' + '        t1.NF_QTDE, ' + '        t1.NF_PRECO, ' + '        p.prdl_lote,  ' + '        CAST((t1.NF_QTDE * t1.NF_PRECO) AS NUMERIC(18,4)) as TOTAL, ' +
      '        CAST( CASE WHEN T1.NF_IPIALIQ > 0 THEN (t1.NF_PRECO * (T1.NF_IPIALIQ / 100)) ELSE 0 END AS NUMERIC(18,4)) AS VALOR_IPI, ' + '        CAST( CASE WHEN T1.NF_VLSUBST > 0 THEN (T1.NF_VLSUBST / t1.NF_QTDE) ELSE 0 END AS NUMERIC(18,4)) AS VALOR_ST, ' + '        CAST( CAST((t1.NF_QTDE * t1.NF_PRECO) AS NUMERIC(18,4)) + ' + '              CAST( CASE WHEN T1.NF_IPIALIQ > 0 ' + '                         THEN (t1.NF_PRECO * (T1.NF_IPIALIQ / 100)) ' + '                         ELSE 0 ' +
      '                    END AS NUMERIC(18,4)) + ' + '              CAST( CASE WHEN T1.NF_VLSUBST > 0 ' + '                         THEN (T1.NF_VLSUBST / t1.NF_QTDE) ' + '                         ELSE 0 ' + '                    END AS NUMERIC(18,4)) AS NUMERIC(18,4)) AS TOTAL_COM_IMPOSTOS, ' + ' t3.emp_codigo ' + 'from  NF_IT01 t1  ' + '      join opE0000 D on (D.OPE_TIPO_OPERACAO IN (''V'',''O''))' +
      '      join NF0001 t3 on (t3.NF_NOTANUMBER = t1.NF_IT_NOTANUMER and t3.emp_codigo = t1.emp_codigo AND NF_TIPONOTA =' + QuotedStr( CdsProdutosPRD_PRODSERV.AsString ) + ')  and (T3.OPE_CODIGO = D.OPE_CODIGO)' + '      join CLI0000 t2 on (t2.CLI_CODIGO = t3.CLI_CODIGO) ' + '      left outer join prd_lote p ON (p.prdl_registro = t1.prdl_registro)' + 'where t1.PRD_CODIGO = ' + QuotedStr( CdsProdutosPRD_CODIGO.AsString ) + ' and NF_VENDA_FATURADA = ''S''    ' + '      and t3.NF_EMISSAO BETWEEN '
      + DateToSql( EditDataI.date ) + ' and ' + DateToSql( EditDataF.date ) + Empresa +
    // VENDA DE KITS
      ' union all ' + ' select  t3.NF_EMISSAO, ' + '        t3.NF_NOTANUMBER, ' + '        t3.NF_NUM_NFE, ' + '        0, ' + '        t3.PED_CODIGO, ' + '        t3.CLI_CODIGO, ' + '        t2.CLI_RAZAO, ' + '        t1.prf_QTDE *it.prf_QTDE, ' + '        t1.prf_PRECO, ' + '        p.prdl_lote,  ' + '         CAST((t1.prf_QTDE*it.prf_QTDE * t1.prf_PRECO) AS NUMERIC(18,4)) as TOTAL,  ' +
      '         CAST( CASE WHEN T1.PRF_IPIALIQ > 0 THEN (t1.prf_PRECO * (T1.PRF_IPIALIQ / 100)) ELSE 0 END AS NUMERIC(18,4)) AS VALOR_IPI , ' + '        CAST( CASE WHEN T1.PRF_VALOR_ST > 0 THEN (T1.PRF_VALOR_ST / t1.prf_QTDE*it.prf_QTDE ) ELSE 0 END AS NUMERIC(18,4)) AS VALOR_ST , ' + '         CAST( CAST((t1.prf_QTDE * t1.prf_PRECO) AS NUMERIC(18,4)) +  ' + '             CAST( CASE WHEN T1.PRF_IPIALIQ > 0  ' + '                        THEN (t1.prf_PRECO * (T1.PRF_IPIALIQ / 100)) ' +
      '                         ELSE 0 ' + '                    END AS NUMERIC(18,4)) + ' + '              CAST( CASE WHEN T1.PRF_VALOR_ST > 0  ' + '                          THEN (T1.PRF_VALOR_ST / (t1.prf_QTDE*it.prf_QTDE) ) ' + '                         ELSE 0 ' + '                    END AS NUMERIC(18,4)) AS NUMERIC(18,4)) AS TOTAL_COM_IMPOSTOS, ' + ' t3.emp_codigo ' + 'from  NF0001 t3  ' + '      join opE0000 D on (D.OPE_TIPO_OPERACAO IN (''V'',''O''))' +
      '   join  PED_IT01 t1  on (t3.ped_codigo = t1.ped_codigo and T1.emp_CODIGO = t3.emp_CODIGO  and (T3.OPE_CODIGO = D.OPE_CODIGO) )' + '   join PED_IT01 it on (it.PRF_REGISTRO = t1.PRF_REGISTRO_VINCULADO) ' + '   join CLI0000 t2 on (t2.CLI_CODIGO = t3.CLI_CODIGO) ' + '   left outer join prd_lote p ON (p.prdl_registro = t1.prdl_registro)' + 'where t1.PRD_CODIGO = ' + QuotedStr( CdsProdutosPRD_CODIGO.AsString ) + '  and t1.PRF_REGISTRO_VINCULADO > 0 ' + ' and NF_VENDA_FATURADA = ''S''    ' +
      '  and t3.NF_EMISSAO BETWEEN ' + DateToSql( EditDataI.date ) + ' and ' + DateToSql( EditDataF.date ) + Empresa +

      ' ORDER BY 1 DESC';

    CdsVendas.Open;
    // if CdsVendas.RecordCount > 0  then
    CdsVendas.EnableControls;
  end;
end;

procedure TFormProduto.Button1Click( Sender : tObject );
begin
  inherited;
  if cdsMPusado.isEmpty then
    Exit;

  frxMPusado.ShowReport( True )
end;

procedure TFormProduto.EditDataIExit( Sender : tObject );
begin
  if EditDataI.Text <> '  /  /    ' then
  begin
    if not TestaDataStr( EditDataI.Text ) then
      EditDataI.Setfocus;
  end;
end;

procedure TFormProduto.edMargemVendaClick( Sender : tObject );
begin
  inherited;
  CdsProdutos.Edit;
end;

procedure TFormProduto.edMargemVendaEnter( Sender : tObject );
begin
  inherited;
  PrecoEmpresaCorDBEdit;
end;

procedure TFormProduto.edMargemVendaExit( Sender : tObject );
begin
  inherited;
  if not (CdsProdutos.State in dsEditModes) then
    CdsProdutos.edit;
  CdsProdutosPRD_CUSTOCOMIPI.AsFloat := edCustoEntrada.Value;
  CdsProdutosPRD_MARGEMVENDA.AsFloat := edMargemVenda.Value;
  CdsProdutosPRD_PER_LUCRO.AsFloat := edMargemVenda.Value;
  CdsProdutosPRD_PVENDA.AsFloat := edPrecoVenda.Value;
  btnConfirmarMargem.Click;
  // DBEprecoVendaExit( Sender );
  PrecoEmpresaCorDBEdit;

end;

procedure TFormProduto.EdOperacaoCodigoExit( Sender : tObject );
begin
  inherited;
  if EdOperacaoCodigo.Text <> '' then
  begin
    edOperacao.idRetorno := EdOperacaoCodigo.Text;
    if edOperacao.idRetorno = '' then
      GeraException( 'Operação não existente' );
  end
  Else
  begin
    EdOperacaoCodigo.Clear;
    edOperacao.Clear;
  end;
end;

procedure TFormProduto.edOperacaoSelect( Sender : tObject );
begin
  inherited;
  if edOperacao.idRetorno <> '' then
  begin
    EdOperacaoCodigo.Text := edOperacao.idRetorno;
  end
  else
    EdOperacaoCodigo.Clear;
end;

procedure TFormProduto.EdAlmoxarifadoCodigoExit( Sender : tObject );
begin
  inherited;
  if EdAlmoxarifadoCodigo.Text <> '' then
  begin
    EdAlmoxarifadoCodigo.Text := StrZero( EdAlmoxarifadoCodigo.Text, 4 );
    if EdAlmoxarifadoCodigo.Text <> '0000' then
    begin
      CbAlmoxarifado.idRetorno := EdAlmoxarifadoCodigo.Text;
      if CbAlmoxarifado.idRetorno = '' then
      begin
        EdAlmoxarifadoCodigo.Clear;
        Uteis.aviso( 'Almoxarifado não localizado com o código informado' );
      end;
    end
    Else
      CbAlmoxarifado.Clear;
  end
  Else
    CbAlmoxarifado.Clear;
end;

procedure TFormProduto.edCustoEntradaClick( Sender : tObject );
begin
  inherited;
  CdsProdutos.Edit;
  PrecoEmpresaCorDBEdit;
end;

procedure TFormProduto.edCustoEntradaEnter( Sender : tObject );
begin
  inherited;
  PrecoEmpresaCorDBEdit;
end;

procedure TFormProduto.edCustoEntradaExit( Sender : tObject );
begin
  inherited;
  PrecoEmpresaCorDBEdit;
  CdsProdutos.Edit;
  CdsProdutosPRD_CUSTOCOMIPI.AsFloat := edCustoEntrada.Value;
  CdsProdutosPRD_PVENDA.AsFloat := edPrecoVenda.Value;
  CdsProdutosPRD_MARGEMVENDA.AsFloat := edMargemVenda.Value;
  DBECustoEntradaExit( Sender );
  edPrecoVenda.Value := CdsProdutosPRD_PVENDA.AsFloat;
end;


procedure TFormProduto.EditarFicha1Click( Sender : tObject );
begin
  inherited;
  if not Assigned( frmInfoComplFichaTecnica ) then
    frmInfoComplFichaTecnica := TfrmInfoComplFichaTecnica.Create( Application );
  frmInfoComplFichaTecnica.lbReferencia.Caption := EdtPrd_Refer.Text;
  frmInfoComplFichaTecnica.lbDescricao.Caption := DbePrd_Descri.Text;
  frmInfoComplFichaTecnica.lbReferenciaMP.Caption := CdsItensFichaPRD_REFER_ITENS.AsString;
  frmInfoComplFichaTecnica.lbDescricaoMP.Caption := CdsItensFichaPRD_DESCRI.AsString;
  frmInfoComplFichaTecnica.cdsFicha.Open;
  frmInfoComplFichaTecnica.cdsFicha.Locate( 'PRD_REFER;PRD_REFER_ITENS', VarArrayOf( [ EdtPrd_Refer.Text, CdsItensFichaPRD_REFER_ITENS.AsString ] ), [ ] );
  frmInfoComplFichaTecnica.cdsFicha.Edit;
  frmInfoComplFichaTecnica.Show;
end;

procedure TFormProduto.EditDataFExit( Sender : tObject );
begin
  if EditDataF.Text <> '  /  /    ' then
  begin
    if not TestaDataStr( EditDataF.Text ) then
      EditDataF.Setfocus;
  end;
end;

procedure TFormProduto.BitPesquisarClick( Sender : tObject );
begin
  BuscaVendas;
end;

procedure TFormProduto.frxMPusadoGetValue( const VarName : string; var Value : Variant );
begin
  inherited;
  if ( VarName = 'EMPRESA' ) then
    Value := DBInicio.Empresa.RAZAO
  else
    if VarName = 'REFER' then
      Value := CdsProdutosPRD_REFER.AsString
    else
      if VarName = 'PRODUTO' then
        Value := CdsProdutosPRD_DESCRI.AsString;
  if VarName = 'TITULO' then
    Value := 'Relação das Fichas Técnicas que utilizam a materia-prima ou insumo';
  // else
  // if (VarName  = 'INSCR') then
  // Value := DBInicio.Empresa.INSC_EST
end;

procedure TFormProduto.frxReport1GetValue( const VarName : String; var Value : Variant );
begin
  if ( VarName = 'Empresa' ) then
    Value := DBInicio.Empresa.RAZAO
  else
    if ( VarName = 'Filtro' ) then
      Value := 'Produto : ' + CdsProdutosPRD_REFER.AsString + '-' + CdsProdutosPRD_DESCRI.AsString + ' Emissão: ' + EditDataI.Text + ' até ' + EditDataF.Text;
end;

procedure TFormProduto.BtnRelatoriosClick( Sender : tObject );
begin
  frxReport1.ShowReport( );
end;

procedure TFormProduto.FormCreate( Sender : tObject );
var
  ano, mes, dia : Word;
begin
  inherited;
  cdsUnidade.Open;
  eNotaEntrada := Assigned( FrmEntradaNotaXml );

  fListaEmpresas := TStringList.Create;
  fListaEmpresas := ListaEmpresasPermitidas( 'PERMITE' );

  EdtPrd_Refer.MaxLength := DBInicio.Empresa.FormatoPadraoReferencia.Length;
  dsTipoProduto.DataSet := CbTipo.cds;

  wBtnEquivale := DBInicio.Empresa.wBtnEquivale;
  PathNewFicha := DBInicio.GetParametroSistema( 'PMT_PATHFICHA' );
  wBtnAltRefer := DBInicio.GetParametroSistema( 'PMT_BTN_ALT_REFER' );
  Bit_AlterarRef.Visible := wBtnAltRefer = 'S';
  Bit_AlterarRef.Enabled := wBtnAltRefer = 'S';

  wCalcularPV := DBInicio.Empresa.wCalcularPV;
  DecodeDate( date, ano, mes, dia );

  EditDataI.date := EncodeDate( ano - 1, mes, dia );
  EditDataF.date := date;
  PctrlProdutos.ActivePageIndex := 1;
  PageControl2.ActivePageIndex := 0;
  Self.Height := 635;
  Self.Width := 1083;
  if ( DBInicio.Empresa.fPmt_multTab = 'S' ) then
    tsPrecos.PageControl := nil;

  if DBInicio.GetParametroUsuario( 'USP_STAT_CUSTO' ) <> 'S' then
    DBECustoliquido.ReadOnly := True;

  if DBInicio.GetParametroUsuario( 'USP_STAT_COMISSAO' ) <> 'S' then
    DBEcomissao.ReadOnly := True;

  if DBInicio.GetParametroUsuario( 'USP_STAT_PRECO_VENDA' ) <> 'S' then
    DBEprecoVenda.ReadOnly := True;

  // if dbInicio.GetParametroUsuario('USP_STAT_MARGEM') <> 'S' then
  // DBEmargemVenda.ReadOnly := true;

  if DBInicio.GetParametroUsuario( 'USP_STAT_MARGEM_MINIMA' ) <> 'S' then
    DBEmargemOferta.ReadOnly := True;

  if DBInicio.GetParametroUsuario( 'USP_STAT_MARGEM_MINIMA' ) <> 'S' then
    DBEprecoOferta.ReadOnly := True;

  if DBInicio.Empresa.pVISUALIZA_ABA_VENDA <> 'S' then
    tsVendas.TabVisible := False;

  if DBInicio.Empresa.pVENDA_VER_CUSTO <> 'S' then
  begin
    DBECustoliquido.PasswordChar := '*';
    DBECustoEntrada.PasswordChar := '*';
    DBECustoMedio.PasswordChar := '*';
    DBECustoCredito.PasswordChar := '*';
    TabSheet4.TabVisible := False;
  end;
  pMedidas.Visible := DBInicio.Empresa.bPMT_HABILITA_MEDIDAPRD;
  if pMedidas.Visible then
  begin
    lbDesc1.Caption := BuscaUmDadoSqlAsString( 'SELECT PMT_HABILITA_MEDIDAPRD_DESC1 FROM PRMT0001 WHERE EMP_CODIGO = ' + QuotedStr( DBInicio.EMP_CODIGO ) );
    lbDesc2.Caption := BuscaUmDadoSqlAsString( 'SELECT PMT_HABILITA_MEDIDAPRD_DESC2 FROM PRMT0001 WHERE EMP_CODIGO = ' + QuotedStr( DBInicio.EMP_CODIGO ) );
    lbDesc3.Caption := BuscaUmDadoSqlAsString( 'SELECT PMT_HABILITA_MEDIDAPRD_DESC3 FROM PRMT0001 WHERE EMP_CODIGO = ' + QuotedStr( DBInicio.EMP_CODIGO ) );
    lbDesc4.Caption := BuscaUmDadoSqlAsString( 'SELECT PMT_HABILITA_MEDIDAPRD_DESC4 FROM PRMT0001 WHERE EMP_CODIGO = ' + QuotedStr( DBInicio.EMP_CODIGO ) );
  end;
  // chkEnvase.Visible := DBInicio.Empresa.PMT_HABILITAR_MRP;
  chkEnvase.Visible := DBInicio.Empresa.PMT_HABILITA_ENVASE;
  if dbInicio.Exclusivo('ENDERECO_ESTOQUE') then
  begin
    // sgdbEnderecamento.WherePersonalizado := 'WHERE' + dbinicio.ExclusivoSql('ENDERECO_ESTOQUE');
    // sgdbEnderecamento.LookupWhere := dbinicio.ExclusivoSql('ENDERECO_ESTOQUE');
    // sgdbEnderecamento.CDS.Filtered := False;
    // sgdbEnderecamento.CDS.Filter := dbinicio.ExclusivoSql('ENDERECO_ESTOQUE');
    // sgdbEnderecamento.CDS.Filtered := True;

    // nenhuma das opçoes acima funciona, funcionava, mas depois da atualização
    // do delphi alguns componentes se tornaram instáveis

    sgdbEnderecamento.FiltroTabela := dbinicio.ExclusivoSql('ENDERECO_ESTOQUE');

    sgdbEnderecamento.Refresh;

  end;
end;

procedure TFormProduto.FormDestroy( Sender : tObject );
begin
  inherited;
  // if (not assigned(FrmPedidoItem)) and (not assigned(FrmEntradaNotaXmlItem)) and (not assigned(FormNfEntrada)) and (not assigned(FormNfEntrada)) then
  // FormProduto := Nil;
end;

procedure TFormProduto.mComplementoKeyPress( Sender : tObject; var Key : Char );
begin
  if ( Key <> '#13' ) then
  begin
    Key := UpCase( Key );
  end;
end;

procedure TFormProduto.mDescricaoEtapasEnter( Sender : tObject );
begin
  inherited;
  ACBrEnterTab1.EnterAsTab := False;
end;

procedure TFormProduto.mDescricaoEtapasExit( Sender : tObject );
begin
  inherited;
  ACBrEnterTab1.EnterAsTab := True;
end;

procedure TFormProduto.miExcelClick( Sender : tObject );
begin
  inherited;
  if not ( cdsMPusado.Active ) or ( cdsMPusado.isEmpty ) then
    GeraException( 'Não Existem Registros!' );

  SaveDialog1.Filter := 'Planilha Excel |*.xls ';
  // 'Text file|*.txt|Word file|*.doc';
  SaveDialog1.Title := 'Exportar Dados';
  SaveDialog1.DefaultExt := '.xls';
  if SaveDialog1.Execute then
  begin
    Cursor := crHourGlass;
    try
      JvDBGridExcelExport1.Grid := dgMPusado;
      JvDBGridExcelExport1.FileName := SaveDialog1.FileName;
      JvDBGridExcelExport1.AutoFit := False;

      try
        JvDBGridExcelExport1.ExportGrid;
      except
        //

      end;
      ShowMessage( 'Salvo com sucesso' );
    finally
      Cursor := crDefault
    end;
  end;
end;

procedure TFormProduto.miExportalExcelClick( Sender : tObject );
var
  tcr : TfrmExportProdutoImportLeiaute;
  sTipo : string;
  bocultar : Boolean;
begin
  inherited;
  frmFiltroExportar := tfrmFiltroExportar.Create( Application );
  try
    if frmFiltroExportar.ShowModal = mrOk then
    begin
      sTipo := frmFiltroExportar.CbTipo.idRetorno;
      bocultar := frmFiltroExportar.chkOcultarInativas.Checked;

    end;

  finally
    FreeAndNil( frmFiltroExportar );
  end;
  tcr := TfrmExportProdutoImportLeiaute.Create( Self );
  try
    tcr.Tipo := sTipo;
    tcr.Inativo := bocultar;
    tcr.botao := TButton( btnExcel );
    tcr.Exportar;
  finally
    FreeAndNil( tcr );
  end;

end;

procedure TFormProduto.miImportarExcelClick( Sender : tObject );
var
  importProdutos : TfrmImporProduto;
  b : Boolean;
begin
  inherited;
  importProdutos := TfrmImporProduto.Create( Application );
  try
    Screen.Cursor := crHourGlass;
    fmAnimacao := TfmAnimacao.Create( Application );
    try
      b := importProdutos.importarExcel;
      if b then
      begin
        fmAnimacao.Show;
        fmAnimacao.Caption := 'Validando';
        importProdutos.ValidarRegistros;
      end;
    finally
      fmAnimacao.close;
    end;
    if b then
      importProdutos.ShowModal;
  finally
    Screen.Cursor := crDefault;
    FreeAndNil( importProdutos );
  end;
end;

procedure TFormProduto.miLeaiuteClick( Sender : tObject );
begin
  inherited;
  ShowMessage( 'A planilha importada deve obedecer a seguinte estrutura:' + #13 + #13 + 'A primeira linha será desconsiderada ' + #13 + '(A) Código' + #13 + '(B) Descrição ' + #13 + '(C) Unidade de Médida' + #13 + '(D) Complemento ' + #13 + '(E) NCM ' + #13 + '(F) CEST ' + #13 + '(G) Tipo: ' + #13 + '   001 se é produto do tipo Venda' + #13 + '   004 se é produto do tipo Matéria-Prima' + #13 + '(H) Grupo de produto' + #13 + '(I) Linha do produto' + #13 + '(J) Preço Custo ' + #13 + '(K) Margem '
    + #13 + '(L) Preço de venda ' + #13 + '(M) Estoque (não obrigatório) ' + #13 );
end;

procedure TFormProduto.miWordClick( Sender : tObject );
begin
  inherited;
  if not ( cdsMPusado.Active ) or ( cdsMPusado.isEmpty ) then
    GeraException( 'Não Existem Registros!' );

  SaveDialog1.Filter := 'Documento word |*.doc ';
  // 'Text file|*.txt|Word file|*.doc';
  SaveDialog1.Title := 'Exportar Dados';
  SaveDialog1.DefaultExt := '.doc';
  if SaveDialog1.Execute then
  begin
    Cursor := crHourGlass;
    try
      JvDBGridWordExport1.Grid := dgMPusado;
      JvDBGridWordExport1.FileName := SaveDialog1.FileName;

      try
        JvDBGridWordExport1.ExportGrid;
      except
        //

      end;
      ShowMessage( 'Salvo com sucesso' );
    finally
      Cursor := crDefault
    end;
  end;
end;

procedure TFormProduto.MMO_DIAMETRO_MEDIO_MEIOExit( Sender : tObject );
begin
  inherited;
  SetValores( True );
end;

procedure TFormProduto.mobservacoesMolaKeyPress( Sender : tObject; var Key : Char );
begin
  inherited;
  if Key = #13 then
    SgDbSearchCombo8.Setfocus;
end;

procedure TFormProduto.miLoteExcelClick( Sender : tObject );
var
  resul : Boolean;
begin
  inherited;
  if not ( CdsLotes.Active ) or ( CdsLotes.isEmpty ) then
    GeraException( 'Não Existem Registros!' );

  SaveDialog1.Filter := 'Planilha Excel |*.xls ';
  // 'Text file|*.txt|Word file|*.doc';
  SaveDialog1.Title := 'Exportar Dados';
  SaveDialog1.DefaultExt := '.xls';
  if SaveDialog1.Execute then
  begin
    Cursor := crHourGlass;
    CdsLotes.DisableControls;
    try
      JvDBGridExcelExport1.FileName := SaveDialog1.FileName;
      JvDBGridExcelExport1.Grid := dbgrdLote;
      try
        resul := JvDBGridExcelExport1.ExportGrid;
      except
        resul := False;
        if not resul then
          ShowMessage( 'Não foi possível exportar, tem excel instalado na máquina ?' );
      end;

      ShowMessage( 'Exportado com sucesso' );
    finally
      Cursor := crDefault;
      CdsLotes.EnableControls;
    end;
  end;
end;

procedure TFormProduto.miLoteWordClick( Sender : tObject );

var
  resul : Boolean;
begin
  inherited;
  if not ( CdsLotes.Active ) or ( CdsLotes.isEmpty ) then
    GeraException( 'Não Existem Registros!' );

  SaveDialog1.Filter := 'Word |*.doc '; // 'Text file|*.txt|Word file|*.doc';
  SaveDialog1.Title := 'Exportar Dados';
  SaveDialog1.DefaultExt := '.doc';
  if SaveDialog1.Execute then
  begin
    Cursor := crHourGlass;
    try
      JvDBGridWordExport1.FileName := SaveDialog1.FileName;
      JvDBGridWordExport1.Grid := dbgrdLote;
      try
        resul := JvDBGridWordExport1.ExportGrid;
      except
        resul := False;
        if not resul then
          ShowMessage( 'Não foi possível exportar, tem word instalado na máquina ?' );
      end;

      ShowMessage( 'Exportado com sucesso' );
    finally
      Cursor := crDefault;
    end;
  end;
end;

procedure TFormProduto.SpeedButton7Click( Sender : tObject );
var
  Value : string;

begin
  if ( not CdsProdutos.isEmpty ) then
  begin
    // Keep asking the user for their town
    repeat
      Value := InputBox( 'Código Original', 'Entre com o Código:', '' );
    until Value <> '';

    CdsCodigoOriginal.Insert;
    CdsCodigoOriginalPRD_CODIGO.AsString := CdsProdutosPRD_CODIGO.AsString;
    CdsCodigoOriginalPRDCO_CODIGO_ORIGINAL.AsString := UpperCase( Value );
    CdsCodigoOriginal.Post;
    CdsCodigoOriginal.ApplyUpdates( 0 );

    // CdsCodigoOriginal.Refresh;
    CdsCodigoOriginal.Close;
    CdsCodigoOriginal.Open;

  end
  else
  begin
    Uteis.aviso( 'Nenhum produto selecionado' );
  end;
end;

procedure TFormProduto.SpeedButton8Click( Sender : tObject );
begin
  if ( not CdsProdutos.isEmpty ) then
  begin
    if ( not CdsCodigoOriginal.isEmpty ) then
    begin
      if ( Uteis.confirmacao( Pchar( 'Confirma a exclusão do código : ' + CdsCodigoOriginalPRDCO_CODIGO_ORIGINAL.AsString ) ) = Mryes ) then
      begin
        CdsCodigoOriginal.Delete;
        CdsCodigoOriginal.ApplyUpdates( 0 );
      end;
    end
    else
    begin
      Uteis.aviso( 'Nenhum código para ser excluído' );
    end;
  end
  else
  begin
    Uteis.aviso( 'Nenhum produto selecionado' );
  end;
end;

procedure TFormProduto.spMargemVendaClick( Sender : tObject );
begin
  inherited;
  pnMargem.Top := PgCtrl_Produtos.Top;
  pnMargem.Left := gbMargens.Left;
  pnMargem.Parent := FormProduto;
  AnimateWindow( pnMargem.Handle, 500, AW_HOR_POSITIVE or AW_SLIDE or AW_ACTIVATE );
  pnMargem.Visible := True;
end;

procedure TFormProduto.btnSalvarArquivoClick( Sender : tObject );
begin
  if ( CdsProdutos.isEmpty ) then
  begin
    Uteis.aviso( 'Selecione um produto' );
  end
  else
    if ( FilenameArquivo.FileName = '' ) then
    begin
      Uteis.aviso( 'Informe o Arquivo' );
    end
    else
    begin
      CdsArquivo.Insert;
      CdsArquivoARQ_TIPO.AsString := ExtractFileExt( FilenameArquivo.FileName );
      CdsArquivoARQ_TIPO_TABELA.AsString := 'PRD';
      CdsArquivoARQ_REGISTRO_TABELA.AsString := CdsProdutosPRD_CODIGO.AsString;
      if ( EdDescricaoArquivo.Text <> '' ) then
        CdsArquivoARQ_DESCRICAO.AsString := EdDescricaoArquivo.Text
      else
        CdsArquivoARQ_DESCRICAO.AsString := ExtractFileName( FilenameArquivo.FileName );
      CdsArquivoARQ_NOME_ARQUIVO.AsString := ExtractFileName( FilenameArquivo.FileName );
      CdsArquivoARQ_DATA.AsDateTime := now;
      CdsArquivoARQ_ARQUIVO.LoadFromFile( FilenameArquivo.FileName );
      CdsArquivo.ApplyUpdates( 0 );
      // CdsArquivo.Refresh;
      CdsArquivo.Close;
      CdsArquivo.Open;
      FilenameArquivo.Clear;
      EdDescricaoArquivo.Clear;
    end;

end;

procedure TFormProduto.AbrirArquivo;
var
  PathBuf : array [ 0 .. 255 ] of Char;
  TempPath : string;
begin
  if ( not CdsArquivo.isEmpty ) then
  begin
    // Recupera o diretorio TEMP do windows
    // GetTempPath(SizeOf(PathBuf), PathBuf);
    // Monta o path completo para o nosso diretório temporário
    TempPath := DBInicio.Versao.PATH + '\temp\';
    // TempPath := StrPas(PathBuf) + 'Blobs';
    // Verifica se o diretório temporário já existe, caso contrário cria.
    if not DirectoryExists( TempPath ) then
      if not ForceDirectories( TempPath ) then
      begin
        MessageDlg( 'Não foi possível criar o diretório temporário!', mtError, [ mbOK ], 0 );
        SysUtils.Abort;
      end;
    TempPath := TempPath + '\' + CdsArquivoARQ_NOME_ARQUIVO.AsString;
    // Grava o blob no arquivo temporario
    CdsArquivoARQ_ARQUIVO.SaveToFile( TempPath );
    // Chama a aplicação associada à extensão do arquivo
    ShellExecute( Self.Handle, 'open', Pchar( TempPath ), nil, nil, SW_SHOWNORMAL )

  end;
end;

procedure TFormProduto.DBGrid7DblClick( Sender : tObject );
begin
  AbrirArquivo;
end;

procedure TFormProduto.DBGrid7KeyPress( Sender : tObject; var Key : Char );
begin
  if ( Key = #13 ) then
  begin
    Key := #0;
    AbrirArquivo;
  end;
end;

procedure TFormProduto.AbrirArquivo1Click( Sender : tObject );
begin
  AbrirArquivo;
end;

procedure TFormProduto.AbrirMPusado;
begin
  qMPusado.close;
  qMPusado.CommandText := SQLDEF( 'PRODUTOS', 'SELECT pr.PRD_REFER, pr.PRD_DESCRI, pr.PRD_UND, ft.FTC_CRIACAO, FTI_UC, fti_perda ' + ' FROM FTC_IT01 fti JOIN PRD0000 pr ON (pr.PRD_REFER = fti.PRD_REFER) ' + ' JOIN FTC0000 ft ON (ft.PRD_REFER = fti.PRD_REFER) ', ' WHERE  PRD_REFER_ITENS  =  ' + QuotedStr( CdsProdutosPRD_REFER.AsString ), '1', 'ft.' );
  cdsMPusado.Open;
end;

procedure TFormProduto.AcoesOperacoes( Sender : tObject );
var
  mtag : Integer;
  tcr : TfmEngenhariaProcesso;
  flg : Boolean;
  cod : Integer;
begin
  mtag := ( Sender as tComponent ).TAG;
  tcr := TfmEngenhariaProcesso.Create( Self );
  try
    cod := cdsProcessos.FieldByName( 'ENG_CODIGO' ).AsInteger;
    tcr.PRD_CODIGO := CdsProdutos.FieldByName( 'PRD_CODIGO' ).AsString;

    case mtag of
      1 :
        begin
          tcr.Sequencia := MaiorSequencia( cdsProcessos ) + 1;
          flg := tcr.novo( 'Nova operação no processo' );
        end;
      2 : flg := tcr.edita( IntToStr( cod ), 'Edição da operação' );
      3 : flg := tcr.exclui( IntToStr( cod ), 'Exclusão da operação' );
    end;
    OpenEngenharia;
  finally
    tcr.close;
    FreeAndNil( tcr );
  end;
end;

procedure TFormProduto.ExcluirArquivo;
begin
  if ( not CdsArquivo.isEmpty ) then
  begin
    if ( Uteis.confirmacao( 'Confirma a exclusão do Arquivo ' ) = Mryes ) then
    begin
      CdsArquivo.Delete;
      CdsArquivo.ApplyUpdates( 0 );
    end;
  end;

end;

procedure TFormProduto.ExcluirArquivo1Click( Sender : tObject );
begin
  ExcluirArquivo;
end;

procedure TFormProduto.btnCadastroEnderecamentoClick( Sender : tObject );
begin
  if not Assigned( FrmProdutoEnderecamento ) then
    FrmProdutoEnderecamento := TFrmProdutoEnderecamento.Create( Application );
  FrmProdutoEnderecamento.Visible := False;
  FrmProdutoEnderecamento.BotoesAcesso;
  FrmProdutoEnderecamento.ShowModal;
  sgdbEnderecamento.Refresh;
end;

procedure TFormProduto.btncomprasClick( Sender : tObject );
begin
  inherited;
  MostraCompras;
end;

procedure TFormProduto.btnConfirmarMargemClick( Sender : tObject );
var
  atualiza, porFora : Boolean;
  cd : Integer;
begin
  inherited;
  if not ( CdsProdutos.State IN dsEditModes ) then
    CdsProdutos.Edit;

  if DBInicio.Exclusivo( 'PRODUTO_PRECO_EMPRESA' ) then
  begin
    CdsProdutosPRD_CUSTOCOMIPI.AsFloat := edCustoEntrada.Value;
    CdsProdutosPRD_PVENDA.AsFloat := edPrecoVenda.Value;
    // CdsProdutosPRD_MARGEMVENDA.AsFloat := edPrecoVenda.Value;
  end;

  porFora := DBInicio.GetParametroSistema( 'PMT_METODO_CALCULO_PRECO' ) = '0';
  // 0 = por fora / 1 = por dentro
  cd := StrToInt( '-' + DBInicio.GetParametroSistema( 'PMT_QTDE_DEC_PED' ) );
  if porFora then
  begin
    CdsProdutosPRD_MARGEMVENDA.AsFloat := ( CdsProdutosPRD_PER_ICMS.AsFloat + CdsProdutosPRD_PER_PISCONFINS.AsFloat + CdsProdutosPRD_PER_IPI.AsFloat + CdsProdutosPRD_PER_FRETE.AsFloat + CdsProdutosPRD_PER_OUTROS.AsFloat + CdsProdutosPRD_PER_LUCRO.AsFloat );
  end
  else
  begin
    CdsProdutosPRD_MARGEMVENDA.AsFloat := (1 - ( CdsProdutosPRD_PER_ICMS.AsFloat + CdsProdutosPRD_PER_PISCONFINS.AsFloat + CdsProdutosPRD_PER_IPI.AsFloat + CdsProdutosPRD_PER_FRETE.AsFloat + CdsProdutosPRD_PER_OUTROS.AsFloat + CdsProdutosPRD_PER_LUCRO.AsFloat )/100) * 100;
  end;
  AnimateWindow( pnMargem.Handle, 500, AW_HOR_NEGATIVE or AW_HIDE );
  pnMargem.Visible := False;

  atualiza := not DBInicio.Empresa.wPMT_NAO_AUTO_PVENDA;
  if not atualiza then
    atualiza := ( MessageDlg( 'O sistema está configurado para não atualizar o preço venda. Você gostaria de atualizar memso assim?', mtConfirmation, [ mbYes, mbNo ], 0 ) = Mryes );

  if atualiza and porFora then
  begin
    // calcular conforme parametro -> 0 = custo liquido, 1 = custo entrada   2 = custo medio
    if wCalcularPV = 0 then
    begin
      if CdsProdutosPRD_PCUSTO.AsCurrency > 0 then
        CdsProdutosPRD_PVENDA.AsCurrency := RoundTo( ( ( CdsProdutosPRD_PCUSTO.AsCurrency + ( CdsProdutosPRD_PCUSTO.AsCurrency * CdsProdutosPRD_MARGEMVENDA.AsCurrency / 100 ) ) ), DBInicio.Empresa.fPMT_QTDE_DEC_PED * - 1 )
      else
        // se preço de custo = 0 então calcula o preço de custo
        if CdsProdutosPRD_MARGEMVENDA.AsCurrency > 0 then
          CdsProdutosPRD_PCUSTO.AsCurrency := CdsProdutosPRD_PVENDA.AsCurrency / ( CdsProdutosPRD_MARGEMVENDA.AsCurrency / 100 + 1 );
    end
    else
      if wCalcularPV = 1 then
      begin
        if CdsProdutosPRD_CUSTOCOMIPI.AsCurrency > 0 then
          CdsProdutosPRD_PVENDA.AsCurrency := RoundTo( ( ( CdsProdutosPRD_CUSTOCOMIPI.AsCurrency + ( CdsProdutosPRD_CUSTOCOMIPI.AsCurrency * CdsProdutosPRD_MARGEMVENDA.AsCurrency / 100 ) ) ), DBInicio.Empresa.fPMT_QTDE_DEC_PED * - 1 )
        else
          // se preço de custo = 0 então calcula o preço de custo
          if CdsProdutosPRD_MARGEMVENDA.AsCurrency > 0 then
            CdsProdutosPRD_CUSTOCOMIPI.AsCurrency := CdsProdutosPRD_PVENDA.AsCurrency / ( CdsProdutosPRD_MARGEMVENDA.AsCurrency / 100 + 1 );

      end
      else
        if wCalcularPV = 2 then // custo médio
        begin
          if CdsProdutosPRD_PMEDIO.AsCurrency > 0 then
            CdsProdutosPRD_PVENDA.AsCurrency := RoundTo( ( ( CdsProdutosPRD_PMEDIO.AsCurrency + ( CdsProdutosPRD_PMEDIO.AsCurrency * CdsProdutosPRD_MARGEMVENDA.AsCurrency / 100 ) ) ), DBInicio.Empresa.fPMT_QTDE_DEC_PED * - 1 )
          else
            // se preço de custo = 0 então calcula o preço de custo
            if CdsProdutosPRD_MARGEMVENDA.AsCurrency > 0 then
              CdsProdutosPRD_PMEDIO.AsCurrency := CdsProdutosPRD_PVENDA.AsCurrency / ( CdsProdutosPRD_MARGEMVENDA.AsCurrency / 100 + 1 );
        end;
  end
  else
    if atualiza and not porFora then // o cálculo é feito por dentro
    begin
      if wCalcularPV = 0 then
        CdsProdutosPRD_PVENDA.AsCurrency := RoundTo(CdsProdutosPRD_PCUSTO.AsCurrency + ((CdsProdutosPRD_PCUSTO.AsCurrency / 100) *  CdsProdutosPRD_MARGEMVENDA.AsCurrency), cd )
      else
        if wCalcularPV = 1 then
          CdsProdutosPRD_PVENDA.AsCurrency := RoundTo( CdsProdutosPRD_CUSTOCOMIPI.AsCurrency + ((CdsProdutosPRD_CUSTOCOMIPI.AsCurrency / 100) *  CdsProdutosPRD_MARGEMVENDA.AsCurrency), cd )
        else
          if wCalcularPV = 2 then
            CdsProdutosPRD_PVENDA.AsCurrency := RoundTo( CdsProdutosPRD_PMEDIO.AsCurrency + ((CdsProdutosPRD_PMEDIO.AsCurrency / 100) *  CdsProdutosPRD_MARGEMVENDA.AsCurrency), cd );

    {
      if wCalcularPV = 0 then
        CdsProdutosPRD_MARGEMVENDA.AsCurrency := (CdsProdutosPRD_PCUSTO.AsCurrency / CdsProdutosPRD_PVENDA.AsCurrency) * 100
      else
        if wCalcularPV = 1 then
          CdsProdutosPRD_MARGEMVENDA.AsCurrency := (CdsProdutosPRD_CUSTOCOMIPI.AsCurrency / CdsProdutosPRD_PVENDA.AsCurrency) * 100
        else
          if wCalcularPV = 2 then
            CdsProdutosPRD_MARGEMVENDA.AsCurrency := (CdsProdutosPRD_PMEDIO.AsCurrency / CdsProdutosPRD_PVENDA.AsCurrency) * 100 ;
            }
    end;
  if DBInicio.Exclusivo( 'PRODUTO_PRECO_EMPRESA' ) then
  begin
    edCustoEntrada.Value := CdsProdutosPRD_CUSTOCOMIPI.AsFloat;
    edPrecoVenda.Value := CdsProdutosPRD_PVENDA.AsFloat;
    edMargemVenda.Value := CdsProdutosPRD_PER_LUCRO.AsFloat;
    // cdsProdutos.Cancel;
  end;


end;

procedure TFormProduto.btnCopiarClick( Sender : tObject );
var
  tcr : TfrmCopiarEngenharia;
begin
  tcr := TfrmCopiarEngenharia.Create( Application );
  tcr.PRD_CODIGOOrig := CdsProdutos.FieldByName( 'PRD_CODIGO' ).AsString;
  tcr.Prd_referOrig := CdsProdutos.FieldByName( 'PRD_REFER' ).AsString;
  try
    tcr.ShowModal;
  finally
    FreeAndNil( tcr );
  end;
end;

procedure TFormProduto.btnCriarParamClick( Sender : tObject );
var
  mtag : Integer;
  tcr : TfmEspecificacao;
  cod : Integer;
begin
  mtag := ( Sender as tComponent ).TAG;
  tcr := TfmEspecificacao.Create( Self );
  try
    cod := cdsEspecifica.FieldByName( 'ESP_CODIGO' ).AsInteger;
    tcr.Eng_Codigo := cdsProcessosENG_CODIGO.AsInteger;
    case mtag of
      1 : tcr.novo( 'Novo parâmetro' );

      2 : tcr.edita( IntToStr( cod ), 'Edição do parâmetro' );
      3 : tcr.exclui( IntToStr( cod ), 'Exclusão do parâmetro' );
    end;
    OpenEspecificacoes( cdsProcessosENG_CODIGO.AsInteger );
  finally
    tcr.close;
    FreeAndNil( tcr );
  end;

end;

procedure TFormProduto.btnEquipamentosClick( Sender : tObject );
var
  tcr : TfmEquip;
  flg : Boolean;
begin
  inherited;
  tcr := TfmEquip.Create( Self );
  try
    flg := tcr.novo( 'Novo equipamento' );
  finally
    tcr.close;
    FreeAndNil( tcr );
  end;
end;

procedure TFormProduto.btnExcelClick( Sender : tObject );
var
  Ponto : TPoint;
begin
  inherited;
  Ponto := btnExcel.ClientToScreen( Point( 0, btnExcel.Height ) );
  mnuListar.Popup( Ponto.X, Ponto.Y );
end;

procedure TFormProduto.btnIndustrializacaoClick( Sender : tObject );
begin
  inherited;
  MostraIndustrializacao;
end;

procedure TFormProduto.btnMP_ExpotarClick( Sender : tObject );
begin
  inherited;
  miExcel.Click;
end;

procedure TFormProduto.btnNovaOperacaoClick( Sender : tObject );
var
  tcr : TfmOperacoes;
  flg : Boolean;
begin
  inherited;
  tcr := TfmOperacoes.Create( Self );
  try
    tcr.novo( 'Nova operação' );
  finally
    tcr.close;
    FreeAndNil( tcr );
  end;
end;

procedure TFormProduto.Listagem1Click( Sender : tObject );
var
  tcr : tFrmExportProdutoExcel;
  sTipo : string;
  bocultar : Boolean;
begin
  frmFiltroExportar := tfrmFiltroExportar.Create( Application );
  try
    if frmFiltroExportar.ShowModal = mrOk then
    begin
      sTipo := frmFiltroExportar.CbTipo.idRetorno;
      bocultar := frmFiltroExportar.chkOcultarInativas.Checked;

    end;

  finally
    FreeAndNil( frmFiltroExportar );
  end;

  tcr := tFrmExportProdutoExcel.Create( Self );
  try
    tcr.Tipo := sTipo;
    tcr.Inativo := bocultar;
    tcr.botao := TButton( btnExcel );
    tcr.Exportar;
  finally
    FreeAndNil( tcr );
  end;
end;

procedure TFormProduto.N2CdigosdoFornecedor1Click( Sender : tObject );
var
  tcr : tFrmExportCodForn;
  sTipo : string;
  bocultar : Boolean;
begin
  frmFiltroExportar := tfrmFiltroExportar.Create( Application );
  try
    if frmFiltroExportar.ShowModal = mrOk then
    begin
      sTipo := frmFiltroExportar.CbTipo.idRetorno;
      bocultar := frmFiltroExportar.chkOcultarInativas.Checked;

    end;

  finally
    FreeAndNil( frmFiltroExportar );
  end;

  tcr := tFrmExportCodForn.Create( Self );
  try
    tcr.Tipo := sTipo;
    tcr.Inativo := bocultar;
    tcr.botao := TButton( btnExcel );
    tcr.Exportar;
  finally
    FreeAndNil( tcr );
  end;
end;

procedure TFormProduto.N3Mesmoleaiutedeimportao1Click( Sender : tObject );
var
  tcr : TfrmExportProdutoImportLeiaute;
  sTipo : string;
  bocultar : Boolean;
begin
  inherited;
  frmFiltroExportar := tfrmFiltroExportar.Create( Application );
  try
    if frmFiltroExportar.ShowModal = mrOk then
    begin
      sTipo := frmFiltroExportar.CbTipo.idRetorno;
      bocultar := frmFiltroExportar.chkOcultarInativas.Checked;

    end;

  finally
    FreeAndNil( frmFiltroExportar );
  end;
  tcr := TfrmExportProdutoImportLeiaute.Create( Self );
  try
    tcr.Tipo := sTipo;
    tcr.Inativo := bocultar;
    tcr.botao := TButton( btnExcel );
    tcr.Exportar;
  finally
    FreeAndNil( tcr );
  end;

end;

procedure TFormProduto.dAfterInsert( DataSet : TDataSet );
begin
  CdsCodigoOriginalPRDCO_REGISTRO.AsInteger := DBInicio.GetNextSequence( 'gen_prd_codigooriginal_id' );
  CdsCodigoOriginalPRD_CODIGO.AsString := CdsProdutosPRD_CODIGO.AsString;
  grCodCli.SelectedField := CdsCodigoOriginalPRDCO_CODIGO_ORIGINAL;

end;

procedure TFormProduto.grCodCliEditButtonClick( Sender : tObject );
var
  tcr : tFrmPesquisaClientes;
begin
  tcr := tFrmPesquisaClientes.Create( Self );
  try
    tcr.ShowModal;
    if tcr.ModalResult = mrOk then
    begin
      if CdsCodigoOriginal.State = dsBrowse then
        CdsCodigoOriginal.Edit;
      CdsCodigoOriginalCLI_CODIGO.AsString := tcr.idRetorno;
    end;
  finally
    FreeAndNil( tcr );
  end;
end;

procedure TFormProduto.CdsCodigoOriginalBeforePost( DataSet : TDataSet );
begin
  if CdsCodigoOriginalPRDCO_CODIGO_ORIGINAL.AsString = '' then
    GeraException( 'Informe o código original do produto!' )
  Else
    if CdsCodigoOriginal.State = dsInsert then
      If DBInicio.BuscaUmDadoSqlAsInteger( 'Select cast(count(*) as integer) as conta from    PRD_CODIGOORIGINAL where PRD_CODIGO=' + qStr( CdsProdutosPRD_CODIGO.AsString ) + ' and PRDCO_CODIGO_ORIGINAL=' + qStr( CdsCodigoOriginalPRDCO_CODIGO_ORIGINAL.AsString ) ) > 0 then
        GeraException( 'Código original do produto já informado!' )
end;

procedure TFormProduto.CdsCodigoOriginalAfterPost( DataSet : TDataSet );
begin
  CdsCodigoOriginal.ApplyUpdates( 0 );
end;

procedure TFormProduto.CdsCodigoOriginalBeforeDelete( DataSet : TDataSet );
begin
  if MessageDlg( 'Confirma a Exclusão ?', mtConfirmation, [ mbYes, mbNo ], 0 ) <> Mryes then
    Abort;
end;

procedure TFormProduto.CdsCodigoOriginalAfterDelete( DataSet : TDataSet );
begin
  CdsCodigoOriginal.ApplyUpdates( 0 );
end;

procedure TFormProduto.CdsCodigoOriginalCLI_CODIGOSetText( Sender : TField; const Text : string );
begin
  inherited;
  Sender.AsString := StrZero( StrToIntDef( Text, 0 ), 5 );

end;

procedure TFormProduto.CdsCodigoOriginalCLI_CODIGOValidate( Sender : TField );
begin
  CdsCodigoOriginalCLI_RAZAO.AsString := DBInicio.BuscaUmDadoSqlAsString( 'SELECT CLI_RAZAO FROM CLI0000 WHERE CLI_CODIGO=' + qStr( CdsCodigoOriginalCLI_CODIGO.AsString ) );
  if CdsCodigoOriginalCLI_RAZAO.AsString = '' then
    GeraException( 'Cliente não localizado!' );
end;

procedure TFormProduto.BtnDuplicarClick( Sender : tObject );
var
  tcr : tFrmTelaCopiaProduto;
begin
  tcr := tFrmTelaCopiaProduto.Create( Self );
  try
    tcr.Edit1.Text := EdtPrd_Refer.Text;
    tcr.Edit4.Text := DbePrd_Descri.Text;
    tcr.ShowModal;
    if tcr.ModalResult = mrOk then
    begin
      // CdsProdutos.Refresh;
      CdsProdutos.Close;
      CdsProdutos.Open;
      EdtPrd_Refer.Text := tcr.Edit2.Text;
      EdtPrd_ReferExit( nil );
    end;
  finally
    FreeAndNil( tcr );
  end;
end;

procedure TFormProduto.CdsCodigoOriginalBeforeInsert( DataSet : TDataSet );
begin
  DesabilitaBotoes;
end;

procedure TFormProduto.CdsCodigoOriginalBeforeEdit( DataSet : TDataSet );
begin
  DesabilitaBotoes;
end;

procedure TFormProduto.BotoesAcesso;

begin

  if Assigned( FormProduto ) then
  begin
    btnExcel.Enabled := Uteis.AcessoUsuario( 'CadastrosProdutos', DBInicio.Usuario.CODIGO, FormProduto ).Relatorio;
    miExportalExcel.Enabled := Uteis.AcessoUsuario( 'CadastrosProdutos', DBInicio.Usuario.CODIGO, FormProduto ).Relatorio;
    Bit_novo.Enabled := Uteis.AcessoUsuario( 'CadastrosProdutos', DBInicio.Usuario.CODIGO, FormProduto ).Incluir;
    Bit_Excluir.Enabled := Uteis.AcessoUsuario( 'CadastrosProdutos', DBInicio.Usuario.CODIGO, FormProduto ).Exluir;
    Bit_Relatorio.Enabled := Uteis.AcessoUsuario( 'CadastrosProdutos', DBInicio.Usuario.CODIGO, FormProduto ).Relatorio;
    DsProdutos.AutoEdit := Uteis.AcessoUsuario( 'CadastrosProdutos', DBInicio.Usuario.CODIGO, FormProduto ).Alterar;
  end;
end;

procedure TFormProduto.AbrirSaldoProdutos;
begin
  CdsSaldos.DisableControls;
  CdsSaldos.close;
  if ( not CdsProdutos.isEmpty ) then
  begin
    CdsSaldos.CommandText := 'SELECT * FROM pCd_kardex_saldo(' + qStr( DBInicio.Empresa.EMP_CODIGO ) + ',' + qStr( CdsProdutosPRD_CODIGO.AsString ) + ',null)';
    CdsSaldos.Open;
  end;
  CdsSaldos.EnableControls;
end;

procedure TFormProduto.RecalculaPrecosFichaTecnica;
var
  Sql1, Sql2, Seleciona, Ordem : string;
  wPrecoUnit, wPreco_Mprima, wPreco_EntradaUnit, wPrecoTotal, wPreco_EntradaTotal, wValor_Mobra, wPrecoFinal, wIndice, wFormula, dBaseFormula, wConsumo : double;

begin
  Sql1 := 'SELECT F2.PRD_REFER,F2.PRD_REFER_ITENS,F2.FTI_UC,F2.FTI_MODE1,P1.PRD_PCUSTO, P1.PRD_CUSTOCOMIPI, P1.PRD_MARGEMVENDA ' + ' FROM FTC_IT01 F2 ';
  Sql2 := ' JOIN PRD0000 P1 ON (P1.PRD_REFER = F2.PRD_REFER_ITENS) ';
  Seleciona := ' WHERE F2.PRD_REFER = ' + QuotedStr( EdtPrd_Refer.Text ) + ' AND F2.PRD_REFER <> ''000000'' ';; // +''' AND F2.FTI_MODE1 = ''X''';
  Ordem := ' F2.PRD_REFER,F2.PRD_REFER_ITENS';
  qAuxF.close;
  qAuxF.sql.Text := SQLDEF( 'PRODUTOS', Sql1 + Sql2, Seleciona, Ordem, 'F2.' );
  qAuxF.Open;
  qAuxF.First;
  While not qAuxF.Eof do
  begin
    wConsumo := qAuxF.FieldByName( 'FTI_UC' ).AsCurrency;
    wPrecoUnit := qAuxF.FieldByName( 'PRD_PCUSTO' ).AsCurrency * qAuxF.FieldByName( 'FTI_UC' ).AsCurrency;
    wPreco_EntradaUnit := qAuxF.FieldByName( 'PRD_CUSTOCOMIPI' ).AsCurrency * qAuxF.FieldByName( 'FTI_UC' ).AsCurrency;
    wPreco_Mprima := wPreco_Mprima + wPrecoUnit;
    wPrecoTotal := wPrecoTotal + wPrecoUnit;
    wPreco_EntradaTotal := wPreco_EntradaTotal + wPreco_EntradaUnit;
    qAuxF.Next;
  end;
  if qAuxF.RecordCount > 0 then
  begin
    dBaseFormula := DBInicio.BuscaUmDadoSqlAsCurrency( SQLDEF( 'PRODUTOS', ' SELECT FTC_BASEFORMULA FROM FTC0000 f ', 'WHERE PRD_REFER  = ' + QuotedStr( EdtPrd_Refer.Text ), '', '' ) );
    if dBaseFormula > 0 then
    begin
      wPreco_EntradaTotal := wPreco_EntradaTotal / dBaseFormula;
      wPrecoTotal := wPrecoTotal / dBaseFormula;
    end;
    { Aplica formula de mil no parametro }

    qAux.close;
    qAux.sql.Text := SQLDEF( 'PARAMETROS', 'SELECT P1.PMT_EMPRESACLASSE,P1.PMT_UNFORMULA FROM PRMT0001 P1', '', 'P1.EMP_CODIGO', 'P1.' );
    qAux.Open;
    if not qAux.isEmpty then
      wFormula := qAux.FieldByName( 'PMT_UNFORMULA' ).AsCurrency;
    qAux.close;

    wPreco_Mprima := ( wPreco_Mprima / wFormula );
    // somar mao-de-obra
    wValor_Mobra := StrToCurr( DbeFTC_TUP.Text );

    // Aplicar indice p/ preco final
    if dBaseFormula > 0 then
      wPrecoFinal := ( wPreco_Mprima + wValor_Mobra ) / ( 100 - wIndice ) * 100 / dBaseFormula
    else
      wPrecoFinal := ( wPreco_Mprima + wValor_Mobra ) / ( 100 - wIndice ) * 100;
    if qAuxF.FieldByName( 'PRD_MARGEMVENDA' ).AsFloat > 0 then
      wPrecoFinal := ( 1 + ( qAuxF.FieldByName( 'PRD_MARGEMVENDA' ).AsCurrency / 100 ) ) * wPreco_EntradaTotal;

    // Atualiza precos no cad. de produtos (preco mat.prima e preco custo)
    try
      wSql1 := 'UPDATE PRD0000 SET ' + iif( not DBInicio.Empresa.wPMT_NAO_AUTO_PVENDA, ' PRD_PVENDA = ' + QuotedStr( ValorAmericano( FloatToStr( wPrecoFinal ) ) ) + ',', '' ) + ' PRD_PMATPRI = ' + QuotedStr( ValorAmericano( FloatToStr( wPreco_Mprima ) ) ) + ' , PRD_MAOOBRA = ' + QuotedStr( ValorAmericano( FloatToStr( wValor_Mobra ) ) ) + ' , PRD_PCUSTO = ' + QuotedStr( ValorAmericano( FloatToStr( wPrecoTotal ) ) ) + ' , PRD_CUSTOCOMIPI = ' +
        QuotedStr( ValorAmericano( FloatToStr( wPreco_EntradaTotal ) ) );
      wSeleciona := 'WHERE PRD_REFER = ' + QuotedStr( EdtPrd_Refer.Text );
      DataCadastros.sqlUpdate.close;
      DataCadastros.sqlUpdate.sql.Text := SQLDEF( 'PRODUTOS', wSql1, wSeleciona, '', '' );
      DataCadastros.sqlUpdate.ExecSql;
      CdsProdutos.Edit;
      CdsProdutosPRD_PCUSTO.AsCurrency := wPrecoTotal;
      CdsProdutosPRD_CUSTOCOMIPI.AsCurrency := wPreco_EntradaTotal;
      CdsProdutosPRD_PVENDA.AsCurrency := wPrecoFinal;
      CdsProdutos.Post;

    except
      on E : Exception do
        Uteis.erro( Pchar( 'Erro ao atualizar o Preço de Custo ! ' + E.message ) );
    end;
  end;
end;

procedure TFormProduto.CalculaCampo( Sender : tObject );
begin
  if not ( Sender as TDBEdit ).Enabled then
    ( Sender as TDBEdit ).Text := '0';
end;

// issue 1475
procedure TFormProduto.SetToleranciaDM;
var
  dm, d, intervalo, tolerancia : double;
  grauTolerancia, j : Integer;
begin
  dm := cdsMolaMMO_DIAMETRO_MEDIO.AsFloat;
  d := cdsMolaMMO_DIAMETRO_ARAME.AsFloat;
  grauTolerancia := cbGrauTolerancia.ItemIndex;
  if ( dm > 0 ) and ( d > 0 ) and ( grauTolerancia > 0 ) then
  begin
    intervalo := dm / d;
    tolerancia := BuscaUmDadoSqlAsFloat( 'SELECT MTM_INTERVALO FROM MOLA_TOLERANCIA_DIAMETRO_MEDIO ' + ' WHERE MMO_GRAU = ' + IntToStr( grauTolerancia ) + ' AND MTM_DM_DE <= ' + FloatToSQL( dm ) + ' AND MTM_DM_ATE >= ' + FloatToSQL( dm ) + ' AND MTM_RELACAO_MIN <= ' + FloatToSQL( intervalo ) + ' AND MTM_RELACAO_MAX >= ' + FloatToSQL( intervalo ) );
    if not ( cdsMola.State in dsEditModes ) then
      cdsMola.Edit;
    for j := 0 to tsCampos2.ControlCount - 1 do
      if ( ( tsCampos2.Controls[ j ] is TDBEdit ) and ( TDBEdit( tsCampos2.Controls[ j ] ).Enabled ) and ( TDBEdit( tsCampos2.Controls[ j ] ).TAG = 135 ) ) then
        TDBEdit( tsCampos2.Controls[ j ] ).DataSource.DataSet.FieldByName( TDBEdit( tsCampos2.Controls[ j ] ).DataField ).AsFloat := tolerancia;

  end;

end;

procedure TFormProduto.ComissaoPorGrupo;
var
  comissaoGrupo: Double;
begin
  ComissaoGrupo := 0;
  if CdsProdutosPRD_COMISSAO.AsFloat = 0 then
    ComissaoGrupo := DBInicio.BuscaUmDadoSqlAsFloat('SELECT PGR_COM_PERC FROM PRD_GRUPO WHERE PGR_CODIGO = ' + QuotedStr(CdsProdutosPGR_CODIGO.AsString) );
  if comissaoGrupo > 0 then
  begin
    ExecSql('UPDATE PRD0000 SET PRD_COMISSAO = ' + FloatToSQL(comissaoGrupo) + ' WHERE PRD_CODIGO = ' + QuotedStr(CdsProdutosPRD_CODIGO.AsString)  );
    // CdsProdutos.Refresh;
    CdsProdutos.Close;
    CdsProdutos.Open;
  end;

end;

procedure TFormProduto.edPrecoVendaEnter( Sender : tObject );
begin
  inherited;
  PrecoEmpresaCorDBEdit;
end;

procedure TFormProduto.edPrecoVendaExit( Sender : tObject );
begin
  inherited;
  CdsProdutos.Edit;
  CdsProdutosPRD_CUSTOCOMIPI.AsFloat := edCustoEntrada.Value;
  CdsProdutosPRD_PVENDA.AsFloat := edPrecoVenda.Value;
  CdsProdutosPRD_MARGEMVENDA.AsFloat := edMargemVenda.Value;
  DBEprecoVendaExit( Sender );
  edMargemVenda.Value := CdsProdutosPRD_MARGEMVENDA.AsFloat;
  // CdsProdutos.Cancel;
  PrecoEmpresaCorDBEdit;
end;

procedure TFormProduto.PrecoEmpresaComboEmpresa;
begin
  if not DBInicio.Exclusivo( 'PRODUTO_PRECO_EMPRESA' ) then
    Exit;

  DataCadastros.cdsEmpresa.close;
  DataCadastros.cdsEmpresa.Open;
  DataCadastros.cdsEmpresa.First;
  while not DataCadastros.cdsEmpresa.Eof do
  begin
    cbPrecoEmpresa.Items.Add( DataCadastros.cdsEmpresa.FieldByName( 'EMP_CODIGO' ).AsString + ' - ' + DataCadastros.cdsEmpresa.FieldByName( 'EMP_RAZAO' ).AsString );
    cbPrecoEmpresa.Values.Add( DataCadastros.cdsEmpresa.FieldByName( 'EMP_CODIGO' ).AsString );
    DataCadastros.cdsEmpresa.Next;
  end;
  cbPrecoEmpresa.ItemIndex := cbPrecoEmpresa.Values.IndexOf( DBInicio.EMP_CODIGO );;
end;

procedure TFormProduto.PrecoEmpresaCorDBEdit( );
begin
  if not DBInicio.Exclusivo( 'PRODUTO_PRECO_EMPRESA' ) then
  begin
    gbEmpresaPreco.Visible := False;
    DBECustoEntrada.Color := $00D7D7D7;
    DBEmargemVenda.Color := $00D7D7D7;
    DBEprecoVenda.Color := clWindow;
  end
  else
  begin
    DBECustoEntrada.Enabled := False;
    DBEmargemVenda.Enabled := False;
    DBEprecoVenda.Enabled := False;

    gbEmpresaPreco.Visible := True;

    edCustoEntrada.Left := DBECustoEntrada.Left;
    edMargemVenda.Left := DBEmargemVenda.Left;
    edPrecoVenda.Left := DBEprecoVenda.Left;

    edCustoEntrada.Width := DBECustoEntrada.Width;
    edMargemVenda.Width := DBEmargemVenda.Width;
    edPrecoVenda.Width := DBEprecoVenda.Width;

    edCustoEntrada.Visible := True;
    edMargemVenda.Visible := True;
    edPrecoVenda.Visible := True;

    edCustoEntrada.Color := clSkyBlue;
    edMargemVenda.Color := clSkyBlue;
    edPrecoVenda.Color := clSkyBlue;

    spMargemVenda.Visible := False;
  end;
end;

procedure TFormProduto.cbLoteVencidoClick(Sender: TObject);
begin
  inherited;
  FiltraGrid();
end;

procedure TFormProduto.cbPrecoEmpresaChange( Sender : tObject );
begin
  inherited;
  CarregaPrecoEmpresa;
  if not ( CdsProdutos.State in dsEditModes ) then
    CdsProdutos.Edit;
  PrecoEmpresaCorDBEdit;
end;

procedure TFormProduto.CarregaPrecoEmpresa;
var
  empCodigo : string;
begin
  if not DBInicio.Exclusivo( 'PRODUTO_PRECO_EMPRESA' ) then
    Exit;

  if cbPrecoEmpresa.ItemIndex = - 1 then
    empCodigo := DBInicio.EMP_CODIGO
  else
    empCodigo := cbPrecoEmpresa.Values[ cbPrecoEmpresa.ItemIndex ];

  if cbPrecoEmpresa.ItemIndex = - 1 then
    cbPrecoEmpresa.ItemIndex := cbPrecoEmpresa.Values.IndexOf( empCodigo );
  if cbPrecoEmpresa.ItemIndex >= 0 then
  begin
    qAux.close;
    qAux.sql.Text := 'SELECT FIRST 1 * ' + ' FROM PRD0000_PRECO_EMPRESA ppe ' + ' JOIN USUARIO u ON (u.USU_CODIGO = ppe.USU_CODIGO) ' + ' WHERE ppe.PRD_CODIGO = ' + QuotedStr( EdtPrd_codigo.Text ) + ' AND ppe.EMP_CODIGO = ' + QuotedStr( cbPrecoEmpresa.Values[ cbPrecoEmpresa.ItemIndex ] ) + ' ORDER BY PRD_PE_DATA_ATUALIZACAO DESC';
    qAux.Open;
    lbUsuario.Caption := qAux.FieldByName( 'USU_NOME' ).AsString;
    lbAtualizado.Caption := qAux.FieldByName( 'PRD_PE_DATA_ATUALIZACAO' ).AsString;

    edCustoEntrada.Value := qAux.FieldByName( 'PRD_PE_CUSTOCOMIPI' ).AsFloat;
    edMargemVenda.Value := qAux.FieldByName( 'PRD_PE_MARGEMVENDA' ).AsFloat;
    edPrecoVenda.Value := qAux.FieldByName( 'PRD_PE_PVENDA' ).AsFloat;

  end
  else
  begin
    lbUsuario.Caption := '';
    lbAtualizado.Caption := '';
    edCustoEntrada.Clear;
    edMargemVenda.Clear;
    edPrecoVenda.Clear;
  end;

end;

procedure TFormProduto.GravaPrecoEmpresa;
begin
  if not DBInicio.Exclusivo( 'PRODUTO_PRECO_EMPRESA' ) then
    Exit;

  ExecSql( 'INSERT INTO PRD0000_PRECO_EMPRESA ' + '(EMP_CODIGO, PRD_CODIGO, PRD_PE_CUSTOCOMIPI, PRD_PE_MARGEMVENDA, PRD_PE_PVENDA, USU_CODIGO, PRD_PE_DATA_ATUALIZACAO)' + ' VALUES (' + QuotedStr( cbPrecoEmpresa.Values[ cbPrecoEmpresa.ItemIndex ] ) + ', ' + QuotedStr( EdtPrd_codigo.Text ) + ', ' + FloatToSQL( edCustoEntrada.Value ) + ', ' + FloatToSQL( edMargemVenda.Value ) + ', ' + FloatToSQL( edPrecoVenda.Value ) + ', ' + DBInicio.Usuario.CODIGO + ', ' + DateTimeToSQL( now ) + ')' );
  CdsProdutosPRD_CUSTOCOMIPI.AsFloat := 0;
  CdsProdutosPRD_MARGEMVENDA.AsFloat := 0;
  CdsProdutosPRD_PVENDA.AsFloat := 0;


end;

end.
