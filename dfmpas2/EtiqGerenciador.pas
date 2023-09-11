unit EtiqGerenciador;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, SgDbSeachComboUnit, Vcl.StdCtrls, Data.FMTBcd, Vcl.ComCtrls, ACBrBase, ACBrEnterTab, Data.DB, Data.SqlExpr, Data.DBXFirebird, Vcl.Grids, Vcl.DBGrids,
  Datasnap.DBClient, Datasnap.Provider, Vcl.Buttons, Vcl.Samples.Spin, ppDB, ppComm, ppRelatv, ppDBPipe, ppParameter, ppDesignLayer, ppBands, ppBarCod, ppCtrls, ppPrnabl, ppClass, ppCache, ppProd,
  ppReport, ppStrtch, ppMemo, ACBrETQ, Vcl.Mask, RxToolEdit, ppTableGrid, ppPageBreak, ppBarCode2D, Vcl.DBCtrls, Vcl.Menus, BaseDBForm, Vcl.Imaging.jpeg, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid;

type
  TFrmGerenciadorEtiquetas = class(TfrmBaseDB)
    qTipoProduto: TSQLQuery;
    qGrupo: TSQLQuery;
    qLinha: TSQLQuery;
    PageControl1: TPageControl;
    TabSheetProdutos: TTabSheet;
    TabSheetClientes: TTabSheet;
    TabSheetFaturamento: TTabSheet;
    TabSheetEntradas: TTabSheet;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EdtTipo: TEdit;
    EdtGrupo: TEdit;
    EdtLinha: TEdit;
    cbTipo: TSgDbSearchCombo;
    CbGrupo: TSgDbSearchCombo;
    CBLinha: TSgDbSearchCombo;
		BitPesquisar: TBitBtn;
    qMeusProdutos: TSQLQuery;
    dspMeusProdutos: TDataSetProvider;
    CdsMeusProdutos: TClientDataSet;
    DsMeusProdutos: TDataSource;
    DbProdutoGrid: TDBGrid;
    GroupBox1: TGroupBox;
    RadNome: TRadioButton;
    RadRefer: TRadioButton;
    RadCodigoOriginal: TRadioButton;
    RadCodi_Cliente: TRadioButton;
    Gb_Estilo_Etiqueta: TGroupBox;
    rbModelo1: TRadioButton;
    rbModelo2: TRadioButton;
    BitImprimeEtiq: TBitBtn;
    BitEtiqFechar: TBitBtn;
    ppDBPEtiqProduto: TppDBPipeline;
    RaCodigoBarras: TRadioButton;
    RadGrade: TRadioButton;
    GbPesquisa: TGroupBox;
    Edt_Nome: TEdit;
    qMeusProdutosPRD_CODIGO: TStringField;
    qMeusProdutosPRD_REFER: TStringField;
    qMeusProdutosPRD_DESCRI: TStringField;
    qMeusProdutosPRD_UND: TStringField;
    qMeusProdutosPRD_CODBARRA: TStringField;
    qMeusProdutosPRD_CODORIGINAL: TStringField;
    qMeusProdutosPRG_DESCRICAO: TStringField;
    qMeusProdutosCLI_CODIGO: TStringField;
    qMeusProdutosPRDCO_DESCRICAO: TStringField;
		qMeusProdutosCLI_RAZAO: TStringField;
    CdsMeusProdutosPRD_CODIGO: TStringField;
    CdsMeusProdutosPRD_REFER: TStringField;
    CdsMeusProdutosPRD_DESCRI: TStringField;
    CdsMeusProdutosPRD_UND: TStringField;
    CdsMeusProdutosPRD_CODBARRA: TStringField;
    CdsMeusProdutosPRD_CODORIGINAL: TStringField;
    CdsMeusProdutosPRG_DESCRICAO: TStringField;
    CdsMeusProdutosCLI_CODIGO: TStringField;
    CdsMeusProdutosPRDCO_DESCRICAO: TStringField;
    CdsMeusProdutosCLI_RAZAO: TStringField;
    SqlCdsEtiqueta: TSQLQuery;
    CdsEtiqueta: TClientDataSet;
    DsEtiqueta: TDataSource;
    SqlCdsEtiquetaPRD_CODIGO: TStringField;
    SqlCdsEtiquetaPRD_REFER: TStringField;
    SqlCdsEtiquetaPRD_DESCRI: TStringField;
    SqlCdsEtiquetaPRD_UND: TStringField;
    SqlCdsEtiquetaPRD_CODBARRA: TStringField;
    SqlCdsEtiquetaPRD_CODORIGINAL: TStringField;
    SqlCdsEtiquetaPRG_DESCRICAO: TStringField;
    SqlCdsEtiquetaCLI_CODIGO: TStringField;
    SqlCdsEtiquetaPRDCO_DESCRICAO: TStringField;
    SqlCdsEtiquetaCLI_RAZAO: TStringField;
    sdpEtiqueta: TDataSetProvider;
    CdsEtiquetaPRD_CODIGO: TStringField;
    CdsEtiquetaPRD_REFER: TStringField;
    CdsEtiquetaPRD_DESCRI: TStringField;
    CdsEtiquetaPRD_UND: TStringField;
    CdsEtiquetaPRD_CODBARRA: TStringField;
		CdsEtiquetaPRD_CODORIGINAL: TStringField;
    CdsEtiquetaPRG_DESCRICAO: TStringField;
    CdsEtiquetaCLI_CODIGO: TStringField;
    CdsEtiquetaPRDCO_DESCRICAO: TStringField;
    CdsEtiquetaCLI_RAZAO: TStringField;
    ppDBPEtiqProdutoppField1: TppField;
    qMeusProdutosPRDL_LOTE: TStringField;
    CdsMeusProdutosPRDL_LOTE: TStringField;
    RadLote: TRadioButton;
    chkOcultarInativas: TCheckBox;
    TabShProducao: TTabSheet;
    rbModelo3: TRadioButton;
    rbModelo4: TRadioButton;
    ACBrETQ: TACBrETQ;
    SqlCdsEtiquetaPRDL_LOTE: TStringField;
    CdsEtiquetaPRDL_LOTE: TStringField;
    GroupEtiqExpedicao: TGroupBox;
    llote: TLabel;
    Label9: TLabel;
    lQuantidade: TLabel;
    lnomecliente: TLabel;
    ldataEmbalagem: TLabel;
    seCopias: TSpinEdit;
    EditNumLote: TEdit;
    SEditQtdeEmbalagem: TSpinEdit;
    EditNomecliente: TEdit;
    RxDataEmbalagem: TDateEdit;
    chkFixoI: TCheckBox;
    chkFixoII: TCheckBox;
    ppDBPEtiqProdutoppField4: TppField;
    pipModelo4: TppDBPipeline;
    prprtModelo4: TppReport;
    ppDetailBand5: TppDetailBand;
    ppDesignLayers6: TppDesignLayers;
    ppDesignLayer6: TppDesignLayer;
    ppParameterList6: TppParameterList;
    ppLine7: TppLine;
    prModelo3: TppReport;
    ppDetailBand2: TppDetailBand;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppParameterList2: TppParameterList;
    prprtModelo2: TppReport;
    ppDetailBand3: TppDetailBand;
    plempresaMod2: TppLabel;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppParameterList3: TppParameterList;
    ppLabel7: TppLabel;
    ppDBText6: TppDBText;
    ppDBMemo4: TppDBMemo;
    ppLabel9: TppLabel;
    ppquant: TppLabel;
    ppModelo1: TppReport;
    ppDetailBand4: TppDetailBand;
    ppDesignLayers4: TppDesignLayers;
    ppDesignLayer4: TppDesignLayer;
    ppParameterList4: TppParameterList;
    ppColumnHeaderBand4: TppColumnHeaderBand;
    ppColumnFooterBand4: TppColumnFooterBand;
    MOD1_PRD_REFER: TppDBMemo;
    ppDBMemo6: TppDBMemo;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label13: TLabel;
    ppLabel6: TppLabel;
    ppLote: TppDBText;
    ppLine8: TppLine;
    ppLabel5: TppLabel;
    pplDataEmbalagm_mod4: TppLabel;
    ppNomeCliente: TppDBText;
    pplquantidade: TppLabel;
    ppLabel4: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppPRD_PREFER_MOD4: TppDBText;
    ppLabel2: TppLabel;
    ppLine5: TppLine;
    ppllocal: TppLabel;
    pplrazaosocial: TppLabel;
    ppLabel1: TppLabel;
    ppLabel18: TppLabel;
    ppLabel17: TppLabel;
    ppLabel16: TppLabel;
    ppLine4: TppLine;
		ppLabel15: TppLabel;
    ppDB_CODIGO_MOD3: TppDBText;
    ppLabel14: TppLabel;
    ppDBText4: TppDBText;
    ppLine3: TppLine;
    ppLabel13: TppLabel;
    lquantidade1: TppLabel;
    ppNomecliente_mode3: TppDBText;
    bcDatEmbalagemMod3: TppBarCode;
    ppdataemb_mod3: TppLabel;
    ppLabel10: TppLabel;
    ppLine2: TppLine;
    ppBarCode6: TppBarCode;
    ppDBLote_Model3: TppDBText;
    ppLabel8: TppLabel;
    ppLine1: TppLine;
    ppLine6: TppLine;
    pplLocalcao_mode3: TppLabel;
    CdsMeusProdutosPRDE_ENDERECO: TStringField;
    CdsEtiquetaPRDE_ENDERECO: TStringField;
    ppBarCode8: TppBarCode;
    SqlCdsEtiquetaPRDE_ENDERECO: TStringField;
    qMeusProdutosPRDE_ENDERECO: TStringField;
    pptext_endereco: TppDBText;
    ppqcodecodigo: Tpp2DBarCode;
    pp2DBarCode_ENDE: Tpp2DBarCode;
    ppQR_data: Tpp2DBarCode;
    ppQR_Lote: Tpp2DBarCode;
    ppTEXT_ENDERECO_MOD4: TppDBText;
		ppLLocacaoModel4: TppLabel;
    CdsMeusProdutosSelecao: TBooleanField;
    PMMarcar: TPopupMenu;
    SelecionarTodas1: TMenuItem;
    DesmarcarTodas1: TMenuItem;
    ppDBMemo1: TppDBMemo;
    barcoderandomico2: TppDBBarCode;
    chkClienteNaoImprime: TCheckBox;
    CdsMeusProdutosQuantidade: TIntegerField;
    qMeusProdutosquantidade: TIntegerField;
    rbModelo6: TRadioButton;
    rbModelo5: TRadioButton;
    prModelo5: TppReport;
    ppDetailBand1: TppDetailBand;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel19: TppLabel;
    ppLine9: TppLine;
    ppLabel20: TppLabel;
    ppDBText1: TppDBText;
    ppLabel21: TppLabel;
    ppDBText3: TppDBText;
    ppLine10: TppLine;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    bcDatEmbalagemMod5: TppBarCode;
    dataemb_mod5: TppLabel;
    ppLabel25: TppLabel;
    ppLine11: TppLine;
    ppDBText7: TppDBText;
    ppLabel26: TppLabel;
    ppDBText8: TppDBText;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    prModelo6: TppReport;
    ppDetailBand6: TppDetailBand;
    ppLine13: TppLine;
    ppLabel28: TppLabel;
    ppDBText9: TppDBText;
    ppLine14: TppLine;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppDBText11: TppDBText;
    ppLabel33: TppLabel;
    ppDBText12: TppDBText;
    ppLabel34: TppLabel;
    ppLine15: TppLine;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLine16: TppLine;
    pp2DBarCode1: Tpp2DBarCode;
    pp2DBarCode3: Tpp2DBarCode;
    pp2DBarCode4: Tpp2DBarCode;
    ppDBText13: TppDBText;
    ppDesignLayers5: TppDesignLayers;
    ppDesignLayer5: TppDesignLayer;
    ppParameterList5: TppParameterList;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLabel27: TppLabel;
    ppDBText14: TppDBText;
    ppDBBarCode1: TppDBBarCode;
    ppDBBarCode2: TppDBBarCode;
    ppDBBarCode3: TppDBBarCode;
    ppDBBarCode4: TppDBBarCode;
    ppDBText5: TppDBText;
    ppDBText10: TppDBText;
    ppDBText15: TppDBText;
    ppLabel24: TppLabel;
    ppLine12: TppLine;
    ppDB2DBarCode1: TppDB2DBarCode;
    CdsMeusProdutosestoque: TFMTBCDField;
    qMeusProdutosestoque: TFMTBCDField;
    rbNovoModelo2: TRadioButton;
    rbModelo8: TRadioButton;
    prModelo8: TppReport;
    ppDetailBand8: TppDetailBand;
    ppLine19: TppLine;
    ppLabel40: TppLabel;
    ppDBText16: TppDBText;
    ppLine20: TppLine;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppDBText17: TppDBText;
    ppLabel45: TppLabel;
    ppDBText18: TppDBText;
    ppLabel46: TppLabel;
    ppLine21: TppLine;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLine22: TppLine;
    pp2DBarCode5: Tpp2DBarCode;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppLabel50: TppLabel;
    ppLine23: TppLine;
    ppDB2DBarCode2: TppDB2DBarCode;
    ppDesignLayers8: TppDesignLayers;
    ppDesignLayer8: TppDesignLayer;
    ppParameterList8: TppParameterList;
    ppDB2DBarCode3: TppDB2DBarCode;
    ppDB2DBarCode4: TppDB2DBarCode;
    ppNovoModelo2: TppReport;
    ppDetailBand7: TppDetailBand;
    ppDBMemo2: TppDBMemo;
    ppDBMemo3: TppDBMemo;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppDesignLayers7: TppDesignLayers;
    ppDesignLayer7: TppDesignLayer;
    ppParameterList7: TppParameterList;
    rbModelo9: TRadioButton;
    rbModelo10: TRadioButton;
    prModelo10: TppReport;
    ppDetailBand11: TppDetailBand;
    ppDBMemo11: TppDBMemo;
    ppDBBarCode8: TppDBBarCode;
    ppDesignLayers11: TppDesignLayers;
    ppDesignLayer11: TppDesignLayer;
    ppParameterList11: TppParameterList;
    prModelo9: TppReport;
    ppColumnHeaderBand2: TppColumnHeaderBand;
    ppDetailBand12: TppDetailBand;
    ppDBMemo13: TppDBMemo;
    ppDBMemo14: TppDBMemo;
    ppDBBarCode9: TppDBBarCode;
    ppColumnFooterBand2: TppColumnFooterBand;
    ppDesignLayers12: TppDesignLayers;
    ppDesignLayer12: TppDesignLayer;
    ppParameterList12: TppParameterList;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppColumnFooterBand1: TppColumnFooterBand;
    rbModelo11: TRadioButton;
    prModelo11: TppReport;
    ppDetailBand9: TppDetailBand;
    ppLabel47: TppLabel;
    ppDBText22: TppDBText;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel59: TppLabel;
    ppDBText26: TppDBText;
    ppLabel60: TppLabel;
    ppLine28: TppLine;
    ppDesignLayers9: TppDesignLayers;
    ppDesignLayer9: TppDesignLayer;
    ppParameterList9: TppParameterList;
    SqlCdsEtiquetaPRD_COMPL: TStringField;
    CdsEtiquetaPRD_COMPL: TStringField;
    qMeusProdutosPRD_COMPL: TStringField;
    CdsMeusProdutosPRD_COMPL: TStringField;
    ppDBBarCode6: TppDBBarCode;
    ppLabel51: TppLabel;
    ppDBText23: TppDBText;
    ppLabel52: TppLabel;
    ppDBText24: TppDBText;
    ppDBBarCode5: TppDBBarCode;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppDBText25: TppDBText;
    rbModelo12: TRadioButton;
    prModelo12: TppReport;
    ppDetailBand10: TppDetailBand;
    ppDesignLayers10: TppDesignLayers;
    ppDesignLayer10: TppDesignLayer;
    ppParameterList10: TppParameterList;
    ppColumnHeaderBand3: TppColumnHeaderBand;
    ppColumnFooterBand3: TppColumnFooterBand;
    ppLine24: TppLine;
    ppLabel55: TppLabel;
    ppDBText27: TppDBText;
    ppLine25: TppLine;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel61: TppLabel;
    ppDBText29: TppDBText;
    ppLabel62: TppLabel;
    ppModelo12PrdRefer: TppDBText;
    ppLabel63: TppLabel;
    ppLine26: TppLine;
    ppCidadeEstado: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLine27: TppLine;
    ppDBBarCode7: TppDBBarCode;
    rbModelo13: TRadioButton;
    prModelo13: TppReport;
    ppDetailBand13: TppDetailBand;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppDBText28: TppDBText;
    ppDBText30: TppDBText;
    ppLabel71: TppLabel;
    lQuantidade13: TppLabel;
    ppDataEmb_mod13: TppLabel;
    ppLabel74: TppLabel;
    ppDBText32: TppDBText;
    ppLabel75: TppLabel;
    ppDesignLayers13: TppDesignLayers;
    ppDesignLayer13: TppDesignLayer;
    ppParameterList13: TppParameterList;
    ppDBText34: TppDBText;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppMemo1: TppMemo;
    ppImage1: TppImage;
    ppImage2: TppImage;
    ppImage3: TppImage;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel73: TppLabel;
    ppLabel81: TppLabel;
    ppLabel72: TppLabel;
    ppLabel82: TppLabel;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    qMeusProdutosPRD_PESOLIQ: TFMTBCDField;
    qMeusProdutosPRD_PESOKG: TFMTBCDField;
    CdsMeusProdutosPRD_PESOLIQ: TFMTBCDField;
    CdsMeusProdutosPRD_PESOKG: TFMTBCDField;
    SqlCdsEtiquetaPRD_PESOLIQ: TFMTBCDField;
    SqlCdsEtiquetaPRD_PESOKG: TFMTBCDField;
    CdsEtiquetaPRD_PESOLIQ: TFMTBCDField;
    CdsEtiquetaPRD_PESOKG: TFMTBCDField;
    ppLabel64: TppLabel;
    lbEnderecoMod13: TppLabel;
    ppLogoMod13: TppImage;
    lbCEPmod13: TppLabel;
    lbFoneMod13: TppLabel;
    lbCnpjMod13: TppLabel;
    ppLabel76: TppLabel;
    ppShape3: TppShape;
    procedure cbTipoSelect(Sender: TObject);
    procedure CbGrupoSelect(Sender: TObject);
    procedure CBLinhaSelect(Sender: TObject);
    procedure BitPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitImprimeEtiqClick(Sender: TObject);
    procedure rbModelo4Click(Sender: TObject);
    procedure rbModelo1Click(Sender: TObject);
    procedure rbModelo2Click(Sender: TObject);
    procedure rbModelo3Click(Sender: TObject);
    procedure chkFixoIClick(Sender: TObject);
    procedure chkFixoIIClick(Sender: TObject);
    procedure BitEtiqFecharClick(Sender: TObject);
    procedure Edt_NomeExit(Sender: TObject);
    procedure pplFantasiaGetText(Sender: TObject; var Text: string);
    procedure pplrazaosocialGetText(Sender: TObject; var Text: string);
    procedure ppllocalGetText(Sender: TObject; var Text: string);
    procedure pplDataEmbalagm_mod4GetText(Sender: TObject; var Text: string);
    procedure ppBarCode4Print(Sender: TObject);
    procedure ppLoteGetText(Sender: TObject; var Text: string);
    procedure pplquantidadeGetText(Sender: TObject; var Text: string);
    procedure ppBarCode3Print(Sender: TObject);
    procedure plfoneGetText(Sender: TObject; var Text: string);
    procedure plempresaMod2GetText(Sender: TObject; var Text: string);
    procedure plempresaMod3GetText(Sender: TObject; var Text: string);
    procedure ppquantGetText(Sender: TObject; var Text: string);
    procedure ppBarCode8Print(Sender: TObject);
    procedure ppqcodecodigoPrint(Sender: TObject);
    procedure pp2DBarCode_ENDEPrint(Sender: TObject);
    procedure ppQR_dataPrint(Sender: TObject);
    procedure ppBarCode9Print(Sender: TObject);
    procedure ppBarCode6Print(Sender: TObject);
    procedure ppQR_LotePrint(Sender: TObject);
    procedure DbProdutoGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ppLLocacaoModel4Print(Sender: TObject);
    procedure pplLocalcao_mode3Print(Sender: TObject);
    procedure SelecionarTodas1Click(Sender: TObject);
    procedure DesmarcarTodas1Click(Sender: TObject);
    procedure DbProdutoGridCellClick(Column: TColumn);
    procedure ppNomeClienteGetText(Sender: TObject; var Text: string);
    procedure ppNomecliente_mode3GetText(Sender: TObject; var Text: string);
    procedure FormCreate(Sender: TObject);
    procedure BarCodeRamdomicoPrint(Sender: TObject);
    procedure ppBarCode1Print(Sender: TObject);
    procedure bar_REFER_MOD3Print(Sender: TObject);
    procedure bcDatEmbalagemMod3Print(Sender: TObject);
    procedure DbProdutoGridExit(Sender: TObject);
    procedure bcDatEmbalagemMod5Print(Sender: TObject);
    procedure CdsMeusProdutosSelecaoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure rbModelo9Click(Sender: TObject);
    procedure rbModelo10Click(Sender: TObject);
    procedure rbModelo5Click(Sender: TObject);
    procedure rbModelo8Click(Sender: TObject);
    procedure rbModelo6Click(Sender: TObject);
    procedure rbModelo13Click(Sender: TObject);
    procedure lbEnderecoMod13GetText(Sender: TObject; var Text: string);
    procedure lbCEPmod13GetText(Sender: TObject; var Text: string);
    procedure lbFoneMod13GetText(Sender: TObject; var Text: string);
    procedure lbCnpjMod13GetText(Sender: TObject; var Text: string);
    procedure ppLogoMod13Print(Sender: TObject);
 private
    { Private declarations }
    procedure AtivarACBrETQ ;
    procedure BuscaProduto;
    procedure BuscaProdutoET;
    procedure CarregarEtiquetas;

    procedure ImprimeReports(relatorio : TppReport);
    procedure seleciona;
    procedure selecionaVarios(Todos : boolean);
    function ValidaTemSelecionado: boolean;
    procedure opcoesEtiqueta (Expedicao : boolean);
	public
		{ Public declarations }
    wSql1, wSql2, wSql3, SQR3,  wSeleciona, wOrdem: string;

  end;

var
  FrmGerenciadorEtiquetas: TFrmGerenciadorEtiquetas;


Const
     STX = chr(2);
     CR  = chr(13);
     LF = chr(10);
     SOH = chr(1);

implementation

{$R *.dfm}

uses Uteis, InicioDB, Datacad, RwFunc;

procedure TFrmGerenciadorEtiquetas.AtivarACBrETQ ;
begin
	with ACBrETQ do
  begin
     Porta         := '\\127.0.0.1\Argox';

     LimparMemoria := True;

     Ativar ;
  end ;
end ;

procedure TFrmGerenciadorEtiquetas.BarCodeRamdomicoPrint(Sender: TObject);
begin
  inherited;
  TppBarCode(sender).Data :=  VarToStr(Trim(pipModelo4.Fields[pipModelo4.FindField('PRD_CODBARRA')].Value));
end;

procedure TFrmGerenciadorEtiquetas.bar_REFER_MOD3Print(Sender: TObject);
begin
  inherited;
  TppBarCode(sender).Data := (ppDB_CODIGO_MOD3.Text) ;
end;

procedure TFrmGerenciadorEtiquetas.BitEtiqFecharClick(Sender: TObject);
begin
  close;
end;

procedure TFrmGerenciadorEtiquetas.BitImprimeEtiqClick(Sender: TObject);
begin
   if not (rbModelo1.Checked or rbModelo2.Checked or
    rbModelo3.Checked or rbModelo4.Checked or rbModelo5.Checked or rbModelo6.Checked or rbNovoModelo2.Checked or
    rbModelo8.checked or rbModelo9.Checked or rbModelo10.Checked or rbModelo11.Checked or rbModelo12.Checked  or rbModelo13.Checked )	then
    begin
     uteis.erro ('Selecione um modelo');
     exit;
    end;
   if not ValidaTemSelecionado then
    begin
     uteis.erro ('Selecione pelo menos um produto');
     exit;
    end;


   if rbModelo1.Checked  then
     ImprimeReports(ppModelo1)
   else if rbModelo2.Checked  then
     ImprimeReports(prprtModelo2)
   else if rbModelo3.Checked then
     ImprimeReports(prModelo3)
   else if rbModelo4.Checked  then
    ImprimeReports(prprtModelo4)
   else if rbModelo5.Checked then
    ImprimeReports(prModelo5)
   else if rbModelo6.Checked then
    ImprimeReports(prModelo6)
   else if rbNovoModelo2.Checked then
    ImprimeReports(ppNovoModelo2)
   else if rbModelo8.Checked then
    ImprimeReports(prModelo8)
   else if rbModelo9.Checked then
    ImprimeReports(prModelo9)
   else if rbModelo10.Checked then
    ImprimeReports(prModelo10)
   else if rbModelo11.Checked then
    ImprimeReports(prModelo11)
   else if rbModelo12.Checked then
    ImprimeReports(prModelo12)
   else if rbModelo13.Checked then
    ImprimeReports(prModelo13)
    ;



end;


procedure  TFrmGerenciadorEtiquetas.CarregarEtiquetas;
 var cdsclone : TClientDataSet;
 i : Integer;
 valorram : string ;
 copias : integer;


begin
{ carregar todos os produtos na tabela de etiquetas conforme repetição }
 cdsclone := TClientDataSet.Create(Self);
 try
  if not (CdsEtiqueta.Active) then
    CdsEtiqueta.CreateDataSet;

  CdsEtiqueta.EmptyDataSet;
  cdsclone.CloneCursor(CdsMeusProdutos,false);
  cdsclone.Filtered := False;
  cdsclone.Filter := 'selecao = true';
  cdsclone.Filtered := True;
  cdsclone.First;
  while not cdsclone.Eof do
  begin
   //2000000042794    EAN13
  // codigo igual para mesmo produto quando ele se repete
  //pega o codigo do produto
  valorram := VarToStr(Trim(cdsclone.FieldByName('PRD_CODIGO').AsString));
  // copia umas 6 casas decimas     + um ramdomico 7 nume
  valorram :=  Copy(valorram,1,6)  +  IntToStr(Random(9999999)) ;
  while not (length(valorram) = 13) do
    valorram := '0'+  valorram;
    if cdsclone.FieldByName('Quantidade').AsInteger = 0  then
      copias := seCopias.Value
    else
      copias := cdsclone.FieldByName('Quantidade').AsInteger;

    for I := 1  to copias do
    begin
      CdsEtiqueta.Append;

      CdsEtiquetaPRD_CODIGO.AsInteger := cdsclone.FieldByName('PRD_CODIGO').AsInteger;;
      CdsEtiquetaPRD_COMPL.AsString:=cdsclone.FieldByName('PRD_COMPL').AsString;
      If DBInicio.EMPRESA.wPMT_UTILIZA_CODIGO_ORIG_VD then
        CdsEtiquetaPRD_REFER.AsString :=
                                       iif(cdsclone.FieldByName('PRD_CODORIGINAL').AsString<>'',
                                       cdsclone.FieldByName('PRD_CODORIGINAL').AsString,
                                       cdsclone.FieldByName('PRD_REFER').AsString)
      else
       CdsEtiquetaPRD_REFER.AsString :=   cdsclone.FieldByName('PRD_REFER').AsString;

      If DBInicio.EMPRESA.wPMT_UTILIZA_CODIGO_ORIG_VD then
        CdsEtiquetaPRD_DESCRI.AsString := iif(cdsclone.FieldByName('PRDCO_DESCRICAO').AsString<> '',
                                            cdsclone.FieldByName('PRDCO_DESCRICAO').AsString,
                                            cdsclone.FieldByName('PRD_DESCRI').AsString)
      else
        CdsEtiquetaPRD_DESCRI.AsString :=  cdsclone.FieldByName('PRD_DESCRI').AsString;

      CdsEtiquetaPRG_DESCRICAO.AsString:=cdsclone.FieldByName('PRG_DESCRICAO').AsString;

        //ramdomico
      if not(rbModelo9.Checked or rbModelo10.Checked)then
        CdsEtiquetaPRD_CODBARRA.AsString := valorram
      else
        CdsEtiquetaPRD_CODBARRA.AsString := cdsclone.FieldByName('PRD_CODBARRA').asString;

      CdsEtiquetaPRD_CODORIGINAL.AsString := cdsclone.FieldByName('PRD_CODORIGINAL').AsString;
      CdsEtiquetaPRDCO_DESCRICAO.AsString := cdsclone.FieldByName('PRDCO_DESCRICAO').AsString;
      CdsEtiquetaCLI_RAZAO.AsString :=   cdsclone.FieldByName('CLI_RAZAO').AsString;
      if chkFixoII.Checked then
        CdsEtiquetaPRDL_LOTE.AsString := EditNumLote.Text
      else
        CdsEtiquetaPRDL_LOTE.AsString := cdsclone.FieldByName('PRDL_LOTE').AsString;
      CdsEtiquetaPRDE_ENDERECO.AsString := cdsclone.FieldByName('PRDE_ENDERECO').AsString;

      CdsEtiquetaPRD_PESOLIQ.AsString := cdsclone.FieldByName('PRD_PESOLIQ').AsString;
      CdsEtiquetaPRD_PESOKG.AsString := cdsclone.FieldByName('PRD_PESOKG').AsString;

      CdsEtiqueta.Post;
    end;
  cdsclone.Next;
  end;
 finally
  FreeAndNil(cdsclone);
 end;


end;

procedure TFrmGerenciadorEtiquetas.ImprimeReports(relatorio: TppReport);
begin
  try
    CarregarEtiquetas;
	  relatorio.DeviceType := 'Screen';
    relatorio.Print;
  except
    on E : Exception do
    ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
  end;

end;

procedure TFrmGerenciadorEtiquetas.lbCEPmod13GetText(Sender: TObject; var Text: string);
begin
  inherited;
	text:= 'CEP:' + DBInicio.Empresa.CEP;
end;

procedure TFrmGerenciadorEtiquetas.lbCnpjMod13GetText(Sender: TObject; var Text: string);
begin
  inherited;
	text:= 'CNPJ: ' + DBInicio.Empresa.CNPJ_CNPF;
end;

procedure TFrmGerenciadorEtiquetas.lbEnderecoMod13GetText(Sender: TObject; var Text: string);
begin
  inherited;
	text:= DBInicio.Empresa.ENDERECO;
end;

procedure TFrmGerenciadorEtiquetas.lbFoneMod13GetText(Sender: TObject; var Text: string);
begin
  inherited;
	text:= 'Fone ' +  DBInicio.Empresa.FONE;
end;

procedure TFrmGerenciadorEtiquetas.opcoesEtiqueta(Expedicao: boolean);
begin
  if Expedicao then
    GroupEtiqExpedicao.Caption := 'Etiqueta expedição'
  else
   GroupEtiqExpedicao.Caption := 'Etiqueta';

  chkFixoI.Visible:= Expedicao;
  chkFixoII.Visible := Expedicao;
  chkClienteNaoImprime.Visible := Expedicao;
  EditNomecliente.Visible := Expedicao;
  lnomecliente.Visible := Expedicao;
  llote.Visible := Expedicao;
  ldataEmbalagem.Visible := Expedicao;
  RxDataEmbalagem.Visible:= Expedicao;
  lQuantidade.Visible:= Expedicao;
  SEditQtdeEmbalagem.Visible := Expedicao;
  EditNumLote.Visible := expedicao;

end;

procedure TFrmGerenciadorEtiquetas.ppQR_dataPrint(Sender: TObject);
begin
	Tpp2DBarCode(Sender).Data := RxDataEmbalagem.Text;
end;

procedure TFrmGerenciadorEtiquetas.ppQR_LotePrint(Sender: TObject);
begin
	Tpp2DBarCode(sender).Data := ppLote.Text;
end;

procedure TFrmGerenciadorEtiquetas.pp2DBarCode_ENDEPrint(Sender: TObject);
begin
	Tpp2DBarCode(Sender).Data :=  ppTEXT_ENDERECO_MOD4.Text;
end;

procedure TFrmGerenciadorEtiquetas.ppBarCode1Print(Sender: TObject);
begin
  inherited;
  TppBarCode(sender).Data
end;

procedure TFrmGerenciadorEtiquetas.ppBarCode3Print(Sender: TObject);
begin
 TppBarCode(sender).Data := ppLote.Text;
end;

procedure TFrmGerenciadorEtiquetas.ppBarCode4Print(Sender: TObject);
begin
	TppBarCode(sender).Data :=  ppDB_CODIGO_MOD3.Text;
end;

procedure TFrmGerenciadorEtiquetas.ppBarCode6Print(Sender: TObject);
begin
 TppBarCode(sender).Data:= ppDBLote_Model3.Text;
end;

procedure TFrmGerenciadorEtiquetas.bcDatEmbalagemMod3Print(Sender: TObject);
begin
  inherited;
   TppBarCode(Sender).Data:= ppdataemb_mod3.Text;
end;

procedure TFrmGerenciadorEtiquetas.bcDatEmbalagemMod5Print(Sender: TObject);
begin
  inherited;
  TppBarCode(sender).Data := RxDataEmbalagem.Text
end;

procedure TFrmGerenciadorEtiquetas.ppBarCode8Print(Sender: TObject);
begin
	TppBarCode(sender).Data := pptext_endereco.Text;
end;

procedure TFrmGerenciadorEtiquetas.ppBarCode9Print(Sender: TObject);
begin
 Tpp2DBarCode(Sender).Data := '777';//trim(ppDB_CODIGO_MOD3.Text);
end;

procedure TFrmGerenciadorEtiquetas.pplLocalcao_mode3Print(Sender: TObject);
begin
 if  not (pptext_endereco.Text = '') then
  TppLabel(sender).Text := 'Locação: ' +pptext_endereco.Text;
 TppLabel(sender).Visible := not (pptext_endereco.Text = '')
end;

procedure TFrmGerenciadorEtiquetas.ppLLocacaoModel4Print(Sender: TObject);
begin
  if not (ppTEXT_ENDERECO_MOD4.Text = '') then
   TppLabel(sender).Text :=  'Locação: '+ ppTEXT_ENDERECO_MOD4.Text;
  TppLabel(sender).Visible := not (ppTEXT_ENDERECO_MOD4.Text = '');

end;

procedure TFrmGerenciadorEtiquetas.plempresaMod2GetText(Sender: TObject; var Text: string);
begin
 Text:= Copy(DBInicio.Empresa.FANTASIA,1,15);
end;

procedure TFrmGerenciadorEtiquetas.plempresaMod3GetText(Sender: TObject; var Text: string);
begin
   Text:= Copy(DBInicio.Empresa.FANTASIA,1,15);
end;


procedure TFrmGerenciadorEtiquetas.plfoneGetText(Sender: TObject; var Text: string);
begin
  text := DBInicio.Empresa.FONE + '-'+ DBInicio.Empresa.FAX
end;

procedure TFrmGerenciadorEtiquetas.ppNomeClienteGetText(Sender: TObject; var Text: string);
begin
    if not chkClienteNaoImprime.Checked then
    begin
      if chkFixoI.Checked then
        Text:= EditNomecliente.Text
      else
        Text := Text;
    end
    else
        Text:= '';
end;

procedure TFrmGerenciadorEtiquetas.ppNomecliente_mode3GetText(Sender: TObject; var Text: string);
begin
    if not chkClienteNaoImprime.Checked then
    begin
     if chkFixoI.Checked then
      text := EditNomecliente.Text
     else
      text := Text;
    end
    else
      Text:= ''
end;

procedure TFrmGerenciadorEtiquetas.ppqcodecodigoPrint(Sender: TObject);
begin
  Tpp2DBarCode(Sender).Data := ppPRD_PREFER_MOD4.Text;
end;

procedure TFrmGerenciadorEtiquetas.ppquantGetText(Sender: TObject; var Text: string);
begin
  text := SEditQtdeEmbalagem.Text;
end;

procedure TFrmGerenciadorEtiquetas.rbModelo13Click(Sender: TObject);
begin
  inherited;
  opcoesEtiqueta(True);
  ldataEmbalagem.Caption := 'Data de Fabricação';
  lQuantidade.Caption := 'Volumes';
  chkFixoII.Visible := True;
  chkFixoII.Enabled := True;
  chkFixoII.Checked := True;
  EditNumLote.Text := '';
end;

procedure TFrmGerenciadorEtiquetas.ppLogoMod13Print(Sender: TObject);
begin
  inherited;
  TppImage(Sender).picture.assign(dbInicio.Empresa.Logo);
end;

procedure TFrmGerenciadorEtiquetas.ppLoteGetText(Sender: TObject; var Text: string);
begin
  if chkFixoII.Checked then
          Text := EditNumLote.Text
  else
  if pipModelo4.FieldAliasForFieldName('PRDL_LOTE').IsEmpty then
          text := ''
  else
    Text := Text;
end;

procedure TFrmGerenciadorEtiquetas.pplDataEmbalagm_mod4GetText(Sender: TObject; var Text: string);
begin
  if (RxDataEmbalagem.Text = '') or not IsDate(RxDataEmbalagem.text) then
    text := ''
  else
    text:= RxDataEmbalagem.Text;
end;

procedure TFrmGerenciadorEtiquetas.pplFantasiaGetText(Sender: TObject; var Text: string);
begin
	text:= Copy(DBInicio.Empresa.FANTASIA,1,15);
end;

procedure TFrmGerenciadorEtiquetas.ppllocalGetText(Sender: TObject; var Text: string);
begin
	text:= DBInicio.Empresa.CIDADE + '-' + DBInicio.Empresa.UF;
end;

procedure TFrmGerenciadorEtiquetas.pplquantidadeGetText(Sender: TObject; var Text: string);
begin
	Text:= SEditQtdeEmbalagem.Text;
end;

procedure TFrmGerenciadorEtiquetas.pplrazaosocialGetText(Sender: TObject; var Text: string);
begin
	Text:= DBInicio.Empresa.RAZAO;
end;

procedure TFrmGerenciadorEtiquetas.rbModelo10Click(Sender: TObject);
begin
  inherited;
  opcoesEtiqueta(False);
end;

procedure TFrmGerenciadorEtiquetas.rbModelo1Click(Sender: TObject);
begin
	opcoesEtiqueta(False);
end;

procedure TFrmGerenciadorEtiquetas.rbModelo2Click(Sender: TObject);
begin
	opcoesEtiqueta(True);
end;

procedure TFrmGerenciadorEtiquetas.rbModelo3Click(Sender: TObject);
begin
	opcoesEtiqueta(True);

end;

procedure TFrmGerenciadorEtiquetas.rbModelo4Click(Sender: TObject);
begin
	opcoesEtiqueta(True);
end;

procedure TFrmGerenciadorEtiquetas.rbModelo5Click(Sender: TObject);
begin
  inherited;
  opcoesEtiqueta(True);
end;

procedure TFrmGerenciadorEtiquetas.rbModelo6Click(Sender: TObject);
begin
  inherited;
  opcoesEtiqueta(True);
end;

procedure TFrmGerenciadorEtiquetas.rbModelo8Click(Sender: TObject);
begin
  inherited;
  opcoesEtiqueta(True);
end;

procedure TFrmGerenciadorEtiquetas.rbModelo9Click(Sender: TObject);
begin
  inherited;
  opcoesEtiqueta(False);
end;

procedure TFrmGerenciadorEtiquetas.seleciona;
begin
   if (not CdsMeusProdutos.IsEmpty) then
   begin
     CdsMeusProdutos.Edit;
     CdsMeusProdutos.FieldByName('selecao').AsBoolean := not CdsMeusProdutos.FieldByName('selecao').AsBoolean;
     CdsMeusProdutos.Post;
     DbProdutoGrid.SelectedIndex := 1;
   end;
end;

procedure TFrmGerenciadorEtiquetas.SelecionarTodas1Click(Sender: TObject);
begin
	selecionaVarios(true);
end;

procedure TFrmGerenciadorEtiquetas.selecionaVarios(Todos: boolean);
var cdsclone : TClientDataSet;
begin
  cdsclone := TClientDataSet.Create(Self);
  try
          cdsclone.CloneCursor(CdsMeusProdutos,false);
          cdsclone.First;
          while not cdsclone.Eof do
          begin
                  cdsclone.Edit;
                  cdsclone.FieldByName('selecao').AsBoolean := Todos;
                  cdsclone.Post;
                  cdsclone.Next;
          end;

  finally
          FreeAndNil(cdsclone);
  end;
end;


function TFrmGerenciadorEtiquetas.ValidaTemSelecionado: boolean;
var cdsclone : TClientDataSet;
begin
  cdsclone := TClientDataSet.Create(Self);
  try
          cdsclone.CloneCursor(CdsMeusProdutos,false);
          cdsclone.First;
          cdsclone.Filtered:=False;
          cdsclone.Filter:= '';
          cdsclone.Filter := 'selecao = true';
          cdsclone.Filtered:= True;
          result := cdsclone.RecordCount > 0;
  finally
          FreeAndNil(cdsclone);
  end;
end;

procedure TFrmGerenciadorEtiquetas.BitPesquisarClick(Sender: TObject);
begin
 //BuscaProduto;
 BuscaProdutoET
end;

procedure TFrmGerenciadorEtiquetas.CbGrupoSelect(Sender: TObject);
begin
  inherited;
  EdtGrupo.Text := cbGrupo.idRetorno;
end;

procedure TFrmGerenciadorEtiquetas.CBLinhaSelect(Sender: TObject);
begin
 inherited;
 EdtLinha.Text := CbLinha.idRetorno;

end;

procedure TFrmGerenciadorEtiquetas.cbTipoSelect(Sender: TObject);
begin
  inherited;
  EdtTipo.Text := CBtIPO.idRetorno;
end;


procedure TFrmGerenciadorEtiquetas.CdsMeusProdutosSelecaoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text:= EmptyStr;
end;

procedure TFrmGerenciadorEtiquetas.chkFixoIClick(Sender: TObject);
begin
   if chkFixoI.checked then
   begin
      EditNomecliente.Enabled := True;
      EditNomecliente.color   := ClWindow;
   end
   else
    begin
      EditNomecliente.Enabled := False;
      EditNomecliente.color   := clSilver;
    end;

end;

procedure TFrmGerenciadorEtiquetas.chkFixoIIClick(Sender: TObject);
begin
	 if chkFixoII.checked then
		 begin
				EditNumLote.Enabled := True;
				EditNumLote.color   := ClWindow;
		 end
	 else
		 begin
				EditNumLote.Enabled := False;
				EditNumLote.color   := clSilver;
		 end;

end;


procedure TFrmGerenciadorEtiquetas.DbProdutoGridCellClick(Column: TColumn);
begin
	if Column.FieldName = 'Selecao' then
		seleciona;
end;

procedure TFrmGerenciadorEtiquetas.DbProdutoGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
	 Check: Integer;
	 R: TRect;
begin
	if CdsMeusProdutos.Active and not CdsMeusProdutos.IsEmpty then
	begin
		if column.FieldName = 'Selecao' then
		begin

			DbProdutoGrid.Canvas.FillRect(Rect);
			Check := 0;
			if CdsMeusProdutosSelecao.AsBoolean then
				Check := DFCS_CHECKED
			else
				Check := 0;
			R:=Rect;
			DbProdutoGrid.Canvas.Font.Color :=  TDBGrid(sender).Canvas.Brush.Color;
			InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
			DrawFrameControl(DbProdutoGrid.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
		end

	end;

end;

procedure TFrmGerenciadorEtiquetas.DbProdutoGridExit(Sender: TObject);
begin
  inherited;
  if CdsMeusProdutos.State  in dsEditModes then
    CdsMeusProdutos.Post;
end;

procedure TFrmGerenciadorEtiquetas.DesmarcarTodas1Click(Sender: TObject);
begin
	selecionaVarios(false);
end;

procedure TFrmGerenciadorEtiquetas.Edt_NomeExit(Sender: TObject);
begin
	BitPesquisar.Click;
end;

procedure TFrmGerenciadorEtiquetas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 cdsMeusProdutos.close;
end;

procedure TFrmGerenciadorEtiquetas.FormCreate(Sender: TObject);
begin
	self.Height := 514;
	self.Width := 1064;

  self.Constraints.MinHeight := 514;
  self.Constraints.MinWidth := 1064;


end;

procedure TFrmGerenciadorEtiquetas.FormShow(Sender: TObject);
begin
	 BuscaProdutoET;
	 // tab não estão prontas

	 TabSheetClientes.TabVisible := False;
	 TabSheetFaturamento.TabVisible := False;
	 TabSheetEntradas.TabVisible := False;
	 TabShProducao.TabVisible := False;
   DbProdutoGrid.SelectedIndex := 1;
end;

procedure TFrmGerenciadorEtiquetas.BuscaProduto;
begin

		 try

			 wSql1 := 'Select T1.PRD_COMPL, T1.PRD_CODIGO,T1.PRD_REFER,T1.PRD_DESCRI,T1.PRD_UND,T1.PRD_CODBARRA,T5.prdco_codigo_original as PRD_CODORIGINAL,T4.PRG_DESCRICAO,T5.cli_codigo,T5.prdco_descricao,T6.cli_razao,'+
			 ' t7.PRDL_LOTE, t8.prde_endereco, '+
       '( SELECT SUM(kas_saldo) '+
        ' FROM kardex_almox_saldo '+
         'WHERE prd_codigo = t1.prd_codigo '+
        ConcatSe (' and ',dbInicio.ExclusivoSql('ESTOQUES') )+') Estoque '+
       ' from PRD0000 T1';
			 wSql2 := ' left join PRD_TIPO T2 ON (T2.PTI_CODIGO = T1.PTI_CODIGO) left join PRD_GRUPO T3 on (t3.pgr_codigo = t1.pgr_codigo) Left join PRD_GRADE T4 (T4.prd_codigo = t1.prd_codigo)';
			 wSql3 := ' left join prd_codigooriginal T5 on (T5.prd_codigo = T1.prd_codigo) left join cli0000 T6 on (t6.cli_codigo = t5.cli_codigo) left join PRD_LOTE T7 on (t7.prd_codigo = t1.prd_codigo)';
			 Wsql4 := ' left join PRD0000_ENDERECAMENTO t8 on (T8.prde_registro = t1.prde_registro) ';
			 wSeleciona := '';
			 wOrdem := 'T1.PRD_REFER';

			 cdsMeusProdutos.Close;
			 cdsMeusProdutos.CommandText := SQLDEF('PRODUTOS', wSql1 + wSql2 + wSql3, wSeleciona, wOrdem, 'T1.');
       cdsMeusProdutos.Open;

     Finally
     end;
end;

procedure TFrmGerenciadorEtiquetas.BuscaProdutoET;
var whe : boolean;
		wOrdem: string;

	 procedure sqladd( stt: string );
	 begin
				if stt<>'' then
				begin
						if whe then
							 qMeusProdutos.sql.add( ' where '+stt )
						Else
							 qMeusProdutos.sql.add( ' and '+stt );

						whe := False;
				end;
	 end;
///
begin
		 whe := True;
		 CdsMeusProdutos.DisableControls;
		 try
				CdsMeusProdutos.Close;
				 with  qMeusProdutos, SQL  do
				 begin

					text := '';
					ADD( 'Select  T1.PRD_COMPL, T1.PRD_CODIGO,');
					ADD( '        T1.PRD_REFER,');
					ADD( '        T1.PRD_DESCRI,');
					ADD( '        T1.PRD_UND,');
					ADD( '        T1.PRD_CODBARRA,');
					ADD( '        T1.PRD_PESOLIQ,');
					ADD( '        T1.PRD_PESOKG,');
					ADD( '        T5.prdco_codigo_original as PRD_CODORIGINAL,');
					ADD( '        T4.PRG_DESCRICAO,');
					ADD( '        T5.cli_codigo,');
					ADD( '        T5.prdco_descricao,');
					ADD( '        T6.cli_razao,');
					ADD( '        t7.PRDL_LOTE,');
					Add( '        t8.prde_endereco, ');
          Add( '        0 as quantidade, ');
          aDD('( SELECT SUM(kas_saldo) '+
              ' FROM kardex_almox_saldo '+
               'WHERE prd_codigo = t1.prd_codigo '+
              ConcatSe (' and ',dbInicio.ExclusivoSql('ESTOQUES') )+') Estoque ');
					ADD( 'from PRD0000 t1 ');
					// qMeusProdutos.sql.ADD( '     left join PRD_TIPO T2 ON (T2.PTI_CODIGO = T1.PTI_CODIGO)');
					// qMeusProdutos.sql.ADD( '     left join PRD_GRUPO T3 on (t3.pgr_codigo = t1.pgr_codigo)');
					ADD( '     Left join PRD_GRADE T4 on (T4.prd_codigo = t1.prd_codigo)');
					ADD( '     left join prd_codigooriginal T5 on (T5.prd_codigo = T1.prd_codigo)');
					ADD( '     left join cli0000 T6 on (t6.cli_codigo = t5.cli_codigo)');
					ADD( '     left join PRD_LOTE T7 on (t7.prd_codigo = t1.prd_codigo)');
					ADD( '     left join PRD0000_ENDERECAMENTO t8 on (T8.prde_registro = t1.prde_registro) ');

				 end ;
				 wOrdem := 'PRD_REFER';

				 if RadNome.checked then
				 begin
							SqlAdd( CampoSql ( 't1.PRD_DESCRI' , Edt_Nome.Text) );
							wOrdem := 'PRD_DESCRI';
				 end
				 else
				 if RadRefer.checked then
						SqlAdd( CampoSql ( 't1.PRD_REFER' , Edt_Nome.Text) )
				 else
				 if RadCodigoOriginal.checked then
						SqlAdd( CampoSql( 't5.PRDCO_CODIGO_ORIGINAL',Edt_Nome.Text) )
				 else
				 if RadCodi_Cliente.checked then
						SqlAdd( CampoSql( 'T5.cli_codigo',Edt_Nome.Text) )
				 else
				 if RadLote.checked then
						SqlAdd( CampoSql( 't7.PRDL_LOTE',Edt_Nome.Text) )
				 else
				 if RaCodigoBarras.checked then
						SqlAdd( CampoSql( 'T1.PRD_CODBARRA',Edt_Nome.Text) )
				 ELSE
				 if RadGrade.checked then
						SqlAdd( CampoSql( 'T4.PRG_DESCRICAO',Edt_Nome.Text) );

				 // defini-se Where na funcao SqlAdd
				 if (cbTipo.IdRetorno<> '') then
						SqlAdd( CampoSql( 'PTI_CODIGO',cbTipo.IdRetorno) );
				 if (cbGrupo.IdRetorno<> '') then
						SqlAdd( CampoSql( 'PGR_CODIGO', cbGrupo.IdRetorno ));
				 if (cbLinha.IdRetorno <> '') then
						SqlAdd( CampoSql( 't1.LIN_CODIGO', cbLinha.IdRetorno));

				 if (chkOcultarInativas.checked) then
						SqlAdd( 't1.PRD_STATUS = '+qStr('A') );

				 sqladd( ConcatSE( 't1.',dbInicio.ExclusivoSql( 'PRODUTOS') ) );

				qMeusProdutos.sql.ADD('order by '+wordem );

        if DBInicio.IsDesenvolvimento then
          CopyToClipBoard(qMeusProdutos.sql.text);
        CdsMeusProdutos.Open;
		 Finally
				CdsMeusProdutos.EnableControls;
		 end;

		 DbProdutoGrid.SetFocus;
end;





end.
