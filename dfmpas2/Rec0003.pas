{*************************************************************
| Programa...: Rec0003  - Nome formulario = FormReceberGrid  
| Objetivo...: Lista de Contas à receber                     
| Analista...: Márcio Neu Pacheco                            
| Programador: Everson e Márcio                              
|                                                            
| Comentários:                                               
|                                                            
| Criação..........: Jul/99                                
| Ultima Alteração.: Ago/11
| Alterado por.....: Márcio                                  
|                                                            
**************************************************************}
unit Rec0003;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, RwSQLComando,
  Mask, StdCtrls, Buttons, Grids, DBGrids, RwFunc, Db, Clipbrd,  baseform,
  ExtCtrls,  rxToolEdit, Provider, SqlExpr, DBClient,
   rxCurrEdit, DBCtrls, ComboBoxRw, ImgList, FMTBCd, frxClass, frxDBSet,
  frxExportODF, frxExportXLS, frxExportPDF, Menus, Data.DBXFirebird,
  System.ImageList, SgDbSeachComboUnit, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, system.StrUtils, BaseDBForm, JvMenus, JvExControls, JvArrowButton, JvExMask, JvToolEdit, frxDesgn, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
   cxCheckBox, system.Variants, dxScreenTip, dxCustomHint, cxHint, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue,
  cxDataControllerConditionalFormattingRulesManagerDialog, frxExportBaseDialog;

type
  TFormContasRecParceGrid = class(TfrmBaseDB)
    CdsReceber: TClientDataSet;
    DsReceber: TDataSource;
    CdsReceberFAT_CODIGO: TStringField;
    CdsReceberFPC_DTEMIS: TSQLTimeStampField;
    CdsReceberFPC_VENCTO: TSQLTimeStampField;
    CdsReceberFPC_VLPARC: TFMTBCdField;
    CdsReceberCLI_CODIGO: TStringField;
    CdsReceberCLI_RAZAO: TStringField;
    CdsReceberFPC_PAGTO: TSQLTimeStampField;
    CdsReceberFPC_NUMER: TStringField;
    CdsReceberFPC_STATUS: TStringField;
    CdsReceberFPC_VLPAGO: TFMTBCdField;
    CdsReceberFPC_PREVISAO: TStringField;
    CdsReceberFAT_REGISTRO: TIntegerField;
    CdsReceberFPC_SITPAG: TStringField;
    CdsReceberEMP_CODIGO: TStringField;
    CdsReceberFPC_COBNUM: TStringField;
    Panel1: TPanel;
    Label5: TLabel;
    CurrTotalReceber: TCurrencyEdit;
    Label6: TLabel;
    CurrTotalRecebido: TCurrencyEdit;
    Label7: TLabel;
    CurrFaltaReceber: TCurrencyEdit;
    CdsReceberFPC_EXCLUSAO: TStringField;
    CdsReceberPED_CODIGO: TStringField;
    CdsReceberSELECAO_FAT: TBooleanField;
    qReceber: TSQLQuery;
    DSPReceber: TDataSetProvider;
    CdsReceberNF_NUM_NFE: TIntegerField;
    CdsReceberFPC_DESCTO: TFMTBCdField;
    CdsReceberFPC_JUROS: TFMTBCdField;
    CdsReceberFPC_MULTA: TFMTBCdField;
    CdsReceberCCPendente: TFloatField;
    ImageList1: TImageList;
    Label3: TLabel;
    CurrTotalDesconto: TCurrencyEdit;
    Label8: TLabel;
    CurrTotalJuros: TCurrencyEdit;
    GroupBox4: TGroupBox;
    Label9: TLabel;
    CurrTotalQuantidade: TCurrencyEdit;
    frxReportReceber: TfrxReport;
    frxDBDatasetReceber: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    frxODSExport1: TfrxODSExport;
    PMMarcar: TPopupMenu;
    SelecionarTodas1: TMenuItem;
    DesmarcarTodas1: TMenuItem;
    ImageListaSelect: TImageList;
    GroupBox6: TGroupBox;
    DBEdit2: TDBEdit;
    CdsReceberOBSERVACAO: TStringField;
    PaninfCli: TPanel;
    Label4: TLabel;
    Label20: TLabel;
    Label50: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label36: TLabel;
    DBText4: TDBText;
    Lbl_Pessoa: TLabel;
    DBText6: TDBText;
    LBL_RAZAO: TLabel;
    CdsReceberBAN_APELIDO: TStringField;
    CdsReceberCCT_DESCRI: TStringField;
    grpContaFinanceira: TGroupBox;
    dbedtContaFinanceira: TDBEdit;
    CdsReceberCLI_CGC: TStringField;
    DsConsultaClie: TDataSource;
    CdsConsultaClie: TClientDataSet;
    CdsConsultaClieREP_CODIGO: TStringField;
    CdsConsultaClieTRP_CODIGO: TStringField;
    CdsConsultaClieCLI_RAZAO: TStringField;
    CdsConsultaClieCLI_CODIGO: TStringField;
    CdsConsultaClieCLI_INATIVO: TStringField;
    CdsConsultaClieCLI_MOTIVO: TStringField;
    CdsConsultaClieCLI_DTINATIVO: TSQLTimeStampField;
    CdsConsultaClieCLI_CGC: TStringField;
    CdsConsultaClieCLI_UF: TStringField;
    CdsConsultaClieCLI_CIDADE: TStringField;
    CdsConsultaClieCLI_ENDERE: TStringField;
    CdsConsultaCliePCL_CODIGO: TStringField;
    CdsConsultaClieCLI_DESC1: TFMTBCdField;
    CdsConsultaClieCLI_DESC2: TFMTBCdField;
    DspConsultaClie: TDataSetProvider;
    SqlCdsConsultaClie: TSQLQuery;
    pnFiltro: TPanel;
    GroupBox1: TGroupBox;
    chkMultiEmpresa: TCheckBox;
    grp1: TGroupBox;
    cbbOutros: TComboBox;
    edtOutros: TEdit;
    BitPesquisar: TBitBtn;
    GbPesquisaData: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    cbbTipoData: TComboBox;
    GbCliente: TGroupBox;
    BitBaixar: TBitBtn;
    GroupBox2: TGroupBox;
    ChkPrevisao: TCheckBox;
    CheckVencidas: TCheckBox;
    GroupBox3: TGroupBox;
    Image1: TImage;
    Label38: TLabel;
    Image4: TImage;
    Label41: TLabel;
    Image2: TImage;
    Label39: TLabel;
    Image3: TImage;
    Label40: TLabel;
    Image5: TImage;
    Label42: TLabel;
    Bit_Sair: TBitBtn;
    GroupBox5: TGroupBox;
    CbSituacao: TComboBox;
    GroupBox7: TGroupBox;
    LblProjCx: TLabel;
    Label19: TLabel;
    CbContaFinanceira: TComboBoxRw;
    CbCentroCusto: TComboBoxRw;
    BitRecebimento: TBitBtn;
    CdsReceberNFSE: TStringField;
    edFPagto: TSgDbSearchCombo;
    Label10: TLabel;
    Label11: TLabel;
    CbBancos: TComboBoxRw;
    CdsReceberFPG_DESCRICAO: TStringField;
    qFPagto: TSQLQuery;
    CdsReceberFPC_STATUS_REMESSA: TStringField;
    chkRemessa: TCheckBox;
    CdsReceberFPC_NPARCELAS: TSmallintField;
    Image6: TImage;
    Label12: TLabel;
    btnImprimir: TJvArrowButton;
    frxReceberpoForma: TfrxReport;
    PopupMenu1: TPopupMenu;
    miRecebimentos: TMenuItem;
    mireceberagrupado: TMenuItem;
    ReceberagrupadoporBanco1: TMenuItem;
    frxReceberporBanco: TfrxReport;
    RxDataFinal: TJvDateEdit;
    RxDataInicial: TJvDateEdit;
    btnCadastro: TButton;
    ReceberagrupadoporClienteBanco1: TMenuItem;
    frxReceberporBancoCliente: TfrxReport;
    frxDesigner1: TfrxDesigner;
    btnTransferir: TBitBtn;
    CdsReceberObstransf: TStringField;
    CdsReceberFPC_IMPDUP: TStringField;
    CdsReceberCLI_UND_CONSUMIDORA: TIntegerField;
    chkExcluidos: TCheckBox;
    CdsReceberSELECAO_NFSE: TBooleanField;
    CdsReceberRPS_CODIGO: TIntegerField;
    btnServico: TBitBtn;
    CdsReceberFPC_VALR_SERVICOS: TFMTBCDField;
    CdsReceberFPC_VL_RET: TFMTBCDField;
    CdsReceberFAT_CID_CODIGO_PRESTACAO: TIntegerField;
    CdsReceberFAT_NUMSERIE: TStringField;
    CdsReceberFAT_IRPJ_PERC: TFMTBCDField;
    CdsReceberFAT_PIS_PERC: TFMTBCDField;
    CdsReceberFAT_COFINS_PERC: TFMTBCDField;
    CdsReceberFAT_INSS_PERC: TFMTBCDField;
    CdsReceberFAT_CONTSOCIAL_PERC: TFMTBCDField;
    CdsReceberFAT_ISS_PERC: TFMTBCDField;
    CdsReceberFRE_DATA_RECEBIMENTO: TDateField;
    cxgrd1: TcxGrid;
    cxgrdReceber: TcxGridDBTableView;
    cxgrdReceberSELECAO_FAT: TcxGridDBColumn;
    cxgrdReceberFPC_SITPAG: TcxGridDBColumn;
    cxgrdReceberEMP_CODIGO: TcxGridDBColumn;
    cxgrdReceberNF_NUM_NFE: TcxGridDBColumn;
    cxgrdReceberNFSE: TcxGridDBColumn;
    cxgrdReceberSELECAO_NFSE: TcxGridDBColumn;
    cxgrdReceberFAT_CODIGO: TcxGridDBColumn;
    cxgrdReceberFPC_NUMER: TcxGridDBColumn;
    cxgrdReceberBAN_APELIDO: TcxGridDBColumn;
    cxgrdReceberFPC_DTEMIS: TcxGridDBColumn;
    cxgrdReceberPED_CODIGO: TcxGridDBColumn;
    cxgrdReceberCLI_RAZAO: TcxGridDBColumn;
    cxgrdReceberFPC_VENCTO: TcxGridDBColumn;
    cxgrdReceberFPC_VLPARC: TcxGridDBColumn;
    cxgrdReceberFPC_PAGTO: TcxGridDBColumn;
    cxgrdReceberFPC_VLPAGO: TcxGridDBColumn;
    cxgrdReceberFPG_DESCRICAO: TcxGridDBColumn;
    cxgrdReceberCCPendente: TcxGridDBColumn;
    cxgrdReceberFPC_STATUS_REMESSA: TcxGridDBColumn;
    cxgrdReceberCLI_UND_CONSUMIDORA: TcxGridDBColumn;
    cxgrdReceberFAT_REGISTRO: TcxGridDBColumn;
    cxgrdReceberCLI_CODIGO: TcxGridDBColumn;
    cxgrdReceberFPC_STATUS: TcxGridDBColumn;
    cxgrdReceberFPC_PREVISAO: TcxGridDBColumn;
    cxgrdReceberFPC_COBNUM: TcxGridDBColumn;
    cxgrdReceberFPC_EXCLUSAO: TcxGridDBColumn;
    cxgrdReceberFPC_DESCTO: TcxGridDBColumn;
    cxgrdReceberFPC_JUROS: TcxGridDBColumn;
    cxgrdReceberFPC_MULTA: TcxGridDBColumn;
    cxgrdReceberOBSERVACAO: TcxGridDBColumn;
    cxgrdReceberCCT_DESCRI: TcxGridDBColumn;
    cxgrdReceberCLI_CGC: TcxGridDBColumn;
    cxgrdReceberFPC_NPARCELAS: TcxGridDBColumn;
    cxgrdReceberObstransf: TcxGridDBColumn;
    cxgrdReceberFPC_IMPDUP: TcxGridDBColumn;
    cxgrdReceberRPS_CODIGO: TcxGridDBColumn;
    cxgrdReceberFPC_VL_RET: TcxGridDBColumn;
    cxgrdReceberFPC_VALR_SERVICOS: TcxGridDBColumn;
    cxgrdReceberFAT_CID_CODIGO_PRESTACAO: TcxGridDBColumn;
    cxgrdReceberFAT_NUMSERIE: TcxGridDBColumn;
    cxgrdReceberFAT_IRPJ_PERC: TcxGridDBColumn;
    cxgrdReceberFAT_PIS_PERC: TcxGridDBColumn;
    cxgrdReceberFAT_COFINS_PERC: TcxGridDBColumn;
    cxgrdReceberFAT_INSS_PERC: TcxGridDBColumn;
    cxgrdReceberFAT_ISS_PERC: TcxGridDBColumn;
    cxgrdReceberFAT_CONTSOCIAL_PERC: TcxGridDBColumn;
    cxgrdReceberFRE_DATA_RECEBIMENTO: TcxGridDBColumn;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxHintStyleController1: TcxHintStyleController;
    cdsTotalizador: TClientDataSet;
    dspTotalizador: TDataSetProvider;
    grpNfSE: TGroupBox;
    CHKSemRPS: TCheckBox;
    chkNFSE: TCheckBox;
    chkPendTrans: TCheckBox;
    Label13: TLabel;
    pesqVendedor: TSgDbSearchCombo;
    CdsRecebervendedor: TStringField;
    cxgrdRecebervendedor: TcxGridDBColumn;
    cbClientes1: TSgDbSearchCombo;
    qCli: TSQLQuery;
    ReceberagrupadoporClienteFatura1: TMenuItem;
    frxClienteFatura: TfrxReport;
    BitBtn1: TBitBtn;
    CdsReceberOPV_CODIGO: TIntegerField;
    CdsReceberFAT_COMIS1: TFMTBCDField;
    CdsReceberFAT_OBS: TStringField;
    CdsReceberFAT_OPERACAO: TStringField;
    CdsReceberFAT_BASESUB: TFMTBCDField;
    CdsReceberFAT_ICMSRET: TFMTBCDField;
    CdsReceberFAT_DESP_ACES: TFMTBCDField;
    CdsReceberFAT_BASEICMS: TFMTBCDField;
    CdsReceberFAT_VL_IPI: TFMTBCDField;
    CdsReceberFAT_ALIQUOTA: TFMTBCDField;
    CdsReceberFAT_OBSLIVRO: TStringField;
    CdsReceberFAT_OPERUF: TStringField;
    CdsReceberFAT_LIVRO: TStringField;
    CdsReceberFAT_VL_RET: TFMTBCDField;
    CdsReceberFAT_IRPJ_RET: TFMTBCDField;
    CdsReceberFAT_PIS_RET: TFMTBCDField;
    CdsReceberFAT_COFINS_RET: TFMTBCDField;
    CdsReceberFAT_INSS_RET: TFMTBCDField;
    CdsReceberFAT_CONTSOCIAL_RET: TFMTBCDField;
    CdsReceberFAT_BASE_ISS: TFMTBCDField;
    CdsReceberFAT_BASE_INSS: TFMTBCDField;
    CdsReceberFAT_ISS_RET: TFMTBCDField;
    CdsReceberCCT_NOVO: TStringField;
    CdsReceberOPE_CODIGO: TStringField;
    CdsReceberFAT_REEMBOLSO: TStringField;
    CdsReceberFAT_LOTE: TStringField;
    CdsReceberFAT_COMISSAO_VEN: TFMTBCDField;
    CdsReceberREP_CODIGO_INTERNO: TStringField;
    CdsReceberREP_CODIGO: TStringField;
    chkAgrupados: TCheckBox;
    ExportarparaCSV1: TMenuItem;
    dsExportaExcel: TDataSource;
    cdsExportaExcel: TClientDataSet;
    CdsReceberFAT_VLFAT: TFMTBCDField;
    CdsReceberCONTA_BANCARIA: TStringField;
    CdsReceberCCT_DESCRICAO: TStringField;
    CdsReceberPCX_CODIGO: TStringField;
    cdsExportaExcelFAT_CODIGO: TStringField;
    cdsExportaExcelFAT_NUMSERIE: TStringField;
    cdsExportaExcelFPC_NUMER: TStringField;
    cdsExportaExcelFPC_NPARCELAS: TIntegerField;
    cdsExportaExcelFPC_VLPARC: TFMTBCDField;
    cdsExportaExcelFPC_VLPAGO: TFMTBCDField;
    cdsExportaExcelFAT_VLFAT: TFMTBCDField;
    cdsExportaExcelCLI_CGC: TStringField;
    cdsExportaExcelCLI_RAZAO: TStringField;
    cdsExportaExcelPED_CODIGO: TStringField;
    cdsExportaExcelNF_NUM_NFE: TIntegerField;
    cdsExportaExcelCONTA_BANCARIA: TStringField;
    cdsExportaExcelCCT_DESCRI: TStringField;
    cdsExportaExcelFPG_DESCRICAO: TStringField;
    cdsExportaExcelPCX_DESCRI: TStringField;
    cdsExportaExcelFPC_DTEMIS: TSQLTimeStampField;
    cdsExportaExcelFPC_PAGTO: TSQLTimeStampField;
    cdsExportaExcelFPC_VENCTO: TSQLTimeStampField;
    cdsExportaExcelVENDEDOR: TStringField;
    cdsExportaExcelEMP_CODIGO: TStringField;
    CdsConsultaClieCLI_PESSOA: TStringField;
    CdsReceberCLI_PESSOA: TStringField;
    CdsReceberFPC_ANTECIPACAO_CONCLUIDA: TStringField;
    procedure FormShow(Sender: tObject);
    procedure BaixarnaConsulta;
    procedure Bit_SairClick(Sender: tObject);
    procedure BitPesquisarClick(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure BitBaixarClick(Sender: tObject);
    procedure ChkPrevisaoClick(Sender: tObject);
    procedure CheckVencidasClick(Sender: tObject);
    procedure CdsReceberCalcFields(DataSet: TDataSet);
    procedure frxReportReceberGetValue(const VarName: String;
      var Value: Variant);
    procedure SelecionarTodas1Click(Sender: tObject);
    procedure DesmarcarTodas1Click(Sender: tObject);
    procedure BitRecebimentoClick(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure CbClientes1_2Select(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edFPagtoSelect(Sender: TObject);
    procedure CbBancosSelect(Sender: TObject);
    procedure CbCentroCustoSelect(Sender: TObject);
    procedure CbContaFinanceiraSelect(Sender: TObject);
    procedure edtOutrosKeyPress(Sender: TObject; var Key: Char);
    procedure chkRemessaClick(Sender: TObject);
    procedure CdsReceberFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure CdsReceberFPC_STATUS_REMESSAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure CdsReceberFPC_NUMERGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure CbSituacaoChange(Sender: TObject);
    procedure CdsReceberSELECAO_FATGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer; var Resize: Boolean);
    procedure btnImprimirClick(Sender: TObject);
    procedure MIRecebimentosClick(Sender: TObject);
    procedure Recebimentos1Click(Sender: TObject);
    procedure mireceberagrupadoClick(Sender: TObject);
    procedure ReceberagrupadoporBanco1Click(Sender: TObject);
    procedure btnCadastroClick(Sender: TObject);
    procedure ReceberagrupadoporClienteBanco1Click(Sender: TObject);
    procedure miReceberPersonalizadoClick(Sender: TObject);
    procedure btnTransferirClick(Sender: TObject);
    procedure chkExcluidosClick(Sender: TObject);
    procedure CHKSemRPSClick(Sender: TObject);
    procedure btnServicoClick(Sender: TObject);
    procedure cxgrdReceberEditing(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure CdsReceberFPC_PAGTOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cxgrdReceberFPC_SITPAGCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxgrd1Enter(Sender: TObject);
    procedure cxgrd1Exit(Sender: TObject);
    procedure cxgrdReceberDblClick(Sender: TObject);
    procedure cxgrdReceberKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxgrdReceberMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure cxgrdReceberFPC_SITPAGGetCellHint(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
      var AHintText: TCaption; var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure cxgrdReceberDataControllerFilterChanged(Sender: TObject);
    procedure cxgrdReceberDataControllerFilterGetValueList(Sender: TcxFilterCriteria; AItemIndex: Integer; AValueList: TcxDataFilterValueList);
    procedure pesqVendedorChange(Sender: TObject);
    procedure cbClientes1ButtonClick(Sender: TObject);
    procedure cbClientes1Select(Sender: TObject);
    procedure ReceberagrupadoporClienteFatura1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ExportarparaCSV1Click(Sender: TObject);
  private
    { Private declarations }

     sFiltro : String;
    Procedure PreencheCombo;

    procedure BuscarFatu;
    procedure Somar_Totais;
    procedure Limpa_Totais;
    procedure MascaraCNPJ_INFCLIE;
    procedure Seleciona;
    procedure ChamaTelaBaixa;
    procedure ChamaTelaAgrupamento;
    procedure MarcaDesmarcaTodas(status:Boolean);
    procedure Busca_Dados_Cliente(const sCodClie: String);
  public
    procedure BotoesAcesso;

  end;

var
  FormContasRecParceGrid: TFormContasRecParceGrid;

implementation

uses uContasReceberAgrupa, PesquisaClientesForm, Uteis, Rec0001, Rec0002, DataCad,
     fat0009, fat0010, iniciodb, utransftitulos, Nfs0004, nfse_principal;

{$R *.DFM}

procedure TFormContasRecParceGrid.FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer; var Resize: Boolean);
begin
  inherited;
  if self.WindowState <> wsMaximized then
    NewWidth := 1269;
end;

procedure TFormContasRecParceGrid.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SalvaEstadoPesquisaProc( tComponent(pnFiltro) ) ;
  inherited;
end;

procedure TFormContasRecParceGrid.FormCreate(Sender: tObject);
begin
  inherited;
  RxDataInicial.Date:= Date - 30;
  CbContaFinanceira.CodigoEmpresa := StrToInt(dbInicio.EMPRESA.EMP_CODIGO);
  CbCentroCusto.CodigoEmpresa := StrToInt(dbInicio.EMPRESA.EMP_CODIGO);
  self.Constraints.MaxHeight:=0;
  self.Constraints.MaxWidth:=0;
  SELF.Constraints.MinWidth := 1269;
  self.WindowState := wsMaximized;
  btnTransferir.Enabled := DBInicio.Empresa.bUSP_TRANSFERENCIATITULOS;

  btnServico.Visible := DBInicio.NFSE.ATIVA_NFSE;
  CHKSemRPS.Visible := DBInicio.NFSE.ATIVA_NFSE;
  chkNFSE.Visible := DBInicio.NFSE.ATIVA_NFSE;
  chkPendTrans.Visible := DBInicio.NFSE.ATIVA_NFSE;
  cxgrdReceberSELECAO_NFSE.Visible := DBInicio.NFSE.ATIVA_NFSE;
  cxgrdReceberNFSE.Visible := DBInicio.NFSE.ATIVA_NFSE;
  grpNfSE.Visible   := DBInicio.NFSE.ATIVA_NFSE;
end;

procedure TFormContasRecParceGrid.FormShow(Sender: tObject);
var i : integer;
begin
  inherited;
  PreencheCombo;
  cxgrdReceberCLI_UND_CONSUMIDORA.Visible := DBInicio.Empresa.wPmt_TelaPedidoDoacao;
  CarregaEstadoPesquisa( tComponent(pnFiltro) ) ;
  BuscarFatu;
  BotoesAcesso;
  CbClientes1.Enabled := true;
  CbContaFinanceira.Enabled := true;
  CbSituacao.Enabled := true;
  cbbOutros.Enabled := true;
  edtOutros.Enabled := true;
  CbCentroCusto.Enabled := true;
  cbbTipoData.Enabled := true;
  if not DBInicio.NFSE.ATIVA_NFSE then
  begin
    cxgrdReceberSELECAO_NFSE.Visible := False;
    cxgrdReceberNFSE.Visible := False;
  end;
  pesqVendedor.WherePersonalizado := ' WHERE REP_SITUACAO = ''A'' ' ;


end;

procedure TFormContasRecParceGrid.BaixarnaConsulta;
begin
    try
      if (CdsReceberFPC_SITPAG.AsString = 'L') then
         begin
             uteis.aviso('Titulo encontra-se Liquidado !');
             cxgrd1.SetFocus;

         end
      else
      if (CdsReceberFPC_EXCLUSAO.AsString = 'S') then
         begin
             uteis.aviso('Impossível baixar Fatura excluída !');
             cxgrd1.SetFocus;
         end
      else
         begin
             FormContasRecParcelas := TFormContasRecParcelas.Create(Application);
             try
               FormContasRecParcelas.EdCliente.Text := CdsReceberCLI_RAZAO.AsString;
               FormContasRecParcelas.ShowModal;
             finally
                    FreeAndNil(FormContasRecParcelas);
                    CdsReceber.Refresh;
                    cxgrd1.SetFocus;
             end;
         end;
    except on E:EdataBaseError do
       uteis.erro  (pchar('Erro ao Abrir a Tabela !'+e.message));
    end;
end;

procedure TFormContasRecParceGrid.PreencheCombo;
begin
     // CbClientes1.CodigoEmpresa := StrToInt(dbInicio.EMPRESA.EMP_CODIGO);
end;

procedure TFormContasRecParceGrid.ReceberagrupadoporBanco1Click(Sender: TObject);
Var existe : boolean;
 complFiltro: string;
begin
  inherited;

   try
     CdsReceber.IndexDefs.Find('BAN_APELIDO');
     existe := true;
   except
     existe := false;
   end;
   if not existe then
   with CdsReceber.IndexDefs.AddIndexDef do
   begin
        Name := 'BAN_APELIDO';
        Fields := 'BAN_APELIDO';
        Options := [];
   end;
  try
     if cxgrdReceber.DataController.Filter.FilterText<>'' then
    begin
     complFiltro := cxgrdReceber.DataController.Filter.FilterText;
     sFiltro := RxDataInicial.Text +' a ' + RxDataFinal.Text +' e filtro personalizado: ' +cxgrdReceber.DataController.Filter.FilterCaption;
     CdsReceber.Filter := 'FPC_EXCLUSAO <> ''S'' and ' +complFiltro ;
    end
    else
    begin
      CdsReceber.Filter := 'FPC_EXCLUSAO <> ''S''';
      sFiltro := RxDataInicial.Text +' a ' + RxDataFinal.Text;
    end;

    CdsReceber.Filtered := false;
    CdsReceber.Filtered := True;
    CdsReceber.DisableControls;
    while not (CdsReceber.GetNextPacket = 0) do
      CdsReceber.GetNextPacket;
     CdsReceber.IndexName := 'BAN_APELIDO';
     if (CdsReceber.IsEmpty) then
        begin
           uteis.aviso('Não existe parcelas para serem impressas');
        end
     else
        frxReceberporBanco.ShowReport();
     CdsReceber.Filtered := false;
  finally
    CdsReceber.IndexName := '';
    CdsReceber.EnableControls;
  end;
end;

procedure TFormContasRecParceGrid.ReceberagrupadoporClienteBanco1Click(Sender: TObject);
Var existe : boolean;
complFiltro :string;
begin
  inherited;

   try
     CdsReceber.IndexDefs.Find('BAN_APELIDO');
     existe := true;
   except
     existe := false;
   end;
   if not existe then
   begin
     with CdsReceber.IndexDefs.AddIndexDef do
     begin
          Name := 'BAN_APELIDO';
          Fields := 'BAN_APELIDO;CLI_CODIGO';
          Options := [];
     end;
   end;
  try
     if cxgrdReceber.DataController.Filter.FilterText<>'' then
    begin
     complFiltro := cxgrdReceber.DataController.Filter.FilterText;
     sFiltro := RxDataInicial.Text +' a ' + RxDataFinal.Text +' e filtro personalizado: ' +cxgrdReceber.DataController.Filter.FilterCaption;
     CdsReceber.Filter := 'FPC_EXCLUSAO <> ''S'' and ' +complFiltro ;
    end
    else
    begin
      CdsReceber.Filter := 'FPC_EXCLUSAO <> ''S''';
      sFiltro := RxDataInicial.Text +' a ' + RxDataFinal.Text;
    end;
    CdsReceber.Filtered := false;

    CdsReceber.Filtered := True;
    CdsReceber.DisableControls;
    while not (CdsReceber.GetNextPacket = 0) do
      CdsReceber.GetNextPacket;
     CdsReceber.IndexName := 'BAN_APELIDO';
     if (CdsReceber.IsEmpty) then
        begin
           uteis.aviso('Não existe parcelas para serem impressas');
        end
     else
        frxReceberporBancoCliente.ShowReport();
     CdsReceber.Filtered := false;
  finally
    CdsReceber.IndexName := '';
    CdsReceber.EnableControls;
  end;
end;

procedure TFormContasRecParceGrid.ReceberagrupadoporClienteFatura1Click(Sender: TObject);
Var existe : boolean;
  complFiltro :string;
begin
  inherited;
   try
     CdsReceber.IndexDefs.Find('RECEBER');
     existe := true;
   except
     existe := false;
   end;
   if not existe then
   begin
     with CdsReceber.IndexDefs.AddIndexDef do
     begin
          Name := 'RECEBER';
          Fields := 'CLI_RAZAO;FPC_VENCTO';
          Options := [];
     end;
   end;
   try
    if cxgrdReceber.DataController.Filter.FilterText<>'' then
    begin
     complFiltro := cxgrdReceber.DataController.Filter.FilterText;
     sFiltro := RxDataInicial.Text +' a ' + RxDataFinal.Text +' e filtro personalizado: ' +cxgrdReceber.DataController.Filter.FilterCaption;
     CdsReceber.Filter := 'FPC_EXCLUSAO <> ''S'' and ' +complFiltro ;
    end
    else
    begin
      CdsReceber.Filter := 'FPC_EXCLUSAO <> ''S''';
      sFiltro := cbbTipoData.Text + ' - ' +  RxDataInicial.Text +' a ' + RxDataFinal.Text;
      if cbClientes1.Text <> '' then
        sFiltro := sFiltro + ' | Cliente: ' + cbClientes1.Text;
      if cbContaFinanceira.Text <> '' then
        sFiltro := sFiltro + ' | Conta Financeira: ' + cbContaFinanceira.Text;
      if cbSituacao.Text <> '' then
        sFiltro := sFiltro + ' | Situação: ' + cbSituacao.Text;
      if cbbOutros.Text <> '' then
        sFiltro := sFiltro + ' | ' + cbbOutros.Text + ': ' + edtOutros.Text;
      if cbCentroCusto.Text <> '' then
        sFiltro := sFiltro + ' | Centro de Custo: ' + cbContaFinanceira.Text;
      if edFPagto.Text <> '' then
        sFiltro := sFiltro + ' | Forma de Pagamento: ' + edFPagto.Text;
      if cbBancos.Text <> '' then
        sFiltro := sFiltro + ' | Banco: ' + cbBancos.Text;
      if pesqVendedor.Text <> '' then
        sFiltro := sFiltro + ' | Vendedor: ' + pesqVendedor.Text;
    end;

    CdsReceber.Filtered := false;

    CdsReceber.Filtered := True;
    CdsReceber.DisableControls;
    while not (CdsReceber.GetNextPacket = 0) do
      CdsReceber.GetNextPacket;
     CdsReceber.IndexName :=  'RECEBER';
     if (CdsReceber.IsEmpty) then
        begin
           uteis.aviso('Não existe parcelas para serem impressas');
        end
     else
        frxClienteFatura.ShowReport();
    CdsReceber.Filtered := false;
  finally
    CdsReceber.IndexName := '';
    CdsReceber.EnableControls;
  end;
end;

procedure TFormContasRecParceGrid.Recebimentos1Click(Sender: TObject);
Var existe : boolean;
  complFiltro :string;
begin
  inherited;
   try
     CdsReceber.IndexDefs.Find('RECEBER');
     existe := true;
   except
     existe := false;
   end;
   if not existe then
   begin
     with CdsReceber.IndexDefs.AddIndexDef do
     begin
          Name := 'RECEBER';
          Fields := 'FPC_VENCTO;CLI_RAZAO';
          Options := [];
     end;
   end;
 try
     if cxgrdReceber.DataController.Filter.FilterText<>'' then
    begin
     complFiltro := cxgrdReceber.DataController.Filter.FilterText;
     sFiltro := RxDataInicial.Text +' a ' + RxDataFinal.Text +' e filtro personalizado: ' +cxgrdReceber.DataController.Filter.FilterCaption;
     CdsReceber.Filter := 'FPC_EXCLUSAO <> ''S'' and ' +complFiltro ;
    end
    else
    begin
      CdsReceber.Filter := 'FPC_EXCLUSAO <> ''S''';
      sFiltro := RxDataInicial.Text +' a ' + RxDataFinal.Text;
    end;

    CdsReceber.Filtered := false;

    CdsReceber.Filtered := True;
    CdsReceber.DisableControls;
    while not (CdsReceber.GetNextPacket = 0) do
      CdsReceber.GetNextPacket;
     CdsReceber.IndexName :=  'RECEBER';
     if (CdsReceber.IsEmpty) then
        begin
           uteis.aviso('Não existe parcelas para serem impressas');
        end
     else
        frxReportReceber.ShowReport();
    CdsReceber.Filtered := false;
  finally
    CdsReceber.IndexName := '';
    CdsReceber.EnableControls;
  end;
end;


procedure TFormContasRecParceGrid.Bit_SairClick(Sender: tObject);
begin
     close;
end;

procedure TFormContasRecParceGrid.BotoesAcesso;
begin
     if assigned(FormContasRecParceGrid) then
     begin
       btnImprimir.Enabled := Uteis.AcessoUsuario('FinanceiroContas à Receber',DBInicio.Usuario.CODIGO,FormContasRecParceGrid).Relatorio;
       // miReceberPersonalizado.Enabled := DBInicio.Usuario.USERNAME = 'NOVI';
     end;
end;

procedure TFormContasRecParceGrid.BitPesquisarClick(Sender: tObject);
begin
  BuscarFatu;
end;

procedure TFormContasRecParceGrid.BuscarFatu;
var wSeleciona, wOrdem : String ;
    flgWhere: Boolean;
///
   Procedure SqlAdd( stt: string ) ;
   begin
        if stt <> '' then
        begin
           if flgWhere then
              qReceber.Sql.add(' where '+stt )
           Else
              qReceber.Sql.add(' and '+stt );
           flgWhere := False;
        end;
   end;
///
begin
      flgWhere := True ;
      CdsReceber.DisableControls;

      try

         CdsReceber.Close;
         CdsReceber.Filtered := False;


         qReceber.Sql.Clear ;
         qReceber.Sql.add( 'SELECT (CCT.CCT_CODIGO||''-''||CCT.CCT_DESCRI) as CCT_DESCRI,');
         qReceber.Sql.add( '       cct.CCT_DESCRI AS CCT_DESCRICAO,');
         qReceber.Sql.add( '       b1.ban_apelido,');
         qReceber.Sql.add( '       BAN_CONTA || (CASE WHEN BAN_DIGCONTA = '''' THEN '''' ELSE ''-'' || BAN_DIGCONTA END ) AS CONTA_BANCARIA, ');
         qReceber.Sql.add( '       F1.FAT_REGISTRO,');
         qReceber.Sql.add( '       F1.FAT_CODIGO,');
         qReceber.Sql.add( '       F1.FPC_COBNUM,');
         qReceber.Sql.add( '       F1.FPC_DTEMIS,');
         qReceber.Sql.add( '       F1.FPC_VENCTO,');
         qReceber.Sql.add( '       F1.FPC_VLPARC,');
         qReceber.Sql.add( '       F1.FPC_VL_RET,');
         qReceber.Sql.add( '       F1.FPC_VALR_SERVICOS,');
         qReceber.Sql.add( '       F1.FPC_VLPAGO,');
         qReceber.Sql.add( '       F1.CLI_CODIGO,');
         qReceber.Sql.add( '       C1.CLI_RAZAO,');
         qReceber.Sql.add( '       F1.FPC_PAGTO,');
         qReceber.Sql.add( '       F1.FPC_NUMER,');
         qReceber.Sql.add( '       F1.FPC_SITPAG,');
         qReceber.Sql.add( '       F1.FPC_STATUS, F1.FPC_ANTECIPACAO_CONCLUIDA, ');
         qReceber.Sql.add( '       F1.FPC_PREVISAO,');
         qReceber.Sql.add( '       CASE WHEN (F1.FPC_EXCLUSAO = ''S'') THEN ''REGISTRO EXCLUÍDO: ''||F1.FPC_MOTIVO_EXCLUSAO ELSE t1.FAT_OBS END AS OBSERVACAO,');
         qReceber.Sql.add( '       F1.FPC_DESCTO,');
         qReceber.Sql.add( '       F1.FPC_JUROS,');
         qReceber.Sql.add( '       F1.FPC_MULTA,');
         qReceber.Sql.add( '       F1.FPC_EXCLUSAO,');
         qReceber.Sql.add( '       F1.EMP_CODIGO,');
         qReceber.Sql.add( '       T1.PED_CODIGO,');
         qReceber.Sql.add( '       T1.NF_NUM_NFE,');
         qReceber.Sql.add( '       T1.FAT_VLFAT,');
         qReceber.Sql.add( '       cast(f1.FPC_PAGTO as DATE) as FRE_DATA_RECEBIMENTO,');
         qReceber.SQL.Add( '      cast(nfse_num_danfse as varchar(20)) AS  NFSE, ');
         qReceber.SQL.Add( '      RPS_CODIGO, ');
         qReceber.Sql.add('       FPG_DESCRICAO,');
         qReceber.Sql.add('       C1.CLI_CGC, ');
         qReceber.Sql.add('       C1.CLI_PESSOA, ');
         qReceber.Sql.add('       T1.OPV_CODIGO, ');
         qReceber.Sql.add('       T1.FAT_COMIS1, ');
         qReceber.Sql.add('       T1.FAT_OBS, ');
         qReceber.Sql.add('       T1.FAT_OPERACAO, ');
         qReceber.Sql.add('       T1.FAT_BASESUB, ');
         qReceber.Sql.add('       T1.FAT_ICMSRET, ');
         qReceber.Sql.add('       T1.FAT_DESP_ACES, ');
         qReceber.Sql.add('       T1.FAT_BASEICMS, ');
         qReceber.Sql.add('       T1.FAT_VL_IPI, ');
         qReceber.Sql.add('       T1.FAT_ALIQUOTA, ');
         qReceber.Sql.add('       T1.FAT_OBSLIVRO, ');
         qReceber.Sql.add('       T1.FAT_OPERUF, ');
         qReceber.Sql.add('       T1.FAT_LIVRO, ');
         qReceber.Sql.add('       T1.FAT_VL_RET, ');
         qReceber.Sql.add('       T1.FAT_IRPJ_RET, ');
         qReceber.Sql.add('       T1.FAT_PIS_RET, ');
         qReceber.Sql.add('       T1.FAT_COFINS_RET, ');
         qReceber.Sql.add('       T1.FAT_INSS_RET, ');
         qReceber.Sql.add('       T1.FAT_CONTSOCIAL_RET, ');
         qReceber.Sql.add('       T1.FAT_BASE_ISS, ');
         qReceber.Sql.add('       T1.FAT_BASE_INSS, ');
         qReceber.Sql.add('       T1.FAT_ISS_RET, ');
         qReceber.Sql.add('       T1.CCT_NOVO, ');
         qReceber.Sql.add('       T1.OPE_CODIGO, ');
         qReceber.Sql.add('       T1.FAT_REEMBOLSO, ');
         qReceber.Sql.add('       T1.FAT_LOTE, ');
         qReceber.Sql.add('       T1.FAT_COMISSAO_VEN, ');
         qReceber.Sql.add('       T1.REP_CODIGO_INTERNO, ');
         qReceber.Sql.add('       T1.REP_CODIGO, ');
         qReceber.Sql.add('       PCX.PCX_DESCRI, ');
         qReceber.SQL.Add(' FPC_STATUS_REMESSA, ');
         qReceber.SQL.Add(' FPC_NPARCELAS , FPC_IMPDUP, CLI_UND_CONSUMIDORA, FAT_CID_CODIGO_PRESTACAO, t1.FAT_NUMSERIE,   ');
         qReceber.SQL.Add(' FAT_INSS_PERC, FAT_CONTSOCIAL_PERC, FAT_IRPJ_PERC, FAT_PIS_PERC, FAT_COFINS_PERC,FAT_ISS_PERC, ');
         qReceber.SQL.Add(' rp.rep_nome as vendedor ');
         qReceber.Sql.add( '  FROM FAT_PC01 F1 ');
         qReceber.Sql.add( '  LEFT JOIN FAT0000 T1 ON (T1.FAT_CODIGO = F1.FAT_CODIGO) AND (F1.EMP_CODIGO = T1.EMP_CODIGO) ');
         qReceber.Sql.add( '  LEFT JOIN CLI0000 C1 ON (F1.CLI_CODIGO = C1.CLI_CODIGO) ');
//         qReceber.Sql.add( '  LEFT JOIN FAT_RECEBIMENTO T2 ON (f1.FAT_REGISTRO = T2.FAT_REGISTRO AND f1.EMP_CODIGO = t2.EMP_CODIGO) ');
         qReceber.Sql.add( '  LEFT JOIN ban0000 B1 ON (B1.ban_codigo = F1.ban_codigo) ');
         qReceber.Sql.add( '  left JOIN CCT_0000 CCT ON (CCT.CCT_CODIGO = F1.CCT_CODIGO)');
         qReceber.Sql.add( '  left join  (SELECT DISTINCT FAT_CODIGO,FPC_NUMER,  EMP_CODIGO, NFSE_CODIGO FROM NFSE_FATPC)  nsp '+
                          '         on (nsp.FAT_CODIGO = f1.fat_codigo '      +
                           '            and nsp.FPC_NUMER = f1.FPC_NUMER   '  +
                           '           and nsp.EMP_CODIGO = F1.EMP_CODIGO) ');

  		   qReceber.Sql.add( '  left JOIN NFSERVICO se ON	(se.NFSE_CODIGO = nsp.NFSE_CODIGO and NFSE_DTCANCELADO IS NULL)  ');
         qReceber.SQL.Add( '  LEFT JOIN FORMA_PAGAMENTO FP ON (FP.FPG_REGISTRO = F1.FPG_REGISTRO ) ') ;
         qReceber.SQL.Add( '  LEFT JOIN REP0000 rp ON (rp.rep_codigo = t1.rep_codigo ) ') ;
         qReceber.SQL.Add( '  LEFT JOIN PCX0000 pcx ON (pcx.PCX_codigo = t1.PCX_CODIGO ) ') ;
         wSeleciona := '';
         if chkExcluidos.Checked then
           SqlAdd('FPC_SITPAG <> '+QuotedStr('X') );
         if chkAgrupados.Checked then
           SqlAdd('FPC_STATUS <> '+QuotedStr('Agrupada') );
         if edFPagto.idRetorno <> '' then
            SqlAdd('FP.FPG_REGISTRO = '+ edFPagto.idRetorno );
         if CbBancos.idRetorno <> '' then
            SqlAdd('B1.ban_codigo = '+QuotedStr(CbBancos.idRetorno ) );

         IF  not chkMultiEmpresa.Checked then
             SqlAdd ( ConcatSe( 'F1.',  dbInicio.ExclusivoSql('RECEBER') ) );
         if CHKSemRPS.Checked then
           SqlAdd ( ' RPS_CODIGO IS NULL ')
         else
         if chkPendTrans.Checked then
           SqlAdd ( ' RPS_CODIGO IS NOT NULL AND nfse_num_danfse IS NULL ')
         Else
         if chkNFSE.Checked then
            SqlAdd('nfse_num_danfse IS NOT NULL');

         if pesqVendedor.idRetorno <> '' then
            SqlAdd('t1.REP_CODIGO ='+QuotedStr(pesqVendedor.idRetorno));

         if ChkPrevisao.checked  then
            Sqladd( 'F1.FPC_PREVISAO = ''S'' AND F1.FPC_EXCLUSAO <> ''S''' )
         else
         if CheckVencidas.checked  then
            SqlAdd( 'F1.FPC_VENCTO < '''+DataAmericana(DateToStr(now))+''' AND F1.FPC_SITPAG = ''P''' )
         else
         if chkPendTrans.checked then
         begin
          //não entendi o que é necessário ser filtrado
         end;
         if ( trim( edtOutros.Text ) <> '') then // busca direta
         begin
              case cbbOutros.ItemIndex of
              0: wSeleciona := 'F1.FAT_CODIGO';
              1: wSeleciona := 'T1.PED_CODIGO';
              2: wSeleciona := 'T1.NF_NUM_NFE';
              3: wSeleciona := 'F1.FPC_VLPARC';
              4: wSeleciona := 'T1.FAT_LOTE';
              5: wSeleciona := 'F1.FPC_COBNUM';
              6: wSeleciona := 'se.NFSE_NUM_DANFSE';
              7: wSeleciona := 'se.NFSE_CODIGO';

              end;
              if cbbOutros.ItemIndex=3 then
                 Sqladd( wSeleciona +' = ' +FloatToSql( StrToFloatDef ( edtOutros.Text,0 ) ) )
              else if cbbOutros.ItemIndex=8 then
                Sqladd(  ' CLI_UND_CONSUMIDORA containing '+  edtOutros.Text)
              Else
                 Sqladd( wSeleciona +' like '+qStr('%'+edtOutros.Text) );
         end
         Else
         begin
              if (RxDataInicial.date<>0) or (RxDataFinal.date<>0) then
              begin
                 case cbbTipoData.ItemIndex of
                 0: wSeleciona := 'F1.FPC_DTEMIS';
                 1: wSeleciona := 'F1.FPC_VENCTO';
                 end;
                 if RxDataInicial.date<>0 then
                    SqlAdd( wSeleciona + ' >= ' + DateToSql( RxDataInicial.date ) );
                 if RxDataFinal.date<>0 then
                    SqlAdd( wSeleciona + ' <= ' + DateToSql( RxDataFinal.date ) );
              end;

              if (CbSituacao.ItemIndex <> 0) then
              begin
                 if CbSituacao.Text = 'Pendente' then
                   SqlAdd(' FPC_STATUS IN ( ''Pendente'',''Parcial'')')
                 else
                 if (CbSituacao.ItemIndex < 13) then
                   SqlAdd('FPC_STATUS = '+qStr(CbSituacao.Text))
                 Else
                  SqlAdd(' (F1.FPC_VLPAGO+F1.fpc_descto) < F1.FPC_VLPARC AND (FPC_PAGTO IS NOT NULL) ');
              end;

              if (cbClientes1.idRetorno <> '') then
                 SqlAdd('F1.CLI_CODIGO = '+qStr(StrZero(cbClientes1.idRetorno,5)) );

              if (CbContaFinanceira.Text <> '') then
                 SqlAdd( 'T1.CCT_CODIGO = '+qStr(CbContaFinanceira.CodigoLista));

              if (CbCentroCusto.Text <> '') then
                 SqlAdd( '(  (T1.PCX_CODIGO = '+qStr(CbCentroCusto.CodigoLista)+') or '+
                         '   (T1.fat_registro IN ( SELECT T1.fir_registro_cp_cr '+
                         '                         FROM fin_rateio T1 '+
                         '                         WHERE T1.pcx_codigo = '+qStr(CbCentroCusto.CodigoLista)+
                         '                               AND T1.fir_registro_tipo = ''R'')  ))' );
         end;
         if wSeleciona <> '' then
            wOrdem := wSeleciona
         Else
            wOrdem := 'F1.FPC_VENCTO, F1.CLI_CODIGO';
         qReceber.Sql.add( 'Order by '+wOrdem );
         if dbinicio.isdesenvolvimento then
          CopyToClipboard(qReceber.SQL.Text);
         CdsReceber.Open;
         if CdsReceber.IsEmpty then
            Limpa_Totais
         else
             Somar_Totais;
      Finally
             CdsReceber.EnableControls;
      end;
end;

procedure TFormContasRecParceGrid.Bit_CancelarClick(Sender: tObject);
begin
    RxDataInicial.SetFocus;
end;

procedure TFormContasRecParceGrid.Busca_Dados_Cliente(const sCodClie: String);
var sql: string ;
begin
   {Monta Sql}
   if (sCodClie <> '') then
   begin
        sql := 'select T1.REP_CODIGO, T1.TRP_CODIGO, T1.CLI_RAZAO, T1.CLI_CODIGO, T1.CLI_PESSOA,'+
               '       T1.CLI_INATIVO, T1.CLI_MOTIVO, T1.CLI_DTINATIVO, T1.CLI_CGC,'+
               '       T1.CLI_UF, T1.CLI_CIDADE, T1.CLI_ENDERE, T1.PCL_CODIGO,'+
               '       T1.CLI_DESC1, T1.CLI_DESC2 '+
               ' from cli0000 t1 '+
               ' where t1.cli_codigo='+qStr(sCodClie)+ConcatSe( ' and t1.',dbInicio.ExclusivoSql('CLIENTES'))+
               ' order by cli_codigo';
         CdsConsultaClie.Close;
         SqlCdsConsultaClie.SQL.Text := sql;
         CdsConsultaClie.Open;
      end;
end;


procedure TFormContasRecParceGrid.BitBaixarClick(Sender: tObject);
begin
   ChamaTelaBaixa;
end;

procedure TFormContasRecParceGrid.BitBtn1Click(Sender: TObject);
begin
  inherited;
  ChamaTelaAgrupamento;
end;

procedure TFormContasRecParceGrid.ChkPrevisaoClick(Sender: tObject);
begin
  BuscarFatu;
end;

procedure TFormContasRecParceGrid.chkRemessaClick(Sender: TObject);
begin
  inherited;
  CdsReceber.Filtered := False;
  CdsReceber.Filtered := True;
end;

procedure TFormContasRecParceGrid.CHKSemRPSClick(Sender: TObject);
begin
  inherited;
  if (UpperCase(TCheckBox (Sender).Name) = 'CHKSEMRPS') AND CHKSemRPS.Checked then
  begin
    chkNFSE.Checked := False;
    chkPendTrans.Checked := False;
  end
  Else
  if (UpperCase(TCheckBox(sender).Name) = 'CHKNFSE') AND chkNFSE.Checked then
  begin
    CHKSemRPS.Checked := False;
    chkPendTrans.Checked := False;
  end
  else
  if (UpperCase(TCheckBox(sender).Name) = 'CHKPENDTRANS') AND chkPendTrans.Checked then
  begin
    CHKSemRPS.Checked := False;
    chkNFSE.Checked := False;
  end;

  BuscarFatu;
end;

procedure TFormContasRecParceGrid.cxgrd1Enter(Sender: TObject);
begin
  inherited;
  ACBrEnterTab1.EnterAsTab := False;
end;

procedure TFormContasRecParceGrid.cxgrd1Exit(Sender: TObject);
begin
  inherited;
 ACBrEnterTab1.EnterAsTab := True;
end;

procedure TFormContasRecParceGrid.cxgrdReceberDataControllerFilterChanged(Sender: TObject);
begin
  inherited;
  Somar_Totais;
end;

procedure TFormContasRecParceGrid.cxgrdReceberDataControllerFilterGetValueList(Sender: TcxFilterCriteria; AItemIndex: Integer; AValueList: TcxDataFilterValueList);

begin
  inherited;
   AValueList.add(fviAll,0,'Todos',False);
   AValueList.Delete(0);
   AValueList.Delete(0);
end;

procedure TFormContasRecParceGrid.cxgrdReceberDblClick(Sender: TObject);
begin
  inherited;
  if CdsReceber.IsEmpty then
     exit;
  if (CdsReceberEMP_CODIGO.AsString <> dbInicio.EMPRESA.EMP_CODIGO) then
     uteis.aviso('A fatura pertence a outra empresa, favor logar na outra empresa para manutenção')
  else
  begin
       edtOutros.SetFocus;
       application.ProcessMessages;
       if not assigned(FormContasReceber) then
         FormContasReceber := TFormContasReceber.Create(Application);
       FormContasReceber.BotoesAcesso;
      if (MDIChildCount > 1) then
        SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
      else
         FormContasReceber.Top := 0;
       FormContasReceber.Show;
       FormContasReceber.EditFatura.Text := CdsReceberFAT_CODIGO.AsString;
       FormContasReceber.BuscaFatura(2);
       Close;
  end;
end;

procedure TFormContasRecParceGrid.cxgrdReceberEditing(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; var AAllow: Boolean);
begin
  inherited;
  if CdsReceber.IsEmpty then
    exit;
 if AItem.Index = cxgrdReceberSELECAO_FAT.Index then
  begin
    if (CdsReceberFPC_STATUS.AsString = 'Agrupada') then
      ShowMessage('Parcela Agrupada')
    else
    if (CdsReceberCCPendente.AsCurrency = 0) then
      ShowMessage('Parcela liquidada');

    if  (CdsReceberCCPendente.AsCurrency > 0) and(CdsReceberEMP_CODIGO.AsString <> dbInicio.EMPRESA.EMP_CODIGO) then
      ShowMessage('Título de outra empresa');
    aallow :=  (CdsReceberCCPendente.AsCurrency > 0)and(CdsReceberEMP_CODIGO.AsString = dbInicio.EMPRESA.EMP_CODIGO);


  end
  ELSE if AItem.Index = cxgrdReceberSELECAO_NFSE.Index then
  begin
    if CdsReceberNFSE.AsString <> '' then
      GeraException('Nota de serviço já gerada');
    if (CdsReceberFPC_EXCLUSAO.AsString = 'S') then
      GeraException('Parcela excluida');
    if CdsReceberRPS_CODIGO.AsInteger >0 then
      GeraException('RPS já gerado');
     aallow := (CdsReceberEMP_CODIGO.AsString = dbInicio.EMPRESA.EMP_CODIGO);
  end;
end;

procedure TFormContasRecParceGrid.cxgrdReceberFPC_SITPAGCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var situacao :string;
 vencimento : TDateTime;

begin
  inherited;
   situacao:=AViewInfo.Value;

   with TcxGridDBTableView(Sender).DataController do
   begin
    if not VarIsNull(AViewInfo.GridRecord.Values[cxgrdReceberFPC_VENCTO.Index]) then
      vencimento := VarToDateTime(AViewInfo.GridRecord.Values[cxgrdReceberFPC_VENCTO.Index]);
    if  AViewInfo.GridRecord.Values[cxgrdReceberFPC_STATUS.Index] = 'Agrupada' then
      ImageList1.Draw(ACanvas.Canvas,AViewInfo.ClientBounds.Left,AViewInfo.ClientBounds.Top+1,7) // Agrupada
    else
    if  AViewInfo.GridRecord.Values[cxgrdReceberFPC_EXCLUSAO.Index] = 'S' then
      ImageList1.Draw(ACanvas.Canvas,AViewInfo.ClientBounds.Left,AViewInfo.ClientBounds.Top+1,6) // Excluída
    else
    if  (AViewInfo.GridRecord.Values[cxgrdReceberFPC_STATUS.Index] = 'Devolução') then
      ImageList1.Draw(ACanvas.Canvas,AViewInfo.ClientBounds.Left,AViewInfo.ClientBounds.Top+1,2) // CINZA Devolvido
    else
    if  (AViewInfo.GridRecord.Values[cxgrdReceberFPC_PREVISAO.Index]  = 'S') then
      ImageList1.Draw(ACanvas.Canvas,AViewInfo.ClientBounds.Left,AViewInfo.ClientBounds.Top+1,3) // PRETO Previsão
    else
    if (( AViewInfo.GridRecord.Values[cxgrdReceberCCPendente.Index]   > 0) and
     (AViewInfo.GridRecord.Values[cxgrdReceberCCPendente.Index]  < AViewInfo.GridRecord.Values[cxgrdReceberFPC_VLPARC.Index]  )) then
      ImageList1.Draw(ACanvas.Canvas,AViewInfo.ClientBounds.Left,AViewInfo.ClientBounds.Top+1,0) // AMARELO Parcial
    else
    if (( AViewInfo.GridRecord.Values[cxgrdReceberCCPendente.Index] > 0)  and ( vencimento   < Date) AND (vencimento>0))
      or ( (DBInicio.GetParametroSistema('PMT_GER_AVANC_ANTECIP_DESC') = 'S')  and (CdsReceberFPC_ANTECIPACAO_CONCLUIDA.AsString <> 'S') and (vencimento < Date)   )
    then
      ImageList1.Draw(ACanvas.Canvas,AViewInfo.ClientBounds.Left,AViewInfo.ClientBounds.Top+1,4) // VERMELHO Vencida ou Descontada
    else
    if (( AViewInfo.GridRecord.Values[cxgrdReceberCCPendente.Index] =  AViewInfo.GridRecord.Values[cxgrdReceberFPC_VLPARC.Index] )
      and (  vencimento   >= Date) AND (vencimento>0)) then
      ImageList1.Draw(ACanvas.Canvas,AViewInfo.ClientBounds.Left,AViewInfo.ClientBounds.Top+1,5) // VERDE Pendente
    else
    if ( AViewInfo.GridRecord.Values[cxgrdReceberCCPendente.Index] = 0) then
      ImageList1.Draw(ACanvas.Canvas,AViewInfo.ClientBounds.Left,AViewInfo.ClientBounds.Top+1,1); // AZUL Liquidado
   end;


  ADone:=True;
end;

procedure TFormContasRecParceGrid.cxgrdReceberFPC_SITPAGGetCellHint(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
  var AHintText: TCaption; var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
  var situacao :string;
   vencimento : TDateTime;
begin
  inherited;
   with TcxGridDBTableView(Sender).DataController do
   begin
     situacao:=ARecord.Values[cxgrdReceberFPC_SITPAG.Index] ;
     if not VarIsNull(ARecord.Values[cxgrdReceberFPC_VENCTO.Index]) then
        vencimento := VarToDateTime(ARecord.Values[cxgrdReceberFPC_VENCTO.Index]);
    if  ARecord.Values[cxgrdReceberFPC_STATUS.Index] = 'Agrupada' then
      AHintText := 'Agrupada'
    else
    if  ARecord.Values[cxgrdReceberFPC_EXCLUSAO.Index] = 'S' then
      AHintText := 'Excluido'
    else
    if  (ARecord.Values[cxgrdReceberFPC_STATUS.Index] = 'Devolução') then
     AHintText := 'Devolução'
    else
    if  (ARecord.Values[cxgrdReceberFPC_PREVISAO.Index]  = 'S') then
      AHintText := 'Devolução';
   end;

end;

procedure TFormContasRecParceGrid.cxgrdReceberKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key = VK_RETURN) then
  begin
      if (CdsReceberEMP_CODIGO.AsString <> dbInicio.EMPRESA.EMP_CODIGO) then
         uteis.aviso('A fatura pertence a outra empresa, favor logar na outra empresa para manutenção')
      else
      begin
           edtOutros.SetFocus;
           application.ProcessMessages;
           if not assigned(FormContasReceber) then
             FormContasReceber := TFormContasReceber.Create(Application);
           FormContasReceber.BotoesAcesso;
          if (MDIChildCount > 1) then
            SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
          else
             FormContasReceber.Top := 0;
           FormContasReceber.Show;
           FormContasReceber.EditFatura.Text := CdsReceberFAT_CODIGO.AsString;
           FormContasReceber.BuscaFatura(2);
           Close;
      end;
      Key := 0;
  end;
end;

procedure TFormContasRecParceGrid.cxgrdReceberMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
var
  AHitTest: TcxCustomGridHitTest;
  AHint: string;
   AButton: TcxNavigatorButton;
begin
  //determine the current mouse position
  AHitTest := cxgrdReceber.ViewInfo.GetHitTest(X, Y);
  //hide displayed hint if mouse is not over a grid cell
   if AHitTest.HitTestCode = htNavigator then
    begin
     AButton := cxgrdReceber.ViewInfo.NavigatorViewInfo.GetButtonAt(Point(X,Y));
    if (AButton <> nil) then
       cxHintStyleController1.ShowHint(X, Y, '', AButton.Hint);
    end;

end;

procedure TFormContasRecParceGrid.Somar_Totais;
var sql, compWhere : WideString;
    Filtro : string;
    receber, falta : double;
begin

  CurrTotalReceber.Value    := 0;
  CurrTotalRecebido.Value   := 0;
  CurrTotalDesconto.Value   := 0;
  CurrTotalJuros.Value      := 0;
  CurrTotalQuantidade.Value := 0;
  CurrFaltaReceber.Value    := 0;
  falta := 0;
    CdsReceber.DisableControls;
  try
    CdsReceber.Filtered := False;
    if cxgrdReceber.DataController.Filter.FilterText<>'' then
    begin
      CdsReceber.Filtered := False;
      CdsReceber.Filter :=   cxgrdReceber.DataController.Filter.FilterText;
      CdsReceber.Filtered := True;
    end;

      while not CdsReceber.Eof do
      begin
          CurrTotalQuantidade.Value :=   CurrTotalQuantidade.Value + 1;
          CurrTotalReceber.Value     := CurrTotalReceber.Value + CdsReceber.FieldByName('FPC_VLPARC').AsCurrency;
          CurrTotalRecebido.Value    := CurrTotalRecebido.Value + CdsReceber.FieldByName('FPC_VLPAGO').AsCurrency;
           //receber  FPC_VLPARC+FPC_JUROS+FPC_MULTA-FPC_DESCTO-FPC_VLPAGO
          if CdsReceber.FieldByName('FPC_VLPAGO').AsCurrency >
           (CdsReceber.FieldByName('FPC_VLPARC').AsCurrency+ CdsReceber.FieldByName('FPC_JUROS').AsCurrency + CdsReceber.FieldByName('FPC_MULTA').AsCurrency) then
            receber :=  0
          else
            receber :=  CdsReceber.FieldByName('FPC_VLPARC').AsCurrency+ CdsReceber.FieldByName('FPC_JUROS').AsCurrency + CdsReceber.FieldByName('FPC_MULTA').AsCurrency
               - CdsReceber.FieldByName('FPC_DESCTO').AsCurrency -  CdsReceber.FieldByName('FPC_VLPAGO').AsCurrency;

          Falta     := Falta +  receber;
          CurrTotalDesconto.Value    := CurrTotalDesconto.Value +  CdsReceber.FieldByName('FPC_DESCTO').AsCurrency;
          CurrTotalJuros.Value       := CurrTotalJuros.Value + CdsReceber.FieldByName('FPC_JUROS').AsCurrency;



        CdsReceber.Next;
      end;
      CurrFaltaReceber.Value :=   Falta;
  finally
    CdsReceber.Filtered := False;
    CdsReceber.EnableControls;
  end;
//
//  sql := copy(qReceber.sql.text, AnsiPos ('FROM FAT_PC01',UPPERCASE(qReceber.sql.text)) , Length(qReceber.sql.text));
//  sql :=  AnsiLeftStr(sql,POS('ORDER',UPPERCASE(sql))-1);
//  sql := ' SELECT cast(COUNT(1) as integer) AS qtde, sum(FPC_VLPARC) AS FPC_VLPARC, sum(FPC_VLPAGO) AS FPC_VLPAGO,sum(FPC_DESCTO) AS FPC_DESCTO, sum(FPC_JUROS) AS FPC_JUROS, '+
//         ' sum(FPC_MULTA) AS FPC_MULTA, sum(FPC_VLPARC+FPC_JUROS+FPC_MULTA-FPC_DESCTO-FPC_VLPAGO) AS receber   '+ sql;

//  if cxgrdReceber.DataController.Filter.FilterText<>'' then
//  begin
//    filtro := cxgrdReceber.DataController.Filter.FilterText;
//    filtro:= StringReplace(filtro, 'FAT_CODIGO','T1.FAT_CODIGO',[rfReplaceAll] );
//    filtro:= StringReplace(filtro, 'EMP_CODIGO','T1.EMP_CODIGO',[rfReplaceAll] );
//    filtro:= StringReplace(filtro, 'FPC_NUMER','F1.FPC_NUMER',[rfReplaceAll] );
//    filtro:= StringReplace(filtro, 'NFSE','nfse_num_danfse',[rfReplaceAll] );
//    SQL:= AnsiReplaceText (sql, 'where', 'where '+filtro + ' AND ' );
////    if AnsiPos('FPC_DTEMIS',cxgrdReceber.DataController.Filter.FilterText) > then
//
//  end;
//  qAux.close;
//  qAux.Sql.Text := Sql ;
//  cdsTotalizador.Open;
//  if cxgrdReceber.DataController.Filter.FilterText<>'' then
//  begin
//    cdsTotalizador.Filtered := False;
//    cdsTotalizador.Filter :=   cxgrdReceber.DataController.Filter.FilterText;
//    cdsTotalizador.Filtered := True;
//  end;
//  if not cdsTotalizador.Eof then
//  begin
//    CurrTotalQuantidade.Value  := cdsTotalizador.FieldByName('qtde').AsCurrency;
//    CurrTotalReceber.Value     := cdsTotalizador.FieldByName('FPC_VLPARC').AsCurrency;
//    CurrTotalRecebido.Value    := cdsTotalizador.FieldByName('FPC_VLPAGO').AsCurrency;
//    CurrFaltaReceber.Value     := cdsTotalizador.FieldByName('RECEBER').AsCurrency;
//    CurrTotalDesconto.Value    := cdsTotalizador.FieldByName('FPC_DESCTO').AsCurrency;
//    CurrTotalJuros.Value       := cdsTotalizador.FieldByName('FPC_JUROS').AsCurrency;
//
//  end;
//

end;

procedure TFormContasRecParceGrid.Limpa_Totais;
begin
    CurrTotalReceber.Value := 0;
    CurrTotalRecebido.Value:= 0;
    CurrFaltaReceber.Value := 0;
    CurrTotalQuantidade.Value := 0;
    CurrTotalDesconto.Value := 0;
    CurrTotalJuros.Value := 0;
    CurrFaltaReceber.Value := 0;
end;

procedure TFormContasRecParceGrid.MascaraCNPJ_INFCLIE;
begin
   LBL_RAZAO.Caption := '';
   If Length(CdsConsultaClieCli_CGC.AsString) =14  then
      begin
          CdsConsultaClieCLI_CGC.EditMask := '99.999.999/9999-99;0;_';
          Lbl_Pessoa.Caption := 'CNPJ:';
      end
   else
      // pessoa fisica
      begin
          CdsConsultaClieCLI_CGC.EditMask := '999.999.999-99;0;_';
          Lbl_Pessoa.Caption := 'CPF:';
      end;
   LBL_RAZAO.Caption := copy(CdsConsultaClieCLI_RAZAO.AsString,1,35);
end;

procedure TFormContasRecParceGrid.mireceberagrupadoClick(Sender: TObject);
Var existe : boolean;
 complFiltro: string;
begin
  inherited;
   try
     CdsReceber.IndexDefs.Find('FPG_DESCRICAO');
     existe := true;
   except
     existe := false;
   end;
   if not existe then
   with CdsReceber.IndexDefs.AddIndexDef do
   begin
        Name := 'FPG_DESCRICAO';
        Fields := 'FPG_DESCRICAO';
        Options := [];
   end;
 try
     if cxgrdReceber.DataController.Filter.FilterText<>'' then
    begin
     complFiltro := cxgrdReceber.DataController.Filter.FilterText;
     sFiltro := RxDataInicial.Text +' a ' + RxDataFinal.Text +' e filtro personalizado: ' +cxgrdReceber.DataController.Filter.FilterCaption;
     CdsReceber.Filter := 'FPC_EXCLUSAO <> ''S'' and ' +complFiltro ;
    end
    else
    begin
      CdsReceber.Filter := 'FPC_EXCLUSAO <> ''S''';
      sFiltro := RxDataInicial.Text +' a ' + RxDataFinal.Text;
    end;

    CdsReceber.Filtered := false;

    CdsReceber.Filtered := True;
    CdsReceber.DisableControls;
    while not (CdsReceber.GetNextPacket = 0) do
      CdsReceber.GetNextPacket;
     CdsReceber.IndexName :=  'FPG_DESCRICAO';
     if (CdsReceber.IsEmpty) then
        begin
           uteis.aviso('Não existe parcelas para serem impressas');
        end
     else
        frxReceberpoForma.ShowReport();
     CdsReceber.Filtered := false;
  finally
    CdsReceber.IndexName := '';
    CdsReceber.EnableControls;
  end;
end;

procedure TFormContasRecParceGrid.miReceberPersonalizadoClick(Sender: TObject);
begin
  inherited;
//  frxReportReceber.DesignReport;
end;

procedure TFormContasRecParceGrid.MIRecebimentosClick(Sender: TObject);
begin
  inherited;
 try
    CdsReceber.Filtered := false;
    CdsReceber.Filter := 'FPC_EXCLUSAO <> ''S''';
    CdsReceber.Filtered := True;
    CdsReceber.DisableControls;
    while not (CdsReceber.GetNextPacket = 0) do
      CdsReceber.GetNextPacket;

     if (CdsReceber.IsEmpty) then
        begin
           uteis.aviso('Não existe parcelas para serem impressas');
        end
     else
        frxReportReceber.ShowReport();
     CdsReceber.Filtered := false;
  finally
    CdsReceber.EnableControls;
  end;
end;

procedure TFormContasRecParceGrid.pesqVendedorChange(Sender: TObject);
begin
  inherited;
  BuscarFatu;
end;

procedure TFormContasRecParceGrid.CbBancosSelect(Sender: TObject);
begin
  inherited;
  BuscarFatu;
end;

procedure TFormContasRecParceGrid.CbCentroCustoSelect(Sender: TObject);
begin
  inherited;
  BuscarFatu;
end;

procedure TFormContasRecParceGrid.CbClientes1_2Select(Sender: TObject);
begin
  inherited;
  if CbClientes1.idRetorno<>'' then
  begin
    Busca_Dados_Cliente( cbClientes1.IdRetorno);
    MascaraCNPJ_INFCLIE;
  end;
  PaninfCli.Visible := False;
  BuscarFatu;
end;

procedure TFormContasRecParceGrid.CbContaFinanceiraSelect(Sender: TObject);
begin
  inherited;
  BuscarFatu;
end;

procedure TFormContasRecParceGrid.CbSituacaoChange(Sender: TObject);
begin
  inherited;
  BuscarFatu;
end;



procedure TFormContasRecParceGrid.CheckVencidasClick(Sender: tObject);
begin
  BuscarFatu;
end;

procedure TFormContasRecParceGrid.chkExcluidosClick(Sender: TObject);
begin
  inherited;
  BuscarFatu;
end;

procedure TFormContasRecParceGrid.Seleciona;
begin
   if (not CdsReceber.IsEmpty) then
   begin
        if (CdsReceberFPC_EXCLUSAO.AsString <> 'S')and(CdsReceberCCPendente.AsCurrency > 0)and(CdsReceberEMP_CODIGO.AsString = dbInicio.EMPRESA.EMP_CODIGO) then
        begin
             CdsReceber.Edit;
             CdsReceberSELECAO_FAT.AsBoolean := not CdsReceberSELECAO_FAT.AsBoolean;
             CdsReceber.Post;
        end;
   end;
end;

procedure TFormContasRecParceGrid.CdsReceberCalcFields(DataSet: TDataSet);
var vlPend : Currency ;
begin
   if (CdsReceberFPC_EXCLUSAO.AsString = 'S') then
      CdsReceberCCPendente.AsCurrency := 0
   else
   begin
        vlPend := (CdsReceberFPC_VLPARC.AsCurrency + CdsReceberFPC_JUROS.AsCurrency + CdsReceberFPC_MULTA.AsCurrency - CdsReceberFPC_DESCTO.AsCurrency) ;
        vlPend := vlPend - CdsReceberFPC_VLPAGO.AsCurrency;
        CdsReceberCCPendente.AsCurrency := vlPend;
       if CdsReceberCCPendente.AsCurrency<0 then
           CdsReceberCCPendente.AsCurrency := 0;
   end;
end;

procedure TFormContasRecParceGrid.CdsReceberFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  if chkRemessa.Checked then
      Accept := DataSet.FieldByName('FPC_STATUS_REMESSA').AsString = 'S'
  else
    accept := true;
end;

procedure TFormContasRecParceGrid.CdsReceberFPC_NUMERGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if not CdsReceber.IsEmpty then
  if Sender.AsString <> '' then
    Text :=  InttoStr(StrToInt(Sender.AsString)) + '/' + IntToStr(CdsReceber.FieldByName('FPC_NPARCELAS').AsInteger)
  else
    text := '';
end;

procedure TFormContasRecParceGrid.CdsReceberFPC_PAGTOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsDateTime >0 then
    text := FormatDateTime('dd/mm/yyyy',Sender.AsDateTime);
end;

procedure TFormContasRecParceGrid.CdsReceberFPC_STATUS_REMESSAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  If Sender.Value = 'N' then
    text := 'Não'
  else
    text := 'Sim';
end;

procedure TFormContasRecParceGrid.CdsReceberSELECAO_FATGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  text := EmptyStr;
end;

procedure TFormContasRecParceGrid.ChamaTelaAgrupamento;
var
  cliAtual: String;

begin
  //Applica Filtro nas selecionadas
  CdsReceber.Filtered := False;
  CdsReceber.Filter := 'SELECAO_FAT = True';
  CdsReceber.Filtered := True;
  if (CdsReceber.IsEmpty) then
  begin
     uteis.aviso('Nenhuma parcela disponível para agrupamento foi selecionada');
     CdsReceber.Filtered := False;
  end
  else
  if CdsReceber.RecordCount = 1 then
  begin
    MessageDlg('Selecione mais de uma parcela para agrupar', mtWarning, [mbOK], 0);
    CdsReceber.Filtered := False;
    Abort;
  end
  else
  begin
    CdsReceber.First;
    while not CdsReceber.Eof do
    begin
      if CdsReceberFPC_STATUS_REMESSA.AsString = 'S' then
      begin
        MessageDlg('A Parcela ' + CdsReceberFPC_NUMER.AsString + ' da fatura ' + CdsReceberFAT_CODIGO.AsString + ' já foi gerada remessa. ' + #13 + #10 + 'Não é possível agrupar, portanto será excluída da lista.', mtWarning, [mbOK], 0);
        CdsReceber.Delete;
      end;
      cliAtual := CdsReceberCLI_CODIGO.AsString;
      CdsReceber.Next;
      if not CdsReceber.Eof then
        if cliAtual <> CdsReceberCLI_CODIGO.AsString then
        begin
          MessageDlg('Só é possível agrupar faturas do mesmo cliente', mtWarning, [mbOK], 0);
          CdsReceber.Filtered := False;
          Exit;
        end;
    end;
    if CdsReceber.RecordCount = 1 then
    begin
      MessageDlg('Selecione mais de uma parcela para agrupar', mtWarning, [mbOK], 0);
      CdsReceber.Filtered := False;
      Abort;
    end;

    CdsReceber.First;
    if formContasReceberAgrupa = nil then
      formContasReceberAgrupa := TformContasReceberAgrupa.Create(Application);
    //Adiciona parcelas a serem agrupadas
    formContasReceberAgrupa.sFaturas := '';
    CdsReceber.First;
    while (not CdsReceber.Eof) do
      begin
        formContasReceberAgrupa.CdSRecebimentos.Insert;
        formContasReceberAgrupa.CdSRecebimentosFatRegistro.AsString := CdsReceberFAT_REGISTRO.AsString;
        formContasReceberAgrupa.CdSRecebimentosFatura.AsString := CdsReceberFAT_CODIGO.AsString;
        formContasReceberAgrupa.CdSRecebimentosParcela.AsString := CdsReceberFPC_NUMER.AsString;
        formContasReceberAgrupa.CdSRecebimentosVencimento.AsString := CdsReceberFPC_VENCTO.AsString;
        formContasReceberAgrupa.CdSRecebimentosValor.AsFloat := CdsReceberFPC_VLPARC.AsFloat;
        formContasReceberAgrupa.CdSRecebimentosPendente.AsFloat := CdsReceberCCPendente.AsFloat;
        formContasReceberAgrupa.CdSRecebimentosCliente.AsString := CdsReceberCLI_RAZAO.AsString;
        formContasReceberAgrupa.CdSRecebimentosClienteCodigo.AsString := CdsReceberCLI_CODIGO.AsString;
        formContasReceberAgrupa.CdSRecebimentosBanco.AsString := CdsReceberBAN_APELIDO.AsString;
        formContasReceberAgrupa.sFaturas := formContasReceberAgrupa.sFaturas + formContasReceberAgrupa.CdSRecebimentosFatura.AsString + '(' + CdsReceberFPC_NUMER.AsString + '), ';
        formContasReceberAgrupa.CurrTotalReceber.Value := formContasReceberAgrupa.CurrTotalReceber.Value + CdsReceberCCPendente.AsFloat;
        formContasReceberAgrupa.CdSRecebimentos.Post;
        CdsReceber.Next;
      end;
    formContasReceberAgrupa.ShowModal;
    BuscarFatu;
  end;
end;

procedure TFormContasRecParceGrid.ChamaTelaBaixa;
begin
   //Applica Filtro nas selecionas
   CdsReceber.Filtered := False;
   CdsReceber.Filter := 'SELECAO_FAT = True';
   CdsReceber.Filtered := True;
   if (CdsReceber.IsEmpty) then
      begin
         uteis.aviso('Nenhuma parcela disponível para baixa foi selecionada');
         CdsReceber.Filtered := False;
      end
   else
      begin
         try
            FormContasReceberBaixa := TFormContasReceberBaixa.Create(Application);
            //Adiciona parcelas a serem baixadas
            CdsReceber.First;
            while (not CdsReceber.Eof) do
               begin
                  FormContasReceberBaixa.CdSRecebimentos.Insert;
                  FormContasReceberBaixa.CdSRecebimentosFatRegistro.AsString := CdsReceberFAT_REGISTRO.AsString;
                  FormContasReceberBaixa.CdSRecebimentosFatura.AsString := CdsReceberFAT_CODIGO.AsString;
                  FormContasReceberBaixa.CdSRecebimentosParcela.AsString := CdsReceberFPC_NUMER.AsString;
                  FormContasReceberBaixa.CdSRecebimentosVencimento.AsString := CdsReceberFPC_VENCTO.AsString;
                  FormContasReceberBaixa.CdSRecebimentosValor.AsString := CdsReceberFPC_VLPARC.AsString;
                  FormContasReceberBaixa.CdSRecebimentosPendente.AsString := CdsReceberCCPendente.AsString;
                  FormContasReceberBaixa.CdSRecebimentosBaixar.AsString := CdsReceberCCPendente.AsString;
                  FormContasReceberBaixa.CdSRecebimentosCliente.AsString := CdsReceberCLI_RAZAO.AsString;
                  FormContasReceberBaixa.CdSRecebimentosBanco.AsString := CdsReceberBAN_APELIDO.AsString;
                  FormContasReceberBaixa.CdSRecebimentosRecebido.AsString := CdsReceberCCPendente.AsString;
                  FormContasReceberBaixa.CdSRecebimentos.Post;
                  CdsReceber.Next;
               end;
            FormContasReceberBaixa.ShowModal;
         finally
            FormContasReceberBaixa.Destroy;
            FormContasReceberBaixa := Nil;
         end;
         BuscarFatu;
      end;
end;

procedure TFormContasRecParceGrid.frxReportReceberGetValue(const VarName: String;
  var Value: Variant);
begin
   if (VarName = 'Empresa') then
      Value := dbInicio.EMPRESA.RAZAO
   else
   if (VarName = 'Filtro') then
      Value := sFiltro
   else
   if (VarName = 'DataIni') then
   begin
      if (RxDataInicial.date = 0) then
        Value := ''
      else
        Value := RxDataInicial.date;
   end
   else
   if (VarName = 'CNPJ') then
   begin
      if (CdsReceberCLI_PESSOA.AsString = 'J') then
        Value := 'CNPJ'
      else
        Value := 'CPF';
   end;



end;

procedure TFormContasRecParceGrid.btnCadastroClick(Sender: TObject);
begin
  inherited;
  if not assigned(FormContasReceber) then
  Begin
    FormContasReceber := TFormContasReceber.Create(Application);
    FormContasReceber.BotoesAcesso;
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      FormContasReceber.Top := 0;
  End;
  FormContasReceber.Show;
  Close;
end;

procedure TFormContasRecParceGrid.btnImprimirClick(Sender: TObject);
begin
  MIRecebimentos.Click;
end;

procedure TFormContasRecParceGrid.btnServicoClick(Sender: TObject);
Var clone: TClientDataSet;
 iss : double;
 tcr :TFrmNotaFiscalServico;
 Listaparcelas : TStringList;
 valor :double;
 rpsultimo, rpsprimeiro : integer;
begin
  inherited;
  clone := TClientDataSet.Create(Self);
  tcr := TFrmNotaFiscalServico.Create(Application);
  Listaparcelas := TStringList.Create;
  rpsprimeiro:= 0;
  RPSULTIMO := 0 ;
  try
    clone.CloneCursor(CdsReceber,false);
    clone.Filter := 'selecao_nfse = true';
    clone.Filtered := True;
    if clone.RecordCount = 0  then
      GeraException('Nenhuma parcela selecionada');

    clone.First;
    while not clone.Eof do
    begin
      Listaparcelas.Add(clone.FieldByName('FPC_NUMER').AsString);
      if Clone.FieldByName('FAT_CID_CODIGO_PRESTACAO').AsInteger > 0 then
         iss := BuscaUmDadoSqlAsFloat('SELECT ISS_PGRC_ISS FROM ISS0000 WHERE CID_CODIGO =  ' +IntToStr( Clone.FieldByName('FAT_CID_CODIGO_PRESTACAO').AsInteger));
      if clone.FieldByName('FPC_VALR_SERVICOS').AsFloat > 0  then
        valor := RoundTo(clone.FieldByName('FPC_VALR_SERVICOS').AsFloat,-2)
      else
        valor :=  RoundTo(clone.FieldByName('FPC_VLPARC').AsFloat,-2);
      if clone.FieldByName('FPC_VL_RET').AsFloat>0 then
        valor := valor +  RoundTo(clone.FieldByName('FPC_VL_RET').AsFloat,-2);


       rpsultimo:= tcr.IncluirNotaFiscal(clone.FieldByName('FAT_CODIGO').AsString ,   //fatura
                            clone.FieldByName('FAT_NUMSERIE').AsString ,    //serie
                            clone.FieldByName('CLI_CODIGO').AsString,  //CLIENTE
                            clone.FieldByName('PED_CODIGO').AsString, //PEDIDO
                            Listaparcelas,        // parcelas selecionadas
                            now,
                            valor,
                            //ALIQUOTAS
                            iss,
                            clone.FieldByName('FAT_INSS_PERC').AsFloat,
                            clone.FieldByName('FAT_CONTSOCIAL_PERC').AsFloat,
                            clone.FieldByName('FAT_IRPJ_PERC').AsFloat,
                            clone.FieldByName('FAT_PIS_PERC').AsFloat,
                            clone.FieldByName('FAT_COFINS_PERC').AsFloat,
                            //RETENÇÕES
                             (valor *(clone.FieldByName('FAT_INSS_PERC').AsFloat+  clone.FieldByName('FAT_CONTSOCIAL_PERC').AsFloat+
                            clone.FieldByName('FAT_IRPJ_PERC').AsFloat+clone.FieldByName('FAT_PIS_PERC').AsFloat+clone.FieldByName('FAT_COFINS_PERC').AsFloat)/100),  //RETENÇAO FEDERAL
                            (valor*clone.FieldByName('FAT_ISS_PERC').AsFloat/100),   //ISS RETIDO
                          valor );

      if rpsprimeiro = 0  then
        rpsprimeiro := rpsultimo;

      tcr.Gravando;
      Listaparcelas.Clear;
      clone.Next;
    end;

  finally
    FreeAndNil(clone);
    Listaparcelas.Free;
    BuscarFatu;
  end;
  if (MessageDlg('RPS gerado de RPS '+ IntToStr(rpsprimeiro)+ ' até '+IntToStr(rpsultimo)    +' com sucesso. Deseja abrir a tela de transmissão ?', mtConfirmation, [mbYes, mbNo], 0) in [mrYes]) then
  begin
        if not assigned(frmNfse) then
          frmNfse := TfrmNfse.Create(Application);
        frmNfse.Show;


  end;


end;

procedure TFormContasRecParceGrid.btnTransferirClick(Sender: TObject);
var
    temErro : boolean;
    banco, wTip_Cobranca, wTip_Docto  : string;
    i : integer;
begin
  inherited;

  CdsReceber.DisableControls;
  try
//    clone.CloneCursor(CdsReceber,false);
    CdsReceber.Filtered := False;
    CdsReceber.Filter := 'SELECAO_FAT = true';
    CdsReceber.Filtered := True;
    CdsReceber.First;
    while not CdsReceber.Eof do
    begin
      temErro := (CdsReceber.FieldByName('FPC_SITPAG').AsString = 'L') or
       ( (CdsReceber.FieldByName('FPC_STATUS_REMESSA').AsString = 'S' ) and (CdsReceber.FieldByName('FPC_STATUS').AsString <> 'Devolução') )
       or ((cdsreceberFPC_IMPDUP.AsString = 'S' ) AND (CdsReceber.FieldByName('FPC_STATUS_REMESSA').AsString = 'N'))
       ;
      if temErro then Break;
      CdsReceber.Next;
    end;
    if temErro then
      raise Exception.Create('Somente parcelas a receber não liquidadas e não remetidas e não impressas');
    frmTransfTitulo := TfrmTransfTitulo.Create(self);
    try
      if frmTransfTitulo.ShowModal = mrOk then
      begin
         with frmTransfTitulo do
         begin
           banco := CbBancos.idRetorno;
           case CbxCarteira.ItemIndex of

             0: wTip_Cobranca := 'CT';
             1: wTip_Cobranca := 'CS';
             2: wTip_Cobranca := 'CC';
             3: wTip_Cobranca := 'CD';
             4: wTip_Cobranca := 'SR';
             5: wTip_Cobranca := 'CR';
             6: wTip_Cobranca := 'CQ';
             else
                 wTip_Cobranca := 'CH';
             end;
             case CbxTipoDoc.ItemIndex of

             0: wTip_Docto := 'DP';
             1: wTip_Docto := 'BL';
             2: wTip_Docto := 'RC';
             3: wTip_Docto := 'CH';
             4: wTip_Docto := 'DN';
             5: wTip_Docto := 'OU';
             else
                 wTip_Docto := 'CC';
             end;
         end;
        CdsReceber.First;
        i:=0;
        while not CdsReceber.Eof do
        begin
          ExecSql('update FAT_PC01  '+
                  'set BAN_CODIGO = '+QuotedStr(banco)  +
                  ', FPC_COBTIPO = '+QuotedStr(wTip_Cobranca)  +
                  ', FPC_TIPODOC = '+QuotedStr(wTip_Docto)     +
                   ' where  FAT_REGISTRO = '+  IntToStr(CdsReceber.FieldByName('FAT_REGISTRO').AsInteger));
          inc(i);
          CdsReceber.Next;
        end;
        ShowMessage(IntToStr(i) +' titulos transferidos para '+frmTransfTitulo.CbBancos.Text+ ' com sucesso');
        BuscarFatu;

      end;
    finally
      FreeAndNil(frmTransfTitulo)
    end;

  finally
   CdsReceber.Filtered := False;
   CdsReceber.EnableControls;
  end;

end;

procedure TFormContasRecParceGrid.MarcaDesmarcaTodas(status: Boolean);
begin
   if (not CdsReceber.IsEmpty) then
      begin
         CdsReceber.First;
         CdsReceber.DisableControls;
         while (not CdsReceber.Eof) do
            begin
               if (CdsReceberFPC_EXCLUSAO.AsString <> 'S')and(CdsReceberCCPendente.AsCurrency > 0)and(CdsReceberEMP_CODIGO.AsString = dbInicio.EMPRESA.EMP_CODIGO) then
                  begin
                     try
                        CdsReceber.Edit;
                        CdsReceberSELECAO_FAT.AsBoolean := status;
                        CdsReceber.Post;
                     except
                     end;
                  end;
               CdsReceber.Next;
            end;
         CdsReceber.First;
         CdsReceber.EnableControls
      end;
end;

procedure TFormContasRecParceGrid.SelecionarTodas1Click(Sender: tObject);
begin
   MarcaDesmarcaTodas(True);
end;

procedure TFormContasRecParceGrid.DesmarcarTodas1Click(Sender: tObject);
begin
   MarcaDesmarcaTodas(False);
end;

procedure TFormContasRecParceGrid.cbClientes1ButtonClick(Sender: TObject);
var
  tcr: tFrmPesquisaClientes;
begin
  inherited;
  tcr:= tFrmPesquisaClientes.Create(self);
  try
      tcr.ShowModal;
      if tcr.modalresult = mrok then
         cbClientes1.idRetorno := tcr.IDRetorno;
  finally
       FreeAndNil(tcr);
  end;
end;

procedure TFormContasRecParceGrid.cbClientes1Select(Sender: TObject);
begin
  inherited;
  if CbClientes1.idRetorno<>'' then
  begin
    Busca_Dados_Cliente( cbClientes1.IdRetorno);
    MascaraCNPJ_INFCLIE;
  end;
  PaninfCli.Visible := False;
  BuscarFatu;
end;

procedure TFormContasRecParceGrid.edFPagtoSelect(Sender: TObject);
begin
  inherited;
  BuscarFatu;
end;

procedure TFormContasRecParceGrid.edtOutrosKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (Key = #13) and  (edtOutros.Text <> '') then
    BuscarFatu;
end;

procedure TFormContasRecParceGrid.ExportarparaCSV1Click(Sender: TObject);
var
  lista: TStringList;
begin
  inherited;
  cdsExportaExcel.Close;
  cdsExportaExcel.Open;
  lista := TStringList.Create;
  lista.Add('FAT_CODIGO');
  lista.Add('FAT_NUMSERIE');
  lista.Add('FPC_NUMER');
  lista.Add('FPC_NPARCELAS');
  lista.Add('FPC_DTEMIS');
  lista.Add('FPC_PAGTO' );
  lista.Add('FPC_VENCTO');
  lista.Add('FPC_VLPARC');
  lista.Add('FPC_VLPAGO');
  lista.Add('FAT_VLFAT');
  lista.Add('CLI_CGC');
  lista.Add('CLI_RAZAO');
  lista.Add('PED_CODIGO');
  lista.Add('NF_NUM_NFE');
  lista.Add('CONTA_BANCARIA');
  lista.Add('VENDEDOR');
  lista.Add('CCT_DESCRICAO');
  lista.Add('FPG_DESCRICAO' );
  lista.Add('PCX_DESCRI');
  CriaCSV(dsExportaExcel, lista, Self);



end;

procedure TFormContasRecParceGrid.BitRecebimentoClick(Sender: tObject);
begin
   FormContasReceberBaixas := TFormContasReceberBaixas.Create(Application);
   try
      FormContasReceberBaixas.BotoesAcesso;
      FormContasReceberBaixas.ShowModal;
   finally
      FreeAndNil(FormContasReceberBaixas);
   end;
end;

end.
