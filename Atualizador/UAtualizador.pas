unit UAtualizador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, forms, BaseForm, 
  Dialogs, jpeg, ExtCtrls, RXCtrls, StdCtrls, Buttons, XPMan, uVerificaVersao, IniFiles,
  FMTBcd, DB, Provider, DBClient, SqlExpr,SqlClientDataSet;

type
  TfrmAtualizador = class(tFrmBase)
    Image1: TImage;
    RxLEmpresa: TRxLabel;
    RxLversao: TRxLabel;
    Panel1: TPanel;
    BitConfirma: TBitBtn;
    BitCancela: TBitBtn;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    SqlVersao: TSQLDataSet;
    SqlVersaoCODIGO: TIntegerField;
    SqlVersaoVERSAO: TStringField;
    SqlVersaoDATA: TDateField;
    SqlVersaoPROGRAMA: TStringField;
    SqlVersaoNOMEARQUIVO: TStringField;
    SqlVersaoARQUIVO: TBlobField;
    CdsVersao: TClientDataSet;
    CdsVersaoCODIGO: TIntegerField;
    CdsVersaoVERSAO: TStringField;
    CdsVersaoDATA: TDateField;
    CdsVersaoPROGRAMA: TStringField;
    CdsVersaoNOMEARQUIVO: TStringField;
    CdsVersaoARQUIVO: TBlobField;
    DspVersao: TDataSetProvider;
    DsVersao: TDataSource;
    SQLConnection1: TSQLConnection;
    Label1: TLabel;
    SqlVersaoATUALIZADOR: TBlobField;
    CdsVersaoATUALIZADOR: TBlobField;
    SqlVersaoATUALIZA: TIntegerField;
    CdsVersaoATUALIZA: TIntegerField;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    function GetBuildInfo:string;
    procedure BitCancelaClick(Sender: TObject);
    procedure BitConfirmaClick(Sender: TObject);
    Function DesCriptografa(cifrado: String): String;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtualizador: TfrmAtualizador;
  Arquivoini       :TIniFile;
  exeLocal  :String;
implementation

uses StrUtils;

{$R *.dfm}

function TFRMAtualizador.GetBuildInfo: string;
 var
   VerInfoSize: DWORD;
   VerInfo: Pointer;
   VerValueSize: DWORD;
   VerValue: PVSFixedFileInfo;
   Dummy: DWORD;
   V1, V2, V3, V4: Word;
   Prog : string;
begin
   Prog := Application.Exename;
   VerInfoSize := GetFileVersionInfoSize(PChar(prog), Dummy);
   GetMem(VerInfo, VerInfoSize);
   GetFileVersionInfo(PChar(prog), 0, VerInfoSize, VerInfo);
   VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
   with VerValue^ do
      begin
         V1 := dwFileVersionMS shr 16;
         V2 := dwFileVersionMS and $FFFF;
         V3 := dwFileVersionLS shr 16;
         V4 := dwFileVersionLS and $FFFF;
      end;
   FreeMem(VerInfo, VerInfoSize);
   result := IntToStr(V1)+'.'+IntToStr(V2)+'.'+IntToStr(V3)+'.'+FormatFloat('000',(V4));

//   result := Copy (IntToStr (100 + v1), 3, 2) + '.' +
//   Copy (IntToStr (100 + v2), 3, 2) + '.' +
//   Copy (IntToStr (100 + v3), 3, 2) + '.' +
//   Copy (IntToStr (100 + v4), 3, 2);
//
end;

procedure TfrmAtualizador.FormCreate(Sender: TObject);
var Sistema : integer;
begin
  Sistema := 0;
  try
    if EncontrouIni then
    begin
      //cria o  IniFile
      Arquivoini := TIniFile.Create(GetCaminhoIniFile);
      //passa para as variáveis os caminhso dos arquivos
      exeLocal   := Arquivoini.ReadString('ARQUIVOS', 'exeLocal', '');

      //limpa conexão
      SQLConnection1.Connected                  := False;
      SQLConnection1.Params.Values['User_Name'] := '';
      SQLConnection1.Params.Values['PASSWORD']  := '';
      SQLConnection1.Params.Values['Database']  := '';
      {dll de conexao com o banco de dados}
      SQLConnection1.VendorLib                  := '';
      {dialeto}
      SQLConnection1.Params.Values['SQLDialect']:= '';

      if SQLConnection1.Connected then
       SQLConnection1.Connected := False;
      {usuario e senha}
      SQLConnection1.Params.Values['User_Name']    := DesCriptografa(ArquivoIni.ReadString('SERVIDOR','USUARIO',''));
      SQLConnection1.Params.Values['PASSWORD']     := DesCriptografa(ArquivoIni.ReadString('SERVIDOR','SENHA',''));
      //
      if ArquivoIni.ReadString('SERVIDOR','CONEXAO','') = 'R' then{remoto}
       SQLConnection1.Params.Values['Database']  := ArquivoIni.ReadString('SERVIDOR','HOSTNAME','')+':'+ArquivoIni.ReadString('SERVIDOR','PATHREMOTO','')
      else
      if ArquivoIni.ReadString('SERVIDOR','CONEXAO','') = 'L' then{local}
       SQLConnection1.Params.Values['Database']  := ArquivoIni.ReadString('SERVIDOR','HOSTNAME','')+':'+ArquivoIni.ReadString('SERVIDOR','PATHLOCAL','');
      {dll de conexao com o banco de dados}
      SQLConnection1.VendorLib                     := ArquivoIni.ReadString('SERVIDOR','VENDORLIB','');
      SQLConnection1.Params.Values['ServerCharSet']   := 'WIN1252';
      {dialeto}
      SQLConnection1.Params.Values['SQLDialect']   := '3';
    try
      SQLConnection1.Connected := True;
    except on E:Exception do
    begin
      if UpperCase(copy(E.Message,1,44)) = 'YOUR USER NAME AND PASSWORD ARE NOT DEFINED.' then
      begin
        //beep;
        Application.MessageBox('Identificação invalida !, Usuário não cadastrado...','Atenção',MB_ICONWARNING);
        application.Terminate;
      end
    else
      begin
        MessageDlg('Conexão falhou, passe a mensagem abaixo ao Administrador de Sistemas:'+#13+ E.Message,mtError, [mbOK],0);
      end;
    end;
  end;
    CdsVersao.Open;
    //SqlVersao.Open;
  end;
  except  on E: Exception do

    Application.MessageBox(Pchar('Não foi possível encontar o arquivo de parâmetros '+E.Message),'Atenção',MB_ICONERROR);
  end;
  Sistema := CdsVersaoCODIGO.Value; // ATUALIZA.Value;
  if Sistema = 2 then
  begin
    if CdsVersao.Locate('CODIGO',2,[]) then
    begin
      Label1.Caption := 'Assistente de atualização do sistema Adjutor NFe.'+#13+
                        #13+
                        'Click no botão "Confirma Atualização" para executar o arquivo de instalação.';
      RxLVersao.Caption := 'Versão : '+GetBuildInfo;
      RxLabel3.Caption  := 'Versão Local: '+GetVersion(exeLocal);
      RxLabel4.Caption  := 'Versão do Servidor: '+CdsVersaoVERSAO.Value;
    end;
  end
  else
  begin
    if CdsVersao.Locate('CODIGO',1,[]) then
    begin
      Label1.Caption := 'Assistente de atualização do sistema Adjutor.'+#13+
                        #13+
                        'Click no botão "Confirma Atualização" para executar o arquivo de instalação.';
      RxLVersao.Caption := 'Versão : '+GetBuildInfo;
      RxLabel3.Caption  := 'Versão Local: '+GetVersion(exeLocal);
      RxLabel4 .Caption  := 'Versão do Servidor: '+CdsVersaoVERSAO.Value;
    end;
  end;
  if (GetVersion(exeLocal) >= CdsVersaoVERSAO.Value) then
    Application.Terminate;
end;

procedure TfrmAtualizador.BitCancelaClick(Sender: TObject);
begin
  SQLConnection1.Close;
  CdsVersao.Close;
  SqlVersao.Close;
  Close;
end;

procedure TfrmAtualizador.BitConfirmaClick(Sender: TObject);
var Sistema : String[3];
begin
  Sistema := ReverseString(ExtractFileDir(Application.ExeName));
  if Sistema <> 'efN' then
  begin
    if CdsVersao.Locate('CODIGO',1,[]) then
    begin
      //valida os arquivos
      CreateDir(ExtractFileDir(Application.ExeName)+'\Atualização\Instalação');
      copyfile(PChar(ExtractFileDir(Application.ExeName)+'\Atualização\Adjutor'+CdsVersaoVERSAO.Value+'.exe'),PChar(ExtractFileDir(Application.ExeName)+'\Atualização\Instalação\Adjutor'+CdsVersaoVERSAO.Value+'.exe'),False);
      try
        WinExec(pansichar(ExtractFileDir(Application.ExeName)+'\Atualização\Instalação\Adjutor'+CdsVersaoVERSAO.Value+'.exe'),1);
      Except
        Application.MessageBox('Impossível executar o arquivo de instalação!', 'Atualizador.',MB_OK+MB_ICONEXCLAMATION)
      end;
    end;
  end;
  if Sistema = 'efN' then
  begin
    if CdsVersao.Locate('CODIGO',2,[]) then
    begin
      //valida os arquivos
      CreateDir(ExtractFileDir(Application.ExeName)+'\Atualização\Instalação');
      copyfile(PChar(ExtractFileDir(Application.ExeName)+'\Atualização\Adjutor_NFe'+CdsVersaoVERSAO.Value+'.exe'),PChar(ExtractFileDir(Application.ExeName)+'\Atualização\Instalação\Adjutor_NFe'+CdsVersaoVERSAO.Value+'.exe'),False);
      try
        WinExec(pansichar(ExtractFileDir(Application.ExeName)+'\Atualização\Instalação\Adjutor_NFe'+CdsVersaoVERSAO.Value+'.exe'),1);
      Except
        Application.MessageBox('Impossível executar o arquivo de instalação!', 'Atualizador.',MB_OK+MB_ICONEXCLAMATION)
      end;
    end;
  end;
  //executa o arquivo local
  close;
  Arquivoini.Free;//remove o objeto
end;

//DesCriptografa
function TfrmAtualizador.DesCriptografa(cifrado: string): string;
var
   Tamanho, n: integer;
   Retorno: String;
begin
  Tamanho := Length(cifrado);
  Retorno := '';
  for n := 1 to Tamanho do
  begin
    //decifrar subtraindo, no caso, 127 (ou o número usado para cifrar) ao valor ASCII de cada caracter da senha
    Retorno := Retorno + Chr(Ord(cifrado[n]) - 131);
  end;
  DesCriptografa := Retorno;
end;

end.
