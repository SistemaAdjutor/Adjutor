unit uPedidosExpedicao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask,  basedbform,
  Data.DBXFirebird, Data.FMTBCd, Datasnap.DBClient, Datasnap.Provider,
  Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora, Vcl.DBCtrls,
  SgDbSeachComboUnit, Vcl.Menus, JvExControls, JvSpeedButton, JvExButtons, JvBitBtn, System.ImageList, Vcl.ImgList, frxClass, frxDBSet, JvExMask, JvToolEdit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, cxImage, uExpSeparacao, BaseDbEstoqueForm,
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
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TFrmExpedicaoPedidos = class(TfrmBaseDB)
    QbuscaPedidos: TSQLQuery;
    DspBuscaPedidos: TDataSetProvider;
    CdsBuscaPedidos: TClientDataSet;
    DsBuscaPedidos: TDataSource;
    CdsBuscaPedidosPED_DTSAIDA: TSQLTimeStampField;
    CdsBuscaPedidosPED_VLTOTAL_LIQ: TFMTBCdField;
    CdsBuscaPedidosPED_SITUACAO: TStringField;
    CdsBuscaPedidosNF_NUM_NFE: TIntegerField;
    CdsBuscaPedidosNF_QTDE: TFMTBCdField;
    CdsBuscaPedidosCLI_CGC: TStringField;
    CdsBuscaPedidosCLI_RAZAO: TStringField;
    CdsBuscaPedidosOPV_DESCRICAO: TStringField;
    CdsBuscaPedidosREP_NOME: TStringField;
    CdsBuscaPedidosCLI_CIDADE: TStringField;
    CdsBuscaPedidosCLI_BAIRRO: TStringField;
    CdsBuscaPedidosTRP_FONE: TStringField;
    CdsBuscaPedidosNF_PESOLIQ: TFMTBCdField;
    CdsBuscaPedidosPCX_DESCRI: TStringField;
    QbuscaItem: TSQLQuery;
    DspBuscaItens: TDataSetProvider;
    CdsBuscaItem: TClientDataSet;
    DsBuscaItens: TDataSource;
    CdsBuscaItemPRD_REFER: TStringField;
    CdsBuscaItemPRF_PRDDESCRI: TStringField;
    CdsBuscaItemPRF_QTDE: TFMTBCdField;
    CdsBuscaItemPRD_UND: TStringField;
    CdsBuscaItemPRD_CODBARRA: TStringField;
    CdsBuscaPedidosEMP_FANTASIA: TStringField;
    CdsBuscaPedidosTRP_RAZAO: TStringField;
    CdsBuscaPedidosEMP_ENDERE: TStringField;
    CdsBuscaPedidosEMP_BAIRRO: TStringField;
    CdsBuscaPedidosEMP_FONE: TStringField;
    CdsBuscaPedidosEMP_FAX: TStringField;
    CdsBuscaPedidosCLI_ENDERE: TStringField;
    CdsBuscaPedidosEMP_UF: TStringField;
    CdsBuscaPedidosCLI_UF: TStringField;
    CdsBuscaPedidosEMP_CEP: TStringField;
    CdsBuscaPedidosCLI_CEP: TStringField;
    CdsBuscaPedidosTRP_CEP: TStringField;
    CdsBuscaPedidosTRP_CIDADE: TStringField;
    CdsBuscaPedidosTRP_UF: TStringField;
    CdsBuscaPedidosTRP_ENDERE: TStringField;
    Label4: TLabel;
    qTransp: TSQLQuery;
    CdsBuscaPedidosSITEXP: TStringField;
    CdsBuscaPedidosPED_CODIGO: TStringField;
    CdsBuscaPedidosNF_PESOBRU: TFMTBCDField;
    CdsBuscaPedidosNF_PLACAVE: TStringField;
    pfiltros: TPanel;
    Label1: TLabel;
    RadioGroup1: TGroupBox;
    cbbbuscadireta: TComboBox;
    edtBuscaDireta: TEdit;
    ComboTransp: TSgDbSearchCombo;
    Label2: TLabel;
    ButPesquisa: TButton;
    mnuGridPesquisa: TPopupMenu;
    Copiar1: TMenuItem;
    sepn9: TMenuItem;
    Indexarporestacoluna1: TMenuItem;
    Bit_Sair: TBitBtn;
    dsHistorico_sit: TDataSource;
    dspHistorico_sit: TDataSetProvider;
    cdsHistorico_sit: TClientDataSet;
    qHistorico_sit: TSQLQuery;
    pprincipal: TPanel;
    psituacao: TPanel;
    pBarraAcoes: TPanel;
    ButEtiquetaDestinatario: TButton;
    ButEtiquetaMateriais: TButton;
    Button2: TButton;
    ButEtiquetadespaco: TButton;
    btnEstorno: TButton;
    PagPedido: TPageControl;
    gdbhistorico: TDBGrid;
    bitSituacao: TButton;
    pliberado: TPanel;
    Image1: TImage;
    pseparado: TPanel;
    Image2: TImage;
    pfinalizado: TPanel;
    Image3: TImage;
    pfaturado: TPanel;
    Image4: TImage;
    pdespachadoparcial: TPanel;
    pimpedido: TPanel;
    Image6: TImage;
    cdsHistorico_sitsitexp: TStringField;
    cdsHistorico_situsu_nome: TStringField;
    cdsHistorico_sitdatasit: TSQLTimeStampField;
    cdsHistorico_sitobservacao: TBlobField;
    Panel9: TPanel;
    ImageList1: TImageList;
    CdsBuscaPedidosemp_codigo: TStringField;
    cdsClone: TClientDataSet;
    cdsClonePRD_REFER: TStringField;
    cdsClonePRF_PRDDESCRI: TStringField;
    cdsClonePRF_QTDE: TFMTBCDField;
    CdsBuscaItemPRF_QTDEFAT: TFMTBCDField;
    CdsBuscaItemPRD_CODORIGINAL: TStringField;
    frxRomaneioDesp: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    CdsBuscaPedidosNF_TOT_NOTA: TFMTBCDField;
    CdsBuscaPedidosNF_EMISSAO: TDateField;
    CdsBuscaItemPRF_QTDEPEND: TFMTBCDField;
    RxDataInicial: TJvDateEdit;
    RxDataFinal: TJvDateEdit;
    edCodTransp: TEdit;
    Splitter1: TSplitter;
    CdsBuscaPedidoscli_fone: TStringField;
    CdsBuscaPedidosENTRADAEXP: TSQLTimeStampField;
    tsPedidos: TTabSheet;
    cxGridPedidoDBTableView1: TcxGridDBTableView;
    cxGridPedidoLevel1: TcxGridLevel;
    cxGridPedido: TcxGrid;
    cxGridPedidoLevel2: TcxGridLevel;
    cxGridPedidoDBTableView2: TcxGridDBTableView;
    CdsBuscaItememp_codigo: TStringField;
    CdsBuscaItemPED_CODIGO: TStringField;
    CdsBuscaItemprf_registro: TIntegerField;
    cxGridPedidoDBTableView2prf_registro: TcxGridDBColumn;
    cxGridPedidoDBTableView2PRD_REFER: TcxGridDBColumn;
    cxGridPedidoDBTableView2PRF_PRDDESCRI: TcxGridDBColumn;
    cxGridPedidoDBTableView2PRF_QTDE: TcxGridDBColumn;
    cxGridPedidoDBTableView2PRD_UND: TcxGridDBColumn;
    cxGridPedidoDBTableView2PRD_CODBARRA: TcxGridDBColumn;
    cxGridPedidoDBTableView2PRF_QTDEFAT: TcxGridDBColumn;
    cxGridPedidoDBTableView2PRD_CODORIGINAL: TcxGridDBColumn;
    cxGridPedidoDBTableView2PRF_QTDEPEND: TcxGridDBColumn;
    cxGridPedidoDBTableView2EMP_CODIGO: TcxGridDBColumn;
    cxGridPedidoDBTableView2PED_CODIGO: TcxGridDBColumn;
    btnSeparacao: TButton;
    tsExpedicao: TTabSheet;
    qItensSeparar: TSQLQuery;
    cdsItensSeparar: TClientDataSet;
    dspItemSeparar: TDataSetProvider;
    cdsItensSepararprf_registro: TIntegerField;
    cdsItensSepararPRD_REFER: TStringField;
    cdsItensSepararPRF_PRDDESCRI: TStringField;
    cdsItensSepararPRF_QTDE: TFMTBCDField;
    cdsItensSepararPRD_UND: TStringField;
    cdsItensSepararPRD_CODBARRA: TStringField;
    cdsItensSepararPRD_CODORIGINAL: TStringField;
    cdsItensSepararEMP_CODIGO: TStringField;
    cdsItensSepararPED_CODIGO: TStringField;
    cdsItensSepararPRF_FALTA: TFMTBCDField;
    cdsItensSepararPRF_SELECIONADA: TFMTBCDField;
    cdsItensSepararPRF_QTDE_EXPEDIDOS: TFMTBCDField;
    cdsItensSepararESTOQUE: TFMTBCDField;
    cdsItensSepararPRD_CODIGO: TStringField;
    cdsItensSepararPRF_FLAG_ATUALIZA_ESTOQUE: TStringField;
    cxGridExpedicao: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridLevel2: TcxGridLevel;
    dsExpedicao: TDataSource;
    cdsexpedicao: TClientDataSet;
    dspExpedicao: TDataSetProvider;
    qExpedicao: TSQLQuery;
    cdsexpedicaoPED_CODIGO: TStringField;
    cdsexpedicaoPED_DTSAIDA: TSQLTimeStampField;
    cdsexpedicaoPED_VLTOTAL_LIQ: TFMTBCDField;
    cdsexpedicaoPED_SITUACAO: TStringField;
    cdsexpedicaoNF_NUM_NFE: TIntegerField;
    cdsexpedicaoNF_QTDE: TFMTBCDField;
    cdsexpedicaoCLI_CGC: TStringField;
    cdsexpedicaoCLI_RAZAO: TStringField;
    cdsexpedicaoOPV_DESCRICAO: TStringField;
    cdsexpedicaoREP_NOME: TStringField;
    cdsexpedicaoCLI_CIDADE: TStringField;
    cdsexpedicaoCLI_BAIRRO: TStringField;
    cdsexpedicaoTRP_FONE: TStringField;
    cdsexpedicaoNF_PESOLIQ: TFMTBCDField;
    cdsexpedicaoPCX_DESCRI: TStringField;
    cdsexpedicaoEMP_FANTASIA: TStringField;
    cdsexpedicaoTRP_RAZAO: TStringField;
    cdsexpedicaoEMP_ENDERE: TStringField;
    cdsexpedicaoEMP_BAIRRO: TStringField;
    cdsexpedicaoEMP_FONE: TStringField;
    cdsexpedicaoEMP_FAX: TStringField;
    cdsexpedicaoCLI_ENDERE: TStringField;
    cdsexpedicaoEMP_UF: TStringField;
    cdsexpedicaoCLI_UF: TStringField;
    cdsexpedicaoEMP_CEP: TStringField;
    cdsexpedicaoCLI_CEP: TStringField;
    cdsexpedicaoTRP_CEP: TStringField;
    cdsexpedicaoTRP_CIDADE: TStringField;
    cdsexpedicaoTRP_UF: TStringField;
    cdsexpedicaoTRP_ENDERE: TStringField;
    cdsexpedicaoSITEXP: TStringField;
    cdsexpedicaoNF_PESOBRU: TFMTBCDField;
    cdsexpedicaoNF_PLACAVE: TStringField;
    cdsexpedicaoemp_codigo: TStringField;
    cdsexpedicaoNF_TOT_NOTA: TFMTBCDField;
    cdsexpedicaoNF_EMISSAO: TDateField;
    cdsexpedicaocli_fone: TStringField;
    cdsexpedicaoENTRADAEXP: TSQLTimeStampField;
    cxGridPedidoDBTableView1PED_CODIGO: TcxGridDBColumn;
    cxGridPedidoDBTableView1PED_DTSAIDA: TcxGridDBColumn;
    cxGridPedidoDBTableView1PED_VLTOTAL_LIQ: TcxGridDBColumn;
    cxGridPedidoDBTableView1PED_SITUACAO: TcxGridDBColumn;
    cxGridPedidoDBTableView1NF_NUM_NFE: TcxGridDBColumn;
    cxGridPedidoDBTableView1NF_QTDE: TcxGridDBColumn;
    cxGridPedidoDBTableView1CLI_CGC: TcxGridDBColumn;
    cxGridPedidoDBTableView1CLI_RAZAO: TcxGridDBColumn;
    cxGridPedidoDBTableView1OPV_DESCRICAO: TcxGridDBColumn;
    cxGridPedidoDBTableView1REP_NOME: TcxGridDBColumn;
    cxGridPedidoDBTableView1CLI_CIDADE: TcxGridDBColumn;
    cxGridPedidoDBTableView1CLI_BAIRRO: TcxGridDBColumn;
    cxGridPedidoDBTableView1TRP_FONE: TcxGridDBColumn;
    cxGridPedidoDBTableView1NF_PESOLIQ: TcxGridDBColumn;
    cxGridPedidoDBTableView1PCX_DESCRI: TcxGridDBColumn;
    cxGridPedidoDBTableView1EMP_FANTASIA: TcxGridDBColumn;
    cxGridPedidoDBTableView1TRP_RAZAO: TcxGridDBColumn;
    cxGridPedidoDBTableView1EMP_ENDERE: TcxGridDBColumn;
    cxGridPedidoDBTableView1EMP_FONE: TcxGridDBColumn;
    cxGridPedidoDBTableView1EMP_FAX: TcxGridDBColumn;
    cxGridPedidoDBTableView1CLI_ENDERE: TcxGridDBColumn;
    cxGridPedidoDBTableView1EMP_UF: TcxGridDBColumn;
    cxGridPedidoDBTableView1CLI_UF: TcxGridDBColumn;
    cxGridPedidoDBTableView1EMP_CEP: TcxGridDBColumn;
    cxGridPedidoDBTableView1CLI_CEP: TcxGridDBColumn;
    cxGridPedidoDBTableView1TRP_CEP: TcxGridDBColumn;
    cxGridPedidoDBTableView1TRP_CIDADE: TcxGridDBColumn;
    cxGridPedidoDBTableView1TRP_UF: TcxGridDBColumn;
    cxGridPedidoDBTableView1TRP_ENDERE: TcxGridDBColumn;
    cxGridPedidoDBTableView1SITEXP: TcxGridDBColumn;
    cxGridPedidoDBTableView1NF_PESOBRU: TcxGridDBColumn;
    cxGridPedidoDBTableView1NF_PLACAVE: TcxGridDBColumn;
    cxGridPedidoDBTableView1emp_codigo: TcxGridDBColumn;
    cxGridPedidoDBTableView1NF_TOT_NOTA: TcxGridDBColumn;
    cxGridPedidoDBTableView1NF_EMISSAO: TcxGridDBColumn;
    cxGridPedidoDBTableView1cli_fone: TcxGridDBColumn;
    cxGridPedidoDBTableView1ENTRADAEXP: TcxGridDBColumn;
    cxGridPedidoDBTableView1Empresa: TcxGridDBColumn;
    cxGridDBTableView1EXP_CODIGO: TcxGridDBColumn;
    cxGridDBTableView1PED_CODIGO: TcxGridDBColumn;
    cxGridDBTableView1PED_DTSAIDA: TcxGridDBColumn;
    cxGridDBTableView1PED_VLTOTAL_LIQ: TcxGridDBColumn;
    cxGridDBTableView1PED_SITUACAO: TcxGridDBColumn;
    cxGridDBTableView1NF_NUM_NFE: TcxGridDBColumn;
    cxGridDBTableView1NF_QTDE: TcxGridDBColumn;
    cxGridDBTableView1CLI_CGC: TcxGridDBColumn;
    cxGridDBTableView1CLI_RAZAO: TcxGridDBColumn;
    cxGridDBTableView1OPV_DESCRICAO: TcxGridDBColumn;
    cxGridDBTableView1REP_NOME: TcxGridDBColumn;
    cxGridDBTableView1CLI_CIDADE: TcxGridDBColumn;
    cxGridDBTableView1CLI_BAIRRO: TcxGridDBColumn;
    cxGridDBTableView1TRP_FONE: TcxGridDBColumn;
    cxGridDBTableView1NF_PESOLIQ: TcxGridDBColumn;
    cxGridDBTableView1PCX_DESCRI: TcxGridDBColumn;
    cxGridDBTableView1EMP_FANTASIA: TcxGridDBColumn;
    cxGridDBTableView1TRP_RAZAO: TcxGridDBColumn;
    cxGridDBTableView1EMP_ENDERE: TcxGridDBColumn;
    cxGridDBTableView1EMP_BAIRRO: TcxGridDBColumn;
    cxGridDBTableView1EMP_FONE: TcxGridDBColumn;
    cxGridDBTableView1EMP_FAX: TcxGridDBColumn;
    cxGridDBTableView1CLI_ENDERE: TcxGridDBColumn;
    cxGridDBTableView1EMP_UF: TcxGridDBColumn;
    cxGridDBTableView1CLI_UF: TcxGridDBColumn;
    cxGridDBTableView1EMP_CEP: TcxGridDBColumn;
    cxGridDBTableView1CLI_CEP: TcxGridDBColumn;
    cxGridDBTableView1TRP_CEP: TcxGridDBColumn;
    cxGridDBTableView1TRP_CIDADE: TcxGridDBColumn;
    cxGridDBTableView1TRP_UF: TcxGridDBColumn;
    cxGridDBTableView1TRP_ENDERE: TcxGridDBColumn;
    cxGridDBTableView1SITEXP: TcxGridDBColumn;
    cxGridDBTableView1NF_PESOBRU: TcxGridDBColumn;
    cxGridDBTableView1NF_PLACAVE: TcxGridDBColumn;
    cxGridDBTableView1emp_codigo: TcxGridDBColumn;
    cxGridDBTableView1NF_TOT_NOTA: TcxGridDBColumn;
    cxGridDBTableView1NF_EMISSAO: TcxGridDBColumn;
    cxGridDBTableView1cli_fone: TcxGridDBColumn;
    cxGridDBTableView1ENTRADAEXP: TcxGridDBColumn;
    cxGridDBTableView1Empresa: TcxGridDBColumn;
    cxGridDBTableView1EXP_SITUACAO: TcxGridDBColumn;
    cxGridDBTableView1EXP_DATAABERTURA: TcxGridDBColumn;
    cxGridDBTableView1EXP_DATAENVIO: TcxGridDBColumn;
    cdsexpedicaoEXP_CODIGO: TIntegerField;
    cdsexpedicaoEXP_SITUACAO: TStringField;
    cdsexpedicaoEXP_DATAABERTURA: TSQLTimeStampField;
    cdsexpedicaoEXP_DATAENVIO: TSQLTimeStampField;
    CdsBuscaItemPRF_QTDE_EXPEDIDOS: TFMTBCDField;
    cxGridPedidoDBTableView2PRF_QTDE_EXPEDIDOS: TcxGridDBColumn;
    dspExp_item: TDataSetProvider;
    qExp_Item: TSQLQuery;
    cdsExp_It: TClientDataSet;
    dsExp_It: TDataSource;
    cdsExp_Itprf_registro: TIntegerField;
    cdsExp_ItPRD_REFER: TStringField;
    cdsExp_ItPRF_PRDDESCRI: TStringField;
    cdsExp_ItPRF_QTDE: TFMTBCDField;
    cdsExp_ItPRD_UND: TStringField;
    cdsExp_ItPRD_CODBARRA: TStringField;
    cdsExp_ItPRF_QTDEFAT: TFMTBCDField;
    cdsExp_ItPRD_CODORIGINAL: TStringField;
    cdsExp_ItPRF_QTDEPEND: TFMTBCDField;
    cdsExp_ItEMP_CODIGO: TStringField;
    cdsExp_ItPED_CODIGO: TStringField;
    cdsExp_ItPRF_QTDE_EXPEDIDOS: TFMTBCDField;
    cdsExp_ItEXI_QTDE: TFMTBCDField;
    cxGridDBTableView2PRD_REFER: TcxGridDBColumn;
    cxGridDBTableView2PRF_PRDDESCRI: TcxGridDBColumn;
    cxGridDBTableView2PRF_QTDE: TcxGridDBColumn;
    cxGridDBTableView2PRD_UND: TcxGridDBColumn;
    cxGridDBTableView2PRD_CODBARRA: TcxGridDBColumn;
    cxGridDBTableView2PRF_QTDEFAT: TcxGridDBColumn;
    cxGridDBTableView2PRD_CODORIGINAL: TcxGridDBColumn;
    cxGridDBTableView2PRF_QTDEPEND: TcxGridDBColumn;
    cxGridDBTableView2EMP_CODIGO: TcxGridDBColumn;
    cxGridDBTableView2PED_CODIGO: TcxGridDBColumn;
    cxGridDBTableView2PRF_QTDE_EXPEDIDOS: TcxGridDBColumn;
    cxGridDBTableView2EXI_QTDE: TcxGridDBColumn;
    cdsExp_ItEXP_CODIGO: TIntegerField;
    btnRomaneioEntrega: TButton;
    frxRomaneioEntrega: TfrxReport;
    frxqExpedicao: TfrxDBDataset;
    qReportExpedicao: TSQLQuery;
    cdsexpedicaoEXP_DATAENCERRA: TSQLTimeStampField;
    qReportExpedicaoEXP_CODIGO: TIntegerField;
    qReportExpedicaoped_codigo: TStringField;
    qReportExpedicaoEXP_SITUACAO: TStringField;
    qReportExpedicaoEXP_DATAABERTURA: TSQLTimeStampField;
    qReportExpedicaoEXP_DATAENCERRA: TSQLTimeStampField;
    qReportExpedicaoEXP_DATAENVIO: TSQLTimeStampField;
    qReportExpedicaoUSU_CODIGO: TIntegerField;
    qReportExpedicaoUSU_NOME: TStringField;
    qReportExpedicaocli_razao: TStringField;
    qReportExpedicaoCLI_CGC: TStringField;
    qReportExpedicaoCLI_CODIGO: TStringField;
    qReportExpedicaoEMP_FONE: TStringField;
    qReportExpedicaoEMP_RAZAO: TStringField;
    qReportExpedicaoPED_OBSERVACAO: TBlobField;
    qReportExpedicaoEMP_INSC: TStringField;
    qReportExpedicaoEMP_INSC_MUNICIPAL: TStringField;
    qReportExpedicaoEXP_OBSERVACAO: TStringField;
    qReportExpedicaoEMP_ENDERE: TStringField;
    qReportExpedicaoEMP_CGC: TStringField;
    qItensExpedicao: TSQLQuery;
    qItensExpedicaoPRD_REFER: TStringField;
    qItensExpedicaoPRD_DESCRI: TStringField;
    qItensExpedicaoEXI_QTDE: TFMTBCDField;
    qItensExpedicaoPRD_UND: TStringField;
    qItensExpedicaoAMX_DESCRI: TStringField;
    frxqItensExpedicao: TfrxDBDataset;
    cdsExp_Itexi_codigo: TIntegerField;
    qReportExpedicaoEMP_LOGO: TBlobField;
    despachadoTotal: TPanel;
    Image7: TImage;
    imgDepParcial: TImage;
    pNaoExpedido: TPanel;
    qReportExpedicaositexp: TStringField;
    CdsBuscaItemNF_NUM_NFE: TIntegerField;
    mObservacao: TDBMemo;
    Splitter2: TSplitter;
    CdsBuscaPedidosPED_OBSERVACAO: TBlobField;
    grpobservacao: TGroupBox;
    procedure Bit_SairClick(Sender: TObject);
    procedure ButPesquisaClick(Sender: TObject);
    procedure ButEtiquetaDestinatarioClick(Sender: TObject);
    procedure ButEtiquetaMateriaisClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure bitSituacaoClick(Sender: TObject);
    procedure pseparadoClick(Sender: TObject);
    procedure pfinalizadoClick(Sender: TObject);
    procedure pfaturadoClick(Sender: TObject);
    procedure pdespachaClick(Sender: TObject);
    procedure pimpedidoClick(Sender: TObject);
    procedure pliberadoClick(Sender: TObject);
    procedure Panel9Click(Sender: TObject);
    procedure cdsHistorico_sitobservacaoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure edtBuscaDiretaKeyPress(Sender: TObject; var Key: Char);
    procedure ComboTranspSelect(Sender: TObject);
    procedure edtBuscaDiretaEnter(Sender: TObject);
    procedure edtBuscaDiretaExit(Sender: TObject);
    procedure ButEtiquetadespacoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edCodTranspExit(Sender: TObject);
    procedure CdsBuscaPedidoscli_foneGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure CdsBuscaPedidosTRP_FONEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cxGridPedidoDBTableView1SITEXPCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridPedidoDBTableView2PRF_QTDEPENDCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure btnSeparacaoClick(Sender: TObject);
    procedure cdsexpedicaoEXP_SITUACAOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsexpedicaoemp_codigoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure CdsBuscaPedidosemp_codigoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure tsExpedicaoShow(Sender: TObject);
    procedure btnRomaneioEntregaClick(Sender: TObject);
    procedure qExpedicaoCLI_CGCGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qExpedicaoEMP_FONEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qExpedicaoEMP_CGCGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure btnEstornoClick(Sender: TObject);
    procedure pdespachadoparcialClick(Sender: TObject);
    procedure imgDepParcialClick(Sender: TObject);
    procedure cxGridPedidoDBTableView1CanFocusRecord(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; var AAllow: Boolean);
    procedure cxGridDBTableView1CanFocusRecord(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; var AAllow: Boolean);
    procedure pNaoExpedidoClick(Sender: TObject);

  private
    Situacao : string;
    { Private declarations }
    fListaEmpresas : TStringList;
    procedure BuscaHistorico (const ped_codigo, emp_codigo : string);
    procedure buscaItem;
    procedure BuscaExpedicaoItem;
    procedure buscaExpedicao;
    procedure ListasEmpresasPermitidas;
    procedure ImprimeRomaneioEntrega(const exp_codigo: integer);
  public
    { Public declarations }
  end;

var
   FrmExpedicaoPedidos: TFrmExpedicaoPedidos;

implementation

{$R *.dfm}

uses uteis, iniciodb,DataCad, uEtiquetasExpedicao, uEtiquetasExpedicao2, uhistoricoexpedicao;

procedure TFrmExpedicaoPedidos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TFrmExpedicaoPedidos.FormCreate(Sender: TObject);
begin
  inherited;
  RxDataInicial.Date := Date-90;
  btnEstorno.Enabled := DBInicio.Empresa.bPermitirEstornaExpedicao;
  fListaEmpresas := TStringList.Create;
  ListasEmpresasPermitidas;
  ButPesquisa.Click;
  PagPedido.ActivePage := tsPedidos;
  self.Constraints.MaxHeight:=0;
  buscaItem;
  BuscaExpedicaoItem;


end;

procedure TFrmExpedicaoPedidos.FormDestroy(Sender: TObject);
begin
  inherited;
  fListaEmpresas.Free;
  FrmExpedicaoPedidos := Nil;
end;

procedure TFrmExpedicaoPedidos.FormResize(Sender: TObject);
begin
  inherited;

  ;
end;

procedure TFrmExpedicaoPedidos.FormShow(Sender: TObject);
begin
  inherited;

  Self.WindowState := wsMaximized;
  self.Constraints.MaxHeight := self.Height - 9;
  Situacao := 'NAOEXP';
end;

procedure TFrmExpedicaoPedidos.imgDepParcialClick(Sender: TObject);
begin
  inherited;
  Situacao := 'DPA';
  ButPesquisa.Click;
end;

procedure TFrmExpedicaoPedidos.ImprimeRomaneioEntrega(const exp_codigo: integer);
 VAR  LOGO : tBitMap;
begin
    qReportExpedicao.Close;
    qReportExpedicao.CommandText :=
      'SELECT EMP_LOGO, exp_codigo, PED_CODIGO, ex.EXP_DATAABERTURA, ex.EXP_DATAENCERRA, ex.EXP_DATAENVIO,'+
      ' ex.EXP_SITUACAO, ex.USU_CODIGO, usu.USU_NOME, cli.cli_razao, cli.CLI_CGC, cli.CLI_CODIGO, emp.EMP_CGC, emp.EMP_INSC, emp.EMP_INSC_MUNICIPAL,'+
      ' emp.EMP_ENDERE, emp.EMP_FONE, emp.EMP_RAZAO, p.PED_OBSERVACAO, ex.EXP_OBSERVACAO, '+
      ' CASE sitexp'+
      '     WHEN ''PEN'' THEN ''PENDENTE''' +
      '     WHEN ''LIB'' THEN ''LIBERADO'''+
      '     WHEN ''SEP'' THEN ''SEPERACAO'''+
      '     WHEN ''FIN'' THEN ''FINALIZADO'''+
      '     WHEN ''DEP'' THEN ''DESPACHADO'''+
      '     WHEN ''IMP'' THEN ''IMPEDIDO''' +
      '     WHEN ''FAT'' THEN ''FATURADO'''+
      '     WHEN ''DPA'' THEN ''DEPACHADO PARCIAL'''+
      '     END AS sitexp '+
      ' from ped0000 as p '+
      ' join EXPEDICAO EX ON (EX.PED_REGISTRO = p.PED_REGISTRO) '+
      ' JOIN USUARIO usu ON ex.USU_CODIGO = usu.USU_CODIGO      '+
      ' join cli0000 as cli on cli.cli_codigo = p.cli_codigo    '+
      ' join emp0000 as emp on emp.emp_codigo = p.emp_codigo     '+
      ' where EXP_CODIGO = '+IntToStr( exp_codigo);

    qReportExpedicao.Open;
    qItensExpedicao.Close;
    qItensExpedicao.CommandText := '   SELECT prod.PRD_REFER, prod.PRD_DESCRI, it.EXI_QTDE, prod.PRD_UND, AMX.AMX_DESCRI   '+
                                    '   FROM EXPEDICAO_ITEM it          '+
                                    '   join PED_IT01 AS ped ON (ped.PRF_REGISTRO = it.PRF_REGISTRO) '+
                                    '   join prd0000 as prod on (prod.PRD_CODIGO = PED.prd_codigo)   '+
                                    '   LEFT JOIN ALMOX0000 AS amx ON amx.AMX_CODIGO = ped.AMX_CODIGO_ORIGEM ' +
                                    ' where EXP_CODIGO = '+IntToStr(exp_codigo);
    LOGO := tBitMap.Create;
    Le_Imagem_JPEG_toBMP( qReportExpedicaoEMP_LOGO ,logo );
    TfrxPictureView(frxRomaneioEntrega.FindObject('Logo')).Picture.Assign( Logo );
    frxRomaneioEntrega.ShowReport();
end;

procedure TFrmExpedicaoPedidos.ListasEmpresasPermitidas;
begin
 fListaEmpresas.Clear;
  if not DBInicio.Empresa.wPMT_EXPEDICAO_MULTIEMPRESA then
     fListaEmpresas.add(QuotedStr(DBInicio.Empresa.EMP_CODIGO))
  else
  begin
    fListaEmpresas.Delimiter := ',';
    OpenAux2('select emp_codigo from USUARIO_EMPRESA  where usu_codigo = '+ DBInicio.Usuario.CODIGO );
    while not qAux2.Eof do
    begin
      fListaEmpresas.Add(QuotedStr(qAux2.FieldByName('emp_codigo').AsString)) ;
      qAux2.next;
    end;
  end;
end;

procedure TFrmExpedicaoPedidos.pliberadoClick(Sender: TObject);
begin
  inherited;
  Situacao := 'LIB';
  ButPesquisa.Click;
end;

procedure TFrmExpedicaoPedidos.pseparadoClick(Sender: TObject);
begin
  inherited;
  Situacao := 'SEP';
  ButPesquisa.Click;
end;

procedure TFrmExpedicaoPedidos.qExpedicaoCLI_CGCGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  text:= MascaraCNPJ_CPF(Sender.AsString);
end;

procedure TFrmExpedicaoPedidos.qExpedicaoEMP_CGCGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  TEXT:= MascaraCNPJ_CPF(Sender.AsString)
end;

procedure TFrmExpedicaoPedidos.qExpedicaoEMP_FONEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  TEXT:= MascaraFone (Sender.AsString);
end;

procedure TFrmExpedicaoPedidos.tsExpedicaoShow(Sender: TObject);
begin
  inherited;
  buscaExpedicao;
end;

procedure TFrmExpedicaoPedidos.pfinalizadoClick(Sender: TObject);
begin
  inherited;
  Situacao := 'FIN';
  ButPesquisa.Click;
end;

procedure TFrmExpedicaoPedidos.pfaturadoClick(Sender: TObject);
begin
  inherited;
  Situacao := 'FAT';
  ButPesquisa.Click;
end;

procedure TFrmExpedicaoPedidos.pdespachaClick(Sender: TObject);
begin
  inherited;
  Situacao := 'DEP';
  ButPesquisa.Click;
end;

procedure TFrmExpedicaoPedidos.pdespachadoparcialClick(Sender: TObject);
begin
  inherited;
  Situacao := 'DPA';
  ButPesquisa.Click;
end;

procedure TFrmExpedicaoPedidos.pimpedidoClick(Sender: TObject);
begin
  inherited;
  Situacao := 'IMP';
  ButPesquisa.Click;
end;

procedure TFrmExpedicaoPedidos.pNaoExpedidoClick(Sender: TObject);
begin
  inherited;
  Situacao := 'NAOEXP' ;
  ButPesquisa.Click;
end;

procedure TFrmExpedicaoPedidos.Panel9Click(Sender: TObject);
begin
  inherited;
  Situacao := '' ;
  ButPesquisa.Click;
end;

procedure TFrmExpedicaoPedidos.Bit_SairClick(Sender: TObject);
begin
     Close;
end;

procedure TFrmExpedicaoPedidos.btnRomaneioEntregaClick(Sender: TObject);
begin
  inherited;
  if not cdsexpedicaoEXP_CODIGO.IsNull then
    ImprimeRomaneioEntrega (cdsexpedicaoEXP_CODIGO.AsInteger);

end;

procedure TFrmExpedicaoPedidos.btnSeparacaoClick(Sender: TObject);
begin
  inherited;
  cdsItensSeparar.Close;
  qItensSeparar.CommandText := 'SELECT it.prf_registro, it.ped_codigo, it.emp_codigo, it.prd_refer, prod.PRD_CODORIGINAL,  it.prf_prddescri, it.prf_qtde,'+
                               '  COALESCE( it.PRF_QTDE_EXPEDIDOS, 0 ) AS PRF_QTDE_EXPEDIDOS, '+
                               '  prod.prd_und, prod.prd_codbarra,                            '+
                               '  it.prf_qtde - COALESCE( it.PRF_QTDE_EXPEDIDOS, 0 ) AS PRF_FALTA, 0.00 PRF_SELECIONADA, '+
                               ' ( SELECT SUM(kas_saldo) '+
                               '   FROM kardex_almox_saldo '+
                               '   WHERE prd_codigo = prod.prd_codigo '+
                                ConcatSe (' and ',dbInicio.ExclusivoSql('ESTOQUES') )+') Estoque, prod.prd_codigo, PRF_FLAG_ATUALIZA_ESTOQUE '+
                               ' FROM PED_IT01 AS it '+
                               '  join prd0000 as prod on prod.prd_refer = it.prd_refer '+ ConcatSe(' and prod.',DBInicio.ExclusivoSql('PRODUTOS') ) +
                               ' where it.emp_codigo = '+ QuotedStr(CdsBuscaPedidosemp_codigo.AsString) +
                               ' and it.ped_codigo = '+ QuotedStr(CdsBuscaPedidosPED_CODIGO.AsString)+
                               ' and  it.prf_qtde - COALESCE( it.PRF_QTDE_EXPEDIDOS, 0 )  > 0'+
                               '   AND  it.prf_qtde >0 ';
  cdsItensSeparar.Open;
  if cdsItensSeparar.IsEmpty then
    raise Exception.Create('Já foi expedido tudo');
  if not Assigned(frmExpSeparacao) then
    frmExpSeparacao := TfrmExpSeparacao.Create(Application);

  frmExpSeparacao.cdsItensSeparar.Data := cdsItensSeparar.Data;
  frmExpSeparacao.ped_codigo :=  CdsBuscaPedidosPED_CODIGO.AsString;
  frmExpSeparacao.cliente := 'CNPJ '+MascaraCNPJ_CPF( CdsBuscaPedidosCLI_CGC.AsString) + '-' + CdsBuscaPedidosCLI_RAZAO.AsString;
  If frmExpSeparacao.ShowModal = mrOk then
  begin

    if frmExpSeparacao.expedicao> 0  then
      if (MessageDlg('Deseja imprimir o romaneio agora?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
         ImprimeRomaneioEntrega(frmExpSeparacao.expedicao);

    frmExpSeparacao.close;
    ButPesquisa.Click;
    buscaItem;
    BuscaExpedicao;
    BuscaExpedicaoItem;

  end;
end;

procedure TFrmExpedicaoPedidos.buscaExpedicao;
var FlagWhere: boolean;

   procedure sqladd( stt: string );
   begin
     if stt<>'' then
     begin
        if FlagWhere then
           qExpedicao.sql.add( ' where '+stt )
        else
           qExpedicao.sql.add( 'and '+stt );
        FlagWhere := False;
     end;
   end;
begin
  FlagWhere := True;
  with qExpedicao, SQL do
  begin
    cdsexpedicao.Close;
    clear;
    add( 'select ex.EXP_CODIGO, EXP_DATAABERTURA,EXP_DATAENVIO,EXP_DATAENCERRA,  EXP_SITUACAO,  p.ped_codigo, p.ped_dtsaida, p.ped_vltotal_liq, p.ped_situacao, nf.NF_TOT_NOTA, ');
    add( '       nf.nf_num_nfe, nf.nf_qtde, cli.cli_cgc, cli.cli_razao,p.emp_codigo,nf.NF_EMISSAO, CLI_FONE, ');
    add( '       tipo.opv_descricao, rep.rep_nome, COALESCE(cidade,cli.cli_cidade) cli_cidade, COALESCE(estado,cli.CLI_UF) CLI_UF, cli.cli_bairro, trp.trp_razao, ');
    add( '       trp.trp_fone, trp.trp_placa, pcx.pcx_descri, nf.nf_pesoliq, nf.nf_pesobru, nf.nf_placave, emp.emp_fantasia, p.SitExp, ' );
    add( '       emp.emp_endere, emp.emp_bairro, emp.emp_fone, emp.emp_fax, cli.cli_endere, emp.emp_uf, cli.cli_uf, emp.emp_cep, cli.cli_cep, trp.trp_cep, trp.trp_cidade, trp.trp_uf, trp.trp_endere, ');
    Add( ' (SELECT max(DATASIT) FROM HISTORICO_EXPE HP WHERE HP.PED_CODIGO = P.PED_CODIGO AND SITEXP = ''LIB'' ) ENTRADAEXP ');
    add( 'from ped0000 as p');
    add( '  join EXPEDICAO EX ON (EX.PED_REGISTRO = p.PED_REGISTRO ) ');
    add( '     join cli0000 as cli on cli.cli_codigo = p.cli_codigo');
    add( '     join emp0000 as emp on emp.emp_codigo = p.emp_codigo');
    add( '     left join nf0001 as nf on (p.ped_codigo = nf.ped_codigo and p.emp_codigo = nf.emp_codigo)');
    add( '     left join ENDERECO en ON en.CODIGO =  p.ENDERECO_ENTREGA ');
    add( '     left join opv0000 as tipo on tipo.opv_codigo = p.opv_codigo');
    add( '     left join rep0000 as rep on rep.rep_codigo = p.rep_codigo');
    add( '     left join trp0000 as trp on trp.trp_codigo =  p.trp_codigo');
    add( '     left join pcx0000 as pcx on pcx.pcx_codigo = p.pcx_codigo');

    if DBInicio.Empresa.wPMT_EXPEDICAO_MULTIEMPRESA then
      SqlAdd('p.EMP_CODIGO  in ('+fListaEmpresas.commatext+')')
    Else if DBInicio.Exclusivo('PEDIDOS') then
      SqlAdd(' p.EMP_CODIGO = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO) );

    if dbinicio.Empresa.PMT_LIBERAR_EXPEDICAO = 'F' then
    begin
      if situacao = 'NAOEXP' then
       sqladd('  P.SITEXP NOT in ( ''PEN'', ''DEP'',''IMP'','''' )')
      else
      if situacao = 'FAT' then
       sqladd('  P.SITEXP = ''FAT'' AND NF_SITEXPEDICAO = ''L'' ')
      else
      if Situacao <> '' then
        sqladd('P.SITEXP = ' +QuotedStr(SITUACAO) )
      else
       sqladd('NOT ( P.SITEXP = ' +QuotedStr('PEN')    +
              ' OR (P.SITEXP = ''FAT'' AND NF_SITEXPEDICAO = ''F'') )');



    end
    else
    begin
      if situacao = 'NAOEXP' then
       sqladd('  P.SITEXP NOT in ( ''PEN'', ''DEP'',''IMP'' )')
      else
      if Situacao <> '' then
        sqladd('P.SITEXP = ' +QuotedStr(SITUACAO) )
      else
        sqladd('P.SITEXP <> ' +QuotedStr('PEN') );
    end;
    If (edtBuscaDireta.text<>'') then
    begin
         case cbbbuscadireta.ItemIndex of
           0:sqladd( 'P.PED_CODIGO = '+qStr(strzero(edtBuscaDireta.Text,6))); //PEDIDO
           1:sqladd( 'CLI.CLI_RAZAO LIKE '+qStr('%'+edtBuscaDireta.Text+'%')); //CLIENTE
           2:sqladd( 'REP.REP_NOME LIKE '+qStr('%'+edtBuscaDireta.Text+'%')); //VENDEDOR
           3:sqladd( 'CLI.CLI_BAIRRO LIKE '+qStr('%'+edtBuscaDireta.Text+'%')); //BAIRRO
           4:sqladd( 'CLI.CLI_CIDADE LIKE '+qStr('%'+edtBuscaDireta.Text+'%')); //CIDADE
         end;
    End
    Else
    Begin
         If (ComboTransp.text<>'') then
            sqladd( 'TRP.TRP_RAZAO LIKE '+qStr('%'+ComboTransp.Text+'%')); //TRANSPORTADORA
         if RxDatafinal.date<>0 then
         begin
              if RxDataFinal.Date< RxDataInicial.Date then
                 RxDataInicial.Date:=RxDataFinal.Date ;
              sqladd( 'p.ped_dtsaida <= '+DateToSql(RxDataFinal.Date));
         end;
         if RxDataInicial.date<>0 then
            sqladd( 'p.ped_dtsaida >= '+DateToSql(RxDataInicial.Date));

    end;

    add('order by p.ped_codigo desc');


    cdsexpedicao.open;

  end;



end;

procedure TFrmExpedicaoPedidos.BuscaExpedicaoItem;
begin
  cdsExp_It.disablecontrols;
  try
      cdsExp_It.close;
      qExp_Item.Sql.Clear;
      qExp_Item.Sql.Add('select exi_codigo, it.prf_registro, it.ped_codigo, it.emp_codigo, it.prd_refer, prod.PRD_CODORIGINAL,  it.prf_prddescri, ');
      qExp_Item.Sql.Add('it.prf_qtde,');
      qExp_Item.Sql.Add('it.PRF_QTDEFAT,  prod.prd_und, prod.prd_codbarra, ');
      qExp_Item.Sql.Add('  it.PRF_QTDEPEND,PRF_QTDE_EXPEDIDOS, exi.EXI_QTDE, exi.EXP_CODIGO  ');
      qExp_Item.Sql.Add('from ped_it01 as it');
      qExp_Item.Sql.Add(' JOIN EXPEDICAO_ITEM exi ON (exi.PRF_REGISTRO = it.PRF_REGISTRO) ');
      qExp_Item.Sql.Add('     join prd0000 as prod on prod.prd_codigo = it.prd_codigo');
//        qBuscaItem.Sql.Add('Where it.ped_codigo = '+qStr(CdsBuscaPedidosPed_Codigo.asstring) );
//        qBuscaItem.Sql.Add(' and it.emp_codigo = '+QuotedStr(CdsBuscaPedidosemp_codigo.AsString));
      qExp_Item.Sql.Add('ORDER BY exi.exp_codigo ');
      cdsExp_It.open;
  finally
    cdsExp_It.enablecontrols;
  end;
end;

procedure TFrmExpedicaoPedidos.BuscaHistorico (const ped_codigo, emp_codigo : string);
begin

  cdsHistorico_sit.Close ;
  qHistorico_sit.CommandText :=
        'SELECT CASE sitexp'+
        '     WHEN ''PEN'' THEN ''PENDENTE''' +
        '     WHEN ''LIB'' THEN ''LIBERADO'''+
        '     WHEN ''SEP'' THEN ''SEPERACAO'''+
        '     WHEN ''FIN'' THEN ''FINALIZADO'''+
        '     WHEN ''DEP'' THEN ''DESPACHADO'''+
        '     WHEN ''IMP'' THEN ''IMPEDIDO''' +
        '     WHEN ''FAT'' THEN ''FATURADO'''+
        '     WHEN ''DPA'' THEN ''DEPACHADO PARCIAL'''+
        '     END AS sitexp, u.usu_nome,'+
        '     datasit,'+
        '     observacao'+
      ' FROM HISTORICO_EXPE he JOIN USUARIO u ON (u.USU_CODIGO = he.usu_codigo)'+
        ' WHERE ped_codigo = ' + quotedstr(ped_codigo)  +
        ' and emp_codigo = '+QuotedStr(emp_codigo) +
      ' order by datasit desc ';
    cdsHistorico_sit.Open;

end;

procedure TFrmExpedicaoPedidos.buscaItem;
begin
  CdsBuscaItem.disablecontrols;
  try
      CdsBuscaItem.close;
      qBuscaItem.Sql.Clear;
      qBuscaItem.Sql.Add('select NF_NUM_NFE, it.prf_registro, it.ped_codigo, it.emp_codigo, it.prd_refer, prod.PRD_CODORIGINAL,  it.prf_prddescri, ');
      qBuscaItem.Sql.Add('CASE WHEN COALESCE((SELECT PRF_QTDE FROM PED_IT01 it2 WHERE it2.PRF_REGISTRO = it.PRF_REGISTRO_VINCULADO), 0) > 0 ');
      qBuscaItem.Sql.Add('  THEN (SELECT PRF_QTDE FROM PED_IT01 it2 WHERE it2.PRF_REGISTRO = it.PRF_REGISTRO_VINCULADO) * it.prf_qtde ');
      qBuscaItem.Sql.Add('  ELSE it.prf_qtde ');
      qBuscaItem.Sql.Add('END as prf_qtde, ');
      // qBuscaItem.Sql.Add('it.prf_qtde,');
      qBuscaItem.Sql.Add('it.PRF_QTDEFAT,  prod.prd_und, prod.prd_codbarra, ');
      qBuscaItem.Sql.Add('  it.PRF_QTDEPEND,PRF_QTDE_EXPEDIDOS ');
      qBuscaItem.Sql.Add('from ped_it01 as it');
      qBuscaItem.Sql.Add('     join prd0000 as prod on prod.prd_codigo = it.prd_codigo');
      qBuscaItem.Sql.Add('join ped0000 as p on (p.ped_codigo = it.ped_codigo and p.emp_codigo = it.emp_codigo)');
      qBuscaItem.sql.add( '     left join nf0001 as nf on (p.ped_codigo = nf.ped_codigo and p.emp_codigo = nf.emp_codigo AND nf.NF_STATUS_NFE <> ''C'' AND NF.NF_CANCELADA = ''N'')');
//        qBuscaItem.Sql.Add('Where it.ped_codigo = '+qStr(CdsBuscaPedidosPed_Codigo.asstring) );
//        qBuscaItem.Sql.Add(' and it.emp_codigo = '+QuotedStr(CdsBuscaPedidosemp_codigo.AsString));
     if DBInicio.Empresa.wPMT_EXPEDICAO_MULTIEMPRESA then
        qBuscaItem.Sql.Add('where p.EMP_CODIGO  in ('+fListaEmpresas.commatext+')')
      Else if dbInicio.Exclusivo('PEDIDOS') then
        qBuscaItem.Sql.Add('where p.emp_codigo = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO ))
      else 
        qBuscaItem.Sql.Add('where 1=1');       

      if dbinicio.Empresa.PMT_LIBERAR_EXPEDICAO = 'F' then
      begin
        if situacao = 'NAOEXP' then
          qBuscaItem.Sql.Add(' and  P.SITEXP NOT in ( ''PEN'', ''DEP'',''IMP'' )')
        else
        if situacao = 'FAT' then
         qBuscaItem.Sql.Add('and  P.SITEXP = ''FAT'' AND NF_SITEXPEDICAO = ''L'' ')
        else
        if Situacao <> '' then
          qBuscaItem.Sql.Add('and P.SITEXP =  ' +QuotedStr(SITUACAO) )
        else
         qBuscaItem.Sql.Add(' and NOT ( P.SITEXP = ' +QuotedStr('PEN')    +
                ' OR (P.SITEXP = ''FAT'' AND NF_SITEXPEDICAO = ''F'') )');



      end
      else
      begin
        if situacao = 'NAOEXP' then
          qBuscaItem.Sql.Add(' and  P.SITEXP NOT in ( ''PEN'', ''DEP'',''IMP'' )')
        else
        if Situacao <> '' then
          qBuscaItem.Sql.Add('and P.SITEXP = ' +QuotedStr(SITUACAO) )
        else
          qBuscaItem.Sql.Add('and P.SITEXP <> ' +QuotedStr('PEN') );
      end;
      if RxDatafinal.date<>0 then
       begin
            if RxDataFinal.Date< RxDataInicial.Date then
               RxDataInicial.Date:=RxDataFinal.Date ;
            qBuscaItem.Sql.Add( 'and p.ped_dtsaida <= '+DateToSql(RxDataFinal.Date));
       end;
       if RxDataInicial.date<>0 then
          qBuscaItem.Sql.Add( 'and p.ped_dtsaida >= '+DateToSql(RxDataInicial.Date));
      qBuscaItem.Sql.Add('ORDER BY it.emp_codigo, it.ped_codigo ');
      if DBInicio.IsDesenvolvimento then
        CopyToClipBoard(qBuscaItem.Sql.Text);

      CdsBuscaItem.open;
  finally
    CdsBuscaItem.enablecontrols;
  end;
end;

procedure TFrmExpedicaoPedidos.ButEtiquetadespacoClick(Sender: TObject);
var filtro: TStringList;
begin
  inherited;
   filtro := TStringList.Create;
  try
   filtro.Delimiter := ',';
   filtro.QuoteChar :=  ' ';
   if RxDataInicial.Date <> 0  then
     filtro.Add('Período : '+ DateToStr(RxDataInicial.Date) + ' até '+ DateToStr(RxDataFinal.Date))
   else
     filtro.Add('Filtros :');
   if ComboTransp.idRetorno <> '' then
     filtro.Add('Transportadora : '+ComboTransp.CDS.FieldByName('TRP_RAZAO').AsString);

    if situacao = 'LIB' then
     filtro.Add('liberados')
    else if situacao  = 'SEP' then
     filtro.Add('separados')
    else if situacao = 'FIN' then
     filtro.Add('finalizados')
    else if situacao = 'FAT' then
     filtro.Add('faturados')
    else if situacao = 'DEP' then
     filtro.Add('despachado')
    else if situacao = 'DPA' then
     filtro.Add('despachado parcial')
   else if situacao = 'IMP' then
     filtro.Add('impedidos')
   else
     filtro.Add('todas situações');



  finally
    TfrxMemoView (frxRomaneioDesp.FindObject('nomeempresa')).Text := DBInicio.Empresa.RAZAO;
    TfrxMemoView (frxRomaneioDesp.FindObject('filtro')).Text := filtro.DelimitedText;
    frxRomaneioDesp.ShowReport();

  end;


end;

procedure TFrmExpedicaoPedidos.ButEtiquetaDestinatarioClick(Sender: TObject);
begin
  inherited;
  if((CdsBuscaPedidosNF_NUM_NFE.AsString = '') and (CdsBuscaPedidosCLI_RAZAO.AsString = ''))  then
  begin
       uteis.aviso('Nenhum Pedido selecionado.');
  end
  else
  if(CdsBuscaPedidosPED_SITUACAO.AsString = 'F') then
  begin
       uteis.aviso('Pedido não faturado.');
  end
  else
  if (CdsBuscaPedidosNF_NUM_NFE.AsString = '0') then
  begin
       uteis.aviso('Revisar quantidade de volumes.');
       FrmEtiquetasExpedicao := TFrmEtiquetasExpedicao.Create(Application);
     try
       FrmEtiquetasExpedicao.EnderecoTransp := CdsBuscaPedidosTRP_ENDERE.AsString;
       FrmEtiquetasExpedicao.EstadoTransp := CdsBuscaPedidosTRP_UF.AsString;
       FrmEtiquetasExpedicao.CidadeTransp := CdsBuscaPedidosTRP_CIDADE.AsString;
       FrmEtiquetasExpedicao.CepTransp := CdsBuscaPedidosTRP_CEP.AsString;
       FrmEtiquetasExpedicao.CepCli := CdsBuscaPedidosCLI_CEP.AsString;
       FrmEtiquetasExpedicao.EstadoCli := CdsBuscaPedidosCLI_UF.AsString;
       FrmEtiquetasExpedicao.CidadeCli := CdsBuscaPedidosCLI_CIDADE.AsString;
       FrmEtiquetasExpedicao.EnderecoCli := CdsBuscaPedidosCLI_ENDERE.AsString;
       FrmEtiquetasExpedicao.FaxEmp := CdsBuscaPedidosEMP_FAX.AsString;
       FrmEtiquetasExpedicao.FoneEmp := CdsBuscaPedidosEMP_FONE.AsString;
       FrmEtiquetasExpedicao.BairroEmp := CdsBuscaPedidosEMP_BAIRRO.AsString;
       FrmEtiquetasExpedicao.EnderecoEmp := CdsBuscaPedidosEMP_ENDERE.AsString;
       FrmEtiquetasExpedicao.Situacao := CdsBuscaPedidosPED_SITUACAO.AsString;
       FrmEtiquetasExpedicao.Transp := CdsBuscaPedidosTRP_RAZAO.AsString;
       FrmEtiquetasExpedicao.Cli := CdsBuscaPedidosCLI_RAZAO.AsString;
       FrmEtiquetasExpedicao.Vol := CdsBuscaPedidosNF_QTDE.AsString;
       FrmEtiquetasExpedicao.NF := CdsBuscaPedidosNF_NUM_NFE.AsString;
       FrmEtiquetasExpedicao.dest := CdsBuscaPedidosCLI_CIDADE.asString;
       FrmEtiquetasExpedicao.emp := CdsBuscaPedidosEMP_FANTASIA.asString;
       FrmEtiquetasExpedicao.ShowModal;
     Finally
       FreeAndNil(FrmEtiquetasExpedicao);
     end;
  end
  else
  begin
    FrmEtiquetasExpedicao := TFrmEtiquetasExpedicao.Create(Application);
     try
       FrmEtiquetasExpedicao.EnderecoTransp := CdsBuscaPedidosTRP_ENDERE.AsString;
       FrmEtiquetasExpedicao.EstadoTransp := CdsBuscaPedidosTRP_UF.AsString;
       FrmEtiquetasExpedicao.CidadeTransp := CdsBuscaPedidosTRP_CIDADE.AsString;
       FrmEtiquetasExpedicao.CepTransp := CdsBuscaPedidosTRP_CEP.AsString;
       FrmEtiquetasExpedicao.CepCli := CdsBuscaPedidosCLI_CEP.AsString;
       FrmEtiquetasExpedicao.EstadoCli := CdsBuscaPedidosCLI_UF.AsString;
       FrmEtiquetasExpedicao.CidadeCli := CdsBuscaPedidosCLI_CIDADE.AsString;
       FrmEtiquetasExpedicao.EnderecoCli := CdsBuscaPedidosCLI_ENDERE.AsString;
       FrmEtiquetasExpedicao.FaxEmp := CdsBuscaPedidosEMP_FAX.AsString;
       FrmEtiquetasExpedicao.FoneEmp := CdsBuscaPedidosEMP_FONE.AsString;
       FrmEtiquetasExpedicao.BairroEmp := CdsBuscaPedidosEMP_BAIRRO.AsString;
       FrmEtiquetasExpedicao.EnderecoEmp := CdsBuscaPedidosEMP_ENDERE.AsString;
       FrmEtiquetasExpedicao.Situacao := CdsBuscaPedidosPED_SITUACAO.AsString;
       FrmEtiquetasExpedicao.Transp := CdsBuscaPedidosTRP_RAZAO.AsString;
       FrmEtiquetasExpedicao.Cli := CdsBuscaPedidosCLI_RAZAO.AsString;
       FrmEtiquetasExpedicao.Vol := CdsBuscaPedidosNF_QTDE.AsString;
       FrmEtiquetasExpedicao.NF := CdsBuscaPedidosNF_NUM_NFE.AsString;
       FrmEtiquetasExpedicao.dest := CdsBuscaPedidosCLI_CIDADE.asString;
       FrmEtiquetasExpedicao.emp := CdsBuscaPedidosEMP_FANTASIA.asString;
       FrmEtiquetasExpedicao.ShowModal;
     Finally
       FreeAndNil(FrmEtiquetasExpedicao);
     end;
  end;

end;

procedure TFrmExpedicaoPedidos.ButEtiquetaMateriaisClick(Sender: TObject);
begin
  inherited;
  FrmEtiquetasExpedicao2 := TFrmEtiquetasExpedicao2.Create(Application);
  try
    FrmEtiquetasExpedicao2.Pedido := CdsBuscaPedidosPED_CODIGO.AsString;
    FrmEtiquetasExpedicao2.emp := CdsBuscaPedidosemp_codigo.AsString;
    FrmEtiquetasExpedicao2.ShowModal;
  finally
    FreeAndNil(FrmEtiquetasExpedicao2);
  end;


end;

procedure TFrmExpedicaoPedidos.ButPesquisaClick(Sender: TObject);
var FlagWhere: boolean;
///                                                      -
   procedure sqladd( stt: string );
   begin
     if stt<>'' then
     begin
        if FlagWhere then
           qBuscaPedidos.sql.add( ' where '+stt )
        else
           qBuscaPedidos.sql.add( 'and '+stt );
        FlagWhere := False;
     end;
   end;
///
begin
  inherited;

  FlagWhere := True;
  CdsBuscaPedidos.Close;
  qBuscaPedidos.sql.clear;
  qBuscaPedidos.sql.add( 'select p.ped_codigo, p.ped_dtsaida, p.ped_vltotal_liq, p.ped_situacao, nf.NF_TOT_NOTA, ');
  qBuscaPedidos.sql.add( '       nf.nf_num_nfe, nf.nf_qtde, cli.cli_cgc, cli.cli_razao,p.emp_codigo,nf.NF_EMISSAO, CLI_FONE, ');
  qBuscaPedidos.sql.add( '       tipo.opv_descricao, rep.rep_nome, COALESCE(cidade,cli.cli_cidade) cli_cidade, COALESCE(estado,cli.CLI_UF) CLI_UF, cli.cli_bairro, trp.trp_razao, ');
  qBuscaPedidos.sql.add( '       trp.trp_fone, trp.trp_placa, pcx.pcx_descri, nf.nf_pesoliq, nf.nf_pesobru, nf.nf_placave, emp.emp_fantasia, p.SitExp, ' );
  qBuscaPedidos.sql.add( '       emp.emp_endere, emp.emp_bairro, emp.emp_fone, emp.emp_fax, cli.cli_endere, emp.emp_uf, cli.cli_uf, emp.emp_cep, cli.cli_cep, trp.trp_cep, trp.trp_cidade, trp.trp_uf, trp.trp_endere, ');
  qBuscaPedidos.sql.Add( ' (SELECT max(DATASIT) FROM HISTORICO_EXPE HP WHERE HP.PED_CODIGO = P.PED_CODIGO AND SITEXP = ''LIB'' ) ENTRADAEXP, PED_OBSERVACAO ');
  qBuscaPedidos.sql.add( 'from ped0000 as p');
  qBuscaPedidos.sql.add( '     join cli0000 as cli on cli.cli_codigo = p.cli_codigo');
  qBuscaPedidos.sql.add( '     join emp0000 as emp on emp.emp_codigo = p.emp_codigo');
  qBuscaPedidos.sql.add( '     left join nf0001 as nf on (p.ped_codigo = nf.ped_codigo and p.emp_codigo = nf.emp_codigo AND nf.NF_STATUS_NFE <> ''C'' AND NF.NF_CANCELADA = ''N'')');
  qBuscaPedidos.sql.add( '     left join ENDERECO en ON en.CODIGO =  p.ENDERECO_ENTREGA ');
  qBuscaPedidos.sql.add( '     left join opv0000 as tipo on tipo.opv_codigo = p.opv_codigo AND OPV_VENDA = ''S'' ');
  qBuscaPedidos.sql.add( '     left join rep0000 as rep on rep.rep_codigo = p.rep_codigo');
  qBuscaPedidos.sql.add( '     left join trp0000 as trp on trp.trp_codigo =  p.trp_codigo');
  qBuscaPedidos.sql.add( '     left join pcx0000 as pcx on pcx.pcx_codigo = p.pcx_codigo');
  FlagWhere := true;
  if DBInicio.Empresa.wPMT_EXPEDICAO_MULTIEMPRESA then
    SqlAdd('p.EMP_CODIGO  in ('+fListaEmpresas.commatext+')')
  Else  if dbInicio.Exclusivo('PEDIDOS') then
    SqlAdd(' p.EMP_CODIGO = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO));

  if dbinicio.Empresa.PMT_LIBERAR_EXPEDICAO = 'F' then
  begin
    if situacao = 'NAOEXP' then
     sqladd('  P.SITEXP NOT in ( ''PEN'', ''DEP'',''IMP'' )')
    else
    if situacao = 'FAT' then
     sqladd('  P.SITEXP = ''FAT'' AND NF_SITEXPEDICAO = ''L'' ')
    else
    if Situacao <> '' then
      sqladd(' P.SITEXP = ' +QuotedStr(SITUACAO) )
    else
     sqladd(' NOT ( P.SITEXP = ' +QuotedStr('PEN')    +
            ' OR (P.SITEXP = ''FAT'' AND NF_SITEXPEDICAO = ''F'') )');



  end
  else
  begin
    if situacao = 'NAOEXP' then
     sqladd('  P.SITEXP NOT in ( ''PEN'', ''DEP'',''IMP'','''' )')
    else
    if Situacao <> '' then
      sqladd(' P.SITEXP = ' +QuotedStr(SITUACAO) )
    else
      sqladd(' P.SITEXP <> ' +QuotedStr('PEN') );
  end;
  If (edtBuscaDireta.text<>'') then
  begin
       case cbbbuscadireta.ItemIndex of
         0:sqladd( 'P.PED_CODIGO = '+qStr(strzero(edtBuscaDireta.Text,6))); //PEDIDO
         1:sqladd( 'CLI.CLI_RAZAO LIKE '+qStr('%'+edtBuscaDireta.Text+'%')); //CLIENTE
         2:sqladd( 'REP.REP_NOME LIKE '+qStr('%'+edtBuscaDireta.Text+'%')); //VENDEDOR
         3:sqladd( 'CLI.CLI_BAIRRO LIKE '+qStr('%'+edtBuscaDireta.Text+'%')); //BAIRRO
         4:sqladd( 'CLI.CLI_CIDADE LIKE '+qStr('%'+edtBuscaDireta.Text+'%')); //CIDADE
       end;
  End
  Else
  Begin
       If (ComboTransp.text<>'') then
          sqladd( 'TRP.TRP_RAZAO LIKE '+qStr('%'+ComboTransp.Text+'%')); //TRANSPORTADORA
       if RxDatafinal.date<>0 then
       begin
            if RxDataFinal.Date< RxDataInicial.Date then
               RxDataInicial.Date:=RxDataFinal.Date ;
            sqladd( 'p.ped_dtsaida <= '+DateToSql(RxDataFinal.Date));
       end;
       if RxDataInicial.date<>0 then
          sqladd( 'p.ped_dtsaida >= '+DateToSql(RxDataInicial.Date));

  end;

  qBuscaPedidos.sql.add('order by p.ped_codigo desc');


  CdsBuscaPedidos.open;

  if PagPedido.ActivePage = tsExpedicao then
    buscaExpedicao;
end;

procedure TFrmExpedicaoPedidos.btnEstornoClick(Sender: TObject);
var tcr : tFrmBaseDbEstoque;
begin
  inherited;
  if not cdsexpedicaoEXP_CODIGO.IsNull then
  begin
      if cdsexpedicaoEXP_SITUACAO.AsString = 'C' then //já estornada
        raise Exception.Create('Expedição já estornada');
      if (MessageDlg('Deseja estorna a expedição nº '+IntToStr(cdsexpedicaoEXP_CODIGO.AsInteger), mtConfirmation, [mbYes, mbNo], 0) = mrNo) then exit;

      ExecSql('update expedicao set EXP_SITUACAO = '+QuotedStr('C')+ 'WHERE EXP_CODIGO = '+ IntToStr(cdsexpedicaoEXP_CODIGO.AsInteger));
      ExecSql(' INSERT INTO HISTORICO_EXPE (HIS_REGISTRO, EMP_CODIGO, SITEXP,DATASIT,USU_CODIGO, PED_CODIGO, OBSERVACAO) '+
         ' VALUES (GEN_ID(GEN_HIST_EXPE,1),' +QuotedStr(cdsexpedicaoemp_codigo.AsString) + ',  ''SEP'',CURRENT_TIMESTAMP,'+DBInicio.Usuario.CODIGO+
         ','+QuotedStr(cdsexpedicaoPED_CODIGO.AsString)  + ','+QuotedStr('ESTORNO DA SEPARACAO EXPEDIÇÃO Nº'+IntToStr(cdsexpedicaoEXP_CODIGO.AsInteger))+  ')');


      OpenAux('SELECT ped.prf_registro,prod.prd_codigo, prod.PRD_REFER, prod.PRD_DESCRI, it.EXI_QTDE, prod.PRD_UND, amx.AMX_CODIGO, AMX.AMX_DESCRI, PRF_FLAG_ATUALIZA_ESTOQUE    '+
              ' FROM EXPEDICAO_ITEM it                                               '+
              ' join PED_IT01 AS ped ON (ped.PRF_REGISTRO = it.PRF_REGISTRO)         '+
              ' join prd0000 as prod on (prod.PRD_CODIGO = PED.prd_codigo)           '+
              ' LEFT JOIN ALMOX0000 AS amx ON amx.AMX_CODIGO = ped.AMX_CODIGO_DESTINO '+
              ' WHERE EXP_CODIGO = '+IntToStr(cdsexpedicaoEXP_CODIGO.AsInteger));
     qAux.First;
     while not qAux.eof do
     begin
        ExecSql('update PED_IT01 set PRF_QTDE_EXPEDIDOS = PRF_QTDE_EXPEDIDOS - '+FloatToSQL(qAux.FieldByName('EXI_QTDE').AsFloat) +
           ' where prf_registro = '+IntToStr(qAux.FieldByName('prf_registro').asInteger  ) );


        if (dbInicio.Empresa.wAtualizaEstoque = 'E') AND (qAux.FieldByName('PRF_FLAG_ATUALIZA_ESTOQUE').AsString = 'S') then
        begin

          tcr := tFrmBaseDbEstoque.Create(nil);
          try
            tcr.KardexLancamento(IntToStr(cdsexpedicaoEXP_CODIGO.AsInteger),
                        'EXP',
                        qAux.FieldByName('AMX_CODIGO').AsString,
                        '',
                         qAux.FieldByName('PRD_CODIGO').AsString,
                        '',
                        '',
                        'E',
                        '',
                        '',
                        'ESTORNO NA EXPEDICAO',
                        Now,
                        qAux.FieldByName('EXI_QTDE').AsFloat,
                        IntToStr(cdsexpedicaoEXP_CODIGO.AsInteger),
                        '',
                        0,
                        '',
                        '',
                        '',
                        qAux.FieldByName('PRD_REFER').AsString);
                        ;
          finally
            tcr.free;
          end;
        end;
       qAux.Next;
     end;
    IF BuscaUmDadoSqlAsInteger('Select cast(count(*) as integer) as conta from    PED_IT01 WHERE PED_CODIGO = '+QuotedStr(cdsexpedicaoPED_CODIGO.AsString) +
                              ' AND EMP_CODIGO  = '+QuotedStr(cdsexpedicaoemp_codigo.AsString) +
                              ' AND PRF_QTDE <> PRF_QTDE_EXPEDIDOS  AND PRF_QTDE_EXPEDIDOS > 0 ')>0 Then
       //parcial
       ExecSql('update PED0000 set sitexp = '+QuotedStr('DPA') +
               ' WHERE PED_CODIGO = '+QuotedStr(cdsexpedicaoPED_CODIGO.AsString) +
               ' AND EMP_CODIGO  = '+QuotedStr(cdsexpedicaoemp_codigo.AsString) )
    else
       //nada foi despachado ainda
       ExecSql('update PED0000 set sitexp = '+QuotedStr('SEP') +
               ' WHERE PED_CODIGO = '+QuotedStr(cdsexpedicaoPED_CODIGO.AsString) +
               ' AND EMP_CODIGO  = '+QuotedStr(cdsexpedicaoemp_codigo.AsString) );
    ButPesquisa.Click;
    buscaExpedicao;
    BuscaExpedicaoItem;
    buscaItem;
  end;
end;

procedure TFrmExpedicaoPedidos.bitSituacaoClick(Sender: TObject);
var sit : TfrmHistoricoExpedicao;

begin
 if not CdsBuscaPedidos.IsEmpty then
 begin
   try
       sit := TfrmHistoricoExpedicao.create( self );
       sit.Pedido := CdsBuscaPedidos.FieldByName('PED_CODIGO').AsString;
       sit.Novo('Incluindo uma nova situação para pedido');
       //if sit.ModalResult = mrok then
        ButPesquisa.Click;
   finally
     FreeAndNil(sit);
   end;

 end;
end;

procedure TFrmExpedicaoPedidos.CdsBuscaPedidoscli_foneGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if sender.asstring <> '' then
  begin
    text := MascaraFone(sender.AsString);
    DisplayText:= true;
  end
  else
    text := '';
end;

procedure TFrmExpedicaoPedidos.CdsBuscaPedidosemp_codigoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
 Text :=  CdsBuscaPedidosemp_codigo.AsString + '-'+ copy (CdsBuscaPedidosEMP_FANTASIA.AsString,1,20);
end;

procedure TFrmExpedicaoPedidos.CdsBuscaPedidosTRP_FONEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if sender.asstring <> '' then
  begin
    text := MascaraFone(sender.AsString);
    DisplayText:= true;
  end
  else
    text := '';
end;

procedure TFrmExpedicaoPedidos.cdsexpedicaoemp_codigoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text :=  cdsexpedicaoemp_codigo.AsString + '-'+ copy (cdsexpedicaoEMP_FANTASIA.AsString,1,20);
end;

procedure TFrmExpedicaoPedidos.cdsexpedicaoEXP_SITUACAOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
 if Sender.AsString = 'F' then
   text:= 'Efetivado'
 else if Sender.AsString = 'C' then
   text := 'Estornado'
end;

procedure TFrmExpedicaoPedidos.cdsHistorico_sitobservacaoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := Sender.AsString;
end;

procedure TFrmExpedicaoPedidos.ComboTranspSelect(Sender: TObject);
begin
  inherited;
  edCodTransp.Text := ComboTransp.idRetorno;
  ButPesquisa.Click;
end;

procedure TFrmExpedicaoPedidos.cxGridDBTableView1CanFocusRecord(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; var AAllow: Boolean);
begin
  inherited;
  if NOT cdsexpedicao.IsEmpty then
    BuscaHistorico(cdsexpedicaoPED_CODIGO.AsString,cdsexpedicaoemp_codigo.AsString);
end;

procedure TFrmExpedicaoPedidos.cxGridPedidoDBTableView1CanFocusRecord(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; var AAllow: Boolean);
begin
  inherited;
  if NOT CdsBuscaPedidos.IsEmpty then
    BuscaHistorico(CdsBuscaPedidosPED_CODIGO.AsString,CdsBuscaPedidosemp_codigo.AsString);
end;

procedure TFrmExpedicaoPedidos.cxGridPedidoDBTableView1SITEXPCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var

  situacao : string;
begin
  situacao:=AViewInfo.Value;
  if situacao = 'LIB' then
     ImageList1.Draw(ACanvas.Canvas,AViewInfo.ClientBounds.Left, AViewInfo.ClientBounds.Top+1,0)
  else if situacao = 'SEP' then
    ImageList1.Draw(ACanvas.Canvas,AViewInfo.ClientBounds.Left,AViewInfo.ClientBounds.Top+1,1)
  else if situacao = 'FIN' then
     ImageList1.Draw(ACanvas.Canvas,AViewInfo.ClientBounds.Left,AViewInfo.ClientBounds.Top+1,2)
  else if situacao = 'FAT' then
     ImageList1.Draw(ACanvas.Canvas,AViewInfo.ClientBounds.Left,AViewInfo.ClientBounds.Top+1,3)
  else if situacao = 'DEP' then
     ImageList1.Draw(ACanvas.Canvas,AViewInfo.ClientBounds.Left,AViewInfo.ClientBounds.Top+1,4)
  else if situacao = 'IMP' then
    ImageList1.Draw(ACanvas.Canvas,AViewInfo.ClientBounds.Left,AViewInfo.ClientBounds.Top+1,5)
  else if situacao = 'DPA' Then
    ImageList1.Draw(ACanvas.Canvas,AViewInfo.ClientBounds.Left,AViewInfo.ClientBounds.Top+1,8) ;

  ADone:=True;


end;

procedure TFrmExpedicaoPedidos.cxGridPedidoDBTableView2PRF_QTDEPENDCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  qtde : integer;
begin
  inherited;
  If not VarIsNull(AViewInfo.Value) then
  begin
    qtde :=  AViewInfo.Value;
    if qtde > 0  then
      ACanvas.Font.Color := clRed;
    adone:= true;
  end;
end;

procedure TFrmExpedicaoPedidos.edCodTranspExit(Sender: TObject);
begin
  inherited;
  ComboTransp.idRetorno :=  edCodTransp.Text;
end;

procedure TFrmExpedicaoPedidos.edtBuscaDiretaEnter(Sender: TObject);
begin
  inherited;
  ACBrEnterTab1.EnterAsTab := False;
end;

procedure TFrmExpedicaoPedidos.edtBuscaDiretaExit(Sender: TObject);
begin
  inherited;
  ACBrEnterTab1.EnterAsTab := True;
end;

procedure TFrmExpedicaoPedidos.edtBuscaDiretaKeyPress(Sender: TObject; var Key: Char);
begin

  if (Key = #13) and  (edtBuscaDireta.Text <> '') then
  begin

   ButPesquisa.Click;
  end;
end;

end.

