unit uBackupRestore;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  rxToolEdit, Mask, StdCtrls, ComCtrls, ExtCtrls, Inifiles,
  IBX.IBServices, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP, IdBaseComponent, IdComponent, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack,
  IdSSL, IdSSLOpenSSL, idmessage,IdAttachmentFile;

type
  TFrmBackupRestore = class(TForm)
    PageControl1: TPageControl;
    tsBackup: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    mmBackup: TMemo;
    btnBackup: TButton;
    feBanco: TFilenameEdit;
    deBackup: TDirectoryEdit;
    tsRestaurar: TTabSheet;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    mmRestaurar: TMemo;
    Button2: TButton;
    feRestaurar: TFilenameEdit;
    feRestBanco: TFilenameEdit;
    Panel1: TPanel;
    Label1: TLabel;
    Image1: TImage;
    IBRestoreService1: TIBRestoreService;
    IBBackupService1: TIBBackupService;
    sslsocket: TIdSSLIOHandlerSocketOpenSSL;
    SMTP: TIdSMTP;
    procedure btnBackupClick(Sender: tObject);
    procedure Button2Click(Sender: tObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    sUsuario,
    sSenha,
    sServerName:String;
    FNomeBackup :String;
    procedure SetNomeBackup (const AValue : string);
    procedure EnviarEmail( sucesso : boolean);
    function enviarEmailIndy(sPara, sAssunto: String; sMensagem: TStrings ;
              EnviaPDF: Boolean; sCC: TStrings; Anexos: TStrings; sReplyTo: TStrings): boolean;
  public
    { Public declarations }
    property NomeBackup :string read FNomeBackup write SetNomeBackup;
  end;

var
  FrmBackupRestore: TFrmBackupRestore;

implementation

uses
  uteis, iniciodb;
  

{$R *.dfm}

procedure TFrmBackupRestore.FormCreate(Sender: TObject);
Var
 Path,
 wArquivo:String;
 ArquivoIni:TiniFile;
begin
   try
      screen.Cursor := crHourglass;
      wArquivo   := '';
      wArquivo   := ExtractFileName(Application.ExeName);
      wArquivo   := copy(wArquivo,1,pos('.EXE',UpperCase(wArquivo)));
      Path := ExtractFilePath(Application.ExeName)+wArquivo+'ini';
      if FileExists(Path )then
         begin
           {cria o arquivo}
            ArquivoIni := TiniFile.Create(Path);
            try

              {tipo conexao R=Remoto - L=Local}
               if ArquivoIni.ReadString('SERVIDOR','CONEXAO','') = 'L' then
                  begin
                     Label1.Caption := 'Backup / Restaura '+' Servidor:LOCAL';
                     sServerName := 'localhost';
                     feBanco.Text := ArquivoIni.ReadString('SERVIDOR','PATHLOCAL','');
                     feRestBanco.Text := feBanco.Text;
                  end
               else
                  begin
                     Label1.Caption := 'Backup / Restaura '+' Servidor:'+iif(ArquivoIni.ReadString('SERVIDOR','HOSTNAME','') = '','LOCAL',ArquivoIni.ReadString('SERVIDOR','HOSTNAME',''));
                     sServerName := iif(ArquivoIni.ReadString('SERVIDOR','HOSTNAME','') = '','localhost',ArquivoIni.ReadString('SERVIDOR','HOSTNAME',''));
                     feBanco.Text := ArquivoIni.ReadString('SERVIDOR','PATHREMOTO','');
                     feRestBanco.Text := feBanco.Text;
                  end;
              {indentificação}
               sUsuario                := DesCriptografa(ArquivoIni.ReadString('SERVIDOR','USUARIO',''));
               sSenha                  := DesCriptografa(ArquivoIni.ReadString('SERVIDOR','SENHA',''));
               deBackup.Text           := ArquivoIni.ReadString('SERVIDOR','PATHBACKUP','' );
               feRestaurar.Text        := deBackup.Text;
             finally
                ArquivoIni.Free;
             end;
         end;

         if trim(deBackup.Text)='' then
            deBackup.Text:=ExtractFilePath( application.ExeName )+'\Backup\';


         case DayOfWeek( now ) of
            1: deBackup.Text := deBackup.Text + '\Domingo';
            2: deBackup.Text := deBackup.Text + '\Segunda';
            3: deBackup.Text := deBackup.Text + '\Terca';
            4: deBackup.Text := deBackup.Text + '\Quarta';
            5: deBackup.Text := deBackup.Text + '\Quinta';
            6: deBackup.Text := deBackup.Text + '\Sexta';
            7: deBackup.Text := deBackup.Text + '\Sabado';
         end;
        deBackup.Text := StringReplace(deBackup.Text,'\\','\',[rfReplaceAll,rfIgnoreCase]);
        screen.Cursor            := crDefault;
   except
      screen.Cursor              := crDefault;
      //beep;
      uteis.erro  ('Impossível mostrar arquivo de paramentos ref.'+#13#10+
           'conexão ao banco de Dados !');
   end;



end;

procedure TFrmBackupRestore.SetNomeBackup(const AValue: string);
begin
 FNomeBackup := AValue;
end;

procedure TFrmBackupRestore.btnBackupClick(Sender: tObject);
begin
 if febanco.FileName = '' then
 begin
      uteis.aviso('Indique onde esta seu Banco');
      febanco.SetFocus;
      Abort;
 end
 ELSE
 if not FILEEXISTS( febanco.FileName) THEN
 begin
      uteis.aviso('Banco de Dados Não Localizado no Caminho Informado!');
      febanco.SetFocus;
      Abort;
 end;

 if debackup.Text = '' then
 begin
    uteis.aviso('Indique onde irá Gravar o Backup');
    deBackup.SetFocus;
    Abort;
 end;

 ForceDirectories(deBackup.Text);
  try
    with IBBackupService1 do
    begin
      Params.Clear;
      BackupFile.Clear;
      ServerName := sServerName;
      LoginPrompt := False;
      Params.Add('user_name='+sUsuario);
      Params.Add('password='+sSenha);
      Active := True;
      try
        Verbose := True;
        Options := [NonTransportable, IgnoreLimbo];
        DatabaseName := feBanco.FileName;
        if NomeBackup = '' then
           BackupFile.Add(deBackup.Text+'\backupAdjutor.gbk')
        else
           BackupFile.Add(NomeBackup);
        ServiceStart;
        if FrmBackupRestore.Visible then
          While not Eof do
            mmBackup.Lines.Add(GetNextLine);
      finally
        Active := False;
      end;
    end;
  except
   if FrmBackupRestore.Visible then
      raise Exception.Create('Backup não efetuado.')
   else
     EnviarEmail(false);
  end;
   if FrmBackupRestore.Visible then
     uteis.aviso('Backup efetuado com sucesso.')
   else
     EnviarEmail(true);
end;

procedure TFrmBackupRestore.Button2Click(Sender: tObject);
begin
 if feRestaurar.FileName = '' then
 begin
    uteis.aviso('Indique onde esta o seu Arquivo de Backup');
    feRestaurar.SetFocus;
    Abort;
 end;
 if feRestBanco.Text = '' then
 begin
    uteis.aviso('Indique onde irá Restaurar o seu Backup ');
    feRestBanco.SetFocus;
    Abort;
 end;

 with IBRestoreService1 do
 begin
    Params.Clear;
    BackupFile.Clear;
    ServerName := sServerName;
    LoginPrompt := False;
    Params.Add('user_name='+sUsuario);
    Params.Add('password='+sSenha);
    Active := True;
    try
      Verbose := True;
      Options := [Replace, UseAllSpace];
      PageBuffers := 3000;
      PageSize := 4096;
      DatabaseName.Clear;
      DatabaseName.Add(feRestBanco.FileName);
      BackupFile.Clear;
      BackupFile.Add(feRestaurar.FileName);
      ServiceStart;
      While not Eof do
        mmRestaurar.Lines.Add(GetNextLine);
    finally
      Active := False;
    end;
  end;
  uteis.aviso('Restauração Efetuada com Sucesso');
end;

procedure TFrmBackupRestore.EnviarEmail( sucesso : boolean);
Var
 email : string;
 assunto  : string;
 reply, mensagem: TStringList;
 NomeArq,msg: String;
 DiaDaSemana : string;
 begin
  email:= DBInicio.Empresa.EmailInterno;
  if email <> '' then
  begin
  { Dias da Semana }
   case DayOfWeek(now) of
    2:DiaDasemana := 'Segunda-feira';
    3:DiaDasemana := 'Terça-feira';
    4:DiaDasemana := 'Quarta-feira';
    5:DiaDasemana := 'Quinta-feira';
    6:DiaDasemana := 'Sexta-feira';
   end;



   assunto :=   'Backup do Adjutor da '+DiaDaSemana;
   reply:=  TStringList.Create;
   mensagem := TStringList.Create;
   try
     reply.Clear;
     mensagem.Clear;
     reply.Add(DBInicio.Empresa.EmailInterno);
     if sucesso then
        mensagem.Add('Backup automático da '+DiaDaSemana+' do banco de dados Adjutor realizado com sucesso.')
     else
        mensagem.Add('Backup automático da '+DiaDaSemana+' do banco de dados Adjutor ocorreu algum erro.');
     // enviarEmailIndy(email, assunto, mensagem, true, nil,nil, reply);
     enviaMail('Financeiro', Trim(dbInicio.Empresa.EmailUserName), email, assunto, reply[0], mensagem, nil);


   finally
     reply.Free;
     mensagem.Free;
   end;

  end;
end;

function TFrmBackupRestore.enviarEmailIndy(sPara, sAssunto: String; sMensagem: TStrings; EnviaPDF: Boolean; sCC, Anexos, sReplyTo: TStrings): boolean;
var
  Send: boolean;
  Email:String;
  msg: TIdMessage;

begin
  send:= false;
  if (dbInicio.Empresa.EmailHost <> '') then
  begin



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
   msg:= tIdMessage.Create(self);
   try
     with MSG do
     begin
          Clear;
          Email := Trim(DBInicio.Empresa.EmailUserName);
          Recipients.EMailAddresses := sPara;
          From.Address := Trim(dbInicio.Empresa.EmailUserName);
          From.Text := email;
          From.Name := dbInicio.Empresa.RAZAO;
          Subject := sAssunto;
          Body :=  sMensagem;
          ReplyTo.Add;
          ReplyTo.Items[0].Address :=  Trim(sReplyTo[0]);
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

   finally
     msg.free;
   end;
   end;
     Result := Send;
end;



end.
