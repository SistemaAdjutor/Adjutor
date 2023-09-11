{**************************************************************************
| Programa...:  PRD0001 - Nome formulario = FormProduto
| Objetivo...:  Cadastro e manutenção de produto
| Analista...:  Marcio Neu Pacheco
| Programador:  Jackson e Márcio
|
| Comentários:
|
| Criação..........: Out/98
| Ultima Alteração.: Nov/02
| Alterado por.....: Márcio
|
| Migração ............Julho/2003
| Feito por ...........Rodrigo Ramos
|
***************************************************************************}
unit Prd0001B;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Mask, ExtCtrls, ComCtrls, Buttons, DB, DBTables, RwFunc,
  Grids, DBGrids, DirOutln, Provider, SqlExpr,SqlClientDataSet, DBClient, DBLocal, DBLocalS,
   rxToolEdit,  rxCurrEdit, RXDBCtrl, Menus, ppBands, ppCtrls, ppVar, ppPrnabl,
  ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  ppStrtch, ppSubRpt, ppModule, raCodMod, Data.DBXFirebird, ppDesignLayer, ppParameter, SimpleDS;

type
  TFormProduto = class(TForm)
    DsQFornec: TDataSource;
    CdsFornecedorAux: TSQLClientDataSet;
    SqlCdsFichaTec: TSQLClientDataSet;
    CdsFornecedorAuxFOR_CODIGO: TStringField;
    CdsFornecedorAuxFOR_RAZAO: TStringField;
    CdsFornecedorAuxFOR_CONTATO: TStringField;
    CdsFornecedorAuxFOR_FONCONT: TStringField;
    CdsFornecedorAuxPRD_REFER: TStringField;
    CdsFornecedorAuxFOR_FONE: TStringField;
    CdsFornecedorAuxFOR_EMAIL: TStringField;
    CdsFornecedorAuxFOR_PRAZOVENDAS: TStringField;
    SqlCdsTipo: TSQLClientDataSet;
    SqlCdsGrupo: TSQLClientDataSet;
    SqlCdsSegm: TSQLClientDataSet;
    SqlCdsTipoPTI_CODIGO: TStringField;
    SqlCdsTipoPTI_DESCRI: TStringField;
    SqlCdsTipoEMP_CODIGO: TStringField;
    SqlCdsGrupoPGR_CODIGO: TStringField;
    SqlCdsGrupoPGR_DESCRI: TStringField;
    SqlCdsGrupoEMP_CODIGO: TStringField;
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
    Label25: TLabel;
    Label8: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label13: TLabel;
    SpeedButton1: TSpeedButton;
    Label29: TLabel;
    Label30: TLabel;
    DbePrd_Descri: TDBEdit;
    DbePrd_PesoKg: TDBEdit;
    DBePrd_comple: TDBEdit;
    DbePrd_embala: TDBEdit;
    DbePrd_Garantia: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBEPRD_CODBAR: TDBEdit;
    Edt_CodOriginal: TDBEdit;
    DbePrd_PesoLiq: TDBEdit;
    GrpPosicaoEstoque: TGroupBox;
    Panel3: TPanel;
    Panel5: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel12: TPanel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    Panel11: TPanel;
    DBEdit19: TDBEdit;
    DbeQtdeVar1: TDBEdit;
    DbeQtdeVar2: TDBEdit;
    DbeQtdeVar3: TDBEdit;
    DbeQtdeVar4: TDBEdit;
    DbeQtdeVar5: TDBEdit;
    DbeQtdeVar6: TDBEdit;
    DbeQtdeVar7: TDBEdit;
    DbeQtdeVar8: TDBEdit;
    DbeNomeV1: TDBEdit;
    DbeNomeV2: TDBEdit;
    DbeNomeV3: TDBEdit;
    DbeNomeV4: TDBEdit;
    DbeNomeV5: TDBEdit;
    DbeNomeV6: TDBEdit;
    DbeNomeV7: TDBEdit;
    DbeNomeV8: TDBEdit;
    GroupBox3: TGroupBox;
    Label18: TLabel;
    Label24: TLabel;
    DBePrd_minimo: TDBEdit;
    DbePrd_Maximo: TDBEdit;
    GroupBox5: TGroupBox;
    Label10: TLabel;
    Label12: TLabel;
    DBePrd_pcusto: TDBEdit;
    DBePrd_medio: TDBEdit;
    PgCtrl_Produtos: TPageControl;
    TbS_Caract: TTabSheet;
    Panel6: TPanel;
    ImgProduto: TImage;
    BitBtn1: TBitBtn;
    RichDoc: TRichEdit;
    TbS_Fornec: TTabSheet;
    Panel7: TPanel;
    Label16: TLabel;
    DBeFor_codigo: TDBEdit;
    EdtFor: TEdit;
    DBGrid1: TDBGrid;
    TbS_FatorConv: TTabSheet;
    Label17: TLabel;
    utilizar: TDBCheckBox;
    GroupBox1: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    Label27: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Rad_divisor: TRadioButton;
    Rad_multi: TRadioButton;
    GroupBox6: TGroupBox;
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
    GroupBox4: TGroupBox;
    Label34: TLabel;
    Label33: TLabel;
    Label26: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    DbcLkPrd_IPI: TDBLookupComboBox;
    DbePrd_ICMS: TDBEdit;
    DbePrd_ICMSubs: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit4: TDBEdit;
    Panel8: TPanel;
    Bit_Lista: TBitBtn;
    Bit_Relatorio: TBitBtn;
    Panel1: TPanel;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    Bit_novo: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    SqlCdsProduto: TSQLClientDataSet;
    SqlCdsProdutoPRD_REFER: TStringField;
    SqlCdsProdutoPRD_DESCRI: TStringField;
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
    GroupBox2: TGroupBox;
    Label23: TLabel;
    DBEPRD_TIPO: TDBEdit;
    CbTipo: TComboBox;
    Label22: TLabel;
    DBEPRD_GRUPO: TDBEdit;
    CbGrupo: TComboBox;
    Label7: TLabel;
    DBEPRD_SEGMENTO: TDBEdit;
    CbSegm: TComboBox;
    Label3: TLabel;
    EdtPrd_Refer: TEdit;
    DBNavigator1: TDBNavigator;
    EdtPrd_codigo: TEdit;
    GroupBox8: TGroupBox;
    Label6: TLabel;
    DBComboBox2: TDBComboBox;
    Label11: TLabel;
    DBePrd_pvenda: TDBEdit;
    SqlCdsItensFicha: TSQLClientDataSet;
    DsItensFicha: TDataSource;
    SqlCdsMaterial: TSQLClientDataSet;
    SqlCdsMaterialPRD_REFER: TStringField;
    SqlCdsMaterialPRD_DESCRI: TStringField;
    SqlRelProdutos: TSQLClientDataSet;
    SqlRelProdutosPRD_REFER: TStringField;
    SqlRelProdutosPRD_DESCRI: TStringField;
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
    ppDBPipeline1: TppDBPipeline;
    DsRelItens: TDataSource;
    ppRelFichaTec: TppReport;
    CdsRelItens: TClientDataSet;
    CdsRelItensPRD_REFER_ITENS: TStringField;
    CdsRelItensPRD_DESCRI: TStringField;
    CdsRelItensPRD_UND: TStringField;
    CdsRelItensPRD_GRADE: TStringField;
    CdsRelItensFTI_MODE1: TStringField;
    CdsRelItensFTI_MODE2: TStringField;
    CdsRelItensFTI_MODE3: TStringField;
    CdsRelItensFTI_MODE4: TStringField;
    CdsRelItensFTI_MODE5: TStringField;
    CdsRelItensFTI_MODE6: TStringField;
    CdsRelItensFTI_MODE7: TStringField;
    CdsRelItensFTI_MODE8: TStringField;
    CdsRelItensPRD_REFER: TStringField;
    CdsRelItensFTI_UC: TCurrencyField;
    ppHeaderBand1: TppHeaderBand;
    ppShape5: TppShape;
    ppShape1: TppShape;
    ppShape14: TppShape;
    ppShape13: TppShape;
    ppShape12: TppShape;
    ppShape11: TppShape;
    ppShape10: TppShape;
    ppShape9: TppShape;
    ppShape8: TppShape;
    ppShape7: TppShape;
    ppShape6: TppShape;
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
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel23: TppLabel;
    ppDBText23: TppDBText;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLabel2: TppLabel;
    ppLabel15: TppLabel;
    ppDBText3: TppDBText;
    ppLabel16: TppLabel;
    ppDBText4: TppDBText;
    ppLabel17: TppLabel;
    ppDBText5: TppDBText;
    ppLabel18: TppLabel;
    ppDBText6: TppDBText;
    ppLabel19: TppLabel;
    ppDBText7: TppDBText;
    ppLabel20: TppLabel;
    ppDBText8: TppDBText;
    ppLabel21: TppLabel;
    ppDBText9: TppDBText;
    ppLabel22: TppLabel;
    ppDBText10: TppDBText;
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
    ppDetailBand2: TppDetailBand;
    ppDBText11: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppLine6: TppLine;
    ppLine8: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine21: TppLine;
    ppDBText12: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel24: TppLabel;
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
    CdsRelItensFTI_ITEM: TStringField;
    ppDBText38: TppDBText;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLabel29: TppLabel;
    ppDBPipeline2: TppDBPipeline;
    ppDBText39: TppDBText;
    CdsRelItensPRD_PCUSTO: TCurrencyField;
    Label62: TLabel;
    DBEPRD_CUSTOCOMIPI: TDBEdit;
    EdtSigla: TEdit;
    SqlCdsTipoPTI_SIGLA: TStringField;
    PAN_FTC03: TPanel;
    Label32: TLabel;
    Label35: TLabel;
    Label36: TLabel;
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
    DbDtFTC_CRIACAO: TDBDateEdit;
    DbeFTC_TUP: TDBEdit;
    EdtDescricao: TEdit;
    GrpMateriaPrima: TGroupBox;
    PanMaterial: TPanel;
    Label57: TLabel;
    Label61: TLabel;
    SpProduto: TSpeedButton;
    Label58: TLabel;
    Label60: TLabel;
    Label59: TLabel;
    EdtRefer: TEdit;
    EdtProduto: TEdit;
    CurrConsumo: TCurrencyEdit;
    CurrAnterior: TCurrencyEdit;
    DateModif: TDateEdit;
    GrpVarConsumo: TGroupBox;
    ChkV1: TCheckBox;
    ChkV2: TCheckBox;
    ChkV3: TCheckBox;
    ChkV4: TCheckBox;
    ChkV5: TCheckBox;
    ChkV6: TCheckBox;
    ChkV7: TCheckBox;
    ChkV8: TCheckBox;
    PanMenu: TPanel;
    Bit_GravarMateria: TBitBtn;
    Bit_CancelarMateria: TBitBtn;
    Bit_ExcluirMateria: TBitBtn;
    TreeViewMateria: TTreeView;
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
    SqlCdsMaterialPTI_SIGLA: TStringField;
    SqlCdsItensFichaFTI_REGISTRO: TIntegerField;
    SqlCdsItensFichaPRD_REFER: TStringField;
    SqlCdsItensFichaPRD_REFER_ITENS: TStringField;
    SqlCdsItensFichaFTI_MODIFICADA: TSQLTimeStampField;
    SqlCdsItensFichaFTI_UC: TFMTBCdField;
    SqlCdsItensFichaFTI_UCMODIFIC: TFMTBCdField;
    SqlCdsItensFichaFTI_MODE1: TStringField;
    SqlCdsItensFichaFTI_MODE2: TStringField;
    SqlCdsItensFichaFTI_MODE3: TStringField;
    SqlCdsItensFichaFTI_MODE4: TStringField;
    SqlCdsItensFichaFTI_MODE5: TStringField;
    SqlCdsItensFichaFTI_MODE6: TStringField;
    SqlCdsItensFichaFTI_MODE7: TStringField;
    SqlCdsItensFichaFTI_MODE8: TStringField;
    SqlCdsItensFichaFTI_PRECOCUSTO: TFMTBCdField;
    SqlCdsItensFichaEMP_CODIGO: TStringField;
    SqlCdsItensFichaFTI_SEQUENCIA: TIntegerField;
    SqlCdsItensFichaFTI_REFER_PAI: TStringField;
    SqlCdsItensFichaFTI_TIPO_PI: TStringField;
    SqlCdsItensFichaFTI_NIVEL: TIntegerField;
    SqlCdsItensFichaPRD_DESCRI: TStringField;
    SqlCdsItensFichaPRD_GRADE: TStringField;
    SqlCdsItensFichaPRD_UND: TStringField;
    SqlCdsItensFichaPRD_PCUSTO: TFMTBCdField;
    SqlCdsItensFichaPTI_SIGLA: TStringField;
    procedure MudaCorCampos(Sender: tObject);
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
    procedure BuscaProduto;
    procedure Bit_CancelarClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure DBNavigator1Click(Sender: tObject; Button: TNavigateBtn);
    procedure FormShow(Sender: tObject);
    procedure Bit_ListaClick(Sender: tObject);
    procedure Bit_RelatorioClick(Sender: tObject);
    procedure EdtPrd_ReferExit(Sender: tObject);
    procedure EdtPrd_ReferClick(Sender: tObject);
    procedure SpeedButton1Click(Sender: tObject);
    procedure PgCtrl_ProdutosChange(Sender: tObject);
    procedure AtivaSqls;
    procedure DbePrd_MaximoEnter(Sender: tObject);
    procedure DBePrd_minimoEnter(Sender: tObject);
    procedure DbePrd_MaximoClick(Sender: tObject);
    procedure DbeVar2Exit(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: tObject);
    procedure FormPaint(Sender: tObject);
    procedure Panel7Enter(Sender: tObject);
    procedure DBEPRD_CODBARKeyPress(Sender: tObject; var Key: Char);
    procedure DBEPRD_CODBARExit(Sender: tObject);
    procedure PreenchaCombo;
    procedure CbTipoClick(Sender: tObject);
    procedure CbTipoExit(Sender: tObject);
    procedure DBEPRD_TIPOExit(Sender: tObject);
    procedure DBEPRD_GRUPOExit(Sender: tObject);
    procedure CbGrupoClick(Sender: tObject);
    procedure CbGrupoExit(Sender: tObject);
    procedure DBEPRD_SEGMENTOExit(Sender: tObject);
    procedure CbSegmClick(Sender: tObject);
    procedure CbSegmExit(Sender: tObject);
    procedure DBEPRD_CODBAREnter(Sender: tObject);
    procedure EdtPrd_ReferEnter(Sender: tObject);
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
    procedure DbDtFTC_CRIACAOExit(Sender: tObject);
    procedure EdtReferChange(Sender: tObject);
    procedure EdtReferClick(Sender: tObject);
    procedure EdtReferEnter(Sender: tObject);
    procedure EdtReferExit(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure CurrConsumoClick(Sender: tObject);
    procedure CurrAnteriorClick(Sender: tObject);
    procedure TreeViewMateriaDblClick(Sender: tObject);
    procedure TreeViewMateriaChange(Sender: tObject; Node: TTreeNode);
    procedure TreeViewMateriaClick(Sender: tObject);
    procedure TreeViewMateriaKeyPress(Sender: tObject; var Key: Char);
  private
    { Private declarations }
    wIncluir,wIncluirItem : Boolean;
    wPA,wPI,
    wRefer       :String;
    wCodBarr     : String[13];
    {campos}
    CampoData2   : TDateEdit;
    CampoData    : TDBDateEdit;
    CampoEdit    : TEdit;
    CampoDBEdit  : TDBEdit;
    CampoBox     : TComboBox;
    CampoLookup  : TDBLookupComboBox;
    CampoDbCombo : TDBComboBox;
    CampoCurrency: TCurrencyEdit;
    procedure MostraDados;
    procedure LimparDadosFTC;
    procedure HabilitaMateria;
    procedure DesabilitaMateria;
    procedure ExcluirItensFTC;
    procedure BuscaMaterial;
    procedure Carrega_Arvore;
    procedure BuscaFichaTecnica;
    procedure BuscaItensFichaTec;
    procedure MostraItensFichaTec;
    procedure PopulaTreeView(const TreeView: TTreeView; const Node: TTreeNode);
    procedure VerificaNos(Refer: String; var AddFalseNode: Boolean);
  public
    { Public declarations }
    wcodbarrant:string;
  end;

  TPont = ^String;

var
  FormProduto: TFormProduto;
  wRefAnterior : String;

implementation


{$R *.DFM}

uses Prd0006, GImpProd, ADJ0001, DataCad, DataCad1, Men0001,
  DmProdu, Ftc0003;







var
{Para saber Quando foi clicado na combo da referência}
WClicked : Boolean;


procedure TFormProduto.MudaCorCampos(Sender: tObject);
begin
  {cor dos campos TDBEdit}
   if Assigned(CampoDbEdit) then
      begin
         CampoDbEdit.color := clWindow;
      end;
   if ActiveControl is TDBEdit then
      begin
         if TDBEdit(ActiveControl).color = $00D7D7D7 then
            begin
               exit;
            end;
         TDBEdit(ActiveControl).color := $0080FFFF;
         CampoDbEdit := TDBEdit(ActiveControl);
      end
   else
      begin
         CampoDbEdit := nil;
      end;
  {cor dos campos TCurrencyEdit}
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
  {cor dos campos TDBDateEdit}
   if Assigned(CampoData) then
      begin
         CampoData.color := clWindow;
      end;
   if ActiveControl is TDBDateEdit then
      begin
         if TDBDateEdit(ActiveControl).color = $00D7D7D7 then
            begin
               exit;
            end;
         TDBDateEdit(ActiveControl).color := $0080FFFF;
         CampoData := TDBDateEdit(ActiveControl);
      end
   else
      begin
         CampoData := nil;
      end;
  {cor dos campos TDateEdit}
   if Assigned(CampoData2) then
      begin
         CampoData2.color := clWindow;
      end;
   if ActiveControl is TDateEdit then
      begin
         if TDateEdit(ActiveControl).color = $00D7D7D7 then
            begin
               exit;
            end;
         TDateEdit(ActiveControl).color := $0080FFFF;
         CampoData2 := TDateEdit(ActiveControl);
      end
   else
      begin
         CampoData2 := nil;
      end;
  {CampoEdit :TEdit}
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
  {CampoBox :TComboBox}
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
  {CampoDbCombo : TComboBox}
   if Assigned(CampoDBCombo) then
      begin
         CampoDBCombo.color := clWindow;
      end;
   if ActiveControl is TDBComboBox then
      begin
         TDBComboBox(ActiveControl).color := $0080FFFF;
         CampoDBCombo := TDBComboBox(ActiveControl);
      end
   else
      begin
         CampoDBCombo := nil;
      end;
  {CampoLookup : TDBLookupComboBox}
   if Assigned(CampoLookup) then
      begin
         CampoLookup.color := clWindow;
      end;
   if ActiveControl is TDBLookupComboBox then
      begin
         TDBLookupComboBox(ActiveControl).color := $0080FFFF;
         CampoLookup := TDBLookupComboBox(ActiveControl);
      end
   else
      begin
         CampoLookup := nil;
      end;
end;

procedure TFormProduto.HabilitaBotoes;
begin
    Bit_novo.Enabled      := True;
    Bit_Excluir.Enabled   := True;
    Bit_Sair.Visible      := True;
    Bit_Relatorio.Enabled := True;
    Bit_Lista.Enabled     := True;
    Bit_Gravar.Enabled    := False;
    Bit_Cancelar.Visible  := False;
    DBnavigator1.Enabled  := True;
end;

procedure TFormProduto.DesabilitaBotoes;
begin
    Bit_novo.Enabled      := False;
    Bit_Excluir.Enabled   := False;
    Bit_Sair.Visible      := False;
    Bit_Relatorio.Enabled := False;
    Bit_Lista.Enabled     := False;
    Bit_Gravar.Enabled    := True;
    Bit_Cancelar.Visible  := True;
    DBnavigator1.Enabled  := False;
end;

procedure TFormProduto.BuscaProduto;
begin
    if DataCadastros.CdsProdutos.Locate('PRD_REFER',EdtPrd_Refer.Text,[]) = False then
       begin
           messagebeep($ffff);
           uteis.aviso('Código do Produto não encontrado!');
           EdtPrd_Refer.Text := DataCadastros.CdsProdutosPrd_codigo.AsString;
       end
    else
       begin
           EdtPrd_Refer.Text := DataCadastros.CdsProdutosPrd_refer.AsString;
           MostraDados;
       end;
end;

procedure TFormProduto.FormShow(Sender: tObject);
begin
    Left := 0;
    Top  := 0;
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
    screen.cursor:=CrHourglass;
    wClicked := False;
    wIncluir := False;
    EdtPRD_REFER.Hint := 'Informe a referência para pesquisa. '+#13+'Pressione Esc para limpar a tela da ficha !';
    PctrlProdutos.ActivePage   := Tbs_Produtos;
    PgCtrl_Produtos.ActivePage := TbS_Caract;
    //
    try
      DataCadastros.CdsProdutos.Close;
      DataCadastros.CdsProdutos.PacketRecords := 10;
      DataCadastros.CdsProdutos.CommandText := SQLDEF('PRODUTOS','SELECT * FROM PRD0000','','PRD_CODIGO','');
      DataCadastros.CdsProdutos.Open;
      DataCadastros.CdsProdutos.Last;
      if DataCadastros.CdsProdutos.isEmpty Then
         begin
             DataCadastros.DsProdutos.AutoEdit := False;
         end;

      {Busca no Parametros o Codigo do Produtos Acabado e Produto Intermediário}
      DataCadastros.sqlUpdate.close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('PARAMETROS','SELECT P1.PMT_PA,P1.PMT_PI FROM PRMT0001 P1 ','WHERE P1.EMP_CODIGO = '''+dbInicio.Empresa.EMP_CODIGO+'''','P1.EMP_CODIGO','P1.');
      DataCadastros.sqlUpdate.Open;
      if (DataCadastros.sqlUpdate.IsEmpty = False) then
         begin
             wPA := DataCadastros.sqlUpdate.FieldByName('PMT_PA').AsString;
             wPI := DataCadastros.sqlUpdate.FieldByName('PMT_PI').AsString;
         end
      else
         begin
             wPA := '';
             wPI := '';
         end;
      DataCadastros.CdsPrdClassIPI.close;
      DataCadastros.CdsPrdClassIPI.CommandText := SQLDEF('TABELAS','SELECT * FROM IPI0000','','IPI_CODIGO','');
      DataCadastros.CdsPrdClassIPI.Open;

      if FrmMenu.wVariacoes = 'S' then
         begin
             Tbs_Variacoes.TabVisible := True;
             // mostra c/ variacoes
             GrpPosicaoEstoque.Height := 100;
             GrpPosicaoEstoque.Top    := 133;
             DbeNomeV1.Visible        := true;
             DbeNomeV2.Visible        := true;
             DbeNomeV3.Visible        := true;
             DbeNomeV4.Visible        := true;
             DbeNomeV5.Visible        := true;
             DbeNomeV6.Visible        := true;
             DbeNomeV7.Visible        := true;
             DbeNomeV8.Visible        := true;
             DbeQtdeVar1.Visible      := True;
             DbeQtdeVar2.Visible      := True;
             DbeQtdeVar3.Visible      := True;
             DbeQtdeVar4.Visible      := True;
             DbeQtdeVar5.Visible      := True;
             DbeQtdeVar6.Visible      := True;
             DbeQtdeVar7.Visible      := True;
             DbeQtdeVar8.Visible      := True;
         end
      else
         begin
             Tbs_Variacoes.TabVisible := False;
             // mostra sem variacoes
             GrpPosicaoEstoque.Height := 100;
             GrpPosicaoEstoque.Top    := 133;
             DbeNomeV1.Visible        := False;
             DbeNomeV2.Visible        := False;
             DbeNomeV3.Visible        := False;
             DbeNomeV4.Visible        := False;
             DbeNomeV5.Visible        := False;
             DbeNomeV6.Visible        := False;
             DbeNomeV7.Visible        := False;
             DbeNomeV8.Visible        := False;
             DbeQtdeVar1.Visible      := False;
             DbeQtdeVar2.Visible      := False;
             DbeQtdeVar3.Visible      := False;
             DbeQtdeVar4.Visible      := False;
             DbeQtdeVar5.Visible      := False;
             DbeQtdeVar6.Visible      := False;
             DbeQtdeVar7.Visible      := False;
             DbeQtdeVar8.Visible      := False;
         end;
      Habilitabotoes;
      PreenchaCombo;
      MostraDados;
      DbePrd_Descri.SetFocus;
      DbePrd_Descri.SelectAll;
    except on E:EdatabaseError do
      uteis.erro  (Pchar('Erro ao abrir as tabelas !'+e.message));
    end;
    //
    screen.cursor:=CrDefault;
end;

procedure TFormProduto.Bit_novoClick(Sender: tObject);
begin
    try
      Screen.Cursor := crHourglass;
      PgCtrl_Produtos.ActivePage := TbS_Caract;
      CbTipo.Text := '';
      CbGrupo.Text:= '';
      CbSegm.Text := '';
      DataCadastros.DsProdutos.AutoEdit := True;
      DataCadastros.CdsProdutos.Insert;
      EdtPrd_codigo.Text := StrZero(DataCadastros.CdsProdutosPRD_CODIGO.AsString,EdtPrd_codigo.MaxLength);
      EdtPrd_Refer.Text  := StrZero(DataCadastros.CdsProdutosPRD_CODIGO.AsString,EdtPrd_codigo.MaxLength);
      DesabilitaBotoes;
      EdtPrd_Refer.SetFocus;
      screen.cursor := crdefault;
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao inserir o registro !'+e.message));
    end;
end;

procedure TFormProduto.Bit_ExcluirClick(Sender: tObject);
begin
    if DataCadastros.CdsProdutos.IsEmpty Then   //evita exclusão de registro
       Begin                                      // em uma Tabela Vazia.
           messagebeep($ffff);
           uteis.aviso('Não existe produto cadastrado !');
           exit;
       end;
    Screen.Cursor := crHourGlass;
    try
      SqlCdsFichaTec.close;
      SqlCdsFichaTec.CommandText := SQLDEF('PRODUTOS','SELECT PRD_REFER FROM FTC0000','Where PRD_REFER = '''+EdtPrd_Refer.Text+'''','PRD_REFER','');
      SqlCdsFichaTec.Open;
      if not SqlCdsFichaTec.IsEmpty then //foi encontrado a ficha tecnica
         begin
             uteis.aviso(pchar('Produto não pode ser excluido.'+#13+'É preciso antes excluir a ficha técnica.'));
             EdtPrd_codigo.Text := DataCadastros.CdsProdutosPRD_CODIGO.AsString;
             EdtPrd_Refer.Text  := DataCadastros.CdsProdutosPRD_REFER.AsString;
         end
      else   //Nao foi encontrado a ficha tecnica, entao exclui o produto
         begin
             if uteis.confirmacao ( 'Tem certeza que deseja Excluir este produto ?')= Mryes then
                begin
                    DataCadastros.CdsProdutos.Delete;
                    DataCadastros.CdsProdutos.ApplyUpdates(0);
                    EdtPrd_codigo.Text := DataCadastros.CdsProdutosPRD_CODIGO.AsString;
                    EdtPrd_Refer.Text  := DataCadastros.CdsProdutosPRD_REFER.AsString;
                end;
         end;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao Abrir a Tabela FTC0000 !'+e.message));
    end;
    if DataCadastros.CdsProdutos.IsEmpty then
       begin
           try
             DataCadastros.sqlUpdate.Close;
             DataCadastros.SqlUpdate.sql.text :='Update SYSFILE SET SYS_PRODUTO = ''0''';
             DataCadastros.sqlUpdate.Execsql;
           except on E:EDataBaseError do
               uteis.erro  (pchar('Erro ao Zerar o campo SYS_PRODUTO do arquivo SYSFILE !'+e.message));
           end;
       end;
    EdtPrd_Refer.SetFocus;
    MostraDados;
    Screen.Cursor := crDefault;
end;


procedure TFormProduto.Bit_GravarClick(Sender: tObject);
begin
    //salva o registro
    if EdtPrd_refer.Text = '' then
       begin
           uteis.erro  ('Digite a Referência');
           EdtPrd_refer.Setfocus;
       end;
    {Passa valores e grava}
    try
      if DataCadastros.CdsProdutosPRD_UTILCONV.AsString = 'S'  then
         begin
             If Rad_divisor.checked  then
                DataCadastros.CdsProdutosPRD_DIVMULT.AsString := 'D'
             else
                DataCadastros.CdsProdutosPRD_DIVMULT.AsString := 'M';
         end;
      {Atualiza valores}
      DataCadastros.CdsProdutosPRD_CODIGO.AsString       := StrZero(DataCadastros.CdsProdutosPRD_CODIGO.AsString,DataCadastros.CdsProdutosPRD_CODIGO.Size);
      DataCadastros.CdsProdutosPRD_DTCADASTRO.AsDateTime := date;
      DataCadastros.CdsProdutosEMP_CODIGO.AsString       := dbInicio.Empresa.EMP_CODIGO;
      DataCadastros.CdsProdutosPRD_REFER.AsString        := EdtPrd_Refer.Text;
      {se nao tiver variacao colocar X p/ poder produzir }
      if DataCadastros.CdsProdutosPRD_DCVAR1.IsNull = true then
         DataCadastros.CdsProdutosPRD_DCVAR1.AsString := 'X';
      DataCadastros.CdsProdutos.ApplyUpdates(0);
      DataCadastros.DsProdutos.AutoEdit := true;
      DataCadastros.CdsProdutos.refresh;
      Habilitabotoes;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao gravar registro !'+e.Message));
    end;
end;

procedure TFormProduto.Bit_CancelarClick(Sender: tObject);
begin
    Screen.Cursor      := crHourGlass;
    DataCadastros.CdsProdutos.Cancel;
    {Protege tb vazia}
    if DataCadastros.CdsProdutos.IsEmpty Then
       begin
           DataCadastros.DsProdutos.AutoEdit := False;
           EdtPrd_Refer.Enabled := false;
       end;
    Screen.Cursor := crDefault;
    {volta código refer na tela}
    MostraDados;
    HabilitaBotoes;
    if (PctrlProdutos.ActivePageIndex = 0) then
       DbePrd_Descri.Setfocus
    else
       DbDtFTC_CRIACAO.SetFocus;   
end;

procedure TFormProduto.Bit_SairClick(Sender: tObject);
begin
   close;
end;

procedure TFormProduto.DBNavigator1Click(Sender: tObject;
  Button: TNavigateBtn);
begin
    MostraDados;
    if PgCtrl_Produtos.ActivePage.PageIndex = 1 then
       begin
           AtivaSqls;
       end
    else
       begin
//
       end;
end;


procedure TFormProduto.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    VerificaEdicao;// procedure local
end;

procedure TFormProduto.Bit_ListaClick(Sender: tObject);
begin
  try
    try {Cria e chama formulário de Lista}
      FormProdutoGrid := TFormProdutoGrid.Create(Application);
      FormProdutoGrid.wBot1 := True;
      FormProdutoGrid.ShowModal;
    finally
      FormProdutoGrid.wBot1 := False;
      FormProdutoGrid.Destroy;
      FormProdutoGrid := nil; //  nil é - From Assigned = False
      DbePrd_Descri.SetFocus;
      Screen.OnActiveControlChange   := MudaCorCampos;
    end;
  except
      //beep;
      uteis.erro  ('Ocorreu um erro na criação do formulário!');
  end;
end;

procedure TFormProduto.Bit_RelatorioClick(Sender: tObject);
begin
  try
    try
      FormGImpProduto := TFormGImpProduto.Create(Application);
      FormGImpProduto.ShowModal;
    finally
      FormGImpProduto.Destroy;
      FormGImpProduto := nil; //  nil é - From Assigned = False
    end;
  except
      //beep;
      uteis.erro  ('Ocorreu um Erro na Criação do Formulário!');
  end;
  {ativa o método ao evento OnActiveControlChange}
  Screen.OnActiveControlChange   := MudaCorCampos;
end;

procedure TFormProduto.EdtPrd_ReferExit(Sender: tObject);
begin
    if (DataCadastros.CdsProdutos.State in [dsBrowse]) and not (DataCadastros.CdsProdutos.IsEmpty) then
       begin
           Screen.Cursor := crHourGlass;
           BuscaProduto;
           Screen.Cursor := crDefault;
           AtivaSqls;
       end
    else
       begin
           if DataCadastros.CdsProdutos.State in [dsinsert,dsEdit] then
              begin
                  try
                    Screen.Cursor := crHourGlass;
                    DataCadastros.sqlUpdate.Close;
                    DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS','Select PRD_REFER from PRD0000','where PRD_REFER = '''+EdtPrd_Refer.Text+'''','PRD_REFER','');
                    DataCadastros.sqlUpdate.Open;
                    Screen.Cursor := crDefault;
                    if not DataCadastros.sqlUpdate.IsEmpty then
                       begin
                           uteis.aviso('Este produto já existe...');
                           EdtPrd_Refer.Text := '';
                           EdtPrd_Refer.SetFocus;
                           DataCadastros.sqlUpdate.Close;
                       end;
                  except on E:EDataBaseError do
                      uteis.erro  (pchar('Erro ao Abrir a Tabela SqlCdsBusca !'+e.message));
                  end;
              end;
       end;
end;

procedure TFormProduto.EdtPrd_ReferClick(Sender: tObject);
begin
    EdtPrd_Refer.SelectAll;
end;

procedure TFormProduto.SpeedButton1Click(Sender: tObject);
begin
    DataCadastros.CdsProdutos.Cancel;    // tira mode insert ou edit
    HabilitaBotoes;
    try
       try {Cria e chama formulário de Lista}
         FormProdutoGrid := TFormProdutoGrid.Create(Application);
         FormProdutoGrid.ShowModal;
       finally
         begin
             FormProdutoGrid.Destroy;
             FormProdutoGrid := nil; //  nil é - From Assigned = False
             Screen.OnActiveControlChange := MudaCorCampos;
         end;
       end;
     except
         //beep;
         uteis.erro  ('Ocorreu um erro na criação do formulário!');
     end;
end;

procedure TFormProduto.AtivaSqls;
Var
Sql1,Sql2,SQl3 : String;
begin
    // mostra fornecedores do produto;
    Screen.Cursor := crHourGlass;
    Try
      Sql1 := 'SELECT F1.FOR_CODIGO,F1.FOR_RAZAO,F1.FOR_CONTATO,F1.FOR_FONCONT,F1.FOR_FONE,F1.FOR_EMAIL,F1.FOR_PRAZOVENDAS,F2.PRD_REFER FROM FOR0000 F1 ';
      Sql2 := 'JOIN FOR_PROD F2 ON F1.FOR_CODIGO = F2.FOR_CODIGO ';
      Sql3 := 'WHERE F2.PRD_REFER ='''+EdtPrd_Refer.Text+'''';
      CdsFornecedorAux.Close;
      CdsFornecedorAux.CommandText := SQLDEF('FORNECEDORES',SQL1+SQL2,SQL3,'F2.PRD_REFER','F1.');
      CdsFornecedorAux.Open;
    except on E:EdatabaseError do
      uteis.erro  (Pchar('Erro ao consultar fornecedores'+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormProduto.PgCtrl_ProdutosChange(Sender: tObject);
begin
    if PgCtrl_Produtos.ActivePage.PageIndex = 1 then
       AtivaSqls;
end;

procedure TFormProduto.DbePrd_MaximoEnter(Sender: tObject);
begin
    DbePrd_Maximo.SelectAll;
end;

procedure TFormProduto.DBePrd_minimoEnter(Sender: tObject);
begin
    DbePrd_Maximo.SelectAll;
end;

procedure TFormProduto.DbePrd_MaximoClick(Sender: tObject);
begin
    DbePrd_Maximo.SelectAll;
end;

procedure TFormProduto.DbeVar2Exit(Sender: tObject);
begin
    DbeVar3.SetFocus;
end;

procedure TFormProduto.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
    try
       DataCadastros.CdsProdutos.Close;
       DataCadastros.CdsPrdTipo.Close;
       DataCadastros.CdsPrdLinha.Close;
       DataCadastros.CdsPrdClassIPI.Close;
    except on E:EDatabaseError do
       uteis.erro  (pchar('Impossível Fechar as tabelas '+e.message));
    end;
end;

procedure TFormProduto.BitBtn1Click(Sender: tObject);
begin
    RichDoc.Clear;
    if not FileExists(FrmMenu.PathNewFicha+'\'+EDTPRD_REFER.Text+'.Rtf') then
       CopyFile(Pchar(trim(FrmMenu.PathNewFicha)+'\'+'Default.Rtf'),Pchar(trim(FrmMenu.PathNewFicha)+'\'+EDTPRD_REFER.Text+'.Rtf'),false);
    WinExec(pansichar('RWEDITOR.EXE "'+trim(FrmMenu.PathNewFicha)+'\'+EDTPRD_REFER.Text+'.Rtf'+'"'),sw_show);
end;

procedure TFormProduto.FormPaint(Sender: tObject);
begin
    RichDoc.Clear;
    if FileExists(trim(FrmMenu.PathNewFicha)+'\'+DataCadastros.CdsProdutosPRD_REFER.AsString+'.Rtf') then
       RichDoc.Lines.LoadFromFile(trim(FrmMenu.PathNewFicha)+'\'+DataCadastros.CdsProdutosPRD_REFER.AsString+'.Rtf');
end;

procedure TFormProduto.Panel7Enter(Sender: tObject);
begin
    CdsFornecedorAux.Close;
    CdsFornecedorAux.CommandText := '';
    CdsFornecedorAux.Open;
end;

procedure TFormProduto.DBEPRD_CODBARKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not(Key in['0'..'9',#8]) then
       begin
           //beep;
           Key:=#0;
       end;
end;

procedure TFormProduto.DBEPRD_CODBARExit(Sender: tObject);
begin
    if (DataCadastros.CdsProdutos.State in [dsInsert]) or (wCodBarr <> DBEPRD_CODBAR.Field.AsString) then
       begin
           if (DBEPRD_CODBAR.Field.Text <> '') then
              begin
                  try
                    DataCadastros.sqlUpdate.Close;
                    DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS','SELECT PRD_REFER,PRD_CODBARRA from PRD0000','where PRD_CODBARRA = '''+DBEPRD_CODBAR.Text+'''','PRD_CODBARRA','');
                    DataCadastros.sqlUpdate.Open;
                    if not DataCadastros.sqlUpdate.IsEmpty then
                       begin
                           uteis.aviso(Pchar('Atenção a Referência '+DataCadastros.sqlUpdate.FieldByName('PRD_REFER').AsString+' já está utilizando este código'));
                           DBEPRD_CODBAR.Text := '';
                           DBEPRD_CODBAR.Setfocus;
                           DataCadastros.sqlUpdate.Close;
                       end;
                  except on E:EDataBaseError do
                      uteis.erro  (pchar('Erro ao Abrir a Tabela !'+e.message));
                  end;
              end;
       end;
end;

procedure TFormProduto.MostraDados;
begin
    EdtPrd_codigo.Text := DataCadastros.CdsProdutosPRD_CODIGO.AsString;
    EdtPrd_Refer.Text  := DataCadastros.CdsProdutosPRD_REFER.AsString;
    if SqlCdsTipo.Locate('PTI_CODIGO',DBEPRD_TIPO.Text,[]) = True then
       begin
           CbTipo.Text   := SqlCdsTipoPTI_DESCRI.AsString;
           EdtSigla.Text := SqlCdsTipoPTI_SIGLA.AsString;
           if (wPA = DBEPRD_TIPO.Text) or (wPI = DBEPRD_TIPO.Text) then
              begin
                  Tbs_FichaTec.TabVisible := true;
              end
           else
              begin
                  Tbs_FichaTec.TabVisible := False;
              end;
       end
    else
       begin
           CbTipo.Text      := '';
           DBEPRD_TIPO.Text := '';
           EdtSigla.Text    := '';
       end;
    if SqlCdsGrupo.Locate('PGR_CODIGO',DBEPRD_GRUPO.Text,[]) = true then
       begin
           CbGrupo.Text := SqlCdsGrupoPGR_DESCRI.AsString;
       end
    else
       begin
           CbGrupo.Text      := '';
           DBEPRD_GRUPO.Text := '';
       end;
    if SqlCdsSegm.Locate('LIN_CODIGO',DBEPRD_SEGMENTO.Text,[]) = true then
       begin
           CbSegm.Text := SqlCdsSegmLIN_DESCRI.AsString;
       end
    else
       begin
           CbSegm.Text          := '';
           DBEPRD_SEGMENTO.Text := '';
       end;
    try
      SqlCdsFor.Close;
      SqlCdsFor.CommandText := 'Select FOR_CODIGO,FOR_RAZAO from FOR0000 where FOR_CODIGO = '''+DBeFor_Codigo.Field.Text+'''';
      SqlCdsFor.Open;
      if not SqlCdsFor.IsEmpty then
         begin
             EdtFor.Text := SqlCdsforFOR_RAZAO.AsString;
         end
      else
         begin
             EdtFor.Text := '';
         end;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao Abrir a tabela FOR0000 !'+E.MESSAGE));
    end;
    {BUSCANDO FOTO DO PRODUTO}
    if FileExists(trim(FrmMenu.PathNewFotos)+'\'+DataCadastros.CdsProdutosPRD_REFER.AsString+'.jpg') then
       ImgProduto.Picture.LoadFromFile(trim(FrmMenu.PathNewFotos)+'\'+DataCadastros.CdsProdutosPRD_REFER.AsString+'.jpg')
    else
       ImgProduto.Picture.LoadFromFile(trim(FrmMenu.PathNewFotos)+'\Default.jpg');
    {BUSCANDO FICHA DO PRODUTO}
    if FileExists(trim(FrmMenu.PathNewFicha)+'\'+DataCadastros.CdsProdutosPRD_REFER.AsString+'.Rtf') then
       RichDoc.Lines.LoadFromFile(trim(FrmMenu.PathNewFicha)+'\'+DataCadastros.CdsProdutosPRD_REFER.AsString+'.Rtf')
    else
       RichDoc.Clear;
    //
    Rad_divisor.Checked := iif(DataCadastros.CdsProdutosPRD_DIVMULT.AsString = 'D','true','false');
    Rad_multi.Checked   := iif(DataCadastros.CdsProdutosPRD_DIVMULT.AsString = 'M','true','false');
end;

procedure TFormProduto.PreenchaCombo;
begin
    screen.cursor := crHourGlass;
    try
      SqlCdsTipo.Close;
      SqlCdsTipo.CommandText := SQLDEF('TABELAS','SELECT * FROM PRD_TIPO','','PTI_DESCRI','');
      SqlCdsTipo.Open;
      SqlCdsTipo.First;
      while not SqlCdsTipo.Eof do
       begin
           CbTipo.Items.Add(SqlCdsTipoPTI_DESCRI.AsString);
           SqlCdsTipo.Next;
       end;
      CbTipo.ItemIndex := 0;
      //
      SqlCdsGrupo.Close;
      SqlCdsGrupo.CommandText := SQLDEF('TABELAS','SELECT * FROM PRD_GRUPO','','PGR_DESCRI','');
      SqlCdsGrupo.Open;
      SqlCdsGrupo.First;
      while not SqlCdsGrupo.Eof do
       begin
           CbGrupo.Items.Add(SqlCdsGrupoPGR_DESCRI.AsString);
           SqlCdsGrupo.Next;
       end;
      CbGrupo.ItemIndex := 0;
      //
      SqlCdsSegm.Close;
      SqlCdsSegm.CommandText := SQLDEF('TABELAS','SELECT * FROM PRD_LINHA','','LIN_DESCRI','');
      SqlCdsSegm.Open;
      SqlCdsSegm.First;
      while not SqlCdsSegm.Eof do
       begin
           CbSegm.Items.Add(SqlCdsSegmLIN_DESCRI.AsString);
           SqlCdsSegm.Next;
       end;
      CbSegm.ItemIndex := 0;
    except on E:EdatabaseError do
      uteis.erro  (Pchar('Erro ao abrir as tabelas !'+e.message));
    end;
    screen.Cursor := crDefault;
end;

procedure TFormProduto.CbTipoClick(Sender: tObject);
begin
    if (CbTipo.Text <> '') then
       begin
           if DataCadastros.CdsProdutos.State in [dsBrowse] then
              DataCadastros.CdsProdutos.Edit;
           if SqlCdsTipo.Locate('PTI_DESCRI',CbTipo.Text,[]) = true then
              begin
                  DBEPRD_TIPO.Field.Text := SqlCdsTipoPTI_CODIGO.AsString;
                  EdtSigla.Text          := SqlCdsTipoPTI_SIGLA.AsString;
                  if (wPA = DBEPRD_TIPO.Text) or (wPI = DBEPRD_TIPO.Text) then
                     begin
                         Tbs_FichaTec.TabVisible := true;
                     end
                  else
                     begin
                         Tbs_FichaTec.TabVisible := False;
                     end;
              end
           else
              begin
                  DBEPRD_TIPO.Field.Text := '';
                  EdtSigla.Text          := '';
              end;
       end;
end;

procedure TFormProduto.CbTipoExit(Sender: tObject);
begin
    screen.Cursor := crHourGlass;
    if (CbTipo.Text <> '') or (CbTipo.ItemIndex <> 0) then
       begin
           if DataCadastros.CdsProdutos.State in [dsBrowse] then
              DataCadastros.CdsProdutos.Edit;
           if SqlCdsTipo.Locate('PTI_DESCRI',CbTipo.Text,[]) = true then
              begin
                  DBEPRD_TIPO.Field.Text := SqlCdsTipoPTI_CODIGO.AsString;
                  EdtSigla.Text          := SqlCdsTipoPTI_SIGLA.AsString;
                  if (wPA = DBEPRD_TIPO.Text) or (wPI = DBEPRD_TIPO.Text) then
                     begin
                         Tbs_FichaTec.TabVisible := true;
                     end
                  else
                     begin
                         Tbs_FichaTec.TabVisible := False;
                     end;
              end
           else
              begin
                  uteis.aviso('Tipo não encontrado !');
                  CbTipo.Text      := '';
                  DBEPRD_TIPO.Text := '';
                  EdtSigla.Text    := '';
                  DBEPRD_TIPO.SetFocus;
                  DBEPRD_TIPO.SelectAll;
              end;
       end
    else
       begin
           uteis.aviso('Informe o Tipo !');
           EdtSigla.Text    := '';
           CbTipo.Text      := '';
           DBEPRD_TIPO.Text := '';
           DBEPRD_TIPO.SetFocus;
           DBEPRD_TIPO.SelectAll;
       end;
    screen.cursor:=crDefault;
end;

procedure TFormProduto.DBEPRD_TIPOExit(Sender: tObject);
begin
    screen.Cursor := crHourGlass;
    if (DBEPRD_TIPO.Field.Text <> '') then
       begin
           if SqlCdsTipo.Locate('PTI_CODIGO',StrZero(DBEPRD_TIPO.Text,DBEPRD_TIPO.MaxLength),[])= true then
              begin
                  CbTipo.Text      := SqlCdsTipoPTI_DESCRI.AsString;
                  DBEPRD_TIPO.Text := StrZero(DBEPRD_TIPO.Text,DBEPRD_TIPO.MaxLength);
                  if (wPA = DBEPRD_TIPO.Text) or (wPI = DBEPRD_TIPO.Text) then
                     begin
                         Tbs_FichaTec.TabVisible := true;
                     end
                  else
                     begin
                         Tbs_FichaTec.TabVisible := False;
                     end;
              end
           else
              begin
                  uteis.aviso('Tipo não encontrado !');
                  CbTipo.Text := '';
                  DBEPRD_TIPO.Field.Text := '';
                  DBEPRD_TIPO.SetFocus;
                  DBEPRD_TIPO.SelectAll;
              end;
       end;
    screen.cursor:=crDefault;
end;

procedure TFormProduto.DBEPRD_GRUPOExit(Sender: tObject);
begin
    screen.Cursor := crHourGlass;
    if (DBEPRD_GRUPO.Field.Text <> '') then
       begin
           if SqlCdsGrupo.Locate('PGR_CODIGO',StrZero(DBEPRD_GRUPO.Text,DBEPRD_GRUPO.MaxLength),[])= true then
              begin
                  CbGrupo.Text      := SqlCdsGrupoPGR_DESCRI.AsString;
                  DBEPRD_GRUPO.Text := StrZero(DBEPRD_GRUPO.Text,DBEPRD_GRUPO.MaxLength);
              end
           else
              begin
                  uteis.aviso('Tipo não encontrado !');
                  CbGrupo.Text := '';
                  DBEPRD_GRUPO.Field.Text := '';
                  DBEPRD_GRUPO.SetFocus;
                  DBEPRD_GRUPO.SelectAll;
              end;
       end;
    screen.cursor:=crDefault;
end;

procedure TFormProduto.CbGrupoClick(Sender: tObject);
begin
    if (CbGrupo.Text <> '') then
       begin
           if DataCadastros.CdsProdutos.State in [dsBrowse] then
              DataCadastros.CdsProdutos.Edit;
           if SqlCdsGrupo.Locate('PGR_DESCRI',CbGrupo.Text,[]) = true then
              DBEPRD_GRUPO.Field.Text := SqlCdsGrupoPGR_CODIGO.AsString
           else
              DBEPRD_GRUPO.Field.Text := '';
       end;
end;

procedure TFormProduto.CbGrupoExit(Sender: tObject);
begin
    screen.Cursor := crHourGlass;
    if (CbGrupo.Text <> '') then
       begin
           if DataCadastros.CdsProdutos.State in [dsBrowse] then
              DataCadastros.CdsProdutos.Edit;
           if SqlCdsGrupo.Locate('PGR_DESCRI',CbGrupo.Text,[])= true then
              begin
                  DBEPRD_GRUPO.Text := SqlCdsGrupoPGR_CODIGO.AsString;
              end
           else
              begin
                  uteis.aviso('Grupo não encontrado !');
                  CbGrupo.Text      := '';
                  DBEPRD_GRUPO.Text := '';
                  DBEPRD_GRUPO.SetFocus;
                  DBEPRD_GRUPO.SelectAll;
              end;
       end;
    screen.cursor:=crDefault;
end;

procedure TFormProduto.DBEPRD_SEGMENTOExit(Sender: tObject);
begin
    screen.Cursor := crHourGlass;
    if (DBEPRD_SEGMENTO.Field.Text <> '') then
       begin
           if SqlCdsSegm.Locate('LIN_CODIGO',StrZero(DBEPRD_SEGMENTO.Text,DBEPRD_SEGMENTO.MaxLength),[])= true then
              begin
                  CbSegm.Text          := SqlCdsSegmLIN_DESCRI.AsString;
                  DBEPRD_SEGMENTO.Text := StrZero(DBEPRD_SEGMENTO.Text,DBEPRD_SEGMENTO.MaxLength);
              end
           else
              begin
                  uteis.aviso('Segmento não encontrado !');
                  CbSegm.Text          := '';
                  DBEPRD_SEGMENTO.Text := '';
                  DBEPRD_SEGMENTO.SetFocus;
                  DBEPRD_SEGMENTO.SelectAll;
              end;
       end;
    screen.cursor:=crDefault;
end;

procedure TFormProduto.CbSegmClick(Sender: tObject);
begin
    if (CbSegm.Text <> '') then
       begin
           if DataCadastros.CdsProdutos.State in [dsBrowse] then
              DataCadastros.CdsProdutos.Edit;
           if SqlCdsSegm.Locate('LIN_DESCRI',CbSegm.Text,[]) = true then
              DBEPRD_SEGMENTO.Field.Text := SqlCdsSegmLIN_CODIGO.AsString
           else
              DBEPRD_SEGMENTO.Field.Text := '';
       end
    else
       begin
           if (CbSegm.ItemIndex = 0) then
              begin
                  CbSegm.Text := '';
                  DbePrd_Segmento.Field.Text := '';
              end;

       end;
end;

procedure TFormProduto.CbSegmExit(Sender: tObject);
begin
    screen.Cursor := crHourGlass;
    if (CbSegm.Text <> '') then
       begin
           if DataCadastros.CdsProdutos.State in [dsBrowse] then
              DataCadastros.CdsProdutos.Edit;
           if SqlCdsSegm.Locate('LIN_DESCRI',CbSegm.Text,[])= true then
              begin
                  DBEPRD_SEGMENTO.Text := SqlCdsSegmLIN_CODIGO.AsString;
              end
           else
              begin
                  uteis.aviso('Segmento não encontrado !');
                  CbSegm.Text      := '';
                  DBEPRD_SEGMENTO.Text := '';
                  DBEPRD_SEGMENTO.SetFocus;
                  DBEPRD_SEGMENTO.SelectAll;
              end;
       end;
    screen.cursor:=crDefault;
end;

procedure TFormProduto.DBEPRD_CODBAREnter(Sender: tObject);
begin
    wCodBarr := DBEPRD_CODBAR.field.Text;
end;

procedure TFormProduto.EdtPrd_ReferEnter(Sender: tObject);
begin
    if (PctrlProdutos.ActivePage = Tbs_FichaTec) then
       PctrlProdutos.ActivePageIndex := 0;
    EdtPrd_Refer.SelectAll;
end;

procedure TFormProduto.PctrlProdutosChange(Sender: tObject);
begin
    if (PctrlProdutos.ActivePageIndex = 1) then
       begin
           {ativa o método ao evento OnActiveControlChange}
           Screen.Cursor := crHourGlass;
           {Verifica se a Tabela de Produtos esta em Insert/Edit}
           verificaEdicao;
           {Verificar no parametro se tem variações}
           try
             if FrmMenu.wVariacoes = 'N' then
                begin
                    {GrpMateriaPrima}
                    GrpMateriaPrima.Top    := 33;
                    GrpMateriaPrima.Left   := 04;
                    GrpMateriaPrima.Height := 343;
                    GrpMateriaPrima.Width  := 784;
                    {PanMenu}
                    PanMenu.Top            := 300;
                    PanMenu.Left           := 04;
                    {PanMaterial}
                    PanMaterial.Top        := 6;
                    PanMaterial.Left       := 425;
                    PanMaterial.Height     := 336;
                    PanMaterial.Width      := 358;
                    {TreeViewMateria}
                    TreeViewMateria.Top    := 13;
                    TreeViewMateria.Left   := 2;
                    TreeViewMateria.Height := 327;
                    TreeViewMateria.Width  := 422;
                    {Pan_FTC03}
                    GrpVariacoes.Visible   := False;
                    Pan_FTC03.Top          := 2;
                    Pan_FTC03.Left         := 0;
                    Pan_FTC03.Height       := 30;
                    Pan_FTC03.Width        := 784;
                    {GrpVarConsumo}
                    GrpVarConsumo.Visible  := false;
                end
             else {utiliza variacoes}
                begin
                    {GrpMateriaPrima}
                    GrpMateriaPrima.Top    := 84;
                    GrpMateriaPrima.Left   := 00;
                    GrpMateriaPrima.Height := 295;
                    GrpMateriaPrima.Width  := 784;
                    {PanMenu}
                    PanMenu.Top            := 253;
                    PanMenu.Left           := 04;
                    {PanMaterial}
                    PanMaterial.Top        := 6;
                    PanMaterial.Left       := 425;
                    PanMaterial.Height     := 288;
                    PanMaterial.Width      := 358;
                    {TreeViewMateria}
                    TreeViewMateria.Top    := 13;
                    TreeViewMateria.Left   := 2;
                    TreeViewMateria.Height := 277;
                    TreeViewMateria.Width  := 422;
                    {Pan_FTC03}
                    GrpVariacoes.Visible   := True;
                    Pan_FTC03.Top          := 2;
                    Pan_FTC03.Left         := 0;
                    Pan_FTC03.Height       := 81;
                    Pan_FTC03.Width        := 784;
                    {GrpVarConsumo}
                    GrpVarConsumo.Visible  := True;
                end;
             if EdtPRD_REFER.Text <> '' then
                begin
                    EdtRefer.Color := clWindow;
                    HabilitaBotoesFTC;
                    DesabilitaMateria;
                    EdtDescricao.Text := DbePrd_Descri.Text;
                    DbeFTCvar1.Text   := DbeNomeV1.Text;
                    DbeFTCvar2.Text   := DbeNomeV2.Text;
                    DbeFTCvar3.Text   := DbeNomeV3.Text;
                    DbeFTCvar4.Text   := DbeNomeV4.Text;
                    DbeFTCvar5.Text   := DbeNomeV5.Text;
                    DbeFTCvar6.Text   := DbeNomeV6.Text;
                    DbeFTCvar7.Text   := DbeNomeV7.Text;
                    DbeFTCvar8.Text   := DbeNomeV8.Text;
                    BuscaFichaTecnica;
                    PopulaTreeView(TreeViewMateria, nil);
                    BuscaItensFichaTec;
                end;
           except on E:EDataBaseError do
               uteis.erro  (pchar('Erro ao abrir a tabela de Parametros !'+e.message));
           end;
           if (SqlCdsItensFicha.IsEmpty = False) then
//            DBGridFichaTecnicaItem.SetFocus
           else
              DbDtFTC_CRIACAO.SetFocus;

           Screen.Cursor := crDefault;
       end
    else
       begin
           verificaEdicaoFTC;
//           DBNavigator1.Enabled := True;
       end;
end;

procedure TFormProduto.Bit_FTC_NovoClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    try
      if PctrlProdutos.ActivePageIndex = 0 then
         PctrlProdutos.ActivePageIndex := 1;

      wSql1 := 'SELECT F1.*,P1.PRD_DESCRI,P1.PRD_DCVAR1,P1.PRD_DCVAR2,P1.PRD_DCVAR3,P1.PRD_DCVAR4,P1.PRD_DCVAR5,P1.PRD_DCVAR6,P1.PRD_DCVAR7,P1.PRD_DCVAR8,T1.PTI_SIGLA FROM FTC0000 F1 ';
      wSql2 := 'LEFT JOIN PRD0000 P1 ON (F1.PRD_REFER = P1.PRD_REFER) LEFT JOIN PRD_TIPO T1 ON (P1.PTI_CODIGO = T1.PTI_CODIGO) ';

      DmProducao.CdsFichaTec.Close;
      DmProducao.CdsFichaTec.CommandText := SQLDEF('FICHATECNICA',wSql1+wSql2,'WHERE F1.PRD_REFER = '''+EdtPRD_REFER.Text+'''','F1.PRD_REFER','F1.');
      DmProducao.CdsFichaTec.Open;
      if (DmProducao.CdsFichaTec.IsEmpty = true) then
         begin
             wIncluir := True;
             DmProducao.CdsFichaTec.Insert;
             DbeFTCvar1.Text   := DbeNomeV1.Text;
             DbeFTCvar2.Text   := DbeNomeV2.Text;
             DbeFTCvar3.Text   := DbeNomeV3.Text;
             DbeFTCvar4.Text   := DbeNomeV4.Text;
             DbeFTCvar5.Text   := DbeNomeV5.Text;
             DbeFTCvar6.Text   := DbeNomeV6.Text;
             DbeFTCvar7.Text   := DbeNomeV7.Text;
             DbeFTCvar8.Text   := DbeNomeV8.Text;
             DbDtFTC_CRIACAO.Date        := now;
             DbeFTC_TUP.Field.AsCurrency := 1;
             DesabilitaBotoesFTC;
             LimparDadosFTC;
             DbDtFTC_CRIACAO.SetFocus;
             DbDtFTC_CRIACAO.SelectAll;
         end
      else
         begin
             uteis.aviso('Ficha Técnica já criada !');
             DbDtFTC_CRIACAO.SetFocus;
             DbDtFTC_CRIACAO.SelectAll;
         end;
    except on E:EDataBaseError do
      uteis.erro  (pchar('Erro ao inserir o registro ! '+e.message));
    end;
    Screen.Cursor               := crDefault;
end;

procedure TFormProduto.Bit_FTC_CopiarClick(Sender: tObject);
begin
    if EdtPRD_REFER.Text <> '' then
       begin
           try
             try
               //FormFichaTecnica.AlphaBlendValue := 200;
               //FormFichaTecnica.AlphaBlend := true;
               FormCopiaFichaTec:= TFormCopiaFichaTec.Create(Application);
               FormCopiaFichaTec.ShowModal;
             finally
               FormCopiaFichaTec.Destroy;
               FormCopiaFichaTec := nil;
             end;
           except
              //beep;
              uteis.erro  ('Ocorreu um erro na criação do formulário!');
           end;
       end;
end;

procedure TFormProduto.BIT_FTC_EXCLUIRClick(Sender: tObject);
begin
    screen.Cursor := crHourglass;
    if EdtPRD_REFER.Text <> '' then
       begin
           DataCadastros.sqlUpdate.Close;
           DataCadastros.SqlUpdate.sql.text :=SQLDEF('FICHATECNICA','SELECT F1.PRD_REFER_ITENS FROM FTC_IT01 F1 ','WHERE F1.PRD_REFER_ITENS = '''+EDTPRD_REFER.Text+'''','F1.PRD_REFER_ITENS','F1.');
           DataCadastros.sqlUpdate.Open;
           if (DataCadastros.sqlUpdate.IsEmpty = true) then
              begin
                  if not DmProducao.CdsFichaTec.IsEmpty then
                     if uteis.confirmacao ( 'Deseja excluir essa Ficha Técnica?')=MrYes  then
                        if uteis.confirmacao ( 'A ficha de "Custo" do produto também será excluida. Confirma a exclusão?')=MrYes  then
                           begin
                               try
                                 DataCadastros.sqlUpdate.Close;
                                 DataCadastros.SqlUpdate.sql.text :=SQLDEF('FICHATECNICA','Delete from FTC_IT01 ','where PRD_REFER = '''+EdtPRD_REFER.Text+'''','','');
                                 DataCadastros.sqlUpdate.Execsql;
                               except on E:EdataBaseError do
                                  uteis.erro  (pchar('Erro ao excluir os itens da ficha tecnica !'+e.message));
                               end;
                               DmProducao.CdsFichaTec.Delete;
                               DmProducao.CdsFichaTec.ApplyUpdates(0);
                           end;
              end
           else
              begin
                  uteis.aviso(pchar('Ficha técnica não pode ser excluída.'+#13+'Porque está sendo utilizada em outro(s) produto(s)!'));
                  EDTPRD_REFER.SetFocus;
                  EDTPRD_REFER.SelectAll;
              end;
       end
    else
       begin
           uteis.aviso('Informe uma Referência !');
       end;
    SqlCdsProduto.Close;
    SqlCdsItensFicha.Close;
    SqlCdsMaterial.Close;
    DmProducao.CdsFichaTec.Close;
    DmProducao.CdsItemFicha.Close;
    HabilitaBotoes;
    EdtDescricao.Text  := '';
    LimparDadosFTC;
    wIncluir := False;
    if (PctrlProdutos.ActivePageIndex = 1) then
       PctrlProdutos.ActivePageIndex := 0;
    EdtPRD_REFER.SelectAll;
    EdtPRD_REFER.SetFocus;
    screen.Cursor := crDefault;
end;

procedure TFormProduto.BIT_FTC_GRAVARClick(Sender: tObject);
begin
    if (SqlCdsItensFicha.IsEmpty = true) and (EdtPRD_REFER.Text <> '') then
       begin
           uteis.aviso('Informe a Matéria-Prima !');
           EdtRefer.SelectAll;
           EdtRefer.SetFocus;
           exit;
       end;
    if DbDtFTC_CRIACAO.Text = '  /  /    ' then
       begin
           uteis.aviso('Digite a data de criação');
           DbDtFTC_CRIACAO.Setfocus;
           Exit;
       end;
    if DbeFTC_TUP.Text = '0' then
       begin
           uteis.aviso('Você não informou o TUP. Vou colocar o TUP padrão = 1 ');
           DbeFTC_TUP.Field.AsCurrency := 1;
       end;
    try
      DmProducao.CdsFichaTecPRD_REFER.AsString  := EdtPRD_REFER.Text;
      DmProducao.CdsFichaTecEmp_Codigo.AsString := dbInicio.Empresa.EMP_CODIGO;
      screen.Cursor := crHourglass;
      if DmProducao.CdsFichaTec.State in [dsEdit,dsInsert] then
         begin
             DmProducao.CdsFichaTec.ApplyUpdates(0);
         end;
      LimparDadosFTC;
      wIncluir := false;
      DesabilitaMateria;
      HabilitaBotoesFTC;
      if PctrlProdutos.ActivePageIndex = 1 then
         begin
             DbDtFTC_CRIACAO.SetFocus;
             DbDtFTC_CRIACAO.SelectAll;
         end
      else
         begin
             EdtPrd_Refer.SetFocus;
             EdtPrd_refer.SelectAll;
         end;
    except on E:EdataBaseError do
       uteis.erro  (pchar('Erro ao gravar o registro !'+e.message));
    end;
    screen.Cursor := crDefault;
end;

procedure TFormProduto.BIT_FTC_RELATORIOClick(Sender: tObject);
Var
  wI,wS : Integer;
begin
    Screen.Cursor := crHourGlass;
    if EdtPRD_REFER.Text <> '' then
       begin
           try
             wSql1 := 'SELECT F1.PRD_REFER,F1.FTC_TUP,F1.FTC_CRIACAO,F1.FTC_PROC1,F1.FTC_PROC2,F1.FTC_PROC3,F1.FTC_PROC4,F1.FTC_PROC5,F1.FTC_PROC6,F1.FTC_PROC7,F1.FTC_PROC8,P1.PRD_DESCRI,';
             wSql2 := 'P1.PRD_DCVAR1,P1.PRD_DCVAR2,P1.PRD_DCVAR3,P1.PRD_DCVAR4,P1.PRD_DCVAR5,P1.PRD_DCVAR6,P1.PRD_DCVAR7,P1.PRD_DCVAR8,P1.PTI_CODIGO,T1.PTI_DESCRI,P1.PGR_CODIGO,G1.PGR_DESCRI,P1.LIN_CODIGO,L1.LIN_DESCRI FROM FTC0000 F1 ';
             wSql3 := 'LEFT JOIN PRD0000 P1 on (F1.PRD_REFER  = P1.PRD_REFER) LEFT JOIN PRD_TIPO T1 on (P1.PTI_CODIGO = T1.PTI_CODIGO) LEFT JOIN PRD_GRUPO G1 on (P1.PGR_CODIGO = G1.PGR_CODIGO) LEFT JOIN PRD_LINHA L1 on (P1.LIN_CODIGO = L1.LIN_CODIGO) ';
             SqlRelProdutos.Close;
             SqlRelProdutos.CommandText := SQLDEF('FICHATECNICA',wSql1+wSql2+wSql3,'WHERE F1.PRD_REFER = '''+EdtPRD_REFER.Text+'''','F1.PRD_REFER','F1.');
             SqlRelProdutos.Open;
             if SqlRelProdutos.IsEmpty = False then
                begin
                    if (SqlCdsItensFicha.IsEmpty = False) then
                       begin
                           if not CdsRelItens.Active then
                              CdsRelItens.CreateDataSet;
                           CdsRelItensFTI_UC.Currency := false;
                           {limpar arquivo}
                           CdsRelItens.EmptyDataSet;
                           SqlCdsItensFicha.DisableControls;
                           SqlCdsItensFicha.First;
                           wI := 1;
                           while not SqlCdsItensFicha.Eof do
                            begin
                                CdsRelItens.Append;
                                CdsRelItensFTI_ITEM.AsString        := StrZero(IntToStr(wI),2);
                                CdsRelItensPRD_REFER.AsString       := SqlCdsItensFichaPRD_REFER.AsString;
                                CdsRelItensPRD_REFER_ITENS.AsString := SqlCdsItensFichaPRD_REFER_ITENS.AsString;
                                CdsRelItensPRD_DESCRI.AsString      := SqlCdsItensFichaPRD_DESCRI.AsString;
                                CdsRelItensPRD_UND.AsString         := SqlCdsItensFichaPRD_UND.AsString;
//                                CdsRelItensPRD_GRADE.AsString       := SqlCdsItensFichaPRD_GRADE.AsString;
                                CdsRelItensPRD_PCUSTO.AsCurrency    := SqlCdsItensFichaPRD_PCUSTO.AsCurrency;
                                CdsRelItensFTI_UC.AsCurrency        := SqlCdsItensFichaFTI_UC.AsCurrency;
                                CdsRelItensFTI_MODE1.AsString       := SqlCdsItensFichaFTI_MODE1.AsString;
                                CdsRelItensFTI_MODE2.AsString       := SqlCdsItensFichaFTI_MODE2.AsString;
                                CdsRelItensFTI_MODE3.AsString       := SqlCdsItensFichaFTI_MODE3.AsString;
                                CdsRelItensFTI_MODE4.AsString       := SqlCdsItensFichaFTI_MODE4.AsString;
                                CdsRelItensFTI_MODE5.AsString       := SqlCdsItensFichaFTI_MODE5.AsString;
                                CdsRelItensFTI_MODE6.AsString       := SqlCdsItensFichaFTI_MODE6.AsString;
                                CdsRelItensFTI_MODE7.AsString       := SqlCdsItensFichaFTI_MODE7.AsString;
                                CdsRelItensFTI_MODE8.AsString       := SqlCdsItensFichaFTI_MODE8.AsString;
                                CdsRelItens.Post;
{
                                if SqlCdsItensFichaPRD_GRADE.AsString = 'G' then
                                   begin
                                       SqlItensGrade.Close;
                                       SqlItensGrade.CommandText := SQLDEF('FICHATECNICA','SELECT FG2.*,PG1.PRD_DESCRI,PG1.PRD_UND,PG1.PRD_GRADE,PG1.PRD_PCUSTO FROM FTC_IT01 FG2 LEFT JOIN PRD0000 PG1 ON PG1.PRD_REFER = FG2.PRD_REFER_ITENS','WHERE FG2.PRD_REFER = '''+SqlCdsItensFichaPRD_REFER_ITENS.AsString+'''','FG2.PRD_REFER,FG2.FTI_REGISTRO','FG2.');
                                       SqlItensGrade.Open;
                                       if (SqlItensGrade.IsEmpty = False) then
                                          begin
                                              SqlItensGrade.First;
                                              wS := 1;
                                              while not SqlItensGrade.eof do
                                               begin
                                                   CdsRelItens.Append;
                                                   CdsRelItensFTI_ITEM.AsString        := StrZero(IntToStr(wI),2)+'.'+StrZero(IntToStr(wS),3);
                                                   CdsRelItensPRD_REFER.AsString       := SqlCdsItensFichaPRD_REFER.AsString;
                                                   CdsRelItensPRD_REFER_ITENS.AsString := SqlItensGradePRD_REFER_ITENS.AsString;
                                                   CdsRelItensPRD_DESCRI.AsString      := SqlItensGradePRD_DESCRI.AsString;
                                                   CdsRelItensPRD_UND.AsString         := SqlItensGradePRD_UND.AsString;
                                                   CdsRelItensPRD_GRADE.AsString       := SqlItensGradePRD_GRADE.AsString;
                                                   CdsRelItensPRD_PCUSTO.AsCurrency    := SqlItensGradePRD_PCUSTO.AsCurrency;
                                                   CdsRelItensFTI_UC.AsCurrency        := SqlItensGradeFTI_UC.AsCurrency;
                                                   CdsRelItensFTI_MODE1.AsString       := SqlItensGradeFTI_MODE1.AsString;
                                                   CdsRelItensFTI_MODE2.AsString       := SqlItensGradeFTI_MODE2.AsString;
                                                   CdsRelItensFTI_MODE3.AsString       := SqlItensGradeFTI_MODE3.AsString;
                                                   CdsRelItensFTI_MODE4.AsString       := SqlItensGradeFTI_MODE4.AsString;
                                                   CdsRelItensFTI_MODE5.AsString       := SqlItensGradeFTI_MODE5.AsString;
                                                   CdsRelItensFTI_MODE6.AsString       := SqlItensGradeFTI_MODE6.AsString;
                                                   CdsRelItensFTI_MODE7.AsString       := SqlItensGradeFTI_MODE7.AsString;
                                                   CdsRelItensFTI_MODE8.AsString       := SqlItensGradeFTI_MODE8.AsString;
                                                   CdsRelItens.Post;
                                                   SqlItensGrade.Next;
                                                   Inc(wS);
                                               end;
                                          end;
                                   end;
}
                                SqlCdsItensFicha.Next;
                                Inc(wI);
                            end;
                           SqlCdsitensFicha.EnableControls;
                       end;
                    SqlCdsItensFicha.EnableControls;
                end;
             LBL_00_EMPRESA.Caption   := dbInicio.Empresa.RAZAO;
             LBL_00_LTITULO1.Caption  := 'FICHA TECNICA DO PRODUTO';
             ppRelFichaTec.DeviceType := 'Screen';
             ppRelFichaTec.Print;
           except on E:EdataBaseError do
              uteis.erro  (pchar('Erro ao gerar o relatório !'+e.message));
           end;
       end
    else
       begin
           uteis.aviso('Informe uma Referência !');
       end;
    wIncluir      := false;
    Screen.Cursor := crDefault;
end;

procedure TFormProduto.SpProdutoClick(Sender: tObject);
begin
    if EdtPRD_REFER.Text <> '' then
       begin
           try
             try
                FormProdutoGrid := TFormProdutoGrid.Create(Application);
                FormProdutoGrid.wBot2 := True;
                FormProdutoGrid.ShowModal;
             finally
                FormProdutoGrid.wBot2 := False;
                FormProdutoGrid.Destroy;
                FormProdutoGrid := nil;
                Screen.OnActiveControlChange   := MudaCorCampos;
             end;
           except
             //beep;
             uteis.aviso('Erro ao criar o formulario ');
           end;
       end
    else
       begin
           uteis.aviso('Informe a Referência do Produto Acabado !');
           EdtPRD_REFER.SelectAll;
           EdtPRD_REFER.SetFocus;
       end;
end;

procedure TFormProduto.Bit_ExcluirMateriaClick(Sender: tObject);
begin
    if EdtRefer.Text <> '' then
       begin
           ExcluirItensFTC;
       end
    else
       begin
           uteis.aviso('Informe uma Materia-Prima !');
//         DBGridFichaTecnicaItem.SetFocus;
       end;
end;

procedure TFormProduto.Bit_GravarMateriaClick(Sender: tObject);
begin
    DataCadastros.sqlUpdate.Close;
    DataCadastros.SqlUpdate.sql.text :=SQLDEF('FICHATECNICA','SELECT F1.PRD_REFER FROM FTC0000 F1 ','WHERE F1.PRD_REFER = '''+EDTPRD_REFER.Text+'''','F1.PRD_REFER','F1.');
    DataCadastros.sqlUpdate.Open;
    if (DataCadastros.sqlUpdate.IsEmpty = true) then
       begin
           if (wIncluir = false) then
              begin
                  uteis.aviso('Ficha Técnica não foi criada !');
                  HabilitaBotoesFTC;
                  Bit_FTC_Novo.SetFocus;
                  Exit;
              end;
       end;
    if CurrConsumo.Value = 0 then
       begin
           uteis.aviso('Informe a Qtde de consumo !');
           CurrConsumo.SetFocus;
           CurrConsumo.SelectAll;
           exit;
       end;
    if EdtRefer.Text = '' then
       begin
           uteis.aviso('Informe o código do material !');
           EdtRefer.SetFocus;
           EdtRefer.SelectAll;
           Exit;
       end;
    Screen.Cursor := crHourGlass;
    try
      DmProducao.CdsItemFicha.Close;
      DmProducao.CdsItemFicha.CommandText := SQLDEF('FICHATECNICA','Select F1.* From FTC_IT01 F1 ','where F1.PRD_REFER = '''+EdtPRD_REFER.Text+'''','F1.PRD_REFER','F1.');
      DmProducao.CdsItemFicha.Open;
      if DmProducao.CdsFichaTec.State in [dsBrowse] then
         DmProducao.CdsFichaTec.Edit;
      if wIncluirItem = true then
         begin
             DmProducao.CdsItemFicha.Insert;
         end
      else
         begin
             if DmProducao.CdsItemFicha.Locate('FTI_REGISTRO',SqlCdsItensFichaFTI_REGISTRO.AsInteger,[])=true then
                DmProducao.CdsItemFicha.Edit;
         end;
      DmProducao.CdsItemFichaPRD_REFER.AsString        := EdtPRD_REFER.Text;
      DmProducao.CdsItemFichaPRD_REFER_ITENS.AsString  := EdtRefer.Text;
      DmProducao.CdsItemFichaFTI_MODIFICADA.AsDateTime := DateModif.Date;
      DmProducao.CdsItemFichaFTI_UC.AsCurrency         := CurrConsumo.Value;
      DmProducao.CdsItemFichaFTI_UCMODIFIC.AsCurrency  := CurrAnterior.Value;
      DmProducao.CdsItemFichaFTI_TIPO.AsString         := SqlCdsMaterialPTI_SIGLA.AsString;
//      DmProducao.CdsItemFichaFTI_NIVEL.AsString        := 
      DmProducao.CdsItemFichaFTI_MODE1.AsString        := iif(ChkV1.checked ,'X','');
      DmProducao.CdsItemFichaFTI_MODE2.AsString        := iif(ChkV2.checked ,'X','');
      DmProducao.CdsItemFichaFTI_MODE3.AsString        := iif(ChkV3.checked ,'X','');
      DmProducao.CdsItemFichaFTI_MODE4.AsString        := iif(ChkV4.checked ,'X','');
      DmProducao.CdsItemFichaFTI_MODE5.AsString        := iif(ChkV5.checked ,'X','');
      DmProducao.CdsItemFichaFTI_MODE6.AsString        := iif(ChkV6.checked ,'X','');
      DmProducao.CdsItemFichaFTI_MODE7.AsString        := iif(ChkV7.checked ,'X','');
      DmProducao.CdsItemFichaFTI_MODE8.AsString        := iif(ChkV8.checked ,'X','');
      DmProducao.CdsItemFichaEMP_CODIGO.AsString       := dbInicio.Empresa.EMP_CODIGO;
      if DmProducao.CdsItemFicha.State in [dsInsert,dsEdit] then
         begin
             DmProducao.CdsItemFicha.ApplyUpdates(0);
             DmProducao.CdsItemFicha.Close;
         end;

      BuscaItensFichaTec;
      LimparDadosFTC;
      SpProduto.Enabled := true;
      EdtRefer.TabStop  := True;
      EdtRefer.ReadOnly := False;
      EdtREFER.Color    := clWindow;
      EdtREFER.SetFocus;
    except on E:EdataBaseError do
       uteis.erro  (pchar('Erro ao gravar o item da ficha técnica ! '+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormProduto.Bit_CancelarMateriaClick(Sender: tObject);
begin
    BuscaItensFichaTec;
    LimparDadosFTC;
    SpProduto.Enabled    := True;
    Pan_FTC01.Enabled    := true;
    Pan_FTC02.Enabled    := True;
    Pan_FTC03.Enabled    := True;
    GrpVariacoes.Enabled := True;
    GrpProcesso.Enabled  := True;
    EdtRefer.TabStop     := True;
    EdtRefer.ReadOnly    := False;
    EdtREFER.Color       := clWindow;
    EdtRefer.SetFocus;
end;

procedure TFormProduto.LimparDadosFTC;
begin
    EdtRefer.Text        := '';
    EdtProduto.Text      := '';
    CurrConsumo.Value    := 0;
    CurrAnterior.Value   := 0;
    DateModif.Text       := '';
    ChkV1.Checked        := false;
    ChkV1.Enabled        := true;
    ChkV2.Checked        := false;
    ChkV2.Enabled        := true;
    ChkV3.Checked        := false;
    ChkV3.Enabled        := true;
    ChkV4.Checked        := false;
    ChkV4.Enabled        := true;
    ChkV5.Checked        := false;
    ChkV5.Enabled        := true;
    ChkV6.Checked        := false;
    ChkV6.Enabled        := true;
    ChkV7.Checked        := false;
    ChkV7.Enabled        := true;
    ChkV8.Checked        := false;
    ChkV8.Enabled        := true;
end;

procedure TFormProduto.DesabilitaMateria;
begin
    EdtProduto.Enabled    := False;
    CurrConsumo.Enabled   := False;
    CurrAnterior.Enabled  := False;
    DateModif.Enabled     := False;
    GrpVarConsumo.Enabled := False;
end;

procedure TFormProduto.HabilitaMateria;
begin
    EdtProduto.Enabled    := true;
    CurrConsumo.Enabled   := true;
    CurrAnterior.Enabled  := true;
    DateModif.Enabled     := true;
    GrpVarConsumo.Enabled := true;
end;

procedure TFormProduto.verificaEdicao;
begin
    // verifica estado da tabela em edicao e inclusao
    screen.cursor :=crHourglass;
    if DataCadastros.CdsProdutos.State in [dsEdit,dsInsert] then
       begin
           if uteis.confirmacao ( 'Deseja salvar as alterações do Cadastro de Produtos ?') = idyes then
              begin
                  Bit_Gravar.Click;  // chama o evento onclick do botão gravar
              end
           else
              begin
                  Bit_Cancelar.Click;   // chama o evento onclick do botão cancelar
              end;
       end;
    screen.cursor := crDefault;
end;

procedure TFormProduto.verificaEdicaoFTC;
begin
    // verifica estado da tabela em edicao e inclusao
    screen.cursor :=crHourglass;
    if DmProducao.CdsFichaTec.State in [dsEdit,dsInsert] then
       begin
           if uteis.confirmacao ( 'Deseja salvar alterações da Ficha Técnica ?') = idyes then
              begin
                  BIT_FTC_GRAVAR.Click;  // chama o evento onclick do botão gravar
              end
           else
              begin
                  Bit_FTC_Cancelar.Click;   // chama o evento onclick do botão cancelar
              end;
       end;
    screen.cursor := crDefault;
end;

procedure TFormProduto.Bit_FTC_CancelarClick(Sender: tObject);
begin
    //Quando cancela ficha na inclusao os itens são deletados
    if wIncluir = true then
       begin
           Screen.Cursor := crHourGlass;
           try
             DataCadastros.sqlUpdate.Close;
             DataCadastros.SqlUpdate.sql.text :=SQLDEF('FICHATECNICA','Delete from FTC_IT01 ','where PRD_REFER = '''+EdtPRD_REFER.Text+'''','','');
             DataCadastros.sqlUpdate.Execsql;
           except on E:EdataBaseError do
              uteis.erro  (pchar('Erro ao excluir os itens da ficha tecnica !'+e.message));
           end;
           Screen.Cursor := crDefault;
           SqlCdsItensFicha.Close;
       end;
    SqlCdsProduto.Close;
    SqlCdsItensFicha.Close;
    SqlCdsMaterial.Close;
    DmProducao.CdsFichaTec.Close;
    DmProducao.CdsItemFicha.Close;
    wIncluir := false;
    EdtDescricao.Text  := '';
    LimparDadosFTC;
    HabilitaBotoes;
    PctrlProdutos.ActivePageIndex := 0;
    EdtPRD_REFER.SetFocus;
    EdtPrd_REFER.SelectAll;
end;

procedure TFormProduto.DesabilitaBotoesFTC;
begin
    Bit_FTC_Relatorio.Enabled := False;
    Bit_FTC_novo.Enabled      := False;
    Bit_FTC_Copiar.Enabled    := False;
    Bit_FTC_Excluir.Enabled   := False;
    Bit_FTC_Cancelar.enabled  := True;
    Bit_FTC_Gravar.Enabled    := True;
end;

procedure TFormProduto.HabilitaBotoesFTC;
begin
    Bit_FTC_Relatorio.Enabled := True;
    Bit_FTC_novo.Enabled      := True;
    Bit_FTC_Copiar.Enabled    := True;
    Bit_FTC_Excluir.Enabled   := True;
    Bit_FTC_Cancelar.enabled  := False;
    Bit_FTC_Gravar.Enabled    := False;
end;

procedure TFormProduto.ExcluirItensFTC;
begin
    Screen.Cursor := crHourGlass;
    try
      if uteis.confirmacao ( ('Confirma a exclusão do Item ?'+#13+'Material : '+SqlCdsItensFichaPRD_REFER_ITENS.AsString+#13+'Descrição : '+SqlCdsItensFichaPRD_DESCRI.AsString)) = mrYes then
         begin
             try
               DataCadastros.sqlUpdate.close;
               DataCadastros.SqlUpdate.sql.text :=Sqldef('FICHATECNICA','Delete from FTC_IT01 ','where FTI_REGISTRO = '''+IntToStr(SqlCdsItensFichaFTI_REGISTRO.AsInteger)+'''','','');
               DataCadastros.sqlUpdate.Execsql;
               if (TreeViewMateria.Selected.Selected=True) then
                  TreeViewMateria.Items.Delete(TreeViewMateria.Selected);
               BuscaItensFichaTec;
             except on E:EdataBaseError do
                uteis.erro  (pchar('Erro ao confirmar a exclusão do item da ficha técnica !'+e.message));
             end;
         end;
    except on E:EdataBaseError do
      uteis.erro  (pchar('Erro ao excluir o item da ficha técnica !'+e.Message));
    end;
    LimparDadosFTC;
    if (PctrlProdutos.ActivePageIndex = 0) then
       begin
           EdtRefer.SelectAll;
           EdtRefer.SetFocus;
       end
    else
       begin
           DbDtFTC_CRIACAO.SetFocus;
           DbDtFTC_CRIACAO.SelectAll;
       end;
    Screen.Cursor := crDefault;
end;

procedure TFormProduto.DbDtFTC_CRIACAOExit(Sender: tObject);
begin
    if DbDtFTC_CRIACAO.Text <> '  /  /    ' then
       if not TestaDataStr(DbDtFTC_CRIACAO.Text) then
          DbDtFTC_CRIACAO.setfocus;
end;

procedure TFormProduto.EdtReferChange(Sender: tObject);
begin
    if EdtRefer.Text <> '' then
       begin
           Bit_GravarMateria.Enabled   := true;
           Bit_CancelarMateria.Enabled := true;
           Bit_ExcluirMateria.Enabled  := true;
           GrpVariacoes.Enabled        := False;
           GrpProcesso.Enabled         := False;
           HabilitaMateria;
       end
    else
       begin
           Bit_GravarMateria.Enabled   := False;
           Bit_CancelarMateria.Enabled := False;
           Bit_ExcluirMateria.Enabled  := False;
           GrpVariacoes.Enabled        := True;
           GrpProcesso.Enabled         := True;
           DesabilitaMateria;
       end;
end;

procedure TFormProduto.EdtReferClick(Sender: tObject);
begin
    EdtRefer.SelectAll;
end;

procedure TFormProduto.EdtReferEnter(Sender: tObject);
begin
    EdtRefer.Color := $0080FFFF;
end;

procedure TFormProduto.EdtReferExit(Sender: tObject);
begin
    if (ActiveControl.Name = 'Bit_Excluir')or
       (ActiveControl.Name = 'Bit_Relatorio')or
       (ActiveControl.Name = 'Bit_Lista')or
       (ActiveControl.Name = 'Bit_novo')or
       (ActiveControl.Name = 'Bit_Cancelar')or
       (ActiveControl.Name = 'Bit_Sair')then
       exit;
    if EdtREFER.Text <> '' then
       BuscaMaterial;
    EdtRefer.Color := clWindow;
end;

procedure TFormProduto.BuscaMaterial;
begin
    if (ActiveControl.Name = 'Bit_CancelarMateria') or (ActiveControl.Name = 'Bit_GravarMateria') then
       exit;
    Screen.Cursor := crHourGlass;
    try
      wSql1 := 'SELECT P2.PRD_REFER,P2.PRD_DESCRI,T1.PTI_SIGLA FROM PRD0000 P2 ';
      wSql2 := 'LEFT JOIN PRD_TIPO T1 ON (P2.PTI_CODIGO = T1.PTI_CODIGO) ';

      SqlCdsMaterial.Close;
      SqlCdsMaterial.CommandText := SQLDEF('PRODUTOS',wSql1+wSql2,'WHERE P2.PRD_REFER = '''+EdtRefer.Text+'''','P2.PRD_REFER','P2.');
      SqlCdsMaterial.Open;
      if SqlCdsMaterial.IsEmpty = false then
         begin
             wIncluirItem := true;
             EdtProduto.Text := SqlCdsMaterialPRD_DESCRI.AsString;
             HabilitaMateria;
             {Habilita somente quem tem variacao}
             ChkV1.Enabled := IIF(DbeFTCvar1.Text <> '','true','False');
             ChkV2.Enabled := IIF(DbeFTCvar2.Text <> '','true','False');
             ChkV3.Enabled := IIF(DbeFTCvar3.Text <> '','true','False');
             ChkV4.Enabled := IIF(DbeFTCvar4.Text <> '','true','False');
             ChkV5.Enabled := IIF(DbeFTCvar5.Text <> '','true','False');
             ChkV6.Enabled := IIF(DbeFTCvar6.Text <> '','true','False');
             ChkV7.Enabled := IIF(DbeFTCvar7.Text <> '','true','False');
             ChkV8.Enabled := IIF(DbeFTCvar8.Text <> '','true','False');
             ChkV1.Checked := true;
             CurrConsumo.SetFocus;
         end
      else
         begin
             uteis.aviso('Materia-Prima não cadastrado !');
             EdtRefer.Text   := '';
             EdtProduto.Text := '';
             EdtRefer.SetFocus;
             EdtRefer.SelectAll;
         end;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao localizar o material !'+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormProduto.FormCreate(Sender: tObject);
begin
    wSql1 := '';
    wSql2 := '';
    wSql3 := '';
    wSql4 := '';
    wSql5 := '';
end;

procedure TFormProduto.CurrConsumoClick(Sender: tObject);
begin
    CurrConsumo.SelectAll;
end;

procedure TFormProduto.CurrAnteriorClick(Sender: tObject);
begin
    CurrAnterior.SelectAll;
end;

procedure TFormProduto.Carrega_Arvore;
var
 pont: Tpont;
begin
    TreeViewMateria.Items.Clear;
    DmProducao.CdsFichaTec.First;
    while not DmProducao.CdsFichaTec.Eof do
     begin
         new(pont);
         pont^ := DmProducao.CdsFichaTec.Fieldbyname('PRD_REFER').AsString;
         TreeViewMateria.Items.AddObject(nil, DmProducao.CdsFichaTec.Fieldbyname('PRD_REFER').AsString+' - '+DmProducao.CdsFichaTec.Fieldbyname('PRD_DESCRI').asString,pont);
         DmProducao.CdsFichaTec.next;
     end;
end;

procedure TFormProduto.BuscaFichaTecnica;
begin
    Screen.Cursor := crHourGlass;
    try
      wSql1 := 'SELECT F1.*,P1.PRD_DESCRI,P1.PRD_DCVAR1,P1.PRD_DCVAR2,P1.PRD_DCVAR3,P1.PRD_DCVAR4,P1.PRD_DCVAR5,P1.PRD_DCVAR6,P1.PRD_DCVAR7,P1.PRD_DCVAR8,T1.PTI_SIGLA FROM FTC0000 F1 ';
      wSql2 := 'LEFT JOIN PRD0000 P1 ON (F1.PRD_REFER = P1.PRD_REFER) LEFT JOIN PRD_TIPO T1 ON (P1.PTI_CODIGO = T1.PTI_CODIGO) ';
      DmProducao.CdsFichaTec.Close;
      DmProducao.CdsFichaTec.CommandText := SQLDEF('FICHATECNICA',wSql1+wSql2,'WHERE F1.PRD_REFER = '''+EdtPRD_REFER.Text+'''','F1.PRD_REFER','F1.');
      DmProducao.CdsFichaTec.Open;
      if (DmProducao.CdsFichaTec.IsEmpty = False) then
         begin
             wIncluir := False;
             EdtDescricao.Text := DmProducao.CdsFichaTecPRD_DESCRI.AsString;
             DbeFTCvar1.Text   := DbeNomeV1.Text;
             DbeFTCvar2.Text   := DbeNomeV2.Text;
             DbeFTCvar3.Text   := DbeNomeV3.Text;
             DbeFTCvar4.Text   := DbeNomeV4.Text;
             DbeFTCvar5.Text   := DbeNomeV5.Text;
             DbeFTCvar6.Text   := DbeNomeV6.Text;
             DbeFTCvar7.Text   := DbeNomeV7.Text;
             DbeFTCvar8.Text   := DbeNomeV8.Text;
             if DmProducao.CdsFichaTec.Active = true then
                DmProducao.DsFichaTec.AutoEdit := true;
         end
      else
         begin
             if DmProducao.CdsFichaTec.Active = true then
                DmProducao.DsFichaTec.AutoEdit := False;
         end;
    except on E:EdatabaseError do
      uteis.erro  (pchar('Erro ao localizar a ficha técnica !'+e.Message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormProduto.BuscaItensFichaTec;
begin
    try
      wSql1 := 'SELECT F2.*,P1.PRD_DESCRI,P1.PRD_UND,P1.PRD_PCUSTO,P1.PRD_GRADE,T1.PTI_SIGLA FROM FTC_IT01 F2 ';
      wSql2 := 'LEFT JOIN PRD0000 P1 ON P1.PRD_REFER = F2.PRD_REFER_ITENS LEFT JOIN PRD_TIPO T1 ON (P1.pti_codigo = T1.PTI_CODIGO) ';

      SqlCdsItensFicha.Close;
      SqlCdsItensFicha.CommandText := SQLDEF('FICHATECNICA',wSql1+wSql2,'WHERE F2.PRD_REFER = '''+EDTPRD_REFER.TEXT+'''','F2.PRD_REFER,F2.FTI_REGISTRO','F2.');
      SqlCdsItensFicha.Open;
{
      if (SqlCdsItensFicha.IsEmpty = true) then
         begin
             SqlCdsItensFicha.Close;
         end;
}
    except on E:EDataBaseError do
      uteis.erro  (pchar('Erro ao buscar os itens da ficha tecnica !'+e.Message));
    end;
end;

procedure TFormProduto.TreeViewMateriaDblClick(Sender: tObject);
begin
    MostraItensFichaTec;
    HabilitaMateria;
    EdtREFER.Color     := $00D7D7D7;
    EdtRefer.TabStop   := False;
    EdtRefer.ReadOnly  := True;
    SpProduto.Enabled  := False;
    wIncluirItem       := false;
    CurrConsumo.SetFocus;
end;

procedure TFormProduto.MostraItensFichaTec;
begin
    if (ActiveControl.Name = 'Bit_CancelarMateria') or (ActiveControl.Name = 'Bit_GravarMateria') then
       exit;
    {Seleciona o item da ficha tecnica para alteração}
    Screen.cursor := crHourGlass;
    try
      wSql1      := 'SELECT F2.*,P1.PRD_DESCRI,P1.PRD_UND,P1.PRD_GRADE,P1.PRD_PCUSTO,T1.PTI_SIGLA FROM FTC_IT01 F2 ';
      wSql2      := 'LEFT JOIN PRD0000  P1 ON P1.PRD_REFER = F2.PRD_REFER_ITENS LEFT JOIN PRD_TIPO T1 ON (P1.PTI_CODIGO = T1.PTI_CODIGO) ';
      wRefer     := trim(copy(TreeViewMateria.Selected.Text,1,pos('-',TreeViewMateria.Selected.Text)-1));
      wSeleciona := 'WHERE F2.PRD_REFER = '''+EdtPrd_Refer.Text+''' AND F2.PRD_REFER_ITENS = '''+wRefer+'''';
      wOrdem     := 'F2.PRD_REFER,F2.PRD_REFER_ITENS';
      SqlCdsItensFicha.Close;
      SqlCdsItensFicha.CommandText := SQLDEF('FICHATECNICA',wSql1+wSql2,wSeleciona,wOrdem,'F2.');
      SqlCdsItensFicha.Open;
      if (SqlCdsItensFicha.IsEmpty=false) then
         begin
             EdtRefer.Text      := SqlCdsItensFichaPRD_REFER_ITENS.AsString;
             EdtProduto.Text    := SqlCdsItensFichaPRD_DESCRI.AsString;
             CurrConsumo.Value  := SqlCdsItensFichaFTI_UC.AsCurrency;
             DateModif.Date     := SqlCdsItensFichaFTI_MODIFICADA.AsDateTime;
             CurrAnterior.Value := SqlCdsItensFichaFTI_UCMODIFIC.AsCurrency;
             {Desabilita as variacoes e atribui os dados}
             ChkV1.Checked      := IIF(SqlCdsItensFichaFTI_MODE1.AsString = 'X','TRUE','FALSE');
             ChkV1.Enabled      := IIF(DbeFTCvar1.Text <> '','TRUE','FALSE');
             ChkV2.Checked      := IIF(SqlCdsItensFichaFTI_MODE2.AsString = 'X','TRUE','FALSE');
             ChkV2.Enabled      := IIF(DbeFTCvar2.Text <> '','TRUE','FALSE');
             ChkV3.Checked      := IIF(SqlCdsItensFichaFTI_MODE3.AsString = 'X','TRUE','FALSE');
             ChkV3.Enabled      := IIF(DbeFTCvar3.Text <> '','TRUE','FALSE');
             ChkV4.Checked      := IIF(SqlCdsItensFichaFTI_MODE4.AsString = 'X','TRUE','FALSE');
             ChkV4.Enabled      := IIF(DbeFTCvar4.Text <> '','TRUE','FALSE');
             ChkV5.Checked      := IIF(SqlCdsItensFichaFTI_MODE5.AsString = 'X','TRUE','FALSE');
             ChkV5.Enabled      := IIF(DbeFTCvar5.Text <> '','TRUE','FALSE');
             ChkV6.Checked      := IIF(SqlCdsItensFichaFTI_MODE6.AsString = 'X','TRUE','FALSE');
             ChkV6.Enabled      := IIF(DbeFTCvar6.Text <> '','TRUE','FALSE');
             ChkV7.Checked      := IIF(SqlCdsItensFichaFTI_MODE7.AsString = 'X','TRUE','FALSE');
             ChkV7.Enabled      := IIF(DbeFTCvar7.Text <> '','TRUE','FALSE');
             ChkV8.Checked      := IIF(SqlCdsItensFichaFTI_MODE8.AsString = 'X','TRUE','FALSE');
             ChkV8.Enabled      := IIF(DbeFTCvar8.Text <> '','TRUE','FALSE');
         end;
    except on E:EdataBaseError do
       uteis.erro  (pchar('Erro ao selecionar o item da ficha técnica !'+e.Message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormProduto.TreeViewMateriaChange(Sender: tObject; Node: TTreeNode);
begin
    MostraItensFichaTec;
end;

procedure TFormProduto.TreeViewMateriaClick(Sender: tObject);
begin
    MostraItensFichaTec;
end;

procedure TFormProduto.TreeViewMateriaKeyPress(Sender: tObject;
  var Key: Char);
begin
    if (Key = #13) then
       begin
           MostraItensFichaTec;
           HabilitaMateria;
           SpProduto.Enabled  := False;
           wIncluirItem       := false;
           CurrConsumo.SetFocus;
           EdtREFER.Color     := $00D7D7D7;
           EdtRefer.TabStop   := False;
           EdtRefer.ReadOnly  := True;
           Key :=#0;
       end;
end;

procedure TFormProduto.PopulaTreeView(const TreeView: TTreeView; const Node: TTreeNode);
var
  TreeNode,
  TreeRaiz    : TTreeNode;
  AddFalseNode: Boolean;
begin
    try
      TreeViewMateria.Items.Clear;
      TreeViewMateria.Items.BeginUpdate;
      DmProducao.CdsFichaTec.First;

      TreeRaiz := TreeViewMateria.Items.AddChild(Node, DmProducao.CdsFichaTec.Fieldbyname('PRD_REFER').AsString+' - '+DmProducao.CdsFichaTec.Fieldbyname('PRD_DESCRI').asString);

      wSql1 := 'SELECT F2.*,P1.PRD_DESCRI,P1.PRD_UND,P1.PRD_PCUSTO,P1.PRD_GRADE,T1.PTI_SIGLA FROM FTC_IT01 F2 ';
      wSql2 := 'LEFT JOIN PRD0000 P1 ON P1.PRD_REFER = F2.PRD_REFER_ITENS LEFT JOIN PRD_TIPO T1 ON (P1.pti_codigo = T1.PTI_CODIGO) ';

      SqlCdsItensFicha.Close;
      SqlCdsItensFicha.CommandText := SQLDEF('FICHATECNICA',wSql1+wSql2,'WHERE F2.PRD_REFER = '''+EDTPRD_REFER.TEXT+'''','F2.PRD_REFER,F2.FTI_REGISTRO','F2.');
      SqlCdsItensFicha.Open;

      if Node<>Nil then
         Node.DeleteChildren;
      while not SqlCdsItensFicha.EOF do
       begin
           AddFalseNode:=False;
           if (SqlCdsItensFichaPTI_SIGLA.AsString = 'PI') then
              begin

                  wSql1 := 'SELECT F2.*,P1.PRD_DESCRI,P1.PRD_UND,P1.PRD_PCUSTO,P1.PRD_GRADE,T1.PTI_SIGLA FROM FTC_IT01 F2 ';
                  wSql2 := 'LEFT JOIN PRD0000 P1 ON P1.PRD_REFER = F2.PRD_REFER_ITENS LEFT JOIN PRD_TIPO T1 ON (P1.pti_codigo = T1.PTI_CODIGO) ';

                  DataCadastros.sqlUpdate.Close;
                  DataCadastros.SqlUpdate.sql.text :=SQLDEF('FICHATECNICA',wSql1+wSql2,'WHERE F2.PRD_REFER = '''+EDTPRD_REFER.TEXT+''' AND F2.FTI_GRUPO = '''+SqlCdsItensFichaPRD_REFER_ITENS.AsString+'''','F2.PRD_REFER,F2.FTI_REGISTRO','F2.');
                  DataCadastros.sqlUpdate.Open;
                  DataCadastros.sqlUpdate.First;
                  while not DataCadastros.sqlUpdate.Eof do
                   begin
                       if (DataCadastros.sqlUpdate.FieldByName('PTI_SIGLA').AsString = 'PI') then
                          begin
                              TreeNode:=TreeViewMateria.Items.Add(TreeRaiz, DataCadastros.sqlUpdate.FieldByName('PRD_REFER_ITENS').AsString+' - '+DataCadastros.sqlUpdate.FieldByName('PRD_DESCRI').AsString)
                          end
                       else
                          TreeNode:=TreeViewMateria.Items.AddChild(TreeNode, DataCadastros.sqlUpdate.FieldByName('PRD_REFER_ITENS').AsString+' - '+DataCadastros.sqlUpdate.FieldByName('PRD_DESCRI').AsString);
                       DataCadastros.sqlUpdate.Next;
                   end;
              end;
           SqlCdsItensFicha.Next;
       end
    finally
       TreeViewMateria.Items.EndUpdate;
    end;
end;

procedure TFormProduto.VerificaNos(Refer: String;  var AddFalseNode: Boolean);
begin
    try
{
      wSql1      := 'SELECT COUNT(*) AS WQTDE FROM FTC_IT01 T1';
      wSeleciona := 'WHERE T1.FTI_GRUPO = '''+Refer+''' AND T1.EMP_CODIGO = '''+dbInicio.Empresa.Emp_Codigo+'''';
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('FICHATECNICA',wSql1,wSeleciona,'','T1.');
      DataCadastros.sqlUpdate.Open;
      AddFalseNode := DataCadastros.sqlUpdate.FieldByName('WQTDE').AsInteger>1;
}      
    except on E:EdataBaseError do
       uteis.erro  (pchar('Erro ao localizar os itens ! '+e.message));
    end;
end;

end.

