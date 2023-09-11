unit Email0000;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdAttachment, IdAttachmentFile,
  IdMessageClient, IdSMTPBase, IdSMTP, IdMessage, IdBaseComponent, IdComponent, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL, Vcl.ExtCtrls, Vcl.Buttons;

type
  TFrmEmail = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Anexos: TLabel;
    Label3: TLabel;
    Label4: TLabel;
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
    SMTP: TIdSMTP;
    Panel4: TPanel;
    SpeedButton3: TSpeedButton;
    sslsocket: TIdSSLIOHandlerSocketOpenSSL;
    procedure BtnCancelarClick(Sender: tObject);
    procedure BitBtn1Click(Sender: tObject);
    procedure BitBtn2Click(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure SpeedButton3Click(Sender: tObject);
    procedure SpeedButton1Click(Sender: tObject);
  private
    { Private declarations }
    function EnviarEmail(Dominio ,
                         Porta ,
                         Usuario ,
                         Senha ,
                         DeNome ,
                         DeEmail ,
                         Para ,
                         CC ,
                         CCO ,
                         Assunto ,
                         ArquivoCorpo : String;
                         AutoResposta : boolean;
                         Anexo : TStringList): boolean;
  public
    { Public declarations }
      sCaminhoArquivo:String;
      sEmailCliente:String;
      sClienteCodigo:String;
      sAssunto:String;
      email_de_enviado:string;
      procedure ProcessarInformacoes;
      procedure QualUsuariodeEnvio;
  end;

var
  FrmEmail: TFrmEmail;

implementation

uses
  Men0001, ContatoCliente, uCadastroFrases, uteis, iniciodb;

{$R *.dfm}



procedure TFrmEmail.BtnCancelarClick(Sender: tObject);
begin
  Close;
end;

function TFrmEmail.EnviarEmail(Dominio, Porta, Usuario, Senha, DeNome,
  DeEmail, Para, CC, CCO, Assunto, ArquivoCorpo: String;
  AutoResposta: boolean; Anexo: TStringList): boolean;
var
  Send: boolean;
  fSaida: TextFile;
  I:Integer;
  Email:String;
  msg:tIdMessage;
begin

      Send := False;

      if (dbInicio.Empresa.EmailHost <> '') then
      begin

            msg:= tIdMessage.Create(self);

            with SMTP do
            begin

                Disconnect;

                if (dbInicio.Empresa.EmailAutenticacao) then
                   AuthType := satDefault
                else
                   AuthType := satNone;

                Host := dbInicio.Empresa.EmailHost;
                IOHandler := SSLSocket;
                Password := Trim(dbInicio.Empresa.EmailPassworld);
                Port := StrToIntDef(dbInicio.Empresa.EmailPorta,0);
                Username := Trim(dbInicio.Empresa.EmailUserName);

                if (dbInicio.Empresa.EmailRequerConexaoTLS) then
                   UseTLS := utUseRequireTLS
                else
                   UseTLS := utNoTLSSupport;

            end;

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

           with MSG do
           begin
                Clear;
                Email := Trim(EdMail.Text);

                Recipients.EMailAddresses := Email;
                From.Address := Trim(dbInicio.Empresa.EmailUserName);
                From.Text := Trim(EdEmailDe.Text);
                From.Name := dbInicio.Empresa.RAZAO;
                Subject := EdAssunto.Text;
                Body.Append (MMsg.Text);
                ReplyTo.add;
                ReplyTo.Items[0].Address :=  Trim(DeEmail);
                ReplyTo.Items[0].Name :=  dbInicio.Empresa.RAZAO;

                Recipients.EMailAddresses := Email;

                // anexos
                if Assigned(ListBox1) then
                   for i := 0 to ListBox1.Count - 1 do
                   begin
                        if FileExists(ListBox1.Items[i]) then
                        begin
                             try
                                TIdAttachmentFile.Create(msg.MessageParts , ListBox1.Items[i]);
                             except
                             end;
                        end;
                   end;
           end;

           try
              SMTP.Connect();
              SMTP.Send(MSG);
              SMTP.Disconnect;
              Send := True;
           except
                 Send := False;
           end;
           SMTP.Disconnect;
      end;

      if Send then
         ShowMessage('Email enviado com sucesso.')
      else
         uteis.erro  ('Servidor SMTP com problemas ou Email de envio invalido.');

      Result := Send;
end;

procedure TFrmEmail.ProcessarInformacoes;
begin
  EdMail.Text := sEmailCliente;

  MMsg.Text := '';
  EdAssunto.Text := sAssunto;
  ListBox1.AddItem(sCaminhoArquivo,nil);
  Self.ShowModal;
end;

procedure TFrmEmail.BitBtn1Click(Sender: tObject);
begin
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

procedure TFrmEmail.QualUsuariodeEnvio;
begin
   // setar qual o email vai aparecer no enviado de quem vai receber
   if (Trim(email_de_enviado) = '') then
   begin
         //if dbInicio.Usuario.EMAIL_USUARIO <> '' then
            //email_de_enviado := dbInicio.USUARIO.EMAIL_USUARIO
         //else
         if dbInicio.EMPRESA.EMAILCOMPRA <> '' then
            email_de_enviado := dbInicio.EMPRESA.EMAILCOMPRA
         Else
            email_de_enviado := dbInicio.EMPRESA.Email;
   end;
end;

procedure TFrmEmail.BitBtn2Click(Sender: tObject);
begin
  Close;
end;

procedure TFrmEmail.FormShow(Sender: tObject);
begin
   QualUsuariodeEnvio;
   EdEmailDe.text := email_de_enviado;
end;

procedure TFrmEmail.SpeedButton3Click(Sender: tObject);
begin
   try
      FrmCadastroObservacao := TFrmCadastroObservacao.Create(Application);
      FrmCadastroObservacao.memo := MMsg;
      FrmCadastroObservacao.ShowModal;
   finally
      FrmCadastroObservacao.Destroy;
      FrmCadastroObservacao :=Nil;
   end;
end;

procedure TFrmEmail.SpeedButton1Click(Sender: tObject);
begin
  try
    FrmContatoCliente := TFrmContatoCliente.Create(Application);
    FrmContatoCliente.sClienteCodigo := sClienteCodigo;
    FrmContatoCliente.ShowModal;
  finally
    FrmContatoCliente.Destroy;
    FrmContatoCliente := nil;
  end;

end;

end.

