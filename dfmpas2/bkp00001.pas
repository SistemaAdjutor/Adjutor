unit bkp00001;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Mask,   Buttons, OleCtnrs,inifiles,
  ExtCtrls, IBX.IBServices, RxToolEdit;

type
  TFrmBackup = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    ArquivoNome: TFilenameEdit;
    Label2: TLabel;
    ArquivoBackup: TFilenameEdit;
    Label3: TLabel;
    GroupBox2: TGroupBox;
    ChkMonTrans: TCheckBox;
    ChkLimbo: TCheckBox;
    ChkMetaData: TCheckBox;
    ChkGarbage: TCheckBox;
    ChkIgnoreChecksum: TCheckBox;
    SpButBackup: TSpeedButton;
    Animate: TAnimate;
    IBBackupService: TIBBackupService;
    GroupBox3: TGroupBox;
    MemoBackup: TMemo;
    IBRestoreService: TIBRestoreService;
    GroupBox4: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    SpButRestaurar: TSpeedButton;
    ArquivoDestino: TFilenameEdit;
    ArquivoBkpRes: TFilenameEdit;
    GroupBox5: TGroupBox;
    ChkDesativaIdx: TCheckBox;
    ChkNenhumaSomb: TCheckBox;
    ChkCheqValide: TCheckBox;
    ChkRelaCaVez: TCheckBox;
    ChkSubstituir: TCheckBox;
    Animate1: TAnimate;
    ChkCriaNovoArq: TCheckBox;
    GroupBox6: TGroupBox;
    MemoRestaura: TMemo;
    BitSair: TBitBtn;
    procedure SpButBackupClick(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure FormKeyPress(Sender: tObject; var Key: Char);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure SpButRestaurarClick(Sender: tObject);
    procedure BitSairClick(Sender: tObject);
  private
    { Private declarations }
      wUNIDADE_BACKUP:String[2];
      Path,
      wUsuario,
      wSenha,
      wServidor,
      wNomeBaseDados,
      wProtocolo,
      wTipoServer:String;
     procedure AtribuiArquivoParamento;
     procedure GeraBackup;
     procedure RestauraBackup;
  public
    { Public declarations }
  end;

var
  FrmBackup: TFrmBackup;

implementation

uses RwFunc, uteis, iniciodb;

//function uteis.confirmacao (  msg : pchar ) : word; far; external 'mensagen.dll';



{$R *.dfm}

procedure TFrmBackup.GeraBackup;
begin
  {}
   try
     screen.Cursor := crHourglass;
     try
       {opcoes de backup}
       {Non-Transportable}
        if ChkMonTrans.Checked then
           IBBackupService.Options := IBBackupService.Options + [nontransportable]
        else
           IBBackupService.Options := IBBackupService.Options - [nontransportable];
       {Ignore Limbo}
        if ChkLimbo.Checked then
           IBBackupService.Options := IBBackupService.Options + [ignorelimbo]
        else
           IBBackupService.Options := IBBackupService.Options - [ignorelimbo];
       {Metadata Only}
        if ChkMetaData.Checked then
           IBBackupService.Options := IBBackupService.Options + [metadataonly]
        else
           IBBackupService.Options := IBBackupService.Options - [metadataonly];
       {No Garbage Collection}
        if ChkGarbage.Checked then
           IBBackupService.Options := IBBackupService.Options + [nogarbagecollection]
        else
           IBBackupService.Options := IBBackupService.Options - [nogarbagecollection];
       {Ignore Checksums}
        if ChkIgnoreChecksum.Checked then
           IBBackupService.Options := IBBackupService.Options + [ignorechecksums]
        else
           IBBackupService.Options := IBBackupService.Options - [ignorechecksums];
       {backup}
        With IBBackupService do
           begin
             {limpa}
              Params.Clear;
              BackupFile.Clear;
             {atribui}
              LoginPrompt := False;
              Params.Add('user_name='+wUSUARIO);
              Params.Add('password='+wSENHA);
             //
              if wTipoServer = 'L' then //local
                 begin
                    Protocol    := Local;
                    ServerName  := '';
                 end
              else
                 begin
                    Protocol    := TCP;
                    ServerName  := wServidor;
                 end;
             //
              Active      := True;
              try
                Verbose := True;
               {arquivo para gera backup}
                DatabaseName := ArquivoNome.Text;
               {arquivo backup}
                BackupFile.Add(ArquivoBackup.Text);
               {anima}
                Animate.CommonAVI := aviCopyFiles;
                Animate.Active    := True;
               {estarta backup}
                ServiceStart;
                while not Eof do
                  MemoBackup.Lines.Add(GetNextLine);
                //
                Animate.Active    := False;
                Animate.CommonAVI := aviNone;
              finally
                Active := False;
                SpButBackup.Enabled := True;
                BitSair.Enabled     := True;
                uteis.aviso('Processo de backup foi concluido com sucesso...');
                ArquivoNome.SetFocus;
                ArquivoNome.SelectAll;
                screen.Cursor       := crDefault;
              end;
           end;
     except
        screen.Cursor            := crDefault;
        //beep;
        IBBackupService.Active   := False;
        SpButBackup.Enabled      := True;
        BitSair.Enabled          := True;
        Animate.Active           := False;
        Animate.CommonAVI        := aviNone;
        uteis.erro  ('Impossível iniciar cópia de segurança... (backup)');
        ArquivoNome.SetFocus;
        ArquivoNome.SelectAll;
     end;
   finally
   end;
end;

procedure TFrmBackup.SpButBackupClick(Sender: tObject);
begin
   //beep;
   uteis.aviso('Verifique se todos usúarios estão fora do sistema...');
   if uteis.confirmacao ( 'Confirma o inicio do backup ?') = mryes then
      begin
         SpButBackup.Enabled := False;
         BitSair.Enabled     := False;
         GeraBackup;
      end
   else
      begin
         ArquivoNome.SetFocus;
         ArquivoNome.SelectAll;
      end;
end;

procedure TFrmBackup.FormCreate(Sender: tObject);
begin
   AtribuiArquivoParamento;
end;

procedure TFrmBackup.FormKeyPress(Sender: tObject; var Key: Char);
begin
   if key = #27 then
      begin
         close;
      end;
end;

procedure TFrmBackup.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
   if (SpButBackup.Enabled = False) or (SpButRestaurar.Enabled = False) then
      begin
         CanClose := False;
         //beep;
         uteis.aviso('Processo de backup ou restauração não foram concluidos...');
      end;
end;

procedure TFrmBackup.RestauraBackup;
Var
ArquivoIni:TiniFile;
begin
  {}
   try
     screen.Cursor := crHourglass;
     Path := ExtractFilePath(Application.ExeName)+'Adjutor.ini';
     if FileExists(Path )then
        begin
          {cria o arquivo}
           ArquivoIni := TiniFile.Create(Path);
          {atribui}
           wSERVIDOR      := ArquivoIni.ReadString('SERVIDOR','PROTOCOLO',''); //copy(ArquivoIni.ReadString('SERVIDOR','PROTOCOLO',''),4,15);
           wNOMEBASEDADOS := ArquivoIni.ReadString('SERVIDOR','DATABASENAME','');
           wUSUARIO       := DesCriptografa(ArquivoIni.ReadString('SERVIDOR','USUARIO',''));
           wSENHA         := DesCriptografa(ArquivoIni.ReadString('SERVIDOR','SENHA',''));
        end
     else
        begin
           //beep;
           uteis.aviso('Não foi possível localizar arquivo de parametros...');
           screen.Cursor            := crDefault;
           exit;
        end;
   finally

   end;
   try
     {opcoes de restauração}
     {DeactivateIndexes	}
      if ChkDesativaIdx.Checked then
         IBRestoreService.Options := IBRestoreService.Options + [DeactivateIndexes]
      else
         IBRestoreService.Options := IBRestoreService.Options - [DeactivateIndexes];
     {NoShadow}
      if ChkNenhumaSomb.Checked then
         IBRestoreService.Options := IBRestoreService.Options + [NoShadow]
      else
         IBRestoreService.Options := IBRestoreService.Options - [NoShadow];
     {NoValidityCheck}
      if ChkCheqValide.Checked then
         IBRestoreService.Options := IBRestoreService.Options + [NoValidityCheck]
      else
         IBRestoreService.Options := IBRestoreService.Options - [NoValidityCheck];
     {OneRelationAtATime}
      if ChkRelaCaVez.Checked then
         IBRestoreService.Options := IBRestoreService.Options + [OneRelationAtATime]
      else
         IBRestoreService.Options := IBRestoreService.Options - [OneRelationAtATime];
     {Replace}
      if ChkSubstituir.Checked then
         IBRestoreService.Options := IBRestoreService.Options + [Replace]
      else
         IBRestoreService.Options := IBRestoreService.Options - [Replace];
     {CreateNew}
      if ChkCriaNovoArq.Checked then
         IBRestoreService.Options := IBRestoreService.Options + [CreateNewDB]
      else
         IBRestoreService.Options := IBRestoreService.Options - [CreateNewDB];
     {UseAllSpace}
      //if .Checked then
      //   IBRestoreService.Options := IBRestoreService.Options + [UseAllSpace]
      //else
      //   IBRestoreService.Options := IBRestoreService.Options - [UseAllSpace];
     {backup}
      With IBRestoreService do
         begin
           {limpa}
            Params.Clear;
            BackupFile.Clear;
           {atribui}
            ServerName  := wSERVIDOR;
            LoginPrompt := False;
            Params.Add('user_name='+wUSUARIO);
            Params.Add('password='+wSENHA);
            Active      := True;
            try
              Verbose := True;
             {arquivo para gera restaurar}
              DatabaseName.Add(ArquivoDestino.Text);
             {arquivo backup}
              BackupFile.Add(ArquivoBkpRes.Text);
             {anima}
              Animate.CommonAVI := aviCopyFiles;
              Animate.Active    := True;
             {estarta backup}
              ServiceStart;
              while not Eof do
                MemoRestaura.Lines.Add(GetNextLine);
              //
              Animate.Active    := False;
              Animate.CommonAVI := aviNone;
            finally
              Active := False;
              SpButRestaurar.Enabled := True;
              BitSair.Enabled        := True;
              uteis.aviso('Processo de restauração foi concluido com sucesso...');
              ArquivoBkpRes.SetFocus;
              ArquivoBkpRes.SelectAll;
              screen.Cursor       := crDefault;
            end;
         end;
   except
      screen.Cursor            := crDefault;
      //beep;
      IBRestoreService.Active := False;
      SpButRestaurar.Enabled  := True;
      BitSair.Enabled         := True;
      Animate.Active          := False;
      Animate.CommonAVI       := aviNone;
      uteis.erro  ('Impossível iniciar a restauração do arquivo...');
      ArquivoBkpRes.SetFocus;
      ArquivoBkpRes.SelectAll;
   end;
end;

procedure TFrmBackup.SpButRestaurarClick(Sender: tObject);
begin
   //beep;
   uteis.aviso('Verifique se todos usúarios estão fora do sistema...');
   if uteis.confirmacao ( 'Confirma o inicio da restauração ?') = mryes then
      begin
         SpButRestaurar.Enabled := False;
         BitSair.Enabled        := False;
         RestauraBackup;
      end
   else
      begin
         ArquivoNome.SetFocus;
         ArquivoNome.SelectAll;
      end;

end;

procedure TFrmBackup.BitSairClick(Sender: tObject);
begin
   close;
end;

procedure TFrmBackup.AtribuiArquivoParamento;
 Var
 ArquivoIni:TiniFile;
 wDESTINO:String;
begin
   try
     screen.Cursor := crHourglass;
     Path := ExtractFilePath(Application.ExeName)+'Adjutor.ini';
     if FileExists(Path )then
        begin
          {cria o arquivo}
           ArquivoIni := TiniFile.Create(Path);
          {caminho seridor}
           wServidor      := ArquivoIni.ReadString('SERVIDOR','PROTOCOLO','');
           wNomeBaseDados := ArquivoIni.ReadString('SERVIDOR','DATABASENAME','');
           wUsuario       := DesCriptografa(ArquivoIni.ReadString('SERVIDOR','USUARIO',''));
           wSenha         := DesCriptografa(ArquivoIni.ReadString('SERVIDOR','SENHA',''));
          {tipo servidor}
           if ArquivoIni.ReadString('SERVIDOR','LOCAL','') = 'S' then
              wTipoServer := 'L' //local
           else
              begin
                 wTipoServer := 'R'; //remoto
                 Delete(wNomeBaseDados,1,(Length(wServidor)+1));
              end;
          {protocolo}
           if copy(ArquivoIni.ReadString('SERVIDOR','PROTOCOLO',''),1,3) = 'TCP' then
              wProtocolo := 'TCP';
           if copy(ArquivoIni.ReadString('SERVIDOR','PROTOCOLO',''),1,9) = 'NamedPipe' then
              wProtocolo := 'NamedPipe';
           if copy(ArquivoIni.ReadString('SERVIDOR','PROTOCOLO',''),1,3) = 'SPX' then
              wProtocolo := 'SPX';
           //
           wUNIDADE_BACKUP  := ArquivoIni.ReadString('SERVIDOR','BACKUP','');
           if wUNIDADE_BACKUP = '' then
              wUNIDADE_BACKUP := 'C:';
          {backup}
           ArquivoNome.Text     := wNomeBaseDados;//ExtractFilePath(Application.ExeName)+'dados\rwbdadm.gdb';
           //wDESTINO             :=
           //if not DirectoryExists(wDESTINO) then
           //   ForceDirectories(wDESTINO);
           ArquivoBackup.Text   := wUNIDADE_BACKUP+'\rwbdadm.gbk'; //ExtractFilePath(Application.ExeName)+'dados\backup\sysdados.gbk';
          {restaurar backup}
           ArquivoBkpRes.Text   := wUNIDADE_BACKUP+'\rwbdadm.gbk';//ExtractFilePath(Application.ExeName)+'dados\rwbdadm.gdb';
           ArquivoDestino.Text  := wNomeBaseDados;//ExtractFilePath+'Dados\rwbdadm.gdb';(Application.ExeName)+
        end
     else
        begin
           screen.Cursor            := crDefault;
           //beep;
           uteis.erro  ('Arquivo de configuração não encontrado:'+#13#10+
                '     Paramentro(s) do(s) Sistema...    ');
           end;
   except
       screen.Cursor            := crDefault;
       //beep;
       uteis.erro  ('Impossível localizar arquivo de parametros !!!'+#13+
            'Entre em contato com Administrador do Sistema...');
   end;

end;

end.
