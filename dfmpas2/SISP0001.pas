unit SISP0001;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Mask,  rxToolEdit, jpeg, Inifiles,
  RXCtrls, DB;

type
  TFrmConfiguraBanco = class(TForm)
    GroupBox1: TGroupBox;
    BitTestar: TBitBtn;
    BitConfirmar: TBitBtn;
    BitCancela: TBitBtn;
    Panel5: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Image1: TImage;
    Label97: TLabel;
    EdUsuario: TEdit;
    msksenha: TMaskEdit;
    Label98: TLabel;
    GroupBox4: TGroupBox;
    RadLocal: TRadioButton;
    RadRemoto: TRadioButton;
    LblIDserver: TLabel;
    EdServidor: TEdit;
    LblProtocolo: TLabel;
    CbProtocol: TComboBox;
    Label99: TLabel;
    CbSistema: TComboBox;
    GroupBox3: TGroupBox;
    RadBkpLocal: TRadioButton;
    RadBkpRemoto: TRadioButton;
    Label94: TLabel;
    FilePathBanco: TFilenameEdit;
    Label6: TLabel;
    FilePathBancoOrig: TFilenameEdit;
    Label1: TLabel;
    FilePathBackup: TFilenameEdit;
    ChkIndentifaBackp: TCheckBox;
    ChkMapeaRede: TCheckBox;
    EdUnidade: TEdit;
    Label2: TLabel;
    procedure FormCreate(Sender: tObject);
    procedure RadLocalClick(Sender: tObject);
    procedure RadRemotoClick(Sender: tObject);
    procedure BitCancelaClick(Sender: tObject);
    procedure FormKeyPress(Sender: tObject; var Key: Char);
    procedure BitConfirmarClick(Sender: tObject);
    procedure BitTestarClick(Sender: tObject);
    procedure FilePathBancoExit(Sender: tObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    {variavies}
     ArquivoIni:TiniFile;
     wArquivo : String;
    {}

     procedure GravaConfiguracaoBancoDados;
     procedure MostraConfiguracaoBancoDados;
     procedure TestaConexaoBancoDados;
  public
    { Public declarations }
  
  end;

var
  FrmConfiguraBanco: TFrmConfiguraBanco;

implementation

uses Uteis, men0001, RWFunc, DataCad, iniciodb;

{$R *.dfm}

{ TFrmConfiguraBanco }


procedure TFrmConfiguraBanco.FormCreate(Sender: tObject);
begin
   inherited;
   height:=427;
   width:=580;
   edUsuario.Text := 'SYSDBA';
   mskSenha.Text := 'masterkey';
   if not assigned( dbInicio ) then
      Iniciodb.SplashStart(False);
end;

procedure TFrmConfiguraBanco.GravaConfiguracaoBancoDados;
begin

      screen.Cursor := crHourglass;
     {cria o arquivo}
      wArquivo   := '';
      wArquivo   := ExtractFileName(Application.ExeName);
      wArquivo   := copy(wArquivo,1,pos('.EXE',UpperCase(wArquivo)));
      ArquivoIni := TiniFile.Create(dbInicio.SistemaLocal+'\'+wArquivo+'ini');
     {limpa arquivo}
      ArquivoIni.WriteString('SERVIDOR','CONEXAO','');
      ArquivoIni.WriteString('SERVIDOR','S.O','');
      ArquivoIni.WriteString('SERVIDOR','SERVIDOR_DADOS','');
      ArquivoIni.WriteString('SERVIDOR','VENDORLIB','');
      ArquivoIni.WriteString('SERVIDOR','PROTOCOLO','');
      ArquivoIni.WriteString('SERVIDOR','HOSTNAME','');
      ArquivoIni.WriteString('SERVIDOR','PATHREMOTO','');
      ArquivoIni.WriteString('SERVIDOR','PATHLOCAL','');
      ArquivoIni.WriteString('SERVIDOR','USUARIO','');
      ArquivoIni.WriteString('SERVIDOR','SENHA','');
      ArquivoIni.WriteString('SERVIDOR','CONEXAO_BKP','');
      ArquivoIni.WriteString('SERVIDOR','UNIDADE_SERVIDOR','');
      ArquivoIni.WriteString('SERVIDOR','CRIAMAPEAMENTO','');
      ArquivoIni.WriteString('SERVIDOR','PATHBACKUP_ORIGEM','');
      ArquivoIni.WriteString('SERVIDOR','PATHBACKUP','');
      ArquivoIni.WriteString('SERVIDOR','ID_BACKUP','');
     {protocolo}
      case CbProtocol.ItemIndex of
          0:ArquivoIni.WriteString('SERVIDOR','PROTOCOLO','TCP');
          1:ArquivoIni.WriteString('SERVIDOR','PROTOCOLO','NamedPipe');
          2:ArquivoIni.WriteString('SERVIDOR','PROTOCOLO','SPX');
      end;
     {servidor iterbase}
      ArquivoIni.WriteString('SERVIDOR','SERVIDOR_DADOS','FB');
      ArquivoIni.WriteString('SERVIDOR','VENDORLIB','fbclient.dll');
     {TIPO CONEXÃO}
      if RadRemoto.Checked then
         begin
            ArquivoIni.WriteString('SERVIDOR','CONEXAO','R');
           {HOSTNAME}
            ArquivoIni.WriteString('SERVIDOR','HOSTNAME',EdServidor.Text);
           {Nome base dados}
            ArquivoIni.WriteString('SERVIDOR','PATHREMOTO',FilePathBanco.Text);
         end
      else
         begin
            ArquivoIni.WriteString('SERVIDOR','CONEXAO','L');
           {Nome base dados}
            ArquivoIni.WriteString('SERVIDOR','PATHLOCAL',FilePathBanco.Text);
         end;
     {sistema operacional}
      case CbSistema.ItemIndex of
          0:ArquivoIni.WriteString('SERVIDOR','S.O','LINUX');
          1:ArquivoIni.WriteString('SERVIDOR','S.O','WINDOWS');
      end;
     {usuario}
      ArquivoIni.WriteString('SERVIDOR','USUARIO',Criptografa(EdUsuario.Text));
      ArquivoIni.WriteString('SERVIDOR','SENHA',Criptografa(msksenha.Text));
     {conexao backup}
      if (RadBkpLocal.Checked) then
         ArquivoIni.WriteString('SERVIDOR','CONEXAO_BKP','L')
      else
      if (RadBkpRemoto.Checked) then
         ArquivoIni.WriteString('SERVIDOR','CONEXAO_BKP','L');
     {unidade da rede}
      ArquivoIni.WriteString('SERVIDOR','UNIDADE_SERVIDOR',EdUnidade.Text);
      if ChkMapeaRede.Checked then
         ArquivoIni.WriteString('SERVIDOR','CRIAMAPEAMENTO','S')
      else
         ArquivoIni.WriteString('SERVIDOR','CRIAMAPEAMENTO','N');
     {unidade de backup}
      ArquivoIni.WriteString('SERVIDOR','PATHBACKUP_ORIGEM',FilePathBancoOrig.FileName);
      ArquivoIni.WriteString('SERVIDOR','PATHBACKUP',FilePathBackup.Text);
      if ChkIndentifaBackp.Checked then
         ArquivoIni.WriteString('SERVIDOR','ID_BACKUP','S')
      else
      ArquivoIni.WriteString('SERVIDOR','ID_BACKUP','N');
      ArquivoIni.WriteString('Arquivos','exelocal',ExtractFileDir(Application.ExeName) +'\'+ ExtractFileName(Application.ExeName));

     {finaliza o arquivo}
      ArquivoIni.Free;
      screen.Cursor            := crDefault;
      CbSistema.SetFocus;
      //beep;
      uteis.aviso('Arquivo gravado com sucesso...');

end;

procedure TFrmConfiguraBanco.MostraConfiguracaoBancoDados;
Var
 Path:String;
begin

      screen.Cursor := crHourglass;
      wArquivo   := '';
      wArquivo   := ExtractFileName(Application.ExeName);
      wArquivo   := copy(wArquivo,1,pos('.EXE',UpperCase(wArquivo)));
      Path := ExtractFilePath(Application.ExeName)+wArquivo+'ini';
      if FileExists(Path )then
      begin
            try
              {cria o arquivo}
               ArquivoIni := TiniFile.Create(Path);
              {tipo conexao R=Remoto - L=Local}
               if ArquivoIni.ReadString('SERVIDOR','CONEXAO','') = 'L' then
                  begin
                     RadLocal.Checked   := True;
                     CbProtocol.Enabled := False;
                     EdServidor.Enabled := False;
                  end
               else
                  begin
                     RadRemoto.Checked  := True;
                     CbProtocol.Enabled := True;
                     EdServidor.Enabled := True;
                  end;
              {servidor iterbase}
               {sistema operacional}
               if ArquivoIni.ReadString('SERVIDOR','S.O','') = 'WINDOWS' then
                  CbSistema.ItemIndex   := 1
               else
                  CbSistema.ItemIndex   := 0;
              {protocolo}
               if copy(ArquivoIni.ReadString('SERVIDOR','PROTOCOLO',''),1,3) = 'TCP' then
                  CbProtocol.ItemIndex  := 0
               else
               if copy(ArquivoIni.ReadString('SERVIDOR','PROTOCOLO',''),1,9) = 'NamedPipe' then
                  CbProtocol.ItemIndex  := 1
               else
               if copy(ArquivoIni.ReadString('SERVIDOR','PROTOCOLO',''),1,3) = 'SPX' then
                  CbProtocol.ItemIndex  := 2
               else
                  CbProtocol.ItemIndex  := -1;
              {servidor HostName}
               EdServidor.Text            := ArquivoIni.ReadString('SERVIDOR','HOSTNAME','');
              {path banco dados}
               if ArquivoIni.ReadString('SERVIDOR','CONEXAO','') = 'R' then
                  FilePathBanco.Text        := ArquivoIni.ReadString('SERVIDOR','PATHREMOTO','')
               else
                  FilePathBanco.Text        := ArquivoIni.ReadString('SERVIDOR','PATHLOCAL','');
              {indentificação}
               EdUsuario.Text                := DesCriptografa(ArquivoIni.ReadString('SERVIDOR','USUARIO',''));
               msksenha.Text                 := DesCriptografa(ArquivoIni.ReadString('SERVIDOR','SENHA',''));
              {conexao backup}
               if (ArquivoIni.ReadString('SERVIDOR','CONEXAO_BKP','') = 'L') then
                  RadBkpLocal.Checked  := True
               else
               if (ArquivoIni.ReadString('SERVIDOR','CONEXAO_BKP','') = 'R') then
                  RadBkpRemoto.Checked := True;
              {unidades}
               EdUnidade.Text                := ArquivoIni.ReadString('SERVIDOR','UNIDADE_SERVIDOR','');
               FilePathBancoOrig.FileName    := ArquivoIni.ReadString('SERVIDOR','PATHBACKUP_ORIGEM','');
               ChkIndentifaBackp.Checked     := Iif(ArquivoIni.ReadString('SERVIDOR','CRIAMAPEAMENTO','') = 'S',True,False);
               FilePathBackup.Text           := ArquivoIni.ReadString('SERVIDOR','PATHBACKUP','');
               ChkMapeaRede.Checked          := Iif(ArquivoIni.ReadString('SERVIDOR','ID_BACKUP','') = 'S',True,False);
             finally
                ArquivoIni.Free;
             end;
      end;
      screen.Cursor            := crDefault;
end;

procedure TFrmConfiguraBanco.RadLocalClick(Sender: tObject);
begin
   LblIDserver.Enabled  := False;
   EdServidor.Enabled   := False;
   LblProtocolo.Enabled := False;
   CbProtocol.Enabled   := False;
   EdServidor.Clear;
   CbProtocol.ItemIndex := -1;
end;

procedure TFrmConfiguraBanco.RadRemotoClick(Sender: tObject);
begin
   LblIDserver.Enabled  := True;
   EdServidor.Enabled   := True;
   LblProtocolo.Enabled := True;
   CbProtocol.Enabled   := True;
end;

procedure TFrmConfiguraBanco.BitCancelaClick(Sender: tObject);
begin
     modalresult := mrCancel;
end;

procedure TFrmConfiguraBanco.FormKeyPress(Sender: tObject; var Key: Char);
begin
     inherited;
     if key = #27 then
     begin
         if BitCancela.Enabled then
            BitCancela.Click;
         key:= #0;
     end;
end;

procedure TFrmConfiguraBanco.FormShow(Sender: TObject);
begin
     inherited;
     MostraConfiguracaoBancoDados;
end;

procedure TFrmConfiguraBanco.BitConfirmarClick(Sender: tObject);
begin
     GravaConfiguracaoBancoDados;
     modalresult:=mrOk ;
end;

procedure TFrmConfiguraBanco.TestaConexaoBancoDados;
begin
     with DataCadastros do
     begin
           try
              if SQLConnection1.Connected then
                 SQLConnection1.Connected := False;
             {usuario e senha}
              SQLConnection1.Params.Values['User_Name']  := EdUsuario.Text;
              SQLConnection1.Params.Values['PASSWORD']   := msksenha.Text;
              //
              if RadRemoto.Checked then{remoto}
                 SQLConnection1.Params.Values['Database']   := EdServidor.Text+':'+FilePathBanco.FileName
              else
              if dbInicio.BancoConexao.TipoConexao = 'L' then{local}
                 SQLConnection1.Params.Values['Database']   := FilePathBanco.FileName;
             {dialeto}
              SQLConnection1.Params.Values['SQLDialect'] := '3';
              try
                SQLConnection1.Connected := True;
                uteis.aviso('Conexão efetuada com sucesso...');
                screen.Cursor           := crDefault;
              except on E:Exception do
                  begin
                     screen.Cursor            := crDefault;
                     if UpperCase(copy(E.Message,1,44)) = 'YOUR USER NAME AND PASSWORD ARE NOT DEFINED.' then
                        uteis.erro  ('Identificação invalida! Usuário ou Senha Incorretos...')
                     else
                         MessageDlg('Não foi possível conectar! '+#13+#13+ E.Message,mtError, [mbOK],0);
                  end;
              end;

           finally
              SQLConnection1.Connected := False;
           end;
     end;

end;

procedure TFrmConfiguraBanco.BitTestarClick(Sender: tObject);
begin
   TestaConexaoBancoDados;
end;

procedure TFrmConfiguraBanco.FilePathBancoExit(Sender: tObject);
begin
   if FilePathBancoOrig.FileName = '' then
      FilePathBancoOrig.FileName := FilePathBanco.FileName;
end;

end.
