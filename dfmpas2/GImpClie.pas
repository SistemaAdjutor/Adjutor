{***********************************************************************
| Programa...: GimpClie   - Nome formulario =  FormGImpClie
| Objetivo...: Gerenciador de relatoriros dos clientes
| Analista...: Márcio Neu Pacheco
| Programador: Márcio
|
| Comentários:
|
| Criação..........: Ago/98
| Ultima Alteração.: Jul/02
| Alterado por.....: Márcio
|
|***********************************************************************}
unit GImpClie;

interface

uses
  PesquisaClientesForm,
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, ExtCtrls, Buttons, Db, RwFunc, Grids, DBGrids,
  Provider, SqlExpr,SqlClientDataSet, DBClient, ppBands, ppClass,
  ppCtrls, ppVar, ppPrnabl, ppCache, ppProd, ppReport, ppDB, ppComm,
  ppRelatv, ppDBPipe, ppModule, raCodMod, ppParameter, Mask,
    frxClass, frxDBSet, frxExportXLS, Data.DBXFirebird,
  ppDesignLayer, SimpleDS, Vcl.ComCtrls, JvExComCtrls, JvDateTimePicker, Data.FMTBcd,BaseDBForm, ACBrEnterTab, ACBrBase, ACBrCalculadora, frxExportPDF, frxExportXLSX, SgDbSeachComboUnit, JvExMask,
  JvToolEdit;

type
  TFormGImpClie = class(TfrmBaseDB)
    grb02: TGroupBox;
    LbCidade: TLabel;
    LbBairro: TLabel;
    PrinterSetupDialog1: TPrinterSetupDialog;
    grb05: TGroupBox;
    BitConfig: TBitBtn;
    BitOk: TBitBtn;
    BitCancelar: TBitBtn;
    grb03: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    EdtDias: TEdit;
    GroupBox2: TGroupBox;
    RadVideo: TRadioButton;
    RadImpressora: TRadioButton;
    EdtCidade: TEdit;
    EdtBairro: TEdit;
    RadAtivos: TRadioButton;
    RadClientesInativos: TRadioButton;
    EdtEstado: TEdit;
    LbEstado: TLabel;
    LbPorte: TLabel;
    RadGpTipo: TRadioGroup;
    GroupBox1: TGroupBox;
    LTBox: TListBox;
    grb04: TGroupBox;
    grb00: TGroupBox;
    ChekMalaDireta: TCheckBox;
    CbBoxTipoEtiq: TComboBox;
    RadText: TRadioButton;
    SqlCdsClienteRB: TSQLClientDataSet;
    DsClienteRB: TDataSource;
    SqlCdsRepresentante: TSQLClientDataSet;
    SqlCdsRepresentanteREP_CODIGO: TStringField;
    SqlCdsRepresentanteREP_NOME: TStringField;
    SqlCdsRegiao: TSQLClientDataSet;
    SqlCdsRegiaoREG_CODIGO: TStringField;
    SqlCdsRegiaoREG_DESCRI: TStringField;
    SqlCdsRegiaoEMP_CODIGO: TStringField;
    SqlCdsAtividade: TSQLClientDataSet;
    SqlCdsAtividadeRCL_CODIGO: TStringField;
    SqlCdsAtividadeRCL_ATIVIDADE: TStringField;
    SqlCdsAtividadeEMP_CODIGO: TStringField;
    SqlCdsRepresentanteEMP_CODIGO: TStringField;
    CbRamo: TComboBox;
    CbRegiao: TComboBox;
    ppReport00: TppReport;
    ppReport02: TppReport;
    ppReport03: TppReport;
    pp00HeaderBand1: TppHeaderBand;
    ppLine1: TppLine;
    LBL_00_EMPRESA: TppLabel;
    LBL_00_LTITULO1: TppLabel;
    LBL_00_LTITULO2: TppLabel;
    ppLine2: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLine3: TppLine;
    ppLabel5: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    pp00DetailBand1: TppDetailBand;
    ppDBText3: TppDBText;
    ppLabel6: TppLabel;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText4: TppDBText;
    ppLabel7: TppLabel;
    ppDBText9: TppDBText;
    ppLabel8: TppLabel;
    ppDBText10: TppDBText;
    ppLabel9: TppLabel;
    ppLine4: TppLine;
    ppDBText8: TppDBText;
    ppDBText11: TppDBText;
    pp00SummaryBand1: TppSummaryBand;
    ppLabel10: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppGroup1: TppGroup;
    pp00GroupHeaderBand1: TppGroupHeaderBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppReport01: TppReport;
    ppReport05: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLine5: TppLine;
    LBL_05_EMPRESA: TppLabel;
    LBL_05_LTITULO1: TppLabel;
    LBL_05_LTITULO2: TppLabel;
    ppLine6: TppLine;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLine7: TppLine;
    ppLabel19: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppGroup3: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel20: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLine26: TppLine;
    SqlCdsClienteRBCLI_RAZAO: TStringField;
    SqlCdsClienteRBCLI_PORTE: TStringField;
    SqlCdsClienteRBCLI_ENDERE: TStringField;
    SqlCdsClienteRBCLI_BAIRRO: TStringField;
    SqlCdsClienteRBCLI_CEP: TStringField;
    SqlCdsClienteRBCLI_CIDADE: TStringField;
    SqlCdsClienteRBCLI_UF: TStringField;
    SqlCdsClienteRBCLI_FONE: TStringField;
    SqlCdsClienteRBCLI_FAX: TStringField;
    SqlCdsClienteRBCLI_CONTATO: TStringField;
    SqlCdsClienteRBCLI_DTULTCOM: TSQLTimeStampField;
    SqlCdsClienteRBCLI_INATIVO: TStringField;
    SqlCdsClienteRBCLI_EMAIL: TStringField;
    SqlCdsClienteRBCLI_HOME: TStringField;
    SqlCdsClienteRBCLI_ATIVIDADE: TStringField;
    SqlCdsClienteRBREP_CODIGO: TStringField;
    SqlCdsClienteRBREP_NOME: TStringField;
    SqlCdsClienteRBCLI_FUNCONT: TStringField;
    SqlCdsClienteRBCLI_CODIGO: TStringField;
    ppDB01: TppDBPipeline;
    ppDB03: TppDBPipeline;
    ppDB05: TppDBPipeline;
    DsCliProdu: TDataSource;
    SqlCdsCliProdu: TSQLClientDataSet;
    ppDB02: TppDBPipeline;
    ppDBEtiq: TppDBPipeline;
    ppREtiq: TppReport;
    RadAlfa: TRadioButton;
    RadCida: TRadioButton;
    ppReport04: TppReport;
    ppDB04: TppDBPipeline;
    SqlCdsCliProduSUBTOTAL_CC: TCurrencyField;
    ppDBText65: TppDBText;

    ppDBText66: TppDBText;

    ppDB00: TppDBPipeline;
    ppDBText67: TppDBText;
    ppLabel11: TppLabel;
    grb01: TGroupBox;
    LbRepres: TLabel;
    CbRepre: TComboBox;
    ppDBText71: TppDBText;
    pp02HeaderBand1: TppHeaderBand;
    ppLine9: TppLine;
    ppLine10: TppLine;
    LBL_02_EMPRESA: TppLabel;
    LBL_02_LTITULO1: TppLabel;
    LBL_02_LTITULO2: TppLabel;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable12: TppSystemVariable;
    pp02DetailBand1: TppDetailBand;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText69: TppDBText;
    pp02SummaryBand1: TppSummaryBand;
    ppLabel24: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppGroup5: TppGroup;
    pp02GroupHeaderBand1: TppGroupHeaderBand;
    ppLabel25: TppLabel;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppLine11: TppLine;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppGroup6: TppGroup;
    pp02GroupHeaderBand2: TppGroupHeaderBand;
    ppLabel26: TppLabel;
    ppDBText33: TppDBText;
    ppLine12: TppLine;
    ppDBText34: TppDBText;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLine13: TppLine;
    ppDBAtivo: TppDBText;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppLine14: TppLine;
    raCodeModule3: TraCodeModule;
    SqlCdsCliProduCLI_CODIGO: TStringField;
    SqlCdsCliProduCLI_RAZAO: TStringField;
    SqlCdsCliProduCLI_PORTE: TStringField;
    SqlCdsCliProduCLI_ENDERE: TStringField;
    SqlCdsCliProduCLI_BAIRRO: TStringField;
    SqlCdsCliProduCLI_CEP: TStringField;
    SqlCdsCliProduCLI_CIDADE: TStringField;
    SqlCdsCliProduCLI_UF: TStringField;
    SqlCdsCliProduCLI_FONE: TStringField;
    SqlCdsCliProduCLI_FAX: TStringField;
    SqlCdsCliProduCLI_CONTATO: TStringField;
    SqlCdsCliProduCLI_FUNCONT: TStringField;
    SqlCdsCliProduCLI_DTINICIO: TSQLTimeStampField;
    SqlCdsCliProduCLI_DTULTCOM: TSQLTimeStampField;
    SqlCdsCliProduREP_CODIGO: TStringField;
    SqlCdsCliProduFAT_CODIGO: TStringField;
    SqlCdsCliProduFAT_DTEMIS: TSQLTimeStampField;
    SqlCdsCliProduPRD_REFER: TStringField;
    SqlCdsCliProduPRD_DESCRI: TStringField;
    SqlCdsCliProduNF_QTDE: TFMTBCdField;
    SqlCdsCliProduNF_IPIALIQ: TFMTBCdField;
    SqlCdsCliProduNF_PRECO: TFMTBCdField;
    pp04HeaderBand1: TppHeaderBand;
    ppLine19: TppLine;
    LBL_04_EMPRESA: TppLabel;
    LBL_04_LTITULO1: TppLabel;
    LBL_04_LTITULO2: TppLabel;
    ppLine20: TppLine;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    pp04DetailBand1: TppDetailBand;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppGroup7: TppGroup;
    pp04GroupHeaderBand1: TppGroupHeaderBand;
    ppDBText51: TppDBText;
    ppLabel41: TppLabel;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppLabel42: TppLabel;
    ppDBText54: TppDBText;
    ppLabel43: TppLabel;
    ppDBText55: TppDBText;
    ppLabel44: TppLabel;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    ppLabel45: TppLabel;
    ppDBText58: TppDBText;
    ppLine21: TppLine;
    ppDBText59: TppDBText;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    pp04GroupFooterBand1: TppGroupFooterBand;
    ppLabel46: TppLabel;
    ppDBCalc6: TppDBCalc;
    ppLine22: TppLine;
    ppLine23: TppLine;
    raCodeModule1: TraCodeModule;
    ppLine27: TppLine;
    SqlCdsCliProduREP_NOME: TStringField;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppDBText73: TppDBText;
    ppDBText74: TppDBText;
    pp03HeaderBand1: TppHeaderBand;
    ppLine15: TppLine;
    LBL_03_EMPRESA: TppLabel;
    LBL_03_LTITULO1: TppLabel;
    LBL_03_LTITULO2: TppLabel;
    ppLine16: TppLine;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLine17: TppLine;
    pp03DetailBand1: TppDetailBand;
    pp03SummaryBand1: TppSummaryBand;
    ppLine18: TppLine;
    ppLabel40: TppLabel;
    raCodeModule5: TraCodeModule;
    raCodeModule6: TraCodeModule;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppDetailEtiq: TppDetailBand;
    ppDBText22: TppDBText;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppVariable1: TppVariable;
    ppVariable2: TppVariable;
    ppColumnFooterBand1: TppColumnFooterBand;
    raCodeModule2: TraCodeModule;
    SqlCdsClienteRBREP_SITUACAO: TStringField;
    SqlCdsClienteRBREG_CODIGO: TStringField;
    SqlCdsClienteRBREG_DESCRI: TStringField;
    ppParameterList1: TppParameterList;
    pp01HeaderBand1: TppHeaderBand;
    ppLine24: TppLine;
    LBL_01_EMPRESA: TppLabel;
    ppLine25: TppLine;
    ppSystemVariable9: TppSystemVariable;
    ppSystemVariable10: TppSystemVariable;
    ppLabel18: TppLabel;
    ppLabel55: TppLabel;
    LBL_01_LTITULO1: TppLabel;
    LBL_01_LTITULO2: TppLabel;
    ppLabel62: TppLabel;
    ppLine8: TppLine;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel34: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    pp01DetailBand1: TppDetailBand;
    ppDBText17: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText68: TppDBText;
    ppDBText30: TppDBText;
    ppDBText21: TppDBText;
    ppDBText72: TppDBText;
    ppDBText18: TppDBText;
    pp01SummaryBand1: TppSummaryBand;
    ppLabel67: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppLine29: TppLine;
    raCodeModule4: TraCodeModule;
    CdsClienteServico: TSQLClientDataSet;
    CdsClienteServicoCLI_CODIGO: TStringField;
    CdsClienteServicoCLI_RAZAO: TStringField;
    CdsClienteServicoCLI_SV_AUTORIZADAS: TIntegerField;
    CdsClienteServicoCLI_SV_VALIDADE_ATUAL: TDateField;
    CdsClienteServicoCLI_SV_INICIOCT: TDateField;
    CdsClienteServicoCLI_SV_DATA_CANCEL_CONTRATO: TDateField;
    frx: TfrxReport;
    frxdbServico: TfrxDBDataset;
    CdsClienteServicoCLI_SV_VALOR_CONTRATO: TFMTBCdField;
    frxXLSExport1: TfrxXLSExport;
    grb06: TGroupBox;
    rbStatusAtivo: TRadioButton;
    rbStatusInativo: TRadioButton;
    rbStatusTodos: TRadioButton;
    ppGroup4: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    Lbl_Atividade: TppDBText;
    grpDatCadastro: TGroupBox;
    DataInicio: TJvDateTimePicker;
    DataFim: TJvDateTimePicker;
    sqlClienteOrigem: TSQLQuery;
    Label1: TLabel;
    Label2: TLabel;
    frxClienteOrigem: TfrxReport;
    frxOrigem: TfrxDBDataset;
    sqlClienteOrigemCLI_RAZAO: TStringField;
    sqlClienteOrigemCLI_CGC: TStringField;
    sqlClienteOrigemcli_cidade: TStringField;
    sqlClienteOrigemCLI_UF: TStringField;
    sqltmstmpfldClienteOrigemCLI_DTINICIO: TSQLTimeStampField;
    sqltmstmpfldClienteOrigemCLI_DTULTCOM: TSQLTimeStampField;
    sqlClienteOrigemCORI_DESCRICAO: TStringField;
    sqlClienteOrigemREP_NOME: TStringField;
    ppLabel35: TppLabel;
    ppLine28: TppLine;
    ppDBCalc5: TppDBCalc;
    ppLabel39: TppLabel;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppDBCalc4: TppDBCalc;
    ppLine30: TppLine;
    SqlCdsClienteRBCC_NOME: TStringField;
    SqlCdsClienteRBCC_EMAIL: TStringField;
    SqlCdsClienteRBCC_CARGO: TStringField;
    SqlCdsClienteRBCC_CELULAR: TStringField;
    SqlCdsClienteRBCC_TELEFONE: TStringField;
    SqlCdsClienteRBCC_RAMAL: TStringField;
    frxDBClienteRB: TfrxDBDataset;
    frxListaContatos: TfrxReport;
    grpTipoContato: TGroupBox;
    rbTipoColaborador: TRadioButton;
    rbTipoContador: TRadioButton;
    rbTipoDiretor: TRadioButton;
    SqlCdsClienteRBCC_TIPO: TStringField;
    rbTipoTodos: TRadioButton;
    frxPDFExport1: TfrxPDFExport;
    frxXLSXExport1: TfrxXLSXExport;
    grbEmpresa: TGroupBox;
    rbEmpresaTodas: TRadioButton;
    rbEmpresaLogada: TRadioButton;
    grbContatos: TGroupBox;
    rbContatosTodos: TRadioButton;
    rbContatosEmail: TRadioButton;
    SqlCdsClienteRBEMP_CODIGO: TStringField;
    grbClassificacao: TGroupBox;
    rbClassCliente: TRadioButton;
    rbClassFornecedor: TRadioButton;
    rbClassAmbos: TRadioButton;
    SqlCdsClienteRBCLI_CLASSE_CLI_FOR: TStringField;
    SqlCdsClienteRBRCL_ATIVIDADE: TStringField;
    ppGroup8: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppDBText38: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText39: TppDBText;
    ppDBText41: TppDBText;
    ppDBText40: TppDBText;
    ppDBText42: TppDBText;
    ppLabel61: TppLabel;
    SqlCdsClienteRBCORI_DESCRICAO: TStringField;
    ppDB00ppField33: TppField;
    radRecuperacao: TRadioButton;
    gbPeriodo: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    EditDataI: TJvDateEdit;
    EditDataF: TJvDateEdit;
    gbCliente: TGroupBox;
    sbCliente: TSgDbSearchCombo;
    qCliente: TSQLQuery;
    qClienteProdutoVendido: TSQLQuery;
    frxDBClienteProdutoVendido: TfrxDBDataset;
    frxClienteProdutoVendido: TfrxReport;
    qClienteProdutoVendidoANOMES: TStringField;
    qClienteProdutoVendidoCLI_CODIGO: TStringField;
    qClienteProdutoVendidoEMP_CODIGO: TStringField;
    qClienteProdutoVendidoCLI_RAZAO: TStringField;
    qClienteProdutoVendidoCLI_PORTE: TStringField;
    qClienteProdutoVendidoCLI_ENDERE: TStringField;
    qClienteProdutoVendidoCLI_BAIRRO: TStringField;
    qClienteProdutoVendidoCLI_CEP: TStringField;
    qClienteProdutoVendidoCLI_CIDADE: TStringField;
    qClienteProdutoVendidoCLI_UF: TStringField;
    qClienteProdutoVendidoCLI_FONE: TStringField;
    qClienteProdutoVendidoCLI_FAX: TStringField;
    qClienteProdutoVendidoCLI_CONTATO: TStringField;
    qClienteProdutoVendidoCLI_FUNCONT: TStringField;
    qClienteProdutoVendidoCLI_DTINICIO: TSQLTimeStampField;
    qClienteProdutoVendidoCLI_DTULTCOM: TSQLTimeStampField;
    qClienteProdutoVendidoREP_CODIGO: TStringField;
    qClienteProdutoVendidoREP_NOME: TStringField;
    qClienteProdutoVendidoFAT_CODIGO: TStringField;
    qClienteProdutoVendidoFAT_DTEMIS: TSQLTimeStampField;
    qClienteProdutoVendidoPRD_REFER: TStringField;
    qClienteProdutoVendidoPRD_DESCRI: TStringField;
    qClienteProdutoVendidoNF_QTDE: TFMTBCDField;
    qClienteProdutoVendidoNF_IPIALIQ: TFMTBCDField;
    qClienteProdutoVendidoNF_PRECO: TFMTBCDField;
    procedure MudaCorCampos(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure BitOkClick(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
    procedure EdtBairroExit(Sender: tObject);
    procedure EdtDiasKeyPress(Sender: tObject; var Key: Char);
    procedure BitConfigClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure EdtEstadoClick(Sender: tObject);
    procedure CbBoxTipoEtiqClick(Sender: tObject);
    procedure ChekMalaDiretaClick(Sender: tObject);
    procedure EdtCidadeExit(Sender: tObject);
    procedure LTBoxClick(Sender: tObject);
    procedure CbRepreClick(Sender: tObject);
    procedure CbRamoClick(Sender: tObject);
    procedure CbRegiaoClick(Sender: tObject);
    procedure pp00HeaderBand1BeforePrint(Sender: tObject);
    procedure pp01HeaderBand1BeforePrint(Sender: tObject);
    procedure pp02HeaderBand1BeforePrint(Sender: tObject);
    procedure pp03HeaderBand1BeforePrint(Sender: tObject);
    procedure pp04HeaderBand1BeforePrint(Sender: tObject);
    procedure ppHeaderBand1BeforePrint(Sender: tObject);
    procedure SqlCdsCliProduCalcFields(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure FormCreate(Sender: tObject);
    procedure frxGetValue(const VarName: String; var Value: Variant);
    procedure AjusteConfiguracao;  //ativado a etiqueta
    procedure AjusteLayoutPadrao;
   //etiqueta padrão
    procedure sqlClienteOrigemCLI_CGCGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure frxClienteOrigemGetValue(const VarName: string; var Value: Variant);
    procedure frxListaContatosGetValue(const VarName: string; var Value: Variant);
    procedure frxClienteProdutoVendidoBeginDoc(Sender: TObject);
    procedure frxClienteProdutoVendidoGetValue(const VarName: string; var Value: Variant);
    procedure EditDataFExit(Sender: TObject);
    procedure EditDataIExit(Sender: TObject);
    procedure sbClienteButtonClick(Sender: TObject); //etiqueta padrão
  private
    { Private declarations }
       {campos}
   CampoEdit    :TEdit;
   CampoBox     :TComboBox;
   CampoTDBLuk  :TDBLookupComboBox;
   CampoListBox :TListBox;
   wrep_codigo,wporte,WporteD,wregiao,wRamo,wRamo_Descri,wDataI,wRep_nome,wReg_descri,wOrdem,wSeleciona : string;
   wdatachave   : Tdatetime;

   sClienteAtivoSql:String;

    procedure CriaRel00;
    procedure CriaRel01;
    procedure CriaRel02;
    procedure CriaRel03;
    procedure CriaRel04;
    procedure CriaRel05;
    procedure CriaRel06;
    procedure CriaRel07;
    procedure RelatorioOrigemCliente;
    procedure RelClienteProdutoVendido;
  public
    { Public declarations }
    procedure DesativaGrupo1;
    procedure AtivaGrupo1;

  end;

var
  FormGImpClie: TFormGImpClie;
  // Parametros do relatório
    wNumeroColunas  :Integer;
    wEspacoColuna1  :INTEGER;
    wEspacoColuna2  :INTEGER;
    wEspacoColuna3  :INTEGER;
    wMargemEsquerta :Extended;
    wMargemDireita  :Extended;
    wPagLargura     :Extended;
    wPagComprimento :Extended;
    wMargemTopo     :Extended;
    wMargemRodape   :Extended;
    // Parametros da Etiqueta
    wLarguraEtiq    :Extended;
    wComprimentoEtiq:Extended;
    wEntreLinhasEtiq:Extended;
    FiltrosListaEmail : string;
//    wNomeFormulario :String;
implementation


{$R *.DFM}

uses Uteis, DataCad, Men0001, ufrmpreviewrb, iniciodb;





procedure TFormGImpClie.MudaCorCampos(Sender: tObject);
begin
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
  {cor dos campos TCampoBox}
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
  {CampoTDBLuk  :TDBLookupComboBox}
   if Assigned(CampoTDBLuk) then
      begin
         CampoTDBLuk.color := clWindow;
      end;
   if ActiveControl is TDBLookupComboBox then
      begin
         TDBLookupComboBox(ActiveControl).color := $0080FFFF;
         CampoTDBLuk := TDBLookupComboBox(ActiveControl);
      end
   else
      begin
         CampoTDBLuk := nil;
      end;
  {CampoListBox  :TListBox
   if Assigned(CampoListBox) then
      begin
         CampoListBox.color := clWindow;
      end;
   if ActiveControl is TListBox then
      begin
         TListBox(ActiveControl).color := $0080FFFF;
         CampoListBox := TListBox(ActiveControl);
      end
   else
      begin
         CampoListBox := nil;
      end;
}      
end;

procedure TFormGImpClie.FormShow(Sender: tObject);
begin
    inherited;
    Left:= 134;
    Top := 82;
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
    try
      SqlCdsRepresentante.Close;
      SqlCdsRepresentante.CommandText:=SQLDEF('REPRESENTANTES','SELECT REP_CODIGO,REP_NOME, EMP_CODIGO FROM REP0000','','REP_NOME','');
      SqlCdsRepresentante.Open;
      SqlCdsRepresentante.First;
      while not SqlCdsRepresentante.Eof do
        begin
            CbRepre.Items.Add(SqlCdsRepresentanteREP_NOME.AsString);
            SqlCdsRepresentante.Next;
        end;
      CbRepre.ItemIndex := 0;
    except on E:EdatabaseError do
        begin
            uteis.erro  (Pchar('Erro ao abrir tabela Representantes !'+e.message));
        end;
    end;
    //
    try
      SqlCdsRegiao.Close;
      SqlCdsRegiao.CommandText:=SQLDEF('TABELAS','SELECT REG_CODIGO,REG_DESCRI, EMP_CODIGO FROM REG0000','','REG_DESCRI','');
      SqlCdsRegiao.Open;
      SqlCdsRegiao.First;
      while not SqlCdsRegiao.Eof do
        begin
            CbRegiao.Items.Add(SqlCdsRegiaoREG_DESCRI.AsString);
            SqlCdsRegiao.Next;
        end;
      CbRegiao.ItemIndex := 0;
    except on E:EdatabaseError do
        begin
            uteis.erro  (Pchar('Erro ao abrir tabela Região !'+e.message));
        end;
    end;
    //
    try
      SqlCdsAtividade.Close;
      SqlCdsAtividade.CommandText:=SQLDEF('TABELAS','SELECT * FROM CLI_ATV1','','RCL_ATIVIDADE','');
      SqlCdsAtividade.Open;
      SqlCdsAtividade.First;
      while not SqlCdsAtividade.Eof do
        begin
            CbRamo.Items.Add(SqlCdsAtividadeRCL_ATIVIDADE.AsString);
            SqlCdsAtividade.Next;
        end;
      CbRamo.ItemIndex := 0;
    except on E:EdatabaseError do
        begin
            uteis.erro  (Pchar('Erro ao abrir tabela ATIVIDADE !'+e.message));
        end;
    end;
    screen.cursor := crHourglass;
    // carregar comb com nome dos relatórios
    // Carrega ListBox com os nomes dos Relatorios
    LTBOX.Items.Clear;
    LTBOX.Items.Add('Listagem Geral de Clientes');               //CriaRel00 0
    LTBOX.Items.Add('Clientes que compraram/não compraram');     //CriaRel01 1
    LTBOX.Items.Add('Clientes por Região');                      //CriaRel02 2
    LTBOX.Items.Add('Clientes por Ramo de Atividade');           //CriaRel03 3
    LTBOX.Items.Add('Listagem de Clientes e Produtos Vendidos'); //CriaRel04 4
    LTBOX.Items.Add('Lista de e-mails de Clientes');             //CriaRel05 5
    if  (FrmMenu.wServicoCliente = 'S') then
      LTBOX.Items.Add('Relatório de Serviços - Contrato');         //CriaRel06 6
    LTBOX.Items.Add('Cliente por Origem');                  //relatório 06 ou 7
    LTBOX.Items.Add('Lista de contatos de clientes para CRM ou Email Marketing');   //relatorio 7 ou 8
    LTBOX.Items.Add('Listagem de Clientes e Produtos Vendidos por Mês'); // 8 ou 9  - quem foi o psicopata que fez isso????
    LTBox.ItemIndex     := 0;
    RadGpTipo.ItemIndex := 0;
    LTBox.SetFocus;
    FormGImpClie.AutoSize := True;
    LTBoxClick(Sender);
    screen.Cursor := Crdefault;
end;

procedure TFormGImpClie.BitOkClick(Sender: tObject);
begin
    {Preparar variável que guarda o Porte dos cliente selecionados, conforme
     escolhido no radgroup }

    //Cliente Inativo Ativo Todos
    if (rbStatusAtivo.Checked) then
        sClienteAtivoSql := ' and C1.CLI_INATIVO = ''A'''
    else
    if (rbStatusInativo.Checked) then
      sClienteAtivoSql := ' and C1.CLI_INATIVO = ''I'''
    else if radRecuperacao.Checked then
      sClienteAtivoSql := ' and C1.CLI_INATIVO = ''R'''
    else
      sClienteAtivoSql := '';
    if RadGptipo.ItemIndex = 0 then  // todos
       begin
           Wporte := 'T';
           WporteD:= 'TODOS';
       end;
    if RadGptipo.ItemIndex = 1 then  // Pequeno
       begin
           Wporte := 'P';
           WporteD:= 'PEQUENO';
       end;
    if RadGptipo.ItemIndex = 2 then  // Médio
       begin
           Wporte := 'M';
           WporteD:= 'MEDIO';
       end;
    if RadGptipo.ItemIndex = 3 then  // Grande
       begin
           Wporte := 'G';
           WporteD:= 'GRANDE';
       end;
    Screen.Cursor := crHourGlass;
    if LTBox.ItemIndex = 0 then
       begin
           CriaRel00;
           exit;
       end
    else
    if LTBox.ItemIndex = 1 then
       begin
           CriaRel01;
           exit;
       end
    else
    if LTBox.ItemIndex = 2 then
       begin
           CriaRel02;
           exit;
       end
    else
    if LTBox.ItemIndex = 3 then
       begin
           CriaRel03;
           exit;
       end
    else
    if LTBox.ItemIndex = 4 then
       begin
           CriaRel04;
           exit;
       end
    else
    if LTBox.ItemIndex = 5 then
       begin
           CriaRel05;
           exit;
       end
    else
    if (LTBox.ItemIndex = 6) and (FrmMenu.wServicoCliente = 'S')  then
       begin
           CriaRel06;
           exit;
       end
    else
    if ((LTBox.ItemIndex in [6]) and (FrmMenu.wServicoCliente <> 'S')) or (LTBox.ItemIndex in [7]) and (FrmMenu.wServicoCliente = 'S')  then
    begin
      RelatorioOrigemCliente;
    end
    else
    if ((LTBox.ItemIndex in [7]) and (FrmMenu.wServicoCliente <> 'S')) or (LTBox.ItemIndex in [8]) and (FrmMenu.wServicoCliente = 'S') then
    begin
      CriaRel07
    end
    else
    if ((LTBox.ItemIndex in [8]) and (FrmMenu.wServicoCliente <> 'S')) or (LTBox.ItemIndex in [9]) and (FrmMenu.wServicoCliente = 'S') then
    begin
      RelClienteProdutoVendido;
    end;

    Screen.Cursor := crDefault;
end;

procedure TFormGImpClie.BitCancelarClick(Sender: tObject);
begin
  FormGImpClie.Close;
end;

procedure TFormGImpClie.EditDataFExit(Sender: TObject);
begin
  inherited;
  ValidaData(EditDataF.Text, EditDataF);
end;

procedure TFormGImpClie.EditDataIExit(Sender: TObject);
begin
  inherited;
  ValidaData(EditDataI.Text, EditDataF);
end;

procedure TFormGImpClie.EdtBairroExit(Sender: tObject);
begin
   if (EdtBairro.text<>'TODOS') AND (EdtCidade.Text = 'TODOS') then
     begin
         uteis.aviso('É necessário digitar a cidade.');
         EdtCidade.Setfocus;
     end;
end;

procedure TFormGImpClie.DesativaGrupo1;
begin
    lbRepres.Enabled := True;
    CbRepre.Visible   := True;
    lbCidade.Enabled  := False;
    lbBairro.Enabled  := False;
    lbPorte.Enabled   := False;
    lbEstado.Enabled  := False;
    RadGptipo.Enabled := False;
    EdtEstado.Enabled := False;
    EdtCidade.Enabled := False;
    EdtBairro.Enabled := False;
end;

procedure TFormGImpClie.AjusteConfiguracao;
begin
  {Recebe parametros da Etiqueta definido nas variáveis do gerenciador}
  ppRetiq.Columns                  :=wNumeroColunas;
  ppRetiq.PrinterSetup.MarginLeft  :=wMargemEsquerta;
  ppRetiq.PrinterSetup.MarginRight :=wMargemDireita;
  ppRetiq.PrinterSetup.PaperWidth  :=wPagLargura;
  ppRetiq.PrinterSetup.PaperHeight :=wPagComprimento;
  ppRetiq.PrinterSetup.MarginTop   :=wMargemTopo;
  ppRetiq.PrinterSetup.MarginBottom:=wMargemRodape;
  {Parametros do tamanho da Etiqueta na Band}
  ppDetailEtiq.Height              :=wLarguraEtiq;
  ppRetiq.ColumnWidth              :=wComprimentoEtiq;
  ppDetailEtiq.BottomOffset        :=wEntreLinhasEtiq;
  ppDetailEtiq.ColumnTraversal     :=ctLeftToRight;
  ppRetiq.ColumnPositions.Clear;
  ppRetiq.ColumnPositions.Add(INTTOSTR(wEspacoColuna1));
  ppRetiq.ColumnPositions.Add(INTTOSTR(wEspacoColuna2));
  if ppRetiq.Columns = 3 then
     begin
         ppRetiq.ColumnPositions.Add(INTTOSTR(wEspacoColuna3));
     end;
end;

procedure TFormGImpClie.AjusteLayoutPadrao;
begin
    {Carrega uma Etiqueta padrao = 0}
    // Matricial -  2 Col - 2,38 x 8,89 cm
    // Parametros do Report (folio)
    wNumeroColunas  := 2;
    wMargemEsquerta := 5;
    wMargemDireita  := 5;
    wPagLargura     := 216;
    wPagComprimento := 279;
    wMargemTopo     := 0;
    wMargemRodape   := 0;
    // Parametros da Etiqueta
    wLarguraEtiq    := 23;
    wComprimentoEtiq:= 103;
    wEntreLinhasEtiq:= 1;
    wEspacoColuna1  := 5;
    wEspacoColuna2  := 100;
end;

procedure TFormGImpClie.AtivaGrupo1;
begin
    lbRepres.Enabled := True;
    lbCidade.Enabled := True;
    lbBairro.Enabled := True;
    lbPorte.Enabled := True;
    lbEstado.Enabled := True;
    RadGptipo.Enabled := True;
    CbRepre.Enabled   := True;
    EdtEstado.Enabled := True;
    EdtCidade.Enabled := True;
    EdtBairro.Enabled := True;
end;

procedure TFormGImpClie.EdtDiasKeyPress(Sender: tObject; var Key: Char);
begin
    // deixo aceitar somente numeros
    if not(Key in['0'..'9',#8]) then
       begin
           //beep;
           Key:=#0;
       end;
end;

procedure TFormGImpClie.BitConfigClick(Sender: tObject);
begin
    PrinterSetupDialog1.Execute;
end;

procedure TFormGImpClie.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    inherited;
    Screen.OnActiveControlChange := NIL;
    CLOSE;
end;

procedure TFormGImpClie.EdtEstadoClick(Sender: tObject);
begin
    EdtEstado.SelectAll;
end;

procedure TFormGImpClie.CbBoxTipoEtiqClick(Sender: tObject);
begin
    {Parametros de tipo de etiquetas conforme selecionado  }
    if CbBoxTipoEtiq.ItemIndex = 0 then
      begin
          // Matricial -  2 Col - 2,38 x 8,89 cm
          // Parametros do Report (folio)
          wNumeroColunas  := 2;
          wMargemEsquerta := 5;
          wMargemDireita  := 5;
          wPagLargura     := 216;
          wPagComprimento := 279;
          wMargemTopo     := 0;
          wMargemRodape   := 0;
          // Parametros da Etiqueta
          wLarguraEtiq    := 23;
          wComprimentoEtiq:= 103;
          wEntreLinhasEtiq:= 1;
          wEspacoColuna1  := 5;
          wEspacoColuna2  := 100;
      end;

    if CbBoxTipoEtiq.ItemIndex = 1 then
      begin
          // Matricial -  3 Col - 3,6 x 10,3 cm(usando somente 2 colunas)
          // Parametros do Report ()
          wNumeroColunas  := 3;
          wMargemEsquerta := 12;
          wMargemDireita  := 5;
          wPagLargura     := 337;
          wPagComprimento := 304;
          wMargemTopo     := 0.00;
          wMargemRodape   := 0.0;
          // Parametros da Etiqueta
          wLarguraEtiq    := 36;
          wComprimentoEtiq:= 102;
          wEntreLinhasEtiq:= 1;
          wEspacoColuna1  := 12;
          wEspacoColuna2  := 117;
          wEspacoColuna3  := 222;
      end;

    if CbBoxTipoEtiq.ItemIndex = 2 then
      begin
          // Laser e Jato de tinta -  2 Col - 2,54 x 10,16 cm
          // Parametros do Report
          wNumeroColunas   := 2;
          wMargemEsquerta  := 3;
          wMargemDireita   := 0.00;
          wPagLargura      := 216;
          wPagComprimento  := 279;
          wMargemTopo      := 15;
          wMargemRodape    := 5;
          // Parametros da Etiqueta
          wLarguraEtiq     := 25.4;
          wComprimentoEtiq := 101.6;
          wEntreLinhasEtiq := 0;
          wEspacoColuna1   := 7;
          wEspacoColuna2   := 115;
      end;
    if CbBoxTipoEtiq.ItemIndex = 3 then
      begin
          // Laser e Jato de tinta -  2 Col - 3,39 x 10,16 cm
          // Parametros do Report
          wNumeroColunas   := 2;
          wMargemEsquerta  := 3;
          wMargemDireita   := 0;
          wPagLargura      := 216;
          wPagComprimento  := 279;
          wMargemTopo      := 25;
          wMargemRodape    := 15;
          // Parametros da Etiqueta
          wLarguraEtiq     := 33.9;
          wComprimentoEtiq := 102;
          wEntreLinhasEtiq := 0;
          wEspacoColuna1   := 7;
          wEspacoColuna2   := 115;
      end;
end;

procedure TFormGImpClie.ChekMalaDiretaClick(Sender: tObject);
begin
    // Se clicou em mala direta então carregar a Combo
    if ChekMalaDireta.checked  then
      begin
          CbBoxTipoEtiq.Items.Clear;
          CbBoxTipoEtiq.Items.Add('Matricial    - 2 Col - Tam. 2,38 x  8,89 cm - Folio(21,59 x 33,02)');
          CbBoxTipoEtiq.Items.Add('Matricial    - 3 Col - Tam. 3,60 x 10,30 cm - Ledger(43,18 x 27,94)');
          CbBoxTipoEtiq.Items.Add('Laser e Jato - 2 Col - Tam. 2,54 x 10,16 cm - Carta(21,59 x 27,94)');
          CbBoxTipoEtiq.Items.Add('Laser e Jato - 2 Col - Tam. 3,39 x 10,16 cm - Carta(21,59 x 27,94)');
          CbBoxTipoEtiq.Enabled := True;
      end
    else
      begin
          CbBoxTipoEtiq.Items.Clear;
          CbBoxTipoEtiq.Text := '';
          CbBoxTipoEtiq.Enabled := False;
      end;
    AjusteLayoutPadrao;

end;

procedure TFormGImpClie.EdtCidadeExit(Sender: tObject);
begin
    if (EdtCidade.Text<>'TODOS') AND (EdtEstado.Text = '') then
      begin
          uteis.aviso('É necessário digitar o Estado.');
          EdtEstado.SetFocus;
      end;
end;

procedure TFormGImpClie.LTBoxClick(Sender: tObject);
begin
    gbPeriodo.Visible := False;
    gbCliente.Visible := False;
    if (LtBox.ItemIndex in [0,4,5] )then
       begin
           if (LtBox.ItemIndex = 4) then
           begin
              grb00.Enabled := False;
              gbPeriodo.Visible := True;
              gbPeriodo.Top := 444;
              gbCliente.Top := 504;
              grb05.Top     := 554;
              gbCliente.Visible := True;

           end
           else
              begin
                  grb00.Visible := True;
                  grb00.Enabled := True;
              end;
           //
           grb01.Visible := true;
           grb02.Visible := true;
           grb03.Visible := False;
           grb04.Visible := False;
           grb06.Visible := true;
           grb06.Top     := 406;
           if (LtBox.ItemIndex <> 4) then
             grb05.Top     := 444;
           grpDatCadastro.Visible :=   False;
           grpTipoContato.Visible := False;
           grbEmpresa.Visible := false;
           grbContatos.visible := false;
           grbClassificacao.Visible := false;
       end
    else
    if LtBox.ItemIndex = 1 then
       begin
           grb00.Visible := true;
           grb00.Enabled := True;
           grb01.Visible := true;
           grb02.Visible := false;
           grb03.Visible := true;
           grb03.Top     := 296;
           grb03.Enabled := true;
           grb04.Visible := false;
           grb06.Visible := true;
           grb06.Top     := 331;
           grb05.Top     := 380;
           grpDatCadastro.Visible :=   False;
           grpTipoContato.Visible := False;
           grbEmpresa.Visible := false;
           grbContatos.visible := false;
           grbClassificacao.Visible := false;
       end
    else
    if LtBox.ItemIndex = 2 then //regiao
       begin
           {Clientes por Região}
           grb00.Visible := true;
           grb00.Enabled := True;
           grb01.Visible := true;
           grb02.Visible := false;
           grb03.Visible := false;
           grb04.Visible := true;
           grb04.Top     := 294;
           grb04.Caption := 'Região';
           CbRegiao.Visible := true;
           CbRamo.Visible   := false;
           grb06.Visible := true;
           grb06.Top     := 334;
           grb05.Top     := 382;
           grpDatCadastro.Visible :=   False;
           grpTipoContato.Visible := False;
           grbEmpresa.Visible := false;
           grbContatos.visible := false;
           grbClassificacao.Visible := false;
       end
    else
    if LtBox.ItemIndex = 3 then
       begin
           {Clientes por Ramo da Atividade}
           grb00.Visible := true;
           grb00.Enabled := True;
           grb01.Visible := true;
           grb02.Visible := false;
           grb03.Visible := false;
           grb04.Visible := true;
           grb04.Top     := 290;
           grb04.Caption := 'Ramo da Atividade';
           CbRegiao.Visible := false;
           CbRamo.Visible   := true;
           grb06.Visible := true;
           grb06.Top     := 330;
           grb05.Top     := 365;
           grpDatCadastro.Visible :=   False;
           grpTipoContato.Visible := False;
           grbEmpresa.Visible := false;
           grbContatos.visible := false;
           grbClassificacao.Visible := false;
     end
     else
     if (LtBox.ItemIndex = 6) and (FrmMenu.wServicoCliente = 'S')  then
       begin
           {Clientes por Ramo da Atividade}
           grb00.Visible := false;
           grb00.Enabled := false;
           grb01.Visible := false;
           grb02.Visible := false;
           grb03.Visible := false;
           grb04.Visible := false;

           CbRegiao.Visible := false;
           CbRamo.Visible   := false;
           grb06.Visible := true;
           grb06.Top     := 188;
           grb05.Top     := 226;
           grpDatCadastro.Visible :=   False;
           grpTipoContato.Visible := False;
           grbEmpresa.Visible := false;
           grbContatos.visible := false;
           grbClassificacao.Visible := false;
       end
     else if  ((LTBox.ItemIndex in [6]) and (FrmMenu.wServicoCliente <> 'S')) or (LTBox.ItemIndex in [7]) and (FrmMenu.wServicoCliente = 'S')  then
     begin
           {Clientes por Ramo da Atividade}
           grb00.Visible := false;
           grb00.Enabled := false;
           grb01.Visible := false;
           grb02.Visible := false;
           grb03.Visible := false;
           grb04.Visible := false;
           CbRegiao.Visible := false;
           CbRamo.Visible   := false;
           grb06.Visible := False;
           grpDatCadastro.Visible := true;
           grpDatCadastro.Top     := 188;
           grb05.Top     := 226;
           grpTipoContato.Visible := False;
           grbEmpresa.Visible := false;
           grbContatos.visible := false;
           grbClassificacao.Visible := false;
     end
     else if ((LTBox.ItemIndex in [7]) and (FrmMenu.wServicoCliente <> 'S')) or (LTBox.ItemIndex in [8]) and (FrmMenu.wServicoCliente = 'S') then
     begin
        grb00.Visible := false;
        grb00.Enabled := false;
        grb01.Visible := false;
        grb02.Visible := false;
        grb03.Visible := false;
        grb04.Visible := false;
        CbRegiao.Visible := false;
        CbRamo.Visible   := false;
        grb06.Visible := true;
        grpDatCadastro.Visible := false;
        grpTipoContato.Visible := true;
        grbEmpresa.Visible := true;
        grbContatos.visible := true;
        grbClassificacao.Visible := true;
        grbClassificacao.top := 188;
        grb06.Top     := 226;
        grpTipoContato.Top := 259;
        grbEmpresa.Top := 294;
        grbContatos.Top := 330;
        grb05.Top     := 367;
     end
     else if ((LTBox.ItemIndex in [8]) and (FrmMenu.wServicoCliente <> 'S')) or (LTBox.ItemIndex in [9]) and (FrmMenu.wServicoCliente = 'S') then
     begin

           grb00.Visible := False;
           grb00.Enabled := True;
           grb01.Visible := true;
           grb02.Visible := true;
           grb03.Visible := False;
           grb04.Visible := False;
           grb06.Visible := true;
         gbPeriodo.Visible := True;
         gbCliente.Visible := True;
           grpDatCadastro.Visible :=   False;
           grpTipoContato.Visible := False;
           grbEmpresa.Visible := false;
           grbContatos.visible := false;
           grbClassificacao.Visible := false;
         grb06.Top     := 406;
         gbPeriodo.Top := 446;
         gbCliente.top := 496;
         grb05.Top     := 546;
     end
     ;

end;

procedure TFormGImpClie.CriaRel00;
begin
    {Cria o primeiro Relatorio do Cliente
    PRIMEIRO relatorio = Lista geral de clientes}
    // *** todos os representantes ***
    {
    wSql1 := 'SELECT C1.CLI_CODIGO,C1.CLI_RAZAO,C1.CLI_PORTE,C1.CLI_ENDERE,C1.CLI_BAIRRO,C1.CLI_CEP,C1.CLI_CIDADE,C1.CLI_UF,C1.CLI_FONE,C1.CLI_FAX,C1.CLI_CONTATO,C1.CLI_DTULTCOM,C1.CLI_INATIVO,C1.CLI_EMAIL,';
    wSql2 := 'C1.CLI_HOME,C1.CLI_ATIVIDADE,C1.CLI_FUNCONT,C1.REP_CODIGO,R1.REP_NOME FROM CLI0000 C1 LEFT JOIN REP0000 R1 on (C1.REP_CODIGO = R1.REP_CODIGO) ';
    }
    wSql1 := 'SELECT C1.CLI_CODIGO, C1.EMP_CODIGO,C1.CLI_RAZAO,C1.CLI_PORTE,C1.CLI_ENDERE,C1.CLI_BAIRRO,C1.CLI_CEP,C1.CLI_CIDADE,C1.CLI_UF,C1.CLI_FONE,C1.CLI_FAX,C1.CLI_CONTATO,C1.CLI_DTULTCOM, ';
    wSql2 := 'C1.CLI_INATIVO,C1.CLI_EMAIL,C1.CLI_HOME,C1.CLI_ATIVIDADE,C1.CLI_FUNCONT,C1.REP_CODIGO,R1.REP_NOME,R1.REP_SITUACAO,C1.REG_CODIGO,G1.REG_DESCRI, '''' as CC_NOME, '''' as CC_EMAIL,'+
             ''''' as CC_CARGO, '''' as CC_CELULAR, '''' as CC_TELEFONE, '''' as CC_RAMAL, '''' as CC_TIPO, C1.CLI_CLASSE_CLI_FOR, A1.RCL_ATIVIDADE, ORI.CORI_DESCRICAO FROM CLI0000 C1 ';
    wSql3 := 'LEFT JOIN REP0000 R1 on (C1.rep_codigo = R1.rep_codigo) LEFT JOIN REG0000 G1 on (C1.reg_codigo = G1.reg_codigo) LEFT JOIN CLI_ATV1 A1 on (C1.CLI_ATIVIDADE = A1.RCL_CODIGO)'  +
             'LEFT JOIN CLIENTE_ORIGEM ORI on (C1.CORI_CODIGO = ORI.CORI_CODIGO)';
            // 'LEFT JOIN CLI_CONTATO CO ON (C1.cli_codigo = CO.cli_codigo)  ';


    //
    if CbRepre.ItemIndex = 0 then
       begin
           if (EdtEstado.Text='')and(EdtCidade.Text='TODOS')and(EdtBairro.Text='TODOS')then
              begin
                  if wPorte <> 'T' THEN
                     begin
                         try
                           SqlCdsClienteRB.Close;
                           SqlCdsClienteRB.CommandText := SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'WHERE C1.CLI_PORTE='''+wporte+''''+sClienteAtivoSql,'C1.CLI_UF,C1.CLI_CIDADE,C1.CLI_RAZAO','C1.');
                           SqlCdsClienteRB.Open;
                           LBL_00_LTITULO2.Caption :='Porte das Empresas : '+WporteD;
                         except on E:EdatabaseError do
                             begin
                                 uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                             end;
                         end;
                     end
                  else
                     begin
                         Try
                           SqlCdsClienteRB.Close;
                           SqlCdsClienteRB.CommandText := SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'WHERE 1=1 '+sClienteAtivoSql,'C1.CLI_UF,C1.CLI_CIDADE,C1.CLI_RAZAO','C1.');
                           SqlCdsClienteRB.Open;
                           LBL_00_LTITULO2.Caption := '';
                         except on E:EdatabaseError do
                             begin
                                 uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                             end;
                         end;
                     end;
                  LBL_00_LTITULO1.Caption := 'RELATÓRIO GERAL DE CLIENTES';
              end;

           if (EdtEstado.Text<>'')and(EdtCidade.Text='TODOS')and(EdtBairro.Text='TODOS') then
              begin
                  if wPorte = 'T' then
                     begin
                         try
                           SqlCdsClienteRB.Close;
                           SqlCdsClienteRB.CommandText := SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'WHERE C1.CLI_UF='''+EdtEstado.Text+''''+sClienteAtivoSql,'C1.CLI_UF,C1.CLI_CIDADE,C1.CLI_RAZAO','C1.');
                           SqlCdsClienteRB.Open;
                           LBL_00_LTITULO2.Caption := 'Estado: '+EdtEstado.Text;
                         except on E:EdatabaseError do
                             begin
                                 uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                             end;
                         end;
                     end
                  else
                     begin
                         try
                           SqlCdsClienteRB.Close;
                           SqlCdsClienteRB.CommandText := SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'WHERE C1.C1.CLI_UF='''+EdtEstado.Text+'''and C1.CLI_PORTE='''+wPorte+''''+sClienteAtivoSql,'C1.CLI_UF,C1.CLI_CIDADE,C1.CLI_RAZAO','C1.');
                           SqlCdsClienteRB.Open;
                           LBL_00_LTITULO2.Caption := 'Estado: '+EdtEstado.Text+' - Porte : '+wPorte;
                         except on E:EdatabaseError do
                             begin
                                 uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                             end;
                         end;
                     end;
                  LBL_00_LTITULO1.Caption := 'RELAÇÃO DE CLIENTES DO ESTADO';
              end;
           if (EdtEstado.Text<>'')and(EdtCidade.Text<>'TODOS')and(EdtBairro.Text='TODOS') then
              begin
                  if wPorte = 'T' then
                     begin
                         try
                           SqlCdsClienteRB.Close;
                           SqlCdsClienteRB.CommandText := SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'WHERE C1.CLI_UF='''+EdtEstado.Text+'''AND C1.CLI_CIDADE='''+EdtCidade.text+''''+sClienteAtivoSql,'C1.CLI_UF,C1.CLI_CIDADE,C1.CLI_RAZAO','C1.');
                           SqlCdsClienteRB.Open;
                           LBL_00_LTITULO2.Caption := 'Cidade: '+EdtCidade.Text;
                         except on E:EdatabaseError do
                             begin
                                 uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                             end;
                         end;
                     end
                  else
                     begin
                         try
                           SqlCdsClienteRB.Close;
                           SqlCdsClienteRB.CommandText := SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'WHERE C1.CLI_UF='''+EdtEstado.Text+'''AND C1.CLI_CIDADE='''+EdtCidade.text+'''and C1.CLI_PORTE='''+wPorte+''''+sClienteAtivoSql,'C1.CLI_UF,C1.CLI_CIDADE,C1.CLI_RAZAO','C1.');
                           SqlCdsClienteRB.Open;
                           LBL_00_LTITULO2.Caption := 'Cidade: '+EdtCidade.Text+' - Porte : '+wPorteD;
                         except on E:EdatabaseError do
                             begin
                                 uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                             end;
                         end;
                     end;
                  LBL_00_LTITULO1.Caption := 'RELAÇÃO DE CLIENTES DA CIDADE';
              end;

           if (EdtEstado.Text<>'')and(EdtCidade.Text<>'TODOS')and(EdtBairro.Text<>'TODOS') then
              begin
                  if wPorte = 'T' then
                     begin
                         try
                           SqlCdsClienteRB.Close;
                           SqlCdsClienteRB.CommandText := SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'WHERE C1.CLI_UF='''+EdtEstado.Text+''' AND C1.CLI_CIDADE='''+EdtCidade.text+''' AND C1.CLI_BAIRRO='''+EdtBairro.text+''''+sClienteAtivoSql,
                                                                 'C1.CLI_UF,C1.CLI_CIDADE,C1.CLI_RAZAO','C1.');
                           SqlCdsClienteRB.Open;
                           LBL_00_LTITULO2.Caption := 'Cidade: '+EdtCidade.Text+' - Bairro: '+EdtBairro.Text;
                         except on E:EdatabaseError do
                             begin
                                 uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                             end;
                         end;
                     end
                  else
                     begin
                         try
                           SqlCdsClienteRB.Close;
                           SqlCdsClienteRB.CommandText := SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'WHERE C1.CLI_UF='''+EdtEstado.Text+'''AND C1.CLI_CIDADE='''+EdtCidade.text+'''AND C1.CLI_BAIRRO='''+EdtBairro.text+'''AND C1.CLI_PORTE='''+wPorte+''''+sClienteAtivoSql,
                                                                 'C1.CLI_UF,C1.CLI_CIDADE,C1.CLI_RAZAO','C1.');
                           SqlCdsClienteRB.Open;
                           LBL_00_LTITULO2.Caption := 'Cidade: '+EdtCidade.Text+' - Bairro: '+EdtBairro.Text+' - Porte : '+wPorteD;
                         except on E:EdatabaseError do
                             begin
                                 uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                             end;
                         end;
                     end;
                  LBL_00_LTITULO1.Caption := 'RELAÇÃO DE CLIENTES DA CIDADE E BAIRRO';
              end;
           //relatorio Listagem
           if ChekMalaDireta.checked  then // enviar como mala direta
              begin
                  AjusteConfiguracao;
                  if RadVideo.Checked then
                     begin
                         ppREtiq.DeviceType:='Screen';
                         RBuilderPreview(ppREtiq);
                     end
                  else
                     begin
                         ppREtiq.DeviceType:='Printer';
                         ppREtiq.ShowPrintDialog := true;
                         ppREtiq.Print;
                     end
              end
           else
              begin
                  AjusteLayoutPadrao;
                  if RadVideo.Checked then
                     begin
                         ppReport00.DeviceType:='Screen';
                         RBuilderPreview(ppReport00);
                     end else
                  if RadImpressora.Checked then
                     begin
                         ppReport00.DeviceType:='Printer';
                         ppReport00.ShowPrintDialog := true;
                         ppReport00.Print;
                     end;
                  CbRepre.ItemIndex:= 0;
                  LTBox.SetFocus;
              end;
       end
    else {*********** FOI SELECIONADO UM REPRESENTANTE *****************}
       begin
           // *** Foi Selecionado um Representante ***
           wRep_Codigo := SqlCdsRepresentanteREP_CODIGO.AsString;
           if (EdtEstado.Text='')and(EdtCidade.Text='TODOS')and(EdtBairro.Text='TODOS')then
              begin
                  if wPorte <> 'T' THEN
                     begin
                         try
                           SqlCdsClienteRB.Close;
                           SqlCdsClienteRB.CommandText := SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'WHERE C1.REP_CODIGO='''+wrep_codigo+''' AND C1.CLI_PORTE='''+wporte+''''+sClienteAtivoSql,
                                                                 'C1.CLI_UF,C1.CLI_CIDADE,C1.CLI_RAZAO','C1.');
                           SqlCdsClienteRB.Open;
                           LBL_00_LTITULO2.Caption := 'Repres.: '+wrep_codigo+' - '+SqlCdsRepresentanteREP_NOME.AsString+' - Porte das Empresas : '+wPorteD;
                         except on E:EdatabaseError do
                             begin
                                 uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                             end;
                         end;
                     end
                  else
                     begin
                         Try
                           SqlCdsClienteRB.Close;
                           SqlCdsClienteRB.CommandText := SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'WHERE C1.REP_CODIGO ='''+wrep_codigo+''''+sClienteAtivoSql,
                                                                 'C1.CLI_UF,C1.CLI_CIDADE,C1.CLI_RAZAO','C1.');
                           SqlCdsClienteRB.Open;
                           LBL_00_LTITULO2.Caption := 'Repres.: '+wrep_codigo+' - '+SqlCdsRepresentanteREP_NOME.AsString;
                         except on E:EdatabaseError do
                             begin
                                 uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                             end;
                         end;
                     end;
                  LBL_00_LTITULO1.Caption := 'RELATÓRIO DE CLIENTES POR REPRESENTANTE';
              end;

           if (EdtEstado.Text<>'')and(EdtCidade.Text='TODOS')and(EdtBairro.Text='TODOS') then
              begin
                  if wPorte = 'T' then
                     begin
                         try
                           SqlCdsClienteRB.Close;
                           SqlCdsClienteRB.CommandText := SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'WHERE C1.REP_CODIGO='''+wrep_codigo+'''AND C1.CLI_UF='''+EdtEstado.Text+''''+sClienteAtivoSql,
                                                                 'C1.CLI_UF,C1.CLI_CIDADE,C1.CLI_RAZAO','C1.');
                           SqlCdsClienteRB.Open;
                           LBL_00_LTITULO2.Caption := 'Estado: '+EdtEstado.Text;
                         except on E:EdatabaseError do
                             begin
                                 uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                             end;
                         end;
                     end
                  else
                     begin
                         try
                           SqlCdsClienteRB.Close;
                           SqlCdsClienteRB.CommandText := SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'WHERE C1.REP_CODIGO='''+wrep_codigo+''' AND C1.CLI_UF='''+EdtEstado.Text+''' AND C1.CLI_PORTE='''+wPorte+''''+sClienteAtivoSql,
                                                                 'C1.CLI_UF,C1.CLI_CIDADE,C1.CLI_RAZAO','C1.');
                           SqlCdsClienteRB.Open;
                           LBL_00_LTITULO2.Caption := 'Estado: '+EdtEstado.Text+' - Porte : '+wPorteD;
                         except on E:EdatabaseError do
                             begin
                                 uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                             end;
                         end;
                     end;
                  LBL_00_LTITULO1.Caption := 'RELAÇÃO DE CLIENTES DO REPRES.: '+wrep_codigo+' - '+SqlCdsRepresentanteREP_NOME.AsString;
              end;

           if (EdtEstado.Text<>'')and(EdtCidade.Text<>'TODOS')and(EdtBairro.Text='TODOS') then
              begin
                  if wPorte = 'T' then
                     begin
                         try
                           SqlCdsClienteRB.Close;
                           SqlCdsClienteRB.CommandText := SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'WHERE C1.REP_CODIGO='''+wrep_codigo+''' AND C1.CLI_UF='''+EdtEstado.Text+''' AND C1.CLI_CIDADE='''+EdtCidade.text+''''+sClienteAtivoSql,
                                                                 'C1.CLI_UF,C1.CLI_CIDADE,C1.CLI_RAZAO','C1.');
                           SqlCdsClienteRB.Open;
                           LBL_00_LTITULO2.Caption := 'Cidade: '+EdtCidade.Text;
                         except on E:EdatabaseError do
                             begin
                                 uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                             end;
                         end;
                     end
                  else
                     begin
                         try
                           SqlCdsClienteRB.Close;
                           SqlCdsClienteRB.CommandText := SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'WHERE C1.REP_CODIGO='''+wrep_codigo+''' AND C1.CLI_UF='''+EdtEstado.Text+''' AND C1.CLI_CIDADE='''+EdtCidade.text+''' AND C1.CLI_PORTE='''+wPorte+''''+sClienteAtivoSql,
                                                                 'C1.CLI_UF,C1.CLI_CIDADE,C1.CLI_RAZAO','C1.');
                           SqlCdsClienteRB.Open;
                           LBL_00_LTITULO2.Caption := 'Cidade: '+EdtCidade.Text+' - Porte : '+wPorteD;
                         except on E:EdatabaseError do
                             begin
                                 uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                             end;
                         end;
                     end;
                  LBL_00_LTITULO1.Caption := 'RELAÇÃO DE CLIENTES DO REPRES.: '+wrep_codigo+' - '+SqlCdsRepresentanteREP_NOME.AsString;
              end;

           if (EdtEstado.Text<>'')and(EdtCidade.Text<>'TODOS')and(EdtBairro.Text<>'TODOS') then
              begin
                  if wPorte = 'T' then
                     begin
                         try
                           SqlCdsClienteRB.Close;
                           SqlCdsClienteRB.CommandText := SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'WHERE C1.REP_CODIGO='''+wrep_codigo+''' AND C1.CLI_UF='''+EdtEstado.Text+''' AND C1.CLI_CIDADE='''+EdtCidade.text+''' AND C1.CLI_BAIRRO='''+EdtBairro.text+''''+sClienteAtivoSql,
                                                                 'C1.CLI_UF,C1.CLI_CIDADE,C1.CLI_RAZAO','C1.');
                           SqlCdsClienteRB.Open;
                           LBL_00_LTITULO2.Caption := 'Cidade: '+EdtCidade.Text+' - Porte : '+wPorte;
                         except on E:EdatabaseError do
                             begin
                                 uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                             end;
                         end;
                     end
                  else
                     begin
                         try
                           SqlCdsClienteRB.Close;
                           SqlCdsClienteRB.CommandText := SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'WHERE C1.REP_CODIGO='''+wrep_codigo+''' AND C1.CLI_UF='''+EdtEstado.Text+''' AND C1.CLI_CIDADE='''+EdtCidade.text+''' AND C1.CLI_BAIRRO='''+EdtBairro.text+''' AND C1.CLI_PORTE='''+wPorte+''''+sClienteAtivoSql,
                                                                 'C1.CLI_UF,C1.CLI_CIDADE,C1.CLI_RAZAO','C1.');
                           SqlCdsClienteRB.Open;
                           LBL_00_LTITULO2.Caption := 'Cidade: '+EdtCidade.Text+' - Bairro: '+EdtBairro.Text+' - Porte : '+wPorteD;
                         except on E:EdatabaseError do
                             begin
                                 uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                             end;
                         end;
                     end;
                  LBL_00_LTITULO1.Caption := 'RELAÇÃO DE CLIENTES DO REPRES.: '+wrep_codigo+' - '+SqlCdsRepresentanteREP_NOME.AsString;
              end;
           //relatorio Listagem
           if ChekMalaDireta.checked  then // enviar como mala direta
              begin
                  AjusteConfiguracao;
                  if RadVideo.Checked then
                     begin
                         ppREtiq.DeviceType:='Screen';
                         RBuilderPreview(ppREtiq);
                     end
                  else
                     begin
                         ppREtiq.DeviceType:='Printer';
                         ppREtiq.ShowPrintDialog := true;
                         ppREtiq.Print;
                     end
              end
           else
              begin
                  AjusteLayoutPadrao;
                  if RadVideo.Checked then
                     begin
                         ppReport00.DeviceType:='Screen';
                         RBuilderPreview(ppReport00);
                     end else
                  if RadImpressora.Checked then
                     begin
                         ppReport00.DeviceType:='Printer';
                         ppReport00.ShowPrintDialog := true;
                         ppReport00.Print;
                     end;
                  CbRepre.ItemIndex := 0;
                  LTBox.SetFocus;
              end;
       end;
    Screen.Cursor := crDefault;
end;

procedure TFormGImpClie.CriaRel01;
Var
  wDataF : String;
begin
    {Cria o segundo Relatorio dos Clientes Ativo/Inativo do Representantes.
    Segundo relatorio = Clientes Ativos e Inativos}
    {
    wSql1 := 'SELECT C1.CLI_CODIGO,C1.CLI_RAZAO,C1.CLI_PORTE,C1.CLI_ENDERE,C1.CLI_BAIRRO,C1.CLI_CEP,C1.CLI_CIDADE,C1.CLI_UF,C1.CLI_FONE,C1.CLI_FAX,C1.CLI_CONTATO, ';
    wSql2 := 'C1.CLI_DTULTCOM,C1.CLI_INATIVO,C1.CLI_EMAIL,C1.CLI_HOME,C1.CLI_ATIVIDADE,C1.CLI_FUNCONT,C1.REP_CODIGO,R1.REP_NOME FROM CLI0000 C1 ';
    wSql3 := 'LEFT JOIN REP0000 R1 ON (C1.REP_CODIGO = R1.REP_CODIGO)';
    }
    wSql1 := 'SELECT C1.CLI_CODIGO, C1.EMP_CODIGO, C1.CLI_RAZAO,C1.CLI_PORTE,C1.CLI_ENDERE,C1.CLI_BAIRRO,C1.CLI_CEP,C1.CLI_CIDADE,C1.CLI_UF,C1.CLI_FONE,C1.CLI_FAX,C1.CLI_CONTATO,C1.CLI_DTULTCOM,';
    wSql2 := 'C1.CLI_INATIVO,C1.CLI_EMAIL,C1.CLI_HOME,C1.CLI_ATIVIDADE,C1.CLI_FUNCONT,C1.REP_CODIGO,R1.REP_NOME,R1.REP_SITUACAO,C1.REG_CODIGO,G1.REG_DESCRI, A1.RCL_ATIVIDADE,'+
             ' '''' as CC_NOME, '''' as CC_EMAIL , '''' as CC_CARGO, '''' as CC_CELULAR, '''' as CC_TELEFONE, '''' as CC_RAMAL, '''' as CC_TIPO, C1.CLI_CLASSE_CLI_FOR, ORI.CORI_DESCRICAO FROM CLI0000 C1 ';
    wSql3 := 'LEFT JOIN REP0000 R1 on (C1.rep_codigo = R1.rep_codigo) LEFT JOIN REG0000 G1 on (C1.reg_codigo = G1.reg_codigo) LEFT JOIN CLI_ATV1 A1 on (C1.CLI_ATIVIDADE = A1.RCL_CODIGO) '+
             'LEFT JOIN CLIENTE_ORIGEM ORI on (C1.CORI_CODIGO = ORI.CORI_CODIGO)';
            // 'LEFT JOIN CLI_CONTATO CO on (C1.cli_codigo = CO.cli_codigo)';


    if LTBox.ItemIndex = 1 then
       begin
           screen.cursor := crHourGlass;
           wRep_Codigo := SqlCdsRepresentanteREP_CODIGO.Value;
           //diminuiar da data de hoje os dias que foi digitado
           WdataChave := (now - StrToInt(Edtdias.Text));
           wDataI := DataAmericana(DateTimeToStr(wdataChave));
           wDataF := DataAmericana(DateTimeToStr(now));
           if RadAtivos.checked  then
              begin
                  if CbRepre.ItemIndex = 0 then
                     begin
                         try
                           SqlCdsClienteRB.Close;
//                           SqlCdsClienteRB.CommandText := SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'WHERE C1.CLI_DTULTCOM <= '''+wDataI+'''','C1.CLI_RAZAO','C1.');  //'C1.CLI_DTULTCOM,C1.CLI_UF,C1.CLI_CIDADE,C1.CLI_RAZAO','C1.');
                           SqlCdsClienteRB.CommandText := SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'WHERE C1.CLI_DTULTCOM BETWEEN '''+wDataI+'''AND '''+wDataF+''''+sClienteAtivoSql,'C1.CLI_RAZAO','C1.');
                           //'C1.CLI_UF,C1.CLI_CIDADE,C1.CLI_RAZAO','C1.');
                           SqlCdsClienteRB.Open;
                           LBL_01_LTITULO1.Caption := 'RELAÇÃO GERAL CLIENTES';
                         except on E:EdatabaseError do
                            uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                         end;
                     end
                  else
                     begin
                         {Foi selecionado um representante}
                         try
                           SqlCdsClienteRB.Close;
//                           SqlCdsClienteRB.CommandText := SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'WHERE C1.REP_CODIGO='''+wrep_codigo+'''AND C1.CLI_DTULTCOM <='''+wDataI+'''','C1.CLI_RAZAO','C1.'); //'C1.CLI_DTULTCOM,C1.CLI_UF,C1.CLI_CIDADE,C1.CLI_RAZAO','C1.');
                           SqlCdsClienteRB.CommandText := SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'WHERE C1.REP_CODIGO='''+wrep_codigo+'''AND C1.CLI_DTULTCOM BETWEEN '''+wDataI+'''AND '''+wDataF+''''+sClienteAtivoSql,'C1.CLI_RAZAO','C1.');
                           SqlCdsClienteRB.Open;
                           LBL_01_LTITULO1.Caption := 'RELAÇÃO DE CLIENTES DO REPRES.: '+wrep_codigo+' - '+SqlCdsRepresentanteREP_NOME.AsString;
                         except on E:EdatabaseError do
                             begin
                                 uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                             end;
                         end;
                     end;
                  LBL_01_LTITULO2.Caption := 'Clientes que compraram nos últimos '+Edtdias.Text+' Dias ';
              end;
           if RadClientesInativos.checked  then
              begin
                  if CbRepre.ItemIndex = 0 then
                     begin
                         try
                           SqlCdsClienteRB.Close;
                           SqlCdsClienteRB.CommandText := SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'WHERE C1.CLI_DTULTCOM <='''+wDataI+''''+sClienteAtivoSql,'C1.CLI_RAZAO','C1.'); //'C1.CLI_DTULTCOM,C1.CLI_UF,C1.CLI_CIDADE,C1.CLI_RAZAO','C1.');
                           SqlCdsClienteRB.Open;
                           LBL_01_LTITULO1.Caption := 'RELAÇÃO GERAL CLIENTES';
                         except on E:EdatabaseError do
                             begin
                                 uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                             end;
                         end;
                     end
                  else
                     begin
                         {Foi selecionado um representante}
                         try
                           SqlCdsClienteRB.Close;
                           SqlCdsClienteRB.CommandText := SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'WHERE C1.REP_CODIGO='''+wrep_codigo+''' AND C1.CLI_DTULTCOM <='''+wDataI+''''+sClienteAtivoSql,'C1.CLI_RAZAO','C1.');//'C1.CLI_DTULTCOM,C1.CLI_UF,C1.CLI_CIDADE,C1.CLI_RAZAO','C1.');
                           SqlCdsClienteRB.Open;
                           LBL_01_LTITULO1.Caption := 'RELAÇÃO DE CLIENTES DO REPRES.: '+wrep_codigo+' - '+SqlCdsRepresentanteREP_NOME.AsString;
                         except on E:EdatabaseError do
                             begin
                                 uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                             end;
                         end;
                     end;
                  LBL_01_LTITULO2.Caption := 'Cliente que não compram a mais de '+Edtdias.Text+' Dias';
              end;
           screen.cursor := crDefault;
           //relatorio Listagem
           if ChekMalaDireta.checked  then // enviar como mala direta
              begin
                  ppDBEtiq.DataSource := DsClienteRB;
                  if RadVideo.Checked then
                     begin
                         ppREtiq.DeviceType:='Screen';
                     end
                  else
                     begin
                         ppREtiq.DeviceType:='Printer';
                         ppREtiq.ShowPrintDialog := true;
                     end;
                  RBuilderPreview(ppREtiq);
              end
           else
              begin
                  if RadVideo.Checked then
                     begin
                         ppReport01.DeviceType:='Screen';
                     end
                     else
                  if RadImpressora.Checked then
                     begin
                         ppReport01.DeviceType:='Printer';
                         ppReport01.ShowPrintDialog := true;
                     end;

                  RBuilderPreview(ppReport01);
                  CbRepre.ItemIndex := 0;
                  LTBox.SetFocus;
              end;
       end;
    Screen.Cursor := crDefault;
end;

procedure TFormGImpClie.CriaRel02;
begin
    {Cria o terceiro Relatorio do Cliente - Terceiro relatório =(Clientes por Região)}
    wSeleciona := '';
    if RadAlfa.checked  then
       begin
//       wOrdem:='G1.REG_DESCRI,R1.REP_NOME,C1.CLI_UF,C1.CLI_RAZAO,C1.CLI_CIDADE';
         if (ChekMalaDireta.checked ) then // enviar como mala direta
            wOrdem:='C1.CLI_UF,C1.CLI_RAZAO'
         else
            wOrdem:='G1.REG_DESCRI,R1.REP_NOME,C1.CLI_UF,C1.CLI_RAZAO,C1.CLI_CIDADE';
       end;
    if RadCida.checked  then
       wOrdem:='G1.REG_DESCRI,R1.REP_NOME,C1.CLI_UF,C1.CLI_CIDADE,C1.CLI_RAZAO';
    if (CbRegiao.ItemIndex<> 0) then
       begin
           wRegiao:=SqlCdsRegiaoREG_CODIGO.AsString;
           wReg_descri:=SqlCdsRegiaoREG_DESCRI.AsString;
           wSeleciona:='WHERE C1.REG_CODIGO ='''+wRegiao+'''';
       end
    else
       begin
           wRegiao     := '000';
           wReg_descri := 'TODOS';
       end;
    if CbRepre.ItemIndex <> 0 then {Selecionou um representante}
       begin
           wRep_Codigo := SqlCdsRepresentanteREP_CODIGO.AsString;
           wRep_Nome   := SqlCdsRepresentanteREP_NOME.AsString;
           if cbRegiao.ItemIndex <> 0 then
              wSeleciona  := wSeleciona + ' and C1.REP_CODIGO ='''+SqlCdsRepresentanteREP_CODIGO.AsString+''''
           else
              wSeleciona  := wSeleciona + ' where C1.REP_CODIGO ='''+SqlCdsRepresentanteREP_CODIGO.AsString+'''';
       end
    else
       begin
           wRep_Codigo :='000';
           wRep_Nome   :='TODOS';
       end;
    if (wSeleciona = '') then
      wSeleciona := 'where 1=1 ';

    screen.cursor := crHourGlass;
    try
      {
      wSql1 := 'SELECT C1.CLI_CODIGO,C1.CLI_RAZAO,C1.CLI_ENDERE,C1.CLI_BAIRRO,C1.CLI_CEP,C1.CLI_CIDADE,C1.CLI_UF,C1.CLI_FONE,C1.CLI_FAX,C1.CLI_FUNCONT,C1.REP_CODIGO,R1.REP_NOME,R1.REP_SITUACAO,C1.REG_CODIGO,G1.REG_DESCRI FROM CLI0000 C1 ';
      wSql2 := 'LEFT JOIN REP0000 R1 ON C1.rep_codigo = R1.rep_codigo LEFT JOIN REG0000 G1 ON C1.reg_codigo = G1.reg_codigo ';
      }
      wSql1 := 'SELECT C1.CLI_CODIGO, C1.EMP_CODIGO, C1.CLI_RAZAO,C1.CLI_PORTE,C1.CLI_ENDERE,C1.CLI_BAIRRO,C1.CLI_CEP,C1.CLI_CIDADE,C1.CLI_UF,C1.CLI_FONE,C1.CLI_FAX,C1.CLI_CONTATO,C1.CLI_DTULTCOM,';
      wSql2 := 'C1.CLI_INATIVO,C1.CLI_EMAIL,C1.CLI_HOME,C1.CLI_ATIVIDADE,C1.CLI_FUNCONT,C1.REP_CODIGO,R1.REP_NOME,R1.REP_SITUACAO,C1.REG_CODIGO,G1.REG_DESCRI, A1.RCL_ATIVIDADE, ' +
              ' '''' as CC_NOME, '''' as CC_EMAIL , '''' as CC_CARGO, '''' as CC_CELULAR, '''' as CC_TELEFONE, '''' as CC_RAMAL, '''' as CC_TIPO, C1.CLI_CLASSE_CLI_FOR, ORI.CORI_DESCRICAO FROM CLI0000 C1 ';
      wSql3 := 'LEFT JOIN REP0000 R1 on (C1.rep_codigo = R1.rep_codigo) LEFT JOIN REG0000 G1 on (C1.reg_codigo = G1.reg_codigo)  '+
               '  LEFT JOIN CLI_ATV1 A1 on (C1.CLI_ATIVIDADE = A1.RCL_CODIGO) LEFT JOIN CLIENTE_ORIGEM ORI on (C1.CORI_CODIGO = ORI.CORI_CODIGO) ' ;
      //
      SqlCdsClienteRB.Close;
      SqlCdsClienteRB.CommandText := SQLDEF('CLIENTES',wSql1+wSql2+wSql3,wSeleciona+sClienteAtivoSql,wOrdem,'C1.');
      SqlCdsClienteRB.Open;

      {
      SqlCdsCliRegiao.Close;
      SqlCdsCliRegiao.CommandText := SQLDEF('CLIENTES',wSql1+wSql2,wSeleciona,wOrdem,'C1.');
      SqlCdsCliRegiao.Open;
      }
      LBL_02_LTITULO1.Caption       := 'RELAÇÃO DE CLIENTES POR REGIÃO';
      LBL_02_LTITULO2.Caption       := 'REGIÃO : '+wregiao+' - '+wReg_descri+' - REPRESENTANTE.: '+wRep_codigo+' - '+wRep_Nome;
    except on E:EdatabaseError do
        uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
    end;
    screen.cursor := crDefault;
    if ChekMalaDireta.checked  then // enviar como mala direta
       begin
           {
           ppDBEtiq.AutoCreateFields := False;
           ppDBEtiq.CloseDataSource  := False;
           ppDBEtiq.DataSource       := DsCliRegiao;
           ppDBEtiq.AutoCreateFields := True;
           ppDBEtiq.CloseDataSource  := True;
           }
           if RadVideo.Checked then
              begin
                  ppREtiq.DeviceType:='Screen';
              end
           else
              begin
                  ppREtiq.DeviceType:='Printer';
                  ppREtiq.ShowPrintDialog := true;
              end;
           RBuilderPreview(ppREtiq);
       end
    else
       begin
           if RadVideo.Checked then
              begin
                  ppReport02.DeviceType:='Screen';
              end;
           if RadImpressora.Checked then
              begin
                  ppReport02.DeviceType:='Printer';
                  ppReport02.ShowPrintDialog := true;
              end;
           RBuilderPreview(ppReport02);
           CbRepre.ItemIndex := 0;
           CbRegiao.ItemIndex:= 0;
           LTBox.SetFocus;
       end;
    Screen.Cursor := crDefault;
end;

procedure TFormGImpClie.CriaRel03;
begin
    {Cria o Quarto Relatorio do Cliente
    Quarto relatorio = (Clientes por Ramo de Atividade)}
    {
    wSql1 := 'SELECT C1.CLI_CODIGO,C1.CLI_RAZAO,C1.CLI_PORTE,C1.CLI_ENDERE,C1.CLI_BAIRRO,C1.CLI_CEP,C1.CLI_CIDADE,C1.CLI_UF,';
    wSql2 := 'C1.CLI_FONE,C1.CLI_FAX,C1.CLI_CONTATO,C1.CLI_DTULTCOM,C1.CLI_INATIVO,C1.CLI_EMAIL,C1.CLI_HOME,C1.CLI_ATIVIDADE,';
    wSql3 := 'C1.CLI_FUNCONT,C1.REP_CODIGO,R1.REP_NOME FROM CLI0000 C1 LEFT JOIN REP0000 R1 on (C1.REP_CODIGO = R1.REP_CODIGO) ';
    }
    wSql1 := 'SELECT C1.CLI_CODIGO, C1.EMP_CODIGO,C1.CLI_RAZAO,C1.CLI_PORTE,C1.CLI_ENDERE,C1.CLI_BAIRRO,C1.CLI_CEP,C1.CLI_CIDADE,C1.CLI_UF,C1.CLI_FONE,C1.CLI_FAX,C1.CLI_CONTATO,C1.CLI_DTULTCOM,';
    wSql2 := 'C1.CLI_INATIVO,C1.CLI_EMAIL,C1.CLI_HOME,C1.CLI_ATIVIDADE,C1.CLI_FUNCONT,C1.REP_CODIGO,R1.REP_NOME,R1.REP_SITUACAO,C1.REG_CODIGO,G1.REG_DESCRI, A1.RCL_ATIVIDADE,'+
            ' '''' as CC_NOME, '''' as CC_EMAIL , '''' as CC_CARGO, '''' as CC_CELULAR, '''' as CC_TELEFONE, '''' as CC_RAMAL, '''' as CC_TIPO, C1.CLI_CLASSE_CLI_FOR, ORI.CORI_DESCRICAO FROM CLI0000 C1 ';
    wSql3 := 'LEFT JOIN REP0000 R1 on (C1.rep_codigo = R1.rep_codigo) LEFT JOIN REG0000 G1 on (C1.reg_codigo = G1.reg_codigo) LEFT JOIN CLI_ATV1 A1 on (C1.CLI_ATIVIDADE = A1.RCL_CODIGO)'+
             'LEFT JOIN CLIENTE_ORIGEM ORI on (C1.CORI_CODIGO = ORI.CORI_CODIGO)';


    wSeleciona := '';
    if RadAlfa.checked  then
       wOrdem:='A1.RCL_ATIVIDADE ASC, C1.CLI_RAZAO';
    if RadCida.checked  then
       wOrdem:='A1.RCL_ATIVIDADE ASC, C1.CLI_UF,C1.CLI_CIDADE';
    if CbRamo.ItemIndex<> 0 then
       begin
           wRamo:=SqlCdsAtividadeRCL_CODIGO.AsString;
           wRamo_Descri:=SqlCdsAtividadeRCL_ATIVIDADE.AsString;
           wSeleciona:='WHERE C1.CLI_ATIVIDADE ='''+wRamo+'''';
       end
    else
       begin
           wRamo:='000';
           wRamo_Descri:='TODOS';

       end;

    if CbRepre.ItemIndex <> 0 then {Selecionou um representante}
       begin
           wRep_Codigo := SqlCdsRepresentanteREP_CODIGO.AsString;
           wRep_Nome   := SqlCdsRepresentanteREP_NOME.AsString;
           if CbRamo.ItemIndex <> 0 then
              wSeleciona  := wSeleciona + ' and C1.REP_CODIGO ='''+SqlCdsRepresentanteREP_CODIGO.AsString+''''
           else
              wSeleciona  := wSeleciona + ' where C1.REP_CODIGO ='''+SqlCdsRepresentanteREP_CODIGO.AsString+'''';
       end
    else
       begin
           wRep_Codigo :='000';
           wRep_Nome   :='TODOS';
       end;

    if (wSeleciona = '') then
      wSeleciona := 'where 1=1 ';

    screen.cursor := crHourGlass;
    try
      SqlCdsClienteRB.Close;
      SqlCdsClienteRB.CommandText := SQLDEF('CLIENTES',wSql1+wSql2+wSql3,wSeleciona+sClienteAtivoSql,wOrdem,'C1.');
      SqlCdsClienteRB.Open;
      LBL_03_LTITULO1.Caption       := 'RELAÇÃO DE CLIENTES POR ATIVIDADE';
      LBL_03_LTITULO2.Caption       := 'RAMO : '+wRamo+' '+wRamo_Descri + ' - REPRESENTANTE.: '+wRep_codigo+' - '+wRep_Nome;

    except on E:EdatabaseError do
        begin
            uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
        end;
    end;
    screen.cursor := crDefault;
    if ChekMalaDireta.checked  then // enviar como mala direta
       begin
           if RadVideo.Checked then
              begin
                  ppREtiq.DeviceType:='Screen';
                  RBuilderPreview(ppREtiq);
              end
           else
              begin
                  ppREtiq.DeviceType:='Printer';
                  ppREtiq.Print;
              end
       end
    else
       begin
           if RadVideo.Checked then
              begin
                  ppReport03.DeviceType:='Screen';
              end else
           if RadImpressora.Checked then
              begin
                  ppReport03.DeviceType:='Printer';
                  ppReport03.ShowPrintDialog := true;
              end;

           if CbRamo.ItemIndex = 0 then
              ppGroupHeaderBand3.Visible := true;

           RBuilderPreview(ppReport03);
           CbRepre.ItemIndex := 0;
           CbRamo.ItemIndex  := 0;
           LTBox.SetFocus;
       end;
    Screen.Cursor := crDefault;
end;

{**************************CriaRel04*****************************}
procedure TFormGImpClie.CriaRel04;
begin
    {Relatório de Produtos Vendidos por Cliente}
    wSql1 := 'SELECT C1.CLI_CODIGO, C1.EMP_CODIGO,C1.CLI_RAZAO,C1.CLI_PORTE,C1.CLI_ENDERE,C1.CLI_BAIRRO,C1.CLI_CEP,C1.CLI_CIDADE,C1.CLI_UF,C1.CLI_FONE,C1.CLI_FAX,C1.CLI_CONTATO,C1.CLI_FUNCONT,C1.CLI_DTINICIO,';
    wSql2 := 'C1.CLI_DTULTCOM,C1.REP_CODIGO,R1.REP_NOME,F1.FAT_CODIGO,F1.FAT_DTEMIS,N1.PRD_REFER,N1.PRD_DESCRI,N1.NF_QTDE,N1.NF_IPIALIQ,N1.NF_PRECO FROM CLI0000 C1 ';
    wSql3 := 'LEFT JOIN FAT0000  F1 ON (F1.CLI_CODIGO = C1.CLI_CODIGO) LEFT JOIN NF_IT01 N1  ON (F1.FAT_CODIGO = N1.NF_IT_NOTANUMER) LEFT JOIN REP0000 R1  ON (C1.REP_CODIGO = R1.REP_CODIGO) ';
    wSql3 := wSql3 + ' WHERE 1 = 1 ';
    wSql3 := wSql3 + iif(((EditDataI.Date = 0) OR (EditDataF.Date = 0) ), '', ' AND f1.FAT_DTEMIS BETWEEN ' + DateToSQL(EditDataI.Date) + ' AND ' + DateToSQL(EditDataF.Date) ) ;
    wSql3 := wSql3 + iif(sbCliente.idRetorno = '', '', ' AND c1.CLI_CODIGO = ' + QuotedStr(sbCliente.idRetorno)) ;

    if CbRepre.ItemIndex = 0 then
       begin
           {TODOS OS ESTADOS, TODAS AS CIDADES, TODOS OS BAIRROS}
           wrep_codigo := '000';
           wRep_Nome   := 'TODOS';
           if (EdtEstado.Text='')and(EdtCidade.Text='TODOS')and(EdtBairro.Text='TODOS') then
              begin
                  if wPorte = 'T' then
                     begin
                         wSeleciona := '';
                         LBL_04_LTITULO2.Caption := '';
                     end
                  else
                     begin
                         wSeleciona := 'AND C1.CLI_PORTE='''+wporte+'''';
                         LBL_04_LTITULO2.Caption := 'Porte : '+wPorteD;
                     end;
                  if (wSeleciona = '') then
                    wSeleciona := 'and 1=1 ';

                  try
                    SqlCdsCliProdu.Close;
                    SqlCdsCliProdu.CommandText:= SQLDEF('CLIENTES',wSql1+wSql2+wSql3,wSeleciona+sClienteAtivoSql,'C1.CLI_UF,C1.CLI_CIDADE,C1.CLI_RAZAO,F1.FAT_DTEMIS','C1.');
                    SqlCdsCliProdu.Open;
                  except on E:EdatabaseError do
                     begin
                         uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                     end;
                  end;
                  LBL_04_LTITULO1.Caption := 'LISTAGEM DE CLIENTES E PRODUTOS VENDIDOS';
                  screen.cursor := crDefault;
              end;
              {SELECIONOU UM ESTADO, TODAS AS CIDADES, TODOS OS BAIRROS}
           if (EdtEstado.Text<>'')and(EdtCidade.Text = 'TODOS')and(EdtBairro.Text ='TODOS') then
              begin
                  if wPorte = 'T' then
                     begin
                         try
                           SqlCdsCliProdu.Close;
                           SqlCdsCliProdu.CommandText:= SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'AND C1.CLI_UF='''+EdtEstado.Text+''''+sClienteAtivoSql,'C1.CLI_UF,C1.CLI_CIDADE,C1.CLI_RAZAO,F1.FAT_DTEMIS','C1.');
                           SqlCdsCliProdu.open;
                           LBL_04_LTITULO2.Caption := 'Estado: '+EdtEstado.Text;
                         except on E:EdatabaseError do
                             begin
                                 uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                             end;
                         end;
                     end
                  else
                     begin
                         try
                           SqlCdsCliProdu.Close;
                           SqlCdsCliProdu.CommandText:= SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'AND C1.CLI_UF='''+EdtEstado.Text+'''AND C1.CLI_PORTE='''+wPorte+''''+sClienteAtivoSql,'C1.CLI_UF,C1.CLI_CIDADE,C1.CLI_RAZAO,F1.FAT_DTEMIS','C1.');
                           SqlCdsCliProdu.Open;
                           LBL_04_LTITULO2.Caption := 'Estado: '+EdtEstado.Text+' - Porte : '+wPorteD;
                         except on E:EdatabaseError do
                             begin
                                 uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                             end;
                         end;
                     end;
                  LBL_04_LTITULO1.Caption := 'LISTAGEM DE CLIENTES E PRODUTOS VENDIDOS (Estado)';
                  screen.cursor := crDefault;
              end;
              {SELECIONOU UM ESTADO, SELECIONOU UMA CIDADE, TODOS OS BAIRROS}
           if (EdtEstado.Text<>'')and(EdtCidade.Text<>'TODOS')and(EdtBairro.Text='TODOS') then
              begin
                  if wPorte = 'T' then
                     begin
                         try
                           SqlCdsCliProdu.Close;
                           SqlCdsCliProdu.CommandText:= SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'AND C1.CLI_UF='''+EdtEstado.Text+'''AND C1.CLI_CIDADE='''+EdtCidade.text+''''+sClienteAtivoSql,'C1.CLI_UF,C1.CLI_CIDADE,C1.CLI_RAZAO,F1.FAT_DTEMIS','C1.');
                           SqlCdsCliProdu.open;
                           LBL_04_LTITULO2.Caption := 'Cidade: '+EdtCidade.Text;
                         except on E:EdatabaseError do
                             begin
                                 uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                             end;
                         end;
                     end
                  else
                     begin
                         try
                           SqlCdsCliProdu.Close;
                           SqlCdsCliProdu.CommandText:= SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'AND C1.CLI_UF='''+EdtEstado.Text+'''AND C1.CLI_CIDADE='''+EdtCidade.text+'''and C1.CLI_PORTE='''+wPorte+''''+sClienteAtivoSql,
                                                               'C1.CLI_UF,C1.CLI_CIDADE,C1.CLI_RAZAO,F1.FAT_DTEMIS','C1.');
                           SqlCdsCliProdu.Open;
                           LBL_04_LTITULO2.Caption := 'Cidade: '+EdtCidade.Text+' - Porte : '+wPorteD;
                         except on E:EdatabaseError do
                             begin
                                 uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                             end;
                         end;
                     end;
                  LBL_04_LTITULO1.Caption := 'LISTAGEM DE CLIENTES E PRODUTOS VENDIDOS (Cidade)';
                  screen.cursor := crDefault;
              end;
              {SELECIONOU UM ESTADO, SELECIONOU UMA CIDADE, SELECIONOU UM BAIRRO}
           if (EdtEstado.Text<>'')and(EdtCidade.Text<>'TODOS')and(EdtBairro.Text<>'TODOS') then
              begin
                  if wPorte = 'T' then
                     begin
                         try
                           SqlCdsCliProdu.Close;
                           SqlCdsCliProdu.CommandText:= SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'AND C1.CLI_UF='''+EdtEstado.Text+''' AND C1.CLI_CIDADE='''+EdtCidade.text+''' AND C1.CLI_BAIRRO='''+EdtBairro.text+''''+sClienteAtivoSql,
                                                               'C1.CLI_UF,C1.CLI_CIDADE,C1.CLI_RAZAO,F1.FAT_DTEMIS','C1.');
                           SqlCdsCliProdu.open;
                           LBL_04_LTITULO2.Caption := 'Cidade: '+EdtCidade.Text+' - Bairro: '+EdtBairro.Text;
                         except on E:EdatabaseError do
                             begin
                                 uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                             end;
                         end;
                     end
                  else
                     begin
                         try
                           SqlCdsCliProdu.Close;
                           SqlCdsCliProdu.CommandText:= SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'AND C1.CLI_UF='''+EdtEstado.Text+'''AND C1.CLI_CIDADE='''+EdtCidade.text+'''AND C1.CLI_BAIRRO='''+EdtBairro.text+'''AND C1.CLI_PORTE='''+wPorte+''''+sClienteAtivoSql,
                                                               'C1.CLI_UF,C1.CLI_CIDADE,C1.CLI_RAZAO,F1.FAT_DTEMIS','C1.');
                           SqlCdsCliProdu.Open;
                           LBL_04_LTITULO2.Caption := 'Cidade: '+EdtCidade.Text+' - Bairro: '+EdtBairro.Text+' - Porte : '+wPorteD;
                         except on E:EdatabaseError do
                             begin
                                 uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                             end;
                         end;
                     end;
                  LBL_04_LTITULO1.Caption := 'LISTAGEM DE CLIENTES E PRODUTOS VENDIDOS (Cidade e Bairro)';
                  screen.cursor := crDefault;
              end;

           //relatorio Listagem
           if ChekMalaDireta.checked  then // enviar como mala direta
              begin
                  if RadVideo.Checked then
                     begin
                         ppREtiq.DeviceType:='Screen';
                     end
                  else
                     begin
                         ppREtiq.DeviceType:='Printer';
                         ppREtiq.ShowPrintDialog := true;
                     end;
                  RBuilderPreview(ppREtiq);
              end
           else
              begin
                  if RadVideo.Checked then
                     begin
                         ppReport04.DeviceType:='Screen';
                     end;
                  if RadImpressora.Checked then
                     begin
                         ppReport04.DeviceType:='Printer';
                         ppReport04.ShowPrintDialog := true;
                     end;
                  RBuilderPreview(ppReport04);
                  CbRepre.ItemIndex := 0;
                  EdtCidade.Text:='TODOS';
                  EdtBairro.Text:='TODOS';
//                  LTBOX.ItemIndex  := 0;
              end;
       end
    else {SELECIONOU UM REPRESENTANTE}
       begin
           {TODOS OS ESTADOS, TODAS AS CIDADES, TODOS OS BAIRROS}
           wrep_codigo := SqlCdsRepresentanteREP_CODIGO.AsString;
           wRep_Nome   := SqlCdsRepresentanteREP_NOME.AsString;
           if (EdtEstado.Text='')and(EdtCidade.Text='TODOS')and(EdtBairro.Text='TODOS') then
              begin
                  if wPorte = 'T' then
                     begin
                         try
                           SqlCdsCliProdu.Close;
                           SqlCdsCliProdu.CommandText:= SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'AND C1.REP_CODIGO='''+wrep_codigo+''''+sClienteAtivoSql,
                                                               'C1.CLI_UF,C1.CLI_CIDADE,C1.CLI_RAZAO,F1.FAT_DTEMIS','C1.');
                           SqlCdsCliProdu.open;
                           LBL_04_LTITULO2.Caption := 'REPRESENTANTE.: '+wrep_codigo+' - '+wrep_nome;
                         except on E:EdatabaseError do
                             begin
                                 uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                             end;
                         end;
                     end
                  else
                     begin
                         try
                           SqlCdsCliProdu.Close;
                           SqlCdsCliProdu.CommandText:= SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'AND CLI_PORTE='''+wporte+''''+sClienteAtivoSql,
                                                               'C1.CLI_UF,C1.CLI_CIDADE,C1.CLI_RAZAO,F1.FAT_DTEMIS','C1.');
                           SqlCdsCliProdu.Open;
                           LBL_04_LTITULO2.Caption := 'REPRESENTANTE.: '+wrep_codigo+' - '+wrep_nome+' Porte : '+wPorteD;
                         except on E:EdatabaseError do
                             begin
                                 uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                             end;
                         end;
                     end;
                  LBL_04_LTITULO1.Caption := 'LISTAGEM DE CLIENTES E PRODUTOS VENDIDOS';
                  screen.cursor := crDefault;
              end;
              {SELECIONOU UM ESTADO, TODAS AS CIDADES, TODOS OS BAIRROS}
           if (EdtEstado.Text<>'')and(EdtCidade.Text = 'TODOS')and(EdtBairro.Text ='TODOS') then
              begin
                  if wPorte = 'T' then
                     begin
                         try
                           SqlCdsCliProdu.Close;
                           SqlCdsCliProdu.CommandText:= SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'AND C1.REP_CODIGO='''+wrep_codigo+'''AND C1.CLI_UF='''+EdtEstado.Text+''''+sClienteAtivoSql,
                                                               'C1.CLI_UF,C1.CLI_CIDADE,C1.CLI_RAZAO,F1.FAT_DTEMIS','C1.');
                           SqlCdsCliProdu.open;
                           LBL_04_LTITULO2.Caption := 'Estado: '+EdtEstado.Text;
                         except on E:EdatabaseError do
                             begin
                                 uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                             end;
                         end;
                     end
                  else
                     begin
                         try
                           SqlCdsCliProdu.Close;
                           SqlCdsCliProdu.CommandText:= SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'AND C1.REP_CODIGO='''+wrep_codigo+'''AND C1.CLI_UF='''+EdtEstado.Text+'''AND C1.CLI_PORTE='''+wPorte+''''+sClienteAtivoSql,
                                                               'C1.CLI_UF,C1.CLI_CIDADE,C1.CLI_RAZAO,F1.FAT_DTEMIS','C1.');
                           SqlCdsCliProdu.Open;
                           LBL_04_LTITULO2.Caption := 'Estado: '+EdtEstado.Text+' - Porte : '+wPorteD;
                         except on E:EdatabaseError do
                             begin
                                 uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                             end;
                         end;
                     end;
                  LBL_04_LTITULO1.Caption := 'LISTAGEM DE CLIENTES E PRODUTOS VENDIDOS (Estado)';
                  screen.cursor := crDefault;
              end;
              {SELECIONOU UM ESTADO, SELECIONOU UMA CIDADE, TODOS OS BAIRROS}
           if (EdtEstado.Text<>'')and(EdtCidade.Text<>'TODOS')and(EdtBairro.Text='TODOS') then
              begin
                  if wPorte = 'T' then
                     begin
                         try
                           SqlCdsCliProdu.Close;
                           SqlCdsCliProdu.CommandText:= SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'AND C1.REP_CODIGO='''+wrep_codigo+'''AND C1.CLI_UF='''+EdtEstado.Text+'''AND C1.CLI_CIDADE='''+EdtCidade.text+''''+sClienteAtivoSql,
                                                               'C1.CLI_UF,C1.CLI_CIDADE,C1.CLI_RAZAO,F1.FAT_DTEMIS','C1.');
                           SqlCdsCliProdu.open;
                           LBL_04_LTITULO2.Caption := 'Cidade: '+EdtCidade.Text;
                         except on E:EdatabaseError do
                             begin
                                 uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                             end;
                         end;
                     end
                  else
                     begin
                         try
                           SqlCdsCliProdu.Close;
                           SqlCdsCliProdu.CommandText := SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'AND C1.REP_CODIGO='''+wrep_codigo+'''AND C1.CLI_UF='''+EdtEstado.Text+'''AND C1.CLI_CIDADE='''+EdtCidade.text+'''AND C1.CLI_PORTE='''+wPorte+''''+sClienteAtivoSql,
                                                               'C1.CLI_UF,C1.CLI_CIDADE,C1.CLI_RAZAO,F1.FAT_DTEMIS','C1.');
                           SqlCdsCliProdu.Open;
                           LBL_04_LTITULO2.Caption := 'Cidade: '+EdtCidade.Text+' - Porte : '+wPorteD;
                         except on E:EdatabaseError do
                             begin
                                 uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                             end;
                         end;
                     end;
                  LBL_04_LTITULO1.Caption := 'LISTAGEM DE CLIENTES E PRODUTOS VENDIDOS (Cidade)';
                  screen.cursor := crDefault;
              end;
              {SELECIONOU UM ESTADO, SELECIONOU UMA CIDADE, SELECIONOU UM BAIRRO}
           if (EdtEstado.Text<>'')and(EdtCidade.Text<>'TODOS')and(EdtBairro.Text<>'TODOS') then
              begin
                  if wPorte = 'T' then
                     begin
                         try
                           SqlCdsCliProdu.Close;
                           SqlCdsCliProdu.CommandText:= SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'AND C1.REP_CODIGO='''+wrep_codigo+'''AND C1.CLI_UF='''+EdtEstado.Text+'''AND C1.CLI_CIDADE='''+EdtCidade.text+'''AND C1.CLI_PORTE='''+wPorte+'''AND C1.CLI_BAIRRO='''+EdtBairro.text+''''+sClienteAtivoSql,
                                                               'C1.CLI_UF,C1.CLI_CIDADE,C1.CLI_RAZAO,F1.FAT_DTEMIS','C1.');
                           SqlCdsCliProdu.open;
                           LBL_04_LTITULO2.Caption := 'Cidade: '+EdtCidade.Text+' - Bairro: '+EdtBairro.Text;
                         except on E:EdatabaseError do
                             uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+E.message));
                         end;
                     end
                  else
                     begin
                         try
                           SqlCdsCliProdu.Close;
                           SqlCdsCliProdu.CommandText:= SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'AND C1.REP_CODIGO='''+wrep_codigo+'''AND C1.CLI_UF='''+EdtEstado.Text+'''AND C1.CLI_CIDADE='''+EdtCidade.text+'''AND C1.CLI_BAIRRO='''+EdtBairro.text+'''AND C1.CLI_PORTE='''+wPorte+''''+sClienteAtivoSql,
                                                               'C1.CLI_UF,C1.CLI_CIDADE,C1.CLI_RAZAO,F1.FAT_DTEMIS','C1.');
                           SqlCdsCliProdu.Open;
                           LBL_04_LTITULO2.Caption := 'Cidade: '+EdtCidade.Text+' - Bairro: '+EdtBairro.Text+' - Porte : '+wPorteD;
                         except on E:EdatabaseError do
                             begin
                                 uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                             end;
                         end;
                     end;
                  LBL_04_LTITULO1.Caption := 'LISTAGEM DE CLIENTES E PRODUTOS VENDIDOS (Cidade e Bairro)';
                  screen.cursor := crDefault;
              end;

           //relatorio Listagem
           if ChekMalaDireta.checked  then // enviar como mala direta
              begin
                  if RadVideo.Checked then
                     begin
                         ppREtiq.DeviceType:='Screen';
                     end
                  else
                     begin
                         ppREtiq.DeviceType:='Printer';
                         ppREtiq.ShowPrintDialog := true;
                     end;
                  RBuilderPreview(ppREtiq);
              end
           else
              begin
                  if RadVideo.Checked then
                     begin
                         ppReport04.DeviceType:='Screen';
                     end else
                  if RadImpressora.Checked then
                     begin
                         ppReport04.DeviceType:='Printer';
                         ppReport04.ShowPrintDialog := true;
                     end;
                  RBuilderPreview(ppReport04);
                  CbRepre.ItemIndex := 0;
                  EdtCidade.Text:='TODOS';
                  EdtBairro.Text:='TODOS';
//                LTBOX.ItemIndex  := 0;
              end;
       end;
   Screen.Cursor := crDefault;
end;
{**********************************CriaRel05*************************}
procedure TFormGImpClie.CriaRel05;
begin
    wSql1 := 'SELECT C1.CLI_CODIGO, C1.EMP_CODIGO,C1.CLI_RAZAO,C1.CLI_PORTE,C1.CLI_ENDERE,C1.CLI_BAIRRO,C1.CLI_CEP,C1.CLI_CIDADE,C1.CLI_UF,C1.CLI_FONE,C1.CLI_FAX,C1.CLI_CONTATO,C1.CLI_DTULTCOM,';
    wSql2 := 'C1.CLI_INATIVO,C1.CLI_EMAIL,C1.CLI_HOME,C1.CLI_ATIVIDADE,C1.CLI_FUNCONT,C1.REP_CODIGO,R1.REP_NOME,R1.REP_SITUACAO,C1.REG_CODIGO,G1.REG_DESCRI, '''' as RCL_ATIVIDADE, '+
             ' '''' as CC_NOME, '''' as CC_EMAIL , '''' as CC_CARGO, '''' as CC_CELULAR, '''' as CC_TELEFONE, '''' as CC_RAMAL, '''' as CC_TIPO, C1.CLI_CLASSE_CLI_FOR, ORI.CORI_DESCRICAO FROM CLI0000 C1 ';
    wSql3 := ' LEFT JOIN REP0000 R1 on (C1.rep_codigo = R1.rep_codigo) LEFT JOIN REG0000 G1 on (C1.reg_codigo = G1.reg_codigo) LEFT JOIN CLIENTE_ORIGEM ORI on (C1.CORI_CODIGO = ORI.CORI_CODIGO) ';


    if CbRepre.ItemIndex = 0 then
       begin
           if (EdtEstado.Text='')and(EdtCidade.Text='TODOS')and(EdtBairro.Text='TODOS')then
              begin
                  if wPorte <> 'T' THEN
                     begin
                         try
                           SqlCdsClienteRB.Close;
                           SqlCdsClienteRB.CommandText := SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'WHERE C1.CLI_PORTE='''+wporte+''' AND (C1.CLI_EMAIL<>'+''''+''''+')'+sClienteAtivoSql,'C1.CLI_CIDADE','C1.');
                           SqlCdsClienteRB.Open;
                           LBL_05_LTITULO2.Caption :='Porte das Empresas : '+WporteD;
                           except on E:EdatabaseError do
                             begin
                                 uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                             end;
                         end;
                     end
                  else
                     begin
                         Try
                           SqlCdsClienteRB.Close;
                           SqlCdsClienteRB.CommandText := SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'WHERE C1.CLI_EMAIL<>'+''''+''''+sClienteAtivoSql,'C1.CLI_CIDADE','C1.');
                           SqlCdsClienteRB.Open;
                           LBL_05_LTITULO2.Caption := 'Porte das Empresas : '+wPorteD;
                         except on E:EdatabaseError do
                             begin
                                 uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                             end;
                         end;
                     end;
                  LBL_05_LTITULO1.Caption := 'LISTA DE E-MAIL DE CLIENTES';
              end;

           if (EdtEstado.Text<>'')and(EdtCidade.Text='TODOS')and(EdtBairro.Text='TODOS') then
              begin
                  if wPorte = 'T' then
                     begin
                         try
                           SqlCdsClienteRB.Close;
                           SqlCdsClienteRB.CommandText := SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'WHERE C1.CLI_UF='''+EdtEstado.Text+''''+' AND(C1.CLI_EMAIL<>'+''''+''''+')'+sClienteAtivoSql,'C1.CLI_CIDADE','C1.');
                           SqlCdsClienteRB.Open;
                           LBL_05_LTITULO2.Caption := 'Estado: '+EdtEstado.Text;
                         except on E:EdatabaseError do
                             begin
                                 uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                             end;
                         end;
                     end
                  else
                     begin
                         try
                           SqlCdsClienteRB.Close;
                           SqlCdsClienteRB.CommandText := SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'WHERE C1.CLI_UF='''+EdtEstado.Text+'''and C1.CLI_PORTE='''+wPorte+''''+''''+' AND(C1.CLI_EMAIL<>'+''''+''''+')'+sClienteAtivoSql,'C1.CLI_CIDADE','C1.');
                           SqlCdsClienteRB.Open;
                           LBL_05_LTITULO2.Caption := 'Estado: '+EdtEstado.Text+' - Porte : '+wPorteD;
                         except on E:EdatabaseError do
                             begin
                                 uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                             end;
                         end;
                     end;
                  LBL_05_LTITULO1.Caption := 'LISTA DE E-MAIL DE CLIENTES DO ESTADO';
              end;

           if (EdtEstado.Text<>'')and(EdtCidade.Text<>'TODOS')and(EdtBairro.Text='TODOS') then
              begin
                  if wPorte = 'T' then
                     begin
                         try
                           SqlCdsClienteRB.Close;
                           SqlCdsClienteRB.CommandText := SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'WHERE C1.CLI_UF='''+EdtEstado.Text+'''AND C1.CLI_CIDADE='''+EdtCidade.text+''''+'AND(C1.CLI_EMAIL<>'+'''+'''+')'+sClienteAtivoSql,'C1.CLI_CIDADE','C1.');
                           SqlCdsClienteRB.Open;
                           LBL_05_LTITULO2.Caption := 'Cidade: '+EdtCidade.Text;
                         except on E:EdatabaseError do
                             begin
                                 uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                             end;
                         end;
                     end
                  else
                     begin
                         try
                           SqlCdsClienteRB.Close;
                           SqlCdsClienteRB.CommandText := SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'WERE C1.CLI_UF='''+EdtEstado.Text+'''AND C1.CLI_CIDADE='''+EdtCidade.text+'''and C1.CLI_PORTE='''+wPorte+''''+'AND(C1.CLI_EMAIL<>'+''''+''''+')'+sClienteAtivoSql,
                                                                 'C1.CLI_CIDADE','C1.');
                           SqlCdsClienteRB.Open;
                           LBL_05_LTITULO2.Caption := 'Cidade: '+EdtCidade.Text+' - Porte : '+wPorteD;
                         except on E:EdatabaseError do
                            uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                         end;
                     end;
                  LBL_05_LTITULO1.Caption := 'LISTA DE E-MAIL DE CLIENTES DA CIDADE';
              end;
           if (EdtEstado.Text<>'')and(EdtCidade.Text<>'TODOS')and(EdtBairro.Text<>'TODOS') then
              begin
                  if wPorte = 'T' then
                     begin
                         try
                           SqlCdsClienteRB.Close;
                           SqlCdsClienteRB.CommandText := SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'WHERE C1.CLI_UF='''+EdtEstado.Text+'''AND C1.CLI_CIDADE='''+EdtCidade.text+'''AND C1.CLI_BAIRRO='''+EdtBairro.text+''''+'AND(C1.CLI_EMAIL<>'+''''+''''+')'+sClienteAtivoSql,
                                                                 'C1.CLI_CIDADE','C1.');
                           SqlCdsClienteRB.Open;
                           LBL_05_LTITULO2.Caption := 'Cidade: '+EdtCidade.Text+' - Bairro: '+EdtBairro.Text;
                         except on E:EdatabaseError do
                             begin
                                 uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                             end;
                         end;
                     end
                  else
                     begin
                         try
                           SqlCdsClienteRB.Close;
                           SqlCdsClienteRB.CommandText := SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'WHERE C1.CLI_UF='''+EdtEstado.Text+'''AND C1.CLI_CIDADE='''+EdtCidade.text+'''AND C1.CLI_BAIRRO='''+EdtBairro.text+'''AND C1.CLI_PORTE='''+wPorte+''''+'AND(C1.CLI_EMAIL<>'+''''+''''+')'+sClienteAtivoSql,
                                                                 'C1.CLI_CIDADE','C1.');
                           SqlCdsClienteRB.Open;
                           LBL_05_LTITULO2.Caption := 'Cidade: '+EdtCidade.Text+' - Bairro: '+EdtBairro.Text+' - Porte : '+wPorteD;
                         except on E:EdatabaseError do
                             begin
                                 uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                             end;
                         end;
                     end;
                  LBL_05_LTITULO1.Caption := 'LISTA DE E-MAIL DE CLIENTES DA CIDADE E BAIRRO';
              end;
           //relatorio Listagem
           if ChekMalaDireta.checked  then // enviar como mala direta
              begin
                  if RadVideo.Checked then
                     begin
                         ppREtiq.DeviceType:='Screen';
                     end
                  else
                     begin
                         ppREtiq.DeviceType:='Printer';
                         ppREtiq.ShowPrintDialog := true;
                     end;
                  RBuilderPreview(ppREtiq);
              end
           else
              begin
                  if RadVideo.Checked then
                     begin
                         ppReport05.DeviceType:='Screen';
                     end else
                  if RadImpressora.Checked then
                     begin
                         ppReport05.DeviceType:='Printer';
                         ppReport05.ShowPrintDialog := true;
                     end;
                  RBuilderPreview(ppReport05);
                  CbRepre.ItemIndex:= 0;
                  LTBOX.SetFocus;
              end;
       end
    else {*********** FOI SELECIONADO UM REPRESENTANTE *****************}
       begin
           // *** Foi Selecionado um Representante ***
           wRep_Codigo := SqlCdsRepresentanteREP_CODIGO.AsString;
           if (EdtEstado.Text='')and(EdtCidade.Text='TODOS')and(EdtBairro.Text='TODOS')then
              begin
                  if wPorte = 'T' THEN
                     begin
                         try
                           SqlCdsClienteRB.Close;
                           SqlCdsClienteRB.CommandText := SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'WHERE C1.REP_CODIGO='''+wrep_codigo+'''AND (C1.CLI_EMAIL<>'+''''+''''+')'+sClienteAtivoSql,
                                                                 'C1.CLI_CIDADE','C1.');
                           SqlCdsClienteRB.Open;
                           LBL_05_LTITULO2.Caption := 'Repres.: '+wrep_codigo+' - '+SqlCdsRepresentanteREP_NOME.AsString+' - Porte das Empresas : '+wPorteD;
                         except on E:EdatabaseError do
                            uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                         end;
                     end
                  else
                     begin
                         Try
                           SqlCdsClienteRB.Close;
                           SqlCdsClienteRB.CommandText := SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'WHERE C1.REP_CODIGO='''+wrep_codigo+'''AND C1.CLI_PORTE='''+wporte+''''+'AND(C1.CLI_EMAIL<>'+''''+''''+')'+sClienteAtivoSql,
                                                                 'C1.CLI_CIDADE','C1.');
                           SqlCdsClienteRB.Open;
                           LBL_05_LTITULO2.Caption := 'Repres.: '+wrep_codigo+' - '+SqlCdsRepresentanteREP_NOME.AsString;
                         except on E:EdatabaseError do
                             begin
                                 uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                             end;
                         end;
                     end;
                  LBL_05_LTITULO1.Caption := 'RELATÓRIO DE CLIENTES POR REPRESENTANTE';
              end;
           if (EdtEstado.Text<>'')and(EdtCidade.Text='TODOS')and(EdtBairro.Text='TODOS') then
              begin
                  if wPorte = 'T' then
                     begin
                         try
                           SqlCdsClienteRB.Close;
                           SqlCdsClienteRB.CommandText := SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'WHERE C1.REP_CODIGO='''+wrep_codigo+'''AND C1.CLI_UF='''+EdtEstado.Text+''''+'AND(C1.CLI_EMAIL<>'+''''+''''+')'+sClienteAtivoSql,
                                                                 'C1.CLI_CIDADE','C1.');
                           SqlCdsClienteRB.Open;
                           LBL_05_LTITULO2.Caption := 'Estado: '+EdtEstado.Text;
                         except on E:EdatabaseError do
                             begin
                                 uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                             end;
                         end;
                     end
                  else
                     begin
                         try
                           SqlCdsClienteRB.Close;
                           SqlCdsClienteRB.CommandText := SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'WHERE C1.REP_CODIGO='''+wrep_codigo+'''AND C1.CLI_UF='''+EdtEstado.Text+'''and C1.CLI_PORTE='''+wPorte+''''+'AND(C1.CLI_EMAIL<>'+''''+''''+')'+sClienteAtivoSql,
                                                                 'C1.CLI_CIDADE','C1.');
                           SqlCdsClienteRB.Open;
                           LBL_05_LTITULO2.Caption := 'Estado: '+EdtEstado.Text+' - Porte : '+wPorteD;
                         except on E:EdatabaseError do
                             begin
                                 uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                             end;
                         end;
                     end;
                  LBL_05_LTITULO1.Caption := 'RELAÇÃO DE CLIENTES DO REPRES.: '+wrep_codigo+' - '+SqlCdsRepresentanteREP_NOME.AsString;
              end;
           if (EdtEstado.Text<>'')and(EdtCidade.Text<>'TODOS')and(EdtBairro.Text='TODOS') then
              begin
                  if wPorte = 'T' then
                     begin
                         try
                           SqlCdsClienteRB.Close;
                           SqlCdsClienteRB.CommandText := SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'WHERE C1.REP_CODIGO='''+wrep_codigo+'''AND C1.CLI_UF='''+EdtEstado.Text+'''AND C1.CLI_CIDADE='''+EdtCidade.text+''''+'AND(C1.CLI_EMAIL<>'+''''+''''+')'+sClienteAtivoSql,
                                                                 'C1.CLI_CIDADE','C1.');
                           SqlCdsClienteRB.Open;
                           LBL_05_LTITULO2.Caption := 'Cidade: '+EdtCidade.Text;
                         except on E:EdatabaseError do
                             begin
                                 uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                             end;
                         end;
                     end
                  else
                     begin
                         try
                           SqlCdsClienteRB.Close;
                           SqlCdsClienteRB.CommandText := SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'WHERE C1.REP_CODIGO='''+wrep_codigo+''' AND C1.CLI_UF='''+EdtEstado.Text+''' AND C1.CLI_CIDADE='''+EdtCidade.text+''' AND C1.CLI_PORTE='''+wPorte+''''+sClienteAtivoSql,
                                                                 'C1.CLI_CIDADE','C1.');
                           SqlCdsClienteRB.Open;
                           LBL_05_LTITULO2.Caption := 'Cidade: '+EdtCidade.Text+' - Porte : '+wPorteD;
                         except on E:EdatabaseError do
                             begin
                                 uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                             end;
                         end;
                     end;
                  LBL_05_LTITULO1.Caption := 'LISTA DE E-MAIL DE CLIENTES DO REPRES.: '+wrep_codigo+' - '+SqlCdsRepresentanteREP_NOME.AsString;
              end;

           if (EdtEstado.Text<>'')and(EdtCidade.Text<>'TODOS')and(EdtBairro.Text<>'TODOS') then
              begin
                  if wPorte = 'T' then
                     begin
                         try
                           SqlCdsClienteRB.Close;
                           SqlCdsClienteRB.CommandText := SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'WHERE C1.REP_CODIGO='''+wrep_codigo+'''AND C1.CLI_UF='''+EdtEstado.Text+'''AND C1.CLI_CIDADE='''+EdtCidade.text+'''AND C1.CLI_BAIRRO='''+EdtBairro.text+''''+'AND(C1.CLI_EMAIL<>'+''''+''''+')'+sClienteAtivoSql,
                                                                 'C1.CLI_CIDADE','C1.');
                           SqlCdsClienteRB.Open;
                           LBL_05_LTITULO2.Caption := 'Cidade: '+EdtCidade.Text+' - Porte : '+wPorte;
                         except on E:EdatabaseError do
                             begin
                                 uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                             end;
                         end;
                     end
                  else
                     begin
                         try
                           SqlCdsClienteRB.Close;
                           SqlCdsClienteRB.CommandText := SQLDEF('CLIENTES',wSql1+wSql2+wSql3,'WHERE C1.REP_CODIGO='''+wrep_codigo+'''AND C1.CLI_UF='''+EdtEstado.Text+'''AND C1.CLI_CIDADE='''+EdtCidade.text+'''AND C1.CLI_BAIRRO='''+EdtBairro.text+'''AND C1.CLI_PORTE='''+wPorte+''''+'AND(C1.CLI_EMAIL<>'+''''+''''+')'+sClienteAtivoSql,
                                                                 'C1.CLI_CIDADE','C1.');
                           SqlCdsClienteRB.Open;
                           LBL_05_LTITULO2.Caption := 'Cidade: '+EdtCidade.Text+' - Bairro: '+EdtBairro.Text+' - Porte : '+wPorteD;
                         except on E:EdatabaseError do
                             begin
                                 uteis.erro  (Pchar('Erro ao abrir tabela CLIENTES !'+e.message));
                             end;
                         end;
                     end;
                  LBL_05_LTITULO1.Caption := 'LISTA DE E-MAIL DE CLIENTES DO REPRESENTANTE.: '+wrep_codigo+' - '+SqlCdsRepresentanteREP_NOME.AsString;
              end;
           //relatorio Listagem
           if ChekMalaDireta.checked  then // enviar como mala direta
              begin
                  if RadVideo.Checked then
                     begin
                         ppREtiq.DeviceType:='Screen';
                     end
                  else
                     begin
                         ppREtiq.DeviceType:='Printer';
                         ppREtiq.ShowPrintDialog := true;
                     end;
                  RBuilderPreview(ppREtiq);
              end
           else
              begin
                  if RadVideo.Checked then
                     begin
                         ppReport05.DeviceType:='Screen';
                     end else
                  if RadImpressora.Checked then
                     begin
                         ppReport05.DeviceType:='Printer';
                         ppReport05.ShowPrintDialog := true;
                     end;
                  RBuilderPreview(ppReport05);
                  CbRepre.ItemIndex := 0;
                  LTBOX.SetFocus;
              end;
       end;
   Screen.Cursor := crDefault;
end;

procedure TFormGImpClie.CbRepreClick(Sender: tObject);
begin
    If CbRepre.ItemIndex<>0 then
       begin
           SqlCdsRepresentante.Locate('REP_NOME',CbRepre.text,[]);
       end;
end;

procedure TFormGImpClie.CbRamoClick(Sender: tObject);
begin
    if CbRamo.ItemIndex<>0 then
       begin
           SqlCdsAtividade.Locate('RCL_ATIVIDADE',CbRamo.text,[]);
       end;
end;

procedure TFormGImpClie.CbRegiaoClick(Sender: tObject);
begin
    if (CbRegiao.ItemIndex<>0) then
       begin
           SqlCdsRegiao.Locate('REG_DESCRI',CbRegiao.text,[]);
           wRegiao:=SqlCdsRegiaoREG_CODIGO.AsString;
           wReg_descri:=SqlCdsRegiaoREG_DESCRI.AsString;
       end
    else
       begin
           wRegiao    := '';
           wReg_descri:= '';
       end;
end;

procedure TFormGImpClie.pp00HeaderBand1BeforePrint(Sender: tObject);
begin
    LBL_00_EMPRESA.Caption:= dbInicio.Empresa.Razao;
end;

procedure TFormGImpClie.pp01HeaderBand1BeforePrint(Sender: tObject);
begin
    LBL_01_EMPRESA.Caption:=dbInicio.Empresa.Razao;
end;

procedure TFormGImpClie.pp02HeaderBand1BeforePrint(Sender: tObject);
begin
    LBL_02_EMPRESA.Caption:=dbInicio.Empresa.Razao;
end;

procedure TFormGImpClie.pp03HeaderBand1BeforePrint(Sender: tObject);
begin
    LBL_03_EMPRESA.Caption:=dbInicio.Empresa.Razao;
end;

procedure TFormGImpClie.pp04HeaderBand1BeforePrint(Sender: tObject);
begin
    LBL_04_EMPRESA.Caption:=dbInicio.Empresa.Razao;
end;



procedure TFormGImpClie.ppHeaderBand1BeforePrint(Sender: tObject);
begin
    LBL_05_EMPRESA.Caption:=dbInicio.Empresa.Razao;
end;

procedure TFormGImpClie.RelatorioOrigemCliente;
VAR SQL : string;
 condicao :string;
begin
  SQL := 'SELECT CLI_RAZAO, CLI_CGC, CLI_CIDADE, CLI_UF, CLI_DTINICIO, CLI_DTULTCOM, CORI.CORI_DESCRICAO, RE.REP_NOME '+
          ' FROM CLI0000 cl '+
          ' left JOIN CLIENTE_ORIGEM cori ON (cori.CORI_CODIGO = cl.CORI_CODIGO) '+
          ' LEFT JOIN REP0000 RE ON (RE.REP_CODIGO = CL.REP_CODIGO)         ';
 if (DataInicio.date>0) and (DataFim.Date=0) then
   condicao := 'where CLI_DTINICIO >= '+DateToSQL(DataInicio.Date)
 else if (DataInicio.Date = 0 ) and (DataFim.Date>0) then
  condicao :=  ' where CLI_DTINICIO <= '+DateToSQL(DataFim.Date)
 else if (DataInicio.date>0) and (DataFim.Date>0) then
  condicao :=  'where CLI_DTINICIO between '+DateToSQL(DataInicio.Date) + ' and '+ DateToSQL(DataFim.Date);
 sqlClienteOrigem.sql.text := SQLDEF('CLIENTES',SQL,condicao,'CORI_DESCRICAO','cl.' );
  sqlClienteOrigem.Open;


 frxClienteOrigem.ShowReport(true);
end;

procedure TFormGImpClie.SqlCdsCliProduCalcFields(DataSet: TDataSet);
begin
    SqlCdsCliProduSUBTOTAL_CC.AsCurrency:=(SqlCdsCliProduNF_PRECO.AsCurrency * SqlCdsCliProduNF_QTDE.AsCurrency);
end;

procedure TFormGImpClie.sqlClienteOrigemCLI_CGCGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString <> '' then
    text := MascaraCNPJ_CPF(sender.AsString);
end;

procedure TFormGImpClie.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    inherited;
     try
       SqlCdsAtividade.Close;
       SqlCdsRepresentante.Close;
       SqlCdsRegiao.Close;
       SqlCdsCliProdu.Close;
       SqlCdsClienteRB.Close;
     except on E:EdatabaseError do
       uteis.erro  (pchar('Erro ao fechar as tabelas !'+e.message));
     end;
end;

procedure TFormGImpClie.FormCreate(Sender: tObject);
begin
    inherited;
    wSql1 := '';
    wSql2 := '';
    wSql3 := '';
    wSql4 := '';
    wSql5 := '';
    wSql6 := '';
end;

procedure TFormGImpClie.CriaRel06;
begin
            //Cliente Inativo Ativo Todos
            if (rbStatusAtivo.Checked) then
              begin
                sClienteAtivoSql := ' where C1.CLI_INATIVO = ''A''';
              end
            else
            if (rbStatusInativo.Checked) then
              begin
                sClienteAtivoSql := ' where C1.CLI_INATIVO = ''I''';
              end
            else
              sClienteAtivoSql := '';
   wSql1 := 'SELECT '+
            'c1.CLI_CODIGO, '+
            'c1.CLI_RAZAO, '+
            'S1.CLI_SV_AUTORIZADAS, '+
            'S1.CLI_SV_VALIDADE_ATUAL, '+
            'S1.CLI_SV_INICIOCT, '+
            'S1.CLI_SV_DATA_CANCEL_CONTRATO, S1.CLI_SV_VALOR_CONTRATO '+
            'FROM CLI0000 C1 '+
            'LEFT JOIN REP0000 R1 on (C1.rep_codigo = R1.rep_codigo) '+
            'LEFT JOIN REG0000 G1 on (C1.reg_codigo = G1.reg_codigo) '+
            'left join CLI_SV00 S1 ON (S1.CLI_CODIGO = C1.CLI_CODIGO) '+

             sClienteAtivoSql +  //AND C1.CLI_INATIVO = ''A'' '+
            'order BY S1.CLI_SV_DATA_CANCEL_CONTRATO';



   CdsClienteServico.Close;
   CdsClienteServico.CommandText := wSql1;
   CdsClienteServico.Open;

   frx.ShowReport();

end;

procedure TFormGImpClie.CriaRel07;
begin

    FiltrosListaEmail := 'Classificação: ';
    if (rbClassCliente.checked) then
    begin
      FiltrosListaEmail := FiltrosListaEmail + 'Cliente, ';
      sClienteAtivoSql := sClienteAtivoSql + ' AND C1.CLI_CLASSE_CLI_FOR = ''C''';
    end
    else if (rbClassFornecedor.Checked) then
    begin
      FiltrosListaEmail := FiltrosListaEmail + 'Fornecedor, ';
      sClienteAtivoSql := sClienteAtivoSql + ' AND C1.CLI_CLASSE_CLI_FOR = ''F''';
    end
    else
      FiltrosListaEmail := FiltrosListaEmail + 'Ambos, ';

    //Cliente Inativo Ativo Todos
    FiltrosListaEmail := FiltrosListaEmail + 'Status: ';
    if (rbStatusAtivo.Checked) then
    begin
      sClienteAtivoSql := sClienteAtivoSql + ' AND C1.CLI_INATIVO = ''A''';
      FiltrosListaEmail := FiltrosListaEmail + 'Ativos, ';
    end
    else if (rbStatusInativo.Checked) then
    begin
      sClienteAtivoSql := sClienteAtivoSql + ' AND C1.CLI_INATIVO = ''I''';
      FiltrosListaEmail := FiltrosListaEmail + 'Inativos, ';
    end
    else
      FiltrosListaEmail := FiltrosListaEmail + 'Todos, ';

    //Tipo de contatao colaborador,coontador, diretor ou todos
    FiltrosListaEmail := FiltrosListaEmail + 'Tipo de contato: ';
    if rbTipoColaborador.Checked then
    begin
      sClienteAtivoSql:= sClienteAtivoSql + ' AND CO.CC_TIPO = ''C''';
      FiltrosListaEmail := FiltrosListaEmail + 'Colaborador, ';
    end
    else if rbTipoContador.Checked then
    begin
      sClienteAtivoSql := sClienteAtivoSql + ' AND CO.CC_TIPO = ''O''';
      FiltrosListaEmail := FiltrosListaEmail + 'Contador ou consultor, ';
    end
    else if rbTipoDiretor.checked then
    begin
      sClienteAtivoSql := sClienteAtivoSql + ' AND CO.CC_TIPO = ''D''';
      FiltrosListaEmail := FiltrosListaEmail + 'Diretor ou gestor, ';
    end
    else
      FiltrosListaEmail := FiltrosListaEmail + 'Todos, ';


    FiltrosListaEmail := FiltrosListaEmail + 'Contatos: ';
    if rbContatosEmail.Checked then
    begin
      sClienteAtivoSql := sClienteAtivoSql + ' AND CO.CC_EMAIL <> ''''';
      FiltrosListaEmail := FiltrosListaEmail + 'Apenas contatos com email, ';
    end
    else
      FiltrosListaEmail := FiltrosListaEmail + 'Todos, ';

    FiltrosListaEmail := FiltrosListaEmail + 'Empresa: ';
    if rbEmpresaLogada.Checked then
    begin
      sClienteAtivoSql := sClienteAtivoSql + ' AND C1.EMP_CODIGO = '+ dbiNicio.Empresa.emp_codigo;
      FiltrosListaEmail := FiltrosListaEmail + 'Logada ';
    end
    else
      FiltrosListaEmail := FiltrosListaEmail + 'Todas ';







    SqlCdsClienteRB.Close;

    sqlcdsclienterb.CommandText:= 'SELECT C1.CLI_CODIGO,C1.EMP_CODIGO ,C1.CLI_RAZAO,C1.CLI_PORTE,C1.CLI_ENDERE,C1.CLI_BAIRRO,C1.CLI_CEP,C1.CLI_CIDADE,'+
    'C1.CLI_UF,C1.CLI_FONE,C1.CLI_FAX,C1.CLI_CONTATO,C1.CLI_DTULTCOM, C1.CLI_INATIVO,C1.CLI_EMAIL,C1.CLI_HOME,C1.CLI_ATIVIDADE,C1.CLI_FUNCONT,'+
    'C1.REP_CODIGO,R1.REP_NOME,R1.REP_SITUACAO,C1.REG_CODIGO,G1.REG_DESCRI, CO.CC_NOME, CO.CC_EMAIL, CO.CC_CARGO, CO.CC_CELULAR, CO.CC_TELEFONE,'+
    'CO.CC_RAMAL, CO.CC_TIPO, C1.CLI_CLASSE_CLI_FOR, A1.RCL_ATIVIDADE, ORI.CORI_DESCRICAO FROM CLI0000 C1 JOIN REP0000 R1 on (C1.rep_codigo = R1.rep_codigo) '+
    ' JOIN CLI_CONTATO CO ON (C1.cli_codigo = CO.cli_codigo) '+
    ' LEFT JOIN REG0000 G1 on (C1.reg_codigo = G1.reg_codigo) LEFT JOIN CLI_ATV1 A1 on (C1.CLI_ATIVIDADE = A1.RCL_CODIGO)'+
    'LEFT JOIN CLIENTE_ORIGEM ORI on (C1.CORI_CODIGO = ORI.CORI_CODIGO)'+
    ' where C1.CLI_CODIGO <> ''''  '+ sClienteAtivoSql + 'ORDER BY C1.CLI_RAZAO';

    SqlCdsClienteRB.Open;
  frxListaContatos.ShowReport();




end;

procedure TFormGImpClie.frxClienteOrigemGetValue(const VarName: string; var Value: Variant);
begin
  inherited;
  if (VarName = 'Empresa') then
    Value := dbInicio.Empresa.RAZAO
  else
  if (VarName = 'DataIni') then
    Value := FormatDateTime('dd/mm/yyyy', DataInicio.date)
  else
  if (VarName = 'DataFim') then
  begin
    Value := FormatDateTime('dd/mm/yyyy',DataFim.Date);
  end;
end;

procedure TFormGImpClie.frxClienteProdutoVendidoBeginDoc(Sender: TObject);
begin
  inherited;
  TfrxPictureView(frxClienteProdutoVendido.FindObject('LogoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);
end;

procedure TFormGImpClie.frxClienteProdutoVendidoGetValue(const VarName: string; var Value: Variant);
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
  if (VarName  = 'FONE') then
     Value := DBInicio.Empresa.FONE
  else
  if (VarName  = 'EMAIL') then
     Value := DBInicio.Empresa.EMAIL
  else
  if (VarName  = 'CNPJ')  then
     Value := DBInicio.Empresa.CNPJ_CNPF
  else
  if (VarName  = 'INSCR') then
     Value := DBInicio.Empresa.INSC_EST
  else
  if (VarName  = 'PERIODO') then
     Value := iif(((EditDataI.Date = 0) OR (EditDataF.Date = 0) ), '', ' Periodo de ' + DateToStr(EditDataI.Date) + ' a ' + DateToStr(EditDataF.Date) ) ;

end;

procedure TFormGImpClie.frxGetValue(const VarName: String;
  var Value: Variant);
begin
   if (VarName = 'Empresa') then
      Value := dbInicio.Empresa.RAZAO
   else
   if (VarName = 'Filtro') then
      Value := '';
end;

procedure TFormGImpClie.frxListaContatosGetValue(const VarName: string; var Value: Variant);
begin
  inherited;
  if VarName = 'FONE' then
    Value := MascaraFone(SqlCdsClienteRBCC_TELEFONE.AsString);
  if VarName = 'CELULAR' then
    Value := MascaraFone (SqlCdsClienteRBCC_CELULAR.AsString);
  if (VarName = 'Empresa') then
    Value := dbInicio.Empresa.RAZAO;
  if(VarName = 'Filtro')then
  begin
    FiltrosListaEmail := 'Filtros: ' + FiltrosListaEmail;
    Value := FiltrosListaEmail;
//      Value := 'Filtros: Status dos Clientes: ';
//      if (rbStatusAtivo.Checked) then
//        Value:= Value + 'Ativos e '
//      else if (rbStatusInativo.Checked) then
//        Value:= Value + 'Inativos e '
//      else if (rbStatusTodos.Checked) then
//        Value:= Value + 'Todos e ';
//
//      Value := value + 'Tipo de contato: ';
//
//      if rbTipoColaborador.Checked then
//        Value := Value + 'Colaborador'
//      else if rbTipoContador.Checked then
//        Value := Value + 'Contador ou Consultor'
//      else if rbTipoDiretor.Checked then
//        Value := Value + 'Diretor ou Gestor'
//      else
//        Value := Value + 'Todos';
    end;


end;



procedure TFormGImpClie.RelClienteProdutoVendido;
var
  porte, inativo: string;
begin

  case RadGpTipo.ItemIndex of
    0: porte := 'T';
    1: porte := 'P';
    2: porte := 'M';
    3: porte := 'G';
  end;

  if (rbStatusAtivo.Checked) then inativo := 'A'
  else
  if (rbStatusInativo.Checked) then inativo := 'I'
  else
  if radRecuperacao.Checked then inativo := 'R'
  else inativo := '';

  qClienteProdutoVendido.Close;
  qClienteProdutoVendido.SQL.Text :=
    ' SELECT  ' +
    ' 	EXTRACT(year FROM ft.FAT_DTEMIS) || ''-'' || LPAD(EXTRACT(MONTH FROM ft.FAT_DTEMIS), 2,0) AS AnoMes,  ' +
    ' 	cl.CLI_CODIGO,	cl.EMP_CODIGO,	cl.CLI_RAZAO,	cl.CLI_PORTE,	cl.CLI_ENDERE,	cl.CLI_BAIRRO,	cl.CLI_CEP, ' +
    ' 	cl.CLI_CIDADE,	cl.CLI_UF,	cl.CLI_FONE,	cl.CLI_FAX,	cl.CLI_CONTATO,	cl.CLI_FUNCONT,	cl.CLI_DTINICIO, ' +
    ' 	cl.CLI_DTULTCOM,	cl.REP_CODIGO,	rp.REP_NOME,	ft.FAT_CODIGO,	ft.FAT_DTEMIS,	ni.PRD_REFER, ' +
    ' 	ni.PRD_DESCRI,	ni.NF_QTDE,	ni.NF_IPIALIQ,	ni.NF_PRECO ' +
    ' FROM	CLI0000 cl ' +
    ' LEFT JOIN FAT0000 ft ON	(ft.CLI_CODIGO = cl.CLI_CODIGO) ' +
    ' LEFT JOIN NF_IT01 ni ON	(ft.FAT_CODIGO = ni.NF_IT_NOTANUMER) ' +
    ' LEFT JOIN REP0000 rp ON	(cl.REP_CODIGO = rp.REP_CODIGO) ' +
    ' WHERE 1 = 1  ' +
    iif(sbCliente.idRetorno = '', '', ' AND cl.CLI_CODIGO = ' + QuotedStr(sbCliente.idRetorno)) +
    iif(CbRepre.ItemIndex = 0, '',  ' AND rp.REP_CODIGO = ' + QuotedStr(SqlCdsRepresentante.FieldByName('REP_CODIGO').AsString) ) +
    iif(EdtEstado.Text = '', '', ' AND cl.CLI_UF = ' + QuotedStr(EdtEstado.Text)) +
    iif(EdtCidade.Text = 'TODOS', '', ' AND cl.CLI_CIDADE = ' + QuotedStr(EdtCidade.Text)) +
    iif(EdtBairro.Text = 'TODOS', '', ' AND cl.CLI_BAIRRO = ' + QuotedStr(EdtBairro.Text)) +
    iif(porte = 'T', '', ' AND cl.CLI_PORTE = ' + QuotedStr(porte)) +
    iif(inativo = '', '', ' AND cl.CLI_INATIVO = ' + QuotedStr(inativo)) +
    iif(((EditDataI.Date = 0) OR (EditDataF.Date = 0) ), '', ' AND ft.FAT_DTEMIS BETWEEN ' + DateToSQL(EditDataI.Date) + ' AND ' + DateToSQL(EditDataF.Date) ) +
    '	AND cl.EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo) +
    ' ORDER BY cl.CLI_RAZAO, AnoMes '
	;
  if DBInicio.IsDesenvolvimento then
    Uteis. CopyToClipBoard(qClienteProdutoVendido.SQL.Text);
  qClienteProdutoVendido.Open;
  frxClienteProdutoVendido.ShowReport();
end;


procedure TFormGImpClie.sbClienteButtonClick(Sender: TObject);
var
  tcr: tFrmPesquisaClientes;
begin
  inherited;
  tcr:= tFrmPesquisaClientes.Create(self);
  try
      tcr.ShowModal;
      if tcr.modalresult = mrok then
         sbCliente.idRetorno := tcr.IDRetorno;
  finally
       FreeAndNil(tcr);
  end;
end;

end.






