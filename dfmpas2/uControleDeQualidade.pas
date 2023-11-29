unit uControleDeQualidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaFDAC, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, ACBrCalculadora, frxClass, Vcl.Menus,
  FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxLocalization, ACBrBase, ACBrEnterTab, JvExControls, JvArrowButton, Vcl.StdCtrls, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls, Data.FMTBcd, frxDBSet, Datasnap.DBClient, Datasnap.Provider,
  Data.SqlExpr, cxGridBandedTableView, cxGridDBBandedTableView, dxSkinsCore,
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
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfrmControleDeQualidade = class(TfrmBaseDBPesquisaFDAC)
    cdsBuscaPRDL_LOTE: TStringField;
    cdsBuscaPRD_REFER: TStringField;
    cdsBuscaPRD_DESCRI: TStringField;
    cdsBuscaIOP_DATA_CONCLUSAO: TSQLTimeStampField;
    cdsBuscaIOP_NORDEM: TStringField;
    edPesquisa: TLabeledEdit;
    cxgrd1DBTableView1PRDL_LOTE: TcxGridDBColumn;
    cxgrd1DBTableView1PRD_REFER: TcxGridDBColumn;
    cxgrd1DBTableView1PRD_DESCRI: TcxGridDBColumn;
    cxgrd1DBTableView1IOP_DATA_CONCLUSAO: TcxGridDBColumn;
    cxgrd1DBTableView1IOP_NORDEM: TcxGridDBColumn;
    frxDBQualidadeOLD: TfrxDBDataset;
    cdsQualidade: TClientDataSet;
    dspQualidade: TDataSetProvider;
    cxgrd1Level1: TcxGridLevel;
    cxgrd1DBTableView2: TcxGridDBTableView;
    dsqAux3: TDataSource;
    cxgrd1DBTableView1Column1: TcxGridDBColumn;
    cdsBuscaORDEM_LOTE: TStringField;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1HOP_DATAMVTO: TcxGridDBColumn;
    cxGrid1DBTableView1HOP_DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1USU_NOME: TcxGridDBColumn;
    cxGrid1DBTableView1USU_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1IOP_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1MP_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1HOP_CODIGO: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cdsHistorico: TFDQuery;
    dsHistorico: TDataSource;
    cdsBuscaIOP_CODIGO: TIntegerField;
    cxgrd1DBBandedTableView1: TcxGridDBBandedTableView;
    cxgrd1DBBandedTableView1PRDL_LOTE: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1PRD_REFER: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1PRD_DESCRI: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_DATA_CONCLUSAO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_NORDEM: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1ORDEM_LOTE: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_CODIGO: TcxGridDBBandedColumn;
    cxgrd1DBTableView2CQUA_RESULTADO: TcxGridDBColumn;
    cxgrd1DBTableView2PAR_DESCRICAO: TcxGridDBColumn;
    GroupBox1: TGroupBox;
    cdsBuscaCQUA_DATA_CONCLUSAO: TSQLTimeStampField;
    cbPendente: TCheckBox;
    cbEmProcesso: TCheckBox;
    cbFinalizado: TCheckBox;
    cdsBuscaSTATUS: TStringField;
    cdsHistoricoHCQ_DATA_HORA: TSQLTimeStampField;
    cdsHistoricoHCQ_DESCRICAO: TStringField;
    cdsHistoricoUSU_NOME: TStringField;
    cxgrd1DBTableView2CQUA_OBSERVACAO: TcxGridDBColumn;
    qAux4PRD_REFER: TStringField;
    qAux4PRD_DESCRI: TStringField;
    qAux4PAR_DESCRICAO: TStringField;
    qAux4CQP_VALOR_MIN: TStringField;
    qAux4CQP_VALOR_MAX: TStringField;
    qAux4CQUA_RESULTADO: TStringField;
    qAux4CQUA_PRDL_LOTE: TStringField;
    qAux4IOP_DATA_CONCLUSAO: TSQLTimeStampField;
    qAux4IOP_NORDEM: TStringField;
    qAux4CQUA_DATA_CONCLUSAO: TSQLTimeStampField;
    qAux4CQUA_OBSERVACAO: TStringField;
    cdsQualidadePRD_REFER: TStringField;
    cdsQualidadePRD_DESCRI: TStringField;
    cdsQualidadePAR_DESCRICAO: TStringField;
    cdsQualidadeCQP_VALOR_MIN: TStringField;
    cdsQualidadeCQP_VALOR_MAX: TStringField;
    cdsQualidadeCQUA_RESULTADO: TStringField;
    cdsQualidadeCQUA_PRDL_LOTE: TStringField;
    cdsQualidadeIOP_DATA_CONCLUSAO: TSQLTimeStampField;
    cdsQualidadeIOP_NORDEM: TStringField;
    cdsQualidadeCQUA_DATA_CONCLUSAO: TSQLTimeStampField;
    cdsQualidadeCQUA_OBSERVACAO: TStringField;
    cdsBuscaCQUA_DATA_INICIALIZACAO: TSQLTimeStampField;
    frxOP5: TfrxReport;
    frxDBProdutoOP5: TfrxDBDataset;
    frxDBMateriaPrimaOP5: TfrxDBDataset;
    cdsProdutoOP5: TFDQuery;
    cdsProdutoOP5PRD_REFER: TStringField;
    cdsProdutoOP5PRD_DESCRI: TStringField;
    cdsProdutoOP5IOP_DTENTREGA: TDateField;
    cdsProdutoOP5IOP_QUANTIDADE: TFMTBCDField;
    cdsProdutoOP5PRD_UND: TStringField;
    cdsProdutoOP5PRDL_LOTE: TStringField;
    cdsProdutoOP5OPR_EMISSAO: TSQLTimeStampField;
    cdsProdutoOP5PRD_DIV_MULT_PROD: TStringField;
    cdsProdutoOP5FTC_ETAPAS: TBlobField;
    cdsProdutoOP5IOP_CODIGO: TIntegerField;
    cdsProdutoOP5IOP_NORDEM: TStringField;
    cdsMateriaPrimaOP5: TFDQuery;
    cdsMateriaPrimaOP5PRDL_LOTE: TStringField;
    cdsMateriaPrimaOP5PRD_REFER: TStringField;
    cdsMateriaPrimaOP5PRD_DESCRI: TStringField;
    cdsMateriaPrimaOP5PRD_CODIGO: TStringField;
    cdsMateriaPrimaOP5PED_CODIGO: TStringField;
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
    cdsMateriaPrimaOP5ITEMLOTE: TStringField;
    frxDBQualidade: TfrxDBDataset;
    frxDBQualidadeCabecalho: TfrxDBDataset;
    frxDBSoma: TfrxDBDataset;
    cdsBuscaPED_CODIGO: TStringField;
    cxgrd1DBBandedTableView1PED_CODIGO: TcxGridDBBandedColumn;
    qAux3ORDEM_LOTE: TStringField;
    qAux3CQUA_CODIGO: TIntegerField;
    qAux3CQUA_PRDL_LOTE: TStringField;
    qAux3CQUA_IOP_NORDEM: TStringField;
    qAux3CQUA_PAR_CODIGO: TIntegerField;
    qAux3CQUA_DATA_INICIALIZACAO: TSQLTimeStampField;
    qAux3CQUA_DATA_CONCLUSAO: TSQLTimeStampField;
    qAux3CQUA_OBSERVACAO: TStringField;
    qAux3CQUA_RESULTADO: TStringField;
    qAux3PRD_REFER: TStringField;
    qAux3PAR_CODIGO: TIntegerField;
    qAux3PAR_DESCRICAO: TStringField;
    qAux3PAR_OBSERVACAO: TStringField;
    qQualidade: TFDQuery;
    qSoma: TFDQuery;
    qSomaSOMA: TFMTBCDField;
    qQualidadePRD_REFER: TStringField;
    qQualidadePRD_DESCRI: TStringField;
    qQualidadePAR_DESCRICAO: TStringField;
    qQualidadeCQP_VALOR_MIN: TStringField;
    qQualidadeCQP_VALOR_MAX: TStringField;
    qQualidadeCQUA_RESULTADO: TStringField;
    qQualidadeCQUA_PRDL_LOTE: TStringField;
    qQualidadeIOP_DATA_CONCLUSAO: TSQLTimeStampField;
    qQualidadeIOP_NORDEM: TStringField;
    qQualidadeCQUA_DATA_CONCLUSAO: TSQLTimeStampField;
    qQualidadeCQUA_OBSERVACAO: TStringField;
    cdsProdutoOP5PRF_QTDE: TFMTBCDField;
    qQualidadeCQP_ESPERADO: TStringField;
    OrdemdeProduo1: TMenuItem;
    ImpressodoCertificadodeQualidade1: TMenuItem;
    cdsProdutoOP5PRD_FATOR_PROD: TFMTBCDField;
    cdsMateriaPrimaOP5PRD_FATOR_PROD: TFMTBCDField;
    frxCertificadoQualidade: TfrxReport;
    qQualidadeCLI_RAZAO: TStringField;
    qQualidadeNF_NOTANUMBER: TStringField;
    qQualidadePRDL_DATA_FABRICACAO: TDateField;
    qQualidadePRDL_DATA_VALIDADE: TStringField;
    qQualidadeIOP_QUANTIDADE: TFMTBCDField;
    qQualidadePRD_UNIDESCRI: TStringField;
    procedure edPesquisaChange(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNovoClick(Sender: TObject);
    procedure btnrelatoriosClick(Sender: TObject);
    procedure frxPadraoGetValue(const VarName: string; var Value: Variant);
    procedure FormShow(Sender: TObject);
    procedure cbMostrarConcluidosClick(Sender: TObject);
    procedure cxgrd1Level1GetGridView(Sender: TcxGridLevel; AMasterRecord: TcxCustomGridRecord; var AGridView: TcxCustomGridView);
    procedure cdsBuscaAfterScroll(DataSet: TDataSet);
    procedure cxgrd1DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure cxgrd1DBBandedTableView1DataControllerDetailExpanding(ADataController: TcxCustomDataController; ARecordIndex: Integer; var AAllow: Boolean);
    procedure frxPadraoBeginDoc(Sender: TObject);
    procedure rbPendenteClick(Sender: TObject);
    procedure rbEmProcessoClick(Sender: TObject);
    procedure rbFinalizadoClick(Sender: TObject);
    procedure cbPendenteClick(Sender: TObject);
    procedure cbEmProcessoClick(Sender: TObject);
    procedure cbFinalizadoClick(Sender: TObject);
    procedure frxOP5GetValue(const VarName: string; var Value: Variant);
    procedure frxOP5BeginDoc(Sender: TObject);
    procedure OrdemdeProduo1Click(Sender: TObject);
    procedure ImpressodoCertificadodeQualidade1Click(Sender: TObject);
    procedure frxCertificadoQualidadeBeginDoc(Sender: TObject);
  private
    { Private declarations }
    procedure AbreTabelas();
    var RowCounter: Integer;
  public
     procedure filtro;
    { Public declarations }
  end;

var
  frmControleDeQualidade: TfrmControleDeQualidade;
  Empresa: string;

implementation

{$R *.dfm}

uses uteis, UCadControleDeQualidade, InicioDB, uFuncoes;

procedure TfrmControleDeQualidade.AbreTabelas;
begin
      cdsProdutoOP5.Close;
      cdsProdutoOP5.SQL.Clear;
      cdsProdutoOP5.SQL.Text := 'SELECT it.PRF_QTDE, ftc_etapas, pr.PRD_REFER, pr.PRD_DESCRI, IOP_DTENTREGA, ' +
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
      if DBInicio.IsDesenvolvimento then
        CopyToClipBoard(cdsProdutoOP5.SQL.Text);
      cdsProdutoOP5.Open;

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
      if DBInicio.IsDesenvolvimento then
        CopyToClipBoard(cdsMateriaPrimaOP5.SQL.Text);
      cdsMateriaPrimaOP5.Open;


      qQualidade.Close;
      qQualidade.SQL.Clear;
      qQualidade.SQL.Text := 'SELECT DISTINCT ' +
      '       pu.PRD_UNIDESCRI ,iop.IOP_QUANTIDADE, cl.CLI_RAZAO, nf.NF_NOTANUMBER, pl.PRDL_DATA_FABRICACAO, ' +
      '       CASE ' +
      '         WHEN DATEDIFF (MONTH FROM pl.PRDL_DATA_FABRICACAO TO pl.PRDL_DATA_VALIDADE)  = 0 THEN  DATEDIFF (DAY FROM pl.PRDL_DATA_FABRICACAO TO pl.PRDL_DATA_VALIDADE) || '' dias'' ' +
      '         WHEN COALESCE(pl.PRDL_DATA_VALIDADE, '''') = '''' THEN '' 24 meses '' ' +
      '         ELSE DATEDIFF (MONTH FROM pl.PRDL_DATA_FABRICACAO TO pl.PRDL_DATA_VALIDADE) || '' meses'' ' +
      '       END AS PRDL_DATA_VALIDADE, ' +
      '       pr.PRD_REFER, pr.PRD_DESCRI, PQ.PAR_DESCRICAO, CQP.CQP_VALOR_MIN, CQP.CQP_VALOR_MAX, ' +
      '       CQ.CQUA_RESULTADO, CQ.CQUA_PRDL_LOTE, iop.IOP_DATA_CONCLUSAO, iop.iop_nordem, ' +
      '       CQ.CQUA_DATA_CONCLUSAO, CQ.CQUA_OBSERVACAO, CQP.CQP_ESPERADO ' +
      ' FROM CONTROLE_DE_QUALIDADE CQ ' +
      ' JOIN PARAMETROS_DA_QUALIDADE PQ ON (PQ.PAR_CODIGO = CQ.CQUA_PAR_CODIGO) ' +
      ' LEFT JOIN CONTROLE_DE_QUALIDADE_PRODUTO CQP ON (CQ.CQUA_PAR_CODIGO = CQP.PAR_CODIGO AND CQP.PRD_REFER = CQ.PRD_REFER) ' +
      ' JOIN ITEM_ORDEMPRODUCAO iop ON (Iop.IOP_NORDEM = CQ.CQUA_IOP_NORDEM ) ' +
      ' JOIN PRD0000 pr ON	(pr.PRD_CODIGO = iop.PRD_CODIGO) ' +
      ' JOIN ORDEMPRODUCAO op ON (op.OPR_CODIGO = iop.OPR_CODIGO) ' +
      ' JOIN PED0000 ped ON (ped.PED_CODIGO = op.PED_CODIGO AND ped.EMP_CODIGO = op.EMP_CODIGO) ' +
      ' JOIN CLI0000 cl ON (cl.CLI_CODIGO = ped.CLI_CODIGO) ' +
      ' LEFT JOIN NF0001 nf ON (nf.PED_CODIGO = ped.PED_CODIGO AND nf.EMP_CODIGO = ped.EMP_CODIGO) ' +
      ' LEFT JOIN PRD_LOTE pl ON (pl.PRDL_LOTE = cq.CQUA_PRDL_LOTE) ' +
      ' LEFT JOIN PRD_UNIDADE pu ON (pu.PRD_UNISIGLA = pr.PRD_UND) ' +
      ' WHERE IOP.IOP_NORDEM = ' + sqstr(cdsProdutoOP5IOP_NORDEM.asString) + ' AND CQ.CQUA_PRDL_LOTE = ' + sqstr(cdsProdutoOP5PRDL_LOTE.asString);
      if DBInicio.IsDesenvolvimento then
        CopyToClipBoard(qQualidade.SQL.Text);
      qQualidade.Open;

      qAux2.Close;
      qAux2.SQL.Clear;
      qAux2.SQL.Text := 'SELECT DISTINCT CQ.CQUA_PRDL_LOTE, iop.iop_nordem ' +
      ' FROM CONTROLE_DE_QUALIDADE CQ ' +
      ' JOIN PARAMETROS_DA_QUALIDADE PQ ON (PQ.PAR_CODIGO = CQ.CQUA_PAR_CODIGO) ' +
      ' LEFT JOIN CONTROLE_DE_QUALIDADE_PRODUTO CQP ON (CQ.CQUA_PAR_CODIGO = CQP.PAR_CODIGO AND CQP.PRD_REFER = CQ.PRD_REFER) ' +
      ' JOIN ITEM_ORDEMPRODUCAO iop ON (Iop.IOP_NORDEM = CQUA_IOP_NORDEM ) ' +
      ' JOIN PRD0000 pr ON (pr.PRD_CODIGO = iop.PRD_CODIGO) ' +
      ' WHERE IOP.IOP_NORDEM = ' + sqstr(cdsProdutoOP5IOP_NORDEM.asString) + ' AND CQ.CQUA_PRDL_LOTE = ' + sqstr(cdsProdutoOP5PRDL_LOTE.asString);
      if DBInicio.IsDesenvolvimento then
        CopyToClipBoard(qAux2.SQL.Text);
      qAux2.Open;


      qSoma.Close;
      qSoma.SQL.Clear;
      qSoma.SQL.Text := 'SELECT SUM(iop.IOP_QUANTIDADE) AS Soma ' +
        ' FROM ORDEMPRODUCAO OP ' +
        ' JOIN ITEM_ORDEMPRODUCAO iop ON (Iop.OPR_CODIGO = OP.OPR_CODIGO ) ' +
        ' JOIN PRD0000 pr ON (pr.PRD_CODIGO = iop.PRD_CODIGO) ' +
        ' AND op.PED_CODIGO = ' + QuotedStr(VarToStr(cxgrd1DBBandedTableView1.DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1PED_CODIGO.Index]));
      if DBInicio.IsDesenvolvimento then
        CopyToClipBoard(qSoma.SQL.Text);
      qSoma.Open;

end;

procedure TfrmControleDeQualidade.btnNovoClick(Sender: TObject);
var
  lote, nordem, referencia, descricao: string;
begin
  inherited;

  lote := cdsBuscaPRDL_LOTE.asString;
  nordem := cdsBuscaIOP_NORDEM.asString;
  referencia := cdsBuscaPRD_REFER.AsString;
  descricao := cdsBuscaPRD_DESCRI.AsString;
  qAux.Close;
  qAux.SQL.Clear;
  qAux.SQL.Text := 'SELECT CQ.CQUA_DATA_CONCLUSAO ' +
    ' FROM CONTROLE_DE_QUALIDADE CQ ' +
    ' WHERE CQ.CQUA_PRDL_LOTE = ' +  QuotedStr(lote) +  ' AND  CQ.CQUA_IOP_NORDEM = ' + QuotedStr(nordem) ;
  qAux.Open;
  if qAux.FieldByName('CQUA_DATA_CONCLUSAO').AsString <> '' then
  begin
    ShowMessage('Não é possível alterar lote finalizado');
    exit;
  end;

  if not assigned(frmCadControleDeQualidade) then
   frmCadControleDeQualidade := TfrmCadControleDeQualidade.Create(Application);

  try
    frmCadControleDeQualidade.ed_CQUA_PRDL_LOTE.Text := lote;
    frmCadControleDeQualidade.ed_CQUA_IOP_NORDEM.Text := nordem;
    frmCadControleDeQualidade.labelReferencia.Caption := referencia;
    frmCadControleDeQualidade.lbDescricao.Caption := descricao;
    frmCadControleDeQualidade.ed_PRD_REFER.Text := referencia;
    frmCadControleDeQualidade.ShowModal;

  finally
    FreeAndNil(frmCadControleDeQualidade);
  end;



end;

procedure TfrmControleDeQualidade.btnPesquisaClick(Sender: TObject);
begin
  filtro;
end;

procedure TfrmControleDeQualidade.btnrelatoriosClick(Sender: TObject);
begin
  inherited;
  try
    AbreTabelas();
    frxOP5.ShowReport()
  except
    on E:Exception do
      ShowMessage('Expanda as Matérias primas primeiro' + E.Message);
  end
end;

procedure TfrmControleDeQualidade.cbEmProcessoClick(Sender: TObject);
begin
  inherited;
  filtro;
end;

procedure TfrmControleDeQualidade.cbFinalizadoClick(Sender: TObject);
begin
  inherited;
  filtro;
end;

procedure TfrmControleDeQualidade.cbMostrarConcluidosClick(Sender: TObject);
begin
  inherited;
  filtro;
end;

procedure TfrmControleDeQualidade.cbPendenteClick(Sender: TObject);
begin
  inherited;
  filtro;
end;

procedure TfrmControleDeQualidade.cdsBuscaAfterScroll(DataSet: TDataSet);
var
  sql: string;
begin
  inherited;
  if (DataSet.isempty) then
    exit;

  cdsHistorico.Close;
  cdsHistorico.sql.Clear;

  sql := 'SELECT HCQ.HCQ_DATA_HORA, HCQ.HCQ_DESCRICAO, U.USU_NOME'+
         ' FROM HIST_CONTROLE_DE_QUALIDADE HCQ '+
         '  JOIN USUARIO U ON (U.USU_CODIGO = HCQ.USU_CODIGO)          '+
         ' WHERE HCQ.PRDL_LOTE = ' + QuotedStr(DataSet.FieldByName('PRDL_LOTE').AsString) +
         ' AND HCQ.IOP_NORDEM = ' + QuotedStr(DataSet.FieldByName('IOP_NORDEM').AsString) +
         ' ORDER BY HCQ.HCQ_DATA_HORA DESC ';
  cdsHistorico.Open(sql);

end;

procedure TfrmControleDeQualidade.cxgrd1DBBandedTableView1DataControllerDetailExpanding(ADataController: TcxCustomDataController; ARecordIndex: Integer; var AAllow: Boolean);
begin
  inherited;
  cxgrd1DBBandedTableView1.ViewData.Collapse(true);
end;

procedure TfrmControleDeQualidade.cxgrd1DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  if (AFocusedRecord <> nil) and not TcxCustomGridRecord(AFocusedRecord).Expanded then
    PostMessage(Handle, UM_MYMESSAGE, Integer(AFocusedRecord), Integer(Sender));
end;

procedure TfrmControleDeQualidade.cxgrd1Level1GetGridView(Sender: TcxGridLevel; AMasterRecord: TcxCustomGridRecord; var AGridView: TcxCustomGridView);
var lote, nordem: string;
begin
  inherited;
  lote := VarToStr( AMasterRecord.Values[cxgrd1DBBandedTableView1PRDL_LOTE.Index]);
  nordem := VarToStr( AMasterRecord.Values[cxgrd1DBBandedTableView1IOP_NORDEM.Index]);
  qAux3.Close;
  qAux3.SQL.Clear;
  qAux3.SQL.Text := 'SELECT COALESCE(CQUA_IOP_NORDEM, '''' ) || COALESCE(CQUA_PRDL_LOTE, '''' ) ORDEM_LOTE, CQ.*, PQ.* ' +
    ' FROM CONTROLE_DE_QUALIDADE CQ ' +
    '  INNER JOIN PARAMETROS_DA_QUALIDADE PQ ON (CQ.CQUA_PAR_CODIGO = PQ.PAR_CODIGO) ' +
    ' WHERE CQ.CQUA_PRDL_LOTE = ' +  QuotedStr(lote) +  ' AND  CQ.CQUA_IOP_NORDEM = ' + QuotedStr(nordem) ;
  qAux3.Open;

end;

procedure TfrmControleDeQualidade.edPesquisaChange(Sender: TObject);
begin
  inherited;
  if edPesquisa.Text = '' then
  begin
    cbPendente.Checked := True;
    cbEmProcesso.Checked := True;
    cbFinalizado.Checked := False;
  end
  else
  begin
    cbPendente.Checked := False;
    cbEmProcesso.Checked := False;
    cbFinalizado.Checked := False;
  end;
  IF Length( edPesquisa.Text)>= 2 then
    filtro;
end;

procedure TfrmControleDeQualidade.filtro;
var Sql, operador: string;
begin
  cdsBusca.Close;

    Sql := 'SELECT COALESCE(iop.iop_nordem, '''' ) || COALESCE(lot.PRDL_LOTE, '''' ) AS ORDEM_LOTE,' +
      '  CASE ' +
      '   WHEN COALESCE(CQ.CQUA_DATA_INICIALIZACAO, '''') = '''' THEN ''Pendente'' ' +
      '   WHEN COALESCE(CQ.CQUA_DATA_INICIALIZACAO, '''') <> '''' AND COALESCE(CQ.CQUA_DATA_CONCLUSAO, '''') = '''' THEN ''Em Processo'' ' +
      '   WHEN COALESCE(CQ.CQUA_DATA_CONCLUSAO, '''') <> '''' THEN ''Finalizado'' ' +
      '  END Status, ' +
      ' lot.PRDL_LOTE, iop.iop_nordem, pr.PRD_REFER, pr.PRD_DESCRI, iop.IOP_DATA_CONCLUSAO, iop.iop_codigo, op.PED_CODIGO, ' +
      ' CQ.CQUA_DATA_CONCLUSAO, ' +
      '  (SELECT MIN(CQ.CQUA_DATA_INICIALIZACAO) FROM CONTROLE_DE_QUALIDADE AS CQ ' +
      '  WHERE COALESCE(CQ.CQUA_IOP_NORDEM,'''' ) = COALESCE(IOP.IOP_NORDEM,'''' ) ' +
      '  AND COALESCE(CQ.CQUA_PRDL_LOTE,'''' )  = COALESCE(LOT.PRDL_LOTE,'''' )) AS CQUA_DATA_INICIALIZACAO ' +
      '  FROM	ORDEMPRODUCAO OP ' +
      '  JOIN ITEM_ORDEMPRODUCAO iop ON	(Iop.OPR_CODIGO = OP.OPR_CODIGO ) ' +
      '  LEFT JOIN PRD_LOTE lot ON	(lot.IOP_CODIGO = iop.IOP_CODIGO) ' +
      '  JOIN PRD0000 pr ON	(pr.PRD_CODIGO = iop.PRD_CODIGO) ' +
      '  LEFT JOIN CONTROLE_DE_QUALIDADE AS CQ ON (COALESCE(CQ.CQUA_IOP_NORDEM,'''' ) = COALESCE(IOP.IOP_NORDEM,'''' ) ' +
      '  AND COALESCE(CQ.CQUA_PRDL_LOTE,'''' )  = COALESCE(LOT.PRDL_LOTE,'''' )) ' +
      ' WHERE ( iop.iop_status = ''F'' )';

    if cbPendente.Checked then
      Sql := Sql + ' AND (COALESCE(CQ.CQUA_DATA_INICIALIZACAO, '''') = '''' AND COALESCE(cq.CQUA_DATA_CONCLUSAO , '''') = '''')  ' ;
    if (cbPendente.Checked = true) and (cbEmProcesso.Checked = true) then
      operador := ' OR '
    else if (cbPendente.Checked = false) and (cbEmProcesso.Checked = true) then
      operador := ' AND ';
    if cbEmProcesso.Checked then
      Sql := Sql + operador + ' (COALESCE(CQ.CQUA_DATA_INICIALIZACAO, '''') <> '''' AND COALESCE(cq.CQUA_DATA_CONCLUSAO , '''') = '''')  ' ;
    if ((cbPendente.Checked = true) or (cbEmProcesso.Checked = true)) and cbFinalizado.Checked = true then
      operador := ' OR '
    else
      operador := ' AND ';

    if cbFinalizado.Checked then
      Sql := Sql + operador + ' (COALESCE(CQ.CQUA_DATA_INICIALIZACAO, '''') <> '''' AND COALESCE(cq.CQUA_DATA_CONCLUSAO , '''') <> '''')  ' ;

    Sql := Sql + ' AND EXISTS (SELECT * FROM DEMANDA_PRODUCAO dpr WHERE dpr.PED_CODIGO = op.PED_CODIGO AND dpr.EMP_CODIGO = op.EMP_CODIGO ) ' +

    ' AND ( lot.PRDL_LOTE CONTAINING ' + qStr(edPesquisa.Text) +
    ' OR pr.PRD_REFER CONTAINING ' + qStr(edPesquisa.Text) +
    ' OR pr.PRD_DESCRI CONTAINING ' + qStr(edPesquisa.Text) +
    ' OR iop.iop_nordem CONTAINING '  + qStr(edPesquisa.Text) + ')' +
    ' GROUP BY 1,2,3,4,5,6,7,8,9,10' ;
  cdsBusca.SQL.Text := Sql;
  cdsBusca.Open;
end;

procedure TfrmControleDeQualidade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  action := caFree;
  frmControleDeQualidade := nil;
end;

procedure TfrmControleDeQualidade.FormShow(Sender: TObject);
begin
  inherited;
  filtro;
  frmControleDeQualidade.WindowState := wsMaximized;
end;

procedure TfrmControleDeQualidade.frxCertificadoQualidadeBeginDoc(Sender: TObject);
begin
  inherited;
  RowCounter := 0;
  TfrxPictureView(frxCertificadoQualidade.FindObject('LogoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);
end;

procedure TfrmControleDeQualidade.frxOP5BeginDoc(Sender: TObject);
begin
  inherited;
  TfrxPictureView(frxOP5.FindObject('LogoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);
end;

procedure TfrmControleDeQualidade.frxOP5GetValue(const VarName: string; var Value: Variant);
begin
  inherited;
  if (VarName  = 'EMPRESA') then
     Value := DBInicio.Empresa.RAZAO;
end;

procedure TfrmControleDeQualidade.frxPadraoBeginDoc(Sender: TObject);
begin
  inherited;
     TfrxPictureView(frxPadrao.FindObject('LogoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);
end;

procedure TfrmControleDeQualidade.frxPadraoGetValue(const VarName: string; var Value: Variant);
begin
  inherited;
  if (VarName  = 'RAZAO') then
     Value := DBInicio.Empresa.RAZAO
  else
  if (VarName  = 'ENDERECO') then
     Value := DBInicio.Empresa.ENDERECO
  else
  if (VarName  = 'BAIRRO') then
     Value := DBInicio.Empresa.BAIRRO
  else
  if (VarName  = 'CEP')  then
       Value := DBInicio.Empresa.CEP
  else
  if (VarName  = 'CIDADE') then
       Value := DBInicio.Empresa.CIDADE + ', ' + DBInicio.Empresa.UF
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
  if (VarName  = 'HOJE') then
     Value :=  FormatDateTime('dd/mm/yyyy', Now)
  else
  if (VarName  = 'CNPJ')  then
     Value := DBInicio.Empresa.CNPJ_CNPF
  else
  if (VarName  = 'INSCR') then
     Value := DBInicio.Empresa.INSC_EST
  else
  if (VarName  = 'APROVADO') then
     Value := DBInicio.Usuario.NOME
  else
  if (VarName  = 'EMAIL_APROVADO') then
     Value := DBInicio.Usuario.EMAIL_USUARIO
  else
  if (VarName  = 'REPONSAVEL_TECNICO') then
     Value := BuscaUmDadoSqlAsString('SELECT PMT_RESP_TECNICO_QUALIDADE FROM PRMT0001 WHERE EMP_CODIGO = ' + QuotedStr(DbInicio.EMP_CODIGO)   )
  else
  if (VarName  = 'CRQ') then
     Value := BuscaUmDadoSqlAsString('SELECT PMT_CRQ_RESP_TECNICO_QUALIDADE FROM PRMT0001 WHERE EMP_CODIGO = ' + QuotedStr(DbInicio.EMP_CODIGO)   )
  ;

end;

procedure TfrmControleDeQualidade.OrdemdeProduo1Click(Sender: TObject);
begin
  inherited;
  btnrelatoriosClick(Sender)
end;

procedure TfrmControleDeQualidade.rbPendenteClick(Sender: TObject);
begin
  inherited;
  filtro;
end;

procedure TfrmControleDeQualidade.rbFinalizadoClick(Sender: TObject);
begin
  inherited;
  filtro;
end;

procedure TfrmControleDeQualidade.rbEmProcessoClick(Sender: TObject);
begin
  inherited;
  filtro;
end;


procedure TfrmControleDeQualidade.ImpressodoCertificadodeQualidade1Click(Sender: TObject);
begin
  inherited;
  AbreTabelas;
  frxCertificadoQualidade.ShowReport();
end;

end.
