unit uDemandaProducao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaFDAC, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, ACBrCalculadora, frxClass, Vcl.Menus,
  FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxLocalization, ACBrBase, ACBrEnterTab, JvExControls, JvArrowButton, Vcl.StdCtrls, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls, cxGridBandedTableView, cxGridDBBandedTableView, cxCheckBox, uProducaoDAO,
  BaseDbEstoqueForm, Datasnap.DBClient, System.StrUtils,uProdutoDao, Animacao, System.ImageList, Vcl.ImgList, Vcl.Mask, JvExMask, JvToolEdit, uOdemProgramacao, cxButtonEdit, frxDBSet, System.DateUtils,
  Data.FMTBcd, Data.SqlExpr, Datasnap.Provider, cxDropDownEdit, cxEditRepositoryItems;

  type
  TfrmDemandaProducao = class(TfrmBaseDBPesquisaFDAC)
    cdsBuscaPRD_REFER: TStringField;
    cdsBuscaPRD_DESCRI: TStringField;
    cdsBuscaPED_CODIGO: TStringField;
    cdsBuscaPED_DTENTRADA: TSQLTimeStampField;
    cdsBuscaPRF_QTDE: TFMTBCDField;
    cdsBuscaDTENTREGA: TDateField;
    cdsBuscaDEP_SITUACAO: TStringField;
    cdsBuscaQTDEPRD: TFMTBCDField;
    cdsBuscaCLI_CODIGO: TStringField;
    cdsBuscaCLI_RAZAO: TStringField;
    cdsBuscaMARCADO: TIntegerField;
    cxgrd1DBBandedTableView1: TcxGridDBBandedTableView;
    cxgrd1DBBandedTableView1PRD_REFER: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1PRD_DESCRI: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1PED_CODIGO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1PED_DTENTRADA: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1PRF_QTDE: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1DTENTREGA: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1DEP_SITUACAO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1QTDEPRD: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1CLI_CODIGO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1CLI_RAZAO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1SALDOESTOQUE: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1MARCADO: TcxGridDBBandedColumn;
    cdsBuscaESTOQUEDISPONIVEL: TFMTBCDField;
    cdsBuscaREP_NOME: TStringField;
    cdsBuscaIOP_NORDEM: TStringField;
    cxgrd1DBBandedTableView1REP_NOME: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_NORDEM: TcxGridDBBandedColumn;
    edPesquisa: TLabeledEdit;
    cdsBuscaDEP_QTDE_ESTOQUE: TFMTBCDField;
    cxgrd1DBBandedTableView1DEP_QTDE_ESTOQUE: TcxGridDBBandedColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxlevelprodutoIntermediario: TcxGridLevel;
    cdsFicha: TFDQuery;
    IntegerField1: TIntegerField;
    cdsFichaPRD_REFER_ITENS: TStringField;
    cdsFichaPRD_DESCRI: TStringField;
    cdsFichaFTI_UC: TFMTBCDField;
    cdsFichaDTENTREGA: TDateField;
    cdsFichaDEP_SITUACAO: TStringField;
    cdsFichaQTDEPRD: TFMTBCDField;
    cdsFichaIOP_NORDEM: TStringField;
    cdsFichaDEP_QTDE_ESTOQUE: TFMTBCDField;
    cdsFichaESTOQUEDISPONIVEL: TFMTBCDField;
    cdsBuscaPRD_CODIGO: TStringField;
    cxgrd1DBBandedTableView1PRD_CODIGO: TcxGridDBBandedColumn;
    dsFicha: TDataSource;
    cdsFichaPRD_CODIGO: TStringField;
    cxgrd1DBTableView1PRD_REFER_ITENS: TcxGridDBColumn;
    cxgrd1DBTableView1PRD_DESCRI: TcxGridDBColumn;
    cxgrd1DBTableView1FTI_UC: TcxGridDBColumn;
    cxgrd1DBTableView1DTENTREGA: TcxGridDBColumn;
    cxgrd1DBTableView1DEP_SITUACAO: TcxGridDBColumn;
    cxgrd1DBTableView1QTDEPRD: TcxGridDBColumn;
    cxgrd1DBTableView1IOP_NORDEM: TcxGridDBColumn;
    cxgrd1DBTableView1DEP_QTDE_ESTOQUE: TcxGridDBColumn;
    cxgrd1DBTableView1ESTOQUEDISPONIVEL: TcxGridDBColumn;
    cxgrd1DBTableView1PRD_CODIGO: TcxGridDBColumn;
    cdsFichaPED_CODIGO: TStringField;
    pnlhistorico: TPanel;
    spl1: TSplitter;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cdsHistorico: TFDQuery;
    cdsHistoricoHDE_CODIGO: TIntegerField;
    cdsHistoricoHDE_DATAMVTO: TSQLTimeStampField;
    cdsHistoricoUSU_CODIGO: TIntegerField;
    cdsHistoricoHDE_DESCRICAO: TStringField;
    cdsHistoricoDEP_CODIGO: TIntegerField;
    cdsHistoricoPED_CODIGO: TStringField;
    dsHistorico: TDataSource;
    cxGrid1DBTableView1HDE_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1HDE_DATAMVTO: TcxGridDBColumn;
    cxGrid1DBTableView1USU_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1HDE_DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1DEP_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1PED_CODIGO: TcxGridDBColumn;
    cdsHistoricoPRD_CODIGO: TStringField;
    cdsHistoricoUSU_NOME: TStringField;
    cxGrid1DBTableView1PRD_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1USU_NOME: TcxGridDBColumn;
    cdsFichaPRD_REFER: TStringField;
    cxgrd1DBTableView1PRD_REFER: TcxGridDBColumn;
    cxgrd1DBTableView1PED_CODIGO: TcxGridDBColumn;
    chkNaoRecebido: TCheckBox;
    cdsFichaPTI_CODIGO: TStringField;
    cdsFichaPTI_DESCRI: TStringField;
    cdsFichaPTI_SIGLA: TStringField;
    cdsFichaPRD_UND: TStringField;
    cxgrd1DBTableView1PTI_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView1PTI_DESCRI: TcxGridDBColumn;
    cxgrd1DBTableView1PTI_SIGLA: TcxGridDBColumn;
    cxgrd1DBTableView1PRD_UND: TcxGridDBColumn;
    cdsBuscaDEP_CODIGO: TIntegerField;
    cdsBuscaPRF_REGISTRO: TIntegerField;
    cdsBuscaPRF_PESOKG: TFMTBCDField;
    cdsBuscaPRF_PRECO: TFMTBCDField;
    FDMemTable1: TFDMemTable;
    cdsFichaUC_TOTAL: TFMTBCDField;
    cxgrd1DBTableView1UC_TOTAL: TcxGridDBColumn;
    cdsFichaDEP_CODIGO: TIntegerField;
    cdsFichaFTI_REGISTRO: TIntegerField;
    cxImageList1: TcxImageList;
    Data: TGroupBox;
    Ate: TLabel;
    Label1: TLabel;
    DataFim: TJvDateEdit;
    DataIni: TJvDateEdit;
    cdsBuscaIOP_DATA_INICIO: TSQLTimeStampField;
    cxgrd1DBBandedTableView1DEP_CODIGO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1PRF_REGISTRO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1PRF_PESOKG: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1PRF_PRECO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_DATA_INICIO: TcxGridDBBandedColumn;
    cdsBuscaDEP_QTDE_PROGRA: TIntegerField;
    cxgrd1DBBandedTableView1DEP_QTDE_PROGRA: TcxGridDBBandedColumn;
    mDemanda: TPopupMenu;
    Programaoproduofracionada1: TMenuItem;
    cdsBuscaPRD_UND: TStringField;
    cxgrd1DBBandedTableView1PRD_UND: TcxGridDBBandedColumn;
    EstruturaFichatcnica1: TMenuItem;
    btnPrevisao: TButton;
    frxLRelatorios: TfrxReport;
    pmImpressao: TPopupMenu;
    Listadedemanda1: TMenuItem;
    frxDBRelatorios: TfrxDBDataset;
    cdsBuscaDetalhesOPA_DATA_ENTREGA: TSQLTimeStampField;
    cdsBuscaDetalhesOPA_QTDE_PRODUZIR: TFMTBCDField;
    frxDBOrdem: TfrxDBDataset;
    cdsOrdem: TFDQuery;
    cdsOrdemOPA_DATA_ENTREGA: TSQLTimeStampField;
    cdsOrdemOPA_QTDE_PRODUZIR: TFMTBCDField;
    cdsOrdemOPA_SEQUENCIAL: TIntegerField;
    Agrupadoporreferncia1: TMenuItem;
    frxAgrupadoRefer: TfrxReport;
    cdsFichaDEP_GERASUBORDENS: TStringField;
    cxgrd1DBTableView1DEP_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView1FTI_REGISTRO: TcxGridDBColumn;
    cxgrd1DBTableView1DEP_GERASUBORDENS: TcxGridDBColumn;
    cdsBuscaIOP_DATA_CONCLUSAO: TSQLTimeStampField;
    cdsBuscaCLI_UF: TStringField;
    cdsBuscaCLI_CIDADE: TStringField;
    cxgrd1DBBandedTableView1CLI_UF: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1CLI_CIDADE: TcxGridDBBandedColumn;
    cdsBuscaPCX_CODIGO: TStringField;
    cdsBuscaPCX_DESCRI: TStringField;
    cxgrd1DBBandedTableView1IOP_DATA_CONCLUSAO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1PCX_CODIGO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1PCX_DESCRI: TcxGridDBBandedColumn;
    frxReport1: TfrxReport;
    chkFinalizados: TCheckBox;
    cdsBuscaDEP_DATA_AJUSTADA: TSQLTimeStampField;
    cxgrd1DBBandedTableView1DEP_DATA_AJUSTADA: TcxGridDBBandedColumn;
    cdsBuscaOPA_SEQUENCIAL: TIntegerField;
    cxgrd1DBBandedTableView1OPA_SEQUENCIAL: TcxGridDBBandedColumn;
    radPedido: TRadioButton;
    RadEntrega: TRadioButton;
    radAjustada: TRadioButton;
    cdsBuscaIOP_QTDE_CONCLUIDA: TFMTBCDField;
    cxgrd1DBBandedTableViewQTDEConcluida: TcxGridDBBandedColumn;
    btnIncluir: TButton;
    cdsBuscaopv_pedidointerno: TStringField;
    chkCancelados: TCheckBox;
    cxgrd1DBBandedTableView1Total: TcxGridDBBandedColumn;
    cdsBuscaTOTAL: TFMTBCDField;
    Button1: TButton;
    cdsBuscaNOTA_FISCAL: TStringField;
    cxgrd1DBBandedTableView1NOTA_FISCAL: TcxGridDBBandedColumn;
    cdsBuscaENF_REGISTRO: TIntegerField;
    GerarEtiqueta1: TMenuItem;
    cdsBuscaPESO: TFMTBCDField;
    cdsBuscaACO_NOME: TStringField;
    cdsBuscaFOR_RAZAO: TStringField;
    cxgrd1DBBandedTableView1FOR_RAZAO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1ACO_NOME: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1PESO: TcxGridDBBandedColumn;
    frxEtiqueta: TfrxReport;
    DemandadeMolas1: TMenuItem;
    dsExportaExcel: TDataSource;
    cdsExportaExcel: TClientDataSet;
    dspExportaExcel: TDataSetProvider;
    qExportaExcel: TSQLQuery;
    cdsExportaExcelEMP_CODIGO: TStringField;
    cdsExportaExcelPED_DTENTRADA: TSQLTimeStampField;
    cdsExportaExcelCLI_RAZAO: TStringField;
    cdsExportaExcelCLI_CONSU_PROPRIO: TStringField;
    cdsExportaExcelEMP_RAZAO: TStringField;
    cdsExportaExcelPED_CODIGO: TStringField;
    cdsExportaExcelPRD_REFER: TStringField;
    cdsExportaExcelPRF_PRDDESCRI: TStringField;
    cdsExportaExcelPGR_DESCRI: TStringField;
    cdsExportaExcelCMO_NOME: TStringField;
    cdsExportaExcelASU_NOME: TStringField;
    cdsExportaExcelIOP_PESO: TFMTBCDField;
    cdsExportaExcelPRF_PRAZO_ENTREGA: TDateField;
    cdsExportaExcelIOP_STATUS: TStringField;
    cdsExportaExcelTOTAL_PROD: TFMTBCDField;
    cdsExportaExcelPRF_QTDE: TFMTBCDField;
    cxgrd1DBBandedTableView1ENF_ENTRADA: TcxGridDBBandedColumn;
    cdsBuscaENF_ENTRADA: TDateField;
    mtEtiqueta: TFDMemTable;
    mtEtiquetaCLI_RAZAO: TStringField;
    mtEtiquetaACO_NOME: TStringField;
    mtEtiquetaDTENTREGA: TDateField;
    mtEtiquetaNOTA_FISCAL: TStringField;
    mtEtiquetaPESO: TFMTBCDField;
    mtTemp: TFDMemTable;
    mtTempCLI_RAZAO: TStringField;
    mtTempACO_NOME: TStringField;
    mtTempDTENTREGA: TDateField;
    mtTempNOTA_FISCAL: TStringField;
    mtTempPESO: TFMTBCDField;
    frxDBEtiqueta: TfrxDBDataset;
    cdsExportaExcelCORI_DESCRICAO: TStringField;
    cdsExportaExcelREP_NOME: TStringField;
    cdsExportaExcelART_NOME: TStringField;
    qExportaExcelEMP_CODIGO: TStringField;
    qExportaExcelPED_DTENTRADA: TSQLTimeStampField;
    qExportaExcelCLI_RAZAO: TStringField;
    qExportaExcelREP_NOME: TStringField;
    qExportaExcelCLI_CONSU_PROPRIO: TStringField;
    qExportaExcelCORI_DESCRICAO: TStringField;
    qExportaExcelEMP_RAZAO: TStringField;
    qExportaExcelPED_CODIGO: TStringField;
    qExportaExcelPRD_REFER: TStringField;
    qExportaExcelPRF_PRDDESCRI: TStringField;
    qExportaExcelART_NOME: TStringField;
    qExportaExcelPGR_DESCRI: TStringField;
    qExportaExcelPRF_QTDE: TFMTBCDField;
    qExportaExcelCMO_NOME: TStringField;
    qExportaExcelASU_NOME: TStringField;
    qExportaExcelIOP_PESO: TFMTBCDField;
    qExportaExcelPRF_PRAZO_ENTREGA: TDateField;
    qExportaExcelIOP_STATUS: TStringField;
    qExportaExcelTOTAL_PROD: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure cdsBuscaDEP_SITUACAOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cxgrd1DBBandedTableView1DataControllerFilterGetValueList(Sender: TcxFilterCriteria; AItemIndex: Integer; AValueList: TcxDataFilterValueList);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure cdsBuscaDEP_QTDE_ESTOQUEChange(Sender: TField);
    procedure cxlevelprodutoIntermediarioGetGridView(Sender: TcxGridLevel; AMasterRecord: TcxCustomGridRecord; var AGridView: TcxCustomGridView);
    procedure cdsBuscaAfterScroll(DataSet: TDataSet);
    procedure btnExcluiClick(Sender: TObject);
    procedure chkNaoRecebidoClick(Sender: TObject);
    procedure edPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure btnNovoClick(Sender: TObject);
    procedure cdsBuscaDTENTREGAChange(Sender: TField);
    procedure cxgrd1DBBandedTableView1Editing(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cdsBuscaBeforePost(DataSet: TDataSet);
    procedure cxgrd1DBTableView1Editing(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cdsFichaBeforePost(DataSet: TDataSet);
    procedure cdsFichaDEP_QTDE_ESTOQUEChange(Sender: TField);
    procedure cdsFichaQTDEPRDChange(Sender: TField);
    procedure cxgrd1DBTableView1CanFocusRecord(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; var AAllow: Boolean);
    procedure cxgrd1DBTableView1CanSelectRecord(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; var AAllow: Boolean);
    procedure cxgrd1DBTableView1NavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure cxgrd1DBBandedTableView1DEP_QTDE_ESTOQUEStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure cxgrd1DBBandedTableView1DTENTREGAStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure cxgrd1DBTableView1DEP_QTDE_ESTOQUEStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure cxgrd1DBTableView1QTDEPRDStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure cxgrd1DBTableView1DTENTREGAStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure edPesquisaChange(Sender: TObject);
    procedure cxgrd1DBBandedTableView1DEP_QTDE_PROGRAStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure cdsBuscaDEP_QTDE_PROGRAChange(Sender: TField);
    procedure cdsBuscaQTDEPRDGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cxgrd1DBBandedTableView1DEP_QTDE_PROGRAPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Programaoproduofracionada1Click(Sender: TObject);
    procedure EstruturaFichatcnica1Click(Sender: TObject);
    procedure btnPrevisaoClick(Sender: TObject);
    procedure Listadedemanda1Click(Sender: TObject);
    procedure frxLRelatoriosGetValue(const VarName: string; var Value: Variant);
    procedure frxLRelatoriosBeforePrint(Sender: TfrxReportComponent);
    procedure FormShow(Sender: TObject);
    procedure cxgrd1DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure cxgrd1DBBandedTableView1DataControllerDetailExpanding(ADataController: TcxCustomDataController; ARecordIndex: Integer; var AAllow: Boolean);
    procedure Agrupadoporreferncia1Click(Sender: TObject);
    procedure cxgrd1DBTableView1DEP_GERASUBORDENSPropertiesChange(Sender: TObject);
    procedure cxgrd1DBBandedTableView1MARCADOPropertiesChange(Sender: TObject);
    procedure cxgrd1DBBandedTableView1SelectionChanged(Sender: TcxCustomGridTableView);
    procedure cxgrd1DBBandedTableView1MARCADOPropertiesEditValueChanged(Sender: TObject);
    procedure cdsBuscaAfterRefresh(DataSet: TDataSet);
    procedure cdsBuscaBeforeRefresh(DataSet: TDataSet);
    procedure cxgrd1DBBandedTableView1DblClick(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure cdsBuscaDEP_DATA_AJUSTADAChange(Sender: TField);
    procedure TipoData(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure cdsBuscaPED_CODIGOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cdsBuscaQTDEPRDSetText(Sender: TField; const Text: string);
    procedure cdsBuscaCalcFields(DataSet: TDataSet);
    procedure GerarEtiqueta1Click(Sender: TObject);
    procedure frxEtiquetaBeginDoc(Sender: TObject);
    procedure DemandadeMolas1Click(Sender: TObject);
    procedure cxgrd1DBBandedTableView1ACO_NOMEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  private
    NaoAtualizaHistorico : boolean;
    tcr: tProducaoDao;
    procedure filtro;
    procedure umMyMessage(var Message: TMessage); message UM_MYMESSAGE;
    procedure ConfOrdemProgramacao ;
  public
    { Public declarations }
  end;

var
  frmDemandaProducao: TfrmDemandaProducao;

implementation

uses InicioDB, uteis, uEstruturaFicha, uprevisaocompras, uProducaoSemPedido, uPedido, uGerenciamentoPCP, RWFunc, uEnfIndustrializacoEnviaDemanda;

{$R *.dfm}

procedure TfrmDemandaProducao.Agrupadoporreferncia1Click(Sender: TObject);
var  complFiltro : string;
    sfiltro : string;
begin
  inherited;
  try
    cdsBusca.DisableControls;
    cdsOrdem.Close;
    if (DataIni.date > 0 )  and (DataFim.Date = 0) then
      sfiltro:=  'Desde ' + DataIni.Text
    else if (DataIni.Date = 0) and (DataFim.Date > 0) then
      sfiltro := 'Periodo até '+ DataFim.text
    else if  (DataIni.date > 0 )  and (DataFim.Date > 0) then
     sfiltro := 'Período de '+ DataIni.Text +' a ' + DataFim.Text;

    if cxgrd1DBBandedTableView1.DataController.Filter.FilterText<>'' then
    begin
      complFiltro := cxgrd1DBBandedTableView1.DataController.Filter.FilterText;
      if sfiltro <> '' then
        sFiltro :=  sfiltro +' e filtro : ' +cxgrd1DBBandedTableView1.DataController.Filter.FilterCaption
      else
        sfiltro := 'Filtro :'+ cxgrd1DBBandedTableView1.DataController.Filter.FilterCaption;
      //  frxDBRelatorios.DataSet.Filter:= complFiltro;
      //  frxDBRelatorios.DataSet.Filtered := True;

       cdsbusca.Filter := complFiltro ;
       cdsBusca.Filtered := True;
    end;
    TfrxMemoView(frxAgrupadoRefer.FindObject('mfiltros')).Text := sfiltro;
    cdsBusca.IndexFieldNames := 'PRD_REFER';
    frxAgrupadoRefer.ShowReport;
    cdsBusca.Filtered := False;
    cdsBusca.IndexFieldNames := '';
  finally
    cdsBusca.EnableControls;
  end;

end;

procedure TfrmDemandaProducao.btnExcluiClick(Sender: TObject);
var
  sql, SimNaoParcial, update, prd_codigo, fCodEmSeqUnica: string;
  enviado, total: double;
  vIdPedido: integer;
begin
  inherited;
  if MessageDlg('Confirma estorno?', mtConfirmation, [mbYes, mbNo],0 )  <> mrYes then
    exit;

  cdsBusca.First;
  while not cdsBusca.Eof  do
  begin
    if cdsBuscaMarcado.AsString = '1' then
    begin
      if (cdsBuscaDEP_SITUACAO.AsString = 'L')  then
      begin
        MessageDlg('Não pode ser estornado. Pedido foi cancelado', mtError, [mbOK],0 );
        cdsbusca.Next;
        Continue
      end;
      if (cdsBuscaDEP_SITUACAO.AsString <> 'R')  then
      begin
        MessageDlg('Não pode ser estornado.', mtError, [mbOK],0 );
        cdsbusca.Next;
        Continue;
      end;

      enviado := cdsBuscaPRF_QTDE.AsCurrency;
      total := BuscaUmDadoSqlAsFloat('SELECT ENF_IT_QTD_ENV_PCP_DEMANDA FROM ENF_IT01 WHERE ENF_REGISTRO = ' + IntToStr(StrToIntDef(cdsBuscaENF_REGISTRO.AsString, 0)) );

      update := 'UPDATE ENF_IT01 ' +
                ' SET ENF_IT_QTD_ENV_PCP_DEMANDA =  ENF_IT_QTD_ENV_PCP_DEMANDA - ' + FloatToSql(cdsBuscaPRF_QTDE.AsCurrency) +
                ' WHERE ENF_REGISTRO = ' + IntToStr(StrToIntDef(cdsBuscaENF_REGISTRO.AsString, 0))  ;
      DBInicio.ExecSql(update);

      if total - enviado = 0 then
        SimNaoParcial := 'N'
      else if total > enviado  then
        SimNaoParcial := 'P';



      update := 'UPDATE ENF_IT01 SET ENF_IT_ENVIADO_PCP_DEMANDA = ' + QuotedStr(SimNaoParcial) + ' WHERE ENF_REGISTRO = ' + IntToStr(StrToIntDef(cdsBuscaENF_REGISTRO.AsString, 0))   ;
      DBInicio.ExecSql(update);

      // prd_codigo := BuscaUmDadoSqlAsString('SELECT PRD_CODIGO FROM PRD0000 WHERE PRD_REFER = ' + QuotedStr(cdsBuscaPRD_REFER.AsString));
      tcr.EstornoDemanda(cdsBuscaPED_CODIGO.AsString);

      if cdsBuscaopv_pedidointerno.AsString = 'S' then
      begin
       sql:=  'DELETE FROM PED_IT01  ' +
              ' WHERE PED_CODIGO = '+ QuotedStr( cdsBuscaPED_CODIGO.AsString) +
              ' AND PRD_REFER = '+ QuotedStr( cdsBuscaPRD_REFER.AsString) +
              ' AND EMP_CODIGO = '+QuotedStr( DBInicio.Empresa.EMP_CODIGO);
       ExecSql(sql);
       if BuscaUmDadoSqlAsInteger('SELECT COUNT(*) FROM PED_IT01 WHERE PED_CODIGO = ' + QuotedStr(cdsBuscaPED_CODIGO.AsString) + ' AND EMP_CODIGO = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO)) = 0 then
          sql:=  'DELETE FROM PED0000 WHERE PED_CODIGO = '+ QuotedStr( cdsBuscaPED_CODIGO.AsString) + ' AND EMP_CODIGO = '+QuotedStr( DBInicio.Empresa.EMP_CODIGO);
       ExecSql(sql);

        if dbInicio.empresa.fSeqUnicaPed then
           fCodEmSeqUnica := '001'
        Else
           fCodEmSeqUnica := dbInicio.Empresa.EMP_CODIGO;

        if (StrToIntDef(cdsBuscaPED_CODIGO.AsString, 0) <> 0) then
           RWFunc.SequenciadorPRC(dbInicio.MainDB, fCodEmSeqUnica,'PED0000', 'PED_CODIGO', 1, cdsBuscaPED_CODIGO.AsString);

        vIdPedido := DBInicio.BuscaUmDadoSqlAsInteger('SELECT ID_PEDIDO FROM PED0000 WHERE PED_CODIGO = ' + qStr(cdsBuscaPED_CODIGO.AsString) + ' and emp_codigo = ' + qStr(DBInicio.Empresa.EMP_CODIGO));
        DBInicio.MainDB.ExecuteDirect( ' DELETE FROM ped_cntnum ' +
                                       ' WHERE emp_codigo = ' +
                                       qStr(DBInicio.Empresa.EMP_CODIGO) +
                                       ' and id_pedido = ' + inttostr( vIdPedido )+
                                       ' and (Select cast(count(*) as integer) as conta from    ped0000 where id_pedido='+inttostr( vIdPedido )+')=0 ' );





      end;

      cdsbusca.Next;
    end
    else
      cdsbusca.Next;
  end;




  cdsBusca.Filter := '';
  cdsBusca.Filtered := False;
  btnPesquisa.Click;
end;

procedure TfrmDemandaProducao.btnIncluirClick(Sender: TObject);
begin
  inherited;
  if not Assigned(frmProdutoSemPedido) then
    frmProdutoSemPedido := TfrmProdutoSemPedido.Create(Application);
  frmProdutoSemPedido.ShowModal;
  btnPesquisa.Click;
end;

procedure TfrmDemandaProducao.btnNovoClick(Sender: TObject);
var produzir, convertido : Double ;
    ordem, update, prdReferItem : string;
    Tipo : TItemProducao;
begin
  inherited;
  if cdsBusca.State in dsEditModes then
    cdsbusca.Post;
  if cdsFicha.State in dsEditModes then
    cdsFicha.Post;
  fmAnimacao := TfmAnimacao.Create(application);
  btnNovo.Enabled := False;
  try
     fmAnimacao.Panel1.Caption :=  'Enviando a produção. Aguarde...';
     fmAnimacao.Panel1.Font.Color := clBlack;
     Application.ProcessMessages;
     fmAnimacao.Show;
     btnNovo.Enabled := False;
      if cdsBusca.State in dsEditModes then
        cdsBusca.Post;
     cdsBusca.DisableControls;
     cdsHistorico.DisableControls;
     cdsBusca.Filtered := False;
     cdsBusca.Filter := ' marcado = 1';
     cdsBusca.Filtered := True;
     if cdsbusca.RecordCount=0 then
       raise Exception.Create('Nada foi selecionado');
     cdsBusca.First;
     while not cdsBusca.eof do
     begin

         Tipo.ordem := '';
         tipo.iop_codigo := 0 ;
         Tipo.opr_codigo := 0 ;


         if (cdsBuscaQTDEPRD.AsFloat = 0 ) or (cdsBuscaQTDEPRD.IsNull) then
           produzir := cdsBuscaPRF_QTDE.asfloat - cdsBuscaDEP_QTDE_ESTOQUE.AsFloat  // vai produzir se não especificar tudo - o que usar no estoque
         else if cdsBuscaQTDEPRD.AsFloat > 0  then
           produzir := cdsBuscaQTDEPRD.AsFloat;

         convertido := BuscaUmDadoSql('SELECT PRF_QTDE_CONVERTIDA FROM PED_IT01 WHERE PRF_REGISTRO = ' + cdsBuscaPRF_REGISTRO.AsString, produzir);
         if convertido <> produzir then
            produzir := convertido;

         tcr.EnviarItemProducao( cdsBuscaPRD_CODIGO.AsString,
                                 cdsBuscaPRD_REFER.AsString,
                                 cdsBuscaPED_CODIGO.AsString,
                                 now, // data de emissao
                                 cdsBuscaDTENTREGA.AsDateTime, //dt entrega
                                 cdsBuscaCLI_CODIGO.AsString,
                                 produzir / cdsBuscaDEP_QTDE_PROGRA.AsInteger,// quantidade producao
                                 cdsBuscaPRF_PESOKG.AsFloat,
                                 cdsBuscaPRF_PRECO.AsFloat,
                                 cdsBuscaPRF_REGISTRO.AsInteger,
                                 0,
                                 cdsBuscaDEP_CODIGO.AsInteger,
                                 0,  //programação
                                 Tipo,
                                 DBInicio.Empresa.Bpmt_gerarsubordens,
                                 False  ,
                                 cdsBuscaDEP_DATA_AJUSTADA.AsDateTime
                                );

         qAux2.Close;
         qAux2.SQL.Text := 'SELECT PRD_CODIGO FROM MATERIAPRIMA_ORDEMPRODUCAO WHERE IOP_CODIGO = ' + IntToStr(Tipo.IOP_CODIGO);
         qAux2.Open;
         while not qAux2.Eof do
         begin
            prdReferItem := BuscaUmDadoSqlAsString('SELECT pr.PRD_REFER ' +
                                                   ' FROM MATERIAPRIMA_ORDEMPRODUCAO mo ' +
                                                   ' JOIN PRD0000 pr ON (pr.PRD_CODIGO = mo.PRD_CODIGO) ' +
                                                   ' WHERE mo.IOP_CODIGO = ' + IntToStr(Tipo.IOP_CODIGO) +
                                                   ' AND mo.PRD_CODIGO = ' + QuotedStr(qAux2.FieldByName('PRD_CODIGO').AsString));
            qAux.Close;
            qAux.SQL.Text := 'SELECT * FROM FTC_IT01 WHERE PRD_REFER = ' + QuotedStr(cdsBuscaPRD_REFER.AsString) + ' AND PRD_REFER_ITENS = ' + QuotedStr(prdReferItem) ;
            qAux.Open;

            update := 'UPDATE MATERIAPRIMA_ORDEMPRODUCAO SET ' +
                       ' FTI_TRATAMENTO_TERMICO        = ' + QuotedStr(qAux.FieldByName('FTI_TRATAMENTO_TERMICO').AsString) + ', ' +
                       ' FTI_TRATAMENTO_SUPERFICIAL    = ' + QuotedStr(qAux.FieldByName('FTI_TRATAMENTO_SUPERFICIAL').AsString) + ', ' +
                       ' FTI_TOLERANCIA                = ' + QuotedStr(qAux.FieldByName('FTI_TOLERANCIA').AsString) + ', ' +
                       ' FTI_GRAVACAO                  = ' + QuotedStr(qAux.FieldByName('FTI_GRAVACAO').AsString) + ', ' +
                       ' FTI_CORTE_QUANTIDADE          = ' + QuotedStr(qAux.FieldByName('FTI_CORTE_QUANTIDADE').AsString) + ', ' +
                       ' FTI_CORTE_COMPRIMENTO         = ' + QuotedStr(qAux.FieldByName('FTI_CORTE_COMPRIMENTO').AsString) + ', ' +
                       ' FTI_CORTE_QTDE_METROS         = ' + QuotedStr(qAux.FieldByName('FTI_CORTE_QTDE_METROS').AsString) + ', ' +
                       ' FTI_CORTE_OBSERVACAO          = ' + QuotedStr(qAux.FieldByName('FTI_CORTE_OBSERVACAO').AsString) + ', ' +
                       ' FTI_USINAGEM_OBSERVACAO       = ' + QuotedStr(qAux.FieldByName('FTI_USINAGEM_OBSERVACAO').AsString) + ', ' +
                       ' FTI_PRENSA_TIPO_CABECA        = ' + QuotedStr(qAux.FieldByName('FTI_PRENSA_TIPO_CABECA').AsString) + ', ' +
                       ' FTI_PRENSA_CHAVE              = ' + QuotedStr(qAux.FieldByName('FTI_PRENSA_CHAVE').AsString) + ', ' +
                       ' FTI_PRENSA_ALT_CABECA         = ' + QuotedStr(qAux.FieldByName('FTI_PRENSA_ALT_CABECA').AsString) + ', ' +
                       ' FTI_PRENSA_MASSA              = ' + QuotedStr(qAux.FieldByName('FTI_PRENSA_MASSA').AsString) + ', ' +
                       ' FTI_PRENSA_CAIXA_N            = ' + QuotedStr(qAux.FieldByName('FTI_PRENSA_CAIXA_N').AsString) + ', ' +
                       ' FTI_PRENSA_MATRIZ             = ' + QuotedStr(qAux.FieldByName('FTI_PRENSA_MATRIZ').AsString) + ', ' +
                       ' FTI_PRENSA_PINO               = ' + QuotedStr(qAux.FieldByName('FTI_PRENSA_PINO').AsString) + ', ' +
                       ' FTI_PRENSA_BUCHA              = ' + QuotedStr(qAux.FieldByName('FTI_PRENSA_BUCHA').AsString) + ', ' +
                       ' FTI_PRENSA_CONTRA_BUCHA       = ' + QuotedStr(qAux.FieldByName('FTI_PRENSA_CONTRA_BUCHA').AsString) + ', ' +
                       ' FTI_PRENSA_OBSERVACAO         = ' + QuotedStr(qAux.FieldByName('FTI_PRENSA_OBSERVACAO').AsString) + ', ' +
                       ' FTI_LAMINACAO_CAIXA_N         = ' + QuotedStr(qAux.FieldByName('FTI_LAMINACAO_CAIXA_N').AsString) + ', ' +
                       ' FTI_LAMINACAO_TIPO_ROLO       = ' + QuotedStr(qAux.FieldByName('FTI_LAMINACAO_TIPO_ROLO').AsString) + ', ' +
                       ' FTI_LAMINACAO_TIPO_ROSCA      = ' + QuotedStr(qAux.FieldByName('FTI_LAMINACAO_TIPO_ROSCA').AsString) + ', ' +
                       ' FTI_LAMINACAO_ALT_USINAGEM    = ' + QuotedStr(qAux.FieldByName('FTI_LAMINACAO_ALT_USINAGEM').AsString) + ', ' +
                       ' FTI_LAMINACAO_COMP_ROSCA      = ' + QuotedStr(qAux.FieldByName('FTI_LAMINACAO_COMP_ROSCA').AsString) + ', ' +
                       ' FTI_LAMINACAO_OBSERVACAO      = ' + QuotedStr(qAux.FieldByName('FTI_LAMINACAO_OBSERVACAO').AsString) +
                       ' WHERE IOP_CODIGO = ' + IntToStr(Tipo.IOP_CODIGO) +
                       '   AND PRD_CODIGO = ' + QuotedStr(qAux2.FieldByName('PRD_CODIGO').AsString)
                       ;
            ExecSql(update);
            qAux2.Next;
         end;
         cdsBusca.Next;
     end;
      ShowMessage('Enviado a produção com sucesso');
  finally

      cdsBusca.Filtered:= False;
      cdsBusca.Filter := '';
      cdsBusca.EnableControls;
      cdsHistorico.EnableControls;
      btnNovo.Enabled := True;

      fmAnimacao.Close;
      btnNovo.Enabled := True;
  end;
  btnPesquisa.Click;
end;

procedure TfrmDemandaProducao.btnPesquisaClick(Sender: TObject);
begin
  if not assigned(frmDemandaProducao) then exit;
  if not frmDemandaProducao.visible then exit;
  NaoAtualizaHistorico := True;
  inherited;
  NaoAtualizaHistorico := False;
end;

procedure TfrmDemandaProducao.btnPrevisaoClick(Sender: TObject);
begin
  inherited;
  if not Assigned(FrmPrevisaoCompras) then
    FrmPrevisaoCompras := TFrmPrevisaoCompras.Create(self);
  FrmPrevisaoCompras.ShowModal;

end;

procedure TfrmDemandaProducao.Button1Click(Sender: TObject);
begin
  inherited;
  if NOT Assigned(frmGerenciamentoPCP) then
    frmGerenciamentoPCP:= TfrmGerenciamentoPCP.Create(Application);
  frmGerenciamentoPCP.Show;
end;

procedure TfrmDemandaProducao.cdsBuscaAfterRefresh(DataSet: TDataSet);
begin
  inherited;
  if Assigned(frmDemandaProducao) then
    NaoAtualizaHistorico := False;
end;

procedure TfrmDemandaProducao.cdsBuscaAfterScroll(DataSet: TDataSet);
var sql : string;
begin
  inherited;
  if NaoAtualizaHistorico then
    exit;
  if DataSet.isempty then
    exit;

  sql := 'SELECT dh.*, u.USU_NOME FROM DEMANDA_HISTORICO dh '+
         ' JOIN USUARIO u ON (u.USU_CODIGO = dh.USU_CODIGO) '+
          ' WHERE PED_CODIGO = '+QuotedStr(DataSet.FieldByName('ped_codigo').AsString) +
          '   and prd_codigo = '+QuotedStr(DataSet.FieldByName('prd_codigo').AsString)+
          ' order by  hde_datamvto desc ';
  cdsHistorico.Open(sql);

end;

procedure TfrmDemandaProducao.cdsBuscaBeforePost(DataSet: TDataSet);
var estoque : Double;
begin
  inherited;
  if not cdsBusca.Modified then
    exit;
  if cdsBuscaDEP_SITUACAO.AsString = 'C' then
    exit;
  cdsBuscaDEP_CODIGO.AsInteger :=
       tcr.AtualizaDemanda(cdsBuscaDEP_CODIGO.AsInteger ,
                                  cdsBuscaPRF_REGISTRO.AsInteger,  0,
                                  cdsBuscaDEP_QTDE_ESTOQUE.AsFloat,
                                  cdsBuscaQTDEPRD.AsFloat,
                                  cdsBuscaDTENTREGA.AsDateTime,
                                  cdsBuscaPED_CODIGO.AsString,
                                  cdsBuscaPRD_CODIGO.AsString,
                                  False,
                                  cdsBuscaDEP_DATA_AJUSTADA.AsDateTime,
                                  cdsBuscaOPA_SEQUENCIAL.AsInteger
                                  );
  // fazer reserva
  if VarIsNull(DataSet.FieldByName('DEP_QTDE_ESTOQUE').oldValue) and (DataSet.FieldByName('DEP_QTDE_ESTOQUE').AsFloat >0)  then
  begin
    tcr.FazerReserva(cdsBuscaPRD_CODIGO.AsString, DataSet.FieldByName('DEP_QTDE_ESTOQUE').AsFloat);
    tcr.DemandaHistorico (cdsBuscaDEP_CODIGO.AsInteger,
                           'Reserva de estoque de '+FormatFloat('###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED) ,DataSet.FieldByName('DEP_QTDE_ESTOQUE').AsFloat) ,
                           cdsBuscaPED_CODIGO.AsString,
                           cdsBuscaPRD_CODIGO.AsString);
  end
  else
  begin
    //fazer estorno da reserva
    if (DataSet.FieldByName('DEP_QTDE_ESTOQUE').oldValue > DataSet.FieldByName('DEP_QTDE_ESTOQUE').NewValue) then //estorno
    begin
      estoque := DataSet.FieldByName('DEP_QTDE_ESTOQUE').oldValue-DataSet.FieldByName('DEP_QTDE_ESTOQUE').NewValue;
      tcr.EstornoReserva(cdsBuscaPRD_CODIGO.AsString,estoque);
      tcr.DemandaHistorico (cdsBuscaDEP_CODIGO.AsInteger,
                            'Estonado reserva de '+FormatFloat('###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED),estoque) ,
                            cdsBuscaPED_CODIGO.AsString,
                            cdsBuscaPRD_CODIGO.AsString);
    end
    else  if (DataSet.FieldByName('DEP_QTDE_ESTOQUE').oldValue < DataSet.FieldByName('DEP_QTDE_ESTOQUE').NewValue) then

    begin
      //fazer reserva somente com a diferença
      estoque := DataSet.FieldByName('DEP_QTDE_ESTOQUE').NewValue -DataSet.FieldByName('DEP_QTDE_ESTOQUE').oldValue;
      tcr.FazerReserva(cdsBuscaPRD_CODIGO.AsString, estoque);
      tcr.DemandaHistorico (cdsBuscaDEP_CODIGO.AsInteger,
                            'Reserva de estoque de '+FormatFloat('###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED) ,estoque) ,
                            cdsBuscaPED_CODIGO.AsString,
                            cdsBuscaPRD_CODIGO.AsString);
    end;


  end;

   if  DataSet.FieldByName('DTENTREGA').CurValue <>  DataSet.FieldByName('DTENTREGA').OldValue then
     tcr.DemandaHistorico (cdsBuscaDEP_CODIGO.AsInteger,
                            'Alterado data de entrega de '+FormatDateTime('dd/mm/yyyy',DataSet.FieldByName('DTENTREGA').OldValue) +
                            ' para ' + FormatDateTime('dd/mm/yyyy',DataSet.FieldByName('DTENTREGA').CurValue),
                           cdsBuscaPED_CODIGO.AsString,
                           cdsBuscaPRD_CODIGO.AsString);

end;

procedure TfrmDemandaProducao.cdsBuscaBeforeRefresh(DataSet: TDataSet);
begin
  inherited;
  NaoAtualizaHistorico := True;
end;

procedure TfrmDemandaProducao.cdsBuscaCalcFields(DataSet: TDataSet);
begin
  inherited;
  qAux.Close;
  qAux.SQL.Text :=
    'SELECT ei.ENF_IT_NOTANUMBER, f.FOR_RAZAO ' +
    '  FROM DEMANDA_PRODUCAO dp ' +
    '  JOIN ENF_IT01 ei ON (ei.ENF_REGISTRO = dp.ENF_REGISTRO) ' +
    '  JOIN ENF0001 e ON (e.ENF_NOTANUMBER = ei.ENF_IT_NOTANUMBER AND e.FOR_CODIGO = ei.FOR_CODIGO ) ' +
    '  JOIN FOR0000 f ON (f.FOR_CODIGO = e.FOR_CODIGO ) ' +
    ' WHERE dp.DEP_CODIGO = ' +  cdsBuscaDEP_CODIGO.AsString;
  qAux.Open;
  cdsBuscaNOTA_FISCAL.AsString := qAux.FieldByName('ENF_IT_NOTANUMBER').AsString;
  cdsBuscaFOR_RAZAO.AsString := qAux.FieldByName('FOR_RAZAO').AsString;
//  BuscaUmDadoSqlAsString('SELECT ei.ENF_IT_NOTANUMBER FROM DEMANDA_PRODUCAO dp JOIN ENF_IT01 ei ON (ei.ENF_REGISTRO = dp.ENF_REGISTRO) WHERE dp.DEP_CODIGO = ' + cdsBuscaDEP_CODIGO.AsString);
end;

procedure TfrmDemandaProducao.cdsBuscaDEP_DATA_AJUSTADAChange(Sender: TField);
begin
  inherited;
  if Sender.AsDateTime < cdsBuscaPED_DTENTRADA.AsDateTime then
    raise Exception.Create('Data ajustada não pode ser menor que a data do pedido');
end;

procedure TfrmDemandaProducao.cdsBuscaDEP_QTDE_ESTOQUEChange(Sender: TField);

begin
  inherited;

  if Sender.AsFloat < 0  then
   raise Exception.Create('Não pode ser negativo');

  if  (cdsBuscaESTOQUEDISPONIVEL.AsFloat<cdsBuscaDEP_QTDE_ESTOQUE.AsFloat) and (cdsBuscaESTOQUEDISPONIVEL.AsFloat<=0) then
   raise Exception.Create('Quantidade em estoque insuficiente');

  if  (cdsBuscaPRF_QTDE.AsFloat<cdsBuscaDEP_QTDE_ESTOQUE.AsFloat) then
   raise Exception.Create('Não pode reservar mais estoque do que foi solicitado');
  if cdsBuscaDEP_QTDE_ESTOQUE.AsFloat = cdsBuscaPRF_QTDE.AsFloat then
  begin
    ShowMessage('Quantidade solicitada é igual a quantidade de usado de estoque, assim não vai produzir nada');
  end;

  //recalculando a da a produzir
  cdsBuscaQTDEPRD.AsFloat :=  cdsBuscaPRF_QTDE.asfloat - cdsBuscaDEP_QTDE_ESTOQUE.AsFloat ;//cdsBuscaPRF_QTDE.asfloat;

  if (cdsBuscaDEP_QTDE_PROGRA.AsInteger > 1)  and (sender.AsFloat> 0 ) then
    ConfOrdemProgramacao;
  if cdsBuscaQTDEPRD.AsFloat > 0  then
    cdsBuscaMARCADO.AsInteger := 1;
end;

procedure TfrmDemandaProducao.cdsBuscaDEP_QTDE_PROGRAChange(Sender: TField);

begin
  inherited;
  if Sender.AsInteger <=  0 then
      raise Exception.Create('Quantidade tem que ser maior que zero');
  if Frac( Sender.AsVariant) <> 0.00 then
      raise Exception.Create('Quantidade só pode ser número inteiro');
   if Sender.AsInteger = 1 then
   begin
      ExecSql('update DEMANDA_PRODUCAO set DEP_QTDE_PROGRA = 1 where dep_codigo =' +cdsBuscaDEP_CODIGO.AsString);
      ExecSql('delete from ORDEM_PROGRAMADA where dep_codigo =' +cdsBuscaDEP_CODIGO.AsString);
      exit;
   end;


  if not Assigned(frmOrdemProgramacao) then
    frmOrdemProgramacao := TfrmOrdemProgramacao.Create(self);
  try
    frmOrdemProgramacao.ProdutoFracionado := MatchStr(cdsBuscaPRD_UND.AsString,['KG','LT','GR','ML','MT','MM','TN']);
    frmOrdemProgramacao.Dep_codigo := cdsBuscaDEP_CODIGO.AsInteger;
    frmOrdemProgramacao.prd_codigo := cdsBuscaPRD_CODIGO.AsString;
    frmOrdemProgramacao.Ped_codigo := cdsBuscaPED_CODIGO.AsString;
    frmOrdemProgramacao.DataEntrega := cdsBuscaDTENTREGA.AsDateTime;
    frmOrdemProgramacao.QtdeSeq :=  Sender.AsInteger ;
    if cdsBuscaQTDEPRD.AsFloat = 0  then
      frmOrdemProgramacao.QtdeProducao :=  cdsBuscaPRF_QTDE.AsFloat
    else
      frmOrdemProgramacao.QtdeProducao :=  cdsBuscaQTDEPRD.AsFloat;
    if (frmOrdemProgramacao.ShowModal <> mrOk)  then
      if  (frmOrdemProgramacao.cdsEdit.RecordCount=0) then
      begin
        Sender.Value := 1;
        cxgrd1.SetFocus;
      end;
  finally
    FreeAndNil(frmOrdemProgramacao);
  end;
end;

procedure TfrmDemandaProducao.cdsBuscaDEP_SITUACAOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if sender.DataSet.IsEmpty then
    exit;
  if Sender.AsString = 'N' then
  begin
     text := 'Não recebido';
     exit;
  end;
  if Sender.AsString = 'R' then
  begin
     text := 'Recebido';
     exit;
  end;
  if Sender.AsString = 'I' then
  begin
    text := 'Iniciado';
    exit;
  end;
  if Sender.AsString = 'E' then
  begin
    text := 'Enviado a produção';
    exit;
  end;
  if Sender.AsString = 'C' then
  begin
    text := 'Concluido';
    exit;
  end;
  if sender.AsString = 'A' then
  begin
    text := 'Atrasado';
    exit;
  end;
  if sender.AsString = 'S' then
  begin
    text := 'Estornado';
    exit;
  end;
  if sender.AsString = 'L' then
  begin
    text := 'Pedido Cancelado';
    exit;
  end;

end;

procedure TfrmDemandaProducao.cdsBuscaDTENTREGAChange(Sender: TField);
begin
  inherited;
  cdsBuscaMARCADO.AsInteger := 1;
end;

procedure TfrmDemandaProducao.cdsBuscaPED_CODIGOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if cdsBuscaopv_pedidointerno.AsString = 'S' then
    Text := 'Pedido interno'
  else
    text := Sender.AsString;

end;

procedure TfrmDemandaProducao.cdsBuscaQTDEPRDGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if sender.AsFloat = 0  then
     text := FormatFloat('###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED) ,cdsBuscaPRF_QTDE.AsFloat )
  else
    text := FormatFloat('###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED) , sender.AsFloat );

end;

procedure TfrmDemandaProducao.cdsBuscaQTDEPRDSetText(Sender: TField; const Text: string);
var
  de: string;
  iRegistroItem : integer;
begin
  inherited;

  iRegistroItem := BuscaUmDadoSqlAsInteger('SELECT PRF_REGISTRO FROM PED_IT01 ' +
                   '  WHERE PED_CODIGO = ' + QuotedStr(cdsbuscaPED_CODIGO.Asstring) +
                   '    AND PRD_REFER  = ' + QuotedStr(cdsbuscaPRD_REFER.Asstring) +
                   '    AND EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo) );
  if BuscaUmDadoSqlAsInteger('SELECT PRF_REGISTRO FROM ITEM_ORDEMPRODUCAO ' +
                             ' WHERE PRF_REGISTRO = ' + IntToStr(iRegistroItem)) > 0  then
  begin
    MessageDlg('Este item já foi enviado para a Programação da Produção. Impossível alterar', mtWarning, [mbOK], 0);
    Exit;
  end;


  de := Sender.AsString;
  Sender.AsFloat := StrToFloat(Text);
  qAux.Close;
  qAux.SQL.Text := 'UPDATE PED_IT01 SET ' +
                   '                    PRF_QTDE_CONVERTIDA = ' + FloatToSQL(StrToFloat(Text)) +
                   '  WHERE PED_CODIGO = ' + QuotedStr(cdsbuscaPED_CODIGO.Asstring) +
                   '    AND PRD_REFER  = ' + QuotedStr(cdsbuscaPRD_REFER.Asstring) +
                   '    AND EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo) ;
  qAux.ExecSQL;
  tcr.DemandaHistorico (cdsBuscaDEP_CODIGO.AsInteger,
                            'Alteração Manual da Quantidade de Produção, de: ' + FormatFloat('###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED) ,StrToFloat(de)) +
                                                                     ' para: ' +  FormatFloat('###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED) ,StrToFloat(Text)) ,
                            cdsBuscaPED_CODIGO.AsString,
                            cdsBuscaPRD_CODIGO.AsString);

end;

procedure TfrmDemandaProducao.cdsFichaBeforePost(DataSet: TDataSet);
var estoque : Double;
begin
  inherited;
   if not cdsFicha.Modified then
    exit;


 cdsFichaDEP_CODIGO.AsInteger :=
       tcr.AtualizaDemanda(cdsFichaDEP_CODIGO.AsInteger ,
                                  0,  cdsFichaFTI_REGISTRO.AsInteger,
                                  cdsFichaDEP_QTDE_ESTOQUE.AsFloat,
                                  cdsFichaQTDEPRD.AsFloat,
                                  cdsFichaDTENTREGA.AsDateTime,
                                  cdsFichaPED_CODIGO.AsString,
                                  cdsFichaPRD_CODIGO.AsString,
                                  cdsFichaDEP_GERASUBORDENS.AsString = 'S',
                                  0, //data de ajuste
                                  0 // sequencia de ordem de programação
                                  );
  // alterado a uso do estoque
  // fazer reserva
  if VarIsNull(DataSet.FieldByName('DEP_QTDE_ESTOQUE').oldValue) and (DataSet.FieldByName('DEP_QTDE_ESTOQUE').AsFloat>0)  then
  begin
    tcr.FazerReserva(cdsFichaPRD_CODIGO.AsString, DataSet.FieldByName('DEP_QTDE_ESTOQUE').AsFloat);
    tcr.DemandaHistorico (cdsFichaDEP_CODIGO.AsInteger,
                           'Reserva de estoque de '+FormatFloat('###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED) ,DataSet.FieldByName('DEP_QTDE_ESTOQUE').AsFloat) ,
                           cdsFichaPED_CODIGO.AsString,
                           cdsFichaPRD_CODIGO.AsString);
  end
  else
  begin
    //fazer estorno da reserva
    if DataSet.FieldByName('DEP_QTDE_ESTOQUE').oldValue > DataSet.FieldByName('DEP_QTDE_ESTOQUE').NewValue then //estorno
    begin
      estoque := DataSet.FieldByName('DEP_QTDE_ESTOQUE').oldValue-DataSet.FieldByName('DEP_QTDE_ESTOQUE').NewValue;
      tcr.EstornoReserva(cdsFichaPRD_CODIGO.AsString,estoque);
      tcr.DemandaHistorico (cdsFichaDEP_CODIGO.AsInteger,
                            'Estonado reserva de '+FormatFloat('###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED),estoque) ,
                           cdsFichaPED_CODIGO.AsString,
                           cdsFichaPRD_CODIGO.AsString);
    end
    else if DataSet.FieldByName('DEP_QTDE_ESTOQUE').oldValue < DataSet.FieldByName('DEP_QTDE_ESTOQUE').NewValue then

    begin
      //fazer reserva somente com a diferença
      estoque := DataSet.FieldByName('DEP_QTDE_ESTOQUE').NewValue -DataSet.FieldByName('DEP_QTDE_ESTOQUE').oldValue;
      tcr.FazerReserva(cdsFichaPRD_CODIGO.AsString, estoque);
      tcr.DemandaHistorico (cdsFichaDEP_CODIGO.AsInteger,
                            'Reserva de estoque de '+FormatFloat('###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED) ,estoque) ,
                           cdsFichaPED_CODIGO.AsString,
                           cdsFichaPRD_CODIGO.AsString);;
    end;


  end;

  // atualizado a data de entrega
  if  DataSet.FieldByName('DTENTREGA').CurValue <>  DataSet.FieldByName('DTENTREGA').OldValue then
     tcr.DemandaHistorico (cdsFichaDEP_CODIGO.AsInteger,
                            'Alterado data de entrega de '+FormatDateTime('dd/mm/yyyy',DataSet.FieldByName('DTENTREGA').OldValue) +
                            ' para ' + FormatDateTime('dd/mm/yyyy',DataSet.FieldByName('DTENTREGA').CurValue),
                           cdsFichaPED_CODIGO.AsString,
                           cdsFichaPRD_CODIGO.AsString);
end;

procedure TfrmDemandaProducao.cdsFichaDEP_QTDE_ESTOQUEChange(Sender: TField);
begin
  inherited;
  if Sender.AsFloat < 0  then
   raise Exception.Create('Não pode ser negativo');

  if  (cdsFichaESTOQUEDISPONIVEL.AsFloat<cdsFichaDEP_QTDE_ESTOQUE.AsFloat) and (cdsFichaESTOQUEDISPONIVEL.AsFloat<=0) then
   raise Exception.Create('Quantidade em estoque insuficiente');

  if  (cdsFichaUC_TOTAL.AsFloat<Sender.AsFloat) then
   raise Exception.Create('Não pode reservar mais estoque do que foi solicitado');
   cdsFichaQTDEPRD.AsFloat := cdsFichaUC_TOTAL.AsFloat - Sender.AsFloat;
end;

procedure TfrmDemandaProducao.cdsFichaQTDEPRDChange(Sender: TField);
begin
  inherited;
  if  (cdsFichaUC_TOTAL.AsFloat -cdsFichaDEP_QTDE_ESTOQUE.AsFloat)< Sender.AsFloat then
   raise Exception.Create('Quantidade a produzir não pode ser maior que a quantidade solicitada, excluindo o usado em estoque');
end;

procedure TfrmDemandaProducao.chkNaoRecebidoClick(Sender: TObject);
begin
  inherited;
  btnPesquisa.Click;
end;


procedure TfrmDemandaProducao.ConfOrdemProgramacao;
var
  pt : tPoint;
begin
  if  cdsBuscaDEP_QTDE_PROGRA.AsInteger = 1 then
    exit;
 if not Assigned(frmOrdemProgramacao) then
    frmOrdemProgramacao := TfrmOrdemProgramacao.Create(self);
  pt := Mouse.CursorPos;
  try
    if pt.x<390 then
     frmOrdemProgramacao.left := pt.x
    else
      frmOrdemProgramacao.left := pt.x-390;
     frmOrdemProgramacao.ProdutoFracionado := MatchStr(cdsBuscaPRD_UND.AsString,['KG','LT','GR','ML','MT','MM','TN']);
    frmOrdemProgramacao.Dep_codigo := cdsBuscaDEP_CODIGO.AsInteger;
    frmOrdemProgramacao.prd_codigo := cdsBuscaPRD_CODIGO.AsString;
    frmOrdemProgramacao.Ped_codigo := cdsBuscaPED_CODIGO.AsString;
    frmOrdemProgramacao.DataEntrega := cdsBuscaDTENTREGA.AsDateTime;
    frmOrdemProgramacao.QtdeSeq :=  cdsBuscaDEP_QTDE_PROGRA.AsInteger ;
    frmOrdemProgramacao.cxGrid1DBTableView1.OptionsData.Editing := cdsBuscaDEP_SITUACAO.AsString <> 'C';
    if MatchStr(cdsBuscaDEP_SITUACAO.AsString,['I','E']) then
    begin
      frmOrdemProgramacao.prf_registro := cdsBuscaPRF_REGISTRO.AsInteger;
      frmOrdemProgramacao.cxGrid1DBTableView1OPA_DATA_ENTREGA.Options.Editing := False;
      frmOrdemProgramacao.cxGrid1DBTableView1OPA_QTDE_PRODUZIR.Options.Editing := False;

    end;
    frmOrdemProgramacao.btnOk.Visible :=   cdsBuscaDEP_SITUACAO.AsString <> 'C';
    if cdsBuscaQTDEPRD.AsFloat = 0  then
      frmOrdemProgramacao.QtdeProducao :=  cdsBuscaPRF_QTDE.AsFloat
    else
      frmOrdemProgramacao.QtdeProducao :=  cdsBuscaQTDEPRD.AsFloat;
    frmOrdemProgramacao.ShowModal;
  finally
    FreeAndNil(frmOrdemProgramacao);
  end;
end;

procedure TfrmDemandaProducao.cxgrd1DBBandedTableView1ACO_NOMEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
    if frmEnfIndustrializacoEnviaDemanda = nil then
      frmEnfIndustrializacoEnviaDemanda := TfrmEnfIndustrializacoEnviaDemanda.Create(Self);
    frmEnfIndustrializacoEnviaDemanda.Panel1.Caption := '';
    frmEnfIndustrializacoEnviaDemanda.Label1.Visible := False;
    frmEnfIndustrializacoEnviaDemanda.Label2.Visible := False;
    frmEnfIndustrializacoEnviaDemanda.Label3.Visible := False;
    frmEnfIndustrializacoEnviaDemanda.lbRecebida.Visible := False;
    frmEnfIndustrializacoEnviaDemanda.lbEnviada.Visible := False;
    frmEnfIndustrializacoEnviaDemanda.descricao := cdsBuscaPRD_DESCRI.AsString;
    frmEnfIndustrializacoEnviaDemanda.Caption := 'Altera Cor da Demanda';
    frmEnfIndustrializacoEnviaDemanda.edEnviar.Visible := False;
    frmEnfIndustrializacoEnviaDemanda.Label4.Visible := False;
    frmEnfIndustrializacoEnviaDemanda.edEnviar.Visible := False;
    frmEnfIndustrializacoEnviaDemanda.Label5.Top := 30;
    frmEnfIndustrializacoEnviaDemanda.cbCor.Top := 30;
    frmEnfIndustrializacoEnviaDemanda.Constraints.MaxHeight := 170;

    frmEnfIndustrializacoEnviaDemanda.ShowModal;
    if frmEnfIndustrializacoEnviaDemanda.ModalResult = mrOk then
    begin
      ExecSql('UPDATE PED_IT01 SET ACO_CODIGO = ' + frmEnfIndustrializacoEnviaDemanda.cbCor.idRetorno + ' WHERE PRF_REGISTRO = ' + cdsBuscaPRF_REGISTRO.AsString);
      cdsBusca.Refresh;
      // cxgrd1DBBandedTableView1.DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1ACO_NOME.Index] := frmEnfIndustrializacoEnviaDemanda.cbCor.Text;
      // ShowMessage(frmEnfIndustrializacoEnviaDemanda.cbCor.idRetorno);
    end;
    FreeAndNil(frmEnfIndustrializacoEnviaDemanda);
end;

procedure TfrmDemandaProducao.cxgrd1DBBandedTableView1DataControllerDetailExpanding(ADataController: TcxCustomDataController; ARecordIndex: Integer; var AAllow: Boolean);
begin
  if ADataController.Values[ ARecordIndex, cxgrd1DBBandedTableView1DTENTREGA.Index] = Null then
  begin
    MessageDlg('Data da entrega no pedido não informada, impossível prosseguir', mtError, [mbOK], 0);
    btnPesquisa.Click;
    exit;
  end;


  ADataController.FocusedRecordIndex :=ARecordIndex;

  //ADataController.Values[ ARecordIndex, cxgrd1DBBandedTableView1IOP_CODIGO.Index] ;
  cdsFicha.close;

  cdsFicha.SQL.Text :=
    'SELECT ft.FTI_REGISTRO , DEP_CODIGO,  ft.PRD_REFER, PRD_REFER_ITENS, pr.PRD_DESCRI ,PR.PRD_UND, FTI_UC,  '+
    // PEGAR A DATA DE ENTREGA DO ITEM PRINCIPAL / SENÃO SE DATA DE ENTREGA ESTIVER PREENCHIDA, SERÁ RETORNADA ESTA
     iif( VarIsNull(ADataController.Values[ ARecordIndex, cxgrd1DBBandedTableView1DTENTREGA.Index]),
         ' DEP_DATA_ENTREGA DTENTREGA,',
         ' COALESCE(DEP_DATA_ENTREGA, cast( '+DateToSQL(VarToDateTime(ADataController.Values[ ARecordIndex, cxgrd1DBBandedTableView1DTENTREGA.Index]))  +' as date)) as  DTENTREGA, ')+

    ' COALESCE(DEP_SITUACAO, ''R'') DEP_SITUACAO, iop.IOP_QUANTIDADE QTDEPRD, iop.IOP_NORDEM,DEP_QTDE_ESTOQUE,         '+
    ' (SELECT sum(KAS_SALDO)- COALESCE(sum(KAS_RESERVA),0)  FROM kardex_almox_saldo kas WHERE kas.PRD_CODIGO = pr.PRD_CODIGO ) EstoqueDisponivel,  ' +
    ' pr.prd_codigo, '+QuotedStr(ADataController.Values[ ARecordIndex, cxgrd1DBBandedTableView1PED_CODIGO.Index] ) + ' as ped_codigo, ' +
    ' pr.PTI_CODIGO, tp.PTI_DESCRI, tp.PTI_SIGLA, pr.PRD_UND,(FTI_UC*'+ FloatToSQL( ADataController.Values[ ARecordIndex, cxgrd1DBBandedTableView1PRF_QTDE.Index]) +   ') AS UC_TOTAL,  '+
    ' DEP_GERASUBORDENS ' +
    ' FROM FTC_IT01 ft                                                                                                 '+
    ' join prd0000 Pr on (ft.prd_refer_itens = pr.prd_refer '+ ConcatSe(' and ft.', DBInicio.ExclusivoSql('PRODUTOS'))+ ')'+
    ' JOIN PRD_TIPO tp ON (tp.PTI_CODIGO = pr.PTI_CODIGO ) '+
    ' LEFT JOIN DEMANDA_PRODUCAO dpr ON (dpr.FTI_REGISTRO = ft.FTI_REGISTRO AND ped_codigo ='+QuotedStr(ADataController.Values[ ARecordIndex, cxgrd1DBBandedTableView1PED_CODIGO.Index])+' ) '+  // pega a demanda de acordo pedido e registro
    ' LEFT JOIN ORDEMPRODUCAO OP  ON (   OP.EMP_CODIGO = '+ QuotedStr (DBInicio.Empresa.EMP_CODIGO) +
                                      ' AND op.PED_CODIGO = '+QuotedStr(ADataController.Values[ ARecordIndex, cxgrd1DBBandedTableView1PED_CODIGO.Index] )+')'+
    ' LEFT JOIN ITEM_ORDEMPRODUCAO iop ON (Iop.OPR_CODIGO = OP.OPR_CODIGO AND pr.prd_codigo = iop.PRD_CODIGO)          '+
    ' WHERE ft.PRD_REFER = '+ QuotedStr(ADataController.Values[ ARecordIndex, cxgrd1DBBandedTableView1PRD_REFER.Index] ) + ConcatSe(' and ft.', DBInicio.ExclusivoSql('PRODUTOS')) +
    ' and  PTI_SIGLA in (''PA'',''PI'',''KT'')'  ; //DBInicio.Empresa.Bpmt_gerarsubordens
 cdsFicha.Open;

end;

procedure TfrmDemandaProducao.cxgrd1DBBandedTableView1DataControllerFilterGetValueList(Sender: TcxFilterCriteria; AItemIndex: Integer; AValueList: TcxDataFilterValueList);
begin
  inherited;
   AValueList.add(fviAll,0,'Todos',False);
   AValueList.Delete(0);
   AValueList.Delete(0);
end;

procedure TfrmDemandaProducao.cxgrd1DBBandedTableView1DblClick(Sender: TObject);
begin
  inherited;
  ConfOrdemProgramacao;
end;

procedure TfrmDemandaProducao.cxgrd1DBBandedTableView1DEP_QTDE_ESTOQUEStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
  var AStyle: TcxStyle);
begin
  inherited;
  if VarIsNull(ARecord.Values[ cxgrd1DBBandedTableView1IOP_NORDEM.Index])
  or (ARecord.Values[ cxgrd1DBBandedTableView1IOP_NORDEM.Index] = '')
  then
    AStyle := cxStyle2
  else
    AStyle := cxStyle1;
end;

procedure TfrmDemandaProducao.cxgrd1DBBandedTableView1DEP_QTDE_PROGRAPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);

begin
  inherited;
  ConfOrdemProgramacao;

end;

procedure TfrmDemandaProducao.cxgrd1DBBandedTableView1DEP_QTDE_PROGRAStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
  var AStyle: TcxStyle);
begin
  inherited;
  if VarIsNull(ARecord.Values[ cxgrd1DBBandedTableView1IOP_NORDEM.Index])
  or (ARecord.Values[ cxgrd1DBBandedTableView1IOP_NORDEM.Index] = '')
  then
    AStyle := cxStyle2
  else
    AStyle := cxStyle1;
end;

procedure TfrmDemandaProducao.cxgrd1DBBandedTableView1DTENTREGAStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  inherited;
  if VarIsNull(ARecord.Values[ cxgrd1DBBandedTableView1IOP_NORDEM.Index])
  or (ARecord.Values[ cxgrd1DBBandedTableView1IOP_NORDEM.Index] = '')
  then
    AStyle := cxStyle2
  else
    AStyle := cxStyle1;
end;

procedure TfrmDemandaProducao.cxgrd1DBBandedTableView1Editing(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; var AAllow: Boolean);
begin
  inherited;
   AItem.Focused := true;
  if (cdsBuscaDEP_QTDE_ESTOQUE.AsFloat = cdsBuscaPRF_QTDE.AsFloat) and (cdsBuscaMARCADO.AsInteger = 0) and (AItem.Index = cxgrd1DBBandedTableView1MARCADO.Index) then
    raise Exception.Create('Não pode enviar a produção porque não há nada para produzir. '#13#10+
                            ' Quantidades solicitada e usada de estoque são iguais');

  if  (cdsBuscaIOP_NORDEM.AsString <> '' ) and (cdsBuscaMARCADO.AsInteger = 0) and (AItem.Index = cxgrd1DBBandedTableView1MARCADO.Index)
  and (AItem.Index <> cxgrd1DBBandedTableView1DEP_DATA_AJUSTADA.Index) then
    raise Exception.Create('Já enviado a produção');

  if cdsBuscaDEP_SITUACAO.AsString = 'N' then
    raise Exception.Create('Pedido ainda não chegou na demanda');

  if cdsBuscaDEP_SITUACAO.AsString = 'L' then
    raise Exception.Create('Pedido foi cancelado');

  if AItem.Index = cxgrd1DBBandedTableView1QTDEPRD.Index then
      AAllow := True
  else
  if AItem.Index = cxgrd1DBBandedTableView1DEP_DATA_AJUSTADA.Index then
      AAllow := True
  else
  if (cdsBuscaIOP_NORDEM.AsString <> '') then
  begin

    AAllow := false;
    exit;
  end;

//  if not (cdsBusca.State in dsEditModes) then
//    cdsBusca.edit;
//  cdsBuscaESTOQUEDISPONIVEL.AsFloat :=
//      BuscaUmDadoSqlAsFloat(' SELECT sum(KAS_SALDO)- COALESCE(sum(KAS_RESERVA),0) FROM kardex_almox_saldo kas WHERE kas.PRD_CODIGO =  '+QuotedStr(cdsBuscaPRD_CODIGO.AsString));
end;

procedure TfrmDemandaProducao.cxgrd1DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
   // criado o umMyMessage e quando antes de expandir collapsa tudo
  if (AFocusedRecord <> nil) and not TcxCustomGridRecord(AFocusedRecord).Expanded and (APrevFocusedRecord<> nil) and
   TcxCustomGridRecord(APrevFocusedRecord).Expanded then
     TcxCustomGridRecord(APrevFocusedRecord).Collapse(true);

//   if AFocusedRecord <> nil then
//    PostMessage(Handle, UM_MYMESSAGE, Integer(AFocusedRecord), Integer(Sender));
end;

procedure TfrmDemandaProducao.cxgrd1DBBandedTableView1MARCADOPropertiesChange(Sender: TObject);
begin
  inherited;
  cdsBuscaMARCADO.AsString
end;

procedure TfrmDemandaProducao.cxgrd1DBBandedTableView1MARCADOPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmDemandaProducao.cxgrd1DBBandedTableView1SelectionChanged(Sender: TcxCustomGridTableView);
begin
  inherited;
  //
end;

procedure TfrmDemandaProducao.cxgrd1DBTableView1CanFocusRecord(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; var AAllow: Boolean);
var sql :string;
  ped_codigo , prd_codigo : string;
begin
  inherited;
  prd_codigo := ARecord.Values[cxgrd1DBTableView1PRD_CODIGO.Index];
  ped_codigo := ARecord.Values[cxgrd1DBTableView1PED_CODIGO.Index];
  sql := 'SELECT dh.*, u.USU_NOME FROM DEMANDA_HISTORICO dh '+
         ' JOIN USUARIO u ON (u.USU_CODIGO = dh.USU_CODIGO) '+
          ' WHERE PED_CODIGO = '+QuotedStr(ped_codigo) +
          '   and prd_codigo = '+QuotedStr(prd_codigo)+
          ' order by  hde_datamvto desc ';
  cdsHistorico.Open(sql);

end;

procedure TfrmDemandaProducao.cxgrd1DBTableView1CanSelectRecord(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; var AAllow: Boolean);
var sql :string;
  ped_codigo , prd_codigo : string;
begin
  inherited;
  prd_codigo := ARecord.Values[cxgrd1DBTableView1PRD_CODIGO.Index];
  ped_codigo := ARecord.Values[cxgrd1DBTableView1PED_CODIGO.Index];
  sql := 'SELECT dh.*, u.USU_NOME FROM DEMANDA_HISTORICO dh '+
         ' JOIN USUARIO u ON (u.USU_CODIGO = dh.USU_CODIGO) '+
         ' WHERE PED_CODIGO = '+QuotedStr(ped_codigo) +
         '   and prd_codigo = '+QuotedStr(prd_codigo)+
         ' order by  hde_datamvto desc ';
  cdsHistorico.Open(sql);


end;

procedure TfrmDemandaProducao.cxgrd1DBTableView1DEP_GERASUBORDENSPropertiesChange(Sender: TObject);
begin
  inherited;
  // se não quer gerar subordens, não tem porque usar esto que porque ele pode estar para empanhar automatico
  // se for manual ele faz na produção o empenho
  if cdsFichaDEP_GERASUBORDENS.AsString = 'N' then
  begin
    cdsFichaDEP_QTDE_ESTOQUE.AsFloat := 0 ;
    cdsFichaQTDEPRD.AsFloat := cdsFichaUC_TOTAL.AsFloat;


  end;
  cdsFichaDEP_CODIGO.AsInteger :=
       tcr.AtualizaDemanda(cdsFichaDEP_CODIGO.AsInteger ,
                                  0,  cdsFichaFTI_REGISTRO.AsInteger,
                                  cdsFichaDEP_QTDE_ESTOQUE.AsFloat,
                                  cdsFichaQTDEPRD.AsFloat,
                                  cdsFichaDTENTREGA.AsDateTime,
                                  cdsFichaPED_CODIGO.AsString,
                                  cdsFichaPRD_CODIGO.AsString,
                                  cdsFichaDEP_GERASUBORDENS.AsString = 'S',
                                  0,
                                  0
                                  );

end;

procedure TfrmDemandaProducao.cxgrd1DBTableView1DEP_QTDE_ESTOQUEStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
  var AStyle: TcxStyle);
begin
  inherited;
  if ( VarIsNull(ARecord.Values[ cxgrd1DBTableView1IOP_NORDEM.Index])
  or (ARecord.Values[ cxgrd1DBTableView1IOP_NORDEM.Index] = ''))
  then
    AStyle := cxStyle2
  else
    AStyle := cxStyle1;
end;

procedure TfrmDemandaProducao.cxgrd1DBTableView1DTENTREGAStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  inherited;
  if (VarIsNull(ARecord.Values[ cxgrd1DBTableView1IOP_NORDEM.Index])
  or (ARecord.Values[ cxgrd1DBTableView1IOP_NORDEM.Index] = ''))
  then
    AStyle := cxStyle2
  else
    AStyle := cxStyle1;
end;

procedure TfrmDemandaProducao.cxgrd1DBTableView1Editing(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; var AAllow: Boolean);
//var novoValor : variant;  Sender.Controller.EditingController.Edit.EditingValue;
//   velhovalor: variant;  AItem.EditValue;
begin
  inherited;

  if (cdsBuscaIOP_NORDEM.AsString <> '') then //or (not DBInicio.Empresa.Bpmt_gerarsubordens)  then
  begin

    AAllow := false;
    exit;
  end;
end;

procedure TfrmDemandaProducao.cxgrd1DBTableView1NavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;
  if AButtonIndex = 16 then
     ShowMessage('salvar alterações');
  if AButtonIndex = 17 then
    ShowMessage('cancelar alterações');
  adone := true;
end;

procedure TfrmDemandaProducao.cxgrd1DBTableView1QTDEPRDStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  inherited;
  if //DBInicio.Empresa.Bpmt_gerarsubordens and
  ( VarIsNull(ARecord.Values[ cxgrd1DBTableView1IOP_NORDEM.Index])
  or (ARecord.Values[ cxgrd1DBTableView1IOP_NORDEM.Index] = ''))
  then
    AStyle := cxStyle2
  else
    AStyle := cxStyle1;
end;

procedure TfrmDemandaProducao.cxlevelprodutoIntermediarioGetGridView(Sender: TcxGridLevel; AMasterRecord: TcxCustomGridRecord; var AGridView: TcxCustomGridView);

begin
  inherited;
//  if not DBInicio.Empresa.Bpmt_gerarsubordens then // VAI SEMPRE APARECER
//    exit;

  AMasterRecord.Focused := True;
  cdsFicha.close;

  cdsFicha.SQL.Text :=
    'SELECT ft.FTI_REGISTRO , DEP_CODIGO,  ft.PRD_REFER, PRD_REFER_ITENS, pr.PRD_DESCRI ,PR.PRD_UND, FTI_UC,  '+
    // PEGAR A DATA DE ENTREGA DO ITEM PRINCIPAL / SENÃO SE DATA DE ENTREGA ESTIVER PREENCHIDA, SERÁ RETORNADA ESTA
     iif( VarIsNull(AMasterRecord.Values[cxgrd1DBBandedTableView1DTENTREGA.Index] ),
         ' DEP_DATA_ENTREGA DTENTREGA,',
         ' COALESCE(DEP_DATA_ENTREGA, cast( '+DateToSQL(VarToDateTime(AMasterRecord.Values[cxgrd1DBBandedTableView1DTENTREGA.Index]))  +' as date)) as  DTENTREGA, ')+

    ' COALESCE(DEP_SITUACAO, ''R'') DEP_SITUACAO, iop.IOP_QUANTIDADE QTDEPRD, iop.IOP_NORDEM,DEP_QTDE_ESTOQUE,         '+
    ' (SELECT sum(KAS_SALDO)- COALESCE(sum(KAS_RESERVA),0)  FROM kardex_almox_saldo kas WHERE kas.PRD_CODIGO = pr.PRD_CODIGO ) EstoqueDisponivel,  ' +
    ' pr.prd_codigo, '+QuotedStr(AMasterRecord.Values[cxgrd1DBBandedTableView1PED_CODIGO.Index] ) + ' as ped_codigo, ' +
    ' pr.PTI_CODIGO, tp.PTI_DESCRI, tp.PTI_SIGLA, pr.PRD_UND,(FTI_UC*'+ FloatToSQL( AMasterRecord.Values[cxgrd1DBBandedTableView1PRF_QTDE.Index]) +   ') AS UC_TOTAL,  '+
    ' DEP_GERASUBORDENS ' +
    ' FROM FTC_IT01 ft                                                                                                 '+
    ' join prd0000 Pr on (ft.prd_refer_itens = pr.prd_refer '+ ConcatSe(' and ft.', DBInicio.ExclusivoSql('PRODUTOS'))+ ')'+
    ' JOIN PRD_TIPO tp ON (tp.PTI_CODIGO = pr.PTI_CODIGO ) '+
    ' LEFT JOIN DEMANDA_PRODUCAO dpr ON (dpr.FTI_REGISTRO = ft.FTI_REGISTRO AND ped_codigo ='+QuotedStr(AMasterRecord.Values[cxgrd1DBBandedTableView1PED_CODIGO.Index])+' ) '+  // pega a demanda de acordo pedido e registro
    ' LEFT JOIN ORDEMPRODUCAO OP  ON (   OP.EMP_CODIGO = '+ QuotedStr (DBInicio.Empresa.EMP_CODIGO) +
                                      ' AND op.PED_CODIGO = '+QuotedStr(AMasterRecord.Values[cxgrd1DBBandedTableView1PED_CODIGO.Index] )+')'+
    ' LEFT JOIN ITEM_ORDEMPRODUCAO iop ON (Iop.OPR_CODIGO = OP.OPR_CODIGO AND pr.prd_codigo = iop.PRD_CODIGO)          '+
    ' WHERE ft.PRD_REFER = '+ QuotedStr(AMasterRecord.Values[cxgrd1DBBandedTableView1PRD_REFER.Index] ) + ConcatSe(' and ft.', DBInicio.ExclusivoSql('PRODUTOS')) +
    ' and  PTI_SIGLA in (''PA'',''PI'',''KT'')'  ; //DBInicio.Empresa.Bpmt_gerarsubordens
 cdsFicha.Open;
end;

procedure TfrmDemandaProducao.edPesquisaChange(Sender: TObject);
begin
  inherited;
  IF Length( edPesquisa.Text)> 2 then
    btnPesquisa.Click;
end;

procedure TfrmDemandaProducao.edPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (Key = #13) and  (edPesquisa.Text <> '')  and (Length(edPesquisa.Text)>3) then
  begin
    btnPesquisa.Click;
  end;
end;


procedure TfrmDemandaProducao.EstruturaFichatcnica1Click(Sender: TObject);
begin
  inherited;
  if not Assigned(frmEstruturaFicha) then
    frmEstruturaFicha := tfrmEstruturaFicha.create(Application);
  frmEstruturaFicha.prd_Refer := cdsBuscaPRD_REFER.AsString;
  frmEstruturaFicha.Show;
end;

procedure TfrmDemandaProducao.filtro;
var i : int64;
  tipodata : string;
begin
  with cdsBusca,sql do
  begin
     cdsBusca.SQL.Text :=
        ' SELECT  ' +
        ' CASE WHEN pr.PRD_UND  = ''KG'' THEN it.PRF_QTDE else it.PRF_PESOKG END AS PESO, ac.ACO_NOME , ' +
        ' IT.PRF_PRECO * IT.PRF_QTDE AS Total, IT.PRF_REGISTRO, dpr.DEP_CODIGO, IT.PRD_REFER, 0 Marcado, ' +
        ' it.PRF_PRDDESCRI as PRD_DESCRI, pr.prd_und, PE.PED_CODIGO, PE.PED_DTENTRADA, ' +
         ' IT.PRF_QTDE, DPR.ENF_REGISTRO, '+
        ' COALESCE(DEP_DATA_ENTREGA,CAST(PE.PED_DTSAIDA AS DATE)) DTENTREGA, '+
        ' CASE WHEN PED_SITUACAO=''C'' THEN ''L'' ELSE COALESCE(DEP_SITUACAO, ''N'') END DEP_SITUACAO, '+
        ' CL.CLI_CODIGO, CL.CLI_RAZAO, cl.CLI_UF, CLI_CIDADE, ve.REP_NOME,  DEP_QTDE_ESTOQUE, '+
        ' (SELECT sum(KAS_SALDO)- COALESCE(sum(KAS_RESERVA),0)  FROM kardex_almox_saldo kas WHERE kas.PRD_CODIGO = it.PRD_CODIGO ) EstoqueDisponivel, ' +
        ' pr.prd_codigo,  PRF_PESOKG, PRF_PRECO, '+
        ' coalesce(DEP_QTDE_PROGRA,1) DEP_QTDE_PROGRA, '+
        ' COALESCE(OPA_QTDE_PRODUZIR, ' +
        '     CASE WHEN it.PRF_QTDE_CONVERTIDA IS NULL THEN it.PRF_QTDE ELSE it.PRF_QTDE_CONVERTIDA END ' +
        ' ) QTDEPRD, ' +
        ' (SELECT MIN(iop.IOP_NORDEM) FROM ITEM_ORDEMPRODUCAO iop  WHERE Iop.OPR_CODIGO = OP.OPR_CODIGO AND IT.PRD_CODIGO = iop.PRD_CODIGO AND iop.PRF_REGISTRO = it.PRF_REGISTRO) iop_nordem , ' +
        ' (SELECT MIN(iop.iop_data_inicio) FROM ITEM_ORDEMPRODUCAO iop  WHERE Iop.OPR_CODIGO = OP.OPR_CODIGO AND IT.PRD_CODIGO = iop.PRD_CODIGO) iop_data_inicio,  '+
        ' (SELECT MIN(iop.IOP_DATA_CONCLUSAO) FROM ITEM_ORDEMPRODUCAO iop  WHERE Iop.OPR_CODIGO = OP.OPR_CODIGO AND IT.PRD_CODIGO = iop.PRD_CODIGO) IOP_DATA_CONCLUSAO, '+
        ' (SELECT MIN(iop.IOP_QTDE_CONCLUIDA) FROM ITEM_ORDEMPRODUCAO iop'+
        '  WHERE Iop.OPR_CODIGO = OP.OPR_CODIGO AND IT.PRD_CODIGO = iop.PRD_CODIGO and (opa.iop_codigo = iop.iop_codigo or  opa.OPA_SEQUENCIAL is null )  ) IOP_QTDE_CONCLUIDA, '+
        '  PCX.PCX_CODIGO, PCX_DESCRI, COALESCE(OPA_DATA_AJUSTADA, DEP_DATA_AJUSTADA,PE.PED_DTSAIDA) DEP_DATA_AJUSTADA, ' +
        '  opa.OPA_SEQUENCIAL, OPV.opv_pedidointerno, e.ENF_ENTRADA '+
        '   FROM PED0000 pe '+
        '   JOIN OPV0000 OPV ON (OPV.OPV_CODIGO = PE.OPV_CODIGO AND OPV.OPV_PRODUCAO = ''S'')'+
        '   JOIN CLI0000 CL ON (CL.CLI_CODIGO = PE.CLI_CODIGO )'+
        '   JOIN PED_IT01 IT ON (IT.PED_CODIGO = PE.PED_CODIGO AND IT.EMP_CODIGO = PE.EMP_CODIGO)'+
        '   LEFT JOIN ACABAMENTO_CORES ac ON (it.ACO_CODIGO = ac.ACO_CODIGO ) ' +
        '   JOIN PRD0000 PR ON (IT.PRD_CODIGO = PR.PRD_CODIGO)'+
        iif(chkNaoRecebido.Checked,
        '   LEFT JOIN DEMANDA_PRODUCAO DPR ON  (DPR.PED_CODIGO = it.PED_CODIGO AND it.EMP_CODIGO = DPR.EMP_CODIGO AND it.PRF_REGISTRO = dpr.PRF_REGISTRO) ',
        '   JOIN DEMANDA_PRODUCAO DPR ON  (DPR.PED_CODIGO = it.PED_CODIGO AND it.EMP_CODIGO = DPR.EMP_CODIGO AND it.PRF_REGISTRO = dpr.PRF_REGISTRO) ')+
        '   LEFT JOIN ENF_IT01 ei ON (ei.ENF_REGISTRO = dpr.ENF_REGISTRO) ' +
        '   LEFT JOIN ENF0001 e ON (e.ENF_NOTANUMBER = ei.ENF_IT_NOTANUMBER AND e.FOR_CODIGO = ei.FOR_CODIGO) ' +
        '   LEFT JOIN REP0000 ve ON (ve.REP_CODIGO = pe.REP_CODIGO) '+
        '   LEFT JOIN ORDEMPRODUCAO OP  ON ( OP.PED_CODIGO = PE.PED_CODIGO AND OP.EMP_CODIGO = PE.EMP_CODIGO ) '+
        '   LEFT JOIN ORDEM_PROGRAMADA opa ON (opa.PED_CODIGO = op.PED_CODIGO AND opa.PRD_CODIGO =             '+
        '               (SELECT FIRST 1 PRD_CODIGO FROM ITEM_ORDEMPRODUCAO iop                                 '+
        '                WHERE Iop.OPR_CODIGO = OP.OPR_CODIGO  AND IT.PRD_CODIGO = iop.PRD_CODIGO     ))       '+
        '   LEFT JOIN PCX0000 PCX ON (PE.PCX_CODIGO = PCX.PCX_CODIGO ) '+
        ' WHERE   '+
        '   NOT EXISTS '+
        '   (SELECT * FROM ORDEMPRODUCAO OP '+
        '     WHERE OP.PED_CODIGO = PE.PED_CODIGO AND OP.EMP_CODIGO = PE.EMP_CODIGO AND OPR_STATUS = ''F'') ' ;


   Filtrados := true;
   if (edPesquisa.Text <> '') and (Length( edPesquisa.Text) >2) then
   begin
    if TryStrToInt64(edPesquisa.Text,i) then
      SqlAdd('( pe.ped_codigo CONTAINING '+ QuotedStr(edPesquisa.Text) +
              ' or IT.PRD_REFER CONTAINING  '+ QuotedStr(edPesquisa.Text) +' )' )
    else
    begin
      SqlAdd('( PR.PRD_DESCRI CONTAINING  '+  QuotedStr(edPesquisa.Text)  +
             ' or IT.PRF_PRDDESCRI CONTAINING  '+ QuotedStr(edPesquisa.Text) +' )' );
    end;


   end;
   if radPedido.Checked then
      tipodata := 'Pe.PED_DTENTRADA'
   else if RadEntrega.Checked then
      tipodata := 'COALESCE(DEP_DATA_ENTREGA,CAST(PE.PED_DTSAIDA AS DATE)) '
   else if radAjustada.Checked then
      tipodata := 'COALESCE(OPA_DATA_AJUSTADA, DEP_DATA_AJUSTADA)' ;
    if (DataIni.date > 0) and (DataFim.date = 0)then
    begin

      SqlAdd(tipodata+' >='+DateToSQL(DataIni.Date) )
    end
    else if (DataIni.date = 0) and (DataFim.date > 0)  then
    begin
       SqlAdd(tipodata + '  <='+DateToSQL(DataFim.date) )
    end
    else if (DataIni.date > 0) and (DataFim.date > 0)  then
    begin

      SqlAdd(tipodata + '  between '+DateToSQL(DataIni.date) +' and '+  DateToSQL(DataFim.date ));
    end;

   if DBINICIO.Exclusivo('PEDIDOS') then
     SqlAdd(' pe.emp_codigo = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO));
   if chkFinalizados.Checked then
      SqlAdd('DEP_SITUACAO <> '+QuotedStr('C'));
   if chkCancelados.Checked then
      SqlAdd('PED_SITUACAO <> '+QuotedStr('C'));
  end;

  cdsBusca.IndexFieldNames := '';
   cdsBusca.SQL.Add(' ORDER BY PED_DTENTRADA, CASE DEP_SITUACAO  '+
                   '   when ''R'' THEN 1 WHEN ''I'' THEN 2 WHEN ''E'' THEN 3 WHEN ''C'' THEN 4 ELSE 5 '+
                   '   end  ');
  if dbInicio.isDesenvolvimento then
    CopyToClipboard(cdsBusca.SQL.Text);
end;

procedure TfrmDemandaProducao.FormActivate(Sender: TObject);
begin
  inherited;
  if Assigned(FrmPedido) then
    btnPesquisa.Click

end;

procedure TfrmDemandaProducao.FormClose(Sender: TObject; var Action: TCloseAction);
var nome: string;
begin
  TestaPasta ( dbInicio.SistemaLocal+'settings' );
  nome:= 'frmDemandaProducao.cxgrd1DBBandedTableView1.grid';
  cxgrd1DBBandedTableView1.StoreToIniFile(dbInicio.SistemaLocal+'settings\'+nome, True, [gsoUseFilter] );
  inherited;
  action := caFree;
end;

procedure TfrmDemandaProducao.FormCreate(Sender: TObject);
var nome: string;
begin
  NaoAtualizaHistorico := True;
  inherited;
//  self.Constraints.MinHeight:= 612;
//  self.Constraints.MinWidth:=1175;
//  self.Constraints.MaxHeight:= 0;
//  self.width:=1175;
//  self.height:=612;
  self.WindowState := wsMaximized;
  Self.ProcedureFiltro:=filtro;
  DataIni.Date := date-30; //StartOfAMonth( YearOf(Date), MonthOf(date) );
  radPedido.Checked := True;
  Menu := 'ProduçãoPCP Demanda';

  self.CampoID := 'PED_CODIGO';
  self.CampoIDRetorno :=  'PED_CODIGO';
  if not Assigned(tcr) then
    tcr := TProducaoDao.Create(application);
  cdsBuscaPRF_QTDE.DisplayFormat:='###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
  cdsBuscaESTOQUEDISPONIVEL.DisplayFormat:='###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
  cdsBuscaDEP_QTDE_ESTOQUE.DisplayFormat:='###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
  cdsBuscaQTDEPRD.DisplayFormat:='###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
  cdsFichaFTI_UC.DisplayFormat:='###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
  cdsFichaQTDEPRD.DisplayFormat:='###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
  cdsFichaDEP_QTDE_ESTOQUE.DisplayFormat:='###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
  cdsFichaESTOQUEDISPONIVEL.DisplayFormat:='###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
  TestaPasta ( dbInicio.SistemaLocal+'settings' );
  nome:= 'frmDemandaProducao.cxgrd1DBBandedTableView1.grid';
  cxgrd1DBBandedTableView1.RestoreFromIniFile(dbInicio.SistemaLocal+'settings\'+nome, True, True, [gsoUseFilter] );
  self.WindowState := wsMaximized;


end;

procedure TfrmDemandaProducao.FormDestroy(Sender: TObject);
begin
  inherited;
  if Assigned(tcr) then
    FreeAndNil(tcr);
   frmDemandaProducao := nil;

end;


procedure TfrmDemandaProducao.FormShow(Sender: TObject);
Var sql : string;
begin
  inherited;

  NaoAtualizaHistorico := False;
  btnPesquisa.Click;
  if cdsbusca.IsEmpty then
    exit;
  sql := 'SELECT dh.*, u.USU_NOME FROM DEMANDA_HISTORICO dh '+
         ' JOIN USUARIO u ON (u.USU_CODIGO = dh.USU_CODIGO) '+
          ' WHERE PED_CODIGO = '+QuotedStr(cdsbusca.FieldByName('ped_codigo').AsString) +
          '   and prd_codigo = '+QuotedStr(cdsbusca.FieldByName('prd_codigo').AsString)+
          ' order by  hde_datamvto desc ';
  cdsHistorico.Open(sql);

  cxgrd1DBTableView1DEP_GERASUBORDENS.Visible := NOT DBInicio.Empresa.Bpmt_gerarsubordens;
  //cxlevelprodutoIntermediario.Visible :=  DBInicio.Empresa.Bpmt_gerarsubordens;
end;

procedure TfrmDemandaProducao.frxEtiquetaBeginDoc(Sender: TObject);
begin
  inherited;
  TfrxPictureView(frxEtiqueta.FindObject('logoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);
end;

procedure TfrmDemandaProducao.frxLRelatoriosBeforePrint(Sender: TfrxReportComponent);
begin
  inherited;
  if Sender IS TfrxMasterData then
  begin
     cdsOrdem.Close;

     if frxDBRelatorios.DataSet.FieldByName('DEP_QTDE_PROGRA').AsInteger>1 then
      begin

         cdsOrdem.Open('SELECT OPA_SEQUENCIAL, OPA_DATA_ENTREGA, OPA_QTDE_PRODUZIR FROM ORDEM_PROGRAMADA    '+
                      ' WHERE PED_CODIGO = '+ QuotedStr(frxDBRelatorios.DataSet.FieldByName('PED_CODIGO').AsString) +
                      ' AND EMP_CODIGO = ' + QuotedStr(DBInicio.Empresa.EMP_CODIGO) +
                      ' AND PRD_CODIGO = ' + QuotedStr(frxDBRelatorios.DataSet.FieldByName('PRD_CODIGO').AsString) +
                      ' ORDER BY OPA_SEQUENCIAL');
          TfrxDetailData( frxLRelatorios.FindObject('ordem')).Visible := True;
          TfrxHeader( frxLRelatorios.FindObject('HeaderOrdem')).Visible := True;

      end
      else
      begin
        TfrxDetailData( frxLRelatorios.FindObject('ordem')).Visible := False;
        TfrxHeader( frxLRelatorios.FindObject('HeaderOrdem')).Visible := False;
      end;
//      else
//        cdsOrdem.Open('SELECT OPA_DATA_ENTREGA, OPA_QTDE_PRODUZIR FROM ORDEM_PROGRAMADA  WHERE 1=0 ');


  end;

end;

procedure TfrmDemandaProducao.frxLRelatoriosGetValue(const VarName: string; var Value: Variant);
begin
  inherited;
  if VarName = 'RAZAO' then
    Value := DBInicio.Empresa.RAZAO;
end;

procedure TfrmDemandaProducao.GerarEtiqueta1Click(Sender: TObject);
var
  notaAtual, corAtual, notas : string;
  soma: double;
begin
  inherited;
  cdsBusca.DisableControls;
  cdsBusca.Filtered := False;
  cdsBusca.Filter := ' marcado = 1';
  cdsBusca.Filtered := True;
  cdsBusca.First;

  mtEtiqueta.CreateDataset;
  mtEtiqueta.Open;
  mtTemp.CreateDataset;
  mtTemp.Open;
  while not cdsBusca.Eof do
  begin
    mtTemp.Insert;
    mtTempCLI_RAZAO.AsString := cdsBuscaCLI_RAZAO.AsString;
    mtTempACO_NOME.AsString := cdsBuscaACO_NOME.AsString;
    mtTempDTENTREGA.AsDateTime := cdsBuscaDTENTREGA.AsDateTime;
    mtTempPESO.AsFloat := cdsBuscaPESO.AsFloat;
    mtTempNOTA_FISCAL.AsString := cdsBuscaNOTA_FISCAL.AsString;
    mtTemp.Post;
    cdsBusca.Next;
  end;
  mtTemp.Addindex('temp', 'ACO_NOME;NOTA_FISCAL', '', []);
  mtTemp.IndexName := 'temp';
  mtTemp.First;
  while not mtTemp.Eof do
  begin
    mtEtiqueta.Insert;
    mtEtiquetaCLI_RAZAO.AsString := mtTempCLI_RAZAO.AsString;
    mtEtiquetaACO_NOME.AsString := mtTempACO_NOME.AsString;
    mtEtiquetaDTENTREGA.AsDateTime := mtTempDTENTREGA.AsDateTime;
    notas := '';
    soma := 0;
    while not mtTemp.Eof do
    begin
      corAtual := mtTempACO_NOME.AsString;
      if pos(mtTempNOTA_FISCAL.AsString, notas) = 0 then
        notas := notas + mtTempNOTA_FISCAL.AsString + ' - ' ;
      soma := soma +  mtTempPESO.AsFloat;
      mtTemp.Next;
      if corAtual <> mtTempACO_NOME.AsString then
        Break;
    end;
    mtEtiquetaNOTA_FISCAL.AsString := notas;
    mtEtiquetaPESO.AsFloat := soma;
    mtEtiqueta.Post;
  end;

  frxEtiqueta.ShowReport;

  mtTemp.DeleteIndex('temp');
  mtEtiqueta.Close;
  mtTemp.Close;
  cdsBusca.Filtered := False;
  cdsBusca.EnableControls;
end;

procedure TfrmDemandaProducao.Listadedemanda1Click(Sender: TObject);
var  complFiltro : string;
    sfiltro : string;
begin
  inherited;
  try
    NaoAtualizaHistorico := True;
    cdsBusca.DisableControls;
    cdsOrdem.Close;
    if (DataIni.date > 0 )  and (DataFim.Date = 0) then
      sfiltro:=  'Desde ' + DataIni.Text
    else if (DataIni.Date = 0) and (DataFim.Date > 0) then
      sfiltro := 'Periodo até '+ DataFim.text
    else if  (DataIni.date > 0 )  and (DataFim.Date > 0) then
     sfiltro := 'Período de '+ DataIni.Text +' a ' + DataFim.Text;

    if cxgrd1DBBandedTableView1.DataController.Filter.FilterText<>'' then
    begin
       complFiltro := cxgrd1DBBandedTableView1.DataController.Filter.FilterText;
      if sfiltro <> '' then
        sFiltro :=  sfiltro +' e filtro : ' +cxgrd1DBBandedTableView1.DataController.Filter.FilterCaption
      else
        sfiltro := 'Filtro :'+ cxgrd1DBBandedTableView1.DataController.Filter.FilterCaption;
     //  frxDBRelatorios.DataSet.Filter:= complFiltro;
     //  frxDBRelatorios.DataSet.Filtered := True;

       cdsbusca.Filter := complFiltro ;
       cdsBusca.Filtered := True;
    end;
    TfrxMemoView(frxReport1.FindObject('mfiltros')).Text := sfiltro;
    cdsBusca.IndexFieldNames := 'PRD_REFER';
    frxReport1.ShowReport;
    cdsBusca.Filtered := False;
  finally
    cdsBusca.EnableControls;

    NaoAtualizaHistorico := not frmDemandaProducao.Visible;
  end;
end;

procedure TfrmDemandaProducao.Programaoproduofracionada1Click(Sender: TObject);
begin
  inherited;
  ConfOrdemProgramacao;

end;

procedure TfrmDemandaProducao.TipoData(Sender: TObject);
begin
  inherited;

  btnPesquisa.Click;
end;

procedure TfrmDemandaProducao.umMyMessage(var Message: TMessage);
begin
// try
//
//  //TcxGridDBBandedTableView(Message.LParam).ViewData.Collapse(True);
////  TcxCustomGridRecord(Message.WParam).Expand(True);
//
// except on E: Exception do
// end;

end;


procedure TfrmDemandaProducao.DemandadeMolas1Click(Sender: TObject);
var
  lista: TStringList;
  i : int64;
  tipodata : string;

  procedure SqlAdd(const stt: string);
  begin
    if stt <> '' then
    begin
      if Filtrados then
        qExportaExcel.SQL.Add('AND ' + stt)
      else
        qExportaExcel.SQL.Add('WHERE ' + stt);
      Filtrados := True;
    end;
  end;

begin
  inherited;
  cdsExportaExcel.Close;
  qExportaExcel.SQL.Text :=
          ' SELECT ped.EMP_CODIGO, ped.PED_DTENTRADA,  ' +
          '        cli.CLI_RAZAO,  ' +
          '        r.REP_NOME, ' +
          '        CASE  ' +
          '          WHEN ped.CLI_CONSU_PROPRIO = ''S'' THEN ''Uso e consumo ou Industrialização'' ' +
          '          ELSE ''Revenda''  ' +
          '        END AS CLI_CONSU_PROPRIO, ' +
          '        co.CORI_DESCRICAO, ' +
          '        emp.EMP_FANTASIA AS EMP_RAZAO, ' +
          '        ped.PED_CODIGO, ' +
          '        pi2.PRD_REFER, ' +
          '        pi2.PRF_PRDDESCRI, ' +
          '        a.ART_NOME, ' +
          '        grp.PGR_DESCRI, ' +
          '        pi2.PRF_QTDE, ' +
          '        mm.MMO_DIAMETRO_ARAME || '' '' ||  cm.CMO_NOME AS CMO_NOME,  ' +   // material
          '        as2.ASU_NOME, ' +   // acabamento
          '        pi2.PRF_QTDE * mm.MMO_PESO AS IOP_PESO,        ' +
          '        CASE  ' +
          '        	 WHEN CAST(pi2.PRF_PRAZO_ENTREGA AS DATE) IS NULL THEN CAST(ped.PED_DTSAIDA AS DATE)  ' +
          '        	 ELSE CAST(pi2.PRF_PRAZO_ENTREGA AS DATE )  ' +
          '        END AS PRF_PRAZO_ENTREGA, ' +
          '        CASE ' +
          '          WHEN iop.IOP_STATUS = ''I'' THEN ''Iniciada'' ' +
          '          WHEN iop.IOP_STATUS = ''C'' THEN ''Cancelada'' ' +
          '          WHEN iop.IOP_STATUS = ''L'' THEN ''A Iniciar'' ' +
          '          WHEN iop.IOP_STATUS = ''F'' THEN ''Finalizado'' ' +
          '          ELSE ''A Iniciar'' ' +
          '        END AS IOP_STATUS, ' +
          '        pi2.PRF_QTDE * pi2.PRF_PRECO AS TOTAL_PROD ' +
          '   FROM PED0000 ped  ' +
          '   JOIN CLI0000 cli ON (cli.CLI_CODIGO = ped.CLI_CODIGO) ' +
          '   JOIN EMP0000 emp ON (emp.EMP_CODIGO = ped.EMP_CODIGO) ' +
          '   JOIN PED_IT01 pi2 ON (pi2.PED_CODIGO = ped.PED_CODIGO AND pi2.EMP_CODIGO = ped.EMP_CODIGO) ' +
          '   JOIN PRD0000 prd ON (prd.PRD_REFER = pi2.PRD_REFER ) ' +
          iif(chkNaoRecebido.Checked,
            '   LEFT JOIN DEMANDA_PRODUCAO DPR ON  (DPR.PED_CODIGO = pi2.PED_CODIGO AND pi2.EMP_CODIGO = DPR.EMP_CODIGO AND pi2.PRF_REGISTRO = dpr.PRF_REGISTRO) ',
            '   JOIN DEMANDA_PRODUCAO DPR ON  (DPR.PED_CODIGO = pi2.PED_CODIGO AND pi2.EMP_CODIGO = DPR.EMP_CODIGO AND pi2.PRF_REGISTRO = dpr.PRF_REGISTRO) '
          ) +
          '   JOIN PRD_GRUPO grp ON (grp.PGR_CODIGO = prd.PGR_CODIGO) ' +
          '   LEFT JOIN MOLA_MATERIA mm ON (mm.PRD_CODIGO = prd.PRD_CODIGO ) ' +
          '   LEFT JOIN ARAME ara ON (ara.ARA_CODIGO = mm.ARA_CODIGO) ' +
          '   LEFT JOIN CLASSIFICACAO_MOLA cm ON (cm.CMO_CODIGO = mm.CMO_CODIGO) ' +
          '   LEFT JOIN ACABAMENTO_SUPERFICIAL as2 ON (as2.ASU_CODIGO = mm.ASU_CODIGO) ' +
          '   LEFT JOIN ORDEMPRODUCAO op ON	(op.PED_CODIGO = pi2.PED_CODIGO) ' +
          '   LEFT JOIN ITEM_ORDEMPRODUCAO iop ON	(iop.OPR_CODIGO = op.OPR_CODIGO AND pi2.PRD_REFER = prd.PRD_REFER AND iop.PRf_REGISTRO = pi2.PRf_REGISTRO)   ' +
          '   LEFT JOIN CLIENTE_ORIGEM co ON (co.CORI_CODIGO = ped.CORI_CODIGO)' +
          '   LEFT JOIN REP0000 r ON (r.REP_CODIGO = ped.REP_CODIGO)' +
          '   LEFT JOIN ARTEFATO a ON (a.ART_CODIGO = mm.ART_CODIGO)';


   Filtrados := False;
   if (edPesquisa.Text <> '') and (Length( edPesquisa.Text) >2) then
   begin
    if TryStrToInt64(edPesquisa.Text,i) then
      SqlAdd('( ped.ped_codigo CONTAINING '+ QuotedStr(edPesquisa.Text) +
              ' or pi2.PRD_REFER CONTAINING  '+ QuotedStr(edPesquisa.Text) +' )' )
    else
    begin
      SqlAdd('( prd.PRD_DESCRI CONTAINING  '+  QuotedStr(edPesquisa.Text)  +
             ' or pi2.PRF_PRDDESCRI CONTAINING  '+ QuotedStr(edPesquisa.Text) +' )' );
    end;


   end;
   if radPedido.Checked then
      tipodata := 'ped.PED_DTENTRADA'
   else if RadEntrega.Checked then
      tipodata := 'COALESCE(DEP_DATA_ENTREGA,CAST(ped.PED_DTSAIDA AS DATE)) '
   else if radAjustada.Checked then
      tipodata := 'COALESCE(OPA_DATA_AJUSTADA, DEP_DATA_AJUSTADA)' ;
    if (DataIni.date > 0) and (DataFim.date = 0)then
    begin

      SqlAdd(tipodata+' >='+DateToSQL(DataIni.Date) )
    end
    else if (DataIni.date = 0) and (DataFim.date > 0)  then
    begin
       SqlAdd(tipodata + '  <='+DateToSQL(DataFim.date) )
    end
    else if (DataIni.date > 0) and (DataFim.date > 0)  then
    begin

      SqlAdd(tipodata + '  between '+DateToSQL(DataIni.date) +' and '+  DateToSQL(DataFim.date ));
    end;

//   if DBINICIO.Exclusivo('PEDIDOS') then
//     SqlAdd(' ped.emp_codigo = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO));
   if chkFinalizados.Checked then
      SqlAdd('DEP_SITUACAO <> '+QuotedStr('C'));
   if chkCancelados.Checked then
      SqlAdd('PED_SITUACAO <> '+QuotedStr('C'));


   if DBInicio.IsDesenvolvimento then
    copyToClipBoard(qExportaExcel.SQL.Text);


  cdsExportaExcel.Open;

  lista := TStringList.Create;
  lista.Add('PED_DTENTRADA');
  lista.Add('CLI_RAZAO');
  lista.Add('REP_NOME');
  lista.Add('CORI_DESCRICAO');
  lista.Add('EMP_RAZAO');
  lista.Add('PED_CODIGO');
  lista.Add('PRD_REFER');
  lista.Add('PRF_PRDDESCRI');
  lista.Add('ART_NOME');
  lista.Add('PGR_DESCRI');
  lista.Add('PRF_QTDE');
  lista.Add('CMO_NOME');
  lista.Add('ASU_NOME');
  lista.Add('IOP_PESO');
  lista.Add('PRF_PRAZO_ENTREGA');
  lista.Add('IOP_STATUS');
  lista.Add('TOTAL_PROD');
  CriaCSV(dsExportaExcel, lista, Self);

end;

end.
