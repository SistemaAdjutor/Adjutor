unit Senha000;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls,Inifiles, Provider, SqlExpr,SqlClientDataSet,
  DB, DBClient, DBLocal, DBLocalS,Menus;



type
  TFrmSenha = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    EdUsuario: TEdit;
    BitCancelar: TBitBtn;
    BitConfirmar: TBitBtn;
    msksenha: TMaskEdit;
    SQLUsuario: TSQLClientDataSet;
    SQLAcessoUsuario: TSQLClientDataSet;
    SQLParamentroUsa: TSQLClientDataSet;
    procedure BitCancelarClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure FormCreate(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure EdUsuarioEnter(Sender: tObject);
    procedure EdUsuarioExit(Sender: tObject);
    procedure msksenhaEnter(Sender: tObject);
    procedure msksenhaExit(Sender: tObject);
    procedure BitConfirmarClick(Sender: tObject);
    procedure FormKeyPress(Sender: tObject; var Key: Char);
    procedure FormKeyDown(Sender: tObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    {variaveis}
      wUsuario,
      wSenha,
      wServidor,
      wNomeBaseDados,
      wProtocolo,
      wTipoServer:String;
    {procedimentos}
     procedure LocalizaUsuario;
     procedure LiberaAcessoMenus;
     procedure VerifcarParamentrosUsuario;
     procedure LiberaAcessoSubmenus(Form: TComponent; NomeComp:String; wNOME_MENU:String);
     procedure AtribuiArquivoParamento;
     procedure ConexaoBancoDados;
     procedure VerificaArquivoAntiCopia;
     procedure AtualizaAcessosUsuario;
     procedure CarregaEmpresaSelecionada;
     procedure AtribuirParamentrosEmpresa;
  public
    { Public declarations }
    SenhaIncorreta:Integer;
    SenhaCorreta:Boolean;
  end;

var
  FrmSenha: TFrmSenha;
const
  wUsuarioAdm = 'SYSDBA';

implementation

uses  sis99999, SISBASE0,UFuncoes, Menu;


//function uteis.confirmacao (  msg : pchar ) : word; far; external 'funcsys.dll';



{$R *.DFM}

procedure TFrmSenha.BitCancelarClick(Sender: tObject);
begin
   if FrmMenu.SistemaAtivo = False then
      Application.Terminate
   else
      begin
         close;
      end;   
end;

procedure TFrmSenha.FormShow(Sender: tObject);
Begin
   try
     VerificaArquivoAntiCopia;
     AtribuiArquivoParamento;
   except
      //beep;
      uteis.aviso('Impossivel acessar arquivo de paramentros...');
   end;
   {}
    EdUsuario.Text := '';
    msksenha.Text  := '';
    EdUsuario.Setfocus;
end;

procedure TFrmSenha.FormCloseQuery(Sender: tObject; var CanClose: Boolean);
begin
   try
      if FrmMenu.SistemaAtivo = False then
         begin
            if SenhaCorreta = False then
               application.Terminate;
         end
      else
         begin
            //
            CarregaEmpresaSelecionada;
            AtribuirParamentrosEmpresa;
            //
            FrmMenu.SpBClientes.Enabled    := FrmMenu.Clientes1.Enabled;
            FrmMenu.SpBProdutos.Enabled    := FrmMenu.Produtos.Enabled;
            FrmMenu.SpBTelvendas.Enabled   := FrmMenu.DigitaodePedido1.Enabled;
            FrmMenu.SpBCRC.Enabled         := FrmMenu.ContasaReceber1.Enabled;
            FrmMenu.SpBBackup.Enabled      := FrmMenu.CpiadeSeguranca1.Enabled;
            FrmMenu.SpBSaida.Enabled       := FrmMenu.Sada1.Enabled;
            FrmMenu.SpBAjuda.Enabled       := FrmMenu.Help1.Enabled;
           {}
            if frmmenu.Status.Panels[1].Text  = 'RENEW' then
               begin
                  FrmMenu.ManutenoRenew1.Visible := True;
                  FrmMenu.ManutenoRenew1.Enabled := True;
               end
            else
               begin
                  FrmMenu.ManutenoRenew1.Visible := False;
                  FrmMenu.ManutenoRenew1.Enabled := False;
               end;
         end;
   except
      uteis.aviso('Impossível fechar Tabela...');
   end;
end;

procedure TFrmSenha.FormCreate(Sender: tObject);
begin
   DadosBase0.SQLConnection.Connected := False;
   SenhaIncorreta                     := 0;
   SenhaCorreta                       := False;
end;

procedure TFrmSenha.FormClose(Sender: tObject; var Action: TCloseAction);
begin
  {chama a rotina para verificar impressora}
   //FrmMenu.VerificaImpressora;
end;

procedure TFrmSenha.EdUsuarioEnter(Sender: tObject);
begin
   EdUsuario.color := $0080FFFF;
end;

procedure TFrmSenha.EdUsuarioExit(Sender: tObject);
begin
   EdUsuario.color := clWindow;
end;

procedure TFrmSenha.msksenhaEnter(Sender: tObject);
begin
   msksenha.color := $0080FFFF;
end;

procedure TFrmSenha.msksenhaExit(Sender: tObject);
begin
   msksenha.color := clWindow;
end;

procedure TFrmSenha.LocalizaUsuario;
begin
   try
  {busca o usuario}
   SQLUsuario.Close;
   SQLUsuario.CommandText := 'select * from USUARIO where USU_NOME ='''+EdUsuario.Text+'''';
   SQLUsuario.open;
   if not SQLUsuario.IsEmpty then
      begin
         while not SQLUsuario.Eof do
            begin
               if SQLUsuario.FieldByName('USU_SENHA').AsString <> msksenha.Text then
                  begin
                     SQLUsuario.Next;
                  end
               else
                   begin
                     //
                      LiberaAcessoMenus;
                      AtualizaAcessosUsuario;
                      VerifcarParamentrosUsuario;
                     //
                      SenhaCorreta         := True;
                      frmmenu.Status.Panels[1].text  := Edusuario.Text;
                      FrmMenu.SistemaAtivo := True;
                      Close;
                      exit;
                   end;
            end;
          {senha nao confere}
          if SQLUsuario.Eof then
             begin
                //beep;
                uteis.aviso('Senha informada para usuário esta incorreta...');
                msksenha.Text := '';
                msksenha.setfocus;
                SenhaIncorreta := SenhaIncorreta + 1;
                if SenhaIncorreta = 3 then
                   begin
                      //beep;
                      uteis.aviso('Usuário informado não autorizado...');
                      Close;
                      application.Terminate;
                   end;
             end;
      end
   else
      begin
          //messagedlg('Usuário Não Cadastrado ! ',mtwarning,[mbok],0);
          uteis.aviso('Usuário informado não cadastrado !');
          edusuario.setfocus;
          SenhaIncorreta := SenhaIncorreta + 1;
          if SenhaIncorreta = 3 then
             begin
                //beep;
                uteis.aviso('Usuário informado não autorizado...');
                Close;
                application.Terminate;
             end;
          exit;
      end;
   finally
      SQLUsuario.Close;
      SQLAcessoUsuario.Close;
   end;
end;

procedure TFrmSenha.BitConfirmarClick(Sender: tObject);
begin
   if Trim(EdUsuario.Text) <> '' then
      begin
         LocalizaUsuario;
      end
   else
      begin
         uteis.aviso('Informe o nome e senha de usuário !');
         EdUsuario.SetFocus;
      end;
end;

procedure TFrmSenha.ConexaoBancoDados;
begin
   try
     with DadosBase0 do
          begin
             if SQLConnection.Connected then
                SQLConnection.Connected := False;
             //SQLConnection.Params.Values['User_Name']  := 'SYSDBA';//EdUsuario.Text;
             //SQLConnection.Params.Values['PASSWORD']   := 'rwacesso'; //'esuoh';
             SQLConnection.Params.Values['User_Name']  := wUsuario;
             SQLConnection.Params.Values['PASSWORD']   := wSenha;
             SQLConnection.Params.Values['Database']   := wNomeBaseDados;
             SQLConnection.Params.Values['SQLDialect'] := '3';
             try
               SQLConnection.Connected := True;
               screen.Cursor           := crDefault;
               //SenhaCorreta := True;
               close;
             except on E:Exception do
                 begin
                    screen.Cursor            := crDefault;
                    if UpperCase(copy(E.Message,1,44)) = 'YOUR USER NAME AND PASSWORD ARE NOT DEFINED.' then
                       begin
                           //beep;
                           uteis.erro  ('Identificação invalida !, Usuário não cadastrado...');
                           SenhaIncorreta := SenhaIncorreta + 1;
                           EdUsuario.SetFocus;
                           EdUsuario.SelectAll;
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
                          msksenha.Text := '';
                          msksenha.SetFocus;
                       end;
                 end;
             end;
          end;
   except
      screen.Cursor            := crDefault;
   end;
end;

procedure TFrmSenha.AtribuiArquivoParamento;
Var
ArquivoIni:TiniFile;
Path:String;
begin
   try
     screen.Cursor := crHourglass;
     Path := ExtractFilePath(Application.ExeName)+'\Captare.ini';
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
           if (EdUsuario.Text = wUsuarioAdm) then
              begin
                 if uteis.confirmacao ( 'Deseja configurar arquivo de paramentros ...') = mryes then
                    begin
                       screen.Cursor := crHourglass;
                       FrmParametros := TFrmParametros.Create(application);
                       try
                         FrmParametros.ShowModal;
                         FrmParametros.PageControl1.ActivePage := FrmParametros.TabConfigServer;
                       finally
                         FrmParametros.Destroy;
                         FrmParametros := Nil;
                       end;
                       screen.Cursor := crDefault;
                    end
                 else
                    begin
                       Application.Terminate;
                    end;
              end
           else
              begin
                 screen.Cursor            := crDefault;
                 //beep;
                 uteis.erro  ('Entre em contato com Administrador do Sistema:'+#13#10+'Falta arquivo de Paramentros..');
                 Application.Terminate;
              end;
           end;
   except
       screen.Cursor            := crDefault;
       //beep;
       uteis.erro  ('Impossível localizar arquivo de parametros !!!'+#13+
            'Entre em contato com Administrador do Sistema...');
   end;
end;

procedure TFrmSenha.FormKeyPress(Sender: tObject; var Key: Char);
begin
   if key = #27 then
      begin
         Application.Terminate;
         key := #0;
      end;
end;

procedure TFrmSenha.VerificaArquivoAntiCopia;
begin
   try
     {atribui o diretorio do windows\system}
     if not (fileExists(ExtractSystemDir+'\rwic2003.dll')) then
        begin
           try
              uteis.aviso('       Cópia do SoftWare Captare-Plus não autorizada...      '+#13#10+
                    'Caso deseje adquirir o SoftWare Captare-Plus entre em contato'+#13#10+
                    '          com a Renew Consultoria em Informática Ltda.       '+#13#10+
                    'Fone: 41-275-2627 / 275-1131 ou  e-mail: renew@renewpr.com.br'+#13#10+
                    '                         [ Pirataria de softWare é Crime ]          '+#13#10+
                    '                     Lei nº 9.609, de 19 de Fevereiro de 1998.      ');
           finally
              Application.Terminate;
           end;
        end;
   except
     begin
        //beep;
        uteis.erro  ('Impossível verificar autenticação do SoftWare Captare-Plus....');
        Application.Terminate;
     end;
   end
end;

procedure TFrmSenha.LiberaAcessoMenus;
 Var
 I:Integer;
begin
   try
     SQLAcessoUsuario.Close;
     SQLAcessoUsuario.CommandText := 'select * from USUARIO_ACESSO where USA_COD_USUARIO = '''+SQLUsuario.FieldByname('USU_CODIGO').AsString+'''';
     SQLAcessoUsuario.Open;
    {}
     for I := 0 to FrmMenu.MainMenu.Items.Count-1 do
         if FrmMenu.MainMenu.Items[I].Caption <> '-' then
            begin
               if SQLAcessoUsuario.Locate('USA_MENU',ExtrairCarecter(FrmMenu.MainMenu.Items[I].Caption),[]) then
                  begin
                     if SQLAcessoUsuario.FieldByName('USA_ACESSO').AsInteger > 0 then
                        begin
                           FrmMenu.MainMenu.Items[I].Enabled := True;
                           LiberaAcessoSubmenus(FrmMenu,FrmMenu.MainMenu.Items[I].Name,ExtrairCarecter(FrmMenu.MainMenu.Items[I].Caption));
                        end
                     else
                        begin
                           FrmMenu.MainMenu.Items[I].Enabled := False;
                           LiberaAcessoSubmenus(FrmMenu,FrmMenu.MainMenu.Items[I].Name,ExtrairCarecter(FrmMenu.MainMenu.Items[I].Caption));
                        end;
                  end
               else
                  begin
                     FrmMenu.MainMenu.Items[I].Enabled := False;
                     LiberaAcessoSubmenus(FrmMenu,FrmMenu.MainMenu.Items[I].Name,ExtrairCarecter(FrmMenu.MainMenu.Items[I].Caption));
                  end;
            end;
   except on E:EDataBaseError do
       begin
          uteis.erro  (Pchar('Impossível acessar o arquivo: '+ #13 + E.message));
       end;
   end;
end;

procedure TFrmSenha.LiberaAcessoSubmenus(Form: TComponent;
  NomeComp: String ; wNOME_MENU:String);
  Var
  I,X:Integer;
  wSUB_MENU:String;
begin
   try
      X :=0;
      for I := 0 to TMenuItem(Form.FindComponent(NomeComp)).Count - 1 do
         if TMenuItem(Form.FindComponent(NomeComp)).Items[I].Caption <> '-' then
            begin
               wSUB_MENU := (wNOME_MENU + ExtrairCarecter(TMenuItem(Form.FindComponent(NomeComp)).Items[I].Caption));
               if SQLAcessoUsuario.Locate('USA_MENU',wSUB_MENU,[]) then
                  begin
                     if SQLAcessoUsuario.FieldByName('USA_ACESSO').AsInteger > 0 then
                        begin
                           TMenuItem(Form.FindComponent(NomeComp)).Items[I].Enabled := True;
                        end
                     else
                        TMenuItem(Form.FindComponent(NomeComp)).Items[I].Enabled := False;
                  end
               else
                  begin
                     TMenuItem(Form.FindComponent(NomeComp)).Items[I].Enabled := False;
                  end;
            end;
   except on E:EDataBaseError do
       begin
          uteis.erro  (Pchar('Impossível acessar o arquivo: '+ #13 + E.message));
       end;
   end;

end;

procedure TFrmSenha.AtualizaAcessosUsuario;
begin
   try
      dbInicio.Usuario.Codigo           := SQLUsuario.FieldByname('USU_CODIGO').AsString;
      dbInicio.Usuario.nome          := SQLUsuario.FieldByname('USU_NOME').AsString;
      FrmMenu.wACESSOS_USUARIO.LIB_CREDITO      := SQLUsuario.FieldByname('USU_LIBERA_CREDITO').AsString;
      FrmMenu.wACESSOS_USUARIO.LIB_PRECO        := SQLUsuario.FieldByname('USU_LIBERA_PRECO').AsString;
      FrmMenu.wACESSOS_USUARIO.LIB_DESCONTO     := SQLUsuario.FieldByname('USU_LIBERA_DESCONTO').AsString;
      FrmMenu.wACESSOS_USUARIO.ESTATISTICA      := SQLUsuario.FieldByname('USU_ESTATISTICA').AsString;
   except
     //beep;
     uteis.erro  ('Impossível atribuir acessos ref. o usuário');
   end;
end;

procedure TFrmSenha.CarregaEmpresaSelecionada;
 Var
  SQLEmpresa:TSQLClientDataSet;
begin
   try
     try
         SQLEmpresa              := TSQLClientDataSet.Create(Nil);
         SQLEmpresa.DBConnection := DadosBase0.SQLConnection;
         SQLEmpresa.Close;
         SQLEmpresa.CommandText  := 'select EMP.*,AUF_ALIQ,AUF_REDUCAO from EMPRESA EMP left join ALIQ_ESTADOS on EMP_UF = AUF_CODIGO';
         SQLEmpresa.Open;
         FrmMenu.CbEmpresa.Items.Clear;
         if not SQLEmpresa.IsEmpty then
            begin
               FrmMenu.CbEmpresa.Items.Add(SQLEmpresa.FieldByname('EMP_FANTASIA').AsString);
               if SQLEmpresa.FieldByName('EMP_STATUS').AsString = 'S' then
                  begin
                     FrmMenu.CEmpresa.AsInteger       := SQLEmpresa.FieldByname('EMP_CODIGO').AsInteger;
                     FrmMenu.CbEmpresa.Text           := SQLEmpresa.FieldByname('EMP_FANTASIA').AsString;
                    {}
                     dbInicio.Empresa.CODIGO       := FormatFloat('0000',SQLEmpresa.FieldByname('EMP_CODIGO').AsInteger);
                     dbInicio.Empresa.PESSOA       := SQLEmpresa.FieldByname('EMP_PESSOA').AsString;
                     dbInicio.Empresa.CNPJ_CNPF    := ColocaMascraCNPJ_CNPF(SQLEmpresa.FieldByname('EMP_CNPJ_CNPF').AsString);
                     dbInicio.Empresa.INSC_EST     := SQLEmpresa.FieldByname('EMP_INSC_EST').AsString;
                     dbInicio.Empresa.RAZAO        := SQLEmpresa.FieldByname('EMP_RAZAO').AsString;
                     dbInicio.Empresa.FANTASIA     := SQLEmpresa.FieldByname('EMP_FANTASIA').AsString;
                     dbInicio.Empresa.ENDERECO     := SQLEmpresa.FieldByname('EMP_ENDERECO').AsString;
                     dbInicio.Empresa.BAIRRO       := SQLEmpresa.FieldByname('EMP_BAIRRO').AsString;
                     dbInicio.Empresa.CIDADE       := SQLEmpresa.FieldByname('EMP_CIDADE').AsString;
                     dbInicio.Empresa.UF           := SQLEmpresa.FieldByname('EMP_UF').AsString;
                     dbInicio.Empresa.CEP          := copy(SQLEmpresa.FieldByname('EMP_CEP').AsString,1,5)+'-'+copy(SQLEmpresa.FieldByname('EMP_CEP').AsString,6,3);
                     dbInicio.Empresa.FONE1        := MascraTELEFONE(SQLEmpresa.FieldByname('EMP_FONE1').AsString);
                     dbInicio.Empresa.FONE2        := MascraTELEFONE(SQLEmpresa.FieldByname('EMP_FONE2').AsString);
                     dbInicio.Empresa.FONE3        := MascraTELEFONE(SQLEmpresa.FieldByname('EMP_FONE3').AsString);
                     dbInicio.Empresa.FAX          := MascraTELEFONE(SQLEmpresa.FieldByname('EMP_FAX').AsString);
                     dbInicio.Empresa.HOME_PAGE    := SQLEmpresa.FieldByname('EMP_HOME_PAGE').AsString;
                     dbInicio.Empresa.E_MAIL       := SQLEmpresa.FieldByname('EMP_E_MAIL').AsString;
                     dbInicio.Empresa.VPN_IP       := SQLEmpresa.FieldByname('EMP_VPN_SIMPLES').AsString;
                     dbInicio.Empresa.ALIQ_ICMS    := SQLEmpresa.FieldByname('AUF_ALIQ').AsCurrency;
                     dbInicio.Empresa.REDUCAO_ICMS := SQLEmpresa.FieldByname('AUF_REDUCAO').AsCurrency;
                  end;
               SQLEmpresa.Next;
            end
         else
            begin
               FrmMenu.CEmpresa.Clear;
               FrmMenu.CbEmpresa.Text       := 'E M P R E S A';
            end;
     finally
         SQLEmpresa.Close;
         FreeAndNil(SQLEmpresa);
     end;

   except
      //beep;
      uteis.erro  ('Impossivel acessar arquivo ref. dados da empresa...');
   end;

end;

procedure TFrmSenha.FormKeyDown(Sender: tObject; var Key: Word;
  Shift: TShiftState);
begin
   case key of
       VK_F1:begin
                if (EdUsuario.Text = wUsuarioAdm) and(msksenha.Text = 'RWACESSO') then
                   begin
                       screen.Cursor := crHourglass;
                       FrmParametros := TFrmParametros.Create(application);
                       try
                         FrmParametros.ShowModal;
                         FrmParametros.PageControl1.ActivePage := FrmParametros.TabConfigServer;
                       finally
                         FrmParametros.Destroy;
                         FrmParametros := Nil;
                       end;
                       screen.Cursor := crDefault;
                   end;
            end;
   end;

end;

procedure TFrmSenha.AtribuirParamentrosEmpresa;
 Var
  SQLParamentros:TSQLClientDataSet;
begin
   try
     try
         SQLParamentros              := TSQLClientDataSet.Create(Nil);
         SQLParamentros.DBConnection := DadosBase0.SQLConnection;
         SQLParamentros.Close;
         SQLParamentros.CommandText  := 'select PAR_EMISSAO_NF_FISICA from PARAMETROS';
         SQLParamentros.Open;
         if not SQLParamentros.IsEmpty then
            begin
               FrmMenu.PLUS_PARAMENTROS.EMISSAO_NF_FISICA := SQLParamentros.FieldByname('PAR_EMISSAO_NF_FISICA').AsString;
            end;
     finally
         SQLParamentros.Close;
         FreeAndNil(SQLParamentros);
     end;
   except
      //beep;
      uteis.erro  ('Impossível atribuir paramentros ...');
   end;
end;

procedure TFrmSenha.VerifcarParamentrosUsuario;
begin
   try
     SQLParamentroUsa.Close;
     SQLParamentroUsa.CommandText := 'select USP_REEMISSAO_PEDIDO_T,USP_REEMISSAO_PEDIDO_P from USUARIO_PARAMETRO where USP_COD_USUARIO = '''+SQLUsuario.FieldByname('USU_CODIGO').AsString+'''';
     SQLParamentroUsa.Open;
     if not SQLParamentroUsa.IsEmpty then
        begin
           FrmMenu.wACESSOS_USUARIO.REEMISSAO_PED_T  := SQLParamentroUsa.FieldByname('USP_REEMISSAO_PEDIDO_T').AsString;
           FrmMenu.wACESSOS_USUARIO.REEMISSAO_PED_P  := SQLParamentroUsa.FieldByname('USP_REEMISSAO_PEDIDO_P').AsString;
        end
     else
        begin
           FrmMenu.wACESSOS_USUARIO.REEMISSAO_PED_T  := 'N';
           FrmMenu.wACESSOS_USUARIO.REEMISSAO_PED_P  := 'N';
        end;
     SQLParamentroUsa.Close;
   except on E:EDataBaseError do
       begin
          uteis.erro  (Pchar('Impossível atualizar paramentros ref .usuário !'+ #13#10+ E.message));
       end;
   end;

end;

end.
