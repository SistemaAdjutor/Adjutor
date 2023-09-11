unit Emp0001;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, baseDbForm,
    Mask, DBCtrls, StdCtrls, ExtCtrls, Buttons, DB, DBTables, RwFunc, idGlobal,
    rxToolEdit, ComCtrls, RxDBComb, JPEG, SqlExpr,SqlClientDataSet, Provider, cxControls,
    cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
    cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, DBClient, DBLocal,
    DBLocalS, Variants, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
    Data.DBXFirebird, SimpleDS, Data.FMTBCd, ACBrEnterTab, ACBrBase, ACBrCalculadora, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack,
    IdSSL, IdSSLOpenSSL, IdMessage, IdBaseComponent, IdComponent,IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient,
    IdSMTPBase, IdSMTP, IdIntercept, ACBrDFe, ACBrNFSe, Vcl.Grids, Vcl.DBGrids, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid;

type TFormEmpresa = class(TfrmBaseDB)
     Label1: TLabel;
    EdtEmp_Codigo: TEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TsNFE: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBeEmp_INSC: TDBEdit;
    DBeEmp_CGC: TDBEdit;
    DBeEmp_email: TDBEdit;
    DbeEmp_fone: TDBEdit;
    DBeEmp_Fax: TDBEdit;
    DBeEmp_cep: TDBEdit;
    DBeEmp_cidade: TDBEdit;
    DBeEmp_endere: TDBEdit;
    DBeEmp_Fantasia: TDBEdit;
    DBeEmp_razao: TDBEdit;
    DbeEMP_HOME: TDBEdit;
    DBEmp_Bairro: TDBEdit;
    Dbe_EmailCompras: TDBEdit;
    DbeEmailVendas: TDBEdit;
    DbeNomeComprador: TDBEdit;
    SpeedButton5: TSpeedButton;
    DBEdit5: TDBEdit;
    rgAmbiente: TDBRadioGroup;
    DBEdit6: TDBEdit;
    Label23: TLabel;
    Label24: TLabel;
    DBEdit7: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    TabSheet3: TTabSheet;
    DBCkSimples: TDBCheckBox;
    Label29: TLabel;
    DbeAliqSimplesICMS: TDBEdit;
    Label30: TLabel;
    DBEdit12: TDBEdit;
    TabSheet4: TTabSheet;
    DBRadioGroup2: TDBRadioGroup;
    GroupBox1: TGroupBox;
    Label32: TLabel;
    DBEdit14: TDBEdit;
    GroupBox2: TGroupBox;
    Label26: TLabel;
    DBEdit8: TDBEdit;
    DBCheckBox3: TDBCheckBox;
    CombCSOSN: TComboBox;
    Label34: TLabel;
    DBRadCRT: TDBRadioGroup;
    DBEdit15: TDBEdit;
    Label36: TLabel;
    tabNFSE: TTabSheet;
    DBRadioGroup4: TDBRadioGroup;
    Panel5: TPanel;
    GroupBox4: TGroupBox;
    DBMemo1: TDBMemo;
    GroupBox5: TGroupBox;
    DBRadModalidade: TDBRadioGroup;
    GroupBox6: TGroupBox;
    Label25: TLabel;
    DBEPis_Aliq: TDBEdit;
    Label41: TLabel;
    Label42: TLabel;
    DBECofins_aliq: TDBEdit;
    DBEIr_aliq: TDBEdit;
    GroupBox7: TGroupBox;
    Label33: TLabel;
    Label35: TLabel;
    Editprox: TEdit;
    DBEditSeqNfe: TDBEdit;
    DBCheckBox4: TDBCheckBox;
    Label14: TLabel;
    DBCheckBox1: TDBCheckBox;
    Label44: TLabel;
    DBEdit11: TDBEdit;
    DBRadioGroup3: TDBRadioGroup;
    DBRadioGroup5: TDBRadioGroup;
    Label43: TLabel;
    EditproxScan: TEdit;
    DBEditSeqNfeScan: TDBEdit;
    Label45: TLabel;
    Bit_Sair: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_novo: TBitBtn;
    Bit_Relatorio: TBitBtn;
    grpLocalEntrega: TGroupBox;
    Label16: TLabel;
    DBEdit2: TDBEdit;
    Label17: TLabel;
    DBEdit3: TDBEdit;
    Label18: TLabel;
    DBEdit4: TDBEdit;
    DBEdit1: TDBEdit;
    Label46: TLabel;
    dbedtEMP_SUFRAMA: TDBEdit;
    btnAddImage: TSpeedButton;
    btnRemoveImage: TSpeedButton;
    OpenDialog1: TOpenDialog;
    imgLogo: TImage;
    TabSheet6: TTabSheet;
    grpContador: TGroupBox;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    SpeedButton1: TSpeedButton;
    Label59: TLabel;
    dbedtEMP_CONT_NOME: TDBEdit;
    dbedtEMP_CONT_CPF_CNPJ: TDBEdit;
    dbedtEMP_CONT_CRC: TDBEdit;
    dbedtEMP_CONT_ENDERECO: TDBEdit;
    dbedtEMP_CONT_NUMERO: TDBEdit;
    dbedtEMP_CONT_FONE: TDBEdit;
    dbedtEMP_CONT_FAX: TDBEdit;
    dbedtEMP_CONT_CEP: TDBEdit;
    dbedtEMP_CONT_COMPLEMENTO: TDBEdit;
    dbedtEMP_CONT_BAIRRO: TDBEdit;
    dbedtEMP_CONT_CIDADE: TDBEdit;
    dbedtEMP_CONT_UF: TDBEdit;
    dbedtEMP_CONT_EMAIL: TDBEdit;
    grpiNDICADORES: TGroupBox;
    Label22: TLabel;
    Label60: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    cbbAtividadeEMP_COD_INC_TRIBUTARIA: TRxDBComboBox;
    cbbAtividadeEMP_COD_IND_APROP_CREDITO: TRxDBComboBox;
    cbbAtividadeEMP_COD_IND_TIPO_APURADA: TRxDBComboBox;
    cbbAtividadeEMP_COD_IND_REGIME: TRxDBComboBox;
    dbrgrpEMP_COD_IND_ESCRITURACAO: TDBRadioGroup;
    Label15: TLabel;
    cbbAtividadeEMP_INDICADOR_ATIVIDADE: TRxDBComboBox;
    Label61: TLabel;
    dbedtEMP_CONT_CPF: TDBEdit;
    Label64: TLabel;
    CombCSOSNST: TComboBox;
    CdsCFOPDentro: TSQLClientDataSet;
    CdsCFOPDentroOPE_CODIGO: TStringField;
    CdsCFOPDentroOPE_DESCRI: TStringField;
    dsDsCfopDentro: TDataSource;
    Label65: TLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    dsDsCfopFora: TDataSource;
    CdsCFOPFora: TSQLClientDataSet;
    CdsCFOPForaOPE_CODIGO: TStringField;
    CdsCFOPForaOPE_DESCRI: TStringField;
    cxLookupComboBox2: TcxLookupComboBox;
    Label66: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    DsEmpresa: TDataSource;
    CdsEmpresa: TClientDataSet;
    CdsEmpresaEMP_CODIGO: TStringField;
    CdsEmpresaEMP_RAZAO: TStringField;
    CdsEmpresaEMP_ENDERE: TStringField;
    CdsEmpresaEMP_BAIRRO: TStringField;
    CdsEmpresaEMP_CXPOSTAL: TStringField;
    CdsEmpresaEMP_CIDADE: TStringField;
    CdsEmpresaEMP_UF: TStringField;
    CdsEmpresaEMP_CEP: TStringField;
    CdsEmpresaEMP_ENDENTR: TStringField;
    CdsEmpresaEMP_CIDENTR: TStringField;
    CdsEmpresaEMP_UFENTR: TStringField;
    CdsEmpresaEMP_CEPENTR: TStringField;
    CdsEmpresaEMP_FONE: TStringField;
    CdsEmpresaEMP_FAX: TStringField;
    CdsEmpresaEMP_EMAIL: TStringField;
    CdsEmpresaEMP_EMAILCOMPRAS: TStringField;
    CdsEmpresaEMP_NOMECOMPRADOR: TStringField;
    CdsEmpresaEMP_EMAILVENDAS: TStringField;
    CdsEmpresaEMP_CGC: TStringField;
    CdsEmpresaEMP_INSC: TStringField;
    CdsEmpresaEMP_FANTASIA: TStringField;
    CdsEmpresaEMP_HOME: TStringField;
    CdsEmpresaCID_CODIGO: TIntegerField;
    CdsEmpresaEMP_AMBIENTE_NFE: TIntegerField;
    CdsEmpresaEMP_MODELO_NFE: TIntegerField;
    CdsEmpresaEMP_SERIE_NFE: TIntegerField;
    CdsEmpresaEMP_HOST: TStringField;
    CdsEmpresaEMP_USERNAME: TStringField;
    CdsEmpresaEMP_PASSWORD: TStringField;
    CdsEmpresaEMP_REQUER_AUTENTICACAO: TStringField;
    CdsEmpresaEMP_MENSAGEM_NFE: TStringField;
    CdsEmpresaEMP_SISTEMA_CONTINGENCIA_NFE: TStringField;
    CdsEmpresaEMP_CAMINHO_LOGO: TStringField;
    CdsEmpresaEMP_OPTANTE_SIMPLES: TStringField;
    CdsEmpresaEMP_PERCENT_SIMPLES: TFMTBCdField;
    CdsEmpresaEMP_CODIGO_CONTABILIDADE: TStringField;
    CdsEmpresaEMP_EMAIL_CONTADOR: TStringField;
    CdsEmpresaEMP_EMAIL_INTERNO: TStringField;
    CdsEmpresaEMP_GENERATION_NFE: TStringField;
    CdsEmpresaEMP_SEQUENCIA_NFE: TIntegerField;
    CdsEmpresaEMP_TIPO_DANFE: TStringField;
    CdsEmpresaEMP_CHAVE: TStringField;
    CdsEmpresaEMP_DATA_ACESSO: TStringField;
    CdsEmpresaEMP_CRT: TIntegerField;
    CdsEmpresaEMP_CSOSN: TIntegerField;
    CdsEmpresaEMP_PERIODOIPI: TStringField;
    CdsEmpresaEMP_INSC_MUNICIPAL: TStringField;
    CdsEmpresaEMP_REGIME_SERVICO: TStringField;
    CdsEmpresaEMP_MODALIDADE: TStringField;
    CdsEmpresaEMP_PIS_ALIQ: TFMTBCdField;
    CdsEmpresaEMP_COFINS_ALIQ: TFMTBCdField;
    CdsEmpresaEMP_IRPJ_ALIQ: TFMTBCdField;
    CdsEmpresaEMP_REQUER_CONEXAO_SSL: TStringField;
    CdsEmpresaEMP_PORTA: TIntegerField;
    CdsEmpresaEMP_VERSAO_SSL: TIntegerField;
    CdsEmpresaEMP_MODO_SSL: TStringField;
    CdsEmpresaEMP_SEQUENCIA_NFE_SCAN: TIntegerField;
    CdsEmpresaEMP_CONT_PESSOA: TStringField;
    CdsEmpresaEMP_CONT_NOME: TStringField;
    CdsEmpresaEMP_CONT_CRC: TStringField;
    CdsEmpresaEMP_CONT_ENDERECO: TStringField;
    CdsEmpresaEMP_CONT_NUMERO: TStringField;
    CdsEmpresaEMP_CONT_CEP: TStringField;
    CdsEmpresaEMP_CONT_COMPLEMENTO: TStringField;
    CdsEmpresaEMP_CONT_BAIRRO: TStringField;
    CdsEmpresaEMP_CONT_FONE: TStringField;
    CdsEmpresaEMP_CONT_FAX: TStringField;
    CdsEmpresaEMP_CONT_EMAIL: TStringField;
    CdsEmpresaEMP_CONT_CID: TIntegerField;
    CdsEmpresaEMP_SUFRAMA: TStringField;
    CdsEmpresaEMP_INDICADOR_ATIVIDADE: TIntegerField;
    CdsEmpresaEMP_CONT_CIDADE: TStringField;
    CdsEmpresaEMP_CONT_UF: TStringField;
    CdsEmpresaEMP_COD_INC_TRIBUTARIA: TStringField;
    CdsEmpresaEMP_COD_IND_APROP_CREDITO: TStringField;
    CdsEmpresaEMP_COD_IND_TIPO_APURADA: TStringField;
    CdsEmpresaEMP_COD_IND_REGIME: TStringField;
    CdsEmpresaEMP_COD_IND_ESCRITURACAO: TStringField;
    CdsEmpresaEMP_CONT_CNPJ: TStringField;
    CdsEmpresaEMP_CONT_CPF: TStringField;
    CdsEmpresaEMP_CSOSN_ST: TIntegerField;
    CdsEmpresaOPE_CODIGO_DENTRO: TStringField;
    CdsEmpresaOPE_CODIGO_FORA: TStringField;
    DspEmpresa: TDataSetProvider;
    QEmpresa: TSQLQuery;
    QEmpresaEMP_CODIGO: TStringField;
    QEmpresaEMP_RAZAO: TStringField;
    QEmpresaEMP_ENDERE: TStringField;
    QEmpresaEMP_BAIRRO: TStringField;
    QEmpresaEMP_CXPOSTAL: TStringField;
    QEmpresaEMP_CIDADE: TStringField;
    QEmpresaEMP_UF: TStringField;
    QEmpresaEMP_CEP: TStringField;
    QEmpresaEMP_ENDENTR: TStringField;
    QEmpresaEMP_CIDENTR: TStringField;
    QEmpresaEMP_UFENTR: TStringField;
    QEmpresaEMP_CEPENTR: TStringField;
    QEmpresaEMP_FONE: TStringField;
    QEmpresaEMP_FAX: TStringField;
    QEmpresaEMP_EMAIL: TStringField;
    QEmpresaEMP_EMAILCOMPRAS: TStringField;
    QEmpresaEMP_NOMECOMPRADOR: TStringField;
    QEmpresaEMP_EMAILVENDAS: TStringField;
    QEmpresaEMP_CGC: TStringField;
    QEmpresaEMP_INSC: TStringField;
    QEmpresaEMP_FANTASIA: TStringField;
    QEmpresaEMP_HOME: TStringField;
    QEmpresaCID_CODIGO: TIntegerField;
    QEmpresaEMP_AMBIENTE_NFE: TIntegerField;
    QEmpresaEMP_MODELO_NFE: TIntegerField;
    QEmpresaEMP_SERIE_NFE: TIntegerField;
    QEmpresaEMP_HOST: TStringField;
    QEmpresaEMP_USERNAME: TStringField;
    QEmpresaEMP_PASSWORD: TStringField;
    QEmpresaEMP_REQUER_AUTENTICACAO: TStringField;
    QEmpresaEMP_MENSAGEM_NFE: TStringField;
    QEmpresaEMP_SISTEMA_CONTINGENCIA_NFE: TStringField;
    QEmpresaEMP_CAMINHO_LOGO: TStringField;
    QEmpresaEMP_OPTANTE_SIMPLES: TStringField;
    QEmpresaEMP_PERCENT_SIMPLES: TFMTBCdField;
    QEmpresaEMP_CODIGO_CONTABILIDADE: TStringField;
    QEmpresaEMP_EMAIL_CONTADOR: TStringField;
    QEmpresaEMP_EMAIL_INTERNO: TStringField;
    QEmpresaEMP_GENERATION_NFE: TStringField;
    QEmpresaEMP_SEQUENCIA_NFE: TIntegerField;
    QEmpresaEMP_TIPO_DANFE: TStringField;
    QEmpresaEMP_CHAVE: TStringField;
    QEmpresaEMP_DATA_ACESSO: TStringField;
    QEmpresaEMP_CRT: TIntegerField;
    QEmpresaEMP_CSOSN: TIntegerField;
    QEmpresaEMP_PERIODOIPI: TStringField;
    QEmpresaEMP_INSC_MUNICIPAL: TStringField;
    QEmpresaEMP_REGIME_SERVICO: TStringField;
    QEmpresaEMP_MODALIDADE: TStringField;
    QEmpresaEMP_PIS_ALIQ: TFMTBCdField;
    QEmpresaEMP_COFINS_ALIQ: TFMTBCdField;
    QEmpresaEMP_IRPJ_ALIQ: TFMTBCdField;
    QEmpresaEMP_REQUER_CONEXAO_SSL: TStringField;
    QEmpresaEMP_PORTA: TIntegerField;
    QEmpresaEMP_VERSAO_SSL: TIntegerField;
    QEmpresaEMP_MODO_SSL: TStringField;
    QEmpresaEMP_SEQUENCIA_NFE_SCAN: TIntegerField;
    QEmpresaEMP_CONT_PESSOA: TStringField;
    QEmpresaEMP_CONT_NOME: TStringField;
    QEmpresaEMP_CONT_CRC: TStringField;
    QEmpresaEMP_CONT_ENDERECO: TStringField;
    QEmpresaEMP_CONT_NUMERO: TStringField;
    QEmpresaEMP_CONT_CEP: TStringField;
    QEmpresaEMP_CONT_COMPLEMENTO: TStringField;
    QEmpresaEMP_CONT_BAIRRO: TStringField;
    QEmpresaEMP_CONT_FONE: TStringField;
    QEmpresaEMP_CONT_FAX: TStringField;
    QEmpresaEMP_CONT_EMAIL: TStringField;
    QEmpresaEMP_CONT_CID: TIntegerField;
    QEmpresaEMP_SUFRAMA: TStringField;
    QEmpresaEMP_INDICADOR_ATIVIDADE: TIntegerField;
    QEmpresaEMP_CONT_CIDADE: TStringField;
    QEmpresaEMP_CONT_UF: TStringField;
    QEmpresaEMP_COD_INC_TRIBUTARIA: TStringField;
    QEmpresaEMP_COD_IND_APROP_CREDITO: TStringField;
    QEmpresaEMP_COD_IND_TIPO_APURADA: TStringField;
    QEmpresaEMP_COD_IND_REGIME: TStringField;
    QEmpresaEMP_COD_IND_ESCRITURACAO: TStringField;
    QEmpresaEMP_CONT_CNPJ: TStringField;
    QEmpresaEMP_CONT_CPF: TStringField;
    QEmpresaEMP_CSOSN_ST: TIntegerField;
    QEmpresaOPE_CODIGO_DENTRO: TStringField;
    QEmpresaOPE_CODIGO_FORA: TStringField;
    pnMove: TPanel;
    btFirst: TSpeedButton;
    btPrior: TSpeedButton;
    btNext: TSpeedButton;
    btLast: TSpeedButton;
    CdsEmpresaEMP_LOGO: TBlobField;
    QEmpresaEMP_LOGO: TBlobField;
    smtp: TIdSMTP;
    sslsocket: TIdSSLIOHandlerSocketOpenSSL;
    DBCheckBox5: TDBCheckBox;
    QEmpresaEMP_REQUER_CONEXAO_TLS: TStringField;
    CdsEmpresaEMP_REQUER_CONEXAO_TLS: TStringField;
    IdConnectionIntercept1: TIdConnectionIntercept;
    rgAmbienteNFSe: TDBRadioGroup;
    QEmpresaEMP_AMBIENTE_NFSE: TIntegerField;
    CdsEmpresaEMP_AMBIENTE_NFSE: TIntegerField;
    QEmpresaEMP_naturezaoperacao: TIntegerField;
    CdsEmpresaEMP_naturezaoperacao: TIntegerField;
    Label69: TLabel;
    CdsEmpresaEMP_SERIE_NFSE: TStringField;
    QEmpresaEMP_SERIE_NFSE: TStringField;
    lserieNFSE: TLabel;
    edSerieNFSE: TDBEdit;
    CdsEmpresaEMP_idToken: TStringField;
    CdsEmpresaEMP_CSC: TStringField;
    CdsEmpresaEMP_NFE_FAT: TStringField;
    QEmpresaEMP_idToken: TStringField;
    QEmpresaEMP_CSC: TStringField;
    QEmpresaEMP_NFE_FAT: TStringField;
    GroupBox8: TGroupBox;
    Label70: TLabel;
    Label71: TLabel;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBCheckBox6: TDBCheckBox;
    GroupBox9: TGroupBox;
    Label72: TLabel;
    edUserFinan: TDBEdit;
    Label73: TLabel;
    edSenhaFin: TDBEdit;
    btnTesteFinanceiro: TButton;
    GroupBox10: TGroupBox;
    Label27: TLabel;
    DBEdit9: TDBEdit;
    Label28: TLabel;
    DBEdit10: TDBEdit;
    btnTestar: TButton;
    CdsEmpresaEMP_USERNAME_FIN: TStringField;
    CdsEmpresaEMP_PASSWORD_FIN: TStringField;
    QEmpresaEMP_USERNAME_FIN: TStringField;
    QEmpresaEMP_PASSWORD_FIN: TStringField;
    Label52: TLabel;
    edSenhaCompras: TDBEdit;
    btnTesteCompras: TButton;
    CdsEmpresaEMP_PASSWORD_COMPRAS: TStringField;
    QEmpresaEMP_PASSWORD_COMPRAS: TStringField;
    DBCheckBox7: TDBCheckBox;
    CdsEmpresaemp_sincrono: TStringField;
    QEmpresaemp_sincrono: TStringField;
    CdsEmpresaEMP_DIREITO_CREDITO: TFMTBCDField;
    DBEdit24: TDBEdit;
    Label74: TLabel;
    QEmpresaEMP_DIREITO_CREDITO: TFMTBCDField;
    Label75: TLabel;
    edNFCe: TEdit;
    btnGerarNFCE: TBitBtn;
    Panel1: TPanel;
    ImgLogoNFE: TImage;
    CdsEmpresaEMP_LOGO_NFE: TBlobField;
    QEmpresaEMP_LOGO_NFE: TBlobField;
    DBCheckBox8: TDBCheckBox;
    CdsEmpresaEMP_LOGONFE_PROPRIO: TStringField;
    QEmpresaEMP_LOGONFE_PROPRIO: TStringField;
    Label76: TLabel;
    GroupBox3: TGroupBox;
    dsNatOper: TDataSource;
    cdsNatOper: TClientDataSet;
    cdsNatOperNaturezaOperacao: TIntegerField;
    cdsNatOperdescri: TStringField;
    ACBrNFSe1: TACBrNFSe;
    cbNatOper: TcxDBLookupComboBox;
    Mercos: TTabSheet;
    DBEdit25: TDBEdit;
    Label77: TLabel;
    Label78: TLabel;
    DBEdit26: TDBEdit;
    DBCheckBox9: TDBCheckBox;
    CdsEmpresaEMP_NFE_REP: TStringField;
    QEmpresaEMP_NFE_REP: TStringField;
    edNFSE: TDBEdit;
    QEmpresaSEQUENCIA_VALOR: TIntegerField;
    CdsEmpresaSEQUENCIA_VALOR: TIntegerField;
    QEmpresaEMP_COMPANYTOKEN: TStringField;
    QEmpresaEMP_APPLICATIONTOKEN: TStringField;
    CdsEmpresaEMP_COMPANYTOKEN: TStringField;
    CdsEmpresaEMP_APPLICATIONTOKEN: TStringField;
    CdsEmpresaEMP_AMBIENTE_MERCOS: TStringField;
    QEmpresaEMP_AMBIENTE_MERCOS: TStringField;
    DBRadioGroup1: TDBRadioGroup;
    DelLogoNfe: TSpeedButton;
    AddLogoNFE: TSpeedButton;
    tpCertificado: TDBRadioGroup;
    CdsEmpresaEMP_TIPOCERTIFICADO: TIntegerField;
    QEmpresaEMP_TIPOCERTIFICADO: TIntegerField;
    dbchkProdutoAtivo: TDBCheckBox;
    CdsEmpresaPRD_SPEDVALIDA: TStringField;
    QEmpresaPRD_SPEDVALIDA: TStringField;
    IEManaus: TTabSheet;
    bbAdicionarIE: TBitBtn;
    bbEditarIE: TBitBtn;
    bbExcluirIE: TBitBtn;
    bbGravarIE: TBitBtn;
    bbCancelarIE: TBitBtn;
    grMultiIE: TDBGrid;
    sqlMultiIE: TSQLQuery;
    dsMultiIE: TDataSource;
    sqlMultiIEEMI_CODIGO: TIntegerField;
    sqlMultiIEEMP_CODIGO: TStringField;
    sqlMultiIEEMI_DESCRICAO: TStringField;
    sqlMultiIEEMI_IE: TStringField;
    sqlMultiIEEMI_SERIE_NF: TStringField;
    sqlMultiIEEMI_SEQUENCIA_NF: TIntegerField;
    cdsMultiIE: TClientDataSet;
    dspMultiIE: TDataSetProvider;
    cdsMultiIEEMI_CODIGO: TIntegerField;
    cdsMultiIEEMP_CODIGO: TStringField;
    cdsMultiIEEMI_DESCRICAO: TStringField;
    cdsMultiIEEMI_IE: TStringField;
    cdsMultiIEEMI_SERIE_NF: TStringField;
    cdsMultiIEEMI_SEQUENCIA_NF: TIntegerField;
    Label31: TLabel;
    edIEDescricao: TEdit;
    Label37: TLabel;
    edIE: TEdit;
    Label38: TLabel;
    edNFIESerie: TEdit;
    edSequenciaNF: TLabel;
    edNFIESequencia: TEdit;
    DBCheckBox10: TDBCheckBox;
    QEmpresaEMP_USAR_MAIL_ACBR: TStringField;
    CdsEmpresaEMP_USAR_MAIL_ACBR: TStringField;
    DBCheckBox11: TDBCheckBox;
    QEmpresaEMP_UTILIZAR_API_ACBR: TStringField;
    QEmpresaEMP_USUARIO_API_ACBR: TStringField;
    QEmpresaEMP_TOKEN_API_ACBR: TStringField;
    CdsEmpresaEMP_UTILIZAR_API_ACBR: TStringField;
    CdsEmpresaEMP_USUARIO_API_ACBR: TStringField;
    CdsEmpresaEMP_TOKEN_API_ACBR: TStringField;
    Label39: TLabel;
    DBEdit13: TDBEdit;
    Label40: TLabel;
    DBEdit16: TDBEdit;
    DBRadioGroup6: TDBRadioGroup;
    QEmpresaEMP_TIPO_CERTIFICADO_NFSE: TIntegerField;
    CdsEmpresaEMP_TIPO_CERTIFICADO_NFSE: TIntegerField;
    QEmpresaEMP_NFS_SENHA: TStringField;
    CdsEmpresaEMP_NFS_SENHA: TStringField;
    Label67: TLabel;
    edNfsSenha: TDBEdit;
    btConfigurarMailAlias: TButton;
    Label68: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    QEmpresaEMP_CLAS_ESTAB_IND: TStringField;
    CdsEmpresaEMP_CLAS_ESTAB_IND: TStringField;

    procedure Bit_SairClick(Sender: tObject);
    procedure Bit_novoClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure VerificaEdicao;
    procedure DesabilitaBotoes;
    procedure HabilitaBotoes;
    procedure BuscaEmpresa;
    procedure Bit_CancelarClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure EdtEmp_CodigoExit(Sender: tObject);
    procedure DBeEmp_razaoExit(Sender: tObject);
    procedure DBeEmp_CGCExit(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure CbUfClick(Sender: tObject);
    procedure EdtEmp_CodigoKeyPress(Sender: tObject; var Key: Char);
    procedure SpeedButton5Click(Sender: tObject);
    procedure EdCaminhoFotoClick(Sender: tObject);
    procedure EdCaminhoFotoButtonClick(Sender: tObject);
    procedure CombCSOSNChange(Sender: tObject);
    procedure DBCkSimplesClick(Sender: tObject);
    procedure DBCheckBox4Click(Sender: tObject);
    procedure DBEditSeqNfeChange(Sender: tObject);
    procedure DBEditSeqNfeScanChange(Sender: tObject);
    procedure SpeedButton1Click(Sender: tObject);
    procedure btnAddImageClick(Sender: tObject);
    procedure btnRemoveImageClick(Sender: tObject);
    procedure cxLookupComboBox1Click(Sender: tObject);
    procedure cxLookupComboBox1Exit(Sender: tObject);
    procedure cxLookupComboBox2Click(Sender: tObject);
    procedure cxLookupComboBox2Exit(Sender: tObject);
    procedure SpeedButton2Click(Sender: tObject);
    procedure SpeedButton3Click(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure CdsEmpresaBeforeEdit(DataSet: TDataSet);
    procedure btFirstClick(Sender: TObject);
    procedure CdsEmpresaAfterOpen(DataSet: TDataSet);
    procedure btnTestarClick(Sender: TObject);
    procedure IdConnectionIntercept1Connect(ASender: TIdConnectionIntercept);
    procedure IdConnectionIntercept1Disconnect(ASender: TIdConnectionIntercept);
    procedure IdConnectionIntercept1Receive(ASender: TIdConnectionIntercept; var ABuffer: TIdBytes);
    procedure IdConnectionIntercept1Send(ASender: TIdConnectionIntercept; var ABuffer: TIdBytes);
    procedure CdsEmpresaEMP_USERNAME_FINGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure CdsEmpresaEMP_USERNAME_FINSetText(Sender: TField; const Text: string);
    procedure btnGerarNFCEClick(Sender: TObject);
    procedure TsNFEShow(Sender: TObject);
    procedure AddLogoNFEClick(Sender: TObject);
    procedure DelLogoNfeClick(Sender: TObject);
    procedure CdsEmpresaAfterScroll(DataSet: TDataSet);
    procedure CdsEmpresaAfterApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
    procedure bbAdicionarIEClick(Sender: TObject);
    procedure bbEditarIEClick(Sender: TObject);
    procedure bbExcluirIEClick(Sender: TObject);
    procedure bbGravarIEClick(Sender: TObject);
    procedure grMultiIECellClick(Column: TColumn);
    procedure PageControl1Change(Sender: TObject);
    procedure cdsMultiIEAfterScroll(DataSet: TDataSet);
    procedure bbCancelarIEClick(Sender: TObject);
    procedure btnTesteFinanceiroClick(Sender: TObject);
    procedure btConfigurarMailAliasClick(Sender: TObject);
  private
    fAlterou: boolean;
    ieStatus: TDataSetState;
    procedure OpenEmpresa(const empid: string);
    procedure CarregaNaturezaOperacao ;
    procedure  MostraCamposIE(estado: Boolean);
    procedure MostraBotoesIE(estado: Boolean);
    procedure carregaMultiIE();
    procedure LimpaCampos();

  public
  procedure BotoesAcesso;

  end;

var
  FormEmpresa: TFormEmpresa;

implementation

uses Uteis, CID0002, StrUtils, iniciodb, MemoForm, uEmpresaMailAlias ;

Var frmMemoForm: tFrmMemo;

{$R *.DFM}

Procedure TFormEmpresa.verificaEdicao;
begin
     if CdSEMPRESA.State in [dsEdit,dsInsert] then
     begin
          if uteis.confirmacao ( 'Deseja salvar alterações ?') = idyes then
          begin
               if DBeEmp_Fantasia.Text = '' then
               begin
                    uteis.aviso('O Registro não Foi Gravado:'+ #13 + #10 +
                               'Nome Usual Deveria ser preenchido!!!');
                    DBeEmp_Fantasia.Setfocus;
                         Exit;
               end;
               CdSEMPRESAEmp_CODIGO.Value := EdtEmp_codigo.Text;
               CdSEMPRESA.ApplyUpdates(0);
               CdSEMPRESA.Refresh;
               Habilitabotoes;
          end
          else
          begin
               CdSEMPRESA.Cancel;
               Habilitabotoes;
          end;
     end;
end;

procedure TFormEmpresa.HabilitaBotoes;
begin
    Bit_novo.Enabled := True;
    Bit_Sair.Enabled := True;
    Bit_Relatorio.Enabled := True;
    Bit_Gravar.Enabled := False;
    Bit_Cancelar.Enabled := False;
    EdtEmp_Codigo.Enabled := True;
    EdtEmp_Codigo.Color := clWindow;
    pnMove.Enabled := True;
    BotoesAcesso;
end;

procedure TFormEmpresa.IdConnectionIntercept1Connect(ASender: TIdConnectionIntercept);
begin
     inherited;
     frmMemoForm.Add:='';
     frmMemoForm.Add:='Conectou!';
end;

procedure TFormEmpresa.IdConnectionIntercept1Disconnect(ASender: TIdConnectionIntercept);
begin
     inherited;
     frmMemoForm.Add:='';
     frmMemoForm.Add:='Desconectou!';
end;

procedure TFormEmpresa.IdConnectionIntercept1Receive(ASender: TIdConnectionIntercept; var ABuffer: TIdBytes);
begin
    inherited;
    frmMemoForm.Add:='';
    frmMemoForm.Add:='Recebeu: ' + BytesToString( ABuffer );
end;

procedure TFormEmpresa.IdConnectionIntercept1Send(ASender: TIdConnectionIntercept; var ABuffer: TIdBytes);
begin
     inherited;
     frmMemoForm.Add:='';
     frmMemoForm.Add:='Enviou: ' + BytesToString( ABuffer );
end;

procedure TFormEmpresa.LimpaCampos;
begin
  edIEDescricao.Clear;
  edIE.Clear;
  edNFIESerie.Clear;
  edNFIESequencia.Clear;
end;

procedure TFormEmpresa.MostraBotoesIE(estado: Boolean);
begin
  bbAdicionarIE.Enabled := estado;
  bbEditarIE.Enabled := estado;
  bbExcluirIE.Enabled := estado;
  bbGravarIE.Enabled := not estado;
  bbCancelarIE.Enabled := not estado;
end;

procedure TFormEmpresa.MostraCamposIE(estado: Boolean);
begin
  edIEDescricao.Enabled := estado;
  edIE.Enabled := estado;
  edNFIESerie.Enabled := estado;
  edNFIESequencia.Enabled := estado;

end;

procedure TFormEmpresa.DelLogoNfeClick(Sender: TObject);
begin
  inherited;
  if (CdSEMPRESA.State in [Dsbrowse]) and not (CdSEMPRESA.IsEmpty) then
    CdSEMPRESA.Edit;
  CdsEmpresaEMP_LOGO_NFE.Clear;
  ImgLogoNFE.Picture.Bitmap:=Nil ;
  CdsEmpresaEMP_LOGONFE_PROPRIO.AsString := 'N';
end;

procedure TFormEmpresa.DesabilitaBotoes;
begin
    BotoesAcesso;
    Bit_novo.Enabled := False;
    Bit_Sair.Enabled := False;
    Bit_Gravar.Enabled := True;
    Bit_Cancelar.Enabled := True;
    EdtEmp_Codigo.Enabled := False;
    EdtEmp_Codigo.Color := clSilver;
    pnMove.Enabled := False;

end;

procedure TFormEmpresa.buscaEmpresa; //Busca a Empresa pelo codigo
begin
     if not CdSEMPRESA.Locate('EMP_CODIGO',EdtEmp_Codigo.Text,[]) then
     begin
           uteis.aviso('Código da Empresa não cadastrado!!!');
           EdtEmp_Codigo.SetFocus;
           EdtEmp_Codigo.SelectAll;
     end;
end;

procedure TFormEmpresa.btConfigurarMailAliasClick(Sender: TObject);
begin
  inherited;
  if frmEmpresaMailAlias = nil then
    frmEmpresaMailAlias := TfrmEmpresaMailAlias.Create(Self);
  frmEmpresaMailAlias.edEmpNFEMailAlias.Text := BuscaUmDadoSqlAsString('SELECT EMP_NFE_MAIL_ALIAS FROM EMP0000 WHERE EMP_CODIGO = ' + QuotedStr(EdtEmp_Codigo.Text ));
  frmEmpresaMailAlias.edEmpFinanceiroMailAlias.Text := BuscaUmDadoSqlAsString('SELECT EMP_FINANCEIRO_MAIL_ALIAS FROM EMP0000 WHERE EMP_CODIGO = ' + QuotedStr(EdtEmp_Codigo.Text ));
  frmEmpresaMailAlias.ShowModal;
end;

procedure TFormEmpresa.carregaMultiIE;
begin
  edIEDescricao.Text := cdsMultiIEEMI_DESCRICAO.AsString;
  edIE.Text := cdsMultiIEEMI_IE.AsString;
  edNFIESerie.Text := cdsMultiIEEMI_SERIE_NF.AsString;
  edNFIESequencia.Text := cdsMultiIEEMI_SEQUENCIA_NF.AsString;
end;

procedure TFormEmpresa.FormShow(Sender: tObject);
begin

    PageControl1.ActivePage := TabSheet1;  // cad.empresa

    OpenEmpresa ( dbInicio.Empresa.EMP_CODIGO );


    Habilitabotoes;

    EdtEmp_codigo.Enabled := not CdSEMPRESA.IsEmpty ;


    CdsCFOPDentro.Close;
    CdsCFOPDentro.CommandText := SQLDEF('OPERACAOFISCAL','Select OPE_CODIGO, OPE_NATUREZA||''-''||OPE_DESCRI as OPE_DESCRI FROM OPE0000','WHERE OPE_TIPO <> ''E'' AND OPE_DENTRO = ''D''','OPE_CODIGO','');
    CdsCFOPDentro.DBConnection := DBInicio.MainDB;
    CdsCFOPDentro.Open;

    CdsCFOPFora.Close;
    CdsCFOPFora.CommandText := SQLDEF('OPERACAOFISCAL','Select OPE_CODIGO, OPE_NATUREZA||''-''||OPE_DESCRI as OPE_DESCRI FROM OPE0000','WHERE OPE_TIPO <> ''E'' AND OPE_DENTRO = ''F''','OPE_CODIGO','');
    CdsCFOPFora.DBConnection := DBInicio.MainDB;
    CdsCFOPFora.Open;

    CdSEMPRESAEMP_CONT_CNPJ.EditMask := '99\.999\.999\/9999\-99;0;_';
    CdSEMPRESAEMP_CONT_CPF.EditMask := '999\.999\.999\-99;0;_';

    ieStatus := dsBrowse;
    IEManaus.TabVisible := DBInicio.GetParametroSistema('PMT_MULTIPLAS_IE') = 'S';

end;

procedure TFormEmpresa.grMultiIECellClick(Column: TColumn);
begin
  inherited;
  edIEDescricao.Text := cdsMultiIEEMI_DESCRICAO.AsString;
  edIE.Text := cdsMultiIEEMI_IE.AsString;
  edNFIESerie.Text := cdsMultiIEEMI_SERIE_NF.AsString;
  edNFIESequencia.Text := cdsMultiIEEMI_SEQUENCIA_NF.AsString;
end;

procedure TFormEmpresa.Bit_novoClick(Sender: tObject);
BEGIN
     CdSEMPRESA.Insert;
     EdtEmp_Codigo.text := StrZero( BuscaUmDadoSqlasInteger('SELECT MAX(EMP_CODIGO) FROM EMP0000') + 1, 3 ) ;
     uteis.HabilitaIncluir('ConfiguraçõesCadastro da Empresa',DBInicio.Usuario.CODIGO,FormEmpresa);
     SpeedButton5.Enabled;
     DbeEmp_razao.setfocus;
     DesabilitaBotoes;
end;

procedure TFormEmpresa.Bit_GravarClick(Sender: tObject);
begin
     if DBeEmp_Fantasia.Text = '' then
     begin
          uteis.aviso('Não Posso Gravar:'+ #13 + #10 + 'Nome usual deve ser preenchido !');
          DBeEmp_Fantasia.Setfocus;
          Exit;
     end;
     if DBeEmp_email.Text = '' then
     begin
          uteis.aviso('Não Posso Gravar:'+ #13 + #10 +'Email principal deve ser preenchido !');
          DBeEmp_email.Setfocus;
          Exit;
     end;

     // modalidade -> S = SIMPLES  P = PRESUMIDO  R = REAL
     if (DBRadModalidade.ItemIndex = 0) and (not DBCkSimples.Checked) then
     begin
          uteis.aviso('Modalidade não pode ser SIMPLES. Empresa não esta marcada como Optante pelo Simples');
          exit;
     end;

     if ((DBRadModalidade.ItemIndex = 1) or (DBRadModalidade.ItemIndex = 2)) and (DBCkSimples.checked ) then
     begin
          uteis.aviso('Modalidade incorreta. Empresa marcada como optante do simples.');
          exit;
     end;
     // se Presumido ou Real deve digitar aliquotas do pis e cofins
     if (DBRadModalidade.ItemIndex = 1) or (DBRadModalidade.ItemIndex = 2) then
     begin
          if (DBEPis_Aliq.text = '0,00') or (DBECofins_aliq.text = '0,00') then
          begin
               uteis.aviso('Falta aliquota para NFE. Obrigatório digitar a aliquota do PIS e do COFINS');
               exit;
          end;
     end;
     // empresa do simples não tem PIS e nem COFINS
     if (DBCkSimples.checked ) AND ((DBEPis_Aliq.Field.Value > '0') or (DBECofins_aliq.Field.Value > '0')) then
     begin
          uteis.aviso('Empresa do Simples não tem aliquota do PIS e do COFINS. Retirar.');
          exit;
     end;

     if (CombCSOSN.Text = '') then
     begin
          uteis.aviso('Código da Situação da Operação do Simples Nacional (CSOSN): Não Informada.');
          exit;
     end;

     if DBCkSimples.checked and (CombCSOSN.ItemIndex = 0) then
     begin
        uteis.aviso('Empresa do Simples. Código da Situação da Operação do Simples Nacional (CSOSN) deve ser diferente de ' + CombCSOSN.Text );
        exit;
     end;

     if DBCkSimples.checked and (CombCSOSNST.ItemIndex = 0) then
     begin
        uteis.aviso('Empresa do Simples. Código da Situação da Operação do Simples Nacional (CSOSN) Substituição Tributária deve ser diferente de ' + CombCSOSNST.Text );
        exit;
     end;


     CdSEMPRESAEMP_CODIGO.AsString := StrZero( EdtEmp_Codigo.text, 3 ) ;
     CdSEMPRESAEMP_CSOSN.AsInteger := StrtoInt(COPY(CombCSOSN.Text,1,3));
     if CombCSOSNST.Text <> '' then
       CdSEMPRESAEMP_CSOSN_ST.AsInteger := StrtoInt(COPY(CombCSOSNST.Text,1,3));

     CdSEMPRESA.Post;
     CdSEMPRESA.ApplyUpdates(0);

     Habilitabotoes;
     TabSheet1.Show;
     DbeEmp_Razao.Setfocus;

     fAlterou:=True;
end;

procedure TFormEmpresa.AddLogoNFEClick(Sender: TObject);
begin
  inherited;
 if (OpenDialog1.Execute) then
 begin
  if (CdSEMPRESA.State in [Dsbrowse]) and not (CdSEMPRESA.IsEmpty) then
     CdSEMPRESA.Edit;
  try
   Le_Imagem_BMP(OpenDialog1.FileName, ImgLogoNFE );
   Save_Imagem_BMP_toJPEG( imgLogoNFE, CdsEmpresaEMP_LOGO_NFE);
   CdsEmpresaEMP_LOGONFE_PROPRIO.AsString := 'S';
  except
    CdsEmpresaEMP_LOGONFE_PROPRIO.AsString := 'N';
    ImgLogoNFE.Picture.Bitmap := NIL;
    raise Exception.Create('Não é possível incluir esta imagem, tente no formato jpg ou uma imagem menor.');
  end;
 end;
end;

procedure TFormEmpresa.bbAdicionarIEClick(Sender: TObject);
begin
  inherited;
  ieStatus := dsInsert;
  MostraCamposIE(True);
  MostraBotoesIE(False);

  LimpaCampos();


  grMultiIE.Enabled := False;

  edIEDescricao.SetFocus;

end;

procedure TFormEmpresa.bbCancelarIEClick(Sender: TObject);
begin
  inherited;
  grMultiIE.Enabled := True;
  LimpaCampos();
  MostraCamposIE(False);
  MostraBotoesIE(True);

end;

procedure TFormEmpresa.bbEditarIEClick(Sender: TObject);
begin
  inherited;
  ieStatus:= dsEdit;
  MostraCamposIE(True);
  MostraBotoesIE(False);
  grMultiIE.Enabled := False;
  edIEDescricao.SetFocus;
end;

procedure TFormEmpresa.bbExcluirIEClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja Excluir o Registro', mtWarning, mbYesNo, 0) = mrYes  then
  begin
    qAux.SQL.Clear;
    qAux.SQL.Text := 'DELETE FROM EMP_MULTIPLAS_IE ' +
      ' WHERE EMI_CODIGO = ' + cdsMultiIEEMI_CODIGO.AsString;
    qAux.ExecSql;
    sqlMultiIE.Close;
    sqlMultiIE.open;
    cdsMultiIE.Close;
    cdsMultiIE.Open;
  end;


end;

procedure TFormEmpresa.bbGravarIEClick(Sender: TObject);
var
  chavePrimaria: string;
begin
  inherited;
    grMultiIE.Enabled := True;

    if ieStatus = dsEdit then
    begin
      qAux.SQL.Clear;
      qAux.SQL.Text := 'UPDATE EMP_MULTIPLAS_IE SET ' +
        'EMI_DESCRICAO = ' + QuotedStr(edIEDescricao.Text) + ',' +
        'EMI_IE = ' + QuotedStr(edIE.Text) + ',' +
        'EMI_SERIE_NF = ' + QuotedStr(edNFIESerie.Text) + ',' +
        'EMI_SEQUENCIA_NF = ' + edNFIESequencia.Text +
        ' WHERE EMI_CODIGO = ' + cdsMultiIEEMI_CODIGO.AsString;
      qAux.ExecSql;

    end
    else if ieStatus = dsInsert then
    begin
      chavePrimaria := BuscaUmDadoSqlAsString('SELECT COALESCE(MAX(EMI_CODIGO), 0) + 1 FROM EMP_MULTIPLAS_IE');
      qAux.SQL.Clear;
      qAux.SQL.Text := 'INSERT INTO EMP_MULTIPLAS_IE ' +
        ' (EMI_CODIGO, EMP_CODIGO, EMI_DESCRICAO, EMI_IE, EMI_SERIE_NF, EMI_SEQUENCIA_NF) ' +
        ' VALUES ( '+
      chavePrimaria + ',' +
      QuotedStr(DBInicio.Emp_Codigo) + ',' +
      QuotedStr(edIEDescricao.Text) + ',' +
      QuotedStr(edIE.Text) + ',' +
      QuotedStr(edNFIESerie.Text) + ',' +
      QuotedStr(edNFIESequencia.Text) +
      ' )' ;
      qAux.ExecSql;
    end;

    sqlMultiIE.Close;
    sqlMultiIE.open;
    cdsMultiIE.Close;
    cdsMultiIE.Open;
    MostraCamposIE(False);
    MostraBotoesIE(True);
end;

procedure TFormEmpresa.Bit_CancelarClick(Sender: tObject);
begin
    CdSEMPRESA.Cancel;
    HabilitaBotoes;
    if CdSEMPRESA.IsEmpty Then   //Ao cancelar ultimo record da
       EdtEmp_codigo.Enabled := False;
    EdtEmp_Codigo.Text := CdSEMPRESAEmp_CODIGO.AsString;
end;

procedure TFormEmpresa.Bit_SairClick(Sender: tObject);
begin
  Application.Terminate;
  // close;
end;

procedure TFormEmpresa.BotoesAcesso;
begin
     if assigned(FormEmpresa) then
     begin
       Bit_novo.Enabled := Uteis.AcessoUsuario('ConfiguraçõesCadastro da Empresa',DBInicio.Usuario.CODIGO,FormEmpresa).Incluir;
       Bit_Relatorio.Enabled := Uteis.AcessoUsuario('ConfiguraçõesCadastro da Empresa',DBInicio.Usuario.CODIGO,FormEmpresa).Relatorio;
       DsEmpresa.AutoEdit := Uteis.AcessoUsuario('ConfiguraçõesCadastro da Empresa',DBInicio.Usuario.CODIGO,FormEmpresa).Alterar;
     end;
end;

procedure TFormEmpresa.EdtEmp_CodigoExit(Sender: tObject);
begin
    EdtEmp_codigo.Text := StrZero(EdtEmp_Codigo.Text,EdtEmp_Codigo.MAxLength);
    if CdSEMPRESA.State in [Dsbrowse] then
       BuscaEmpresa;
end;

procedure TFormEmpresa.FormCloseQuery(Sender: tObject; var CanClose: Boolean);
begin
     INHERITED;
     Verificaedicao;
end;

procedure TFormEmpresa.DBeEmp_razaoExit(Sender: tObject);
begin
    if (CdSEMPRESA.State in [dsInsert,dsEdit]) and  (DbeEmp_Fantasia.Text = '') then
       begin
           CdSEMPRESAEMP_FANTASIA.AsString := CdSEMPRESAEMP_RAZAO.AsString;
       end;
end;

procedure TFormEmpresa.DBeEmp_CGCExit(Sender: tObject);
begin
    RWFunc.TestaCGCCPF(DBeEmp_CGC.EditText,'J');
end;

procedure TFormEmpresa.FormClose(Sender: tObject;  var Action: TCloseAction);
begin
     INHERITED;
     if fAlterou then
        ModalResult:=mrOk
     Else
        ModalResult:=mrCancel;
end;

procedure TFormEmpresa.CarregaNaturezaOperacao;
var path : string;
  ibge : integer;
begin
 if CdsEmpresaCID_CODIGO.AsInteger > 0  then
    IBGE := BuscaUmDadoSqlAsInteger('SELECT CID_COD_IBGE  FROM CID0000 WHERE CID_CODIGO = '+ IntToStr(CdsEmpresaCID_CODIGO.AsInteger));

  with ACBrNFSe1.Configuracoes.Geral do
  begin
    path := DBInicio.Versao.PATH +'NFSe\';
    PathIniCidades  := path+'ArqINI';
    PathIniProvedor := path+ 'ArqINI';
    try
      CodigoMunicipio := IBGE;
       ACBrNFSe1.Configuracoes.Geral.SetConfigMunicipio;
    except
       //ignorar erro se não achou a empresa
    end;
  end;




  cdsNatOper.Close;
  cdsNatOper.CreateDataSet;
  //ARAUCARIA É IPM
  if (ACBrNFSe1.Configuracoes.Geral.xprovedor = 'IPM')  then
  begin
    cdsNatOper.insert;
    cdsNatOperNaturezaOperacao.AsInteger := 1;
    cdsNatOperdescri.AsString  :=  '1 - Tributada integralmente';
    cdsNatOper.Post;
    cdsNatOper.insert;
    cdsNatOperNaturezaOperacao.AsInteger := 3;
    cdsNatOperdescri.AsString  :=  '3 - Isenta';
    cdsNatOper.Post;
    cdsNatOper.insert;
    cdsNatOperNaturezaOperacao.AsInteger := 4;
    cdsNatOperdescri.AsString  :=  '4 - Imune';
    cdsNatOper.Post;
    cdsNatOper.insert;
    cdsNatOperNaturezaOperacao.AsInteger := 10;
    cdsNatOperdescri.AsString  :=  '10 - Não tributada - ISS regime fixo';
    cdsNatOper.Post;
    cdsNatOper.insert;
    cdsNatOperNaturezaOperacao.AsInteger := 11;
    cdsNatOperdescri.AsString  :=  '11 - Tributada integralmente e sujeita à Substituição tributária';
    cdsNatOper.Post;
    cdsNatOper.insert;
    cdsNatOperNaturezaOperacao.AsInteger := 20;
    cdsNatOperdescri.AsString  :=  '20 - Tributada integralmente com ISSRF';
    cdsNatOper.Post;
    cdsNatOper.insert;
    cdsNatOperNaturezaOperacao.AsInteger := 21;
    cdsNatOperdescri.AsString  :=  '21 - Tributada com redução da base de cálculo';
    cdsNatOper.Post;
    cdsNatOper.insert;
    cdsNatOperNaturezaOperacao.AsInteger := 22;
    cdsNatOperdescri.AsString  :=  '22 - Tributada com redução da base de cálculo com ISSRF';
    cdsNatOper.Post;
    cdsNatOper.insert;
    cdsNatOperNaturezaOperacao.AsInteger := 23;
    cdsNatOperdescri.AsString  :=  '23 - Tributada com redução da base de cálculo e sujeita à Substituição tributária';
    cdsNatOper.Post;
    cdsNatOper.insert;
    cdsNatOperNaturezaOperacao.AsInteger := 24;
    cdsNatOperdescri.AsString  :=  '24 - Não tributada ISS regime estimativa';
    cdsNatOper.Post;
    cdsNatOper.insert;
    cdsNatOperNaturezaOperacao.AsInteger := 25;
    cdsNatOperdescri.AsString  :=  '25 - Não tributada ISS Construção cível recolhido antecipadamente';
    cdsNatOper.Post;
    cdsNatOper.insert;
    cdsNatOperNaturezaOperacao.AsInteger := 26;
    cdsNatOperdescri.AsString  :=  '26 - Não tributada - ato cooperado';
    cdsNatOper.Post;



  end
  else
  //curitiba, por enquanto todos os outros
//  if DBInicio.Empresa.CID_IBGE = 4106902  then
  begin
    cdsNatOper.Insert;
    cdsNatOperdescri.AsString  :=   'Tributação no município';
    cdsNatOperNaturezaOperacao.AsInteger := 1;
    cdsNatOper.Post;
    cdsNatOper.Insert;
    cdsNatOperdescri.AsString  :=   'Tributação fora do município' ;
    cdsNatOperNaturezaOperacao.AsInteger := 2;
    cdsNatOper.Post;
    cdsNatOper.Insert;
    cdsNatOperdescri.AsString  :=   'Isenção' ;
    cdsNatOperNaturezaOperacao.AsInteger := 3;
    cdsNatOper.Post;
    cdsNatOper.Insert;
    cdsNatOperdescri.AsString  :=   'Imune' ;
    cdsNatOperNaturezaOperacao.AsInteger := 4;
    cdsNatOper.Post;
    cdsNatOper.Insert;
    cdsNatOperdescri.AsString  := 'Exigibilidade Suspensa por decisão judicial';
    cdsNatOperNaturezaOperacao.AsInteger := 5;
    cdsNatOper.Post;
    cdsNatOper.Insert;
    cdsNatOperdescri.AsString  := 'Exigibilidade Suspensa por procedimento administrativo';
    cdsNatOperNaturezaOperacao.AsInteger := 6;
    cdsNatOper.Post;
  end;

//  cbNatOper.EditValue :=
  //cbNatOper.Text:= CdsEmpresaEMP_naturezaoperacao.AsInteger;
end;

procedure TFormEmpresa.CbUfClick(Sender: tObject);
begin
    if CdSEMPRESA.State in [dsBrowse] then
       CdSEMPRESA.Edit;
end;

procedure TFormEmpresa.EdtEmp_CodigoKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;
end;

procedure TFormEmpresa.SpeedButton5Click(Sender: tObject);
begin
   FormCidadeGrid := TFormCidadeGrid.Create(Application);
   try
      FormCidadeGrid.sTipo := 'E';
      FormCidadeGrid.ShowModal;
   finally
      FormCidadeGrid.Destroy;
      FormCidadeGrid := Nil;
   end;
end;

procedure TFormEmpresa.TsNFEShow(Sender: TObject);
begin
  inherited;
    OpenAux(' select gen_id(GEN_SEQ_NFCe,0) as NFCe from rdb$database');
  if NOT qAux.IsEmpty then
    edNFCe.Text := IntToStr( qAux.FieldByName('NFCe').AsInteger);
end;

procedure TFormEmpresa.btnTestarClick(Sender: TObject);
var emldest: string ;
    corpo, anexos: TStringList;
begin
  if not inputquery( 'Teste de envio de email','Informe o email para teste de envio:', emldest)  then
    Exit;
  corpo := TStringList.Create;
  corpo.Add('Corpo da mensagem de Teste servidor NFE');
  anexos := TStringList.Create;
  anexos.Add(dbInicio.SistemaLocal + 'Manuais\Adjutor MX_Manual.pdf');
  if EnviaMail('NFE', DBInicio.Empresa.EMAIL, emldest, 'Teste de envio de Email NFE', DBInicio.Empresa.EMAIL, corpo, anexos) then
    ShowMessage('Mensagem enviada com sucesso!');;
  exit;
end;

procedure TFormEmpresa.btnTesteFinanceiroClick(Sender: TObject);
var
  corpo, anexos: TStringList;
  emldest: string;
begin
  inherited;
  if not inputquery( 'Teste de envio de email','Informe o email para teste de envio:', emldest)  then
    Exit;
  corpo := TStringList.Create;
  corpo.Add('Corpo da mensagem de Teste servidor Financeiro');
  anexos := TStringList.Create;
  anexos.Add(dbInicio.SistemaLocal + 'Manuais\Adjutor MX_Manual.pdf');
  if EnviaMail('Financeiro', DBInicio.Empresa.EMAIL, emldest, 'Teste de envio de Email Financeiro', DBInicio.Empresa.EMAIL, corpo, anexos) then
    ShowMessage('Mensagem enviada com sucesso!');;
end;

procedure TFormEmpresa.EdCaminhoFotoClick(Sender: tObject);
begin
   if (CdSEMPRESA.State in [Dsbrowse]) and not (CdSEMPRESA.IsEmpty) then
      begin
         CdSEMPRESA.Edit;
      end;
end;

procedure TFormEmpresa.EdCaminhoFotoButtonClick(Sender: tObject);
begin
   if (CdSEMPRESA.State in [Dsbrowse]) and not (CdSEMPRESA.IsEmpty) then
      begin
         CdSEMPRESA.Edit;
      end;
end;

procedure TFormEmpresa.CombCSOSNChange(Sender: tObject);
begin
      DesabilitaBotoes;
      if not(CdSEMPRESA.State in [dsEdit,dsInsert]) then
            CdSEMPRESA.Edit;
end;

procedure TFormEmpresa.DBCkSimplesClick(Sender: tObject);
begin
  // marcar defaut no CRT e CSOSN
  if  DBCkSimples.checked  then   // É SIMPLES
       begin
       CombCSOSN.ItemIndex := 1;     {Simples Nacional}
       DBRadCRT.ItemIndex := 0;      {Simples Nacioanl}
       DBRadModalidade.ItemIndex := 0 {Simples}
       end
  else
       begin
       CombCSOSN.ItemIndex := 0;
       DBRadCRT.ItemIndex := 2;       // É REGIME NORMAL
       end;
end;

procedure TFormEmpresa.DBCheckBox4Click(Sender: tObject);
begin
  if  DBCheckBox4.checked  then   // Sincronizar numero da Nfe
       begin
       DBEditSeqNfe.ReadOnly := True;
       DBEditSeqNfe.Color    := $00D7D7D7;
       end
  else
       begin
       DBEditSeqNfe.ReadOnly := False;
       DBEditSeqNfe.Color    := clWindow;
       end;
end;

procedure TFormEmpresa.DBEditSeqNfeChange(Sender: tObject);
begin
   if DBEditSeqNfe.EditText <> '' then
      Editprox.Text := IntToStr(StrToInt(DBEditSeqNfe.EditText) + 1);
end;



procedure TFormEmpresa.DBEditSeqNfeScanChange(Sender: tObject);
begin
   if DBEditSeqNfeScan.EditText <> '' then
      EditproxScan.Text := IntToStr(StrToInt(DBEditSeqNfeScan.EditText) + 1);
end;

procedure TFormEmpresa.SpeedButton1Click(Sender: tObject);
begin
    FormCidadeGrid := TFormCidadeGrid.Create(Application);
   try
      FormCidadeGrid.sTipo := 'C';
      FormCidadeGrid.ShowModal;
   finally
      FormCidadeGrid.Destroy;
      FormCidadeGrid := Nil;
   end;
end;

procedure TFormEmpresa.btFirstClick(Sender: TObject);
var
  bof, eof: Boolean;
  cId, bId: integer;
  tabela: string ;
begin
     bId := StrToIntDef(CdsEmpresaEMP_CODIGO.asstring, 0);
     bof := false;
     eof := false;
     tabela := 'EMP0000';
     case tComponent(Sender).tag of
       1:
         cId := BuscaUmDadoSqlasInteger('SELECT MIN(EMP_CODIGO) FROM '+ Tabela);
       2:
         cId := BuscaUmDadoSqlasInteger('SELECT MAX(EMP_CODIGO) FROM ' + Tabela + ' WHERE EMP_CODIGO < ' + IntToStr(bId));
       3:
         cId := BuscaUmDadoSqlasInteger('SELECT MIN(EMP_CODIGO) FROM ' + Tabela + ' WHERE EMP_CODIGO > ' + IntToStr(bId));
       4:
         cId := BuscaUmDadoSqlasInteger('SELECT MAX(EMP_CODIGO) FROM ' + Tabela);
     end;
     if cId <> 0 then
     begin
          bof := (cId = BuscaUmDadoSqlasInteger('SELECT MIN(EMP_CODIGO) FROM '+ Tabela));
          if not bof then
             eof := (cId = BuscaUmDadoSqlasInteger('SELECT MAX(EMP_CODIGO) FROM ' + Tabela));
          OpenEmpresa(IntToStr(cId));
     end
     else
     if tComponent(Sender).tag = 1 then
        bof := True
     else
     if tComponent(Sender).tag = 4 then
        eof := True;
     btFirst.Enabled := not bof;
     btPrior.Enabled := not bof;
     btNext.Enabled := not eof;
     btLast.Enabled := not eof;
end;

procedure TFormEmpresa.OpenEmpresa( const empid: string );
begin
      CdSEMPRESA.Close;
      qEMPRESA.SQL.TEXT := ' SELECT T1.*,COALESCE(SEQUENCIA_VALOR,0) SEQUENCIA_VALOR FROM EMP0000 T1 LEFT JOIN CID0000 T2 ON (T2.CID_CODIGO = T1.CID_CODIGO) '+
                           ' LEFT JOIN SYS_SEQUENCIADOR S1 ON (T1.EMP_CODIGO = S1.SEQUENCIA_EMPRESA AND SEQUENCIA_TABELA = '+QuotedStr('NFSERVICO')+')'+
                           ' where t1.emp_codigo='+empId;

      CdSEMPRESA.Open;
end;

procedure TFormEmpresa.PageControl1Change(Sender: TObject);
begin
  inherited;
  if PageControl1.ActivePage.Name = 'IEManaus' then
  begin
    sqlMultiIE.Close;
    sqlMultiIE.SQL.Clear;
    sqlMultiIE.SQL.Text := 'SELECT * FROM EMP_MULTIPLAS_IE WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo);
    sqlMultiIE.open;
    cdsMultiIE.Close;
    cdsMultiIE.Open;
    sqlMultiIE.First;
    carregaMultiIE();
    MostraCamposIE(False);
    MostraBotoesIE(True);

  end;


end;

procedure TFormEmpresa.btnAddImageClick(Sender: tObject);
begin
     if (OpenDialog1.Execute) then
     begin
          if (CdSEMPRESA.State in [Dsbrowse]) and not (CdSEMPRESA.IsEmpty) then
             CdSEMPRESA.Edit;
          Le_Imagem_BMP(OpenDialog1.FileName, imgLogo );
          Save_Imagem_BMP_toJPEG( imgLogo, CdSEMPRESAEMP_LOGO);
     end;
end;

procedure TFormEmpresa.btnGerarNFCEClick(Sender: TObject);
begin
  inherited;
  ExecSql('SET GENERATOR GEN_SEQ_NFCe TO ' + edNFCE.Text);
end;

procedure TFormEmpresa.btnRemoveImageClick(Sender: tObject);
begin
     if (CdSEMPRESA.State in [Dsbrowse]) and not (CdSEMPRESA.IsEmpty) then
         CdSEMPRESA.Edit;
     CdSEMPRESAEMP_LOGO.Clear;
     imgLogo.Picture.Bitmap:=Nil ;
end;


procedure TFormEmpresa.cxLookupComboBox1Click(Sender: tObject);
begin
   if (CdSEMPRESA.State in [dsbrowse]) and not (CdSEMPRESA.IsEmpty) then
       CdSEMPRESA.Edit;
    if CdsCFOPDentro.Locate('OPE_CODIGO',cxLookupComboBox1.EditValue,[])  then
       CdSEMPRESAOPE_CODIGO_DENTRO.AsString := CdsCFOPDentroOPE_CODIGO.AsString
    else
       CdSEMPRESAOPE_CODIGO_DENTRO.AsString := '';
end;

procedure TFormEmpresa.cxLookupComboBox1Exit(Sender: tObject);
begin
   if (CdSEMPRESA.State in [dsbrowse]) and not (CdSEMPRESA.IsEmpty) then
       CdSEMPRESA.Edit;
    if CdsCFOPDentro.Locate('OPE_CODIGO',cxLookupComboBox1.EditValue,[])  then
       CdSEMPRESAOPE_CODIGO_DENTRO.AsString := CdsCFOPDentroOPE_CODIGO.AsString
    else
       CdSEMPRESAOPE_CODIGO_DENTRO.AsString := '';
end;

procedure TFormEmpresa.cxLookupComboBox2Click(Sender: tObject);
begin
   if (CdSEMPRESA.State in [dsbrowse]) and not (CdSEMPRESA.IsEmpty) then
       CdSEMPRESA.Edit;
    if CdsCFOPFora.Locate('OPE_CODIGO',cxLookupComboBox2.EditValue,[])  then
       CdSEMPRESAOPE_CODIGO_FORA.AsString := CdsCFOPForaOPE_CODIGO.AsString
    else
       CdSEMPRESAOPE_CODIGO_FORA.AsString := '';
end;

procedure TFormEmpresa.cxLookupComboBox2Exit(Sender: tObject);
begin
   if (CdSEMPRESA.State in [dsbrowse]) and not (CdSEMPRESA.IsEmpty) then
       CdSEMPRESA.Edit;
    if CdsCFOPFora.Locate('OPE_CODIGO',cxLookupComboBox2.EditValue,[])  then
       CdSEMPRESAOPE_CODIGO_FORA.AsString := CdsCFOPForaOPE_CODIGO.AsString
    else
       CdSEMPRESAOPE_CODIGO_FORA.AsString := '';
end;

procedure TFormEmpresa.SpeedButton2Click(Sender: tObject);
begin
   if (cxLookupComboBox1.EditValue <> Null) then
   begin
         if (uteis.confirmacao  ( 'Confirma a atualização dos Clientes de Dentro do Estado com esta cfop?')=mrYes) then
         begin
                 eXECsQL( 'UPDATE CLI0000 SET OPE_CODIGO = '+QStr( cxLookupComboBox1.EditValue )+
                          ' WHERE CLI_CLASSE_CLI_FOR <> '+QsTR('F')+
                          ' AND CLI_UF = '+qStr(dbInicio.Empresa.UF)+
                          ' AND EMP_CODIGO = '+qStr(dbInicio.Empresa.EMP_CODIGO) );
                 uteis.aviso('Procedimento Realizado!');
         end;
   end;
end;

procedure TFormEmpresa.SpeedButton3Click(Sender: tObject);
begin
   if (cxLookupComboBox2.EditValue <> Null) then
   begin
         if (uteis.confirmacao  ( 'Confirma a atualização dos Clientes de Fora do Estado com esta cfop?')=mrYes) then
         begin
                 ExecSql('UPDATE CLI0000 SET OPE_CODIGO = '+QuotedStr(cxLookupComboBox2.EditValue)+' WHERE CLI_CLASSE_CLI_FOR <> ''F'' AND CLI_UF <> '+QuotedStr(dbInicio.Empresa.UF)+' AND EMP_CODIGO = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO));
                 uteis.aviso('Procedimento Realizado!');
         end;
   end;
end;

procedure TFormEmpresa.CdsEmpresaAfterApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
VAR REG : INTEGER;
  BOOK : TBookmark;
begin
  inherited;
  REG:= BuscaUmDadoSqlAsInteger('SELECT MAX(SEQUENCIA_REGISTRO) REGISTRO FROM SYS_SEQUENCIADOR');
  ExecSql('SET GENERATOR GEN_SEQUENCIADOR TO  ' + IntToStr(REG)   );

  CdsEmpresa.DisableControls;
  try
    BOOK := CdsEmpresa.GetBookmark;
    CdsEmpresa.First;
    while not CdsEmpresa.Eof do
    begin
      OpenAux('SELECT * FROM SYS_SEQUENCIADOR WHERE SEQUENCIA_EMPRESA = '+QuotedStr(CdsEmpresaEMP_CODIGO.AsString) +
              ' AND SEQUENCIA_TABELA = ''NFSERVICO'' AND SEQUENCIA_CAMPO =  '+ QuotedStr('RPS_CODIGO'));
      if qAux.IsEmpty then
        ExecSql( 'INSERT INTO SYS_SEQUENCIADOR (SEQUENCIA_EMPRESA, SEQUENCIA_TABELA, SEQUENCIA_CAMPO, SEQUENCIA_VALOR) '+
                 ' VALUES ('+QuotedStr(CdsEmpresaEMP_CODIGO.AsString)+','+ QuotedStr('NFSERVICO') + ','+QuotedStr('RPS_CODIGO')+','+
                       IntToStr(CdsEmpresaSEQUENCIA_VALOR.AsInteger) +')')
      Else
        ExecSql(' update SYS_SEQUENCIADOR  set  SEQUENCIA_VALOR = '+ IntToStr(CdsEmpresaSEQUENCIA_VALOR.AsInteger)+
                ' where SEQUENCIA_EMPRESA = '+QuotedStr(CdsEmpresaEMP_CODIGO.AsString) +
                '  AND SEQUENCIA_TABELA = ''NFSERVICO'' AND SEQUENCIA_CAMPO =  '+ QuotedStr('RPS_CODIGO'));

      CdsEmpresa.Next;
    end;

    CdsEmpresa.GotoBookmark(book);

  finally
    cdsempresa.FreeBookMark(BOOK);
    CdsEmpresa.EnableControls;
  end;
end;

procedure TFormEmpresa.CdsEmpresaAfterOpen(DataSet: TDataSet);
begin
     inherited;

     SCREEN.cURSOR := crSqlWait ;
     try

        if Assigned ( GroupBox7 ) then
        begin
             GroupBox7.Caption := 'Controle de Número de Notas';
             if not DBCheckBox4.enabled then
             begin
                  DBCheckBox4.Caption:='Só habilita quando desmarcar parâmetro numeração única para nfe';
                  GroupBox7.Enabled := (CdSEMPRESAEmp_CODIGO.AsString='001');
                  if not GroupBox7.Enabled then
                     GroupBox7.Caption := GroupBox7.Caption + ' (Somente editável na empresa 001 por estar configurado para numeração única)';
             end;
        end;

        EdtEmp_Codigo.text := CdSEMPRESAEmp_CODIGO.AsString;
        Editprox.Text      := InttoStr(StrtoIntDef(CdSEMPRESAEMP_SEQUENCIA_NFE.AsString, 0) + 1);
        EditproxScan.Text   := InttoStr(StrtoIntDef(CdSEMPRESAEMP_SEQUENCIA_NFE_SCAN.AsString, 0) + 1);

        Le_Imagem_JPEG_toBMP(CdSEMPRESAEMP_LOGO,imgLogo);
        Le_Imagem_JPEG_toBMP(CdsEmpresaEMP_LOGO_NFE,ImgLogoNFE);

        cxLookupComboBox1.EditValue := CdSEMPRESAOPE_CODIGO_DENTRO.AsString;
        cxLookupComboBox2.EditValue := CdSEMPRESAOPE_CODIGO_FORA.AsString;

        if CdSEMPRESAEMP_OPTANTE_SIMPLES.AsString = 'N' then     // não é do SIMPLES NACIONAL
           CombCSOSN.ItemIndex := 0
        else
        if CdSEMPRESAEMP_CSOSN.Asinteger = 101 then
           CombCSOSN.ItemIndex := 1
        else
        if CdSEMPRESAEMP_CSOSN.Asinteger = 102 then
             CombCSOSN.ItemIndex := 2
        else
        if CdSEMPRESAEMP_CSOSN.Asinteger = 103 then
             CombCSOSN.ItemIndex := 3
        else
        if CdSEMPRESAEMP_CSOSN.Asinteger = 201 then
             CombCSOSN.ItemIndex := 4
        else
        if CdSEMPRESAEMP_CSOSN.Asinteger = 202 then
             CombCSOSN.ItemIndex := 5
        else
        if CdSEMPRESAEMP_CSOSN.Asinteger = 203 then
             CombCSOSN.ItemIndex := 6
        else
        if CdSEMPRESAEMP_CSOSN.Asinteger = 300 then
             CombCSOSN.ItemIndex := 7
        else
        if CdSEMPRESAEMP_CSOSN.Asinteger = 400 then
             CombCSOSN.ItemIndex := 8
        else
        if CdSEMPRESAEMP_CSOSN.Asinteger = 500 then
             CombCSOSN.ItemIndex := 9
        else
        if CdSEMPRESAEMP_CSOSN.Asinteger = 900 then
             CombCSOSN.ItemIndex := 10
        else
             CombCSOSN.ItemIndex := -1;

        if CdSEMPRESAEMP_OPTANTE_SIMPLES.AsString = 'N' then     // não é do SIMPLES NACIONAL
           CombCSOSNST.ItemIndex := 0
        else
        if CdSEMPRESAEMP_CSOSN_ST.Asinteger = 101 then
             CombCSOSNST.ItemIndex := 1
        else
        if CdSEMPRESAEMP_CSOSN_ST.Asinteger = 102 then
             CombCSOSNST.ItemIndex := 2
        else
        if CdSEMPRESAEMP_CSOSN_ST.Asinteger = 103 then
             CombCSOSNST.ItemIndex := 3
        else
        if CdSEMPRESAEMP_CSOSN_ST.Asinteger = 201 then
             CombCSOSNST.ItemIndex := 4
        else
        if CdSEMPRESAEMP_CSOSN_ST.Asinteger = 202 then
             CombCSOSNST.ItemIndex := 5
        else
        if CdSEMPRESAEMP_CSOSN_ST.Asinteger = 203 then
             CombCSOSNST.ItemIndex := 6
        else
        if CdSEMPRESAEMP_CSOSN_ST.Asinteger = 300 then
             CombCSOSNST.ItemIndex := 7
        else
        if CdSEMPRESAEMP_CSOSN_ST.Asinteger = 400 then
             CombCSOSNST.ItemIndex := 8
        else
        if CdSEMPRESAEMP_CSOSN_ST.Asinteger = 500 then
             CombCSOSNST.ItemIndex := 9
        else
        if CdSEMPRESAEMP_CSOSN_ST.Asinteger = 900 then
             CombCSOSNST.ItemIndex := 10
        else
             CombCSOSNST.ItemIndex := -1;
     finally
        Screen.Cursor := crDefault ;
     end;

end;

procedure TFormEmpresa.CdsEmpresaAfterScroll(DataSet: TDataSet);
begin
  inherited;
  CarregaNaturezaOperacao;
end;

procedure TFormEmpresa.CdsEmpresaBeforeEdit(DataSet: TDataSet);
begin
     inherited;
     FormEmpresa.DesabilitaBotoes;
end;

procedure TFormEmpresa.CdsEmpresaEMP_USERNAME_FINGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if not Sender.IsNull then
    Text := DesCriptografa(Sender.Value)
  else
    text := '';

end;

procedure TFormEmpresa.CdsEmpresaEMP_USERNAME_FINSetText(Sender: TField; const Text: string);
begin
  inherited;
  if text <> '' then
    Sender.Value := Criptografa(Text)
  else
    Sender.Value:= '';
end;

procedure TFormEmpresa.cdsMultiIEAfterScroll(DataSet: TDataSet);
begin
  inherited;
  carregaMultiIE();
end;

procedure TFormEmpresa.FormCreate(Sender: tObject);
begin
  INHERITED;
  DBCheckBox4.enabled := dbInicio.BuscaUmDadoSqlAsInteger ('Select cast(count(*) as integer) as conta from    prmt0001 where PMT_USAR_SEQUENCIA_NFE_UNICA='+qStr('S'))=0;
  fAlterou:=False;
  PageControl1.ActivePageIndex := 0;
end;


end.


