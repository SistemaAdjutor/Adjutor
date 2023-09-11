unit uDevolucaoNotaEntrada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDbEstoqueForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora, Vcl.StdCtrls, Vcl.Mask, RxToolEdit,
  RxCurrEdit, Vcl.ExtCtrls, SgDbSeachComboUnit, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxCheckBox, Vcl.Buttons, cxMaskEdit, Datasnap.DBClient,
  Datasnap.Provider, Vcl.Menus;

type
  TfrmDevolucaoNotaEntrada = class(TfrmBaseDbEstoque)
    Panel1: TPanel;
    Label1: TLabel;
    lbFornecedor: TLabel;
    Label2: TLabel;
    lbNotaFiscal: TLabel;
    lbSerie: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lbDataEntrada: TLabel;
    GroupBox1: TGroupBox;
    CurTotalBaseICMS: TCurrencyEdit;
    Label6: TLabel;
    Label7: TLabel;
    CurTotalValorICMS: TCurrencyEdit;
    Label5: TLabel;
    CurTotalBaseICMSST: TCurrencyEdit;
    Label8: TLabel;
    CurTotalValorICMSST: TCurrencyEdit;
    Label9: TLabel;
    CurFrete: TCurrencyEdit;
    Label10: TLabel;
    CurrVlSeguro: TCurrencyEdit;
    CurrVlDespesas: TCurrencyEdit;
    Label11: TLabel;
    Label12: TLabel;
    CurTotalValorIPI: TCurrencyEdit;
    Label14: TLabel;
    Label13: TLabel;
    CurrTotalNota: TCurrencyEdit;
    Curr_Valor_Produtos: TCurrencyEdit;
    qCfop: TSQLQuery;
    edCfop: TSgDbSearchCombo;
    Label15: TLabel;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    Panel3: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qNF: TFDQuery;
    dsNF: TDataSource;
    qNFENF_REGISTRO: TIntegerField;
    qNFENF_IT_NOTANUMBER: TStringField;
    qNFPRD_CODIGO: TStringField;
    qNFENF_QTDE_PEDIDO_COMPRA: TFMTBCDField;
    qNFOCI_REGISTRO: TIntegerField;
    qNFPRD_DESCRI: TStringField;
    qNFOCP_CODIGO: TStringField;
    qNFFOR_CODIGO: TStringField;
    qNFPCX_CODIGO: TStringField;
    qNFENF_QTDE: TFMTBCDField;
    qNFENF_PRECO: TFMTBCDField;
    qNFCST_IPI: TStringField;
    qNFENF_IT_BASEIPI: TFMTBCDField;
    qNFENF_IPIALIQ: TFMTBCDField;
    qNFENF_IT_VLIPI: TFMTBCDField;
    qNFSTB_TRIBUTACAO: TStringField;
    qNFENF_IT_BASEICMS: TFMTBCDField;
    qNFENF_ICMSALIQ: TFMTBCDField;
    qNFENF_ICMS: TFMTBCDField;
    qNFENF_IT_BASESUBTRIB: TFMTBCDField;
    qNFENF_IT_ALIQSUBTRIB: TFMTBCDField;
    qNFENF_VLSUBST: TFMTBCDField;
    qNFCST_PIS: TStringField;
    qNFENF_BASEPIS: TFMTBCDField;
    qNFENF_IT_ALIQPIS: TFMTBCDField;
    qNFENF_IT_VLPIS: TFMTBCDField;
    qNFCST_COFINS: TStringField;
    qNFENF_BASECOFINS: TFMTBCDField;
    qNFENF_IT_ALIQCOFINS: TFMTBCDField;
    qNFENF_IT_VLCOFINS: TFMTBCDField;
    qNFENF_ATUALIZA_PRECO: TStringField;
    qNFENF_ATUALIZA_ESTOQUE: TStringField;
    qNFENF_LOTE: TStringField;
    qNFENF_CFOP: TStringField;
    qNFENF_ORIGEM_MERCADORIA: TIntegerField;
    qNFAMX_CODIGO: TStringField;
    qNFAMX_DESCRI: TStringField;
    qNFPRD_ESTOQUE: TFMTBCDField;
    qNFPRD_ENTRADA: TFMTBCDField;
    qNFENF_UNIDADE_TRABALHO: TFMTBCDField;
    qNFREPETICAO_REFER: TIntegerField;
    qNFPRD_ALIQICM: TFMTBCDField;
    qNFPRD_SAIDA: TFMTBCDField;
    qNFENF_IT_DESCTO: TFMTBCDField;
    qNFPRDL_REGISTRO: TIntegerField;
    qNFENF_IT_VALFRETE: TFMTBCDField;
    qNFENF_IT_VLSEGURO: TFMTBCDField;
    qNFENF_IT_VLDESP_ACES: TFMTBCDField;
    qNFENF_UCOM: TStringField;
    qNFENF_UTRIB: TStringField;
    qNFENF_QTDE_ORIGINAL: TFMTBCDField;
    qNFENF_PRECO_ORIGINAL: TFMTBCDField;
    qNFENF_PTOTAL_ORIGINAL: TFMTBCDField;
    cxGrid1DBTableView1ENF_REGISTRO: TcxGridDBColumn;
    cxGrid1DBTableView1ENF_IT_NOTANUMBER: TcxGridDBColumn;
    cxGrid1DBTableView1PRD_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1PRD_REFER: TcxGridDBColumn;
    cxGrid1DBTableView1ENF_QTDE_PEDIDO_COMPRA: TcxGridDBColumn;
    cxGrid1DBTableView1OCI_REGISTRO: TcxGridDBColumn;
    cxGrid1DBTableView1PRD_DESCRI: TcxGridDBColumn;
    cxGrid1DBTableView1OCP_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1FOR_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1PCX_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1ENF_QTDE: TcxGridDBColumn;
    cxGrid1DBTableView1ENF_PRECO: TcxGridDBColumn;
    cxGrid1DBTableView1CST_IPI: TcxGridDBColumn;
    cxGrid1DBTableView1ENF_IT_BASEIPI: TcxGridDBColumn;
    cxGrid1DBTableView1ENF_IPIALIQ: TcxGridDBColumn;
    cxGrid1DBTableView1ENF_IT_VLIPI: TcxGridDBColumn;
    cxGrid1DBTableView1STB_TRIBUTACAO: TcxGridDBColumn;
    cxGrid1DBTableView1ENF_IT_BASEICMS: TcxGridDBColumn;
    cxGrid1DBTableView1ENF_ICMSALIQ: TcxGridDBColumn;
    cxGrid1DBTableView1ENF_ICMS: TcxGridDBColumn;
    cxGrid1DBTableView1ENF_IT_BASESUBTRIB: TcxGridDBColumn;
    cxGrid1DBTableView1ENF_IT_ALIQSUBTRIB: TcxGridDBColumn;
    cxGrid1DBTableView1ENF_VLSUBST: TcxGridDBColumn;
    cxGrid1DBTableView1CST_PIS: TcxGridDBColumn;
    cxGrid1DBTableView1ENF_BASEPIS: TcxGridDBColumn;
    cxGrid1DBTableView1ENF_IT_ALIQPIS: TcxGridDBColumn;
    cxGrid1DBTableView1ENF_IT_VLPIS: TcxGridDBColumn;
    cxGrid1DBTableView1CST_COFINS: TcxGridDBColumn;
    cxGrid1DBTableView1ENF_BASECOFINS: TcxGridDBColumn;
    cxGrid1DBTableView1ENF_IT_ALIQCOFINS: TcxGridDBColumn;
    cxGrid1DBTableView1ENF_IT_VLCOFINS: TcxGridDBColumn;
    cxGrid1DBTableView1ENF_ATUALIZA_PRECO: TcxGridDBColumn;
    cxGrid1DBTableView1ENF_ATUALIZA_ESTOQUE: TcxGridDBColumn;
    cxGrid1DBTableView1ENF_LOTE: TcxGridDBColumn;
    cxGrid1DBTableView1ENF_CFOP: TcxGridDBColumn;
    cxGrid1DBTableView1ENF_ORIGEM_MERCADORIA: TcxGridDBColumn;
    cxGrid1DBTableView1AMX_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1AMX_DESCRI: TcxGridDBColumn;
    cxGrid1DBTableView1PRD_ESTOQUE: TcxGridDBColumn;
    cxGrid1DBTableView1PRD_ENTRADA: TcxGridDBColumn;
    cxGrid1DBTableView1ENF_UNIDADE_TRABALHO: TcxGridDBColumn;
    cxGrid1DBTableView1REPETICAO_REFER: TcxGridDBColumn;
    cxGrid1DBTableView1PRD_ALIQICM: TcxGridDBColumn;
    cxGrid1DBTableView1PRD_SAIDA: TcxGridDBColumn;
    cxGrid1DBTableView1ENF_IT_DESCTO: TcxGridDBColumn;
    cxGrid1DBTableView1PRDL_REGISTRO: TcxGridDBColumn;
    cxGrid1DBTableView1ENF_IT_VALFRETE: TcxGridDBColumn;
    cxGrid1DBTableView1ENF_IT_VLSEGURO: TcxGridDBColumn;
    cxGrid1DBTableView1ENF_IT_VLDESP_ACES: TcxGridDBColumn;
    cxGrid1DBTableView1ENF_UCOM: TcxGridDBColumn;
    cxGrid1DBTableView1ENF_UTRIB: TcxGridDBColumn;
    cxGrid1DBTableView1ENF_QTDE_ORIGINAL: TcxGridDBColumn;
    cxGrid1DBTableView1ENF_PRECO_ORIGINAL: TcxGridDBColumn;
    cxGrid1DBTableView1ENF_PTOTAL_ORIGINAL: TcxGridDBColumn;
    qNFPRD_REFER: TStringField;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    Label16: TLabel;
    cxGrid1DBTableView1ENF_IT_QUANTIDADE_DEVOLVIDA: TcxGridDBColumn;
    qNFSELECIONADO: TIntegerField;
    cxGrid1DBTableView1SELECIONADO: TcxGridDBColumn;
    qNFENF_IT_QUANTIDADE_DEVOLVIDA: TFMTBCDField;
    qNFENF_CHAVE_NFE: TStringField;
    edChave: TEdit;
    Label17: TLabel;
    qNFPRD_PRODSERV: TStringField;
    mmObservacoes: TMemo;
    pmSeleciona: TPopupMenu;
    MarcarTodos1: TMenuItem;
    DesmarcarTodos1: TMenuItem;
    InverterSeleo1: TMenuItem;
    cxGrid1DBTableView1ENF_PRECO1: TcxGridDBColumn;
    cxGrid1DBTableView1ENF_CHAVE_NFE: TcxGridDBColumn;
    cxGrid1DBTableView1PRD_PRODSERV: TcxGridDBColumn;
    cxGrid1DBTableView1ENF_IT_QUANTIDADE_A_DEVOLVER: TcxGridDBColumn;
    qNFENF_IT_QUANTIDADE_A_DEVOLVER: TFMTBCDField;
    RepositorioDeEstilos: TcxStyleRepository;
    Amarelo: TcxStyle;
    qNFENF_BASEICMS: TFMTBCDField;
    qNFENF_VLBASESUBTRIB: TFMTBCDField;
    qNFENF_VL_SUBTRIB: TFMTBCDField;
    qNFENF_VL_IPI: TFMTBCDField;
    qNFENF_BASE_IPI: TFMTBCDField;
    qNFENF_VLPIS: TFMTBCDField;
    qNFENF_VLCOFINS: TFMTBCDField;
    qNFENF_ALIQCOFINS: TFMTBCDField;
    qNFENF_ALIQPIS: TFMTBCDField;
    qNFPED_CODIGO: TStringField;
    procedure Bit_CancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Bit_SairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid1DBTableView1SELECIONADOPropertiesChange(Sender: TObject);
    procedure Bit_GravarClick(Sender: TObject);
    procedure MarcarTodos1Click(Sender: TObject);
    procedure DesmarcarTodos1Click(Sender: TObject);
    procedure InverterSeleo1Click(Sender: TObject);
    procedure cxGrid1DBTableView1ENF_IT_QUANTIDADE_A_DEVOLVERPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
  private
    procedure IniciaValores;
    procedure carregaNF;
    procedure GravaPedidoDevolucao;
    procedure GravaItensDevolucao;
    procedure InsereEnfDevolucao;
    procedure InsereEnfItDevolucao;
    var
      PedidoCodigo: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDevolucaoNotaEntrada: TfrmDevolucaoNotaEntrada;

implementation

uses Nfs0001, InicioDB, Uteis, uPedidoDAO, RWFunc;

{$R *.dfm}

procedure TfrmDevolucaoNotaEntrada.Bit_CancelarClick(Sender: TObject);
begin
  inherited;
  IniciaValores;
end;

procedure TfrmDevolucaoNotaEntrada.Bit_GravarClick(Sender: TObject);
begin
  inherited;
  if edCfop.idRetorno = '' then
  begin
    MessageDlg('Escolha a CFOP de Retorno.', mtWarning, [mbOk], 0);
    Exit;
  end;
  if MessageDlg('Deseja Gravar os Itens Devolvidos?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes  then
    Exit;

  GravaPedidoDevolucao;

  MessageDlg('Pedido ' + PedidoCodigo + ' de devolução gravado com sucesso', mtWarning, [mbOK], 0);
  ModalResult := mrOk;
  Close;
end;


procedure TfrmDevolucaoNotaEntrada.Bit_SairClick(Sender: TObject);
begin
  inherited;
  Close;
end;



procedure TfrmDevolucaoNotaEntrada.cxGrid1DBTableView1ENF_IT_QUANTIDADE_A_DEVOLVERPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
  recNo: TBookMark;
  BaseProduto, BaseTotalProdutos, BaseICMS, ValorICMS, BaseICMSST, ValorICMSST, BaseIPI, TotalIPI: Double;
begin
  inherited;
  if DisplayValue = 0 then
    Exit;
  if cxGrid1DBTableView1.DataController.Controller.SelectedRecords[0].Values[cxGrid1DBTableView1SELECIONADO.Index] <> 1 then
  begin
    Error := True;
    ErrorText := 'Selecione o item para Devolução';
    DisplayValue := 0;
    Exit;
  end;
  if VarToBcd(DisplayValue) > VarToBcd(cxGrid1DBTableView1.DataController.Controller.SelectedRecords[0].Values[cxGrid1DBTableView1ENF_QTDE.Index])  then
  begin
    Error := True;
    ErrorText := 'Quantidade devolvida é maior que a quantidade entrada na NF';
    DisplayValue := 0;
    Exit;
  end;

  if not (qNF.State in dsEditModes) then
    qNF.Edit;
  qNFENF_IT_QUANTIDADE_A_DEVOLVER.AsFloat := DisplayValue;
  qNF.Post;

  BaseICMS := 0;
  ValorICMS := 0;
  BaseICMSST := 0;
  ValorICMSST := 0;
  TotalIPI := 0;
  // BaseProduto := 0;
  BaseTotalProdutos := 0;
  BaseIPI := 0;

  qNF.DisableControls;
  recNo := qNF.GetBookmark;
  qNF.First;
  while not qNF.Eof do
  begin
    if qNFSELECIONADO.AsInteger <> 1 then
    begin
      qNF.Next;
      Continue;
    end;

    BaseProduto := qNFENF_PRECO_ORIGINAL.AsFloat * qNFENF_IT_QUANTIDADE_A_DEVOLVER.AsFloat;
    BaseTotalProdutos := BaseTotalProdutos + BaseProduto;

    BaseICMS := BaseICMS + BaseProduto;
    ValorICMS := ValorICMS + (BaseProduto / 100) * qNFENF_ICMSALIQ.AsFloat;

    BaseICMSST := BaseICMSST + BaseProduto;
    ValorICMSST := ValorICMSST + (BaseProduto / 100) * qNFENF_IT_ALIQSUBTRIB.AsFloat;

    BaseIPI := BaseIPI + BaseProduto;
    TotalIPI := TotalIPI + (BaseProduto / 100) * qNFENF_IPIALIQ.AsFloat;

    qNF.Next;
  end;

  CurTotalBaseICMS.Value := BaseICMS;
  CurTotalValorICMS.Value := ValorICMS;
  CurTotalBaseICMSST.Value := BaseICMSST;
  CurTotalValorICMSST.Value := ValorICMSST;
  CurTotalValorIPI.Value := TotalIPI;

  Curr_Valor_Produtos.Value := BaseTotalProdutos;
  CurrTotalNota.Value := BaseTotalProdutos;



  if recNo <> Null  then
    if qNF.BookmarkValid(recNo) then
      qNF.GotoBookmark(recNo);
  qNF.EnableControls;
end;

procedure TfrmDevolucaoNotaEntrada.cxGrid1DBTableView1SELECIONADOPropertiesChange(Sender: TObject);
begin
  inherited;
  if not (qNF.State in dsEditModes) then
    qNF.Edit;
  if cxGrid1DBTableView1.DataController.Controller.SelectedRecords[0].Values[cxGrid1DBTableView1SELECIONADO.Index] = null then
    qNFSELECIONADO.AsInteger := 1
  else
  if cxGrid1DBTableView1.DataController.Controller.SelectedRecords[0].Values[cxGrid1DBTableView1SELECIONADO.Index] = 0 then
    qNFSELECIONADO.AsInteger := 1
  else
  if cxGrid1DBTableView1.DataController.Controller.SelectedRecords[0].Values[cxGrid1DBTableView1SELECIONADO.Index] = 1 then
    qNFSELECIONADO.AsInteger := 0;
  qNF.Post;
end;

procedure TfrmDevolucaoNotaEntrada.DesmarcarTodos1Click(Sender: TObject);
var
  bm: TBookmark;
begin
  inherited;
  qNF.DisableControls;
  bm := qNF.GetBookmark;
  qNF.First;
  while not qNF.Eof do
  begin
    if not (qNF.State in dsEditModes) then
      qNF.Edit;
    qNFSELECIONADO.AsInteger := 0;
    qNF.Post;
    qNF.Next;
  end;
  qNF.GotoBookmark(bm);
  qNF.EnableControls;
end;

procedure TfrmDevolucaoNotaEntrada.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  frmDevolucaoNotaEntrada := nil;
end;

procedure TfrmDevolucaoNotaEntrada.FormCreate(Sender: TObject);
begin
  inherited;
  IniciaValores;
end;

procedure TfrmDevolucaoNotaEntrada.IniciaValores;
begin
  edCfop.WherePersonalizado := ' WHERE OPE_TIPO_OPERACAO = ''D''';

  lbFornecedor.Caption := FormNfEntrada.PesqFornecedor.Text;
  lbNotaFiscal.Caption := FormNfEntrada.EdtNota.Text;
  lbSerie.Caption := FormNfEntrada.DBeENF_SERIE.Text;
  lbDataEntrada.Caption := DateToStr(FormNfEntrada.DbeENF_EMISSAO.Date);
  edChave.Text := FormNfEntrada.DbeChaveNFe.Text;
  mmObservacoes.Lines.Clear;
  mmObservacoes.Lines.Add('Devolução referente à NF. Nº ' + lbNotaFiscal.Caption + ' emitida em ' + FormNfEntrada.DbeENF_EMISSAO.Text);
  mmObservacoes.Lines.Add('Chave ' + edChave.Text);

  CarregaNF;

end;

procedure TfrmDevolucaoNotaEntrada.InverterSeleo1Click(Sender: TObject);
var
  bm: TBookmark;
begin
  inherited;
  qNF.DisableControls;
  bm := qNF.GetBookmark;
  qNF.First;
  while not qNF.Eof do
  begin
    if not (qNF.State in dsEditModes) then
      qNF.Edit;
    qNFSELECIONADO.AsInteger := iif(qNFSELECIONADO.AsInteger = 1, 0, 1);
    qNF.Post;
    qNF.Next;
  end;
  qNF.GotoBookmark(bm);
  qNF.EnableControls;
end;

procedure TfrmDevolucaoNotaEntrada.MarcarTodos1Click(Sender: TObject);
var
  bm: TBookmark;
begin
  inherited;
  qNF.DisableControls;
  bm := qNF.GetBookmark;
  qNF.First;
  while not qNF.Eof do
  begin
    if not (qNF.State in dsEditModes) then
      qNF.Edit;
    qNFSELECIONADO.AsInteger := 1;
    qNF.Post;
    qNF.Next;
  end;
  qNF.GotoBookmark(bm);
  qNF.EnableControls;
end;

procedure TfrmDevolucaoNotaEntrada.carregaNF;
begin
  qNF.Close;
  qNF.SQL.Text :=
      'SELECT ' +
      '  CAST(0 as INTEGER) as SELECIONADO, ' +
      '  pr.PRD_PRODSERV, ' +
      '  pr.PRD_CODIGO, ' +
      '  pr.PRD_ESTOQUE, ' +
      '  pr.PRD_ENTRADA, ' +
      '  pr.PRD_ALIQICM, ' +
      '  pr.PRD_SAIDA, ' +
      '  al.AMX_DESCRI, ' +
      '  e.ENF_ALIQPIS, ' +
      '  e.ENF_ALIQCOFINS, ' +
      '  e.ENF_VLCOFINS, ' +
      '  e.ENF_VLPIS, ' +
      '  e.ENF_BASE_IPI, ' +
      '  e.ENF_VL_IPI, ' +
      '  e.ENF_VL_SUBTRIB, ' +
      '  e.ENF_VLBASESUBTRIB, ' +
      '  e.ENF_BASEICMS, ' +
      '  e.ENF_CHAVE_NFE, ' +
      '  ei.PED_CODIGO, ' +
      '  ei.ENF_IT_QUANTIDADE_DEVOLVIDA, ' +
      '  ei.ENF_IT_QUANTIDADE_A_DEVOLVER, ' +
      '  ei.ENF_REGISTRO, ' +
      '  ei.ENF_IT_NOTANUMBER, ' +
      '  ei.PRD_REFER, ' +
      '  ei.ENF_QTDE_PEDIDO_COMPRA, ' +
      '  ei.OCI_REGISTRO, ' +
      '  ei.PRD_DESCRI, ' +
      '  ei.OCP_CODIGO, ' +
      '  ei.FOR_CODIGO, ' +
      '  ei.PCX_CODIGO, ' +
      '  ei.ENF_QTDE, ' +
      '  ei.ENF_PRECO, ' +
      '  ei.cst_ipi, ' +
      '  ei.enf_it_baseipi, ' +
      '  ei.ENF_IPIALIQ, ' +
      '  ei.enf_it_vlipi, ' +
      '  ei.stb_tributacao, ' +
      '  ei.enf_it_baseicms, ' +
      '  ei.enf_icmsaliq, ' +
      '  ei.ENF_ICMS, ' +
      '  ei.enf_it_basesubtrib, ' +
      '  ei.enf_it_aliqsubtrib, ' +
      '  ei.enf_vlsubst, ' +
      '  ei.cst_pis, ' +
      '  ei.enf_basepis, ' +
      '  ei.enf_it_aliqpis, ' +
      '  ei.enf_it_vlpis, ' +
      '  ei.cst_cofins, ' +
      '  ei.enf_basecofins, ' +
      '  ei.enf_it_aliqcofins, ' +
      '  ei.enf_it_vlcofins, ' +
      '  ei.ENF_ATUALIZA_PRECO, ' +
      '  ei.ENF_ATUALIZA_ESTOQUE, ' +
      '  ei.ENF_LOTE, ' +
      '  ei.ENF_CFOP, ' +
      '  ei.ENF_ORIGEM_MERCADORIA, ' +
      '  ei.AMX_CODIGO, ' +
      '  ei.ENF_UNIDADE_TRABALHO, ' +
      '  ei.REPETICAO_REFER, ' +
      '  ei.ENF_IT_DESCTO, ' +
      '  ei.PRDL_REGISTRO, ' +
      '  ei.enf_it_valfrete, ' +
      '  ei.enf_it_vlseguro, ' +
      '  ei.enf_it_vldesp_aces, ' +
      '  ei.enf_ucom , ' +
      '  ei.ENF_UTRIB, ' +
      '  ei.ENF_QTDE_ORIGINAL, ' +
      '  ei.ENF_PRECO_ORIGINAL, ' +
      '  ei.ENF_PTOTAL_ORIGINAL ' +
      ' FROM ENF_IT01 ei ' +
      ' JOIN ENF0001 e ON (e.ENF_NOTANUMBER = ei.ENF_IT_NOTANUMBER AND e.FOR_CODIGO = ei.FOR_CODIGO) ' +
      ' LEFT JOIN PRD0000 pr ON (ei.PRD_CODIGO = pr.PRD_CODIGO) ' +
      ' LEFT JOIN ALMOX0000 al ON (al.AMX_CODIGO = ei.AMX_CODIGO) ' +
      ' WHERE ei.ENF_IT_NOTANUMBER = '  + QuotedStr(FormNfEntrada.EdtNota.Text) +
      '   AND ei.FOR_CODIGO = ' + QuotedStr(FormNfEntrada.EdtFor_Codigo.Text) +
      '   AND ei.EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo) +
      ' ORDER BY ' +
      '   ei.ENF_REGISTRO ' ;
  if dbInicio.IsDesenvolvimento then
    copyToClipboard(qNF.SQL.Text);
  qNF.Open;

end;

procedure TfrmDevolucaoNotaEntrada.GravaPedidoDevolucao;
var
  fCodEmSeqUnica, sClienteCodigo, sTipoPedidoCodigo, sPrazoCodigo, sVendedorCodigo : String;
begin

  sClienteCodigo := BuscaUmDadoSqlAsString('SELECT FIRST 1 c.CLI_CODIGO  FROM CLI0000 C WHERE C.CLI_CGC = ' + QuotedStr(FormNfEntrada.PesqFornecedor.CDS.FieldByName('for_cgc').asstring));
  if sClienteCodigo = '' then
  begin
    if MessageDlg('Deseja Cadastrar o Fornecedor como Cliente para identificar a devolução?', mtConfirmation, [mbYes, mbNo], 0 ) = mrYes then
    begin
      sClienteCodigo := strzero( dbInicio.GetNextSequence('GEN_CLI0000_CODIGO'), 5 );
      ExecSql( 'INSERT INTO CLI0000 (' +
               ' CLI_CODIGO, CLI_RAZAO, CLI_FANTASIA, CLI_CGC, CLI_UF, CLI_PAIS, CLI_PESSOA, CLI_CLASSE_CLI_FOR, CLI_PORTE, CLI_CONSFINAL, CLI_CONSU_PROPRIO) ' +
               ' VALUES ('+
               QuotedStr( sClienteCodigo) + ',' +
               QuotedStr( FormNfEntrada.PesqFornecedor.Text) + ',' +
               QuotedStr( FormNfEntrada.PesqFornecedor.Text) + ',' +
               QuotedStr( FormNfEntrada.PesqFornecedor.CDS.FieldByName('FOR_CGC').asstring)  + ',' +
               QuotedStr( FormNfEntrada.PesqFornecedor.CDS.FieldByName('FOR_UF').asstring)  + ',' +
               QuotedStr( 'N' ) + ',' +
               QuotedStr( 'J' ) + ',' +
               QuotedStr( 'F' ) + ',' +
               QuotedStr( 'P' ) + ',' +
               QuotedStr( 'N' ) + ',' +
               QuotedStr( 'N' ) +
               ')'
              );
      MessageDlg('Cadastro efetuado com sucesso.', mtInformation, [mbOK], 0 );
    end
    else
    begin
      MessageDlg('Por Favor, cadastre o Fornecedor como Cliente manualmente. Processo Abortado.', mtWarning, [mbYes, mbNo], 0 );
      Abort;
    end;
  end;

  sTipoPedidoCodigo := BuscaUmDadoSqlAsString('SELECT FIRST 1 o.OPV_CODIGO  FROM OPV0000 o WHERE o.OPV_DEVOLUCAO = ''S'' ');
  if sTipoPedidoCodigo = '' then
  begin
    MessageDlg('Não existe Tipo de Pedido Devolução cadastrado no sistema, impossível prosseguir.', mtWarning, [mbok], 0 );
    Abort;
  end;

  sVendedorCodigo := BuscaUmDadoSqlAsString('SELECT FIRST 1 r.REP_CODIGO  FROM REP0000 r WHERE r.REP_CGC = ' + QuotedStr(RetirarMascaraCNPJ_INSC(DBInicio.Empresa.CNPJ_CNPF)));
  if sVendedorCodigo = '' then
  begin
    MessageDlg('Não existe Vendedor cadastrado com o CNPJ da Empresa, impossível prosseguir.', mtWarning, [mbok], 0 );
    Abort;
  end;

  sPrazoCodigo := BuscaUmDadoSqlAsString('SELECT FIRST 1 p.PCL_CODIGO  FROM PCL0000 p WHERE p.PCL_MODALIDADE = 2');
  if sPrazoCodigo = '' then
  begin
    MessageDlg('Não existe Prazo de pagamento cadastrado com a opção SEM PAGAMENTO marcada, impossível prosseguir.', mtWarning, [mbok], 0 );
    Abort;
  end;

  qNF.Filtered := False;
  qNF.Filter := 'SELECIONADO = 1';
  qNF.Filtered := True;

  if qNF.RecordCount = 0 then
  begin
    MessageDlg('Escolha ao menos um item para devolução', mtWarning, [mbok], 0 );
    qNF.Filtered := False;
    Abort;
  end;




  if dbInicio.empresa.fSeqUnicaPed then
    fCodEmSeqUnica := '001'
  Else
    fCodEmSeqUnica := dbInicio.Empresa.EMP_CODIGO;
  PedidoCodigo := StrZero( SequenciadorPRC ( dbInicio.MainDB, fCodEmSeqUnica, 'PED0000', 'PED_CODIGO', 0 ) , 6 );

  GravarPedido(
    '', // sCliConsFinal,
    '', // sCliConsuProprio,
    '', // sIE
    '', // sPedidoOrdemServico
    PedidoCodigo, // sPedidoCodigo
    sTipoPedidoCodigo,
    sClientecodigo, //  sClienteCodigo
    sVendedorCodigo,
    '', // sVendedorInternoCodigo
    sPrazoCodigo, // prazo de pagamento
    '', // sTransportadoraCodigo
    edCfop.idRetorno, //  sCFOPCodigo
    '', // sProjetoObraCodigo
    '', // sTipoFrete //A pagar = 'F' Pago = 'C'
    '', // sNumeroPedidoCliente
    '', // sContatoCliente
    'F', // sSituacao //F = Faturar /P = Parcial /D = Faturado
    '', // sOrsCliente
    '', // sOrsFone
    '', // sOrsFax
    '', // sOrsEmail
    '', // sOrsDiasEntrega
    '', // sOrsDiasValidade
    '', // sOrsEstado
    '', // sFormaPagamento    :String;
    False, // bAplicaDescontoNotaFiscal    :Boolean;
    now, // dDataEntrada,
    now, // dDataSaida    :TDateTime;
    0, // rComissao1,
    0, // rComissao2,
    0, // rComissao3,
    0, // rComissao4,
    0, // rDescontoValor,
    0, // rDescontoPercentual1,
    0, // rDescontoPercentual2,
    CurFrete.Value, // rValorFrete,
    CurrVlDespesas.Value, // rValorDespesas,
    CurrVlSeguro.Value, // rValorSeguro,
    0, // rValorDespesasImportacao,
    CurTotalValorIPI.Value, //  rTotalIPI,
    CurTotalValorICMSST.Value, //  rTotalST,
    CurrTotalNota.Value, //  rTotalValorLiquido,
    Curr_Valor_Produtos.Value, //  rValorTotalBruto          :Currency;
    '', // wsObservacao,
    '', // wsObservacaoProducao,
    mmObservacoes.Text, // wsObservacaoNota,
    '', // sExpUF,
    '', // sExpLocal,
    '', // sExpRecinto:WideString;
    DBInicio.GetNextSequence('gen_id_pedido'), // sIdPedido: integer
    '', // sSitExp: String;
    0, // sEnderEntrega:integer;
    '', // sPlaca:string;
    CurFrete.Value, //  rValorFreteCIF : Currency = 0.0;
    '', // sNFCe_CPF: string = '';
    '', // obsPPAC : string = '';
    0, // Origem : integer =0;
    -1, //scbOrsCliConsfinal : integer =-1 ;
    -1, // srgOrsCliConsuProprio :integer = -1;
    -1, // scbOrsCliRegimeTributario: integer =-1)        :Boolean;
  );
  InsereEnfDevolucao;
  GravaItensDevolucao;
end;

procedure TfrmDevolucaoNotaEntrada.GravaItensDevolucao;
var
  iRetorno, iSequencia: integer;

begin
  qNF.DisableControls;
  qNF.First;
  iSequencia := 0;
  while not qNF.Eof do
  begin
      if qNFENF_ATUALIZA_ESTOQUE.AsString = 'S' then
      begin
        KardexLancamento( qNFENF_REGISTRO.AsString,
                          'DEV',
                          qNFAMX_CODIGO.AsString,
                          '',
                          qNFPRD_CODIGO.AsString,
                          '',//grade
                          '',
                          'S',
                          qNFPRDL_REGISTRO.AsString, // CbLoteProduto.text,
                          qNFPRDL_REGISTRO.AsString, // IIF (CbLoteProduto.EditValue = null,'',CbLoteProduto.EditValue),
                          'DEVOLUÇÃO DE ENTRADA DE ITEM NOTA FISCAL',
                          Now,
                          qNFENF_IT_QUANTIDADE_A_DEVOLVER.AsFloat,
                          FormNfEntrada.EdtNOTA.Text,
                          StrZero(FormNfEntrada.EdtFor_Codigo.Text, FormNfEntrada.EdtFor_Codigo.MaxLength) + '-' + lbFornecedor.Caption,
                          qNFENF_PRECO_ORIGINAL.AsFloat,
                          '',
                          '',
                          '',
                          qNFPRD_REFER.AsString);
      end;

      iRetorno := GravarPedidoItem( 0,
                        qNFENF_UCOM.AsString,
                        PedidoCodigo,
                        qNFPRD_CODIGO.AsString,
                        qNFPRD_REFER.AsString,
                        '', // EdReferenciaOriginal.Text,
                        qNFPRD_DESCRI.AsString,
                        qNFAMX_CODIGO.AsString,
                        '', // Complemento da Descricao
                        '', // Trim(edtPedidoB2B.Text),
                        '', // sTabelaPreco,
                        'N', // IIF(bUsouVerba,'S','N'),
                        qNFENF_ATUALIZA_ESTOQUE.AsString = 'S', // FrmPedido.LblMovimentaEstoque.Caption = 'Movimenta Estoque',
                        False, // CbItemAgregado.Checked,
                        qNFENF_IT_QUANTIDADE_A_DEVOLVER.AsFloat, // CurQuantidade.Value,
                        qNFENF_IT_QUANTIDADE_A_DEVOLVER.AsFloat, // CurQuantidade.Value,
                        0,   // Quantidade Faturada
                        qNFENF_PRECO_ORIGINAL.AsFloat, // iif(ChkSemValor.Checked,0,CurPrecoLiquido.Value),
                        qNFENF_PRECO_ORIGINAL.AsFloat, // iif(ChkSemValor.Checked,0,CurPrecoBruto.Value),
                        qNFENF_PRECO_ORIGINAL.AsFloat, // rCusto,
                        0, // CurMarkup.Value,
                        0, // CurrAcrescimoReal.Value,
                        0, //CurDesconto.Value,
                        0, // CurDescontoAdicional.Value,
                        0, // CurComissao.Value,
                        qNFENF_IPIALIQ.AsFloat,
                        qNFENF_VLSUBST.ASFloat, //  CurValorST.Value,
                        qNFENF_ICMSALIQ.AsFloat, // aliquotaICMS,
                        qNFENF_ICMS.AsFloat, // valorICMS,
                        0, // rValorVerba,
                        0, // IIF(sTipo = 'I',0,iRegistroItemAnterior),
                        StrToInt(DBiNICIO.USUARIO.CODIGO),
                        '', // VariosLote,
                        0, // iGrade,
                        0, // SpinItemB2B.AsInteger,
                        0, // IIF(CbItemAgregado.Checked,regvinculado,0),
                        0, // iDiretiva,
                        DateToSQL(Now), // DateToSQL(PRF_PRAZO_ENTREGA.Date),
                        '', // iif(bprazoitens, edPrazo.Text,'') ,
                        0, // CurrPesoIndividual.Value,
                        0, // qPendenteNova,
                        False, // ChkSemValor.Checked
                        );
     Inc(iSequencia);
     DBInicio.ExecSql('UPDATE PED_IT01 SET PRF_SEQUENCIA = ' + IntToStr(iSequencia) + ' WHERE PRF_REGISTRO =  ' + IntToStr(iRetorno) );

     ExecSql(
        ' UPDATE ENF_IT01 SET ' +
        ' ENF_IT_QUANTIDADE_DEVOLVIDA = ' + FloatToSQL(qNFENF_IT_QUANTIDADE_DEVOLVIDA.AsFloat + qNFENF_IT_QUANTIDADE_A_DEVOLVER.AsFloat) + ',' +
        ' ENF_IT_QUANTIDADE_A_DEVOLVER = ' + FloatToSQL(0)  + ', ' +
        ' PED_CODIGO = ' + QuotedStr(PedidoCodigo) +
        ' WHERE ENF_REGISTRO = '  + qNFENF_REGISTRO.AsString
     );
     InsereEnfItDevolucao;
     qNF.Next;
  end;
  qNF.EnableControls;
end;

procedure TfrmDevolucaoNotaEntrada.InsereEnfDevolucao;
begin
  ExecSql(
      ' INSERT INTO ENF_DEVOLUCAO ( ' +
          'ENF_NOTANUMBER , ' +
          'ENF_SERIE, ' +
          'FOR_CODIGO, ' +
          'EMP_CODIGO, ' +
          'ENF_ENTRADA, ' +
          'OPE_CODIGO, ' +
          'ENF_BASEICMS, ' +
          'ENF_ALIQ_ICMS, ' +
          'ENF_VL_ICMS, ' +
          'ENF_VLBASESUBTRIB, ' +
          'ENF_VL_SUBTRIB, ' +
          'ENF_VL_IPI, ' +
          'ENF_BASE_IPI, ' +
          'ENF_VLPIS, ' +
          'ENF_VLCOFINS, ' +
          'ENF_ALIQCOFINS, ' +
          'ENF_ALIQPIS, ' +
          'ENF_CHAVE_NFESE, ' +
          'PED_CODIGO, ' +
          'USU_CODIGO ' +
      ')' +
      ' VALUES ( +' +
          QuotedStr(qNFENF_IT_NOTANUMBER.AsString) + ', ' +
          QuotedStr(FormNfEntrada.DBeENF_SERIE.Text) + ', ' +
          QuotedStr(FormNfEntrada.EdtFor_Codigo.Text) + ', ' +
          QuotedStr(DBInicio.Emp_Codigo) + ', ' +
          DateToSQL(Now) + ', ' +
          QuotedStr(edCfop.idRetorno) + ', ' +
          FloatToSQL(qNFENF_BASEICMS.AsFloat) + ', ' +
          FloatToSQL(qNFENF_ICMSALIQ.AsFloat) + ', ' +
          FloatToSQL(qNFENF_ICMS.AsFloat) + ', ' +
          FloatToSQL(qNFENF_VLBASESUBTRIB.AsFloat) + ', ' +
          FloatToSQL(qNFENF_VL_SUBTRIB.AsFloat) + ', ' +
          FloatToSQL(qNFENF_VL_IPI.AsFloat) + ', ' +
          FloatToSQL(qNFENF_BASE_IPI.AsFloat) + ', ' +
          FloatToSQL(qNFENF_VLPIS.AsFloat) + ', ' +
          FloatToSQL(qNFENF_VLCOFINS.AsFloat) + ', ' +
          FloatToSQL(qNFENF_ALIQCOFINS.AsFloat) + ', ' +
          FloatToSQL(qNFENF_ALIQPIS.AsFloat) + ', ' +
          QuotedStr(qNFENF_CHAVE_NFE.AsString) + ', ' +
          QuotedStr(PedidoCodigo) + ', ' +
          DBInicio.Usuario.CODIGO +
      ')' 
  );
end;

procedure TfrmDevolucaoNotaEntrada.InsereEnfItDevolucao;
begin
  ExecSql(
      ' INSERT INTO ENF_IT_DEVOLUCAO ( ' +
          'ENF_IT_NOTANUMBER, ' +
          'ENF_SERIE, ' +
          'FOR_CODIGO, ' +
          'EMP_CODIGO, ' +
          'PRD_REFER, ' +
          'PRD_CODIGO, ' +
          'ENF_IT_BASEIPI, ' +
          'ENF_IPIALIQ, ' +
          'ENF_IT_VLIPI, ' +
          'ENF_IT_BASEICMS, ' +
          'ENF_ICMSALIQ, ' +
          'ENF_ICMS, ' +
          'ENF_IT_BASESUBTRIB, ' +
          'ENF_IT_ALIQSUBTRIB, ' +
          'ENF_VLSUBST, ' +
          'ENF_BASEPIS, ' +
          'ENF_IT_ALIQPIS, ' +
          'ENF_IT_VLPIS, ' +
          'ENF_BASECOFINS, ' +
          'ENF_IT_ALIQCOFINS, ' +
          'ENF_IT_VLCOFINS, ' +
          'ENF_IT_VALFRETE, ' +
          'ENF_IT_VLSEGURO, ' +
          'ENF_IT_VLDESP_ACES' +
      ')' +
      ' VALUES ( +' +
          QuotedStr(qNFENF_IT_NOTANUMBER.AsString) + ', ' +
          QuotedStr(FormNfEntrada.DBeENF_SERIE.Text) + ', ' +
          QuotedStr(FormNfEntrada.EdtFor_Codigo.Text) + ', ' +
          QuotedStr(DBInicio.Emp_Codigo) + ', ' +
          QuotedStr(qNFPRD_REFER.AsString) + ', ' +
          QuotedStr(qNFPRD_CODIGO.AsString) + ', ' +
          FloatToSQL(qNFENF_IT_BASEIPI.AsFloat) + ', ' +
          FloatToSQL(qNFENF_IPIALIQ.AsFloat) + ', ' +
          FloatToSQL(qNFENF_IT_VLIPI.AsFloat) + ', ' +
          FloatToSQL(qNFENF_IT_BASEICMS.AsFloat) + ', ' +
          FloatToSQL(qNFENF_ICMSALIQ.AsFloat) + ', ' +
          FloatToSQL(qNFENF_ICMS.AsFloat) + ', ' +
          FloatToSQL(qNFENF_IT_BASESUBTRIB.AsFloat) + ', ' +
          FloatToSQL(qNFENF_IT_ALIQSUBTRIB.AsFloat) + ', ' +
          FloatToSQL(qNFENF_VLSUBST.AsFloat) + ', ' +
          FloatToSQL(qNFENF_BASEPIS.AsFloat) + ', ' +
          FloatToSQL(qNFENF_IT_ALIQPIS.AsFloat) + ', ' +
          FloatToSQL(qNFENF_IT_VLPIS.AsFloat) + ', ' +
          FloatToSQL(qNFENF_BASECOFINS.AsFloat) + ', ' +
          FloatToSQL(qNFENF_IT_ALIQCOFINS.AsFloat) + ', ' +
          FloatToSQL(qNFENF_IT_VLCOFINS.AsFloat) + ', ' +
          FloatToSQL(qNFENF_IT_VALFRETE.AsFloat) + ', ' +
          FloatToSQL(qNFENF_IT_VLSEGURO.AsFloat) + ', ' +
          FloatToSQL(qNFENF_IT_VLDESP_ACES.AsFloat)  +
      ')'
  );

end;



end.
