unit GImpBoletos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, BaseDbForm,
  Dialogs, ExtCtrls, StdCtrls,  Buttons, Grids, DBGrids,  Math, StrUtils ,
  Mask,   Provider, SqlExpr,SqlClientDataSet, ppReport,
  ImgList,   FMTBCd, Data.DBXFirebird, ppDesignLayer, System.ImageList,
  ACBrEnterTab, ACBrBase, ACBrCalculadora, SgDbSeachComboUnit, ACBrBoleto,
  ACBrBoletoFCFortesFr, Datasnap.DBClient, Data.DB, ppModule, ppCtrls, ppPrnabl, ppClass, ppCache, ppBands, ppProd,
  ppDB, ppComm, ppRelatv, raCodMod, ppStrtch, ppMemo, ppDBPipe, ppParameter, SimpleDS,
  { units do envio de mensagem}
  IdMessage, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP,
  IdBaseComponent, IdComponent, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdAttachmentFile, Vcl.Menus, JvMenus, JvExMask, JvToolEdit, ACBrExtenso, ppVar
  ,ACBrBoletoConversao, JvExStdCtrls, JvEdit, JvValidateEdit;

type
  TFrmGimpBoletos = class(TfrmBaseDB)
    Panel5: TPanel;
    ImgBanco: TImage;
    GroupBox2: TGroupBox;
    BoxDuplicata: TGroupBox;
    DBGridDuplicata: TDBGrid;
    dsDuplicata: TDataSource;
    SqlCdsConfImpr: TSQLClientDataSet;
    SqlCdsConfImprBOL_CODBOL: TStringField;
    SqlCdsConfImprBOL_ATIVO: TStringField;
    SqlCdsConfImprBOL_CODBAN: TStringField;
    SqlCdsConfImprBOL_NRLINHA: TStringField;
    SqlCdsConfImprBOL_LOCAL: TStringField;
    SqlCdsConfImprBOL_VENCTO: TStringField;
    SqlCdsConfImprBOL_DTEMIS: TStringField;
    SqlCdsConfImprBOL_CODFAT: TStringField;
    SqlCdsConfImprBOL_ESPDOC: TStringField;
    SqlCdsConfImprBOL_DESESPDOC: TStringField;
    SqlCdsConfImprBOL_ACEITE: TStringField;
    SqlCdsConfImprBOL_DESACEITE: TStringField;
    SqlCdsConfImprBOL_DTPROCE: TStringField;
    SqlCdsConfImprBOL_USOBCO: TStringField;
    SqlCdsConfImprBOL_CARTEIRA: TStringField;
    SqlCdsConfImprBOL_DESCARTEIRA: TStringField;
    SqlCdsConfImprBOL_VLPARC: TStringField;
    SqlCdsConfImprBOL_ESPECIE: TStringField;
    SqlCdsConfImprBOL_DESPECIE: TStringField;
    SqlCdsConfImprBOL_QUANTIDADE: TStringField;
    SqlCdsConfImprBOL_VALOR: TStringField;
    SqlCdsConfImprBOL_VLDOC: TStringField;
    SqlCdsConfImprBOL_JUROMES: TStringField;
    SqlCdsConfImprBOL_DESCABAT: TStringField;
    SqlCdsConfImprBOL_OBSBOL1: TStringField;
    SqlCdsConfImprBOL_OUTDEDU: TStringField;
    SqlCdsConfImprBOL_OBSBOL2: TStringField;
    SqlCdsConfImprBOL_MORAMULTA: TStringField;
    SqlCdsConfImprBOL_OBSBOL3: TStringField;
    SqlCdsConfImprBOL_OUTACRES: TStringField;
    SqlCdsConfImprBOL_OBSBOL4: TStringField;
    SqlCdsConfImprBOL_VLCOBRADO: TStringField;
    SqlCdsConfImprBOL_RAZAO: TStringField;
    SqlCdsConfImprBOL_END: TStringField;
    SqlCdsConfImprBOL_CEP: TStringField;
    SqlCdsConfImprBOL_CID: TStringField;
    SqlCdsConfImprBOL_EST: TStringField;
    SqlCdsConfImprBOL_CNPJ: TStringField;
    SqlCdsConfImprBOL_LOCPGTO: TStringField;
    SqlCdsConfImprBOL_OBS1: TStringField;
    SqlCdsConfImprBOL_OBS2: TStringField;
    SqlCdsConfImprBOL_OBS3: TStringField;
    SqlCdsConfImprBOL_OBS4: TStringField;
    SqlCdsConfImprEMP_CODIGO: TStringField;
    SqlCdsConfDupl: TSQLClientDataSet;
    SqlCdsConfDuplCdU_CODIGO: TStringField;
    SqlCdsConfDuplCdU_DTCADA: TDateField;
    SqlCdsConfDuplCdU_ATIVO: TStringField;
    SqlCdsConfDuplCdU_FONTE: TStringField;
    SqlCdsConfDuplEMP_CODIGO: TStringField;
    SqlCdsConfDuplCdU_NATUREZA: TStringField;
    SqlCdsConfDuplCdU_DTEMISSAO: TStringField;
    SqlCdsConfDuplCdU_FATURA: TStringField;
    SqlCdsConfDuplCdU_VALORD: TStringField;
    SqlCdsConfDuplCdU_NORDEM: TStringField;
    SqlCdsConfDuplCdU_VENCTO: TStringField;
    SqlCdsConfDuplCdU_DESCTODE: TStringField;
    SqlCdsConfDuplCdU_DESCTOATE: TStringField;
    SqlCdsConfDuplCdU_DESCTOS: TStringField;
    SqlCdsConfDuplCdU_CONDESPECIAL: TStringField;
    SqlCdsConfDuplCdU_NOMESACADO: TStringField;
    SqlCdsConfDuplCdU_ENDERECO: TStringField;
    SqlCdsConfDuplCdU_BAIRRO: TStringField;
    SqlCdsConfDuplCdU_CIDADE: TStringField;
    SqlCdsConfDuplCdU_ESTADO: TStringField;
    SqlCdsConfDuplCdU_CEP: TStringField;
    SqlCdsConfDuplCdU_FONE: TStringField;
    SqlCdsConfDuplCdU_PRACA: TStringField;
    SqlCdsConfDuplCdU_ENDECOBRA: TStringField;
    SqlCdsConfDuplCdU_CEPCOBRA: TStringField;
    SqlCdsConfDuplCdU_CNPJ: TStringField;
    SqlCdsConfDuplCdU_INSCRESTADUAL: TStringField;
    SqlCdsConfDuplCdU_DATACEITE: TStringField;
    SqlCdsConfDuplCdU_VLEXTENSO: TStringField;
    SqlCdsConfDuplCdU_LINHAS: TStringField;
    SqlCdsDupl: TSQLClientDataSet;
    SqlCdsDuplFAT_CODIGO: TStringField;
    SqlCdsDuplFPC_NUMER: TStringField;
    SqlCdsDuplCLI_CODIGO: TStringField;
    SqlCdsDuplFPC_DTEMIS: TSQLTimeStampField;
    SqlCdsDuplFPC_VENCTO: TSQLTimeStampField;
    SqlCdsDuplFPC_VLPARC: TFMTBCdField;
    SqlCdsDuplEMP_CODIGO: TStringField;
    SqlCdsDuplCLI_RAZAO: TStringField;
    SqlCdsDuplCLI_ENDERE: TStringField;
    SqlCdsDuplCLI_ENDFAT: TStringField;
    SqlCdsDuplCLI_CIDADE: TStringField;
    SqlCdsDuplCLI_CIDFAT: TStringField;
    SqlCdsDuplCLI_CEP: TStringField;
    SqlCdsDuplCLI_CEPFAT: TStringField;
    SqlCdsDuplCLI_UF: TStringField;
    SqlCdsDuplCLI_UFFAT: TStringField;
    SqlCdsDuplCLI_CGC: TStringField;
    SqlCdsDuplFPC_DESCTO: TFMTBCdField;
    SqlCdsDuplFPC_DTDESC: TSQLTimeStampField;
    SqlCdsDuplFPC_IMPDUP: TStringField;
    SqlCdsDuplFPC_SITPAG: TStringField;
    SqlCdsDuplFAT_OPERACAO: TStringField;
    SqlCdsDuplCLI_BAIRRO: TStringField;
    SqlCdsDuplCLI_INSC: TStringField;
    SqlCdsDuplCLI_FONE: TStringField;
    ppDBDupl: TppDBPipeline;
    DsDupl: TDataSource;
    ppReportDupl: TppReport;
    SqlCdsDuplFAT_VLFAT: TFMTBCdField;
    SqlCdsDuplFPC_OBS: TStringField;
    SqlCdsConfDuplCdU_OBS: TStringField;
    ppDetailBand2: TppDetailBand;
    ppShape1: TppShape;
    ppLine45: TppLine;
    ppLine47: TppLine;
    ppShape3: TppShape;
    ppLine48: TppLine;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppLabel7: TppLabel;
    ppLabel20: TppLabel;
    ppLabel27: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLine46: TppLine;
    ppLine49: TppLine;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLine52: TppLine;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppImage1: TppImage;
    LOGO1: TppImage;
    LBL_EMPRESA: TppLabel;
    LBL_FONE: TppLabel;
    LBL_ENDERECO: TppLabel;
    LBL_CNPJ: TppLabel;
    ppShape2: TppShape;
    ppLine56: TppLine;
    ppShape7: TppShape;
    ppLine57: TppLine;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLine58: TppLine;
    ppLine59: TppLine;
    ppLine60: TppLine;
    ppLine61: TppLine;
    ppLine62: TppLine;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLine63: TppLine;
    ppLine64: TppLine;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    ppLabel117: TppLabel;
    ppLabel118: TppLabel;
    ppLabel119: TppLabel;
    ppLabel120: TppLabel;
    LBL_EXTENSO2: TppLabel;
    ppImage2: TppImage;
    LOGO2: TppImage;
    LBL_EMPRESA1: TppLabel;
    LBL_FONE1: TppLabel;
    LBL_ENDERECO1: TppLabel;
    LBL_CNPJ1: TppLabel;
    ppDBText5: TppDBText;
    ppDBFatura: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBCNPJ1: TppDBText;
    ppDBFONE1: TppDBText;
    ppDBINSCR1: TppDBText;
    ppDBText69: TppDBText;
    ppDBFatura2: TppDBText;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppDBRAZAO2: TppDBText;
    ppDBCNPJ2: TppDBText;
    ppDBINSCR2: TppDBText;
    ppDBFONE2: TppDBText;
    ppDBRAZAO1: TppDBText;
    ppDBCep: TppDBText;
    ppDBCep_Fat: TppDBText;
    ppDB_END1: TppDBText;
    ppDB_MUN1: TppDBText;
    ppDB_PRAC1: TppDBText;
    ppDB_END2: TppDBText;
    ppDB_MUN2: TppDBText;
    ppDB_PRAC2: TppDBText;
    ppDB_CEP2: TppDBText;
    ppDB_CEP2FAT: TppDBText;
    LBL_EXTENSO1: TppLabel;
    ppDBText9: TppDBText;
    ppDBText27: TppDBText;
    ppDBMemo2: TppDBMemo;
    ppDBMemo1: TppDBMemo;
    raCodeModule1: TraCodeModule;
    ImageList1: TImageList;
    qDuplicata: TSQLQuery;
    dspDuplicata: TDataSetProvider;
    CdsDuplicata: TClientDataSet;
    qDuplicataFAT_REGISTRO: TIntegerField;
    qDuplicataFAT_CODIGO: TStringField;
    qDuplicataFPC_NUMER: TStringField;
    qDuplicataFPC_DTEMIS: TSQLTimeStampField;
    qDuplicataCLI_CODIGO: TStringField;
    qDuplicataCLI_RAZAO: TStringField;
    qDuplicataFPC_VLPARC: TFMTBCdField;
    qDuplicataFPC_SITPAG: TStringField;
    qDuplicataFPC_PREVISAO: TStringField;
    qDuplicataFPC_IMPDUP: TStringField;
    qDuplicataBAN_COD_APELIDO: TIntegerField;
    qDuplicataBAN_CODIGO: TStringField;
    qDuplicataFPC_COBTIPO: TStringField;
    qDuplicataFPC_TIPODOC: TStringField;
    qDuplicataBAN_APELIDO: TStringField;
    CdsDuplicataFAT_REGISTRO: TIntegerField;
    CdsDuplicataFAT_CODIGO: TStringField;
    CdsDuplicataFPC_NUMER: TStringField;
    CdsDuplicataFPC_DTEMIS: TSQLTimeStampField;
    CdsDuplicataCLI_CODIGO: TStringField;
    CdsDuplicataCLI_RAZAO: TStringField;
    CdsDuplicataFPC_VLPARC: TFMTBCdField;
    CdsDuplicataFPC_SITPAG: TStringField;
    CdsDuplicataFPC_PREVISAO: TStringField;
    CdsDuplicataFPC_IMPDUP: TStringField;
    CdsDuplicataBAN_COD_APELIDO: TIntegerField;
    CdsDuplicataBAN_CODIGO: TStringField;
    CdsDuplicataFPC_COBTIPO: TStringField;
    CdsDuplicataFPC_TIPODOC: TStringField;
    CdsDuplicataBAN_APELIDO: TStringField;
    CdsDuplicataSelecao: TBooleanField;
    CdsDuplicataCOBRANCA_CC: TStringField;
    CdsDuplicataTIPO_DOC_CC: TStringField;
    qDuplicataFPC_VENCTO: TSQLTimeStampField;
    CdsDuplicataFPC_VENCTO: TSQLTimeStampField;
    Label1: TLabel;
    Label4: TLabel;
    qDuplicataFPC_COBNUM: TStringField;
    CdsDuplicataFPC_COBNUM: TStringField;
    bl1: TACBrBoleto;
    ImpBoleto: TACBrBoletoFCFortes;
    PrinterSetupDialog1: TPrinterSetupDialog;
    qBanco: TSQLQuery;
    cdsDuplicataFPC_DATABOLETO: TSQLTimeStampField;
    qDuplicataFPC_DATABOLETO: TSQLTimeStampField;
    sslsocket: TIdSSLIOHandlerSocketOpenSSL;
    SMTP: TIdSMTP;
    IdMessage1: TIdMessage;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    pmBoletos: TJvPopupMenu;
    miIncluirMensagem: TMenuItem;
    Enviaremaildoboleto1: TMenuItem;
    cdsDuplicataEMAIL: TStringField;
    cdsDuplicataFPC_OBS: TStringField;
    cdsDuplicataFPC_ENVIOEMAIL_BOLETO: TStringField;
    ImageList2: TImageList;
    qDuplicataEMAIL: TStringField;
    qDuplicataFPC_OBS: TStringField;
    qDuplicataFPC_ENVIOEMAIL_BOLETO: TStringField;
    Imagens: TImageList;
    cdsHistorico: TClientDataSet;
    qhistorico: TSQLQuery;
    dspHistorico: TDataSetProvider;
    dsHistorico: TDataSource;
    cdsHistoricodescricao: TStringField;
    cdsDuplicataFPC_NPARCELAS: TSmallintField;
    qDuplicataFPC_NPARCELAS: TSmallintField;
    cdsDuplicatarep_nome: TStringField;
    qDuplicatarep_nome: TStringField;
    cdsDuplicataFPC_STATUS: TStringField;
    qDuplicataFPC_STATUS: TStringField;
    qCli: TSQLQuery;
    ppReportLocacao: TppReport;
    ppParameterList1: TppParameterList;
    qLocacao: TSQLQuery;
    dsLocacao: TDataSource;
    dspLocacao: TDataSetProvider;
    cdsLocacao: TClientDataSet;
    cdsLocacaoFAT_CODIGO: TStringField;
    cdsLocacaoFPC_DTEMIS: TSQLTimeStampField;
    cdsLocacaoCLI_RAZAO: TStringField;
    cdsLocacaoFPC_VLPARC: TFMTBCDField;
    cdsLocacaoFPC_VENCTO: TSQLTimeStampField;
    cdsLocacaoCLI_ENDERE: TStringField;
    cdsLocacaoCLI_CIDADE: TStringField;
    cdsLocacaoCLI_UF: TStringField;
    cdsLocacaoCLI_CEP: TStringField;
    cdsLocacaoCLI_CGC: TStringField;
    cdsLocacaoCLI_INSC: TStringField;
    cdsLocacaoCLI_INSCMUNI: TStringField;
    cdsLocacaoFPC_DESCTO: TFMTBCDField;
    pipeLocacao: TppDBPipeline;
    ACBrExtenso1: TACBrExtenso;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppShape11: TppShape;
    Logo1_loc: TppImage;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppShape12: TppShape;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppShape13: TppShape;
    ppLabel11: TppLabel;
    ppDBText1: TppDBText;
    ppShape14: TppShape;
    ppShape15: TppShape;
    ppShape16: TppShape;
    ppLabel12: TppLabel;
    ppDBText2: TppDBText;
    ppLabel13: TppLabel;
    ppDBText3: TppDBText;
    ppShape17: TppShape;
    ppShape18: TppShape;
    ppShape19: TppShape;
    ppLabel14: TppLabel;
    ppDBText4: TppDBText;
    ppLabel15: TppLabel;
    ppDBText6: TppDBText;
    ppLabel16: TppLabel;
    ppDBText7: TppDBText;
    ppLabel17: TppLabel;
    ppDBText8: TppDBText;
    ppShape20: TppShape;
    ppShape21: TppShape;
    ppShape22: TppShape;
    ppLabel18: TppLabel;
    txtCidadeUF: TppDBText;
    ppLabel19: TppLabel;
    ppDBText14: TppDBText;
    ppLabel21: TppLabel;
    ppDBText13: TppDBText;
    ppLabel22: TppLabel;
    ppDBText15: TppDBText;
    ppLabel23: TppLabel;
    ppDBText16: TppDBText;
    ppShape23: TppShape;
    ppShape24: TppShape;
    ppShape25: TppShape;
    ppShape26: TppShape;
    ppShape27: TppShape;
    ppMemo1: TppMemo;
    ppLabel24: TppLabel;
    ppDBText17: TppDBText;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppDBText18: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppDBText19: TppDBText;
    ppVariable1: TppVariable;
    ppVariable2: TppVariable;
    ppDBText20: TppDBText;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLabel34: TppLabel;
    raCodeModule2: TraCodeModule;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppShape28: TppShape;
    cdsLocacaoPED_OBSERVACAO: TBlobField;
    pipeLocacaoppField14: TppField;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    Panel1: TPanel;
    lRegistroCount: TLabel;
    lvalortotal: TLabel;
    Panel2: TPanel;
    Label7: TLabel;
    Label10: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label6: TLabel;
    PanDuplicata: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    EdtDuplicata: TEdit;
    EditParcela: TEdit;
    Panemissao: TPanel;
    Label13: TLabel;
    cbbTipo: TComboBox;
    DataInicial: TJvDateEdit;
    DataFinal: TJvDateEdit;
    GbTipo: TGroupBox;
    Label2: TLabel;
    RadBoletoBarras: TRadioButton;
    Rad_DuplSist: TRadioButton;
    cbLayOut: TComboBox;
    rad_Locacao: TRadioButton;
    GroupBox1: TGroupBox;
    RadVideo: TRadioButton;
    RadImpressora: TRadioButton;
    BitPesquisa: TBitBtn;
    BitCancelar: TBitBtn;
    EdtBanco: TEdit;
    CbBancos: TSgDbSearchCombo;
    CbxCarteira: TComboBox;
    CbxTipoDoc: TComboBox;
    DataEmissao: TJvDateEdit;
    EdClienteCodigo: TEdit;
    PesqCliente: TSgDbSearchCombo;
    Panel3: TPanel;
    BitImprimir: TBitBtn;
    BitConfig: TBitBtn;
    BitSair: TBitBtn;
    Label8: TLabel;
    dbHistorico: TDBGrid;
    Label14: TLabel;
    Label15: TLabel;
    edTotalRegistros: TJvValidateEdit;
    edValorTotal: TJvValidateEdit;
    procedure FormShow(Sender: tObject);
    procedure BitImprimirClick(Sender: tObject);
    procedure BitSairClick(Sender: tObject);
    procedure EdtBancoExit(Sender: tObject);
    procedure BitPesquisaClick(Sender: tObject);
    procedure BitConfigClick(Sender: tObject);
    procedure DataInicialExit(Sender: tObject);
    procedure DataFinalExit(Sender: tObject);
    procedure EdtDuplicataKeyPress(Sender: tObject; var Key: Char);
    procedure RadBoletoBarrasClick(Sender: tObject);
    procedure SqlCdsDuplAfterScroll(DataSet: TDataSet);
    procedure CdsDuplicataCalcFields(DataSet: TDataSet);
    procedure DBGridDuplicataDrawColumnCell(Sender: tObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGridDuplicataDblClick(Sender: tObject);
    procedure ppDBText37GetText(Sender: tObject; var Text: String);
    procedure FormCreate(Sender: TObject);
    procedure CbBancosSelect(Sender: TObject);
    procedure BitCancelarClick(Sender: TObject);
    procedure LOGO1Print(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure EdtBancoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure miIncluirMensagemClick(Sender: TObject);
    procedure Enviaremaildoboleto1Click(Sender: TObject);
    procedure cdsDuplicataAfterScroll(DataSet: TDataSet);
    procedure cdsDuplicataFPC_NUMERGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsDuplicataSelecaoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure PesqClienteButtonClick(Sender: TObject);
    procedure PesqClienteSelect(Sender: TObject);
    procedure EdClienteCodigoExit(Sender: TObject);
    procedure EdClienteCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdClienteCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure ppLabel1GetText(Sender: TObject; var Text: string);
    procedure ppLabel2GetText(Sender: TObject; var Text: string);
    procedure ppLabel3GetText(Sender: TObject; var Text: string);
    procedure ppLabel4GetText(Sender: TObject; var Text: string);
    procedure ppLabel6GetText(Sender: TObject; var Text: string);
    procedure ppLabel8GetText(Sender: TObject; var Text: string);
    procedure ppLabel10GetText(Sender: TObject; var Text: string);
    procedure ppLabel9GetText(Sender: TObject; var Text: string);
    procedure ppDBText18GetText(Sender: TObject; var Text: string);
    procedure ppDBText14GetText(Sender: TObject; var Text: string);
    procedure ppDBText13GetText(Sender: TObject; var Text: string);
    procedure ppLabel36GetText(Sender: TObject; var Text: string);
    procedure ppLabel37GetText(Sender: TObject; var Text: string);
    procedure DBGridDuplicataTitleClick(Column: TColumn);
    procedure CbxCarteiraChange(Sender: TObject);
    procedure CbxTipoDocChange(Sender: TObject);
    procedure cbLayOutChange(Sender: TObject);
  private

    procedure ImprimirDuplicataSist;
    procedure ImprimirLocacao;
    procedure BuscaDuplicatas;
    function FormataNumeroConta(const pConta:string) : String;
    procedure ImprimirBoletoCodigoBarras (const Email: boolean;const Duplicatas: TClientDataSet );
    var registro : integer;
        arquivo: string;

  public
    procedure BotoesAcesso;
    var wCodBanco : integer;
    function enviarEmailIndy(sPara, sAssunto: String; sMensagem: TStrings; Anexos, sReplyTo: TStrings): boolean;
    procedure GravaHistorico(const FAT_Registro : integer; const msg:string);
    procedure AtualizaEmail ( email :string ; const cli_codigo :string);
    procedure BuscaHistorico(const Fat_reg: integer);
  end;

var
  FrmGimpBoletos: TFrmGimpBoletos;

implementation

uses UTEIS, RWFUNC, ufrmpreviewrb, iniciodb, Email0001, PesquisaClientesForm;

{$R *.dfm}

procedure TFrmGimpBoletos.FormShow(Sender: tObject);
var
  aTexto: string;
begin
 inherited;
 registro := 0;
 DataInicial.Date      := Date;
 DataFinal.Date        := Date;
 CbxCarteira.ItemIndex := 0;
 CbxTipoDoc.ItemIndex  := 0;
 cbLayOut.ItemIndex:= 3;
 cbBancos.clear;
 PesqCliente.idRetorno := '';
 BuscaDuplicatas;
 Arquivo := Self.Name + 'ItemIndex';

 CbxCarteira.ItemIndex := StrToIntDef( LeIni(arquivo, 'ItemIndex', 'CbxCarteira', aTexto) , 0);
 CbxTipoDoc.ItemIndex := StrToIntDef( LeIni(arquivo, 'ItemIndex', 'CbxTipoDoc', aTexto) , 0);
 cbLayOut.ItemIndex := StrToIntDef( LeIni(arquivo, 'ItemIndex', 'cbLayOut', aTexto) , 3);

end;

procedure TFrmGimpBoletos.BitImprimirClick(Sender: tObject);
var it: tBookMark;
begin
     CdsDuplicata.DisableControls;
     it := CdsDuplicata.GetBookMark;
     try

        CdsDuplicata.Filtered := False;
        CdsDuplicata.Filter := 'Selecao = true';
        CdsDuplicata.Filtered := True;

        if (CdsDuplicata.IsEmpty) then
           uteis.aviso('Nenhuma Fatura foi selecionada para impressão')
        else
        begin
            if (RadBoletoBarras.checked ) then
                ImprimirBoletoCodigoBarras(False, cdsDuplicata)
            Else
            if (Rad_DuplSist.checked ) then
                ImprimirDuplicataSist
            Else
            if (rad_Locacao.Checked) then
              ImprimirLocacao;
        end;
        BuscaDuplicatas;
        CdsDuplicata.Filtered := False;
        if it<>Nil then
           if CdsDuplicata.BookmarkValid(it) then
              CdsDuplicata.GotoBookmark(it);
     finally
       CdsDuplicata.EnableControls;

     end;
end;


procedure TFrmGimpBoletos.BitSairClick(Sender: tObject);
begin
     Close;
end;

procedure TFrmGimpBoletos.BotoesAcesso;
begin
     if Assigned(FrmGimpBoletos) then
     begin
          BitImprimir.Enabled := Uteis.AcessoUsuario('FinanceiroEmissão de Boletos e Duplicatas',DBInicio.Usuario.CODIGO,FrmGimpBoletos).Relatorio;
     end;
end;

procedure TFrmGimpBoletos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TFrmGimpBoletos.FormCreate(Sender: TObject);
begin
  inherited;
 // self.Width:=1070;
 // self.Height:=630;
  DataEmissao.Date := date;
  // WindowState := wsMaximized;
end;

procedure TFrmGimpBoletos.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmGimpBoletos := Nil;
end;

procedure TFrmGimpBoletos.EdClienteCodigoExit(Sender: TObject);
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
  BitPesquisa.Click;
end;

procedure TFrmGimpBoletos.EdClienteCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
      PesqCliente.Button.Click;
end;

procedure TFrmGimpBoletos.EdClienteCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Pos(key,'1234567890'+#8)=0 then
     key := #0;
end;

procedure TFrmGimpBoletos.EdtBancoExit(Sender: tObject);
begin
     if EdtBanco.Text<>'' then
     begin
          EdtBanco.Text := StrZero(EdtBanco.Text,4);
          if EdtBanco.Text<>'0000' then
          begin
               cbBancos.IdRetorno := EdtBanco.Text;
               if cbBancos.IdRetorno='' then
                  GeraException('Banco não localizado com este Código!');
          end
          Else
              cbBancos.Clear;
     end
     Else
         cbBancos.Clear;
end;

procedure TFrmGimpBoletos.EdtBancoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
    CbBancos.Button.Click;
end;

procedure TFrmGimpBoletos.CbBancosSelect(Sender: TObject);
begin
     EdtBanco.Text := CbBancos.idRetorno;
     if CbBancos.idRetorno<>'' then
     begin
          if (FileExists(dbInicio.SistemaLocal+'\logo\'+Formatar(CbBancos.idRetorno,3,False,'0')+'.jpg')) then
             ImgBanco.Picture.LoadFromFile(dbInicio.SistemaLocal+'\logo\'+Formatar(CbBancos.idRetorno,3,False,'0')+'.jpg')
          else
             ImgBanco.Picture := nil;
     end;
end;

procedure TFrmGimpBoletos.cbLayOutChange(Sender: TObject);
begin
  inherited;
  GravaIni(arquivo, 'ItemIndex', 'cbLayOut', IntToStr(cbLayOut.ItemIndex));
end;

procedure TFrmGimpBoletos.CbxCarteiraChange(Sender: TObject);
begin
  inherited;
  GravaIni(arquivo, 'ItemIndex', 'CbxCarteira', IntToStr(CbxCarteira.ItemIndex));
end;

procedure TFrmGimpBoletos.CbxTipoDocChange(Sender: TObject);
begin
  inherited;
  GravaIni(arquivo, 'ItemIndex', 'CbxTipoDoc', IntToStr(CbxTipoDoc.ItemIndex));
end;

procedure TFrmGimpBoletos.cdsDuplicataAfterScroll(DataSet: TDataSet);
begin
  inherited;
//  if registro = 0 then
    BuscaHistorico(CdsDuplicataFAT_REGISTRO.AsInteger);
end;

procedure TFrmGimpBoletos.BitPesquisaClick(Sender: tObject);
begin
  BuscaDuplicatas;
  if CdsDuplicata.IsEmpty then
  begin
       uteis.aviso('Faturas(s) não encontrada(s) no período e Banco Informado ou já está liquidada(s)  !');
       DataInicial.SetFocus;
  end;
end;

procedure TFrmGimpBoletos.BuscaDuplicatas;
var ct, tp, campo:string ;
    whe: boolean ;
    valortotal: double;
   Procedure SqlAdd( stt: string ) ;
   begin
        if stt<>''  then
        begin
             if whe then
                qDuplicata.sql.add('Where '+stt)
             else
                qDuplicata.sql.add('and '+stt);
             whe:=False;
        end;
   end;
///
begin
  whe:=True;
  CdsDuplicata.DisableControls;
  Try
     Screen.Cursor := crHourGlass;
     CdsDuplicata.filtered := False;
     CdsDuplicata.Filter := '';
     CdsDuplicata.Close;
     qDuplicata.SQL.Clear;
     qDuplicata.sql.add('Select F1.FAT_REGISTRO, F1.FAT_CODIGO, F1.FPC_NUMER, F1.FPC_DTEMIS, F1.FPC_VENCTO, ');
     qDuplicata.sql.add('       F1.CLI_CODIGO, C1.CLI_RAZAO, F1.FPC_VLPARC, F1.BAN_COD_APELIDO, F1.BAN_CODIGO, ');
     qDuplicata.sql.add('       F1.FPC_SITPAG, FPC_STATUS, F1.FPC_PREVISAO, F1.FPC_COBTIPO, F1.FPC_TIPODOC, F1.FPC_IMPDUP, f1.FPC_NPARCELAS ,  ');
     qDuplicata.sql.add('       F1.FPC_COBNUM,B1.BAN_APELIDO, F1.FPC_DATABOLETO, C1.CLI_EMAIL as EMAIL, F1.FPC_OBS, FPC_ENVIOEMAIL_BOLETO, rep_nome ');
     qDuplicata.sql.add('from FAT_PC01 F1 ');
     qDuplicata.sql.add('     JOIN CLI0000 C1 ON (C1.CLI_CODIGO = F1.CLI_CODIGO) ');
     qDuplicata.sql.add('     JOIN BAN0000 B1 ON (B1.BAN_CODIGO = F1.BAN_CODIGO) ');
     qDuplicata.sql.add('     LEFT JOIN FORMA_PAGAMENTO fp ON ((fp.FPG_REGISTRO = F1.FPG_REGISTRO) AND (FPG_BOLETO = ''S'' )) ');
     qDuplicata.sql.add('     left JOIN REP0000 re ON (re.rep_codigo = c1.rep_codigo) ');
     SqlAdd( ConcatSe( 'F1.', dbInicio.ExclusivoSql('RECEBER') ) );
     if EdtDuplicata.Text<>'' then
     begin
          SqlAdd( 'F1.FAT_CODIGO='+qStr(strzero(EdtDuplicata.Text, 6) ) );
          if EditParcela.Text <> '' then
             SqlAdd( 'F1.FPC_NUMER='+qStr(strzero(EditParcela.Text, 2) ) );
     end
     Else
     begin
          SqlAdd( 'F1.FPC_SITPAG = '+qStr('P') );
          SqlAdd( 'F1.FPC_PREVISAO = '+qStr('N') );
          SqlAdd( 'F1.FPC_EXCLUSAO = '+qStr('N') );

          ct := '';
          case  CbxCarteira.ItemIndex of
           1: ct := 'CT';               //CT = CARTEIRA
           2: ct := 'CS';               //CS = COBRANCA SIMPLES
           3: ct := 'CC';               //CC = COBRANCA CAUCIONADA
           4: ct := 'Cd';               //Cd = COBRANCA DESCONTADA
           5: ct := 'SR';               //SR = COBRANCA SEM REGISTRO
           6: ct := 'CR';               //CR = COBRANCA RAPIDA
           7: ct := 'CQ';
           8: ct := 'CH';
          end;
          tp := '';
          case CbxTipoDoc.ItemIndex of
           1: tp := 'DP';
           2: tp := 'BL';
           3: tp := 'RC';
           4: tp := 'CH';
           5: tp := 'DN';
           6: tp := 'OU';
           7: tp := 'CC';
          end;
          if ct<>'' then
             SqlAdd( 'F1.FPC_COBTIPO='+qStr( ct ) );
          if tp<>'' then
             SqlAdd( 'F1.FPC_TIPODOC='+qStr( tp ) );

          campo := iif(cbbTipo.ItemIndex = 0,'FPC_VENCTO','FPC_DTEMIS');
          if DataInicial.Date<>0 then
             SqlAdd( 'F1.'+campo+'>='+DateToSql( DataInicial.Date ) );
          if DataFinal.Date<>0 then
             SqlAdd( 'F1.'+campo+'<='+DateToSql( DataFinal.Date ) );
          if EdtBanco.Text<>'' then
             SqlAdd('F1.BAN_CODIGO ='+qStr( cbBancos.idRetorno ) );
       if PesqCliente.idRetorno<> '' then
        SqlAdd(' C1.CLI_CODIGO = '+QuotedStr(PesqCliente.idRetorno));

     end;
     qDuplicata.sql.add('ORDER BY F1.FPC_VENCTO DESC,C1.CLI_RAZAO' );
     if DBInicio.IsDesenvolvimento then
      CopyToClipBoard(qDuplicata.SQL.Text);
     try
       CdsDuplicata.Open;
     except
        on e:exception do
          begin
            uteis.Aviso(e.Message);
          end;
     end;
     valortotal:=0;
     CdsDuplicata.DisableControls;
     while not CdsDuplicata.Eof do
     begin
       valortotal:= valortotal +   CdsDuplicataFPC_VLPARC.AsFloat;
       CdsDuplicata.Next;
     end;
    CdsDuplicata.EnableControls;
  FINALLY
     Screen.Cursor := crDefault;
     CdsDuplicata.EnableControls;
     lRegistroCount.Caption := 'Nº boletos : '+ IntToStr(CdsDuplicata.RecordCount);;
     lvalortotal.Caption := ' Valor total: R$ '+FormatFloat('###,###,##.00',valortotal);
     edValorTotal.Value := 0;
     edTotalRegistros.Value := 0;
  END;
end;

procedure TFrmGimpBoletos.BuscaHistorico(const Fat_reg: integer);
begin
  cdsHistorico.Close;
  qhistorico.CommandText :=
  'SELECT (EXTRACT(DAY FROM FPH_DATAHORA) ||''/'' || EXTRACT(MONTH FROM FPH_DATAHORA) || ''/'' || EXTRACT(YEAR FROM FPH_DATAHORA) || '' ''|| '+
  'EXTRACT(HOUR FROM FPH_DATAHORA) || '':'' || EXTRACT(MINUTE FROM FPH_DATAHORA) || '': ''|| FPH_DESCRICAO) as descricao FROM FAT_PC01_HISTORICO '+
  'WHERE FAT_REGISTRO = ' + IntToStr(Fat_reg);
  cdsHistorico.Open;
end;

procedure TFrmGimpBoletos.BitCancelarClick(Sender: TObject);
begin
  inherited;
  FormShow(nil);
end;

procedure TFrmGimpBoletos.BitConfigClick(Sender: tObject);
begin
    PrinterSetupDialog1.Execute;
end;

procedure TFrmGimpBoletos.DataInicialExit(Sender: tObject);
begin
    if not TestaDataStr(DataInicial.Text) then
       DataInicial.setfocus;
    if (DataFinal.Date=0) then
       DataFinal.Text := DataInicial.Text;
end;

procedure TFrmGimpBoletos.DataFinalExit(Sender: tObject);
begin
    if not TestaDataStr(DataFinal.Text) then
       begin
          DataFinal.setfocus;
       end
    else
       begin
           if DataInicial.Date > DataFinal.Date then
              begin
                 //beep;
                 uteis.aviso('Data final informada não pode ser menor que Data Inicial !');
                 DataInicial.SetFocus;
              end;
       end;
end;



procedure TFrmGimpBoletos.ImprimirBoletoCodigoBarras (const Email: boolean;const Duplicatas: TClientDataSet);
var vCodBanco, wDigSantander: string;
    wqualNossoNumero : integer;
    Titulo: TACBrTitulo;
    lMulta: Currency ;
    lDias, PadraoCarne, j: Integer;
    clone: TClientDataSet;
    CaminhoArquivo : string;

    qtdeNaoImp : integer;
begin

    //  if (cbBancos.IdRetorno='') and (cdsdupli BAN_CODIGO = '') then
    //    GeraException('Selecione o Banco!');
     bl1.ListadeBoletos.Clear;

   clone:= TClientDataSet.Create(nil);
   try
     Screen.Cursor := crHourGlass;
     clone.CloneCursor(Duplicatas,false);
     clone.First;
     qtdeNaoImp := 0 ;
     while not clone.Eof do
      begin

        qAux.Close;
        qAux.Sql.Text := 'Select BAN_CODIGO, BAN_APELIDO, BAN_COD_APELIDO, BAN_COD_CART, BAN_N_CARTEIRA, BAN_ESPECIE_COB, BAN_ACEITE, '+
                         '       BAN_JUROMES, BAN_CODAGE, BAN_CODAGEDIG, BAN_DIGCONTA, BAN_CONTA, BAN_COD_CART, BAN_N_CARTEIRA, '+
                         '       BAN_SEQ_NOSSONUMERO, BAN_CODNOBANCO, ban_codigo_transmissao, ban_carteira_registro, ban_multa, '+
                         '       BAN_MULTA_DIAS, ban_instrucao1, ban_instrucao2, ban_protprazo, BAN_JUROMES, ban_convenio, BAN_COBTIPO,ban_leiaute,  '+
                         '       BAN_RESP_BOLETO, BAN_TAM_NONUM, BAN_TIPO_JUROS '+
                         'From Ban0000 '+
                         'Where ban_codigo='+qStr(clone.FieldByName('BAN_CODIGO').AsString) ;
        qAux.Open;
        if (qAux.FieldByName('BAN_RESP_BOLETO').AsString = 'B') and (clone.FieldByName('FPC_COBNUM').asstring='') then
        begin
          if clone.RecordCount > 1 then
          begin
            inc(qtdeNaoImp) ;
            clone.next;
            continue;
          end
          else
            raise Exception.Create('Nosso número não pode estar em branco quando é gerado pelo banco.');

        end;

        if qAux.FieldByName('ban_leiaute').AsInteger = 2 then
          bl1.LayoutRemessa :=c240
        else
          bl1.LayoutRemessa := c400;

        vCodBanco:=StrZero(qAux.fieldbyname('BAN_COD_APELIDO').ASSTRING,3);
        bl1.banco.TipoCobranca := bl1.GetTipoCobranca(StrToIntDef(vCodBanco,0));   // pega o banco
        BL1.Banco.TamanhoMaximoNossoNum := StrToIntDef(qAux.fieldbyname('BAN_TAM_NONUM').AsString,11);
        bl1.Cedente.Convenio := qAux.fieldbyname('ban_convenio').AsString ;
        bl1.Cedente.Agencia := qAux.fieldbyname('BAN_CODAGE').AsString;
        bl1.Cedente.AgenciaDigito := qAux.fieldbyname('BAN_CODAGEDIG').AsString;
        bl1.Cedente.Conta := FormataNumeroConta( qAux.FieldByname('BAN_CONTA').AsString );
        bl1.Cedente.ContaDigito := qAux.fieldbyname('BAN_DIGCONTA').AsString;

        bl1.Cedente.Nome := dbInicio.Empresa.Razao;
        bl1.Cedente.Logradouro := dbInicio.Empresa.Endereco;
        bl1.Cedente.Bairro := dbInicio.Empresa.Bairro ;
        bl1.Cedente.Cep := dbInicio.Empresa.Cep ;
        bl1.Cedente.Cidade := dbInicio.Empresa.Cidade ;
        bl1.Cedente.UF := dbInicio.Empresa.UF ;
        bl1.Cedente.CNPJCPF := dbInicio.Empresa.CNPJ_CnPF;
        bl1.Cedente.telefone := dbInicio.Empresa.Fone;

        if (bl1.banco.TipoCobranca = cobSantander) or (bl1.banco.TipoCobranca = cobBancoob)  then // BUG ACBR COBRANÇA SANTANDER - colocar aqui : NRO.CARTEIRA
           bl1.Cedente.Modalidade := qAux.fieldbyname('BAN_N_CARTEIRA').AsString ;

        if (dbInicio.empresa.sEmpresaPadraoBoleto <> '') then
        begin
             qAux3.Close;
             qAux3.SQL.Text := 'SELECT * FROM EMP0000 WHERE EMP_CODIGO = '+qStr(dbInicio.empresa.sEmpresaPadraoBoleto);
             qAux3.Open;
             if not (qAux3.IsEmpty) then
             begin
                 bl1.Cedente.Nome := qAux3.FieldByName('EMP_RAZAO').AsString;
                 bl1.Cedente.Logradouro := qAux3.FieldByName('EMP_ENDERE').AsString;
                 bl1.Cedente.Bairro := qAux3.FieldByName('EMP_bairro').AsString;
                 bl1.Cedente.Cep := qAux3.FieldByName('EMP_CEP').AsString;
                 bl1.Cedente.Cidade := qAux3.FieldByName('EMP_CIDADE').AsString;
                 bl1.Cedente.UF := qAux3.FieldByName('EMP_UF').AsString;
                 bl1.Cedente.CNPJCPF := qAux3.FieldByName('EMP_CGC').AsString;
                 bl1.Cedente.telefone := qAux3.FieldByname('EMP_FONE').AsString;
             end;
             qAux3.Close;
        end;

      bl1.Cedente.CodigoCedente := qAux.FieldByname('ban_convenio').AsString; // qAux.FieldByname('BAN_CODNOBANCO').AsString;
      bl1.Cedente.CodigoTransmissao:= qAux.fieldbyname('ban_codigo_transmissao').asstring;
      if bl1.Banco.TipoCobranca = cobCaixaEconomica then
      begin
       // versao Versão ‘101’ 6 digitos
       //versao Versão ‘107’ 7 ditigos
        if Length( qAux.FieldByname('ban_convenio').AsString) = 7 then
        begin
          if bl1.LayoutRemessa = c400 then
            bl1.Banco.LayoutVersaoArquivo := 007
          else
            bl1.Banco.LayoutVersaoArquivo := 107
        end
        else
        begin
          if bl1.LayoutRemessa = c400 then
            bl1.Banco.LayoutVersaoArquivo := 0
          else
            bl1.Banco.LayoutVersaoArquivo := 101  ;
        end;

      end;

      if qAux.fieldbyname('ban_carteira_registro').asstring='S' then
          bl1.Cedente.TipoCarteira:=tctRegistrada
      Else
          bl1.Cedente.TipoCarteira:=tctSimples;

          qAux2.Close;
          qAux2.sql.clear;
          qAux2.sql.add( 'Select F1.*, CLI.CLI_RAZAO, CLI.CLI_CGC, CLI.CLI_ENDERE, CLI.CLI_BAIRRO, CLI.CLI_CIDADE, CLI.CLI_UF, CLI.CLI_CEP, ');
          qAux2.sql.add( '       CLI.CLI_ENDFAT, CLI.CLI_CIDFAT, CLI.CLI_CEPFAT, CLI.CLI_UFFAT, CLI.CLI_EMAIL_ALTERNATIVO,CLI.CLI_EMAIL ');
          qAux2.sql.add( 'FROM FAT_PC01 F1 ');
          qAux2.sql.add( '     JOIN CLI0000 CLI ON (CLI.CLI_CODIGO = F1.CLI_CODIGO)' );
          qAux2.sql.add( 'WHERE F1.FAT_REGISTRO = '+qStr(clone.FieldByName('FAT_REGISTRO').AsString) );
          qAux2.sql.add('      '+ConcatSe( ' AND F1.', dbInicio.ExclusivoSql('RECEBER') ) );
          qAux2.Open;

          Titulo := bl1.CriarTituloNaLista;

          with Titulo do
          begin

               Sacado.NomeSacado := qAux2.FieldByname('CLI_RAZAO').AsString;
               Sacado.CNPJCPF := qAux2.FieldByname('CLI_CGC').AsString;
               if (qAux2.FieldByName('CLI_ENDFAT').AsString <> '') and (qAux2.FieldByName('CLI_CIDFAT').AsString <> '') then
               begin
                    Sacado.Logradouro :=AnsiUpperCase( qAux2.FieldByname('CLI_ENDFAT').AsString);
                    Sacado.Cidade := AnsiUpperCase(qAux2.FieldByname('CLI_CIDFAT').AsString);
                    Sacado.UF := qAux2.FieldByname('CLI_UFFAT').AsString;
                    Sacado.CEP := qAux2.FieldByname('CLI_CEPFAT').AsString;
               end
               ELSE
               begin
                    Sacado.Logradouro := AnsiUpperCase( qAux2.FieldByname('CLI_ENDERE').AsString);
                    Sacado.Bairro :=AnsiUpperCase( qAux2.FieldByname('CLI_BAIRRO').AsString);
                    Sacado.Cidade := AnsiUpperCase(qAux2.FieldByname('CLI_CIDADE').AsString);
                    Sacado.UF := qAux2.FieldByname('CLI_UF').AsString;
                    Sacado.CEP := qAux2.FieldByname('CLI_CEP').AsString;
               end;
               Sacado.Email := qaux2.FieldByName('CLI_EMAIL_ALTERNATIVO').AsString;
               {
               if (bl1.banco.TipoCobranca = cobBancoDoBrasil) then
                   LocalPagamento := 'PAGÁVEL EM QUALQUER BANCO ATÉ O VENCIMENTO.Após,atualize o boleto no site bb.com.br.'
               else
               if (bl1.banco.TipoCobranca = cobItau ) then
                  LocalPagamento := 'ATÉ O VENCIMENTO PAGUE PREFERENCIALMENTE NO ITAÚ OU BANERJ'
               else
               if (bl1.banco.TipoCobranca = cobBradesco ) then
                  LocalPagamento := 'PAGÁVEL PREFERENCIAMENTE NAS AGENCIAS BRADESCO'
               else
               if  (bl1.banco.TipoCobranca = cobCaixaEconomica ) then
                   LocalPagamento := 'PAGÁVEL PREFERENCIAMENTE NAS AGENCIAS LOTÉRICAS ATÉ O VALOR LIMITE'
               else
                  LocalPagamento := 'PAGÁVEL EM QUALQUER BANCO ATÉ O VENCIMENTO';
               }

               LocalPagamento := BuscaUmDadoSqlAsString('SELECT PMT_LOC_PAGTO FROM PRMT0001 WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.Empresa.EMP_CODIGO));

               Vencimento := qAux2.FieldByname('FPC_VENCTO').AsDateTime;
               if (DataEmissao.Date = 0 ) or (DataEmissao.Text =  '  /  /    ') then
                 DataDocumento := qAux2.FieldByname('FPC_DTEMIS').AsDateTime
               else
                 DataDocumento := DataEmissao.Date;


               NumeroDocumento := qAux2.FieldByname('FAT_CODIGO').AsString;
               IF qAux2.FieldByname('FPC_NUMER').AsString<>'' then
                  NumeroDocumento := NumeroDocumento + '/' + qAux2.FieldByname('FPC_NUMER').AsString;

               if qAux.FieldByname('BAN_ESPECIE_COB').AsString = '01' then
                  EspecieDoc := 'DM'
               Else
                  EspecieDoc := 'DS';

               If qAux.FieldByName('BAN_ACEITE').AsString = 'A' then
                  Aceite := atSim
               Else
                  Aceite := atNao;

               DataProcessamento := Now;

               if (bl1.banco.TipoCobranca = cobBancoDoBrasil) then
                  Carteira := qAux.fieldbyname('BAN_COD_CART').AsString   //tirei variacao(BAN_N_CARTEIRA) senao da erro cod.barras fica com 47 posicoes
               else
                  Carteira := qAux.fieldbyname('BAN_N_CARTEIRA').AsString ;

               if qAux.fieldbyname('BAN_COBTIPO').AsString.TOUpper='CC' then // CAUCIONADA
                  CaracTitulo :=  tcCaucionada
               Else
               if qAux.fieldbyname('BAN_COBTIPO').AsString.TOUpper='CD' then // DESCONTADA
                  CaracTitulo :=  tcDescontada
            //   Else
//               if qAux.fieldbyname('BAN_COBTIPO').AsString.TOUpper='SR' then // SEM REGISTRO (?)
               Else
                   CaracTitulo :=  tcSimples;

               if clone.FieldByName('FPC_COBNUM').asstring='' then
               begin
                  CodigoGeracao := '2';
                  NossoNumero :=  BuscaUmDadoSqlAsString( 'select BAN_SEQ_NOSSONUMERO from ban0000 where ban_codigo='+qStr(clone.FieldByName('BAN_CODIGO').AsString) ) ;
                  {Santander ACBR com Bug, quando resto = 10 no manual diz que o digito Verificardor sera 1 o ACbr calcula digito = 0 que é errado}
                  wQualNossoNumero := StrtoInt(NossoNumero);
                  wDigSantander  := Modulo11(InttoStr(wQualNossoNumero), 9, False);
                  // se nosso numero santander deu resto 10 vamos pular este nosso numero para evitar o erro
                  if (bl1.banco.TipoCobranca=cobSantander) and (wDigSantander = '1') then       { digito 1 pelo Modulo11 é o correto e acbr faz errado, entao pulamos}
                  begin
                    wQualNossoNumero := wQualNossoNumero + 1;
                    NossoNumero :=  IntToStr(wQualNossoNumero);
                    ExecSql( 'Update ban0000 set BAN_SEQ_NOSSONUMERO=BAN_SEQ_NOSSONUMERO+2 where ban_codigo='+qStr(clone.FieldByName('BAN_CODIGO').AsString));
                    ExecSql( 'UPDATE FAT_PC01 set FPC_COBNUM = '+qStr(NossoNumero)+',FPC_IMPDUP = '+qStr('S')+ ', FPC_DATABOLETO = '+ DateToSQL(titulo.DataDocumento)+
                               ' where FAT_REGISTRO = '+IntToStr(qAux2.FieldByName('FAT_REGISTRO').AsInteger)  );

                   end
                   else
                   begin
                     ExecSql( 'Update ban0000 set BAN_SEQ_NOSSONUMERO=BAN_SEQ_NOSSONUMERO+1 where ban_codigo='+qStr(clone.FieldByName('BAN_CODIGO').AsString));
                     ExecSql( 'UPDATE FAT_PC01 set FPC_COBNUM = '+qStr(NossoNumero)+',FPC_IMPDUP = '+qStr('S')+ ', FPC_DATABOLETO = '+ DateToSQL(titulo.DataDocumento) +
                               ' where FAT_REGISTRO = '+IntToStr(qAux2.FieldByName('FAT_REGISTRO').AsInteger)  );
                   end;
                 clone.Edit;
                 clone.FieldByName('FPC_COBNUM').AsString := Titulo.NossoNumero;
                 clone.Post;
               end
               Else
               begin
         //           vNNum := clone.FieldByName('FPC_COBNUM').AsString;
//                    if pos('-', vNNum)>0 then
//                       vNNum := GetTextBefore ( vNNum , '-' );
//
//                    if length(vNNum) > 8  then
//                      NossoNumero := StrToIntDef( Copy( vNNum,length(vNNum)-7,8) , 0 ).toString
//                    else
                      NossoNumero := clone.FieldByName('FPC_COBNUM').AsString;
               end;

               ValorDocumento := qAux2.FieldByname('FPC_VLPARC').AsFloat;
               //DiasDeProtesto   := StrToInt( qAux.FieldByname('BAN_PROTPRAZO').AsString);
               ValorAbatimento := 0;
               ValorDesconto := 0;
               DataMoraJuros := Vencimento;
                case qAux.FieldByname('BAN_TIPO_JUROS').AsInteger of
                   1:
                    begin
                      ValorMoraJuros := RoundTo(ValorDocumento * ((qAux.FieldByname('BAN_JUROMES').AsCurrency / 30) / 100), -2) ;
                      CodigoMoraJuros := cjValorDia;
                    end;
                   2:
                    begin
                      ValorMoraJuros := qAux.FieldByname('BAN_JUROMES').AsCurrency;
                      CodigoMoraJuros := cjTaxaMensal;
                    end;
                   3: CodigoMoraJuros := cjIsento;
                end;



               lMulta := qAux.FieldByname('BAN_MULTA').asCurrency ;
               lDias := qAux.FieldByname('BAN_MULTA_DIAS').asInteger ;
               if lMulta <> 0 then
               begin
                    MultaValorFixo := True; // é necessário que seja feito o cálculo pelo programa pois o ACBR trunca os valores aí dá rejeição por parte do banco
                    PercentualMulta := ValorDocumento / 100 * lMulta;
                    // PercentualMulta := lMulta ;
                    DataMulta := Vencimento+lDias ;
               end;

               Mensagem.Text := '';
               if qaux2.FieldByName('FPC_OBS').AsString <> '' then
                  Mensagem.Text :=qaux2.FieldByName('FPC_OBS').AsString;
//               if qaux2.FieldByName('FPC_OBS_DESCTO').AsString <> '' then
//                  Mensagem.Text :=qaux2.FieldByName('FPC_OBS_DESCTO').AsString;
               Mensagem.Text := Mensagem.Text + 'Texto de responsabilidade do cedente:';
               if dbInicio.empresa.textocobranca1<>'' then
                  Mensagem.Text := Mensagem.Text + dbInicio.empresa.textocobranca1+#13;
               if dbInicio.empresa.textocobranca2<>'' then
                  Mensagem.Text := Mensagem.Text + dbInicio.empresa.textocobranca2+#13;
               if dbInicio.empresa.textocobranca3<>'' then
                  Mensagem.Text := Mensagem.Text + dbInicio.empresa.textocobranca3+#13;

               {lMulta := qAux.FieldByname('BAN_MULTA').asCurrency ;
               lDias := qAux.FieldByname('BAN_MULTA_DIAS').asInteger ;
               lValor := 0 ;
               if (lMulta<>0) then
               begin
                    lValor := Uteis.RoundTo(  ValorDocumento * lMulta / 100 , -2 );
                    if lValor<>0 then
                       if lDias>0 then
                          Mensagem.Text := Mensagem.Text + 'APÓS '+inttostr(lDias)+' DIAS DO VENCIMENTO,COBRAR MULTA DE R$'+FORMATFLOAT('###,##0.00',lValor)+' ('+formatfloat('##0.00',lMulta)+'%)'+#13
                       ELSE
                          Mensagem.Text := Mensagem.Text + 'APÓS O VENCIMENTO,COBRAR MULTA DE R$'+FORMATFLOAT('###,##0.00',lValor)+' ('+formatfloat('##0.00',lMulta)+'%)'+#13;
               end;}
               if not MatchStr(qAux.FieldByname('ban_protprazo').AsString,['00','','0']) then
                  DataProtesto := vencimento + qAux.FieldByname('ban_protprazo').asinteger;

               Instrucao1 := qAux.FieldByname('ban_instrucao1').asstring;
               Instrucao2 := qAux.FieldByname('ban_instrucao2').asstring;
               TextoLivre := ' .';
          end;

          clone.Next;
      end;// fim-while clone

     if qtdeNaoImp = clone.RecordCount then
       raise Exception.Create('Nosso número não pode estar em branco quando é gerado pelo banco.');
   finally

     FreeAndNil(clone);
     Screen.Cursor := crDefault;
   end;

   PadraoCarne := 1;
   case cbLayOut.ItemIndex of
      0: impBoleto.Layout:=lPadrao;
      1: impBoleto.Layout:=lCarne;
      2: impBoleto.Layout:=lFatura;
      3: impBoleto.Layout:=lPadraoEntrega;
      4: impBoleto.Layout:=lReciboTopo;
      5: PadraoCarne := 2;
   end;

   for j := 1 to PadraoCarne do
   begin
      if PadraoCarne = 2 then
      begin
        if j = 1 then
          impBoleto.Layout:=lPadrao;
        if j = 2 then
          impBoleto.Layout:=lCarne;
      end;

      impBoleto.DirLogo := dbInicio.sistemalocal+'\bancos\logos';
      if not Email then
        impBoleto.MostrarPreview := RadVideo.Checked
      else
        impBoleto.MostrarPreview := False;

      CaminhoArquivo :=  dbInicio.sistemalocal+'bancos\boleto\';
      CaminhoArquivo := StringReplace(CaminhoArquivo ,'\\','\',[rfReplaceAll,rfIgnoreCase]);
      if not DirectoryExists(CaminhoArquivo) then
          ForceDirectories(CaminhoArquivo);

      if not email then
        impBoleto.NomeArquivo := caminhoarquivo+FormatDateTime('mmddyyyyhhmm',now) + '.pdf'
      else
        impBoleto.NomeArquivo :=caminhoarquivo+
                                qAux2.FieldByname('CLI_RAZAO').AsString  +
                                Duplicatas.FieldByName('FAT_CODIGO').AsString+'-'+Duplicatas.FieldByName('FPC_NUMER').AsString +
                                'Vcto'+FormatDateTime('mm-dd-yyyy',(Duplicatas.FieldByName('FPC_VENCTO').AsDateTime) ) +   '.pdf';
     // bl1.ACBrBoletoFC.MostrarPreview := False; // teste
     if not email then
       bl1.Imprimir;
      bl1.GerarPDF;

   end;


end;



procedure TFrmGimpBoletos.GravaHistorico(const FAT_Registro: integer; const msg:string);
var sql : string;
begin
 sql := 'INSERT INTO FAT_PC01_HISTORICO (FAT_REGISTRO,USU_CODIGO,FPH_DATAHORA,FPH_DESCRICAO ) VALUES (' +
     IntToStr(FAT_Registro) + ',' + DBInicio.Usuario.CODIGO + ','+ DateTimeToSQL(now) +',' +
     QuotedStr(msg)+  ' )';

 ExecSql(sql);
 sql :=  'UPDATE FAT_PC01 SET FPC_ENVIOEMAIL_BOLETO = ''S'' WHERE FAT_REGISTRO = '+ IntToStr(FAT_Registro);
 ExecSql(sql);


end;

procedure TFrmGimpBoletos.EdtDuplicataKeyPress(Sender: tObject;var Key: Char);
begin
     if not (key in ['0'..'9',#8]) then
        Key := #0;
end;

procedure TFrmGimpBoletos.Enviaremaildoboleto1Click(Sender: TObject);
var clone, cloneAux : TClientDataSet;
 email : string;
 msg: String;
 tcr : TfrmEMAIL0001;
 registro: integer;

begin
  inherited;
   clone:= TClientDataSet.Create(nil);
   cloneAux := TClientDataSet.Create(nil);

   try
     Screen.Cursor := crHourGlass;
     clone.CloneCursor(CdsDuplicata,false);
{     clone.First;
     while not clone.Eof do
     begin
       if clone.FieldByName('Selecao').AsBoolean = True then
        CdsDuplicata.RecNo := clone.RecNo;
       clone.Next;
     end;
 }
     cloneAux.CloneCursor(clone,false);
     clone.Filtered := False;
     clone.Filter := 'Selecao = true';
     clone.Filtered := True;
     clone.First;

     while not clone.Eof do
     begin
       registro := clone.RecNo;

       cloneAux.Filtered := False;
       cloneAux.Filter := 'FAT_REGISTRO = '+ IntToStr(clone.FieldByName('FAT_REGISTRO').AsInteger);
       cloneAux.Filtered := True;

       if clone.FieldByName('FPC_COBNUM').AsString = '' then
       begin
        ShowMessage('Boleto fatura '+ clone.FieldByName('FAT_CODIGO').AsString +'/'+ clone.FieldByName('FPC_NUMER').AsString+ ' ainda não impresso e sem "Nosso Número"'  );
        clone.next;
        continue;

       end;
       if NOT (clone.State IN dsEditModes) then
        clone.Edit;
       clone.FieldByName('FPC_ENVIOEMAIL_BOLETO').AsString := 'S';
       clone.Post;
       ImprimirBoletoCodigoBarras(true, cloneAux);
       if dbInicio.Empresa.EmailUserNameFinanceiro = '' then
         raise Exception.Create('Não configurado email do financeiro. Preencha o envio de email no cadastro de empresa.');

       tcr := TfrmEmail0001.Create(Nil);
       try
          tcr.modulo := 'Boleto';
          tcr.titulo := 'Fatura '+ clone.FieldByName('FAT_CODIGO').AsString +'/'+ clone.FieldByName('FPC_NUMER').AsString + ' - R$ ' + FormatFloat('##0.00', CdsDuplicataFPC_VLPARC.AsFloat);
          tcr.sClienteCodigo :=  clone.FieldByName('cli_codigo').AsString;
          tcr.sCaminhoArquivo := impBoleto.NomeArquivo;
          tcr.email_de_enviado := dbInicio.Empresa.EmailUserNameFinanceiro;
          tcr.ssenha := Trim(dbInicio.Empresa.EmailPassworldFinanceiro);
          tcr.nome_envio := DBInicio.Empresa.RAZAO;
          tcr.sEmailCliente   := clone.FieldByName('EMAIL').AsString+';'+DBInicio.Empresa.EmailInterno;
          tcr.sAssunto        := 'Boleto  de '+dbInicio.Empresa.FANTASIA + ' para ' +clone.FieldByName('CLI_RAZAO').asstring + ' - Vcto '+ DateToStr(clone.FieldByName('FPC_VENCTO').AsDateTime)  ;

          tcr.MMsg.Lines.Add('');
          tcr.MMsg.Lines.Add('Prezado cliente, ');
          tcr.MMsg.Lines.Add('');
          tcr.MMsg.Lines.Add(' Segue em anexo o boleto bancário de '+dbInicio.Empresa.FANTASIA+'.');
          tcr.MMsg.Lines.Add('');
          tcr.MMsg.Lines.Add(' Atenciosamente, ');
          tcr.MMsg.Lines.Add('');
          tcr.MMsg.Lines.Add(' '+DBInicio.Usuario.NOME);
          tcr.ProcessarInformacoes;
          if tcr.ssucesso  then
          begin
            email:=  tcr.EdMail.Text;
            msg := 'Email enviado a '+email+' com sucesso';
            GravaHistorico(clone.FieldByName('FAT_REGISTRO').AsInteger, msg);
            GravaHistoricoEmail(tcr.modulo, tcr.EdMail.Text, tcr.titulo, 'C', cdsDuplicataCLI_CODIGO.AsString, Now, DBInicio.Usuario.CODIGO, tcr.sCaminhoArquivo);
            AtualizaEmail(email,clone.FieldByName('cli_codigo').AsString);


          end;
       finally
         FreeAndNil(tcr);
       end;

       clone.Next;
     end;
     BuscaHistorico(clone.FieldByName('FAT_REGISTRO').AsInteger);
   finally
    Screen.Cursor := crDefault;
    clone.First;
    while not clone.Eof do
    begin
      clone.Edit;
      clone.FieldByName('Selecao').AsBoolean := False;
      clone.Post;
    end;
    FreeAndNil(clone);
   end;
   //BitPesquisa.click;
end;

function TFrmGimpBoletos.enviarEmailIndy(sPara, sAssunto: String; sMensagem: TStrings; Anexos, sReplyTo: TStrings): boolean;
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

procedure TFrmGimpBoletos.RadBoletoBarrasClick(Sender: tObject);
Var wCampos : String;
    wResult : Boolean;
begin
     qAux.Close;
     qAux.Sql.Text := 'Select BAN_CODIGO, BAN_APELIDO, BAN_COD_APELIDO, BAN_COD_CART, BAN_N_CARTEIRA, BAN_ESPECIE_COB, BAN_ACEITE, '+
                      '       BAN_JUROMES, BAN_CODAGE, BAN_CODAGEDIG, BAN_DIGCONTA, BAN_CONTA, BAN_COD_CART, BAN_N_CARTEIRA, '+
                      '       BAN_SEQ_NOSSONUMERO, BAN_CODNOBANCO, ban_codigo_transmissao '+
                      'From Ban0000 '+
                      'Where ban_codigo='+cbBancos.IdRetorno ;
     qAux.Open;

     if not (qAux.IsEmpty) then
     begin
          wResult := true;
          wCampos := 'O(s) campo(s) abaixo são obrigatório para gerar o boleto código de barra.'+#13#10;
          wCampos := wCampos + ''+#13#10;
          if qAux.FieldByName('BAN_CODAGE').AsString = '' then
          begin
               wCampos := wCampos + 'Informe o código da agência. No cadastro de Banco !'+#13#10;
               wResult := false;
          end;
          if qAux.FieldByName('BAN_CONTA').AsString = '' then
          begin
               wCampos := wCampos + 'Informe o número da conta. No cadastro de Banco !'+#13#10;
               wResult := false;
          end;
          if qAux.FieldByName('BAN_COD_CART').AsString = '' then
          begin
               wCampos := wCampos + 'Informe o código da carteira. No cadastro de Banco !'+#13#10;
               wResult := false;
          end;
          if qAux.FieldByName('BAN_N_CARTEIRA').AsString = '' then
          begin
               wCampos := wCampos + 'Informe o número da carteira. No cadastro de Banco !'+#13#10;
               wResult := false;
          end;
          if qAux.FieldByName('BAN_CODNOBANCO').AsString = '' then
          begin
               wCampos := wCampos + 'Informe o número de identifição da empresa no banco. No cadastro de Banco !'+#13#10;
               wResult := false;
          end;
          if not wResult  then
             uteis.aviso(pchar(wCampos));
     end;
     qAux.Close;
end;

procedure TFrmGimpBoletos.ImprimirDuplicataSist;

begin
     wSeleciona := 'WHERE P1.FAT_REGISTRO = '+CdsDuplicataFAT_REGISTRO.AsString;

      wSql1 := 'SELECT P1.FAT_CODIGO,P1.FPC_NUMER,P1.CLI_CODIGO,P1.FPC_DTEMIS,P1.FPC_VENCTO,P1.FPC_VLPARC,P1.FPC_DESCTO,P1.FPC_DTDESC,P1.FPC_IMPDUP,';
      wSql2 := 'P1.FPC_SITPAG,P1.FPC_COBTIPO,P1.FPC_TIPODOC,P1.FPC_OBS,P1.EMP_CODIGO,A1.FAT_VLFAT,A1.FAT_OPERACAO,C1.CLI_RAZAO,C1.CLI_ENDERE,C1.CLI_BAIRRO,C1.CLI_CEP,';
      wSql3 := 'C1.CLI_CIDADE,C1.CLI_UF,C1.CLI_FONE,C1.CLI_ENDFAT,C1.CLI_CIDFAT,C1.CLI_CEPFAT,C1.CLI_UFFAT,C1.CLI_CGC,C1.CLI_INSC FROM FAT_PC01 P1 ';
      wSql4 := 'JOIN CLI0000 C1 ON C1.cli_codigo = P1.cli_codigo JOIN FAT0000 A1 ON (A1.FAT_CODIGO = P1.FAT_CODIGO) AND (P1.EMP_CODIGO = A1.EMP_CODIGO) ';
      //
      SqlCdsDupl.CLOSE;
      SqlCdsDupl.CommandText := SQLDEF('RECEBER',wSql1+wSql2+wSql3+wSql4,wSeleciona,'P1.FAT_CODIGO,P1.FPC_NUMER','P1.');
      SqlCdsDupl.Open;
      {Configura LBLS DA DUPLICATA}
      {1º Duplicata}
      LBL_EMPRESA.Caption := dbInicio.Empresa.RAZAO;
      LBL_FONE.Caption    := 'Fone / Fax: '+dbInicio.Empresa.FONE;
      LBL_ENDERECO.Caption:= dbInicio.Empresa.ENDERECO+' - '+dbInicio.Empresa.BAIRRO+' - '+dbInicio.Empresa.CIDADE+' - '+dbInicio.Empresa.UF;
      LBL_CNPJ.Caption    := 'CNPJ: '+dbInicio.Empresa.CNPJ_CNPF+'   I.ESTADUAL: '+dbInicio.Empresa.INSC_EST;
      {2º Duplicata}
      LBL_EMPRESA1.Caption := dbInicio.Empresa.RAZAO;
      LBL_FONE1.Caption    := 'Fone / Fax: '+dbInicio.Empresa.FONE;
      LBL_ENDERECO1.Caption:= dbInicio.Empresa.ENDERECO+' - '+dbInicio.Empresa.BAIRRO+' - '+dbInicio.Empresa.CIDADE+' - '+dbInicio.Empresa.UF;
      LBL_CNPJ1.Caption    := 'CNPJ: '+dbInicio.Empresa.CNPJ_CNPF+'   I.ESTADUAL: '+dbInicio.Empresa.INSC_EST;
      {Busca a Logo da Duplicata}
      if FileExists(dbInicio.Empresa.wPMT_PATH_LOGODUPL) then
      begin
             Logo1.Picture.LoadFromFile(dbInicio.Empresa.wPMT_PATH_LOGODUPL);
             Logo2.Picture.LoadFromFile(dbInicio.Empresa.wPMT_PATH_LOGODUPL);
      end;

      if (RadVideo.checked ) then
         ppReportDupl.DeviceType := 'Screen'
      Else
      if (RadImpressora.checked ) then
         ppReportDupl.DeviceType      := 'Printer';
      RBuilderPreview(ppReportDupl);
end;

procedure TFrmGimpBoletos.ImprimirLocacao;
var ListaRegistro : TStringList;
begin
  ListaRegistro := TStringList.Create;
  try
    CdsDuplicata.First;
    while not CdsDuplicata.Eof do
    begin
      ListaRegistro.Add(CdsDuplicataFAT_REGISTRO.AsString);
      CdsDuplicata.Next;
    end;
    wSeleciona := 'WHERE FAT.FAT_REGISTRO in ( '+ ListaRegistro.DelimitedText + ')'; //+CdsDuplicataFAT_REGISTRO.AsString;
  finally
    ListaRegistro.Free;
  end;

  wSql1 :=  'SELECT CL.CLI_RAZAO, CL.CLI_ENDERE, CL.CLI_CIDADE, CL.CLI_UF, CL.CLI_CEP, CL.CLI_CGC, CL.CLI_INSC, CL.CLI_INSCMUNI,'+
            'FAT.FPC_VLPARC, FAT.FPC_DESCTO, FAT.FAT_CODIGO, FAT.FPC_VENCTO, FAT.FPC_DTEMIS, PD.PED_OBSERVACAO '+
            '  FROM FAT_PC01 FAT JOIN CLI0000 CL ON (CL.CLI_CODIGO = FAT.CLI_CODIGO) JOIN FAT0000 F2 ON (F2.FAT_CODIGO = FAT.FAT_CODIGO) '+
            '  JOIN PED0000 PD ON (PD.PED_CODIGO = F2.PED_CODIGO)';
  qLocacao.close;
  cdsLocacao.Close;
  qLocacao.CommandText := SQLDEF('RECEBER',wSql1,wSeleciona,'FAT.FAT_CODIGO,FAT.FPC_NUMER','FAT.');
  qLocacao.Open;
  RBuilderPreview(ppReportLocacao);
end;

procedure TFrmGimpBoletos.LOGO1Print(Sender: TObject);
begin
  inherited;
// Logo1.Picture.Bitmap.Assign();
  TppImage(Sender).picture.Bitmap:=nil;
  TppImage(Sender).picture.assign( dbInicio.Empresa.Logo );

end;

procedure TFrmGimpBoletos.miIncluirMensagemClick(Sender: TObject);
var clone : TClientDataSet;
 msg: string;
begin
  inherited;
   clone:= TClientDataSet.Create(nil);
   try
     Screen.Cursor := crHourGlass;
     clone.CloneCursor(CdsDuplicata,False);
     clone.Filtered := False;
     clone.Filter := 'Selecao = true';
     clone.Filtered := True;
     clone.First;
     msg:= InputBox('Inserir uma mensagem para todos boletos selecionados','Mensagem','');
     while not clone.Eof do
     begin

      ExecSql('UPDATE FAT_PC01 '+
              '   SET FPC_OBS = '+ QuotedStr(msg)+
              ' WHERE FAT_REGISTRO = '+ IntToStr(clone.FieldByName('FAT_REGISTRO').AsInteger) );
      clone.Next;
     end;
   finally
    FreeAndNil(clone);
    Screen.Cursor := crDefault;
   end;
end;

procedure TFrmGimpBoletos.PesqClienteButtonClick(Sender: TObject);
var tcr : tFrmPesquisaClientes;
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

procedure TFrmGimpBoletos.PesqClienteSelect(Sender: TObject);
begin
  inherited;
  if PesqCliente.IdRetorno <> '' then
    EdClienteCodigo.Text := PesqCliente.IdRetorno
  else
  begin
   PesqCliente.Clear;
   EdClienteCodigo.Clear;

  end;
end;

procedure TFrmGimpBoletos.SqlCdsDuplAfterScroll(DataSet: TDataSet);
begin
     if (Rad_DuplSist.checked ) then
     begin
           LBL_EXTENSO1.Caption := Extenso(SqlCdsDuplFPC_VLPARC.AsCurrency);
           LBL_EXTENSO2.Caption := Extenso(SqlCdsDuplFPC_VLPARC.AsCurrency);
     end;
end;

procedure TFrmGimpBoletos.CdsDuplicataCalcFields(DataSet: TDataSet);
begin
    CdsDuplicataCOBRANCA_CC.AsString := iif(CdsDuplicataFPC_COBTIPO.AsString = ''  ,'',
                                           iif(CdsDuplicataFPC_COBTIPO.AsString = 'CT','Carteira',
                                           iif(CdsDuplicataFPC_COBTIPO.AsString = 'CS','Cobrança Simples',
                                           iif(CdsDuplicataFPC_COBTIPO.AsString = 'CC','Cobrança Caucionada',
                                           iif(CdsDuplicataFPC_COBTIPO.AsString = 'Cd','Cobrança Descontada',
                                           iif(CdsDuplicataFPC_COBTIPO.AsString = 'SR','Cobrança sem Registro',
                                           iif(CdsDuplicataFPC_COBTIPO.AsString = 'CR','Cobrança Rapida',
                                           iif(CdsDuplicataFPC_COBTIPO.AsString = 'CQ','Custodia Cheque','Cheque Descontado'))))))));

    CdsDuplicataTIPO_DOC_CC.AsString := iif(CdsDuplicataFPC_TIPODOC.AsString = ''  ,'',
                                           iif(CdsDuplicataFPC_TIPODOC.AsString = 'DP','Duplicata',
                                           iif(CdsDuplicataFPC_TIPODOC.AsString = 'BL','Boleto',
                                           iif(CdsDuplicataFPC_TIPODOC.AsString = 'RC','Recibo',
                                           iif(CdsDuplicataFPC_TIPODOC.AsString = 'CH','Cheque',
                                           iif(CdsDuplicataFPC_TIPODOC.AsString = 'DN','Dinheiro',
                                           iif(CdsDuplicataFPC_TIPODOC.AsString = 'OU','Outro','Credito Conta')))))));
end;

procedure TFrmGimpBoletos.cdsDuplicataFPC_NUMERGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
   if not cdsDuplicata.IsEmpty then
     Text := Sender.AsString +'/'+IntToStr(cdsDuplicata.FieldByName('fpc_nparcelas').AsInteger);
end;

procedure TFrmGimpBoletos.cdsDuplicataSelecaoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  text := EmptyStr;
end;

procedure TFrmGimpBoletos.DBGridDuplicataDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   if Column.Field = (CdsDuplicataSelecao) then
   begin
        DBGridDuplicata.Canvas.FillRect(Rect);
        if (CdsDuplicataSelecao.AsBoolean) then
           ImageList1.Draw(DBGridDuplicata.Canvas,Rect.Left+03,Rect.Top+1,2)
        else
           ImageList1.Draw(DBGridDuplicata.Canvas,Rect.Left+03,Rect.Top+1,0);
   end;
    //eMAIL
  if Column.Field = (cdsDuplicataFPC_ENVIOEMAIL_BOLETO) then
  begin
       DBGridDuplicata.Canvas.FillRect(Rect);


    if (cdsDuplicataFPC_ENVIOEMAIL_BOLETO.AsString = 'S') then
         Imagens.Draw(DBGridDuplicata.Canvas,Rect.Left+03,Rect.Top+1,0);

  end;

end;
procedure TFrmGimpBoletos.DBGridDuplicataTitleClick(Column: TColumn);

var indice: string;
    existe: boolean;
    clientdataset_idx: tclientdataset;
begin
     clientdataset_idx := TClientDataset(Column.Grid.DataSource.DataSet);

     if clientdataset_idx.IndexFieldNames = Column.FieldName then
     begin
          indice := AnsiUpperCase(Column.FieldName+'_INV');

          try
             clientdataset_idx.IndexDefs.Find(indice);
             existe := true;
          except
                existe := false;
          end;

          if not existe then
             with clientdataset_idx.IndexDefs.AddIndexDef do
             begin
                  Name := indice;
                  Fields := Column.FieldName;
                  Options := [ixDescending];
             end;
          clientdataset_idx.IndexName := indice;
     end
     else
     if Column.Field.FieldKind<>fkCalculated then
         clientdataset_idx.IndexFieldNames := Column.FieldName
     Else
         GeraException('Coluna Não Permite Ordenação!');


end;

procedure TFrmGimpBoletos.AtualizaEmail(email: string;const cli_codigo: string);
var sql :string;
 listaemail, ListaEnviada: TStringList;

 i: integer;
 function retirarSujeira(email :string):string;
 begin
   email:= StringReplace(email,DBInicio.Empresa.EmailInterno,'',[rfIgnoreCase]);
   email:= StringReplace(email,';;','',[rfReplaceAll]);
   email:= StringReplace(email,';;;','',[rfReplaceAll]);
   email:= StringReplace(email,''#$D'', '', [rfReplaceAll]);
   email:= StringReplace(email,''#$A'', '', [rfReplaceAll]);
   if email[Length(email)] = ';' then
     email := Copy(email,1,Length(email)-1);
   result := email;
 end;
begin
 email:= retirarSujeira(email);

 OpenAux('select CLI_EMAIL_ALTERNATIVO from  CLI0000 where cli_codigo = ' + QuotedStr(cli_codigo));
 listaemail := TStringList.Create;
 ListaEnviada := TStringList.Create;
 try
  listaemail.Duplicates := dupIgnore;
  listaemail.StrictDelimiter := True;
  listaemail.Delimiter:= ';';

  ListaEnviada.Duplicates := dupIgnore;
  ListaEnviada.Delimiter := ';';
  ListaEnviada.StrictDelimiter := True;

  ListaEnviada.DelimitedText := email;
  if (qAux.FieldByName('CLI_EMAIL_ALTERNATIVO').AsString <> EmptyStr) then
    listaemail.DelimitedText := retirarSujeira(qAux.FieldByName('CLI_EMAIL_ALTERNATIVO').AsString);

//  Pos(';',listaemail.Text,)
//  listaemail.Text[ Length(listaemail.Text)] = ';'
  for I := 0 to ListaEnviada.Count-1 do
    if (listaemail.IndexOf(ListaEnviada[i]) = -1) and (ListaEnviada[i] <> '') then
      listaemail.Add(ListaEnviada[i]) ;
  email := listaemail.DelimitedText;
 finally
   listaemail.Free;
   ListaEnviada.Free;
 end;

 sql :=
  ' update CLI0000 set CLI_EMAIL_ALTERNATIVO = '+ QuotedStr(email) + ' where cli_codigo = ' + QuotedStr(cli_codigo);
 ExecSql(sql);


end;



function TFrmGimpBoletos.FormataNumeroConta( CONST pConta:string) : String;
var vTam: integer ;
begin
     case qAux.FieldByname('BAN_COD_APELIDO').AsInteger of
          1: vTam := 8;
          237: vTam := 7;
          341: vTam := 5;
     else
         vTam := 11;
     end;
     Result := StrZero( pConta,vTam);
end;

procedure TFrmGimpBoletos.DBGridDuplicataDblClick(Sender: tObject);
var
    clone: TClientDataSet;
    nRegistros: integer;
    vlTotal: double;
begin
  CdsDuplicata.Edit;
  CdsDuplicataSelecao.AsBoolean := not CdsDuplicataSelecao.AsBoolean;
  CdsDuplicata.Post;

  Screen.Cursor := crHourGlass;
  if (not CdsDuplicata.IsEmpty) then
  begin

    clone:= TClientDataSet.Create(nil);
    clone.CloneCursor(CdsDuplicata,false);
    registro := clone.RecNo;
    clone.RecNo := 1;
    clone.DisableControls;
    nRegistros := 0;
    vlTotal := 0;
    while not clone.Eof do
    begin
      if clone.FieldByName('Selecao').AsBoolean = True then
      begin
        vlTotal := vlTotal + clone.FieldByName('FPC_VLPARC').AsCurrency;
        nRegistros := nRegistros + 1;
      end;
      clone.Next;
    end;
    edTotalRegistros.Value := nRegistros;
    edValorTotal.Value := vlTotal;;

    clone.RecNo := registro;
    clone.EnableControls;

  end;

  Screen.Cursor := crDefault;









  exit;

     if (not CdsDuplicata.IsEmpty) then
     begin

            clone:= TClientDataSet.Create(nil);
            clone.CloneCursor(CdsDuplicata,false);
            registro := clone.RecNo;
            clone.RecNo := 1;
            clone.DisableControls;
            while not clone.Eof do
            begin
              if clone.FieldByName('Selecao').AsBoolean = True then
              begin
                clone.Edit;
                clone.FieldByName('Selecao').AsBoolean := false;
                clone.Post;
              end;
              clone.Next;
            end;

            //CdsDuplicata.RecNo := 1;
            //CdsDuplicata.MoveBy(registro -1);

            clone.RecNo := registro;
            clone.EnableControls;


            registro := 0;
     end;
end;

procedure TFrmGimpBoletos.ppDBText13GetText(Sender: TObject; var Text: string);
begin
  inherited;
  if Text <> '' then
    Text := MascaraCNPJ_CPF(Text);
end;

procedure TFrmGimpBoletos.ppDBText14GetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := MascaraCep(Text);
end;

procedure TFrmGimpBoletos.ppDBText18GetText(Sender: TObject; var Text: string);
begin
  inherited;
  ACBrExtenso1.Valor := cdsLocacaoFPC_VLPARC.AsFloat;
  Text :=  ACBrExtenso1.Texto;
end;

procedure TFrmGimpBoletos.ppDBText37GetText(Sender: tObject;  var Text: String);
var stt: string ;
begin
     stt := Trim(Text);
     if Length(stt)>0 then
        if Copy(stt,1,1)='/' then
           stt := Copy (stt,2,Length(stt));
     Text := stt;
end;

procedure TFrmGimpBoletos.ppLabel10GetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text :=ConcatSe( 'IE: ',  DBInicio.Empresa.INSC_EST);
end;

procedure TFrmGimpBoletos.ppLabel1GetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := DBInicio.Empresa.RAZAO;
end;

procedure TFrmGimpBoletos.ppLabel2GetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text:= DBInicio.Empresa.ENDERECO;
end;

procedure TFrmGimpBoletos.ppLabel36GetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := cdsLocacaoPED_OBSERVACAO.AsString;
end;

procedure TFrmGimpBoletos.ppLabel37GetText(Sender: TObject; var Text: string);
begin
  inherited;
  //Text := 'Observação' + cdsLocacaoPED_OBSERVACAO.AsString;
end;

procedure TFrmGimpBoletos.ppLabel3GetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := DBInicio.Empresa.FONE;
end;

procedure TFrmGimpBoletos.ppLabel4GetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := 'CNPJ: ' + DBInicio.Empresa.CNPJ_CNPF;
end;

procedure TFrmGimpBoletos.ppLabel6GetText(Sender: TObject; var Text: string);
begin
  inherited;
  TEXT := DBInicio.Empresa.CEP;
end;

procedure TFrmGimpBoletos.ppLabel8GetText(Sender: TObject; var Text: string);
begin
  inherited;
  TEXT:= DBInicio.Empresa.CIDADE + '-'+DBInicio.Empresa.UF;
end;

procedure TFrmGimpBoletos.ppLabel9GetText(Sender: TObject; var Text: string);
begin
  inherited;
  text:= DBInicio.Empresa.EmailUserName;
end;

end.

