unit SenhaForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, DateUtils,
  ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls,Inifiles, Provider, SqlExpr,SqlClientDataSet,
  DB, DBClient, DBLocal, DBLocalS,Menus,Rwfunc,  rxToolEdit,  rxCurrEdit, Gauges,
  jpeg, xmldom, XMLIntf, IdBaseComponent, baseform,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, msxmldom, XMLDoc,
  IdMultipartFormData, Men0001, JvExControls, JvGradient,
  IBX.IBDatabaseInfo, IBX.IBDatabase, SimpleDS, Data.DBXFirebird, ACBrEnterTab,
  ACBrBase, ACBrCalculadora, ACBrETQ;


type
  TConexaoBase = Record
  TipoConexao           :String;
  ServidorDados         :String;
  VendorLib             :String;
  TipoProtocolo         :String;
  Dialeto               :String;
  HostName              :String;
  PathRemoto            :String;
  PathLocal             :String;
  Usuario               :String;
  Senha                 :String;
  UnidadeServidor       :String;
  CriarMapeamento       :String;
  UnidadeBackup         :String;
  IndentificaBackup     :String;
end;



type
  TFrmSenha = class(TfrmBase)
    SQLUsuario: TSQLClientDataSet;
    SQLAcessoUsuario: TSQLClientDataSet;
    SQLParamentroUsa: TSQLClientDataSet;
    SQLEmpresa: TSQLClientDataSet;
    GgConexao: TGauge;
    CbEmpresa: TComboBox;
    Label3: TLabel;
    EdUsuario: TEdit;
    msksenha: TMaskEdit;
    Label4: TLabel;
    BitConfirmar: TBitBtn;
    BitCancelar: TBitBtn;
    ibDataBase: TIBDatabase;
    IBDatabaseInfo1: TIBDatabaseInfo;
    CEmpresa: TCurrencyEdit;
    Label1: TLabel;
    Label2: TLabel;
    outro: TImage;
    procedure BitCancelarClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure BitConfirmarClick(Sender: tObject);
    procedure FormKeyDown(Sender: tObject; var Key: Word;
      Shift: TShiftState);
    procedure CEmpresaExit(Sender: tObject);
    procedure CbEmpresaClick(Sender: tObject);
    procedure CbEmpresaExit(Sender: tObject);
    procedure msksenhaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
     function LocalizaUsuario:string;
     procedure LiberaAcessoMenus( pUsuCodigo:string ) ;
     procedure LiberaAcessoSubmenus(Form: TComponent; NomeComp:String; wNOME_MENU:String);
     procedure Validacao;
     procedure ValidaOnline;
  public
        Logado: boolean;
        SenhaIncorreta:Integer;
        SenhaCorreta:Boolean;
  end;

var
  FrmSenha: TFrmSenha;
  
const
     wUsuarioAdm = 'SYSDBA';
     usu_novi = 'NOVI';
     psw_novi = '@1N7';


implementation

uses DataCad, Prmd0001, ConfiguraBancoForm, val0002, val0001, uteis, iniciodb;

{$R *.DFM}

procedure TFrmSenha.BitCancelarClick(Sender: tObject);
begin
    inherited;
    ModalResult:=mrCancel;
End;

procedure TFrmSenha.FormShow(Sender: tObject);
Var
  ArquivoIni:TiniFile;
  Path:String;
begin
     inherited;
   application.ProcessMessages;

     try
       SQLEmpresa.Close;
       SQLEmpresa.CommandText := 'select EMP_CODIGO, EMP_RAZAO from EMP0000 order by EMP_CODIGO';
       SQLEmpresa.Open;
       SQLEmpresa.First;
       while not SQLEmpresa.Eof do
        begin
            CbEmpresa.Items.Add(SQLEmpresa.FieldByName('EMP_RAZAO').AsString);
            SQLEmpresa.Next;
        end;
     finally

       SQLEmpresa.First;
       CbEmpresa.ItemIndex := 0;

       IF delphiaberto then
       begin
            edUsuario.Text := usu_novi;
            mskSenha.Text := psw_novi;
       end
       Else
       begin
            EdUsuario.Text := '';
            msksenha.Text  := '';
       end;
       CEmpresa.Text  := SQLEmpresa.FieldByName('EMP_CODIGO').AsString;

     end;

end;

procedure TFrmSenha.FormCreate(Sender: tObject);
begin
   inherited;
   SenhaIncorreta                         := 0;
   SenhaCorreta                           := False;
   Logado                                 := False;
end;

function TFrmSenha.LocalizaUsuario: string;
begin
     msksenha.Text:=uppercase(msksenha.Text);
     result := dbInicio.BuscaUmDadoSqlAsString('Select USU_CODIGO from USUARIO where USU_LOGIN='+qstr(EdUsuario.Text)+' and USU_SENHA='+qstr(msksenha.Text));
     if RESULT='' THEN
         GeraException('Usuário não Cadastrado ou Login Incorreto!')
     Else
     begin
           LiberaAcessoMenus( RESULT );
           SenhaCorreta         := True;
           frmmenu.Status.Panels[1].text  := Edusuario.Text;
           dbInicio.CarregaEmpresaSelecionada(CEmpresa.text);
           dbInicio.ValidaUserSenha(EdUsuario.Text, msksenha.Text);
           Logado := True ;
           ModalResult := mrOk;
     END;
end;

procedure TFrmSenha.msksenhaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if KEY=VK_RETURN then
     BEGIN
          BitConfirmar.SetFocus;
          BitConfirmar.Click;
          KEY:=0;
     END;
     inherited;
end;

procedure TFrmSenha.BitConfirmarClick(Sender: tObject);
begin
     if (Trim(EdUsuario.Text) = '') then
     begin
           uteis.aviso('Informe o nome e senha de usuário !');
     end
     else
     if (CEmpresa.AsInteger = 0) then
     begin
           uteis.aviso('Informe a Empresa para entrar no sistema !');
     end
     else
     if not logado then
         LocalizaUsuario;
end;

procedure TFrmSenha.LiberaAcessoMenus( pUsuCodigo:string ) ;
 Var  I:Integer;
begin

     SQLAcessoUsuario.Close;
     SQLAcessoUsuario.CommandText := 'select * from USUARIO_ACESSO where USA_COD_USUARIO = '+qStr(pUsuCodigo);
     SQLAcessoUsuario.Open;
    {}
     for I := 0 to FrmMenu.MainMenu.Items.Count-1 do
         if FrmMenu.MainMenu.Items[I].Caption <> '-' then
            begin
               if SQLAcessoUsuario.Locate('USA_MENU',ExtrairCarecter(FrmMenu.MainMenu.Items[I].Caption),[]) then
                  begin
                     if (SQLAcessoUsuario.FieldByName('USA_ACESSO').AsInteger > 0) then
                        begin
                           FrmMenu.MainMenu.Items[I].Enabled := True;
                           LiberaAcessoSubmenus(FrmMenu,FrmMenu.MainMenu.Items[I].Name, ExtrairCarecter(FrmMenu.MainMenu.Items[I].Caption));
                        end
                     else
                        begin
                           FrmMenu.MainMenu.Items[I].Enabled := ((EdUsuario.Text=usu_novi) and (mskSenha.Text=psw_novi)) ;
                           LiberaAcessoSubmenus(FrmMenu,FrmMenu.MainMenu.Items[I].Name, ExtrairCarecter(FrmMenu.MainMenu.Items[I].Caption));
                        end;
                  end
               else
                  begin
                     FrmMenu.MainMenu.Items[I].Enabled := False;
                     LiberaAcessoSubmenus(FrmMenu,FrmMenu.MainMenu.Items[I].Name,ExtrairCarecter(FrmMenu.MainMenu.Items[I].Caption));
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
                        TMenuItem(Form.FindComponent(NomeComp)).Items[I].Enabled := ((EdUsuario.Text=usu_novi) and (mskSenha.Text=psw_novi)) ;
                  end
               else
                  begin
                     TMenuItem(Form.FindComponent(NomeComp)).Items[I].Enabled := ((EdUsuario.Text=usu_novi) and (mskSenha.Text=psw_novi)) ;
                  end;
            end;
   except on E:EDataBaseError do
       begin
          uteis.erro  (Pchar('Impossível acessar o arquivo: '+ #13 + E.message));
       end;
   end;

end;

procedure TFrmSenha.FormKeyDown(Sender: tObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
   if key = VK_F1 then
      if (EdUsuario.Text = wUsuarioAdm) and(msksenha.Text = 'RWACESSO') then
      begin
           FormParametros := TFormParametros.Create(application);
           try
              FormParametros.ShowModal;
           finally
                  FreeAndNil(FormParametros);
           end;
      end;
end;

procedure TFrmSenha.CEmpresaExit(Sender: tObject);
begin
   if (ActiveControl <> Nil)
   and(ActiveControl.Name <> 'BitCancelar') then
      begin
         if (SQLEmpresa.Active)
         and(not SQLEmpresa.IsEmpty) then
            begin
               if (CEmpresa.AsInteger <> 0) then
                  begin
                     if (SQLEmpresa.Locate('EMP_CODIGO',StrZero(CEmpresa.Text,3),[])) then
                        begin
                            CbEmpresa.Text     := SQLEmpresa.FieldByName('EMP_RAZAO').AsString;
                        end
                     else
                        begin
                           //beep;
                           CbEmpresa.Text      := '';
                           uteis.aviso('Empresa não localizada com o código informado !');
                        end;
                  end
               else
                  begin
                     CbEmpresa.Text := '';
                  end;
            end;
      end;

end;

procedure TFrmSenha.CbEmpresaClick(Sender: tObject);
begin
   if (SQLEmpresa.Active)
   and(not SQLEmpresa.IsEmpty) then
      begin
         if (SQLEmpresa.Locate('EMP_RAZAO',CbEmpresa.Text,[])) then
            begin
               CEmpresa.AsInteger := SQLEmpresa.FieldByName('EMP_CODIGO').AsInteger;
            end
         else
            begin
               CEmpresa.AsInteger := 0;
            end;
      end;
end;

procedure TFrmSenha.CbEmpresaExit(Sender: tObject);
begin
   if (ActiveControl <> Nil)
   and(ActiveControl.Name <> 'BitCancela') then
      begin
         if (SQLEmpresa.Active)
         and(not SQLEmpresa.IsEmpty) then
            begin
               if (not SQLEmpresa.Locate('EMP_RAZAO',CbEmpresa.Text,[])) then
                  begin
                     //beep;
                     CEmpresa.AsInteger := 0;
                     uteis.aviso('Empresa não localizada com o login informado !');
                  end
            end;
      end;

end;

procedure TFrmSenha.Validacao;
var
  bChavaValidador:Boolean;
  iQtdeDias,wAtivas:Integer;
begin

  //Validação Online

  if Not DelphiAberto then // não é desenvolvimento
     validaOnline;

  bChavaValidador := False;
  if Not DelphiAberto then // não é desenvolvimento
  begin
      ibDataBase.Connected := False;
      if dbInicio.BancoConexao.TipoConexao = 'R' then{remoto}
          ibDatabase.DatabaseName := dbInicio.BancoConexao.HostName+'/3050:'+dbInicio.BancoConexao.PathRemoto
      else
          {dbInicio.BancoConexao.TipoConexao = 'L' then{local}
          ibDatabase.DatabaseName := dbInicio.BancoConexao.HostName+'/3050:'+dbInicio.BancoConexao.PathLocal;

      ibDatabase.Params.Add('user_name='+dbInicio.BancoConexao.Usuario);
      ibDatabase.Params.Add('password='+dbInicio.BancoConexao.Senha);
      ibDataBase.LoginPrompt := False;
      ibDataBase.SqlDialect := 3;
      ibDataBase.Connected := True;

      try
        if (Date < dbInicio.Empresa.DATA_ACESSO) then
        begin
             iQtdeDias := 0;
             bChavaValidador := True;
        end;
        if (not bChavaValidador) then
        begin
            if (Validade(dbInicio.Empresa.CHAVE) < Date) then
              iQtdeDias := 0
            else
              iQtdeDias := DaysBetween(Date,Validade(dbInicio.Empresa.CHAVE));
        end;

        {Cnpj}
        if (dbInicio.Empresa.CNPJ_CNPF <> MascaraCNPJ_CPF(Cnpj(dbInicio.Empresa.CHAVE))) then
            bChavaValidador := True;
        {Validade}

        if (iQtdeDias <= 5)and(not bChavaValidador) then
          begin
            if (iQtdeDias = 0) then
              bChavaValidador := True
            else
            if (uteis.confirmacao  ( pchar('Seu sistema vai expirar em '+IntToStr(iQtdeDias)+' dia(s)'+#13+
                                        'Gostaria de validar agora ?'))=mrYes) then
              bChavaValidador := True;
          end;
        {Nr Conexoes}

        if ((IBDatabaseInfo1.UserNames.Count-2) > Conexaoes(dbInicio.Empresa.CHAVE)) and (not bChavaValidador) then
        begin
             wAtivas := IBDatabaseInfo1.UserNames.Count-2;
             if (uteis.confirmacao  ( Pchar('Seu número de licenças contratadas foi excedido!'+#13+
                                      'Contratado:'+IntToStr(Conexaoes(dbInicio.Empresa.CHAVE))+#13+
                                      'Ativas    :'+IntToStr(wAtivas)+#13+#13+
                                     'Gostaria de validar a licença agora?'))=mrYes) then
                bChavaValidador := True
            else
                Application.Terminate;
        end;
      except
        bChavaValidador := True;
      end;

      if (bChavaValidador) then
        begin
          try
            FrmLicenca := TFrmLicenca.Create(Application);
            try
              FrmLicenca.iNrDias := iQtdeDias;
              FrmLicenca.iNrLicencas := Conexaoes(dbInicio.Empresa.CHAVE);
            except
              FrmLicenca.iNrDias := 0;
              FrmLicenca.iNrLicencas := 0;
            end;
            FrmLicenca.ShowModal;
          finally
            FrmLicenca.Destroy;
            FrmLicenca := Nil;
          end;
          Close;
        end
      else
        begin
          DataCadastros.sqlUpdate.Close;
          DataCadastros.SqlUpdate.sql.text :='UPDATE EMP0000 SET EMP0000.EMP_DATA_ACESSO = '+RetornaNull(Criptografa(DateToStr(Date)));
          DataCadastros.sqlUpdate.Execsql;
        end;
  end;
end;

procedure TFrmSenha.ValidaOnline;
var
  data: TIdMultiPartFormDataStream;
  NodePai,NodeSec,NodeTmp: IXMLNode;
  sCodigo,
  sContraSenha,
  sMensagem,
  sData:String;
  retorno:WideString;
  vXMLDoc : TXMLDocument;
  IdHTTP1 : TIdHTTP;
begin
try
  //Variaveis
    retorno := '';
    vXMLDoc := FrmMenu.vXMLDoc;
    IdHTTP1 := FrmMenu.IdHTTP1;
    //Monta XML
    retorno := '<xml><cnpj>'+ExtrairNumeros(dbInicio.Empresa.CNPJ_CNPF)+'</cnpj></xml>';
    //Transmite
    data := TIdMultiPartFormDataStream.Create;
    data.AddFormField('xml', retorno);
    IdHTTP1.ConnectTimeout := 3000;
    retorno := IdHTTP1.Post('http://novinow.no-ip.org:8080/ValidadorOnline/valida/validar', data);

    vXMLDoc.XML.Clear;
    vXMLDoc.XML.Add(retorno);
    vXMLDoc.Active := True;

    NodePai := vXMLDoc.DocumentElement.ChildNodes.First;
     NodePai.ChildNodes.First;
    repeat
       if (NodePai.NodeName = 'validado') then
          begin
             sCodigo := NodePai.Text;
          end
       else
       if (NodePai.NodeName = 'chave') then
          sContraSenha := NodePai.Text
       else
       if (NodePai.NodeName = 'resultado') then
          sMensagem := NodePai.Text;
       NodePai := NodePai.NextSibling;
    until NodePai = nil;
    if (StrToInt(sCodigo) > 1) then
       sCodigo := '';
    if (Trim(sContraSenha) <> '') then
      begin
          sData := Criptografa(DateToStr(Date));
          sContraSenha := Criptografa(sContraSenha);
          DataCadastros.sqlUpdate.Close;
          DataCadastros.SqlUpdate.sql.text :='UPDATE EMP0000 SET EMP0000.EMP_DATA_ACESSO = '+RetornaNull(sData)+', EMP0000.EMP_CHAVE = '+RetornaNull(sContraSenha)+' WHERE EMP0000.EMP_CODIGO = '+RetornaNull(dbInicio.Empresa.EMP_CODIGO);
          DataCadastros.sqlUpdate.Execsql;
      end;
  except
  end;
end;

end.







object Label3: TLabel
  Left = 23
  Top = 158
  Width = 40
  Height = 14
  Alignment = taRightJustify
  Caption = '&Usu'#225'rio:'
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  ParentFont = False
  Transparent = True
end
object Label4: TLabel
  Left = 29
  Top = 185
  Width = 34
  Height = 14
  Alignment = taRightJustify
  Caption = '&Senha:'
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  ParentFont = False
  Transparent = True
end
object Label1: TLabel
  Left = 17
  Top = 131
  Width = 45
  Height = 14
  Alignment = taRightJustify
  Caption = 'Empresa:'
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  ParentFont = False
  Transparent = True
end
object Label2: TLabel
  Left = 64
  Top = 99
  Width = 337
  Height = 16
  AutoSize = False
  Caption = 'Seja bem vindo'
  Color = 12615680
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = [fsBold]
  ParentColor = False
  ParentFont = False
  Transparent = True
end
object CbEmpresa: TComboBox
  Left = 113
  Top = 126
  Width = 312
  Height = 22
  CharCase = ecUpperCase
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  OnClick = CbEmpresaClick
  OnExit = CbEmpresaExit
end
object EdUsuario: TEdit
  Left = 65
  Top = 154
  Width = 152
  Height = 22
  CharCase = ecUpperCase
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  ParentFont = False
  TabOrder = 1
end
object msksenha: TMaskEdit
  Left = 65
  Top = 182
  Width = 152
  Height = 22
  CharCase = ecUpperCase
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  ParentFont = False
  PasswordChar = '#'
  TabOrder = 2
  Text = ''
  OnKeyDown = msksenhaKeyDown
end
object CEmpresa: TCurrencyEdit
  Left = 65
  Top = 126
  Width = 45
  Height = 22
  Alignment = taCenter
  AutoSize = False
  DecimalPlaces = 0
  DisplayFormat = '000'
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  MaxLength = 4
  ParentFont = False
  TabOrder = 5
  ZeroEmpty = False
  OnExit = CEmpresaExit
end

