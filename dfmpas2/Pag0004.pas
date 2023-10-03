{***********************************************************
 Programa...: Pag0004  - Nome formulario = FormPagarGrid
 Objetivo...: Lista de Contas à Pagar
 Analista...: Márcio Neu Pacheco
 Programador: Everson Neu Pacheco

 Comentários:

 Criação..........: Nov/98
 Ultima Alteração.: Ago/11
 Alterado por.....: Márcio

************************************************************}
unit Pag0004;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, BaseForm,
  StdCtrls, ExtCtrls, Buttons, Grids, DBGrids, Mask, RwFunc, Db,
   rxToolEdit, Provider, SqlExpr, DBClient,
  DBCtrls,  rxCurrEdit, ImgList, frxClass, frxDBSet, frxExportODF,
  frxExportXLS, frxExportPDF, Menus, ComboBoxRw, Data.DBXFirebird,
  System.ImageList, SgDbSeachComboUnit, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, Data.FMTBcd, JvExMask, JvToolEdit, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxCheckBox, system.Variants, dxLayoutContainer, cxGridLayoutView,
  cxGridCustomLayoutView, cxButtonEdit, cxGridCardView, cxGridDBLayoutView, cxGridDBCardView, cxImage, cxEditRepositoryItems, cxGridServerModeTableView, JvExStdCtrls, JvEdit, JvValidateEdit,
  cxCustomData, cxFilter, cxData, cxGridBandedTableView, cxGridDBBandedTableView, system.StrUtils, uFinanceiroDao, dxScreenTip, dxCustomHint, cxHint, cxButtons, cxPropertiesStore, JvExControls,
  JvArrowButton, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinXmas2008Blue, cxDataControllerConditionalFormattingRulesManagerDialog,
  frxExportBaseDialog;

type
  TFormContasPagarGrid = class(TfrmBase)
    Lb_lista: TLabel;
    CdsPesquisaPagar: TClientDataSet;
    DsPesquisaPagar: TDataSource;
    GroupBox2: TGroupBox;
    GroupBox4: TGroupBox;
    DBEdit3: TDBEdit;
    Panel1: TPanel;
    Label5: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    CurrTotalPagar: TCurrencyEdit;
    CurrTotalPago: TCurrencyEdit;
    CurrFaltaPagar: TCurrencyEdit;
    CdsPesquisaPagarPAG_REGISTRO: TIntegerField;
    CdsPesquisaPagarPAG_CODIGO: TStringField;
    CdsPesquisaPagarPPC_NUMER: TStringField;
    CdsPesquisaPagarPAG_NUMDOC: TStringField;
    CdsPesquisaPagarPAG_DTEMIS: TSQLTimeStampField;
    CdsPesquisaPagarPPC_VLPARC: TFMTBCdField;
    CdsPesquisaPagarPPC_VENCTO: TSQLTimeStampField;
    CdsPesquisaPagarPPC_PAGTO: TSQLTimeStampField;
    CdsPesquisaPagarPPC_VLPAGO: TFMTBCdField;
    CdsPesquisaPagarPPC_STATUS: TStringField;
    CdsPesquisaPagarPPC_PREVISAO: TStringField;
    CdsPesquisaPagarPPC_SITPAG: TStringField;
    CdsPesquisaPagarPAG_OBS: TStringField;
    CdsPesquisaPagarFOR_CODIGO: TStringField;
    CdsPesquisaPagarFOR_RAZAO: TStringField;
    CdsPesquisaPagarPAG_FAVORECIDO: TStringField;
    CdsPesquisaPagarPPC_EXCLUSAO: TStringField;
    Panel9: TPanel;
    Label8: TLabel;
    Panel3: TPanel;
    Label10: TLabel;
    Panel2: TPanel;
    Label9: TLabel;
    Panel4: TPanel;
    Label11: TLabel;
    Panel5: TPanel;
    Label12: TLabel;
    Panel6: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    CurrTotalReceber: TCurrencyEdit;
    CurrTotalRecebido: TCurrencyEdit;
    CurrFaltaReceber: TCurrencyEdit;
    CurrTotalDesconto: TCurrencyEdit;
    CurrTotalJuros: TCurrencyEdit;
    CurrTotalQuantidade: TCurrencyEdit;
    CdsPesquisaPagarSELECAO_FAT: TBooleanField;
    CdsPesquisaPagarCCPendente: TFloatField;
    ImageList1: TImageList;
    CdsPesquisaPagarPPC_DESCTO: TFMTBCdField;
    CdsPesquisaPagarPPC_JUROS: TFMTBCdField;
    frxReportReceber: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    frxODSExport1: TfrxODSExport;
    frxDBDatasetReceber: TfrxDBDataset;
    CdsPesquisaPagarPPC_MULTA: TFMTBCdField;
    ImageListaSelect: TImageList;
    PMMarcar: TPopupMenu;
    SelecionarTodas1: TMenuItem;
    DesmarcarTodas1: TMenuItem;
    CdsPesquisaPagarBAN_APELIDO: TStringField;
    CdsPesquisaPagarEMP_CODIGO: TStringField;
    grpContaFinanceira: TGroupBox;
    dbedtContaFinanceira: TDBEdit;
    CdsPesquisaPagarCCT_DESCRI: TStringField;
    pnPesq: TPanel;
    BitPesquisar: TBitBtn;
    GbFornecedor: TGroupBox;
    GbData: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    cbbTipoData: TComboBox;
    BitSair: TBitBtn;
    BitBaixar: TBitBtn;
    GroupBox3: TGroupBox;
    ChkPrevisao: TCheckBox;
    CheckVencidas: TCheckBox;
    GroupBox5: TGroupBox;
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
    GroupBox6: TGroupBox;
    CbSituacao: TComboBox;
    GroupBox7: TGroupBox;
    LblProjCx: TLabel;
    Label19: TLabel;
    CbContaFinanceira: TComboBoxRw;
    CbCentroCusto: TComboBoxRw;
    BitPagamentos: TBitBtn;
    grp1: TGroupBox;
    cbbOutros: TComboBox;
    edtOutros: TEdit;
    GroupBox1: TGroupBox;
    chkMultiEmpresa: TCheckBox;
    qPesquisaPagar: TSQLQuery;
    dspPesquisaPagar: TDataSetProvider;
    CdsPesquisaPagarPPC_NPARCELAS: TSmallintField;
    CbFornecedor: TSgDbSearchCombo;
    qForconsulta: TSQLQuery;
    RxDataInicial: TJvDateEdit;
    RxDataFinal: TJvDateEdit;
    btnCadastro: TButton;
    chkExcluidos: TCheckBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1PAG_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1PPC_NUMER: TcxGridDBColumn;
    cxGrid1DBTableView1PAG_NUMDOC: TcxGridDBColumn;
    cxGrid1DBTableView1PAG_DTEMIS: TcxGridDBColumn;
    cxGrid1DBTableView1PPC_VLPARC: TcxGridDBColumn;
    cxGrid1DBTableView1PPC_VENCTO: TcxGridDBColumn;
    cxGrid1DBTableView1PPC_PAGTO: TcxGridDBColumn;
    cxGrid1DBTableView1PPC_VLPAGO: TcxGridDBColumn;
    cxGrid1DBTableView1PPC_SITPAG: TcxGridDBColumn;
    cxGrid1DBTableView1FOR_RAZAO: TcxGridDBColumn;
    cxGrid1DBTableView1SELECAO_FAT: TcxGridDBColumn;
    cxGrid1DBTableView1CCPendente: TcxGridDBColumn;
    cxGrid1DBTableView1BAN_APELIDO: TcxGridDBColumn;
    cxGrid1DBTableView1EMP_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1PAG_REGISTRO: TcxGridDBColumn;
    cxGrid1DBTableView1PPC_STATUS: TcxGridDBColumn;
    cxGrid1DBTableView1PPC_PREVISAO: TcxGridDBColumn;
    cxGrid1DBTableView1PAG_OBS: TcxGridDBColumn;
    cxGrid1DBTableView1FOR_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1PAG_FAVORECIDO: TcxGridDBColumn;
    cxGrid1DBTableView1PPC_EXCLUSAO: TcxGridDBColumn;
    cxGrid1DBTableView1PPC_DESCTO: TcxGridDBColumn;
    cxGrid1DBTableView1PPC_JUROS: TcxGridDBColumn;
    cxGrid1DBTableView1PPC_MULTA: TcxGridDBColumn;
    cxGrid1DBTableView1CCT_DESCRI: TcxGridDBColumn;
    cxGrid1DBTableView1PPC_NPARCELAS: TcxGridDBColumn;
    cxgrdlvlGrid1Level2: TcxGridLevel;
    cxGrid1DBCardView1: TcxGridDBCardView;
    cxEditRepository1: TcxEditRepository;
    btnEstornar: TcxEditRepositoryButtonItem;
    Apontar1: TMenuItem;
    Aprovar1: TMenuItem;
    CdsPesquisaPagarPPC_SIT_LIBERACAO: TStringField;
    CdsPesquisaPagarPPC_VALOR_APONTADO: TFMTBCDField;
    QControle: TSQLQuery;
    cdscontrole: TClientDataSet;
    dspControle: TDataSetProvider;
    dscontrole: TDataSource;
    cdscontroleCTP_DESCRI: TStringField;
    cdscontrolePAG_CODIGO: TStringField;
    cdscontrolePAG_REGISTRO: TIntegerField;
    cdscontroleCTP_DATA_MOV: TSQLTimeStampField;
    cdscontroleUSU_NOME: TStringField;
    cxGrid1DBCardView1CTP_DESCRI: TcxGridDBCardViewRow;
    cxGrid1DBCardView1CTP_DATA_MOV: TcxGridDBCardViewRow;
    cxGrid1DBCardView1USU_NOME: TcxGridDBCardViewRow;
    cxGrid1DBCardView1PAG_CODIGO: TcxGridDBCardViewRow;
    cxGrid1DBCardView1PAG_REGISTRO: TcxGridDBCardViewRow;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBTableView1PPC_SIT_LIBERACAO: TcxGridDBColumn;
    cxGrid1DBTableView1PPC_VALOR_APONTADO: TcxGridDBColumn;
    cxGrid1DBBandedTableView1PAG_REGISTRO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PAG_CODIGO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PPC_NUMER: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PAG_NUMDOC: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PAG_DTEMIS: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PPC_VLPARC: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PPC_VENCTO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PPC_PAGTO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PPC_VLPAGO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PPC_STATUS: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PPC_PREVISAO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PPC_SITPAG: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PAG_OBS: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FOR_CODIGO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FOR_RAZAO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PAG_FAVORECIDO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PPC_EXCLUSAO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1SELECAO_FAT: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CCPendente: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PPC_DESCTO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PPC_JUROS: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PPC_MULTA: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1BAN_APELIDO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1EMP_CODIGO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CCT_DESCRI: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PPC_NPARCELAS: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PPC_SIT_LIBERACAO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PPC_VALOR_APONTADO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Estornar: TcxGridDBBandedColumn;
    btnReprovar: TcxEditRepositoryButtonItem;
    cxGrid1DBBandedTableView1Reprovar: TcxGridDBBandedColumn;
    BalloonHint1: TBalloonHint;
    cxHintPagar: TcxHintStyleController;
    miLimparFiltros: TMenuItem;
    cxPropertiesStore1: TcxPropertiesStore;
    CdsPesquisaPagarfpg_descricao: TStringField;
    fpg: TcxGridDBBandedColumn;
    btnImprimir: TJvArrowButton;
    PopupMenu1: TPopupMenu;
    miPagamentos: TMenuItem;
    miPagarAgrupado: TMenuItem;
    PagarAgrupadoPorBanco: TMenuItem;
    qPagar: TSQLQuery;
    DSPPagar: TDataSetProvider;
    CdsPagar: TClientDataSet;
    DsPagar: TDataSource;
    frxDatasetPagar: TfrxDBDataset;
    frxPagarPorBanco: TfrxReport;
    frxPagarpoForma: TfrxReport;
    CdsPagarCCT_DESCRI: TStringField;
    CdsPagarBAN_APELIDO: TStringField;
    CdsPagarPAG_REGISTRO: TIntegerField;
    CdsPagarPPC_DESCTO: TFMTBCDField;
    CdsPagarPPC_MULTA: TFMTBCDField;
    CdsPagarPPC_JUROS: TFMTBCDField;
    CdsPagarPAG_CODIGO: TStringField;
    CdsPagarPPC_NUMER: TStringField;
    CdsPagarPAG_NUMDOC: TStringField;
    CdsPagarPAG_DTEMIS: TSQLTimeStampField;
    CdsPagarPPC_VLPARC: TFMTBCDField;
    CdsPagarPPC_VENCTO: TSQLTimeStampField;
    CdsPagarPPC_PAGTO: TSQLTimeStampField;
    CdsPagarPPC_VLPAGO: TFMTBCDField;
    CdsPagarPPC_STATUS: TStringField;
    CdsPagarPPC_PREVISAO: TStringField;
    CdsPagarEMP_CODIGO: TStringField;
    CdsPagarPPC_SITPAG: TStringField;
    CdsPagarPPC_EXCLUSAO: TStringField;
    CdsPagarPAG_OBS: TStringField;
    CdsPagarFOR_CODIGO: TStringField;
    CdsPagarFOR_RAZAO: TStringField;
    CdsPagarPAG_FAVORECIDO: TStringField;
    CdsPagarPPC_NPARCELAS: TSmallintField;
    CdsPagarPPC_SIT_LIBERACAO: TStringField;
    CdsPagarFPG_DESCRICAO: TStringField;
    CdsPagarPPC_VALOR_APONTADO: TFMTBCDField;
    CdsPagarCCPendente: TFloatField;
    ExportarparaCSV1: TMenuItem;
    cdsExportaExcel: TClientDataSet;
    dsExportaExcel: TDataSource;
    cdsExportaExcelPAG_CODIGO: TStringField;
    CdsPesquisaPagarPAG_VLNOTA: TFMTBCDField;
    CdsPesquisaPagarFOR_CGC: TStringField;
    cdsExportaExcelPPC_NUMER: TStringField;
    CdsPagarPAG_VLNOTA: TFMTBCDField;
    CdsPagarFOR_CGC: TStringField;
    CdsPagarCONTA_BANCARIA: TStringField;
    CdsPagarPPC_FORMA: TStringField;
    CdsPagarCCT_DESCRICAO: TStringField;
    CdsPagarPCX_DESCRI: TStringField;
    cdsExportaExcelPPC_DTEMIS: TSQLTimeStampField;
    cdsExportaExcelPPC_VENCTO: TSQLTimeStampField;
    cdsExportaExcelPPC_PAGTO: TSQLTimeStampField;
    cdsExportaExcelPPC_VLPARC: TFMTBCDField;
    cdsExportaExcelPPC_VLPAGO: TFMTBCDField;
    cdsExportaExcelPAG_VLNOTA: TFMTBCDField;
    cdsExportaExcelFOR_CGC: TStringField;
    cdsExportaExcelFOR_RAZAO: TStringField;
    cdsExportaExcelCONTA_BANCARIA: TStringField;
    cdsExportaExcelPPC_FORMA: TStringField;
    cdsExportaExcelCCT_DESCRI: TStringField;
    cdsExportaExcelPAG_NUMDOC: TStringField;
    cdsExportaExcelPCX_ESCRI: TStringField;
    CdsPagarPPC_DTEMIS: TSQLTimeStampField;
    cdsExportaExcelPPC_NPARCELAS: TSmallintField;
    cdsExportaExcelFPG_DESCRICAO: TStringField;
    cdsExportaExcelEMP_CODIGO: TStringField;
    procedure DbGridPagarDblClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure SpeedButton2Click(Sender: tObject);
    procedure BitSairClick(Sender: tObject);
    procedure BitPesquisarClick(Sender: tObject);
    procedure BitBaixarClick(Sender: tObject);
    procedure BaixaContas;
    procedure ChkPrevisaoClick(Sender: tObject);
    procedure CheckVencidasClick(Sender: tObject);
    procedure CdsPesquisaPagarCalcFields(DataSet: TDataSet);
    procedure frxReportReceberGetValue(const VarName: String;
      var Value: Variant);
    procedure SelecionarTodas1Click(Sender: tObject);
    procedure DesmarcarTodas1Click(Sender: tObject);
    procedure BitPagamentosClick(Sender: tObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CdsPesquisaPagarPPC_NUMERGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure RxDataInicialChange(Sender: TObject);
    procedure CbSituacaoChange(Sender: TObject);
    procedure CbCentroCustoSelect(Sender: TObject);
    procedure CbContaFinanceiraSelect(Sender: TObject);
    procedure edtOutrosKeyPress(Sender: TObject; var Key: Char);
    procedure chkMultiEmpresaClick(Sender: TObject);
    procedure RxDataFinalExit(Sender: TObject);
    procedure RxDataInicialExit(Sender: TObject);
    procedure CbFornecedorSelect(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer; var Resize: Boolean);
    procedure btnCadastroClick(Sender: TObject);
    procedure chkExcluidosClick(Sender: TObject);
    procedure CbFornecedorButtonClick(Sender: TObject);
    procedure cxGrid1DBTableView1SELECAO_FATPropertiesChange(Sender: TObject);
    procedure cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxGrid1Enter(Sender: TObject);
    procedure cxGrid1Exit(Sender: TObject);
    procedure cxGrid1DBTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure Apontar1Click(Sender: TObject);
    procedure Aprovar1Click(Sender: TObject);
    procedure CdsPesquisaPagarPPC_SIT_LIBERACAOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cxGrid1DBBandedTableView1DataControllerFilterGetValueList(Sender: TcxFilterCriteria; AItemIndex: Integer; AValueList: TcxDataFilterValueList);
    procedure cxGrid1DBBandedTableView1PPC_SITPAGCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure btnEstornarPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxgrdlvlGrid1Level2GetGridView(Sender: TcxGridLevel; AMasterRecord: TcxCustomGridRecord; var AGridView: TcxCustomGridView);
    procedure btnReprovarPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid1DBBandedTableView1DblClick(Sender: TObject);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
    procedure cxGrid1DBBandedTableView1EstornarGetCellHint(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
      var AHintText: TCaption; var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure cxGrid1DBBandedTableView1ReprovarGetCellHint(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
      var AHintText: TCaption; var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure cxGrid1DBBandedTableView1PPC_SITPAGGetCellHint(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
      var AHintText: TCaption; var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure miLimparFiltrosClick(Sender: TObject);
    procedure cxGrid1DBBandedTableView1Editing(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure CbCentroCustoChange(Sender: TObject);
    procedure miPagamentosClick(Sender: TObject);
    procedure miPagarAgrupadoClick(Sender: TObject);
    procedure PagarAgrupadoPorBancoClick(Sender: TObject);
    procedure ExportarparaCSV1Click(Sender: TObject);
  private
    sFiltro:WideString;

    procedure BuscarLanctos;

    procedure Somar_totais;
    procedure Limpa_totais;
    PROCEDURE Seleciona;
    procedure MarcaDesmarcaTodas(status:Boolean);


  public
    procedure BotoesAcesso;

  end;

var
  FormContasPagarGrid: TFormContasPagarGrid;

implementation

uses Uteis, Pag0001, DataCad, Pag0007, Pag0008, iniciodb, For0002, uAprovarPag;

{$R *.DFM}

procedure TFormContasPagarGrid.DbGridPagarDblClick(Sender: tObject);
begin
    Close;
end;

procedure TFormContasPagarGrid.FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer; var Resize: Boolean);
begin
  inherited;
  if self.WindowState <> wsMaximized then
    NewWidth := 1118;
end;

procedure TFormContasPagarGrid.FormClose(Sender: TObject; var Action: TCloseAction);
var nome :string;
begin
  SalvaEstadoPesquisa := True;
  SalvaEstadoPesquisaProc( tComponent(pnPesq) ) ;
  inherited;
  TestaPasta ( dbInicio.SistemaLocal+'settings' );
  nome:= 'FormContasPagarGrid.cxGrid1DBBandedTableView1.grid';
  cxGrid1DBBandedTableView1.StoreToIniFile(dbInicio.SistemaLocal+'settings\'+nome, True, [gsoUseFilter] );


end;

procedure TFormContasPagarGrid.FormCreate(Sender: TObject);
begin
  inherited;
  self.Height:=630;
  self.width:=970;

end;

procedure TFormContasPagarGrid.FormShow(Sender: tObject);
var nome, pesquisa :string;
begin
   inherited;
   RxDataInicial.Date := Date - 30;
   CbContaFinanceira.CodigoEmpresa := StrToInt(dbInicio.EMPRESA.EMP_CODIGO);
   CbCentroCusto.CodigoEmpresa := StrToInt(dbInicio.EMPRESA.EMP_CODIGO);


   CarregaEstadoPesquisa( tComponent(pnPesq) ) ;
   BuscarLanctos;
   nome:= 'FormContasPagarGrid.cxGrid1DBBandedTableView1.grid';
   cxGrid1DBBandedTableView1.OptionsView.BandHeaders := DBInicio.Empresa.bPMT_CONTROLE_CONTASPAGAR ;
   cxgrdlvlGrid1Level2.Visible := DBInicio.Empresa.bPMT_CONTROLE_CONTASPAGAR ;
  // cxGrid1DBBandedTableView1.RestoreFromIniFile(dbInicio.SistemaLocal+'settings\'+nome, True, True, [gsoUseFilter] );
  cxGrid1DBBandedTableView1.Bands[0].Visible := DBInicio.Empresa.bPMT_CONTROLE_CONTASPAGAR ;
  if  DBInicio.Empresa.bPMT_CONTROLE_CONTASPAGAR then
  begin
    Apontar1.Enabled := DBInicio.Empresa.bUSP_APONTAR;
    Aprovar1.Enabled := DBInicio.Empresa.bUSP_APROVAR_PAG;
    cxGrid1DBBandedTableView1Reprovar.Visible := DBInicio.Empresa.bUSP_REPROVAR_PAG;
    cxGrid1DBBandedTableView1Estornar.Visible :=  DBInicio.Empresa.bUSP_APROVAR_EST or   DBInicio.Empresa.bUSP_REPROVAR_EST
    or DBInicio.Empresa.bUSP_APONTAR_EST  ;

  end
  else
  begin
    cxGrid1DBBandedTableView1PPC_VLPAGO.Width := 150;
    cxGrid1DBBandedTableView1FOR_RAZAO.Width := 258;
    cxGrid1DBBandedTableView1PPC_PAGTO.Width := 120;
    cxGrid1DBBandedTableView1CCPendente.Width := 120;
  end;
   BotoesAcesso;

   cbbTipoData.Enabled := true;
   RxDataInicial.Enabled := true;
   RxDataFinal.Enabled := true;
   CbFornecedor.Enabled := true;
   CbContaFinanceira.Enabled := true;
   CbSituacao.Enabled := true;
   cbbOutros.Enabled := true;
   edtOutros.Enabled := true;
   CbCentroCusto.Enabled := true;
   // LeIni('ContasAPagar', 'pesquisaCbxProjCx', 'valor', pesquisa);
   // CbCentroCusto.idRetorno := pesquisa;
   CbCentroCusto.idRetorno := '';
   BuscarLanctos;
end;

procedure TFormContasPagarGrid.SpeedButton2Click(Sender: tObject);
begin
     Close;
end;

procedure TFormContasPagarGrid.BitSairClick(Sender: tObject);
begin
     Close;
end;

procedure TFormContasPagarGrid.BotoesAcesso;
begin
     if assigned(FormContasPagarGrid) then
     begin
       btnImprimir.Enabled := Uteis.AcessoUsuario('FinanceiroContas à Pagar',DBInicio.Usuario.CODIGO,FormContasPagarGrid).Relatorio;
     end;
end;


procedure TFormContasPagarGrid.btnCadastroClick(Sender: TObject);
begin
  inherited;
  if not assigned(FormContasPagar) then
  begin
      FormContasPagar := TFormContasPagar.Create(Application);
      FormContasPagar.BotoesAcesso;
      if (MDIChildCount > 1) then
        SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
      else
        FormContasPagar.Top := 0

  end;
  FormContasPagar.Show;
  Close;
end;

procedure TFormContasPagarGrid.btnEstornarPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if (CdsPesquisaPagarPPC_SITPAG.AsString = 'L') and ( CdsPesquisaPagarCCPendente.AsFloat = 0) then
    raise Exception.Create('Título já liquidado.');

  if  CdsPesquisaPagarPPC_SIT_LIBERACAO.AsString = 'S' then
    raise Exception.Create('Ação inválida');
    //vol
  if CdsPesquisaPagarPPC_SIT_LIBERACAO.AsString = 'R' then
  begin
      if not DBInicio.Empresa.bUSP_REPROVAR_EST then
        raise Exception.Create('Sem autorização para estornar');

       if (MessageDlg('Deseja estornar a reprovação ?', mtWarning, [mbYes, mbNo], 0) in [mrYes, mrNone]) then
       begin
         Atualizar_liberacao('L',CdsPesquisaPagarPPC_VALOR_APONTADO.AsFloat,CdsPesquisaPagarPAG_REGISTRO.AsInteger);
         Historico_Controle('Estornado',CdsPesquisaPagarPAG_REGISTRO.AsString,CdsPesquisaPagarPAG_CODIGO.AsString,CdsPesquisaPagarPPC_NUMER.AsString);
         BuscarLanctos  ;
       end;
    exit;
  end;
  //LIBERADO, se estornado vai para sem liberação
  if CdsPesquisaPagarPPC_SIT_LIBERACAO.AsString = 'L' then
  begin
    try
      if  not DBInicio.Empresa.bUSP_APONTAR_EST then
        raise Exception.Create('Sem autorização para estornar');

       if (MessageDlg('Deseja estornar a liberação ?', mtWarning, [mbYes, mbNo], 0) in [mrYes, mrNone]) then
       begin
        CdsPesquisaPagar.DisableControls;
        Atualizar_liberacao('S',0.0,CdsPesquisaPagarPAG_REGISTRO.AsInteger);
        Historico_Controle('Estornado',CdsPesquisaPagarPAG_REGISTRO.AsString,CdsPesquisaPagarPAG_CODIGO.AsString,CdsPesquisaPagarPPC_NUMER.AsString);
        BuscarLanctos;
       end;
    finally
      CdsPesquisaPagar.EnableControls;
    end;
    exit;
  end;
  //aprovado , se estornado vai para liberado
  if CdsPesquisaPagarPPC_SIT_LIBERACAO.AsString = 'A' then
  begin
    try
      if not DBInicio.Empresa.bUSP_APROVAR_EST then
        raise Exception.Create('Sem autorização para estornar');
       if (MessageDlg('Deseja estornar a aprovação ?', mtWarning, [mbYes, mbNo], 0) in [mrYes, mrNone]) then
       begin
        CdsPesquisaPagar.DisableControls;
        Atualizar_liberacao('L',CdsPesquisaPagarPPC_VALOR_APONTADO.AsFloat,CdsPesquisaPagarPAG_REGISTRO.AsInteger);
        Historico_Controle('Estornado',CdsPesquisaPagarPAG_REGISTRO.AsString,CdsPesquisaPagarPAG_CODIGO.AsString,CdsPesquisaPagarPPC_NUMER.AsString);
        BuscarLanctos;
       end;

    finally
      CdsPesquisaPagar.EnableControls;
    end;
    exit
  end;
end;

procedure TFormContasPagarGrid.btnReprovarPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var hist : string;
begin
  inherited;
  if (CdsPesquisaPagarPPC_SITPAG.AsString = 'L' ) and ( CdsPesquisaPagarCCPendente.AsFloat = 0) then
    raise Exception.Create('Título já liquidado.');
  if MatchStr(CdsPesquisaPagarPPC_SIT_LIBERACAO.AsString,['S']) then
    raise Exception.Create('Ação inválida');
  if CdsPesquisaPagarPPC_SIT_LIBERACAO.AsString = 'A' then
    raise Exception.Create('Título aprovado, para cancelar, deve estornar');

  if CdsPesquisaPagarPPC_SIT_LIBERACAO.AsString = 'L' then
  begin

      if not DBInicio.empresa.bUSP_REPROVAR_PAG then
          raise Exception.Create('Não pode reprovar');
       if (MessageDlg('Deseja reprovar a liberação de pagamento ?', mtWarning, [mbYes, mbNo], 0) in [mrYes, mrNone]) then
       begin
          hist:= InputBox('Exclusão de registro','Motivo','');
          if hist = '' then
            hist:= 'Reprovado' ;
          Atualizar_liberacao('R',CdsPesquisaPagarPPC_VALOR_APONTADO.AsFloat,CdsPesquisaPagarPAG_REGISTRO.AsInteger);
          Historico_Controle(hist,CdsPesquisaPagarPAG_REGISTRO.AsString,CdsPesquisaPagarPAG_CODIGO.AsString,CdsPesquisaPagarPPC_NUMER.AsString);
          BuscarLanctos;
       end;

  end;

end;

procedure TFormContasPagarGrid.BitPesquisarClick(Sender: tObject);
begin
  BuscarLanctos;

end;

procedure TFormContasPagarGrid.BuscarLanctos;
var wOrdem, lCampo : String ;
    flgWhere: Boolean;

   Procedure SqlAdd( stt: string ) ;
   begin
        if stt <> '' then
        begin
           if flgWhere then
              qPesquisaPagar.Sql.add(' where '+stt )
           Else
              qPesquisaPagar.Sql.add(' and '+stt );

           flgWhere := False;
        end;
   end;
///
begin

      wOrdem := '';
      sFiltro := '';

      flgWhere := True;
      qPesquisaPagar.Close;
      CdsPesquisaPagar.close;
      qPesquisaPagar.sql.clear;
      qPesquisaPagar.Sql.Add('SELECT (CCT.CCT_CODIGO||''-''||CCT.CCT_DESCRI) as CCT_DESCRI, '+
                             '       pag.PAG_VLNOTA, FORN.FOR_CGC, ' + 
							 '        BAN_CONTA || (CASE WHEN BAN_DIGCONTA = '''' THEN '''' ELSE ''-'' || BAN_DIGCONTA END ) AS CONTA_BANCARIA, ' + 
							 '        PC01.PPC_DTEMIS, ' +
                             '       PC01.PPC_FORMA, CCT.CCT_DESCRI AS CCT_DESCRICAO, pcx.PCX_DESCRI,  ' +
                             '       B1.ban_apelido, PC01.PAG_REGISTRO, PC01.PPC_DESCTO, PC01.PPC_MULTA, '+
                             '       PC01.PPC_JUROS, PC01.PAG_CODIGO, PC01.PPC_NUMER, PAG.PAG_NUMDOC, '+
                             '       PAG.PAG_DTEMIS, PC01.PPC_VLPARC, PC01.PPC_VENCTO, PC01.PPC_PAGTO, '+
                             '       PC01.PPC_VLPAGO, PC01.PPC_STATUS, PC01.PPC_PREVISAO, '+
                             '       PC01.EMP_CODIGO, PC01.PPC_SITPAG, PC01.PPC_EXCLUSAO, '+
                             '       CASE WHEN (PC01.PPC_EXCLUSAO = ''S'') THEN ''REGISTRO EXCLUÍDO: ''||PC01.PPC_MOTIVO_EXCLUSAO ELSE PAG.PAG_OBS END AS PAG_OBS, ' +
                             '       PAG.FOR_CODIGO, FORN.FOR_RAZAO, PAG.PAG_FAVORECIDO, PPC_NPARCELAS, coalesce(PPC_SIT_LIBERACAO,''S'') PPC_SIT_LIBERACAO , '+
                             '        (SELECT FPG_DESCRICAO FROM FORMA_PAGAMENTO fp WHERE fp.FPG_REGISTRO = PC01.FPG_REGISTRO), coalesce(PPC_VALOR_APONTADO,0) as PPC_VALOR_APONTADO  '+
                             'FROM PAG_PC01 PC01 '+
                             '     JOIN PAG0000 PAG ON (PC01.PAG_CODIGO = PAG.PAG_CODIGO) AND (PC01.EMP_CODIGO = PAG.EMP_CODIGO) '+
                             '     LEFT JOIN FOR0000 FORN ON pag.FOR_CODIGO = FORN.FOR_CODIGO '+
                             '     LEFT JOIN ban0000 B1 ON B1.ban_codigo = PC01.ban_codigo '+
                             '     LEFT JOIN CCT_0000 CCT ON (CCT.CCT_CODIGO = PC01.CCT_CODIGO)' +
                              '    LEFT JOIN FORMA_PAGAMENTO as fpg on (fpg.fpg_registro = PC01.fpg_registro)'  +
                              '    LEFT JOIN PCX0000 as pcx on (pcx.PCX_CODIGO = PC01.PCX_CODIGO)'
                            // '     LEFT JOIN PAG_PAGAMENTO pp ON (pp.PAG_REGISTRO = pc01.pag_registro) ' +
                            // '     LEFT JOIN FORMA_PAGAMENTO AS fpg ON  (fpg.fpg_registro = pp.fpg_registro) '
                             );
       if chkExcluidos.Checked then
         SqlAdd('PPC_SITPAG <> '+QuotedStr('X'));
      if not chkMultiEmpresa.Checked then
         if dbInicio.Exclusivo('PAGAR') then
            SqlAdd( 'PC01.Emp_Codigo='+dbInicio.Empresa.Emp_Codigo );

      if ChkPrevisao.checked  then
         SqlAdd( 'PC01.PPC_PREVISAO = ''S'' and PC01.PPC_EXCLUSAO <> ''S''' )
      else
      if CheckVencidas.checked  then
         SqlAdd( 'PC01.PPC_VENCTO < '''+DataAmericana(DateToStr(now))+''' AND PC01.PPC_SITPAG = ''P''' )
      Else
      if ( tRIM(edtOutros.Text) <> '') then    // busca direta
      begin
           case cbbOutros.ItemIndex of
               0 : begin SqlAdd( 'PC01.PAG_CODIGO = '+qStr( StrZero(edtOutros.Text,5) ) ); wOrdem := 'PC01.PAG_CODIGO,PC01.PPC_NUMER'; sFiltro    := sFiltro + ' Fatura: '+StrZero(edtOutros.Text,5); end;
               1 : begin SqlAdd( 'PAG.PAG_NUMDOC LIKE '+qStr('%'+edtOutros.Text+'%') ); wOrdem := 'PAG.PAG_NUMDOC,PAG.PAG_DTEMIS,PC01.PPC_NUMER'; sFiltro    := sFiltro+' Documento: '+edtOutros.Text; end;
               2 : begin
                   // busca valor dentro das datas selecionadas

                   SqlAdd('PC01.PPC_VLPARC = '+FloatToSql(StrToFloat(edtOutros.Text)));
                   case cbbTipoData.ItemIndex of
                   0 : lCampo := 'PAG.PAG_DTEMIS';
                   1 : lCampo := 'PC01.PPC_VENCTO';
                   end;

                    if RxDataInicial.Date>0 then
                       SqlAdd( lCampo + '>=' +DateToSql( RxDataInicial.Date ));

                    if RxDataFinal.Date>0 then
                       SqlAdd( lCampo + '<=' +DateToSql( RxDataFinal.Date ));

                   wOrdem  := 'PC01.PAG_CODIGO,PC01.PPC_NUMER';
                   sFiltro := sFiltro+' Valor da Parcela de : '+edtOutros.Text;

                   end;


               3 : begin SqlAdd( 'PAG.PAG_OBS LIKE '+qStr('%'+edtOutros.Text+'%') ); wOrdem := 'PC01.PAG_CODIGO,PC01.PPC_NUMER'; sFiltro    := sfiltro+' Observação : '+edtOutros.Text; end;
           end;
      end
      Else
      begin
           case cbbTipoData.ItemIndex of
           0 : begin lCampo := 'PAG.PAG_DTEMIS'; sFiltro    := 'Emissão: '+RxDataInicial.Text+' até '+RxDataFinal.Text; wOrdem     := 'PAG.PAG_DTEMIS,PC01.PPC_NUMER'; end;
           1 : begin lCampo := 'PC01.PPC_VENCTO'; sFiltro    := 'Vencimento: '+RxDataInicial.Text+' até '+RxDataFinal.Text; wOrdem     := 'PC01.PPC_VENCTO,PC01.PPC_NUMER'; end;
           end;

           if RxDataInicial.Date>0 then
              SqlAdd( lCampo + '>=' +DateToSql( RxDataInicial.Date ));

           if RxDataFinal.Date>0 then
              SqlAdd( lCampo + '<=' +DateToSql( RxDataFinal.Date ));

           if CbSituacao.ItemIndex>0 then
           begin
                if CbSituacao.Text = 'Pendente' then
                   SqlAdd(' PPC_STATUS IN ( ''Pendente'',''Parcial'')')
                else
                if (CbSituacao.ItemIndex < 12) then
                   SqlAdd( 'PC01.PPC_STATUS = '+QStr(CbSituacao.Text) )
                Else
                   SqlAdd( '(PC01.PPC_VLPAGO+PC01.PPC_descto) < PC01.PPC_VLPARC AND (PPC_PAGTO IS NOT NULL)' );
                sFiltro    := sFiltro + ' Status: '+CbSituacao.Text;
           end;

           if (trim(CbFornecedor.idRetorno) <> '') then
           begin
                sqlAdd( 'FORN.FOR_CODIGO = '+QuotedStr(CbFornecedor.idRetorno));
                sFiltro    := sFiltro + ' Fornecedor: '+CbFornecedor.idRetorno+ '-'+ CbFornecedor.CDS.FieldByName('FOR_RAZAO').AsString;
           end;

           if (CbContaFinanceira.Text <> '') then
           begin
                SqlAdd( 'PAG.CCT_CODIGO = '+QuotedStr(CbContaFinanceira.CodigoLista) );
                sFiltro    := sFiltro + ' Conta Financ.: '+CbContaFinanceira.Text;
           end;

           if (CbCentroCusto.Text <> '') then
           begin
                SqlAdd( '(PAG.PCX_CODIGO = '+QuotedStr(CbCentroCusto.CodigoLista)+' or ( PC01.PAG_REGISTRO in (SELECT T44.FIR_REGISTRO_CP_CR FROM FIN_RATEIO T44 WHERE T44.PCX_CODIGO = '+QuotedStr(CbCentroCusto.CodigoLista)+' AND T44.FIR_REGISTRO_TIPO = ''P'')))');
                sFiltro    := sFiltro + ' Centro Custo: '+CbCentroCusto.Text;
           end;

      end;

      if wOrdem <> '' then
         qPesquisaPagar.Sql.Add (' Order by '+wOrdem ) ;

      if dbinicio.isdesenvolvimento then
        CopyToClipBoard(qPesquisaPagar.Sql.Text);

      CdsPesquisaPagar.Open;

      if CdsPesquisaPagar.IsEmpty then
         Limpa_totais
      else
      begin
             Somar_totais;
            // cxGrid1.SetFocus;
      end;

end;

procedure TFormContasPagarGrid.BitBaixarClick(Sender: tObject);
begin
  BaixaContas;
end;



procedure TFormContasPagarGrid.Apontar1Click(Sender: TObject);
Var clone : TClientDataSet;
 fr : TfrmAprovarPagamento;
begin
  inherited;
  if  ( CdsPesquisaPagar.State IN dsEditModes ) then
     CdsPesquisaPagar.Post;

  FR := TfrmAprovarPagamento.Create(self);
  clone := TClientDataSet.Create(self);
  try
    clone.CloneCursor(CdsPesquisaPagar, false);
    clone.Filtered := False;
    clone.Filter := '(SELECAO_FAT = True and CCPendente > 0 ) and (PPC_SIT_LIBERACAO =''S'' OR PPC_SIT_LIBERACAO = ''R'' )  ';
    clone.Filtered := True;
    if clone.RecordCount = 0 then
       raise Exception.Create('Nenhum título foi selecionado ou nenhum atende aos critérios : '+#13#10
                             +' tem valor pendente e sem valor autorizado');
    fr.MtbAprovados.Close;
    fr.MtbAprovados.CreateDataSet;
    fr.MtbAprovados.CopyDataSet (clone);
    fr.Tipo := 0;//solicitar
    FR.aCaption := 'Solicitar pagamento';
    if fr.ShowModal = mrOk then
    begin
      ShowMessage('Liberado com sucesso');

    end;
  finally
    FreeAndNil(fr);
    FreeAndNil(clone);
    BuscarLanctos;
  end;



end;


procedure TFormContasPagarGrid.Aprovar1Click(Sender: TObject);
Var clone : TClientDataSet;
 fr : TfrmAprovarPagamento;
begin
  inherited;
  if  ( CdsPesquisaPagar.State IN dsEditModes ) then
     CdsPesquisaPagar.Post;
  FR := TfrmAprovarPagamento.Create(self);
  clone := TClientDataSet.Create(self);
  try
    clone.CloneCursor(CdsPesquisaPagar, false);
    clone.Filtered := False;
    clone.Filter := 'SELECAO_FAT = True and PPC_SIT_LIBERACAO = ''L''  and PPC_VALOR_APONTADO > 0 ';
    clone.Filtered := True;
    if clone.RecordCount = 0 then
       raise Exception.Create('Nenhum título foi selecionado ou nenhum atende aos critérios : '+#13#10
                             +' tem valor autorizado e já foi liberado');
    fr.MtbAprovados.Close;
    fr.MtbAprovados.CreateDataSet;
    fr.MtbAprovados.CopyDataSet (clone);
    fr.Tipo := 1;//aprovar
    FR.aCaption := 'Aprovar pagamento';
    if fr.ShowModal = mrOk then
    begin

      ShowMessage('Aprovado com sucesso');

//      cxGrid1DBBandedTableView1.Synchronization :=
    end;
  finally
    FreeAndNil(fr);
    FreeAndNil(clone);
    BuscarLanctos;
  end;
end;



procedure TFormContasPagarGrid.BaixaContas;
begin
   //Applica Filtro nas selecionas
   CdsPesquisaPagar.Filtered := False;
   if DBInicio.Empresa.bPMT_CONTROLE_CONTASPAGAR then
     CdsPesquisaPagar.Filter := 'SELECAO_FAT = True and CCPendente > 0 and PPC_SIT_LIBERACAO = ''A'''
   else
     CdsPesquisaPagar.Filter := 'SELECAO_FAT = True and CCPendente > 0  ';
   CdsPesquisaPagar.Filtered := True;
   if (CdsPesquisaPagar.IsEmpty) then
   begin
         uteis.aviso('Nenhuma parcela disponível para baixa foi selecionada');
         CdsPesquisaPagar.Filtered := False;
         EXIT;
   end;

    FormContasPagarBaixa := TFormContasPagarBaixa.Create(Application);
   try
      //Adiciona parcelas a serem baixadas
      CdsPesquisaPagar.First;
      while (not CdsPesquisaPagar.Eof) do
         begin
            FormContasPagarBaixa.CdSPagamento.Insert;
            FormContasPagarBaixa.CdSPagamentoFatRegistro.AsString := CdsPesquisaPagarPAG_REGISTRO.AsString;
            FormContasPagarBaixa.CdSPagamentoFatura.AsString := CdsPesquisaPagarPAG_CODIGO.AsString;
            FormContasPagarBaixa.CdSPagamentoParcela.AsString := CdsPesquisaPagarPPC_NUMER.AsString;
            FormContasPagarBaixa.CdSPagamentoVencimento.AsString := CdsPesquisaPagarPPC_VENCTO.AsString;
            FormContasPagarBaixa.CdSPagamentoValor.AsString := CdsPesquisaPagarPPC_VLPARC.AsString;

            if DBInicio.Empresa.bPMT_CONTROLE_CONTASPAGAR then
            begin
              FormContasPagarBaixa.CdSPagamentoPendente.AsString := CdsPesquisaPagarPPC_VALOR_APONTADO.AsString;
              FormContasPagarBaixa.CdSPagamentoBaixar.AsString := CdsPesquisaPagarPPC_VALOR_APONTADO.AsString;
            end
            else
            begin
              FormContasPagarBaixa.CdSPagamentoPendente.AsString := CdsPesquisaPagarCCPendente.AsString;
              FormContasPagarBaixa.CdSPagamentoBaixar.AsString := CdsPesquisaPagarCCPendente.AsString;

            end;

            FormContasPagarBaixa.CdSPagamentoDesconto.AsFloat := 0;
            FormContasPagarBaixa.CdSPagamentoJuros.AsFloat := 0;
            FormContasPagarBaixa.CdSPagamentoMulta.AsFloat := 0;
            FormContasPagarBaixa.CdSPagamentoRecebido.AsString := CdsPesquisaPagarCCPendente.AsString;
            FormContasPagarBaixa.CdSPagamentoCliente.AsString := CdsPesquisaPagarFOR_RAZAO.AsString;
            FormContasPagarBaixa.CdSPagamentoBanco.AsString := CdsPesquisaPagarBAN_APELIDO.AsString;
            FormContasPagarBaixa.CdSPagamento.Post;
            CdsPesquisaPagar.Next;
         end;
      FormContasPagarBaixa.ShowModal;
   finally
      FormContasPagarBaixa.Destroy;
      FormContasPagarBaixa := Nil;
   end;
   CdsPesquisaPagar.Filtered := False;
   CdsPesquisaPagar.Refresh;

end;

procedure TFormContasPagarGrid.ChkPrevisaoClick(Sender: tObject);
begin
    BuscarLanctos;
end;

procedure TFormContasPagarGrid.cxgrdlvlGrid1Level2GetGridView(Sender: TcxGridLevel; AMasterRecord: TcxCustomGridRecord; var AGridView: TcxCustomGridView);
begin
  inherited;
  cdscontrole.Close;
  QControle.SQL.Text := 'SELECT CTP_DESCRI, ct.PAG_CODIGO, PAG_REGISTRO, CTP_DATA_MOV, u.USU_NOME  FROM CONTROLE_TIT_PAGAR ct ' +
                         ' JOIN USUARIO u ON  u.USU_CODIGO = ct.COD_USU' +
                         ' where pag_registro = '+ VarToStr(AMasterRecord.values[cxGrid1DBBandedTableView1PAG_REGISTRO.index]);
  cdscontrole.Open;
end;

procedure TFormContasPagarGrid.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  inherited;
  Somar_totais
end;

procedure TFormContasPagarGrid.cxGrid1DBBandedTableView1DataControllerFilterGetValueList(Sender: TcxFilterCriteria; AItemIndex: Integer; AValueList: TcxDataFilterValueList);
begin
  inherited;
   AValueList.add(fviAll,0,'Todos',False);
   AValueList.Delete(0);
   AValueList.Delete(0);

end;

procedure TFormContasPagarGrid.cxGrid1DBBandedTableView1DblClick(Sender: TObject);
begin
  inherited;
    if (CdsPesquisaPagarEMP_CODIGO.AsString <> dbInicio.EMPRESA.EMP_CODIGO) then
       uteis.aviso('A fatura pertence a outra empresa, favor logar na outra empresa para manutenção')
    else
    begin
      application.processmessages;
      if not assigned(FormContasPagar) then
      begin
          FormContasPagar := TFormContasPagar.Create(Application);
          FormContasPagar.BotoesAcesso;
          if (MDIChildCount > 1) then
            SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
          else
            FormContasPagar.Top := 0

      end;
      FormContasPagar.Show;
      FormContasPagar.EdtPag_codigo.text := CdsPesquisaPagarPAG_CODIGO.AsString;
      FormContasPagar.BuscaLancto(2);
      FormContasPagar.EdtPag_codigo.SetFocus;
      Close;
    end;
end;

procedure TFormContasPagarGrid.cxGrid1DBBandedTableView1Editing(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; var AAllow: Boolean);
begin
  inherited;
  if AItem.Index = cxGrid1DBBandedTableView1SELECAO_FAT.Index then
  begin
    if (CdsPesquisaPagarEMP_CODIGO.AsString <> dbInicio.EMPRESA.EMP_CODIGO) then
      ShowMessage('Título de outra empresa');


  end;
end;

procedure TFormContasPagarGrid.cxGrid1DBBandedTableView1EstornarGetCellHint(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption; var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  inherited;
  //  cxHintPagar.ShowHint(AMousePos.X,AMousePos.Y, '','Estornar',0);
  // para funcionar deve estar o tableview.opstionsbehavior,cellhinst como false or
  // cxGrid1DBBandedTableView1.OptionsBehavior.CellHints := False
  if arecord.Values[cxGrid1DBBandedTableView1PPC_SIT_LIBERACAO.Index] = 'L' then
    AHintText := 'Estorna para sem liberação'
  else
  if arecord.Values[cxGrid1DBBandedTableView1PPC_SIT_LIBERACAO.Index] = 'A' then
    AHintText := 'Estorna para liberado'
  else
  if arecord.Values[cxGrid1DBBandedTableView1PPC_SIT_LIBERACAO.Index] = 'R' then
    AHintText := 'Estorna, volta para liberado'
  else
    AHintText := 'Sem liberação';
  //AIsHintMultiLine := True;

//  if Sender.AsString = 'L' then
//  begin
//    text := 'Liberado';
//  end
//  else
//  if Sender.AsString = 'A' then
//  begin
//    text := 'Aprovado';
//  end
//  else
//  if Sender.AsString = 'R' then
//  begin
//    text := 'Reprovado';
//    exit;
//  end
//  else
//  begin
//    text := 'Sem Liberação';

end;

procedure TFormContasPagarGrid.cxGrid1DBBandedTableView1PPC_SITPAGCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var situacao :string;
    vencimento : TDateTime;
begin
  inherited;
  situacao:=AViewInfo.Value;
  if CdsPesquisaPagar.IsEmpty then
    exit;

//  //0 = amarelo (parcial) | 1 = azul | = 2 cinza (previsao) | 3 = preto (pendente) | 4 = vermelho (vencida) | 5 = verde (liquidada)
   with Sender.DataController do
   begin
     //cancelado
     if  (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1PPC_EXCLUSAO.Index] = 'S') then
     Begin
       ACanvas.Font.Color := clGray;
       ImageList1.Draw(ACanvas.Canvas,AViewInfo.ClientBounds.Left,AViewInfo.ClientBounds.Top+1,6);
       ADone:=True;
       exit;
     End;
     //provisionado
     if  (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1PPC_PREVISAO.Index] = 'S') then
     begin
       ImageList1.Draw(ACanvas.Canvas,AViewInfo.ClientBounds.Left,AViewInfo.ClientBounds.Top+1,3);
       ADone:=True;
       exit;

     end;
     //parcial
     if  (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1CCPendente.Index] >0 )  and
     ((AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1CCPendente.Index]) < ( AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1PPC_VLPARC.Index])) then
     begin
       ImageList1.Draw(ACanvas.Canvas,AViewInfo.ClientBounds.Left,AViewInfo.ClientBounds.Top+1,0);
       ADone:=True;
       exit;

     end;
     if not VarIsNull(AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1PPC_VENCTO.Index]) then
       vencimento := VarToDateTime(AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1PPC_VENCTO.Index]);

      //vencida
     if  ((AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1CCPendente.Index] >0 )   and (  vencimento < Date) AND (vencimento>0 )) then
     begin
       ImageList1.Draw(ACanvas.Canvas,AViewInfo.ClientBounds.Left,AViewInfo.ClientBounds.Top+1,4);
       ADone:=True;
       exit;

     end;
     //pendente
     if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1CCPendente.Index] = AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1PPC_VLPARC.Index])
      and (  vencimento >= Date) AND (vencimento>0 )  then
     begin
       ImageList1.Draw(ACanvas.Canvas,AViewInfo.ClientBounds.Left,AViewInfo.ClientBounds.Top+1,5);
       ADone:=True;
       exit;

     end;
     //liquidado
     if AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1CCPendente.Index] = 0  then
     begin
       ImageList1.Draw(ACanvas.Canvas,AViewInfo.ClientBounds.Left,AViewInfo.ClientBounds.Top+1,1);
       ADone:=True;
     end;




   end;



end;

procedure TFormContasPagarGrid.cxGrid1DBBandedTableView1PPC_SITPAGGetCellHint(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption; var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
  var vencimento : TDateTime;
begin
  inherited;

  if  (ARecord.Values[cxGrid1DBBandedTableView1PPC_EXCLUSAO.Index] = 'S') then
  Begin
    AHintText := 'Cancelado';
    exit;
  End;
  if  (ARecord.Values[cxGrid1DBBandedTableView1PPC_PREVISAO.Index] = 'S') then
   begin
     AHintText := 'Previsão';
     exit;
  end;
  if  (ARecord.Values[cxGrid1DBBandedTableView1CCPendente.Index] >0 )  and
     ((ARecord.Values[cxGrid1DBBandedTableView1CCPendente.Index]) < ( ARecord.Values[cxGrid1DBBandedTableView1PPC_VLPARC.Index])) then
     begin
       AHintText := 'Parcial';
       exit;

     end;
     if not VarIsNull(ARecord.Values[cxGrid1DBBandedTableView1PPC_VENCTO.Index]) then
       vencimento := VarToDateTime(ARecord.Values[cxGrid1DBBandedTableView1PPC_VENCTO.Index]);
     //vencida
     if  ((ARecord.Values[cxGrid1DBBandedTableView1CCPendente.Index] >0 )   and (  vencimento < Date) AND (vencimento>0 )) then
     begin
       AHintText := 'Vencida';
       exit;
     end;
     //pendente
     if (ARecord.Values[cxGrid1DBBandedTableView1CCPendente.Index] = ARecord.Values[cxGrid1DBBandedTableView1PPC_VLPARC.Index])
      and (  vencimento >= Date) AND (vencimento>0 )  then
     begin
       AHintText := 'Pendente';
       exit;

     end;
     //Liquidado
     if ARecord.Values[cxGrid1DBBandedTableView1CCPendente.Index] = 0  then
     begin
       AHintText := 'Liquidado';
     end;
end;

procedure TFormContasPagarGrid.cxGrid1DBBandedTableView1ReprovarGetCellHint(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption; var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  inherited;
  AIsHintMultiLine := True;
  AHintText := 'Reprova um título liberado' +#13#10+
               'se reprovado pode ser solicitado novamente';
end;

procedure TFormContasPagarGrid.cxGrid1DBTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;

  //FlowPanel1.Visible := TRUE;
//  FlowPanel1.Caption :=   AFocusedRecord.Values[cxGrid1DBTableView1PAG_CODIGO.Index];
end;

procedure TFormContasPagarGrid.cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  inherited;
   if (Key =VK_RETURN) then
   begin
        if (CdsPesquisaPagarEMP_CODIGO.AsString <> dbInicio.EMPRESA.EMP_CODIGO) then
           uteis.aviso('A fatura pertence a outra empresa, favor logar na outra empresa para manutenção')
        else
        begin
          application.processmessages;
          if not assigned(FormContasPagar) then
          begin
              FormContasPagar := TFormContasPagar.Create(Application);
              FormContasPagar.BotoesAcesso;
              if (MDIChildCount > 1) then
                SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
              else
                FormContasPagar.Top := 0

          end;
          FormContasPagar.Show;
          FormContasPagar.EdtPag_codigo.text := CdsPesquisaPagarPAG_CODIGO.AsString;
          FormContasPagar.BuscaLancto(2);
          FormContasPagar.EdtPag_codigo.SetFocus;
          Close;
        end;
        key:=0;
   end;
end;

procedure TFormContasPagarGrid.cxGrid1DBTableView1SELECAO_FATPropertiesChange(Sender: TObject);
begin
  inherited;
  if CdsPesquisaPagarSELECAO_FAT.AsBoolean then
     Seleciona;
end;

procedure TFormContasPagarGrid.cxGrid1Enter(Sender: TObject);
begin
  inherited;
  ACBrEnterTab1.EnterAsTab := False;
end;

procedure TFormContasPagarGrid.cxGrid1Exit(Sender: TObject);
begin
  inherited;
  ACBrEnterTab1.EnterAsTab := True;

end;

procedure TFormContasPagarGrid.Limpa_totais;
begin
    CurrTotalPagar.Value := 0;
    CurrTotalPago.Value  := 0;
    CurrFaltaPagar.Value := 0;
end;

procedure TFormContasPagarGrid.Somar_totais;
var complFiltro : string;
begin
    CurrTotalReceber.Value    := 0;
    CurrTotalRecebido.Value   := 0;
    CurrTotalDesconto.Value   := 0;
    CurrTotalJuros.Value      := 0;
    CurrTotalQuantidade.Value := 0;
    CurrFaltaReceber.Value    := 0;
    CdsPesquisaPagar.First;
    CdsPesquisaPagar.DisableControls;
    if cxGrid1DBBandedTableView1.DataController.Filter.FilterText<>'' then
      begin
       complFiltro := cxGrid1DBBandedTableView1.DataController.Filter.FilterText;
//       complFiltro := StringReplace(complFiltro, 'FAT_CODIGO','P1.EMP_CODIGO',[rfReplaceAll] );
//       complFiltro:= StringReplace(complFiltro, 'REP_CODIGO','t3.REP_CODIGO',[rfReplaceAll] );

       CdsPesquisaPagar.Filter := complFiltro ;
      end;

     CdsPesquisaPagar.Filtered := False;
     CdsPesquisaPagar.Filtered := true;
    while not CdsPesquisaPagar.Eof do
    begin
        // if (CdsPesquisaPagarPPC_EXCLUSAO.AsString = 'N') then
         begin
               CurrTotalQuantidade.Value  := CurrTotalQuantidade.Value  + 1;
               CurrTotalReceber.Value     := CurrTotalReceber.Value     + CdsPesquisaPagarPPC_VLPARC.AsCurrency;
               CurrTotalRecebido.Value    := CurrTotalRecebido.Value    + CdsPesquisaPagarPPC_VLPAGO.AsCurrency;
               CurrFaltaReceber.Value     := CurrFaltaReceber.Value     + CdsPesquisaPagarCCPendente.AsCurrency;
               CurrTotalDesconto.Value    := CurrTotalDesconto.Value    + CdsPesquisaPagarPPC_DESCTO.AsCurrency;
               CurrTotalJuros.Value       := CurrTotalJuros.Value       + CdsPesquisaPagarPPC_JUROS.AsCurrency;
         end;
         CdsPesquisaPagar.Next;
    end;
   CdsPesquisaPagar.Filtered := False;
    CdsPesquisaPagar.EnableControls;
    CdsPesquisaPagar.First;
end;

procedure TFormContasPagarGrid.CheckVencidasClick(Sender: tObject);
begin
     BuscarLanctos;
end;

procedure TFormContasPagarGrid.chkExcluidosClick(Sender: TObject);
begin
  inherited;
  BuscarLanctos;
end;

procedure TFormContasPagarGrid.chkMultiEmpresaClick(Sender: TObject);
begin
  inherited;
  BuscarLanctos;
end;

procedure TFormContasPagarGrid.CbCentroCustoChange(Sender: TObject);
begin
  inherited;
  if cbCentroCusto.Text = '' then
    CbCentroCusto.idRetorno := '';
  GravaIni('ContasAPagar', 'pesquisaCbxProjCx', 'valor', CbCentroCusto.idRetorno);
  BuscarLanctos;
end;

procedure TFormContasPagarGrid.CbCentroCustoSelect(Sender: TObject);
begin
  inherited;
  BuscarLanctos;

end;

procedure TFormContasPagarGrid.CbContaFinanceiraSelect(Sender: TObject);
begin
  inherited;
  BuscarLanctos;
end;

procedure TFormContasPagarGrid.CbFornecedorButtonClick(Sender: TObject);
var tcr: TFormFornecGrid;
begin
  tcr:= TFormFornecGrid.Create(self);
  try
      tcr.ShowModal;
      if tcr.modalresult = mrok then
         CbFornecedor.idRetorno := tcr.IDRetorno;


  finally
       FreeAndNil(tcr);
  end;


end;

procedure TFormContasPagarGrid.CbFornecedorSelect(Sender: TObject);
begin
  inherited;
  if CdsPesquisaPagar.Active then
    BuscarLanctos;

end;

procedure TFormContasPagarGrid.CbSituacaoChange(Sender: TObject);
begin
  inherited;
  BuscarLanctos;
end;

procedure TFormContasPagarGrid.CdsPesquisaPagarCalcFields(
  DataSet: TDataSet);
begin
   if (CdsPesquisaPagarPPC_EXCLUSAO.AsString = 'S') then
      CdsPesquisaPagarCCPendente.AsCurrency := 0
   else
      CdsPesquisaPagarCCPendente.AsCurrency := CdsPesquisaPagarPPC_VLPARC.AsCurrency - CdsPesquisaPagarPPC_VLPAGO.AsCurrency  + CdsPesquisaPagarPPC_JUROS.AsCurrency + CdsPesquisaPagarPPC_MULTA.AsCurrency - CdsPesquisaPagarPPC_DESCTO.AsCurrency;
end;

procedure TFormContasPagarGrid.CdsPesquisaPagarPPC_NUMERGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if not CdsPesquisaPagar.IsEmpty then
  begin
    if Sender.IsNull or (Sender.AsString = '')  then
      text := '1/1'
    else
      text :=  inttostr(strtoint(Sender.AsString)) + '/'+ IntToStr(CdsPesquisaPagar.FieldByName('PPC_NPARCELAS').AsInteger);
  end;
end;

procedure TFormContasPagarGrid.CdsPesquisaPagarPPC_SIT_LIBERACAOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString = 'L' then
  begin
    text := 'Liberado';
  end
  else
  if Sender.AsString = 'A' then
  begin
    text := 'Aprovado';
  end
  else
  if Sender.AsString = 'R' then
  begin
    text := 'Reprovado';
    exit;
  end
  else
  begin
    text := 'Sem Liberação';

  end;
end;

procedure TFormContasPagarGrid.frxReportReceberGetValue(  const VarName: String;
    var Value: Variant);
begin
   if (VarName = 'Empresa') then
      Value := dbInicio.EMPRESA.RAZAO
   else
   if (VarName = 'Filtro') then
      Value := sFiltro;
end;


procedure TFormContasPagarGrid.Seleciona;
begin
  if CdsPesquisaPagar.IsEmpty then
     exit;
  if (CdsPesquisaPagarEMP_CODIGO.AsString <> dbInicio.EMPRESA.EMP_CODIGO) then
     GeraException ('O título pertence a outra empresa, favor logar na outra empresa para manutenção') ;

  if (CdsPesquisaPagarPPC_EXCLUSAO.AsString <> 'S') and (CdsPesquisaPagarCCPendente.AsCurrency > 0)  then
  begin
       CdsPesquisaPagar.Edit;
       CdsPesquisaPagarSELECAO_FAT.AsBoolean := not CdsPesquisaPagarSELECAO_FAT.AsBoolean;
       CdsPesquisaPagar.Post;
  end;

end;

procedure TFormContasPagarGrid.MarcaDesmarcaTodas(status: Boolean);
begin
   if (not CdsPesquisaPagar.IsEmpty) then
      begin
         CdsPesquisaPagar.First;
         CdsPesquisaPagar.DisableControls;
         while (not CdsPesquisaPagar.Eof) do
            begin
               if (CdsPesquisaPagarPPC_EXCLUSAO.AsString <> 'S')and(CdsPesquisaPagarCCPendente.AsCurrency > 0)and(CdsPesquisaPagarEMP_CODIGO.AsString = dbInicio.EMPRESA.EMP_CODIGO) then
                  begin
                     try
                        CdsPesquisaPagar.Edit;
                        CdsPesquisaPagarSELECAO_FAT.AsBoolean := status;
                        CdsPesquisaPagar.Post;
                     except
                     end;
                  end;
               CdsPesquisaPagar.Next;
            end;
         CdsPesquisaPagar.First;
         CdsPesquisaPagar.EnableControls
      end;
end;


procedure TFormContasPagarGrid.miLimparFiltrosClick(Sender: TObject);
var stream2: tstream;
begin
  inherited;

  cxGrid1DBBandedTableView1.DataController.Filter.Clear;
end;

procedure TFormContasPagarGrid.miPagamentosClick(Sender: TObject);
Var existe : boolean;
    complFiltro : string;
begin
  inherited;
  try
   CdsPesquisaPagar.IndexDefs.Find('PAGAR');
   existe := true;
   except
     existe := false;
   end;
   if not existe then
   begin
     with CdsPesquisaPagar.IndexDefs.AddIndexDef do
     begin
          Name := 'PAGAR';
          Fields := 'PPC_VENCTO;FOR_RAZAO';
          Options := [];
     end;
   end;
   Try
     if cxGrid1DBBandedTableView1.DataController.Filter.FilterText<>'' then
    begin
     complFiltro := cxGrid1DBBandedTableView1.DataController.Filter.FilterText;
     sFiltro := RxDataInicial.Text +' a ' + RxDataFinal.Text +' e filtro personalizado: ' +cxGrid1DBTableView1.DataController.Filter.FilterCaption;
     CdsPesquisaPagar.Filter := 'PPC_EXCLUSAO <> ''S'' and ' +complFiltro ;
    end
    else
    begin
      cdsPesquisaPagar.Filter := 'PPC_EXCLUSAO <> ''S''';
      sFiltro := RxDataInicial.Text +' a ' + RxDataFinal.Text;
    end;

     CdsPesquisaPagar.IndexName := 'PAGAR';
     CdsPesquisaPagar.Filtered := False;
     CdsPesquisaPagar.Filtered := true;
     if (CdsPesquisaPagar.IsEmpty) then
        begin
           uteis.aviso('Não existe parcelas para serem impressas');
        end
     else
        frxReportReceber.ShowReport();
     CdsPesquisaPagar.Filtered := False;
   Finally
      CdsPesquisaPagar.Filtered := False;
      CdsPesquisaPagar.IndexName := '';
      CdsPesquisaPagar.EnableControls;
   End;
end;

procedure TFormContasPagarGrid.miPagarAgrupadoClick(Sender: TObject);
Var existe : boolean;
 complFiltro: string;
begin
  inherited;
  CdsPagar.Close;
  qPagar.Close;
  qPagar.Sql.Text := qPesquisaPagar.SQL.Text;
  CdsPagar.Open;
   try
     CdsPagar.IndexDefs.Find('FPG_DESCRICAO');
     existe := true;
   except
     existe := false;
   end;
   if not existe then
   with CdsPagar.IndexDefs.AddIndexDef do
   begin
        Name := 'FPG_DESCRICAO';
        Fields := 'FPG_DESCRICAO';
        Options := [];
   end;
   try
       if cxGrid1DBTableView1.DataController.Filter.FilterText<>'' then
      begin
       complFiltro := cxGrid1DBTableView1.DataController.Filter.FilterText;
       sFiltro := RxDataInicial.Text +' a ' + RxDataFinal.Text +' e filtro personalizado: ' +cxGrid1DBTableView1.DataController.Filter.FilterCaption;
       CdsPagar.Filter := 'PPC_EXCLUSAO <> ''S'' and ' +complFiltro ;
      end
      else
      begin
        CdsPagar.Filter := 'PPC_EXCLUSAO <> ''S''';
        sFiltro := RxDataInicial.Text +' a ' + RxDataFinal.Text;
      end;

      CdsPagar.Filtered := false;

      CdsPagar.Filtered := True;
      CdsPagar.DisableControls;
      while not (CdsPagar.GetNextPacket = 0) do
        CdsPagar.GetNextPacket;
       CdsPagar.IndexName :=  'FPG_DESCRICAO';
       if (CdsPagar.IsEmpty) then
          begin
             uteis.aviso('Não existe parcelas para serem impressas');
          end
       else
          frxPagarpoForma.ShowReport();
       CdsPagar.Filtered := false;
    finally
      CdsPagar.IndexName := '';
      CdsPagar.EnableControls;
    end;

end;

procedure TFormContasPagarGrid.PagarAgrupadoPorBancoClick(Sender: TObject);
Var existe : boolean;
 complFiltro: string;
begin
  inherited;
  CdsPagar.Close;
  qPagar.Close;
  qPagar.Sql.Text := qPesquisaPagar.SQL.Text;
  CdsPagar.Open;
   try
     CdsPagar.IndexDefs.Find('BAN_APELIDO');
     existe := true;
   except
     existe := false;
   end;
   if not existe then
   with CdsPagar.IndexDefs.AddIndexDef do
   begin
        Name := 'BAN_APELIDO';
        Fields := 'BAN_APELIDO';
        Options := [];
   end;
  try
     if cxGrid1DBTableView1.DataController.Filter.FilterText<>'' then
    begin
     complFiltro := cxGrid1DBTableView1.DataController.Filter.FilterText;
     sFiltro := RxDataInicial.Text +' a ' + RxDataFinal.Text +' e filtro personalizado: ' +cxGrid1DBTableView1.DataController.Filter.FilterCaption;
     CdsPagar.Filter := 'PPC_EXCLUSAO <> ''S'' and ' +complFiltro ;
    end
    else
    begin
      CdsPagar.Filter := 'PPC_EXCLUSAO <> ''S''';
      sFiltro := RxDataInicial.Text +' a ' + RxDataFinal.Text;
    end;

    CdsPagar.Filtered := false;
    CdsPagar.Filtered := True;
    CdsPagar.DisableControls;
    while not (CdsPagar.GetNextPacket = 0) do
      CdsPagar.GetNextPacket;
     CdsPagar.IndexName := 'BAN_APELIDO';
     if (CdsPagar.IsEmpty) then
        begin
           uteis.aviso('Não existe parcelas para serem impressas');
        end
     else
        frxPagarPorBanco.ShowReport();
     CdsPagar.Filtered := false;
  finally
    CdsPagar.IndexName := '';
    CdsPagar.EnableControls;
  end;
end;

procedure TFormContasPagarGrid.RxDataFinalExit(Sender: TObject);
begin
  inherited;
   if (RxDataInicial.Date <> 0) and (RxDataFinal.Date <> 0  ) then
    BuscarLanctos;
end;

procedure TFormContasPagarGrid.RxDataInicialChange(Sender: TObject);
begin
  inherited;
//  if (RxDataInicial.Date <> 0) and (RxDataFinal.Date <> 0  ) then
//    BuscarLanctos;

end;

procedure TFormContasPagarGrid.RxDataInicialExit(Sender: TObject);
begin
  inherited;
  if (RxDataInicial.Date <> 0) and (RxDataFinal.Date <> 0  ) then
    BuscarLanctos;
end;

procedure TFormContasPagarGrid.SelecionarTodas1Click(Sender: tObject);
begin
   MarcaDesmarcaTodas(True);
end;

procedure TFormContasPagarGrid.DesmarcarTodas1Click(Sender: tObject);
begin
   MarcaDesmarcaTodas(False);
end;

procedure TFormContasPagarGrid.edtOutrosKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (key=#13)  and (edtOutros.Text <> '') and (cbbOutros.ItemIndex <> -1) then
    BuscarLanctos;
end;


procedure TFormContasPagarGrid.ExportarparaCSV1Click(Sender: TObject);
var
  lista: TStringList;
begin
  inherited;
  cdsExportaExcel.Close;
  cdsExportaExcel.Open;
  lista := TStringList.Create;
  lista.Add('PAG_CODIGO');
  lista.Add('PPC_NUMER');
  lista.Add('PPC_NPARCELAS');
  lista.Add('PPC_DTEMIS');
  lista.Add('PPC_VENCTO');
  lista.Add('PPC_PAGTO');
  lista.Add('PPC_VLPARC');
  lista.Add('PPC_VLPAGO');
  lista.Add('PAG_VLNOTA');
  lista.Add('FOR_CGC');
  lista.Add('FOR_RAZAO');
  lista.Add('CONTA_BANCARIA');
  lista.Add('FPG_DESCRICAO');
  lista.Add('CCT_DESCRICAO');
  lista.Add('PAG_NUMDOC');
  lista.Add('PCX_DESCRI');

  CriaCSV(dsExportaExcel, lista, Self);

end;

procedure TFormContasPagarGrid.BitPagamentosClick(Sender: tObject);
begin
   FormContasPagarBaixas := TFormContasPagarBaixas.Create(Application);
   try
      FormContasPagarBaixas.BotoesAcesso;
      FormContasPagarBaixas.ShowModal;
   finally
      FormContasPagarBaixas.Destroy;
      FormContasPagarBaixas := Nil;      
   end;
end;

end.
