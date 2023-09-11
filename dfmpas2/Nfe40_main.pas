unit Nfe40_main;

interface

uses
  blcksock, PesquisaClientesForm,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBForm, Data.DBXFirebird, Data.FMTBcd, Vcl.ExtCtrls, pngextra, Vcl.Imaging.jpeg, Data.DB, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora,
  ACBrNFeDANFEFRDM, ACBrNFeDANFEClass, ACBrNFeDANFEFR, ACBrDFe, ACBrNFe, Vcl.ComCtrls, JvExComCtrls, JvComCtrls, Datasnap.Provider, Datasnap.DBClient, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, Vcl.Mask,  uteis, Vcl.Buttons, SgDbSeachComboUnit, System.ImageList, Vcl.ImgList, ComboBoxRW, System.Actions, Vcl.ActnList, ppProd, ppClass, ppReport, ppComm,
  ppRelatv, ppDB, ppDBPipe,ufrmpreviewrb, ppPrnabl, ppCtrls, ppBands, ppCache, ppDesignLayer, ppParameter, ppVar, InicioDB, IdMessage, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL,
  IdSSLOpenSSL, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP, ACBrMail, acbrutil,
  ACBrDFeConfiguracoes, pcnconversao, IdAttachmentFile, Vcl.Menus, JvExControls, JvArrowButton,acbrdfessl, pcnconversaonfe, cartacorrecaonfe , BaseDbEstoqueForm, system.UITypes, ACBrNFeDANFeRLClass,
  JvBaseDlg, JvSelectDirectory, JvMenus, JvDialogs, System.StrUtils, animacao, JvAnimatedImage, JvGIFCtrl, uprocessarnf, frxClass, ACBrDANFCeFortesFr, ACBrDFeReport, ACBrDFeDANFeReport, JvExMask,
  JvToolEdit, ACBrDANFCeFortesFrA4, ppModule, raCodMod, FileCtrl, frxDBSet, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxEditRepositoryItems, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxCheckBox;

type
  TfrmNfe40 = class(TfrmBaseDbEstoque)
    pPesquisa: TPanel;
    pAcoes: TPanel;
    Panel3: TPanel;
    Image1: TImage;
    acaoImprimirDANFE: TPNGButton;
    JvImage14: TPNGButton;
    acaoCancelar: TPNGButton;
    acaoInutilizar: TPNGButton;
    btnLimparCertificados: TPNGButton;
    acaoExportar: TPNGButton;
    acaoEnviarEmail: TPNGButton;
    acaoPesquisar: TPNGButton;
    JvImage21: TPNGButton;
    JvImage22: TPNGButton;
    pNotas: TPanel;
    Splitter1: TSplitter;
    pstatus: TPanel;
    Splitter2: TSplitter;
    ACBrNFe1: TACBrNFe;
    ACBrNFeDANFEFR1: TACBrNFeDANFEFR;
    qNotas: TSQLQuery;
    dsNotas: TDataSource;
    cdsNotas: TClientDataSet;
    dspNotas: TDataSetProvider;
    cdsNotasped_codigo: TStringField;
    cdsNotasNF_NUM_NFE: TIntegerField;
    cdsNotasNF_NOTANUMBER: TStringField;
    cdsNotasOPE_NATUREZA: TStringField;
    cdsNotasCLI_CODIGO: TStringField;
    cdsNotasCLI_RAZAO: TStringField;
    cdsNotasCLI_CIDADE: TStringField;
    cdsNotasCLI_UF: TStringField;
    cdsNotasNF_TOT_NOTA: TFMTBCDField;
    cdsNotasnf_registro: TIntegerField;
    cdsNotasNF_EMISSAO: TDateField;
    qhistorico: TSQLQuery;
    dsHistorico: TDataSource;
    cdsHistorico: TClientDataSet;
    dspHistorico: TDataSetProvider;
    dbHistorico: TDBGrid;
    cdsHistoricoNFM_REGISTRO: TIntegerField;
    cdsHistoricoNFH_DESCRICAO: TStringField;
    cdsHistoricoUSU_NOME: TStringField;
    cdsHistoricoNFH_DATA: TSQLTimeStampField;
    GroupBox1: TGroupBox;
    ldataInicial: TLabel;
    lDataFinal: TLabel;
    GroupBox2: TGroupBox;
    cbCampo: TComboBox;
    edValorDireto: TEdit;
    BitPesquisar: TBitBtn;
    BitBtn1: TBitBtn;
    BtnLimpar: TBitBtn;
    Imagens: TImageList;
    qCli: TSQLQuery;
    qRep: TSQLQuery;
    EdClienteCodigo: TEdit;
    Label1: TLabel;
    PesqCliente: TSgDbSearchCombo;
    Label2: TLabel;
    edVendedorCodigo: TEdit;
    pesqVendedor: TSgDbSearchCombo;
    cdsNotasNF_STATUS_NFE: TStringField;
    cdsNotasNF_ENVIADO_NFE_EMAIL: TStringField;
    qCfop: TSQLQuery;
    PesquisaOper: TComboBoxRw;
    Label3: TLabel;
    btnCancelar: TBitBtn;
    btnAutorizadas: TBitBtn;
    btnTransmitida: TBitBtn;
    btnRejeitada: TBitBtn;
    btnNaoGerado: TBitBtn;
    btnTodos: TBitBtn;
    btnEmail: TBitBtn;
    ActionList1: TActionList;
    pipNotas: TppDBPipeline;
    RpNotasMod1: TppReport;
    ppParameterList1: TppParameterList;
    cdsNotaNF_VL_ICMS: TFMTBCDField;
    cdsNotaNF_VL_SUBTRIB: TFMTBCDField;
    cdsNotaNF_VL_IPI: TFMTBCDField;
    cdsNotaNF_TOT_PROD: TFMTBCDField;
    cdsNotaNF_CHAVE_NFE: TStringField;
    lstatus: TLabel;
    ACBrMail1: TACBrMail;
    SMTP: TIdSMTP;
    sslsocket: TIdSSLIOHandlerSocketOpenSSL;
    IdMessage1: TIdMessage;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    BtnImprimir: TJvArrowButton;
    pmRelatorio: TPopupMenu;
    miRelAgrupadoCFOP: TMenuItem;
    miPrincipal: TMenuItem;
    RpNotasMod2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText12: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppDBCalc3: TppDBCalc;
    ppLabel29: TppLabel;
    ppDBCalc4: TppDBCalc;
    GroupNatureza: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppParameterList2: TppParameterList;
    ppLabel30: TppLabel;
    ppDBText23: TppDBText;
    cdsNotasNF_PROTOCOLO_AUTORIZACAO: TStringField;
    cdsNotasselecionado: TBooleanField;
    cdsNotasNF_PROTOCOLO_NFE_CANC: TStringField;
    cdsNotasNF_PROTOCOLO_NFE: TStringField;
    cdsNotasNF_SEQ_CCE: TIntegerField;
    cdsNotasOPE_CODIGO: TStringField;
    cdsNotasNF_VL_DESCTO: TFMTBCDField;
    btnInfoCertificado: TPNGButton;
    ACBrNFeDANFeRL1: TACBrNFeDANFeRL;
    btnImprimirEvento: TBitBtn;
    cdsHistoricoNFH_XML: TBlobField;
    cdsHistoricoNF_REGITRO: TIntegerField;
    pmSeleciona: TJvPopupMenu;
    miselecionarTudo: TMenuItem;
    miDesmarcartudo: TMenuItem;
    btnOutros: TBitBtn;
    btnValidarXML: TPNGButton;
    PanelAguarde: TPanel;
    JvGIFAnimator1: TJvGIFAnimator;
    pinfo: TPanel;
    cdsNotasCLI_EMAIL: TStringField;
    TransmitirXML: TPNGButton;
    ACBrNFeDANFCeFortes1: TACBrNFeDANFCeFortes;
    cdsNotasNF_NUM_NFCE: TIntegerField;
    chkNfe: TCheckBox;
    chkNfce: TCheckBox;
    ppDBCalc5: TppDBCalc;
    ppLabel31: TppLabel;
    ppDBText24: TppDBText;
    ppLine6: TppLine;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppSummaryBand2: TppSummaryBand;
    ppLine7: TppLine;
    groupStatus: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc1: TppDBCalc;
    ppLabel32: TppLabel;
    ppDBText25: TppDBText;
    ppLine8: TppLine;
    ppDBCalc2: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppDBText26: TppDBText;
    ppLabel33: TppLabel;
    RxDataInicial: TJvDateEdit;
    RxDataFinal: TJvDateEdit;
    ACBrNFeDANFCeFortesA41: TACBrNFeDANFCeFortesA4;
    ppTitleBand1: TppTitleBand;
    ppLabel23: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLabel25: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppLabel34: TppLabel;
    raCodeModule1: TraCodeModule;
    JvArrowButton1: TJvArrowButton;
    pmexportar: TPopupMenu;
    ExportarXMLPDF1: TMenuItem;
    EXportarsomenteXML1: TMenuItem;
    ExportarsomentePDF1: TMenuItem;
    dspNOTAcfop: TDataSetProvider;
    cdsNOTACFOP: TClientDataSet;
    qNotaCFOP: TSQLQuery;
    dsNotaCFOP: TDataSource;
    cdsNOTACFOPNF_STATUS_NFE: TStringField;
    cdsNOTACFOPNF_ENVIADO_NFE_EMAIL: TStringField;
    cdsNOTACFOPnf_registro: TIntegerField;
    cdsNOTACFOPped_codigo: TStringField;
    cdsNOTACFOPNF_NUM_NFE: TIntegerField;
    cdsNOTACFOPNF_NOTANUMBER: TStringField;
    cdsNOTACFOPOPE_NATUREZA: TStringField;
    cdsNOTACFOPCLI_CODIGO: TStringField;
    cdsNOTACFOPCLI_RAZAO: TStringField;
    cdsNOTACFOPCLI_CIDADE: TStringField;
    cdsNOTACFOPCLI_UF: TStringField;
    cdsNOTACFOPNF_TOT_NOTA: TFMTBCDField;
    cdsNOTACFOPNF_EMISSAO: TDateField;
    cdsNOTACFOPNF_VL_ICMS: TFMTBCDField;
    cdsNOTACFOPNF_VL_SUBTRIB: TFMTBCDField;
    cdsNOTACFOPNF_VL_IPI: TFMTBCDField;
    cdsNOTACFOPNF_TOT_PROD: TFMTBCDField;
    cdsNOTACFOPNF_CHAVE_NFE: TStringField;
    cdsNOTACFOPNF_PROTOCOLO_AUTORIZACAO: TStringField;
    cdsNOTACFOPNF_PROTOCOLO_NFE_CANC: TStringField;
    cdsNOTACFOPNF_PROTOCOLO_NFE: TStringField;
    cdsNOTACFOPNF_SEQ_CCE: TIntegerField;
    cdsNOTACFOPOPE_CODIGO: TStringField;
    cdsNOTACFOPNF_VL_DESCTO: TFMTBCDField;
    cdsNOTACFOPCLI_EMAIL: TStringField;
    cdsNOTACFOPNF_NUM_NFCE: TIntegerField;
    cdsNOTACFOPnf_totalitem: TFMTBCDField;
    pipNotasCFOP: TppDBPipeline;
    ppGroup1: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppDBText2: TppDBText;
    ppDBText13: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    cdsNOTACFOPNOTA: TIntegerField;
    ppDBText38: TppDBText;
    ppDBCalc25: TppDBCalc;
    btnEmailEvento: TBitBtn;
    FileOpenDialog1: TFileOpenDialog;
    JvOpenDialog1: TJvOpenDialog;
    ACBrNFeDANFCEFR1: TACBrNFeDANFCEFR;
    cdsNOTACFOPOPE_TIPO_OPERACAO: TStringField;
    pvendaCFOP: TppLabel;
    RpNotasXML: TppReport;
    ppTitleBand3: TppTitleBand;
    ppLabel24: TppLabel;
    ppLabel36: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppLabel40: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppLabel41: TppLabel;
    ppSystemVariable8: TppSystemVariable;
    ppHeaderBand3: TppHeaderBand;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLabel51: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText11: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText21: TppDBText;
    ppLabel52: TppLabel;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand3: TppSummaryBand;
    ppLabel53: TppLabel;
    ppDBCalc26: TppDBCalc;
    raCodeModule3: TraCodeModule;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppParameterList3: TppParameterList;
    cdsNotasPED_CAMINHO_XML: TStringField;
    ppLabel45: TppLabel;
    ppDBText17: TppDBText;
    cbSaida: TCheckBox;
    cbEntrada: TCheckBox;
    cdsNotasEMP_CODIGO: TStringField;
    frxdbNotasUF: TfrxDBDataset;
    frxNotasUF: TfrxReport;
    AgrupadoporEstado1: TMenuItem;
    cxNotafiscal: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxNotafiscalNF_STATUS_NFE: TcxGridDBColumn;
    cxNotafiscalNF_ENVIADO_NFE_EMAIL: TcxGridDBColumn;
    cxNotafiscalped_codigo: TcxGridDBColumn;
    cxNotafiscalNF_NUM_NFE: TcxGridDBColumn;
    cxNotafiscalNF_NOTANUMBER: TcxGridDBColumn;
    cxNotafiscalOPE_NATUREZA: TcxGridDBColumn;
    cxNotafiscalCLI_CODIGO: TcxGridDBColumn;
    cxNotafiscalCLI_RAZAO: TcxGridDBColumn;
    cxNotafiscalCLI_CIDADE: TcxGridDBColumn;
    cxNotafiscalCLI_UF: TcxGridDBColumn;
    cxNotafiscalNF_TOT_NOTA: TcxGridDBColumn;
    cxNotafiscalNF_EMISSAO: TcxGridDBColumn;
    cxNotafiscalNF_NUM_NFCE: TcxGridDBColumn;
    Selecionado: TcxGridDBColumn;
    cdsNotasNF_PESOBRU: TFMTBCDField;
    cdsNotasNF_PESOLIQ: TFMTBCDField;
    cxNotafiscalNF_PESOBRU: TcxGridDBColumn;
    cxNotafiscalNF_PESOLIQ: TcxGridDBColumn;
    ppTitleBand2: TppTitleBand;
    lempresa: TppLabel;
    lrelatorio: TppLabel;
    lfiltro: TppLabel;
    ppLabel10: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel12: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel11: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLine2: TppLine;
    ppLine1: TppLine;
    ppLabel37: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLabel35: TppLabel;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel13: TppLabel;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppLine5: TppLine;
    raCodeModule2: TraCodeModule;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    procedure FormCreate(Sender: TObject);
    procedure acaoImprimirDANFEClick(Sender: TObject);
    procedure cdsNotasAfterScroll(DataSet: TDataSet);
    procedure BitPesquisarClick(Sender: TObject);
    procedure edValorDiretoKeyPress(Sender: TObject; var Key: Char);
    procedure BtnLimparClick(Sender: TObject);
    procedure edValorDiretoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PesqClienteSelect(Sender: TObject);
    procedure pesqVendedorSelect(Sender: TObject);
    procedure EdClienteCodigoExit(Sender: TObject);
    procedure edVendedorCodigoExit(Sender: TObject);
    procedure EdClienteCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edVendedorCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure acaoPesquisarClick(Sender: TObject);
    procedure PesquisaOperSelect(Sender: TObject);
    procedure JvImage22Click(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnTodosClick(Sender: TObject);
    procedure btnAutorizadasClick(Sender: TObject);
    procedure btnTransmitidaClick(Sender: TObject);
    procedure btnRejeitadaClick(Sender: TObject);
    procedure btnNaoGeradoClick(Sender: TObject);
    procedure btnEmailClick(Sender: TObject);
    procedure lempresaPrint(Sender: TObject);
    procedure lfiltroPrint(Sender: TObject);
    procedure acaoEnviarEmailClick(Sender: TObject);
    procedure miPrincipalClick(Sender: TObject);
    procedure miRelAgrupadoCFOPClick(Sender: TObject);
    procedure acaoInutilizarClick(Sender: TObject);
    procedure acaoCancelarClick(Sender: TObject);
    procedure JvImage14Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnLimparCertificadosClick(Sender: TObject);
    procedure btnImprimirEventoClick(Sender: TObject);
    procedure dbHistoricoDblClick(Sender: TObject);
    procedure btnInfoCertificadoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure miselecionarTudoClick(Sender: TObject);
    procedure miDesmarcartudoClick(Sender: TObject);
    procedure SelecionarTudo( opcao : boolean);
    procedure btnOutrosClick(Sender: TObject);
    procedure btnValidarXMLClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TransmitirXMLClick(Sender: TObject);
    procedure chkNfceClick(Sender: TObject);
    procedure ppDBText12GetText(Sender: TObject; var Text: string);
    procedure ExportarXMLPDF1Click(Sender: TObject);
    procedure EXportarsomenteXML1Click(Sender: TObject);
    procedure ExportarsomentePDF1Click(Sender: TObject);
    procedure btnEmailEventoClick(Sender: TObject);
    procedure pcomprasGetText(Sender: TObject; var Text: string);
    procedure pvendaCFOPGetText(Sender: TObject; var Text: string);
    procedure poutroscfopGetText(Sender: TObject; var Text: string);
    procedure pdevolucaocfopGetText(Sender: TObject; var Text: string);
    procedure ItensXMLClick(Sender: TObject);
    procedure cbSaidaClick(Sender: TObject);
    procedure cbEntradaClick(Sender: TObject);
    procedure frxNotasUFGetValue(const VarName: string; var Value: Variant);
    procedure frxNotasUFBeginDoc(Sender: TObject);
    procedure AgrupadoporEstado1Click(Sender: TObject);
    procedure cxNotafiscalEditing(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cxNotafiscalNF_STATUS_NFECustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxNotafiscalNF_ENVIADO_NFE_EMAILCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxNotafiscalDblClick(Sender: TObject);
    procedure cdsNotasCalcFields(DataSet: TDataSet);
    procedure SelecionadoPropertiesChange(Sender: TObject);
    procedure RxDataInicialExit(Sender: TObject);
    procedure RxDataFinalExit(Sender: TObject);
    procedure PesqClienteButtonClick(Sender: TObject);
  private
   FPesqStatus : string;
   FPesqEmail : string;
   Fcfop_venda, Fcfop_compra, Fcfop_outros, Fcfop_devoucao : double;
   condicaoSQL :string;
   procedure SetPesqStatus (const aValue: string);
   procedure SetPesqEmail (const aValue : string);

   procedure BuscaHistorico;
   procedure PadroesPesquisa;
   function Filtro:string;
   procedure GravarSeqCCe (const nf_registro, seq : integer);
   function ImprimirEvento : boolean;

  public
    stexto, campo: string;
    pcompras: TppLabel;
    poutroscfop: TppLabel;
    pdevolucaocfop: TppLabel;
    { Public declarations }
    property PesqStatus :string  read FPesqStatus write SetPesqStatus;
    property PesqEmail :string read FPesqEmail Write SetPesqEmail;
    procedure configuacaoIniciais;
    function enviarEmailIndy(CONST sPara, sAssunto: String; sMensagem: TStrings ;
              EnviaPDF: Boolean; sCC: TStrings; Anexos: TStrings; sReplyTo: TStrings): boolean;
    procedure GravarHistorico (Const  mensagem :string;  nf_registro,NFM_REGISTRO : integer);
    procedure GravarEmailEnviado(const nf_registro: integer; const status : string);
    procedure GravaInutilizado (CONST nf_registro : integer;CONST  justificativa: string);
    procedure ValidarCancelamento;
    procedure GravarCancelamento(CONST NF_REGISTRO : Integer; CONST protocolo: string);
    procedure ValidarCorrecao;
    function  CarregarXML(NF_REGISTRO : Integer): boolean;
    function CarregarXML_Evento : boolean;
    procedure BuscaNotaFiscais;
    procedure ValidarRegras;
    procedure Exportar (const xml , pdf : boolean);
  end;

var
  frmNfe40: TfrmNfe40;

implementation

{$R *.dfm}

uses uFaturamentoNotaFiscal, NFEINUTILIZAR, ujustificativa, rwfunc;

procedure TfrmNfe40.btnNaoGeradoClick(Sender: TObject);
begin
  inherited;
  PesqStatus := 'N';
  BuscaNotaFiscais;
end;

procedure TfrmNfe40.btnOutrosClick(Sender: TObject);
begin
  inherited;
  PesqStatus := 'O';
  BuscaNotaFiscais;
end;

procedure TfrmNfe40.btnImprimirEventoClick(Sender: TObject);
begin
  inherited;
  ImprimirEvento;

end;

procedure TfrmNfe40.btnInfoCertificadoClick(Sender: TObject);
begin
  inherited;
  if ACBrNFe1.SSL.CertificadoLido  then
    MessageDlg('Certificadora: '+ACBrNFe1.SSL.CertCertificadora + sLineBreak  +
               ACBrNFe1.SSL.CertRazaoSocial + ',' +
               ACBrNFe1.SSL.CertIssuerName  + sLineBreak +
               'CNPJ : '+ MascraCNPJ_CNPF(ACBrNFe1.SSL.CertCNPJ) +  sLineBreak +
               'Série : '+  ACBrNFe1.SSL.CertNumeroSerie
     , mtInformation, [mbOK], 0);
end;

procedure TfrmNfe40.BitPesquisarClick(Sender: TObject);
begin
  inherited;
  BuscaNotaFiscais;
end;

procedure TfrmNfe40.btnAutorizadasClick(Sender: TObject);
begin
  inherited;
   PesqStatus := 'A';
   BuscaNotaFiscais;
end;

procedure TfrmNfe40.btnCancelarClick(Sender: TObject);
begin
  inherited;
  PesqStatus:= 'C';
  BuscaNotaFiscais;
end;

procedure TfrmNfe40.btnEmailClick(Sender: TObject);
begin
  inherited;
  if btnEmail.Caption = 'Enviado E-mail' then
  begin
   PesqEmail := 'S';
   BuscaNotaFiscais;
   btnEmail.Caption := 'Não enviado E-mail';
   btnEmail.Hint := 'Mostrar NF-e onde não foi enviado email ao cliente';
  end
  Else
  begin
   PesqEmail := 'N';
   BuscaNotaFiscais;
   btnEmail.Caption := 'Enviado E-mail';
   btnEmail.Hint := 'Mostrar NF-e onde já foi enviado email ao cliente';
  end;
end;

procedure TfrmNfe40.btnEmailEventoClick(Sender: TObject);
var assunto,email  : string;
 reply, mensagem, AnexosEmail: TStringList;
 NomeArq,msg: String;
 xml : String;
 registro: integer;
begin
  inherited;
  if not cdsHistorico.IsEmpty then
  begin

   if not cdsHistoricoNFM_REGISTRO.AsInteger in [135,155] then
     GeraException('Não é um evento');

   if cdsHistoricoNFH_XML.AsString <> ''  then
   begin
     if CarregarXML(cdsHistoricoNF_REGITRO.AsInteger ) then
         if CarregarXML_Evento then
         begin
           ACBrNFe1.DANFE := ACBrNFeDANFeRL1;
           ACBrNFeDANFeRL1.MostraPreview := true;
           ACBrNFeDANFeRL1.PathPDF := DBInicio.Versao.PATH +'NFe4\temp\';
           cdsNotas.Locate('selecionado',True, []);
           registro := cdsNotas.Recno; // o coponenete ACBR está alterando o Nº do registro....
           ACBrNFeDANFeRL1.ImprimirEVENTOPDF(ACBrNFe1.NotasFiscais[0].NFe)  ;
           cdsNotas.RecNo := registro;

           xml := DBInicio.Versao.PATH +'NFe4\temp\NF-' + IntToStr(ACBrNFe1.NotasFiscais[0].NFe.ide.nNF)  + '.xml';
           ACBrNFe1.NotasFiscais.GravarXML(xml);

           AnexosEmail := TStringList.Create;
           reply:=  TStringList.Create;
           mensagem := TStringList.Create;

           try
             AnexosEmail.Add(ACBrNFeDANFeRL1.ArquivoPDF);
             AnexosEmail.Add(xml);



            if ACBrNFe1.Configuracoes.WebServices.Ambiente = taHomologacao then
              email:= 'adjutor@novisistemas.com.br'
            else
              email := cdsNotas.FieldByName('CLI_EMAIL').AsString;

             if (sender <> nil) then
               if not(InputQuery('Enviar email para...', 'Email (mais de um, separar por ;)', email))
                  then exit;
             if ACBrNFe1.EventoNFe.Evento[0].InfEvento.tpEvento  = teCCe then
             begin
                if ACBrNFe1.Configuracoes.WebServices.Ambiente = taHomologacao then
                  assunto := 'AMBIENTE DE HOMOLOGAÇÃO, FAVOR DESCONSIDERAR - Carta de correção - CCe - '+ dbinicio.Empresa.RAZAO
                else
                  assunto := 'Carta de correção - CCe - '+ dbinicio.Empresa.RAZAO;
                msg := 'Email enviado a '+email+ ' com a Carta de Correção';
             end
             else if ACBrNFe1.EventoNFe.Evento[0].InfEvento.tpEvento  = teCancelamento then
             begin
               msg := 'Email enviado a '+email+ ' com a Nota de Cancelamento';
               if ACBrNFe1.Configuracoes.WebServices.Ambiente = taHomologacao then
                 assunto := 'AMBIENTE DE HOMOLOGAÇÃO, FAVOR DESCONSIDERAR - Cancelamento da NFe - ' + IntToStr(ACBrNFe1.NotasFiscais[0].NFe.ide.nNF) + ' - ' + dbinicio.Empresa.RAZAO
               else
                 assunto := 'Cancelamento da NFe - ' + IntToStr(ACBrNFe1.NotasFiscais[0].NFe.ide.nNF) + ' - ' + dbinicio.Empresa.RAZAO;
             end;
             reply.Clear;
             mensagem.Clear;
             reply.Add(DBInicio.Empresa.EMAIL);
             mensagem.Add('Nota Fiscal Eletrônica PDF ');
        //     mensagem.Add('Chave da Nfe: '+cdsNotasNF_ PROTOCOLO_NFE.AsString  );
             mensagem.Add('Protocolo de Autorização:  '+cdsNotas.FieldByName('NF_PROTOCOLO_NFE_CANC').AsString   );

             // if enviarEmailIndy(email, assunto, mensagem, true, nil,AnexosEmail, reply) then
             if enviaMail('NFE', Trim(dbInicio.Empresa.EmailUserName), email, assunto, reply[0], mensagem, AnexosEmail) then
             begin

               MessageDlg(msg, mtInformation, [mbOK], 0);
               GravarHistorico(msg,cdsNotas.FieldByName('NF_REGISTRO').AsInteger, 0) ;

             end
             else
             begin

              MessageDlg( 'Ocorreu algum erro ao enviar a '+ email, mtError, [mbOK], 0);
              GravarHistorico(msg,cdsNotas.FieldByName('NF_REGISTRO').AsInteger, 0) ;

             end;
             BuscaHistorico;
           finally
            reply.Free;
            mensagem.Free;
             FreeAndNil(AnexosEmail);
           end;


           ACBrNFe1.DANFE := ACBrNFeDANFEFR1;
         end;
   end;

  end
end;

procedure TfrmNfe40.BtnLimparClick(Sender: TObject);
begin
  inherited;
  PadroesPesquisa;
  BuscaNotaFiscais;
end;

procedure TfrmNfe40.btnRejeitadaClick(Sender: TObject);
begin
  inherited;
  PesqStatus := 'R';
  BuscaNotaFiscais;
end;

procedure TfrmNfe40.btnTodosClick(Sender: TObject);
begin
  inherited;
  PesqStatus := '';
  PesqEmail := '';
  BuscaNotaFiscais;
end;

procedure TfrmNfe40.btnTransmitidaClick(Sender: TObject);
begin
  inherited;
  PesqStatus := 'T';
  BuscaNotaFiscais;
end;

procedure TfrmNfe40.btnValidarXMLClick(Sender: TObject);
begin
  inherited;
  JvOpenDialog1.Title := 'Selecione a XML';
  JvOpenDialog1.DefaultExt := '*-nfe.XML';
  JvOpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  JvOpenDialog1.InitialDir:= DBInicio.Versao.PATH + '\nfe4\'+ FormatDateTime('yyyymm',date) + '\Rejeitados\' ;
  if JvOpenDialog1.Execute then
  begin
     ACBrNFe1.Configuracoes.Geral.ExibirErroSchema := False;
     ACBrNFe1.Configuracoes.Geral.FormatoAlerta := 'Campo:%DESCRICAO% - %MSG%';
     ACBrNFe1.NotasFiscais.Clear;
     ACBrNFe1.NotasFiscais.LoadFromFile(JvOpenDialog1.FileName);
     try
        ACBrNFe1.NotasFiscais.Validar;
        if ACBrNFe1.NotasFiscais.Items[0].Alertas <> '' then
          ShowMessage('Alertas: '+ACBrNFe1.NotasFiscais.Items[0].Alertas);
        ValidarRegras;

     except
        on E: Exception do
        begin
          ShowMessage ('Exception: '+E.Message + LineBreak +
          'Erro: '+ACBrNFe1.NotasFiscais.Items[0].ErroValidacao+ LineBreak +
          'Erro Completo: '+ACBrNFe1.NotasFiscais.Items[0].ErroValidacaoCompleto);
        end;


     end;
    ACBrNFe1.Configuracoes.Geral.FormatoAlerta    := 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'; // '[TN]%TAGNIVEL%[/TN] [TG]%TAG%[/TG] [DSC]%DESCRICAO%[/DSC] [MSG]%MSG%.[/MSG]';
  end;
end;

procedure TfrmNfe40.BuscaHistorico;
begin
 cdsHistorico.Close;
 qhistorico.CommandText := 'SELECT (nfh_data+nfh_hora) AS NFH_DATA,  u.USU_NOME, NFM_REGISTRO,  nfh_descricao, NFH_XML, NF_REGITRO  '+
                           ' FROM NF0001_HISTORICO hi JOIN usuario u ON (u.USU_CODIGO = hi.USU_CODIGO) '+
                           ' WHERE NF_REGITRO = ' + IntToStr(CdsNotas.FieldByName('NF_REGISTRO').AsInteger)+
                           ' order by 1 desc';



 cdsHistorico.Open;
end;

procedure TfrmNfe40.BuscaNotaFiscais;

 function ColocarAND (const condicao: string): string;
 begin
    if condicaoSQL = '' then
       result :=  condicao
    else
       result := ' and ' + condicao;
 end;
begin

  if RxDataInicial.Date > RxDataFinal.Date  then
  begin
    MessageDlg('A Data Final não pode ser menor que a Data Inicial...', mtWarning, [mbOK], 0);
    Exit;
  end;

  cdsNotas.Close;
  condicaoSQL:= ' NF.EMP_CODIGO = '+ QuotedStr(DBInicio.Empresa.EMP_CODIGO);
  if (edValorDireto.Text <> '') and (cbcampo.ItemIndex > -1) then
  begin
   case cbCampo.ItemIndex of
    0: condicaoSQL := ' nf.ped_codigo = '+ QuotedStr(strzero(edValorDireto.Text,6)); //Pedido
    1: condicaoSQL := ' nf.NF_NUM_NFE = '+  QuotedStr(edValorDireto.Text); //NF-e
    2: condicaoSQL := ' nf.NF_NOTANUMBER =  '+ QuotedStr(edValorDireto.Text)  ;//Fatura
    3: condicaosql := ' nf.nf_chave_nfe = ' + QuotedStr(RetiraTodaMascara(edValorDireto.Text) );
    4: condicaosql := ' nf.NF_PROTOCOLO_AUTORIZACAO = '+  QuotedStr(edValorDireto.Text); //protocolo autorização
//    5: condicaosql := ' nf.NF_PROTOCOLO_NFE_CANC = ' +   QuotedStr(edValorDireto.Text); //protocolo de cancelamento
//    6: condicaosql := '
   end;

  end
  else
  begin
    if not chkNfe.Checked and  chkNfce.Checked then
      condicaoSQL := condicaoSQL +  ColocarAND('NF_NUM_NFCE  <> 0 ')
    else if chkNfe.Checked and not chkNfce.Checked then
     condicaoSQL := condicaoSQL +  ColocarAND('NF_NUM_NFCE IS NULL ')
    else if not chkNfe.Checked and not  chkNfce.Checked then
      raise Exception.Create('Marca pelo menos NFe ou NFCe');

    if cbSaida.Checked and cbEntrada.Checked then
    begin
      // faz nada, deve retornar ambas, seria um operador OR, mas não faz sentido tratar, só vai sobrecarregar a consulta
    end
    else
    begin
      if cbSaida.Checked then
        condicaoSQL := condicaoSQL +  ColocarAND('NF_ENTR_SAID  = ''S'' ');
      if cbEntrada.Checked then
        condicaoSQL := condicaoSQL +  ColocarAND('NF_ENTR_SAID  <> ''S'' ');
    end;



    if (RxDataInicial.Date > 0) and (RxDataFinal.Date > 0)  then
       condicaoSQL := condicaoSQL +  ColocarAND('NF_EMISSAO' + ' between ' + DateToSQL(RxDataInicial.Date)+' and '+ DateToSQL(RxDataFinal.Date))
    else if  (RxDataInicial.Date > 0)  then
         condicaoSQL := condicaoSQL +  ColocarAND('NF_EMISSAO' + ' >= ' + DateToSQL(RxDataInicial.Date))
    else if RxDataFinal.Date > 0 then
        condicaoSQL := condicaoSQL +  ColocarAND('NF_EMISSAO' + ' <= ' + DateToSQL(RxDataFinal.Date));
    if PesqCliente.idRetorno <> '' then
      condicaoSQL := condicaoSQL +   ColocarAND('NF.CLI_CODIGO = '+ QuotedStr(PesqCliente.idRetorno));
    if pesqVendedor.idRetorno <> '' then
      condicaoSQL := condicaoSQL + ColocarAND('NF.REP_CODIGO = '+ QuotedStr(pesqVendedor.idRetorno));
    if PesquisaOper.idRetorno <> '' then
      condicaoSQL := condicaosql + ColocarAND('nf.OPE_NATUREZA = '+QuotedStr(PesquisaOper.idRetorno) );
    if PesqStatus = 'N' then
      condicaosql := condicaoSQL + ColocarAND(' NF_STATUS_NFE IN (''N'',''G'')')
    else if PesqStatus <> '' then
      condicaosql := condicaoSQL + ColocarAND('nf_status_nfe = '+ QuotedStr(PesqStatus));
    if PesqEmail = 'S' then
      condicaoSQL := condicaoSQL + ColocarAND('nf_enviado_nfe_email = '+ QuotedStr('S'))
    Else if PesqEmail = 'N' then
      condicaoSQL := condicaoSQL + ColocarAND('nf_enviado_nfe_email IS NULL ');


  end;
  condicaoSQL:= condicaosql + ColocarAND('nf.EMP_CODIGO = '+ QuotedStr(DBInicio.Empresa.EMP_CODIGO));
  qNotas.CommandText := 'SELECT DISTINCT nf.EMP_CODIGO, nf_status_nfe,nf_enviado_nfe_email, NF.ped_codigo,NF_NUM_NFE, NF.NF_REGISTRO, NF_NOTANUMBER, NF_EMISSAO, NF.OPE_NATUREZA,cl.CLI_CODIGO, cl.CLI_RAZAO, '+
                        'cl.CLI_CIDADE, cl.CLI_UF, nf.NF_TOT_NOTA, nf.nf_vl_icms, nf.nf_vl_subtrib,nf.nf_vl_ipi, nf.nf_tot_prod, nf_chave_nfe, NF_PROTOCOLO_AUTORIZACAO, '+
                        ' NF_PROTOCOLO_NFE_CANC, NF_PROTOCOLO_NFE, NF_SEQ_CCE, nf.NF_VL_DESCTO, nf.ope_codigo, CLI_EMAIL, NF_NUM_NFCE, NF_PESOBRU, NF_PESOLIQ, ' +
                        ' pd.PED_CAMINHO_XML ' +
                        ' FROM NF0001 nf ' +
                        ' JOIN CLI0000 cl on (nf.CLI_CODIGO = cl.CLI_CODIGO) '+
                        ' JOIN PED0000 pd on (pd.PED_CODIGO = NF.PED_CODIGO) '+
                        iif( condicaosql <> '', 'WHERE ' + condicaoSQL,'') +
                        ' ORDER BY NF_EMISSAO DESC '                                        ;
  cdsNotas.Open;
  if DBInicio.IsDesenvolvimento then
    CopyToClipboard(qNotas.CommandText);
  if cdsNotas.IsEmpty then
    cdsHistorico.Close;

end;



function TfrmNfe40.CarregarXML(NF_REGISTRO : Integer): boolean;
var
 xml :TStringStream;
xmlstream : TStream;
 nf : TfrmProcessaNFe;
 nomeArq: string;
begin
  ACBrNFe1.NotasFiscais.Clear;
  OpenAux('select first 1 NFX_XML from NF0001_XML'+
          ' where  NF_REGISTRO = '+ IntToStr(NF_REGISTRO) +
          ' ORDER BY NFX_REGISTRO DESC ');
   if qAux.FieldByName('NFX_XML').AsString <> '' then
   begin
     xml :=  TStringStream.Create;
     xmlstream := qAux.CreateBlobStream(qAux.FieldByName('NFX_XML'),bmRead);
     try
       xml.CopyFrom(xmlstream,xmlstream.Size) ;
       result := ACBrNFe1.NotasFiscais.LoadFromStream(xml,TRUE) ;

     finally
       FreeAndNil(xml);
       FreeAndNil(xmlstream);
     end;
   end
   Else
   begin
    if not assigned(frmProcessaNFe)  then
      nf := TfrmProcessaNFe.Create(self);
     try
      NF.BuscaNota(CdsNotas.FieldByName('NF_NOTANUMBER').AsString);
      NF.ACBrNFe1.NotasFiscais.Clear;
      nf.GerarNFE(true);

      nomeArq := CdsNotas.FieldByName('NF_NOTANUMBER').AsString;
      nomeArq := DBInicio.Versao.PATH +'NFe4' + '\'+ FormatDateTime('yyyymm',date) + '\Gerados\' + NomeArq;
      NF.ACBrNFe1.NotasFiscais.GravarXML(NomeArq +'-nfe.xml');
      ACBrNFe1.NotasFiscais.LoadFromFile(NomeArq +'-nfe.xml');

     finally
       nf.Free;
       result:=True;
     end;
   end;


end;

function TfrmNfe40.CarregarXML_Evento: boolean;
begin
  ACBrNFe1.EventoNFe.Evento.Clear;
  if cdsHistorico.FieldByName('NFH_XML').AsString <> '' then
  begin
   result := ACBrNFe1.EventoNFe.LerXMLFromString(cdsHistorico.FieldByName('NFH_XML').AsString) ;

  end
  else
   result := False;
end;

procedure TfrmNfe40.PesquisaOperSelect(Sender: TObject);
begin
  inherited;
  if PesquisaOper.idRetorno <> '' then
     BuscaNotaFiscais;

end;

procedure TfrmNfe40.cbEntradaClick(Sender: TObject);
begin
  inherited;
  BuscaNotaFiscais;
end;

procedure TfrmNfe40.cbSaidaClick(Sender: TObject);
begin
  inherited;
  BuscaNotaFiscais;
end;

procedure TfrmNfe40.cdsNotasAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if not cdsnotas.ControlsDisabled then
  begin
    if not cdsNotas.IsEmpty then
      BuscaHistorico
    else
      cdsHistorico.Close;
  end;
end;

procedure TfrmNfe40.cdsNotasCalcFields(DataSet: TDataSet);
begin
  inherited;
  if cdsNotasselecionado.AsBoolean <> True then
    cdsNotasselecionado.AsBoolean := False;
end;

procedure TfrmNfe40.chkNfceClick(Sender: TObject);
begin
  inherited;
  BuscaNotaFiscais;
end;

procedure TfrmNfe40.configuacaoIniciais;
var path :string;
  fQtde : Integer;
begin
  path := DBInicio.Versao.PATH;
  path := path+'NFe4';

//  If not FileExists(DBInicio.Versao.PATH+'NFe4'+'\temp\'+ 'logo.jpg') then
//  begin
//    If DBInicio.Nfe.Usar_Logo then
//      DBInicio.Nfe.Logo.SaveToFile(DBInicio.Versao.PATH+'NFe4'+'\temp\'+ 'logo.jpg')
//    else
      DBInicio.Empresa.LOGO.SaveToFile(DBInicio.Versao.PATH+'NFe4'+'\temp\'+ 'logo' + DBInicio.EMP_CODIGO + '.jpg');
//  end;
  ACBrNFe1.DANFE.ExpandeLogoMarca := DBInicio.Nfe.Usar_Logo;
 OpenAux3(SQLDEF('PARAMETROS','SELECT P1.PMT_QTDE_DECIMAIS, PMT_QTDE_DEC_PED, PMT_QTDE_DEC_OCP  FROM PRMT0001 P1 ',
                                            'WHERE P1.EMP_CODIGO = '+ QuotedStr(dbinicio.Empresa.EMP_CODIGO) ,'P1.EMP_CODIGO','P1.'));

  fQtde :=  qAux3.FieldByName('PMT_QTDE_DECIMAIS').AsInteger;
  if fQtde = 0  then
    fQtde := 2;
  ACBrNFeDANFEFR1.CasasDecimais.qCom :=  fQtde;
  ACBrNFeDANFEFR1.CasasDecimais.vUnCom := fQtde;
  ACBrNFe1.DANFE := ACBrNFeDANFEFR1;
  ACBrNFeDANFEFR1.FastFile :=  DBInicio.Versao.PATH+'NFe4'+'\relatorio\DANFE.fr3';
  ACBrNFeDANFCEFR1.FastFile :=  DBInicio.Versao.PATH+'NFe4'+'\relatorio\DANFeNFCe.fr3';
  ACBrNFeDANFCEFR1.logo := path+ '\temp'+'\'+'logo' + DBInicio.EMP_CODIGO + '.jpg';
  //ACBrNFeDANFCeFortes1.logo := path+ '\temp'+'\'+'logo.jpg';
  with ACBrNFe1.DANFE do
   begin
     PathPDF    := path ;
     if DBInicio.Nfe.TipoDanfe = tpRetrato then
        TipoDANFE  := tiRetrato
     else
        TipoDANFE := tiPaisagem;
     Logo       := path+ '\temp'+'\'+'logo' + DBInicio.EMP_CODIGO + '.jpg';

     Email := DBInicio.Empresa.EMAIL;
   end;
  with ACBrNFe1.Configuracoes.Arquivos do
   begin
     Salvar             := True;
     SepararPorMes      := True;
     AdicionarLiteral   := True;
     EmissaoPathNFe     := True;
     SalvarEvento       := True;
     SepararPorCNPJ     := False;
     SepararPorModelo   := False;
     PathSalvar         := path+'\temp' ;
     PathSchemas        := path+'\schemas' ;
     PathNFe            := path;
     PathInu            := path+'\Inutilizadas' ;
     PathEvento         := path;
   end;

  with ACBrNFe1.Configuracoes.Geral do
   begin
     if DBInicio.Nfe.Emp_TipoCertificado = 1 then //a1
     begin
       SSLLib                := libCapicomDelphiSoap;
       SSLCryptLib           := cryCapicom;
       SSLHttpLib            := httpIndy;
       SSLXmlSignLib         := xsMsXmlCapicom;
     end
     else if (DBInicio.Nfe.Emp_TipoCertificado = 3) or (DBInicio.Nfe.Emp_TipoCertificado = 9) then
     begin
       SSLLib := libWinCrypt;
       SSLCryptLib := cryWinCrypt;
       SSLHttpLib := httpWinHttp;
       SSLXmlSignLib := xsLibXml2;


     end;
     ACBrNFe1.Configuracoes.WebServices.SSLType :=  LT_TLSv1_2;
     AtualizarXMLCancelado := true;
     ExibirErroSchema := true;
     RetirarAcentos   := true;
     FormatoAlerta    := 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'; // '[TN]%TAGNIVEL%[/TN] [TG]%TAG%[/TG] [DSC]%DESCRICAO%[/DSC] [MSG]%MSG%.[/MSG]';
     If DBInicio.Nfe.Contingencia = 'S' then
        FormaEmissao := teContingencia
     else
       FormaEmissao     := teNormal;
     ModeloDF         := moNFe;   //notafiscal eletronica
     VersaoDF         := ve400;
     IdCSC            := '';
     CSC              := '';
     Salvar           := true
   end;

  with ACBrNFe1.Configuracoes.WebServices do
   begin
     UF         := DBInicio.Empresa.UF;
     if dbinicio.Nfe.AmbienteWebService = tpProducao then
       ACBrNFe1.Configuracoes.WebServices.Ambiente := taProducao
     else
       ACBrNFe1.Configuracoes.WebServices.Ambiente := taHomologacao;
     Visualizar := False;
     Salvar     := False;
     AjustaAguardaConsultaRet := True;
     AguardarConsultaRet:= 0;
     Tentativas          := 7 ;
     IntervaloTentativas  := 1000;
     TimeOut := 5000;
     //proxy
     ProxyHost := '';
     ProxyPort := '';
     ProxyUser := '';
     ProxyPass := '';
   end;



end;

procedure TfrmNfe40.cxNotafiscalDblClick(Sender: TObject);
begin
  inherited;
  if not cdsNotas.IsEmpty then
  begin
    FrmFaturamentoNovoNotaFiscal := TFrmFaturamentoNovoNotaFiscal.Create(Application);
    FrmFaturamentoNovoNotaFiscal.Registro := cdsNotas.FieldByName('NF_registro').AsInteger;
    try
      FrmFaturamentoNovoNotaFiscal.ShowModal;
    finally
      FrmFaturamentoNovoNotaFiscal.Destroy;
      FrmFaturamentoNovoNotaFiscal := nil; //  nil é - From Assigned = False
    end;
  end;
end;

procedure TfrmNfe40.cxNotafiscalEditing(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; var AAllow: Boolean);
begin
  inherited;
  if AItem.Index = Selecionado.Index then
  begin
    AAllow := True;
  end;

end;


procedure TfrmNfe40.cxNotafiscalNF_ENVIADO_NFE_EMAILCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if  (AViewInfo.GridRecord.Values[cxNotafiscalNF_ENVIADO_NFE_EMAIL.Index]  = 'S')  then
    Imagens.Draw(ACanvas.Canvas,AViewInfo.ClientBounds.Left,AViewInfo.ClientBounds.Top + 1, 6);

  ADone := True;
end;

procedure TfrmNfe40.cxNotafiscalNF_STATUS_NFECustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if  (AViewInfo.GridRecord.Values[cxNotafiscalNF_STATUS_NFE.Index]  = 'N') or (AViewInfo.GridRecord.Values[cxNotafiscalNF_STATUS_NFE.Index]  = 'G')  then
    Imagens.Draw(ACanvas.Canvas,AViewInfo.ClientBounds.Left,AViewInfo.ClientBounds.Top + 1, 0);

  if  (AViewInfo.GridRecord.Values[cxNotafiscalNF_STATUS_NFE.Index]  = 'R')  then
    Imagens.Draw(ACanvas.Canvas,AViewInfo.ClientBounds.Left,AViewInfo.ClientBounds.Top + 1, 1);

  if  (AViewInfo.GridRecord.Values[cxNotafiscalNF_STATUS_NFE.Index]  = 'T')  then
    Imagens.Draw(ACanvas.Canvas,AViewInfo.ClientBounds.Left,AViewInfo.ClientBounds.Top + 1, 2);

  if  (AViewInfo.GridRecord.Values[cxNotafiscalNF_STATUS_NFE.Index]  = 'A')  then
    Imagens.Draw(ACanvas.Canvas,AViewInfo.ClientBounds.Left,AViewInfo.ClientBounds.Top + 1, 3);

  if  (AViewInfo.GridRecord.Values[cxNotafiscalNF_STATUS_NFE.Index]  = 'C')  then
    Imagens.Draw(ACanvas.Canvas,AViewInfo.ClientBounds.Left,AViewInfo.ClientBounds.Top + 1, 4);

  if  (AViewInfo.GridRecord.Values[cxNotafiscalNF_STATUS_NFE.Index]  = 'O')  then
    Imagens.Draw(ACanvas.Canvas,AViewInfo.ClientBounds.Left,AViewInfo.ClientBounds.Top + 1, 5);

  ADone := True;
end;

procedure TfrmNfe40.dbHistoricoDblClick(Sender: TObject);
begin
  inherited;
  ImprimirEvento;
end;

procedure TfrmNfe40.EdClienteCodigoExit(Sender: TObject);
begin
  inherited;
  edClienteCodigo.Text:=StrZero(EdClienteCodigo.Text,5);
  if edClienteCodigo.Text<>'00000' then
  begin
      PesqCliente.idRetorno:=edClienteCodigo.Text;
      if PesqCliente.idRetorno='' then
         GeraException('Cliente não localizado com o código informado');
  end
  Else
  begin
      edClienteCodigo.clear;
      PesqCliente.Clear;
  end;

end;

procedure TfrmNfe40.EdClienteCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
      PesqCliente.Button.Click;
end;

procedure TfrmNfe40.edValorDiretoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then
  begin
   if edValorDireto.Text <> '' then
    BuscaNotaFiscais;

  end;
end;

procedure TfrmNfe40.edValorDiretoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = Chr(VK_RETURN) then
  begin
   if edValorDireto.Text <> '' then
    BuscaNotaFiscais;

  end;

end;

procedure TfrmNfe40.edVendedorCodigoExit(Sender: TObject);
begin
  inherited;
  edVendedorCodigo.Text:=StrZero(edVendedorCodigo.Text,3);
  if edVendedorCodigo.Text<>'000' then
  begin
      pesqVendedor.idRetorno:=edVendedorCodigo.Text;
      if pesqVendedor.idRetorno='' then
         GeraException('Vendedor não localizado com o código informado');
  end
  Else
  begin
      edVendedorCodigo.clear;
      pesqVendedor.Clear;
  end;
end;

procedure TfrmNfe40.edVendedorCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
   if Key = VK_F4 then
      pesqVendedor.Button.Click;
end;

function TfrmNfe40.enviarEmailIndy(CONST sPara, sAssunto: String; sMensagem: TStrings; EnviaPDF: Boolean; sCC, Anexos, sReplyTo: TStrings): boolean;
var
  Send: boolean;
  i:Integer;
  Email:String;
  msg: TIdMessage;

begin
  send:= false;
  if (dbInicio.Empresa.EmailHost <> '') then
  begin

    with SMTP do
    begin

        Disconnect;

        if (dbInicio.Empresa.EmailAutenticacao) then
           AuthType := satDefault
        else
           AuthType := satNone;

        Host := dbInicio.Empresa.EmailHost;
        IOHandler := SSLSocket;
        Password := Trim(dbInicio.Empresa.EmailPassworld);
        Port := StrToIntDef(dbInicio.Empresa.EmailPorta,0);
        Username := Trim(dbInicio.Empresa.EmailUserName);

        if (dbInicio.Empresa.EmailRequerConexaoTLS) then
           UseTLS := utUseRequireTLS
        else
           UseTLS := utNoTLSSupport;

    end;

    if dbInicio.Empresa.EmailRequerConexaoSSL then
    begin

      case dbInicio.Empresa.EmailVersaoSSL of
      1: SSLSocket.SSLOptions.Method := sslvTLSv1;
      2: SSLSocket.SSLOptions.Method := sslvSSLv2;
      3: SSLSocket.SSLOptions.Method := sslvSSLv3;
      end;

      if (dbInicio.Empresa.EmailModoSSL = 'B') then
         SSLSocket.SSLOptions.Mode := sslmBoth
      else
      if (dbInicio.Empresa.EmailModoSSL = 'C') then
         SSLSocket.SSLOptions.Mode := sslmClient
      else
      if (dbInicio.Empresa.EmailModoSSL = 'S') then
         SSLSocket.SSLOptions.Mode := sslmServer
      else
      if (dbInicio.Empresa.EmailModoSSL = 'U') then
         SSLSocket.SSLOptions.Mode := sslmUnassigned;

   end;
   msg:= tIdMessage.Create(self);
   try
     with MSG do
     begin
          Clear;
          Email := Trim(DBInicio.Empresa.EmailUserName);
          Recipients.EMailAddresses := sPara;
          From.Address := Trim(dbInicio.Empresa.EmailUserName);
          From.Text := email;
          From.Name := dbInicio.Empresa.RAZAO;
          Subject := sAssunto;
          Body :=  sMensagem;
          ReplyTo.Add;
          ReplyTo.Items[0].Address :=  Trim(sReplyTo[0]);
     end;


      // anexos
      if Assigned(Anexos) then
         for i := 0 to Anexos.Count - 1 do
         begin
              if FileExists(Anexos[i]) then
              begin
                   try
                       TIdAttachmentFile.Create(msg.MessageParts , Anexos[i]);
                    except
                   end;
              end;
         end;


     try
        SMTP.Connect();
        SMTP.Send(MSG);
        SMTP.Disconnect;
        Send := True;
     except
           Send := False;
     end;
      SMTP.Disconnect;

   finally
     msg.free;
   end;
   end;
     Result := Send;


end;

procedure TfrmNfe40.Exportar(const xml, pdf: boolean);
var
  NomeArq : string;
  clone : TClientDataSet;
  i, gravado: integer;
  InitialDir, status, statusMsg : string;
  OpenDialog: TFileOpenDialog;

begin
  inherited;
  gravado := 0;
  InitialDir:= DBInicio.Versao.PATH +'NFe4' ;//+ '\'+ FormatDateTime('yyyymm',date);
  FileOpenDialog1.Options := FileOpenDialog1.Options + [fdoPickFolders];
  FileOpenDialog1.DefaultFolder := InitialDir;
  FileOpenDialog1.Title := 'Selecione o Diretório';

  clone := TClientDataSet.Create(self);

  try
   clone.CloneCursor(cdsnotas,false);
   clone.Filtered := False;
   clone.Filter:= '(selecionado = true)';
   clone.Filtered := True;
   if clone.IsEmpty then // pega somente o que está selecionado pelo cursor
     GeraException('Selecione as NFe/NFCe para exportar')
   else
   begin
      clone.First;
      if   FileOpenDialog1.Execute then
      begin

       try
         ACBrNFe1.DANFE.PathPDF := FileOpenDialog1.filename;
//         PanelAguarde.Top := (Self.Height div 2) - (PanelAguarde.Height div 2);
//         PanelAguarde.Left := (Self.Width div 2) - (PanelAguarde.Width div 2);
         PanelAguarde.Visible := True;
         Self.Update;
         PanelAguarde.Update;
         if xml and pdf then
          PInfo.Caption := 'Exportando XML E PDF de ' + IntToStr(clone.RecordCount) + 'notas.'
         else if xml then
          PInfo.Caption := 'Exportando XML de ' + IntToStr(clone.RecordCount) + 'notas.'
         else if pdf then
          PInfo.Caption := 'Exportando PDF de ' + IntToStr(clone.RecordCount) + 'notas.';

         i:=1;
         while not clone.Eof do
         begin
          status := BuscaUmDadoSqlAsString('SELECT NF_STATUS_NFE FROM NF0001 WHERE PED_CODIGO = ' + QuotedStr(clone.FieldByName('ped_codigo').AsString));
          if MatchStr(status, ['N', 'R', 'T', 'O' ]) then
          begin
            if status = 'N' then
              statusMsg := 'não foi Gerada';
            if status = 'R' then
              statusMsg := 'foi Rejeitada';
            if status = 'T' then
              statusMsg := 'já foi Transmitida';
            if status = 'O' then
              statusMsg := 'está com status Outros';
            MessageDlg('Nota fiscal do Pedido: ' + clone.FieldByName('ped_codigo').AsString + ', '+ statusMsg + '. Portanto não pode gerar arquivo XML ou PDF', mtWarning, [mbOK], 0);
            clone.Next;
            inc(i);
            Continue;
          end;

          gravado := gravado + 1;
          if CarregarXML(clone.FieldByName('NF_REGISTRO').AsInteger) then
          begin
            Application.ProcessMessages;
            PInfo.Caption := 'Exportando '+ IntToStr(i)+' de ' + IntToStr(clone.RecordCount) ;
            if pdf then
            begin
               if clone.FieldByName('NF_NUM_NFCE').AsInteger <> 0  then
               begin
          //          ACBrNFe1.DANFE := ACBrNFeDANFEFR1  ;
                   // ACBrNFeDANFCEFR1.PathPDF :=  JvSelectDirectory1.Directory;
                   ACBrNFe1.DANFE := ACBrNFeDANFCeFortes1 ;
                    ACBrNFE1.NotasFiscais.ImprimirPDF;
                  //ACBrNFe1.DANFE := ACBrNFeDANFCeFortesA41;
               end
               Else
               begin
                   ACBrNFe1.DANFE := ACBrNFeDANFEFR1;
                   ACBrNFE1.NotasFiscais.ImprimirPDF;
               end;

            end;
            if xml then
            begin
              nomeArq := Copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 44);
              nomeArq :=  PathWithDelim(FileOpenDialog1.filename) + NomeArq; //
              if clone.FieldByName('NF_NUM_NFCE').AsInteger <> 0  then
                ACBrNFe1.NotasFiscais.GravarXML(NomeArq +'-nfce.xml')
              else
                ACBrNFe1.NotasFiscais.GravarXML(NomeArq +'-nfe.xml')
            end;



          end;
          clone.Next;
          inc(i);
         end;
         if gravado > 0 then
           MessageDlg('Gravado no diretório '+ ACBrNFe1.DANFE.PathPDF , mtInformation, [mbOK], 0);
         ACBrNFe1.DANFE.PathPDF:=  DBInicio.Versao.PATH +'NFe4';
       finally
        Application.ProcessMessages;
       end;
      end;
   end;
  finally
     PanelAguarde.Visible := False;

  end;
end;

procedure TfrmNfe40.ExportarsomentePDF1Click(Sender: TObject);
begin
  inherited;
  Exportar(false,true);
end;

procedure TfrmNfe40.EXportarsomenteXML1Click(Sender: TObject);
begin
  inherited;
  Exportar(true,false);
end;

procedure TfrmNfe40.ExportarXMLPDF1Click(Sender: TObject);
begin
  inherited;
  Exportar(true,true);
end;

function TfrmNfe40.Filtro: string;
var filtros : string;
   function ColocarVirgula (const condicao: string): string;
   begin
      if filtros = '' then
         result :=  condicao
      else
         result := ' , ' + condicao;
   end;
begin
 if (edValorDireto.Text <> '') and (cbcampo.ItemIndex > -1) then
  begin
   case cbCampo.ItemIndex of
    0: result := 'Pedido : '+ edValorDireto.Text; //Pedido
    1: result := 'NFe : '+  edValorDireto.Text; //NF-e
    2: result := 'Fatura:  '+ edValorDireto.Text  ;//Fatura
    3: result := 'Chave: ' +  edValorDireto.Text;
   end;

  end
  else
  begin
    if chkNfe.Checked and chkNfce.Checked then
      filtros := filtros + ColocarVirgula('Notas incluidas : NFe e NFCe')
    else if chkNfe.Checked then
       filtros := filtros + ColocarVirgula('Somente NFe')
     else if chkNfce.Checked then
       filtros := filtros + ColocarVirgula('Somente NFCe');
    if (RxDataInicial.Date > 0) and (RxDataFinal.Date > 0)  then
       filtros := filtros +  ColocarVirgula('Emissão de ' + DateTimeToStr (RxDataInicial.Date)+' a '+ DateTimeToStr(RxDataFinal.Date))
    else if  (RxDataInicial.Date > 0)  then
       filtros := filtros +    ColocarVirgula('Período de emissão antes de ' +  DateTimeToStr(RxDataInicial.Date))
    else if RxDataFinal.Date > 0 then
        filtros := filtros +  ColocarVirgula('Período de emissão a partir de ' +  DateTimeToStr(RxDataFinal.Date));
    if PesqCliente.idRetorno <> '' then
      filtros := filtros + ColocarVirgula('Cliente : '+ PesqCliente.idRetorno+'-'+ PesqCliente.CDS.FieldByName('CLI_RAZAO').AsString  );
    if pesqVendedor.idRetorno <> '' then
     filtros := filtros +  ColocarVirgula ('Vendedor : '+ pesqVendedor.idRetorno+ pesqVendedor.CDS.FieldByName('rep_nome').AsString );
    if PesquisaOper.idRetorno <> '' then
      filtros := filtros +  ColocarVirgula('CFOP : '+PesquisaOper.idRetorno );

    if PesqStatus = 'N'   then
      filtros := filtros +   ColocarVirgula(' Todos NFe não geradas')
    else if PesqStatus = 'C' then
      filtros := filtros +  ColocarVirgula(' Todos NFe canceladas')
    else if PesqStatus = 'R' then
      filtros := filtros +  ColocarVirgula(' Todos notas rejeitadas')
    else if PesqStatus = 'T' then
      filtros := filtros +  ColocarVirgula(' Todos notas transmitidas')
    else if PesqStatus = 'A' then
      filtros := filtros +  ColocarVirgula(' Todos notas autorizadas') ;

    if PesqEmail = 'S' then
     filtros := filtros +  ColocarVirgula(' notas já enviadas por email')
    Else if PesqEmail = 'N' then
     filtros := filtros + ColocarVirgula(' somente notas não enviadas por email ');
    result := filtros;
  end;
end;

procedure TfrmNfe40.FormActivate(Sender: TObject);
begin
  inherited;
//  if assigned(FormFaturamento) then
    BuscaNotaFiscais;
end;

procedure TfrmNfe40.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfrmNfe40.FormCreate(Sender: TObject);
var
  menuItem : TMenuItem;
begin
  inherited;
  ACBrNFeDANFEFR1.CasasDecimais.vUnCom :=  dbInicio.Empresa.fPMT_QTDE_DEC_PED;
  BtnImprimir.Enabled :=   Uteis.AcessoUsuario('ComercialFaturamento',DBInicio.Usuario.CODIGO,frmNfe40).Relatorio;
  btnValidarXML.Visible :=  MatchStr(DBInicio.Usuario.USERNAME,[DBInicio.Usuario.USUARIOPADRAO,'NOVI']);
  TransmitirXML.Visible :=  MatchStr(DBInicio.Usuario.USERNAME,[DBInicio.Usuario.USUARIOPADRAO,'NOVI']);
  self.Constraints.MaxHeight:=0;
  self.Constraints.MaxWidth:=0;
  PadroesPesquisa;
  BuscaNotaFiscais;
  if BuscaUmDadoSqlAsString('SELECT PMT_IMPORTA_ITENS_XML FROM PRMT0001 WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.Empresa.EMP_CODIGO)) = 'S'  then
  begin
   menuItem := TMenuItem.Create(pmRelatorio) ;
   menuItem.Caption := 'Importação do Pedido por XML';
   menuItem.OnClick := ItensXMLClick;
   pmRelatorio.Items.Add(menuItem) ;
  end;
  JvGIFAnimator1.Animate := True;

end;

procedure TfrmNfe40.FormDestroy(Sender: TObject);
begin
  inherited;
  frmNfe40:= nil;
end;

procedure TfrmNfe40.FormShow(Sender: TObject);
begin
  inherited;

  lstatus.Caption := IIF(dbinicio.Nfe.AmbienteWebService = tpProducao,'Produção', 'Homologação') ;
  configuacaoIniciais;

end;

procedure TfrmNfe40.frxNotasUFBeginDoc(Sender: TObject);
begin
  inherited;
  TfrxPictureView(frxNotasUF.FindObject('LogoEmpresa')).Picture.Bitmap.Assign(DbInicio.Empresa.LOGO);

end;

procedure TfrmNfe40.frxNotasUFGetValue(const VarName: string; var Value: Variant);
begin
  inherited;
  if (VarName  = 'RAZAO') then
       Value := DBInicio.Empresa.RAZAO
  else
  if (VarName  = 'ENDERECO') then
     Value := DBInicio.Empresa.ENDERECO
  else
  if (VarName  = 'CEP')  then
       Value := DBInicio.Empresa.CEP
  else
  if (VarName  = 'CIDADE') then
       Value := DBInicio.Empresa.CIDADE
  else
  if (VarName  = 'UF') then
     Value := DBInicio.Empresa.UF
  else
  if (VarName  = 'SITE')   then
     Value := DBInicio.Empresa.HOME_PAGE
  else
  if (VarName  = 'FONE') then
     Value := DBInicio.Empresa.FONE
  else
  if (VarName  = 'CNPJ')  then
     Value := DBInicio.Empresa.CNPJ_CNPF
  else
  if (VarName  = 'INSCR') then
     Value := DBInicio.Empresa.INSC_EST
  else
  if (VarName  = 'EMAIL') then
     Value := DBInicio.Empresa.EMAIL
  else
  if (VarName  = 'VENDAS') then
  begin
    Fcfop_venda :=0;
    Fcfop_compra:=0;
    Fcfop_outros:=0;
    Fcfop_devoucao:=0;
    cdsNOTAS.First;
    while not cdsNOTAS.eof do
    begin
      if BuscaUmDadoSqlAsString('SELECT OPE_TIPO_OPERACAO FROM OPE0000 WHERE OPE_CODIGO = ' + cdsNotasOPE_CODIGO.AsString) = 'V' then
        Fcfop_venda := Fcfop_venda + cdsNotasNF_TOT_NOTA.AsFloat
      else if BuscaUmDadoSqlAsString('SELECT OPE_TIPO_OPERACAO FROM OPE0000 WHERE OPE_CODIGO = ' + cdsNotasOPE_CODIGO.AsString) = 'C' then
        Fcfop_compra := Fcfop_compra + cdsNotasNF_TOT_NOTA.AsFloat
      else if BuscaUmDadoSqlAsString('SELECT OPE_TIPO_OPERACAO FROM OPE0000 WHERE OPE_CODIGO = ' + cdsNotasOPE_CODIGO.AsString) = 'D' then
       Fcfop_devoucao := Fcfop_devoucao + cdsNotasNF_TOT_NOTA.AsFloat
       else
        Fcfop_outros := Fcfop_outros + cdsNotasNF_TOT_NOTA.AsFloat;
      cdsNOTAS.next;
    end;
    Value := Fcfop_venda;
  end
  else
  if (VarName  = 'COMPRAS') then
  begin
    Value := Fcfop_compra;
  end
  else
  if (VarName  = 'OUTROS') then
  begin
    Value := Fcfop_outros;
  end
  else
  if (VarName  = 'DEVOLUCAO') then
  begin
    Value := Fcfop_devoucao;
  end
  else
  if (VarName  = 'ESTADO') then
  begin
    Value := uteis.Estados(cdsNotasCLI_UF.AsString) + ' - ' + cdsNotasCLI_UF.AsString;
  end
  ;

end;

procedure TfrmNfe40.GravaInutilizado(CONST nf_registro: integer; CONST justificativa: string);
var sql: string;
emp_codigo: STRING;

begin
  //grava errado no banco, sem os zeros  NF0001_HISTORICO (como inteiro), NF0001_INU_CANC (string) e   nf0001_inutilizar (como string)
  emp_codigo :=  inttostr( strtoint(dbinicio.empresa.EMP_CODIGO));
  //já inutilizado no sefaz
 sql := 'INSERT INTO NF0001_INU_CANC (EMP_CODIGO, fic_data, fic_hora, USU_CODIGO, FIC_TIPO,FIC_NUMERO_NFE, FIC_OBSERVACAO) '+
        ' VALUES ('+QuotedStr(emp_codigo)+','+DateToSQL(now)+','+ TimeToSQL(time)+ ','+ dbinicio.Usuario.CODIGO+','+QuotedStr('C')+ ','+IntToStr(nf_registro) + ','+
                 QuotedStr( justificativa)+')';
  ExecSql(SQL);
end;

procedure TfrmNfe40.GravarCancelamento(CONST NF_REGISTRO: Integer; CONST protocolo: string);
var sql :string;
begin
  sql:=   ' UPDATE NF0001  '+
          ' SET  NF_STATUS_NFE = ''C'', '  +
          '  NF_PROTOCOLO_NFE_CANC = '+ QuotedStr(iif(protocolo = '','0',protocolo)) + ','+
          '  NF_CANCELADA = ''S'', '+
          ' NF_VENDA_FATURADA = ''N''' +
          ' WHERE NF_REGISTRO = '+ IntToStr(NF_REGISTRO);
 ExecSql(SQL);
end;

procedure TfrmNfe40.GravarEmailEnviado(const nf_registro: integer; const status: string);
var sql :string;
begin

  sql:=   ' UPDATE NF0001  '+
          ' SET  NF_ENVIADO_NFE_EMAIL = '  + QuotedStr(status) +
          ' WHERE NF_REGISTRO = '+ IntToStr(NF_REGISTRO);
 ExecSql(SQL);

end;

procedure TfrmNfe40.GravarHistorico(const mensagem :string; nf_registro, NFM_REGISTRO: integer);
var vcodigo : integer;
  sql: string;
begin
   vcodigo := GetNextSequence('GEN_NF0001_HISTORICO_ID');
   if NFM_REGISTRO in [135,155] then //evento
       sql := ' insert into NF0001_HISTORICO (NFH_REGISTRO, EMP_CODIGO, NF_REGITRO ,NFM_REGISTRO,USU_CODIGO , NFH_DATA, NFH_HORA, NFH_DESCRICAO, NFH_XML ) '+
              ' values ('+IntToStr(vcodigo)+','+DBInicio.Empresa.EMP_CODIGO +','+ IntToStr(nf_registro)  +','+IntToStr(NFM_REGISTRO) + ','+ DBInicio.Usuario.CODIGO + ','+
                DateToSQL(now)+','+ TimeToSQL(time)+  ','+
                QuotedStr(copy(mensagem,1,255)) +   ','+
                QuotedStr(UTF8Encode(ACBrNFe1.EventoNFe.evento.items[0].retinfevento.XML))+   ' )'

   else
     sql := ' insert into NF0001_HISTORICO (NFH_REGISTRO, EMP_CODIGO, NF_REGITRO ,NFM_REGISTRO,USU_CODIGO , NFH_DATA, NFH_HORA, NFH_DESCRICAO ) '+
            ' values ('+IntToStr(vcodigo)+','+DBInicio.Empresa.EMP_CODIGO +','+ IntToStr(nf_registro)  +','+IntToStr(NFM_REGISTRO) + ','+ DBInicio.Usuario.CODIGO + ','+
              DateToSQL(now)+','+ TimeToSQL(time)+  ','+
                QuotedStr(copy(mensagem,1,255)) + ' )'  ;
   ExecSql( sql);
end;

procedure TfrmNfe40.GravarSeqCCe(const nf_registro, seq: integer);
begin
  ExecSql('UPDATE NF0001 SET nf_seq_cce = '+ IntToStr(seq) +
          ' WHERE nf_registro = '+ IntToStr(nf_registro));
end;

function TfrmNfe40.ImprimirEvento : boolean;
begin
  if not cdsHistorico.IsEmpty then
  begin
   result := False;
   if not cdsHistoricoNFM_REGISTRO.AsInteger in [135,155] then
     GeraException('Não é um evento');

   if cdsHistoricoNFH_XML.AsString <> ''  then
   begin
     if CarregarXML(cdsHistoricoNF_REGITRO.AsInteger ) then
         if CarregarXML_Evento then
         begin
           ACBrNFe1.DANFE := ACBrNFeDANFeRL1;
           ACBrNFe1.ImprimirEvento;
           result := True;
           ACBrNFe1.DANFE := ACBrNFeDANFEFR1;
         end;
   end;

  end
  else
    result := False;

end;

procedure TfrmNfe40.ItensXMLClick(Sender: TObject);
begin
  try
   cdsNotas.DisableControls;
   cdsNotas.First;
   cdsNotas.FetchOnDemand := False;
    while not (cdsNotas.GetNextPacket = 0) do
      cdsNotas.GetNextPacket;
   RpNotasMod1.DeviceType := 'Screen';
   RBuilderPreview(RpNotasXML);
  finally
   cdsNotas.EnableControls;
  end;
end;

procedure TfrmNfe40.SelecionadoPropertiesChange(Sender: TObject);
begin
  inherited;
  if  not (cdsNotas.State in dsEditModes)  then
    cdsNotas.Edit;
  cdsNotasselecionado.AsBoolean :=  not cdsNotasselecionado.AsBoolean;
  cdsNotas.Post;
end;

procedure TfrmNfe40.SelecionarTudo(opcao: boolean);
var clone : TClientDataSet;
begin
  inherited;
  cdsNotas.First;
  CdsNotas.FetchOnDemand := False;
  while not (cdsNotas.GetNextPacket = 0) do
    CdsNotas.GetNextPacket;

  clone := TClientDataSet.Create(self);
  try
   clone.CloneCursor(cdsnotas,false);
   clone.First;
   while not clone.Eof do
   begin
    clone.Edit;
    clone.FieldByName('selecionado').AsBoolean := opcao;
    clone.Post;
    clone.Next
   end;
  finally
    FreeAndNil(clone);
  end;
end;

procedure TfrmNfe40.SetPesqEmail(const aValue: string);
begin
 FPesqEmail := aValue;
end;

procedure TfrmNfe40.SetPesqStatus(const aValue: string);
begin
  FPesqStatus := aValue;
end;

procedure TfrmNfe40.TransmitirXMLClick(Sender: TObject);
var nf : TfrmProcessaNFe;
 errNaoSEFAZ : boolean;
begin
  inherited;
  if not assigned(frmProcessaNFe)  then
    nf := TfrmProcessaNFe.Create(self);
  try

    jvOpenDialog1.Title := 'Selecione a NFE';
    jvOpenDialog1.DefaultExt := '*-nfe.XML';
    jvOpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
    jvOpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;

     nf.ACBrNFe1.Configuracoes.WebServices.Ambiente := taHomologacao;
     nf.ConfiguracoesIniciais(moNFe);
    if jvOpenDialog1.Execute then
    begin
      nf.ACBrNFe1.NotasFiscais.Clear;
      if not nf.ACBrNFe1.NotasFiscais.LoadFromFile(jvOpenDialog1.FileName) then
        exit;
    end;


    if not nf.ACBrNFe1.SSL.CertificadoLido then
    begin
//       if ACBrNFe1.SSL.NumeroSerie <> '' then
//        nf.ACBrNFe1.SSL.numeroserie := ACBrNFe1.SSL.NumeroSerie;
       ACBrNFe1.SSL.NumeroSerie := BuscaUmDadoSqlAsString('SELECT PMT_CERTIFICADO_DIGITAL FROM PRMT0001 WHERE EMP_CODIGO = ' + QuotedStr(cdsNotas.FieldByName('EMP_CODIGO').AsString));
       nf.ACBrNFe1.SSL.CarregarCertificado;
       if not nf.ACBrNFe1.SSL.CertificadoLido then
       begin
        MessageDlg('Favor informar o número de série do certificado da empresa ' + cdsNotas.FieldByName('EMP_CODIGO').AsString + ' nos parâmetros globais', mtWarning, [mbOK], 0);
        abort;
        // nf.ACBrNFe1.SSL.SelecionarCertificado;
        // ACBrNFe1.SSL.NumeroSerie := nf.ACBrNFe1.SSL.numeroserie;
       end;
    end;
    NF.BuscaNota(cdsNotas.FieldByName('NF_NOTANUMBER').AsString);
    with nf.ACBrNFe1.NotasFiscais.Items[0].NFe,Emit do
    begin
       Ide.tpEmis    := ACBrNFe1.Configuracoes.Geral.FormaEmissao;
       Ide.tpAmb     := ACBrNFe1.Configuracoes.WebServices.Ambiente;
       Ide.verProc   := dbinicio.Versao.VERSAOCOMPLETO; //Versão do seu sistema
       Ide.cUF       := UFtoCUF(DBInicio.Empresa.UF );
       Ide.cMunFG    := DBInicio.Empresa.CID_IBGE; //codigo do ibge
       //EMITENTE Procedure EmitenteNF;
       CNPJCPF           := RetirarMascaraCNPJ_INSC(dbinicio.Empresa.CNPJ_CNPF);
       IE                := RetirarMascaraCNPJ_INSC(dbinicio.Empresa.INSC_EST);
       xNome             := dbinicio.Empresa.RAZAO;
       xFant             := dbinicio.Empresa.FANTASIA;
       EnderEmit.fone    := dbinicio.Empresa.FONE;

       EnderEmit.CEP     := StrToIntDef(RetiraTodaMascara(dbinicio.Empresa.CEP),0);;
       EnderEmit.xLgr    := RetornaEnderecoSemNumero(dbInicio.Empresa.endereco);
       EnderEmit.nro     := RetornaNumeroEndereco(dbInicio.Empresa.Endereco);
       EnderEmit.xCpl    := '';
       EnderEmit.xBairro := dbinicio.Empresa.BAIRRO;
       EnderEmit.cMun    := Ide.cMunFG;
       EnderEmit.xMun    := dbinicio.Empresa.CIDADE;
       EnderEmit.UF      := DBInicio.Empresa.UF;
       enderEmit.cPais   := 1058;
       enderEmit.xPais   := 'BRASIL';
        IM                := dbinicio.Empresa.INS_MUNICIPAL;
       CRT               :=  StrToCRT(OK,DBInicio.Empresa.EMP_CRT);// (1-crtSimplesNacional, 2-crtSimplesExcessoReceita, 3-crtRegimeNormal)
    end;
    errNaoSEFAZ:= nf.GerarAssinarEnviar;
 finally
   if assigned(NF)  then
    FreeAndNil(nf);
  end;
end;

procedure TfrmNfe40.ValidarCancelamento;
var clone : TClientDataSet;
begin
  clone := TClientDataSet.Create(Self);

  try
    clone.CloneCursor(cdsnotas,False);
    clone.Filtered := False;
    clone.Filter:= '(selecionado = true)';
    clone.Filtered := True;
    if clone.RecordCount = 0 then
      raise Exception.Create('Nada foi selecionado.');

    clone.Filtered := False;
    clone.Filter:= '(selecionado = true) and  (nf_status_nfe <> ''A'') ';
    clone.Filtered := True;
    if clone.RecordCount > 0 then
      raise Exception.Create('Somente podem ser canceladas NFe autorizadas.');

  finally
    FreeAndNil(clone);
  end;

end;

procedure TfrmNfe40.ValidarCorrecao;
begin
 if (cdsNotasNF_STATUS_NFE.AsString <> 'A') then
   GeraException('NFe não autorizado');
// if (cdsNotasNF_EMISSAO.AsDateTime < date-30) then
//   GeraException('Emissão antes de 30 dias');


end;

procedure TfrmNfe40.ValidarRegras;
var ok : boolean;
msg : string;
begin
    Ok := ACBrNFe1.NotasFiscais.ValidarRegrasdeNegocios(Msg);
    if not Ok then
    begin
      ShowMessage('Erro: '+Msg + sLineBreak +
                  'Erros encontrados'+ sLineBreak );
    end
    else
      ShowMessage('Tudo OK');
end;

procedure TfrmNfe40.acaoImprimirDANFEClick(Sender: TObject);
var
 xml :TStringStream;
 xmlstream : TStream;
 nomeArq: string;
 nf : TfrmProcessaNFe ;
 erro: boolean;
begin
  inherited;
  if cdsNotas.FieldByName('nf_status_nfe').AsString = 'A' then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    OpenAux('select first 1 NFX_XML from NF0001_XML '+
            ' where  NF_REGISTRO = '+ IntToStr(cdsNotas.FieldByName('NF_REGISTRO').AsInteger)  +
            ' ORDER BY NFX_REGISTRO DESC ');
    erro:= True;
    while not qaux.Eof do
    begin
     if qAux.FieldByName('NFX_XML').AsString <> '' then
     begin
       // nfce
       if cdsNotas.FieldByName('NF_NUM_NFCE').AsInteger <> 0  then
       begin
           ACBrNFe1.DANFE := ACBrNFeDANFCEFR1;
           ACBrNFeDANFCEFR1.FastFile :=  DBInicio.Versao.PATH+'NFe4'+'\relatorio\DANFeNFCe5_00.fr3';
       end    //nfe
       Else
       begin
         ACBrNFe1.DANFE := ACBrNFeDANFEFR1;

       end;
       xml :=  TStringStream.Create;
       xmlstream := qAux.CreateBlobStream(qAux.FieldByName('NFX_XML'),bmRead);
       try
         xml.CopyFrom(xmlstream,xmlstream.Size) ;
         if ACBrNFe1.NotasFiscais.LoadFromStream(xml,TRUE) then
          if ACBrNFe1.NotasFiscais.Items[0].NFE.procNFe.nProt <> '' then
          begin
           ACBrNFE1.NotasFiscais.Items[0].NFe.Emit.xNome             := copy(dbinicio.Empresa.RAZAO,1,60);
           ACBrNFE1.DANFE.Email := DBInicio.Empresa.EMAIL;
           ACBrNFE1.DANFE.Site :=DBInicio.Empresa.HOME_PAGE;
           ACBrNFE1.NotasFiscais.Imprimir;
           erro:= False;
           break;
          end;

       finally
         FreeAndNil(xml);
         FreeAndNil(xmlstream);
         ACBrNFe1.NotasFiscais.Clear;
       end;
     end;
     qAux.Next;
    end;

  end
  else if cdsNotas.FieldByName('nf_status_nfe').AsString = 'N'  then
  begin
    ShowMessage('Espelho da NFe não tem validade. ' + #13#10+
               'Precisa autorizar na receita'
   );


    if not assigned(frmProcessaNFe)  then
      nf := TfrmProcessaNFe.Create(self);
     NF.BuscaNota(CdsNotas.FieldByName('NF_NOTANUMBER').AsString);
     NF.ACBrNFe1.NotasFiscais.Clear;
     nf.GerarNFE(True);
     nf.ACBrNFe1.DANFE := ACBrNFeDANFEFR1;
     nf.ACBrNFeDANFEFR1.FastFile :=  DBInicio.Versao.PATH+'NFe4'+'\relatorio\PredanfeNovo.fr3';
     ACBrNFeDANFEFR1.FastFile :=  DBInicio.Versao.PATH+'NFe4'+'\relatorio\PredanfeNovo.fr3';  //BASEADO NO DANFeRetrato_2019.fr3
     NF.ACBrNFE1.NotasFiscais.Imprimir;
     nomeArq := CdsNotas.FieldByName('NF_NOTANUMBER').AsString;
     nomeArq := DBInicio.Versao.PATH +'NFe4' + '\'+ FormatDateTime('yyyymm',date) + '\Gerados\' + NomeArq;
     NF.ACBrNFe1.NotasFiscais.GravarXML(NomeArq +'-nfe.xml');


  end
  else
   raise Exception.Create('Só pode imprimir Nota Fiscal eletrônica autorizada');
end;

procedure TfrmNfe40.acaoInutilizarClick(Sender: TObject);
begin
  inherited;
    FrmInutilizar := TFrmInutilizar.Create(Application);
    try
      FrmInutilizar.ShowModal;
    finally
      FrmInutilizar.Destroy;
      FrmInutilizar := nil; //  nil é - From Assigned = False
    end;

end;

procedure TfrmNfe40.acaoCancelarClick(Sender: TObject);
var clone : TClientDataSet;
  justificativa : string;
  lote: integer;
  ResultEvento : boolean;
  clone2 : TClientDataSet;
begin
  inherited;

  clone2 := TClientDataSet.Create(self);
  clone2.CloneCursor(cdsnotas,false);
  clone2.Filtered := False;
  clone2.Filter:= '(selecionado = true)';
  clone2.Filtered := True;
  if clone2.RecordCount > 1 then
  begin
    MessageDlg('Selecione somente um item de cada vez para o Cancelamento', mtWarning, [mbOK],0);
    Exit;
  end;



   ValidarCancelamento;
    frmjustificativa := Tfrmjustificativa.Create(Application);
    try
       Screen.Cursor := crHourGlass;
      if frmjustificativa.ShowModal = mrok then
      begin
        justificativa :=  frmjustificativa.MJustificativa.Text;
        lote:= dbInicio.GetNextSequence('GEN_SEQUENCIA_LOTE_NFE');
        clone := TClientDataSet.Create(Self);

        try
          Screen.Cursor := crHourGlass;
          clone.CloneCursor(cdsNotas,False);
          clone.Filtered := False;
          clone.Filter:= '(selecionado = true)';
          clone.Filtered := True;
          clone.First;
          ACBrNFe1.NotasFiscais.Clear;
          while not clone.Eof do
          begin
            //ver se a nota tem xml
            if CarregarXML(clone.FieldByName('NF_REGISTRO').AsInteger) then
            begin
              ACBrNFe1.EventoNFe.Evento.Clear;
              ACBrNFe1.EventoNFe.idLote := lote;
              with ACBrNFe1.EventoNFe.Evento.Add do
                begin
                  infEvento.dhEvento := now;
                  infEvento.tpEvento := teCancelamento;
                  infEvento.detEvento.xJust := justificativa;

                end;
            end //não tem xml
            else
            begin

                ACBrNFe1.NotasFiscais.Clear;
                ACBrNFe1.EventoNFe.Evento.Clear;
                 ACBrNFe1.EventoNFe.idLote := lote;
                with ACBrNFe1.EventoNFe.Evento.Add do
                 begin
                   infEvento.chNFe := clone.FieldByName('NF_CHAVE_NFE').AsString;
                   infEvento.CNPJ   := RetirarMascaraCNPJ_INSC(dbinicio.Empresa.CNPJ_CNPF);
                   infEvento.dhEvento := now;
                   infEvento.tpEvento := teCancelamento;
                   infEvento.detEvento.xJust := Justificativa;
                   infEvento.detEvento.nProt := clone.FieldByName('NF_PROTOCOLO_NFE').AsString;
                   if infEvento.detEvento.nProt = '' then
                      infEvento.detEvento.nProt := clone.FieldByName('NF_PROTOCOLO_AUTORIZACAO').AsString;
                 end;
            end;

            if not ACBrNFe1.SSL.CertificadoLido then
            begin
             ACBrNFe1.SSL.NumeroSerie := BuscaUmDadoSqlAsString('SELECT PMT_CERTIFICADO_DIGITAL FROM PRMT0001 WHERE EMP_CODIGO = ' + QuotedStr(clone.FieldByName('EMP_CODIGO').AsString));
             ACBrNFe1.SSL.CarregarCertificado;
             if not ACBrNFe1.SSL.CertificadoLido then
             begin
                MessageDlg(
                  'Favor informar o número de série do certificado da empresa ' +
                  clone.FieldByName('EMP_CODIGO').AsString +
                  ' nos parâmetros globais', mtWarning, [mbOK], 0
                );
                abort;
             end;
              // ACBrNFe1.SSL.SelecionarCertificado;
            end;

            try
                 ResultEvento := ACBrNFe1.EnviarEvento(lote);
            except
              on E: Exception do
              begin
                 MessageDlg('Não gravado: '+e.message, mtInformation, [mbOK], 0);
                 //grava histórico das notas
                 if ACBrNFe1.WebServices.Retorno.xMotivo = '' then
                   GravarHistorico(e.message,
                     clone.FieldByName('NF_REGISTRO').AsInteger, ACBrNFe1.WebServices.EnvEvento.cStat )
                 else
                   GravarHistorico(ACBrNFe1.WebServices.Retorno.xMotivo,
                    clone.FieldByName('NF_REGISTRO').AsInteger, ACBrNFe1.WebServices.EnvEvento.cStat );
                 ResultEvento := False;
              end;
            end;
             if ResultEvento then
             begin
               if (ACBrNFe1.WebServices.EnvEvento.cStat = 128)  //evento processado
               // Evento registrado e vinculado a NF-e e cancelado mas com atraso
                and(ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat in [135,136,151,155]) then
               begin

                  //grava o numero do nfe como inutilizado
                  GravaInutilizado ( clone.FieldByName('NF_REGISTRO').AsInteger,Justificativa);
                  CancelamentoFatura(clone.FieldByName('NF_NOTANUMBER').AsString,
                                     clone.FieldByName('PED_CODIGO').AsString,
                                     clone.FieldByName('OPE_CODIGO').AsString,
                                     clone.FieldByName('OPE_NATUREZA').AsString,
                                     Clone.FieldByName('NF_TOT_PROD').AsFloat,
                                     Clone.FieldByName('NF_VL_DESCTO').AsFloat,
                                     clone.FieldByName('NF_NUM_NFE').AsInteger,
                                     clone.FieldByName('NF_VL_SUBTRIB').AsFloat,
                                     clone.FieldByName('NF_VL_IPI').AsFloat);

                  GravarCancelamento(clone.FieldByName('NF_REGISTRO').AsInteger,
                  ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt  );
                  MessageDlg('Cancelado com sucesso', mtInformation, [mbOK], 0);
                  ACBrNFe1.DANFE := ACBrNFeDANFeRL1;
                  ACBrNFe1.ImprimirEvento;
               end
               else
                 MessageDlg('Não gravado', mtInformation, [mbOK], 0);
              //grava histórico das notas
               GravarHistorico('Cancelamento: ' + ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo,
                      clone.FieldByName('NF_REGISTRO').AsInteger, ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat );
               cdsHistorico.Close;
               qhistorico.CommandText := 'SELECT (nfh_data+nfh_hora) AS NFH_DATA,  u.USU_NOME, NFM_REGISTRO,  nfh_descricao, NFH_XML, NF_REGITRO  '+
                                         ' FROM NF0001_HISTORICO hi JOIN usuario u ON (u.USU_CODIGO = hi.USU_CODIGO) '+
                                         ' WHERE NF_REGITRO = ' + clone.FieldByName('NF_REGISTRO').AsString +
                                         ' AND NFM_REGISTRO = 135 ' +
                                         ' order by 1 desc';
               cdsHistorico.Open;
               btnEmailEventoClick(nil);
             end;


           clone.next;
          end;

        finally
          FreeAndNil(clone);
          BuscaNotaFiscais;
        end;
      end;


    finally
      frmjustificativa.Destroy;
      frmjustificativa := nil; //  nil é - From Assigned = False
      Screen.Cursor := crDefault;
    end;


end;

procedure TfrmNfe40.acaoEnviarEmailClick(Sender: TObject);
var
 xml :TStringStream;
xmlstream : TStream;
 email : string;

 assunto  : string;
 reply, mensagem, AnexosEmail: TStringList;
 NomeArq,msg: String;

begin
  inherited;
  if cdsNotas.FieldByName('nf_status_nfe').AsString = 'A' then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    OpenAux('select first 1 NFX_XML from NF0001_XML'+
            ' where  NF_REGISTRO = '+ IntToStr(cdsNotas.FieldByName('NF_REGISTRO').AsInteger) +
            ' ORDER BY NFX_REGISTRO DESC ');
     if qAux.FieldByName('NFX_XML').AsString <> '' then
     begin
       xml :=  TStringStream.Create;
       xmlstream := qAux.CreateBlobStream(qAux.FieldByName('NFX_XML'),bmRead);
       if CdsNotas.FieldByName('NF_NUM_NFCE').AsInteger <> 0  then
       begin
         ACBrNFe1.DANFE := ACBrNFeDANFCeFortes1 ;
         ACBrNFe1.DANFE.PathPDF    := DBInicio.Versao.PATH +'NFe4' + '\'+ FormatDateTime('yyyymm',date) + '\NFCe' ;
       end
       Else
       begin
         ACBrNFe1.DANFE := ACBrNFeDANFEFR1;
         ACBrNFe1.DANFE.PathPDF    := DBInicio.Versao.PATH +'NFe4' + '\'+ FormatDateTime('yyyymm',date) + '\NFe' ;
       end;
        ACBrNFe1.DANFE.Email := DBInicio.Empresa.EMAIL;
       try
         xml.CopyFrom(xmlstream,xmlstream.Size) ;
         if ACBrNFe1.NotasFiscais.LoadFromStream(xml,TRUE) then
          ACBrNFE1.NotasFiscais.ImprimirPDF;
        AnexosEmail := TStringList.Create;
        try
          nomeArq := Copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 44);
          nomeArq :=  PathWithDelim(ACBrNFe1.DANFE.PathPDF) + NomeArq;
          ACBrNFe1.NotasFiscais.GravarXML(NomeArq+'-nfe.xml');
          AnexosEmail.Clear;

            AnexosEmail.Add(NomeArq+ '-nfe.pdf');
            AnexosEmail.Add(NomeArq+'-nfe.xml');
          if ACBrNFe1.Configuracoes.WebServices.Ambiente = taHomologacao then
          begin
            if CdsNotas.FieldByName('NF_NUM_NFCE').AsInteger <> 0 then
              assunto :=   'Desconsiderar: NFC-e (ambiente homologação) -  não tem Validade Jurídica -'+ dbinicio.Empresa.RAZAO
            else
              assunto :=   'Desconsiderar: NF-e (ambiente homologação) -  não tem Validade Jurídica -'+ dbinicio.Empresa.RAZAO;
            email:= 'adjutor@novisistemas.com.br';
           if not(InputQuery('Enviar email para...', 'Email (mais de um, separar por ;)', email))
            then exit;
          end
          else
          begin
            if CdsNotas.FieldByName('NF_NUM_NFCE').AsInteger <> 0 then
              assunto :=   'Nota Fiscal Consumidor eletrônica - NFCe - '+ dbinicio.Empresa.RAZAO
            else
              assunto :=   'Nota fiscal eletrônica - NFe - '+ dbinicio.Empresa.RAZAO;
            email := cdsNotas.FieldByName('CLI_EMAIL').AsString;
            //email:= ACBrNFe1.NotasFiscais.items[0].NFe.Dest.Email ;
            if not(InputQuery('Enviar email para...', 'Email (mais de um, separar por ;)', email))
             then exit;

          end;
          reply:=  TStringList.Create;
          mensagem := TStringList.Create;
          try
            reply.Clear;
            mensagem.Clear;
            reply.Add(ACBrNFe1.DANFE.Email);

            if ACBrNFe1.Configuracoes.WebServices.Ambiente = taHomologacao then
               mensagem.Add('**** DESCONSIDERAR NF-e 4.0  : AMBIENTE DE HOMOLOGAÇÃO');
            mensagem.Add('Nota Fiscal Eletrônica  XML e PDF ');
            mensagem.Add('Chave da Nfe: '+Copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 44));
            mensagem.Add('Protocolo de Autorização:  '+cdsNotas.FieldByName('NF_PROTOCOLO_AUTORIZACAO').AsString   );
            mensagem.Add( DBInicio.Empresa.MensagemNFe  );

            //colocar informações do prestador

           // ACBrNFSeCuritiba.NotasFiscais.Items[i].En//viarEmail( email, assunto, mensagem, true, nil,nil, reply);     //não funcionou por causa da porta
            // if enviarEmailIndy(email, assunto, mensagem, true, nil,AnexosEmail, reply) then
            if enviaMail('NFE', Trim(dbInicio.Empresa.EmailUserName), email, assunto, reply[0], mensagem, AnexosEmail) then
            begin
              if CdsNotas.FieldByName('NF_NUM_NFCE').AsInteger <> 0 then
               msg := 'Email enviado a '+email+' da NFC-e n.: '+  IntToStr(cdsNotas.FieldByName('NF_NUM_NFCE').AsInteger)  + ' com sucesso'
              else
                msg := 'Email enviado a '+email+' da NF-e 4.0 n.: '+  IntToStr(cdsNotas.FieldByName('NF_NUM_NFE').AsInteger)  + ' com sucesso';
              MessageDlg(msg, mtInformation, [mbOK], 0);
              GravarHistorico(msg,cdsNotas.FieldByName('NF_REGISTRO').AsInteger, 0) ;
              GravarEmailEnviado(cdsNotas.FieldByName('NF_REGISTRO').AsInteger,'S');
            end
            else
            begin
              if CdsNotas.FieldByName('NF_NUM_NFCE').AsInteger <> 0 then
                msg := 'Ocorreu algum erro ao enviar a '+ email +' da NFC-e : '+   IntToStr(cdsNotas.FieldByName('NF_NUM_NFCE').AsInteger)
              else
                msg := 'Ocorreu algum erro ao enviar a '+ email +' da NF-e 4.0: '+   IntToStr(cdsNotas.FieldByName('NF_NUM_NFE').AsInteger) ;
              MessageDlg(msg, mtError, [mbOK], 0);
              GravarHistorico(msg,cdsNotas.FieldByName('NF_REGISTRO').AsInteger, 0) ;
              GravarEmailEnviado(cdsNotas.FieldByName('NF_REGISTRO').AsInteger,'N');
            end;
            BuscaNotaFiscais;
            BuscaHistorico;
          finally
            reply.Free;
            mensagem.Free;
          end;
        finally
         FreeAndNil(AnexosEmail);
        end;

       finally
         FreeAndNil(xml);
         FreeAndNil(xmlstream);
       end;
     end
     Else
       raise Exception.Create('Sem XML');
  end
  else
    raise Exception.Create('Não pode enviar email de Nota ainda não autorizada');
end;

procedure TfrmNfe40.acaoPesquisarClick(Sender: TObject);
begin
  inherited;
  pPesquisa.Visible := not pPesquisa.Visible;

end;

procedure TfrmNfe40.AgrupadoporEstado1Click(Sender: TObject);
begin
  inherited;
  with cdsNotas.IndexDefs.AddIndexDef do
  begin
    Name   := 'idxCLI_UF';
    Fields := 'CLI_UF;NF_EMISSAO';
    Options := [];
  end;
  cdsNotas.IndexName :=  'idxCLI_UF';

  frxNotasUF.ShowReport();

  cdsNotas.IndexName :=  '';
  cdsNotas.IndexDefs.Clear;
  BuscaNotaFiscais;
end;

procedure TfrmNfe40.JvImage14Click(Sender: TObject);
var
 nSeqEvento, Correcao : string;
 ResultEvento : boolean;
 idLote, seq : integer;
 clone : TClientDataSet;

begin
  inherited;

  clone := TClientDataSet.Create(self);
  clone.CloneCursor(cdsnotas,false);
  clone.Filtered := False;
  clone.Filter:= '(selecionado = true)';
  clone.Filtered := True;
  if clone.RecordCount > 1 then
  begin
    MessageDlg('Selecione comente um item de cada vez para Carta de Correção', mtWarning, [mbOK],0);
    Exit;
  end;


  ValidarCorrecao;
  ACBrNFe1.NotasFiscais.Clear;
  if CarregarXML(cdsNotas.FieldByName('NF_REGISTRO').AsInteger) then
  begin
    FrmCartaNfe := TFrmCartaNfe.Create(Application);
    try
      with FrmCartaNfe do
      begin
       EdNfe.Text := inttostr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.nNF);
       EdRazaoCliente.Text := ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.xNome;
       EdCidade.Text := ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xMun;
       EdCnpj.Text := MascaraCNPJ_CPF(ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.CNPJCPF) ;
       EdChave.Text := Copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 44);
       EdValor.Text := CurrToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.VNF);
       EdCodigoCliente.Text := cdsnotas.FieldByName('cli_codigo').AsString;
       EDCfop.Text := cdsnotas.FieldByName('OPE_NATUREZA').AsString;
       edEmissao.Text := FormatDateTime('dd/mm/yy',cdsNotas.FieldByName('NF_EMISSAO').AsDateTime);
       if cdsnotas.FieldByName('NF_SEQ_CCE').IsNull then
         seq := 0
       else
         seq:= cdsnotas.FieldByName('NF_SEQ_CCE').AsInteger;
       Inc(seq,1);
       SequenciaEvento.Text := IntToStr(seq);
       idlote := (dbInicio.GetNextSequence('GEN_SEQUENCIA_LOTE_NFE'));
       if FrmCartaNfe.ShowModal = mrOk then
       begin
          nSeqEvento := SequenciaEvento.Text;
          correcao := MemoDescricao.Text;
          if not ACBrNFe1.SSL.CertificadoLido then
          begin
            ACBrNFe1.SSL.NumeroSerie := BuscaUmDadoSqlAsString('SELECT PMT_CERTIFICADO_DIGITAL FROM PRMT0001 WHERE EMP_CODIGO = ' + QuotedStr(cdsNotas.FieldByName('EMP_CODIGO').AsString) );
            ACBrNFe1.SSL.CarregarCertificado;
            if not ACBrNFe1.SSL.CertificadoLido then
            begin
              MessageDlg(
                'Favor informar o número de série do certificado da empresa ' +
                cdsNotas.FieldByName('EMP_CODIGO').AsString +
                ' nos parâmetros globais', mtWarning, [mbOK], 0
              );
              abort;
            end;
            //ACBrNFe1.SSL.SelecionarCertificado;
          end;
          ACBrNFe1.EventoNFe.Evento.Clear;
          with ACBrNFe1.EventoNFe.Evento.Add do
           begin
             infEvento.chNFe := cdsNotas.FieldByName('NF_CHAVE_NFE').AsString;
             infEvento.CNPJ   := RetirarMascaraCNPJ_INSC(dbinicio.Empresa.CNPJ_CNPF);
             infEvento.dhEvento := now;
             infEvento.tpEvento := teCCe;
             infEvento.nSeqEvento := StrToInt(nSeqEvento);
             infEvento.detEvento.xCorrecao := Correcao;

           end;
            try
                 ResultEvento := ACBrNFe1.EnviarEvento(idlote);
            except
              on E: Exception do
              begin
                if pos('timed out',e.message,1) > 0 then
                begin
                    GravarHistorico ( 'Time out. consulte mais tarde  '+ RetornarConteudoEntre(e.Message, '[TAG]','[/TAG]'),
                                      cdsNotas.FieldByName('NF_REGISTRO').AsInteger,   0);
                end
                else
                if pos('DadosPFX',e.message,1) > 0 then
                begin
                    GravarHistorico ( 'Erro no certificado. consulte mais tarde  '+ RetornarConteudoEntre(e.Message, '[TAG]','[/TAG]'),
                                      cdsNotas.FieldByName('NF_REGISTRO').AsInteger,   0);
                end
                else
                begin
                   //grava histórico das notas
                   if ACBrNFe1.WebServices.Retorno.xMotivo = '' then
                     GravarHistorico('CCe :'+e.message,
                       cdsNotas.FieldByName('NF_REGISTRO').AsInteger, ACBrNFe1.WebServices.EnvEvento.cStat )
                   else
                     GravarHistorico('CCe :'+ACBrNFe1.WebServices.Retorno.xMotivo,
                      cdsNotas.FieldByName('NF_REGISTRO').AsInteger, ACBrNFe1.WebServices.EnvEvento.cStat );
                   BuscaHistorico;
                   btnEmailEventoClick(nil);
                end;
                 MessageDlg('Não gravado Cce: '+e.message, mtInformation, [mbOK], 0);
                 ResultEvento := False;
              end;
            end;
             if ResultEvento then
             begin


               if (ACBrNFe1.WebServices.EnvEvento.cStat = 128)  //evento processado
                and(ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat = 135) then // Evento registrado e vinculado a NF-e
               begin
                 //grava histórico das notas
                  GravarHistorico('Carta correção seq n.'+inttostr(ACBrNFe1.EventoNFe.Evento.items[0].infEvento.nSeqEvento) + ' : '
                             + ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo,
                         cdsNotas.FieldByName('NF_REGISTRO').AsInteger, ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat );
                  BuscaHistorico;
                  btnEmailEventoClick(nil);
                  GravarSeqCCe(cdsNotas.FieldByName('NF_REGISTRO').AsInteger,ACBrNFe1.EventoNFe.Evento.items[0].infEvento.nSeqEvento);
                  ACBrNFe1.EventoNFe.Evento.items[0].infEvento.detEvento.xCondUso :=  FrmCartaNfe.edCondicoes.Caption;
                  MessageDlg('Carta correção enviado com sucesso', mtInformation, [mbOK], 0);
                  ACBrNFe1.DANFE := ACBrNFeDANFeRL1;
                  ACBrNFe1.ImprimirEvento;
                  cdsNotas.Edit;
                  cdsNotasNF_SEQ_CCE.AsInteger := ACBrNFe1.EventoNFe.Evento.items[0].infEvento.nSeqEvento;
                  cdsNotas.Post;
                  BuscaHistorico;
               end
               else
               begin
                 //grava histórico das notas
                  GravarHistorico('Carta correção seq n.'+inttostr(ACBrNFe1.EventoNFe.Evento.items[0].infEvento.nSeqEvento) + ' : '
                             + ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo,
                         cdsNotas.FieldByName('NF_REGISTRO').AsInteger, ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat );
                 if ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat = 573 then
                   GravarSeqCCe(cdsNotas.FieldByName('NF_REGISTRO').AsInteger,ACBrNFe1.EventoNFe.Evento.items[0].infEvento.nSeqEvento);
                 MessageDlg('Não gravado', mtInformation, [mbOK], 0);
                 BuscaHistorico;
                 btnEmailEventoClick(nil);



               end;

             end;
       end;
      end;
    finally
      ACBrNFe1.DANFE := ACBrNFeDANFEFR1;
      FrmCartaNfe.Destroy;
      FrmCartaNfe := nil; //  nil é - From Assigned = False
    end;

  end
  else
    raise Exception.Create('Sem XML');



end;

procedure TfrmNfe40.btnLimparCertificadosClick(Sender: TObject);
begin
  inherited;
  ACBrNFe1.SSL.DescarregarCertificado;

end;

procedure TfrmNfe40.JvImage22Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmNfe40.lempresaPrint(Sender: TObject);
begin
  inherited;
    tpplabel(sender).Text := dbinicio.empresa.RAZAO;
end;

procedure TfrmNfe40.lfiltroPrint(Sender: TObject);
begin
  inherited;
    tpplabel(sender).Text:=filtro;
end;

procedure TfrmNfe40.miDesmarcartudoClick(Sender: TObject);
begin
  inherited;
  SelecionarTudo(False);
end;

procedure TfrmNfe40.miPrincipalClick(Sender: TObject);

begin
  inherited;
  try
   cdsNotas.DisableControls;
   cdsNotas.Addindex('DataNota', 'NF_EMISSAO;NF_NOTANUMBER', []);
   cdsNotas.IndexName := 'DataNota';
   cdsNotas.First;
   cdsNotas.FetchOnDemand := False;
    while not (cdsNotas.GetNextPacket = 0) do
      cdsNotas.GetNextPacket;
   RpNotasMod1.DeviceType := 'Screen';
   RBuilderPreview(RpNotasMod1);
  finally
    cdsNotas.DeleteIndex('DataNota');
    cdsNotas.EnableControls;
  end;
end;

procedure TfrmNfe40.miRelAgrupadoCFOPClick(Sender: TObject);
Var existe : boolean;

begin
  inherited;
   cdsNOTACFOP.Close;
   qNotaCFOP.CommandText :=  ' SELECT CAST(it.NTP_CFOP AS varchar(4))  as OPE_NATUREZA, Nf_status_nfe, COALESCE (NF_NUM_NFCE,NF_NUM_NFE) NOTA,OPE_TIPO_OPERACAO,      '+
                             '     nf_enviado_nfe_email,NF.ped_codigo,NF_NUM_NFE, '+
                             ' NF.NF_REGISTRO, NF_NOTANUMBER, NF_EMISSAO, '+
                             ' cl.CLI_CODIGO, cl.CLI_RAZAO, ' +
                             ' cl.CLI_CIDADE, cl.CLI_UF,NF_IFRETE,NF_ISEGURO,'+
                             ' ((it.NF_QTDE * COALESCE(it.NF_PRECO,0))+  COALESCE( it.NF_VLSUBST,0) +it.NF_IPIVALOR+NF_IFRETE +NF_ISEGURO+NF_IDESP_ACES-NF_IDESCTO1   ) AS NF_TOT_NOTA, '+
                             ' nf_totalitem,  it.NF_ICMSVALOR nf_vl_icms, NF_VLSUBST nf_vl_subtrib,it.NF_IPIVALOR  nf_vl_ipi, it.NF_QTDE * COALESCE(it.NF_PRECO,0) nf_tot_prod, nf_chave_nfe, '+
                             ' NF_PROTOCOLO_AUTORIZACAO, NF_PROTOCOLO_NFE_CANC, NF_PROTOCOLO_NFE, NF_SEQ_CCE, nf.NF_VL_DESCTO, nf.ope_codigo, CLI_EMAIL, NF_NUM_NFCE            '+
                             ' FROM NF0001 nf '+
                             '  JOIN NF_IT01 IT ON (IT.NF_IT_NOTANUMER = NF.NF_NOTANUMBER AND IT.EMP_CODIGO = NF.EMP_CODIGO  ) '+
                             '  JOIN CLI0000 cl on (nf.CLI_CODIGO = cl.CLI_CODIGO)                                             '+
                             ' LEFT JOIN OPE0000 ope ON (ope.OPE_CODIGO = it.OPE_CODIGO )                                      '+
                              iif( condicaosql <> '', 'WHERE ' + condicaoSQL,'') +
                              'ORDER BY 1  ,2, 3 ';
  cdsNOTACFOP.Open;

  try
    Screen.Cursor := crHourGlass;
    Fcfop_venda :=0;
    Fcfop_compra:=0;
    Fcfop_outros:=0;
    Fcfop_devoucao:=0;
    cdsNOTACFOP.First;
    while not cdsNOTACFOP.eof do
    begin
      if cdsNOTACFOPOPE_TIPO_OPERACAO.AsString = 'V' then
        Fcfop_venda := Fcfop_venda + cdsNOTACFOPnf_totalitem.AsFloat
      else if cdsNOTACFOPOPE_TIPO_OPERACAO.AsString = 'C' then
        Fcfop_compra := Fcfop_compra + cdsNOTACFOPnf_totalitem.AsFloat
      else if cdsNOTACFOPOPE_TIPO_OPERACAO.AsString = 'D' then
       Fcfop_devoucao := Fcfop_devoucao + cdsNOTACFOPnf_totalitem.AsFloat
       else
        Fcfop_outros := Fcfop_outros + cdsNOTACFOPnf_totalitem.AsFloat;


      cdsNOTACFOP.next;
    end;


   RpNotasMod2.DeviceType := 'Screen';
   RBuilderPreview(RpNotasMod2);
  finally

    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmNfe40.miselecionarTudoClick(Sender: TObject);
begin
 SelecionarTudo(True);
end;

procedure TfrmNfe40.PadroesPesquisa;
begin
  RxDataInicial.Date := Date-45;
  RxDataFinal.Date := Date;
  cbCampo.ItemIndex := 0;
  edValorDireto.Text := '';
  PesqCliente.idRetorno := '';
  pesqVendedor.idRetorno := '';
  PesqCliente.Clear;
  PesquisaOper.Clear;
  pesqVendedor.Clear;
  EdClienteCodigo.Clear;
  edVendedorCodigo.Clear;
  PesqEmail := '';
  PesqStatus := '';
end;


procedure TfrmNfe40.pcomprasGetText(Sender: TObject; var Text: string);
begin
  inherited;
  if Fcfop_compra>0 then
    Text := 'Compras : '+FormatFloat('###,###,##0.00',Fcfop_compra)
  else
    Text   := 'Compras : 0,0 '
end;

procedure TfrmNfe40.pdevolucaocfopGetText(Sender: TObject; var Text: string);
begin
  inherited;
  if Fcfop_devoucao>0 then
    Text := 'Devolução : '+FormatFloat('###,###,##0.00',Fcfop_devoucao)
  else
    Text := 'Devolução : 0,0 ';
end;

procedure TfrmNfe40.PesqClienteButtonClick(Sender: TObject);
var
  tcr: tFrmPesquisaClientes;
begin
  inherited;
  tcr:= tFrmPesquisaClientes.Create(self);
  try
      tcr.ShowModal;
      if tcr.modalresult = mrok then
         PesqCliente.idRetorno := tcr.IDRetorno;
  finally
       FreeAndNil(tcr);
  end;
end;

procedure TfrmNfe40.PesqClienteSelect(Sender: TObject);
begin
  inherited;
  if PesqCliente.IdRetorno <> '' then
  begin
   EdClienteCodigo.Text := PesqCliente.IdRetorno ;
   BuscaNotaFiscais;
  end;
end;

procedure TfrmNfe40.pesqVendedorSelect(Sender: TObject);
begin
  inherited;
  if pesqVendedor.idRetorno <> '' then
  begin
   edVendedorCodigo.Text := pesqVendedor.idRetorno;
   BuscaNotaFiscais;

  end;
end;



procedure TfrmNfe40.poutroscfopGetText(Sender: TObject; var Text: string);
begin
  inherited;
  if Fcfop_outros>0  then
     Text := 'Outros : '+FormatFloat('###,###,##0.00',Fcfop_outros)
  else
    text := 'Outros : 0,0';
end;

procedure TfrmNfe40.ppDBText12GetText(Sender: TObject; var Text: string);
begin
  inherited;
  if text = 'A' then
    text := 'Autorizado'
  else if text = 'R' then
    Text := 'Rejeitada'
  else if text = 'C' then
    text := 'Cancelada'
  else if text = 'T' then
     text := 'Transmitida'
  else if text = 'N' then
    text := 'Não enviada'
  else
    text := 'Outros';
end;



procedure TfrmNfe40.pvendaCFOPGetText(Sender: TObject; var Text: string);
begin
  inherited;
  if Fcfop_venda>0 then
    Text := 'Vendas : '+FormatFloat('###,###,##0.00',Fcfop_venda)
  else
    text := 'Vendas: 0,0';

end;

procedure TfrmNfe40.RxDataFinalExit(Sender: TObject);
begin
  inherited;
  BuscaNotaFiscais;
end;

procedure TfrmNfe40.RxDataInicialExit(Sender: TObject);
begin
  inherited;
  BuscaNotaFiscais;
end;

end.
