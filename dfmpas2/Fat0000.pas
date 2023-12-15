unit Fat0000;

interface

uses
  blcksock,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, BaseDbEstoqueForm,
  Dialogs, StdCtrls, Buttons,  rxToolEdit, ExtCtrls, Mask,  rxCurrEdit, Grids,
  DBGrids, ComCtrls, DBCtrls,RwFunc, Provider, SqlExpr, DB, DBClient, ClipBrd,
  DBLocal, DBLocalS, RDprint,ImgList,math, DateUtils,
  StrUtils,  System.ImageList, Data.DBXFirebird, Data.FMTBCd,
  SgDbSeachComboUnit, ACBrEnterTab, ACBrBase, ACBrCalculadora, BaseForm, ComboBoxRW, BaseDBForm,
   ACBrETQ, Vcl.Menus, JvMenus, uProcessarNF, pcnconversaoNFE, ACBrDFe, ACBrNFe, nfe40_main, ACBrDANFCeFortesFr, ACBrDANFCeFortesFrA4, ACBrNFeDANFeRLClass, ACBrNFeDANFEFRDM, ACBrNFeDANFEClass,
  ACBrNFeDANFEFR, vcl.imaging.jpeg, JvExControls, JvArrowButton, upedido, AcbrDFeSSL, frxClass, frxBarcode, frxDBSet, Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc, ACBrNFeDANFeESCPOS, ACBrDFeReport,
  ACBrDFeDANFeReport, JvExMask, JvToolEdit, PesquisaClientesForm;

type
  TFormFaturamento = class(TfrmBaseDbEstoque)
    CdsPedidos: tClientDataSet;
    DsPedidos: TDataSource;
    CdsItemPedido: tClientDataSet;
    DsItemPedido: TDataSource;
    CdsItemNota: tClientDataSet;
    DsItemNota: TDataSource;
    DsNotas: TDataSource;
    CdsNotas: TClientDataSet;
    qNotas: TSQLQuery;
    dspNotas: TDataSetProvider;
    DsNfeParce: TDataSource;
    CdsNfeParce: TClientDataSet;
    DspNfeParce: TDataSetProvider;
    SqlNFeParce: TSQLQuery;
    SqlPedidos: TSQLQuery;
    DspPedidos: TDataSetProvider;
    sqlItemPedido: TSQLQuery;
    DspItemPedido: TDataSetProvider;
    SqlItemNota: TSQLQuery;
    dspItemNota: TDataSetProvider;
    CdsPedidosPED_OBSERVACAO_NOTA: TBlobField;
    CdsPedidosPED_STATUS_ANALISE_CREDITO: TStringField;
    CdsPedidosPED_CODIGO: TStringField;
    CdsPedidosPED_DTENTRADA: TSQLTimeStampField;
    CdsPedidosPED_VLTOTAL_BRUTO: TFMTBCdField;
    CdsPedidosPED_SITUACAO: TStringField;
    CdsPedidosCLI_CODIGO: TStringField;
    CdsPedidosCLI_RAZAO: TStringField;
    CdsPedidosCLI_CIDADE: TStringField;
    CdsPedidosCLI_UF: TStringField;
    CdsItemPedidoPRD_REFER: TStringField;
    CdsItemPedidoPRF_PRDDESCRI: TStringField;
    CdsItemPedidoPRF_QTDE: TFMTBCdField;
    CdsItemPedidoPRF_QTDEFAT: TFMTBCdField;
    CdsItemPedidoPRF_PRECO: TFMTBCdField;
    CdsItemPedidoPRF_IPIALIQ: TFMTBCdField;
    CdsItemPedidoPRD_PRODSERV: TStringField;
    CdsItemPedidoPRF_TOTAL_CC: TCurrencyField;
    CdsItemPedidocc_id: TIntegerField;
    CdsNotasNF_NUM_NFE: TIntegerField;
    CdsNotasNF_CANCELADA: TStringField;
    CdsNotasNF_EMISSAO: TDateField;
    CdsNotasNF_NOTANUMBER: TStringField;
    CdsNotasCLI_RAZAO: TStringField;
    CdsNotasNF_TOT_NOTA: TFMTBCdField;
    CdsNotasNF_TOT_PROD: TFMTBCdField;
    CdsNotasNF_IMPRESS: TStringField;
    CdsNotasNF_SELECAO: TIntegerField;
    CdsNotasPED_CODIGO: TStringField;
    CdsNotasOPE_NATUREZA: TStringField;
    CdsNotasNF_ENTR_SAID: TStringField;
    CdsNotasNF_BASEICMS: TFMTBCdField;
    CdsNotasNF_VL_ICMS: TFMTBCdField;
    CdsNotasNF_VLBASESUBTRIB: TFMTBCdField;
    CdsNotasNF_VL_SUBTRIB: TFMTBCdField;
    CdsNotasNF_VLFRETE: TFMTBCdField;
    CdsNotasNF_VLSEGURO: TFMTBCdField;
    CdsNotasNF_DESP_ACES: TFMTBCdField;
    CdsNotasNF_VL_IPI: TFMTBCdField;
    CdsNotasNF_VL_DESCTO: TFMTBCdField;
    CdsNotasNF_COMPLEMENTAR: TStringField;
    CdsItemNotaPRD_REFER: TStringField;
    CdsItemNotaPRDCO_CODIGO_ORIGINAL: TStringField;
    CdsItemNotaPRD_DESCRI: TStringField;
    CdsItemNotaSTB_TRIBUTACAO: TStringField;
    CdsItemNotaIPI_CODIGO: TStringField;
    CdsItemNotaNF_QTDE: TFMTBCdField;
    CdsItemNotaNF_PRECO: TFMTBCdField;
    CdsItemNotaNTP_CFOP: TIntegerField;
    CdsItemNotaNF_ICMSALIQ: TFMTBCdField;
    CdsItemNotaNF_IPIALIQ: TFMTBCdField;
    CdsItemNotaNF_VLSUBST: TFMTBCdField;
    CdsItemNotaNF_IFRETE: TFMTBCdField;
    CdsItemNotaNF_ISEGURO: TFMTBCdField;
    CdsItemNotaNF_IDESP_ACES: TFMTBCdField;
    CdsItemNotaNF_VLPIS: TFMTBCdField;
    CdsItemNotaNF_VLCOFINS: TFMTBCdField;
    CdsItemNotaNF_TOTAL_CC: TCurrencyField;
    CdsItemNotaNF_TOTAL_IPI: TCurrencyField;
    CdsItemNotaCC_ID: TIntegerField;
    CdsNfeParceFPC_DTEMIS: TSQLTimeStampField;
    CdsNfeParceFAT_CODIGO: TStringField;
    CdsNfeParceFPC_NUMER: TStringField;
    CdsNfeParceFPC_VENCTO: TSQLTimeStampField;
    CdsNfeParceFPC_VLPARC: TFMTBCdField;
    SqlCdsClie: TSQLQuery;
    CdsNotasOPE_CODIGO: TStringField;
    CdsNotasNF_STATUS_NFE: TStringField;
    CdsNotasNFE_STATUS_PRODUCAO: TStringField;
    CdsNotasNF_REGISTRO: TIntegerField;
    CdsNotasNF_INTERNO: TStringField;
    CdsNotasNF_CHAVE_NFE: TStringField;
    CdsItemNotaNF_TOTAL_IPI_CC: TCurrencyField;
    CdsItemPedidoPRF_PRODUTO_AGREGADO: TStringField;
    CdsItemNotaNF_PRODUTO_AGREGADO: TStringField;
    CdsPedidosOPV_CODIGO: TIntegerField;
    CdsPedidosOPV_DESCRICAO: TStringField;
    CdsNotasTIPO_CC: TStringField;
    CdsItemNotaNF_CSOSN: TStringField;
    cdsNotasCLI_CODIGO: TStringField;
    CdsItemNotaNF_ICMSBASE: TFMTBCDField;
    CdsItemNotaNF_IPIBASE: TFMTBCDField;
    cdsNotasCLI_UF: TStringField;
    JvPopupNota: TJvPopupMenu;
    miTransmitir: TMenuItem;
    miGeralXML: TMenuItem;
    cdsNotasselecionado: TBooleanField;
    ACBrNFe1: TACBrNFe;
    Imagens: TImageList;
    CategoryPanelGroup1: TCategoryPanelGroup;
    cpPedidos: TCategoryPanel;
    CbClientes: TSgDbSearchCombo;
    cpNotas: TCategoryPanel;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    lstatus: TLabel;
    BitEstorno: TBitBtn;
    btnEditarNota: TBitBtn;
    btnEmitir: TBitBtn;
    btnNFe4Main: TBitBtn;
    gbImpressão: TGroupBox;
    BitEtiqueta: TBitBtn;
    pPedidosNotas: TPanel;
    pPedidos: TPanel;
    GbPedidos: TGroupBox;
    PageControl1: TPageControl;
    tsPedido: TTabSheet;
    GridPedidos: TDBGrid;
    tsItemPedido: TTabSheet;
    DBGridItensPed: TDBGrid;
    TabSheet1: TTabSheet;
    GroupBox4: TGroupBox;
    DBMemo1: TDBMemo;
    PanAnalise: TPanel;
    pDiminuir: TFlowPanel;
    spRedimecionarPedido: TSpeedButton;
    Splitter1: TSplitter;
    pNotas: TPanel;
    gbNotas: TGroupBox;
    PageControl2: TPageControl;
    tsNotas: TTabSheet;
    SGNotaFiscal: TDBGrid;
    Panel1: TPanel;
    GroupBox5: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    tsItemNota: TTabSheet;
    DBGrid2: TDBGrid;
    tsFaturas: TTabSheet;
    DBGrid1: TDBGrid;
    FlowPanel1: TFlowPanel;
    spRedimecionarNotas: TSpeedButton;
    btnExpedicao: TBitBtn;
    btnNaoGerado: TBitBtn;
    btnRejeitada: TBitBtn;
    btnTransmitida: TBitBtn;
    btnAutorizadas: TBitBtn;
    btnCancelar: TBitBtn;
    btnConsultar: TBitBtn;
    btnDANFE: TBitBtn;
    ACBrNFeDANFEFR1: TACBrNFeDANFEFR;
    ACBrNFeDANFCeFortesA41: TACBrNFeDANFCeFortesA4;
    ACBrNFeDANFCeFortes1: TACBrNFeDANFCeFortes;
    JvArrowButton1: TJvArrowButton;
    pmCertificados: TJvPopupMenu;
    miLimpar: TMenuItem;
    miVerificarinformaes: TMenuItem;
    miSelecionar: TMenuItem;
    btnOutros: TBitBtn;
    BitBtn1: TBitBtn;
    pCertificado: TPanel;
    frxDBDataset1: TfrxDBDataset;
    cdsRelatorio: TClientDataSet;
    dspRelatorio: TDataSetProvider;
    cdsRelatorioNF_NUM_NFE: TIntegerField;
    cdsRelatorioNF_EMISSAO: TDateField;
    cdsRelatorioCLI_RAZAO: TStringField;
    cdsRelatorioPED_CODIGO: TStringField;
    cdsRelatorioNF_REGISTRO: TIntegerField;
    cdsRelatorioPRDCO_CODIGO_ORIGINAL: TStringField;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxReport2: TfrxReport;
    jvOutrasImpressoes: TJvArrowButton;
    JvPopupRelatorio: TJvPopupMenu;
    miRomaneio: TMenuItem;
    miserie: TMenuItem;
    cdsRelatorioprd_refer: TStringField;
    BitSair: TBitBtn;
    cdsNotasNF_TIPONOTA: TStringField;
    cdsNotasNF_INTEGRADO: TStringField;
    ACBrNFeDANFeESCPOS1: TACBrNFeDANFeESCPOS;
    cdsNotasNF_NUM_NFCE: TIntegerField;
    CdsItemNotanf_totalitem: TFMTBCDField;
    CdsItemPedidoPRF_QTDEPEND: TFMTBCDField;
    miFechamentodeCaixaFaturamento: TMenuItem;
    RepFormaPag: TfrxReport;
    frxDtFormaPag: TfrxDBDataset;
    cdsFormaPag: TClientDataSet;
    dspFormaPag: TDataSetProvider;
    qFormaPag: TSQLQuery;
    cdsFormaPagvalor: TFMTBCDField;
    cdsFormaPagdesc_forma: TStringField;
    cdsFormaPagQTDEPARC: TIntegerField;
    cdsFormaPagVL_MEDIO: TFMTBCDField;
    btnRetornaPedido: TBitBtn;
    CdsPedidosSITEXP: TStringField;
    cdsNotasNF_SITEXPEDICAO: TStringField;
    btnExpedicaoNota: TBitBtn;
    RxDataInicial: TJvDateEdit;
    RxDataFinal: TJvDateEdit;
    Edt_nome: TEdit;
    Label3: TLabel;
    CdsItemNotaNF_ICMSVALOR: TFMTBCDField;
    cdsNotasEMP_CODIGO: TStringField;
    CdsPedidosemp_codigo: TStringField;
    qEmpresa: TSQLQuery;
    qEmpresaEMP_CODIGO: TStringField;
    qEmpresaPMT_CERTIFICADO_DIGITAL: TStringField;
    qEmpresaEMP_CGC: TStringField;
    cdsNotasopv_estoque_remessaindus: TStringField;
    cdsNotascli_cgc: TStringField;
    cdsNotasNF_DENEGADA_CANCELADA: TStringField;
    cdsNotasOPV_CODIGO: TIntegerField;
    ACBrNFeDANFCEFR1: TACBrNFeDANFCEFR;
    CdsPedidosEMI_IE: TStringField;
    CdsPedidosEMI_CODIGO: TIntegerField;
    CdsPedidosPCL_CODIGO: TStringField;
    RomaneioSimples1: TMenuItem;
    qRomaneioSimples: TSQLQuery;
    dsRomaneioSimples: TDataSource;
    frxDBRomaneioSimples: TfrxDBDataset;
    frxRomaneioSimples: TfrxReport;
    qParcelas: TSQLQuery;
    dsParcelas: TDataSource;
    frxDBParcelas: TfrxDBDataset;
    qItens: TSQLQuery;
    dsItens: TDataSource;
    frxDBItens: TfrxDBDataset;
    cdsNotasBOTAO: TStringField;
    procedure FormShow(Sender: tObject);
    procedure BitSairClick(Sender: tObject);
    procedure BitPesquisaClick(Sender: tObject);
    procedure GridPedidosDblClick(Sender: tObject);
    procedure PageControl2Change(Sender: tObject);

    procedure Edt_nomeClick(Sender: tObject);
    procedure CdsItemPedidoCalcFields(DataSet: TDataSet);
    procedure Edt_nomeExit(Sender: tObject);
    procedure RxDataInicialExit(Sender: tObject);
    procedure RxDataFinalExit(Sender: tObject);
    procedure BitPesqClick(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure MostrarNotas;
    procedure BitEstornoClick(Sender: tObject);
    procedure SGNotaFiscalDrawColumnCell(Sender: tObject; const Rect: TRect;DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CdsItemNotaCalcFields(DataSet: TDataSet);
    procedure BitEtiquetaClick(Sender: tObject);
    procedure btnEditarNotaClick(Sender: tObject);
    procedure CdsNotasAfterScroll(DataSet: TDataSet);
    procedure CdsPedidosPED_SITUACAOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure GridPedidosKeyDown(Sender: tObject; var Key: Word; Shift: TShiftState);
    procedure CdsNotasNF_ENTR_SAIDGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure CdsNotasNF_IMPRESSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure CdsNotasNF_CANCELADAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure PageControl1Change(Sender: TObject);
    procedure CdsNotasTIPO_CCGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure SGNotaFiscalCellClick(Column: TColumn);
    procedure SGNotaFiscalKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SGNotaFiscalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cdsNotasAfterOpen(DataSet: TDataSet);
    procedure SGNotaFiscalDblClick(Sender: TObject);
    procedure btnEmitirClick(Sender: TObject);
    procedure btnNFe4MainClick(Sender: TObject);
    procedure spRedimecionarPedidoClick(Sender: TObject);
    procedure spRedimecionarNotasClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnDANFEClick(Sender: TObject);
    procedure miVerificarinformaesClick(Sender: TObject);
    procedure miLimparClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure miSelecionarClick(Sender: TObject);
    procedure btnNaoGeradoClick(Sender: TObject);
    procedure btnRejeitadaClick(Sender: TObject);
    procedure btnTransmitidaClick(Sender: TObject);
    procedure btnAutorizadasClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnOutrosClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure miserieClick(Sender: TObject);
    procedure miRomaneioClick(Sender: TObject);
    procedure DBGridItensPedDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure miFechamentodeCaixaFaturamentoClick(Sender: TObject);
    procedure cdsNotasselecionadoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure jvOutrasImpressoesClick(Sender: TObject);
    procedure btnRetornaPedidoClick(Sender: TObject);
    procedure btnExpedicaoClick(Sender: TObject);
    procedure CdsPedidosSITEXPGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsNotasNF_SITEXPEDICAOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure btnExpedicaoNotaClick(Sender: TObject);
    procedure DataChange(Sender: TObject);
    procedure CbClientesButtonClick(Sender: TObject);
    procedure CbClientesChange(Sender: TObject);
    procedure Edt_nomeChange(Sender: TObject);
    procedure CdsPedidosAfterScroll(DataSet: TDataSet);
    procedure RomaneioSimples1Click(Sender: TObject);
    procedure frxRomaneioSimplesGetValue(const VarName: string; var Value: Variant);
    procedure frxRomaneioSimplesBeginDoc(Sender: TObject);
    procedure GridPedidosTitleClick(Column: TColumn);
  private
     FPesqStatus : string;
     pSqlShareDB: string ;
     pEmpresa : string;
     pPedido:String;
     pNota: string;
     logoJPG: string;
     wPesoTotal: double;
     fListaEmpresas : TStringList;
     procedure SetPesqStatus (const aValue: string);
     procedure Pesquisa;
     procedure ChamaTelaFatura;
     procedure EstornaNF(const  pOperacao:string);
     procedure RefreshNotas;
     procedure RefreshPedidos;
     procedure ConsultaNotas;
     procedure MostrarInforCertificados;
     procedure ListasEmpresasPermitidas;
     function CarregarCertificado (const emp_codigo :string) :string; // numero de serie;
     procedure SalvarCertificado(const emp_codigo, numeroserie : string);// salvar
     function ValidaPedidoMinimo: boolean;
  public
    clone : TClientDataSet;
    property PesqStatus :string  read FPesqStatus write SetPesqStatus;
  end;

var
  FormFaturamento: TFormFaturamento;
   nf : TfrmProcessaNFe ;
   NErros: string;

implementation

uses  Fat0003, Fat0000_Romaneio, fat0007, fat0008, uteis, iniciodb,
      uEtqFaturamento, uFaturamentoNotaFiscal, GImpBoletos;

{$R *.dfm}

{ TFormFaturamento }

procedure TFormFaturamento.FormShow(Sender: tObject);
begin
     inherited;
     CdsItemNotaNF_PRECO.DisplayFormat := '###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
     CdsItemPedidoPRF_PRECO.DisplayFormat := CdsItemNotaNF_PRECO.DisplayFormat;

     DBGrid2.Columns[2].Visible := (dbInicio.Empresa.wPMT_UTILIZA_CODIGO_ORIG_VD);

     PageControl1.TabIndex        := 0;
     PageControl2.TabIndex        := 0;
     PageControl1.ActivePageIndex := 0;
     PageControl2.ActivePageIndex := 0;

     RxDataFinal.Date   := Date;
     RxDataInicial.Date := RxDataFinal.Date - 30;  //StrToDate(DataInicial);
     PesqStatus := '';
     if dbInicio.Empresa.wPmt_Utiliza_Analise_Credito = 'S' then
        PanAnalise.Visible := true;




     Pesquisa;
     MostrarNotas;
     Top := 0;

end;

procedure TFormFaturamento.frxRomaneioSimplesBeginDoc(Sender: TObject);
begin
  inherited;
  wPesoTotal := 0;
end;

procedure TFormFaturamento.frxRomaneioSimplesGetValue(const VarName: string; var Value: Variant);
begin
  inherited;
  if VarName = 'CIDADE' then
    if qRomaneioSimples.FieldByName('CLI_CIDENTR').AsString = '' then
      Value := qRomaneioSimples.FieldByName('CLI_CIDADE').AsString
    else
      Value := qRomaneioSimples.FieldByName('CLI_CIDENTR').AsString;

  if VarName = 'CEP' then
    if qRomaneioSimples.FieldByName('CLI_CEPENTR').AsString = '' then
      Value := MascaraCep(qRomaneioSimples.FieldByName('CLI_CEP').AsString)
    else
      Value := MascaraCep(qRomaneioSimples.FieldByName('CLI_CEPENTR').AsString);

  if VarName = 'BAIRRO' then
    if qRomaneioSimples.FieldByName('CLI_BAIENTR').AsString = '' then
      Value := qRomaneioSimples.FieldByName('CLI_BAIRRO').AsString
    else
      Value := qRomaneioSimples.FieldByName('CLI_BAIENTR').AsString;

  if VarName = 'ENDERECO' then
    if qRomaneioSimples.FieldByName('CLI_ENDENTR').AsString = '' then
      Value := qRomaneioSimples.FieldByName('CLI_ENDERE').AsString
    else
      Value := qRomaneioSimples.FieldByName('CLI_ENDENTR').AsString;

  if VarName = 'UF' then
    if qRomaneioSimples.FieldByName('CLI_UFENTR').AsString = '' then
      Value := qRomaneioSimples.FieldByName('CLI_UF').AsString
    else
      Value := qRomaneioSimples.FieldByName('CLI_UFENTR').AsString;

  if VarName = 'FONE' then
      Value := MascaraFone(qRomaneioSimples.FieldByName('CLI_FONE').AsString);

  if VarName = 'PRODUTO' then
    if qItens.FieldByName('PRDCO_CODIGO_ORIGINAL').AsString <> '' then
      Value := qItens.FieldByName('PRDCO_CODIGO_ORIGINAL').AsString
    else
      Value := qItens.FieldByName('PRD_REFER').AsString;

  if VarName = 'PRD_UND' then
  begin
    Value := qItens.FieldByName('PRD_UND').AsString;
    if UpperCase(qItens.FieldByName('PRD_UND').AsString) = 'KG' then
      wPesoTotal := wPesoTotal + qItens.FieldByName('PRF_QTDE').AsFloat
    else
      wPesoTotal := wPesoTotal + qItens.FieldByName('PRF_PESO').AsFloat;
  end;

  if VarName = 'PESO' then
  begin
    // Value := wPesoTotal;
    Value := Trunc( BuscaUmDadoSqlAsFloat(
       ' SELECT SUM( ' +
       '   CASE ' +
       '     WHEN pi2.PRD_UND = ''KG'' THEN pi2.PRF_QTDE ' +
       '     ELSE pi2.PRF_PESO ' +
       '    END ' +
       '  ) AS PESO  ' +
       ' FROM	NF_IT01 ni ' +
       '  JOIN NF0001 nf ON	(ni.nf_it_notanumer = nf.nf_notanumber) ' +
       '  JOIN PED_IT01 pi2 ON (pi2.PRF_REGISTRO = ni.PRF_REGISTRO ) ' +
       '  JOIN PRD_GRADE pg ON (pg.PRG_REGISTRO = PI2.PRG_REGISTRO) ' +
       '  JOIN PRD0000 pd ON	(pd.PRD_REFER = ni.PRD_REFER) ' +
       ' WHERE ' +
       '   ni.NF_IT_NOTANUMER = '  + QuotedStr(CdsNotasNF_NOTANUMBER.asstring) +
       '   AND ni.NF_QTDE > 0 ' +
       '   AND ni.EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo)
     ) );
  end;

  if VarName = 'ITENS' then
  begin
    // Value := wPesoTotal;
    Value := BuscaUmDadoSqlAsFloat(
       ' SELECT COUNT(ni.PED_CODIGO) AS ITENS ' +
       ' FROM	NF_IT01 ni ' +
       '  JOIN NF0001 nf ON	(ni.nf_it_notanumer = nf.nf_notanumber) ' +
       '  JOIN PED_IT01 pi2 ON (pi2.PRF_REGISTRO = ni.PRF_REGISTRO ) ' +
       '  JOIN PRD_GRADE pg ON (pg.PRG_REGISTRO = PI2.PRG_REGISTRO) ' +
       '  JOIN PRD0000 pd ON	(pd.PRD_REFER = ni.PRD_REFER) ' +
       ' WHERE ' +
       '   ni.NF_IT_NOTANUMER = '  + QuotedStr(CdsNotasNF_NOTANUMBER.asstring) +
       '   AND ni.NF_QTDE > 0 ' +
       '   AND ni.EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo)
     );
  end;


  end;

procedure TFormFaturamento.BitSairClick(Sender: tObject);
begin
    CLOSE;
end;

function TFormFaturamento.CarregarCertificado(const emp_codigo: string): string;
begin
 if DBInicio.Empresa.wPMT_FATURA_MULTIEMPRESA then
 begin
  qEmpresa.Close;
  qEmpresa.Open;
 end;
 if not qEmpresa.Active then
   qEmpresa.Open;
 //verifique se tem serie armazenada no banco
 if qEmpresa.Locate('EMP_CODIGO', emp_codigo,[])  then
 begin
  //grava no componente
  if qEmpresa.FieldByName('PMT_CERTIFICADO_DIGITAL').AsString <> '' then
    result := qEmpresa.FieldByName('PMT_CERTIFICADO_DIGITAL').AsString
  else
    if (ACBrNFe1.SSL.NumeroSerie <> '')
      and ( RetirarMascaraCNPJ_INSC(ACBrNFe1.SSL.CertCNPJ)  =  qEmpresa.FieldByName('EMP_CGC').AsString)    then //do componente grava no banco
    begin
      SalvarCertificado(emp_codigo,ACBrNFe1.SSL.NumeroSerie);
      Result := ACBrNFe1.SSL.NumeroSerie;
    end;
 end;

end;

procedure TFormFaturamento.CbClientesButtonClick(Sender: TObject);
var tcr: tFrmPesquisaClientes;
begin
  inherited;
  tcr:= tFrmPesquisaClientes.Create(self);
  try
      tcr.ShowModal;
      if tcr.modalresult = mrok then
         cbClientes.idRetorno := tcr.IDRetorno;
  finally
       FreeAndNil(tcr);
  end;
end;

procedure TFormFaturamento.CbClientesChange(Sender: TObject);
begin
  inherited;
  if CbClientes.idRetorno <> '' then
    pesquisa;
end;

procedure TFormFaturamento.BitPesquisaClick(Sender: tObject);
begin
  Pesquisa;
end;

procedure TFormFaturamento.GridPedidosDblClick(Sender: tObject);
begin
  if not ValidaPedidoMinimo then
  begin
    MessageDlg( '          Não autorizado : Valor abaixo do permitido para o prazo selecionado!' + #13 + #13 +
                ' ##### SOLICITE LIBERAÇÃO PELA GERÊNCIA OU ALTERE O PRAZO SELECIONADO #####'
    , mtWarning, [mbok],0 );
    exit;
  end;
  ChamaTelaFatura;
  RefreshNotas;
  RefreshPedidos;
end;

procedure TFormFaturamento.GridPedidosKeyDown(Sender: tObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = VK_RETURN then
 begin
    if not ValidaPedidoMinimo then
    begin
      MessageDlg( '          Não autorizado : Valor abaixo do permitido para o prazo selecionado!' + #13 + #13 +
                  ' ##### SOLICITE LIBERAÇÃO PELA GERÊNCIA OU ALTERE O PRAZO SELECIONADO #####'
      , mtWarning, [mbok],0 );
      exit;
    end;
    ChamaTelaFatura;
    Key := 0;
 end;
 inherited;
end;

procedure TFormFaturamento.GridPedidosTitleClick(Column: TColumn);
begin
//  inherited;
// faz nada...
end;

procedure TFormFaturamento.jvOutrasImpressoesClick(Sender: TObject);
begin
  inherited;
  btnDANFE.Click;
end;

procedure TFormFaturamento.PageControl1Change(Sender: TObject);
begin
    inherited;
    if (PageControl1.ActivePage=tsItemPedido) THEN
    begin
         CdsItemPedido.DisableControls;
         IF (pPedido<>CdsPedidosPED_CODIGO.asstring) THEN
         begin
              CdsItemPedido.Close;
              pPedido:=CdsPedidosPED_CODIGO.asstring;
              SqlItemPedido.SQL.clear;
              SqlItemPedido.SQL.Add( 'SELECT t1.PRD_REFER, ');
              SqlItemPedido.SQL.Add( '       t1.PRF_PRDDESCRI, ');
              SqlItemPedido.SQL.Add( '       t1.PRF_QTDE, ');
              SqlItemPedido.SQL.Add( '       t1.PRF_QTDEFAT, ');
              SqlItemPedido.SQL.Add( '       t1.PRF_PRECO, ');
              SqlItemPedido.SQL.Add( '       t1.PRF_IPIALIQ, ');
              SqlItemPedido.SQL.Add( '       t1.PRF_PRODUTO_AGREGADO, ');
              SqlItemPedido.SQL.Add( '       COALESCE(P2.PRD_PRODSERV,'+qStr('P')+') as  PRD_PRODSERV, ');
              SqlItemPedido.SQL.Add( '      t1.PRF_QTDEPEND ');
              SqlItemPedido.SQL.Add( 'from PED_IT01 t1 ');
              SqlItemPedido.SQL.Add( '     join PRD0000 P2 on (P2.PRD_CODIGO = t1.PRD_CODIGO ) ');
              SqlItemPedido.SQL.Add( 'where t1.PED_CODIGO = '+qStr(pPedido) + ' and t1.Emp_Codigo = '+ QuotedStr(CdsPedidosemp_codigo.AsString));
              SqlItemPedido.SQL.Add( 'order by t1.PRF_REGISTRO' );
              CdsItemPedido.Open;
         end;
         CdsItemPedido.EnableControls;
    end;
end;

procedure TFormFaturamento.PageControl2Change(Sender: tObject);

begin
     IF PageControl2.ActivePage=tsItemNota THEN
     begin
          CdsItemNota.DisableControls;
          {if pNota<>CdsNotasNF_NOTANUMBER.AsString then
          begin}
               CdsItemNota.Close;
               pNota:=CdsNotasNF_NOTANUMBER.AsString;
               SQLItemNota.SQL.clear;
               SQLItemNota.SQL.add(   'select pd.PRD_REFER, ');
               SQLItemNota.SQL.add(   '       it.PRDCO_CODIGO_ORIGINAL, ');
               SQLItemNota.SQL.add(   '       it.PRD_DESCRI, ');
               SQLItemNota.SQL.add(   '       it.STB_TRIBUTACAO, ');
               SQLItemNota.SQL.add(   '       it.IPI_CODIGO, ');
               SQLItemNota.SQL.add(   '       it.NF_QTDE, ');
               SQLItemNota.SQL.add(   '       it.NF_PRECO, ');
               SQLItemNota.SQL.add(   '       it.NTP_CFOP, ');
               SQLItemNota.SQL.add(   '       it.NF_ICMSALIQ, ');
               SQLItemNota.SQL.add(   '       it.NF_ICMSBASE, ');
               SQLItemNota.SQL.add(   '       it.NF_ICMSVALOR, ');
               SQLItemNota.SQL.add(   '       it.NF_IPIALIQ, ');
               SQLItemNota.SQL.add(   '       it.NF_IPIBASE, ');
               SQLItemNota.SQL.add(   '       it.NF_VLSUBST, ');
               SQLItemNota.SQL.add(   '       it.NF_IFRETE, ');
               SQLItemNota.SQL.add(   '       it.NF_ISEGURO, ');
               SQLItemNota.SQL.add(   '       it.NF_IDESP_ACES, ');
               SQLItemNota.SQL.add(   '       it.NF_VLPIS, ');
               SQLItemNota.SQL.add(   '       it.NF_VLCOFINS, ');
               SQLItemNota.SQL.add(   '       it.NF_CSOSN, ');
               SQLItemNota.SQL.add(   '       it.NF_PRODUTO_AGREGADO, ');
               sqlitemnota.SQL.Add(   '       it.nf_totalitem');
               SQLItemNota.SQL.add(   'from NF_IT01 it ');
               SQLItemNota.SQL.add(   '     LEFT JOIN PRD0000 PD ON (PD.PRD_CODIGO = it.PRD_CODIGO) ');
               SQLItemNota.SQL.add(   'Where it.NF_IT_NOTANUMER = '+qStr(StrZero(pNota,6))+' AND it.EMP_CODIGO = '+QuotedStr(cdsNotasEMP_CODIGO.AsString));
               if (cdsNotasNF_INTEGRADO.AsString = 'S') then
                   SQLItemNota.SQL.add(   ' AND PRD_PRODSERV = '+ QuotedStr(cdsNotasNF_TIPONOTA.AsString));
               SQLItemNota.SQL.add(   'order by it.NF_REGISTRO ') ;

               CdsItemNota.Open;
          {end;}
          CdsItemNota.EnableControls;
     end
     else
     IF PageControl2.ActivePage=tsFaturas THEN
     begin
          CdsNfeParce.DisableControls;
          CdsNfeParce.Close;
          {if pNota<>CdsNotasNF_NOTANUMBER.AsString then
          begin}
               pNota:=CdsNotasNF_NOTANUMBER.AsString;
               sqlNfeParCe.sql.text := 'select t1.FPC_DTEMIS, '+
                                       '       t1.FAT_CODIGO, '+
                                       '       t1.FPC_NUMER, '+
                                       '       t1.FPC_VENCTO, '+
                                       '       t1.FPC_VLPARC '+
                                       'from   FAT_PC01 t1  '+
                                       'where t1.FAT_CODIGO = '+qStr(StrZero(pNota,6))+pSqlShareDB+' '+
                                       'order by t1.FAT_CODIGO ';
                CdsNfeParce.Open;
          {end;}
          CdsNfeParce.EnableControls;
     end;
end;

procedure TFormFaturamento.Pesquisa;
begin

     CdsPedidos.DisableControls;
     CdsPedidos.Close;
     SqlPedidos.sql.clear;
     SqlPedidos.sql.add( 'SELECT t1.PED_OBSERVACAO_NOTA, ');
     SqlPedidos.sql.add( '       t1.EMI_IE, ');
     SqlPedidos.sql.add( '       t1.EMI_CODIGO, ');
     SqlPedidos.sql.add( '       t1.PED_STATUS_ANALISE_CREDITO, ');
     SqlPedidos.sql.add( '       t1.PED_CODIGO, ');
     SqlPedidos.sql.add( '       t1.PED_DTENTRADA, ');
     SqlPedidos.sql.add( '       t1.PED_VLTOTAL_BRUTO, ');
     SqlPedidos.sql.add( '       t1.PED_SITUACAO, ');
     SqlPedidos.sql.add( '       t1.CLI_CODIGO, ');
     SqlPedidos.sql.add( '       t1.PCL_CODIGO, ');
     SqlPedidos.sql.add( '       C1.CLI_RAZAO, ');
     SqlPedidos.sql.add( '       C1.CLI_CIDADE, ');
     SqlPedidos.sql.add( '       C1.CLI_UF,');
     SqlPedidos.sql.add( '       T1.OPV_CODIGO,');
  SqlPedidos.sql.add( '       TP.OPV_DESCRICAO, T1.SITEXP, t1.emp_codigo ');
     SqlPedidos.sql.add( 'FROM PED0000 t1');
     SqlPedidos.sql.add( '     JOIN CLI0000 C1 ON (t1.CLI_CODIGO = C1.CLI_CODIGO)');
     SqlPedidos.sql.add( '     JOIN OPV0000 TP ON TP.OPV_CODIGO = T1.OPV_CODIGO and tp.OPV_FATURAMENTO='+qStr('S') );
     SqlPedidos.sql.add( ' Where t1.PED_SITUACAO || '''' not in ( '+qStr('T')+','+qStr('C')+','+qStr('A')+' )');
     SqlPedidos.sql.add( ' and Ped_faturar_liberado = ''S'' ' );
     //SqlPedidos.sql.add( '      AND t1.OPV_CODIGO  in (SELECT T55.OPV_CODIGO FROM OPV0000 T55 WHERE T55.OPV_VENDA = '+qStr('S')+')') ;
  if DBInicio.Empresa.wPMT_FATURA_MULTIEMPRESA then
    SqlPedidos.sql.add( '      AND T1.EMP_CODIGO in ('+fListaEmpresas.commatext+')')
  else
     SqlPedidos.sql.add( '      AND T1.EMP_CODIGO = '+qStr(DBINICIO.Empresa.EMP_CODIGO) );
     if Edt_nome.Text <> '' then
        SqlPedidos.sql.add( ' and ( t1.PED_CODIGO containing '+ QuotedStr (edt_nome.Text)+
                            ' or  c1.CLI_RAZAO containing '+ QuotedStr (edt_nome.Text) +')');

     SqlPedidos.sql.add( 'order by t1.PED_CODIGO desc' );

     CdsPedidos.Open;
     CdsPedidos.EnableControls;

end;


procedure TFormFaturamento.ListasEmpresasPermitidas;
begin
  fListaEmpresas.Clear;
  if not DBInicio.Empresa.wPMT_FATURA_MULTIEMPRESA then
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

procedure TFormFaturamento.Edt_nomeChange(Sender: TObject);
Var temp :integer;
begin
  inherited;
  if (Edt_nome.Text = '') or (not TryStrToInt(Edt_nome.Text,temp) and (Length(Edt_nome.Text)  >3))
   or  ( TryStrToInt(Edt_nome.Text,temp)  and (StrToInt(Edt_nome.Text)>0)) then
   pesquisa;
end;

procedure TFormFaturamento.Edt_nomeClick(Sender: tObject);
begin
  if PageControl1.ActivePage =  tsItemPedido then
     PageControl1.ActivePage := tsPedido;

  if (PageControl2.ActivePage = tsItemNota) or (PageControl2.ActivePage = tsFaturas) then
     PageControl2.ActivePage := tsNotas;
end;

procedure TFormFaturamento.MostrarInforCertificados;
begin
 if assigned(frmProcessaNFe) then
   if frmProcessaNFe.ACBrNFe1.SSL.CertificadoLido then
     pCertificado.Caption:= ACBrNFe1.SSL.CertRazaoSocial + ',' + 'Certificadora: '+frmProcessaNFe.ACBrNFe1.SSL.CertCertificadora + ' Validade: '+ DateToStr(frmProcessaNFe.ACBrNFe1.SSL.CertDataVenc);

 if ACBrNFe1.SSL.NumeroSerie <> '' then
     ACBrNFe1.SSL.CarregarCertificado;

 if ACBrNFe1.SSL.CertificadoLido then
   pCertificado.Caption:= ACBrNFe1.SSL.CertRazaoSocial + ',' + 'Certificadora: '+ACBrNFe1.SSL.CertCertificadora + ' Validade: '+ DateToStr(ACBrNFe1.SSL.CertDataVenc);

end;

procedure TFormFaturamento.MostrarNotas;
begin
     CdsNotas.DISABLECONTROLS;
     CdsNotas.Close;
     qNotas.SQL.Clear;
     qNotas.SQL.Text := 'SELECT t1.NF_NUM_NFE, '+
                        '       t1.NF_CANCELADA, '+
                        '       t1.NF_EMISSAO, '+
                        '       t1.NF_NOTANUMBER, '+
                        '       C1.CLI_CODIGO, '+
                        '       C1.CLI_RAZAO, '+
                        '       C1.CLI_UF, '+
                        '       c1.CLI_CGC, '+
                        '       t1.NF_TOT_NOTA + COALESCE(t1.NF_VLDIFAL, 0) as NF_TOT_NOTA, '+
                        '       t1.NF_TOT_PROD, '+
                        '       t1.NF_IMPRESS, '+
                        '       0 as NF_SELECAO, '+
                        '       t1.PED_CODIGO, '+
                        '       t1.OPE_NATUREZA, '+
                        '       t1.OPE_CODIGO, '+
                        '       t1.NF_ENTR_SAID, '+
                        '       t1.NF_BASEICMS, '+
                        '       t1.NF_VL_ICMS, '+
                        '       t1.NF_VLBASESUBTRIB, '+
                        '       t1.NF_VL_SUBTRIB, '+
                        '       t1.NF_VLFRETE, '+
                        '       t1.NF_VLSEGURO, '+
                        '       t1.NF_DESP_ACES, '+
                        '       t1.NF_VL_IPI, '+
                        '       t1.NF_VL_DESCTO, '+
                        '       t1.NF_COMPLEMENTAR, '+
                        '       T1.NF_STATUS_NFE, '+
                        '       T1.NFE_STATUS_PRODUCAO, '+
                        '       T1.NF_REGISTRO, '+
                        '       T1.NF_INTERNO, '+
                        '       T1.NF_CHAVE_NFE, '+
                        '       t1.NF_INTEGRADO, '+
                        '       t1.NF_TIPONOTA , '+
                        '       T1.NF_NUM_NFCE, '+
                        ' T1.NF_SITEXPEDICAO, T1.EMP_CODIGO, OPV_ESTOQUE_REMESSAINDUS, NF_DENEGADA_CANCELADA, ' +
                        ' pe.opv_codigo '+
                        ' FROM NF0001 t1 '+
                        ' JOIN CLI0000 C1 on C1.CLI_CODIGO = t1.CLI_CODIGO '+
                        ' left join PED0000 pe on (pe.ped_codigo = t1.ped_codigo and t1.emp_codigo = pe.emp_codigo) '+
                        ' left join OPV0000 op on (op.opv_codigo = pe.opv_codigo ) '+
                    'WHERE t1.NF_EMISSAO BETWEEN '+DateToSql(RxDataInicial.date)+' AND '+DateToSql(RxDataFinal.date)+' ';

  if DBInicio.Empresa.wPMT_FATURA_MULTIEMPRESA then
    qNotas.SQL.add( '  AND T1.EMP_CODIGO in ('+fListaEmpresas.commatext+')')
  else
    qNotas.sql.add( '  AND T1.EMP_CODIGO = '+qStr(DBINICIO.Empresa.EMP_CODIGO) );


    if PesqStatus = 'N' then
       qNotas.SQL.Add(' AND NF_STATUS_NFE IN (''N'',''G'')')
    else if PesqStatus <> '' then
      qNotas.SQL.Add(' AND nf_status_nfe = '+ QuotedStr(PesqStatus));

    qNotas.SQL.Add( 'order by t1.NF_EMISSAO DESC,t1.NF_NOTANUMBER DESC');

      CdsNotas.Open;
      CdsNotas.EnableControls;
end;

procedure TFormFaturamento.CdsItemPedidoCalcFields(DataSet: TDataSet);
begin
    CdsItemPedidoPRF_TOTAL_CC.AsCurrency := Uteis.RoundTo(CdsItemPedidoPRF_QTDE.AsCurrency * CdsItemPedidoPRF_PRECO.AsFloat, -2);
    CdsItemPedidoCC_ID.AsInteger         := CdsItemPedido.RecNo;
end;

procedure TFormFaturamento.cdsNotasAfterOpen(DataSet: TDataSet);
begin
  inherited;
  btnEditarNota.Enabled := (CdsNotasNF_COMPLEMENTAR.AsString = 'S');
  // BitEstorno.Enabled := MatchStr(CdsNotasNF_STATUS_NFE.AsString,['N','G','O','R']) and  cdsNotasselecionado.AsBoolean;
end;

procedure TFormFaturamento.CdsPedidosAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if DBInicio.Empresa.PMT_LIBERAR_EXPEDICAO <> 'F' then   // NÃO CONTROLA POR FINANCEIRO
    EXIT;
  btnExpedicao.Enabled:= BuscaUmDadoSqlAsString('SELECT OPV_EXPEDICAO FROM OPV0000 '+
                                                 ' WHERE OPV_CODIGO = '+DataSet.FieldByName('OPV_CODIGO').AsString)= 'S' ;


end;

procedure TFormFaturamento.CdsPedidosPED_SITUACAOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
    IF CdsPedidosPED_SITUACAO.AsString  = 'P' then
       TEXT  := 'PARCIAL'
    eLSE
    IF CdsPedidosPED_SITUACAO.AsString  = 'F' then
       TEXT  := 'A FATURAR'
    ELSE
    IF CdsPedidosPED_SITUACAO.AsString  = 'T' then
       TEXT  := 'FATURADO';
End;

procedure TFormFaturamento.CdsPedidosSITEXPGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString = 'PEN' then
    TEXT := 'PENDENTE'
  else
  if Sender.AsString = 'LIB' then
   text := 'LIBERADO'
  else
  if Sender.AsString = 'SEP' then
    Text := 'SEPERACAO'
  else
  if Sender.AsString = 'FIN' then
    Text := 'FINALIZADO'
  else
  if Sender.AsString = 'DEP' then
    Text := 'DESPACHADO'
  else
  if Sender.AsString ='IMP' THEN
    text := 'IMPEDIDO'
  else
   TEXT := 'PENDENTE';
end;

procedure TFormFaturamento.Edt_nomeExit(Sender: tObject);
begin
//    if Edt_nome.Text <> '' then
//    begin
//      if (RadCliente.checked ) or (RadPedido.checked ) then
//      begin
//             if (RadPedido.checked ) then
//             begin
//                    if dbInicio.empresa.fPedNumeracaoAutomatica then // automatico
//                       Edt_nome.Text := StrZero(ExtrairNumeros(Edt_nome.Text),6)+ExtrairLetra(Edt_nome.Text);
//             end
//             Else
//                  cbClientes.idRetorno:=StrZero(Edt_nome.Text,5);
//      end;
//    end;

end;



procedure TFormFaturamento.DataChange(Sender: TObject);
var
  dtTemp: TDateTime;
begin
  inherited;
  if ((TJvDateEdit(Sender).Name =  'RxDataInicial') and  TryStrToDate(RxDataInicial.Text,dtTemp)  )
    or  ((TJvDateEdit(Sender).Name =  'RxDataFinal') and  TryStrToDate(RxDataFinal.Text,dtTemp) )   then
    MostrarNotas;
end;

procedure TFormFaturamento.RxDataInicialExit(Sender: tObject);
begin

    if RxDataInicial.Text <> '  /  /    ' then
       begin
           if not TestaDataStr(RxDataInicial.Text) then
              RxDataInicial.SetFocus;
       end;
end;

procedure TFormFaturamento.spRedimecionarNotasClick(Sender: TObject);
begin
  inherited;
  pPedidos.Visible := not pPedidos.Visible;

  if pPedidos.Visible then
   spRedimecionarNotas.Hint := 'Mostrar somente as notas'
  else
   spRedimecionarNotas.Hint := 'Mostrar pedidos e as notas geradas'     
  
  
end;

procedure TFormFaturamento.spRedimecionarPedidoClick(Sender: TObject);
begin
  inherited;
  pNotas.Visible := not pNotas.Visible;
  if pNotas.Visible then
  begin
    spRedimecionarPedido.Hint := 'Mostrar somente pedidos';
    pPedidos.Align := alTop;
    pPedidos.Height := 305;
  end
  else
  begin
    spRedimecionarPedido.Hint := 'Mostrar as Notas de volta'; 
    pPedidos.Align := alClient; 
  end;
end;

function TFormFaturamento.ValidaPedidoMinimo: boolean;
var
  liberado : boolean;
  valor: double;
begin
  qAux.Close;
  qAux.SQL.Text := 'SELECT PCL_CODIGO, PED_PERMITE_VL_ABAIXO_PRAZO_MIN, PED_VLTOTAL_BRUTO FROM PED0000 WHERE PED_CODIGO = ' + QuotedStr(CdsPedidosPED_CODIGO.asstring) ;
  qAux.Open;
  // venda := BuscaUmDadoSqlAsString('SELECT OPV_VENDA FROM OPV0000 WHERE OPV_CODIGO = ' + qAux.FieldByName('OPV_CODIGO').AsString ) ) = 'S';
  // orcamento := BuscaUmDadoSqlAsString('SELECT OPV_ORCAMENTO FROM OPV0000 WHERE OPV_CODIGO = ' + qAux.FieldByName('OPV_CODIGO').AsString  ) = 'S';
  valor := BuscaUmDadoSqlAsFloat('SELECT PCL_VALOR_MINIMO_VENDA FROM PCL0000 WHERE PCL_CODIGO = ' + QuotedStr(qAux.FieldByName('PCL_CODIGO').AsString)  );
  liberado := BuscaUmDadoSqlAsString('SELECT PED_PERMITE_VL_ABAIXO_PRAZO_MIN FROM PED0000 WHERE PED_CODIGO = ' + QuotedStr(CdsPedidosPED_CODIGO.AsString) ) = 'S';
  Result := True;
  if CdsPedidosPED_VLTOTAL_BRUTO.AsFloat < valor then
  begin
    Result := False;
    if liberado then
      Result := True;
  end
end;

procedure TFormFaturamento.miserieClick(Sender: TObject);
begin
  inherited;
  qaux.Close;
  qAux.CommandText :=
          'SELECT prd_refer, nf_registro, NF_NUM_NFE, NF_EMISSAO, cl.CLI_RAZAO, PC.PRDCO_CODIGO_ORIGINAL, PED.PED_CODIGO  '+
          ' FROM PED0000 ped JOIN NF0001 nf ON (nf.PED_CODIGO = ped.PED_CODIGO)                                '+
          ' JOIN CLI0000 cl ON (cl.CLI_CODIGO = ped.CLI_CODIGO)                                                '+
          ' JOIN PRD_CODIGOORIGINAL pc ON (PC.PED_CODIGO = PED.PED_CODIGO)                                     '+
          ' JOIN PRD0000 pr ON (pr.PRD_CODIGO = pc.PRD_CODIGO)                                                 '+
          ' WHERE PED.PED_CODIGO = ' + QuotedStr(CdsNotasPED_CODIGO.AsString)  +
          ' and ped.emp_codigo = '+QuotedStr(CdsPedidosemp_codigo.AsString)

          ;
 cdsRelatorio.Open;
  if not cdsRelatorio.IsEmpty then
  begin
    TfrxMemoView (frxReport2.FindObject('mEmpresa')).Text := 'Emitente :' +DBInicio.Empresa.RAZAO;
    frxReport2.ShowReport();
    cdsRelatorio.Close;
  end;
end;

procedure TFormFaturamento.miFechamentodeCaixaFaturamentoClick(Sender: TObject);
var status : string;
begin
  inherited;
    if PesqStatus = 'N' then
       status:= '  WHERE NF_STATUS_NFE IN (''N'',''G'')'
    else if PesqStatus <> '' then
      status := '  WHERE nf_status_nfe = '+ QuotedStr(PesqStatus);

  qFormaPag.SQL.Text :=
    'Select sum(FPC_VLPARC) valor, fp.FPG_DESCRICAO desc_forma, cast(count(*) as integer) as QTDEPARC, sum(fpc.fpc_vlparc)/count(*) VL_MEDIO ' +
    ' from FAT_PC01 fpc JOIN  (SELECT DISTINCT NF_NOTANUMBER, NF_EMISSAO, EMP_CODIGO,NF_CANCELADA,CLI_CODIGO FROM NF0001 '+STATUS+' ) nfe '+
    ' ON (nfe.NF_NOTANUMBER = fpc.FAT_CODIGO AND nfe.EMP_CODIGO = fpc.EMP_CODIGO AND FPC_EXCLUSAO = ''N'' AND NFE.NF_CANCELADA = ''N'' ) '+
    ' JOIN CLI0000 C1 on C1.CLI_CODIGO = nfe.CLI_CODIGO   '+ConcatSe(' AND C1.', DBInicio.ExclusivoSql('CLIENTES') )+
    ' LEFT JOIN FORMA_PAGAMENTO fp ON (fp.FPG_REGISTRO = fpc.FPG_REGISTRO) '+
//    ' LEFT JOIN BAN0000 b ON (b.ban_codigo = fpc.BAN_CODIGO) '+
    ' WHERE nfe.NF_EMISSAO BETWEEN '+DateToSql(RxDataInicial.date)+' AND '+DateToSql(RxDataFinal.date)+' ';

  if DBInicio.Empresa.wPMT_FATURA_MULTIEMPRESA then
    qFormaPag.SQL.add('   AND nfe.EMP_CODIGO in ('+fListaEmpresas.commatext+')')
  else
    qFormaPag.sql.add( '   AND nfe.EMP_CODIGO = '+qStr(DBINICIO.Empresa.EMP_CODIGO));
    qFormaPag.sql.Add(    'GROUP BY fp.FPG_DESCRICAO ' )  ;
  cdsFormaPag.Open;
  if not cdsFormaPag.IsEmpty then
  begin
    TfrxPictureView(RepFormaPag.FindObject('LogoEmpresa')).Picture.Assign( dbInicio.Empresa.Logo );
    TfrxMemoView (RepFormaPag.FindObject('wFrxRazao')).Text := DBInicio.Empresa.RAZAO;
    RepFormaPag.ShowReport();
    cdsFormaPag.Close;
  end;

end;

procedure TFormFaturamento.miLimparClick(Sender: TObject);
begin
  inherited;
  ACBrNFe1.SSL.DescarregarCertificado;
  ACBrNFe1.SSL.NumeroSerie := '';
end;

procedure TFormFaturamento.miRomaneioClick(Sender: TObject);
begin
  inherited;
   FrmFat0000_Romaneio:= tFrmFat0000_Romaneio.create(self);
   try

      FrmFat0000_Romaneio.imprima( CdsNotasNF_NOTANUMBER.asstring );
   finally
          freeAndNil( FrmFat0000_Romaneio );
   end;
end;

procedure TFormFaturamento.miSelecionarClick(Sender: TObject);
begin
  inherited;
  if (DBInicio.Nfe.Emp_TipoCertificado = 3) or (DBInicio.Nfe.Emp_TipoCertificado = 9) then
  begin
    ACBrNFe1.Configuracoes.Geral.SSLLib   := libWinCrypt;
    ACBrNFe1.Configuracoes.Geral.SSLXmlSignLib := xsLibXml2;
    ACBrNFe1.Configuracoes.Geral.SSLHttpLib := httpWinHttp;
    ACBrNFe1.Configuracoes.Geral.SSLCryptLib := cryWinCrypt;
  end
  else
  begin
    ACBrNFe1.Configuracoes.Geral.SSLLib         := libCapicomDelphiSoap;
    ACBrNFe1.Configuracoes.Geral.SSLCryptLib    := cryCapicom;
    ACBrNFe1.Configuracoes.Geral.SSLHttpLib     := httpIndy;
    ACBrNFe1.Configuracoes.Geral.SSLXmlSignLib  := xsMsXmlCapicom;

  end;

  ACBrNFe1.SSL.SelecionarCertificado;
  MostrarInforCertificados;
end;

procedure TFormFaturamento.miVerificarinformaesClick(Sender: TObject);
begin
  inherited;
      if ACBrNFe1.SSL.NumeroSerie <> '' then
         ACBrNFe1.SSL.CarregarCertificado;

   if ACBrNFe1.SSL.CertificadoLido then
    MessageDlg('Certificadora: '+ACBrNFe1.SSL.CertCertificadora + sLineBreak  +
               ACBrNFe1.SSL.CertRazaoSocial + ',' +
               ACBrNFe1.SSL.CertIssuerName  + sLineBreak +
               'CNPJ : '+ MascraCNPJ_CNPF(ACBrNFe1.SSL.CertCNPJ) +  sLineBreak +
               'Série : '+  ACBrNFe1.SSL.CertNumeroSerie +  sLineBreak +
               'Validade: '+ DateToStr(ACBrNFe1.SSL.CertDataVenc)
     , mtInformation, [mbOK], 0)
   else
     MessageDlg('Nenhum certificado selecionado'  , mtInformation, [mbOK], 0);
  MostrarInforCertificados;
end;

procedure TFormFaturamento.RxDataFinalExit(Sender: tObject);
begin

    if RxDataFinal.Text <> '  /  /    ' then
       begin
           if not TestaDataStr(RxDataFinal.Text) then
              RxDataFinal.SetFocus;
       end;
    if RxDataFinal.Date < RxDataInicial.Date then
       begin
           uteis.aviso('Data Final menor que a Data Inicial !');
           RxDataFinal.SetFocus;
       end;
end;

procedure TFormFaturamento.BitPesqClick(Sender: tObject);
begin
    PageControl2.ActivePage:=tsNotas;
    MostrarNotas;
end;

procedure TFormFaturamento.FormActivate(Sender: TObject);
begin
  inherited;
  if assigned(frmNfe40) then
  begin
    PageControl2.ActivePage:=tsNotas;
    MostrarNotas;
  end;
  if assigned(frmpedido) then
  begin
   Pesquisa;

  end;


end;

procedure TFormFaturamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TFormFaturamento.FormCreate(Sender: tObject);
Var
  fQtde : Integer;
begin
  inherited;
  logoJPG := 'logo' + DBInicio.EMP_CODIGO + '.jpg';
   miFechamentodeCaixaFaturamento.Enabled :=   Uteis.AcessoUsuario('ComercialFaturamento',DBInicio.Usuario.CODIGO,FormFaturamento).Relatorio;
   If DBInicio.Nfe.Usar_Logo then
      DBInicio.Nfe.Logo.SaveToFile(DBInicio.Versao.PATH+'NFe4'+'\temp\'+ logoJPG)
    else
      DBInicio.Empresa.LOGO.SaveToFile(DBInicio.Versao.PATH+'NFe4'+'\temp\'+ logoJPG);
  fListaEmpresas:= TStringList.Create;
  ListasEmpresasPermitidas;
  qEmpresa.Close;
  qEmpresa.SQL.Text := ' SELECT em.emp_codigo, em.EMP_CGC, PMT_CERTIFICADO_DIGITAL  FROM PRMT0001 pr '+
                       ' JOIN EMP0000 em ON (pr.EMP_CODIGO = em.EMP_CODIGO)   '+
                       ' WHERE em.EMP_CODIGO  IN ('+ fListaEmpresas.CommaText +')';
  qEmpresa.Open;
     ACBrNFe1.DANFE.ExpandeLogoMarca := DBInicio.Nfe.Usar_Logo;
     ACBrNFe1.DANFE.Logo       := DBInicio.Versao.PATH+'NFe4'+ '\temp\'+ logoJPG;
     btnRetornaPedido.Enabled :=  DBInicio.Empresa.wTipoLiberacaoFaturamento = 'M';

     cbClientes.clear;

    OpenAux3(SQLDEF('PARAMETROS','SELECT P1.PMT_QTDE_DECIMAIS, PMT_QTDE_DEC_PED, PMT_QTDE_DEC_OCP  FROM PRMT0001 P1 ',
                                              'WHERE P1.EMP_CODIGO = '+ QuotedStr(dbinicio.Empresa.EMP_CODIGO) ,'P1.EMP_CODIGO','P1.'));

    try
      fQtde :=  qAux3.FieldByName('PMT_QTDE_DECIMAIS').AsInteger;
    Except on e:Exception do
      begin
        MessageDlg('Erro ao Carregar os Parâmetros da Empresa. Favor Revisá-los.' + #13 + #10 + e.Message, mtError, [mbOK], 0);
        Close;
        Abort;
      end;

    end;
    if fQtde = 0  then
      fQtde := 2;
    ACBrNFeDANFEFR1.CasasDecimais.qCom :=  fQtde;
    ACBrNFeDANFEFR1.CasasDecimais.vUnCom := fQtde;
    self.Width:=1321;
    self.Height:=608;
    SELF.Constraints.MinHeight := 608; //717
    SELF.Constraints.MinWidth := 1321;
    pPedido:='';
    pNota:='';
    pSqlShareDB:=cONCATsE(' and T1.' , dbInicio.ExclusivoSql('RECEBER') );

    if dbInicio.Exclusivo('PRODUTOS')then
       pEmpresa := ' and PD.emp_codigo = it.emp_codigo '
    Else
       pEmpresa := '';
     lstatus.Caption := IIF(dbinicio.Nfe.AmbienteWebService = tpProducao,'Produção', 'Homologação') ;

   if (DBInicio.Nfe.Emp_TipoCertificado = 3) or (DBInicio.Nfe.Emp_TipoCertificado = 9) then
   begin
     ACBrNFe1.Configuracoes.Geral.SSLLib   := libWinCrypt;
     ACBrNFe1.Configuracoes.Geral.SSLXmlSignLib := xsLibXml2;
     ACBrNFe1.Configuracoes.Geral.SSLHttpLib := httpWinHttp;
     ACBrNFe1.Configuracoes.Geral.SSLCryptLib := cryWinCrypt;
   end
   else
   begin
     ACBrNFe1.Configuracoes.Geral.SSLLib         := libCapicomDelphiSoap;
     ACBrNFe1.Configuracoes.Geral.SSLCryptLib    := cryCapicom;
     ACBrNFe1.Configuracoes.Geral.SSLHttpLib     := httpIndy;
     ACBrNFe1.Configuracoes.Geral.SSLXmlSignLib  := xsMsXmlCapicom;
   end;


  self.Constraints.MaxHeight:=0;
  self.Constraints.MaxWidth:=0;
end;

procedure TFormFaturamento.FormDestroy(Sender: TObject);
begin
  inherited;
  FormFaturamento := Nil;
end;



procedure TFormFaturamento.EstornaNF( const pOperacao:string );
var wSituacao,  sql,amx_origem, amx_destino : String;
    wqtde : Integer;
    qtdeItem : integer; //quantidades de itens
    opvBaixarEstoquePeloFaturamento: boolean;
begin
     if NOT CdsNotasNF_NOTANUMBER.ISNULL then
     begin
         CdsNotas.DisableControls;

         try

               //retorna o credito do cliente
              OpenAux(' SELECT * FROM  CONTA_FATURA '+
                      ' WHERE fat_registro = '+
                      ' (SELECT fat_registro FROM FAT0000 fat WHERE fat_codigo = '+QuotedStr(CdsNotasNF_NOTANUMBER.AsString) +
                           ConcatSe(' and fat.',DBInicio.ExclusivoSql('RECEBER')  )+')' );

               if not qAux.IsEmpty then
               begin
                  ExecSql( ' Delete from CONTA_FATURA where FAT_REGISTRO = '+ IntToStr(qAux.FieldByName('FAT_REGISTRO').AsInteger ) );
                  qaux.First;
                  while not qAux.Eof do
                  begin

                    ExecSql('UPDATE CONTA_CORRENTE SET VALOR_UTILIZADO  = VALOR_UTILIZADO - '+FloatToSQL(qAux.FieldByName('CFA_VALOR').AsFloat) +
                            ' WHERE codigo = '+QuotedStr(qAux.FieldByName('CODIGO_CONTA').asstring  ),false );
                    qaux.Next;
                  end;



               end;

             // usar funcoes db da unit iniciodb para manter o controle transacional visto que os sqlconnectiuons são diferentes
               If cdsNotasNF_INTEGRADO.AsString = 'S' then
                wqtde := BuscaUmDadoSqlAsInteger('Select cast(count(*) as integer) as conta from    NF0001 '+
                                        ' WHERE NF_NOTANUMBER = '+QuotedStr(cdsNotasNF_NOTANUMBER.AsString)+
                                        ConcatSe(' and ' , dbinicio.ExclusivoSql('RECEBER')));
               if (cdsNotasNF_INTEGRADO.AsString = 'S' ) and (wqtde > 1) then
               begin
                  // ATUALIZANDO FAT0000
                  sql:= 'update FAT0000 ';
                  if cdsNotasNF_TIPONOTA.AsString = 'S' then // SERVIÇO
                    SQL:= SQL +  ' set FAT_VL_LIQ  = (FAT_VL_LIQ - FPC_VALORSERV_LIQ) ' +
                     '  , FAT_VLFAT =  (FAT_VLFAT - FPC_VALORSERV_FAT) '
                  else
                    SQL:= SQL +  'set FAT_VL_LIQ  = FPC_VALORSERV_LIQ ' +
                     '  , FAT_VLFAT =  FPC_VALORSERV_FAT ';


                  sql:= sql +  'WHERE FAT_CODIGO = '+QuotedStr (cdsNotasNF_NOTANUMBER.AsString)   +
                        ConcatSe(' and ' , dbinicio.ExclusivoSql('RECEBER'));

                  ExecSql(SQL,false);
                  // ATUALIZANDO FAT_PC01
                  sql:= 'update FAT_PC01 ';
                  if cdsNotasNF_TIPONOTA.AsString = 'S' then // SERVIÇO
                    sql:= sql +  'set FPC_VLPARC = (FPC_VLPARC -FPC_VALR_SERVICOS) '
                  else
                    sql:= sql +  'set FPC_VLPARC = FPC_VALR_SERVICOS ';

                   sql:= sql +  'WHERE FAT_CODIGO = '+QuotedStr (cdsNotasNF_NOTANUMBER.AsString)   +
                        ConcatSe(' and ' , dbinicio.ExclusivoSql('RECEBER'));

                  ExecSql(SQL,false);
                  //atualizando nf_pc1
                  sql :='update nf_pc01 '+
                        ' set FPC_VLPARC = (SELECT FPC_VLPARC FROM FAT_PC01 '+
                        '                   WHERE NF_PC01.FPC_NUMER = FAT_PC01.FPC_NUMER  AND FAT_CODIGO = '+QuotedStr (cdsNotasNF_NOTANUMBER.AsString)+')'+
                        ' WHERE FAT_CODIGO = '+QuotedStr (cdsNotasNF_NOTANUMBER.AsString) +
                          ConcatSe(' and ' , dbinicio.ExclusivoSql('RECEBER'));

                 ExecSql(sql,false);

                ExecSql(' INSERT INTO HISTORICO_EXPE (HIS_REGISTRO, EMP_CODIGO, SITEXP,DATASIT,USU_CODIGO, PED_CODIGO, OBSERVACAO) '+
                       ' VALUES (GEN_ID(GEN_HIST_EXPE,1),' +QuotedStr(cdsNotasEMP_CODIGO.AsString) + ',  ''PEN'',CURRENT_TIMESTAMP,'+DBInicio.Usuario.CODIGO+
                       ','+QuotedStr(CdsNotasPED_CODIGO.AsString)  + ','+QuotedStr('ESTORNO DA NOTA PARCIAL')+  ')',false);

               end
               else
               begin
                 ExecSql( 'DELETE FROM FAT_RECEBIMENTO  WHERE EXISTS  '   +
                          ' (SELECT 1 FROM FAT_PC01 fat WHERE FAT_RECEBIMENTO.FAT_REGISTRO = fat.FAT_REGISTRO and FAT_CODIGO = '+ QuotedStr(CdsNotasNF_NOTANUMBER.AsString)+
                          ConcatSe(' and fat.',DBInicio.ExclusivoSql('RECEBER') ) +')' ,false

                          );
                 ExecSql( SQLDEF('RECEBER','Delete from FAT0000 ','where FAT_CODIGO = '''+CdsNotasNF_NOTANUMBER.AsString+'''','',''),false );
                 ExecSql( SQLDEF('RECEBER','Delete from FAT_PC01 ','where FAT_CODIGO = '''+CdsNotasNF_NOTANUMBER.AsString+'''','',''),false );
                 ExecSql( SQLDEF('RECEBER','Delete from NF_PC01 ','where FAT_CODIGO = '''+CdsNotasNF_NOTANUMBER.AsString+'''','',''),false );



                ExecSql(' INSERT INTO HISTORICO_EXPE (HIS_REGISTRO, EMP_CODIGO, SITEXP,DATASIT,USU_CODIGO, PED_CODIGO, OBSERVACAO) '+
                       ' VALUES (GEN_ID(GEN_HIST_EXPE,1),'+QuotedStr(cdsNotasEMP_CODIGO.AsString) + ',''PEN'',CURRENT_TIMESTAMP,'+DBInicio.Usuario.CODIGO+
                       ','+QuotedStr(CdsNotasPED_CODIGO.AsString)  + ','+QuotedStr('ESTORNO DA NOTA')+  ')',false);

               end;


               with qAuxEstornaItem, SQL do
               begin
                clear;
                Add( 'Select ITP.AMX_CODIGO_DESTINO, ITP.PED_CODIGO, IIF(ITP.PRD_REFER='+qStr('')+', ITP.prdco_codigo_original, ITP.PRD_REFER) AS PRD_REFER, ITP.prf_produto_agregado, NF.NF_IT_NOTANUMER,');
                Add( '       NF.NF_QTDE, ITP.PRF_QTDEFAT, ITP.PRD_REFER, ');
                Add( '       ITP.PRF_REGISTRO, PD.PRD_CODIGO,');
                Add( '       NF.PRG_REGISTRO, ITP.PRG_REGISTRO,');
                Add( '       NF.PRDL_REGISTRO, ITP.PRDL_REGISTRO,');
                Add( '       NF.NF_PRECO,');
                Add( '       NF.EMP_CODIGO,');
                Add( '       X1.OPV_ATESTOQUE,');
                Add( '       COALESCE(T1.pti_atualizar_estoque,''S'') AS PTI_ATUALIZAR_ESTOQUE ,');
                Add( '       COALESCE(g1.PGR_ATUALIZA_ESTOQUE,''S'') AS PGR_ATUALIZA_ESTOQUE,');  //EVITAR QUE NÃO TENHA GRUPO O PRODUTO
                Add( '       O1.OPE_ESTOQUE,');
                Add( '       nf.nf_flag_atualiza_estoque,');
                Add( '       cl.NF_ENTR_SAID,');
                Add( '       cl.cli_codigo,');
                Add( '       clie.cli_razao,');
                Add( '       clie.CLI_CGC, ');

                Add( '       PDD.amx_codigo,');
                Add( '       (Coalesce(ITP.PRF_QTDE,0) - coalesce(ITP.PRF_QTDEFAT,0)) as PRF_QTDE_FATURAR_CC,');
                Add( '       T1.PTI_SIGLA, ');
                Add( '       ITP.PRF_REGISTRO_VINCULADO ');
                Add( 'from NF_IT01 NF');
                Add( '     join NF0001 CL on (CL.NF_NOTANUMBER=NF.NF_IT_NOTANUMER and cl.emp_codigo=nf.emp_codigo)');
                Add( '     join cli0000 clie on (clie.cli_codigo = cl.cli_codigo)');
                Add( '     left join PED_IT01 ITP on ( (ITP.PRF_REGISTRO = NF.PRF_REGISTRO) or (ITP.PRF_REGISTRO_VINCULADO = NF.PRF_REGISTRO) )');
                Add( '     left join PRD0000 PD on (PD.PRD_CODIGO = ITP.PRD_CODIGO)');
//                Add( '     left join PRD_EQUIV PQ on (PD.PRD_REFER = PQ.PRD_REFER) and (CL.CLI_CODIGO = PQ.CLI_CODIGO)');
                Add( '     left join OPV0000 X1 ON (X1.opv_codigo = cl.opv_codigo)');
                Add( '     LEFT JOIN PRD_TIPO T1 ON (T1.pti_codigo = pd.pti_codigo)');
                Add( '     left join PRD_GRUPO G1 ON (G1.pgr_codigo = pd.pgr_codigo)');
                Add( '     LEFT JOIN OPE0000 O1 ON (O1.ope_codigo = cl.ope_codigo)');
                Add( '     left join ped0000 PDD on ( PDD.ped_codigo = ITP.ped_codigo AND PDD.emp_CODIGO=NF.EMP_CODIGO)' );
                Add( 'where NF.NF_IT_NOTANUMER = '+qstr(CdsNotasNF_NOTANUMBER.AsString)) ;

                if DBInicio.Empresa.wPMT_FATURA_MULTIEMPRESA then
                  add( '  AND nf.EMP_CODIGO in ('+fListaEmpresas.commatext+')')
                else
                  add( '  AND NF.EMP_CODIGO = '+qStr(DBINICIO.Empresa.EMP_CODIGO) );

                if (cdsNotasNF_INTEGRADO.AsString = 'S' ) and (wqtde > 1) then
                begin
                  Add(' AND PD.PRD_PRODSERV = ' +QuotedStr(cdsNotasNF_TIPONOTA.AsString) )  ;
                  Add(' AND NF_TIPONOTA = '+QuotedStr(cdsNotasNF_TIPONOTA.AsString) )  ;
                end;
                Add( 'order by NF.NF_IT_NOTANUMER,NF.NF_REGISTRO');
               end;

               qAuxEstornaItem.Open ;

               While not qAuxEstornaItem.Eof do
               begin
                     { se a operação atualiza estoque                    - OPE_ESTOQUE
                       se o TIPO DE produto atualiza estoque             - PTI_ATUALIZAR_ESTOQUE
                       se o tipo de pedido atualiza estoque              - OPV_ATESTOQUE
                       se o grupo de produto atualiza estoque             - PGR_ATUALIZA_ESTOQUE
                     }
                    if (qAuxEstornaItem.fieldbyname('OPV_ATESTOQUE').AsString = 'S') and (qAuxEstornaItem.fieldbyname('PTI_ATUALIZAR_ESTOQUE').AsString = 'S')
                    and (qAuxEstornaItem.fieldbyname('OPE_ESTOQUE').AsString = 'S') and (qAuxEstornaItem.FieldByName('PGR_ATUALIZA_ESTOQUE').AsString = 'S') then
                    begin   { se o item da nota atualiza estoque}
                            if (qAuxEstornaItem.fieldbyname('NF_FLAG_ATUALIZA_ESTOQUE').AsString = 'S') then
                            begin
                                     // 1º produto kit e controla kit
                                 if  ((qAuxEstornaItem.fieldbyname('PTI_SIGLA').AsString = 'KT') and (DBInicio.Empresa.wPMT_CONTROLA_KIT)) or
                                    // 2º produto não é um kit
                                     ((qAuxEstornaItem.fieldbyname('PTI_SIGLA').AsString <> 'KT')
                                             and ((qAuxEstornaItem.FieldByName('PRF_REGISTRO_VINCULADO').AsInteger = 0) or
                                                 (qAuxEstornaItem.FieldByName('PRF_REGISTRO_VINCULADO').IsNull))) or
                                    // 3º item do kit e no parametro não controla por kit
                                     ((qAuxEstornaItem.fieldbyname('PTI_SIGLA').AsString <> 'KT') and   (qAuxEstornaItem.FieldByName('PRF_REGISTRO_VINCULADO').AsInteger > 0)
                                      and not (DBInicio.Empresa.wPMT_CONTROLA_KIT) )


                                 then
                                 begin
                                      qtdeItem:= 1;
                                      if (qAuxEstornaItem.fieldbyname('PTI_SIGLA').AsString <> 'KT') and   (qAuxEstornaItem.FieldByName('PRF_REGISTRO_VINCULADO').AsInteger > 0) then
                                      begin
                                        //quantidade de itens
                                        OpenAux
                                          ('SELECT PRF_QTDE FROM PED_IT01 co  '+
                                           ' WHERE PED_CODIGO = '+QuotedStr(qAuxEstornaItem.FieldByName('PED_CODIGO').AsString)+
                                           ' AND PRF_REGISTRO  = '+ IntToStr(qAuxEstornaItem.FieldByName('PRF_REGISTRO').AsInteger) +
                                           ' AND PRD_CODIGO = ' +  QuotedStr(qAuxEstornaItem.FieldByName('PRD_CODIGO').AsString)+
                                           ' and emp_codigo = '+ QuotedStr(cdsNotasEMP_CODIGO.AsString)
                                           );
                                        if not qAux.IsEmpty then
                                          qtdeItem := qAux.FieldByName('PRF_QTDE').AsInteger;
                                      end;
                                     // se o a baixa do estoque é por faturamento atualiza o kardex
                                    opvBaixarEstoquePeloFaturamento := BuscaUmDadoSqlAsString(
                                        'SELECT op.OPV_BAIXAR_ESTOQUE_PELO_FAT FROM PED0000 pe JOIN OPV0000 op ON (op.OPV_CODIGO = pe.OPV_CODIGO) WHERE pe.PED_CODIGO = ' +
                                        QuotedStr(qAuxEstornaItem.FieldByName('PED_CODIGO').AsString)
                                    ) = 'S';
                                    if (dbInicio.Empresa.wAtualizaEstoque = 'F') or (opvBaixarEstoquePeloFaturamento) then
                                    begin
                                         amx_destino := '';
                                         if (qAuxEstornaItem.fieldbyname('PRF_REGISTRO').AsString <> '') then
                                         begin
                                           if opvBaixarEstoquePeloFaturamento then
                                           begin
                                             amx_origem := BuscaUmDadoSqlAsString('SELECT AMX_CODIGO FROM ALMOX0000 WHERE AMX_CNPJ_PART = '+QuotedStr(RetirarMascaraCNPJ_INSC(DBInicio.Empresa.CNPJ_CNPF)));
                                             amx_destino := '';
                                           end
                                           else
                                           if (cdsNotascli_cgc.AsString <> '')  and (cdsNotasopv_estoque_remessaindus.AsString = 'S')  then // REMESSA INDUSTRIALIZAÇÃO
                                           begin
                                               amx_origem := qAuxEstornaItem.fieldbyname('AMX_CODIGO_DESTINO').AsString;
                                               amx_destino := BuscaUmDadoSqlAsString('SELECT AMX_CODIGO FROM ALMOX0000 WHERE AMX_CNPJ_PART = '+QuotedStr(RetirarMascaraCNPJ_INSC(cdsNotascli_cgc.AsString)));
                                           end
                                           else
                                           begin
                                              OpenAux
                                                ('SELECT AMX_CODIGO_DESTINO FROM PED_IT01 '+
                                                 ' WHERE PED_CODIGO = '+QuotedStr(qAuxEstornaItem.FieldByName('PED_CODIGO').AsString)+
                                                 ' AND PRF_REGISTRO  = '+ IntToStr(qAuxEstornaItem.FieldByName('PRF_REGISTRO').AsInteger) +
                                                 ' AND PRD_CODIGO = ' +  QuotedStr(qAuxEstornaItem.FieldByName('PRD_CODIGO').AsString)+
                                                 ' and emp_codigo = '+ QuotedStr(cdsNotasEMP_CODIGO.AsString)
                                                 );
                                              amx_origem := qAux.FieldByName('AMX_CODIGO_DESTINO').AsString;
                                           end;
                                           KardexLancamento(qAuxEstornaItem.fieldbyname('PRF_REGISTRO').AsString,
                                                             'NF',
                                                             amx_origem,
                                                             amx_destino,
                                                             qAuxEstornaItem.fieldbyname('PRD_CODIGO').AsString,
                                                             qAuxEstornaItem.fieldbyname('PRG_REGISTRO').AsString,
                                                             '',
                                                             iif( qAuxEstornaItem.fieldbyname('NF_ENTR_SAID').AsString = 'S','E','S'),
                                                             '',
                                                             '',
                                                             {NÃO PODE PASSAR O LOTE PORQUE MESMO BAIXA ESTOQUE POR FATURAMENTO ELE BAIXA O LOTE SOMENTE NO PEDIDO}
                                                           //  qAuxEstornaItem.fieldbyname('PRDL_REGISTRO').AsString,
                                                             'ESTORNO FATURAMENTO',
                                                             Now,
                                                             qAuxEstornaItem.fieldbyname('NF_QTDE').AsFloat*qtdeItem,  //quantidades de kits (NF_QTDE) x quantidades de itens (qtdeItem
                                                             qAuxEstornaItem.fieldbyname('NF_IT_NOTANUMER').AsString,
                                                             qAuxEstornaItem.fieldbyname('CLI_CODIGO').AsString+'-'+qAuxEstornaItem.fieldbyname('CLI_RAZAO').AsString,
                                                             qAuxEstornaItem.fieldbyname('NF_PRECO').AsFloat,
                                                             qAuxEstornaItem.fieldbyname('CLI_CODIGO').AsString,//CLI_CODIGO
                                                              '',//FOR_CODIGO
                                                              '',//COL_CODIGO
                                                              qAuxEstornaItem.fieldbyname('PRD_REFER').AsString,//REFERENCIA
                                                              ( (cdsNotascli_cgc.AsString <> '')  and (cdsNotasopv_estoque_remessaindus.AsString = 'S')  ),  // entrada na estoque do terceir
                                                               'REMESSA INDUSTRIALIZAÇÃO - ESTORNO FATURAMENTO')  ;


                                         end;
                                    end;

                                 end;

                            end;

                    end;
                    if qAuxEstornaItem.FieldByName('prf_produto_agregado').AsString<>'S' then
                    begin
                         //Diminui_Qtde_Faturada
                         if not qAuxEstornaItem.FIELDBYNAME('PRF_REGISTRO').isnull then
                            ExecSql( Sqldef('PEDIDOS', 'Update PED_IT01 Set PRF_QTDEFAT = (PRF_QTDEFAT - '+FloatToSql( qAuxEstornaItem.FIELDBYNAME('NF_QTDE').AsFloat )+')',
                                                       'where PRF_REGISTRO = '+qStr(qAuxEstornaItem.FIELDBYNAME('PRF_REGISTRO').AsString),'',''),false );
                    end;

                    if DBInicio.GetParametroSistema('PMT_ATUALIZA_LOTE') = 'F'  then
                       movimentaLote(
                        qAuxEstornaItem.FIELDBYNAME('PRF_REGISTRO').AsInteger,
                        qAuxEstornaItem.FIELDBYNAME('PRDL_REGISTRO').AsInteger,
                        screen.ActiveForm.Name,
                        'E',
                        qAuxEstornaItem.FIELDBYNAME('PRF_QTDEFAT').AsFloat,
                        0);


                    qAuxEstornaItem.Next;
               end;

                //Atualizando a situacao do Pedido
                ExecSql( 'Update PED0000 SET PED_VLFATURADO = coalesce(PED_VLFATURADO,0) - '+FloatToSql( CdsNotasNF_TOT_PROD.AsCurrency+
                           CdsNotasNF_VLFRETE.AsFloat + CdsNotasNF_VLSEGURO.AsFloat+ CdsNotasNF_DESP_ACES.AsFloat+CdsNotasNF_VL_SUBTRIB.AsFloat -CdsNotasNF_VL_DESCTO.AsCurrency )+
                        ' where PED_CODIGO = '+qStr(CdsNotasPED_CODIGO.AsString)+ ' and emp_codigo = ' + QuotedStr(cdsNotasEMP_CODIGO.AsString),false  );

               if pOperacao = 'D' then
                  ExecSql( 'Update NF0001 set NF_DENEGADA_CANCELADA = ''S'', NF_VENDA_FATURADA = ''N'' where nf_registro = '+CdsNotasNF_REGISTRO.AsString,false)
               else
               if pOperacao = 'C' then  // wBotao = Cancelar
                  ExecSql( 'Update NF0001 set NF_CANCELADA = ''S'',NF_VENDA_FATURADA = ''N''  where nf_registro = '+CdsNotasNF_REGISTRO.AsString,false)
               else
               begin
                    if (cdsNotasNF_INTEGRADO.AsString = 'S' ) and (wqtde > 1) then
                   begin
                     //Exclui itens da NFE
                      ExecSql( Sqldef('RECEBER','Delete from NF_IT01 ','where NF_IT_NOTANUMER = '+QuotedStr(CdsNotasNF_NOTANUMBER.AsString)    +
                      ' AND (SELECT prd_prodserv FROM PRD0000 pr WHERE pr.PRD_CODIGO = nf_it01.PRD_CODIGO) = '+QuotedStr(cdsNotasNF_TIPONOTA.AsString)
                      ,'',''),false );
                     //excluir NFE  somente de item selecionada, não de toda que tem as mesma fatura
                      ExecSql( Sqldef('RECEBER','Delete from NF0001 ','where NF_REGISTRO = '+IntToStr(CdsNotasNF_REGISTRO.AsInteger)
                      +' AND NF_TIPONOTA = '+QuotedStr(cdsNotasNF_TIPONOTA.AsString)
                       ,'',''),false );

                   end
                   Else
                   begin
                      //Exclui itens da NFE
                      ExecSql( Sqldef('RECEBER','Delete from NF_IT01 ','where NF_IT_NOTANUMER = '''+CdsNotasNF_NOTANUMBER.AsString+'''','',''),false );
                      //excluir NFE
                      ExecSql( Sqldef('RECEBER','Delete from NF0001 ','where NF_NOTANUMBER = '''+CdsNotasNF_NOTANUMBER.AsString+'''','',''),false );
                      //Atualiza SEQUENCIA NFE para nao perder o codigo
                      if (CdsNotasNF_NUM_NFE.AsInteger) >= BuscaUmDadoSqlAsInteger('select EMP_SEQUENCIA_NFE from emp0000 where emp_CODIGO='+QSTR(cdsNotasEMP_CODIGO.AsString)) then
                      begin
                           // decrementa SEQUENCIA para nao perder o codigo caso GERE escrita fiscal
                           if BuscaUmDadoSqlasString( 'Select Ope_Escrita From Ope0000 '+
                                                               'where OPE_CODIGO='+qStr(CdsNotasOPE_CODIGO.AsString)+
                                                               '      and OPE_NATUREZA='+qStr(CdsNotasOPE_NATUREZA.AsString) ) = 'S' then
                           ExecSql( SQLDEF('RECEBER','Update EMP0000 Set EMP_SEQUENCIA_NFE = EMP_SEQUENCIA_NFE -1','','',''),false );
                      end;

                   end;

               end;
         finally
                CdsNotas.EnableControls;
         end;
   End;

end;

procedure TFormFaturamento.btnAutorizadasClick(Sender: TObject);
begin
  inherited;
  PesqStatus := 'A';
  MostrarNotas;
end;

procedure TFormFaturamento.btnCancelarClick(Sender: TObject);
begin
  inherited;
  PesqStatus := 'C';
  MostrarNotas;
end;

procedure TFormFaturamento.btnConsultarClick(Sender: TObject);
begin
  inherited;
  try
   btnConsultar.Enabled:= False;
   btnConsultar.Caption := 'Aguarde';
   ConsultaNotas;
  finally
   MostrarNotas;
   FreeAndNil(nf);
   btnConsultar.Enabled:= True;
   btnConsultar.Caption := 'Consultar NFe';

  end;

end;

procedure TFormFaturamento.btnDANFEClick(Sender: TObject);
var
 xml :TStringStream;
 xmlstream : TStream;
 nomeArq: string;
 erro: boolean;
 LOGO   :tBitMap;
 protocolo : string ;
Begin
  ACBrNFe1.Configuracoes.Geral.VersaoDF := ve400;
    ACBrNFeDANFEFR1.CasasDecimais.vUnCom :=  dbInicio.Empresa.fPMT_QTDE_DEC_PED;
  if cdsNotas.FieldByName('nf_status_nfe').AsString = 'A' then
  begin


     if CdsNotas.FieldByName('NF_NUM_NFCE').AsInteger <> 0  then
     begin
       ACBrNFe1.DANFE := ACBrNFeDANFCEFR1;
       ACBrNFeDANFCEFR1.FastFile :=  DBInicio.Versao.PATH+'NFe4'+'\relatorio\DANFeNFCe5_00.fr3';
     end
     Else
     begin
       ACBrNFe1.DANFE := ACBrNFeDANFEFR1;
       ACBrNFeDANFEFR1.FastFile :=  DBInicio.Versao.PATH+'NFe4'+'\relatorio\DANFE.fr3';
     end;

    ACBrNFe1.NotasFiscais.Clear;
    OpenAux('select first 1 NFX_XML from NF0001_XML'+
            ' where  NF_REGISTRO = '+ IntToStr(cdsNotas.FieldByName('NF_REGISTRO').AsInteger)  +
            ' ORDER BY NFX_REGISTRO DESC ');
    erro:= True;
    while not qaux.Eof do
    begin
     if qAux.FieldByName('NFX_XML').AsString <> '' then
     begin
       xml :=  TStringStream.Create;
       xmlstream := qAux.CreateBlobStream(qAux.FieldByName('NFX_XML'),bmRead);
       try
         xml.CopyFrom(xmlstream,xmlstream.Size) ;
         if ACBrNFe1.NotasFiscais.LoadFromStream(xml,TRUE) then
         if ACBrNFe1.NotasFiscais.Items[0].NFE.procNFe.nProt = '' then
          begin
           PROTOCOLO :=  BuscaUmDadoSqlAsString('SELECT NF_PROTOCOLO_NFE FROM NF0001 WHERE NF_REGISTRO = '+ IntToStr(cdsNotas.FieldByName('NF_REGISTRO').AsInteger));
           ACBrNFe1.NotasFiscais.Items[0].NFE.procNFe.nProt :=  PROTOCOLO;
          end;

         // if ACBrNFe1.NotasFiscais.Items[0].NFE.procNFe.nProt <> '' then
            LOGO := tBitMap.Create;
            OpenAux3(' SELECT EMP_LOGO, EMP_LOGO_NFE, EMP_LOGONFE_PROPRIO, EMP_RAZAO, EMP_EMAIL, EMP_HOME '+
            ' from emp0000 as emp WHERE emp.emp_codigo = '+QuotedStr(cdsNotasEMP_CODIGO.AsString));

            If qAux3.FieldByName('EMP_LOGONFE_PROPRIO').AsString = 'S' then
            begin
              Le_Imagem_JPEG_toBMP( qaux3.FieldByName('EMP_LOGO_NFE') as TBlobField ,logo );
              Logo.SaveToFile(DBInicio.Versao.PATH+'NFe4'+'\temp\'+ logoJPG)
            end
            else
            begin
              Le_Imagem_JPEG_toBMP( qaux3.FieldByName('EMP_LOGO') as TBlobField ,logo );
              LOGO.SaveToFile(DBInicio.Versao.PATH+'NFe4'+'\temp\'+ logoJPG);
            end;

            ACBrNFE1.NotasFiscais.Items[0].NFe.Emit.xNome  := copy(qAux3.FieldByName('EMP_RAZAO').AsString,1,60);
            ACBrNFE1.DANFE.Email := qAux3.FieldByName('EMP_EMAIL').AsString;
            ACBrNFE1.DANFE.Site := qAux3.FieldByName('EMP_HOME').AsString;

            ACBrNFe1.DANFE.ExpandeLogoMarca := qAux3.FieldByName('EMP_LOGONFE_PROPRIO').AsString = 'S';


           ACBrNFE1.NotasFiscais.Imprimir;
           erro:= False;
           break;


       finally
         FreeAndNil(xml);
         FreeAndNil(xmlstream);
         ACBrNFe1.NotasFiscais.Clear;
         logo.Free;
       end;
     end;
     qAux.Next;
    end;

    if erro then
     raise Exception.Create('Erro XML');
  end
  Else if cdsNotas.FieldByName('nf_status_nfe').AsString = 'N' then
  Begin
   ShowMessage('Espelho da NFe não tem validade. ' + #13#10+
               'Precisa autorizar na receita'
   );

    ACBrNFe1.NotasFiscais.Clear;
    if not assigned(frmProcessaNFe)  then
      nf := TfrmProcessaNFe.Create(self);
     NF.EmpCodigo := cdsNotasEMP_CODIGO.AsString;
     NF.BuscaNota(CdsNotas.FieldByName('NF_NOTANUMBER').AsString);
     NF.ACBrNFe1.NotasFiscais.Clear;
     nf.GerarNFE(True);
     nf.ConfiguracoesIniciais(moNFe);
     nf.ACBrNFe1.DANFE := ACBrNFeDANFEFR1;
     nf.ACBrNFe1.DANFE.PathPDF  := DBInicio.Versao.PATH +'NFe4' + '\'+ FormatDateTime('yyyymm',date) + '\Gerados\' + NomeArq;
     nf.ACBrNFeDANFEFR1.FastFile :=  DBInicio.Versao.PATH+'NFe4'+'\relatorio\PredanfeNovo.fr3';  //BASEADO NO DANFeRetrato_2019.fr3
     ACBrNFeDANFEFR1.FastFile :=  DBInicio.Versao.PATH+'NFe4'+'\relatorio\PredanfeNovo.fr3';  //BASEADO NO DANFeRetrato_2019.fr3

     NF.ACBrNFE1.NotasFiscais.Imprimir;
     nomeArq := CdsNotas.FieldByName('NF_NOTANUMBER').AsString;
     nomeArq := DBInicio.Versao.PATH +'NFe4' + '\'+ FormatDateTime('yyyymm',date) + '\Gerados\' + NomeArq;
     NF.ACBrNFe1.NotasFiscais.GravarXML(NomeArq +'-nfe.xml');
  End
  else
   raise Exception.Create('Só pode imprimir Nota Fiscal eletrônica autorizada');


end;

procedure TFormFaturamento.BitBtn1Click(Sender: TObject);
begin
  inherited;
   PesqStatus := '';
   MostrarNotas;
end;

procedure TFormFaturamento.btnExpedicaoNotaClick(Sender: TObject);
begin
  inherited;
  if cdsNotasNF_SITEXPEDICAO.AsString = 'C' then
    GeraException('Nota já foi cancelada')
  else
  if cdsNotasNF_SITEXPEDICAO.AsString = 'L' then
  GeraException('Nota já foi liberada') ;
    try
     ExecSql( 'Update NF0001 SET NF_SITEXPEDICAO = ''L'' ' +
             ' where NF_REGISTRO = '+IntToStr(CdsNotasNF_REGISTRO.AsInteger)+
             ' and emp_codigo = '+ QuotedStr(cdsNotasEMP_CODIGO.AsString) );


     ExecSql(' INSERT INTO HISTORICO_EXPE (HIS_REGISTRO, EMP_CODIGO, SITEXP,DATASIT,USU_CODIGO, PED_CODIGO) '+
             ' VALUES (GEN_ID(GEN_HIST_EXPE,1),'+QuotedStr(cdsNotasEMP_CODIGO.AsString) + ',  ''LIB'',CURRENT_TIMESTAMP,'+DBInicio.Usuario.CODIGO+
              ','+ QuotedStr (CdsNotasPED_CODIGO.asstring)+    ')');
      Aviso('Pedido nº '+ CdsNotasPED_CODIGO.asstring +' de '+CdsNotasCLI_RAZAO.AsString+ ' liberado para expedição');
      MostrarNotas;
    except
      Aviso('Erro ao liberar');

    end;


end;

procedure TFormFaturamento.BitEstornoClick(Sender: tObject);
var Path, S, vCodFat   : string;
    status : string;
    atualizasequenciandor,CancelarDenegada : boolean;
begin
   atualizasequenciandor := true;
   if BuscaUmDadoSqlAsInteger('Select cast(count(*) as integer) as conta from    PED0000 WHERE SITEXP IN (''DPA'',''DEP'') AND PED_CODIGO = '+QuotedStr(CdsNotasPED_CODIGO.AsString)+
                              ' AND EMP_CODIGO = '+QuotedStr(cdsNotasEMP_CODIGO.AsString)) > 0 then
      GeraException('Pedido já despachado');
   if cdsNotasNF_TIPONOTA.AsString = 'S' then // TIPO DE NOTA DE SERVIÇO, NÃO EXCLUI SE TIVER
     if BuscaUmDadoSqlAsInteger(
        'Select cast(count(*) as integer) as conta ' +
        ' from  NFSE_FATPC WHERE FAT_CODIGO = '+ QuotedStr( CdsNotasNF_NOTANUMBER.AsString) +
        ' and emp_codigo = ' + QuotedStr(DBInicio.Empresa.EMP_CODIGO)    )> 0 then
      GeraException('Nota está em processo NFSE');
   CancelarDenegada := False;
  IF (CdsNotasNF_STATUS_NFE.AsString = 'R') then
  begin
    if BuscaUmDadoSqlAsInteger('Select cast(count(*) as integer) as conta from    NF0001_HISTORICO h WHERE  NFM_REGISTRO IN (110,301,302,303) '+
    ' AND NF_REGITRO = ' +  IntToStr(CdsNotasNF_REGISTRO.AsInteger) )>0  then
    begin
      if cdsNotasNF_DENEGADA_CANCELADA.AsString = 'S' then
         GeraException('Nota denegada já estornada');

      if MessageDlg('Uso denegado, vai estornar somente as faturas e baixa no estoque. Você gostaria de estornar?', mtConfirmation, [mbYes, mbNo], 0) in [mrYes] then
       CancelarDenegada := true
      else
        exit;



    end;
  end;

   //vai verificar se rejeição é denegado ou duplicidade , neste caso somente a novi pode excluir
   if NOT MatchStr(dbinicio.Usuario.USERNAME,['ADM','NOVI']) AND (CdsNotasNF_STATUS_NFE.AsString = 'R') and not CancelarDenegada  then
   begin

     if BuscaUmDadoSqlAsInteger('Select cast(count(*) as integer) as conta from    NF0001_HISTORICO h WHERE  NFM_REGISTRO IN (204,539) '+
        ' AND NF_REGITRO = ' +   IntToStr(CdsNotasNF_REGISTRO.AsInteger)) > 0 then
         GeraException('Duplicidade, somente usuário da Novi pode estornar');

   end;

   //caso a tela esteja desatualizada
   status:= BuscaUmDadoSqlAsString('select NF_STATUS_NFE from nf0001 where nf_registro = ' + IntToStr(CdsNotasNF_REGISTRO.AsInteger) );
   if status <> CdsNotasNF_STATUS_NFE.AsString then
   begin
       MostrarNotas;
       GeraException( 'Atenção! A tela esta sendo atualizada. Refazer operação ');
   end;
     // estornar se
     // numero da nota é nula
     // se for rejeitada
     //se for usuário ADM e novi e não for estatus A ou C
     if not (CdsNotasNF_NOTANUMBER.IsNull) or ( CdsNotasNF_STATUS_NFE.AsString = 'R') or
      (not (MatchStr(CdsNotasNF_STATUS_NFE.AsString,['A','C'])) and (MatchStr(DBInicio.Usuario.USERNAME,['ADM','NOVI']))) then
     begin
          if ((not (MatchStr(DBInicio.Usuario.USERNAME,['ADM','NOVI'])) and  ( MatchStr(CdsNotasNF_STATUS_NFE.AsString,['A','T']))) or
           ((MatchStr(DBInicio.Usuario.USERNAME,['ADM','NOVI'])) and (CdsNotasNF_STATUS_NFE.AsString = 'A'))) and (not DelphiAberto)    then
             GeraException( 'Atenção!!!'+#13+
                            'Nota Fiscal já foi autorizada na Receita Estadual.'+#13+
                            'É necessário antes fazer o cancelamento no módulo NFe!') ;

           if uteis.confirmacao ( pchar('Todos os dados da Fatura nº '+CdsNotasNF_NOTANUMBER.AsString+' serão estornados e o pedido retornará a situação "aberto".'+#13+'Continua ?')) = mryes then
           begin
                BeginTransaction;
                try
                   Screen.Cursor:=crSqlWait;
                   vCodFat := CdsNotasNF_NOTANUMBER.AsString;

                   try
                       if cdsNotasNF_INTEGRADO.AsString = 'S' then
                         if DBInicio.BuscaUmDadoSqlAsInteger ('SELECT COUNT(PED_CODIGO) FROM NF0001 WHERE PED_CODIGO = '+QuotedStr(CdsNotasPED_CODIGO.AsString)  +
                                                              'and emp_codigo = '+QuotedStr(cdsNotasEMP_CODIGO.AsString) ) > 1 then
                           atualizasequenciandor := False;
                       if CancelarDenegada then
                          EstornaNF( 'D' )
                       else
                          EstornaNF( 'E' );

                       if BuscaUmDadoSqlAsInteger( 'Select cast(count(*) as integer) as conta from    NF0001_XML where nf_registro ='+CdsNotasNF_REGISTRO.AsString+' and EMP_CODIGO = '+qStr(cdsNotasEMP_CODIGO.AsString) )  > 0 then
                          ExecSql('delete from NF0001_XML where nf_registro ='+CdsNotasNF_REGISTRO.AsString+' and EMP_CODIGO = '+qStr(cdsNotasEMP_CODIGO.AsString),false );

                       CommitTransaction;

                       if atualizasequenciandor then
                       begin
                         if (CdsNotasNF_INTERNO.AsString = 'N') then
                            SequenciadorPRC(dbInicio.Maindb, cdsNotasEMP_CODIGO.AsString,'NF0001', 'NF_NOTANUMBER_S', 1, CdsNotasNF_NOTANUMBER.AsString)
                         else
                            SequenciadorPRC(dbInicio.Maindb,cdsNotasEMP_CODIGO.AsString,'NF0001', 'NF_NOTANUMBER_N', 1, CdsNotasNF_NOTANUMBER.AsString);
                       end;

                       S    := dbInicio.SistemaLocal;
                       Path := copy(S,1,(Length(S)-1));
                       if FileExists(Path+'-Nfe\nfe\'+CdsNotasNF_CHAVE_NFE.Value+'-nfe.xml') then
                          DeleteFile(Path+'-Nfe\nfe\'+CdsNotasNF_CHAVE_NFE.Value+'-nfe.xml');
                       ExecSql(' DELETE FROM NF_REFERENCIA WHERE NF_REGISTRO = '+ CdsNotasNF_REGISTRO.AsString);








                       RefreshNotas;
                       RefreshPedidos;
                   finally
                          Screen.Cursor:=crDefault;
                   end;

                   uteis.aviso(pchar('Estorno da Fatura nº '+vCodFat+' efetuado com sucesso !'));

                Except
                  RollBackTransaction;
                  GeraException('Ocorreram problemas ao tentar estornar a Fatura nº '+CdsNotasNF_NOTANUMBER.AsString+'. Nada foi feito!');
                end;

           end;

     end
     else
        GeraException( 'Selecione a Fatura e Tente Novamente!!');
end;

procedure TFormFaturamento.RefreshNotas;
begin
     CdsNotas.DisableControls;
     CdsNotas.Close;
     CdsNotas.open;
     CdsNotas.EnableControls;
end;

procedure TFormFaturamento.RefreshPedidos;
begin
     CdsPedidos.DisableControls;
     CdsPedidos.Close;
     CdsPedidos.open;
     CdsPedidos.EnableControls;
end;


procedure TFormFaturamento.btnEmitirClick(Sender: TObject);
var
    errNaoSEFAZ, MostrarErro: boolean;
    ie: string;

begin
  MostrarErro := False;
  if not assigned(frmProcessaNFe)  then
   nf := TfrmProcessaNFe.Create(self);
  nf.ConfiguracoesIniciais(moNFe);
  clone := TClientDataSet.Create(Self);
  try
    btnEmitir.Enabled := False;
    btnConsultar.Enabled := False;
    nf.ConfiguracoesIniciais(moNFe);
    clone.CloneCursor(CdsNotas,False);
    clone.Filtered := False;
    clone.Filter:= '(selecionado = true)';
    clone.Filtered := True;
    clone.First;
    if not clone.IsEmpty then
    begin
      ACBrNFe1.NotasFiscais.Clear;
      if not DBInicio.Empresa.wPMT_FATURA_MULTIEMPRESA then
      begin
        if not nf.ACBrNFe1.SSL.CertificadoLido then
        begin
           ACBrNFe1.SSL.NumeroSerie := CarregarCertificado(DBInicio.Empresa.EMP_CODIGO);
           if ACBrNFe1.SSL.NumeroSerie <> '' then
           begin
              nf.ACBrNFe1.SSL.numeroserie := ACBrNFe1.SSL.NumeroSerie;
              if (DBInicio.Nfe.Emp_TipoCertificado = 3) or (DBInicio.Nfe.Emp_TipoCertificado = 9) then
              begin
                nf.ACBrNFe1.Configuracoes.Geral.SSLLib   := libWinCrypt;
                nf.ACBrNFe1.Configuracoes.Geral.SSLXmlSignLib := xsLibXml2;
                nf.ACBrNFe1.Configuracoes.Geral.SSLHttpLib := httpWinHttp;
                nf.ACBrNFe1.Configuracoes.Geral.SSLCryptLib := cryWinCrypt;
              end
              else
              begin
                nf.ACBrNFe1.Configuracoes.Geral.SSLLib         := libCapicomDelphiSoap;
                nf.ACBrNFe1.Configuracoes.Geral.SSLCryptLib    := cryCapicom;
                nf.ACBrNFe1.Configuracoes.Geral.SSLHttpLib     := httpIndy;
                nf.ACBrNFe1.Configuracoes.Geral.SSLXmlSignLib  := xsMsXmlCapicom;
              end;
              nf.ACBrNFe1.SSL.DescarregarCertificado;
              nf.ACBrNFe1.SSL.CarregarCertificado;
           end;
           if not nf.ACBrNFe1.SSL.CertificadoLido then
           begin
             ACBrNFe1.SSL.NumeroSerie := CarregarCertificado(nf.EmpCodigo);
             ACBrNFe1.SSL.CarregarCertificado;
             if not ACBrNFe1.SSL.CertificadoLido then
             begin
               MessageDlg('Favor informar o número de série do certificado da empresa ' + nf.EmpCodigo + ' nos parâmetros globais', mtWarning, [mbOK], 0);
               abort;
             end;
           end;
           nf.ACBrNFe1.Configuracoes.WebServices.SSLType :=  LT_TLSv1_2;



        end;
      end;
      MostrarInforCertificados;

      while not clone.Eof do
      begin
         if DBInicio.Empresa.wPMT_FATURA_MULTIEMPRESA then // considerar a emp_codigo da nota  se for multiempresa
         begin
           ACBrNFe1.SSL.NumeroSerie:= CarregarCertificado(clone.FieldByName('EMP_CODIGO').AsString);
           if ACBrNFe1.SSL.NumeroSerie <> '' then
           begin
              nf.ACBrNFe1.SSL.numeroserie := ACBrNFe1.SSL.NumeroSerie;
              nf.ACBrNFe1.SSL.DescarregarCertificado;
              nf.ACBrNFe1.SSL.CarregarCertificado;
           end;
           if not nf.ACBrNFe1.SSL.CertificadoLido then
           begin
             MessageDlg('Favor informar o número de série do certificado da empresa ' + clone.FieldByName('EMP_CODIGO').AsString + ' nos parâmetros globais', mtWarning, [mbOK], 0);
             abort;
//             nf.ACBrNFe1.SSL.SelecionarCertificado;
//             ACBrNFe1.SSL.NumeroSerie := nf.ACBrNFe1.SSL.numeroserie;
//             SalvarCertificado(clone.FieldByName('EMP_CODIGO').AsString,ACBrNFe1.SSL.NumeroSerie );
           end;
         end;
         NF.EmpCodigo := CLONE.FieldByName('EMP_CODIGO').AsString;
         nf.ConfiguracoesIniciais(moNFe);
         NF.BuscaNota(clone.FieldByName('NF_NOTANUMBER').AsString);
         NF.ACBrNFe1.NotasFiscais.Clear;
         nf.GerarNFE(False);
         NErros := '';
         errNaoSEFAZ:= nf.GerarAssinarEnviar;
         if not errNaoSEFAZ then
           MostrarErro := True;
        clone.Next;
      end;
    end;

  finally

    FreeAndNil(clone);
    FreeAndNil(nf);
    if MostrarErro then
      MessageDlg('NF-e com problemas de validação:' + CRLF + CRLF + NErros, mtWarning, [mbok], 0);

    MostrarNotas;
    btnEmitir.Enabled := True;
    btnConsultar.Enabled := True;
  end;

end;

procedure TFormFaturamento.btnExpedicaoClick(Sender: TObject);
begin
  inherited;
  if CdsPedidosSITEXP.AsString = 'LIB' then
    GeraException('Pedido já foi liberado para expedição');

    try
     ExecSql( 'Update PED0000 SET SitExp = ''LIB'' ' +
             ' where PED_CODIGO = '+qStr(CdsPedidosPED_CODIGO.asstring)+
             ' and emp_codigo = '+QuotedStr(CdsPedidosemp_codigo.AsString) );

     ExecSql(' INSERT INTO HISTORICO_EXPE (HIS_REGISTRO, EMP_CODIGO, SITEXP,DATASIT,USU_CODIGO, PED_CODIGO) '+
             ' VALUES (GEN_ID(GEN_HIST_EXPE,1),'+QuotedStr(cdsNotasEMP_CODIGO.AsString) + ',''LIB'',CURRENT_TIMESTAMP,'+DBInicio.Usuario.CODIGO+
              ','+ QuotedStr (CdsPedidosPED_CODIGO.asstring)+    ')');
      Aviso('Pedido nº '+ CdsPedidosPED_CODIGO.asstring +' de '+CdsPedidosCLI_RAZAO.AsString+ ' liberado para expedição');
      pesquisa;
    except
      Aviso('Erro ao liberar');

    end;



end;

procedure TFormFaturamento.btnNaoGeradoClick(Sender: TObject);
begin
  inherited;
  PesqStatus := 'N';
  MostrarNotas;
end;

procedure TFormFaturamento.btnNFe4MainClick(Sender: TObject);
begin
  inherited;
  if not assigned(frmNfe40) then
  begin
    frmNfe40 := TfrmNfe40.Create(Application);
    frmNfe40.BuscaNotaFiscais;
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)

  end;
  frmNfe40.Show;

end;

procedure TFormFaturamento.btnOutrosClick(Sender: TObject);
begin
  inherited;
  PesqStatus := 'O';
  MostrarNotas;
end;

procedure TFormFaturamento.btnRejeitadaClick(Sender: TObject);
begin
  inherited;
  PesqStatus := 'R';
  MostrarNotas;
end;

procedure TFormFaturamento.btnRetornaPedidoClick(Sender: TObject);
begin
  inherited;
  ExecSql( 'update PED0000  set PED_USU_LIBEROU_FATURAMENTO = null ,'+
  ' PED_DATA_LIBERACAO =  null ,' + ' Ped_faturar_liberado = ''N'' ' +
  ' WHERE PED_CODIGO = ' +  QuotedStr (CdsPedidosPED_CODIGO.asstring)+
  ' and emp_codigo = '+   QuotedStr (CdsPedidosemp_codigo.AsString) );
  RefreshPedidos;
  ShowMessage('Retornado pedido para o vendedor poder alterar');

end;

procedure TFormFaturamento.btnTransmitidaClick(Sender: TObject);
begin
  inherited;
  PesqStatus := 'T';
  MostrarNotas;
end;

procedure TFormFaturamento.SalvarCertificado(const emp_codigo, numeroserie: string);
begin
 ExecSql('update PRMT0001 set PMT_CERTIFICADO_DIGITAL = '+ QuotedStr( numeroserie)+
        ' where emp_codigo = '+QuotedStr(emp_codigo));
end;

procedure TFormFaturamento.SetPesqStatus(const aValue: string);
begin
  FPesqStatus := aValue;
end;

procedure TFormFaturamento.SGNotaFiscalCellClick(Column: TColumn);
begin
  inherited;

  if Column.FieldName = 'BOTAO' then
  begin
    SGNotaFiscal.Perform(WM_KeyDown, VK_LEFT, 0);
    if FrmGimpBoletos = nil then
      FrmGimpBoletos := TFrmGimpBoletos.Create(Self);
    FrmGimpBoletos.Panel2.Visible := False;
    FrmGimpBoletos.dbHistorico.Visible := False;
    FrmGimpBoletos.BitConfig.Visible := False;
    FrmGimpBoletos.EdtDuplicata.Text := CdsNotasNF_NOTANUMBER.AsString;
    FrmGimpBoletos.cbLayOut.ItemIndex := StrToInt(dbInicio.GetParametroSistema('PMT_LAYOUT_BOLETO_FATURAMENTO'));

    FrmGimpBoletos.BuscaDuplicatas;
    if FrmGimpBoletos.CdsDuplicata.IsEmpty then
    begin
         FreeAndNil(FrmGimpBoletos);
         uteis.aviso('Faturas(s) não encontrada(s) no período e Banco Informado ou já está liquidada(s)  !');
         Abort;
    end;

    FrmGimpBoletos.BitPesquisa.Click;
    FrmGimpBoletos.Show;
  end;

  if not (cdsNotas.IsEmpty) and (Column.FieldName = 'selecionado') and ((CdsNotasNF_STATUS_NFE.AsString = 'N')  or (CdsNotasNF_STATUS_NFE.AsString = 'R') or (CdsNotasNF_STATUS_NFE.AsString = 'O') )then
  begin
      if  not (cdsNotas.State in dsEditModes)  then
        cdsNotas.Edit;
     cdsNotasselecionado.AsBoolean :=  not cdsNotasselecionado.AsBoolean;
     cdsNotas.Post;
  end;
  BitEstorno.Enabled := MatchStr(CdsNotasNF_STATUS_NFE.AsString,['N','G','O','R']) and  cdsNotasselecionado.AsBoolean;
  // BitEstorno.Enabled := MatchStr(CdsNotasNF_STATUS_NFE.AsString,['N','G','O','R']) and  cdsNotasselecionado.AsBoolean;
   Application.ProcessMessages;
end;

procedure TFormFaturamento.SGNotaFiscalDblClick(Sender: TObject);
begin
  inherited;
  if not cdsNotas.IsEmpty then
  begin
    FrmFaturamentoNovoNotaFiscal := TFrmFaturamentoNovoNotaFiscal.Create(Application);
    FrmFaturamentoNovoNotaFiscal.EmpCodigo := cdsNotasEMP_CODIGO.AsString;
    FrmFaturamentoNovoNotaFiscal.Registro := cdsNotas.FieldByName('NF_REGISTRO').AsInteger;
    try
      FrmFaturamentoNovoNotaFiscal.ShowModal;
    finally
      FrmFaturamentoNovoNotaFiscal.Destroy;
      FrmFaturamentoNovoNotaFiscal := nil; //  nil é - From Assigned = False
    end;
  end;
end;

procedure TFormFaturamento.SGNotaFiscalDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  Check, button: Integer;
  R: TRect;
  bcolor: TColor;
begin
  if not cdsNotas.IsEmpty then
  begin

    if Column.FieldName = 'BOTAO' then
    begin
      SGNotaFiscal.Canvas.FillRect(Rect);
      BUTTON := 0;
      R:=Rect;
      InflateRect(R,-1,-1); //Diminui o tamanho do Botão
      DrawFrameControl(SGNotaFiscal.Canvas.Handle,R,BUTTON, BUTTON or BUTTON);
      bcolor := SGNotaFiscal.Canvas.Brush.Color; // guarda a cor de fundo original
      SGNotaFiscal.Canvas.Brush.Color := clBtnFace; // muda a cor de fundo
      DrawText(SGNotaFiscal.Canvas.Handle,'Boleto',7,R,DT_VCENTER or DT_CENTER);
      SGNotaFiscal.Canvas.Brush.Color := bcolor; // devolve a cor original
    end
    else
    if (Column.FieldName = 'selecionado') and ((CdsNotasNF_STATUS_NFE.AsString = 'N')  or (CdsNotasNF_STATUS_NFE.AsString = 'R') or (CdsNotasNF_STATUS_NFE.AsString = 'O')) then
    begin
      SGNotaFiscal.Canvas.FillRect(Rect);
      if CDSNotas.FindField('selecionado').AsBoolean then
          Check := DFCS_CHECKED
      else
          Check := 0;
      R:=Rect;
      TDBGrid(sender).Canvas.Font.Color :=  TDBGrid(sender).Canvas.Brush.Color;
      InflateRect(R,-2,-2); //Diminue o tamanho do CheckBox
      DrawFrameControl(SGNotaFiscal.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check)
//      else
//         DrawFrameControl(SGNotaFiscal.Canvas.Handle,R, DFC_BUTTON, 0);
//     SGNotaFiscal.DefaultDrawDataCell(Rect,SGNotaFiscal.columns[datacol].field, State);
    end
    else
    if Column.Field = (CDSNotasnf_status_nfe) then
    begin
         SGNotaFiscal.Canvas.FillRect(Rect);
         if (CDSNotasnf_status_nfe.AsString = 'N')or(CDSNotasnf_status_nfe.AsString = 'G') then
           Imagens.Draw(SGNotaFiscal.Canvas,Rect.Left+03,Rect.Top+1,0)
         else
         if (CDSNotasnf_status_nfe.AsString = 'R') then
           Imagens.Draw(SGNotaFiscal.Canvas,Rect.Left+03,Rect.Top+1,1)
         else
         if (CDSNotasnf_status_nfe.AsString = 'T') then
           Imagens.Draw(SGNotaFiscal.Canvas,Rect.Left+03,Rect.Top+1,2)
         else
         if (CDSNotasnf_status_nfe.AsString = 'A') then
           Imagens.Draw(SGNotaFiscal.Canvas,Rect.Left+03,Rect.Top+1,3)
         else
         if (CDSNotasnf_status_nfe.AsString = 'C') then
           Imagens.Draw(SGNotaFiscal.Canvas,Rect.Left+03,Rect.Top+1,4)
         else
          if (CDSNotasnf_status_nfe.AsString = 'O') then
          Imagens.Draw(SGNotaFiscal.Canvas,Rect.Left+03,Rect.Top+1,5);
    end;


    // BitEstorno.Enabled := MatchStr(CdsNotasNF_STATUS_NFE.AsString,['N','G','O','R']) and  cdsNotasselecionado.AsBoolean ;
  end;
end;

procedure TFormFaturamento.SGNotaFiscalKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  // BitEstorno.Enabled := MatchStr(CdsNotasNF_STATUS_NFE.AsString,['N','G','O','R']) and  cdsNotasselecionado.AsBoolean ;
  Application.ProcessMessages;
end;

procedure TFormFaturamento.SGNotaFiscalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  // BitEstorno.Enabled := MatchStr(CdsNotasNF_STATUS_NFE.AsString,['N','G','O','R']) and  cdsNotasselecionado.AsBoolean  ;
  Application.ProcessMessages;
end;
procedure TFormFaturamento.CdsItemNotaCalcFields(DataSet: TDataSet);
begin
     CdsItemNotaNF_TOTAL_CC.AsCurrency     := Uteis.RoundTo( CdsItemNotaNF_QTDE.AsCurrency * CdsItemNotaNF_PRECO.AsFloat, -2 );
     CdsItemNotaNF_TOTAL_IPI_CC.AsCurrency := Uteis.RoundTo( ( CdsItemNotaNF_TOTAL_CC.AsCurrency * CdsItemNotaNF_IPIALIQ.AsCurrency) / 100 + CdsItemNotaNF_TOTAL_CC.AsCurrency, -2 );
     CdsItemNotaCC_ID.AsInteger            := CdsItemNota.RecNo;
end;

procedure TFormFaturamento.CdsNotasAfterScroll(DataSet: TDataSet);
begin

  btnEditarNota.Enabled := (CdsNotasNF_COMPLEMENTAR.AsString = 'S');
  // BitEstorno.Enabled := MatchStr(CdsNotasNF_STATUS_NFE.AsString,['N','G','O','R']) and  cdsNotasselecionado.AsBoolean;

  //EXPEDÇÃO
  if DBInicio.Empresa.PMT_LIBERAR_EXPEDICAO <> 'F' then   // NÃO CONTROLA POR FINANCEIRO
    EXIT;
  if DataSet.FieldByName('OPV_CODIGO').AsString = '' then
    exit;
  btnExpedicaoNota.Enabled:= BuscaUmDadoSqlAsString('SELECT OPV_EXPEDICAO FROM OPV0000 '+
                                                 ' WHERE OPV_CODIGO = '+DataSet.FieldByName('OPV_CODIGO').AsString)= 'S' ;
  Application.ProcessMessages;
end;

procedure TFormFaturamento.CdsNotasNF_CANCELADAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
     inherited;
     if CdsNotasNF_CANCELADA.AsString = 'S' then
        Text := 'SIM'
     else
        Text := 'Não';
end;

procedure TFormFaturamento.CdsNotasNF_ENTR_SAIDGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
     inherited;
     if CdsNotasNF_ENTR_SAID.AsString = 'S' then
        Text  := 'Saída'
     Else
     if CdsNotasNF_ENTR_SAID.AsString = 'E' then
        Text  := 'Entrada';
end;

procedure TFormFaturamento.CdsNotasNF_IMPRESSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
     inherited;
     if CdsNotasNF_IMPRESS.AsString = 'N' then
       Text := 'Não'
     else
       Text := 'Sim';
End;

procedure TFormFaturamento.cdsNotasNF_SITEXPEDICAOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if sender.AsString = 'C' then
    text:= 'CANCELADO'
  else if Sender.AsString = 'F' then
    text:= 'FATURADO'
  else if Sender.AsString = 'L' then
    text:= 'LIBERADO'
end;

procedure TFormFaturamento.cdsNotasselecionadoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  text:= EmptyStr;
end;

procedure TFormFaturamento.CdsNotasTIPO_CCGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
     inherited;
     if CdsNotasNF_ENTR_SAID.AsString = 'S' then
        Text  := 'Saída'
     Else
        Text  := 'Entrada';
end;


procedure TFormFaturamento.BitEtiquetaClick(Sender: tObject);
var tcr: tfrmEtqFaturamento;
begin
     tcr := tfrmEtqFaturamento.create( self );
     try
        tcr.NotaNumero := CdsNotasNF_NOTANUMBER.asstring;
        tcr.ShowModal;
     finally
            FreeAndNil( tcr ) ;
     end;
end;

procedure TFormFaturamento.ChamaTelaFatura;
var bPossuiServicos, bPossuiProdutos, bIntegrar :Boolean;
    sTipoFaturamento: String;
    pedidosNaoFinalizados : TStringList;
//
  Procedure ShowFatPedido( const pTipo: string ; const bInteg : boolean);
  begin
       FormFatPedido := TFormFatPedido.Create(Application);
       try
          FormFatPedido.dblcInscricaoEstadual.KeyValue := CdsPedidosEMI_CODIGO.AsString;
          FormFatPedido.TipoFaturamento := pTipo;
          FormFatPedido.Integrar := bInteg;
          FormFatPedido.EmpCodigo := CdsPedidosEmp_codigo.AsString;
          FormFatPedido.EmpCodigoOriginal:= CdsPedidosEmp_codigo.AsString;
          // FormFatPedido.CarregarParametros;
          FormFatPedido.CodPedido := CdsPedidosPed_Codigo.Asstring;


          FormFatPedido.ShowModal;
          if FormFatPedido.MODALRESULT = mrOk then
          begin
               RxDataFinal.Date   := date;
               RxDataInicial.Date := RxDataFinal.Date - 30;  //StrToDate(DataInicial);
              MostrarNotas;
          end;
       finally
              FreeAndNil( FormFatPedido );
       end;

       // tratar transações after exceção
  end;
//

//
  Function TemTipoItem( pTipoItem:string ): boolean;
  begin
       Result := BuscaUmDadoSqlAsInteger( 'Select cast(count(*) as integer) as conta from    PED_IT01 pd '+
                                                   'join prd0000 prd on (prd.prd_codigo=pd.prd_codigo and prd.prd_prodserv='+qStr(pTipoItem)+
                                                    ConcatSe( ' and prd.', dbInicio.ExclusivoSql('PRODUTOS') ) +')'+
                                                   ' Where pd.Ped_Codigo='+qStr(CdsPedidosPED_CODIGO.asString) +
                                                   ' and pd.emp_codigo = '+qStr(CdsPedidosemp_codigo.asString) )>0;

  end;
//
begin
    if CdsPedidos.Active then
    begin
       //validar se o processo tem produção - tratamento termico
       if DBInicio.Empresa.wPMT_PROD_TERMICO then
       begin
         if BuscaUmDadoSqlAsInteger(' SELECT COUNT(*) from item_ordemproducao iop                          '+
                                    ' JOIN ORDEMPRODUCAO op ON (op.OPR_CODIGO = iop.OPR_CODIGO)            '+
                                    ' join prd0000 pr on (pr.prd_codigo = iop.prd_codigo)                  '+
                                    ' join PROCESSOS_OPERACOES pop on (pr.pro_codigo = pop.pro_codigo)     '+
                                    ' join operacoes ope on (ope.ope_codigo = pop.ope_codigo )             '+
                                    ' left join PROCESSOS_PRODUCAO pp ON (pp.OPE_CODIGO = pop.OPE_CODIGO AND iop.iop_codigo = pp.iop_codigo ) '+
                                    ' WHERE (PCP_status NOT IN (''F'') OR PCP_STATUS IS NULL )                                   '+
                                    '  AND ped_codigo = '+QuotedStr(CdsPedidosPED_CODIGO.asstring) )>0  then
           if (MessageDlg('Nem todas as fases estão finalizadas. Mesmo assim, deseja faturar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then
              exit;
         //verifica se tem agrupamento
         OpenAux(' SELECT PED_CODIGO,  ped_situacao,PED_CODIGO_AGRUPADO FROM PED0000 '+
                 ' WHERE PED_CODIGO_AGRUPADO = '+QuotedStr(CdsPedidosPED_CODIGO.asstring)
                 );
         if not qAux.IsEmpty then
         begin
           pedidosNaoFinalizados := TStringList.Create;
           pedidosNaoFinalizados.Delimiter:= ',';
           try
              qAux.First;
             while NOT qAux.Eof do
             begin
               if BuscaUmDadoSqlAsInteger(' SELECT COUNT(*) from item_ordemproducao iop                          '+
                                          ' JOIN ORDEMPRODUCAO op ON (op.OPR_CODIGO = iop.OPR_CODIGO)            '+
                                          ' join prd0000 pr on (pr.prd_codigo = iop.prd_codigo)                  '+
                                          ' join PROCESSOS_OPERACOES pop on (pr.pro_codigo = pop.pro_codigo)     '+
                                          ' join operacoes ope on (ope.ope_codigo = pop.ope_codigo )             '+
                                          ' left join PROCESSOS_PRODUCAO pp ON (pp.OPE_CODIGO = pop.OPE_CODIGO AND iop.iop_codigo = pp.iop_codigo ) '+
                                          ' WHERE (PCP_status NOT IN (''F'') OR PCP_STATUS IS NULL )                                   '+
                                          '  AND ped_codigo = '+QuotedStr(qAux.FieldByName('PED_CODIGO').AsString) )>0  then
                    pedidosNaoFinalizados.Add(qAux.FieldByName('PED_CODIGO').AsString) ;

               qAux.Next;
             end;
             if (MessageDlg('Pedido agrupado. Nem todas as fases estão finalizadas nos pedidos : '+ pedidosNaoFinalizados.DelimitedText+'. Mesmo assim, deseja faturar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then
               exit;
           finally
             pedidosNaoFinalizados.Free;
           end;
         end;


       end;

         if BuscaUmDadoSqlAsInteger( 'Select cast(count(*) as integer) as conta from    PED_IT01 t1  where PED_CODIGO = '+  qStr(CdsPedidosPED_CODIGO.asstring)+
                                     ' and t1.emp_codigo = '+ QuotedStr(CdsPedidosemp_codigo.AsString) )=0 then
           uteis.aviso('O pedido não possui itens e não pode ser faturado')
        else
        if (dbInicio.Empresa.wPmt_Utiliza_Analise_Credito = 'S') and (CdsPedidosPED_STATUS_ANALISE_CREDITO.AsString <> 'L')  then
           uteis.aviso('Pedido em Análise de Crédito '+iif(CdsPedidosPED_STATUS_ANALISE_CREDITO.AsString = 'B','BLOQUEADO','PENDENTE')+'. Solicite Liberação ao Setor Financeiro!')
        else
          if BuscaUmDadoSqlAsInteger('SELECT p.PCL_MODALIDADE FROM PCL0000 p WHERE p.PCL_CODIGO = ' + QuotedStr(CdsPedidosPCL_CODIGO.AsString) ) > 0 then
          begin
            if not dbInicio.ValidaLimiteCredito(CdsPedidosCLI_CODIGO.AsString,CdsPedidosEMP_CODIGO.AsString,True) then
              exit
          end;

            begin
               if CdsPedidosPED_SITUACAO.AsString <> 'T' then
               begin

                  bPossuiProdutos := TemTipoItem( 'P' );
                  bPossuiServicos := TemTipoItem( 'S' );

                  if (bPossuiProdutos and bPossuiServicos) then
                  begin
                        //Chama tela de opção de faturamento pois existe produtos e serviços a serem faturados
                        FormFaturamentoOpcao := TFormFaturamentoOpcao.Create(Application);
                        try
                           FormFaturamentoOpcao.ShowModal;
                           sTipoFaturamento:=FormFaturamentoOpcao.TipoFaturamento;
                           bIntegrar := FormFaturamentoOpcao.chkIntegrar.Checked and not dbinicio.Empresa.PMT_INTEGRAR_PRD_SERV;
                        finally
                           FreeAndNil(FormFaturamentoOpcao);
                        end;

                  end
                  else if bPossuiProdutos then
                    sTipoFaturamento := 'P'
                  else if bPossuiServicos then
                    sTipoFaturamento := 'S';
                  ShowFatPedido(sTipoFaturamento,bIntegrar);
                  RefreshPedidos;
                  RefreshNotas;
               end
               else
               begin
                    uteis.aviso('Pedido já faturado !');
                    GridPedidos.SetFocus;
               end;
            end;
    end;
end;

procedure TFormFaturamento.ConsultaNotas;
var clone : TClientDataSet;
begin
  inherited;

  if not CdsNotas.IsEmpty then
  begin
    clone := TClientDataSet.Create(Self);
    if not assigned(nf)  then
      nf := TfrmProcessaNFe.Create(self);
    try
      NF.Show;
      Application.ProcessMessages;
      if DBInicio.Empresa.UF = 'SP' then
        NF.pMsg.Caption := 'Consultando notas transmitidas ou autorizadas já canceladas (SP)'
      else
        NF.pMsg.Caption := 'Consultando notas transmitidas';
      Application.ProcessMessages;
      clone.CloneCursor(cdsNotas,False);
      clone.Filtered := False;
      if DBInicio.Empresa.UF = 'SP' then  //SOMENTE PARA SÃO PAULO ELE VERIFICA AS AUTORIZADAS
        clone.Filter:= '(NF_STATUS_NFE in ( ''T'', ''A'') )'
      else
        clone.Filter:= '(NF_STATUS_NFE = ''T'')';
      clone.Filtered := True;
      clone.First;
      if not clone.IsEmpty then
      begin

        if (DBInicio.Nfe.Emp_TipoCertificado = 3) or (DBInicio.Nfe.Emp_TipoCertificado = 9) then
        begin
          nf.ACBrNFe1.Configuracoes.Geral.SSLLib   := libWinCrypt;
          nf.ACBrNFe1.Configuracoes.Geral.SSLXmlSignLib := xsLibXml2;
          nf.ACBrNFe1.Configuracoes.Geral.SSLHttpLib := httpWinHttp;
          nf.ACBrNFe1.Configuracoes.Geral.SSLCryptLib := cryWinCrypt;
        end
        else
        begin
          nf.ACBrNFe1.Configuracoes.Geral.SSLLib         := libCapicomDelphiSoap;
          nf.ACBrNFe1.Configuracoes.Geral.SSLCryptLib    := cryCapicom;
          nf.ACBrNFe1.Configuracoes.Geral.SSLHttpLib     := httpIndy;
          nf.ACBrNFe1.Configuracoes.Geral.SSLXmlSignLib  := xsMsXmlCapicom;
        end;



         ACBrNFe1.SSL.NumeroSerie := CarregarCertificado(clone.FieldByName('EMP_CODIGO').AsString);
         if ACBrNFe1.SSL.NumeroSerie <> '' then
         begin
            nf.ACBrNFe1.SSL.numeroserie := ACBrNFe1.SSL.NumeroSerie;
            nf.ACBrNFe1.SSL.CarregarCertificado;
         end;
        if not nf.ACBrNFe1.SSL.CertificadoLido then
        begin
          MessageDlg('Favor informar o número de série do certificado da empresa ' + clone.FieldByName('EMP_CODIGO').AsString + ' nos parâmetros globais', mtWarning, [mbOK], 0);
          abort;
          // nf.ACBrNFe1.SSL.SelecionarCertificado;
          // ACBrNFe1.SSL.NumeroSerie := nf.ACBrNFe1.SSL.numeroserie;
        end;
        MostrarInforCertificados;
        while NOT clone.Eof do
        begin
          NF.EmpCodigo := CLONE.FieldByName('EMP_CODIGO').AsString;
          nf.ConfiguracoesIniciais(moNFe);
          NF.ConsultarNota(clone.FieldByName('NF_NOTANUMBER').AsString);
          clone.Next;
        end;

      end;

    finally
//      MostrarNotas;
      FreeAndNil(clone);
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure TFormFaturamento.DBGridItensPedDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if (CdsItemPedidoPRF_QTDEPEND.AsFloat > 0) and  (Column.FieldName = 'PRF_QTDEPEND')   then
  begin
    DBGridItensped.Canvas.Font.Color := clRed;
    DBGridItensped.DefaultDrawDataCell(rect, Column.Field, State);
  end;


end;

procedure TFormFaturamento.btnEditarNotaClick(Sender: tObject);
begin
    if CdsNotasNF_COMPLEMENTAR.AsString <> 'S' then
       GeraException ('Nota não é Editável.')
    else
    if (CdsNotasNF_STATUS_NFE.AsString = 'A') or (CdsNotasNF_STATUS_NFE.AsString = 'T') Then
       GeraException ('Não é permitido editar nota Autorizada ou Transmitida.');

    FormComplementarNFe := TFormComplementarNFe.Create(Application);
    try
        FormComplementarNFe.wFatcomplementar := CdsNotasNF_NOTANUMBER.AsString;
        FormComplementarNFe.ShowModal;
    finally
        FreeAndNil(FormComplementarNFe);
    end;

end;


procedure TFormFaturamento.RomaneioSimples1Click(Sender: TObject);
begin
  inherited;
  qRomaneioSimples.Close;
  qRomaneioSimples.SQL.Text :=
     ' SELECT n1.PED_CODIGO, ' +
     ' n1.NF_NOTANUMBER, n1.NF_EMISSAO, n1.NF_TOT_NOTA, n1.NF_QTDE, n1.NF_PESOBRU, ' +
     ' C1.CLI_RAZAO, C1.CLI_CODIGO, c1.CLI_CGC, ' +
     ' CASE WHEN c1.CLI_CEPENTR IS NULL THEN C1.CLI_CEP  ELSE c1.CLI_CEPENTR END AS CLI_CEPENTR, ' +
     ' CASE WHEN c1.CLI_BAIENTR IS NULL THEN C1.CLI_BAIRRO  ELSE c1.CLI_BAIENTR END AS CLI_BAIENTR, ' +
     ' CASE WHEN c1.CLI_CIDENTR IS NULL THEN C1.CLI_CIDADE ELSE c1.CLI_CIDENTR END AS CLI_CIDENTR, ' +
     ' CASE WHEN c1.CLI_ENDENTR IS NULL THEN C1.CLI_ENDERE ELSE c1.CLI_ENDENTR END AS CLI_ENDENTR, ' +
     ' CASE WHEN c1.CLI_UFENTR IS NULL THEN C1.CLI_UF ELSE c1.CLI_UFENTR END AS CLI_UFENTR, ' +
     ' c1.CLI_INSC, c1.CLI_FONE, N1.NF_CONDPAGTO, p.PCL_NOME  ' +
     ' FROM NF0001 N1 ' +
     ' JOIN CLI0000 C1 ON (C1.CLI_CODIGO = N1.CLI_CODIGO) ' +
     ' JOIN PCL0000 p ON (p.PCL_CODIGO = N1.PCL_CODIGO) ' +
     ' WHERE n1.NF_NOTANUMBER = ' + QuotedStr(CdsNotasNF_NOTANUMBER.asstring) +
     '   AND n1.NF_CANCELADA = ''N''  ' +
     '   AND n1.emp_codigo = ' + QuotedStr(DBInicio.Emp_Codigo);

  qRomaneioSimples.Open;

  qParcelas.Close;
  qParcelas.SQL.Text :=
      ' SELECT FPC_VENCTO, FPC_VLPARC ' +
      ' FROM FAT_PC01 F1 ' +
      ' WHERE F1.FAT_CODIGO = ' + QuotedStr(CdsNotasNF_NOTANUMBER.asstring) +
      '   AND F1.EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo) +
      ' ORDER BY F1.FAT_CODIGO';

  qParcelas.Open;

  qItens.Close;
  qItens.SQL.Text :=
       ' SELECT ni.NF_QTDE, pi2.PRD_UND, pd.PRD_REFER, pi2.PRF_PRDDESCRI, ni.NF_PRECO, ni.PRDCO_CODIGO_ORIGINAL, pi2.PRF_QTDE, pi2.PRF_PESO  ' +
       ' FROM	NF_IT01 ni ' +
       '  JOIN NF0001 nf ON	(ni.nf_it_notanumer = nf.nf_notanumber) ' +
       '  JOIN PED_IT01 pi2 ON (pi2.PRF_REGISTRO = ni.PRF_REGISTRO ) ' +
       '  JOIN PRD_GRADE pg ON (pg.PRG_REGISTRO = PI2.PRG_REGISTRO) ' +
       '  JOIN PRD0000 pd ON	(pd.PRD_REFER = ni.PRD_REFER) ' +
       ' WHERE ' +
       '   ni.NF_IT_NOTANUMER = '  + QuotedStr(CdsNotasNF_NOTANUMBER.asstring) +
       '   AND ni.NF_QTDE > 0 ' +
       '   AND ni.EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo) +
       ' ORDER BY pi2.PRD_REFER,  PG.PRG_DESCRICAO,  ni.NF_IT_NOTANUMER ' ;
  qItens.Open;
  if dbinicio.isdesenvolvimento then
    copytoClipboard(qItens.sql.text);


  frxRomaneioSimples.ShowReport;
end;

end.







