unit AberturaB;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, JvExControls, JvAnimatedImage, Winapi.WinSock, Data.DB, IniFiles,
  JvGIFCtrl, RxCtrls, Vcl.ExtCtrls;

type
  TfrmSplashB = class(TForm)
    Image3: TImage;
    RxLversao: TRxLabel;
    RxLabel3: TRxLabel;
    JvGIFAnimator1: TJvGIFAnimator;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure FormCreate(Sender: tObject);

  private
    vExeLocal: String;
    vIP: String;
    procedure FormShow(Sender: tObject);
    Property IP: String Read vIp Write vIP;
    Property ExeLocal: String Read vExeLocal Write vExeLocal;
    function GetIp: String;
    procedure iniciaDB;
    function OpenAdjutorIni: boolean;
    function IsServer: boolean;
    //procedure OpenCdsVersao;
    Function CheckUpdtServer:boolean;
    Function CheckUpdtClient:boolean;
    procedure limpaconexaoDB;
    procedure AvisoFaltaIni;

  public
    function StartAdjutor:boolean;
    procedure ReStartAdjutor;

  end;

var
  frmSplashB: TfrmSplashB;

implementation

Uses Uteis, DataCad, Men0001, uVerificaVersao, RWFunc;

{$R *.dfm}

procedure TfrmSplashB.FormShow(Sender: tObject);
begin
  RxLVersao.Caption := GetBuildInfo;
  JvGIFAnimator1.Animate := True;
end;

procedure TfrmSplashB.FormClose(Sender: tObject; var Action: TCloseAction);
begin
   JvGIFAnimator1.Animate := False;
end;

procedure TfrmSplashB.limpaconexaoDB;
begin
      with (DataCadastros) do
      begin
           SQLConnection1.Connected                  := False;
           SQLConnection1.Params.Values['User_Name'] := '';
           SQLConnection1.Params.Values['PASSWORD']  := '';
           SQLConnection1.Params.Values['Database']  := '';
           //SQLConnection1.VendorLib                  := '';
           //SQLConnection1.Params.Values['SQLDialect']:= '';
      end;
end;

function TfrmSplashB.StartAdjutor:boolean;
begin

  limpaconexaoDB;


  //inicializa inifile
  if OpenAdjutorIni then
  begin
      IniciaDB;
      try
        DataCadastros.CdsVersao.Open;
        if IsServer Then
          StartAdjutor := CheckUpdtServer
        Else
          StartAdjutor := CheckUpdtClient;
      Finally
           DataCadastros.CdsVersao.Close;
      end;
  end
  Else
  begin
     AvisoFaltaIni ;
     StartAdjutor := True ;
  end;
end;

Procedure TfrmSplashB.AvisoFaltaIni;
begin
    Sleep(2000);
    FrmSplashB.close;
    //beep;
    uteis.erro  ( 'Impossível localizar arquivo de parametros !!!'+#13#10+
          'Entre em contato com Administrador do Sistema...');
end;

Procedure TfrmSplashB.ReStartAdjutor;
begin

     limpaconexaoDB;
     if OpenAdjutorIni then
        IniciaDB;

end;



{procedure TfrmSplashB.OpenCdsVersao;
begin
   try
     DataCadastros.CdsVersao.Open;
   Except
     Application.MessageBox(pchar( 'Ocorreu um erro na inicialização do sistema.'+#13+
                                   'Talvez seja necessário executar scripts no banco de dados!'),'Atenção', MB_OK+MB_ICONERROR);
     Application.Terminate;
   end;
end;}

Function TfrmSplashB.CheckUpdtClient:boolean;
begin
     CheckUpdtClient:=False;

     //verifica se nao tem registro na tebela versao
     if (DataCadastros.CdsVersao.RecordCount <= 0) or not (DataCadastros.CdsVersao.Locate('CODIGO',1,[])) then
     begin
        //caso nao tenha registros, fecha o sistema para que o servidor coloca os dados necessarios no banco de dados
        Application.MessageBox('Talvez seja necessário acessar o Servidor para atualizar o banco de dados!','Atenção', MB_OK+MB_ICONERROR);
        Application.Terminate;
     end;

     //salva o intalador atualizado no diretorio
     if not DataCadastros.CdsVersao.FieldByName('ARQUIVO').IsNull then
        TBlobField(DataCadastros.CdsVersao.FieldByName('ARQUIVO')).SaveToFile(ExtractFilePath(Application.ExeName) + '\Atualização\Adjutor'+DataCadastros.CdsVersao.FieldByName('Versao').AsString+'.exe');

     //salva o atualizador atualizado no diretorio
     if not DataCadastros.CdsVersao.FieldByName('ATUALIZADOR').IsNull then
        TBlobField(DataCadastros.CdsVersao.FieldByName('ATUALIZADOR')).SaveToFile(ExtractFilePath(Application.ExeName) + 'Atualizador.exe');

     Sleep(2000);
     //remove paste temporaria de instalação
     DeleteFile(ExtractFileDir(Application.ExeName)+'\Atualização\Instalação\Adjutor'+DataCadastros.CdsVersaoVERSAO.Value+'.exe');
     RemoveDir(ExtractFileDir(Application.ExeName)+'\Atualização\Instalação');

     //valida os arquivos
     if ValidaExeLocal(exeLocal) then
     begin
        //compara a versao do sistema com a versao do banco de dados
        if (GetVersion(exeLocal) < (DataCadastros.CdsVersaoVERSAO.Value)) then
        Begin
           //seta tabela versao do sistema para o atualizador saber oq atualizar
           DataCadastros.sqlUpdate.Close;
           DataCadastros.SqlUpdate.sql.text :='UPDATE VERSAOSISTEMA SET VERSAOSISTEMA.ATUALIZA = 1';
           DataCadastros.sqlUpdate.Execsql;
           //versao local menor que a versao do banco de dados
           try
              WinExec(pansichar(ExtractFileDir(Application.ExeName)+'\Atualizador.exe'),1);
           Except
              //mansagem de erro se o atualizador nao esta onde deveria estar
              Application.MessageBox('Não foi possível encontrar o programa de atualização.'+#13+
                                     'Contate o suporte.','Adjutor',MB_OK+MB_ICONERROR);
           end;
           //fecha o sistema
           Application.Terminate;
        end
        else //compara a versao do sistema com a versao do banco de dados
        if (GetVersion(exeLocal) > (DataCadastros.CdsVersaoVERSAO.Value)) then
        Begin
           //mensagem de erro se o servidor estiver desatualizado

           if Not DelphiAberto then // não mostra msg durante desenvolvimento
              Application.MessageBox(pchar('O executável do servidor esta desatualizado.'+#13+
                                           'Versão local      : '+GetVersion(exeLocal)+#13+
                                           'Versão do servidor: '+DataCadastros.CdsVersaoVERSAO.Value), 'Atenção', MB_OK+MB_ICONERROR);

           CheckUpdtClient:=True;
           Application.Run;
        end
        else  //verifica se o executavel esta atualizado
        if (GetVersion(exeLocal) = (DataCadastros.CdsVersaoVERSAO.Value)) then
        begin
             CheckUpdtClient:=True;
             Application.Run;
        end;
     end;
     DataCadastros.CdsVersao.Close;
end;

Function TfrmSplashB.CheckUpdtServer:boolean;
begin
     CheckUpdtServer:=False;

     //verifica se tem mais que dois registros na tebela de versao do sistema
     if DataCadastros.CdsVersao.RecordCount > 2 then
     begin
         DataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :='delete from versaosistema';
         DataCadastros.sqlUpdate.Execsql;
     end;

     //verifica se a base de dados esta sem registros, para dai entao inserir
     if (DataCadastros.CdsVersao.RecordCount <= 0) or not (DataCadastros.CdsVersao.Locate('CODIGO',1,[])) then
     begin
        DataCadastros.CdsVersao.Insert;
        DataCadastros.CdsVersao.FieldByName('Data').AsString := DateToStr(Date);
     end
     else //senão tenta localizar o codigo do sistema (1) referente ao adjutor, caso localize edita
     if DataCadastros.CdsVersao.Locate('CODIGO',1,[]) then
        DataCadastros.CdsVersao.Edit;

     //se data vazia no banco, coloca a data de hoje
     if DataCadastros.CdsVersao.FieldByName('Data').IsNull then
        DataCadastros.CdsVersao.FieldByName('Data').AsString := DateToStr(Date)
     else
     begin
        //senão se nova versao, coloca a data de hoje
        if (DataCadastros.CdsVersao.FieldByName('Versao').AsString < FrmSplashB.RxLversao.Caption) then
          DataCadastros.CdsVersao.FieldByName('Data').AsString := DateToStr(Date);
     end;
     DataCadastros.CdsVersao.FieldByName('PROGRAMA').AsString := 'Adjutor';

     //verifica a versao que esta no banco de dados com a versao do executavel para atualizar se for o caso
     if (DataCadastros.CdsVersao.FieldByName('Versao').AsString < FrmSplashB.RxLversao.Caption) then
        DataCadastros.CdsVersao.FieldByName('Versao').AsString := FrmSplashB.RxLversao.Caption;

     //verifica se a versao do executavel é menor do que a versao cadastrada no banco

     if not DelphiAberto Then // não fazer durante desenvolvimento
     if DataCadastros.CdsVersao.FieldByName('Versao').AsString < FrmSplashB.RxLversao.Caption then
     begin
        //aviso para a atualizar o servidor
        Application.MessageBox(pchar('O executável do servidor esta desatualizado. A reinstalação do AdjutorServer resolverá o problema'+#13+
                                     'Versão do servidor : '+GetVersion(exeLocal)+#13+
                                     'Versão atualizada  : '+DataCadastros.CdsVersaoVERSAO.Value), 'Atenção', MB_OK+MB_ICONERROR);
        //cria pasta para executar o instalador
        CreateDir(ExtractFileDir(Application.ExeName)+'\Atualização\Instalação');
        //copia instalador para pasta criada
        copyfile(PChar(ExtractFileDir(Application.ExeName)+'\Atualização\Adjutor'+DataCadastros.CdsVersaoVERSAO.Value+'.exe'),PChar(ExtractFileDir(Application.ExeName)+'\Atualização\Instalação\Adjutor'+DataCadastros.CdsVersaoVERSAO.Value+'.exe'),False);
        try
          //seta tabela versao do sistema para o atualizador saber oq atualizar
          DataCadastros.sqlUpdate.Close;
          DataCadastros.SqlUpdate.sql.text :='UPDATE VERSAOSISTEMA SET VERSAOSISTEMA.ATUALIZA = 1';
          DataCadastros.sqlUpdate.Execsql;
        //executa o atualizador
          WinExec(pansichar(ExtractFileDir(Application.ExeName)+'\Atualização\Instalação\Adjutor'+DataCadastros.CdsVersaoVERSAO.Value+'.exe'),1);
        Except
          //erro caso o atualizador nao estaja onde deveria estar
          Application.MessageBox('Impossível executar o arquivo de instalação!', 'Atualizador.',MB_OK+MB_ICONEXCLAMATION)
        end;
        //fecha o sistema
        Application.Terminate;
     end;

     //codigo do sistema Adjutor (1)
     DataCadastros.CdsVersao.FieldByName('Codigo').AsInteger := 1;
     //remove executavel de instalação
     DeleteFile(ExtractFileDir(Application.ExeName)+'\Atualização\Instalação\Adjutor'+DataCadastros.CdsVersaoVERSAO.Value+'.exe');
     //remove pasta temporaria de instalação
     RemoveDir(ExtractFileDir(Application.ExeName)+'\Atualização\Instalação');

     //verifica se tem o instalador no diretorio para salvar no banco de dados
     if FileExists(ExtractFilePath(Application.ExeName) + '\Atualização\Adjutor'+DataCadastros.CdsVersao.FieldByName('Versao').AsString+'.exe') then
        TBlobField(DataCadastros.CdsVersao.FieldByName('ARQUIVO')).LoadFromFile(ExtractFilePath(Application.ExeName) + '\Atualização\Adjutor'+DataCadastros.CdsVersao.FieldByName('Versao').AsString+'.exe')//salva o instalador atualizado no banco
     else
     begin
         Application.MessageBox(pchar('Inicialização com problemas.'+#13+
                                'A reinstalação do AdjutorServer nesse computador, resolvera o problema!'),'Adjutor.', MB_OK+MB_ICONERROR);
         Application.Terminate;
     end;

     //verifica se tem o Atualizador no diretorio para salvar no banco de dados
     if FileExists(ExtractFilePath(Application.ExeName) + '\Atualizador.exe') then
        TBlobField(DataCadastros.CdsVersao.FieldByName('ATUALIZADOR')).LoadFromFile(ExtractFilePath(Application.ExeName) + '\Atualizador.exe')//salva o atualizador atualizado no banco
     else
     begin
        Application.MessageBox(pchar('Inicialização com problemas. Faltando Atualizador.exe'+#13+
                                     'A reinstalação do AdjutorServer nesse computador, resolverá o problema!'),'Adjutor.', MB_OK+MB_ICONERROR);
        Application.Terminate;
     end;
     //salva o nome da aplicação no banco de dados
     DataCadastros.CdsVersao.FieldByName('NOMEARQUIVO').AsString := 'Adjutor'+DataCadastros.CdsVersao.FieldByName('Versao').AsString+'.exe';
     DataCadastros.CdsVersao.Post;
     DataCadastros.CdsVersao.ApplyUpdates(0);
     Sleep(100);
     CheckUpdtServer:=True;
end;

procedure TfrmSplashB.iniciaDB;
begin
    with DataCadastros do
    begin
      SQLConnection1.Params.Values['User_Name']    := FrmMenu.BancoConexao.Usuario;
      SQLConnection1.Params.Values['PASSWORD']     := FrmMenu.BancoConexao.Senha;
      if FrmMenu.BancoConexao.TipoConexao = 'R' then{remoto}
          SQLConnection1.Params.Values['Database']  := FrmMenu.BancoConexao.HostName+':'+FrmMenu.BancoConexao.PathRemoto
      else
      if FrmMenu.BancoConexao.TipoConexao = 'L' then{local}
          SQLConnection1.Params.Values['Database']  := FrmMenu.BancoConexao.HostName+':'+FrmMenu.BancoConexao.PathLocal;
      //SQLConnection1.VendorLib                     := FrmMenu.BancoConexao.VendorLib;
      //SQLConnection1.Params.Values['SQLDialect']   := '3';
      try
        SQLConnection1.Connected := True;
      except
            MessageDlg('Conexão falhou!',mtError, [mbOK],0);
            application.Terminate;
      end;
    end;
end;

Function TfrmSplashB.IsServer: boolean;
begin
     IsServer := ( IP+'/3050' = FrmMenu.BancoConexao.HostName ) or
                 (IP = FrmMenu.BancoConexao.HostName ) or
                 ('127.0.0.1/3050' = FrmMenu.BancoConexao.HostName ) or
                 ('127.0.0.1' = FrmMenu.BancoConexao.HostName ) or
                 ('localhost/3050' = Uppercase(FrmMenu.BancoConexao.HostName )) or
                 ('localhost' = Uppercase(frmMenu.BancoConexao.HostName )) or
                 (EmptyStr = FrmMenu.BancoConexao.HostName) ;
end;

Function TfrmSplashB.OpenAdjutorIni:boolean;
var Arquivoini:TIniFile;
begin
    result := EncontrouIni;
    if result then
    begin
      try
        Arquivoini := TIniFile.Create(GetCaminhoIniFile);
        FrmMenu.BancoConexao.TipoProtocolo := Trim(ArquivoIni.ReadString('SERVIDOR','PROTOCOLO',''));
        FrmMenu.BancoConexao.Dialeto       := '3';
        FrmMenu.BancoConexao.TipoConexao   := ArquivoIni.ReadString('SERVIDOR','CONEXAO','');
        FrmMenu.BancoConexao.ServidorDados := ArquivoIni.ReadString('SERVIDOR','SERVIDOR_DADOS','');
        FrmMenu.BancoConexao.VendorLib     := ArquivoIni.ReadString('SERVIDOR','VENDORLIB','');
        FrmMenu.BancoConexao.HostName      := ArquivoIni.ReadString('SERVIDOR','HOSTNAME','');
        FrmMenu.BancoConexao.PathRemoto    := ArquivoIni.ReadString('SERVIDOR','PATHREMOTO','');
        FrmMenu.BancoConexao.PathLocal     := ArquivoIni.ReadString('SERVIDOR','PATHLOCAL','');
        FrmMenu.BancoConexao.Usuario       := DesCriptografa(ArquivoIni.ReadString('SERVIDOR','USUARIO',''));
        FrmMenu.BancoConexao.Senha         := DesCriptografa(ArquivoIni.ReadString('SERVIDOR','SENHA',''));
        FrmMenu.BancoConexao.UnidadeServidor := ArquivoIni.ReadString('SERVIDOR','UNIDADE_SERVIDOR','');
        FrmMenu.BancoConexao.CriarMapeamento := ArquivoIni.ReadString('SERVIDOR','CRIAMAPEAMENTO','');
        FrmMenu.BancoConexao.UnidadeBackup   := ArquivoIni.ReadString('SERVIDOR','UNIDADE_BACKUP','');
        FrmMenu.BancoConexao.IndentificaBackup := ArquivoIni.ReadString('SERVIDOR','ID_BACKUP','');

        vExeLocal  := Arquivoini.ReadString('ARQUIVOS', 'exeLocal', '');
        if vExeLocal='' then // adic parametro
        begin
             vExeLocal   := ExtractFileDir(Application.ExeName) +'\'+ ExtractFileName(Application.ExeName);
             Arquivoini.WriteString('Arquivos','exelocal',vExeLocal);
        end;
      Finally
        FreeAndNil(Arquivoini);
      end;
    end;
end;

function TfrmSplashB.GetIp: String;
VAR   wsaData   :TWSAData;
begin
  //obtem o ip da maquina
  WSAStartup( 257, wsaData );
  GetIp := Trim(iNet_ntoa( PInAddr( GetHostByName( nil )^.h_addr_list^ )^ ));
end;

procedure TfrmSplashB.FormCreate(Sender: tObject);
begin
  IP := GetIP;
end;

end.
