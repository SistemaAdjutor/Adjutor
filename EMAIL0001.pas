unit EMAIL0001;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, IdAttachment, IdAttachmentFile,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseForm, ACBrEnterTab, ACBrBase, ACBrCalculadora, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP, IdMessage,
  IdBaseComponent, IdComponent, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmEMAIL0001 = class(TfrmBase)
    SpeedButton1: TSpeedButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    EdMail: TEdit;
    EdAssunto: TEdit;
    ListBox1: TListBox;
    MMsg: TMemo;
    EdEmailDe: TEdit;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    IdMessage1: TIdMessage;
    IdSMTP1: TIdSMTP;
    Panel4: TPanel;
    SpeedButton3: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    function EnviarEmail(Dominio, Porta, Usuario, Senha, DeNome, DeEmail, Para, CC, CCO, Assunto, ArquivoCorpo: String; AutoResposta: boolean; Anexo: TStringList): boolean;
    { Private declarations }
  public
        sCaminhoArquivo:String;
        sEmailCliente:String;
        sClienteCodigo:String;
        sAssunto:String;
        email_de_enviado:string;
        procedure ProcessarInformacoes;
  end;

var
  frmEMAIL0001: TfrmEMAIL0001;

implementation

{$R *.dfm}

Uses uteis, iniciodb, ContatoCliente, uCadastroFrases;

{ TfrmEMAIL0001 }

procedure TfrmEMAIL0001.BitBtn1Click(Sender: TObject);
begin
  inherited;
    if (EnviarEmail(dbInicio.Empresa.EmailHost ,
              '0',
              dbInicio.Empresa.EmailUserName ,
              dbInicio.Empresa.EmailPassworld ,
              dbInicio.Empresa.Fantasia,
              email_de_enviado,
              EdMail.Text,
              '',
              '' ,
              EdAssunto.Text,
              '' ,
              True ,
              nil)) then
    Close;
end;

procedure TfrmEMAIL0001.BitBtn2Click(Sender: TObject);
begin
  inherited;
  close;
end;

function TfrmEMAIL0001.EnviarEmail(Dominio, Porta, Usuario, Senha, DeNome, DeEmail, Para, CC, CCO, Assunto, ArquivoCorpo: String; AutoResposta: boolean; Anexo: TStringList): boolean;
var Send: boolean;
    fSaida: TextFile;
    I:Integer;
    Email:String;
    IdSSLIOHandlerSocket1: TIdSSLIOHandlerSocketOpenSSL;
begin
   try
      Send := False;
      if (dbInicio.Empresa.EmailHost <> '') then
      begin
            if (dbInicio.Empresa.EmailAutenticacao) then
               IdSMTP1.AuthType := satDefault
            else
               IdSMTP1.AuthType := satNone;
            IdSMTP1.Username := Trim(dbInicio.Empresa.EmailUserName);
            IdSMTP1.Password := Trim(dbInicio.Empresa.EmailPassworld);
            IdSMTP1.Host := dbInicio.Empresa.EmailHost;

            IdSMTP1.Port := StrToInt(dbInicio.Empresa.EmailPorta);
            if (dbInicio.Empresa.EmailRequerConexaoSSL) then
            begin
                  IdSSLIOHandlerSocket1 := TIdSSLIOHandlerSocketOpenSSL.Create( nil );
                  IdSMTP1.IOHandler := IdSSLIOHandlerSocket1;
                  //Modo
                  if (dbInicio.Empresa.EmailModoSSL = 'B') then
                     IdSSLIOHandlerSocket1.SSLOptions.Mode := sslmBoth
                  else
                  if (dbInicio.Empresa.EmailModoSSL = 'C') then
                     IdSSLIOHandlerSocket1.SSLOptions.Mode := sslmClient
                  else
                  if (dbInicio.Empresa.EmailModoSSL = 'S') then
                     IdSSLIOHandlerSocket1.SSLOptions.Mode := sslmServer
                  else
                  if (dbInicio.Empresa.EmailModoSSL = 'U') then
                     IdSSLIOHandlerSocket1.SSLOptions.Mode := sslmUnassigned;
                  //Metodo
                  if (dbInicio.Empresa.EmailVersaoSSL = 1) then
                     IdSSLIOHandlerSocket1.SSLOptions.Method := sslvTLSv1
                  else
                  if (dbInicio.Empresa.EmailVersaoSSL = 2) then
                     IdSSLIOHandlerSocket1.SSLOptions.Method := sslvSSLv2
                  else
                  if (dbInicio.Empresa.EmailVersaoSSL = 3) then
                  begin
                        IdSSLIOHandlerSocket1.SSLOptions.Method := sslvSSLv3;
                        IdSMTP1.UseTLS := utUseImplicitTLS;
                  end;
            end;

            IdSMTP1.Connect;
            if IdSMTP1.Connected then
               {: Envia e-mail}
               IdSMTP1.Authenticate;
               begin
                  IdMessage1.Clear;
                  {Manual}
                  if (Trim(EdMail.Text) <> '') then
                      Email := Trim(EdMail.Text);

                  IdMessage1.Recipients.EMailAddresses := Email;
                  IdMessage1.From.Text := Trim(DeEmail);
                  IdMessage1.Subject := EdAssunto.Text;

                  IdMessage1.Body.Append (MMsg.Text);
                 //
                  {: Envia arquivos }
                  if Assigned(ListBox1) then
                    for i := 0 to ListBox1.Count - 1 do
                    begin
                          if FileExists(ListBox1.Items[i]) then
                          begin
                                try
                                   TIdAttachmentFile.Create(IdMessage1.MessageParts , ListBox1.Items[i]);
                                except
                                end;
                          end;
                    end;
                  try
                     IdSMTP1.Send(IdMessage1);
                     Send := True;
                  except
                     Send := False;
                  end;
               end;
      end;
      if Send then
         ShowMessage('Email enviado com sucesso.')
      else
         uteis.erro  ('Servidor SMTP com problemas ou Email de envio invalido.');
   finally
      IdSMTP1.Disconnect;
   end;
   Result := Send;
end;

procedure TfrmEMAIL0001.FormShow(Sender: TObject);
///
   procedure QualUsuariodeEnvio;
   begin
      if (Trim(email_de_enviado) = '') then
      begin
            if dbInicio.Usuario.EMAIL_USUARIO <> '' then
               email_de_enviado := dbInicio.USUARIO.EMAIL_USUARIO
            else
            if dbInicio.EMPRESA.EMAILVENDA <> '' then
               email_de_enviado := dbInicio.EMPRESA.EMAILVENDA
            Else
               email_de_enviado := dbInicio.EMPRESA.Email;
      end;
   end;
///
begin
   inherited;
   QualUsuariodeEnvio;
   EdEmailDe.text := email_de_enviado;
end;

procedure TfrmEMAIL0001.ProcessarInformacoes;
begin
     EdMail.Text := sEmailCliente;
     MMsg.Text := '';
     EdAssunto.Text := sAssunto;
     ListBox1.AddItem(sCaminhoArquivo,nil);
     Self.ShowModal;
end;


procedure TfrmEMAIL0001.SpeedButton1Click(Sender: TObject);
begin
     inherited;
     FrmContatoCliente := TFrmContatoCliente.Create(Application);
     try
       FrmContatoCliente.sClienteCodigo := sClienteCodigo;
       FrmContatoCliente.ShowModal;
       edMail.Text := FrmContatoCliente.TextoRetorno;
     finally
       FreeAndNil( FrmContatoCliente );
     end;

end;

procedure TfrmEMAIL0001.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  FrmCadastroObservacao := TFrmCadastroObservacao.Create(Application);
  try
      FrmCadastroObservacao.memo := MMsg;
      FrmCadastroObservacao.ShowModal;
  finally
      FreeAndNil( FrmCadastroObservacao );
  end;
end;

end.
