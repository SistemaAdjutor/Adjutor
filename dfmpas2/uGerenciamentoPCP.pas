unit uGerenciamentoPCP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaFDAC, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, ACBrCalculadora, frxClass, Vcl.Menus,
  FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxLocalization, ACBrBase, ACBrEnterTab, JvExControls, JvArrowButton, Vcl.StdCtrls, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls,uProducaoDAO, cxGridBandedTableView, cxGridDBBandedTableView,
  cxProgressBar,cxGridDBDataDefinitions, uselproduto, uEmpenharLote, BaseDbEstoqueForm, uconclusaoOP, ppDB, ppDBPipe, frxDBSet, ppParameter, ppDesignLayer, ppCtrls, ppBands, ppStrtch, ppMemo, ppVar,
  ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, cxExtEditRepositoryItems, Vcl.Mask, JvExMask, JvToolEdit, cxPCdxBarPopupMenu, cxPC, System.ImageList, Vcl.ImgList,
  uInfLote, frxExportXLSX, frxExportPDF, Data.FMTBcd, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  cxDataControllerConditionalFormattingRulesManagerDialog, frxExportBaseDialog ;

type
  TfrmGerenciamentoPCP = class(TfrmBaseDBPesquisaFDAC)
    cdsBuscaOPR_CODIGO: TIntegerField;
    cdsBuscaEMP_CODIGO: TStringField;
    cdsBuscaOPR_EMISSAO: TSQLTimeStampField;
    cdsBuscaPED_CODIGO: TStringField;
    cdsBuscaOPR_CONCLUSAO: TSQLTimeStampField;
    cdsBuscaOPR_STATUS: TStringField;
    cdsBuscaCLI_CODIGO: TStringField;
    cdsBuscaOPR_VALIDADE: TSQLTimeStampField;
    cdsBuscaOPR_DTENTREGA: TSQLTimeStampField;
    cdsBuscaIOP_CODIGO: TIntegerField;
    cdsBuscaPRD_CODIGO: TStringField;
    cdsBuscaIOP_SEQUENCIA: TIntegerField;
    cdsBuscaIOP_NORDEM: TStringField;
    cdsBuscaIOP_QUANTIDADE: TFMTBCDField;
    cdsBuscaIOP_PESO: TFMTBCDField;
    cdsBuscaIOP_STATUS: TStringField;
    cdsBuscaIOP_DATA_INICIO: TSQLTimeStampField;
    cdsBuscaIOP_DATA_CONCLUSAO: TSQLTimeStampField;
    cdsBuscaIOP_DATA_PREVISTA: TSQLTimeStampField;
    cdsBuscaIOP_PRECO: TFMTBCDField;
    cdsBuscaIOP_CUSTO: TFMTBCDField;
    cdsBuscaPRF_REGISTRO: TIntegerField;
    cdsBuscaPRO_CODIGO: TIntegerField;
    cdsBuscaFTI_REGISTRO: TIntegerField;
    cxgrd1DBBandedTableView1: TcxGridDBBandedTableView;
    cxgrd1DBBandedTableView1OPR_CODIGO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1EMP_CODIGO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1OPR_EMISSAO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1PED_CODIGO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1OPR_CONCLUSAO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1OPR_STATUS: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1CLI_CODIGO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1OPR_VALIDADE: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1OPR_DTENTREGA: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_CODIGO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1PRD_CODIGO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_SEQUENCIA: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_NORDEM: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_QUANTIDADE: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_PESO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_STATUS: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_DATA_INICIO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_DATA_CONCLUSAO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_DATA_PREVISTA: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_PRECO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_CUSTO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1PRF_REGISTRO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1PRO_CODIGO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1FTI_REGISTRO: TcxGridDBBandedColumn;
    cdsBuscaPRD_REFER: TStringField;
    cdsBuscaPRD_DESCRI: TStringField;
    cxgrd1DBBandedTableView1IOP_DATALIBERACAO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1PRD_REFER: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1PRD_DESCRI: TcxGridDBBandedColumn;
    cdsBuscaIOP_DATALIBERACAO: TSQLTimeStampField;
    cdsBuscaIOP_QTDE_REFUGADA: TFMTBCDField;
    cdsBuscaIOP_QTDE_CONCLUIDA: TFMTBCDField;
    cdsBuscaIOP_QTDE_PRODUZINDO: TFMTBCDField;
    cdsBuscaLEFTDAYS: TLargeintField;
    cxgrd1DBBandedTableView1IOP_QTDE_REFUGADA: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_QTDE_CONCLUIDA: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_QTDE_PRODUZINDO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1LEFTDAYS: TcxGridDBBandedColumn;
    cxgrd1Level1: TcxGridLevel;
    cdsBuscaFALTA: TFloatField;
    cxgrd1DBBandedTableView1FALTA: TcxGridDBBandedColumn;
    cdsBuscaDEADLINE: TLargeintField;
    cdsBuscaDetalhesIOP_CODIGO: TIntegerField;
    cdsBuscaDetalhesMP_UCONSUMO: TFMTBCDField;
    cdsBuscaDetalhesMP_SITUACAO: TStringField;
    cdsBuscaDetalhesPRD_REFER: TStringField;
    cdsBuscaDetalhesPRD_DESCRI: TStringField;
    cdsBuscaDetalhesMP_EMPENHADO: TFMTBCDField;
    cdsBuscaDetalhesMP_CONSUMOTOTAL: TFMTBCDField;
    cxgrd1DBTableView1IOP_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView1MP_UCONSUMO: TcxGridDBColumn;
    cxgrd1DBTableView1MP_SITUACAO: TcxGridDBColumn;
    cxgrd1DBTableView1PRD_REFER: TcxGridDBColumn;
    cxgrd1DBTableView1PRD_DESCRI: TcxGridDBColumn;
    cxgrd1DBTableView1MP_EMPENHADO: TcxGridDBColumn;
    cxgrd1DBTableView1MP_CONSUMOTOTAL: TcxGridDBColumn;
    cdsMateriaPrima: TFDQuery;
    dsMateriaPrima: TDataSource;
    cdsMateriaPrimaIOP_CODIGO: TIntegerField;
    cdsMateriaPrimaMP_UCONSUMO: TFMTBCDField;
    cdsMateriaPrimaMP_SITUACAO: TStringField;
    cdsMateriaPrimaPRD_REFER: TStringField;
    cdsMateriaPrimaPRD_DESCRI: TStringField;
    cdsMateriaPrimaMP_EMPENHADO: TFMTBCDField;
    cdsMateriaPrimaMP_CONSUMOTOTAL: TFMTBCDField;
    cxgrd1DBBandedTableView1DEADLINE: TcxGridDBBandedColumn;
    cdsBuscaPrazo: TFloatField;
    cxgrd1DBBandedTableView1Prazo: TcxGridDBBandedColumn;
    cdsMateriaPrimaMP_CODIGO: TIntegerField;
    pmInsumo: TPopupMenu;
    Substituirinsumo1: TMenuItem;
    cdsMateriaPrimaPED_CODIGO: TStringField;
    EstornoInsumo: TMenuItem;
    cdsMateriaPrimaPRD_CODIGO: TStringField;
    cdsMateriaPrimaMP_CODIGO_SUBST: TIntegerField;
    cdsMateriaPrimaSUBST: TStringField;
    cxgrd1DBTableView1MP_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView1PED_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView1PRD_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView1MP_CODIGO_SUBST: TcxGridDBColumn;
    cxgrd1DBTableView1SUBST: TcxGridDBColumn;
    miInformarempenho: TMenuItem;
    Empenhosrealizados1: TMenuItem;
    miEmpenhoAutomatico: TMenuItem;
    cdsMateriaPrimaPercConsumido: TFloatField;
    pOrdem: TPopupMenu;
    cdsMateriaPrimaPRD_UND: TStringField;
    cxgrd1DBTableView1PRD_UND: TcxGridDBColumn;
    cdsMateriaPrimaPRD_GERENCIA_LOTE: TStringField;
    cxgrd1DBTableView1PRD_GERENCIA_LOTE: TcxGridDBColumn;
    Phistorico: TPanel;
    cdsHistorico: TFDQuery;
    dsHistorico: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cdsHistoricoHOP_CODIGO: TIntegerField;
    cdsHistoricoHOP_DATAMVTO: TSQLTimeStampField;
    cdsHistoricoHOP_DESCRICAO: TStringField;
    cdsHistoricoUSU_CODIGO: TIntegerField;
    cdsHistoricoIOP_CODIGO: TIntegerField;
    cdsHistoricoMP_CODIGO: TIntegerField;
    cdsHistoricoUSU_NOME: TStringField;
    cxGrid1DBTableView1HOP_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1HOP_DATAMVTO: TcxGridDBColumn;
    cxGrid1DBTableView1HOP_DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1USU_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1IOP_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1MP_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1USU_NOME: TcxGridDBColumn;
    cdsHistoricoPRD_REFER: TStringField;
    cxgrd1DBTableView1Column1: TcxGridDBColumn;
    cxgrd1DBTableView1PercConsumido: TcxGridDBColumn;
    cdsMateriaPrimaESTOQUEDISPONIVEL: TFMTBCDField;
    cxgrd1DBTableView1ESTOQUEDISPONIVEL: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cdsMateriaPrimaMP_CUSTO: TFMTBCDField;
    cxgrd1DBTableView1MP_CUSTO: TcxGridDBColumn;
    cdsBuscaIOP_CUSTOMP: TFMTBCDField;
    cxgrd1DBBandedTableView1IOP_CUSTOMP: TcxGridDBBandedColumn;
    cdsBuscaOPR_DATAFATURA: TSQLTimeStampField;
    cdsBuscaOPR_LEADTIME: TBCDField;
    cdsBuscaIOP_DTENTREGA: TDateField;
    cdsBuscaIOP_SEQ_PRG: TIntegerField;
    cdsBuscaPRD_UND: TStringField;
    cxgrd1DBBandedTableView1PRD_UND: TcxGridDBBandedColumn;
    cdsBuscaIOP_CUSTOOPERACAO: TFMTBCDField;
    cdsBuscaIOP_CUSTOCOLABORADOR: TFMTBCDField;
    cdsBuscaIOP_CUSTOEQUIPAMENTO: TFMTBCDField;
    cdsBuscaIOP_CUSTOSERVICOS: TFMTBCDField;
    cxgrd1DBBandedTableView1IOP_CUSTOOPERACAO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_CUSTOCOLABORADOR: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_CUSTOEQUIPAMENTO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_CUSTOSERVICOS: TcxGridDBBandedColumn;
    Apontarserviosagregados1: TMenuItem;
    cxgrd1DBBandedTableView1IOP_SEQ_PRG: TcxGridDBBandedColumn;
    cdsBuscaCustoTotal: TFMTBCDField;
    cdsBuscaIndicadorFinanceiro: TFMTBCDField;
    cxgrd1DBBandedTableView1CustoTotal: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IndicadorFinanceiro: TcxGridDBBandedColumn;
    cdsBuscaCustoSubOrdens: TFMTBCDField;
    cxgrd1DBBandedTableView1CustoSubOrdens: TcxGridDBBandedColumn;
    cdsBuscaCLI_RAZAO: TStringField;
    cxgrd1DBBandedTableView1CLI_RAZAO: TcxGridDBBandedColumn;
    frxRelOSP10: TfrxReport;
    frxDBMateriaPrima: TfrxDBDataset;
    frxDBBusca: TfrxDBDataset;
    ppDBPipeline1: TppDBPipeline;
    frxRelOSP10BKP: TfrxReport;
    AdicionarMatriaprima1: TMenuItem;
    miAlterarconsumototal: TMenuItem;
    cxEditRepository1: TcxEditRepository;
    ProgressBarAzul: TcxEditRepositoryProgressBar;
    ProgressBarVerde: TcxEditRepositoryProgressBar;
    ProgressBarLaranja: TcxEditRepositoryProgressBar;
    cdsBuscaIOP_PREFIXO: TStringField;
    cxgrd1DBBandedTableView1IOP_PREFIXO: TcxGridDBBandedColumn;
    chkFinalizados: TCheckBox;
    DataEmissao: TGroupBox;
    Ate: TLabel;
    Label1: TLabel;
    DataFim: TJvDateEdit;
    DataIni: TJvDateEdit;
    cdsBuscaIOP_DATA_AJUSTADA: TSQLTimeStampField;
    cdsBuscaIOP_DIAS_CORRIDOS: TIntegerField;
    cdsBuscaIOP_STATUS_ENTREGA: TStringField;
    cxgrd1DBBandedTableView1IOP_DATA_AJUSTADA: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_DIAS_CORRIDOS: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_STATUS_ENTREGA: TcxGridDBBandedColumn;
    tbHistorico: TTabSheet;
    ImageList1: TImageList;
    cxStyleRepository3: TcxStyleRepository;
    cxStyleAzul: TcxStyle;
    cxStyleLaranja: TcxStyle;
    cxStyleVerde: TcxStyle;
    pmListar: TPopupMenu;
    OrdemdeproduoModelo101: TMenuItem;
    ListadeOrdemdeProduo1: TMenuItem;
    frxLista: TfrxReport;
    frxDBBuscaDetalhes: TfrxDBDataset;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    DataEntregaFim: TJvDateEdit;
    DataEntregaIni: TJvDateEdit;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    DataAjustadaFim: TJvDateEdit;
    DataAjustadaIni: TJvDateEdit;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    DataConclusaoFim: TJvDateEdit;
    DataConclusaoIni: TJvDateEdit;
    frxOP_Mod9: TfrxReport;
    cdsEngenharia: TFDQuery;
    OrdemdeproduoModelo91: TMenuItem;
    frxDBEngenharia: TfrxDBDataset;
    cdsEngenhariaOPE_CODIGO: TIntegerField;
    cdsEngenhariaSEQUENCIA: TIntegerField;
    cdsEngenhariaOPE_DESCRICAO: TStringField;
    frxOP1: TfrxReport;
    Modelo1OrdemdeproduoIndstriaQumica1: TMenuItem;
    cdsBuscaPED_NUMERO_PED_CLIENTE: TStringField;
    cdsBuscaPED_DTENTRADA: TSQLTimeStampField;
    miOrdemProducao: TMenuItem;
    cdsBuscaFTC_ETAPS: TBlobField;
    cdsBuscaPRDL_LOTE: TStringField;
    frxOP4: TfrxReport;
    Modelo4IndstriaQumicacomdensidade1: TMenuItem;
    cdsMateriaPrima2: TFDQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    FMTBCDField1: TFMTBCDField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    FMTBCDField2: TFMTBCDField;
    FMTBCDField3: TFMTBCDField;
    StringField4: TStringField;
    StringField5: TStringField;
    IntegerField3: TIntegerField;
    StringField6: TStringField;
    FloatField1: TFloatField;
    StringField7: TStringField;
    StringField8: TStringField;
    FMTBCDField4: TFMTBCDField;
    FMTBCDField5: TFMTBCDField;
    cdsMateriaPrima2Lote: TStringField;
    frxListaIniciadas: TfrxReport;
    ListagemdeOrdensIniciadas1: TMenuItem;
    spEstornarInicio: TSpeedButton;
    edPesquisa: TLabeledEdit;
    cdsBuscaPRDL_DATA_FABRICACAO: TDateField;
    cdsBuscaPRDL_DATA_VALIDADE: TDateField;
    cdsMateriaPrima2PRDL_REGISTRO: TIntegerField;
    cdsMateriaPrima2EMP_CODIGO: TStringField;
    cdsMateriaPrima2PRDL_DATA_FABRICACAO: TDateField;
    cdsMateriaPrima2PRDL_DATA_VALIDADE: TDateField;
    cdsMateriaPrima2PRDL_LOTE: TStringField;
    cdsMateriaPrima2PRDL_PRECO_MAXIMO: TFMTBCDField;
    cdsMateriaPrima2PRDL_SALDO: TFMTBCDField;
    cdsMateriaPrima2PRDL_CADASTRO: TDateField;
    cdsMateriaPrima2PRDL_DESCRICAO: TStringField;
    cdsMateriaPrima2PRDL_CUSTO: TFMTBCDField;
    cdsMateriaPrima2PRDL_NFE: TStringField;
    cdsMateriaPrima2FOR_CODIGO: TStringField;
    cdsMateriaPrima2PRDL_QTDELOTE: TFMTBCDField;
    cdsMateriaPrima2PRD_CODIGO_1: TStringField;
    cdsMateriaPrima2IOP_CODIGO_1: TIntegerField;
    frxOP5: TfrxReport;
    cdsProdutoOP5: TFDQuery;
    frxDBProdutoOP5: TfrxDBDataset;
    cdsProdutoOP5PRD_REFER: TStringField;
    cdsProdutoOP5PRD_DESCRI: TStringField;
    cdsProdutoOP5IOP_DTENTREGA: TDateField;
    cdsProdutoOP5IOP_QUANTIDADE: TFMTBCDField;
    cdsProdutoOP5PRD_UND: TStringField;
    cdsProdutoOP5PRDL_LOTE: TStringField;
    cdsProdutoOP5OPR_EMISSAO: TSQLTimeStampField;
    cdsProdutoOP5PRD_DIV_MULT_PROD: TStringField;
    cdsMateriaPrimaOP5: TFDQuery;
    frxDBMateriaPrimaOP5: TfrxDBDataset;
    cdsProdutoOP5FTC_ETAPAS: TBlobField;
    cdsMateriaPrimaOP5PRDL_LOTE: TStringField;
    cdsMateriaPrimaOP5PRD_REFER: TStringField;
    cdsMateriaPrimaOP5PRD_DESCRI: TStringField;
    cdsMateriaPrimaOP5PRD_CODIGO: TStringField;
    cdsMateriaPrimaOP5PED_CODIGO: TStringField;
    cdsMateriaPrimaOP5PRD_FATOR_PROD: TFMTBCDField;
    cdsMateriaPrimaOP5PRD_DIV_MULT_PROD: TStringField;
    cdsMateriaPrimaOP5MP_CODIGO: TIntegerField;
    cdsMateriaPrimaOP5IOP_CODIGO: TIntegerField;
    cdsMateriaPrimaOP5MP_UCONSUMO: TFMTBCDField;
    cdsMateriaPrimaOP5MP_SITUACAO: TStringField;
    cdsMateriaPrimaOP5MP_EMPENHADO: TFMTBCDField;
    cdsMateriaPrimaOP5MP_CONSUMOTOTAL: TFMTBCDField;
    cdsMateriaPrimaOP5PRD_UND: TStringField;
    cdsMateriaPrimaOP5PRD_GERENCIA_LOTE: TStringField;
    cdsMateriaPrimaOP5ESTOQUEDISPONIVEL: TFMTBCDField;
    cdsMateriaPrimaOP5MP_CUSTO: TFMTBCDField;
    cdsProdutoOP5IOP_CODIGO: TIntegerField;
    cdsProdutoOP5IOP_NORDEM: TStringField;
    frxDBQualidade: TfrxDBDataset;
    frxDBQualidadeCabecalho: TfrxDBDataset;
    frxDBSoma: TfrxDBDataset;
    qAux3SOMA: TFMTBCDField;
    cdsMateriaPrimaOP5ITEMLOTE: TStringField;
    cdsBuscaPRF_QTDE: TFMTBCDField;
    cxgrd1DBBandedTableView1PRF_QTDE: TcxGridDBBandedColumn;
    cdsProdutoOP5PRF_QTDE: TFMTBCDField;
    frxOP6: TfrxReport;
    qOP6Cabecalho: TFDQuery;
    frxDBOP6Cabecalho: TfrxDBDataset;
    frxDBCorpoOP6: TfrxDBDataset;
    frxDBOP6Qualidade: TfrxDBDataset;
    qCorpoOP6: TFDQuery;
    qQualidadeOP6: TFDQuery;
    qAuxPRD_REFER: TStringField;
    qAuxPRD_DESCRI: TStringField;
    qAuxCQP_VALOR_MIN: TStringField;
    qAuxCQP_VALOR_MAX: TStringField;
    qAuxCQP_ESPERADO: TStringField;
    qAuxIOP_NORDEM: TStringField;
    qAux2IOP_NORDEM: TStringField;
    qAux2CQUA_PRDL_LOTE: TStringField;
    qAuxPAR_OBSERVACAO: TStringField;
    qAuxPAR_DESCRICAO: TStringField;
    cxgrd1DBBandedTableView1PRDL_LOTE: TcxGridDBBandedColumn;
    frxOP7: TfrxReport;
    frxOP8: TfrxReport;
    frxDBOP8Cabecalho: TfrxDBDataset;
    qOP8Cabecalho: TFDQuery;
    qOP8Corpo: TFDQuery;
    frxDBOP8Corpo: TfrxDBDataset;
    ExcluirInsumo1: TMenuItem;
    frxPDFExport1: TfrxPDFExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxop9: TfrxReport;
    qOP9Cabecalho: TFDQuery;
    qOP9Corpo: TFDQuery;
    frxqOP9Cabecalho: TfrxDBDataset;
    frxqOP9Corpo: TfrxDBDataset;
    qOP9Qualidade: TFDQuery;
    frxOP9Qualidade: TfrxDBDataset;
    qPedidos: TSQLQuery;
    qPedidosPED_CODIGO: TStringField;
    qPedidosPED_DTENTRADA: TSQLTimeStampField;
    qPedidosPED_DTSAIDA: TSQLTimeStampField;
    qPedidosPED_EXPEDICAO: TStringField;
    qPedidosPED_COMIS1: TFMTBCDField;
    qPedidosPED_COMIS2: TFMTBCDField;
    qPedidosPED_COMIS3: TFMTBCDField;
    qPedidosPED_FRETE: TStringField;
    qPedidosPED_FRETE2: TStringField;
    qPedidosPED_SITCRED: TStringField;
    qPedidosPED_PRIORIDADE: TStringField;
    qPedidosPED_DESCTONF: TStringField;
    qPedidosPED_DESCTOPC1: TFMTBCDField;
    qPedidosPED_DESCTOPC2: TFMTBCDField;
    qPedidosPED_DESCTOVL: TFMTBCDField;
    qPedidosPED_TOTUPS: TFMTBCDField;
    qPedidosPED_VLTUPS: TFMTBCDField;
    qPedidosPED_VLTOTAL_LIQ: TFMTBCDField;
    qPedidosPED_VLTOTAL_IPI: TFMTBCDField;
    qPedidosPED_VLTOTAL_BRUTO: TFMTBCDField;
    qPedidosCLI_CODIGO: TStringField;
    qPedidosCLI_RAZAO: TStringField;
    qPedidosCLI_FANTASIA: TStringField;
    qPedidosCLI_ENDERE: TStringField;
    qPedidosCLI_BAIRRO: TStringField;
    qPedidosCLI_CIDADE: TStringField;
    qPedidosCLI_UF: TStringField;
    qPedidosCLI_CEP: TStringField;
    qPedidosCLI_PESSOA: TStringField;
    qPedidosCLI_CGC: TStringField;
    qPedidosCLI_INSC: TStringField;
    qPedidosCLI_CONTATO: TStringField;
    qPedidosCLI_FONE: TStringField;
    qPedidosCLI_FAX: TStringField;
    qPedidosCLI_ENDENTR: TStringField;
    qPedidosCLI_CIDENTR: TStringField;
    qPedidosCLI_UFENTR: TStringField;
    qPedidosCLI_CEPENTR: TStringField;
    qPedidosCLI_ENDFAT: TStringField;
    qPedidosCLI_CIDFAT: TStringField;
    qPedidosCLI_UFFAT: TStringField;
    qPedidosCLI_CEPFAT: TStringField;
    qPedidosCLI_EMAIL: TStringField;
    qPedidosREP_CODIGO: TStringField;
    qPedidosREP_NOME: TStringField;
    qPedidosPCL_CODIGO: TStringField;
    qPedidosPCL_NOME: TStringField;
    qPedidosTRP_CODIGO: TStringField;
    qPedidosTRP_RAZAO: TStringField;
    qPedidosTRP_FONE: TStringField;
    qPedidosTRP_REDESP: TStringField;
    qPedidosTRP_RAZAO_1: TStringField;
    qPedidosTRP_FONE_1: TStringField;
    qPedidosOPV_CODIGO: TIntegerField;
    qPedidosOPV_DESCRICAO: TStringField;
    qPedidosCLI_EMAIL_ALTERNATIVO: TStringField;
    qPedidosPED_OBSERVACAO: TBlobField;
    qPedidosPED_CONTATO_CLIENTE: TStringField;
    qPedidosPMT_MOTIVO: TStringField;
    qPedidosPED_SITUACAO: TStringField;
    qPedidosPED_VLFRETE: TFMTBCDField;
    qPedidosPED_VALOR_ST: TFMTBCDField;
    qPedidosPESO: TFMTBCDField;
    qPedidosCIDADE_ENTREGA: TStringField;
    qPedidosPCX_CODIGO: TStringField;
    qPedidosPCX_DESCRI: TStringField;
    qPedidosPED_PLACA: TStringField;
    qPedidosREP_EMAIL: TStringField;
    qPedidosPED_NUMERO_PED_CLIENTE: TStringField;
    qPedidosFPG_DESCRICAO: TStringField;
    qPedidosPED_SubcabecalhoPPAC: TBlobField;
    qPedidosItem: TSQLQuery;
    qMola: TSQLQuery;
    dspPedidosItem: TDataSetProvider;
    dspPedido: TDataSetProvider;
    dspMola: TDataSetProvider;
    cdsPedidosItem: TClientDataSet;
    cdsPedidosItemPED_CODIGO: TStringField;
    cdsPedidosItemPRD_REFER: TStringField;
    cdsPedidosItemPRF_QTDE: TFMTBCDField;
    cdsPedidosItemPRF_QTDE_CALC: TFMTBCDField;
    cdsPedidosItemPRF_QTDEFAT: TFMTBCDField;
    cdsPedidosItemPRF_PRECO: TFMTBCDField;
    cdsPedidosItemPRF_IDESCTO1: TFloatField;
    cdsPedidosItemPRF_IDESCTO2: TFloatField;
    cdsPedidosItemPRF_SITUACAO: TStringField;
    cdsPedidosItemPRF_ITEMCOMIS: TFMTBCDField;
    cdsPedidosItemPRF_IPIALIQ: TFMTBCDField;
    cdsPedidosItemPRF_ICMSALIQ: TFMTBCDField;
    cdsPedidosItemPRF_PRDDESCRI: TStringField;
    cdsPedidosItemPRF_VAR1: TFMTBCDField;
    cdsPedidosItemPRF_VAR2: TFMTBCDField;
    cdsPedidosItemPRF_VAR3: TFMTBCDField;
    cdsPedidosItemPRF_VAR4: TFMTBCDField;
    cdsPedidosItemPRF_VAR5: TFMTBCDField;
    cdsPedidosItemPRF_VAR6: TFMTBCDField;
    cdsPedidosItemPRF_VAR7: TFMTBCDField;
    cdsPedidosItemPRF_VAR8: TFMTBCDField;
    cdsPedidosItemEMP_CODIGO: TStringField;
    cdsPedidosItemPRF_PRECO_BRUTO: TFMTBCDField;
    cdsPedidosItemPRF_OP: TStringField;
    cdsPedidosItemPRF_QTDE_FAT_VAR1: TFMTBCDField;
    cdsPedidosItemPRF_QTDE_FAT_VAR2: TFMTBCDField;
    cdsPedidosItemPRF_QTDE_FAT_VAR3: TFMTBCDField;
    cdsPedidosItemPRF_QTDE_FAT_VAR4: TFMTBCDField;
    cdsPedidosItemPRF_QTDE_FAT_VAR5: TFMTBCDField;
    cdsPedidosItemPRF_QTDE_FAT_VAR6: TFMTBCDField;
    cdsPedidosItemPRF_QTDE_FAT_VAR7: TFMTBCDField;
    cdsPedidosItemPRF_QTDE_FAT_VAR8: TFMTBCDField;
    cdsPedidosItemPRF_FLAG_ATUALIZA_ESTOQUE: TStringField;
    cdsPedidosItemPRF_ORIGEM_ITEM: TStringField;
    cdsPedidosItemPRF_VALOR_ICMS: TFMTBCDField;
    cdsPedidosItemPRF_PRODUTO_AGREGADO: TStringField;
    cdsPedidosItemUSU_CODIGO: TIntegerField;
    cdsPedidosItemPRD_CODIGO: TStringField;
    cdsPedidosItemAMX_CODIGO_DESTINO: TStringField;
    cdsPedidosItemAMX_CODIGO_ORIGEM: TStringField;
    cdsPedidosItemPRD_UND: TStringField;
    cdsPedidosItemPRD_PESOKG: TFMTBCDField;
    cdsPedidosItemPRD_DCVAR1: TStringField;
    cdsPedidosItemPRD_DCVAR2: TStringField;
    cdsPedidosItemPRD_DCVAR3: TStringField;
    cdsPedidosItemPRD_DCVAR4: TStringField;
    cdsPedidosItemPRD_DCVAR5: TStringField;
    cdsPedidosItemPRD_DCVAR6: TStringField;
    cdsPedidosItemPRD_DCVAR7: TStringField;
    cdsPedidosItemPRD_DCVAR8: TStringField;
    cdsPedidosItemPTI_SIGLA: TStringField;
    cdsPedidosItemCC_PRECO_TOT: TFloatField;
    cdsPedidosItemPRF_COMPL_DESCRI: TStringField;
    cdsPedidosItemDESCRICAO: TStringField;
    cdsPedidosItemLIN_DESCRI: TStringField;
    cdsPedidosItemIPI_CODIGO: TStringField;
    cdsPedidosItemPRG_INDICE: TFMTBCDField;
    cdsPedidosItemPRF_VALOR_ST: TFMTBCDField;
    cdsPedidosItemREFERENCIA: TStringField;
    cdsPedidosItemM3: TFMTBCDField;
    cdsPedidosItemPRDE_ENDERECO: TStringField;
    cdsPedidosItemPRD_EMBALA: TStringField;
    cdsPedidosItemPRD_PESOLIQ: TFMTBCDField;
    cdsPedidosItemPESOKG: TFMTBCDField;
    cdsPedidosItemPRF_REGISTRO_VINCULADO: TIntegerField;
    cdsPedidosItemPRF_PESOKG: TFMTBCDField;
    cdsPedidosItemPRD_PRODSERV: TStringField;
    cdsPedidosItemPRF_QTDE_KIT: TLargeintField;
    cdsPedidosItemPRDD_SIGLA: TStringField;
    cdsPedidosItemSEQUENCIA: TStringField;
    cdsPedidosItemPRF_PRAZO_DIAS: TStringField;
    cdsPedidosItemPRF_QTDEPEND: TFMTBCDField;
    cdsPedidosItemregistro: TIntegerField;
    cdsPedidosItemestoque: TFMTBCDField;
    cdsPedidosItemPRF_REGISTRO: TFMTBCDField;
    cdsPedidosItemPRD_FOTO: TBlobField;
    cdsPedidosItemPRDCO_CODIGO_ORIGINAL: TStringField;
    cdsPedidosItemPRF_PRAZO_ENTREGA: TDateField;
    cdspedido: TClientDataSet;
    cdspedidoPED_CODIGO: TStringField;
    cdspedidoPED_DTENTRADA: TSQLTimeStampField;
    cdspedidoPED_DTSAIDA: TSQLTimeStampField;
    cdspedidoPED_EXPEDICAO: TStringField;
    cdspedidoPED_COMIS1: TFMTBCDField;
    cdspedidoPED_COMIS2: TFMTBCDField;
    cdspedidoPED_COMIS3: TFMTBCDField;
    cdspedidoPED_FRETE: TStringField;
    cdspedidoPED_FRETE2: TStringField;
    cdspedidoPED_SITCRED: TStringField;
    cdspedidoPED_PRIORIDADE: TStringField;
    cdspedidoPED_DESCTONF: TStringField;
    cdspedidoPED_DESCTOPC1: TFMTBCDField;
    cdspedidoPED_DESCTOPC2: TFMTBCDField;
    cdspedidoPED_DESCTOVL: TFMTBCDField;
    cdspedidoPED_TOTUPS: TFMTBCDField;
    cdspedidoPED_VLTUPS: TFMTBCDField;
    cdspedidoPED_VLTOTAL_LIQ: TFMTBCDField;
    cdspedidoPED_VLTOTAL_IPI: TFMTBCDField;
    cdspedidoPED_VLTOTAL_BRUTO: TFMTBCDField;
    cdspedidoCLI_CODIGO: TStringField;
    cdspedidoCLI_RAZAO: TStringField;
    cdspedidoCLI_FANTASIA: TStringField;
    cdspedidoCLI_ENDERE: TStringField;
    cdspedidoCLI_BAIRRO: TStringField;
    cdspedidoCLI_CIDADE: TStringField;
    cdspedidoCLI_UF: TStringField;
    cdspedidoCLI_CEP: TStringField;
    cdspedidoCLI_PESSOA: TStringField;
    cdspedidoCLI_CGC: TStringField;
    cdspedidoCLI_INSC: TStringField;
    cdspedidoCLI_CONTATO: TStringField;
    cdspedidoCLI_FONE: TStringField;
    cdspedidoCLI_FAX: TStringField;
    cdspedidoCLI_ENDENTR: TStringField;
    cdspedidoCLI_CIDENTR: TStringField;
    cdspedidoCLI_UFENTR: TStringField;
    cdspedidoCLI_CEPENTR: TStringField;
    cdspedidoCLI_ENDFAT: TStringField;
    cdspedidoCLI_CIDFAT: TStringField;
    cdspedidoCLI_UFFAT: TStringField;
    cdspedidoCLI_CEPFAT: TStringField;
    cdspedidoCLI_EMAIL: TStringField;
    cdspedidoREP_CODIGO: TStringField;
    cdspedidoREP_NOME: TStringField;
    cdspedidoPCL_CODIGO: TStringField;
    cdspedidoPCL_NOME: TStringField;
    cdspedidoTRP_CODIGO: TStringField;
    cdspedidoTRP_RAZAO: TStringField;
    cdspedidoTRP_FONE: TStringField;
    cdspedidoTRP_REDESP: TStringField;
    cdspedidoTRP_RAZAO_1: TStringField;
    cdspedidoTRP_FONE_1: TStringField;
    cdspedidoOPV_CODIGO: TIntegerField;
    cdspedidoOPV_DESCRICAO: TStringField;
    cdspedidoCLI_EMAIL_ALTERNATIVO: TStringField;
    cdspedidoPED_OBSERVACAO: TBlobField;
    cdspedidoPED_CONTATO_CLIENTE: TStringField;
    cdspedidoPMT_MOTIVO: TStringField;
    cdspedidoPED_SITUACAO: TStringField;
    cdspedidoPED_VLFRETE: TFMTBCDField;
    cdspedidoPED_VALOR_ST: TFMTBCDField;
    cdspedidoPESO: TFMTBCDField;
    cdspedidoCIDADE_ENTREGA: TStringField;
    cdspedidoPCX_CODIGO: TStringField;
    cdspedidoPCX_DESCRI: TStringField;
    cdspedidoPED_PLACA: TStringField;
    cdspedidoREP_EMAIL: TStringField;
    cdspedidoPED_NUMERO_PED_CLIENTE: TStringField;
    cdspedidoFPG_DESCRICAO: TStringField;
    cdspedidoPED_SubcabecalhoPPAC: TBlobField;
    cdsMola: TClientDataSet;
    cdsMolaTM_DIAMETRO_INT_MAIOR: TStringField;
    cdsMolaTM_DIAMETRO_INT_MENOR: TStringField;
    cdsMolaMMO_DIAMETRO_INT_MAIOR: TStringField;
    cdsMolaMMO_TOLERANCIA_DI_MAIOR_MAX: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_DI_MAIOR_MIN: TFMTBCDField;
    cdsMolaMMO_DIAMETRO_INT_MENOR: TStringField;
    cdsMolaMMO_TOLERANCIA_DI_MENOR_MAX: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_DI_MENOR_MIN: TFMTBCDField;
    cdsMolaTM_DIAMETRO_ARAME: TStringField;
    cdsMolaTM_DIAMETRO_INTERNO: TStringField;
    cdsMolaTM_DIAMETRO_MEDIO: TStringField;
    cdsMolaTM_DIAMETRO_EXTERNO: TStringField;
    cdsMolaTM_DIAMETRO_EXTERNO_MEIO: TStringField;
    cdsMolaTM_DIAMETRO_EXT_MAIOR: TStringField;
    cdsMolaTM_DIAMETRO_EXT_MENOR: TStringField;
    cdsMolaTM_PASSO: TStringField;
    cdsMolaTM_COM_LIVRE: TStringField;
    cdsMolaTM_COMP_CORPO: TStringField;
    cdsMolaTM_ALT_GANCHO: TStringField;
    cdsMolaTM_ABERT_GANCHO: TStringField;
    cdsMolaTM_COMP_GANCHO: TStringField;
    cdsMolaTM_DESENVOLVIMENTO: TStringField;
    cdsMolaTM_ESPIRAIS_UTEIS: TStringField;
    cdsMolaTM_ESPIRAL_TOTAL: TStringField;
    cdsMolaTM_SENTIDO: TStringField;
    cdsMolaTM_PESO: TStringField;
    cdsMolaTM_MAQUINA: TStringField;
    cdsMolaTM_MANDRIL: TStringField;
    cdsMolaTM_CACHIMBO: TStringField;
    cdsMolaTM_COPIADOR: TStringField;
    cdsMolaTM_GANCHO: TStringField;
    cdsMolaTM_DISCO: TStringField;
    cdsMolaTM_OUTROS: TStringField;
    cdsMolaTM_TIPOEMBALAGEM: TStringField;
    cdsMolaTM_LOCALIZACAO: TStringField;
    cdsMolaTM_SETOR: TStringField;
    cdsMolaTM_VAO: TStringField;
    cdsMolaMMO_CODIGO: TIntegerField;
    cdsMolaPRD_CODIGO: TStringField;
    cdsMolaART_CODIGO: TIntegerField;
    cdsMolaARA_CODIGO: TIntegerField;
    cdsMolaCMO_CODIGO: TIntegerField;
    cdsMolaGAN_CODIGO: TIntegerField;
    cdsMolaACO_CODIGO: TIntegerField;
    cdsMolaASU_CODIGO: TIntegerField;
    cdsMolaTSU_CODIGO: TIntegerField;
    cdsMolaMMO_TEMPO_PRODUCAO: TIntegerField;
    cdsMolaMMO_PESO_ESPECIFICO: TFMTBCDField;
    cdsMolaMMO_CISALHAMENTO: TFMTBCDField;
    cdsMolaMMO_RES_TRACAO: TFMTBCDField;
    cdsMolaMMO_TRATAMENTO_TERMICO: TStringField;
    cdsMolaMMO_TEMPO_TEMPERA: TIntegerField;
    cdsMolaMMO_TEMPERATURA_TEMPERA: TFMTBCDField;
    cdsMolaMMO_TEMPO_REVENIMENTO: TIntegerField;
    cdsMolaMMO_TEMPERATURA_REVENIMENTO: TFMTBCDField;
    cdsMolaMMO_DUREZA_MINIMA: TIntegerField;
    cdsMolaMMO_DUREZA_MAXIMA: TIntegerField;
    cdsMolaMMO_TRATAMENTO_SUPERFICIAL: TStringField;
    cdsMolaMMO_DIAMETRO_ARAME: TStringField;
    cdsMolaMMO_TOLERANCIA_DIA_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_DIA_MAX: TFMTBCDField;
    cdsMolaMMO_DIAMETRO_INTERNO: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_DI_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_DI_MAX: TFMTBCDField;
    cdsMolaMMO_DIAMETRO_MEDIO: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_DM_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_DM_MAX: TFMTBCDField;
    cdsMolaMMO_DIAMETRO_EXTERNO: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_DE_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_DE_MAX: TFMTBCDField;
    cdsMolaMMO_DIAMETRO_EXTERNO_MEIO: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_DEM_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_DEM_MAX: TFMTBCDField;
    cdsMolaMMO_VAO: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_VAO_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_VAO_MAX: TFMTBCDField;
    cdsMolaMMO_PASSO: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_PASSO_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_PASSO_MAX: TFMTBCDField;
    cdsMolaMMO_COM_LIVRE: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_LIVRE_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_LIVRE_MAX: TFMTBCDField;
    cdsMolaMMO_COM_SOLIDO: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_SOLIDO_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_SOLIDO_MAX: TFMTBCDField;
    cdsMolaMMO_ESPIRAIS_UTEIS: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_ESPUTEIS_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_ESPUTEIS_MAX: TFMTBCDField;
    cdsMolaMMO_ESPIRAL_TOTAL: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_ESPT_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_ESPT_MAX: TFMTBCDField;
    cdsMolaMMO_DESENVOLVIMENTO: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_DES_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_DES_MAX: TFMTBCDField;
    cdsMolaMMO_RETIFICADO: TStringField;
    cdsMolaMMO_PARALIELISMO: TIntegerField;
    cdsMolaMMO_PERPENDICULARIMO: TFMTBCDField;
    cdsMolaMMO_SENTIDO: TStringField;
    cdsMolaMMO_PESO: TFMTBCDField;
    cdsMolaMMO_OBSERVACAO: TBlobField;
    cdsMolaMMO_CONSTANTE_ESPE: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_CONST_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_CONST_MAX: TFMTBCDField;
    cdsMolaMMO_CONSTANTE_CALCULADA: TFMTBCDField;
    cdsMolaMMO_CONST_CALC_MIN: TFMTBCDField;
    cdsMolaMMO_CONST_CALC_MAX: TFMTBCDField;
    cdsMolaMMO_ALTURAL1: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_ALT1_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_ALT1_MAX: TFMTBCDField;
    cdsMolaMMO_ALTURAL2: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_ALT2_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_ALT2_MAX: TFMTBCDField;
    cdsMolaMMO_ALTURAL3: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_ALT3_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_ALT3_MAX: TFMTBCDField;
    cdsMolaMMO_ALTURAL4: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_ALT4_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_ALT4_MAX: TFMTBCDField;
    cdsMolaMMO_CURSOS1: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_CURS1_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_CURS1_MAX: TFMTBCDField;
    cdsMolaMMO_CURSOS2: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_CURS2_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_CURS2_MAX: TFMTBCDField;
    cdsMolaMMO_CURSOS3: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_CURS3_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_CURS3_MAX: TFMTBCDField;
    cdsMolaMMO_CURSOS4: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_CURS4_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_CURS4_MAX: TFMTBCDField;
    cdsMolaMMO_CARGAP1: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_CARGA1_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_CARGA1_MAX: TFMTBCDField;
    cdsMolaMMO_CARGAP2: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_CARGA2_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_CARGA2_MAX: TFMTBCDField;
    cdsMolaMMO_CARGAP3: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_CARGA3_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_CARGA3_MAX: TFMTBCDField;
    cdsMolaMMO_CARGAP4: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_CARGA4_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_CARGA4_MAX: TFMTBCDField;
    cdsMolaMMO_TENSAO1: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_TENSAO1_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_TENSAO1_MAX: TFMTBCDField;
    cdsMolaMMO_TENSAO2: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_TENSAO2_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_TENSAO2_MAX: TFMTBCDField;
    cdsMolaMMO_TENSAO3: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_TENSAO3_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_TENSAO3_MAX: TFMTBCDField;
    cdsMolaMMO_TENSAO4: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_TENSAO4_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_TENSAO4_MAX: TFMTBCDField;
    cdsMolaMMO_CARGA: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_CARGA_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_CARGA_MAX: TFMTBCDField;
    cdsMolaMMO_TENSAO: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_TEN_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_TEN_MAX: TFMTBCDField;
    cdsMolaMMO_MAQUINA: TStringField;
    cdsMolaMMO_MANDRIL: TStringField;
    cdsMolaMMO_CACHIMBO: TStringField;
    cdsMolaMMO_COPIADOR: TStringField;
    cdsMolaMMO_GANCHO: TStringField;
    cdsMolaMMO_DISCO: TStringField;
    cdsMolaMMO_OUTROS: TStringField;
    cdsMolaMMO_LOCALIZACAO: TStringField;
    cdsMolaMMO_SETOR: TStringField;
    cdsMolaMMO_OBSGERAIS: TBlobField;
    cdsMolaMMO_TIPOEMBALAGEM: TStringField;
    cdsMolaMMO_COMP_CORPO: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_COMP_CORPO_MAX: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_COMP_CORPO_MIN: TFMTBCDField;
    cdsMolaMMO_ALT_GANCHO: TStringField;
    cdsMolaMMO_TOLERANCIA_ALT_GANCHO_MAX: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_ALT_GANCHO_MIN: TFMTBCDField;
    cdsMolaMMO_ABERT_GANCHO: TStringField;
    cdsMolaMMO_TOLERANCIA_ABERT_GANCHO_MAX: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_ABERT_GANCHO_MIN: TFMTBCDField;
    cdsMolaMMO_COMP_GANCHO: TFMTBCDField;
    cdsMolaMMO_DIAMETRO_EXT_MAIOR: TFMTBCDField;
    cdsMolaMMO_DIAMETRO_EXT_MENOR: TFMTBCDField;
    cdsMolaMMO_PERDA: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_DE_MAIOR_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_DE_MAIOR_MAX: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_DE_MENOR_MAX: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_COMP_GANCHO_MAX: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_COMP_GANCHO_MIN: TFMTBCDField;
    cdsMolaARA_NOME: TStringField;
    cdsMolaART_NOME: TStringField;
    cdsMolaCMO_NOME: TStringField;
    cdsMolaTSU_NOME: TStringField;
    cdsMolaASU_NOME: TStringField;
    cdsMolaACO_NOME: TStringField;
    cdsMolaPRD_DESCRI: TStringField;
    cdsMolaPRD_REFER: TStringField;
    cdsMolaPRF_QTDE: TFMTBCDField;
    cdsMolaGAN_NOME: TStringField;
    cdsMolaTEM_DESCRICAO: TStringField;
    cdsMolaPRF_PRAZO_ENTREGA: TDateField;
    frxDataPedido: TfrxDBDataset;
    frxDataItensPedido: TfrxDBDataset;
    frxDataMola: TfrxDBDataset;
    frxOP11: TfrxReport;
    frxDBOP11Cabecalho: TfrxDBDataset;
    frxDBOP11Corpo: TfrxDBDataset;
    qOP11Cabecalho: TFDQuery;
    qOP11Corpo: TFDQuery;
    qEngenhariaOP11: TFDQuery;
    frxDBEngenhariaOP11: TfrxDBDataset;
    cdsPedidosItemIOP_NORDEM: TStringField;
    cdsMolaIOP_NORDEM: TStringField;
    AlterarObservaes1: TMenuItem;
    cdsProdutoOP5PRD_FATOR_PROD: TFMTBCDField;
    frxOP12: TfrxReport;
    frxOP13: TfrxReport;
    cdsBuscaENF_IT_NOTANUMBER: TStringField;
    InformarFornecedor1: TMenuItem;
    cdsMolaMMO_TIPO: TStringField;
    cdsMolaMMO_VARIACAO: TStringField;
    cdsMolaPRF_SEQUENCIA: TIntegerField;
    cdsMolaPED_CODIGO: TStringField;
    cdsMolaEMP_CODIGO: TStringField;
    ListadeOrdemdeProduoporCliente1: TMenuItem;
    frxListaCliente: TfrxReport;
    cdsBuscaREP_CODIGO: TStringField;
    cdsMolaPRD_CODORIGINAL: TStringField;
    cdsMolaMMO_TOLERANCIA_DE_MENOR_MIN: TFMTBCDField;
    cdsMolaMMO_ARQUIVO_FICHA_TECNICA: TStringField;
    cdsMateriaPrimaAMX_CODIGO: TStringField;
    cdsMateriaPrimaAMX_DESCRI: TStringField;
    cxgrd1DBTableView1AMX_DESCRI: TcxGridDBColumn;
    cdsBuscaACO_NOME: TStringField;
    cdsBuscaPESO_TOTAL: TFMTBCDField;
    cxgrd1DBBandedTableView1ENF_IT_NOTANUMBER: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1ACO_NOME: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1PESO_TOTAL: TcxGridDBBandedColumn;
    ListagemdeOrdensporClienteeNotadeEntrada1: TMenuItem;
    frxListaClienteNF: TfrxReport;
    cdsMolaMMO_EXTREMIDADE_MOLA_MATERIA: TStringField;
    frxOrdemProducaoModelos: TfrxReport;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure cdsBuscaIOP_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsBuscaCalcFields(DataSet: TDataSet);
    procedure btnEditaClick(Sender: TObject);
    procedure cdsMateriaPrimaMP_SITUACAOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure Substituirinsumo1Click(Sender: TObject);
    procedure cdsMateriaPrimaPRD_DESCRIGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure EstornoInsumoClick(Sender: TObject);
    procedure miInformarempenhoClick(Sender: TObject);
    procedure Empenhosrealizados1Click(Sender: TObject);
    procedure cdsMateriaPrimaPRD_GERENCIA_LOTEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cxgrd1Level1GetGridView(Sender: TcxGridLevel; AMasterRecord: TcxCustomGridRecord; var AGridView: TcxCustomGridView);
    procedure cxgrd1DBTableView1CanFocusRecord(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; var AAllow: Boolean);
    procedure cdsHistoricoHOP_DESCRICAOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure btnExcluiClick(Sender: TObject);

    procedure cxgrd1DBTableView1ESTOQUEDISPONIVELStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure cdsBuscaIOP_NORDEMGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure Apontarserviosagregados1Click(Sender: TObject);
    function ConcluioSubOrdens ( const nordem : string; const prog: integer ) : boolean;
    procedure FormShow(Sender: TObject);
    procedure cdsBuscaBeforeRefresh(DataSet: TDataSet);
    procedure cdsBuscaAfterRefresh(DataSet: TDataSet);
    procedure frxRelOSP10GetValue(const VarName: string; var Value: Variant);
    procedure cxgrd1DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure cxgrd1DBBandedTableView1DataControllerDetailExpanding(ADataController: TcxCustomDataController; ARecordIndex: Integer; var AAllow: Boolean);
    procedure AdicionarMatriaprima1Click(Sender: TObject);
    procedure miAlterarconsumototalClick(Sender: TObject);
    procedure cxgrd1DBBandedTableView1FALTAGetProperties(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AProperties: TcxCustomEditProperties);
    procedure btnPesquisaClick(Sender: TObject);
    procedure chkFinalizadosClick(Sender: TObject);
    procedure cdsBuscaIOP_STATUS_ENTREGAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsBuscaIOP_DATA_AJUSTADAChange(Sender: TField);
    procedure cxgrd1DBBandedTableView1Editing(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cxgrd1DBBandedTableView1FALTAGetCellHint(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
      var AHintText: TCaption; var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure cxgrd1DBBandedTableView1CustomDrawGroupCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableCellViewInfo; var ADone: Boolean);
    procedure cxgrd1DBBandedTableView1StylesGetGroupStyle(Sender: TcxGridTableView; ARecord: TcxCustomGridRecord; ALevel: Integer; var AStyle: TcxStyle);
    procedure cxgrd1DBBandedTableView1CLI_RAZAOStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure cxgrd1DBBandedTableView1DataControllerFilterGetValueList(Sender: TcxFilterCriteria; AItemIndex: Integer; AValueList: TcxDataFilterValueList);
    procedure OrdemdeproduoModelo101Click(Sender: TObject);
    procedure ListadeOrdemdeProduo1Click(Sender: TObject);
    procedure frxListaGetValue(const VarName: string; var Value: Variant);
    procedure frxOP_Mod9GetValue(const VarName: string; var Value: Variant);
    procedure frxOP1GetValue(const VarName: string; var Value: Variant);
    procedure miOrdemProducaoClick(Sender: TObject);
    procedure Modelo4IndstriaQumicacomdensidade1Click(Sender: TObject);
    procedure frxOP4GetValue(const VarName: string; var Value: Variant);
    procedure btnConsultaClick(Sender: TObject);
    procedure cdsMateriaPrimaCalcFields(DataSet: TDataSet);
    procedure ListagemdeOrdensIniciadas1Click(Sender: TObject);
    procedure spEstornarInicioClick(Sender: TObject);
    procedure edPesquisaChange(Sender: TObject);
    procedure pgc1Change(Sender: TObject);
    procedure edPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure frxOP5BeginDoc(Sender: TObject);
    procedure frxOP5GetValue(const VarName: string; var Value: Variant);
    procedure frxOP6GetValue(const VarName: string; var Value: Variant);
    procedure frxOP6BeginDoc(Sender: TObject);
    procedure frxOP7BeginDoc(Sender: TObject);
    procedure frxOP8BeginDoc(Sender: TObject);
    procedure ExcluirInsumo1Click(Sender: TObject);
    procedure frxop9BeginDoc(Sender: TObject);
    procedure frxOP11BeginDoc(Sender: TObject);
    procedure frxOrdemProducao_OLDGetValue(const VarName: string; var Value: Variant);
    procedure AlterarObservaes1Click(Sender: TObject);
    procedure frxOP12BeginDoc(Sender: TObject);
    procedure frxOP12GetValue(const VarName: string; var Value: Variant);
    procedure frxOP13BeginDoc(Sender: TObject);
    procedure InformarFornecedor1Click(Sender: TObject);
    procedure ListadeOrdemdeProduoporCliente1Click(Sender: TObject);
    procedure frxOrdemProducaoModelosBeginDoc(Sender: TObject);
    procedure frxOrdemProducaoModelosGetValue(const VarName: string; var Value: Variant);
    procedure ListagemdeOrdensporClienteeNotadeEntrada1Click(Sender: TObject);
  private
    NaoAtualizaHistorico : boolean;
    sPedidoTitulo:string;
    sEmpresa, email_de_enviado: string;
    tcr: tProducaoDao;
    procedure EmpenharLote (const prd_codigo, prd_refer,nordem , tipo : string ;const  mp_codigo, iop_codigo : integer ;const FaltaEmpenhar: double );
    procedure EmpenharSemLote (const prd_codigo, prd_refer,nordem , tipo : string ;const  mp_codigo, iop_codigo : integer ;const aEmpenhar: double );
    function ConcluioApontamentos (const iop_codigo : integer): boolean ;
    procedure InsereRequisicaoDeMaterial;
  public
    var Item: integer;
    var pcpTemp: string;
    procedure filtro;

    procedure AbrirPendente ;
  end;

var
  frmGerenciamentoPCP: TfrmGerenciamentoPCP;

implementation

uses uteis, InicioDB, uvinculandoServico, Animacao, RWFunc, uPCPObservacaoIOP, uSelecionaAlmoxarifado,
     uRequisicaoMaterial, uRequisicaoMaterialPesq, uPCPInformaFornecedor;
{$R *.dfm}

procedure TfrmGerenciamentoPCP.AbrirPendente;
var i,AScrollPos : integer;
begin
   if not cdsBusca.IsEmpty then
   begin
     //i:= cxgrd1DBBandedTableView1.DataController.Groups.ChildCount[-1] ;
     for I := 0 to cxgrd1DBBandedTableView1.DataController.RowCount - 2 do
     begin
      try
        if cxgrd1DBBandedTableView1.DataController.GetRowInfo(I).Level = 0 then
        begin
           if cxgrd1DBBandedTableView1.DataController.
             GetRowValue(cxgrd1DBBandedTableView1.DataController.GetRowInfo(I),cxgrd1DBBandedTableView1IOP_STATUS.Index) = 'L' then
           begin
             cxgrd1DBBandedTableView1.DataController.Groups.ChangeExpanding(i,true,false);
             cxgrd1DBBandedTableView1.Controller.FocusedRowIndex := i+1;
             AScrollPos := 0;
             cxgrd1DBBandedTableView1.Controller.Scroll(sbVertical, scTrack, AScrollPos);
           end
           else
              cxgrd1DBBandedTableView1.DataController.Groups.ChangeExpanding(i,false,false);
        end;
      except

      end;
     end;
   end;
end;

procedure TfrmGerenciamentoPCP.AdicionarMatriaprima1Click(Sender: TObject);
var prd_codigo : string;
    consumindo, consumoUnitario : double;

    ARelationIndex : integer;

    pedido, nordem ,prd_refer : string;
    iop_codigo, mp_codigo,  opr_codigo : integer;
begin
  inherited;

 with cxgrd1DBBandedTableView1 do
 begin
  If DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1IOP_STATUS.Index] = 'F' then
    raise Exception.Create('Produção já concluida');
    // como estou usando um query virtual
    ARelationIndex := TcxGridDBDataController(DataController).GetDetailActiveRelationIndex(DataController.FocusedRecordIndex);



    if not Assigned(frmSelecaoProduto) then
      frmSelecaoProduto := TfrmSelecaoProduto.Create(Application);
    try


      frmSelecaoProduto.ConsumoTotal := 0;
      frmSelecaoProduto.Caption := 'Adicionando uma nova MP à ordem ';

      if frmSelecaoProduto.ShowModal = mrOk then
      begin
        prd_codigo :=  frmSelecaoProduto.cod_prod  ;
        prd_refer := frmSelecaoProduto.Cod_refer;
        consumindo := frmSelecaoProduto.ConsumoTotal;
        consumoUnitario := frmSelecaoProduto.ConsumoUnitario;

        pedido :=  Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1PED_CODIGO.Index];
        iop_codigo := Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1IOP_CODIGO.Index];
        opr_codigo := Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1OPR_CODIGO.Index];
        nordem:=  Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1IOP_NORDEM.Index];

        //adicionando a mp
         mp_codigo:= tcr.AdicionandoMP(self, pedido,
                          prd_codigo,
                          nordem,
                          iop_codigo,
                          opr_codigo,
                          consumoUnitario,  // consumo unitário
                          0,  //base de composicao
                          consumindo,
                          -1,0 );
        tcr.HistoricoProducao(iop_codigo,mp_codigo,'Adicionado '+FormatFloat('###,###,##.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED),consumindo) + ' de nova MP');
        cdsMateriaPrima.close;
        cdsMateriaPrima.Open;
        if DBInicio.Empresa.bUSP_CUSTOPRODUCAO then
        begin
          cdsbusca.close;
          cdsbusca.open;
        end;

      end;
    finally
      FreeAndNil(frmSelecaoProduto);

    end;
 end;

end;

procedure TfrmGerenciamentoPCP.AlterarObservaes1Click(Sender: TObject);
var
  iopCodigo: integer;
  pedCodigo, prdCodigo, prdRefer, obsPrd,obsPed: string;
  qAux4: TFDQuery;
begin
  inherited;
  qAux4 := TFDQuery.Create(Self);
  qAux4.Connection := DBInicio.FDACConn;

  if not Assigned(frmPCPObservacaoIOP) then
    frmPCPObservacaoIOP := TfrmPCPObservacaoIOP.Create(Application);

  iopCodigo := cxgrd1DBBandedTableView1.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1IOP_CODIGO.Index];
  pedCodigo := cxgrd1DBBandedTableView1.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1PED_CODIGO.Index];
  prdCodigo := cxgrd1DBBandedTableView1.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1PRD_CODIGO.Index];
  prdRefer := cxgrd1DBBandedTableView1.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1PRD_REFER.Index];

  // não dá pra usar o BuscaUmDadoSqlAsString por causa de um bug do driver do DBExpress que traz os blob binary em chinês...
  qAux4.Close;
  qAux4.SQL.Text := 'SELECT IOP_OBSERVACAO_PED FROM ITEM_ORDEMPRODUCAO WHERE IOP_CODIGO = ' + IntToStr(iopCodigo);
  qAux4.Open;
  obsPed := qAux4.FieldByName('IOP_OBSERVACAO_PED').AsString;
  if obsPed = '' then
  begin
    qAux4.Close;
    qAux4.SQL.Text := 'SELECT PED_OBS_PRODUCAO FROM PED0000 WHERE PED_CODIGO = ' + QuotedStr(pedCodigo);
    qAux4.Open;
    frmPCPObservacaoIOP.ObsPed.Text := qAux4.FieldByName('PED_OBS_PRODUCAO').AsString;
  end
  else
    frmPCPObservacaoIOP.ObsPed.Text := obsPed;

    
  qAux4.Close;
  qAux4.SQL.Text := 'SELECT IOP_OBSERVACAO_PRD FROM ITEM_ORDEMPRODUCAO WHERE IOP_CODIGO = ' + IntToStr(iopCodigo);
  qAux4.Open;
  obsPrd := qAux4.FieldByName('IOP_OBSERVACAO_PRD').AsString;
  if obsPrd = '' then
  begin
    qAux4.Close;
    qAux4.SQL.Text := 'SELECT FTC_ETAPAS FROM FTC0000 WHERE PRD_REFER = ' + QuotedStr(prdRefer);
    qAux4.Open;
    frmPCPObservacaoIOP.ObsPrd.Text := qAux4.FieldByName('FTC_ETAPAS').AsString;
  end
  else
    frmPCPObservacaoIOP.ObsPrd.Text := obsPrd;
                                             
    
  if frmPCPObservacaoIOP.ShowModal <> mrOk then
    Exit;
  ExecSql('UPDATE ITEM_ORDEMPRODUCAO SET IOP_OBSERVACAO_PED = ' + QuotedStr(frmPCPObservacaoIOP.ObsPed.Text) + ' WHERE IOP_CODIGO = ' + IntToStr(iopCodigo));
  ExecSql('UPDATE ITEM_ORDEMPRODUCAO SET IOP_OBSERVACAO_PRD = ' + QuotedStr(frmPCPObservacaoIOP.ObsPrd.Text) + ' WHERE IOP_CODIGO = ' + IntToStr(iopCodigo));

end;

procedure TfrmGerenciamentoPCP.miAlterarconsumototalClick(Sender: TObject);
var
  ADetailDataController: TcxGridDBDataController;
  ARelationIndex, mp_codigo : integer;
  consumoTotal, empenhado, novoConsumo : double;
  invalido : boolean;
  NovoConsumoStr: string;
begin
 if cdsMateriaPrima.IsEmpty then
    exit;
 with cxgrd1DBBandedTableView1 do
 begin
  If DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1IOP_STATUS.Index] = 'F' then
    raise Exception.Create('Produção já concluida');
    // como estou usando um query virtual
    ARelationIndex := TcxGridDBDataController(DataController).GetDetailActiveRelationIndex(DataController.FocusedRecordIndex);
    ADetailDataController := TcxGridDataController(DataController).GetDetailDataController(DataController.FocusedRecordIndex, ARelationIndex) as TcxGridDBDataController;

    if not VarIsNull(ADetailDataController.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1MP_CONSUMOTOTAL.Index]) then
      consumoTotal := ADetailDataController.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1MP_CONSUMOTOTAL.Index];
    if not VarIsNull(ADetailDataController.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1MP_EMPENHADO.Index]) then
       empenhado := ADetailDataController.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1MP_EMPENHADO.Index];

    mp_codigo := ADetailDataController.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1MP_CODIGO.Index];
    invalido := True;
    while invalido do
    begin
     if InputQuery('Alterar consumo total para ','Consumo ficará com',NovoConsumoStr) then
     begin
       if not TryStrToFloat( NovoConsumoStr,novoConsumo) then
       begin
         ShowMessage('Valor Inválido');;
         Continue;
       end;
       if novoConsumo < 0 then
       begin
         ShowMessage('Não pode ser menor que zero');
         continue;
       end;
       if novoConsumo = 0 then
       begin
         ShowMessage('Não pode ser zero');
         continue;
       end;
       if novoConsumo < empenhado then
       begin
         ShowMessage('Não pode ser menor do que já foi empenhado');
         continue;
       end;
       IF tcr.AlterarConsumoTotal(mp_codigo,novoConsumo) then
       begin
         cdsMateriaPrima.Close;
         cdsMateriaPrima.Open;
       end
       else
         ShowMessage('Algo ocorreu ao gravar');
       invalido := False;
     end
     else
       invalido := False;

    end;

 end;


end;

procedure TfrmGerenciamentoPCP.Apontarserviosagregados1Click(Sender: TObject);
var mk : TBookmark;
begin
  inherited;
  // como estou usando um query virtual
  If cxgrd1DBBandedTableView1.DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1IOP_STATUS.Index] = 'L' then
     raise Exception.Create('Produção ainda não iniciada');

  if not Assigned( frmVinculandoServico) then
    frmVinculandoServico := TfrmVinculandoServico.Create(Application);

  frmVinculandoServico.iop_codigo := cdsBuscaIOP_CODIGO.AsInteger;
  if frmVinculandoServico.ShowModal = mrOk then
  begin
    mk := cdsBusca.GetBookmark;
    try
     btnPesquisa.Click;
     cdsbusca.GotoBookmark(mk);
    finally
     cdsbusca.FreeBookmark (mk);
    end;

  end;
end;

procedure TfrmGerenciamentoPCP.btnConsultaClick(Sender: TObject);
var
    prd_codigo, prd_Refer, descricao, sql, numlote  : string;
    dtafabrica, dtvalidade : TDateTime;
    iop_codigo, registro, SEQ : integer;


    JaTemLote : boolean;
begin
  inherited;
   with cxgrd1DBBandedTableView1 do
   begin

    prd_codigo := DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1PRD_CODIGO.Index];
    prd_Refer  := DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1PRD_REFER.Index];
    descricao  := DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1PRD_DESCRI.Index];
    try
      iop_codigo :=  DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1IOP_CODIGO.Index];
    except
      ShowMessage('Por favor, escolha um item para informar o lote.');
      exit;
    end;

    qAux4.Close;
    qAux4.SQL.Clear;
    qAux4.SQL.Text := 'select * from PRD_LOTE WHERE IOP_CODIGO = '+IntToStr(iop_codigo)  ;
    qAux4.Open;
    JaTemLote := not qAux4.IsEmpty;

    numlote :=  qAux4.FieldByName('prdl_lote').AsString;
    dtafabrica := qAux4.FieldByName('prdl_data_fabricacao').AsDateTime;
    dtvalidade := qAux4.FieldByName('prdl_data_validade').AsDateTime;
    registro := qAux4.FieldByName('prdl_registro').AsInteger;
  end;
  if not Assigned(frmInfLotePrd) then
    frmInfLotePrd :=TfrmInfLotePrd.Create(Application);
  try
    if JaTemLote then
    begin
      frmInfLotePrd.edLote.Text := numlote;
      frmInfLotePrd.dtValidade.Date :=  dtvalidade;
      frmInfLotePrd.dtFabricacao.Date := dtafabrica;
    end;

    if frmInfLotePrd.ShowModal = mrok then
    begin
       if JaTemLote then
         ExecSql('update prd_lote  '+
                 ' set  prdl_lote = '+QuotedStr( frmInfLotePrd.edLote.Text)+
                 ' ,  prdl_data_fabricacao = '+DateToSQL( frmInfLotePrd.dtFabricacao.Date) +
                 ' ,  prdl_data_validade = '+DateToSQL(frmInfLotePrd.dtValidade.Date)+
                 ' where prdl_registro = '+ IntToStr(registro)  )
       else
       begin
         registro:= GetNextSequence('gen_prd_lote_id');

         sql:= 'INSERT INTO PRD_LOTE  (PRDL_REGISTRO, EMP_CODIGO,       '+
                           ' PRDL_DATA_FABRICACAO, PRDL_DATA_VALIDADE,              '+
                           ' PRDL_LOTE,  PRD_CODIGO, PRDL_CADASTRO, IOP_CODIGO '+
                           '  )                                      '+
                           ' VALUES('+IntToStr(registro) +',' +
                            QuotedStr(DBInicio.Empresa.EMP_CODIGO) +',' +
                            datetoSQL(frmInfLotePrd.dtFabricacao.Date) + ','+
                            datetosql(frmInfLotePrd.dtValidade.Date) +',' +
                            QuotedStr(frmInfLotePrd.edLote.Text) +','+
                            QuotedStr(prd_codigo) +','+
                            datetosql(date) + ','+
                            IntToStr(iop_codigo)+
                            ')';
                            ;
         ExecSql(SQL);
       end;

    end;
  finally
    FreeAndNil(frmInfLotePrd);
    btnPesquisa.Click;
  end;

end;

procedure TfrmGerenciamentoPCP.btnEditaClick(Sender: TObject);
var hist :string;
begin
  inherited;
  if cdsBuscaIOP_STATUS.AsString = 'F' then
    GeraException('OP já finalizada');

  if cdsBuscaIOP_STATUS.AsString ='C' then
    GeraException('OP já cancelada');

  if cdsBuscaIOP_STATUS.AsString <> 'L' then
    GeraException('OP já iniciada');

  hist :=  InputBox('Motivo','Motivo do retorno','');
  fmAnimacao := TfmAnimacao.Create(application);
  try
   fmAnimacao.Panel1.Caption :=  'Retornando a demanda. Aguarde...';
   fmAnimacao.Panel1.Font.Color := clBlack;
   Application.ProcessMessages;
   fmAnimacao.Show;
   tcr.RetornarDemanda(cdsBuscaIOP_CODIGO.AsInteger, cdsBuscaIOP_NORDEM.AsString, cdsBuscaIOP_PREFIXO.AsString, hist);

  finally
    fmAnimacao.Close;
  end;
  btnPesquisa.Click;
end;

function TfrmGerenciamentoPCP.ConcluioApontamentos(const iop_codigo: integer): boolean;
begin
  result := BuscaUmDadoSqlAsInteger(
             '   SELECT count(*) FROM FABRICACAO '+
             '   WHERE IOP_CODIGO = '+IntToStr(iop_codigo) +
             '   AND DATA_CONCLUSAO IS NULL        '  ) =0;
end;

function TfrmGerenciamentoPCP.ConcluioSubOrdens(const nordem: string; const prog: integer): boolean;
begin
  result := BuscaUmDadoSqlAsInteger(' SELECT count(*) FROM ITEM_ORDEMPRODUCAO '+
                             ' WHERE IOP_NORDEM CONTAINING '+ QuotedStr(nordem)+
                             ' AND IOP_NORDEM <> '+ QuotedStr(nordem)+
                             ' AND IOP_SEQ_PRG = '+ inttostr(prog) +
                             ' and prf_registro is null '+
                             ' AND iop_data_conclusao IS  NULL   ') =0;
end;

procedure TfrmGerenciamentoPCP.btnExcluiClick(Sender: TObject);
var
    prd_codigo, prd_Refer, descricao, sql, numlote ,nordem, prefixo, ped_codigo, almoxarifado : string;
    quantProduzir, quantConcluida, FaltaConcluir : double;
    iop_codigo, registro, SEQ : integer;
    kardex : TfrmBaseDbEstoque ;
    ordemPrg : integer;
    dtafabrica, dtvalidade : TDateTime;
    JaTemLote : boolean;
begin
 with cxgrd1DBBandedTableView1 do
 begin
    // como estou usando um query virtual
    If DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1IOP_STATUS.Index] = 'L' then
      raise Exception.Create('Produção ainda não iniciada');
    If DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1IOP_STATUS.Index] = 'F' then
      raise Exception.Create('Produção já concluida');
    registro := 0 ;
    prd_codigo := DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1PRD_CODIGO.Index];
    prd_Refer  := DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1PRD_REFER.Index];
    descricao  := DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1PRD_DESCRI.Index];
    quantProduzir := DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1IOP_QUANTIDADE.Index];
    iop_codigo :=  DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1IOP_CODIGO.Index];
    nordem :=     DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1IOP_NORDEM.Index];
    prefixo :=    DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1IOP_PREFIXO.Index];
    ped_codigo := DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1PED_CODIGO.Index];
    if not VarIsNull( DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1IOP_QTDE_CONCLUIDA.Index]) then
      quantConcluida := DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1IOP_QTDE_CONCLUIDA.Index]
    else
      quantConcluida := 0 ;
    if not VarIsNull( DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1IOP_SEQ_PRG.Index]) then
      ordemPrg := DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1IOP_SEQ_PRG.Index]
    else
      ordemPrg := 0;
//    if DBInicio.Empresa.Bpmt_gerarsubordens then
      if not ConcluioSubOrdens(nordem,ordemPrg) then
        raise Exception.Create('Não concluido todos as subordens');

    IF NOT DBInicio.Empresa.wPMT_OP_SEMAPONTA then
      if not ConcluioApontamentos(iop_codigo) then
        raise Exception.Create('Não concluido todos os apontamentos das operações ');
    if not Assigned( frmConclusaoOP) then
      frmConclusaoOP := tfrmConclusaoOP.Create(Application);
    try
      frmConclusaoOP.Descricao := descricao;
      frmConclusaoOP.prd_refer := prd_refer;
      frmConclusaoOP.TotalProducao  := quantProduzir;
      FaltaConcluir := quantProduzir- quantConcluida ;
      frmConclusaoOP.quantConcluida := quantConcluida ;
      frmConclusaoOP.FaltaConcluir :=  FaltaConcluir;
      frmConclusaoOP.controle := BuscaUmDadoSqlAsString('select PRD_GERENCIA_LOTE FROM PRD0000 where prd_codigo = '+QuotedStr(prd_codigo) ) = 'S';
      qAux4.Close;
      qAux4.SQL.Clear;
      qAux4.SQL.Text := 'select * from PRD_LOTE WHERE IOP_CODIGO = '+IntToStr(iop_codigo);
      qAux4.Open;
      JaTemLote := not qAux4.IsEmpty;
      if JaTemLote then
      begin
        frmConclusaoOP.edLote.Text := qAux4.FieldByName('prdl_lote').AsString;
        frmConclusaoOP.dtValidade.Date :=  qAux4.FieldByName('prdl_data_validade').AsDateTime;
        frmConclusaoOP.dtFabricacao.Date := qAux4.FieldByName('prdl_data_fabricacao').AsDateTime;
        registro := qAux4.FieldByName('prdl_registro').AsInteger;
        frmConclusaoOP.registro := registro;
        if DBInicio.GetParametroSistema('PMT_BAIXA_ESTOQUE_AVANCADO')  = 'S' then
        begin
          frmConclusaoOP.cbAlmoxarifado.idRetorno := BuscaUmDadoSqlAsString(
            'SELECT  ' +
            '  CASE ' +
            '    WHEN COALESCE(mo.AMX_CODIGO, '''') <> '''' THEN mo.AMX_CODIGO ' +
            '    WHEN COALESCE(A.AMX_CODIGO, '''' ) <> '''' THEN A.AMX_CODIGO ' +
            '    ELSE (SELECT PMT_AMX_PRODUCAO_SAIDA  FROM PRMT0001 WHERE EMP_CODIGO = ' + QuotedStr(dbInicio.emp_Codigo) +  ')' +
            '   END AMX_CODIGO ' +
            ' FROM ORDEMPRODUCAO o ' +
            '    JOIN ITEM_ORDEMPRODUCAO io ON (io.OPR_CODIGO = o.OPR_CODIGO) ' +
            '    JOIN MATERIAPRIMA_ORDEMPRODUCAO mo ON ( mo.IOP_CODIGO = io.IOP_CODIGO ) ' +
            '    LEFT JOIN ALMOX0000 a ON a.AMX_CNPJ_PART = (SELECT c.CLI_CGC FROM CLI0000 c WHERE c.CLI_CODIGO = o.CLI_CODIGO ) ' +
            ' WHERE io.IOP_CODIGO =  ' + IntToStr(iop_codigo)
          );
          frmConclusaoOP.gbEntradaProducao.Visible := True;
        end
        else
        begin
          frmConclusaoOP.gbEntradaProducao.Visible := False;
          frmConclusaoOP.cbAlmoxarifado.idRetorno := dbInicio.Empresa.PMT_AMX_PRODUCAO_ENTRADA;
        end;

      end;
      if frmConclusaoOP.ShowModal = mrOk then
      begin
         tcr.ConcluirORDEM (FaltaConcluir,quantConcluida,frmConclusaoOP.edConcluida.AsFloat, frmConclusaoOP.edRefugada.AsFloat, iop_codigo, prd_codigo, ped_codigo);
         // PRODUTO controla por lote
          if frmConclusaoOP.controle then
          begin
            if not JaTemLote then
            begin
              registro:= GetNextSequence('gen_prd_lote_id');
              if DBInicio.Empresa.PMT_GERAR_NUM_LOTE = 'M' then
                numlote:= frmConclusaoOP.edLote.Text
              Else
              Begin
                SEQ := BuscaUmDadoSqlAsInteger('SELECT COUNT (*) FROM PRD_LOTE WHERE IOP_CODIGO = ' +IntToStr(iop_codigo));
                inc(seq);
                numlote:= frmConclusaoOP.edLote.Text
                // numlote := 'LT'+nordem+ '/'+IntToStr(seq);
              End;

               sql:= 'INSERT INTO PRD_LOTE  (PRDL_REGISTRO, EMP_CODIGO,       '+
                     ' PRDL_DATA_FABRICACAO, PRDL_DATA_VALIDADE,              '+
                     ' PRDL_LOTE, AMX_CODIGO, PRDL_SALDO, PRD_CODIGO, PRDL_CADASTRO, PRDL_DESCRICAO , IOP_CODIGO '+
                     '  )                                      '+
                     ' VALUES('+IntToStr(registro) +',' +
                      QuotedStr(DBInicio.Empresa.EMP_CODIGO) +',' +
                      datetoSQL(frmConclusaoOP.dtFabricacao.Date) + ','+
                      datetosql(frmConclusaoOP.dtValidade.Date) +',' +
                      QuotedStr(numlote) +','+
                      QuotedStr(frmConclusaoOP.cbAlmoxarifado.idRetorno) +','+
                      floattosql (frmConclusaoOP.edConcluida.AsFloat) +','+
                      QuotedStr(prd_codigo) +','+
                      datetosql(date) + ','+
                      QuotedStr(frmConclusaoOP.edLote.Text) +  ','+
                      // QuotedStr(iif(DBInicio.Empresa.PMT_GERAR_NUM_LOTE = 'A','Lote automático gerado pela OP No.: '+nordem,''))  +  ','+
                      IntToStr(iop_codigo)+
                      ')';
                      ;
               ExecSql(SQL);
            end
            else
            begin
                ExecSql('update prd_lote  '+
                 ' set  ' +
                 '    prdl_lote = '+QuotedStr( frmConclusaoOP.edLote.Text)+
                 ' ,  amx_codigo = '+QuotedStr( frmConclusaoOP.cbAlmoxarifado.idRetorno)+
                 ' ,  prdl_data_fabricacao = '+DateToSQL( frmConclusaoOP.dtFabricacao.Date) +
                 ' ,  prdl_data_validade = '+DateToSQL(frmConclusaoOP.dtValidade.Date)+
                 ' ,  prdl_saldo = ' + FloatToSQL(frmConclusaoOP.edConcluida.AsFloat)+
                 ' ,  prdl_qtdelote = ' + FloatToSQL(frmConclusaoOP.edConcluida.AsFloat)+
                 ' where prdl_registro = '+ IntToStr(registro)  )
            end;
          end;
         kardex := TfrmBaseDbEstoque.Create(self);


         if DBInicio.GetParametroSistema('PMT_MULTIPLAS_IE') = 'S' then
         begin
           almoxarifado := BuscaUmDadoSqlAsString(
             ' SELECT al.AMX_CODIGO ' +
             ' FROM  ORDEMPRODUCAO op ' +
             '  JOIN ITEM_ORDEMPRODUCAO iop ON (iop.OPR_CODIGO = op.OPR_CODIGO) ' +
             '  JOIN PED0000 pd ON (pd.PED_CODIGO = op.PED_CODIGO) ' +
             '  JOIN ALMOX0000 al ON (al.EMI_CODIGO = pd.EMI_CODIGO) ' +
             '  WHERE IOP_CODIGO = ' + IntToStr(iop_codigo)
           );
         end
         else
         begin
           if frmConclusaoOP <> nil then
              almoxarifado := frmConclusaoOP.cbAlmoxarifado.idRetorno
           else
              almoxarifado := DBInicio.empresa.PMT_AMX_PRODUCAO_ENTRADA;
         end;



         try
           kardex.KardexLancamento(
             NORDEM,     //registro interno
            'PRO',      // TIPO DE REGISTRO
            almoxarifado,
             '',   //amoxarifado destino
            PRD_CODIGO,
            '',//grade
            '', //UNIDADE DE MEDIDA
            'E', // SAIDA
            numlote,
             IntToStr(registro),
            'ENTRADA DE PRODUÇÃO',
            Now,
            frmConclusaoOP.edConcluida.AsFloat,
            nordem,
            prd_refer,
             0
               );
            TCR.HistoricoProducao(iop_codigo,0,'Gerado Lote '+ numlote);
         finally
          kardex.Free;
         end;
        cdsbusca.Refresh;
      end
      else
      begin
        if frmConclusaoOP.ModalResult = mrRetry then
        begin
          if MessageDlg('A Ordem ' + NORDEM + ', será encerrada. Está certo disto?' , mtConfirmation, [mbNo, mbYes], 0) = mrYes then
          begin
            ExecSql(' update ITEM_ORDEMPRODUCAO '+
              ' set iop_status = '+QuotedStr('F') +
            ' where iop_codigo = '+ IntToStr(iop_codigo))  ;
          end;
        end;

      end;

    finally
      FreeAndNil( frmConclusaoOP);

    end;
 end;
 dbConn.Commit;
 btnPesquisa.Click;
end;

procedure TfrmGerenciamentoPCP.btnNovoClick(Sender: TObject);
var dep_codigo : integer;
    almoxarifado: string;
begin
  inherited;

  if cdsBuscaIOP_STATUS.AsString = 'F' then
    GeraException('OP já finalizada');

  if cdsBuscaIOP_STATUS.AsString ='C' then
    GeraException('OP já cancelada');

  if cdsBuscaIOP_STATUS.AsString <> 'L' then
    GeraException('OP já iniciada');


  if (MessageDlg('Deseja realmente iniciar a ordem '+ cdsBuscaIOP_NORDEM.AsString+ '?',
         mtConfirmation, [mbYes, mbNo], 0) in [mrNone, mrNo]) then
    exit;

  qAux4.Close;
  qAux4.SQL.Clear;
  qAux4.SQL.Text := 'SELECT PMT_AUTORIZA_EMPENHO FROM PRMT0001 WHERE EMP_CODIGO = ' + DBInicio.Empresa.EMP_CODIGO;
  qAux4.Open;
  if (qAux4.FieldByName('PMT_AUTORIZA_EMPENHO').AsString = 'N') and (DBInicio.Empresa.PMT_COMSUMIRINSUMO <> 'R' )  then
  begin
    cdsMateriaPrima.First;
    while not cdsMateriaPrima.eof do
    begin
      if cdsMateriaPrimaMP_CONSUMOTOTAL.AsFloat > cdsMateriaPrimaESTOQUEDISPONIVEL.asFloat then
      begin
        ShowMessage('Quantidade Insuficiente para empenho! Necessário: ' + cdsMateriaPrimaMP_CONSUMOTOTAL.AsString + ' - Disponível: ' + cdsMateriaPrimaESTOQUEDISPONIVEL.AsString);
        exit;
      end;
      cdsMateriaPrima.Next;
    end;
    cdsMateriaPrima.First;
  end;


  if DBInicio.GetParametroSistema('PMT_BAIXA_ESTOQUE_AVANCADO')  = 'S' then
  begin
    pcpTemp := 'PCP_TEMP' + DBInicio.Usuario.CODIGO + FormatDateTime('ddmmyyyhhmmss', now);
    ExecSQL('RECREATE TABLE ' + pcpTemp +  ' (PRD_CODIGO VARCHAR(5), PRD_REFER VARCHAR(20), AMX_CODIGO VARCHAR(4) ) ', false );
{
    OpenAux4(' SELECT fi.AMX_CODIGO, op.CLI_CODIGO ' +
              ' FROM ORDEMPRODUCAO op ' +
              ' JOIN ITEM_ORDEMPRODUCAO iop ON (iop.OPR_CODIGO = op.OPR_CODIGO ) ' +
              ' JOIN PRD0000 pr ON (pr.PRD_CODIGO = iop.PRD_CODIGO) ' +
              ' LEFT JOIN FTC0000 ft ON (ft.PRD_REFER = pr.PRD_REFER) ' +
              ' LEFT JOIN FTC_IT01 fi ON ft.PRD_REFER = fi.PRD_REFER ' +
              ' WHERE iop.IOP_CODIGO = ' + cdsBuscaIOP_CODIGO.AsString +
              ' AND fi.PRD_REFER_ITENS = ' + QuotedStr(cdsMateriaPrimaPRD_REFER.AsString)
              );
    almoxarifado :=  BuscaUmDadoSqlAsString('SELECT a.AMX_CODIGO, A.AMX_CNPJ_PART  FROM ALMOX0000 a WHERE a.AMX_CNPJ_PART = (SELECT c.CLI_CGC  FROM CLI0000 c WHERE CLI_CODIGO = ' + QuotedStr(qAux4.FieldByName('CLI_CODIGO').AsString) + ' ) ' );
}
    if frmSelecionaAlmoxarifado = nil then
     frmSelecionaAlmoxarifado := TfrmSelecionaAlmoxarifado.Create(Application);
    frmSelecionaAlmoxarifado.lbAtencao.Caption := 'ATENÇÂO!!! ' + cdsBuscaPRD_REFER.AsString + ' - ' + cdsBuscaPRD_DESCRI.AsString;
    frmSelecionaAlmoxarifado.ShowModal;
    if frmSelecionaAlmoxarifado.ModalResult <> mrOk then
      Abort;
  end;
  FreeAndNil(frmSelecionaAlmoxarifado);
  cdsMateriaPrima.First;

   try
      TSpeedButton(sender).Enabled := False;
        //INICIO DA PODUÇÃO
        ExecSql('update ITEM_ORDEMPRODUCAO  ' +
                ' set iop_data_inicio = ' + DateTimeToSQL(now)+
                ' , iop_status = '+ QuotedStr('I') +
                ' WHERE IOP_CODIGO = '+ cdsBuscaIOP_CODIGO.AsString);

        dep_codigo :=  BuscaUmDadoSqlAsInteger (' SELECT dep_codigo FROM DEMANDA_PRODUCAO ' +
                                                  '  WHERE iop_codigo = '+  cdsBuscaIOP_CODIGO.AsString);

        //ATUALIZA A DEMANDA PARA INDICAR INICIADO A PRODUÇÃO
        tcr.AtualizarStatusDemanda(dep_codigo,cdsBuscaIOP_CODIGO.AsInteger, 'I');
        TCR.DemandaHistorico(dep_codigo,'Start na produção',
                              cdsBuscaPED_CODIGO.AsString,
                              cdsBuscaPRD_CODIGO.AsString);
        TCR.HistoricoProducao(cdsBuscaIOP_CODIGO.AsInteger,0,'Start da produção');

        //inicio da produção e consumo de insumo quando inicia
        {
          M - Manual
          E - Ao Enviar a produção
          I - Ao Iniciar a produção
          A - Ao fazer o apontamento
          R - Abrir Requisição de Material
        }
        if DBInicio.Empresa.PMT_COMSUMIRINSUMO = 'I' then
        begin
           tcr.ConsumirEstoqueInsumo(cdsBuscaIOP_CODIGO.AsInteger, cdsBuscaIOP_NORDEM.AsString);
           cdsMateriaPrima.close;
           cdsMateriaPrima.Open;
        end;
        if DBInicio.Empresa.PMT_COMSUMIRINSUMO = 'R' then
          InsereRequisicaoDeMaterial;


        if not (cdsbusca.State in dsEditModes) then
           cdsBusca.Edit;
        cdsBuscaIOP_DATA_INICIO.AsDateTime := now;
        cdsBuscaIOP_STATUS.AsString := 'I';
        cdsBusca.Post;
   finally

     try

       ExecSql('DROP TABLE ' + pcpTemp, false);
     except
       // faz nada
     end;

     TSpeedButton(Sender).Enabled := True;

   end;
end;

procedure TfrmGerenciamentoPCP.btnPesquisaClick(Sender: TObject);
begin
  if NOT assigned (frmGerenciamentoPCP) then exit;
  if not frmGerenciamentoPCP.visible then exit;
  if frmGerenciamentoPCP <> nil then
    NaoAtualizaHistorico := True;
  inherited;
  if frmGerenciamentoPCP <> nil then
    NaoAtualizaHistorico := False;
  AbrirPendente;
end;

procedure TfrmGerenciamentoPCP.cdsBuscaAfterRefresh(DataSet: TDataSet);
begin
  inherited;
  if Assigned(frmGerenciamentoPCP) then
    NaoAtualizaHistorico := False;
end;

procedure TfrmGerenciamentoPCP.cdsBuscaBeforeRefresh(DataSet: TDataSet);
begin
  inherited;
  NaoAtualizaHistorico := True;
end;

procedure TfrmGerenciamentoPCP.cdsBuscaCalcFields(DataSet: TDataSet);
begin
  inherited;
  //calculo de quantos % 100 ainda falta produzir
  if cdsBuscaIOP_QTDE_CONCLUIDA.IsNull then
    cdsBuscaFALTA.AsFloat := 0
  else
     cdsBuscaFALTA.AsFloat :=((cdsBuscaIOP_QTDE_CONCLUIDA.AsFloat)/  cdsBuscaIOP_QUANTIDADE.AsFloat)  *100  ;

  if cdsBuscaDEADLINE.AsFloat>0 then
  begin
     cdsBuscaPrazo.AsFloat := 100 - (100*cdsBuscaLEFTDAYS.AsInteger/cdsBuscaDEADLINE.AsInteger);
  end;

  cdsBuscaCustoTotal.AsFloat  := cdsBuscaIOP_CUSTOMP.AsFloat + cdsBuscaIOP_CUSTOOPERACAO.AsFloat + cdsBuscaIOP_CUSTOCOLABORADOR.AsFloat+
                                 cdsBuscaIOP_CUSTOEQUIPAMENTO.AsFloat + cdsBuscaIOP_CUSTOSERVICOS.AsFloat + cdsBuscaCustoSubOrdens.AsFloat;

  if not (cdsBuscaPRF_REGISTRO.IsNull)  and (cdsBuscaCustoTotal.AsFloat >0) then
    cdsBuscaIndicadorFinanceiro.AsFloat :=  cdsBuscaIOP_PRECO.AsFloat /  cdsBuscaCustoTotal.AsFloat *100;

  cdsBuscaENF_IT_NOTANUMBER.AsString := BuscaUmDadoSqlAsString(
      'SELECT FIRST 1 EI.ENF_IT_NOTANUMBER ' +
      ' FROM DEMANDA_PRODUCAO DPR ' +
      ' LEFT JOIN ENF_IT01 ei ON	(ei.ENF_REGISTRO = dpr.ENF_REGISTRO) ' +
      ' WHERE (DPR.PED_CODIGO = ' + QuotedStr(cdsBuscaPED_CODIGO.AsString) + ' AND EI.EMP_CODIGO = DPR.EMP_CODIGO		) '
  );


  cdsBuscaPESO_TOTAL.AsFloat := cdsBuscaIOP_PESO.AsFloat * cdsBuscaIOP_QUANTIDADE.AsFloat


end;

procedure TfrmGerenciamentoPCP.cdsBuscaIOP_DATA_AJUSTADAChange(Sender: TField);
begin
  inherited;
  If cdsBuscaIOP_STATUS.AsString <> 'F' then
  begin
    ExecSql('UPDATE ORDEM_PROGRAMADA '+
            '   SET OPA_DATA_AJUSTADA = '+DateToSQL(Sender.AsDateTime) +
            '  WHERE IOP_CODIGO = '+ cdsBuscaIOP_CODIGO.AsString);
    tcr.AtualizarAjusteDataOrdem(cdsBuscaPRF_REGISTRO.AsInteger,cdsBuscaFTI_REGISTRO.AsInteger,Sender.AsDateTime, cdsBuscaIOP_SEQ_PRG.AsInteger );
  end;

end;

procedure TfrmGerenciamentoPCP.cdsBuscaIOP_NORDEMGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if cdsBuscaIOP_SEQ_PRG.AsInteger > 0 then
    text := Sender.AsString + '(P' +cdsBuscaIOP_SEQ_PRG.AsString + ')'
  else
    text := Sender.AsString ;
end;

procedure TfrmGerenciamentoPCP.cdsBuscaIOP_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString = 'I' then
    Text := 'Iniciada'
  else
  if Sender.AsString = 'C' then
    Text := 'Cancelada'
  else
  if Sender.AsString = 'L' then
     Text := 'Pendente'
  else
  if Sender.AsString = 'F' then
    text := 'Finalizado';

end;

procedure TfrmGerenciamentoPCP.cdsBuscaIOP_STATUS_ENTREGAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString = 'A' then
    text := 'Entrega atrasada'
  else if Sender.AsString = 'P' then
    text:= 'No prazo';

end;

procedure TfrmGerenciamentoPCP.cdsHistoricoHOP_DESCRICAOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if cdsHistoricoPRD_REFER.AsString = EmptyStr then
    Text := Sender.AsString
  Else
    text :=  '['+  cdsHistoricoPRD_REFER.AsString + '] '+  Sender.AsString;
end;

procedure TfrmGerenciamentoPCP.cdsMateriaPrimaCalcFields(DataSet: TDataSet);
begin
  inherited;
  if ( cdsMateriaPrimaMP_EMPENHADO.AsFloat> 0)  and (cdsMateriaPrimaMP_CONSUMOTOTAL.AsFloat>0 ) then
    cdsMateriaPrimaPercConsumido.AsFloat := cdsMateriaPrimaMP_EMPENHADO.AsFloat/cdsMateriaPrimaMP_CONSUMOTOTAL.AsFloat*100
  else cdsMateriaPrimaPercConsumido.AsFloat := 0;
  cdsMateriaPrimaAMX_DESCRI.AsString := dbInicio.BuscaUmDadoSqlAsString('SELECT AMX_DESCRI FROM ALMOX0000 WHERE AMX_CODIGO = ' + QuotedStr(cdsMateriaPrimaAMX_CODIGO.AsString) );
end;

procedure TfrmGerenciamentoPCP.cdsMateriaPrimaMP_SITUACAOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString = 'S' then
    text := 'Substituido'
  else
  if Sender.AsString = 'E' then
    Text := 'Empenhado';

end;

procedure TfrmGerenciamentoPCP.cdsMateriaPrimaPRD_DESCRIGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if cdsMateriaPrimaMP_CODIGO_SUBST.AsInteger > 0 then
    Text := Sender.AsString + ' [ Substituto de '+ cdsMateriaPrimaSUBST.AsString + ']'
  else
    Text := Sender.AsString;
end;

procedure TfrmGerenciamentoPCP.cdsMateriaPrimaPRD_GERENCIA_LOTEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString = 'S' then
    text:= 'Sim'
  else
    text := 'Não';
end;

procedure TfrmGerenciamentoPCP.chkFinalizadosClick(Sender: TObject);
begin
  inherited;
  btnPesquisa.Click;
end;

procedure TfrmGerenciamentoPCP.cxgrd1DBBandedTableView1CLI_RAZAOStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
  var AStyle: TcxStyle);
begin
 // inherited;
  if ARecord.Values[cxgrd1DBBandedTableView1IOP_STATUS.Index]  = 'L' then
    AStyle := cxStyleLaranja
  else if ARecord.Values[cxgrd1DBBandedTableView1IOP_STATUS.Index] = 'I' then
    AStyle := cxStyleAzul
  else if ARecord.Values[cxgrd1DBBandedTableView1IOP_STATUS.Index] = 'F' then
     AStyle := cxStyleVerde;


end;

procedure TfrmGerenciamentoPCP.cxgrd1DBBandedTableView1CustomDrawGroupCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableCellViewInfo; var ADone: Boolean);
begin
  inherited;
  AViewInfo.Text := UpperCase( AViewInfo.Text);

end;

procedure TfrmGerenciamentoPCP.cxgrd1DBBandedTableView1DataControllerDetailExpanding(ADataController: TcxCustomDataController; ARecordIndex: Integer; var AAllow: Boolean);
var
  iop_codigo : integer;
  prdRefer: string;
begin
  inherited;
  ADataController.FocusedRecordIndex :=ARecordIndex;

  iop_codigo := ADataController.Values[ ARecordIndex, cxgrd1DBBandedTableView1IOP_CODIGO.Index] ;
  prdRefer := ADataController.Values[ ARecordIndex, cxgrd1DBBandedTableView1PRD_REFER.Index] ;

  if iop_codigo = 0  then
    EXIT ;
  cdsMateriaPrima.Close;
  cdsMateriaPrima.sql.text :=
   'SELECT  ' +
   ' CASE ' +
//   '   WHEN COALESCE((SELECT a.AMX_CODIGO FROM ALMOX0000 a WHERE a.AMX_CNPJ_PART = (SELECT c.CLI_CGC  FROM CLI0000 c WHERE CLI_CODIGO = O.CLI_CODIGO)), '''') <> ''''   ' +
//   '     THEN (SELECT a.AMX_CODIGO FROM ALMOX0000 a WHERE a.AMX_CNPJ_PART = (SELECT c.CLI_CGC  FROM CLI0000 c WHERE CLI_CODIGO = O.CLI_CODIGO)) ' +
   '   WHEN COALESCE(mp.AMX_CODIGO, '''') <> '''' THEN mp.AMX_CODIGO ' +
   '   WHEN COALESCE((SELECT fi.AMX_CODIGO FROM FTC_IT01 fi WHERE fi.PRD_REFER = '+ QuotedStr(prdRefer)  +' AND fi.PRD_REFER_ITENS = pr.PRD_REFER), '''') <> ''''    ' +
   '     THEN (SELECT fi.AMX_CODIGO FROM FTC_IT01 fi WHERE fi.PRD_REFER = '+ QuotedStr(prdRefer)  +' AND fi.PRD_REFER_ITENS = pr.PRD_REFER) ' +
   '   ELSE (SELECT PMT_AMX_PRODUCAO_SAIDA FROM PRMT0001 WHERE EMP_CODIGO = ' + QuotedStr(dbInicio.EMP_CODIGO) +  ') ' +
   ' END AS AMX_CODIGO, ' +
   ' MP_CODIGO_SUBST, mp.prd_codigo, mp.ped_codigo,  mp_codigo, iop_codigo, mp.MP_UCONSUMO, mp_situacao,'+
   ' pr.PRD_REFER, CAST(pr.PRD_DESCRI AS VARCHAR(100)) PRD_DESCRI , pr.prd_und,PRD_GERENCIA_LOTE,  ' +
   ' mp.MP_EMPENHADO, MP_CONSUMOTOTAL,                                  '+
   '      (SELECT prd_descri                                            '+
   '        FROM MATERIAPRIMA_ORDEMPRODUCAO mpst                        '+
   '        JOIN PRD0000 prst ON (prst.PRD_CODIGO = mpst.PRD_CODIGO)    '+
   '        WHERE mpst.MP_CODIGO = mp.mp_codigo_subst  )  subst,        '+
//   '  (SELECT sum(KAS_SALDO)- COALESCE(sum(KAS_RESERVA),0)  FROM kardex_almox_saldo kas WHERE kas.PRD_CODIGO = mp.PRD_CODIGO ) EstoqueDisponivel, '+
   ' CASE ' +
   '   WHEN COALESCE(mp.AMX_CODIGO , '''') <> ''''   ' +
   '     THEN (SELECT sum(KAS_SALDO)- COALESCE(sum(KAS_RESERVA), 0)  FROM kardex_almox_saldo kas WHERE kas.PRD_CODIGO = mp.PRD_CODIGO AND kas.AMX_CODIGO = MP.AMX_CODIGO) ' +
   '   WHEN COALESCE((SELECT fi.AMX_CODIGO FROM FTC_IT01 fi WHERE fi.PRD_REFER = ' + QuotedStr(prdRefer)  + ' AND fi.PRD_REFER_ITENS = pr.PRD_REFER), '''') <> ''''    ' +
   '      THEN (SELECT sum(KAS_SALDO)- COALESCE(sum(KAS_RESERVA), 0) FROM kardex_almox_saldo kas JOIN FTC_IT01 fi2 ON (fi2.AMX_CODIGO = kas.AMX_CODIGO AND fi2.PRD_REFER = ' + QuotedStr(prdRefer)  +' AND fi2.PRD_REFER_ITENS  = pr.PRD_REFER) WHERE kas.PRD_CODIGO = mp.PRD_CODIGO   ) ' +
   '   ELSE (SELECT sum(KAS_SALDO)- COALESCE(sum(KAS_RESERVA), 0) FROM kardex_almox_saldo kas WHERE kas.PRD_CODIGO = mp.PRD_CODIGO )   '  +
   ' END AS EstoqueDisponivel, ' +
   ' MP_CUSTO, ' +
   ' (SELECT FIRST 1 PRDL_LOTE FROM PRD_LOTE lt WHERE lt.PRD_CODIGO = pr.PRD_CODIGO '+
   ' AND PRDL_DATA_FABRICACAO  = (SELECT MIN(PRDL_DATA_FABRICACAO) FROM PRD_LOTE LT2 WHERE LT2.PRD_CODIGO = pr.PRD_CODIGO   AND LT2.PRDL_SALDO > 0 ))  LOTE '+
   ' FROM MATERIAPRIMA_ORDEMPRODUCAO mp                                 '+
 //  ' JOIN ORDEMPRODUCAO o ON (o.OPR_CODIGO = mp.OPR_CODIGO)             ' +
   ' JOIN PRD0000 pr ON (pr.PRD_CODIGO = mp.PRD_CODIGO)                 '+
   ' where MP_CONSUMOTOTAL > 0 and iop_codigo = '+ IntToStr( iop_codigo);

  if dbInicio.IsDesenvolvimento then
    copyToClipboard(cdsMateriaPrima.sql.text);
  cdsMateriaPrima.Open;
 end;

procedure TfrmGerenciamentoPCP.cxgrd1DBBandedTableView1DataControllerFilterGetValueList(Sender: TcxFilterCriteria; AItemIndex: Integer; AValueList: TcxDataFilterValueList);
begin
  inherited;
   AValueList.add(fviAll,0,'Todos',False);
   AValueList.Delete(0);
   AValueList.Delete(0);
end;

procedure TfrmGerenciamentoPCP.cxgrd1DBBandedTableView1Editing(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; var AAllow: Boolean);
begin
  inherited;
  AAllow := (cdsBuscaIOP_STATUS.AsString <> 'F');

end;

procedure TfrmGerenciamentoPCP.cxgrd1DBBandedTableView1FALTAGetCellHint(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption; var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
var situacao : string;
begin
  inherited;
   with TcxGridDBTableView(Sender).DataController do
   begin
     situacao:=ARecord.Values[cxgrd1DBBandedTableView1IOP_STATUS.Index] ;
       if situacao = 'I' then
         AHintText := 'Iniciada'
      else
      if situacao = 'C' then
         AHintText := 'Cancelada'
      else
      if situacao = 'L' then
          AHintText := 'Pendente'
      else
      if situacao = 'F' then
         AHintText :='Finalizado';


   end;
end;

procedure TfrmGerenciamentoPCP.cxgrd1DBBandedTableView1FALTAGetProperties(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AProperties: TcxCustomEditProperties);
begin
  inherited;
  if ARecord.Values[cxgrd1DBBandedTableView1IOP_STATUS.Index] ='L' then
    AProperties := ProgressBarLaranja.Properties
  else
    if ARecord.Values[cxgrd1DBBandedTableView1IOP_STATUS.Index] = 'I' then
      AProperties := ProgressBarAzul.Properties
    else
      AProperties := ProgressBarverde.Properties;   /// F finalizado
end;

procedure TfrmGerenciamentoPCP.cxgrd1DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  try
    if (AFocusedRecord <> nil) and not TcxCustomGridRecord(AFocusedRecord).Expanded and (APrevFocusedRecord<> nil) and (APrevFocusedRecord.Level > 0)   and
     TcxCustomGridRecord(APrevFocusedRecord).Expanded then
       TcxCustomGridRecord(APrevFocusedRecord).Collapse(true);
     TcxCustomGridRecord(AFocusedRecord).Expand(True);
     // PostMessage(Handle, UM_MYMESSAGE, Integer(AFocusedRecord), Integer(Sender));
  except
  end;
end;

procedure TfrmGerenciamentoPCP.cxgrd1DBBandedTableView1StylesGetGroupStyle(Sender: TcxGridTableView; ARecord: TcxCustomGridRecord; ALevel: Integer; var AStyle: TcxStyle);
begin
  inherited;
 if arecord = nil then
   exit;
 if ALevel = 0 then
 begin
   if ARecord.Values[cxgrd1DBBandedTableView1IOP_STATUS.Index]  = 'L' then
     AStyle := cxStyleLaranja
   else if ARecord.Values[cxgrd1DBBandedTableView1IOP_STATUS.Index] = 'I' then
     AStyle := cxStyleAzul
   else if ARecord.Values[cxgrd1DBBandedTableView1IOP_STATUS.Index] = 'F' then
    AStyle := cxStyleVerde;

 end;

end;

procedure TfrmGerenciamentoPCP.cxgrd1DBTableView1CanFocusRecord(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; var AAllow: Boolean);
var sql : string;
    iop_codigo, mp_codigo : integer;
begin
  inherited;
  if NOT assigned (frmGerenciamentoPCP) then exit;
  if not frmGerenciamentoPCP.visible then exit;
  if pgc1.ActivePage <> tbHistorico  then exit;

  if cdsBusca.IsEmpty then
    exit;
  iop_codigo := ARecord.Values[cxgrd1DBTableView1IOP_CODIGO.Index];
  mp_codigo :=  ARecord.Values[cxgrd1DBTableView1MP_CODIGO.Index];
  cdsHistorico.Close;
  cdsHistorico.sql.Clear;
  sql := 'SELECT dh.hop_codigo, dh.hop_datamvto, hop_descricao ,      ' +
         '    dh.USU_CODIGO, dh.IOP_CODIGO, dh.MP_CODIGO,             '+
         '    u.USU_NOME , NULL PRD_REFER                               '+
         ' FROM HISTORICO_ORDEMPRODUCAO  dh                           '+
         '  JOIN USUARIO u ON (u.USU_CODIGO = dh.USU_CODIGO)          '+
         ' LEFT JOIN MATERIAPRIMA_ORDEMPRODUCAO mp ON (mp.MP_CODIGO = dh.MP_CODIGO) '+
         ' LEFT JOIN PRD0000 PR ON (PR.PRD_CODIGO = MP.PRD_CODIGO) '+
         ' WHERE DH.IOP_CODIGO = '+IntToStr(iop_codigo) +
         ' and  DH.mp_codigo = '+ IntToStr(mp_codigo)+
         ' order by hop_datamvto desc ' ;
  cdsHistorico.sql.Text := sql;
  cdsHistorico.Open;


end;

procedure TfrmGerenciamentoPCP.cxgrd1DBTableView1ESTOQUEDISPONIVELStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
  var AStyle: TcxStyle);
var empenhado, consumototal, estoque : double;
begin
  inherited;
   if VarIsNull(ARecord.Values[cxgrd1DBTableView1MP_EMPENHADO.Index]) then
    empenhado := 0
   else
    empenhado :=  ARecord.Values[cxgrd1DBTableView1MP_EMPENHADO.Index]  ;
   if not VarIsNull(ARecord.Values[cxgrd1DBTableView1MP_CONSUMOTOTAL.Index]) then
     consumototal := ARecord.Values[cxgrd1DBTableView1MP_CONSUMOTOTAL.Index];
   if VarIsNull(ARecord.Values[cxgrd1DBTableView1ESTOQUEDISPONIVEL.Index]) then
     estoque := 0
   else
     estoque:= ARecord.Values[cxgrd1DBTableView1ESTOQUEDISPONIVEL.Index] ;



   //estoque insuficiente
   if consumototal <= empenhado then
     AStyle := cxStyle1
   else
   if (estoque< 0 )  or ((consumototal - empenhado)  >   estoque) then
     AStyle := cxStyle2
   else
     AStyle := cxStyle1;



end;

procedure TfrmGerenciamentoPCP.cxgrd1Level1GetGridView(Sender: TcxGridLevel; AMasterRecord: TcxCustomGridRecord; var AGridView: TcxCustomGridView);
var
  prdRefer : string;
begin
  inherited;

  if cdsBusca.IsEmpty then
    exit;
  if sender.Level = 0 then
    exit;

  prdRefer := AMasterRecord.Values[cxgrd1DBBandedTableView1PRD_REFER.Index];

  cdsMateriaPrima.Close;
  cdsMateriaPrima.sql.text :=
   'SELECT  ' +
   ' CASE ' +
//   '   WHEN COALESCE((SELECT a.AMX_CODIGO FROM ALMOX0000 a WHERE a.AMX_CNPJ_PART = (SELECT c.CLI_CGC  FROM CLI0000 c WHERE CLI_CODIGO = O.CLI_CODIGO)), '''') <> ''''   ' +
//   '     THEN (SELECT a.AMX_CODIGO FROM ALMOX0000 a WHERE a.AMX_CNPJ_PART = (SELECT c.CLI_CGC  FROM CLI0000 c WHERE CLI_CODIGO = O.CLI_CODIGO)) ' +
   '   WHEN COALESCE(mp.AMX_CODIGO, '''') <> '''' THEN mp.AMX_CODIGO ' +
   '   WHEN COALESCE((SELECT fi.AMX_CODIGO FROM FTC_IT01 fi WHERE fi.PRD_REFER = '+ QuotedStr(prdRefer)  +' AND fi.PRD_REFER_ITENS = pr.PRD_REFER), '''') <> ''''    ' +
   '     THEN (SELECT fi.AMX_CODIGO FROM FTC_IT01 fi WHERE fi.PRD_REFER = '+ QuotedStr(prdRefer)  +' AND fi.PRD_REFER_ITENS = pr.PRD_REFER) ' +
   '   ELSE (SELECT PMT_AMX_PRODUCAO_SAIDA FROM PRMT0001 WHERE EMP_CODIGO = ' + QuotedStr(dbInicio.EMP_CODIGO) +  ') ' +
   ' END AS AMX_CODIGO, ' +
   ' MP_CODIGO_SUBST, mp.prd_codigo, mp.ped_codigo,  mp_codigo, iop_codigo, mp.MP_UCONSUMO, mp_situacao,'+
   ' pr.PRD_REFER, CAST(pr.PRD_DESCRI AS VARCHAR(100)) PRD_DESCRI,  pr.prd_und,PRD_GERENCIA_LOTE,  ' +
   ' mp.MP_EMPENHADO, MP_CONSUMOTOTAL,                                  '+
   '      (SELECT prd_descri                                            '+
   '        FROM MATERIAPRIMA_ORDEMPRODUCAO mpst                        '+
   '        JOIN PRD0000 prst ON (prst.PRD_CODIGO = mpst.PRD_CODIGO)    '+
   '        WHERE mpst.MP_CODIGO = mp.mp_codigo_subst  )  subst,        '+
//   '  (SELECT sum(KAS_SALDO)- COALESCE(sum(KAS_RESERVA),0)  FROM kardex_almox_saldo kas WHERE kas.PRD_CODIGO = mp.PRD_CODIGO ) EstoqueDisponivel, ' +
   ' CASE ' +
   '   WHEN COALESCE(mp.AMX_CODIGO , '''') <> ''''   ' +
   '     THEN (SELECT sum(KAS_SALDO)- COALESCE(sum(KAS_RESERVA), 0)  FROM kardex_almox_saldo kas WHERE kas.PRD_CODIGO = mp.PRD_CODIGO AND kas.AMX_CODIGO = MP.AMX_CODIGO) ' +
   '   WHEN COALESCE((SELECT fi.AMX_CODIGO FROM FTC_IT01 fi WHERE fi.PRD_REFER = ' + QuotedStr(prdRefer)  + ' AND fi.PRD_REFER_ITENS = pr.PRD_REFER), '''') <> ''''    ' +
   '     THEN (SELECT sum(KAS_SALDO)- COALESCE(sum(KAS_RESERVA), 0) FROM kardex_almox_saldo kas JOIN FTC_IT01 fi2 ON (fi2.AMX_CODIGO = kas.AMX_CODIGO AND fi2.PRD_REFER = ' + QuotedStr(prdRefer)  +' AND fi2.PRD_REFER_ITENS  = pr.PRD_REFER) WHERE kas.PRD_CODIGO = mp.PRD_CODIGO   ) ' +
   '   ELSE (SELECT sum(KAS_SALDO)- COALESCE(sum(KAS_RESERVA), 0) FROM kardex_almox_saldo kas WHERE kas.PRD_CODIGO = mp.PRD_CODIGO )   '  +
   ' END AS EstoqueDisponivel, ' +
   '  MP_CUSTO, '+
   ' (SELECT FIRST 1 PRDL_LOTE FROM PRD_LOTE lt WHERE lt.PRD_CODIGO = pr.PRD_CODIGO'+
   ' AND PRDL_DATA_FABRICACAO  = (SELECT MIN(PRDL_DATA_FABRICACAO) FROM PRD_LOTE LT2 WHERE LT2.PRD_CODIGO = pr.PRD_CODIGO   AND LT2.PRDL_SALDO > 0 )) LOTE '+
   ' FROM MATERIAPRIMA_ORDEMPRODUCAO mp                                 '+
//   ' JOIN ORDEMPRODUCAO o ON (o.OPR_CODIGO = mp.OPR_CODIGO)             ' +
   ' JOIN PRD0000 pr ON (pr.PRD_CODIGO = mp.PRD_CODIGO)                 '+
   ' where MP_CONSUMOTOTAL > 0 and iop_codigo = '+ VarToStr( AMasterRecord.Values[cxgrd1DBBandedTableView1IOP_CODIGO.Index]);

  if dbInicio.IsDesenvolvimento then
    copyToClipboard(cdsMateriaPrima.sql.text);

  cdsMateriaPrima.Open;
end;

procedure TfrmGerenciamentoPCP.edPesquisaChange(Sender: TObject);
begin
  inherited;
  IF Length( edPesquisa.Text)> 2 then
    btnPesquisa.Click;
end;

procedure TfrmGerenciamentoPCP.edPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (Key = #13) and  (edPesquisa.Text <> '')  and (Length(edPesquisa.Text)>3) then
  begin
    btnPesquisa.Click;
  end;

end;

procedure TfrmGerenciamentoPCP.EmpenharLote(const prd_codigo, prd_refer, nordem, tipo: string; const mp_codigo, iop_codigo: integer;const FaltaEmpenhar: double);
 var  TotalEmpenho : double;
begin
  if not Assigned(frmEmpenharLote) then
    frmEmpenharLote := TfrmEmpenharLote.Create(Application);
  try
    frmEmpenharLote.prd_produto := prd_codigo;
    frmEmpenharLote.mp_codigo := mp_codigo;
    frmEmpenharLote.aCaption := 'Informar Empenhos';
    frmEmpenharLote.tipoempenho := tipo;
    frmEmpenharLote.FaltaEmpenhar  := FaltaEmpenhar; //;
    if frmEmpenharLote.ShowModal = mrOk then
    begin
       with frmEmpenharLote do
       begin
        cdsEmpenho.First;
        while not cdsEmpenho.Eof do
        begin
           TotalEmpenho := TotalEmpenho + cdsEmpenhoQuantidade.AsFloat ;
           //HISTORICO DE EMPENHO
           tcr.EmpenharInsumo(iop_codigo,
                            mp_codigo,
                            prd_codigo,
                            cdsEmpenhoQuantidade.AsFloat,
                            cdsEmpenhoData.AsDateTime,
                            cdsEmpenhoPRDL_REGISTRO.AsInteger,
                            prd_refer,
                            nordem,
                            tipo
                            );


          cdsEmpenho.Next;
        end; //end-while
       end; //end-with
       ExecSql('UPDATE MATERIAPRIMA_ORDEMPRODUCAO '+
               ' SET MP_EMPENHADO =  coalesce(MP_EMPENHADO,0) + '+ FloatToSQL(TotalEmpenho) +
               ' WHERE MP_CODIGO = '+ IntToStr(mp_codigo) );
      // ADetailDataController.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1MP_EMPENHADO.Index]:= TotalEmpenho;

       cdsMateriaPrima.close;
       cdsMateriaPrima.Open;

      cxgrd1DBTableView1.DataController.Refresh;

    end; //fim if frmEmpenharLote.ShowModal = mrOk

  finally
    FreeAndNil(frmEmpenharLote);
  end;

end;

procedure TfrmGerenciamentoPCP.EmpenharSemLote(const prd_codigo, prd_refer, nordem, tipo: string; const mp_codigo, iop_codigo: integer; const aEmpenhar: double);
begin
 // if tipo = 'A' then
    tcr.EmpenharInsumo(iop_codigo,
                      mp_codigo,
                      prd_codigo,
                      aEmpenhar,
                      date,
                      0,
                      prd_refer,
                      nordem,
                      tipo
                      );

       ExecSql('UPDATE MATERIAPRIMA_ORDEMPRODUCAO '+
               ' SET MP_EMPENHADO = coalesce(MP_EMPENHADO,0) + '+ FloatToSQL(aEmpenhar) +
               ' WHERE MP_CODIGO = '+ IntToStr(mp_codigo) );
end;

procedure TfrmGerenciamentoPCP.Empenhosrealizados1Click(Sender: TObject);
var
    ARelationIndex : integer;

    ADetailDataController: TcxGridDBDataController;
    prd_codigo,prd_refer, nordem : string;
    iop_codigo, mp_codigo : integer;
begin
  inherited;
  if cdsMateriaPrima.IsEmpty then
    exit;
 with cxgrd1DBBandedTableView1 do
 begin
    // como estou usando um query virtual
    ARelationIndex := TcxGridDBDataController(DataController).GetDetailActiveRelationIndex(DataController.FocusedRecordIndex);
    ADetailDataController := TcxGridDataController(DataController).GetDetailDataController(DataController.FocusedRecordIndex, ARelationIndex) as TcxGridDBDataController;
    //já subsititui tudo , não pode mais substituir

    prd_codigo := ADetailDataController.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1PRD_CODIGO.Index];
    prd_refer :=  ADetailDataController.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1PRD_REFER.Index];
    iop_codigo := Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1IOP_CODIGO.Index];

   // opr_codigo := Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1OPR_CODIGO.Index];
    mp_codigo := ADetailDataController.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1MP_CODIGO.Index];
    if BuscaUmDadoSqlAsInteger('SELECT CAST (COUNT(*) AS INTEGER) FROM EMPENHO '+
                               ' WHERE MP_CODIGO = '+ IntToStr(mp_codigo) ) = 0  then
      raise Exception.Create('Ainda não realizado nenhum empenho');

    nordem:=  cxgrd1DBBandedTableView1.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1IOP_NORDEM.Index];


     if not Assigned(frmEmpenharLote) then
      frmEmpenharLote := TfrmEmpenharLote.Create(Application);
     try
       frmEmpenharLote.prd_produto := prd_codigo;
       frmEmpenharLote.mp_codigo := mp_codigo;
       frmEmpenharLote.grpNovos.Visible := False;
       frmEmpenharLote.grpHistorico.Visible := True;
       frmEmpenharLote.grpHistorico.Align := alClient;
       frmEmpenharLote.aCaption := 'Empenhos realizados';
       frmEmpenharLote.DataPadrao.Visible := False;
       frmEmpenharLote.lpadrao.Visible := False;
       frmEmpenharLote.btnOk.Visible := False;
       frmEmpenharLote.cxGrid1DBTableView1Estorno.Visible :=
          BuscaUmDadoSqlAsInteger('SELECT CAST (COUNT(*) AS INTEGER) FROM ITEM_ORDEMPRODUCAO '+
                                           ' WHERE  IOP_DATA_CONCLUSAO IS NOT NULL '+
                                           ' AND IOP_CODIGO = '+IntToStr(iop_codigo)) = 0 ;
        frmEmpenharLote.ShowModal;
     finally
       FreeAndNil(frmEmpenharLote);
       cdsMateriaPrima.close;
        cdsMateriaPrima.Open;
     end;

 end;
end;

procedure TfrmGerenciamentoPCP.EstornoInsumoClick(Sender: TObject);
var mp_codigo  : integer;
    consumo : double;
    subst : variant;
    ADetailDataController: TcxGridDBDataController;
    ARelationIndex : integer;
begin
  inherited;
  if cdsMateriaPrima.IsEmpty then
    exit;
  with cxgrd1DBBandedTableView1 do
  begin
    If DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1IOP_STATUS.Index] = 'F' then
      raise Exception.Create('Produção já concluida');
    // como estou usando um query virtual
    ARelationIndex := TcxGridDBDataController(DataController).GetDetailActiveRelationIndex(DataController.FocusedRecordIndex);
    ADetailDataController := TcxGridDataController(DataController).GetDetailDataController(DataController.FocusedRecordIndex, ARelationIndex) as TcxGridDBDataController;

    subst := ADetailDataController.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1MP_CODIGO_SUBST.Index];
    if VarIsNull( subst)   then
      GeraException('Materia-prima original, não é a substituta. Estorno não pode ser feito ');

    mp_codigo := ADetailDataController.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1MP_CODIGO.Index];
    consumo := ADetailDataController.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1MP_CONSUMOTOTAL.Index];

  end;

  tcr.EstornaMP_Substituta(mp_codigo, subst, consumo);
  cdsMateriaPrima.close;
  cdsMateriaPrima.Open;
end;

procedure TfrmGerenciamentoPCP.ExcluirInsumo1Click(Sender: TObject);
var
 ADetailDataController: TcxGridDBDataController;
  ARelationIndex, AFocusedIndex: Integer;
  PedidoCodigo, IOPCodigo, IOPNordem, ReferenciaItem, DescricaoItem, mpCodigo, sql: string;
begin
  inherited;

  If cxgrd1DBBandedTableView1.DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1IOP_STATUS.Index] = 'F' then
    raise Exception.Create('Ordem de produção já finalizada, não é possível excluir ');

  if MessageDlg('Confirma Exclusão do Registro?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
    exit;

  IOPCodigo := VarToStr(cxgrd1DBBandedTableView1.DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1IOP_CODIGO.Index]);
  PedidoCodigo := VarToStr(cxgrd1DBBandedTableView1.DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1PED_CODIGO.Index]);
  IOPNOrdem := VarToStr(cxgrd1DBBandedTableView1.DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1IOP_NORDEM.Index]);

  ARelationIndex := TcxGridDBDataController(cxgrd1DBBandedTableView1.DataController).GetDetailActiveRelationIndex(cxgrd1DBBandedTableView1.DataController.FocusedRecordIndex);
  ADetailDataController := TcxGridDataController(cxgrd1DBBandedTableView1.DataController).GetDetailDataController(cxgrd1DBBandedTableView1.DataController.FocusedRecordIndex, ARelationIndex) as TcxGridDBDataController;
  ReferenciaItem := ADetailDataController.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1PRD_REFER.Index];
  DescricaoItem := ADetailDataController.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1PRD_DESCRI.Index];

  mpCodigo :=  BuscaUmDadoSqlAsString(
                 ' SELECT DISTINCT mp.mp_codigo ' +
                 '   FROM MATERIAPRIMA_ORDEMPRODUCAO mp ' +
                 '     JOIN PRD0000 pr ON (pr.PRD_CODIGO = mp.PRD_CODIGO) ' +
                 '     JOIN ITEM_ORDEMPRODUCAO iop ON (iop.OPR_CODIGO = MP.OPR_CODIGO) ' +
                 ' WHERE MP.PED_CODIGO = ' + QuotedStr(PedidoCodigo) +
                 '   AND MP.IOP_CODIGO = ' + IOPCodigo +
                 '   AND pr.PRD_REFER = ' + QuotedStr(ReferenciaItem) +
                 '   AND iop.iop_NORDEM = ' + QuotedStr(IOPNOrdem)
               ) ;
  sql := 'DELETE FROM MATERIAPRIMA_ORDEMPRODUCAO WHERE MP_CODIGO = ' + mpCodigo;
  ExecSql(sql);
  tcr.HistoricoProducao(StrToInt(IOPCodigo), StrToInt(mpCodigo), 'Excluído: ' + ReferenciaItem + ' - ' + DescricaoItem);
  cdsMateriaPrima.Close;
  cdsMateriaPrima.Open;
end;

procedure TfrmGerenciamentoPCP.filtro;
var  sqlsubordens, colunas : string ;
i : int64;
begin

  with cdsBusca,sql do
  begin
    colunas := 'pe.REP_CODIGO, iop.IOP_CODIGO, iop.PRD_CODIGO, iop.OPR_CODIGO, IOP_SEQUENCIA, IOP_NORDEM, IOP_QUANTIDADE, IOP_PESO, IOP_STATUS, IOP_DATA_INICIO, IOP_DATA_CONCLUSAO, IOP_DATA_PREVISTA, IOP_PRECO, IOP_CUSTO,  '+
               ' iop.PRF_REGISTRO, iop.PRO_CODIGO, IOP_LEADTIME, FTI_REGISTRO, IOP_DATALIBERACAO, IOP_QTDE_REFUGADA, IOP_QTDE_CONCLUIDA, IOP_QTDE_PRODUZINDO, IOP_CUSTOMP, IOP_SEQ_PRG, IOP_DTENTREGA, '+
               ' IOP_CUSTOOPERACAO, IOP_CUSTOCOLABORADOR, IOP_CUSTOEQUIPAMENTO, IOP_CUSTOSERVICOS, IOP_STATUS_ENVASE, ORE_CODIGO, ORE_DATAENVASE, IOP_PREFIXO,  IOP_DIAS_CORRIDOS, '+
               ' IOP_STATUS_ENTREGA, ';
//    if DBInicio.Empresa.Bpmt_gerarsubordens then
      sqlsubordens := ' (SELECT SUM(COALESCE(IOP_CUSTOOPERACAO,0) +   '+
                          '            COALESCE(IOP_CUSTOCOLABORADOR,0) + '+
                          '            COALESCE(IOP_CUSTOMP,0) +          '+
                          '            COALESCE(IOP_CUSTOEQUIPAMENTO,0) + '+
                          '            COALESCE(IOP_CUSTOSERVICOS,0))     '+
                          '     FROM ITEM_ORDEMPRODUCAO io WHERE iop_nordem LIKE  iop.IOP_NORDEM ||''-%'' '+
                          '     AND iop.IOP_SEQ_PRG = io.IOP_SEQ_PRG  ) as CustoSubOrdens   ';
  //   else
//     begin
//       sqlsubordens := ' cast(0.0 as numeric(18,5)) as CustoSubOrdens  ' ;
//     end;

     //custos da subordem so tem com geração de subordens
     cdsBusca.SQL.Text := 'SELECT ac.ACO_NOME, it.PRF_QTDE, LOT.PRDL_DATA_FABRICACAO, LOT.PRDL_DATA_VALIDADE, IOP.IOP_DTENTREGA, op.*, '+colunas+
                          ' COALESCE(CLI_FANTASIA, CLI_RAZAO) CLI_RAZAO, COALESCE(IOP_DATA_AJUSTADA,PE.PED_DTSAIDA)  IOP_DATA_AJUSTADA,  '+
                          ' datediff(DAY,CURRENT_DATE, IOP_DTENTREGA) leftdays, '+
                          ' datediff(DAY,IOP_DATA_INICIO,IOP_DTENTREGA ) deadline, ' +
                          ' pr.prd_und, IOP_CUSTOMP,  '+
                          ' pr.PRD_REFER, ' +
                          ' COALESCE(it.PRF_PRDDESCRI, pr.PRD_DESCRI) as PRD_DESCRI, ' +
                          ' pr.prd_und, IOP_CUSTOMP,  '+
                          ' IOP_CUSTOOPERACAO, IOP_CUSTOCOLABORADOR, IOP_CUSTOEQUIPAMENTO,'+
                          ' IOP_CUSTOSERVICOS, PE.PED_DTENTRADA, PE.PED_NUMERO_PED_CLIENTE, ft.FTC_ETAPAS, lot.PRDL_LOTE,   '+
                          ' ac.ACO_NOME,  ' +
                            sqlsubordens +
                          '  FROM ORDEMPRODUCAO OP                '+
                          ' JOIN CLI0000 CL ON CL.CLI_CODIGO = OP.CLI_CODIGO  '+
                          ' JOIN ITEM_ORDEMPRODUCAO iop ON (Iop.OPR_CODIGO = OP.OPR_CODIGO ) '+
                          ' LEFT JOIN PRD_LOTE lot ON (lot.IOP_CODIGO = iop.IOP_CODIGO)'+
                          ' JOIN PRD0000 pr ON (pr.PRD_CODIGO = iop.PRD_CODIGO) '+
                          ' LEFT JOIN FTC0000 ft ON (ft.PRD_REFER = pr.PRD_REFER) '+
                          ' JOIN PED0000 pe ON (PE.PED_CODIGO = OP.PED_CODIGO  AND OP.EMP_CODIGO = PE.EMP_CODIGO) '+
                          ' left JOIN PED_IT01 it ON (it.PED_CODIGO = op.PED_CODIGO AND it.PRD_CODIGO = iop.PRD_CODIGO AND it.PRF_REGISTRO = iop.PRF_REGISTRO) ' +
                          ' LEFT JOIN ACABAMENTO_CORES ac ON (ac.ACO_CODIGO = it.ACO_CODIGO) ' +
                          ' WHERE EXISTS                                                     '+
                          ' (SELECT * FROM DEMANDA_PRODUCAO dpr WHERE dpr.PED_CODIGO = op.PED_CODIGO '+
                          '   AND dpr.EMP_CODIGO = op.EMP_CODIGO )' +
                         iif(chkFinalizados.Checked,'',' AND ( iop_status <> ''F'' ) ' ) ;
                         // iif(chkFinalizados.Checked,'',' AND ( iop_status <> ''F'' OR IOP_DATA_CONCLUSAO  BETWEEN CURRENT_DATE-7 AND CURRENT_DATE) ' ) ;
   Filtrados := true;
   if (DataIni.date > 0) and (DataFim.date = 0)then
    begin
      SqlAdd(' OP.OPR_EMISSAO >='+DateToSQL(DataIni.Date) )
    end
    else if (DataIni.date = 0) and (DataFim.date > 0)  then
    begin
       SqlAdd(' OP.OPR_EMISSAO <='+DateToSQL(DataFim.date) )
    end
    else if (DataIni.date > 0) and (DataFim.date > 0)  then
    begin
      SqlAdd(' OP.OPR_EMISSAO between '+DateToSQL(DataIni.date) +' and '+  DateTimeToSQL(DataFim.date+ StrToTime('23:59:59') ));
    end;

    if (DataEntregaIni.date > 0) and (DataEntregaFim.date = 0)then
    begin
      SqlAdd(' OP.OPR_DTENTREGA >='+DateToSQL(DataEntregaIni.Date) )
    end
    else if (DataEntregaIni.date = 0) and (DataEntregaFim.date > 0)  then
    begin
       SqlAdd(' OP.OPR_DTENTREGA <='+DateToSQL(DataEntregaFim.date) )
    end
    else if (DataEntregaIni.date > 0) and (DataEntregaFim.date > 0)  then
    begin
      SqlAdd(' OP.OPR_DTENTREGA between '+DateToSQL(DataEntregaIni.date) +' and '+  DateTimeToSQL(DataEntregaFim.date+ StrToTime('23:59:59') ));
    end;

    if (DataAjustadaIni.date > 0) and (DataAjustadaFim.date = 0)then
    begin
      SqlAdd(' IOP.IOP_DATA_AJUSTADA >='+DateToSQL(DataAjustadaIni.Date) )
    end
    else if (DataAjustadaIni.date = 0) and (DataAjustadaFim.date > 0)  then
    begin
       SqlAdd(' IOP.IOP_DATA_AJUSTADA <='+DateToSQL(DataAjustadaFim.date) )
    end
    else if (DataAjustadaIni.date > 0) and (DataAjustadaFim.date > 0)  then
    begin
      SqlAdd(' IOP.IOP_DATA_AJUSTADA between '+DateToSQL(DataAjustadaIni.date) +' and '+  DateTimeToSQL(DataAjustadaFim.date+ StrToTime('23:59:59') ));
    end;


    if (DataConclusaoIni.date > 0) and (DataConclusaoFim.date = 0)then
    begin
      SqlAdd('  IOP.IOP_DATA_CONCLUSAO >='+DateToSQL(DataConclusaoIni.Date) )
    end
    else if (DataConclusaoIni.date = 0) and (DataConclusaoFim.date > 0)  then
    begin
       SqlAdd(' IOP.IOP_DATA_CONCLUSAO <='+DateToSQL(DataConclusaoFim.date) )
    end
    else if (DataConclusaoIni.date > 0) and (DataConclusaoFim.date > 0)  then
    begin

      SqlAdd(' IOP.IOP_DATA_CONCLUSAO between '+DateToSQL(DataConclusaoIni.date) +' and '+  DateTimeToSQL(DataConclusaoFim.date+ StrToTime('23:59:59') ));
    end;

    if (edPesquisa.Text <> '') then
     begin
        SqlAdd('( PR.PRD_DESCRI CONTAINING  '+  QuotedStr(edPesquisa.Text)  +
               '  or it.PRF_PRDDESCRI CONTAINING '+ QuotedStr(edPesquisa.Text) +
               '  or iop.IOP_NORDEM CONTAINING '+ QuotedStr(edPesquisa.Text) +
               '  or pe.ped_codigo CONTAINING '+ QuotedStr(edPesquisa.Text) +
               '  or lot.PRDL_LOTE CONTAINING '+ QuotedStr(edPesquisa.Text) +
               '  or pr.PRD_REFER CONTAINING  '+ QuotedStr(edPesquisa.Text) +' )' );
     end;
    end;
    if dbInicio.IsDesenvolvimento then
      CopyToClipBoard(cdsBusca.SQL.Text);
end;

procedure TfrmGerenciamentoPCP.FormCreate(Sender: TObject);
begin
  NaoAtualizaHistorico := True;
  inherited;
  pgc1.ActivePageIndex  := 0;
  self.Constraints.MinHeight := 612;
  self.Constraints.MinWidth := 1175;
  self.Constraints.MaxHeight := 0;
  self.width:=1175;
  self.height:=612;
  DataIni.Date := Date - 60;
  DataFim.Date := date +180;
  cdsHistorico.DisableControls;
  Self.ProcedureFiltro:=filtro;


  cdsHistorico.EnableControls;
  self.CampoID := 'PED_CODIGO';
  self.CampoIDRetorno :=  'PED_CODIGO';
  if not Assigned(tcr) then
    tcr := TProducaoDao.Create(application);
  // DisplayFormat:='###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
  cdsBuscaIOP_QTDE_REFUGADA.DisplayFormat :='###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
  cdsBuscaIOP_QUANTIDADE.DisplayFormat :='###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
  cdsBuscaIOP_QTDE_CONCLUIDA.DisplayFormat := '###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
  cdsBuscaIOP_QTDE_PRODUZINDO.DisplayFormat := '###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);

  cxgrd1DBBandedTableView1.Bands[6].Visible := DBInicio.Empresa.bUSP_CUSTOPRODUCAO;

  cdsBuscaIOP_CUSTOMP.DisplayFormat := '###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED)  ;
  cdsBuscaIOP_CUSTOOPERACAO.DisplayFormat := '###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
  cdsBuscaIOP_CUSTOCOLABORADOR.DisplayFormat := '###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
  cdsBuscaIOP_CUSTOEQUIPAMENTO.DisplayFormat := '###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
  cdsBuscaIOP_CUSTOSERVICOS.DisplayFormat := '###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
  cdsBuscaCustoTotal.DisplayFormat := '###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
  cdsBuscaCustoSubOrdens.DisplayFormat  := '###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);

  cdsMateriaPrimaMP_UCONSUMO.DisplayFormat := '###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
  cdsMateriaPrimaMP_EMPENHADO.DisplayFormat := '###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
  cdsMateriaPrimaMP_CONSUMOTOTAL.DisplayFormat := '###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
  cdsMateriaPrimaMP_CUSTO.DisplayFormat :=   '###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
  miEmpenhoAutomatico.Visible := DBInicio.Empresa.PMT_COMSUMIRINSUMO = 'M';

  if DBInicio.GetParametroSistema('PMT_RETORNO_POR_CORES') <> 'S' then
  begin
    cxgrd1DBBandedTableView1ENF_IT_NOTANUMBER.Visible := False;
    cxgrd1DBBandedTableView1ACO_NOME.Visible := False;
    cxgrd1DBBandedTableView1IOP_PESO.Visible := False;
    cxgrd1DBBandedTableView1PESO_TOTAL.Visible := False;
  end;
  self.WindowState := wsMaximized;
end;

procedure TfrmGerenciamentoPCP.FormDestroy(Sender: TObject);
begin
  inherited;
  if Assigned(tcr) then
    FreeAndNil(tcr);
   frmGerenciamentoPCP := nil;

end;

procedure TfrmGerenciamentoPCP.FormShow(Sender: TObject);
begin
  inherited;
  btnPesquisa.Click;
  NaoAtualizaHistorico := False;
  if cdsbusca.IsEmpty then
    exit;
   cdsBusca.First;

  //AbrirPendente;
end;

procedure TfrmGerenciamentoPCP.frxListaGetValue(const VarName: string; var Value: Variant);
begin
  inherited;
  if (VarName = 'EMPRESA') then
    Value := dbInicio.Empresa.RAZAO;
  if (VarName = 'FILTROS') then
  begin
    if (DataIni.date > 0) and (DataFim.date >0) then
      Value := 'Data Emissão: ' + FormatDateTime('dd/mm/yyyy',DataIni.Date) + ' até ' + FormatDateTime('dd/mm/yyyy',DataFim.Date);
    if (DataEntregaIni.date > 0) and (DataEntregaFim.date >0) then
      Value := Value + ' Data Entrega: ' + FormatDateTime('dd/mm/yyyy',DataEntregaIni.Date) + ' até ' + FormatDateTime('dd/mm/yyyy',DataEntregaFim.Date);
    if (DataAjustadaIni.date > 0) and (DataAjustadaFim.date >0) then
      Value := Value + ' Data Ajustada: ' + FormatDateTime('dd/mm/yyyy',DataAjustadaIni.Date) + ' até ' + FormatDateTime('dd/mm/yyyy',DataAjustadaFim.Date);
    if (DataConclusaoIni.date > 0) and (DataConclusaoFim.date >0) then
      Value := Value + ' Data Conclusão: ' + FormatDateTime('dd/mm/yyyy',DataConclusaoIni.Date) + ' até ' + FormatDateTime('dd/mm/yyyy',DataConclusaoFim.Date);
  end;
  if (VarName = 'VENDEDOR') then
    Value := BuscaUmDadoSqlAsString('SELECT REP_RAZAO FROM REP0000 WHERE REP_CODIGO = ' + QuotedStr(cdsBuscaREP_CODIGO.AsString) );

end;

procedure TfrmGerenciamentoPCP.frxOP11BeginDoc(Sender: TObject);
var
  img : TPicture;
  pasta, imagem: string;

begin
  inherited;
  TfrxPictureView(frxOP11.FindObject('LogoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);

  img := TPicture.Create;
  pasta := BuscaUmDadoSqlAsString('SELECT PMT_CAMINHO_IMAGEM_OP FROM PRMT0001 WHERE emp_codigo = ' + QuotedStr(DBInicio.Empresa.EMP_CODIGO) ) +  '\';
  imagem := pasta + qOP11Cabecalho.FieldByName('IOP_NORDEM').AsString;
  if FileExists(imagem + '.jpg') then
    img.LoadFromFile(imagem + '.jpg')
  else if FileExists(imagem + '.png') then
    img.LoadFromFile(imagem + '.png');
  TfrxPictureView(frxOP11.FindObject('imagemOP')).Picture.Assign(img);
end;

procedure TfrmGerenciamentoPCP.frxOP12BeginDoc(Sender: TObject);
begin
  inherited;
  TfrxPictureView(frxOP12.FindObject('LogoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);
end;

procedure TfrmGerenciamentoPCP.frxOP13BeginDoc(Sender: TObject);
begin
  inherited;
  TfrxPictureView(frxOP13.FindObject('LogoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);

end;

procedure TfrmGerenciamentoPCP.frxOP1GetValue(const VarName: string; var Value: Variant);
var
  prdRefer: string;
begin
  inherited;
  if (VarName = 'EMPRESA') then
    Value := dbInicio.Empresa.RAZAO
  else
  if (VarName = 'ORIENTACOES') then
  begin
    qAux4.Close;
    qAux4.SQL.Text := 'SELECT IOP_OBSERVACAO_PRD FROM ITEM_ORDEMPRODUCAO  WHERE IOP_CODIGO = ' + cdsBuscaIOP_CODIGO.AsString ;
    // qAux4.SQL.Text 'SELECT FTC_ETAPAS FROM FTC0000 f WHERE PRD_REFER = ' + QuotedStr(cdsBuscaPRD_REFER.AsString);
    qAux4.Open;
    Value := qAux4.FieldByName('IOP_OBSERVACAO_PRD').AsString
  end
  else
  if (VarName = 'PERCENTUAL') then
  begin
    prdRefer := BuscaUmDadoSqlAsString('SELECT PRD_REFER FROM PRD0000 WHERE PRD_CODIGO = ' +  QuotedStr(cdsMateriaPrima2PRD_CODIGO_1.AsString));
    Value := BuscaUmDadoSqlAsString('SELECT FTI_PERCENTUAL FROM FTC_IT01 fi  WHERE PRD_REFER = ' + QuotedStr(cdsBuscaPRD_REFER.AsString) + ' AND PRD_REFER_ITENS =  ' + QuotedStr(prdRefer) );
  end
  else
  if (VarName = 'PESO') then
  begin
    qAux4.Close;
    qAux4.SQL.Text := 'SELECT SUM(MP_CONSUMOTOTAL) AS MP_CONSUMOTOTAL ' +
                      ' FROM MATERIAPRIMA_ORDEMPRODUCAO ' +
                      ' WHERE PED_CODIGO = ' + QuotedStr(cdsBuscaPED_CODIGO.AsString) +
                      ' AND IOP_CODIGO = ' + cdsBuscaIOP_CODIGO.AsString ;
    qAux4.Open;
    Value := qAux4.FieldByName('MP_CONSUMOTOTAL').AsString
  end
    ;
end;

procedure TfrmGerenciamentoPCP.frxOP4GetValue(const VarName: string; var Value: Variant);
begin
  inherited;
  if (VarName = 'EMPRESA') then
    Value := dbInicio.Empresa.RAZAO;
  TfrxPictureView(frxOP4.FindObject('LogoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);
end;

procedure TfrmGerenciamentoPCP.frxOP5BeginDoc(Sender: TObject);
begin
  inherited;
     TfrxPictureView(frxOP5.FindObject('LogoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);

end;

procedure TfrmGerenciamentoPCP.frxOP5GetValue(const VarName: string; var Value: Variant);
begin
  inherited;
  if (VarName = 'EMPRESA') then
    Value := dbInicio.Empresa.RAZAO;
  if (VarName = 'PMT_LOTE_PREFIXO') then
    Value := BuscaUmDadoSqlAsString('SELECT PMT_LOTE_PREFIXO FROM PRMT0001 WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.Empresa.EMP_CODIGO) );

end;

procedure TfrmGerenciamentoPCP.frxOP6BeginDoc(Sender: TObject);
begin
  inherited;
  TfrxPictureView(frxOP6.FindObject('LogoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);
  Item := -2;
end;

procedure TfrmGerenciamentoPCP.frxOP6GetValue(const VarName: string; var Value: Variant);
begin
  inherited;
  Item := Item + 1;
  if (VarName = 'ITEM') then
    Value := Item;
  // frxOP9
  if (VarName = 'PRF_PRAZO_ENTREGA') then
  begin
    Value := BuscaUmDadoSqlAsDateTime(
      'SELECT PRF_PRAZO_ENTREGA FROM PED_IT01 ' +
      ' WHERE PED_CODIGO = ' + QuotedStr(qOP9Cabecalho.FieldByName('PED_CODIGO').AsString) +
      ' AND PRD_REFER = ' + QuotedStr(qOP9Cabecalho.FieldByName('PRD_REFER').AsString)
    );
    if Value = '00:00:00' then
      Value := qOP9Cabecalho.FieldByName('IOP_DATA_AJUSTADA').AsDateTime
  end;

end;

procedure TfrmGerenciamentoPCP.frxOP7BeginDoc(Sender: TObject);
begin
  inherited;
  TfrxPictureView(frxOP7.FindObject('LogoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);

end;

procedure TfrmGerenciamentoPCP.frxOP8BeginDoc(Sender: TObject);
begin
  inherited;
  TfrxPictureView(frxOP8.FindObject('LogoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);

end;

procedure TfrmGerenciamentoPCP.frxop9BeginDoc(Sender: TObject);
begin
  inherited;
  TfrxPictureView(frxop9.FindObject('LogoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);
  Item := 0;

end;

procedure TfrmGerenciamentoPCP.frxOP_Mod9GetValue(const VarName: string; var Value: Variant);
begin
  inherited;
  if (VarName = 'EMPRESA') then
    Value := dbInicio.Empresa.RAZAO;

end;

procedure TfrmGerenciamentoPCP.frxOrdemProducaoModelosBeginDoc(Sender: TObject);
begin
  inherited;
  TfrxPictureView(frxOrdemProducaoModelos.FindObject('LogoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);
end;

procedure TfrmGerenciamentoPCP.frxOrdemProducaoModelosGetValue(const VarName: string; var Value: Variant);
begin
  inherited;
  if (VarName  = 'RAZAO') then
     Value := DBInicio.Empresa.RAZAO
  else
  if (VarName  = 'MATERIAPRIMA') then
  begin
    if cdsMolaPRD_CODORIGINAL.AsString = '' then
      Value := cdsMolaPRD_REFER.AsString + ' - ' + cdsMolaPRD_DESCRI.AsString
    else
      Value := cdsMolaPRD_CODORIGINAL.AsString;
  end
  else
  if (VarName  = 'MMO_TRATAMENTO_TERMICO') then
  begin
    if cdsMolaMMO_TRATAMENTO_TERMICO.AsString = 'N' then
      Value := 'Não'
    else if cdsMolaMMO_TRATAMENTO_TERMICO.AsString = 'R' then
      Value := 'REVENIMENTO'
    else if cdsMolaMMO_TRATAMENTO_TERMICO.AsString = 'A' then
      Value := 'ALIVIO DE TENSÃO'
    else if cdsMolaMMO_TRATAMENTO_TERMICO.AsString = 'C' then
      Value := 'CEMENTAÇÃO'
    else if cdsMolaMMO_TRATAMENTO_TERMICO.AsString = 'T' then
      Value := 'TEMPERA E REVENIMENTO'
    else if cdsMolaMMO_TRATAMENTO_TERMICO.AsString = 'I' then
      Value := 'ISENTO';
  end
  else if (VarName  = 'ArquivoFichaTecnica') then
  begin
    if cdsMolaMMO_ARQUIVO_FICHA_TECNICA.AsString <> '' then
      TfrxPictureView(frxOrdemProducaoModelos.FindObject('ArquivoFichaTecnica')).Picture.LoadFromFile(cdsMolaMMO_ARQUIVO_FICHA_TECNICA.AsString);
    Value := '';
  end;


end;

procedure TfrmGerenciamentoPCP.frxOrdemProducao_OLDGetValue(const VarName: string; var Value: Variant);
begin
  inherited;
  if VarName = 'OP' then
    Value := cxgrd1DBBandedTableView1.DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1IOP_NORDEM.Index];

end;

procedure TfrmGerenciamentoPCP.frxRelOSP10GetValue(const VarName: string; var Value: Variant);
begin
  inherited;
  if (VarName = 'EMPRESA') then
    Value := DBInicio.Empresa.RAZAO;
end;

procedure TfrmGerenciamentoPCP.ListadeOrdemdeProduo1Click(Sender: TObject);
begin
  inherited;
  TfrxPictureView(frxLista.FindObject('LogoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);

  if cxgrd1DBBandedTableView1.DataController.Filter.FilterText <> '' then
  begin
    cdsbusca.Filtered := False;
    cdsBusca.Filter := cxgrd1DBBandedTableView1.DataController.Filter.FilterText;
    try
      cdsBusca.Filtered := True;
    except
      on e: Exception do
      begin
        if pos('SQL TimeStamp', e.message) > 0 then
          MessageDlg('Utilize os filtros da Pesquisa para Filtrar por Data', mtWarning, [mbOk], 0);
      end;
    end;
  end;
  frxLista.ShowReport();
  cdsbusca.Filtered := False;
end;

procedure TfrmGerenciamentoPCP.ListadeOrdemdeProduoporCliente1Click(Sender: TObject);
begin
  inherited;
  TfrxPictureView(frxListaCliente.FindObject('LogoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);

  if cxgrd1DBBandedTableView1.DataController.Filter.FilterText <> '' then
  begin
    cdsbusca.Filtered := False;
    cdsBusca.Filter := cxgrd1DBBandedTableView1.DataController.Filter.FilterText;
    try
      cdsBusca.Filtered := True;
    except
      on e: Exception do
      begin
        if pos('SQL TimeStamp', e.message) > 0 then
          MessageDlg('Utilize os filtros da Pesquisa para Filtrar por Data', mtWarning, [mbOk], 0);
      end;
    end;
  end;
  cdsBusca.AddIndex('CLIENTE_PEDIDO', 'CLI_RAZAO;REP_CODIGO;PED_CODIGO', 'ASC', []);
  cdsBusca.IndexName := 'CLIENTE_PEDIDO';
  frxListaCliente.ShowReport();
  cdsBusca.DeleteIndex('CLIENTE_PEDIDO');
  cdsbusca.Filtered := False;
end;

procedure TfrmGerenciamentoPCP.ListagemdeOrdensIniciadas1Click(Sender: TObject);
var
  sql : string;
  pula : boolean;
begin
  inherited;
  // cdsBusca.SQL.Add(' AND IOP_STATUS = ''I''');
  btnPesquisa.Click;
  sql := cdsBusca.SQL.Text;
  pula := true;
  // aqui começou a dar um erro muito estranho de violação de acesso
  // na primeira vez que tenta fechar o a query dá erro, a partir da segunda vai de boas... :(
  while pula do
  begin
    try
      try
          cdsBusca.Close;
      except
        pula := true;
      end;
    finally
      pula := false;
    end;
  end;

  cdsBusca.SQL.Clear;
  cdsBusca.SQL.Text := sql + ' AND IOP_STATUS = ''I''';
  cdsBusca.Open;
  TfrxPictureView(frxListaIniciadas.FindObject('LogoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);
  frxListaIniciadas.ShowReport();
  btnPesquisa.Click;

end;

procedure TfrmGerenciamentoPCP.ListagemdeOrdensporClienteeNotadeEntrada1Click(
  Sender: TObject);
begin
  inherited;
  TfrxPictureView(frxListaClienteNF.FindObject('LogoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);

  if cxgrd1DBBandedTableView1.DataController.Filter.FilterText <> '' then
  begin
    cdsbusca.Filtered := False;
    cdsBusca.Filter := cxgrd1DBBandedTableView1.DataController.Filter.FilterText;
    try
      cdsBusca.Filtered := True;
    except
      on e: Exception do
      begin
        if pos('SQL TimeStamp', e.message) > 0 then
          MessageDlg('Utilize os filtros da Pesquisa para Filtrar por Data', mtWarning, [mbOk], 0);
      end;
    end;
  end;
  cdsBusca.AddIndex('CLIENTE_PEDIDO', 'CLI_RAZAO;PED_CODIGO', 'ASC', []);
  cdsBusca.IndexName := 'CLIENTE_PEDIDO';
  frxListaClienteNF.ShowReport();
  cdsBusca.DeleteIndex('CLIENTE_PEDIDO');
  cdsbusca.Filtered := False;
end;

procedure TfrmGerenciamentoPCP.miInformarempenhoClick(Sender: TObject);
var
    ARelationIndex : integer;
    consumoTotal, empenhado : double;
    ADetailDataController: TcxGridDBDataController;
    prd_codigo,prd_refer, nordem : string;
    iop_codigo, mp_codigo : integer;
    QtdeEmpenhar : double;
    Tipo : string;
begin
  inherited;
  if cdsMateriaPrima.IsEmpty then
    exit;
 with cxgrd1DBBandedTableView1 do
 begin
   If DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1IOP_STATUS.Index] = 'F' then
     raise Exception.Create('Produção já concluida');
    // como estou usando um query virtual
    ARelationIndex := TcxGridDBDataController(DataController).GetDetailActiveRelationIndex(DataController.FocusedRecordIndex);
    ADetailDataController := TcxGridDataController(DataController).GetDetailDataController(DataController.FocusedRecordIndex, ARelationIndex) as TcxGridDBDataController;
    if VarIsNull( ADetailDataController.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1MP_EMPENHADO.Index]) then
       empenhado := 0
    else
      empenhado :=  ADetailDataController.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1MP_EMPENHADO.Index];
    consumoTotal := ADetailDataController.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1MP_CONSUMOTOTAL.Index];
    //já subsititui tudo , não pode mais substituir
    if (( consumoTotal - empenhado )<=0) and (MessageDlg('Deseja empenhar além do que foi planejado ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then
      exit;

    prd_codigo := ADetailDataController.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1PRD_CODIGO.Index];
    prd_refer :=  ADetailDataController.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1PRD_REFER.Index];
    iop_codigo := Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1IOP_CODIGO.Index];
   // opr_codigo := Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1OPR_CODIGO.Index];
    mp_codigo := ADetailDataController.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1MP_CODIGO.Index];
    nordem:=  cxgrd1DBBandedTableView1.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1IOP_NORDEM.Index];

    if TMenuItem(Sender).name = 'miEmpenhoAutomatico' then
      tipo := 'A'
    else
    if  TMenuItem(Sender).Name = 'miInformarempenho' then
      tipo := 'M';

    //gerencia pelo lote
    if BuscaUmDadoSqlAsString(' select PRD_GERENCIA_LOTE from prd0000 where prd_codigo = '+QuotedStr(prd_codigo) ) = 'S' then
    begin
       EmpenharLote(prd_codigo,prd_Refer,nordem,tipo,mp_codigo,iop_codigo, (consumoTotal - empenhado));

    end    // fim controle pelo lote
    else
    begin
      if TIPO = 'M' then
      begin
        if not TryStrToFloat( InputBox('Empenhado','Quantidade :',''), QtdeEmpenhar) then
          raise Exception.Create('Quantidade incorreta');
      end
      else
      begin
        QtdeEmpenhar := consumoTotal - empenhado ; // falta empenhar

      end;
        EmpenharSemLote(prd_codigo,prd_Refer,nordem,tipo,mp_codigo,iop_codigo,QtdeEmpenhar );


    end;
    btnPesquisa.Click;
    cdsMateriaPrima.close;
    cdsMateriaPrima.Open;

 end;  //fim  with cxgrd1DBBandedTableView1 do



end;

procedure TfrmGerenciamentoPCP.miOrdemProducaoClick(Sender: TObject);
var
  retorno: Integer;
  refer: string;
begin
  inherited;
  frxXLSXExport1.Wysiwyg := False;
  if (DBInicio.Empresa.PMT_REL_ORDEMPRODUCAO = '1') or (DBInicio.Empresa.PMT_REL_ORDEMPRODUCAO = '13') then
    try
      cdsMateriaPrima2.Close;
      cdsMateriaPrima2.sql.text :=
       'SELECT  LT.*, MP_CODIGO_SUBST, mp.prd_codigo, mp.ped_codigo,  mp_codigo, MP.iop_codigo, mp.MP_UCONSUMO, mp_situacao,'+
       ' pr.PRD_REFER, CAST(pr.PRD_DESCRI AS VARCHAR(100)) PRD_DESCRI,  pr.prd_und,PRD_GERENCIA_LOTE,  ' +
       ' mp.MP_EMPENHADO, MP_CONSUMOTOTAL,                                  '+
       '      (SELECT prd_descri                                            '+
       '        FROM MATERIAPRIMA_ORDEMPRODUCAO mpst                        '+
       '        JOIN PRD0000 prst ON (prst.PRD_CODIGO = mpst.PRD_CODIGO)    '+
       '        WHERE mpst.MP_CODIGO = mp.mp_codigo_subst  )  subst,        '+
       '  (SELECT sum(KAS_SALDO)- COALESCE(sum(KAS_RESERVA),0)  FROM kardex_almox_saldo kas WHERE kas.PRD_CODIGO = mp.PRD_CODIGO ) EstoqueDisponivel, MP_CUSTO, '+
       ' (SELECT FIRST 1 PRDL_LOTE FROM PRD_LOTE lt WHERE lt.PRD_CODIGO = pr.PRD_CODIGO '+
       ' AND PRDL_DATA_FABRICACAO  = (SELECT MIN(PRDL_DATA_FABRICACAO) FROM PRD_LOTE LT2 WHERE LT2.PRD_CODIGO = pr.PRD_CODIGO   AND LT2.PRDL_SALDO > 0 ))  LOTE '+
       ' FROM MATERIAPRIMA_ORDEMPRODUCAO mp                                 '+
       ' LEFT JOIN prd_lote lt ON (lt.IOP_CODIGO = MP.IOP_CODIGO) ' +
       ' JOIN PRD0000 pr ON (pr.PRD_CODIGO = mp.PRD_CODIGO)                 '+
       ' where MP_CONSUMOTOTAL > 0 and MP.iop_codigo = '+ VarToStr(cxgrd1DBBandedTableView1.DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1IOP_CODIGO.Index]);

      cdsMateriaPrima2.Open;
      if DBInicio.Empresa.PMT_REL_ORDEMPRODUCAO = '1' then
        frxOP1.ShowReport()
      else
      if DBInicio.Empresa.PMT_REL_ORDEMPRODUCAO = '13' then
        frxOP13.ShowReport();
    except
      ShowMessage('Expanda as Matérias primas primeiro');
    end

  else if DBInicio.Empresa.PMT_REL_ORDEMPRODUCAO = '2' then
  begin
    if TryStrToInt(VarToStr(cxgrd1DBBandedTableView1.DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1PRD_CODIGO.Index]), retorno) = true then
    begin
      cdsEngenharia.close;
      cdsEngenharia.sql.Text :=
      'SELECT OP.OPE_CODIGO, SEQUENCIA, OP.OPE_DESCRICAO FROM ENGENHARIA_PROCESSO EP JOIN OPERACOES OP ON(OP.OPE_CODIGO = EP.OPE_CODIGO) WHERE PRD_CODIGO ='+
      VarToStr(cxgrd1DBBandedTableView1.DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1PRD_CODIGO.Index]);
      cdsEngenharia.Open;
      frxOP_Mod9.ShowReport();
    end
    else
      ShowMessage('Selecionar OP antes de imprimir');
  end
  else if DBInicio.Empresa.PMT_REL_ORDEMPRODUCAO = '3' then
  begin
    if TryStrToInt(VarToStr(cxgrd1DBBandedTableView1.DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1IOP_CODIGO.Index]),retorno)  then
    begin
      cdsMateriaPrima2.Close;
        cdsMateriaPrima2.sql.text :=
       'SELECT  LT.*, MP_CODIGO_SUBST, mp.prd_codigo, mp.ped_codigo,  mp_codigo, mp.iop_codigo, mp.MP_UCONSUMO, mp_situacao,'+
       ' pr.PRD_REFER, CAST(pr.PRD_DESCRI AS VARCHAR(100)) PRD_DESCRI,  pr.prd_und,PRD_GERENCIA_LOTE,  ' +
       ' mp.MP_EMPENHADO, MP_CONSUMOTOTAL,                                  '+
       '      (SELECT prd_descri                                            '+
       '        FROM MATERIAPRIMA_ORDEMPRODUCAO mpst                        '+
       '        JOIN PRD0000 prst ON (prst.PRD_CODIGO = mpst.PRD_CODIGO)    '+
       '        WHERE mpst.MP_CODIGO = mp.mp_codigo_subst  )  subst,        '+
       '  (SELECT sum(KAS_SALDO)- COALESCE(sum(KAS_RESERVA),0)  FROM kardex_almox_saldo kas WHERE kas.PRD_CODIGO = mp.PRD_CODIGO ) EstoqueDisponivel, MP_CUSTO, '+
       ' (SELECT FIRST 1 PRDL_LOTE FROM PRD_LOTE lt WHERE lt.PRD_CODIGO = pr.PRD_CODIGO  '+
       '   AND PRDL_DATA_FABRICACAO  = (SELECT MIN(PRDL_DATA_FABRICACAO) FROM PRD_LOTE LT2 WHERE LT2.PRD_CODIGO = pr.PRD_CODIGO   AND LT2.PRDL_SALDO > 0 )) LOTE '+
       ' FROM MATERIAPRIMA_ORDEMPRODUCAO mp                                 '+
       ' JOIN PRD0000 pr ON (pr.PRD_CODIGO = mp.PRD_CODIGO)                 '+
       ' LEFT JOIN prd_lote lt ON (lt.IOP_CODIGO = MP.IOP_CODIGO) ' +
       ' where MP_CONSUMOTOTAL > 0 and mp.iop_codigo = '+ VarToStr(cxgrd1DBBandedTableView1.DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1IOP_CODIGO.Index]);
       cdsMateriaPrima2.open;
      frxRelOSP10.ShowReport();
    end
    else
      ShowMessage('Selecionar OP antes de imprimir');

  end
  else if DBInicio.Empresa.PMT_REL_ORDEMPRODUCAO = '4' then
  begin
    frxOP4.ShowReport();
  end
  else if DBInicio.Empresa.PMT_REL_ORDEMPRODUCAO = '5' then
  begin
    try
      cdsProdutoOP5.Close;
      cdsProdutoOP5.SQL.Clear;
      cdsProdutoOP5.SQL.Text := 'SELECT it.PRF_QTDE, ftc_etapas, pr.PRD_REFER, it.PRF_PRDDESCRI as PRD_DESCRI, IOP_DTENTREGA, ' +
        ' iop.IOP_QUANTIDADE, pr.prd_und, lt.PRDL_LOTE, op.OPR_EMISSAO, pr.PRD_FATOR_PROD, ' +
        ' pr.PRD_DIV_MULT_PROD, IOP.IOP_CODIGO, iop.IOP_NORDEM ' +
        ' FROM ORDEMPRODUCAO OP ' +
        ' JOIN ITEM_ORDEMPRODUCAO iop ON (Iop.OPR_CODIGO = OP.OPR_CODIGO ) ' +
        ' LEFT JOIN prd_lote lt ON (lt.IOP_CODIGO = iop.IOP_CODIGO) ' +
        ' JOIN PRD0000 pr ON (pr.PRD_CODIGO = iop.PRD_CODIGO) ' +
        ' LEFT JOIN FTC0000 ft ON (ft.PRD_REFER = pr.PRD_REFER) ' +
        ' JOIN PED_IT01 it ON (it.PED_CODIGO = op.PED_CODIGO) ' +
        ' WHERE EXISTS ' +
        '  (SELECT * FROM DEMANDA_PRODUCAO dpr WHERE dpr.PED_CODIGO = op.PED_CODIGO AND dpr.EMP_CODIGO = op.EMP_CODIGO ) ' +
        ' and op.PED_CODIGO = ' + QuotedStr(VarToStr(cxgrd1DBBandedTableView1.DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1PED_CODIGO.Index]));
      cdsProdutoOP5.Open;
      refer := cdsProdutoOP5.FieldByName('PRD_REFER').AsString;

      cdsMateriaPrimaOP5.Close;
      cdsMateriaPrimaOP5.SQL.Clear;
      cdsMateriaPrimaOP5.SQL.Text := 'SELECT ' +
          ' (SELECT FIRST 1 a.PRDL_LOTE from PRD_LOTE A WHERE A.prd_CODIGO = mp.prd_codigo AND a.PRDL_DATA_FABRICACAO = (SELECT MAX(a.PRDL_DATA_FABRICACAO) AS fab from PRD_LOTE A WHERE A.prd_CODIGO = mp.prd_codigo )) AS ItemLote, ' +
          ' LT.PRDL_LOTE, pr.PRD_REFER, pr.PRD_DESCRI, mp.prd_codigo, mp.ped_codigo, ' +
          ' pr.PRD_FATOR_PROD, pr.PRD_DIV_MULT_PROD, MP.MP_CODIGO,  MP.iop_codigo, mp.MP_UCONSUMO, mp_situacao, ' +
          ' mp.MP_EMPENHADO, MP_CONSUMOTOTAL,pr.prd_und,PRD_GERENCIA_LOTE, ' +
          ' (SELECT sum(KAS_SALDO)- COALESCE(sum(KAS_RESERVA),0)  FROM kardex_almox_saldo kas WHERE kas.PRD_CODIGO = mp.PRD_CODIGO ) EstoqueDisponivel, MP_CUSTO ' +
          ' FROM MATERIAPRIMA_ORDEMPRODUCAO mp ' +
          ' JOIN PRD0000 pr ON (pr.PRD_CODIGO = mp.PRD_CODIGO) ' +
          ' LEFT JOIN prd_lote lt ON (lt.IOP_CODIGO = MP.IOP_CODIGO) ' +
          ' where MP.PED_CODIGO = ' + QuotedStr(VarToStr(cxgrd1DBBandedTableView1.DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1PED_CODIGO.Index]));
      cdsMateriaPrimaOP5.Open;

      qAux.Close;
      qAux.SQL.Clear;
      qAux.SQL.Text := ' SELECT pr.PRD_REFER, pr.PRD_DESCRI, CQP.CQP_VALOR_MIN, CQP.CQP_VALOR_MAX, ' +
          ' CQP.CQP_ESPERADO, Iop.IOP_NORDEM, pq.PAR_OBSERVACAO, PQ.PAR_DESCRICAO ' +
          ' FROM PRD0000 pr ' +
          ' JOIN CONTROLE_DE_QUALIDADE_PRODUTO CQP ON (CQP.PRD_REFER = PR.PRD_REFER) ' +
          ' JOIN PARAMETROS_DA_QUALIDADE pq ON (pq.PAR_CODIGO = cqp.PAR_CODIGO) ' +
          ' JOIN ITEM_ORDEMPRODUCAO iop ON (Iop.IOP_NORDEM = ' + QuotedStr(cdsProdutoOP5IOP_NORDEM.asString) + ' ) ' +
          ' WHERE pr.PRD_REFER = ' + QuotedStr(refer) ;
      qAux.Open;

      qAux2.Close;
      qAux2.SQL.Clear;
{      qAux2.SQL.Text := 'SELECT DISTINCT CQ.CQUA_PRDL_LOTE, iop.iop_nordem ' +
      ' FROM CONTROLE_DE_QUALIDADE CQ ' +
      ' JOIN PARAMETROS_DA_QUALIDADE PQ ON (PQ.PAR_CODIGO = CQ.CQUA_PAR_CODIGO) ' +
      ' LEFT JOIN CONTROLE_DE_QUALIDADE_PRODUTO CQP ON (CQ.CQUA_PAR_CODIGO = CQP.PAR_CODIGO AND CQP.PRD_REFER = CQ.PRD_REFER) ' +
      ' JOIN ITEM_ORDEMPRODUCAO iop ON (Iop.IOP_NORDEM = CQUA_IOP_NORDEM ) ' +
      ' JOIN PRD0000 pr ON (pr.PRD_CODIGO = iop.PRD_CODIGO) ' +
      ' WHERE IOP.IOP_NORDEM = ' + sqstr(cdsProdutoOP5IOP_NORDEM.asString) + ' AND CQ.CQUA_PRDL_LOTE = ' + sqstr(cdsProdutoOP5PRDL_LOTE.asString); }
      qAux2.SQL.Text := 'SELECT FIRST 1 ' + sqstr(cdsProdutoOP5IOP_NORDEM.asString) +' IOP_NORDEM, ' + sqstr(cdsProdutoOP5PRDL_LOTE.asString) + ' CQUA_PRDL_LOTE FROM PRD0000';
      qAux2.Open;

      qAux3.Close;
      qAux3.SQL.Clear;
      qAux3.SQL.Text := 'SELECT SUM(iop.IOP_QUANTIDADE) AS Soma ' +
        ' FROM ORDEMPRODUCAO OP ' +
        ' JOIN ITEM_ORDEMPRODUCAO iop ON (Iop.OPR_CODIGO = OP.OPR_CODIGO ) ' +
        ' JOIN PRD0000 pr ON (pr.PRD_CODIGO = iop.PRD_CODIGO) ' +
        ' AND op.PED_CODIGO = ' + QuotedStr(VarToStr(cxgrd1DBBandedTableView1.DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1PED_CODIGO.Index]));
      qAux3.Open;

      frxOP5.ShowReport();
    except
      on E:Exception do
        ShowMessage('Expanda as Matérias primas primeiro' + E.Message);
    end

  end
  else if DBInicio.Empresa.PMT_REL_ORDEMPRODUCAO = '6' then
  begin
    qOP6Cabecalho.Close;
    qOP6Cabecalho.SQL.Clear;
    qOP6Cabecalho.SQL.Text := 'SELECT  iop.IOP_CODIGO, iop.IOP_NORDEM, pr.PRD_REFER, it.PRF_PRDDESCRI as PRD_DESCRI, iop.IOP_QUANTIDADE, ' +
        ' pe.PED_DTENTRADA, op.OPR_DTENTREGA, pe.PED_CODIGO, lt.PRDL_LOTE, op.OPR_EMISSAO, ' +
        ' cl.CLI_CODIGO, cl.CLI_RAZAO,  cl.CLI_ENDERE, cl.CLI_BAIRRO,  pe.PED_NUMERO_PED_CLIENTE, pe.PED_DTSAIDA, iop.IOP_DATA_AJUSTADA, ' +
        ' pm.PMT_OS_CABECALHO, pe.PED_CONTATO_CLIENTE, pm.PMT_OS_REV, pm.PMT_OS_DATA_EMISSAO ' +
        ' FROM ORDEMPRODUCAO op '+
        ' JOIN ITEM_ORDEMPRODUCAO iop ON (iop.OPR_CODIGO = op.OPR_CODIGO) ' +
        ' JOIN PRD0000 pr ON (pr.PRD_CODIGO = iop.PRD_CODIGO) ' +
        ' JOIN CLI0000 cl ON (cl.CLI_CODIGO = op.CLI_CODIGO) ' +
        ' JOIN PED0000 pe ON (pe.PED_CODIGO = op.PED_CODIGO) ' +
        ' JOIN PED_IT01 it ON (it.PED_CODIGO = op.PED_CODIGO) ' +
        ' JOIN PRMT0001 pm ON (pm.EMP_CODIGO = pe.EMP_CODIGO) ' +
        ' LEFT JOIN prd_lote lt ON (lt.IOP_CODIGO = iop.IOP_CODIGO) ' +
        ' WHERE iop.IOP_NORDEM = ' + QuotedStr(VarToStr(cxgrd1DBBandedTableView1.DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1IOP_NORDEM.Index]));
    qOP6Cabecalho.Open;

    qCorpoOP6.Close;
    qCorpoOP6.SQL.Clear;
    qCorpoOP6.SQL.Text := 'SELECT DISTINCT ' +
      ' pr.PRD_REFER, pr.PRD_DESCRI, pr.prd_und, mp.prd_codigo, mp.MP_UCONSUMO, MP_CONSUMOTOTAL, ' +
      ' MP.iop_codigo ' +
      '  FROM MATERIAPRIMA_ORDEMPRODUCAO mp ' +
      '   JOIN PRD0000 pr ON (pr.PRD_CODIGO = mp.PRD_CODIGO) ' +
      '   JOIN prd_lote lt ON (lt.IOP_CODIGO = MP.IOP_CODIGO) ' +
      '   JOIN ITEM_ORDEMPRODUCAO iop ON (iop.OPR_CODIGO = MP.OPR_CODIGO) ' +
      ' WHERE MP.MP_CONSUMOTOTAL > 0 ' +
      '   AND MP.PED_CODIGO = ' + QuotedStr(qOP6Cabecalho.FieldByName('PED_CODIGO').AsString) +
      '   AND MP.IOP_CODIGO = ' + QuotedStr(qOP6Cabecalho.FieldByName('IOP_CODIGO').AsString) ;
    qCorpoOP6.Open;

    qQualidadeOP6.Close;
    qQualidadeOP6.SQL.Clear;
    qQualidadeOP6.SQL.Text := 'SELECT pq.PAR_DESCRICAO, cqp.CQP_ESPERADO ' +
      '  FROM PRD0000 pr ' +
      '    JOIN CONTROLE_DE_QUALIDADE_PRODUTO cqp ON (pr.PRD_REFER = cqp.PRD_REFER) ' +
      '    JOIN PARAMETROS_DA_QUALIDADE pq ON (pq.PAR_CODIGO = cqp.PAR_CODIGO) ' +
      '  WHERE pr.PRD_REFER = ' + QuotedStr(qOP6Cabecalho.FieldByName('PRD_REFER').AsString) ;
    qQualidadeOP6.Open;

    frxOP6.ShowReport();

  end
  else if DBInicio.Empresa.PMT_REL_ORDEMPRODUCAO = '7' then
  begin
    qOP6Cabecalho.Close;
    qOP6Cabecalho.SQL.Clear;
    qOP6Cabecalho.SQL.Text := 'SELECT  iop.IOP_CODIGO, iop.IOP_NORDEM, pr.PRD_REFER, it.PRF_PRDDESCRI as PRD_DESCRI, iop.IOP_QUANTIDADE, ' +
        ' pe.PED_DTENTRADA, op.OPR_DTENTREGA, pe.PED_CODIGO, lt.PRDL_LOTE, op.OPR_EMISSAO, ' +
        ' cl.CLI_CODIGO, cl.CLI_RAZAO, cl.CLI_ENDERE, cl.CLI_BAIRRO, pe.PED_NUMERO_PED_CLIENTE, pe.PED_DTSAIDA, ' +
        ' iop.IOP_DATA_AJUSTADA, pe.PED_CONTATO_CLIENTE,' +
        ' pm.PMT_OS_CABECALHO, pm.PMT_OS_REV, pm.PMT_OS_DATA_EMISSAO ' +
        ' FROM ORDEMPRODUCAO op '+
        ' JOIN ITEM_ORDEMPRODUCAO iop ON (iop.OPR_CODIGO = op.OPR_CODIGO) ' +
        ' JOIN PRD0000 pr ON (pr.PRD_CODIGO = iop.PRD_CODIGO) ' +
        ' JOIN CLI0000 cl ON (cl.CLI_CODIGO = op.CLI_CODIGO) ' +
        ' JOIN PED0000 pe ON (pe.PED_CODIGO = op.PED_CODIGO) ' +
        ' JOIN PED_IT01 it ON (it.PED_CODIGO = op.PED_CODIGO) ' +
        ' JOIN PRMT0001 pm ON (pm.EMP_CODIGO = pe.EMP_CODIGO) ' +
        ' LEFT JOIN prd_lote lt ON (lt.IOP_CODIGO = iop.IOP_CODIGO) ' +
        ' WHERE iop.IOP_NORDEM = ' + QuotedStr(VarToStr(cxgrd1DBBandedTableView1.DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1IOP_NORDEM.Index]));
    qOP6Cabecalho.Open;

    qCorpoOP6.Close;
    qCorpoOP6.SQL.Clear;
    qCorpoOP6.SQL.Text := 'SELECT DISTINCT ' +
      ' pr.PRD_REFER, pr.PRD_DESCRI, pr.prd_und, mp.prd_codigo, mp.MP_UCONSUMO, MP_CONSUMOTOTAL, ' +
      ' MP.iop_codigo ' +
      '  FROM MATERIAPRIMA_ORDEMPRODUCAO mp ' +
      '   JOIN PRD0000 pr ON (pr.PRD_CODIGO = mp.PRD_CODIGO) ' +
      '   JOIN prd_lote lt ON (lt.IOP_CODIGO = MP.IOP_CODIGO) ' +
      '   JOIN ITEM_ORDEMPRODUCAO iop ON (iop.OPR_CODIGO = MP.OPR_CODIGO) ' +
      ' WHERE MP.MP_CONSUMOTOTAL > 0 ' +
      '   AND MP.PED_CODIGO = ' + QuotedStr(qOP6Cabecalho.FieldByName('PED_CODIGO').AsString) +
      '   AND MP.IOP_CODIGO = ' + QuotedStr(qOP6Cabecalho.FieldByName('IOP_CODIGO').AsString) ;
    qCorpoOP6.Open;

    frxOP7.ShowReport();

  end
  else if DBInicio.Empresa.PMT_REL_ORDEMPRODUCAO = '8' then
  begin
    qOP8Cabecalho.Close;
    qOP8Cabecalho.SQL.Clear;
    qOP8Cabecalho.SQL.Text := 'SELECT  iop.IOP_CODIGO, iop.IOP_NORDEM, pr.PRD_REFER, it.PRF_PRDDESCRI as PRD_DESCRI, iop.IOP_QUANTIDADE, ' +
        ' pe.PED_DTENTRADA, op.OPR_DTENTREGA, pe.PED_CODIGO, op.OPR_EMISSAO, ' +
        ' cl.CLI_CODIGO, cl.CLI_RAZAO, cl.CLI_ENDERE, cl.CLI_BAIRRO, pe.PED_NUMERO_PED_CLIENTE, pe.PED_DTSAIDA, ' +
        ' iop.IOP_DATA_AJUSTADA, pe.PED_CONTATO_CLIENTE, pc.PCX_DESCRI, pe.PED_OBS_PRODUCAO  ' +
        ' FROM ORDEMPRODUCAO op '+
        ' JOIN ITEM_ORDEMPRODUCAO iop ON (iop.OPR_CODIGO = op.OPR_CODIGO) ' +
        ' JOIN PRD0000 pr ON (pr.PRD_CODIGO = iop.PRD_CODIGO) ' +
        ' JOIN CLI0000 cl ON (cl.CLI_CODIGO = op.CLI_CODIGO) ' +
        ' JOIN PED0000 pe ON (pe.PED_CODIGO = op.PED_CODIGO) AND (pe.EMP_CODIGO = op.EMP_CODIGO) ' +
        ' JOIN PED_IT01 it ON (it.PED_CODIGO = op.PED_CODIGO) ' +
        ' LEFT JOIN PCX0000 pc ON (pc.PCX_CODIGO = pe.PCX_CODIGO) ' +
        ' WHERE iop.IOP_NORDEM = ' + QuotedStr(VarToStr(cxgrd1DBBandedTableView1.DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1IOP_NORDEM.Index])) ;
    qOP8Cabecalho.Open;

    if qOP8Cabecalho.IsEmpty then
      raise Exception.Create('Ordem de Produção não Iniciada.');


    qOP8Corpo.Close;
    qOP8Corpo.SQL.Clear;
    qOP8Corpo.SQL.Text := 'SELECT DISTINCT ' +
      ' pr.PRD_REFER, pr.PRD_DESCRI, pr.prd_und, mp.prd_codigo, mp.MP_UCONSUMO, MP_CONSUMOTOTAL, ' +
      ' MP.iop_codigo ' +
      '  FROM MATERIAPRIMA_ORDEMPRODUCAO mp ' +
      '   JOIN PRD0000 pr ON (pr.PRD_CODIGO = mp.PRD_CODIGO) ' +
      '   JOIN ITEM_ORDEMPRODUCAO iop ON (iop.OPR_CODIGO = MP.OPR_CODIGO) ' +
      ' WHERE MP.MP_CONSUMOTOTAL > 0 ' +
      '   AND MP.PED_CODIGO = ' + QuotedStr(qOP8Cabecalho.FieldByName('PED_CODIGO').AsString) +
      '   AND MP.IOP_CODIGO = ' + QuotedStr(qOP8Cabecalho.FieldByName('IOP_CODIGO').AsString) ;
    qOP8Corpo.Open;

    frxOP8.ShowReport();

  end
  else if DBInicio.Empresa.PMT_REL_ORDEMPRODUCAO = '9' then
  begin
    qOP9Cabecalho.Close;
    qOP9Cabecalho.SQL.Clear;
    qOP9Cabecalho.SQL.Text := 'SELECT  iop.IOP_CODIGO, iop.IOP_NORDEM, pr.PRD_REFER, it.PRF_PRDDESCRI as PRD_DESCRI, iop.IOP_QUANTIDADE, ' +
        ' pe.PED_DTENTRADA, op.OPR_DTENTREGA, pe.PED_CODIGO, lt.PRDL_LOTE, op.OPR_EMISSAO, ' +
        ' cl.CLI_CODIGO, cl.CLI_RAZAO,  cl.CLI_ENDERE, cl.CLI_BAIRRO,  pe.PED_NUMERO_PED_CLIENTE, pe.PED_DTSAIDA, iop.IOP_DATA_AJUSTADA, ' +
        ' pm.PMT_OS_CABECALHO, pe.PED_CONTATO_CLIENTE, pm.PMT_OS_REV, pm.PMT_OS_DATA_EMISSAO, pend.PRDE_ENDERECO ' +
        ' FROM ORDEMPRODUCAO op '+
        ' JOIN ITEM_ORDEMPRODUCAO iop ON (iop.OPR_CODIGO = op.OPR_CODIGO) ' +
        ' JOIN PRD0000 pr ON (pr.PRD_CODIGO = iop.PRD_CODIGO) ' +
        ' JOIN CLI0000 cl ON (cl.CLI_CODIGO = op.CLI_CODIGO) ' +
        ' JOIN PED0000 pe ON (pe.PED_CODIGO = op.PED_CODIGO) ' +
        ' JOIN PED_IT01 it ON (it.PED_CODIGO = op.PED_CODIGO) ' +
        ' JOIN PRMT0001 pm ON (pm.EMP_CODIGO = pe.EMP_CODIGO) ' +
        ' LEFT JOIN prd_lote lt ON (lt.IOP_CODIGO = iop.IOP_CODIGO) ' +
        ' LEFT JOIN PRD0000_ENDERECAMENTO pend ON (pend.PRDE_REGISTRO = pr.PRDE_REGISTRO) ' +
        ' WHERE iop.IOP_NORDEM = ' + QuotedStr(VarToStr(cxgrd1DBBandedTableView1.DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1IOP_NORDEM.Index]));
    qOP9Cabecalho.Open;
                                //
    qOP9Corpo.Close;
    qOP9Corpo.SQL.Clear;
    qOP9Corpo.SQL.Text := 'SELECT DISTINCT ' +
      ' pr.PRD_REFER, pr.PRD_DESCRI, pr.prd_und, mp.prd_codigo, mp.MP_UCONSUMO, MP_CONSUMOTOTAL, ' +
      ' MP.iop_codigo' +
      '  FROM MATERIAPRIMA_ORDEMPRODUCAO mp ' +
      '   JOIN PRD0000 pr ON (pr.PRD_CODIGO = mp.PRD_CODIGO) ' +
      '   JOIN prd_lote lt ON (lt.IOP_CODIGO = MP.IOP_CODIGO) ' +
      '   JOIN ITEM_ORDEMPRODUCAO iop ON (iop.OPR_CODIGO = MP.OPR_CODIGO) ' +
      ' WHERE MP.MP_CONSUMOTOTAL > 0 ' +
      '   AND MP.PED_CODIGO = ' + QuotedStr(qOP9Cabecalho.FieldByName('PED_CODIGO').AsString) +
      '   AND MP.IOP_CODIGO = ' + QuotedStr(qOP9Cabecalho.FieldByName('IOP_CODIGO').AsString) ;
    qOP9Corpo.Open;

    qOP9Qualidade.Close;
    qOP9Qualidade.SQL.Clear;
    qOP9Qualidade.SQL.Text := 'SELECT pq.PAR_DESCRICAO, cqp.CQP_ESPERADO ' +
      '  FROM PRD0000 pr ' +
      '    JOIN CONTROLE_DE_QUALIDADE_PRODUTO cqp ON (pr.PRD_REFER = cqp.PRD_REFER) ' +
      '    JOIN PARAMETROS_DA_QUALIDADE pq ON (pq.PAR_CODIGO = cqp.PAR_CODIGO) ' +
      '  WHERE pr.PRD_REFER = ' + QuotedStr(qOP9Cabecalho.FieldByName('PRD_REFER').AsString) ;
    qOP9Qualidade.Open;

    frxOP9.ShowReport();

  end
  else if DBInicio.Empresa.PMT_REL_ORDEMPRODUCAO = '10' then
  begin
   if DBInicio.Exclusivo('PRODUTOS') then
      sEmpresa := ' and PIT.emp_codigo = PRD.emp_codigo ';

   wSeleciona :=' where PED.PED_CODIGO = ' + QuotedStr(VarToStr(cxgrd1DBBandedTableView1.DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1PED_CODIGO.Index]));
   wOrdem     :=' PED.PED_CODIGO';
   cdspedido.Close;
   qPedidos.Sql.Clear;
   qPedidos.Sql.Add('Select PED.PED_CONTATO_CLIENTE,');
   qPedidos.Sql.Add('       PED.PED_CODIGO,');
   qPedidos.Sql.Add('       PED.PED_DTENTRADA,');
   qPedidos.Sql.Add('       PED.PED_DTSAIDA,');
   qPedidos.Sql.Add('       PED.PED_EXPEDICAO,');
   qPedidos.Sql.Add('       PED.PED_COMIS1,');
   qPedidos.Sql.Add('       PED.PED_COMIS2,');
   qPedidos.Sql.Add('       PED.PED_COMIS3,');
   qPedidos.Sql.Add('       PED.PED_FRETE ,');
   qPedidos.Sql.Add('       PED.PED_FRETE2,');
   qPedidos.Sql.Add('       PED.PED_SITCRED,');
   qPedidos.Sql.Add('       PED.PED_PRIORIDADE,');
   qPedidos.Sql.Add('       PED.PED_TOTUPS,');
   qPedidos.SQL.Add('       PED_SUBCABECALHOPPAC,');
   qPedidos.Sql.Add('       PED.PED_VLTUPS,');
   qPedidos.Sql.Add('       ( select coalesce(sum(t1.prf_qtde * t2.prd_pesokg),0) FROM ped_it01 T1 JOIN prd0000 T2 ON (t2.prd_refer = t1.prd_refer) WHERE T1.ped_codigo = ped.ped_codigo) as peso,');
   qPedidos.Sql.Add('       case ' );
   qPedidos.Sql.Add('          when (PED.ENDERECO_ENTREGA > 0) ' );
   qPedidos.Sql.Add('          then '+qStr('ENDEREÇO DE ENTREGA: ')+'||ENDER.descricao||'+qStr(' BAIRRO: ')+'||coalesce(ENDER.BAIRRO,'+qStr('')+')||'+qStr(' CIDADE: ')+'||coalesce(ENDER.CIDADE,CLI.cli_cidade)||'+qStr(' CEP: ')+'||coalesce(ENDER.CEP,'+qStr('')+') ' );
   qPedidos.Sql.Add('          else '+qStr('') );
   qPedidos.Sql.Add('       end AS CIDADE_ENTREGA,');
   qPedidos.Sql.Add('       PED.PED_DESCTONF,');
   qPedidos.Sql.Add('       PED.PED_DESCTOPC1,');
   qPedidos.Sql.Add('       PED.PED_DESCTOPC2,');
   qPedidos.Sql.Add('       PED.PED_DESCTOVL,');
   qPedidos.Sql.Add('       PED.PED_VLTOTAL_LIQ,');
   qPedidos.Sql.Add('       PED.PED_VLTOTAL_IPI,');
   qPedidos.Sql.Add('       PED.PED_VLTOTAL_BRUTO,');
   qPedidos.Sql.Add('       CLI.CLI_EMAIL_ALTERNATIVO,');
   qPedidos.Sql.Add('       t4.PMT_MOTIVO,');
   qPedidos.Sql.Add('       PED.PED_SITUACAO,');
   qPedidos.Sql.Add('       PED.PED_VLFRETE + PED.PED_DESP_ACES as PED_VLFRETE,');
   qPedidos.Sql.Add('       PED.PED_OBSERVACAO,');
   qPedidos.Sql.Add('       PED.PED_VALOR_ST,');
   qPedidos.Sql.Add('       PED.CLI_CODIGO,');
   qPedidos.Sql.Add('       CLI.CLI_RAZAO,');
   qPedidos.Sql.Add('       CLI.CLI_FANTASIA,');
   qPedidos.Sql.Add('       CLI.CLI_ENDERE,');
   qPedidos.Sql.Add('       CLI.CLI_BAIRRO,');
   qPedidos.Sql.Add('       CLI.CLI_CIDADE,');
   qPedidos.Sql.Add('       CLI.CLI_UF,');
   qPedidos.Sql.Add('       CLI.CLI_CEP,');
   qPedidos.Sql.Add('       CLI.CLI_PESSOA,');
   qPedidos.Sql.Add('       CLI.CLI_CGC,');
   qPedidos.Sql.Add('       CLI.CLI_INSC,');
   qPedidos.Sql.Add('       CLI.CLI_CONTATO,');
   qPedidos.Sql.Add('       CLI.CLI_FONE,');
   qPedidos.Sql.Add('       CLI.CLI_FAX,');
   qPedidos.Sql.Add('       CLI.CLI_ENDENTR,');
   qPedidos.Sql.Add('       CLI.CLI_CIDENTR,');
   qPedidos.Sql.Add('       CLI.CLI_UFENTR,');
   qPedidos.Sql.Add('       CLI.CLI_CEPENTR,');
   qPedidos.Sql.Add('       CLI.CLI_ENDFAT,');
   qPedidos.Sql.Add('       CLI.CLI_CIDFAT,');
   qPedidos.Sql.Add('       CLI.CLI_UFFAT,');
   qPedidos.Sql.Add('       CLI.CLI_CEPFAT,');
   qPedidos.Sql.Add('       CLI.CLI_EMAIL,');
   qPedidos.Sql.Add('       PED.REP_CODIGO,');
   qPedidos.Sql.Add('       REP.REP_NOME,');
   qPedidos.Sql.Add('       REP.REP_EMAIL,');
   qPedidos.Sql.Add('       PED.PCL_CODIGO,');
   qPedidos.Sql.Add('       PCL.PCL_NOME,');
   qPedidos.Sql.Add('       PED.TRP_CODIGO,');
   qPedidos.Sql.Add('       TRP.TRP_RAZAO,');
   qPedidos.Sql.Add('       TRP.TRP_FONE,');
   qPedidos.Sql.Add('       PED.TRP_REDESP,');
   qPedidos.Sql.Add('       TRR.TRP_RAZAO,');
   qPedidos.Sql.Add('       TRR.TRP_FONE,');
   qPedidos.Sql.Add('       PED.OPV_CODIGO,');
   qPedidos.Sql.Add('       OPV.OPV_DESCRICAO,');
   qPedidos.Sql.Add('       ped.PCX_CODIGO,');
   qPedidos.Sql.Add('       PCX.PCX_DESCRI,');
   qPedidos.Sql.Add('       PED.PED_PLACA,');
   qpedidos.SQL.Add('       PED_NUMERO_PED_CLIENTE,');
   qPedidos.SQL.Add('       FPG_DESCRICAO');
   qPedidos.Sql.Add('from PED0000 PED');
   qPedidos.Sql.Add('     LEFT JOIN CLI0000 CLI on PED.cli_codigo = CLI.cli_codigo' );
   qPedidos.Sql.Add('     LEFT JOIN REP0000 REP on PED.rep_codigo = REP.rep_codigo' );
   qPedidos.Sql.Add('     left join PED_MOTIVO t4 on (t4.PMT_REGISTRO = PED.PMT_REGISTRO)' );
   qPedidos.Sql.Add('     LEFT JOIN PCL0000 PCL on PED.pcl_codigo = PCL.pcl_codigo' );
   qPedidos.Sql.Add('     LEFT JOIN TRP0000 TRP on PED.trp_codigo = TRP.trp_codigo' );
   qPedidos.Sql.Add('     LEFT JOIN TRP0000 TRR ON PED.trp_redesp = TRR.trp_codigo' );
   qPedidos.Sql.Add('     LEFT JOIN OPV0000 OPV ON (OPV.OPV_CODIGO = PED.OPV_CODIGO)' );
   qPedidos.Sql.Add('     LEFT JOIN ENDERECO ENDER ON ENDER.CODIGO = PED.ENDERECO_ENTREGA' );
   qPedidos.Sql.Add('     LEFT JOIN PCX0000 PCX ON PCX.PCX_CODIGO = PED.PCX_CODIGO AND PCX.EMP_CODIGO=PED.EMP_CODIGO' );
   qPedidos.SQL.Add('     LEFT JOIN FORMA_PAGAMENTO FPG ON (FPG.FPG_REGISTRO = PED.FPG_REGISTRO)  ');
   qPedidos.Sql.Add('where PED.PED_CODIGO = '+QuotedStr(VarToStr(cxgrd1DBBandedTableView1.DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1PED_CODIGO.Index])) + ConcatSe(' and ped.', dbInicio.ExclusivoSql('pedidos') ) );
   qPedidos.Sql.Add('ORDER BY PED.PED_CODIGO');
   cdspedido.Open;

   if DBInicio.IsDesenvolvimento then
     CopyToClipBoard(qPedidos.SQL.Text);

    with qPedidosItem, sql do
    begin
      Clear;
      Add( 'Select '+
           ' cast(CASE PRF_PRODUTO_AGREGADO  '+
           '         WHEN ''N'' THEN pit.PRF_REGISTRO '+
           '         WHEN ''S'' THEN pit.prf_registro_vinculado|| ''.'' ||  pit.PRF_REGISTRO   '+
           '  END AS NUMERIC(14,8)) PRF_REGISTRO, pit.prf_registro as registro, ');
      Add( ' case when (t3.prg_medida_1 > 0.0 and t3.prg_medida_2 > 0.0 and t3.prg_medida_3 > 0.0) '+
                            'then cast( cast(t3.prg_medida_1 as real) * cast(t3.prg_medida_2  as real) * cast(t3.prg_medida_3 as real) * cast(pit.prf_qtde as real) as Numeric(18,3) ) '+
                            'else 0 '+
                            'end as M3, ');
      Add('   case WHEN PRF_REGISTRO_VINCULADO = 0 THEN   (SELECT PRD_REFER FROM pCd_retorna_referencia_item_ped(pit.emp_codigo, pit.prf_registro)) ');
      Add('	ELSE prd.prd_refer	END   as REFERENCIA,');
      Add(' pit.PRF_PRDDESCRI DESCRICAO, ');
      Add(' T44.prdd_sigla ,')                         ;
      Add('       case when (PIT.PRD_UND is null) or (PIT.PRD_UND = '''') THEN PRD.PRD_UND ELSE PIT.PRD_UND END AS PRD_UND,');
      Add('       COALESCE(PIT.NCM_CODIGO,PRD.ipi_codigo) AS IPI_CODIGO,');
      Add(' PRF_QTDE');
      Add(',iop.IOP_NORDEM');
      Add(',PRF_QTDEFAT');
      Add(',PRF_QTDE_ENV_PRODUCAO');
      Add(',PRF_QTDE_REC_PRODUCAO');
      Add(',PRF_PRECO');
      Add(',PRF_CUSTO');
      Add(',PRF_PRAZO_ENTREGA');
      Add(',PRF_MARGEM_PRODUTO');
      Add(',PRF_IDESCTO1');
      Add(',PRF_IDESCTO2');
      Add(',PRF_SITUACAO');
      Add(',PRF_ITEMCOMIS');
      Add(',PRF_IPIALIQ');
      Add(',PRF_ICMSALIQ');
      Add(',PRF_PRDDESCRI');
      Add(',PRF_VAR1');
      Add(',PRF_VAR2');
      Add(',PRF_VAR3');
      Add(',PRF_VAR4');
      Add(',PRF_VAR5');
      Add(',PRF_VAR6');
      Add(',PRF_VAR7');
      Add(',PRF_VAR8');
      Add(',PRF_PRECO_BRUTO');
      Add(',PRF_OP');
      Add(',PRF_QTDE_FAT_VAR1');
      Add(',PRF_QTDE_FAT_VAR2');
      Add(',PRF_QTDE_FAT_VAR3');
      Add(',PRF_QTDE_FAT_VAR4');
      Add(',PRF_QTDE_FAT_VAR5');
      Add(',PRF_QTDE_FAT_VAR6');
      Add(',PRF_QTDE_FAT_VAR7');
      Add(',PRF_QTDE_FAT_VAR8');
      Add(',PRF_FLAG_ATUALIZA_ESTOQUE');
      Add(',PRF_ORIGEM_ITEM');
      Add(',PRF_PRODUTO_AGREGADO');
      Add(',PRF_VALOR_ICMS');
      Add(',USU_CODIGO');
      Add(',PRF_COMPL_DESCRI');
      Add(',pit.PRG_REGISTRO');
      Add(',PRF_PCP_QTDE_ATENDIDA');
      Add(',PRF_PCP_QTDE_ESTOQUE');
      Add(',PRF_ACRESCIMO');
      Add(',pit.PRDL_REGISTRO');
      Add(',PRF_B2B_PEDIDO_COMPRA');
      Add(',PRF_B2B_ITEM_PEDIDO_COMPRA');
      Add(',PRF_VALOR_ST');
      Add(',OPE_NATUREZA');
      Add(',ITT_REGISTRO');
      Add(',pit.PRDD_REGISTRO');
      Add(',pit.PRF_PRECO_ORIGINAL');
      Add(',pit.PRF_TABPRECO');
      Add(',pit.PRDCO_CODIGO_ORIGINAL');
      Add(',pit.ID_DIRETIVAS');
      Add(',pit.OPE_CODIGO');
      Add(',pit.PRD_CODIGO');
      Add(',pit.AMX_CODIGO_DESTINO');
      Add(',pit.AMX_CODIGO_ORIGEM');
      Add(',pit.USOU_VERBA');
      Add(',pit.VALOR_VERBA');
      Add(',pit.ped_codigo');
      Add(',pit.emp_codigo');
      Add(',pit.prd_refer,');
      add(' CASE    ');
      add('    WHEN (PRF_REGISTRO_VINCULADO > 0) and (PRF_PRODUTO_AGREGADO = ''S'') '+
                      ' THEN (SELECT prf_qtde FROM PED_IT01 WHERE pit.PRF_REGISTRO_VINCULADO = pit.PRF_REGISTRO ) * pit.PRF_qtde ');
      add('    ELSE PRF_qtde  ');
      add('  END PRF_QTDE_CALC ,' );
      Add('       PTI.PTI_SIGLA,');
      Add('       t4.lin_descri,');
      Add('       t5.prde_endereco,');
      Add('       PRD.PRD_EMBALA,');
      Add('       PRD.PRD_PESOKG,');
      Add('       PRD.PRD_PESOLIQ,');
      Add('       PRD.PRD_DCVAR1,');
      Add('       PRD.PRD_DCVAR2,');
      Add('       PRD.PRD_DCVAR3,');
      Add('       PRD.PRD_DCVAR4,');
      Add('       PRD.PRD_DCVAR5,');
      Add('       PRD.PRD_DCVAR6,');
      Add('       PRD.PRD_DCVAR7,');
      Add('       PRD.PRD_DCVAR8,');
      Add('       T3.PRG_INDICE,');
      Add('       pit.PRF_REGISTRO_VINCULADO, ');
      Add('       cast (pit.PRF_REGISTRO as integer) PRF_REGISTRO, ');
      Add('       PRD_PRODSERV, ');
      Add('       PRF_QTDEPEND, ');
      Add(' COALESCE((SELECT SUM(COALESCE(kas_saldo,0)) FROM KARDEX_ALMOX_SALDO KS WHERE PRD_CODIGO = pit.PRD_CODIGO AND pit.AMX_CODIGO_DESTINO = KS.AMX_CODIGO),0) ESTOQUE, ');
      Add('(SELECT ROUND(PRF_QTDE) FROM PED_IT01 it2 WHERE it2.PRF_REGISTRO = pit.PRF_REGISTRO_VINCULADO) PRF_QTDE_KIT, ');
      Add('       CAST ( (prd.prd_pesoliq * pit.prf_qtde) AS NUMERIC(15,5) ) As PesoKG, ');

      Add('    case PRF_PRAZO_DIAS WHEN NULL THEN '''' WHEN 0 THEN ''Imediato'' when 1 then ''1 dia'' else cast(PRF_PRAZO_DIAS as varchar(3)) || '' dias'' end  '+
          '|| CASE WHEN PRF_QTDEPEND > 0 THEN ''*'' ELSE '''' END PRF_PRAZO_DIAS , ' );
      Add('  (CASE WHEN PRF_PESOKG = 0 THEN PRD_PESOliq ELSE PRF_PESOKG END)  as PRF_PESOKG ');
      add('from ped_it01 pit ');
      add('     left join prd0000 prd on (prd.prd_refer = IIF(Coalesce(pit.prd_refer,'+qStr('')+')='+qStr('')+',pit.prdco_codigo_original,pit.prd_refer) '+sempresa+')');
      add('     left join prd_tipo pti on (prd.pti_codigo = pti.pti_codigo)');
      add('     left join prd_grade t3 on (t3.prg_registro = pit.prg_registro) ');
      add('     left join prd_diretiva t44 on (t44.prdd_registro = pit.prdd_registro)');
      add('     left join prd_linha t4 on (t4.lin_codigo = prd.lin_codigo)');
      add('     left join prd0000_enderecamento t5 on (t5.prde_registro = prd.prde_registro)');
      add('     LEFT JOIN ORDEMPRODUCAO op ON (op.PED_CODIGO = pit.PED_CODIGO)');
      add('     LEFT JOIN ITEM_ORDEMPRODUCAO iop ON (ioP.OPR_CODIGO = op.OPR_CODIGO AND PIT.PRD_REFER = PRD.PRD_REFER AND iop.PRf_REGISTRO = pit.PRf_REGISTRO)');
      Add(' where PIT.PED_CODIGO = '+QuotedStr(VarToStr(cxgrd1DBBandedTableView1.DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1PED_CODIGO.Index])) + ConcatSe(' and PIT.', dbInicio.ExclusivoSql('pedidos') ) );
      Add(' and iop.IOP_CODIGO = '+QuotedStr(VarToStr(cxgrd1DBBandedTableView1.DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1IOP_CODIGO.Index])) );
      Add(' AND pti.PTI_SIGLA = ''PA''');
      Add('ORDER BY  1');
    end;

    if DBInicio.IsDesenvolvimento then
      CopyToClipBoard(qPedidosItem.SQL.Text);

    CdsPedidosItem.Open;
    sPedidoTitulo := 'OP';
    CdsPedidosItem.Filtered := False;
    if dbInicio.USUARIO.EMAIL_USUARIO <> '' then
      email_de_enviado := dbInicio.USUARIO.EMAIL_USUARIO     // email da senha de usuario
    else
     if dbInicio.Empresa.EMAILVENDA <> '' then
        email_de_enviado := dbInicio.EMPRESA.EMAILVENDA
     else
        email_de_enviado := dbInicio.EMPRESA.Email;
    try
      cdsMola.DisableControls;
      cdsMola.Close;
      qMola.SQL.Clear;
      qMola.SQL.Text := 'SELECT ' +
      ' it.PRF_SEQUENCIA, pd.ped_codigo, pd.emp_codigo, it.PRDCO_CODIGO_ORIGINAL as PRD_CODORIGINAL, ' +
      ' iop.IOP_NORDEM, tm.MMO_TIPO, tm.MMO_VARIACAO, ' +
      '	CASE ' +
      '  WHEN IT.PRF_PRAZO_ENTREGA is NULL THEN CAST(pd.PED_DTSAIDA AS date) ' +
      '  ELSE  IT.PRF_PRAZO_ENTREGA ' +
      ' END AS PRF_PRAZO_ENTREGA, ' +
      ' MMO.MMO_ARQUIVO_FICHA_TECNICA, ' +
      'TM.MMO_DIAMETRO_INT_MAIOR TM_DIAMETRO_INT_MAIOR, TM.MMO_DIAMETRO_INT_MENOR TM_DIAMETRO_INT_MENOR,' +
      'MMO.MMO_DIAMETRO_INT_MAIOR, MMO.MMO_TOLERANCIA_DI_MAIOR_MAX, MMO.MMO_TOLERANCIA_DI_MAIOR_MIN, ' +
      'MMO.MMO_DIAMETRO_INT_MENOR, MMO.MMO_TOLERANCIA_DI_MENOR_MAX, MMO.MMO_TOLERANCIA_DI_MENOR_MIN, ' +
      'TM.MMO_DIAMETRO_ARAME TM_DIAMETRO_ARAME, TM.MMO_DIAMETRO_INTERNO TM_DIAMETRO_INTERNO, ' +
      'TM.MMO_DIAMETRO_MEDIO TM_DIAMETRO_MEDIO, TM.MMO_DIAMETRO_EXTERNO TM_DIAMETRO_EXTERNO, ' +
      'TM.MMO_DIAMETRO_EXTERNO_MEIO TM_DIAMETRO_EXTERNO_MEIO, TM.MMO_DIAMETRO_EXT_MAIOR TM_DIAMETRO_EXT_MAIOR, ' +
      'TM.MMO_DIAMETRO_EXT_MENOR TM_DIAMETRO_EXT_MENOR, TM.MMO_PASSO TM_PASSO, ' +
      'TM.MMO_COM_LIVRE TM_COM_LIVRE, TM.MMO_COMP_CORPO TM_COMP_CORPO, ' +
      'TM.MMO_ALT_GANCHO TM_ALT_GANCHO, TM.MMO_ABERT_GANCHO TM_ABERT_GANCHO, ' +
      'TM.MMO_COMP_GANCHO TM_COMP_GANCHO, TM.MMO_DESENVOLVIMENTO TM_DESENVOLVIMENTO, ' +
      'TM.MMO_ESPIRAIS_UTEIS TM_ESPIRAIS_UTEIS, TM.MMO_ESPIRAL_TOTAL TM_ESPIRAL_TOTAL, ' +
      'TM.MMO_SENTIDO TM_SENTIDO, TM.MMO_PESO TM_PESO, TM.MMO_MAQUINA TM_MAQUINA, ' +
      'TM.MMO_MANDRIL TM_MANDRIL, TM.MMO_CACHIMBO TM_CACHIMBO, TM.MMO_COPIADOR TM_COPIADOR, ' +
      'TM.MMO_GANCHO TM_GANCHO, TM.MMO_DISCO TM_DISCO, TM.MMO_OUTROS TM_OUTROS, ' +
      'TM.MMO_TIPOEMBALAGEM TM_TIPOEMBALAGEM, TM.MMO_LOCALIZACAO TM_LOCALIZACAO, ' +
      'TM.MMO_SETOR TM_SETOR, TM.MMO_VAO TM_VAO, ' +
      'MMO.MMO_CODIGO, MMO.PRD_CODIGO, MMO.ART_CODIGO, MMO.ARA_CODIGO, MMO.CMO_CODIGO, MMO.GAN_CODIGO, '+
      'MMO.ACO_CODIGO, MMO.ASU_CODIGO, MMO.TSU_CODIGO, MMO.MMO_TEMPO_PRODUCAO, MMO.MMO_PESO_ESPECIFICO, MMO.MMO_CISALHAMENTO, '+
      'MMO.MMO_RES_TRACAO, MMO.MMO_TRATAMENTO_TERMICO, MMO.MMO_TEMPO_TEMPERA, MMO.MMO_TEMPERATURA_TEMPERA, '+
      'MMO.MMO_TEMPO_REVENIMENTO, MMO.MMO_TEMPERATURA_REVENIMENTO, MMO.MMO_DUREZA_MINIMA, MMO.MMO_DUREZA_MAXIMA, '+
      'MMO.MMO_TRATAMENTO_SUPERFICIAL, MMO.MMO_DIAMETRO_ARAME, MMO.MMO_TOLERANCIA_DIA_MIN, MMO.MMO_TOLERANCIA_DIA_MAX, '+
      'MMO.MMO_DIAMETRO_INTERNO, MMO.MMO_TOLERANCIA_DI_MIN, MMO.MMO_TOLERANCIA_DI_MAX, MMO.MMO_DIAMETRO_MEDIO, '+
      'MMO.MMO_TOLERANCIA_DM_MIN, MMO.MMO_TOLERANCIA_DM_MAX, MMO.MMO_DIAMETRO_EXTERNO, MMO.MMO_TOLERANCIA_DE_MIN, '+
      'MMO.MMO_TOLERANCIA_DE_MAX, MMO.MMO_DIAMETRO_EXTERNO_MEIO, MMO.MMO_TOLERANCIA_DEM_MIN, MMO.MMO_TOLERANCIA_DEM_MAX, '+
      'MMO.MMO_VAO, MMO.MMO_TOLERANCIA_VAO_MIN, MMO.MMO_TOLERANCIA_VAO_MAX, MMO.MMO_PASSO, MMO.MMO_TOLERANCIA_PASSO_MIN, '+
      'MMO.MMO_TOLERANCIA_PASSO_MAX, MMO.MMO_COM_LIVRE, MMO.MMO_TOLERANCIA_LIVRE_MIN, MMO.MMO_TOLERANCIA_LIVRE_MAX, MMO.MMO_COM_SOLIDO, '+
      'MMO.MMO_TOLERANCIA_SOLIDO_MIN, MMO.MMO_TOLERANCIA_SOLIDO_MAX, MMO.MMO_ESPIRAIS_UTEIS, MMO.MMO_TOLERANCIA_ESPUTEIS_MIN, '+
      'MMO.MMO_TOLERANCIA_ESPUTEIS_MAX, MMO.MMO_ESPIRAL_TOTAL, MMO.MMO_TOLERANCIA_ESPT_MIN, MMO.MMO_TOLERANCIA_ESPT_MAX, '+
      'MMO.MMO_DESENVOLVIMENTO, MMO.MMO_TOLERANCIA_DES_MIN, MMO.MMO_TOLERANCIA_DES_MAX, MMO.MMO_RETIFICADO, MMO.MMO_PARALIELISMO, '+
      'MMO.MMO_PERPENDICULARIMO, MMO.MMO_SENTIDO, MMO.MMO_PESO, MMO.MMO_OBSERVACAO, MMO.MMO_CONSTANTE_ESPE, MMO.MMO_TOLERANCIA_CONST_MIN, '+
      'MMO.MMO_TOLERANCIA_CONST_MAX, MMO.MMO_CONSTANTE_CALCULADA, MMO.MMO_CONST_CALC_MIN, MMO.MMO_CONST_CALC_MAX, MMO.MMO_ALTURAL1, '+
      'MMO.MMO_TOLERANCIA_ALT1_MIN, MMO.MMO_TOLERANCIA_ALT1_MAX, MMO.MMO_ALTURAL2, MMO.MMO_TOLERANCIA_ALT2_MIN, '+
      'MMO.MMO_TOLERANCIA_ALT2_MAX, MMO.MMO_ALTURAL3, MMO.MMO_TOLERANCIA_ALT3_MIN, MMO.MMO_TOLERANCIA_ALT3_MAX, '+
      'MMO.MMO_ALTURAL4, MMO.MMO_TOLERANCIA_ALT4_MIN, MMO.MMO_TOLERANCIA_ALT4_MAX, MMO.MMO_CURSOS1, MMO.MMO_TOLERANCIA_CURS1_MIN, '+
      'MMO.MMO_TOLERANCIA_CURS1_MAX, MMO.MMO_CURSOS2, MMO.MMO_TOLERANCIA_CURS2_MIN, MMO.MMO_TOLERANCIA_CURS2_MAX, MMO.MMO_CURSOS3, '+
      'MMO.MMO_TOLERANCIA_CURS3_MIN, MMO.MMO_TOLERANCIA_CURS3_MAX, MMO.MMO_CURSOS4, MMO.MMO_TOLERANCIA_CURS4_MIN, '+
      'MMO.MMO_TOLERANCIA_CURS4_MAX, MMO.MMO_CARGAP1, MMO.MMO_TOLERANCIA_CARGA1_MIN, MMO.MMO_TOLERANCIA_CARGA1_MAX, MMO.MMO_CARGAP2, '+
      'MMO.MMO_TOLERANCIA_CARGA2_MIN, MMO.MMO_TOLERANCIA_CARGA2_MAX, MMO.MMO_CARGAP3, MMO.MMO_TOLERANCIA_CARGA3_MIN, '+
      'MMO.MMO_TOLERANCIA_CARGA3_MAX, MMO.MMO_CARGAP4, MMO.MMO_TOLERANCIA_CARGA4_MIN, MMO.MMO_TOLERANCIA_CARGA4_MAX, '+
      'MMO.MMO_TENSAO1, MMO.MMO_TOLERANCIA_TENSAO1_MIN, MMO.MMO_TOLERANCIA_TENSAO1_MAX, MMO.MMO_TENSAO2, MMO.MMO_TOLERANCIA_TENSAO2_MIN, '+
      'MMO.MMO_TOLERANCIA_TENSAO2_MAX, MMO.MMO_TENSAO3, MMO.MMO_TOLERANCIA_TENSAO3_MIN, MMO.MMO_TOLERANCIA_TENSAO3_MAX, MMO.MMO_TENSAO4, '+
      'MMO.MMO_TOLERANCIA_TENSAO4_MIN, MMO.MMO_TOLERANCIA_TENSAO4_MAX, MMO.MMO_CARGA, MMO.MMO_TOLERANCIA_CARGA_MIN, '+
      'MMO.MMO_TOLERANCIA_CARGA_MAX, MMO.MMO_TENSAO, MMO.MMO_TOLERANCIA_TEN_MIN, MMO.MMO_TOLERANCIA_TEN_MAX, MMO.MMO_MAQUINA, '+
      'MMO.MMO_MANDRIL, MMO.MMO_CACHIMBO, MMO.MMO_COPIADOR, MMO.MMO_GANCHO, MMO.MMO_DISCO, MMO.MMO_OUTROS, MMO.MMO_LOCALIZACAO, '+
      'MMO.MMO_SETOR, MMO.MMO_OBSGERAIS, MMO.MMO_TIPOEMBALAGEM, MMO.MMO_COMP_CORPO, MMO.MMO_TOLERANCIA_COMP_CORPO_MAX, '+
      'MMO.MMO_TOLERANCIA_COMP_CORPO_MIN, MMO.MMO_ALT_GANCHO, MMO.MMO_TOLERANCIA_ALT_GANCHO_MAX, MMO.MMO_TOLERANCIA_ALT_GANCHO_MIN, '+
      'MMO.MMO_ABERT_GANCHO, MMO.MMO_TOLERANCIA_ABERT_GANCHO_MAX, MMO.MMO_TOLERANCIA_ABERT_GANCHO_MIN, MMO.MMO_COMP_GANCHO, '+
      'MMO.MMO_DIAMETRO_EXT_MAIOR, MMO.MMO_DIAMETRO_EXT_MENOR, MMO.MMO_PERDA, MMO.MMO_TOLERANCIA_DE_MAIOR_MIN, MMO.MMO_TOLERANCIA_DE_MAIOR_MAX, MMO.MMO_TOLERANCIA_DE_MENOR_MAX, ' +
      'MMO.MMO_TOLERANCIA_COMP_GANCHO_MAX, MMO.MMO_TOLERANCIA_COMP_GANCHO_MIN, ARA.NOME AS ARA_NOME, ART.ART_NOME, CMO_NOME, '+
      'MMO.MMO_TOLERANCIA_DE_MENOR_MIN, MMO.MMO_EXTREMIDADE_MOLA_MATERIA,' +
      'TSU.TSU_NOME, ASU.ASU_NOME, ACO.ACO_NOME, it.PRF_PRDDESCRI as PRD_DESCRI, PRD.PRD_REFER, IT.PRF_QTDE, GA.GAN_NOME, TP.TEM_DESCRICAO '+
      'FROM MOLA_MATERIA MMO LEFT JOIN ARAME ARA ON (ARA.ARA_CODIGO = MMO.ARA_CODIGO) '+
      'LEFT JOIN ARTEFATO ART ON(ART.ART_CODIGO = MMO.ART_CODIGO) LEFT JOIN CLASSIFICACAO_MOLA CMO ON(CMO.CMO_CODIGO = MMO.CMO_CODIGO) '+
      'LEFT JOIN TRATAMENTO_SUPERFICIAL TSU ON(TSU.TSU_CODIGO = MMO.TSU_CODIGO) '+
      'LEFT JOIN ACABAMENTO_SUPERFICIAL ASU ON(ASU.ASU_CODIGO = MMO.ASU_CODIGO) '+
      'LEFT JOIN ACABAMENTO_CORES ACO ON(ACO.ACO_CODIGO = MMO.ACO_CODIGO) '+
      'LEFT JOIN GANCHO GA ON(GA.GAN_CODIGO = MMO.GAN_CODIGO) ' +
      'JOIN PRD0000 PRD ON (PRD.PRD_CODIGO = MMO.PRD_CODIGO) ' +
      'JOIN PED_IT01 IT ON (IT.PRD_REFER = PRD.PRD_REFER AND IT.PED_CODIGO = '+ QuotedStr(VarToStr(cxgrd1DBBandedTableView1.DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1PED_CODIGO.Index])) +')'+
      ' JOIN PED0000 pd ON (pd.ped_codigo = IT.PED_CODIGO) ' +
      'JOIN TIPO_MOLA TM ON(TM.PTI_CODIGO = PRD.PTI_CODIGO) ' +
      '     LEFT JOIN ORDEMPRODUCAO op ON (op.PED_CODIGO = it.PED_CODIGO)' +
      '     LEFT JOIN ITEM_ORDEMPRODUCAO iop ON (ioP.OPR_CODIGO = op.OPR_CODIGO AND IT.PRD_REFER = PRD.PRD_REFER AND iop.PRf_REGISTRO = it.PRf_REGISTRO)' +
      'LEFT JOIN TIPO_EMBALAGEM TP ON (TP.TEM_CODIGO = MMO.TEM_CODIGO) ' +
      'WHERE MMO.PRD_CODIGO IN (SELECT prd_codigo FROM PRD0000 PRD JOIN prd_tipo TI ON(PRD.PTI_CODIGO = TI.PTI_CODIGO) '+
      'WHERE TI.PTI_SIGLA = ''PA'' ' +
      ' AND iop.IOP_NORDEM  = '+ VarToStr(cxgrd1DBBandedTableView1.DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1IOP_NORDEM.Index])+
      ' AND PRD.PRD_REFER IN (SELECT PRD_REFER FROM ped_it01 WHERE PED_CODIGO = '+ QuotedStr(VarToStr(cxgrd1DBBandedTableView1.DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1PED_CODIGO.Index])) +'))' +
      ' ORDER BY it.prd_refer';
    finally
      if DBInicio.IsDesenvolvimento then
        CopyToClipBoard(qMola.SQL.Text);
      cdsMola.Open;

      cdsMola.EnableControls;
    end;
    frxOrdemProducaoModelos.ShowReport();

  end
  else if DBInicio.Empresa.PMT_REL_ORDEMPRODUCAO = '11' then
  begin
    qOP11Cabecalho.Close;
    qOP11Cabecalho.SQL.Clear;
    qOP11Cabecalho.SQL.Text := 'SELECT  iop.IOP_CODIGO, iop.IOP_NORDEM, pr.PRD_REFER, ' +
        ' CASE WHEN it.PRF_PRDDESCRI IS NULL THEN pr.PRD_DESCRI ELSE it.PRF_PRDDESCRI END as PRD_DESCRI, ' +
        ' iop.IOP_QUANTIDADE, ' +
        ' pe.PED_DTENTRADA, op.OPR_DTENTREGA, pe.PED_CODIGO, op.OPR_EMISSAO, pr.PRD_UND,  ' +
        ' cl.CLI_CODIGO, cl.CLI_RAZAO, cl.CLI_ENDERE, cl.CLI_BAIRRO, pe.PED_NUMERO_PED_CLIENTE, pe.PED_DTSAIDA, ' +
        ' iop.IOP_DATA_AJUSTADA, pe.PED_CONTATO_CLIENTE, pc.PCX_DESCRI, ft.FTC_ETAPAS, pe.PED_OBS_PRODUCAO,  ' +
        ' CASE WHEN iop.IOP_OBSERVACAO_PED IS NULL THEN pe.PED_OBS_PRODUCAO ELSE iop.IOP_OBSERVACAO_PED END AS IOP_OBSERVACAO_PED, ' + 
        ' CASE WHEN iop.IOP_OBSERVACAO_PRD IS NULL THEN ft.FTC_ETAPAS ELSE iop.IOP_OBSERVACAO_PRD END AS IOP_OBSERVACAO_PRD,      ' +
        ' it.PRF_QTDE ' +
        ' FROM ORDEMPRODUCAO op '+
        ' JOIN ITEM_ORDEMPRODUCAO iop ON (iop.OPR_CODIGO = op.OPR_CODIGO) ' +
        ' JOIN PRD0000 pr ON (pr.PRD_CODIGO = iop.PRD_CODIGO) ' +
        ' JOIN CLI0000 cl ON (cl.CLI_CODIGO = op.CLI_CODIGO) ' +
        ' LEFT JOIN PED0000 pe ON (pe.PED_CODIGO = op.PED_CODIGO) AND (pe.EMP_CODIGO = op.EMP_CODIGO) ' +
        ' LEFT JOIN PED_IT01 it ON (it.PED_CODIGO = pe.PED_CODIGO) AND (it.EMP_CODIGO = pe.EMP_CODIGO)  AND (it.PRF_REGISTRO = iop.PRF_REGISTRO) ' +
        ' LEFT JOIN FTC0000 ft ON (ft.PRD_REFER = pr.PRD_REFER) ' +
        ' LEFT JOIN PCX0000 pc ON (pc.PCX_CODIGO = pe.PCX_CODIGO) ' +
        ' WHERE iop.IOP_NORDEM = ' + QuotedStr(VarToStr(cxgrd1DBBandedTableView1.DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1IOP_NORDEM.Index])) ;
    qOP11Cabecalho.Open;

    if DBInicio.IsDesenvolvimento then
      CopyToClipBoard(qOP11Cabecalho.SQL.Text);

    if qOP11Cabecalho.IsEmpty then
      raise Exception.Create('Ordem de Produção não Iniciada.');


    qOP11Corpo.Close;
    qOP11Corpo.SQL.Clear;
    qOP11Corpo.SQL.Text := 'SELECT DISTINCT ' +
      ' pr.PRD_REFER, pr.PRD_DESCRI, pr.prd_und, mp.prd_codigo, mp.MP_UCONSUMO, MP_CONSUMOTOTAL, ' +
      ' MP.iop_codigo ' +
      '  FROM MATERIAPRIMA_ORDEMPRODUCAO mp ' +
      '   JOIN PRD0000 pr ON (pr.PRD_CODIGO = mp.PRD_CODIGO) ' +
      '   JOIN ITEM_ORDEMPRODUCAO iop ON (iop.OPR_CODIGO = MP.OPR_CODIGO) ' +
      ' WHERE MP.MP_CONSUMOTOTAL > 0 ' +
      '   AND MP.PED_CODIGO = ' + QuotedStr(qOP11Cabecalho.FieldByName('PED_CODIGO').AsString) +
      '   AND MP.IOP_CODIGO = ' + QuotedStr(qOP11Cabecalho.FieldByName('IOP_CODIGO').AsString) ;
    qOP11Corpo.Open;

    qEngenhariaOP11.Close;
    qEngenhariaOP11.SQL.Clear;
    qEngenhariaOP11.SQL.Text :=
      'SELECT FB.SEQUENCIA, OP.OPE_DESCRICAO, fb.FAB_OBSERVACAO ' +
      '  FROM FABRICACAO FB  ' +
      '   INNER JOIN OPERACOES OP  ON (OP.OPE_CODIGO = FB.OPE_CODIGO)  ' +
      '  WHERE FB.IOP_CODIGO = '  + QuotedStr(qOP11Cabecalho.FieldByName('IOP_CODIGO').AsString)  +
      '  ORDER BY FB.SEQUENCIA' ;
    qEngenhariaOP11.Open;

    frxOP11.ShowReport();

  end
  else if DBInicio.Empresa.PMT_REL_ORDEMPRODUCAO = '12' then
  begin


    qOP11Cabecalho.Close;
    qOP11Cabecalho.SQL.Clear;
    qOP11Cabecalho.SQL.Text := 'SELECT  r.REP_NOME, iop.IOP_CODIGO, iop.IOP_NORDEM, pr.PRD_REFER, ' +
        ' it.PRF_PRDDESCRI as PRD_DESCRI, iop.IOP_QUANTIDADE, ' +
        ' pe.PED_DTENTRADA, op.OPR_DTENTREGA, pe.PED_CODIGO, op.OPR_EMISSAO, pu.PRD_UNIDESCRI as PRD_UND,  ' +
        ' cl.CLI_CODIGO, cl.CLI_RAZAO, cl.CLI_ENDERE, cl.CLI_BAIRRO, pe.PED_NUMERO_PED_CLIENTE, pe.PED_DTSAIDA, ' +
        ' DATEADD(day, -5, iop.IOP_DATA_AJUSTADA) AS IOP_DATA_AJUSTADA, ' +
        ' pe.PED_CONTATO_CLIENTE, pc.PCX_DESCRI, ft.FTC_ETAPAS, pe.PED_OBS_PRODUCAO,  ' +
        ' CASE WHEN iop.IOP_OBSERVACAO_PED IS NULL THEN pe.PED_OBS_PRODUCAO ELSE iop.IOP_OBSERVACAO_PED END AS IOP_OBSERVACAO_PED, ' +
        ' CASE WHEN iop.IOP_OBSERVACAO_PRD IS NULL THEN ft.FTC_ETAPAS ELSE iop.IOP_OBSERVACAO_PRD END AS IOP_OBSERVACAO_PRD,      ' +
        ' it.PRF_QTDE ' +
        ' FROM ORDEMPRODUCAO op '+
        ' JOIN ITEM_ORDEMPRODUCAO iop ON (iop.OPR_CODIGO = op.OPR_CODIGO) ' +
        ' JOIN PRD0000 pr ON (pr.PRD_CODIGO = iop.PRD_CODIGO) ' +
        ' JOIN CLI0000 cl ON (cl.CLI_CODIGO = op.CLI_CODIGO) ' +
        ' JOIN PED0000 pe ON (pe.PED_CODIGO = op.PED_CODIGO) AND (pe.EMP_CODIGO = op.EMP_CODIGO) ' +
        ' JOIN PED_IT01 it ON (it.PED_CODIGO = pe.PED_CODIGO) AND (it.EMP_CODIGO = pe.EMP_CODIGO)  ' +
        ' LEFT JOIN REP0000 r ON (r.REP_CODIGO = pe.REP_CODIGO ) ' +
        ' LEFT JOIN FTC0000 ft ON (ft.PRD_REFER = pr.PRD_REFER) ' +
        ' LEFT JOIN PCX0000 pc ON (pc.PCX_CODIGO = pe.PCX_CODIGO) ' +
        ' LEFT JOIN PRD_UNIDADE pu ON (pu.PRD_UNISIGLA = pr.PRD_UND) ' +
        ' WHERE iop.IOP_NORDEM = ' + QuotedStr(VarToStr(cxgrd1DBBandedTableView1.DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1IOP_NORDEM.Index])) +
        ' AND it.PRD_REFER = ' + QuotedStr(VarToStr(cxgrd1DBBandedTableView1.DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1PRD_REFER.Index]));
    qOP11Cabecalho.Open;
    if DBInicio.IsDesenvolvimento then
      CopyToClipBoard(qOP11Cabecalho.SQL.Text);

    if qOP11Cabecalho.IsEmpty then
      raise Exception.Create('Ordem de Produção não Iniciada.');


    qOP11Corpo.Close;
    qOP11Corpo.SQL.Clear;
    qOP11Corpo.SQL.Text := 'SELECT DISTINCT fi.PRD_REFER_ITENS, ' +
       ' pr.PRD_REFER, pr.PRD_DESCRI, pr.prd_und, mp.prd_codigo, mp.MP_UCONSUMO, MP_CONSUMOTOTAL, ' +
       ' mp.FTI_TRATAMENTO_TERMICO     ,' +
       ' mp.FTI_TRATAMENTO_SUPERFICIAL ,' +
       ' mp.FTI_TOLERANCIA             ,' +
       ' mp.FTI_GRAVACAO               ,' +
       ' mp.FTI_CORTE_QUANTIDADE       ,' +
       ' mp.FTI_CORTE_COMPRIMENTO      ,' +
       ' mp.FTI_CORTE_QTDE_METROS      ,' +
       ' mp.FTI_CORTE_OBSERVACAO       ,' +
       ' mp.FTI_USINAGEM_OBSERVACAO    ,' +
       ' mp.FTI_PRENSA_TIPO_CABECA     ,' +
       ' mp.FTI_PRENSA_CHAVE           ,' +
       ' mp.FTI_PRENSA_ALT_CABECA      ,' +
       ' mp.FTI_PRENSA_MASSA           ,' +
       ' mp.FTI_PRENSA_CAIXA_N         ,' +
       ' mp.FTI_PRENSA_MATRIZ          ,' +
       ' mp.FTI_PRENSA_PINO            ,' +
       ' mp.FTI_PRENSA_BUCHA           ,' +
       ' mp.FTI_PRENSA_CONTRA_BUCHA    ,' +
       ' mp.FTI_PRENSA_OBSERVACAO      ,' +
       ' mp.FTI_LAMINACAO_CAIXA_N      ,' +
       ' mp.FTI_LAMINACAO_TIPO_ROLO    ,' +
       ' mp.FTI_LAMINACAO_TIPO_ROSCA   ,' +
       ' mp.FTI_LAMINACAO_ALT_USINAGEM ,' +
       ' mp.FTI_LAMINACAO_COMP_ROSCA   ,' +
       ' mp.FTI_LAMINACAO_OBSERVACAO   ,' +
       ' MP.iop_codigo ' +
       '  FROM MATERIAPRIMA_ORDEMPRODUCAO mp ' +
       '   JOIN PRD0000 pr ON (pr.PRD_CODIGO = mp.PRD_CODIGO) ' +
       '   JOIN ITEM_ORDEMPRODUCAO iop ON (iop.OPR_CODIGO = MP.OPR_CODIGO) ' +
       '   LEFT JOIN FTC_IT01 fi ON fi.PRD_REFER_ITENS = pr.PRD_REFER AND fi.PRD_REFER =  '  + QuotedStr(cdsbuscaPRD_REFER.AsString) +
       ' WHERE MP.MP_CONSUMOTOTAL > 0 ' +
       '   AND MP.PED_CODIGO = ' + QuotedStr(qOP11Cabecalho.FieldByName('PED_CODIGO').AsString) +
       '   AND MP.IOP_CODIGO = ' + QuotedStr(qOP11Cabecalho.FieldByName('IOP_CODIGO').AsString) ;

    if DBInicio.IsDesenvolvimento then
      CopyToClipBoard(qOP11Corpo.SQL.Text);

    qOP11Corpo.Open;

    frxOP12.ShowReport();

  end
  ;


end;

procedure TfrmGerenciamentoPCP.Modelo4IndstriaQumicacomdensidade1Click(Sender: TObject);
begin
  inherited;
  frxOP4.ShowReport();
end;

procedure TfrmGerenciamentoPCP.OrdemdeproduoModelo101Click(Sender: TObject);
var
  retorno: Integer;
begin
  inherited;

end;

procedure TfrmGerenciamentoPCP.pgc1Change(Sender: TObject);
var sql : string;
begin
  inherited;
  if pgc1.ActivePage = tbHistorico then
  begin
    if NOT assigned (frmGerenciamentoPCP) then exit;
    if not frmGerenciamentoPCP.visible then exit;
    if cdsbusca.isempty then
      exit;

    cdsHistorico.Close;
    cdsHistorico.sql.Clear;
    sql := 'SELECT dh.hop_codigo, dh.hop_datamvto, hop_descricao ,      ' +
           '    dh.USU_CODIGO, dh.IOP_CODIGO, dh.MP_CODIGO,             '+
           '    u.USU_NOME , PR.PRD_REFER                               '+
           ' FROM HISTORICO_ORDEMPRODUCAO  dh                           '+
           '  JOIN USUARIO u ON (u.USU_CODIGO = dh.USU_CODIGO)          '+
           ' LEFT JOIN MATERIAPRIMA_ORDEMPRODUCAO mp ON (mp.MP_CODIGO = dh.MP_CODIGO) '+
           ' LEFT JOIN PRD0000 PR ON (PR.PRD_CODIGO = MP.PRD_CODIGO) '+
           ' WHERE dh.IOP_CODIGO = ' + cdsbusca.FieldByName('iop_codigo').AsString +
           ' order by dh.hop_datamvto desc ';
    cdsHistorico.Open(sql);


  end;
end;

procedure TfrmGerenciamentoPCP.spEstornarInicioClick(Sender: TObject);
var dep_codigo : integer;
begin
  inherited;
  if cdsBuscaIOP_STATUS.AsString = 'F' then
    GeraException('OP já finalizada');

  if cdsBuscaIOP_QTDE_CONCLUIDA.AsFloat>0 then
    GeraException('Já concluida alguma produção');

  if cdsBuscaIOP_STATUS.AsString ='C' then
    GeraException('OP já cancelada');

  if cdsBuscaIOP_STATUS.AsString = 'L' then
    GeraException('OP já pendente');

  if (MessageDlg('Deseja realmente voltar para pendente a '+ cdsBuscaIOP_NORDEM.AsString+ '?',
         mtConfirmation, [mbYes, mbNo], 0) in [mrNone, mrNo]) then
    exit;
   try
      TSpeedButton(sender).Enabled := False;
        //INICIO DA PODUÇÃO
        ExecSql('update ITEM_ORDEMPRODUCAO  ' +
                ' set iop_data_inicio = NULL' +
                ' , iop_status = '+ QuotedStr('L') +
                ' WHERE IOP_CODIGO = '+ cdsBuscaIOP_CODIGO.AsString);

        dep_codigo :=  BuscaUmDadoSqlAsInteger (' SELECT dep_codigo FROM DEMANDA_PRODUCAO ' +
                                                  '  WHERE iop_codigo = '+  cdsBuscaIOP_CODIGO.AsString);

        //ATUALIZA A DEMANDA PARA INDICAR INICIADO A PRODUÇÃO
        tcr.AtualizarStatusDemanda(dep_codigo,cdsBuscaIOP_CODIGO.AsInteger, 'E');
        TCR.DemandaHistorico(dep_codigo,'Parado o inicio da produção',
                              cdsBuscaPED_CODIGO.AsString,
                              cdsBuscaPRD_CODIGO.AsString);
        TCR.HistoricoProducao(cdsBuscaIOP_CODIGO.AsInteger,0,'Parado o inicio da produção');

        //inicio da produção e consumo de insumo quando inicia
        if DBInicio.Empresa.PMT_COMSUMIRINSUMO = 'I' then
        begin
          // estorno porque foi consumido no inicio
           tcr.EstornarEstoqueInsumo(cdsBuscaIOP_CODIGO.AsInteger, cdsBuscaIOP_NORDEM.AsString);

           cdsMateriaPrima.close;
           cdsMateriaPrima.Open;

        end;

//        if not (cdsbusca.State in dsEditModes) then
//           cdsBusca.Edit;
//        cdsBuscaIOP_DATA_INICIO.Clear;
//        cdsBuscaIOP_STATUS.AsString := 'I';
//        cdsBusca.Post;
   finally
     btnPesquisa.Click;
     TSpeedButton(Sender).Enabled := True;

   end;
end;

procedure TfrmGerenciamentoPCP.Substituirinsumo1Click(Sender: TObject);
var prd_codigo : string;
    consumindo, consumoUnitario : double;
    ADetailDataController: TcxGridDBDataController;
    ARelationIndex : integer;
    consumoTotal, empenhado : double;
    pedido, nordem ,prd_refer1, prd_refer2 : string;
    iop_codigo, mp_codigo, mp_cod_subs, opr_codigo : integer;
begin
  inherited;
  if cdsMateriaPrima.IsEmpty then
    exit;
 with cxgrd1DBBandedTableView1 do
 begin
  If DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1IOP_STATUS.Index] = 'F' then
    raise Exception.Create('Produção já concluida');
    // como estou usando um query virtual
    ARelationIndex := TcxGridDBDataController(DataController).GetDetailActiveRelationIndex(DataController.FocusedRecordIndex);
    ADetailDataController := TcxGridDataController(DataController).GetDetailDataController(DataController.FocusedRecordIndex, ARelationIndex) as TcxGridDBDataController;
    //já subsititui tudo , não pode mais substituir
    if VarIsNull(ADetailDataController.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1MP_CONSUMOTOTAL.Index]) or
      (ADetailDataController.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1MP_CONSUMOTOTAL.Index] = 0 ) then
       GeraException('Não tem o quê substituir');;
    if not VarIsNull(ADetailDataController.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1MP_CONSUMOTOTAL.Index]) then
      consumoTotal := ADetailDataController.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1MP_CONSUMOTOTAL.Index];
    if not VarIsNull(ADetailDataController.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1MP_EMPENHADO.Index]) then
       empenhado := ADetailDataController.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1MP_EMPENHADO.Index];

    if consumoTotal = empenhado then
    raise Exception.Create('Já foi tudo empenhado. Não pode haver substituição');

    if not Assigned(frmSelecaoProduto) then
      frmSelecaoProduto := TfrmSelecaoProduto.Create(Application);
    try


      frmSelecaoProduto.ConsumoTotal := consumoTotal - empenhado;
      frmSelecaoProduto.formName := 'PCP';
      frmSelecaoProduto.Caption := 'Substituindo o produto '+
                                 ADetailDataController.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1PRD_REFER.Index] + '-'+
                                 ADetailDataController.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1PRD_DESCRI.Index];

      frmSelecaoProduto.Cod_Prod_original :=ADetailDataController.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1PRD_CODIGO.Index];
      if frmSelecaoProduto.ShowModal = mrOk then
      begin
        prd_codigo :=  frmSelecaoProduto.CampoIDRetorno; //  frmSelecaoProduto.cod_prod  ;
        prd_refer2 :=  frmSelecaoProduto.IDRetorno; // frmSelecaoProduto.Cod_refer;
        consumindo := frmSelecaoProduto.ConsumoTotal;
        consumoUnitario := frmSelecaoProduto.ConsumoUnitario;
        pedido :=  Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1PED_CODIGO.Index];
        iop_codigo := Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1IOP_CODIGO.Index];
        opr_codigo := Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1OPR_CODIGO.Index];
        mp_codigo := ADetailDataController.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1MP_CODIGO.Index];
        nordem:=  Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1IOP_NORDEM.Index];
        prd_refer1 :=  ADetailDataController.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1PRD_REFER.Index];
        //adicionando o substituto
        mp_cod_subs := tcr.AdicionandoMP(self, pedido,
                          prd_codigo,
                          nordem,
                          iop_codigo,
                          opr_codigo,
                          consumoUnitario,
                          0,
                          consumindo,
                          mp_codigo,0 );
        tcr.HistoricoProducao(iop_codigo,mp_cod_subs,'Substituindo '+FormatFloat('###,###,##.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED),consumindo) +  ' para '+prd_refer2);
        tcr.SubstituirMP(mp_codigo, consumindo, consumoUnitario);
        tcr.HistoricoProducao(iop_codigo,mp_codigo,prd_refer2+ ' substituto de '+ prd_refer1+ ' em '+ FormatFloat('###,###,##.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED),consumindo) );
        cdsMateriaPrima.close;
        cdsMateriaPrima.Open;
        if DBInicio.Empresa.bUSP_CUSTOPRODUCAO then
        begin
          cdsbusca.close;
          cdsbusca.open;
        end;

      end;
    finally
      FreeAndNil(frmSelecaoProduto);

    end;
 end;
end;


procedure TfrmGerenciamentoPCP.InsereRequisicaoDeMaterial;
var
  ADetailDataController: TcxGridDBDataController;
  ViewInfo : TcxGridTableViewInfo;
  ARelationIndex, j, top, count : integer;
  pedCodigo, prdCodigo, prdDescri, emiCodigo, opeCodigo, nOrdem,
  remCodigo, empCodigo, amxCodigo, rmoCodigo,
  remData, remRequisitante, setCodigo, remObservacao, remStatus, rmaCodigo : string;
  rmiCodigo, prdRefer, rmiQuantidade: string;
  continua: Boolean;
begin
  ARelationIndex := TcxGridDBDataController(cxgrd1DBBandedTableView1.DataController).GetDetailActiveRelationIndex(cxgrd1DBBandedTableView1.DataController.FocusedRecordIndex);
  ADetailDataController := TcxGridDataController(cxgrd1DBBandedTableView1.DataController).GetDetailDataController(cxgrd1DBBandedTableView1.DataController.FocusedRecordIndex, ARelationIndex) as TcxGridDBDataController;
  ViewInfo := TcxGridTableViewInfo(ADetailDataController.Controller.ViewInfo);
  top := ADetailDataController.Controller.TopRecordIndex;
  count := ViewInfo.RecordsViewInfo.VisibleCount;
  continua := False;
  for j := top to count -1 do // ADetailDataController.Controller.SelectedRecordCount -1 do
  begin
    prdRefer := QuotedStr(ADetailDataController.Values[j, cxgrd1DBTableView1PRD_REFER.Index]);
    if BuscaUmDadoSqlAsString(
      ' SELECT pti_sigla FROM PRD_TIPO pt ' +
      '  JOIN PRD0000 p ON p.PTI_CODIGO = pt.PTI_CODIGO ' +
      ' WHERE p.PRD_REFER = ' + prdRefer) = 'MP'
    then continua := True;
  end;
  if not continua then
  begin
    MessageDlg('Não existem matérias primas para lançar na Requisição de Materiais', mtInformation, [mbOK], 0);
    Exit;
  end;



  pedCodigo := QuotedStr(cxgrd1DBBandedTableView1.DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1PED_CODIGO.Index]);
  prdCodigo := QuotedStr(cxgrd1DBBandedTableView1.DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1PRD_CODIGO.Index]);
  prdDescri := cxgrd1DBBandedTableView1.DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1PRD_DESCRI.Index];
  nOrdem := cxgrd1DBBandedTableView1.DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1IOP_NORDEM.Index];
  emiCodigo := BuscaUmDadoSqlAsString('SELECT EMI_CODIGO FROM PED0000 WHERE PED_CODIGO =  ' + pedCodigo);
  opeCodigo := BuscaUmDadoSqlAsString('SELECT OPE_CODIGO FROM ENGENHARIA_PROCESSO WHERE PRD_CODIGO =  ' + prdCodigo);
  rmoCodigo := '2'; // Origem: Produção

  remCodigo := IntToStr(DBInicio.GetNextSequence('GEN_REQUISICAO_MATERIAL'));
  empCodigo := QuotedStr(DBInicio.Emp_Codigo);
  amxCodigo := QuotedStr(BuscaUmDadoSqlAsString('SELECT AMX_CODIGO FROM ALMOX0000 a WHERE emi_codigo = ' + QuotedStr(emiCodigo)));
  remData := DateToSQL(Now);
  remRequisitante := QuotedStr(DBInicio.Usuario.NOME);
  setCodigo := BuscaUmDadoSqlAsString('SELECT SET_CODIGO FROM OPERACOES WHERE OPE_CODIGO =  ' + opeCodigo);
  if setCodigo = '' then
  begin
    MessageDlg('Setor não cadastrado para a operação: ' + opeCodigo + ' - ' +
      BuscaUmDadoSqlAsString('SELECT OPE_DESCRICAO FROM OPERACOES WHERE OPE_CODIGO =  ' + opeCodigo) + #13 + #10 +
      'Vincule um setor na operação'
     , mtWarning, [mbOK], 0);
    Abort;
  end;
  remObservacao := QuotedStr('ENVIO AUTOMÁTICO DA PRODUÇÃO - Nº Ordem: ' + nOrdem + ' - ' + prdDescri);
  remStatus := QuotedStr('P');
  ExecSql('INSERT INTO REQUISICAO_MATERIAL VALUES(' +
    remCodigo + ',' +
    empCodigo + ',' +
    amxCodigo + ',' +
    remData + ',' +
    remRequisitante + ',' +
    setCodigo + ',' +
    remObservacao + ',' +
    remStatus + ',' +
    rmoCodigo + ')'
  );


  for j := top to count -1 do // ADetailDataController.Controller.SelectedRecordCount -1 do
  begin
    prdRefer := QuotedStr(ADetailDataController.Values[j, cxgrd1DBTableView1PRD_REFER.Index]);
    if BuscaUmDadoSqlAsString(
      ' SELECT pti_sigla FROM PRD_TIPO pt ' +
      '  JOIN PRD0000 p ON p.PTI_CODIGO = pt.PTI_CODIGO ' +
      ' WHERE p.PRD_REFER = ' + prdRefer) <> 'MP'
    then Continue;

    rmiCodigo := IntToStr(DBInicio.GetNextSequence('GEN_REQUISICAO_MATERIAL_ITEM'));
    rmiQuantidade := FloatToSQL(ADetailDataController.Values[j, cxgrd1DBTableView1MP_CONSUMOTOTAL.Index]);
    ExecSql('INSERT INTO REQUISICAO_MATERIAL_ITEM VALUES(' +
      rmiCodigo + ',' +
      remCodigo + ',' +
      prdRefer + ',' +
      rmiquantidade + ')'
    );

    rmaCodigo := IntToStr(DBInicio.GetNextSequence('GEN_REQUISICAO_MATERIAL_AUT'));
    ExecSql('INSERT INTO REQUISICAO_MATERIAL_AUT VALUES(' +
      rmaCodigo + ',' +
      rmiCodigo + ',' +
      QuotedStr('') + ',' +
      QuotedStr('N') + ',' +
      QuotedStr('P') + ',' +
      'NULL' + ')'
    );
  end;

  if not assigned(frmRequisicaoMaterial) then
    frmRequisicaoMaterial := TfrmRequisicaoMaterial.Create(Application);
  frmRequisicaoMaterial.Show;
  frmRequisicaoMaterial.cdsRequisicao.Locate('REM_CODIGO',  remCodigo, [] );
  frmRequisicaoMaterial.Filtra;
  frmRequisicaoMaterial.lbOrigem.Caption := BuscaUmDadoSqlAsString('SELECT RMO_DESCRICAO FROM REQUISICAO_MATERIAL_ORI WHERE RMO_CODIGO = 2 ' ); // origem: 2 - produção

end;

procedure TfrmGerenciamentoPCP.InformarFornecedor1Click(Sender: TObject);
var
  iopCodigo, pedCodigo: string;
begin
  inherited;
  iopCodigo := cxgrd1DBBandedTableView1.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1IOP_CODIGO.Index];
  pedCodigo := cxgrd1DBBandedTableView1.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1PED_CODIGO.Index];

  if frmPCPInformaFornecedor = nil then
    frmPCPInformaFornecedor := TfrmPCPInformaFornecedor.Create(Self);
  frmPCPInformaFornecedor.iopCodigo := iopCodigo;
  frmPCPInformaFornecedor.pedCodigo := pedCodigo;


  frmPCPInformaFornecedor.PesqFornecedor.idRetorno :=
             BuscaUmDadoSqlAsString(
              'SELECT mo.FOR_CODIGO ' +
              '  FROM MATERIAPRIMA_ORDEMPRODUCAO mo ' +
              '  WHERE mo.PED_CODIGO = ' + QuotedStr(pedCodigo) +
              '    AND mo.IOP_CODIGO = ' + QuotedStr(iopCodigo)
              );
  frmPCPInformaFornecedor.edNotaNumber.text :=
             BuscaUmDadoSqlAsString(
              'SELECT mo.ENF_NOTANUMBER ' +
              '  FROM MATERIAPRIMA_ORDEMPRODUCAO mo ' +
              '  WHERE mo.PED_CODIGO = ' + QuotedStr(pedCodigo) +
              '    AND mo.IOP_CODIGO = ' + QuotedStr(iopCodigo)
              );
  frmPCPInformaFornecedor.mpDataCompra.Date :=
             BuscaUmDadoSqlAsDateTime(
              'SELECT mo.MP_DATA_COMPRA ' +
              '  FROM MATERIAPRIMA_ORDEMPRODUCAO mo ' +
              '  WHERE mo.PED_CODIGO = ' + QuotedStr(pedCodigo) +
              '    AND mo.IOP_CODIGO = ' + QuotedStr(iopCodigo)
              );

  frmPCPInformaFornecedor.ShowModal;
end;

procedure TfrmGerenciamentoPCP.frxOP12GetValue(const VarName: string; var Value: Variant);
begin
  inherited;
//  if (VarName = 'DATAENTREGA') then
//    Value := iif(
//      qOP11Cabecalho.FieldByName('OPR_DTENTREGA').AsString = '',
//      qOP11Cabecalho.FieldByName('PED_DTSAIDA').AsString,
//      qOP11Cabecalho.FieldByName('OPR_DTENTREGA').AsString
//    );

  if (VarName = 'DATAENTREGA') then
    Value := qOP11Cabecalho.FieldByName('PED_DTSAIDA').AsString;

  if (VarName = 'QTDE_METROS' ) and (qOP11Corpo.FieldByName('FTI_CORTE_COMPRIMENTO').AsString <> '') then
    Value := (qOP11Cabecalho.FieldByName('IOP_QUANTIDADE').AsFloat *  qOP11Corpo.FieldByName('FTI_CORTE_COMPRIMENTO').AsFloat ) / 1000;

  if (VarName = 'QTDE_METROS' ) and (qOP11Corpo.FieldByName('FTI_CORTE_COMPRIMENTO').AsString = '') then
    Value := '';

  if VarName = 'FOR_CODIGO' then
    Value := BuscaUmDadoSqlAsString(
              'SELECT fo.FOR_RAZAO ' +
              '  FROM MATERIAPRIMA_ORDEMPRODUCAO mo ' +
              '  JOIN FOR0000 fo ON (fo.FOR_CODIGO = mo.FOR_CODIGO) ' +
              '  WHERE mo.PED_CODIGO = ' + QuotedStr(qOP11Cabecalho.FieldByName('PED_CODIGO').AsString) +
              '    AND mo.IOP_CODIGO = ' + QuotedStr(qOP11Cabecalho.FieldByName('IOP_CODIGO').AsString)
             );

  if VarName = 'ENF_NOTANUMBER' then
    Value := BuscaUmDadoSqlAsString(
              'SELECT mo.ENF_NOTANUMBER ' +
              '  FROM MATERIAPRIMA_ORDEMPRODUCAO mo ' +
              '  WHERE mo.PED_CODIGO = ' + QuotedStr(qOP11Cabecalho.FieldByName('PED_CODIGO').AsString) +
              '    AND mo.IOP_CODIGO = ' + QuotedStr(qOP11Cabecalho.FieldByName('IOP_CODIGO').AsString)
             );

  if VarName = 'MP_DATA_COMPRA' then
    Value := BuscaUmDadoSqlAsString(
              'SELECT mo.MP_DATA_COMPRA ' +
              '  FROM MATERIAPRIMA_ORDEMPRODUCAO mo ' +
              '  WHERE mo.PED_CODIGO = ' + QuotedStr(qOP11Cabecalho.FieldByName('PED_CODIGO').AsString) +
              '    AND mo.IOP_CODIGO = ' + QuotedStr(qOP11Cabecalho.FieldByName('IOP_CODIGO').AsString)
              );

end;


end.
