unit uSolicitacaoCompra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaFDAC, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, ACBrCalculadora, frxClass, Vcl.Menus,
  FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxLocalization, ACBrBase, ACBrEnterTab, JvExControls, JvArrowButton, Vcl.StdCtrls, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls, cxGridBandedTableView, cxGridDBBandedTableView, frxDBSet,
  IdMessage, IdIntercept, IdGlobal, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase,
  IdMessageClient, IdSMTPBase, IdSMTP, IdAttachmentFile, frxExportPDF, Vcl.Mask, JvExMask, JvToolEdit, JvAnimatedImage, JvGIFCtrl, System.ImageList, Vcl.ImgList,
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
  cxDataControllerConditionalFormattingRulesManagerDialog, frxExportBaseDialog;

type
  TfrmSolicitacaoCompra = class(TfrmBaseDBPesquisaFDAC)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Image1: TImage;
    lbAberta: TLabel;
    Panel2: TPanel;
    Image2: TImage;
    lbRejeitada: TLabel;
    Panel3: TPanel;
    Image3: TImage;
    lbAutCotacao: TLabel;
    Panel4: TPanel;
    Image4: TImage;
    lbFinalizada: TLabel;
    Panel5: TPanel;
    Image5: TImage;
    lbAutcompra: TLabel;
    Panel6: TPanel;
    Image6: TImage;
    lbConcluida: TLabel;
    Panel7: TPanel;
    Image7: TImage;
    lbCancelada: TLabel;
    edPesquisa: TLabeledEdit;
    cxgrd1Level1: TcxGridLevel;
    cxgrd1DBBandedTableView1: TcxGridDBBandedTableView;
    cxgrd1DBBandedTableView1SIT_CODIGO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1SCO_CODIGO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1FOR_CODIGO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1FOR_RAZAO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1FOR_FONE: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1FOR_EMAIL: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1SIT_COTACAO_APROVADA: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1SIT_PEDIDO_COMPRA: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1SIT_DATA_COTACAO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1SIT_PRECO_COTACAO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1SIT_PRAZO_ENTREGA: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1SIT_TIPO_FRETE: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1SIT_NRO_PEDIDO_COMPRA: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1SIT_PRAZO_PAGAMENTO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1SIT_DATA_FINALIZACAO_COTACAO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1SIT_DATA_AUTORIZACAO_COMPRA: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1SIT_CONCLUIDA: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1SIT_STATUS_COMPRA: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1SIT_STATUS_COMPRA_OBS: TcxGridDBBandedColumn;
    frxSolicitacaoCompraItem: TfrxReport;
    frxDBBusca: TfrxDBDataset;
    frxBuscaDetalhes: TfrxDBDataset;
    cdsLog: TFDQuery;
    dsLog: TDataSource;
    cxgrd1DBBandedTableView1SIT_STAT_COMPRA_RESP: TcxGridDBBandedColumn;
    cxgrd1Level2: TcxGridLevel;
    cxgrd1DBBandedTableView2: TcxGridDBBandedTableView;
    cxgrd1DBBandedTableView2SIL_CODIGO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView2SIT_CODIGO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView2SIT_STATUS_COMPRA: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView2SIT_STATUS_SOLICITACAO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView2USU_NOME: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView2SIL_DATA: TcxGridDBBandedColumn;
    ImprimirRelatorio: TMenuItem;
    pmSolicitacaoItem: TPopupMenu;
    ImprimirItemRequisicaodeCompras1: TMenuItem;
    EnviarItemporemail1: TMenuItem;
    qSolCompra: TFDQuery;
    qSolCompraItem: TFDQuery;
    dsSolCompra: TDataSource;
    dsSolCompraItem: TDataSource;
    cxgrd1DBTableView1SCO_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView1SET_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView1SET_DESCRICAO: TcxGridDBColumn;
    cxgrd1DBTableView1SCO_SOLICITANTE: TcxGridDBColumn;
    cxgrd1DBTableView1SCO_DATA_SOLICITACAO: TcxGridDBColumn;
    cxgrd1DBTableView1SCO_OBSERVACAO: TcxGridDBColumn;
    smtp: TIdSMTP;
    sslsocket: TIdSSLIOHandlerSocketOpenSSL;
    IdConnectionIntercept1: TIdConnectionIntercept;
    frxPDFExport1: TfrxPDFExport;
    EnviarRelatorio: TMenuItem;
    frxRelatorioGeral: TfrxReport;
    dtScoDataSolicitacao: TJvDateEdit;
    PanelAguarde: TPanel;
    JvGIFAnimator1: TJvGIFAnimator;
    pinfo: TPanel;
    frxDBBuscaGeral: TfrxDBDataset;
    frxDBBuscaGeralDetalhes: TfrxDBDataset;
    InserirItemnoPedidodeCompra1: TMenuItem;
    Label1: TLabel;
    pmEmBranco: TPopupMenu;
    cxgrd1DBTableView1PRD_REFER: TcxGridDBColumn;
    cxgrd1DBTableView1SCO_DESCRICAO_PRODUTO: TcxGridDBColumn;
    cxgrd1DBTableView1UND_SIGLA: TcxGridDBColumn;
    cxgrd1DBTableView1SCO_QTDE_MIN: TcxGridDBColumn;
    cxgrd1DBTableView1SCO_QTDE_MAX: TcxGridDBColumn;
    cxgrd1DBTableView1SCO_STATUS_SOLICITACAO: TcxGridDBColumn;
    cxgrd1DBTableView1SCO_STAT_SOLICIT_RESP: TcxGridDBColumn;
    cxgrd1DBTableView1SCO_DATA_ENTREGA: TcxGridDBColumn;
    cxgrd1DBTableView1UND_DESCRICAO: TcxGridDBColumn;
    cxgrd1DBTableView1SCO_DATA_AUTORIZACAO_COTACAO: TcxGridDBColumn;
    cxgrd1DBTableView1SCO_OBSERVACAO_APROVACAO: TcxGridDBColumn;
    ImageList1: TImageList;
    cxgrd1DBTableView1SCO_NRO_PEDIDO_VENDA: TcxGridDBColumn;
    lbAbertaQt: TLabel;
    lbRejeitadaQt: TLabel;
    lbAutCotacaoQt: TLabel;
    lbFinalizadaQt: TLabel;
    lbAutcompraQt: TLabel;
    lbConcluidaQt: TLabel;
    lbCanceladaQt: TLabel;
    cxgrd1DBBandedTableView1FOR_CGC: TcxGridDBBandedColumn;
    procedure btnPesquisaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnExcluiClick(Sender: TObject);
    procedure lbAbertaClick(Sender: TObject);
    procedure lbRejeitadaClick(Sender: TObject);
    procedure lbAutCotacaoClick(Sender: TObject);
    procedure lbFinalizadaClick(Sender: TObject);
    procedure lbAutcompraClick(Sender: TObject);
    procedure lbConcluidaClick(Sender: TObject);
    procedure lbCanceladaClick(Sender: TObject);
    procedure btnEditaClick(Sender: TObject);
    procedure cxgrd1DBBandedTableView1SIT_COTACAO_APROVADAGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
    procedure cxgrd1DBBandedTableView1SIT_PEDIDO_COMPRAGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
    procedure cxgrd1DBBandedTableView1SIT_TIPO_FRETEGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
    procedure cxgrd1DBBandedTableView1SIT_STATUS_SOLICITACAOGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
    procedure cxgrd1DBBandedTableView1SIT_AUTORIZA_COTACAOGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
    procedure cxgrd1DBBandedTableView1SIT_STATUS_COMPRAGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
    procedure btnrelatoriosClick(Sender: TObject);
    procedure frxSolicitacaoCompraItemGetValue(const VarName: string; var Value: Variant);
    procedure frxSolicitacaoCompraItemBeginDoc(Sender: TObject);
    procedure cxgrd1DBBandedTableView2SIT_STATUS_COMPRAGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
    procedure cxgrd1DBBandedTableView2SIT_STATUS_SOLICITACAOGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
    procedure ImprimirRelatorioClick(Sender: TObject);
    procedure ImprimirItemRequisicaodeCompras1Click(Sender: TObject);
    procedure EnviarItemporemail1Click(Sender: TObject);
    procedure PreparaSMTP();
    procedure edPesquisaExit(Sender: TObject);
    procedure dtScoDataSolicitacaoExit(Sender: TObject);
    procedure EnviarRelatorioClick(Sender: TObject);
    procedure InserirTodososItensnoPedidodeCompra1Click(Sender: TObject);
    procedure InserirItemnoPedidodeCompra1Click(Sender: TObject);
    procedure cxgrd1DBTableView1SCO_STATUS_SOLICITACAOGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
    procedure cxgrd1DBTableView1SCO_AUTORIZA_COTACAOGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
    procedure cxgrd1DBTableView1SCO_STATUS_SOLICITACAOCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    { Private declarations }
  public
    procedure HabilitaCampos(var  AutorizaCotacao, RealizaCotacao, AutorizaCompra: boolean);
    procedure StatusCompra(var AText: string);
    procedure StatusSolictacao(var AText: string);
    function AutorizacaoDeCotacao(): Boolean;
    procedure filtro(ScoStatusSolicitacao: integer);
    var filtrado: integer;
    // function CotacaoAprovada(): Boolean;
    { Public declarations }
  end;

var
  frmSolicitacaoCompra: TfrmSolicitacaoCompra;

implementation

{$R *.dfm}

uses uteis, uSolicitacaoCompraCadastro, InicioDB, cxGridDBDataDefinitions, DataCad, RWFunc;

function TfrmSolicitacaoCompra.AutorizacaoDeCotacao() : Boolean;
begin
  if cdsBusca.FieldByName('SCO_CODIGO').AsString = '' then
  begin
    Result := True;
    exit;
  end;
  OpenAux('SELECT SCO_STATUS_SOLICITACAO FROM SOLICITACAO_COMPRA WHERE SCO_CODIGO = ' + cdsBusca.FieldByName('SCO_CODIGO').AsString);
  Result := qAux.FieldByName('SCO_STATUS_SOLICITACAO').AsInteger = 3;
end;

procedure TfrmSolicitacaoCompra.btnEditaClick(Sender: TObject);
var
  AutorizaCotacao, RealizaCotacao, AutorizaCompra: boolean;
begin
  inherited;

  if not assigned(frmSolicitacaoCompraCadastro) then
    frmSolicitacaoCompraCadastro := TfrmSolicitacaoCompraCadastro.Create(Application);
  try
    frmSolicitacaoCompraCadastro.tbSolicitacaoCompra.Filter := 'SCO_CODIGO = ' + cdsBusca.FieldByName('SCO_CODIGO').AsString;
    frmSolicitacaoCompraCadastro.tbSolicitacaoCompra.Filtered := True;
    frmSolicitacaoCompraCadastro.tbSolicitacaoCompra.Open;
    frmSolicitacaoCompraCadastro.dtSolicitacao.Date := cdsBusca.FieldByName('SCO_DATA_SOLICITACAO').AsDateTime;
    frmSolicitacaoCompraCadastro.dtScoDataEntrega.Date := cdsBusca.FieldByName('SCO_DATA_ENTREGA').AsDateTime;

    frmSolicitacaoCompraCadastro.tbSolicitacaoCompra.Edit;

    frmSolicitacaoCompraCadastro.cbSetor.idRetorno :=  cdsBusca.FieldByName('SET_CODIGO').AsString;
    frmSolicitacaoCompraCadastro.cbProduto.idRetorno :=  cdsBusca.FieldByName('PRD_REFER').AsString;
    frmSolicitacaoCompraCadastro.tbSolicitacaoCompraSCO_DESCRICAO_PRODUTO.Text :=  cdsBusca.FieldByName('SCO_DESCRICAO_PRODUTO').AsString;
    frmSolicitacaoCompraCadastro.tbSolicitacaoCompraSCO_QTDE_MIN.Text :=  cdsBusca.FieldByName('SCO_QTDE_MIN').AsString;
    frmSolicitacaoCompraCadastro.tbSolicitacaoCompraSCO_QTDE_MAX.Text :=  cdsBusca.FieldByName('SCO_QTDE_MAX').AsString;


    frmSolicitacaoCompraCadastro.tbSolicitacaoItem.Filter := 'SCO_CODIGO = ' + cdsBusca.FieldByName('SCO_CODIGO').AsString;
    frmSolicitacaoCompraCadastro.tbSolicitacaoItem.Open;

    frmSolicitacaoCompraCadastro.btGravarSolicitacao.Enabled := True;
    frmSolicitacaoCompraCadastro.btGravar.Enabled := False;
    frmSolicitacaoCompraCadastro.btCancelar.Enabled := False;

    frmSolicitacaoCompraCadastro.Incluir := False;
    HabilitaCampos(AutorizaCotacao, RealizaCotacao, AutorizaCompra);
    frmSolicitacaoCompraCadastro.ShowModal;
  finally
    cdsBusca.Close;
    cdsBuscaDetalhes.Close;
    cdsLog.Close;
    cdsBusca.Open;
    cdsBuscaDetalhes.Open;
    cdsLog.Open;
//    FreeAndNil(frmSolicitacaoCompraCadastro);
  end;


end;

procedure TfrmSolicitacaoCompra.btnExcluiClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja excluir este registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    qAux.Close;
    qAux.SQL.Clear;
    qAux.SQL.Text := 'DELETE FROM SOLICITACAO_ITEM WHERE SCO_CODIGO = ' + cdsBusca.FieldByName('SCO_CODIGO').AsString;
    qAux.ExecSQL;
    qAux.Close;
    qAux.SQL.Clear;
    qAux.SQL.Text := 'DELETE FROM SOLICITACAO_COMPRA WHERE SCO_CODIGO = ' + cdsBusca.FieldByName('SCO_CODIGO').AsString;
    qAux.ExecSQL;
    cdsBusca.Refresh;
    cdsBuscaDetalhes.Refresh;


  end;

end;

procedure TfrmSolicitacaoCompra.btnNovoClick(Sender: TObject);
var
  AutorizaCotacao, RealizaCotacao, AutorizaCompras: boolean;
begin
  inherited;
  if not assigned(frmSolicitacaoCompraCadastro) then
   frmSolicitacaoCompraCadastro := TfrmSolicitacaoCompraCadastro.Create(Application);
  try
    frmSolicitacaoCompraCadastro.tbSolicitacaoCompra.Filtered := False;
    frmSolicitacaoCompraCadastro.tbSolicitacaoCompra.Insert;
    frmSolicitacaoCompraCadastro.tbSolicitacaoCompraSCO_SOLICITANTE.AsString := DBInicio.Usuario.NOME;
    frmSolicitacaoCompraCadastro.Incluir := True;
    frmSolicitacaoCompraCadastro.cbScoStatusSolicitacao.ItemIndex := 1;
    frmSolicitacaoCompraCadastro.dtSolicitacao.Date := Date;
    HabilitaCampos(AutorizaCotacao, RealizaCotacao, AutorizaCompras);


    frmSolicitacaoCompraCadastro.btIncluirNovoFornecedor.Enabled := False;
    frmSolicitacaoCompraCadastro.btGravar.Enabled := False;
    frmSolicitacaoCompraCadastro.btCancelar.Enabled := False;

    frmSolicitacaoCompraCadastro.ShowModal;
  finally
    cdsBusca.Close;
    cdsBuscaDetalhes.Close;
    cdsLog.Close;
    cdsBusca.Open;
    cdsBuscaDetalhes.Open;
    cdsLog.Open;
  end;
end;

procedure TfrmSolicitacaoCompra.btnPesquisaClick(Sender: TObject);
begin
//  inherited;
  Filtro(999);
end;

procedure TfrmSolicitacaoCompra.btnrelatoriosClick(Sender: TObject);
begin
  inherited;
  cdsBuscaDetalhes.Filtered := True;
  cdsBuscaDetalhes.Filter := 'SIT_COTACAO_APROVADA = ' + QuotedStr('S');
  frxRelatorioGeral.ShowReport();
  cdsBuscaDetalhes.Filtered := False;
end;


procedure TfrmSolicitacaoCompra.cxgrd1DBBandedTableView1SIT_AUTORIZA_COTACAOGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
begin
  inherited;
  if AText = 'S' then
    AText := 'Sim'
  else
    AText := 'Não';
end;

procedure TfrmSolicitacaoCompra.cxgrd1DBBandedTableView1SIT_COTACAO_APROVADAGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
begin
  inherited;
  if AText = 'S' then
    AText := 'Sim'
  else
    AText := 'Não';

end;

procedure TfrmSolicitacaoCompra.cxgrd1DBBandedTableView1SIT_PEDIDO_COMPRAGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
begin
  inherited;
  if AText = 'S' then
    AText := 'Sim'
  else
    AText := 'Não';
end;

procedure TfrmSolicitacaoCompra.cxgrd1DBBandedTableView1SIT_STATUS_COMPRAGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
begin
  inherited;
  StatusCompra(AText);

end;

procedure TfrmSolicitacaoCompra.cxgrd1DBBandedTableView1SIT_STATUS_SOLICITACAOGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
begin
  inherited;
  StatusSolictacao(AText);
end;

procedure TfrmSolicitacaoCompra.cxgrd1DBBandedTableView1SIT_TIPO_FRETEGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
begin
  inherited;
  // CIF-Pago
  // FOB-a pagar
  if AText = 'CIF' then
    AText := 'CIF - Pago'
  else
    if AText = 'FOB' then
      AText := 'FOB - A Pagar';
end;

procedure TfrmSolicitacaoCompra.cxgrd1DBBandedTableView2SIT_STATUS_COMPRAGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
begin
  inherited;
  StatusCompra(AText);
end;

procedure TfrmSolicitacaoCompra.cxgrd1DBBandedTableView2SIT_STATUS_SOLICITACAOGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
begin
  inherited;
  StatusSolictacao(AText);
end;

procedure TfrmSolicitacaoCompra.cxgrd1DBTableView1SCO_AUTORIZA_COTACAOGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
begin
  inherited;
  if AText = 'S' then
    AText := 'Sim'
  else
    AText := 'Não';
end;

procedure TfrmSolicitacaoCompra.cxgrd1DBTableView1SCO_STATUS_SOLICITACAOCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
    {
      0: Não Definido
      1: Aberta
      2: Rejeitada
      3: Autorização de Cotação
      4: Cotação Finalizada
      5: Autorização de Compra
      6: Concluída
      7: Cancelada
    }
  if AViewInfo.Text = '' then
    AViewInfo.Text := '0';
    ImageList1.Draw(ACanvas.Canvas,AViewInfo.ClientBounds.Left,AViewInfo.ClientBounds.Top+1, StrToInt(AViewInfo.Text) );
  ADone:=True;
end;

procedure TfrmSolicitacaoCompra.cxgrd1DBTableView1SCO_STATUS_SOLICITACAOGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
begin
  inherited;
    {
      0: Não Definido
      1: Aberta
      2: Rejeitada
      3: Autorização de Cotação
      4: Cotação Finalizada
      5: Autorização de Compra
      6: Concluída
      7: Cancelada
    }
  Exit;
  if AText = '' then
    Exit;
  case StrToInt(AText) of
    0: AText := 'Não Definido';
    1: AText := 'Aberta';
    2: AText := 'Rejeitada';
    3: AText := 'Autorização de Cotação';
    4: AText := 'Cotação Finalizada';
    5: AText := 'Autorização de Compra';
    6: AText := 'Concluída';
    7: AText := 'Cancelada';
  end;
end;

procedure TfrmSolicitacaoCompra.dtScoDataSolicitacaoExit(Sender: TObject);
begin
  inherited;
  if dtScoDataSolicitacao.Date > 0 then
    btnPesquisa.Click;
end;

procedure TfrmSolicitacaoCompra.edPesquisaExit(Sender: TObject);
begin
  inherited;
  if edPesquisa.Text <> '' then
    btnPesquisa.Click;
end;

procedure TfrmSolicitacaoCompra.filtro(ScoStatusSolicitacao: integer);
var
  ssql: string;

begin
  // 21/01/2021
  filtrado := ScoStatusSolicitacao;
  cdsBusca.Close;
  cdsBusca.SQL.Clear;
  ssql := 'SELECT DISTINCT se.SET_DESCRICAO, un.UND_DESCRICAO, sc.* ' +
          ' FROM SOLICITACAO_COMPRA sc ' +
          ' JOIN SETOR se ON (se.SET_CODIGO = sc.SET_CODIGO) ' +
          ' LEFT JOIN UND_MEDIDA un ON (un.UND_SIGLA = sc.UND_SIGLA) ' +
          ' LEFT JOIN SOLICITACAO_ITEM si ON (si.SCO_CODIGO = sc.SCO_CODIGO) ';
  if (edPesquisa.Text <> '') or (ScoStatusSolicitacao <> 999) or (dtScoDataSolicitacao.Date > 0) then
  begin
    ssql := ssql + ' WHERE ';
  end;
  if edPesquisa.Text <> '' then
  begin
    ssql := ssql +
    ' (UPPER(sc.SCO_SOLICITANTE) LIKE ' + QuotedStr('%' + UpperCase(edPesquisa.Text) + '%') +
    ' OR UPPER(se.SET_DESCRICAO) LIKE ' + QuotedStr('%' + UpperCase(edPesquisa.Text) + '%') +
    ' OR UPPER(sc.SCO_OBSERVACAO) LIKE ' + QuotedStr('%' + UpperCase(edPesquisa.Text) + '%') +
    ' OR UPPER(sc.SCO_DESCRICAO_PRODUTO) LIKE ' + QuotedStr('%' + UpperCase(edPesquisa.Text) + '%') + ')';


  end;

  if ((edPesquisa.Text <> '') and (dtScoDataSolicitacao.Date > 0))  then
    ssql := ssql + ' AND ';
  ssql := ssql + iif(dtScoDataSolicitacao.date = 0, '', ' sc.SCO_DATA_SOLICITACAO = ' + DateToSQL(dtScoDataSolicitacao.date) + ' ');

  if ((edPesquisa.Text <> '') and (ScoStatusSolicitacao <> 999)) or ((dtScoDataSolicitacao.Date > 0) and (ScoStatusSolicitacao <> 999)) then
    ssql := ssql + ' AND ';

  ssql := ssql + iif(ScoStatusSolicitacao = 999, '' , ' sc.SCO_STATUS_SOLICITACAO = ' + IntToStr(ScoStatusSolicitacao)) ;
  ssql:= ssql + ' ORDER BY sc.PRD_REFER, sc.SCO_DATA_SOLICITACAO DESC ';
  cdsBusca.SQL.Text := ssql;
  cdsBusca.Open;
  cdsBuscaDetalhes.Close;
  cdsBuscaDetalhes.Open;

  lbAbertaQt.Caption     := BuscaUmDadoSqlAsString('SELECT count(SCO_STATUS_SOLICITACAO) FROM SOLICITACAO_COMPRA WHERE SCO_STATUS_SOLICITACAO = 1');
  lbRejeitadaQt.Caption  := BuscaUmDadoSqlAsString('SELECT count(SCO_STATUS_SOLICITACAO) FROM SOLICITACAO_COMPRA WHERE SCO_STATUS_SOLICITACAO = 2');
  lbAutCotacaoQt.Caption := BuscaUmDadoSqlAsString('SELECT count(SCO_STATUS_SOLICITACAO) FROM SOLICITACAO_COMPRA WHERE SCO_STATUS_SOLICITACAO = 3');
  lbFinalizadaQt.Caption := BuscaUmDadoSqlAsString('SELECT count(SCO_STATUS_SOLICITACAO) FROM SOLICITACAO_COMPRA WHERE SCO_STATUS_SOLICITACAO = 4');
  lbAutcompraQt.Caption  := BuscaUmDadoSqlAsString('SELECT count(SCO_STATUS_SOLICITACAO) FROM SOLICITACAO_COMPRA WHERE SCO_STATUS_SOLICITACAO = 5');
  lbConcluidaQt.Caption  := BuscaUmDadoSqlAsString('SELECT count(SCO_STATUS_SOLICITACAO) FROM SOLICITACAO_COMPRA WHERE SCO_STATUS_SOLICITACAO = 6');
  lbCanceladaQt.Caption  := BuscaUmDadoSqlAsString('SELECT count(SCO_STATUS_SOLICITACAO) FROM SOLICITACAO_COMPRA WHERE SCO_STATUS_SOLICITACAO = 7');



end;

procedure TfrmSolicitacaoCompra.FormClose(Sender: TObject; var Action: TCloseAction);
var
  nome :string;
begin
  inherited;
  TestaPasta ( dbInicio.SistemaLocal+'settings' );
  nome:= 'frmSolicitacaoCompra.cxGrid1DBBandedTableView1.grid';
  cxGrd1DBBandedTableView1.StoreToIniFile(dbInicio.SistemaLocal+'settings\'+nome, True, [gsoUseFilter] );
  nome:= 'frmSolicitacaoCompra.cxgrd1DBTableView1.grid';
  cxgrd1DBTableView1.StoreToIniFile(dbInicio.SistemaLocal+'settings\'+nome, True, [gsoUseFilter] );
  nome:= 'frmSolicitacaoCompra.cxgrd1DBBandedTableView2.grid';
  cxgrd1DBBandedTableView2.StoreToIniFile(dbInicio.SistemaLocal+'settings\'+nome, True, [gsoUseFilter] );
  Action := caFree;
  frmSolicitacaoCompra := nil;
end;

procedure TfrmSolicitacaoCompra.FormShow(Sender: TObject);
var
  nome :string;
  AutorizaCotacao, RealizaCotacao, AutorizaCompra : boolean;
begin
  inherited;
  nome:= Self.Name + 'form.pos';
  if not FileExists(dbInicio.SistemaLocal+'settings\'+nome) then
    Self.Width := Screen.Width - 10;

  cdsBusca.Open;
  cdsBuscaDetalhes.Open;
  cdsLog.Open;

  nome:= 'frmSolicitacaocompra.cxGrid1DBBandedTableView1.grid';
  cxGrd1DBBandedTableView1.RestoreFromIniFile(dbInicio.SistemaLocal+'settings\'+nome, True, True, [gsoUseFilter] );
  nome:= 'frmSolicitacaocompra.cxgrd1DBTableView1.grid';
  cxgrd1DBTableView1.RestoreFromIniFile(dbInicio.SistemaLocal+'settings\'+nome, True, True, [gsoUseFilter] );
  nome:= 'frmSolicitacaocompra.cxgrd1DBBandedTableView2.grid';
  cxgrd1DBBandedTableView2.RestoreFromIniFile(dbInicio.SistemaLocal+'settings\'+nome, True, True, [gsoUseFilter] );

  cxgrd1DBTableView1.OptionsView.GroupByBox := False;
  cxGrd1DBBandedTableView1.OptionsView.GroupByBox := False;
  cxgrd1DBBandedTableView2.OptionsView.GroupByBox := False;
  Filtro(1);

  qAux.Close;
  qAux.SQL.Clear;
  qAux.SQL.Text := 'SELECT USP_AUTORIZA_COTACAO_MATERIAL, USP_REALIZA_COTACAO_MATERIAL, USP_AUTORIZA_COMPRA_MATERIAL ' +
                   ' FROM USUARIO_PARAMETRO WHERE USP_COD_USUARIO = ' + QuotedStr(dbInicio.Usuario.CODIGO);
  qAux.Open;
  AutorizaCotacao := (qAux.FieldByname('USP_AUTORIZA_COTACAO_MATERIAL').AsString = 'S');
  RealizaCotacao :=  (qAux.FieldByname('USP_REALIZA_COTACAO_MATERIAL').AsString = 'S');
  AutorizaCompra :=  (qAux.FieldByname('USP_AUTORIZA_COMPRA_MATERIAL').AsString = 'S');
  qAux.Close;

  cxgrd1DBTableView1SCO_DATA_AUTORIZACAO_COTACAO.Visible := AutorizaCotacao or RealizaCotacao or AutorizaCompra;
  cxgrd1DBTableView1SCO_STAT_SOLICIT_RESP.Visible := AutorizaCotacao or RealizaCotacao or AutorizaCompra;
  // cxgrd1DBTableView1SCO_AUTORIZA_COTACAO.Visible := AutorizaCotacao or RealizaCotacao or AutorizaCompra;
  cxgrd1DBTableView1SCO_OBSERVACAO_APROVACAO.Visible := AutorizaCotacao or RealizaCotacao or AutorizaCompra;

  cxgrd1DBBandedTableView1SIT_CODIGO.Visible := AutorizaCotacao or RealizaCotacao or AutorizaCompra;
  cxgrd1DBBandedTableView1SCO_CODIGO.Visible := AutorizaCotacao or RealizaCotacao or AutorizaCompra;
  cxgrd1DBBandedTableView1FOR_CODIGO.Visible := AutorizaCotacao or RealizaCotacao or AutorizaCompra;
  cxgrd1DBBandedTableView1FOR_RAZAO.Visible := AutorizaCotacao or RealizaCotacao or AutorizaCompra;
  cxgrd1DBBandedTableView1FOR_FONE.Visible := AutorizaCotacao or RealizaCotacao or AutorizaCompra;
  cxgrd1DBBandedTableView1FOR_EMAIL.Visible := AutorizaCotacao or RealizaCotacao or AutorizaCompra;
  cxgrd1DBBandedTableView1SIT_COTACAO_APROVADA.Visible := AutorizaCotacao or RealizaCotacao or AutorizaCompra;
  cxgrd1DBBandedTableView1SIT_PEDIDO_COMPRA.Visible := AutorizaCotacao or RealizaCotacao or AutorizaCompra;
  cxgrd1DBBandedTableView1SIT_DATA_COTACAO.Visible := AutorizaCotacao or RealizaCotacao or AutorizaCompra;
  cxgrd1DBBandedTableView1SIT_PRECO_COTACAO.Visible := AutorizaCotacao or RealizaCotacao or AutorizaCompra;
  cxgrd1DBBandedTableView1SIT_PRAZO_ENTREGA.Visible := AutorizaCotacao or RealizaCotacao or AutorizaCompra;
  cxgrd1DBBandedTableView1SIT_TIPO_FRETE.Visible := AutorizaCotacao or RealizaCotacao or AutorizaCompra;
  // cxgrd1DBBandedTableView1SIT_NRO_PEDIDO_VENDA.Visible := AutorizaCotacao or RealizaCotacao or AutorizaCompra;
  cxgrd1DBBandedTableView1SIT_NRO_PEDIDO_COMPRA.Visible := AutorizaCotacao or RealizaCotacao or AutorizaCompra;
  cxgrd1DBBandedTableView1SIT_PRAZO_PAGAMENTO.Visible := AutorizaCotacao or RealizaCotacao or AutorizaCompra;
  cxgrd1DBBandedTableView1SIT_DATA_FINALIZACAO_COTACAO.Visible := AutorizaCotacao or RealizaCotacao or AutorizaCompra;
  cxgrd1DBBandedTableView1SIT_DATA_AUTORIZACAO_COMPRA.Visible := AutorizaCotacao or RealizaCotacao or AutorizaCompra;
  cxgrd1DBBandedTableView1SIT_CONCLUIDA.Visible := AutorizaCotacao or RealizaCotacao or AutorizaCompra;
  cxgrd1DBBandedTableView1SIT_STATUS_COMPRA.Visible := AutorizaCotacao or RealizaCotacao or AutorizaCompra;
  cxgrd1DBBandedTableView1SIT_STATUS_COMPRA_OBS.Visible := AutorizaCotacao or RealizaCotacao or AutorizaCompra;
  cxgrd1DBBandedTableView1SIT_STAT_COMPRA_RESP.Visible := AutorizaCotacao or RealizaCotacao or AutorizaCompra;

  PanelAguarde.Top := (Self.Height div 2) - (PanelAguarde.Height div 2);
  PanelAguarde.Left := (Self.Width div 2) - (PanelAguarde.Width div 2);
  {
      1: Aberta
      2: Rejeitada
      3: Autorização de Cotação
      4: Cotação Finalizada // Aprovada
      5: Autorização de Compra
      6: Concluída
      7: Cancelada
  }


end;

procedure TfrmSolicitacaoCompra.frxSolicitacaoCompraItemBeginDoc(Sender: TObject);
begin
  inherited;
  TfrxPictureView(frxSolicitacaoCompraItem.FindObject('LogoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);
end;

procedure TfrmSolicitacaoCompra.frxSolicitacaoCompraItemGetValue(const VarName: string; var Value: Variant);
begin
  inherited;
  if (VarName  = 'EMPRESA') then
     Value := DBInicio.Empresa.RAZAO;
end;

procedure TfrmSolicitacaoCompra.HabilitaCampos(var  AutorizaCotacao, RealizaCotacao, AutorizaCompra : boolean);
begin
    qAux.Close;
    qAux.SQL.Clear;
    qAux.SQL.Text := 'SELECT USP_AUTORIZA_COTACAO_MATERIAL, USP_REALIZA_COTACAO_MATERIAL, USP_AUTORIZA_COMPRA_MATERIAL ' +
                     ' FROM USUARIO_PARAMETRO WHERE USP_COD_USUARIO = ' + QuotedStr(dbInicio.Usuario.CODIGO);
    qAux.Open;
    AutorizaCotacao := (qAux.FieldByname('USP_AUTORIZA_COTACAO_MATERIAL').AsString = 'S');
    RealizaCotacao :=  (qAux.FieldByname('USP_REALIZA_COTACAO_MATERIAL').AsString = 'S');
    AutorizaCompra :=  (qAux.FieldByname('USP_AUTORIZA_COMPRA_MATERIAL').AsString = 'S');
    qAux.Close;

    frmSolicitacaoCompraCadastro.pnSolicitacaoItem.Enabled := True;

    frmSolicitacaoCompraCadastro.gbFornecedor.Visible := RealizaCotacao;
    frmSolicitacaoCompraCadastro.pnDataCotacao.Visible := RealizaCotacao or AutorizaCompra;
    frmSolicitacaoCompraCadastro.gbCompra.Visible := AutorizaCompra;
    frmSolicitacaoCompraCadastro.gbAutorizaCotacao.Visible := AutorizaCotacao;

    frmSolicitacaoCompraCadastro.cxGrid1.Visible :=  AutorizaCotacao or RealizaCotacao or AutorizaCompra;

    frmSolicitacaoCompraCadastro.cbScoStatusSolicitacao.Enabled := AutorizaCotacao or RealizaCotacao;
    frmSolicitacaoCompraCadastro.dtScoDataAutorizacaoCotacao.Enabled := AutorizaCotacao;
    frmSolicitacaoCompraCadastro.edScoStatSolicitResp.Enabled := AutorizaCotacao or RealizaCotacao;
    frmSolicitacaoCompraCadastro.edScoObservacaoAprovacao.Enabled := AutorizaCotacao or RealizaCotacao;
    // frmSolicitacaoCompraCadastro.chkScoAutorizaCotacao.Enabled := AutorizaCotacao;

    frmSolicitacaoCompraCadastro.dtSitDataCotacao.Enabled := RealizaCotacao;
    frmSolicitacaoCompraCadastro.dtSitDataFinalizacaoCotacao.Enabled := RealizaCotacao;
    frmSolicitacaoCompraCadastro.edSitPrecoCotacao.Enabled := RealizaCotacao;
    frmSolicitacaoCompraCadastro.edSitPrazoEntrega.Enabled := RealizaCotacao;
    frmSolicitacaoCompraCadastro.cbSitTipoFrete.Enabled := RealizaCotacao;
    // frmSolicitacaoCompraCadastro.edScoNroPedidoVenda.Enabled := RealizaCotacao;
    frmSolicitacaoCompraCadastro.edSitPrazoPagamento.Enabled := RealizaCotacao;
    frmSolicitacaoCompraCadastro.edSitConcluida.Enabled := RealizaCotacao;
    frmSolicitacaoCompraCadastro.cbSitCotacaoAprovada.Enabled := RealizaCotacao;
    frmSolicitacaoCompraCadastro.btIncluirNovoFornecedor.Visible := RealizaCotacao;
    // frmSolicitacaoCompraCadastro.btIncluirNovoFornecedor.Enabled := RealizaCotacao and AutorizacaoDeCotacao() and (not CotacaoAprovada()) ;
    frmSolicitacaoCompraCadastro.btIncluirNovoFornecedor.Enabled := RealizaCotacao and AutorizacaoDeCotacao()  ;

    frmSolicitacaoCompraCadastro.dtSitDataAutorizacaoCompra.Enabled := AutorizaCompra;
    frmSolicitacaoCompraCadastro.cbSitStatusCompra.Enabled := AutorizaCompra;
    frmSolicitacaoCompraCadastro.edSitNroPedidoCompra.Enabled := AutorizaCompra;
    frmSolicitacaoCompraCadastro.chkSitPedidocompra.Enabled := AutorizaCompra;
    frmSolicitacaoCompraCadastro.edSitStatusCompraObs.Enabled := AutorizaCompra;







end;
{
function TfrmSolicitacaoCompra.CotacaoAprovada: Boolean;
begin
  if (frmSolicitacaoCompraCadastro.tbSolicitacaoCompraSCO_CODIGO.AsString = '') or  (frmSolicitacaoCompraCadastro.tbSolicitacaoItemSIT_CODIGO.AsString = '') then
  begin
    Result := False;
    exit;
  end;

  OpenAux('SELECT SIT_COTACAO_APROVADA FROM SOLICITACAO_ITEM ' +
          ' WHERE SCO_CODIGO = ' + frmSolicitacaoCompraCadastro.tbSolicitacaoCompraSCO_CODIGO.AsString +
         // ' AND   SIT_CODIGO <> ' + frmSolicitacaoCompraCadastro.tbSolicitacaoItemSIT_CODIGO.AsString +
          ' AND SIT_COTACAO_APROVADA = ' + QuotedStr('S') );
  if not qAux.IsEmpty then
    Result := True
  else
    Result := False;
end;
 }
procedure TfrmSolicitacaoCompra.ImprimirRelatorioClick(Sender: TObject);
var
  ScoCodigo: string;
begin
  inherited;
  ScoCodigo := VarToStr(cxgrd1DBTableView1.DataController.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1SCO_CODIGO.Index]);
  qSolCompra.Close;
  qSolCompra.SQL.Clear;
  qSolCompra.SQL.Text := 'SELECT se.SET_DESCRICAO, un.UND_DESCRICAO, sc.* ' +
                         ' FROM SOLICITACAO_COMPRA sc ' +
                         ' JOIN SETOR se ON (se.SET_CODIGO = sc.SET_CODIGO) ' +
                         ' LEFT JOIN UND_MEDIDA un ON (un.UND_SIGLA = sc.UND_SIGLA) ' +
                         ' WHERE sc.SCO_CODIGO = ' + ScoCodigo +
                         ' ORDER BY sc.SCO_DATA_SOLICITACAO DESC ';
  qSolCompra.Open;

  qSolCompraItem.Close;
  qSolCompraItem.SQL.Clear;
  qSolCompraItem.SQL.Text := 'SELECT si.*' +
                             ' FROM SOLICITACAO_ITEM si ' +
                             ' WHERE si.SCO_CODIGO = ' + ScoCodigo +
                             ' ORDER BY si.SCO_CODIGO, si.SIT_CODIGO ';
  qSolCompraItem.Open;

  frxSolicitacaoCompraItem.ShowReport();
end;



procedure TfrmSolicitacaoCompra.ImprimirItemRequisicaodeCompras1Click(Sender: TObject);
var
 ADetailDataController: TcxGridDBDataController;
  ARelationIndex, AFocusedIndex, SitCodigo, ScoCodigo: Integer;
begin
  inherited;
  ARelationIndex := TcxGridDBDataController(cxgrd1DBTableView1.DataController).GetDetailActiveRelationIndex(cxgrd1DBTableView1.DataController.FocusedRecordIndex);
  ADetailDataController := TcxGridDataController(cxgrd1DBTableView1.DataController).GetDetailDataController(cxgrd1DBTableView1.DataController.FocusedRecordIndex, ARelationIndex) as TcxGridDBDataController;
  SitCodigo := ADetailDataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1SIT_CODIGO.Index];
  ScoCodigo := ADetailDataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1SCO_CODIGO.Index];
  qSolCompra.Close;
  qSolCompra.SQL.Clear;
  qSolCompra.SQL.Text := 'SELECT se.SET_DESCRICAO, sc.*, un.UND_DESCRICAO ' +
                         ' FROM SOLICITACAO_COMPRA sc ' +
                         ' JOIN SETOR se ON (se.SET_CODIGO = sc.SET_CODIGO) ' +
                         ' LEFT JOIN UND_MEDIDA un ON (un.UND_SIGLA = sc.UND_SIGLA) ' +
                         ' WHERE sc.SCO_CODIGO = ' + IntToStr(ScoCodigo) ;
  qSolCompra.Open;

  qSolCompraItem.Close;
  qSolCompraItem.SQL.Clear;
  qSolCompraItem.SQL.Text := 'SELECT si.*' +
                             ' FROM SOLICITACAO_ITEM si ' +
                             ' WHERE si.SIT_CODIGO = ' + IntToStr(SitCodigo) +
                             ' ORDER BY si.SCO_CODIGO, si.SIT_CODIGO ' ;
  qSolCompraItem.Open;




  frxSolicitacaoCompraItem.ShowReport();



end;

procedure TfrmSolicitacaoCompra.lbAbertaClick(Sender: TObject);
begin
  inherited;
  filtro(1);
end;

procedure TfrmSolicitacaoCompra.lbRejeitadaClick(Sender: TObject);
begin
  inherited;
  filtro(2);
end;



procedure TfrmSolicitacaoCompra.lbAutCotacaoClick(Sender: TObject);
begin
  inherited;
  filtro(3);
end;

procedure TfrmSolicitacaoCompra.lbFinalizadaClick(Sender: TObject);
begin
  inherited;
  filtro(4);
end;

procedure TfrmSolicitacaoCompra.lbAutcompraClick(Sender: TObject);
begin
  inherited;
  filtro(5);
end;

procedure TfrmSolicitacaoCompra.lbConcluidaClick(Sender: TObject);
begin
  inherited;
  filtro(6);
end;

procedure TfrmSolicitacaoCompra.lbCanceladaClick(Sender: TObject);
begin
  inherited;
  filtro(7);
end;


procedure TfrmSolicitacaoCompra.EnviarItemporemail1Click(Sender: TObject);
var emldest, ArquivoAnexo, DataSolicitacao, DataEntrega, dt, char, nomeBase: string ;
    msg, anexo: TStringList;
    ADetailDataController: TcxGridDBDataController;
    ARelationIndex, AFocusedIndex, SitCodigo, ScoCodigo, j: Integer;
begin
  inherited;
  if MessageDlg('Confirma o envio do e-mail?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
    exit;

  ARelationIndex := TcxGridDBDataController(cxgrd1DBTableView1.DataController).GetDetailActiveRelationIndex(cxgrd1DBTableView1.DataController.FocusedRecordIndex);
  ADetailDataController := TcxGridDataController(cxgrd1DBTableView1.DataController).GetDetailDataController(cxgrd1DBTableView1.DataController.FocusedRecordIndex, ARelationIndex) as TcxGridDBDataController;
  SitCodigo := ADetailDataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1SIT_CODIGO.Index];
  ScoCodigo := ADetailDataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1SCO_CODIGO.Index];

  try
    CreateDirectory(PWideChar(dbInicio.SistemaLocal+'pedidosCompra'), nil);
  except
    raise Exception.Create('Error - não é possível criar o diretório');
  end;

  PanelAguarde.Visible := True;

  qSolCompra.Close;
  qSolCompra.SQL.Clear;
  qSolCompra.SQL.Text := 'SELECT se.SET_DESCRICAO, sc.*, un.UND_DESCRICAO ' +
                         ' FROM SOLICITACAO_COMPRA sc ' +
                         ' JOIN SETOR se ON (se.SET_CODIGO = sc.SET_CODIGO) ' +
                         ' LEFT JOIN UND_MEDIDA un ON (un.UND_SIGLA = sc.UND_SIGLA) ' +
                         ' WHERE sc.SCO_CODIGO = ' + IntToStr(ScoCodigo) ;
  qSolCompra.Open;

  qSolCompraItem.Close;
  qSolCompraItem.SQL.Clear;
  qSolCompraItem.SQL.Text := 'SELECT si.* ' +
                             ' FROM SOLICITACAO_ITEM si ' +
                             ' WHERE si.SIT_CODIGO = ' + IntToStr(SitCodigo);
  qSolCompraItem.Open;

  dt := qSolCompra.FieldByName('SCO_DATA_SOLICITACAO').AsString;;
  DataSolicitacao := copy(dt, 7,4) + copy(dt, 4,2) + copy(dt, 1, 2);
  dt := qSolCompra.FieldByName('SCO_DATA_ENTREGA').AsString;;
  DataEntrega := copy(dt, 1,2) + '-' + copy(dt, 4,2) + '-' + copy(dt, 7, 4);
  ArquivoAnexo := dbInicio.SistemaLocal+'pedidosCompra\' +
    DataSolicitacao + '-' +
    strzero(IntToStr(ScoCodigo), 6) + '-' +
    strzero(IntToStr(SitCodigo), 6) + '-' +
    qSolCompraItem.FieldByName('FOR_RAZAO').AsString + '-' +
    DataEntrega;
  nomeBase := ArquivoAnexo;
  if FileExists(ArquivoAnexo + '.pdf') then
  begin
    for j := 65 to 90 do
    begin
      char := chr(j);
      if FileExists(NomeBase + char + '.pdf') then
        continue
      else
      begin
        ArquivoAnexo := nomeBase + char;
        if not FileExists(ArquivoAnexo + '.pdf') then
          break;
      end;
    end;
  end;
  ArquivoAnexo := ArquivoAnexo + '.pdf';

  frxPDFExport1.DefaultPath := dbInicio.SistemaLocal+'pedidosCompra';
  frxPDFExport1.FileName    := ArquivoAnexo;
  frxPDFExport1.ShowDialog  := False;
  frxSolicitacaoCompraItem.PrepareReport();
  frxSolicitacaoCompraItem.Export(frxPDFExport1);

  msg:= TStringList.Create;
  // msg.ContentType := 'text/html';

  // PreparaSMTP();

  if qSolCompraItem.FieldByName('FOR_EMAIL').AsString = '' then
    raise Exception.Create('e-mail do fornecedor não informado');





  with msg do
  begin
    Clear;
    Add('Solicitamos a Cotacao de Precos dos itens relacionados no arquivo em anexo.');
    Add('');
    Add('');
    Add('Atenciosamente.');
    Add('');
    Add('');
    Add(DBInicio.Empresa.RAZAO);
    Add(DBInicio.Empresa.FANTASIA);
    Add(DBInicio.Empresa.FONE);
    Add(DBInicio.Empresa.ENDERECO);
    Add(DBInicio.Empresa.BAIRRO);
    Add(DBInicio.Empresa.CIDADE + ' - ' + DBInicio.Empresa.UF);
    Add(DBInicio.Empresa.CEP);
    Add(DBInicio.Empresa.HOME_PAGE);
    Add(DBInicio.Empresa.EMAILCOMPRA);
  end;
  anexo := TStringList.Create;
  anexo.Add(ArquivoAnexo);
  if enviaMail('Financeiro', DBInicio.Empresa.EMAILCOMPRA, qSolCompraItem.FieldByName('FOR_EMAIL').AsString, 'Solicitação de Cotação', DBInicio.Empresa.EMAILCOMPRA, msg, anexo) then
    ShowMessage('Mensagem enviada com sucesso!');
  exit;

end;

procedure TfrmSolicitacaoCompra.EnviarRelatorioClick(Sender: TObject);
var
  ScoCodigo, ArquivoAnexo, Destinatarios, DataSolicitacao,
  DataEntrega, dt, nomeBase, char, rejeicoes: String;
  msg: tIdMessage;
  j : integer;
begin
  inherited;
  if MessageDlg('Confirma o envio dos e-mails?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
    exit;

  try
    CreateDirectory(PWideChar(dbInicio.SistemaLocal+'pedidosCompra'), nil);
  except
    raise Exception.Create('Error - não é possível criar o diretório');
  end;

  PanelAguarde.Visible := True;

  ScoCodigo := VarToStr(cxgrd1DBTableView1.DataController.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1SCO_CODIGO.Index]);
  qSolCompra.Close;
  qSolCompra.SQL.Clear;
  qSolCompra.SQL.Text := 'SELECT se.SET_DESCRICAO, sc.*, un.UND_DESCRICAO ' +
                         ' FROM SOLICITACAO_COMPRA sc ' +
                         ' JOIN SETOR se ON (se.SET_CODIGO = sc.SET_CODIGO) ' +
                         ' LEFT JOIN UND_MEDIDA un ON (un.UND_SIGLA = sc.UND_SIGLA) ' +
                         ' WHERE sc.SCO_CODIGO = ' + ScoCodigo ;
  qSolCompra.Open;

  qSolCompraItem.Close;
  qSolCompraItem.SQL.Clear;
  qSolCompraItem.SQL.Text := 'SELECT si.* ' +
                             ' FROM SOLICITACAO_ITEM si ' +
                             ' WHERE si.SCO_CODIGO = ' + ScoCodigo ;
  qSolCompraItem.Open;

  // ArquivoAnexo := dbInicio.SistemaLocal+'pedidosCompra\Solicitação Nº' + strzero(ScoCodigo, 6) + '.pdf';


  dt := qSolCompra.FieldByName('SCO_DATA_SOLICITACAO').AsString;;
  DataSolicitacao := copy(dt, 7,4) + copy(dt, 4,2) + copy(dt, 1, 2);
  dt := qSolCompra.FieldByName('SCO_DATA_ENTREGA').AsString;;
  DataEntrega := copy(dt, 1,2) + '-' + copy(dt, 4,2) + '-' + copy(dt, 7, 4);
  ArquivoAnexo := dbInicio.SistemaLocal+'pedidosCompra\' +
    DataSolicitacao + '-' +
    strzero(ScoCodigo, 6) + '-' +
    qSolCompraItem.FieldByName('FOR_RAZAO').AsString + '-' +
    DataEntrega;
  nomeBase := ArquivoAnexo;
  if FileExists(ArquivoAnexo + '.pdf') then
  begin
    for j := 65 to 90 do
    begin
      char := chr(j);
      if FileExists(NomeBase + char + '.pdf') then
        continue
      else
      begin
        ArquivoAnexo := nomeBase + char;
        if not FileExists(ArquivoAnexo + '.pdf') then
          break;
      end;
    end;
  end;
  ArquivoAnexo := ArquivoAnexo + '.pdf';

  frxPDFExport1.DefaultPath := dbInicio.SistemaLocal+'pedidosCompra';
  frxPDFExport1.FileName    := ArquivoAnexo;
  frxPDFExport1.ShowDialog  := False;
  frxSolicitacaoCompraItem.PrepareReport();
  frxSolicitacaoCompraItem.Export(frxPDFExport1);


  msg:= tIdMessage.Create(self);
  // msg.ContentType := 'text/html';
  PreparaSMTP();
  smtp.Connect();


  qAux.Close;
  qAux.SQL.Clear;
  qAux.SQL.Text := 'SELECT DISTINCT si.FOR_EMAIL, si.FOR_RAZAO ' +
                             ' FROM SOLICITACAO_ITEM si ' +
                             ' WHERE si.SCO_CODIGO = ' + ScoCodigo ;
  qAux.Open;
  Destinatarios := #13;
  rejeicoes := #13;
  while not qAux.Eof do
  begin
    if qAux.FieldByName('FOR_EMAIL').AsString = '' then
    begin
      rejeicoes := rejeicoes + qAux.FieldByName('FOR_RAZAO').AsString + #13;
      qAux.Next;
      Continue;
    end;

    with MSG do
    begin
        Clear;
        Subject := 'Solicitação de Cotação';
        Body.Add('Solicitamos a Cotacao de Precos dos itens relacionados no arquivo em anexo.');
        Body.Add('');
        Body.Add('');
        Body.Add('Atenciosamente.');
        Body.Add('');
        Body.Add('');
        Body.Add(DBInicio.Empresa.RAZAO);
        Body.Add(DBInicio.Empresa.FANTASIA);
        Body.Add(DBInicio.Empresa.FONE);
        Body.Add(DBInicio.Empresa.ENDERECO);
        Body.Add(DBInicio.Empresa.BAIRRO);
        Body.Add(DBInicio.Empresa.CIDADE + ' - ' + DBInicio.Empresa.UF);
        Body.Add(DBInicio.Empresa.CEP);
        Body.Add(DBInicio.Empresa.HOME_PAGE);
        Body.Add(DBInicio.Empresa.EMAILCOMPRA);
        From.Address := DBInicio.Empresa.EMAILCOMPRA; //opcional
        From.Name := DBInicio.Empresa.EMAILCOMPRA; //opcional
        Recipients.Add;
        Recipients.Items[0].Address := qAux.FieldByName('FOR_EMAIL').AsString;
        Recipients.Items[0].Name := qAux.FieldByName('FOR_EMAIL').AsString; //opcional
    end;
    TIdAttachmentFile.Create(msg.MessageParts , ArquivoAnexo);
    try
      //    smtp.Connect();
      smtp.Send(MSG);
      //    smtp.Disconnect;
      Destinatarios := Destinatarios + qAux.FieldByName('FOR_RAZAO').AsString + ' - ' + qAux.FieldByName('FOR_EMAIL').AsString + #13;
    except
         on e:exception do
         begin
              ShowMessage('Falha no envio!'+#13+e.message);
              PanelAguarde.Visible := False;
         end;
    end;
    qAux.Next;
  end;
  smtp.Disconnect;
  PanelAguarde.Visible := False;
  if rejeicoes <> #13 then
    ShowMessage('Os Emails para os seguintes fornecedores não foram enviados:' + rejeicoes);
  ShowMessage('Mensagem enviada com sucesso para: ' + Destinatarios);

end;

procedure TfrmSolicitacaoCompra.PreparaSMTP;
begin

  smtp.Disconnect();
  if (DBInicio.Empresa.EmailAutenticacao) then
     smtp.AuthType := satDefault
  else
     smtp.AuthType := satNone;
  smtp.Host := DBInicio.Empresa.EmailHost;
  smtp.Port := StrToInt(DBInicio.Empresa.EmailPorta);
  smtp.IOHandler := SSLSocket;
  smtp.Username:= DBInicio.Empresa.EmailUserName;
  smtp.Password := DBInicio.Empresa.EmailPassworld;
  if (DBInicio.Empresa.EmailRequerConexaoTLS) then
     smtp.UseTLS := utUseRequireTLS
  else
     smtp.UseTLS := utNoTLSSupport;


  if dbInicio.Empresa.EmailRequerConexaoSSL then
  begin

    case dbInicio.Empresa.EmailVersaoSSL of
    1: SSLSocket.SSLOptions.Method := sslvTLSv1;
    2: SSLSocket.SSLOptions.Method := sslvSSLv2;
    3: SSLSocket.SSLOptions.Method := sslvSSLv3;
    end;

    if (dbInicio.Empresa.EmailModoSSL = 'B') then
       SSLSocket.SSLOptions.Mode := sslmBoth
    else
    if (dbInicio.Empresa.EmailModoSSL = 'C') then
       SSLSocket.SSLOptions.Mode := sslmClient
    else
    if (dbInicio.Empresa.EmailModoSSL = 'S') then
       SSLSocket.SSLOptions.Mode := sslmServer
    else
    if (dbInicio.Empresa.EmailModoSSL = 'U') then
       SSLSocket.SSLOptions.Mode := sslmUnassigned;

  end;
end;

procedure TfrmSolicitacaoCompra.StatusCompra(var AText: string);
begin
  {
    0: Não Definido
    1: Em Análise
    2: Em Aprovação
    3: Transmitir
    4: Em Acompanhamento
    5: Concluída
    6: Cancelada
    7: Revisar
  }
  if AText = '' then
    exit;
  case StrToInt(AText) of
    0: AText := 'Não Definido';
    1: AText := 'Em Análise';
    2: AText := 'Em Aprovação';
    3: AText := 'Transmitir';
    4: AText := 'Em Acompanhamento';
    5: AText := 'Concluída';
    6: AText := 'Cancelada';
    7: AText := 'Revisar';
  end;
end;

procedure TfrmSolicitacaoCompra.StatusSolictacao(var AText: string);
begin
    {
      0: Não Definido
      1: Aberta
      2: Rejeitada
      3: Autorização de Cotação
      4: Cotação Finalizada
      5: Autorização de Compra
      6: Concluída
      7: Cancelada
    }
  if AText = '' then
    exit;
  case StrToInt(AText) of
    0: AText := 'Não Definido';
    1: AText := 'Aberta';
    2: AText := 'Rejeitada';
    3: AText := 'Autorização de Cotação';
    4: AText := 'Cotação Finalizada';
    5: AText := 'Autorização de Compra';
    6: AText := 'Concluída';
    7: AText := 'Cancelada';
  end;
end;

procedure TfrmSolicitacaoCompra.InserirItemnoPedidodeCompra1Click(Sender: TObject);
var
    ADetailDataController: TcxGridDBDataController;
    ARelationIndex, AFocusedIndex: Integer;
    SitCodigo, ScoCodigo, OCP_CODIGO, TipoFrete: string;
begin
  inherited;

  ARelationIndex := TcxGridDBDataController(cxgrd1DBTableView1.DataController).GetDetailActiveRelationIndex(cxgrd1DBTableView1.DataController.FocusedRecordIndex);
  ADetailDataController := TcxGridDataController(cxgrd1DBTableView1.DataController).GetDetailDataController(cxgrd1DBTableView1.DataController.FocusedRecordIndex, ARelationIndex) as TcxGridDBDataController;
  SitCodigo := IntToStr(ADetailDataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1SIT_CODIGO.Index]);
  ScoCodigo := IntToStr(ADetailDataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1SCO_CODIGO.Index]);

  qSolCompra.Close;
  qSolCompra.SQL.Clear;
  qSolCompra.SQL.Text := 'SELECT sc.* ' +
                         ' FROM SOLICITACAO_COMPRA sc ' +
                         ' WHERE sc.SCO_CODIGO = ' + ScoCodigo +
                         ' ORDER BY sc.SCO_DATA_SOLICITACAO DESC ';
  qSolCompra.Open;

  qSolCompraItem.Close;
  qSolCompraItem.SQL.Clear;
  qSolCompraItem.SQL.Text := 'SELECT si.* ' +
                             ' FROM SOLICITACAO_ITEM si ' +
                             ' WHERE si.SCO_CODIGO = ' + ScoCodigo +
                             ' AND  si.SIT_CODIGO = ' + SitCodigo +
                             ' ORDER BY si.FOR_CODIGO ';
  qSolCompraItem.Open;

  // se o item não foi aprovado não enviar
  if qSolCompraItem.FieldByName('SIT_COTACAO_APROVADA').AsString <> 'S' then
  begin
    MessageDlg('Este item não teve sua cotação aprovada.', mtError, [mbOK], 0);
    Exit;
  end;

  if MessageDlg('Confirma o envio do item para Pedido de Compra?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
    exit;

  if qSolCompraItem.FieldByName('FOR_CODIGO').AsString = '' then
  begin
    ShowMessage('Código do Fornecedor não Informado.');
    exit;
  end;
  qAux.Close;
  qAux.SQL.Clear;
  qAux.SQL.Text := 'SELECT FOR_CODIGO FROM FOR0000 WHERE FOR_CODIGO = ' + QuotedStr(qSolCompraItem.FieldByName('FOR_CODIGO').AsString);
  qAux.Open;
  if qAux.IsEmpty then
  begin
    ShowMessage('Código do Fornecedor não Encontrado.');
    exit;
  end;

  if qSolCompra.FieldByName('PRD_REFER').AsString = '' then
  begin
    ShowMessage('Referência do Produto não cadastrada.');
    exit;
  end;
  qAux.Close;
  qAux.SQL.Clear;
  qAux.SQL.Text := 'SELECT PRD_REFER FROM PRD0000 WHERE PRD_REFER = ' + QuotedStr(qSolCompra.FieldByName('PRD_REFER').AsString);
  qAux.Open;
  if qAux.IsEmpty then
  begin
    ShowMessage('Referência do Produto não Encontrada.');
    exit;
  end;



  if qSolCompraItem.FieldByName('SIT_TIPO_FRETE').AsString = 'CIF' then
    tipoFrete := QuotedStr('C')
  else
    if qSolCompraItem.FieldByName('SIT_TIPO_FRETE').AsString = 'FOB' then
      tipoFrete := QuotedStr('F')
  else
    tipoFrete := ' NULL ';

  OCP_CODIGO := QuotedStr(strzero(RWFunc.SequenciadorPRC(DataCadastros.SQLConnection1, '001' ,'OCP0000', 'OCP_CODIGO', 0),6));
  qAux.Close;
  qAux.SQL.Clear;
  qAux.SQL.Text := 'INSERT INTO OCP0000 (' +
                    ' OCP_CODIGO, COT_CODIGO, FOR_CODIGO, OCP_DTEMIS, OCP_DTENTREGA,' +
                    ' OCP_REQUERENTE, OCP_TPPAGTO, OCP_OBS, EMP_CODIGO, OCP_TOTAL, OCP_PRAZO ' +
                    ' ) VALUES ('+
                    OCP_CODIGO + ',' +
                    QuotedStr(ScoCodigo) + ',' +
                    QuotedStr(qSolCompraItem.FieldByName('FOR_CODIGO').AsString) + ',' +
                    DateToSQL(qSolCompra.FieldByName('SCO_DATA_SOLICITACAO').AsDateTime) + ',' +
                    DateToSQL(qSolCompra.FieldByName('SCO_DATA_ENTREGA').AsDateTime) + ',' +
                    QuotedStr(qSolCompra.FieldByName('SCO_SOLICITANTE').AsString) + ',' +
                    tipoFrete + ',' +
                    QuotedStr(qSolCompra.FieldByName('SCO_OBSERVACAO').AsString) + ',' +
                    QuotedStr(DBInicio.Empresa.EMP_CODIGO) + ',' +
                    FloatToSQL(qSolCompra.FieldByName('SCO_QTDE_MIN').AsFloat * qSolCompraItem.FieldByName('SIT_PRECO_COTACAO').AsFloat) + ',' +
                    QuotedStr(qSolCompraItem.FieldByName('SIT_PRAZO_PAGAMENTO').AsString) +
                    ')';
  qAux.ExecSQL;
  qAux.Close;
  qAux.SQL.Clear;
  qAux.SQL.Text := 'INSERT INTO OCP_IT01 (' +
                    ' OCP_CODIGO, PRD_REFER, OCI_QTDES, OCI_PRECO, EMP_CODIGO, ' +
                    ' OCI_DESCRICAO, PRD_UND  ' +
                    ' ) VALUES ('+
                    OCP_CODIGO + ',' +
                    QuotedStr(qSolCompra.FieldByName('PRD_REFER').AsString) + ',' +
                    FloatToSQL(qSolCompra.FieldByName('SCO_QTDE_MIN').AsFloat) + ',' +
                    FloatToSQL(qSolCompraItem.FieldByName('SIT_PRECO_COTACAO').AsFloat) + ',' +
                    QuotedStr(DBInicio.Empresa.EMP_CODIGO) + ',' +
                    QuotedStr(qSolCompra.FieldByName('SCO_DESCRICAO_PRODUTO').AsString) + ',' +
                    QuotedStr(qSolCompra.FieldByName('UND_SIGLA').AsString) +
                    ')';
  qAux.ExecSQL;
  ShowMessage('Item inserido com êxito no Pedido de Compra.');
end;

procedure TfrmSolicitacaoCompra.InserirTodososItensnoPedidodeCompra1Click(Sender: TObject);
var
  ScoCodigo, forCodigo, tipoFrete, OCP_CODIGO: string;
begin
  inherited;
  if MessageDlg('Confirma o envio dos itens para Pedido de Compra?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
    exit;

  ScoCodigo := VarToStr(cxgrd1DBTableView1.DataController.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1SCO_CODIGO.Index]);
  qSolCompra.Close;
  qSolCompra.SQL.Clear;
  qSolCompra.SQL.Text := 'SELECT se.SET_DESCRICAO, sc.SCO_SOLICITANTE, sc.SCO_DATA_SOLICITACAO, ' +
                         ' sc.SCO_OBSERVACAO, sc.SCO_CODIGO, sc.SET_CODIGO ' +
                         ' FROM SOLICITACAO_COMPRA sc ' +
                         ' JOIN SETOR se ON (se.SET_CODIGO = sc.SET_CODIGO) ' +
                         ' WHERE sc.SCO_CODIGO = ' + ScoCodigo +
                         ' ORDER BY sc.SCO_DATA_SOLICITACAO DESC ';
  qSolCompra.Open;

  qSolCompraItem.Close;
  qSolCompraItem.SQL.Clear;
  qSolCompraItem.SQL.Text := 'SELECT si.*, un.UND_DESCRICAO ' +
                             ' FROM SOLICITACAO_ITEM si ' +
                             ' LEFT JOIN UND_MEDIDA un ON (un.UND_SIGLA = si.UND_SIGLA) ' +
                             ' WHERE si.SCO_CODIGO = ' + ScoCodigo +
                             ' ORDER BY si.FOR_CODIGO ';
  qSolCompraItem.Open;

  forCodigo := '';
  while not qSolCompraItem.Eof do
  begin
    if qSolCompraItem.FieldByName('SIT_TIPO_FRETE').AsString = 'CIF' then
      tipoFrete := QuotedStr('C')
    else
      if qSolCompraItem.FieldByName('SIT_TIPO_FRETE').AsString = 'FOB' then
        tipoFrete := QuotedStr('F')
    else
      tipoFrete := ' NULL ';

    if forCodigo <> qSolCompraItem.FieldByName('FOR_CODIGO').AsString then
    begin
      OCP_CODIGO := QuotedStr(strzero(RWFunc.SequenciadorPRC(DataCadastros.SQLConnection1, '001' ,'OCP0000', 'OCP_CODIGO', 0),6));
      qAux.Close;
      qAux.SQL.Clear;
      qAux.SQL.Text := 'INSERT INTO OCP0000 (' +
                        ' OCP_CODIGO, COT_CODIGO, FOR_CODIGO, OCP_DTEMIS, OCP_DTENTREGA,' +
                        ' OCP_REQUERENTE, OCP_TPPAGTO, OCP_OBS, EMP_CODIGO, OCP_PRAZO ' +
                        ' ) VALUES ('+
                        OCP_CODIGO + ',' +
                        QuotedStr(ScoCodigo) + ',' +
                        QuotedStr(qSolCompraItem.FieldByName('FOR_CODIGO').AsString) + ',' +
                        DateToSQL(qSolCompra.FieldByName('SCO_DATA_SOLICITACAO').AsDateTime) + ',' +
                        DateToSQL(qSolCompra.FieldByName('SCO_DATA_ENTREGA').AsDateTime) + ',' +
                        QuotedStr(qSolCompra.FieldByName('SCO_SOLICITANTE').AsString) + ',' +
                        tipoFrete + ',' +
                        QuotedStr(qSolCompra.FieldByName('SCO_OBSERVACAO').AsString) + ',' +
                        QuotedStr(DBInicio.Empresa.EMP_CODIGO) + ',' +
                        QuotedStr(qSolCompraItem.FieldByName('SIT_PRAZO_ENTREGA').AsString) +
                        ')';
      qAux.ExecSQL;
    end;
    qAux.Close;
    qAux.SQL.Clear;
    qAux.SQL.Text := 'INSERT INTO OCP_IT01 (' +
                      ' OCP_CODIGO, PRD_REFER, OCI_QTDES, OCI_PRECO, EMP_CODIGO, ' +
                      ' OCI_DESCRICAO, PRD_UND ' +
                      ' ) VALUES ('+
                      OCP_CODIGO + ',' +
                      QuotedStr(qSolCompraItem.FieldByName('PRD_REFER').AsString) + ',' +
                      qSolCompraItem.FieldByName('SIT_QTDE_MIN').AsString + ',' +
                      FloatToSQL(qSolCompraItem.FieldByName('SIT_PRECO_COTACAO').AsFloat) + ',' +
                      QuotedStr(DBInicio.Empresa.EMP_CODIGO) + ',' +
                      QuotedStr(qSolCompraItem.FieldByName('SIT_DESCRICAO_PRODUTO').AsString) + ',' +
                      QuotedStr(qSolCompraItem.FieldByName('UND_SIGLA').AsString) +
                      ')';
    qAux.ExecSQL;
    forCodigo := qSolCompraItem.FieldByName('FOR_CODIGO').AsString;
    qSolCompraItem.Next;
  end;

end;

end.
