unit ConfiguraBancoForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Mask,  rxToolEdit, inifiles,
  RXCtrls, DB, baseform, ACBrEnterTab, ACBrBase, ACBrCalculadora, Vcl.Imaging.jpeg, JvExMask, JvToolEdit;

type
  TFrmConfiguraBanco = class(TFrmBase)
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
    ChkIndentifaBackp: TCheckBox;
    ChkMapeaRede: TCheckBox;
    EdUnidade: TEdit;
    Label2: TLabel;
    FilePathBackup: TJvDirectoryEdit;
    procedure FormCreate(Sender: tObject);
    procedure RadLocalClick(Sender: tObject);
    procedure RadRemotoClick(Sender: tObject);
    procedure BitCancelaClick(Sender: tObject);
    procedure BitConfirmarClick(Sender: tObject);
    procedure BitTestarClick(Sender: tObject);
    procedure FilePathBancoExit(Sender: tObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
     procedure GravaConfiguracaoBancoDados(pShowMsg:boolean);
  public
  end;

var
  FrmConfiguraBanco: TFrmConfiguraBanco;

implementation

uses Uteis, iniciodb;

{$R *.dfm}

{ TFrmConfiguraBanco }


procedure TFrmConfiguraBanco.FormCreate(Sender: tObject);
begin
   inherited;
   height:=427;
   width:=580;
   edUsuario.Text := 'SYSDBA';
   mskSenha.Text := 'masterkey';
end;

procedure TFrmConfiguraBanco.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  //
end;

procedure TFrmConfiguraBanco.GravaConfiguracaoBancoDados(pShowMsg:boolean);
var ArquivoIni:TiniFile;
    wArquivo : String;
begin

      wArquivo   := ExtractFileName(Application.ExeName);
      wArquivo   := copy(wArquivo,1,pos('.EXE',UpperCase(wArquivo)));
      ArquivoIni := TiniFile.Create(dbInicio.SistemaLocal+'\'+wArquivo+'ini');
      try
        case CbSistema.ItemIndex of
            0:ArquivoIni.WriteString('SERVIDOR','S.O','LINUX');
            1:ArquivoIni.WriteString('SERVIDOR','S.O','WINDOWS');
        end;

        ArquivoIni.WriteString('SERVIDOR','SERVIDOR_DADOS','FB');
        ArquivoIni.WriteString('SERVIDOR','VENDORLIB','fbclient.dll');

        case CbProtocol.ItemIndex of
            0:ArquivoIni.WriteString('SERVIDOR','PROTOCOLO','TCP');
            1:ArquivoIni.WriteString('SERVIDOR','PROTOCOLO','NamedPipe');
            2:ArquivoIni.WriteString('SERVIDOR','PROTOCOLO','SPX');
        end;

         if RadRemoto.Checked then
        begin
              ArquivoIni.WriteString('SERVIDOR','CONEXAO','R');
              ArquivoIni.WriteString('SERVIDOR','HOSTNAME',EdServidor.Text);
              ArquivoIni.WriteString('SERVIDOR','PATHREMOTO',FilePathBanco.Text);
        end
        else
        begin
              ArquivoIni.WriteString('SERVIDOR','CONEXAO','L');
              ArquivoIni.WriteString('SERVIDOR','PATHLOCAL',FilePathBanco.Text);
        end;

        ArquivoIni.WriteString('SERVIDOR','USUARIO',Criptografa(EdUsuario.Text));
        ArquivoIni.WriteString('SERVIDOR','SENHA',Criptografa(msksenha.Text));

        if (RadBkpLocal.Checked) then
           ArquivoIni.WriteString('SERVIDOR','CONEXAO_BKP','L')
        else
        if (RadBkpRemoto.Checked) then
           ArquivoIni.WriteString('SERVIDOR','CONEXAO_BKP','L');

        ArquivoIni.WriteString('SERVIDOR','UNIDADE_SERVIDOR',EdUnidade.Text);
        if ChkMapeaRede.Checked then
           ArquivoIni.WriteString('SERVIDOR','CRIAMAPEAMENTO','S')
        else
           ArquivoIni.WriteString('SERVIDOR','CRIAMAPEAMENTO','N');


        ArquivoIni.WriteString('APARENCIA','ESTILO','windows');

        ArquivoIni.WriteString('SERVIDOR','PATHBACKUP_ORIGEM',FilePathBancoOrig.FileName);
        ArquivoIni.WriteString('SERVIDOR','PATHBACKUP',FilePathBackup.Text);
        if ChkIndentifaBackp.Checked then
           ArquivoIni.WriteString('SERVIDOR','ID_BACKUP','S')
        else
        ArquivoIni.WriteString('SERVIDOR','ID_BACKUP','N');
        ArquivoIni.WriteString('Arquivos','exelocal',ExtractFileDir(Application.ExeName) +'\'+ ExtractFileName(Application.ExeName));



        if pShowMsg then
           uteis.aviso('Arquivo gravado com sucesso...');

      finally
        ArquivoIni.Free;
      end;
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

procedure TFrmConfiguraBanco.FormShow(Sender: TObject);
var lArquivo: String ;
    lArquivoIni: tIniFile;
begin
    inherited;
    msksenha.CharCase := ecNormal; // força charcase normal pq base marca todos edits com UpperCase
    FilePathBanco.CharCase := ecNormal;
    lArquivo   := ExtractFilePath(application.exename)+'\adjutor.ini';
    lArquivoIni := TiniFile.Create(lArquivo);
    if lArquivoIni.ReadString('SERVIDOR','CONEXAO','R') = 'L' then
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

    if lArquivoIni.ReadString('SERVIDOR','S.O','WINDOWS') = 'WINDOWS' then
       CbSistema.ItemIndex   := 1
    else
       CbSistema.ItemIndex   := 0;

    if copy(lArquivoIni.ReadString('SERVIDOR','PROTOCOLO','TCP'),1,3) = 'TCP' then
       CbProtocol.ItemIndex  := 0
    else
    if copy(lArquivoIni.ReadString('SERVIDOR','PROTOCOLO',''),1,9) = 'NamedPipe' then
       CbProtocol.ItemIndex  := 1
    else
    if copy(lArquivoIni.ReadString('SERVIDOR','PROTOCOLO',''),1,3) = 'SPX' then
       CbProtocol.ItemIndex  := 2
    else
       CbProtocol.ItemIndex  := -1;

    EdServidor.Text            := lArquivoIni.ReadString('SERVIDOR','HOSTNAME','127.0.0.1');
    if lArquivoIni.ReadString('SERVIDOR','CONEXAO','R') = 'R' then
       FilePathBanco.Text        := lArquivoIni.ReadString('SERVIDOR','PATHREMOTO','')
    else
       FilePathBanco.Text        := lArquivoIni.ReadString('SERVIDOR','PATHLOCAL','');

    EdUsuario.Text                := DesCriptografa( lArquivoIni.ReadString( 'SERVIDOR','USUARIO' , Criptografa( db_usernm ) ) );
    msksenha.Text                 := DesCriptografa( lArquivoIni.ReadString( 'SERVIDOR','SENHA' , Criptografa( db_passwd ) ) );

    if (lArquivoIni.ReadString('SERVIDOR','CONEXAO_BKP','L') = 'L') then
       RadBkpLocal.Checked  := True
    else
    if (lArquivoIni.ReadString('SERVIDOR','CONEXAO_BKP','') = 'R') then
       RadBkpRemoto.Checked := True;

    EdUnidade.Text                := lArquivoIni.ReadString('SERVIDOR','UNIDADE_SERVIDOR','C:');
    FilePathBancoOrig.FileName    := lArquivoIni.ReadString('SERVIDOR','PATHBACKUP_ORIGEM','');
    ChkIndentifaBackp.Checked     := Iif(lArquivoIni.ReadString('SERVIDOR','CRIAMAPEAMENTO','') = 'S',True,False);
    FilePathBackup.Text           := lArquivoIni.ReadString('SERVIDOR','PATHBACKUP','');
    ChkMapeaRede.Checked          := Iif(lArquivoIni.ReadString('SERVIDOR','ID_BACKUP','') = 'S',True,False);
    lArquivoIni.Free;

end;

procedure TFrmConfiguraBanco.BitConfirmarClick(Sender: tObject);
begin
     GravaConfiguracaoBancoDados(True);
     if dbInicio.TestaConexao then
        modalresult:=mrOk;
//     Else
//        DeleteFile( dbInicio.SistemaLocal+'\Adjutor.ini' );
end;

procedure TFrmConfiguraBanco.BitTestarClick(Sender: tObject);
begin
     GravaConfiguracaoBancoDados(False);
     if dbInicio.TestaConexao then
        Uteis.Aviso('Conectado com sucesso!!');
//     Else
//        DeleteFile( dbInicio.SistemaLocal+'\Adjutor.ini' );
end;

procedure TFrmConfiguraBanco.FilePathBancoExit(Sender: tObject);
begin
     FilePathBancoOrig.FileName := FilePathBanco.FileName;
end;

end.

