unit uSolicitacaoCompraCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditDetailFDAC, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, JvValidators,
  JvErrorIndicator, JvComponentBase, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxClasses, cxLocalization, ACBrBase, ACBrEnterTab, Vcl.StdCtrls,
  Vcl.ExtCtrls, SgDbSeachComboUnit, Vcl.Mask, Vcl.DBCtrls, ComboBoxRW, JvExMask, JvToolEdit, Vcl.Grids, Vcl.DBGrids, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, Vcl.Menus;

type
  TfrmSolicitacaoCompraCadastro = class(TfrmBaseDBEditDetailFDAC)
    tbSolicitacaoCompra: TFDTable;
    dsSolicitacaoCompra: TDataSource;
    tbSolicitacaoItem: TFDTable;
    dsSolicitacaoItem: TDataSource;
    pTop: TPanel;
    Label1: TLabel;
    cbSetor: TComboBoxRw;
    edSetorCodigo: TDBEdit;
    edSolicitante: TDBEdit;
    edObservacao: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    dtSolicitacao: TJvDateEdit;
    Label4: TLabel;
    pnSolicitacaoItem: TPanel;
    gbFornecedor: TGroupBox;
    Label8: TLabel;
    cbFornecedor: TComboBoxRw;
    edForCodigo: TDBEdit;
    edForRazao: TDBEdit;
    edFornecedorTelefone: TDBEdit;
    Label9: TLabel;
    edEmail: TDBEdit;
    Label10: TLabel;
    tbUndMedida: TFDTable;
    dsUndMedida: TDataSource;
    btIncluirNovoFornecedor: TButton;
    gbCompra: TGroupBox;
    edSitStatusCompraObs: TDBEdit;
    cbSitStatusCompra: TComboBox;
    Label27: TLabel;
    Label26: TLabel;
    Label19: TLabel;
    edSitNroPedidoCompra: TDBEdit;
    pnDataCotacao: TPanel;
    gbData: TGroupBox;
    Label13: TLabel;
    Label23: TLabel;
    Label28: TLabel;
    dtSitDataCotacao: TJvDateEdit;
    dtSitDataAutorizacaoCompra: TJvDateEdit;
    dtSitDataFinalizacaoCotacao: TJvDateEdit;
    gbCotacao: TGroupBox;
    Label24: TLabel;
    Label20: TLabel;
    Label16: TLabel;
    Label15: TLabel;
    Label14: TLabel;
    edSitConcluida: TDBEdit;
    edSitPrazoPagamento: TDBEdit;
    cbSitTipoFrete: TComboBox;
    edSitPrecoCotacao: TDBEdit;
    chkSitPedidoCompra: TDBCheckBox;
    PopupMenu1: TPopupMenu;
    edSitStatCompraResp: TDBEdit;
    Label30: TLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1SIT_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1SCO_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1FOR_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1FOR_RAZAO: TcxGridDBColumn;
    cxGrid1DBTableView1FOR_FONE: TcxGridDBColumn;
    cxGrid1DBTableView1FOR_EMAIL: TcxGridDBColumn;
    cxGrid1DBTableView1SIT_COTACAO_APROVADA: TcxGridDBColumn;
    cxGrid1DBTableView1SIT_PEDIDO_COMPRA: TcxGridDBColumn;
    cxGrid1DBTableView1SIT_DATA_COTACAO: TcxGridDBColumn;
    cxGrid1DBTableView1SIT_PRECO_COTACAO: TcxGridDBColumn;
    cxGrid1DBTableView1SIT_PRAZO_ENTREGA: TcxGridDBColumn;
    cxGrid1DBTableView1SIT_TIPO_FRETE: TcxGridDBColumn;
    cxGrid1DBTableView1SIT_NRO_PEDIDO_COMPRA: TcxGridDBColumn;
    cxGrid1DBTableView1SIT_PRAZO_PAGAMENTO: TcxGridDBColumn;
    cxGrid1DBTableView1SIT_DATA_FINALIZACAO_COTACAO: TcxGridDBColumn;
    cxGrid1DBTableView1SIT_DATA_AUTORIZACAO_COMPRA: TcxGridDBColumn;
    cxGrid1DBTableView1SIT_CONCLUIDA: TcxGridDBColumn;
    cxGrid1DBTableView1SIT_STATUS_COMPRA: TcxGridDBColumn;
    cxGrid1DBTableView1SIT_STATUS_COMPRA_OBS: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    tbSolicitacaoCompraSCO_CODIGO: TIntegerField;
    tbSolicitacaoCompraSET_CODIGO: TIntegerField;
    tbSolicitacaoCompraSCO_OBSERVACAO: TStringField;
    tbSolicitacaoCompraSCO_DATA_SOLICITACAO: TDateField;
    tbSolicitacaoCompraSCO_SOLICITANTE: TStringField;
    tbSolicitacaoCompraPRD_REFER: TStringField;
    tbSolicitacaoCompraSCO_DESCRICAO_PRODUTO: TStringField;
    tbSolicitacaoCompraUND_SIGLA: TStringField;
    tbSolicitacaoCompraSCO_QTDE_MIN: TFMTBCDField;
    tbSolicitacaoCompraSCO_QTDE_MAX: TFMTBCDField;
    tbSolicitacaoCompraSCO_STATUS_SOLICITACAO: TIntegerField;
    tbSolicitacaoCompraSCO_STAT_SOLICIT_RESP: TStringField;
    tbSolicitacaoItemSIT_CODIGO: TIntegerField;
    tbSolicitacaoItemSCO_CODIGO: TIntegerField;
    tbSolicitacaoItemFOR_CODIGO: TStringField;
    tbSolicitacaoItemFOR_RAZAO: TStringField;
    tbSolicitacaoItemFOR_FONE: TStringField;
    tbSolicitacaoItemFOR_EMAIL: TStringField;
    tbSolicitacaoItemSIT_COTACAO_APROVADA: TStringField;
    tbSolicitacaoItemSIT_PEDIDO_COMPRA: TStringField;
    tbSolicitacaoItemSIT_DATA_COTACAO: TDateField;
    tbSolicitacaoItemSIT_PRECO_COTACAO: TFMTBCDField;
    tbSolicitacaoItemSIT_TIPO_FRETE: TStringField;
    tbSolicitacaoItemSIT_DATA_FINALIZACAO_COTACAO: TDateField;
    tbSolicitacaoItemSIT_DATA_AUTORIZACAO_COMPRA: TDateField;
    tbSolicitacaoItemSIT_CONCLUIDA: TStringField;
    tbSolicitacaoItemSIT_STATUS_COMPRA: TIntegerField;
    tbSolicitacaoItemSIT_STATUS_COMPRA_OBS: TStringField;
    tbSolicitacaoItemSIT_STAT_COMPRA_RESP: TStringField;
    gbProduto: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    cbProduto: TComboBoxRw;
    edPrdRefer: TDBEdit;
    edSitDescricaoProduto: TDBEdit;
    edQtdeMin: TDBEdit;
    edQtdeMax: TDBEdit;
    cbUndMedida: TDBLookupComboBox;
    cxGrid1DBTableView1SIT_STAT_COMPRA_RESP: TcxGridDBColumn;
    Label17: TLabel;
    dtScoDataEntrega: TJvDateEdit;
    tbSolicitacaoCompraSCO_DATA_ENTREGA: TDateField;
    cbSitCotacaoAprovada: TDBRadioGroup;
    btGravarSolicitacao: TButton;
    tbSolicitacaoCompraSCO_DATA_AUTORIZACAO_COTACAO: TDateField;
    tbSolicitacaoCompraSCO_OBSERVACAO_APROVACAO: TStringField;
    gbAutorizaCotacao: TGroupBox;
    Label22: TLabel;
    Label29: TLabel;
    Label25: TLabel;
    Label21: TLabel;
    dtScoDataAutorizacaoCotacao: TJvDateEdit;
    edScoStatSolicitResp: TDBEdit;
    edScoObservacaoAprovacao: TDBEdit;
    cbScoStatusSolicitacao: TComboBox;
    btAtualizarAutorizacao: TButton;
    tbSolicitacaoItemSIT_PRAZO_ENTREGA: TDateField;
    tbSolicitacaoItemSIT_PRAZO_PAGAMENTO: TStringField;
    edSitPrazoEntrega: TJvDateEdit;
    pMiddle: TPanel;
    btGravar: TButton;
    btCancelar: TButton;
    Label31: TLabel;
    Label18: TLabel;
    edScoNroPedidoVenda: TDBEdit;
    tbSolicitacaoCompraSCO_NRO_PEDIDO_VENDA: TStringField;
    tbSolicitacaoItemSIT_NRO_PEDIDO_COMPRA: TStringField;
    tbSolicitacaoItemFOR_CGC: TStringField;
    cxGrid1DBTableView1FOR_CGC: TcxGridDBColumn;
    edFornecedorCNPJ: TDBEdit;
    Label32: TLabel;
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbSetorSelect(Sender: TObject);
    procedure edSetorCodigoExit(Sender: TObject);
    procedure btGravarSolicitacaoClick(Sender: TObject);
    procedure dtSolicitacaoExit(Sender: TObject);
    procedure cbProdutoSelect(Sender: TObject);
    procedure edPrdReferExit(Sender: TObject);
    procedure edForCodigoExit(Sender: TObject);
    procedure cbFornecedorSelect(Sender: TObject);
    procedure dtSitDataCotacaoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbSitTipoFreteChange(Sender: TObject);
    procedure dtScoDataEntregaExit(Sender: TObject);
    procedure cbScoStatusSolicitacaoChange(Sender: TObject);
    procedure dtScoDataAutorizacaoCotacaoExit(Sender: TObject);
    procedure cbSitStatusCompraChange(Sender: TObject);
    procedure dtSitDataAutorizacaoCompraExit(Sender: TObject);
    procedure dtSitDataFinalizacaoCotacaoExit(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btIncluirNovoFornecedorClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure tbSolicitacaoItemAfterScroll(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid1DBTableView1SIT_COTACAO_APROVADAGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
    procedure cxGrid1DBTableView1SIT_AUTORIZA_COTACAOGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
    procedure cxGrid1DBTableView1SIT_STATUS_COMPRAGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
    procedure cxGrid1DBTableView1SIT_TIPO_FRETEGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
    procedure cxGrid1DBTableView1SIT_PEDIDO_COMPRAGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cbSitCotacaoAprovadaChange(Sender: TObject);
    // procedure chkScoAutorizaCotacaoClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btCancelarSolicitacaoClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure edSitPrazoEntregaExit(Sender: TObject);
    procedure edFornecedorCNPJExit(Sender: TObject);
  private
    { Private declarations }
    procedure PegaDadosFornecedor(CodFor: string);
    procedure LimpaCampos();
    procedure VerificaEstadotbSolicitacaoItem();
    procedure HabilitaPaineis(Estado: boolean);
    var  AutorizaCotacao, RealizaCotacao, AutorizaCompra : boolean;
    var RecNo : integer;
  public
    { Public declarations }
    Incluir: boolean;
  end;

var
  frmSolicitacaoCompraCadastro: TfrmSolicitacaoCompraCadastro;

implementation

{$R *.dfm}

uses uteis, InicioDB, uSolicitacaoCompra, RWFunc;


procedure TfrmSolicitacaoCompraCadastro.FormClose(Sender: TObject; var Action: TCloseAction);
var
  nome :string;
begin
  inherited;
  TestaPasta ( dbInicio.SistemaLocal+'settings' );
  nome:= Self.Name + '.cxGrid1DBTableView1.grid';
  cxGrid1DBTableView1.StoreToIniFile(dbInicio.SistemaLocal+'settings\'+nome, True, [gsoUseFilter, gsoUseSummary] );
  Action := caFree;
  frmSolicitacaoCompraCadastro := nil;
  frmSolicitacaoCompra.filtro(frmSolicitacaoCompra.filtrado);

end;

procedure TfrmSolicitacaoCompraCadastro.FormCreate(Sender: TObject);
begin
  inherited;
  tbSolicitacaoCompra.Open;
  tbUndMedida.Open;
end;

procedure TfrmSolicitacaoCompraCadastro.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #27 then
    Self.Close;
end;

procedure TfrmSolicitacaoCompraCadastro.FormResize(Sender: TObject);
begin
  inherited;
  cbProduto.Width := gbProduto.Width - (cbProduto.Left + btGravarSolicitacao.Width);
end;

procedure TfrmSolicitacaoCompraCadastro.FormShow(Sender: TObject);
var
  nome :string;
begin
  inherited;
//  if frmSolicitacaoCompraCadastro.Width < 860 then
//    frmSolicitacaoCompraCadastro.Width := 860;
  edSolicitante.SetFocus;
//  pnSolicitacaoItem.Enabled := False;
  HabilitaPaineis(False);
  frmSolicitacaoCompraCadastro.Caption := 'Gerar Solicitação de Compra';
  nome:= Self.Name + 'form.pos';
  if not FileExists(dbInicio.SistemaLocal+'settings\'+nome) then
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
    if (not AutorizaCotacao) and (not RealizaCotacao) and (not AutorizaCompra) then
    begin
      self.Width := 990;
      self.Height := pTop.Height + Panel1.Height + 80;
    end;
  end
  else  cxGrid1DBTableView1.RestoreFromIniFile(dbInicio.SistemaLocal+'settings\'+ Self.Name + '.cxGrid1DBTableView1.grid', True, True, [gsoUseFilter] );
  cxGrid1DBTableView1.OptionsView.GroupByBox := False;
  if gbAutorizaCotacao.Visible then
    btGravarSolicitacao.Visible := False;
end;

procedure TfrmSolicitacaoCompraCadastro.HabilitaPaineis(Estado: boolean);
begin
  frmSolicitacaoCompra.HabilitaCampos(AutorizaCotacao, RealizaCotacao, AutorizaCompra);
  gbFornecedor.Enabled := Estado;
  pnDataCotacao.Enabled := Estado;
  gbCompra.Enabled := Estado;
  gbAutorizaCotacao.Enabled := AutorizaCotacao;
end;

procedure TfrmSolicitacaoCompraCadastro.LimpaCampos;
begin
  cbFornecedor.Text := '';
  dtSitDataCotacao.Text := '';
  edSitPrazoEntrega.Text := '';
  dtSitDataFinalizacaoCotacao.Text := '';
  dtSitDataAutorizacaoCompra.Text := '';
  chkSitPedidoCompra.Checked := False;
  cbSitTipoFrete.ItemIndex := 0;
  cbSitStatusCompra.ItemIndex := 0;
  cbSitCotacaoAprovada.ItemIndex := -1;
end;

procedure TfrmSolicitacaoCompraCadastro.dtSitDataFinalizacaoCotacaoExit(Sender: TObject);
begin
  inherited;
  VerificaEstadotbSolicitacaoItem();
  tbSolicitacaoItemSIT_DATA_FINALIZACAO_COTACAO.Value := dtSitDataFinalizacaoCotacao.Date;

end;

procedure TfrmSolicitacaoCompraCadastro.dtSitDataAutorizacaoCompraExit(Sender: TObject);
begin
  inherited;
  VerificaEstadotbSolicitacaoItem();
  tbSolicitacaoItemSIT_DATA_AUTORIZACAO_COMPRA.Value := dtSitDataAutorizacaoCompra.Date;

end;

procedure TfrmSolicitacaoCompraCadastro.dtScoDataAutorizacaoCotacaoExit(Sender: TObject);
begin
  inherited;
  //VerificaEstadotbSolicitacaoItem();
  if not (tbSolicitacaoCompra.State in [dsEdit, dsInsert]) then
    tbSolicitacaoCompra.Edit;
  tbSolicitacaoCompraSCO_DATA_AUTORIZACAO_COTACAO.Value := dtScoDataAutorizacaoCotacao.Date;
end;

procedure TfrmSolicitacaoCompraCadastro.btnCancelarClick(Sender: TObject);
begin
  inherited;
  tbSolicitacaoCompra.Cancel;
end;

procedure TfrmSolicitacaoCompraCadastro.btnConfirmarClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmSolicitacaoCompraCadastro.btCancelarSolicitacaoClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmSolicitacaoCompraCadastro.btCancelarClick(Sender: TObject);
var
  AutorizaCotacao, RealizaCotacao, AutorizaCompra : boolean;
begin
  inherited;
  btGravar.Enabled := False;
  btCancelar.Enabled := False;
  HabilitaPaineis(False);
  frmSolicitacaoCompra.HabilitaCampos(AutorizaCotacao, RealizaCotacao, AutorizaCompra);
  tbSolicitacaoItem.CancelUpdates;
  tbSolicitacaoCompra.Close;
  tbSolicitacaoCompra.Filter := 'SCO_CODIGO = ' + frmSolicitacaoCompra.cdsBusca.FieldByName('SCO_CODIGO').AsString;
  tbSolicitacaoCompra.Open;
  cxGrid1.Enabled := True;
  tbSolicitacaoItemAfterScroll(dsSolicitacaoItem.DataSet);
end;

procedure TfrmSolicitacaoCompraCadastro.btIncluirNovoFornecedorClick(Sender: TObject);
begin
  inherited;
  tbSolicitacaoItem.Insert;
  tbSolicitacaoItemSCO_CODIGO.Value := tbSolicitacaoCompraSCO_CODIGO.Value;

  btGravar.Enabled := True;
  btCancelar.Enabled := True;
  LimpaCampos();
  HabilitaPaineis(True);
  btIncluirNovoFornecedor.Enabled := False;
  dtSitDataCotacao.Date := Date;
  tbSolicitacaoItemSIT_DATA_COTACAO.Value := Date;
end;

procedure TfrmSolicitacaoCompraCadastro.cbFornecedorSelect(Sender: TObject);
begin
  inherited;
  if tbSolicitacaoItem.State =  dsBrowse then
    exit;

  edForCodigo.Text := cbFornecedor.idRetorno;
  VerificaEstadotbSolicitacaoItem();
  tbSolicitacaoItemFOR_RAZAO.Text := cbFornecedor.Text;
  tbSolicitacaoItemFOR_CODIGO.Text := edForCodigo.Text;
  tbSolicitacaoItemFOR_CGC.Text := edFornecedorCNPJ.Text;
  PegaDadosFornecedor(edForCodigo.Text);
end;

procedure TfrmSolicitacaoCompraCadastro.cbProdutoSelect(Sender: TObject);
begin
  inherited;
  edPrdRefer.Text := cbProduto.idRetorno;
  tbSolicitacaoCompraSCO_DESCRICAO_PRODUTO.Text := cbProduto.Text;
  qAux.Close;
  qAux.SQL.Clear;
  qAux.SQL.Text :=  'SELECT PRD_MINIMO, PRD_MAXIMO FROM PRD0000 WHERE PRD_REFER  = ' + QuotedStr(edPrdRefer.Text);
  qAux.Open;
  tbSolicitacaoCompraSCO_QTDE_MIN.Value := qAux.FieldByName('PRD_MINIMO').AsString;
  tbSolicitacaoCompraSCO_QTDE_MAX.Value := qAux.FieldByName('PRD_MAXIMO').AsString;
  qAux.Close;

end;

procedure TfrmSolicitacaoCompraCadastro.btGravarClick(Sender: TObject);
var GenSolicitacaoItem : Integer;
    AutorizaCotacao, RealizaCotacao, AutorizaCompra: boolean;
begin
  inherited;
  if edForRazao.Text = '' then
  begin
    MessageDlg('Nome do Fornecedor é Obrigatório.', mtError, [mbOK], 0);
    edForRazao.SetFocus;
    Exit;
  end;
  if edSitPrecoCotacao.Text = '' then
  begin
    MessageDlg('Preço da Mercadoria na Cotação é Obrigatório.', mtError, [mbOK], 0);
    edSitPrecoCotacao.SetFocus;
    Exit;
  end;
  if dtSitDataCotacao.Date = 0 then
  begin
    MessageDlg('Data da Cotação é Obrigatória.', mtError, [mbOK], 0);
    dtSitDataCotacao.SetFocus;
    Exit;
  end;

  tbSolicitacaoCompra.Edit;
  tbSolicitacaoCompraSCO_STATUS_SOLICITACAO.AsInteger := cbScoStatusSolicitacao.ItemIndex;
  tbSolicitacaoCompra.Post;
  tbSolicitacaoCompra.ApplyUpdates(0);

  if tbSolicitacaoItem.State = dsInsert then
    GenSolicitacaoItem :=  GetNextSequence('GEN_SOLICITACAO_ITEM')
  else if tbSolicitacaoItem.State = dsEdit then
    GenSolicitacaoItem := tbSolicitacaoItemSIT_CODIGO.Value;

  qAux.Close;
  qAux.SQL.Clear;
  qAux.SQL.Text :=  'INSERT INTO SOLICITACAO_ITEM_LOG ' +
                    '(SIL_CODIGO, SIT_CODIGO, SIT_STATUS_SOLICITACAO, SIT_STATUS_COMPRA, USU_NOME, SIL_DATA) ' +
                    ' VALUES (' +
                    IntToStr(GetNextSequence('GEN_SOLICITACAO_ITEM_LOG')) + ',' +
                    IntToStr(GenSolicitacaoItem) + ',' +
                    IntToStr(cbScoStatusSolicitacao.ItemIndex) + ',' +
                    IntToStr(cbSitStatusCompra.ItemIndex) + ',' +
                    QuotedStr(DBInicio.Usuario.NOME) + ',' +
                    DateToSQL(Now) +
                    ')';
  qAux.ExecSQL;
  tbSolicitacaoItemSIT_CODIGO.Value := GenSolicitacaoItem;
  if dtSitDataFinalizacaoCotacao.Date = 0 then
    tbSolicitacaoItemSIT_DATA_FINALIZACAO_COTACAO.AsDateTime := Date;

  tbSolicitacaoItem.Post;
  tbSolicitacaoItem.ApplyUpdates(0);
  RecNo := tbSolicitacaoItem.RecNo;

  if (cbSitCotacaoAprovada.ItemIndex = 0) then
  begin
    if (tbSolicitacaoCompra.State = dsBrowse)   then
      tbSolicitacaoCompra.Edit;
    // tbSolicitacaoCompraSCO_STATUS_SOLICITACAO.AsInteger := 5; // Cotacao concluida
    // cbScoStatusSolicitacao.ItemIndex := 4;
    tbSolicitacaoCompraSCO_STAT_SOLICIT_RESP.AsString := DBInicio.Usuario.NOME;
    tbSolicitacaoCompra.Post;
    tbSolicitacaoCompra.ApplyUpdates(0);
  end;

  tbSolicitacaoItem.Close;
  tbSolicitacaoItem.Open;
  tbSolicitacaoItem.RecNo := RecNo;



  btGravar.Enabled := False;
  btCancelar.Enabled := False;
  HabilitaPaineis(False);
  frmSolicitacaoCompra.HabilitaCampos(AutorizaCotacao, RealizaCotacao, AutorizaCompra);
  qAux.Close;
  cxGrid1.Enabled := True;
end;

procedure TfrmSolicitacaoCompraCadastro.btGravarSolicitacaoClick(Sender: TObject);
var
    AutorizaCotacao, RealizaCotacao, AutorizaCompra: boolean;
begin
  inherited;
  if edSolicitante.Text = '' then
  begin
      MessageDlg('Nome do Solicitante é Obrigatório.', mtError, [mbOK], 0);
      edSolicitante.SetFocus;
      Exit;
  end;
  if edSetorCodigo.Text = '' then
  begin
      MessageDlg('Setor é Obrigatório.', mtError, [mbOK], 0);
      edSetorCodigo.SetFocus;
      Exit;
  end;
  if dtSolicitacao.Date = 0 then
  begin
      MessageDlg('Data da Solicitação Obrigatória', mtError, [mbOK], 0 );
      dtSolicitacao.SetFocus;
      Exit;
  end;

  if frmSolicitacaoCompraCadastro.Incluir then
  begin
    tbSolicitacaoCompraSCO_CODIGO.Value := GetNextSequence('GEN_SOLICITACAO_COMPRA');
  end
  else
  begin
    tbSolicitacaoCompra.Edit;
  end;
  tbSolicitacaoCompraSCO_DATA_SOLICITACAO.AsDateTime := dtSolicitacao.Date;
  if (frmSolicitacaoCompraCadastro.Incluir) and (cbScoStatusSolicitacao.ItemIndex = 0) then
    tbSolicitacaoCompraSCO_STATUS_SOLICITACAO.AsInteger := 1
  else
    tbSolicitacaoCompraSCO_STATUS_SOLICITACAO.AsInteger := cbScoStatusSolicitacao.ItemIndex;

  tbSolicitacaoCompra.Post;
  tbSolicitacaoCompra.ApplyUpdates(0);
  tbSolicitacaoItem.Open;
  tbSolicitacaoItem.Filter := 'SCO_CODIGO = ' + tbSolicitacaoCompraSCO_CODIGO.AsString;
  MessageDlg('Gravado com sucesso.', mtInformation, [mbOK], 0);
  Self.Close;
end;

procedure TfrmSolicitacaoCompraCadastro.cbSetorSelect(Sender: TObject);
begin
  inherited;
  edSetorCodigo.Text := cbSetor.idRetorno;
end;

procedure TfrmSolicitacaoCompraCadastro.cbSitCotacaoAprovadaChange(Sender: TObject);
begin
  inherited;
  if (tbSolicitacaoCompraSCO_CODIGO.AsString = '') or  (tbSolicitacaoItemSIT_CODIGO.AsString = '') then
    exit;

  OpenAux('SELECT SIT_COTACAO_APROVADA FROM SOLICITACAO_ITEM ' +
          ' WHERE SCO_CODIGO = ' + tbSolicitacaoCompraSCO_CODIGO.AsString +
          ' AND   SIT_CODIGO <> ' + tbSolicitacaoItemSIT_CODIGO.AsString +
          ' AND SIT_COTACAO_APROVADA = ' + QuotedStr('S') );
  if not qAux.IsEmpty and (cbSitCotacaoAprovada.ItemIndex = 0) then
  begin
    MessageDlg('Já existe uma cotação aprovada para esta solicitação.', mtError, [mbOK], 0);
    cbSitCotacaoAprovada.ItemIndex := 1;
    Exit;
  end;
  if cbSitCotacaoAprovada.ItemIndex = 0 then
    cbScoStatusSolicitacao.ItemIndex := 5;

end;

procedure TfrmSolicitacaoCompraCadastro.cbSitStatusCompraChange(Sender: TObject);
begin
  inherited;
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
  if cbSitCotacaoAprovada.ItemIndex = 0 then
  begin
    tbSolicitacaoItemSIT_STATUS_COMPRA.AsInteger := cbSitStatusCompra.ItemIndex;
    tbSolicitacaoItemSIT_STAT_COMPRA_RESP.AsString := DBInicio.Usuario.NOME;
  end
  else
  begin
    MessageDlg('Esta cotação não foi aprovada, favor verificar.', mtError, [mbOK], 0);
    Exit;

  end;

end;

procedure TfrmSolicitacaoCompraCadastro.cbScoStatusSolicitacaoChange(Sender: TObject);
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
  if tbSolicitacaoCompra.State = dsBrowse then
    tbSolicitacaoCompra.Edit;

  tbSolicitacaoCompraSCO_STATUS_SOLICITACAO.AsInteger := cbScoStatusSolicitacao.ItemIndex;
  tbSolicitacaoCompraSCO_STAT_SOLICIT_RESP.AsString := DBInicio.Usuario.NOME;

  if (tbSolicitacaoCompraSCO_CODIGO.AsString = '') or (tbSolicitacaoItemSIT_CODIGO.AsString = '') then
    exit;

  OpenAux('SELECT SIT_COTACAO_APROVADA FROM SOLICITACAO_ITEM ' +
          ' WHERE SCO_CODIGO = ' + tbSolicitacaoCompraSCO_CODIGO.AsString +
          ' AND   SIT_CODIGO <> ' + tbSolicitacaoItemSIT_CODIGO.AsString +
          ' AND SIT_COTACAO_APROVADA = ' + QuotedStr('S') );
  if not qAux.IsEmpty then
  begin
    MessageDlg('Já existe uma cotação aprovada para esta solicitação.', mtError, [mbOK], 0);
    Exit;
  end;
end;

procedure TfrmSolicitacaoCompraCadastro.cbSitTipoFreteChange(Sender: TObject);
begin
  inherited;
  case cbSitTipoFrete.ItemIndex of
    -1, 0: tbSolicitacaoItemSIT_TIPO_FRETE.AsString := 'N/D';
    1: tbSolicitacaoItemSIT_TIPO_FRETE.AsString := 'CIF';
    2: tbSolicitacaoItemSIT_TIPO_FRETE.AsString := 'FOB';
  end;
end;
      {
procedure TfrmSolicitacaoCompraCadastro.chkScoAutorizaCotacaoClick(Sender: TObject);
begin
  inherited;
  if (chkScoAutorizaCotacao.Checked) and (tbSolicitacaoCompra.State in [dsEdit, dsInsert])  then
  begin
    tbSolicitacaoCompraSCO_STATUS_SOLICITACAO.AsInteger := 3; // Autorização de Cotação
    cbScoStatusSolicitacao.ItemIndex := 3;
    tbSolicitacaoCompraSCO_STAT_SOLICIT_RESP.AsString := DBInicio.Usuario.NOME;
    if dtScoDataAutorizacaoCotacao.Date = 0 then
    begin
      tbSolicitacaoCompraSCO_DATA_AUTORIZACAO_COTACAO.AsDateTime := Date;
      dtScoDataAutorizacaoCotacao.Date := Date;
    end;
  end;
end;
       }
procedure TfrmSolicitacaoCompraCadastro.cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState;
  var AHandled: Boolean);
begin
  inherited;
  btIncluirNovoFornecedor.Enabled := False;
  btGravar.Enabled := True;
  btCancelar.Enabled := True;
  HabilitaPaineis(True);
  tbSolicitacaoItem.Edit;
  cxGrid1.Enabled := False;
  RecNo := tbSolicitacaoItem.RecNo;
  OpenAux('SELECT SIT_COTACAO_APROVADA FROM SOLICITACAO_ITEM ' +
          ' WHERE SCO_CODIGO = ' + tbSolicitacaoCompraSCO_CODIGO.AsString +
          ' AND   SIT_CODIGO <> ' + tbSolicitacaoItemSIT_CODIGO.AsString +
          ' AND SIT_COTACAO_APROVADA = ' + QuotedStr('S') );
  if not qAux.IsEmpty and (tbSolicitacaoItemSIT_COTACAO_APROVADA.AsString <> 'S') then
  begin
    MessageDlg('Cotação não aprovada.', mtError, [mbOK], 0);
  end;
end;

procedure TfrmSolicitacaoCompraCadastro.cxGrid1DBTableView1SIT_AUTORIZA_COTACAOGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
begin
  inherited;
  if AText = 'S' then
    AText := 'Sim'
  else
    AText := 'Não';
end;

procedure TfrmSolicitacaoCompraCadastro.cxGrid1DBTableView1SIT_COTACAO_APROVADAGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
begin
  inherited;
  if AText = 'S' then
    AText := 'Sim'
  else
    AText := 'Não';
end;

procedure TfrmSolicitacaoCompraCadastro.cxGrid1DBTableView1SIT_PEDIDO_COMPRAGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
begin
  inherited;
  if AText = 'S' then
    AText := 'Sim'
  else
    AText := 'Não';
end;

procedure TfrmSolicitacaoCompraCadastro.cxGrid1DBTableView1SIT_STATUS_COMPRAGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
begin
  inherited;
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

procedure TfrmSolicitacaoCompraCadastro.cxGrid1DBTableView1SIT_TIPO_FRETEGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
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

procedure TfrmSolicitacaoCompraCadastro.edForCodigoExit(Sender: TObject);
begin
  inherited;
  if edForCodigo.Text = '' then
    exit;
  cbFornecedor.idRetorno := strzero(edForCodigo.Text, 4);
  if edForCodigo.Text <> '' then
    PegaDadosFornecedor(edForCodigo.Text);

end;

procedure TfrmSolicitacaoCompraCadastro.edFornecedorCNPJExit(Sender: TObject);
var
 wcgc : String;
 begin
  inherited;
    wcgc := Trim(edFornecedorCNPJ.text);
    if Length(trim(edFornecedorCNPJ.Text)) >11 then
       begin
         if RWFunc.TestaCgcCpf(edFornecedorCNPJ.Text,'J') = false then
           edFornecedorCNPJ.SetFocus
       end;
    if Length(trim(edFornecedorCNPJ.Text)) <=11 then
       begin
         if RWFunc.TestaCgcCpf(edFornecedorCNPJ.Text,'F') = false then
            edFornecedorCNPJ.SetFocus
       end;
end;

procedure TfrmSolicitacaoCompraCadastro.dtSitDataCotacaoExit(Sender: TObject);
begin
  inherited;
  tbSolicitacaoItemSIT_DATA_COTACAO.Value := dtSitDataCotacao.Date;
end;

procedure TfrmSolicitacaoCompraCadastro.dtScoDataEntregaExit(Sender: TObject);
begin
  inherited;
  // VerificaEstadotbSolicitacaoItem();
  tbSolicitacaoCompraSCO_DATA_ENTREGA.Value := dtScoDataEntrega.Date;
end;

procedure TfrmSolicitacaoCompraCadastro.dtSolicitacaoExit(Sender: TObject);
begin
  inherited;
  if dtSolicitacao.Date = 0 then
    dtSolicitacao.Date := Date;

end;

procedure TfrmSolicitacaoCompraCadastro.edPrdReferExit(Sender: TObject);
begin
  inherited;
  if edPrdRefer.Text <> '' then
    cbProduto.idRetorno := edPrdRefer.Text;
end;

procedure TfrmSolicitacaoCompraCadastro.edSetorCodigoExit(Sender: TObject);
begin
  inherited;
  cbSetor.idRetorno := edSetorCodigo.Text;
end;


procedure TfrmSolicitacaoCompraCadastro.edSitPrazoEntregaExit(Sender: TObject);
begin
  inherited;
  tbSolicitacaoItemSIT_PRAZO_ENTREGA.Value := edSitPrazoEntrega.Date;
end;

procedure TfrmSolicitacaoCompraCadastro.PegaDadosFornecedor(CodFor: string);
begin
  qAux.Close;
  qAux.SQL.Clear;
  qAux.SQL.Text := 'SELECT FOR_FONE, FOR_EMAIL, FOR_CGC ' +
                   ' FROM FOR0000 ' +
                   'WHERE FOR_CODIGO = ' + CodFor;
  qAux.Open;
  tbSolicitacaoItemFOR_FONE.Value := qAux.FieldByName('FOR_FONE').AsString;
  tbSolicitacaoItemFOR_EMAIL.Value := qAux.FieldByName('FOR_EMAIL').AsString;
  tbSolicitacaoItemFOR_CGC.Value := qAux.FieldByName('FOR_CGC').AsString;
end;

procedure TfrmSolicitacaoCompraCadastro.tbSolicitacaoItemAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if tbSolicitacaoItemSIT_TIPO_FRETE.AsString = 'CIF' then
    cbSitTipoFrete.ItemIndex := 1
  else
  if tbSolicitacaoItemSIT_TIPO_FRETE.AsString = 'FOB' then
    cbSitTipoFrete.ItemIndex := 2
  else
    cbSitTipoFrete.ItemIndex := 0;
  edSitPrazoEntrega.Date := tbSolicitacaoItem.FieldByName('SIT_PRAZO_ENTREGA').AsDateTime;
  dtSitDataCotacao.Date := tbSolicitacaoItem.FieldByName('SIT_DATA_COTACAO').AsDateTime;
  dtScoDataAutorizacaoCotacao.Date := tbSolicitacaoCompra.FieldByName('SCO_DATA_AUTORIZACAO_COTACAO').AsDateTime;
  dtSitDataFinalizacaoCotacao.Date := tbSolicitacaoItem.FieldByName('SIT_DATA_FINALIZACAO_COTACAO').AsDateTime;
  dtSitDataAutorizacaoCompra.Date := tbSolicitacaoItem.FieldByName('SIT_DATA_AUTORIZACAO_COMPRA').AsDateTime;
  cbScoStatusSolicitacao.ItemIndex:= tbSolicitacaoCompra.FieldByName('SCO_STATUS_SOLICITACAO').AsInteger;
  cbSitStatusCompra.ItemIndex := tbSolicitacaoItem.FieldByName('SIT_STATUS_COMPRA').AsInteger;
  if tbSolicitacaoItem.FieldByName('FOR_CODIGO').AsString = '' then
    cbFornecedor.Text := ''
  else
  begin
    cbFornecedor.idRetorno := tbSolicitacaoItem.FieldByName('FOR_CODIGO').AsString;
    cbFornecedor.Text := tbSolicitacaoItem.FieldByName('FOR_RAZAO').AsString;
  end;
end;

procedure TfrmSolicitacaoCompraCadastro.VerificaEstadotbSolicitacaoItem;
begin
  if not (tbSolicitacaoItem.State in [dsEdit, dsInsert]) then
    if frmSolicitacaoCompraCadastro.Incluir then
      tbSolicitacaoItem.Insert
    else
      tbSolicitacaoItem.Edit;

end;

end.
