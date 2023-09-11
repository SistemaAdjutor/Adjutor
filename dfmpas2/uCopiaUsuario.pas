unit uCopiaUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, JvExControls,
  JvAnimatedImage, JvGIFCtrl, Vcl.ExtCtrls;

type
  TfrmCopiaUsuario = class(TfrmBaseDB)
    Label1: TLabel;
    EdUsuario: TEdit;
    Label2: TLabel;
    edSenha: TMaskEdit;
    Label3: TLabel;
    edConfirmaSenha: TMaskEdit;
    btOk: TBitBtn;
    btCancel: TBitBtn;
    PanelAguarde: TPanel;
    JvGIFAnimator1: TJvGIFAnimator;
    pinfo: TPanel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCancelClick(Sender: TObject);
    procedure EdUsuarioExit(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure edConfirmaSenhaExit(Sender: TObject);
    procedure edSenhaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCopiaUsuario: TfrmCopiaUsuario;

implementation

{$R *.dfm}

uses Uteis, DataCad1, Usuar001, InicioDB;

procedure TfrmCopiaUsuario.FormShow(Sender: TObject);
begin
  inherited;
  Self.Height := 190;
  Self.Width := 320;
  Self.Left := (Screen.Width - Self.Width)  div 2;
  Self.Top := (Screen.Height - Self.Height) div 2;
  PanelAguarde.Left := (Self.Width - PanelAguarde.Width)  div 2;
  PanelAguarde.Top := (Self.Height - PanelAguarde.Height) div 2;
  PanelAguarde.Visible := False;
end;

procedure TfrmCopiaUsuario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frmCopiaUsuario := nil;
end;

procedure TfrmCopiaUsuario.btOkClick(Sender: TObject);
var
  j, usuCodigo, CodigoOriginal, registro, de : integer;
  campo: string;
begin
  inherited;
  if EdUsuario.Text = '' then
  begin
    MessageDlg('É necessário um nome de usuário...', mtError, [mbOk], 0);
    EdUsuario.SetFocus;
    Exit;
  end;
  if edSenha.Text <> edConfirmaSenha.Text then
  begin
    MessageDlg('As senhas não conferem...', mtError, [mbOk], 0);
    edSenha.SetFocus;
    Exit;
  end;
  if edSenha.Text = '' then
  begin
    MessageDlg('É necessário uma senha...', mtError, [mbOk], 0);
    edSenha.SetFocus;
    Exit;
  end;
  if edConfirmaSenha.Text = '' then
  begin
    MessageDlg('É necessário confirmar a senha...', mtError, [mbOk], 0);
    edSenha.SetFocus;
    Exit;
  end;


  PanelAguarde.Visible := True;
  try
    CodigoOriginal := StrToInt(FrmCadastroUsuario.DBECodigo.Text);
    OpenAux('SELECT * FROM USUARIO WHERE USU_CODIGO = ' + IntToStr(CodigoOriginal));
    DataCadastros1.CdSUsuario.Insert;
    usuCodigo := DataCadastros1.CdSUsuarioUSU_CODIGO.asInteger;
    DataCadastros1.CdSUsuarioUSU_LOGIN.Value := EdUsuario.Text;
    DataCadastros1.CdSUsuarioUSU_NOME.Value := EdUsuario.Text;
    DataCadastros1.CdSUsuarioUSU_SENHA.Value := edSenha.Text;
    for j := 0 to qAux.FieldCount -1 do
    begin
      campo := UpperCase(qAux.Fields[j].FieldName);
      if   (campo = 'USU_CODIGO')
        or (campo = 'USU_NOME')
        or (campo = 'USU_LOGIN')
        or (campo = 'USU_SENHA')
        or (campo = 'USU_DATA_CADASTRO')
        or (campo = 'USU_DATA_ATUALIZACAO')
      then
        Continue;
      DataCadastros1.CdSUsuario.FieldByName(campo).AsVariant := qAux.FieldByName(campo).AsVariant;
    end;
    DataCadastros1.CdSUsuario.Post;
    DataCadastros1.CdSUsuario.ApplyUpdates(0);

    OpenAux('SELECT COUNT(USA_COD_USUARIO) as Quantidade FROM USUARIO_ACESSO WHERE USA_COD_USUARIO = ' + IntToStr(CodigoOriginal));
    de := qAux.FieldByName('Quantidade').AsInteger;
    registro := 0;
    OpenAux('SELECT * FROM USUARIO_ACESSO WHERE USA_COD_USUARIO = ' + IntToStr(CodigoOriginal));
    while not qAux.Eof do
    begin
      registro := registro + 1;
      DataCadastros1.CdSAcessosUsuario.Insert;
      pinfo.Caption := 'Por favor, aguarde. Processando Registro '+ IntToStr(registro) +' de ' + IntToStr(de);
      Application.ProcessMessages;
      for j := 0 to qAux.FieldCount -1 do
      begin
        campo := UpperCase(qAux.Fields[j].FieldName);
        if   (campo = 'USA_COD_USUARIO') then
          DataCadastros1.CdSAcessosUsuario.FieldByName(campo).AsVariant := usuCodigo
        else
          if (campo = 'USA_REGISTRO') then
            continue
        else
          DataCadastros1.CdSAcessosUsuario.FieldByName(campo).AsVariant := qAux.FieldByName(campo).AsVariant;
      end;
      DataCadastros1.CdSAcessosUsuario.Post;
      DataCadastros1.CdSAcessosUsuario.ApplyUpdates(0);
      qAux.Next;
    end;

    ExecSql('INSERT INTO USUARIO_EMPRESA (USU_CODIGO, EMP_CODIGO) VALUES ('+ IntToStr(usuCodigo) + ',' + QuotedStr(StrZero(DBInicio.Empresa.EMP_CODIGO, 3))  +')');

    OpenAux('SELECT * FROM USUARIO_PARAMETRO WHERE USP_COD_USUARIO = ' + IntToStr(CodigoOriginal));
    DataCadastros1.CDSUsaParametro.Insert;
    for j := 0 to qAux.FieldCount -1 do
    begin
      campo := UpperCase(qAux.Fields[j].FieldName);
      if   (campo = 'USP_COD_USUARIO') then
        DataCadastros1.CDSUsaParametro.FieldByName(campo).AsVariant := usuCodigo
      else
        if (campo = 'USP_REGISTRO') then
          continue
      else
        DataCadastros1.CDSUsaParametro.FieldByName(campo).AsVariant := qAux.FieldByName(campo).AsVariant;
    end;
    DataCadastros1.CDSUsaParametro.Post;
    DataCadastros1.CDSUsaParametro.ApplyUpdates(0);


    PanelAguarde.Visible := False;
    MessageDlg('Usuário criado com sucesso! ' , mtInformation, [mbOk], 0);
    Close;
  except
    on E: Exception do
    begin
      if usuCodigo = 0 then
        exit;
      ExecSql('DELETE FROM USUARIO_PARAMETRO WHERE USP_COD_USUARIO = ' + IntToStr(usuCodigo));
      ExecSql('DELETE FROM USUARIO_EMPRESA WHERE USU_CODIGO = ' + IntToStr(usuCodigo));
      ExecSql('DELETE FROM USUARIO_ACESSO WHERE USA_COD_USUARIO = ' + IntToStr(usuCodigo));
      ExecSql('DELETE FROM USUARIO WHERE USU_CODIGO = ' + IntToStr(usuCodigo));
      MessageDlg('Erro: ' + E.Message , mtError, [mbOk], 0);
      PanelAguarde.Visible := False;
    end;
  end;
end;

procedure TfrmCopiaUsuario.edConfirmaSenhaExit(Sender: TObject);
begin
  inherited;
  if edSenha.Text <> edConfirmaSenha.Text then
  begin
    MessageDlg('As senhas não conferem...', mtError, [mbOk], 0);
    edSenha.SetFocus;
    Exit;
  end;
end;

procedure TfrmCopiaUsuario.edSenhaExit(Sender: TObject);
begin
  inherited;
  if edSenha.Text = '' then
  begin
    MessageDlg('É necessário uma senha...', mtError, [mbOk], 0);
    edSenha.SetFocus;
    Exit;
  end;
end;

procedure TfrmCopiaUsuario.EdUsuarioExit(Sender: TObject);
begin
  inherited;
  if EdUsuario.Text = '' then
  begin
    MessageDlg('É necessário um nome de usuário...', mtError, [mbOk], 0);
    EdUsuario.SetFocus;
    Exit;
  end;
  OpenAux('SELECT USU_LOGIN FROM USUARIO WHERE USU_LOGIN = ' + QuotedStr(EdUsuario.Text));
  if not qAux.IsEmpty then
  begin
    MessageDlg('Este login de usuário já existe, tente outro...', mtError, [mbOk], 0);
    EdUsuario.SetFocus;
  end;
end;

procedure TfrmCopiaUsuario.btCancelClick(Sender: TObject);
begin
  Close;
end;



end.
