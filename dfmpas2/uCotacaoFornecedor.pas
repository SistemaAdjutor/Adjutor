unit uCotacaoFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, System.UITypes,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBFormFdac, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxClasses, cxLocalization, ACBrBase, ACBrEnterTab, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxDropDownEdit, cxCalendar, cxDBEdit, cxCurrencyEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, Vcl.StdCtrls, SgDbSeachComboUnit, ComboBoxRW, Vcl.DBCtrls,
  Data.FMTBcd, Data.SqlExpr, Vcl.ExtCtrls, JvExStdCtrls, JvCombobox, JvDBCombobox;

type
  TfrmCotacaoFornecedor = class(TfrmBaseDBFDAC)
    dsqCotacaoFornecedor: TDataSource;
    edCofCodigo: TcxDBSpinEdit;
    edCitCodigo: TcxDBSpinEdit;
    qPrazo: TSQLQuery;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    edForRazao: TcxDBTextEdit;
    edForCodigo: TcxDBTextEdit;
    edForFone: TcxDBTextEdit;
    cbFornecedor: TComboBoxRw;
    edCofFornecedorFone: TcxDBTextEdit;
    edCofFornecedoreMail: TcxDBTextEdit;
    edCofFornecedorNome: TcxDBTextEdit;
    edForEmail: TcxDBTextEdit;
    GroupBox2: TGroupBox;
    cbCofTipoFrete: TDBComboBox;
    EdPrazoCodigo: TEdit;
    edPrazo: TSgDbSearchCombo;
    edCofDataPrazoEntrega: TcxDBDateEdit;
    edCofPrecoCotacao: TcxDBCurrencyEdit;
    edCofQuantidadeCotada: TcxDBCurrencyEdit;
    Label9: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    edCofDataAutorizacao: TcxDBDateEdit;
    cbCofAprovada: TDBCheckBox;
    Panel1: TPanel;
    Button1: TButton;
    btCancelar: TButton;
    btGravar: TButton;
    cbCofViaTransporte: TJvDBComboBox;
    Label12: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCancelarClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure cbFornecedorSelect(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure edForCodigoExit(Sender: TObject);
    procedure cbCofAprovadaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edPrazoChange(Sender: TObject);
    procedure EdPrazoCodigoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var
      BuscaFornecedor: boolean;
      cotCodigo: integer;
  end;

var
  frmCotacaoFornecedor: TfrmCotacaoFornecedor;

implementation

{$R *.dfm}

uses UCotacaoPesquisa;

procedure TfrmCotacaoFornecedor.btCancelarClick(Sender: TObject);
begin
  inherited;
  dsqCotacaoFornecedor.DataSet.Cancel;
  Close;
end;

procedure TfrmCotacaoFornecedor.btGravarClick(Sender: TObject);
begin
  inherited;
  if (dsqCotacaoFornecedor.DataSet.State in [dsEdit, dsInsert]) then
  begin
    dsqCotacaoFornecedor.DataSet.FieldByName('PCL_CODIGO').AsString := EdPrazoCodigo.Text;
    case cbCofTipoFrete.ItemIndex of
      0, 1, 2, 3, 4 : dsqCotacaoFornecedor.DataSet.FieldByName('COF_TIPO_FRETE').AsString := IntToStr(cbCofTipoFrete.ItemIndex);
      5 : dsqCotacaoFornecedor.DataSet.FieldByName('COF_TIPO_FRETE').AsString := '9';
    end;
    dsqCotacaoFornecedor.DataSet.Post;
  end;
  Close;
end;

procedure TfrmCotacaoFornecedor.Button1Click(Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja Excluir o Registro?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
    exit;
  dsqCotacaoFornecedor.DataSet.Delete;
  Close;
end;

procedure TfrmCotacaoFornecedor.cbCofAprovadaClick(Sender: TObject);
begin
  inherited;
  if cbCofAprovada.Checked and Self.Showing then
  begin
    if edCofPrecoCotacao.Value <= 0 then
    begin
      MessageDlg('Informe o Preço Cotado antes de aprovar uma cotação.', mtWarning, [mbOK],0);
      cbCofAprovada.Checked := False;
      edCofPrecoCotacao.SetFocus;
      Exit;
    end;

    if frmCotacaoFornecedor <> nil then
      with frmCotacaoFornecedor do
      begin
        qAux.Close;
        qAux.SQL.Text := 'SELECT COUNT(CIT_CODIGO) Registros FROM COTACAO_FORNECEDOR ' +
          ' WHERE COF_APROVADA = ''S'' ' +
          ' AND COF_CODIGO <> ' + edCofCodigo.Text +
          ' AND CIT_CODIGO = ' + edCitcodigo.Text;
        qAux.Open;
        if qAux.FieldByName('Registros').AsInteger > 0 then
        begin
            MessageDlg('Já existe um item com cotação aprovada', mtWarning, [mbOK],0);
            cbCofAprovada.Checked := False;
            Exit;
        end;
      end;
  end;
end;

procedure TfrmCotacaoFornecedor.cbFornecedorSelect(Sender: TObject);
var
  citCodigo: integer;
begin
  inherited;
  if not BuscaFornecedor then
    exit;

  if (frmCotacaoPesquisa.qCotacaoFornecedor.State = dsInsert)
    and (BuscaUmDadoSqlAsString('SELECT FOR_CODIGO FROM COTACAO_FORNECEDOR ' +
       ' WHERE (CIT_CODIGO = ' + edCitCodigo.Text + ')' +
       ' AND (FOR_CODIGO = ' + QuotedStr(cbFornecedor.IDRetorno) + ')'
     ) <> '') then
  begin
    MessageDlg('Fornecedor já cadastrado para este Item de Cotação', mtWarning, [mbOK], 0);
    cbFornecedor.SetFocus;
    exit;
  end;

  citCodigo := BuscaUmDadoSqlAsInteger(
        'SELECT cf.CIT_CODIGO ' +
        ' FROM COTACAO_FORNECEDOR cf ' +
        '  JOIN COTACAO_ITEM ci ON (ci.CIT_CODIGO = cf.CIT_CODIGO) ' +
        ' WHERE (ci.COT_CODIGO = ' + IntToStr(cotCodigo) + ')' +
        ' AND (cf.FOR_CODIGO = ' + QuotedStr(cbFornecedor.IDRetorno) + ')'
     );
  if (frmCotacaoPesquisa.qCotacaoFornecedor.State = dsEdit) and (citCodigo = edCitCodigo.Value) then
  begin
    MessageDlg('Fornecedor já cadastrado para este Item de Cotação', mtWarning, [mbOK], 0);
    cbfornecedor.idRetorno := '';
    cbFornecedor.SetFocus;
    exit;
  end;

  if cbFornecedor.idRetorno = '' then
  begin
    edForRazao.Text := '';
    edForFone.Text := '';
    edForEmail.Text := '';
    exit;
  end;
  edForCodigo.Text := cbFornecedor.idRetorno;
  qAux.Close;
  qAux.SQL.Text := 'SELECT FOR_RAZAO, FOR_FONE, FOR_EMAIL, PCL_CODIGO FROM FOR0000 WHERE FOR_CODIGO = ' + cbFornecedor.idRetorno;
  qAux.Open;
  if not (frmCotacaoPesquisa.qCotacaoFornecedor.State in [dsEdit, dsInsert]) then
    frmCotacaoPesquisa.qCotacaoFornecedor.Edit;
  frmCotacaoPesquisa.qCotacaoFornecedorFOR_CODIGO.AsString := cbFornecedor.idRetorno;
  edForRazao.Text := qAux.FieldByName('FOR_RAZAO').AsString;
  edForFone.Text := qAux.FieldByName('FOR_FONE').AsString;
  edForEmail.Text := qAux.FieldByName('FOR_EMAIL').AsString;
  EdPrazoCodigo.Text := qAux.FieldByName('PCL_CODIGO').AsString;
  edPrazo.idRetorno := EdPrazoCodigo.Text;
end;

procedure TfrmCotacaoFornecedor.edForCodigoExit(Sender: TObject);
begin
  inherited;
  cbFornecedor.idRetorno := edForCodigo.Text;
end;

procedure TfrmCotacaoFornecedor.edPrazoChange(Sender: TObject);
begin
  inherited;
  EdPrazoCodigo.Text := edPrazo.idRetorno;
  if not (dsqCotacaoFornecedor.DataSet.State in [dsEdit, dsInsert]) then
    dsqCotacaoFornecedor.DataSet.Edit;
end;

procedure TfrmCotacaoFornecedor.EdPrazoCodigoExit(Sender: TObject);
begin
  inherited;
  edPrazo.idRetorno := EdPrazoCodigo.Text;
end;

procedure TfrmCotacaoFornecedor.FormActivate(Sender: TObject);
begin
  inherited;
  BuscaFornecedor := True;
end;

procedure TfrmCotacaoFornecedor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmCotacaoPesquisa.qCotacaoFornecedor.Refresh;
  Action := caFree;
  frmCotacaoFornecedor := nil;
end;

procedure TfrmCotacaoFornecedor.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #27 then
    dsqCotacaoFornecedor.DataSet.Cancel;
end;

procedure TfrmCotacaoFornecedor.FormShow(Sender: TObject);
begin
  inherited;
  edForCodigo.SetFocus;
end;

end.
