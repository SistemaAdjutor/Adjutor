unit Abertura;



interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, JvExControls, JvAnimatedImage, Winapi.WinSock, Data.DB, IniFiles,
  JvGIFCtrl, RxCtrls, Vcl.ExtCtrls, GifImg ;

type
  TfrmSplash = class(TForm)
    Image3: TImage;
    RxLversao: TRxLabel;
    RxLabel3: TRxLabel;
    JvGIFAnimator1: TJvGIFAnimator;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    procedure FormShow(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormActivate(Sender: TObject);

  private
    vExeLocal: String;
    vIP: String;

    Property IP: String Read vIp Write vIP;
    Property ExeLocal: String Read vExeLocal Write vExeLocal;
    function GetIp: String;

    function OpenAdjutorIni: boolean;
    function IsServer: boolean;
    //procedure OpenCdsVersao;
    Function CheckUpdtServer:boolean;
    Function CheckUpdtClient:boolean;
    procedure AvisoFaltaIni;

  public
    function StartAdjutor:boolean;

  end;

var
  frmSplash: TfrmSplash;

implementation

Uses Uteis, DataCad, Men0001, uVerificaVersao, RWFunc, InicioDb;

{$R *.dfm}

procedure TfrmSplash.FormShow(Sender: tObject);
var x: integer;
begin
     RxLVersao.Caption := GetBuildInfo;
     for x := 0 to 50000 do application.ProcessMessages;
end;

function TfrmSplash.StartAdjutor:boolean;
begin
     if assigned ( frmMenu ) then
     begin
          FrmMenu.Refresh;
          application.ProcessMessages;
     end;

     if OpenAdjutorIni then
     begin
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

Procedure TfrmSplash.AvisoFaltaIni;
begin
    FrmSplash.close;
    uteis.erro  ( 'Impossível localizar arquivo de parametros !!!'+#13#10+
          'Entre em contato com Administrador do Sistema...');
end;

Function TfrmSplash.CheckUpdtClient:boolean;
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
             //Application.Run;
        end;
     end;
     DataCadastros.CdsVersao.Close;
end;

Function TfrmSplash.CheckUpdtServer:boolean;
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
        if (DataCadastros.CdsVersao.FieldByName('Versao').AsString < FrmSplash.RxLversao.Caption) then
          DataCadastros.CdsVersao.FieldByName('Data').AsString := DateToStr(Date);
     end;
     DataCadastros.CdsVersao.FieldByName('PROGRAMA').AsString := 'Adjutor';

     //verifica a versao que esta no banco de dados com a versao do executavel para atualizar se for o caso
     if (DataCadastros.CdsVersao.FieldByName('Versao').AsString < FrmSplash.RxLversao.Caption) then
        DataCadastros.CdsVersao.FieldByName('Versao').AsString := FrmSplash.RxLversao.Caption;

     //verifica se a versao do executavel é menor do que a versao cadastrada no banco

     if not DelphiAberto Then // não fazer durante desenvolvimento
     if DataCadastros.CdsVersao.FieldByName('Versao').AsString < FrmSplash.RxLversao.Caption then
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
     if not DelphiAberto then
         if FileExists(ExtractFilePath(Application.ExeName) + '\Atualização\Adjutor'+DataCadastros.CdsVersao.FieldByName('Versao').AsString+'.exe') then
            TBlobField(DataCadastros.CdsVersao.FieldByName('ARQUIVO')).LoadFromFile(ExtractFilePath(Application.ExeName) + '\Atualização\Adjutor'+DataCadastros.CdsVersao.FieldByName('Versao').AsString+'.exe')//salva o instalador atualizado no banco
         else
         begin
             Application.MessageBox(pchar('Inicialização com problemas. '+#13+'Faltando Arquivo Atualização Sistema. '+#13+
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

Function TfrmSplash.IsServer: boolean;
begin
     IsServer := ( IP+'/3050' = dbInicio.BancoConexao.HostName ) or
                 ( IP = dbInicio.BancoConexao.HostName ) or
                 ( '127.0.0.1/3050' = dbInicio.BancoConexao.HostName ) or
                 ( '127.0.0.1' = dbInicio.BancoConexao.HostName ) or
                 ( 'localhost/3050' = Uppercase(dbInicio.BancoConexao.HostName )) or
                 ( 'localhost' = Uppercase(dbInicio.BancoConexao.HostName )) or
                 ( EmptyStr = dbInicio.BancoConexao.HostName) ;

     IsServer := False;
end;

Function TfrmSplash.OpenAdjutorIni:boolean;
var Arquivoini:TIniFile;
begin
    result := EncontrouIni;
    if result then
    begin
      try
        Arquivoini := TIniFile.Create(GetCaminhoIniFile);
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

function TfrmSplash.GetIp: String;
VAR   wsaData   :TWSAData;
begin
  //obtem o ip da maquina
  WSAStartup( 257, wsaData );
  GetIp := Trim(iNet_ntoa( PInAddr( GetHostByName( nil )^.h_addr_list^ )^ ));
end;

procedure TfrmSplash.FormActivate(Sender: TObject);
var x: integer;
begin
     JvGIFAnimator1.Threaded:=True;
     JvGIFAnimator1.Animate := True;
     for x := 0 to 50000 do application.ProcessMessages;
end;

procedure TfrmSplash.FormCreate(Sender: tObject);
begin
     IP := GetIP;
end;

procedure TfrmSplash.FormDeactivate(Sender: TObject);
begin
     JvGIFAnimator1.Threaded:= False;
     JvGIFAnimator1.Animate := False;
end;

end.
