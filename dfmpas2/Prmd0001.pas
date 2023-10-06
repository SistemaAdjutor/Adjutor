



{**************************************************************************
*  Programa...: PRM0001  - Nome formulario = FormParametros
*  Objetivo...: Cadastrar Parametro de configuração do Sistema
*  Analista...: Márcio Neu Pacheco
*  Programador: Márcio Neu Pacheco
*
*  Comentários: Tabela de dados sempre deverá ser exclusivo p/cada empresa
*
*  Criação..........: Out/99
*  Ultima Alteração.: Dez/11
*  Alterado por.....: Márcio
*
***************************************************************************}
unit Prmd0001;

interface
 uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, BaseForm,
  StdCtrls, Mask, DBCtrls, Db, ExtCtrls, Buttons, ComCtrls,RwFunc,
   rxToolEdit,  rxCurrEdit,inifiles, RXDBCtrl, Provider, SqlExpr,SqlClientDataSet, DBClient,
  Grids, DBGrids, ExtDlgs, Spin, cxControls,
  cxContainer, Data.DBXFirebird, SimpleDS,
  ACBrEnterTab, ACBrCalculadora, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, cxEdit, ACBrDFe, ACBrNFe, JvExStdCtrls, JvCombobox,
  JvDBCombobox, RxDBComb, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, ACBrBase, SgDbSeachComboUnit, Data.FMTBCd, JvExMask, JvToolEdit, JvDBControls, JvBaseDlg, JvBrowseFolder,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinTheBezier, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light;

type
  TFormParametros = class(TfrmBase)
    Panel1: TPanel;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    PageControl1: TPageControl;
    TbSGlobal: TTabSheet;
    SqlCdsBco: TSQLClientDataSet;
    SqlCdsBcoBAN_CODIGO: TStringField;
    SqlCdsBcoBAN_RAZAO: TStringField;
    SqlCdsBcoEMP_CODIGO: TStringField;
    TbConverte: TTabSheet;
    GroupBox13: TGroupBox;
    DBGrid2: TDBGrid;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    Label485: TLabel;
    Label486: TLabel;
    Label487: TLabel;
    SqlCdsCCT: TSQLClientDataSet;
    DsCCT: TDataSource;
    SqlCdsCCTCCT_CODIGO: TStringField;
    SqlCdsCCTCCT_DESCRI: TStringField;
    SqlCdsCCTCCT_ANTIGO: TStringField;
    SqlCdsPag: TSQLClientDataSet;
    DsPag: TDataSource;
    SqlCdsPc: TSQLClientDataSet;
    DsPc: TDataSource;
    SqlCdsFor: TSQLClientDataSet;
    DsFor: TDataSource;
    BtnTransf: TButton;
    BtnSair: TButton;
    Button1: TButton;
    GroupBox19: TGroupBox;
    GroupBox24: TGroupBox;
    Panel11: TPanel;
    Panel12: TPanel;
    Bit_novo: TBitBtn;
    Bit_Excluir: TBitBtn;
    Panel13: TPanel;
    DBNavigator5: TDBNavigator;
    SqlCdsEmpresa: TSQLClientDataSet;
    SqlCdsEmpresaEMP_CODIGO: TStringField;
    SqlCdsEmpresaEMP_RAZAO: TStringField;
    SqlCdsBanco: TSQLClientDataSet;
    SqlCdsPagPAG_REGISTRO: TIntegerField;
    SqlCdsPagCCT_CODIGO: TStringField;
    SqlCdsPagCCT_NOVO: TStringField;
    Panel16: TPanel;
    ProgressBar1: TProgressBar;
    SqlCdsPcPAG_REGISTRO: TIntegerField;
    SqlCdsPcCCT_CODIGO: TStringField;
    SqlCdsPcCCT_NOVO: TStringField;
    SqlCdsForFOR_CODIGO: TStringField;
    SqlCdsForCCT_CODIGO: TStringField;
    SqlCdsForCCT_NOVO: TStringField;
    SqlCdsCCTCCT_NOVO: TStringField;
    SqlCdsAtribFor: TSQLClientDataSet;
    SqlCdsAtribForEMP_CODIGO: TStringField;
    SqlCdsAtribForPAG_DTEMIS: TSQLTimeStampField;
    SqlCdsAtribForFOR_CODIGO: TStringField;
    SqlCdsAtribForCCT_CODIGO: TStringField;
    SqlCdsAtribForCCT_NOVO: TStringField;
    DBRadioGroup4: TDBRadioGroup;
    Panel17: TPanel;
    SqlCdsBancoBAN_CODIGO: TStringField;
    SqlCdsBancoBAN_APELIDO: TStringField;
    SqlCdsAlmoxarifadoGeral: TSQLClientDataSet;
    SqlCdsAlmoxarifadoGeralAMX_CODIGO: TStringField;
    SqlCdsAlmoxarifadoGeralAMX_DESCRI: TStringField;
    SqlCdsAlmoxarifadoGeralAMX_TIPO: TStringField;
    SqlCdsAlmoxarifadoGeralEMP_CODIGO: TStringField;
    SqlCdsAlmoxarifadoGeralAMX_FISICO: TStringField;
    SqlCdsAlmoxarifadoGeralAMX_TERCEIROS: TStringField;
    SqlCdsAlmoxarifadoGeralAMX_FORATERCEIROS: TStringField;
    SqlCdsAlmoxarifadoGeralAMX_CIRCULANTE: TStringField;
    SqlCdsAlmoxarifadoGeralAMX_VIRTUAL: TStringField;
    DsAlmoxarifadoGeral: TDataSource;
    cxTreeView1: TTreeView;
    PNotaFiscal_Etiqueta: TPanel;
    GroupBox34: TGroupBox;
    Edt_Empresa: TEdit;
    Cbx_Empresa: TComboBox;
    qCstPC: TSQLQuery;
    acbrnf1: TACBrNFe;
    Nootbook: TNotebook;
    POrcaIndustrial: TPanel;
    PGlobal: TPanel;
    Label11: TLabel;
    sbtnGetCert: TSpeedButton;
    GroupBox9: TGroupBox;
    Label482: TLabel;
    Label483: TLabel;
    Label484: TLabel;
    Label481: TLabel;
    DBePathFichas: TDBEdit;
    DBePathFotos: TDBEdit;
    DBePATHRELATORIO: TDBEdit;
    DBePathLogoDupl: TDBEdit;
    chkAtivaNFSE: TDBCheckBox;
    DBCheckBox22: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    dbedtPMT_CERTIFICADO_DIGITAL: TDBEdit;
    DBRadioGroup10: TDBRadioGroup;
    DBCheckBox47: TDBCheckBox;
    DBCheckBox26: TDBCheckBox;
    dbchkIncluirEntradaRapida: TDBCheckBox;
    PEstoque: TPanel;
    GroupBox22: TGroupBox;
    Label628: TLabel;
    Label629: TLabel;
    Label630: TLabel;
    Label632: TLabel;
    Label639: TLabel;
    CbAlmoxarifadoEntrada: TcxLookupComboBox;
    CbAlmoxarifadoVenda: TcxLookupComboBox;
    CbAlmoxarifadoFaturamento: TcxLookupComboBox;
    CbAlmoxarifadoProducaoEntrada: TcxLookupComboBox;
    CbAlmoxarifadoProducaoSaida: TcxLookupComboBox;
    DBRadioGroup5: TDBRadioGroup;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox24: TDBCheckBox;
    GroupBox16: TGroupBox;
    DBEdit24: TDBEdit;
    GroupBox36: TGroupBox;
    DBCheckBox42: TDBCheckBox;
    btScript: TButton;
    PFinanceiro: TPanel;
    PPedido: TPanel;
    PProducao: TPanel;
    PGProducao: TPageControl;
    tsPCPOld: TTabSheet;
    GroupBox7: TGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    Label649: TLabel;
    DbeFormulacao: TDBEdit;
    DbCbOrdemMod: TDBComboBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    DBCheckBox18: TDBCheckBox;
    chkProduzirAlem: TDBCheckBox;
    chkConcluirsemApoontamento: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    GroupBox8: TGroupBox;
    Label16: TLabel;
    Label476: TLabel;
    DBEdtPA: TDBEdit;
    DBEdtPI: TDBEdit;
    GroupBox35: TGroupBox;
    Label466: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    GroupBox26: TGroupBox;
    DBEdit7: TDBEdit;
    gbParametros: TGroupBox;
    lbNome1: TLabel;
    lbNome2: TLabel;
    lbNome3: TLabel;
    lbNome4: TLabel;
    lbNome5: TLabel;
    lbNome6: TLabel;
    lbNome7: TLabel;
    lbNome8: TLabel;
    lbNome9: TLabel;
    DBEdit47: TDBEdit;
    DBMemo2: TDBMemo;
    DBEdit48: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    DBCheckBox28: TDBCheckBox;
    GroupBox28: TGroupBox;
    Rad_Lote_Automatico: TRadioButton;
    Rad_Lote_Manual: TRadioButton;
    tsPcpIndustrial: TTabSheet;
    LCAMINHO: TLabel;
    chkGeraAcordo: TDBCheckBox;
    chkGeraPedido: TDBCheckBox;
    edCaminho_pedidoindustrial: TDBEdit;
    tsPCPNew: TTabSheet;
    rdComposOrdem: TDBRadioGroup;
    rdEmpenho: TDBRadioGroup;
    CalMateriaPrima: TDBRadioGroup;
    rdCustoOperacao: TDBRadioGroup;
    rdCustoMaoObra: TDBRadioGroup;
    rdCustoEquipamento: TDBRadioGroup;
    DBCheckBox61: TDBCheckBox;
    DBCheckBox62: TDBCheckBox;
    DBCheckBox64: TDBCheckBox;
    DBCheckBox65: TDBCheckBox;
    PProduto: TPanel;
    Label488: TLabel;
    Label491: TLabel;
    Label1: TLabel;
    Label659: TLabel;
    GroupBox20: TGroupBox;
    Label22: TLabel;
    Label23: TLabel;
    Label15: TLabel;
    DbeEanPais: TDBEdit;
    DbeEanEmpresa: TDBEdit;
    DBEdit1: TDBEdit;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox40: TDBCheckBox;
    JvDBComboBox1: TJvDBComboBox;
    DBEdit34: TDBEdit;
    dbHabilitaMedida: TDBCheckBox;
    DBEdit49: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox48: TDBCheckBox;
    chkTratamentoTermico: TDBCheckBox;
    DBEdit58: TDBEdit;
    POrdemCompra: TPanel;
    Label617: TLabel;
    DBEdit20: TDBEdit;
    GroupBox31: TGroupBox;
    DBMemo1: TDBMemo;
    GroupBox37: TGroupBox;
    DBCheckBox54: TDBCheckBox;
    DBCheckBox55: TDBCheckBox;
    PFiscal: TPanel;
    Label490: TLabel;
    GroupBox33: TGroupBox;
    Label640: TLabel;
    Label641: TLabel;
    Label642: TLabel;
    Label643: TLabel;
    Label645: TLabel;
    Label646: TLabel;
    Label647: TLabel;
    Label648: TLabel;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit33: TDBEdit;
    SgDbSearchCombo1: TSgDbSearchCombo;
    PSintegra: TPanel;
    GroupBox2: TGroupBox;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    GroupBox15: TGroupBox;
    Label618: TLabel;
    Label619: TLabel;
    Label620: TLabel;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    GroupBox4: TGroupBox;
    DbeContato: TDBEdit;
    DBRadioGroup3: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    GroupBox25: TGroupBox;
    Label479: TLabel;
    Label480: TLabel;
    Rad_1: TRadioButton;
    Rad_2: TRadioButton;
    Rad_3: TRadioButton;
    PEXPEDICAO: TPanel;
    DBRadioGroup13: TDBRadioGroup;
    DBCheckBox56: TDBCheckBox;
    PFaturamento: TPanel;
    GroupBox1: TGroupBox;
    Label17: TLabel;
    Label477: TLabel;
    Label478: TLabel;
    DBEDIT_COD_CARTEIRA: TDBEdit;
    CbxCarteira: TComboBox;
    CbxTipoDoc: TComboBox;
    DBCheckBox2: TDBCheckBox;
    dbchkPMT_FAT_MSG_PEDIDO_VEND: TDBCheckBox;
    DBCheckBox38: TDBCheckBox;
    DBCheckBox41: TDBCheckBox;
    DBCheckBox45: TDBCheckBox;
    DBCheckBox36: TDBCheckBox;
    rgLiberarFatura: TDBRadioGroup;
    DBCheckBox57: TDBCheckBox;
    PNotaFiscal: TPanel;
    PNotaFiscalLayout: TPanel;
    ScrollBox1: TScrollBox;
    Label463: TLabel;
    Label464: TLabel;
    Label465: TLabel;
    Group03: TGroupBox;
    Label119: TLabel;
    Label120: TLabel;
    Label121: TLabel;
    Label122: TLabel;
    Label123: TLabel;
    Label124: TLabel;
    Label125: TLabel;
    Label126: TLabel;
    Label127: TLabel;
    Label128: TLabel;
    Label129: TLabel;
    Label130: TLabel;
    Label131: TLabel;
    Label132: TLabel;
    Label133: TLabel;
    Label134: TLabel;
    Label135: TLabel;
    Label136: TLabel;
    Label137: TLabel;
    Label138: TLabel;
    Label139: TLabel;
    Label140: TLabel;
    Label141: TLabel;
    Label142: TLabel;
    Label143: TLabel;
    Label144: TLabel;
    Label145: TLabel;
    Label146: TLabel;
    Label147: TLabel;
    Label148: TLabel;
    Label149: TLabel;
    Label150: TLabel;
    Label151: TLabel;
    Label152: TLabel;
    Label153: TLabel;
    Label154: TLabel;
    Label155: TLabel;
    Label156: TLabel;
    Label157: TLabel;
    Label158: TLabel;
    Label159: TLabel;
    Label160: TLabel;
    Label161: TLabel;
    Label162: TLabel;
    Label163: TLabel;
    Label164: TLabel;
    Label165: TLabel;
    Label166: TLabel;
    Label167: TLabel;
    Label168: TLabel;
    Label169: TLabel;
    Label170: TLabel;
    Label171: TLabel;
    Label172: TLabel;
    Label173: TLabel;
    Label174: TLabel;
    Label175: TLabel;
    Bevel6: TBevel;
    Label176: TLabel;
    Label177: TLabel;
    Label178: TLabel;
    Label179: TLabel;
    Label180: TLabel;
    Label181: TLabel;
    Label182: TLabel;
    Label183: TLabel;
    Label184: TLabel;
    Label185: TLabel;
    Label186: TLabel;
    Label187: TLabel;
    Label188: TLabel;
    Label189: TLabel;
    Label190: TLabel;
    Label191: TLabel;
    Label192: TLabel;
    Label193: TLabel;
    Label194: TLabel;
    Label195: TLabel;
    Label196: TLabel;
    Label197: TLabel;
    Label198: TLabel;
    Label199: TLabel;
    Label200: TLabel;
    Label201: TLabel;
    Label202: TLabel;
    Label203: TLabel;
    Label204: TLabel;
    Label205: TLabel;
    Label206: TLabel;
    Label207: TLabel;
    Label208: TLabel;
    Label209: TLabel;
    Label210: TLabel;
    Label211: TLabel;
    Label212: TLabel;
    Label213: TLabel;
    Label214: TLabel;
    Label215: TLabel;
    Label216: TLabel;
    Label217: TLabel;
    Label218: TLabel;
    Label219: TLabel;
    Label220: TLabel;
    Label221: TLabel;
    Label222: TLabel;
    Label223: TLabel;
    Label224: TLabel;
    Label225: TLabel;
    Label226: TLabel;
    Bevel7: TBevel;
    Label227: TLabel;
    Label228: TLabel;
    Label229: TLabel;
    Label230: TLabel;
    Label231: TLabel;
    Label232: TLabel;
    Label233: TLabel;
    Label234: TLabel;
    Label235: TLabel;
    Label236: TLabel;
    Label237: TLabel;
    Label238: TLabel;
    Label239: TLabel;
    Label240: TLabel;
    Label241: TLabel;
    Label242: TLabel;
    Label243: TLabel;
    Label244: TLabel;
    Label245: TLabel;
    Label246: TLabel;
    Label247: TLabel;
    Label248: TLabel;
    Label249: TLabel;
    Label250: TLabel;
    Label251: TLabel;
    Label252: TLabel;
    Label253: TLabel;
    Label254: TLabel;
    Label255: TLabel;
    Label256: TLabel;
    Label257: TLabel;
    Label258: TLabel;
    Label259: TLabel;
    Label260: TLabel;
    Label261: TLabel;
    Label262: TLabel;
    Bevel8: TBevel;
    Label263: TLabel;
    Label264: TLabel;
    Label265: TLabel;
    Label266: TLabel;
    Label267: TLabel;
    Label268: TLabel;
    Label269: TLabel;
    Label270: TLabel;
    Label271: TLabel;
    Label272: TLabel;
    Label273: TLabel;
    Label274: TLabel;
    Label275: TLabel;
    Label276: TLabel;
    Label277: TLabel;
    Label278: TLabel;
    Label279: TLabel;
    Label280: TLabel;
    Label281: TLabel;
    Label282: TLabel;
    Label283: TLabel;
    Label284: TLabel;
    Label285: TLabel;
    Label286: TLabel;
    Label287: TLabel;
    Label288: TLabel;
    Label289: TLabel;
    Label290: TLabel;
    Label291: TLabel;
    Label292: TLabel;
    Bevel9: TBevel;
    Label293: TLabel;
    Label294: TLabel;
    Label295: TLabel;
    Label296: TLabel;
    Label297: TLabel;
    Label298: TLabel;
    Label299: TLabel;
    Label300: TLabel;
    Label301: TLabel;
    Label302: TLabel;
    Label303: TLabel;
    Label304: TLabel;
    Label305: TLabel;
    Label306: TLabel;
    Label307: TLabel;
    Label308: TLabel;
    Label309: TLabel;
    Label310: TLabel;
    Label311: TLabel;
    Label312: TLabel;
    Label313: TLabel;
    Label314: TLabel;
    Label315: TLabel;
    Label316: TLabel;
    Label317: TLabel;
    Label318: TLabel;
    Label319: TLabel;
    Label320: TLabel;
    Label321: TLabel;
    Label322: TLabel;
    Label323: TLabel;
    Label324: TLabel;
    Label325: TLabel;
    Label326: TLabel;
    Label327: TLabel;
    Label328: TLabel;
    Label329: TLabel;
    Label330: TLabel;
    Label331: TLabel;
    Label332: TLabel;
    Label333: TLabel;
    Label334: TLabel;
    Label335: TLabel;
    Label336: TLabel;
    Label337: TLabel;
    Label338: TLabel;
    Label339: TLabel;
    Label340: TLabel;
    Label341: TLabel;
    Label342: TLabel;
    Label343: TLabel;
    Bevel10: TBevel;
    Label344: TLabel;
    Label345: TLabel;
    Label346: TLabel;
    Label347: TLabel;
    Label348: TLabel;
    Label349: TLabel;
    Label350: TLabel;
    Label351: TLabel;
    Label352: TLabel;
    Label353: TLabel;
    Label354: TLabel;
    Label355: TLabel;
    Label356: TLabel;
    Label357: TLabel;
    Label358: TLabel;
    Label359: TLabel;
    Label360: TLabel;
    Label361: TLabel;
    Label362: TLabel;
    Label363: TLabel;
    Label364: TLabel;
    Label366: TLabel;
    Label367: TLabel;
    Label369: TLabel;
    Label370: TLabel;
    Label372: TLabel;
    Label373: TLabel;
    Bevel11: TBevel;
    Label380: TLabel;
    Label381: TLabel;
    Label382: TLabel;
    Label383: TLabel;
    Label384: TLabel;
    Label385: TLabel;
    Label386: TLabel;
    Label387: TLabel;
    Label388: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Bevel1: TBevel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label397: TLabel;
    Label398: TLabel;
    Label399: TLabel;
    Label400: TLabel;
    Label401: TLabel;
    Label402: TLabel;
    Label403: TLabel;
    Label404: TLabel;
    Label405: TLabel;
    Label457: TLabel;
    Label458: TLabel;
    Label459: TLabel;
    Label596: TLabel;
    Label597: TLabel;
    Label598: TLabel;
    Label609: TLabel;
    Label613: TLabel;
    Label614: TLabel;
    Label615: TLabel;
    RadNota: TRadioGroup;
    ChkSaida: TCheckBox;
    ChkEntrada: TCheckBox;
    ChkNumNota: TCheckBox;
    ChkNatOpe: TCheckBox;
    ChkCFOP: TCheckBox;
    ChkInscrTributa: TCheckBox;
    ChkRazao: TCheckBox;
    ChkCNPJ_CNPF: TCheckBox;
    ChkDataEmiss: TCheckBox;
    ChkEndereco: TCheckBox;
    ChkBairro: TCheckBox;
    ChkCEP: TCheckBox;
    ChkDataSaida: TCheckBox;
    ChkCidade: TCheckBox;
    ChkFone: TCheckBox;
    ChkEstado: TCheckBox;
    ChkInscEst: TCheckBox;
    ChkHoraSaida: TCheckBox;
    ChkFatura1: TCheckBox;
    ChkFatura2: TCheckBox;
    ChkFatura3: TCheckBox;
    ChkFatura4: TCheckBox;
    ChkFatura5: TCheckBox;
    ChkFatura6: TCheckBox;
    ChkVenc1: TCheckBox;
    ChkVenc2: TCheckBox;
    ChkVenc3: TCheckBox;
    ChkVenc4: TCheckBox;
    ChkVenc5: TCheckBox;
    ChkVenc6: TCheckBox;
    ChkValor1: TCheckBox;
    ChkValor2: TCheckBox;
    ChkValor3: TCheckBox;
    ChkValor4: TCheckBox;
    ChkValor5: TCheckBox;
    ChkValor6: TCheckBox;
    ChkProduto: TCheckBox;
    ChkCF: TCheckBox;
    ChkST: TCheckBox;
    ChkUnidade: TCheckBox;
    ChkQtde: TCheckBox;
    ChkPrecoUnit: TCheckBox;
    ChkPrecoTotal: TCheckBox;
    ChkAliqIcms: TCheckBox;
    ChkAliqIPI: TCheckBox;
    ChkValorIPI: TCheckBox;
    ChkMens1: TCheckBox;
    ChkMens2: TCheckBox;
    ChkBasICMS: TCheckBox;
    ChkValICMS: TCheckBox;
    ChkSubst: TCheckBox;
    ChkValSubst: TCheckBox;
    ChkTotProd: TCheckBox;
    ChkFrete: TCheckBox;
    ChkValoSegu: TCheckBox;
    ChkDespAcess: TCheckBox;
    ChkTotIPI: TCheckBox;
    ChkTotNota: TCheckBox;
    ChkTransp: TCheckBox;
    ChkFretePorCot: TCheckBox;
    ChkPlacaVeic: TCheckBox;
    ChkPlacaUF: TCheckBox;
    ChkCNPJ_Trans: TCheckBox;
    ChkEndeTrans: TCheckBox;
    ChkCidadeTrans: TCheckBox;
    ChkEstadoTrans: TCheckBox;
    ChkInscEstTrans: TCheckBox;
    ChkQtdeVol: TCheckBox;
    ChkEspecieVol: TCheckBox;
    ChkMarca: TCheckBox;
    ChkNumero: TCheckBox;
    ChkPesoBruto: TCheckBox;
    ChkPesoLiq: TCheckBox;
    ChkTranspRed: TCheckBox;
    ChkRedespTit: TCheckBox;
    ChkDadoAd1: TCheckBox;
    ChkDadoAd2: TCheckBox;
    ChkDadoAd3: TCheckBox;
    ChkDadoAd4: TCheckBox;
    ChkDadoAd5: TCheckBox;
    ChkDadoAd6: TCheckBox;
    ChkDadoAd7: TCheckBox;
    ChkDadoAd8: TCheckBox;
    ChkDadoAd9: TCheckBox;
    ChkDadoAd10: TCheckBox;
    ChkNotaFatura: TCheckBox;
    ChkAssinatura: TCheckBox;
    ChkDataRec: TCheckBox;
    CEdSaidaLn: TEdit;
    CEdNumNotaLn: TEdit;
    CEdCFOPLn: TEdit;
    CEdRazaoLn: TEdit;
    CEdDataEmissLn: TEdit;
    CEdBairroLn: TEdit;
    CEdDataSaidaLn: TEdit;
    CEdFoneLn: TEdit;
    CEdInsc_EstaLn: TEdit;
    CEdSaidaCol: TEdit;
    CEdNumNotaCol: TEdit;
    CEdCFOPCol: TEdit;
    CEdRazaoCol: TEdit;
    CEdDataEmissCol: TEdit;
    CEdBairroCol: TEdit;
    CEdDataSaidaCol: TEdit;
    CEdFoneCol: TEdit;
    CEdInsc_EstaCol: TEdit;
    CEdEntradaLn: TEdit;
    CEdNatOpeLn: TEdit;
    CEdInscSubstLn: TEdit;
    CEdCNPJ_CNPFLn: TEdit;
    CEdEnderecoLn: TEdit;
    CEdCEPLn: TEdit;
    CEdCidadeLn: TEdit;
    CEdEstadoLn: TEdit;
    CEdHoraSaidaLn: TEdit;
    CEdEntradaCol: TEdit;
    CEdNatOpeCol: TEdit;
    CEdInscSubstCol: TEdit;
    CEdCNPJ_CNPFCol: TEdit;
    CEdEnderecoCol: TEdit;
    CEdCEPCol: TEdit;
    CEdCidadeCol: TEdit;
    CEdEstadoCol: TEdit;
    CEdHoraSaidaCol: TEdit;
    CEdFatura1Ln: TEdit;
    CEdFatura3Ln: TEdit;
    CEdFatura5Ln: TEdit;
    CEdVenc1Ln: TEdit;
    CEdVenc3Ln: TEdit;
    CEdVenc5Ln: TEdit;
    CEdValor1Ln: TEdit;
    CEdValor3Ln: TEdit;
    CEdValor5Ln: TEdit;
    CEdFatura1Col: TEdit;
    CEdFatura3Col: TEdit;
    CEdFatura5Col: TEdit;
    CEdVenc1Col: TEdit;
    CEdVenc3Col: TEdit;
    CEdVenc5Col: TEdit;
    CEdValor1Col: TEdit;
    CEdValor3Col: TEdit;
    CEdValor5Col: TEdit;
    CEdFatura2Ln: TEdit;
    CEdFatura4Ln: TEdit;
    CEdFatura6Ln: TEdit;
    CEdVenc2Ln: TEdit;
    CEdVenc4Ln: TEdit;
    CEdVenc6Ln: TEdit;
    CEdValor2Ln: TEdit;
    CEdValor4Ln: TEdit;
    CEdValor6Ln: TEdit;
    CEdFatura2Col: TEdit;
    CEdFatura4Col: TEdit;
    CEdFatura6Col: TEdit;
    CEdVenc2Col: TEdit;
    CEdVenc4Col: TEdit;
    CEdVenc6Col: TEdit;
    CEdValor2Col: TEdit;
    CEdValor4Col: TEdit;
    CEdValor6Col: TEdit;
    CEdProdutoLn: TEdit;
    CEdSTLn: TEdit;
    CEdQuantidadeLn: TEdit;
    CEdPrecoTotalLn: TEdit;
    CEdAliqIPILn: TEdit;
    CEdMens1Ln: TEdit;
    CEdProdutoCol: TEdit;
    CEdSTCol: TEdit;
    CEdQuantidadeCol: TEdit;
    CEdPrecoTotalCol: TEdit;
    CEdAliqIPICol: TEdit;
    CEdMens1Col: TEdit;
    CEdCFLn: TEdit;
    CEdUnidadeLn: TEdit;
    CEdPrecoUnitLn: TEdit;
    CEdAliqICMSLn: TEdit;
    CEdValorIPILn: TEdit;
    CEdMens2Ln: TEdit;
    CEdCFCol: TEdit;
    CEdUnidadeCol: TEdit;
    CEdPrecoUnitCol: TEdit;
    CEdAliqICMSCol: TEdit;
    CEdValorIPICol: TEdit;
    CEdMens2Col: TEdit;
    CEdBasICMSLn: TEdit;
    CEdBasSubstLn: TEdit;
    CEdValorTotProdLn: TEdit;
    CEdBasICMSCol: TEdit;
    CEdBasSubstCol: TEdit;
    CEdValorTotProdCol: TEdit;
    CEdValorSeguLn: TEdit;
    CEdTotIPILn: TEdit;
    CEdValorSeguCol: TEdit;
    CEdTotIPICol: TEdit;
    CEdValorICMSLn: TEdit;
    CEdValorSubstLn: TEdit;
    CEdValorFretLn: TEdit;
    CEdDespAceLn: TEdit;
    CEdValorTotalLn: TEdit;
    CEdValorICMSCol: TEdit;
    CEdValorSubstCol: TEdit;
    CEdValorFretCol: TEdit;
    CEdDespAceCol: TEdit;
    CEdValorTotalCol: TEdit;
    CEdTranspLn: TEdit;
    CEdPlacaVeicLn: TEdit;
    CEdCNPJ_TransLn: TEdit;
    CEdCidadeTransLn: TEdit;
    CEdInscEstTransLn: TEdit;
    CEdEspecieLn: TEdit;
    CEdNumeroLn: TEdit;
    CEdPesoLiqLn: TEdit;
    CEdTranspCol: TEdit;
    CEdPlacaVeicCol: TEdit;
    CEdCNPJ_TransCol: TEdit;
    CEdCidadeTransCol: TEdit;
    CEdInscEstTransCol: TEdit;
    CEdEspecieCol: TEdit;
    CEdNumeroCol: TEdit;
    CEdPesoLiqCol: TEdit;
    CEdFretPorCotLn: TEdit;
    CEdPlacaUFLn: TEdit;
    CEdEndTransLn: TEdit;
    CEdEstadoTransLn: TEdit;
    CEdQtdeVolLn: TEdit;
    CEdMarcaLn: TEdit;
    CEdPesoBrutoLn: TEdit;
    CEdFretPorCotCol: TEdit;
    CEdPlacaUFCol: TEdit;
    CEdEndTransCol: TEdit;
    CEdEstadoTransCol: TEdit;
    CEdQtdeVolCol: TEdit;
    CEdMarcaCol: TEdit;
    CEdPesoBrutoCol: TEdit;
    CEdTranspRedLn: TEdit;
    CEdTranspRedCol: TEdit;
    CEdRedespTituloLn: TEdit;
    CEdDadoAd2Ln: TEdit;
    CEdDadoAd4Ln: TEdit;
    CEdDadoAd6Ln: TEdit;
    CEdDadoAd8Ln: TEdit;
    CEdDadoAd10Ln: TEdit;
    CEdRedespTituloCol: TEdit;
    CEdDadoAd2Col: TEdit;
    CEdDadoAd4Col: TEdit;
    CEdDadoAd6Col: TEdit;
    CEdDadoAd8Col: TEdit;
    CEdDadoAd10Col: TEdit;
    CEdDadoAd1Ln: TEdit;
    CEdDadoAd3Ln: TEdit;
    CEdDadoAd5Ln: TEdit;
    CEdDadoAd7Ln: TEdit;
    CEdDadoAd9Ln: TEdit;
    CEdDadoAd1Col: TEdit;
    CEdDadoAd3Col: TEdit;
    CEdDadoAd5Col: TEdit;
    CEdDadoAd7Col: TEdit;
    CEdDadoAd9Col: TEdit;
    CEdNotaFaturaLn: TEdit;
    CEdDataRecLn: TEdit;
    CEdNotaFaturaCol: TEdit;
    CEdDataRecCol: TEdit;
    CEdAssinturaLn: TEdit;
    CEdAssinturaCol: TEdit;
    CEdProdutoDescLn: TEdit;
    CEdProdutoDescCol: TEdit;
    ChkProdutoDesc: TCheckBox;
    ChkRedespRua: TCheckBox;
    CEdRedespRuaLn: TEdit;
    CEdRedespRuaCol: TEdit;
    CEdRedespCidLn: TEdit;
    CEdRedespCidCol: TEdit;
    ChkRedespCid: TCheckBox;
    CEdEntregaRuaLn: TEdit;
    CEdEntregaRuaCol: TEdit;
    ChkEntregaRua: TCheckBox;
    CEdEntregaTituloLn: TEdit;
    CEdEntregaTituloCol: TEdit;
    ChkEntregaTitulo: TCheckBox;
    CEdCFapelidoLn: TEdit;
    CEdCFapelidoCol: TEdit;
    ChkCFapelido: TCheckBox;
    CEdEntregaCidaLn: TEdit;
    CEdEntregaCidaCol: TEdit;
    ChkEntregaCida: TCheckBox;
    CEdDadoAd11Ln: TEdit;
    CEdDadoAd11Col: TEdit;
    ChkDadoAd11: TCheckBox;
    CEdDadoAd12Ln: TEdit;
    CEdDadoAd12Col: TEdit;
    ChkDadoAd12: TCheckBox;
    CEdCobrancaRuaLn: TEdit;
    CEdCobrancaRuaCol: TEdit;
    ChkCobrancaRua: TCheckBox;
    CEdCobrancaTituloLn: TEdit;
    CEdCobrancaTituloCol: TEdit;
    ChkCobrancaTitulo: TCheckBox;
    CEdCobrancaCidaLn: TEdit;
    CEdCobrancaCidaCol: TEdit;
    ChkCobrancaCida: TCheckBox;
    RadFonte: TRadioGroup;
    CEdCompDescLn: TEdit;
    CEdCompDescCol: TEdit;
    ChkCompDesc: TCheckBox;
    DbChkItem: TDBCheckBox;
    DBEdit15: TDBEdit;
    CEdDadosCalcLn: TEdit;
    CEdDadosCalcCol: TEdit;
    ChkDadoCalc: TCheckBox;
    Panel2: TPanel;
    DBNavigator3: TDBNavigator;
    Panel4: TPanel;
    Bit_CancelarNFs: TBitBtn;
    Bit_SairNFs: TBitBtn;
    Bit_ExcluirNFs: TBitBtn;
    Bit_GravarNFs: TBitBtn;
    Bit_NovoNFs: TBitBtn;
    Bit_AlterarNFs: TBitBtn;
    DbCodigoNota: TEdit;
    ChkNfs: TCheckBox;
    CLinhaNota: TEdit;
    DBDataNFs: TJvDBDateEdit;
    PNotaFiscalEtiqueta: TPanel;
    Group02: TGroupBox;
    Label406: TLabel;
    Label407: TLabel;
    Label408: TLabel;
    Label409: TLabel;
    Label410: TLabel;
    Label411: TLabel;
    Label412: TLabel;
    Label413: TLabel;
    Label414: TLabel;
    Label415: TLabel;
    Label416: TLabel;
    Label417: TLabel;
    Label418: TLabel;
    Label419: TLabel;
    Label420: TLabel;
    Label424: TLabel;
    Label425: TLabel;
    Label426: TLabel;
    Label427: TLabel;
    Label430: TLabel;
    Label431: TLabel;
    Label432: TLabel;
    Label433: TLabel;
    Label434: TLabel;
    Label435: TLabel;
    Label436: TLabel;
    Label437: TLabel;
    Label438: TLabel;
    Label439: TLabel;
    Label440: TLabel;
    Label441: TLabel;
    Label442: TLabel;
    Label443: TLabel;
    Label444: TLabel;
    Label445: TLabel;
    Label446: TLabel;
    Label447: TLabel;
    Label448: TLabel;
    Label449: TLabel;
    Label450: TLabel;
    Label451: TLabel;
    Label452: TLabel;
    Label453: TLabel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Label421: TLabel;
    Label422: TLabel;
    Label423: TLabel;
    Label454: TLabel;
    Bevel4: TBevel;
    Label456: TLabel;
    Bevel5: TBevel;
    Label429: TLabel;
    Label460: TLabel;
    Label455: TLabel;
    ChkCET_Cliente: TCheckBox;
    ChkCET_Endereco: TCheckBox;
    ChkCET_Cidade: TCheckBox;
    ChkCET_UF: TCheckBox;
    ChkCET_Cep: TCheckBox;
    ChkCET_Nota: TCheckBox;
    ChkCET_Peso: TCheckBox;
    ChkCET_CodProd: TCheckBox;
    ChkCET_Produto: TCheckBox;
    ChkCET_Quantidade: TCheckBox;
    ChkCET_Transp: TCheckBox;
    ChkCET_EndTran: TCheckBox;
    ChkCET_CidTran: TCheckBox;
    ChkCET_CepTran: TCheckBox;
    CET_ClienteLn: TEdit;
    CET_CidadeLn: TEdit;
    CET_CepLn: TEdit;
    CET_NotaLn: TEdit;
    CET_PesoLn: TEdit;
    CET_ProdutoLn: TEdit;
    CET_TranspLn: TEdit;
    CET_CidTranLn: TEdit;
    CET_ClienteCol: TEdit;
    CET_CidadeCol: TEdit;
    CET_CepCol: TEdit;
    CET_NotaCol: TEdit;
    CET_PesoCol: TEdit;
    CET_ProdutoCol: TEdit;
    CET_TranspCol: TEdit;
    CET_CidTranCol: TEdit;
    CET_EnderecoLn: TEdit;
    CET_UFLn: TEdit;
    CET_CodProdLn: TEdit;
    CET_QuantidadeLn: TEdit;
    CET_EndTranLn: TEdit;
    CET_CepTranLn: TEdit;
    CET_EnderecoCol: TEdit;
    CET_UFCol: TEdit;
    CET_CodProdCol: TEdit;
    CET_QuantidadeCol: TEdit;
    CET_EndTranCol: TEdit;
    CET_CepTranCol: TEdit;
    CNumerLinhas: TEdit;
    CIniCol1: TEdit;
    CIniCol2: TEdit;
    CIniCol3: TEdit;
    DBChkEtiq: TDBCheckBox;
    ChkCet_Rotulo: TDBCheckBox;
    Db_DescriEtiq: TDBEdit;
    DbCodigo: TEdit;
    Group01: TGroupBox;
    RadCol1: TRadioButton;
    RadCol2: TRadioButton;
    RadCol3: TRadioButton;
    GroupBox3: TGroupBox;
    RadImpM: TRadioButton;
    RadImpL: TRadioButton;
    DbDataEtiq: TJvDBDateEdit;
    PNotaFiscal_Etiqueta_GRUD: TPanel;
    Bit_CancelarEtiq: TBitBtn;
    Bit_SairEtiq: TBitBtn;
    Bit_GravarEtiq: TBitBtn;
    Bit_ExcluirEtiq: TBitBtn;
    Bit_NovoEtiq: TBitBtn;
    Bit_AlterarEtiq: TBitBtn;
    PNotaFiscal_Etiqueta_nav: TPanel;
    DBNavigator1: TDBNavigator;
    Panel3: TPanel;
    Bit_Lista: TBitBtn;
    PDuplicata: TPanel;
    Group00: TGroupBox;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
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
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    Label113: TLabel;
    Label114: TLabel;
    Label115: TLabel;
    Label116: TLabel;
    Label117: TLabel;
    Label118: TLabel;
    Label365: TLabel;
    Label368: TLabel;
    Label371: TLabel;
    Label374: TLabel;
    Label375: TLabel;
    Label376: TLabel;
    Label377: TLabel;
    Label378: TLabel;
    Label379: TLabel;
    Label389: TLabel;
    Label390: TLabel;
    Label391: TLabel;
    Label392: TLabel;
    Label393: TLabel;
    Label394: TLabel;
    Label395: TLabel;
    Label396: TLabel;
    Label461: TLabel;
    Label462: TLabel;
    Label31: TLabel;
    Label621: TLabel;
    Label622: TLabel;
    Label623: TLabel;
    ChkNatOperacaoDp: TCheckBox;
    ChkEmissaoDp: TCheckBox;
    ChkFaturaNuDp: TCheckBox;
    ChkValorDp: TCheckBox;
    ChkNuOrdemDp: TCheckBox;
    ChkVencimentoDp: TCheckBox;
    ChkDescontoDp: TCheckBox;
    ChkDesctoAteDp: TCheckBox;
    ChkDesctoRsDp: TCheckBox;
    ChkCondEspDp: TCheckBox;
    ChkSacadoDp: TCheckBox;
    ChkEnderecoDp: TCheckBox;
    ChkBairroDp: TCheckBox;
    ChkMunicipioDp: TCheckBox;
    ChkEstadoDp: TCheckBox;
    ChkCepDp: TCheckBox;
    ChkPracaDp: TCheckBox;
    ChkCepPracaDp: TCheckBox;
    CNatOperacaoLn: TEdit;
    CFaturaNuLn: TEdit;
    CNuOrdemLn: TEdit;
    CDescontoLn: TEdit;
    CDesctoRsLn: TEdit;
    CSacadoLn: TEdit;
    CBairroLn: TEdit;
    CEstadoLn: TEdit;
    CPracaLn: TEdit;
    CNatOperacaoCol: TEdit;
    CFaturaNuCol: TEdit;
    CNuOrdemCol: TEdit;
    CDescontoCol: TEdit;
    CDesctoRsCol: TEdit;
    CSacadoCol: TEdit;
    CBairroCol: TEdit;
    CEstadoCol: TEdit;
    CPracaCol: TEdit;
    CEmissaoLn: TEdit;
    CValorLn: TEdit;
    CVencimentoLn: TEdit;
    CDesctoAteLn: TEdit;
    CCondEspLn: TEdit;
    CEnderecoLn: TEdit;
    CMunicipioLn: TEdit;
    CCepLn: TEdit;
    CCepPracaLn: TEdit;
    CEmissaoCol: TEdit;
    CValorCol: TEdit;
    CVencimentoCol: TEdit;
    CDesctoAteCol: TEdit;
    CCondEspCol: TEdit;
    CEnderecoCol: TEdit;
    CMunicipioCol: TEdit;
    CCepCol: TEdit;
    CCepPracaCol: TEdit;
    ChkEndCobrancaDp: TCheckBox;
    ChkCNPJ_CNPFDp: TCheckBox;
    ChkInscricaoDp: TCheckBox;
    ChkValorExtensoDp: TCheckBox;
    CEndCobrancaLn: TEdit;
    CInscricaoLn: TEdit;
    CEndCobrancaCol: TEdit;
    CInscricaoCol: TEdit;
    CCNPJ_CNPFLn: TEdit;
    CValorExtensoLn: TEdit;
    CCNPJ_CNPFCol: TEdit;
    CValorExtensoCol: TEdit;
    ChkAceiteDp: TCheckBox;
    CAceiteLn: TEdit;
    CAceiteCol: TEdit;
    ChkFoneDp: TCheckBox;
    CFoneLn: TEdit;
    CFoneCol: TEdit;
    CLinhaDuplicata: TEdit;
    DbCodigoDupl: TEdit;
    ChkDupl: TCheckBox;
    CboxFonte: TComboBox;
    CObsLn: TEdit;
    CObsCol: TEdit;
    ChkObs: TCheckBox;
    DBDataDupli: TJvDBDateEdit;
    Panel6: TPanel;
    Bit_SairDupl: TBitBtn;
    Bit_CancelarDupl: TBitBtn;
    Bit_ExcluirDupl: TBitBtn;
    Bit_GravarDupl: TBitBtn;
    Bit_NovoDupl: TBitBtn;
    Bit_AlterarDupl: TBitBtn;
    Panel5: TPanel;
    DBNavigator2: TDBNavigator;
    PCheque: TPanel;
    GroupBox27: TGroupBox;
    Label593: TLabel;
    CbBancoCh: TComboBox;
    CCodBanco: TEdit;
    GrpDados: TGroupBox;
    Label594: TLabel;
    Label602: TLabel;
    Label605: TLabel;
    Label599: TLabel;
    Label595: TLabel;
    Label600: TLabel;
    Label624: TLabel;
    Label603: TLabel;
    Label604: TLabel;
    Label625: TLabel;
    Label606: TLabel;
    Label607: TLabel;
    Label626: TLabel;
    Label608: TLabel;
    Label601: TLabel;
    CLinhaValor: TEdit;
    CColunaValor: TEdit;
    ChkImprimiValor: TCheckBox;
    ClinhaValorExtLin1: TEdit;
    cColunaValorExtCol1: TEdit;
    cTamValorExt: TEdit;
    ChkImpExtenso: TCheckBox;
    ClinhaValorExtLin2: TEdit;
    cColunaValorExtCol2: TEdit;
    CLinhaFav: TEdit;
    cColunaFav: TEdit;
    ChkImpFav: TCheckBox;
    CLinhaCid: TEdit;
    CColunaCid: TEdit;
    chkImpCid: TCheckBox;
    CLinhaDia: TEdit;
    CColunaDia: TEdit;
    ChkImpDia: TCheckBox;
    CLinhaMes: TEdit;
    CColunaMes: TEdit;
    ChkImpMes: TCheckBox;
    ClinhaAno: TEdit;
    cColunaAno: TEdit;
    CbAno: TComboBox;
    ChkImpAno: TCheckBox;
    CLinhaBom: TEdit;
    CColunabom: TEdit;
    ChkImpBom: TCheckBox;
    CSaltoPg: TEdit;
    SpinEntreLin: TSpinEdit;
    RadGCheque: TRadioGroup;
    Panel7: TPanel;
    BitBtnCancelarCheq: TBitBtn;
    BitBtnSairCheq: TBitBtn;
    BitBtnExcluirCheq: TBitBtn;
    BitBtnGravarCheq: TBitBtn;
    BitNovoCheq: TBitBtn;
    BitBtnAlterarCheq: TBitBtn;
    Panel8: TPanel;
    DBNavigator6: TDBNavigator;
    PComissao: TPanel;
    GroupBox23: TGroupBox;
    DBCkBoxComis_Prod: TDBCheckBox;
    DBCheckBox25: TDBCheckBox;
    DBCheckBox53: TDBCheckBox;
    DbRadPagto_Com_Tipo: TDBRadioGroup;
    DbRadBordero_Com: TDBRadioGroup;
    GroupBox30: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    DBCkBoxComis_Quinz: TDBCheckBox;
    Dbe1Qz_Dias: TDBEdit;
    Dbe2Qz_dias: TDBEdit;
    GroupBox29: TGroupBox;
    Label2: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    DbCkBoxComis_Grp: TDBCheckBox;
    DbeComis_Rep: TDBEdit;
    DbeComis_Sup: TDBEdit;
    DbeComis_Ger: TDBEdit;
    DBCheckBox52: TDBCheckBox;
    PBoleto: TPanel;
    Label18: TLabel;
    DBRadioGroup6: TDBRadioGroup;
    GroupBox21: TGroupBox;
    DBEObs1: TDBEdit;
    DBEObs2: TDBEdit;
    DBEObs3: TDBEdit;
    DBEdit5: TDBEdit;
    PBoletoLayout: TPanel;
    ScrollBox2: TScrollBox;
    GroupBoleto: TGroupBox;
    Label503: TLabel;
    Label504: TLabel;
    Label505: TLabel;
    Label506: TLabel;
    Label507: TLabel;
    Label508: TLabel;
    Label509: TLabel;
    Label510: TLabel;
    Label511: TLabel;
    Label512: TLabel;
    Label513: TLabel;
    Label514: TLabel;
    Label515: TLabel;
    Label516: TLabel;
    Label517: TLabel;
    Label518: TLabel;
    Label519: TLabel;
    Label520: TLabel;
    Label521: TLabel;
    Label522: TLabel;
    Label523: TLabel;
    Label524: TLabel;
    Label525: TLabel;
    Label526: TLabel;
    Label527: TLabel;
    Label528: TLabel;
    Label529: TLabel;
    Label530: TLabel;
    Label531: TLabel;
    Label532: TLabel;
    Label533: TLabel;
    Label534: TLabel;
    Label535: TLabel;
    Label536: TLabel;
    Label537: TLabel;
    Label538: TLabel;
    Label542: TLabel;
    Label543: TLabel;
    Label544: TLabel;
    Label545: TLabel;
    Label546: TLabel;
    Label547: TLabel;
    Label548: TLabel;
    Label549: TLabel;
    Label550: TLabel;
    Label551: TLabel;
    Label552: TLabel;
    Label553: TLabel;
    Label554: TLabel;
    Label555: TLabel;
    Label556: TLabel;
    Label557: TLabel;
    Label558: TLabel;
    Label559: TLabel;
    Label560: TLabel;
    Label561: TLabel;
    Label562: TLabel;
    Label563: TLabel;
    Label564: TLabel;
    Label565: TLabel;
    Label566: TLabel;
    Label567: TLabel;
    Label568: TLabel;
    Label569: TLabel;
    Label570: TLabel;
    Label571: TLabel;
    Label572: TLabel;
    Label573: TLabel;
    Label574: TLabel;
    Label575: TLabel;
    Label576: TLabel;
    Label577: TLabel;
    Label578: TLabel;
    Label579: TLabel;
    Label580: TLabel;
    Label581: TLabel;
    Label582: TLabel;
    Label583: TLabel;
    Label29: TLabel;
    Label467: TLabel;
    Label468: TLabel;
    Label469: TLabel;
    Label470: TLabel;
    Label471: TLabel;
    Label494: TLabel;
    Label495: TLabel;
    Label496: TLabel;
    Label497: TLabel;
    Label498: TLabel;
    Label499: TLabel;
    Label500: TLabel;
    Label501: TLabel;
    Label502: TLabel;
    Label584: TLabel;
    Label585: TLabel;
    Label586: TLabel;
    Label587: TLabel;
    Label588: TLabel;
    Label589: TLabel;
    Label590: TLabel;
    Label591: TLabel;
    Label592: TLabel;
    GroupBox6: TGroupBox;
    DbBol_Local: TEdit;
    GroupBox10: TGroupBox;
    Label539: TLabel;
    DbCodBloq: TEdit;
    ChkBloq: TCheckBox;
    Bol_LocalLn: TEdit;
    Bol_LocalCol: TEdit;
    ChkBol_Local: TCheckBox;
    Bol_VenctoLn: TEdit;
    Bol_VenctoCol: TEdit;
    ChkBol_Vencto: TCheckBox;
    Bol_DtemisLn: TEdit;
    Bol_DtemisCol: TEdit;
    ChkBol_Dtemis: TCheckBox;
    Bol_CodFatLn: TEdit;
    Bol_CodFatCol: TEdit;
    ChkBol_CodFat: TCheckBox;
    ChkBol_Aceite: TCheckBox;
    Bol_AceiteLn: TEdit;
    Bol_AceiteCol: TEdit;
    Bol_DtProceLn: TEdit;
    Bol_DtProceCol: TEdit;
    ChkBol_DtProce: TCheckBox;
    Bol_UsoBcoLn: TEdit;
    Bol_CarteiraLn: TEdit;
    Bol_EspecieLn: TEdit;
    Bol_QtdeLn: TEdit;
    Bol_VlParcLn: TEdit;
    Bol_JurosLn: TEdit;
    Bol_UsoBcoCol: TEdit;
    Bol_CarteiraCol: TEdit;
    Bol_EspecieCol: TEdit;
    Bol_QtdeCol: TEdit;
    Bol_VlParcCol: TEdit;
    Bol_JurosCol: TEdit;
    ChkBol_UsoBco: TCheckBox;
    ChkBol_Carteira: TCheckBox;
    ChkBol_Especie: TCheckBox;
    ChkBol_Qtde: TCheckBox;
    ChkBol_VlParc: TCheckBox;
    ChkBol_Juros: TCheckBox;
    GroupBox11: TGroupBox;
    Label540: TLabel;
    CbxBanco: TComboBox;
    DbCodBco: TEdit;
    GroupBox12: TGroupBox;
    Label541: TLabel;
    DbNLinhas: TEdit;
    Bol_Obs1Ln: TEdit;
    Bol_Obs1Col: TEdit;
    Bol_Obs2Ln: TEdit;
    Bol_Obs2Col: TEdit;
    ChkBol_Obs1: TCheckBox;
    ChkBol_Obs2: TCheckBox;
    Bol_Obs3Ln: TEdit;
    Bol_Obs3Col: TEdit;
    ChkBol_Obs3: TCheckBox;
    ChkBol_Desc: TCheckBox;
    Bol_DescCol: TEdit;
    Bol_DescLn: TEdit;
    Bol_OutLn: TEdit;
    Bol_OutCol: TEdit;
    ChkBol_out: TCheckBox;
    ChkBol_Mora: TCheckBox;
    Bol_MoraCol: TEdit;
    Bol_MoraLn: TEdit;
    Bol_OutAcLn: TEdit;
    Bol_OutAcCol: TEdit;
    ChkBol_OutAc: TCheckBox;
    ChkBol_VlCo: TCheckBox;
    Bol_VlCoCol: TEdit;
    Bol_VlCoLn: TEdit;
    Bol_RazaoLn: TEdit;
    Bol_RazaoCol: TEdit;
    ChkBol_Razao: TCheckBox;
    ChkBol_Cnpj: TCheckBox;
    Bol_CnpjCol: TEdit;
    Bol_CnpjLn: TEdit;
    Bol_EndLn: TEdit;
    Bol_EndCol: TEdit;
    ChkBol_End: TCheckBox;
    ChkBol_Cid: TCheckBox;
    Bol_CidCol: TEdit;
    Bol_CidLn: TEdit;
    Bol_EstLn: TEdit;
    Bol_EstCol: TEdit;
    ChkBol_Est: TCheckBox;
    ChkBol_Cep: TCheckBox;
    Bol_CepCol: TEdit;
    Bol_CepLn: TEdit;
    Bol_VlDocLn: TEdit;
    Bol_VlDocCol: TEdit;
    ChkBol_VlDoc: TCheckBox;
    Bol_EspDocLn: TEdit;
    Bol_EspDocCol: TEdit;
    ChkBol_EspDoc: TCheckBox;
    GroupBox5: TGroupBox;
    Label472: TLabel;
    Label473: TLabel;
    Label474: TLabel;
    Label475: TLabel;
    DbBol_Obs1: TEdit;
    DbBol_Obs2: TEdit;
    DbBol_Obs3: TEdit;
    DbBol_Obs4: TEdit;
    Bol_desaceiteln: TEdit;
    Bol_desaceitecol: TEdit;
    Chkbol_desaceite: TCheckBox;
    Bol_descarteiraln: TEdit;
    Bol_descarteiracol: TEdit;
    chkBol_descarteira: TCheckBox;
    Bol_DespecieLn: TEdit;
    Bol_Despeciecol: TEdit;
    chkBol_Despecie: TCheckBox;
    Bol_ValorLn: TEdit;
    Bol_ValorCol: TEdit;
    chkBol_Valor: TCheckBox;
    Bol_Obs4ln: TEdit;
    Bol_Obs4Col: TEdit;
    ChkBol_Obs4: TCheckBox;
    Bol_DesEspDocLn: TEdit;
    Bol_DesEspDocCol: TEdit;
    chk_DesEspDoc: TCheckBox;
    Panel9: TPanel;
    Bit_SairBloq: TBitBtn;
    Bit_CancelarBloq: TBitBtn;
    Bit_ExcluirBloq: TBitBtn;
    Bit_GravarBloq: TBitBtn;
    Bit_NovoBloq: TBitBtn;
    Bit_AlterarBloq: TBitBtn;
    PNotaFiscal_Layout: TPanel;
    DBNavigator4: TDBNavigator;
    ChkMultiplicador: TDBCheckBox;
    DBCheckBox66: TDBCheckBox;
    DBCheckBox67: TDBCheckBox;
    cbModelo: TDBComboBox;
    Label660: TLabel;
    Label661: TLabel;
    EdClienteCodigo: TEdit;
    edCliente: TSgDbSearchCombo;
    qcli: TSQLQuery;
    DBCheckBox68: TDBCheckBox;
    DBCheckBox69: TDBCheckBox;
    DBCheckBox71: TDBCheckBox;
    Label662: TLabel;
    edValor_Minimo_do_Servico: TDBEdit;
    GroupBox39: TGroupBox;
    rbLoteAutomatico: TRadioButton;
    rbLoteManual: TRadioButton;
    Label664: TLabel;
    dbLotePrefixo: TDBEdit;
    Label665: TLabel;
    dbLoteSemente: TDBEdit;
    DBEdit59: TDBEdit;
    Label666: TLabel;
    dbPmtLimiteCreditoInicial: TDBEdit;
    GroupBox40: TGroupBox;
    dbOSCabecalho: TDBEdit;
    Label667: TLabel;
    dbOSRev: TDBEdit;
    Label668: TLabel;
    dbOSDataEmissao: TJvDateEdit;
    PageControl2: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    grp1: TGroupBox;
    dbmmoObservacaoOrcamento: TDBMemo;
    GroupBox18: TGroupBox;
    DBMemoAvisoImportante: TDBMemo;
    DbRadNumer_Ped: TDBRadioGroup;
    Label610: TLabel;
    Label30: TLabel;
    DBEdit16: TDBEdit;
    DBEdit11: TDBEdit;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    cbHabilitaOrcamentoParaClienteSemCadastro: TDBCheckBox;
    ckPMT_VENDA_GRADE: TDBCheckBox;
    DBCheckBox30: TDBCheckBox;
    DBCheckBox33: TDBCheckBox;
    dbchkPMT_BLOQ_VENDA_PCM: TDBCheckBox;
    ckPMT_OBRIGAR_GRADE_VENDA: TDBCheckBox;
    DBCheckBox39: TDBCheckBox;
    DBRadioGroup9: TDBRadioGroup;
    ckPMT_DIGITACAO_GRID_VENDAS: TDBCheckBox;
    DBCheckBox32: TDBCheckBox;
    DBCheckBox60: TDBCheckBox;
    Label658: TLabel;
    DBCheckBox37: TDBCheckBox;
    DBCheckBox43: TDBCheckBox;
    gbkit: TGroupBox;
    ckPMT_VALOR_KIT: TDBCheckBox;
    ckPMT_ITENS_KIT: TDBCheckBox;
    ckPMT_CONTROLA_KIT: TDBCheckBox;
    DBEdit57: TDBEdit;
    DBCheckBox58: TDBCheckBox;
    DBCheckBox63: TDBCheckBox;
    DBCheckBox72: TDBCheckBox;
    CbAlmoxarifadoEnvaseSaida: TcxLookupComboBox;
    Label669: TLabel;
    DBCheckBox73: TDBCheckBox;
    DBCheckBox74: TDBCheckBox;
    DBCheckBox75: TDBCheckBox;
    Label670: TLabel;
    dbRevisaoRelatorio: TDBEdit;
    gbMedidaProduto: TGroupBox;
    DBEdit60: TDBEdit;
    DBEdit61: TDBEdit;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    pcFinanceiro: TPageControl;
    tsFinanceiro: TTabSheet;
    tsTabelaPreco: TTabSheet;
    GroupBox32: TGroupBox;
    Label633: TLabel;
    Label634: TLabel;
    Label635: TLabel;
    Label636: TLabel;
    Label637: TLabel;
    Label24: TLabel;
    Label492: TLabel;
    Label493: TLabel;
    Label631: TLabel;
    Label638: TLabel;
    Label650: TLabel;
    Label651: TLabel;
    Label652: TLabel;
    Label653: TLabel;
    Label654: TLabel;
    Label655: TLabel;
    Label656: TLabel;
    Label657: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    GroupBox17: TGroupBox;
    DbeCab_TabPreco: TDBEdit;
    GroupBox14: TGroupBox;
    Label611: TLabel;
    Label612: TLabel;
    Label644: TLabel;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBRadioGroup8: TDBRadioGroup;
    DBRadioGroup7: TDBRadioGroup;
    DBRadioGroup1: TDBRadioGroup;
    grpRetirarImpostos: TGroupBox;
    dbchkPMT_ICMS_CUSTOENTRADA: TDBCheckBox;
    dbchkPMT_PIS_CUSTOENTRADA: TDBCheckBox;
    Label19: TLabel;
    Label428: TLabel;
    DBEdit6: TDBEdit;
    DBCheckBox27: TDBCheckBox;
    DBCheckBox34: TDBCheckBox;
    DBCheckBox35: TDBCheckBox;
    DBEdit32: TDBEdit;
    DBCheckBox46: TDBCheckBox;
    DBCheckBox51: TDBCheckBox;
    chkControleFinanceiro: TDBCheckBox;
    DBCheckBox70: TDBCheckBox;
    DBRadioGroup12: TDBRadioGroup;
    rgMetodoCalculo: TDBRadioGroup;
    GroupBox41: TGroupBox;
    edAbrePastaOP: TDBEdit;
    AbrePastaOP: TJvBrowseForFolderDialog;
    btAbrePastaOP: TBitBtn;
    DBCheckBox78: TDBCheckBox;
    Label671: TLabel;
    PMT_MSG_ORCAMENTO_INDUST: TDBEdit;
    pcNotaFiscal: TPageControl;
    tsEntrada: TTabSheet;
    tsSaida: TTabSheet;
    Label13: TLabel;
    Label25: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label627: TLabel;
    Label672: TLabel;
    DbeQtde_Decimais: TDBEdit;
    DbeMarca: TDBEdit;
    DBEdtPMT_MENSAGEM1: TDBEdit;
    DBEdtPMT_MENSAGEM2: TDBEdit;
    DBEdtPMT_MENSAGEM3: TDBEdit;
    DBCheckBox19: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBEdit64: TDBEdit;
    DBCheckBox23: TDBCheckBox;
    DBCheckBox20: TDBCheckBox;
    DBCheckBox50: TDBCheckBox;
    DBCheckBox29: TDBCheckBox;
    DBCheckBox79: TDBCheckBox;
    DBCheckBox82: TDBCheckBox;
    DBCheckBox80: TDBCheckBox;
    DBCheckBox83: TDBCheckBox;
    DBCheckBox81: TDBCheckBox;
    Label_669: TLabel;
    dbrgrpValorAproximado: TDBRadioGroup;
    GroupBox38: TGroupBox;
    Label489: TLabel;
    DBCheckBox44: TDBCheckBox;
    DBCheckBox49: TDBCheckBox;
    DBCheckBox59: TDBCheckBox;
    PMT_DESCRICAO_99_OUTROS: TDBEdit;
    DBCheckBox76: TDBCheckBox;
    DBRadioGroup11: TDBRadioGroup;
    Label616: TLabel;
    DBEdit19: TDBEdit;
    DBCheckBox84: TDBCheckBox;
    rgAtualizaLote: TDBRadioGroup;
    DBCheckBox85: TDBCheckBox;
    DBCheckBox86: TDBCheckBox;
    DBCheckBox87: TDBCheckBox;
    TabSheet3: TTabSheet;
    chkPMT_PEDITEMDESC: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    chkPMT_VARIACOES: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox21: TDBCheckBox;
    dbchkPMT_COMP_ITEM_PEDIDO: TDBCheckBox;
    dbchkPMT_B2B: TDBCheckBox;
    Label8: TLabel;
    dbedtPMT_REFERENCIA_PROVISORIA: TDBEdit;
    chkPMT_NCM_UND_ITEM_PROV: TDBCheckBox;
    chkHabPrazoItens: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox77: TDBCheckBox;
    cbPmtPedidoIndPlastica: TDBCheckBox;
    gbNomeGrade: TGroupBox;
    dbPMT_GRADE_MEDIDA1: TDBEdit;
    dbPMT_GRADE_MEDIDA2: TDBEdit;
    dbPMT_GRADE_MEDIDA3: TDBEdit;
    Label673: TLabel;
    PMT_ENVIA_COPIA_PEDIDO_INDUST: TDBEdit;
    dbrgLancaCCVerba: TDBRadioGroup;
    qFormaPagamento: TSQLQuery;
    cbFormaPagamento: TSgDbSearchCombo;
    cbInformacoesObrigatoriasParaClienteSemCadastro: TDBCheckBox;
    cbMostrarValorDifalPedido: TDBCheckBox;
    DBCheckBox31: TDBCheckBox;
    DBCheckBox88: TDBCheckBox;
    TabSheet4: TTabSheet;
    GroupBox42: TGroupBox;
    DBRadioGroup14: TDBRadioGroup;
    DBCheckBox89: TDBCheckBox;
    DBCheckBox90: TDBCheckBox;
    DBCheckBox91: TDBCheckBox;
    DBCheckBox92: TDBCheckBox;
    DBCheckBox93: TDBCheckBox;
    DBCheckBox94: TDBCheckBox;
    DBCheckBox95: TDBCheckBox;
    DBCheckBox96: TDBCheckBox;


    procedure FormShow(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure Bit_SairClick(Sender: tObject);
    procedure TbParametrosBeforeEdit(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure DBNavigator3Click(Sender: tObject; Button: TNavigateBtn);
    procedure DBNavigator2Click(Sender: tObject; Button: TNavigateBtn);
    procedure DBNavigator1Click(Sender: tObject; Button: TNavigateBtn);
    procedure PageControl1Change(Sender: tObject);
    procedure Bit_CancelarEtiqClick(Sender: tObject);
    procedure Bit_CancelarNFsClick(Sender: tObject);
    procedure Bit_ExcluirEtiqClick(Sender: tObject);
    procedure Bit_ExcluirDuplClick(Sender: tObject);
    procedure Bit_NovoDuplClick(Sender: tObject);
    procedure Bit_AlterarDuplClick(Sender: tObject);
    procedure Bit_NovoEtiqClick(Sender: tObject);
    procedure Bit_AlterarEtiqClick(Sender: tObject);
    procedure Bit_GravarDuplClick(Sender: tObject);
    procedure Bit_GravarEtiqClick(Sender: tObject);
    procedure Bit_NovoNFsClick(Sender: tObject);
    procedure Bit_AlterarNFsClick(Sender: tObject);
    procedure Bit_ExcluirNFsClick(Sender: tObject);
    procedure Bit_GravarNFsClick(Sender: tObject);
    procedure Bit_SairNFsClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure Bit_NovoBloqClick(Sender: tObject);
    procedure DBNavigator4Click(Sender: tObject; Button: TNavigateBtn);
    procedure DbCodBcoExit(Sender: tObject);
    procedure CbxBancoClick(Sender: tObject);
    procedure Bit_CancelarBloqClick(Sender: tObject);
    procedure Bit_GravarBloqClick(Sender: tObject);
    procedure Bit_ExcluirBloqClick(Sender: tObject);
    procedure Bit_AlterarBloqClick(Sender: tObject);
    procedure DbCodBcoKeyPress(Sender: tObject; var Key: Char);
    procedure Bit_CancelarDuplClick(Sender: tObject);
    procedure ChkDuplClick(Sender: tObject);
    procedure ChkNfsClick(Sender: tObject);
    procedure BtnSairClick(Sender: tObject);
    procedure BtnTransfClick(Sender: tObject);
    procedure Button1Click(Sender: tObject);
    procedure DBEdtPAKeyPress(Sender: tObject; var Key: Char);
    procedure DBEdtPAExit(Sender: tObject);
    procedure DBEdtPIExit(Sender: tObject);
    procedure DBEDIT_COD_CARTEIRAExit(Sender: tObject);
    procedure DBEDIT_COD_CARTEIRAKeyPress(Sender: tObject; var Key: Char);
    procedure CbxCarteiraChange(Sender: tObject);
    procedure CbxTipoDocChange(Sender: tObject);
    procedure Rad_1Enter(Sender: tObject);
    procedure Rad_2Enter(Sender: tObject);
    procedure Rad_3Enter(Sender: tObject);
    procedure DBNavigator5Click(Sender: tObject; Button: TNavigateBtn);
    procedure Cbx_EmpresaClick(Sender: tObject);
    procedure Edt_EmpresaExit(Sender: tObject);
    procedure Edt_EmpresaKeyPress(Sender: tObject; var Key: Char);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure Bit_novoClick(Sender: tObject);
    procedure Cbx_EmpresaExit(Sender: tObject);
    procedure BitBtnAlterarCheqClick(Sender: tObject);
    procedure BitBtnExcluirCheqClick(Sender: tObject);
    procedure BitBtnGravarCheqClick(Sender: tObject);
    procedure BitBtnSairCheqClick(Sender: tObject);
    procedure BitBtnCancelarCheqClick(Sender: tObject);
    procedure CCodBancoExit(Sender: tObject);
    procedure CbBancoChExit(Sender: tObject);
    procedure DBEdit16Exit(Sender: tObject);
    procedure DBEdit17Exit(Sender: tObject);
    procedure DBEdit18Exit(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure CbBancoChClick(Sender: tObject);
    procedure BitNovoCheqClick(Sender: tObject);
    procedure Rad_Lote_AutomaticoClick(Sender: tObject);
    procedure CbAlmoxarifadoEntradaPropertiesChange(Sender: tObject);
    procedure cxTreeView1Change(Sender: tObject; Node: TTreeNode);
    procedure sbtnGetCertClick(Sender: tObject);
    procedure dbedtPMT_CERTIFICADO_DIGITALChange(Sender: tObject);
    procedure FormDestroy(Sender: tObject);
    procedure DBCheckBox42Click(Sender: tObject);
    procedure btScriptClick(Sender: tObject);
    procedure DBCheckBox44Exit(Sender: tObject);
    procedure ckPMT_VALOR_KITClick(Sender: TObject);
    procedure DBCkBoxComis_ProdClick(Sender: TObject);
    procedure DBCheckBox25Click(Sender: TObject);
    procedure DBCheckBox53Click(Sender: TObject);
    procedure ckPMT_DIGITACAO_GRID_VENDASClick(Sender: TObject);
    procedure ckPMT_VENDA_GRADEClick(Sender: TObject);
    procedure EdClienteCodigoExit(Sender: TObject);
    procedure EdClienteCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edClienteButtonClick(Sender: TObject);
    procedure edClienteSelect(Sender: TObject);
    procedure rbLoteAutomaticoClick(Sender: TObject);
    procedure rbLoteManualClick(Sender: TObject);
    procedure dbOSDataEmissaoChange(Sender: TObject);
    procedure dbHabilitaMedidaClick(Sender: TObject);
    procedure btAbrePastaOPClick(Sender: TObject);
    procedure dbrgLancaCCVerbaChange(Sender: TObject);
    procedure cbHabilitaOrcamentoParaClienteSemCadastroClick(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
  private
         PathNewRel :STRING;
         bIncluir     : Boolean;
         fAlterou:boolean;
    procedure GravarNFs;
    procedure GravarDupli;
    procedure GravarEtiq;
    procedure GravarBloq;
    procedure MostraBloq;
    procedure MostrarEtiq;
    procedure MostrarDupli;
    procedure MostrarNFs;
    procedure VerificaEdicaoDupl;
    procedure VerificaEdicaoNota;
    procedure VerificaEdicaoEtiq;
    procedure VerificaEdicaoBloq;
    procedure EscondeBotoes;
    procedure MostrarBotoes;
    procedure VerificaEdicao;
    procedure LimpaDupl;
    procedure LimpaEtiq;
    procedure LimpaNota;
    procedure LimpaBloq;
    procedure BuscaBco;
    procedure ChecarAtivo;
    procedure MostraDados;
    procedure MostraDadosGlobal;
    Procedure LimpaCheque;
    Procedure ExcluirParamCheque;
    Procedure HabilitaCheque;
    Procedure DesabilitaCheque;
    Procedure PreencheBancoCh;
    Procedure MostraParametroCh(const sCodBanco:String);
    Procedure AbrirParametroCheque;
    procedure Habilita_Objetos_Cheque;
    procedure Desabilita_Objetos_Cheque;
      public
    { Public declarations }
    procedure DesabilitaBotao;
    procedure HabilitaBotao;
    procedure DesBotoesNota;
    procedure HabBotoesNota;
    procedure DesBotoesEtiq;
    procedure HabBotoesEtiq;
    procedure DesBotoesDupl;
    procedure HabBotoesDupl;
    procedure HabBotoesBloq;
    procedure DesBotoesBloq;
    procedure BotoesAcesso;

  end;

var
  FormParametros: TFormParametros;

implementation

uses Uteis, InicioDB, DmSysCfg, DataCad1, Men0001, DataCad, Prmd0002, PesquisaTabelasForm, PesquisaClientesForm;

{$R *.DFM}

procedure TFormParametros.FormShow(Sender: tObject);
var
  i: Integer;
begin
    inherited;
    try
      DataCadastros1.CdsParametros.Close;
      DataCadastros1.CdsParametros.CommandText := 'SELECT P1.* FROM PRMT0001 P1  ORDER BY P1.EMP_CODIGO';
      DataCadastros1.CdsParametros.Open;
      DataCadastros1.CdsParametros.Locate('EMP_CODIGO', DBInicio.Empresa.EMP_CODIGO, []);
      cbFormaPagamento.idRetorno := DataCadastros1.CdsParametrosPMT_LANCA_CC_VERBA_FPG_REGISTRO.AsString;
      if DataCadastros1.CdsParametros.IsEmpty then
         begin
             DesabilitaBotao;
         end
      else
         begin
             HabilitaBotao;
         end;
      {Carrega a Combo Empresa}
      SqlCdsEmpresa.Close;
      SqlCdsEmpresa.CommandText := 'Select E1.EMP_CODIGO,E1.EMP_RAZAO from EMP0000 E1 order by E1.EMP_RAZAO';
      SqlCdsEmpresa.Open;
      SqlCdsEmpresa.First;
      Cbx_Empresa.Clear;
      Cbx_Empresa.Items.Add('');
      while not SqlCdsEmpresa.eof do
       begin
           Cbx_Empresa.Items.Add(SqlCdsEmpresaEMP_RAZAO.AsString);
           SqlCdsEmpresa.Next;
       end;
       Edt_Empresa.Text := dbinicio.empresa.emp_codigo;
       Edt_EmpresaExit(Sender);
      // Cbx_Empresa.ItemIndex := 0;
      MostraDados;
      MostraDadosGlobal;
    except on E:EDataBaseError do
      uteis.erro  (Pchar('Impossivel acessar a tabela de Parametros!'+e.Message));
    end;

    try
      SqlCdsBco.Close;
      SqlCdsBco.CommandText := 'SELECT BAN_CODIGO,BAN_RAZAO,EMP_CODIGO FROM BAN0000 ORDER BY BAN_RAZAO';
      SqlCdsBco.Open;
      CbxBanco.Clear;
      while not SqlCdsBco.Eof do
        begin
            CbxBanco.Items.Add(SqlCdsBcoBAN_RAZAO.AsString);
            SqlCdsBco.Next;
        end;
      CbxBanco.ItemIndex := 0;
    except on E:EdataBaseError do
        uteis.erro  (pchar('Erro ao Abir a Tabela BAN0000 '+E.Message));
    end;
    SqlCdsAlmoxarifadoGeral.Open;

    DataCadastros1.CdsParametros.CancelUpdates;
    MostraDadosGlobal;
    HabilitaBotao;

    screen.Cursor := crDefault;                   
    PageControl1.ActivePageIndex := 0;

   for i:= 0 to rgMetodoCalculo.Controlcount-1 do
     with rgMetodoCalculo.Controls[i] as TRadiobutton do
     begin
       case i of
        0: Hint := 'Custo Unitário * (%Lucro + %Despesas + %Imposto)';
        1: Hint := 'Custo Unitário';
       end;
       ShowHint := true;
     end;

    cxTreeView1.SetFocus;

    dbPMT_GRADE_MEDIDA1.CharCase := ecNormal;
    dbPMT_GRADE_MEDIDA2.CharCase := ecNormal;
    dbPMT_GRADE_MEDIDA3.CharCase := ecNormal;
end;

procedure TFormParametros.FormClose(Sender: tObject; var Action: TCloseAction);
begin

     inherited;
      DataCadastros1.CdsParametros.Locate('EMP_CODIGO',dbInicio.Empresa.EMP_CODIGO,[]);
      FrmMenu.PathNewFotos       := DataCadastros1.CdsParametrosPMT_PATHFOTO.AsString;



      FrmMenu.wPmtOPsProduzir    := DataCadastros1.CdsParametrosPMT_OPSPRODUZIR.AsString;
      FrmMenu.wBtnDuplica        := DataCadastros1.CdsParametrosPMT_BTN_DUPLICA.AsString;
      FrmMenu.wBtnAlt_IPI        := DataCadastros1.CdsParametrosPMT_BTN_ALT_IPI_ENF.AsString;
      FrmMenu.wBaixaEstqAlmox    := DataCadastros1.CdsParametrosPMT_BAIXA_EST_AXF.AsString;

      FrmMenu.iCasaDecimaisOcp   := DataCadastros1.CdsParametrosPMT_QTDE_DEC_OCP.AsInteger;

      FrmMenu.wServicoCliente    := DataCadastros1.CdsParametrosPMT_PRESTACAO_SERVICO.AsString;
      FrmMenu.sGerarNumLote      := DataCadastros1.CdsParametrosPMT_GERAR_NUM_LOTE.AsString;
      DmCfg.CdsDupl.Close;
      DmCfg.CdsEtiq.Close;
      DmCfg.CdsNF.Close;
      DataCadastros1.CdsParametros.Close;

      if fAlterou then
        ModalResult := mrOk
      Else
        ModalResult := mrCancel;
end;

procedure TFormParametros.dbrgLancaCCVerbaChange(Sender: TObject);
begin
  inherited;
  cbFormaPagamento.Enabled :=  dbrgLancaCCVerba.ItemIndex = 1;
  if dbrgLancaCCVerba.ItemIndex = 0 then
    cbFormaPagamento.idRetorno := '';
end;

procedure TFormParametros.DesabilitaBotao;
begin
    Bit_Novo.Enabled     := False;
    Bit_Excluir.Enabled  := False;
    Bit_Sair.Enabled     := False;
    Bit_Gravar.Enabled   := True;
    Bit_Cancelar.Enabled := True;
    BotoesAcesso;
end;

procedure TFormParametros.HabilitaBotao;
begin
    Bit_Novo.Enabled     := True;
    Bit_Excluir.Enabled  := True;
    Bit_Sair.Enabled     := True;
    Bit_Gravar.Enabled   := False;
    Bit_Cancelar.Enabled := False;
    BotoesAcesso;
end;

procedure TFormParametros.Bit_SairClick(Sender: tObject);
begin
    self.close;
end;

procedure TFormParametros.TabSheet1Show(Sender: TObject);
begin
  inherited;
  cbInformacoesObrigatoriasParaClienteSemCadastro.Enabled := cbHabilitaOrcamentoParaClienteSemCadastro.Checked;

end;

procedure TFormParametros.TbParametrosBeforeEdit(DataSet: TDataSet);
begin
    DesabilitaBotao;
end;

procedure TFormParametros.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    inherited;
    VerificaEdicao;
    SqlCdsAlmoxarifadoGeral.Close;
end;

procedure TFormParametros.VerificaEdicao;
begin
    // verifica estado da tabela em edicao e inclusao
    screen.cursor :=crHourglass;
    if DataCadastros1.CdsParametros.State in [dsEdit,dsInsert] then
       begin
           if uteis.confirmacao ( 'Deseja salvar alterações ?') = idyes then
              begin
                  DataCadastros1.CdsParametros.ApplyUpdates(0);
                  Habilitabotao;
              end
           else
              begin
                  DataCadastros1.CdsParametros.Cancel;
                  Habilitabotao;
              end;
       end;
    screen.cursor := crDefault;
end;

procedure TFormParametros.MostrarEtiq;
begin
    DbCodigo.Text              := DmCfg.CdsEtiqCET_CODIGO.AsString;
    DbDataEtiq.Date            := DmCfg.CdsEtiqCET_DTCADA.AsDateTime;
    RadCol1.Checked            := IIF(DmCfg.CdsEtiqCET_QTDETIQ.AsString = '1','True','False');
    RadCol2.Checked            := IIF(DmCfg.CdsEtiqCET_QTDETIQ.AsString = '2','True','False');
    RadCol3.Checked            := IIF(DmCfg.CdsEtiqCET_QTDETIQ.AsString = '3','True','False');
    RadImpM.Checked            := IIF(DmCfg.CdsEtiqCET_TPIMP.AsString = 'M','True','False');
    RadImpL.Checked            := IIF(DmCfg.CdsEtiqCET_TPIMP.AsString = 'L','True','False');
    CiniCol1.Text              := DmCfg.CdsEtiqCET_INICOL1.AsString;
    CiniCol2.Text              := DmCfg.CdsEtiqCET_INICOL2.AsString;
    CiniCol3.Text              := DmCfg.CdsEtiqCET_INICOL3.AsString;
    CNumerLinhas.Text          := DmCfg.CdsEtiqCET_LINHAS.AsString;
    ChkCET_Cliente.Checked     := IIF(copy(DmCfg.CdsEtiqCET_CLIENTE.ASSTRING,7,1)='S',cbChecked,cbUnchecked);
    CET_ClienteLn.Text         := copy(DmCfg.CdsEtiqCET_CLIENTE.ASSTRING,1,3);
    CET_ClienteCol.Text        := copy(DmCfg.CdsEtiqCET_CLIENTE.ASSTRING,4,3);
    ChkCET_Endereco.Checked    := IIF(copy(DmCfg.CdsEtiqCET_ENDERECO.ASSTRING,7,1)='S',cbChecked,cbUnchecked);
    CET_EnderecoLn.Text        := copy(DmCfg.CdsEtiqCET_ENDERECO.ASSTRING,1,3);
    CET_EnderecoCol.Text       := copy(DmCfg.CdsEtiqCET_ENDERECO.ASSTRING,4,3);
    ChkCET_Cidade.Checked      := IIF(COPY(DMCFG.CdsEtiqCET_CIDADE.ASSTRING,7,1)='S',cbChecked,cbUnchecked);
    CET_CidadeLn.Text          := copy(DmCfg.CdsEtiqCET_CIDADE.ASSTRING,1,3);
    CET_CidadeCol.Text         := copy(DmCfg.CdsEtiqCET_CIDADE.ASSTRING,4,3);
    ChkCET_UF.Checked          := IIF(COPY(DMCFG.CdsEtiqCET_ESTADO.ASSTRING,7,1)='S',cbChecked,cbUnchecked);
    CET_UFLn .Text             := copy(DmCfg.CdsEtiqCET_ESTADO.ASSTRING,1,3);
    CET_UFCol.Text             := copy(DmCfg.CdsEtiqCET_ESTADO.ASSTRING,4,3);
    ChkCET_Cep.Checked         := IIF(COPY(DMCFG.CdsEtiqCET_CEP.ASSTRING,7,1)='S',cbChecked,cbUnchecked);
    CET_CepLn.Text             := copy(DmCfg.CdsEtiqCET_CEP.ASSTRING,1,3);
    CET_CepCol.Text            := copy(DmCfg.CdsEtiqCET_CEP.ASSTRING,4,3);
    ChkCET_Nota.Checked        := IIF(COPY(DMCFG.CdsEtiqCET_NFISCAL.ASSTRING,7,1)='S',cbChecked,cbUnchecked);
    CET_NotaLn.Text            := copy(DmCfg.CdsEtiqCET_NFISCAL.ASSTRING,1,3);
    CET_NotaCol.Text           := copy(DmCfg.CdsEtiqCET_NFISCAL.ASSTRING,4,3);
    ChkCET_Quantidade.Checked  := IIF(COPY(DMCFG.CdsEtiqCET_QTDE.ASSTRING,7,1)='S',cbChecked,cbUnchecked);
    CET_QuantidadeLn.Text      := copy(DmCfg.CdsEtiqCET_QTDE.ASSTRING,1,3);
    CET_QuantidadeCol.Text     := copy(DmCfg.CdsEtiqCET_QTDE.ASSTRING,4,3);
    ChkCET_Peso.Checked        := IIF(COPY(DMCFG.CdsEtiqCET_PESO.ASSTRING,7,1)='S',cbChecked,cbUnchecked);
    CET_PesoLn.Text            := copy(DmCfg.CdsEtiqCET_PESO.ASSTRING,1,3);
    CET_PesoCol.Text           := copy(DmCfg.CdsEtiqCET_PESO.ASSTRING,4,3);
    ChkCET_CodProd.Checked     := IIF(COPY(DMCFG.CdsEtiqCET_CODPRODUTO.ASSTRING,7,1)='S',cbChecked,cbUnchecked);
    CET_CodProdLn.Text         := copy(DmCfg.CdsEtiqCET_CODPRODUTO.ASSTRING,1,3);
    CET_CodProdCol.Text        := copy(DmCfg.CdsEtiqCET_CODPRODUTO.ASSTRING,4,3);
    ChkCET_Produto.Checked     := IIF(COPY(DMCFG.CdsEtiqCET_PRODUTO.ASSTRING,7,1)='S',cbChecked,cbUnchecked);
    CET_ProdutoLn.text         := copy(DmCfg.CdsEtiqCET_PRODUTO.ASSTRING,1,3);
    CET_ProdutoCol.text        := copy(DmCfg.CdsEtiqCET_PRODUTO.ASSTRING,4,3);
    ChkCET_Transp.Checked      := IIF(COPY(DMCFG.CdsEtiqCET_TRANSPORT.ASSTRING,7,1)='S',cbChecked,cbUnchecked);
    CET_TranspLn.text          := copy(DmCfg.CdsEtiqCET_TRANSPORT.ASSTRING,1,3);
    CET_TranspCol.Text         := copy(DmCfg.CdsEtiqCET_TRANSPORT.ASSTRING,4,3);
    ChkCET_EndTran.Checked     := IIF(COPY(DMCFG.CdsEtiqCET_ENDTRANSP.ASSTRING,7,1)='S',cbChecked,cbUnchecked);
    CET_EndTranLn.text         := copy(DmCfg.CdsEtiqCET_ENDTRANSP.ASSTRING,1,3);
    CET_EndTranCol.Text        := copy(DmCfg.CdsEtiqCET_ENDTRANSP.ASSTRING,4,3);
    ChkCET_CidTran.Checked     := IIF(COPY(DMCFG.CdsEtiqCET_CIDTRANSP.ASSTRING,7,1)='S',cbChecked,cbUnchecked);
    CET_CidTranLn.text         := copy(DmCfg.CdsEtiqCET_CIDTRANSP.ASSTRING,1,3);
    CET_CidTranCol.Text        := copy(DmCfg.CdsEtiqCET_CIDTRANSP.ASSTRING,4,3);
    ChkCET_CepTran.Checked     := IIF(COPY(DMCFG.CdsEtiqCET_CEPTRANSP.ASSTRING,7,1)='S',cbChecked,cbUnchecked);
    CET_CepTranLn.Text         := copy(DmCfg.CdsEtiqCET_CEPTRANSP.ASSTRING,1,3);
    CET_CepTranCol.text        := copy(DmCfg.CdsEtiqCET_CEPTRANSP.ASSTRING,4,3);
    ChkCET_CepTran.Checked     := IIF(COPY(DMCFG.CdsEtiqCET_CEPTRANSP.ASSTRING,7,1)='S',cbChecked,cbUnchecked);
    CET_CepTranLn.text         := copy(DmCfg.CdsEtiqCET_CEPTRANSP.ASSTRING,1,3);
    CET_CepTranCol.Text        := copy(DmCfg.CdsEtiqCET_CEPTRANSP.ASSTRING,4,3);
end;

procedure TFormParametros.MostrarDupli;
begin
    DbCodigoDupl.Text         := StrZero(DmCfg.CdsDuplCdU_CODIGO.AsString,2);
    DBDataDupli.Date          := DMCFG.CdsDuplCdU_DTCADA.AsDateTime;
    ChkDupl.Checked           := IIF(DMCFG.CdsDuplCdU_ATIVO.AsString = 'S','TRUE','FALSE');
    CLinhaDuplicata.Text      := DMCFG.CdsDuplCdU_LINHAS.AsString;
    CboxFonte.ItemIndex       := IIF(DMCFG.CdsDuplCdU_FONTE.AsString = '10',0,1);

    ChkNatOperacaoDp.Checked  := IIF(COPY(DMCFG.CdsDuplCdU_NATUREZA.AsString,7,1)='S',cbChecked,cbUnchecked);
    CNatOperacaoLn.Text       := COPY(DMCFG.CdsDuplCdU_NATUREZA.AsString,1,3);
    CNatOperacaoCol.Text      := COPY(DMCFG.CdsDuplCdU_NATUREZA.AsString,4,3);

    ChkFaturaNuDp.Checked     := IIF(COPY(DMCFG.CdsDuplCdU_FATURA.AsString,7,1)='S',cbChecked,cbUnchecked);
    CFaturaNuLn.Text          := COPY(DMCFG.CdsDuplCdU_FATURA.AsString,1,3);
    CFaturaNuCol.Text         := COPY(DMCFG.CdsDuplCdU_FATURA.AsString,4,3);

    ChkNuOrdemDp.Checked      := IIF(COPY(DMCFG.CdsDuplCdU_NORDEM.AsString,7,1)='S',cbChecked,cbUnchecked);
    CNuOrdemLn.Text           := COPY(DMCFG.CdsDuplCdU_NORDEM.AsString,1,3);
    CNuOrdemCol.Text          := COPY(DMCFG.CdsDuplCdU_NORDEM.AsString,4,3);

    ChkDescontoDp.Checked     := IIF(COPY(DMCFG.CdsDuplCdU_DESCTODE.AsString,7,1)='S',cbChecked,cbUnchecked);
    CdescontoLn.Text          := COPY(DMCFG.CdsDuplCdU_DESCTODE.AsString,1,3);
    CdescontoCol.Text         := COPY(DMCFG.CdsDuplCdU_DESCTODE.AsString,4,3);

    ChkDesctoRsDp.Checked     := IIF(COPY(DMCFG.CdsDuplCdU_DESCTOS.AsString,7,1)='S',cbChecked,cbUnchecked);
    CdesctoRsLn.Text          := COPY(DMCFG.CdsDuplCdU_DESCTOS.AsString,1,3);
    CdesctoRsCol.Text         := COPY(DMCFG.CdsDuplCdU_DESCTOS.AsString,4,3);

    ChkSacadoDp.Checked       := IIF(COPY(DMCFG.CdsDuplCdU_NOMESACADO.AsString,7,1)='S',cbChecked,cbUnchecked);
    CSacadoLn.Text            := COPY(DMCFG.CdsDuplCdU_NOMESACADO.AsString,1,3);
    CSacadoCol.Text           := COPY(DMCFG.CdsDuplCdU_NOMESACADO.AsString,4,3);

    ChkBairroDp.Checked       := IIF(COPY(DMCFG.CdsDuplCdU_BAIRRO.AsString,7,1)='S',cbChecked,cbUnchecked);
    CBairroLn.Text            := COPY(DMCFG.CdsDuplCdU_BAIRRO.AsString,1,3);
    CBairroCol.Text           := COPY(DMCFG.CdsDuplCdU_BAIRRO.AsString,4,3);

    ChkEstadoDp.Checked       := IIF(COPY(DMCFG.CdsDuplCdU_ESTADO.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEstadoLn.Text            := COPY(DMCFG.CdsDuplCdU_ESTADO.AsString,1,3);
    CEstadoCol.Text           := COPY(DMCFG.CdsDuplCdU_ESTADO.AsString,4,3);

    ChkFoneDp.Checked         := IIF(COPY(DMCFG.CdsDuplCdU_FONE.AsString,7,1)='S',cbChecked,cbUnchecked);
    CFoneLn.Text              := COPY(DMCFG.CdsDuplCdU_FONE.AsString,1,3);
    CFoneCol.Text             := COPY(DMCFG.CdsDuplCdU_FONE.AsString,4,3);

    ChkEndCobrancaDp.Checked  := IIF(COPY(DMCFG.CdsDuplCdU_ENDECOBRA.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEndCobrancaLn.Text       := COPY(DMCFG.CdsDuplCdU_ENDECOBRA.AsString,1,3);
    CEndCobrancaCol.Text      := COPY(DMCFG.CdsDuplCdU_ENDECOBRA.AsString,4,3);

    ChkCNPJ_CNPFDp.Checked    := IIF(COPY(DMCFG.CdsDuplCdU_CNPJ.AsString,7,1)='S',cbChecked,cbUnchecked);
    CCNPJ_CNPFLn.Text         := COPY(DMCFG.CdsDuplCdU_CNPJ.AsString,1,3);
    CCNPJ_CNPFcol.Text        := COPY(DMCFG.CdsDuplCdU_CNPJ.AsString,4,3);

    ChkAceiteDp.Checked       := IIF(COPY(DMCFG.CdsDuplCdU_DATACEITE.AsString,7,1)='S',cbChecked,cbUnchecked);
    CAceiteLn.Text            := COPY(DMCFG.CdsDuplCdU_DATACEITE.AsString,1,3);
    CAceiteCol.Text           := COPY(DMCFG.CdsDuplCdU_DATACEITE.AsString,4,3);

    ChkEmissaoDp.Checked      := IIF(COPY(DMCFG.CdsDuplCdU_DTEMISSAO.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEmissaoLn.Text           := COPY(DMCFG.CdsDuplCdU_DTEMISSAO.AsString,1,3);
    CEmissaoCol.Text          := COPY(DMCFG.CdsDuplCdU_DTEMISSAO.AsString,4,3);

    ChkValorDp.Checked        := IIF(COPY(DMCFG.CdsDuplCdU_VALORD.AsString,7,1)='S',cbChecked,cbUnchecked);
    CValorLn.Text             := COPY(DMCFG.CdsDuplCdU_VALORD.AsString,1,3);
    CValorCol.Text            := COPY(DMCFG.CdsDuplCdU_VALORD.AsString,4,3);

    ChkVencimentoDp.Checked   := IIF(COPY(DMCFG.CdsDuplCdU_VENCTO.AsString,7,1)='S',cbChecked,cbUnchecked);
    CVencimentoLn.Text        := COPY(DMCFG.CdsDuplCdU_VENCTO.AsString,1,3);
    CVencimentoCol.Text       := COPY(DMCFG.CdsDuplCdU_VENCTO.AsString,4,3);

    ChkDesctoAteDp.Checked    := IIF(COPY(DMCFG.CdsDuplCdU_DESCTOATE.AsString,7,1)='S',cbChecked,cbUnchecked);
    CdesctoAteLn.Text         := COPY(DMCFG.CdsDuplCdU_DESCTOATE.AsString,1,3);
    CdesctoAteCol.Text        := COPY(DMCFG.CdsDuplCdU_DESCTOATE.AsString,4,3);

    ChkCondEspDp.Checked      := IIF(COPY(DMCFG.CdsDuplCdU_CONDESPECIAL.AsString,7,1)='S',cbChecked,cbUnchecked);
    CCondEspLn.Text           := COPY(DMCFG.CdsDuplCdU_CONDESPECIAL.AsString,1,3);
    CCondEspCol.Text          := COPY(DMCFG.CdsDuplCdU_CONDESPECIAL.AsString,4,3);

    ChkEnderecoDp.Checked     := IIF(COPY(DMCFG.CdsDuplCdU_ENDERECO.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEnderecoLn.Text          := COPY(DMCFG.CdsDuplCdU_ENDERECO.AsString,1,3);
    CEnderecoCol.Text         := COPY(DMCFG.CdsDuplCdU_ENDERECO.AsString,4,3);

    ChkMunicipioDp.Checked    := IIF(COPY(DMCFG.CdsDuplCdU_CIDADE.AsString,6,1)='S',cbChecked,cbUnchecked);
    CMunicipioLn.Text         := COPY(DMCFG.CdsDuplCdU_CIDADE.AsString,1,3);
    CMunicipioCol.Text        := COPY(DMCFG.CdsDuplCdU_CIDADE.AsString,4,3);

    ChkCepDp.Checked          := IIF(COPY(DMCFG.CdsDuplCdU_CEP.AsString,7,1)='S',cbChecked,cbUnchecked);
    CCepLn.Text               := COPY(DMCFG.CdsDuplCdU_CEP.AsString,1,3);
    CCepCol.Text              := COPY(DMCFG.CdsDuplCdU_CEP.AsString,4,3);

    ChkPracaDp.Checked        := IIF(COPY(DMCFG.CdsDuplCdU_PRACA.AsString,7,1)='S',cbChecked,cbUnchecked);
    CPracaLn.Text             := COPY(DMCFG.CdsDuplCdU_PRACA.AsString,1,3);
    CPracaCol.Text            := COPY(DMCFG.CdsDuplCdU_PRACA.AsString,4,3);

    ChkCepPracaDp.Checked     := IIF(COPY(DMCFG.CdsDuplCdU_CEPCOBRA.AsString,7,1)='S',cbChecked,cbUnchecked);
    CCepPracaLn.Text          := COPY(DMCFG.CdsDuplCdU_CEPCOBRA.AsString,1,3);
    CCepPracaCol.Text         := COPY(DMCFG.CdsDuplCdU_CEPCOBRA.AsString,4,3);

    ChkInscricaoDp.Checked    := IIF(COPY(DMCFG.CdsDuplCdU_INSCRESTADUAL.AsString,7,1)='S',cbChecked,cbUnchecked);
    CInscricaoLn.Text         := COPY(DMCFG.CdsDuplCdU_INSCRESTADUAL.AsString,1,3);
    CInscricaoCol.Text        := COPY(DMCFG.CdsDuplCdU_INSCRESTADUAL.AsString,4,3);

    ChkValorExtensoDp.Checked := IIF(COPY(DMCFG.CdsDuplCdU_VLEXTENSO.AsString,7,1)='S',cbChecked,cbUnchecked);
    CValorExtensoLn.Text      := COPY(DMCFG.CdsDuplCdU_VLEXTENSO.AsString,1,3);
    CValorExtensoCol.Text     := COPY(DMCFG.CdsDuplCdU_VLEXTENSO.AsString,4,3);

    ChkObs.Checked            := IIF(COPY(DMCFG.CdsDuplCdU_OBS.AsString,7,1)='S',cbChecked,cbUnchecked);
    CObsLn.Text               := COPY(DMCFG.CdsDuplCdU_OBS.AsString,1,3);
    CObsCol.Text              := COPY(DMCFG.CdsDuplCdU_OBS.AsString,4,3);
end;

procedure TFormParametros.MostrarNFs;
begin
    DBCodigoNota.Text         := StrZero(DMCFG.CdsNFCNF_CODIGO.AsString,2);
    DBDataNFs.Date            := DMCFG.CdsNFCNF_DTCADA.AsDateTime;
    ChkNfs.Checked            := IIF(DMCFG.CdsNFCNF_ATIVO.AsString = 'S','TRUE','FALSE');
    ClinhaNota.Text           := DMCFG.CdsNFCNF_LINHANOTA.AsString;
    RadFonte.ItemIndex        := IIF(DMCFG.CdsNFCNF_FONTE.AsString = '17',0,1);
    RadNota.ItemIndex         := IIF(DMCFG.CdsNFCNF_SERIE.AsString = 'U' ,0,1);
    ChkSaida.Checked          := IIF(COPY(DMCFG.CdsNFCNF_XSAIDA.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdSaidaLn.Text           := COPY(DMCFG.CdsNFCNF_XSAIDA.AsString,1,3);
    CEdSaidaCol.Text          := COPY(DMCFG.CdsNFCNF_XSAIDA.AsString,4,3);
    ChkEntrada.Checked        := IIF(COPY(DMCFG.CdsNFCNF_XENTRADA.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdEntradaLn.Text         := COPY(DMCFG.CdsNFCNF_XENTRADA.AsString,1,3);
    CEdEntradaCol.Text        := COPY(DMCFG.CdsNFCNF_XENTRADA.AsString,4,3);
    ChkNumNota.Checked        := IIF(COPY(DMCFG.CdsNFCNF_NUMERONF.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdNumNotaLn.Text         := COPY(DMCFG.CdsNFCNF_NUMERONF.AsString,1,3);
    CEdNumNotaCol.Text        := COPY(DMCFG.CdsNFCNF_NUMERONF.AsString,4,3);
    ChkNatOpe.Checked         := IIF(COPY(DMCFG.CdsNFCNF_NATUREZA.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdNatOpeLn.Text          := COPY(DMCFG.CdsNFCNF_NATUREZA.AsString,1,3);
    CEdNatOpeCol.Text         := COPY(DMCFG.CdsNFCNF_NATUREZA.AsString,4,3);
    ChkCFOP.Checked           := IIF(COPY(DMCFG.CdsNFCNF_CFOP.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdCFOPLn.Text            := COPY(DMCFG.CdsNFCNF_CFOP.AsString,1,3);
    CEdCFOPCol.Text           := COPY(DMCFG.CdsNFCNF_CFOP.AsString,4,3);
    ChkInscrTributa.Checked   := IIF(COPY(DMCFG.CdsNFCNF_INSCSUBT.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdInscSubstLn.Text       := COPY(DMCFG.CdsNFCNF_INSCSUBT.AsString,1,3);
    CEdInscSubstCol.Text      := COPY(DMCFG.CdsNFCNF_INSCSUBT.AsString,4,3);
    ChkRazao.Checked          := IIF(COPY(DMCFG.CdsNFCNF_RAZAO.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdRazaoLn.Text           := COPY(DMCFG.CdsNFCNF_RAZAO.AsString,1,3);
    CEdRazaoCol.Text          := COPY(DMCFG.CdsNFCNF_RAZAO.AsString,4,3);
    ChkCNPJ_CNPF.Checked      := IIF(COPY(DMCFG.CdsNFCNF_CNPJ.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdCNPJ_CNPFLn.Text       := COPY(DMCFG.CdsNFCNF_CNPJ.AsString,1,3);
    CEdCNPJ_CNPFCol.Text      := COPY(DMCFG.CdsNFCNF_CNPJ.AsString,4,3);
    ChkDataEmiss.Checked      := IIF(COPY(DMCFG.CdsNFCNF_DTEMISSAO.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdDataEmissLn.Text       := COPY(DMCFG.CdsNFCNF_DTEMISSAO.AsString,1,3);
    CEdDataEmissCol.Text      := COPY(DMCFG.CdsNFCNF_DTEMISSAO.AsString,4,3);
    ChkEndereco.Checked       := IIF(COPY(DMCFG.CdsNFCNF_ENDERECO.AsString,7,1)='S',cbChecked,cbUnChecked);
    CEdEnderecoLn.Text        := COPY(DMCFG.CdsNFCNF_ENDERECO.AsString,1,3);
    CEdEnderecoCol.Text       := COPY(DMCFG.CdsNFCNF_ENDERECO.AsString,4,3);
    ChkBairro.Checked         := IIF(COPY(DMCFG.CdsNFCNF_BAIRRO.AsString,7,1)='S',CbChecked,CbUnchecked);
    CEdBairroLn.Text          := COPY(DMCFG.CdsNFCNF_BAIRRO.AsString,1,3);
    CEdBairroCol.Text         := COPY(DMCFG.CdsNFCNF_BAIRRO.AsString,4,3);
    ChkCEP.Checked            := IIF(COPY(DMCFG.CdsNFCNF_CEP.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdCEPLn.Text             := COPY(DMCFG.CdsNFCNF_CEP.AsString,1,3);
    CEdCEPCol.Text            := COPY(DMCFG.CdsNFCNF_CEP.AsString,4,3);
    ChkDataSaida.Checked      := IIF(COPY(DMCFG.CdsNFCNF_DTSAIDA.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdDataSaidaLn.Text       := COPY(DMCFG.CdsNFCNF_DTSAIDA.AsString,1,3);
    CEdDataSaidaCol.Text      := COPY(DMCFG.CdsNFCNF_DTSAIDA.AsString,4,3);
    ChkCidade.Checked         := IIF(COPY(DMCFG.CdsNFCNF_CIDADE.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdCidadeLn.Text          := COPY(DMCFG.CdsNFCNF_CIDADE.AsString,1,3);
    CEdCidadeCol.Text         := COPY(DMCFG.CdsNFCNF_CIDADE.AsString,4,3);
    ChkFone.Checked           := IIF(COPY(DMCFG.CdsNFCNF_FONE.AsString,7,1)='S',cbChecked,Cbunchecked);
    CEdFoneLn.Text            := COPY(DMCFG.CdsNFCNF_FONE.AsString,1,3);
    CEdFoneCol.Text           := COPY(DMCFG.CdsNFCNF_FONE.AsString,4,3);
    ChkEstado.Checked         := IIF(COPY(DMCFG.CdsNFCNF_ESTADO.AsString,7,1)='S',cbChecked,Cbunchecked);
    CEdEstadoLn.Text          := COPY(DMCFG.CdsNFCNF_ESTADO.AsString,1,3);
    CEdEstadoCol.Text         := COPY(DMCFG.CdsNFCNF_ESTADO.AsString,4,3);
    ChkInscEst.Checked        := IIF(COPY(DMCFG.CdsNFCNF_INSCRESTADUAL.AsString,7,1)='S',cbChecked,Cbunchecked);
    CEdInsc_EstaLn.Text       := COPY(DMCFG.CdsNFCNF_INSCRESTADUAL.AsString,1,3);
    CEdInsc_EstaCol.Text      := COPY(DMCFG.CdsNFCNF_INSCRESTADUAL.AsString,4,3);
    ChkHoraSaida.Checked      := IIF(COPY(DMCFG.CdsNFCNF_HORASAIDA.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdHoraSaidaLn.Text       := COPY(DMCFG.CdsNFCNF_HORASAIDA.AsString,1,3);
    CEdHoraSaidaCol.Text      := COPY(DMCFG.CdsNFCNF_HORASAIDA.AsString,4,3);
    ChkFatura1.Checked        := IIF(COPY(DMCFG.CdsNFCNF_FATURA1.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdFatura1Ln.Text         := COPY(DMCFG.CdsNFCNF_FATURA1.AsString,1,3);
    CEdFatura1Col.Text        := COPY(DMCFG.CdsNFCNF_FATURA1.AsString,4,3);
    ChkFatura2.Checked        := IIF(COPY(DMCFG.CdsNFCNF_FATURA2.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdFatura2Ln.Text         := COPY(DMCFG.CdsNFCNF_FATURA2.AsString,1,3);
    CEdFatura2Col.Text        := COPY(DMCFG.CdsNFCNF_FATURA2.AsString,4,3);
    ChkFatura3.Checked        := IIF(COPY(DMCFG.CdsNFCNF_FATURA3.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdFatura3Ln.Text         := COPY(DMCFG.CdsNFCNF_FATURA3.AsString,1,3);
    CEdFatura3Col.Text        := COPY(DMCFG.CdsNFCNF_FATURA3.AsString,4,3);
    ChkFatura4.Checked        := IIF(COPY(DMCFG.CdsNFCNF_FATURA4.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdFatura4Ln.Text         := COPY(DMCFG.CdsNFCNF_FATURA4.AsString,1,3);
    CEdFatura4Col.Text        := COPY(DMCFG.CdsNFCNF_FATURA4.AsString,4,3);
    ChkFatura5.Checked        := IIF(COPY(DMCFG.CdsNFCNF_FATURA5.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdFatura5Ln.Text         := COPY(DMCFG.CdsNFCNF_FATURA5.AsString,1,3);
    CEdFatura5Col.Text        := COPY(DMCFG.CdsNFCNF_FATURA5.AsString,4,3);
    ChkFatura6.Checked        := IIF(COPY(DMCFG.CdsNFCNF_FATURA6.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdFatura6Ln.Text         := COPY(DMCFG.CdsNFCNF_FATURA6.AsString,1,3);
    CEdFatura6Col.Text        := COPY(DMCFG.CdsNFCNF_FATURA6.AsString,4,3);
    ChkVenc1.Checked          := IIF(COPY(DMCFG.CdsNFCNF_VENCTO1.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdVenc1Ln.Text           := COPY(DMCFG.CdsNFCNF_VENCTO1.AsString,1,3);
    CEdVenc1Col.Text          := COPY(DMCFG.CdsNFCNF_VENCTO1.AsString,4,3);
    ChkVenc2.Checked          := IIF(COPY(DMCFG.CdsNFCNF_VENCTO2.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdVenc2Ln.Text           := COPY(DMCFG.CdsNFCNF_VENCTO2.AsString,1,3);
    CEdVenc2Col.Text          := COPY(DMCFG.CdsNFCNF_VENCTO2.AsString,4,3);
    ChkVenc3.Checked          := IIF(COPY(DMCFG.CdsNFCNF_VENCTO3.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdVenc3Ln.Text           := COPY(DMCFG.CdsNFCNF_VENCTO3.AsString,1,3);
    CEdVenc3Col.Text          := COPY(DMCFG.CdsNFCNF_VENCTO3.AsString,4,3);
    ChkVenc4.Checked          := IIF(COPY(DMCFG.CdsNFCNF_VENCTO4.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdVenc4Ln.Text           := COPY(DMCFG.CdsNFCNF_VENCTO4.AsString,1,3);
    CEdVenc4Col.Text          := COPY(DMCFG.CdsNFCNF_VENCTO4.AsString,4,3);
    ChkVenc5.Checked          := IIF(COPY(DMCFG.CdsNFCNF_VENCTO5.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdVenc5Ln.Text           := COPY(DMCFG.CdsNFCNF_VENCTO5.AsString,1,3);
    CEdVenc5Col.Text          := COPY(DMCFG.CdsNFCNF_VENCTO5.AsString,4,3);
    ChkVenc6.Checked          := IIF(COPY(DMCFG.CdsNFCNF_VENCTO6.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdVenc6Ln.Text           := COPY(DMCFG.CdsNFCNF_VENCTO6.AsString,1,3);
    CEdVenc6Col.Text          := COPY(DMCFG.CdsNFCNF_VENCTO6.AsString,4,3);
    ChkValor1.Checked         := IIF(COPY(DMCFG.CdsNFCNF_VALOR1.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdValor1Ln.Text          := COPY(DMCFG.CdsNFCNF_VALOR1.AsString,1,3);
    CEdValor1Col.Text         := COPY(DMCFG.CdsNFCNF_VALOR1.AsString,4,3);
    ChkValor2.Checked         := IIF(COPY(DMCFG.CdsNFCNF_VALOR2.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdValor2Ln.Text          := COPY(DMCFG.CdsNFCNF_VALOR2.AsString,1,3);
    CEdValor2Col.Text         := COPY(DMCFG.CdsNFCNF_VALOR2.AsString,4,3);
    ChkValor3.Checked         := IIF(COPY(DMCFG.CdsNFCNF_VALOR3.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdValor3Ln.Text          := COPY(DMCFG.CdsNFCNF_VALOR3.AsString,1,3);
    CEdValor3Col.Text         := COPY(DMCFG.CdsNFCNF_VALOR3.AsString,4,3);
    ChkValor4.Checked         := IIF(COPY(DMCFG.CdsNFCNF_VALOR4.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdValor4Ln.Text          := COPY(DMCFG.CdsNFCNF_VALOR4.AsString,1,3);
    CEdValor4Col.Text         := COPY(DMCFG.CdsNFCNF_VALOR4.AsString,4,3);
    ChkValor5.Checked         := IIF(COPY(DMCFG.CdsNFCNF_VALOR5.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdValor5Ln.Text          := COPY(DMCFG.CdsNFCNF_VALOR5.AsString,1,3);
    CEdValor5Col.Text         := COPY(DMCFG.CdsNFCNF_VALOR5.AsString,4,3);
    ChkValor6.Checked         := IIF(COPY(DMCFG.CdsNFCNF_VALOR6.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdValor6Ln.Text          := COPY(DMCFG.CdsNFCNF_VALOR6.AsString,1,3);
    CEdValor6Col.Text         := COPY(DMCFG.CdsNFCNF_VALOR6.AsString,4,3);
    ChkProduto.Checked        := IIF(COPY(DMCFG.CdsNFCNF_CODPRODUTO.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdProdutoLn.Text         := COPY(DMCFG.CdsNFCNF_CODPRODUTO.AsString,1,3);
    CEdProdutoCol.Text        := COPY(DMCFG.CdsNFCNF_CODPRODUTO.AsString,4,3);
    ChkProdutoDesc.Checked    := IIF(COPY(DMCFG.CdsNFCNF_DESPRODUTO.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdProdutoDescLn.Text     := COPY(DMCFG.CdsNFCNF_DESPRODUTO.AsString,1,3);
    CEdProdutoDescCol.Text    := COPY(DMCFG.CdsNFCNF_DESPRODUTO.AsString,4,3);
    ChkCF.Checked             := IIF(COPY(DMCFG.CdsNFCNF_CFCOD.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdCFLn.Text              := COPY(DMCFG.CdsNFCNF_CFCOD.AsString,1,3);
    CEdCFCol.Text             := COPY(DMCFG.CdsNFCNF_CFCOD.AsString,4,3);
    ChkCFapelido.Checked      := IIF(COPY(DMCFG.CdsNFCNF_CFAPEL.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdCFapelidoLn.Text       := COPY(DMCFG.CdsNFCNF_CFAPEL.AsString,1,3);
    CEdCFapelidoCol.Text      := COPY(DMCFG.CdsNFCNF_CFAPEL.AsString,4,3);
    ChkST.Checked             := IIF(COPY(DMCFG.CdsNFCNF_ST.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdSTLn.Text              := COPY(DMCFG.CdsNFCNF_ST.AsString,1,3);
    CEdSTCol.Text             := COPY(DMCFG.CdsNFCNF_ST.AsString,4,3);
    ChkUnidade.Checked        := IIF(COPY(DMCFG.CdsNFCNF_UNIDADE.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdUnidadeLn.Text         := COPY(DMCFG.CdsNFCNF_UNIDADE.AsString,1,3);
    CEdUnidadeCol.Text        := COPY(DMCFG.CdsNFCNF_UNIDADE.AsString,4,3);
    ChkQtde.Checked           := IIF(COPY(DMCFG.CdsNFCNF_QTDE.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdQuantidadeLn.Text      := COPY(DMCFG.CdsNFCNF_QTDE.AsString,1,3);
    CEdQuantidadeCol.Text     := COPY(DMCFG.CdsNFCNF_QTDE.AsString,4,3);
    ChkPrecoUnit.Checked      := IIF(COPY(DMCFG.CdsNFCNF_PRECOUNIT.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdPrecoUnitLn.Text       := COPY(DMCFG.CdsNFCNF_PRECOUNIT.AsString,1,3);
    CEdPrecoUnitCol.Text      := COPY(DMCFG.CdsNFCNF_PRECOUNIT.AsString,4,3);
    ChkPrecoTotal.Checked     := IIF(COPY(DMCFG.CdsNFCNF_PRECOTOTAL.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdPrecoTotalLn.Text      := COPY(DMCFG.CdsNFCNF_PRECOTOTAL.AsString,1,3);
    CEdPrecoTotalCol.Text     := COPY(DMCFG.CdsNFCNF_PRECOTOTAL.AsString,4,3);
    ChkAliqIcms.Checked       := IIF(COPY(DMCFG.CdsNFCNF_ALIQICMS.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdAliqICMSLn.Text        := COPY(DMCFG.CdsNFCNF_ALIQICMS.AsString,1,3);
    CEdAliqICMSCol.Text       := COPY(DMCFG.CdsNFCNF_ALIQICMS.AsString,4,3);
    ChkAliqIPI.Checked        := IIF(COPY(DMCFG.CdsNFCNF_ALIQIPI.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdAliqIPILn.Text         := COPY(DMCFG.CdsNFCNF_ALIQIPI.AsString,1,3);
    CEdAliqIPICol.Text        := COPY(DMCFG.CdsNFCNF_ALIQIPI.AsString,4,3);
    ChkValorIPI.Checked       := IIF(COPY(DMCFG.CdsNFCNF_VALORIPI.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdValorIPILn.Text        := COPY(DMCFG.CdsNFCNF_VALORIPI.AsString,1,3);
    CEdValorIPICol.Text       := COPY(DMCFG.CdsNFCNF_VALORIPI.AsString,4,3);
    ChkMens1.Checked          := IIF(COPY(DMCFG.CdsNFCNF_MENSAGE1.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdMens1Ln.Text           := COPY(DMCFG.CdsNFCNF_MENSAGE1.AsString,1,3);
    CEdMens1Col.Text          := COPY(DMCFG.CdsNFCNF_MENSAGE1.AsString,4,3);
    ChkMens2.Checked          := IIF(COPY(DMCFG.CdsNFCNF_MENSAGE2.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdMens2Ln.Text           := COPY(DMCFG.CdsNFCNF_MENSAGE2.AsString,1,3);
    CEdMens2Col.Text          := COPY(DMCFG.CdsNFCNF_MENSAGE2.AsString,4,3);
//    ChkMenPadrao.Checked      := IIF(COPY(DMCFG.CdsNFCNF_MENSAPADRAO1.AsString,7,1)='S',cbChecked,cbUnchecked);
//    CEdMenPadrao1Ln.Text      := COPY(DMCFG.CdsNFCNF_MENSAPADRAO1.AsString,1,3);
//    CEdMenPadrao1Col.Text     := COPY(DMCFG.CdsNFCNF_MENSAPADRAO1.AsString,4,3);
    ChkCompDesc.Checked       := IIF(COPY(DMCFG.CdsNFCNF_COMPDESCRI.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdCompDescLn.Text        := COPY(DMCFG.CdsNFCNF_COMPDESCRI.AsString,1,3);
    CEdCompDescCol.Text       := COPY(DMCFG.CdsNFCNF_COMPDESCRI.AsString,4,3);
    ChkBasICMS.Checked        := IIF(COPY(DMCFG.CdsNFCNF_BASEICMS.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdBasICMSLn.Text         := COPY(DMCFG.CdsNFCNF_BASEICMS.AsString,1,3);
    CEdBasICMSCol.Text        := COPY(DMCFG.CdsNFCNF_BASEICMS.AsString,4,3);
    ChkValICMS.Checked        := IIF(COPY(DMCFG.CdsNFCNF_VLICMS.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdValorICMSLn.Text       := COPY(DMCFG.CdsNFCNF_VLICMS.AsString,1,3);
    CEdValorICMSCol.Text      := COPY(DMCFG.CdsNFCNF_VLICMS.AsString,4,3);
    ChkSubst.Checked          := IIF(COPY(DMCFG.CdsNFCNF_BASESUBTRI.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdBasSubstLn.Text        := COPY(DMCFG.CdsNFCNF_BASESUBTRI.AsString,1,3);
    CEdBasSubstCol.Text       := COPY(DMCFG.CdsNFCNF_BASESUBTRI.AsString,4,3);
    ChkValSubst.Checked       := IIF(COPY(DMCFG.CdsNFCNF_VLBASESUBTRI.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdValorSubstLn.Text      := COPY(DMCFG.CdsNFCNF_VLBASESUBTRI.AsString,1,3);
    CEdValorSubstCol.Text     := COPY(DMCFG.CdsNFCNF_VLBASESUBTRI.AsString,4,3);
    ChkTotProd.Checked        := IIF(COPY(DMCFG.CdsNFCNF_VLTOTPRODU.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdValorTotProdLn.Text    := COPY(DMCFG.CdsNFCNF_VLTOTPRODU.AsString,1,3);
    CEdValorTotProdCol.Text   := COPY(DMCFG.CdsNFCNF_VLTOTPRODU.AsString,4,3);
    ChkFrete.Checked          := IIF(COPY(DMCFG.CdsNFCNF_VLFRETE.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdValorFretLn.Text       := COPY(DMCFG.CdsNFCNF_VLFRETE.AsString,1,3);
    CEdValorFretCol.Text      := COPY(DMCFG.CdsNFCNF_VLFRETE.AsString,4,3);
    ChkValoSegu.Checked       := IIF(COPY(DMCFG.CdsNFCNF_VLSEGURO.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdValorSeguLn.Text       := COPY(DMCFG.CdsNFCNF_VLSEGURO.AsString,1,3);
    CEdValorSeguCol.Text      := COPY(DMCFG.CdsNFCNF_VLSEGURO.AsString,4,3);
    ChkDespAcess.Checked      := IIF(COPY(DMCFG.CdsNFCNF_DESPACESSO.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdDespAceLn.Text         := COPY(DMCFG.CdsNFCNF_DESPACESSO.AsString,1,3);
    CEdDespAceCol.Text        := COPY(DMCFG.CdsNFCNF_DESPACESSO.AsString,4,3);
    ChkTotIPI.Checked         := IIF(COPY(DMCFG.CdsNFCNF_VLTOTIPI.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdTotIPILn.Text          := COPY(DMCFG.CdsNFCNF_VLTOTIPI.AsString,1,3);
    CEdTotIPICol.Text         := COPY(DMCFG.CdsNFCNF_VLTOTIPI.AsString,4,3);
    ChkTotNota.Checked        := IIF(COPY(DMCFG.CdsNFCNF_VLTOTNOTA.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdValorTotalLn.Text      := COPY(DMCFG.CdsNFCNF_VLTOTNOTA.AsString,1,3);
    CEdValorTotalCol.Text     := COPY(DMCFG.CdsNFCNF_VLTOTNOTA.AsString,4,3);
    ChkTransp.Checked         := IIF(COPY(DMCFG.CdsNFCNF_TRANSP.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdTranspLn.Text          := COPY(DMCFG.CdsNFCNF_TRANSP.AsString,1,3);
    CEdTranspCol.Text         := COPY(DMCFG.CdsNFCNF_TRANSP.AsString,4,3);
    ChkFretePorCot.Checked    := IIF(COPY(DMCFG.CdsNFCNF_FRETEPORCONTA.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdFretPorCotLn.Text      := COPY(DMCFG.CdsNFCNF_FRETEPORCONTA.AsString,1,3);
    CEdFretPorCotCol.Text     := COPY(DMCFG.CdsNFCNF_FRETEPORCONTA.AsString,4,3);
    ChkPlacaVeic.Checked      := IIF(COPY(DMCFG.CdsNFCNF_PLACAVEICULO.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdPlacaVeicLn.Text       := COPY(DMCFG.CdsNFCNF_PLACAVEICULO.AsString,1,3);
    CEdPlacaVeicCol.Text      := COPY(DMCFG.CdsNFCNF_PLACAVEICULO.AsString,4,3);
    ChkPlacaUF.Checked        := IIF(COPY(DMCFG.CdsNFCNF_PLACAESTADO.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdPlacaUFLn.Text         := COPY(DMCFG.CdsNFCNF_PLACAESTADO.AsString,1,3);
    CEdPlacaUFCol.Text        := COPY(DMCFG.CdsNFCNF_PLACAESTADO.AsString,4,3);
    ChkCNPJ_Trans.Checked     := IIF(COPY(DMCFG.CdsNFCNF_CNPJTRANSP.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdCNPJ_TransLn.Text      := COPY(DMCFG.CdsNFCNF_CNPJTRANSP.AsString,1,3);
    CEdCNPJ_TransCol.Text     := COPY(DMCFG.CdsNFCNF_CNPJTRANSP.AsString,4,3);
    ChkEndeTrans.Checked      := IIF(COPY(DMCFG.CdsNFCNF_ENDERETRANSP.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdEndTransLn.Text        := COPY(DMCFG.CdsNFCNF_ENDERETRANSP.AsString,1,3);
    CEdEndTransCol.Text       := COPY(DMCFG.CdsNFCNF_ENDERETRANSP.AsString,4,3);
    ChkCidadeTrans.Checked    := IIF(COPY(DMCFG.CdsNFCNF_CIDADETRANSP.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdCidadeTransLn.Text     := COPY(DMCFG.CdsNFCNF_CIDADETRANSP.AsString,1,3);
    CEdCidadeTransCol.Text    := COPY(DMCFG.CdsNFCNF_CIDADETRANSP.AsString,4,3);
    ChkEstadoTrans.Checked    := IIF(COPY(DMCFG.CdsNFCNF_ESTADOTRANSP.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdEstadoTransLn.Text     := COPY(DMCFG.CdsNFCNF_ESTADOTRANSP.AsString,1,3);
    CEdEstadoTransCol.Text    := COPY(DMCFG.CdsNFCNF_ESTADOTRANSP.AsString,4,3);
    ChkInscEstTrans.Checked   := IIF(COPY(DMCFG.CdsNFCNF_INSCESTRANSP.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdInscEstTransLn.Text    := COPY(DMCFG.CdsNFCNF_INSCESTRANSP.AsString,1,3);
    CEdInscEstTransCol.Text   := COPY(DMCFG.CdsNFCNF_INSCESTRANSP.AsString,4,3);
    ChkQtdeVol.Checked        := IIF(COPY(DMCFG.CdsNFCNF_QTDEVOTRANSP.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdQtdeVolLn.Text         := COPY(DMCFG.CdsNFCNF_QTDEVOTRANSP.AsString,1,3);
    CEdQtdeVolCol.Text        := COPY(DMCFG.CdsNFCNF_QTDEVOTRANSP.AsString,4,3);
    ChkEspecieVol.Checked     := IIF(COPY(DMCFG.CdsNFCNF_ESPECIETRANSP.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdEspecieLn.Text         := COPY(DMCFG.CdsNFCNF_ESPECIETRANSP.AsString,1,3);
    CEdEspecieCol.Text        := COPY(DMCFG.CdsNFCNF_ESPECIETRANSP.AsString,4,3);
    ChkMarca.Checked          := IIF(COPY(DMCFG.CdsNFCNF_MARCA.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdMarcaLn.Text           := COPY(DMCFG.CdsNFCNF_MARCA.AsString,1,3);
    CEdMarcaCol.Text          := COPY(DMCFG.CdsNFCNF_MARCA.AsString,4,3);
    ChkNumero.Checked         := IIF(COPY(DMCFG.CdsNFCNF_NUMERO.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdNumeroLn.Text          := COPY(DMCFG.CdsNFCNF_NUMERO.AsString,1,3);
    CEdNumeroCol.Text         := COPY(DMCFG.CdsNFCNF_NUMERO.AsString,4,3);
    ChkPesoBruto.Checked      := IIF(COPY(DMCFG.CdsNFCNF_PESOBRUTO.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdPesoBrutoLn.Text       := COPY(DMCFG.CdsNFCNF_PESOBRUTO.AsString,1,3);
    CEdPesoBrutoCol.Text      := COPY(DMCFG.CdsNFCNF_PESOBRUTO.AsString,4,3);
    ChkPesoLiq.Checked        := IIF(COPY(DMCFG.CdsNFCNF_PESOLIQUIDO.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdPesoLiqLn.Text         := COPY(DMCFG.CdsNFCNF_PESOLIQUIDO.AsString,1,3);
    CEdPesoLiqCol.Text        := COPY(DMCFG.CdsNFCNF_PESOLIQUIDO.AsString,4,3);
    ChkRedespTit.Checked      := IIF(COPY(DMCFG.CdsNFCNF_REDESPTITULO.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdRedespTituloLn.Text    := COPY(DMCFG.CdsNFCNF_REDESPTITULO.AsString,1,3);
    CEdRedespTituloCol.Text   := COPY(DMCFG.CdsNFCNF_REDESPTITULO.AsString,4,3);
    ChkTranspRed.Checked      := IIF(COPY(DMCFG.CdsNFCNF_TRANSPRED.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdTranspRedLn.Text       := COPY(DMCFG.CdsNFCNF_TRANSPRED.AsString,1,3);
    CEdTranspRedCol.Text      := COPY(DMCFG.CdsNFCNF_TRANSPRED.AsString,4,3);
    ChkRedespRua.Checked      := IIF(COPY(DMCFG.CdsNFCNF_REDESPRUA.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdRedespRuaLn.Text       := COPY(DMCFG.CdsNFCNF_REDESPRUA.AsString,1,3);
    CEdRedespRuaCol.Text      := COPY(DMCFG.CdsNFCNF_REDESPRUA.AsString,4,3);
    ChkRedespCid.Checked      := IIF(COPY(DMCFG.CdsNFCNF_REDESPCID.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdRedespCidLn.Text       := COPY(DMCFG.CdsNFCNF_REDESPCID.AsString,1,3);
    CEdRedespCidCol.Text      := COPY(DMCFG.CdsNFCNF_REDESPCID.AsString,4,3);
    ChkEntregaTitulo.Checked  := IIF(COPY(DMCFG.CdsNFCNF_ENTREGATITULO.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdEntregaTituloLn.Text   := COPY(DMCFG.CdsNFCNF_ENTREGATITULO.AsString,1,3);
    CEdEntregaTituloCol.Text  := COPY(DMCFG.CdsNFCNF_ENTREGATITULO.AsString,4,3);
    ChkEntregaRua.Checked     := IIF(COPY(DMCFG.CdsNFCNF_ENTREGARUA.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdEntregaRuaLn.Text      := COPY(DMCFG.CdsNFCNF_ENTREGARUA.AsString,1,3);
    CEdEntregaRuaCol.Text     := COPY(DMCFG.CdsNFCNF_ENTREGARUA.AsString,4,3);
    ChkEntregaCida.Checked    := IIF(COPY(DMCFG.CdsNFCNF_ENTREGACIDA.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdEntregaCidaLn.Text     := COPY(DMCFG.CdsNFCNF_ENTREGACIDA.AsString,1,3);
    CEdEntregaCidaCol.Text    := COPY(DMCFG.CdsNFCNF_ENTREGACIDA.AsString,4,3);
    ChkCobrancaTitulo.Checked := IIF(COPY(DMCFG.CdsNFCNF_COBRANCATITULO.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdCobrancaTituloLn.Text  := COPY(DMCFG.CdsNFCNF_COBRANCATITULO.AsString,1,3);
    CEdCobrancaTituloCol.Text := COPY(DMCFG.CdsNFCNF_COBRANCATITULO.AsString,4,3);
    ChkCobrancaRua.Checked    := IIF(COPY(DMCFG.CdsNFCNF_COBRANCARUA.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdCobrancaRuaLn.Text     := COPY(DMCFG.CdsNFCNF_COBRANCARUA.AsString,1,3);
    CEdCobrancaRuaCol.Text    := COPY(DMCFG.CdsNFCNF_COBRANCARUA.AsString,4,3);
    ChkCobrancaCida.Checked   := IIF(COPY(DMCFG.CdsNFCNF_COBRANCACIDA.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdCobrancaCidaLn.Text    := COPY(DMCFG.CdsNFCNF_COBRANCACIDA.AsString,1,3);
    CEdCobrancaCidaCol.Text   := COPY(DMCFG.CdsNFCNF_COBRANCACIDA.AsString,4,3);
    ChkDadoAd1.Checked        := IIF(COPY(DMCFG.CdsNFCNF_DADOAD1.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdDadoAd1Ln.Text         := COPY(DMCFG.CdsNFCNF_DADOAD1.AsString,1,3);
    CEdDadoAd1Col.Text        := COPY(DMCFG.CdsNFCNF_DADOAD1.AsString,4,3);
    ChkDadoAd1.Checked        := IIF(COPY(DMCFG.CdsNFCNF_DADOAD1.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdDadoAd1Ln.Text         := COPY(DMCFG.CdsNFCNF_DADOAD1.AsString,1,3);
    CEdDadoAd1Col.Text        := COPY(DMCFG.CdsNFCNF_DADOAD1.AsString,4,3);
    ChkDadoAd2.Checked        := IIF(COPY(DMCFG.CdsNFCNF_DADOAD2.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdDadoAd2Ln.Text         := COPY(DMCFG.CdsNFCNF_DADOAD2.AsString,1,3);
    CEdDadoAd2Col.Text        := COPY(DMCFG.CdsNFCNF_DADOAD2.AsString,4,3);
    ChkDadoAd3.Checked        := IIF(COPY(DMCFG.CdsNFCNF_DADOAD3.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdDadoAd3Ln.Text         := COPY(DMCFG.CdsNFCNF_DADOAD3.AsString,1,3);
    CEdDadoAd3Col.Text        := COPY(DMCFG.CdsNFCNF_DADOAD3.AsString,4,3);
    ChkDadoAd4.Checked        := IIF(COPY(DMCFG.CdsNFCNF_DADOAD4.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdDadoAd4Ln.Text         := COPY(DMCFG.CdsNFCNF_DADOAD4.AsString,1,3);
    CEdDadoAd4Col.Text        := COPY(DMCFG.CdsNFCNF_DADOAD4.AsString,4,3);
    ChkDadoAd5.Checked        := IIF(COPY(DMCFG.CdsNFCNF_DADOAD5.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdDadoAd5Ln.Text         := COPY(DMCFG.CdsNFCNF_DADOAD5.AsString,1,3);
    CEdDadoAd5Col.Text        := COPY(DMCFG.CdsNFCNF_DADOAD5.AsString,4,3);
    ChkDadoAd6.Checked        := IIF(COPY(DMCFG.CdsNFCNF_DADOAD6.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdDadoAd6Ln.Text         := COPY(DMCFG.CdsNFCNF_DADOAD6.AsString,1,3);
    CEdDadoAd6Col.Text        := COPY(DMCFG.CdsNFCNF_DADOAD6.AsString,4,3);
    ChkDadoAd7.Checked        := IIF(COPY(DMCFG.CdsNFCNF_DADOAD7.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdDadoAd7Ln.Text         := COPY(DMCFG.CdsNFCNF_DADOAD7.AsString,1,3);
    CEdDadoAd7Col.Text        := COPY(DMCFG.CdsNFCNF_DADOAD7.AsString,4,3);
    ChkDadoAd8.Checked        := IIF(COPY(DMCFG.CdsNFCNF_DADOAD8.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdDadoAd8Ln.Text         := COPY(DMCFG.CdsNFCNF_DADOAD8.AsString,1,3);
    CEdDadoAd8Col.Text        := COPY(DMCFG.CdsNFCNF_DADOAD8.AsString,4,3);
    ChkDadoAd9.Checked        := IIF(COPY(DMCFG.CdsNFCNF_DADOAD9.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdDadoAd9Ln.Text         := COPY(DMCFG.CdsNFCNF_DADOAD9.AsString,1,3);
    CEdDadoAd9Col.Text        := COPY(DMCFG.CdsNFCNF_DADOAD9.AsString,4,3);
    ChkDadoAd10.Checked       := IIF(COPY(DMCFG.CdsNFCNF_DADOAD10.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdDadoAd10Ln.Text        := COPY(DMCFG.CdsNFCNF_DADOAD10.AsString,1,3);
    CEdDadoAd10Col.Text       := COPY(DMCFG.CdsNFCNF_DADOAD10.AsString,4,3);
    ChkDadoAd11.Checked       := IIF(COPY(DMCFG.CdsNFCNF_DADOAD11.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdDadoAd11Ln.Text        := COPY(DMCFG.CdsNFCNF_DADOAD11.AsString,1,3);
    CEdDadoAd11Col.Text       := COPY(DMCFG.CdsNFCNF_DADOAD11.AsString,4,3);
    ChkDadoAd12.Checked       := IIF(COPY(DMCFG.CdsNFCNF_DADOAD12.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdDadoAd12Ln.Text        := COPY(DMCFG.CdsNFCNF_DADOAD12.AsString,1,3);
    CEdDadoAd12Col.Text       := COPY(DMCFG.CdsNFCNF_DADOAD12.AsString,4,3);
    ChkNotaFatura.Checked     := IIF(COPY(DMCFG.CdsNFCNF_NOTAFATURA.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdNotaFaturaLn.Text      := COPY(DMCFG.CdsNFCNF_NOTAFATURA.AsString,1,3);
    CEdNotaFaturaCol.Text     := COPY(DMCFG.CdsNFCNF_NOTAFATURA.AsString,4,3);
    ChkAssinatura.Checked     := IIF(COPY(DMCFG.CdsNFCNF_ASSINTURA.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdAssinturaLn.Text       := COPY(DMCFG.CdsNFCNF_ASSINTURA.AsString,1,3);
    CEdAssinturaCol.Text      := COPY(DMCFG.CdsNFCNF_ASSINTURA.AsString,4,3);
    ChkDataRec.Checked        := IIF(COPY(DMCFG.CdsNFCNF_DATAREC.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdDataRecLn.Text         := COPY(DMCFG.CdsNFCNF_DATAREC.AsString,1,3);
    CEdDataRecCol.Text        := COPY(DMCFG.CdsNFCNF_DATAREC.AsString,4,3);
    {Demonstrativo do Calculo do ICMS}
    ChkDadoCalc.Checked       := IIF(COPY(DMCFG.CdsNFCNF_DEMOCALC.AsString,7,1)='S',cbChecked,cbUnchecked);
    CEdDadosCalcLn.Text       := COPY(DMCFG.CdsNFCNF_DEMOCALC.AsString,1,3);
    CEdDadosCalcCol.Text      := COPY(DMCFG.CdsNFCNF_DEMOCALC.AsString,4,3);
end;

procedure TFormParametros.DBNavigator3Click(Sender: tObject;
  Button: TNavigateBtn);
begin
   cCodBanco.Text := DmCfg.CdsSysChequeBAN_CODIGO.AsString;
   MostraParametroCh(CCodBanco.Text);
end;

procedure TFormParametros.DBNavigator2Click(Sender: tObject;
  Button: TNavigateBtn);
begin
    MostrarDupli;
end;

procedure TFormParametros.DBNavigator1Click(Sender: tObject;
  Button: TNavigateBtn);
begin
    MostrarEtiq;
end;

procedure TFormParametros.EscondeBotoes;
begin
    Panel1.Visible  := False;
    Panel13.Visible := False;
end;

procedure TFormParametros.MostrarBotoes;
begin
    Panel1.Visible  := True;
    Panel13.Visible := True;
end;

procedure TFormParametros.PageControl1Change(Sender: tObject);
begin
    if PageControl1.TabIndex = 0 then   //Global
       begin
           VerificaEdicaoNota;
           VerificaEdicaoDupl;
           VerificaEdicaoEtiq;
           VerificaEdicaoBloq;
           try
             DmCfg.CdsEtiq.Close;
             DmCfg.CdsDupl.Close;
             DmCfg.CdsNF.Close;
           except on E:EDataBaseError do
             uteis.erro  (Pchar('Erro ao Fechar as Tabelas !'+e.message));
           end;
           MostrarBotoes;
           MostraDadosGlobal;
       end;
    if PageControl1.TabIndex = 1 then   //Comissão
       begin
           VerificaEdicaoNota;
           VerificaEdicaoDupl;
           VerificaEdicaoEtiq;
           VerificaEdicaoBloq;
           try
             DmCfg.CdsEtiq.Close;
             DmCfg.CdsDupl.Close;
             DmCfg.CdsNF.Close;
           except on E:EDataBaseError do
             uteis.erro  (Pchar('Erro ao Fechar as Tabelas !'+e.message));
           end;
           MostrarBotoes;
       end;
    if PageControl1.TabIndex = 2 then   //Financeiro
       begin
           VerificaEdicaoNota;
           VerificaEdicaoDupl;
           VerificaEdicaoEtiq;
           VerificaEdicaoBloq;
           try
             DmCfg.CdsEtiq.Close;
             DmCfg.CdsDupl.Close;
             DmCfg.CdsNF.Close;
           except on E:EDataBaseError do
             uteis.erro  (Pchar('Erro ao Fechar as Tabelas !'+e.message));
           end;
           MostrarBotoes;
           MostraDados;
       end;
    if PageControl1.TabIndex = 3 then   //Produção
       begin
           VerificaEdicaoNota;
           VerificaEdicaoDupl;
           VerificaEdicaoEtiq;
           VerificaEdicaoBloq;
           //
           if (DataCadastros1.CdsParametrosPMT_GERAR_NUM_LOTE.AsString = 'A') then
              Rad_Lote_Automatico.Checked := True
           else
              Rad_Lote_Manual.Checked := True;

           // habilita ou desabilita a geração de lote automático
           if (DataCadastros1.CdsParametrosPMT_LOTE_AUTOMATICO.AsString = 'A') then
              rbLoteAutomatico.Checked := True
           else
              rbLoteManual.Checked := True;



           //
           try
             DmCfg.CdsEtiq.Close;
             DmCfg.CdsDupl.Close;
             DmCfg.CdsNF.Close;
           except on E:EDataBaseError do
             uteis.erro  (Pchar('Erro ao Fechar as Tabelas !'+e.message));
           end;
           MostrarBotoes;
       end;
    if PageControl1.TabIndex = 4 then   //Sintegra
       begin
           VerificaEdicaoNota;
           VerificaEdicaoDupl;
           VerificaEdicaoEtiq;
           VerificaEdicaoBloq;
           if (DataCadastros1.CdsParametrosSIN_ARQ_MAGNETICO.AsString = '1') then
              Rad_1.Checked := True;
           if (DataCadastros1.CdsParametrosSIN_ARQ_MAGNETICO.AsString = '2') then
              Rad_2.Checked := True;
           if (DataCadastros1.CdsParametrosSIN_ARQ_MAGNETICO.AsString = '3') then
              Rad_3.Checked := True;
           try
             DmCfg.CdsEtiq.Close;
             DmCfg.CdsDupl.Close;
             DmCfg.CdsNF.Close;
           except on E:EDataBaseError do
             uteis.erro  (Pchar('Erro ao Fechar as Tabelas !'+e.message));
           end;
           MostrarBotoes;
       end;
    if PageControl1.TabIndex = 5 then   // Nota Faiscal
       begin
           screen.Cursor := crHourGlass;
           VerificaEdicaoNota;
           VerificaEdicaoDupl;
           VerificaEdicaoEtiq;
           VerificaEdicaoBloq;
           try
             DmCfg.CdsEtiq.Close;
             DmCfg.CdsDupl.Close;
           except on E:EDataBaseError do
             uteis.erro  (Pchar('Erro ao Fechar as Tabelas !'+e.message));
           end;
           try
             DMCFG.CdsNF.CLOSE;
             DMCFG.CdsNF.CommandText := SQLDEF('PARAMETROS','SELECT * FROM SYSNFS','','CNF_CODIGO','');
             DMCFG.CdsNF.Open;
             MostrarNFs;
             DBNavigator3.SetFocus;
           except on E:EDataBaseError do
             uteis.erro  (Pchar('Erro ao Abrir a Tabela SYSNFS !'+E.Message));
           end;
           screen.Cursor := crDefault;
           EscondeBotoes;
           HabBotoesNota;
       end;
    if PageControl1.TabIndex = 6 then   // Duplicata
       begin
           screen.Cursor := crHourGlass;
           VerificaEdicaoNota;
           VerificaEdicaoDupl;
           VerificaEdicaoEtiq;
           VerificaEdicaoBloq;
           try
             DmCfg.CdsEtiq.Close;
             DmCfg.CdsNF.Close;
           except on E:EDataBaseError do
             uteis.erro  (Pchar('Erro ao Fechar as Tabelas !'+e.message));
           end;

           Try
             DMCFG.CdsDupl.Close;
             DMCFG.CdsDupl.CommandText := SQLDEF('PARAMETROS','SELECT * FROM SYSDUPLI','','CdU_CODIGO','');
             DMCFG.CdsDupl.Open;
             MOSTRARDupli;
             DBNavigator2.SetFocus;
           except on E:EDataBaseError do
              uteis.erro  (Pchar('Erro ao Abrir a Tabela SYSDupli !'+e.Message));
           end;
           screen.Cursor := crDefault;
           EscondeBotoes;
           HabBotoesDupl;
       end;
    if PageControl1.TabIndex = 7 then   // Etiqueta
       begin
           screen.Cursor := crHourGlass;
           VerificaEdicaoNota;
           VerificaEdicaoDupl;
           VerificaEdicaoEtiq;
           VerificaEdicaoBloq;
           try
             DmCfg.CdsNF.Close;
             DmCfg.CdsDupl.Close;
           except on E:EDataBaseError do
             uteis.erro  (Pchar('Erro ao Fechar as Tabelas !'+e.message));
           end;
           try
             DmCfg.CdsEtiq.Close;
             DmCfg.CdsEtiq.CommandText := SQLDEF('TABELAS','SELECT * FROM SYSETIQUETA','' ,'CET_CODIGO','');
             DmCfg.CdsEtiq.Open;
             MOSTRAREtiq;
             DBNavigator1.SetFocus;
           except on E:EdataBaseError do
              uteis.erro  (Pchar('Erro ao Abrir a Tabela SYSETIQUETA !'+E.Message));
           end;
           screen.Cursor := crDefault;
           EscondeBotoes;
           HabBotoesEtiq;
       end;
    if PageControl1.TabIndex = 8 then   // Bloqueto
       begin
           screen.Cursor := crHourGlass;
           VerificaEdicaoNota;
           VerificaEdicaoDupl;
           VerificaEdicaoEtiq;
           try
             DmCfg.CdsNF.Close;
             DmCfg.CdsDupl.Close;
             DmCfg.CdsEtiq.Close;
           except on E:EDataBaseError do
             uteis.erro  (Pchar('Erro ao Fechar as Tabelas !'+e.message));
           end;
           try
             DmCfg.CdsBloq.Close;
             DmCfg.CdsBloq.CommandText := SQLDEF('TABELAS','SELECT * FROM SYSBOLETO','' ,'BOL_CODBOL','');
             DmCfg.CdsBloq.Open;
             MostraBloq;
             DBNavigator4.SetFocus;
           except on E:EdataBaseError do
              uteis.erro  (Pchar('Erro ao Abrir a Tabela SYSBLOQUETO !'+E.Message));
           end;
           screen.Cursor := crDefault;
           EscondeBotoes;
           HabBotoesBloq;
       end;
    if PageControl1.TabIndex = 9 then   // Conversão
       begin
           Screen.Cursor := crHourGlass;
           try
             SqlCdsCCT.Close;
             SqlCdsCCT.CommandText := Sqldef('PLANODECONTAS','Select CCT_CODIGO,CCT_DESCRI,CCT_ANTIGO,CCT_NOVO from CCT_0000','where CCT_ANTIGO <>''''','CCT_CODIGO','');
             SqlCdsCCT.Open;
           except on E:EDataBaseError do
              uteis.erro  (pchar('Erro ao abrir a Tabela !'+e.message));
           end;
           Screen.Cursor := crDefault;
       end;
    if PageControl1.TabIndex = 10 then   // Impressao de chequ
       begin
           Screen.Cursor := crHourGlass;
           try
             HabilitaCheque;
             PreencheBancoCh;
             AbrirParametroCheque;
             Desabilita_Objetos_Cheque;
             EscondeBotoes;
           except on E:EDataBaseError do
              uteis.erro  (pchar('Erro ao abrir a Tabela !'+e.message));
           end;
           Screen.Cursor := crDefault;
       end;
end;

procedure TFormParametros.VerificaEdicaoDupl;
begin
    // verifica estado da tabela em edicao e inclusao
    screen.cursor :=crHourglass;
    if DmCfg.CdsDupl.Active then
       begin
           if DmCfg.CdsDupl.State in [dsEdit,dsInsert] then
              begin
                  if uteis.confirmacao ( 'Deseja salvar alterações da Duplicata ?') = idyes then
                     begin
                         DmCfg.CdsDupl.ApplyUpdates(0);
                         HabBotoesDupl;
                     end
                  else
                     begin
                         DmCfg.CdsEtiq.Cancel;
                         HabBotoesDupl;
                     end;
              end;
       end;
    screen.cursor := crDefault;
end;

procedure TFormParametros.VerificaEdicaoNota;
begin
    // verifica estado da tabela em edicao e inclusao
    screen.cursor :=crHourglass;
    if DmCfg.CdsNF.Active then
       begin
           if DmCfg.CdsNF.State in [dsEdit,dsInsert] then
              begin
                  if uteis.confirmacao ( 'Deseja salvar alterações da Nota Fiscal ?') = idyes then
                     begin
                         DmCfg.CdsNF.ApplyUpdates(0);
                         HabBotoesNota;
                     end
                  else
                     begin
                         DmCfg.CdsEtiq.Cancel;
                         HabBotoesNota;
                     end;
              end;
       end;
    screen.cursor := crDefault;
end;

procedure TFormParametros.VerificaEdicaoEtiq;
begin
    // verifica estado da tabela em edicao e inclusao
    screen.cursor :=crHourglass;
    if DmCfg.CdsEtiq.Active then
       begin
           if DmCfg.CdsEtiq.State in [dsEdit,dsInsert] then
              begin
                  if uteis.confirmacao ( 'Deseja salvar alterações da Etiqueta da Nota Fiscal ?') = idyes then
                     begin
                         DmCfg.CdsEtiq.ApplyUpdates(0);
                         HabBotoesEtiq;
                     end
                  else
                     begin
                         DmCfg.CdsEtiq.Cancel;
                         HabBotoesEtiq;
                     end;
              end;
       end;
    screen.cursor := crDefault;
end;

procedure TFormParametros.DesBotoesDupl;
begin
    DBNavigator2.Enabled        := False;
    Bit_NovoDupl.Enabled        := False;
    Bit_Alterardupl.Enabled     := False;
    Bit_ExcluirDupl.Enabled     := False;
    Bit_GravarDupl.Enabled      := True;
    Bit_CancelarDupl.Visible    := True;
    Bit_SairDupl.Visible        := False;
end;

procedure TFormParametros.DesBotoesEtiq;
begin
    DBNavigator1.Enabled        := False;
    Bit_Lista.Enabled           := False;
    Bit_NovoEtiq.Enabled        := False;
    Bit_AlterarEtiq.Enabled     := False;
    Bit_ExcluirEtiq.Enabled     := False;
    Bit_GravarEtiq.Enabled      := True;
    Bit_CancelarEtiq.Visible    := True;
    Bit_SairEtiq.Visible        := False;
end;

procedure TFormParametros.DesBotoesNota;
begin
    DBNavigator3.Enabled        := False;
    Bit_NovoNFs.Enabled         := False;
    Bit_AlterarNFs.Enabled      := False;
    Bit_ExcluirNFs.Enabled      := False;
    Bit_GravarNFs.Enabled       := True;
    Bit_CancelarNFs.Visible     := True;
    Bit_SairNFs.Visible         := False;
end;

procedure TFormParametros.edClienteButtonClick(Sender: TObject);
var tcr: tFrmPesquisaClientes;
begin
  inherited;
  tcr:= tFrmPesquisaClientes.Create(self);
  try
      tcr.ShowModal;
      if tcr.modalresult = mrok then
         edCliente.idRetorno := tcr.IDRetorno;


  finally
       FreeAndNil(tcr);
  end;
end;

procedure TFormParametros.DesBotoesBloq;
begin
    DBNavigator4.Enabled        := False;
    Bit_NovoBloq.Enabled        := False;
    Bit_AlterarBloq.Enabled     := False;
    Bit_ExcluirBloq.Enabled     := False;
    Bit_GravarBloq.Enabled      := True;
    Bit_CancelarBloq.Visible    := True;
    Bit_SairBloq.Visible        := False;
end;

procedure TFormParametros.HabBotoesDupl;
begin
    DBNavigator2.Enabled        := True;
    Bit_NovoDupl.Enabled        := True;
    Bit_Alterardupl.Enabled     := True;
    Bit_ExcluirDupl.Enabled     := True;
    Bit_GravarDupl.Enabled      := False;
    Bit_CancelarDupl.Visible    := False;
    Bit_SairDupl.Visible        := True;
end;

procedure TFormParametros.HabBotoesEtiq;
begin
    DBNavigator1.Enabled        := True;
    Bit_Lista.Enabled           := True;
    Bit_NovoEtiq.Enabled        := True;
    Bit_AlterarEtiq.Enabled     := True;
    Bit_ExcluirEtiq.Enabled     := True;
    Bit_GravarEtiq.Enabled      := False;
    Bit_CancelarEtiq.Visible    := False;
    Bit_SairEtiq.Visible        := True;
end;

procedure TFormParametros.HabBotoesNota;
begin
    DBNavigator3.Enabled        := True;
    Bit_NovoNFs.Enabled         := True;
    Bit_AlterarNFs.Enabled      := True;
    Bit_ExcluirNFs.Enabled      := True;
    Bit_GravarNFs.Enabled       := False;
    Bit_CancelarNFs.Visible     := False;
    Bit_SairNFs.Visible         := True;
end;

procedure TFormParametros.HabBotoesBloq;
begin
    DBNavigator4.Enabled        := True;
    Bit_NovoBloq.Enabled        := True;
    Bit_AlterarBloq.Enabled     := True;
    Bit_ExcluirBloq.Enabled     := True;
    Bit_GravarBloq.Enabled      := False;
    Bit_CancelarBloq.Visible    := False;
    Bit_SairBloq.Visible        := True;
end;

procedure TFormParametros.Bit_CancelarEtiqClick(Sender: tObject);
begin
    DmCfg.CdsEtiq.Cancel;
    HabBotoesEtiq;
    EscondeBotoes;
    DbCodigo.Enabled := True;
    Group02.Enabled  := False;
    DBNavigator1.SetFocus;
end;

procedure TFormParametros.Bit_CancelarNFsClick(Sender: tObject);
begin
    DmCfg.CdsNF.Cancel;
    HabBotoesNota;
    EscondeBotoes;
    MostrarNFs;
    DbCodigoNota.Enabled := True;
    DBNavigator3.SetFocus;
end;

procedure TFormParametros.GravarBloq;
begin
    //Gravar Boletos
    DmCfg.CdsBloqBOL_CODBOL.AsString      := StrZero(DbCodBloq.Text,3);
    DmCfg.CdsBloqBOL_ATIVO.AsString       := IIF(ChkBloq.checked ,'S','N');
    DmCfg.CdsBloqBOL_CODBAN.AsString      := StrZero(DbCodBco.Text,4);
    DmCfg.CdsBloqBOL_NRLINHA.AsString     := DbNLinhas.Text;
    DmCfg.CdsBloqBOL_LOCAL.AsString       := StrZero(Bol_LocalLn.Text,3)       + StrZero(Bol_LocalCol.Text,3)       + IIF(ChkBol_Local.checked ,'S','N');
    DmCfg.CdsBloqBOL_VENCTO.AsString      := StrZero(Bol_VenctoLn.Text,3)      + StrZero(Bol_VenctoLn.Text,3)       + IIF(ChkBol_Vencto.checked ,'S','N');
    DmCfg.CdsBloqBOL_DTEMIS.AsString      := StrZero(Bol_DtemisLn.Text,3)      + StrZero(Bol_DtemisCol.Text,3)      + IIF(ChkBol_Dtemis.checked ,'S','N');
    DmCfg.CdsBloqBOL_CODFAT.AsString      := StrZero(Bol_CodFatLn.Text,3)      + StrZero(Bol_CodFatCol.Text,3)      + IIF(ChkBol_CodFat.checked ,'S','N');
    DmCfg.CdsBloqBOL_ESPDOC.AsString      := StrZero(Bol_EspDocLn.Text,3)      + StrZero(Bol_EspDocCol.Text,3)      + IIF(ChkBol_EspDoc.checked ,'S','N');
    DmCfg.CdsBloqBOL_ACEITE.AsString      := StrZero(Bol_AceiteLn.Text,3)      + StrZero(Bol_AceiteCol.Text,3)      + IIF(ChkBol_Aceite.checked ,'S','N');
    DmCfg.CdsBloqBOL_DTPROCE.AsString     := StrZero(Bol_DtProceLn.Text,3)     + StrZero(Bol_DtProceCol.Text,3)     + IIF(ChkBol_DtProce.checked ,'S','N');
    DmCfg.CdsBloqBOL_USOBCO.AsString      := StrZero(Bol_UsoBcoLn.Text,3)      + StrZero(Bol_UsoBcoCol.Text,3)      + IIF(ChkBol_UsoBco.checked ,'S','N');
    DmCfg.CdsBloqBOL_CARTEIRA.AsString    := StrZero(Bol_CarteiraLn.Text,3)    + StrZero(Bol_CarteiraCol.Text,3)    + IIF(ChkBol_Carteira.checked ,'S','N');
    DmCfg.CdsBloqBOL_VLPARC.AsString      := StrZero(Bol_VlParcLn.Text,3)      + StrZero(Bol_VlParcCol.Text,3)      + IIF(ChkBol_VlParc.checked ,'S','N');
    DmCfg.CdsBloqBOL_ESPECIE.AsString     := StrZero(Bol_EspecieLn.Text,3)     + StrZero(Bol_EspecieCol.Text,3)     + IIF(ChkBol_Especie.checked ,'S','N');
    DmCfg.CdsBloqBOL_QUANTIDADE.AsString  := StrZero(Bol_QtdeLn.Text,3)        + StrZero(Bol_QtdeCol.Text,3)        + IIF(ChkBol_Qtde.checked ,'S','N');
    DmCfg.CdsBloqBOL_VLDOC.AsString       := StrZero(Bol_VlDocLn.Text,3)       + StrZero(Bol_VlDocCol.Text,3)       + IIF(ChkBol_VlDoc.checked ,'S','N');
    DmCfg.CdsBloqBOL_JUROMES.AsString     := StrZero(Bol_JurosLn.Text,3)       + StrZero(Bol_JurosCol.Text,3)       + IIF(ChkBol_Juros.checked ,'S','N');
    DmCfg.CdsBloqBOL_DESCABAT.AsString    := StrZero(Bol_DescLn.Text,3)        + StrZero(Bol_DescCol.Text,3)        + IIF(ChkBol_Desc.checked ,'S','N');
    DmCfg.CdsBloqBOL_OBSBOL1.AsString     := StrZero(Bol_Obs1Ln.Text,3)        + StrZero(Bol_Obs1Col.Text,3)        + IIF(ChkBol_Obs1.checked ,'S','N');
    DmCfg.CdsBloqBOL_OBSBOL2.AsString     := StrZero(Bol_Obs2Ln.Text,3)        + StrZero(Bol_Obs2Col.Text,3)        + IIF(ChkBol_Obs2.checked ,'S','N');
    DmCfg.CdsBloqBOL_OBSBOL3.AsString     := StrZero(Bol_Obs3Ln.Text,3)        + StrZero(Bol_Obs3Col.Text,3)        + IIF(ChkBol_Obs3.checked ,'S','N');
    DmCfg.CdsBloqBOL_OBSBOL4.AsString     := StrZero(Bol_Obs4ln.Text,3)        + StrZero(Bol_Obs4Col.Text,3)        + IIF(ChkBol_Obs4.checked ,'S','N');
    DmCfg.CdsBloqBOL_OUTDEDU.AsString     := StrZero(Bol_OutLn.Text,3)         + StrZero(Bol_OutCol.Text,3)         + IIF(ChkBol_out.checked ,'S','N');
    DmCfg.CdsBloqBOL_MORAMULTA.AsString   := StrZero(Bol_MoraLn.Text,3)        + StrZero(Bol_MoraCol.Text,3)        + IIF(ChkBol_Mora.checked ,'S','N');
    DmCfg.CdsBloqBOL_OUTACRES.AsString    := StrZero(Bol_OutAcLn.Text,3)       + StrZero(Bol_OutAcCol.Text,3)       + IIF(ChkBol_OutAc.checked ,'S','N');
    DmCfg.CdsBloqBOL_VLCOBRADO.AsString   := StrZero(Bol_VlCoLn.Text,3)        + StrZero(Bol_VlCoCol.Text,3)        + IIF(ChkBol_VlCo.checked ,'S','N');
    DmCfg.CdsBloqBOL_RAZAO.AsString       := StrZero(Bol_RazaoLn.Text,3)       + StrZero(Bol_RazaoCol.Text,3)       + IIF(ChkBol_Razao.checked ,'S','N');
    DmCfg.CdsBloqBOL_END.AsString         := StrZero(Bol_EndLn.Text,3)         + StrZero(Bol_EndCol.Text,3)         + IIF(ChkBol_End.checked ,'S','N');
    DmCfg.CdsBloqBOL_CEP.AsString         := StrZero(Bol_CepLn.Text,3)         + StrZero(Bol_CepCol.Text,3)         + IIF(ChkBol_Cep.checked ,'S','N');
    DmCfg.CdsBloqBOL_CID.AsString         := StrZero(Bol_CidLn.Text,3)         + StrZero(Bol_CidCol.Text,3)         + IIF(ChkBol_Cid.checked ,'S','N');
    DmCfg.CdsBloqBOL_EST.AsString         := StrZero(Bol_EstLn.Text,3)         + StrZero(Bol_EstCol.Text,3)         + IIF(ChkBol_Est.checked ,'S','N');
    DmCfg.CdsBloqBOL_DESESPDOC.AsString   := StrZero(Bol_DesEspDocLn.Text,3)   + StrZero(Bol_DesEspDocCol.Text,3)   + IIF(Chk_DesEspDoc.checked ,'S','N');
    DmCfg.CdsBloqBOL_DESACEITE.AsString   := StrZero(Bol_desaceiteln.Text,3)   + StrZero(Bol_desaceitecol.Text,3)   + IIF(Chkbol_desaceite.checked ,'S','N');
    DmCfg.CdsBloqBOL_DESCARTEIRA.AsString := StrZero(Bol_descarteiraln.Text,3) + StrZero(Bol_descarteiracol.Text,3) + IIF(chkBol_descarteira.checked ,'S','N');
    DmCfg.CdsBloqBOL_DESPECIE.AsString    := StrZero(Bol_DespecieLn.Text,3)    + StrZero(Bol_Despeciecol.Text,3)    + IIF(chkBol_Despecie.checked ,'S','N');
    DmCfg.CdsBloqBOL_VALOR.AsString       := StrZero(Bol_ValorLn.Text,3)       + StrZero(Bol_ValorCol.Text,3)       + IIF(chkBol_Valor.checked ,'S','N');
    DmCfg.CdsBloqBOL_CNPJ.AsString        := StrZero(Bol_CnpjLn.Text,3)        + StrZero(Bol_CnpjCol.Text,3)        + IIF(ChkBol_Cnpj.checked ,'S','N');
    DmCfg.CdsBloqBOL_OBS1.AsString        := DbBol_Obs1.Text;
    DmCfg.CdsBloqBOL_OBS2.AsString        := DbBol_Obs2.Text;
    DmCfg.CdsBloqBOL_OBS3.AsString        := DbBol_Obs3.Text;
    DmCfg.CdsBloqBOL_OBS4.AsString        := DbBol_Obs4.Text;
    DmCfg.CdsBloqBOL_LOCPGTO.AsString     := DbBol_Local.Text;
    DmCfg.CdsBloqEMP_CODIGO.AsString      := dbInicio.Empresa.EMP_CODIGO;
    DmCfg.CdsBloq.ApplyUpdates(0);
    DmCfg.CdsBloq.Refresh;
end;

procedure TFormParametros.GravarDupli;
begin
    //Gravar a Duplicata
    DmCfg.CdsDuplCdU_CODIGO.AsString        := StrZero(DbCodigoDupl.Text,2);
    DmCfg.CdsDuplCdU_ATIVO.AsString         := IIF(ChkDupl.checked ,'S','N');
    DmCfg.CdsDuplCdU_FONTE.AsString         := IIF(CboxFonte.ItemIndex = 0,'10','17');
    DmCfg.CdsDuplCdU_LINHAS.AsString        := ClinhaDuplicata.Text;
    DmCfg.CdsDuplCdU_NATUREZA.AsString      := StrZero(CNatOperacaoLn.Text,3)  + StrZero(CNatOperacaoCol.Text,3)    + IIF(ChkNatOperacaoDp.checked ,'S','N');
    DmCfg.CdsDuplCdU_DTEMISSAO.AsString     := StrZero(CEmissaoLn.Text,3)      + StrZero(CEmissaoCol.Text,3)        + IIF(ChkEmissaoDp.checked ,'S','N');
    DmCfg.CdsDuplCdU_FATURA.AsString        := StrZero(CFaturaNuLn.Text,3)     + StrZero(CFaturaNuCol.Text,3)       + IIF(ChkFaturaNuDp.checked ,'S','N');
    DmCfg.CdsDuplCdU_VALORD.AsString        := StrZero(CValorLn.Text,3)        + StrZero(CValorCol.Text,3)          + IIF(ChkValorDp.checked ,'S','N');
    DmCfg.CdsDuplCdU_NORDEM.AsString        := StrZero(CNuOrdemLn.Text,3)      + StrZero(CNuOrdemCol.Text,3)        + IIF(ChkNuOrdemDp.checked ,'S','N');
    DmCfg.CdsDuplCdU_VENCTO.AsString        := StrZero(CVencimentoLn.Text,3)   + StrZero(CVencimentoCol.Text,3)     + IIF(ChkVencimentoDp.checked ,'S','N');
    DmCfg.CdsDuplCdU_DESCTODE.AsString      := StrZero(CdescontoLn.Text,3)     + StrZero(CdescontoCol.Text,3)       + IIF(ChkDescontoDp.checked ,'S','N');
    DmCfg.CdsDuplCdU_DESCTOATE.AsString     := StrZero(CdesctoAteLn.Text,3)    + StrZero(CdesctoAteCol.Text,3)      + IIF(ChkDesctoAteDp.checked ,'S','N');
    DmCfg.CdsDuplCdU_DESCTOS.AsString       := StrZero(CdesctoRsLn.Text,3)     + StrZero(CdesctoRsCol.Text,3)       + IIF(ChkDesctoRsDp.checked ,'S','N');
    DmCfg.CdsDuplCdU_CONDESPECIAL.AsString  := StrZero(CCondEspLn.Text,3)      + StrZero(CCondEspCol.Text,3)        + IIF(ChkCondEspDp.checked ,'S','N');
    DmCfg.CdsDuplCdU_NOMESACADO.AsString    := StrZero(CSacadoLn.Text,3)       + StrZero(CSacadoCol.Text,3)         + IIF(ChkSacadoDp.checked ,'S','N');
    DmCfg.CdsDuplCdU_ENDERECO.AsString      := StrZero(CEnderecoLn.Text,3)     + StrZero(CEnderecoCol.Text,3)       + IIF(ChkEnderecoDp.checked ,'S','N');
    DmCfg.CdsDuplCdU_BAIRRO.AsString        := StrZero(CBairroLn.Text,3)       + StrZero(CBairroCol.Text,3)         + IIF(ChkBairroDp.checked ,'S','N');
    DmCfg.CdsDuplCdU_CIDADE.AsString        := StrZero(CMunicipioLn.Text,3)    + StrZero(CMunicipioCol.Text,3)      + IIF(ChkMunicipioDp.checked ,'S','N');
    DmCfg.CdsDuplCdU_ESTADO.AsString        := StrZero(CEstadoLn.Text,3)       + StrZero(CEstadoCol.Text,3)         + IIF(ChkEstadoDp.checked ,'S','N');
    DmCfg.CdsDuplCdU_CEP.AsString           := StrZero(CCepLn.Text,3)          + StrZero(CCepCol.Text,3)            + IIF(ChkCepDp.checked ,'S','N');
    DmCfg.CdsDuplCdU_FONE.AsString          := StrZero(CFoneLn.Text,3)         + StrZero(CFoneCol.Text,3)           + IIF(ChkFoneDp.checked ,'S','N');
    DmCfg.CdsDuplCdU_PRACA.AsString         := StrZero(CPracaLn.Text,3)        + StrZero(CPracaCol.Text,3)          + IIF(ChkPracaDp.checked ,'S','N');
    DmCfg.CdsDuplCdU_ENDECOBRA.AsString     := StrZero(CEndCobrancaLn.Text,3)  + StrZero(CEndCobrancaCol.Text,3)    + IIF(ChkEndCobrancaDp.checked ,'S','N');
    DmCfg.CdsDuplCdU_CEPCOBRA.AsString      := StrZero(CCepPracaLn.Text,3)     + StrZero(CCepPracaCol.Text,3)       + IIF(ChkCepPracaDp.checked ,'S','N');
    DmCfg.CdsDuplCdU_CNPJ.AsString          := StrZero(CCNPJ_CNPFLn.Text,3)    + StrZero(CCNPJ_CNPFCol.Text,3)      + IIF(ChkCNPJ_CNPFDp.checked ,'S','N');
    DmCfg.CdsDuplCdU_INSCRESTADUAL.AsString := StrZero(CInscricaoLn.Text,3)    + StrZero(CInscricaoCol.Text,3)      + IIF(ChkInscricaoDp.checked ,'S','N');
    DmCfg.CdsDuplCdU_DATACEITE.AsString     := StrZero(CAceiteLn.Text,3)       + StrZero(CAceiteCol.Text,3)         + IIF(ChkAceiteDp.checked ,'S','N');
    DmCfg.CdsDuplCdU_VLEXTENSO.AsString     := StrZero(CValorExtensoLn.Text,3) + StrZero(CValorExtensoCol.Text,3)   + IIF(ChkValorExtensoDp.checked ,'S','N');
    DmCfg.CdsDuplCdU_OBS.AsString           := StrZero(CObsLn.Text,3)          + StrZero(CObsCol.Text,3)            + IIF(ChkObs.checked ,'S','N');
    if (DmCfg.CdsDupl.State in [dsInsert]) then
       DmCfg.CdsDuplEMP_CODIGO.AsString     := dbInicio.Empresa.EMP_CODIGO;
    DmCfg.CdsDupl.ApplyUpdates(0);
    DmCfg.CdsDupl.Refresh;
end;

procedure TFormParametros.GravarEtiq;
begin
    //Gravar a Etiqueta
    DmCfg.CdsEtiqCET_QTDETIQ.AsString    := IIF(RadCol1.checked ,'1',IIF(RadCol2.checked ,'2','3'));
    DmCfg.CdsEtiqCET_TPIMP.AsString      := IIF(RadImpM.checked ,'M','L');
    DmCfg.CdsEtiqCET_CODIGO.AsString     := DbCodigo.Text;
    DmCfg.CdsEtiqCET_INICOL1.AsString    := CIniCol1.Text;
    DmCfg.CdsEtiqCET_INICOL2.AsString    := CIniCol2.Text;
    DmCfg.CdsEtiqCET_INICOL3.AsString    := CIniCol3.Text;
    DmCfg.CdsEtiqCET_LINHAS.AsString     := CNumerLinhas.Text;
    DmCfg.CdsEtiqCET_CLIENTE.AsString    := StrZero(CET_ClienteLn.Text,3)    + StrZero(CET_ClienteCol.Text,3)    + IIF(ChkCET_Cliente.Checked   ,'S','N');
    DmCfg.CdsEtiqCET_ENDERECO.AsString   := StrZero(CET_EnderecoLn.Text,3)   + StrZero(CET_EnderecoCol.Text,3)   + IIF(ChkCET_Endereco.Checked  ,'S','N');
    DmCfg.CdsEtiqCET_CIDADE.AsString     := StrZero(CET_CidadeLn.Text,3)     + StrZero(CET_CidadeCol.Text,3)     + IIF(ChkCET_Cidade.Checked    ,'S','N');
    DmCfg.CdsEtiqCET_ESTADO.AsString     := StrZero(CET_UFLN.Text,3)         + StrZero(CET_UFCol.Text,3)         + IIF(ChkCET_UF.Checked        ,'S','N');
    DmCfg.CdsEtiqCET_CEP.AsString        := StrZero(CET_CEPLN.Text,3)        + StrZero(CET_CEPCol.Text,3)        + IIF(CHKCET_Cep.Checked       ,'S','N');
    DmCfg.CdsEtiqCET_NFISCAL.AsString    := StrZero(CET_NOTALN.Text,3)       + StrZero(CET_NOTACOL.Text,3)       + IIF(CHKCET_NOTA.Checked      ,'S','N');
    DmCfg.CdsEtiqCET_QTDE.AsString       := StrZero(CET_QUANTIDADELN.Text,3) + StrZero(CET_QUANTIDADECOL.Text,3) + IIF(CHKCET_QUANTIDADE.checked ,'S','N');
    DmCfg.CdsEtiqCET_PESO.AsString       := StrZero(CET_PESOLN.Text,3)       + StrZero(CET_PESOCOL.Text,3)       + IIF(CHKCET_PESO.Checked     ,'S','N');
    DmCfg.CdsEtiqCET_CODPRODUTO.AsString := StrZero(CET_CODPRODLN.Text,3)    + StrZero(CET_CODPRODCOL.Text,3)    + IIF(CHKCET_CODPROD.Checked  ,'S','N');
    DmCfg.CdsEtiqCET_PRODUTO.AsString    := StrZero(CET_PRODUTOLN.Text,3)    + StrZero(CET_PRODUTOCOL.Text,3)    + IIF(CHKCET_PRODUTO.Checked  ,'S','N');
    DmCfg.CdsEtiqCET_TRANSPORT.AsString  := StrZero(CET_TRANSPLN.Text,3)     + StrZero(CET_TRANSPCOL.Text,3)     + IIF(CHKCET_TRANSP.Checked   ,'S','N');
    DmCfg.CdsEtiqCET_ENDTRANSP.AsString  := StrZero(CET_ENDTRANLN.Text,3)    + StrZero(CET_ENDTRANCOL.Text,3)    + IIF(CHKCET_ENDTRAN.Checked  ,'S','N');
    DmCfg.CdsEtiqCET_CIDTRANSP.AsString  := StrZero(CET_CIDTRANLN.Text,3)    + StrZero(CET_CIDTRANCOL.Text,3)    + IIF(CHKCET_CIDTRAN.Checked  ,'S','N');
    DmCfg.CdsEtiqCET_CEPTRANSP.AsString  := StrZero(CET_CEPTRANLN.Text,3)    + StrZero(CET_CEPTRANCOL.Text,3)    + IIF(CHKCET_CEPTRAN.Checked  ,'S','N');
    DmCfg.CdsEtiqEMP_CODIGO.AsString     := dbInicio.Empresa.EMP_CODIGO;
    DmCfg.CdsEtiq.ApplyUpdates(0);
    DmCfg.CdsEtiq.Refresh;
end;

procedure TFormParametros.GravarNFs;
begin
    //Gravar a Nota Fiscal
    DmCfg.CdsNFCNF_CODIGO.AsString         := StrZero(DbCodigoNota.Text,2);
    DmCfg.CdsNFCNF_ATIVO.AsString          := IIF(CHKNFS.checked ,'S','N');
    DmCfg.CdsNFCNF_LINHANOTA.AsString      := CLinhaNota.Text;
    DmCfg.CdsNFCNF_FONTE.AsString          := IIF(RadFonte.ItemIndex = 0,'17','10');
    DmCfg.CdsNFCNF_SERIE.AsString          := IIF(RadNota.ItemIndex  = 0,'U','2');
    DmCfg.CdsNFEMP_CODIGO.AsString         := dbInicio.Empresa.EMP_CODIGO;
    DmCfg.CdsNFCNF_XSAIDA.AsString         := StrZero(CEdSaidaLn.Text,3)          + StrZero(CEdSaidaCol.Text,3)             + IIF(ChkSaida.checked ,'S','N');
    DmCfg.CdsNFCNF_XENTRADA.AsString       := StrZero(CEdEntradaLn.Text,3)        + StrZero(CEdEntradaCol.Text,3)           + IIF(ChkEntrada.checked ,'S','N');
    DmCfg.CdsNFCNF_NUMERONF.AsString       := StrZero(CEdNumNotaLn.Text,3)        + StrZero(CEdNumNotaCol.Text,3)           + IIF(ChkNumNota.checked ,'S','N');
    DmCfg.CdsNFCNF_NATUREZA.AsString       := StrZero(CEdNatOpeLn.Text,3)         + StrZero(CEdNatOpeCol.Text,3)            + IIF(ChkNatOpe.checked ,'S','N');
    DmCfg.CdsNFCNF_CFOP.AsString           := StrZero(CEdCFOPLn.Text,3)           + StrZero(CEdCFOPCol.Text,3)              + IIF(ChkCFOP.checked ,'S','N');
    DmCfg.CdsNFCNF_INSCSUBT.AsString       := StrZero(CEdInscSubstLn.Text,3)      + StrZero(CEdInscSubstCol.Text,3)         + IIF(ChkInscrTributa.checked ,'S','N');
    DmCfg.CdsNFCNF_RAZAO.AsString          := StrZero(CEdRazaoLn.Text,3)          + StrZero(CEdRazaoCol.Text,3)             + IIF(ChkRazao.checked ,'S','N');
    DmCfg.CdsNFCNF_CNPJ.AsString           := StrZero(CEdCNPJ_CNPFLn.Text,3)      + StrZero(CEdCNPJ_CNPFCol.Text,3)         + IIF(ChkCNPJ_CNPF.checked ,'S','N');
    DmCfg.CdsNFCNF_DTEMISSAO.AsString      := StrZero(CEdDataEmissLn.Text,3)      + StrZero(CEdDataEmissCol.Text,3)         + IIF(ChkDataEmiss.checked ,'S','N');
    DmCfg.CdsNFCNF_ENDERECO.AsString       := StrZero(CEdEnderecoLn.Text,3)       + StrZero(CEdEnderecoCol.Text,3)          + IIF(ChkEndereco.checked ,'S','N');
    DmCfg.CdsNFCNF_BAIRRO.AsString         := StrZero(CEdBairroLn.Text,3)         + StrZero(CEdBairroCol.Text,3)            + IIF(ChkBairro.checked ,'S','N');
    DmCfg.CdsNFCNF_CEP.AsString            := StrZero(CEdCEPLn.Text,3)            + StrZero(CEdCEPCol.Text,3)               + IIF(ChkCEP.checked ,'S','N');
    DmCfg.CdsNFCNF_DTSAIDA.AsString        := StrZero(CEdDataSaidaLn.Text,3)      + StrZero(CEdDataSaidaCol.Text,3)         + IIF(ChkDataSaida.checked ,'S','N');
    DmCfg.CdsNFCNF_CIDADE.AsString         := StrZero(CEdCidadeLn.Text,3)         + StrZero(CEdCidadeCol.Text,3)            + IIF(ChkCidade.checked ,'S','N');
    DmCfg.CdsNFCNF_FONE.AsString           := StrZero(CEdFoneLn.Text,3)           + StrZero(CEdFoneCol.Text,3)              + IIF(ChkFone.checked ,'S','N');
    DmCfg.CdsNFCNF_ESTADO.AsString         := StrZero(CEdEstadoLn.Text,3)         + StrZero(CEdEstadoCol.Text,3)            + IIF(ChkEstado.checked ,'S','N');
    DmCfg.CdsNFCNF_INSCRESTADUAL.AsString  := StrZero(CEdInsc_EstaLn.Text,3)      + StrZero(CEdInsc_EstaCol.Text,3)         + IIF(ChkInscEst.checked ,'S','N');
    DmCfg.CdsNFCNF_HORASAIDA.AsString      := StrZero(CEdHoraSaidaLn.Text,3)      + StrZero(CEdHoraSaidaCol.Text,3)         + IIF(ChkHoraSaida.checked ,'S','N');
    DmCfg.CdsNFCNF_FATURA1.AsString        := StrZero(CEdFatura1Ln.Text,3)        + StrZero(CEdFatura1Col.Text,3)           + IIF(ChkFatura1.checked ,'S','N');
    DmCfg.CdsNFCNF_VENCTO1.AsString        := StrZero(CEdVenc1Ln.Text,3)          + StrZero(CEdVenc1Col.Text,3)             + IIF(ChkVenc1.checked ,'S','N');
    DmCfg.CdsNFCNF_VALOR1.AsString         := StrZero(CEdValor1Ln.Text,3)         + StrZero(CEdValor1Col.Text,3)            + IIF(ChkValor1.checked ,'S','N');
    DmCfg.CdsNFCNF_FATURA2.AsString        := StrZero(CEdFatura2Ln.Text,3)        + StrZero(CEdFatura2Col.Text,3)           + IIF(ChkFatura2.checked ,'S','N');
    DmCfg.CdsNFCNF_VENCTO2.AsString        := StrZero(CEdVenc2Ln.Text,3)          + StrZero(CEdVenc2Col.Text,3)             + IIF(ChkVenc2.checked ,'S','N');
    DmCfg.CdsNFCNF_VALOR2.AsString         := StrZero(CEdValor2Ln.Text,3)         + StrZero(CEdValor2Col.Text,3)            + IIF(ChkValor2.checked ,'S','N');
    DmCfg.CdsNFCNF_FATURA3.AsString        := StrZero(CEdFatura3Ln.Text,3)        + StrZero(CEdFatura3Col.Text,3)           + IIF(ChkFatura3.checked ,'S','N');
    DmCfg.CdsNFCNF_VENCTO3.AsString        := StrZero(CEdVenc3Ln.Text,3)          + StrZero(CEdVenc3Col.Text,3)             + IIF(ChkVenc3.checked ,'S','N');
    DmCfg.CdsNFCNF_VALOR3.AsString         := StrZero(CEdValor3Ln.Text,3)         + StrZero(CEdValor3Col.Text,3)            + IIF(ChkValor3.checked ,'S','N');
    DmCfg.CdsNFCNF_FATURA4.AsString        := StrZero(CEdFatura4Ln.Text,3)        + StrZero(CEdFatura4Col.Text,3)           + IIF(ChkFatura4.checked ,'S','N');
    DmCfg.CdsNFCNF_VENCTO4.AsString        := StrZero(CEdVenc4Ln.Text,3)          + StrZero(CEdVenc4Col.Text,3)             + IIF(ChkVenc4.checked ,'S','N');
    DmCfg.CdsNFCNF_VALOR4.AsString         := StrZero(CEdValor4Ln.Text,3)         + StrZero(CEdValor4Col.Text,3)            + IIF(ChkValor4.checked ,'S','N');
    DmCfg.CdsNFCNF_FATURA5.AsString        := StrZero(CEdFatura5Ln.Text,3)        + StrZero(CEdFatura5Col.Text,3)           + IIF(ChkFatura5.checked ,'S','N');
    DmCfg.CdsNFCNF_VENCTO5.AsString        := StrZero(CEdVenc5Ln.Text,3)          + StrZero(CEdVenc5Col.Text,3)             + IIF(ChkVenc5.checked ,'S','N');
    DmCfg.CdsNFCNF_VALOR5.AsString         := StrZero(CEdValor5Ln.Text,3)         + StrZero(CEdValor5Col.Text,3)            + IIF(ChkValor5.checked ,'S','N');
    DmCfg.CdsNFCNF_FATURA6.AsString        := StrZero(CEdFatura6Ln.Text,3)        + StrZero(CEdFatura6Col.Text,3)           + IIF(ChkFatura6.checked ,'S','N');
    DmCfg.CdsNFCNF_VENCTO6.AsString        := StrZero(CEdVenc6Ln.Text,3)          + StrZero(CEdVenc6Col.Text,3)             + IIF(ChkVenc6.checked ,'S','N');
    DmCfg.CdsNFCNF_VALOR6.AsString         := StrZero(CEdValor6Ln.Text,3)         + StrZero(CEdValor6Col.Text,3)            + IIF(ChkValor6.checked ,'S','N');
    DmCfg.CdsNFCNF_CODPRODUTO.AsString     := StrZero(CEdProdutoLn.Text,3)        + StrZero(CEdProdutoCol.Text,3)           + IIF(ChkProduto.checked ,'S','N');
    DmCfg.CdsNFCNF_DESPRODUTO.AsString     := StrZero(CEdProdutoDescLn.Text,3)    + StrZero(CEdProdutoDescCol.Text,3)       + IIF(ChkProdutoDesc.checked ,'S','N');
    DmCfg.CdsNFCNF_CFCOD.AsString          := StrZero(CEdCFLn.Text,3)             + StrZero(CEdCFCol.Text,3)                + IIF(ChkCF.checked ,'S','N');
    DmCfg.CdsNFCNF_CFAPEL.AsString         := StrZero(CEdCFapelidoLn.Text,3)      + StrZero(CEdCFapelidoCol.Text,3)         + IIF(ChkCFapelido.checked ,'S','N');
    DmCfg.CdsNFCNF_ST.AsString             := StrZero(CEdSTLn.Text,3)             + StrZero(CEdSTCol.Text,3)                + IIF(ChkST.checked ,'S','N');
    DmCfg.CdsNFCNF_UNIDADE.AsString        := StrZero(CEdUnidadeLn.Text,3)        + StrZero(CEdUnidadeCol.Text,3)           + IIF(ChkUnidade.checked ,'S','N');
    DmCfg.CdsNFCNF_QTDE.AsString           := StrZero(CEdQuantidadeLn.Text,3)     + StrZero(CEdQuantidadeCol.Text,3)        + IIF(ChkQtde.checked ,'S','N');
    DmCfg.CdsNFCNF_PRECOUNIT.AsString      := StrZero(CEdPrecoUnitLn.Text,3)      + StrZero(CEdPrecoUnitCol.Text,3)         + IIF(ChkPrecoUnit.checked ,'S','N');
    DmCfg.CdsNFCNF_PRECOTOTAL.AsString     := StrZero(CEdPrecoTotalLn.Text,3)     + StrZero(CEdPrecoTotalCol.Text,3)        + IIF(ChkPrecoTotal.checked ,'S','N');
    DmCfg.CdsNFCNF_ALIQICMS.AsString       := StrZero(CEdAliqICMSLn.Text,3)       + StrZero(CEdAliqICMSCol.Text,3)          + IIF(ChkAliqIcms.checked ,'S','N');
    DmCfg.CdsNFCNF_ALIQIPI.AsString        := StrZero(CEdAliqIPILn.Text,3)        + StrZero(CEdAliqIPICol.Text,3)           + IIF(ChkAliqIPI.checked ,'S','N');
    DmCfg.CdsNFCNF_VALORIPI.AsString       := StrZero(CEdValorIPILn.Text,3)       + StrZero(CEdValorIPICol.Text,3)      + IIF(ChkValorIPI.checked ,'S','N');
    DmCfg.CdsNFCNF_MENSAGE1.AsString       := StrZero(CEdMens1Ln.Text,3)          + StrZero(CEdMens1Col.Text,3)             + IIF(ChkMens1.checked ,'S','N');
    DmCfg.CdsNFCNF_MENSAGE2.AsString       := StrZero(CEdMens2Ln.Text,3)          + StrZero(CEdMens2Col.Text,3)             + IIF(ChkMens2.checked ,'S','N');
//    DmCfg.CdsNFCNF_MENSAPADRAO1.AsString   := StrZero(CEdMenPadrao1Ln.Text,3)     + StrZero(CEdMenPadrao1Col.Text,3)        + IIF(ChkMenPadrao.checked ,'S','N');
    DmCfg.CdsNFCNF_COMPDESCRI.AsString     := StrZero(CEdCompDescLn.Text,3)       + StrZero(CEdCompDescCol.Text,3)          + IIF(ChkCompDesc.checked ,'S','N');
    DmCfg.CdsNFCNF_BASEICMS.AsString       := StrZero(CEdBasICMSLn.Text,3)        + StrZero(CEdBasICMSCol.Text,3)           + IIF(ChkBasICMS.checked ,'S','N');
    DmCfg.CdsNFCNF_VLICMS.AsString         := StrZero(CEdValorICMSLn.Text,3)      + StrZero(CEdValorICMSCol.Text,3)         + IIF(ChkValICMS.checked ,'S','N');
    DmCfg.CdsNFCNF_BASESUBTRI.AsString     := StrZero(CEdBasSubstLn.Text,3)       + StrZero(CEdBasSubstCol.Text,3)          + IIF(ChkSubst.checked ,'S','N');
    DmCfg.CdsNFCNF_VLBASESUBTRI.AsString   := StrZero(CEdValorSubstLn.Text,3)     + StrZero(CEdValorSubstCol.Text,3)        + IIF(ChkValSubst.checked ,'S','N');
    DmCfg.CdsNFCNF_VLTOTPRODU.AsString     := StrZero(CEdValorTotProdLn.Text,3)   + StrZero(CEdValorTotProdCol.Text,3)      + IIF(ChkSaida.checked ,'S','N');
    DmCfg.CdsNFCNF_VLFRETE.AsString        := StrZero(CEdValorFretLn.Text,3)      + StrZero(CEdValorFretCol.Text,3)         + IIF(ChkFrete.checked ,'S','N');
    DmCfg.CdsNFCNF_VLSEGURO.AsString       := StrZero(CEdValorSeguLn.Text,3)      + StrZero(CEdValorSeguCol.Text,3)         + IIF(ChkValoSegu.checked ,'S','N');
    DmCfg.CdsNFCNF_DESPACESSO.AsString     := StrZero(CEdDespAceLn.Text,3)        + StrZero(CEdDespAceCol.Text,3)           + IIF(ChkDespAcess.checked ,'S','N');
    DmCfg.CdsNFCNF_VLTOTIPI.AsString       := StrZero(CEdTotIPILn.Text,3)         + StrZero(CEdTotIPICol.Text,3)            + IIF(ChkTotIPI.checked ,'S','N');
    DmCfg.CdsNFCNF_VLTOTNOTA.AsString      := StrZero(CEdValorTotalLn.Text,3)     + StrZero(CEdValorTotalCol.Text,3)        + IIF(ChkTotNota.checked ,'S','N');
    DmCfg.CdsNFCNF_TRANSP.AsString         := StrZero(CEdTranspLn.Text,3)         + StrZero(CEdTranspCol.Text,3)            + IIF(ChkTransp.checked ,'S','N');
    DmCfg.CdsNFCNF_FRETEPORCONTA.AsString  := StrZero(CEdFretPorCotLn.Text,3)     + StrZero(CEdFretPorCotCol.Text,3)        + IIF(ChkFretePorCot.checked ,'S','N');
    DmCfg.CdsNFCNF_PLACAVEICULO.AsString   := StrZero(CEdPlacaVeicLn.Text,3)      + StrZero(CEdPlacaVeicCol.Text,3)         + IIF(ChkPlacaVeic.checked ,'S','N');
    DmCfg.CdsNFCNF_PLACAESTADO.AsString    := StrZero(CEdPlacaUFLn.Text,3)        + StrZero(CEdPlacaUFCol.Text,3)           + IIF(ChkPlacaUF.checked ,'S','N');
    DmCfg.CdsNFCNF_CNPJTRANSP.AsString     := StrZero(CEdCNPJ_TransLn.Text,3)     + StrZero(CEdCNPJ_TransCol.Text,3)        + IIF(ChkCNPJ_Trans.checked ,'S','N');
    DmCfg.CdsNFCNF_ENDERETRANSP.AsString   := StrZero(CEdEndTransLn.Text,3)       + StrZero(CEdEndTransCol.Text,3)          + IIF(ChkEndeTrans.checked ,'S','N');
    DmCfg.CdsNFCNF_CIDADETRANSP.AsString   := StrZero(CEdCidadeTransLn.Text,3)    + StrZero(CEdCidadeTransCol.Text,3)       + IIF(ChkCidadeTrans.checked ,'S','N');
    DmCfg.CdsNFCNF_ESTADOTRANSP.AsString   := StrZero(CEdEstadoTransLn.Text,3)    + StrZero(CEdEstadoTransCol.Text,3)       + IIF(ChkEstadoTrans.checked ,'S','N');
    DmCfg.CdsNFCNF_INSCESTRANSP.AsString   := StrZero(CEdInscEstTransLn.Text,3)   + StrZero(CEdInscEstTransCol.Text,3)      + IIF(ChkInscEstTrans.checked ,'S','N');
    DmCfg.CdsNFCNF_QTDEVOTRANSP.AsString   := StrZero(CEdQtdeVolLn.Text,3)        + StrZero(CEdQtdeVolCol.Text,3)           + IIF(ChkQtdeVol.checked ,'S','N');
    DmCfg.CdsNFCNF_ESPECIETRANSP.AsString  := StrZero(CEdEspecieLn.Text,3)        + StrZero(CEdEspecieCol.Text,3)           + IIF(ChkEspecieVol.checked ,'S','N');
    DmCfg.CdsNFCNF_MARCA.AsString          := StrZero(CEdMarcaLn.Text,3)          + StrZero(CEdMarcaCol.Text,3)             + IIF(ChkMarca.checked ,'S','N');
    DmCfg.CdsNFCNF_NUMERO.AsString         := StrZero(CEdNumeroLn.Text,3)         + StrZero(CEdNumeroCol.Text,3)            + IIF(ChkNumero.checked ,'S','N');
    DmCfg.CdsNFCNF_PESOBRUTO.AsString      := StrZero(CEdPesoBrutoLn.Text,3)      + StrZero(CEdPesoBrutoCol.Text,3)         + IIF(ChkPesoBruto.checked ,'S','N');
    DmCfg.CdsNFCNF_PESOLIQUIDO.AsString    := StrZero(CEdPesoLiqLn.Text,3)        + StrZero(CEdPesoLiqCol.Text,3)           + IIF(ChkPesoLiq.checked ,'S','N');
    DmCfg.CdsNFCNF_REDESPTITULO.AsString   := StrZero(CEdRedespTituloLn.Text,3)   + StrZero(CEdRedespTituloCol.Text,3)      + IIF(ChkRedespTit.checked ,'S','N');
    DmCfg.CdsNFCNF_TRANSPRED.AsString      := StrZero(CEdTranspRedLn.Text,3)      + StrZero(CEdTranspRedCol.Text,3)         + IIF(ChkTranspRed.checked ,'S','N');
    DmCfg.CdsNFCNF_REDESPRUA.AsString      := StrZero(CEdRedespRuaLn.Text,3)      + StrZero(CEdRedespRuaCol.Text,3)         + IIF(ChkRedespRua.checked ,'S','N');
    DmCfg.CdsNFCNF_REDESPCID.AsString      := StrZero(CEdRedespCidLn.Text,3)      + StrZero(CEdRedespCidCol.Text,3)         + IIF(ChkRedespCid.checked ,'S','N');
    DmCfg.CdsNFCNF_ENTREGATITULO.AsString  := StrZero(CEdEntregaTituloLn.Text,3)  + StrZero(CEdEntregaTituloCol.Text,3)     + IIF(ChkEntregaTitulo.checked ,'S','N');
    DmCfg.CdsNFCNF_ENTREGARUA.AsString     := StrZero(CEdEntregaRuaLn.Text,3)     + StrZero(CEdEntregaRuaCol.Text,3)        + IIF(ChkEntregaRua.checked ,'S','N');
    DmCfg.CdsNFCNF_ENTREGACIDA.AsString    := StrZero(CEdEntregaCidaLn.Text,3)    + StrZero(CEdEntregaCidaCol.Text,3)       + IIF(ChkEntregaCida.checked ,'S','N');
    DmCfg.CdsNFCNF_COBRANCATITULO.AsString := StrZero(CEdCobrancaTituloLn.Text,3) + StrZero(CEdCobrancaTituloCol.Text,3)    + IIF(ChkCobrancaTitulo.checked ,'S','N');
    DmCfg.CdsNFCNF_COBRANCARUA.AsString    := StrZero(CEdCobrancaRuaLn.Text,3)    + StrZero(CEdCobrancaRuaCol.Text,3)       + IIF(ChkCobrancaRua.checked ,'S','N');
    DmCfg.CdsNFCNF_COBRANCACIDA.AsString   := StrZero(CEdCobrancaCidaLn.Text,3)   + StrZero(CEdCobrancaCidaCol.Text,3)      + IIF(ChkCobrancaCida.checked ,'S','N');
    DmCfg.CdsNFCNF_DADOAD1.AsString        := StrZero(CEdDadoAd1Ln.Text,3)        + StrZero(CEdDadoAd1Col.Text,3)           + IIF(ChkDadoAd1.Checked ,'S','N');
    DmCfg.CdsNFCNF_DADOAD2.AsString        := StrZero(CEdDadoAd2Ln.Text,3)        + StrZero(CEdDadoAd2Col.Text,3)           + IIF(ChkDadoAd2.Checked ,'S','N');
    DmCfg.CdsNFCNF_DADOAD3.AsString        := StrZero(CEdDadoAd3Ln.Text,3)        + StrZero(CEdDadoAd3Col.Text,3)           + IIF(ChkDadoAd3.Checked ,'S','N');
    DmCfg.CdsNFCNF_DADOAD4.AsString        := StrZero(CEdDadoAd4Ln.Text,3)        + StrZero(CEdDadoAd4Col.Text,3)           + IIF(ChkDadoAd4.Checked ,'S','N');
    DmCfg.CdsNFCNF_DADOAD5.AsString        := StrZero(CEdDadoAd5Ln.Text,3)        + StrZero(CEdDadoAd5Col.Text,3)           + IIF(ChkDadoAd5.Checked ,'S','N');
    DmCfg.CdsNFCNF_DADOAD6.AsString        := StrZero(CEdDadoAd6Ln.Text,3)        + StrZero(CEdDadoAd6Col.Text,3)           + IIF(ChkDadoAd6.Checked ,'S','N');
    DmCfg.CdsNFCNF_DADOAD7.AsString        := StrZero(CEdDadoAd7Ln.Text,3)        + StrZero(CEdDadoAd7Col.Text,3)           + IIF(ChkDadoAd7.Checked ,'S','N');
    DmCfg.CdsNFCNF_DADOAD8.AsString        := StrZero(CEdDadoAd8Ln.Text,3)        + StrZero(CEdDadoAd8Col.Text,3)           + IIF(ChkDadoAd8.Checked ,'S','N');
    DmCfg.CdsNFCNF_DADOAD9.AsString        := StrZero(CEdDadoAd9Ln.Text,3)        + StrZero(CEdDadoAd9Col.Text,3)           + IIF(ChkDadoAd9.Checked ,'S','N');
    DmCfg.CdsNFCNF_DADOAD10.AsString       := StrZero(CEdDadoAd10Ln.Text,3)       + StrZero(CEdDadoAd10Col.Text,3)          + IIF(ChkDadoAd10.checked ,'S','N');
    DmCfg.CdsNFCNF_DADOAD11.AsString       := StrZero(CEdDadoAd11Ln.Text,3)       + StrZero(CEdDadoAd11Col.Text,3)          + IIF(ChkDadoAd11.checked ,'S','N');
    DmCfg.CdsNFCNF_DADOAD12.AsString       := StrZero(CEdDadoAd12Ln.Text,3)       + StrZero(CEdDadoAd12Col.Text,3)          + IIF(ChkDadoAd12.checked ,'S','N');
    DmCfg.CdsNFCNF_NOTAFATURA.AsString     := StrZero(CEdNotaFaturaLn.Text,3)     + StrZero(CEdNotaFaturaCol.Text,3)        + IIF(ChkNotaFatura.checked ,'S','N');
    DmCfg.CdsNFCNF_ASSINTURA.AsString      := StrZero(CEdAssinturaLn.Text,3)      + StrZero(CEdAssinturaCol.Text,3)         + IIF(ChkAssinatura.checked ,'S','N');
    DmCfg.CdsNFCNF_DATAREC.AsString        := StrZero(CEdDataRecLn.Text,3)        + StrZero(CEdDataRecCol.Text,3)           + IIF(ChkDataRec.checked ,'S','N');
    {Demonstrativo do Calculo do ICMS}
    DmCfg.CdsNFCNF_DEMOCALC.AsString       := StrZero(CEdDadosCalcLn.Text,3)      + StrZero(CEdDadosCalcCol.Text,3)         + IIF(ChkDadoCalc.checked ,'S','N');

    DmCfg.CdsNF.ApplyUpdates(0);
    DmCfg.CdsNF.Refresh;
end;

procedure TFormParametros.Bit_ExcluirEtiqClick(Sender: tObject);
begin
    if DmCfg.CdsEtiq.IsEmpty Then
       Begin                                  // em uma Tabela Vazia.
           messagebeep($ffff);
           uteis.aviso('Não existe etiqueta cadastrada !');
           Bit_NovoEtiq.SetFocus;
           exit;
       end;
    if uteis.confirmacao ( 'Deseja excluir esta Etiqueta ?')= Mryes then
       begin
           DmCfg.CdsEtiq.Delete;
           DmCfg.CdsEtiq.ApplyUpdates(0);
           DmCfg.CdsEtiq.Refresh;
           DBNavigator1.SetFocus;
           MostrarEtiq;
       end
    else
       begin
           DmCfg.CdsEtiq.Cancel;
           DBNavigator1.SetFocus;
           MostrarEtiq;
       end;
end;

procedure TFormParametros.Bit_ExcluirDuplClick(Sender: tObject);
begin
    if DmCfg.CdsDupl.IsEmpty Then
       Begin                                  // em uma Tabela Vazia.
           messagebeep($ffff);
           uteis.aviso('Não existe duplicata cadastrada !');
           Bit_NovoDupl.SetFocus;
           exit;
       end;
    if uteis.confirmacao ( 'Deseja excluir esta Duplicata ?')= Mryes then
       begin
           DmCfg.CdsDupl.Delete;
           DmCfg.CdsDupl.ApplyUpdates(0);
           DmCfg.CdsDupl.Refresh;
           DBNavigator2.SetFocus;
           MostrarDupli;
       end
    else
       begin
           DmCfg.CdsDupl.Cancel;
           DBNavigator2.SetFocus;
           MostrarDupli;
       end;
end;

procedure TFormParametros.Bit_NovoDuplClick(Sender: tObject);
Var
  Codigo : Integer;
begin
    if uteis.confirmacao ( 'Deseja utilizar a Mesma Configuração ?') = mrNo then
       begin
           LimpaDupl;
       end;
    if not DmCfg.CdsDupl.IsEmpty then
       begin
           Group00.Enabled := True;
           DmCfg.CdsDupl.Last;
           Codigo := StrtoInt(DmCfg.CdsDuplCdU_CODIGO.AsString) + 1;
           DbCodigoDupl.Text := StrZero(IntToStr(Codigo),2);
           DmCfg.CdsDupl.Insert;
           DBDataDupli.Date := Date;
           DbCodigo.Enabled := False;
           DesBotoesDupl;
       end
    else
       begin
           Group00.Enabled := True;
           DbCodigoDupl.Text := '01';
           DmCfg.CdsDupl.Insert;
           DBDataDupli.Date := Date;
           DbCodigo.Enabled := False;
           DesBotoesDupl;
       end;
    ChkDupl.Checked  := False;
    ChkDupl.SetFocus;
end;

procedure TFormParametros.Bit_AlterarDuplClick(Sender: tObject);
begin
    DmCfg.CdsDupl.Edit;
    DesBotoesDupl;
    Group00.Enabled := True;
    ChkDupl.SetFocus;
end;

procedure TFormParametros.LimpaDupl;
begin
    DbCodigoDupl.Text         := '';
    DBDataDupli.Date          := Date;
    ChkDupl.Checked           := false;
    CLinhaDuplicata.Text      := '';
    ChkNatOperacaoDp.Checked  := false;
    CNatOperacaoLn.Text       := '';
    CNatOperacaoCol.Text      := '';
    ChkFaturaNuDp.Checked     := false;
    CFaturaNuLn.Text          := '';
    CFaturaNuCol.Text         := '';
    ChkNuOrdemDp.Checked      := false;
    CNuOrdemLn.Text           := '';
    CNuOrdemCol.Text          := '';
    ChkDescontoDp.Checked     := false;
    CdescontoLn.Text          := '';
    CdescontoCol.Text         := '';
    ChkDesctoRsDp.Checked     := false;
    CdesctoRsLn.Text          := '';
    CdesctoRsCol.Text         := '';
    ChkSacadoDp.Checked       := false;
    CSacadoLn.Text            := '';
    CSacadoCol.Text           := '';
    ChkBairroDp.Checked       := false;
    CBairroLn.Text            := '';
    CBairroCol.Text           := '';
    ChkEstadoDp.Checked       := false;
    CEstadoLn.Text            := '';
    CEstadoCol.Text           := '';
    ChkFoneDp.Checked         := false;
    CFoneLn.Text              := '';
    ChkEndCobrancaDp.Checked  := false;
    CEndCobrancaLn.Text       := '';
    CEndCobrancaCol.Text      := '';
    ChkCNPJ_CNPFDp.Checked    := false;
    CCNPJ_CNPFLn.Text         := '';
    CCNPJ_CNPFcol.Text        := '';
    ChkAceiteDp.Checked       := false;
    CAceiteLn.Text            := '';
    CAceiteCol.Text           := '';
    ChkEmissaoDp.Checked      := false;
    CEmissaoLn.Text           := '';
    CEmissaoCol.Text          := '';
    ChkValorDp.Checked        := false;
    CValorLn.Text             := '';
    CValorCol.Text            := '';
    ChkVencimentoDp.Checked   := false;
    CVencimentoLn.Text        := '';
    CVencimentoCol.Text       := '';
    ChkDesctoAteDp.Checked    := false;
    CdesctoAteLn.Text         := '';
    CdesctoAteCol.Text        := '';
    ChkCondEspDp.Checked      := false;
    CCondEspLn.Text           := '';
    CCondEspCol.Text          := '';
    ChkEnderecoDp.Checked     := false;
    CEnderecoLn.Text          := '';
    CEnderecoCol.Text         := '';
    ChkMunicipioDp.Checked    := false;
    CMunicipioLn.Text         := '';
    CMunicipioCol.Text        := '';
    ChkCepDp.Checked          := false;
    CCepLn.Text               := '';
    CCepCol.Text              := '';
    ChkPracaDp.Checked        := false;
    CPracaLn.Text             := '';
    CPracaCol.Text            := '';
    ChkCepPracaDp.Checked     := false;
    CCepPracaLn.Text          := '';
    CCepPracaCol.Text         := '';
    ChkInscricaoDp.Checked    := false;
    CInscricaoLn.Text         := '';
    CInscricaoCol.Text        := '';
    ChkValorExtensoDp.Checked := false;
    CValorExtensoLn.Text      := '';
    CValorExtensoCol.Text     := '';
end;

procedure TFormParametros.Bit_NovoEtiqClick(Sender: tObject);
Var
  Codigo : Integer;
begin
    if uteis.confirmacao ( 'Deseja utilizar a Mesma Configuração ?') = mrNo then
       begin
           LimpaEtiq;
       end;
    if not DmCfg.CdsEtiq.IsEmpty then
       begin
           Group02.Enabled := True;
           DmCfg.CdsEtiq.Last;
           Codigo := StrtoInt(DmCfg.CdsEtiqCET_CODIGO.AsString) + 1;
           DbCodigo.Text := StrZero(IntToStr(Codigo),2);
           DmCfg.CdsEtiq.Insert;
           Db_DescriEtiq.SetFocus;
           DbDataEtiq.Date := Date;
           Db_DescriEtiq.SetFocus;
           DbCodigo.Enabled := False;
           DesBotoesEtiq;
       end
    else
       begin
           Group02.Enabled := True;
           DbCodigo.Text := '01';
           DmCfg.CdsEtiq.Insert;
           DbCodigo.SetFocus;
           DbDataEtiq.Date := Date;
           Db_DescriEtiq.SetFocus;
           DbCodigo.Enabled := False;
           DesBotoesEtiq;
       end;
    DmCfg.CdsEtiqCET_ATIVO.AsString := 'N';
    DmCfg.CdsEtiqCET_ROTULO.AsString:= 'N';       
end;

procedure TFormParametros.Bit_AlterarEtiqClick(Sender: tObject);
begin
    DmCfg.CdsEtiq.Edit;
    DesBotoesEtiq;
    Group02.Enabled := True;
    Db_DescriEtiq.SetFocus;
end;

procedure TFormParametros.LimpaEtiq;
begin
    DbCodigo.Text             := '';
    DbDataEtiq.Date           := Date;
    RadCol1.Checked           := True;
    RadCol2.Checked           := False;
    RadCol3.Checked           := False;
    RadImpM.Checked           := False;
    RadImpL.Checked           := True;
    CiniCol1.Text             := '';
    CiniCol2.Text             := '';
    CiniCol3.Text             := '';
    CNumerLinhas.Text         := '';
    ChkCET_Cliente.Checked    := False;
    CET_ClienteLn.Text        := '';
    CET_ClienteCol.Text       := '';
    ChkCET_Endereco.Checked   := False;
    CET_EnderecoLn.Text       := '';
    CET_EnderecoCol.Text      := '';
    ChkCET_Cidade.Checked     := False;
    CET_CidadeLn.Text         := '';
    CET_CidadeCol.Text        := '';
    ChkCET_UF.Checked         := False;
    CET_UFLn .Text            := '';
    CET_UFCol.Text            := '';
    ChkCET_Cep.Checked        := False;
    CET_CepLn.Text            := '';
    CET_CepCol.Text           := '';
    ChkCET_Nota.Checked       := False;
    CET_NotaLn.Text           := '';
    CET_NotaCol.Text          := '';
    ChkCET_Quantidade.Checked := False;
    CET_QuantidadeLn.Text     := '';
    CET_QuantidadeCol.Text    := '';
    ChkCET_Peso.Checked       := False;
    CET_PesoLn.Text           := '';
    CET_PesoCol.Text          := '';
    ChkCET_CodProd.Checked    := False;
    CET_CodProdLn.Text        := '';
    CET_CodProdCol.Text       := '';
    ChkCET_Produto.Checked    := False;
    CET_ProdutoLn.text        := '';
    CET_ProdutoCol.text       := '';
    ChkCET_Transp.Checked     := False;
    CET_TranspLn.text         := '';
    CET_TranspCol.Text        := '';
    ChkCET_EndTran.Checked    := False;
    CET_EndTranLn.text        := '';
    CET_EndTranCol.Text       := '';
    ChkCET_CidTran.Checked    := False;
    CET_CidTranLn.text        := '';
    CET_CidTranCol.Text       := '';
    ChkCET_CepTran.Checked    := False;
    CET_CepTranLn.Text        := '';
    CET_CepTranCol.text       := '';
    ChkCET_CepTran.Checked    := False;
    CET_CepTranLn.text        := '';
    CET_CepTranCol.Text       := '';
end;

procedure TFormParametros.Bit_GravarDuplClick(Sender: tObject);
begin
    GravarDupli;
    HabBotoesDupl;
    EscondeBotoes;
    DbCodigoDupl.Enabled := True;
    Group00.Enabled := False;
    DBNavigator2.SetFocus;
end;

procedure TFormParametros.Bit_GravarEtiqClick(Sender: tObject);
begin
    GravarEtiq;
    HabBotoesEtiq;
    EscondeBotoes;
    DbCodigo.Enabled := True;
    Group02.Enabled := False;
    DBNavigator1.SetFocus;
    PageControl1.ActivePage.SetFocus;
end;

procedure TFormParametros.LimpaBloq;
begin
    DbCodBloq.Text            := '';
    ChkBloq.Checked           := True;
    DbCodBco.Text             := '';
    DbNLinhas.Text            := '';
    Bol_LocalLn.Text          := '';
    Bol_LocalCol.Text         := '';
    ChkBol_Local.Checked      := False;
    Bol_VenctoLn.Text         := '';
    Bol_VenctoCol.Text        := '';
    ChkBol_Vencto.Checked     := False;
    Bol_DtEmisLn.Text         := '';
    Bol_DtEmisCol.Text        := '';
    ChkBol_DtEmis.Checked     := False;
    Bol_CodFatLn.Text         := '';
    Bol_CodFatCol.Text        := '';
    ChkBol_CodFat.Checked     := False;
    Bol_EspDocLn.Text         := '';
    Bol_EspDocCol.Text        := '';
    ChkBol_EspDoc.Checked     := False;
    Bol_AceiteLn.Text         := '';
    Bol_AceiteCol.Text        := '';
    ChkBol_Aceite.Checked     := False;
    Bol_DtProceLn.Text        := '';
    Bol_DtProceCol.Text       := '';
    ChkBol_DtProce.Checked    := False;
    Bol_UsoBcoLn.Text         := '';
    Bol_UsoBcoCol.Text        := '';
    ChkBol_UsoBco.Checked     := False;
    Bol_CarteiraLn.Text       := '';
    Bol_CarteiraCol.Text      := '';
    ChkBol_Carteira.Checked   := False;
    Bol_VlParcLn.Text         := '';
    Bol_VlParcCol.Text        := '';
    ChkBol_VlParc.Checked     := False;
    Bol_EspecieLn.Text        := '';
    Bol_EspecieCol.Text       := '';
    ChkBol_Especie.Checked    := False;
    Bol_QtdeLn.Text           := '';
    ChkBol_Qtde.Checked       := False;
    Bol_VlDocLn.Text          := '';
    Bol_VlDocCol.Text         := '';
    ChkBol_VlDoc.Checked      := False;
    Bol_DescLn.Text           := '';
    Bol_DescCol.Text          := '';
    ChkBol_Desc.Checked       := False;
    Bol_JurosLn.Text          := '';
    Bol_JurosCol.Text         := '';
    ChkBol_Juros.Checked      := False;
    Bol_EspDocLn.Text         := '';
    Bol_EspDocCol.Text        := '';
    ChkBol_EspDoc.Checked     := False;
    Bol_Obs1Ln.Text           := '';
    Bol_Obs1Col.Text          := '';
    ChkBol_Obs1.Checked       := False;
    Bol_Obs2Ln.Text           := '';
    Bol_Obs2Col.Text          := '';
    ChkBol_Obs2.Checked       := False;
    Bol_Obs3Ln.Text           := '';
    Bol_Obs3Col.Text          := '';
    ChkBol_Obs3.Checked       := False;
    Bol_OutLn.Text            := '';
    Bol_OutCol.Text           := '';
    ChkBol_out.Checked        := False;
    Bol_MoraLn.Text           := '';
    Bol_MoraCol.Text          := '';
    ChkBol_Mora.Checked       := False;
    Bol_OutAcLn.Text          := '';
    Bol_OutAcCol.Text         := '';
    ChkBol_OutAc.Checked      := False;
    Bol_VlCoLn.Text           := '';
    Bol_VlCoCol.Text          := '';
    ChkBol_VlCo.Checked       := False;
    Bol_RazaoLn.Text          := '';
    ChkBol_Razao.Checked      := False;
    Bol_EndLn.Text            := '';
    Bol_EndCol.Text           := '';
    ChkBol_End.Checked        := False;
    Bol_CepLn.Text            := '';
    Bol_CepCol.Text           := '';
    ChkBol_Cep.Checked        := False;
    Bol_CidLn.Text            := '';
    Bol_CidCol.Text           := '';
    ChkBol_Cid.Checked        := False;
    Bol_EstLn.Text            := '';
    Bol_EstCol.Text           := '';
    ChkBol_Est.Checked        := False;
    Bol_CnpjLn.Text           := '';
    ChkBol_Cnpj.Checked       := False;
    DbBol_Local.Text          := '';
    DbBol_Obs1.Text           := '';
    DbBol_Obs2.Text           := '';
    DbBol_Obs3.Text           := '';
    DbBol_Obs4.Text           := '';
end;

procedure TFormParametros.LimpaNota;
begin
    DBCodigoNota.Text         := '';
    DBDataNFs.Date            := Date;
    ClinhaNota.Text           := '';
    ChkSaida.Checked          := False;
    CEdSaidaLn.Text           := '';
    CEdSaidaCol.Text          := '';
    ChkEntrada.Checked        := False;
    CEdEntradaLn.Text         := '';
    CEdEntradaCol.Text        := '';
    ChkNumNota.Checked        := False;
    CEdNumNotaLn.Text         := '';
    CEdNumNotaCol.Text        := '';
    ChkNatOpe.Checked         := False;
    CEdNatOpeLn.Text          := '';
    CEdNatOpeCol.Text         := '';
    ChkCFOP.Checked           := False;
    CEdCFOPLn.Text            := '';
    CEdCFOPCol.Text           := '';
    ChkInscrTributa.Checked   := False;
    CEdInscSubstLn.Text       := '';
    CEdInscSubstCol.Text      := '';
    ChkRazao.Checked          := False;
    CEdRazaoLn.Text           := '';
    CEdRazaoCol.Text          := '';
    ChkCNPJ_CNPF.Checked      := False;
    CEdCNPJ_CNPFLn.Text       := '';
    CEdCNPJ_CNPFCol.Text      := '';
    ChkDataEmiss.Checked      := False;
    CEdDataEmissLn.Text       := '';
    CEdDataEmissCol.Text      := '';
    ChkEndereco.Checked       := False;
    CEdEnderecoLn.Text        := '';
    ChkBairro.Checked         := False;
    CEdBairroLn.Text          := '';
    CEdBairroCol.Text         := '';
    ChkCEP.Checked            := False;
    CEdCEPLn.Text             := '';
    CEdCEPCol.Text            := '';
    ChkDataSaida.Checked      := False;
    CEdDataSaidaLn.Text       := '';
    CEdDataSaidaCol.Text      := '';
    ChkCidade.Checked         := False;
    CEdCidadeLn.Text          := '';
    CEdCidadeCol.Text         := '';
    ChkFone.Checked           := False;
    CEdFoneLn.Text            := '';
    CEdFoneCol.Text           := '';
    ChkEstado.Checked         := False;
    CEdEstadoLn.Text          := '';
    CEdEstadoCol.Text         := '';
    ChkInscEst.Checked        := False;
    CEdInsc_EstaLn.Text       := '';
    CEdInsc_EstaCol.Text      := '';
    ChkHoraSaida.Checked      := False;
    CEdHoraSaidaLn.Text       := '';
    CEdHoraSaidaCol.Text      := '';
    ChkFatura1.Checked        := False;
    CEdFatura1Ln.Text         := '';
    CEdFatura1Col.Text        := '';
    ChkFatura2.Checked        := False;
    CEdFatura2Ln.Text         := '';
    CEdFatura2Col.Text        := '';
    ChkFatura3.Checked        := False;
    CEdFatura3Ln.Text         := '';
    CEdFatura3Col.Text        := '';
    ChkFatura4.Checked        := False;
    CEdFatura4Ln.Text         := '';
    CEdFatura4Col.Text        := '';
    ChkFatura5.Checked        := False;
    CEdFatura5Ln.Text         := '';
    CEdFatura5Col.Text        := '';
    ChkFatura6.Checked        := False;
    CEdFatura6Ln.Text         := '';
    CEdFatura6Col.Text        := '';
    ChkVenc1.Checked          := False;
    CEdVenc1Ln.Text           := '';
    CEdVenc1Col.Text          := '';
    ChkVenc2.Checked          := False;
    CEdVenc2Ln.Text           := '';
    CEdVenc2Col.Text          := '';
    ChkVenc3.Checked          := False;
    CEdVenc3Ln.Text           := '';
    CEdVenc3Col.Text          := '';
    ChkVenc4.Checked          := False;
    CEdVenc4Ln.Text           := '';
    CEdVenc4Col.Text          := '';
    ChkVenc5.Checked          := False;
    CEdVenc5Ln.Text           := '';
    CEdVenc5Col.Text          := '';
    ChkVenc6.Checked          := False;
    CEdVenc6Ln.Text           := '';
    CEdVenc6Col.Text          := '';
    ChkValor1.Checked         := False;
    CEdValor1Ln.Text          := '';
    CEdValor1Col.Text         := '';
    ChkValor2.Checked         := False;
    CEdValor2Ln.Text          := '';
    CEdValor2Col.Text         := '';
    ChkValor3.Checked         := False;
    CEdValor3Ln.Text          := '';
    CEdValor3Col.Text         := '';
    ChkValor4.Checked         := False;
    CEdValor4Ln.Text          := '';
    CEdValor4Col.Text         := '';
    ChkValor5.Checked         := False;
    CEdValor5Ln.Text          := '';
    CEdValor5Col.Text         := '';
    ChkValor6.Checked         := False;
    CEdValor6Ln.Text          := '';
    CEdValor6Col.Text         := '';
    ChkProduto.Checked        := False;
    CEdProdutoLn.Text         := '';
    CEdProdutoCol.Text        := '';
    ChkProdutoDesc.Checked    := False;
    CEdProdutoDescLn.Text     := '';
    CEdProdutoDescCol.Text    := '';
    ChkCF.Checked             := False;
    CEdCFLn.Text              := '';
    CEdCFCol.Text             := '';
    ChkCFapelido.Checked      := False;
    CEdCFapelidoLn.Text       := '';
    CEdCFapelidoCol.Text      := '';
    ChkST.Checked             := False;
    CEdSTLn.Text              := '';
    CEdSTCol.Text             := '';
    ChkUnidade.Checked        := False;
    CEdUnidadeLn.Text         := '';
    CEdUnidadeCol.Text        := '';
    ChkQtde.Checked           := False;
    CEdQuantidadeLn.Text      := '';
    CEdQuantidadeCol.Text     := '';
    ChkPrecoUnit.Checked      := False;
    CEdPrecoUnitLn.Text       := '';
    CEdPrecoUnitCol.Text      := '';
    ChkPrecoTotal.Checked     := False;
    CEdPrecoTotalLn.Text      := '';
    CEdPrecoTotalCol.Text     := '';
    ChkAliqIcms.Checked       := False;
    CEdAliqICMSLn.Text        := '';
    CEdAliqICMSCol.Text       := '';
    ChkAliqIPI.Checked        := False;
    CEdAliqIPILn.Text         := '';
    CEdAliqIPICol.Text        := '';
    ChkValorIPI.Checked       := False;
    CEdValorIPILn.Text        := '';
    CEdValorIPICol.Text       := '';
    ChkMens1.Checked          := False;
    CEdMens1Ln.Text           := '';
    CEdMens1Col.Text          := '';
    ChkMens2.Checked          := False;
    CEdMens2Ln.Text           := '';
    CEdMens2Col.Text          := '';
//    ChkMenPadrao.Checked      := False;
//    CEdMenPadrao1Ln.Text      := '';
//    CEdMenPadrao1Col.Text     := '';
    ChkCompDesc.Checked       := False;
    CEdCompDescLn.Text        := '';
    CEdCompDescCol.Text       := '';
    ChkBasICMS.Checked        := False;
    CEdBasICMSLn.Text         := '';
    CEdBasICMSCol.Text        := '';
    ChkValICMS.Checked        := False;
    CEdValorICMSLn.Text       := '';
    CEdValorICMSCol.Text      := '';
    ChkSubst.Checked          := False;
    CEdBasSubstLn.Text        := '';
    CEdBasSubstCol.Text       := '';
    ChkValSubst.Checked       := False;
    CEdValorSubstLn.Text      := '';
    CEdValorSubstCol.Text     := '';
    ChkTotProd.Checked        := False;
    CEdValorTotProdLn.Text    := '';
    CEdValorTotProdCol.Text   := '';
    ChkFrete.Checked          := False;
    CEdValorFretLn.Text       := '';
    CEdValorFretCol.Text      := '';
    ChkValoSegu.Checked       := False;
    CEdValorSeguLn.Text       := '';
    CEdValorSeguCol.Text      := '';
    ChkDespAcess.Checked      := False;
    CEdDespAceLn.Text         := '';
    CEdDespAceCol.Text        := '';
    ChkTotIPI.Checked         := False;
    CEdTotIPILn.Text          := '';
    CEdTotIPICol.Text         := '';
    ChkTotNota.Checked        := False;
    CEdValorTotalLn.Text      := '';
    CEdValorTotalCol.Text     := '';
    ChkTransp.Checked         := False;
    CEdTranspLn.Text          := '';
    CEdTranspCol.Text         := '';
    ChkFretePorCot.Checked    := False;
    CEdFretPorCotLn.Text      := '';
    CEdFretPorCotCol.Text     := '';
    ChkPlacaVeic.Checked      := False;
    CEdPlacaVeicLn.Text       := '';
    CEdPlacaVeicCol.Text      := '';
    ChkPlacaUF.Checked        := False;
    CEdPlacaUFLn.Text         := '';
    CEdPlacaUFCol.Text        := '';
    ChkCNPJ_Trans.Checked     := False;
    CEdCNPJ_TransLn.Text      := '';
    CEdCNPJ_TransCol.Text     := '';
    ChkEndeTrans.Checked      := False;
    CEdEndTransLn.Text        := '';
    CEdEndTransCol.Text       := '';
    ChkCidadeTrans.Checked    := False;
    CEdCidadeTransLn.Text     := '';
    CEdCidadeTransCol.Text    := '';
    ChkEstadoTrans.Checked    := False;
    CEdEstadoTransLn.Text     := '';
    CEdEstadoTransCol.Text    := '';
    ChkInscEstTrans.Checked   := False;
    CEdInscEstTransLn.Text    := '';
    CEdInscEstTransCol.Text   := '';
    ChkQtdeVol.Checked        := False;
    CEdQtdeVolLn.Text         := '';
    CEdQtdeVolCol.Text        := '';
    ChkEspecieVol.Checked     := False;
    CEdEspecieLn.Text         := '';
    CEdEspecieCol.Text        := '';
    ChkMarca.Checked          := False;
    CEdMarcaLn.Text           := '';
    CEdMarcaCol.Text          := '';
    ChkNumero.Checked         := False;
    CEdNumeroLn.Text          := '';
    CEdNumeroCol.Text         := '';
    ChkPesoBruto.Checked      := False;
    CEdPesoBrutoLn.Text       := '';
    CEdPesoBrutoCol.Text      := '';
    ChkPesoLiq.Checked        := False;
    CEdPesoLiqLn.Text         := '';
    CEdPesoLiqCol.Text        := '';
    ChkRedespTit.Checked      := False;
    CEdRedespTituloLn.Text    := '';
    CEdRedespTituloCol.Text   := '';
    ChkTranspRed.Checked      := False;
    CEdTranspRedLn.Text       := '';
    CEdTranspRedCol.Text      := '';
    ChkRedespRua.Checked      := False;
    CEdRedespRuaLn.Text       := '';
    CEdRedespRuaCol.Text      := '';
    ChkRedespCid.Checked      := False;
    CEdRedespCidLn.Text       := '';
    CEdRedespCidCol.Text      := '';
    ChkEntregaTitulo.Checked  := False;
    CEdEntregaTituloLn.Text   := '';
    CEdEntregaTituloCol.Text  := '';
    ChkEntregaRua.Checked     := False;
    CEdEntregaRuaLn.Text      := '';
    CEdEntregaRuaCol.Text     := '';
    ChkEntregaCida.Checked    := False;
    CEdEntregaCidaLn.Text     := '';
    CEdEntregaCidaCol.Text    := '';
    ChkCobrancaTitulo.Checked := False;
    CEdCobrancaTituloLn.Text  := '';
    CEdCobrancaTituloCol.Text := '';
    ChkCobrancaRua.Checked    := False;
    CEdCobrancaRuaLn.Text     := '';
    CEdCobrancaRuaCol.Text    := '';
    ChkCobrancaCida.Checked   := False;
    CEdCobrancaCidaLn.Text    := '';
    CEdCobrancaCidaCol.Text   := '';
    ChkDadoAd1.Checked        := False;
    CEdDadoAd1Ln.Text         := '';
    CEdDadoAd1Col.Text        := '';
    ChkDadoAd1.Checked        := False;
    CEdDadoAd1Ln.Text         := '';
    CEdDadoAd1Col.Text        := '';
    ChkDadoAd2.Checked        := False;
    CEdDadoAd2Ln.Text         := '';
    CEdDadoAd2Col.Text        := '';
    ChkDadoAd3.Checked        := False;
    CEdDadoAd3Ln.Text         := '';
    CEdDadoAd3Col.Text        := '';
    ChkDadoAd4.Checked        := False;
    CEdDadoAd4Ln.Text         := '';
    CEdDadoAd4Col.Text        := '';
    ChkDadoAd5.Checked        := False;
    CEdDadoAd5Ln.Text         := '';
    CEdDadoAd5Col.Text        := '';
    ChkDadoAd6.Checked        := False;
    CEdDadoAd6Ln.Text         := '';
    CEdDadoAd6Col.Text        := '';
    ChkDadoAd7.Checked        := False;
    CEdDadoAd7Ln.Text         := '';
    CEdDadoAd7Col.Text        := '';
    ChkDadoAd8.Checked        := False;
    CEdDadoAd8Ln.Text         := '';
    CEdDadoAd8Col.Text        := '';
    ChkDadoAd9.Checked        := False;
    CEdDadoAd9Ln.Text         := '';
    CEdDadoAd9Col.Text        := '';
    ChkDadoAd10.Checked       := False;
    CEdDadoAd10Ln.Text        := '';
    CEdDadoAd10Col.Text       := '';
    ChkDadoAd11.Checked       := False;
    CEdDadoAd11Ln.Text        := '';
    CEdDadoAd11Col.Text       := '';
    ChkDadoAd12.Checked       := False;
    CEdDadoAd12Ln.Text        := '';
    CEdDadoAd12Col.Text       := '';
    ChkNotaFatura.Checked     := False;
    CEdNotaFaturaLn.Text      := '';
    CEdNotaFaturaCol.Text     := '';
    ChkAssinatura.Checked     := False;
    CEdAssinturaLn.Text       := '';
    CEdAssinturaCol.Text      := '';
    ChkDataRec.Checked        := False;
    CEdDataRecLn.Text         := '';
    CEdDataRecCol.Text        := '';
end;

procedure TFormParametros.Bit_NovoNFsClick(Sender: tObject);
Var
  Codigo : Integer;
begin
    if uteis.confirmacao ( 'Deseja utilizar a Mesma Configuração ?') = mrNo then
       begin
           LimpaNota;
       end;
    if not DmCfg.CdsNF.IsEmpty then
       begin
           Group03.Enabled := True;
           DmCfg.CdsNF.Last;
           Codigo := StrtoInt(DmCfg.CdsNFCNF_CODIGO.AsString) + 1;
           DbCodigoNota.Text := StrZero(IntToStr(Codigo),2);
           DmCfg.CdsNF.Insert;
           DBDataNFs.Date := Date;
           DbCodigo.Enabled := False;
           DesBotoesNota;
       end
    else
       begin
           Group03.Enabled := True;
           DbCodigoNota.Text := '01';
           DmCfg.CdsNF.Insert;
           DBDataNFs.Date := Date;
           DbCodigo.Enabled := False;
           DesBotoesNota;
       end;
    ChkNfs.Checked := False;
    ChkNFs.SetFocus;
end;

procedure TFormParametros.Bit_AlterarNFsClick(Sender: tObject);
begin
    DmCfg.CdsNF.Edit;
    DesBotoesNota;
    Group03.Enabled := True;
    ChkNFs.SetFocus;
end;

procedure TFormParametros.Bit_ExcluirNFsClick(Sender: tObject);
begin
    if DmCfg.Cdsnf.IsEmpty Then
       Begin                                  // em uma Tabela Vazia.
           messagebeep($ffff);
           uteis.aviso('Não existe nota fiscal cadastrado !');
           Bit_NovoNFs.SetFocus;
           exit;
       end;
    if uteis.confirmacao ( 'Deseja excluir esta Nota Fiscal ?')= Mryes then
       begin
           DmCfg.CdsNF.Delete;
           DmCfg.CdsNF.ApplyUpdates(0);
           DmCfg.CdsNF.Refresh;
           DBNavigator3.SetFocus;
           MostrarNFs;
       end
    else
       begin
           DmCfg.CdsNF.Cancel;
           DBNavigator3.SetFocus;
           MostrarNFs;
       end;
end;

procedure TFormParametros.Bit_GravarNFsClick(Sender: tObject);
begin
   if (DbChkItem.checked ) and (DBEdit15.Text = '') then
      Begin
         uteis.aviso('Informe o número maximo de itens por nota !');
         DBEdit15.SetFocus;
      end
   else
     begin
        GravarNFs;
        HabBotoesNota;
        EscondeBotoes;
        DbCodigoNota.Enabled := True;
        Group03.Enabled := False;
        DBNavigator3.SetFocus;
    end;    
end;

procedure TFormParametros.Bit_SairNFsClick(Sender: tObject);
begin
    Close;
end;

procedure TFormParametros.BotoesAcesso;
begin
     if assigned(FormParametros) then
     begin
       Bit_novo.Enabled := Uteis.AcessoUsuario('ConfiguraçõesParametros',DBInicio.Usuario.CODIGO,FormParametros).Incluir;
       Bit_Excluir.Enabled := Uteis.AcessoUsuario('ConfiguraçõesParametros',DBInicio.Usuario.CODIGO,FormParametros).Exluir;
       DataCadastros1.DsParametros.AutoEdit := Uteis.AcessoUsuario('ConfiguraçõesParametros',DBInicio.Usuario.CODIGO,FormParametros).Alterar;
     end;
end;

procedure TFormParametros.btAbrePastaOPClick(Sender: TObject);
begin
  inherited;
  if DataCadastros1.CdsParametros.State = dsBrowse  then
    DataCadastros1.CdsParametros.Edit;
  AbrePastaOP.Execute();
  DataCadastros1.CdsParametrosPMT_CAMINHO_IMAGEM_OP.AsString := AbrePastaOP.Directory;
end;

procedure TFormParametros.Bit_GravarClick(Sender: tObject);
begin
    if (dbrgLancaCCVerba.ItemIndex = 1) and (cbFormaPagamento.idRetorno = '') then
    begin
      MessageDlg('No Financeiro > Lançamento de Conta Corrente/Verba, Informe a Forma de Pagamento', mtWarning, [mbOK],0 );
      Exit;
    end;

    if (DataCadastros1.CdsParametrosPMT_SEQUENCIA_UNICA_PEDIDO.AsString <> DataCadastros1.CdsParametrosPMT_SEQUENCIA_UNICA_PEDIDO.OldValue)AND(DataCadastros1.CdsParametrosPMT_SEQUENCIA_UNICA_PEDIDO.AsString = 'S') then
      begin
         dataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :='update SYS_SEQUENCIADOR t1 set t1.SEQUENCIA_VALOR = (SELECT '+
                                                'COALESCE(MAX(T1.SEQUENCIA_VALOR),1) '+
                                                'FROM SYS_SEQUENCIADOR T1  where (t1.SEQUENCIA_TABELA = ''PED0000'') AND '+
                                                '      (t1.SEQUENCIA_CAMPO = ''PED_CODIGO'')) where (t1.SEQUENCIA_TABELA = ''PED0000'') AND '+
                                                '(t1.SEQUENCIA_CAMPO = ''PED_CODIGO'')';
         dataCadastros.sqlUpdate.Execsql;
         dataCadastros.sqlUpdate.Close;
         dataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :='DELETE FROM SYS_SEQUENCIADOR_PENDENCIAS T1  where (t1.SEQUENCIA_TABELA = ''PED0000'') AND '+
                                                '(t1.SEQUENCIA_CAMPO = ''PED_CODIGO'')';
         dataCadastros.sqlUpdate.Execsql;
         dataCadastros.sqlUpdate.Close;
      end;


    //
    if (Rad_1.checked ) then
       DataCadastros1.CdsParametrosSIN_ARQ_MAGNETICO.AsString := '1';
    if (Rad_2.checked ) then
       DataCadastros1.CdsParametrosSIN_ARQ_MAGNETICO.AsString := '2';
    if (Rad_3.checked ) then
       DataCadastros1.CdsParametrosSIN_ARQ_MAGNETICO.AsString := '3';
    //
    DataCadastros1.CdsParametrosPMT_TP_COBRANCA.AsString := IIF(CbxCarteira.ItemIndex = 0,''  ,
                                                            IIF(CbxCarteira.ItemIndex = 1,'CT',               //CT = CARTEIRA
                                                            IIF(CbxCarteira.ItemIndex = 2,'CS',               //CS = COBRANCA SIMPLES
                                                            IIF(CbxCarteira.ItemIndex = 3,'CC',               //CC = COBRANCA CAUCIONADA
                                                            IIF(CbxCarteira.ItemIndex = 4,'Cd',               //Cd = COBRANCA DESCONTADA
                                                            IIF(CbxCarteira.ItemIndex = 5,'SR',               //SR = COBRANCA SEM REGISTRO
                                                            IIF(CbxCarteira.ItemIndex = 6,'CR',               //CR = COBRANCA RAPIDA
                                                            IIF(CbxCarteira.ItemIndex = 7,'CQ','CH'))))))));  //CQ = CUSTODIA CHEQUE / CH = CHEQUE DESCONTADO
    //
    DataCadastros1.CdsParametrosPMT_TP_DOCTO.AsString := IIF(CbxTipoDoc.ItemIndex = 0,'',
                                                         IIF(CbxTipoDoc.ItemIndex = 1,'DP',
                                                         IIF(CbxTipoDoc.ItemIndex = 2,'BL',
                                                         IIF(CbxTipoDoc.ItemIndex = 3,'RC',
                                                         IIF(CbxTipoDoc.ItemIndex = 4,'CH',
                                                         IIF(CbxTipoDoc.ItemIndex = 5,'DN',
                                                         IIF(CbxTipoDoc.ItemIndex = 6,'OU','CC')))))));


     DataCadastros1.CdsParametrosPMT_GERAR_NUM_LOTE.AsString := IIF(Rad_Lote_Automatico.Checked,'A','M');
     DataCadastros1.CdsParametrosPMT_LOTE_AUTOMATICO.AsString := IIF(rbLoteAutomatico.Checked,'A','M');
    //
    if (DataCadastros1.CdsParametros.State in [dsInsert]) then
       DataCadastros1.CdsParametrosEMP_CODIGO.AsString   := Edt_Empresa.Text;
    DataCadastros1.CdsParametrosPMT_AMX_ENTRADA.AsVariant := CbAlmoxarifadoEntrada.EditValue;
    DataCadastros1.CdsParametrosPMT_AMX_VENDA.AsVariant := CbAlmoxarifadoVenda.EditValue;
    DataCadastros1.CdsParametrosPMT_AMX_FATURAMENTO.AsVariant := CbAlmoxarifadoFaturamento.EditValue;
    DataCadastros1.CdsParametrosPMT_AMX_PRODUCAO_ENTRADA.AsVariant := CbAlmoxarifadoProducaoEntrada.EditValue;
    DataCadastros1.CdsParametrosPMT_AMX_PRODUCAO_SAIDA.AsVariant := CbAlmoxarifadoProducaoSaida.EditValue;
    DataCadastros1.CdsParametrosPMT_AMX_ENVASE_SAIDA.AsVariant := CbAlmoxarifadoEnvaseSaida.EditValue;
    DataCadastros1.CdsParametrosPMT_OS_DATA_EMISSAO.AsDateTime := dbOSDataEmissao.Date;
    DataCadastros1.CdsParametrosPMT_LANCA_CC_VERBA_FPG_REGISTRO.AsString := cbFormaPagamento.idRetorno;
    DataCadastros1.CdsParametros.ApplyUpdates(0);
    DataCadastros1.CdsParametros.Refresh;
    HabilitaBotao;
    fAlterou:=True;
    cbInformacoesObrigatoriasParaClienteSemCadastro.Enabled := cbHabilitaOrcamentoParaClienteSemCadastro.Checked;
end;

procedure TFormParametros.Bit_CancelarClick(Sender: tObject);
begin
    DataCadastros1.CdsParametros.CancelUpdates;
    MostraDadosGlobal;
    HabilitaBotao;
//  Edt_Empresa.SetFocus;
end;

procedure TFormParametros.VerificaEdicaoBloq;
begin
    // verifica estado da tabela em edicao e inclusao
    screen.cursor :=crHourglass;
    if DmCfg.CdsBloq.State in [dsEdit,dsInsert] then
       begin
           if uteis.confirmacao ( 'Deseja salvar alterações do Bloqueto Bancário ?') = idyes then
              begin
                  DmCfg.CdsBloq.ApplyUpdates(0);
                  HabBotoesBloq;
              end
           else
              begin
                  DmCfg.CdsBloq.Cancel;
                  HabBotoesBloq;
              end;
       end;
    screen.cursor := crDefault;
end;

procedure TFormParametros.MostraBloq;
begin
    DbCodBloq.Text            := DmCfg.CdsBloqBOL_CODBOL.AsString;
    ChkBloq.Checked           := IIF(DmCfg.CdsBloqBOL_ATIVO.AsString='S','TRUE','FALSE');
    DbCodBco.Text             := DmCfg.CdsBloqBOL_CODBAN.AsString;
    BuscaBco;
    DbNLinhas.Text            := DmCfg.CdsBloqBOL_NRLINHA.AsString;

    Bol_LocalLn.Text          := COPY(DMCFG.CdsBloqBOL_LOCAL.AsString,1,3);
    Bol_LocalCol.Text         := COPY(DMCFG.CdsBloqBOL_LOCAL.AsString,4,3);
    ChkBol_Local.Checked      := IIF(COPY(DMCFG.CdsBloqBOL_LOCAL.AsString,7,1)='S',cbChecked,cbUnchecked);

    Bol_VenctoLn.Text         := COPY(DMCFG.CdsBloqBOL_VENCTO.AsString,1,3);
    Bol_VenctoCol.Text        := COPY(DMCFG.CdsBloqBOL_VENCTO.AsString,4,3);
    ChkBol_Vencto.Checked     := IIF(COPY(DMCFG.CdsBloqBOL_VENCTO.AsString,7,1)='S',cbChecked,cbUnchecked);

    Bol_DtEmisLn.Text         := COPY(DMCFG.CdsBloqBOL_DTEMIS.AsString,1,3);
    Bol_DtEmisCol.Text        := COPY(DMCFG.CdsBloqBOL_DTEMIS.AsString,4,3);
    ChkBol_DtEmis.Checked     := IIF(COPY(DMCFG.CdsBloqBOL_DTEMIS.AsString,7,1)='S',cbChecked,cbUnchecked);

    Bol_CodFatLn.Text         := COPY(DMCFG.CdsBloqBOL_CODFAT.AsString,1,3);
    Bol_CodFatCol.Text        := COPY(DMCFG.CdsBloqBOL_CODFAT.AsString,4,3);
    ChkBol_CodFat.Checked     := IIF(COPY(DMCFG.CdsBloqBOL_CODFAT.AsString,7,1)='S',cbChecked,cbUnchecked);

    Bol_EspDocLn.Text         := COPY(DMCFG.CdsBloqBOL_ESPDOC.AsString,1,3);
    Bol_EspDocCol.Text        := COPY(DMCFG.CdsBloqBOL_ESPDOC.AsString,4,3);
    ChkBol_EspDoc.Checked     := IIF(COPY(DMCFG.CdsBloqBOL_ESPDOC.AsString,7,1)='S',cbChecked,cbUnchecked);

    Bol_AceiteLn.Text         := COPY(DMCFG.CdsBloqBOL_ACEITE.AsString,1,3);
    Bol_AceiteCol.Text        := COPY(DMCFG.CdsBloqBOL_ACEITE.AsString,4,3);
    ChkBol_Aceite.Checked     := IIF(COPY(DMCFG.CdsBloqBOL_ACEITE.AsString,7,1)='S',cbChecked,cbUnchecked);

    Bol_DtProceLn.Text        := COPY(DMCFG.CdsBloqBOL_DTPROCE.AsString,1,3);
    Bol_DtProceCol.Text       := COPY(DMCFG.CdsBloqBOL_DTPROCE.AsString,4,3);
    ChkBol_DtProce.Checked    := IIF(COPY(DMCFG.CdsBloqBOL_DTPROCE.AsString,7,1)='S',cbChecked,cbUnchecked);

    Bol_UsoBcoLn.Text         := COPY(DMCFG.CdsBloqBOL_USOBCO.AsString,1,3);
    Bol_UsoBcoCol.Text        := COPY(DMCFG.CdsBloqBOL_USOBCO.AsString,4,3);
    ChkBol_UsoBco.Checked     := IIF(COPY(DMCFG.CdsBloqBOL_USOBCO.AsString,7,1)='S',cbChecked,cbUnchecked);

    Bol_CarteiraLn.Text       := COPY(DMCFG.CdsBloqBOL_CARTEIRA.AsString,1,3);
    Bol_CarteiraCol.Text      := COPY(DMCFG.CdsBloqBOL_CARTEIRA.AsString,4,3);
    ChkBol_Carteira.Checked   := IIF(COPY(DMCFG.CdsBloqBOL_CARTEIRA.AsString,7,1)='S',cbChecked,cbUnchecked);

    Bol_VlParcLn.Text         := COPY(DMCFG.CdsBloqBOL_VLPARC.AsString,1,3);
    Bol_VlParcCol.Text        := COPY(DMCFG.CdsBloqBOL_VLPARC.AsString,4,3);
    ChkBol_VlParc.Checked     := IIF(COPY(DMCFG.CdsBloqBOL_VLPARC.AsString,7,1)='S',cbChecked,cbUnchecked);

    Bol_EspecieLn.Text        := COPY(DMCFG.CdsBloqBOL_ESPECIE.AsString,1,3);
    Bol_EspecieCol.Text       := COPY(DMCFG.CdsBloqBOL_ESPECIE.AsString,4,3);
    ChkBol_Especie.Checked    := IIF(COPY(DMCFG.CdsBloqBOL_ESPECIE.AsString,7,1)='S',cbChecked,cbUnchecked);

    Bol_QtdeLn.Text           := COPY(DMCFG.CdsBloqBOL_QUANTIDADE.AsString,1,3);
    Bol_QtdeCol.Text          := COPY(DMCFG.CdsBloqBOL_QUANTIDADE.AsString,4,3);
    ChkBol_Qtde.Checked       := IIF(COPY(DMCFG.CdsBloqBOL_QUANTIDADE.AsString,7,1)='S',cbChecked,cbUnchecked);

    Bol_VlDocLn.Text          := COPY(DMCFG.CdsBloqBOL_VLDOC.AsString,1,3);
    Bol_VlDocCol.Text         := COPY(DMCFG.CdsBloqBOL_VLDOC.AsString,4,3);
    ChkBol_VlDoc.Checked      := IIF(COPY(DMCFG.CdsBloqBOL_VLDOC.AsString,7,1)='S',cbChecked,cbUnchecked);

    Bol_DescLn.Text           := COPY(DMCFG.CdsBloqBOL_DESCABAT.AsString,1,3);
    Bol_DescCol.Text          := COPY(DMCFG.CdsBloqBOL_DESCABAT.AsString,4,3);
    ChkBol_Desc.Checked       := IIF(COPY(DMCFG.CdsBloqBOL_DESCABAT.AsString,7,1)='S',cbChecked,cbUnchecked);

    Bol_JurosLn.Text          := COPY(DMCFG.CdsBloqBOL_JUROMES.AsString,1,3);
    Bol_JurosCol.Text         := COPY(DMCFG.CdsBloqBOL_JUROMES.AsString,4,3);
    ChkBol_Juros.Checked      := IIF(COPY(DMCFG.CdsBloqBOL_JUROMES.AsString,7,1)='S',cbChecked,cbUnchecked);

    Bol_EspDocLn.Text         := COPY(DMCFG.CdsBloqBOL_ESPDOC.AsString,1,3);
    Bol_EspDocCol.Text        := COPY(DMCFG.CdsBloqBOL_ESPDOC.AsString,4,3);
    ChkBol_EspDoc.Checked     := IIF(COPY(DMCFG.CdsBloqBOL_ESPDOC.AsString,7,1)='S',cbChecked,cbUnchecked);

    Bol_Obs1Ln.Text           := COPY(DMCFG.CdsBloqBOL_OBSBOL1.AsString,1,3);
    Bol_Obs1Col.Text          := COPY(DMCFG.CdsBloqBOL_OBSBOL1.AsString,4,3);
    ChkBol_Obs1.Checked       := IIF(COPY(DMCFG.CdsBloqBOL_OBSBOL1.AsString,7,1)='S',cbChecked,cbUnchecked);

    Bol_Obs2Ln.Text           := COPY(DMCFG.CdsBloqBOL_OBSBOL2.AsString,1,3);
    Bol_Obs2Col.Text          := COPY(DMCFG.CdsBloqBOL_OBSBOL2.AsString,4,3);
    ChkBol_Obs2.Checked       := IIF(COPY(DMCFG.CdsBloqBOL_OBSBOL2.AsString,7,1)='S',cbChecked,cbUnchecked);

    Bol_Obs3Ln.Text           := COPY(DMCFG.CdsBloqBOL_OBSBOL3.AsString,1,3);
    Bol_Obs3Col.Text          := COPY(DMCFG.CdsBloqBOL_OBSBOL3.AsString,4,3);
    ChkBol_Obs3.Checked       := IIF(COPY(DMCFG.CdsBloqBOL_OBSBOL3.AsString,7,1)='S',cbChecked,cbUnchecked);

    Bol_Obs4Ln.Text           := COPY(DMCFG.CdsBloqBOL_OBSBOL4.AsString,1,3);
    Bol_Obs4Col.Text          := COPY(DMCFG.CdsBloqBOL_OBSBOL4.AsString,4,3);
    ChkBol_Obs4.Checked       := IIF(COPY(DMCFG.CdsBloqBOL_OBSBOL4.AsString,7,1)='S',cbChecked,cbUnchecked);

    Bol_OutLn.Text            := COPY(DMCFG.CdsBloqBOL_OUTDEDU.AsString,1,3);
    Bol_OutCol.Text           := COPY(DMCFG.CdsBloqBOL_OUTDEDU.AsString,4,3);
    ChkBol_out.Checked        := IIF(COPY(DMCFG.CdsBloqBOL_OUTDEDU.AsString,7,1)='S',cbChecked,cbUnchecked);

    Bol_MoraLn.Text           := COPY(DMCFG.CdsBloqBOL_MORAMULTA.AsString,1,3);
    Bol_MoraCol.Text          := COPY(DMCFG.CdsBloqBOL_MORAMULTA.AsString,4,3);
    ChkBol_Mora.Checked       := IIF(COPY(DMCFG.CdsBloqBOL_MORAMULTA.AsString,7,1)='S',cbChecked,cbUnchecked);

    Bol_OutAcLn.Text          := COPY(DMCFG.CdsBloqBOL_OUTACRES.AsString,1,3);
    Bol_OutAcCol.Text         := COPY(DMCFG.CdsBloqBOL_OUTACRES.AsString,4,3);
    ChkBol_OutAc.Checked      := IIF(COPY(DMCFG.CdsBloqBOL_OUTACRES.AsString,7,1)='S',cbChecked,cbUnchecked);

    Bol_VlCoLn.Text           := COPY(DMCFG.CdsBloqBOL_VLCOBRADO.AsString,1,3);
    Bol_VlCoCol.Text          := COPY(DMCFG.CdsBloqBOL_VLCOBRADO.AsString,4,3);
    ChkBol_VlCo.Checked       := IIF(COPY(DMCFG.CdsBloqBOL_VLCOBRADO.AsString,7,1)='S',cbChecked,cbUnchecked);

    Bol_RazaoLn.Text          := COPY(DMCFG.CdsBloqBOL_RAZAO.AsString,1,3);
    Bol_RazaoCol.Text         := COPY(DMCFG.CdsBloqBOL_RAZAO.AsString,4,3);
    ChkBol_Razao.Checked      := IIF(COPY(DMCFG.CdsBloqBOL_RAZAO.AsString,7,1)='S',cbChecked,cbUnchecked);

    Bol_EndLn.Text            := COPY(DMCFG.CdsBloqBOL_END.AsString,1,3);
    Bol_EndCol.Text           := COPY(DMCFG.CdsBloqBOL_END.AsString,4,3);
    ChkBol_End.Checked        := IIF(COPY(DMCFG.CdsBloqBOL_END.AsString,7,1)='S',cbChecked,cbUnchecked);

    Bol_CepLn.Text            := COPY(DMCFG.CdsBloqBOL_CEP.AsString,1,3);
    Bol_CepCol.Text           := COPY(DMCFG.CdsBloqBOL_CEP.AsString,4,3);
    ChkBol_Cep.Checked        := IIF(COPY(DMCFG.CdsBloqBOL_CEP.AsString,7,1)='S',cbChecked,cbUnchecked);

    Bol_CidLn.Text            := COPY(DMCFG.CdsBloqBOL_CID.AsString,1,3);
    Bol_CidCol.Text           := COPY(DMCFG.CdsBloqBOL_CID.AsString,4,3);
    ChkBol_Cid.Checked        := IIF(COPY(DMCFG.CdsBloqBOL_CID.AsString,7,1)='S',cbChecked,cbUnchecked);

    Bol_EstLn.Text            := COPY(DMCFG.CdsBloqBOL_EST.AsString,1,3);
    Bol_EstCol.Text           := COPY(DMCFG.CdsBloqBOL_EST.AsString,4,3);
    ChkBol_Est.Checked        := IIF(COPY(DMCFG.CdsBloqBOL_EST.AsString,7,1)='S',cbChecked,cbUnchecked);

    Bol_CnpjLn.Text           := COPY(DMCFG.CdsBloqBOL_CNPJ.AsString,1,3);
    Bol_CnpjCol.Text          := COPY(DMCFG.CdsBloqBOL_CNPJ.AsString,4,3);
    ChkBol_Cnpj.Checked       := IIF(COPY(DMCFG.CdsBloqBOL_CNPJ.AsString,7,1)='S',cbChecked,cbUnchecked);

    Bol_DesEspDocLn.Text      := COPY(DMCFG.CdSBLOQBOL_DESESPDOC.AsString,1,3);
    Bol_DesEspDocCol.Text     := COPY(DMCFG.CdSBLOQBOL_DESESPDOC.AsString,4,3);
    Chk_DesEspDoc.Checked     := IIF(COPY(DMCFG.CdsBloqBOL_DESESPDOC.AsString,7,1)='S',cbChecked,cbUnchecked);

    Bol_desaceiteln.Text      := COPY(DMCFG.CdsBloqBOL_DESACEITE.AsString,1,3);
    Bol_desaceitecol.Text     := COPY(DMCFG.CdsBloqBOL_DESACEITE.AsString,4,3);
    Chkbol_desaceite.Checked  := IIF(COPY(DMCFG.CdsBloqBOL_DESACEITE.AsString,7,1)='S',cbChecked,cbUnchecked);

    Bol_descarteiraln.Text    := COPY(DMCFG.CdsBloqBOL_DESCARTEIRA.AsString,1,3);
    Bol_descarteiracol.Text   := COPY(DMCFG.CdsBloqBOL_DESCARTEIRA.AsString,4,3);
    chkBol_descarteira.Checked:= IIF(COPY(DMCFG.CdsBloqBOL_DESCARTEIRA.AsString,7,1)='S',cbChecked,cbUnchecked);

    Bol_DespecieLn.Text       := COPY(DMCFG.CdsBloqBOL_DESPECIE.AsString,1,3);
    Bol_Despeciecol.Text      := COPY(DMCFG.CdsBloqBOL_DESPECIE.AsString,4,3);
    chkBol_Despecie.Checked   := IIF(COPY(DMCFG.CdsBloqBOL_DESPECIE.AsString,7,1)='S',cbChecked,cbUnchecked);

    Bol_ValorLn.Text          := COPY(DMCFG.CdsBloqBOL_VALOR.AsString,1,3);
    Bol_ValorCol.Text         := COPY(DMCFG.CdsBloqBOL_VALOR.AsString,4,3);
    chkBol_Valor.Checked      := IIF(COPY(DMCFG.CdsBloqBOL_VALOR.AsString,7,1)='S',cbChecked,cbUnchecked);

    DbBol_Obs1.Text           := DMCFG.CdsBloqBOL_OBS1.AsString;
    DbBol_Obs2.Text           := DMCFG.CdsBloqBOL_OBS2.AsString;
    DbBol_Obs3.Text           := DMCFG.CdsBloqBOL_OBS3.AsString;
    DbBol_Obs4.Text           := DMCFG.CdsBloqBOL_OBS4.AsString;
    DbBol_Local.Text          := DMCFG.CdsBloqBOL_LOCPGTO.AsString;

end;

procedure TFormParametros.Bit_NovoBloqClick(Sender: tObject);
Var
  Codigo : Integer;
begin
    GroupBoleto.Enabled := True;
    if uteis.confirmacao ( 'Deseja utilizar a Mesma Configuração ?') = mrNo then
       begin
           LimpaBloq;
       end;
    if not DmCfg.CdsBloq.IsEmpty then
       begin
           DbCodBloq.Enabled := True;
           DmCfg.CdsBloq.Last;
           Codigo         := StrtoInt(DmCfg.CdsBloqBOL_CODBOL.AsString) + 1;
           DbCodBloq.Text := StrZero(IntToStr(Codigo),3);
       end
    else
       begin
           DbCodBloq.Text := '001';
       end;
    DmCfg.CdsBloq.Insert;
    DbCodBloq.Enabled := False;
    DbCodBco.SetFocus;
    DesBotoesBloq;
    ChkBloq.Checked := false;
    CbxBanco.Text   := '';
end;

procedure TFormParametros.DBNavigator4Click(Sender: tObject;
  Button: TNavigateBtn);
begin
    BuscaBco;
    MostraBloq;
end;

procedure TFormParametros.BuscaBco;
begin
    if SqlCdsBco.Locate('BAN_CODIGO',DbCodBco.Text,[]) then
       CbxBanco.Text := SqlCdsBcoBAN_RAZAO.AsString
    else
       CbxBanco.Text := '';
end;

procedure TFormParametros.DbCodBcoExit(Sender: tObject);
begin
    DBCodBco.Text := StrZero(DBCodBco.Text,DBCodBco.MaxLength);
    BuscaBco;
end;

procedure TFormParametros.CbxBancoClick(Sender: tObject);
begin
    SqlCdsBco.Locate('BAN_RAZAO',CbxBanco.Text,[]);
    DbCodBco.Text := StrZero(SqlCdsBcoBAN_CODIGO.AsString,4);
end;

procedure TFormParametros.Bit_CancelarBloqClick(Sender: tObject);
begin
    DmCfg.CdsBloq.Cancel;
    HabBotoesBloq;
    EscondeBotoes;
    GroupBoleto.Enabled  := False;
    MostraBloq;
    DBNavigator4.SetFocus;
end;

procedure TFormParametros.Bit_GravarBloqClick(Sender: tObject);
begin
    GravarBloq;
    HabBotoesBloq;
    EscondeBotoes;
    GroupBoleto.Enabled := False;
    DBNavigator4.SetFocus;
    PageControl1.ActivePage.SetFocus;
end;

procedure TFormParametros.Bit_ExcluirBloqClick(Sender: tObject);
begin
    if DmCfg.CdsBloq.IsEmpty Then
       Begin                                  // em uma Tabela Vazia.
           messagebeep($ffff);
           uteis.aviso('Não existe bloqueto cadastrado !');
           Bit_NovoBloq.SetFocus;
           exit;
       end;
    if uteis.confirmacao ( 'Deseja excluir este Boleto ?')= Mryes then
       begin
           DmCfg.CdsBloq.Delete;
           DmCfg.CdsBloq.ApplyUpdates(0);
           DmCfg.CdsBloq.Refresh;
           DBNavigator4.SetFocus;
           MostraBloq;
       end
    else
       begin
           DmCfg.CdsBloq.Cancel;
           DBNavigator4.SetFocus;
           MostraBloq;
       end;
end;

procedure TFormParametros.Bit_AlterarBloqClick(Sender: tObject);
begin
    DmCfg.CdsBloq.Edit;
    GroupBoleto.Enabled := True;
    DesBotoesBloq;
    DbCodBco.SetFocus;
end;

procedure TFormParametros.DbCodBcoKeyPress(Sender: tObject; var Key: Char);
begin
    // deixo aceitar somente numeros
    if not(Key in['0'..'9',#8]) then
       begin
           //beep;
           Key:=#0;
       end;
end;

procedure TFormParametros.Bit_CancelarDuplClick(Sender: tObject);
begin
    DmCfg.CdsDupl.Cancel;
    HabBotoesDupl;
    EscondeBotoes;
    MostrarDupli;
    DbCodigoDupl.Enabled := True;
    DBNavigator2.SetFocus;
end;

procedure TFormParametros.ChecarAtivo;
begin
    Screen.Cursor := crHourGlass;
    try
      DataCadastros.sqlUpdate.Close;
      if PageControl1.TabIndex = 5 then {Nota Fiscal}
         begin
             if DmCfg.CdsNF.State in [dsInsert,dsEdit] then
                DataCadastros.SqlUpdate.sql.text :=SQLDEF('PARAMETROS','Select CNF_ATIVO from SYSNFS','where CNF_ATIVO = ''S''','CNF_ATIVO','');
         end;
      if PageControl1.TabIndex = 6 then {Duplicata}
         begin
             if DmCfg.CdsDupl.State in [dsInsert,dsEdit] then
                DataCadastros.SqlUpdate.sql.text :=SQLDEF('PARAMETROS','Select CdU_ATIVO from SYSDUPLI','where CdU_ATIVO = ''S''','CdU_ATIVO','');
         end;
      if (DmCfg.CdsNF.State in [dsInsert,dsEdit]) or (DmCfg.CdsDupl.State in [dsInsert,dsEdit]) or (DmCfg.CdsBloq.State in [dsInsert,dsEdit]) then
         begin
             DataCadastros.sqlUpdate.Open;
             if not DataCadastros.sqlUpdate.IsEmpty then
                begin
                    if PageControl1.TabIndex = 5 then {Nota Fiscal}
                       begin
                           if DmCfg.CdsNF.State in [dsInsert,dsEdit] then
                              begin
                                  if uteis.confirmacao ( ('Definir como Nota fiscal padrão ?'))=idYes then
                                     begin
                                         try
                                           DataCadastros.sqlUpdate.Close;
                                           DataCadastros.SqlUpdate.sql.text :='Update SYSNFS set CNF_ATIVO = ''N''';
                                           DataCadastros.sqlUpdate.Execsql;
                                           ChkNfs.Checked := true;
                                         except on E:EDataBaseError do
                                             uteis.erro  (pchar('Erro ao definir Nota fiscal padrão !'+e.message));
                                         end;
                                     end
                                  else
                                     begin
                                         ChkNfs.Checked := false;
                                     end;
                              end;
                       end;
                    if PageControl1.TabIndex = 6 then {Duplicata}
                       begin
                           if DmCfg.CdsDupl.State in [dsInsert,dsEdit] then
                              begin
                                  if uteis.confirmacao ( ('Definir como Duplicata padrão ?'))=idYes then
                                     begin
                                         try
                                           DataCadastros.sqlUpdate.Close;
                                           DataCadastros.SqlUpdate.sql.text :='Update SYSDUPLI set CdU_ATIVO = ''N''';
                                           DataCadastros.sqlUpdate.Execsql;
                                           ChkDupl.Checked := true;
                                         except on E:EDataBaseError do
                                             uteis.erro  (pchar('Erro ao definir Duplicata padrão !'+e.message));
                                         end;
                                     end
                                  else
                                     begin
                                         ChkDupl.Checked := False;
                                     end;
                              end;
                       end;
                end;
         end;
      DataCadastros.sqlUpdate.Close;
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao consultar !'+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormParametros.ChkDuplClick(Sender: tObject);
begin
    ChecarAtivo;
end;

procedure TFormParametros.ChkNfsClick(Sender: tObject);
begin
    ChecarAtivo;
end;

procedure TFormParametros.BtnSairClick(Sender: tObject);
begin
    try
      SqlCdsCCT.Close;
      SqlCdsPag.Close;
      SqlCdsPc.Close;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao Fechar as tabelas !'+e.message));
    end;
    Close;
end;

procedure TFormParametros.BtnTransfClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    try
      SqlCdsCCT.First;
      ProgressBar1.Position := 0;
      ProgressBar1.Max      := SqlCdsCCT.RecordCount;
      SqlCdsCCT.DisableControls;
      while not SqlCdsCCT.Eof do
       begin
           {Tabela PAG0000}
           try
             SqlCdsPag.Close;
             SqlCdsPag.CommandText := SQLDEF('PAGAR','Select P1.PAG_REGISTRO,P1.CCT_CODIGO,P1.CCT_NOVO from PAG0000 P1','where P1.CCT_CODIGO = '''+SqlCdsCCTCCT_ANTIGO.AsString+'''','P1.CCT_CODIGO','P1.');
             SqlCdsPag.Open;
             if NOT SqlCdsPag.IsEmpty  then
                begin
                    DataCadastros.sqlUpdate.Close;
                    DataCadastros.SqlUpdate.sql.text :='Update PAG0000 SET CCT_NOVO = '''+StrZero(SqlCdsCCTCCT_CODIGO.AsString,3)+''' where CCT_CODIGO = '''+SqlCdsCCTCCT_ANTIGO.AsString+'''';
                    DataCadastros.sqlUpdate.Execsql;
                end;
             SqlCdsPag.Refresh;
           except on E:EDataBaseError do
               uteis.erro  (pchar('Erro ao abrir a tabela PAG0000 !'+E.MESSAGE));
           end;
           {Tabela PAG_PC01}
           try
             SqlCdsPc.Close;
             SqlCdsPc.CommandText := SQLDEF('PAGAR','Select P2.PAG_REGISTRO,P2.CCT_CODIGO,P2.CCT_NOVO from PAG_PC01 P2','where P2.CCT_CODIGO = '''+SqlCdsCCTCCT_ANTIGO.AsString+'''','P2.CCT_CODIGO','P2.');
             SqlCdsPc.Open;
             if NOT SqlCdsPc.IsEmpty  then
                begin
                    DataCadastros.sqlUpdate.Close;
                    DataCadastros.SqlUpdate.sql.text :='Update PAG_PC01 SET CCT_NOVO = '''+StrZero(SqlCdsCCTCCT_CODIGO.AsString,3)+''' where CCT_CODIGO = '''+SqlCdsCCTCCT_ANTIGO.AsString+'''';
                    DataCadastros.sqlUpdate.Execsql;
                end;
             SqlCdsPc.Refresh;
           except on E:EDataBaseError do
               uteis.erro  (pchar('Erro ao abrir a tabela PAG_PC01 !'+E.MESSAGE));
           end;
           {Tabela FOR0000}
           try
             SqlCdsFOR.Close;
             SqlCdsFOR.CommandText := SQLDEF('FORNECEDORES','Select F1.FOR_CODIGO,F1.CCT_CODIGO,F1.CCT_NOVO from FOR0000 F1','where F1.CCT_CODIGO = '''+SqlCdsCCTCCT_ANTIGO.AsString+'''','F1.CCT_CODIGO','F1.');
             SqlCdsFOR.Open;
             if NOT SqlCdsFOR.IsEmpty then
                begin
                    DataCadastros.sqlUpdate.Close;
                    DataCadastros.SqlUpdate.sql.text :='Update FOR0000 SET CCT_NOVO = '''+StrZero(SqlCdsCCTCCT_CODIGO.AsString,3)+''' where CCT_CODIGO = '''+SqlCdsCCTCCT_ANTIGO.AsString+'''';
                    DataCadastros.sqlUpdate.Execsql;
                end;
             SqlCdsFOR.Refresh;
           except on E:EDataBaseError do
               uteis.erro  (pchar('Erro ao abrir a tabela FOR0000 !'+E.MESSAGE));
           end;
           ProgressBar1.Position := ProgressBar1.Position + 1;
           SqlCdsCCT.Next;
       end;
      SqlCdsCCT.EnableControls;
      ProgressBar1.Position := 0;
      uteis.aviso('Transferência concluído com sucesso !');
      SqlCdsCCT.First;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao Abrir a tabela '+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormParametros.Button1Click(Sender: tObject);
begin
   Screen.Cursor := crHourGlass;
   {PAG0000}
   try
     wSQL1 := 'Select P1.PAG_REGISTRO,P1.CCT_CODIGO,CCT_NOVO from PAG0000 P1 ';
     SqlCdsPag.Close;
     SqlCdsPag.CommandText := SQLDEF('PARAMETROS',wSQL1,'','P1.PAG_REGISTRO','P1.');
     SqlCdsPag.Open;
     SqlCdsPag.First;
     SqlCdsPag.DisableControls;
     ProgressBar1.Position := 0;
     ProgressBar1.Max      := SqlCdsPag.RecordCount;
     while not SqlCdsPag.Eof do
      begin
         if (NOT SqlCdsPagCCT_NOVO.IsNull) then
            begin
               DataCadastros.sqlUpdate.close;
               DataCadastros.SqlUpdate.sql.text :=SQLDEF('PAGAR','Update PAG0000 set CCT_CODIGO = CCT_NOVO','where pag_registro = '''+SqlCdsPagPAG_REGISTRO.AsString+'''','','');
               DataCadastros.sqlUpdate.Execsql;
            end
         else
            begin
               DataCadastros.sqlUpdate.close;
               DataCadastros.SqlUpdate.sql.text :=SQLDEF('PAGAR','Update PAG0000 set CCT_NOVO = CCT_CODIGO','where pag_registro = '''+SqlCdsPagPAG_REGISTRO.AsString+'''','','');
               DataCadastros.sqlUpdate.Execsql;
            end;
         ProgressBar1.Position := ProgressBar1.Position + 1;
         SqlCdsPag.Next;
      end;
     SqlCdsPag.EnableControls;
     uteis.aviso('Transferencia na tabela PAG0000 concluída com sucesso !');
   except on E:EDataBaseError do
      uteis.erro  (pchar('Erro ao atualizar a tabela PAG0000 !'));
   end;

   Screen.Cursor := crHourGlass;
   {PAG_PC01}
   try
     wSQL1 := 'Select P2.PAG_REGISTRO,P2.CCT_CODIGO,P2.CCT_NOVO from PAG_PC01 P2 ';
     SqlCdsPc.Close;
     SqlCdsPc.CommandText := SQLDEF('PARAMETROS',wSQL1,'','P2.PAG_REGISTRO','P2.');
     SqlCdsPc.Open;
     SqlCdsPc.First;
     SqlCdsPc.DisableControls;
     ProgressBar1.Position := 0;
     ProgressBar1.Max      := SqlCdsPc.RecordCount;
     while not SqlCdsPc.Eof do
      begin
         if (NOT SqlCdsPcCCT_NOVO.IsNull) then
            begin
               DataCadastros.sqlUpdate.close;
               DataCadastros.SqlUpdate.sql.text :=SQLDEF('PAGAR','Update PAG_PC01 set CCT_CODIGO = CCT_NOVO','where PAG_REGISTRO = '''+SqlCdsPcPAG_REGISTRO.AsString+'''','','');
               DataCadastros.sqlUpdate.Execsql;
            end
         else
            begin
               DataCadastros.sqlUpdate.close;
               DataCadastros.SqlUpdate.sql.text :=SQLDEF('PAGAR','Update PAG_PC01 set CCT_NOVO = CCT_CODIGO','where PAG_REGISTRO = '''+SqlCdsPcPAG_REGISTRO.AsString+'''','','');
               DataCadastros.sqlUpdate.Execsql;
            end;
         ProgressBar1.Position := ProgressBar1.Position + 1;
         SqlCdsPc.Next;
      end;
     SqlCdsPc.EnableConstraints;
     uteis.aviso('Transferencia na tabela PAG_PC01 concluída com sucesso !');
   except on E:EDataBaseError do
      uteis.erro  (pchar('Erro ao atualizar a tabela PAG_PC01 !'));
   end;
   Screen.Cursor := crHourGlass;
   {FOR0000}
   try
     wSQL1 := 'Select F1.FOR_CODIGO,F1.CCT_CODIGO,F1.CCT_NOVO from FOR0000 F1 ';
     SqlCdsFor.Close;
     SqlCdsFor.CommandText := SQLDEF('PARAMETROS',wSQL1,'','F1.FOR_CODIGO','F1.');
     SqlCdsFor.Open;
     SqlCdsFor.First;
     SqlCdsFor.DisableControls;
     ProgressBar1.Position := 0;
     ProgressBar1.Max      := SqlCdsFor.RecordCount;
     while not SqlCdsFor.Eof do
      begin
         if (NOT SqlCdsForCCT_NOVO.IsNull ) then
            begin
               DataCadastros.sqlUpdate.close;
               DataCadastros.SqlUpdate.sql.text :=SQLDEF('PARAMETROS','Update FOR0000 set CCT_CODIGO = CCT_NOVO','where FOR_CODIGO = '''+SqlCdsForFOR_CODIGO.AsString+'''','','');
               DataCadastros.sqlUpdate.Execsql;
            end
         else
            begin
               if (NOT SqlCdsForCCT_CODIGO.IsNull ) then
                  begin
                     DataCadastros.sqlUpdate.close;
                     DataCadastros.SqlUpdate.sql.text :=SQLDEF('PARAMETROS','Update FOR0000 set CCT_NOVO = CCT_CODIGO','where FOR_CODIGO = '''+SqlCdsForFOR_CODIGO.AsString+'''','','');
                     DataCadastros.sqlUpdate.Execsql;
                  end;
            end;
         ProgressBar1.Position := ProgressBar1.Position + 1;
         SqlCdsFor.Next;
      end;
     SqlCdsFor.EnableControls;
     uteis.aviso('Transferencia na tabela FOR0000 concluída com sucesso !');
     ProgressBar1.Position := 0;
   except on E:EDataBaseError do
      uteis.erro  (pchar('Erro ao atualizar a tabela FOR0000 !'));
   end;
   Screen.Cursor := crDefault;
end;

procedure TFormParametros.DBEdtPAKeyPress(Sender: tObject; var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;

end;

procedure TFormParametros.DBEdtPAExit(Sender: tObject);
begin
    DBEdtPa.Text := StrZero(DBEdtPa.Text,DBEdtPa.MaxLength);
end;

procedure TFormParametros.DBEdtPIExit(Sender: tObject);
begin
    DBEdtPi.Text := StrZero(DBEdtPi.Text,DBEdtPi.MaxLength);
end;

procedure TFormParametros.DBEDIT_COD_CARTEIRAExit(Sender: tObject);
begin
    DBEDIT_COD_CARTEIRA.Text := StrZero(DBEDIT_COD_CARTEIRA.Text,DBEDIT_COD_CARTEIRA.MaxLength);
end;

procedure TFormParametros.DBEDIT_COD_CARTEIRAKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;
end;

procedure TFormParametros.CbxCarteiraChange(Sender: tObject);
begin
    if (DataCadastros1.CdsParametros.State in [DsBrowse]) then
       DataCadastros1.CdsParametros.Edit;
end;

procedure TFormParametros.CbxTipoDocChange(Sender: tObject);
begin
    if (DataCadastros1.CdsParametros.State in [DsBrowse]) then
       DataCadastros1.CdsParametros.Edit;
end;

procedure TFormParametros.MostraDados;
begin
    CbxCarteira.ItemIndex := IIF(DataCadastros1.CdsParametrosPMT_TP_COBRANCA.AsString = ''  ,0,
                             IIF(DataCadastros1.CdsParametrosPMT_TP_COBRANCA.AsString = 'CT',1,
                             IIF(DataCadastros1.CdsParametrosPMT_TP_COBRANCA.AsString = 'CS',2,
                             IIF(DataCadastros1.CdsParametrosPMT_TP_COBRANCA.AsString = 'CC',3,
                             IIF(DataCadastros1.CdsParametrosPMT_TP_COBRANCA.AsString = 'Cd',4,
                             IIF(DataCadastros1.CdsParametrosPMT_TP_COBRANCA.AsString = 'SR',5,
                             IIF(DataCadastros1.CdsParametrosPMT_TP_COBRANCA.AsString = 'CR',6,
                             IIF(DataCadastros1.CdsParametrosPMT_TP_COBRANCA.AsString = 'CQ',7,8))))))));
    //
    CbxTipoDoc.ItemIndex  := IIF(DataCadastros1.CdsParametrosPMT_TP_DOCTO.AsString = ''  ,0,
                             IIF(DataCadastros1.CdsParametrosPMT_TP_DOCTO.AsString = 'DP',1,
                             IIF(DataCadastros1.CdsParametrosPMT_TP_DOCTO.AsString = 'BL',2,
                             IIF(DataCadastros1.CdsParametrosPMT_TP_DOCTO.AsString = 'RC',3,
                             IIF(DataCadastros1.CdsParametrosPMT_TP_DOCTO.AsString = 'CH',4,
                             IIF(DataCadastros1.CdsParametrosPMT_TP_DOCTO.AsString = 'DN',5,
                             IIF(DataCadastros1.CdsParametrosPMT_TP_DOCTO.AsString = 'OU',6,7)))))));
   if (DataCadastros1.CdsParametrosPMT_GERAR_NUM_LOTE.AsString = 'A') then
            begin
              Rad_Lote_Automatico.Checked := True;
              Rad_Lote_Manual.Checked := False;
            end
           else
            begin
              Rad_Lote_Manual.Checked := True;
              Rad_Lote_Automatico.Checked := False;
            end;

   if (DataCadastros1.CdsParametrosPMT_GERAR_NUM_LOTE.AsString = 'A') then
            begin
              rbLoteAutomatico.Checked := True;
              rbLoteManual.Checked := False;
            end
           else
            begin
              rbLoteManual.Checked := True;
              rbLoteAutomatico.Checked := False;
            end;


end;

procedure TFormParametros.rbLoteAutomaticoClick(Sender: TObject);
begin
  inherited;
   if (DataCadastros1.CdsParametros.State in [dsBrowse]) then
      DataCadastros1.CdsParametros.Edit;
   if rbLoteAutomatico.Checked = True then
   begin
    dbLotePrefixo.Enabled := True;
    dbLoteSemente.Enabled := True;
   end;
end;

procedure TFormParametros.rbLoteManualClick(Sender: TObject);
begin
  inherited;
   if (DataCadastros1.CdsParametros.State in [dsBrowse]) then
      DataCadastros1.CdsParametros.Edit;
   if rbLoteManual.Checked = True then
   begin
    dbLotePrefixo.Enabled := False;
    dbLoteSemente.Enabled := False;
   end;

end;

procedure TFormParametros.Rad_1Enter(Sender: tObject);
begin
    if (DataCadastros1.CdsParametros.State in [dsBrowse]) then
       DataCadastros1.CdsParametros.Edit;
end;

procedure TFormParametros.Rad_2Enter(Sender: tObject);
begin
    if (DataCadastros1.CdsParametros.State in [dsBrowse]) then
       DataCadastros1.CdsParametros.Edit;
end;

procedure TFormParametros.Rad_3Enter(Sender: tObject);
begin
    if (DataCadastros1.CdsParametros.State in [dsBrowse]) then
       DataCadastros1.CdsParametros.Edit;
end;

procedure TFormParametros.MostraDadosGlobal;
begin
    try
//      if (DataCadastros1.CdsParametros.State in [DsBrowse]) then
//         Edt_Empresa.Text := DataCadastros1.CdsParametrosEmp_Codigo.AsString;
      SqlCdsEmpresa.Locate('EMP_CODIGO',Edt_Empresa.Text,[]);
      Cbx_Empresa.Text := SqlCdsEmpresaEMP_RAZAO.AsString;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao localizar a empresa ! '+e.message));
    end;
    CbAlmoxarifadoEntrada.EditValue          := DataCadastros1.CdsParametrosPMT_AMX_ENTRADA.AsVariant;
    CbAlmoxarifadoVenda.EditValue            := DataCadastros1.CdsParametrosPMT_AMX_VENDA.AsVariant;
    CbAlmoxarifadoFaturamento.EditValue      := DataCadastros1.CdsParametrosPMT_AMX_FATURAMENTO.AsVariant;
    CbAlmoxarifadoProducaoEntrada.EditValue  := DataCadastros1.CdsParametrosPMT_AMX_PRODUCAO_ENTRADA.AsVariant;
    CbAlmoxarifadoProducaoSaida.EditValue    := DataCadastros1.CdsParametrosPMT_AMX_PRODUCAO_SAIDA.AsVariant;
    CbAlmoxarifadoEnvaseSaida.EditValue      := DataCadastros1.CdsParametrosPMT_AMX_ENVASE_SAIDA.AsVariant;
    dbOSDataEmissao.Date                     := DataCadastros1.CdsParametrosPMT_OS_DATA_EMISSAO.AsDateTime;


    if (DataCadastros1.CdsParametrosPMT_GERAR_NUM_LOTE.AsString = 'A') then
       Rad_Lote_Automatico.Checked := True
    else
       Rad_Lote_Manual.Checked := True;

    if (DataCadastros1.CdsParametrosPMT_LOTE_AUTOMATICO.AsString = 'A') then
       rbLoteAutomatico.Checked := True
    else
       rbLoteManual.Checked := True;


end;

procedure TFormParametros.DBNavigator5Click(Sender: tObject;
  Button: TNavigateBtn);
begin
    MostraDadosGlobal;
end;

procedure TFormParametros.dbOSDataEmissaoChange(Sender: TObject);
begin
  inherited;
  if DataCadastros1.CdsParametros.State = dsBrowse then
  begin
    DataCadastros1.CdsParametros.Edit;
    DesabilitaBotao;
  end;
end;

procedure TFormParametros.Cbx_EmpresaClick(Sender: tObject);
begin
    DataCadastros1.CdsParametros.CancelUpdates;
    if (DataCadastros1.CdsParametros.State in [DsBrowse]) then
       begin
           if (SqlCdsEmpresa.Locate('EMP_RAZAO',Cbx_Empresa.Text,[])) then
              begin
                  Edt_Empresa.Text := SqlCdsEmpresaEMP_CODIGO.AsString;
                  if (DataCadastros1.CdsParametros.Locate('EMP_CODIGO',Edt_Empresa.Text,[])) then
                     begin
                         Edt_Empresa.Text := SqlCdsEmpresaEMP_CODIGO.AsString;
                     end
                  else
                     begin
                         uteis.aviso('Parametro não cadastrado para esta empresa !');
                         DataCadastros1.CdsParametros.Last;
                         MostraDadosGlobal;
                         Cbx_Empresa.Text := '';
                         Cbx_Empresa.ItemIndex :=0;
                         Edt_Empresa.SetFocus;
                     end;
              end
           else
              begin
                  Edt_Empresa.Text := '';
                  Cbx_Empresa.Text := '';
              end;
       end
    else
       begin
           if (SqlCdsEmpresa.Locate('EMP_RAZAO',Cbx_Empresa.Text,[])) then
              begin
                  Edt_Empresa.Text := SqlCdsEmpresaEMP_CODIGO.AsString;
              end;
           if (DataCadastros1.CdsParametros.State in [DsInsert]) then
              begin
                  {Verifica se ja existe o parametro para a empresa selecionada}
                  DataCadastros.sqlUpdate.Close;
                  DataCadastros.SqlUpdate.sql.text :='Select E1.EMP_CODIGO from PRMT0001 E1 where E1.EMP_CODIGO = '''+Edt_Empresa.Text+''' order by E1.EMP_CODIGO';
                  DataCadastros.sqlUpdate.Open;
                  if (not DataCadastros.sqlUpdate.IsEmpty) then
                     begin
                         uteis.aviso('Parametro já definido para esta empresa !');
                         Edt_Empresa.Text := '';
                         Cbx_Empresa.Text := '';
                         Cbx_Empresa.ItemIndex := 0;
                         Cbx_Empresa.SetFocus;
                         Edt_Empresa.SetFocus;
                     end;
                  DataCadastros.sqlUpdate.Close;
              end;
       end;
       MostraDados;
       MostraDadosGlobal;
end;

procedure TFormParametros.EdClienteCodigoExit(Sender: TObject);
begin
  inherited;
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

procedure TFormParametros.EdClienteCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
     edClienteButtonClick(nil);
end;

procedure TFormParametros.edClienteSelect(Sender: TObject);
begin
  inherited;
  if edCliente.idRetorno<>'' then
   begin

     edClienteCodigo.Text:=edCliente.idRetorno;

   end
   Else
     edClienteCodigo.clear;

end;

procedure TFormParametros.Edt_EmpresaExit(Sender: tObject);
begin
    Edt_Empresa.Text := StrZero(Edt_Empresa.Text,Edt_Empresa.MaxLength);
    if (DataCadastros1.CdsParametros.State in [dsBrowse]) then
       begin
           if (DataCadastros1.CdsParametros.Locate('EMP_CODIGO',Edt_Empresa.Text,[])) then
              begin
                  if (SqlCdsEmpresa.Locate('EMP_CODIGO',Edt_Empresa.Text,[])) then
                     begin
                         Cbx_Empresa.Text := SqlCdsEmpresaEMP_RAZAO.AsString;
                         MostraDadosGlobal;
                     end;
              end
           else
              begin
                  uteis.aviso('Parametro não encontrado !');
                  DataCadastros1.CdsParametros.Last;
                  MostraDadosGlobal;
                  Edt_Empresa.SetFocus;
              end;
       end
    else
       begin
           if (SqlCdsEmpresa.Locate('EMP_CODIGO',Edt_Empresa.Text,[])) then
              begin
                  Cbx_Empresa.Text := SqlCdsEmpresaEMP_RAZAO.AsString;
                  MostraDadosGlobal;
              end;
       end;
end;

procedure TFormParametros.Edt_EmpresaKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;
end;

procedure TFormParametros.Bit_ExcluirClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    try
      if uteis.confirmacao ( ('Deseja excluir o parametro da empresa '+Edt_empresa.Text+' ?'))=mrYes then
         begin
             DataCadastros1.CdsParametros.Delete;
             DataCadastros1.CdsParametros.ApplyUpdates(0);
             DataCadastros1.CdsParametros.Refresh;
             MostraDadosGlobal;
         end
      else
         begin
             DataCadastros1.CdsParametros.Cancel;
         end;
      Edt_Empresa.SetFocus;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao excluir o registro ! '+e.message));
    end;
    Screen.Cursor := crDefault;    
end;

procedure TFormParametros.Bit_novoClick(Sender: tObject);
begin
    try
      if (uteis.confirmacao ( ('Deseja duplicar o parametro atual ?'))=mrYes) then
         begin
             try
               try
                 FrmParamDuplicar := TFrmParamDuplicar.Create(Application);
                 FrmParamDuplicar.Edt_Cod_Empresa.Text := Edt_Empresa.Text;
                 FrmParamDuplicar.Edt_Nome.Text        := Cbx_Empresa.Text;
                 FrmParamDuplicar.ShowModal;
               finally
                 FrmParamDuplicar.Destroy;
                 FrmParamDuplicar := nil;
                 Cbx_Empresa.SetFocus;
               end;
             except
                 //beep;
                 uteis.erro  ('Ocorreu um erro na criação do formulário!');
             end;
         end;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao inserir o registro ! '+e.message));
    end;
end;

procedure TFormParametros.Cbx_EmpresaExit(Sender: tObject);
begin
    if (DataCadastros1.CdsParametros.State in [DsBrowse]) then
       begin
           if (DataCadastros1.CdsParametros.Locate('EMP_CODIGO',SqlCdsEmpresaEMP_CODIGO.AsString,[])) then
              begin
                  Edt_Empresa.Text := SqlCdsEmpresaEMP_CODIGO.AsString;
                  MostraDadosGlobal;
              end
           else
              begin
                  uteis.aviso('Parametro não cadastrado para esta empresa !');
                  DataCadastros1.CdsParametros.Last;
                  MostraDadosGlobal;
                  Cbx_Empresa.Text := '';
                  Cbx_Empresa.ItemIndex :=0;
                  Edt_Empresa.SetFocus;
              end;
       end
    else
       begin
           if (SqlCdsEmpresa.Locate('EMP_RAZAO',Cbx_Empresa.Text,[])) then
              begin
                  Edt_Empresa.Text := SqlCdsEmpresaEMP_CODIGO.AsString;
                  MostraDadosGlobal;
              end;
           if (DataCadastros1.CdsParametros.State in [DsInsert]) then
              begin
                  {Verifica se ja existe o parametro para a empresa selecionada}
                  DataCadastros.sqlUpdate.Close;
                  DataCadastros.SqlUpdate.sql.text :='Select E1.EMP_CODIGO from PRMT0001 E1 where E1.EMP_CODIGO = '''+Edt_Empresa.Text+''' order by E1.EMP_CODIGO';
                  DataCadastros.sqlUpdate.Open;
                  if (not DataCadastros.sqlUpdate.IsEmpty) then
                     begin
                         uteis.aviso('Parametro já definido para esta empresa !');
                         Edt_Empresa.Text := '';
                         Cbx_Empresa.Text := '';
                         Cbx_Empresa.ItemIndex := 0;
                         Cbx_Empresa.SetFocus;
                         Edt_Empresa.SetFocus;
                     end;
                  DataCadastros.sqlUpdate.Close;
              end;
       end;
end;

procedure TFormParametros.LimpaCheque;
begin
   {Limpa os campos da configuração dos cheques}
   {Valor}
   CLinhaValor.Clear;
   CColunaValor.Clear;
   ChkImprimiValor.Checked := False;
   {Extendo Linha 1}
   ClinhaValorExtLin1.Clear;
   cColunaValorExtCol1.Clear;
   {Extendo Linha 2}
   ClinhaValorExtLin2.Clear;
   cColunaValorExtCol2.Clear;
   cTamValorExt.Clear;
   ChkImpExtenso.Checked := False;
   {Favorecido}
   CLinhaFav.Clear;
   cColunaFav.Clear;
   ChkImpFav.Checked := False;
   {Cidade}
   CLinhaCid.Clear;
   CColunaCid.Clear;
   chkImpCid.Checked := False;
   {Dia}
   CLinhaDia.Clear;
   CColunaDia.Clear;
   ChkImpDia.Checked := False;
   {Mes}
   CLinhaMes.Clear;
   CColunaMes.Clear;
   ChkImpMes.Checked := False;
   {Ano}
   ClinhaAno.Clear;
   cColunaAno.Clear;
   ChkImpAno.Checked := False;
   {Digito do Ano}
   CbAno.ItemIndex   := 0;
   {Bom Para}
   CLinhaBom.Clear;
   CColunabom.Clear;
   ChkImpBom.Checked := False;
   CSaltoPg.Text    := '0';
end;

procedure TFormParametros.BitBtnAlterarCheqClick(Sender: tObject);
begin
   if (StrToIntDef(CCodBanco.Text,0) > 0) then
      begin
         DesabilitaCheque;
         Habilita_Objetos_Cheque;
         bIncluir := False;
         CLinhaValor.SetFocus;
      end
   else
      begin
         uteis.aviso('Informe a Conta para Alterar !');
         CCodBanco.SetFocus;
      end;
end;

procedure TFormParametros.ExcluirParamCheque;
begin
   DataCadastros.sqlUpdate.close;
   DataCadastros.SqlUpdate.sql.text :=SQLDEF('BANCOS','Delete from SYS_CHEQUE ','where BAN_CODIGO = '''+StrZero(CCodBanco.Text,4)+'''','','');
   DataCadastros.sqlUpdate.Execsql;
end;

procedure TFormParametros.BitBtnExcluirCheqClick(Sender: tObject);
begin
   if (StrToIntDef(CCodBanco.Text,0) > 0) then
      begin
         if uteis.confirmacao ( 'Deseja realmente apagar as configurações para o banco atual ?')=mryes then
            begin
               ExcluirParamCheque;
               LimpaCheque;
               DmCfg.CdsSysCheque.Refresh;
               HabilitaCheque;
           end;
     end
  else
     begin
        uteis.aviso('Informe a Conta para Exclusão !');
        CCodBanco.SetFocus;
     end;
end;

procedure TFormParametros.BitBtnGravarCheqClick(Sender: tObject);
begin
   if (bIncluir) then
      begin
         wSql1 := 'Insert into SYS_CHEQUE ('+
                  'EMP_CODIGO,'+
                  'BAN_CODIGO,'+
                  'SCH_FONTE,'+
                  'SCH_ENTRE_LINHAS,'+
                  'SCH_QTDE_LINHAS,'+
                  'SCH_VALOR,'+
                  'SCH_LINHA1_EXT,'+
                  'SCH_LINHA2_EXT,'+
                  'SCH_QTDE_CARACTERES,'+
                  'SCH_FAVORECIDO,'+
                  'SCH_CIDADE,'+
                  'SCH_DIA,'+
                  'SCH_MES,'+
                  'SCH_ANO,'+
                  'SCH_TAM_ANO,'+
                  'SCH_BOM_PARA) ';
         wSQL2 := 'Values('''+dbInicio.Empresa.EMP_CODIGO+''','''+
                              StrZero(CCodBanco.Text,4)+''','''+
                              IIF(RadGCheque.ItemIndex = 0,'17','10')+''','''+
                              SpinEntreLin.Text+''','''+
                              CSaltoPg.Text+''','''+
                              StrZero(CLinhaValor.Text,3)+StrZero(CColunaValor.Text,3)+IIF(ChkImprimiValor.checked ,'S','N')+''','''+
                              StrZero(ClinhaValorExtLin1.Text,3)+StrZero(cColunaValorExtCol1.Text,3)+IIF(ChkImpExtenso.checked ,'S','N')+''','''+
                              StrZero(ClinhaValorExtLin2.Text,3)+StrZero(cColunaValorExtCol2.Text,3)+IIF(ChkImpExtenso.checked ,'S','N')+''','''+
                              cTamValorExt.Text+''','''+
                              StrZero(CLinhaFav.Text,3)+StrZero(cColunaFav.Text,3)+IIF(ChkImpFav.checked ,'S','N')+''','''+
                              StrZero(CLinhaCid.Text,3)+StrZero(CColunaCid.Text,3)+IIF(chkImpCid.checked ,'S','N')+''','''+
                              StrZero(CLinhaDia.Text,3)+StrZero(CColunaDia.Text,3)+IIF(ChkImpDia.checked ,'S','N')+''','''+
                              StrZero(CLinhaMes.Text,3)+StrZero(CColunaMes.Text,3)+IIF(ChkImpMes.checked ,'S','N')+''','''+
                              StrZero(ClinhaAno.Text,3)+StrZero(cColunaAno.Text,3)+IIF(ChkImpAno.checked ,'S','N')+''','''+
                              iif(CbAno.ItemIndex = 0,'4','2')+''','''+
                              StrZero(CLinhaBom.Text,3)+StrZero(CColunabom.Text,3)+IIF(ChkImpBom.checked ,'S','N')+''')';
      end
   else
      begin
         wSql1 := 'Update SYS_CHEQUE SET '+
                  'BAN_CODIGO='''+StrZero(CCodBanco.Text,4)+''','+
                  'SCH_FONTE='''+IIF(RadGCheque.ItemIndex = 0,'17','10')+''','+
                  'SCH_ENTRE_LINHAS='''+SpinEntreLin.Text+''','+
                  'SCH_QTDE_LINHAS='''+CSaltoPg.Text+''','+
                  'SCH_VALOR='''+StrZero(CLinhaValor.Text,3)+StrZero(CColunaValor.Text,3)+IIF(ChkImprimiValor.checked ,'S','N')+''','+
                  'SCH_LINHA1_EXT='''+StrZero(ClinhaValorExtLin1.Text,3)+StrZero(cColunaValorExtCol1.Text,3)+IIF(ChkImpExtenso.checked ,'S','N')+''','+
                  'SCH_LINHA2_EXT='''+StrZero(ClinhaValorExtLin2.Text,3)+StrZero(cColunaValorExtCol2.Text,3)+IIF(ChkImpExtenso.checked ,'S','N')+''','+
                  'SCH_QTDE_CARACTERES='''+cTamValorExt.Text+''','+
                  'SCH_FAVORECIDO='''+StrZero(CLinhaFav.Text,3)+StrZero(cColunaFav.Text,3)+IIF(ChkImpFav.checked ,'S','N')+''','+
                  'SCH_CIDADE='''+StrZero(CLinhaCid.Text,3)+StrZero(CColunaCid.Text,3)+IIF(chkImpCid.checked ,'S','N')+''','+
                  'SCH_DIA='''+StrZero(CLinhaDia.Text,3)+StrZero(CColunaDia.Text,3)+IIF(ChkImpDia.checked ,'S','N')+''','+
                  'SCH_MES='''+StrZero(CLinhaMes.Text,3)+StrZero(CColunaMes.Text,3)+IIF(ChkImpMes.checked ,'S','N')+''','+
                  'SCH_ANO='''+StrZero(ClinhaAno.Text,3)+StrZero(cColunaAno.Text,3)+IIF(ChkImpAno.checked ,'S','N')+''','+
                  'SCH_TAM_ANO='''+iif(CbAno.ItemIndex = 0,'4','2')+''','+
                  'SCH_BOM_PARA='''+StrZero(CLinhaBom.Text,3)+StrZero(CColunabom.Text,3)+IIF(ChkImpBom.checked ,'S','N')+'''';
         wSQL2 := ' WHERE SCH_REGISTRO = '''+DmCfg.CdsSysChequeSCH_REGISTRO.AsString+'''';
      end;
   //
   try
     Screen.Cursor := crHourGlass;
     try
       DataCadastros.sqlUpdate.Close;
       DataCadastros.SqlUpdate.sql.text :=wSql1+wSql2;
       DataCadastros.sqlUpdate.Execsql;
       //
       bIncluir := False;
       AbrirParametroCheque;
       MostraParametroCh(CCodBanco.Text);
       HabilitaCheque;
       Desabilita_Objetos_Cheque;
       //
     finally
        screen.Cursor := crDefault;
        uteis.aviso('Configuração gravada com sucesso !');
     end;
   except on E:EdatabaseError do
     begin
        screen.Cursor := crDefault;
        uteis.erro  (pchar('Erro ao gravar parametro de cheque !'+e.message));
     end;
   end;
end;

procedure TFormParametros.BitBtnSairCheqClick(Sender: tObject);
begin
   close;
end;

procedure TFormParametros.HabilitaCheque;
begin
   BitBtnAlterarCheq.Enabled  := true;
   BitBtnExcluirCheq.Enabled  := True;
   BitBtnGravarCheq.Enabled   := False;
   BitBtnCancelarCheq.Enabled := False;
   BitBtnCancelarCheq.Visible := False;
   BitBtnSairCheq.Visible     := True;
end;

procedure TFormParametros.DesabilitaCheque;
begin
   BitBtnAlterarCheq.Enabled  := False;
   BitBtnExcluirCheq.Enabled  := False;
   BitBtnGravarCheq.Enabled   := True;
   BitBtnCancelarCheq.Enabled := True;
   BitBtnCancelarCheq.Visible := True;
   BitBtnSairCheq.Visible     := False;
end;

procedure TFormParametros.BitBtnCancelarCheqClick(Sender: tObject);
begin
   LimpaCheque;
   bIncluir := False;
   HabilitaCheque;
   Desabilita_Objetos_Cheque;
   AbrirParametroCheque;
   MostraParametroCh(CCodBanco.Text);
   CCodBanco.SetFocus;
end;
procedure TFormParametros.CCodBancoExit(Sender: tObject);
begin
   if (ActiveControl <> Nil)
   and(ActiveControl.Name <> 'BitBtnNovoCheq')
   and(ActiveControl.Name <> 'BitBtnExcluirCheq')
   and(ActiveControl.Name <> 'BitBtnGravarCheq')
   and(ActiveControl.Name <> 'BitBtnCancelarCheq')
   and(ActiveControl.Name <> 'BitBtnSairCheq') then
      begin
         if (StrToIntDef(CCodBanco.Text,0) > 0) then
            begin
               if SqlCdsBanco.Locate('BAN_CODIGO',CCodBanco.Text,[]) then
                 begin
                   CbBancoCh.Text := SqlCdsBancoBAN_APELIDO.AsString;
                   MostraParametroCh(CCodBanco.Text);
                 end
               else
                 begin
                    uteis.aviso('Conta não encontrado com o código informado !');
                    CbBancoch.Text := '';
                 end;
            end;
      end;
end;

procedure TFormParametros.PreencheBancoCh;
begin
  try
    SqlCdsBanco.close;
    SqlCdsBanco.Open;
    SqlCdsBanco.first;
    CbBancoCh.Clear;
      while not SqlCdsBanco.Eof do
         begin
             CbBancoCh.Items.Add(SqlCdsBancoBAN_APELIDO.AsString);
             SqlCdsBanco.Next;
         end;
   except on E:EdatabaseError do
      begin
          uteis.erro  (pchar('Erro ao listar bancos !'+e.message));
      end;
   end;
end;

procedure TFormParametros.CbBancoChExit(Sender: tObject);
begin
   if (ActiveControl <> Nil)
      and(ActiveControl.Name <> 'BitBtnNovoCheq')
      and(ActiveControl.Name <> 'BitBtnExcluirCheq')
      and(ActiveControl.Name <> 'BitBtnGravarCheq')
      and(ActiveControl.Name <> 'BitBtnCancelarCheq')
      and(ActiveControl.Name <> 'BitBtnSairCheq') then
      begin
         if (CbBancoCh.Text <> '') then
            begin
               if  SqlCdsBanco.locate('BAN_APELIDO',CbBancoCh.Text,[])  then
                 Begin
                    CCodBanco.Text := SqlCdsBancoBAN_CODIGO.AsString;
                    MostraParametroCh(CCodBanco.Text);
                 End
               else
                  begin
                     uteis.aviso('Conta não encontrado com o nome informado !');
                     CCodBanco.SetFocus;
                  end;
            end;
      end;
end;

procedure TFormParametros.MostraParametroCh(const sCodBanco:String);
begin
   try
     if (DmCfg.CdsSysCheque.Locate('BAN_CODIGO',StrZero(sCodBanco,4),[]) ) then
        begin
           SqlCdsBanco.Locate('BAN_CODIGO',StrZero(CCodBanco.Text,4),[]);
           CbBancoCh.Text           := SqlCdsBancoBAN_APELIDO.AsString;
           RadGCheque.ItemIndex     := iif(DmCfg.CdsSysChequeSCH_FONTE.AsInteger = 17,0,1);
           {Valor Numero}
           CLinhaValor.Text         := COPY(DmCfg.CdsSysChequeSCH_VALOR.AsString,1,3);
           CColunaValor.Text        := COPY(DmCfg.CdsSysChequeSCH_VALOR.AsString,4,3);
           ChkImprimiValor.Checked  := IIF(COPY(DmCfg.CdsSysChequeSCH_VALOR.AsString,7,1) = 'S','TRUE','FALSE');
           {Linha Extenso 1}
           ClinhaValorExtLin1.Text  := COPY(DmCfg.CdsSysChequeSCH_LINHA1_EXT.AsString,1,3);
           cColunaValorExtCol1.Text := COPY(DmCfg.CdsSysChequeSCH_LINHA1_EXT.AsString,4,3);
           ChkImpExtenso.Checked    := IIF(COPY(DmCfg.CdsSysChequeSCH_LINHA1_EXT.AsString,7,1) = 'S','TRUE','FALSE');
           {Linha Extenso 2}
           ClinhaValorExtLin2.Text  := COPY(DmCfg.CdsSysChequeSCH_LINHA2_EXT.AsString,1,3);
           CColunaValorExtCol2.Text := COPY(DmCfg.CdsSysChequeSCH_LINHA2_EXT.AsString,4,3);
           ChkImpExtenso.Checked    := IIF(COPY(DmCfg.CdsSysChequeSCH_LINHA2_EXT.AsString,7,1) = 'S','TRUE','FALSE');
           {Quantidade de Caracteres no Valor do Extenso}
           cTamValorExt.Text        := DmCfg.CdsSysChequeSCH_QTDE_CARACTERES.AsString;
           {Favorecido}
           CLinhaFav.Text           := COPY(DmCfg.CdsSysChequeSCH_FAVORECIDO.AsString,1,3);
           cColunaFav.Text          := COPY(DmCfg.CdsSysChequeSCH_FAVORECIDO.AsString,4,3);
           ChkImpFav.Checked        := IIF(COPY(DmCfg.CdsSysChequeSCH_FAVORECIDO.AsString,7,1) = 'S','TRUE','FALSE');
           {Cidade}
           CLinhaCid.Text           := COPY(DmCfg.CdsSysChequeSCH_CIDADE.AsString,1,3);
           CColunaCid.Text          := COPY(DmCfg.CdsSysChequeSCH_CIDADE.AsString,4,3);
           chkImpCid.Checked        := IIF(COPY(DmCfg.CdsSysChequeSCH_CIDADE.AsString,7,1) = 'S','TRUE','FALSE');
           {Dia}
           CLinhaDia.Text           := COPY(DmCfg.CdsSysChequeSCH_DIA.AsString,1,3);
           CColunaDia.Text          := COPY(DmCfg.CdsSysChequeSCH_DIA.AsString,4,3);
           ChkImpDia.Checked        := IIF(COPY(DmCfg.CdsSysChequeSCH_DIA.AsString,7,1) = 'S','TRUE','FALSE');
           {Mes}
           CLinhaMes.Text           := COPY(DmCfg.CdsSysChequeSCH_MES.AsString,1,3);
           CColunaMes.Text          := COPY(DmCfg.CdsSysChequeSCH_MES.AsString,4,3);
           ChkImpMes.Checked        := IIF(COPY(DmCfg.CdsSysChequeSCH_MES.AsString,7,1) = 'S','TRUE','FALSE');
           {Ano}
           ClinhaAno.Text           := COPY(DmCfg.CdsSysChequeSCH_ANO.AsString,1,3);
           cColunaAno.Text          := COPY(DmCfg.CdsSysChequeSCH_ANO.AsString,4,3);
           ChkImpAno.Checked        := IIF(COPY(DmCfg.CdsSysChequeSCH_ANO.AsString,7,1) = 'S','TRUE','FALSE');
           {Qtde Digito Ano}
           CbAno.ItemIndex          := IIF(DmCfg.CdsSysChequeSCH_TAM_ANO.AsInteger = 4,0,1);
           {Bom Para}
           CLinhaBom.Text           := COPY(DmCfg.CdsSysChequeSCH_BOM_PARA.AsString,1,3);
           CColunabom.Text          := COPY(DmCfg.CdsSysChequeSCH_BOM_PARA.AsString,4,3);
           ChkImpBom.Checked        := IIF(COPY(DmCfg.CdsSysChequeSCH_BOM_PARA.AsString,7,1) = 'S','TRUE','FALSE');
           {Salto de Pagina}
           CSaltoPg.Text       :=  DmCfg.CdsSysChequeSCH_QTDE_LINHAS.AsString;
           {Entre Linhas}
           SpinEntreLin.Value       := DmCfg.CdsSysChequeSCH_ENTRE_LINHAS.AsInteger;
        end
     else
        begin
           LimpaCheque;
        end;
   except
     on E:EDataBaseError do
        begin
           uteis.erro  (pchar('Erro ao localizar o Parametro do Cheque !'+#13#10+
                      'Mensagem erro: '+e.message));
        end;
   end;
end;

procedure TFormParametros.DBEdit16Exit(Sender: tObject);
begin
   if DBEdit16.Field.Value > 6 then
     Begin
         uteis.aviso('Atenção número máximo de casas decimais não pode ser maior que 5 !');
         DataCadastros1.CdsParametrosPMT_QTDE_DEC_PED.AsCurrency := 5;
     end;
   if DBEdit16.Field.Value < 0 then
     Begin
         uteis.aviso('Atenção número máximo de casas decimais não pode ser menor que 0(zero)!');
         DataCadastros1.CdsParametrosPMT_QTDE_DEC_PED.AsCurrency := 2;
     end;

end;

procedure TFormParametros.DBEdit17Exit(Sender: tObject);
begin
    if (DBEdit17.Text <> '') then
       DBEdit17.Text := StrZero(DBEdit17.Text,4);
end;

procedure TFormParametros.DBEdit18Exit(Sender: tObject);
begin
    if (DBEdit18.Text <> '') then
       DBEdit18.Text := StrZero(DBEdit18.Text,4);
end;

procedure TFormParametros.AbrirParametroCheque;
begin
   try
     Screen.Cursor := crHourGlass;
     try
       DmCfg.CdsSysCheque.Close;
       DmCfg.CdsSysCheque.CommandText := SQLDEF('BANCOS','Select T1.* from SYS_CHEQUE T1 ','','','T1.');
       DmCfg.CdsSysCheque.Open;
       DmCfg.CdsSysCheque.First;
       if (not DmCfg.CdsSysCheque.IsEmpty) then
          begin
             CCodBanco.Text := DmCfg.CdsSysChequeBAN_CODIGO.AsString;
             MostraParametroCh(CCodBanco.Text);
          end;
     finally
        Screen.Cursor := crDefault;
     end;
   except
      on E:EDatabaseError do
         begin
            uteis.erro  (pchar('Impossivel abrir tabela Parametros do Cheque !'+#13#10+
                       'Mensagem erro: '+e.message));
         end;
   end;
end;



procedure TFormParametros.FormCreate(Sender: tObject);
begin
     fAlterou:=False;
     bIncluir := False;
     cxTreeView1.FullExpand;
     Self.Height:= 633;
     Self.Width:=977;
     inherited;

     GROUPBOX38.ENABLED := dbInicio.BuscaUmdadoSqlAsInteger('Select cast(count(*) as integer) as conta from    EMP0000 WHERE EMP_GENERATION_NFE='+qStr('S'))=0 ;
     if not GROUPBOX38.ENABLED then
        Label489.caption := '* Só habilita quando desmarcar '+qStr('Sincroniza numero NFe com sequencia de Fatura')+'(Cad.Empresa)';
     PathNewRel := dbInicio.GetParametroSistema('PMT_PATHRELATORIO');
end;

procedure TFormParametros.Desabilita_Objetos_Cheque;
begin
   GrpDados.Enabled := False;
end;

procedure TFormParametros.Habilita_Objetos_Cheque;
begin
   GrpDados.Enabled := True;
end;

procedure TFormParametros.CbBancoChClick(Sender: tObject);

begin
   if (CbBancoCh.Text <> '') then
      begin
         if  SqlCdsBanco.locate('BAN_APELIDO',CbBancoCh.Text,[])  then
           Begin
              CCodBanco.Text := SqlCdsBancoBAN_CODIGO.AsString;
              MostraParametroCh(CCodBanco.Text);
           End
         else
            begin
               uteis.aviso('Conta não encontrado com o nome informado !');
               CCodBanco.SetFocus;
            end;
      end;
end;

procedure TFormParametros.BitNovoCheqClick(Sender: tObject);
begin
   Habilita_Objetos_Cheque;
   DesabilitaCheque;
   bIncluir := True;
   LimpaCheque;
   CLinhaValor.SetFocus;
end;

procedure TFormParametros.Rad_Lote_AutomaticoClick(Sender: tObject);
begin
   if (DataCadastros1.CdsParametros.State in [dsBrowse]) then
      DataCadastros1.CdsParametros.Edit;
end;

procedure TFormParametros.CbAlmoxarifadoEntradaPropertiesChange(
  Sender: tObject);
begin
    if (DataCadastros1.CdsParametros.State in [DsBrowse]) then
       DataCadastros1.CdsParametros.Edit;
end;

procedure TFormParametros.cxTreeView1Change(Sender: tObject;
  Node: TTreeNode);
begin
   if (Node.Text = 'Global') then
      PGlobal.Show
   else
   if (Node.Text = 'Estoque') then
      PEstoque.Show
   else
    if (Node.Text = 'Expedição') then
      PEXPEDICAO.Show
   else
   if (Node.Text = 'Financeiro') then
   begin
      pcFinanceiro.ActivePageIndex := 0;
      PFinanceiro.Show;
   end
   else
   if (Node.Text = 'Ordem de Compra') then
      POrdemCompra.Show
   else
   if (Node.Text = 'Pedido') then
      PPedido.Show
   else
   if (Node.Text = 'Produção') then
      PProducao.Show
   else
   if (Node.Text = 'Produto') then
   begin
      PProduto.Show;
      gbMedidaProduto.visible := DBINICIO.Empresa.bPMT_HABILITA_MEDIDAPRD;
   end
   else
   if (Node.Text = 'Fiscal') then
      PFiscal.Show
   else
   if (Node.Text = 'Sintegra') then
      PSintegra.Show
   else
   if (Node.Text = 'Faturamento') then
      PFaturamento.Show
   else
   if (Node.Text = 'Nota Fiscal') then
      PNotaFiscal.Show
   else
   if (Node.Text = 'Layout') then
      PNotaFiscalLayout.Show
   else
   if (Node.Text = 'Etiqueta') then
      PNotaFiscalEtiqueta.Show
   else
   if (Node.Text = 'Duplicata') then
      PDuplicata.Show
   else
   if (Node.Text = 'Cheque') then
      PCheque.Show
   else
   if (Node.Text = 'Comissão') then
      PComissao.Show
   else
   if (Node.Text = 'Boleto') then
      PBoleto.Show
   else
   if (Node.Text = 'Layout - Matricial') then
      PBoletoLayout.Show
   else
   if Node.Text = 'Orçamento Industrial' then
     POrcaIndustrial.Show
   else
       uteis.aviso(Pchar(Node.Text + 'Não Localizado'));
end;

procedure TFormParametros.sbtnGetCertClick(Sender: tObject);
begin
   if (DataCadastros1.CdsParametros.State in [DsBrowse]) then
       DataCadastros1.CdsParametros.Edit;
   DataCadastros1.CdsParametrosPMT_CERTIFICADO_DIGITAL.AsString := ACBrNF1.SSL.SelecionarCertificado;//acbrnf1.Configuracoes.Certificados.SelecionarCertificado;
end;

procedure TFormParametros.dbedtPMT_CERTIFICADO_DIGITALChange(
  Sender: tObject);
begin
   if (DataCadastros1.CdsParametros.State in [DsBrowse]) then
       DataCadastros1.CdsParametros.Edit;
end;

procedure TFormParametros.dbHabilitaMedidaClick(Sender: TObject);
begin
  inherited;
  gbMedidaProduto.Visible := dbHabilitaMedida.Checked;
end;

procedure TFormParametros.FormDestroy(Sender: tObject);
begin
     SqlCdsAlmoxarifadoGeral.Close;
     SqlCdsEmpresa.Close;
     SqlCdsBanco.Close;
     SqlCdsAtribFor.Close;
     SqlCdsBco.Close;
     SqlCdsCCT.Close;
     SqlCdsFor.Close;
     SqlCdsPc.Close;
     SqlCdsPag.Close;
     DataCadastros1.CdsParametros.close;
     DMCFG.CdsNF.Close;
     DMCFG.CdsDupl.Close;
     DmCfg.CdsEtiq.Close;
     DmCfg.CdsBloq.Close;
     DataCadastros.sqlUpdate.close;
     DmCfg.CdsSysCheque.Close;
     inherited;
end;

procedure TFormParametros.DBCheckBox25Click(Sender: TObject);
begin
  inherited;
  if DataCadastros1.CdsParametros.State in [dsInsert, dsEdit] then
  begin
    if DBCheckBox25.Checked then
    begin
     DBCkBoxComis_Prod.Checked := false;
     DataCadastros1.CdsParametrosPMT_COMIS_PROD.Value := 'N';
     DBCheckBox53.Checked := false;
     DataCadastros1.CdsParametrosPMT_COMIS_SIMPLES.Value := 'N';
    end;
  end;
end;

procedure TFormParametros.cbHabilitaOrcamentoParaClienteSemCadastroClick(Sender: TObject);
begin
  inherited;
  cbInformacoesObrigatoriasParaClienteSemCadastro.Enabled := cbHabilitaOrcamentoParaClienteSemCadastro.Checked;
end;

procedure TFormParametros.DBCheckBox42Click(Sender: tObject);
begin
     btScript.Enabled := DBCheckBox42.Checked;
end;

procedure TFormParametros.btScriptClick(Sender: tObject);
Var tcr: TfrmPesquisaTabelas;
begin
     tcr:= TfrmPesquisaTabelas.Create(self);
     Try
        tcr.MigrarTabelas( btScript );
     finally
            FreeAndNil(tcr);
     end;
end;

procedure TFormParametros.DBCheckBox44Exit(Sender: tObject);
begin
     if DBCheckBox44.Checked then
        DBInicio.MainDB.ExecuteDirect('update prmt0001 set PMT_USAR_SEQUENCIA_NFE_UNICA='+qStr('S'))
     else
        DBInicio.MainDB.ExecuteDirect('update prmt0001 set PMT_USAR_SEQUENCIA_NFE_UNICA='+qStr('N'));

end;

procedure TFormParametros.ckPMT_VALOR_KITClick(Sender: TObject);
begin
  inherited;
  if not ckPMT_VALOR_KIT.Checked then
    ckPMT_ITENS_KIT.Checked := ckPMT_VALOR_KIT.Checked;

  ckPMT_ITENS_KIT.Enabled := ckPMT_VALOR_KIT.Checked;
end;

procedure TFormParametros.DBCheckBox53Click(Sender: TObject);
begin
  inherited;
  if DataCadastros1.CdsParametros.State in [dsInsert, dsEdit] then
  begin
    if DBCheckBox53.Checked then
    begin
     DBCheckBox25.Checked := false;
     DataCadastros1.CdsParametrosPMT_COMIS_ESCALA.Value := 'N';
     DBCkBoxComis_Prod.Checked := false;
     DataCadastros1.CdsParametrosPMT_COMIS_PROD.Value := 'N';
    end;
  end;
end;

procedure TFormParametros.ckPMT_DIGITACAO_GRID_VENDASClick(Sender: TObject);
begin
  inherited;
  if (ckPMT_VENDA_GRADE.DataSource.DataSet.State  in [dsEdit, dsInsert]) then
  begin
    if TDBCheckBox(sender).Checked then begin
       ckPMT_VENDA_GRADE.Checked := False;
       ckPMT_OBRIGAR_GRADE_VENDA.Checked := False;
       ckPMT_VENDA_GRADE.Field.Value := 'N';
       ckPMT_OBRIGAR_GRADE_VENDA.Field.Value := 'N';
    end;
  end;
  gbNomeGrade.Visible := ckPMT_DIGITACAO_GRID_VENDAS.Checked;
end;

procedure TFormParametros.ckPMT_VENDA_GRADEClick(Sender: TObject);
begin
  inherited;
  if (ckPMT_DIGITACAO_GRID_VENDAS.DataSource.DataSet.State in [dsEdit, dsInsert]) then
  begin
    if TDBCheckBox(sender).Checked then begin
       ckPMT_DIGITACAO_GRID_VENDAS.Checked := False;
       ckPMT_DIGITACAO_GRID_VENDAS.Field.Value := 'N';
    end;
  end;
  gbNomeGrade.Visible := ckPMT_VENDA_GRADE.Checked;
end;

procedure TFormParametros.DBCkBoxComis_ProdClick(Sender: TObject);
begin
  inherited;
  if DataCadastros1.CdsParametros.State in [dsInsert, dsEdit] then
  begin
    if DBCkBoxComis_Prod.Checked then
    begin
     DBCheckBox25.Checked := false;
     DataCadastros1.CdsParametrosPMT_COMIS_ESCALA.Value := 'N';
     DBCheckBox53.Checked := false;
     DataCadastros1.CdsParametrosPMT_COMIS_SIMPLES.Value := 'N';
    end;
  end;
end;

end.

