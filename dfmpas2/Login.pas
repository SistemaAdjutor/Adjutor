{**************************************************************************
| Programa...........: Login   - Nome formulario = FormLogin              *
| Objetivo...........: Aceitar a senha de usuário p/ entrada              *
| Analista...........: Marcio Neu Pacheco                                 *
| Programador........: Márcio                                             *
| Comentários........:                                                    *
|                                                                         *
| Criação............: Jan/01                                             *
| Ultima Alteração...: Jun/01                                             *
| Alterado por.......:                                                    *
***************************************************************************}
unit Login;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, db, jpeg, dbTables, Inifiles, Provider,
  SqlExpr,SqlClientDataSet, DBClient, DBLocal, DBLocalS, RwFunc;

type
  TFormLogin = class(TForm)
    Label5: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    EdNome: TEdit;
    EdSenha: TEdit;
    pn1Mensagem: TPanel;
    Label3: TLabel;
    Image2: TImage;
    BitOk: TBitBtn;
    BitCancelar: TBitBtn;
    SQLUsuario: TSQLClientDataSet;
    SQLUsuarioCODIGO: TSmallintField;
    SQLUsuarioNOME: TStringField;
    SQLUsuarioSENHA: TStringField;
    SQLUsuarioMENU1_01: TStringField;
    SQLUsuarioMENU1_02: TStringField;
    SQLUsuarioMENU1_03: TStringField;
    SQLUsuarioMENU1_04: TStringField;
    SQLUsuarioMENU1_05: TStringField;
    SQLUsuarioMENU1_06: TStringField;
    SQLUsuarioMENU2_01: TStringField;
    SQLUsuarioMENU2_02: TStringField;
    SQLUsuarioMENU2_03: TStringField;
    SQLUsuarioMENU2_04: TStringField;
    SQLUsuarioMENU3_01: TStringField;
    SQLUsuarioMENU3_02: TStringField;
    SQLUsuarioMENU3_03: TStringField;
    SQLUsuarioMENU3_04: TStringField;
    SQLUsuarioMENU4_01: TStringField;
    SQLUsuarioOP_INCALT: TStringField;
    SQLUsuarioOP_EXCLUI: TStringField;
    SQLUsuarioOP_CONSULTA: TStringField;
    SQLUsuarioOP_RELATORIO: TStringField;
    SQLUsuarioEMP_CODIGO: TStringField;
    procedure BitCancelarClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure EdNomeExit(Sender: tObject);
    procedure FormActivate(Sender: tObject);
    procedure EdNomeKeyPress(Sender: tObject; var Key: Char);
    procedure EdSenhaKeyPress(Sender: tObject; var Key: Char);
    procedure BitOkClick(Sender: tObject);
    procedure FormPaint(Sender: tObject);
    procedure EdNomeEnter(Sender: tObject);
    procedure EdSenhaEnter(Sender: tObject);
    procedure EdSenhaExit(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure LocalizaUsuario;
    procedure LiberaAcessoMenus;
  private
    { Private declarations }
    wUsuario,
    wSenha,
    wServidor,
    wNomeBaseDados,
    wProtocolo,
    wTipoServer:String;
    {variaveis}
    wDIRETORIO:String;
    procedure AtribuiArquivoParamento;
    procedure ConexaoBancoDados;
  public
    { Public declarations }
    // disponivel p/ acesso em todos os formularios
    wEdNome,wEdSenha:string;       // nome do usuário
    wValorSenha:TstringField;      // senha de acesso
    path:string;                   // path do servidor de dados
    SenhaIncorreta:Integer;
    SenhaCorreta:Boolean;
  end;

var
  FormLogin: TFormLogin;

Const
  wUsuarioAdm = 'SYSDBA';

implementation

uses DataCad1, Rwinicio, Prmd0001, DataCad, ADJ0001, Men0005, Men0001,
  Men0003, Ent0001;


var
Contador:Integer;

{$R *.DFM}





procedure TFormLogin.BitCancelarClick(Sender: tObject);
begin
    close;
end;

procedure TFormLogin.FormShow(Sender: tObject);
begin
    try
      //VerificaArquivoAntiCopia;
      AtribuiArquivoParamento;
    except
       //beep;
       uteis.aviso('Impossivel acessar arquivo de paramentros...');
    end;
    {}
    EdNome.Text  := '';
    EdSenha.Text := '';
    EdNome.Setfocus;
end;

procedure TFormLogin.FormClose(Sender: tObject; var Action: TCloseAction);
begin
    try
      DataCadastros1.CdsUser.close;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao Fechar a Tabela !'+e.message))
    end;
end;

procedure TFormLogin.EdNomeExit(Sender: tObject);
begin
    //tira brancos do final
    EdNome.Text:=Trim(EdNome.Text);
    EdNome.Color := clWindow;
end;

procedure TFormLogin.FormActivate(Sender: tObject);
var
MyList:TstringList;
servpath:string;
FileConfig:TextFile;
begin
    {mostra o Path do Executável. somente p/ ler configuracao local
    depois vai buscar e receber path do Alias}
    Path := ExtractFilePath(Application.ExeName);
    //
    //Troca a letra do path, dentro do BDE
    //{
    AssignFile(FileConfig, Path+'\setserv.cfg');
    Reset(FileConfig);
    Readln(FileConfig,servpath);
    // recebendo path do alias(drive do servidor)
    Path := servpath;
    //
    CloseFile(FileConfig);
    //Buscar caminho do BDE Master
    MyList := TStringList.Create;
    Mylist.Add('DATABASE NAME='+Path+'\Rwbdmst.mdb');
    //Session.ConfigMode := cmPersistent;
    Session.ModifyAlias('AdjMaster',MyList);
    Session.SaveConfigFile;
    //Buscar caminho do BDE Master
    MyList := TStringList.Create;
    Mylist.Add('DATABASE NAME='+Path+'\Rwbdshr.mdb');
    Session.ModifyAlias('AdjShare',MyList);
    Session.SaveConfigFile;
    // destroy form de abertura que foi carregado junto com .DPR
    FormInicio.Destroy;
    FormInicio := nil; //  nil é - From Assigned = False
end;

procedure TFormLogin.EdNomeKeyPress(Sender: tObject; var Key: Char);
begin
    // saltar com a tecla enter
    if Key= #13 then
     begin
       SelectNext(Sender as tWinControl,True,True);
       Key:=#0;
     end;
end;

procedure TFormLogin.EdSenhaKeyPress(Sender: tObject; var Key: Char);
begin
    // saltar com a tecla enter
    if Key=#13 then
       begin
           SelectNext(Sender as tWinControl,True,True);
           Key:=#0;
       end;
end;

procedure TFormLogin.BitOkClick(Sender: tObject);
begin
   if Trim(EdNome.Text) <> '' then
      begin
          LocalizaUsuario;
      end
   else
      begin
          uteis.aviso('Informe o nome e senha de usuário !');
          EdNome.SetFocus;
      end;
{
    // cria o form dinamicamente na memoria
    FormAdjutor:=TFormAdjutor.Create(Application);
    //
    Screen.Cursor := crHourGlass;
    try
      DataCadastros1.CdsUser.close;
      DataCadastros1.CdsUser.CommandText := 'Select * FROM USERS where NOME = '''+EdNome.Text+''' order by NOME';
      DataCadastros1.CdsUser.Open;
      if DataCadastros1.CdsUser.IsEmpty then
         begin
             pn1Mensagem.Caption:='Login Recusado, Usuário Desconhecido...';
             inc(Contador);
             if Contador=4 then
                close;
             //beep;
             EdNome.SetFocus;
             exit;
         end
      else
         begin
             if DataCadastros1.CdsUserSenha.AsString <> EdSenha.Text then
                begin
                    pn1Mensagem.Caption:='Login Recusado, Senha Inválida...';
                    inc(Contador);
                    if Contador=4 then
                       close;
                    //beep;
                    EdNome.SetFocus;
                    exit;
                end;
         end;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao Abrir a Tabela de Usuários !'+E.MESSAGE));
    end;
    FormAdjutor.Enabled:=True;
    {se admin estiver acessando o sistema, habita os itens de menu de Configuração
    if (EdNome.Text='admin') and (DataCadastros1.CdsUserSenha.AsString = EdSenha.Text) then
       begin
           FormMenuConfig.Senhas.Enabled := True;
           FormMenuConfig.Configuracoes.Enabled := True;
           // deixa form oculto, mas ativo
           FormLogin.Hide;
           FormAdjutor.Show;
           // nao preciso continuar, admin tem acesso total ao sistema
           exit;
       end;
    { FrmMenu }
                   { Administração
    FrmMenu.Cadastros.Enabled       := IIF(DataCadastros1.CdsUserMENU1_01.AsString = 'T','TRUE','FALSE');
    FrmMenu.Financeiro.Enabled      := IIF(DataCadastros1.CdsUserMENU1_02.AsString = 'T','TRUE','FALSE');
    FrmMenu.Comercial.Enabled       := IIF(DataCadastros1.CdsUserMENU1_03.AsString = 'T','TRUE','FALSE');
    FrmMenu.Movimentos.Enabled      := IIF(DataCadastros1.CdsUserMENU1_04.AsString = 'T','TRUE','FALSE');
    FrmMenu.Utilitarios.Enabled     := IIF(DataCadastros1.CdsUserMENU1_05.AsString = 'T','TRUE','FALSE');
                   { Produção
    formMenuProducao.Engenharia.Enabled := IIF(DataCadastros1.CdsUserMENU2_01.AsString = 'T','TRUE','FALSE');
    formMenuProducao.PCP.Enabled        := IIF(DataCadastros1.CdsUserMENU2_02.AsString = 'T','TRUE','FALSE');
                   { Configuração
    formMenuConfig.Empresa.Enabled      := IIF(DataCadastros1.CdsUserMENU3_01.AsString = 'T','TRUE','FALSE');
                   { S.I.E.
    FormEntrada.SbutSie.Enabled         := IIF(DataCadastros1.CdsUserMENU4_01.AsString = 'T','TRUE','FALSE');
    FormLogin.Hide;
    FormAdjutor.Show;
}
end;

procedure TFormLogin.FormPaint(Sender: tObject);
var wArquivo:TextFile; wLinha:String;
begin
    TRY
      {Reiniciado por dentro do Sistema}
      if FileExists('Log.Tmp') then
         begin
             AssignFile(wArquivo, 'Log.Tmp');
             Reset(wArquivo);
             Readln(wArquivo,wLinha);
             EdNome.Text := wLinha;
             Readln(wArquivo,wLinha);
             EdSenha.Text := wLinha;
             CloseFile(wArquivo);
             DeleteFile('Log.Tmp');
             BitOk.OnClick(BitOk);
         end;
    EXCEPT
        {}
    END;
end;

procedure TFormLogin.EdNomeEnter(Sender: tObject);
begin
    EdNome.Color := $0080FFFF;
end;

procedure TFormLogin.EdSenhaEnter(Sender: tObject);
begin
    EdSenha.Color := $0080FFFF;
end;

procedure TFormLogin.EdSenhaExit(Sender: tObject);
begin
    EdSenha.Color := clWindow;
end;

procedure TFormLogin.AtribuiArquivoParamento;
Var
ArquivoIni:TiniFile;
Path:String;
begin
   try
     screen.Cursor := crHourglass;
     Path := ExtractFilePath(Application.ExeName)+'\Adjutor.ini';
     if FileExists(Path )then
        begin
          {cria o arquivo}
           ArquivoIni := TiniFile.Create(Path);
          {atribui informações}
          {tipo servidor}
           if ArquivoIni.ReadString('SERVIDOR','LOCAL','') = 'S' then
              begin
                 wTipoServer := 'L'; //local
              end
           else
              begin
                 wTipoServer := 'R'; //remoto
              end;
          {caminho seridor}
           wServidor      := ArquivoIni.ReadString('SERVIDOR','PROTOCOLO','');
           wNomeBaseDados := ArquivoIni.ReadString('SERVIDOR','DATABASENAME','');
           wUsuario       := DesCriptografa(ArquivoIni.ReadString('SERVIDOR','USUARIO',''));
           wSenha         := DesCriptografa(ArquivoIni.ReadString('SERVIDOR','SENHA',''));
          {protocolo}
           if copy(ArquivoIni.ReadString('SERVIDOR','PROTOCOLO',''),1,3) = 'TCP' then
              begin
                 wProtocolo := 'TCP';
              end;
           if copy(ArquivoIni.ReadString('SERVIDOR','PROTOCOLO',''),1,9) = 'NamedPipe' then
              begin
                 wProtocolo := 'NamedPipe';
              end;
           if copy(ArquivoIni.ReadString('SERVIDOR','PROTOCOLO',''),1,3) = 'SPX' then
              begin
                 wProtocolo := 'SPX';
              end;
           {chama procedimento p/conexao}
            ConexaoBancoDados;
        end
     else
        begin
           screen.Cursor            := crDefault;
           //beep;
           uteis.erro  ('Arquivo de configuração não encontrado:'+#13#10+
                '     Paramentro(s) do(s) Sistema...    ');
           if (EdNome.Text = wUsuarioAdm) then
              begin
{
                 if uteis.confirmacao ( 'Deseja configurar arquivo de paramentros ...') = mryes then
                    begin
                       screen.Cursor := crHourglass;
                       FormParametros := TFormParametros.Create(application);
                       try
                         FormParametros.ShowModal;
                         FormParametros.PageControl1.ActivePage := FormParametros.TbConfigServer;
                       finally
                         FormParametros.Destroy;
                         FormParametros := Nil;
                       end;
                       screen.Cursor := crDefault;
                    end
                 else
                    begin
                       Application.Terminate;
                    end;
}
              end
           else
              begin
                 screen.Cursor := crDefault;
                 //beep;
                 uteis.erro  ('Entre em contato com Administrador do Sistema:'+#13#10+'Falta arquivo de Paramentros..');
                 Application.Terminate;
              end;
           end;
   except
       screen.Cursor := crDefault;
       //beep;
       uteis.erro  ('Impossível localizar arquivo de parametros !!!'+#13+
            'Entre em contato com Administrador do Sistema...');
   end;
end;

procedure TFormLogin.ConexaoBancoDados;
begin
    try
      with DataCadastros do
           begin
              if SQLConnection1.Connected then
                 SQLConnection1.Connected := False;
              //SQLConnection.Params.Values['User_Name']  := 'SYSDBA';//EdUsuario.Text;
              //SQLConnection.Params.Values['PASSWORD']   := 'rwacesso'; //'esuoh';
              SQLConnection1.Params.Values['User_Name']  := wUsuario;
              SQLConnection1.Params.Values['PASSWORD']   := wSenha;
              SQLConnection1.Params.Values['Database']   := wNomeBaseDados;
              SQLConnection1.Params.Values['SQLDialect'] := '3';
              try
                SQLConnection1.Connected := True;
                screen.Cursor           := crDefault;
                //SenhaCorreta := True;
                //close;
              except on E:Exception do
                  begin
                     screen.Cursor            := crDefault;
                     if UpperCase(copy(E.Message,1,44)) = 'YOUR USER NAME AND PASSWORD ARE NOT DEFINED.' then
                        begin
                            //beep;
                            uteis.erro  ('Identificação invalida !, Usuário não cadastrado...');
                            SenhaIncorreta := SenhaIncorreta + 1;
                            EdNome.SetFocus;
                            EdNome.SelectAll;
                            if SenhaIncorreta = 3 then
                                begin
                                   //beep;
                                   uteis.aviso('Identificação invalida !, Usuário não Autorizado...');
                                   application.Terminate;
                                 end;
                        end
                     else
                        begin
                           MessageDlg('Conexão falhou, passe a mensagem abaixo ao Administrador de Sistemas:'+#13+ E.Message,mtError, [mbOK],0);
                           EdSenha.Text := '';
                           EdSenha.SetFocus;
                        end;
                  end;
              end;
           end;
    except
       screen.Cursor := crDefault;
    end;
end;

procedure TFormLogin.FormCreate(Sender: tObject);
begin
   DataCadastros.SQLConnection1.Connected := False;
   SenhaIncorreta                         := 0;
   SenhaCorreta                           := False;
end;

procedure TFormLogin.LocalizaUsuario;
begin
    try
      {busca o usuario}
      SQLUsuario.Close;
      SQLUsuario.CommandText := 'select * from USERS where NOME ='''+EdNome.Text+'''';
      SQLUsuario.open;
      if not SQLUsuario.IsEmpty then
         begin
             if SQLUsuarioSENHA.AsString <> EdSenha.Text then
                begin
                    pn1Mensagem.Caption:='Login Recusado, Senha Inválida...';
                    inc(Contador);
                    if Contador=4 then
                       begin
                           SqlUsuario.Close;
                           Application.Terminate;
                       end;
                    //beep;
                    EdNome.SetFocus;
                    exit;
                end
             else
                begin
                    LiberaAcessoMenus;
                    SenhaCorreta := True;
                end;
         end
      else
         begin
             pn1Mensagem.Caption:='Login Recusado, Usuário Desconhecido...';
             inc(Contador);
             if Contador=4 then
                begin
                    SqlUsuario.Close;
                    Application.Terminate;
                end;
             //beep;
             EdNome.SetFocus;
         end;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao Abrir a Tabela de Usuarios !'+e.message));
    end;
end;

procedure TFormLogin.LiberaAcessoMenus;
begin
    FormAdjutor:=TFormAdjutor.Create(Application);
    //
    Screen.Cursor := crHourGlass;
    try
      SQLUsuario.Close;
      SQLUsuario.CommandText := 'select * from Users Where Nome = '''+Trim(EdNome.Text)+''' order by Nome';
      SQLUsuario.Open;
      if not SQLUsuario.IsEmpty then
         begin
             FormAdjutor.Enabled:=True;
             {se admin estiver acessando o sistema, habita os itens de menu de Configuração}
             if (EdNome.Text='ADMIN') and (SQLUsuarioSENHA.AsString = EdSenha.Text) then
                begin
                    FormMenuConfig.Senhas.Enabled := True;
                    FormMenuConfig.Configuracoes.Enabled := True;
                    // deixa form oculto, mas ativo
                    FormLogin.Hide;
                    FormAdjutor.Show;
                    // nao preciso continuar, admin tem acesso total ao sistema
                    exit;
                end;
             { Administração }
             FrmMenu.Cadastros.Enabled       := IIF(DataCadastros1.CdsUserMENU1_01.AsString = 'T','TRUE','FALSE');
             FrmMenu.Financeiro.Enabled      := IIF(DataCadastros1.CdsUserMENU1_02.AsString = 'T','TRUE','FALSE');
             FrmMenu.Comercial.Enabled       := IIF(DataCadastros1.CdsUserMENU1_03.AsString = 'T','TRUE','FALSE');
             FrmMenu.Movimentos.Enabled      := IIF(DataCadastros1.CdsUserMENU1_04.AsString = 'T','TRUE','FALSE');
             FrmMenu.Utilitarios.Enabled     := IIF(DataCadastros1.CdsUserMENU1_05.AsString = 'T','TRUE','FALSE');
                            { Produção }
             formMenuProducao.Engenharia.Enabled := IIF(DataCadastros1.CdsUserMENU2_01.AsString = 'T','TRUE','FALSE');
             formMenuProducao.PCP.Enabled        := IIF(DataCadastros1.CdsUserMENU2_02.AsString = 'T','TRUE','FALSE');
                            { Configuração }
             formMenuConfig.Empresa.Enabled      := IIF(DataCadastros1.CdsUserMENU3_01.AsString = 'T','TRUE','FALSE');
                            { S.I.E. }
             FormEntrada.SbutSie.Enabled         := IIF(DataCadastros1.CdsUserMENU4_01.AsString = 'T','TRUE','FALSE');
             FormLogin.Hide;
             FormAdjutor.Show;
         end;
    except on E:EDataBaseError do
       uteis.erro  (Pchar('Impossível acessar o arquivo: '+ #13 + E.message));
    end;
    Screen.Cursor := crDefault;
end;

end.
