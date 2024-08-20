unit uPedidoItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, bASEdBeSTOQUEfORM,
  Dialogs, ExtCtrls, StdCtrls, Mask, SqlExpr,SqlClientDataSet, Provider,
  DB, DBClient, DBLocal, DBLocalS, Grids, DBGrids, ComboBoxRw, Math,StrUtils,
  JvExMask, JvSpin, IndTipoRetorno, ComCtrls,  ImgList, FMTBCd,
  SgDbSeachComboUnit, System.ImageList, SimpleDS, Data.DBXFirebird, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, BaseForm, cxGraphics, Vcl.Buttons, Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Comp.Client, FireDAC.Comp.DataSet, system.IniFiles, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, system.UITypes, JvExStdCtrls, JvEdit, JvValidateEdit,
  Vcl.Samples.Spin,  System.Threading, JvToolEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue;

type
  TFrmPedidoItem = class(TfrmBaseDbEstoque)
    pAcoes: TPanel;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    BtnCompraVenda: TBitBtn;
    BtnCadastroProduto: TSpeedButton;
    Label18: TLabel;
    CdsDiretivasMemo: TClientDataSet;
    CdsDiretivasMemoEMP_CODIGO: TStringField;
    CdsDiretivasMemoPRDD_REGISTRO: TIntegerField;
    CdsDiretivasMemoPRDD_DESCRICAO: TStringField;
    CdsDiretivasMemoPDI_REGISTRO: TIntegerField;
    CdsDiretivasMemoPRF_REGISTRO: TIntegerField;
    dsDiretivasMemo: TDataSource;
    imgListDiretivas: TImageList;
    qPrecos: TSQLQuery;
    qLoteProduto: TSQLQuery;
    qTipoIndustrializacao: TSQLQuery;
    qItens: TSQLQuery;
    qItensPRD_CODIGO: TStringField;
    qItensPRD_REFER: TStringField;
    qItensPRD_DESCRI: TStringField;
    qItensPRD_CODBARRA: TStringField;
    qItensPRD_PRODSERV: TStringField;
    qItensPRD_UND: TStringField;
    qItensLIN_DESCRI: TStringField;
    qGrade: TSQLQuery;
    qLoteProdutoPRDL_REGISTRO: TIntegerField;
    qLoteProdutoPRDL_LOTE: TStringField;
    qLoteProdutoPRDL_DATA_VALIDADE: TDateField;
    qLoteProdutoPRDL_SALDO: TFMTBCdField;
    qLoteProdutoPRDL_DATA_FABRICACAO: TDateField;
    qItensb: TSQLQuery;
    qItensc: TSQLQuery;
    qItenscPRD_CODIGO: TStringField;
    qItenscPRD_REFER: TStringField;
    qItenscPRD_DESCRI: TStringField;
    qItenscPRD_CODBARRA: TStringField;
    qItenscPRD_PRODSERV: TStringField;
    qItenscPRD_UND: TStringField;
    qItenscLIN_DESCRI: TStringField;
    qItenscPRDE_ENDERECO: TStringField;
    qItensbPRD_CODIGO: TStringField;
    qItensbPRD_REFER: TStringField;
    qItensbPRD_DESCRI: TStringField;
    qItensbPRD_CODBARRA: TStringField;
    qItensbPRD_PRODSERV: TStringField;
    qItensbPRD_UND: TStringField;
    qItensbPRDC_REFERENCIA: TStringField;
    qItensbPRDCO_CODIGO_ORIGINAL: TStringField;
    qItensPRD_PVENDA: TFMTBCdField;
    qItensbPRD_PVENDA: TFMTBCdField;
    qItenscPRD_PVENDA: TFMTBCdField;
    qItensPRDCO_CODIGO_ORIGINAL: TStringField;
    qItenscPRDCO_CODIGO_ORIGINAL: TStringField;
    qItensbLIN_DESCRI: TStringField;
    CdsSaldos: TClientDataSet;
    SqlCdsSaldosEMP_CODIGO: TStringField;
    SqlCdsSaldosEMP_RAZAO: TStringField;
    SqlCdsSaldosSALDO: TFMTBCdField;
    qSaldos: TSQLQuery;
    dspSaldos: TDataSetProvider;
    dsSaldos: TDataSource;
    dsSaldoLote: TDataSource;
    sqlCC: TSQLQuery;
    dspCC: TDataSetProvider;
    cdsCC: TClientDataSet;
    sqlCCCODIGO: TStringField;
    sqlCCTIPO: TStringField;
    sqlCCCONTA: TStringField;
    sqlCCDOCUMENTO: TStringField;
    sqlCCDESCRICAO: TStringField;
    sqlCCVALOR: TFMTBCDField;
    sqlCCVALOR_UTILIZADO: TFMTBCDField;
    sqlCCLANCADO: TStringField;
    sqlCCUSU_CODIGO: TIntegerField;
    sqlCCCOD_VENDEDOR: TStringField;
    sqlCCCOD_CLIENTE: TStringField;
    sqlCCCOD_FORNECEDOR: TStringField;
    sqlCCCANCELAMENTO: TStringField;
    sqlCCMOTIVO_CANCELAMENTO: TStringField;
    sqlCCUSUARIO_CANCELAMENTO: TIntegerField;
    cdsCCCODIGO: TStringField;
    cdsCCTIPO: TStringField;
    cdsCCCONTA: TStringField;
    cdsCCDOCUMENTO: TStringField;
    cdsCCDESCRICAO: TStringField;
    cdsCCVALOR: TFMTBCDField;
    cdsCCVALOR_UTILIZADO: TFMTBCDField;
    cdsCCLANCADO: TStringField;
    cdsCCUSU_CODIGO: TIntegerField;
    cdsCCCOD_VENDEDOR: TStringField;
    cdsCCCOD_CLIENTE: TStringField;
    cdsCCCOD_FORNECEDOR: TStringField;
    cdsCCCANCELAMENTO: TStringField;
    cdsCCMOTIVO_CANCELAMENTO: TStringField;
    cdsCCUSUARIO_CANCELAMENTO: TIntegerField;
    cdsItemGrade: TClientDataSet;
    dsItemGrade: TDataSource;
    pDetalhesItem: TPanel;
    cdsItemGradePRG_DESCRICAO: TStringField;
    cdsItemGradeIPI: TIntegerField;
    dspItemGrade: TDataSetProvider;
    sItemGrade: TSQLQuery;
    cdsItemGradePRG_REGISTRO: TIntegerField;
    cdsItemGradePRG_SALDO: TFMTBCDField;
    cdsItemGradePRG_QTDE: TFMTBCDField;
    cdsItemGradePRG_BRUTO: TFMTBCDField;
    cdsItemGradePRD_DESC: TFMTBCDField;
    sItemGradePRG_REGISTRO: TIntegerField;
    sItemGradePRD_CODIGO: TStringField;
    sItemGradePRG_SALDO: TFMTBCDField;
    sItemGradePRG_DESCRICAO: TStringField;
    sItemGradePRG_REDUCAO_PERCENT: TFMTBCDField;
    sItemGradePRG_INDICE: TFMTBCDField;
    sItemGradePRG_QTDE: TFMTBCDField;
    sItemGradePRG_BRUTO: TFMTBCDField;
    sItemGradePRECO_LIQU: TFMTBCDField;
    sItemGradePORC_IPI: TIntegerField;
    cdsItemGradePRECO_LIQU: TFMTBCDField;
    cdsItemGradeVLR_TOTAL: TFMTBCDField;
    cdsItemGradeCOMISSAO: TFMTBCDField;
    cdsItemGradeVLR_ST: TFMTBCDField;
    cdsItemGradeVlr_IPI: TFMTBCDField;
    sItemGradePRD_DESC: TFMTBCDField;
    sItemGradePRF_REGISTRO: TIntegerField;
    sItemGradeAMX_CODIGO: TStringField;
    cdsItemGradePRD_CODIGO: TStringField;
    cdsItemGradePRG_REDUCAO_PERCENT: TFMTBCDField;
    cdsItemGradePRG_INDICE: TFMTBCDField;
    cdsItemGradePRF_REGISTRO: TIntegerField;
    cdsItemGradeAMX_CODIGO: TStringField;
    sItemGradePRF_QTDEFAT: TFMTBCDField;
    cdsItemGradePRF_QTDEFAT: TFMTBCDField;
    cdsItemGradePRF_QTDE_ENV_PRODUCAO: TFMTBCDField;
    sItemGradePRF_QTDE_ENV_PRODUCAO: TFMTBCDField;
    sItemGradePRG_QTDEAnterior: TFMTBCDField;
    cdsItemGradePRG_QTDEAnterior: TFMTBCDField;
    GbBusca: TPanel;
    pBuscaProdutos: TPanel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label37: TLabel;
    Label36: TLabel;
    cbFiltroPreco: TCheckBox;
    cbReferencia: TSgDbSearchCombo;
    cbDescricao: TSgDbSearchCombo;
    cbBarras: TSgDbSearchCombo;
    cbCodigos: TSgDbSearchCombo;
    cbEndereco: TSgDbSearchCombo;
    sItemGradePERCENTSTPRODUTO: TFMTBCDField;
    cdsItemGradePERCENTSTPRODUTO: TFMTBCDField;
    pgcPrincipal: TPageControl;
    tsSemGrade: TTabSheet;
    pgc2: TPageControl;
    tsInfoLancamento: TTabSheet;
    lblTabelaPreco: TLabel;
    Label5: TLabel;
    lbQuantidade: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Label22: TLabel;
    lbl1: TLabel;
    Label13: TLabel;
    Label17: TLabel;
    Label12: TLabel;
    Label16: TLabel;
    Label14: TLabel;
    SpeedButton1: TSpeedButton;
    lbVerba: TLabel;
    EdAlmoxarifadoCodigo: TEdit;
    CbAlmoxarifado: TComboBoxRw;
    CbItemAgregado: TCheckBox;
    grpB2B: TGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    edtPedidoB2B: TEdit;
    SpinItemB2B: TJvSpinEdit;
    grpTipoInd: TGroupBox;
    SpeedButton2: TSpeedButton;
    cxLookupComboBox1: TSgDbSearchCombo;
    tsDiretivas: TTabSheet;
    Panel1: TPanel;
    Button1: TButton;
    gbPrecos: TGroupBox;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    lbComissao: TLabel;
    gbSaldoEstoque: TGroupBox;
    gbSaldo: TDBGrid;
    Panel3: TPanel;
    Label19: TLabel;
    btnTransferencia: TButton;
    tsComGrade: TTabSheet;
    dbgLancarinfo: TDBGrid;
    ptotais: TPanel;
    Label31: TLabel;
    Label42: TLabel;
    pInfoProduto: TPanel;
    ImgProduto: TImage;
    Label1: TLabel;
    Label2: TLabel;
    lGrade: TLabel;
    Label3: TLabel;
    SdCadastroGrade: TSpeedButton;
    Label4: TLabel;
    MemoDescricao: TMemo;
    EdReferencia: TEdit;
    pnlGrade: TPanel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    lblMedida1: TLabel;
    lblMedida2: TLabel;
    lblMedida3: TLabel;
    lblPrecoMedida: TLabel;
    MemoComplemento: TMemo;
    pnDirect: TPanel;
    Label32: TLabel;
    btnDiretiva: TSpeedButton;
    CbDiretiva: TComboBoxRw;
    edDiretivaSigla: TMaskEdit;
    EdReferenciaOriginal: TEdit;
    pnLoteProduto: TPanel;
    LblLote: TLabel;
    Label38: TLabel;
    CbLoteProduto: TSgDbSearchCombo;
    cbMedInterno: TSgDbSearchCombo;
    lbDesc1: TLabel;
    lbDesc2: TLabel;
    cbMedExterno: TSgDbSearchCombo;
    lbDesc3: TLabel;
    cbMedAltura1: TSgDbSearchCombo;
    lbDesc4: TLabel;
    cbMedAltura2: TSgDbSearchCombo;
    EdVariacao: TEdit;
    Label48: TLabel;
    qItensInterno: TFMTBCDField;
    qItensEXTERNO: TFMTBCDField;
    qItensALTURA1: TFMTBCDField;
    qItensALTURA2: TFMTBCDField;
    pnVerba: TPanel;
    Label43: TLabel;
    Label44: TLabel;
    Label41: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Button2: TButton;
    Button3: TButton;
    Panel4: TPanel;
    edUsando: TEdit;
    sbVoltar: TSpeedButton;
    pprazo: TPanel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    lmarkup: TLabel;
    btnCodOriginal: TSpeedButton;
    qTab: TSQLQuery;
    qItensPRD_PVENDA2: TFMTBCDField;
    qItensPRD_PVENDA3: TFMTBCDField;
    qItensPRD_PVENDA4: TFMTBCDField;
    qItensPRD_PVENDA5: TFMTBCDField;
    qItensPRD_PVENDA6: TFMTBCDField;
    qItensbPRD_PVENDA2: TFMTBCDField;
    qItensbPRD_PVENDA3: TFMTBCDField;
    qItensbPRD_PVENDA4: TFMTBCDField;
    qItensbPRD_PVENDA5: TFMTBCDField;
    qItensbPRD_PVENDA6: TFMTBCDField;
    qItenscPRD_PVENDA2: TFMTBCDField;
    qItenscPRD_PVENDA3: TFMTBCDField;
    qItenscPRD_PVENDA4: TFMTBCDField;
    qItenscPRD_PVENDA5: TFMTBCDField;
    qItenscPRD_PVENDA6: TFMTBCDField;
    SQLQuery1: TSQLQuery;
    qTabnome: TStringField;
    qTabPRD_PVENDA: TFMTBCDField;
    qTabPRD_PERC_COMISSAO: TFMTBCDField;
    qTabPRD_PERC_VENDA: TFMTBCDField;
    qTabseq: TIntegerField;
    qTabtab_registro: TStringField;
    dsTabelaPreco: TDataSource;
    cbTabelaPrecoMultiplo: TcxLookupComboBox;
    dspTabPreco: TDataSetProvider;
    cdsTabelas: TClientDataSet;
    cdsTabelasnome: TStringField;
    cdsTabelasPRD_PVENDA: TFMTBCDField;
    cdsTabelasPRD_PERC_COMISSAO: TFMTBCDField;
    cdsTabelasPRD_PERC_VENDA: TFMTBCDField;
    cdsTabelasseq: TIntegerField;
    cdsTabelastab_registro: TStringField;
    qItensestoque: TFMTBCDField;
    CdsSaldosAMX_CODIGO: TStringField;
    Pendente: TLabel;
    ChkSemValor: TCheckBox;
    CurQuantidade: TJvValidateEdit;
    CurPrecoBruto: TJvValidateEdit;
    CurDesconto: TJvValidateEdit;
    CurPrecoLiquido: TJvValidateEdit;
    CurPercentIPI: TJvValidateEdit;
    CurValorST: TJvValidateEdit;
    edtPercentStProduto: TJvValidateEdit;
    CurrAcrescimoReal: TJvValidateEdit;
    CurDescontoAdicional: TJvValidateEdit;
    CurTotal: TJvValidateEdit;
    CurValorIPI: TJvValidateEdit;
    CurComissao: TJvValidateEdit;
    CurSaldo: TJvValidateEdit;
    CurVerba: TJvValidateEdit;
    CurUsarValor: TJvValidateEdit;
    CurTotVerba: TJvValidateEdit;
    CurPossivel: TJvValidateEdit;
    CurUsarPerc: TJvValidateEdit;
    CurrPesoKG: TJvValidateEdit;
    CurrPesoIndividual: TJvValidateEdit;
    CurMarkup: TJvValidateEdit;
    CurrPendente: TJvValidateEdit;
    edPreTab: TJvValidateEdit;
    edPrePromo: TJvValidateEdit;
    edPreEspe: TJvValidateEdit;
    edPreco: TJvValidateEdit;
    CurrencyEdit1: TJvValidateEdit;
    CurTotalEstoqueEmpresa: TJvValidateEdit;
    totalGrade: TJvValidateEdit;
    ptotal: TJvValidateEdit;
    RxDBGrid1: TDBGrid;
    edPrazo: TSpinEdit;
    CurSaldoLote: TJvValidateEdit;
    LOFERTA1: TLabel;
    tsTratamentoTermico: TTabSheet;
    edtipo: TEdit;
    Label11: TLabel;
    Label53: TLabel;
    Label52: TLabel;
    edsuperficial: TEdit;
    Label55: TLabel;
    edEHT: TEdit;
    Label56: TLabel;
    edDesenho: TEdit;
    edTamanho: TEdit;
    ednucleo: TEdit;
    edProfundidade: TEdit;
    Label60: TLabel;
    edMaterial: TEdit;
    Label59: TLabel;
    Label58: TLabel;
    Label57: TLabel;
    edPeso: TJvValidateEdit;
    pUltimoPreco: TPanel;
    edQtdeItens: TJvValidateEdit;
    Label54: TLabel;
    edLoteVarios: TEdit;
    PRF_PRAZO_ENTREGA: TJvDateEdit;
    Label61: TLabel;
    qItensPRD_EMBALA: TStringField;
    lbPeso: TLabel;
    CurPeso: TJvValidateEdit;
    qUnidade: TSQLQuery;
    dsUnidade: TDataSource;
    cbUnidade: TSgDbSearchCombo;
    lbFaturamento: TLabel;
    qCapacidade: TSQLQuery;
    qCor: TSQLQuery;
    lbUnidade: TLabel;
    lbCapacidade: TLabel;
    cbCapacidade: TSgDbSearchCombo;
    lbCor: TLabel;
    cbCor: TSgDbSearchCombo;
    SQLQuery2: TSQLQuery;
    CbGrade: TComboBoxRw;
    cdsItemGradePRG_MEDIDA_1: TFMTBCDField;
    cdsItemGradePRG_MEDIDA_2: TFMTBCDField;
    cdsItemGradePRG_MEDIDA_3: TFMTBCDField;

    procedure Bit_CancelarClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure CurPrecoLiquidoEnter(Sender: tObject);
    procedure CurPrecoBrutoChange(Sender: tObject);
    procedure xCurDescontoChange(Sender: tObject);
    procedure CurDescontoAdicionalChange(Sender: tObject);
    procedure CurPrecoLiquidoExit(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure CurPercentIPIChange(Sender: tObject);
    procedure CbItemAgregadoClick(Sender: tObject);
    procedure MemoDescricaoKeyPress(Sender: tObject; var Key: Char);
    procedure SdCadastroGradeClick(Sender: tObject);
    procedure BtnCompraVendaClick(Sender: tObject);
    procedure BtnCadastroProdutoClick(Sender: tObject);
    procedure btnTransferenciaClick(Sender: tObject);
    procedure CurDescontoExit(Sender: tObject);
    procedure SpeedButton2Click(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure Button1Click(Sender: tObject);
    procedure RxDBGrid1DrawColumnCell(Sender: tObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure RxDBGrid1DblClick(Sender: tObject);
    procedure pgc2Change(Sender: tObject);
    procedure btnDiretivaClick(Sender: tObject);
    procedure EdReferenciaChange(Sender: tObject);
    procedure CurQuantidadeExit(Sender: tObject);
    procedure CbDiretivaExit(Sender: tObject);
    procedure CdsLoteProdutoPRDL_DATA_FABRICACAOGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure GenericSelect(Sender: TObject);
    procedure CbDiretivaSelect(Sender: tObject);
    procedure qItensPRD_PVENDAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure CbAlmoxarifadoSelect(Sender: TObject);
    procedure EdAlmoxarifadoCodigoExit(Sender: TObject);
    procedure cbReferenciaButtonClick(Sender: TObject);
    procedure qLoteProdutoPRDL_LOTEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cbCodigosSelect(Sender: TObject);
    procedure cbFiltroPrecoClick(Sender: TObject);
    procedure qItensAfterScroll(DataSet: TDataSet);
    procedure CurComissaoExit(Sender: TObject);
    procedure CurPrecoBrutoEnter(Sender: TObject);
    procedure CurDescontoAdicionalExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GravaContaCorrente (sOperacao,sTipo, sConta, sDocumento, sDescricao,sLancado, sVendedor, sCliente,sFornecedor,sCanc, sMotivo, sProduto :string;
                                  rValor,rUtilizado:double; iUsuario,iUsuarioCan:integer; dData:TDateTime);
    procedure ExcluiContaCorrente(sProduto,sDocumento:string);
    function ChamaCredito(iOrigem:integer;sVendedor:string):boolean;
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CurUsarPercChange(Sender: TObject);
    procedure pnVerbaExit(Sender: TObject);
    procedure RateioVerba(rValor:double;sVendedor:string);
    procedure CurUsarValorChange(Sender: TObject);
    procedure pgcPrincipalChanging(Sender: TObject; var AllowChange: Boolean);
    procedure cdsItemGradePRD_DESCChange(Sender: TField);
    procedure cdsItemGradePRG_BRUTOChange(Sender: TField);
    procedure dbgLancarinfoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cdsItemGradeIPIChange(Sender: TField);
    procedure cdsItemGradePRG_QTDEValidate(Sender: TField);
    procedure DesabilitarBuscaProduto (Habilita : Boolean);
    procedure cdsItemGradePRG_QTDEChange(Sender: TField);
    procedure cdsItemGradeAfterScroll(DataSet: TDataSet);
    procedure dbgLancarinfoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cdsItemGradeNewRecord(DataSet: TDataSet);
    procedure dbgLancarinfoKeyPress(Sender: TObject; var Key: Char);
    procedure dbgLancarinfoEnter(Sender: TObject);
    procedure dbgLancarinfoExit(Sender: TObject);
    procedure CurQuantidadeChange(Sender: TObject);
    procedure cdsDiretivasMemoAfterOpen(DataSet: TDataSet);
    procedure cbReferenciaSelect(Sender: TObject);
    procedure cbMedInternoChange(Sender: TObject);
    procedure cbMedInternoKeyPress(Sender: TObject; var Key: Char);
    procedure cbMedInternoEnter(Sender: TObject);
    procedure cbDescricaoKeyPress(Sender: TObject; var Key: Char);
    procedure cbDescricaokeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbDescricaoExit(Sender: TObject);
    procedure sbVoltarClick(Sender: TObject);
    procedure MemoComplementoEnter(Sender: TObject);
    procedure MemoComplementoExit(Sender: TObject);
    procedure CurTotalChange(Sender: TObject);
    procedure btnCodOriginalClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure CurPrecoBrutoExit(Sender: TObject);
    procedure CarregaEstadoPesquisa(aPanel:tComponent); overload ;
    procedure cbComboBuscaExit(Sender: TObject);
    procedure CurDescontoEnter(Sender: TObject);
    procedure cbTabelaPrecoMultiploPropertiesChange(Sender: TObject);
    procedure cbTabelaPrecoMultiploEnter(Sender: TObject);
    procedure cbTabelaPrecoMultiploClick(Sender: TObject);
    procedure CbLoteProdutoButtonClick(Sender: TObject);
    procedure CbLoteProdutoSelect(Sender: TObject);
    procedure PRF_PRAZO_ENTREGAExit(Sender: TObject);
    procedure edPrazoChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure cbUnidadeChange(Sender: TObject);
    procedure cbUnidadeExit(Sender: TObject);
    procedure CurPesoExit(Sender: TObject);
    procedure cbCorSelect(Sender: TObject);
    procedure cbCapacidadeSelect(Sender: TObject);
    procedure CurQuantidadeEnter(Sender: TObject);
    procedure cbReferenciaClick(Sender: TObject);
    procedure cbDescricaoClick(Sender: TObject);
    procedure cbBarrasClick(Sender: TObject);
    procedure cbCodigosClick(Sender: TObject);
    procedure cbEnderecoClick(Sender: TObject);
    procedure cbReferenciakeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CbGradeSelect(Sender: TObject);
  private
    prdPVenda: Double;
    pvFlgProcSelect:boolean;
    fPesquisa : boolean;
    fLendo, bUsouVerba:boolean;
    vMascPVenda: string;
    wTabelacomissao : array[1..6] of Real;
    wTabelapreco    : array[1..6] of Real;
    wID_DIRETIVAS: Integer;
    fAutorizado: Boolean;
    wbDiretivaObrigatoria:integer;
    rValorVerba:real;
    bprazoitens : boolean;
		FProdutoGradeIncluido: Boolean;  // alteração de grade
		FExclusaoItensGrade : Boolean; //exclusão de item na grade, colocando-se 0 na quantidade quando houvesse valor
    FProdutoOriginal, // PRODUTO DA TELA ANTERIOR PRD_REFER
    FAlmoxarifado , // ALMOXARIFADO DA TELA ANTERIOR
    FProdutoOrigCodigo, //PRODUTO DA TELA ANTERIOR PRD_CODIGO
    FsTipo : string; // TIPO DE OPERAÇÃO : INCLUSÃO OU ALTERAÇÃO
    FNumeroPedido : string; // numero do pedido da tela anterior
    PrdCoCodigoOriginal, NCMCodigo: string; // Código original =[código do produto] & [boca]*10 & [comprimento] & [espessura]*1000 & [código da cor]
    FRegistroItemAnterior: integer; // registro anterior da tela
		lTabPrinc, lTabSec, lTabPromo, lTabEspe: Integer;
    opv_semlote : boolean ;
    loteCorrente: integer;

    procedure BuscaProduto( const pCodProduto: String);
    procedure Focar;
    procedure AtualizaSaldos;
    procedure CalculaTotais;
    function SetarTabelaPrecos: integer;
    procedure IniciaValores;
    procedure AtualizaGradeInfo;
    function ValidaDesconto:Boolean;
    procedure ItemAgregado;
    function TipoAtualizaEstoque (const prd_refer: string ): boolean;
    function GrupoAtualizaEstoque (const prd_refer: string ): boolean;
    function RetornaPercentualComissao(const wCodITem: String): Currency;
    function CalculaSTItem(total:Currency):Currency;
    procedure CalculaIndiceDesconto;
    procedure SalvaEstadoPesquisaProc(aPanel:tComponent); overload;
    Function BuscaTabelaPrecos:Boolean;
    procedure InicializaTabelasPrecos;
    procedure OpenQueryPrecos(cProduto: string);
    procedure TestaPrecoAbaixoCusto;
    // procedure TestaDescontoUsuario;
    function ConsultaPersonalizada : string;
    function CalculoMargem : currency;
    procedure AlteraLoteProduto  (const Lotes: Variant; registroItem: integer);
    procedure AtualizaSaldoAlmox(const pPrdCodigo, pAmxCodigo: string);
    procedure CarregarGrades(const Prod_Codigo : string);
    procedure VisualGrade(ProdutoUsaGrade, ProdutoKit: boolean;  Inicio: boolean = False);
    procedure SetProdutoGradeIncluido (const Value: Boolean);
    procedure SetExclusaoItensGrade (const Value: Boolean);
    procedure SetProdutoOriginal (const Values : string);
    procedure SetAlmoxarifado (const Values : string);
    procedure SetProdutoOrigCodigo (const Values: string);
    procedure SetsTipo (const Values : string);
    procedure SetNumeroPedido (const Values: string);
    procedure SetRegistroItemAnterior (const Values: Integer);
    procedure AtualizaoTotaisItens; //atualzação de totais dos itens da grade
    procedure HabilitarCamposSemGrade( const pCodProduto: String);
    property ProdutoOriginal: string read FProdutoOriginal write SetProdutoOriginal; //código PRD_REFER da tela anterior do pedido
    property Almoxarifado : string read FAlmoxarifado write SetAlmoxarifado; // almoxarifado da tela anterior
    property ProdutoOrigCodigo :string read FProdutoOrigCodigo write SetProdutoOrigCodigo;
    procedure AtualizaUltimoPreco;
    function BuscaPrecoVenda(pCodigoProduto: string): double;
    function ValidaAgronegocio: boolean;

public
    wDescontoAnt: double;
    disComissao : boolean;
    VariosLote: Variant;
    wLoteUsando, sGradeDescricaoCadastrada:String;
    rPrecoLiquido,rPrecoBruto, rIndiceDesconto: Real;
    AlterouTabelaPrecos: boolean;
    ExisteLote, EntrouTabelaPrecos: boolean;
    CurquantidadeAnterior: double;
    loteAnterior: Integer;
    bRegra: integer;
    property ProdutoGradeIncluido : boolean read FProdutoGradeIncluido write SetProdutoGradeIncluido; // produto já cadastrado tipo grade
    property ExclusaoItensGrade: Boolean read FExclusaoItensGrade write SetExclusaoItensGrade; // produto que foi incluido 0 para item que já havia sido incluido no item
    property sTipo: string read FsTipo write SetSTipo;
    property NumeroPedido : string  read FNumeroPedido write SetNumeroPedido;
    property iRegistroItemAnterior:Integer read FRegistroItemAnterior write SetRegistroItemAnterior;
    property Pesquisa : boolean read fPesquisa write fPesquisa;
    function buscaAliquotaICMS(prdRefer, cfopCodigo: string): double;

	end;

var
	 FrmPedidoItem: TFrmPedidoItem;

implementation

uses DataCad, Prd0006, rwFunc, uPedido, uPedidoDAO, Fat0003,
		 uProdutoCompraVenda, Prd0001, DataMov2, uProdutoDao, KAR0002, uCadastroGrade,
		 DataCad1, uCadastroDiretiva, DiretivasItemForm, INICIODB, uteis, AutorizaForm,  pesqcodigoOriginal, frmPesqLote;

{$R *.dfm}

procedure TFrmPedidoItem.Bit_CancelarClick(Sender: tObject);
begin
  ModalResult:=mrCancel;
  Close;
end;
procedure  TFrmPedidoItem.VisualGrade(ProdutoUsaGrade, ProdutoKit: boolean; Inicio: boolean = False);

begin
	tsSemGrade.TabVisible := False;
	tsComGrade.TabVisible := False;

	tsSemGrade.Visible := True;
	tsComGrade.Visible := True;
	if dbInicio.Empresa.bUtilizaGrade and dbInicio.Empresa.bDigitacaoGradeVendas  then
		 raise Exception.Create('Parâmetro de grade incorreto.'#13+
			'Não pode estar a grade (simples) e multipla habilitada ao mesmo tempo');

// Se for alterar e for grade e kit, não deixar alterar o produto
	pBuscaProdutos.Enabled :=  (not ProdutoGradeIncluido) and  not ((sTipo = 'A') and  (ProdutoKit));
	DesabilitarBuscaProduto( pBuscaProdutos.Enabled) ;

	(* utiliza a grid para incluir ou alterar as grades do produto
		quando nos parametros estiver habilitado para multipla grade e
		quando o produto foi cadastrado para utilizar grades
	*)
	if inicio then
		 pgcPrincipal.Visible := False
	else
	begin
		pgcPrincipal.Visible := True;
	if (dbInicio.Empresa.bDigitacaoGradeVendas and ProdutoUsaGrade) then
	begin
		pgcPrincipal.ActivePage := tsComGrade;
		lGrade.Visible := False;
		CbGrade.Visible := False;
		SdCadastroGrade.Visible := False;
	end   // grade simples
	else
	begin
		if (dbInicio.Empresa.bUtilizaGrade ) then
		begin
			lGrade.Visible := True;
			CbGrade.Visible := True;
      // CbGrade.FiltroTabela := ' prd_codigo = '+QuotedStr(qaux.FieldByName('prd_codigo').AsString); edReferencia.text cbReferencia.IdRetorno
      CbGrade.FiltroTabela := ' prd_codigo = ' + QuotedStr(cbReferencia.IdRetorno);
      // CbGrade.WherePersonalizado := 'WHERE PRD_CODIGO = ' + QuotedStr(cbReferencia.IdRetorno);
      CbGrade.Refresh;
  		SdCadastroGrade.Visible := True;
			pgcPrincipal.ActivePage := tsSemGrade;
		end //não utiliza grade
		else
		begin
			lGrade.Visible := False;
			CbGrade.Visible := False;
			SdCadastroGrade.Visible := False;
			pgcPrincipal.ActivePage := tsSemGrade;
		end;
	 end;
	end;
 if not inicio then
 begin
	 if (Not dbInicio.Empresa.bDiretivaObrigatoria) then  // não usa diretiva simples
		pnDirect.Visible := False
	 else
	 if wbDiretivaObrigatoria<>1 then // diretiva simples
			pnDirect.Visible := False;
 end;

	if 	(pgcPrincipal.ActivePage = tsSemGrade) and not inicio  then
	begin// sem grade ativa outros componetes

		if (Not dbInicio.Empresa.bDiretivaObrigatoriaAba) then  // não usa diretiva em abas
				tsDiretivas.PageControl:=Nil
		 Else
		 if wbDiretivaObrigatoria<>2 then // multiplas diretivas
				tsDiretivas.PageControl:=Nil;
       pprazo.Visible := bprazoitens;
       lblTabelaPreco.Visible   := (dbInicio.Empresa.bHabilitarTabelaPreco);
       cbTabelaPrecoMultiplo.Visible  := ((dbInicio.Empresa.bHabilitarTabelaPreco) and (dbInicio.Empresa.fPMT_MULTTAB <> 'S'));
       cbTabelaPrecoMultiplo.Enabled  := ((dbInicio.Empresa.bHabilitarTabelaPreco) and (dbInicio.Empresa.fPMT_MULTTAB <> 'S'));
       if not pesquisa then
        SpeedButton1.Visible   := (((dbInicio.Empresa.bHabilitarTabelaPreco) or (dbInicio.Empresa.fPMT_MULTTAB = 'S')) and
																	 ChamaCredito(0,FrmPedido.SqlCdsPedidoREP_CODIGO.Value) and (FrmPedido.SqlCdsTipoPedidoOPV_COMISSAO_VERBA.Value = 'S') and
																	(FrmPedido.SqlCdsPedido.FieldByName('GERAR_VERBA').AsString = '1'));

  end;
  grpTipoInd.Visible :=False;
  if not pesquisa then
  begin
   //Vinculação de TYipo de Industrialização
   grpTipoInd.Visible := FrmPedido.SqlCdsTipoPedidoOPV_INDUSTRIALIZACAO.AsString = 'S';
   cxLookupComboBox1.idRetorno := FrmPedido.SqlCdsPedidoItemITT_REGISTRO.asString;
  end;

   if (dbInicio.Empresa.fUSP_ALTERA_COMISSAO) and not disComissao then
   begin
         CurComissao.ReadOnly := False;
         CurComissao.Color := clWhite;
         CurComissao.TabStop := True;
   end
   else
   begin
         CurComissao.Value := 0 ;
         CurComissao.ReadOnly := True;
         CurComissao.Color := $00d7d7d7;
         CurComissao.TabStop := False;
   end;
		 //Produto Agregado
      ChkSemValor.Visible := dbinicio.Empresa.wPMT_PRODUTO_SEM_VALOR;
//		 CbItemAgregado.Visible := dbInicio.Empresa.WPMT_PRODUTO_AGREGADO;
		 BtnCompraVenda.Visible := dbInicio.Empresa.bHabilitaConsultaCompraVenda;

		 if (sTipo <> 'I') then //Incluir
				CurQuantidade.ReadOnly  := not FrmPedido.SqlCdsRetornoInd.IsEmpty;

end;

procedure TFrmPedidoItem.BuscaProduto( const pCodProduto: String);
var lTabPreco : string;
    searchResult : TSearchRec;
    Task: ITask;
begin

	EdReferencia.Clear;
	MemoDescricao.Clear;
	MemoComplemento.Clear;

	ImgProduto.Picture.Assign(Nil);
	ImgProduto.Repaint;


	if (pCodProduto <> '') then
	begin

		OpenAux ( 'SELECT PRD_REFER, prd_codigo,  t2.ipi_aliq, PRD_PVENDA2, PRD_PVENDA3, PRD_PVENDA4, PRD_PVENDA5, PRD_PVENDA6, '+
							'       PRD_PERC_COMISSAO,PRD_PERC_VENDA,PRD_PERC_COMISSAO2,PRD_PERC_VENDA2, PRD_PERC_COMISSAO3, PRD_DESCONTO,'+
							'       PRD_PERC_VENDA3, PRD_PERC_COMISSAO4, PRD_PERC_VENDA4, PRD_PERC_COMISSAO5, PRD_PERC_VENDA5,PRD_PERC_COMISSAO6, PRD_PERC_VENDA6, '+
							'       t1.PRD_COMPL, ' +
//              '       t1.PRD_PCUSTO, ' +
                '    CASE ' +
                '	    WHEN (SELECT PRODUTO_PRECO_EMPRESA FROM SHAREDB) = ''E'' THEN (SELECT FIRST 1 PRD_PE_CUSTOCOMIPI FROM PRD0000_PRECO_EMPRESA ppe WHERE ppe.PRD_CODIGO = T1.PRD_CODIGO ORDER BY PRD_PE_DATA_ATUALIZACAO DESC) ' +
                '        ELSE ' +
                '            CASE ' +
                '	            WHEN (SELECT PMT_CALCULARPV  FROM PRMT0001 pmt WHERE pmt.EMP_CODIGO = T1.EMP_CODIGO ) = 0 THEN t1.PRD_PCUSTO ' +
                '                WHEN (SELECT PMT_CALCULARPV  FROM PRMT0001 pmt WHERE pmt.EMP_CODIGO = T1.EMP_CODIGO ) = 1 THEN t1.PRD_CUSTOCOMIPI ' +
                '                WHEN (SELECT PMT_CALCULARPV  FROM PRMT0001 pmt WHERE pmt.EMP_CODIGO = T1.EMP_CODIGO ) = 2 THEN t1.PRD_PMEDIO ' +
                '	        END ' +
                '    END AS PRD_PCUSTO, ' +
              '       t1.PRD_MARGEMVENDA, t1.PRD_GRADE_OBRIGATORIO, t1.PRD_CUSTOCOMIPI, PRD_PMEDIO,   '+
							'       T3.pti_sigla, t1.PRD_ORIGEM, t1.IPI_CODIGO, t4.IPI_VALOR_POR_ITEM, t1.STB_TRIBUTACAO, '+
							'       t1.PRD_ALIQICM, t1.PRD_ICMSUBS, t1.PRD_TEMSUB, t1.STB_TRIBUTACAO, t5.PGR_COMISS, t1.PRD_GERENCIA_LOTE, T1.PRD_PRODSERV,  t1.PRD_FATOR_PROD, '+
              '       PRD_PRECOOFERTA, PRD_INICIOOFERTA, PRD_FIMOFERTA, PRD_TIPOPECA_TERM, PRD_MATERIAL_TERM, PRD_DUREZASUPERFICIAL_TERM, '+
              ' PRD_DUREZANUCLEO_TERM, PRD_PROFUNDIDADE_TERM, PRD_TAMANHOGRAO_TERM, PRD_EHT_TERM, PRD_DESENHO_TERM, PRD_PESOLIQ, t1.PRD_UND ,PRD_MULTIPLICADOR   ' +
							'FROM prd0000 T1 '+
//              '    inner JOIN PRD_TIPO pt ON (T1.PTI_CODIGO = pt.PTI_CODIGO AND pti_disponivel_vendas = '+ QuotedStr('S')+')'+
              '    inner JOIN PRD_TIPO pt ON (T1.PTI_CODIGO = pt.PTI_CODIGO )'+
							'     left join ipi0000 t2 on (t2.ipi_codigo = t1.ipi_codigo) '+
							'     left join PRD_TIPO T3 on (t3.pti_codigo = t1.pti_codigo) '+
							'     left join IPI0000 t4 on (t4.IPI_CODIGO = t1.ipi_codigo) '+
							'     left join PRD_GRUPO t5 ON t5.PGR_CODIGO = t1.PGR_CODIGO '+
							'Where prd_codigo = '+qStr(pCodProduto)+
							ConcatSe( ' and t1.',dbInicio.ExclusivoSql('PRODUTOS') ) );
    if DBInicio.Empresa.wPMT_PROD_TERMICO and (stipo = 'I') then
    begin
      edtipo.Text :=  qAux.FieldByName('PRD_TIPOPECA_TERM').AsString;
      edMaterial.Text :=  qAux.FieldByName('PRD_MATERIAL_TERM').AsString;
      edsuperficial.Text := qAux.FieldByName('PRD_DUREZASUPERFICIAL_TERM').AsString;
      ednucleo.Text := qAux.FieldByName('PRD_DUREZANUCLEO_TERM').AsString;
      edProfundidade.Text:=  qAux.FieldByName('PRD_PROFUNDIDADE_TERM').AsString;
      edTamanho.Text := qAux.FieldByName('PRD_TAMANHOGRAO_TERM').AsString;
      edEHT.Text:=  qAux.FieldByName('PRD_EHT_TERM').AsString;
      eddesenho.Text := qAux.FieldByName('PRD_DESENHO_TERM').AsString;
      edPeso.Value := qAux.FieldByName('PRD_PESOLIQ').AsFloat;
//      edPeso.Value := iif(FrmPedido.SqlCdsPedidoItemPRF_PESOKG.AsFloat = 0, qAux.FieldByName('PRD_PESOLIQ').AsFloat, FrmPedido.SqlCdsPedidoItemPRF_PESOKG.AsFloat);
      edQtdeItens.Enabled := MatchStr(UpperCase(TRIM(qAux.FieldByName('PRD_UND').AsString)),['KG','GR']) ;

    end;
    CurDesconto.Value := qAux.FieldByName('PRD_DESCONTO').AsFloat;
    CurPrecoBruto.Value := 0;
    if (DBInicio.Empresa.sReferenciaProvisoriaOrcamento = qAux.FieldByName('PRD_REFER').AsString)  and  (FrmPedido.SqlCdsTipoPedidoOPV_VENDA.AsString = 'S') then
    begin
      GeraException('Não pode adicionar um item provisório em vendas.');

    end;

    try

      if FrmPedido.edCliente.CdS.FieldByName('CLI_CODIGO').AsString  <> '' then
      begin
       EdReferenciaOriginal.Text :=
                    BuscaUmDadoSqlAsString('SELECT PRDCO_CODIGO_ORIGINAL FROM PRD_CODIGOORIGINAL '+
                              ' WHERE prd_codigo = '+QuotedStr(pCodProduto) +
                              ' AND CLI_CODIGO = ' +QuotedStr(FrmPedido.edCliente.CdS.FieldByName('CLI_CODIGO').AsString));


      end;
    except
      EdReferenciaOriginal.Text := '';
    end;
		if (not qAux.IsEmpty) then
		begin
      qTab.CommandText := 'Select seq, nome, prd_pvenda, PRD_PERC_COMISSAO ,PRD_PERC_VENDA, tab_registro '+
                         ' from  TABELAPRECOS '+
                         'where prd_pvenda > 0 AND prd_codigo =   '+qStr(pCodProduto)+
                          ConcatSe (' and ',dbInicio.ExclusivoSql('PRODUTOS') ) +
                          '  AND EMP_CODIGO = '+ QuotedStr(DBInicio.Empresa.EMP_CODIGO)
                            ;
      cdsTabelas.Open;
      try
         if DBInicio.GetParametroSistema('PMT_PEDIDO_IND_PLASTICA') = 'S' then
         begin
            OpenAux2('SELECT FIRST 1 PED_DTENTRADA, PRF_PRECO, prf_qtde ' +
                      ' FROM PED_IT01 it ' +
                      '	JOIN PED0000 p ON (p.PED_CODIGO = IT.PED_CODIGO AND IT.EMP_CODIGO = P.EMP_CODIGO)'+
                      ' JOIN NF0001 n ON (n.PED_CODIGO = p.PED_CODIGO) ' +
                      ' JOIN NF_IT01 ni ON (ni.NF_IT_NOTANUMER = n.NF_NOTANUMBER) ' +
                      ' JOIN PRD_GRADE T3 ON (T3.PRG_REGISTRO = ni.PRG_REGISTRO) ' +
                      ' WHERE it.PRD_CODIGO  =  ' + qStr( cbReferencia.idRetorno)+
                      ' AND P.EMP_CODIGO = '+QuotedStr (DBInicio.Empresa.EMP_CODIGO) +
                      '	AND P.CLI_CODIGO = ' +QuotedStr(FrmPedido.edCliente.CdS.FieldByName('CLI_CODIGO').AsString) +
                      ' AND T3.PRG_REGISTRO = ' + FrmPedido.SqlCdsPedidoItemPRG_REGISTRO.AsString +
                      ' AND PED_SITUACAO NOT IN (''F'',''C'') ' +
                      '	AND PRF_QTDEFAT > 0 '+
                      ' ORDER BY P.PED_DTENTRADA DESC '
                      );
             if not qAux2.IsEmpty then
             begin
                pUltimoPreco.Caption  := 'Último preço : '+ FormatFloat('R$ #,###0.00', qaux2.FieldByName('PRF_PRECO').AsFloat) +' - ' +
                                         ' Data : '+ DateToStr(qaux2.FieldByName('PED_DTENTRADA').AsDateTime) + '-'+
                                         ' Qtde : '+ FloatToStr(qaux2.FieldByName('prf_qtde').AsFloat) ;
             end
             else
                pUltimoPreco.Caption := 'Sem vendas faturadas para esta grade.' ;
         end
         else
         if  FrmPedido.edCliente.idretorno <> '' then
         begin
           OpenAux2('SELECT FIRST 1 PED_DTENTRADA, PRF_PRECO, prf_qtde FROM PED_IT01 it ' +
                    '	JOIN PED0000 p ON (p.PED_CODIGO = IT.PED_CODIGO AND IT.EMP_CODIGO = P.EMP_CODIGO)'+
                    ' LEFT JOIN PRD_GRADE T3 ON (T3.PRG_REGISTRO = it.PRG_REGISTRO) ' +
                    ' WHERE it.PRD_CODIGO  =  '+ qStr(pCodProduto)+
                    ' AND P.EMP_CODIGO = '+QuotedStr (DBInicio.Empresa.EMP_CODIGO) +
                    '	AND P.CLI_CODIGO = ' +QuotedStr(FrmPedido.edCliente.CdS.FieldByName('CLI_CODIGO').AsString) +
                    ' AND PED_SITUACAO NOT IN (''F'',''C'') ' +
                    '	AND PRF_QTDEFAT > 0 '+
                    ' ORDER BY P.PED_DTENTRADA DESC '
                    );
            pUltimoPreco.Caption := '' ;
            if not qAux2.IsEmpty then
            begin
              pUltimoPreco.Caption  := 'Último preço : '+ FormatFloat('R$ #,###0.00', qaux2.FieldByName('PRF_PRECO').AsFloat) +' - ' +
                                       ' Data : '+ DateToStr(qaux2.FieldByName('PED_DTENTRADA').AsDateTime) + '-'+
                                       ' Qtde : '+ FloatToStr(qaux2.FieldByName('prf_qtde').AsFloat) ;

            end;
         end
         else
          pUltimoPreco.Visible := False;
      except
        pUltimoPreco.Caption := '';
      end;

      if (CurTotal.Value > 0) and  (qAux.FieldByName('PRD_PCUSTO').AsFloat>0) and (CurQuantidade.Value> 0 ) then
         CurMarkup.Value :=  CalculoMargem;

			EdReferencia.Text := cbReferencia.CdS.FieldByName('prd_refer').AsString;
      if DBInicio.Empresa.wPMT_UTILIZA_CODIGO_ORIG_VD and  (EdReferenciaOriginal.Text <> '') then
        MemoDescricao.Text := cbReferencia.CdS.FieldByName('prd_descri').AsString +  ' ['+ EdReferenciaOriginal.Text  +']'
      else
  			MemoDescricao.Text := cbReferencia.CdS.FieldByName('prd_descri').AsString;


  		MemoComplemento.Text := qAux.FieldByName('PRD_COMPL').AsString;


			if not (dbInicio.Empresa.bDigitacaoGradeVendas) then
				HabilitarCamposSemGrade(pCodProduto);
			VisualGrade(qAux.FieldByName('PRD_GRADE_OBRIGATORIO').AsString = 'S',qAux.FieldByName('pti_sigla').AsString = 'KT');
      if (qAux.FieldByName('PRD_INICIOOFERTA').AsDateTime> 0 ) and (  qAux.FieldByName('PRD_FIMOFERTA').AsDateTime>0) and
        (qAux.FieldByName('PRD_INICIOOFERTA').AsDateTime <= Date) and (qAux.FieldByName('PRD_FIMOFERTA').AsDateTime >= date)
        and (qAux.FieldByName('PRD_PRECOOFERTA').AsFloat > 0 )   then
      begin
        LOFERTA1.Visible := true;
        if qAux.FieldByName('PRD_MULTIPLICADOR').AsFloat > 0 then
          CurPrecoBruto.Value :=  qAux.FieldByName('PRD_PRECOOFERTA').AsFloat*qAux.FieldByName('PRD_MULTIPLICADOR').AsFloat
        else
          CurPrecoBruto.Value :=  qAux.FieldByName('PRD_PRECOOFERTA').AsFloat;
        LOFERTA1.Caption := '* Oferta até '+ DateToStr(qAux.FieldByName('PRD_FIMOFERTA').AsDateTime);
        CurDesconto.Enabled :=  False;
        CurDescontoAdicional.Enabled := False;
      end
      else
         LOFERTA1.Visible := False;

			//sem grid da grade de produto
			if (pgcPrincipal.ActivePage = tsSemGrade)  then
      begin
        If FrmPedido.SqlCdsTipoPedidoOPV_TRANSF_PRECOCUSTO.AsString = 'S' then
        begin
          prdPVenda := BuscaPrecoVenda(pCodProduto);
          if qAux.FieldByName('PRD_MULTIPLICADOR').AsFloat > 0 then
            CurPrecoBruto.Value := prdPVenda * qAux.FieldByName('PRD_MULTIPLICADOR').AsFloat
          else
            CurPrecoBruto.Value := prdPVenda
        end
        else if dbInicio.Empresa.bHabilitarTabelaPreco then
        begin
          if FrmPedido.edCliente.idRetorno='' then
            lTabPreco := 'T1'
          else
          if (sTipo = 'I') then //Incluir
            lTabPreco := FrmPedido.edCliente.CdS.FieldByName('CLI_TABPRECO').AsString
          Else
            lTabPreco := FrmPedido.SqlCdsPedidoItemPRF_TABPRECO.AsString;
          if lTabPreco = '' then
          begin
            prdPVenda := BuscaPrecoVenda(pCodProduto);
            if qAux.FieldByName('PRD_MULTIPLICADOR').AsFloat > 0 then
              CurPrecoBruto.Value := prdPVenda  * qAux.FieldByName('PRD_MULTIPLICADOR').AsFloat
            else
             CurPrecoBruto.Value := prdPVenda;
          end
          else
          begin
            cbTabelaPrecoMultiplo.EditValue :=  IntToStr(GetIndiceTabelaPecos ( lTabPreco ) + 1);
             AlterouTabelaPrecos := True;
             EntrouTabelaPrecos := True;
          end;
        end
        else
        begin
          wTabelapreco[1]  := cbReferencia.CdS.FieldByName('PRD_PVENDA').AsCurrency;
          prdPVenda := BuscaPrecoVenda(pCodProduto);
          if not BuscaTabelaPrecos then // se não for tabelas multiplas
          begin
            if qAux.FieldByName('PRD_MULTIPLICADOR').AsFloat > 0 then
              CurPrecoBruto.Value := prdPVenda * qAux.FieldByName('PRD_MULTIPLICADOR').AsFloat
            else
             CurPrecoBruto.Value := prdPVenda;
          end
          else if CurPrecoBruto.Value = 0 then
            CurPrecoBruto.Value := prdPVenda;
        end;
				if (dbInicio.EMPRESA.OPT_SIMPLES <> 'S') then
					CurPercentIPI.Value := qAux.FieldByName('ipi_aliq').AsFloat
				else
					CurPercentIPI.Value := 0;
				// if ((dbInicio.Empresa.bUtilizaGrade) and (qAux.FieldByName('PRD_GRADE_OBRIGATORIO').AsString = 'S')) then
				//	CbGrade.FiltroTabela := 'prd_codigo = '+qStr(pCodProduto);


			end;

			//Carrega Imagem
       Task := TTask.Create( procedure
       begin
          if FindFirst(DBInicio.Empresa.spmt_CaminhoFoto+'\'+cbReferencia.CdS.FieldByName('PRD_REFER').asstring+'.*', faAnyFile, searchResult) = 0 then
          begin
          // pfoto.Caption := 'Carregando';
           ImgProduto.Picture.LoadFromFile(DBInicio.Empresa.spmt_CaminhoFoto+'\'+searchResult.Name);
           // Le_Imagem_JPEG_toBMP(CdsProdutosPRD_FOTO, ImgProduto);

          end
          else
          begin
            ImgProduto.Picture := nil;

          end;
        end);
      Task.Start;

			CbLoteProduto.FiltroTabela := 'prd_codigo = '+qStr(pCodProduto)+' and PRDL_SALDO>0';

      pnLoteProduto.visible :=  (qAux.FieldByName('PRD_GERENCIA_LOTE').AsString = 'S');
			if (pgcPrincipal.ActivePage = tsComGrade) then
      begin
				CarregarGrades(pCodProduto);
				AtualizaoTotaisItens;
			end;
		 end;
	end
	 else
      pnLoteProduto.visible := False;

end;

Function TFrmPedidoItem.BuscaTabelaPrecos:Boolean;
begin
 if (pgcPrincipal.ActivePage = tsSemGrade) then
 begin

		 result := ( dbInicio.empresa.fPmt_multTab='S' );
		 if result then
		 begin
					OpenQueryPrecos( cbReferencia.idRetorno );

					if qPrecos.fields[1].AsCurrency>0 then
						 edPreTab.Value := qPrecos.fields[1].AsFloat
					else
						 edPreTab.Value := qPrecos.fields[0].AsFloat;

					edPrePromo.Value := qPrecos.fields[2].AsFloat;
					edPreEspe.Value := qPrecos.fields[3].AsFloat;

					if qPrecos.fields[3].AsFloat<>0 then // preço especial
						 edPreco.Value := qPrecos.fields[3].AsFloat
					else
					if qPrecos.fields[2].AsFloat<>0 then // preço promo
						 edPreco.Value := qPrecos.fields[2].AsFloat
					else
						 edPreco.Value := edPreTab.Value;
          if not pesquisa then
          begin
            if not disComissao then
            begin
              if qPrecos.fields[4].AsFloat>0 then //  comissao
                if (FrmPedido.rComissaoDoPrazo <= qPrecos.fields[4].AsFloat) and (FrmPedido.SqlCdsTipoPedidoOPV_COMISSAO_VERBA.Value = 'S') then
                  CurComissao.Value := qPrecos.fields[4].AsFloat + FrmPedido.rComissaoDoPrazo;

              if qPrecos.fields[5].AsFloat>0 then //  comissao
                if (FrmPedido.rComissaoDoPrazo <= qPrecos.fields[5].AsFloat) and (FrmPedido.SqlCdsTipoPedidoOPV_COMISSAO_VERBA.Value = 'S') then
                  CurComissao.Value := qPrecos.fields[5].AsFloat + FrmPedido.rComissaoDoPrazo;

              if qPrecos.fields[6].AsFloat>0 then //  comissao
                if (FrmPedido.rComissaoDoPrazo <= qPrecos.fields[6].AsFloat) and (FrmPedido.SqlCdsTipoPedidoOPV_COMISSAO_VERBA.Value = 'S') then
                  CurComissao.Value := qPrecos.fields[6].AsFloat + FrmPedido.rComissaoDoPrazo;

              if qPrecos.fields[7].AsFloat>0 then //  comissao
                if (FrmPedido.rComissaoDoPrazo <= qPrecos.fields[7].AsFloat) and (FrmPedido.SqlCdsTipoPedidoOPV_COMISSAO_VERBA.Value = 'S') then
                  CurComissao.Value := qPrecos.fields[7].AsFloat + FrmPedido.rComissaoDoPrazo;
            end
            else
               CurComissao.Value := 0 ;


            if qPrecos.fields[8].AsFloat>0 then // verba
              if (FrmPedido.rVerbaDoPrazo <= qPrecos.fields[8].AsFloat) and (FrmPedido.SqlCdsTipoPedidoOPV_COMISSAO_VERBA.Value = 'S') then
                CurVerba.Value := qPrecos.fields[8].AsFloat + FrmPedido.rVerbaDoPrazo;

            if qPrecos.fields[9].AsFloat>0 then // verba
              if (FrmPedido.rVerbaDoPrazo <= qPrecos.fields[9].AsFloat) and (FrmPedido.SqlCdsTipoPedidoOPV_COMISSAO_VERBA.Value = 'S') then
                CurVerba.Value := qPrecos.fields[9].AsFloat + FrmPedido.rVerbaDoPrazo;

            if qPrecos.fields[10].AsFloat>0 then // verba
              if (FrmPedido.rVerbaDoPrazo <= qPrecos.fields[10].AsFloat) and (FrmPedido.SqlCdsTipoPedidoOPV_COMISSAO_VERBA.Value = 'S') then
                CurVerba.Value := qPrecos.fields[10].AsFloat + FrmPedido.rVerbaDoPrazo;

            if qPrecos.fields[11].AsFloat>0 then // verba
              if (FrmPedido.rVerbaDoPrazo <= qPrecos.fields[11].AsFloat) and (FrmPedido.SqlCdsTipoPedidoOPV_COMISSAO_VERBA.Value = 'S') then
                CurVerba.Value := qPrecos.fields[11].AsFloat + FrmPedido.rVerbaDoPrazo;
          end;
          if qAux.FieldByName('PRD_MULTIPLICADOR').AsFloat > 0 then
            CurPrecoBruto.Value :=  edPreco.Value * qAux.FieldByName('PRD_MULTIPLICADOR').AsFloat
          else
  					CurPrecoBruto.Value := edPreco.Value;

					qPrecos.Close;
		 end;
 end;
end;


procedure TFrmPedidoItem.FormShow(Sender: tObject);
begin
	inHerited;
  //Verifica se pode alterar Comissão
 Bit_Gravar.Enabled := True;
 edLoteVarios.Text := '';
 disComissao := False;
 CurQuantidade.DecimalPlaces := DBInicio.Empresa.fPMT_QTDE_DEC_PED;
 CurPrecoLiquido.DecimalPlaces := DBInicio.Empresa.fPMT_QTDE_DEC_PED;
 CurPrecoBruto.DecimalPlaces := DBInicio.Empresa.fPMT_QTDE_DEC_PED;
 if frmPedido = nil then
  abort;
 if FrmPedido.edCliente.idRetorno <> '' then
 begin
    disComissao :=
       BuscaUmDadoSqlAsString('select CLI_SEMCOMISSAO from CLI0000 where cli_codigo = '+ QuotedStr(FrmPedido.edCliente.idRetorno)) = 'S';

 end;
	bUsouVerba := false;
	rValorVerba := 0;
	BtnCadastroProduto.Visible := dbInicio.Empresa.bCadastroProdutoVenda;
	grpB2B.Visible := dbInicio.Empresa.bUtilizaB2B;
	btnTransferencia.Enabled := dbInicio.Empresa.bTransferenciaKardexVenda;
  tsTratamentoTermico.TabVisible :=  DBInicio.empresa.wPMT_PROD_TERMICO;
  VisualGrade(False,False, True);
  if not Pesquisa then
    IniciaValores
  else
    cbReferencia.SetFocus;
  if DBInicio.Empresa.wPMT_MEM_PESQPED then
     CarregaEstadoPesquisa(pBuscaProdutos);
  //  cbDescricao.SetFocus;
  //  cbDescricao.Text :='ACO';

  if DBInicio.GetParametroSistema('PMT_PEDIDO_IND_PLASTICA') = 'S' then
  begin
    lbPeso.Visible := True;
    cbUnidade.Visible := True;
    lbUnidade.Visible := True;
    cbCapacidade.Visible := True;
    lbCapacidade.Visible := True;
    cbCor.Visible := True;
    lbCor.Visible := True;
    CurPeso.Visible := True;
    lbQuantidade.Top := lbQuantidade.Top - 4;
    lbFaturamento.Top := lbFaturamento.Top - 4;
    lbFaturamento.Visible := True;
    // cbCapacidade.WherePersonalizado := ' WHERE CAP_CODIGO > 0 ';
  end;

  CurquantidadeAnterior := FrmPedido.SqlCdsPedidoItemPRF_QTDE.AsFloat;
  loteAnterior := FrmPedido.SqlCdsPedidoItemPRDL_REGISTRO.AsInteger;

end;

procedure TFrmPedidoItem.AtualizaSaldos;
begin
  AtualizaSaldoAlmox( cbReferencia.idRetorno, cbAlmoxarifado.idRetorno );
  BuscaTabelaPrecos;
end;


procedure TFrmPedidoItem.CurPrecoLiquidoEnter(Sender: tObject);
begin
		if (DBInicio.Empresa.wPMT_VALOR_KIT) and (qAux.FieldByName('pti_sigla').AsString = 'KT') and
			 (not CbItemAgregado.Checked) and (DBInicio.Empresa.wPMT_ITENS_KIT) then
		CurPrecoLiquido.ReadOnly := true
	else
  	CurPrecoLiquido.ReadOnly := false;

	 rPrecoLiquido := CurPrecoLiquido.Value;
end;

procedure TFrmPedidoItem.CalculaTotais;
var
  lValor: Currency ;
//  indice: double;
begin
	if (pgcPrincipal.ActivePage = tsSemGrade) then
  begin
		 if (cbReferencia.idRetorno<>'') and (CurQuantidade.Value > 0 ) then
		 begin

				CalculaIndiceDesconto;
        if rIndiceDesconto>0 then
  				CurPrecoLiquido.Value := Uteis.RoundTo((CurPrecoBruto.Value *( 1- (rIndiceDesconto /100))),-5)
        else
          CurPrecoLiquido.Value :=  CurPrecoBruto.Value;

//        if cbGrade.IdRetorno <> '' then
//          indice := BuscaUmDadoSqlAsFloat('SELECT PRG_INDICE FROM PRD_GRADE WHERE PRG_REGISTRO = ' + QuotedStr(cbGrade.IdRetorno) )
//        else
//          indice := 0;

//        if indice > 0 then
//  				CurTotal.Value := CurPrecoLiquido.Value * CurQuantidade.Value * indice
//        else
          CurTotal.Value := CurPrecoLiquido.Value * CurQuantidade.Value;


				CurValorIPI.Value := 0;
				lValor := qAux.FieldByName('IPI_VALOR_POR_ITEM').asCurrency;
//        lValor := BuscaUmDadoSqlAsCurrency(
//                    'SELECT ipi.IPI_VALOR_POR_ITEM ' +
//                    '  FROM PRD0000 PR ' +
//                    '  JOIN IPI0000 ipi on (ipi.IPI_CODIGO = pr.IPI_CODIGO) ' +
//                    ' WHERE PRD_CODIGO = ' + QuotedStr(cbReferencia.idRetorno) )
                    ;
				if lValor > 0 then
						 CurValorIPI.Value := lValor * CurQuantidade.Value
				else
				if (CurPercentIPI.Value > 0) then
						 CurValorIPI.Value := CurTotal.Value * (CurPercentIPI.Value/100);


				CurValorST.Value := CalculaSTItem(CurTotal.Value+CurValorIPI.Value);

				try
				 edtPercentStProduto.Value := (CurValorST.Value * 100) / CurTotal.Value;
				except
					edtPercentStProduto.Value := 0;
				end;
		 end
	end;
end;


function TFrmPedidoItem.CalculoMargem: currency;
var imposto,prazo : real;
  MARGEM, preco: DOUBLE;
begin
   result := 0 ;
   if DBInicio.Empresa.wPMT_CALCULO_MARGEM_VENDA = 1 then  //calculo simples
   begin
     // rCusto :=  CdsItemPedidoPRF_CUSTO.AsFloat;

     if not DBInicio.Exclusivo( 'PRODUTO_PRECO_EMPRESA' )  then
     begin
       if dbInicio.Empresa.wCalcularPV = 0 then
         preco :=  ((CurTotal.Value / (qAux.FieldByName('PRD_PCUSTO').AsFloat*CurQuantidade.Value))  - 1) * 100
       else  if dbInicio.Empresa.wCalcularPV = 1 then
         preco :=  ((CurTotal.Value / (qAux.FieldByName('PRD_CUSTOCOMIPI').AsFloat*CurQuantidade.Value))  - 1) * 100
       else  if dbInicio.Empresa.wCalcularPV = 2 then
         preco :=  ((CurTotal.Value / (qAux.FieldByName('PRD_PMEDIO').AsFloat*CurQuantidade.Value))  - 1) * 100;
       MARGEM :=  preco;
     end
     else
     begin
        preco := BuscaUmDadoSqlAsFloat(
               'SELECT FIRST 1  PRD_PE_CUSTOCOMIPI' +
               ' FROM PRD0000_PRECO_EMPRESA ppe ' +
               ' WHERE ppe.PRD_CODIGO = ' + QuotedStr(cbReferencia.CdS.fieldByName('PRD_CODIGO').AsString) +
               ' AND ppe.EMP_CODIGO = ' + QuotedStr(DBInicio.EMP_CODIGO) +
               ' ORDER BY PRD_PE_DATA_ATUALIZACAO DESC '
            );
        MARGEM :=  ((CurTotal.Value / (preco * CurQuantidade.Value))  - 1) * 100;

     end;


 {
     if dbInicio.Empresa.wCalcularPV = 0 then
       MARGEM :=  ((CurTotal.Value / (qAux.FieldByName('PRD_PCUSTO').AsFloat*CurQuantidade.Value))  - 1) * 100
     else  if dbInicio.Empresa.wCalcularPV = 1 then
       MARGEM :=  ((CurTotal.Value / (qAux.FieldByName('PRD_CUSTOCOMIPI').AsFloat*CurQuantidade.Value))  - 1) * 100
     else  if dbInicio.Empresa.wCalcularPV = 2 then
       MARGEM :=  ((CurTotal.Value / (qAux.FieldByName('PRD_PMEDIO').AsFloat*CurQuantidade.Value))  - 1) * 100;
}


      Result := uteis.RoundTo(MARGEM,-2);
   end
   else
   begin     //calculo por dentro
     if (dbInicio.Empresa.OPT_SIMPLES = 'S') then
       imposto := dbInicio.Empresa.ALIQ_SIMPLES/100
     else
     begin
        if FrmPedido.EdClienteUF.Text <> '' then
        begin
           OpenAux3('select ICM_ALIQ '+
                    'from ICM0000 WHERE ICM_DESTINO = ' + quotedstr(FrmPedido.EdClienteUF.Text)+
                    ConcatSe( ' AND ', dbInicio.ExclusivoSql('ICMS') )
                    )  ;
           imposto := qAux3.FieldByName('ICM_ALIQ').AsCurrency/100;
        end
        else
         imposto := 0;
     end;
     if FrmPedido.edPrazo.idRetorno <> '' then
     begin
       OpenAux3('select PCL_TX_MARGEM from PCL0000 where pcl_codigo = '+QuotedStr(FrmPedido.edPrazo.idRetorno)+
         ConcatSe( ' AND ', dbInicio.ExclusivoSql('PRAZOS'))   );
       if qAux3.FieldByName('PCL_TX_MARGEM').IsNull then
         prazo := 0
       else
         prazo := qAux3.FieldByName('PCL_TX_MARGEM').AsFloat /100;
     end
     else
       prazo := 0;
       //custo total - imposto - prazo - frete - custo de entrada (custo de compra)


     if DBInicio.Exclusivo( 'PRODUTO_PRECO_EMPRESA' )  then
     begin
         preco :=  ((CurTotal.Value / (qAux.FieldByName('PRD_CUSTOCOMIPI').AsFloat*CurQuantidade.Value))  - 1) * 100;
     end
     else
     begin
        preco := BuscaUmDadoSqlAsFloat(
               'SELECT FIRST 1  PRD_PE_CUSTOCOMIPI' +
               ' FROM PRD0000_PRECO_EMPRESA ppe ' +
               ' WHERE ppe.PRD_CODIGO = ' + QuotedStr(cbReferencia.CdS.fieldByName('PRD_CODIGO').AsString) +
               ' AND ppe.EMP_CODIGO = ' + QuotedStr(DBInicio.EMP_CODIGO) +
               ' ORDER BY PRD_PE_DATA_ATUALIZACAO DESC '
            );

     end;
     result := (CurTotal.Value - ( ((imposto + prazo)*(CurTotal.Value)) + FrmPedido.CurrValorCIF.Value  + (preco * CurQuantidade.Value))) / CurTotal.Value * 100
     // result := (CurTotal.Value - ( ((imposto + prazo)*(CurTotal.Value)) +FrmPedido.CurrValorCIF.Value  + (qAux.FieldByName('PRD_CUSTOCOMIPI').AsFloat*CurQuantidade.Value)))/ CurTotal.Value*100

   end;

end;

procedure TFrmPedidoItem.CarregaEstadoPesquisa(aPanel: tComponent);
var  y: integer;
    pObject: tComponent;
    ini: tIniFile ;
    Sect: String ;
    TextoSalvo : string;
begin

  if fileexists(dbInicio.SistemaLocal+'settings\Pesquisas.filtrosPedidoUsu'+DBInicio.Usuario.CODIGO+'.psq')  then
  begin
       Sect := Self.Name+'.'+aPanel.Name;
       ini := tIniFile.Create ( dbInicio.SistemaLocal+'settings\Pesquisas.filtrosPedidoUsu'+DBInicio.Usuario.CODIGO+'.psq' );
       try
          for y := 0 to ( tWinControl(aPanel).ControlCount - 1) do
          begin
               pObject := tWinControl(aPanel).Controls[y];
               if pObject.InheritsFrom(tPanel) or pObject.InheritsFrom(TSgDbSearchCombo) then
               begin
                  TextoSalvo := ini.ReadString(Sect,pObject.name,'');
                  if TextoSalvo <>'' then
                  begin
                    if TSgDbSearchCombo(pObject).CanFocus then
                      TSgDbSearchCombo(pObject).SetFocus;
                    TSgDbSearchCombo(pObject).Text := TextoSalvo;

                  end;
               end;

          end;
       Finally
              FreeAndNil(ini);
       end;
  end;

end;

procedure TFrmPedidoItem.CarregarGrades(const Prod_Codigo : string);
var cdsclone, cdscloneItemPedido : TClientDataSet;
 lValor: Currency ;
begin
	cdsItemGrade.Close;
	if (not VarIsEmpty(Prod_Codigo)) then
	begin
    sItemGrade.SQL.Clear;
    sItemGrade.SQL.Add(SQLDEF('PRODUTOS', 'SELECT PRG_REGISTRO, p.PRD_CODIGO, PRG_SALDO, PRG_MEDIDA_1, PRG_MEDIDA_2, PRG_MEDIDA_3,'+
                                          'PRG_DESCRICAO,  PRG_REDUCAO_PERCENT, PRG_INDICE, '+
                                          ' 0.0 as PRG_QTDE, 0.0 as PRG_QTDEAnterior, IIF(PRG_PRECO = 0,PRD_PVENDA, PRG_PRECO) as PRG_BRUTO, '+
                                          ' 0.0 PRECO_LIQU, 0 as PORC_IPI, '+
                                          ' 0.0 PRD_DESC, 0 PRF_REGISTRO, NULL amx_CODIGO, 0.0 as PRF_QTDEFAT, 0.0 as PRF_QTDE_ENV_PRODUCAO, '+
                                          ' 0.0 as PercentStProduto '+
                                          ' FROM PRD_GRADE AS G INNER JOIN PRD0000 P ON  (P.PRD_CODIGO =  G.PRD_CODIGO)',
                                          'WHERE p.PRD_CODIGO = ' + qStr(Prod_Codigo),
                                          'PRG_DESCRICAO', 'g.'));
		 cdsItemGrade.Open;
     cdsItemGrade.LogChanges:= False;
  end;
	if not cdsItemGrade.IsEmpty then
  begin
	 cdsclone := TClientDataSet.Create(self);
	 try
		cdsclone.CloneCursor(cdsItemGrade,true);
		cdsclone.LogChanges := False;

    if stipo = 'I' then begin
       cdsclone.First;
       while not cdsclone.Eof do
       begin
          if not (cdsclone.State  in dsEditModes) then
             cdsclone.Edit;
          if (cdsclone.FieldByName('PRG_BRUTO').Value = 0) or (cdsclone.FieldByName('PRG_BRUTO').IsNull) then
            if CurPrecoBruto.Value > 0 then
            begin
             cdsclone.FieldByName('PRG_BRUTO').Value :=  CurPrecoBruto.Value;
            end;

					cdsclone.FieldByName('COMISSAO').Value :=  CurComissao.Value;
          if CurPercentIPI.Value > 0  then
						cdsclone.FieldByName('PORC_IPI').Value := CurPercentIPI.Value;

          // preço liquido
          if not ( cdsclone.FieldByName('PRG_BRUTO').IsNull ) then
          begin
             cdsclone.FieldByName('PRECO_LIQU').Value :=
                uteis.RoundTo((cdsclone.FieldByName('PRG_BRUTO').Value) * (1-(rIndiceDesconto/100)),-5);
          end;


          cdsclone.Post;

          cdsclone.Next;
      end;
    end // alteração dos item
    else
    begin
         cdscloneItemPedido := TClientDataSet.Create(self);
         try
					 cdscloneItemPedido.CloneCursor(TCustomClientDataSet(FrmPedido.SqlCdsPedidoItem),true);
					 cdsclone.LogChanges := False;
            cdscloneItemPedido.Filter :=  'PRD_CODIGO = ' + qStr(Prod_Codigo);
            cdscloneItemPedido.Filtered := True;
            cdsclone.First;
						while not cdsclone.Eof do
						begin
              if not (cdsclone.State  in dsEditModes) then
                  cdsclone.Edit;
              if cdscloneItemPedido.Locate('PRG_REGISTRO',cdsClone.FieldByName('PRG_REGISTRO').Value,[]) then
               begin
                 //cdsClone.FieldByName('PRG_DESCRICAO').AsString := cdscloneItemPedido.FieldByName('DESCRICAO').AsString;
                 cdsclone.FieldByName('PRG_QTDE').Value := cdscloneItemPedido.FieldByName('PRF_QTDE').Value;
                 //quardar o quantidade do item da tela do pedido antes de  ser-lo alerado na tela
                 cdsclone.FieldByName('PRG_QTDEAnterior').Value := cdscloneItemPedido.FieldByName('PRF_QTDE').Value;
                 //quantidade faturada
                 cdsclone.FieldByName('PRF_QTDEFAT').Value := cdscloneItemPedido.FieldByName('PRF_QTDEFAT').Value;
                 cdsclone.FieldByName('PRG_BRUTO').Value := cdscloneItemPedido.FieldByName('PRF_PRECO_BRUTO').Value;
                 cdsclone.FieldByName('PRECO_LIQU').Value := cdscloneItemPedido.FieldByName('PRF_PRECO').Value;
								 cdsclone.FieldByName('COMISSAO').Value :=  cdscloneItemPedido.FieldByName('PRF_ITEMCOMIS').Value;
								 if (dbInicio.EMPRESA.OPT_SIMPLES <> 'S') then
                    cdsclone.FieldByName('PORC_IPI').AsFloat :=  cdscloneItemPedido.FieldByName('PRF_IPIALIQ').AsFloat
								 else
                    cdsclone.FieldByName('PORC_IPI').AsFloat := 0;
                 cdsclone.FieldByName('PRF_REGISTRO').Value := cdscloneItemPedido.FieldByName('PRF_REGISTRO').Value;
                 cdsclone.FieldByName('PRD_DESC').Value := cdscloneItemPedido.FieldByName('PRF_IDESCTO1').Value;

                 cdsclone.FieldByName('Vlr_Total').Value :=  cdsclone.FieldByName('PRECO_LIQU').Value *  cdsclone.FieldByName('PRG_QTDE').Value;
                 lValor := qAux.FieldByName('IPI_VALOR_POR_ITEM').asCurrency;
                 if lValor > 0 then
                    cdsclone.FieldByName('Vlr_IPI').Value :=  lValor  * cdsclone.FieldByName('PRG_QTDE').Value
                 else
                    if (cdsclone.FieldByName('PORC_IPI').Value > 0) then
                       cdsclone.FieldByName('Vlr_IPI').Value :=   cdsclone.FieldByName('Vlr_Total').Value *  (cdsclone.FieldByName('PORC_IPI').Value/100);
                 cdsclone.FieldByName('VLR_ST').Value :=  CalculaSTItem(BCDToCurrency(cdsclone.FieldByName('Vlr_Total').AsBCD + cdsclone.FieldByName('Vlr_IPI').AsBCD));

                 //quantidade em produção
                 cdsclone.FieldByName('PRF_QTDE_ENV_PRODUCAO').Value :=  cdscloneItemPedido.FieldByName('PRF_QTDE_ENV_PRODUCAO').Value
               end;

            cdsclone.Post;
            cdsclone.Next;

            end;

         finally
          cdscloneItemPedido.Free;

         end;
    end;

   finally
    cdsclone.Free
   end;
  end;
end;

procedure TFrmPedidoItem.IniciaValores;
var i,j :integer;
   sMemoKit: string;
begin
   opv_semlote := BuscaUmDadoSqlasString( 'Select opv_semlote from opv0000 where opv_codigo = '+qStr(frmPedido.SqlCdsTipoPedidoopv_codigo.Asstring))='S';
	 if (sTipo = 'I') then //Incluir
	 begin
     cbTabelaPrecoMultiplo.Clear;
     cbReferencia.Clear;
     BuscaProduto('');
     if DBInicio.GetParametroSistema('PMT_MULTIPLAS_IE') = 'S' then
     begin
       EdAlmoxarifadoCodigo.Text :=
         BuscaUmDadoSqlAsString('SELECT AMX_CODIGO FROM ALMOX0000 WHERE EMI_CODIGO = ' +
            VarToStr(FrmPedido.dblcInscricaoEstadual.KeyValue) )
     end
     else
     begin
       if (FrmPedido.sUltimoAlmoxDigitado = '') then
          EdAlmoxarifadoCodigo.Text := dbInicio.empresa.wPMT_AMX_VENDA
       else
          EdAlmoxarifadoCodigo.Text := FrmPedido.sUltimoAlmoxDigitado;
     end;
     CbAlmoxarifado.idRetorno := EdAlmoxarifadoCodigo.Text;
     CbItemAgregado.Checked := FrmPedido.wAdcProdKit;
     CurQuantidade.Clear;
     CurPeso.Clear;
     cbUnidade.idRetorno := '';
     cbCapacidade.idRetorno := '';
     cbCor.idRetorno := '';
     CurDesconto.Clear;
     CurDescontoAdicional.Clear;
     CurPrecoLiquido.Clear;
     CbLoteProduto.Clear;
     CbDiretiva.Clear;
     CbDiretiva.Text := '';
     edtPedidoB2B.Clear;
     SpinItemB2B.Value := 0;
     if bprazoitens then
     begin
       if FrmPedido.SqlCdsPedidoPED_ORS_DIAS_ENTREGA.AsString = '' then
           edPrazo.Value := 0
       else
         edPrazo.Value := StrToInt(FrmPedido.SqlCdsPedidoPED_ORS_DIAS_ENTREGA.AsString);
     end;
     if (dbInicio.Empresa.sPadraoPesquisaProduto = 'D')  then
       cbDescricao.SetFocus
     else
      begin
       cbReferencia.SetFocus;
       cbReferencia.SelectAll;

     end;
     if wbDiretivaObrigatoria<>0 then
      wID_DIRETIVAS := dbInicio.GetNextSequence('GEN_ITEM_PEDIDO');
	 end
	 else // Alterar
	 begin
     if DBInicio.Empresa.wPMT_PROD_TERMICO then
     begin
       edtipo.Text :=  FrmPedido.SqlCdsPedidoItemPED_TIPOPECA_TERM.AsString  ;
       edMaterial.Text :=  frmPedido.SqlCdsPedidoItemPED_MATERIAL_TERM.AsString ;
       edsuperficial.Text := FrmPedido.SqlCdsPedidoItemPED_DUREZASUPERFICIAL_TERM.AsString;
       ednucleo.Text := FrmPedido.SqlCdsPedidoItemPED_DUREZANUCLEO_TERM.AsString;
       edProfundidade.Text:=  FrmPedido.SqlCdsPedidoItemPED_PROFUNDIDADE_TERM.AsString;
       edTamanho.Text := FrmPedido.SqlCdsPedidoItemPED_TAMANHOGRAO_TERM.AsString;
       edEHT.Text:=  FrmPedido.SqlCdsPedidoItemPED_EHT_TERM.AsString;
       eddesenho.Text := FrmPedido.SqlCdsPedidoItemPED_DESENHO_TERM.AsString ;
       // edPeso.Value := iif(FrmPedido.SqlCdsPedidoItemPRF_PESOKG.AsFloat = 0, FrmPedido.SqlCdsPedidoItemPRD_PESOLIQ.AsFloat, FrmPedido.SqlCdsPedidoItemPRF_PESOKG.AsString);
       // edPeso.Value :=FrmPedido.SqlCdsPedidoItemPRD_PESOLIQ.AsString;
       edPeso.Value :=FrmPedido.SqlCdsPedidoItemPRF_PESOKG.AsString;
       edQtdeItens.Enabled := MatchStr(UpperCase(trim( FrmPedido.SqlCdsPedidoItemPRD_UND.AsString)),['KG','GR']) ;
       edQtdeItens.Value := FrmPedido.SqlCdsPedidoItemPRF_QTDE_ENV_PRODUCAO.AsFloat;

     end;

     fLendo := True;
     try
      cbReferencia.idRetorno:=FrmPedido.SqlCdsPedidoItemPRD_CODIGO.AsString;
     except
      On e: Exception Do
      begin
        if e.Message <> '' then
          raise Exception.Create(e.Message);
      end
      else
        cbReferencia.idRetorno:= '';
     end;
    if cbReferencia.idRetorno = '' then
      raise Exception.Create('Item não encontrado');

     EdReferenciaOriginal.Text :=  FrmPedido.SqlCdsPedidoItemPRDCO_CODIGO_ORIGINAL.AsString;
		//sem grid da grade de produto
		if (pgcPrincipal.ActivePage = tsSemGrade) then
    begin
			 EdAlmoxarifadoCodigo.Text := FrmPedido.SqlCdsPedidoItemAMX_CODIGO_DESTINO.AsString;
			 CbAlmoxarifado.TextoLocalizar := EdAlmoxarifadoCodigo.Text;
			 CbAlmoxarifado.Localizar := True;

			 CbItemAgregado.Checked := FrmPedido.SqlCdsPedidoItemPRF_PRODUTO_AGREGADO.AsString = 'S';
       ChkSemValor.Checked := FrmPedido.SqlCdsPedidoItemPRF_PRODUTO_SEMVALOR.AsString = 'S';
			 CurQuantidade.Value := FrmPedido.SqlCdsPedidoItemPRF_QTDE.AsFloat;
			 CurPeso.Value := FrmPedido.SqlCdsPedidoItemPRF_PESO.AsFloat;
       cbUnidade.idRetorno := FrmPedido.SqlCdsPedidoItemPRD_UND.AsString;
       cbCapacidade.idRetorno := FrmPedido.SqlCdsPedidoItemCAP_CODIGO.AsString;
       cbCor.idRetorno := FrmPedido.SqlCdsPedidoItemACO_CODIGO.AsString;
			 CurDesconto.Value := FrmPedido.SqlCdsPedidoItemPRF_IDESCTO1.AsFloat;
			 CurDescontoAdicional.Value := FrmPedido.SqlCdsPedidoItemPRF_IDESCTO2.AsFloat;
       CurrPendente.Value := FrmPedido.SqlCdsPedidoItemprf_qtdePend.AsFloat;
//			 CurPrecoLiquido.DecimalPlaces := 5;
//			 CurPrecoLiquido.DisplayFormat := ',0.0000##;-,0.0000##';
//			 CurPrecoLiquido.Value := FrmPedido.SqlCdsPedidoItemPRF_PRECO.AsFloat;
//
//			 CurPrecoBruto.DecimalPlaces := 5;
//			 CurPrecoBruto.DisplayFormat := ',0.0000##;-,0.0000##';
			 CurPrecoBruto.Value := FrmPedido.SqlCdsPedidoItemPRF_PRECO_BRUTO.AsFloat;

			 CurrAcrescimoReal.Value:= FrmPedido.SqlCdsPedidoItemPRF_ACRESCIMO.AsFloat;
			 CurComissao.Value := FrmPedido.SqlCdsPedidoItemPRF_ITEMCOMIS.AsFloat;
			 if (dbInicio.EMPRESA.OPT_SIMPLES <> 'S') then
					CurPercentIPI.Value := FrmPedido.SqlCdsPedidoItemPRF_IPIALIQ.AsFloat
			 else
					CurPercentIPI.Value := 0;

       if bprazoitens then
         edPrazo.Value :=   FrmPedido.SqlCdsPedidoItemPRF_PRAZO_DIAS.AsInteger;
       PRF_PRAZO_ENTREGA.Date := FrmPedido.SqlCdsPedidoItemPRF_PRAZO_ENTREGA.AsDateTime;


		end
    else
    begin
      pgc2.ActivePage := tsInfoLancamento;
    end;
   // pegar as informações da tela anterior, para caso venham alterar
   ProdutoOriginal := FrmPedido.SqlCdsPedidoItemPRD_REFER.AsString;
   Almoxarifado := FrmPedido.SqlCdsPedidoItemAMX_CODIGO_DESTINO.AsString;
   ProdutoOrigCodigo :=  FrmPedido.SqlCdsPedidoItemPRD_CODIGO.AsString;

		if not ProdutoGradeIncluido then
		begin
		 MemoDescricao.Text := FrmPedido.SqlCdsPedidoItemDESCRICAO.AsString;
		 MemoDescricao.Text := StringReplace(MemoDescricao.Text,FrmPedido.SqlCdsPedidoItemPRF_COMPL_DESCRI.AsString,'',[rfReplaceAll, rfIgnoreCase]);
     if DBInicio.GetParametroSistema('PMT_PEDIDO_IND_PLASTICA') = 'S' then
     begin
       if cbUnidade.idRetorno = 'KG' then
      	 MemoDescricao.Text := StringReplace(MemoDescricao.Text,FloatToStr(CurPeso.Value) + ' MIL ','',[rfReplaceAll, rfIgnoreCase]);
       if cbCapacidade.Text <> '' then
       	 MemoDescricao.Text := StringReplace(MemoDescricao.Text,cbCapacidade.Text + ' ' ,'',[rfReplaceAll, rfIgnoreCase]);
       if cbCor.Text <> '' then
       	 MemoDescricao.Text := StringReplace(MemoDescricao.Text,cbCor.Text + ' ' ,'',[rfReplaceAll, rfIgnoreCase]);
     end;
		 MemoDescricao.Text := Trim(MemoDescricao.Text);
		 MemoComplemento.Text := FrmPedido.SqlCdsPedidoItemPRF_COMPL_DESCRI.AsString;
		 if (MemoDescricao.Text = '')and(MemoComplemento.Text <> '') then
		 begin
			 MemoDescricao.Text := MemoComplemento.Text;
			 MemoComplemento.Text := '';
		 end;
		end;


		 if (dbInicio.Empresa.bUtilizaGrade and (qAux.FieldByName('PRD_GRADE_OBRIGATORIO').AsString = 'S')) OR (FrmPedido.SqlCdsPedidoItemPRG_REGISTRO.AsString <> '') then
     begin
			 // CbGrade.TextoLocalizar := FrmPedido.SqlCdsPedidoItemPRG_REGISTRO.AsString;
			 // CbGrade.Localizar := True;
			 CbGrade.IdRetorno := FrmPedido.SqlCdsPedidoItemPRG_REGISTRO.AsString;
			 MemoDescricao.Text := StringReplace(MemoDescricao.Text,CbGrade.Text,'',[rfReplaceAll, rfIgnoreCase]);
       if DBInicio.GetParametroSistema('PMT_PEDIDO_IND_PLASTICA') = 'S' then
       begin
         if cbUnidade.idRetorno = 'KG' then
        	 MemoDescricao.Text := StringReplace(MemoDescricao.Text,FloatToStr(CurPeso.Value) + ' MIL ','',[rfReplaceAll, rfIgnoreCase]);
         if cbCapacidade.Text <> '' then
           MemoDescricao.Text := StringReplace(MemoDescricao.Text,cbCapacidade.text + ' ', '', [rfReplaceAll, rfIgnoreCase]);
         if cbCor.Text <> '' then
           MemoDescricao.Text := StringReplace(MemoDescricao.Text,cbCor.text + ' ', '', [rfReplaceAll, rfIgnoreCase]);
       end;


			 MemoDescricao.Text := Trim(MemoDescricao.Text);
		 end;
		 if (FrmPedido.SqlCdsPedidoItemPRDD_SIGLA.AsString <> '') then
			begin
				MemoDescricao.Text := StringReplace(MemoDescricao.Text,'['+FrmPedido.SqlCdsPedidoItemPRDD_SIGLA.AsString+']','',[rfReplaceAll, rfIgnoreCase]);
				MemoDescricao.Text := Trim(MemoDescricao.Text);
			end;


     if CbItemAgregado.Checked then
     begin
        // item agregado tem check
        sMemoKit:= MemoDescricao.Text;
        i:=pos( 'X]', UpperCase(sMemoKit));
        for j := i-1 downto 0 do
            if sMemoKit[J] = '[' then
              break;
        MemoDescricao.Text :=  StringReplace(MemoDescricao.Text,copy(sMemoKit,j,i),'',[rfReplaceAll, rfIgnoreCase]);
        MemoDescricao.Text := Trim(MemoDescricao.Text);
     end;
//     CbLoteProduto.OnButtonClick:= nil;
     CbLoteProduto.idRetorno := FrmPedido.SqlCdsPedidoItemPRDL_REGISTRO.AsString;
     ExisteLote := CbLoteProduto.idRetorno <> '';

     // SE ACEITA ORÇAMENTO SEM LOTE, SE ESTÁ SEM LOTE
     // CbLoteProduto.Enabled := False or opv_semlote AND (CbLoteProduto.idRetorno = '');
		 wLoteUsando := CbLoteProduto.Text;  // pega o lote atual do item
		 CbDiretiva.idRetorno := FrmPedido.SqlCdsPedidoItemPRDD_REGISTRO.AsString;
  	 if pgcPrincipal.ActivePage = tsSemGrade then
     begin
        edtPedidoB2B.Text := FrmPedido.SqlCdsPedidoItemPRF_B2B_PEDIDO_COMPRA.AsString;
        SpinItemB2B.Value := FrmPedido.SqlCdsPedidoItemPRF_B2B_ITEM_PEDIDO_COMPRA.AsInteger;

        if (CurQuantidade.Enabled) then
        begin
          if pgc2.activepage <> tsinfolancamento then
           pgc2.activepage := tsinfolancamento;
             // CurQuantidade.SetFocus;
             CurQuantidade.SelectAll;
        end;
        CalculaTotais;
     end;
     if FrmPedido.SqlCdsPedidoItemID_DIRETIVAS.asInteger>0 then
        wID_DIRETIVAS := FrmPedido.SqlCdsPedidoItemID_DIRETIVAS.asInteger
     Else
     begin
          wID_DIRETIVAS := dbInicio.GetNextSequence('GEN_ITEM_PEDIDO');
          dbInicio.ExecSql( 'UPDATE ped_it01'+
                            ' SET ID_DIRETIVAS='+inttostr(wID_DIRETIVAS)+
                            ' WHERE prf_registro='+QStr(FrmPedido.SqlCdsPedidoItemprf_registro.ASSTRING)+
                            '       and EMP_CODIGO='+qStr( DBInicio.Empresa.EMP_CODIGO ) );
     end;
   end ;

			edDiretivaSigla.Clear;
      if (CbDiretiva.CodigoLista <> '') then
      begin
           DataCadastros.sqlUpdate2.Close;
           DataCadastros.sqlUpdate2.sql.text := 'SELECT PRDD_SIGLA FROM PRD_DIRETIVA WHERE PRDD_REGISTRO = '+CbDiretiva.CodigoLista;
           DataCadastros.sqlUpdate2.Open;
           if (not DataCadastros.sqlUpdate2.IsEmpty) then
              edDiretivaSigla.Text := DataCadastros.sqlUpdate2.FieldByName('PRDD_SIGLA').AsString;
           DataCadastros.sqlUpdate2.Close;
      end;
      fLendo := False;

end;

procedure TFrmPedidoItem.CurPrecoBrutoChange(Sender: tObject);
begin
   CalculaTotais;
end;

procedure TFrmPedidoItem.CurPrecoBrutoEnter(Sender: TObject);
begin
  inherited;
  if (DBInicio.Empresa.wPMT_VALOR_KIT) and (qAux.FieldByName('pti_sigla').AsString = 'KT') and
     (not CbItemAgregado.Checked) and (DBInicio.Empresa.wPMT_ITENS_KIT) then
    CurPrecoBruto.ReadOnly := true
  else
  CurPrecoBruto.ReadOnly := false;
  rPrecoBruto := CurPrecoBruto.Value;
end;

procedure TFrmPedidoItem.CurPrecoBrutoExit(Sender: TObject);
begin
  inherited;
   CalculaTotais;

   try
      if not SameValue(rPrecoBruto,CurPrecoBruto.Value) and (CurPrecoBruto.Value> 0)  then
         TestaPrecoAbaixoCusto ;
   except
     TJvValidateEdit(Sender).setfocus;
   end;
end;

procedure TFrmPedidoItem.xCurDescontoChange(Sender: tObject);
begin
	 CalculaTotais;
end;

procedure TFrmPedidoItem.CurComissaoExit(Sender: TObject);
begin
  inherited;
  If pAcoes.CanFocus then
	  pAcoes.SetFocus;
end;

procedure TFrmPedidoItem.CurDescontoAdicionalChange(Sender: tObject);
begin
   CalculaTotais;
end;

procedure TFrmPedidoItem.CurDescontoAdicionalExit(Sender: TObject);
begin
  inherited;
   CalculaTotais;
  if Bit_Gravar.CanFocus then
    Bit_Gravar.SetFocus;
end;

procedure TFrmPedidoItem.CurPrecoLiquidoExit(Sender: tObject);
var
   rPrecoSaida, rDesconto,
   rPrecoBruto:Real;
begin
   rPrecoSaida := CurPrecoLiquido.Value;
   rPrecoBruto := CurPrecoBruto.Value;
   if (rPrecoSaida < rPrecoBruto) then
   begin
       rPrecoBruto := rPrecoBruto - CurrAcrescimoReal.Value;
       CurPrecoBruto.Value := rPrecoBruto;
       CurrAcrescimoReal.Clear;
   end;
   // volta preço liquido sem o acrescimo para comparar certo nas alterações de preço
   if CurrAcrescimoReal.Value > 0 then
      rPrecoBruto := rPrecoBruto - CurrAcrescimoReal.Value;
   if (rPrecoLiquido <> rPrecoSaida) then
   begin
         CurDesconto.Clear;
         CurDescontoAdicional.Clear;
         //Verifica se mudou para maior que o preco bruto
         if (rPrecoSaida >= rPrecoBruto ) then
         begin
							 CurrAcrescimoReal.Value := 0;
               CurrAcrescimoReal.Value := ((rPrecoSaida - CurrAcrescimoReal.Value) - rPrecoBruto);
               CurPrecoBruto.Value     := rPrecoSaida;
         end
         else
         begin
               try
                  rdesconto := (1 - (rPrecoSaida /rPrecoBruto))*100.0000000000000;
                  CurDesconto.Value := rdesconto ;
               except
                  CurDesconto.Value := 0;
                  CurPrecoLiquido.Value := CurPrecoBruto.Value;
               end;
         end;
   end;

  cbTabelaPrecoMultiplo.EditValue :=   IntToStr(SetarTabelaPrecos);

   try
     if not SameValue(rPrecoLiquido,rPrecoSaida)  and (rPrecoSaida>0) then
       TestaPrecoAbaixoCusto ;
   except
          TJvValidateEdit(Sender).SetFocus;
   end;

end;

procedure TFrmPedidoItem.AlteraLoteProduto (const Lotes: Variant; registroItem: integer);
var prdl_registro: string;
    qtde: double;
    min, max, lote, I  : integer;
    QTDEPendente,saldo : double;
begin
  //MESMO QUE NÃO Dê BAIXA NO KARDEX , TEM QUE BAIXAR DO LOTE
//  if (ProdutoGerenciaLote(EdReferencia.Text)) and (dbInicio.Empresa.wAtualizaEstoque = 'F') then
  if (ProdutoGerenciaLote(EdReferencia.Text))
  and (BuscaUmDadoSQLAsString('SELECT OPV_ATESTOQUE FROM OPV0000 WHERE OPV_CODIGO = ' + FrmPedido.SqlCdsTipoPedidoOPV_CODIGO.AsSTRING) = 'S') then
  begin
    //LOTE UNICO OU É INCLUSÃO OU É ALTERAÇÃO
    if VarIsNumeric(Lotes) then
    begin
      Lote:= Lotes;
      Min := 1;
      Max := 1;
      qtde := FrmPedido.SqlCdsPedidoItemPRF_QTDE.asfloat ;
      prdl_registro := FrmPedido.SqlCdsPedidoItemPRDL_REGISTRO.AsString;
      IF (Lote > 0 ) and  (sTipo='I') then
        dbInicio.ExecSql('update prd_lote set prdl_saldo=prdl_saldo-'+FloatToSql(CurQuantidade.Value)+'  WHERE PRDL_REGISTRO='+IntToStr(Lote) );

      if (sTipo <> 'I') then     // Nao é inclusao
         dbInicio.ExecSql('update prd_lote set prdl_saldo=prdl_saldo+'+FloatToSql(qtde)+' WHERE PRDL_REGISTRO='+IntToStr(LOTE));


    end
    //QUANDO É VARIOS LOTE SEMPRE É INCLUSÃO
    else if VarIsArray(Lotes) then
    begin
      min := VarArrayLowBound(Lotes,1);
      max := VarArrayHighBound(Lotes,1);
//      if CurQuantidade.Value < CurQuantidadeAnterior then
//        QTDEPendente := CurQuantidadeAnterior - CurQuantidade.Value
//      else
//      if CurQuantidade.Value > CurQuantidadeAnterior then
      QTDEPendente := CurQuantidade.Value;
      for I := min to max do
      begin
        Lote := VarArrayGet(Lotes, [i,1] ); // numero do lote
        saldo := VarArrayGet(Lotes, [i,2] ); // saldo do lote
        if (QTDEPendente > Saldo) and (CurQuantidade.Value > (Saldo + CurQuantidadeAnterior) ) then
         begin
           QTDEPendente := QTDEPendente - Saldo;
           qtde := Saldo;
         end
         else
         begin
            qtde  := QTDEPendente;
            QTDEPendente := 0;
         end;
        movimentaLote(registroItem, Lote, screen.ActiveForm.Name, 'S', qtde, saldo);
        // dbInicio.ExecSql('update prd_lote set prdl_saldo=prdl_saldo-'+FloatToSql(qtde)+'  WHERE PRDL_REGISTRO='+IntToStr(Lote) );
        CommitTransaction;
        if QTDEPendente = 0 then
          break;
      end;

    end;




  {     if (qtde <> CurQuantidade.Value) then
       begin
         if (prdl_registro<>'')  and  (sTipo <> 'I') then     // Nao é inclusao
            dbInicio.ExecSql('update prd_lote set prdl_saldo=prdl_saldo+'+FloatToSql(qtde)+' WHERE PRDL_REGISTRO='+prdl_registro);

         IF CbLoteProduto.idRetorno <> '' then
            dbInicio.ExecSql('update prd_lote set prdl_saldo=prdl_saldo-'+FloatToSql(CurQuantidade.Value)+'  WHERE PRDL_REGISTRO='+String(CbLoteProduto.idRetorno) );
       end;
  }
  end;
end;

procedure TFrmPedidoItem.Bit_GravarClick(Sender: tObject); // Gravar Item;
var
   sQuery, sEmpresa:String;
   iDiretiva, iRegistroItem,  iRegistro, iGrade : integer;
   rQtdeAnterior, rQtdeNova, rSaldo, rCusto, qPendenteAnterior, qPendenteNova, qpreciso, kardexSaldo, indice :double;
   bContinuab, bContinua, bValidaProduto, bexclusao, bvendaPendente:Boolean;
	 sTabelaPreco:string;
   rPBruto: Double;
	 cdsclone: TClientDataSet;
	 stipoKardesES : String;
	 lvalor : double;
	 lvalorIPI  : double;
	 lvalorST: double;
   dQtdeKit, dQtdePerdida, dQtdeEstoque : double;
   dCompPrecoVenda : double; //composicao do preco de venda no caso do kit
   regvinculado, iRegistroVinculado : integer;
   bAfetaEstoque, bVerificaGCC : boolean;
   kit_virtual : Integer;
   amx_destino, descricaoProduto, prdRefer, Cor : string;
   margem: double;
   iRegistroLote : variant;
   aliquotaICMS, valorICMS : double;
begin

   Bit_Gravar.Enabled := False;
   CalculaTotais;

   rCusto :=0 ;
   bcontinuab := False;
	 bContinua := True;
   bvendaPendente := False;
   if (FrmPedido.SqlCdsTipoPedidoOPV_BAIXAR_ESTOQUE_PELO_FAT.AsString = 'S') then // entrada no estoque de vendido
    amx_destino := BuscaUmDadoSqlAsString('SELECT AMX_CODIGO FROM ALMOX0000 WHERE AMX_CNPJ_PART = '+QuotedStr(RetirarMascaraCNPJ_INSC(DBInicio.Empresa.CNPJ_CNPF)))
   else if (FrmPedido.SqlCdsTipoPedidoOPV_ESTOQUE_REMESSAINDUS.AsString = 'S') AND (FrmPedido.EdCnpj.Text <> '')  then // entrada na estoque do terceiro
    amx_destino := BuscaUmDadoSqlAsString('SELECT AMX_CODIGO FROM ALMOX0000 WHERE AMX_CNPJ_PART = '+QuotedStr(RetirarMascaraCNPJ_INSC(FrmPedido.EdCnpj.Text)))
  else
    amx_destino := '';

	 if (pgcPrincipal.ActivePage = tsComGrade) then
	 begin
      if Bit_Gravar.Canfocus then
  			Bit_Gravar.SetFocus;
			if cdsItemGrade.State in dsEditModes then
        cdsItemGrade.Post;
	 end
   else
      pgc2.ActivePageIndex := 0; //    tsInfoLancamento.


   sEmpresa := 'select prd_codigo from prd0000 where prd_refer='+qStr(edReferencia.text);

   if dbInicio.Exclusivo('PRODUTOS') then
      sEmpresa := sEmpresa + ' and emp_codigo = '+qStr(dbInicio.Empresa.EMP_CODIGO );

  if CbItemAgregado.Checked then
  begin
    regvinculado := DBInicio.BuscaUmDadoSqlAsInteger ('SELECT PRF_REGISTRO_VINCULADO FROM PED_IT01 WHERE prf_registro = '+ IntToStr(iRegistroItemAnterior) );
    if regvinculado = 0  then
      regvinculado := iRegistroItemAnterior;
    OpenAux3('SELECT PRF_REGISTRO,PRF_QTDE FROM PED_IT01 co  '+
                         ' WHERE PED_CODIGO = '+QuotedStr(NumeroPedido)+
                         ' AND prf_registro = '+ IntToStr(regvinculado));

    if not qaux3.IsEmpty then
        dQtdeKit := qaux3.FieldByName('PRF_QTDE').AsFloat;
  end
  else
    dQtdeKit := 1;
   { AFETA ESTOQUE:
   E NÃO FOR SERVIÇO
   TIPO DE PEDIDO ATUALIZA ESTOQUE
   O ESTOQUE É ATUALIZADO PELO PEDIDO
   FOR KIT KIT E CONTROLA no KIT
   FOR ALTEAÇÃO,  E A QUANTIDADE ANTERIOR DIFERENTE QUTDE NOVA
   FOR TIPO SAIDA DE PRODUTO
   GRUPO ATUALIZA ESTOQUE
   TIPO ATUALIZA ESTOQUE}
   bAfetaEstoque :=
     not (qAux.fieldByName('PRD_PRODSERV').AsString = 'S')  and
     (FrmPedido.SqlCdsTipoPedidoOPV_ATESTOQUE.AsString = 'S') and
     (dbInicio.Empresa.wAtualizaEstoque = 'P') AND
      not ((qAux.FieldByName('pti_sigla').AsString = 'KT') and not dbinicio.Empresa.wPMT_CONTROLA_KIT ) and
      (FrmPedido.SqlCdsTipoPedidoOPV_TIPO.AsString = 'S') and
      TipoAtualizaEstoque(cbReferencia.cds.FieldByName('prd_refer').asstring) and
      GrupoAtualizaEstoque(cbReferencia.cds.FieldByName('prd_refer').asstring)  ;
	 if (pgcPrincipal.ActivePage = tsSemGrade) then
   begin
		 rSaldo := CurSaldo.Value;
    if CurSaldo.Value < 0  then //saldo negativo, não considerar
       rSaldo := 0 ;
		 rPBruto := CurPrecoBruto.Value; // evitar que modifique o valor preço bruto informado pelo usuário

		 CurPrecoBruto.Value:=rPBruto; // evitar que modifique o valor preço bruto informado pelo usuário
		 // I = inclusão
			if (sTipo = 'I') then
			begin
						rQtdeAnterior := 0;
						rQtdeNova := CurQuantidade.Value;
						wLoteUsando := CbLoteProduto.Text;
			end
      else  //alteração
			begin
        wLoteUsando := CbLoteProduto.Text;
				rQtdeAnterior := FrmPedido.SqlCdsPedidoItemPRF_QTDE.AsFloat;
				rQtdeNova := CurQuantidade.Value;
        qPendenteAnterior := FrmPedido.SqlCdsPedidoItem.FieldByName('prf_qtdePend').AsFloat;
			end;
     CalculoEstoquePendente(bAfetaEstoque, stipo, ProdutoOriginal, EdReferencia.Text, rQtdeAnterior, rQtdeNova,  qPendenteAnterior, qPendenteNova, qpreciso, rSaldo, dQtdeKit, dQtdeEstoque, stipoKardesES);

	 end
	 else
		 begin
			 if (sTipo = 'I') then
			 begin
						rQtdeAnterior := 0;
						wLoteUsando := CbLoteProduto.Text;
			 end
			 else
						rQtdeAnterior := FrmPedido.SqlCdsPedidoItemPRF_QTDE.AsFloat;
		 end;

	 //Produto
	 bValidaProduto := False ;
	 if (cbReferencia.idRetorno = '')or(EdReferencia.Text = '') then
	 begin
           uteis.aviso('Informe o Produto');
         if (dbInicio.Empresa.sPadraoPesquisaProduto = 'D')  then
           cbDescricao.SetFocus
         else
          begin
  				 cbReferencia.SetFocus;
	 			   cbReferencia.SelectAll;

          end;
         Bit_Gravar.Enabled := True;
	 end
   else
       bValidaProduto := True;

	 if (pgcPrincipal.ActivePage = tsSemGrade) and bValidaProduto then
   begin
       //Almoxarifado
       if (EdAlmoxarifadoCodigo.Text = '') then
       begin
             uteis.aviso('Informe o Almoxarifado');
						 EdAlmoxarifadoCodigo.SelectAll;
             EdAlmoxarifadoCodigo.SetFocus;
             FrmPedidoItem.ModalResult := mrNone;
             Bit_Gravar.Enabled := True;
             Exit;

       end
       else //Quantidade
       if ((CurQuantidade.Value <= 0) and (not CbItemAgregado.Checked)) then
       begin
             uteis.aviso('Informe a Quantidade');
             CurQuantidade.SetFocus;
             CurQuantidade.SelectAll;
             FrmPedidoItem.ModalResult := mrNone;
             Bit_Gravar.Enabled := True;
             Exit;

       end
       else //Preço
       if (CurPrecoLiquido.Value <= 0) and (( not CbItemAgregado.Checked and
          (((not DBInicio.Empresa.wPMT_VALOR_KIT)) or ((DBInicio.Empresa.wPMT_VALOR_KIT) and (not DBInicio.Empresa.wPMT_ITENS_KIT))))
          and NOT ChkSemValor.Checked  )
          then
       begin
             uteis.aviso('Informe o Preço');
             if CurPrecoLiquido.CanFocus then
             Begin
               CurPrecoLiquido.SetFocus;
               CurPrecoLiquido.SelectAll;
               FrmPedidoItem.ModalResult := mrNone;
               Bit_Gravar.Enabled := True;
               Exit;
             End;
       end
       else
       if not (qAux.fieldByName('PRD_PRODSERV').AsString = 'S')  and (rQtdeAnterior > 0)and(FrmPedido.SqlCdsPedidoItemPRF_QTDE_ENV_PRODUCAO.AsCurrency > rQtdeNova) then
       begin
             uteis.erro  (Pchar('Não se pode alterar a quantidade do item pois já foi enviada para a produção a quantidade de '+FrmPedido.SqlCdsPedidoItemPRF_QTDE_ENV_PRODUCAO.AsString+' itens'));
             CurQuantidade.SetFocus;
						 CurQuantidade.SelectAll;
             FrmPedidoItem.ModalResult := mrNone;
             Bit_Gravar.Enabled := True;
             Exit;
       end
       else
       if ( (cbReferencia.CdS.fieldByName('PRD_REFER').AsString <> dbInicio.Empresa.sReferenciaProvisoriaOrcamento)
            and (dbInicio.Empresa.bBloquearVendaPrecoCustoMargemZerado)
            and ( (qAux.fieldByName('PRD_PCUSTO').AsCurrency <= 0) or (qAux.fieldByName('PRD_MARGEMVENDA').AsCurrency <= 0)or(cbReferencia.CdS.fieldByName('PRD_PVENDA').AsCurrency <= 0))) then
       begin
						 uteis.erro  (Pchar('Não é possível vender este produto pois o Custo, Margem ou Preço de venda está sem valor. Contate seu gerente para regularização'));
						 CurQuantidade.SetFocus;
						 CurQuantidade.SelectAll;
             FrmPedidoItem.ModalResult := mrNone;
             Bit_Gravar.Enabled := True;
             Exit;
			 end
			 else
			 if (pnLoteProduto.visible) and ((edLoteVarios.Text='') and (CbLoteProduto.idRetorno = '')) and ( not opv_semlote ) then
			 begin
         uteis.erro  (Pchar('Este produto tem controle de lote, favor selecionar um lote!'));
         if edLoteVarios.Visible and edLoteVarios.CanFocus then
         begin
           edLoteVarios.SetFocus;
           edLoteVarios.SelectAll;
           FrmPedidoItem.ModalResult := mrNone;
           Bit_Gravar.Enabled := True;
           Exit;

         end
         else
         if CbLoteProduto.CanFocus then
         begin
           CbLoteProduto.SetFocus;
           CbLoteProduto.SelectAll;
           FrmPedidoItem.ModalResult := mrNone;
           Bit_Gravar.Enabled := True;
           Exit;
         end;
			 end
			 else
			 if (pnLoteProduto.visible) and (not opv_semlote ) and (CurSaldoLote.Value < (CurQuantidade.Value-rQtdeAnterior)) and (cbLoteProduto.idRetorno <> '')  then
			 begin
				 uteis.erro  (Pchar('O(s) lote(s) selecionado(s) não possui(em) saldo para a quantidade solicitada !'));
				 CurQuantidade.SetFocus;
				 CurQuantidade.SelectAll;
         FrmPedidoItem.ModalResult := mrNone;
         Bit_Gravar.Enabled := True;
         Exit;

			 end
			 else
			 if (pnLoteProduto.visible) and  (CbLoteProduto.Text <> wLoteUsando) and (not opv_semlote )  then
			 begin
					 uteis.erro (Pchar('Não é permitido trocar o lote No. '+wLoteUsando+' do item. Pode-se excluir e entrar com outro lote.'));
           if CbLoteProduto.CanFocus then
           begin
             CbLoteProduto.SetFocus;
             CbLoteProduto.SelectAll;
             FrmPedidoItem.ModalResult := mrNone;
             Bit_Gravar.Enabled := True;
             Exit;

           end;
			 end
			 else
			 if (qAux.fieldByName('PRD_GRADE_OBRIGATORIO').AsString = 'S')
				 and (dbInicio.Empresa.bGradeObrigatoria) and (CbGrade.IdRetorno = '')
         	then
          begin
  					uteis.erro  ('A grade é obrigatória para este produto!');
            FrmPedidoItem.ModalResult := mrNone;
            Bit_Gravar.Enabled := True;
            Exit;
          end
			 else
			 if (cbCor.Visible) and (CbCor.idRetorno = '') then
       begin
					uteis.erro  ('A Cor é obrigatória para este produto!');
          FrmPedidoItem.ModalResult := mrNone;
          Bit_Gravar.Enabled := True;
          Exit;
       end
			 else
			 if   (cbCapacidade.Visible)
        and (cbCapacidade.idRetorno = '')
        and (BuscaUmDadoSqlAsString('SELECT PRD_CAPACIDADE_OBRIGATORIA FROM PRD0000 p WHERE PRD_REFER = ' + QuotedStr(cbReferencia.CdS.fieldByName('PRD_REFER').AsString) + 'AND EMP_CODIGO = ' + QuotedStr(DBInicio.EMP_CODIGO) ) = 'S')
       then
       begin
					uteis.erro  ('A Capacidade é obrigatória para este produto!');
          FrmPedidoItem.ModalResult := mrNone;
          Bit_Gravar.Enabled := True;
          Exit;
       end
			 else			 if wbDiretivaObrigatoria<>0 then
			 begin
							if wbDiretivaObrigatoria=2 then // multiplas
              begin
                   dataCadastros.sqlUpdate.Close;
                   DataCadastros.SqlUpdate.sql.text :='Select cast(count(*) as integer) as conta from PRD_DIRETIVA_ITEM WHERE prf_registro = '+QuotedStr(IntToStr(wID_DIRETIVAS));
                   dataCadastros.sqlUpdate.Open;
                   bContinuab := dataCadastros.sqlUpdate.Fields[0].asinteger>0;
                   if not bContinuab then
                   begin
                      uteis.erro  ('Informar as diretivas é obrigatório!');
                      FrmPedidoItem.ModalResult := mrNone;
                      Bit_Gravar.Enabled := True;
                      Exit;
                   end;
                   dataCadastros.sqlUpdate.close;
              end
              Else
              if (CbDiretiva.CodigoLista = '') then
              begin
                 uteis.erro  ('A diretiva é obrigatória!');
                 FrmPedidoItem.ModalResult := mrNone;
                 Bit_Gravar.Enabled := True;
                 Exit;
              end
              Else
								 bContinuab:=True;
       end
       else //Quantidade Saldo
       if bAfetaEstoque
            and ((rQtdeAnterior<>rQtdeNova) )
            and ( IIF (sTipo= 'I', dQtdeKit*rQtdeNova,dQtdeKit*(IIF(rQtdeNova > rQtdeAnterior,  rQtdeNova - rQtdeAnterior,0))) > rSaldo)  then
       begin
         if CbItemAgregado.Checked then
           GeraException  ('Não há itens suficiente em estoque para o kit !') ;
         bvendaPendente := (MessageDlg('Não é possível atender toda a quantidade do item, deseja gravar a quantidade para Venda Pendente ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) ;
         if bvendaPendente then
           bContinuab := true
         else
         begin
           uteis.aviso('Saldo do estoque indisponível para a quantidade solicitada');
           CurQuantidade.SetFocus;
           CurQuantidade.SelectAll;
           FrmPedidoItem.ModalResult := mrNone;
           Bit_Gravar.Enabled := True;
           Exit;
         end;

       end
       else if (FrmPedido.SqlCdsTipoPedidoOPV_ESTOQUE_REMESSAINDUS.AsString = 'S') AND (FrmPedido.EdCnpj.Text <> '') and (amx_destino = '')  then // entrada na estoque do terceiro
       begin
         uteis.aviso('Remessa de industrialização sem almoxarifado para CNPJ '+ FrmPedido.EdCnpj.Text+ '-'+ FrmPedido.edCliente.CdS.FieldByName('CLI_RAZAO').AsString );
         FrmPedidoItem.ModalResult := mrNone;
         Bit_Gravar.Enabled := True;
         Exit;
       end
       else
         bContinuab := true;
   end
   else
   if (pgcPrincipal.ActivePage = tsComGrade) and (bValidaProduto) then
   begin
      cdsclone := TClientDataSet.Create(self);
			try
			 cdsclone.CloneCursor(cdsItemGrade,true);
			 cdsclone.LogChanges := False;
			 cdsclone.Filter :=  ' PRG_QTDE > 0 ';
       cdsclone.Filtered := True;
       bContinuab := not cdsclone.IsEmpty;
       if not bContinuab then
          uteis.aviso('Informe a Quantidade em algum item.')
       else begin
          cdsclone.First;
          while not cdsClone.Eof do
          begin
					 if ((cdsclone.FieldByName('PRECO_LIQU').Value <= 0) ) AND //and (not CbItemAgregado.Checked)) and
            (((not DBInicio.Empresa.wPMT_VALOR_KIT)) or ((DBInicio.Empresa.wPMT_VALOR_KIT) and (not DBInicio.Empresa.wPMT_ITENS_KIT))) then
           begin
								bContinuab := False;
                uteis.aviso('Informe o Preço');
								break;
           end;
           // não definida a quantidade--- >  rQtdeAnterior  ***VERIFICA FUTURAMENTE COMO PROCEDER
					rQtdeNova :=  cdsclone.FieldByName('PRG_QTDE').Value;
					rSaldo := cdsclone.FieldByName('PRG_SALDO').Value;
          //Quantidade Saldo
           if (FrmPedido.SqlCdsTipoPedidoOPV_ATESTOQUE.AsString = 'S') and (dbInicio.Empresa.wAtualizaEstoque = 'P')
            and ( IIF(rQtdeNova > rQtdeAnterior,  rQtdeNova - rQtdeAnterior,0) > rSaldo) and (FrmPedido.SqlCdsTipoPedidoOPV_TIPO.AsString = 'S') then
            begin
               bContinuab := False;
               uteis.aviso('Saldo do estoque indisponível para a quantidade solicitada');
               break;
            end;
           cdsclone.Next;
          end; {fim-while}
       end; {fim-bContinuab = true}
       //verificar se algum item foi mudado de algum valor para zero
       if bContinuab then
       begin
        cdsclone.Filtered := False;
				cdsclone.Filter:= 'PRG_QTDE = 0 ';
        cdsclone.Filtered := True;
        cdsclone.First;
        ExclusaoItensGrade := False;
        while not cdsclone.Eof do
        begin
             if cdsclone.FieldByName('PRF_REGISTRO').Value <> 0 then
             begin
               ExclusaoItensGrade := (uteis.confirmacao('O item '+  cdsclone.FieldByName('PRG_DESCRICAO').AsString +
                ' Tinha '+ IntToStr(cdsclone.FieldByName('PRG_QTDEAnterior').AsInteger) + ' foi mudado para 0 (zero). '+
                'Deseja excluir o item ?')=mrYes);
               if not ExclusaoItensGrade then
               begin
                  bContinuab := False;
                  break;
							 end;
             end;
						 cdsclone.Next;
        end;
       end;
      finally
       FreeAndNil(cdsclone);
      end;
   end; {(pgcPrincipal.ActivePage = tsComGrade) and (bValidaProduto) }


   if (pnLoteProduto.visible) and (not opv_semlote ) and ((cbLoteProduto.idRetorno = '') and (edLoteVarios.Text = ''))  then
   begin
     if MessageDlg('Lote do produto não informado. Deseja gravar a quantidade para venda pendente?', mtConfirmation, mbYesNo, 0) = mrYes then
     begin
       qPendenteNova := CurQuantidade.Value;
       bContinuab := True;
     end
     else
     begin
       Bit_Gravar.Enabled := True;
       exit;
     end;
   end;

   if (pnLoteProduto.visible) and (edLoteVarios.Text <> '') and (CurQuantidade.Value > CurSaldoLote.Value)  then
   begin
     MessageDlg('Quantidade solicitada é maior que o saldo dos lotes.', mtWarning, [mbOk], 0);
     Bit_Gravar.Enabled := True;
     FrmPedidoItem.ModalResult := mrNone;
     Exit;
   end;



   if bContinuab then
   begin
       if FrmPedido <> nil then
         FrmPedido.PanelAguarde.Visible := True;
       Application.ProcessMessages;

       {atualização do kardex somente for pelo pedido e o tipo de pedido atualizar, orçamento por
       exemplo não atualiza}

       //Valida limite de desconto do usuario e Comissão
       if (ValidaDesconto) then
       begin
             //Verifica se o item já foi lançado e pergunta se realmente gostaria de lançar o item novamente
						 if (sTipo = 'I')
             and (FrmPedido.SqlCdsPedidoItem.Locate('PRD_REFER',cbReferencia.CdS.fieldByName('PRD_REFER').AsString,[]))
             then
             begin
                bVerificaGCC := BuscaUmDadoSqlAsString(
                  'SELECT FIRST 1 PED_CODIGO FROM PED_IT01 WHERE PED_CODIGO = ' + QuotedStr(FrmPedido.EdPedidoNumero.Text) + 
                  ' AND PRG_REGISTRO = ' + IntToStr(StrToIntDef(CbGrade.idRetorno, 0 )) + 
                  iif(cbCapacidade.idRetorno = '', '',  ' AND CAP_CODIGO = ' + IntToStr(StrToIntDef(cbCapacidade.idRetorno, 0 )) )+
                  ' AND ACO_CODIGO = ' + IntToStr(StrToIntDef(cbCor.idRetorno, 0 ))
                  ) <> '';
                if bVerificaGCC then
                  bContinua := (uteis.confirmacao ( 'Este produto já está lançado no pedido, confirma lançar novamente o produto ?')=mrYes)
                
             end;

						 if (bContinua) then
						 begin
               if bAfetaEstoque  then
               begin //tipo do pedido atualiza estoque


									 if ((sTipo = 'I') OR (sTipo = '')) then //Inclusao
									 begin

										iRegistro := dbInicio.GetNextSequence('GEN_ITEM_PEDIDO');
                    //USANDO GRADES
										if (pgcPrincipal.ActivePage = tsComGrade) then //atualizar saldo de estoque linha por linha
										begin
											cdsclone := TClientDataSet.Create(self);
											try
												cdsclone.CloneCursor(cdsItemGrade,true);
												cdsclone.LogChanges := False;
												cdsclone.Filter :=  ' PRG_QTDE > 0 ';
												cdsclone.Filtered := True;
												cdsclone.First;
												while not cdsclone.Eof do
												begin
													KardexLancamento(IntToStr(iRegistro),
																			'PED',
																			EdAlmoxarifadoCodigo.Text,
																			amx_destino,
																			cbReferencia.idRetorno,
																			cdsclone.FieldByName('PRG_REGISTRO').Value, //grade
																			'',
																			FrmPedido.SqlCdsTipoPedidoOPV_TIPO.AsString,
																			'',
																			VariosLote,
																			'VENDA DO ITEM - EMPENHADO PELO PEDIDO',
																			Now,
																			cdsclone.FieldByName('PRG_QTDE').Value,
																			NumeroPedido,
																			FrmPedido.edCliente.CdS.FieldByName('CLI_CODIGO').AsString+'-'+FrmPedido.edCliente.CdS.FieldByName('CLI_RAZAO').AsString,
																			cdsclone.FieldByName('PRECO_LIQU').Value,
                                      FrmPedido.edCliente.CdS.FieldByName('CLI_CODIGO').AsString,//CLI_CODIGO
                                      '',//FOR_CODIGO
                                      '',//COL_CODIGO
                                      '',//REFERENCIA
                                      ((FrmPedido.SqlCdsTipoPedidoOPV_ESTOQUE_REMESSAINDUS.AsString = 'S') AND (FrmPedido.EdCnpj.Text <> '') ),  // entrada na estoque do terceir
                                       'REMESSA INDUSTRIALIZAÇÃO - EMPENHADO PELO PEDIDO');


													cdsclone.Next;
												end;

											finally
												FreeAndNil(cdsclone);
											end;
										end
										else // SEM GRADE
                    begin

                      if (rSaldo > 0) and not ((rQtdeAnterior=rQtdeNova) and (sTipo = 'A'))
                        and ((pnLoteProduto.visible) and (not opv_semlote ) and ((cbLoteProduto.idRetorno <> '') or (edLoteVarios.Text <> '')))
                      then
                      begin
                        KardexLancamento(IntToStr(iRegistro),         // registro interno
                                          'PED',                      // tipo do registro
                                          EdAlmoxarifadoCodigo.Text,  // almoxarifado de saída
                                          amx_destino,                // almoxarifado de entrada
                                          cbReferencia.idRetorno,     // Referência do produto
                                          CbGrade.IdRetorno,        // codigo da grade...
                                          cbUnidade.IdRetorno,        // unidade de medida
                                          FrmPedido.SqlCdsTipoPedidoOPV_TIPO.AsString,   // tipo Entrada ou Saída [E/S]
                                          '',                         // lote
                                          VariosLote,                 // registro do lote
                                          'VENDA DO ITEM - EMPENHADO PELO PEDIDO', // observação
                                          Now,                        // data da entrada ou saída
                                          iif(bvendaPendente,rSaldo,dQtdeKit*CurQuantidade.Value), // Quantidade movimentada
                                          NumeroPedido,               // número do documento (neste caso, peido)
                                          FrmPedido.edCliente.CdS.FieldByName('CLI_CODIGO').AsString+'-'+FrmPedido.edCliente.CdS.FieldByName('CLI_RAZAO').AsString, // descrição...
                                          CurPrecoLiquido.Value,      // preço
                                          FrmPedido.edCliente.CdS.FieldByName('CLI_CODIGO').AsString,// Código do Cliente
                                          '',//FOR_CODIGO
                                          '',//COL_CODIGO
                                          '',//REFERENCIA
                                          ((FrmPedido.SqlCdsTipoPedidoOPV_ESTOQUE_REMESSAINDUS.AsString = 'S') AND (FrmPedido.EdCnpj.Text <> '') ),  // entrada no estoque do terceiro
                                           'REMESSA INDUSTRIALIZAÇÃO - EMPENHADO PELO PEDIDO')


                      end
                      else
                      if (rSaldo > 0) and not ((rQtdeAnterior=rQtdeNova) and (sTipo = 'I'))
                      then
                      begin
                        KardexLancamento(IntToStr(iRegistro),         // registro interno
                                          'PED',                      // tipo do registro
                                          EdAlmoxarifadoCodigo.Text,  // almoxarifado de saída
                                          amx_destino,                // almoxarifado de entrada
                                          cbReferencia.idRetorno,     // Referência do produto
                                          CbGrade.IdRetorno,        // codigo da grade...
                                          cbUnidade.idRetorno,                         // unidade de medida
                                          FrmPedido.SqlCdsTipoPedidoOPV_TIPO.AsString,   // tipo Entrada ou Saída [E/S]
                                          '',                         // lote
                                          VariosLote,                 // registro do lote
                                          'VENDA DO ITEM - EMPENHADO PELO PEDIDO', // observação
                                          Now,                        // data da entrada ou saída
                                          iif(bvendaPendente,rSaldo,dQtdeKit*CurQuantidade.Value), // Quantidade movimentada
                                          NumeroPedido,               // número do documento (neste caso, peido)
                                          FrmPedido.edCliente.CdS.FieldByName('CLI_CODIGO').AsString+'-'+FrmPedido.edCliente.CdS.FieldByName('CLI_RAZAO').AsString, // descrição...
                                          CurPrecoLiquido.Value,      // preço
                                          FrmPedido.edCliente.CdS.FieldByName('CLI_CODIGO').AsString,// Código do Cliente
                                          '',//FOR_CODIGO
                                          '',//COL_CODIGO
                                          '',//REFERENCIA
                                          ((FrmPedido.SqlCdsTipoPedidoOPV_ESTOQUE_REMESSAINDUS.AsString = 'S') AND (FrmPedido.EdCnpj.Text <> '') ),  // entrada no estoque do terceiro
                                           'REMESSA INDUSTRIALIZAÇÃO - EMPENHADO PELO PEDIDO')
                      end;
                    end;
									 end
									 else
									 begin  // para alteração de produto
										iRegistro := FrmPedido.SqlCdsPedidoItemPRF_REGISTRO.AsInteger;
										//iRegistroItemAnterior := iRegistro;
										{alterou de produto na alteração
										obs: para produto com grade multipla não permite alteração. somente quando for
										"sem grade" ou grade simples}
										if (pgcPrincipal.ActivePage = tsComGrade) then //atualizar saldo de estoque linha por linha
										begin
											cdsclone := TClientDataSet.Create(Self);
											try
												cdsclone.CloneCursor(cdsItemGrade,true);
												cdsclone.LogChanges := False;
												cdsclone.First;
												while not cdsclone.Eof do
                        begin
												 (* quantidade foi alterada  registra somente a diferença
													se for saida é estorno, se foi entrada é entrada da diferença como adicional no kardex
												 *)
													if cdsclone.FieldByName('PRG_QTDEAnterior').Value > cdsclone.FieldByName('PRG_QTDE').Value then
														stipoKardesES := iif(FrmPedido.SqlCdsTipoPedidoOPV_TIPO.AsString = 'S','E','S')
													else
														stipoKardesES := FrmPedido.SqlCdsTipoPedidoOPV_TIPO.AsString;
													// a exclusão do item ele fará na tela de pedido
													if cdsclone.FieldByName('PRG_QTDE').Value <> 0 then
                          begin

														KardexLancamento(IntToStr(iRegistro),
																						 'PED',
																						 EdAlmoxarifadoCodigo.Text,
																						 amx_destino,
																						 cbReferencia.idRetorno,
																						 cdsclone.FieldByName('PRG_REGISTRO').Value, //codigo da grade
																						 '',
																						 stipoKardesES,
																						 '',
																						 VariosLote,
																						 'ALTERAÇÃO DE ITEM - EMPENHADO PELO PEDIDO',
																						 Now,
																						 Abs(cdsclone.FieldByName('PRG_QTDEAnterior').Value - cdsclone.FieldByName('PRG_QTDE').Value),
																						 NumeroPedido,
																						 FrmPedido.edCliente.CdS.FieldByName('CLI_CODIGO').AsString+'-'+FrmPedido.edCliente.CdS.FieldByName('CLI_RAZAO').AsString,
																						 CurPrecoLiquido.Value,
                                            FrmPedido.edCliente.CdS.FieldByName('CLI_CODIGO').AsString,//CLI_CODIGO
                                            '',//FOR_CODIGO
                                            '',//COL_CODIGO
                                            '',//REFERENCIA
                                            ((FrmPedido.SqlCdsTipoPedidoOPV_ESTOQUE_REMESSAINDUS.AsString = 'S') AND (FrmPedido.EdCnpj.Text <> '') ),  // entrada na estoque do terceir
                                             'REMESSA INDUSTRIALIZAÇÃO - ALTERAÇÃO DE ITEM - EMPENHADO PELO PEDIDO')

                          end;
													cdsclone.Next;
												end
											finally
												FreeAndNil(cdsclone);
											end;


										end
										else // sem grade e alterou o produto ou almoxarifado
										begin
                      //estorno do produto anterior
											   //verifica se alterou o produto ou almoxarifado
                     if (ProdutoOriginal <> EdReferencia.Text)  or
                          (almoxarifado <> EdAlmoxarifadoCodigo.Text) then
											begin

                        //se não atualizou, não precisa estorna, ou seja, tava tudo pendente
                       if (qPendenteAnterior <> rQtdeAnterior) then
                       begin
                         KardexLancamento(IntToStr(iRegistro), //Alterar Item Antigo
                                          'PED',
                                          almoxarifado, //almoxarifado antes de ser alterado
                                          amx_destino,
                                          ProdutoOrigCodigo, // produto antes de ser alterado
                                          CbGrade.IdRetorno,
                                          '',
                                          iif(FrmPedido.SqlCdsTipoPedidoOPV_TIPO.AsString = 'S','E','S'),
                                          '',
                                          VariosLote,
                                          'ALTERAÇÃO DE ITEM - EMPENHADO PELO PEDIDO',
                                          Now,
                                          ((dQtdeKit*rQtdeAnterior)-qPendenteAnterior),
                                          NumeroPedido,
                                          FrmPedido.edCliente.CdS.FieldByName('CLI_CODIGO').AsString+'-'+FrmPedido.edCliente.CdS.FieldByName('CLI_RAZAO').AsString,
                                          CurPrecoLiquido.Value,
                                          FrmPedido.edCliente.CdS.FieldByName('CLI_CODIGO').AsString,//CLI_CODIGO
                                            '',//FOR_CODIGO
                                            '',//COL_CODIGO
                                            '',//REFERENCIA
                                            ((FrmPedido.SqlCdsTipoPedidoOPV_ESTOQUE_REMESSAINDUS.AsString = 'S') AND (FrmPedido.EdCnpj.Text <> '') ),  // entrada na estoque do terceir
                                             'REMESSA INDUSTRIALIZAÇÃO - ALTERAÇÃO DE ITEM - EMPENHADO PELO PEDIDO')


                       end;

                       rQtdeAnterior := 0 ;  //SE MUDOU O PRODUTO DESCONSIDERAR A QUANTIDADE ANTERIOR,
                                              //ou seja é como se fosse uma inclusão
                       qPendenteAnterior := 0 ;

                        if rSaldo > 0  then //Lançar no estoque do item novo se tiver saldo
                        begin
                         KardexLancamento(IntToStr(iRegistro), //Altera Item novo
                                          'PED',
                                          EdAlmoxarifadoCodigo.Text,
                                          amx_destino,
                                          cbReferencia.idRetorno,
                                          CbGrade.IdRetorno,
                                          '',
                                          FrmPedido.SqlCdsTipoPedidoOPV_TIPO.AsString,
                                          '',
                                          VariosLote,
                                          'VENDA DO ITEM - EMPENHADO PELO PEDIDO',
                                          Now,
                                          iif(bvendaPendente,rSaldo,rQtdeNova), // era qpreciso foi mudada para rQtdeNova
                                          NumeroPedido,
                                          FrmPedido.edCliente.CdS.FieldByName('CLI_CODIGO').AsString+'-'+FrmPedido.edCliente.CdS.FieldByName('CLI_RAZAO').AsString,
                                          CurPrecoLiquido.Value,
                                          FrmPedido.edCliente.CdS.FieldByName('CLI_CODIGO').AsString,//CLI_CODIGO
                                            '',//FOR_CODIGO
                                            '',//COL_CODIGO
                                            '',//REFERENCIA
                                            ((FrmPedido.SqlCdsTipoPedidoOPV_ESTOQUE_REMESSAINDUS.AsString = 'S') AND (FrmPedido.EdCnpj.Text <> '') ),  // entrada na estoque do terceir
                                             'REMESSA INDUSTRIALIZAÇÃO - EMPENHADO PELO PEDIDO')

                        end;
											end
											else if  (rQtdeNova <> rQtdeAnterior ) then // não alterou o produto, mas somente alterou a quantidade
											begin

												 if (rQtdeAnterior > rQtdeNova) then //Remove
												 begin
                          if not ((qAux.fieldByName('PTI_SIGLA').AsString = 'KT')  and not (DBInicio.Empresa.wPMT_CONTROLA_KIT))
                          and (( (dQtdeKit*(rQtdeAnterior - rQtdeNova))- qPendenteAnterior)>0)    then  // formula valida pela tabela verdade (rQtdeAnterior - qPendente - rQtdeNova)>0)
                            //estorno
                          BEGIN
														KardexLancamento(IntToStr(iRegistro),
																						 'PED',
																						 EdAlmoxarifadoCodigo.Text,
																						 amx_destino,
																						 cbReferencia.idRetorno,
																						 CbGrade.IdRetorno,
																						 '',
																						 iif(FrmPedido.SqlCdsTipoPedidoOPV_TIPO.AsString = 'S','E','S'),
																						 '',
																						 VariosLote,
																						 'ALTERAÇÃO DE ITEM - EMPENHADO PELO PEDIDO',
																						 Now,
																						 (dQtdeKit*(rQtdeAnterior - rQtdeNova))- qPendenteAnterior,
																						 NumeroPedido,
																						 FrmPedido.edCliente.CdS.FieldByName('CLI_CODIGO').AsString+'-'+FrmPedido.edCliente.CdS.FieldByName('CLI_RAZAO').AsString,
																						 CurPrecoLiquido.Value,
                                            FrmPedido.edCliente.CdS.FieldByName('CLI_CODIGO').AsString,//CLI_CODIGO
                                            '',//FOR_CODIGO
                                            '',//COL_CODIGO
                                            '',//REFERENCIA
                                            ((FrmPedido.SqlCdsTipoPedidoOPV_ESTOQUE_REMESSAINDUS.AsString = 'S') AND (FrmPedido.EdCnpj.Text <> '') ),  // entrada na estoque do terceir
                                             'REMESSA INDUSTRIALIZAÇÃO - ALTERAÇÃO DE ITEM - EMPENHADO PELO PEDIDO');
                          END;
												 end
												 else
												 if (rQtdeAnterior < rQtdeNova) then //Adiciona
												 begin
                           if not ((qAux.fieldByName('PTI_SIGLA').AsString = 'KT')  and not (DBInicio.Empresa.wPMT_CONTROLA_KIT))  and
                            (rsaldo > 0 ) then
                           begin

                             // se o saldo no estoque for igual ou menor do que preciso, dou saida de tudo que está no estoque
                             //senão retiro somente que preciso
                                KardexLancamento(IntToStr(iRegistro),
																							 'PED',
																							 EdAlmoxarifadoCodigo.Text,
																							 amx_destino,
																							 cbReferencia.idRetorno,
																							 CbGrade.IdRetorno,
																							 '',
																							 FrmPedido.SqlCdsTipoPedidoOPV_TIPO.AsString,
																							 '',
																							 VariosLote,
																							 'ALTERAÇÃO DE ITEM - EMPENHADO PELO PEDIDO',
																							 Now,
                                             iif(qpreciso>=rsaldo,rsaldo, qpreciso) ,
																							 NumeroPedido,
																							 FrmPedido.edCliente.CdS.FieldByName('CLI_CODIGO').AsString+'-'+FrmPedido.edCliente.CdS.FieldByName('CLI_RAZAO').AsString,
																							 CurPrecoLiquido.Value,
                                              FrmPedido.edCliente.CdS.FieldByName('CLI_CODIGO').AsString,//CLI_CODIGO
                                              '',//FOR_CODIGO
                                              '',//COL_CODIGO
                                              '',//REFERENCIA
                                              ((FrmPedido.SqlCdsTipoPedidoOPV_ESTOQUE_REMESSAINDUS.AsString = 'S') AND (FrmPedido.EdCnpj.Text <> '') ),  // entrada na estoque do terceir
                                               'REMESSA INDUSTRIALIZAÇÃO - ALTERAÇÃO DE ITEM - EMPENHADO PELO PEDIDO');



                           end;
												 end;
											end//fim-else quanto for alteração de quantidades, mas não alterou o produto
                      // quando ele tem valor pendente e tem estoque
                      Else if (rQtdeNova = rQtdeAnterior) and   //não alterou a quantidade
                      (qPendenteAnterior>0)  and // ainda tem quantida pendente de saida de estoque
                      (rSaldo > 0)  then // não alterou o produto, nem almoxarifado, nem a quantidade mais o saldo é positivo e não atualizou o estoque
                      begin

                        KardexLancamento(IntToStr(iRegistro),
                                       'PED',
                                       EdAlmoxarifadoCodigo.Text,
                                       amx_destino,
                                       cbReferencia.idRetorno,
                                       CbGrade.IdRetorno,
                                       '',
                                       FrmPedido.SqlCdsTipoPedidoOPV_TIPO.AsString,
                                       '',
                                       VariosLote,
                                       'ALTERAÇÃO DE ITEM - EMPENHADO PELO PEDIDO',
                                       Now,
                                       dQtdeEstoque ,
                                       NumeroPedido,
                                       FrmPedido.edCliente.CdS.FieldByName('CLI_CODIGO').AsString+'-'+FrmPedido.edCliente.CdS.FieldByName('CLI_RAZAO').AsString,
                                       CurPrecoLiquido.Value,
                                            FrmPedido.edCliente.CdS.FieldByName('CLI_CODIGO').AsString,//CLI_CODIGO
                                            '',//FOR_CODIGO
                                            '',//COL_CODIGO
                                            '',//REFERENCIA
                                            ((FrmPedido.SqlCdsTipoPedidoOPV_ESTOQUE_REMESSAINDUS.AsString = 'S') AND (FrmPedido.EdCnpj.Text <> '') ),  // entrada na estoque do terceir
                                             'REMESSA INDUSTRIALIZAÇÃO - ALTERAÇÃO DE ITEM - EMPENHADO PELO PEDIDO');
                        bvendaPendente :=  rSaldo < qpreciso;
                      end;


										end;//sem grade
									 end; // fim-se é para "alteração" ou seja stipo <> 'I'
							 end; //fim-se dbInicio.Empresa.wAtualizaEstoque = 'P')  and (FrmPedido.SqlCdsTipoPedidoOPV_ATESTOQUE.AsString = 'S')
							 if (CbGrade.IdRetorno = '') then //Grade
									iGrade := 0
							 else
									iGrade := StrToInt(CbGrade.IdRetorno);

                  if not disComissao then
  									 CurComissao.Value := RetornaPercentualComissao(cbReferencia.CdS.fieldByName('PRD_REFER').AsString);

									 //Custo

                   if DBInicio.Exclusivo( 'PRODUTO_PRECO_EMPRESA' )  then
                      rCusto := qAux.fieldByName('PRD_PCUSTO').AsCurrency
                   else
                   begin
  									 //calcular conforme parametro -> 0 = custo liquido, 1 = custo entrada 2 : custo medio
                     if dbInicio.Empresa.wCalcularPV = 0 then
                        rCusto := qAux.fieldByName('PRD_PCUSTO').AsCurrency
                     else if dbInicio.Empresa.wCalcularPV = 1 then
                     begin
                          rCusto := qAux.fieldByName('PRD_CUSTOCOMIPI').AsCurrency;
                          if (rCusto = 0) then
                             rCusto := qAux.fieldByName('PRD_PCUSTO').AsCurrency;
                     end
                     else  if dbInicio.Empresa.wCalcularPV = 2 then
                       rCusto := qAux.FieldByName('PRD_PMEDIO').AsCurrency;
                   end;
               //    if cbReferencia.CdS.fieldByName('PRD_PVENDA').AsCurrency  <> 0  then
  						 //			 rCusto :=  (cbReferencia.CdS.fieldByName('PRD_PVENDA').AsCurrency / (100 + qAux.fieldByName('PRD_MARGEMVENDA').AsCurrency)) * 100;
									 iDiretiva := StrToIntDef(CbDiretiva.CodigoLista,0);
									 sTabelaPreco := '';

                   if (pgcPrincipal.ActivePage <> tsComGrade)
                   and dbInicio.Empresa.bHabilitarTabelaPreco and not
                   VarIsEmpty(cbTabelaPrecoMultiplo.EditValue) and not VarIsNull(cbTabelaPrecoMultiplo.EditValue) then
                     case cbTabelaPrecoMultiplo.EditValue of
                       1:sTabelaPreco := 'T1';
                       2:sTabelaPreco := 'T2';
                       3:sTabelaPreco := 'T3';
                       4:sTabelaPreco := 'T4';
                       5:sTabelaPreco := 'T5';
                       6:sTabelaPreco := 'T6';
                     end;

                     if DBInicio.GetParametroSistema('PMT_PEDIDO_IND_PLASTICA') = 'S' then
                     begin
                        if CbCapacidade.Text <> '' then
                          descricaoProduto := COPY(MemoDescricao.Text + ' ' + CbCapacidade.Text + ' ',1,254)
                        else
                          descricaoProduto := COPY(MemoDescricao.Text,1,254);

                        if cbUnidade.idRetorno = 'KG' then
                          descricaoProduto := COPY(FloatToStr(CurPeso.Value) + ' MIL ' + descricaoProduto+' '+CbGrade.Text,1,254)
                        else
                          descricaoProduto := COPY(descricaoProduto + ' ' + CbGrade.Text + ' ',1,254);

                        if cbCor.Text <> '' then
                          descricaoProduto := COPY(descricaoProduto + ' ' + CbCor.Text + ' ',1,254);
                     end
                     else
                        descricaoProduto := COPY(MemoDescricao.Text+' '+CbGrade.Text,1,254);


									 // inclusão do item -->
									 // INCLUSÃO PELOS CAMPOS (ORIGINAL)
                   // (qAux.FieldByName('PRD_GRADE_OBRIGATORIO').AsString = 'N') and
                   aliquotaICMS := buscaAliquotaICMS(cbReferencia.CdS.fieldByName('PRD_REFER').AsString, FrmPedido.edCfop.idRetorno);
                   valorICMS := (CurTotal.Value / 100 * aliquotaICMS);

                   if (dbInicio.GetParametroSistema('PMT_ATIVA_METRO_CUBICO') = 'S') and (cbUnidade.idRetorno = 'M3') then
                     indice := dbInicio.BuscaUmDadoSqlAsFloat('SELECT PRG_INDICE FROM PRD_GRADE WHERE PRG_REGISTRO = ' + cbGrade.idRetorno)
                   else
                    indice := 1;
									 if (pgcPrincipal.ActivePage = tsSemGrade) then
                   begin
                          iRegistroItem := GravarPedidoItem(iif((DBInicio.Empresa.wPMT_VALOR_KIT) and (FrmPedido.WDiretivaKit > 0),FrmPedido.WDiretivaKit,wID_DIRETIVAS),
                                                           iif(cbUnidade.idRetorno = '', cbReferencia.CdS.fieldByName('PRD_UND').AsString, cbUnidade.IdRetorno),
                                                           NumeroPedido,
                                                           cbReferencia.CdS.fieldByName('PRD_CODIGO').AsString,
                                                           cbReferencia.CdS.fieldByName('PRD_REFER').AsString,
                                                           EdReferenciaOriginal.Text,
                                                           descricaoProduto,
                                                           EdAlmoxarifadoCodigo.Text,
                                                           MemoComplemento.Text,
                                                           Trim(edtPedidoB2B.Text),
                                                           sTabelaPreco,
                                                           IIF(bUsouVerba,'S','N'),
                                                           FrmPedido.LblMovimentaEstoque.Caption = 'Movimenta Estoque',
                                                           CbItemAgregado.Checked,
                                                            CurQuantidade.Value,
                                                            CurQuantidade.Value,
                                                           0,  // Quantidade Faturada
                                                           iif(ChkSemValor.Checked,0,CurPrecoLiquido.Value * indice),
                                                           iif(ChkSemValor.Checked,0,CurPrecoBruto.Value * indice),
                                                           rCusto,
                                                           CurMarkup.Value,
                                                           CurrAcrescimoReal.Value,
                                                           CurDesconto.Value,
                                                           CurDescontoAdicional.Value,
                                                           CurComissao.Value,
                                                           CurPercentIPI.Value,
                                                           CurValorST.Value,
                                                           aliquotaICMS,
                                                           valorICMS,
                                                           rValorVerba,
                                                           IIF(sTipo = 'I',0,iRegistroItemAnterior),
                                                           StrToInt(DBiNICIO.USUARIO.CODIGO),
                                                           VariosLote,
                                                           iGrade,
                                                           SpinItemB2B.AsInteger,
                                                           IIF(CbItemAgregado.Checked,regvinculado,0),
                                                           iDiretiva,
                                                           DateToSQL(PRF_PRAZO_ENTREGA.Date),
                                                           iif(bprazoitens, edPrazo.Text,'') ,
                                                           CurrPesoIndividual.Value,
                                                           qPendenteNova,
                                                           ChkSemValor.Checked
                                                           );
                          if (FrmPedido.SqlCdsTipoPedidoOPV_ATESTOQUE.AsString = 'S') and (qAux.fieldByName('PTI_SIGLA').AsString = 'KT') and (DBInicio.Empresa.wPMT_CONTROLA_KIT) then
                          begin
                            kardexSaldo := BuscaUmDadoSqlAsFloat('SELECT AMX_SALDO_RET FROM pCd_kardex_saldo(' + DBInicio.Emp_Codigo +  ', ' + QuotedStr(cbReferencia.CdS.fieldByName('PRD_CODIGO').AsString) + ',' + QuotedStr(EdAlmoxarifadoCodigo.Text) + ' ) ');
                            if kardexSaldo < curQuantidade.Value then
                              ExecSQL('update PED_IT01 set PRF_QTDEPEND  = '+FloatToSQL(CurQuantidade.Value-kardexSaldo) +' , PRF_DTPENDENCIA = CURRENT_TIMESTAMP ' + 'where PRF_REGISTRO =  '+ IntToStr(iRegistroItem) );
                          end;
         {
                           if VarIsNull(VariosLote) or VarIsEmpty( VariosLote) then
                           begin
                            // iRegistroLote
                            if (CbLoteProduto.idRetorno='') then
                               VariosLote := 0
                            else
                            begin
                               VariosLote := CbLoteProduto.idRetorno.ToInteger;
                               AlteraLoteProduto(VariosLote, iRegistroItem);
                            end;
                           end
                           Else
                            // atualizar saldo do lote, se tiver
                             AlteraLoteProduto(VariosLote, iRegistroItem);

          }

                   end
									 else // grade
									 if (qAux.FieldByName('PRD_GRADE_OBRIGATORIO').AsString = 'S') and
											(pgcPrincipal.ActivePage = tsComGrade) then
									 begin
										 cdsclone := TClientDataSet.Create(self);
										 try
												cdsclone.CloneCursor(cdsItemGrade,true);
												cdsclone.LogChanges := False;
												cdsclone.First;
												while not cdsClone.Eof do
												begin

														if (qAux.FieldByName('IPI_VALOR_POR_ITEM').Value = 0) and (qAux.FieldByName('IPI_VALOR_POR_ITEM').IsNull) then
																	lvalor := 0
														else
															 lValor := qAux.FieldByName('IPI_VALOR_POR_ITEM').asCurrency;

														lvalorIPI := 0;
														if lValor > 0 then
																lvalorIPI := lValor * cdsclone.FieldByName('PRG_QTDE').Value
														else
																if (cdsclone.FieldByName('PORC_IPI').Value > 0) then
																	 lvalorIPI :=   cdsclone.FieldByName('Vlr_Total').Value *  ( cdsclone.FieldByName('PORC_IPI').Value/100);
													 lvalorST := CalculaSTItem(BCDToCurrency(cdsclone.FieldByName('Vlr_Total').asBCD+ lvalorIPI));

													 if cdsclone.FieldByName('PRG_QTDE').Value > 0 then
														 iRegistroItem := GravarPedidoItem(0,
                                               cbReferencia.CdS.fieldByName('PRD_UND').AsString, // cbUnidade.idRetorno,
																							 NumeroPedido,
																							 cbReferencia.CdS.fieldByName('PRD_CODIGO').AsString,
																							 cbReferencia.CdS.fieldByName('PRD_REFER').AsString,
																							 EdReferenciaOriginal.Text,
																							 copy(MemoDescricao.Text+' '+
																								cdsclone.FieldByName('PRG_DESCRICAO').AsString,1,100),
																							 //COPY(MemoDescricao.Text+' '+CbGrade.Text,1,100),
																							 EdAlmoxarifadoCodigo.Text,
																							 MemoComplemento.Text,
																							 Trim(edtPedidoB2B.Text),
																							 sTabelaPreco,
																							 IIF(bUsouVerba,'S','N'),
																							 FrmPedido.LblMovimentaEstoque.Caption = 'Movimenta Estoque',
																							 CbItemAgregado.Checked,
																							 cdsclone.FieldByName('PRG_QTDE').Value,
																							 cdsclone.FieldByName('PRG_QTDE').Value,
																							 //CurQuantidade.Value,
																							 0,
																							 cdsclone.FieldByName('PRECO_LIQU').Value,
																							 cdsclone.FieldByName('PRG_BRUTO').Value,
																							// CurPrecoLiquido.Value,
																							// CurPrecoBruto.Value,
																							 rCusto,
																							 CurMarkup.Value,
																							 CurrAcrescimoReal.Value,
																							 cdsclone.FieldByName('PRD_DESC').Value,
																							 CurDescontoAdicional.Value,
																							 iif(cdsclone.FieldByName('COMISSAO').IsNull,0,cdsclone.FieldByName('COMISSAO').AsFloat),
																							 //CurComissao.Value,
																							 lvalorIPI,
																							 //CurPercentIPI.Value,
																							 lvalorST,
																							 //CurValorST.Value,
																							 0,
																							 0,
																							 rValorVerba,
																							 IIF(sTipo = 'I',0,cdsclone.FieldByName('PRF_REGISTRO').AsInteger),
																							 StrToInt(DBInicio.Usuario.CODIGO),
																							 VariosLote,
																							 cdsclone.FieldByName('PRG_REGISTRO').Value,
																							 //igrade
																							 SpinItemB2B.AsInteger,
																							 0,
																							 iDiretiva,
                                               DateToSQL(PRF_PRAZO_ENTREGA.Date),
                                               iif(bprazoitens, edPrazo.Text,''),
                                               0.0,
                                               0,
                                               ChkSemValor.Checked
																							 );




                           if VarIsNull(VariosLote) or VarIsEmpty( VariosLote) then
                           begin
                            // iRegistroLote
                            if (CbLoteProduto.idRetorno='') then
                               VariosLote := 0
                            else
                            begin
                               VariosLote := CbLoteProduto.idRetorno.ToInteger;
                               AlteraLoteProduto(VariosLote, iRegistroItem);
                            end;
                           end
                           Else
                            // atualizar saldo do lote, se tiver
                             AlteraLoteProduto(VariosLote, iRegistroItem);




													 cdsclone.Next;
												end;
										 finally
											 FreeAndNil(cdsclone);

										 end;
									 end;
                   if DBInicio.empresa.wPMT_PROD_TERMICO then
                   begin
                      GravarTratamentoTermicoItemPedido(iRegistroItem,edtipo.Text,edMaterial.Text, edsuperficial.text, ednucleo.Text,
                        edProfundidade.Text, edTamanho.Text, edeht.Text, edDesenho.Text, edPeso.Value, edQtdeItens.Value);


                   end;

                   // Atualiza Unidade e peso para a industria plastica
                   if cbUnidade.Visible then
                   begin
  									 if cbUnidade.idRetorno <> '' then
	  										ExecSql( 'UPDATE PED_IT01 SET PRD_UND = ' + qStr(cbUnidade.idRetorno) + ' WHERE PRF_REGISTRO = '+IntToStr(iRegistroItem) );
                     ExecSql( 'UPDATE PED_IT01 SET PRF_PESO = ' + FloatToSQL(CurPeso.Value) + ' WHERE PRF_REGISTRO = ' + IntToStr(iRegistroItem) );
                   end;

                   // Atualiza Capacidade para a industria plastica
                   if cbCapacidade.Visible then
  									 if cbCapacidade.idRetorno <> '' then
                       ExecSql( 'UPDATE PED_IT01 SET CAP_CODIGO = ' + qStr(cbCapacidade.idRetorno) + ' WHERE PRF_REGISTRO = '+IntToStr(iRegistroItem) )
                     else
                       ExecSql( 'UPDATE PED_IT01 SET CAP_CODIGO = 0 WHERE PRF_REGISTRO = '+IntToStr(iRegistroItem) );

                   if cbCor.Visible then
  									 if cbCor.idRetorno <> '' then
                       ExecSql( 'UPDATE PED_IT01 SET ACO_CODIGO = ' + qStr(cbCor.idRetorno) + ' WHERE PRF_REGISTRO = '+IntToStr(iRegistroItem) )
                     else
                       ExecSql( 'UPDATE PED_IT01 SET ACO_CODIGO = NULL WHERE PRF_REGISTRO = '+IntToStr(iRegistroItem) );

                   if BuscaUmDadoSqlAsString('SELECT PRD_ORIGEM FROM PRD0000 WHERE PRD_CODIGO = ' + QuotedStr(cbReferencia.idRetorno)) = '' then
                      uteis.aviso('A origem do Produto (Fiscal) não está cadastrada')
                   else
                     ExecSql( 'UPDATE PED_IT01 SET PRD_ORIGEM = ' +
                            BuscaUmDadoSqlAsString('SELECT PRD_ORIGEM FROM PRD0000 WHERE PRD_CODIGO = ' + QuotedStr(cbReferencia.idRetorno)  )  +
                            ' WHERE PRF_REGISTRO = '+IntToStr(iRegistroItem) );



    {

                   if VarIsNull(VariosLote) or VarIsEmpty( VariosLote) then
                   begin
                    // iRegistroLote
                    if (CbLoteProduto.idRetorno='') then
                       VariosLote := 0
                    else
                    begin
                       VariosLote := CbLoteProduto.idRetorno.ToInteger;
                       AlteraLoteProduto(VariosLote, iRegistroItem);
                    end;
                   end
                   Else
                    // atualizar saldo do lote, se tiver
                     AlteraLoteProduto(VariosLote, iRegistroItem);




     }

                   if (CbGrade.IdRetorno <> '') then
                   begin
                     DataCadastros.sqlUpdate.Close;
                     DataCadastros.SqlUpdate.sql.text :=SQLDEF('TABELAS','SELECT * FROM prd_grade T1 ','WHERE T1.prg_registro = '+QuotedStr(CbGrade.IdRetorno),'','t1.');
                     DataCadastros.sqlUpdate.Open;

                     if DBInicio.GetParametroSistema('PMT_PEDIDO_IND_PLASTICA') = 'S' then
                        prdRefer := IntToStr(cbReferencia.CdS.fieldByName('PRD_REFER').AsInteger)
                     else
                        prdRefer := cbReferencia.CdS.fieldByName('PRD_REFER').AsString;

//                     if StrToInt(cbCor.idRetorno) <= 9 then
//                        Cor := '0' + cbCor.idRetorno
//                     else

                     Cor := cbCor.idRetorno;


                     prdCoCodigoOriginal :=
                        prdRefer +
                        IntToStr(Trunc(DataCadastros.sqlUpdate.FieldByName('PRG_MEDIDA_1').AsCurrency * 10)) +
                        IntToStr(Trunc(DataCadastros.sqlUpdate.FieldByName('PRG_MEDIDA_2').AsCurrency)) +
                        IntToStr(Trunc(DataCadastros.sqlUpdate.FieldByName('PRG_MEDIDA_3').AsCurrency * 1000))  +
                        Cor;
                     ExecSql( 'UPDATE PED_IT01 SET PRDCO_CODIGO_ORIGINAL = ' + qStr(PrdCoCodigoOriginal) + ' WHERE PRF_REGISTRO = '+IntToStr(iRegistroItem) );
{
                     if (DataCadastros.sqlUpdate.FieldByName('PRG_MEDIDA_1').AsFloat <= 18) and (DataCadastros.sqlUpdate.FieldByName('PRG_MEDIDA_2').AsFloat <= 30) then
                       NCMCodigo := '39232110'
                     else
                       NCMCodigo := '39232190';
 }
                     NCMCodigo := BuscaUmDadoSqlAsString('SELECT IPI_CODIGO FROM PRD0000 WHERE PRD_REFER = ' + QuotedStr(prdRefer) );

                     ExecSql( 'UPDATE PED_IT01 SET NCM_CODIGO  = ' + qStr(NCMCodigo) + ' WHERE PRF_REGISTRO = '+IntToStr(iRegistroItem) );

                   end;


									 //Atualiza Tipo de Industrialização
									 if cxLookupComboBox1.idRetorno<>'' then
											ExecSql( 'UPDATE PED_IT01 SET ITT_REGISTRO = '+qStr(cxLookupComboBox1.idRetorno)+' WHERE PRF_REGISTRO = '+IntToStr(iRegistroItem) );

                   //item agregado atualizou , verificar se ficou pendente o kit
									 //Kit
                   kit_virtual := BuscaUmDadoSqlAsInteger(' SELECT cast(COUNT(1) as integer)  FROM PED_IT01 it2 WHERE IT2.PRF_REGISTRO_VINCULADO = '+IntToStr(iRegistroItem) )  ;
									 if (qAux.fieldByName('PTI_SIGLA').AsString = 'KT') or (kit_virtual > 0 ) then
									 begin
                          // pedido
                          sEmpresa := '' ;
                          if dbInicio.Exclusivo('PRODUTOS') then
                             sEmpresa := ' and t2.emp_codigo = t1.emp_codigo ';
                          //Lista Ficha e Lanca os Novos
                          DataCadastros.sqlUpdate1.Close;
                          if sTipo = 'I'   then
                            DataCadastros.sqlUpdate1.sql.text:=
                            SQLDEF('PRODUTOS','SELECT 0 PRF_REGISTRO, T1.AMX_CODIGO, FTI_UC, t1.*, t2.PRD_CODIGO, T2.PRD_PCUSTO, T2.PRD_CUSTOCOMIPI, T2.PRD_PVENDA, T2.PRD_MARGEMVENDA, T2.PRD_DESCRI,'+
                              ' T3.PRG_DESCRICAO, 0  prf_qtdePend '+
                                  'FROM FTC_IT01 T1 left join PRD0000 t2 on (t2.PRD_REFER = t1.PRD_REFER_ITENS'+sEmpresa+') '+
                                  'LEFT JOIN PRD_GRADE T3 ON (T3.PRG_REGISTRO = T1.PRG_REGISTRO) ' ,
                                  'WHERE T1.PRD_REFER = '+QuotedStr(cbReferencia.CdS.fieldByName('PRD_REFER').AsString),'','T2.')
                          else
                            DataCadastros.sqlUpdate1.sql.text:=
                            SQLDEF('PRODUTOS','SELECT IT.PRF_REGISTRO, T1.AMX_CODIGO, COALESCE(PRD_REFER_ITENS,T2.PRD_REFER) PRD_REFER_ITENS, COALESCE(PRF_QTDE,FTI_UC) FTI_UC, t1.*, t2.PRD_CODIGO, T2.PRD_PCUSTO, '+
                               ' T2.PRD_CUSTOCOMIPI, T2.PRD_PVENDA, T2.PRD_MARGEMVENDA, T2.PRD_DESCRI, T3.PRG_DESCRICAO, prf_qtdePend '+
                                   ' FROM PED_IT01 IT JOIN PRD0000 t2  ON (IT.PRF_REGISTRO_VINCULADO = '+IntToStr(iRegistroItem {Anterior} )+' AND T2.PRD_CODIGO = IT.PRD_CODIGO )  ' ,
                                   ' LEFT JOIN FTC_IT01 T1  on (t2.PRD_REFER = t1.PRD_REFER_ITENS AND T1.PRD_REFER =   '+QuotedStr(cbReferencia.CdS.fieldByName('PRD_REFER').AsString)  +sEmpresa+') '+
                                   ' LEFT JOIN PRD_GRADE T3 ON (T3.PRG_REGISTRO = T1.PRG_REGISTRO) ' +
                                   ' WHERE PED_CODIGO = '+ QuotedStr(NumeroPedido)  ,'','T2.');

                        // se for inclusão de kit, colocar todos os itens do kits
                        if (MatchStr(stipo,['I','']) ) or
                           ((sTipo = 'A') and (FrmPedido.SqlCdsPedidoItemPRF_QTDE.AsFloat <> CurQuantidade.Value))
                        then
                        begin
                          DataCadastros.sqlUpdate1.Open;
                          while (not DataCadastros.sqlUpdate1.Eof) do
                          begin
                               //Lanca Itens Como Agregado fazendo a quantidade da ficha * a quantidade do item acima
                              if stipo = 'A' then
                                 iRegistro :=  DataCadastros.sqlUpdate1.FieldByName('PRF_REGISTRO').AsInteger
                               else
                                 iRegistro := dbInicio.GetNextSequence('GEN_ITEM_PEDIDO');
                               bvendaPendente := False; // se não tem saldo disponivel para item duplicar o item não disponivel e coloca- lo vermelho
                               rQtdeNova :=  CurQuantidade.Value * DataCadastros.sqlUpdate1.FieldByName('FTI_UC').AsFloat; // numero do item na composição x quantidade de kit
                               rQtdeAnterior := iif(stipo='I',0,FrmPedido.SqlCdsPedidoItemPRF_QTDE.AsFloat * DataCadastros.sqlUpdate1.FieldByName('FTI_UC').AsFloat);
                               qPendenteAnterior :=  DataCadastros.SqlUpdate1.FieldByName('prf_qtdePend').AsFloat;
                               rSaldo:= KardexRetornaSaldo(DataCadastros.sqlUpdate1.FieldByName('PRD_CODIGO').AsString,EdAlmoxarifadoCodigo.Text,'' );
                               bAfetaEstoque :=  (FrmPedido.SqlCdsTipoPedidoOPV_ATESTOQUE.AsString = 'S') and (DBInicio.Empresa.wAtualizaEstoque = 'P');
                               CalculoEstoquePendente(bAfetaEstoque, stipo, '1', '1', rQtdeAnterior, rQtdeNova,  qPendenteAnterior, qPendenteNova, qpreciso, rSaldo, 1,dQtdeEstoque, stipoKardesES);
                               bvendaPendente := (qPendenteNova > 0 ) or bvendaPendente;
                               if bAfetaEstoque then
                               begin
                                 if rSaldo < 0 then // ERRO NO ESTOQUE
                                 begin
                                   DataCadastros.sqlUpdate1.Next;
                                   Continue;
                                 end;

                                       end;

                               // aqui baixa itens do kit se controla o estoque dos itens
                               if bAfetaEstoque and not DBInicio.Empresa.wPMT_CONTROLA_KIT then
                               begin

                                    //Verifica se atualiza estoque pelo pedido
                                    if (dQtdeEstoque > 0) then
                                    begin
                                         kardexSaldo := KardexLancamento(IntToStr(iRegistro),
                                                          'PED',
                                                          EdAlmoxarifadoCodigo.Text,
                                                          amx_destino,
                                                          DataCadastros.sqlUpdate1.FieldByName('PRD_CODIGO').AsString,
                                                          DataCadastros.sqlUpdate1.FieldByName('PRG_REGISTRO').AsString,
                                                          '',
                                                          //FrmPedido.SqlCdsTipoPedidoOPV_TIPO.AsString,
                                                          stipoKardesES,
                                                          '',
                                                          VariosLote,
                                                          'VENDA DE ITEM AGREGADO VIA KIT - EMPENHADO PELO PEDIDO',
                                                          Now,
                                                          dQtdeEstoque,
                                                          NumeroPedido,
                                                          FrmPedido.edCliente.CdS.FieldByName('CLI_CODIGO').AsString+'-'+FrmPedido.edCliente.CdS.FieldByName('CLI_RAZAO').AsString,
                                                          DataCadastros.sqlUpdate1.FieldByName('FTI_PRECOCUSTO').AsFloat,
                                                          FrmPedido.edCliente.CdS.FieldByName('CLI_CODIGO').AsString,//CLI_CODIGO
                                                          '',//FOR_CODIGO
                                                          '',//COL_CODIGO
                                                          '',//REFERENCIA
                                                          ((FrmPedido.SqlCdsTipoPedidoOPV_ESTOQUE_REMESSAINDUS.AsString = 'S') AND (FrmPedido.EdCnpj.Text <> '') ),  // entrada na estoque do terceir
                                                            'REMESSA INDUSTRIALIZAÇÃO AGREGADO VIA KIT - EMPENHADO PELO PEDIDO');


                                    end;
                               end;

                               //Grade
                               if (DataCadastros.sqlUpdate1.FieldByName('PRG_REGISTRO').AsString = '') then
                                  iGrade := 0
                               else
                                  iGrade := StrToInt(DataCadastros.sqlUpdate1.FieldByName('PRG_REGISTRO').AsString);

                               //Custo
                               if DBInicio.Exclusivo( 'PRODUTO_PRECO_EMPRESA' )  then
                                  rCusto := qAux.fieldByName('PRD_PCUSTO').AsCurrency
                               else
                               begin
                                 //calcular conforme parametro -> 0 = custo liquido, 1 = custo enttrada

                                 if dbInicio.Empresa.wCalcularPV = 0 then
                                      rCusto := qAux.FieldByName('PRD_PCUSTO').AsFloat
                                 else if dbInicio.Empresa.wCalcularPV = 1 then
                                 begin
                                      rCusto := qAux.FieldByName('PRD_CUSTOCOMIPI').AsFloat;
                                      if (rCusto = 0) then
                                         rCusto := qAux.FieldByName('PRD_PCUSTO').AsFloat;
                                 end
                                 else if dbInicio.Empresa.wCalcularPV = 2 then
                                   rCusto := qAux.FieldByName('PRD_PMEDIO').AsCurrency;

                               end;
{                                ??????
                                 rCusto :=  (cbReferencia.CdS.FieldByName('PRD_PVENDA').AsFloat / (100 + qAux.FieldByName('PRD_MARGEMVENDA').AsFloat)) * 100;
 }
                               sTabelaPreco := '';
                               if (pgcPrincipal.ActivePage <> tsComGrade) and
                                 dbInicio.Empresa.bHabilitarTabelaPreco and not
                                 VarIsEmpty(cbTabelaPrecoMultiplo.EditValue)then
                                 case cbTabelaPrecoMultiplo.EditValue of
                                   1:sTabelaPreco := 'T1';
                                   2:sTabelaPreco := 'T2';
                                   3:sTabelaPreco := 'T3';
                                   4:sTabelaPreco := 'T4';
                                   5:sTabelaPreco := 'T5';
                                   6:sTabelaPreco := 'T6';
                                 end;


                               if(not DBInicio.Empresa.wPMT_VALOR_KIT) or ((DBInicio.Empresa.wPMT_VALOR_KIT) and (not DBInicio.Empresa.wPMT_ITENS_KIT)) then
                                 dCompPrecoVenda :=  DataCadastros.sqlUpdate1.FieldByName('FTI_PRECOCUSTO').AsFloat
                               else
                                 dCompPrecoVenda := DataCadastros.sqlUpdate1.FieldByName('PRD_PVENDA').AsFloat;

                               iRegistroVinculado := GravarPedidoItem(wID_DIRETIVAS,
                                                    cbUnidade.idRetorno,
                                                    NumeroPedido,
                                                    DataCadastros.sqlUpdate1.FieldByName('PRD_CODIGO').AsString,
                                                    DataCadastros.sqlUpdate1.FieldByName('PRD_REFER_ITENS').AsString,
                                                    '',// DataCadastros.sqlUpdate1.FieldByName('PRD_REFER_ITENS').AsString,
                                                    COPY(DataCadastros.sqlUpdate1.FieldByName('PRD_DESCRI').AsString+' '+DataCadastros.sqlUpdate1.FieldByName('PRG_DESCRICAO').AsString,1,100),
                                                    IIF(DataCadastros.sqlUpdate1.FieldByName('AMX_CODIGO').AsString<>'',DataCadastros.sqlUpdate1.FieldByName('AMX_CODIGO').AsString, EdAlmoxarifadoCodigo.Text),
                                                    '',
                                                    Trim(''),
                                                    Trim(sTabelaPreco),
                                                    IIF(bUsouVerba,'S','N'),
                                                    FrmPedido.LblMovimentaEstoque.Caption = 'Movimenta Estoque',
                                                    True,//CbItemAgregado.Checked,
                                                    DataCadastros.sqlUpdate1.FieldByName('FTI_UC').AsFloat,
                                                    DataCadastros.sqlUpdate1.FieldByName('FTI_UC').AsFloat,
                                                    0,
                                                    dCompPrecoVenda,
                                                    dCompPrecoVenda,
                                                    rCusto,
                                                    CurMarkup.Value,
                                                    0,
                                                    0,
                                                    0,
                                                    RetornaPercentualComissao(DataCadastros.sqlUpdate1.FieldByName('PRD_REFER_ITENS').AsString),
                                                    0,
                                                    0,
                                                    0,
                                                    rValorVerba,
                                                    0,
                                                    iRegistro,
                                                    StrToInt(DBiNICIO.USUARIO.CODIGO),
                                                    VariosLote,
                                                    iGrade,
                                                    SpinItemB2B.AsInteger,
                                                    IIF(iRegistroItem = 0,iRegistroItemAnterior,iRegistroItem),
                                                    0,
                                                    DateToSQL(PRF_PRAZO_ENTREGA.Date),
                                                    iif(bprazoitens, edPrazo.Text,''),
                                                    0,
                                                    qPendenteNova
                                                    ) ;


                                    // kardexSaldo := BuscaUmDadoSqlAsFloat('SELECT AMX_SALDO_RET FROM pCd_kardex_saldo(' + DBInicio.Emp_Codigo +  ', ' + QuotedStr(DataCadastros.sqlUpdate1.FieldByName('PRD_CODIGO').AsString) + ',' + QuotedStr(IIF(DataCadastros.sqlUpdate1.FieldByName('AMX_CODIGO').AsString <> '', DataCadastros.sqlUpdate1.FieldByName('AMX_CODIGO').AsString, EdAlmoxarifadoCodigo.Text)) + ' ) ');
                                    if kardexSaldo < dQtdeEstoque then
                                    begin
                                      ExecSQL('update PED_IT01 set PRF_QTDEPEND  = '+FloatToSQL(dQtdeEstoque-kardexSaldo) +' , PRF_DTPENDENCIA = CURRENT_TIMESTAMP ' + 'where PRF_REGISTRO =  '+ IntToStr(iRegistroVinculado) );
                                      bvendaPendente := True;
                                    end;

                             DataCadastros.sqlUpdate1.Next;
                          end;  // fim dos registros dos itens dos kits
                          DataCadastros.sqlUpdate1.Close;
                          // KitsCompletos(bAfetaEstoque, IIF(iRegistroItem = 0,iRegistroItemAnterior,iRegistroItem))  ;
                          if bvendaPendente then
                            MessageDlg('Há item de kit faltando no estoque', mtInformation, [mbOK], 0);
                        end; // se for inclusão dos kits stipo = 'I'

//                        begin
                          //se for alteração
                          //atualizar valor do kit
                          // o preço é pelos itens que o compõem

                          if (DBInicio.Empresa.wPMT_ITENS_KIT) then
                          begin
                             dataCadastros.sqlUpdate.Close;
                             DataCadastros.SqlUpdate.sql.text :=SqlDef('PEDIDOS','SELECT sum(T1.PRF_PRECO_BRUTO * t1.PRF_QTDE) as Bruto, '+
                                                                       ' sum(T1.PRF_PRECO * t1.PRF_QTDE) as Liq ,'+
                                                                       ' sum(PRF_CUSTO * t1.PRF_QTDE) AS custo '+
                                                                       ' FROM ped_it01 T1 ',
                                                                       ' WHERE PRF_REGISTRO_VINCULADO = '''+ IntToStr(iRegistroItem) +''' and EMP_CODIGO = '''+
                                                                            (dbInicio.Empresa.EMP_CODIGO)+'''' , '','T1.');
                             dataCadastros.sqlUpdate.Open;
                           if (dataCadastros.sqlUpdate.FieldByName('Bruto').Value > 0) and (dataCadastros.sqlUpdate.FieldByName('Liq').Value > 0) then
                           begin
                             with dataCadastros.sqlUpdate do
                             begin
                               if dataCadastros.sqlUpdate.FieldByName('custo').AsCurrency  = 0 then
                                margem := 0
                               else
                                 margem := (( dataCadastros.sqlUpdate.FieldByName('Liq').AsCurrency / uteis.RoundTo( dataCadastros.sqlUpdate.FieldByName('custo').AsCurrency,-2))-1)*100;
                               sQuery := 'UPDATE ped_it01 SET PRF_PRECO_BRUTO = '+FloatToSql(dataCadastros.sqlUpdate.FieldByName('Bruto').AsCurrency) +
                                         ' , PRF_PRECO = '+FloatToSql(dataCadastros.sqlUpdate.FieldByName('Liq').AsCurrency) +
                                         ' , PRF_CUSTO = '+FloatToSql(dataCadastros.sqlUpdate.FieldByName('custo').AsCurrency) +
                                         ' , PRF_MARGEM_PRODUTO = '+FloatToSql(margem)+
                                         ' WHERE PRF_REGISTRO = '''+ IntToStr(iRegistroItem) +''' and EMP_CODIGO = '''+(dbInicio.Empresa.EMP_CODIGO)+ '''';

                               Close;
                               sql.text :=sQuery;
                               Execsql;
                               Close;
                             end;
                           end;

                          end;
                        //end;

									 end;  //fim-se  if (qAux.fieldByName('PTI_SIGLA').AsString = 'KT') then  // aqui baixa itens do kit
                   //se o item é agregado, deve atualizar o kit principal
                   if CbItemAgregado.Checked  and (DBInicio.Empresa.wPMT_ITENS_KIT) then
                   begin
                     dataCadastros.sqlUpdate.Close;
                     if sTipo = 'I' then
                       DataCadastros.SqlUpdate.sql.text :=SqlDef('PEDIDOS','SELECT sum(T1.PRF_PRECO_BRUTO * t1.PRF_QTDE) as Bruto, '+
                                                                       ' sum(T1.PRF_PRECO * t1.PRF_QTDE) as Liq, '+
                                                                       ' min( prf_registro_vinculado) as prf_registro_vinculado , '+
                                                                       ' sum(PRF_CUSTO*t1.PRF_QTDE) AS custo '+
                                                                       //' sum(T1.PRF_PRECO)/SUM(PRF_CUSTO)  margem '+
                                                                        ' FROM ped_it01 T1 ',
                                                                       ' WHERE PRF_REGISTRO_VINCULADO = '''+ IntToStr(iRegistroItemAnterior) +''' and EMP_CODIGO = '''+
                                                                            (dbInicio.Empresa.EMP_CODIGO)+'''' , '','T1.')
                     else
                       DataCadastros.SqlUpdate.sql.text :=SqlDef('PEDIDOS','SELECT sum(T1.PRF_PRECO_BRUTO * t1.PRF_QTDE) as Bruto, '+
                                                                 '            sum(T1.PRF_PRECO * t1.PRF_QTDE) as Liq, '+
                                                                 'min( prf_registro_vinculado) as prf_registro_vinculado, '+
                                                                 ' sum(PRF_CUSTO*t1.PRF_QTDE) AS custo '+
                                                                // ' sum(T1.PRF_PRECO)/SUM(PRF_CUSTO)  margem '+
                                                                 ' FROM ped_it01 T1 ',
                                                                 'WHERE PRF_REGISTRO_VINCULADO = '+
                                                                 '             (SELECT prf_registro_vinculado FROM ped_it01 WHERE prf_registro = ''' +
                                                                 IntToStr(iRegistroItemAnterior) +''')'
                                                                   , '','T1.');
                     dataCadastros.sqlUpdate.Open;

                     if (dataCadastros.sqlUpdate.FieldByName('Bruto').Value > 0) and (dataCadastros.sqlUpdate.FieldByName('Liq').Value > 0) then
                     begin
                       with dataCadastros.sqlUpdate do
                       begin
                         iRegistroItemAnterior:= dataCadastros.sqlUpdate.FieldByName('prf_registro_vinculado').AsInteger;
                         sQuery := 'UPDATE ped_it01 SET PRF_PRECO_BRUTO = '+FloatToSql(dataCadastros.sqlUpdate.FieldByName('Bruto').AsCurrency) +
                                   ' , PRF_PRECO = '+FloatToSql(dataCadastros.sqlUpdate.FieldByName('Liq').AsCurrency) +
                                   ' , PRF_CUSTO = '+FloatToSql(dataCadastros.sqlUpdate.FieldByName('custo').AsCurrency) +
                                   ' , PRF_MARGEM_PRODUTO = '+FloatToSql((( FieldByName('Liq').AsCurrency / uteis.RoundTo(FieldByName('custo').AsCurrency,-2))-1)*100)+
                                   ' WHERE PRF_REGISTRO = '''+ IntToStr( dataCadastros.sqlUpdate.FieldByName('prf_registro_vinculado').AsInteger)  +
                                   ''' and EMP_CODIGO = '''+(dbInicio.Empresa.EMP_CODIGO)+ '''';

                         dataCadastros.sqlUpdate.Close;
                         DataCadastros.SqlUpdate.sql.text :=sQuery;
                         dataCadastros.sqlUpdate.Execsql;
                         dataCadastros.sqlUpdate.Close;
                       end;
                     end;

                   end
                   else if CbItemAgregado.Checked then
                   begin
                    if sTipo = 'A' then
                      iRegistroItemAnterior :=  FrmPedido.SqlCdsPedidoITEM.FieldByName('prf_registro_vinculado').AsInteger ;
                     KitsCompletos(bAfetaEstoque,iRegistroItemAnterior);
                   end;
									 if bUsouVerba then
										 GravaContaCorrente('I','V','D',FrmPedido.SqlCdsPedidoPED_CODIGO.Value,'DEBITO PELA UTLIZACAO DE VERBA NO ITEM DO PEDIDO DE VENDA',
																				'A',FrmPedido.SqlCdsPedidoREP_CODIGO.Value,FrmPedido.SqlCdsPedidoCLI_CODIGO.Value,'0','0','',EdReferencia.Text,rValorVerba,0,
																				StrToInt(DBInicio.Usuario.CODIGO),-1,now);

									 if ((dbInicio.Empresa.bHabilitarTabelaPreco) or (dbInicio.Empresa.fPMT_MULTTAB = 'S')) and
											(FrmPedido.SqlCdsTipoPedidoOPV_COMISSAO_VERBA.Value = 'S') and (FrmPedido.SqlCdsPedido.FieldByName('GERAR_VERBA').AsString = '1') then
									 begin

										 GravaContaCorrente(FrmPedido.sOperacao,'V','C',FrmPedido.SqlCdsPedidoPED_CODIGO.Value,'CREDITO PELA INCLUSAO DO ITEM NO PEDIDO DE VENDA',
																				'A',FrmPedido.SqlCdsPedidoREP_CODIGO.Value,FrmPedido.SqlCdsPedidoCLI_CODIGO.Value,'0','0','',EdReferencia.Text,((CurVerba.Value * (CurPrecoBruto.Value*CurQuantidade.Value)) / 100),0,
																				StrToInt(DBInicio.Usuario.CODIGO),-1, now);
									 end;
										 if (FrmPedido.SqlCdsTipoPedidoOPV_BONIFICACAO.Value = 'S')then
										 GravaContaCorrente(FrmPedido.sOperacao,'V','D',FrmPedido.SqlCdsPedidoPED_CODIGO.Value,'DEBITO REFERENTE A BONIFICACAO DE ITEM',
																				'A',FrmPedido.SqlCdsPedidoREP_CODIGO.Value,FrmPedido.SqlCdsPedidoCLI_CODIGO.Value,'0','0','',EdReferencia.Text,(((CurPrecoBruto.Value*CurQuantidade.Value))),0,
																				StrToInt(DBInicio.Usuario.CODIGO),-1, now);

									 ModalResult := mrOk;
									 // Close;

						 end
						 else
						 if (uteis.confirmacao ( 'Gostaria de fechar a tela de lançamento do item?')=mrYes) then
						 begin
								ModalResult := mrOk;
								// Close;
						 end;
			 end;
	 end;
   Bit_Gravar.Enabled := True;
   if FrmPedido <> nil then
     FrmPedido.PanelAguarde.Visible := False;

end;

procedure TFrmPedidoItem.CurPercentIPIChange(Sender: tObject);
begin
   CalculaTotais;
end;

procedure TFrmPedidoItem.CurPesoExit(Sender: TObject);
begin
  inherited;
  CalculaTotais;
end;

function TFrmPedidoItem.ValidaDesconto: Boolean;
var tcr: TFrmAutoriza;
begin
   CalculaIndiceDesconto;
   if (dbInicio.Empresa.DesctoMaximo_P = 0) then // zero = desconto totalmente liberado
      Result := true
   else
   if (rIndiceDesconto > dbInicio.Empresa.DesctoMaximo_P) then
   begin
     tcr := tFrmAutoriza.Create(self) ;
      try
        tcr.TipoValidacao := vDescontoMaximo;
        tcr.DescontoMax := rIndiceDesconto;
        tcr.lbAviso.Caption := Pchar('O Desconto praticado foi de '+FloatToStr(rIndiceDesconto)+' % o máximo autorizado é de '+FloatToStr(dbInicio.Empresa.DesctoMaximo_P)+' %');
        tcr.ShowModal;
        if tcr.modalresult<>mrOk then
        begin
          // Self.Close;
          uteis.Aviso(Pchar('O Desconto praticado foi de '+FloatToStr(rIndiceDesconto)+' % o máximo autorizado é de '+FloatToStr(dbInicio.Empresa.DesctoMaximo_P)+' %'));
          CurDesconto.Value := 0;
          result := False;
        end
        else
         Result := True;

       finally
         FreeAndNil( tcr ) ;
       end;
   end
   else
       Result := True;
end;


procedure TFrmPedidoItem.ItemAgregado;
begin
   CurPrecoBruto.Clear;
   CurDesconto.Clear;
   CurDescontoAdicional.Clear;
   CurPercentIPI.Clear;
   if (CbItemAgregado.Checked) then
    begin
       if (not DBInicio.Empresa.wPMT_VALOR_KIT) or ((DBInicio.Empresa.wPMT_VALOR_KIT) and (not DBInicio.Empresa.wPMT_ITENS_KIT)) then
       begin
         CurPrecoBruto.ReadOnly := True;
         CurPrecoBruto.TabStop := False;
         CurPrecoBruto.Color := $00d7d7d7;
       end;


       CurDesconto.ReadOnly := not DBInicio.Empresa.wPMT_ITENS_KIT;
       CurDesconto.TabStop := DBInicio.Empresa.wPMT_ITENS_KIT;
       if not DBInicio.Empresa.wPMT_ITENS_KIT then
         CurDesconto.Color := $00d7d7d7;

       CurDescontoAdicional.ReadOnly := True;
       CurDescontoAdicional.TabStop := False;
       CurDescontoAdicional.Color := $00d7d7d7;

       CurPercentIPI.ReadOnly := True;
       CurPercentIPI.TabStop := False;
       CurPercentIPI.Color := $00d7d7d7;
    end
   else
      begin
         CurPrecoBruto.ReadOnly := False;
         CurPrecoBruto.TabStop := True;
         CurPrecoBruto.Color := clWhite;
         if (qAux.FieldByName('pti_sigla').AsString = 'KT')  and DBInicio.Empresa.wPMT_ITENS_KIT then
         begin
           CurDesconto.ReadOnly := True;
           CurDesconto.TabStop := False;
           CurDesconto.Color := $00d7d7d7;
           CurDescontoAdicional.ReadOnly := True;
           CurDescontoAdicional.TabStop := False;
           CurDescontoAdicional.Color :=  $00d7d7d7;
         end
         else
         begin
           CurDesconto.ReadOnly := False;
           CurDesconto.TabStop := True;
           CurDesconto.Color := clWhite;
           CurDescontoAdicional.ReadOnly := False;
           CurDescontoAdicional.TabStop := True;
           CurDescontoAdicional.Color := clWhite;
         end;

         CurPercentIPI.ReadOnly := True;
         CurPercentIPI.TabStop := False;
         CurPercentIPI.Color := clWhite;
      end;

   CalculaTotais;
end;

procedure TFrmPedidoItem.CbGradeSelect(Sender: TObject);
begin
  inherited;
  AtualizaGradeInfo;
  AtualizaUltimoPreco;
  CurPrecoBruto.Value := BuscaUmDadoSqlAsFloat('SELECT PRG_PRECO FROM PRD_GRADE WHERE PRG_REGISTRO = ' + cbGrade.idRetorno);
  if cbCapacidade.CanFocus then
    cbCapacidade.SetFocus
  else
    if CurQuantidade.CanFocus then
      CurQuantidade.SetFocus;

end;

procedure TFrmPedidoItem.CbItemAgregadoClick(Sender: tObject);
begin
   ItemAgregado;
end;

procedure TFrmPedidoItem.CbLoteProdutoButtonClick(Sender: TObject);
var clone : TClientDataSet;
    saldo : double;
    lote : string;
    registro : integer;
begin

//  if sTipo = 'A' then
//  begin
//    inherited;
//    exit;
//  end;

  frmPesqSelecaoLote := nil;
//  if not Assigned(frmPesqSelecaoLote) then
  frmPesqSelecaoLote := TfrmPesqSelecaoLote.Create(Self);
 clone := TClientDataSet.Create(self);
 try
  frmPesqSelecaoLote.PRD_CODIGO := qaux.FieldByName('prd_codigo').AsString;
  if frmPesqSelecaoLote.ShowModal = mrok then
  begin
    clone.CloneCursor(frmPesqSelecaoLote.cdsBusco,false);
    clone.Filtered:= False;
    clone.Filter:= 'selecionado = true';
    clone.Filtered := True;
    with clone.IndexDefs.AddIndexDef do
    begin
      Name   := 'validade';
      Fields := 'PRDL_DATA_FABRICACAO';
      Options := [];
    end;
    clone.IndexName :=  'validade';
    saldo := 0 ;
    lote:='';
    edLoteVarios.text:= '';
    edLoteVarios.Visible := clone.RecordCount>1;
    if clone.RecordCount> 0  then
    begin
       VariosLote:= VarArrayCreate([1,clone.RecordCount,1,4],varVariant);
       registro := 1;
    end;

    while not clone.Eof do
    begin
      saldo := saldo + clone.FieldByName('PRDL_SALDO').AsCurrency;
      lote := lote + iif(lote='','',',')+ clone.FieldByName('PRDL_LOTE').AsString;
      if VarIsArray(VariosLote) then
      begin
        VariosLote[registro,1] :=  clone.FieldByName('PRDL_REGISTRO').AsInteger;
        VariosLote[registro,2] :=  clone.FieldByName('PRDL_SALDO').AsCurrency;
        VariosLote[registro,3] :=  clone.FieldByName('PRDL_DATA_VALIDADE').AsDateTime;
        VariosLote[registro,4] :=  clone.FieldByName('PRDL_LOTE').AsString;
      end;
     // registro := registro + iif(registro='','',',')+ clone.FieldByName('PRDL_REGISTRO').AsString;
     inc(registro);
      clone.Next;

    end;
    if clone.RecordCount >1 then
    begin


      edLoteVarios.Text := lote;
      edLoteVarios.BringToFront;
    end
    else if clone.RecordCount = 1 then
      CbLoteProduto.idRetorno := clone.FieldByName('PRDL_REGISTRO').AsString ;
    CurSaldoLote.AsCurrency := saldo;
  end;
 finally
//   FreeAndNil(frmPesqSelecaoLote);
//   frmPesqSelecaoLote.Free;
//   frmPesqSelecaoLote := nil;;



 end;
end;

procedure TFrmPedidoItem.CbLoteProdutoSelect(Sender: TObject);
begin
  inherited;
  if VarIsEmpty(VariosLote) and (cbLoteProduto.IDRetorno <> '')  then
  begin
    VariosLote:= VarArrayCreate([1,1,1,4],varVariant);
    VariosLote[1,1] :=  cbLoteProduto.IDRetorno;
    VariosLote[1,2] :=  cbLoteProduto.CdS.FieldByName('PRDL_SALDO').AsCurrency;
    VariosLote[1,3] :=  cbLoteProduto.CdS.FieldByName('PRDL_DATA_VALIDADE').AsDateTime;
    VariosLote[1,4] :=  cbLoteProduto.CdS.FieldByName('PRDL_LOTE').AsString;
    CurSaldoLote.AsCurrency := cbLoteProduto.CdS.FieldByName('PRDL_SALDO').AsCurrency;
  end;
end;

procedure TFrmPedidoItem.EdAlmoxarifadoCodigoExit(Sender: TObject);
begin
     if EdAlmoxarifadoCodigo.Text <> '' then
     begin
          edAlmoxarifadoCodigo.Text := StrZero( edAlmoxarifadoCodigo.Text,  4 ) ;
          if EdAlmoxarifadoCodigo.Text <> '0000' then
          begin
               cbAlmoxarifado.idRetorno:=edAlmoxarifadoCodigo.Text;
               if cbAlmoxarifado.idRetorno='' then
               begin
                    EdAlmoxarifadoCodigo.clear;
                    uteis.aviso('Almoxarifado não localizado com o código informado');
               end;
          end
          Else
              cbAlmoxarifado.Clear;
     end
     Else
        cbAlmoxarifado.Clear;
end;

procedure TFrmPedidoItem.edPrazoChange(Sender: TObject);
begin
  inherited;
    if edPrazo.Value < 0 then
      edPrazo.Value := 0;
    PRF_PRAZO_ENTREGA.Date := Round(now + edPrazo.Value);
end;

procedure TFrmPedidoItem.cbMedInternoChange(Sender: TObject);
begin
  if (DBINICIO.Empresa.bPMT_HABILITA_MEDIDAPRD) AND
   (((cbMedInterno.Text <> '') and IsNumeric(cbMedInterno.Text)) or
    ((cbMedExterno.Text <> '') and IsNumeric(cbMedExterno.Text)) or
    ((cbMedAltura1.Text <> '') and IsNumeric(cbMedAltura1.Text)) or
    ((cbMedAltura2.Text <> '') and IsNumeric(cbMedAltura2.Text)))
      then
    TSgDbSearchCombo(Sender).WherePersonalizado := ConsultaPersonalizada;
  inherited;

end;

procedure TFrmPedidoItem.cbMedInternoEnter(Sender: TObject);
begin
  if (DBINICIO.Empresa.bPMT_HABILITA_MEDIDAPRD) AND
   (((cbMedInterno.Text <> '') and IsNumeric(cbMedInterno.Text)) or
    ((cbMedExterno.Text <> '') and IsNumeric(cbMedExterno.Text)) or
    ((cbMedAltura1.Text <> '') and IsNumeric(cbMedAltura1.Text)) or
    ((cbMedAltura2.Text <> '') and IsNumeric(cbMedAltura2.Text))) then
       TSgDbSearchCombo(Sender).WherePersonalizado := ConsultaPersonalizada;
  inherited;
end;

procedure TFrmPedidoItem.cbMedInternoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (CharInSet(Key,['0'..'9',#8,ANSIChar(',')])) then key := #0;
end;

procedure TFrmPedidoItem.cbReferenciaButtonClick(Sender: TObject);
begin
     inherited;
     FormProdutoGrid := TFormProdutoGrid.Create(Application);
     try
        FormProdutoGrid.DisponivelVendas := True;
        FormProdutoGrid.ShowModal;
        if FormProdutoGrid.ModalResult=mrOk then
           cbReferencia.IdRetorno := FormProdutoGrid.CodigoRetorno ;
        //CbGrade.WherePersonalizado := ' WHERE PRD_CODIGO = ' + QuotedStr(FormProdutoGrid.CodigoRetorno);
     finally
            FreeAndNil( FormProdutoGrid );
     end;
end;

procedure TFrmPedidoItem.cbReferenciaClick(Sender: TObject);
begin
  inherited;
  cbReferencia.CdS.active := True;
  cbDescricao.CdS.active := False;
  cbBarras.CdS.active := False;
  cbCodigos.CdS.active := False;
  cbEndereco.CdS.active := False;
end;

procedure TFrmPedidoItem.cbReferenciakeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then
    close;
end;

procedure TFrmPedidoItem.cbComboBuscaExit(Sender: TObject);
begin
  inherited;
  if (TComponent(Sender).Name = 'cbDescricao') and DBINICIO.Empresa.bPMT_HABILITA_MEDIDAPRD AND NOT ( ACTIVECONTROL IS TDBGRID) then
    if cbMedInterno.CanFocus then
      cbMedInterno.SetFocus;


  if TSgDbSearchCombo(sender).Text <> '' then
    SalvaEstadoPesquisaProc(pBuscaProdutos);
end;

procedure TFrmPedidoItem.cbCorSelect(Sender: TObject);
begin
  inherited;
  AtualizaUltimoPreco;
  if CurQuantidade.CanFocus then
    CurQuantidade.SetFocus;
end;

function TFrmPedidoItem.ValidaAgronegocio: boolean;
var
  clienteAgronegocio, produtoAgronegocio: boolean;
begin
  Result := True;
  produtoAgronegocio := BuscaUmDadoSqlAsString('SELECT PRD_AGRONEGOCIO FROM PRD0000 WHERE PRD_CODIGO = ' + QuotedStr(cbReferencia.idRetorno) ) = 'S';
  if (FrmPedido.EdClienteCodigo.Text <> '') then
    clienteAgronegocio := BuscaUmDadoSqlAsString('SELECT CLI_AGRONEGOCIO FROM CLI0000 WHERE CLI_CODIGO = ' + QuotedStr(FrmPedido.EdClienteCodigo.Text) ) = 'S'
  else
    clienteAgronegocio := False;

  if clienteAgronegocio and not produtoAgronegocio then
  begin
    uteis.Aviso('Cliente é do Agronegócio mas o Produto não foi configurado como Agronegócio.');
    Result := False
  end;
  if not clienteAgronegocio and produtoAgronegocio then
  begin
    uteis.Aviso('Não permite vender produto do Agronegócio para cliente que não é do Agronegócio.');
    Result := False;
  end;
  if not Result then
  begin
    cbReferencia.idRetorno := '';
    cbDescricao.Text := '';
    cbReferencia.SetFocus;
  end;
end;

procedure TFrmPedidoItem.cbReferenciaSelect(Sender: TObject);

begin
  inherited;
  if cbReferencia.idRetorno<>'' then
  begin
    limpaBufferTeclado;
    if not ValidaAgronegocio then
      abort;

    try
     BuscaProduto( cbReferencia.idRetorno );
     Focar;
    except
     on e:exception do
     begin
       pDetalhesItem.Visible := False;
       GbBusca.Show;
       pacoes.Visible := False;
       cbReferencia.Enabled := True;
       cbDescricao.SetFocus;
       cbReferencia.SetFocus;
     end;
    end;

  end
  Else
      BuscaProduto( '' );
  if cbReferencia.idRetorno <> '' then
    GenericSelect( sender );
   //application.processmessages;
end;

procedure TFrmPedidoItem.MemoComplementoEnter(Sender: TObject);
begin
  inherited;
  ACBrEnterTab1.EnterAsTab := False;
end;

procedure TFrmPedidoItem.MemoComplementoExit(Sender: TObject);
begin
  inherited;
  ACBrEnterTab1.EnterAsTab := True;
end;

procedure TFrmPedidoItem.MemoDescricaoKeyPress(Sender: tObject;
  var Key: Char);
begin
   if (Key = #13) then
      begin
         key := #0;
         if (CbGrade.Visible) then
            begin
               CbGrade.SetFocus;
               CbGrade.SelectAll;
            end
         else
            begin
               EdAlmoxarifadoCodigo.SetFocus;
               EdAlmoxarifadoCodigo.SelectAll;
            end;
      end
   else
      begin
         Key := UpCase(Key);
      end;
end;

procedure TFrmPedidoItem.SalvaEstadoPesquisaProc(aPanel: tComponent);
var  y: integer;
    pObject: tComponent;
    ini: tIniFile ;
    Sect: String ;
begin

 TestaPasta ( dbInicio.SistemaLocal+'settings' );
 Sect := Self.Name+'.'+aPanel.Name;
 ini := tIniFile.Create ( dbInicio.SistemaLocal+'settings\Pesquisas.filtrosPedidoUsu'+DBInicio.Usuario.CODIGO+'.psq' );
 try
    for y := 0 to (tWinControl(aPanel).ControlCount - 1) do
    begin
         pObject := tWinControl(aPanel).Controls[y];

         if pObject.InheritsFrom(tPanel) or pObject.InheritsFrom(TSgDbSearchCombo) then
            ini.WriteString(Sect,pObject.name,TSgDbSearchCombo(pObject).Text)
         Else
         if pObject.InheritsFrom( tCustomEdit ) then
            ini.WriteString(Sect,pObject.name,tCustomEdit(pObject).Text);
    end;
 Finally
        FreeAndNil(ini);
 end;


end;

procedure TFrmPedidoItem.SdCadastroGradeClick(Sender: tObject);

begin
   //Verificar se o produto esta selecionado
   if (cbReferencia.idRetorno = '') then
      begin
         uteis.aviso('Informe o Produto antes de cadastrar a grade');
         cbReferencia.SetFocus;
      end
   else
      begin
         //Chama a tela de cadastro de grade
         sGradeDescricaoCadastrada := '';
         FrmCadastroGrade := TFrmCadastroGrade.Create(Application);
         try
            FrmCadastroGrade.sProdutoCodigo := cbReferencia.idRetorno;
            FrmCadastroGrade.edtProdutoReferencia.Text := cbReferencia.CdS.fieldByName('PRD_REFER').Text;
            FrmCadastroGrade.edtProdutoDescricao.Text :=  cbReferencia.CdS.fieldByName('PRD_DESCRI').AsString;
            FrmCadastroGrade.sProdutoUnidade  :=  cbReferencia.CdS.fieldByName('PRD_UND').AsString;
            FrmCadastroGrade.rPrecoItem := cbReferencia.CdS.fieldByName('PRD_PVENDA').AsCurrency;
            FrmCadastroGrade.ShowModal;
         finally
            FrmCadastroGrade.Destroy;
            FrmCadastroGrade := nil;
         end;
         // CbGrade.Condicao := 'prd_codigo = '+QuotedStr(cbReferencia.idRetorno);
         if (sGradeDescricaoCadastrada <> '') then
            begin
               // CbGrade.TextoLocalizar := sGradeDescricaoCadastrada;
               // CbGrade.Localizar := True;
               CbGrade.SetFocus;

            end;
      end;
end;


procedure TFrmPedidoItem.SetAlmoxarifado(const Values: string);
begin
  	FAlmoxarifado := Values;
end;

function TFrmPedidoItem.SetarTabelaPrecos: integer;
var ValorInicial : double;
begin
  if (dbInicio.Empresa.bHabilitarTabelaPreco) then
  begin
    // result := 1;
    OpenAux3(' select * from tabelaprecos'+
             ' where EMP_CODIGO = ' + QuotedStr(DBInicio.Empresa.EMP_CODIGO)+
             ' and prd_codigo = '+QuotedStr(qAux.FieldByName('prd_codigo').AsString) +
             ' ORDER BY PRD_PVENDA ')
           ;
    if qAux3.IsEmpty then
      exit;

    result := qAux3.RecordCount;

    qaux3.First;
    ValorInicial:= 0;
    //qAux3.Next;
    while not qAux3.Eof do
    begin
     if SameValue(qAux3.FieldByName('PRD_PVENDA').AsFloat,CurPrecoLiquido.Value)   then
     begin
       result := qAux3.FieldByName('SEQ').AsInteger;
       break;

     end
     else
     if ((ValorInicial<CurPrecoLiquido.Value) or SameValue(ValorInicial,CurPrecoLiquido.Value) ) and
      (CurPrecoLiquido.Value < qAux3.FieldByName('PRD_PVENDA').AsFloat)  then
      begin
         if qAux3.FieldByName('SEQ').AsInteger = 1 then
            result := 1
         else
           result := qAux3.FieldByName('SEQ').AsInteger-1;
         break;
      end;
      ValorInicial:= qAux3.FieldByName('PRD_PVENDA').AsFloat;
      qAux3.Next;
    end;

  end;


end;

procedure TFrmPedidoItem.SetExclusaoItensGrade(const Value: Boolean);
begin
 FExclusaoItensGrade := Value;
end;

procedure TFrmPedidoItem.SetNumeroPedido(const Values: string);
begin
     FNumeroPedido := Values;
end;

procedure TFrmPedidoItem.SetProdutoGradeIncluido(const Value: Boolean);
begin
 FProdutoGradeIncluido := Value;
end;

procedure TFrmPedidoItem.SetProdutoOrigCodigo(const Values: string);
begin
  FProdutoOrigCodigo := Values;
end;

procedure TFrmPedidoItem.SetProdutoOriginal(const Values: string);
begin
  FProdutoOriginal := Values;
end;

procedure TFrmPedidoItem.SetRegistroItemAnterior(const Values: Integer);
begin
 FRegistroItemAnterior:= Values;
end;

procedure TFrmPedidoItem.SetsTipo(const Values: string);
begin
  FsTipo := Values;
end;

procedure TFrmPedidoItem.BtnCompraVendaClick(Sender: tObject);
begin
    FrmProdutoCompraVenda := TFrmProdutoCompraVenda.Create(Application);
   try
      FrmProdutoCompraVenda.FormStyle := fsNormal;
      FrmProdutoCompraVenda.Visible := false;
      FrmProdutoCompraVenda.BuscaProduto(EdReferencia.Text);
      FrmProdutoCompraVenda.ShowModal;
   finally
      FrmProdutoCompraVenda.Destroy;
      FrmProdutoCompraVenda := Nil;
   end;
   if (CurPrecoBruto.Enabled) then
    begin
       if CurPrecoBruto.CanFocus then
       begin
         CurPrecoBruto.SetFocus;
         CurPrecoBruto.SelectAll;
       end;
    end;
end;

procedure TFrmPedidoItem.BtnCadastroProdutoClick(Sender: tObject);
begin
     FormProduto := TFormProduto.Create(Application);
     try
        FormProduto.FormStyle := fsNormal;
        FormProduto.Visible := false;
        FormProduto.ShowModal;
     finally
            FreeAndNil( FormProduto );
     end;
end;

procedure TFrmPedidoItem.btnCodOriginalClick(Sender: TObject);
begin
  inherited;
  if not assigned(frmPesqCodOriginal) then
  begin
    frmPesqCodOriginal := TfrmPesqCodOriginal.Create(Application);

    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      frmPesqCodOriginal.Top := 0;

  end;
  try
    frmPesqCodOriginal.Pedido := FrmPedido.SqlCdsPedidoPED_CODIGO.Value;
    frmPesqCodOriginal.Produto := qAux.FieldByName('PRD_CODIGO').AsString;
    frmPesqCodOriginal.Cliente := FrmPedido.edCliente.CdS.FieldByName('CLI_CODIGO').AsString;
    frmPesqCodOriginal.Show;
  except
     frmPesqCodOriginal.Cliente := '';
  end;
end;

procedure TFrmPedidoItem.RateioVerba(rValor: double;sVendedor:string);
var rValor2:Double;

begin
  rValor2 := rValor;
  cdsCC.Close;
  cdsCC.ParamByName('cod_vendedor').AsString := sVendedor;
  cdsCC.ParamByName('documento').AsString := FrmPedido.SqlCdsPedidoPED_CODIGO.Value;
  cdsCC.Open;
  cdsCC.First;
  while not cdsCC.Eof do
  begin
    if rValor2 > 0 then
    begin
      if (rValor2) > cdsCC.FieldByName('VALOR').Value then
      begin
        rValor2 := (rValor2 - cdsCC.FieldByName('VALOR').Value);
        cdsCC.Edit;
        cdsCC.FieldByName('VALOR').Value := 0;
        cdsCC.Post;
        cdsCC.ApplyUpdates(0);
      end
      else
      begin
        rValor2 := rValor2 - cdsCC.FieldByName('VALOR').Value;
        cdsCC.Edit;
        cdsCC.FieldByName('VALOR').Value := rValor2*(-1);
        cdsCC.Post;
        cdsCC.ApplyUpdates(0);
      end;
    end;
    cdsCC.Next;
  end;

end;


function TFrmPedidoItem.RetornaPercentualComissao(
  const wCodITem: String): Currency;
var
wSQL,wWhere:string;
i :Integer;
wPreco_venda,wProxpreco,wAcrescimo:Currency;
begin
   Result := 0;
   if disComissao then
     exit;

   if dbInicio.Empresa.pComissaoItem then
   begin
         wSQL   := 'Select P1.PRD_COMISSAO,P2.PTI_COMISSAO,P3.PGR_COM_PERC,P3.PGR_COMISS from PRD0000 P1 left join PRD_TIPO P2 on (P2.PTI_CODIGO = P1.PTI_CODIGO) left join PRD_GRUPO P3 on(P3.PGR_CODIGO = P1.PGR_CODIGO)';
         wWhere := ' where P1.PRD_REFER = '''+wCodItem+'''';

              DataMovimento2.sqlaux.close;
              DataMovimento2.sqlaux.sql.text := SqlDef('PRODUTOS',wSQL,wWhere,'','P1.');
              DataMovimento2.sqlaux.Open;
              if DataMovimento2.sqlaux.IsEmpty = false then
              begin
                     // se tem comissao no produto
                     if dataMovimento2.sqlaux.FieldByName('PRD_COMISSAO').AsCurrency > 0 then
                        begin
                            Result := dataMovimento2.sqlaux.FieldByName('PRD_COMISSAO').AsCurrency;
                        end
                     else
                        // se tem comissao no tipo
                        if dataMovimento2.sqlaux.FieldByName('PTI_COMISSAO').AsCurrency > 0 then
                          begin
                              Result := dataMovimento2.sqlaux.FieldByName('PTI_COMISSAO').AsCurrency;
                          end
                        else
                         // se tem comissao no grupo
                         if dataMovimento2.sqlaux.FieldByName('PGR_COM_PERC').AsCurrency > 0 then
                             begin
                                Result := dataMovimento2.sqlaux.FieldByName('PGR_COM_PERC').AsCurrency;
                             end
                         else
                            Result := FrmPedido.rComissaoVendedor;
                 end
              else
                 Result := 0;
       end
   else
      if dbInicio.Empresa.pComissaoEscala then
         begin
           // senão tinha preço de venda no cadastro do produto o acrescimo foi o propio preço bruto

           if CurPrecoBruto.Value = CurrAcrescimoReal.Value then
              begin
              CurrAcrescimoReal.Value := 0;  // força entrada na tabela de desconto
              end;
           // pega tabela de comissões por ACRESCIMO
           if (CurPrecoLiquido.Value) > (CurPrecoBruto.Value - CurrAcrescimoReal.Value) then
             // houve acrescimo no preço verificar se tem parametros para acrescimo
             begin
               wSQL   := 'select first 1 t1.PRD_REFER,t1.LIN_CODIGO,t2.MKP_CODIGO,t2.LIN_CODIGO,t2.MKP_COMIS1,t2.MKP_COMIS2,t2.MKP_COMIS3,t2.MKP_COMIS4,t2.MKP_COMIS5,t2.MKP_COMIS6,t2.MKP_PERC1,t2.MKP_PERC2,t2.MKP_PERC3,t2.MKP_PERC4,t2.MKP_PERC5,t2.MKP_PERC6,'+
                        't2.MKP_TIPOCALCULO,t2.MKP_AC_DC FROM PRD0000 t1 left join MKP0000 t2 ON ((t2.LIN_CODIGO = t1.lin_codigo)or(t2.LIN_CODIGO = ''999''))';
               wWhere := ' where t2.MKP_AC_DC = ''A'' and T1.PRD_REFER = '''+wCodItem+'''';
             end;
           // pega tabela de comissões por DESCONTO
           if (CurPrecoLiquido.Value) <= (CurPrecoBruto.Value - CurrAcrescimoReal.Value) then
             // houve desconto no preço, verificar os parametros para desconto
             begin
              wSQL   := 'select first 1 t1.PRD_REFER,t1.LIN_CODIGO,t2.MKP_CODIGO,t2.LIN_CODIGO,t2.MKP_COMIS1,t2.MKP_COMIS2,t2.MKP_COMIS3,t2.MKP_COMIS4,t2.MKP_COMIS5,t2.MKP_COMIS6,t2.MKP_PERC1,t2.MKP_PERC2,t2.MKP_PERC3,t2.MKP_PERC4,t2.MKP_PERC5,t2.MKP_PERC6,'+
                        't2.MKP_TIPOCALCULO,t2.MKP_AC_DC FROM PRD0000 t1 left join MKP0000 t2 ON ((t2.LIN_CODIGO = t1.lin_codigo)or(t2.LIN_CODIGO = ''999''))';
              wWhere := ' where t2.MKP_AC_DC = ''D'' and T1.PRD_REFER = '''+wCodItem+'''';
             end;
           DataMovimento2.sqlaux.close;
           DataMovimento2.sqlaux.sql.text := SqlDef('PRODUTOS',wSQL,wWhere,'t2.LIN_CODIGO','T1.');
           DataMovimento2.sqlaux.Open;
           // construir todos os preços para calculo das comissões
           if DataMovimento2.sqlaux.IsEmpty = false then
             begin
              //wTabelapreco[1] = Preço de Venda a Vista
              wPreco_venda := wTabelapreco[1];
              if dataMovimento2.sqlaux.FieldByName('MKP_AC_DC').AsString = 'A' then    //Acrescimo
                begin
                wTabelapreco[1]  := wPreco_venda+(wTabelapreco[1]*DataMovimento2.sqlaux.FieldByName('MKP_PERC1').AsFloat/100);
                wTabelapreco[2]  := iif(DataMovimento2.sqlaux.FieldByName('MKP_PERC2').AsFloat=0,0,wTabelapreco[1]+(wTabelapreco[1]*DataMovimento2.sqlaux.FieldByName('MKP_PERC2').AsFloat/100));
                wTabelapreco[3]  := iif(DataMovimento2.sqlaux.FieldByName('MKP_PERC3').AsFloat=0,0,wTabelapreco[1]+(wTabelapreco[1]*DataMovimento2.sqlaux.FieldByName('MKP_PERC3').AsFloat/100));
                wTabelapreco[4]  := iif(DataMovimento2.sqlaux.FieldByName('MKP_PERC4').AsFloat=0,0,wTabelapreco[1]+(wTabelapreco[1]*DataMovimento2.sqlaux.FieldByName('MKP_PERC4').AsFloat/100));
                wTabelapreco[5]  := iif(DataMovimento2.sqlaux.FieldByName('MKP_PERC5').AsFloat=0,0,wTabelapreco[1]+(wTabelapreco[1]*DataMovimento2.sqlaux.FieldByName('MKP_PERC5').AsFloat/100));
                wTabelapreco[6]  := iif(DataMovimento2.sqlaux.FieldByName('MKP_PERC6').AsFloat=0,0,wTabelapreco[1]+(wTabelapreco[1]*DataMovimento2.sqlaux.FieldByName('MKP_PERC6').AsFloat/100));
                end
              else     // Desconto
                begin
                wTabelapreco[1]  := wPreco_venda+(wTabelapreco[1]*(DataMovimento2.sqlaux.FieldByName('MKP_PERC1').AsFloat*-1)/100);
                wTabelapreco[2]  := iif(DataMovimento2.sqlaux.FieldByName('MKP_PERC2').AsFloat=0,0,wTabelapreco[1]+(wTabelapreco[1]*(DataMovimento2.sqlaux.FieldByName('MKP_PERC2').AsFloat*-1)/100));
                wTabelapreco[3]  := iif(DataMovimento2.sqlaux.FieldByName('MKP_PERC3').AsFloat=0,0,wTabelapreco[1]+(wTabelapreco[1]*(DataMovimento2.sqlaux.FieldByName('MKP_PERC3').AsFloat*-1)/100));
                wTabelapreco[4]  := iif(DataMovimento2.sqlaux.FieldByName('MKP_PERC4').AsFloat=0,0,wTabelapreco[1]+(wTabelapreco[1]*(DataMovimento2.sqlaux.FieldByName('MKP_PERC4').AsFloat*-1)/100));
                wTabelapreco[5]  := iif(DataMovimento2.sqlaux.FieldByName('MKP_PERC5').AsFloat=0,0,wTabelapreco[1]+(wTabelapreco[1]*(DataMovimento2.sqlaux.FieldByName('MKP_PERC5').AsFloat*-1)/100));
                wTabelapreco[6]  := iif(DataMovimento2.sqlaux.FieldByName('MKP_PERC6').AsFloat=0,0,wTabelapreco[1]+(wTabelapreco[1]*(DataMovimento2.sqlaux.FieldByName('MKP_PERC6').AsFloat*-1)/100));
                end;
             {carregar comissoes no array}
              wTabelacomissao[1]  := dataMovimento2.sqlaux.FieldByName('MKP_COMIS1').AsFloat;
              wTabelacomissao[2]  := dataMovimento2.sqlaux.FieldByName('MKP_COMIS2').AsFloat;
              wTabelacomissao[3]  := dataMovimento2.sqlaux.FieldByName('MKP_COMIS3').AsFloat;
              wTabelacomissao[4]  := dataMovimento2.sqlaux.FieldByName('MKP_COMIS4').AsFloat;
              wTabelacomissao[5]  := dataMovimento2.sqlaux.FieldByName('MKP_COMIS5').AsFloat;
              wTabelacomissao[6]  := dataMovimento2.sqlaux.FieldByName('MKP_COMIS6').AsFloat;

              //
              { CALCULAR COMISSAO PROPORCIONAL PELA TABELA ESCALONADA }
              for i := 1 to 6 do
                begin
                // Calculo para Acrescimeto progressivo nos preço
                if dataMovimento2.sqlaux.FieldByName('MKP_AC_DC').AsString = 'A' then
                  begin
                    // testar o primeiro - preço menor que o primeiro preço PVENDA
                    if CurPrecoLiquido.Value < wTabelapreco[1] then
                       Result :=  wTabelacomissao[1];
                    //  para preço exato
                    if CurPrecoLiquido.Value = wTabelapreco[i] then
                        Result :=  wTabelacomissao[i];
                    // pega ultima comissao valida se tem preco na tabela
                    if CurPrecoLiquido.Value > wTabelapreco[i] then
                        if wTabelapreco[i] > 0 then
                           Result :=  wTabelacomissao[i];

                    // se preço não é exato da tabela verificar entre qual tabela de preço o preço vendido se encontra
                    if (CurPrecoLiquido.Value > wTabelapreco[i]) and (CurPrecoLiquido.Value <= wTabelapreco[i+1]) then
                         // se opção de calculo é De até
                         if  dataMovimento2.sqlaux.FieldByName('MKP_TIPOCALCULO').AsString = 'D' then
                           Result := wTabelacomissao[i]
                         else
                           // calculo "Proporcional"
                           begin
                            //Result :=  CurPrecoLiquido.Value * wTabelacomissao[i] / wTabelapreco[i]  formula desativada em 31/07/13 marcio
                            if wTabelapreco[i+1] > 0 then // proximo preço
                              begin
                              // calcula o valor total de acrescimo com relação ao proximo preço
                              wProxpreco := wTabelapreco[i+1] - wTabelapreco[i];
                              // valor do acrescimo no item
                              wAcrescimo := CurPrecoLiquido.Value - wTabelapreco[i];
                              // percentual de comissão + o proporcional
                              Result :=  wTabelacomissao[i] + (wacrescimo / wproxpreco);
                              end
                            else
                              Result :=  CurPrecoLiquido.Value * wTabelacomissao[i] / wTabelapreco[i]
                           end;
                   end
                 else
                   // Calculo para Desconto progressivo nos preços (mesma rotina do "Acrescimo" com os sinais > < invertidos)
                   begin
                    // se o preço já é maior que o primeira tabela então pegar maior comissao
                    if CurPrecoLiquido.Value > wTabelapreco[1] then
                      Result :=  wTabelacomissao[1];
                    //  para preço exato  (foi comparado em texto porque em preços iguais o delphi nao comparou)
                    if CurPrecoLiquido.Text = FloatToStr(wTabelapreco[i]) then
                         Result :=  wTabelacomissao[i];
                     // pega ultima comissao valida se tem preco na tabela
                    if CurPrecoLiquido.Value < wTabelapreco[i] then
                        if wTabelapreco[i] < 0 then
                           Result :=  wTabelacomissao[i];
                    // se preço não é exato da tabela verificar entre qual tabela de preço o preço vendido se encontra
                    if (CurPrecoLiquido.Value < wTabelapreco[i]) and (CurPrecoLiquido.Value >= wTabelapreco[i+1]) then
                         // se opção de calculo é "De até"
                         if  dataMovimento2.sqlaux.FieldByName('MKP_TIPOCALCULO').AsString = 'D' then
                           Result := wTabelacomissao[i]
                         else
                            // calculo "Proporcional"
                            // se valor menor que o menor valor (vale p ultimo preço da tabela)
                            if ((CurPrecoLiquido.Value+0.01)  < wTabelapreco[i]) and (i = 6) then
                               Result := 0
                            else
                               Result :=  wTabelacomissao[i] - (1 - CurPrecoLiquido.Value / wTabelapreco[i]);

                   end;
                 end; //for


              end;
         end
      else
      begin
        Result := FrmPedido.rComissaoVendedor;
      end;
      if dbInicio.Empresa.pComissaoSimples then
      begin
        Result := CurComissao.Value;//CurrencyEdit1.value;
      end;
      if Result = 0 then
        if CurComissao.Value > 0 then
          Result := CurComissao.Value;


end;

procedure TFrmPedidoItem.btnTransferenciaClick(Sender: tObject);

begin

  FrmKardexTransferencia := TFrmKardexTransferencia.Create(Application);
  try
    FrmKardexTransferencia.FormStyle := fsNormal;
    FrmKardexTransferencia.Visible := false;
    FrmKardexTransferencia.CbProduto.idRetorno := cbReferencia.idRetorno;
    FrmKardexTransferencia.cbEmpresaOrigem.idRetorno := DBInicio.Empresa.EMP_CODIGO;
    FrmKardexTransferencia.CbAlmoxarifadoOrigem.EditValue := gbSaldo.DataSource.DataSet.FieldByName('amx_codigo').AsString;
    FrmKardexTransferencia.CbAlmoxarifadoDestino.EditValue := EdAlmoxarifadoCodigo.Text;
    FrmKardexTransferencia.CurSaldoTransferir.Value := CurQuantidade.Value;
    FrmKardexTransferencia.EdDocumento.Text := FrmPedido.SqlCdsPedidoPED_CODIGO.Value ;
    FrmKardexTransferencia.Epedido := true;
    FrmKardexTransferencia.ShowModal;
    AtualizaSaldos;
    if (CurQuantidade.Enabled) then
       CurQuantidade.SetFocus;
  finally
       FreeAndNil( FrmKardexTransferencia );
  end;
end;


function TFrmPedidoItem.CalculaSTItem(total:Currency): Currency;

var   rRetorno, wUfAliqMVA, wIcmsAliq,  wUfAliqIcmsSubCli, rBaseIcms, rValorIcms,  rBaseIcmsST, rPrecoTotal, wUfAliqIcmsForaEst, rValorST,
      wALiqICmsCliente, wUfAliqIcmsSubCliRegra, wReducaoBaseST, wUfAliqIcmsEspecialRegra :Currency;
      wCST_CODIGO, wCST_CODIGOProduto, wClassificacaoFiscal, wTemSubs, wExterior, wSeleciona:string;
      wVenda,bLocalizadoRegra,bIsentarICMS, CLI_CONSFINAL, CLI_CONSU_PROPRIO, CLI_MODO_TRIB_ST, CNAE_CARGA_TRIB_MEDIA,
      wConsumidor :Boolean;
      icmTipoCalculoDifal, i:Integer;
      wFator, wDifalST, rateio, valorTotal, valorItem: Currency;
      sorigem, sOpIpiTotalNota, sOpIpiNaBaseIcms,  wForaEstSN, prdOrigem, prdOrigemCodigo, cliModoTribSt, cnaeRegistro, cliEstado : string;
      wValorIPI, wAliqIpi, wOpeReduzIpi, wBaseIPIIndividual, wDescontoIndividual, wValorIPIIndividual, wTotalIPI,
      wBaseIPI, wTotalIPITotalNF, wBaseValorSubs, wBaseIcmsIndividual, wValorIcmsIndividual, wRateioFreteSeguroDesp,
      wBaseValorProd, wIcms, wIcmDifalST, wAliqIcmsImportado, wALiqICmsInterEstadual, rAliqAux, wDifal, wALiqICmsInterno, a, b, wIcmDifal,
      wValorSubs, wCalBaseValorSubs, wUfResultMVA, wIcmEstad, wTotalValorSubs, wTotalBaseValorSubs
       : double;
begin
   if total = 0  then
  begin
    Result := 0 ;
    exit ;
  end;
      rRetorno := 0;
      wUfAliqMVA := 0;
      wIcmsAliq := 0;

      wUfAliqIcmsSubCli := 0;
      wUfAliqIcmsForaEst := 0;
      wUfAliqIcmsEspecialRegra := 0;
      wUfAliqIcmsSubCliRegra := 0;
      wReducaoBaseST         := 0;
      rPrecoTotal := total;
      wTemSubs := 'N';
      wFator :=0;

      wDifalST :=0;

      if (FrmPedido.EdClienteUF.Text = '') and (FrmPedido.cbbClienteEstado.Text <> '') and (FrmPedido.GBInformacoesOrcamento.Visible) then
         FrmPedido.EdClienteUF.Text := FrmPedido.cbbClienteEstado.Text;

      //Tipo do Pedido Calcula ST ?
      if (FrmPedido.bTipoPedidoCalculaST)and(EdReferencia.Text <> '')and(FrmPedido.edCfop.idRetorno <> '')and(FrmPedido.EdClienteUF.Text <> '') then
      begin

           wCST_CODIGO := qAux.FieldByName('STB_TRIBUTACAO').AsString;
           wCST_CODIGOProduto := qAux.FieldByName('STB_TRIBUTACAO').AsString;
           wClassificacaoFiscal := qAux.FieldByName('IPI_CODIGO').AsString;
           prdOrigemCodigo := qAux.FieldByName('PRD_ORIGEM').AsString;
           bLocalizadoRegra := False;
           i := 8;

           while (i >= 2) do
           begin
                if MatchStr(qAux.FieldByName('PRD_ORIGEM').AsString,['1','2','6','7']) then   // estrangeira
                  sorigem := 'E'
                else
                  sOrigem := 'N';
                DataCadastros.sqlUpdate1.Close;
                DataCadastros.sqlUpdate1.SQL.Text := SQLDEF('FISCAL','SELECT t1.* FROM ope_regra T1',
                                'where T1.ipi_codigo = '''+copy(wClassificacaoFiscal,1,I)+
                                ''' AND T1.opr_'+FrmPedido.EdClienteUF.Text+' = ''S'' AND T1.ope_codigo_origem = '+QuotedStr(PreenchezeroEsquerda(FrmPedido.edCfop.idRetorno,3))+
                                iif( sorigem <> '', ' and OPR_ORIGEM = ' +QuotedStr(sorigem),'')  ,'','T1.');
                DataCadastros.sqlUpdate1.open;
                if DataCadastros.sqlUpdate1.IsEmpty then
                begin
                  DataCadastros.sqlUpdate1.Close;
                  DataCadastros.sqlUpdate1.SQL.Text := SQLDEF('FISCAL','SELECT t1.* FROM ope_regra T1',
                                  'where T1.ipi_codigo = '''+copy(wClassificacaoFiscal,1,I)+
                                  ''' AND T1.opr_'+FrmPedido.EdClienteUF.Text+' = ''S'' AND T1.ope_codigo_origem = '+QuotedStr(PreenchezeroEsquerda(FrmPedido.edCfop.idRetorno,3)) +
                                  ' and OPR_ORIGEM = ' +QuotedStr('I'),'','T1.');
                  DataCadastros.sqlUpdate1.open;
                end;

                //Verifica se localizou alguma regra
                if (not DataCadastros.sqlUpdate1.IsEmpty) then
                begin
                     //Encontrou a regra e sai do laço
                     bLocalizadoRegra := True;
                     i := 0;
                end
                else
                begin
                     //Diminui 2 pois é a separação por genero da classificação fiscal
                     i := i -1;
                end;
           end;

           //Se nao localizou tenta pelo **
           if (not bLocalizadoRegra) then
           begin
                DataCadastros.sqlUpdate1.Close;
                DataCadastros.sqlUpdate1.SQL.Text := SQLDEF('FISCAL',
                'SELECT t1.* FROM ope_regra T1',
                'where T1.ipi_codigo = ''**'' AND T1.opr_'+FrmPedido.EdClienteUF.Text+' = ''S'' AND T1.ope_codigo_origem = '+QuotedStr(PreenchezeroEsquerda(FrmPedido.edCfop.idRetorno,3))          ,
                '','T1.');
                DataCadastros.sqlUpdate1.open;
                //Verifica se localizou alguma regra
                if (not DataCadastros.sqlUpdate1.IsEmpty) then
                   bLocalizadoRegra := True;
           end;



           if FrmPedido.edCliente.CdS.Active then
           begin
              // CLI_CONSFINAL := FrmPedido.edCliente.CdS.FieldByName('CLI_CONSFINAL').AsString <> 'S';
              CLI_CONSFINAL := FrmPedido.SqlCdsPedidoCLI_CONSFINAL.AsString = 'S';
              if (FrmPedido.EdClienteUF.Text <> DBInicio.Empresa.UF) then
                 wForaEstSN := 'S'
              else
                 wForaEstSN := 'N';

           end
           else
           begin
              CLI_CONSFINAL := FrmPedido.cbOrsConsFinal.ItemIndex <> 0;  // 0 = SIM / 1 = NÃO
              if (FrmPedido.cbbClienteEstado.Text <> DBInicio.Empresa.UF) then
                 wForaEstSN := 'S'
              else
                 wForaEstSN := 'N';
           end;


           if (bLocalizadoRegra) and (CLI_CONSFINAL) then
           begin
                //pega ST da regra


              if DataCadastros.sqlUpdate1.FieldByName('OPR_ISENTARICIMS').AsString = 'S' then
               begin
                  wCST_CODIGO := '30';

               end
               else  //cst 60 ICMS cobrado anteriormente por substituição tributária
                  wCST_CODIGO := DataCadastros.sqlUpdate1.FieldByName('STB_TRIBUTACAO').AsString;
                wUfAliqIcmsSubCliRegra := DataCadastros.sqlUpdate1.FieldByName('OPR_ALIQ_ST_UF').AsFloat;
                wUfAliqIcmsEspecialRegra := DataCadastros.sqlUpdate1.FieldByName('OPR_ALIQ_INTERESTADUAL').AsFloat; // adr
                wReducaoBaseST         := DataCadastros.sqlUpdate1.FieldByName('OPR_REDUCAO_BASE_ST').AsFloat;

                //abre cfop
                DataCadastros.CdsOperFisc.Open;
                DataCadastros.CdsOperFisc.Locate('OPE_CODIGO',PreenchezeroEsquerda(DataCadastros.sqlUpdate1.FieldByName('OPE_DESTINO').AsString,3),[]);
                if FrmPedido.edCliente.CdS.Active then
                begin
                  // CLI_CONSFINAL := FrmPedido.edCliente.CdS.FieldByName('CLI_CONSFINAL').AsString <> 'S';
                  CLI_CONSFINAL := FrmPedido.SqlCdsPedidoCLI_CONSFINAL.AsString = 'S';
                  CLI_CONSU_PROPRIO := FrmPedido.SqlCdsPedidoCLI_CONSU_PROPRIO.AsString <> 'S';
                end
                else
                begin
                  CLI_CONSFINAL := FrmPedido.cbOrsConsFinal.ItemIndex <> 0; // 0 = SIM / 1 = NÃO
                  CLI_CONSU_PROPRIO := FrmPedido.rgOrsCliConsuProprio.ItemIndex <> 0 // 0 = Uso e consumo ou industrialização / 1 = Revenda

                end;


                if (CLI_CONSFINAL) AND (CLI_CONSU_PROPRIO)   then
                begin
                     //REGIME TRIBUTÁRIO DO SIMPLES TEM SEU MVA PROPRIO S=SIMPLES P = PRESUMIDO R = REAL
                     if FrmPedido.edCliente.CdS.Active then
                     begin
                       if (FrmPedido.edCliente.CdS.FieldByName('CLI_REGIME_TRIBUTARIO').AsString = 'S') then
                          wUfAliqMVA := DataCadastros.sqlUpdate1.FieldByName('OPR_PERCENTUAL_MVA_SIMPLES').AsFloat
                       else
                          wUfAliqMVA := DataCadastros.sqlUpdate1.FieldByName('OPR_PERCENTUAL_MVA').AsFloat;
                     end
                     else
                     begin
                       if (FrmPedido.cbOrsCliRegimeTributario.ItemIndex = 0) then // 0 = simples / 1 = presumido / 2 = real
                          wUfAliqMVA := DataCadastros.sqlUpdate1.FieldByName('OPR_PERCENTUAL_MVA_SIMPLES').AsFloat
                       else
                          wUfAliqMVA := DataCadastros.sqlUpdate1.FieldByName('OPR_PERCENTUAL_MVA').AsFloat;

                     end;

                end;

           end
           else
           begin
                DataCadastros.CdsOperFisc.Open;
                DataCadastros.CdsOperFisc.Locate('OPE_CODIGO',PreenchezeroEsquerda(FrmPedido.edCfop.idRetorno,3),[]);
                // pega ST do cadastro do produto
                wCST_CODIGO := wCST_CODIGOProduto;
           end;
           bIsentarICMS := MatchStr(wCST_CODIGO,['30','60']) ;
           wVenda := (DataCadastros.CdsOperFiscOPE_TIPO_OPERACAO.AsString = 'V');



           //se ST = 10 ou 60 tem st                 substituição tributária
           if MatchStr(wCST_CODIGO,['10','70'])  then
              wTemSubs := 'S'
           else
              wTemSubs := 'N';

           if (dbInicio.GetParametroSistema('PMT_PEDIDO_IND_PLASTICA') = 'S')  then
           begin
              if BuscaUmDadoSqlAsInteger(
                 ' SELECT COUNT(rfpc.PRD_REFER) ' +
                 ' FROM OPE_REGRA opr ' +
                 '   LEFT JOIN REGRA_FISCAL_PROD_CAP rfpc ON (rfpc.OPR_REGISTRO = opr.OPR_REGISTRO) ' +
                 '   LEFT JOIN CAPACIDADE cap ON cap.CAP_CODIGO = rfpc.CAP_CODIGO ' +
                 '   LEFT JOIN OPE0000 o ON o.OPE_CODIGO = opr.OPE_CODIGO_ORIGEM ' +
                 ' WHERE rfpc.PRD_REFER = ' + QuotedStr(BuscaUmDadoSqlAsString('SELECT PRD_REFER FROM PRD0000 WHERE PRD_CODIGO = ' + QuotedStr(cbReferencia.idretorno ) ))+
                 iif(cbCapacidade.idRetorno = '', '',  ' AND rfPC.CAP_CODIGO = ' + cbCapacidade.idRetorno ) +
                 '   AND cap.CAP_SUBSTITUICAO_TRIBUTARIA = ''S'' '
              ) > 0
              then wTemSubs := 'S'
              else wTemSubs := 'N'
              ;
           end;

//                  iif(cbCapacidade.idRetorno = '', '',  ' AND rfPC.CAP_CODIGO = ' + IntToStr(StrToIntDef(cbCapacidade.idRetorno, 0 )) )+



            if FrmPedido.edCliente.CdS.active  then
            begin
              qAux2.Close;
              qAux2.sql.text := 'SELECT * '+
                                 'FROM CLI0000 '+
                                 'Where CLI_CODIGO = '+qStr(FrmPedido.edCliente.CdS.FieldByName('CLI_CODIGO').AsString) +
                                 iif(DBInicio.empresa.wPMT_FATURA_MULTIEMPRESA,
                                      ConcatSe( ' and ',dbInicio.ExclusivoSql('CLIENTES', dbInicio.Emp_Codigo) ),
                                      ConcatSe( ' and ',dbInicio.ExclusivoSql('CLIENTES') ))
                ;
              qAux2.Open;
              // wConsumidor := qAux2.FieldByName('CLI_CONSFINAL').AsString = 'S';
              wConsumidor := FrmPedido.SqlCdsPedidoCLI_CONSFINAL.AsString = 'S';
              cliModoTribSt := qAux2.FieldByName('CLI_MODO_TRIB_ST').AsString;
              cnaeRegistro := qAux2.FieldByName('CNAE_REGISTRO').AsString;
              cliEstado := qAux2.FieldByName('CLI_UF').AsString;
            end
            else
            begin
              wConsumidor := FrmPedido.cbOrsConsFinal.ItemIndex = 0;
              cliModoTribSt := '';
              cnaeRegistro := '';
              cliEstado := FrmPedido.cbbClienteEstado.Text;
            end;





           wIcmsAliq := BuscaUmDadoSqlAsCurrency('SELECT PRD_ALIQICM FROM PRD0000 WHERE PRD_CODIGO = ' + QuotedStr(cbReferencia.idRetorno)  ) ;


           wSeleciona := 'WHERE ICM_DESTINO = '''+FrmPedido.EdClienteUF.Text+'''';

           if (wIcmsAliq = 0) then
           begin
                DataCadastros1.CdsICMS.Close;
                DataCadastros1.CdsICMS.CommandText := SQLDEF('ICMS','SELECT * FROM ICM0000 ',wSeleciona,'ICM_DESTINO','');
                DataCadastros1.CdsICMS.Open;
                wIcmsAliq  := DataCadastros1.CdsICMSICM_ALIQ.AsCurrency;
           end;

           if wUfAliqIcmsEspecialRegra<>0 then
              wIcmsAliq  := wUfAliqIcmsEspecialRegra;

           wSeleciona := 'WHERE ICM_DESTINO = '''+FrmPedido.EdClienteUF.Text+'''';
           // ver se cliente é do Exterior
           wExterior := iif(FrmPedido.EdClienteUF.Text = 'EX','S','N');

           {Aliquotas de ICMS por UF origem}
           DataCadastros1.CdsICMS.Close;
           DataCadastros1.CdsICMS.CommandText := SQLDEF('ICMS','SELECT * FROM ICM0000 ',wSeleciona,'ICM_DESTINO','');
           DataCadastros1.CdsICMS.Open;

           if not DataCadastros1.CdsICMS.IsEmpty then
           begin

                wALiqICmsCliente  := DataCadastros1.CdsICMSICM_ALIQ.AsCurrency;

                if FrmPedido.edCliente.CdS.Active then
                   CLI_CONSFINAL := FrmPedido.SqlCdsPedidoCLI_CONSFINAL.AsString = 'S'
                   // CLI_CONSFINAL := FrmPedido.edCliente.CdS.FieldByName('CLI_CONSFINAL').AsString = 'S'
                else
                   CLI_CONSFINAL := FrmPedido.cbOrsConsFinal.ItemIndex = 0;

                if (CLI_CONSFINAL)      then // nao calcular sub.trib. para consumirdor final jko
                begin
                     {Sem substituição tributária jko}
                     wUfAliqIcmsForaEst:= DataCadastros1.CdsIcmsICM_ALIQ.AsCurrency;  {aliquota icms somente para destaque na NF jko}
                     wUfAliqIcmsSubCli := 0;
                     wUfAliqMVA        := 0;
                end
                else
                begin
                     {Com substituição tributária jko}
                     wUfAliqIcmsForaEst:= DataCadastros1.CdsIcmsICM_ALIQ.AsCurrency;

                     wUfAliqIcmsSubCli := DataCadastros1.CdsIcmsICMS_SUBS.AsCurrency;
                     // se foi preenchido na tabela de ICMS dos estados o MVA o sistema prioriza perante a tabela de regras
                     if DataCadastros1.CdsIcmsICM_MVA.AsCurrency > 0 then
                        wUfAliqMVA        := DataCadastros1.CdsIcmsICM_MVA.AsCurrency;
                     //wAliqreduzidaICMS := DataCadastros1.CdsIcmsICMS_REDUZIDO.AsCurrency;
                end;


                //Nova Regra venda fora do estado de mercadoria importada
                if (wExterior = 'N') and (DataCadastros1.CdsICMSICMS_PROD_IMPORTADO.AsFloat > 0) and
                   (MatchStr(prdOrigemCodigo,['1','2','3','8'])) then
                   wIcmsAliq := DataCadastros1.CdsICMSICMS_PROD_IMPORTADO.AsFloat;

           end
           else
                uteis.aviso('Favor cadastrar a tributação do ICMS desse cliente !');
           wAliqIcmsImportado := DataCadastros1.CdsICMSICMS_PROD_IMPORTADO.AsFloat;
           wALiqICmsInterEstadual:= DataCadastros1.CdsICMSICM_ALIQ.asCurrency; // INTERESTADUAL
           wALiqICmsInterno      := DataCadastros1.CdsICMSICMS_SUBS.asCurrency;  // ESTADUAL
           icmTipoCalculoDifal   := DataCadastros1.CdsICMSICM_TIPO_CALCULO_DIFAL.AsInteger;
           DataCadastros1.CdsICMS.Close;

           if (wTemSubs = 'S') and (wIcmsAliq > 0) then
           begin
                if FrmPedido.edCliente.CdS.Active then
                begin

                 if FrmPedido.edCliente.CdS.Active then
                  begin
                    CLI_MODO_TRIB_ST := FrmPedido.edCliente.CdS.fieldbyname('CLI_MODO_TRIB_ST').AsString = 'CNAE';
                    CNAE_CARGA_TRIB_MEDIA := FrmPedido.edCliente.CdS.fieldbyname('CNAE_CARGA_TRIB_MEDIA').AsFloat > 0;
                  end
                  else
                  begin
                    CLI_MODO_TRIB_ST := False;
                    CNAE_CARGA_TRIB_MEDIA := False;
                  end;


                   if (CLI_MODO_TRIB_ST) and (CNAE_CARGA_TRIB_MEDIA) then
                     rRetorno := rPrecoTotal * (FrmPedido.edCliente.CdS.FieldByName('CNAE_CARGA_TRIB_MEDIA').AsFloat /100)
                  else
                  begin
                        // ficar atento para a repetição dos cálculos abaixo (else) que ocorre se for orçamento sem cliente cadastrado
                        {UF destino}
                        if (wUfAliqIcmsSubCliRegra > 0) then
                           wUfAliqIcmsSubCli := wUfAliqIcmsSubCliRegra;
                        // valorTotal := FrmPedido.CurTotalProduto.value;








                              wAliqIpi := BuscaUmDadoSqlAsFloat(
                                    ' SELECT IPI_ALIQ FROM PRD0000 pr ' +
                                    ' JOIN IPI0000 ipi ON (ipi.IPI_CODIGO = pr.IPI_CODIGO) ' +
                                    '  WHERE PR.PRD_CODIGO  = ' + QuotedStr(cbReferencia.idRetorno) ) ;
//                              OpenAux('SELECT OPE_REDU_IPI, OPE_IPI_TOTALNOTA  FROM OPE0000 WHERE OPE_CODIGO  = ' + QuotedStr(FrmPedido.edCfop.IdRetorno)+ ' AND  OPE_NATUREZA =  '+ QuotedStr(opeNatureza) );
                              OpenAux2('SELECT *  FROM OPE0000 WHERE OPE_CODIGO  = ' + QuotedStr(FrmPedido.edCfop.IdRetorno) );
                              wOpeReduzIpi := qAux2.FieldByName('OPE_REDU_IPI').AsFloat;
                              sOpIpiTotalNota :=  qAux2.FieldByName('OPE_IPI_TOTALNOTA').AsString;
                              sOpIpiNaBaseIcms :=  qAux2.FieldByName('OPE_IPINABASEICMS').AsString;





															if CurDesconto.Value > 0 then    // é desconto para aplicar na nota
																	wValorIPI := Uteis.RoundTo( (wAliqIpi/100) * ( CurPrecoBruto.Value * CurQuantidade.Value ), -2)    // p bruto
															else
																	wValorIPI := Uteis.RoundTo( (wAliqIpi/100) * ( CurPrecoLiquido.Value * CurQuantidade.Value ), -2);         // p liquido

															if (wOpeReduzIpi > 0) and (wValorIPI > 0) then //a variavel wValorIPIND soma todos os ipi dos produtos que tem icms exclusivo pode resultar em valor negativo}
																 wValorIPI := wValorIPI - Uteis.RoundTo ( wValorIPI * wOpeReduzIpi / 100, -2);

                              if (wValorIPI > 0) then
                              begin
                                   // total individual de cada produto (IPI e rateios)

                                   if CurDesconto.Value > 0 then    // é desconto para aplicar na nota não deve baixar do IPI,é preço bruto mesmo
                                   begin
                                        if CurPrecoBruto.Value <> CurPrecoLiquido.Value then
                                           wBaseIPIIndividual := wBaseIPIIndividual + Uteis.RoundTo( CurPrecoLiquido.Value * CurQuantidade.Value,-2)
                                        Else
                                           wBaseIPIIndividual := wBaseIPIIndividual + Uteis.RoundTo( CurPrecoBruto.Value * CurQuantidade.Value ,-2);
                                   end
                                   else
                                      wBaseIPIIndividual := wBaseIPIIndividual + Uteis.RoundTo( CurPrecoLiquido.Value * CurQuantidade.Value ,-2);
                                    // nova regra fiscal  publicada no DOU dia 09/03/2017 sobre o desconto incondicional resolução 01/2017
                                   wBaseIPIIndividual := wBaseIPIIndividual - wDescontoIndividual;

                                   wValorIPI := Uteis.RoundTo(wBaseIPIIndividual * CurPercentIPI.Value / 100,-2);
                                   wValorIPIIndividual := Uteis.RoundTo( wValorIPI + 0 {wIPIDESPIMPORT verificar no futuro} , -2 );
                                   // totalização do IPI de TODOS os produtos
                                   wTotalIPI := Uteis.RoundTo (wValorIPIIndividual, -2);
                                   wBaseIPI := Uteis.RoundTo ( wBaseIPI + wBaseIPIIndividual, -2);
                                   //Verifica se o comando Não aplicar o total do IPI no total da nf esta ativo
                                   if (sOpIpiTotalNota = 'S') then
                                      wTotalIPITotalNF := 0    //wTotalIPITotalNF + wValorIPIIndividual;  - mp
                                   else
                                      wTotalIPITotalNF := Uteis.RoundTo ( wTotalIPITotalNF + wValorIPIIndividual,-2);
                                   // Acumula IPI na Base da ST - conforme legislação da ST
                                   if (wTemSubs = 'S') then
                                      wBaseValorSubs := Uteis.RoundTo ( wBaseIPI + wValorIPIIndividual,-2);
                              end;

															if (sOpIpiNaBaseIcms = 'S') then
															begin
																	 wBaseIcmsIndividual := Uteis.RoundTo ( wBaseIPI + wValorIPI + 0 {wIPIDESPIMPORT // verificar no futuro}, -2);
																	 wValorIcmsIndividual := Uteis.RoundTo ( wBaseIPI * wIcmsAliq / 100 ,-2);
															end;
                              if (wTemSubs = 'S') then
                              begin
                                   if wIcmsAliq=0 then
                                      wIcmsAliq := wUfAliqIcmsForaEst;
                                   wRateioFreteSeguroDesp := Uteis.RoundTo ( (FrmPedido.CurFrete.Value + FrmPedido.CurSeguro.Value + FrmPedido.CurDespesasAcessorias.Value) / CurPrecoLiquido.Value * (CurPrecoLiquido.Value), -2);
                                   wRateioFreteSeguroDesp := wRateioFreteSeguroDesp - wDescontoIndividual;
                                   wBaseValorSubs := Uteis.RoundTo ( wBaseValorSubs + wRateioFreteSeguroDesp, -2);
                              end;
                               if (wTemSubs = 'S') then    // regras st
                               begin

{                                    if lIsProdutoEspecifico and lIsMedicamento then
                                    begin
                                         wBaseValorSubs := Uteis.RoundTo( (CdsItemPedidoPRF_QTDE_FATURAR_CC.AsCurrency *  wPMC) * ( wReducaoBaseST / 100)  , -2 );
                                         wBaseValorSubs := Uteis.RoundTo( (CdsItemPedidoPRF_QTDE_FATURAR_CC.AsCurrency *  wPMC) - wBaseValorSubs , -2 );
                                         wIcmNoEstado :=   Uteis.RoundTo( (CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat * CdsItemPedidoPRF_PRECO.AsFloat) * ( wIcmsAliq / 100 ) , -2 );
                                         wIcmForaEstado := Uteis.RoundTo( wBaseValorSubs * (wUfAliqIcmsSubCli / 100), -2) ; // valor icm fora
                                         wValorSubs := wIcmForaEstado - wIcmNoEstado;

                                         if (wValorSubs > 0) then
                                         begin
                                              wTotalBaseValorSubs := wTotalBaseValorSubs + wBaseValorSubs ;
                                              wTotalValorSubs := wTotalValorSubs + wValorSubs ;
                                         end
                                         else
                                             wBaseValorSubs := 0;
                                    end
                                    else  // Verifica se o ST não é por CNAE
                                    if (CdsPedidosCLI_MODO_TRIB_ST.AsString = 'CNAE') and (CdsPedidosCNAE_CARGA_TRIB_MEDIA.AsFloat > 0) then
                                    begin
                                         wBaseValorSubs := Uteis.RoundTo ( wBaseValorSubs + (CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat * CdsItemPedidoPRF_PRECO.AsFloat), -2);
                                         wBaseValorSubs := wBaseValorSubs + wRateioFreteSeguroDesp;
                                         // Reducao da Base ST
                                         if (wReducaoBaseST > 0) and (wBaseValorSubs > 0) then
                                           wBaseValorSubs := wBaseValorSubs - (wBaseValorSubs * (wReducaoBaseST / 100));

                                         wCalBaseValorSubs := ((((wBaseValorSubs - wValorIPIIndividual) * (wUfAliqIcmsForaEst / 100)) + (wBaseValorSubs * (CdsPedidosCNAE_CARGA_TRIB_MEDIA.AsFloat / 100))) / (wUfAliqIcmsSubCli / 100));
                                         wValorSubs := wBaseValorSubs * (CdsPedidosCNAE_CARGA_TRIB_MEDIA.AsFloat / 100);
                                         wBaseValorSubs := wCalBaseValorSubs;

                                         if (wValorSubs > 0) then
                                         begin
                                              wTotalBaseValorSubs := Uteis.RoundTo ( wTotalBaseValorSubs + wBaseValorSubs, -2);
                                              wTotalValorSubs := Uteis.RoundTo ( wTotalValorSubs + wValorSubs, -2);
                                         end
                                         else
                                             wBaseValorSubs := 0;
                                    end
                                    else          }
                                    begin
                                         // Base Calc ST
                                         // wBaseValorSubs := wBaseValorSubs + Uteis.RoundTo ( CurPrecoLiquido.Value * curQuantidade.Value, -2);
                                         wBaseValorProd := wBaseValorProd + Uteis.RoundTo ( CurPrecoLiquido.Value * curQuantidade.Value, -2);

                                         //Reducao da Base ST
                                         if (wReducaoBaseST > 0) and (wBaseValorSubs > 0) then
                                            wBaseValorSubs := wBaseValorSubs - (wBaseValorSubs * wReducaoBaseST / 100);

                                         // UF destino
                                         if (wUfAliqIcmsSubCliRegra > 0) then
                                            wUfAliqIcmsSubCli := wUfAliqIcmsSubCliRegra;





                                           if wConsumidor and wVenda and (wForaEstSN='S') and DBInicio.Empresa.PMT_HABILITAR_DIFAL then  // SO INTERESTADUAL decreto EC 87(VENDA FORA DO ESTADO A CONSUMIDOR FINAL )
                                           begin

                                    //           // não é exportação e origem = 1,2 ou 3(importados)
                                               prdOrigem := BuscaUmDadoSqlAsString('SELECT PRD_ORIGEM FROM PRD0000 WHERE PRD_CODIGO = ' + QuotedStr(cbReferencia.idRetorno + ')' )  ) ;
                                               if (wAliqIcmsImportado > 0) and ( (prdOrigem = '1') or (prdOrigem = '2') or (prdOrigem = '3') ) then
                                                  rAliqAux := wAliqIcmsImportado
                                               Else
                                                  rAliqAux := wALiqICmsInterEstadual;

                                               wDifal := (wALiqICmsInterno - rAliqAux) ;      // percentual do difal
                                               if (wConsumidor) and (dbInicio.Empresa.UF <> cliEstado) then
                                               begin
                                                if IcmTipoCalculoDifal = 1 then // o cálculo ´´e com base por dentro
                                                begin
                                                   a := wBaseValorSubs - ((wBaseValorSubs / 100) *  rAliqAux);
                                                   b := a / (1 -(wALiqICmsInterno / 100));
                                                   wIcmDifal := ( b - wBaseValorSubs )  // wIcmDifal valor do difal
                                                end
                                                else // o cálculo é com base por fora
                                                begin
                                                   wIcmDifal := wBaseValorSubs * (wDifal / 100) // wIcmDifal valor do difal
                                                end;
                                               end
                                               else
                                                 wIcmDifal := ( wBaseValorSubs / 100 ) * wDifal;  // wIcmDifal valor do difal

                                           end;











                                         // Regra Especial Calc Difal ST
                                         // nova regra de cálculo difal para todos os UF's
                                         if (bRegra<>0) and (wUfAliqMVA=0) and DBInicio.Empresa.PMT_HABILITAR_DIFAL Then  // MVA zerado na regra ou zerado por isenção icms para uso consumo (combustiveis)
                                         begin

                                              wFator := RoundTo( (100 - wUfAliqIcmsSubCli) / 100, -3 );  // Fator -> Aliquota Interna: 18% = (100 - 18)/100 = 0,82
                                              wIcms  := RoundTo( wBaseValorSubs * (wIcmsAliq/100) , -3 ); // 1000 * 4% = 40
                                              if bIsentarICMS then
                                                wIcms:= 0 ;
                                              wDifalSt := RoundTo( wBaseValorSubs - wIcms, -3 ) ; // 1000 - 40 = 960
                                              wDifalST := RoundTo( wDifalST / wFator,-3 ); // 960 / 0,82 = 1170,73

                                              //wBaseValorSubs := wBaseValorProd ;


                                              wDifalST := RoundTo( wDifalST * ( wUfAliqIcmsSubCli / 100 ), -3 ); // 1170,73 * 18% =210,43
                                              wIcmDifalST := wDifalST - wIcms ; // 210,73 - 40 = 170,73
                                              wDifalST := RoundTo( wIcmDifal / wBaseValorProd * 100, -3 ) ; // 170,73 / 1000 * 100 = 17,07

                                              wValorSubs := wIcmDifalST;
                                         end
                                         Else
                                         Begin

                                              wCalBaseValorSubs := Uteis.RoundTo ( wBaseValorSubs * wUfAliqMVA / 100, -3 );
                                              wCalBaseValorSubs := Uteis.RoundTo ( wCalBaseValorSubs + wBaseValorSubs , -3);
                                              wBaseValorSubs := wCalBaseValorSubs;

                                              wUfResultMVA := Uteis.RoundTo ( wBaseValorSubs * wUfAliqIcmsSubCli / 100, -3 );
                                              if  not bIsentarICMS then
                                              begin
                                                if (wValorIcmsIndividual=0) and (wIcmsAliq<>0) then
                                                   wIcmEstad := RoundTo( (wBaseValorProd  + wRateioFreteSeguroDesp) * (wIcmsAliq/100) , -3 )
                                                Else
                                                   wIcmEstad := wValorIcmsIndividual;
                                              end;

                                              if (wUfResultMVA > wValorIcmsIndividual ) then //VALOR DO ICMS SUBSTITUIÇÃO
                                                 wValorSubs := Uteis.RoundTo ( wUfResultMVA - wIcmEstad, -3 )
                                              else
                                              begin
                                                   wValorSubs := 0;
                                                   wBaseValorSubs := 0;
                                              end;

                                         end;

                                         if (wValorSubs > 0) then
                                         begin
                                           if ((bRegra<>0) or (wDifal>0)) and (wUfAliqMVA=0) and DBInicio.Empresa.PMT_HABILITAR_DIFAL Then
                                           begin
                                              wBaseValorSubs := wBaseValorSubs   +wValorSubs ;
                                              wTotalBaseValorSubs := Uteis.RoundTo ( wTotalBaseValorSubs +wBaseValorSubs,-2 );
                                              wTotalValorSubs := Uteis.RoundTo ( wTotalValorSubs + wValorSubs,-2 );
                                           end
                                           else
                                           begin
                                              wTotalBaseValorSubs := Uteis.RoundTo ( wTotalBaseValorSubs + wBaseValorSubs,-2 );
                                              wTotalValorSubs := Uteis.RoundTo ( wTotalValorSubs + wValorSubs,-2 );

                                           end;
                                         end
                                         else
                                             wBaseValorSubs := 0;

                                    end;
                               end
                               else
                               begin
                                    wValorSubs := 0;
                                    wBaseValorSubs := 0;
                               end;







                        valorTotal := total;

                        if (sTipo <> 'I') then   //alteração
                        begin
                           //valor anterior
                           valorItem := FrmPedido.SqlCdsPedidoItemPRF_QTDE.AsFloat *  FrmPedido.SqlCdsPedidoItemPRF_PRECO.AsFloat;
                           valorTotal := valorTotal - valorItem;

                        end;
                        valorItem:=CurQuantidade.Value*CurPrecoLiquido.value;
                        valorTotal:= valorTotal+valorItem  ;

                        rateio := wBaseValorSubs;
                        rBaseIcms := wBaseValorSubs;
                        rBaseIcmsST := wBaseValorSubs;

                        {Reducao Base ST}
                        if (wReducaoBaseST > 0)and(rBaseIcmsST > 0) then
                              rBaseIcmsST := uteis.roundto( rBaseIcmsST - (rBaseIcmsST * (wReducaoBaseST/100)), -2);

                        rValorIcms :=  uteis.roundto( rBaseIcms * (wIcmsAliq/100), -2);
                        // FOI INCLUIDO todos os estados EM 16/03/2018
                        if (bLocalizadoRegra) and (wUfAliqMVA=0) then // criar uma regra sem mva = 0,  uf = MG e RS
                        begin
                             wFator := RoundTo( (100 - wUfAliqIcmsSubCli) / 100, -2 );  // Fator -> Aliquota Interna: 18% = (100 - 18)/100 = 0,82
                            if bIsentarICMS then
                              rValorIcms:= 0 ;

                             wDifalSt := RoundTo( rBaseIcms - rValorIcms, -2 ) ; // 1000 - 40 = 960
                             wDifalST := RoundTo( wDifalST / wFator ); // 960 / 0,82 = 1170,73
                             rValorST := RoundTo( wDifalST * ( wUfAliqIcmsSubCli / 100 ), -2 ); // 1170,73 * 18% =210,43
                             //wDifalST - rValorIcms ; // 210,73 - 40 = 170,73
                             //wDifalSt := RoundTo( rValorST / rBaseIcms * 100, -2 ) ; // 170,73 / 1000 * 100 = 17,07
                            if (rValorST > rValorIcms) then
                              rRetorno :=  uteis.roundto( rValorST - rValorIcms, -2);
                        end
                        Else
                        begin
                            rValorST := uteis.roundto( rBaseIcmsST * (wUfAliqIcmsSubCli/100), -2 );
                            if (rValorST > rValorIcms) then
                              rRetorno :=  wValorSubs; // uteis.roundto( rValorST - rValorIcms, -2);
                        end
                  end;

                end
                else
                  begin
                        // ficar atento para a repetição dos cálculos acima que ocorre se for orçamento sem cliente cadastrado

                        {UF destino}
                        if (wUfAliqIcmsSubCliRegra > 0) then
                           wUfAliqIcmsSubCli := wUfAliqIcmsSubCliRegra;
                        valorTotal := FrmPedido.CurTotalProduto.value;

                        if (sTipo <> 'I') then   //alteração
                        begin
                           //valor anterior
                           valorItem := FrmPedido.SqlCdsPedidoItemPRF_QTDE.AsFloat *  FrmPedido.SqlCdsPedidoItemPRF_PRECO.AsFloat;
                           valorTotal := valorTotal - valorItem;

                        end;
                        valorItem:=CurQuantidade.Value*CurPrecoLiquido.value;
                        valorTotal:= valorTotal+valorItem  ;

                        rateio := Uteis.RoundTo (
                        (FrmPedido.CurFrete.value+FrmPedido.CurSeguro.Value + FrmPedido.CurDespesasAcessorias.Value) / valorTotal * (valorItem), -2);
                        rBaseIcms := rateio+ uteis.roundto(CurTotal.value, -2);
                        rBaseIcmsST := rateio+ uteis.roundto( rPrecoTotal + (rPrecoTotal * (wUfAliqMVA/100) ), -2 );

                        {Reducao Base ST}
                        if (wReducaoBaseST > 0)and(rBaseIcmsST > 0) then
                              rBaseIcmsST := uteis.roundto( rBaseIcmsST - (rBaseIcmsST * (wReducaoBaseST/100)), -2);

                        rValorIcms :=  uteis.roundto( rBaseIcms * (wIcmsAliq/100), -2);
                        // FOI INCLUIDO todos os estados EM 16/03/2018
                        if (bLocalizadoRegra) and (wUfAliqMVA=0) then // criar uma regra sem mva = 0,  uf = MG e RS
                        begin
                             wFator := RoundTo( (100 - wUfAliqIcmsSubCli) / 100, -2 );  // Fator -> Aliquota Interna: 18% = (100 - 18)/100 = 0,82
                            if bIsentarICMS then
                              rValorIcms:= 0 ;

                             wDifalSt := RoundTo( rBaseIcms - rValorIcms, -2 ) ; // 1000 - 40 = 960
                             wDifalST := RoundTo( wDifalST / wFator ); // 960 / 0,82 = 1170,73
                             rValorST := RoundTo( wDifalST * ( wUfAliqIcmsSubCli / 100 ), -2 ); // 1170,73 * 18% =210,43
                             //wDifalST - rValorIcms ; // 210,73 - 40 = 170,73
                             //wDifalSt := RoundTo( rValorST / rBaseIcms * 100, -2 ) ; // 170,73 / 1000 * 100 = 17,07
                        end
                        Else
                            rValorST := uteis.roundto( rBaseIcmsST * (wUfAliqIcmsSubCli/100), -2 );

                        if (rValorST > rValorIcms) then
                            rRetorno :=  uteis.roundto( rValorST - rValorIcms, -2);
                  end;

           end;

      end;

      Result := rRetorno;

end;

procedure TFrmPedidoItem.CurDescontoEnter(Sender: TObject);
begin
  inherited;
  wDescontoAnt :=   CurDesconto.Value;
end;

procedure TFrmPedidoItem.CurDescontoExit(Sender: tObject);
begin
   CalculaTotais;
   if (dbInicio.Empresa.bHabilitarTabelaPreco) then
   begin
     if CurPrecoLiquido.Value > 0  then
       cbTabelaPrecoMultiplo.EditValue :=   IntToStr(SetarTabelaPrecos);
   end;

   try
      if not  SameValue(wDescontoAnt,CurDesconto.Value) and (CurDesconto.Value > 0) then
        TestaPrecoAbaixoCusto ;
      ValidaDesconto;
   except
       TJvValidateEdit(Sender).Text := '0';
       TJvValidateEdit(Sender).setfocus;
   end;

end;

procedure TFrmPedidoItem.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  ChamaCredito(1,FrmPedido.SqlCdsPedidoREP_CODIGO.Value)
end;

procedure TFrmPedidoItem.SpeedButton2Click(Sender: tObject);
begin
     FrmCadastroTipoRetorno := TFrmCadastroTipoRetorno.Create(Application);
     try
        FrmCadastroTipoRetorno.ShowModal;
     finally
            FreeAndNil( FrmCadastroTipoRetorno );
     end;
end;

procedure TFrmPedidoItem.sbVoltarClick(Sender: TObject);
begin
  inherited;
  GbBusca.Show;
  pacoes.Visible := False;
  cbReferencia.idRetorno := '';
  cbReferencia.Enabled := True;
  cbReferencia.SetFocus;
end;
{
procedure TFrmPedidoItem.TestaDescontoUsuario;
var
  tcr : tFrmAutoriza;
begin
  validadesconto;
  exit;

  if (CurDesconto.Value > dbInicio.Empresa.DesctoMaximo_p) AND (dbInicio.Empresa.DesctoMaximo_p > 0) then
  begin
    fAutorizado := False;
    tcr := tFrmAutoriza.Create(self) ;
    try
      tcr.TipoValidacao := vPrecoAbaixoCusto;
      tcr.lbAviso.Caption := 'O desconto praticado foi de ' + FormatFloat('###.00', CurDesconto.Value) + '%, o maximo autorizado é de ' + FormatFloat('###.00', dbInicio.Empresa.DesctoMaximo_p) + '%';
      tcr.ShowModal;
      if tcr.modalresult<>mrOk then
      begin
         CurDesconto.Value := 0;
         GeraException('Não Autorizado!');
      end
      else
        fAutorizado := True;
    finally
      FreeAndNil( tcr ) ;
    end;

  end;


end;
                  }
procedure TFrmPedidoItem.TestaPrecoAbaixoCusto ;
var tcr : tFrmAutoriza;
    tab1 : Currency;
begin
     try
       if dbInicio.Empresa.bHabilitarTabelaPreco then
        tab1 :=  dbinicio.BuscaUmDadoSqlAsCurrency (' select prd_pvenda from tabelaprecos'+
                                                   ' where EMP_CODIGO = ' + QuotedStr(DBInicio.Empresa.EMP_CODIGO)+
                                                   ' and prd_codigo = '+QuotedStr(qAux.FieldByName('prd_codigo').AsString) +
                                                   ' and seq = 1' +
                                                   ' ORDER BY PRD_PVENDA ');


          // SE TIVER ABAIXO DO PREÇO DE CUSTO OU ABAIXO DO PREÇO DA TABELA 1 SE USA TABELA SIMPLES
      if (not dbInicio.empresa.pVENDA_ABAIXO_CUSTO) or  (CbItemAgregado.Checked  and not (DBInicio.Empresa.wPMT_ITENS_KIT)) then
        if (CurPrecoLiquido.value < dbInicio.BuscaUmDadoSqlAsCurrency(
                'select ' +
//                ' PRD_PCUSTO ' +
                  ' CASE ' +
                  '   WHEN (SELECT PRODUTO_PRECO_EMPRESA FROM SHAREDB) = ''E'' THEN (SELECT FIRST 1 PRD_PE_CUSTOCOMIPI FROM PRD0000_PRECO_EMPRESA ppe WHERE ppe.PRD_CODIGO = T1.PRD_CODIGO ORDER BY ppe.PRD_PE_DATA_ATUALIZACAO DESC) ' +
                  '     ELSE ' +
                  '         CASE ' +
                  '           WHEN (SELECT PMT_CALCULARPV  FROM PRMT0001 pmt WHERE pmt.EMP_CODIGO = T1.EMP_CODIGO ) = 0 THEN t1.PRD_PCUSTO ' +
                '             WHEN (SELECT PMT_CALCULARPV  FROM PRMT0001 pmt WHERE pmt.EMP_CODIGO = T1.EMP_CODIGO ) = 1 THEN t1.PRD_CUSTOCOMIPI ' +
                '             WHEN (SELECT PMT_CALCULARPV  FROM PRMT0001 pmt WHERE pmt.EMP_CODIGO = T1.EMP_CODIGO ) = 2 THEN t1.PRD_PMEDIO ' +
                    '       END ' +
                  ' END AS PRD_PCUSTO ' +
                ' from prd0000 t1 where prd_codigo='+qStr(cbReferencia.idRetorno))) OR
        ( dbInicio.Empresa.bHabilitarTabelaPreco and (CurPrecoLiquido.value < tab1))  then
          if (dbinicio.empresa.pVENDA_ABAIXO_CUSTO) then
          begin
            fAutorizado := True;
          end
          else
          begin
             if fAutorizado = False then
               begin
               tcr := tFrmAutoriza.Create(self) ;
                 try
                    tcr.TipoValidacao := vPrecoAbaixoCusto;
                    tcr.lbAviso.Caption := 'Preço de venda informado é menor que o valor de custo ou abaixo da 1a tabela !';
                    tcr.ShowModal;
                    if tcr.modalresult<>mrOk then
                    begin
                       // Self.Close;
                       CurDesconto.Value := 0;
                       GeraException('Não Autorizado!');
                    end
                    else
                       fAutorizado := True;
                 finally
                        FreeAndNil( tcr ) ;
                 end;
               end;
          end;

		 except
					 raise;
		 end;
end;

function TFrmPedidoItem.TipoAtualizaEstoque(const prd_refer: string): boolean;
begin
  OpenAux3 ( 'Select COALESCE(PT1.PTI_ATUALIZAR_ESTOQUE,''S'') AS PTI_ATUALIZAR_ESTOQUE from PRD0000 PR1 '+
             '  left join PRD_TIPO PT1 ON PR1.PTI_CODIGO = PT1.PTI_CODIGO '+
             ' where PR1.PRD_REFER = '+QuotedStr(prd_refer)+ConcatSe( '  and PR1.', dbInicio.exclusivoSql( 'PRODUTOS' ) ) );

 // atualiza estoque TIPO S/N
  Result := qAux3.FieldByName('PTI_ATUALIZAR_ESTOQUE').AsString = 'S';
end;

procedure TFrmPedidoItem.AtualizaGradeInfo;
begin
     if Not fLendo then
     begin
         lblMedida1.Caption := '';
         lblMedida2.Caption := '';
         lblMedida3.Caption := '';
         lblPrecoMedida.Caption := '0,00';


         DataCadastros.sqlUpdate.Close;
         if (CbGrade.IdRetorno <> '') then
         begin
               DataCadastros.SqlUpdate.sql.text :=SQLDEF('TABELAS','SELECT * FROM prd_grade T1 ','WHERE T1.prg_registro = '+QuotedStr(CbGrade.IdRetorno),'','t1.');
               DataCadastros.sqlUpdate.Open;
               if (not DataCadastros.sqlUpdate.IsEmpty) then
                  begin
                     lblMedida1.Caption := DataCadastros.sqlUpdate.FieldByName('PRG_MEDIDA_1').AsString;
                     lblMedida2.Caption := DataCadastros.sqlUpdate.FieldByName('PRG_MEDIDA_2').AsString;
                     lblMedida3.Caption := DataCadastros.sqlUpdate.FieldByName('PRG_MEDIDA_3').AsString;
                     lblPrecoMedida.Caption := FormatFloat('###,###,###,##0.00',DataCadastros.sqlUpdate.FieldByName('PRG_PRECO').AsFloat);
                     CurPrecoBruto.Value := DataCadastros.sqlUpdate.FieldByName('PRG_PRECO').AsCurrency ;
                     if CurPrecoBruto.Value = 0 then  // se preço da grade for zero, busca preço padrão
                        CurPrecoBruto.Value := BuscaPrecoVenda(cbReferencia.CdS.FieldByName('PRD_CODIGO').AsString);
                     if (DataCadastros.sqlUpdate.FieldByName('PRG_MEDIDA_1').AsFloat > 0)  and
                        (DataCadastros.sqlUpdate.FieldByName('PRG_MEDIDA_2').AsFloat>0) and
                        (DataCadastros.sqlUpdate.FieldByName('PRG_MEDIDA_3').AsFloat>0) and
                        (qAux.FieldByName('PRD_FATOR_PROD').AsFloat > 0)      then
                       CurrPesoIndividual.Value := roundTo((DataCadastros.sqlUpdate.FieldByName('PRG_MEDIDA_1').AsFloat /1000) *  (DataCadastros.sqlUpdate.FieldByName('PRG_MEDIDA_2').AsFloat/1000) *
                                     DataCadastros.sqlUpdate.FieldByName('PRG_MEDIDA_3').AsFloat  * qAux.FieldByName('PRD_FATOR_PROD').AsFloat, -2);

                    if (CurrPesoIndividual.Value >0 ) and  (CurQuantidade.Value >0) then
                       CurrPesoKG.Value :=   CurrPesoIndividual.Value *  CurQuantidade.Value;

                    prdCoCodigoOriginal := cbReferencia.idRetorno + IntToStr(Trunc(DataCadastros.sqlUpdate.FieldByName('PRG_MEDIDA_1').AsFloat * 10)) + IntToStr(Trunc(DataCadastros.sqlUpdate.FieldByName('PRG_MEDIDA_2').AsFloat)) + IntToStr(Trunc(DataCadastros.sqlUpdate.FieldByName('PRG_MEDIDA_1').AsFloat * 1000))  + cbCor.idRetorno;
                    pUltimoPreco.Caption := '';
                    if FrmPedido.edCliente.CdS.Active then
                        OpenAux2('SELECT FIRST 1 PED_DTENTRADA, PRF_PRECO, prf_qtde ' +
                              ' FROM PED_IT01 it ' +
                              '	JOIN PED0000 p ON (p.PED_CODIGO = IT.PED_CODIGO AND IT.EMP_CODIGO = P.EMP_CODIGO)'+
                              ' JOIN NF0001 n ON (n.PED_CODIGO = p.PED_CODIGO) ' +
                              ' JOIN NF_IT01 ni ON (ni.NF_IT_NOTANUMER = n.NF_NOTANUMBER) ' +
                              ' JOIN PRD_GRADE T3 ON (T3.PRG_REGISTRO = ni.PRG_REGISTRO) ' +
                              ' WHERE it.PRD_CODIGO  =  ' + qStr( cbReferencia.idRetorno)+
                              ' AND P.EMP_CODIGO = '+QuotedStr (DBInicio.Empresa.EMP_CODIGO) +
                              '	AND P.CLI_CODIGO = ' +QuotedStr(FrmPedido.edCliente.CdS.FieldByName('CLI_CODIGO').AsString) +
                              ' AND T3.PRG_REGISTRO = ' + CbGrade.idRetorno +
                              ' AND PED_SITUACAO NOT IN (''F'',''C'') ' +
                              '	AND PRF_QTDEFAT > 0 '+
                              ' ORDER BY P.PED_DTENTRADA DESC '
                              );
                     if not qAux2.IsEmpty then
                     begin
                       pUltimoPreco.Caption  := 'Último preço : '+ FormatFloat('R$ #,###0.00', qaux2.FieldByName('PRF_PRECO').AsFloat) +' - ' +
                                                 ' Data : '+ DateToStr(qaux2.FieldByName('PED_DTENTRADA').AsDateTime) + '-'+
                                                 ' Qtde : '+ FloatToStr(qaux2.FieldByName('prf_qtde').AsFloat) ;
                     end
                     else
                     if FrmPedido.edCliente.CdS.Active then
                       pUltimoPreco.Caption := 'Sem vendas faturadas para esta grade.' ;
                  end;
               DataCadastros.sqlUpdate.Close;
         end;
     end
     else
       CurrPesoIndividual.Value := frmPedido.SqlCdsPedidoItemPRF_PESOKG.Asfloat ;

end;

procedure TFrmPedidoItem.AtualizaoTotaisItens;
var cdsclone : TClientDataSet;
 valor : Currency;
 valortotal: Currency;
begin
	inherited;
	cdsclone:= TClientDataSet.Create(self);
	try
	 cdsclone.CloneCursor(cdsItemGrade,true);
	 cdsclone.LogChanges := False;
	 cdsclone.First;
	 while not cdsclone.Eof do
	 begin
		// valor total
		if cdsclone.State in [dsBrowse] then
			cdsclone.Edit;

		if not((cdsclone.FieldByName('PRG_QTDE').AsBCD = 0)  and  (cdsclone.FieldByName('PRECO_LIQU').AsBCD = 0  )) then
			 cdsclone.FieldByName('Vlr_Total').Value :=  cdsclone.FieldByName('PRECO_LIQU').Value * cdsclone.FieldByName('PRG_QTDE').Value
		else
			cdsclone.FieldByName('Vlr_Total').AsBCD := 0;

		if cdsclone.FieldByName('PRG_QTDE').value > 0 then
		begin
			 valor := valor + cdsclone.FieldByName('PRG_QTDE').Value;
			 valortotal := valortotal + cdsclone.FieldByName('VLR_TOTAL').Value
		end;

  	cdsclone.Post;
		cdsclone.Next;
   end;
  finally
	 FreeAndNil(cdsclone);
  end;
  totalGrade.Value := valor;
  ptotal.Value := valortotal;
end;

procedure TFrmPedidoItem.CalculaIndiceDesconto;
begin
   //Calcula Indice do Desconto
   //rIndiceDesconto := 0;
   rIndiceDesconto := (100 - CurDesconto.Value);
   rIndiceDesconto := (rIndiceDesconto - (( rIndiceDesconto * CurDescontoAdicional.Value ) / 100));

   {mostra o resultado}
   rIndiceDesconto := (100 - rIndiceDesconto );
end;

procedure TFrmPedidoItem.Focar;
begin
  pInfoProduto.Show;
  if DBINICIO.Empresa.bPMT_HABILITA_MEDIDAPRD then
    GbBusca.Show
  else
    GbBusca.Hide;
  pacoes.Visible := not Pesquisa;
  btnCodOriginal.Visible := true;
  if pgcPrincipal.ActivePage = tssemGrade then
  begin
   if cbGrade.Visible then
      cbGrade.SetFocus
   Else
   if pnLoteProduto.Visible then
   begin
   //  if cbLoteProduto.Visible then
     if cbLoteProduto.CanFocus then
      cbLoteProduto.SetFocus
   end
   Else

   if pnDirect.Visible then
      CbDiretiva.SetFocus
   Else
   BEGIN
     pgc2.ActivePageIndex := 0; //    tsInfoLancamento.
     CurQuantidade.SetFocus;
   END
  end
  else
      dbgLancarinfo.SetFocus;
end;

procedure TFrmPedidoItem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EsvaziaBuffer;
  inherited;
  if frmPedido = nil then
    exit;
  FrmPedido.wAdcProdKit := false;
  FrmPedido.WDiretivaKit := 0;
  VariosLote := varNull;
end;

procedure TFrmPedidoItem.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  EsvaziaBuffer;
  CanClose := True;
  inherited;

end;

procedure TFrmPedidoItem.FormCreate(Sender: tObject);
var vCasas: Integer;
begin
   inherited;
   fPesquisa :=False;
   AlterouTabelaPrecos :=True;
   EntrouTabelaPrecos :=True;
   SalvaStatusGrid := False;
   LeEstadoPesquisa := DBInicio.Empresa.wPMT_MEM_PESQPED;
   SalvaEstadoPesquisa := DBInicio.Empresa.wPMT_MEM_PESQPED;
   cbReferencia.SelectWithDoubleClick:=True;
   cbDescricao.SelectWithDoubleClick:=True;
   cbBarras.SelectWithDoubleClick:=True;
   cbCodigos.SelectWithDoubleClick:=True;
   cbEndereco.SelectWithDoubleClick:=True;
   pacoes.Visible := False;
   pvFlgProcSelect:=False;

   cbReferencia.GridWidth:=951;
   cbReferencia.GridHeight:=900;
   cbReferencia.GridShowWhenEnter:=True;
   cbDescricao.GridLeft:=cbReferencia.Left;
   cbDescricao.GridWidth:=951;
   cbDescricao.GridHeight:=490;

   cbdescricao.LimparCampoAoSair := False;
   EdVariacao.Text := FloatToStr( dbinicio.Empresa.wPMT_VARPERC_MEDIDA_PRODUTO); ;
   if DBInicio.Empresa.bPMT_HABILITA_MEDIDAPRD then
   begin
      cbdescricao.LimparCampoAoSair := False;
      cbDescricao.GridTop:= 42;
   end;
   cbDescricao.GridShowWhenEnter:=True;
   cbMedInterno.GridLeft:= cbReferencia.Left;
   cbMedInterno.GridWidth:=951;
   cbMedInterno.GridHeight:=690;    //490
   cbMedInterno.LimparCampoAoSair := False;
   cbMedInterno.GridShowWhenEnter := True;

   cbMedExterno.GridLeft:= cbReferencia.Left;
   cbMedExterno.GridWidth:=951;
   cbMedExterno.GridHeight:=490;
   cbMedExterno.LimparCampoAoSair := False;
   cbMedExterno.GridShowWhenEnter := True;

   cbMedAltura1.GridLeft:= cbReferencia.Left;
   cbMedAltura1.GridWidth:=951;
   cbMedAltura1.GridHeight:=490;
   cbMedAltura1.LimparCampoAoSair := False;
   cbMedAltura1.GridShowWhenEnter := True;

   cbMedAltura2.GridLeft:= cbReferencia.Left;
   cbMedAltura2.GridWidth:=951;
   cbMedAltura2.GridHeight:=490;
   cbMedAltura2.LimparCampoAoSair := False;
   cbMedAltura2.GridShowWhenEnter := True;

   cbBarras.GridLeft:=cbReferencia.Left;
   cbBarras.GridWidth:=951;
   cbBarras.GridHeight:=900;
   cbBarras.GridShowWhenEnter:=True;
   cbCodigos.GridLeft:=cbReferencia.Left;
   cbCodigos.GridWidth:=951;
   cbCodigos.GridHeight:=900;
   cbCodigos.GridShowWhenEnter:=True;
   try
     if FrmPedido.edCliente.idRetorno <> '' then
      cbCodigos.FiltroTabela := 'PRD_STATUS = '+qStr('A')+' and (t5.cli_codigo = '+qStr( FrmPedido.edCliente.idRetorno )+' or t5.cli_codigo is null )';
   except
      cbCodigos.FiltroTabela := 'PRD_STATUS = '+qStr('A') ;
   end;
   cbEndereco.GridLeft:=cbReferencia.Left;
   cbEndereco.GridWidth:=951;
   cbEndereco.GridHeight:=900;
   cbEndereco.GridShowWhenEnter:=True;

   EdReferenciaOriginal.Clear;

   if (not dbInicio.Empresa.bAlteraDescricaodoItem) then
   begin
        MemoDescricao.ReadOnly := True;
        MemoDescricao.TabStop := False;
        MemoDescricao.Color := $00d7d7d7;
   end;
   if (dbInicio.Empresa.wPMT_COMP_ITEM_PEDIDO) then
   begin
        MemoComplemento.ReadOnly := True;
        MemoComplemento.TabStop := False;
        MemoComplemento.Color := $00d7d7d7;
   end;

   fLendo := False;

   Self.height:=682;
   Self.Width:=1003;
   Self.Constraints.MinHeight := 682;
   Self.Constraints.MinWidth := 1003;

   fAutorizado:=False;

   pgc2.ActivePageIndex:=0;

//     grpTipoInd.Left := 72;
//     grpB2B.Left:=72;
   grpB2B.Top:=241;
   grpTipoInd.Top := 282;


   if dbInicio.Empresa.bDiretivaObrigatoria then
   begin
        if dbInicio.Empresa.bDiretivaObrigatoriaAba then
           wbDiretivaObrigatoria:=2    // aba
        Else
           wbDiretivaObrigatoria:=1;   // simples
   end
   else
       wbDiretivaObrigatoria:=0; // sem diretivas

   if ( dbInicio.Empresa.fPMT_MULTTAB='S' ) then
   begin
        gbSaldoEstoque.Height:=167;
        gbPrecos.Visible := True ;
        InicializaTabelasPrecos;
   end
   Else
   begin
        gbSaldoEstoque.Height:=299;
        gbPrecos.Visible := False;
   end;

   cbFiltroPreco.Visible :=  dbInicio.Empresa.fPMT_MULTTAB='S';

   vCasas := dbInicio.Empresa.fPMT_QTDE_DEC_PED;
   if vCasas<2 then
      vCasas:=2;
//   vDisp := 'R$ ,0.'+StrZero( '',vCasas );
//   vDisp := vDisp+'; -'+vDisp;
//   edPreco.DisplayFormat:=vDisp;
   edPreco.DecimalPlaces:=vCasas;
//   edPreTab.DisplayFormat:=vDisp;
   edPreTab.DecimalPlaces:=vCasas;
//   edPrePromo.DisplayFormat:=vDisp;
   edPrePromo.DecimalPlaces:=vCasas;
//   edPreEspe.DisplayFormat:=vDisp;
   edPreEspe.DecimalPlaces:=vCasas;
//   CurPrecoBruto.DisplayFormat:=vDisp;
   CurPrecoBruto.DecimalPlaces:=vCasas;
//   CurPrecoLiquido.DisplayFormat:=vDisp;
   CurPrecoLiquido.DecimalPlaces:=vCasas;

   vMascPVenda := '###,##0.'+StrZero( '',vCasas );
   qItensPRD_PVENDA.DisplayFormat := vMascPVenda;

   fLendo:=True;
   cbFiltroPrecoClick(nil);
   fLendo:=False;
   pInfoProduto.Hide;
   btnCodOriginal.Visible := False;
   bprazoitens := DBInicio.Empresa.bPMT_PRAZO_ITEM;
    self.Constraints.MaxHeight:=0;
    self.Constraints.MaxWidth:=0;

end;

procedure TFrmPedidoItem.FormResize(Sender: TObject);
var diffHeight, diffWidth : Integer;
begin
   inherited;
   diffHeight := self.Height- Self.Constraints.MinHeight;
   diffWidth := self.Width- Self.Constraints.MinWidth;
   cbReferencia.GridWidth:=951 +diffWidth;
   cbReferencia.GridHeight:=520+diffHeight;
   cbReferencia.Resize;

   cbDescricao.GridWidth:=951+diffWidth;
   cbDescricao.GridHeight:=490+diffHeight;
   cbDescricao.Resize;

   cbMedInterno.GridWidth:=951+diffWidth;
   cbMedInterno.GridHeight:=490+diffHeight;
   cbMedInterno.Resize;

   cbMedExterno.GridWidth:=951+diffWidth;
   cbMedExterno.GridHeight:=490+diffHeight;
   cbMedExterno.Resize;

   cbMedAltura1.GridWidth:=951+diffWidth;
   cbMedAltura1.GridHeight:=490+diffHeight;
   cbMedAltura1.Resize;

   cbMedAltura2.GridWidth:=951+diffWidth;
   cbMedAltura2.GridHeight:=490+diffHeight;
   cbMedAltura2.Resize;

   cbBarras.GridWidth:=951+diffWidth;
   cbBarras.GridHeight:=490+diffHeight;
   cbBarras.Resize;

   cbCodigos.GridWidth:=951+diffWidth;
   cbCodigos.GridHeight:=490+diffHeight;
   cbcodigos.Resize;

   cbEndereco.GridWidth:=951+diffWidth;
   cbEndereco.GridHeight:=490+diffHeight;
   cbEndereco.Resize;

end;

procedure TFrmPedidoItem.Button1Click(Sender: tObject);
var tcr: tFrmDiretivasItem;
begin
 tcr:=tFrmDiretivasItem.create(Self);
 try
   tcr.edPRF_REGISTRO.text := IntToStr(wID_DIRETIVAS);
   tcr.tsnotas.caption := 'Diretivas para o Item: '+EdReferencia.text;
   tcr.showmodal;
 finally
   FreeAndNil(tcr);
 end;
end;

procedure TFrmPedidoItem.Button2Click(Sender: TObject);
begin
  inherited;

  if CurUsarValor.Value> 0 then
  begin
    if (CurUsarValor.Value * CurQuantidade.Value) > CurPossivel.value then
    begin
      Application.MessageBox('Não é possível utilizar esse valor!','Adjutor',MB_ICONERROR);
      CurUsarValor.SetFocus;
      Exit;
    end;
   rValorVerba := CurUsarValor.Value * CurQuantidade.Value;
   CurDesconto.Value := (rValorVerba / CurTotal.Value) * 100;
   bUsouVerba := true;
   CurDescontoExit(Self);
  end;

  if CurUsarPerc.Value> 0 then
  begin
    if ((CurTotal.Value /100) * CurUsarPerc.Value) > CurPossivel.value then
    begin
      Application.MessageBox('Não é possível utilizar esse valor!','Adjutor',MB_ICONERROR);
      CurUsarPerc.SetFocus;
      Exit;
    end;
   rValorVerba := (CurTotal.Value /100) * CurUsarPerc.Value;
   CurDesconto.Value := (rValorVerba / CurTotal.Value) * 100;
   bUsouVerba := true;
   CurDescontoExit(Self);
  end;
  //RateioVerba(rValorVerba,FrmPedido.SqlCdsPedidoREP_CODIGO.Value);
 // CurDesconto.Value := rValorVerba;

  AnimateWindow(pnVerba.Handle, 500, AW_HOR_NEGATIVE or  AW_HIDE);
  pnVerba.Visible := false;
end;

procedure TFrmPedidoItem.Button3Click(Sender: TObject);
begin
  inherited;
  AnimateWindow(pnVerba.Handle, 500, AW_HOR_NEGATIVE or  AW_HIDE);
  pnVerba.Visible := false;
end;

procedure TFrmPedidoItem.RxDBGrid1DrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if Column.FieldName = 'PDI_REGISTRO' then
     begin
          RxDbGRid1.Canvas.FillRect(Rect);
          if (Column.Field.IsNull) then
             imgListDiretivas.Draw(RxDbGRid1.Canvas,Rect.Left+03,Rect.Top+1,0)
          else
             imgListDiretivas.Draw(RxDbGRid1.Canvas,Rect.Left+03,Rect.Top+1,1);
     end;
end;

procedure TFrmPedidoItem.RxDBGrid1DblClick(Sender: tObject);
begin
     CdsDiretivasMemo.Edit;

     if CdsDiretivasMemoPDI_REGISTRO.IsNull then
     begin
          CdsDiretivasMemoPDI_REGISTRO.AsInteger:= dbInicio.GetNextSequence('GEN_PRD_DIRETIVA_ITEM_ID');
          DBInicio.ExecSql( 'insert into prd_diretiva_item ( PDI_REGISTRO, PRF_REGISTRO, PRDD_REGISTRO) '+
                            'values ( '+CdsDiretivasMemoPDI_REGISTRO.AsString+', '+inttostr( wID_DIRETIVAS )+', '+CdsDiretivasMemoPRDD_REGISTRO.AsString+' )' );
     end
     Else
     begin
          DBInicio.ExecSql( 'Delete from prd_diretiva_item where PDI_REGISTRO='+CdsDiretivasMemoPDI_REGISTRO.asString );
          CdsDiretivasMemoPDI_REGISTRO.Clear;
     end;

     CdsDiretivasMemo.Post;
end;

procedure TFrmPedidoItem.pgc2Change(Sender: tObject);
var x: Integer;
    qry: tSqlQuery;
    ShareStr: string;
begin
     if pgc2.ActivePage=tsDiretivas then
     begin
          ShareStr:='';
          if not DBInicio.Sharedb.Tabelas then // exclusivo
             ShareStr := 'B.EMP_CODIGO='+qStr(DBINICIO.Empresa.EMP_CODIGO)+' and';



          if dbInicio.BuscaUmDadoSqlasInteger('Select cast(count(*) as integer) as conta from    PRD_DIRETIVA B WHERE '+ShareStr+' 1=1')=0 then
          begin
               wbDiretivaObrigatoria:=0; // nenhuma cadastrada ;
               RxDBGrid1.Visible:=False;
               Panel3.Caption := 'Não existem diretivas cadastradas para a empresa selecionada!';
               Panel3.Align := alClient;
          end
          Else
          if not CdsDiretivasMemo.active then
          begin
               qry := tSqlQuery.Create(Nil);
               try
                  qry.SqlConnection:= DataCadastros.SQLConnection1;
                  qry.SQL.Add('Select B.emp_codigo,');     //cod emp
                  qry.SQL.Add('       B.prdd_registro,');  // id diretiva
                  qry.SQL.Add('       B.prdd_descricao,'); // desc diretva
                  qry.SQL.Add('       A.pdi_registro,');   // Id diretiva item
                  qry.SQL.Add('       A.prf_registro');    // ID_DIRETIVAS (ref.pedido)
                  qry.SQL.Add('from PRD_DIRETIVA B');
                  qry.SQL.Add('     LEFT JOIN PRD_DIRETIVA_ITEM A ON A.prf_registro='+IntToStr(wID_DIRETIVAS)+' and A.prdd_registro=B.prdd_registro');
                  qry.SQL.Add('Where '+ShareStr+' B.prdd_ativo='+qStr('S'));
                  qry.SQL.Add('ORDER BY B.prdd_descricao');
                  if DelphiAberto then
                     CopyToClipBoard( qry.Sql.Text );
                  qry.Open;

                  CdsDiretivasMemo.CreateDataSet;
                  CdsDiretivasMemo.Open;
                  CdsDiretivasMemo.EmptyDataSet;

                  while not qry.Eof do
                  begin
                       CdsDiretivasMemo.Append;
                       for x := 0 to 4 do
                           CdsDiretivasMemo.FieldByName( qry.fields[x].FieldName ).value := qry.fields[x].value;
                       CdsDiretivasMemo.Post;
                       qry.Next;
                  end;

                  CdsDiretivasMemo.First;

               Finally
                      qry.Close;
                      FreeAndNil(qry);
               end;

          end;
     end;

end;

procedure TFrmPedidoItem.pgcPrincipalChanging(Sender: TObject; var AllowChange: Boolean);
begin
  inherited;
  AllowChange:= True;
end;

procedure TFrmPedidoItem.pnVerbaExit(Sender: TObject);
begin
  inherited;
  Button3.Click;
end;

procedure TFrmPedidoItem.PRF_PRAZO_ENTREGAExit(Sender: TObject);
begin
  inherited;
  edPrazo.Value := Round(PRF_PRAZO_ENTREGA.Date - now);
end;

procedure TFrmPedidoItem.qItensAfterScroll(DataSet: TDataSet);
begin
     inherited;
//     AtualizaSaldoAlmox( DataSet.FieldByName('PRD_CODIGO').AsString, cbAlmoxarifado.idRetorno );
end;

procedure TFrmPedidoItem.AtualizaSaldoAlmox( const pPrdCodigo, pAmxCodigo: string );
begin
  CurSaldo.Value := 0;
  CurTotalEstoqueEmpresa.Clear;
  if (pPrdCodigo<> '') and (pAmxCodigo<> '') then
  begin
     // mostrar saldos dos itens do kit quando o estoque for controlado pelo itens do kits
  //         if (qAux.fieldByName('PTI_SIGLA').AsString = 'KT')  and  not (DBInicio.Empresa.wPMT_CONTROLA_KIT) then


       CurSaldo.Value := KardexRetornaSaldo(pPrdCodigo, pAmxCodigo,'');
       CurTotalEstoqueEmpresa.Value := BuscaUmDadoSqlasFloat ( 'SELECT SUM(kas_saldo) '+
                                                              'FROM kardex_almox_saldo '+
                                                              'WHERE prd_codigo = '+qStr(pPrdCodigo)+
                                                              ConcatSe (' and ',dbInicio.ExclusivoSql('ESTOQUES') ) );
       CdsSaldos.close;
       qSaldos.Sql.Clear;
       qSaldos.Sql.add('SELECT T1.emp_codigo, T3.amx_codigo, ');
       qSaldos.Sql.add(' (SUBSTRING( T2.EMP_FANTASIA FROM 1 FOR POSITION('' '' IN T2.EMP_FANTASIA)) || ''-''||');
       qSaldos.Sql.add(' SUBSTRING(T3.AMX_DESCRI FROM 1 FOR 25) ) emp_razao,');
       qSaldos.Sql.add(' SUM(T1.kas_saldo) AS SALDO');
       qSaldos.Sql.add(' FROM   kardex_almox_saldo T1');
       qSaldos.Sql.add('  JOIN emp0000 T2 ON (T2.emp_codigo = T1.emp_codigo)');
       qSaldos.Sql.add('  JOIN ALMOX0000 t3 ON (T1.AMX_CODIGO = T3.AMX_CODIGO) ');
       qSaldos.Sql.add(' WHERE T1.prd_codigo = '+qStr(pPrdCodigo));
       if dbInicio.Exclusivo('ESTOQUES') then
         qSaldos.Sql.add(' AND T1.EMP_CODIGO = ' + qStr(DBInicio.Empresa.EMP_CODIGO));
       qSaldos.Sql.add(' GROUP BY T1.emp_codigo, 2,3');
       if DBInicio.IsDesenvolvimento then
         CopyToClipboard(qSaldos.Sql.Text);
       CdsSaldos.Open;
  End;
end;


procedure TFrmPedidoItem.qItensPRD_PVENDAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
var sProduto, sTipoVenda: string;
    vPreTab, vPrePromo, vPreEspe, vPreco: currency ;
begin
     if ( dbInicio.empresa.fPMT_MULTTAB='S' ) then
     begin
          if cbFiltroPreco.Checked then
             Text := FormatFloat( vMascPVenda , Sender.AsCurrency )+' (EXC)'
          Else
          Begin
                if cbReferencia.CdS.active then
                begin
                  sProduto := qstr( cbReferencia.CdS.fieldByName('PRD_CODIGO').asstring );
                  OpenQueryPrecos( sProduto );

                  if qPrecos.fields[1].AsCurrency>0 then
                  begin
                       vPreTab := qPrecos.fields[1].AsCurrency;
                       sTipoVenda := 'ALT';
                  end
                  Else
                  begin
                       vPreTab := qPrecos.fields[0].AsCurrency;
                       sTipoVenda := 'PAD';
                  end;

                  vPrePromo := qPrecos.fields[2].AsCurrency;
                  vPreEspe := qPrecos.fields[3].AsCurrency;

                  if vPreEspe<>0 then // preço especial
                  begin
                       vPreco := vPreEspe;
                       sTipoVenda:='EXC';
                  end
                  Else
                  if vPrePromo>0 then // preço promo
                  begin
                     vPreco := vPrePromo;
                     sTipoVenda := 'PRO';
                  end
                  else
                     vPreco := vPreTab;

                  if vPreco > 0 then
                     Text := FormatFloat( vMascPVenda ,vPreco)+' ('+sTipoVenda+')'
                  Else
                  begin
                     vPreco := BuscaUmDadoSqlAsFloat('SELECT PRD_PVENDA  FROM PRD0000 p WHERE PRD_CODIGO = ' + sProduto);
                     sTipoVenda := 'CAD';
                     Text := FormatFloat( vMascPVenda ,vPreco)+' ('+sTipoVenda+')';
                  end;
                end;

          End;

     end
     else
     if DBInicio.Exclusivo( 'PRODUTO_PRECO_EMPRESA' )  then
     begin
       if cbReferencia.CdS.active then
         sProduto := cbReferencia.CdS.fieldByName('PRD_CODIGO').asstring
       else
       if cbDescricao.CdS.active then
         sProduto := cbDescricao.CdS.fieldByName('PRD_CODIGO').asstring
       else
       if cbBarras.CdS.active then
         sProduto := cbBarras.CdS.fieldByName('PRD_CODIGO').asstring
       else
       if cbCodigos.CdS.active then
         sProduto := cbCodigos.CdS.fieldByName('PRD_CODIGO').asstring
       else
       if cbEndereco.CdS.active then
         sProduto := cbEndereco.CdS.fieldByName('PRD_CODIGO').asstring;
       Text := FormatFloat( vMascPVenda , BuscaPrecoVenda(sProduto) );
     end
     Else
         Text := FormatFloat( vMascPVenda , Sender.AsCurrency );
end;

procedure TFrmPedidoItem.qLoteProdutoPRDL_LOTEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := Sender.Asstring.trim ; //+' - Validade: '+CbLoteProduto.CdS.fieldByName( 'PRDL_DATA_VALIDADE').asstring;

end;

procedure TFrmPedidoItem.btnDiretivaClick(Sender: tObject);
begin
     FormDiretiva := TFormDiretiva.Create(Application);
     try
        FormDiretiva.ShowModal;
     finally
            FreeAndNil(FormDiretiva);
     end;
end;

procedure TFrmPedidoItem.InicializaTabelasPrecos;
var lSqlExc, lDataHoje : string ;
begin
     fLendo := True ;
     try
        lSqlExc:='';
        if dbInicio.Exclusivo('CLIENTES') Then
           lSqlExc:=' EMP_CODIGO='+qStr(dbInicio.Empresa.EMP_CODIGO)+' and ';
        lDataHoje := DateToSQL(date);
        lTabPrinc := DBInicio.BuscaUmDadoSqlAsInteger('SELECT MIN(PRE_ID) FROM PRECOS0000 WHERE '+lSqlExc+' pre_tipo_tabela=0');
        lTabSec := DBInicio.BuscaUmDadoSqlAsInteger('select pre_id from cli0000 where CLI_CODIGO = '+qStr(FrmPedido.EdClienteCodigo.Text) );
        lTabPromo := DBInicio.BuscaUmDadoSqlAsInteger( 'SELECT MIN(PRE_ID) FROM PRECOS0000 WHERE '+lSqlExc+' pre_tipo_tabela=2 '+
                                                       'and ( pre_vigencia1 is null or pre_vigencia1<='+lDataHoje+' ) '+
                                                       'and ( pre_vigencia2 is null or pre_vigencia2>='+lDataHoje+')' );
        lTabEspe :=  DBInicio.BuscaUmDadoSqlAsInteger('SELECT MIN(PRE_ID) FROM PRECOS0000 WHERE '+lSqlExc+' CLI_CODIGO='+qStr(FrmPedido.EdClienteCodigo.Text) );
        if lTabEspe>0 then
           cbFiltroPreco.Checked :=  (sTipo <> 'I');
     finally
            fLendo := False;
     end;


end;

procedure TFrmPedidoItem.cbEnderecoClick(Sender: TObject);
begin
  inherited;
  cbReferencia.CdS.active := False;
  cbDescricao.CdS.active := False;
  cbBarras.CdS.active := False;
  cbCodigos.CdS.active := False;
  cbEndereco.CdS.active := True;
end;

procedure TFrmPedidoItem.cbFiltroPrecoClick(Sender: TObject);
VAR lCampoTabela:String;
    cliente : string;
begin
   CbReferencia.LookupTableShare := 'PRODUTOS';
     inherited;
     try
       cliente := FrmPedido.edCliente.idRetorno
     except
       cliente := '00000';
     end;
     if cbFiltroPreco.Checked then
     begin
          CbReferencia.LookupDbGridColumns:= 'PRD_PRODSERV, PRD_REFER, PRD_DESCRI, PRD_UND, Estoque, PRD_PVENDA, PRD_EMBALA, LIN_DESCRI,  PRDCO_CODIGO_ORIGINAL ,PRD_CODBARRA';
          cbReferencia.LookupDbGridColumnsTitle := 'P/S, Referência, Descrição, Unid., Estoque, Preço, Embalagem, Linha/Marca, Cód.Cliente,Cód.Barras';

          CbReferencia.LookupSelect:='PD.PRD_EMBALA, PD.PRD_CODIGO, PD.PRD_REFER, PD.PRD_DESCRI, PD.PRD_CODBARRA, PD.PRD_PRODSERV, PD.PRD_UND, T2.LIN_DESCRI, '+
                                      '( SELECT SUM(kas_saldo) '+
                                      ' FROM kardex_almox_saldo '+
                                       'WHERE prd_codigo = pd.prd_codigo '+
                                      ConcatSe (' and ',dbInicio.ExclusivoSql('ESTOQUES') )+') Estoque, '+

                                     // PRD_PVENDA
                                     ' CASE WHEN PRD_INICIOOFERTA <= CURRENT_DATE AND PRD_FIMOFERTA>= CURRENT_DATE AND PRD_PRECOOFERTA >0 THEN PRD_PRECOOFERTA else PR.pre_preco end AS PRD_PVENDA, ' +

                                     ' PD.PRD_EMBALA,'+
                                     ' 0.00 AS PRD_PVENDA2, 0.00 AS PRD_PVENDA3, 0.00 AS PRD_PVENDA4, 0.00 AS PRD_PVENDA5, 0.00 AS PRD_PVENDA6, '+
                                     '  ( SELECT FIRST 1 pc.PRDCO_CODIGO_ORIGINAL FROM PRD_CODIGOORIGINAL pc WHERE pc.PRD_CODIGO = pd.PRD_CODIGO  and pc.cli_codigo = '+qStr(cliente)+' ) PRDCO_CODIGO_ORIGINAL , '+
                                     ' interno, externo, altura1, altura2';
          // CbReferencia.LookupTable:= 'prd0000 PD inner JOIN PRD_TIPO pt ON (pd.PTI_CODIGO = pt.PTI_CODIGO AND pti_disponivel_vendas = ''S'')'+
          CbReferencia.LookupTable:= 'prd0000 PD ' +
                                     '  inner JOIN PRD_TIPO pt ON (pd.PTI_CODIGO = pt.PTI_CODIGO and pt.PTI_DISPONIVEL_VENDAS = ''S'' )'+
                                     ' left join PRD_LINHA T2 on (T2.LIN_CODIGO = PD.LIN_CODIGO) '+
                                     ' Join precos0000 TB on TB.cli_codigo = '+qStr(cliente)+
                                     ' Join precos0001 PR on PR.PRE_ID=TB.PRE_ID AND PR.PRD_CODIGO=PD.PRD_CODIGO ';
                                 //    ' left join PRD_CODIGOORIGINAL T5 on (T5.PRD_CODIGO = PD.PRD_CODIGO;


          cbCodigos.LookupSelect:= 'distinct PD.PRD_EMBALA, PD.PRD_CODIGO, PD.PRD_REFER, PD.PRD_DESCRI, PD.PRD_CODBARRA, PD.PRD_PRODSERV, PD.PRD_UND, T3.PRDC_REFERENCIA , t5.PRDCO_CODIGO_ORIGINAL, '+
                                   // PRD_PVENDA
                                   ' CASE WHEN PRD_INICIOOFERTA <= CURRENT_DATE AND PRD_FIMOFERTA>= CURRENT_DATE AND PRD_PRECOOFERTA >0 THEN PRD_PRECOOFERTA else PR.pre_preco end AS PRD_PVENDA, '+
                                   '0.00 AS PRD_PVENDA2, 0.00 AS PRD_PVENDA3, 0.00 AS PRD_PVENDA4, 0.00 AS PRD_PVENDA5, 0.00 AS PRD_PVENDA6, '+
                                   'T2.LIN_DESCRI , interno, externo, altura1, altura2,' +
                                   '( SELECT SUM(kas_saldo) '+
                                      ' FROM kardex_almox_saldo '+
                                       'WHERE prd_codigo = pd.prd_codigo '+
                                      ConcatSe (' and ',dbInicio.ExclusivoSql('ESTOQUES') )+') Estoque ';
          // cbCodigos.LookupTable:= 'PRD0000 PD inner JOIN PRD_TIPO pt ON (pd.PTI_CODIGO = pt.PTI_CODIGO AND pti_disponivel_vendas = ''S'')'+
          cbCodigos.LookupTable:= 'PRD0000 PD ' +
                                  ' inner JOIN PRD_TIPO pt ON (pd.PTI_CODIGO = pt.PTI_CODIGO  and pt.PTI_DISPONIVEL_VENDAS = ''S'' )'+
                                  ' left join PRD0000_CODIGO T3 on (T3.PRD_CODIGO = PD.PRD_CODIGO) left join PRD_CODIGOORIGINAL T5 on (T5.PRD_CODIGO = PD.PRD_CODIGO) '+
                                  ' Join precos0000 TB on TB.cli_codigo = '+qStr(cliente)+
                                  ' Join precos0001 PR on PR.PRE_ID=TB.PRE_ID AND PR.PRD_CODIGO=PD.PRD_CODIGO '+
                                  ' left join PRD_LINHA T2 on (T2.LIN_CODIGO = PD.LIN_CODIGO) ';


          cbEndereco.LookupSelect:='PD.PRD_EMBALA, PD.PRD_CODIGO, PD.PRD_REFER, t4.PRDE_ENDERECO, PD.PRD_DESCRI, PD.PRD_CODBARRA, PD.PRD_PRODSERV, PD.PRD_UND, T2.LIN_DESCRI, '+
                                    // PRD_PVENDA
                                   ' CASE WHEN PRD_INICIOOFERTA <= CURRENT_DATE AND PRD_FIMOFERTA>= CURRENT_DATE AND PRD_PRECOOFERTA >0 THEN PRD_PRECOOFERTA else PR.pre_preco end AS PRD_PVENDA, '+
                                   '0.00 AS PRD_PVENDA2, 0.00 AS PRD_PVENDA3, 0.00 AS PRD_PVENDA4, 0.00 AS PRD_PVENDA5, 0.00 AS PRD_PVENDA6, '+
                                   ' T5.PRDCO_CODIGO_ORIGINAL, interno, externo, altura1, altura2,' +
                                   '( SELECT SUM(kas_saldo) '+
                                      ' FROM kardex_almox_saldo '+
                                       'WHERE prd_codigo = pd.prd_codigo '+
                                      ConcatSe (' and ',dbInicio.ExclusivoSql('ESTOQUES') )+') Estoque ';
          // cbEndereco.LookupTable:= 'prd0000 PD inner JOIN PRD_TIPO pt ON (pd.PTI_CODIGO = pt.PTI_CODIGO AND pti_disponivel_vendas = ''S'')'+
          cbEndereco.LookupTable:= 'prd0000 PD inner JOIN PRD_TIPO pt ON (pd.PTI_CODIGO = pt.PTI_CODIGO  and pt.PTI_DISPONIVEL_VENDAS = ''S'' )'+
                                   ' left join PRD_LINHA T2 on (T2.LIN_CODIGO = PD.LIN_CODIGO) join PRD0000_ENDERECAMENTO T4 on (t4.PRDE_REGISTRO=PD.PRDE_REGISTRO) '+
                                  ' Join precos0000 TB on TB.cli_codigo = '+qStr(cliente)+
                                  ' Join precos0001 PR on PR.PRE_ID=TB.PRE_ID AND PR.PRD_CODIGO=PD.PRD_CODIGO '+
                                  ' left join PRD_CODIGOORIGINAL T5 on (T5.PRD_CODIGO = PD.PRD_CODIGO and T5.cli_codigo = '+qStr(cliente)+' )';
     end
     Else
     begin
          if dbInicio.Empresa.bHabilitarTabelaPreco then
          begin
             cbReferencia.LookupDbGridColumnsTitle := 'P/S, Referência, Descrição, Unid., Estoque, ' +
                                                      DBInicio.Empresa.wPmt_Tabnome1+',' +DBInicio.Empresa.wPmt_Tabnome2+','+  DBInicio.Empresa.wPmt_Tabnome3+',' +DBInicio.Empresa.wPmt_Tabnome4+','+
                                                      DBInicio.Empresa.wPmt_Tabnome5+',' +DBInicio.Empresa.wPmt_Tabnome6+','+
                                                      ' Embalagem, Linha/Marca, Cód.Cliente,Cód.Barras';
             CbReferencia.LookupDbGridColumns:= 'PRD_PRODSERV, PRD_REFER, PRD_DESCRI, PRD_UND, Estoque, PRD_PVENDA, ' +
                                                ' PRD_EMBALA, PRD_PVENDA2,PRD_PVENDA3,PRD_PVENDA4,PRD_PVENDA5,PRD_PVENDA6, '+
                                                ' LIN_DESCRI, PRDCO_CODIGO_ORIGINAL,PRD_CODBARRA';

             cbCodigos.LookupDbGridColumns := 'PRD_PRODSERV, PRD_REFER, PRD_DESCRI, PRD_UND, PRD_PVENDA, '+
                                              ' PRD_PVENDA2,PRD_PVENDA3,PRD_PVENDA4,PRD_PVENDA5,PRD_PVENDA6,  '+
                                              ' LIN_DESCRI, PRDCO_CODIGO_ORIGINAL, PRDC_REFERENCIA, PRD_CODBARRA';
             cbCodigos.LookupDbGridColumnsTitle := 'P/S, Referência, Descrição, Unid., Estoque, '+
                                                  DBInicio.Empresa.wPmt_Tabnome1+',' +DBInicio.Empresa.wPmt_Tabnome2+','+  DBInicio.Empresa.wPmt_Tabnome3+',' +DBInicio.Empresa.wPmt_Tabnome4+','+
                                                  DBInicio.Empresa.wPmt_Tabnome5+',' +DBInicio.Empresa.wPmt_Tabnome6+','+
                                                  ' Linha/Marca, Cód.Original/Cliente, Cód.Fornecedor, Cód.Barras';
             cbEndereco.LookupDbGridColumns :=  'PRD_PRODSERV, PRD_REFER, PRD_DESCRI, PRD_UND, Estoque, PRD_PVENDA, '+
                                                ' PRD_PVENDA2,PRD_PVENDA3,PRD_PVENDA4,PRD_PVENDA5,PRD_PVENDA6,  '+
                                                ' LIN_DESCRI, PRDE_ENDERECO, PRDCO_CODIGO_ORIGINAL';
             cbEndereco.LookupDbGridColumnsTitle := 'P/S, Referência, Descrição, Unid., Estoque'+
                                                    DBInicio.Empresa.wPmt_Tabnome1+',' +DBInicio.Empresa.wPmt_Tabnome2+','+  DBInicio.Empresa.wPmt_Tabnome3+',' +DBInicio.Empresa.wPmt_Tabnome4+','+
                                                    DBInicio.Empresa.wPmt_Tabnome5+',' +DBInicio.Empresa.wPmt_Tabnome6+','+
                                                    ' Linha/Marca, Endereço , Cód.Cliente';

             // PRD_PVENDA
             lCampoTabela:=' CASE WHEN PRD_INICIOOFERTA <= CURRENT_DATE AND PRD_FIMOFERTA>= CURRENT_DATE AND PRD_PRECOOFERTA >0 THEN PRD_PRECOOFERTA else PD.PRD_PVENDA END PRD_PVENDA ,'+
             ' PRD_PVENDA2,PRD_PVENDA3,PRD_PVENDA4,PRD_PVENDA5,PRD_PVENDA6';

          end;

           if lCampoTabela <> '' then
           begin
             CbReferencia.LookupSelect:='PD.PRD_EMBALA, PD.PRD_CODIGO, PD.PRD_REFER, PD.PRD_DESCRI, PD.PRD_CODBARRA, PD.PRD_PRODSERV, PD.PRD_UND, T2.LIN_DESCRI, '+lCampoTabela+
                                       ',   ( SELECT FIRST 1 pc.PRDCO_CODIGO_ORIGINAL FROM PRD_CODIGOORIGINAL pc WHERE pc.PRD_CODIGO = pd.PRD_CODIGO ) as PRDCO_CODIGO_ORIGINAL, '+
                                       '( SELECT SUM(kas_saldo) '+
                                       ' FROM kardex_almox_saldo '+
                                        'WHERE prd_codigo = pd.prd_codigo '+
                                        ConcatSe (' and ',dbInicio.ExclusivoSql('ESTOQUES') )+') Estoque, '+
                                         ' interno, externo, altura1, altura2';
             // CbReferencia.LookupTable:= 'prd0000 PD inner JOIN PRD_TIPO pt ON (pd.PTI_CODIGO = pt.PTI_CODIGO AND pti_disponivel_vendas = ''S'')'+
             CbReferencia.LookupTable:= 'prd0000 PD ' +
                                        ' inner JOIN PRD_TIPO pt ON (pd.PTI_CODIGO = pt.PTI_CODIGO and pt.PTI_DISPONIVEL_VENDAS = ''S'' )'+
                                        ' left join PRD_LINHA T2 on (T2.LIN_CODIGO = PD.LIN_CODIGO)';
                                   //     ' left join PRD_CODIGOORIGINAL T5 on (T5.PRD_CODIGO = PD.PRD_CODIGO  )';

             cbCodigos.LookupSelect:= 'distinct PD.PRD_EMBALA, PD.PRD_CODIGO, PD.PRD_REFER, PD.PRD_DESCRI, PD.PRD_CODBARRA, PD.PRD_PRODSERV, PD.PRD_UND, T3.PRDC_REFERENCIA , T5.PRDCO_CODIGO_ORIGINAL, '+
                                       lCampoTabela+', T2.LIN_DESCRI, interno, externo, altura1, altura2';
             // cbCodigos.LookupTable:= 'PRD0000 PD inner JOIN PRD_TIPO pt ON (pd.PTI_CODIGO = pt.PTI_CODIGO AND pti_disponivel_vendas = ''S'')'+
             cbCodigos.LookupTable:= 'PRD0000 PD ' +
                                     ' inner JOIN PRD_TIPO pt ON (pd.PTI_CODIGO = pt.PTI_CODIGO)  and pt.PTI_DISPONIVEL_VENDAS = ''S'''+
                                     ' left join PRD0000_CODIGO T3 on (T3.PRD_CODIGO = PD.PRD_CODIGO) left join PRD_CODIGOORIGINAL T5 on (T5.PRD_CODIGO = PD.PRD_CODIGO) '+
                                     ' left join PRD_LINHA T2 on (T2.LIN_CODIGO = PD.LIN_CODIGO) ';

             cbEndereco.LookupSelect:='PD.PRD_EMBALA, PD.PRD_CODIGO, PD.PRD_REFER, t4.PRDE_ENDERECO, PD.PRD_DESCRI, PD.PRD_CODBARRA, PD.PRD_PRODSERV, PD.PRD_UND, T2.LIN_DESCRI, '+lCampoTabela+
                                       ', T5.PRDCO_CODIGO_ORIGINAL, interno, externo, altura1, altura2,' +
                                       '( SELECT SUM(kas_saldo) '+
                                       ' FROM kardex_almox_saldo '+
                                        'WHERE prd_codigo = pd.prd_codigo '+
                                        ConcatSe (' and ',dbInicio.ExclusivoSql('ESTOQUES') )+') Estoque ';
             // cbEndereco.LookupTable:=  'prd0000 PD inner JOIN PRD_TIPO pt ON (pd.PTI_CODIGO = pt.PTI_CODIGO AND pti_disponivel_vendas = ''S'')'+
             cbEndereco.LookupTable:=  'prd0000 PD ' +
                                       ' inner JOIN PRD_TIPO pt ON (pd.PTI_CODIGO = pt.PTI_CODIGO and pt.PTI_DISPONIVEL_VENDAS = ''S'')'+
                                       ' left join PRD_LINHA T2 on (T2.LIN_CODIGO = PD.LIN_CODIGO) join PRD0000_ENDERECAMENTO T4 on (t4.PRDE_REGISTRO=PD.PRDE_REGISTRO) '+
                                       ' left join PRD_CODIGOORIGINAL T5 on (T5.PRD_CODIGO = PD.PRD_CODIGO )';

           end
           else
           Begin
             cbReferencia.LookupDbGridColumnsTitle := 'P/S, Referência, Descrição, Unid., Estoque, Preço, Embalagem, Linha/Marca, Cód.Cliente,Cód.Barras';
             CbReferencia.LookupDbGridColumns:= 'PRD_PRODSERV, PRD_REFER, PRD_DESCRI, PRD_UND, Estoque, PRD_PVENDA, PRD_EMBALA, LIN_DESCRI,  PRDCO_CODIGO_ORIGINAL,PRD_CODBARRA';

             cbCodigos.LookupDbGridColumnsTitle := 'P/S, Referência, Descrição, Unid., Estoque, Preço,  Embalagem, Linha/Marca, Cód.Original/Cliente, Cód.Fornecedor, Cód.Barras';
             cbCodigos.LookupDbGridColumns := 'PRD_PRODSERV, PRD_REFER, PRD_DESCRI, PRD_UND, Estoque, PRD_PVENDA, PRD_EMBALA,LIN_DESCRI, PRDCO_CODIGO_ORIGINAL, PRDC_REFERENCIA, PRD_CODBARRA';

             cbEndereco.LookupDbGridColumnsTitle := 'P/S, Referência, Descrição, Unid., Estoque, Preço, Embalagem, Linha/Marca, Endereço , Cód.Cliente';
             cbEndereco.LookupDbGridColumns :=  'PRD_PRODSERV, PRD_REFER, PRD_DESCRI, PRD_UND, Estoque, PRD_PVENDA, PRD_EMBALA, LIN_DESCRI, PRDE_ENDERECO, PRDCO_CODIGO_ORIGINAL';


             CbReferencia.LookupSelect:='PD.PRD_EMBALA,  PD.PRD_CODIGO, PD.PRD_REFER, PD.PRD_DESCRI, PD.PRD_CODBARRA, PD.PRD_PRODSERV, PD.PRD_UND, T2.LIN_DESCRI, '+

                                     // PRD_PVENDA
                                     // ' CASE ' +
                                     // '     WHEN PRD_INICIOOFERTA <= CURRENT_DATE AND PRD_FIMOFERTA>= CURRENT_DATE AND PRD_PRECOOFERTA >0 THEN CAST(PRD_PRECOOFERTA AS NUMERIC(18,5)) ' +
                                     // '     else CAST(pd.PRD_PVENDA AS NUMERIC(18,5)) end AS PRD_PVENDA, ' +

                                     '  CASE ' +
                                     '   WHEN PRD_INICIOOFERTA <= CURRENT_DATE AND PRD_FIMOFERTA >= CURRENT_DATE	AND PRD_PRECOOFERTA >0 THEN CAST(PRD_PRECOOFERTA AS NUMERIC(18, 5)) ' +
//                                     '   WHEN (SELECT PRODUTO_PRECO_EMPRESA FROM SHAREDB) = ''E'' THEN ' +
//                                     '         CAST((SELECT FIRST 1  CAST(PRD_PE_PVENDA AS NUMERIC(18,5)) FROM PRD0000_PRECO_EMPRESA ppe WHERE ppe.PRD_CODIGO = PD.PRD_CODIGO AND ppe.EMP_CODIGO = pd.EMP_CODIGO ORDER BY PRD_PE_DATA_ATUALIZACAO DESC) AS NUMERIC(18, 5)) ' +
                                     '   ELSE CAST(pd.PRD_PVENDA AS NUMERIC(18, 5)) ' +
                                     ' END AS PRD_PVENDA, ' +

                                     ' PRD_EMBALA, '+
                                     ' CAST(0.00 AS NUMERIC(18,5)) AS PRD_PVENDA2, CAST(0.00 AS NUMERIC(18,5)) AS PRD_PVENDA3, CAST(0.00 AS NUMERIC(18,5)) AS PRD_PVENDA4, CAST(0.00 AS NUMERIC(18,5)) AS PRD_PVENDA5, CAST(0.00 AS NUMERIC(18,5)) AS PRD_PVENDA6,'+
                                     '    ( SELECT FIRST 1 pc.PRDCO_CODIGO_ORIGINAL FROM PRD_CODIGOORIGINAL pc WHERE pc.PRD_CODIGO = pd.PRD_CODIGO )  PRDCO_CODIGO_ORIGINAL, '+
                                     ' interno, externo, altura1, altura2,' +
                                      '( SELECT SUM(kas_saldo) '+
                                      ' FROM kardex_almox_saldo '+
                                       'WHERE prd_codigo = pd.prd_codigo '+
                                      ConcatSe (' and ',dbInicio.ExclusivoSql('ESTOQUES') )+') Estoque ';
             // CbReferencia.LookupTable:= 'prd0000 PD inner JOIN PRD_TIPO pt ON (pd.PTI_CODIGO = pt.PTI_CODIGO AND pti_disponivel_vendas = ''S'')'+
             CbReferencia.LookupTable:= 'prd0000 PD inner JOIN PRD_TIPO pt ON (pd.PTI_CODIGO = pt.PTI_CODIGO and pt.PTI_DISPONIVEL_VENDAS = ''S'')'+
                                        ' left join PRD_LINHA T2 on (T2.LIN_CODIGO = PD.LIN_CODIGO)';
                                     //   ' left join PRD_CODIGOORIGINAL T5 on (T5.PRD_CODIGO = PD.PRD_CODIGO  )';

             cbCodigos.LookupSelect:= 'distinct PD.PRD_EMBALA, PD.PRD_CODIGO, PD.PRD_REFER, PD.PRD_DESCRI, PD.PRD_CODBARRA, PD.PRD_PRODSERV, PD.PRD_UND, T3.PRDC_REFERENCIA , t5.PRDCO_CODIGO_ORIGINAL,  '+

                                     // PRD_PVENDA
                                     //'CASE WHEN PRD_INICIOOFERTA <= CURRENT_DATE AND PRD_FIMOFERTA>= CURRENT_DATE AND PRD_PRECOOFERTA >0 THEN PRD_PRECOOFERTA else pd.PRD_PVENDA end AS PRD_PVENDA, ' +
                                     '  CASE ' +
                                      '   WHEN PRD_INICIOOFERTA <= CURRENT_DATE AND PRD_FIMOFERTA >= CURRENT_DATE	AND PRD_PRECOOFERTA >0 THEN CAST(PRD_PRECOOFERTA AS NUMERIC(18, 5)) ' +
//                                      '   WHEN (SELECT PRODUTO_PRECO_EMPRESA FROM SHAREDB) = ''E'' THEN ' +
//                                      '         CAST((SELECT FIRST 1  CAST(PRD_PE_PVENDA AS NUMERIC(18,5)) FROM PRD0000_PRECO_EMPRESA ppe WHERE ppe.PRD_CODIGO = PD.PRD_CODIGO AND ppe.EMP_CODIGO = pd.EMP_CODIGO ORDER BY PRD_PE_DATA_ATUALIZACAO DESC) AS NUMERIC(18, 5)) ' +
                                      '   ELSE CAST(pd.PRD_PVENDA AS NUMERIC(18, 5)) ' +
                                      ' END AS PRD_PVENDA, ' +

                                      '  PRD_EMBALA,' +
                                      ' 0.00 AS PRD_PVENDA2, 0.00 AS PRD_PVENDA3, 0.00 AS PRD_PVENDA4, 0.00 AS PRD_PVENDA5, 0.00 AS PRD_PVENDA6,'+
                                      ' T2.LIN_DESCRI, interno, externo, altura1, altura2';

             // cbCodigos.LookupTable:= 'PRD0000 PD inner JOIN PRD_TIPO pt ON (pd.PTI_CODIGO = pt.PTI_CODIGO AND pti_disponivel_vendas = ''S'')'+
             cbCodigos.LookupTable:= 'PRD0000 PD inner JOIN PRD_TIPO pt ON (pd.PTI_CODIGO = pt.PTI_CODIGO and pt.PTI_DISPONIVEL_VENDAS = ''S'' )'+
                                     ' left join PRD0000_CODIGO T3 on (T3.PRD_CODIGO = PD.PRD_CODIGO) left join PRD_CODIGOORIGINAL T5 on (T5.PRD_CODIGO = PD.PRD_CODIGO) '+
                                     ' left join PRD_LINHA T2 on (T2.LIN_CODIGO = PD.LIN_CODIGO) ';

             cbEndereco.LookupSelect:='PD.PRD_EMBALA, PD.PRD_CODIGO, PD.PRD_REFER, t4.PRDE_ENDERECO, PD.PRD_DESCRI, PD.PRD_CODBARRA, PD.PRD_PRODSERV, PD.PRD_UND, T2.LIN_DESCRI, '+

                                      // PRD_PVENDA
                                      // ' CASE WHEN PRD_INICIOOFERTA <= CURRENT_DATE AND PRD_FIMOFERTA>= CURRENT_DATE AND PRD_PRECOOFERTA >0 THEN PRD_PRECOOFERTA else pd.PRD_PVENDA END AS PRD_PVENDA, '  +
                                      '  CASE ' +
                                      '   WHEN PRD_INICIOOFERTA <= CURRENT_DATE AND PRD_FIMOFERTA >= CURRENT_DATE	AND PRD_PRECOOFERTA >0 THEN CAST(PRD_PRECOOFERTA AS NUMERIC(18, 5)) ' +
//                                      '   WHEN (SELECT PRODUTO_PRECO_EMPRESA FROM SHAREDB) = ''E'' THEN ' +
//                                      '         CAST((SELECT FIRST 1  CAST(PRD_PE_PVENDA AS NUMERIC(18,5)) FROM PRD0000_PRECO_EMPRESA ppe WHERE ppe.PRD_CODIGO = PD.PRD_CODIGO AND ppe.EMP_CODIGO = pd.EMP_CODIGO ORDER BY PRD_PE_DATA_ATUALIZACAO DESC) AS NUMERIC(18, 5))' +
                                      '   ELSE CAST(pd.PRD_PVENDA AS NUMERIC(18, 5)) ' +
                                      ' END AS PRD_PVENDA, ' +

                                      ' PRD_EMBALA,' +
                                      ' 0.00 AS PRD_PVENDA2, 0.00 AS PRD_PVENDA3, 0.00 AS PRD_PVENDA4, 0.00 AS PRD_PVENDA5, 0.00 AS PRD_PVENDA6,'+
                                      '    ( SELECT FIRST 1 pc.PRDCO_CODIGO_ORIGINAL FROM PRD_CODIGOORIGINAL pc WHERE pc.PRD_CODIGO = pd.PRD_CODIGO )  PRDCO_CODIGO_ORIGINAL, '+
                                      ' interno, externo, altura1, altura2,' +
                                      '( SELECT SUM(kas_saldo) '+
                                      ' FROM kardex_almox_saldo '+
                                       'WHERE prd_codigo = pd.prd_codigo '+
                                      ConcatSe (' and ',dbInicio.ExclusivoSql('ESTOQUES') )+') Estoque ';
             // cbEndereco.LookupTable:=  'prd0000 PD inner JOIN PRD_TIPO pt ON (pd.PTI_CODIGO = pt.PTI_CODIGO AND pti_disponivel_vendas = ''S'')'+
             cbEndereco.LookupTable:=  'prd0000 PD inner JOIN PRD_TIPO pt ON (pd.PTI_CODIGO = pt.PTI_CODIGO  and pt.PTI_DISPONIVEL_VENDAS = ''S'' )'+
                                       ' left join PRD_LINHA T2 on (T2.LIN_CODIGO = PD.LIN_CODIGO) join PRD0000_ENDERECAMENTO T4 on (t4.PRDE_REGISTRO=PD.PRDE_REGISTRO) ';
                                     // ' left join PRD_CODIGOORIGINAL T5 on (T5.PRD_CODIGO = PD.PRD_CODIGO  )';
           END;
     end;
   //  cbReferencia.LookupWhere := 'PD.PRD_REFER,  ( SELECT FIRST 1 pc.PRDCO_CODIGO_ORIGINAL FROM PRD_CODIGOORIGINAL pc WHERE pc.PRD_CODIGO = pd.PRD_CODIGO ) '
     CbDescricao.LookupSelect := cbReferencia.LookupSelect;
     CbDescricao.LookupTable :=  CbReferencia.LookupTable;
     cbDescricao.LookupDbGridColumns := cbReferencia.LookupDbGridColumns;
     cbDescricao.LookupDbGridColumnsTitle := cbReferencia.LookupDbGridColumnsTitle;

     CbBarras.LookupSelect := cbReferencia.LookupSelect;
     CbBarras.LookupTable :=  CbReferencia.LookupTable;
     CbBarras.LookupDbGridColumns := cbReferencia.LookupDbGridColumns;
     CbBarras.LookupDbGridColumnsTitle := cbReferencia.LookupDbGridColumnsTitle;



     cbCodigos.LookupDbGridColumns := cbReferencia.LookupDbGridColumns;
     cbCodigos.LookupDbGridColumnsTitle := cbReferencia.LookupDbGridColumnsTitle;

     cbEndereco.LookupDbGridColumns := cbReferencia.LookupDbGridColumns;
     cbEndereco.LookupDbGridColumnsTitle := cbReferencia.LookupDbGridColumnsTitle;







     cbMedInterno.LookupSelect := cbReferencia.LookupSelect;
     cbMedInterno.LookupTable := cbReferencia.LookupTable;
     cbMedInterno.LookupDbGridColumns := cbReferencia.LookupDbGridColumns;
     cbMedInterno.LookupDbGridColumnsTitle := cbReferencia.LookupDbGridColumnsTitle;

     cbMedExterno.LookupSelect := cbReferencia.LookupSelect;
     cbMedExterno.LookupTable := cbReferencia.LookupTable;
     cbMedExterno.LookupDbGridColumns := cbReferencia.LookupDbGridColumns;
     cbMedExterno.LookupDbGridColumnsTitle := cbReferencia.LookupDbGridColumnsTitle;

     cbMedAltura1.LookupSelect := cbReferencia.LookupSelect;
     cbMedAltura1.LookupTable := cbReferencia.LookupTable;
     cbMedAltura1.LookupDbGridColumns := cbReferencia.LookupDbGridColumns;
     cbMedAltura1.LookupDbGridColumnsTitle := cbReferencia.LookupDbGridColumnsTitle;

     cbMedAltura2.LookupSelect := cbReferencia.LookupSelect;
     cbMedAltura2.LookupTable := cbReferencia.LookupTable;
     cbMedAltura2.LookupDbGridColumns := cbReferencia.LookupDbGridColumns;
     cbMedAltura2.LookupDbGridColumnsTitle := cbReferencia.LookupDbGridColumnsTitle;
     if not fLendo  then
        cbReferencia.SetFocus;
end;

procedure TFrmPedidoItem.OpenQueryPrecos( cProduto:string );
begin
   if cProduto='' then
      cProduto := '-1';
   qPrecos.Close;
   qPrecos.SQL.Clear;
   qPrecos.SQL.Add( 'Select ');
   qPrecos.SQL.Add( '       (Select PRE_PRECO FROM precos0001 WHERE PRE_ID='+inttostr(lTabPrinc)+' AND PRD_CODIGO='+cProduto+') as TabPrinc,'); //0 / princ
   qPrecos.SQL.Add( '       (Select PRE_PRECO FROM precos0001 WHERE PRE_ID='+inttostr(lTabSec)+' AND PRD_CODIGO='+cProduto+') as TabSec,');     //1 / alternativa  (maior)
   qPrecos.SQL.Add( '       (Select PRE_PRECO FROM precos0001 WHERE PRE_ID='+inttostr(lTabPromo)+' AND PRD_CODIGO='+cProduto+') as TabPromo,'); //2 / promo
   qPrecos.SQL.Add( '       (Select PRE_PRECO FROM precos0001 WHERE PRE_ID='+inttostr(lTabEspe)+' AND PRD_CODIGO='+cProduto+') as TabEspe,');    //3 / exclusiva

   qPrecos.SQL.Add( '       (Select PERC_COMISSAO FROM precos0001 WHERE PRE_ID='+inttostr(lTabPrinc)+' AND PRD_CODIGO='+cProduto+') as TabEspe,');    //4 / princ
   qPrecos.SQL.Add( '       (Select PERC_COMISSAO FROM precos0001 WHERE PRE_ID='+inttostr(lTabSec)+' AND PRD_CODIGO='+cProduto+') as TabEspe,');    //5 / alternativa
   qPrecos.SQL.Add( '       (Select PERC_COMISSAO FROM precos0001 WHERE PRE_ID='+inttostr(lTabPromo)+' AND PRD_CODIGO='+cProduto+') as TabEspe,');    //6 / promo
   qPrecos.SQL.Add( '       (Select PERC_COMISSAO FROM precos0001 WHERE PRE_ID='+inttostr(lTabEspe)+' AND PRD_CODIGO='+cProduto+') as TabEspe,');    //7 / exclusiva

   qPrecos.SQL.Add( '       (Select PERC_VERBA FROM precos0001 WHERE PRE_ID='+inttostr(lTabPrinc)+' AND PRD_CODIGO='+cProduto+') as TabEspe,');    //8 / princ
   qPrecos.SQL.Add( '       (Select PERC_VERBA FROM precos0001 WHERE PRE_ID='+inttostr(lTabSec)+' AND PRD_CODIGO='+cProduto+') as TabEspe,');    //9 / alternativa
   qPrecos.SQL.Add( '       (Select PERC_VERBA FROM precos0001 WHERE PRE_ID='+inttostr(lTabPromo)+' AND PRD_CODIGO='+cProduto+') as TabEspe,');    //10 / promo
   qPrecos.SQL.Add( '       (Select PERC_VERBA FROM precos0001 WHERE PRE_ID='+inttostr(lTabEspe)+' AND PRD_CODIGO='+cProduto+') as TabEspe');    //11 / exclusiva
   qPrecos.SQL.Add( 'From rdb$database');
   {if DelphiAberto then
      CopyToClipBoard( qPrecos.SQL.Text );}
   qPrecos.Open;
end;

procedure TFrmPedidoItem.EdReferenciaChange(Sender: tObject);
begin
   fAutorizado:=False;
end;

procedure TFrmPedidoItem.ExcluiContaCorrente(sProduto, sDocumento: string);
begin
    DBInicio.ExecSql( 'delete from conta_corrente WHERE COD_PRODUTO = '+QuotedStr(sProduto)+ ' and DOCUMENTO = '+QuotedStr(sDocumento));
end;

procedure TFrmPedidoItem.CurQuantidadeChange(Sender: TObject);
begin
  inherited;
  if  TJvValidateEdit(Sender).Value > 0 then
    btnTransferencia.Enabled := true
  else
		btnTransferencia.Enabled := false;
  if (CurrPesoIndividual.Value> 0) and ( TJvValidateEdit(Sender).Value>0)  then
       CurrPesoKG.Value := CurrPesoIndividual.Value * CurQuantidade.Value
end;

procedure TFrmPedidoItem.CurQuantidadeEnter(Sender: TObject);
begin
  inherited;
  LoteCorrente := FrmPedido.SqlCdsPedidoItemPRDL_REGISTRO.AsInteger;
end;

procedure TFrmPedidoItem.CurQuantidadeExit(Sender: tObject);
begin
  CalculaTotais;
end;

procedure TFrmPedidoItem.CurTotalChange(Sender: TObject);
begin
  inherited;
  if (CurTotal.Value > 0) and  (qAux.FieldByName('PRD_PCUSTO').AsFloat>0) and (CurQuantidade.Value> 0 ) then
     CurMarkup.Value := CalculoMargem;
end;

procedure TFrmPedidoItem.CurUsarPercChange(Sender: TObject);
begin
  inherited;
  if CurUsarPerc.Value > 0 then
    CurUsarValor.Value := 0;
  if (CurTotal.Value /100) * CurUsarPerc.Value <= CurPossivel.value then
    edUsando.Text := FormatFloat('#0.000',(CurTotal.Value /100) * CurUsarPerc.Value)
  else
    edUsando.Text := '0,000';
end;

procedure TFrmPedidoItem.CbAlmoxarifadoSelect(Sender: TObject);
begin
  inherited;

  if cbAlmoxarifado.idRetorno<>'' then
    EdAlmoxarifadoCodigo.Text := cbAlmoxarifado.idRetorno
  Else
     EdAlmoxarifadoCodigo.Clear;
   AtualizaSaldoAlmox( cbReferencia.idRetorno, cbAlmoxarifado.idRetorno );

end;

procedure TFrmPedidoItem.cbBarrasClick(Sender: TObject);
begin
  inherited;
  cbReferencia.CdS.active := False;
  cbDescricao.CdS.active := False;
  cbBarras.CdS.active := True;
  cbCodigos.CdS.active := False;
  cbEndereco.CdS.active := False;

end;

procedure TFrmPedidoItem.cbCapacidadeSelect(Sender: TObject);
begin
  inherited;
  AtualizaUltimoPreco;
  if cbCor.CanFocus then
    cbCor.SetFocus;

end;

procedure TFrmPedidoItem.cbCodigosClick(Sender: TObject);
begin
  inherited;
  cbReferencia.CdS.active := False;
  cbDescricao.CdS.active := False;
  cbBarras.CdS.active := False;
  cbCodigos.CdS.active := True;
  cbEndereco.CdS.active := False;

end;

procedure TFrmPedidoItem.cbCodigosSelect(Sender: TObject);
begin
     inherited;
     GenericSelect(Sender);
//     if cbCodigos.idretorno<>'' then
//        EdReferenciaOriginal.Text := cbCodigos.CdS.FieldByName('PRDCO_CODIGO_ORIGINAL').AsString
//     Else
//        EdReferenciaOriginal.Clear;
end;

procedure TFrmPedidoItem.cbDescricaoClick(Sender: TObject);
begin
  inherited;
  cbReferencia.CdS.active := False;
  cbDescricao.CdS.active := True;
  cbBarras.CdS.active := False;
  cbCodigos.CdS.active := False;
  cbEndereco.CdS.active := False;

end;

procedure TFrmPedidoItem.cbDescricaoExit(Sender: TObject);
begin
  inherited;

// if DBInicio.Empresa.bPMT_HABILITA_MEDIDAPRD then
//     if cbMedInterno.CanFocus then
//        cbMedInterno.SetFocus;
end;

procedure TFrmPedidoItem.cbDescricaokeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 // inherited;
  if (Key = VK_TAB) OR (KEY = VK_RETURN) then
  begin
   if DBInicio.Empresa.bPMT_HABILITA_MEDIDAPRD then
     if cbMedInterno.CanFocus then
        cbMedInterno.SetFocus;


  end;
end;

procedure TFrmPedidoItem.cbDescricaoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   if (Key = #9) OR (KEY= #13) then
   begin
   if DBInicio.Empresa.bPMT_HABILITA_MEDIDAPRD then
     if cbMedInterno.CanFocus then
        cbMedInterno.SetFocus;

   end;
end;

procedure TFrmPedidoItem.GenericSelect(Sender: TObject);
begin
  inherited;
  if not pvFlgProcSelect then
  begin
       pvFlgProcSelect:=True;
       try
          if UpperCase(tComponent(Sender).Name)<>'CBREFERENCIA' then
             cbReferencia.idRetorno := tSgDbSearchCombo( sender ).idretorno ;
          if UpperCase(tComponent(Sender).Name)<>'CBDESCRICAO' then
             cbdescricao.idRetorno := tSgDbSearchCombo( sender ).idretorno ;
          if UpperCase(tComponent(Sender).Name)<>'CBBARRAS' then
             cbBarras.idRetorno := tSgDbSearchCombo( sender ).idretorno ;
          if UpperCase(tComponent(Sender).Name)<>'CBCODIGOS' then
             cbCodigos.idRetorno := tSgDbSearchCombo( sender ).idretorno;
          if UpperCase(tComponent(Sender).Name)<>'CBENDERECO' then
             cbEndereco.idRetorno := tSgDbSearchCombo( sender ).idretorno ;
          if UpperCase(tComponent(Sender).Name)<>'CBMEDINTERNO' then
             cbMedInterno.idRetorno := tSgDbSearchCombo( sender ).idretorno ;

          //EdReferenciaOriginal.Clear;
       finally
              pvFlgProcSelect:=False;
       end;



   if  (dbInicio.GetParametroSistema('PMT_REFERENCIA_PROVISORIA') = edReferencia.Text) then
   begin
     MemoDescricao.ReadOnly := False;
     MemoDescricao.TabStop := True;
     MemoDescricao.Color := clWhite;
   end
   else
   begin
     MemoDescricao.ReadOnly := not dbInicio.Empresa.bAlteraDescricaodoItem ;
     MemoDescricao.TabStop := False;
     MemoDescricao.Color := iif(dbInicio.Empresa.bAlteraDescricaodoItem, clWhite, $00D7D7D7);
   end;




    if cbReferencia.idRetorno <> '' then
       AtualizaSaldoAlmox(cbReferencia.idRetorno, cbAlmoxarifado.idRetorno );
  end;
end;

procedure TFrmPedidoItem.GravaContaCorrente(sOperacao,sTipo, sConta, sDocumento, sDescricao, sLancado, sVendedor,
          sCliente, sFornecedor, sCanc, sMotivo, sProduto: string; rValor,rUtilizado: double; iUsuario,
  iUsuarioCan: integer; dData: TDateTime);

var sCodigo:integer;
    bContaExiste:boolean;
begin

  //Verifica se ja existe.
  dataCadastros.sqlUpdate.Close;
  DataCadastros.SqlUpdate.sql.text := 'Select cast(count(*) as integer) as conta from    conta_corrente where COD_PRODUTO='''+sProduto+''' and DOCUMENTO='''+sDocumento+'''';
  dataCadastros.sqlUpdate.Open;
  bContaExiste := False;
  if (not dataCadastros.sqlUpdate.IsEmpty) then
  begin
    if (dataCadastros.sqlUpdate.FieldByName('CONTA').AsInteger > 0) then
       bContaExiste := True;
  end;
  dataCadastros.sqlUpdate.Close;
  if (bContaExiste) and (sOperacao <> 'I') then //Update
  begin
    DBInicio.ExecSql( 'UPDATE conta_corrente set' +
                            ' VALOR = '+FloatToSql(rValor)+', '+
                            ' DATA = '+QuotedStr(DataAmericana(DateToStr(dData)))+
                            ' WHERE COD_PRODUTO = '+QuotedStr(sProduto)+ ' and DOCUMENTO = '+QuotedStr(sDocumento)+ ' and CONTA = '+QuotedStr(sConta));


  end
  else
  begin
    sCodigo := dbInicio.GetNextSequence('GEN_CONTA_CORRENTE_CODIGO');
    DBInicio.ExecSql( 'INSERT into conta_corrente ('
                                  +'Codigo, '
                                  +'Tipo, '
                                  +'Conta, '
                                  +'Documento, '
                                  +'Descricao, '
                                  +'Lancado, '
                                  +'Usu_codigo, '
                                  +'cod_vendedor, '
                                  +'cod_cliente, '
                                  +'cod_fornecedor,'
                                  +'cancelamento, '
                                  +'Valor, '
                                  +'Valor_Utilizado,'
                                  +'motivo_cancelamento, '
                                  +'usuario_cancelamento,'
                                  +'COD_PRODUTO,'
                                  +'Data'
                                  +')'
                                  +' VALUES '
                                  +'('
                                  +QStr(IntToStr(sCodigo))+','
                                  +QStr(sTipo)+','
                                  +qStr(sConta)+','
                                  +qStr(sDocumento)+','
                                  +qStr(sDescricao)+','
                                  +qStr(sLancado)+','
                                  +qStr(IntToStr(iUsuario))+','
                                  +qStr(sVendedor)+','
                                  +qStr(sCliente)+','
                                  +qStr(sFornecedor)+','
                                  +qStr(sCanc)+','
                                  +FloatToSql(rValor)+','
                                  +FloatToSql(rUtilizado)+','
                                  +qStr(sMotivo)+','
                                  +qStr(IntToStr(iUsuarioCan))+','
                                  +qStr(sProduto)+','
                                  +QuotedStr(DataAmericana(DateToStr(dData)))
                                  +')');
   end;

end;

function TFrmPedidoItem.GrupoAtualizaEstoque(const prd_refer: string): boolean;
begin
  OpenAux3 ( 'Select COALESCE(PG1.PGR_ATUALIZA_ESTOQUE,''S'') AS PGR_ATUALIZA_ESTOQUE '+
            'from PRD0000 PR1 '+
            '     left join PRD_GRUPO PG1 ON PR1.PGR_CODIGO = PG1.PGR_CODIGO '+
            'where PR1.PRD_REFER = '+QuotedStr(prd_refer)+ConcatSe( '  and PR1.', dbInicio.exclusivoSql( 'PRODUTOS' ) ) );
  // atualiza estoque grupo S/N
   Result :=  qAux3.FieldByName('PGR_ATUALIZA_ESTOQUE').AsString = 'S';
end;

procedure TFrmPedidoItem.HabilitarCamposSemGrade( const pCodProduto: String);
var
  precoVendaZero, lancaZerado : boolean;
begin
  precoVendaZero := (BuscaUmDadoSqlAsFloat('SELECT PRD_PVENDA FROM PRD0000 WHERE PRD_CODIGO = ' + QuotedStr(cbReferencia.IdRetorno)) = 0);
  lancaZerado := (BuscaUmDadoSqlAsString('SELECT PRD_LANCA_VALOR_ZERADO FROM PRD0000 WHERE PRD_CODIGO = ' + QuotedStr(cbReferencia.IdRetorno)) = 'S');
	CurPrecoBruto.Enabled :=  (dbInicio.Empresa.bUSP_STAT_PRECO_BRUTO_P) or ((precoVendaZero) and (lancaZerado) ) ;
	CurPrecoLiquido.Enabled :=  (dbInicio.Empresa.bUSP_STAT_PRECO_LIQUIDO_P) or ((precoVendaZero) and (lancaZerado) ) ;

  if (qAux.FieldByName('pti_sigla').AsString = 'KT')  and DBInicio.Empresa.wPMT_ITENS_KIT then
  begin
   CurDesconto.ReadOnly := True;
   CurDesconto.TabStop := False;
   CurDesconto.Color := $00d7d7d7;
   CurDescontoAdicional.ReadOnly := True;
   CurDescontoAdicional.TabStop := False;
   CurDescontoAdicional.Color :=  $00d7d7d7;
  end
  else
  begin
   CurDesconto.Enabled := (dbInicio.Empresa.bUSP_ALTERA_DESCONTO_P);
   CurComissao.Enabled := (dbInicio.Empresa.bUSP_ALTERA_DESCONTO_P) and NOT disComissao ;
   CurDescontoAdicional.Enabled :=(dbInicio.Empresa.bUSP_ALTERA_DESCONTO_P);
   CurDesconto.ReadOnly := False;
   CurDesconto.TabStop := True;
   CurDesconto.Color := clWhite;
   CurDescontoAdicional.ReadOnly := False;
   CurDescontoAdicional.TabStop := True;
   CurDescontoAdicional.Color := clWhite;
  end;

  lmarkup.Visible := (dbInicio.Empresa.bVisualizaMarkupPedido);
  CurMarkup.Visible := (dbInicio.Empresa.bVisualizaMarkupPedido);
end;

procedure TFrmPedidoItem.CbDiretivaExit(Sender: tObject);
var   ix: Integer;
begin
     ix := CbDiretiva.Perform(CB_FINDSTRING, 0, Longint(PChar(CbDiretiva.Text)));
     if ix = CB_ERR then
        CbDiretiva.Text := '';
end;

procedure TFrmPedidoItem.CbDiretivaSelect(Sender: tObject);
begin
     edDiretivaSigla.Clear;
     if (CbDiretiva.CodigoLista <> '') then
     begin
          DataCadastros.sqlUpdate2.Close;
          DataCadastros.sqlUpdate2.sql.text := 'SELECT PRDD_SIGLA FROM PRD_DIRETIVA WHERE PRDD_REGISTRO = '+CbDiretiva.CodigoLista;
          DataCadastros.sqlUpdate2.Open;
          if (not DataCadastros.sqlUpdate2.IsEmpty) then
             edDiretivaSigla.Text := DataCadastros.sqlUpdate2.FieldByName('PRDD_SIGLA').AsString;
          DataCadastros.sqlUpdate2.Close;
          if EdAlmoxarifadoCodigo.canfocus then
             EdAlmoxarifadoCodigo.setfocus;
     end;

end;

procedure TFrmPedidoItem.cbTabelaPrecoMultiploClick(Sender: TObject);
begin
  inherited;
  EntrouTabelaPrecos := True;
end;

procedure TFrmPedidoItem.cbTabelaPrecoMultiploEnter(Sender: TObject);
begin
  inherited;
  EntrouTabelaPrecos := True;
end;

procedure TFrmPedidoItem.cbTabelaPrecoMultiploPropertiesChange(Sender: TObject);
begin
  inherited;
  if qAux.Active then
    AlterouTabelaPrecos:= True;
  if ( not VarIsEmpty(cbTabelaPrecoMultiplo.EditValue)) and (dbInicio.Empresa.bHabilitarTabelaPreco) then
  begin
     if not disComissao then
     begin
       if not VarIsNull  (cbTabelaPrecoMultiplo.Properties.DataController.DataSet.Lookup('SEQ',cbTabelaPrecoMultiplo.EditValue,'PRD_PERC_COMISSAO'))  then
         begin
           if  VarAsType(cbTabelaPrecoMultiplo.Properties.DataController.DataSet.Lookup('SEQ',cbTabelaPrecoMultiplo.EditValue,'PRD_PERC_COMISSAO'), varDouble)> 0  then
             CurComissao.Value := VarAsType(cbTabelaPrecoMultiplo.Properties.DataController.DataSet.Lookup('SEQ',cbTabelaPrecoMultiplo.EditValue,'PRD_PERC_COMISSAO'), varDouble)
           else
             CurComissao.Value := FrmPedido.rComissaoDoPrazo;
         end;
     end
     else
     begin
        CurComissao.Value := 0;
     end;

      if VarIsEmpty(cbTabelaPrecoMultiplo.Properties.DataController.DataSet.Lookup('SEQ',cbTabelaPrecoMultiplo.EditValue,'PRD_PERC_VENDA')) then
        CurVerba.Value      := VarAsType(cbTabelaPrecoMultiplo.Properties.DataController.DataSet.Lookup('SEQ',cbTabelaPrecoMultiplo.EditValue,'PRD_PERC_VENDA'), varDouble)
      else
        CurVerba.Value := FrmPedido.rVerbaDoPrazo;
    if   AlterouTabelaPrecos and EntrouTabelaPrecos then
    begin
       if (not VarIsNull(cbTabelaPrecoMultiplo.Properties.DataController.DataSet.Lookup('SEQ',cbTabelaPrecoMultiplo.EditValue,'PRD_PVENDA')))  then
       begin
         if qaux.fieldbyname('PRD_MULTIPLICADOR').asfloat > 0 then
           CurPrecoBruto.Value := VarAsType(cbTabelaPrecoMultiplo.Properties.DataController.DataSet.Lookup('SEQ',cbTabelaPrecoMultiplo.EditValue,'PRD_PVENDA'), varDouble)
              * qaux.fieldbyname('PRD_MULTIPLICADOR').asfloat
         else
           CurPrecoBruto.Value :=VarAsType(cbTabelaPrecoMultiplo.Properties.DataController.DataSet.Lookup('SEQ',cbTabelaPrecoMultiplo.EditValue,'PRD_PVENDA'), varDouble);
       end
       else
        CurPrecoBruto.Value := 0;
       CurDesconto.Value := 0 ;
       CalculaTotais;

    end;

   	lbComissao.Visible := false;
		CurrencyEdit1.Visible := false;
		lbVerba.Visible := false;
		CurVerba.Visible := false;
    AlterouTabelaPrecos:=False;
    EntrouTabelaPrecos:=False;

  end
  else
	begin
		lbComissao.Visible := true;
		CurrencyEdit1.Visible := true;

		lbVerba.Visible := true;
		CurVerba.Visible := true;


	end;

	if SpeedButton1.Visible then
		if CurQuantidade.Value > 0 then
			SpeedButton1.Enabled := true
		else
			SpeedButton1.Enabled := false;



end;

procedure TFrmPedidoItem.cbUnidadeChange(Sender: TObject);
begin
  inherited;
  if DBInicio.GetParametroSistema('PMT_PEDIDO_IND_PLASTICA') = 'S' then
  begin
    if (cbUnidade.idRetorno = 'KG') or (cbUnidade.text = 'KG') then
      lbPeso.Caption := 'Milheiro:'
    else
      lbPeso.Caption := 'Peso:';
    CurPeso.Enabled := True;
  end;
end;

procedure TFrmPedidoItem.cbUnidadeExit(Sender: TObject);
begin
  inherited;
  if DBInicio.GetParametroSistema('PMT_PEDIDO_IND_PLASTICA') = 'S' then
  begin
    if (cbUnidade.idRetorno = 'KG') or (cbUnidade.text = 'KG') then
      lbPeso.Caption := 'Milheiro:'
    else
      lbPeso.Caption := 'Peso:';
    CurPeso.Enabled := True;
  end;
  CurPeso.Enabled := True;
//  if cbCor.CanFocus then
//    cbCor.SetFocus;
end;

procedure TFrmPedidoItem.cdsDiretivasMemoAfterOpen(DataSet: TDataSet);
begin
  inherited;
  TClientDataSet(DataSet).LogChanges := False;
end;

procedure TFrmPedidoItem.cdsItemGradeAfterScroll(DataSet: TDataSet);
begin
  AtualizaoTotaisItens;
end;

procedure TFrmPedidoItem.cdsItemGradeIPIChange(Sender: TField);
Var lValor : Currency;
begin
	inherited;

		 lValor := qAux.FieldByName('IPI_VALOR_POR_ITEM').asCurrency;
	 if lValor > 0 then
			cdsItemGradeVLR_IPI.Value := lValor * cdsItemGradePRG_QTDE.Value
	 else
			if (cdsItemGradeIPI.Value > 0) then
				 cdsItemGradeVLR_IPI.Value :=  cdsItemGradeVlr_Total.Value *  (cdsItemGradeIPI.Value/100);

end;

procedure TFrmPedidoItem.cdsItemGradeNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.Cancel;
end;

procedure TFrmPedidoItem.cdsItemGradePRD_DESCChange(Sender: TField);

begin
  inherited;
  if not (cdsItemGradePRD_DESC.IsNull ) then
   rIndiceDesconto :=  BcdToDouble(cdsItemGradePRD_DESC.Value);

  // preço liquido
  if not (cdsItemGradePRG_BRUTO.IsNull ) then
   cdsItemGradePRECO_LIQU.Value :=
      uteis.RoundTo(BcdToDouble(cdsItemGradePRG_BRUTO.Value) * (1-(rIndiceDesconto/100)),-5);


end;


procedure TFrmPedidoItem.cdsItemGradePRG_BRUTOChange(Sender: TField);
begin
  inherited;
  rIndiceDesconto := 0;

  if not (cdsItemGradePRD_DESC.IsNull ) then
     rIndiceDesconto :=  BcdToDouble(cdsItemGradePRD_DESC.Value);

  // preço liquido
  if not (cdsItemGradePRG_BRUTO.IsNull ) then
     cdsItemGradePRECO_LIQU.Value :=
        uteis.RoundTo(BcdToDouble(cdsItemGradePRG_BRUTO.Value) * (1-(rIndiceDesconto/100)),-5);
end;

procedure TFrmPedidoItem.cdsItemGradePRG_QTDEChange(Sender: TField);
begin
  inherited;
  rIndiceDesconto := 0;

  if not (cdsItemGradePRD_DESC.IsNull ) then
     rIndiceDesconto :=  BcdToDouble(cdsItemGradePRD_DESC.Value);

  // preço liquido
  if not (cdsItemGradePRG_BRUTO.IsNull ) then
     cdsItemGradePRECO_LIQU.Value :=
        uteis.RoundTo(BcdToDouble(cdsItemGradePRG_BRUTO.Value) * (1-(rIndiceDesconto/100)),-5);
end;

procedure TFrmPedidoItem.cdsItemGradePRG_QTDEValidate(Sender: TField);
begin
  inherited;
  if (cdsItemGrade.FieldByName('PRG_QTDEAnterior').AsBCD > 0)
  and (cdsItemGrade.FieldByName('PRF_QTDE_ENV_PRODUCAO').Value > TField(Sender).Value ) then
  begin

       uteis.erro  (Pchar('Não se pode alterar a quantidade do item pois já foi enviada para a produção a quantidade de '+VarToStr(cdsItemGrade.FieldByName('PRF_QTDE_ENV_PRODUCAO').Value)+' itens'));
  end;
end;

procedure TFrmPedidoItem.CdsLoteProdutoPRDL_DATA_FABRICACAOGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
     if (SENDER.IsNull) OR (SENDER.AsDateTime=0) THEN
        TEXT := ''
     ELSE
        TEXT := DATETOSTR( SENDER.AsDateTime);
end;

function TFrmPedidoItem.ChamaCredito(iOrigem:integer;sVendedor:string):boolean;
var rValorCredito,rValorDebito:real;
begin
  rValorCredito := 0;
  rValorDebito := 0;
  Result := false;
  dataCadastros.sqlUpdate.Close;
  DataCadastros.SqlUpdate.sql.text := ' SELECT CASE WHEN CONTA = ''C'' then SUM(VALOR) END as VALORCREDITO, CASE WHEN CONTA = ''D'' then SUM(VALOR) END as VALORDEBITO '+
                                      ' FROM conta_corrente WHERE cod_vendedor = '+QuotedStr(sVendedor)+
                                      ' GROUP BY CONTA';
  dataCadastros.sqlUpdate.Open;
  dataCadastros.sqlUpdate.First;
  while not dataCadastros.sqlUpdate.eof do
  begin
    if DataCadastros.sqlUpdate.FieldByName('VALORCREDITO').Value > 0 then
      rValorCredito := DataCadastros.sqlUpdate.FieldByName('VALORCREDITO').Value;
    if DataCadastros.sqlUpdate.FieldByName('VALORDEBITO').Value > 0 then
      rValorDebito := DataCadastros.sqlUpdate.FieldByName('VALORDEBITO').Value;
    dataCadastros.sqlUpdate.Next;
  end;
  CurTotVerba.Value := rValorCredito - rValorDebito;
  rValorCredito := 0;
  rValorDebito := 0;
  Result := false;
  dataCadastros.sqlUpdate.Close;
  DataCadastros.SqlUpdate.sql.text := ' SELECT CASE WHEN CONTA = ''C'' then SUM(VALOR) END as VALORCREDITO, CASE WHEN CONTA = ''D'' then SUM(VALOR) END as VALORDEBITO '+
                                      ' FROM conta_corrente WHERE cod_vendedor = '+QuotedStr(sVendedor)+
                                      ' and ((documento <> '''+FrmPedido.SqlCdsPedidoPED_CODIGO.Value + ''')'+
                                      ' or (documento = '''+FrmPedido.SqlCdsPedidoPED_CODIGO.Value+''' and CONTA = ''D'' ))'+
                                      ' GROUP BY CONTA';
  dataCadastros.sqlUpdate.Open;
  dataCadastros.sqlUpdate.First;
  while not dataCadastros.sqlUpdate.eof do
  begin
    if DataCadastros.sqlUpdate.FieldByName('VALORCREDITO').Value > 0 then
      rValorCredito := DataCadastros.sqlUpdate.FieldByName('VALORCREDITO').Value;
    if DataCadastros.sqlUpdate.FieldByName('VALORDEBITO').Value > 0 then
      rValorDebito := DataCadastros.sqlUpdate.FieldByName('VALORDEBITO').Value;
    dataCadastros.sqlUpdate.Next;
  end;
  if (not dataCadastros.sqlUpdate.IsEmpty) then
  begin
    if iOrigem = 1 then
    begin
      CurPossivel.Value := rValorCredito - rValorDebito;
      CurUsarValor.Value := 0;
      pnVerba.Top := cbTabelaPrecoMultiplo.Top;
     // pnVerba.Left := Label14.Left-CurQuantidade.Width;
   //   pnVerba.Parent := Panel1;
      pnVerba.Left := 12;
      AnimateWindow(pnVerba.Handle, 500, AW_HOR_POSITIVE or AW_SLIDE or  AW_ACTIVATE);
      pnVerba.Visible := true;
      if CurUsarPerc.CanFocus then
        CurUsarPerc.SetFocus;
    end;
      Result := (rValorCredito - rValorDebito) > 0;
  end;
  Result := TRUE;
end;



function TFrmPedidoItem.ConsultaPersonalizada: string;
var
 condicoes : TStringList;
 varperc : double;
 Min,Max: double;
 i : integer;
 sqlwhere : string;
begin

 condicoes := TStringList.Create;
 varperc := StrToFloat(EdVariacao.Text);
 varperc := ( varperc/100);
 try
   if cbDescricao.Text <> '' then
     condicoes.Add('PD.PRD_DESCRI like '+QuotedStr(cbDescricao.Text +'%'));

   if (cbMedInterno.Text <> '') and IsNumeric(cbMedInterno.Text)  then //and (Length(cbMedInterno.Text)>1) then
   begin

     max:=StrToFloat(cbMedInterno.Text)* (1+( varperc));
     min:=StrToFloat(cbMedInterno.Text)* (1-( varperc));

     condicoes.Add('INTERNO BETWEEN '+ FloatToSQL(min) + ' and ' + FloatToSQL(max));
   end;
   if (cbMedExterno.Text <> '') and IsNumeric(cbMedExterno.Text)  then //and (Length(cbMedExterno.Text)>1) then
   begin
     max:=StrToFloat(cbMedExterno.Text)* (1+( varperc));
     min:=StrToFloat(cbMedExterno.Text)* (1-( varperc));

     condicoes.Add('externo BETWEEN '+ FloatToSQL(min) + ' and ' + FloatToSQL(max));
   end;
   if (cbMedAltura1.Text <> '') and IsNumeric(cbMedAltura1.Text)  then //and (length(cbMedAltura1.Text)>1) then
   begin
     max:=StrToFloat(cbMedAltura1.Text)* (1+( varperc));
     min:=StrToFloat(cbMedAltura1.Text)* (1-( varperc));

     condicoes.Add('altura1 BETWEEN '+ FloatToSQL(min) + ' and ' + FloatToSQL(max));
   end;
   if (cbMedAltura2.Text <> '') and IsNumeric(cbMedAltura2.Text)  then //and (length(cbMedAltura2.Text)>1)then
   begin
     max:=StrToFloat(cbMedAltura2.Text)* (1+( varperc));
     min:=StrToFloat(cbMedAltura2.Text)* (1-( varperc));

     condicoes.Add('altura2 BETWEEN '+ FloatToSQL(min) + ' and ' + FloatToSQL(max));
   end;

   for i:= 0 to condicoes.Count-1 do
   begin
    if i>0 then
     sqlwhere :=sqlwhere+ ' and '+ condicoes[i]
    else
     sqlwhere :='WHERE '+ condicoes[i];

   end;

 finally
   FreeAndNil(condicoes);
 end;

  result := sqlwhere;
  inherited;

end;

procedure TFrmPedidoItem.CurUsarValorChange(Sender: TObject);
begin
  inherited;
  if CurUsarValor.Value > 0 then
    CurUsarPerc.Value := 0;
  if (CurUsarValor.Value * CurQuantidade.Value) <= CurPossivel.value then
    edUsando.Text := FormatFloat('#0.000',CurUsarValor.Value * CurQuantidade.Value)
  else
    edUsando.Text := '0,000'
end;

procedure TFrmPedidoItem.dbgLancarinfoDrawColumnCell(Sender: TObject; const Rect: TRect;
                DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
//  inherited;
  if not cdsItemGrade.IsEmpty then
  begin
   if column.FieldName = 'PRG_QTDE' then
   begin
      TDBGrid(Sender).Canvas.Brush.Color := clSkyBlue;
      //Column.Font.Style := [fsBold];
      if (gdSelected in State) or (gdFocused in State)  then
         TDBGrid(Sender).Canvas.Font.Color :=  clBlack;
   end;
   if (Column.FieldName = 'COMISSAO') OR
      (Column.FieldName = 'Vlr_IPI')  OR
      (Column.FieldName = 'VLR_TOTAL') OR
      (Column.FieldName = 'VLR_ST')   then
      TDBGrid(Sender).Canvas.Brush.Color := $00D7D7D7;
   end;
  TDBGrid(Sender).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFrmPedidoItem.dbgLancarinfoEnter(Sender: TObject);
begin
	inherited;
	ACBrEnterTab1.EnterAsTab := False;
end;

procedure TFrmPedidoItem.dbgLancarinfoExit(Sender: TObject);
begin
  inherited;
	ACBrEnterTab1.EnterAsTab := True;
end;

procedure TFrmPedidoItem.dbgLancarinfoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
	if  Key = VK_DELETE then
			Key := VK_NONAME;
	if  ( Key = VK_INSERT )
	 or  ( (Key = VK_DOWN) and (cdsItemGrade.RecNo = cdsItemGrade.RecordCount) ) then
				 key := 0;
	if  ( Key = VK_TAB ) and ( cdsItemGrade.RecNo = cdsItemGrade.RecordCount )
			 and ( TDBGrid(Sender).SelectedIndex = RetIdxUltimaColVisivel(TDBGrid(Sender)) ) then
		 key := 0 ;
	if (key = VK_RETURN) and ( cdsItemGrade.RecNo = cdsItemGrade.RecordCount ) then
		 key := VK_UP;
	if (key = VK_RETURN) then
		 dbgLancarinfo.SetFocus;
end;

procedure TFrmPedidoItem.dbgLancarinfoKeyPress(Sender: TObject; var Key: Char);
begin
	inherited;
	If Key = #13 Then
  begin
		 if cdsItemGrade.State  in dsEditModes then
				cdsItemGrade.Post;
		 cdsItemGrade.Next;
		 dbgLancarinfo.SetFocus;
	end;
end;

procedure TFrmPedidoItem.DesabilitarBuscaProduto(Habilita: Boolean);
begin
  cbReferencia.Enabled:= Habilita;
  cbDescricao.Enabled := Habilita;
  cbBarras.Enabled:= Habilita;
  cbCodigos.Enabled := Habilita;
  cbEndereco.Enabled := Habilita;
 if DBINICIO.Empresa.bPMT_HABILITA_MEDIDAPRD then
 begin
   GbBusca.Height := 106;
   lbDesc1.Caption := BuscaUmDadoSqlAsString('SELECT PMT_HABILITA_MEDIDAPRD_DESC1 FROM PRMT0001 WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo));
   lbDesc2.Caption := BuscaUmDadoSqlAsString('SELECT PMT_HABILITA_MEDIDAPRD_DESC2 FROM PRMT0001 WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo));
   lbDesc3.Caption := BuscaUmDadoSqlAsString('SELECT PMT_HABILITA_MEDIDAPRD_DESC3 FROM PRMT0001 WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo));
   lbDesc4.Caption := BuscaUmDadoSqlAsString('SELECT PMT_HABILITA_MEDIDAPRD_DESC4 FROM PRMT0001 WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo));

 end
 else
   GbBusca.Height := 65;
   cbMedInterno.Enabled := Habilita AND DBINICIO.Empresa.bPMT_HABILITA_MEDIDAPRD;
end;

procedure TFrmPedidoItem.AtualizaUltimoPreco;
var
  prdRefer, cor : string;
begin
  if CbGrade.IdRetorno = '' then
    exit;
  DataCadastros.sqlUpdate.Close;
  DataCadastros.SqlUpdate.sql.text :=SQLDEF('TABELAS','SELECT * FROM prd_grade T1 ','WHERE T1.prg_registro = '+QuotedStr(CbGrade.IdRetorno),'','t1.');
  DataCadastros.sqlUpdate.Open;

  if DBInicio.GetParametroSistema('PMT_PEDIDO_IND_PLASTICA') = 'S' then
    prdRefer := IntToStr(cbReferencia.CdS.fieldByName('PRD_REFER').AsInteger)
  else
    prdRefer := cbReferencia.CdS.fieldByName('PRD_REFER').AsString;

  if cbCor.idRetorno = '' then
    Cor := 'XX'
  else
  begin
//    if StrToInt(cbCor.idRetorno) <= 9 then
//      Cor := '0' + cbCor.idRetorno
//    else
      Cor := cbCor.idRetorno;
  end;


  prdCoCodigoOriginal :=
    prdRefer +
    IntToStr(Trunc(DataCadastros.sqlUpdate.FieldByName('PRG_MEDIDA_1').AsCurrency * 10)) +
    IntToStr(Trunc(DataCadastros.sqlUpdate.FieldByName('PRG_MEDIDA_2').AsCurrency)) +
    IntToStr(Trunc(DataCadastros.sqlUpdate.FieldByName('PRG_MEDIDA_3').AsCurrency * 1000))  +
    Cor;


    if FrmPedido.edCliente.CdS.Active then
      OpenAux2('SELECT FIRST 1 PED_DTENTRADA, PRF_PRECO, prf_qtde ' +
              ' FROM PED_IT01 it ' +
              '	JOIN PED0000 p ON (p.PED_CODIGO = IT.PED_CODIGO AND IT.EMP_CODIGO = P.EMP_CODIGO)'+
              ' JOIN NF0001 n ON (n.PED_CODIGO = p.PED_CODIGO) ' +
              ' JOIN NF_IT01 ni ON (ni.NF_IT_NOTANUMER = n.NF_NOTANUMBER) ' +
//              ' JOIN PRD_GRADE T3 ON (T3.PRG_REGISTRO = ni.PRG_REGISTRO) ' +
              ' WHERE it.PRDCO_CODIGO_ORIGINAL  =  ' + qStr( prdCoCodigoOriginal)+
              ' AND P.EMP_CODIGO = '+QuotedStr (DBInicio.Empresa.EMP_CODIGO) +
              '	AND P.CLI_CODIGO = ' +QuotedStr(FrmPedido.edCliente.CdS.FieldByName('CLI_CODIGO').AsString) +
//              ' AND T3.PRG_REGISTRO = ' + FrmPedido.SqlCdsPedidoItemPRG_REGISTRO.AsString +
              ' AND PED_SITUACAO NOT IN (''F'',''C'') ' +
              '	AND PRF_QTDEFAT > 0 '+
              ' ORDER BY P.PED_DTENTRADA DESC, n.NF_NOTANUMBER DESC '
              );
     if not qAux2.IsEmpty then
     begin
        pUltimoPreco.Caption  := 'Último preço : '+ FormatFloat('R$ #,###0.00', qaux2.FieldByName('PRF_PRECO').AsFloat) +' - ' +
                                 ' Data : '+ DateToStr(qaux2.FieldByName('PED_DTENTRADA').AsDateTime) + '-'+
                                 ' Qtde : '+ FloatToStr(qaux2.FieldByName('prf_qtde').AsFloat) ;
       CurPrecoBruto.Value := qaux2.FieldByName('PRF_PRECO').AsFloat;
     end
     else
     begin
        pUltimoPreco.Caption := 'Sem vendas faturadas para este cliente, grade e cor.' ;
        // CurPrecoBruto.Value := 0;

     end;

end;



function TFrmPedidoItem.buscaAliquotaICMS(prdRefer, cfopCodigo: string): double;
var
  NCM, OrigemMercadoria  : string;
  consumidorFinal: boolean;
  cliModoTribSt, cnaeRegistro: string;

begin
  if cfopCodigo = '' then
  begin
    Result := 0;
    Exit;
  end;

  if FormFatPedido = nil then
    FormFatPedido := TFormFatPedido.Create(Self);
  with FormFatPedido do
  begin
    // ConsumidorFinal := FrmPedido.edCliente.CdS.FieldByName('CLI_CONSFINAL').AsString;
    // ConsumoProprio :=  FrmPedido.edCliente.CdS.FieldByName('CLI_CONSU_PROPRIO').AsString;
    // regimeTributario := FrmPedido.edCliente.CdS.FieldByName('CLI_REGIME_TRIBUTARIO').AsString;
    NCM := DBInicio.BuscaUmDadoSqlAsString('SELECT  IPI_CODIGO FROM PRD0000 WHERE PRD_REFER = ' + QuotedStr(prdRefer));
    OrigemMercadoria := DBInicio.BuscaUmDadoSqlAsString('SELECT PRD_ORIGEM FROM PRD0000 WHERE PRD_REFER = ' + QuotedStr(prdRefer));
    wauxCST := DBInicio.BuscaUmDadoSqlAsString('SELECT STB_TRIBUTACAO FROM PRD0000 WHERE PRD_REFER = ' + QuotedStr(prdRefer));

    if FrmPedido.edCliente.CdS.active  then
    begin
      qClientes.Close;
      qClientes.sql.text := 'SELECT * '+
                         'FROM CLI0000 '+
                         'Where CLI_CODIGO = '+qStr(FrmPedido.edCliente.CdS.FieldByName('CLI_CODIGO').AsString) +
                         iif(DBInicio.empresa.wPMT_FATURA_MULTIEMPRESA,
                              ConcatSe( ' and ',dbInicio.ExclusivoSql('CLIENTES', dbInicio.Emp_Codigo) ),
                              ConcatSe( ' and ',dbInicio.ExclusivoSql('CLIENTES') ))
        ;
      qClientes.Open;
      // consumidorFinal := qClientesCLI_CONSFINAL.AsString = 'S';
      consumidorFinal := FrmPedido.SqlCdsPedidoCLI_CONSFINAL.AsString = 'S';
      cliModoTribSt := qCLientesCLI_MODO_TRIB_ST.AsString;
      cnaeRegistro := qCLientesCNAE_REGISTRO.AsString;
    end
    else
    begin
      consumidorFinal := FrmPedido.cbOrsConsFinal.ItemIndex = 0;
      cliModoTribSt := '';
      cnaeRegistro := '';
    end;


    IniciaVarItem;

    bRegra := BuscaRegra ( NCM, FrmPedido.EdClienteUF.Text, cfopCodigo, OrigemMercadoria ) ;
     LeRegra(bRegra, cfopCodigo);

    bIsentarICMS := MatchStr(wCST_CODIGO,['30','60']) ;
    if MatchStr(wCST_CODIGO,['10','30','70'])   then
       wTemSubs := 'S'
    else
       wTemSubs := 'N';

    if (dbInicio.GetParametroSistema('PMT_PEDIDO_IND_PLASTICA') = 'S')  then
    begin
      if (BuscaUmDadoSqlAsInteger(
         ' SELECT COUNT(rfpc.PRD_REFER) ' +
         ' FROM OPE_REGRA opr ' +
         '   LEFT JOIN REGRA_FISCAL_PROD_CAP rfpc ON (rfpc.OPR_REGISTRO = opr.OPR_REGISTRO) ' +
         '   LEFT JOIN OPE0000 o ON o.OPE_CODIGO = opr.OPE_CODIGO_ORIGEM ' +
         ' WHERE rfpc.PRD_REFER = ' + QuotedStr(prdRefer) +
         '   AND rfPC.CAP_CODIGO = ' + IntToStr(StrToIntDef(cbCapacidade.idRetorno, 0))
      ) > 0) and (wCST_CODIGO <> '00')
      then wTemSubs := 'S'
      else wTemSubs := 'N'
      ;
    end;


										//wPRODUTO := CdsItemPedidoPRD_REFER.AsString + ' - ' + CdsItemPedidoPRF_PRDDESCRI.AsString;
										wValorProdIndividual := Uteis.RoundTo ( CurTotal.Value , -2 );
										wCest := LerCestProduto( prdRefer );
										BuscaIBPT( wClassificacaoFiscal, wIBPTAliqImp, wIBPTAliqNac, wIBPTAliqEst );
										if ((OrigemMercadoria = '1') or (OrigemMercadoria = '2') or (OrigemMercadoria = '3')) then  //1,2,3 -> importados
											 wIbptAliqFed := wIBPTAliqImp
										Else
											 wIbptAliqFed := wIBPTAliqNac;
                    wConsumidor := consumidorFinal;
                    wVenda := (qOperFiscOPE_TIPO_OPERACAO.AsString = 'V');

                    if (wConsumidor or (DBInicio.Empresa.fPMT_VALOR_APROX_TRIB  ='T')) and wVenda then // se (consumidor ou mostra ibpt para todos) e venda então
                    begin
                         if fwPMT_TRIB_NF then
                            wValorAproxTributosItem := Uteis.RoundTo( wValorProdIndividual * ( (fALIQ_CREDITO)/100 ), -2)
                         else
                           wValorAproxTributosItem := Uteis.RoundTo( wValorProdIndividual * ( (wIbptAliqFed + wIbptAliqEst )/100 ), -2);
                         wValorAproxTributosTot := wValorAproxTributosTot + wValorAproxTributosItem ;
                    end;
										wValorProd := Uteis.RoundTo ( wValorProd + wValorProdIndividual , -2 );

										//verifica se cfop entra no calculo do faturamento do contas a receber
										if (qOperFiscOPE_SEMVLCOM.AsString = 'N') or ((qOperFiscOPE_SEMVLCOM.AsString = 'S') and (qOperFiscOPE_SEMVLCOM_MOSTRAF.AsString = 'S')) then
                    begin
											 wValorProdFaturar := Uteis.RoundTo ( wValorProdFaturar + wValorProdIndividual, -2 );
                       geraFaturamento := True;
                    end;

										//
										OpenAux ( 'Select PR1.PRD_ALIQICM, PR1.PRD_ICMSUBS, PG1.PGR_COMISS, PR1.PRD_TEMSUB, PR1.STB_TRIBUTACAO, PR1.IPI_CODIGO, COALESCE(PG1.PGR_ATUALIZA_ESTOQUE,''S'') AS PGR_ATUALIZA_ESTOQUE '+
															'from PRD0000 PR1 '+
															'     left join PRD_GRUPO PG1 ON PR1.PGR_CODIGO = PG1.PGR_CODIGO '+
															'where PR1.PRD_REFER = '+qStr(prdRefer)+
                              iif(DBInicio.empresa.wPMT_FATURA_MULTIEMPRESA,
                                   ConcatSe( '  and pr1.', dbInicio.exclusivoSql( 'PRODUTOS' , dbInicio.Emp_Codigo) ),
                                   ConcatSe( '  and pr1.', dbInicio.exclusivoSql( 'PRODUTOS'  )) ));

										// Comissão. Grava na FAT0000 o Total de item sem comissao para calculo de comissao
										if (qAux.FieldByName('PGR_COMISS').AsString = 'N') then
											 wTotalSemComissao := Uteis.RoundTo ( CurTotal.Value , -2 ) ;
										// Se aliq ICMS informada no produto, assume aliquota do produto
										wCadProdAliqIcms := qAux.FieldByName('PRD_ALIQICM').AsFloat;
										if wCadProdAliqIcms > 0 then
												 wIcmsAliq := wCadProdAliqIcms;
										//Achar Regra da Classificação Fiscal por Estado
										if (qAux.FieldByName('IPI_CODIGO').AsString <> '') then
										begin
                        wIcmsAliq :=BuscaUmDadoSqlasFloat (  'SELECT IPII_ALIQUOTA FROM IPI0000_ICMS '+
                                                             'WHERE IPI_CODIGO = ' + QStr(qAux.FieldByName('IPI_CODIGO').AsString) +
                                                             ' and IPII_ESTADO = ' + QStr(FrmPedido.EdClienteUF.Text)+
                                                             ConcatSe( ' and ' , dbInicio.ExclusivoSql('TABELAS') ) );
												 if wIcmsAliq > 0 then
												 begin
															wALiqICmsCliente := wIcmsAliq;
															wCadProdAliqIcms := wIcmsAliq;
												 end;
										end;


                    // Salva credito de ICMS se a empresa é do simples
										if ((fOPT_SIMPLES = 'S') and (fALIQ_CREDITO > 0)) then
											 wValorCredSimples := Uteis.RoundTo ( (wValorProdIndividual-wDescontoIndividual)   * fALIQ_CREDITO / 100 , -2 );






										// Tributar ICMS verificar em Natureza da Operação
										// quando a empresa é do simples, preciso calcular o icms normal para fazer os calculos da substituição tributaria, se houver
										// antes de gravar sera zerado os valores de base e valor de icms
										// CST 40, 41 e 50 nao deve tributar ICMS
										if ((wCST_CODIGO <> '40') and (wCST_CODIGO <> '41') and (wCST_CODIGO <> '50')) or bIsentarICMS then
										begin
												 if (qOperFiscOPE_TRIBICMS.AsString = 'S') or ((fOPT_SIMPLES = 'S') and (GetCSOSN <> 900) and (femp_crt = '1')) then
												 begin
															// OPERAÇÃO FISCAL -Tributar ICMS = 'S'
															// aplicar aliquota do ICMS
															// não se preocupar, logo abaixo o sistema vai aplicar desconto nos icms se tiver desconto na nota

															if wUfAliqIcmsInterestadlRegra > 0 then
															begin
																	 wBaseIcmsIndividual := Uteis.RoundTo ( CurTotal.Value, -2);

																	if (wBaseIcmsIndividual > 0) and (wAliqreduzidaICMS > 0) then
																		 wBaseIcmsIndividual := wBaseIcmsIndividual - (wBaseIcmsIndividual * (wAliqreduzidaICMS / 100));

																	if (wAliqreduzidaICMS <> 100) then    // ICMS NORMAL
																			begin
																			// Produtos importandos tributar com aliquota diferenciada 4%
																		//	if (wExterior = 'N') and ((CdsItemPedidoPRD_ORIGEM.AsString = '1') or (CdsItemPedidoPRD_ORIGEM.AsString = '2') or (CdsItemPedidoPRD_ORIGEM.AsString = '3') or (CdsItemPedidoPRD_ORIGEM.AsString = '8') ) then
//																				 begin
//																					 wUfAliqIcmsInterestadlRegra:= qIcmsICMS_PROD_IMPORTADO.AsFloat;
//																					 wIcmsAliq := wUfAliqIcmsInterestadlRegra;
//																				 end
//																				 else

{																						 wIcmsAliq := wUfAliqIcmsInterestadlRegra;  }

                                        if (wExterior = 'N') and (qIcmsICMS_PROD_IMPORTADO.AsFloat > 0) and
                                           (MatchStr(BuscaUmDadoSQLAsString('SELECT PRD_ORIGEM FROM PRD0000 p WHERE PRD_REFER = ' + QuotedStr(prdRefer)),['1','2','3','8'])) then
                                        begin
                                          wIcmsAliq := qIcmsICMS_PROD_IMPORTADO.AsFloat;
                                          wUfAliqIcmsInterestadlRegra := qIcmsICMS_PROD_IMPORTADO.AsFloat;
                                        end
                                        else wIcmsAliq := wUfAliqIcmsInterestadlRegra ;

   																		  wValorIcmsIndividual := wValorIcmsIndividual + Uteis.RoundTo ( ((CurTotal.Value) - wDescontoIndividual) *  wUfAliqIcmsInterestadlRegra / 100, -2);
																			end;
															end
															else
															if (wForaEstSN = 'S') then // venda interestadual
															begin
																	wBaseIcmsIndividual := Uteis.RoundTo ( (CurTotal.Value) - wDescontoIndividual, -2);

																	if (wBaseIcmsIndividual > 0) and (wAliqreduzidaICMS > 0) then
																		 wBaseIcmsIndividual := wBaseIcmsIndividual - (wBaseIcmsIndividual * (wAliqreduzidaICMS / 100));

																	if (wAliqreduzidaICMS <> 100) then      // é icms normal
																	begin
																		 // Produtos importandos tributar com aliquota diferenciada 4%
																		 if (wExterior = 'N') and ((OrigemMercadoria = '1') or (OrigemMercadoria = '2') or (OrigemMercadoria = '3') or (OrigemMercadoria = '8') ) then
																					begin
																					 wUfAliqIcmsForaEst:= qIcmsICMS_PROD_IMPORTADO.AsFloat;
																					 wIcmsAliq := wUfAliqIcmsForaEst;
																					end
																		 else
																				 wIcmsAliq := wUfAliqIcmsForaEst;

																			wValorIcmsIndividual := wValorIcmsIndividual + Uteis.RoundTo(((Curtotal.Value) - wDescontoIndividual) * wUfAliqIcmsForaEst / 100, -2);

																	end;

															end
															else
															if wCadProdAliqIcms > 0 then
															begin
																	// com aliquota no produto
																	// Incidência de ICMS VIA - PRODUTO
																	// Aliquota estadual -cadastro do produto é a tributação da UF da EMPRESA

																	wBaseIcmsIndividual := Uteis.RoundTo (CurTotal.Value,-2);

																	if (wBaseIcmsIndividual > 0) and (wAliqreduzidaICMS > 0) then
																		 wBaseIcmsIndividual := wBaseIcmsIndividual - (wBaseIcmsIndividual * wAliqreduzidaICMS / 100);

																	if (wAliqreduzidaICMS <> 100) then
																	begin
																			 wValorIcmsIndividual := wValorIcmsIndividual +
																															 Uteis.RoundTo(CurTotal.Value * wCadProdAliqIcms / 100, -2);
																			 wIcmsAliq := wCadProdAliqIcms;
																	end;
															end
															else  // sem aliquota no produto- usa da tabela do estado
															begin

																	if (fOPT_SIMPLES = 'S') or (wForaEstSN = 'N') then
																	begin
																			 wBaseIcmsIndividual := Uteis.RoundTo( Curtotal.Value , -2 );

																			 if (wBaseIcmsIndividual > 0) and (wAliqreduzidaICMS > 0) then
																					wBaseIcmsIndividual := wBaseIcmsIndividual - (wBaseIcmsIndividual * wAliqreduzidaICMS / 100);

																			 if (wAliqreduzidaICMS <> 100) then
																			 begin
																						wValorIcmsIndividual := wValorIcmsIndividual + Uteis.RoundTo ( ((CurTotal.Value) - wDescontoIndividual) * wALiqICmsCliente / 100 , -2 );
																						wIcmsAliq := wALiqICmsCliente;
																			 end;
																	end;

															end;

															// Aplicar o valor do desconto no ICMS (com rateio) antes de acrescentar outros na base do ICMS
//															if CdsPedidosPED_DESCTOVL.AsFloat > 0 then
//															begin
//   														     wDesctoValorICMS := Uteis.RoundTo ( (wIcmsAliq / 100) * (CdsPedidosPED_DESCTOVL.AsFloat/wValorProdGeral*wValorProdIndividual) , -2 );
																	 // calcula a base do icms referente ao icms com desconto
//																	 wBaseIcmsIndividual := wValorProdIndividual - wDescontoIndividual;
//															end
//															else
																	wDesctoValorICMS := 0;

															// Acrescentar IPI na base do ICMS; operacao para consumidor final
															if (qOperFiscOPE_IPINABASEICMS.AsString = 'S') then
															begin
																	 wBaseIcmsIndividual := Uteis.RoundTo ( wBaseIcmsIndividual + wValorIPI + wIPIDESPIMPORT, -2);
																	 wValorIcmsIndividual := Uteis.RoundTo ( wBaseIcmsIndividual * wIcmsAliq / 100 ,-2);
															end;

															// Incluir frete rateando o valor do frete e desp. na base do ICMS

															if (qOperFiscOPE_FRETENABASE.AsString = 'S') and ((FrmPedido.CurFrete.Value > 0) or (FrmPedido.CurSeguro.Value > 0) or (FrmPedido.CurDespesasAcessorias.Value > 0)) then
															begin
																	 wRateioFreteSeguroDesp := Uteis.RoundTo( (FrmPedido.CurFrete.Value + FrmPedido.CurSeguro.Value + FrmPedido.CurDespesasAcessorias.Value) / wValorProdGeral * (CurTotal.Value), -2);
																	 wBaseIcmsIndividual := Uteis.RoundTo ( wBaseIcmsIndividual + wRateioFreteSeguroDesp,-2);
																	 wValorIcmsIndividual := Uteis.RoundTo ( (wBaseIcmsIndividual * wIcmsAliq) / 100, -2);
															end;
                               wBaseIcms :=  wBaseIcmsIndividual ; //base de icms sem redução da base
															//aplicando o percentual (multiplicador) de diminuição da base do ICMS
															if qOperFiscOPE_INDICE_IMP.AsFloat > 0 then
															begin
																	 wBaseIcmsIndividual := Uteis.RoundTo ( wBaseIcmsIndividual - (wBaseIcmsIndividual * qOperFiscOPE_INDICE_IMP.AsFloat / 100),-2);
																	 wValorIcmsIndividual := Uteis.RoundTo ( wValorIcmsIndividual - (wValorIcmsIndividual * qOperFiscOPE_INDICE_IMP.AsFloat) / 100,-2);
															end;

															//aplicando o fator (divisor) de aumento para base do ICMS
															if qOperFiscOPE_AUMEN_ICMS.AsFloat > 0 then
															begin
																	 wBaseIcmsIndividual := Uteis.RoundTo ( wBaseIcmsIndividual / qOperFiscOPE_AUMEN_ICMS.AsFloat,-2 );
                                   wValorIcmsIndividual := Uteis.RoundTo ( (wBaseIcmsIndividual * wIcmsAliq) / 100, -2);
																	 //wValorIcmsIndividual := Uteis.RoundTo ( wValorIcmsIndividual / qOperFiscOPE_AUMEN_ICMS.AsFloat, -2 );
															end;

															// calcular redução da aliquota do ICMS que consta na tabela do ICMS do estado
															// BASE ICMS * REDUZIDA / ALIQUOTA INTERNA
															if (wAliqreduzidaICMS > 0) and (wAliqreduzidaICMS <> 100) then
															begin
																	 // a aliquota reduzida é calculada sobre a base do icms normal
																	 wValorIcmsIndividual := Uteis.RoundTo ( wBaseIcmsIndividual * wAliqreduzidaICMS / 100 , -2);
																	 // a base no icms normal agora é reduzida pela dividao do vl do icms pela aliq normal
																	 wBaseIcmsIndividual := Uteis.RoundTo ( wBaseIcmsIndividual * wAliqreduzidaICMS / wIcmsAliq, -2 );
															end;

															// Aplicar REDUÇÃO PERCENTUAL do valor do ICMS . Não aplicar reducao para empresa do simples pois so fazendo calculo para achar valor ST
															if (qOperFiscOPE_REDU_ICM.AsFloat > 0) then //and (fOPT_SIMPLES <> 'S') then
																wValorIcmsIndividual := Uteis.RoundTo ( wValorIcmsIndividual - (wValorIcmsIndividual * qOperFiscOPE_REDU_ICM.AsFloat/ 100),-2);

												 end;  // fim do laço ICMS

												 // ratear frete+seguro+despesas para substitução tributária
												 // na legislação da substituição tributária sempre é somado estes valores na base da substituição
												 if (wTemSubs = 'S') then
												 begin
															if wIcmsAliq=0 then
																 wIcmsAliq := wUfAliqIcmsForaEst;
															wRateioFreteSeguroDesp := Uteis.RoundTo ( (FrmPedido.CurFrete.Value + FrmPedido.CurSeguro.Value + FrmPedido.CurDespesasAcessorias.Value) / wValorProdGeral * (CurTotal.Value), -2);
                              wRateioFreteSeguroDesp := wRateioFreteSeguroDesp - wDescontoIndividual;
                              // wRateioFreteSeguroDesp := wRateioFreteSeguroDesp - (cdsPedidosPED_DESCTOVL.AsFloat / CdsItemPedido.RecordCount);
															wBaseValorSubs := Uteis.RoundTo ( wBaseValorSubs + wRateioFreteSeguroDesp, -2);
												 end;

										end;  // fim do laço CST

                    if not bIsentarICMS then
                    begin
                      // {Totalizando as base do Icms e o Vlr do Icms
                      wTotalBaseIcmsIndividual {BASE icms} := Uteis.RoundTo ( wTotalBaseIcmsIndividual + wBaseIcmsIndividual, -2);
                      wTotalBaseVlIcmsIndividual {valor icms} := Uteis.RoundTo ( wTotalBaseVlIcmsIndividual + wValorIcmsIndividual, -2);

                      wTotalBaseIcms := Uteis.RoundTo ( wTotalBaseIcms + wBaseIcms , -2);
                      wTotalVlBaseIcms := Uteis.RoundTo ( wTotalVlBaseIcms + wValorIcms, -2);
                    end;
										if ((consumidorFinal) or (not (wTemSubs = 'S'))) then
										begin
												 // É consumidor final ou É venda interna -UF do cliente e da empresa emissora diferentes ou
												 wValorSubs := 0;
												 wBaseValorSubs := 0;
										end
										else // cliente nao é consumidor então aplicar MVA para a SUB.TRIB.
										begin
												 if (wTemSubs = 'S') then    // regras st
												 begin

															if lIsProdutoEspecifico and lIsMedicamento then
															begin
																	 wBaseValorSubs := Uteis.RoundTo( (CurQuantidade.Value *  wPMC) * ( wReducaoBaseST / 100)  , -2 );
																	 wBaseValorSubs := Uteis.RoundTo( (CurQuantidade.Value *  wPMC) - wBaseValorSubs , -2 );
																	 wIcmNoEstado :=   Uteis.RoundTo( (CurTotal.Value) * ( wIcmsAliq / 100 ) , -2 );
																	 wIcmForaEstado := Uteis.RoundTo( wBaseValorSubs * (wUfAliqIcmsSubCli / 100), -2) ; // valor icm fora
																	 wValorSubs := wIcmForaEstado - wIcmNoEstado;

																	 if (wValorSubs > 0) then
																	 begin
																				wTotalBaseValorSubs := wTotalBaseValorSubs + wBaseValorSubs ;
																				wTotalValorSubs := wTotalValorSubs + wValorSubs ;
																	 end
																	 else
																			 wBaseValorSubs := 0;
															end
															else  // Verifica se o ST não é por CNAE
															if (cliModoTribSt = 'CNAE')
                              and ( BuscaUmDadoSqlAsFloat('SELECT CNAE_CARGA_TRIB_MEDIA FROM CNAE WHERE CNE_REGISTRO = ' + cnaeRegistro) > 0)
                              then
															begin
																	 wBaseValorSubs := Uteis.RoundTo ( wBaseValorSubs + (CurTotal.Value), -2);
																	 wBaseValorSubs := wBaseValorSubs + wRateioFreteSeguroDesp;
																	 // Reducao da Base ST
																	 if (wReducaoBaseST > 0) and (wBaseValorSubs > 0) then
																		 wBaseValorSubs := wBaseValorSubs - (wBaseValorSubs * (wReducaoBaseST / 100));

																	 wCalBaseValorSubs := ((((wBaseValorSubs - wValorIPIIndividual) * (wUfAliqIcmsForaEst / 100)) + (wBaseValorSubs
                                   *
                                   (BuscaUmDadoSqlAsFloat('SELECT CNAE_CARGA_TRIB_MEDIA FROM CNAE WHERE CNE_REGISTRO = ' + cnaeRegistro) / 100))) / (wUfAliqIcmsSubCli / 100));

																	 wValorSubs := wBaseValorSubs * (BuscaUmDadoSqlAsFloat('SELECT CNAE_CARGA_TRIB_MEDIA FROM CNAE WHERE CNE_REGISTRO = ' + cnaeRegistro)  / 100);
																	 wBaseValorSubs := wCalBaseValorSubs;

																	 if (wValorSubs > 0) then
																	 begin
																				wTotalBaseValorSubs := Uteis.RoundTo ( wTotalBaseValorSubs + wBaseValorSubs, -2);
																				wTotalValorSubs := Uteis.RoundTo ( wTotalValorSubs + wValorSubs, -2);
																	 end
																	 else
																			 wBaseValorSubs := 0;
															end
															else
															begin
																	 // Base Calc ST
																	 wBaseValorSubs := wBaseValorSubs + Uteis.RoundTo ( curTotal.Value, -2);
																	 wBaseValorProd := wBaseValorProd + Uteis.RoundTo ( CurTotal.Value, -2);

																	 //Reducao da Base ST
																	 if (wReducaoBaseST > 0) and (wBaseValorSubs > 0) then
																			wBaseValorSubs := wBaseValorSubs - (wBaseValorSubs * wReducaoBaseST / 100);

																	 // UF destino
																	 if (wUfAliqIcmsSubCliRegra > 0) then
																			wUfAliqIcmsSubCli := wUfAliqIcmsSubCliRegra;

																	 // Regra Especial Calc Difal ST
                                   // nova regra de cálculo difal para todos os UF's
																	 if (bRegra<>0) and (wUfAliqMVA=0) and DBInicio.Empresa.PMT_HABILITAR_DIFAL Then  // MVA zerado na regra ou zerado por isenção icms para uso consumo (combustiveis)
																	 begin

																				wFator := RoundTo( (100 - wUfAliqIcmsSubCli) / 100, -3 );  // Fator -> Aliquota Interna: 18% = (100 - 18)/100 = 0,82
																				wIcms  := RoundTo( wBaseValorSubs * (wIcmsAliq/100) , -3 ); // 1000 * 4% = 40
                                        if bIsentarICMS then
                                          wIcms:= 0 ;
																				wDifalSt := RoundTo( wBaseValorSubs - wIcms, -3 ) ; // 1000 - 40 = 960
																				wDifalST := RoundTo( wDifalST / wFator,-3 ); // 960 / 0,82 = 1170,73

																				//wBaseValorSubs := wBaseValorProd ;


																				wDifalST := RoundTo( wDifalST * ( wUfAliqIcmsSubCli / 100 ), -3 ); // 1170,73 * 18% =210,43
																				wIcmDifalST := wDifalST - wIcms ; // 210,73 - 40 = 170,73
																				wDifalST := RoundTo( wIcmDifal / wBaseValorProd * 100, -3 ) ; // 170,73 / 1000 * 100 = 17,07

																				wValorSubs := wIcmDifalST;
																	 end
																	 Else
																	 Begin

																				wCalBaseValorSubs := Uteis.RoundTo ( wBaseValorSubs * wUfAliqMVA / 100, -3 );
																				wCalBaseValorSubs := Uteis.RoundTo ( wCalBaseValorSubs + wBaseValorSubs , -3);
																				wBaseValorSubs := wCalBaseValorSubs;

																				wUfResultMVA := Uteis.RoundTo ( wBaseValorSubs * wUfAliqIcmsSubCli / 100, -3 );
                                        if  not bIsentarICMS then
                                        begin
                                          if (wValorIcmsIndividual=0) and (wIcmsAliq<>0) then
                                             wIcmEstad := RoundTo( wBaseValorProd * (wIcmsAliq/100) , -3 )
                                          Else
                                             wIcmEstad := wValorIcmsIndividual;
                                        end;

																				if (wUfResultMVA > wValorIcmsIndividual ) then //VALOR DO ICMS SUBSTITUIÇÃO
																					 wValorSubs := Uteis.RoundTo ( wUfResultMVA - wIcmEstad, -3 )
																				else
																				begin
																						 wValorSubs := 0;
																						 wBaseValorSubs := 0;
																				end;

																	 end;

																	 if (wValorSubs > 0) then
																	 begin
                                     if ((bRegra<>0) or (wDifal>0)) and (wUfAliqMVA=0) and DBInicio.Empresa.PMT_HABILITAR_DIFAL Then
                                     begin
                                        wBaseValorSubs := wBaseValorSubs   +wValorSubs ;
																				wTotalBaseValorSubs := Uteis.RoundTo ( wTotalBaseValorSubs +wBaseValorSubs,-2 );
																				wTotalValorSubs := Uteis.RoundTo ( wTotalValorSubs + wValorSubs,-2 );
                                     end
                                     else
                                     begin
																				wTotalBaseValorSubs := Uteis.RoundTo ( wTotalBaseValorSubs + wBaseValorSubs,-2 );
																				wTotalValorSubs := Uteis.RoundTo ( wTotalValorSubs + wValorSubs,-2 );

                                     end;
																	 end
																	 else
																			 wBaseValorSubs := 0;

															end;
												 end
												 else
												 begin
															wValorSubs := 0;
															wBaseValorSubs := 0;
												 end;
										end;

										//zera valores de base e valor do icms que foram usados para calculo da substituição tributario caso necessario
										if ((fOPT_SIMPLES = 'S') and (GetCSOSN <> 900) and (femp_crt = '1')) or bIsentarICMS or (qOperFiscOPE_TRIBICMS.AsString = 'N') then
										begin
												 // tem variavel sobrando - revisar - 30/03/2011 marcio
												 wBaseIcms := 0;
												 wValorIcms := 0;
												 wIcmsAliq := 0;
												 wValorIcmsIndividual := 0;
												 wBaseIcmsIndividual := 0;
										end;

    Result := wIcmsAliq;

  end;
  FreeAndNil(FormFatPedido);

end;

function TFrmPedidoItem.BuscaPrecoVenda(pCodigoProduto: string): double;
begin

  if DBInicio.Exclusivo( 'PRODUTO_PRECO_EMPRESA' ) then
  begin
    Result := BuscaUmDadoSqlAsFloat(
               'SELECT FIRST 1  PRD_PE_PVENDA' +
               ' FROM PRD0000_PRECO_EMPRESA ppe ' +
               ' WHERE ppe.PRD_CODIGO = ' + QuotedStr(pCodigoProduto) +
               ' AND ppe.EMP_CODIGO = ' + QuotedStr(DBInicio.EMP_CODIGO) +
               ' ORDER BY PRD_PE_DATA_ATUALIZACAO DESC '
            );
  end
  else
  begin
    Result := BuscaUmDadoSqlAsFloat(
                 'SELECT PRD_PVENDA ' +
                 ' FROM PRD0000 pr ' +
                 ' WHERE pr.PRD_CODIGO = ' + QuotedStr(pCodigoProduto) +
                 ' AND pr.EMP_CODIGO = ' + QuotedStr(DBInicio.EMP_CODIGO)
              );
  end;
end;


end.






