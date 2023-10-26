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
    Panel4: TPanel;
    SpeedButton3: TSpeedButton;
    sslsocket: TIdSSLIOHandlerSocketOpenSSL;
    smtp: TIdSMTP;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    function EnviarEmail(Dominio, Porta, Usuario, Senha, DeNome, DeEmail, Para, CC, CCO, Assunto, ArquivoCorpo: String; AutoResposta: boolean; Anexo: TStringList): boolean;
    { Private declarations }
  public
    sCaminhoArquivo:String;
    sEmailCliente:String;
    sClienteCodigo:String;
    sAssunto:String;
    email_de_enviado:string;
    nome_envio :string;
    ssenha: string;
    ssucesso : boolean;
    modulo : string;
    titulo : string;
    sComCopia: string;
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
   if EdMail.Text = '' then
    raise Exception.Create('"Enviar para" não preenchido');

     if (EnviarEmail( dbInicio.Empresa.EmailHost ,
                      '0',
                      dbInicio.Empresa.EmailUserName ,
                      dbInicio.Empresa.EmailPassworld ,
                      dbInicio.Empresa.Fantasia,       // DeNome
                      email_de_enviado,          // DeEmail
                      EdMail.Text,   // para
                      sComCopia,    // cc
                      '' ,   // cco
                      EdAssunto.Text,
                      '' ,
                      True ,
                      nil)) then
 begin
   ssucesso := True;
   Close;
 end;
end;

procedure TfrmEMAIL0001.BitBtn2Click(Sender: TObject);
begin
  inherited;
  ssucesso := False;
  close;
end;

function TfrmEMAIL0001.EnviarEmail(Dominio, Porta, Usuario, Senha, DeNome, DeEmail, Para, CC, CCO, Assunto, ArquivoCorpo: String; AutoResposta: boolean; Anexo: TStringList): boolean;
var Send: boolean;
    fSaida: TextFile;
    I:Integer;
    Email:String;
    msg: tIdMessage;
    semailsDestinatario : TStringList;

    corpo: TStringList;
    anexos: TStringList;
begin
  corpo := TStringList.Create;
  corpo.Add(UTF8Encode(MMsg.Text));
  Anexo := TStringList.Create;
  for i := 0 to ListBox1.Items.Count -1 do
    Anexo.Add(ListBox1.Items[i]);
  if enviaMail('NFE', DeEmail, Para, Assunto, DeEmail, corpo, Anexo, CC) then
  begin
    ShowMessage('Email enviado com sucesso.');
    Send := True;
  end
  else
    Send := False;
  Close;
  ssucesso := Send;
  Result := Send;
end;

procedure TfrmEMAIL0001.FormCreate(Sender: TObject);
begin
  inherited;
  MMsg.Text := '';
end;

procedure TfrmEMAIL0001.FormShow(Sender: TObject);
///
   procedure QualUsuariodeEnvio;
   begin
      if (Trim(email_de_enviado) = '') then
      begin
            if dbInicio.Usuario.EMAIL_USUARIO <> '' then
            begin
               email_de_enviado := dbInicio.USUARIO.EMAIL_USUARIO;
               nome_envio:= DBInicio.Usuario.NOME;
               ssenha := dbinicio.Usuario.USU_EMAIL_SENHA; //senha do email do usuario /vendedor que vai mandar
            end
            else
            begin
             nome_envio := DBInicio.Empresa.RAZAO;
             ssenha := dbinicio.Empresa.EmailPassworld;
            if dbInicio.EMPRESA.EMAILVENDA <> '' then
               email_de_enviado := dbInicio.EMPRESA.EMAILVENDA
            Else
               email_de_enviado := dbInicio.EMPRESA.Email;
            end;
      end;
   end;
///
begin
   inherited;
   QualUsuariodeEnvio;
   EdMail.CharCase:=ecNormal;
   edAssunto.CharCase:=ecNormal;
   MMsg.CharCase:=ecNormal;
   EdEmailDe.text := email_de_enviado;
   ssucesso:= False;
end;

procedure TfrmEMAIL0001.ProcessarInformacoes;
begin
     EdMail.Text := sEmailCliente;

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
