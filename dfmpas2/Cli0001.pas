unit Cli0001;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RwSQLComando, IdHTTP, System.JSON,
  StdCtrls, DBCtrls, Mask, ExtCtrls, ComCtrls, Buttons, DB, DBTables, RwFunc,
  rxToolEdit, RXDBCtrl, Grids, DBGrids, Provider, SqlExpr, SqlClientDataSet,
  DBClient, DBLocal,
  DBLocalS, rxCurrEdit, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxDBEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, JvExStdCtrls, JvCombobox, JvDBCombobox, FMTBCd,
  frxClass, frxDBSet, TeEngine, Series, TeeProcs, Chart, DbChart, ACBrBase,
  ACBrSocket, ACBrCEP, Menus, ShellAPI, SgDbSeachComboUnit,
  SgDbLookupComboUnit, JvExDBGrids, JvDBGrid, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, VclTee.TeeGDIPlus, Data.DBXFirebird,
  SimpleDS, cxCheckBox, RxDBComb, ACBrConsultaCNPJ, ACBrSuframa, BaseDBForm ,  System.StrUtils, ACBrEnterTab,
   ACBrCalculadora, JvExControls, JvArrowButton,importcliente, ComObj, JvMenus, animacao, Vcl.CustomizeDlg, ComboBoxRW, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinTheBezier, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light;

type
  TFormCliente = class(TfrmBaseDB)
    PageCliente: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Label19: TLabel;
    Label4: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    EdtCli_codigo: TEdit;
    DbeCli_razao: TDBEdit;
    DbeCli_fone: TDBEdit;
    DbeCli_fax: TDBEdit;
    DbeCil_insc: TDBEdit;
    DbeCli_dtinicio: TDBDateEdit;
    DbeCli_celular: TDBEdit;
    DbeCli_Fantasia: TDBEdit;
    GroupBox5: TGroupBox;
    DBGrid1: TDBGrid;
    CbxAtiv: TComboBox;
    CbxRegiao: TComboBox;
    SqlCdsAtiv: TSQLClientDataSet;
    SqlCdsTransp: TSQLClientDataSet;
    SqlCdsRegiao: TSQLClientDataSet;
    SqlCdsAtivRCL_CODIGO: TStringField;
    SqlCdsAtivRCL_ATIVIDADE: TStringField;
    SqlCdsAtivEMP_CODIGO: TStringField;
    SqlCdsTranspTRP_CODIGO: TStringField;
    SqlCdsTranspTRP_RAZAO: TStringField;
    SqlCdsTranspEMP_CODIGO: TStringField;
    SqlCdsRegiaoREG_CODIGO: TStringField;
    SqlCdsRegiaoREG_DESCRI: TStringField;
    SqlCdsRegiaoEMP_CODIGO: TStringField;
    GroupBox7: TGroupBox;
    Msk_cnpj: TMaskEdit;
    SqlCdsDupFat: TSQLClientDataSet;
    DsDupFat: TDataSource;
    SqlCdsDupFatFAT_CODIGO: TStringField;
    SqlCdsDupFatFPC_NUMER: TStringField;
    SqlCdsDupFatFPC_VLPARC: TFMTBCdField;
    SqlCdsDupFatFPC_VENCTO: TSQLTimeStampField;
    SqlCdsDupFatFPC_VLPAGO: TFMTBCdField;
    SqlCdsDupFatFPC_PAGTO: TSQLTimeStampField;
    SqlCdsDupFatFPC_STATUS: TStringField;
    GroupBox6: TGroupBox;
    RadJuridica: TRadioButton;
    RadFisica: TRadioButton;
    DBECLI_ATIVIDADE: TDBEdit;
    DBEREG_CODIGO: TDBEdit;
    GroupBox4: TGroupBox;
    DBGrid2: TDBGrid;
    GroupBox8: TGroupBox;
    DBGrid3: TDBGrid;
    SqlCdsNFS: TSQLClientDataSet;
    DsNFS: TDataSource;
    SqlCdsProdNF: TSQLClientDataSet;
    DsProdNF: TDataSource;
    SqlCdsProdNFNF_IT_NOTANUMER: TStringField;
    SqlCdsProdNFPRD_REFER: TStringField;
    SqlCdsProdNFPRD_DESCRI: TStringField;
    SqlCdsProdNFNF_QTDE: TFMTBCdField;
    SqlCdsProdNFNF_PRECO: TFMTBCdField;
    SqlCdsProdNFNF_TOTAL_CC: TCurrencyField;
    SqlCdsNFSFAT_CODIGO: TStringField;
    SqlCdsNFSFAT_DTEMIS: TSQLTimeStampField;
    SqlCdsNFSPED_CODIGO: TStringField;
    SqlCdsNFSCLI_CODIGO: TStringField;
    SqlCdsNFSEMP_CODIGO: TStringField;
    SqlCdsNFSCLI_RAZAO: TStringField;
    SqlCdsNFSWVALOR: TFMTBCdField;
    GroupBox10: TGroupBox;
    Rad_Nacional: TRadioButton;
    Rad_Internacional: TRadioButton;
    TabSheet3: TTabSheet;
    Panel5: TPanel;
    Label65: TLabel;
    DataAlteracao: TDateEdit;
    Label66: TLabel;
    Edt_Usuario: TEdit;
    Edt_Motivo_Alteracao: TEdit;
    Label67: TLabel;
    TabSheet4: TTabSheet;
    DBMemo1: TDBMemo;
    Label70: TLabel;
    DBECLI_Iscmunicipal: TDBEdit;
    SqlCdsBanco: TSQLClientDataSet;
    SqlCdsBancoBAN_CODIGO: TStringField;
    SqlCdsPrazo: TSQLClientDataSet;
    SqlCdsPrazoPCL_CODIGO: TStringField;
    SqlCdsPrazoPCL_NOME: TStringField;
    SqlCdsBancoBAN_APELIDO: TStringField;
    DSPais: TDataSource;
    SqlCdsPais: TSQLClientDataSet;
    SqlCdsPaisPAI_CODIGO: TStringField;
    SqlCdsPaisPAI_PAIS: TStringField;
    RadPequena: TRadioButton;
    RadMedia: TRadioButton;
    RadGrande: TRadioButton;
    GroupBox17: TGroupBox;
    RadClasCliente: TRadioButton;
    RadClasFornecedor: TRadioButton;
    RadClasAmbos: TRadioButton;
    CdsCFOP: TSQLClientDataSet;
    CdsCFOPOPE_CODIGO: TStringField;
    CdsCFOPOPE_DESCRI: TStringField;
    DsCfop: TDataSource;
    DbNavigator1: TDBNavigator;
    tsVendas: TTabSheet;
    dbgrdVendas: TDBGrid;
    dsVendas: TDataSource;
    CdsVendas: TSQLClientDataSet;
    CdsVendasPRD_REFER: TStringField;
    CdsVendasPRD_DESCRI: TStringField;
    CdsVendasPED_CODIGO: TStringField;
    CdsVendasNF_IT_NOTANUMER: TStringField;
    CdsVendasNF_NUM_NFE: TIntegerField;
    CdsVendasNF_EMISSAO: TDateField;
    CdsVendasNF_QTDE: TFMTBCdField;
    CdsVendasNF_PRECO: TFMTBCdField;
    CdsVendasNF_IPIALIQ: TFMTBCdField;
    CdsVendasVALOR_IPI: TFMTBCdField;
    CdsVendasVALOR_ICMS_ST: TFMTBCdField;
    CdsVendasVALOR_FINAL: TFMTBCdField;
    SqlCdsCentroCusto: TSQLClientDataSet;
    SqlCdsCentroCustoPCX_CODIGO: TStringField;
    SqlCdsCentroCustoPCX_DESCRI: TStringField;
    SqlCdsCentroCustoPCX_NIVEL: TStringField;
    SqlCdsCentroCustoPCX_INICIO: TSQLTimeStampField;
    SqlCdsCentroCustoPCX_FIM: TSQLTimeStampField;
    SqlCdsCentroCustoPCX_TERMINADO: TStringField;
    SqlCdsCentroCustoEMP_CODIGO: TStringField;
    tsContato: TTabSheet;
    DsClienteContato: TDataSource;
    CdsClienteContato: TClientDataSet;
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
    CdsClienteContatoCC_REGISTRO: TIntegerField;
    CdsClienteContatoCLI_CODIGO: TStringField;
    CdsClienteContatoCC_NOME: TStringField;
    CdsClienteContatoCC_CARGO: TStringField;
    CdsClienteContatoCC_TELEFONE: TStringField;
    CdsClienteContatoCC_CELULAR: TStringField;
    CdsClienteContatoCC_RAMAL: TStringField;
    CdsClienteContatoCC_EMAIL: TStringField;
    Label86: TLabel;
    DBEdit9: TDBEdit;
    Label87: TLabel;
    DBEdit10: TDBEdit;
    Label88: TLabel;
    DBEdit11: TDBEdit;
    Label89: TLabel;
    DBEdit12: TDBEdit;
    Label90: TLabel;
    DBEdit13: TDBEdit;
    Label91: TLabel;
    DBEdit14: TDBEdit;
    DBNavigator2: TDBNavigator;
    grpContatos: TGroupBox;
    dbgrdContatos: TDBGrid;
    btnImprimirVendas: TBitBtn;
    frxVendas: TfrxReport;
    frxdbCliente: TfrxDBDataset;
    frxdbVendas: TfrxDBDataset;
    GroupBox2: TGroupBox;
    GroupBox18: TGroupBox;
    DBMemo2: TDBMemo;
    PageControl1: TPageControl;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    GRP_Bloquear: TGroupBox;
    Label34: TLabel;
    Label35: TLabel;
    DbDateRestricao: TDBDateEdit;
    DBEdtMovito: TDBEdit;
    DBRADBloqueia: TDBRadioGroup;
    Grp_Credito: TGroupBox;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label20: TLabel;
    DbeLimiteCred: TDBEdit;
    DbeValorUltimaCompra: TDBEdit;
    DBeUltCompra: TDBDateEdit;
    tsVenda: TTabSheet;
    GroupBox19: TGroupBox;
    Label84: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label74: TLabel;
    Label13: TLabel;
    CbTabelaPreco: TComboBox;
    DbeDesc1: TDBEdit;
    DBEdit6: TDBEdit;
    DescTotal: TCurrencyEdit;
    DbePrazoCodigo: TDBEdit;
    CbxPrazo: TComboBox;
    DBETRP_CODIGO: TDBEdit;
    CbxTransp: TComboBox;
    tsFiscal: TTabSheet;
    grp1: TGroupBox;
    Label45: TLabel;
    Label82: TLabel;
    cbRegime: TJvDBComboBox;
    tsFaturamento: TTabSheet;
    GroupBox16: TGroupBox;
    Label73: TLabel;
    Label83: TLabel;
    Label75: TLabel;
    DBEBanco_codigo: TDBEdit;
    CbxCobranca: TComboBox;
    DBECentroCusto: TDBEdit;
    CbxCentroCusto: TComboBox;
    GroupBox9: TGroupBox;
    Label42: TLabel;
    Panel3: TPanel;
    RadProSim: TRadioButton;
    RadProNao: TRadioButton;
    CurrDias: TCurrencyEdit;
    grpContato: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Label30: TLabel;
    Label69: TLabel;
    DbeCli_contato: TDBEdit;
    DbeCli_funcont: TDBEdit;
    DbeCLI_HOME: TDBEdit;
    DBEmail: TDBEdit;
    PageControl2: TPageControl;
    tsPrincipal: TTabSheet;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label43: TLabel;
    SpeedButton5: TSpeedButton;
    Label31: TLabel;
    Label7: TLabel;
    Label81: TLabel;
    Label11: TLabel;
    DbeCli_endere: TDBEdit;
    DbeCli_cidade: TDBEdit;
    DBECLIUF: TDBEdit;
    DbeCLI_BAIRRO: TDBEdit;
    DbeCliCep: TDBEdit;
    CbPais: TcxLookupComboBox;
    DbeCli_cxpost: TDBEdit;
    tsEntrega: TTabSheet;
    GroupBox1: TGroupBox;
    Label22: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    Label24: TLabel;
    Label32: TLabel;
    Label71: TLabel;
    DbeCli_Endentr: TDBEdit;
    DbeCli_cidentr: TDBEdit;
    DbeCli_ufentr: TDBEdit;
    DbeCli_cepentr: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    tsCobrana: TTabSheet;
    GroupBox15: TGroupBox;
    Label26: TLabel;
    Label28: TLabel;
    Label27: TLabel;
    Label29: TLabel;
    Label72: TLabel;
    DbeCli_endfat: TDBEdit;
    DbeCli_cepfat: TDBEdit;
    DbeCli_cidfat: TDBEdit;
    DbeCli_uffat: TDBEdit;
    DBEdit5: TDBEdit;
    Label46: TLabel;
    dbedtCLI_SUFRAMA: TDBEdit;
    Label18: TLabel;
    DBEREP_CODIGO: TDBEdit;
    GroupBox20: TGroupBox;
    SqlCdsGraficoVendas: TSQLClientDataSet;
    SqlCdsGraficoVendasANO: TSmallintField;
    SqlCdsGraficoVendasMES: TSmallintField;
    SqlCdsGraficoVendasMES_ANO: TStringField;
    SqlCdsGraficoVendasTOTAL: TFMTBCdField;
    chtGrafico: TChart;
    brsrsSeries1: TBarSeries;
    tsAvisos: TTabSheet;
    SqlAvisos: TSQLDataSet;
    DspAvisos: TDataSetProvider;
    CdsAvisos: TClientDataSet;
    dsAvisos: TDataSource;
    SqlAvisosCLIM_REGISTRO: TIntegerField;
    SqlAvisosCLI_CODIGO: TStringField;
    SqlAvisosCLIM_ATIVO: TStringField;
    SqlAvisosCLIM_VENDA: TStringField;
    SqlAvisosCLIM_FATURAMENTO: TStringField;
    SqlAvisosCLIM_MENSAGEM: TBlobField;
    CdsAvisosCLIM_REGISTRO: TIntegerField;
    CdsAvisosCLI_CODIGO: TStringField;
    CdsAvisosCLIM_ATIVO: TStringField;
    CdsAvisosCLIM_VENDA: TStringField;
    CdsAvisosCLIM_FATURAMENTO: TStringField;
    CdsAvisosCLIM_MENSAGEM: TBlobField;
    GroupBox21: TGroupBox;
    DBNavigator3: TDBNavigator;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBMemo3: TDBMemo;
    Label21: TLabel;
    Label85: TLabel;
    DBGrid4: TDBGrid;
    Label92: TLabel;
    cxCNAE: TcxLookupComboBox;
    btnCnae: TSpeedButton;
    SqlCdsCNAE: TSQLClientDataSet;
    dsCNAE: TDataSource;
    SqlCdsCNAECNAE_REGISTRO: TIntegerField;
    SqlCdsCNAECNAE: TStringField;
    DBCheckBox4: TDBCheckBox;
    ACBrCEP1: TACBrCEP;
    edtLimiteUtilizado: TCurrencyEdit;
    edtLimiteDisponivel: TCurrencyEdit;
    ACBrCEPEntrega: TACBrCEP;
    ACBrCEPCobranca: TACBrCEP;
    SqlArquivo: TSQLDataSet;
    SqlArquivoARQ_REGISTRO: TIntegerField;
    SqlArquivoARQ_TIPO: TStringField;
    SqlArquivoARQ_TIPO_TABELA: TStringField;
    SqlArquivoARQ_REGISTRO_TABELA: TStringField;
    SqlArquivoARQ_ARQUIVO: TBlobField;
    SqlArquivoARQ_DESCRICAO: TStringField;
    SqlArquivoARQ_DATA: TDateField;
    SqlArquivoARQ_NOME_ARQUIVO: TStringField;
    DspArquivo: TDataSetProvider;
    CdsArquivo: TClientDataSet;
    CdsArquivoARQ_REGISTRO: TIntegerField;
    CdsArquivoARQ_TIPO: TStringField;
    CdsArquivoARQ_TIPO_TABELA: TStringField;
    CdsArquivoARQ_REGISTRO_TABELA: TStringField;
    CdsArquivoARQ_ARQUIVO: TBlobField;
    CdsArquivoARQ_DESCRICAO: TStringField;
    CdsArquivoARQ_DATA: TDateField;
    CdsArquivoARQ_NOME_ARQUIVO: TStringField;
    dsArquivo: TDataSource;
    tsArquivo: TTabSheet;
    GroupBox22: TGroupBox;
    Label93: TLabel;
    Label94: TLabel;
    FilenameArquivo: TFilenameEdit;
    EdDescricaoArquivo: TEdit;
    btnSalvarArquivo: TBitBtn;
    GroupBox24: TGroupBox;
    DBGrid7: TDBGrid;
    pmArquivo: TPopupMenu;
    AbrirArquivo1: TMenuItem;
    N1: TMenuItem;
    ExcluirArquivo1: TMenuItem;
    Label9: TLabel;
    DbeCli_email: TDBEdit;
    qTabelas: TSQLQuery;
    Panel1: TPanel;
    BtnConsulta: TBitBtn;
    Bit_Relatorio: TBitBtn;
    Bit_novo: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    Label76: TLabel;
    cbConsFinal: TComboBox;
    Label8: TLabel;
    edTabela: TsgDBLookupCombo;
    tsPrecos: TTabSheet;
    qItensTabela: TSQLQuery;
    qItensTabelaID: TIntegerField;
    qItensTabelaPRE_ID: TIntegerField;
    qItensTabelaPRD_CODIGO: TStringField;
    qItensTabelaPRE_MARGEM: TFMTBCdField;
    qItensTabelaPRE_PRECO: TFMTBCdField;
    qItensTabelaPRD_DESCRI: TStringField;
    qItensTabelaPRD_REFER: TStringField;
    qItensTabelaPRD_PCUSTO: TFMTBCdField;
    qItensTabelaCODIGO_PRODUTO_CLIENTE: TStringField;
    qItensTabelaDESCRICAO_PRODUTO_CLIENTE: TStringField;
    DspItensTabela: TDataSetProvider;
    CdsItensTabela: TClientDataSet;
    CdsItensTabelaID: TIntegerField;
    CdsItensTabelaPRE_ID: TIntegerField;
    CdsItensTabelaPRD_CODIGO: TStringField;
    CdsItensTabelaPRE_MARGEM: TFMTBCdField;
    CdsItensTabelaPRE_PRECO: TFMTBCdField;
    CdsItensTabelaPRD_DESCRI: TStringField;
    CdsItensTabelaPRD_REFER: TStringField;
    CdsItensTabelaPRD_PCUSTO: TFMTBCdField;
    CdsItensTabelaCODIGO_PRODUTO_CLIENTE: TStringField;
    CdsItensTabelaDESCRICAO_PRODUTO_CLIENTE: TStringField;
    dsItensTabela: TDataSource;
    sqlClienteEnder: TSQLQuery;
    dspClienteEnder: TDataSetProvider;
    cdsClienteEnder: TClientDataSet;
    dsClienteEnder: TDataSource;
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
    sqlClienteEnderESTADO: TStringField;
    cdsClienteEnderESTADO: TStringField;
    sqlClienteEnderDESCTIPO: TStringField;
    cdsClienteEnderDESCTIPO: TStringField;
    cdsEnderPadrao: TClientDataSet;
    sqlEnderPadrao: TSQLQuery;
    dspEnderPadrao: TDataSetProvider;
    sqlClienteEnderPAI_PAIS: TStringField;
    cdsClienteEnderPAI_PAIS: TStringField;
    sqlClienteEnderNUMERO: TStringField;
    sqlClienteEnderCIDADE: TStringField;
    cdsClienteEnderNUMERO: TStringField;
    cdsClienteEnderCIDADE: TStringField;
    TabSheet8: TTabSheet;
    DataSetProvider1: TDataSetProvider;
    DataSetProvider2: TDataSetProvider;
    DBGrid5: TDBGrid;
    Label99: TLabel;
    edCliCepOutros: TDBEdit;
    Label95: TLabel;
    edEndeOutros: TDBEdit;
    Label102: TLabel;
    edNumero: TDBEdit;
    Label103: TLabel;
    edComplementoOutros: TDBEdit;
    DBEdit17: TDBEdit;
    Label101: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    Label100: TLabel;
    edBairroOutros: TDBEdit;
    Label98: TLabel;
    SpeedButton1: TSpeedButton;
    edUfOutros: TDBEdit;
    Label97: TLabel;
    edCidadeOutros: TDBEdit;
    Label96: TLabel;
    Label104: TLabel;
    cxDBComboBox1: TRxDBComboBox;
    cxDBCheckBox1: TcxDBCheckBox;
    DBNavigator4: TDBNavigator;
    Label105: TLabel;
    DBEdit20: TDBEdit;
    sqlClienteEnderFATOR: TSingleField;
    cdsClienteEnderFATOR: TSingleField;
    Label106: TLabel;
    Label107: TLabel;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    ACBrSuframa1: TACBrSuframa;
    btnConsultarCNPJ_CPF: TButton;
    edVendedor: TSgDbSearchCombo;
    edVendInterno: TSgDbSearchCombo;
    qRep: TSQLQuery;
    DBEdit2: TDBEdit;
    Label108: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    bitImportarXLS: TJvArrowButton;
    JvPopupMenu1: TJvPopupMenu;
    miImportarExcel: TMenuItem;
    miLeaiute: TMenuItem;
    qFPagto: TSQLQuery;
    Label109: TLabel;
    edFPagto: TSgDbSearchCombo;
    PageControl3: TPageControl;
    tsDadosBasicos: TTabSheet;
    tsHistorico: TTabSheet;
    GroupBox12: TGroupBox;
    Label54: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    DataVenda: TDateEdit;
    DataImplantacao: TDateEdit;
    CbTipo: TComboBox;
    Edt_Consultor: TEdit;
    GroupBox14: TGroupBox;
    Memo_Historico: TMemo;
    GroupBox23: TGroupBox;
    Label56: TLabel;
    Label57: TLabel;
    Label68: TLabel;
    Bevel1: TBevel;
    Label110: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    Label113: TLabel;
    Label114: TLabel;
    Label115: TLabel;
    Label116: TLabel;
    SpbtnContrato: TSpeedButton;
    Label117: TLabel;
    CNumLicencas: TCurrencyEdit;
    DataAtual: TDateEdit;
    CbLiberacao: TComboBox;
    CbServico: TComboBox;
    cValorContrato: TCurrencyEdit;
    DataInicio: TDateEdit;
    CbIndice: TComboBox;
    DataAtualizacao: TDateEdit;
    CbTipoContrato: TComboBox;
    GroupBox25: TGroupBox;
    cMesVencto: TMaskEdit;
    DataCancela: TDateEdit;
    MemoObs: TMemo;
    Label47: TLabel;
    Edt_Responsavel: TEdit;
    Label48: TLabel;
    DataConclusao: TDateEdit;
    Label49: TLabel;
    Edt_Cargo: TEdit;
    Label50: TLabel;
    CHoraImplantacao: TMaskEdit;
    SpbtnImplantacao: TSpeedButton;
    CbTipoFrete: TComboBox;
    Label44: TLabel;
    edconsumidora: TDBEdit;
    Label51: TLabel;
    DBMemo4: TDBMemo;
    rgConsumoProprio: TDBRadioGroup;
    qArquivoBlob: TSQLDataSet;
    qArquivoBlobARQ_REGISTRO: TIntegerField;
    qArquivoBlobARQ_TIPO: TStringField;
    qArquivoBlobARQ_TIPO_TABELA: TStringField;
    qArquivoBlobARQ_REGISTRO_TABELA: TStringField;
    qArquivoBlobARQ_ARQUIVO: TBlobField;
    qArquivoBlobARQ_DESCRICAO: TStringField;
    qArquivoBlobARQ_DATA: TDateField;
    qArquivoBlobARQ_NOME_ARQUIVO: TStringField;
    CdsVendasEMP_CODIGO: TStringField;
    chkSemComissao: TDBCheckBox;
    Label33: TLabel;
    Label52: TLabel;
    DBEdit3: TDBEdit;
    DBEdit7: TDBEdit;
    cbOrigem: TSgDbSearchCombo;
    Label53: TLabel;
    qOrigem: TSQLQuery;
    CbOper: TComboBoxRw;
    qOperFisc: TSQLQuery;
    qOperFiscEMP_CODIGO: TStringField;
    qOperFiscOPE_CODIGO: TStringField;
    qOperFiscOPE_NATUREZA: TStringField;
    qOperFiscOPE_NATUREZA_ENTRADA: TStringField;
    qOperFiscOPE_TIPO: TStringField;
    qOperFiscOPE_ESCRITA: TStringField;
    qOperFiscOPE_DENTRO: TStringField;
    qOperFiscOPE_DESCRI: TStringField;
    qOperFiscOPE_TRIBICMS: TStringField;
    qOperFiscOPE_TRIBIPI: TStringField;
    qOperFiscOPE_REDU_ICM: TFMTBCDField;
    qOperFiscOPE_REDU_IPI: TFMTBCDField;
    qOperFiscOPE_IPINABASEICMS: TStringField;
    qOperFiscOPE_FRETENABASE: TStringField;
    qOperFiscOPE_SEMVLCOM: TStringField;
    qOperFiscOPE_IMP_AVISO: TStringField;
    qOperFiscOPE_AVISOLEGAL: TStringField;
    qOperFiscOPE_AVISOLEGAL2: TStringField;
    qOperFiscOPE_AGRUPADO: TStringField;
    qOperFiscOPE_SUBTRIBUTARIA: TStringField;
    qOperFiscOPE_ESTOQUE: TStringField;
    qOperFiscCCT_CODIGO: TStringField;
    qOperFiscOPV_CODIGO: TIntegerField;
    qOperFiscOPE_SERVICO: TStringField;
    qOperFiscOPE_PIS: TFMTBCDField;
    qOperFiscOPE_COFINS: TFMTBCDField;
    qOperFiscOPE_CONTRISOCIAL: TFMTBCDField;
    qOperFiscOPE_DESCRINATUREZA: TStringField;
    qOperFiscOPE_INDICE_IMP: TFMTBCDField;
    qOperFiscOPE_NOTA_COMPLEMENTAR: TStringField;
    qOperFiscOPE_FRETEBASEIPI: TStringField;
    qOperFiscOPE_DESPIMPORIPI: TStringField;
    qOperFiscOPE_AUMEN_ICMS: TFMTBCDField;
    qOperFiscOPE_ICMS_TOTALNOTA: TStringField;
    qOperFiscOPE_SEMVLCOM_MOSTRAF: TStringField;
    qOperFiscOPE_TRIBPISCOFINS: TStringField;
    qOperFiscOPE_TEMCREDITO: TStringField;
    qOperFiscOPE_ATIVA: TStringField;
    qOperFiscOPE_IPI_TOTALNOTA: TStringField;
    qOperFiscOPE_TIPO_OPERACAO: TStringField;
    qOperFiscOPE_ATUALIZA_CUSTO: TStringField;
    qOperFiscOPE_INDUSTRIALIZACAO: TStringField;
    qOperFiscEMP_CSOSN: TIntegerField;
    qOperFiscEMP_CSOSN_ST: TIntegerField;
    qOperFiscope_temretencao: TStringField;
    qOperFiscOPE_CST_IPI: TStringField;
    qOperFiscOPE_CST_PISCOFINS: TStringField;
    CdsClienteContatoCC_TIPO: TStringField;
    SqlCLienteContatoCC_TIPO: TStringField;
    DBRadioGroup1: TDBRadioGroup;
    sqlClienteEnderINSC_ESTADUAL: TStringField;
    sqlClienteEnderCNPJ: TStringField;
    cdsClienteEnderINSC_ESTADUAL: TStringField;
    cdsClienteEnderCNPJ: TStringField;
    edCNPJ: TDBEdit;
    edIE: TDBEdit;
    LCNPJ: TLabel;
    LIE: TLabel;
    sqlClienteEnderNOME: TStringField;
    cdsClienteEnderNOME: TStringField;
    cdsEnderPadraoTOTAL: TIntegerField;
    btCRM: TBitBtn;
    GroupBox11: TGroupBox;
    DBGrid6: TDBGrid;
    DsRecebimentos: TDataSource;
    CDSRecebimentos: TClientDataSet;
    CDSRecebimentosFRE_DATA_RECEBIMENTO: TDateField;
    CDSRecebimentosFRE_VALOR: TFMTBCDField;
    CDSRecebimentosFRE_DESCONTO: TFMTBCDField;
    CDSRecebimentosFRE_JUROS: TFMTBCDField;
    CDSRecebimentosFRE_MULTA: TFMTBCDField;
    CDSRecebimentosFRE_RECEBIDO: TFMTBCDField;
    CDSRecebimentosBAN_CODIGO: TStringField;
    CDSRecebimentosBAN_RAZAO: TStringField;
    CDSRecebimentosFPG_REGISTRO: TIntegerField;
    CDSRecebimentosFPG_DESCRICAO: TStringField;
    CDSRecebimentosUSU_CODIGO: TIntegerField;
    CDSRecebimentosUSU_NOME: TStringField;
    CDSRecebimentosFRE_REGISTRO: TIntegerField;
    dspRecebimentos: TDataSetProvider;
    qRecebimentos: TSQLQuery;
    qRecebimentosFRE_DATA_RECEBIMENTO: TDateField;
    qRecebimentosFRE_VALOR: TFMTBCDField;
    qRecebimentosFRE_DESCONTO: TFMTBCDField;
    qRecebimentosFRE_JUROS: TFMTBCDField;
    qRecebimentosFRE_MULTA: TFMTBCDField;
    qRecebimentosFRE_RECEBIDO: TFMTBCDField;
    qRecebimentosBAN_CODIGO: TStringField;
    qRecebimentosBAN_RAZAO: TStringField;
    qRecebimentosFPG_REGISTRO: TIntegerField;
    qRecebimentosFPG_DESCRICAO: TStringField;
    qRecebimentosUSU_CODIGO: TIntegerField;
    qRecebimentosUSU_NOME: TStringField;
    qRecebimentosFRE_REGISTRO: TIntegerField;
    SqlCdsDupFatFAT_REGISTRO: TIntegerField;
    SqlCdsDupFatPendente: TFMTBCDField;
    SqlCdsDupFatBAN_APELIDO: TStringField;
    SqlCdsDupFatBAN_CODIGO: TStringField;
    dsExportaExcel: TDataSource;
    ExportarparaC91: TMenuItem;
    qClientes: TSQLQuery;
    qClientesCLI_CGC: TStringField;
    qClientesCLI_RAZAO: TStringField;
    qClientesCLI_TIPO: TStringField;
    qClientesCLI_FANTASIA: TStringField;
    qClientesCLI_INSC: TStringField;
    qClientesCLI_CONTATO: TStringField;
    qClientesCLI_FONE: TStringField;
    qClientesCLI_CELULAR: TStringField;
    qClientesCLI_EMAIL_ALTERNATIVO: TStringField;
    qClientesCLI_EMAIL: TStringField;
    qClientesCLI_CEP: TStringField;
    qClientesCLI_CIDADE: TStringField;
    qClientesCLI_UF: TStringField;
    qClientesCLI_ENDERE: TStringField;
    qClientesCLI_BAIRRO: TStringField;
    qClientesREP_RAZAO: TStringField;
    qClientesPCX_DESCRI: TStringField;
    qClientesBAN_APELIDO: TStringField;
    qClientesCLI_UND_CONSUMIDORA: TIntegerField;
    qClientesCLI_NUMERO: TStringField;
    lbCLI_DTNASCIMENTO: TLabel;
    dbedCLI_DTNASCIMENTO: TDBDateEdit;
    qClientesCLI_CODIGO: TStringField;
    qClientesEMP_CODIGO: TStringField;
    dspClientes: TDataSetProvider;
    cdsClientes: TClientDataSet;
    cdsClientesCLI_CODIGO: TStringField;
    cdsClientesCLI_CGC: TStringField;
    cdsClientesCLI_RAZAO: TStringField;
    cdsClientesCLI_TIPO: TStringField;
    cdsClientesCLI_FANTASIA: TStringField;
    cdsClientesCLI_INSC: TStringField;
    cdsClientesCLI_CONTATO: TStringField;
    cdsClientesCLI_FONE: TStringField;
    cdsClientesCLI_CELULAR: TStringField;
    cdsClientesCLI_EMAIL_ALTERNATIVO: TStringField;
    cdsClientesCLI_EMAIL: TStringField;
    cdsClientesCLI_CEP: TStringField;
    cdsClientesCLI_CIDADE: TStringField;
    cdsClientesCLI_UF: TStringField;
    cdsClientesCLI_ENDERE: TStringField;
    cdsClientesCLI_NUMERO: TStringField;
    cdsClientesCLI_BAIRRO: TStringField;
    cdsClientesREP_RAZAO: TStringField;
    cdsClientesPCX_DESCRI: TStringField;
    cdsClientesBAN_APELIDO: TStringField;
    cdsClientesCLI_UND_CONSUMIDORA: TIntegerField;
    cdsClientesEMP_CODIGO: TStringField;
    qContafinanceira: TSQLQuery;
    Label55: TLabel;
    cbContaFinanceira: TSgDbSearchCombo;
    qClientesBAN_CONTA: TStringField;
    cdsClientesBAN_CONTA: TStringField;
    qClientesBAN_DIGCONTA: TStringField;
    cdsClientesBAN_DIGCONTA: TStringField;
    SimpleDataSet1: TSimpleDataSet;

    procedure MudaCorCampos(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure Bit_novoClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure EdtCli_codigoExit(Sender: tObject);
    procedure BtnConsultaClick(Sender: tObject);
    procedure BuscaCliente(wCodigo: String);
    procedure Bit_RelatorioClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure DbeCli_dtinicioExit(Sender: tObject);
    procedure DBeUltCompraExit(Sender: tObject);
    procedure DbDateRestricaoExit(Sender: tObject);
    procedure PreencheCombo;
    procedure MostrarCliente;
    procedure CbxAtivClick(Sender: tObject);
    procedure CbxTranspClick(Sender: tObject);
    procedure CbxRegiaoClick(Sender: tObject);
    procedure HabilitaBotoes;
    procedure DbNavigator1Click(Sender: tObject; Button: TNavigateBtn);
    procedure Msk_cnpjExit(Sender: tObject);
    procedure DbeCli_FantasiaEnter(Sender: tObject);
    procedure TabSheet2Show(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure TabSheet2Exit(Sender: tObject);
    procedure Msk_cnpjKeyPress(Sender: tObject; var Key: Char);
    procedure RadPequenaEnter(Sender: tObject);
    procedure RadJuridicaClick(Sender: tObject);
    procedure RadFisicaClick(Sender: tObject);
    procedure EdtCli_codigoKeyPress(Sender: tObject; var Key: Char);
    procedure EdtCli_codigoEnter(Sender: tObject);
    procedure DBECLI_ATIVIDADEExit(Sender: tObject);
    procedure DBETRP_CODIGOExit(Sender: tObject);
    procedure DBEREG_CODIGOExit(Sender: tObject);
    procedure DBEREP_CODIGOClick(Sender: tObject);
    procedure DBECLI_ATIVIDADEClick(Sender: tObject);
    procedure CbxAtivEnter(Sender: tObject);
    procedure DBETRP_CODIGOClick(Sender: tObject);
    procedure CbxTranspEnter(Sender: tObject);
    procedure DBEREG_CODIGOClick(Sender: tObject);
    procedure CbxRegiaoEnter(Sender: tObject);
    procedure PreenchaEndereco(wTipoEnd: String);
    procedure DbeCli_endfatEnter(Sender: tObject);
    procedure DbeCli_EndentrEnter(Sender: tObject);
    procedure RadJuridicaEnter(Sender: tObject);
    procedure RadFisicaEnter(Sender: tObject);
    procedure SqlCdsProdNFCalcFields(DataSet: TDataSet);
    procedure SqlCdsNFSAfterScroll(DataSet: TDataSet);
    procedure CurrDiasKeyPress(Sender: tObject; var Key: Char);
    procedure RadProSimEnter(Sender: tObject);
    procedure CurrDiasClick(Sender: tObject);
    procedure CbConsFinalClick(Sender: tObject);
    procedure CbConsFinalKeyPress(Sender: tObject; var Key: Char);
    procedure Rad_NacionalClick(Sender: tObject);
    procedure Rad_InternacionalClick(Sender: tObject);
    procedure DbeCli_endfatExit(Sender: tObject);
    procedure DbeCli_EndentrExit(Sender: tObject);
    procedure PageClienteChange(Sender: tObject);
    procedure CbLiberacaoChange(Sender: tObject);
    procedure CNumLicencasExit(Sender: tObject);
    procedure MemoObsKeyPress(Sender: tObject; var Key: Char);
    procedure DataAtualExit(Sender: tObject);
    procedure DataInicioExit(Sender: tObject);
    procedure DataAtualizacaoExit(Sender: tObject);
    procedure DataVendaExit(Sender: tObject);
    procedure DataImplantacaoExit(Sender: tObject);
    procedure DataConclusaoExit(Sender: tObject);
    procedure CbLiberacaoClick(Sender: tObject);
    procedure CbLiberacaoExit(Sender: tObject);
    procedure cMesVenctoExit(Sender: tObject);
    procedure SpbtnImplantacaoClick(Sender: tObject);
    procedure SpbtnContratoClick(Sender: tObject);
    procedure DataCancelaExit(Sender: tObject);
    procedure DataAtualEnter(Sender: tObject);
    procedure CbxTranspExit(Sender: tObject);
    procedure DBRADBloqueiaClick(Sender: tObject);
    procedure SpeedButton5Click(Sender: tObject);
    procedure CbxCobrancaClick(Sender: tObject);
    procedure CbxCobrancaEnter(Sender: tObject);
    procedure DBEBanco_codigoExit(Sender: tObject);
    procedure DBEBanco_codigoKeyPress(Sender: tObject; var Key: Char);
    procedure DbePrazoCodigoKeyPress(Sender: tObject; var Key: Char);
    procedure CbxPrazoClick(Sender: tObject);
    procedure CbxPrazoEnter(Sender: tObject);
    procedure DbePrazoCodigoExit(Sender: tObject);
    procedure CbPaisClick(Sender: tObject);
    procedure DBEOPE_CODIGOClick(Sender: tObject);
    procedure DBEOPE_CODIGOEnter(Sender: tObject);
    procedure DBEOPE_CODIGOExit(Sender: tObject);
    procedure CbCFOPClick(Sender: tObject);
    procedure dbgrdVendasDrawColumnCell(Sender: tObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgrdVendasTitleClick(Column: TColumn);
    procedure CbConsFinalChange(Sender: tObject);
    procedure DBECentroCustoExit(Sender: tObject);
    procedure CbxCentroCustoClick(Sender: tObject);
    procedure CbxCentroCustoEnter(Sender: tObject);
    procedure CdsClienteContatoBeforePost(DataSet: TDataSet);
    procedure CdsClienteContatoAfterPost(DataSet: TDataSet);
    procedure frxVendasGetValue(const VarName: String; var Value: Variant);
    procedure btnImprimirVendasClick(Sender: tObject);
    procedure CdsAvisosAfterPost(DataSet: TDataSet);
    procedure CdsAvisosBeforePost(DataSet: TDataSet);
    procedure DBGrid4DrawColumnCell(Sender: tObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cxCNAEClick(Sender: tObject);
    procedure cxCNAEExit(Sender: tObject);
    procedure SpeedButton1Click(Sender: tObject);
    procedure btnCnaeClick(Sender: tObject);
    procedure CdsAvisosAfterDelete(DataSet: TDataSet);
    procedure DbeCliCepExit(Sender: tObject);
    procedure ACBrCEP1BuscaEfetuada(Sender: tObject);
    procedure DbeLimiteCredExit(Sender: tObject);
    procedure DbeLimiteCredChange(Sender: tObject);
    procedure ACBrCEPEntregaBuscaEfetuada(Sender: tObject);
    procedure ACBrCEPCobrancaBuscaEfetuada(Sender: tObject);
    procedure DbeCli_cepentrExit(Sender: tObject);
    procedure DbeCli_cepfatExit(Sender: tObject);
    procedure DBGrid7DblClick(Sender: tObject);
    procedure DBGrid7KeyPress(Sender: tObject; var Key: Char);
    procedure AbrirArquivo1Click(Sender: tObject);
    procedure btnSalvarArquivoClick(Sender: tObject);
    procedure ExcluirArquivo1Click(Sender: tObject);
    procedure edTabelaMenuPesquisaClick(Sender: tObject);
    procedure CbTabelaPrecoChange(Sender: tObject);
    procedure edTabelaChange(Sender: tObject);
    procedure CdsAvisosCLIM_MENSAGEMGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure DbeCil_inscExit(Sender: TObject);
    procedure cdsClienteEnderBeforePost(DataSet: TDataSet);
    procedure cdsClienteEnderAfterPost(DataSet: TDataSet);
    procedure HabilitaEndereco(Parametro:Boolean);
    procedure cdsClienteEnderBeforeEdit(DataSet: TDataSet);
    procedure cdsClienteEnderBeforeInsert(DataSet: TDataSet);
    procedure cdsClienteEnderAfterCancel(DataSet: TDataSet);
    procedure edCliCepOutrosExit(Sender: TObject);
    procedure cdsClienteEnderNewRecord(DataSet: TDataSet);
    procedure cdsClienteEnderAfterDelete(DataSet: TDataSet);
    procedure DBGrid5DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cdsClienteEnderPostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
    procedure FormConstrainedResize(Sender: TObject; var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);
    procedure TabSheet8Show(Sender: TObject);
    procedure tsPrincipalShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnConsultarCNPJ_CPFClick(Sender: TObject);
    procedure miImportarExcelClick(Sender: TObject);
    procedure miLeaiuteClick(Sender: TObject);
    procedure DBMemo2Enter(Sender: TObject);
    procedure DBMemo2Exit(Sender: TObject);
    procedure MemoObsEnter(Sender: TObject);
    procedure Memo_HistoricoEnter(Sender: TObject);
    procedure CbTipoFreteChange(Sender: TObject);
    procedure DBMemo4Enter(Sender: TObject);
    procedure DBMemo4Exit(Sender: TObject);
    procedure DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
    procedure CdsClienteContatoCC_TIPOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure CdsClienteContatoCC_TIPOSetText(Sender: TField; const Text: string);
    procedure btCRMClick(Sender: TObject);
    procedure DsDupFatDataChange(Sender: TObject; Field: TField);
    procedure ExportarparaC91Click(Sender: TObject);
    procedure qClientesCLI_FONEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
  private

    bIncluir_Servico, bAlterar_Servico: Boolean;
    { campos }
    CampoEdit: TEdit;
    CampoMaskEdit: TMaskEdit;
    CampoDBEdit: TDBEdit;
    CampoBox: TComboBox;
    CampoData: TDBDateEdit;
    CampoMemo: TMemo;
    CampoCurrency: TCurrencyEdit;
    procedure ChecaCliente;
    procedure LimpaObjetos;
    Function ValidaDados: Boolean;
    procedure MostraClientes(sTipo: String);
    //
    procedure Gravar_Servico_Cliente;
    procedure Limpar_Objetos_Servico;
    procedure Excluir_Servico_Cliente(sCodClie: String);
    procedure Mostrar_Servico_Cliente(sCodClie: String);
    procedure Verificar_Servico_Cliente(sCodClie: String);
    procedure Limpar_Campos_Contrato;
    procedure Limpar_Campos_Implantacao;
    procedure Buscar_Ultima_Validade(sCodClie: String);
    procedure AtualizaLimite;
    procedure AbrirArquivo;

    procedure CdsClientesAfterScroll(DataSet: TDataSet);
    procedure MostraPrecosExclusivosCliente;
    function Verifica_Transportadora_Ativo(sCodTran: String): Boolean;
  public
    { Public declarations }
    { registro vindo do contas a receber }
    sRegCRC: String;
    procedure BotoesAcesso;
    procedure DesabilitaBotoes;
    procedure verificaEdicao;
  end;

var
  FormCliente: TFormCliente;

implementation

{$R *.DFM}

uses Uteis, GImpClie, DataCad, Rep0001, Trp0001, Reg0001, CLI0004,
     PesquisaClientesForm, InicioDB,
     Men0001, DataMov2, CID0002, Variants, uCnae, PesquisaTabelasForm,
     EditTabelasForm, DataCad1, UPesqContaCorrenteCredito, consultarCNPJ, UPedidoDoacao, uFrmTarefas;

var
  FrmEdtTabPreco: TfrmEditTabelas;

procedure TFormCliente.MudaCorCampos(Sender: tObject);
begin
  { cor dos campos TDBEdit }
  if Assigned(CampoDBEdit) then
  begin
    CampoDBEdit.color := clWindow;
  end;
  if ActiveControl is TDBEdit then
  begin
    if TDBEdit(ActiveControl).color = $00D7D7D7 then
    begin
      exit;
    end;
    TDBEdit(ActiveControl).color := $0080FFFF;
    CampoDBEdit := TDBEdit(ActiveControl);
  end
  else
  begin
    CampoDBEdit := nil;
  end;
  { CampoEdit :TEdit }
  if Assigned(CampoEdit) then
  begin
    CampoEdit.color := clWindow;
  end;
  if ActiveControl is TEdit then
  begin
    if TEdit(ActiveControl).color = $00D7D7D7 then
    begin
      exit;
    end;
    TEdit(ActiveControl).color := $0080FFFF;
    CampoEdit := TEdit(ActiveControl);
  end
  else
  begin
    CampoEdit := nil;
  end;
  { cor dos campos TCampoBox }
  if Assigned(CampoBox) then
  begin
    CampoBox.color := clWindow;
  end;
  if ActiveControl is TComboBox then
  begin
    TComboBox(ActiveControl).color := $0080FFFF;
    CampoBox := TComboBox(ActiveControl);
  end
  else
  begin
    CampoBox := nil;
  end;
  { CampoData  :TDBDateEdit }
  if Assigned(CampoData) then
  begin
    CampoData.color := clWindow;
  end;
  if ActiveControl is TDBDateEdit then
  begin
    TDBDateEdit(ActiveControl).color := $0080FFFF;
    CampoData := TDBDateEdit(ActiveControl);
  end
  else
  begin
    CampoData := nil;
  end;
  { CampoMemo:TMemo }
  if Assigned(CampoMemo) then
  begin
    CampoMemo.color := clWindow;
  end;
  if ActiveControl is TMemo then
  begin
    TMemo(ActiveControl).color := $0080FFFF;
    CampoMemo := TMemo(ActiveControl);
  end
  else
  begin
    CampoMemo := nil;
  end;
  { CampoEdit :TMaskEdit }
  if Assigned(CampoMaskEdit) then
  begin
    CampoMaskEdit.color := clWindow;
  end;
  if ActiveControl is TMaskEdit then
  begin
    TMaskEdit(ActiveControl).color := $0080FFFF;
    CampoMaskEdit := TMaskEdit(ActiveControl);
  end
  else
  begin
    CampoMaskEdit := nil;
  end;
  { CampoEdit :TEdit }
  if Assigned(CampoCurrency) then
  begin
    CampoCurrency.color := clWindow;
  end;
  if ActiveControl is TCurrencyEdit then
  begin
    if TCurrencyEdit(ActiveControl).color = $00D7D7D7 then
    begin
      exit;
    end;
    TCurrencyEdit(ActiveControl).color := $0080FFFF;
    CampoCurrency := TCurrencyEdit(ActiveControl);
  end
  else
  begin
    CampoCurrency := nil;
  end;

end;

procedure TFormCliente.Bit_SairClick(Sender: tObject);
begin
  close;
end;

procedure TFormCliente.BotoesAcesso;
begin
  if Assigned(FormCliente) then
  begin
    Bit_novo.Enabled := Uteis.AcessoUsuario('CadastrosClientes',DBInicio.Usuario.CODIGO,FormCliente).Incluir;
    Bit_Excluir.Enabled := Uteis.AcessoUsuario('CadastrosClientes',DBInicio.Usuario.CODIGO,FormCliente).Exluir;
    Bit_Relatorio.Enabled := Uteis.AcessoUsuario('CadastrosClientes',DBInicio.Usuario.CODIGO,FormCliente).Relatorio;


    DataCadastros.DsCliente.AutoEdit := Uteis.AcessoUsuario('CadastrosClientes',DBInicio.Usuario.CODIGO,FormCliente).Alterar;

  end;
end;

procedure TFormCliente.Bit_novoClick(Sender: tObject);
begin

  Screen.Cursor := crHourglass;
  if DataCadastros.CdsClientes.Active = false then
    DataCadastros.CdsClientes.Active := true;
  DataCadastros.CdsClientes.Insert;
  Screen.Cursor := crDefault;
  EdtCli_codigo.Text := '00000';
  EdtCli_codigo.Enabled := False;
  DesabilitaBotoes;
  Msk_cnpj.Text := '';
  CbxAtiv.Text := '';
  CbxTransp.Text := '';
  CbxRegiao.Text := '';
  CbxCobranca.Text := '';

  CurrDias.Text := '';

  // CbCFOP.Text := '';
  CbxPrazo.Text := '';
  CbTipoFrete.ItemIndex := -1;
  CbxCentroCusto.ItemIndex := -1;

  cxCNAE.ItemIndex := -1;
  cbRegime.ItemIndex := -1;
  CbTabelaPreco.Text := dbInicio.empresa.wPmt_Tabnome1;
  // default é sempre a primeira tabela

  // DBECLIUF.Field.AsString := 'PR';
  cbConsFinal.ItemIndex := 1; // consumidor final = NAO
  DBRADBloqueia.ItemIndex := 0; // Ativo

  DataCadastros.CdsClientesCLI_DTINICIO.AsDateTime := date;
  DataCadastros.CdsClientesCLI_LIMITECRED.AsFloat := StrToFloat(dbInicio.GetParametroSistema('PMT_LIMITE_CREDITO_INICIAL'));
  RadJuridica.Checked := True;
  Rad_Nacional.Checked := True;
  RadClasCliente.Checked := True;
  uteis.HabilitaIncluir('CadastrosClientes',DBInicio.Usuario.CODIGO,FormCliente);
  Msk_cnpj.SetFocus;
  if dbInicio.Empresa.fCODIGO_REPRES <> '000' then
  begin
   DataCadastros.CdsClientesREP_CODIGO.AsString :=dbInicio.Empresa.fCODIGO_REPRES;
  end;
end;

procedure TFormCliente.verificaEdicao;
begin
  if DataCadastros.CdsClientes.State in [dsEdit, dsInsert] then
  begin
    if Uteis.confirmacao('Deseja salvar alterações ?') = idyes then
    begin
      DataCadastros.CdsClientesCLI_CODIGO.AsString := EdtCli_codigo.Text;
      DataCadastros.CdsClientes.ApplyUpdates(0);
      HabilitaBotoes;
    end
    else
    begin
      DataCadastros.CdsClientes.Cancel;
      HabilitaBotoes;
    end;
  end;
end;

procedure TFormCliente.DesabilitaBotoes;
begin
  BotoesAcesso;
  Bit_novo.Enabled := False;
  Bit_Excluir.Enabled := False;
  Bit_Sair.Enabled := False;
  Bit_Relatorio.Enabled := False;
  BtnConsulta.Enabled := False;
  Bit_Gravar.Enabled := True;
  Bit_Cancelar.Enabled := True;
  EdtCli_codigo.Enabled := False;
  EdtCli_codigo.color := clSilver;
  DbNavigator1.Enabled := False;


end;

procedure TFormCliente.DsDupFatDataChange(Sender: TObject; Field: TField);
begin
  inherited;
   CdSRecebimentos.Close;
   if (not SqlCdsDupFat.IsEmpty) then
      begin
         wSql1      := 'SELECT  '+
                       '     T1.FAT_REGISTRO,'+
                       '     T1.FRE_REGISTRO,'+
                       '     T1.FRE_DATA_RECEBIMENTO,'+
                       '     T1.FRE_VALOR,'+
                       '     T1.FRE_DESCONTO,'+
                       '     T1.FRE_JUROS,'+
                       '     T1.FRE_MULTA,'+
                       '     T1.FRE_RECEBIDO,'+
                       '     T1.BAN_CODIGO, '+
                       '     T2.BAN_APELIDO as BAN_RAZAO,'+
                       '     T1.FPG_REGISTRO,'+
                       '     T3.FPG_DESCRICAO,'+
                       '     T1.USU_CODIGO,'+
                       '     t4.USU_NOME '+
                       ' FROM '+
                       ' FAT_RECEBIMENTO T1 '+
                       ' JOIN BAN0000 T2 ON (T2.BAN_CODIGO = T1.BAN_CODIGO) '+
                       ' JOIN FORMA_PAGAMENTO T3 ON (T3.FPG_REGISTRO = T1.FPG_REGISTRO) '+
                       ' JOIN USUARIO T4 ON (T4.USU_CODIGO = T1.USU_CODIGO)';
         wSeleciona := 'WHERE T1.FAT_REGISTRO = '+ SqlCdsDupFatFAT_REGISTRO.AsString;
         wOrdem     := 'T1.FRE_DATA_RECEBIMENTO';
         qRecebimentos.sql.Text := SQLDEF('RECEBER',wSql1,wSeleciona,wOrdem,'T1.');

         CdSRecebimentos.Open;
         CdSRecebimentos.Filtered := False;
         CdSRecebimentos.Filter := 'FRE_RECEBIDO > 0';
         CdSRecebimentos.Filtered := True;
      end;
end;

procedure TFormCliente.HabilitaBotoes;
begin
  Bit_novo.Enabled := True;
  Bit_Excluir.Enabled := True;
  Bit_Sair.Enabled := True;
  Bit_Relatorio.Enabled := True;
  BtnConsulta.Enabled := True;
  Bit_Gravar.Enabled := False;
  Bit_Cancelar.Enabled := False;
  if not DataCadastros.CdsClientes.IsEmpty then
    EdtCli_codigo.Enabled := True
  else
    EdtCli_codigo.Enabled := False;
  if (PageCliente.ActivePageIndex = 0) then

    //DBECLI_Iscmunicipal.SetFocus; // DbeCli_razao.SetFocus;
  //
  EdtCli_codigo.color := clWindow;
  DbNavigator1.Enabled := True;
  BotoesAcesso;
end;

procedure TFormCliente.HabilitaEndereco(Parametro:Boolean);
begin
  edEndeOutros.Enabled := Parametro;
  edCliCepOutros.Enabled := Parametro;
  edBairroOutros.Enabled := Parametro;
  DBEdit17.Enabled := Parametro;
  edCidadeOutros.Enabled := Parametro;
  edUfOutros.Enabled := Parametro;
  edNumero.Enabled := Parametro;
  edComplementoOutros.Enabled := Parametro;
  cxdbComboBox1.Enabled := Parametro;
  cxDBCheckBox1.Enabled := Parametro;
  Label99.Enabled := parametro;
  Label95.Enabled := parametro;
  Label102.Enabled := parametro;
  Label103.Enabled := parametro;
  Label96.Enabled := parametro;
  Label97.Enabled := parametro;
  Label98.Enabled := parametro;
  Label100.Enabled := parametro;
  Label101.Enabled := parametro;
  Label104.Enabled := parametro;
  edCidadeOutros.Enabled := Parametro;
  cxDBLookupComboBox1.Enabled := Parametro;
  DBEdit20.Enabled := Parametro;
  Label105.Enabled := Parametro;
  SpeedButton1.Enabled := Parametro;
  cxDBCheckBox1.Enabled := Parametro;
  EDIE.Enabled := Parametro;
  edCNPJ.Enabled := Parametro;
  LCNPJ.Enabled := Parametro;
  LIE.Enabled := Parametro;
end;

procedure TFormCliente.Bit_GravarClick(Sender: tObject);
var
  lid: string;
begin
  if (ValidaDados) then
  begin

       lid := edTabela.idRetorno;
       if (DataCadastros.CdsClientes.State in [dsbrowse]) and (not DataCadastros.CdsClientes.IsEmpty) then
          DataCadastros.CdsClientes.Edit;


       PageCliente.ActivePageIndex := 0;
       EdtCli_codigo.Enabled := True;
       DataCadastros.CdsClientesPRE_ID.AsString := lid;
       if StrToIntDef( EdtCli_codigo.Text, 0 ) = 0 then
          EdtCli_codigo.Text := strzero( dbInicio.GetNextSequence('GEN_CLI0000_CODIGO'), 5 ) ;

       DataCadastros.CdsClientesEMP_CODIGO.AsString := dbInicio.empresa.EMP_CODIGO;
       DataCadastros.CdsClientesCLI_CGC.AsString := Msk_cnpj.Text;
       DataCadastros.CdsClientesCLI_CODIGO.AsString := StrZero(EdtCli_codigo.Text, EdtCli_codigo.MaxLength);
       DataCadastros.CdsClientesCLI_PAIS.AsString := IIF(Rad_Nacional.Checked, 'N', 'I');
       DataCadastros.CdsClientesCLI_PESSOA.AsString := IIF(RadJuridica.Checked, 'J', 'F');
       DataCadastros.CdsClientesCLI_CLASSE_CLI_FOR.AsString := IIF(RadClasCliente.Checked, 'C', IIF(RadClasFornecedor.Checked, 'F', 'A'));
       DataCadastros.CdsClientesCLI_PORTE.AsString := IIF(RadPequena.Checked, 'P', IIF(RadMedia.Checked, 'M', 'G'));
       DataCadastros.CdsClientesCLI_PROTESTAR.AsString := IIF(RadProSim.Checked, 'S', 'N');
       DataCadastros.CdsClientesCLI_QTDE_DIAS_PROTESTO.AsInteger := CurrDias.AsInteger;
       DataCadastros.CdsClientesCLI_CONSFINAL.AsString := IIF(cbConsFinal.ItemIndex = 0, 'S', 'N');
       DataCadastros.CdsClientesPAI_CODIGO.AsString := CbPais.EditValue;
        //0-Remetente (CIF)
//        1-Destinatário (FOB)
//        2-Terceiros
//        3-Próprio por conta do remetente
//        4-Próprio por conta do destinatário
//        9-Sem frete

       dataCadastros.CdsClientesCLI_FRETE.AsString := iif(CbTipoFrete.ItemIndex=-1,'',iif(CbTipoFrete.ItemIndex=5,'9',IntToStr(CbTipoFrete.ItemIndex)));

//       if ( cbCFOPpadrao.EditValue = null) or ( cbCFOPpadrao.EditValue = '') then
//       begin
//            DataCadastros.sqlUpdate.close;
//            DataCadastros.sqlUpdate.sql.Text := 'select OPE_CODIGO_DENTRO, OPE_CODIGO_FORA from EMP0000 WHERE EMP_CODIGO = ' + QuotedStr(dbInicio.empresa.EMP_CODIGO);
//            DataCadastros.sqlUpdate.Open;
//            if (not DataCadastros.sqlUpdate.IsEmpty) then
//            begin
//                 if (dbInicio.empresa.UF <> DataCadastros.CdsClientesCLI_UF.AsString) then
//                 begin
//                      DataCadastros.CdsClientesOPE_CODIGO.AsString := DataCadastros.sqlUpdate.FieldByName('OPE_CODIGO_FORA').AsString;
//                 end
//                 else
//                 begin
//                      DataCadastros.CdsClientesOPE_CODIGO.AsString := DataCadastros.sqlUpdate.FieldByName('OPE_CODIGO_DENTRO').AsString;
//                 end;
//                 cbCFOPpadrao.EditValue := DataCadastros.CdsClientesOPE_CODIGO.AsString;
//            end;
//       end;



      // gravar tabela de preço
      case CbTabelaPreco.ItemIndex of
        0:
          DataCadastros.CdsClientes.FieldByName('CLI_TABPRECO').AsString := 'T1';
        1:
          DataCadastros.CdsClientes.FieldByName('CLI_TABPRECO').AsString := 'T2';
        2:
          DataCadastros.CdsClientes.FieldByName('CLI_TABPRECO').AsString := 'T3';
        3:
          DataCadastros.CdsClientes.FieldByName('CLI_TABPRECO').AsString := 'T4';
        4:
          DataCadastros.CdsClientes.FieldByName('CLI_TABPRECO').AsString := 'T5';
        5:
          DataCadastros.CdsClientes.FieldByName('CLI_TABPRECO').AsString := 'T6';
      end;
      DataCadastros.CdsClientes.Post;
      DataCadastros.CdsClientes.ApplyUpdates(0);
      DataCadastros.DsCliente.AutoEdit := True;
      EdtCli_codigo.Text := DataCadastros.CdsClientesCLI_CODIGO.AsString;
      HabilitaBotoes;
      AtualizaLimite;
      DBECLI_Iscmunicipal.SetFocus; // DbeCli_razao.SetFocus;
      DbNavigator1.Enabled := True;
      //
      if (FrmMenu.wServicoCliente = 'S') then
        if (bIncluir_Servico) or (bAlterar_Servico) then
          Gravar_Servico_Cliente;
      if Assigned(frmPedidoDoacao) then
      begin
        if frmPedidoDoacao.cdsPedido.State <> dsInsert then
            frmPedidoDoacao.BtnNovo.Click;
         frmPedidoDoacao.cdsPedidoCLI_CODIGO.AsString :=     DataCadastros.CdsClientesCLI_CODIGO.AsString;
         close;
      end;
  end;
end;

procedure TFormCliente.btCRMClick(Sender: TObject);
var
		tcr: TfrmTarefas;
begin
  inherited;
  tcr := TfrmTarefas.create( self );
  tcr.novo('CRM Agenda- Nova tarefa') ;
end;

procedure TFormCliente.Bit_CancelarClick(Sender: tObject);
begin
  Screen.Cursor := crHourglass;
  PageCliente.ActivePageIndex := 0;
  DataCadastros.CdsClientes.Cancel;
  //DataCadastros.CdsClientes.CancelUpdates;
  //DataCadastros.CdsClientes.Refresh;

  if DataCadastros.CdsClientes.IsEmpty Then
  begin
    DataCadastros.DsCliente.AutoEdit := False;
    EdtCli_codigo.Enabled := False;
  end;
  Screen.Cursor := crDefault;
  if (FrmMenu.wServicoCliente = 'S') then
  begin
    Limpar_Objetos_Servico;
    bIncluir_Servico := False;
    bAlterar_Servico := False;
  end;
  HabilitaBotoes;
  DBECLI_Iscmunicipal.SetFocus; // DbeCli_razao.SetFocus;
  EdtCli_codigo.Enabled := True;
  EdtCli_codigo.Text := DataCadastros.CdsClientesCLI_CODIGO.AsString;
  MostrarCliente;
  FormCliente.DbNavigator1.Enabled := True;
end;

procedure TFormCliente.Bit_ExcluirClick(Sender: tObject);
begin
  if DataCadastros.CdsClientes.IsEmpty Then
  Begin // em uma Tabela Vazia.
    messagebeep($FFFF);
    Uteis.aviso('Não existe cliente cadastrado !');
    EdtCli_codigo.SetFocus;
    exit;
  end;
  Screen.Cursor := crHourglass;
  try
    DataCadastros.sqlUpdate.close;
    DataCadastros.sqlUpdate.sql.Text :=
      Sqldef('RECEBER', 'Select CLI_CODIGO from FAT0000',
      'where CLI_CODIGO = ''' + EdtCli_codigo.Text + '''', 'CLI_CODIGO', '');
    DataCadastros.sqlUpdate.Open;
    if DataCadastros.sqlUpdate.IsEmpty then
    begin
      if Uteis.confirmacao('Deseja excluir este Cliente ?') = Mryes then
      begin
        Screen.Cursor := crHourglass;
        DataCadastros.CdsClientes.Delete;
        DataCadastros.CdsClientes.ApplyUpdates(0);
        Screen.Cursor := crDefault;
        if (FrmMenu.wServicoCliente = 'S') then
        begin
          Excluir_Servico_Cliente(EdtCli_codigo.Text);
          bIncluir_Servico := False;
          bAlterar_Servico := False;
        end;
      end;
    end
    else
    begin
      Uteis.aviso('Cliente não pode ser excluído, existe movimento !');
      DataCadastros.sqlUpdate.close;
    end;
  except
    on E: EdatabaseError do
      Uteis.erro(Pchar('Erro ao excluir o registro !' + E.Message));
  end;
  Screen.Cursor := crDefault;
  EdtCli_codigo.Text := DataCadastros.CdsClientesCLI_CODIGO.AsString;
  MostrarCliente;
  EdtCli_codigo.SetFocus;
end;

procedure TFormCliente.FormShow(Sender: tObject);
begin
  { ativa o método ao evento OnActiveControlChange }
  Screen.OnActiveControlChange := MudaCorCampos;
  Screen.Cursor := crHourglass;
  PageCliente.ActivePageIndex := 0;
  PreencheCombo;
  bIncluir_Servico := False;
  bAlterar_Servico := False;
  MostraClientes('C'); // CARREGA TABELA
  { coso chamado do contas a receber localizar pelo registro enviado }
  if (sRegCRC <> '') then
  begin
    BuscaCliente(sRegCRC);
  end;
  // fim
  if (FrmMenu.wServicoCliente = 'S') then
  begin
    TabSheet3.TabVisible := True;
  end
  else
  begin
    //se não foi ADM E novi
    TabSheet3.TabVisible :=  MatchStr(DBInicio.Usuario.USERNAME,['ADM','NOVI']);
  end;
  cbContaFinanceira.WherePersonalizado := ' WHERE CCT_CONTA = ''E'' AND CCT_STATUS = ''L''  ';
  HabilitaBotoes;
  Screen.Cursor := crDefault;
  PageCliente.ActivePageIndex := 0;
  PageControl1.ActivePageIndex := 0;
  PageControl2.ActivePageIndex := 0;
end;

// **************************************************************
procedure TFormCliente.FormCloseQuery(Sender: tObject; var CanClose: Boolean);
begin
  // verifica o estado de edicao
  verificaEdicao;
  try
    DataCadastros.CdsClientes.PacketRecords := -1;
    DataCadastros.CdsClientes.close;
    DataCadastros.CdsRegiao.close;
    DataCadastros.CdsRepresentante.close;
    DataCadastros.CdsTransportadora.close;
    DataCadastros.CdsAtividade.close;
    CdsVendas.close;
    SqlCdsPais.close;
    SqlCdsCNAE.close;
  except
    on E: EdatabaseError do
      Uteis.erro(Pchar('Erro ao Fechar as Tabelas !' + E.Message));
  end;
end;

procedure TFormCliente.FormConstrainedResize(Sender: TObject; var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);
begin

end;

// *******************************************************************
procedure TFormCliente.EdtCli_codigoExit(Sender: tObject);
begin
  if (EdtCli_codigo.Text <> '') then
  begin
    EdtCli_codigo.Text := StrZero(EdtCli_codigo.Text, EdtCli_codigo.MaxLength);
    Screen.Cursor := crHourglass;
    BuscaCliente(EdtCli_codigo.Text);
    Screen.Cursor := crDefault;
  end;
end;

procedure TFormCliente.BuscaCliente(wCodigo: String);
var
  sCondicao: String;
begin
  try
    sCondicao := 'where 1 = 1 ';
    if (dbInicio.Empresa.bVisualizaClientes_P) and (dbInicio.Empresa.fCODIGO_REPRES <> '000') then
      sCondicao := sCondicao + ' and (REP_CODIGO =' + qStr(dbInicio.Empresa.fCODIGO_REPRES) +
                 ' or VEND_INTERNO_CODIGO = '+  QuotedStr(dbInicio.Empresa.fCODIGO_REPRES) +')' ;
    DataCadastros.CdsClientes.close;
    DataCadastros.CdsClientes.PacketRecords := -1;
    DataCadastros.CdsClientes.CommandText :=
      Sqldef('CLIENTES', 'SELECT C1.* FROM CLI0000 C1 ',
      sCondicao + ' and C1.CLI_CODIGO = ''' + wCodigo + '''',
      'C1.CLI_CODIGO', 'C1.');
    DataCadastros.CdsClientes.Open;
    if (not DataCadastros.CdsClientes.IsEmpty) then
    begin
      DataCadastros.DsCliente.AutoEdit := True;
      MostrarCliente;
      DbNavigator1.Enabled := False;
      DesabilitaBotoes;
    end
    else
    begin
      messagebeep($FFFF);
      LimpaObjetos;
      Uteis.aviso('Código do cliente não cadastrado !!!');
      MostraClientes('C');
      EdtCli_codigo.Text := DataCadastros.CdsClientesCLI_CODIGO.AsString;
      EdtCli_codigo.SetFocus;
      EdtCli_codigo.SelectAll;
    end;
  except
    on E: EdatabaseError do
      Uteis.erro(Pchar('Erro ao localizar o cliente ! ' + #13 + #10 +
        'Messagem: ' + E.Message));
  end;
end;

procedure TFormCliente.BtnConsultaClick(Sender: tObject);
var
  tcr: tFrmPesquisaClientes;
begin
  tcr:= tFrmPesquisaClientes.Create(self);
  try
   tcr.ShowModal;
   if tcr.modalresult = mrok then
      BuscaCliente( tcr.IDRetorno );
  Finally
       FreeAndNil(tcr);
  end;
  HabilitaBotoes;
end;

procedure TFormCliente.Bit_RelatorioClick(Sender: tObject);
begin
  try
    FormGImpClie := TFormGImpClie.Create(Application);
    try
      FormGImpClie.ShowModal;
    finally
      FormGImpClie.Destroy;
      FormGImpClie := nil;
    end;
  except
    // beep;
    Uteis.erro('Ocorreu um erro na criação do formulário!');
  end;
  { ativa o método ao evento OnActiveControlChange }
  Screen.OnActiveControlChange := MudaCorCampos;
end;

procedure TFormCliente.FormClose(Sender: tObject; var Action: TCloseAction);
begin
  Screen.OnActiveControlChange := NIL;
  CdsClienteContato.close;
  CdsAvisos.close;
  CdsArquivo.close;
  if Assigned(FrmEdtTabPreco) then
    FreeAndNil(FrmEdtTabPreco);

  if not Assigned(fmPesqContaCorrenteCredito) then
    Action := CaFree;


end;

procedure TFormCliente.DbeCli_dtinicioExit(Sender: tObject);
begin
  if DbeCli_dtinicio.Text <> '  /  /    ' then
  begin
    if not TestaDataStr(DbeCli_dtinicio.Text) then
      DbeCli_dtinicio.SetFocus;
  end;
end;

procedure TFormCliente.DBeUltCompraExit(Sender: tObject);
begin
  if DBeUltCompra.Text <> '  /  /    ' then
  begin
    if not TestaDataStr(DBeUltCompra.Text) then
      DBeUltCompra.SetFocus;
  end;
end;

procedure TFormCliente.DbDateRestricaoExit(Sender: tObject);
begin
  if DbDateRestricao.Text <> '  /  /    ' then
  begin
    if not TestaDataStr(DbDateRestricao.Text) then
      DbDateRestricao.SetFocus;
  end;
end;

procedure TFormCliente.PreencheCombo;
begin
  Screen.Cursor := crHourglass;
  SqlCdsPais.Open;
  try
    { seleciona os Representantes dos clientes }

    { Seleciona as transportadoras }
    SqlCdsTransp.close;
    SqlCdsTransp.CommandText := Sqldef('TRANSPORTADORAS',
      'SELECT TRP_CODIGO,TRP_RAZAO,EMP_CODIGO FROM TRP0000', '',
      'TRP_RAZAO', '');
    SqlCdsTransp.Open;
    SqlCdsTransp.First;
    while not SqlCdsTransp.Eof do
    begin
      CbxTransp.Items.Add(SqlCdsTranspTRP_RAZAO.AsString);
      SqlCdsTransp.Next;
    end;
    CbxTransp.ItemIndex := 0;

    { Seleciona as regioes }
    SqlCdsRegiao.close;
    SqlCdsRegiao.CommandText := Sqldef('TABELAS', 'SELECT * FROM REG0000', '',
      'REG_CODIGO', '');
    SqlCdsRegiao.Open;
    SqlCdsRegiao.First;
    while not SqlCdsRegiao.Eof do
    begin
      CbxRegiao.Items.Add(SqlCdsRegiaoREG_DESCRI.AsString);
      SqlCdsRegiao.Next;
    end;
    CbxRegiao.ItemIndex := 0;

    { Seleciona Atividades do cliente }
    SqlCdsAtiv.close;
    SqlCdsAtiv.CommandText := Sqldef('TABELAS', 'SELECT * FROM CLI_ATV1', '',
      'RCL_ATIVIDADE', '');
    SqlCdsAtiv.Open;
    SqlCdsAtiv.First;
    while not SqlCdsAtiv.Eof do
    begin
      CbxAtiv.Items.Add(SqlCdsAtivRCL_ATIVIDADE.AsString);
      SqlCdsAtiv.Next;
    end;
    CbxAtiv.ItemIndex := 0;

    CdsCFOP.close;
    CdsCFOP.CommandText := Sqldef('OPERACAOFISCAL',
      'Select OPE_CODIGO, OPE_NATUREZA||''-''||OPE_DESCRI as OPE_DESCRI FROM OPE0000',
      'WHERE OPE_TIPO_OPERACAO <> ''C''', 'OPE_NATUREZA', '');
    CdsCFOP.Open;

    { seleciona bancos }
    SqlCdsBanco.close;
    SqlCdsBanco.CommandText :=
      Sqldef('BANCOS', 'SELECT BAN_CODIGO,BAN_APELIDO FROM BAN0000', '',
      'BAN_APELIDO', '');
    SqlCdsBanco.Open;
    while not SqlCdsBanco.Eof do
    begin
      CbxCobranca.Items.Add(SqlCdsBancoBAN_APELIDO.AsString);
      SqlCdsBanco.Next;
    end;
    CbxCobranca.ItemIndex := 0;

    { Seleciona Prazos }
    SqlCdsPrazo.close;
    SqlCdsPrazo.CommandText := Sqldef('TABELAS',
      'SELECT PCL_CODIGO,PCL_NOME FROM PCL0000', '', 'PCL_NOME', '');
    SqlCdsPrazo.Open;
    while not SqlCdsPrazo.Eof do
    begin
      CbxPrazo.Items.Add(SqlCdsPrazoPCL_NOME.AsString);
      SqlCdsPrazo.Next;
    end;
    CbxPrazo.ItemIndex := 0;

    { Seleciona Prazos }
    SqlCdsCentroCusto.close;
    SqlCdsCentroCusto.CommandText := Sqldef('TABELAS', 'SELECT * FROM PCX0000',
      'WHERE PCX_TIPO = ''L''', 'PCX_NIVEL', '');
    SqlCdsCentroCusto.Open;
    while not SqlCdsCentroCusto.Eof do
    begin
      CbxCentroCusto.Items.Add(SqlCdsCentroCustoPCX_DESCRI.AsString);
      SqlCdsCentroCusto.Next;
    end;
    CbxCentroCusto.ItemIndex := 0;

    CbTabelaPreco.Items.Clear;
    CbTabelaPreco.Items.Add(dbInicio.empresa.wPmt_Tabnome1);
    CbTabelaPreco.Items.Add(dbInicio.empresa.wPmt_Tabnome2);
    CbTabelaPreco.Items.Add(dbInicio.empresa.wPmt_Tabnome3);
    CbTabelaPreco.Items.Add(dbInicio.empresa.wPmt_Tabnome4);
    CbTabelaPreco.Items.Add(dbInicio.empresa.wPmt_Tabnome5);
    CbTabelaPreco.Items.Add(dbInicio.empresa.wPmt_Tabnome6);
    CbTabelaPreco.ItemIndex := 0;

    SqlCdsCNAE.Open;

  except
    on E: EdatabaseError do
      Uteis.erro(Pchar('Erro ao Abrir as Tabelas !' + E.Message));
  end;
  Screen.Cursor := crDefault;
end;

procedure TFormCliente.MostrarCliente;
var
  sEmpresa: String;

begin
  EdtCli_codigo.Text := StrZero(DataCadastros.CdsClientesCLI_CODIGO.AsString,
    EdtCli_codigo.MaxLength);

  Rad_Nacional.Checked := IIF(DataCadastros.CdsClientesCLI_PAIS.AsString = 'N',
    'TRUE', 'FALSE');
  Rad_Internacional.Checked :=
    IIF(DataCadastros.CdsClientesCLI_PAIS.AsString = 'I', 'TRUE', 'FALSE');

  if DataCadastros.CdsClientesCLI_PESSOA.AsString = 'J' then
  begin
    Msk_cnpj.EditMask := '99.999.999/9999-99;0; ';
    Msk_cnpj.Text := DataCadastros.CdsClientesCLI_CGC.AsString;
  end
  else
  begin
    Msk_cnpj.EditMask := '999.999.999-99;0; ';
    Msk_cnpj.Text := DataCadastros.CdsClientesCLI_CGC.AsString;
  end;
  RadJuridica.Checked := IIF(DataCadastros.CdsClientesCLI_PESSOA.AsString = 'J','TRUE', 'FALSE');
  RadFisica.Checked := IIF(DataCadastros.CdsClientesCLI_PESSOA.AsString = 'F', 'TRUE', 'FALSE');

  CXCNAE.EditValue :=
    DataCadastros.CdsClientesCNAE_REGISTRO.AsInteger;
  RadClasCliente.Checked :=
    IIF(DataCadastros.CdsClientesCLI_CLASSE_CLI_FOR.AsString = 'C',
    'TRUE', 'FALSE');
  RadClasFornecedor.Checked :=
    IIF(DataCadastros.CdsClientesCLI_CLASSE_CLI_FOR.AsString = 'F',
    'TRUE', 'FALSE');
  RadClasAmbos.Checked :=
    IIF(DataCadastros.CdsClientesCLI_CLASSE_CLI_FOR.AsString = 'A',
    'TRUE', 'FALSE');
  RadPequena.Checked := IIF(DataCadastros.CdsClientesCLI_PORTE.AsString = 'P',
    'TRUE', 'FALSE');
  RadMedia.Checked := IIF(DataCadastros.CdsClientesCLI_PORTE.AsString = 'M',
    'TRUE', 'FALSE');
  RadGrande.Checked := IIF(DataCadastros.CdsClientesCLI_PORTE.AsString = 'G',
    'TRUE', 'FALSE');
  RadProSim.Checked :=
    IIF(DataCadastros.CdsClientesCLI_PROTESTAR.AsString = 'S', 'TRUE', 'FALSE');
  RadProNao.Checked :=
    IIF(DataCadastros.CdsClientesCLI_PROTESTAR.AsString = 'N', 'TRUE', 'FALSE');
  CurrDias.AsInteger :=
    DataCadastros.CdsClientesCLI_QTDE_DIAS_PROTESTO.AsInteger;
  CbPais.EditValue := DataCadastros.CdsClientesPAI_CODIGO.AsString;
  AtualizaLimite;

  if SqlCdsAtiv.Locate('RCL_CODIGO',
    DataCadastros.CdsClientesCLI_ATIVIDADE.AsString, []) = True then
    CbxAtiv.Text := SqlCdsAtivRCL_ATIVIDADE.AsString
  else
    CbxAtiv.Text := '';
  if SqlCdsTransp.Locate('TRP_CODIGO',
    DataCadastros.CdsClientesTRP_CODIGO.AsString, []) = True then
    CbxTransp.Text := SqlCdsTranspTRP_RAZAO.AsString
  else
    CbxTransp.Text := '';
  if SqlCdsRegiao.Locate('REG_CODIGO',
    DataCadastros.CdsClientesREG_CODIGO.AsString, []) = True then
    CbxRegiao.Text := SqlCdsRegiaoREG_DESCRI.AsString
  else
    CbxRegiao.Text := '';
  if SqlCdsBanco.Locate('BAN_CODIGO',
    DataCadastros.CdsClientesBAN_CODIGO.AsString, []) = True then
    CbxCobranca.Text := SqlCdsBancoBAN_APELIDO.AsString
  else
    CbxCobranca.Text := '';
  if SqlCdsPrazo.Locate('PCL_CODIGO',
    DataCadastros.CdsClientesPCL_CODIGO.AsString, []) = True then
    CbxPrazo.Text := SqlCdsPrazoPCL_NOME.AsString
  else
    CbxPrazo.Text := '';
  if SqlCdsCentroCusto.Locate('PCX_CODIGO',
    DataCadastros.CdsClientesPCX_CODIGO.AsString, []) = True then
    CbxCentroCusto.Text := SqlCdsCentroCustoPCX_DESCRI.AsString
  else
    CbxCentroCusto.Text := '';

  CbTabelaPreco.ItemIndex := GetIndiceTabelaPecos
    (DataCadastros.CdsClientesCLI_TABPRECO.AsString);

  cbConsFinal.ItemIndex :=
    IIF(DataCadastros.CdsClientesCLI_CONSFINAL.Text = 'S', 0, 1);
  rgConsumoProprio.Visible := cbConsFinal.ItemIndex = 1;

  CdsCFOP.close;
  CdsCFOP.CommandText := Sqldef('OPERACAOFISCAL',
    'Select OPE_CODIGO, OPE_NATUREZA||''-''||OPE_DESCRI as OPE_DESCRI FROM OPE0000',
    'WHERE OPE_TIPO_OPERACAO <> ''C'' AND ((OPE_DENTRO = ' +
    QuotedStr(IIF(DataCadastros.CdsClientesCLI_UF.AsString = dbInicio.empresa.
    UF, 'D', 'F')) + ')OR(OPE_DENTRO = ''I''))', 'OPE_NATUREZA', '');
  CdsCFOP.Open;

  SqlCdsGraficoVendas.close;
  chtGrafico.Series[0].Clear;
  if (not DataCadastros.CdsClientes.IsEmpty) then
  begin
    SqlCdsGraficoVendas.CommandText := 'select ' + '  first 12 ' +
      '  (extract (year from t1.nf_emissao)) as ano, ' +
      '  (extract (month from t1.nf_emissao)) as mes, ' +
      '  (extract (month from t1.nf_emissao))||''/''||(extract (year from t1.nf_emissao)) as mes_ano, '
      + '  sum(t1.nf_tot_nota) as total  ' + 'from nf0001 t1 ' +
      ' join fat0000 t3 on (t3.fat_codigo = t1.NF_NOTANUMBER and t3.emp_codigo = t1.emp_codigo  and t3.fat_exclusao <> '+QuotedStr('S')+ ')'+
      'where t1.cli_codigo = ' +    QuotedStr(DataCadastros.CdsClientesCLI_CODIGO.AsString) +
      ' and T1.NF_CANCELADA = ''N'' ' +
      ' group by 1,2,3  ' +
      'order by 1 desc, 2 desc';
    SqlCdsGraficoVendas.Open;
    while (not SqlCdsGraficoVendas.Eof) do
    begin
      chtGrafico.Series[0].Add(SqlCdsGraficoVendasTOTAL.AsFloat,
        SqlCdsGraficoVendasMES_ANO.AsString);
      SqlCdsGraficoVendas.Next;
    end;
  end;

  CdsAvisos.close;
  if (not DataCadastros.CdsClientes.IsEmpty) then
  begin
    CdsAvisos.CommandText :=
      'select * from CLI_MENSAGENS T1 where CLI_CODIGO = ' +
      QuotedStr(DataCadastros.CdsClientesCLI_CODIGO.AsString) +
      ' ORDER BY T1.CLIM_REGISTRO';
    CdsAvisos.Open;
  end;

  CdsArquivo.close;
  if (not DataCadastros.CdsClientes.IsEmpty) then
  begin
    CdsArquivo.CommandText := 'SELECT ARQ_REGISTRO, ARQ_TIPO, ARQ_TIPO_TABELA, ARQ_REGISTRO_TABELA,  CAST(NULL AS blob)  as ARQ_ARQUIVO, ARQ_DESCRICAO, ARQ_DATA, ARQ_NOME_ARQUIVO '+
      ' FROM ARQUIVO where ARQ_REGISTRO_TABELA = '+ QuotedStr(DataCadastros.CdsClientesCLI_CODIGO.AsString) +
      ' and ARQ_TIPO_TABELA = ''CLI'' ORDER BY ARQ_DESCRICAO ';
    CdsArquivo.Open;
  end;

  CdsClienteContato.close;
  if (not DataCadastros.CdsClientes.IsEmpty) then
  begin
    CdsClienteContato.CommandText :=
      'select * from CLI_CONTATO T1 where CLI_CODIGO = ' +
      QuotedStr(DataCadastros.CdsClientesCLI_CODIGO.AsString) +
      ' ORDER BY T1.cc_nome';
    CdsClienteContato.Open;
  end;
  CdsVendas.close;

  sEmpresa := '';
  if Share('PRODUTOS') = 'E' then
   sEmpresa := ' and t2.emp_codigo = ''' + dbInicio.empresa.EMP_CODIGO + '''';

  // MOSTRA SOMENTE NOTA DE VENDAS. SE EXCLUIR DO CONTAS A RECEBER NAO MOSTRA
  if (DataCadastros.CdsClientesCLI_CODIGO.AsString <> '') then
  begin
    CdsVendas.CommandText := 'select ' + ' t2.emp_codigo, t1.prd_refer, ' +
      '  t1.prd_descri, ' + '  t1.ped_codigo, ' + '  T1.nf_it_notanumer, ' +
      '  t2.nf_num_nfe, ' + '  t2.nf_emissao, ' + '  t1.nf_qtde, ' +
      '  t1.nf_preco, ' + '  t1.nf_ipialiq, ' +
      '  CAST((coalesce(t1.nf_ipivalor,0) / t1.nf_qtde) AS NUMERIC(18,4)) AS valor_ipi, '
      + '  CAST((coalesce(t1.nf_vlsubst,0) / t1.nf_qtde) AS NUMERIC(18,4)) as valor_icms_st, '
      + '  t1.nf_preco + CAST((coalesce(t1.nf_ipivalor,0) + coalesce(t1.nf_vlsubst,0))/t1.nf_qtde AS NUMERIC(18,4)) as VALOR_FINAL '
      + ' from nf_it01 t1 ' +
      ' join fat0000 t3 on (t3.fat_codigo = t1.nf_it_notanumer and t3.emp_codigo = t1.emp_codigo )  and t3.fat_exclusao <> '+qStr('S')+
      ' join nf0001 t2 on (t2.emp_codigo = t1.emp_codigo and t2.nf_notanumber = t1.nf_it_notanumer  and t2.nf_cancelada <> ''S'' and t2.cli_codigo = '
      + ' ' +QuotedStr( DataCadastros.CdsClientesCLI_CODIGO.AsString) +
      ') where t1.nf_qtde > 0 ' + sEmpresa + 'order by t2.nf_emissao desc';
    CdsVendas.Open;
  end;
  If (DataCadastros.CdsClientes.FieldByName('CLI_FRETE').AsString <> '') and
    not (DataCadastros.CdsClientes.FieldByName('CLI_FRETE').IsNull) then
  begin
    if StrToInt(DataCadastros.CdsClientes.FieldByName('CLI_FRETE').AsString) in [0,1,2,3,4] then
      CbTipoFrete.ItemIndex :=   StrToInt(DataCadastros.CdsClientes.FieldByName('CLI_FRETE').AsString)
    else
      CbTipoFrete.ItemIndex :=  5;
  end
  else
     CbTipoFrete.ItemIndex := -1;

end;

procedure TFormCliente.CbxAtivClick(Sender: tObject);
begin
  if (DataCadastros.CdsClientes.State in [dsbrowse]) and
    not(DataCadastros.CdsClientes.IsEmpty) then
    DataCadastros.CdsClientes.Edit;
  if SqlCdsAtiv.Locate('RCL_ATIVIDADE', CbxAtiv.Text, []) = True then
    DBECLI_ATIVIDADE.Field.Text := SqlCdsAtivRCL_CODIGO.AsString
  else
    DBECLI_ATIVIDADE.Text := '';
end;

procedure TFormCliente.CbxTranspClick(Sender: tObject);
begin
  if (DataCadastros.CdsClientes.State in [dsbrowse]) and
    not(DataCadastros.CdsClientes.IsEmpty) then
    DataCadastros.CdsClientes.Edit;
  if SqlCdsTransp.Locate('TRP_RAZAO', CbxTransp.Text, []) = True then
    DBETRP_CODIGO.Field.Text := SqlCdsTranspTRP_CODIGO.AsString
  else
    DBETRP_CODIGO.Text := '';
end;

procedure TFormCliente.CbxRegiaoClick(Sender: tObject);
begin
  if (DataCadastros.CdsClientes.State in [dsbrowse]) and
    not(DataCadastros.CdsClientes.IsEmpty) then
    DataCadastros.CdsClientes.Edit;
  if SqlCdsRegiao.Locate('REG_DESCRI', CbxRegiao.Text, []) = True then
    DBEREG_CODIGO.Field.Text := SqlCdsRegiaoREG_CODIGO.AsString
  else
    DBEREG_CODIGO.Text := '';
end;

procedure TFormCliente.DbNavigator1Click(Sender: tObject; Button: TNavigateBtn);
begin

  MostrarCliente;

end;

procedure TFormCliente.Msk_cnpjExit(Sender: tObject);
begin
  if DataCadastros.CdsClientes.State in [dsInsert, dsEdit] then
  begin
    if (ActiveControl.Name = 'RadJuridica') or
      (ActiveControl.Name = 'RadFisica') or (ActiveControl.Name = 'Bit_Sair') or
      (ActiveControl.Name = 'Rad_Nacional') or
      (ActiveControl.Name = 'Rad_Internacional') or
      (ActiveControl.Name = 'Bit_Cancelar') and (Bit_Cancelar.Visible = True) or
      (Msk_cnpj.Text = '00000000000') or (Msk_cnpj.Text = '00000000000000') then
      exit;
    if (Msk_cnpj.Text <> '   .   .   -  ') or
      (Msk_cnpj.Text <> '  .   .   /    -  ') then
      if RadJuridica.Checked then
      begin
        if RwFunc.TestaCgcCpf(Msk_cnpj.Text, 'J') = False then
        begin
          Msk_cnpj.SetFocus;
          Msk_cnpj.SelectAll;
        end
        else
          ChecaCliente;
      end
      else
      begin
        if Msk_cnpj.Text = '' then
          exit;
        if RwFunc.TestaCgcCpf(Msk_cnpj.Text, 'F') = False then
        begin
          Msk_cnpj.SetFocus;
          Msk_cnpj.SelectAll;
        end
        else
          ChecaCliente;
      end;
  end;
end;

procedure TFormCliente.DbeCli_FantasiaEnter(Sender: tObject);
begin
  if DataCadastros.CdsClientes.State in [dsInsert] then
  begin
    DbeCli_Fantasia.Field.Text := DbeCli_razao.Text;
  end;
end;

procedure TFormCliente.edCliCepOutrosExit(Sender: TObject);
begin
  if (edCliCepOutros.Text <> '') and (edEndeOutros.Text = '') then
  begin
    ACBrCEPEntrega.BuscarPorCEP(ExtrairNumeros(edCliCepOutros.Text));
  end;
end;

procedure TFormCliente.TabSheet2Show(Sender: tObject);
begin
  if (EdtCli_codigo.Text <> '') then
  begin
    if PageCliente.TabIndex = 1 then
    begin
      Screen.Cursor := crHourglass;
      // nao precisa selecionar por em pois o cliente já esta definido
      try
        wSql1 := 'SELECT F1.FAT_CODIGO,F1.FAT_DTEMIS,F1.PED_CODIGO,F1.CLI_CODIGO,F1.EMP_CODIGO,C1.CLI_RAZAO,SUM(F1.FAT_VLFAT) AS WVALOR FROM FAT0000 F1 ';
        wSql2 := 'LEFT JOIN CLI0000 C1 ON (C1.CLI_CODIGO = F1.CLI_CODIGO) ';
        wSql3 := 'GROUP BY F1.FAT_CODIGO,F1.FAT_DTEMIS,F1.PED_CODIGO,F1.CLI_CODIGO,F1.EMP_CODIGO,C1.CLI_RAZAO ';
        { Campo Fat_Cancelada nao esta sendo utilizado. }
        wSeleciona := 'WHERE F1.FAT_EXCLUSAO = ''N'' AND F1.CLI_CODIGO = ''' +
          EdtCli_codigo.Text + '''';
        if share('RECEBER') = 'E' then
          wSeleciona := wSeleciona + ' AND F1.EMP_CODIGO = ''' +
            dbInicio.empresa.EMP_CODIGO + '''';
        wOrdem := 'ORDER BY F1.FAT_DTEMIS DESC';
        SqlCdsNFS.close;
        SqlCdsNFS.CommandText := wSql1 + wSql2 + wSeleciona + wSql3 + wOrdem;
        SqlCdsNFS.Open;
        if SqlCdsNFS.IsEmpty then
        begin
          SqlCdsNFS.close;
          SqlCdsDupFat.close;
          SqlCdsProdNF.close;
          Uteis.aviso('Cliente sem Movimento Financeiro !');
        end;
      except
        on E: EdatabaseError do
          Uteis.erro(Pchar('Erro ao Abriar as Tabelas !' + E.Message));
      end;
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure TFormCliente.TabSheet8Show(Sender: TObject);
begin
     PageControl2.Height := Panel1.Top;
     PageControl1.Visible := false;
     if DataCadastros.CdsClientesCLI_CODIGO.AsString <> EmptyStr then
     begin
       cdsClienteEnder.Close;
       cdsClienteEnder.ParamByName('COD_CLIENTE').AsString := DataCadastros.CdsClientesCLI_CODIGO.AsString;
       cdsClienteEnder.Open;
       HabilitaEndereco(false);
     end
     else
      cdsClienteEnder.Close;

end;

procedure TFormCliente.tsPrincipalShow(Sender: TObject);
begin
     PageControl1.Visible := true;
     PageControl2.Height := 98;
end;

procedure TFormCliente.FormCreate(Sender: tObject);
begin

  CdsVendasNF_PRECO.DisplayFormat := '###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
  SqlCdsProdNFNF_PRECO.DisplayFormat := CdsVendasNF_PRECO.DisplayFormat;
  ACBrEnterTab1.EnterAsTab := True;
  PageCliente.TabIndex := 0;
  PageCliente.ActivePageIndex := 0;
  PageControl1.ActivePageIndex := 0;
  wSql1 := '';
  wSql2 := '';
  wSql3 := '';
  wSeleciona := '';
  wOrdem := '';
  sRegCRC := '';
  bIncluir_Servico := False;
  bAlterar_Servico := False;

  Self.height := 638;
  Self.width := 973;
  Self.AutoSize := True;

  if (dbInicio.empresa.fPmt_multTab = 'S') then
  begin
    edTabela.FiltroTabela := 'EMP_CODIGO=' + dbInicio.empresa.EMP_CODIGO +
      ' and PRE_TIPO_TABELA < 2';
    edTabela.Left := CbTabelaPreco.Left;
    edTabela.Top := CbTabelaPreco.Top;
    edTabela.width := CbTabelaPreco.width - 30;
    edTabela.Visible := True;
    edTabela.Enabled := True;
    CbTabelaPreco.Visible := False;
    CbTabelaPreco.Enabled := False;
  end
  Else
  Begin
    edTabela.Visible := False;
    edTabela.Enabled := False;
    CbTabelaPreco.Visible := True;
    CbTabelaPreco.Enabled := True;
    tsPrecos.PageControl := nil;
  end;
end;

procedure TFormCliente.FormDestroy(Sender: TObject);
begin
     FormCliente := Nil;
end;

procedure TFormCliente.TabSheet2Exit(Sender: tObject);
begin
  Screen.Cursor := crHourglass;
  try
    SqlCdsDupFat.close;
  except
    on E: EdatabaseError do
      Uteis.erro(Pchar('Erro ao Fechar as Tabelas !' + E.Message));
  end;
  Screen.Cursor := crDefault;
end;

procedure TFormCliente.Msk_cnpjKeyPress(Sender: tObject; var Key: Char);
begin
  if DataCadastros.CdsClientes.State in [dsbrowse] then
    DataCadastros.CdsClientes.Edit;
end;

procedure TFormCliente.RadPequenaEnter(Sender: tObject);
begin
  if DataCadastros.CdsClientes.State in [dsbrowse] then
    DataCadastros.CdsClientes.Edit;
end;

procedure TFormCliente.RadJuridicaClick(Sender: tObject);
begin
  // pessoa juridica
  lbCLI_DTNASCIMENTO.Caption := 'Data de Criação:';
  Msk_cnpj.MaxLength := 18;
  Msk_cnpj.EditMask := '99\.999\.999\/9999\-99;0;_';
  if (Msk_cnpj.Enabled) and (Msk_cnpj.Visible) then
  begin
    try
      Msk_cnpj.SetFocus;
      Msk_cnpj.SelectAll;
    except

    end;
  end;
end;

procedure TFormCliente.RadFisicaClick(Sender: tObject);
begin
  // pessoa fisica
  lbCLI_DTNASCIMENTO.Caption := 'Data de Nascimento:';
  Msk_cnpj.MaxLength := 14;
  Msk_cnpj.EditMask := '999\.999\.999\-99;0;_';
  if (Msk_cnpj.Enabled) and (Msk_cnpj.Visible) then
  begin
    try
      Msk_cnpj.SetFocus;
      Msk_cnpj.SelectAll;
    except

    end;
  end;
end;

procedure TFormCliente.EdtCli_codigoKeyPress(Sender: tObject; var Key: Char);
begin
  { if not (key in ['0'..'9',#8]) then
    begin
    //beep;
    Key := #0;
    end; }
end;

procedure TFormCliente.EdtCli_codigoEnter(Sender: tObject);
begin
  // EdtCli_Codigo.SelectAll;
end;

procedure TFormCliente.DBECLI_ATIVIDADEExit(Sender: tObject);
begin
  if (DBECLI_ATIVIDADE.Text <> '') then
  begin
    DBECLI_ATIVIDADE.Text := StrZero(DBECLI_ATIVIDADE.Text,
      DBECLI_ATIVIDADE.MaxLength);
    if SqlCdsAtiv.Locate('RCL_CODIGO', DBECLI_ATIVIDADE.Text, []) = True then
    begin
      CbxAtiv.Text := SqlCdsAtivRCL_ATIVIDADE.AsString;
    end
    else
    begin
      Uteis.aviso('Atividade não encontrada !');
      CbxAtiv.Text := '';
      DBECLI_ATIVIDADE.Text := '';
      CbxAtiv.SetFocus;
    end;
  end;
end;

procedure TFormCliente.DBETRP_CODIGOExit(Sender: tObject);
begin

  if (DBETRP_CODIGO.Text <> '') then
  begin
    DBETRP_CODIGO.Text := StrZero(DBETRP_CODIGO.Text, DBETRP_CODIGO.MaxLength);
    if SqlCdsTransp.Locate('TRP_CODIGO', DBETRP_CODIGO.Text, []) = True then
    begin
      CbxTransp.Text := SqlCdsTranspTRP_RAZAO.AsString;
    end
    else
    begin
      Uteis.aviso('Transportadora não encontrado !');
      CbxTransp.Text := '';
      DBETRP_CODIGO.Text := '';
      CbxTransp.SetFocus;
    end;
  end;

end;

procedure TFormCliente.DBEREG_CODIGOExit(Sender: tObject);
begin

  if (ActiveControl.Name = 'Bit_Cancelar') or (ActiveControl.Name = 'Bit_Sair')
  then
    exit;
  if (DBEREG_CODIGO.Text <> '') then
  begin
    DBEREG_CODIGO.Text := StrZero(DBEREG_CODIGO.Text, DBEREG_CODIGO.MaxLength);
    if SqlCdsRegiao.Locate('REG_CODIGO', DBEREG_CODIGO.Text, []) = True then
    begin
      CbxRegiao.Text := SqlCdsRegiaoREG_DESCRI.AsString;
    end
    else
    begin
      Uteis.aviso('Região não encontrado !');
      CbxRegiao.Text := '';
      DBEREG_CODIGO.Text := '';
      CbxRegiao.SetFocus;
    end;
  end;

end;

procedure TFormCliente.DBEREP_CODIGOClick(Sender: tObject);
begin
  DBEREP_CODIGO.SelectAll;
end;

procedure TFormCliente.DBECLI_ATIVIDADEClick(Sender: tObject);
begin
  DBECLI_ATIVIDADE.SelectAll;
end;

procedure TFormCliente.CbxAtivEnter(Sender: tObject);
begin
  CbxAtiv.SelectAll;
end;

procedure TFormCliente.DBETRP_CODIGOClick(Sender: tObject);
begin
  DBETRP_CODIGO.SelectAll;
end;

procedure TFormCliente.CbxTranspEnter(Sender: tObject);
begin
  CbxTransp.SelectAll;
end;

procedure TFormCliente.DBEREG_CODIGOClick(Sender: tObject);
begin
  DBEREG_CODIGO.SelectAll;
end;

procedure TFormCliente.CbxRegiaoEnter(Sender: tObject);
begin
  CbxRegiao.SelectAll;
end;

procedure TFormCliente.PreenchaEndereco(wTipoEnd: String);
begin
  if (UpperCase(wTipoEnd) = 'ENTREGA') then
  begin
    DbeCli_Endentr.Field.Text := DbeCli_endere.Text;
    DbeCli_cidentr.Field.Text := DbeCli_cidade.Text;
    DbeCli_cepentr.Field.Text := DbeCliCep.Text;
    DbeCli_ufentr.Field.Text := DBECLIUF.Text;
    DBEdit1.Field.Text := DbeCli_fone.Text;
  end
  else
  begin
    DbeCli_endfat.Field.Text := DbeCli_endere.Text;
    DbeCli_cidfat.Field.Text := DbeCli_cidade.Text;
    DbeCli_cepfat.Field.Text := DbeCliCep.Text;
    DbeCli_uffat.Field.Text := DBECLIUF.Text;
  end;
end;

procedure TFormCliente.DbeCli_endfatEnter(Sender: tObject);
begin
  {
    if DataCadastros.CdsClientes.State in [dsInsert] then
    begin
    if (DbeCli_endfat.Field.IsNull = true) or (DbeCli_endfat.Text = '') then
    if uteis.confirmacao ( ('Endereço de Fatura e o mesmo ?'))=mrYes then
    PreenchaEndereco('FATURA')
    else
    begin
    DbeCli_endfat.SetFocus;
    DbeCli_endfat.SelectAll;
    end;
    end;
  }
end;

procedure TFormCliente.DbeCli_EndentrEnter(Sender: tObject);
begin
  {
    if DataCadastros.CdsClientes.State in [dsInsert] then
    begin
    if (DbeCli_Endentr.Field.IsNull = true) or (DbeCli_Endentr.Text = '') then
    if uteis.confirmacao ( ('Endereço de entrega e o mesmo ?'))=mrYes then
    PreenchaEndereco('ENTREGA')
    else
    begin
    DbeCli_Endentr.SetFocus;
    DbeCli_Endentr.SelectAll;
    end;
    end;
  }
end;

procedure TFormCliente.ChecaCliente;
begin
     if not dbInicio.empresa.wPMT_CNPJ_CLIENTE_DUPLICADO then
     begin

         DataCadastros.sqlUpdate.close;
         DataCadastros.sqlUpdate.sql.Text :=   Sqldef('CLIENTES', 'SELECT C1.CLI_CODIGO,C1.CLI_CGC,C1.REP_CODIGO,VEND_INTERNO_CODIGO FROM CLI0000 C1 ',
                                                                  'WHERE C1.CLI_CGC = ''' + Msk_cnpj.Text + '''', 'C1.CLI_CGC', 'C1.');
         DataCadastros.sqlUpdate.Open;

         if not DataCadastros.sqlUpdate.IsEmpty then
         begin
              if (dbInicio.Empresa.bVisualizaClientes_P) and (dbInicio.Empresa.fCODIGO_REPRES <> '000') and
               not MatchStr(dbInicio.Empresa.fCODIGO_REPRES, [DataCadastros.sqlUpdate.FieldByName('REP_CODIGO').AsString,DataCadastros.sqlUpdate.FieldByName('VEND_INTERNO_CODIGO').AsString] )        then
              begin
                   Uteis.aviso('Cliente já cadastrado porém pertence a outro vendedor!');
                   DataCadastros.CdsClientes.Cancel;
                   DataCadastros.CdsClientes.CancelUpdates;
                   DataCadastros.sqlUpdate.close;
                   MostraClientes('C');
                   Bit_CancelarClick(Self);
                   exit;
              end
              else
              begin
                   Uteis.aviso('Cliente já cadastrado !');
                   DataCadastros.CdsClientes.Cancel;
                   DataCadastros.CdsClientes.CancelUpdates;
                   BuscaCliente( DataCadastros.sqlUpdate.FieldByName('CLI_CODIGO').AsString );
                   if DataCadastros.CdsClientes.State in [dsbrowse] then
                   begin
                       BuscaCliente( DataCadastros.sqlUpdate.FieldByName('CLI_CODIGO').AsString );
//                        if DataCadastros.CdsClientes.Locate('CLI_CODIGO',DataCadastros.sqlUpdate.FieldByName('CLI_CODIGO').AsString, []) then
//                        begin
//                             DataCadastros.sqlUpdate.close;
//                             EdtCli_codigo.Text := DataCadastros.CdsClientesCLI_CODIGO.AsString;
//                             BuscaCliente(EdtCli_codigo.Text);
//                             // MostrarCliente;
//                             // habilitabotoes;
//                        end;
                   end;
              end;
         end
         else
              DataCadastros.sqlUpdate.close;
    end;

end;

procedure TFormCliente.RadJuridicaEnter(Sender: tObject);
begin
  if (DataCadastros.CdsClientes.State in [dsbrowse]) and
    not(DataCadastros.CdsClientes.IsEmpty) then
    DataCadastros.CdsClientes.Edit;
end;

procedure TFormCliente.RadFisicaEnter(Sender: tObject);
begin
  if (DataCadastros.CdsClientes.State in [dsbrowse]) and
    not(DataCadastros.CdsClientes.IsEmpty) then
    DataCadastros.CdsClientes.Edit;
end;

procedure TFormCliente.SqlCdsProdNFCalcFields(DataSet: TDataSet);
begin
  SqlCdsProdNFNF_TOTAL_CC.AsCurrency :=
    (SqlCdsProdNFNF_QTDE.AsCurrency * SqlCdsProdNFNF_PRECO.AsCurrency);
end;

procedure TFormCliente.SqlCdsNFSAfterScroll(DataSet: TDataSet);
begin
  try
    { Parcelas da nota fiscal }
    wSql1 := 'SELECT DISTINCT ' +
             ' CASE WHEN  FPC_VLPARC - FPC_VLPAGO < 0 THEN 0 ELSE FPC_VLPARC - FPC_VLPAGO END AS Pendente, ' +
             ' n1.FAT_REGISTRO, N1.FAT_CODIGO,N1.FPC_NUMER,N1.FPC_VLPARC,' +
             ' b1.BAN_CODIGO, b1.BAN_APELIDO, N1.FPC_VENCTO,N1.FPC_VLPAGO,N1.FPC_PAGTO,N1.FPC_STATUS '+
             ' FROM FAT_PC01 N1 '+
             'LEFT JOIN BAN0000 B1 on (B1.BAN_CODIGO = N1.BAN_CODIGO) '+
             'LEFT JOIN FAT_RECEBIMENTO rec ON (n1.FAT_REGISTRO = rec.FAT_REGISTRO) '+
             ' LEFT JOIN BAN0000 b2 ON (rec.BAN_CODIGO = b2.BAN_CODIGO) ';
    wSeleciona := 'WHERE N1.FPC_EXCLUSAO = ''N'' AND N1.FAT_CODIGO = ''' +
      SqlCdsNFSFAT_CODIGO.AsString + '''';
//    wOrdem := 'N1.FAT_CODIGO';
    wOrdem := 'N1.FPC_NUMER';
    SqlCdsDupFat.close;
    SqlCdsDupFat.CommandText := Sqldef('RECEBER', wSql1 , wSeleciona,
      wOrdem, 'N1.');
    SqlCdsDupFat.Open;



    { Itens da nota Fiscal }
    wSql1 := 'SELECT N2.NF_IT_NOTANUMER,N2.PRD_REFER,P2.PRD_DESCRI,N2.NF_QTDE,N2.NF_PRECO FROM NF_IT01 N2 ';
    wSql2 := 'LEFT JOIN PRD0000 P2 ON (P2.PRD_REFER = N2.PRD_REFER) ';
    wSeleciona := 'WHERE N2.NF_IT_NOTANUMER = ''' +
      SqlCdsNFSFAT_CODIGO.AsString + '''';
    wOrdem := 'N2.NF_IT_NOTANUMER';
    SqlCdsProdNF.close;
    SqlCdsProdNF.CommandText := Sqldef('RECEBER', wSql1 + wSql2, wSeleciona,
      wOrdem, 'N2.');
    SqlCdsProdNF.Open;
  except
    on E: EdatabaseError do
      Uteis.erro(Pchar('Erro ao Localizar as parcelas ! ' + E.Message));
  end;
end;

procedure TFormCliente.CurrDiasKeyPress(Sender: tObject; var Key: Char);
begin
  if DataCadastros.CdsClientes.State in [dsbrowse] then
    DataCadastros.CdsClientes.Edit;
end;

procedure TFormCliente.RadProSimEnter(Sender: tObject);
begin
  if (DataCadastros.CdsClientes.State in [dsbrowse]) and
    not(DataCadastros.CdsClientes.IsEmpty) then
    DataCadastros.CdsClientes.Edit;
end;

procedure TFormCliente.CurrDiasClick(Sender: tObject);
begin
  CurrDias.SelectAll;
end;

procedure TFormCliente.CbConsFinalClick(Sender: tObject);
begin
  if (DataCadastros.CdsClientes.State in [dsbrowse]) and
    not(DataCadastros.CdsClientes.IsEmpty) then
    DataCadastros.CdsClientes.Edit;
end;

procedure TFormCliente.CbConsFinalKeyPress(Sender: tObject; var Key: Char);
begin
  if (DataCadastros.CdsClientes.State in [dsbrowse]) and
    not(DataCadastros.CdsClientes.IsEmpty) then
    DataCadastros.CdsClientes.Edit;
end;

function TFormCliente.ValidaDados: Boolean;
begin
  Result := True;
  if (DbeCli_razao.Text = '') then
  begin
    Uteis.aviso('Informe a Razão Social do cliente !');
    if DbeCli_razao.canfocus then
      DbeCli_razao.SetFocus;
    DbeCli_razao.SelectAll;
    Result := False;
  end
  else if (DbeCli_Fantasia.Text = '') then
  begin
    DbeCli_Fantasia.Text := DbeCli_razao.Text;
//    Uteis.aviso('Informe o Nome Fantasia do cliente !');
//    if DbeCli_Fantasia.canfocus then
//      DbeCli_Fantasia.SetFocus;
//    DbeCli_Fantasia.SelectAll;
//    Result := False;
  end
  else if (DbeCli_endere.Text = '') then
  begin
    Uteis.aviso('Informe o endereço do cliente !');
    if DbeCli_endere.canfocus then
      DbeCli_endere.SetFocus;
    DbeCli_endere.SelectAll;
    Result := False;
  end
  else if (DbeCliCep.Field.IsNull = True) then
  begin
    Uteis.aviso('Informe o cep do cliente !');
    if DbeCliCep.canfocus then
      DbeCliCep.SetFocus;
    DbeCliCep.SelectAll;
    Result := False;
  end
  else if (DbeCli_cidade.Text = '') then
  begin
    Uteis.aviso('Informe a cidade do cliente !');
    if DbeCli_cidade.canfocus then
      DbeCli_cidade.SetFocus;
    DbeCli_cidade.SelectAll;
    Result := False;
  end
  else if (DBECLIUF.Text = '') then
  begin
    Uteis.aviso('Informe o Estado do cliente !');
    if DBECLIUF.canfocus then
      DBECLIUF.SetFocus;
    DBECLIUF.SelectAll;
    Result := False;
  end
  else if (CbPais.EditValue = null) then
  begin
    Uteis.aviso('Informe o País do cliente !');
    if CbPais.canfocus then
      CbPais.SetFocus;
    CbPais.SelectAll;
    Result := False;
  end
  else if (DBEREP_CODIGO.Text = '') then
  begin
    Uteis.aviso('Informe o representante do cliente !');
    if DBEREP_CODIGO.canfocus then
      DBEREP_CODIGO.SetFocus;
    DBEREP_CODIGO.SelectAll;
    Result := False;
  end;

  {
    if (DbeCil_insc.Text = '') then
    begin
    uteis.aviso('Informe a Inscrição Estadual do cliente !');
    DbeCil_insc.SetFocus;
    DbeCil_insc.SelectAll;
    Result := False;
    exit;
    end;
    if (Length(Trim(DbeCli_Endentr.Text))>0)
    and(Length(Trim(DbeCli_cidentr.Text))=0) then
    begin
    uteis.aviso('Informe a Cidade da Entrega !');
    DbeCli_cidentr.SetFocus;
    DbeCli_cidentr.SelectAll;
    Result := False;
    exit;
    end;
    if (Length(Trim(DbeCli_endfat.Text))>0)
    and(Length(Trim(DbeCli_cidfat.Text))=0) then
    begin
    uteis.aviso('Informe a Cidade da Cobrança !');
    DbeCli_cidfat.SetFocus;
    DbeCli_cidfat.SelectAll;
    Result := False;
    exit;
    end;
    if (DbeCLI_BAIRRO.Text = '') then
    begin
    uteis.aviso('Informe o bairro do cliente !');
    DbeCLI_BAIRRO.SetFocus;
    DbeCLI_BAIRRO.SelectAll;
    Result := False;
    exit;
    end;
  }
end;

procedure TFormCliente.Rad_NacionalClick(Sender: tObject);
begin
  if (Rad_Nacional.Checked) then
  begin
    Msk_cnpj.Enabled := True;
  end
  else
  begin
    Msk_cnpj.Enabled := False;
  end
end;

procedure TFormCliente.Rad_InternacionalClick(Sender: tObject);
begin
  if (Rad_Nacional.Checked) then
  begin
    Msk_cnpj.Enabled := True;
  end
  else
  begin
    Msk_cnpj.Enabled := False;
    Msk_cnpj.Text := '00000000000000';
  end
end;

procedure TFormCliente.DbeCli_endfatExit(Sender: tObject);
begin
  if ((DbeCli_endfat.Text = 'O MESMO') or (DbeCli_endfat.Text = 'MESMO')) then
  begin
    if (DataCadastros.CdsClientes.State in [dsbrowse]) and
      not(DataCadastros.CdsClientes.IsEmpty) then
      DataCadastros.CdsClientes.Edit;
    PreenchaEndereco('FATURA');
  end;
end;

procedure TFormCliente.DbeCli_EndentrExit(Sender: tObject);
begin
  if ((DbeCli_Endentr.Text = 'O MESMO') or (DbeCli_Endentr.Text = 'MESMO')) then
  begin
    if (DataCadastros.CdsClientes.State in [dsbrowse]) and
      not(DataCadastros.CdsClientes.IsEmpty) then
      DataCadastros.CdsClientes.Edit;
    PreenchaEndereco('ENTREGA');
  end;
end;

procedure TFormCliente.MostraClientes(sTipo: String);
var
  sCondicao: String;
begin
  try
    sCondicao := 'where 1 = 1 ';
    if (dbInicio.Empresa.bVisualizaClientes_P) and (dbInicio.Empresa.fCODIGO_REPRES <> '000') then
      sCondicao := sCondicao + ' and (REP_CODIGO =' + QuotedStr(dbInicio.Empresa.fCODIGO_REPRES)+
                   ' or VEND_INTERNO_CODIGO = '+  QuotedStr(dbInicio.Empresa.fCODIGO_REPRES) +')' ;
    DataCadastros.CdsClientes.close;
    DataCadastros.CdsClientes.PacketRecords := 10;
    DataCadastros.CdsClientes.CommandText :=
      Sqldef('CLIENTES', 'SELECT * FROM CLI0000', sCondicao, 'CLI_CODIGO', '');
    DataCadastros.CdsClientes.Open;
    if (sTipo = 'I') then
      DataCadastros.CdsClientes.Last;
    if not DataCadastros.CdsClientes.IsEmpty then
    begin
      DataCadastros.DsCliente.AutoEdit := True;
      MostrarCliente;
      if (DbNavigator1.Enabled) then
        DbNavigator1.Enabled := True;
    end
    else
    begin
      DataCadastros.DsCliente.AutoEdit := False;
      try
        EdtCli_codigo.Enabled := False;
        DBECLI_Iscmunicipal.SetFocus; // DbeCli_razao.SetFocus;
      except

      end;

    end;
  except
    on E: EdatabaseError do
      Uteis.erro(Pchar('Erro ao abrir tabelas !' + E.Message));
  end;
end;

procedure TFormCliente.LimpaObjetos;
begin
  EdtCli_codigo.Text := '';

  CbxAtiv.Text := '';
  // CbCFOP.Text           := '';
  CbxTransp.Text := '';
  CbxRegiao.Text := '';
  cbConsFinal.Text := '';
  cbConsFinal.ItemIndex := -1;
  Msk_cnpj.Text := '';
end;

procedure TFormCliente.CdsClientesAfterScroll(DataSet: TDataSet);
begin
  MostraPrecosExclusivosCliente;
end;

procedure TFormCliente.MostraPrecosExclusivosCliente;
begin
  if Assigned(FrmEdtTabPreco) then
    FreeAndNil(FrmEdtTabPreco);

  FrmEdtTabPreco := TfrmEditTabelas.Create(Nil);

  FrmEdtTabPreco.Panel4.Parent := tsPrecos;
  FrmEdtTabPreco.Panel4.Visible := True;

  FrmEdtTabPreco.grItens.Parent := tsPrecos;
  FrmEdtTabPreco.grItens.Visible := True;

  FrmEdtTabPreco.btnImporta.Enabled := False;
  FrmEdtTabPreco.btnImporta.Visible := False;
  FrmEdtTabPreco.SpeedButton1.Enabled := False;
  FrmEdtTabPreco.SpeedButton1.Visible := False;

  FrmEdtTabPreco.btnImprime.Left := FrmEdtTabPreco.btnImporta.Left;
  DataCadastros.CdsClientes.AfterScroll := CdsClientesAfterScroll;

  FrmEdtTabPreco.TabelaCliente := DataCadastros.CdsClientesCLI_CODIGO.AsString;

  FrmEdtTabPreco.OnShow(FrmEdtTabPreco);
end;

procedure TFormCliente.PageClienteChange(Sender: tObject);
begin
  if (FrmMenu.wServicoCliente = 'S') then
  begin
    if (PageCliente.TabIndex = 2) then
    begin
      Limpar_Objetos_Servico;
      Verificar_Servico_Cliente(EdtCli_codigo.Text);
      Mostrar_Servico_Cliente(EdtCli_codigo.Text);
    end;
  end;
  if (PageCliente.ActivePage = tsPrecos) then
    MostraPrecosExclusivosCliente;
end;

procedure TFormCliente.Gravar_Servico_Cliente;
begin
  if (bIncluir_Servico = False) and (bAlterar_Servico) and
    (Trim(Edt_Motivo_Alteracao.Text) = '') then
  begin
    Uteis.aviso('Informe o Motivo da Alteração do Serviço !');
    PageCliente.ActivePageIndex := 2;
    Edt_Motivo_Alteracao.SetFocus;
    DataAlteracao.date := Now;
    Edt_Usuario.Text := dbInicio.Usuario.nome;
  end
  else
  begin
    try
      wSql1 := 'SELECT T1.* FROM CLI_SV00 T1 ';
      wSeleciona := 'WHERE T1.CLI_CODIGO = ''' + EdtCli_codigo.Text + '''';
      //
      DataMovimento2.CdsServico.close;
      DataMovimento2.CdsServico.CommandText :=
        Sqldef('CLIENTES', wSql1, wSeleciona, '', 'T1.');
      DataMovimento2.CdsServico.Open;
      if (DataMovimento2.CdsServico.IsEmpty) then
      begin
        DataMovimento2.CdsServico.Insert;
        DataMovimento2.CdsServicoEMP_CODIGO.AsString :=
          dbInicio.empresa.EMP_CODIGO;
      end
      else
        DataMovimento2.CdsServico.Edit;
      //
      DataMovimento2.CdsServicoCLI_CODIGO.AsString := EdtCli_codigo.Text;
      DataMovimento2.CdsServicoCLI_SV_DATA_VENDA.AsDateTime := DataVenda.date;
      DataMovimento2.CdsServicoCLI_SV_INICIO_IMPLANTACAO.AsDateTime :=
        DataImplantacao.date;
      DataMovimento2.CdsServicoCLI_SV_TIPO.AsString :=
        IIF(CbTipo.ItemIndex = 0, 'M', IIF(CbTipo.ItemIndex = 1, 'C',
        IIF(CbTipo.ItemIndex = 2, 'O', '')));
      DataMovimento2.CdsServicoCLI_SV_CONSULTOR.AsString := Edt_Consultor.Text;
      DataMovimento2.CdsServicoCLI_SV_OBSIP.AsString := Memo_Historico.Text;
      DataMovimento2.CdsServicoCLI_SV_RESPONSA.AsString := Edt_Responsavel.Text;
      DataMovimento2.CdsServicoCLI_SV_CARGO.AsString := Edt_Cargo.Text;
      DataMovimento2.CdsServicoCLI_SV_CONCLUSAOIP.AsDateTime :=
        DataConclusao.date;
      DataMovimento2.CdsServicoCLI_SV_HORAIP.AsString := CHoraImplantacao.Text;
      DataMovimento2.CdsServicoCLI_SV_AUTORIZADAS.AsString := CNumLicencas.Text;
      DataMovimento2.CdsServicoCLI_SV_PRAZOLIBERA.AsString :=
        IIF(CbLiberacao.ItemIndex = 0, 1, IIF(CbLiberacao.ItemIndex = 1, 2,
        IIF(CbLiberacao.ItemIndex = 2, 3, IIF(CbLiberacao.ItemIndex = 3, 4,
        IIF(CbLiberacao.ItemIndex = 4, 5, IIF(CbLiberacao.ItemIndex = 5, 6,
        IIF(CbLiberacao.ItemIndex = 6, 7, IIF(CbLiberacao.ItemIndex = 7, 8,
        IIF(CbLiberacao.ItemIndex = 8, 9, IIF(CbLiberacao.ItemIndex = 9, 10,
        IIF(CbLiberacao.ItemIndex = 10, 11, IIF(CbLiberacao.ItemIndex = 11, 12,
        IIF(CbLiberacao.ItemIndex = 12, 99, 0)))))))))))));
      DataMovimento2.CdsServicoCLI_SV_VALIDADE_ATUAL.AsDateTime :=
        DataAtual.date;
      DataMovimento2.CdsServicoCLI_SV_TIPO_SERVICO.AsString :=
        IIF(CbServico.ItemIndex = 0, 'C', IIF(CbServico.ItemIndex = 1, 'S',
        IIF(CbServico.ItemIndex = 2, 'B', '')));
      DataMovimento2.CdsServicoCLI_SV_VALOR_CONTRATO.AsCurrency :=
        cValorContrato.Value;
      DataMovimento2.CdsServicoCLI_SV_INICIOCT.AsDateTime := DataInicio.date;
      DataMovimento2.CdsServicoCLI_SV_DATA_CANCEL_CONTRATO.AsDateTime :=
        DataCancela.date;
      DataMovimento2.CdsServicoCLI_SV_MESCONTRATO.AsString :=
        StrZero(cMesVencto.Text, 2);
      DataMovimento2.CdsServicoCLI_SV_ATUALIZAINDICE.AsString :=
        IIF(CbIndice.ItemIndex = 0, 'S', IIF(CbIndice.ItemIndex = 1, 'I',
        IIF(CbIndice.ItemIndex = 2, 'O', '')));
      DataMovimento2.CdsServicoCLI_SV_ULTIMA_ATUALIZACAO.AsDateTime :=
        DataAtualizacao.date;
      DataMovimento2.CdsServicoCLI_SV_TIPO_CONTRATO.AsString :=
        IIF(CbTipoContrato.ItemIndex = 0, 'S', IIF(CbTipoContrato.ItemIndex = 1,
        'O', IIF(CbTipoContrato.ItemIndex = 2, 'U',
        IIF(CbTipoContrato.ItemIndex = 3, 'A', IIF(CbTipoContrato.ItemIndex = 4,
        'L', '')))));
      DataMovimento2.CdsServicoCLI_SV_OBSCT.AsString := MemoObs.Text;
      if (not bIncluir_Servico) and (bAlterar_Servico) then
      begin
        DataMovimento2.CdsServicoCLI_SV_ALTERACAOPM.AsDateTime :=
          DataAlteracao.date;
        DataMovimento2.CdsServicoCLI_SV_LOGONUSER.AsString := Edt_Usuario.Text;
        DataMovimento2.CdsServicoCLI_SV_INFOALT.AsString :=
          Edt_Motivo_Alteracao.Text;
      end;
      DataMovimento2.CdsServico.ApplyUpdates(0);
      Mostrar_Servico_Cliente(EdtCli_codigo.Text);
      bIncluir_Servico := False;
      bAlterar_Servico := False;
      HabilitaBotoes;
    except
      on E: EdatabaseError do
      begin
        Uteis.erro(Pchar('Erro ao gravar o Serviço do Cliente !' + #13#10 +
          'Mensagem erro: ' + E.Message));
      end;
    end;
  end;
end;

procedure TFormCliente.Mostrar_Servico_Cliente(sCodClie: String);
begin
  try
    wSql1 := 'SELECT T1.* FROM CLI_SV00 T1 ';
    wSeleciona := 'WHERE T1.CLI_CODIGO = ''' + sCodClie + '''';
    //
    DataMovimento2.CdsServico.close;
    DataMovimento2.CdsServico.CommandText :=
      Sqldef('CLIENTES', wSql1, wSeleciona, '', 'T1.');
    DataMovimento2.CdsServico.Open;
    if (not DataMovimento2.CdsServico.IsEmpty) then
    begin
      CNumLicencas.AsInteger :=
        DataMovimento2.CdsServicoCLI_SV_AUTORIZADAS.AsInteger;
      CbLiberacao.ItemIndex :=
        IIF(DataMovimento2.CdsServicoCLI_SV_PRAZOLIBERA.AsInteger = 1, 0,
        IIF(DataMovimento2.CdsServicoCLI_SV_PRAZOLIBERA.AsInteger = 2, 1,
        IIF(DataMovimento2.CdsServicoCLI_SV_PRAZOLIBERA.AsInteger = 3, 2,
        IIF(DataMovimento2.CdsServicoCLI_SV_PRAZOLIBERA.AsInteger = 4, 3,
        IIF(DataMovimento2.CdsServicoCLI_SV_PRAZOLIBERA.AsInteger = 5, 4,
        IIF(DataMovimento2.CdsServicoCLI_SV_PRAZOLIBERA.AsInteger = 6, 5,
        IIF(DataMovimento2.CdsServicoCLI_SV_PRAZOLIBERA.AsInteger = 7, 6,
        IIF(DataMovimento2.CdsServicoCLI_SV_PRAZOLIBERA.AsInteger = 8, 7,
        IIF(DataMovimento2.CdsServicoCLI_SV_PRAZOLIBERA.AsInteger = 9, 8,
        IIF(DataMovimento2.CdsServicoCLI_SV_PRAZOLIBERA.AsInteger = 10, 9,
        IIF(DataMovimento2.CdsServicoCLI_SV_PRAZOLIBERA.AsInteger = 11, 10,
        IIF(DataMovimento2.CdsServicoCLI_SV_PRAZOLIBERA.AsInteger = 12, 11,
        IIF(DataMovimento2.CdsServicoCLI_SV_PRAZOLIBERA.AsInteger = 99, 12,
        -1)))))))))))));
      DataAtual.date := DataMovimento2.CdsServicoCLI_SV_VALIDADE_ATUAL.
        AsDateTime;
      CbServico.ItemIndex :=
        IIF(DataMovimento2.CdsServicoCLI_SV_TIPO_SERVICO.AsString = 'C', 0,
        IIF(DataMovimento2.CdsServicoCLI_SV_TIPO_SERVICO.AsString = 'S', 1,
        IIF(DataMovimento2.CdsServicoCLI_SV_TIPO_SERVICO.AsString =
        'S', 2, -1)));
      cValorContrato.Value := DataMovimento2.CdsServicoCLI_SV_VALOR_CONTRATO.
        AsCurrency;
      DataInicio.date := DataMovimento2.CdsServicoCLI_SV_INICIOCT.AsDateTime;
      cMesVencto.Text := DataMovimento2.CdsServicoCLI_SV_MESCONTRATO.AsString;
      CbIndice.ItemIndex :=
        IIF(DataMovimento2.CdsServicoCLI_SV_ATUALIZAINDICE.AsString = 'S', 0,
        IIF(DataMovimento2.CdsServicoCLI_SV_ATUALIZAINDICE.AsString = 'I', 1,
        IIF(DataMovimento2.CdsServicoCLI_SV_ATUALIZAINDICE.AsString =
        'O', 2, -1)));
      DataAtualizacao.date :=
        DataMovimento2.CdsServicoCLI_SV_ULTIMA_ATUALIZACAO.AsDateTime;
      CbTipoContrato.ItemIndex :=
        IIF(DataMovimento2.CdsServicoCLI_SV_TIPO_CONTRATO.AsString = 'S', 0,
        IIF(DataMovimento2.CdsServicoCLI_SV_TIPO_CONTRATO.AsString = 'O', 1,
        IIF(DataMovimento2.CdsServicoCLI_SV_TIPO_CONTRATO.AsString = 'U', 2,
        IIF(DataMovimento2.CdsServicoCLI_SV_TIPO_CONTRATO.AsString = 'A', 3,
        IIF(DataMovimento2.CdsServicoCLI_SV_TIPO_CONTRATO.AsString = 'L',
        4, -1)))));
      DataVenda.date := DataMovimento2.CdsServicoCLI_SV_DATA_VENDA.AsDateTime;
      DataImplantacao.date :=
        DataMovimento2.CdsServicoCLI_SV_INICIO_IMPLANTACAO.AsDateTime;
      CbTipo.ItemIndex :=
        IIF(DataMovimento2.CdsServicoCLI_SV_TIPO.AsString = 'M', 0,
        IIF(DataMovimento2.CdsServicoCLI_SV_TIPO.AsString = 'C', 1,
        IIF(DataMovimento2.CdsServicoCLI_SV_TIPO.AsString = 'O', 2, -1)));
      DataConclusao.date := DataMovimento2.CdsServicoCLI_SV_CONCLUSAOIP.
        AsDateTime;
      DataCancela.date := DataMovimento2.CdsServicoCLI_SV_DATA_CANCEL_CONTRATO.
        AsDateTime;
      CHoraImplantacao.Text := DataMovimento2.CdsServicoCLI_SV_HORAIP.AsString;
      DataAlteracao.date := DataMovimento2.CdsServicoCLI_SV_ALTERACAOPM.
        AsDateTime;
      MemoObs.Text := DataMovimento2.CdsServicoCLI_SV_OBSCT.AsString;
      Edt_Consultor.Text := DataMovimento2.CdsServicoCLI_SV_CONSULTOR.AsString;
      Memo_Historico.Text := DataMovimento2.CdsServicoCLI_SV_OBSIP.AsString;
      Edt_Responsavel.Text := DataMovimento2.CdsServicoCLI_SV_RESPONSA.AsString;
      Edt_Cargo.Text := DataMovimento2.CdsServicoCLI_SV_CARGO.AsString;
      Edt_Usuario.Text := DataMovimento2.CdsServicoCLI_SV_LOGONUSER.AsString;
      Edt_Motivo_Alteracao.Text :=
        DataMovimento2.CdsServicoCLI_SV_INFOALT.AsString;
      DataMovimento2.CdsServico.close;
    end
    else
    begin
      Limpar_Objetos_Servico;
    end;
    //
    bAlterar_Servico := False;
  except
    on E: EdatabaseError do
    begin
      Uteis.erro(Pchar('Erro ao localizar o Serviço !' + #13#10 +
        'Mensagem erro: ' + E.Message));
    end;
  end;
end;

procedure TFormCliente.Verificar_Servico_Cliente(sCodClie: String);
begin
  try
    wSql1 := 'SELECT T1.* FROM CLI_SV00 T1 ';
    wSeleciona := 'where T1.CLI_CODIGO = ''' + sCodClie + '''';
    //
    DataCadastros.sqlUpdate.close;
    DataCadastros.sqlUpdate.sql.Text := Sqldef('CLIENTES', wSql1, wSeleciona,
      '', 'T1.');
    DataCadastros.sqlUpdate.Open;
    if (DataCadastros.sqlUpdate.IsEmpty) then
    begin
      bIncluir_Servico := True;
      bAlterar_Servico := False;
    end
    else
    begin
      bIncluir_Servico := False;
      bAlterar_Servico := False;
    end;
    DataCadastros.sqlUpdate.close;
  except
    on E: EdatabaseError do
    begin
      Uteis.erro(Pchar('Erro ao localizar o Serviço do Cliente !' + #13#10 +
        'Mensagem erro: ' + E.Message));
    end;
  end;
end;

procedure TFormCliente.Limpar_Objetos_Servico;
begin
  CNumLicencas.AsInteger := 0;
  CbLiberacao.ItemIndex := -1;
  DataAtual.date := 0;
  CbServico.ItemIndex := -1;
  cValorContrato.AsInteger := 0;
  DataInicio.date := 0;
  CbIndice.ItemIndex := -1;
  DataAtualizacao.date := 0;
  CbTipoContrato.ItemIndex := -1;
  DataVenda.date := 0;
  DataImplantacao.date := 0;
  CbTipo.ItemIndex := -1;
  DataCancela.date := 0;
  DataConclusao.date := 0;
  DataAlteracao.date := 0;
  CHoraImplantacao.Clear;
  MemoObs.Clear;
  Edt_Consultor.Clear;
  Memo_Historico.Clear;
  Edt_Responsavel.Clear;
  Edt_Cargo.Clear;
  Edt_Usuario.Clear;
  Edt_Motivo_Alteracao.Clear;
  cMesVencto.Clear;
end;

procedure TFormCliente.Excluir_Servico_Cliente(sCodClie: String);
begin
  Try
    wSql1 := 'Delete from CLI_SV00 ';
    wSeleciona := 'where CLI_CODIGO = ''' + sCodClie + '''';
    //
    DataCadastros.sqlUpdate.close;
    DataCadastros.sqlUpdate.sql.Text := Sqldef('CLIENTES', wSql1,
      wSeleciona, '', '');
    DataCadastros.sqlUpdate.Execsql;
  except
    on E: EdatabaseError do
    begin
      Uteis.erro(Pchar('Erro ao excluir o serviço do Cliente !' + #13#10 +
        'Mensagem erro: ' + E.Message));
    end;
  end;
end;

procedure TFormCliente.CbLiberacaoChange(Sender: tObject);
begin
  bAlterar_Servico := True;
end;

procedure TFormCliente.CNumLicencasExit(Sender: tObject);
begin
  if (CNumLicencas.AsInteger > 0) then
  begin
    bAlterar_Servico := True;
    if (DataCadastros.CdsClientes.State in [dsbrowse]) then
      DataCadastros.CdsClientes.Edit;
    DesabilitaBotoes;
  end;
  DataAlteracao.date := Now;
  Edt_Usuario.Text := dbInicio.Usuario.nome;
end;

procedure TFormCliente.MemoObsEnter(Sender: TObject);
begin
  inherited;
  ACBrEnterTab1.EnterAsTab := False;
end;

procedure TFormCliente.MemoObsKeyPress(Sender: tObject; var Key: Char);
begin
  Key := Upcase(Key);
end;

procedure TFormCliente.Memo_HistoricoEnter(Sender: TObject);
begin
  inherited;
  ACBrEnterTab1.EnterAsTab := False;
end;

procedure TFormCliente.miImportarExcelClick(Sender: TObject);
var importcliente : tFormImpCliente;
b:boolean;
begin
  inherited;
  importcliente := tFormImpCliente.Create(Application);
  try
    Screen.Cursor := crHourGlass;
    fmAnimacao := TfmAnimacao.Create(application);
    try
      b:= importcliente.importarExcel;
      if b then
      begin
        fmAnimacao.Show;
        fmAnimacao.Caption := 'Validando';
        importcliente.ValidarRegistros;
      end;
    finally
     fmAnimacao.Close;
    end;
    if b then
      importcliente.ShowModal;
  finally
    screen.Cursor := crDefault;
    FreeAndNil(importcliente);
  end;
end;

procedure TFormCliente.miLeaiuteClick(Sender: TObject);
begin
  inherited;
 ShowMessage('A planilha importada deve obedecer a seguinte estrutura:'+#13+#13+
             'A primeira linha será desconsiderada ' +#13+
             '(A) CNPJ'+#13+
             '(B) Inscrição Estadual'+#13+
             '(C) Razão social da empresa' +#13+
             '(D) Fantasia'+#13 +
             '(E) Telefone '+#13 +
             '(F) Endereço'+#13 +
             '(G) Bairro'+#13 +
             '(H) Cidade '+#13 +
             '(I) Estado em 2 caracteres '+#13 +
             '(J) CEP '+#13 +
             '(K) EMAIL ' +#13 +
             '(L) Contato do cliente');

end;

procedure TFormCliente.DataAtualExit(Sender: tObject);
begin
  DataAtual.Text := PreenchaData(DataAtual.Text);
  if (not TestaDataStr(DataAtual.Text)) then
    DataAtual.SetFocus
  else
  begin
    if (bAlterar_Servico) then
    begin
      if (DataCadastros.CdsClientes.State in [dsbrowse]) then
        DataCadastros.CdsClientes.Edit;
      DesabilitaBotoes;
    end
    else
    begin
      HabilitaBotoes;
    end;
  end;
end;

procedure TFormCliente.DataInicioExit(Sender: tObject);
begin
  DataInicio.Text := PreenchaData(DataInicio.Text);
  if (not TestaDataStr(DataInicio.Text)) then
    DataInicio.SetFocus
  else
  begin
    if (bAlterar_Servico) then
    begin
      if (DataCadastros.CdsClientes.State in [dsbrowse]) then
        DataCadastros.CdsClientes.Edit;
      DesabilitaBotoes;
    end
    else
    begin
      HabilitaBotoes;
    end;
  end;
end;

procedure TFormCliente.DataAtualizacaoExit(Sender: tObject);
begin
  DataAtualizacao.Text := PreenchaData(DataAtualizacao.Text);
  if (not TestaDataStr(DataAtualizacao.Text)) then
    DataAtualizacao.SetFocus
  else
  begin
    if (bAlterar_Servico) then
    begin
      if (DataCadastros.CdsClientes.State in [dsbrowse]) then
        DataCadastros.CdsClientes.Edit;
      DesabilitaBotoes;
    end
    else
    begin
      HabilitaBotoes;
    end;
  end;
end;

procedure TFormCliente.DataVendaExit(Sender: tObject);
begin
  DataVenda.Text := PreenchaData(DataVenda.Text);
  if (not TestaDataStr(DataVenda.Text)) then
    DataVenda.SetFocus
  else
  begin
    if (bAlterar_Servico) then
    begin
      if (DataCadastros.CdsClientes.State in [dsbrowse]) then
        DataCadastros.CdsClientes.Edit;
      DesabilitaBotoes;
    end
    else
    begin
      HabilitaBotoes;
    end;
  end;
end;

procedure TFormCliente.DataImplantacaoExit(Sender: tObject);
begin
  DataImplantacao.Text := PreenchaData(DataImplantacao.Text);
  if (not TestaDataStr(DataImplantacao.Text)) then
    DataImplantacao.SetFocus
  else
  begin
    if (bAlterar_Servico) then
    begin
      if (DataCadastros.CdsClientes.State in [dsbrowse]) then
        DataCadastros.CdsClientes.Edit;
      DesabilitaBotoes;
    end
    else
    begin
      HabilitaBotoes;
    end;
  end;
end;

procedure TFormCliente.DataConclusaoExit(Sender: tObject);
begin
  DataConclusao.Text := PreenchaData(DataConclusao.Text);
  if (not TestaDataStr(DataConclusao.Text)) then
    DataConclusao.SetFocus
  else
  begin
    if (bAlterar_Servico) then
    begin
      if (DataCadastros.CdsClientes.State in [dsbrowse]) then
        DataCadastros.CdsClientes.Edit;
      DesabilitaBotoes;
    end
    else
    begin
      HabilitaBotoes;
    end;
  end;
end;

procedure TFormCliente.CbLiberacaoClick(Sender: tObject);
begin
  if (DataCadastros.CdsClientes.State in [dsbrowse]) then
    DataCadastros.CdsClientes.Edit;
end;

procedure TFormCliente.CbLiberacaoExit(Sender: tObject);
begin
  if (bAlterar_Servico) then
  begin
    if (DataCadastros.CdsClientes.State in [dsbrowse]) then
      DataCadastros.CdsClientes.Edit;
    DesabilitaBotoes;
  end
  else
  begin
    HabilitaBotoes;
  end;
  if Sender.ClassName = 'TMemo' then
    ACBrEnterTab1.EnterAsTab := True
end;

procedure TFormCliente.cMesVenctoExit(Sender: tObject);
Var
  iMes: Integer;
begin
  cMesVencto.Text := StrZero(Trim(cMesVencto.Text), 2);
  if (cMesVencto.Text = '') then
    iMes := 0
  else
    iMes := StrToInt(StrZero(Trim(cMesVencto.Text), 2));
  //
  if (iMes < 0) or (iMes > 12) then
  begin
    Uteis.aviso('Informe o Mês de 01 a 12 !');
    cMesVencto.SetFocus;
  end
  else
  begin
    if (bAlterar_Servico) then
    begin
      if (DataCadastros.CdsClientes.State in [dsbrowse]) then
        DataCadastros.CdsClientes.Edit;
      DesabilitaBotoes;
    end
    else
    begin
      HabilitaBotoes;
    end;
  end;
end;

procedure TFormCliente.Limpar_Campos_Contrato;
begin
  CNumLicencas.AsInteger := 0; //
  CbLiberacao.ItemIndex := -1; //
  DataAtual.date := 0; //
  CbServico.ItemIndex := -1; //
  cValorContrato.AsInteger := 0; //
  DataInicio.date := 0; //
  cMesVencto.Clear; //
  CbIndice.ItemIndex := -1; //
  DataAtualizacao.date := 0; //
  CbTipoContrato.ItemIndex := -1; //
  DataCancela.date := 0;
  MemoObs.Clear;
end;

procedure TFormCliente.Limpar_Campos_Implantacao;
begin
  DataVenda.date := 0; //
  DataImplantacao.date := 0; //
  CbTipo.ItemIndex := -1; //
  Edt_Consultor.Clear; //
  Memo_Historico.Clear; //
  Edt_Responsavel.Clear; //
  Edt_Cargo.Clear; //
  DataConclusao.date := 0;
  CHoraImplantacao.Clear;
end;

procedure TFormCliente.SpbtnImplantacaoClick(Sender: tObject);
begin
  if Uteis.confirmacao
    ('Cuidado: Todos os campos da implantação serão apagados. Confirma?') = idyes
  then
    Limpar_Campos_Implantacao;
  if (DataCadastros.CdsClientes.State in [dsbrowse]) then
    DataCadastros.CdsClientes.Edit;
end;

procedure TFormCliente.SpbtnContratoClick(Sender: tObject);
begin
  if Uteis.confirmacao
    ('Cuidado: Todos os campos do contrato serão apagados. Confirma?') = idyes
  then
    Limpar_Campos_Contrato;

  if (DataCadastros.CdsClientes.State in [dsbrowse]) then
    DataCadastros.CdsClientes.Edit;
end;

procedure TFormCliente.DataCancelaExit(Sender: tObject);
begin
  DataCancela.Text := PreenchaData(DataCancela.Text);
  if (not TestaDataStr(DataCancela.Text)) then
    DataCancela.SetFocus
  else
  begin
    if (bAlterar_Servico) then
    begin
      if (DataCadastros.CdsClientes.State in [dsbrowse]) then
        DataCadastros.CdsClientes.Edit;
      DesabilitaBotoes;
    end
    else
    begin
      HabilitaBotoes;
    end;
  end;
end;

procedure TFormCliente.Buscar_Ultima_Validade(sCodClie: String);
begin
  try
    wSql1 := 'SELECT RDB$RELATION_CONSTRAINTS.RDB$RELATION_NAME AS TABELA,RDB$RELATION_CONSTRAINTS.RDB$CONSTRAINT_NAME AS CHAVE,RDB$RELATION_CONSTRAINTS.RDB$INDEX_NAME AS INDICE_DA_CHAVE,RDB$INDEX_SEGMENTS.RDB$FIELD_NAME AS CAMPO,';
    wSql2 := 'RDB$INDEX_SEGMENTS.RDB$FIELD_POSITION AS POSICAO FROM RDB$RELATION_CONSTRAINTS,RDB$INDICES,RDB$INDEX_SEGMENTS WHERE RDB$RELATION_CONSTRAINTS.RDB$RELATION_NAME = ''SERIAL_RENEW'' ';
    wSql3 := 'AND RDB$RELATION_CONSTRAINTS.RDB$CONSTRAINT_TYPE = ''PRIMARY KEY'' AND RDB$RELATION_CONSTRAINTS.RDB$INDEX_NAME = RDB$INDICES.RDB$INDEX_NAME AND RDB$INDEX_SEGMENTS.RDB$INDEX_NAME = RDB$INDICES.RDB$INDEX_NAME ';
    wSql4 := 'ORDER BY RDB$RELATION_CONSTRAINTS.RDB$CONSTRAINT_NAME,RDB$INDEX_SEGMENTS.RDB$FIELD_POSITION ';
    //
    DataCadastros.sqlUpdate.close;
    DataCadastros.sqlUpdate.sql.Text := wSql1 + wSql2 + wSql3 + wSql4;
    DataCadastros.sqlUpdate.Open;
    //
    if (not DataCadastros.sqlUpdate.IsEmpty) then
    begin
      try
        wSql1 := 'SELECT T1.* FROM SERIAL_RENEW T1 ';
        wSeleciona := 'WHERE T1.S_ID_CLI = ''' + sCodClie + '''';
        wOrdem := ' Order by S_DATA_VALIDADE DESC';
        //
        DataCadastros.sqlUpdate.close;
        DataCadastros.sqlUpdate.sql.Text := wSql1 + wSeleciona + wOrdem;
        DataCadastros.sqlUpdate.Open;
        if (not DataCadastros.sqlUpdate.IsEmpty) then
        begin
          DataAtual.color := $00D7D7D7;
          DataAtual.ReadOnly := True;
          DataAtual.TabStop := False;
          DataAtual.date := DataCadastros.sqlUpdate.FieldByName
            ('S_DATA_VALIDADE').AsDateTime;
        end
        else
        begin
          DataAtual.color := clWindow;
          DataAtual.ReadOnly := False;
          DataAtual.TabStop := True;
          if (DataAtual.date = 0) then
            DataAtual.date := Now;
        end;
        DataCadastros.sqlUpdate.close;
      except
        on E: EdatabaseError do
        begin
          Uteis.erro(Pchar('Erro ao localizar a Data de Validade !' + #13#10 +
            'Mensagem erro: ' + E.Message));
        end;
      end;
    end
    else
    begin
      DataCadastros.sqlUpdate.close;
      if (DataAtual.date = 0) then
        DataAtual.date := Now;
    end;
  except
    on E: EdatabaseError do
    begin
      Uteis.erro(Pchar('Erro ao localizar a Tabela !' + #13#10 +
        'Mensagem erro: ' + E.Message));
    end;
  end;
end;

procedure TFormCliente.btnConsultarCNPJ_CPFClick(Sender: TObject);
var
 vcnae, vfone, fone1, fone2 : string;
 idseq : integer;

  IdHTTP1: TIdHTTP;
  ResponseContent: string;
  Token: string;
  URL : string;
  cidCodigo: integer;
  jDados, jEndereco: TJSONValue;

begin
 if Msk_cnpj.Text = '' then
   GeraException('Não preenchido o CNPJ/CPF');
  IdHTTP1 := TIdHTTP.Create(nil);

  if Length(RetiraTodaMascara(Msk_cnpj.Text)) = 14 then
  begin
    try
      URL := 'https://api.plugnotas.com.br/cnpj/' + RetirarMascaraCNPJ_INSC(Msk_cnpj.Text);

      Token := '3bfeffc6-4650-40f4-b555-1412c88a688b';

      IdHTTP1.Request.CustomHeaders.AddValue('x-api-key', Token);
      IdHTTP1.Request.CustomHeaders.AddValue('Accept', 'application/json');

      ResponseContent := IdHTTP1.Get(URL);

      jDados := TJSONObject.ParseJSONValue(ResponseContent);
      jEndereco := TJSONObject(jDados).GetValue('endereco');

      if DataCadastros.DsCliente.State = dsBrowse then
         DataCadastros.DsCliente.Edit;

      dbedCLI_DTNASCIMENTO.Field.Value := StrToDate(jDados.GetValue< string >('abertura'));

      DbeCli_razao.Field.Value := jDados.GetValue< string >('razao_social');
      DbeCli_Fantasia.Field.Value := jDados.GetValue< string >('fantasia');
      DBEmail.Field.Value := jDados.GetValue< string >('email');


      fone1 := copy(jDados.GetValue< string >( 'telefone'),1 ,pos('/', jDados.GetValue< string >( 'telefone')) - 1);
      if fone1 = '' then
        fone1 := jDados.GetValue< string >('telefone');
      if pos('/', jDados.GetValue< string >('telefone')) > 0 then
        fone2 := copy(jDados.GetValue< string >('telefone'), pos('/', jDados.GetValue< string >('telefone')) + 1, 20 );
      if trim(fone1) <>'' then
      begin
        vfone := AnsiReplaceStr(fone1,'(','');
        vfone := AnsiReplaceStr(vfone,')','');
        vfone := AnsiReplaceStr(vfone,'-','');
        vfone := AnsiReplaceStr(vfone,' ','');
        if vfone.Length = 10 then
          vfone := Copy(vfone, 1, 2) + ' ' + Copy(vfone, 3, 8);

        DbeCli_fone.Field.Value := vfone;
      end;
      if trim(fone2) <>'' then
      begin
        vfone := AnsiReplaceStr(fone2,'(','');
        vfone := AnsiReplaceStr(vfone,')','');
        vfone := AnsiReplaceStr(vfone,'-','');
        vfone := AnsiReplaceStr(vfone,' ','');
        if vfone.Length = 10 then
          vfone := Copy(vfone, 1, 2) + ' ' + Copy(vfone, 3, 8);
        DbeCli_fax.Field.Value := vfone;
      end;



      DbeCliCep.Field.Value :=  AnsiReplaceStr(AnsiReplaceStr(jEndereco.GetValue< string >( 'cep'),'-',''), '.', '');
      DbeCLI_BAIRRO.Field.Value := jEndereco.GetValue< string >( 'bairro');
      DbeCli_endere.Field.Value := jEndereco.GetValue< string >( 'logradouro') + ', ' + jEndereco.GetValue< string >( 'numero') + ' ' + iif(pos('*', jDados.GetValue< string >('complemento')) > 0, '',  jDados.GetValue< string >('complemento'));
      if jEndereco.GetValue< string >( 'municipio') <> '' then
      begin

        cidCodigo := dbInicio.BuscaUmDadoSqlAsInteger(' SELECT CID_CODIGO FROM CID0000'+
                ' WHERE CID_ESTADO = '+ QuotedStr(jEndereco.GetValue< string >( 'uf'))+
                ' AND CID_CIDADE = '+ QuotedStr(jEndereco.GetValue< string >( 'municipio')));
        if not ((cidCodigo = Null) or (cidCodigo = 0))    then
        begin
         if not (DataCadastros.CdsClientes.State  in dsEditModes) then
           DataCadastros.CdsClientes.Edit;
         DataCadastros.CdsClientesCLI_CIDADE.AsString  := jEndereco.GetValue< string >( 'municipio');
         DataCadastros.CdsClientesCLI_UF.AsString      := jEndereco.GetValue< string >( 'uf');
         DataCadastros.CdsClientesCID_CODIGO.AsInteger := cidCodigo;
        end;
      end;



//      dados := jDados.GetValue< string >( 'abertura');
//      endereco := jEndereco.GetValue< string >( 'logradouro');

    except
      on E: Exception do
      begin
        showmessage(E.Message);
      end;
    end;

    IdHTTP1.Free;

  end;

 Exit;

 if Length(RetiraTodaMascara(Msk_cnpj.Text)) = 14 then
 begin
   FrmConsultarCNPJ  := TFrmConsultarCNPJ.Create(Application);
  try
   FrmConsultarCNPJ.CNPJ :=  Msk_cnpj.Text;
   FrmConsultarCNPJ.ShowModal;
   if FrmConsultarCNPJ.Importar then
   begin
     with  FrmConsultarCNPJ.ACBrConsultaCNPJ_cliente do
     begin
      if DataCadastros.DsCliente.State = dsBrowse then
         DataCadastros.DsCliente.Edit;


      DbeCli_razao.Field.Value := RazaoSocial;
      if Fantasia = '********' then
        DbeCli_Fantasia.Field.Value := RazaoSocial
      else
        DbeCli_Fantasia.Field.Value := Fantasia;
      DbeCliCep.Field.Value :=  AnsiReplaceStr(cep,'-','');
      DbeCLI_BAIRRO.Field.Value := bairro;
      DBEmail.Field.Value :=   EndEletronico;
      DbeCli_endere.Field.Value := Endereco + ', ' + Numero + ' ' + iif(pos('*', Complemento) > 0, '',  complemento);
      fone1 := copy(telefone,1 ,pos('/', telefone) - 1);
      if fone1 = '' then
        fone1 := telefone;
      if pos('/', telefone) > 0 then
        fone2 := copy(telefone,pos('/', telefone) + 1, 20 );
      if trim(fone1) <>'' then
      begin
        vfone := AnsiReplaceStr(fone1,'(','');
        vfone := AnsiReplaceStr(vfone,')','');
        vfone := AnsiReplaceStr(vfone,'-','');
        vfone := AnsiReplaceStr(vfone,' ','');
        if vfone.Length = 10 then
          vfone := Copy(vfone, 1, 2) + ' ' + Copy(vfone, 3, 8);

        DbeCli_fone.Field.Value := vfone;
      end;
      if trim(fone2) <>'' then
      begin
        vfone := AnsiReplaceStr(fone2,'(','');
        vfone := AnsiReplaceStr(vfone,')','');
        vfone := AnsiReplaceStr(vfone,'-','');
        vfone := AnsiReplaceStr(vfone,' ','');
        if vfone.Length = 10 then
          vfone := Copy(vfone, 1, 2) + ' ' + Copy(vfone, 3, 8);
        DbeCli_fax.Field.Value := vfone;
      end;


      if Cidade <> '' then
      begin

        OpenAux(' SELECT CID_CODIGO FROM CID0000'+
                ' WHERE CID_ESTADO = '+ QuotedStr(UF)+
                ' AND CID_CIDADE = '+ QuotedStr(Cidade));
        if not ((qAux.FieldByName('CID_CODIGO').IsNull) or (qAux.FieldByName('CID_CODIGO').AsInteger = 0))    then
        begin
         if not (DataCadastros.CdsClientes.State  in dsEditModes) then
           DataCadastros.CdsClientes.Edit;
         DataCadastros.CdsClientesCLI_CIDADE.AsString  := cidade;
         DataCadastros.CdsClientesCLI_UF.AsString      := uf;
         DataCadastros.CdsClientesCID_CODIGO.AsInteger := qAux.FieldByName('CID_CODIGO').AsInteger;
        end;
      end;

//      EditSituacao.Text    := ACBrConsultaCNPJ1.Situacao;
      if CNAE1 <> '' then
      begin
        vcnae:= copy(cnae1,0,10);
        vcnae:= AnsiReplaceStr(vcnae,'.','');
        vcnae:= copy(vcnae,1,6)+'/'+copy(vcnae,8,2) ;
        //vcnae:=AnsiReplaceStr(vcnae,'/','-');
        OpenAux('select cnae_registro from CNAE '+#13#10+
                'WHERE CNAE_CODIGO = '+ QuotedStr(vcnae));
       if qaux.FieldByName('cnae_registro').AsInteger = 0 then
       begin
         // idseq:= GetNextSequence('GEN_CNAE_ID');
        DataCadastros.sqlUpdate.close;
        DataCadastros.sqlUpdate.sql.Text :='insert into CNAE (cnae_registro, cnae_codigo,cnae_descricao) values (gen_id(GEN_CNAE_ID,1),'+ QuotedStr(vcnae)+','+QuotedStr(Ansiuppercase(Copy(cnae1,13,length(cnae1))))+')';
        DataCadastros.sqlUpdate.Execsql;

//          ExecSql('insert into CNAE (cnae_registro, cnae_codigo,cnae_descricao) values (gen_id(GEN_CNAE_ID,1),'+ QuotedStr(vcnae)+','+Copy(cnae1,13,length(cnae1))+')');
          OpenAux('select cnae_registro from CNAE '+#13#10+
                  'WHERE CNAE_CODIGO = '+ QuotedStr(vcnae));
          idseq := qaux.FieldByName('cnae_registro').AsInteger;
          SqlCdsCNAE.Close;
          SqlCdsCNAE.Open;
          cxCNAE.EditValue := idseq;
       end
       else
        cxCNAE.EditValue := qaux.FieldByName('cnae_registro').AsInteger;
      end;


     end;
   end;

  finally
   FrmConsultarCNPJ.Destroy;
  end;

 end;

end;

procedure TFormCliente.DataAtualEnter(Sender: tObject);
begin
  Buscar_Ultima_Validade(EdtCli_codigo.Text);
end;

procedure TFormCliente.CbxTranspExit(Sender: tObject);
begin
  if (ActiveControl.Name <> 'DBETRP_CODIGO') and
    (ActiveControl.Name <> 'Bit_Cancelar') and (ActiveControl.Name <> 'Bit_Sair')
  then
  begin
    if DataCadastros.CdsClientes.State in [dsInsert] then
    begin
      if (not Verifica_Transportadora_Ativo(DBETRP_CODIGO.Text)) then
      begin
        Uteis.aviso('Transportadora Inativa !');
        CbxTransp.SetFocus;
        CbxTransp.SelectAll;
      end;
    end;
  end;
end;

procedure TFormCliente.DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
begin
  inherited;

  case Button of
    nbFirst: ;
    nbPrior: ;
    nbNext: ;
    nbLast: ;
    nbInsert: ;
    nbDelete: ;
    nbEdit: ;
    nbPost:
    begin
    CdsClienteContato.Edit;
    case DBRadioGroup1.ItemIndex of
      0 : CdsClienteContatoCC_TIPO.AsString := 'C';
      1 : CdsClienteContatoCC_TIPO.AsString := 'D';
      2 : CdsClienteContatoCC_TIPO.AsString := 'O';
    end;
  
    CdsClienteContato.Post;

    end;
    nbCancel: ;
    nbRefresh: ;
    nbApplyUpdates: ;
    nbCancelUpdates: ;
  end;
end;

procedure TFormCliente.DBRADBloqueiaClick(Sender: tObject);
begin
  if (DBRADBloqueia.ItemIndex = 0) then
  begin
    DbDateRestricao.color := $00D7D7D7;
    DbDateRestricao.TabStop := False;
    DbDateRestricao.Enabled := False;
    DBEdtMovito.color := $00D7D7D7;
    DBEdtMovito.TabStop := False;
    DBEdtMovito.Enabled := False;
  end
  else
  begin
    DbDateRestricao.color := clWindow;
    DbDateRestricao.TabStop := True;
    DbDateRestricao.Enabled := True;
    DBEdtMovito.color := clWindow;
    DBEdtMovito.TabStop := True;
    DBEdtMovito.Enabled := True;
  end;
end;

procedure TFormCliente.SpeedButton5Click(Sender: tObject);
begin
  FormCidadeGrid := TFormCidadeGrid.Create(Application);
  try
    FormCidadeGrid.ShowModal;
    if (not DataCadastros.CdsClientes.IsEmpty) then
    begin
     if (DataCadastros.CdsClientes.State in [dsBrowse])then
        DataCadastros.CdsClientes.Edit;
     if (DataCadastros.CdsClientes.State in [dsEdit,dsInsert]) then
     begin
       DataCadastros.CdsClientesCLI_CIDADE.AsString  := FormCidadeGrid.Cidade;
       DataCadastros.CdsClientesCLI_UF.AsString      := FormCidadeGrid.Estado;
       DataCadastros.CdsClientesCID_CODIGO.AsInteger := FormCidadeGrid.Cod_Cidade;

     end;
    end;

  finally
    FormCidadeGrid.Destroy;
    FormCidadeGrid := Nil;
  end;

//  if (not DataCadastros.CdsClientes.IsEmpty) then
//  begin
//    CdsCFOP.close;
//    CdsCFOP.CommandText := Sqldef('OPERACAOFISCAL',
//      'Select OPE_CODIGO, OPE_NATUREZA||''-''||OPE_DESCRI as OPE_DESCRI FROM OPE0000',
//      'WHERE OPE_TIPO_OPERACAO <> ''C'' AND ((OPE_DENTRO = ' +
//      QuotedStr(IIF(DataCadastros.CdsClientesCLI_UF.AsString = dbInicio.empresa.
//      UF, 'D', 'F')) + ')OR(OPE_DENTRO = ''I''))', 'OPE_NATUREZA', '');
//    CdsCFOP.Open;
//  end;
//  if (cbCFOPpadrao.EditValue = null) or (cbCFOPpadrao.EditValue = '')
//  then
//  begin
//    DataCadastros.sqlUpdate.close;
//    DataCadastros.sqlUpdate.sql.Text :=
//      'select OPE_CODIGO_DENTRO, OPE_CODIGO_FORA from EMP0000 WHERE EMP_CODIGO = '
//      + QuotedStr(dbInicio.empresa.EMP_CODIGO);
//    DataCadastros.sqlUpdate.Open;
//    if (not DataCadastros.sqlUpdate.IsEmpty) then
//    begin
//      if (DataCadastros.CdsClientes.State in [dsbrowse]) and
//        not(DataCadastros.CdsClientes.IsEmpty) then
//        DataCadastros.CdsClientes.Edit;
//      if (dbInicio.empresa.UF <> DataCadastros.CdsClientesCLI_UF.AsString) then
//      begin
//        DataCadastros.CdsClientesOPE_CODIGO.AsString :=
//          DataCadastros.sqlUpdate.FieldByName('OPE_CODIGO_FORA').AsString;
//      end
//      else
//      begin
//        DataCadastros.CdsClientesOPE_CODIGO.AsString :=
//          DataCadastros.sqlUpdate.FieldByName('OPE_CODIGO_DENTRO').AsString;
//      end;
//      cxDBLookupComboBox1.EditValue :=
//        DataCadastros.CdsClientesOPE_CODIGO.AsString;
//    end;
//  end;
end;

procedure TFormCliente.CbxCobrancaClick(Sender: tObject);
begin
  if (DataCadastros.CdsClientes.State in [dsbrowse]) and
    not(DataCadastros.CdsClientes.IsEmpty) then
    DataCadastros.CdsClientes.Edit;
  if SqlCdsBanco.Locate('BAN_APELIDO', CbxCobranca.Text, []) = True then
    DBEBanco_codigo.Field.Text := SqlCdsBancoBAN_CODIGO.AsString
  else
    DBEBanco_codigo.Text := '';
end;

procedure TFormCliente.CbxCobrancaEnter(Sender: tObject);
begin
  CbxCobranca.SelectAll;
end;

procedure TFormCliente.DBEBanco_codigoExit(Sender: tObject);
begin
  if (ActiveControl.Name = 'Bit_Cancelar') or (ActiveControl.Name = 'Bit_Sair')
  then
    exit;
  if (DBEBanco_codigo.Text <> '') then
  begin
    DBEBanco_codigo.Text := StrZero(DBEBanco_codigo.Text,
      DBEBanco_codigo.MaxLength);
    if SqlCdsBanco.Locate('BAN_CODIGO', DBEBanco_codigo.Text, []) = True then
    begin
      CbxCobranca.Text := SqlCdsBancoBAN_APELIDO.AsString;
    end
    else
    begin
      Uteis.aviso('Banco não encontrado !');
      CbxCobranca.Text := '';
      DBEBanco_codigo.Text := '';
      CbxCobranca.SetFocus;
    end;
  end;

end;

procedure TFormCliente.DBEBanco_codigoKeyPress(Sender: tObject; var Key: Char);
begin
  if not(Key in ['0' .. '9', #8]) then
  begin
    // beep;
    Key := #0;
  end;
end;

procedure TFormCliente.DbePrazoCodigoKeyPress(Sender: tObject; var Key: Char);
begin
  if not(Key in ['0' .. '9', #8]) then
  begin
    // beep;
    Key := #0;
  end;
end;

procedure TFormCliente.CbxPrazoClick(Sender: tObject);
begin
  if (DataCadastros.CdsClientes.State in [dsbrowse]) and
    not(DataCadastros.CdsClientes.IsEmpty) then
    DataCadastros.CdsClientes.Edit;
  if SqlCdsPrazo.Locate('PCL_NOME', CbxPrazo.Text, []) = True then
    DbePrazoCodigo.Field.Text := SqlCdsPrazoPCL_CODIGO.AsString
  else
    DbePrazoCodigo.Text := '';
end;

procedure TFormCliente.CbxPrazoEnter(Sender: tObject);
begin
  CbxPrazo.SelectAll;
end;

procedure TFormCliente.DbePrazoCodigoExit(Sender: tObject);
begin
  if (ActiveControl.Name = 'Bit_Cancelar') or (ActiveControl.Name = 'Bit_Sair')
  then
    exit;
  if (DbePrazoCodigo.Text <> '') then
  begin
    DbePrazoCodigo.Text := StrZero(DbePrazoCodigo.Text,
      DbePrazoCodigo.MaxLength);
    if SqlCdsPrazo.Locate('PCL_CODIGO', DbePrazoCodigo.Text, []) = True then
    begin
      CbxPrazo.Text := SqlCdsPrazoPCL_NOME.AsString;
    end
    else
    begin
      Uteis.aviso('Prazo não encontrado !');
      CbxPrazo.Text := '';
      DbePrazoCodigo.Text := '';
      CbxPrazo.SetFocus;
    end;
  end;

end;

procedure TFormCliente.CbPaisClick(Sender: tObject);
begin
  if (DataCadastros.CdsClientes.State in [dsbrowse]) and
    (not DataCadastros.CdsClientes.IsEmpty) then
    DataCadastros.CdsClientes.Edit;
end;

procedure TFormCliente.DBEOPE_CODIGOClick(Sender: tObject);
begin
  // DBEOPE_CODIGO.SelectAll;
end;

procedure TFormCliente.DBEOPE_CODIGOEnter(Sender: tObject);
begin
  // DBEOPE_CODIGO.SelectAll;
end;

procedure TFormCliente.DBEOPE_CODIGOExit(Sender: tObject);
begin
  (* if (ActiveControl.Name = 'Bit_Cancelar') or (ActiveControl.Name = 'Bit_Sair') then
    exit;
    if (DBEOPE_CODIGO.Text <> '') then
    begin
    DBEOPE_CODIGO.Text := StrZero(DBEOPE_CODIGO.Text,DBEOPE_CODIGO.MaxLength);
    if CdsCFOP.Locate('OPE_CODIGO',DBEOPE_CODIGO.Text,[])= true then
    begin
    CbCFOP.Text     := CdsCFOPOPE_DESCRI.AsString ;
    end
    else
    begin
    uteis.aviso('CFOP não encontrada !');
    CbCFOP.Text     := '';
    DBEOPE_CODIGO.Text := '';
    CbCFOP.SetFocus;
    end;
    end; *)
end;

procedure TFormCliente.CbCFOPClick(Sender: tObject);
begin
  (* if (DataCadastros.CdsClientes.State in [dsbrowse]) and not (DataCadastros.CdsClientes.IsEmpty) then
    DataCadastros.CdsClientes.Edit;
    if CdsCFOP.Locate('OPE_DESCRI',CbCFOP.Text,[]) = true then
    DBEOPE_CODIGO.Field.Text := CdsCFOPOPE_CODIGO.AsString
    else
    DBEOPE_CODIGO.Text := ''; *)
end;

procedure TFormCliente.dbgrdVendasDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (not odd(CdsVendas.RecNo)) then
    if not(GdSelected in State) then
    begin
      dbgrdVendas.Canvas.Brush.color := $00FFEFDF;
      dbgrdVendas.Canvas.FillRect(Rect);
      dbgrdVendas.DefaultDrawDataCell(Rect, Column.Field, State);
    end;
end;

procedure TFormCliente.dbgrdVendasTitleClick(Column: TColumn);
begin
  try
    CdsVendas.IndexFieldNames := Column.FieldName;
  except
    Uteis.aviso('Não é possivel ordenar por esta coluna');
  end;
end;

procedure TFormCliente.CbConsFinalChange(Sender: tObject);
begin
  rgConsumoProprio.Visible := cbConsFinal.ItemIndex = 1;


end;

procedure TFormCliente.DBECentroCustoExit(Sender: tObject);
begin
  if (ActiveControl.Name = 'Bit_Cancelar') or (ActiveControl.Name = 'Bit_Sair')
  then
    exit;
  if (DBECentroCusto.Text <> '') then
  begin
    DBECentroCusto.Text := StrZero(DBECentroCusto.Text,
      DBECentroCusto.MaxLength);
    if SqlCdsCentroCusto.Locate('PCX_CODIGO', DBECentroCusto.Text, []) = True
    then
    begin
      CbxCentroCusto.Text := SqlCdsCentroCustoPCX_DESCRI.AsString;
    end
    else
    begin
      Uteis.aviso('Centro de Custo não encontrado !');
      CbxCentroCusto.Text := '';
      DBECentroCusto.Text := '';
      CbxCentroCusto.SetFocus;
    end;
  end;
end;

procedure TFormCliente.CbxCentroCustoClick(Sender: tObject);
begin
  if (DataCadastros.CdsClientes.State in [dsbrowse]) and
    not(DataCadastros.CdsClientes.IsEmpty) then
    DataCadastros.CdsClientes.Edit;
  if SqlCdsCentroCusto.Locate('PCX_DESCRI', CbxCentroCusto.Text, []) = True then
    DBECentroCusto.Field.Text := SqlCdsCentroCustoPCX_CODIGO.AsString
  else
    DBECentroCusto.Text := '';
end;

procedure TFormCliente.CbxCentroCustoEnter(Sender: tObject);
begin
  CbxCentroCusto.SelectAll;
end;

procedure TFormCliente.CdsClienteContatoBeforePost(DataSet: TDataSet);
begin
  if DataCadastros.CdsClientes.State = dsInsert then
  begin
    DataCadastros.CdsClientes.Post;
    DataCadastros.CdsClientes.Edit;
  end;
  CdsClienteContatoCLI_CODIGO.AsString :=
    DataCadastros.CdsClientesCLI_CODIGO.AsString;
end;

procedure TFormCliente.CdsClienteContatoCC_TIPOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString = 'C' then
    text := 'Colaborador'
  else if Sender.AsString = 'D' then
    Text := 'Diretor ou Gestor'
  else if Sender.AsString = 'O' then
    Text := 'Contador ou Consultor';

end;

procedure TFormCliente.CdsClienteContatoCC_TIPOSetText(Sender: TField; const Text: string);
begin
  inherited;
  if Text = 'Colaborador' then
   sender.AsString := 'C'
  Else if text = 'Diretor ou Gestor' then
    Sender.AsString := 'D'
  ELSE if TEXT = 'Contador ou Consultor' then
    Sender.AsString := 'O';

end;

procedure TFormCliente.cdsClienteEnderAfterCancel(DataSet: TDataSet);
begin
  HabilitaEndereco(false);
end;

procedure TFormCliente.cdsClienteEnderAfterDelete(DataSet: TDataSet);
begin
  cdsClienteEnder.ApplyUpdates(-1);
end;

procedure TFormCliente.cdsClienteEnderAfterPost(DataSet: TDataSet);
begin
  cdsClienteEnder.ApplyUpdates(0);
  //cdsClienteEnder.Refresh;
  //if (cdsClienteEnder.IsEmpty) then
  //begin
    cdsClienteEnder.close;
    cdsClienteEnder.ParamByName('COD_CLIENTE').AsString := DataCadastros.CdsClientesCLI_CODIGO.AsString;
    cdsClienteEnder.Open;
  //end;
  HabilitaEndereco(false);
end;

procedure TFormCliente.cdsClienteEnderBeforeEdit(DataSet: TDataSet);
begin
  HabilitaEndereco(true);
  edCliCepOutros.SetFocus;
end;

procedure TFormCliente.cdsClienteEnderBeforeInsert(DataSet: TDataSet);
begin
  if DataCadastros.CdsClientesCLI_CODIGO.AsString = EmptyStr then
  begin
    Application.MessageBox('Para incluir endereços é necessário salvar o cadastro do cliente!','Adjutor.',MB_ICONERROR);
    cdsClienteEnder.Cancel;
    Exit;
  end;
  HabilitaEndereco(true);
  edCliCepOutros.SetFocus;
end;

procedure TFormCliente.cdsClienteEnderBeforePost(DataSet: TDataSet);
begin
  if cdsClienteEnderCODIGO.isnull then
    cdsClienteEnderCODIGO.AsInteger:= dbInicio.GetNextSequence('GEN_ENDERECO_ID') ;
  cdsClienteEnderCOD_CLIENTE.AsString := DataCadastros.CdsClientesCLI_CODIGO.AsString;

  cdsEnderPadrao.Close;
  cdsEnderPadrao.ParamByName('Cod_cliente').AsString := DataCadastros.CdsClientesCLI_CODIGO.AsString;
  cdsEnderPadrao.ParamByName('Tipo').AsString := IntToStr(cxDBComboBox1.ItemIndex);
  cdsEnderPadrao.Open;
  if (cdsEnderPadraoTOTAL.Value > 0) and (cdsClienteEnderPADRAO.Value = '1') and (cdsClienteEnder.State in [dsInsert]) then
  begin
    try
      Application.MessageBox('Cliente já possui um endereço padrão!','Adjutor.',MB_ICONERROR);
      cdsClienteEnder.cancel;
    except
    end;
  end;
  cdsEnderPadrao.close;
end;

procedure TFormCliente.cdsClienteEnderNewRecord(DataSet: TDataSet);
begin
    cdsClienteEnderPADRAO.Value := '0';
    cdsClienteEnderTIPO.Value := '0';
end;

procedure TFormCliente.cdsClienteEnderPostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
var
  ErroMens :String;

begin
  ErroMens := E.Message;
  if ErroMens = 'Key violation.' then
    action := daAbort;
end;

procedure TFormCliente.CdsClienteContatoAfterPost(DataSet: TDataSet);
begin
  CdsClienteContato.ApplyUpdates(0);
  CdsClienteContato.Refresh;
  if (CdsClienteContato.IsEmpty) then
  begin
    CdsClienteContato.close;
    CdsClienteContato.CommandText :=
      'select * from CLI_CONTATO T1 where CLI_CODIGO = ' +
      QuotedStr(DataCadastros.CdsClientesCLI_CODIGO.AsString) +
      ' ORDER BY T1.cc_nome';
    CdsClienteContato.Open;
  end;

end;

procedure TFormCliente.frxVendasGetValue(const VarName: String;
  var Value: Variant);
begin
  if (VarName = 'Empresa') then
    Value := dbInicio.empresa.RAZAO;
end;

procedure TFormCliente.btnImprimirVendasClick(Sender: tObject);
begin
  frxVendas.ShowReport();
end;

procedure TFormCliente.CdsAvisosAfterPost(DataSet: TDataSet);
begin
  CdsAvisos.ApplyUpdates(0);
  CdsAvisos.Refresh;
end;

procedure TFormCliente.CdsAvisosBeforePost(DataSet: TDataSet);
begin
  CdsAvisosCLI_CODIGO.AsString := DataCadastros.CdsClientesCLI_CODIGO.AsString;
end;

procedure TFormCliente.CdsAvisosCLIM_MENSAGEMGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
     if sender.isnull then
        Text := ''
     Else
        Text := Sender.asstring;
end;

procedure TFormCliente.DBGrid4DrawColumnCell(Sender: tObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  R: TRect;
begin
  R := Rect;
  Dec(R.Bottom, 2);
  if Column.Field = CdsAvisos.FieldByName('CLIM_MENSAGEM') then
  begin
    if not(GdSelected in State) then
      DBGrid4.Canvas.FillRect(Rect);
    DrawText(DBGrid4.Canvas.Handle, Pchar(CdsAvisos.FieldByName('CLIM_MENSAGEM')
      .AsString), length(CdsAvisos.FieldByName('CLIM_MENSAGEM').AsString), R,
      DT_WORDBREAK);

  end;

end;

procedure TFormCliente.DBGrid5DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  If cdsClienteEnderPADRAO.Value <> '1' then
  begin
    Dbgrid5.Canvas.Font.Style:= [];
    Dbgrid5.DefaultDrawDataCell(Rect, Dbgrid5.columns[datacol].field, state);
  end
  else
  begin
    Dbgrid5.Canvas.Font.Style:= [fsBold];
    Dbgrid5.DefaultDrawDataCell(Rect, Dbgrid5.columns[datacol].field, State);
  end;
// Dbgrid5.DefaultDrawDataCell(Rect, Dbgrid5.columns[datacol].field, state);
end;

procedure TFormCliente.cxCNAEClick(Sender: tObject);
begin
  if (DataCadastros.CdsClientes.State in [dsbrowse]) and
    not(DataCadastros.CdsClientes.IsEmpty) then
    DataCadastros.CdsClientes.Edit;
  if SqlCdsCNAE.Locate('CNAE_REGISTRO', cxCNAE.EditValue, []) = True
  then
    DataCadastros.CdsClientesCNAE_REGISTRO.AsString :=
      SqlCdsCNAECNAE_REGISTRO.AsString
  else
    DataCadastros.CdsClientesCNAE_REGISTRO.AsString := '';
end;

procedure TFormCliente.cxCNAEExit(Sender: tObject);
begin
  if (DataCadastros.CdsClientes.State in [dsbrowse]) and
    not(DataCadastros.CdsClientes.IsEmpty) then
    DataCadastros.CdsClientes.Edit;
  if SqlCdsCNAE.Locate('CNAE_REGISTRO', cxCNAE.EditValue, []) = True
  then
    DataCadastros.CdsClientesCNAE_REGISTRO.AsString :=
      SqlCdsCNAECNAE_REGISTRO.AsString
  else
    DataCadastros.CdsClientesCNAE_REGISTRO.AsString := '';
end;

procedure TFormCliente.SpeedButton1Click(Sender: tObject);
begin
   FormCidadeGrid := TFormCidadeGrid.Create(Application);
  try
    FormCidadeGrid.ShowModal;
  finally
    FormCidadeGrid.Destroy;
    FormCidadeGrid := Nil;
  end;

end;

procedure TFormCliente.btnCnaeClick(Sender: tObject);
begin
    FormCnae := TFormCnae.Create(Application);
  try
    FormCnae.FormStyle := fsNormal;
    FormCnae.Visible := false;
    FormCnae.ShowModal;
  finally
    FormCnae.Destroy;
    FormCnae := nil;
  end;
  SqlCdsCNAE.Refresh;
end;

procedure TFormCliente.CdsAvisosAfterDelete(DataSet: TDataSet);
begin
  CdsAvisos.ApplyUpdates(0);
  CdsAvisos.Refresh;
end;

procedure TFormCliente.DbeCil_inscExit(Sender: TObject);
var vRep,vRepInterno: String ;
begin
     if dbInicio.empresa.wPMT_CNPJ_CLIENTE_DUPLICADO then
     begin
          if dbInicio.BuscaUmDadoSqlasInteger('Select cast(count(*) as integer) as conta from    cli0000 where cli_cgc='+qStr( extrairnumeros(Msk_cnpj.Text) )+' and CLI_INSC='+qStr(DbeCil_insc.Text)
          + ConcatSe('and ',dbinicio.ExclusivoSql('CLIENTES'))
          )>0  then
          begin
               vRep := dbInicio.BuscaUmDadoSqlasString('Select rep_codigo From cli0000 where cli_cgc='+qStr( extrairnumeros(Msk_cnpj.Text) )+' and CLI_INSC='+qStr(DbeCil_insc.Text));
               vRepInterno := dbInicio.BuscaUmDadoSqlasString('Select VEND_INTERNO_CODIGO From cli0000 where cli_cgc='+qStr( extrairnumeros(Msk_cnpj.Text) )+' and CLI_INSC='+qStr(DbeCil_insc.Text));
               if (dbInicio.Empresa.bVisualizaClientes_P) and (dbInicio.Empresa.fCODIGO_REPRES <> '000') and (not matchstr(dbInicio.Empresa.fCODIGO_REPRES,[vRep,vRepInterno])) then
               begin
                    Uteis.aviso('Cliente já cadastrado porém pertence a outro vendedor!');
                    DataCadastros.CdsClientes.Cancel;
                    DataCadastros.sqlUpdate.close;
                    MostraClientes('C');
                    Bit_CancelarClick(Self);
                    exit;
               end
               else
               begin
                    vRep := dbInicio.BuscaUmDadoSqlasString('Select cli_codigo From cli0000 where cli_cgc='+qStr( extrairnumeros(Msk_cnpj.Text) )+' and CLI_INSC='+qStr(DbeCil_insc.Text));
                    Uteis.aviso('Cliente com este mesmo CNPJ e Inscr.Estadual já cadastrado !');
                    DataCadastros.CdsClientes.Cancel;
                    DataCadastros.CdsClientes.Locate('CLI_CODIGO',vRep, []) ;
                    EdtCli_codigo.Text := DataCadastros.CdsClientesCLI_CODIGO.AsString;
                    BuscaCliente(EdtCli_codigo.Text);
              end;
         end;
    end;
end;

procedure TFormCliente.DbeCliCepExit(Sender: tObject);
begin
  if (DbeCliCep.Text <> '') and (DbeCli_endere.Text = '') then
  try
    ACBrCEP1.BuscarPorCEP(ExtrairNumeros(DbeCliCep.Text));
  except
  on e:EACBrHTTPError do
    raise Exception.Create('Sem conexão com a internet');
  end;

end;

procedure TFormCliente.ACBrCEP1BuscaEfetuada(Sender: tObject);

var
  i: Integer;
begin
  for i := 0 to ACBrCEP1.Enderecos.Count - 1 do
  begin
    DataCadastros.sqlUpdate.close;
    DataCadastros.sqlUpdate.sql.Text :=
      'select CID_CODIGO, CID_CIDADE, CID_ESTADO, CID_COD_IBGE from CID0000 where CID_CIDADE = '
      + QuotedStr(UpperCase(ACBrCEP1.Enderecos[i].Municipio)) +
      ' AND  CID_ESTADO = ' + QuotedStr(ACBrCEP1.Enderecos[i].UF);
    DataCadastros.sqlUpdate.Open;
    if (DataCadastros.sqlUpdate.IsEmpty) then
    begin
      DataCadastros.sqlUpdate.close;
      DataCadastros.sqlUpdate.sql.Text :=
        'select CID_CODIGO, CID_CIDADE, CID_ESTADO, CID_COD_IBGE from CID0000 where CID_CIDADE = '
        + QuotedStr(UpperCase(TiraAcento(ACBrCEP1.Enderecos[i].Municipio, True))
        ) + ' AND  CID_ESTADO = ' + QuotedStr(ACBrCEP1.Enderecos[i].UF);
      DataCadastros.sqlUpdate.Open;
      if (not DataCadastros.sqlUpdate.IsEmpty) then
      begin
        if (DataCadastros.CdsClientes.State in [dsbrowse]) and
          not(DataCadastros.CdsClientes.IsEmpty) then
          DataCadastros.CdsClientes.Edit;
        DataCadastros.CdsClientesCLI_CIDADE.AsString :=
          DataCadastros.sqlUpdate.FieldByName('CID_CIDADE').AsString;
        DataCadastros.CdsClientesCLI_UF.AsString :=
          DataCadastros.sqlUpdate.FieldByName('CID_ESTADO').AsString;
        DataCadastros.CdsClientesCID_CODIGO.AsInteger :=
          DataCadastros.sqlUpdate.FieldByName('CID_CODIGO').AsInteger;
      end;
    end
    else
    begin
      if (DataCadastros.CdsClientes.State in [dsbrowse]) and
        not(DataCadastros.CdsClientes.IsEmpty) then
        DataCadastros.CdsClientes.Edit;
      DataCadastros.CdsClientesCLI_CIDADE.AsString :=
        DataCadastros.sqlUpdate.FieldByName('CID_CIDADE').AsString;
      DataCadastros.CdsClientesCLI_UF.AsString :=
        DataCadastros.sqlUpdate.FieldByName('CID_ESTADO').AsString;
      DataCadastros.CdsClientesCID_CODIGO.AsInteger :=
        DataCadastros.sqlUpdate.FieldByName('CID_CODIGO').AsInteger;
    end;
    DataCadastros.CdsClientesCLI_BAIRRO.Text :=
      UpperCase(ACBrCEP1.Enderecos[i].Bairro);
    DataCadastros.CdsClientesCLI_ENDERE.AsString := iif(ACBrCEP1.Enderecos[i].Tipo_Logradouro<> '',ACBrCEP1.Enderecos[i].Tipo_Logradouro+ ' ','')+
    ACBrCEP1.Enderecos[i].Logradouro + ',';
    DataCadastros.CdsClientesCLI_LATITUDE.AsBCD := StrToBcd( ACBrCEP1.Enderecos[i].Latitude);
    DataCadastros.CdsClientesCLI_LONGITUDE.AsBCD := StrToBcd( ACBrCEP1.Enderecos[i].Longitude);
  end;

end;

procedure TFormCliente.AtualizaLimite;
begin
  edtLimiteUtilizado.Clear;
  edtLimiteDisponivel.Clear;
  if (DataCadastros.CdsClientesCLI_CODIGO.AsString <> '') and
    (DataCadastros.CdsClientesCLI_LIMITECRED.AsFloat > 0) then
  begin
    DataCadastros.sqlUpdate2.close;
    DataCadastros.sqlUpdate2.sql.Text := 'SELECT * FROM PCd_LIMITE_CLIENTE(' +
      QuotedStr(DataCadastros.CdsClientesCLI_CODIGO.AsString) + ', ' +
      iif (  Share('CLIENTES')  = 'C', QuotedStr('999'), QuotedStr(dbInicio.empresa.EMP_CODIGO) )  + ')';
    DataCadastros.sqlUpdate2.Open;

    if (not DataCadastros.sqlUpdate2.IsEmpty) then
    begin
      edtLimiteUtilizado.Value := DataCadastros.sqlUpdate2.FieldByName('UTILIZADO').AsFloat;
      edtLimiteDisponivel.Value := DataCadastros.sqlUpdate2.FieldByName('LIMITE').AsFloat -
                                   DataCadastros.sqlUpdate2.FieldByName('UTILIZADO').AsFloat;
    end;

    DataCadastros.sqlUpdate2.close;
  end;

end;

procedure TFormCliente.DbeLimiteCredExit(Sender: tObject);
begin
  AtualizaLimite;
end;

procedure TFormCliente.DbeLimiteCredChange(Sender: tObject);
begin
  AtualizaLimite;
end;

procedure TFormCliente.ACBrCEPEntregaBuscaEfetuada(Sender: tObject);
var
  i: Integer;
begin
  for i := 0 to ACBrCEPEntrega.Enderecos.Count - 1 do
  begiN
    if ACBrCEPEntrega.Enderecos[i].IBGE_Municipio <> '' then
    begin
       DataCadastros.sqlUpdate.close;
       DataCadastros.sqlUpdate.sql.Text :=
      'select CID_CODIGO, CID_CIDADE, CID_ESTADO, CID_COD_IBGE from CID0000 where CID_COD_IBGE = ' +ACBrCEPEntrega.Enderecos[i].IBGE_Municipio;
    DataCadastros.sqlUpdate.Open;
    end;
    if (DataCadastros.sqlUpdate.IsEmpty) then
    begin
      DataCadastros.sqlUpdate.close;
      DataCadastros.sqlUpdate.sql.Text :=
        'select CID_CODIGO, CID_CIDADE, CID_ESTADO, CID_COD_IBGE from CID0000 where CID_CIDADE = '
        + QuotedStr(UpperCase(ACBrCEPEntrega.Enderecos[i].Municipio)) +
        ' AND  CID_ESTADO = ' + QuotedStr(ACBrCEPEntrega.Enderecos[i].UF);
      DataCadastros.sqlUpdate.Open;
    end;
    if (DataCadastros.sqlUpdate.IsEmpty) then
    begin
      DataCadastros.sqlUpdate.close;
      DataCadastros.sqlUpdate.sql.Text :=
        'select CID_CODIGO, CID_CIDADE, CID_ESTADO, CID_COD_IBGE from CID0000 where CID_CIDADE = '
        + QuotedStr(UpperCase(TiraAcento(ACBrCEPEntrega.Enderecos[i].Municipio,
        True))) + ' AND  CID_ESTADO = ' +
        QuotedStr(ACBrCEPEntrega.Enderecos[i].UF);
      DataCadastros.sqlUpdate.Open;
      if (not DataCadastros.sqlUpdate.IsEmpty) then
      begin
        edCidadeOutros.Text := DataCadastros.sqlUpdate.FieldByName('CID_CIDADE').AsString;
        edUfOutros.Text :=   DataCadastros.sqlUpdate.FieldByName('CID_ESTADO').AsString;
      end;
    end
    else
    begin
        edCidadeOutros.Text := DataCadastros.sqlUpdate.FieldByName('CID_CIDADE').AsString;
        edUfOutros.Text :=   DataCadastros.sqlUpdate.FieldByName('CID_ESTADO').AsString;
    end;
    cdsClienteEnder.FieldByName('COD_CIDADE').AsInteger := StrToInt(DataCadastros.sqlUpdate.FieldByName('CID_CODIGO').AsString);
    cdsClienteEnder.FieldByName('DESCRICAO').AsString :=iif(ACBrCEPEntrega.Enderecos[i].Tipo_Logradouro<> '',ACBrCEPEntrega.Enderecos[i].Tipo_Logradouro+ ' ','')+
       ACBrCEPEntrega.Enderecos[i].Logradouro  ;
    cxDBLookupComboBox1.EditValue := 1058;
    edBairroOutros.Text :=   UpperCase(ACBrCEPEntrega.Enderecos[i].Bairro);
  end;
end;

procedure TFormCliente.ACBrCEPCobrancaBuscaEfetuada(Sender: tObject);
var
  i: Integer;
begin
  for i := 0 to ACBrCEPCobranca.Enderecos.Count - 1 do
  begiN
    DataCadastros.sqlUpdate.close;
    DataCadastros.sqlUpdate.sql.Text :=
      'select CID_CODIGO, CID_CIDADE, CID_ESTADO, CID_COD_IBGE from CID0000 where CID_CIDADE = '
      + QuotedStr(UpperCase(ACBrCEPCobranca.Enderecos[i].Municipio)) +
      ' AND  CID_ESTADO = ' + QuotedStr(ACBrCEPCobranca.Enderecos[i].UF);
    DataCadastros.sqlUpdate.Open;
    if (DataCadastros.sqlUpdate.IsEmpty) then
    begin
      DataCadastros.sqlUpdate.close;
      DataCadastros.sqlUpdate.sql.Text :=
        'select CID_CODIGO, CID_CIDADE, CID_ESTADO, CID_COD_IBGE from CID0000 where CID_CIDADE = '
        + QuotedStr(UpperCase(TiraAcento(ACBrCEPCobranca.Enderecos[i].Municipio,
        True))) + ' AND  CID_ESTADO = ' +
        QuotedStr(ACBrCEPCobranca.Enderecos[i].UF);
      DataCadastros.sqlUpdate.Open;
      if (not DataCadastros.sqlUpdate.IsEmpty) then
      begin
        if (DataCadastros.CdsClientes.State in [dsbrowse]) and
          not(DataCadastros.CdsClientes.IsEmpty) then
          DataCadastros.CdsClientes.Edit;
        DataCadastros.CdsClientesCLI_CIDFAT.AsString :=
          DataCadastros.sqlUpdate.FieldByName('CID_CIDADE').AsString;
        DataCadastros.CdsClientesCLI_UFFAT.AsString :=
          DataCadastros.sqlUpdate.FieldByName('CID_ESTADO').AsString;
      end;
    end
    else
    begin
      if (DataCadastros.CdsClientes.State in [dsbrowse]) and
        not(DataCadastros.CdsClientes.IsEmpty) then
        DataCadastros.CdsClientes.Edit;
      DataCadastros.CdsClientesCLI_CIDFAT.AsString :=
        DataCadastros.sqlUpdate.FieldByName('CID_CIDADE').AsString;
      DataCadastros.CdsClientesCLI_UFFAT.AsString :=
        DataCadastros.sqlUpdate.FieldByName('CID_ESTADO').AsString;
    end;
    DataCadastros.CdsClientesCLI_BAIFAT.Text :=
      UpperCase(ACBrCEPCobranca.Enderecos[i].Bairro);
    DataCadastros.CdsClientesCLI_ENDFAT.AsString := ACBrCEPCobranca.Enderecos[i]
      .Tipo_Logradouro + ' ' + ACBrCEPCobranca.Enderecos[i].Logradouro + ',';

  end;

end;

procedure TFormCliente.DbeCli_cepentrExit(Sender: tObject);
begin
  if (DbeCli_cepentr.Text <> '') and (DbeCli_Endentr.Text = '') then
  begin
    ACBrCEPEntrega.BuscarPorCEP(ExtrairNumeros(DbeCli_cepentr.Text));
  end;
end;

procedure TFormCliente.DbeCli_cepfatExit(Sender: tObject);
begin
  if (DbeCli_cepfat.Text <> '') and (DbeCli_endfat.Text = '') then
  begin
    ACBrCEPCobranca.BuscarPorCEP(ExtrairNumeros(DbeCli_cepfat.Text));
  end;
end;

procedure TFormCliente.AbrirArquivo;
var
  TempPath: string;
begin
  if CdsArquivo.Active and (not CdsArquivo.IsEmpty) then
  begin
    // Recupera o diretorio TEMP do windows
   // GetTempPath(SizeOf(PathBuf), PathBuf);
    // Monta o path completo para o nosso diretório temporário
    //TempPath := StrPas(PathBuf) + 'Blobs';
    TempPath :=  DBInicio.Versao.PATH +  'arquivo\' + 'Blobs';
    // Verifica se o diretório temporário já existe, caso contrário cria.
    if not DirectoryExists(TempPath) then
      if not ForceDirectories(TempPath) then
      begin
        MessageDlg('Não foi possível criar o diretório temporário!', mtError,
          [mbOk], 0);
        SysUtils.Abort;
      end;
    qArquivoBlob.Close;
    qArquivoBlob.CommandText := 'SELECT ARQ_REGISTRO, ARQ_TIPO, ARQ_TIPO_TABELA, ARQ_REGISTRO_TABELA, ARQ_ARQUIVO, ARQ_DESCRICAO, ARQ_DATA, ARQ_NOME_ARQUIVO ' +
                                ' FROM ARQUIVO WHERE ARQ_REGISTRO = '+ IntToStr(CdsArquivoARQ_REGISTRO.AsInteger);
    qArquivoBlob.Open;
    TempPath := TempPath + '\' + CdsArquivoARQ_NOME_ARQUIVO.AsString;

    // Grava o blob no arquivo temporario
     qArquivoBlobARQ_ARQUIVO.SaveToFile(TempPath);
    // Chama a aplicação associada à extensão do arquivo
    try
      ShellExecute(Self.Handle, 'open', Pchar(TempPath), nil, nil,
        SW_SHOWNORMAL)
    finally
//      try
//        DeleteFile(TempPath);
//      except
//        ;
//      end;

    end;
  end;
end;

procedure TFormCliente.DBGrid7DblClick(Sender: tObject);
begin
  AbrirArquivo;
end;

procedure TFormCliente.DBGrid7KeyPress(Sender: tObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    AbrirArquivo;
  end;
end;

procedure TFormCliente.DBMemo2Enter(Sender: TObject);
begin
  inherited;
  ACBrEnterTab1.EnterAsTab := False;
end;

procedure TFormCliente.DBMemo2Exit(Sender: TObject);
begin
  inherited;
  ACBrEnterTab1.EnterAsTab := True;
end;

procedure TFormCliente.DBMemo4Enter(Sender: TObject);
begin
  inherited;
  ACBrEnterTab1.EnterAsTab := False;
end;

procedure TFormCliente.DBMemo4Exit(Sender: TObject);
begin
  inherited;
  ACBrEnterTab1.EnterAsTab := True;
end;

procedure TFormCliente.AbrirArquivo1Click(Sender: tObject);
begin
  AbrirArquivo;
end;


procedure TFormCliente.btnSalvarArquivoClick(Sender: tObject);
begin
  if (DataCadastros.CdsClientes.IsEmpty) then
  begin
    Uteis.aviso('Selecione um Cliente');
  end
  else if (FilenameArquivo.FileName = '') then
  begin
    Uteis.aviso('Informe o Arquivo');
  end
  else
  begin
    CdsArquivo.Insert;
    CdsArquivoARQ_TIPO.AsString := ExtractFileExt(FilenameArquivo.FileName);
    CdsArquivoARQ_TIPO_TABELA.AsString := 'CLI';
    CdsArquivoARQ_REGISTRO_TABELA.AsString :=   DataCadastros.CdsClientesCLI_CODIGO.AsString;

    if (EdDescricaoArquivo.Text <> '') then
      CdsArquivoARQ_DESCRICAO.AsString := EdDescricaoArquivo.Text
    else
      CdsArquivoARQ_DESCRICAO.AsString := ExtractFileName(FilenameArquivo.FileName);

    CdsArquivoARQ_NOME_ARQUIVO.AsString := ExtractFileName(FilenameArquivo.FileName);
    CdsArquivoARQ_DATA.AsDateTime := Now;
    CdsArquivoARQ_ARQUIVO.LoadFromFile(FilenameArquivo.FileName);
    CdsArquivo.ApplyUpdates(0);
    CdsArquivo.Refresh;
    FilenameArquivo.Clear;
    EdDescricaoArquivo.Clear;
  end;
end;

procedure TFormCliente.ExcluirArquivo1Click(Sender: tObject);
begin
  if (not CdsArquivo.IsEmpty) then
  begin
    if (Uteis.confirmacao('Confirma a exclusão do Arquivo ') = Mryes) then
    begin
      CdsArquivo.Delete;
      CdsArquivo.ApplyUpdates(0);
    end;
  end;
end;

procedure TFormCliente.edTabelaMenuPesquisaClick(Sender: tObject);
var
  tcr: TfrmPesquisaTabelas;
begin
  tcr := TfrmPesquisaTabelas.Create(Self);
  try
    tcr.soprinc := True;
    if tcr.pesquisa(0) then
      edTabela.idRetorno := tcr.idRetorno;
  finally
    FreeAndNil(tcr);
  end;
end;

procedure TFormCliente.CbTabelaPrecoChange(Sender: tObject);
begin
  DesabilitaBotoes;
end;

procedure TFormCliente.CbTipoFreteChange(Sender: TObject);
begin
  inherited;
  DataCadastros.CdsClientes.Edit;
end;

procedure TFormCliente.edTabelaChange(Sender: tObject);
begin
  if edTabela.idRetorno <> DataCadastros.CdsClientesPRE_ID.AsString then
    DesabilitaBotoes;
end;

Function TFormCliente.Verifica_Transportadora_Ativo(sCodTran: String): Boolean;
begin
  result:= false;
  DataCadastros.sqlUpdate.close;
  DataCadastros.sqlUpdate.sql.Text :=
  SQLDEF('TRANSPORTADORAS','SELECT T1.TRP_ATIVO FROM TRP0000 T1','WHERE T1.TRP_CODIGO = ''' + sCodTran + '''','T1.TRP_CODIGO','T1.' ) ;
  DataCadastros.sqlUpdate.Open;
  if (not DataCadastros.sqlUpdate.IsEmpty) then
  begin
    if (DataCadastros.sqlUpdate.FieldByName('TRP_ATIVO').AsString = 'S') then
      Result := True
    else if (DataCadastros.sqlUpdate.FieldByName('TRP_ATIVO').AsString = 'N')
    then
      Result := False;
  end;
  DataCadastros.sqlUpdate.close;
end;

procedure TFormCliente.ExportarparaC91Click(Sender: TObject);
var
  lista: TStringList;
  filtroEmpresa: string;
begin
  inherited;
  cdsClientes.Close;
  qClientes.SQL.Text :=
    'SELECT' +
    ' c.EMP_CODIGO,' +
    ' CLI_CODIGO,' +
    ' CLI_CGC,' +
    ' CLI_RAZAO,' +
    ' CASE' +
      ' WHEN CLI_CLASSE_CLI_FOR = ''C'' THEN ''C'' ' +
      ' WHEN CLI_CLASSE_CLI_FOR = ''F'' THEN ''F'' ' +
      ' WHEN CLI_CLASSE_CLI_FOR = ''A'' THEN ''C,F'' ' +
      ' WHEN CLI_CLASSE_CLI_FOR IS NULL THEN ''C'' ' +
    ' END AS CLI_TIPO,' +
    ' CASE' +
      ' WHEN CLI_FANTASIA = '''' THEN CLI_RAZAO' +
      ' WHEN CLI_FANTASIA IS NULL THEN CLI_RAZAO' +
      ' ELSE CLI_FANTASIA' +
    ' END AS CLI_FANTASIA,' +
    ' REPLACE(REPLACE(CLI_INSC, ''-'', ''''), ''.'', '''') AS CLI_INSC,' +
    ' CLI_CONTATO,' +
    ' ''(''||SUBSTRING (CLI_FONE FROM 1 FOR 2)||'')''||SUBSTRING (CLI_FONE FROM 3 FOR 255) AS CLI_FONE, ' +
    ' ''(''||SUBSTRING (CLI_CELULAR FROM 1 FOR 2)||'')''||SUBSTRING (CLI_CELULAR FROM 3 FOR 255)  CLI_CELULAR, '  +
    '	CASE '  +
    '   WHEN position ('';'' in CLI_EMAIL_ALTERNATIVO) = 0 THEN CLI_EMAIL_ALTERNATIVO '  +
    '	  ELSE '  +
    '   CASE '  +
    '     WHEN position ('';'' in CLI_EMAIL_ALTERNATIVO) > 0 THEN SUBSTRING (CLI_EMAIL_ALTERNATIVO FROM 1 FOR POSITION('';'' in CLI_EMAIL_ALTERNATIVO) -1) '  +
    '   END '  +
    ' END AS CLI_EMAIL_ALTERNATIVO, '  +
    ' CASE '  +
    '   WHEN position ('';'' in CLI_EMAIL) = 0 THEN CLI_EMAIL '  +
    '   ELSE '  +
    '   CASE '  +
    '     WHEN position ('';'' in CLI_EMAIl) > 0 THEN SUBSTRING (CLI_EMAIL FROM 1 FOR POSITION('';'' in CLI_EMAIL) -1) '  +
    '   END '  +
    ' END AS CLI_EMAIL, '  +
    ' CLI_CEP,' +
    ' CASE' +
      ' WHEN CLI_CIDADE = '''' THEN ''não informado''' +
      ' WHEN CLI_CIDADE IS NULL THEN ''não informado''' +
      ' ELSE CLI_CIDADE' +
    ' END AS CLI_CIDADE,' +
    ' CASE' +
      ' WHEN CLI_UF = '''' THEN ''não informado''' +
      ' WHEN CLI_UF IS NULL THEN ''não informado''' +
      ' ELSE CLI_UF' +
    ' END AS CLI_UF,' +
    ' CASE' +
      ' WHEN CLI_ENDERE = '''' THEN ''não informado''' +
      ' WHEN CLI_ENDERE IS NULL THEN ''não informado''' +
      ' WHEN position ('','' in CLI_ENDERE) = 0 THEN CLI_ENDERE ' +
      ' ELSE ' +
      ' CASE' +
        ' WHEN position ('','' in CLI_ENDERE) > 0 THEN SUBSTRING (CLI_ENDERE FROM 1 FOR POSITION('','' in CLI_ENDERE) -1)' +
        ' ELSE ''S/N'' ' +
      ' END' +
    ' END AS CLI_ENDERE,' +
    ' CASE' +
      ' WHEN POSITION('','' IN CLI_ENDERE) > 0 THEN SUBSTRING (CLI_ENDERE FROM POSITION('','' IN CLI_ENDERE) + 1 FOR 255)    ' +
    ' END AS CLI_NUMERO,  ' +
    ' CASE' +
      ' WHEN CLI_BAIRRO = '''' THEN ''não informado''' +
      ' WHEN CLI_BAIRRO IS NULL THEN ''não informado''' +
      ' ELSE CLI_BAIRRO' +
    ' END AS CLI_BAIRRO,' +
    ' REP_RAZAO,' +
    ' PCX_DESCRI,' +
    ' BAN_APELIDO, ' + 
	' BAN_CONTA || (CASE WHEN BAN_DIGCONTA = '''' THEN '''' ELSE ''-'' || BAN_DIGCONTA END ) AS BAN_CONTA,' + 
    ' BAN_DIGCONTA, C.EMP_CODIGO,' +
    ' CLI_UND_CONSUMIDORA' +
  ' FROM CLI0000 c' +
  ' LEFT JOIN REP0000 r ON (r.REP_CODIGO = c.REP_CODIGO)' +
  ' LEFT JOIN PCX0000 p ON (p.PCX_CODIGO = c.PCX_CODIGO)' +
  ' LEFT JOIN BAN0000 b ON (b.BAN_CODIGO = C.BAN_CODIGO)' +
  ' ORDER BY CLI_RAZAO';
  cdsClientes.Open;
  if DBInicio.IsDesenvolvimento then
    CopyToClipBoard(qClientes.SQL.Text);

  lista := TStringList.Create;
  lista.Add('CLI_CODIGO');
  lista.Add('CLI_CGC');
  lista.Add('CLI_RAZAO');
  lista.Add('CLI_TIPO');
  lista.Add('CLI_FANTASIA');
  lista.Add('CLI_INSC');
  lista.Add('CLI_CONTATO');
  lista.Add('CLI_FONE');
  lista.Add('CLI_CELULAR');
  lista.Add('CLI_EMAIL_ALTERNATIVO');
  lista.Add('CLI_EMAIL');
  lista.Add('CLI_CEP');
  lista.Add('CLI_CIDADE');
  lista.Add('CLI_UF');
  lista.Add('CLI_ENDERE');
  lista.Add('CLI_NUMERO');
  lista.Add('CLI_BAIRRO');
  lista.Add('REP_RAZAO');
  lista.Add('PCX_DESCRI');
  lista.Add('BAN_CONTA');
  lista.Add('CLI_UND_CONSUMIDORA');
  CriaCSV(dsExportaExcel, lista, Self);

end;

procedure TFormCliente.qClientesCLI_FONEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  text := FormataFone(Text);
end;



end.



