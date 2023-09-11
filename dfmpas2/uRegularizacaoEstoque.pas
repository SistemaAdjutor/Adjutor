unit uRegularizacaoEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls,
  Datasnap.Provider, Datasnap.DBClient, Vcl.ExtCtrls, cxSpinEdit, cxDBEdit, cxCalendar, cxMemo, SgDbSeachComboUnit, ComboBoxRW;

type
  TfrmRegularizacaoEstoque = class(TfrmBaseDB)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dbPrdDescri: TDBEdit;
    edPrdRefer: TEdit;
    Panel1: TPanel;
    Bit_Lista: TBitBtn;
    Bit_Relatorio: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    dsProdutos: TDataSource;
    cdsProdutos: TClientDataSet;
    dspProdutos: TDataSetProvider;
    qProdutos: TSQLQuery;
    qUnidade: TSQLQuery;
    dspunidade: TDataSetProvider;
    cdsUnidade: TClientDataSet;
    cdsUnidadePRD_UNICODIGO: TIntegerField;
    cdsUnidadePRD_UNISIGLA: TStringField;
    cdsUnidadePRD_UNIDESCRI: TStringField;
    dsUnidade: TDataSource;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    qProdutosPRD_REFER: TStringField;
    qProdutosPRD_DESCRI: TStringField;
    qProdutosPRD_UND: TStringField;
    cdsProdutosPRD_REFER: TStringField;
    cdsProdutosPRD_DESCRI: TStringField;
    cdsProdutosPRD_UND: TStringField;
    qProdutosPRD_CODIGO: TStringField;
    cdsProdutosPRD_CODIGO: TStringField;
    qProdutosPRDE_REGISTRO: TIntegerField;
    qProdutosPRD_MINIMO: TFMTBCDField;
    qProdutosPRD_MAXIMO: TFMTBCDField;
    cdsProdutosPRDE_REGISTRO: TIntegerField;
    cdsProdutosPRD_MINIMO: TFMTBCDField;
    cdsProdutosPRD_MAXIMO: TFMTBCDField;
    qEnderecamento: TSQLQuery;
    dspEnderecamento: TDataSetProvider;
    cdsEnderecamento: TClientDataSet;
    dsEnderecamento: TDataSource;
    cdsEnderecamentoPRDE_REGISTRO: TIntegerField;
    cdsEnderecamentoEMP_CODIGO: TStringField;
    cdsEnderecamentoPRDE_ENDERECO: TStringField;
    qProdutosPRD_ESTOQUE_SEGURANCA_REG: TFMTBCDField;
    qProdutosPRD_LOTE_COMPRA_REG: TStringField;
    qProdutosPRD_OBSERVACAO_REG: TMemoField;
    qProdutosPRD_DATA_REG: TDateField;
    qProdutosPRD_USU_CODIGO_REG: TIntegerField;
    cdsProdutosPRD_ESTOQUE_SEGURANCA_REG: TFMTBCDField;
    cdsProdutosPRD_LOTE_COMPRA_REG: TStringField;
    cdsProdutosPRD_OBSERVACAO_REG: TMemoField;
    cdsProdutosPRD_DATA_REG: TDateField;
    cdsProdutosPRD_USU_CODIGO_REG: TIntegerField;
    qProdutosAMX_CODIGO: TStringField;
    cdsProdutosAMX_CODIGO: TStringField;
    qProdutosPRD_ALMOX_UNICO: TStringField;
    cdsProdutosPRD_ALMOX_UNICO: TStringField;
    Panel2: TPanel;
    cbAlmoxarifadoProduto: TComboBoxRw;
    chkAlmoxarifadoUnico: TDBCheckBox;
    lcEnderecamento: TcxDBLookupComboBox;
    Label12: TLabel;
    btnCadastroEnderecamento: TSpeedButton;
    Label9: TLabel;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    dbPrdMaximo: TcxDBTextEdit;
    dbPrdMinimo: TcxDBTextEdit;
    Label4: TLabel;
    dbEstoqueSegurancaReg: TcxDBTextEdit;
    Label5: TLabel;
    dbLoteDeCompraReg: TcxDBTextEdit;
    GroupBox3: TGroupBox;
    Panel3: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    lbUsuario: TLabel;
    dbDataReg: TcxDBDateEdit;
    dbObservacaoReg: TcxDBMemo;
    procedure edPrdReferExit(Sender: TObject);
    procedure Bit_ListaClick(Sender: TObject);
    procedure Bit_CancelarClick(Sender: TObject);
    procedure Bit_SairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Bit_GravarClick(Sender: TObject);
    procedure cdsProdutosAfterEdit(DataSet: TDataSet);
    procedure cdsProdutosReconcileError(DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
    procedure cdsProdutosAfterScroll(DataSet: TDataSet);
    procedure cdsProdutosAfterPost(DataSet: TDataSet);
    procedure cdsProdutosAfterCancel(DataSet: TDataSet);
    procedure btnCadastroEnderecamentoClick(Sender: TObject);
    procedure chkAlmoxarifadoUnicoClick(Sender: TObject);
    procedure cdsProdutosPRD_ESTOQUE_SEGURANCA_REGGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cbAlmoxarifadoProdutoChange(Sender: TObject);
  private
    procedure BuscaProduto;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRegularizacaoEstoque: TfrmRegularizacaoEstoque;

implementation

{$R *.dfm}

uses InicioDB, uteis, uRegularizacaoEstoquePesq, uProdutoEnderecamento;





procedure TfrmRegularizacaoEstoque.Bit_CancelarClick(Sender: TObject);
begin
  inherited;
  CdsProdutos.CancelUpdates;
  if CdsProdutosPRD_USU_CODIGO_REG.AsString <> '' then
    lbUsuario.Caption := BuscaUmDadoSqlAsString('SELECT USU_NOME FROM USUARIO WHERE USU_CODIGO = ' + CdsProdutosPRD_USU_CODIGO_REG.AsString );
  cbAlmoxarifadoProduto.idRetorno :=  cdsProdutosAMX_CODIGO.AsString;

end;

procedure TfrmRegularizacaoEstoque.Bit_GravarClick(Sender: TObject);
begin
  inherited;
  if chkAlmoxarifadoUnico.State = cbGrayed then
  begin
    MessageDlg('É necessário marcar se o produto é de um almoxarifado único ou não.', mtWarning, [mbOK],0 );
    chkAlmoxarifadoUnico.SetFocus;
    Exit;
  end;

  if cdsProdutos.State <> dsEdit then
    Exit;
  CdsProdutos.Post;
  CdsProdutos.ApplyUpdates(-1);
  qAux.Close;

end;

procedure TfrmRegularizacaoEstoque.Bit_ListaClick(Sender: TObject);
begin
  inherited;
    frmRegularizacaoEstoquePesq := TfrmRegularizacaoEstoquePesq.Create(Application);
  try
    frmRegularizacaoEstoquePesq.TAG := 4;
    frmRegularizacaoEstoquePesq.Visible := False;
    frmRegularizacaoEstoquePesq.ShowModal;
    if frmRegularizacaoEstoquePesq.ModalResult = mrOk then
    begin
      edPrdRefer.Text := frmRegularizacaoEstoquePesq.ReferRetorno;
      BuscaProduto;
    end;
  finally
    FreeAndNil(frmRegularizacaoEstoquePesq);
  end;

end;

procedure TfrmRegularizacaoEstoque.Bit_SairClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmRegularizacaoEstoque.btnCadastroEnderecamentoClick(Sender: TObject);
begin
  inherited;
  if not assigned(FrmProdutoEnderecamento) then
    FrmProdutoEnderecamento := TFrmProdutoEnderecamento.Create(Application);
  FrmProdutoEnderecamento.Show;
end;

procedure TfrmRegularizacaoEstoque.BuscaProduto;
begin
  if edPrdRefer.Text = '' then
    Exit;
  if not CdsProdutos.Locate('PRD_REFER', edPrdRefer.Text, []) then
  begin
       Uteis.aviso('Código do Produto não encontrado!');
       edPrdRefer.SetFocus;
       exit;
  end;
  edPrdRefer.Text := CdsProdutosPRD_REFER.AsString;
  cbAlmoxarifadoProduto.idRetorno := cdsProdutosAMX_CODIGO.AsString;

  if CdsProdutosPRD_USU_CODIGO_REG.AsString <> '' then
    lbUsuario.Caption := BuscaUmDadoSqlAsString('SELECT USU_NOME FROM USUARIO WHERE USU_CODIGO = ' + CdsProdutosPRD_USU_CODIGO_REG.AsString )
  else
    lbUsuario.Caption := '';
  dbPrdDescri.SetFocus;
end;

procedure TfrmRegularizacaoEstoque.cbAlmoxarifadoProdutoChange(Sender: TObject);
begin
  inherited;
  if not (cdsProdutos.State in dsEditModes) then
    cdsProdutos.Edit;
end;

procedure TfrmRegularizacaoEstoque.cdsProdutosAfterCancel(DataSet: TDataSet);
begin
  inherited;
  Bit_Gravar.Enabled := False;
  Bit_Cancelar.Enabled := False;
end;

procedure TfrmRegularizacaoEstoque.cdsProdutosAfterEdit(DataSet: TDataSet);
begin
  inherited;
  CdsProdutosPRD_USU_CODIGO_REG.AsString := DBInicio.Usuario.CODIGO;
  cdsProdutosAMX_CODIGO.AsString := cbAlmoxarifadoProduto.idRetorno;
  lbUsuario.Caption := DBInicio.Usuario.NOME;
  dbDataReg.Date := Now;
  Bit_Gravar.Enabled := True;
  Bit_Cancelar.Enabled := True;
end;

procedure TfrmRegularizacaoEstoque.cdsProdutosAfterPost(DataSet: TDataSet);
begin
  inherited;
  Bit_Gravar.Enabled := False;
  Bit_Cancelar.Enabled := False;
end;

procedure TfrmRegularizacaoEstoque.cdsProdutosAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if CdsProdutosPRD_USU_CODIGO_REG.AsString <> '' then
    lbUsuario.Caption := BuscaUmDadoSqlAsString('SELECT USU_NOME FROM USUARIO WHERE USU_CODIGO = ' + CdsProdutosPRD_USU_CODIGO_REG.AsString );
  cbAlmoxarifadoProduto.idRetorno := cdsProdutosAMX_CODIGO.AsString;
end;

procedure TfrmRegularizacaoEstoque.cdsProdutosPRD_ESTOQUE_SEGURANCA_REGGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := FormatFloat('###,###,##0.0000', Sender.AsFloat);
end;

procedure TfrmRegularizacaoEstoque.cdsProdutosReconcileError(DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  inherited;
  ShowMessage(e.Message);
end;

procedure TfrmRegularizacaoEstoque.chkAlmoxarifadoUnicoClick(Sender: TObject);
begin
  inherited;
  if chkAlmoxarifadoUnico.Checked then
    MessageDlg('Almoxarifado único: Não será permitido transferir este produto entre almoxarifados', mtInformation, [mbOK],0);
end;

procedure TfrmRegularizacaoEstoque.edPrdReferExit(Sender: TObject);
begin
  inherited;
  BuscaProduto;
end;

procedure TfrmRegularizacaoEstoque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  frmRegularizacaoEstoque := nil;
end;

procedure TfrmRegularizacaoEstoque.FormShow(Sender: TObject);
begin
  inherited;
  if not cdsProdutos.Active then
    cdsProdutos.Open;
  cdsProdutos.First;
  edPrdRefer.Text := cdsProdutosPRD_REFER.AsString;

  if not cdsUnidade.Active then
    cdsUnidade.Open;

  if not cdsEnderecamento.Active then
    cdsEnderecamento.Open;
  Bit_Lista.Click;
end;

end.
