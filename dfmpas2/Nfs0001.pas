unit Nfs0001;


interface

uses

  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, BaseDbEstoqueForm,
  StdCtrls, DBCtrls, Buttons, Grids, DBGrids, Mask, Db, ExtCtrls, RwFunc,
   rxCurrEdit,  rxToolEdit, RXDBCtrl, Provider, SqlExpr,SqlClientDataSet, DBClient,
  Menus, Variants, RwSQLComando, RxGIF, Math,
  ACBrNFe, ACBrNFeDANFEClass,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ComCtrls ,uCadastroLote,
  ACBrBase, ACBrDFe, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  SimpleDS, Data.DBXFirebird, ACBrNFeDANFeRLClass, Data.FMTBCd, ACBrEnterTab, ACBrCalculadora, strutils, ACBrDFeReport, ACBrDFeDANFeReport, SgDbSeachComboUnit, JvExControls, JvArrowButton,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinTheBezier, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light;

type
  TFormNfEntrada = class(TfrmBaseDbEstoque)
    Grp003: TGroupBox;
    DbGridComOC: TDBGrid;
    GrpTipoEntrada: TGroupBox;
    RadComOC: TRadioButton;
    RadSemOC: TRadioButton;
    Label23: TLabel;
    Label25: TLabel;
    CurTotalProdutos: TCurrencyEdit;
    NTotalGeral: TCurrencyEdit;
    Panel1: TPanel;
    Bit_Sair: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_pagar: TBitBtn;
    GrpDigitaItens: TGroupBox;
    Label11: TLabel;
    Label13: TLabel;
    Label26: TLabel;
    Label37: TLabel;
    CurrQtdeS: TCurrencyEdit;
    CurrPreco: TCurrencyEdit;
    CurrSaldo: TCurrencyEdit;
    Label27: TLabel;
    CurrQtdeR: TCurrencyEdit;
    SqlCdsGridComOC: TSQLClientDataSet;
    DsGridComOC: TDataSource;
    SqlCdsFor: TSQLClientDataSet;
    SqlCdsForFOR_CODIGO: TStringField;
    SqlCdsForFOR_RAZAO: TStringField;
    SqlCdsForFOR_FONCONT: TStringField;
    SqlCdsForFOR_FAXCONT: TStringField;
    SqlCdsForFOR_CONTATO: TStringField;
    SqlCdsForFOR_EMAILCONT: TStringField;
    SqlCdsForFOR_EMAIL: TStringField;
    SqlCdsForEMP_CODIGO: TStringField;
    DsFor: TDataSource;
    SqlCdsRef: TSQLClientDataSet;
    SqlCdsAlmox: TSQLClientDataSet;
    SqlCdsCta: TSQLClientDataSet;
    SqlCdsRefPRD_REFER: TStringField;
    SqlCdsCtaCCT_CODIGO: TStringField;
    SqlCdsCtaCCT_PROVISAO: TFMTBCdField;
    SqlCdsCtaCCT_DESCRI: TStringField;
    SqlCdsCtaCEC_CODIGO: TStringField;
    SqlCdsCtaCCT_TIPO: TStringField;
    SqlCdsCtaCCT_CONTA: TStringField;
    SqlCdsCtaEMP_CODIGO: TStringField;
    SqlCdsAlmoxEMP_CODIGO: TStringField;
    SqlCdsTipo: TSQLClientDataSet;
    SqlCdsTipoOPV_CODIGO: TIntegerField;
    SqlCdsTipoOPV_DESCRICAO: TStringField;
    SqlCdsTipoOPV_TIPO: TStringField;
    SqlCdsPcl: TSQLClientDataSet;
    SqlCdsPclPCL_CODIGO: TStringField;
    SqlCdsPclPCL_NOME: TStringField;
    SqlCdsPclEMP_CODIGO: TStringField;
    SqlCdsGridSemOC: TSQLClientDataSet;
    DsGridSemOC: TDataSource;
    SqlCdsGridSemOCENF_IT_NOTANUMBER: TStringField;
    SqlCdsGridSemOCPRD_REFER: TStringField;
    SqlCdsGridSemOCOCP_CODIGO: TStringField;
    SqlCdsGridSemOCENF_QTDE: TFMTBCdField;
    SqlCdsGridSemOCENF_IPIALIQ: TFMTBCdField;
    SqlCdsGridSemOCPRD_DESCRI: TStringField;
    DBGridSemOC: TDBGrid;
    SqlCdsGridSemOCVL_TOTAL_CC: TCurrencyField;
    SqlCdsGridComOCOCP_CODIGO: TStringField;
    SqlCdsGridComOCOPV_CODIGO: TIntegerField;
    SqlCdsGridComOCFOR_CODIGO: TStringField;
    SqlCdsGridComOCPCL_CODIGO: TStringField;
    SqlCdsGridComOCOCP_STATUS: TStringField;
    SqlCdsGridComOCPRD_DESCRI: TStringField;
    SqlCdsGridComOCOCI_REGISTRO: TIntegerField;
    SqlCdsGridComOCPRD_REFER: TStringField;
    SqlCdsGridComOCOCI_QTDES: TFMTBCdField;
    SqlCdsGridComOCOCI_QTDER: TFMTBCdField;
    SqlCdsGridComOCOCI_IPI: TFMTBCdField;
    SqlCdsGridComOCOCI_SITUACAO: TStringField;
    SqlCdsGridComOCEMP_CODIGO: TStringField;
    SqlCdsGridComOCOCI_SITUACAO_CC: TStringField;
    SqlCdsGridComOCOCI_TOTAL_CC: TCurrencyField;
    SqlCdsGridComOCPRD_FISICO_CC: TCurrencyField;
    SqlCdsGridComOCPRD_ESTOQUE: TFMTBCdField;
    SqlCdsGridComOCPRD_ENTRADA: TFMTBCdField;
    SqlCdsGridComOCPRD_SAIDA: TFMTBCdField;
    SqlCdsGridComOCBASE_IPI_CC: TCurrencyField;
    SqlCdsGridComOCENTRADA_CC: TCurrencyField;
    SqlCdsGridSemOCFOR_CODIGO: TStringField;
    SqlCdsGridSemOCPRD_ESTOQUE: TFMTBCdField;
    SqlCdsGridSemOCPRD_SAIDA: TFMTBCdField;
    SqlCdsGridSemOCPRD_ENTRADA: TFMTBCdField;
    PopupMenu1: TPopupMenu;
    Excluir1: TMenuItem;
    Alterar1: TMenuItem;
    EdDescricao: TEdit;
    SpPesquisa: TSpeedButton;
    LblAlmox: TLabel;
    EdtAlmox: TEdit;
    CbAlmox: TComboBox;
    BitConfirmar: TBitBtn;
    SqlCdsGridSemOCENF_REGISTRO: TIntegerField;
    BitCancelItem: TBitBtn;
    SqlCdsGridSemOCFISICO_CC: TCurrencyField;
    CbRef: TComboBox;
    SqlCdsProduto: TSQLClientDataSet;
    SqlCdsProdutoFISICO_CC: TCurrencyField;
    SqlCdsProdutoPRD_REFER: TStringField;
    SqlCdsProdutoPRD_DESCRI: TStringField;
    SqlCdsProdutoPRD_ESTOQUE: TFMTBCdField;
    SqlCdsProdutoPRD_ENTRADA: TFMTBCdField;
    SqlCdsProdutoPRD_SAIDA: TFMTBCdField;
    SqlCdsProdutoPRD_PENDENTE: TFMTBCdField;
    SqlCdsProdutoEMP_CODIGO: TStringField;
    SqlCdsPclPCL_NPARCELAS: TIntegerField;
    SqlCdsPclPCL_DIASENTREP: TSmallintField;
    SqlCdsPclPCL_CARENC_PRI: TSmallintField;
    SqlCdsPclPCL_MANTERDIA: TStringField;
    Edt_Almox_ant: TEdit;
    Bit_Estoque: TBitBtn;
    SqlCdsGridComOCOCI_PRECO: TFMTBCdField;
    SqlCdsGridSemOCENF_PRECO: TFMTBCdField;
    PanIPI: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    CurrIPIalterado: TCurrencyEdit;
    Panel3: TPanel;
    SpXPanIPI: TSpeedButton;
    BitConfIPIalter: TBitBtn;
    BitCancIPIalter: TBitBtn;
    SqlCdsOP: TSQLClientDataSet;
    SqlCdsOPEMP_CODIGO: TStringField;
    SqlCdsOPOPE_CODIGO: TStringField;
    SqlCdsOPOPE_NATUREZA: TStringField;
    SqlCdsOPOPE_TIPO: TStringField;
    SqlCdsOPOPE_ESCRITA: TStringField;
    SqlCdsOPOPE_DENTRO: TStringField;
    SqlCdsOPOPE_DESCRI: TStringField;
    SqlCdsOPOPE_TRIBICMS: TStringField;
    SqlCdsOPOPE_TRIBIPI: TStringField;
    SqlCdsOPOPE_REDU_ICM: TFMTBCdField;
    SqlCdsOPOPE_REDU_IPI: TFMTBCdField;
    SqlCdsOPOPE_IPINABASEICMS: TStringField;
    SqlCdsOPOPE_FRETENABASE: TStringField;
    SqlCdsOPOPE_SEMVLCOM: TStringField;
    SqlCdsOPOPE_IMP_AVISO: TStringField;
    SqlCdsOPOPE_AVISOLEGAL: TStringField;
    SqlCdsOPOPE_AVISOLEGAL2: TStringField;
    SqlCdsOPOPE_AGRUPADO: TStringField;
    SqlCdsOPOPE_SUBTRIBUTARIA: TStringField;
    SqlCdsOPOPE_ESTOQUE: TStringField;
    SqlCdsOPCCT_CODIGO: TStringField;
    SqlCdsOPOPV_CODIGO: TIntegerField;
    SqlCdsOPOPE_SERVICO: TStringField;
    SqlCdsOPOPE_PIS: TFMTBCdField;
    SqlCdsOPOPE_COFINS: TFMTBCdField;
    SqlCdsOPOPE_CONTRISOCIAL: TFMTBCdField;
    SqlCdsOPOPE_DESCRINATUREZA: TStringField;
    SqlCdsOPOPE_INDICE_IMP: TFMTBCdField;
    SqlCdsOPOPE_NOTA_COMPLEMENTAR: TStringField;
    SqlCdsForFOR_UF: TStringField;
    CdsConsultaEstoque: TSQLClientDataSet;
    CdsConsultaEstoquePRD_CODIGO: TStringField;
    CdsConsultaEstoquePRD_REFER: TStringField;
    CdsConsultaEstoquePRD_DESCRI: TStringField;
    CdsConsultaEstoquePTI_SIGLA: TStringField;
    CdsConsultaEstoquePRD_PVENDA: TFMTBCdField;
    CdsConsultaEstoquePRD_DCVAR1: TStringField;
    CdsConsultaEstoquePRD_DCVAR2: TStringField;
    CdsConsultaEstoquePRD_DCVAR3: TStringField;
    CdsConsultaEstoquePRD_DCVAR4: TStringField;
    CdsConsultaEstoquePRD_DCVAR5: TStringField;
    CdsConsultaEstoquePRD_DCVAR6: TStringField;
    CdsConsultaEstoquePRD_DCVAR7: TStringField;
    CdsConsultaEstoquePRD_DCVAR8: TStringField;
    CdsConsultaEstoquePGR_CODIGO: TStringField;
    CdsConsultaEstoqueIPI_ALIQ: TFMTBCdField;
    CdsConsultaEstoquePRD_QDTE: TFMTBCdField;
    CdsConsultaEstoquePTI_ATUALIZAR_ESTOQUE: TStringField;
    CdsConsultaEstoquePGR_ATUALIZA_ESTOQUE: TStringField;
    SqlCdsTipoEMP_CODIGO: TStringField;
    SqlCdsTipoOPV_ATESTOQUE: TStringField;
    Cds_Prod_Conv: TSQLClientDataSet;
    Cds_Prod_ConvPRD_REFER: TStringField;
    Cds_Prod_ConvPRD_UTILCONV: TStringField;
    Cds_Prod_ConvPRD_FATORC: TFMTBCdField;
    Cds_Prod_ConvPRD_DIVMULT: TStringField;
    SqlCdsGridSemOCENF_UNIDADE_TRABALHO: TFMTBCdField;
    LblLote: TLabel;
    SqlCdsGridComOCPRD_LOTE: TStringField;
    SqlCdsGridSemOCENF_LOTE: TStringField;
    SqlCdsGridComOCPRD_ALIQICM: TFMTBCdField;
    SqlCdsGridSemOCPRD_ALIQICM: TFMTBCdField;
    Cds_Prod_ConvPRD_FATOR_PROD: TFMTBCdField;
    Cds_Prod_ConvPRD_DIV_MULT_PROD: TStringField;
    SqlCdsGridSemOCENF_ICMS: TFMTBCdField;
    SqlCdsGridComOCOCI_ICMS: TFMTBCdField;
    GrpNota: TGroupBox;
    PanDados: TPanel;
    LabNota: TLabel;
    GrpFornecedor: TGroupBox;
    Label8: TLabel;
    EdtFor_Codigo: TEdit;
    EdtNota: TEdit;
    CrCfopItem: TCurrencyEdit;
    Label6: TLabel;
    SqlCdsGridSemOCENF_CFOP: TStringField;
    SqlCdsGridComOCOCI_CFOP: TStringField;
    btnDevolucao: TBitBtn;
    SqlCdsForCCT_CODIGO: TStringField;
    SqlCdsProdutoPRD_CODIGO: TStringField;
    SqlCdsAlmoxAMX_CODIGO: TStringField;
    SqlCdsAlmoxAMX_DESCRI: TStringField;
    SqlCdsGridSemOCAMX_DESCRI: TStringField;
    SqlCdsGridSemOCAMX_CODIGO: TStringField;
    SqlCdsGridSemOCREPETICAO_REFER: TIntegerField;
    SqlCdsGridComOCPRD_CODIGO: TStringField;
    SqlCdsGridSemOCPRD_CODIGO: TStringField;
    SqlCdsGridComOCENF_REGISTRO: TIntegerField;
    SqlCdsGridComOCAMX_CODIGO: TStringField;
    GroupBox2: TGroupBox;
    LblSituacaoProjetoObra: TLabel;
    BitLocalizarNota: TBitBtn;
    SqlCdsForFOR_ATUALIZA_PVENDA: TStringField;
    SqlCdsPclPCL_DESCTO: TFMTBCdField;
    SqlCdsPclPCL_MULTA: TFMTBCdField;
    SqlCdsPclPCL_JUROS: TFMTBCdField;
    SqlCdsPclPCL_OBS: TStringField;
    SqlCdsPclPCL_DISPONIVEL: TStringField;
    SqlCdsPclPCL_PERCENTUAL_PRIMEIRA_P: TFMTBCdField;
    SqlCdsPclPCL_TIPO: TStringField;
    CdsTemp: TClientDataSet;
    CdsTempreferencia: TStringField;
    CdsTempquantidade: TFloatField;
    acbrnf1: TACBrNFe;
    OpenDialog1: TOpenDialog;
    MudarCFOP1: TMenuItem;
    SqlCdsOPOPE_ATUALIZA_CUSTO: TStringField;
    SqlCdsGridSemOCENF_ATUALIZA_PRECO: TStringField;
    SqlCdsGridSemOCENF_ATUALIZA_ESTOQUE: TStringField;
    SqlCdsGridComOCENF_ATUALIZA_PRECO: TStringField;
    SqlCdsGridComOCENF_ATUALIZA_ESTOQUE: TStringField;
    CdsLoteProduto: TSQLClientDataSet;
    dsLoteProduto: TDataSource;
    SqlCdsGridSemOCPRDL_REGISTRO: TIntegerField;
    SqlCdsGridComOCPRDL_REGISTRO: TIntegerField;
    CdsLoteProdutoPRDL_REGISTRO: TIntegerField;
    CdsLoteProdutoEMP_CODIGO: TStringField;
    CdsLoteProdutoPRDL_DATA_FABRICACAO: TDateField;
    CdsLoteProdutoPRDL_DATA_VALIDADE: TDateField;
    CdsLoteProdutoPRDL_LOTE: TStringField;
    CdsLoteProdutoPRDL_PRECO_MAXIMO: TFMTBCdField;
    CdsLoteProdutoPRDL_SALDO: TFMTBCdField;
    CdsLoteProdutoPRD_CODIGO: TStringField;
    SqlCdsGridSemOCENF_ICMSALIQ: TFMTBCdField;
    SqlCdsGridComOCENF_VLSUBST: TFMTBCdField;
    SqlCdsGridSemOCENF_VLSUBST: TFMTBCdField;
    SqlCdsGridSemOCENF_IT_VLIPI: TFMTBCdField;
    SqlCdsGridComOCENF_IT_VLIPI: TFMTBCdField;
    pgcImpostos: TPageControl;
    tsIcms: TTabSheet;
    tsICMSST: TTabSheet;
    tsIPI: TTabSheet;
    tsPIS: TTabSheet;
    tsCOFINS: TTabSheet;
    dsModeloNotaFiscal: TDataSource;
    CdsModeloNotaFiscal: TSQLClientDataSet;
    CdsModeloNotaFiscalSMDF_REGISTRO: TIntegerField;
    CdsModeloNotaFiscalSMDF_CODIGO: TStringField;
    CdsModeloNotaFiscalSMDF_DESCRICAO: TStringField;
    SqlCdsGridSemOCCST_IPI: TStringField;
    SqlCdsGridSemOCENF_IT_BASEIPI: TFMTBCdField;
    SqlCdsGridSemOCSTB_TRIBUTACAO: TStringField;
    SqlCdsGridSemOCENF_IT_BASEICMS: TFMTBCdField;
    SqlCdsGridSemOCENF_IT_BASESUBTRIB: TFMTBCdField;
    SqlCdsGridSemOCENF_IT_ALIQSUBTRIB: TFMTBCdField;
    SqlCdsGridSemOCCST_PIS: TStringField;
    SqlCdsGridSemOCENF_BASEPIS: TFMTBCdField;
    SqlCdsGridSemOCENF_IT_ALIQPIS: TFMTBCdField;
    SqlCdsGridSemOCENF_IT_VLPIS: TFMTBCdField;
    SqlCdsGridSemOCCST_COFINS: TStringField;
    SqlCdsGridSemOCENF_BASECOFINS: TFMTBCdField;
    SqlCdsGridSemOCENF_IT_ALIQCOFINS: TFMTBCdField;
    SqlCdsGridSemOCENF_IT_VLCOFINS: TFMTBCdField;
    SqlCdsGridSemOCENF_IT_VALFRETE: TFMTBCdField;
    SqlCdsGridSemOCENF_IT_VLSEGURO: TFMTBCdField;
    SqlCdsGridSemOCENF_IT_VLDESP_ACES: TFMTBCdField;
    cbbItemCST: TComboBox;
    Label34: TLabel;
    Label36: TLabel;
    CurItemBaseICMS: TCurrencyEdit;
    CurItemAliquotaICMS: TCurrencyEdit;
    Label38: TLabel;
    CurItemValorICMS: TCurrencyEdit;
    Label39: TLabel;
    Label40: TLabel;
    CurItemBaseICMSST: TCurrencyEdit;
    Label41: TLabel;
    CurItemAliquotaICMSST: TCurrencyEdit;
    Label42: TLabel;
    CurItemValorICMSST: TCurrencyEdit;
    Label29: TLabel;
    cbbItemCSTIPI: TComboBox;
    Label33: TLabel;
    CurItemBaseIPI: TCurrencyEdit;
    Label35: TLabel;
    CurItemAliquotaIPI: TCurrencyEdit;
    Label43: TLabel;
    CurItemValorIPI: TCurrencyEdit;
    cbbItemCSTPIS: TComboBox;
    Label44: TLabel;
    Label45: TLabel;
    CurItemBasePIS: TCurrencyEdit;
    Label46: TLabel;
    CurItemAliquotaPIS: TCurrencyEdit;
    Label47: TLabel;
    CurItemValorPIS: TCurrencyEdit;
    cbbItemCSTCofins: TComboBox;
    Label48: TLabel;
    Label49: TLabel;
    CurItemBaseCofins: TCurrencyEdit;
    Label50: TLabel;
    CurItemAliquotaCofins: TCurrencyEdit;
    Label51: TLabel;
    CurItemValorCofins: TCurrencyEdit;
    Label52: TLabel;
    CurTotalItens: TCurrencyEdit;
    CurTotalBaseICMS: TCurrencyEdit;
    Label53: TLabel;
    CurTotalValorICMS: TCurrencyEdit;
    Label54: TLabel;
    CurTotalValorICMSST: TCurrencyEdit;
    CurTotalBaseICMSST: TCurrencyEdit;
    Label3: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    CurTotalBaseIPI: TCurrencyEdit;
    Label55: TLabel;
    CurTotalValorIPI: TCurrencyEdit;
    Label56: TLabel;
    CurTotalValorPIS: TCurrencyEdit;
    Label57: TLabel;
    CurTotalValorCofins: TCurrencyEdit;
    tsPedidoCompra: TTabSheet;
    edtItemOrdemCompra: TEdit;
    Label12: TLabel;
    btnPedidoCompraUnico: TSpeedButton;
    Label58: TLabel;
    CurItemOrdemCompraBaixada: TCurrencyEdit;
    SqlCdsGridSemOCENF_QTDE_PEDIDO_COMPRA: TFMTBCdField;
    SqlCdsGridSemOCOCI_REGISTRO: TIntegerField;
    edtRegistroOrdemCompraItem: TEdit;
    btnLimparOc: TSpeedButton;
    btnCadastroLote: TSpeedButton;
    CurItemAliquotaICMSRapida: TCurrencyEdit;
    CurItemAliquotaIPIRapida: TCurrencyEdit;
    Label59: TLabel;
    Label60: TLabel;
    tsFrete: TTabSheet;
    Label61: TLabel;
    CurFrete: TCurrencyEdit;
    SqlCdsGridSemOCENF_IT_DESCTO: TFMTBCdField;
    PageControl1: TPageControl;
    tsDadosNota: TTabSheet;
    tsObservacao: TTabSheet;
    DBMemo1: TDBMemo;
    Label24: TLabel;
    DbeChaveNFe: TDBEdit;
    Label30: TLabel;
    DBeModelo: TDBEdit;
    dblkcbbModeloNf: TDBLookupComboBox;
    Label15: TLabel;
    DBeENF_SERIE: TDBEdit;
    Label16: TLabel;
    DbeENF_EMISSAO: TDBDateEdit;
    Label20: TLabel;
    DBeENF_ENTRADA: TDBDateEdit;
    Label19: TLabel;
    DbeOPE_NATUREZA: TDBEdit;
    CbOP: TComboBox;
    lbl_frete: TLabel;
    CbFreteT: TComboBox;
    Label5: TLabel;
    CurrVlFrete: TCurrencyEdit;
    LbFreteNaoNota: TLabel;
    Label7: TLabel;
    CurrVlDespesas: TCurrencyEdit;
    Label10: TLabel;
    CurrVlSeguro: TCurrencyEdit;
    Label14: TLabel;
    CurrVlDescto: TCurrencyEdit;
    CurrTotalNota: TCurrencyEdit;
    Label28: TLabel;
    CbPgto: TComboBox;
    EdtPcl_Codigo: TEdit;
    LabCondPgto: TLabel;
    Curr_Valor_Produtos: TCurrencyEdit;
    Label4: TLabel;
    CbCtaAnalise: TComboBox;
    DbeCCT_CODIGO: TDBEdit;
    Curr_Vl_Icms: TCurrencyEdit;
    Label18: TLabel;
    LblCtaAnalise: TLabel;
    CurrVlST: TCurrencyEdit;
    CurrVlICms: TCurrencyEdit;
    Label2: TLabel;
    Label31: TLabel;
    CurrBaseIcms: TCurrencyEdit;
    Label17: TLabel;
    Label32: TLabel;
    CurrBaseST: TCurrencyEdit;
    BitOrdem: TSpeedButton;
    btnDanfe: TBitBtn;
    CdsCentroCusto: TSQLClientDataSet;
    CdsCentroCustoPCX_CODIGO: TStringField;
    CdsCentroCustoPCX_DESCRI: TStringField;
    CdsCentroCustoPCX_NIVEL: TStringField;
    CdsCentroCustoPCX_INICIO: TSQLTimeStampField;
    CdsCentroCustoPCX_FIM: TSQLTimeStampField;
    CdsCentroCustoPCX_TERMINADO: TStringField;
    CdsCentroCustoEMP_CODIGO: TStringField;
    Label62: TLabel;
    DbePCX_CODIGO: TDBEdit;
    CbCentroCusto: TComboBox;
    ACBrNFeDANFEFR1: TACBrNFeDANFeRL;
    CbLoteProduto: TcxLookupComboBox;
    edTipoPagamento: TComboBox;
    Label63: TLabel;
    btnOutrosCustos: TSpeedButton;
    pOutrosCustos: TPanel;
    currFrete: TCurrencyEdit;
    currDifICMS: TCurrencyEdit;
    currOutros: TCurrencyEdit;
    btnOkOutrosCustos: TButton;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    btnCancelarOutros: TButton;
    Panel2: TPanel;
    cbMovimentaEstoque: TCheckBox;
    PesqFornecedor: TSgDbSearchCombo;
    lcnpj: TLabel;
    qforne: TSQLQuery;
    qfornefor_cgc: TStringField;
    qfornefor_codigo: TStringField;
    qfornefor_razao: TStringField;
    qforneFOR_CIDADE: TStringField;
    qfornefor_bairro: TStringField;
    qforneFOR_ATUALIZA_PVENDA: TStringField;
    qforneCCT_CODIGO: TStringField;
    qforneFOR_UF: TStringField;
    edUnd: TEdit;
    Label67: TLabel;
    SqlCdsGridSemOCenf_ucom: TStringField;
    SqlCdsGridComOCenf_ucom: TStringField;
    SqlCdsGridSemOCENF_UTRIB: TStringField;
    SqlCdsGridSemOCENF_PRECO_ORIGINAL: TFMTBCDField;
    SqlCdsGridSemOCENF_QTDE_ORIGINAL: TFMTBCDField;
    SqlCdsGridSemOCENF_PTOTAL_ORIGINAL: TFMTBCDField;
    SqlCdsProdutoPRD_UND: TStringField;
    btnNovaEntrada: TJvArrowButton;
    pmImportar: TPopupMenu;
    miImportarXML: TMenuItem;
    miLancarManual: TMenuItem;
    edPedidodireto: TEdit;
    Label9: TLabel;
    chkIndustrializacao: TCheckBox;
    SpeedButton1: TSpeedButton;
    TabSheet1: TTabSheet;
    DBMemo2: TDBMemo;
    qInscricaoEstadual: TSQLQuery;
    dspInscricaoEstadual: TDataSetProvider;
    cdsInscricaoEstadual: TClientDataSet;
    dsInscricaoEstadual: TDataSource;
    pnIE: TPanel;
    lbIE: TLabel;
    dblcInscricaoEstadual: TDBLookupComboBox;
    SqlCdsAlmoxEMI_IE: TStringField;
    SqlCdsAlmoxEMI_CODIGO: TIntegerField;
    SqlCdsGridSemOCENF_ORIGEM_MERCADORIA: TIntegerField;
    edENF_ORIGEM_MERCADORIA_res: TEdit;
    cbENF_ORIGEM_MERCADORIA: TComboBox;
    Label68: TLabel;
    dsCentroCustoItem: TDataSource;
    cdsCentroCustoItem: TSqlClientDataSet;
    StringField1: TStringField;
    cdsCentroCustoDESCRICAO: TStringField;
    StringField2: TStringField;
    cxCentroCustoItem: TcxLookupComboBox;
    Label69: TLabel;
    SqlCdsGridSemOCPCX_CODIGO: TStringField;
    SqlCdsGridComOCPCX_CODIGO: TStringField;
    AlterarCFOPdeRetorno1: TMenuItem;
    SqlCdsGridSemOCENF_CFOP_RETORNO: TStringField;
    SqlCdsGridSemOCOPE_CODIGO_RETORNO: TStringField;

    procedure Bit_SairClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure EdtFor_CodigoExit(Sender: tObject);
    procedure CalcTotais;
    procedure Bit_pagarClick(Sender: tObject);
    function  VerDados:Boolean;
    procedure RadComOCClick(Sender: tObject);
    procedure SqlCdsGridSemOCCalcFields(DataSet: TDataSet);
    procedure RadSemOCClick(Sender: tObject);
    procedure EdtPcl_CodigoExit(Sender: tObject);
    procedure CbPgtoClick(Sender: tObject);
    procedure SqlCdsGridComOCCalcFields(DataSet: TDataSet);
    procedure CbAlmoxClick(Sender: tObject);
    procedure DbeCCT_CODIGOExit(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure CurrQtdeREnter(Sender: tObject);
    procedure CurrVlICmsExit(Sender: tObject);
    procedure DBeENF_ENTRADAExit(Sender: tObject);
    procedure DbeOPE_NATUREZAExit(Sender: tObject);
    procedure BitOrdemClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure EdtNotaKeyPress(Sender: tObject; var Key: Char);
    procedure EdtNotaExit(Sender: tObject);
    procedure DBeENF_ENTRADAClick(Sender: tObject);
    procedure DBGridSemOCKeyPress(Sender: tObject; var Key: Char);
    procedure NTotalGeralChange(Sender: tObject);
    procedure EdtAlmoxExit(Sender: tObject);
    procedure EdtAlmoxClick(Sender: tObject);
    procedure EdtAlmoxKeyPress(Sender: tObject; var Key: Char);
    procedure CurrVlDespesasExit(Sender: tObject);
    procedure CurrVlSeguroExit(Sender: tObject);
    procedure CurrVlDesctoExit(Sender: tObject);
    procedure EdtDtEmissExit(Sender: tObject);
    procedure Alterar1Click(Sender: tObject);
    procedure Excluir1Click(Sender: tObject);
    procedure DbGridComOCdblClick(Sender: tObject);
    procedure CurrPrecoExit(Sender: tObject);
    procedure CurrQtdeRExit(Sender: tObject);
    procedure SpPesquisaClick(Sender: tObject);
    procedure CurrTotalNotaExit(Sender: tObject);
    procedure BitConfirmarClick(Sender: tObject);
    procedure DBGridSemOCdblClick(Sender: tObject);
    procedure BitCancelItemClick(Sender: tObject);
    procedure DbGridComOCKeyPress(Sender: tObject; var Key: Char);
    procedure CurrPrecoClick(Sender: tObject);
    procedure CurrIpiClick(Sender: tObject);
    procedure DbeENF_EMISSAOExit(Sender: tObject);
    procedure SqlCdsProdutoCalcFields(DataSet: TDataSet);
    procedure CbCtaAnaliseExit(Sender: tObject);
    procedure CbRefExit(Sender: tObject);
    procedure Curr_Vl_IcmsExit(Sender: tObject);
    procedure CurrBaseIcmsExit(Sender: tObject);
    procedure Bit_EstoqueClick(Sender: tObject);
    procedure CurrIPIalteradoChange(Sender: tObject);
    procedure SpXPanIPIClick(Sender: tObject);
    procedure BitConfIPIalterClick(Sender: tObject);
    procedure CbOPClick(Sender: tObject);
    procedure CbOPExit(Sender: tObject);
    procedure CrCfopItemExit(Sender: tObject);
    procedure BitExcluirClick(Sender: tObject);
    procedure DBeENF_SERIEKeyPress(Sender: tObject; var Key: Char);
    procedure CurrVlSTExit(Sender: tObject);
    procedure DbeCCT_CODIGOEnter(Sender: tObject);
    procedure CbRefClick(Sender: tObject);
    procedure DbeChaveNFeExit(Sender: tObject);
    procedure BitLocalizarNotaClick(Sender: tObject);
    procedure btnAlterarDataClick(Sender: tObject);
    procedure MudarCFOP1Click(Sender: tObject);
    procedure btnDanfeClick(Sender: tObject);
    procedure CbCtaAnaliseChange(Sender: tObject);
    procedure CurItemValorICMSEnter(Sender: tObject);
    procedure CurItemValorICMSSTEnter(Sender: tObject);
    procedure CurItemValorIPIEnter(Sender: tObject);
    procedure CurItemValorPISEnter(Sender: tObject);
    procedure CurItemValorCofinsEnter(Sender: tObject);
    procedure btnPedidoCompraUnicoClick(Sender: tObject);
    procedure btnLimparOcClick(Sender: tObject);
    procedure btnCadastroLoteClick(Sender: tObject);
    procedure CurItemAliquotaICMSRapidaExit(Sender: tObject);
    procedure CurItemAliquotaIPIRapidaExit(Sender: tObject);
    procedure DbePCX_CODIGOEnter(Sender: tObject);
    procedure DbePCX_CODIGOExit(Sender: tObject);
    procedure CbCentroCustoChange(Sender: tObject);
    procedure CbCentroCustoExit(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure CdsLoteProdutoPRDL_DATA_FABRICACAOGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbMovimentaEstoqueClick(Sender: TObject);
    procedure chkIndustrializacaoClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edTipoPagamentoChange(Sender: TObject);
    procedure CbPgtoChange(Sender: TObject);
    procedure btnOutrosCustosClick(Sender: TObject);
    procedure btnOkOutrosCustosClick(Sender: TObject);
    procedure currOutrosChange(Sender: TObject);
    procedure btnCancelarOutrosClick(Sender: TObject);
    procedure PesqFornecedorSelect(Sender: TObject);
    procedure miImportarXMLClick(Sender: TObject);
    procedure miLancarManualClick(Sender: TObject);
    procedure edPedidodiretoExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dblcInscricaoEstadualClick(Sender: TObject);
    procedure btnDevolucao2Click(Sender: TObject);
    procedure btnDevolucaoClick(Sender: TObject);
    procedure AlterarCFOPdeRetorno1Click(Sender: TObject);
  private
    { Private declarations }
    {campos}
    bCentroCustoObrigatorio : boolean;
    wCalcularPV : integer;
    fAlterouOutrosCustos : boolean;
    wAlterar      :boolean;
    wAchouNF      :boolean;
    wQtdeAtual    :Currency;
    wQtdeS        :Currency;
    wQtdeR        :Currency;
    wQtdeAlmoxAnt :Currency;
    wCustoIpi     :Currency;
    wTipoNF,
    wCod_Oper,
    wModelo_Nf,
    sValorUltCompra,
    wRefer,
    wPrdCodigo        :String;
    wTotal_Valor,
    wValor_Total,
    WTotal_IPI    : Currency;
    wTotal,
    wVLIPI,
    wBase_IPI     : Double;
    wStatus       : String[1]; {variavel utilizada para determinar o status do item do pedido: P=PENDENTE, F=PARCIAL, C=CONCLUIDO}
    wRepeticao_refer : Integer;
    wAtualiza_pvenda : String;
    wfrete_participatotal :String;
    procedure preenchaCombo;
    procedure HabilitaBotoes;
    procedure HabilitaItem;
    procedure HabiliItemSelec;
    procedure HabilitaDados;
    procedure DesabilitaItem;
    procedure DesabiliItemSelec;
    procedure DesabilitaDados;
    procedure MostraDados;
    procedure LayOutENF;
    procedure Limpar;
    procedure Limparitens;
    procedure BuscaItensNF;
    procedure ItemSelecionado;
    procedure GravarItens;
    procedure GravaEntrada;
    procedure VerificaNF;

    procedure IncluirNF;
    procedure excluirItensNF;
    procedure AtualizaSituacaoOC(const sRegistro:String);
    procedure BuscaReferencia;
    procedure ChecaAlmoxarifado;
    procedure Atualiza_Preco_Compra(const pRegistro,pValor:String);
    procedure Atualiza_Ordem_Compra(const pOCompra:String);
    procedure CalcTotal_IPI;
    procedure Verifica_Item_Compra(const fNota,fNCompra,fCodFor,fProduto:String);
    procedure Busca_Itens_NF(const fNota,fCodFor,fProduto:String);
    procedure Preencher_Combo_Produtos;
    procedure Seleciona_Item_Nota;
    procedure Preencher_Combo_OP(const sTipo:String);
    procedure HabObjetoIPI;
    procedure DesObjetoIPI;
    Function BuscaOperacaoNovo(const pNat, pDescri: String):boolean;
    procedure BuscaOperacaoCFOP(const pNat: String);
    procedure BuscaOperacao;
    procedure Calcula_Vl_Icms;
    procedure Carrega_Parametro_Sintegra_Padrao;
    procedure FazerAlteracao(const sNF,sOrdemCompra,sCodFor,sProduto,sQtdeRecebida:String; const sRepeticao, iRegistroItem :Integer);
    procedure BuscaSaldo(const sRefer:String);
    function RetornaParametroRateioICMSProd:Boolean;
    procedure Atualiza_Dados_Utl_Compra(const sProduto,sAcao: String);
    procedure RealizaRateioRetiradaICMSCustoProd;
    procedure Busca_conta_finan;
    procedure Busca_CentroCusto;
    function  LocalizarRepetida(const pPrd_refer:string):boolean;
    procedure BuscaProdutoLote;
    procedure ChamaPedidoCompraVincula(bUnica:Boolean);
    procedure RealizaAtualizacaoCustosEntrada;
    procedure RealizaRateioCentroCusto;
    function GetSaldoEstoque(const pAlmox:String): Currency;
    procedure AtualizarTabelaPrecos (const prd_refer : string);
  public
    { Public declarations }
    wLimpar,
    wLancadoPagar : Boolean;
    iRegistro: Integer;
    CNPJEmitente,
    sFornecedorImportado:String;
    vMovimentaEstoque: String;
    AntRecebidoPedCompras : double;
    //campos que não aparecem ao editar o item, mas ele guarda ao capturar o xml
    //  o programa ta feito da seguinte maneira, ao editar um item, e depois confirmar
    // ele iternamente vai excluir  e depois incluir de novo  , ele , assim perde os campos "invisíveis"
    // assim, para não mudar muita coisa da salada, vou guardar estes campos "invisíveis " em uma variavel
    ENF_UCOM, ENF_UTRIB : string;
    ENF_QTDE_ORIGINAL, ENF_PRECO_ORIGINAL, ENF_PTOTAL_ORIGINAL  : double;
    // fim das variaveis


    procedure DesabilitaBotoes;
    procedure ImportarXML(const sCaminho:String);

    property AlterouOutrosCustos : boolean read fAlterouOutrosCustos write fAlterouOutrosCustos;
  end;

var
   FormNfEntrada: TFormNfEntrada;

implementation

{$R *.DFM}

uses Uteis, Nfs0002, DataMov, DataCad, Men0001, Prd0006, Prd0001, uSelecinaCFOP, uDevolucaoNotaEntrada,
  {uProcedimentos,} Nfs0003, ACBrNFeNotasFiscais, uNotaFiscalDao,
  uFornecedorDao, uProdutoDao, uNaturezaOperacaoDao, uEntradaNotaXml,
  uEntradaNotaPedidoCompra, uEntradaNotaXmlOpcao, uFinanceiroDao, Iniciodb, uControleNFIndustrializacao, Pag0001, UBarra;

{declaração das funções da DLL mensagens}





procedure TFormNfEntrada.Bit_SairClick(Sender: tObject);
begin
   Bit_Sair.SetFocus;
    close;
end;

procedure TFormNfEntrada.FormShow(Sender: tObject);
begin
  inherited;
  lcnpj.CAPTION := '';
  {PARAMETRO PARA CONFIGURAR CASAS DECIMAIS DA ENTRADA DE NOTA}


   SqlCdsGridComOCOCI_PRECO.DisplayFormat     := '###,###,##0.' + StrZero('', dbInicio.empresa.iCasaDecimaisEnf);
   SqlCdsGridComOCOCI_PRECO.Size              := dbInicio.empresa.iCasaDecimaisEnf;
   SqlCdsGridComOCOCI_TOTAL_CC.DisplayFormat  := '###,###,##0.' + StrZero('', dbInicio.empresa.iCasaDecimaisEnf);
   SqlCdsGridSemOCENF_PRECO.DisplayFormat     := '###,###,##0.' + StrZero('', dbInicio.empresa.iCasaDecimaisEnf);
   SqlCdsGridSemOCVL_TOTAL_CC.DisplayFormat   := '###,###,##0.' + StrZero('', dbInicio.empresa.iCasaDecimaisEnf);
   CurrPreco.DisplayFormat                    := '###,###,##0.' + StrZero('', dbInicio.empresa.iCasaDecimaisEnf);
   CurrPreco.DecimalPlaces                    := dbInicio.empresa.iCasaDecimaisEnf;
{

  case dbInicio.empresa.iCasaDecimaisEnf of
     0:Begin
           SqlCdsGridComOCOCI_PRECO.DisplayFormat     := '###,###,##0.00';
           SqlCdsGridComOCOCI_PRECO.Size              := 2;
           SqlCdsGridComOCOCI_TOTAL_CC.DisplayFormat  := '###,###,##0.00';
           SqlCdsGridSemOCENF_PRECO.DisplayFormat     := '###,###,##0.00';
           SqlCdsGridSemOCVL_TOTAL_CC.DisplayFormat   := '###,###,##0.00';
           CurrPreco.DisplayFormat                    := '###,###,##0.00';
           CurrPreco.DecimalPlaces                    := 2;
       end;
     1:Begin
           SqlCdsGridComOCOCI_PRECO.DisplayFormat     := '###,###,##0.00';
           SqlCdsGridComOCOCI_PRECO.Size              := 2;
           SqlCdsGridComOCOCI_TOTAL_CC.DisplayFormat  := '###,###,##0.00';
           SqlCdsGridSemOCENF_PRECO.DisplayFormat     := '###,###,##0.00';
           SqlCdsGridSemOCVL_TOTAL_CC.DisplayFormat   := '###,###,##0.00';
           CurrPreco.DisplayFormat                    := '###,###,##0.00';
           CurrPreco.DecimalPlaces                    := 2;
       end;
     2:Begin
           SqlCdsGridComOCOCI_PRECO.DisplayFormat     := '###,###,##0.00';
           SqlCdsGridComOCOCI_PRECO.Size              := 2;
           SqlCdsGridComOCOCI_TOTAL_CC.DisplayFormat  := '###,###,##0.00';
           SqlCdsGridSemOCENF_PRECO.DisplayFormat     := '###,###,##0.00';
           SqlCdsGridSemOCVL_TOTAL_CC.DisplayFormat   := '###,###,##0.00';
           CurrPreco.DisplayFormat                    := '###,###,##0.00';
           CurrPreco.DecimalPlaces                    := 2;
       end;
     3:Begin
           SqlCdsGridComOCOCI_PRECO.DisplayFormat     := '###,###,##0.000';
           SqlCdsGridComOCOCI_PRECO.Size              := 3;
           SqlCdsGridComOCOCI_TOTAL_CC.DisplayFormat  := '###,###,##0.000';
           SqlCdsGridSemOCENF_PRECO.DisplayFormat     := '###,###,##0.000';
           SqlCdsGridSemOCVL_TOTAL_CC.DisplayFormat   := '###,###,##0.000';
           CurrPreco.DisplayFormat                    := '###,###,##0.000';
           CurrPreco.DecimalPlaces                    := 3;
       end;
     4:Begin
           SqlCdsGridComOCOCI_PRECO.DisplayFormat     := '###,###,##0.0000';
           SqlCdsGridComOCOCI_PRECO.Size              := 4;
           SqlCdsGridComOCOCI_TOTAL_CC.DisplayFormat  := '###,###,##0.0000';
           SqlCdsGridSemOCENF_PRECO.DisplayFormat     := '###,###,##0.0000';
           SqlCdsGridSemOCVL_TOTAL_CC.DisplayFormat   := '###,###,##0.0000';
           CurrPreco.DisplayFormat                    := '###,###,##0.0000';
           CurrPreco.DecimalPlaces                    := 4;
       end;
     5:Begin
           SqlCdsGridComOCOCI_PRECO.DisplayFormat     := '###,###,##0.00000';
           SqlCdsGridComOCOCI_PRECO.Size              := 5;
           SqlCdsGridComOCOCI_TOTAL_CC.DisplayFormat  := '###,###,##0.00000';
           SqlCdsGridSemOCENF_PRECO.DisplayFormat     := '###,###,##0.00000';
           SqlCdsGridSemOCVL_TOTAL_CC.DisplayFormat   := '###,###,##0.00000';
           CurrPreco.DisplayFormat                    := '###,###,##0.00000';
           CurrPreco.DecimalPlaces                    := 5;
       end;
  end;
  }

  preenchaCombo;
  //Preencher_Combo_Produtos;
  Preencher_Combo_OP('E');
  HabilitaBotoes;
  DesabilitaDados;
  GrpTipoEntrada.SetFocus;
  wLimpar := false;
  wAchouNF:= false;
  Limpar;
  Limparitens;
  CalcTotais;
  RadSemOC.Checked := true;
  RadSemOC.SetFocus;
  if DBInicio.GetParametroSistema('PMT_MULTIPLAS_IE') = 'S' then
  begin
    qInscricaoEstadual.Close;
    cdsInscricaoEstadual.Close;
    qInscricaoEstadual.SQL.Clear;
    qInscricaoEstadual.SQL.Text := 'SELECT EMI_CODIGO, EMI_IE || CAST('' - '' AS VARCHAR(3)) || EMI_DESCRICAO AS EMI_DESCRICAO FROM EMP_MULTIPLAS_IE;';
    qInscricaoEstadual.Open;
    cdsInscricaoEstadual.Open;
  end
  else
  begin
      pnIE.Visible := False;
  end;
  cdsCentroCustoItem.Open;

  chkIndustrializacao.Visible := not (DBInicio.GetParametroSistema('PMT_ENF_CHK_INDUSTRIALIZACAO') = 'S');
  cbMovimentaEstoque.Visible := not (DBInicio.GetParametroSistema('PMT_ENF_CHK_INDUSTRIALIZACAO') = 'S');
  AlterarCFOPdeRetorno1.Visible := (DBInicio.GetParametroSistema('PMT_NAT_OPER_RETORNO') = 'S');

end;

procedure TFormNfEntrada.FormClose(Sender: tObject;var Action: TCloseAction);
begin
     if DataMovimento.CdsEnf.State in [dsEdit,dsInsert] then
        Bit_CancelarClick(Sender);

    try

      SqlCdsGridSemOC.Close;
      SqlCdsTipo.Close;
      SqlCdsPcl.Close;
      SqlCdsRef.Close;
      SqlCdsAlmox.Close;
      SqlCdsCta.Close;
      DataMovimento.CdsOrdCompra.Close;
      DataMovimento.CdsItemCompra.Close;
      //Modelo de Notas
      CdsModeloNotaFiscal.Close;
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao fechar as tabelas !'+e.Message));
    end;
    inherited;
    Action := CaFree;
end;

procedure TFormNfEntrada.EdtFor_CodigoExit(Sender: tObject);
begin
    if (ActiveControl <> nil)
    and(ActiveControl.name <> 'Bit_Cancelar')
    and(ActiveControl.name <> 'Bit_Sair')
    and(ActiveControl.name <> 'BitLocalizarNota')
    and(ActiveControl.name <> 'RadComOC') then
     begin
      EdtFor_Codigo.Text:=StrZero(EdtFor_Codigo.Text,4);
      if EdtFor_Codigo.Text<>'0000' then
      begin
          PesqFornecedor.idRetorno:=EdtFor_Codigo.Text;
          if PesqFornecedor.idRetorno='' then
             GeraException('Fornecedor não localizado com o código informado');

      end
      Else
      begin
          EdtFor_Codigo.clear;
          PesqFornecedor.Clear;
      end;

     IncluirNF;
     Busca_conta_finan;
     Busca_CentroCusto;
    end;
end;

procedure TFormNfEntrada.edTipoPagamentoChange(Sender: TObject);
begin
  inherited;
  DataMovimento.DsEnf.DataSet.Edit;
end;

{CALCULOS DA ENTRADA DA NOTA}
procedure TFormNfEntrada.CalcTotais;
begin

    //Zera Campos Total
    CurTotalProdutos.Clear;
    CurTotalItens.Clear;
    CurTotalBaseICMS.Clear;
    CurTotalValorICMS.Clear;
    CurTotalValorICMSST.Clear;
    CurTotalBaseICMSST.Clear;
    CurTotalBaseIPI.Clear;
    CurTotalValorIPI.Clear;
    CurTotalValorPIS.Clear;
    CurTotalValorCofins.Clear;

    if RadComOC.checked  then
       begin
           if not (wAchouNF )  then
            begin
                  {LOCALIZOU A NOTA FISCAL NA TABELA ENF_IT01}
                  wSql1 := 'SELECT '+
                           ' E1.ENF_REGISTRO, '+
                           ' E1.ENF_IT_NOTANUMBER, '+
                           ' P1.PRD_CODIGO, '+
                           ' E1.PRD_REFER, '+   
                           ' E1.ENF_QTDE_PEDIDO_COMPRA, '+
                           ' E1.OCI_REGISTRO, '+
                           ' E1.PRD_DESCRI, '+
                           ' E1.OCP_CODIGO, '+
                           ' E1.FOR_CODIGO, '+
                           ' E1.PCX_CODIGO, '+
                           ' E1.ENF_QTDE, '+
                           ' E1.ENF_PRECO, '+
                           ' e1.cst_ipi, '+
                           ' e1.enf_it_baseipi, '+
                           ' E1.ENF_IPIALIQ, '+
                           ' e1.enf_it_vlipi, '+
                           ' e1.stb_tributacao, '+
                           ' e1.enf_it_baseicms, '+
                           ' e1.enf_icmsaliq, '+
                           ' E1.ENF_ICMS, '+
                           ' e1.enf_it_basesubtrib, '+
                           ' e1.enf_it_aliqsubtrib, '+
                           ' e1.enf_vlsubst, '+
                           ' e1.cst_pis, '+
                           ' e1.enf_basepis, '+
                           ' e1.enf_it_aliqpis, '+
                           ' e1.enf_it_vlpis, '+
                           ' e1.cst_cofins, '+
                           ' e1.enf_basecofins, '+
                           ' e1.enf_it_aliqcofins, '+
                           ' e1.enf_it_vlcofins, '+
                           ' E1.ENF_ATUALIZA_PRECO, '+
                           ' E1.ENF_ATUALIZA_ESTOQUE,  '+
                           ' E1.ENF_LOTE, '+
                           ' E1.ENF_CFOP, '+
                           ' (SELECT OPE_NATUREZA FROM OPE0000 op WHERE op.OPE_CODIGO = E1.OPE_CODIGO_RETORNO) AS ENF_CFOP_RETORNO, '+
                           ' E1.OPE_CODIGO_RETORNO, ' +
                           ' E1.ENF_ORIGEM_MERCADORIA, ' +
                           ' E1.AMX_CODIGO,  '+
                           ' A1.AMX_DESCRI, '+
                           ' P1.PRD_ESTOQUE, '+
                           ' P1.PRD_ENTRADA, '+
                           ' E1.ENF_UNIDADE_TRABALHO, '+
                           ' E1.REPETICAO_REFER, '+
                           ' P1.PRD_ALIQICM, '+
                           ' P1.PRD_SAIDA, '+
                           ' e1.ENF_IT_DESCTO, '+
                           ' E1.PRDL_REGISTRO, '+
                           ' e1.enf_it_valfrete, '+
                           ' e1.enf_it_vlseguro, '+
                           ' e1.enf_it_vldesp_aces, enf_ucom, ENF_UTRIB,  ENF_QTDE_ORIGINAL, ENF_PRECO_ORIGINAL, ENF_PTOTAL_ORIGINAL '+
                           ' FROM ENF_IT01 E1 '+
                           ' LEFT JOIN PRD0000 P1  ON  (E1.PRD_CODIGO = P1.PRD_CODIGO) '+
                           ' LEFT JOIN ALMOX0000 A1 ON (A1.AMX_CODIGO = E1.AMX_CODIGO) ';
                  SqlCdsGridSemOC.Close;
                  SqlCdsGridSemOC.CommandText := SqlDef('ORDENSCOMPRA',wSql1,'where E1.ENF_IT_NOTANUMBER = '''+EdtNota.Text+''' and E1.FOR_CODIGO = '''+EdtFor_Codigo.Text+''' ','E1.ENF_REGISTRO desc','E1.');
                  if dbInicio.isDesenvolvimento then
                    CopytoClipboard(SqlCdsGridSemOC.CommandText);
                  SqlCdsGridSemOC.Open;
                  SqlCdsGridSemOc.DisableControls;
                  if not SqlCdsGridSemOc.IsEmpty then
                     begin
                         SqlCdsGridSemOc.First;
                         while not SqlCdsGridSemOc.EOF do
                           begin
                               CurTotalProdutos.Value    :=  CurTotalProdutos.Value    + SqlCdsGridSemOCVL_TOTAL_CC.AsFloat;
                               CurTotalItens.Value       :=  CurTotalItens.Value       + 1;
                               CurTotalBaseICMS.Value    :=  CurTotalBaseICMS.Value    + SqlCdsGridSemOCENF_IT_BASEICMS.AsFloat;
                               CurTotalValorICMS.Value   :=  CurTotalValorICMS.Value   + SqlCdsGridSemOCENF_ICMS.AsFloat;
                               CurTotalValorICMSST.Value :=  CurTotalValorICMSST.Value + SqlCdsGridSemOCENF_VLSUBST.AsFloat;
                               CurTotalBaseICMSST.Value  :=  CurTotalBaseICMSST.Value  + SqlCdsGridSemOCENF_IT_BASESUBTRIB.AsFloat;
                               CurTotalBaseIPI.Value     :=  CurTotalBaseIPI.Value     + SqlCdsGridSemOCENF_IT_BASEIPI.AsFloat;
                               CurTotalValorIPI.Value    :=  CurTotalValorIPI.Value    + SqlCdsGridSemOCENF_IT_VLIPI.AsFloat;
                               CurTotalValorPIS.Value    :=  CurTotalValorPIS.Value    + SqlCdsGridSemOCENF_IT_VLPIS.AsFloat;
                               CurTotalValorCofins.Value :=  CurTotalValorCofins.Value + SqlCdsGridSemOCENF_IT_VLCOFINS.AsCurrency;

                               SqlCdsGridSemOC.Next;
                           end;
                     end;
                  SqlCdsGridSemOc.EnableControls;
              end;
       end
    else
       begin
           {Essa proc. faz calculo de totais de valores de produtos, IPI e ICMS.}
           SqlCdsGridSemOC.DisableControls;
           if not SqlCdsGridSemOC.IsEmpty then
              begin
                  SqlCdsGridSemOC.First;
                  while not SqlCdsGridSemOC.EOF do
                    begin
                        CurTotalProdutos.Value    :=  CurTotalProdutos.Value    + SqlCdsGridSemOCVL_TOTAL_CC.AsFloat;
                        CurTotalItens.Value       :=  CurTotalItens.Value       + 1;
                        CurTotalBaseICMS.Value    :=  CurTotalBaseICMS.Value    + SqlCdsGridSemOCENF_IT_BASEICMS.AsFloat;
                        CurTotalValorICMS.Value   :=  CurTotalValorICMS.Value   + SqlCdsGridSemOCENF_ICMS.AsFloat;
                        CurTotalValorICMSST.Value :=  CurTotalValorICMSST.Value + SqlCdsGridSemOCENF_VLSUBST.AsFloat;
                        CurTotalBaseICMSST.Value  :=  CurTotalBaseICMSST.Value  + SqlCdsGridSemOCENF_IT_BASESUBTRIB.AsFloat;
                        CurTotalBaseIPI.Value     :=  CurTotalBaseIPI.Value     + SqlCdsGridSemOCENF_IT_BASEIPI.AsFloat;
                        CurTotalValorIPI.Value    :=  CurTotalValorIPI.Value    + SqlCdsGridSemOCENF_IT_VLIPI.AsFloat;
                        CurTotalValorPIS.Value    :=  CurTotalValorPIS.Value    + SqlCdsGridSemOCENF_IT_VLPIS.AsFloat;
                        CurTotalValorCofins.Value :=  CurTotalValorCofins.Value + SqlCdsGridSemOCENF_IT_VLCOFINS.AsCurrency;
                        SqlCdsGridSemOC.Next;
                    end;
              end;
           SqlCdsGridSemOC.EnableControls;
       end;

       NTotalGeral.Value := (CurTotalProdutos.Value+CurTotalValorIPI.Value+CurrVlFrete.Value+CurrVlDespesas.Value+CurrVlSeguro.Value+CurTotalValorICMSST.Value)-CurrVlDescto.Value; //Format('%n',[WTotal + WVLIPI]);
       LbFreteNaoNota.Visible := False;

    if RadComOC.checked  then
       begin
       if (wAchouNF ) then
          SqlCdsGridSemOC.EnableControls;
       end
    else
       begin
           SqlCdsGridSemOC.EnableControls;
       end;
end;

procedure TFormNfEntrada.Bit_pagarClick(Sender: tObject);
var vFlag: boolean;
begin

    if (BuscaUmDadoSqlAsInteger(
       ' SELECT count(pg.PAG_REGISTRO) ' +
       '   FROM PAG0000 pg ' +
       '   JOIN PAG_PC01 pp ON (pp.PAG_CODIGO = pg.PAG_CODIGO) ' +
       ' WHERE pg.PAG_NUMDOC = ' + QuotedStr(EdtNota.Text) +
       '   AND pg.FOR_CODIGO = ' + QuotedStr(EdtFor_Codigo.Text) +
       '   AND PAG_TIPO = ''NF'' '
    ) = 0) and (EdtPcl_Codigo.Text = '') then
    begin
      MessageDlg('Escolha um Prazo de Pagamento, Por Favor.', mtWarning, [mbOk], 0);
      exit;
    end
    else
    if (LblSituacaoProjetoObra.Caption = 'FECHADO') then
       uteis.aviso('A Nota não pode ser alterada pois já foi realizado a vinculação de Centro de Custos na mesma!')
    else
    if ((bCentroCustoObrigatorio) and (DbePCX_CODIGO.Text = '')) then
       uteis.aviso('Informe o Centro de Custo!')
    else
    begin
             DataCadastros.sqlUpdate.Close;
             DataCadastros.SqlUpdate.sql.text :=SQLDEF('PAGAR','Select PAG_CODIGO,PAG_NUMDOC,PAG_TIPO,FOR_CODIGO from PAG0000','where PAG_NUMDOC = '''+EdtNota.Text+''' AND PAG_TIPO = ''NF'' AND FOR_CODIGO = '''+EdtFor_Codigo.Text+'''','','');
             if DBInicio.IsDesenvolvimento then
                CopyToClipBoard(DataCadastros.SqlUpdate.sql.text);
             DataCadastros.sqlUpdate.Open;
             vFlag := DataCadastros.sqlUpdate.IsEmpty;
             if vFlag then
             begin
                  FormNfPagar := TFormNfPagar.Create(Application);
                  try
                        FormNfPagar.wIncluir := True;
                        wLancadoPagar := True;
                        FormNfPagar.ShowModal;
                  finally
                        FormNfPagar.Destroy;
                        FormNfPagar := nil;
                  end;
             end
             else
             begin
                  FormNfPagar := TFormNfPagar.Create(Application);
                  try
                     FormNfPagar.EdtCodPagar.Text := DataCadastros.sqlUpdate.fieldByName('PAG_CODIGO').AsString;
                     FormNfPagar.wIncluir := false;
                     wLancadoPagar := True;
                     FormNfPagar.ShowModal;
                  finally
                         FormNfPagar.Destroy;
                         FormNfPagar := nil;
                  end;
             end;
    end;
end;

{VERIFICA SE TODOS OS DADOS NECESSARIOS JA FORAM DIGITADOS SO USO
ANTES DE GRAVAR}
function TFormNfEntrada.VerDados:Boolean;
begin
    try
    Result := True;

     if (cbMovimentaEstoque.visible) and (cbMovimentaEstoque.State=cbGrayed) then
     begin
          Result := False;
          uteis.aviso( 'A Caixa de Seleção MOVIMENTA ESTOQUE precisa receber uma ação!'+#13+
                       'Desmarcada - Não movimenta estoque.'+#13+
                       'Marcada - Movimenta Estoque' );
          exit;
     end
     Else
    if (Curr_Valor_Produtos.Value <= 0) then
       begin
           uteis.aviso('Entre com o valor total dos produtos');
           if (Curr_Valor_Produtos.Enabled and Curr_Valor_Produtos.Visible) then
              Curr_Valor_Produtos.SetFocus;
           Result := False;
           Exit;
       end;
    if (RadSemOC.Checked) then
       begin
           {Fornecedor}
           if (EdtFor_Codigo.Text = '')then
              begin
                  uteis.aviso('Entre com o fornecedor da Nota Fiscal!');
                  if (EdtFor_Codigo.Enabled) then
                     EdtFor_Codigo.SetFocus;
                  Result := False;
                  Exit;
              end;
       end;
    
    {Nº da Nota Fiscal com OC ou sem OC}
    if (EdtNota.Text = '') then
       begin
           uteis.aviso('Entre com o numero da nota fiscal !');
           if (EdtNota.Enabled) then
              EdtNota.SetFocus;
           Result := False;
           Exit;
       end;
    {Condição de Pagamento}
    if (EdtPcl_Codigo.Text = '')and(not btnDanfe.Enabled) then
       begin
           uteis.aviso('Entre com a condição de pagamento !');
           if (EdtPcl_Codigo.Enabled) then
              EdtPcl_Codigo.SetFocus;
           Result := False;
           Exit;
       end;
    
    {Conta Caixa}
    if (DBECct_codigo.Text = '') then
       begin
           uteis.aviso('Entre com a Conta financeira !');
           if (DbeCCT_CODIGO.Enabled) then
              DbeCCT_CODIGO.SetFocus;
           Result := False;
           Exit;
       end;
    {Serie da Nota}
    (*if (DBeENF_SERIE.Text = '')then
       begin
           uteis.aviso('Entre com a série da Nota!');
           if (DBeENF_SERIE.Enabled) then
              DBeENF_SERIE.SetFocus;
           Result := False;
       end;*)
    {Operacao da Nota do Fornecedor}
    if (DbeOPE_NATUREZA.Text = '')then
       begin
           uteis.aviso('Entre com a natureza da operação!');
           if (DbeOPE_NATUREZA.Enabled) then
              DbeOPE_NATUREZA.SetFocus;
           Result := False;
           Exit;
       end;
    {Emissao da Nota do Fornecedor}
    if (DbeENF_EMISSAO.Date = 0) then
       begin
           uteis.aviso('Entre com a data de emissão!');
           if (DbeENF_EMISSAO.Enabled) then
              DbeENF_EMISSAO.SetFocus;
           Result := False;
           Exit;
       end;
    {Data de Entrega}
    if (DBeENF_ENTRADA.Date = 0) then
       begin
           uteis.aviso('Entre com a data de Entrada!');
           if (DBeENF_ENTRADA.Enabled) then
              DBeENF_ENTRADA.SetFocus;
           Result := False;
           Exit;
       end;
    {Conta Analise}
    if (DbeCCT_CODIGO.Text = '') then
       begin
           uteis.aviso('Entre com a Conta financeira !');
           if (DbeCCT_CODIGO.Enabled) then
              DbeCCT_CODIGO.SetFocus;
           Result := False;
           Exit;
       end;
    if (LblSituacaoProjetoObra.Caption = 'FECHADO') then
      begin
         uteis.aviso('A Nota não pode ser alterada pois já foi realizado a vinculação dos Projetos/Obras com a mesma!');
         Result := False;
         Exit;
      end;
    if (CurrVlIcms.Value>0) then
       begin
           if (CurrBaseIcms.Value = 0) then
              begin
                  uteis.aviso('Entre com o valor da base do icms !');
                  if (CurrBaseIcms.Enabled and CurrBaseIcms.Visible) then
                     CurrBaseIcms.SetFocus;
                  Result := False;
                  Exit;
              end;
           if (Curr_Vl_Icms.Value = 0) then
              begin
                  uteis.aviso('Entre com o valor do icms !');
                  if (Curr_Vl_Icms.Enabled and Curr_Vl_Icms.Visible) then
                     Curr_Vl_Icms.SetFocus;
                  Result := False;
                  Exit;
              end;
       end;
    except

    end;
end;

procedure TFormNfEntrada.RadComOCClick(Sender: tObject);
begin
    //Perfil com ordem de compra
    BitOrdem.Visible    := True;
    LabNota.Visible     := False;
    EdtNota.Visible     := False;

    GrpFornecedor.Visible       := True;
    GrpFornecedor.TabOrder      := 1;
    LayOutENF;
    HabilitaDados;
    GrpFornecedor.Enabled       := false;
    CurrQtdeR.Enabled    := True;

    CurrQtdeR.ReadOnly   := False;
    CurrQtdeR.TabStop    := True;
    CbRef.Enabled        := False;

    // COM ORDEM DE COMPRA sempre será 1 na repeticao, pois a OC não aceita repetir a mesma REFERENCIA mais de uma vez
    wRepeticao_refer     := 1;

end;

procedure TFormNfEntrada.RadSemOCClick(Sender: tObject);
begin
    //Perfil sem ordem de compra
    LabNota.Visible     := True;
    EdtNota.Visible     := True;

    GrpFornecedor.Visible        := True;
    GrpFornecedor.TabOrder       := 1;
    LayOutENF;
    HabilitaDados;
    Limpar;
    CurrQtdeS.Enabled     := False;

    CurrQtdeS.ReadOnly    := True;
    CurrQtdeS.TabStop     := false;
   // CbRef.Enabled         := false;
end;

procedure TFormNfEntrada.preenchaCombo;
begin

    //Modelo de Notas
    CdsModeloNotaFiscal.Open;
    try
      // Produtos
      if frmBarra = nil then
        frmBarra := TfrmBarra.Create(Self);
      frmBarra.Show;
      frmBarra.BorderStyle := bsToolWindow;
      frmBarra.Height := 60;
      frmBarra.Caption := 'Carregando Produtos, por favor , aguarde.';

      SqlCdsRef.Close;
      SqlCdsRef.CommandText := SQLDEF('PRODUTOS','select PRD_REFER from PRD0000','WHERE PRD_STATUS = ''A''','PRD_REFER','');
      SqlCdsRef.Open;
      CbRef.Items.Clear;
      CbRef.Items.Add('');
      SqlCdsRef.First;
      frmBarra.ProgressBar1.Position := 0;
      frmBarra.ProgressBar1.Max := SqlCdsRef.RecordCount;
      while not SqlCdsRef.Eof do
        begin
            frmBarra.ProgressBar1.Position := SqlCdsRef.RecNo;
            CbRef.Items.Add(SqlCdsRefPRD_REFER.AsString);
            SqlCdsRef.Next;
        end;
      CbRef.ItemIndex := 0;
      //Fornecedor

      PesqFornecedor.Clear;


      //Almoxarifado
      //if dbInicio.Empresa.wMultiAlmox = 'S' then
      //   begin
             SqlCdsAlmox.Close;
             SqlCdsAlmox.CommandText := SQLDEF('TABELAS','select * from ALMOX0000','','AMX_DESCRI','');
             SqlCdsAlmox.Open;
             CbAlmox.Clear;
             SqlCdsAlmox.First;
             frmBarra.ProgressBar1.Position := 0;
             frmBarra.ProgressBar1.Max := SqlCdsAlmox.RecordCount;
             frmBarra.Caption := 'Carregando Almoxarifados, por favor , aguarde.';
             while not SqlCdsAlmox.Eof do
               begin
                   frmBarra.ProgressBar1.Position := SqlCdsAlmox.RecNo;
                   CbAlmox.Items.Add(SqlCdsAlmoxAMX_DESCRI.AsString);
                   SqlCdsAlmox.Next;
               end;
             CbAlmox.ItemIndex := 0;
      //   end;
      //Carrega o almoxarifado dos parametros
      EdtAlmox.Text                  := dbInicio.empresa.wPmt_Amx_EntradaNota;
      EdtAlmox.Text := StrZero(EdtAlmox.Text,EdtAlmox.MaxLength);
      if SqlCdsAlmox.Locate('AMX_CODIGO',EdtAlmox.Text,[])  then
         begin
             CbAlmox.Text := SqlCdsAlmoxAMX_DESCRI.AsString;
         end
      else
         begin
             EdtAlmox.Text := '';
         end;

      //Conta Analise
      SqlCdsCta.Close;
      SqlCdsCta.CommandText := SQLDEF('TABELAS','select C1.* from CCT_0000 C1','where C1.CCT_CONTA= ''S'' and C1.CCT_STATUS = ''L''','C1.CCT_DESCRI','C1.');
      SqlCdsCta.Open;
      CbCtaAnalise.Clear;
      SqlCdsCta.First;
      frmBarra.ProgressBar1.Position := 0;
      frmBarra.ProgressBar1.Max := SqlCdsCta.RecordCount;
      frmBarra.Caption := 'Carregando Contas Financeiras, por favor , aguarde.';
      while not SqlCdsCta.Eof do
        begin
            frmBarra.ProgressBar1.Position := SqlCdsCta.RecNo;
            CbCtaAnalise.Items.Add(SqlCdsCtaCCT_DESCRI.AsString);
            SqlCdsCta.Next;
        end;
      CbCtaAnalise.ItemIndex := 0;


      //Centro de Custo
      CdsCentroCusto.Close;
      CdsCentroCusto.CommandText := SQLDEF('TABELAS','SELECT * FROM PCX0000 T1','where PCX_TIPO = ''L''','T1.PCX_NIVEL','T1.');
      CdsCentroCusto.Open;
      CbCentroCusto.Clear;
      CdsCentroCusto.First;
      frmBarra.ProgressBar1.Position := 0;
      frmBarra.ProgressBar1.Max := CdsCentroCusto.RecordCount;
      frmBarra.Caption := 'Carregando Centros de Custos, por favor , aguarde.';
      while not CdsCentroCusto.Eof do
        begin
            frmBarra.ProgressBar1.Position := CdsCentroCusto.RecNo;
            CbCentroCusto.Items.Add(UpperCase(CdsCentroCustoPCX_DESCRI.AsString));
            CdsCentroCusto.Next;
        end;
      CbCentroCusto.ItemIndex := -1;


      //Condiçao de pagamento
      SqlCdsPcl.Close;
      SqlCdsPcl.CommandText := SQLDEF('TABELAS','select * from PCL0000','','PCL_NOME','');
      SqlCdsPcl.Open;
      CbPgto.Clear;
      SqlCdsPcl.First;
      frmBarra.ProgressBar1.Position := 0;
      frmBarra.ProgressBar1.Max := SqlCdsPcl.RecordCount;
      while not SqlCdsPcl.Eof do
        begin
            frmBarra.ProgressBar1.Position := SqlCdsPcl.RecNo;
            CbPgto.Items.Add(SqlCdsPclPCL_NOME.AsString);
            SqlCdsPcl.Next;
        end;
      CbPgto.ItemIndex := 0;

      frmBarra.Hide;
      frmBarra.Close;

    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao preencher as Combos !'+e.message));
    end;

end;

procedure TFormNfEntrada.DesabiliItemSelec;
begin
   // EdtOrdCompra.Enabled  := false;
    EdtNota.Enabled       := false;
    EdtPcl_Codigo.Enabled := false;
    CbPgto.Enabled        := false;
    DbeCCT_CODIGO.Enabled := false;
    CbCtaAnalise.Enabled  := false;
   // GrpFornecedor.Enabled        := false;
   // GrpDados.Enabled        := false;
    PageControl1.Enabled        := false;
    //CbRef.Enabled         := false;
    Bit_Estoque.Enabled   := False;
    SpPesquisa.Enabled    := false;
    Bit_Cancelar.Enabled  := false;
    Bit_Gravar.Enabled    := false;
    Bit_Estoque.Enabled   := False;
end;

procedure TFormNfEntrada.HabiliItemSelec;
begin
    //EdtOrdCompra.Enabled  := True;
    EdtNota.Enabled       := True;
    EdtPcl_Codigo.Enabled := True;
    CbPgto.Enabled        := True;
    DbeCCT_CODIGO.Enabled := True;
    CbCtaAnalise.Enabled  := True;
   // GrpDados.Enabled      := True;
    PageControl1.Enabled        := True;
    if (RadSemOC.Checked) then
       CbRef.Enabled      := True
    else
       CbRef.Enabled      := False;
    Bit_Estoque.Enabled   := True;
    SpPesquisa.Enabled    := True;
    Bit_Cancelar.Enabled  := true;
    Bit_Gravar.Enabled    := true;
    Bit_Estoque.Enabled   := true;
    pgcImpostos.ActivePageIndex := 0;
end;

procedure TFormNfEntrada.DesabilitaDados;
begin
    EdtPcl_Codigo.Enabled  := False;
    CbPgto.Enabled         := False;
    DbeCCT_CODIGO.Enabled  := False;
    CbCtaAnalise.Enabled   := False;
    Grp003.Enabled         := False;
    PageControl1.Enabled         := False;
end;

procedure TFormNfEntrada.HabilitaDados;
begin
    EdtPcl_Codigo.Enabled := True;
    CbPgto.Enabled        := True;
    DbeCCT_CODIGO.Enabled := True;
    CbCtaAnalise.Enabled  := True;
    Grp003.Enabled        := True;
    PageControl1.Enabled        := True;
end;

procedure TFormNfEntrada.MostraDados;
begin
  if dbinicio.Empresa.wPMT_NAO_AUTO_PVENDA then
    wAtualiza_pvenda := 'N'
  else
  wAtualiza_pvenda  := PesqFornecedor.CDS.FieldByName('FOR_ATUALIZA_PVENDA').AsString;
  // pegar conta financeira
  Busca_conta_finan;
  Busca_CentroCusto;
  if SqlCdsCta.Locate('CCT_CODIGO',DataMovimento.CdsEnfCCT_CODIGO.AsString,[])  then
   begin
       CbCtaAnalise.Text := SqlCdsCtaCCT_DESCRI.AsString;
   end ;

    {Tipo do Frete = (1 = pago) (2 = à pagar) (0 = outros) }
    CbFreteT.ItemIndex := iif(DataMovimento.CdsEnfENF_TIPO_FRETE.AsInteger = 1,0,
                          iif(DataMovimento.CdsEnfENF_TIPO_FRETE.AsInteger = 2,1,2));

    {CFOP - Mostra a Operaçao Fiscal}
     if SqlCdsOP.Locate('OPE_CODIGO',DataMovimento.CdsEnfOPE_CODIGO.AsString,[]) then
     begin
           wCod_Oper := SqlCdsOPOPE_CODIGO.AsString;
           CbOP.Text := SqlCdsOPOPE_NATUREZA.AsString+' - '+SqlCdsOPOPE_DESCRI.AsString;
     end
     else
         CbOP.Text := '';
    edPedidodireto.Text := DataMovimento.CdsEnfOCP_CODIGO.AsString;
    cbMovimentaEstoque.Enabled := False;
    wModelo_Nf                := DataMovimento.CdsEnfENF_MODELO_NF.AsString;
    EdtNota.Text              := DataMovimento.CdsEnfENF_NOTANUMBER.AsString;
    CurrVlSeguro.Value        := DataMovimento.CdsEnfENF_VLSEGURO.AsFloat      ;
    CurrVlDescto.Value        := DataMovimento.CdsEnfENF_VL_DESCTO.AsFloat      ;
    CurrTotalNota.Value       := DataMovimento.CdsEnfENF_TOT_NOTA.AsFloat      ;
    Curr_Valor_Produtos.Value := DataMovimento.CdsEnfENF_TOT_PROD.AsFloat      ;
    CurrBaseIcms.Value        := DataMovimento.CdsEnfENF_BASEICMS.AsFloat;
    Curr_Vl_Icms.Value        := DataMovimento.CdsEnfENF_VL_ICMS.AsFloat;
    CurrVlICms.Value          := DataMovimento.CdsEnfENF_ALIQ_ICMS.AsFloat;
    currFrete.Value := DataMovimento.CdsEnfENF_VLFRETEPORFORA.AsFloat;
    currDifICMS.Value := DataMovimento.CdsEnfENF_VLRDIFICMS.AsFloat ;
    currOutros.Value :=  DataMovimento.CdsEnfENF_VLOUTROS.AsFloat;
    chkIndustrializacao.Checked := DataMovimento.CdsEnfENF_INDUSTRIALIZACAO.AsString = 'S';
    cbMovimentaEstoque.Checked:=  DataMovimento.CdsEnfENF_ATUALIZA_ESTOQUE.AsString = 'S';
    vMovimentaEstoque := DataMovimento.CdsEnfENF_ATUALIZA_ESTOQUE.AsString;
    // tipo de pagamento 0 a vista ; 1 - prazo 2 - outros  3 - CARTAO DE CREDITO , 4 - CARTÃO DEBITO, 9 - sem pagamento
    if DataMovimento.CdsEnfENF_MODALIDADE.AsString = '0' then
       edTipoPagamento.ItemIndex := 0
    else
    if DataMovimento.CdsEnfENF_MODALIDADE.AsString = '1' then
        edTipoPagamento.ItemIndex := 1
    else
    if DataMovimento.CdsEnfENF_MODALIDADE.AsString = '2' then
       edTipoPagamento.ItemIndex := 2
    else
    if DataMovimento.CdsEnfENF_MODALIDADE.AsString = '3' then
       edTipoPagamento.ItemIndex := 3
    else
    if DataMovimento.CdsEnfENF_MODALIDADE.AsString = '4' then
       edTipoPagamento.ItemIndex := 4
    else
    if DataMovimento.CdsEnfENF_MODALIDADE.AsString = '9' then
       edTipoPagamento.ItemIndex := 5;
    EdtPcl_Codigo.Text := DataMovimento.CdsEnfPCL_CODIGO.AsString ;
    if  (EdtPcl_Codigo.Text <> '' ) and (SqlCdsPcl.Locate('PCL_CODIGO',StrZero(EdtPcl_Codigo.Text,EdtPcl_Codigo.MaxLength),[]))  then
      CbPgto.Text := SqlCdsPclPCL_NOME.AsString;
    edPedidodireto.Text := DataMovimento.CdsEnfOCP_CODIGO.AsString;
    //
    if (wAchouNF) then
       begin
          CurrVlFrete.Value    := DataMovimento.CdsEnfENF_VLFRETE.AsFloat      ;
          wfrete_participatotal:= DataMovimento.CdsEnfENF_FRETEPARTICIPATOT.Asstring;
          CurrVlDespesas.Value := DataMovimento.CdsEnfENF_DESP_ACES.AsFloat      ;
          CurrVlICms.Value     := DataMovimento.CdsEnfENF_ALIQ_ICMS.AsFloat      ;
       end
    else
    if not (wAchouNF) then
       begin
          CurrVlFrete.Value    := DataMovimento.CdsOrdCompraOCP_FRETE.AsFloat      ;
          CurrVlDespesas.Value := DataMovimento.CdsOrdCompraOCP_DESPESAS.AsFloat      ;
          CurrVlICms.Value     := DataMovimento.CdsOrdCompraOCP_ICMS.AsFloat      ;
       end;
    CalcTotais;
    CurrBaseST.Value           := DataMovimento.CdsEnfENF_VLBASESUBTRIB.AsFloat      ;
    CurrVlST.Value             := DataMovimento.CdsEnfENF_VL_SUBTRIB.AsFloat      ;

    NTotalGeral.Value          := DataMovimento.CdsEnfENF_TOT_NOTA.AsFloat      ;
    //Status Projeto Obra
    if (DataMovimento.CdsEnfENF_FECHADO_PROJETO_OBRA.AsString = 'S') then
      begin
         LblSituacaoProjetoObra.Caption := 'FECHADO';
         LblSituacaoProjetoObra.Font.Color := clRed;
      end
    else
    if (DataMovimento.CdsEnfENF_FECHADO_PROJETO_OBRA.AsString = 'N') then
      begin
         LblSituacaoProjetoObra.Caption := 'ABERTO';
         LblSituacaoProjetoObra.Font.Color := clBlue;
      end
    else
      LblSituacaoProjetoObra.Caption := '';    //

    {Verifica se ja foi lançado a nota fiscal no contas a pagar}
     DataCadastros.sqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.text :=SQLDEF('PAGAR','Select PAG_CODIGO,PAG_NUMDOC,PAG_TIPO,FOR_CODIGO from PAG0000','where PAG_NUMDOC = '''+EdtNota.Text+''' AND PAG_TIPO = ''NF'' AND FOR_CODIGO = '''+EdtFor_Codigo.Text+'''','','');
     DataCadastros.sqlUpdate.Open;
     wLancadoPagar := not  DataCadastros.sqlUpdate.IsEmpty;

    //btnAlterarData.Visible := not DataMovimento.CdsEnfENF_XML.IsNull;
    btnDanfe.Enabled := not DataMovimento.CdsEnfENF_XML.IsNull;
    btnDevolucao.Enabled := btnDanfe.Enabled;


    CbRef.Text           := '';

end;

procedure TFormNfEntrada.DesabilitaBotoes;
begin
  if DataMovimento.CdsEnf.Active and not DataMovimento.CdsEnf.IsEmpty then
     Bit_pagar.Enabled :=  BuscaUmDadoSqlAsString('SELECT COALESCE(OPE_SEMVLCOM,''N'') FROM OPE0000 WHERE OPE_CODIGO = '+QuotedStr(DataMovimento.CdsEnfOPE_CODIGO.AsString) +
                  ConcatSe(' AND ',DBInicio.ExclusivoSql('OPERACAOFISCAL') )) <> 'S'
  else
     Bit_pagar.Enabled := False;

  Bit_Gravar.Enabled   := True;
  Bit_Cancelar.Enabled := True;
  BitLocalizarNota.Enabled := False;
  btnNovaEntrada.Enabled := False;
  Bit_Sair.Enabled     := False;
  dblcInscricaoEstadual.Enabled := False;

end;

procedure TFormNfEntrada.HabilitaBotoes;
begin
     if (EdtNota.Text = '')   then
        Bit_pagar.Enabled    := False;

    Bit_Gravar.Enabled   := False;
    Bit_Cancelar.Enabled := False;
    Bit_Sair.Enabled     := True;
    BitLocalizarNota.Enabled := True;
    btnNovaEntrada.Enabled := True;
    BitOrdem.Enabled     := True;
    BitLocalizarNota.Enabled := True;
    GrpNota.Enabled      := True;
    dblcInscricaoEstadual.Enabled := True;

end;

procedure TFormNfEntrada.SqlCdsGridSemOCCalcFields(DataSet: TDataSet);
begin
    SqlCdsGridSemOCFISICO_CC.AsFloat         := (SqlCdsGridSemOCPRD_ESTOQUE.AsFloat       + SqlCdsGridSemOCPRD_ENTRADA.AsFloat      )-SqlCdsGridSemOCPRD_SAIDA.AsFloat      ;
    SqlCdsGridSemOCVL_TOTAL_CC.AsFloat := (SqlCdsGridSemOCENF_QTDE.AsFloat * SqlCdsGridSemOCENF_PRECO.AsFloat);
end;

procedure TFormNfEntrada.LayOutENF;
begin
     if RadComOC.checked   then
     begin
           //com ordem
           wTipoNF              := 'N';
           if (DataMovimento.CdsEnf.State in [dsInsert]) then
              Carrega_Parametro_Sintegra_Padrao;

           DBGridSemOC.Visible  := False;
           SpPesquisa.Visible   := false;
           BitOrdem.Visible     := True;
           DbGridComOC.Visible  := True;

     end;
     if (RadSemOC.checked ) then
     begin
           // sem ordem
           if (RadSemOC.Checked) then
           begin
                wTipoNF       := 'N';
                if (DataMovimento.CdsEnf.State in [dsInsert]) then
                   Carrega_Parametro_Sintegra_Padrao;
                CbRef.Enabled        := True;
           end;

           EdtNota.Enabled      := True;
           DBGridSemOC.Visible  := True;
           SpPesquisa.Visible   := True;
           DbGridComOC.Visible  := False;
     end;
end;

procedure TFormNfEntrada.Limpar;
begin
    CdsTemp.EmptyDataSet;
    PesqFornecedor.Clear;
    DbeOPE_NATUREZA.Clear;
    EdtPcl_Codigo.Text   := '';
    CbPgto.Text          := '';
    Edt_Almox_ant.Text   := '';
    if not wLimpar  then
       begin
           EdtFor_Codigo.Text := '';
           EdtNota.Text       := '';
       end;
    //Itens
    CbRef.Text           := '';
    EdDescricao.Text     := '';
    CurrSaldo.Clear;
    CurrQtdeR.Clear;
    CurrQtdeS.Clear;
    CurrPreco.Clear;
    DbeChaveNFe.Clear;
    CrCfopItem.Clear;
    edPedidodireto.Clear;
    EdtAlmox.Clear;
    CbAlmox.Text         := '';
    CbLoteProduto.EditValue := null;
    cxCentroCustoItem.EditValue := null;
    // Rapida
    CurItemAliquotaIPIRapida.Clear;
    CurItemAliquotaICMSRapida.Clear;

    //ICMS
    cbbItemCST.ItemIndex := -1;
    cbENF_ORIGEM_MERCADORIA.ItemIndex := -1;
    CurItemBaseICMS.Clear;
    CurItemAliquotaICMS.Clear;
    CurItemValorICMS.Clear;
    //ICMS ST
    CurItemBaseICMSST.Clear;
    CurItemAliquotaICMSST.Clear;
    CurItemValorICMSST.Clear;
    //IPI
    cbbItemCSTIPI.ItemIndex := -1;
    CurItemBaseIPI.Clear;
    CurItemAliquotaIPI.Clear;
    CurItemValorIPI.Clear;
    //PIS
    cbbItemCSTPIS.ItemIndex := -1;
    CurItemBasePIS.Clear;
    CurItemAliquotaPIS.Clear;
    CurItemValorPIS.Clear;
    //COFINS
    cbbItemCSTCofins.ItemIndex := -1;
    CurItemBaseCofins.Clear;
    CurItemAliquotaCofins.Clear;
    CurItemValorCofins.Clear;
    //Ordem de Compra
    edtItemOrdemCompra.Clear;
    edtRegistroOrdemCompraItem.Clear;
    CurItemOrdemCompraBaixada.Clear;
    //Frete
    CurFrete.Clear;
    //Totais Itens
    CurTotalProdutos.Clear;
    CurTotalItens.Clear;
    CurTotalBaseICMS.Clear;
    CurTotalValorICMS.Clear;
    CurTotalValorICMSST.Clear;
    CurTotalBaseICMSST.Clear;
    CurTotalBaseIPI.Clear;
    CurTotalValorIPI.Clear;
    CurTotalValorPIS.Clear;
    CurTotalValorCofins.Clear;
    //
    CbCtaAnalise.Text    := '';
    CbCentroCusto.Text := '';
    CbFreteT.ItemIndex   := -1;
    edTipoPagamento.ItemIndex := -1;
    CbOP.Text            := '';
    CurrVlFrete.Value    := 0;
    chkIndustrializacao.Checked := False;
    wfrete_participatotal:= 'N';
    LbFreteNaoNota.Visible:= False;
    CurrVlDespesas.Value := 0;
    CurrVlSeguro.Value   := 0;
    CurrVlDescto.Value   := 0;
    CurrTotalNota.Value  := 0;
    CurrVlST.Value       := 0;
    CurrBaseST.Value     := 0;
    CurrVlICms.Value     := 0;
    Bit_Cancelar.Caption := '&Cancelar';
    btnDanfe.Enabled := False;
    btnDevolucao.Enabled := False;
    CurrBaseIcms.Value   := 0;
    Curr_Vl_Icms.Value   := 0;
    Curr_Valor_Produtos.Value  := 0;
end;

procedure TFormNfEntrada.EdtPcl_CodigoExit(Sender: tObject);
begin
    if (ActiveControl <> nil)
    and(ActiveControl.name <> 'Bit_Cancelar')
    and(ActiveControl.name <> 'Bit_Sair') then
       begin
           if DataMovimento.CdsEnf.State in [dsEdit,dsInsert] then
              begin
                  if EdtPcl_Codigo.Text <> '' then
                     begin
                         EdtPcl_Codigo.Text := StrZero(EdtPcl_Codigo.Text,EdtPcl_Codigo.MaxLength);
                         if SqlCdsPcl.Locate('PCL_CODIGO',StrZero(EdtPcl_Codigo.Text,EdtPcl_Codigo.MaxLength),[]) then
                            begin
                                CbPgto.Text := SqlCdsPclPCL_NOME.AsString;
                                EdtPcl_Codigo.Text:= StrZero(SqlCdsPclPCL_CODIGO.AsString,EdtPcl_Codigo.MaxLength);
                            end
                         else
                            begin
                                uteis.aviso('Condição de pagamento não encontrado !');
                                EdtPcl_Codigo.Text := '';
                                CbPgto.Text  := '';
                                EdtPcl_Codigo.SetFocus;
                            end;
                     end
                  else
                     begin
                         if not (ActiveControl.Name = 'CbPgto') then
                            begin
                                uteis.aviso('Informe a condição de pagamento !');
                                EdtPcl_Codigo.Text := '';
                                EdtPcl_Codigo.SetFocus;
                            end;
                     end;
              end;
       end;
end;

procedure TFormNfEntrada.CbPgtoChange(Sender: TObject);
begin
  inherited;
  DataMovimento.DsEnf.DataSet.Edit;
end;

procedure TFormNfEntrada.CbPgtoClick(Sender: tObject);
begin
    if (ActiveControl<> nil)
    and(ActiveControl.name <> 'Bit_Cancelar')
    and(ActiveControl.name <> 'Bit_Sair')
    and(ActiveControl.name <> 'EdtPcl_Codigo') then
       begin
           if DataMovimento.CdsEnf.State in [dsEdit,dsInsert] then
              begin
                  if (CbPgto.Text <> '') then
                     begin
                         if SqlCdsPcl.Locate('PCL_NOME',CbPgto.Text,[loCaseInsensitive]) then
                            begin
                                EdtPcl_Codigo.Text := SqlCdsPclPCL_CODIGO.AsString;
                            end
                         else
                            begin
                                uteis.aviso('Condição de pagamento não encontrado !');
                                CbPgto.Text  := '';
                                EdtPcl_Codigo.Text := '';
                                EdtPcl_Codigo.SetFocus;

                            end;
                     end
                  else
                     begin
                         if not (ActiveControl.Name = 'PesqFornecedor') then
                            begin
                                uteis.aviso('Informe a condição de pagamento !');
                                CbPgto.Text := '';
                                CbPgto.SetFocus;
                            end;
                     end;
              end;
       end;
end;


procedure TFormNfEntrada.SqlCdsGridComOCCalcFields(DataSet: TDataSet);
begin
   //if SqlCdsGridComOCPRD_REFER.AsString = cbRef.Text then
    //   begin
    //       SqlCdsGridComOCENTRADA_CC.AsFloat       := CurrQtdeR.Value;
    //   end;
   //


    {P = Pendente / F = PARCIAL  / C = CONCLUIDO}
    SqlCdsGridComOCPRD_FISICO_CC.AsFloat       := (SqlCdsGridComOCPRD_ESTOQUE.AsFloat       + (SqlCdsGridComOCPRD_ENTRADA.AsFloat      ) - SqlCdsGridComOCPRD_SAIDA.AsFloat      );
    SqlCdsGridComOCOCI_TOTAL_CC.AsFloat        := SqlCdsGridComOCENTRADA_CC.AsFloat        * SqlCdsGridComOCOCI_PRECO.AsFloat      ;
    SqlCdsGridComOCOCI_SITUACAO_CC.AsString := IIF(SqlCdsGridComOCOCI_SITUACAO.AsString = 'P','Pendente',IIF(SqlCdsGridComOCOCI_SITUACAO.AsString = 'F','Parcial','Recebido'));


    if SqlCdsGridComOCPRD_REFER.AsString = cbRef.Text then
      if (CdsTemp.Locate('referencia',SqlCdsGridComOCPRD_REFER.AsString,[])) then
        begin
           CdsTemp.Edit;
           CdsTempquantidade.AsFloat := CurrQtdeR.Value;
           CdsTemp.Post;
        end
      else
        begin
            CdsTemp.Insert;
            CdsTempreferencia.AsString := SqlCdsGridComOCPRD_REFER.AsString;
            CdsTempquantidade.AsFloat := CurrQtdeR.Value;
        end;

   if (CdsTemp.Locate('referencia',SqlCdsGridComOCPRD_REFER.AsString,[])) then
       SqlCdsGridComOCENTRADA_CC.AsFloat       := CdsTempquantidade.AsFloat;




    if SqlCdsGridComOCOCI_IPI.AsFloat       >0 then
       begin
           SqlCdsGridComOCBASE_IPI_CC := SqlCdsGridComOCOCI_TOTAL_CC;
       end;
end;

procedure TFormNfEntrada.CbAlmoxClick(Sender: tObject);
begin
    if (ActiveControl <> nil)
    and(ActiveControl.name <> 'BitCancelItem')
    and(ActiveControl.Name <> 'CbRef')
    and(ActiveControl.Name <> 'DBGridSemOC') then
       begin
           if not VerDados then
              exit;
           if CbAlmox.Text <> '' then
              begin
                  if (SqlCdsAlmox.Locate('AMX_DESCRI',CbAlmox.Text,[loCaseInsensitive]) ) then
                     begin
                         CbAlmox.Text  := SqlCdsAlmoxAMX_DESCRI.AsString;
                         EdtAlmox.Text := SqlCdsAlmoxAMX_CODIGO.AsString;
                         if not wAlterar then
                            ChecaAlmoxarifado;
                     end
                  else
                     begin
                         uteis.aviso('Almoxarifado destino não encontrado !');
                         CbAlmox.Text  := '';
                         EdtAlmox.Text := '';
                     end;
              end
           else
              begin
                  if not (ActiveControl.Name = 'CbAlmox') then
                     begin
                         uteis.aviso('Informe o almoxarifado destino !');
                         CbAlmox.Text  := '';
                         EdtAlmox.Text := '';
                     end;
              end;
       end;
end;

procedure TFormNfEntrada.DbeCCT_CODIGOExit(Sender: tObject);
begin
    if (ActiveControl <> nil)
    and(ActiveControl.name <> 'Bit_Cancelar')
    and(ActiveControl.name <> 'Bit_Sair') then
       begin
           if DataMovimento.CdsEnf.State in [dsEdit,dsInsert] then
              begin
                  if (DbeCCT_CODIGO.Field.Text <> '') then
                     begin
                         DbeCCT_CODIGO.Text := StrZero(DbeCCT_CODIGO.Text,DbeCCT_CODIGO.MaxLength);
                         if SqlCdsCta.Locate('CCT_CODIGO',StrZero(DbeCCT_CODIGO.Text,DbeCCT_CODIGO.MaxLength),[]) then
                            begin
                                CbCtaAnalise.Text  := SqlCdsCtaCCT_DESCRI.AsString;
                                DbeCCT_CODIGO.Text := StrZero(DbeCCT_CODIGO.Text,DbeCCT_CODIGO.MaxLength);
                            end
                         else
                            begin
                                uteis.aviso('Conta Financeira não encontrada !');
                                CbCtaAnalise.Text        := '';
                                DbeCCT_CODIGO.Field.Text := '';
                                DbeCCT_CODIGO.SetFocus;

                            end;
                     end;
              end;
       end;
end;

procedure TFormNfEntrada.ItemSelecionado;
var
   indexCombo, I:Integer;
begin
    DesabiliItemSelec;

    GrpDigitaItens.Enabled:= True;
    Panel1.Enabled        := false;
    BitCancelItem.Enabled := True;
    BitConfirmar.Enabled  := True;
    DBGridSemOC.Enabled   := False;
    if (RadComOC.checked ) then
       begin
           if (wAlterar) then
              begin
                 try
                    if (DBGridSemOC.Visible) then
                       begin
                          //
                          CbRef.Text                  := SqlCdsGridSemOCPRD_REFER.AsString;
                          wRefer                      := CbRef.Text;
                          wPrdCodigo                  := SqlCdsGridSemOCPRD_CODIGO.AsString;
                          EdDescricao.Text            := SqlCdsGridSemOCPRD_DESCRI.AsString;
                          CurrQtdeR.Value             := SqlCdsGridSemOCENF_QTDE.AsFloat;
                          cbENF_ORIGEM_MERCADORIA.ItemIndex:= SqlCdsGridSemOCENF_ORIGEM_MERCADORIA.AsInteger;
                          CurrPreco.Value             := SqlCdsGridSemOCENF_PRECO.AsFloat;
                          edUnd.Text                  := SqlCdsGridSemOCENF_UTRIB.AsString;
                          // edUnd.Text                  := SqlCdsGridSemOCenf_ucom.AsString;
                          CrCfopItem.AsInteger        := SqlCdsGridSemOCENF_CFOP.AsInteger;
                          CurFrete.Value              := SqlCdsGridSemOCENF_IT_VALFRETE.AsFloat;

                          ENF_UTRIB                   :=  SqlCdsGridSemOCENF_UTRIB.AsString;
                          ENF_UCOM                    :=  SqlCdsGridSemOCENF_UCOM.AsString;
                          ENF_QTDE_ORIGINAL           :=  SqlCdsGridSemOCENF_QTDE_ORIGINAL.AsFloat;
                          ENF_PRECO_ORIGINAL          :=  SqlCdsGridSemOCENF_PRECO_ORIGINAL.AsFloat;
                          ENF_PTOTAL_ORIGINAL         :=  SqlCdsGridSemOCENF_PTOTAL_ORIGINAL.AsFloat;

                          //Almoxarifado
                          Edt_Almox_ant.Text := SqlCdsGridSemOCAMX_CODIGO.AsString;
                          EdtAlmox.Text      := SqlCdsGridSemOCAMX_CODIGO.AsString;
                          if SqlCdsAlmox.Locate('AMX_CODIGO',EdtAlmox.Text,[])  then
                             begin
                                 CbAlmox.Text := SqlCdsAlmoxAMX_DESCRI.AsString;
                             end
                          else
                             begin
                                 CbAlmox.Text := '';
                             end;
                          //Lote
                          CbLoteProduto.EditValue     := SqlCdsGridSemOCPRDL_REGISTRO.AsString;

                          cxCentroCustoItem.EditValue := SqlCdsGridSemOCPCX_CODIGO.AsString;

                          //Rapida
                          CurItemAliquotaIPIRapida.Value :=  SqlCdsGridSemOCENF_IPIALIQ.AsFloat;
                          CurItemAliquotaICMSRapida.Value :=  SqlCdsGridSemOCENF_ICMSALIQ.AsFloat;
                          //ICMS
                          indexCombo := -1;
                          for I := 0 to cbbItemCST.Items.Count do
                             begin
                                if (Copy(cbbItemCST.Items[I],1,2) = SqlCdsGridSemOCSTB_TRIBUTACAO.AsString) then
                                   indexCombo := I;
                             end;
                          cbbItemCST.ItemIndex := indexCombo;
                          CurItemBaseICMS.Value := SqlCdsGridSemOCENF_IT_BASEICMS.AsFloat;
                          CurItemAliquotaICMS.Value := SqlCdsGridSemOCENF_ICMSALIQ.AsFloat;
                          CurItemValorICMS.Value := SqlCdsGridSemOCENF_ICMS.AsFloat;
                          //ICMS ST
                          CurItemBaseICMSST.Value := SqlCdsGridSemOCENF_IT_BASESUBTRIB.AsFloat;
                          CurItemAliquotaICMSST.Value := SqlCdsGridSemOCENF_IT_ALIQSUBTRIB.AsFloat;
                          CurItemValorICMSST.Value :=  SqlCdsGridSemOCENF_VLSUBST.AsFloat;
                          //IPI
                          indexCombo := -1;
                          for I := 0 to cbbItemCSTIPI.Items.Count do
                             begin
                                if (Copy(cbbItemCSTIPI.Items[I],1,2) = SqlCdsGridSemOCCST_IPI.AsString) then
                                   indexCombo := I;
                             end;
                          cbbItemCSTIPI.ItemIndex := indexCombo;
                          CurItemBaseIPI.Value := SqlCdsGridSemOCENF_IT_BASEIPI.AsFloat;
                          CurItemAliquotaIPI.Value := SqlCdsGridSemOCENF_IPIALIQ.AsFloat;
                          CurItemValorIPI.Value := SqlCdsGridSemOCENF_IT_VLIPI.AsFloat;
                          //PIS
                          indexCombo := -1;
                          for I := 0 to cbbItemCSTPIS.Items.Count do
                             begin
                                if (Copy(cbbItemCSTPIS.Items[I],1,2) = SqlCdsGridSemOCCST_PIS.AsString) then
                                   indexCombo := I;
                             end;
                          cbbItemCSTPIS.ItemIndex := indexCombo;
                          CurItemBasePIS.Value := SqlCdsGridSemOCENF_BASEPIS.AsFloat;
                          CurItemAliquotaPIS.Value := SqlCdsGridSemOCENF_IT_ALIQPIS.AsFloat;
                          CurItemValorPIS.Value := SqlCdsGridSemOCENF_IT_VLPIS.AsFloat;
                          //COFINS
                          indexCombo := -1;
                          for I := 0 to cbbItemCSTCofins.Items.Count do
                             begin
                                if (Copy(cbbItemCSTCofins.Items[I],1,2) = SqlCdsGridSemOCCST_COFINS.AsString) then
                                   indexCombo := I;
                             end;
                          cbbItemCSTCofins.ItemIndex := indexCombo;
                          CurItemBaseCofins.Value := SqlCdsGridSemOCENF_BASECOFINS.AsFloat;
                          CurItemAliquotaCofins.Value := SqlCdsGridSemOCENF_IT_ALIQCOFINS.AsFloat;
                          CurItemValorCofins.Value := SqlCdsGridSemOCENF_IT_VLCOFINS.AsFloat;
                          //Ordem de Compra
                          edtItemOrdemCompra.Text := SqlCdsGridSemOCOCP_CODIGO.AsString;
                          CurItemOrdemCompraBaixada.Value := SqlCdsGridSemOCENF_QTDE_PEDIDO_COMPRA.AsCurrency;
                          edtRegistroOrdemCompraItem.Text := SqlCdsGridSemOCOCI_REGISTRO.AsString;
                       end
                    else

                    
                   HabilitaItem;
                   CurrQtdeR.SetFocus;
                 except on E:EdataBaseError do
                     uteis.erro  (pchar('Erro ao selecionar os dados !'+e.message));
                 end;
              end
           else
              begin
                  if SqlCdsGridComOCOCI_SITUACAO.AsString = 'C' then
                     begin
                         uteis.aviso('Produto já concluído !');
                         DbGridComOC.SetFocus;
                         Limparitens;
                         BitCancelItem.Enabled := False;
                         BitConfirmar.Enabled  := False;
                         Panel1.Enabled        := True;

                         HabiliItemSelec;
                     end
                  else
                     begin
                         CbRef.Text         := SqlCdsGridComOCPRD_REFER.AsString;
                         wRefer             := CbRef.Text;
                         EdDescricao.Text   := SqlCdsGridComOCPRD_DESCRI.AsString;
                         BuscaSaldo(CbRef.Text);
                         CurrPreco.Value    := SqlCdsGridComOCOCI_PRECO.AsFloat;
                         CurrQtdeS.Value    := SqlCdsGridComOCOCI_QTDES.AsFloat      ;
                         CbLoteProduto.EditValue := SqlCdsGridComOCPRDL_REGISTRO.AsString;
                         cxCentroCustoItem.EditValue := SqlCdsGridComOCPCX_CODIGO.AsString;
                         HabilitaItem;
                         CurrQtdeR.SetFocus;
                     end;
              end;
       end
    else
       begin {Sem Ordem de Compra}
           if wAlterar  then
              begin
                  try
                    CbRef.Text           := SqlCdsGridSemOCPRD_REFER.AsString;
                    wPrdCodigo           := SqlCdsGridSemOCPRD_CODIGO.AsString;
                    EdDescricao.Text     := SqlCdsGridSemOCPRD_DESCRI.AsString;



                    if (dbInicio.Empresa.wMultiAlmox = 'S') then
                       CurrSaldo.Value := GetSaldoEstoque(EdtAlmox.Text)
                    Else
                       CurrSaldo.Value := GetSaldoEstoque('') ;

                    CurrPreco.Value      := SqlCdsGridSemOCENF_PRECO.AsFloat;
                    // edUnd.Text           := SqlCdsGridSemOCenf_ucom.AsString;
                    edUnd.Text           := SqlCdsGridSemOCENF_UTRIB.AsString;
                    CurFrete.Value       := SqlCdsGridSemOCENF_IT_VALFRETE.AsFloat;
                    ENF_UTRIB                   :=  SqlCdsGridSemOCENF_UTRIB.AsString;
                    ENF_UCOM                    :=  SqlCdsGridSemOCENF_UCOM.AsString;
                    ENF_QTDE_ORIGINAL           :=  SqlCdsGridSemOCENF_QTDE_ORIGINAL.AsFloat;
                    ENF_PRECO_ORIGINAL          :=  SqlCdsGridSemOCENF_PRECO_ORIGINAL.AsFloat;
                    ENF_PTOTAL_ORIGINAL         :=  SqlCdsGridSemOCENF_PTOTAL_ORIGINAL.AsFloat;
                    BuscaSaldo(CbRef.Text);

                    CurrQtdeR.Value      := SqlCdsGridSemOCENF_QTDE.AsFloat      ;
                    cbENF_ORIGEM_MERCADORIA.ItemIndex := SqlCdsGridSemOCENF_ORIGEM_MERCADORIA.AsInteger;
                    if SqlCdsGridSemOCPRDL_REGISTRO.AsString <> '' then
                       CbLoteProduto.EditValue := SqlCdsGridSemOCPRDL_REGISTRO.AsString;
                    cxCentroCustoItem.EditValue := SqlCdsGridSemOCPCX_CODIGO.AsString;

                    CrCfopItem.AsInteger := SqlCdsGridSemOCENF_CFOP.AsInteger;
                    HabilitaItem;
                    CurrQtdeR.SetFocus;
                    CrCfopItem.AsInteger        := SqlCdsGridSemOCENF_CFOP.AsInteger;
                    //Almoxarifado
                    CurItemAliquotaIPIRapida.Value :=  SqlCdsGridSemOCENF_IPIALIQ.AsFloat;
                    CurItemAliquotaICMSRapida.Value :=  SqlCdsGridSemOCENF_ICMSALIQ.AsFloat;
                    Edt_Almox_ant.Text := SqlCdsGridSemOCAMX_CODIGO.AsString;
                    EdtAlmox.Text      := SqlCdsGridSemOCAMX_CODIGO.AsString;
                    if SqlCdsAlmox.Locate('AMX_CODIGO',EdtAlmox.Text,[])  then
                       begin
                           CbAlmox.Text := SqlCdsAlmoxAMX_DESCRI.AsString;
                       end
                    else
                       begin
                           CbAlmox.Text := '';
                       end;
                    //ICMS
                    indexCombo := -1;
                    for I := 0 to cbbItemCST.Items.Count do
                       begin
                          if (Copy(cbbItemCST.Items[I],1,2) = SqlCdsGridSemOCSTB_TRIBUTACAO.AsString) then
                             indexCombo := I;
                       end;
                    cbbItemCST.ItemIndex := indexCombo;
                    CurItemBaseICMS.Value := SqlCdsGridSemOCENF_IT_BASEICMS.AsFloat;
                    CurItemAliquotaICMS.Value := SqlCdsGridSemOCENF_ICMSALIQ.AsFloat;
                    CurItemValorICMS.Value := SqlCdsGridSemOCENF_ICMS.AsFloat;
                    //ICMS ST
                    CurItemBaseICMSST.Value := SqlCdsGridSemOCENF_IT_BASESUBTRIB.AsFloat;
                    CurItemAliquotaICMSST.Value := SqlCdsGridSemOCENF_IT_ALIQSUBTRIB.AsFloat;
                    CurItemValorICMSST.Value :=  SqlCdsGridSemOCENF_VLSUBST.AsFloat;
                    //IPI
                    indexCombo := -1;
                    for I := 0 to cbbItemCSTIPI.Items.Count do
                       begin
                          if (Copy(cbbItemCSTIPI.Items[I],1,2) = SqlCdsGridSemOCCST_IPI.AsString) then
                             indexCombo := I;
                       end;
                    cbbItemCSTIPI.ItemIndex := indexCombo;
                    CurItemBaseIPI.Value := SqlCdsGridSemOCENF_IT_BASEIPI.AsFloat;
                    CurItemAliquotaIPI.Value := SqlCdsGridSemOCENF_IPIALIQ.AsFloat;
                    CurItemValorIPI.Value := SqlCdsGridSemOCENF_IT_VLIPI.AsFloat;
                    //PIS
                    indexCombo := -1;
                    for I := 0 to cbbItemCSTPIS.Items.Count do
                       begin
                          if (Copy(cbbItemCSTPIS.Items[I],1,2) = SqlCdsGridSemOCCST_PIS.AsString) then
                             indexCombo := I;
                       end;
                    cbbItemCSTPIS.ItemIndex := indexCombo;
                    CurItemBasePIS.Value := SqlCdsGridSemOCENF_BASEPIS.AsFloat;
                    CurItemAliquotaPIS.Value := SqlCdsGridSemOCENF_IT_ALIQPIS.AsFloat;
                    CurItemValorPIS.Value := SqlCdsGridSemOCENF_IT_VLPIS.AsFloat;
                    //COFINS
                    indexCombo := -1;
                    for I := 0 to cbbItemCSTCofins.Items.Count do
                       begin
                          if (Copy(cbbItemCSTCofins.Items[I],1,2) = SqlCdsGridSemOCCST_COFINS.AsString) then
                             indexCombo := I;
                       end;
                    cbbItemCSTCofins.ItemIndex := indexCombo;
                    CurItemBaseCofins.Value := SqlCdsGridSemOCENF_BASECOFINS.AsFloat;
                    CurItemAliquotaCofins.Value := SqlCdsGridSemOCENF_IT_ALIQCOFINS.AsFloat;
                    CurItemValorCofins.Value := SqlCdsGridSemOCENF_IT_VLCOFINS.AsFloat;
                    //Ordem de Compra
                    edtItemOrdemCompra.Text := SqlCdsGridSemOCOCP_CODIGO.AsString;
                    CurItemOrdemCompraBaixada.Value := SqlCdsGridSemOCENF_QTDE_PEDIDO_COMPRA.AsCurrency;
                    edtRegistroOrdemCompraItem.Text := SqlCdsGridSemOCOCI_REGISTRO.AsString;
                  except on E:EdataBaseError do
                    uteis.erro  (pchar('Erro ao selecionar os dados !'+e.message));
                  end;
              end;
       end;
      AntRecebidoPedCompras := CurItemOrdemCompraBaixada.Value;
end;

procedure TFormNfEntrada.GravarItens;
Var
  wVlRecebido,  {variaveis utilizada para calcular o item do pedido cfe abaixo:}
  wFinaliza,
  wEstoque,
  wEntrada,
  wSaida,
  wPendente,
  wCUSTO_MEDIO,
  rTmp_Custo,
  wCurrPreco,
  rTmpQuantidade,
  rVlr1,
  rVlr2,
  rVlr3,
  rVlr4,
  wPIS_CRED,
  wCOFINS_CRED,
  wIPI_valor,
  wICMS_valor,
  wIcmsBase,
  wValor_frete,
  wValor_despesas,
  wValor_seguro,
  wValor_FreteFora,
  wValor_Diff_ICMS,
  wValor_Outros,
  wValor_subTrib,
  wCUSTO_CREDITO,
  wVLR_AGREGADO,
  wPERC_RATEIO,
  ValorImpostosRetirados : Double;
  wQualAlmox,
  sFornecedor,
  sRegistroLote:String;
  bIndustrRetorno, porFora : boolean;

  ope_codigo :string;
  {P=PENDENTE / C=CONCLUIDO O STATUS SOMENTE DA ORDEM DE COMPRA PARTE DO CABECALHO}
  {P=Pendente / C=Concluido / F=PARCIAL = NOVO}
begin
    porFora := DBInicio.GetParametroSistema('PMT_METODO_CALCULO_PRECO') = '0';  // o cálculo é feito por fora? True   por dentro? False
    wFinaliza     := 0;
    wCustoIpi     := 0;
    wQualAlmox    := '';
    wCurrPreco    := CurrPreco.Value;
    if (not wAlterar) then
      BuscaReferencia;
    sFornecedor := '';
    sRegistroLote := '0';

    try    
       if (CbLoteProduto.EditValue = Null) then
         begin
            sRegistroLote := '0';
         end
       else
         begin
            sRegistroLote := IntToStr(CbLoteProduto.EditValue);
         end;
    except
      sRegistroLote := '0';
    end;

         sFornecedor := EdtFor_Codigo.Text;

    if RadComOC.checked  then  // Com Ordem de Compra
       begin
           if (not wAchouNF ) then
              begin
                  wVlRecebido := ((SqlCdsGridComOCOCI_QTDER.AsFloat       + CurrQtdeR.Value)-SqlCdsGridComOCOCI_QTDES.AsFloat      );
                  if wVlRecebido < 0  then
                     begin
                         if uteis.confirmacao ( ('A quantidade recebida é menor que a solicitada !'+#13+#10+'Recebe o produto ?')) = mrYes then
                            begin
                                if uteis.confirmacao ( ('Finaliza o recebimento deste item ?'+#13+#10+'Mesmo faltando '+FormatFloat('#,###0.000',((SqlCdsGridComOCOCI_QTDES.AsFloat      -(SqlCdsGridComOCOCI_QTDER.AsFloat      +CurrQtdeR.Value))))+' para fechar com o que foi solicitado ?')) = mryes then
                                   begin
                                       wFinaliza := (SqlCdsGridComOCOCI_QTDES.AsFloat       - (SqlCdsGridComOCOCI_QTDER.AsFloat      +CurrQtdeR.value));
                                       wStatus   := 'C'; {CONCLUIDO E FINALIZANDO O RECEBIMENTO DO ITEM}
                                   end
                                else
                                   begin
                                       wFinaliza := CurrQtdeR.Value; {Usuario nao Finalizou ira aguarda o restante do item chegar}
                                       wStatus   := 'F'; {RECEBIMENTO PARCIAL DO ITEM}
                                   end;
                            end
                         else
                            begin

                                Limparitens;
                                //DbGridComOC.SetFocus;
                                wAlterar := false;
                                exit;
                            end;
                     end
                  else
                     begin
                         if wVlRecebido = 0 then
                            begin
                                {Finalizou o item no pedido de compra}
                                wFinaliza := CurrQtdeR.Value;
                                wStatus   := 'C';
                            end
                         else
                            begin
                                if uteis.confirmacao ( ('A quantidade recebida é Maior que a solicitada !'+#13+#10+'Confirma o recebimento do produto ?')) = mrYes then
                                   begin
                                       wFinaliza := (SqlCdsGridComOCOCI_QTDES.AsFloat       - SqlCdsGridComOCOCI_QTDER.AsFloat      );
                                       wStatus   := 'C'; {CONCLUIDO OU FINALIZADO O RECEBIMENTO DO ITEM}
                                   end
                                else
                                   begin

                                       Limparitens;
                                       //DbGridComOC.SetFocus;
                                       wAlterar := false;
                                       exit;
                                   end;
                            end;
                     end;
                  try
                    {Atualiza o arquivo PRD0000 os seguintes campos = PRD_ENTRADA,PRD_PENDENTE}
                    //wCustoIPI := CurrPreco.Value+((CurrPreco.Value*CurrIPI.Value)/100);
                    //
                    wSql1     := 'SELECT '
                                +'T1.PRD_REFER,'
                                +'COALESCE(T1.PRD_UTILCONV,''N'') AS PRD_UTILCONV,'
                                +'COALESCE(T1.PRD_FATORC,0) AS PRD_FATORC,'
                                +'COALESCE(T1.PRD_DIVMULT,''N'') AS PRD_DIVMULT,'
                                +'COALESCE(T1.PRD_FATOR_PROD,0) AS PRD_FATOR_PROD,'
                                +'COALESCE(T1.PRD_DIV_MULT_PROD,''N'') AS PRD_DIV_MULT_PROD';
                    wSql2     := ' FROM PRD0000  T1 ';

                    wSeleciona := 'WHERE T1.PRD_REFER = '''+CbRef.Text+'''';
                    wOrdem     := 'T1.PRD_REFER ';
                    //
                    Cds_Prod_Conv.Close;
                    Cds_Prod_Conv.CommandText := SQLDEF('PRODUTOS',wSql1+wSql2,wSeleciona,wOrdem,'T1.');
                    Cds_Prod_Conv.Open;
                    //
                    



                    rVlr1 := CurrQtdeR.Value;
                    rVlr2 := Cds_Prod_ConvPRD_FATORC.AsFloat      ;
                    rVlr3 := CurrPreco.Value;
                    rVlr4 := Cds_Prod_ConvPRD_FATORC.AsFloat      ;
                    if (Cds_Prod_ConvPRD_UTILCONV.AsString = 'S') then
                       begin
                          if ((Cds_Prod_ConvPRD_DIVMULT.AsString <> 'N')and
                          (Cds_Prod_ConvPRD_FATORC.AsFloat       <> 0)) then
                             begin
                                if (Cds_Prod_ConvPRD_DIVMULT.AsString = 'M') then
                                   begin
                                      rTmpQuantidade := rVlr1 * rVlr2;
                                      rTmp_Custo     := rVlr3/rVlr4;
                                      wCustoIPI      := rTmp_Custo+CurItemValorIPI.Value;
                                   end
                                else
                                   begin
                                      rTmpQuantidade := rVlr1/rVlr2;
                                      rTmp_Custo     := rVlr3*rVlr4;
                                      wCustoIPI      := rTmp_Custo+CurItemValorIPI.Value;
                                   end;
                             end
                          else
                             begin
                                wCustoIPI      := CurrPreco.Value+CurItemValorIPI.Value;
                                rTmpQuantidade :=  CurrQtdeR.Value;
                                rTmp_Custo     :=  CurrPreco.Value;
                             end;
                       end
                    else
                       begin
                          wCustoIPI      := CurrPreco.Value+CurItemValorIPI.Value;
                          rTmpQuantidade :=  CurrQtdeR.Value;
                          rTmp_Custo     :=  CurrPreco.Value;
                       end;
                     wVLR_AGREGADO :=  rTmp_Custo;
                    // buscar PIS E COFINS Na Operação Fiscal para calculo do CUSTO COM CREDITO
                    BuscaOperacaoNovo(iif(Copy(CbOp.Text,01,04)='',DbeOPE_NATUREZA.Text,Copy(CbOp.Text,01,04)),
                                    Copy(CbOp.Text,08,60));
                    if CurItemValorPIS.value >0 then
                      wPIS_CRED :=    CurItemValorPIS.value/rTmpQuantidade ;;
                    if CurItemValorCofins.Value>0 then
                      wCOFINS_CRED := CurItemValorCofins.Value/rTmpQuantidade ;;

                    // calcular o valor do IPI e do ICMS para CUSTO COM CREDITO
                    wIPI_valor := CurItemValorIPI.Value;
                    if CurItemValorICMS.value >0 then
                      wICMS_valor := CurItemValorICMS.Value/rTmpQuantidade ;

                    if (CurItemValorICMS.Value > 0) then
                       wIcmsBase := (rTmp_Custo * rTmpQuantidade);
                    wCUSTO_CREDITO := (wPIS_CRED + wCOFINS_CRED + wICMS_valor);

                    //IPI não precisa ratear pois o IPI é por item
                    wVLR_AGREGADO := wVLR_AGREGADO + wIPI_valor;

                    //rateio de frete
                    wPERC_RATEIO   := (((rTmpQuantidade * rTmp_Custo) * 100)/Curr_Valor_Produtos.Value);
                    wValor_frete  := (((wPERC_RATEIO * CurrVlFrete.Value) / 100) / rTmpQuantidade);
                    wVLR_AGREGADO := wVLR_AGREGADO + wvalor_frete;

                    //rateio de depesas acessorias
                    wPERC_RATEIO  := (((rTmpQuantidade * rTmp_Custo) * 100)/Curr_Valor_Produtos.Value);
                    wValor_despesas:= (((wPERC_RATEIO * CurrVlDespesas.Value) / 100) / rTmpQuantidade);
                    wVLR_AGREGADO := wVLR_AGREGADO + wvalor_despesas;

                    //rateio de seguro
                    wPERC_RATEIO  := (((rTmpQuantidade * rTmp_Custo) * 100)/Curr_Valor_Produtos.Value);
                    wValor_seguro := (((wPERC_RATEIO * CurrVlSeguro.Value) / 100) / rTmpQuantidade);
                    wVLR_AGREGADO := wVLR_AGREGADO + wValor_seguro;

                    //Frete por fora
                    wPERC_RATEIO  := (((rTmpQuantidade * rTmp_Custo) * 100)/Curr_Valor_Produtos.Value);
                    wValor_FreteFora := (((wPERC_RATEIO * currFrete.Value) / 100) / rTmpQuantidade);
                    wVLR_AGREGADO := wVLR_AGREGADO + wValor_FreteFora;

                    //diferença de ICMS
                    wPERC_RATEIO  := (((rTmpQuantidade * rTmp_Custo) * 100)/Curr_Valor_Produtos.Value);
                    wValor_Diff_ICMS := (((wPERC_RATEIO * currDifICMS.Value) / 100) / rTmpQuantidade);
                    wVLR_AGREGADO := wVLR_AGREGADO + wValor_Diff_ICMS;

                    //OUTROS VALORES
                    wPERC_RATEIO  := (((rTmpQuantidade * rTmp_Custo) * 100)/Curr_Valor_Produtos.Value);
                    wValor_Outros := (((wPERC_RATEIO * currOutros.Value) / 100) / rTmpQuantidade);
                    wVLR_AGREGADO := wVLR_AGREGADO + wValor_Outros ;


                    //rateio da substituição tributária -> fazer pelo total pois ainda não é informado qual item tem Sub.T.ou não
                    wPERC_RATEIO := (((rTmpQuantidade * rTmp_Custo) * 100)/Curr_Valor_Produtos.Value);

                    wValor_subTrib:= (((wPERC_RATEIO * CurItemValorICMSST.Value) / 100) / rTmpQuantidade);
                    wVLR_AGREGADO := wVLR_AGREGADO + wValor_subTrib;

                   if DBInicio.Empresa.PMT_ICMS_CUSTOENTRADA then //retirar imcs
                        ValorImpostosRetirados := wICMS_valor
                     else
                      ValorImpostosRetirados :=0;

                     if DBInicio.Empresa.PMT_PIS_CUSTOENTRADA then // retirar pis/cofins
                        ValorImpostosRetirados := ValorImpostosRetirados + (wPIS_CRED + wCOFINS_CRED ) ;

                    wVLR_AGREGADO := wVLR_AGREGADO - ValorImpostosRetirados;

                    //custo medio
                    if not DataCadastros.CdsProdutos.Active then
                       DataCadastros.CdsProdutos.Open;
                    DataCadastros.CdsProdutos.Locate('PRD_REFER', SqlCdsGridComOCPRD_REFER.AsString,[]);
                                              
                    wEstoque := KardexRetornaSaldo(DataCadastros.CdsProdutosPRD_CODIGO.AsString, EdtAlmox.Text, '');

                    if (wEstoque < 0) then
                       wEstoque := 0;

                    // preco medio pelo custo liquido
                    if (dbinicio.empresa.wCalcularPM = 0) or (dbinicio.empresa.wCalcularPM = Null) then
                    begin
                      if DataCadastros.CdsProdutosPRD_PMEDIO.AsFloat       > 0 then
                        wCUSTO_MEDIO := (((rTmp_Custo * rTmpQuantidade) + (DataCadastros.CdsProdutosPRD_PMEDIO.AsFloat       * wEstoque      )) / (rTmpQuantidade + wEstoque      ))
                      else
                      if DataCadastros.CdsProdutosPRD_PCUSTO.AsFloat       > 0 then
                       wCUSTO_MEDIO := (((rTmp_Custo * rTmpQuantidade) + (DataCadastros.CdsProdutosPRD_PCUSTO.AsFloat       * wEstoque      )) / (rTmpQuantidade + wEstoque      ))
                      else
                       wCUSTO_MEDIO := (rTmp_Custo);
                    end;
                    //preco medio pelo custo agregado (custo de entrada)
                    if dbinicio.empresa.wCalcularPM = 1 then
                    begin
                      if DataCadastros.CdsProdutosPRD_PMEDIO.AsFloat       > 0 then
                        wCUSTO_MEDIO := (((( wVLR_AGREGADO) * rTmpQuantidade) + (DataCadastros.CdsProdutosPRD_PMEDIO.AsFloat       * wEstoque      )) / (rTmpQuantidade + wEstoque      ))
                       else
                      if DataCadastros.CdsProdutosPRD_PCUSTO.AsFloat       > 0 then
                       wCUSTO_MEDIO := ((((wVLR_AGREGADO) * rTmpQuantidade) + (DataCadastros.CdsProdutosPRD_PCUSTO.AsFloat       * wEstoque      )) / (rTmpQuantidade + wEstoque      ))
                       else
                       wCUSTO_MEDIO := (wVLR_AGREGADO);
                    end;
                    //preco medio pelo custo com credito (sem impostos)
                    if dbinicio.empresa.wCalcularPM = 2 then
                    begin
                      if DataCadastros.CdsProdutosPRD_PMEDIO.AsFloat       > 0 then
                        wCUSTO_MEDIO := ((((rTmp_Custo - wCUSTO_CREDITO) * rTmpQuantidade) + (DataCadastros.CdsProdutosPRD_PMEDIO.AsFloat       * wEstoque      )) / (rTmpQuantidade + wEstoque      ))
                       else
                      if DataCadastros.CdsProdutosPRD_PCUSTO.AsFloat       > 0 then
                       wCUSTO_MEDIO := ((((rTmp_Custo - wCUSTO_CREDITO) * rTmpQuantidade) + (DataCadastros.CdsProdutosPRD_PCUSTO.AsFloat       * wEstoque      )) / (rTmpQuantidade + wEstoque      ))
                       else
                       wCUSTO_MEDIO := (rTmp_Custo);
                    end;
                      if dbinicio.Empresa.wPMT_NAO_AUTO_PVENDA then
                        wAtualiza_pvenda := 'N'
                      else
                     // Atualizar preço de venda conforme fornecedor
                      if (wAtualiza_pvenda = '') and (PesqFornecedor.idRetorno <> '') then
                         wAtualiza_pvenda  := PesqFornecedor.CDS.FieldByName('FOR_ATUALIZA_PVENDA').AsString;


                    if IsNaN(wCUSTO_MEDIO) then
                        wCUSTO_MEDIO := (rTmp_Custo);
                    if IsInfinite(wCUSTO_MEDIO) then
                        wCUSTO_MEDIO := (rTmp_Custo);
                    ope_codigo := RetornaRegistroCFOP(CrCfopItem.Text);

                    //Verifica se vai ou não atualiza o preco de custo
                    if BuscaUmDadoSqlAsString('SELECT OPE_ATUALIZA_CUSTO FROM OPE0000 WHERE OPE_CODIGO = '+QuotedStr(ope_codigo)) = 'S' then
                       begin
                          //wAtualiza_pvenda = 'N' // SE NÃO ATUALIZA PREÇO DE VENDA, ATUALIZA OS CUSTOS E A MARGEM
                          // CASO CONTRÁRIO ATUALIZA PREÇO DE VENDA E MARGEM
                          if wAtualiza_pvenda = 'N'  then
                          begin
                            if porFora then
                            begin
                              if wCalcularPV = 0 then  // PRD_PCUSTO
                               wSql5 := ', PRD_MARGEMVENDA =  ((PRD_PVENDA/ '+ValorAmericano(CurrToStr(rTmp_Custo))+ ') - 1)*100 '
                              else if wCalcularPV = 1 then //PRD_CUSTOCOMIPI
                               wSql5 := ', PRD_MARGEMVENDA =  ((PRD_PVENDA/ '+ValorAmericano(FloatToStr(rTmp_Custo + wVLR_AGREGADO))+ ') - 1)*100 '
                              else if wCalcularPV = 2 then // PRD_PMEDIO
                               wSql5 := ', PRD_MARGEMVENDA =  ((PRD_PVENDA/ '+ValorAmericano(FloatToStr(wCUSTO_MEDIO))+    ') - 1)*100 ';
                            end
                            else
                            begin
                              if wCalcularPV = 0 then  // PRD_PCUSTO
                               wSql5 := ', PRD_MARGEMVENDA =  (('+ValorAmericano(CurrToStr(rTmp_Custo))+ ' / PRD_PVENDA)) * 100 '
                              else if wCalcularPV = 1 then //PRD_CUSTOCOMIPI
                               wSql5 := ', PRD_MARGEMVENDA =  (('+ValorAmericano(FloatToStr(rTmp_Custo + wVLR_AGREGADO))+ ' / PRD_PVENDA)) * 100 '
                              else if wCalcularPV = 2 then // PRD_PMEDIO
                               wSql5 := ', PRD_MARGEMVENDA =  (('+ValorAmericano(FloatToStr(wCUSTO_MEDIO))+    ' / PRD_PVENDA)) * 100 ';

                            end;

                          end
                          else
                          begin
                            wSql5 := '';
                          end;

                          wSql1 :='Update PRD0000 Set PRD_ENTRADA  = (PRD_ENTRADA + '+ValorAmericano(CurrToStr((rTmpQuantidade)))+')'+
                                                ', PRD_PENDENTE = (COALESCE(PRD_PENDENTE,0) - '+ValorAmericano(FloatToStr(wFinaliza))+')'+
                                                    ', PRD_PCUSTO   = '+ValorAmericano(CurrToStr(rTmp_Custo))+
                                                    ', PRD_CUSTOFRETE   = '+ValorAmericano(CurrToStr(wValor_frete+wValor_FreteFora))+
                                                    ', PRD_CUSTOADCIONAL = '+ValorAmericano(CurrToStr(wValor_despesas+wValor_Diff_ICMS))+
                                                    ', PRD_OUTROSCUSTOS  = '+ValorAmericano(CurrToStr(wValor_Outros))+
                                                    ', PRD_CUSTOIPI     = '+ValorAmericano(CurrToStr(wIPI_valor))+
                                                    ', PRD_CUSTOSUBTRIB = '+ValorAmericano(CurrToStr(wValor_subTrib))+
                                                    ', PRD_CUSTO_CREDITO = '+ValorAmericano(CurrToStr(rTmp_Custo - wCUSTO_CREDITO))+ //custo com credito
                                                    ', PRD_CUSTOCOMIPI = '+ValorAmericano(FloatToStr( wVLR_AGREGADO))+    //custo agregado
                                                    ', PRD_PMEDIO = '+ValorAmericano(FloatToStr(wCUSTO_MEDIO))+    //custo medio
                                                    ', PRD_IMPOSTOS_RETIRADOS = '+ValorAmericano(FloatToStr(ValorImpostosRetirados))+
                                                    ', PRD_DTPCUSTO = '''+DataAmericana(DateToStr(DbeENF_EMISSAO.Date))+''''+
                                                ', FOR_CODIGO = '''+sFornecedor+''''+ wSql5;

                          //
                          DataCadastros.sqlUpdate.Close;
                          DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,'WHERE PRD_REFER = '''+CbRef.Text+'''','','');
                          DataCadastros.sqlUpdate.Execsql;



                          {Verifica o Vl. Unitario com o valor da nota}
                          if (SqlCdsGridComOCOCI_PRECO.AsFloat   <> CurrPreco.Value) then
                             begin
                                 Atualiza_Preco_Compra(SqlCdsGridComOCOCI_REGISTRO.AsString,
                                                       ValorAmericano(CurrPreco.Text));
                             end;
                    end
                    else
                    begin
                      wSql1 :='Update PRD0000 Set PRD_ENTRADA  = (PRD_ENTRADA + '+ValorAmericano(CurrToStr((rTmpQuantidade)))+')'+
                                                ', PRD_PENDENTE = (COALESCE(PRD_PENDENTE,0) - '+ValorAmericano(FloatToStr(wFinaliza))+')';
                      DataCadastros.sqlUpdate.Close;
                      DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,'WHERE PRD_REFER = '''+CbRef.Text+'''','','');
                      DataCadastros.sqlUpdate.Execsql;
                       end;


                      if wAtualiza_pvenda = 'S' then
                         AtualizarTabelaPrecos  (CbRef.Text);

                    //
                    if (DataMovimento.CdsEnf.State in [dsInsert])and(not wAlterar) then
                       Atualiza_Dados_Utl_Compra(CbRef.Text,'I');
                    //Seguranca frete
                    if (not btnDanfe.Enabled)and(wValor_frete > 0) then
                      begin
                        CurFrete.Value :=  wValor_frete * rTmpQuantidade;
                      end;

                    //Atualiza Pedido de Compra
                    if (edtRegistroOrdemCompraItem.Text <> '0')and(CurItemOrdemCompraBaixada.Value > 0) then
                       begin
                          DataCadastros.sqlUpdate1.Close;
                          DataCadastros.sqlUpdate1.sql.text:= 'UPDATE OCP_IT01 SET OCI_QTDER = OCI_QTDER + '+ValorAmericano(CurItemOrdemCompraBaixada.Text)+' WHERE OCI_REGISTRO = '+edtRegistroOrdemCompraItem.Text;
                          DataCadastros.sqlUpdate1.ExecSql;
                          AtualizaSituacaoOC(edtRegistroOrdemCompraItem.Text);
                       end;
                   wPrdCodigo:= dbInicio.BuscaUmDadoSqlAsString(
                        SQLDEF('PRODUTOS','select prd_codigo from PRD0000 ','WHERE PRD_REFER = '+QuotedStr(CbRef.Text),'','' ));
                    //
                    {Inserir dados no arquivo ENF_IT01}
                    iRegistro := DbInicio.GetNextSequence('gen_enf_it01');
                    wSql1 := 'INSERT INTO ENF_IT01 ('+
                             'ENF_registro,'+
                             'ENF_IT_NOTANUMBER,'+
                             'PRDL_REGISTRO,'+
                             'ENF_CFOP,'+
                             'PCX_CODIGO,'+
                             'ENF_ORIGEM_MERCADORIA, ' +
                             'OPE_CODIGO, '+
                             'PRD_REFER,'+
                             'PRD_DESCRI,'+
                             //ICMS
                             'stb_tributacao,'+
                             'enf_it_baseicms,'+
                             'enf_icmsaliq, '+
                             'ENF_ICMS,'+
                             //ICMS ST
                             'enf_it_basesubtrib,'+
                             'enf_it_aliqsubtrib,'+
                             'enf_vlsubst,'+
                             //IPI
                             'cst_ipi,'+
                             'enf_it_baseipi,'+
                             'ENF_IPIALIQ,'+
                             'enf_it_vlipi,'+
                             //PIS
                             'cst_pis,'+
                             'enf_basepis,'+
                             'enf_it_aliqpis,'+
                             'enf_it_vlpis,'+
                             //COFINS
                             'cst_cofins,'+
                             'enf_basecofins,'+
                             'enf_it_aliqcofins,'+
                             'enf_it_vlcofins,'+
                             //Ordem de Compra
                             'OCP_CODIGO,'+
                             'ENF_QTDE_PEDIDO_COMPRA,'+
                             'OCI_REGISTRO,'+
                             'ENF_QTDE,'+
                             'ENF_UNIDADE_TRABALHO,'+
                             'ENF_PRECO,'+
                             'ENF_CUSTO,'+
                             'ENF_IT_VALFRETE,'+
                             'FOR_CODIGO,'+
                             'AMX_CODIGO,'+
                             'PRD_CODIGO,'+
                             'USU_CODIGO,'+
                             'REPETICAO_REFER,'+
                             'ENF_ATUALIZA_PRECO,'+
                             'ENF_ATUALIZA_ESTOQUE,'+
                             'EMP_CODIGO, '+
                             ' ENF_UCOM, ENF_UTRIB, ENF_QTDE_ORIGINAL, ENF_PRECO_ORIGINAL, ENF_PTOTAL_ORIGINAL) ';


                    wSql2 := 'VALUES ('''+IntToStr(iRegistro)+''','''+
                                          EdtNOTA.Text+''','''+
                                          sRegistroLote+''','''+
                                          CrCfopItem.Text+''','''+
                                          cxCentroCustoItem.EditValue+''','''+
                                          IntToStr(cbENF_ORIGEM_MERCADORIA.ItemIndex)+''','''+
                                          ope_codigo + ''','''+
                                          CbRef.Text+''','''+
                                          StringReplace(EdDescricao.Text, chr(39),'',[rfReplaceAll, rfIgnoreCase])+''','''+
                                          //ICMS
                                          copy(cbbItemCST.Text,1,2)+''','''+
                                          ValorAmericano(CurItemBaseICMS.Text)+''','''+
                                          ValorAmericano(CurItemAliquotaICMS.Text)+''','''+
                                          ValorAmericano(CurItemValorICMS.Text)+''','''+
                                          //ICMS ST
                                          ValorAmericano(CurItemBaseICMSST.Text)+''','''+
                                          ValorAmericano(CurItemAliquotaICMSST.Text)+''','''+
                                          ValorAmericano(CurItemValorICMSST.Text)+''','''+
                                          //IPI
                                          copy(cbbItemCSTIPI.Text,1,2)+''','''+
                                          ValorAmericano(CurItemBaseIPI.Text)+''','''+
                                          ValorAmericano(CurItemAliquotaIPI.Text)+''','''+
                                          ValorAmericano(CurItemValorIPI.Text)+''','''+
                                          //PIS
                                          copy(cbbItemCSTPIS.Text,1,2)+''','''+
                                          ValorAmericano(CurItemBasePIS.Text)+''','''+
                                          ValorAmericano(CurItemAliquotaPIS.Text)+''','''+
                                          ValorAmericano(CurItemValorPIS.Text)+''','''+
                                          //COFINS
                                          copy(cbbItemCSTCofins.Text,1,2)+''','''+
                                          ValorAmericano(CurItemBaseCofins.Text)+''','''+
                                          ValorAmericano(CurItemAliquotaCofins.Text)+''','''+
                                          ValorAmericano(CurItemValorCofins.Text)+''','''+
                                          //Ordem de Compra
                                          PreenchezeroEsquerda(edtItemOrdemCompra.Text,edtItemOrdemCompra.MaxLength)+''','''+
                                          ValorAmericano(CurItemOrdemCompraBaixada.Text)+''','''+
                                          iif(edtRegistroOrdemCompraItem.Text = '','0',edtRegistroOrdemCompraItem.Text)+''','''+
                                          ValorAmericano(CurrQtdeR.Text)+''','''+
                                          ValorAmericano(CurrToStr(rTmpQuantidade))+''','''+
                                          ValorAmericano(CurrPreco.Text)+''','''+
                                          ValorAmericano(FloatToStr(rTmp_Custo))+''','''+
                                          ValorAmericano(FloatToStr(CurFrete.Value))+''','''+
                                          sFornecedor+''','''+
                                          StrZero(EdtAlmox.Text,EdtAlmox.MaxLength)+''','''+
                                          wPrdCodigo+''','''+
                                          dbInicio.Usuario.Codigo+''','''+
                                          IntToStr(wRepeticao_refer)+''','''+
                                          SqlCdsOPOPE_ATUALIZA_CUSTO.AsString+''','''+
                                          vMovimentaEstoque+''','''+
                                          dbInicio.Empresa.EMP_CODIGO+'''' +','+
                                          QuotedStr(UpperCase(edUnd.Text)) + ','+
                                          QuotedStr(UpperCase(iif(ENF_UTRIB = '', edUnd.Text, ENF_UTRIB))) +','+
                                          FloatToSQL(ENF_QTDE_ORIGINAL) +','+
                                          FloatToSQL(ENF_PRECO_ORIGINAL) +','+
                                          FloatToSQL(ENF_PTOTAL_ORIGINAL) +')';


                    DataCadastros.sqlUpdate.Close;
                    DataCadastros.SqlUpdate.sql.text :=wSql1 + wSql2;
                    DataCadastros.sqlUpdate.Execsql;

                    if CrCfopItem.Text <> '' then
                    begin

                      bIndustrRetorno :=  DBInicio.BuscaUmDadoSqlAsString('SELECT OPE_RETORNO_INDUST  FROM OPE0000  '+
                                                       ' WHERE OPE_CODIGO = '+QuotedStr(ope_codigo)) = 'S' ;
                    end;


                    //Verifica se a cfop atualiza estoque
                    if (vMovimentaEstoque = 'S') then
                    begin
                          KardexLancamento(IntToStr(iRegistro),
                                           'ENF',
                                           StrZero(EdtAlmox.Text,EdtAlmox.MaxLength),
                                           '',
                                           dbInicio.BuscaUmDadoSqlAsString(
                                              SQLDEF('PRODUTOS','select prd_codigo from PRD0000 ','WHERE PRD_REFER = '+QuotedStr(SqlCdsGridComOCPRD_REFER.AsString),'','' )) ,
//                                           RetornaRegistroTabela('PRD0000', 'PRD_CODIGO', 'PRD_REFER = '+QuotedStr(SqlCdsGridComOCPRD_REFER.AsString)),
                                           '',//Grade
                                           '',
                                           iif(bIndustrRetorno,'S','E'),
                                           CbLoteProduto.text,
                                           sRegistroLote,
                                           'ENTRADA DE ITEM NOTA FISCAL',
                                           Now,
                                           CurrQtdeR.Value,
                                           EdtNOTA.Text,
                                           StrZero(EdtFor_Codigo.Text,EdtFor_Codigo.MaxLength)+'-'+PesqFornecedor.CDS.FieldByName('FOR_RAZAO').AsString,
                                           CurrPreco.Value,'','','',SqlCdsGridComOCPRD_REFER.AsString);
                    end;
                    cbMovimentaEstoque.Enabled:=False;
                    {Atualiza o Grid}
                    SqlCdsGridComOC.Refresh;
                    {Calcula Ipi}
                    CalcTotal_IPI;
                  except on E:EDataBaseError do
                     uteis.erro  ('Erro ao atualizar o Saldo do Estoque ! ' + e.Message);
                  end;
              end
           else
              begin
                  try
                    {Atualiza o arquivo PRD0000 os seguintes campo = PRD_ENTRADA, PRD_PENDENTE}
                    //wCustoIPI := CurrPreco.Value+((CurrPreco.Value*CurrIPI.Value)/100);
                    //
                    wSql1     := 'SELECT '
                                +'T1.PRD_REFER,'
                                +'COALESCE(T1.PRD_UTILCONV,''N'') AS PRD_UTILCONV,'
                                +'COALESCE(T1.PRD_FATORC,0) AS PRD_FATORC,'
                                +'COALESCE(T1.PRD_DIVMULT,''N'') AS PRD_DIVMULT,'
                                +'COALESCE(T1.PRD_FATOR_PROD,0) AS PRD_FATOR_PROD,'
                                +'COALESCE(T1.PRD_DIV_MULT_PROD,''N'') AS PRD_DIV_MULT_PROD';
                    wSql2     := ' FROM PRD0000  T1 ';

                    wSeleciona := 'WHERE T1.PRD_REFER = '''+CbRef.Text+'''';
                    wOrdem     := 'T1.PRD_REFER ';
                    //
                    Cds_Prod_Conv.Close;
                    Cds_Prod_Conv.CommandText := SQLDEF('PRODUTOS',wSql1+wSql2,wSeleciona,wOrdem,'T1.');
                    Cds_Prod_Conv.Open;
                    //
                    rVlr1 := CurrQtdeR.Value;
                    rVlr2 := Cds_Prod_ConvPRD_FATORC.AsFloat      ;
                    rVlr3 := CurrPreco.Value;
                    rVlr4 := Cds_Prod_ConvPRD_FATORC.AsFloat      ;
                    if (Cds_Prod_ConvPRD_UTILCONV.AsString = 'S') then
                       begin
                          if ((Cds_Prod_ConvPRD_DIVMULT.AsString <> 'N')and
                          (Cds_Prod_ConvPRD_FATORC.AsFloat       <> 0)) then
                             begin
                                if (Cds_Prod_ConvPRD_DIVMULT.AsString = 'M') then
                                   begin
                                      rTmpQuantidade := rVlr1 * rVlr2;
                                      rTmp_Custo     := rVlr3/rVlr4;
                                      wCustoIPI      := rTmp_Custo+CurItemValorIPI.Value;
                                   end
                                else
                                   begin
                                      rTmpQuantidade := rVlr1/rVlr2;
                                      rTmp_Custo     := rVlr3*rVlr4;
                                      wCustoIPI      := rTmp_Custo+CurItemValorIPI.Value;
                                   end;
                             end
                          else
                             begin
                                wCustoIPI      := CurrPreco.Value+CurItemValorIPI.Value;
                                rTmpQuantidade :=  CurrQtdeR.Value;
                                rTmp_Custo     :=  CurrPreco.Value;
                             end;
                       end
                    else
                       begin
                         wCustoIPI      := CurrPreco.Value+CurItemValorIPI.Value;
                         rTmpQuantidade :=  CurrQtdeR.Value;
                         rTmp_Custo     :=  CurrPreco.Value;
                       end;
                    wVLR_AGREGADO := rTmp_Custo;
                    // buscar PIS E COFINS Na Operação Fiscal para calculo do CUSTO COM CREDITO
                    BuscaOperacaoNovo(iif(Copy(CbOp.Text,01,04)='',DbeOPE_NATUREZA.Text,Copy(CbOp.Text,01,04)),Copy(CbOp.Text,08,60));

                    if CurItemValorPIS.value >0 then
                      wPIS_CRED :=    CurItemValorPIS.value/rTmpQuantidade ;;
                    if CurItemValorCofins.Value>0 then
                      wCOFINS_CRED := CurItemValorCofins.Value/rTmpQuantidade ;;

                    // calcular o valor do IPI e do ICMS para CUSTO COM CREDITO
                    wIPI_valor := CurItemValorIPI.Value;
                    if CurItemValorICMS.Value >0  then
                      wICMS_valor := CurItemValorICMS.Value / rTmpQuantidade;
                    wIcmsBase := CurItemBaseICMS.Value;
                    wCUSTO_CREDITO := (wPIS_CRED + wCOFINS_CRED + wICMS_valor);

                    //IPI não precisa ratear pois o IPI é por item
                    wVLR_AGREGADO :=wVLR_AGREGADO+ wIPI_valor;

                    //rateio de frete
                    wPERC_RATEIO   := (((rTmpQuantidade * rTmp_Custo) * 100)/Curr_Valor_Produtos.Value);
                    wValor_frete  := (((wPERC_RATEIO * CurrVlFrete.Value) / 100) / rTmpQuantidade);
                    wVLR_AGREGADO := wVLR_AGREGADO + wvalor_frete;

                    //rateio de depesas acessorias
                    wPERC_RATEIO  := (((rTmpQuantidade * rTmp_Custo) * 100)/Curr_Valor_Produtos.Value);
                    wValor_despesas:= (((wPERC_RATEIO * CurrVlDespesas.Value) / 100) / rTmpQuantidade);
                    wVLR_AGREGADO := wVLR_AGREGADO + wvalor_despesas;

                    //rateio de seguro
                    wPERC_RATEIO  := (((rTmpQuantidade * rTmp_Custo) * 100)/Curr_Valor_Produtos.Value);
                    wValor_seguro := (((wPERC_RATEIO * CurrVlSeguro.Value) / 100) / rTmpQuantidade);
                    wVLR_AGREGADO := wVLR_AGREGADO + wValor_seguro;

                    //Frete por fora
                    wPERC_RATEIO  := (((rTmpQuantidade * rTmp_Custo) * 100)/Curr_Valor_Produtos.Value);
                    wValor_FreteFora := (((wPERC_RATEIO * currFrete.Value) / 100) / rTmpQuantidade);
                    wVLR_AGREGADO := wVLR_AGREGADO + wValor_FreteFora;

                    //diferença de ICMS
                    wPERC_RATEIO  := (((rTmpQuantidade * rTmp_Custo) * 100)/Curr_Valor_Produtos.Value);
                    wValor_Diff_ICMS := (((wPERC_RATEIO * currDifICMS.Value) / 100) / rTmpQuantidade);
                    wVLR_AGREGADO := wVLR_AGREGADO + wValor_Diff_ICMS;

                    //rateio da substituição tributária -> fazer pelo total pois ainda não é informado qual item tem Sub.T.ou não
                    wPERC_RATEIO := (((rTmpQuantidade * rTmp_Custo) * 100)/Curr_Valor_Produtos.Value);

                    wValor_subTrib:= (((wPERC_RATEIO * CurItemValorICMSST.Value) / 100) / rTmpQuantidade);
                    wVLR_AGREGADO := wVLR_AGREGADO + wValor_subTrib;


                    //OUTROS VALORES
                    wPERC_RATEIO  := (((rTmpQuantidade * rTmp_Custo) * 100)/Curr_Valor_Produtos.Value);
                    wValor_Outros := (((wPERC_RATEIO * currOutros.Value) / 100) / rTmpQuantidade);
                    wVLR_AGREGADO := wVLR_AGREGADO + wValor_Outros ;

                   if DBInicio.Empresa.PMT_ICMS_CUSTOENTRADA then //retirar imcs
                        ValorImpostosRetirados := wICMS_valor
                     else
                      ValorImpostosRetirados :=0;

                     if DBInicio.Empresa.PMT_PIS_CUSTOENTRADA then // retirar pis/cofins
                        ValorImpostosRetirados := ValorImpostosRetirados + (wPIS_CRED + wCOFINS_CRED ) ;

                    wVLR_AGREGADO := wVLR_AGREGADO - ValorImpostosRetirados;


                    //custo medio
                    if not DataCadastros.CdsProdutos.Active then
                        DataCadastros.CdsProdutos.Open;
                    DataCadastros.CdsProdutos.Locate('PRD_REFER', SqlCdsGridComOCPRD_REFER.AsString,[]);

                    wEstoque := KardexRetornaSaldo(DataCadastros.CdsProdutosPRD_CODIGO.AsString, EdtAlmox.Text, '');

                    if (wEstoque < 0) then
                       wEstoque := 0;


                    // preco medio pelo custo Liquido
                    if (dbinicio.empresa.wCalcularPM = 0) or (dbinicio.empresa.wCalcularPM = Null) then
                    begin
                      if DataCadastros.CdsProdutosPRD_PMEDIO.AsFloat       > 0 then
                        wCUSTO_MEDIO := (((rTmp_Custo * rTmpQuantidade) + (DataCadastros.CdsProdutosPRD_PMEDIO.AsFloat       * wEstoque      )) / (rTmpQuantidade + wEstoque      ))
                      else
                      if DataCadastros.CdsProdutosPRD_PCUSTO.AsFloat       > 0 then
                       wCUSTO_MEDIO := (((rTmp_Custo * rTmpQuantidade) + (DataCadastros.CdsProdutosPRD_PCUSTO.AsFloat       * wEstoque      )) / (rTmpQuantidade + wEstoque      ))
                      else
                       wCUSTO_MEDIO := (rTmp_Custo);
                    end;
                    // preco medio pelo custo agregado (custo de entrada)
                    if dbinicio.empresa.wCalcularPM = 1 then
                    begin
                      if DataCadastros.CdsProdutosPRD_PMEDIO.AsFloat       > 0 then
                        wCUSTO_MEDIO := (((( wVLR_AGREGADO) * rTmpQuantidade) + (DataCadastros.CdsProdutosPRD_PMEDIO.AsFloat       * wEstoque      )) / (rTmpQuantidade + wEstoque      ))
                       else
                      if DataCadastros.CdsProdutosPRD_PCUSTO.AsFloat       > 0 then
                       wCUSTO_MEDIO := (((( wVLR_AGREGADO) * rTmpQuantidade) + (DataCadastros.CdsProdutosPRD_PCUSTO.AsFloat       * wEstoque      )) / (rTmpQuantidade + wEstoque      ))
                       else
                       wCUSTO_MEDIO := (wVLR_AGREGADO);
                    end;
                     // preco medio pelo custo com credito
                    if dbinicio.empresa.wCalcularPM = 2 then
                    begin
                      if DataCadastros.CdsProdutosPRD_PMEDIO.AsFloat       > 0 then
                        wCUSTO_MEDIO := ((((rTmp_Custo - wCUSTO_CREDITO) * rTmpQuantidade) + (DataCadastros.CdsProdutosPRD_PMEDIO.AsFloat       * wEstoque      )) / (rTmpQuantidade + wEstoque      ))
                       else
                      if DataCadastros.CdsProdutosPRD_PCUSTO.AsFloat       > 0 then
                       wCUSTO_MEDIO := ((((rTmp_Custo - wCUSTO_CREDITO) * rTmpQuantidade) + (DataCadastros.CdsProdutosPRD_PCUSTO.AsFloat       * wEstoque      )) / (rTmpQuantidade + wEstoque      ))
                       else
                       wCUSTO_MEDIO := (rTmp_Custo);
                    end;
                    if dbinicio.Empresa.wPMT_NAO_AUTO_PVENDA then
                      wAtualiza_pvenda := 'N'
                    else
                    if (wAtualiza_pvenda = '') and (PesqFornecedor.idRetorno <> '') then
                        wAtualiza_pvenda  := PesqFornecedor.CDS.FieldByName('FOR_ATUALIZA_PVENDA').AsString;

                    if IsNaN(wCUSTO_MEDIO) then
                        wCUSTO_MEDIO := (rTmp_Custo);
                    if IsInfinite(wCUSTO_MEDIO) then
                        wCUSTO_MEDIO := (rTmp_Custo);
                    //Verifica se atualiza Custo
                    ope_codigo := RetornaRegistroCFOP(CrCfopItem.Text);
                    if BuscaUmDadoSqlAsString('SELECT OPE_ATUALIZA_CUSTO FROM OPE0000 WHERE OPE_CODIGO = '+QuotedStr(ope_codigo)) = 'S' then
                    begin
                      //wAtualiza_pvenda = 'N' // SE NÃO ATUALIZA PREÇO DE VENDA, ATUALIZA OS CUSTOS E A MARGEM
                      // CASO CONTRÁRIO ATUALIZA PREÇO DE VENDA E MARGEM
                      if wAtualiza_pvenda = 'N'  then
                      begin
                        if porFora then
                        begin
                          if wCalcularPV = 0 then  // PRD_PCUSTO
                           wSql5 := ', PRD_MARGEMVENDA =  ((PRD_PVENDA/ '+ValorAmericano(CurrToStr(rTmp_Custo))+ ') - 1)*100 '
                          else if wCalcularPV = 1 then //PRD_CUSTOCOMIPI
                           wSql5 := ', PRD_MARGEMVENDA =  ((PRD_PVENDA/ '+ValorAmericano(FloatToStr(rTmp_Custo + wVLR_AGREGADO))+ ') - 1)*100 '
                          else if wCalcularPV = 2 then // PRD_PMEDIO
                           wSql5 := ', PRD_MARGEMVENDA =  ((PRD_PVENDA/ '+ValorAmericano(FloatToStr(wCUSTO_MEDIO))+    ') - 1)*100 ';
                        end
                        else
                        begin
                          if wCalcularPV = 0 then  // PRD_PCUSTO
                           wSql5 := ', PRD_MARGEMVENDA =  (('+ValorAmericano(CurrToStr(rTmp_Custo))+ ' / PRD_PVENDA)) * 100 '
                          else if wCalcularPV = 1 then //PRD_CUSTOCOMIPI
                           wSql5 := ', PRD_MARGEMVENDA =  (('+ValorAmericano(FloatToStr(rTmp_Custo + wVLR_AGREGADO))+ ' / PRD_PVENDA)) * 100 '
                          else if wCalcularPV = 2 then // PRD_PMEDIO
                           wSql5 := ', PRD_MARGEMVENDA =  (('+ValorAmericano(FloatToStr(wCUSTO_MEDIO))+    ' / PRD_PVENDA)) * 100 ';
                        end;
                      end
                      else
                      begin
                        wSql5 := '';
                      end;
                      wSql1 :='Update PRD0000 Set PRD_ENTRADA  = (PRD_ENTRADA + '+ValorAmericano(CurrToStr((rTmpQuantidade)))+')'+
                                                ', PRD_PENDENTE = (COALESCE(PRD_PENDENTE,0) - '+ValorAmericano(FloatToStr(wFinaliza))+')'+
                                                ', PRD_PCUSTO   = '+ValorAmericano(CurrToStr(rTmp_Custo))+
                                                //pvenda
                                                ', PRD_CUSTOFRETE   = '+ValorAmericano(CurrToStr(wValor_frete+wValor_FreteFora))+
                                                ', PRD_CUSTOADCIONAL = '+ValorAmericano(CurrToStr(wValor_despesas+wValor_Diff_ICMS))+
                                                ', PRD_OUTROSCUSTOS  = '+ValorAmericano(CurrToStr(wValor_Outros))+
                                                ', PRD_CUSTOIPI     = '+ValorAmericano(CurrToStr(wIPI_valor))+
                                                ', PRD_CUSTOSUBTRIB = '+ValorAmericano(CurrToStr(wValor_subTrib))+
                                                ', PRD_CUSTO_CREDITO = '+ValorAmericano(CurrToStr(rTmp_Custo - wCUSTO_CREDITO))+ //custo com credito
                                                ', PRD_CUSTOCOMIPI = '+ValorAmericano(FloatToStr( wVLR_AGREGADO))+    //custo agregado
                                                ', PRD_PMEDIO = '+ValorAmericano(FloatToStr(wCUSTO_MEDIO))+    //custo medio
                                                ', PRD_IMPOSTOS_RETIRADOS = '+ValorAmericano(FloatToStr(ValorImpostosRetirados))+
                                                ', PRD_DTPCUSTO = '''+DataAmericana(DateToStr(DbeENF_EMISSAO.Date))+''''+
                                                ', FOR_CODIGO = '''+sFornecedor+''''+wSql5;



                      DataCadastros.sqlUpdate.Close;
                      DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,'WHERE PRD_REFER = '''+CbRef.Text+'''','','');
                      DataCadastros.sqlUpdate.Execsql;


                    end;

                     // Atualizar preço de venda conforme fornecedor
                    if wAtualiza_pvenda = 'S' then
                      AtualizarTabelaPrecos  (CbRef.Text);
                    //Atualiza Pedido de Compra
                    if (edtRegistroOrdemCompraItem.Text <> '0')and(CurItemOrdemCompraBaixada.Value > 0) then
                       begin
                          DataCadastros.sqlUpdate1.Close;
                          DataCadastros.sqlUpdate1.sql.text:= 'UPDATE OCP_IT01 SET OCI_QTDER = OCI_QTDER + '+ValorAmericano(CurItemOrdemCompraBaixada.Text)+' WHERE OCI_REGISTRO = '+edtRegistroOrdemCompraItem.Text;
                          DataCadastros.sqlUpdate1.ExecSql;
                          AtualizaSituacaoOC(edtRegistroOrdemCompraItem.Text);
                       end;
                    //Seguranca frete
                    if (not btnDanfe.Enabled)and(wValor_frete > 0) then
                      begin
                        CurFrete.Value :=  wValor_frete * rTmpQuantidade;
                      end;

                    if (wAlterar ) then
                       begin

                       wPrdCodigo:= dbInicio.BuscaUmDadoSqlAsString(
                          SQLDEF('PRODUTOS','select prd_codigo from PRD0000 ','WHERE PRD_REFER = '+QuotedStr(CbRef.Text),'','' ));
                          {Inserir dados no arquivo ENF_IT01}
                          iRegistro := dbInicio.GetNextSequence('gen_enf_it01');
                          wSql1 := 'INSERT INTO ENF_IT01 ('+
                                   'ENF_registro,'+
                                   'ENF_IT_NOTANUMBER,'+
                                   'PRDL_REGISTRO,'+
                                   'ENF_CFOP,'+
                                   'PCX_CODIGO,'+
                                   'ENF_ORIGEM_MERCADORIA,'+
                                   'OPE_CODIGO,'+
                                   'PRD_REFER,'+
                                   'PRD_DESCRI,'+
                                   //ICMS
                                   'stb_tributacao,'+
                                   'enf_it_baseicms,'+
                                   'enf_icmsaliq, '+
                                   'ENF_ICMS,'+
                                   //ICMS ST
                                   'enf_it_basesubtrib,'+
                                   'enf_it_aliqsubtrib,'+
                                   'enf_vlsubst,'+
                                   //IPI
                                   'cst_ipi,'+
                                   'enf_it_baseipi,'+
                                   'ENF_IPIALIQ,'+
                                   'enf_it_vlipi,'+
                                   //PIS
                                   'cst_pis,'+
                                   'enf_basepis,'+
                                   'enf_it_aliqpis,'+
                                   'enf_it_vlpis,'+
                                   //COFINS
                                   'cst_cofins,'+
                                   'enf_basecofins,'+
                                   'enf_it_aliqcofins,'+
                                   'enf_it_vlcofins,'+
                                   //Ordem de Compra
                                   'OCP_CODIGO,'+
                                   'ENF_QTDE_PEDIDO_COMPRA,'+
                                   'OCI_REGISTRO,'+
                                   'ENF_QTDE,'+
                                   'ENF_UNIDADE_TRABALHO,'+
                                   'ENF_PRECO,'+
                                   'ENF_CUSTO,'+
                                   'ENF_IT_VALFRETE,'+
                                   'FOR_CODIGO,'+
                                   'AMX_CODIGO,'+
                                   'PRD_CODIGO,'+
                                   'USU_CODIGO,'+
                                   'REPETICAO_REFER,'+
                                   'ENF_ATUALIZA_PRECO,'+
                                   'ENF_ATUALIZA_ESTOQUE,'+
                                   'EMP_CODIGO, '+
                                    ' ENF_UCOM, ENF_UTRIB, ENF_QTDE_ORIGINAL, ENF_PRECO_ORIGINAL, ENF_PTOTAL_ORIGINAL) ';
                          wSql2 := 'VALUES ('''+IntToStr(iRegistro)+''','''+
                                                EdtNOTA.Text+''','''+
                                                sRegistroLote+''','''+
                                                CrCfopItem.Text+''','''+
                                                cxCentroCustoItem.EditValue+''','''+
                                                IntToStr(cbENF_ORIGEM_MERCADORIA.ItemIndex)+''','''+
                                                ope_codigo+''','''+
                                                CbRef.Text+''','''+
                                                StringReplace(EdDescricao.Text, chr(39),'',[rfReplaceAll, rfIgnoreCase])+''','''+
                                                //ICMS
                                                copy(cbbItemCST.Text,1,2)+''','''+
                                                ValorAmericano(CurItemBaseICMS.Text)+''','''+
                                                ValorAmericano(CurItemAliquotaICMS.Text)+''','''+
                                                ValorAmericano(CurItemValorICMS.Text)+''','''+
                                                //ICMS ST
                                                ValorAmericano(CurItemBaseICMSST.Text)+''','''+
                                                ValorAmericano(CurItemAliquotaICMSST.Text)+''','''+
                                                ValorAmericano(CurItemValorICMSST.Text)+''','''+
                                                //IPI
                                                copy(cbbItemCSTIPI.Text,1,2)+''','''+
                                                ValorAmericano(CurItemBaseIPI.Text)+''','''+
                                                ValorAmericano(CurItemAliquotaIPI.Text)+''','''+
                                                ValorAmericano(CurItemValorIPI.Text)+''','''+
                                                //PIS
                                                copy(cbbItemCSTPIS.Text,1,2)+''','''+
                                                ValorAmericano(CurItemBasePIS.Text)+''','''+
                                                ValorAmericano(CurItemAliquotaPIS.Text)+''','''+
                                                ValorAmericano(CurItemValorPIS.Text)+''','''+
                                                //COFINS
                                                copy(cbbItemCSTCofins.Text,1,2)+''','''+
                                                ValorAmericano(CurItemBaseCofins.Text)+''','''+
                                                ValorAmericano(CurItemAliquotaCofins.Text)+''','''+
                                                ValorAmericano(CurItemValorCofins.Text)+''','''+
                                                //Ordem de Compra
                                                PreenchezeroEsquerda(edtItemOrdemCompra.Text,edtItemOrdemCompra.MaxLength)+''','''+
                                                ValorAmericano(CurItemOrdemCompraBaixada.Text)+''','''+
                                                iif(edtRegistroOrdemCompraItem.Text = '','0',edtRegistroOrdemCompraItem.Text)+''','''+
                                                ValorAmericano(CurrQtdeR.Text)+''','''+
                                                ValorAmericano(CurrToStr(rTmpQuantidade))+''','''+
                                                ValorAmericano(CurrPreco.Text)+''','''+
                                                ValorAmericano(FloatToStr(rTmp_Custo))+''','''+
                                                ValorAmericano(FloatToStr(CurFrete.Value))+''','''+  
                                                sFornecedor+''','''+
                                                StrZero(EdtAlmox.Text,EdtAlmox.MaxLength)+''','''+
                                                wPrdCodigo+''','''+
                                                dbInicio.Usuario.Codigo+''','''+
                                                IntToStr(wRepeticao_refer)+''','''+
                                                SqlCdsOPOPE_ATUALIZA_CUSTO.AsString+''','''+
                                                SqlCdsOPOPE_ESTOQUE.AsString+''','''+
                                                dbInicio.Empresa.EMP_CODIGO+''' '+ ','+
                                                QuotedStr(UpperCase(edUnd.Text)) + ','+
                                                QuotedStr(UpperCase(ENF_UTRIB)) +','+
                                                  FloatToSQL(ENF_QTDE_ORIGINAL) +','+
                                                  FloatToSQL(ENF_PRECO_ORIGINAL) +','+
                                                  FloatToSQL(ENF_PTOTAL_ORIGINAL) +'  )';
                          DataCadastros.sqlUpdate.Close;
                          DataCadastros.SqlUpdate.sql.text :=wSql1 + wSql2;
                          DataCadastros.sqlUpdate.Execsql;

                          //Verifica se a cfop atualiza estoque
                          if (vMovimentaEstoque = 'S') then
                          begin
                            bIndustrRetorno :=  DBInicio.BuscaUmDadoSqlAsString('SELECT OPE_RETORNO_INDUST  FROM OPE0000  '+
                                                                 ' WHERE OPE_CODIGO = '+QuotedStr(ope_codigo)) = 'S' ;

                                KardexLancamento(IntToStr(iRegistro),
                                           'ENF',
                                           StrZero(EdtAlmox.Text,EdtAlmox.MaxLength),
                                           '',
                                              dbInicio.BuscaUmDadoSqlAsString(
                                              SQLDEF('PRODUTOS','select prd_codigo from PRD0000 ','WHERE PRD_REFER = '+QuotedStr(CbRef.Text),'','' ) ),
                                          // dbInicio.RetornaRegistroTabela('PRD0000', 'PRD_CODIGO', 'PRD_REFER = '+QuotedStr(CbRef.Text)),
                                           '',//Grade
                                           '',
                                           iif(bIndustrRetorno,'S','E'),
                                           CbLoteProduto.text,
                                           sRegistroLote,
                                           'ENTRADA DE ITEM NOTA FISCAL',
                                           Now,
                                           CurrQtdeR.Value,
                                           EdtNOTA.Text,
                                           StrZero(EdtFor_Codigo.Text,EdtFor_Codigo.MaxLength)+'-'+PesqFornecedor.CDS.FieldByName('FOR_RAZAO').AsString,
                                           CurrPreco.Value);
                          end;
                             cbMovimentaEstoque.Enabled:=False;
                          {Atualiza o Grid da ordem de compra}
                          if (not SqlCdsGridSemOC.IsEmpty) then
                             SqlCdsGridSemOC.Refresh;
                          {Atualizar a Situacao do Pedido de Compra}
                          AtualizaSituacaoOC(edtRegistroOrdemCompraItem.Text);
                       end;
                  except on E:EDataBaseError do
                     uteis.erro  ('Erro ao atualizar as tabelas !');
                  end;
              end;
       end
    else          // SEM ORDEM DE COMPRA
       begin
           try
             {Atualiza o arquivo PRD0000 os seguintes campo = PRD_ENTRADA}
             //wCustoIPI := CurrPreco.Value+((CurrPreco.Value*CurrIPI.Value)/100);
                    //
                    wSql1     := 'SELECT '
                                +'T1.PRD_REFER,'
                                +'COALESCE(T1.PRD_UTILCONV,''N'') AS PRD_UTILCONV,'
                                +'COALESCE(T1.PRD_FATORC,0) AS PRD_FATORC,'
                                +'COALESCE(T1.PRD_DIVMULT,''N'') AS PRD_DIVMULT,'
                                +'COALESCE(T1.PRD_FATOR_PROD,0) AS PRD_FATOR_PROD,'
                                +'COALESCE(T1.PRD_DIV_MULT_PROD,''N'') AS PRD_DIV_MULT_PROD';
                    wSql2     := ' FROM PRD0000  T1 ';

                    wSeleciona := 'WHERE T1.PRD_REFER = '''+CbRef.Text+'''';
                    wOrdem     := 'T1.PRD_REFER ';
                    //
                    Cds_Prod_Conv.Close;
                    Cds_Prod_Conv.CommandText := SQLDEF('PRODUTOS',wSql1+wSql2,wSeleciona,wOrdem,'T1.');
                    Cds_Prod_Conv.Open;
                    //
                    {verifica se utiliza fator de conversão}
                    if (Cds_Prod_ConvPRD_UTILCONV.AsString = 'S') then
                       begin
                          {caucular quantidade}
                          rVlr1 := CurrQtdeR.Value;
                          rVlr2 := Cds_Prod_ConvPRD_FATOR_PROD.AsFloat      ;
                          rVlr3 := CurrPreco.Value;
                          {fator produção}
                          if ((Cds_Prod_ConvPRD_DIV_MULT_PROD.AsString <> 'N')
                          and(Cds_Prod_ConvPRD_FATOR_PROD.AsFloat       <> 0)) then
                             begin
                                {multiplicador}
                                if (Cds_Prod_ConvPRD_DIV_MULT_PROD.AsString = 'M') then
                                   begin
                                      rTmpQuantidade := rVlr1*rVlr2;
                                   end
                                else
                                {divisor}
                                if (Cds_Prod_ConvPRD_DIV_MULT_PROD.AsString = 'D') then
                                   begin
                                      rTmpQuantidade := rVlr1/rVlr2;
                                   end;
                             end;
                          {caucular custo + custo_ipi}
                          rVlr1 := CurrQtdeR.Value;
                          rVlr2 := Cds_Prod_ConvPRD_FATORC.AsFloat      ;
                          rVlr3 := CurrPreco.Value;
                          {fator compra}
                          if ((Cds_Prod_ConvPRD_DIVMULT.AsString <> 'N')
                          and(Cds_Prod_ConvPRD_FATORC.AsFloat       <> 0)) then
                             begin
                                {multiplicador}
                                if (Cds_Prod_ConvPRD_DIVMULT.AsString = 'M') then
                                   begin
                                      rTmp_Custo := rVlr3*rVlr2;
                                      wCustoIPI  := rTmp_Custo+CurItemValorIPI.Value;
                                   end
                                else
                                {divisor}
                                if (Cds_Prod_ConvPRD_DIVMULT.AsString = 'D') then
                                   begin
                                      rTmp_Custo := rVlr3/rVlr2;
                                      wCustoIPI  := rTmp_Custo+CurItemValorIPI.Value;
                                   end;
                             end;
                       end
                    else
                       begin
                          rTmpQuantidade := CurrQtdeR.Value;
                          rTmp_Custo     := CurrPreco.Value;
                          wCustoIPI      := CurrPreco.Value+CurItemValorIPI.Value;
                       end;
                    wVLR_AGREGADO := rTmp_Custo;
                    BuscaOperacaoNovo(iif(Copy(CbOp.Text,01,04)='',DbeOPE_NATUREZA.Text,Copy(CbOp.Text,01,04)),
                                    Copy(CbOp.Text,08,60));

                    if CurItemValorPIS.value >0 then
                      wPIS_CRED :=    CurItemValorPIS.value/rTmpQuantidade ;;
                    if CurItemValorCofins.Value>0 then
                      wCOFINS_CRED := CurItemValorCofins.Value/rTmpQuantidade ;;

                    // calcular o valor do IPI e do ICMS para CUSTO COM CREDITO
                    wIPI_valor := CurItemValorIPI.Value;
                    if CurItemValorICMS.Value>0  then
                      wICMS_valor := CurItemValorICMS.Value/ rTmpQuantidade;

                    if (CurItemValorICMS.Value > 0) then
                       wIcmsBase := (rTmp_Custo * rTmpQuantidade);
                    wCUSTO_CREDITO := (wPIS_CRED + wCOFINS_CRED + wICMS_valor);

                    //IPI não precisa ratear pois o IPI é por item
                    wVLR_AGREGADO := wVLR_AGREGADO+ wIPI_valor;

                    //rateio de frete
                    wPERC_RATEIO   := (((rTmpQuantidade * rTmp_Custo) * 100)/Curr_Valor_Produtos.Value);
                    wValor_frete  := (((wPERC_RATEIO * CurrVlFrete.Value) / 100) / rTmpQuantidade);
                    wVLR_AGREGADO := wVLR_AGREGADO + wvalor_frete;

                    //rateio de depesas acessorias
                    wPERC_RATEIO  := (((rTmpQuantidade * rTmp_Custo) * 100)/Curr_Valor_Produtos.Value);
                    wValor_despesas:= (((wPERC_RATEIO * CurrVlDespesas.Value) / 100) / rTmpQuantidade);
                    wVLR_AGREGADO := wVLR_AGREGADO + wvalor_despesas;

                    //rateio de seguro
                    wPERC_RATEIO  := (((rTmpQuantidade * rTmp_Custo) * 100)/Curr_Valor_Produtos.Value);
                    wValor_seguro := (((wPERC_RATEIO * CurrVlSeguro.Value) / 100) / rTmpQuantidade);
                    wVLR_AGREGADO := wVLR_AGREGADO + wValor_seguro;

                    //Frete por fora
                    wPERC_RATEIO  := (((rTmpQuantidade * rTmp_Custo) * 100)/Curr_Valor_Produtos.Value);
                    wValor_FreteFora := (((wPERC_RATEIO * currFrete.Value) / 100) / rTmpQuantidade);
                    wVLR_AGREGADO := wVLR_AGREGADO + wValor_FreteFora;

                    //diferença de ICMS
                    wPERC_RATEIO  := (((rTmpQuantidade * rTmp_Custo) * 100)/Curr_Valor_Produtos.Value);
                    wValor_Diff_ICMS := (((wPERC_RATEIO * currDifICMS.Value) / 100) / rTmpQuantidade);
                    wVLR_AGREGADO := wVLR_AGREGADO + wValor_Diff_ICMS;

                    //OUTROS VALORES
                    wPERC_RATEIO  := (((rTmpQuantidade * rTmp_Custo) * 100)/Curr_Valor_Produtos.Value);
                    wValor_Outros := (((wPERC_RATEIO * currOutros.Value) / 100) / rTmpQuantidade);
                    wVLR_AGREGADO := wVLR_AGREGADO + wValor_Outros ;


                    //rateio da substituição tributária -> fazer pelo total pois ainda não é informado qual item tem Sub.T.ou não
                    wPERC_RATEIO := (((rTmpQuantidade * rTmp_Custo) * 100)/Curr_Valor_Produtos.Value);

                    wValor_subTrib:= (((wPERC_RATEIO * CurItemValorICMSST.Value) / 100) / rTmpQuantidade);
                    wVLR_AGREGADO := wVLR_AGREGADO + wValor_subTrib;

                   if DBInicio.Empresa.PMT_ICMS_CUSTOENTRADA then //retirar imcs
                        ValorImpostosRetirados := wICMS_valor
                     else
                      ValorImpostosRetirados :=0;

                     if DBInicio.Empresa.PMT_PIS_CUSTOENTRADA then // retirar pis/cofins
                        ValorImpostosRetirados := ValorImpostosRetirados + (wPIS_CRED + wCOFINS_CRED ) ;

                    wVLR_AGREGADO := wVLR_AGREGADO - ValorImpostosRetirados;

                    //custo medio
                    if not DataCadastros.CdsProdutos.Active then
                      DataCadastros.CdsProdutos.Open;
                    DataCadastros.CdsProdutos.Locate('PRD_REFER', CbRef.Text,[]);

                    wEstoque := KardexRetornaSaldo(DataCadastros.CdsProdutosPRD_CODIGO.AsString, EdtAlmox.Text, '');

                    if (wEstoque < 0) then
                       wEstoque := 0;

                    if (dbinicio.empresa.wCalcularPM = 0) or (dbinicio.empresa.wCalcularPM = Null) then    // custo medio pelo custo liquido
                    begin
                      if DataCadastros.CdsProdutosPRD_PMEDIO.AsFloat       > 0 then
                        wCUSTO_MEDIO := (((rTmp_Custo * rTmpQuantidade) + (DataCadastros.CdsProdutosPRD_PMEDIO.AsFloat       * wEstoque      )) / (rTmpQuantidade + wEstoque      ))
                      else
                      if DataCadastros.CdsProdutosPRD_PCUSTO.AsFloat       > 0 then
                       wCUSTO_MEDIO := (((rTmp_Custo * rTmpQuantidade) + (DataCadastros.CdsProdutosPRD_PCUSTO.AsFloat       * wEstoque      )) / (rTmpQuantidade + wEstoque      ))
                      else
                       wCUSTO_MEDIO := (rTmp_Custo);
                    end;

                    if dbinicio.empresa.wCalcularPM = 1 then      // custo médio pelo custo de entrada
                    begin
                      if DataCadastros.CdsProdutosPRD_PMEDIO.AsFloat       > 0 then
                        wCUSTO_MEDIO := (((( wVLR_AGREGADO) * rTmpQuantidade) + (DataCadastros.CdsProdutosPRD_PMEDIO.AsFloat       * wEstoque      )) / (rTmpQuantidade + wEstoque      ))
                       else
                      if DataCadastros.CdsProdutosPRD_PCUSTO.AsFloat       > 0 then
                       wCUSTO_MEDIO := (((( wVLR_AGREGADO) * rTmpQuantidade) + (DataCadastros.CdsProdutosPRD_PCUSTO.AsFloat       * wEstoque      )) / (rTmpQuantidade + wEstoque      ))
                       else
                       wCUSTO_MEDIO := (wVLR_AGREGADO);
                    end;

                    if dbinicio.empresa.wCalcularPM = 2 then    // custo médido pelo custo com creditos de impostos
                    begin
                      if DataCadastros.CdsProdutosPRD_PMEDIO.AsFloat       > 0 then
                        wCUSTO_MEDIO := ((((rTmp_Custo - wCUSTO_CREDITO) * rTmpQuantidade) + (DataCadastros.CdsProdutosPRD_PMEDIO.AsFloat       * wEstoque      )) / (rTmpQuantidade + wEstoque      ))
                       else
                      if DataCadastros.CdsProdutosPRD_PCUSTO.AsFloat       > 0 then
                       wCUSTO_MEDIO := ((((rTmp_Custo - wCUSTO_CREDITO) * rTmpQuantidade) + (DataCadastros.CdsProdutosPRD_PCUSTO.AsFloat       * wEstoque      )) / (rTmpQuantidade + wEstoque      ))
                       else
                       wCUSTO_MEDIO := (rTmp_Custo);
                    end;


                    if IsNaN(wCUSTO_MEDIO) then
                        wCUSTO_MEDIO := (rTmp_Custo);
                    if IsInfinite(wCUSTO_MEDIO) then
                        wCUSTO_MEDIO := (rTmp_Custo);
                    ope_codigo := RetornaRegistroCFOP(CrCfopItem.Text);
                    wFinaliza  :=AntRecebidoPedCompras -  CurItemOrdemCompraBaixada.Value; // se fo ifeito alteração, campo recebido , antes da alteração - menos recebido atual
                    if dbinicio.Empresa.wPMT_NAO_AUTO_PVENDA then
                     wAtualiza_pvenda := 'N'
                    else
                    if (wAtualiza_pvenda = '') and (PesqFornecedor.idRetorno <> '') then
                       wAtualiza_pvenda  := PesqFornecedor.CDS.FieldByName('FOR_ATUALIZA_PVENDA').AsString;

                    //Verifica se atualiza Custo
                    if BuscaUmDadoSqlAsString('SELECT OPE_ATUALIZA_CUSTO FROM OPE0000 WHERE OPE_CODIGO = '+QuotedStr(ope_codigo)) = 'S' then
                       begin
                      //wAtualiza_pvenda = 'N' // SE NÃO ATUALIZA PREÇO DE VENDA, ATUALIZA OS CUSTOS E A MARGEM
                      // CASO CONTRÁRIO ATUALIZA PREÇO DE VENDA E MARGEM
                      if wAtualiza_pvenda = 'N'  then
                      begin
                        if porFora then
                        begin
                          if wCalcularPV = 0 then  // PRD_PCUSTO
                           wSql5 := ', PRD_MARGEMVENDA =  ((PRD_PVENDA/ '+ValorAmericano(CurrToStr(rTmp_Custo))+ ') - 1)*100 '
                          else if wCalcularPV = 1 then //PRD_CUSTOCOMIPI
                           wSql5 := ', PRD_MARGEMVENDA =  ((PRD_PVENDA/ '+ValorAmericano(FloatToStr(rTmp_Custo + wVLR_AGREGADO))+ ') - 1)*100 '
                          else if wCalcularPV = 2 then // PRD_PMEDIO
                           wSql5 := ', PRD_MARGEMVENDA =  ((PRD_PVENDA/ '+ValorAmericano(FloatToStr(wCUSTO_MEDIO))+    ') - 1)*100 ';
                        end
                        else
                        begin
                          if wCalcularPV = 0 then  // PRD_PCUSTO
                           wSql5 := ', PRD_MARGEMVENDA =  (('+ValorAmericano(CurrToStr(rTmp_Custo))+ ' / PRD_PVENDA)) * 100 '
                          else if wCalcularPV = 1 then //PRD_CUSTOCOMIPI
                           wSql5 := ', PRD_MARGEMVENDA =  (('+ValorAmericano(FloatToStr(rTmp_Custo + wVLR_AGREGADO))+ ' / PRD_PVENDA)) * 100 '
                          else if wCalcularPV = 2 then // PRD_PMEDIO
                           wSql5 := ', PRD_MARGEMVENDA =  (('+ValorAmericano(FloatToStr(wCUSTO_MEDIO))+    ' / PRD_PVENDA)) * 100 ';

                        end


                      end
                      else
                      begin
                        wSql5 := '';
                      end;
                          iNumeroTransacaoAtual := Executa_Transacao('I',0);
                             wSql1 :='Update PRD0000 Set PRD_ENTRADA  = (PRD_ENTRADA + '+ValorAmericano(CurrToStr((rTmpQuantidade)))+')'+
                                                  ', PRD_PENDENTE = (COALESCE(PRD_PENDENTE,0) + '+ValorAmericano(FloatToStr(wFinaliza))+')'+
                                                    ', PRD_PCUSTO   = '+ValorAmericano(CurrToStr(rTmp_Custo))+
                                                    //pvenda
                                                    ', PRD_CUSTOFRETE   = '+ValorAmericano(CurrToStr(wValor_frete+wValor_FreteFora))+
                                                    ', PRD_CUSTOADCIONAL = '+ValorAmericano(CurrToStr(wValor_despesas+wValor_Diff_ICMS))+
                                                    ', PRD_OUTROSCUSTOS  = '+ValorAmericano(CurrToStr(wValor_Outros))+
                                                    ', PRD_CUSTOIPI     = '+ValorAmericano(CurrToStr(wIPI_valor/rTmpQuantidade))+
                                                    ', PRD_CUSTOSUBTRIB = '+ValorAmericano(CurrToStr(wValor_subTrib))+
                                                    ', PRD_CUSTO_CREDITO = '+ValorAmericano(CurrToStr(rTmp_Custo - wCUSTO_CREDITO))+ //custo com credito
                                                    ', PRD_CUSTOCOMIPI = '+ValorAmericano(FloatToStr( wVLR_AGREGADO))+    //custo agregado
                                                    ', PRD_PMEDIO = '+ValorAmericano(FloatToStr(wCUSTO_MEDIO))+    //custo medio
                                                    ', PRD_IMPOSTOS_RETIRADOS = '+ValorAmericano(FloatToStr(ValorImpostosRetirados))+
                                                    ', PRD_DTPCUSTO = '''+DataAmericana(DateToStr(DbeENF_EMISSAO.Date))+''''+
                                ', FOR_CODIGO = '''+sFornecedor+''''+wsql5;


                             DataCadastros.sqlUpdate.Close;
                             DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,'WHERE PRD_REFER = '''+CbRef.Text+'''','','');
                             DataCadastros.sqlUpdate.Execsql;


                         Executa_Transacao('C',iNumeroTransacaoAtual);
                     end
                     else
                     begin
                        wSql1 :='Update PRD0000 Set PRD_ENTRADA  = (PRD_ENTRADA + '+ValorAmericano(CurrToStr((rTmpQuantidade)))+')'+
                                ', PRD_PENDENTE = (COALESCE(PRD_PENDENTE,0) - '+ValorAmericano(FloatToStr(wFinaliza))+')';
                           DataCadastros.sqlUpdate.Close;
                           DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,'WHERE PRD_REFER = '''+CbRef.Text+'''','','');
                           DataCadastros.sqlUpdate.Execsql;
                       end;

                    // Atualizar preço de venda conforme fornecedor
                       if wAtualiza_pvenda = 'S' then
                        AtualizarTabelaPrecos  (CbRef.Text);
             //Atualiza Pedido de Compra
             if (edtRegistroOrdemCompraItem.Text <> '0')and(CurItemOrdemCompraBaixada.Value > 0) then
                begin
                   if DataCadastros.sqlconnection1.intransaction then
                      DataCadastros.committran;
                   CommitTransaction;
                   DataCadastros.sqlUpdate1.Close;
                   DataCadastros.sqlUpdate1.sql.text:= 'UPDATE OCP_IT01 SET OCI_QTDER = OCI_QTDER + '+ValorAmericano(CurItemOrdemCompraBaixada.Text)+' WHERE OCI_REGISTRO = '+edtRegistroOrdemCompraItem.Text;
                   DataCadastros.sqlUpdate1.ExecSql;
                   AtualizaSituacaoOC(edtRegistroOrdemCompraItem.Text);
                end;
             //Seguranca frete
             if (not btnDanfe.Enabled)and(wValor_frete > 0) then
               begin
                 CurFrete.Value :=  wValor_frete * rTmpQuantidade;
               end;
               wPrdCodigo:= dbInicio.BuscaUmDadoSqlAsString(
                 SQLDEF('PRODUTOS','select prd_codigo from PRD0000 ','WHERE PRD_REFER = '+QuotedStr(CbRef.Text),'','' ));

             {Inserir dados no arquivo ENF_IT01}
             iRegistro := dbInicio.GetNextSequence('gen_enf_it01');
             wSql1 := 'INSERT INTO ENF_IT01 ('+
                      'ENF_registro,'+
                      'ENF_IT_NOTANUMBER,'+
                      'PRDL_REGISTRO,'+
                      'ENF_CFOP,'+
                     // 'PED_CODIGO,'+
                      'PCX_CODIGO,'+
                      'ENF_ORIGEM_MERCADORIA,'+
                      'ope_codigo,'+
                      'PRD_REFER,'+
                      'PRD_DESCRI,'+
                      //ICMS
                      'stb_tributacao,'+
                      'enf_it_baseicms,'+
                      'enf_icmsaliq, '+
                      'ENF_ICMS,'+
                      //ICMS ST
                      'enf_it_basesubtrib,'+
                      'enf_it_aliqsubtrib,'+
                      'enf_vlsubst,'+
                      //IPI
                      'cst_ipi,'+
                      'enf_it_baseipi,'+
                      'ENF_IPIALIQ,'+
                      'enf_it_vlipi,'+
                      //PIS
                      'cst_pis,'+
                      'enf_basepis,'+
                      'enf_it_aliqpis,'+
                      'enf_it_vlpis,'+
                      //COFINS
                      'cst_cofins,'+
                      'enf_basecofins,'+
                      'enf_it_aliqcofins,'+
                      'enf_it_vlcofins,'+
                      //Ordem de Compra
                      'OCP_CODIGO,'+
                      'ENF_QTDE_PEDIDO_COMPRA,'+
                      'OCI_REGISTRO,'+
                      'ENF_QTDE,'+
                      'ENF_UNIDADE_TRABALHO,'+
                      'ENF_PRECO,'+
                      'ENF_CUSTO,'+
                      'ENF_IT_VALFRETE,'+
                      'FOR_CODIGO,'+
                      'AMX_CODIGO,'+
                      'PRD_CODIGO,'+
                      'USU_CODIGO,'+
                      'REPETICAO_REFER,'+
                      'ENF_ATUALIZA_PRECO,'+
                      'ENF_ATUALIZA_ESTOQUE,'+
                      'EMP_CODIGO, '+
                      ' ENF_UCOM, ENF_UTRIB, ENF_QTDE_ORIGINAL, ENF_PRECO_ORIGINAL, ENF_PTOTAL_ORIGINAL )';
             wSql2 := 'VALUES ('''+IntToStr(iRegistro)+''','''+
                                   EdtNOTA.Text+''','''+
                                   sRegistroLote+''','''+
                                   CrCfopItem.Text+''','''+
                                  //  edtItemOrdemCompra.Text+''','''+
                                   iif(cxCentroCustoItem.EditValue = Null, '', cxCentroCustoItem.EditValue) + ''','''+
                                   IntToStr(cbENF_ORIGEM_MERCADORIA.ItemIndex) +''','''+
                                   ope_codigo + ''','''+
                                   CbRef.Text+''','''+
                                   copy(StringReplace(EdDescricao.Text, chr(39),'',[rfReplaceAll, rfIgnoreCase]),1,80)+''','''+
                                   //ICMS
                                   copy(cbbItemCST.Text,1,2)+''','''+
                                   ValorAmericano(CurItemBaseICMS.Text)+''','''+
                                   ValorAmericano(CurItemAliquotaICMS.Text)+''','''+
                                   ValorAmericano(CurItemValorICMS.Text)+''','''+
                                   //ICMS ST
                                   ValorAmericano(CurItemBaseICMSST.Text)+''','''+
                                   ValorAmericano(CurItemAliquotaICMSST.Text)+''','''+
                                   ValorAmericano(CurItemValorICMSST.Text)+''','''+
                                   //IPI
                                   copy(cbbItemCSTIPI.Text,1,2)+''','''+
                                   ValorAmericano(CurItemBaseIPI.Text)+''','''+
                                   ValorAmericano(CurItemAliquotaIPI.Text)+''','''+
                                   ValorAmericano(CurItemValorIPI.Text)+''','''+
                                   //PIS
                                   copy(cbbItemCSTPIS.Text,1,2)+''','''+
                                   ValorAmericano(CurItemBasePIS.Text)+''','''+
                                   ValorAmericano(CurItemAliquotaPIS.Text)+''','''+
                                   ValorAmericano(CurItemValorPIS.Text)+''','''+
                                   //COFINS
                                   copy(cbbItemCSTCofins.Text,1,2)+''','''+
                                   ValorAmericano(CurItemBaseCofins.Text)+''','''+
                                   ValorAmericano(CurItemAliquotaCofins.Text)+''','''+
                                   ValorAmericano(CurItemValorCofins.Text)+''','''+
                                   //Ordem de Compra
                                   PreenchezeroEsquerda(edtItemOrdemCompra.Text,edtItemOrdemCompra.MaxLength)+''','''+
                                   ValorAmericano(CurItemOrdemCompraBaixada.Text)+''','''+
                                   iif(edtRegistroOrdemCompraItem.Text = '','0',edtRegistroOrdemCompraItem.Text)+''','''+
                                   ValorAmericano(CurrQtdeR.Text)+''','''+
                                   ValorAmericano(CurrToStr(rTmpQuantidade))+''','''+
                                   ValorAmericano(CurrPreco.Text)+''','''+
                                   ValorAmericano(FloatToStr(rTmp_Custo))+''','''+
                                   ValorAmericano(FloatToStr(CurFrete.Value))+''','''+
                                   sFornecedor+''','''+
                                   StrZero(EdtAlmox.Text,EdtAlmox.MaxLength)+''','''+
                                   wPrdCodigo+''','''+
                                   dbInicio.Usuario.Codigo+''','''+
                                   IntToStr(wRepeticao_refer)+''','''+
                                   SqlCdsOPOPE_ATUALIZA_CUSTO.AsString+''','''+
                                   SqlCdsOPOPE_ESTOQUE.AsString+''','''+
                                   dbInicio.Empresa.EMP_CODIGO+''''+ ','+
                                   // QuotedStr(UpperCase(iif(ENF_UTRIB = '', edUnd.Text, ENF_UTRIB))) +','+
                                   QuotedStr(UpperCase(iif(ENF_UTRIB = '', edUnd.Text, ENF_UCOM))) +','+
                                   QuotedStr(UpperCase(edUnd.Text)) + ','+
                                   FloatToSQL(ENF_QTDE_ORIGINAL) +','+
                                   FloatToSQL(ENF_PRECO_ORIGINAL) +','+
                                   FloatToSQL(ENF_PTOTAL_ORIGINAL) +'  )';
             DataCadastros.sqlUpdate.Close;
             DataCadastros.SqlUpdate.sql.text :=wSql1 + wSql2;
             DataCadastros.sqlUpdate.Execsql;

             //Verifica se a cfop atualiza estoque
             if (vMovimentaEstoque = 'S') then
               begin
                bIndustrRetorno :=  DBInicio.BuscaUmDadoSqlAsString('SELECT OPE_RETORNO_INDUST  FROM OPE0000  '+
                                     ' WHERE OPE_CODIGO = '+QuotedStr(ope_codigo)) = 'S' ;

                   KardexLancamento(IntToStr(iRegistro),
                                           'ENF',
                                           StrZero(EdtAlmox.Text,EdtAlmox.MaxLength),
                                           '',
                                            dbInicio.BuscaUmDadoSqlAsString(
                                              SQLDEF('PRODUTOS','select prd_codigo from PRD0000 ','WHERE PRD_REFER = '+QuotedStr(CbRef.Text),'','' )) ,
                                           //dbInicio.RetornaRegistroTabela('PRD0000', 'PRD_CODIGO', 'PRD_REFER = '+QuotedStr(CbRef.Text)),
                                           '',//grade
                                           '',
                                           iif(bIndustrRetorno,'S','E'),
                                           CbLoteProduto.text,
                                           sRegistroLote,
                                           'ENTRADA DE ITEM NOTA FISCAL',
                                           Now,
                                           CurrQtdeR.Value,
                                           EdtNOTA.Text,
                                           StrZero(EdtFor_Codigo.Text,EdtFor_Codigo.MaxLength)+'-'+PesqFornecedor.CDS.FieldByName('FOR_RAZAO').AsString,
                                           CurrPreco.Value);
               end;
               cbMovimentaEstoque.Enabled:=False;
             {Atualiza o valor total da nota fiscal nos seguintes campos: ENF_BASEICMS,ENF_VL_ICMS,ENF_TOT_PROD,ENF_TOT_NOTA}
             wSql1 := 'UPDATE ENF0001 SET ENF_BASEICMS = '+ValorAmericano(CurrBaseIcms.Text)+',ENF_VL_ICMS = '+ValorAmericano(Curr_Vl_Icms.Text)+' ,ENF_TOT_PROD = '+ValorAmericano(CurTotalProdutos.Text)+' ,ENF_TOT_NOTA = '+ValorAmericano(NTotalGeral.Text);
             DataCadastros.sqlUpdate.Close;
             DataCadastros.SqlUpdate.sql.text :=SQLDEF('ORDENSCOMPRA',wSql1,' WHERE ENF_NOTANUMBER = '''+SqlCdsGridSemOCENF_IT_NOTANUMBER.AsString+''' AND FOR_CODIGO = '''+SqlCdsGridSemOCFOR_CODIGO.AsString+'''','','');
             DataCadastros.sqlUpdate.Execsql;

             wSql1 := 'SELECT '+
                      ' E1.ENF_REGISTRO, '+
                      ' E1.ENF_IT_NOTANUMBER, '+
                      ' P1.PRD_CODIGO, '+
                      ' E1.PRD_REFER, '+
                      ' E1.ENF_QTDE_PEDIDO_COMPRA, '+
                      ' E1.OCI_REGISTRO, '+
                      ' E1.PRD_DESCRI, '+
                      ' E1.OCP_CODIGO, '+
                      ' E1.FOR_CODIGO, '+
                      ' E1.PCX_CODIGO, '+
                      ' E1.ENF_QTDE, '+
                      ' E1.ENF_PRECO, '+
                      ' e1.cst_ipi, '+
                      ' e1.enf_it_baseipi, '+
                      ' E1.ENF_IPIALIQ, '+
                      ' e1.enf_it_vlipi, '+
                      ' e1.stb_tributacao, '+
                      ' e1.enf_it_baseicms, '+
                      ' e1.enf_icmsaliq, '+
                      ' E1.ENF_ICMS, '+
                      ' e1.enf_it_basesubtrib, '+
                      ' e1.enf_it_aliqsubtrib, '+
                      ' e1.enf_vlsubst, '+
                      ' e1.cst_pis, '+
                      ' e1.enf_basepis, '+
                      ' e1.enf_it_aliqpis, '+
                      ' e1.enf_it_vlpis, '+
                      ' e1.cst_cofins, '+
                      ' e1.enf_basecofins, '+
                      ' e1.enf_it_aliqcofins, '+
                      ' e1.enf_it_vlcofins, '+
                      ' E1.ENF_ATUALIZA_PRECO, '+
                      ' E1.ENF_ATUALIZA_ESTOQUE,  '+
                      ' E1.ENF_LOTE, '+
                      ' E1.ENF_CFOP, '+
                      ' (SELECT OPE_NATUREZA FROM OPE0000 op WHERE op.OPE_CODIGO = e1.OPE_CODIGO_RETORNO) AS ENF_CFOP_RETORNO, '+
                      ' E1.OPE_CODIGO_RETORNO, ' +
                      ' E1.ENF_ORIGEM_MERCADORIA, ' +
                      ' E1.AMX_CODIGO,  '+
                      ' A1.AMX_DESCRI, '+
                      ' P1.PRD_ESTOQUE, '+
                      ' P1.PRD_ENTRADA, '+
                      ' E1.ENF_UNIDADE_TRABALHO, '+
                      ' E1.REPETICAO_REFER, '+
                      ' P1.PRD_ALIQICM, '+
                      ' P1.PRD_SAIDA, '+
                      ' e1.ENF_IT_DESCTO, '+
                      ' E1.PRDL_REGISTRO, '+
                      ' e1.enf_it_valfrete, '+
                      ' e1.enf_it_vlseguro, '+
                      ' e1.enf_it_vldesp_aces,enf_ucom, ENF_UTRIB,  ENF_QTDE_ORIGINAL, ENF_PRECO_ORIGINAL, ENF_PTOTAL_ORIGINAL '+
                      ' FROM ENF_IT01 E1 '+
                      ' LEFT JOIN PRD0000 P1  ON  (E1.PRD_CODIGO = P1.PRD_CODIGO) '+
                      ' LEFT JOIN ALMOX0000 A1 ON (A1.AMX_CODIGO = E1.AMX_CODIGO) ';
             SqlCdsGridSemOC.Close;
            // SqlCdsGridSemOC.CommandText := SqlDef('ORDENSCOMPRA',wSql3+wSql1+wSql2,'where E1.ENF_IT_NOTANUMBER = '''+EdtNota.Text+''' and E1.FOR_CODIGO = '''+EdtFor_Codigo.Text+''' and E1.OCP_CODIGO = '''+'000000'+'''','E1.PRD_DESCRI','E1.');
             SqlCdsGridSemOC.CommandText := SqlDef('ORDENSCOMPRA',wSql1,'where E1.ENF_IT_NOTANUMBER = '''+EdtNota.Text+''' and E1.FOR_CODIGO = '''+EdtFor_Codigo.Text+''' ','E1.ENF_REGISTRO ','E1.');
             SqlCdsGridSemOC.Open;
             SqlCdsGridSemOC.Refresh;
           except on E:EDataBaseError do
              uteis.erro  ('Erro ao atualizar o Saldo do Estoque ! ' + e.Message);
           end;
       end;
    CalcTotais;
    {Atualizar a tabela PRD_ENSA todos os campos}
    try
      wSql1      := 'SELECT E1.*,A1.AMX_DESCRI FROM PRD_ENSA E1 LEFT JOIN ALMOX0000 A1 ON (A1.AMX_CODIGO = E1.AMX_CODIGO) ';
      if (dbInicio.Empresa.wMultiAlmox = 'S') then
         begin
            if (not wAlterar ) then
               begin
                  Edt_Almox_ant.Text := '';
                  wQualAlmox         := EdtAlmox.Text;
               end
            else
               begin
                   if (Edt_Almox_ant.Text = EdtAlmox.Text) then
                      wQualAlmox := EdtAlmox.Text
                   else
                      wQualAlmox := Edt_Almox_ant.Text;
               end;
      //
            wSeleciona := 'WHERE E1.PES_NUMDOC = '''+EdtNota.Text+''' AND E1.FOR_CODIGO = '''+EdtFor_Codigo.Text+''' AND E1.PRD_REFER = '''+CbRef.Text+''' AND E1.AMX_CODIGO = '''+wQualAlmox+'''';
            wOrdem     := 'E1.PES_NUMDOC,E1.FOR_CODIGO,E1.PRD_REFER,E1.AMX_CODIGO';
         end
      else
         begin
            wSeleciona := 'WHERE E1.PES_NUMDOC = '''+EdtNota.Text+''' AND E1.FOR_CODIGO = '''+EdtFor_Codigo.Text+''' AND E1.PRD_REFER = '''+CbRef.Text+''' AND E1.REPETICAO_REFER = '''+IntToStr(wRepeticao_refer)+'''';
            wOrdem     := 'E1.PES_NUMDOC,E1.FOR_CODIGO,E1.PRD_REFER';
         end;
      //
      DataCadastros.CdsPrdManut.close;
      DataCadastros.CdsPrdManut.CommandText := SQLDEF('PRODUTOS',wSql1,wSeleciona,wOrdem,'E1.');
      DataCadastros.CdsPrdManut.Open;

      if DataCadastros.CdsPrdManut.IsEmpty then
         DataCadastros.CdsPrdManut.Insert
      else
         DataCadastros.CdsPrdManut.Edit;


      DataCadastros.CdsPrdManutPRD_REFER.AsString       := CbRef.Text;
      DataCadastros.CdsPrdManutFOR_CODIGO.AsString      := sFornecedor;
      DataCadastros.CdsPrdManutPES_TIPO.AsString        := 'E';

      //DataCadastros.CdsPrdManutPES_QTDE.AsFloat            := (DataCadastros.CdsPrdManutPES_QTDE.AsFloat       + CurrQtdeR.Value);
      DataCadastros.CdsPrdManutPES_QTDE.AsFloat            := (rTmpQuantidade);
      DataCadastros.CdsPrdManutPES_NUMDOC.AsString      := EdtNota.Text;
      DataCadastros.CdsPrdManutREPETICAO_REFER.AsInteger:= wRepeticao_refer;
      DataCadastros.CdsPrdManutPES_TIPDOC.AsString      := 'NF';
      DataCadastros.CdsPrdManutPES_DATA.AsDateTime      := DBeENF_ENTRADA.Field.AsDateTime;
      DataCadastros.CdsPrdManutEMP_CODIGO.AsString      := dbInicio.Empresa.EMP_CODIGO;
      DataCadastros.CdsPrdManutPES_ORIGEM.AsString      := 'Automatica';

      DataCadastros.CdsPrdManutPES_VALOR.AsFloat                := rTmp_Custo;//CurrPreco.Value;
      DataCadastros.CdsPrdManutPES_COMCREDITO.AsFloat           := wCUSTO_CREDITO;//CUSTO COM CREDITO
      DataCadastros.CdsPrdManutPES_CUSTO_AGREGADO.AsFloat       := wVLR_AGREGADO;//CUSTO AGREGADO
      DataCadastros.CdsPrdManutPES_IPI.AsFloat                  := CurItemAliquotaIPI.Value;
      DataCadastros.CdsPrdManutPES_FLAG_ACERTO.AsString      := 'N';
      DataCadastros.CdsPrdManutPES_FLAG_CONTA.AsString       := 'S';
      DataCadastros.CdsPrdManutPES_KARDEX_TIPO.AsString      := 'E';
      DataCadastros.CdsPrdManutPES_KARDEX_OBS.AsString       := EdtFor_Codigo.Text+'-'+PesqFornecedor.CDS.FieldByName('FOR_RAZAO').AsString;
      if dbInicio.Empresa.wMultiAlmox = 'S' then
         DataCadastros.CdsPrdManutAMX_CODIGO.AsString := StrZero(EdtAlmox.Text,EdtAlmox.MaxLength);
      DataCadastros.CdsPrdManut.ApplyUpdates(0);
      DataCadastros.CdsPrdManut.Close;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao atualizar a tabela PRD_ENSA !'+E.MESSAGE));
    end;
    {Limpa o almoxarifado quando for wAchouNF=true}
    if (wAchouNF ) then
       begin
           EdtAlmox.Text := '';
           CbAlmox.Text  := '';
       end;
    wAlterar := False;
    Limparitens;
    BuscaItensNF;

end;

procedure TFormNfEntrada.Bit_CancelarClick(Sender: tObject);
begin
     if Bit_Cancelar.CanFocus then
        Bit_Cancelar.SetFocus
     Else

         BitCancelItem.Click;
     if DataMovimento.CdsEnf.State in [dsInsert] then
     begin

           excluirItensNF;

           DataCadastros.sqlUpdate.Close;
           DataCadastros.SqlUpdate.sql.text :=SQLDEF('PAGAR','Delete from ENF0001 ','where ENF_NOTANUMBER = '''+EdtNota.Text+''' AND cast( FOR_CODIGO as integer) = '+EdtFor_Codigo.Text+'','','');
           DataCadastros.sqlUpdate.Execsql;

           if (EdtNota.Text <> '')and(EdtFor_Codigo.Text <> '') then
           begin
                 //Limpa Contas a pagar
                 DataCadastros.sqlUpdate.Close;
                 DataCadastros.SqlUpdate.sql.text :=SQLDEF('PAGAR','Delete from PAG0000 ','where PAG_NUMDOC = '''+EdtNota.Text+''' AND FOR_CODIGO = '''+EdtFor_Codigo.Text+'''','','');
                 DataCadastros.sqlUpdate.Execsql;

                 DataCadastros.sqlUpdate.Close;
                 DataCadastros.SqlUpdate.sql.text :=SQLDEF('PAGAR','Delete from PAG_PC01 ','where PAG_NUMDOC = '''+EdtNota.Text+''' AND FOR_CODIGO = '''+EdtFor_Codigo.Text+'''','','');
                 DataCadastros.sqlUpdate.Execsql;
           end;

     end;
     if DataMovimento.CdsEnf.State in [dsEdit] then
        DataMovimento.CdsEnf.CancelUpdates;

    DataMovimento.CdsEnf.Close;

    Bit_Cancelar.Caption := '&Cancelar';


    HabilitaBotoes;
    HabilitaDados;

    SqlCdsGridComOC.Close;
    SqlCdsGridSemOC.Close;
    DesabilitaDados;

    if (Length(Edt_Almox_ant.Text)>0) then
       Edt_Almox_ant.Clear;

    GrpTipoEntrada.Enabled  := true;
    wLimpar                 := false;
    wAchouNF                := false;
    Limpar;
    Limparitens;
    LayOutENF;
    CalcTotais;

end;

procedure TFormNfEntrada.Limparitens;
begin
    //Itens
    CbRef.Text           := '';
    EdDescricao.Text     := '';
    CurrSaldo.Clear;
    CurrQtdeR.Clear;
    CurrQtdeS.Clear;
    CurrPreco.Clear;
    CrCfopItem.Clear;
    EdtAlmox.Clear;
    CbAlmox.Text         := '';
    CbLoteProduto.EditValue := null;
    cxCentroCustoItem.EditValue := null;
    CurItemAliquotaICMSRapida.Clear;
    CurItemAliquotaIPIRapida.Clear;
    //ICMS
    cbbItemCST.ItemIndex := -1;
    CurItemBaseICMS.Clear;
    CurItemAliquotaICMS.Clear;
    CurItemValorICMS.Clear;
    //ICMS ST
    CurItemBaseICMSST.Clear;
    CurItemAliquotaICMSST.Clear;
    CurItemValorICMSST.Clear;
    //IPI
    cbbItemCSTIPI.ItemIndex := -1;
    CurItemBaseIPI.Clear;
    CurItemAliquotaIPI.Clear;
    CurItemValorIPI.Clear;
    //PIS
    cbbItemCSTPIS.ItemIndex := -1;
    CurItemBasePIS.Clear;
    CurItemAliquotaPIS.Clear;
    CurItemValorPIS.Clear;
    //COFINS
    cbbItemCSTCofins.ItemIndex := -1;
    CurItemBaseCofins.Clear;
    CurItemAliquotaCofins.Clear;
    CurItemValorCofins.Clear;
    //Pedido Compra
    edtItemOrdemCompra.Clear;
    edtRegistroOrdemCompraItem.Clear;
    CurItemOrdemCompraBaixada.Clear;
    //Totais Itens
    CurTotalProdutos.Clear;
    CurTotalItens.Clear;
    CurTotalBaseICMS.Clear;
    CurTotalValorICMS.Clear;
    CurTotalValorICMSST.Clear;
    CurTotalBaseICMSST.Clear;
    CurTotalBaseIPI.Clear;
    CurTotalValorIPI.Clear;
    CurTotalValorPIS.Clear;
    CurTotalValorCofins.Clear;
    edUnd.Clear;
    //campos invisíveis
    ENF_UTRIB := '';
    ENF_QTDE_ORIGINAL := 0 ;
    ENF_PRECO_ORIGINAL := 0;
    ENF_PTOTAL_ORIGINAL := 0;
    SqlCdsGridSemOC.Close

end;

procedure TFormNfEntrada.CurrQtdeREnter(Sender: tObject);
begin
    
    if not VerDados  then
      begin
         exit;
      end;
    wQtdeAtual    := 0;
    wQtdeAlmoxAnt := 0;
    if wAlterar  then
       begin
           if RadComOC.checked  then
              begin
                  if (not wAchouNF) then
                     begin
                     wQtdeAtual    := SqlCdsGridComOCOCI_QTDES.AsFloat      ;
                     wQtdeAlmoxAnt := wQtdeAtual;
                     end
                  else
                     begin
                         wQtdeAtual    := SqlCdsGridSemOCENF_QTDE.AsFloat      ;
                         wQtdeAlmoxAnt := wQtdeAtual;
                     end;
              end
           else
              begin
                  wQtdeAtual    := SqlCdsGridSemOCENF_QTDE.AsFloat      ;
                  wQtdeAlmoxAnt := wQtdeAtual;
              end;
       end;

end;

procedure TFormNfEntrada.CurrVlICmsExit(Sender: tObject);
begin
    if CurrBaseIcms.Value > 0 then
       begin
          Calcula_Vl_Icms;
          CalcTotais;
       end;
end;

procedure TFormNfEntrada.VerificaNF;
begin

      DataCadastros.sqlUpdate.close;
      if RadSemOC.checked  then
         DataCadastros.SqlUpdate.sql.text :=SQLDEF('ORDENSCOMPRA','Select O2.ENF_NOTANUMBER,O2.FOR_CODIGO FROM ENF0001 O2','Where O2.ENF_TIPO_NF_ENTRADA = ''N'' and O2.ENF_NOTANUMBER = '''+EdtNota.Text+''' and O2.FOR_CODIGO = '''+EdtFor_Codigo.Text+'''','O2.ENF_NOTANUMBER,O2.FOR_CODIGO','O2.');

      DataCadastros.sqlUpdate.Open;
      if not DataCadastros.sqlUpdate.IsEmpty then
      begin
           wAchouNF := true;
           DataMovimento.CdsEnf.Close;
           if RadSemOC.checked  then
              DataMovimento.CdsEnf.CommandText := SQLDEF('ORDENSCOMPRA','select O2.* from ENF0001 O2','where O2.ENF_TIPO_NF_ENTRADA = ''N'' and O2.FOR_CODIGO = '''+EdtFor_Codigo.Text+''' and O2.ENF_NOTANUMBER = '''+EdtNota.Text+'''','O2.FOR_CODIGO,O2.ENF_NOTANUMBER','O2.');
           DataMovimento.CdsEnf.Open;
            Bit_pagar.Enabled :=  BuscaUmDadoSqlAsString('SELECT COALESCE(OPE_SEMVLCOM,''N'') FROM OPE0000 WHERE OPE_CODIGO = '+QuotedStr(DataMovimento.CdsEnfOPE_CODIGO.AsString) +
                ConcatSe(' AND ',DBInicio.ExclusivoSql('OPERACAOFISCAL') ))<> 'S';


           if not DataMovimento.CdsEnf.IsEmpty then
           begin
                DesabilitaItem;
                HabilitaDados;
                GrpTipoEntrada.Enabled        := False;
                if RadSemOC.checked  then
                   GrpDigitaItens.Enabled := True
                else
                   GrpDigitaItens.Enabled := false;
                Preencher_Combo_OP('E');
                MostraDados;
                BuscaOperacao;

                BuscaItensNF;
                CalcTotais;

                DBGridSemOC.Visible   := True;
                DbGridComOC.Visible   := False;
           end;
           if (RadSemOC.Checked) then
              DBGridSemOC.SetFocus;
           DataCadastros.sqlUpdate.close;
      end
      else
      begin
           wAchouNF := false;
           DataMovimento.CdsEnf.Close;
           if RadSemOC.checked  then
              DataMovimento.CdsEnf.CommandText := SQLDEF('ORDENSCOMPRA','select O2.* from ENF0001 O2','where O2.ENF_TIPO_NF_ENTRADA = ''N'' and O2.FOR_CODIGO = '''+EdtFor_Codigo.Text+''' and O2.ENF_NOTANUMBER = '''+EdtNota.Text+'''','O2.FOR_CODIGO,O2.ENF_NOTANUMBER','O2.');
           DataMovimento.CdsEnf.Open;
           if DataMovimento.CdsEnf.IsEmpty then
           begin
                // cbMovimentaEstoque.Visible := True;
                cbMovimentaEstoque.Enabled:=True;
                cbMovimentaEstoque.State:=cbGrayed;
                DataMovimento.DsEnf.AutoEdit := True;
                DataMovimento.CdsEnf.Insert;
                DataMovimento.CdsEnfENF_REGISTRO.AsInteger := dbInicio.GetNextSequence('GEN_ENTRADA_NF');
                HabilitaDados;
                HabiliItemSelec;
                GrpTipoEntrada.Enabled   := False;
                if (RadSemOC.checked )  then
                   GrpDigitaItens.Enabled   := True;
                DesabilitaBotoes;
                if (RadComOC.Checked) or (RadSemOC.Checked) then
                   Carrega_Parametro_Sintegra_Padrao; //Nota Fiscal Normal
                if RadComOC.checked  then
                     GrpFornecedor.Enabled := False;
           end;
      end;
      LayOutENF;
end;

procedure TFormNfEntrada.DBeENF_ENTRADAExit(Sender: tObject);
begin
    if (ActiveControl <> nil)
    and(ActiveControl.name <> 'Bit_Cancelar')
    and(ActiveControl.name <> 'Bit_Sair') then
       begin
           if DbeENF_ENTRADA.Text = '  /  /    ' then
              begin
                  uteis.aviso('Informe a data de entrada da nota fiscal !');
                  DbeENF_ENTRADA.SetFocus;
              end
           else
              begin
                  if not TestaDataStr(DbeENF_Entrada.Text) then
                     DbeENF_Entrada.setfocus;
                  if (DbeEnf_Entrada.Date < DBeENF_Emissao.Date) then
                     begin
                         uteis.aviso('Data de Entrada menor que a Data de Emissão !');
                         DbeENF_Entrada.setfocus;
                     end;
              end;
       end;
end;

procedure TFormNfEntrada.DbeOPE_NATUREZAExit(Sender: tObject);
begin
    if (ActiveControl<> nil) and(ActiveControl.name <> 'Bit_Cancelar') and (ActiveControl.name <> 'Bit_Sair') then
    begin
           if Length(Trim(DbeOpe_Natureza.Text))>0 then
           begin
                  if (Length(Trim(DbeOpe_Natureza.Text))<4) then
                  begin
                         uteis.aviso('Natureza da operação inválida !');
                         DbeOPE_NATUREZA.SetFocus;
                  end
                  else
                  if (DbeOPE_NATUREZA.Text <> '') then
                     BuscaOperacao;
           end;
    end;
end;

procedure TFormNfEntrada.BitOrdemClick(Sender: tObject);
begin
   if (SqlCdsGridSemOC.IsEmpty) then
      ChamaPedidoCompraVincula(False)
   else
     uteis.aviso('Seleção disponível somente na inclusão da entrada de nota manual');

end;

procedure TFormNfEntrada.Bit_GravarClick(Sender: tObject);
var
  refenciaNF: boolean;
begin
  TBitBtn( sender).SetFocus;
   {se for FORNECEDOR}
   if ((Trim(EdtFor_Codigo.Text)= '')) then
   begin
         uteis.aviso('Fornecedor não informado!!');
         EdtFor_Codigo.SetFocus;
   end
   else
   if  (Curr_Valor_Produtos.Value <= 0) then
   begin
         uteis.aviso('Informe o valor líquido dos produtos!');
         Curr_Valor_Produtos.SetFocus;
   end
   else
   if  (CurrTotalNota.Value <= 0) then
   begin
         uteis.aviso('Informe o valor da nota fiscal!');
         CurrTotalNota.SetFocus;
   end
   else
   if ( (Curr_Valor_Produtos.Value <> CurTotalProdutos.Value)) then
   begin
         uteis.aviso('O valor dos produtos calculados diferente do valor informado no cabeçalho!');
         Curr_Valor_Produtos.SetFocus;
   end
   else
   if  (CurrTotalNota.Value <> NTotalGeral.Value) then
   begin
         uteis.aviso('O valor da nota fiscal calculada diferente do valor informado no cabeçalho!');
         CurrTotalNota.SetFocus;
   end
   else
   if (CurrBaseIcms.Value <> CurTotalBaseICMS.Value) then
   begin
         uteis.aviso('O valor da Base de ICMS calculada diferente do valor informado no cabeçalho!');
         CurrBaseIcms.SetFocus;
   end
   else
   if (Curr_Vl_Icms.Value <> CurTotalValorICMS.Value) then
   begin
         uteis.aviso('O valor do ICMS calculada diferente do valor informado no cabeçalho!');
         Curr_Vl_Icms.SetFocus;
   end
   else
   if ( (CurrBaseST.Value <> CurTotalBaseICMSST.Value)) then
   begin
         uteis.aviso('O valor da Base de ICMS ST calculada diferente do valor informado no cabeçalho!');
         CurrBaseST.SetFocus;
   end
   else
   if ( (CurrVlST.Value <> CurTotalValorICMSST.Value)) then
   begin
         uteis.aviso('O valor do ICMS ST calculada diferente do valor informado no cabeçalho!');
         CurrVlST.SetFocus;
   end
   else
   if ( (bCentroCustoObrigatorio) and (DbePCX_CODIGO.Text = '')) then
   begin
         uteis.aviso('Informe o Centro de Custo!');
         DbePCX_CODIGO.SetFocus;
   end
   else
   begin


         if (RadSemOC.checked )  then
            GrpDigitaItens.Enabled := True
         else
            GrpDigitaItens.Enabled := false;

         if not BuscaOperacaoNovo(iif(Copy(CbOp.Text,01,04)='',DbeOPE_NATUREZA.Text,Copy(CbOp.Text,01,04)),Copy(CbOp.Text,08,60)) then
         begin
              uteis.Aviso('Operação Fiscal não localizada ou não informada!');
              abort;
         end;

         if not SqlCdsOP.Locate('OPE_CODIGO',wCod_Oper,[])  then
            GeraException ( 'Operação Fiscal Não Localizada!');

         //showmessage( wCod_Oper+' - ' +SqlCdsOPOPE_NATUREZA.asstring+' - '+SqlCdsOPOPE_ESTOQUE.asstring );

          // aqui escolhe as notas que foram transmitidas se o cfop permitir
         refenciaNF := BuscaUmDadoSqlAsString('SELECT OPE_REF_NFE_IND FROM OPE0000 WHERE OPE_NATUREZA = ' + QuotedStr(SqlCdsGridSemOCENF_CFOP.AsString) ) = 'S';
         if refenciaNF then
         begin
           if not assigned(frmControleNFIndustrializacao) then
             frmControleNFIndustrializacao := TfrmControleNFIndustrializacao.Create(Application);
           frmControleNFIndustrializacao.ShowModal;


           if frmControleNFIndustrializacao.ModalResult = mrYes then
            begin
                ExecSQL('INSERT INTO REF_NFE_IND VALUES(' +
                  QuotedStr(edtNota.Text) + ',' +
                  QuotedStr(frmControleNFIndustrializacao.cdsqAux.FieldByName('NF_NOTANUMBER').AsString) +
                ')'
                );
            end
            else
                Abort;
         end;


         if (RadComOC.Checked) or (RadSemOC.Checked) then
         begin
               if (CurrTotalNota.Value = NTotalGeral.Value)and(VerDados ) then
               begin

                      GravaEntrada;

                      RealizaRateioRetiradaICMSCustoProd;   //rateio do custo

                      RealizaRateioCentroCusto;


                      if (DbePCX_CODIGO.Text <> '') OR (DbeCCT_CODIGO.Text <> '') then
                      begin

                          dataCadastros.sqlUpdate1.Close;
                          dataCadastros.sqlUpdate1.sql.text:= 'UPDATE PAG0000 SET CCT_CODIGO ='+QuotedStr(DbeCCT_CODIGO.Text) +', PCX_CODIGO = '+QuotedStr(DbePCX_CODIGO.Text)+' where PAG_NUMDOC = '''+EdtNota.Text+''' and FOR_CODIGO = '''+EdtFor_Codigo.Text+'''';
                          dataCadastros.sqlUpdate1.ExecSql;

                          DataCadastros.sqlUpdate2.Close;
                          DataCadastros.sqlUpdate2.sql.text := SQLDEF('PAGAR','SELECT PAG_REGISTRO FROM PAG_PC01 T1 ','where t1.PAG_NUMDOC = '''+EdtNota.Text+''' and t1.FOR_CODIGO = '''+EdtFor_Codigo.Text+'''','','');
                          DataCadastros.sqlUpdate2.Open;
                          while (not DataCadastros.sqlUpdate2.Eof) do
                          begin
                              dataCadastros.sqlUpdate1.Close;
                              dataCadastros.sqlUpdate1.sql.text:= 'UPDATE PAG_PC01 SET CCT_CODIGO ='+QuotedStr(DbeCCT_CODIGO.Text) +', PCX_CODIGO = '+QuotedStr(DbePCX_CODIGO.Text)+' WHERE PAG_REGISTRO = '+QuotedStr(DataCadastros.sqlUpdate2.FieldByName('PAG_REGISTRO').AsString);
                              dataCadastros.sqlUpdate1.ExecSql;

                              DataCadastros.sqlUpdate2.Next;
                          end;
                      end;


                      SqlCdsGridComOC.Close;
                      SqlCdsGridSemOC.Close;
                      // BitExcluir.Enabled := False;

                      if DataMovimento.CdsEnf.State in [dsBrowse] then
                         DataMovimento.CdsEnf.close;

                      wLimpar := false;
                      Limpar;
                      Limparitens;

                      HabiliItemSelec;
                      HabilitaBotoes;
                      DesabilitaDados;

                      GrpTipoEntrada.Enabled     := true;
                      LayOutENF;
               end;
         end
         else
         begin
                if (VerDados ) then
                begin

                       GravaEntrada;

                       SqlCdsGridComOC.Close;
                       SqlCdsGridSemOC.Close;
                       // BitExcluir.Enabled := False;
                      
                       if DataMovimento.CdsEnf.State in [dsBrowse] then
                          DataMovimento.CdsEnf.close;

                       wLimpar := false;
                       Limpar;
                       Limparitens;

                       HabiliItemSelec;
                       HabilitaBotoes;
                       DesabilitaDados;

                       GrpTipoEntrada.Enabled       := true;
                       LayOutENF;

                end;
            end;
      end;

end;

procedure TFormNfEntrada.GravaEntrada;
begin

      if DataMovimento.CdsEnf.State in [dsBrowse] then
         if (DataMovimento.CdsEnf.IsEmpty) then
            DataMovimento.CdsEnf.Insert
         else
            DataMovimento.CdsEnf.Edit;

      {inserir dados no arquivo ENF0001}
      DataMovimento.CdsEnfOCP_CODIGO.AsString          := '000000';
      //DataMovimento.CdsEnfOPV_CODIGO.AsInteger         := StrToInt(EdtOpv_Codigo.Text);
      if (wTipoNF = 'N') then
         DataMovimento.CdsEnfFOR_CODIGO.AsString       := EdtFor_Codigo.Text;

      //
      DataMovimento.CdsEnfPCL_CODIGO.AsString          := EdtPcl_Codigo.Text;
      DataMovimento.CdsEnfENF_NOTANUMBER.AsString      := EdtNota.Text;
      DataMovimento.CdsEnfENF_VLFRETE.AsFloat             := CurrVlFrete.Value;
      DataMovimento.CdsEnfENF_INDUSTRIALIZACAO.AsString := IIF(chkIndustrializacao.Checked,'S','N');
      DataMovimento.CdsEnfENF_FRETEPARTICIPATOT.AsString := wfrete_participatotal;
      DataMovimento.CdsEnfENF_VLFRETEPORFORA.AsFloat     := currFrete.Value;
      DataMovimento.CdsEnfENF_VLRDIFICMS.AsFloat         := currDifICMS.Value;
      DataMovimento.CdsEnfENF_VLOUTROS.AsFloat           := currOutros.Value;
      DataMovimento.CdsEnfENF_DESP_ACES.AsFloat           := CurrVlDespesas.Value;
      DataMovimento.CdsEnfENF_VLSEGURO.AsFloat            := CurrVlSeguro.Value;
      DataMovimento.CdsEnfENF_VL_DESCTO.AsFloat           := CurrVlDescto.Value;
      DataMovimento.CdsEnfENF_ALIQ_ICMS.AsFloat           := CurrVlICms.Value;
      DataMovimento.CdsEnfENF_BASE_IPI.AsFloat            := CurTotalBaseIPI.Value;
      DataMovimento.CdsEnfENF_VL_IPI.AsFloat              := CurTotalValorIPI.Value;
      DataMovimento.CdsEnfENF_VLBASESUBTRIB.AsFloat       := CurrBaseST.Value;
      DataMovimento.CdsEnfENF_VL_SUBTRIB.AsFloat          := CurrVlST.Value;
      DataMovimento.CdsEnfENF_TOT_PROD.AsFloat            := CurTotalProdutos.Value;
      if (wTipoNF = 'N') then
         DataMovimento.CdsEnfENF_TOT_NOTA.AsFloat         := NTotalGeral.Value
      else
         DataMovimento.CdsEnfENF_TOT_NOTA.AsFloat         := CurrTotalNota.Value;
      DataMovimento.CdsEnfENF_BASEICMS.AsFloat            := CurrBaseIcms.Value;
      DataMovimento.CdsEnfENF_VL_ICMS.AsFloat             := Curr_Vl_Icms.Value;
      DataMovimento.CdsEnfENF_TIPO_FRETE.AsInteger     := IIF(CbFreteT.ItemIndex = 0,1,
                                                          IIF(cbFreteT.ItemIndex = 1,2,0));
     // tipo de pagamento 0 a vista ; 1 - prazo 2 - outros 9 - sem pagamento
      case edTipoPagamento.ItemIndex  of
       0 : DataMovimento.CdsEnfENF_MODALIDADE.AsString := '0';
       1 : DataMovimento.CdsEnfENF_MODALIDADE.AsString := '1';
       2 : DataMovimento.CdsEnfENF_MODALIDADE.AsString := '2';
       3 : DataMovimento.CdsEnfENF_MODALIDADE.AsString := '3';
       4 : DataMovimento.CdsEnfENF_MODALIDADE.AsString := '4';
       5 : DataMovimento.CdsEnfENF_MODALIDADE.AsString := '9';
      end;



      if (wCod_Oper <> '') then
         DataMovimento.CdsEnfOPE_CODIGO.AsString       := wCod_Oper;
      DataMovimento.CdsEnfENF_TIPO_NF_ENTRADA.AsString := wTipoNF;
      DataMovimento.CdsEnfEMP_CODIGO.AsString          := dbInicio.Empresa.EMP_CODIGO;
      if vMovimentaEstoque <> '' then
           DataMovimento.CdsEnfENF_ATUALIZA_ESTOQUE.AsString :=  vMovimentaEstoque;

      DataMovimento.CdsEnf.ApplyUpdates(0);

      RealizaAtualizacaoCustosEntrada;

      DataMovimento.CdsEnf.Refresh;

end;

procedure TFormNfEntrada.EdtNotaKeyPress(Sender: tObject; var Key: Char);
begin
    if not ((key in ['0'..'9',#8]) OR( Key= '-'))  then
       begin
          //beep;
          Key := #0;
       end;
end;

procedure TFormNfEntrada.EdtNotaExit(Sender: tObject);
begin
    if (ActiveControl <> nil)
    and (ActiveControl.name <> 'Bit_Cancelar')
    and (ActiveControl.name <> 'BitLocalizarNota')
    and (ActiveControl.name <> 'btnImportarXml')
    and (ActiveControl.name <> 'Bit_Sair') then
       begin
        if EdtNota.Text = '' then
           begin
               uteis.aviso('Informe o Nº da nota fiscal !');
               EdtNota.SetFocus;
           end
        else
           begin
               EdtNota.Text := PreenchezeroEsquerda(EdtNota.Text,EdtNota.MaxLength);
           end;

        if RadComOC.Checked then
           begin
           VerificaNF;
           Busca_conta_finan;

           DBeENF_SERIE.SetFocus;
           end
        else
         if RadSemOC.Checked then
              EdtFor_Codigo.SetFocus



       end;
end;



procedure TFormNfEntrada.DBeENF_ENTRADAClick(Sender: tObject);
begin
   if (DBeENF_ENTRADA.Date = 0) then
      DBeENF_ENTRADA.Date := DbeENF_EMISSAO.Date;

end;

procedure TFormNfEntrada.DBGridSemOCKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (VerDados ) then
       exit;
    if key = #13 then
       begin
           if DataMovimento.CdsEnf.State in [dsBrowse,dsEdit] then
              begin
                  wAlterar := true;
                  ItemSelecionado;
              end;
           Key := #0;
       end;
end;

procedure TFormNfEntrada.dblcInscricaoEstadualClick(Sender: TObject);
begin
  inherited;
  if (SqlCdsAlmox.Locate('EMI_CODIGO',dblcInscricaoEstadual.KeyValue,[]) ) then
  begin
     CbAlmox.Text  := SqlCdsAlmoxAMX_DESCRI.AsString;
     EdtAlmox.Text := SqlCdsAlmoxAMX_CODIGO.AsString;
  end
  else
  begin
     uteis.aviso('Inscrição Estadual não encontrada em nenhum almoxarifado.');
     CbAlmox.Text  := '';
     EdtAlmox.Text := '';
  end;
end;

procedure TFormNfEntrada.NTotalGeralChange(Sender: tObject);
begin
    if DataMovimento.CdsEnf.State in [dsBrowse] then
       DataMovimento.CdsEnf.Edit;
end;

procedure TFormNfEntrada.PesqFornecedorSelect(Sender: TObject);
begin
  inherited;
  if PesqFornecedor.IdRetorno <> '' then
  Begin
    EdtFor_Codigo.Text := PesqFornecedor.IdRetorno;
    lcnpj.Caption := 'CNPJ:'+ MascaraCNPJ_CPF(PesqFornecedor.CDS.FieldByName('for_cgc').asstring);
    if (ActiveControl <> nil)
    and (ActiveControl.name <> 'Bit_Cancelar')
    and (ActiveControl.name <> 'Bit_Sair')
    and (ActiveControl.name <> 'BitLocalizarNota')
    and (ActiveControl.name <> 'btnImportarXml')
    and (ActiveControl.name <> 'EdtFor_Codigo') then
       begin
          IncluirNF;
          Busca_conta_finan;
          Busca_CentroCusto;


       end;

  End
  else
  begin
   PesqFornecedor.Clear;
   EdtFor_Codigo.Clear;
  end;
end;

procedure TFormNfEntrada.EdtAlmoxExit(Sender: tObject);
begin
    EdtAlmox.Text := StrZero(EdtAlmox.Text,EdtAlmox.MaxLength);
    if SqlCdsAlmox.Locate('AMX_CODIGO',EdtAlmox.Text,[])  then
       begin
           CbAlmox.Text := SqlCdsAlmoxAMX_DESCRI.AsString;
       end
    else
       begin
           EdtAlmox.Text := '';
       end;
end;

procedure TFormNfEntrada.EdtAlmoxClick(Sender: tObject);
begin
    if CbRef.Text = '' then
       begin
           uteis.aviso('Informe a Referência !');
           CbRef.SetFocus;
       end
end;

procedure TFormNfEntrada.EdtAlmoxKeyPress(Sender: tObject; var Key: Char);
begin
    If not( key in['0'..'9',#8] ) then
       begin
           //beep;
           key:=#0;
       end;
end;

procedure TFormNfEntrada.IncluirNF;
begin
    wLancadoPagar := false;
    if RadSemOC.checked  then
       begin
           if  PesqFornecedor.idRetorno <> '' then
           begin
             VerificaNF;
             Preencher_Combo_OP('E');
           end
       end;


end;

procedure TFormNfEntrada.CurrVlDespesasExit(Sender: tObject);
begin
    if CurrVlDespesas.Value > 0 then
       CalcTotais;
end;

procedure TFormNfEntrada.CurrVlSeguroExit(Sender: tObject);
begin
    if CurrVlSeguro.Value > 0 then
       CalcTotais;
end;

procedure TFormNfEntrada.CurrVlDesctoExit(Sender: tObject);
begin
    if CurrVlDescto.Value > 0 then
       CalcTotais;
end;

procedure TFormNfEntrada.excluirItensNF;
var bIndustrRetorno : boolean;
    ope_codigo : string;
begin
     bIndustrRetorno := False;

     if DataMovimento.CdsEnf.State in [dsInsert] then
     begin

      if SqlCdsGridComOCOCI_CFOP.AsString <> '' then
      begin
        ope_codigo := RetornaRegistroCFOP(SqlCdsGridComOCOCI_CFOP.AsString);
        bIndustrRetorno :=  DBInicio.BuscaUmDadoSqlAsString('SELECT OPE_RETORNO_INDUST  FROM OPE0000  '+
                                         ' WHERE OPE_CODIGO = '+QuotedStr(ope_codigo)) = 'S' ;
      end;

           // com ordem compra
           if RadComOC.checked  then
           begin
                if not SqlCdsGridComOC.IsEmpty then
                begin

                     SqlCdsGridComOC.First;
                     while not SqlCdsGridComOC.Eof do
                     begin
                          if SqlCdsGridComOCENTRADA_CC.AsFloat       > 0 then
                          begin
                              DataCadastros.sqlUpdate.Close;
                              FormatSettings.DecimalSeparator  := '.';
                              DataCadastros.SqlUpdate.sql.text :=SqlDef('PRODUTOS','Update PRD0000 Set PRD_ENTRADA = (PRD_ENTRADA - '+FloatToStr(SqlCdsGridComOCENTRADA_CC.AsFloat      )+'),PRD_PENDENTE = (COALESCE(PRD_PENDENTE,0) + '+FloatToStr(SqlCdsGridComOCENTRADA_CC.AsFloat      )+')',' where PRD_REFER = '''+SqlCdsGridComOCPRD_REFER.AsString+'''','','');
                              DataCadastros.sqlUpdate.Execsql;
                              FormatSettings.DecimalSeparator  := ',';
                              Atualiza_Dados_Utl_Compra(SqlCdsGridComOCPRD_REFER.AsString,'E');

                          end;
                          //excluir o Item da Tabela PRD_ENSA

                          DataCadastros.sqlUpdate.Close;
                          DataCadastros.SqlUpdate.sql.text :=SqlDef('PRODUTOS','Delete from PRD_ENSA ','where PES_NUMDOC = '''+EdtNota.Text+''' AND PRD_REFER = '''+SqlCdsGridComOCPRD_REFER.AsString+''' and FOR_CODIGO = '''+EdtFor_Codigo.Text+'''','','');
                          DataCadastros.sqlUpdate.Execsql;
                          if (SqlCdsGridComOCENF_REGISTRO.AsString <> '') then
                          begin
                               if (vMovimentaEstoque = 'S') then
                               begin
                                    KardexLancamento(SqlCdsGridComOCENF_REGISTRO.AsString,
                                                    'ENF',
                                                    SqlCdsGridcOMOCAMX_CODIGO.AsString,
                                                    '',
                                                    SqlCdsGridComOCPRD_CODIGO.AsString,
                                                    '',//grade
                                                    '',
                                                    iif(bIndustrRetorno,'E','S'),
                                                    CbLoteProduto.text,
                                                    SqlCdsGridComOCPRDL_REGISTRO.AsString,
                                                    'EXCLUSÃO ENTRADA DE ITEM NOTA FISCAL',
                                                    Now,
                                                    SqlCdsGridComOCOCI_QTDER.AsFloat,
                                                    EdtNOTA.Text,
                                                    StrZero(EdtFor_Codigo.Text,EdtFor_Codigo.MaxLength)+'-'+PesqFornecedor.CDS.FieldByName('FOR_RAZAO').AsString,
                                                    SqlCdsGridComOCOCI_PRECO.AsFloat,'','','',SqlCdsGridComOCPRD_REFER.AsString);
                               end;
                          end;
                          SqlCdsGridComOC.Next;
                     end;
                end;
           end
           else
           begin
                //Sem Ordem de Compra
                if not SqlCdsGridSemOC.IsEmpty then
                begin
                     SqlCdsGridSemOC.First;
                     while not SqlCdsGridSemOC.Eof do
                     begin
                          //Libera Ordem de compra Vinculada caso exista
                          //Estorna Baixa do Pedido de Compra se Houver
                          if (SqlCdsGridSemOCOCI_REGISTRO.AsString <> '0')and(SqlCdsGridSemOCOCI_REGISTRO.AsString <> '') then
                          begin
                               DataCadastros.sqlUpdate1.Close;
                               DataCadastros.sqlUpdate1.sql.text:= 'UPDATE OCP_IT01 SET OCI_QTDER = OCI_QTDER - '+ValorAmericano(SqlCdsGridSemOCENF_QTDE_PEDIDO_COMPRA.AsString)+' WHERE OCI_REGISTRO = '+SqlCdsGridSemOCOCI_REGISTRO.AsString;
                               DataCadastros.sqlUpdate1.ExecSql;
                               AtualizaSituacaoOC(SqlCdsGridSemOCOCI_REGISTRO.AsString);
                          end;
                          if SqlCdsGridSemOCENF_QTDE.AsFloat > 0 then
                          begin
                               DataCadastros.sqlUpdate.Close;
                               FormatSettings.DecimalSeparator  := '.';
                               DataCadastros.SqlUpdate.sql.text :=SqlDef('PRODUTOS','Update PRD0000 Set PRD_ENTRADA = (PRD_ENTRADA - '+FloatToStr(SqlCdsGridSemOCENF_QTDE.AsFloat      )+')',' where PRD_REFER = '''+SqlCdsGridSemOCPRD_REFER.AsString+'''','','');
                               DataCadastros.sqlUpdate.Execsql;
                               FormatSettings.DecimalSeparator  := ',';
                          end;
                          DataCadastros.sqlUpdate.Close;
                          DataCadastros.SqlUpdate.sql.text :=SqlDef('PRODUTOS','Delete from PRD_ENSA ','where PES_NUMDOC = '''+EdtNota.Text+''' AND PRD_REFER = '''+SqlCdsGridSemOCPRD_REFER.AsString+''' and FOR_CODIGO = '''+EdtFor_Codigo.Text+'''','','');
                          DataCadastros.sqlUpdate.Execsql;

                          if (vMovimentaEstoque = 'S') then
                          begin
                               KardexLancamento( SqlCdsGridSemOCENF_REGISTRO.AsString,
                                                 'ENF',
                                                 SqlCdsGridSemOCAMX_CODIGO.AsString,
                                                 '',
                                                 SqlCdsGridSemOCPRD_CODIGO.AsString,
                                                 '',//grade
                                                 '',
                                                 iif(bIndustrRetorno,'E','S'),
                                                CbLoteProduto.text,
                                                 IIF (CbLoteProduto.EditValue = null,'',CbLoteProduto.EditValue),
                                                 'EXCLUSÃO ENTRADA DE ITEM NOTA FISCAL',
                                                 Now,
                                                 SqlCdsGridSemOCENF_QTDE.AsFloat,
                                                 EdtNOTA.Text,
                                                 StrZero(EdtFor_Codigo.Text,EdtFor_Codigo.MaxLength)+'-'+PesqFornecedor.CDS.FieldByName('FOR_RAZAO').AsString,
                                                 SqlCdsGridSemOCENF_PRECO.AsFloat,'','','',SqlCdsGridSemOCPRD_REFER.AsString);
                          end;
                          SqlCdsGridSemOC.Next;
                     end;
                end;
           end;
     end;
     // Excluir tanto a entrada pela ordem ou sem ordem de compra
     DataCadastros.sqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.text :=SQLDEF('ORDENSCOMPRA','Delete from ENF_IT01 ','where ENF_IT_NOTANUMBER = '''+EdtNota.Text+'''and FOR_CODIGO = '''+EdtFor_Codigo.Text+'''','','');
     DataCadastros.sqlUpdate.Execsql;
end;

procedure TFormNfEntrada.EdtDtEmissExit(Sender: tObject);
begin
    if (ActiveControl <> nil)
    and(ActiveControl.name <> 'Bit_Cancelar')
    and(ActiveControl.name <> 'Bit_Sair') then
       begin
           if DbeENF_EMISSAO.Text = '  /  /    ' then
              begin
                  uteis.aviso('Informe a data de emissão da nota fiscal !');
                  DbeENF_EMISSAO.SetFocus;
              end
           else
              begin
                  if not TestaDataStr(DbeENF_Emissao.Text) then
                     DbeENF_Emissao.setfocus;
              end;
       end;
end;

procedure TFormNfEntrada.Alterar1Click(Sender: tObject);
begin
    wAlterar := True;
    ItemSelecionado;
end;

procedure TFormNfEntrada.Excluir1Click(Sender: tObject);
 var
  bIndustrRetorno, Sobra  : boolean;

  ope_codigo, NaturezaEntrada, AMXSobra :string;
begin


    if (RadSemOC.checked ) or (wAchouNF ) then
       begin

           {Localiza o item no pedido de compra para saber qtde solicitada e carrega na variavel wQtdeS}
           if RadComOC.checked  then
              begin
                  if SqlCdsGridComOc.Locate('PRD_REFER',SqlCdsGridSemOCPRD_REFER.AsString,[])  then
                     begin
                         wQtdeS := SqlCdsGridComOCOCI_QTDES.AsFloat      ;
                         wRefer := SqlCdsGridSemOCPRD_REFER.AsString;
                     end;
              end;
           bIndustrRetorno := False;

            if SqlCdsGridSemOCENF_CFOP.AsString <> '' then
            begin
              ope_codigo := RetornaRegistroCFOP(SqlCdsGridSemOCENF_CFOP.AsString);
              bIndustrRetorno :=  DBInicio.BuscaUmDadoSqlAsString('SELECT OPE_RETORNO_INDUST  FROM OPE0000  '+
                                               ' WHERE OPE_CODIGO = '+QuotedStr(ope_codigo)) = 'S' ;
            end;

           if (SqlCdsGridSemOCENF_ATUALIZA_ESTOQUE.AsString = 'S') then
              begin
                 KardexLancamento(SqlCdsGridSemOCENF_REGISTRO.AsString,
                                  'ENF',
                                  SqlCdsGridSemOCAMX_CODIGO.AsString,
                                  '',
                                  SqlCdsGridSemOCPRD_CODIGO.AsString,
                                  '',//grade
                                  '',
                                  iif(bIndustrRetorno,'E','S'),
                                  CbLoteProduto.text,
                                  IIF (CbLoteProduto.EditValue = null,'',CbLoteProduto.EditValue),
                                  'EXCLUSÃO ENTRADA DE ITEM NOTA FISCAL',
                                  Now,
                                  SqlCdsGridSemOCENF_QTDE.AsFloat,
                                  EdtNOTA.Text,
                                  StrZero(EdtFor_Codigo.Text,EdtFor_Codigo.MaxLength)+'-'+PesqFornecedor.CDS.FieldByName('FOR_RAZAO').AsString,
                                  SqlCdsGridSemOCENF_PRECO.AsFloat,'','','',SqlCdsGridSemOCPRD_REFER.AsString);







                     NaturezaEntrada :=  DBInicio.BuscaUmDadoSqlAsString
                                   ('SELECT OPE_NATUREZA_ENTRADA  FROM OPE0000  '+
                                    ' WHERE OPE_CODIGO = '+QuotedStr(ope_codigo))  ;
                     Sobra := DBInicio.BuscaUmDadoSqlAsString('SELECT FIRST 1 OPE_RETORNO_INDUST_SOBRA FROM OPE0000  '+
                                    ' WHERE OPE_NATUREZA = '+ QuotedStr(NaturezaEntrada)) = 'S' ;
                     if Sobra then
                     begin

                       AMXSobra :=  BuscaUmDadoSqlAsString('SELECT AMX_CODIGO ' +
                                                            ' FROM ALMOX0000 ' +
                                                            ' WHERE AMX_ATIVO = ''S'' '+
                                                            ' AND AMX_CNPJ_PART = '+QuotedStr(RetirarMascaraCNPJ_INSC( DBInicio.Empresa.CNPJ_CNPF  )));

                       KardexLancamento(SqlCdsGridSemOCENF_REGISTRO.AsString,
                                  'ENF',
                                  AMXSobra,
                                  '',
                                  SqlCdsGridSemOCPRD_CODIGO.AsString,
                                  '',//grade
                                  '',
                                  'S',
                                  CbLoteProduto.text,
                                  IIF (CbLoteProduto.EditValue = null,'',CbLoteProduto.EditValue),
                                  'EXCLUSÃO ENTRADA DE ITEM NOTA FISCAL - Sobra',
                                  Now,
                                  SqlCdsGridSemOCENF_QTDE.AsFloat,
                                  EdtNOTA.Text,
                                  StrZero(EdtFor_Codigo.Text,EdtFor_Codigo.MaxLength)+'-'+PesqFornecedor.CDS.FieldByName('FOR_RAZAO').AsString,
                                  SqlCdsGridSemOCENF_PRECO.AsFloat,'','','',SqlCdsGridSemOCPRD_REFER.AsString);

                     end;






              end;
           {Estorna da tabela PRD0000 nos campos ESTOQUE-ENTRADA}
           try
             DataCadastros.sqlUpdate.Close;
             if SqlCdsGridSemOCENF_QTDE_PEDIDO_COMPRA.asfloat >0   then
                DataCadastros.SqlUpdate.sql.text :=SqlDef('PRODUTOS','Update PRD0000 Set PRD_ENTRADA = (PRD_ENTRADA - '+ValorAmericano(SqlCdsGridSemOCENF_UNIDADE_TRABALHO.AsString)+'),PRD_PENDENTE = (COALESCE(PRD_PENDENTE,0) +'+ValorAmericano(SqlCdsGridSemOCENF_UNIDADE_TRABALHO.AsString)+')',' where PRD_REFER = '''+SqlCdsGridSemOCPRD_REFER.AsString+'''','','')
             else
                DataCadastros.SqlUpdate.sql.text :=SqlDef('PRODUTOS','Update PRD0000 Set PRD_ENTRADA = (PRD_ENTRADA - '+ValorAmericano(SqlCdsGridSemOCENF_UNIDADE_TRABALHO.AsString)+')',' where PRD_REFER = '''+SqlCdsGridSemOCPRD_REFER.AsString+'''','','');
             DataCadastros.sqlUpdate.Execsql;
             //
             Atualiza_Dados_Utl_Compra(SqlCdsGridSemOCPRD_REFER.AsString,'E');
             //
           except on E:EDataBaseError do
              uteis.erro  (pchar('Erro ao atualizar a tabela PRD0000 !'+E.MESSAGE));
           end;
           {Diminiu a qtde excluido no item da nota de entrada}
           try
             wSql1      := 'Update PRD_ENSA SET PES_QTDE = (PES_QTDE - '+ValorAmericano(SqlCdsGridSemOCENF_UNIDADE_TRABALHO.AsString)+')';
             wSeleciona := 'where PES_NUMDOC = '''+SqlCdsGridSemOCENF_IT_NOTANUMBER.AsString+''' AND FOR_CODIGO = '''+SqlCdsGridSemOCFOR_CODIGO.AsString+''' AND PRD_REFER = '''+SqlCdsGridSemOCPRD_REFER.AsString+'''';
             //
             DataCadastros.sqlUpdate.Close;
             DataCadastros.SqlUpdate.sql.text :=SqlDef('PRODUTOS',wSql1,wSeleciona,'','');
             DataCadastros.sqlUpdate.Execsql;
             {Verifica se o Item da nota no Kardex esta com a qtde Zerada}
             wSql1      := 'Select PES_QTDE from PRD_ENSA ';
             wSeleciona := 'where PES_NUMDOC = '''+SqlCdsGridSemOCENF_IT_NOTANUMBER.AsString+''' AND FOR_CODIGO = '''+SqlCdsGridSemOCFOR_CODIGO.AsString+''' AND PRD_REFER = '''+SqlCdsGridSemOCPRD_REFER.AsString+'''';
             DataCadastros.sqlUpdate.Close;
             DataCadastros.SqlUpdate.sql.text :=SqlDef('PRODUTOS',wSql1,wSeleciona,'','');
             DataCadastros.sqlUpdate.Open;
             if (DataCadastros.sqlUpdate.FieldByName('PES_QTDE').AsFloat       <=0) then
                begin
                   {Excluir o Item da Tabela PRD_ENSA, Se a quantidade estive <=0}
                   try
                     DataCadastros.sqlUpdate.Close;
                     DataCadastros.SqlUpdate.sql.text :=SqlDef('PRODUTOS','Delete from PRD_ENSA ','where PES_NUMDOC = '''+EdtNota.Text+''' AND PRD_REFER = '''+SqlCdsGridSemOCPRD_REFER.AsString+''' AND FOR_CODIGO = '''+SqlCdsGridSemOCFOR_CODIGO.AsString+'''','','');
                     DataCadastros.sqlUpdate.Execsql;

                   except on E:EdataBaseError do
                      uteis.erro  (pchar('Erro ao excluir o item da tabela PRD_ENSA !'+E.message));
                   end;
                end;
           except
             on E:EDataBaseError do
                begin
                   uteis.erro  (pchar('Erro ao alterar o item da tabela PRD_ENSA !'+#13#10+
                              'Mensagem erro: '+E.message));
                end;
            end;

           //Estorna Baixa do Pedido de Compra se Houver
           if (SqlCdsGridSemOCOCI_REGISTRO.AsString <> '0')and(SqlCdsGridSemOCOCI_REGISTRO.AsString <> '') then
              begin
                 DataCadastros.sqlUpdate1.Close;
                 DataCadastros.sqlUpdate1.sql.text:= 'UPDATE OCP_IT01 SET OCI_QTDER = OCI_QTDER - '+ValorAmericano(SqlCdsGridSemOCENF_QTDE_PEDIDO_COMPRA.AsString)+' WHERE OCI_REGISTRO = '+SqlCdsGridSemOCOCI_REGISTRO.AsString;
                 DataCadastros.sqlUpdate1.ExecSql;
                 AtualizaSituacaoOC(SqlCdsGridSemOCOCI_REGISTRO.AsString);
              end;
           {Excluir o Item da Nota de Entrada}
           try
             DataCadastros.sqlUpdate.Close;
             DataCadastros.SqlUpdate.sql.text :=SQLDEF('PAGAR','Delete from ENF_IT01 ','where ENF_REGISTRO = '''+SqlCdsGridSemOCENF_REGISTRO.AsString+'''','','');
             DataCadastros.sqlUpdate.Execsql;
             //
             CalcTotais;
             {Verifica se tem outros itens da nota fiscal, se nao encontrar deleta o cabecalho da nota fiscal}
             DataCadastros.sqlUpdate.close;
             DataCadastros.SqlUpdate.sql.text :=SQLDEF('ORDENSCOMPRA','Select O2.OCP_CODIGO,O2.ENF_IT_NOTANUMBER,O2.FOR_CODIGO FROM ENF_IT01 O2','Where O2.ENF_IT_NOTANUMBER = '''+EdtNota.Text+''' AND O2.FOR_CODIGO = '''+EdtFor_Codigo.Text+'''','O2.ENF_IT_NOTANUMBER,O2.OCP_CODIGO,O2.FOR_CODIGO','O2.');
             DataCadastros.sqlUpdate.Open;
             if (DataCadastros.sqlUpdate.IsEmpty ) then
                begin
                    DataCadastros.sqlUpdate.Close;
                    DataCadastros.SqlUpdate.sql.text :=SQLDEF('PAGAR','Delete from ENF0001 ','where ENF_NOTANUMBER = '''+EdtNota.Text+''' and cast( FOR_CODIGO as integer) = '+EdtFor_Codigo.Text+'','','');
                    DataCadastros.sqlUpdate.Execsql;
                    //Limpa Contas a pagar
                    DataCadastros.sqlUpdate.Close;
                    DataCadastros.SqlUpdate.sql.text :=SQLDEF('PAGAR','Delete from PAG0000 ','where PAG_NUMDOC = '''+EdtNota.Text+''' AND FOR_CODIGO = '''+EdtFor_Codigo.Text+'''','','');
                    DataCadastros.sqlUpdate.Execsql;

                    DataCadastros.sqlUpdate.Close;
                    DataCadastros.SqlUpdate.sql.text :=SQLDEF('PAGAR','Delete from PAG_PC01 ','where PAG_NUMDOC = '''+EdtNota.Text+''' AND FOR_CODIGO = '''+EdtFor_Codigo.Text+'''','','');
                    DataCadastros.sqlUpdate.Execsql;

                    SqlCdsgridComOC.Close;
                    SqlCdsGridSemOC.Close;
                    DataMovimento.CdsEnf.Close;
                    wLimpar               := false;
                    Limpar;
                    Limparitens;
                    HabilitaBotoes;
                    DesabilitaDados;
                    LayOutENF;
                    GrpTipoEntrada.Enabled        := true;
                    wAlterar              := false;
                    wAchouNF              := false;

                    //EdtOrdCompra.SetFocus;
                end
             else
                begin
                    if (not SqlCdsGridSemOC.IsEmpty) then
                     SqlCdsGridSemOC.Refresh;
                    DBGridSemOC.SetFocus;
                end;
             CalcTotais;
           except on E:EDataBaseError do
              uteis.erro  (pchar('Erro ao excluir o item da entrada da nota fiscal !'+e.message));
           end;
       end;
end;

procedure TFormNfEntrada.DbGridComOCdblClick(Sender: tObject);
begin
    Seleciona_Item_Nota;
end;

procedure TFormNfEntrada.CurrPrecoExit(Sender: tObject);
begin
    
    if (ActiveControl <> nil)
    and(ActiveControl.Name <> 'BitCancelItem')
    and(ActiveControl.Name <> 'DbGridSemOC')
    and(ActiveControl.Name <> 'DbGridComOC')
    and(ActiveControl.Name <> 'CbRef')
    and(ActiveControl.Name <> 'CurrQtdeR') then
       begin
           if CurrPreco.Value = 0 then
              begin
                  uteis.aviso('Informe o preço !');
                  CurrPreco.SetFocus;
              end;
           // desliga p nao focar e perder os dados
           GrpNota.Enabled := False;
       end;
end;

procedure TFormNfEntrada.CurrQtdeRExit(Sender: tObject);
begin
    if CbRef.Text = '' then
       exit;

    if (ActiveControl.Name <> 'BitCancelItem')
    and(ActiveControl.Name <> 'DbGridSemOC')
    and(ActiveControl.Name <> 'DbGridComOC')
    and(ActiveControl.Name <> 'CbRef') then
       begin
          if CurrQtdeR.Value = 0 then
             begin
                 uteis.aviso('Informe a quantidade recebida !');
                 CurrQtdeR.SetFocus;
             end;
       end;
end;

procedure TFormNfEntrada.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  ChamaPedidoCompraVincula(false);
end;

procedure TFormNfEntrada.SpPesquisaClick(Sender: tObject);
begin
     if VerDados then
     begin

          FormProdutoGrid := TFormProdutoGrid.Create(Application);
          try
             FormProdutoGrid.Tag:=1;
             FormProdutoGrid.SoAtivos:=True;
             FormProdutoGrid.ShowModal;
             if FormProdutoGrid.ModalResult=mrOk then
             begin
                  CbRef.Text := FormProdutoGrid.ReferRetorno;
                  CbRef.SetFocus;
             end;
          finally
             FreeAndNil(FormProdutoGrid);

             CbRef.SetFocus;
          end;
     end;
end;

procedure TFormNfEntrada.CurrTotalNotaExit(Sender: tObject);
begin
    if (ActiveControl <> nil)
    and(ActiveControl.Name <> 'Curr_Vl_Icms')
    and(ActiveControl.Name <> 'CurrVlICms')
    and(ActiveControl.Name <> 'CurrBaseIcms')
    and(ActiveControl.Name <> 'CurrVlDescto')
    and(ActiveControl.Name <> 'CurrVlSeguro')
    and(ActiveControl.Name <> 'CurrVlDespesas')
    and(ActiveControl.Name <> 'CurrVlFrete')
    and(ActiveControl.Name <> 'CbFreteT')
    and(ActiveControl.Name <> 'DBeENF_ENTRADA')
    and(ActiveControl.Name <> 'DbeENF_EMISSAO')
    and(ActiveControl.Name <> 'CbOP')
    and(ActiveControl.Name <> 'DbeOPE_NATUREZA')
    and(ActiveControl.Name <> 'DBeENF_SERIE')
    and(ActiveControl.Name <> 'EDTIPOPAGAMENTO') then
       begin
           //libera digitação dos itens
          if (Curr_Valor_Produtos.Value > 0) and (CurrTotalNota.Value > 0) then
             GrpDigitaItens.Enabled := True
          else
             begin
             uteis.aviso('É preciso digitar o Total do Produtos e Total da Nota para dar continuidade');
             Curr_Valor_Produtos.SetFocus;
             exit;
             end;
           if RadComOC.checked  then
           //   begin
           //       if (wAchouNF = false) then
           //          DbGridComOC.SetFocus
           //       else
           //          DBGridSemOC.SetFocus;
           //   end
           //else
              begin
                  if (RadSemOC.Checked) then
                     begin
                         if DataMovimento.CdsEnf.State in [dsBrowse,dsEdit] then
                            DBGridSemOc.SetFocus
                         else
                            CbRef.SetFocus;
                     end;
              end;
       end;

end;

procedure TFormNfEntrada.BitConfirmarClick(Sender: tObject);
begin
    try
      BitConfirmar.Enabled := False;
      BitCancelItem.Enabled := False;

      if VerDados  then
      begin
             if cbMovimentaEstoque.State=cbGrayed then
             begin
                  GeraException( 'A Caixa de Seleção MOVIMENTA ESTOQUE precisa receber uma ação!'+#13+
                                 'Desmarcada - Não movimenta estoque.'+#13+
                                 'Marcada - Movimenta Estoque' );

             end
             Else
             if (CbRef.Text = '') then
             begin
                    uteis.aviso('Informe a Referência do Produto !');
                    CbRef.SetFocus;
             end
             else
             if (CrCfopItem.AsInteger = 0) then
             begin
               CrCfopItem.SetFocus;
               GeraException('Informe a CFOP do ítem!');

             end
             else
             if not SqlCdsOP.Locate('OPE_NATUREZA',CrCfopItem.Text,[loPartialKey]) then
             begin
               CrCfopItem.SetFocus;
               GeraException('Operação fiscal do item inexistente ou incorreta !');
             end
             else
             if cbMovimentaEstoque.Checked and  (ProdutoGerenciaLote(CbRef.Text) and (CbLoteProduto.EditValue = null)) then
             begin
                CbLoteProduto.SetFocus;
                GeraException('Este produto é gerenciado por lote, informe o lote !');
             end
             else
             if EdtAlmox.Text = '' then
             begin
               EdtAlmox.SetFocus;
               GeraException('Informe o almoxarifado !');
             end ;
             if CbRef.Text <> '' then
             begin
                    //AlteraLoteProduto ;
                    DBGridSemOC.Enabled := True;
                    if (wAlterar ) then
                    begin
                          if (RadComOC.Checked) then
                          begin
                                if (DBGridSemOC.Visible) then
                                begin
                                      FazerAlteracao(EdtNota.Text,
                                                     '000000',
                                                     EdtFor_Codigo.Text,
                                                     SqlCdsGridSemOCPRD_REFER.AsString,
                                                     SqlCdsGridSemOCENF_QTDE.AsString,
                                                     SqlCdsGridSemOCREPETICAO_REFER.AsInteger,
                                                     SqlCdsGridSemOCENF_REGISTRO.AsInteger
                                                     );
                                      if (not SqlCdsGridSemOC.IsEmpty) then
                                         SqlCdsGridSemOC.Refresh;
                                end;
                          end;
                          if (RadSemOC.Checked)  then
                          begin
                                FazerAlteracao(EdtNota.Text,
                                               '000000',
                                               EdtFor_Codigo.Text,
                                               SqlCdsGridSemOCPRD_REFER.AsString,
                                               SqlCdsGridSemOCENF_QTDE.AsString,
                                               SqlCdsGridSemOCREPETICAO_REFER.AsInteger,
                                               SqlCdsGridSemOCENF_REGISTRO.AsInteger);
                                if (not SqlCdsGridSemOC.IsEmpty) then
                                   SqlCdsGridSemOC.Refresh;
                          end;
                    end;
                    //
                    try
                       DataCadastros.sqlUpdate.close;
                       DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS','SELECT * FROM FOR_PROD','where FOR_CODIGO = '''+EdtFor_codigo.Text+''' AND PRD_REFER = '''+CbRef.Text+'''','FOR_CODIGO,PRD_REFER','');
                       DataCadastros.sqlUpdate.Open;
                       if DataCadastros.sqlUpdate.IsEmpty then
                       begin
                              try
                                DataCadastros.sqlUpdate.close;
                                DataCadastros.SqlUpdate.sql.text :='Insert into FOR_PROD (FOR_CODIGO,PRD_REFER,EMP_CODIGO) Values ('''+EdtFor_codigo.Text+''','''+CbRef.Text+''','''+dbInicio.Empresa.EMP_CODIGO+''')';
                                DataCadastros.sqlUpdate.Execsql;
                              except on E:EDataBaseError do
                                 uteis.erro  (pchar('Erro ao Inserir DADOS na tabela FOR_PROD !'+E.MESSAGE));
                              end;
                       end;
                    except on E:EDataBaseError do
                        uteis.erro  (pchar('Error ao abrir a Tabela FOR_PROD !'+E.MESSAGE));
                    end;
                    //
                    GravarItens;
                    //
                    if (Length(Edt_Almox_ant.Text)>0) then
                       Edt_Almox_ant.Clear;

                    CalcTotais;
                    Panel1.Enabled        := true;
                    DBGridSemOC.Enabled   := True;
                    BitCancelItem.Enabled := false;
                    BitConfirmar.Enabled  := false;
             end;
             //
            HabiliItemSelec;
            CbRef.Enabled := True;
            CbRef.SetFocus;
            Bit_Estoque.Enabled := True;
            BuscaItensNF;
      end;
    except
      on E:Exception do
      begin
        showmessage(e.message);
        BitConfirmar.Enabled := True;
        BitCancelItem.Enabled := True
      end;
    end;


end;


procedure TFormNfEntrada.BuscaItensNF;
Var
  wSeleciona, wOrdem : String;
begin
    if (DataMovimento.CdsEnfOCP_CODIGO.AsString <>'000000') then
       begin
           wSeleciona := 'where  E1.FOR_CODIGO = '''+EdtFor_Codigo.Text+''' and E1.ENF_IT_NOTANUMBER = '''+EdtNota.Text+'''';
           wOrdem     := 'E1.PRD_DESCRI';
       end
    else
       begin
           wSeleciona := 'where E1.ENF_IT_NOTANUMBER = '''+EdtNota.Text+''' and E1.FOR_CODIGO = '''+EdtFor_Codigo.Text+'''';
           wOrdem     := 'E1.ENF_REGISTRO';
       end;

    try
      SqlCdsGridSemOC.Close;
      SqlCdsGridSemOC.CommandText := SQLDEF('ORDENSCOMPRA','SELECT '+
                                                           ' E1.ENF_REGISTRO, '+
                                                           ' E1.ENF_IT_NOTANUMBER, '+
                                                           ' P1.PRD_CODIGO, '+
                                                           ' E1.PRD_REFER, '+
                                                           ' E1.ENF_QTDE_PEDIDO_COMPRA, '+
                                                           ' E1.OCI_REGISTRO, '+
                                                           ' E1.PRD_DESCRI, '+
                                                           ' E1.OCP_CODIGO, '+
                                                           ' E1.FOR_CODIGO, '+
                                                           ' E1.PCX_CODIGO, '+
                                                           ' E1.ENF_QTDE, '+
                                                           ' E1.ENF_PRECO, '+
                                                           ' e1.cst_ipi, '+
                                                           ' e1.enf_it_baseipi, '+
                                                           ' E1.ENF_IPIALIQ, '+
                                                           ' e1.enf_it_vlipi, '+
                                                           ' e1.stb_tributacao, '+
                                                           ' e1.enf_it_baseicms, '+
                                                           ' e1.enf_icmsaliq, '+
                                                           ' E1.ENF_ICMS, '+
                                                           ' e1.enf_it_basesubtrib, '+
                                                           ' e1.enf_it_aliqsubtrib, '+
                                                           ' e1.enf_vlsubst, '+
                                                           ' e1.cst_pis, '+
                                                           ' e1.enf_basepis, '+
                                                           ' e1.enf_it_aliqpis, '+
                                                           ' e1.enf_it_vlpis, '+
                                                           ' e1.cst_cofins, '+
                                                           ' e1.enf_basecofins, '+
                                                           ' e1.enf_it_aliqcofins, '+
                                                           ' e1.enf_it_vlcofins, '+
                                                           ' E1.ENF_ATUALIZA_PRECO, '+
                                                           ' E1.ENF_ATUALIZA_ESTOQUE,  '+
                                                           ' E1.ENF_LOTE, '+
                                                           ' E1.ENF_CFOP, '+
                                                           ' (SELECT OPE_NATUREZA FROM OPE0000 op WHERE op.OPE_CODIGO = E1.OPE_CODIGO_RETORNO) AS ENF_CFOP_RETORNO, '+
                                                           ' E1.OPE_CODIGO_RETORNO, ' +
                                                           ' E1.ENF_ORIGEM_MERCADORIA, ' +
                                                           ' E1.AMX_CODIGO,  '+
                                                           ' A1.AMX_DESCRI, '+
                                                           ' P1.PRD_ESTOQUE, '+
                                                           ' P1.PRD_ENTRADA, '+
                                                           ' E1.ENF_UNIDADE_TRABALHO, '+
                                                           ' E1.REPETICAO_REFER, '+
                                                           ' P1.PRD_ALIQICM, '+
                                                           ' P1.PRD_SAIDA, '+
                                                           ' e1.ENF_IT_DESCTO, '+
                                                           ' E1.PRDL_REGISTRO, '+
                                                           ' e1.enf_it_valfrete, '+
                                                           ' e1.enf_it_vlseguro, '+
                                                           ' e1.enf_it_vldesp_aces, enf_ucom , ENF_UTRIB,  ENF_QTDE_ORIGINAL, ENF_PRECO_ORIGINAL, ENF_PTOTAL_ORIGINAL '+
                                                           ' FROM ENF_IT01 E1 '+
                                                           ' LEFT JOIN PRD0000 P1  ON  (E1.PRD_CODIGO = P1.PRD_CODIGO) '+
                                                           ' LEFT JOIN ALMOX0000 A1 ON (A1.AMX_CODIGO = E1.AMX_CODIGO) ',wSeleciona,wOrdem,'E1.');
      SqlCdsGridSemOC.Open;
      if DBInicio.IsDesenvolvimento then
        CopyToClipBoard(SqlCdsGridSemOC.CommandText);

    except on E:EDataBaseError do
      uteis.erro  (pchar('Erro ao buscar os itens da nota fiscal ! '+e.message));
    end;

end;

procedure TFormNfEntrada.DBGridSemOCdblClick(Sender: tObject);
begin
    if (not VerDados ) then
       exit;
    // pega numero da sequencia de repeticao do item
    wRepeticao_refer := SqlCdsGridSemOCREPETICAO_REFER.AsInteger;
    wAlterar := true;
    ItemSelecionado;
end;

procedure TFormNfEntrada.AtualizarTabelaPrecos(const prd_refer: string);
var  wTab2,wTab3, wTab4, wTab5, wTab6  : Double;
     lin_cod : string;
     porFora: boolean;
begin
  porFora := DBInicio.GetParametroSistema('PMT_METODO_CALCULO_PRECO') = '0';  // o cálculo é feito por fora? True   por dentro? False
  if dbInicio.Empresa.bHabilitarTabelaPreco then
  begin
    lin_cod := BuscaUmDadoSqlAsString(' SELECT LIN_CODIGO FROM PRD0000 ' +
                                     ' WHERE PRD_REFER = '+QuotedStr(prd_refer) +
                                     ConcatSe(' and ',dbInicio.ExclusivoSql('produtos') )
                                     )  ;
    if lin_cod <> '' then
      OpenAux3('	SELECT * FROM MKP0000  '+
               ' WHERE LIN_CODIGO = '+  QuotedStr(lin_cod)+
               // ' AND EMP_CODIGO = ' +QuotedStr(DBInicio.Empresa.EMP_CODIGO)
              ConcatSe(' and ',dbInicio.ExclusivoSql('produtos') )
               );

    if (lin_cod = '') or (qAux3.IsEmpty) then
       OpenAux3('	SELECT * FROM MKP0000  '+
              ' WHERE  LIN_CODIGO = '+  QuotedStr('999')+
              // ' AND EMP_CODIGO = ' +QuotedStr(DBInicio.Empresa.EMP_CODIGO)
              ConcatSe(' and ',dbInicio.ExclusivoSql('produtos') )
              );
    if (qAux3.IsEmpty) then
    begin
      wTab2:= 0;
      wTab3:= 0;
      wTab4:= 0;
      wTab5:= 0;
      wTab6:= 0;
    end
    else
    begin
      wTab2:= qAux3.FieldByName('MKP_PERC2').AsFloat;
      wTab3:= qAux3.FieldByName('MKP_PERC3').AsFloat;
      wTab4:= qAux3.FieldByName('MKP_PERC4').AsFloat;
      wTab5:= qAux3.FieldByName('MKP_PERC5').AsFloat;
      wTab6:= qAux3.FieldByName('MKP_PERC6').AsFloat;
    end;
    if wTab2 > 0  then
      wtab2 := (wtab2/100) +1;

    if wTab3 > 0  then
      wtab3 := (wtab3/100) +1;

    if wTab4 > 0  then
      wtab4 := (wtab4/100) +1;

    if wTab5 > 0  then
      wtab5 := (wtab5/100) +1;

    if wTab6 > 0  then
      wtab6 := (wtab6/100) +1;
  end;
 //conforme parametro -> 0 = custo liquido, 1 = custo enttrada
 if wCalcularPV = 0 then
 begin
   if porFora then // COM A ALTERAÇÃO DA ISSUE 1539 ACABOU IGUALANDO OS CÁLCULOS, FOI MANTIDA A ROTINA PARA EFEITO DE FUTURAS ALTERAÇÕES...
   begin
      wSql1 :='Update PRD0000 set  ' +
       '   PRD_PVENDA  = round (( (PRD_PCUSTO + (PRD_PCUSTO * PRD_MARGEMVENDA / 100)) '                     +' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
       '  ,PRD_PVENDA2 = round (( (PRD_PCUSTO + (PRD_PCUSTO * PRD_MARGEMVENDA / 100)) * ' +FloatToSQL(wTab2)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
       '  ,PRD_PVENDA3 = round (( (PRD_PCUSTO + (PRD_PCUSTO * PRD_MARGEMVENDA / 100)) * ' +FloatToSQL(wTab3)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
       '  ,PRD_PVENDA4 = round (( (PRD_PCUSTO + (PRD_PCUSTO * PRD_MARGEMVENDA / 100)) * ' +FloatToSQL(wTab4)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
       '  ,PRD_PVENDA5 = round (( (PRD_PCUSTO + (PRD_PCUSTO * PRD_MARGEMVENDA / 100)) * ' +FloatToSQL(wTab5)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
       '  ,PRD_PVENDA6 = round (( (PRD_PCUSTO + (PRD_PCUSTO * PRD_MARGEMVENDA / 100)) * ' +FloatToSQL(wTab6)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')';
   end
   else
   begin
      wSql1 :='Update PRD0000 set  ' +
       '   PRD_PVENDA  = round (( (PRD_PCUSTO + (PRD_PCUSTO * (PRD_MARGEMVENDA / 100))) '                     +' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
       '  ,PRD_PVENDA2 = round (( (PRD_PCUSTO + (PRD_PCUSTO * (PRD_MARGEMVENDA / 100))) * ' +FloatToSQL(wTab2)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
       '  ,PRD_PVENDA3 = round (( (PRD_PCUSTO + (PRD_PCUSTO * (PRD_MARGEMVENDA / 100))) * ' +FloatToSQL(wTab3)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
       '  ,PRD_PVENDA4 = round (( (PRD_PCUSTO + (PRD_PCUSTO * (PRD_MARGEMVENDA / 100))) * ' +FloatToSQL(wTab4)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
       '  ,PRD_PVENDA5 = round (( (PRD_PCUSTO + (PRD_PCUSTO * (PRD_MARGEMVENDA / 100))) * ' +FloatToSQL(wTab5)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
       '  ,PRD_PVENDA6 = round (( (PRD_PCUSTO + (PRD_PCUSTO * (PRD_MARGEMVENDA / 100))) * ' +FloatToSQL(wTab6)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')';
     // (PRD_PCUSTO / (1 - (PRD_MARGEMVENDA / 100)))
   end;
 end
 else if wCalcularPV = 1 then
 begin
   if porFora then
   begin
      wSql1 :='Update PRD0000 set ' +
       '  PRD_PVENDA =  round (( (PRD_CUSTOCOMIPI + (PRD_CUSTOCOMIPI * PRD_MARGEMVENDA / 100))  '                      +' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
       ' ,PRD_PVENDA2 = round (( (PRD_CUSTOCOMIPI + (PRD_CUSTOCOMIPI * PRD_MARGEMVENDA / 100)) * '  +FloatToSQL(wTab2)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
       ' ,PRD_PVENDA3 = round (( (PRD_CUSTOCOMIPI + (PRD_CUSTOCOMIPI * PRD_MARGEMVENDA / 100)) * '  +FloatToSQL(wTab3)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
       ' ,PRD_PVENDA4 = round (( (PRD_CUSTOCOMIPI + (PRD_CUSTOCOMIPI * PRD_MARGEMVENDA / 100)) * '  +FloatToSQL(wTab4)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
       ' ,PRD_PVENDA5 = round (( (PRD_CUSTOCOMIPI + (PRD_CUSTOCOMIPI * PRD_MARGEMVENDA / 100)) * '  +FloatToSQL(wTab5)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
       ' ,PRD_PVENDA6 = round (( (PRD_CUSTOCOMIPI + (PRD_CUSTOCOMIPI * PRD_MARGEMVENDA / 100)) * '  +FloatToSQL(wTab6)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')';
   end
   else
   begin
      wSql1 :='Update PRD0000 set ' +
       '  PRD_PVENDA =  round (( (PRD_CUSTOCOMIPI + (PRD_CUSTOCOMIPI * (PRD_MARGEMVENDA / 100)))  '                      +' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
       ' ,PRD_PVENDA2 = round (( (PRD_CUSTOCOMIPI + (PRD_CUSTOCOMIPI * (PRD_MARGEMVENDA / 100))) * '  +FloatToSQL(wTab2)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
       ' ,PRD_PVENDA3 = round (( (PRD_CUSTOCOMIPI + (PRD_CUSTOCOMIPI * (PRD_MARGEMVENDA / 100))) * '  +FloatToSQL(wTab3)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
       ' ,PRD_PVENDA4 = round (( (PRD_CUSTOCOMIPI + (PRD_CUSTOCOMIPI * (PRD_MARGEMVENDA / 100))) * '  +FloatToSQL(wTab4)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
       ' ,PRD_PVENDA5 = round (( (PRD_CUSTOCOMIPI + (PRD_CUSTOCOMIPI * (PRD_MARGEMVENDA / 100))) * '  +FloatToSQL(wTab5)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
       ' ,PRD_PVENDA6 = round (( (PRD_CUSTOCOMIPI + (PRD_CUSTOCOMIPI * (PRD_MARGEMVENDA / 100))) * '  +FloatToSQL(wTab6)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')';
     // (PRD_CUSTOCOMIPI / (1 - (PRD_MARGEMVENDA / 100)))
   end;
 end
 else if wCalcularPV = 2 then
 begin
   if porFora then
   begin
     wSql1 :='Update PRD0000 set ' +
       '  PRD_PVENDA =  round (((PRD_PMEDIO + (PRD_PMEDIO * PRD_MARGEMVENDA / 100))  ' +' ),'                    + IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
       ' ,PRD_PVENDA2 = round (((PRD_PMEDIO + (PRD_PMEDIO * PRD_MARGEMVENDA / 100)) * '  +FloatToSQL(wTab2)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
       ' ,PRD_PVENDA3 = round (((PRD_PMEDIO + (PRD_PMEDIO * PRD_MARGEMVENDA / 100)) * '  +FloatToSQL(wTab3)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
       ' ,PRD_PVENDA4 = round (((PRD_PMEDIO + (PRD_PMEDIO * PRD_MARGEMVENDA / 100)) * '  +FloatToSQL(wTab4)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
       ' ,PRD_PVENDA5 = round (((PRD_PMEDIO + (PRD_PMEDIO * PRD_MARGEMVENDA / 100)) * '  +FloatToSQL(wTab5)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
       ' ,PRD_PVENDA6 = round (((PRD_PMEDIO + (PRD_PMEDIO * PRD_MARGEMVENDA / 100)) * '  +FloatToSQL(wTab6)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')';
   end
   else
   begin
     wSql1 :='Update PRD0000 set ' +
       '  PRD_PVENDA =  round (( (PRD_PMEDIO + (PRD_PMEDIO + (PRD_MARGEMVENDA / 100)))  ' +' ),'                    + IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
       ' ,PRD_PVENDA2 = round (( (PRD_PMEDIO + (PRD_PMEDIO + (PRD_MARGEMVENDA / 100))) * '  +FloatToSQL(wTab2)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
       ' ,PRD_PVENDA3 = round (( (PRD_PMEDIO + (PRD_PMEDIO + (PRD_MARGEMVENDA / 100))) * '  +FloatToSQL(wTab3)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
       ' ,PRD_PVENDA4 = round (( (PRD_PMEDIO + (PRD_PMEDIO + (PRD_MARGEMVENDA / 100))) * '  +FloatToSQL(wTab4)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
       ' ,PRD_PVENDA5 = round (( (PRD_PMEDIO + (PRD_PMEDIO + (PRD_MARGEMVENDA / 100))) * '  +FloatToSQL(wTab5)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
       ' ,PRD_PVENDA6 = round (( (PRD_PMEDIO + (PRD_PMEDIO + (PRD_MARGEMVENDA / 100))) * '  +FloatToSQL(wTab6)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')';
      // (PRD_PMEDIO / (1 - (PRD_MARGEMVENDA / 100))) ;
   end;
 end;
  DataCadastros.sqlUpdate.Close;
  DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,'WHERE PRD_REFER = '''+prd_refer+'''','','');
  DataCadastros.sqlUpdate.Execsql;
end;

procedure TFormNfEntrada.AtualizaSituacaoOC(const sRegistro:String);
var
 sCodigoCompra:String;
begin
   sCodigoCompra := '000000';
   if (sRegistro <> '') then
      begin
         wSql1 := 'Select OCI_QTDER, OCI_QTDES, OCP_CODIGO from OCP_IT01 ';
         DataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :=SQLDEF('ORDENSCOMPRA',wSql1,'where OCI_REGISTRO = '''+sRegistro+'''','OCP_CODIGO,PRD_REFER','');
         DataCadastros.sqlUpdate.Open;
         if not (DataCadastros.sqlUpdate.IsEmpty) then
           begin
              wQtdeR := DataCadastros.sqlUpdate.FieldByName('OCI_QTDER').AsFloat;     //RECEBIDA
              wQtdeS := DataCadastros.sqlUpdate.FieldByName('OCI_QTDES').AsFloat;    //SOLICITADA
              sCodigoCompra := DataCadastros.sqlUpdate.FieldByName('OCP_CODIGO').AsString;
           end;
         if (wQtdeR >= wQtdeS) then
            wStatus := 'C';   //Concluído
         if (wQtdeR < wQtdeS) then
            wStatus := 'F';   //Parcial
         if (wQtdeR = 0) then
            wStatus := 'P';
         {Atualiza Status do Item de Compra}
         wSql1 := 'Update OCP_IT01 Set OCI_SITUACAO = '''+wStatus+'''';
         DataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :=SQLDEF('ORDENSCOMPRA',wSql1,'where OCI_REGISTRO = '''+sRegistro+''' ','','');
         DataCadastros.sqlUpdate.Execsql;

         try
           DataCadastros.sqlUpdate.Close;
           DataCadastros.SqlUpdate.sql.text :=SQLDEF('ORDENSCOMPRA','SELECT ocp_codigo,oci_situacao FROM ocp_it01 ','where OCP_CODIGO = '''+sCodigoCompra+''' and (OCI_SITUACAO = ''F'' OR OCI_SITUACAO = ''P'')','','');
           DataCadastros.sqlUpdate.Open;
           if DataCadastros.sqlUpdate.IsEmpty then
              begin
                  try
                    {Se nao encontrar nada conforme condicao acima faz a atualizacao no pedido de compra coloca o status para Concluido}
                    DataCadastros.sqlUpdate.Close;
                    DataCadastros.SqlUpdate.sql.text :=SQLDEF('ORDENSCOMPRA','Update ocp0000 set ocp_status = ''C'' ','where OCP_CODIGO = '''+sCodigoCompra+'''','','');
                    DataCadastros.sqlUpdate.Execsql;
                  except on E:EDataBaseError do
                      uteis.erro  (pchar('Erro ao atualizar o Pedido de Compras !'+e.message));
                  end;
              end
           else
              begin
                  try
                    {Se nao encontrar nada conforme condicao acima faz a atualizacao no pedido de compra coloca o status para Pendente}
                    DataCadastros.sqlUpdate.Close;
                    DataCadastros.SqlUpdate.sql.text :=SQLDEF('ORDENSCOMPRA','Update ocp0000 set ocp_status = ''P''','where OCP_CODIGO = '''+sCodigoCompra+'''','','');
                    DataCadastros.sqlUpdate.Execsql;
                  except on E:EDataBaseError do
                      uteis.erro  (pchar('Erro ao Atualizar o Pedido de Compras !'+e.message));
                  end;
              end;
         except on E:EdataBaseError do
             uteis.erro  (pchar('Erro ao abrir a tabela OCP0000 !'+E.MESSAGE));
         end;



      end;
end;

procedure TFormNfEntrada.BitCancelItemClick(Sender: tObject);
begin

    DBGridSemOC.Enabled := True;
    if BitCancelItem.Canfocus then
      BitCancelItem.SetFocus;
    Panel1.Enabled := true;
    BitCancelItem.Enabled := false;
    BitConfirmar.Enabled  := false;
    Bit_Estoque.Enabled   := True;
    Limparitens;
    BuscaItensNF;
    HabiliItemSelec;

    if (RadComOc.checked ) then
      begin
         if (not SqlCdsGridSemOC.IsEmpty) then
            SqlCdsGridSemOC.Refresh;
         if DbGridComOC.CanFocus then
           DbGridComOC.SetFocus;
         GrpDigitaItens.Enabled := true;
      end
    else
      begin
         if (not SqlCdsGridSemOC.IsEmpty) then
            SqlCdsGridSemOC.Refresh;
         if DBGridSemOC.CanFocus then
           DBGridSemOC.SetFocus;
         GrpDigitaItens.Enabled := true;
         if CbRef.Canfocus then
           CbRef.SetFocus;
      end;

    //DesabilitaItem;
    CalcTotais;
end;

procedure TFormNfEntrada.DbGridComOCKeyPress(Sender: tObject;
  var Key: Char);
begin
    if key = #13 then
       begin
           Seleciona_Item_Nota;
           Key := #0;
       end;
end;

procedure TFormNfEntrada.CurrPrecoClick(Sender: tObject);
begin
    if not VerDados  then
       exit;

end;

procedure TFormNfEntrada.CurrIpiClick(Sender: tObject);
begin
    if not VerDados then
       Exit;
end;

procedure TFormNfEntrada.currOutrosChange(Sender: TObject);
begin
  inherited;
  AlterouOutrosCustos := True
end;

function TFormNfEntrada.LocalizarRepetida(const pPrd_refer:string):boolean;
{verifica se a referencia digita é repedita (já foi digitada na mesma nota
 Só pode ser digitada mais de uma vez quando Entrada SEM ORDEM DE COMPRA }
var
wRepetida: string;
wCT:integer;
begin
   wRepetida := '';
   wCT := 1;
   if SqlCdsGridSemOC.Locate('PRD_REFER',pPrd_refer,[]) then
      begin
      wRepetida := SqlCdsGridSemOCPRD_REFER.AsString;
      Result := True;
      end
   else
      begin
      Result := False;
      end;

   while (wRepetida = SqlCdsGridSemOCPRD_REFER.AsString) and (not SqlCdsGridSemOC.Eof) do
      begin
      wCT := wCT + 1;
      SqlCdsGridSemOC.next;
      end;

   wRepeticao_refer := wCT;

end;

procedure TFormNfEntrada.miImportarXMLClick(Sender: TObject);
begin
  inherited;
  if DBInicio.GetParametroSistema('PMT_ENF_CHK_INDUSTRIALIZACAO') = 'S' then
  begin
    chkIndustrializacao.Checked := True;
    cbMovimentaEstoque.Checked := False;
  end;
  if cbMovimentaEstoque.State=cbGrayed then
  begin
    GeraException( 'A Caixa de Seleção MOVIMENTA ESTOQUE precisa receber uma ação!'+#13+
                   'Desmarcada - Não movimenta estoque.'+#13+
                   'Marcada - Movimenta Estoque' );

  end
  Else
  begin
    FrmEntradaNotaXmlOpcao := TFrmEntradaNotaXmlOpcao.Create(Application);
    try
      FrmEntradaNotaXmlOpcao.ShowModal;
    finally
      FreeAndNil(FrmEntradaNotaXmlOpcao);
    end;
  end;
  end;

procedure TFormNfEntrada.miLancarManualClick(Sender: TObject);
begin
  inherited;
  Limpar;
  if True then
  if sqlcdsGridSemOc.Active then
    SqlCdsGridSemOC.EmptyDataSet;
  Limparitens;

  HabiliItemSelec;
  HabilitaBotoes;
  DesabilitaDados;

  GrpTipoEntrada.Enabled       := true;
  LayOutENF;
  chkIndustrializacao.Checked := DBInicio.GetParametroSistema('PMT_ENF_CHK_INDUSTRIALIZACAO') = 'S';
  if EdtNota.CanFocus then
    EdtNota.SetFocus;
end;

procedure TFormNfEntrada.BuscaReferencia;
begin
    if (ActiveControl <> nil)
    and(ActiveControl.name <> 'Bit_Cancelar')
    and(ActiveControl.name <> 'Bit_Gravar')
    and(ActiveControl.name <> 'Bit_Sair')then
       begin
           if DataMovimento.CdsEnf.State in [dsEdit,dsInsert] then
              begin
                  if CbRef.Text <> '' then
                     begin
                         SqlCdsProduto.Close;
                         SqlCdsProduto.CommandText := SQLDEF('PRODUTOS','select PRD_CODIGO,PRD_REFER,PRD_DESCRI,PRD_ESTOQUE,PRD_ENTRADA,PRD_SAIDA,PRD_PENDENTE,EMP_CODIGO, PRD_UND from PRD0000','where PRD_STATUS = ''A'' AND PRD_REFER = '''+CbRef.Text+'''','PRD_REFER','');
                         SqlCdsProduto.Open;
                         if not SqlCdsProduto.IsEmpty then
                            begin
                                DBGridSemOC.Enabled := False;
                                edUnd.Text := SqlCdsProdutoPRD_UND.AsString;
                                EdDescricao.Text      := SqlCdsProdutoPRD_DESCRI.AsString;
                                wPrdCodigo            := SqlCdsProdutoPRD_CODIGO.AsString;
                                //Cr_ValorIcms.Value    := CurrVlICms.Value;
                                CrCfopItem.Value      := DbeOpe_Natureza.Field.AsInteger;
                                BuscaSaldo(CbRef.Text);

                                if (not wAlterar) then
                                  begin
                                    //Almoxarifado
                                    if (EdtAlmox.Text = '') then
                                      EdtAlmox.Text := StrZero(dbinicio.empresa.wPmt_Amx_EntradaNota,EdtAlmox.MaxLength);
                                    if SqlCdsAlmox.Locate('AMX_CODIGO',EdtAlmox.Text,[])  then
                                       begin
                                           CbAlmox.Text := SqlCdsAlmoxAMX_DESCRI.AsString;
                                       end
                                    else
                                       begin
                                           EdtAlmox.Text := '';
                                       end;
                                  end;
                                CurItemAliquotaICMSRapida.Value := CurrVlICms.Value;

                                SqlCdsProduto.Close;
                                Panel1.Enabled        := false;
                                DesabiliItemSelec;
                                HabilitaItem;
                                CurrQtdeR.SetFocus;

                                BitCancelItem.Enabled := true;
                                BitConfirmar.Enabled  := true;
                                //
                                                                //
                                if not SqlCdsGridSemOC.IsEmpty then
                                   begin
                                     if (RadSemOC.checked ) or (wAchouNF) then
                                        if LocalizarRepetida(CbRef.Text)  then
                                           begin
                                               if uteis.confirmacao ( ('Item já lançando nesta nota fiscal. Deseja incluí-lo novamente ?'))=mrNo then
                                                  begin
                                                    wAlterar := true;
                                                    ItemSelecionado;
                                                  end;
                                           end;
                                   end
                                  else
                                    //primeiro item incluido na nota
                                    wRepeticao_refer := 1;
                            end
                         else
                            begin
                                uteis.aviso('Referência não encontrado !');
                                EdDescricao.Text     := '';
                                Bit_Estoque.Enabled  := True;
                                CbRef.SetFocus;
                            end;
                     end;
              end;
       end;
end;

procedure TFormNfEntrada.DbeENF_EMISSAOExit(Sender: tObject);
begin
    if (ActiveControl <> nil)
    and(ActiveControl.name <>'Bit_Cancelar')
    and(ActiveControl.name <>'Bit_Sair') then
       begin
           if DbeENF_EMISSAO.Date = 0 then
              begin
                  uteis.aviso('Informe a data de emissão da nota fiscal !');
                  DbeENF_EMISSAO.SetFocus;
              end
           else
              begin
                  if not TestaDataStr(DbeENF_EMISSAO.Text) then
                     DbeENF_EMISSAO.setfocus;
              end;
       end;
end;

procedure TFormNfEntrada.DesabilitaItem;
begin
    CbRef.Enabled := False;
    EdDescricao.Enabled := False;
    CurrSaldo.Enabled := False;
    CurrQtdeR.Enabled := False;
    CurrQtdeS.Enabled := False;
    CurrPreco.Enabled := False;
    CrCfopItem.Enabled := False;
    EdtAlmox.Enabled := False;
    CbAlmox.Enabled := False;
    CbLoteProduto.Enabled := False;
    cxCentroCustoItem.Enabled := False;
    btnCadastroLote.Enabled := False;
    //ICMS
    cbbItemCST.Enabled := False;
    CurItemBaseICMS.Enabled := False;
    CurItemAliquotaICMS.Enabled := False;
    CurItemValorICMS.Enabled := False;
    //ICMS ST
    CurItemBaseICMSST.Enabled := False;
    CurItemAliquotaICMSST.Enabled := False;
    CurItemValorICMSST.Enabled := False;
    //IPI
    cbbItemCSTIPI.Enabled := False;
    CurItemBaseIPI.Enabled := False;
    CurItemAliquotaIPI.Enabled := False;
    CurItemValorIPI.Enabled := False;
    //PIS
    cbbItemCSTPIS.Enabled := False;
    CurItemBasePIS.Enabled := False;
    CurItemAliquotaPIS.Enabled := False;
    CurItemValorPIS.Enabled := False;
    //COFINS
    cbbItemCSTCofins.Enabled := False;
    CurItemBaseCofins.Enabled := False;
    CurItemAliquotaCofins.Enabled := False;
    CurItemValorCofins.Enabled := False;
    //Pedido Compra
    btnPedidoCompraUnico.Enabled := False;
end;

procedure TFormNfEntrada.HabilitaItem;
begin
    CbRef.Enabled := True;
    EdDescricao.Enabled := True;
    CurrSaldo.Enabled := True;
    CurrQtdeR.Enabled := True;
    CurrQtdeS.Enabled := True;
    CurrPreco.Enabled := True;
    CrCfopItem.Enabled := True;
    EdtAlmox.Enabled := True;
    CbAlmox.Enabled := True;
    CbLoteProduto.Enabled := True;
    cxCentroCustoItem.Enabled := True;
    btnCadastroLote.Enabled := True;
    //ICMS
    cbbItemCST.Enabled := True;
    CurItemBaseICMS.Enabled := True;
    CurItemAliquotaICMS.Enabled := True;
    CurItemValorICMS.Enabled := True;
    //ICMS ST
    CurItemBaseICMSST.Enabled := True;
    CurItemAliquotaICMSST.Enabled := True;
    CurItemValorICMSST.Enabled := True;
    //IPI
    cbbItemCSTIPI.Enabled := True;
    CurItemBaseIPI.Enabled := True;
    CurItemAliquotaIPI.Enabled := True;
    CurItemValorIPI.Enabled := True;
    //PIS
    cbbItemCSTPIS.Enabled := True;
    CurItemBasePIS.Enabled := True;
    CurItemAliquotaPIS.Enabled := True;
    CurItemValorPIS.Enabled := True;
    //COFINS
    cbbItemCSTCofins.Enabled := True;
    CurItemBaseCofins.Enabled := True;
    CurItemAliquotaCofins.Enabled := True;
    CurItemValorCofins.Enabled := True;
    //Pedido Compra
    btnPedidoCompraUnico.Enabled := True;
end;

procedure TFormNfEntrada.ChecaAlmoxarifado;
begin
    if DBGridSemOC.Visible then
       begin
           if (not SqlCdsGridSemOC.IsEmpty ) then
              begin
                  if SqlCdsGridSemOC.Locate('PRD_REFER;AMX_CODIGO',VarArrayOf([CbRef.Text,EdtAlmox.Text]),[]) then
                     begin
                         uteis.aviso('Item já cadastrado para este almoxarifado !');
                     end;
              end;
       end;
end;

procedure TFormNfEntrada.chkIndustrializacaoClick(Sender: TObject);
begin
  inherited;
     if DataMovimento.CdsEnf.state=dsBrowse then
        DataMovimento.CdsEnf.Edit;

end;

procedure TFormNfEntrada.SqlCdsProdutoCalcFields(DataSet: TDataSet);
begin
    SqlCdsProdutoFISICO_CC.AsFloat       := (SqlCdsProdutoPRD_ESTOQUE.AsFloat       + SqlCdsProdutoPRD_ENTRADA.AsFloat      )-SqlCdsProdutoPRD_SAIDA.AsFloat      ;
end;

procedure TFormNfEntrada.cbMovimentaEstoqueClick(Sender: TObject);
begin
     inherited;
     if cbMovimentaEstoque.State <> cbGrayed then
        if cbMovimentaEstoque.Checked then
        begin
             vMovimentaEstoque := 'S';
             Uteis.Aviso( 'Esta nota fiscal irá movimentar estoque!'+#13+#13+
                          'Após o lançamento de qualquer item na Nota, esta decisão não poderá mais ser alterada!!');
        end
        Else
        begin
             vMovimentaEstoque := 'N';
             Uteis.Aviso('Nenhum movimento de estoque será realizado!'+#13+#13+
                          'Após o lançamento de qualquer item na Nota, esta decisão não poderá mais ser alterada!!');
        end;
     if DataMovimento.CdsEnf.state=dsBrowse then
        DataMovimento.CdsEnf.Edit;

end;

procedure TFormNfEntrada.Busca_conta_finan;
begin
      if (PesqFornecedor.idRetorno <> '') AND (DbeCCT_CODIGO.Text = '') then
         DbeCCT_CODIGO.Text := PesqFornecedor.CDS.FieldByName('CCT_CODIGO').AsString;

      if DbeCCT_CODIGO.Text <> '' then
      begin
           if SqlCdsCta.Locate('CCT_CODIGO',DbeCCT_CODIGO.Text,[])  then
              CbCtaAnalise.Text  := SqlCdsCtaCCT_DESCRI.AsString
           else
           begin
                uteis.aviso('Conta financeira não existe no plano de contas.');
                CbCtaAnalise.Text  := ''
           end;
      end;
end;


procedure TFormNfEntrada.CbCtaAnaliseExit(Sender: tObject);
begin
    if (ActiveControl <> nil) and(ActiveControl.name <> 'Bit_Cancelar')and(ActiveControl.name <> 'Bit_Sair')and(ActiveControl.name <> 'DbeCCT_CODIGO') then
    begin
           if DataMovimento.CdsEnf.State in [dsEdit,dsInsert] then
           begin
                  if CbCtaAnalise.Text <> '' then
                  begin
                         if SqlCdsCta.Locate('CCT_DESCRI',CbCtaAnalise.Text,[loCaseInsensitive])  then
                         begin
                                CbCtaAnalise.Text  := SqlCdsCtaCCT_DESCRI.AsString;
                                DbeCCT_CODIGO.Text := SqlCdsCtaCCT_CODIGO.AsString;

                         end
                         else
                         begin
                                uteis.aviso('Conta Financeira não encontrada !');
                                CbCtaAnalise.Text  := '';
                                DbeCCT_CODIGO.Text := '';
                                CbCtaAnalise.SetFocus;
                         end;
                  end
                  else
                  begin
                         if not (ActiveControl.Name = 'CbCtaAnalise') then
                         begin
                                uteis.aviso('Informe a Conta Financeira !');
                                CbCtaAnalise.Text  := '';
                                DbeCCT_CODIGO.Text := '';
                                DbeCCT_CODIGO.SetFocus;

                         end;
                  end;
           end;
    end;
    if (btnDanfe.Enabled) then
    begin
         if DataMovimento.CdsEnf.State in [dsBrowse] then
             DataMovimento.CdsEnf.Edit;
         DataMovimento.CdsEnfCCT_CODIGO.AsString := SqlCdsCtaCCT_CODIGO.AsString;
         DataMovimento.CdsEnf.ApplyUpdates(0);
    end;
end;

procedure TFormNfEntrada.CbRefExit(Sender: tObject);
begin
    if not VerDados then
       exit;
    if CbRef.Text <> '' then
       BuscaReferencia;
end;

procedure TFormNfEntrada.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

   if (key = VK_ESCAPE) then
   begin
        if (Bit_Sair.Enabled) then
           Bit_Sair.Click
        else
        if (Bit_Cancelar.Enabled) then
           Bit_Cancelar.Click
        else
        if (BitCancelItem.Enabled) then
           BitCancelItem.Click;
        key := 0;
   end;
   inherited;

end;

procedure TFormNfEntrada.Curr_Vl_IcmsExit(Sender: tObject);
begin
    if (CurrVlICms.Value>0)and(Curr_Vl_Icms.Value = 0) then
       begin
           uteis.aviso('Informe o valor do Icms !');
           Curr_Vl_Icms.SetFocus;
       end;
end;

procedure TFormNfEntrada.CurrBaseIcmsExit(Sender: tObject);
begin
    if (CurrVlICms.Value >0)and (CurrBaseIcms.Value = 0) then
       begin
           uteis.aviso('Informe a Base do Icms !');
           CurrBaseIcms.SetFocus;
       end;
end;

procedure TFormNfEntrada.Atualiza_Preco_Compra(const pRegistro, pValor: String);
begin
    try
      wSql1      := 'Update OCP_IT01 set OCI_PRECO = '''+pValor+'''';
      wSeleciona := 'where OCI_REGISTRO = '''+pRegistro+'''';
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('ORDENSCOMPRA',wSql1,wSeleciona,'','');
      DataCadastros.sqlUpdate.Execsql;
    except on E:EdataBaseError do
       uteis.erro  (pchar('Erro ao atualizar o preço do Item da Ordem de Compra ! '+e.message));
    end;
end;

procedure TFormNfEntrada.CalcTotal_IPI;
begin
    try
      {Faz calculo dos totais }
      wTotal_Valor := 0;
      wTotal_IPI   := 0;
      wValor_Total := 0;
      //
      SqlCdsGridComOC.DisableControls;
      SqlCdsGridComOC.First;
      While not SqlCdsGridComOC.EOF do
       begin
           wTotal_Valor := (SqlCdsGridComOCOCI_QTDES.AsFloat       * SqlCdsGridComOCOCI_PRECO.AsFloat      );
           wTotal_IPI   := wTotal_IPI   + ((wTotal_Valor * SqlCdsGridComOCOCI_IPI.AsFloat      )/100);
           wValor_Total := wValor_Total + wTotal_Valor;
           SqlCdsGridComOC.Next;
       end;
      SqlCdsGridComOC.EnableControls;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao calcular o IPI da Ordem de Compra ! '+e.message));
    end;
end;

procedure TFormNfEntrada.Atualiza_Ordem_Compra(const pOCompra: String);
begin
    try
      wSql1      := 'Update OCP0000 set OCP_TOTAL = '''+ValorAmericano(FloatToStr(wValor_Total))+''',OCP_IPI = '''+ValorAmericano(FloatToStr(wTotal_IPI))+''',PCL_CODIGO = '''+EdtPcl_Codigo.Text+'''';
      wSeleciona := 'where OCP_CODIGO = '''+pOCompra+'''';
      //
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('ORDENSCOMPRA',wSql1,wSeleciona,'','');
      DataCadastros.sqlUpdate.Execsql;
    except on E:EdataBaseError do
       uteis.erro  (pchar('Erro ao atualizar a ordem de compra ! '+e.message));
    end;
end;

procedure TFormNfEntrada.Verifica_Item_Compra(const fNota, fNCompra, fCodFor,
  fProduto: String);
begin
    try
      wSql1      := 'Select F1.ENF_IT_NOTANUMBER,F1.OCP_CODIGO,F1.FOR_CODIGO,F1.PRD_REFER from ENF_IT01 F1 ';
      wSeleciona := 'where F1.OCP_CODIGO = '''+fNCompra+''' and F1.FOR_CODIGO = '''+fCodFor+''' and F1.ENF_IT_NOTANUMBER = '''+fNota+''' and F1.PRD_REFER = '''+fProduto+'''';
      wOrdem     := 'F1.OCP_CODIGO,F1.FOR_CODIGO,F1.ENF_IT_NOTANUMBER,F1.PRD_REFER';
      //
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=SqlDef('ORDENSCOMPRA',wSql1,wSeleciona,wOrdem,'F1.');
      DataCadastros.sqlUpdate.Open;
      if (not DataCadastros.sqlUpdate.IsEmpty) then
         wAlterar := True
      else
         wAlterar := False;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao localizar o item da ordem de compra ! '+e.message));
    end;
end;

procedure TFormNfEntrada.Busca_Itens_NF(const fNota, fCodFor,  fProduto: String);
begin
    try
      wSql1      := 'SELECT '+
                    ' E1.ENF_REGISTRO, '+
                    ' E1.ENF_IT_NOTANUMBER, '+
                    ' P1.PRD_CODIGO, '+
                    ' E1.PRD_REFER, '+
                    ' E1.ENF_QTDE_PEDIDO_COMPRA, '+
                    ' E1.OCI_REGISTRO, '+
                    ' E1.PRD_DESCRI, '+
                    ' E1.OCP_CODIGO, '+
                    ' E1.FOR_CODIGO, '+
                    ' E1.ENF_QTDE, '+
                    ' E1.ENF_PRECO, '+
                    ' e1.cst_ipi, '+
                    ' e1.enf_it_baseipi, '+
                    ' E1.ENF_IPIALIQ, '+
                    ' e1.enf_it_vlipi, '+
                    ' e1.stb_tributacao, '+
                    ' e1.enf_it_baseicms, '+
                    ' e1.enf_icmsaliq, '+
                    ' E1.ENF_ICMS, '+
                    ' e1.enf_it_basesubtrib, '+
                    ' e1.enf_it_aliqsubtrib, '+
                    ' e1.enf_vlsubst, '+
                    ' e1.cst_pis, '+
                    ' e1.enf_basepis, '+
                    ' e1.enf_it_aliqpis, '+
                    ' e1.enf_it_vlpis, '+
                    ' e1.cst_cofins, '+
                    ' e1.enf_basecofins, '+
                    ' e1.enf_it_aliqcofins, '+
                    ' e1.enf_it_vlcofins, '+
                    ' E1.ENF_ATUALIZA_PRECO, '+
                    ' E1.ENF_ATUALIZA_ESTOQUE,  '+
                    ' E1.ENF_LOTE, '+
                    ' E1.ENF_CFOP, '+
                    ' E1.ENF_ORIGEM_MERCADORIA, ' +
                    ' E1.AMX_CODIGO,  '+
                    ' A1.AMX_DESCRI, '+
                    ' P1.PRD_ESTOQUE, '+
                    ' P1.PRD_ENTRADA, '+
                    ' E1.ENF_UNIDADE_TRABALHO, '+
                    ' E1.REPETICAO_REFER, '+
                    ' P1.PRD_ALIQICM, '+
                    ' P1.PRD_SAIDA, '+
                    ' e1.ENF_IT_DESCTO, '+
                    ' E1.PRDL_REGISTRO, '+
                    ' e1.enf_it_valfrete, '+
                    ' e1.enf_it_vlseguro, '+
                    ' e1.enf_it_vldesp_aces, enf_ucom, ENF_UTRIB,  ENF_QTDE_ORIGINAL, ENF_PRECO_ORIGINAL, ENF_PTOTAL_ORIGINAL '+
                    ' FROM ENF_IT01 E1 '+
                    ' LEFT JOIN PRD0000 P1  ON  (E1.PRD_CODIGO = P1.PRD_CODIGO) '+
                    ' LEFT JOIN ALMOX0000 A1 ON (A1.AMX_CODIGO = E1.AMX_CODIGO) ';
      wSeleciona := 'where E1.FOR_CODIGO = '''+fCodFor+''' and E1.ENF_IT_NOTANUMBER = '''+fNota+''' and E1.PRD_REFER = '''+fProduto+'''';
      wOrdem     := 'E1.ENF_REGISTRO';
      //
      SqlCdsGridSemOC.Close;
      SqlCdsGridSemOC.CommandText := SqlDef('ORDENSCOMPRA',wSql1,wSeleciona,wOrdem,'E1.');
      SqlCdsGridSemOC.Open;
    except on E:EDatabaseError do
       uteis.erro  (pchar('Erro ao localizar o Item da nota fiscal ! '+e.message));
    end;
end;

procedure TFormNfEntrada.btnOkOutrosCustosClick(Sender: TObject);
begin
  inherited;
  AnimateWindow(pOutrosCustos.Handle, 500, AW_HOR_NEGATIVE or  AW_HIDE);
  pOutrosCustos.Visible := false;
  Bit_Gravar.Enabled := AlterouOutrosCustos;

end;

procedure TFormNfEntrada.Seleciona_Item_Nota;
begin
    if (not VerDados ) then
       exit;
    Verifica_Item_Compra(StrZero(EdtNota.Text,EdtNota.MaxLength),
                             '000000',
                             StrZero(EdtFor_Codigo.Text,EdtFor_Codigo.MaxLength),
                             SqlCdsGridComOCPRD_REFER.AsString);
    ItemSelecionado;
    // OPERACAO FISCAL DO ITEM INDIVIDUAL
    CurItemValorICMS.Value    := CurrVlICms.Value;
    CrCfopItem.Value      := DbeOpe_Natureza.Field.AsInteger;
end;

procedure TFormNfEntrada.Bit_EstoqueClick(Sender: tObject);
begin
    try
      try
        FormProduto := TFormProduto.Create(Application);
        FormProduto.FormStyle := fsNormal;
        FormProduto.Visible := false;
        FormProduto.ShowModal;
      finally

        Bit_Estoque.Enabled          := False;
        Preencher_Combo_Produtos;
        CbRef.SetFocus;
      end;
     except
         //beep;
         uteis.erro  ('Ocorreu um erro na criação do formulário!');
     end;
end;

procedure TFormNfEntrada.Preencher_Combo_Produtos;
begin
    try
        SqlCdsRef.Close;
        SqlCdsRef.CommandText := SQLDEF('PRODUTOS','select PRD_REFER from PRD0000','','PRD_REFER','');
        SqlCdsRef.Open;
        CbRef.Items.Clear;
        CbRef.Items.Add('');
        SqlCdsRef.First;
        while not SqlCdsRef.Eof do
         begin
             CbRef.Items.Add(SqlCdsRefPRD_REFER.AsString);
             SqlCdsRef.Next;
         end;
        CbRef.ItemIndex := 0;
    except
      on E:EDataBaseError do
        begin
            uteis.erro  (pchar('Erro ao preencher a combo de produtos !'+#13#10+
                       'Mensagem erro: '+e.Message));
        end;
    end;
end;

procedure TFormNfEntrada.CurrIPIalteradoChange(Sender: tObject);
begin
    if (CurrIPIAlterado.Value <> 0) then
       begin
           BitConfIPIalter.Enabled := True;
           BitCancIPIalter.Enabled := True;
       end
    else
       begin
           BitConfIPIalter.Enabled := False;
           BitCancIPIalter.Enabled := False;
       end;
end;

procedure TFormNfEntrada.SpXPanIPIClick(Sender: tObject);
begin
    CurrIPIAlterado.Value := 0;
    HabObjetoIPI;
    PanIPI.Visible  := False;

end;

procedure TFormNfEntrada.BitConfIPIalterClick(Sender: tObject);
begin
    PanIPI.Visible := False;
    HabObjetoIPI;

end;

procedure TFormNfEntrada.DesObjetoIPI;
begin
    GrpTipoEntrada.Enabled   := False;
    //GrpDados.Enabled   := False;
    Grp003.Enabled   := False;
    GrpDigitaItens.Enabled   := False;
    PageControl1.Enabled   := False;
    Panel1.Enabled   := False;
    PanDados.Enabled := False;
end;

procedure TFormNfEntrada.edPedidodiretoExit(Sender: TObject);
begin
  inherited;
 if edPedidodireto.Text <> EmptyStr then
  begin
    edPedidodireto.Text := strzero(edPedidodireto.Text,6);
    OpenAux3('select * from ocp0000 where ocp_codigo = '+ QuotedStr(edPedidodireto.Text) + ' and emp_codigo = '+QuotedStr(DBInicio.empresa.emp_codigo));
    if qAux3.IsEmpty then
    begin
      edPedidodireto.Text := '';
      raise Exception.Create('Pedido compra inexistente');
    end;
    if qAux3.FieldByName('ocp_status').AsString = 'C' then
    begin
      edPedidodireto.Text := '';
      raise Exception.Create('Pedido de compra concluido');
    end;
    if MessageDlg('Deseja vincular o pedido a nota ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      ChamaPedidoCompraVincula(False);
    end;


  end;
end;

procedure TFormNfEntrada.HabObjetoIPI;
begin
    GrpTipoEntrada.Enabled   := True;
    //GrpDados.Enabled   := True;
    Grp003.Enabled   := True;
    GrpDigitaItens.Enabled   := True;
    PageControl1.Enabled   := True;
    Panel1.Enabled   := True;
    PanDados.Enabled := True;
end;



procedure TFormNfEntrada.Preencher_Combo_OP(const sTipo:String);
begin

   wSql1      := 'select O1.* from OPE0000 O1 ';
   wSeleciona := 'where (O1.OPE_TIPO = '+QuotedStr(sTipo)+
                 ' or ope_natureza IN ( '+QuotedStr('5901') +','+ QuotedStr('1901') +','+QuotedStr('5902') +','+ QuotedStr('5903') + ','+ QuotedStr('5925')+'))';

    if PesqFornecedor.idRetorno <> '' then
    Begin
     if ( PesqFornecedor.CDS.FieldByName('FOR_UF').AsString = dbInicio.Empresa.UF) then
        wSeleciona := wSeleciona + ' and O1.OPE_DENTRO = ''D'''
     else
        wSeleciona := wSeleciona + ' and O1.OPE_DENTRO = ''F''';
    End;

    wOrdem     := 'O1.OPE_NATUREZA,O1.OPE_DESCRI';
    SqlCdsOP.Close;
    SqlCdsOP.CommandText := SQLDEF('OPERACAOFISCAL',wSql1,wSeleciona,wOrdem,'O1.');
    SqlCdsOP.Open;
    SqlCdsOP.First;
    CbOP.Items.Clear;
    while not SqlCdsOP.Eof do
    begin
       CbOP.Items.Add(SqlCdsOPOPE_NATUREZA.AsString+' - '+SqlCdsOPOPE_DESCRI.AsString);
       SqlCdsOP.Next;
    end;
    CbOP.ItemIndex := -1;
end;

procedure TFormNfEntrada.CbOPClick(Sender: tObject);
begin
     if DataMovimento.CdsEnf.StatE=dsBrowse then
        DataMovimento.CdsEnf.Edit;

      if (CbOp.Text <> '') then
      begin
            DbeOPE_NATUREZA.Field.AsString := StrZero(Trim(Copy(CbOP.Text,01,04)),4);
            BuscaOperacaoNovo(iif(Copy(CbOp.Text,01,04)='',DbeOPE_NATUREZA.Text,Copy(CbOp.Text,01,04)),Copy(CbOp.Text,08,60));
      end;
end;

procedure TFormNfEntrada.CbOPExit(Sender: tObject);
begin

    if (ActiveControl<>nil)and(ActiveControl.Name <> 'Bit_Cancelar')and(ActiveControl.Name <> 'DbeOPE_NATUREZA') then
    begin
           if DataMovimento.CdsEnf.State in [dsEdit,dsInsert] then
           begin
              if (CbOp.Text <> '') then
              begin
                   DbeOPE_NATUREZA.Field.AsString := StrZero(Trim(Copy(CbOP.Text,01,04)),4);
                   BuscaOperacaoNovo(iif(Copy(CbOp.Text,01,04)='',DbeOPE_NATUREZA.Text,Copy(CbOp.Text,01,04)),Copy(CbOp.Text,08,60));
              end
              else
              begin
                 uteis.aviso('Entre com a Operação fiscal.');
                 DbeOPE_NATUREZA.SetFocus;
              end;
           end;
    end;
end;

Function TFormNfEntrada.BuscaOperacaoNovo(const pNat, pDescri: String):boolean;
begin
     result := SqlCdsOP.Locate('OPE_NATUREZA;OPE_DESCRI',VarArrayOf([pNat,pDescri]),[loPartialKey]);
     if result then
        wCod_Oper := SqlCdsOPOPE_CODIGO.AsString;
  if wCod_Oper <> '' then
  begin
    Bit_pagar.Enabled := BuscaUmDadoSqlAsString('SELECT COALESCE(OPE_SEMVLCOM,''N'') FROM OPE0000 WHERE OPE_CODIGO = '+QuotedStr(wCod_Oper) +
       ConcatSe(' AND ',DBInicio.ExclusivoSql('OPERACAOFISCAL') )) <> 'S' ;
  end
  else
      Bit_pagar.Enabled := False

end;

procedure TFormNfEntrada.BuscaOperacao;
begin
    if (SqlCdsOp.Locate('OPE_NATUREZA',StrZero(DbeOPE_NATUREZA.Text,4),[])) then
       begin
           wCod_Oper  := SqlCdsOpOPE_CODIGO.AsString;
           CbOp.Text  := SqlCdsOpOPE_NATUREZA.AsString+' - '+SqlCdsOpOPE_DESCRI.AsString;
       end;
    {else
       begin
           uteis.aviso('Operação Fiscal inexistente ou incorreta !');
           DbeOPE_NATUREZA.Text := '';

           DbeOPE_NATUREZA.SetFocus;
       end;}
end;

procedure TFormNfEntrada.Calcula_Vl_Icms;
begin
    if (CurrBaseIcms.Value > 0) then
       begin
           Curr_Vl_Icms.Value := ((CurrBaseIcms.Value * CurrVlICms.Value)/100);
       end;
end;


procedure TFormNfEntrada.CdsLoteProdutoPRDL_DATA_FABRICACAOGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
     if (SENDER.IsNull) OR (SENDER.AsDateTime=0) THEN
        TEXT := ''
     ELSE
        TEXT := DATETOSTR( SENDER.AsDateTime);
end;

procedure TFormNfEntrada.Carrega_Parametro_Sintegra_Padrao;
begin
  wSql1      := 'Select P1.SIN_MODE_NF,P1.SIN_SERIE_NF,P1.SIN_MODE_ENF,P1.SIN_SERIE_ENF from PRMT0001 P1';
  DataCadastros.sqlUpdate.Close;
  DataCadastros.SqlUpdate.sql.text :=SQLDEF('PARAMETROS',wSql1,'','','P1.');
  DataCadastros.sqlUpdate.Open;
end;

procedure TFormNfEntrada.FazerAlteracao(const sNF, sOrdemCompra, sCodFor,  sProduto, sQtdeRecebida: String; const sRepeticao, iRegistroItem:integer);
var
   iRegProduto:String;
  bIndustrRetorno : boolean;
  sdescrLote,
  ope_codigo : string;
begin
   try
     wSql1      := 'SELECT * from ENF_IT01 E1 ';
     wSeleciona := 'WHERE E1.ENF_REGISTRO = '+IntToStr(iRegistroItem);

     //
     iRegProduto := //
    dbInicio.BuscaUmDadoSqlAsString(
              SQLDEF('PRODUTOS','select prd_codigo from PRD0000 ','WHERE PRD_REFER ='+QuotedStr(sProduto),'','' )) ;


     DataCadastros.sqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.text :=SQLDEF('ORDENSCOMPRA',wSql1,wSeleciona,'','E1.');
     DataCadastros.sqlUpdate.Open;

     if (not DataCadastros.sqlUpdate.IsEmpty) then
     begin
    //     if (DataCadastros.sqlUpdate.FieldByName('ENF_ATUALIZA_ESTOQUE').AsString = 'S') then
         if cbMovimentaEstoque.Checked then
         begin
              bIndustrRetorno := False;

              if ( DataCadastros.sqlUpdate.FieldByName('ENF_CFOP').AsString <> '') OR
               (DataCadastros.sqlUpdate.FieldByName('OPE_CODIGO').AsString <> '') then
              begin
                If DataCadastros.sqlUpdate.FieldByName('OPE_CODIGO').AsString = '' then
                  ope_codigo := DBInicio.BuscaUmDadoSqlAsString(
                          SqlDef('OPERACAOFISCAL',
                          'select first 1 t1.OPE_CODIGO from OPE0000 T1 ',
                          'WHERE T1.OPE_NATUREZA = '+QuotedStr(DataCadastros.sqlUpdate.FieldByName('ENF_CFOP').AsString),'','T1.'))
                else
                  ope_codigo := DataCadastros.sqlUpdate.FieldByName('OPE_CODIGO').AsString;
                 OpenAux2('SELECT OPE_RETORNO_INDUST,OPE_ENTRADA_INDUST  FROM OPE0000  '+
                          ' WHERE OPE_CODIGO = '+QuotedStr(ope_codigo)) ;
                  bIndustrRetorno := qAux2.FieldByName('OPE_RETORNO_INDUST').AsString = 'S';


              end;
              if (DataCadastros.sqlUpdate.FieldByName('PRDL_REGISTRO').AsInteger <> 0 ) or not (DataCadastros.sqlUpdate.FieldByName('PRDL_REGISTRO').IsNull) then
                sdescrLote:= BuscaUmDadoSqlAsString(' select PRDL_LOTE from  PRD_LOTE WHERE  PRDL_REGISTRO = '+ IntToStr(DataCadastros.sqlUpdate.FieldByName('PRDL_REGISTRO').AsInteger));

               KardexLancamento(DataCadastros.sqlUpdate.FieldByName('ENF_REGISTRO').AsString,
                                'ENF',
                                DataCadastros.sqlUpdate.FieldByName('AMX_CODIGO').AsString,
                                '',
                                iRegProduto,
                                '',//grade
                                '',
                                iif(bIndustrRetorno,'E','S'),
                                sdescrLote,
                                inttostr(DataCadastros.sqlUpdate.FieldByName('PRDL_REGISTRO').AsInteger),   // como estav antes de alterar
                                'ENTRADA DE ITEM NOTA FISCAL (ALTERAÇÃO)',
                                Now,
                                DataCadastros.sqlUpdate.FieldByName('ENF_QTDE').AsFloat,
                                EdtNOTA.Text,
                                StrZero(EdtFor_Codigo.Text,EdtFor_Codigo.MaxLength)+'-'+PesqFornecedor.CDS.FieldByName('FOR_RAZAO').AsString,
                                DataCadastros.sqlUpdate.FieldByName('ENF_PRECO').AsFloat,'','','',sProduto);
         end;
     end;
     //Estorna Baixa do Pedido de Compra se Houver
     if (DataCadastros.sqlUpdate.FieldByName('OCI_REGISTRO').AsString <> '0')and(DataCadastros.sqlUpdate.FieldByName('OCI_REGISTRO').AsString <> '') then
     begin
           DataCadastros.sqlUpdate1.Close;
           DataCadastros.sqlUpdate1.sql.text:= 'UPDATE OCP_IT01 SET OCI_QTDER = OCI_QTDER - '+ValorAmericano(DataCadastros.sqlUpdate.FieldByName('ENF_QTDE_PEDIDO_COMPRA').AsString)+' WHERE OCI_REGISTRO = '+DataCadastros.sqlUpdate.FieldByName('OCI_REGISTRO').AsString;
           DataCadastros.sqlUpdate1.ExecSql;
           AtualizaSituacaoOC(DataCadastros.sqlUpdate.FieldByName('OCI_REGISTRO').AsString);
     end;
     DataCadastros.sqlUpdate.Close;

     {Excluir Item da Nota Fiscal de Entrada}
     wSql1      := 'Delete from ENF_IT01 E1 ';
     wSeleciona := 'WHERE E1.ENF_REGISTRO = '+IntToStr(iRegistroItem);

     //
     DataCadastros.sqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.text :=SQLDEF('ORDENSCOMPRA',wSql1,wSeleciona,'','E1.');
     DataCadastros.sqlUpdate.Execsql;
     {Diminiu a quantidade alterada}
     wSql1      := 'Update PRD_ENSA E1 SET E1.PES_QTDE = (PES_QTDE - '+ValorAmericano(sQtdeRecebida)+')';
     wSeleciona := 'WHERE E1.pes_numdoc = '''+sNF+''' AND E1.FOR_CODIGO = '''+sCodFor+''' AND E1.PRD_REFER = '''+sProduto+''' and E1.REPETICAO_REFER ='''+IntToStr(sRepeticao)+'''';
     DataCadastros.sqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.text :=SQLDEF('ORDENSCOMPRA',wSql1,wSeleciona,'','E1.');
     DataCadastros.sqlUpdate.Execsql;
     {Verifica se quantidade alterada Zerou}
     wSql1      := 'Select E1.PES_QTDE from PRD_ENSA E1 ';
     wSeleciona := 'WHERE E1.pes_numdoc = '''+sNF+''' AND E1.FOR_CODIGO = '''+sCodFor+''' AND E1.PRD_REFER = '''+sProduto+''' and E1.REPETICAO_REFER ='''+IntToStr(sRepeticao)+'''';
     DataCadastros.sqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.text :=SQLDEF('ORDENSCOMPRA',wSql1,wSeleciona,'','E1.');
     DataCadastros.sqlUpdate.Open;
     if (DataCadastros.sqlUpdate.FieldByName('PES_QTDE').AsFloat       <= 0) then
     begin
           {Excluir Movimento no Kardex quando Qtde <=0}
           wSql1      := 'Delete from PRD_ENSA E1 ';
           wSeleciona := 'WHERE E1.pes_numdoc = '''+sNF+''' AND E1.FOR_CODIGO = '''+sCodFor+''' AND E1.PRD_REFER = '''+sProduto+''' and E1.REPETICAO_REFER ='''+IntToStr(sRepeticao)+'''';
           DataCadastros.sqlUpdate.Close;
           DataCadastros.SqlUpdate.sql.text :=SQLDEF('ORDENSCOMPRA',wSql1,wSeleciona,'','E1.');
           DataCadastros.sqlUpdate.Execsql;
     end;
     //


   except
    on E:EDataBaseError do
      begin
         uteis.erro  (pchar('Impossível fazer Alteração no Item de Compra !'+#13#10+
                    'Mensagem erro: '+e.message));
      end;
   end;
end;

procedure TFormNfEntrada.BuscaSaldo(const sRefer: String);
begin
    wSql1     := 'Select P1.PRD_CODIGO,P1.PRD_REFER,P1.PRD_DESCRI,P2.PTI_SIGLA,P2.PTI_ATUALIZAR_ESTOQUE,P3.PGR_ATUALIZA_ESTOQUE,P1.PRD_PVENDA,P1.PRD_DCVAR1,P1.PRD_DCVAR2,P1.PRD_DCVAR3,P1.PRD_DCVAR4,P1.PRD_DCVAR5,';
    wSql2     := 'P1.PRD_DCVAR6,P1.PRD_DCVAR7,P1.PRD_DCVAR8,P1.PGR_CODIGO,I1.IPI_ALIQ,((P1.PRD_ESTOQUE + P1.PRD_ENTRADA)-(P1.PRD_SAIDA+P1.PRD_RESERVA+P1.PRD_EMPENHO)) as PRD_QDTE from PRD0000 P1 ';
    wSql3     := 'LEFT JOIN IPI0000 I1 ON (P1.IPI_CODIGO = I1.IPI_CODIGO) LEFT JOIN PRD_TIPO P2 ON (P2.PTI_CODIGO = P1.PTI_CODIGO) LEFT JOIN PRD_GRUPO P3 ON (P1.PGR_CODIGO = P3.PGR_CODIGO) ';

    wSeleciona := 'where P1.PRD_REFER = '''+CbRef.Text+'''';
    wOrdem     := 'P1.PRD_REFER ';
    //
    CdsConsultaEstoque.Close;
    CdsConsultaEstoque.CommandText := SQLDEF('PRODUTOS',wSql1+wSql2+wSql3,wSeleciona,wOrdem,'P1.');
    CdsConsultaEstoque.Open;
    if not CdsConsultaEstoque.IsEmpty  then
       begin
           if (dbInicio.Empresa.wMultiAlmox = 'S') then
              CurrSaldo.Value := GetSaldoEstoque(EdtAlmox.Text)
           else
              CurrSaldo.Value := GetSaldoEstoque('') ;

           BuscaProdutoLote;

       end
    else
       begin
           uteis.aviso('Não há produto cadastrado com a referência informada !');
           CbRef.SetFocus;
       end;
end;

function TFormNfEntrada.GetSaldoEstoque(const pAlmox:String): Currency;
begin

     result := dbInicio.BuscaUmDadoSqlAsCurrency( 'SELECT AMX_SALDO_RET FROM pCd_kardex_saldo('+qStr(dbInicio.Empresa.EMP_CODIGO)+','+qStr(SqlCdsGridSemOCPRD_CODIGO.AsString)+','+
                                                  iif( pAlmox<>'' , qstr(pAlmox) , 'null' )+' )' ) - SqlCdsGridSemOCPRD_SAIDA.AsFloat      ;
end;

procedure TFormNfEntrada.Atualiza_Dados_Utl_Compra(const sProduto,sAcao: String);
begin
   try
     if (sAcao = 'I') then
     begin
           DataCadastros.sqlUpdate.Close;
           DataCadastros.SqlUpdate.sql.text := 'Update prd0000 set FOR_CODIGO_ANT = FOR_CODIGO,'+
                                               '                   PRD_DT_ULT_COMPRA_ANT = PRD_DT_ULT_COMPRA, '+
                                               '                   PRD_VL_ULT_COMPRA_ANT = PRD_VL_ULT_COMPRA, '+
                                               '                   PRD_NF_ULT_COMPRA_ANT = PRD_NF_ULT_COMPRA, '+
                                               '                   FOR_CODIGO = '+qStr(EdtFor_Codigo.Text)+', '+
                                               '                   PRD_DT_ULT_COMPRA = '+qStr(DataAmericana(DbeENF_EMISSAO.text))+', '+
                                               '                   PRD_VL_ULT_COMPRA = '+qStr(ValorAmericano(FloatToStr(wCustoIPI)))+', '+
                                               '                   PRD_NF_ULT_COMPRA = '+qStr(EdtNota.Text)+' '+
                                               'where prd_refer='+qStr(sProduto)+ConcatSe(' and ',dbInicio.ExclusivoSql('produtos'));
           DataCadastros.sqlUpdate.Execsql;

     end
     else
     if (sAcao = 'E') then
     begin
           {Grava os Dados Anterior}
           {Monta Sql}
           FrmMenu.RwSqlGeralCmd.MontarSql      := False;
           FrmMenu.RwSqlGeralCmd.ResetaCampos   := True;
           FrmMenu.RwSqlGeralCmd.CodigoEmpresa  := StrToInt(dbInicio.Empresa.EMP_CODIGO);
           FrmMenu.RwSqlGeralCmd.MultiEmpresa   := True;
           FrmMenu.RwSqlGeralCmd.TipoSql        := Atualizar;
           FrmMenu.RwSqlGeralCmd.Apelido        := '';
           FrmMenu.RwSqlGeralCmd.Campos         := 'FOR_CODIGO = FOR_CODIGO_ANT,'+
                                                   'PRD_DT_ULT_COMPRA = PRD_DT_ULT_COMPRA_ANT,'+
                                                   'PRD_VL_ULT_COMPRA = PRD_VL_ULT_COMPRA_ANT,'+
                                                   'PRD_NF_ULT_COMPRA = PRD_NF_ULT_COMPRA_ANT';
           FrmMenu.RwSqlGeralCmd.Tabela         := 'PRD0000';
           FrmMenu.RwSqlGeralCmd.Compartilhar   := 'PRODUTOS';
           FrmMenu.RwSqlGeralCmd.Condicao       := 'PRD_REFER = '''+sProduto+'''';
           FrmMenu.RwSqlGeralCmd.MontarSql      := True;
           //
           DataCadastros.sqlUpdate.Close;
           DataCadastros.SqlUpdate.sql.text :=FrmMenu.RwSqlGeralCmd.ComandoSql;
           DataCadastros.sqlUpdate.Execsql;
        end;
   except
     on E:EDataBaseError do
       begin
          uteis.erro  (pchar('Erro ao atualizar os dados do última compra !'+#13#10+
                     'Mensagem erro: '+e.Message));
       end;
   end;
end;

function TFormNfEntrada.RetornaParametroRateioICMSProd: Boolean;
 Var
   QryReg:TSQLQuery;
begin
   QryReg := TSQLQuery.Create(Nil);
   try
     QryReg.SQLConnection := DataCadastros.SQLConnection1;
     QryReg.SQL.Clear;
     QryReg.SQL.Add('SELECT T1.PMT_RETIRA_VLR_ICMS_NF_E FROM PRMT0001 T1 WHERE T1.EMP_CODIGO = '+dbInicio.Empresa.EMP_CODIGO+'');
     QryReg.Open;
     Result := IIF(QryReg.Fields[0].AsString = 'S',true,false);
   finally
     FreeAndNil(QryReg);
   end;
end;

procedure TFormNfEntrada.RealizaRateioRetiradaICMSCustoProd;
var
   rICMS, rPRODUTOS, rFATOR, rRESULTADO, rValorDigitado:Real;
begin
   rICMS     := Curr_Vl_Icms.Value;
   rPRODUTOS := Curr_Valor_Produtos.Value;
   rFATOR    := rICMS/rPRODUTOS;
   if (RadComOC.Checked) then
      SqlCdsGridComOC.First
   else
      SqlCdsGridSemOC.First;

   if (RetornaParametroRateioICMSProd  and (rICMS>0)) then
      begin
         if (not SqlCdsGridComOC.IsEmpty) then
         while (not SqlCdsGridComOC.Eof) do
            begin
               //Verifica se atualiza Custo
               if (SqlCdsGridComOCENF_ATUALIZA_PRECO.AsString = 'S') then
                  begin
                     rRESULTADO := SqlCdsGridComOCOCI_PRECO.AsFloat      -((SqlCdsGridComOCOCI_TOTAL_CC.AsFloat*rFATOR)/SqlCdsGridComOCENTRADA_CC.AsFloat      );
                     wSql1 :='Update PRD0000 Set PRD_PCUSTO   = '+ValorAmericano(FloatToStr(rRESULTADO))+'';
                          //
                     DataCadastros.sqlUpdate.Close;
                     DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,'WHERE PRD_REFER = '''+SqlCdsGridComOCPRD_REFER.AsString+'''','','');
                     DataCadastros.sqlUpdate.Execsql;
                  end;
               SqlCdsGridComOC.Next;
            end
         else
         if (not SqlCdsGridSemOC.IsEmpty) then
         while (not SqlCdsGridSemOC.Eof) do
            begin
               //Verifica se atualiza Custo
               if (SqlCdsGridSemOCENF_ATUALIZA_PRECO.AsString = 'S') then
                  begin
                     rRESULTADO := SqlCdsGridSemOCENF_PRECO.AsFloat      -((SqlCdsGridSemOCVL_TOTAL_CC.AsFloat*rFATOR)/SqlCdsGridSemOCENF_QTDE.AsFloat      );
                     wSql1 :='Update PRD0000 Set PRD_PCUSTO   = '+ValorAmericano(FloatToStr(rRESULTADO))+'';
                          //
                     DataCadastros.sqlUpdate.Close;
                     DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,'WHERE PRD_REFER = '''+SqlCdsGridSemOCPRD_REFER.AsString+'''','','');
                     DataCadastros.sqlUpdate.Execsql;
                  end;
               SqlCdsGridSemOC.Next;
            end;
      end;
end;

procedure TFormNfEntrada.CrCfopItemExit(Sender: tObject);
begin
   CrCfopItem.Text := StrZero(CrCfopItem.Text,4);
   if CrCfopItem.Text = '5902' then
   Begin
    EdtAlmox.Clear;
    CbAlmox.ItemIndex := -1;

   End;

end;

procedure TFormNfEntrada.BitExcluirClick(Sender: tObject);
begin
   if (not DataMovimento.CdsEnf.IsEmpty)   then
      begin
         if (uteis.confirmacao  ( 'Gostaria de Excluir o Conhecimento de Transporte?')=mrYes) then
            begin
               DataMovimento.CdsEnf.Delete;
               //
               DataMovimento.CdsEnf.ApplyUpdates(0);
               DataMovimento.CdsEnf.Close;
               HabilitaBotoes;
               HabilitaDados;
               SqlCdsGridComOC.Close;
               SqlCdsGridSemOC.Close;
               DesabilitaDados;
               if (Length(Edt_Almox_ant.Text)>0) then
                  Edt_Almox_ant.Clear;
               GrpTipoEntrada.Enabled        := true;
               wLimpar               := false;
               wAchouNF              := false;
               Limpar;
               Limparitens;
               LayOutENF;
               // BitExcluir.Enabled := False;

            end;
      end
end;

procedure TFormNfEntrada.DBeENF_SERIEKeyPress(Sender: tObject;
  var Key: Char);
begin
   key := upcase(key);
end;

procedure TFormNfEntrada.CurrVlSTExit(Sender: tObject);
begin
  if CurrVlST.Value > 0 then
   CalcTotais;
end;

procedure TFormNfEntrada.DbeCCT_CODIGOEnter(Sender: tObject);
begin
  if DbeCCT_CODIGO.Text = '' then
     Busca_conta_finan;

end;

procedure TFormNfEntrada.CbRefClick(Sender: tObject);
begin
  if not VerDados  then
       exit;
end;

procedure TFormNfEntrada.DbeChaveNFeExit(Sender: tObject);
begin
 if (Length(trim(DbeChaveNFe.Text)) > 0) and (DataMovimento.CdsEnfENF_MODELO_NF.AsString = '')  then
    // é nota eletronica modelo 55
    begin
    DataMovimento.CdsEnfENF_MODELO_NF.AsString := '55';
    DataMovimento.CdsEnfENF_SERIE.AsString     := '1';
    end;
  if (Length(trim(DbeChaveNFe.Text)) > 0) and (DataMovimento.CdsEnfENF_MODELO_NF.AsString = '') then
    // é nota eletronica modelo 55
    begin
    DataMovimento.CdsEnfENF_MODELO_NF.AsString := '57';
    DataMovimento.CdsEnfENF_SERIE.AsString     := '0';
    end;


end;

procedure TFormNfEntrada.BitLocalizarNotaClick(Sender: tObject);
begin
   RadSemOC.Checked := True;
   FormConsNFGrid := TFormConsNFGrid.Create(Application);
   FormConsNFGrid.BotoesAcesso;
   try
     FormConsNFGrid.FormStyle := fsNormal;
     FormConsNFGrid.Visible := false;
     FormConsNFGrid.ShowModal;
     if FormConsNFGrid.ModalResult = mrOk then
       PesqFornecedor.idRetorno := StrZero(EdtFor_Codigo.Text,EdtFor_Codigo.MaxLength)
     else
     begin
        Limpar;
        Limparitens;
        SqlCdsGridSemOC.Close;
     end;
   finally
     FreeAndNil(FormConsNFGrid);
   end;

   //EdtFor_Codigo.Text := StrZero(EdtFor_Codigo.Text,EdtFor_Codigo.MaxLength);
   if PesqFornecedor.idRetorno <> '' then
   begin
    VerificaNF;
    Preencher_Combo_OP('E');
   end;
   LayOutENF;


   DataMovimento.CdsEnf.Cancel;
   habilitaBotoes;

end;

procedure TFormNfEntrada.BuscaOperacaoCFOP(const pNat: String);
begin
    if (SqlCdsOP.Locate('OPE_NATUREZA',VarArrayOf([pNat]),[loPartialKey])) then
       begin
           wCod_Oper := SqlCdsOPOPE_CODIGO.AsString;
       end
    {else
       begin
           uteis.aviso('Operação Fiscal inexistente ou incorreta !');
           DbeOPE_NATUREZA.Text := '';

           DbeOPE_NATUREZA.SetFocus;
       end;}
end;

procedure TFormNfEntrada.btnAlterarDataClick(Sender: tObject);
var
   data:TDate;
   sDate:string;
begin
   try
      sDate := InputBox('Alteração da Data de Entrada do XML', 'Informe a Data de Entrada (DD/MM/AAAA)', DataMovimento.CdsEnfENF_ENTRADA.AsString);
      if (Trim(sDate) <> '') then
         begin
            data := StrToDate(sDate);
            if DataMovimento.CdsEnf.State in [dsBrowse] then
               DataMovimento.CdsEnf.Edit;
            DataMovimento.CdsEnfENF_ENTRADA.AsDateTime := data;
            DataMovimento.CdsEnf.ApplyUpdates(0);
         end;
   except
      uteis.aviso('Data informada inválida');
   end;
end;

procedure TFormNfEntrada.btnDanfeClick(Sender: tObject);
begin
   //ACBrNFeDANFEFR1.FastFile := dbInicio.SistemaLocal+'DANFE.fr3';
   acbrnf1.NotasFiscais.Clear;
   if acbrnf1.NotasFiscais.LoadFromString(DataMovimento.CdsEnfENF_XML.AsString) then
     acbrnf1.NotasFiscais.Imprimir;
end;

procedure TFormNfEntrada.btnDevolucao2Click(Sender: TObject);
begin
  inherited;
  if not Assigned(frmDevolucaoNotaEntrada) then
    frmDevolucaoNotaEntrada := TfrmDevolucaoNotaEntrada.Create(nil);
  frmDevolucaoNotaEntrada.ShowModal;
end;

procedure TFormNfEntrada.btnDevolucaoClick(Sender: TObject);
begin
  inherited;
  if not Assigned(frmDevolucaoNotaEntrada) then
    frmDevolucaoNotaEntrada := TfrmDevolucaoNotaEntrada.Create(nil);
  frmDevolucaoNotaEntrada.ShowModal;
end;

procedure TFormNfEntrada.CbCtaAnaliseChange(Sender: tObject);
begin
  Bit_Gravar.Enabled := true;
   if DataMovimento.CdsEnf.STATE=dsBrowse then
      DataMovimento.CdsEnf.Edit;
     if SqlCdsCta.Locate('CCT_DESCRI',CbCtaAnalise.Text,[loCaseInsensitive]) then
     begin
          CbCtaAnalise.Text  := SqlCdsCtaCCT_DESCRI.AsString;
          DbeCCT_CODIGO.Text := SqlCdsCtaCCT_CODIGO.AsString;
     end
     else
         DbeCCT_CODIGO.Text := '';
end;

procedure TFormNfEntrada.BuscaProdutoLote;
begin
   CdsLoteProduto.Close;
   CdsLoteProduto.CommandText := SQLDEF('PRODUTOS','SELECT * from PRD_LOTE','where PRD_CODIGO = '+qStr(RetornaProdutoReferencia(CBrEF.Text)),'PRD_CODIGO','');
   CdsLoteProduto.Open;
end;

procedure TFormNfEntrada.CurItemValorICMSEnter(Sender: tObject);
begin
   if (CurItemBaseICMS.Value > 0)and(CurItemAliquotaICMS.Value > 0) then
      begin
         CurItemValorICMS.Value := CurItemBaseICMS.Value * (CurItemAliquotaICMS.Value / 100);
      end;
end;

procedure TFormNfEntrada.CurItemValorICMSSTEnter(Sender: tObject);
begin
   if (CurItemBaseICMSST.Value > 0)and(CurItemAliquotaICMSST.Value > 0) then
      begin
         CurItemValorICMSST.Value := CurItemBaseICMSST.Value * (CurItemAliquotaICMSST.Value / 100);
      end;
end;

procedure TFormNfEntrada.CurItemValorIPIEnter(Sender: tObject);
begin
   if (CurItemBaseIPI.Value > 0)and(CurItemAliquotaIPI.Value > 0) then
      begin
         CurItemValorIPI.Value := CurItemBaseIPI.Value * (CurItemAliquotaIPI.Value / 100);
      end;
end;

procedure TFormNfEntrada.CurItemValorPISEnter(Sender: tObject);
begin
   if (CurItemBasePIS.Value > 0)and(CurItemAliquotaPIS.Value > 0) then
      begin
         CurItemValorPIS.Value := CurItemBasePIS.Value * (CurItemAliquotaPIS.Value / 100);
      end;
end;

procedure TFormNfEntrada.CurItemValorCofinsEnter(Sender: tObject);
begin
   if (CurItemBaseCofins.Value > 0)and(CurItemAliquotaCofins.Value > 0) then
      begin
         CurItemValorCofins.Value := CurItemBaseCofins.Value * (CurItemAliquotaCofins.Value / 100);
      end;
end;

procedure TFormNfEntrada.btnPedidoCompraUnicoClick(Sender: tObject);
begin
   if (CbRef.Text = '') then
      begin
         uteis.aviso('Informe a referência');
         CbRef.SetFocus;
      end
   else
      ChamaPedidoCompraVincula(True);
end;

procedure TFormNfEntrada.ChamaPedidoCompraVincula(bUnica: Boolean);
begin
   if (not bUnica) then
      begin
         if (VerDados) then
            begin
              FormNfEntradaPedidoCompra := TFormNfEntradaPedidoCompra.Create(Application);
               try
                  if (edPedidodireto.Text <> EmptyStr) and (edPedidodireto.Text <> '000000') then
                     FormNfEntradaPedidoCompra.ocp_codigo := edPedidodireto.Text;

                  FormNfEntradaPedidoCompra.sFornecedor := EdtFor_Codigo.Text;
                  FormNfEntradaPedidoCompra.nota := EdtNota.Text;
                  FormNfEntradaPedidoCompra.bVinculacaoUnica :=  bUnica;
                  FormNfEntradaPedidoCompra.ShowModal;
               finally
                  FormNfEntradaPedidoCompra.Destroy;
                  FormNfEntradaPedidoCompra :=nil;
               end;
               BuscaItensNF;
               CalcTotais;
            end;
      end
   else
      begin
          FormNfEntradaPedidoCompra := TFormNfEntradaPedidoCompra.Create(Application);
         try
            FormNfEntradaPedidoCompra.nota := EdtNota.Text;
            FormNfEntradaPedidoCompra.sFornecedor := EdtFor_Codigo.Text;
            FormNfEntradaPedidoCompra.bVinculacaoUnica :=  bUnica;
            FormNfEntradaPedidoCompra.edtReferencia.Text := CbRef.Text;
            FormNfEntradaPedidoCompra.edtDescricao.Text := EdDescricao.Text;
            FormNfEntradaPedidoCompra.CurQuantidade.Value := CurrQtdeR.Value;
            FormNfEntradaPedidoCompra.CurPreco.Value := CurrPreco.Value;
            FormNfEntradaPedidoCompra.sRegistroAlteracao := SqlCdsGridSemOCOCI_REGISTRO.AsString;
            FormNfEntradaPedidoCompra.CurQuantidadeOrdemCompra.Value := SqlCdsGridSemOCENF_QTDE_PEDIDO_COMPRA.AsCurrency;  
            FormNfEntradaPedidoCompra.ShowModal;
         finally
            FormNfEntradaPedidoCompra.Destroy;
            FormNfEntradaPedidoCompra :=nil;
         end;
      end;

end;

procedure TFormNfEntrada.btnLimparOcClick(Sender: tObject);
begin
   edtItemOrdemCompra.Clear;
   edtRegistroOrdemCompraItem.Clear;
   CurItemOrdemCompraBaixada.Clear;
end;

procedure TFormNfEntrada.btnOutrosCustosClick(Sender: TObject);
begin
  inherited;
  pOutrosCustos.Top := btnOutrosCustos.Top+122;
  pOutrosCustos.Left:= btnOutrosCustos.Left-244 ;
  pOutrosCustos.Parent := FormNfEntrada;
  AnimateWindow(pOutrosCustos.Handle, 500, AW_HOR_POSITIVE or AW_SLIDE or  AW_ACTIVATE);
  pOutrosCustos.Visible := true;
end;

procedure TFormNfEntrada.btnCadastroLoteClick(Sender: tObject);
begin
   if (wPrdCodigo = '') then
         uteis.aviso('selecione um produto')
   else
   begin
      FrmCadastroProdutoLote := TFrmCadastroProdutoLote.Create(Application);
      try
        FrmCadastroProdutoLote.sPrdCodido := wPrdCodigo;
        FrmCadastroProdutoLote.ShowModal;
      finally
        FreeAndNil(FrmCadastroProdutoLote);
      end;
      CdsLoteProduto.Refresh;
      end;
end;

procedure TFormNfEntrada.btnCancelarOutrosClick(Sender: TObject);
begin
  inherited;
  AnimateWindow(pOutrosCustos.Handle, 500, AW_HOR_NEGATIVE or  AW_HIDE);
  pOutrosCustos.Visible := false;
end;

procedure TFormNfEntrada.CurItemAliquotaICMSRapidaExit(Sender: tObject);
begin
   if (CurItemAliquotaICMSRapida.Value <> CurItemAliquotaICMS.Value)or(CurItemBaseICMS.Value <> (CurrQtdeR.Value * CurrPreco.Value)) then
      begin
         CurItemBaseICMS.Value := CurrQtdeR.Value * CurrPreco.Value;
         CurItemAliquotaICMS.Value := CurItemAliquotaICMSRapida.Value;
         CurItemValorICMSEnter(Sender);
      end;
end;

procedure TFormNfEntrada.CurItemAliquotaIPIRapidaExit(Sender: tObject);
begin
   if (CurItemAliquotaIPIRapida.Value <> CurItemAliquotaIPI.Value)or(CurItemBaseIPI.Value  <> (CurrQtdeR.Value * CurrPreco.Value)) then
      begin
         CurItemBaseIPI.Value := CurrQtdeR.Value * CurrPreco.Value;
         CurItemAliquotaIPI.Value := CurItemAliquotaIPIRapida.Value;
         CurItemValorIPIEnter(Sender);
      end;
end;

procedure TFormNfEntrada.RealizaAtualizacaoCustosEntrada;
   var
      rTmpQuantidade,
      rTmp_Custo,
      wPIS_CRED,
      wCOFINS_CRED,
      wICMS_valor,
      wCUSTO_CREDITO,
      wIPI_valor,
      wPERC_RATEIO,
      wVLR_AGREGADO,
      wValor_frete,
      wValor_despesas,
      wValor_seguro,
      wValor_FreteFora,
      wValor_Diff_ICMS,
      wValor_Outros,

      wValor_subTrib,
      wCUSTO_MEDIO,
      wEstoque,
      wFinaliza:Double;
      sFornecedor:string;
  ValorImpostosRetirados : Double;
  porFora: boolean;
begin
     //Rateia frete Custo e Despesas nos itens
     porFora := DBInicio.GetParametroSistema('PMT_METODO_CALCULO_PRECO') = '0';  // o cálculo é feito por fora? True   por dentro? False
     rTmpQuantidade := 0;
     rTmp_Custo := 0;
     wCustoIPI := 0;
     wPIS_CRED := 0;
     wCOFINS_CRED := 0;
     wICMS_valor := 0;
     wCUSTO_CREDITO := 0;
     wIPI_valor := 0;
     wPERC_RATEIO := 0;
     wVLR_AGREGADO := 0;
     wValor_frete := 0;
     wValor_FreteFora := 0;
     wValor_Diff_ICMS := 0;
     wValor_Outros  := 0 ;

     wValor_despesas := 0;
     wValor_subTrib := 0;
     wCUSTO_MEDIO := 0;
     wEstoque := 0;
     wFinaliza := 0;

     sFornecedor := EdtFor_Codigo.Text;

     SqlCdsGridSemOC.First;
     while (not SqlCdsGridSemOC.Eof) do
     begin
         rTmpQuantidade := SqlCdsGridSemOCENF_QTDE.AsFloat;
         rTmp_Custo     := SqlCdsGridSemOCENF_PRECO.AsFloat;
         wVLR_AGREGADO := rTmp_Custo;
         if (SqlCdsGridSemOCENF_IT_DESCTO.AsFloat > 0)and(rTmpQuantidade > 0) then
            rTmp_Custo := rTmp_Custo - (SqlCdsGridSemOCENF_IT_DESCTO.AsFloat / rTmpQuantidade);

         wCustoIPI      := rTmp_Custo;
         if (SqlCdsGridSemOCENF_IT_VLIPI.AsFloat > 0) then
         begin
               wCustoIPI := wCustoIPI + (SqlCdsGridSemOCENF_IT_VLIPI.AsFloat / rTmpQuantidade);
               wIPI_valor := (SqlCdsGridSemOCENF_IT_VLIPI.AsFloat / rTmpQuantidade);
         end
         else
         begin
               wCustoIPI := 0;
               wIPI_valor := 0;
         end;
         // buscar PIS E COFINS Na Operação Fiscal para calculo do CUSTO COM CREDITO

         BuscaOperacaoNovo(iif(Copy(CbOp.Text,01,04)='',DbeOPE_NATUREZA.Text,Copy(CbOp.Text,01,04)),
                           Copy(CbOp.Text,08,60));

         if SqlCdsGridSemOCENF_IT_VLPIS.AsFloat>0 then
           wPIS_CRED := SqlCdsGridSemOCENF_IT_VLPIS.AsFloat/ rTmpQuantidade;

         if SqlCdsGridSemOCENF_IT_VLCOFINS.AsFloat>0 then
           wCOFINS_CRED := SqlCdsGridSemOCENF_IT_VLCOFINS.AsFloat / rTmpQuantidade;

         if SqlCdsGridSemOCENF_ICMS.AsFloat>0 then
           wICMS_valor := SqlCdsGridSemOCENF_ICMS.AsFloat / rTmpQuantidade;
         wCUSTO_CREDITO := (wPIS_CRED + wCOFINS_CRED + wICMS_valor);

         if (wCUSTO_CREDITO > 0) then
            wCUSTO_CREDITO := wCUSTO_CREDITO / rTmpQuantidade;

         wVLR_AGREGADO :=wVLR_AGREGADO+ wIPI_valor;

         //rateio de frete
         wPERC_RATEIO   := (((rTmpQuantidade * rTmp_Custo) * 100)/Curr_Valor_Produtos.Value);
         wValor_frete  := (((wPERC_RATEIO * CurrVlFrete.Value) / 100) / rTmpQuantidade);
         wVLR_AGREGADO := wVLR_AGREGADO + wvalor_frete;

         //rateio de depesas acessorias
         wPERC_RATEIO  := (((rTmpQuantidade * rTmp_Custo) * 100)/Curr_Valor_Produtos.Value);
         wValor_despesas:= (((wPERC_RATEIO * CurrVlDespesas.Value) / 100) / rTmpQuantidade);
         wVLR_AGREGADO := wVLR_AGREGADO + wvalor_despesas;

         //rateio de seguro
         wPERC_RATEIO  := (((rTmpQuantidade * rTmp_Custo) * 100)/Curr_Valor_Produtos.Value);
         wValor_seguro := (((wPERC_RATEIO * CurrVlSeguro.Value) / 100) / rTmpQuantidade);
         wVLR_AGREGADO := wVLR_AGREGADO + wValor_seguro;

        //Frete por fora
        wPERC_RATEIO  := (((rTmpQuantidade * rTmp_Custo) * 100)/Curr_Valor_Produtos.Value);
        wValor_FreteFora := (((wPERC_RATEIO * currFrete.Value) / 100) / rTmpQuantidade);
        wVLR_AGREGADO := wVLR_AGREGADO + wValor_FreteFora;

        //diferença de ICMS
        wPERC_RATEIO  := (((rTmpQuantidade * rTmp_Custo) * 100)/Curr_Valor_Produtos.Value);
        wValor_Diff_ICMS := (((wPERC_RATEIO * currDifICMS.Value) / 100) / rTmpQuantidade);
        wVLR_AGREGADO := wVLR_AGREGADO + wValor_Diff_ICMS;

        //OUTROS VALORES
        wPERC_RATEIO  := (((rTmpQuantidade * rTmp_Custo) * 100)/Curr_Valor_Produtos.Value);
        wValor_Outros := (((wPERC_RATEIO * currOutros.Value) / 100) / rTmpQuantidade);
        wVLR_AGREGADO := wVLR_AGREGADO + wValor_Outros ;

         //rateio da substituição tributária
         if (SqlCdsGridSemOCENF_VLSUBST.AsFloat > 0) then
          wValor_subTrib:= (SqlCdsGridSemOCENF_VLSUBST.AsFloat / rTmpQuantidade)
         else
          wValor_subTrib:=0;
         wVLR_AGREGADO := wVLR_AGREGADO + wValor_subTrib;

         if DBInicio.Empresa.PMT_ICMS_CUSTOENTRADA then //retirar imcs
              ValorImpostosRetirados := wICMS_valor
           else
            ValorImpostosRetirados :=0;

           if DBInicio.Empresa.PMT_PIS_CUSTOENTRADA then // retirar pis/cofins
              ValorImpostosRetirados := ValorImpostosRetirados + (wPIS_CRED + wCOFINS_CRED ) ;

          wVLR_AGREGADO := wVLR_AGREGADO - ValorImpostosRetirados;

         //custo medio
         if not DataCadastros.CdsProdutos.Active then
            DataCadastros.CdsProdutos.Open;
         DataCadastros.CdsProdutos.Locate('PRD_REFER', SqlCdsGridSemOCPRD_REFER.AsString,[]);

         wEstoque := KardexRetornaSaldo(DataCadastros.CdsProdutosPRD_CODIGO.AsString, EdtAlmox.Text, '');

         if (wEstoque < 0) then
            wEstoque := 0;
         // preco medio pelo custo liquido
         if (dbInicio.Empresa.wCalcularPM = 0) or (dbInicio.Empresa.wCalcularPM = Null) then
         begin
           if DataCadastros.CdsProdutosPRD_PMEDIO.AsFloat       > 0 then
             wCUSTO_MEDIO := (((rTmp_Custo * rTmpQuantidade) + (DataCadastros.CdsProdutosPRD_PMEDIO.AsFloat       * wEstoque      )) / (rTmpQuantidade + wEstoque      ))
           else
           if DataCadastros.CdsProdutosPRD_PCUSTO.AsFloat       > 0 then
            wCUSTO_MEDIO := (((rTmp_Custo * rTmpQuantidade) + (DataCadastros.CdsProdutosPRD_PCUSTO.AsFloat       * wEstoque      )) / (rTmpQuantidade + wEstoque      ))
           else
            wCUSTO_MEDIO := (rTmp_Custo);
         end;
         //preco medio pelo custo agregado (custo de entrada)
         if dbInicio.Empresa.wCalcularPM = 1 then
         begin
           if DataCadastros.CdsProdutosPRD_PMEDIO.AsFloat       > 0 then
             wCUSTO_MEDIO := ((((wVLR_AGREGADO) * rTmpQuantidade) + (DataCadastros.CdsProdutosPRD_PMEDIO.AsFloat       * wEstoque      )) / (rTmpQuantidade + wEstoque      ))
            else
           if DataCadastros.CdsProdutosPRD_PCUSTO.AsFloat       > 0 then
            wCUSTO_MEDIO := ((((wVLR_AGREGADO) * rTmpQuantidade) + (DataCadastros.CdsProdutosPRD_PCUSTO.AsFloat       * wEstoque      )) / (rTmpQuantidade + wEstoque      ))
            else
            wCUSTO_MEDIO := (wVLR_AGREGADO);
         end;
         //preco medio pelo custo com credito (sem impostos)
         if dbInicio.Empresa.wCalcularPM = 2 then
         begin
           if DataCadastros.CdsProdutosPRD_PMEDIO.AsFloat       > 0 then
             wCUSTO_MEDIO := ((((rTmp_Custo - wCUSTO_CREDITO) * rTmpQuantidade) + (DataCadastros.CdsProdutosPRD_PMEDIO.AsFloat       * wEstoque      )) / (rTmpQuantidade + wEstoque      ))
            else
           if DataCadastros.CdsProdutosPRD_PCUSTO.AsFloat       > 0 then
            wCUSTO_MEDIO := ((((rTmp_Custo - wCUSTO_CREDITO) * rTmpQuantidade) + (DataCadastros.CdsProdutosPRD_PCUSTO.AsFloat       * wEstoque      )) / (rTmpQuantidade + wEstoque      ))
            else
            wCUSTO_MEDIO := (rTmp_Custo);
         end;

         if IsNaN(wCUSTO_MEDIO) then
             wCUSTO_MEDIO := (rTmp_Custo);
         if IsInfinite(wCUSTO_MEDIO) then
             wCUSTO_MEDIO := (rTmp_Custo);
         //Atualiza Rateio nos itens
         wSql1 :='Update ENF_IT01 Set ENF_IT_VALFRETE  = '+ValorAmericano(FloatToStr((wValor_frete * rTmpQuantidade)))+''+
                                         ', ENF_IT_VLSEGURO = '+ValorAmericano(FloatToStr(wValor_seguro * rTmpQuantidade))+''+
                                         ', ENF_IT_VLDESP_ACES   = '+ValorAmericano(FloatToStr(wValor_despesas * rTmpQuantidade))+'';
         if dbinicio.Empresa.wPMT_NAO_AUTO_PVENDA then
           wAtualiza_pvenda := 'N'
         else if (wAtualiza_pvenda = '') and (PesqFornecedor.idRetorno <> '') then
           wAtualiza_pvenda  := PesqFornecedor.CDS.FieldByName('FOR_ATUALIZA_PVENDA').AsString;

         //
         DataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,'WHERE ENF_REGISTRO = '''+SqlCdsGridSemOCENF_REGISTRO.AsString+'''','','');
         DataCadastros.sqlUpdate.Execsql;

         //Verifica se vai ou não atualiza o preco de custo
         if BuscaUmDadoSqlAsString('SELECT OPE_ATUALIZA_CUSTO FROM OPE0000 WHERE OPE_CODIGO = '+QuotedStr(DataMovimento.CdsEnfOPE_CODIGO.AsString)) = 'S' then
         begin
                //wAtualiza_pvenda = 'N' // SE NÃO ATUALIZA PREÇO DE VENDA, ATUALIZA OS CUSTOS E A MARGEM
                // CASO CONTRÁRIO ATUALIZA PREÇO DE VENDA E MARGEM
                if wAtualiza_pvenda = 'N'  then
                begin
                  if wCalcularPV = 0 then  // PRD_PCUSTO
                  begin
                    if porFora then
                       wSql5 := ', PRD_MARGEMVENDA =  ((PRD_PVENDA/ '+ValorAmericano(CurrToStr(rTmp_Custo))+ ') - 1)*100 '
                    else
                       wSql5 := ', PRD_MARGEMVENDA =  ((' + ValorAmericano(CurrToStr(rTmp_Custo))+ ' / PRD_PVENDA))*100 '
                       // wsql5 := '';
                  end
                  else if wCalcularPV = 1 then //PRD_CUSTOCOMIPI
                  begin
                    if porFora then
                      wSql5 := ', PRD_MARGEMVENDA =  ((PRD_PVENDA/ '+ValorAmericano(FloatToStr(wVLR_AGREGADO))+ ') - 1)*100 '
                    else
                      wSql5 := ', PRD_MARGEMVENDA =  (('+ValorAmericano(FloatToStr(wVLR_AGREGADO))+ ' / PRD_PVEND))*100 '
                       // wsql5 := '';
                  end
                  else if wCalcularPV = 2 then // PRD_PMEDIO
                  begin
                    if porFora then
                      wSql5 := ', PRD_MARGEMVENDA =  ((PRD_PVENDA/ '+ValorAmericano(FloatToStr(wCUSTO_MEDIO))+    ') - 1)*100 '
                    else
                      wSql5 := ', PRD_MARGEMVENDA =  (('+ValorAmericano(FloatToStr(wCUSTO_MEDIO))+ '/ PRD_PVENDA))*100 '
                       // wsql5 := '';
                  end;

                end
                else
                begin
                  wSql5 := '';
                end;

               wSql1 :='Update PRD0000 Set PRD_ENTRADA  = (PRD_ENTRADA + '+ValorAmericano(CurrToStr((rTmpQuantidade)))+')'+
                                         ', PRD_PENDENTE = (COALESCE(PRD_PENDENTE,0) - '+ValorAmericano(FloatToStr(wFinaliza))+')'+
                                         ', PRD_PCUSTO   = '+ValorAmericano(CurrToStr(rTmp_Custo))+
                                         ', PRD_CUSTOFRETE   = '+ValorAmericano(CurrToStr(wValor_frete+wValor_FreteFora))+
                                         ', PRD_CUSTOADCIONAL = '+ValorAmericano(CurrToStr(wValor_despesas+wValor_Diff_ICMS))+
                                         ', PRD_OUTROSCUSTOS  = '+ValorAmericano(CurrToStr(wValor_Outros))+
                                         ', PRD_CUSTOIPI     = '+ValorAmericano(CurrToStr(wIPI_valor))+
                                         ', PRD_CUSTOSUBTRIB = '+ValorAmericano(CurrToStr(wValor_subTrib))+
                                         ', PRD_CUSTO_CREDITO = '+ValorAmericano(CurrToStr(rTmp_Custo - wCUSTO_CREDITO))+ //custo com credito
                                         ', PRD_CUSTOCOMIPI = '+ValorAmericano(FloatToStr( wVLR_AGREGADO))+    //custo agregado
                                         ', PRD_PMEDIO = '+ValorAmericano(FloatToStr(wCUSTO_MEDIO))+    //custo medio
                                         ', PRD_IMPOSTOS_RETIRADOS = '+ValorAmericano(FloatToStr(ValorImpostosRetirados))+
                                         ', PRD_DTPCUSTO = '''+DataAmericana(DateToStr(DbeENF_EMISSAO.Date))+''''+
                                         ', FOR_CODIGO = '''+sFornecedor+''''+ wSql5;

               //
               DataCadastros.sqlUpdate.Close;
               DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,'WHERE PRD_REFER = '''+SqlCdsGridSemOCPRD_REFER.AsString+'''','','');
               DataCadastros.sqlUpdate.Execsql;
               // Atualizar preço de venda conforme fornecedor

         end
         else
         begin
           wSql1 :='Update PRD0000 Set PRD_ENTRADA  = (PRD_ENTRADA + '+ValorAmericano(CurrToStr((rTmpQuantidade)))+')'+
                                         ', PRD_PENDENTE = (COALESCE(PRD_PENDENTE,0) - '+ValorAmericano(FloatToStr(wFinaliza))+')';
           DataCadastros.sqlUpdate.Close;
           DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,'WHERE PRD_REFER = '''+SqlCdsGridSemOCPRD_REFER.AsString+'''','','');
           DataCadastros.sqlUpdate.Execsql;
         end;

           if wAtualiza_pvenda = 'S' then
             AtualizarTabelaPrecos(SqlCdsGridSemOCPRD_REFER.AsString);

         SqlCdsGridSemOC.Next;
      end;
end;

procedure TFormNfEntrada.ImportarXML(const sCaminho:String);
var
   sChave,
   sCodFornecedor,
   sNumeroNota,
   sCodigoFaturaPagar,
   sCFOP,sCFOPRegistro,sProdutoRegistro,sSTB_TRibutacao,sCSTIPI,sCdSTPIS,sCSTCOFINS:string;
   I:Integer;
   dBaseIPI,
   rPrecoUnitario,
   rQuantidade:Double;
   wVlRecebido,  {variaveis utilizada para calcular o item do pedido cfe abaixo:}
   wFinaliza,
   wEstoque,
   wEntrada,
   wSaida,
   wPendente,
   wCUSTO_MEDIO,
   rTmp_Custo,
   wCurrPreco,
   rTmpQuantidade,
   rVlr1,
   rVlr2,
   rVlr3,
   rVlr4,
   wPIS_CRED,
   wCOFINS_CRED,
   wIPI_valor,
   wICMS_valor,
   wValor_frete,
   wValor_despesas,
   wValor_seguro,
   wValor_subTrib,
   wCUSTO_CREDITO,
   wVLR_AGREGADO,
   wPERC_RATEIO : Double;
   wQualAlmox,
   sContaFinanceira,
   sModalFrete,
   sReferenciaLocalizada,
   sTmp1,sTmp2:String;
   bDuplicidade:Boolean;
   NumeroNota, IEDest: string;
   CodIE: integer;
begin
   RadSemOC.Checked := True;
   bDuplicidade := False;

   sFornecedorImportado := '';
//   if (sCaminho <> '') then
//   begin
     if sCaminho <> '' then
       acbrnf1.NotasFiscais.LoadFromFile(sCaminho);
     if acbrnf1.NotasFiscais.Count>0 then
     begin
        // verifica se a empresa é brasileira e possui cnpj
        if acbrnf1.NotasFiscais.Items[0].NFe.Dest.EnderDest.cPais = 1058 then
        begin
          if not  MatchStr(DBInicio.Usuario.USERNAME,['ADM','NOVI']) and ( RetirarMascaraCNPJ_INSC(acbrnf1.NotasFiscais.Items[0].NFe.Dest.CNPJCPF)  <> RetirarMascaraCNPJ_INSC(DBInicio.Empresa.CNPJ_CNPF)) then
            GeraException('CNPJ da empresa não confere com xml');
        end;


        CNPJEmitente := acbrnf1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF;
        IEDest := acbrnf1.NotasFiscais.Items[0].NFe.Dest.IE;
        CodIE := BuscaUmDadoSqlAsInteger('SELECT EMI_CODIGO FROM EMP_MULTIPLAS_IE WHERE EMI_IE = ' + QuotedStr(IEDest)  );
        FormNfEntrada.dblcInscricaoEstadual.KeyValue  := CodIE;
        FormNfEntrada.dblcInscricaoEstadual.Enabled := False;
{        if IEDest <> FormNfEntrada.dblcInscricaoEstadual.KeyValue then
        begin
          MessageDlg('Inscrição estadual escolhida difere da nota fiscal de entrada. Verifique antes de dar entrada', mtError, [mbOK], 0 );
          Abort;
        end;

 }

        sChave := acbrnf1.NotasFiscais.Items[0].NFe.infNFe.ID;
        sChave := StringReplace(sChave,'NFe','',[]);
        sCodFornecedor := RetornaRegistroFornecedorPorCnpj(acbrnf1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF,bDuplicidade);
        sTmp1 := sCodFornecedor;
        sTmp2 := sNumeroNota;
        if (ExisteNotaFiscalEntradaChaveNfe(sChave,sTmp2,sTmp1)) then
        begin
          if (uteis.confirmacao ( 'Esta nota fiscal já foi importada gostaria de visualizar ?')=mrYes) then
          begin
             //Localiza Nota
             PesqFornecedor.idRetorno := StrZero(sCodFornecedor,EdtFor_Codigo.MaxLength);
//             EdtFor_Codigo.Text:= StrZero(sCodFornecedor,EdtFor_Codigo.MaxLength);
             //PesqFornecedor.IDRetorno := EdtFor_Codigo.Text;
             EdtNota.Text := sTmp2;
             {Verifica o numero da nota fiscal do fornecedor se ja existe.}
             VerificaNF;
             Preencher_Combo_OP('E');
          end;
        end
        else
        begin
           FrmEntradaNotaXml := TFrmEntradaNotaXml.Create(Application);
           try
//              acbrnf1.NotasFiscais.Clear;
              FrmEntradaNotaXml.sCaminhoXML := sCaminho;

              FrmEntradaNotaXml.ShowModal;
              NumeroNota := FrmEntradaNotaXml.edtNumerNfe.Text;
           finally
              FrmEntradaNotaXml.Destroy;
              FrmEntradaNotaXml := nil;
           end;

           PesqFornecedor.Clear;


           if (Bit_Cancelar.Enabled) then
              Bit_CancelarClick(Self);
           //Localiza Nota
           if (sFornecedorImportado <> '') then
            begin
               EdtFor_Codigo.Text := PreenchezeroEsquerda(sFornecedorImportado,EdtFor_Codigo.MaxLength);
               PesqFornecedor.IDRetorno := EdtFor_Codigo.Text;
               EdtNota.Text := NumeroNota;
               {Verifica o numero da nota fiscal do fornecedor se ja existe.}
               VerificaNF;
               Preencher_Combo_OP('E');
            end;
        end;
         acbrnf1.NotasFiscais.Clear;
     end ;

end;

procedure TFormNfEntrada.Busca_CentroCusto;
begin
   CbCtaAnalise.Text  := '';
//   if DbePCX_CODIGO.Text = '' then
//      DbePCX_CODIGO.Text := CdsCentroCustoPCX_CODIGO.AsString;

   if DbePCX_CODIGO.Text <> '' then
     begin
       if CdsCentroCusto.Locate('PCX_CODIGO',DbePCX_CODIGO.Text,[]) then
          CbCentroCusto.Text  := CdsCentroCustoPCX_DESCRI.AsString
       else
          begin
            uteis.aviso('Centro de Custo não encontrado');
            CbCtaAnalise.Text  := ''
          end;
    end;
end;

procedure TFormNfEntrada.DbePCX_CODIGOEnter(Sender: tObject);
begin
   if DbePCX_CODIGO.Text = '' then
     Busca_CentroCusto;
end;

procedure TFormNfEntrada.DbePCX_CODIGOExit(Sender: tObject);
begin
    if (ActiveControl <> nil)
    and(ActiveControl.name <> 'Bit_Cancelar')
    and(ActiveControl.name <> 'Bit_Sair') then
       begin
           if DataMovimento.CdsEnf.State in [dsEdit,dsInsert] then
              begin
                  if (DbePCX_CODIGO.Field.Text <> '') then
                     begin
                         DbePCX_CODIGO.Text := StrZero(DbePCX_CODIGO.Text,DbePCX_CODIGO.MaxLength);
                         if CdsCentroCusto.Locate('PCX_CODIGO',StrZero(DbePCX_CODIGO.Text,DbePCX_CODIGO.MaxLength),[]) then
                            begin
                                CbCentroCusto.Text  := UpperCase(CdsCentroCustoPCX_DESCRI.AsString);
                                DbePCX_CODIGO.Text := StrZero(DbePCX_CODIGO.Text,DbePCX_CODIGO.MaxLength);
                            end
                         else
                            begin
                                uteis.aviso('Centro de Custo não encontrado !');
                                CbCentroCusto.Text        := '';
                                DbePCX_CODIGO.Field.Text := '';
                                DbePCX_CODIGO.SetFocus;

                            end;
                     end;
              end;
       end;
end;

procedure TFormNfEntrada.CbCentroCustoChange(Sender: tObject);
begin
  Bit_Gravar.Enabled := true;
  if DataMovimento.CdsEnf.STATE=dsBrowse then
    DataMovimento.CdsEnf.Edit;
  if CdsCentroCusto.Locate('PCX_DESCRI',CbCentroCusto.Text,[loCaseInsensitive])  then
  begin
      //  CbCentroCusto.Text  := CdsCentroCustoPCX_DESCRI.AsString;
        DbePCX_CODIGO.Text := CdsCentroCustoPCX_CODIGO.AsString;
  end
  else
  begin
        DbePCX_CODIGO.Text := '';
  end;
end;

procedure TFormNfEntrada.CbCentroCustoExit(Sender: tObject);
begin
   if (ActiveControl <> nil)
    and(ActiveControl.name <> 'Bit_Cancelar')
    and(ActiveControl.name <> 'Bit_Sair')
    and(ActiveControl.name <> 'DbeCCT_CODIGO') then
       begin
           if DataMovimento.CdsEnf.State in [dsEdit,dsInsert] then
              begin
                  if CbCentroCusto.Text <> '' then
                     begin
                         if CdsCentroCusto.Locate('PCX_DESCRI',CbCentroCusto.Text,[loCaseInsensitive])  then
                            begin
                                CbCentroCusto.Text  := CdsCentroCustoPCX_DESCRI.AsString;
                                DbePCX_CODIGO.Text := CdsCentroCustoPCX_CODIGO.AsString;
                            end
                         else
                            begin
                                uteis.aviso('Centro de Custo não Encontrado !');
                                CbCentroCusto.Text  := '';
                                DbePCX_CODIGO.Text := '';
                                CbCentroCusto.SetFocus;
                            end;
                     end
                  else
                     begin
                         if not (ActiveControl.Name = 'CbCentroCusto') then
                            begin
                                uteis.aviso('Informe o Centro de Custo !');
                                CbCentroCusto.Text  := '';
                                DbePCX_CODIGO.Text := '';
                                DbePCX_CODIGO.SetFocus;

                            end;
                     end;
              end;
       end;
end;

procedure TFormNfEntrada.RealizaRateioCentroCusto;
var
   sNivel,sReferencia,sTipoLancamento,sPcx_codigo:String;
   qtdeNivel,posicaoUltimoPonto,I:Integer;
   sQuery:WideString;

begin
   DataCadastros.sqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text :=SQLDEF('PAGAR','SELECT * FROM PAG_PC01 T1 ','where t1.PAG_NUMDOC = '''+EdtNota.Text+''' and t1.FOR_CODIGO = '''+EdtFor_Codigo.Text+'''','','');
   DataCadastros.sqlUpdate.Open;
   if (not DataCadastros.sqlUpdate.IsEmpty) then
      begin
         if (LblSituacaoProjetoObra.Caption = 'ABERTO') then
            begin

               DataCadastros.sqlUpdate.First;
               while (not DataCadastros.sqlUpdate.Eof) do
                  begin
                     //
                     if (DbePCX_CODIGO.Field.Text <> '') then
                        begin
                           //fernando implementar 061294

                           LimpaRateioCentroCusto(DataCadastros.sqlUpdate.FieldByName('PAG_REGISTRO').AsString,'P');

                           dataCadastros.sqlUpdate2.Close;
                           dataCadastros.sqlUpdate2.sql.text := 'SELECT * FROM PCX0000 T1 WHERE t1.PCX_CODIGO = '+QuotedStr(DbePCX_CODIGO.Field.Text);
                           dataCadastros.sqlUpdate2.Open;
                           sNivel := dataCadastros.sqlUpdate2.FieldByName('PCX_NIVEL').AsString;
                           sReferencia := '';
                           qtdeNivel := 1;
                           posicaoUltimoPonto := 0;
                           for I := 1 to Length(sNivel) do
                              begin
                                 if (sNivel[I] = '.') then
                                    begin
                                       Inc(qtdeNivel);
                                       posicaoUltimoPonto := I;
                                    end;
                              end;

                           for I := 1 to qtdeNivel do
                              begin
                                    dataCadastros.sqlUpdate2.Close;
                                    if (I < 4) then
                                       dataCadastros.sqlUpdate2.sql.text := 'SELECT * FROM PCX0000 T1 WHERE t1.PCX_NIVEL = '+QuotedStr(copy(sNivel,0,(I * 3)))
                                    else
                                       dataCadastros.sqlUpdate2.sql.text := 'SELECT * FROM PCX0000 T1 WHERE t1.PCX_NIVEL = '+QuotedStr(copy(sNivel,0,(I * 3)+1));
                                    dataCadastros.sqlUpdate2.Open;

                                    sPcx_codigo := dataCadastros.sqlUpdate2.FieldByName('PCX_CODIGO').AsString;


                                    sTipoLancamento := 'L';
                                    if (I <> qtdeNivel) then
                                       begin
                                          sTipoLancamento := 'T';
                                       end;

                                    sQuery := 'INSERT INTO FIN_RATEIO '+
                                           '('+
                                           'EMP_CODIGO,'+//
                                           'FIR_REGISTRO_CP_CR,'+
                                           'FIR_REGISTRO_TIPO,'+//
                                           'FIR_INDICE,'+//
                                           'FIR_INDICE_REAL,'+//
                                           'FIR_TIPO,'+//
                                           'PCX_CODIGO'+//
                                           ')'+
                                           'VALUES'+
                                           '('+
                                           QuotedStr(dbInicio.Empresa.EMP_CODIGO)+','+
                                           QuotedStr(DataCadastros.sqlUpdate.FieldByName('PAG_REGISTRO').AsString)+','+
                                           QuotedStr('P')+','+
                                           QuotedStr('100')+','+
                                           QuotedStr('1')+','+
                                           QuotedStr(sTipoLancamento)+','+
                                           QuotedStr(PreenchezeroEsquerda(sPcx_codigo,3) )+
                                           ')';

                                    dataCadastros.sqlUpdate2.Close;
                                    dataCadastros.sqlUpdate2.sql.text := sQuery;
                                    dataCadastros.sqlUpdate2.ExecSql;
                                    dataCadastros.sqlUpdate2.Close;
                                    //Atualiza Perfil Rateio
                                    dataCadastros.sqlUpdate2.Close;
                                    dataCadastros.sqlUpdate2.sql.text := 'UPDATE PAG_PC01 SET PCXPF_REGISTRO = '+QuotedStr('0')+' WHERE PAG_REGISTRO = '+QuotedStr(DataCadastros.sqlUpdate.FieldByName('PAG_REGISTRO').AsString);
                                    dataCadastros.sqlUpdate2.ExecSql;
                              end;
                        end;
                        DataCadastros.sqlUpdate.Next;
                  end;
            end;
      end;
end;

procedure TFormNfEntrada.FormCreate(Sender: tObject);
begin
     inherited;
     vMovimentaEstoque:='K';
     cbMovimentaEstoque.State := cbGrayed;
     self.width:=995;
     self.height:=632;
     bCentroCustoObrigatorio := (dbInicio.GetParametroSistema('PMT_CENTRO_CUSTO_OBRIGATORIO') = 'S');
     wCalcularPV := StrToIntDef(dbInicio.GetParametroSistema('PMT_CALCULARPV'),0);
end;

procedure TFormNfEntrada.FormDestroy(Sender: TObject);
begin
  inherited;
  FormNfEntrada := Nil;
end;


procedure TFormNfEntrada.MudarCFOP1Click(Sender: tObject);
begin

  if (SqlCdsGridSemOC.IsEmpty) then
  begin
     uteis.aviso('Não existe item a ser alterado');
     Exit;
  end;

  if not Assigned(frmSelecionaCFOP) then
    frmSelecionaCFOP := TfrmSelecionaCFOP.Create(Self);
  frmSelecionaCFOP.Caption := 'Selecione a CFOP de Entrada';
  frmSelecionaCFOP.ShowModal;
  if frmSelecionaCFOP.ModalResult <> mrOk then
  begin
    FreeAndNil(frmSelecionaCFOP);
    exit;
  end;
  DataCadastros.sqlUpdate.Close;
  DataCadastros.SqlUpdate.sql.text := 'UPDATE ENF_IT01 SET ' +
                                      ' OPE_CODIGO = ' + QuotedStr(frmSelecionaCFOP.cbCFOP.idRetorno) + ', ' +
                                      ' ENF_CFOP = ' + QuotedStr(frmSelecionaCFOP.edNatureza.Text) +
                                      ' WHERE ENF_REGISTRO = ' + SqlCdsGridSemOCENF_REGISTRO.AsString;
  DataCadastros.sqlUpdate.Execsql;
  SqlCdsGridSemOC.Refresh;
  FreeAndNil(frmSelecionaCFOP);


end;

procedure TFormNfEntrada.AlterarCFOPdeRetorno1Click(Sender: TObject);
begin
  inherited;
  if not Assigned(frmSelecionaCFOP) then
    frmSelecionaCFOP := TfrmSelecionaCFOP.Create(Self);
  frmSelecionaCFOP.Caption := 'Selecione a CFOP de Retorno';
  frmSelecionaCFOP.cbCFOP.idRetorno := SqlCdsGridSemOCOPE_CODIGO_RETORNO.AsString;
  frmSelecionaCFOP.ShowModal;
  if frmSelecionaCFOP.ModalResult <> mrOk then
  begin
    FreeAndNil(frmSelecionaCFOP);
    exit;
  end;
  DataCadastros.sqlUpdate.Close;
  DataCadastros.SqlUpdate.sql.text :='UPDATE ENF_IT01 SET OPE_CODIGO_RETORNO = ' + QuotedStr(frmSelecionaCFOP.cbCFOP.idRetorno) + ' WHERE ENF_REGISTRO = ' + SqlCdsGridSemOCENF_REGISTRO.AsString;
  DataCadastros.sqlUpdate.Execsql;
  SqlCdsGridSemOC.Refresh;
  FreeAndNil(frmSelecionaCFOP);
end;




end.





