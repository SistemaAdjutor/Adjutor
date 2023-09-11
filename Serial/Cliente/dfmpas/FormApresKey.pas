unit FormApresKey;

interface

uses
  Windows,  Messages, SysUtils, Variants, Classes, Graphics, Controls, forms, BaseForm, 
  Dialogs, Buttons, StdCtrls, Mask, IniFiles, ExtCtrls, jpeg, RxGIF,Math,
  IdMessage, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdMessageClient, IdSMTP;

type
   TVet = array [1..16] of string;
   TTabela = array [1..4, 1..9] of string;
   TVetData = array [1..8] of integer;
   TTabData = array [1..10] of integer;

  TFrmApresKey = class(tFrmBase)
    Image1: TImage;
    Shape1: TShape;
    Image2: TImage;
    Label1: TLabel;
    MskS1: TMaskEdit;
    MskS2: TMaskEdit;
    MskS3: TMaskEdit;
    MskS4: TMaskEdit;
    BtnEnviarEmail: TSpeedButton;
    ContraSenha: TLabel;
    MskC1: TMaskEdit;
    MskC2: TMaskEdit;
    MskC3: TMaskEdit;
    MskC4: TMaskEdit;
    Bevel1: TBevel;
    BtnCancelar: TBitBtn;
    BtnConfirmar: TBitBtn;
    Shape2: TShape;
    Label6: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Image4: TImage;
    Image3: TImage;
    Image5: TImage;
    Image6: TImage;
    Label9: TLabel;
    Label7: TLabel;
    IdSMTP: TIdSMTP;
    IdMessage: TIdMessage;
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure BtnEnviarEmailClick(Sender: TObject);

  private
    { Private declarations }
    {}

     procedure CriaArquivoIni(sContraSenhaConc: string);
     function DesCriptografa(cifrado: string): string;
     function Criptografa(senha: String): String;
     function PastaWindows():string;
     function ValidarAtivacao():boolean;
     function RetornaContraSenha(): string;
     function CriaArquivo(Texto: string):boolean;
     function ObterArquivoIni(): string;
  public
    { Public declarations }
  end;

var
   FrmApresKey: TFrmApresKey;
  //
   iVet : TVet;
   iVetData : TVetData;
   iContra : TVet;
   iTabela1 : TTabela;
   iTabela2 : TTabela;
   iTabData :TTabData;
   sPastaWin, sSenhaConcatenada, sContraSenhaConc : string;

procedure ChamaFormularioValidacao(pHandle: THandle);
function ValidarLicenca(sDataAtivado:String):Boolean;
function ValidaContraSenha(CONTRASENHA,sDataAtivado: string): boolean;
procedure Tabela;
{Prenche, à esquerda, uma string "S" com caracteres "P" até o tamanho total "N"}
Function PrencheZeroEsquerda (Num_Zero :ShortString; N : Byte) : ShortString;
Function Copies (Ch : Char; N : Byte) : ShortString;


implementation

uses FormAviso;

//function uteis.confirmacao ( msg : pchar ) : word; far; external 'funcsys.dll';



{$R *.dfm}

procedure ChamaFormularioValidacao(pHandle: THandle);
var
  FrmApresKey: TFrmApresKey;
begin
   Application.Handle := pHandle;
   try
      FrmApresKey := TFrmApresKey.Create(Application);
      FrmApresKey.ShowModal;
   finally
      FrmApresKey.Free;
   end;
end;
//numero de série do hd
function SerialNumber(FDrive:String) :String;
var
   Serial: DWord;
   DirLen,Flags: DWord;
   DLabel : Array[0..11] of Char;
begin
   Try
      GetVolumeInformation(PChar(FDrive+':\'),dLabel,12,@Serial,DirLen,Flags,nil,0);
      Result := IntToHex(Serial,8);
   Except
      Result :='';
   end;
end;
//cancela ativação
procedure TFrmApresKey.BtnCancelarClick(Sender: TObject);
begin
   close;
end;
//retorna a contra senha
function TFrmApresKey.RetornaContraSenha: string;
Var
   sHd, sContra1, sContra2, sVlr1, sVlr2: string;
   iCont, iLinha, iColuna,iV1,iV2,iV3,iV4,iV5,iV6,iV7,iV8,iV9, iQtyDias : integer;
begin
   Tabela;//carrega tabela
   sHd := SerialNumber('C');
   iCont := 1;
   iLinha := 1;
   iColuna := 1;
   while (iCont<9) do
   begin
      iVet[iCont] := Copy(sHd,iCont,1);
      iCont := iCont+1;
   end;
   iCont := 1;
   while (iCont<9) do
   begin
      while (iLinha < 5) do
      begin
         iColuna := 1;
         while (iColuna < 10) do
         begin
            sVlr1 := iTabela1[iLinha,iColuna];
            sVlr2 := iVet[iCont];
            if ( sVlr1 = sVlr2) then
               iContra[iCont] := IntToStr(iLinha) + IntToStr(iColuna);
            iColuna := iColuna+1;
         end;
         iLinha := iLinha+1;
      end;
      iLinha := 1;
      inc(iCont);
   end;
   iCont := 1;
   while (iCont<9) do
   begin
      sContra1 := sContra1 + iContra[iCont];
      inc(iCont);
   end;
   MskS1.Text := Copy(sContra1,1,4);
   MskS2.Text := Copy(sContra1,5,4);
   MskS3.Text := Copy(sContra1,9,4);
   MskS4.Text := Copy(sContra1,13,4);
   sSenhaConcatenada := '';
   sSenhaConcatenada := MskS1.Text +  MskS2.Text + MskS3.Text + MskS4.Text ;
end;

//ação do botão confirmar
procedure TFrmApresKey.BtnConfirmarClick(Sender: TObject);
begin
  Try
     if (ValidarAtivacao) then
     begin
        Application.MessageBox('Sistema validado com sucesso!','Captare-Plus',MB_OK);
        Close;
     end else
        Application.MessageBox('verifique o número da contra senha!','Captare-Plus',MB_ICONEXCLAMATION);
        MskC1.SetFocus;
  Except
     Application.MessageBox('verifique o número da contra senha!','Captare-Plus',MB_ICONEXCLAMATION);
     MskC1.SetFocus;
  end;
end;
//valida a contra senha fornecida pela renew
//function TFrmApresKey.ValidaContraSenha(CONTRASENHA,sDataAtivado: string): boolean;
function ValidaContraSenha(CONTRASENHA,sDataAtivado: string): boolean;
Var
   iV1,
   iValorResult,
   iV2,
   iCont,
   iLinha,
   iColuna , iQtyDia: integer;
   sSenhaRet , sContraData1, sSenha, sDataRetorno, sContraData, sC_data, sDataTeste: string;
   iVetHd : TVet;
   Data1, Data2, DataTmp : TDate;
   dia, mes, ano: Word;

begin
  Try
    Tabela;
    iCont := 1;
    iLinha := 1;
    iColuna := 1;
    sSenha := '';
    while (iCont<17) do
      begin
        iVetHd[iCont] := copy(CONTRASENHA,iCont,1);
        inc(iCont);
      end;
    iCont := 1;
    while (iCont<17) do
    begin
      iV1 := StrToInt(iVetHd[iCont]);
      iV2 := StrToInt(iVetHd[iCont+1]);
      sSenha := sSenha+iTabela2[iV1,iV2];
      iCont := iCont+2;
    end;
    iCont := 17;
    sContraData := '';
    iV1 := 1;
    sContraData1 := '';
    sContraData1 := Copy(CONTRASENHA,17,8);
    iValorResult := 0;
    sC_data := sContraData1;
    sC_data := IntToStr((StrToInt(sC_data)-35487));

    sDataRetorno := PrencheZeroEsquerda(sC_data,8);

    sContraData := Copy(sDataRetorno,1,2);
    sContraData := sContraData+'/'+Copy(sDataRetorno,3,2);
    sContraData := sContraData+'/'+Copy(sDataRetorno,5,4);

   {valida data}
    sDataTeste := SerialNumber('C');
    try
      StrToDate(sContraData);
    except
    on EConvertError do
      Result := False;
    end;
   {}
    if (sSenha = sDataTeste) then
    begin
      iV1 := iValorResult;
      Data1 := StrToDate(sContraData);
      Data2 := StrToDate(FormatDateTime('DD/MM/YYYY',Date));
     {}
      if (Trim(sDataAtivado) <> '')
      and(Data1 < StrToDate(sDataAtivado)) then
          Result := False
      else
      if (Data1 >= Data2) then
         begin
            DataTmp :=Data1-Data2;
            DecodeDate( DataTmp, ano, mes, dia);
            if ((StrToInt(FloatToStr(DataTmp)) < 7)
            and (StrToInt(FloatToStr(DataTmp))>=0))  then
               begin
                  try
                     FrmAviso := TFrmAviso.Create(Application);
                     FrmAviso.LblDias.Caption :='Faltam '+FloatToStr(DataTmp)+' Dia(s) para expirar a licença atual!';
                     FrmAviso.ShowModal;
                  finally
                     FrmAviso.Destroy;
                     FrmAviso := Nil;
                  end;

                  Result := True;
               end
            else
              Result := True;
         end;
    end;

  Finally
  end;
end;

//procedure TFrmApresKey.Tabela;
procedure Tabela;
begin
   //Tabela 1
   iTabela1[1, 1] := '1';
   iTabela1[1, 2] := '2';
   iTabela1[1, 3] := '3';
   iTabela1[1, 4] := '4';
   iTabela1[1, 5] := '5';
   iTabela1[1, 6] := '6';
   iTabela1[1, 7] := '7';
   iTabela1[1, 8] := '8';
   iTabela1[1, 9] := '9';
   iTabela1[2, 1] := 'A';
   iTabela1[2, 2] := 'B';
   iTabela1[2, 3] := 'C';
   iTabela1[2, 4] := 'D';
   iTabela1[2, 5] := 'E';
   iTabela1[2, 6] := 'F';
   iTabela1[2, 7] := 'G';
   iTabela1[2, 8] := 'H';
   iTabela1[2, 9] := 'I';
   iTabela1[3, 1] := 'J';
   iTabela1[3, 2] := 'K';
   iTabela1[3, 3] := 'L';
   iTabela1[3, 4] := 'M';
   iTabela1[3, 5] := 'N';
   iTabela1[3, 6] := 'O';
   iTabela1[3, 7] := 'P';
   iTabela1[3, 8] := 'Q';
   iTabela1[3, 9] := 'R';
   iTabela1[4, 1] := 'S';
   iTabela1[4, 2] := 'T';
   iTabela1[4, 3] := 'U';
   iTabela1[4, 4] := 'V';
   iTabela1[4, 5] := 'W';
   iTabela1[4, 6] := 'Y';
   iTabela1[4, 7] := 'Z';
   iTabela1[4, 8] := '0';
   iTabela1[4, 9] := '0';
   //Tabela 2
   iTabela2[4, 1] := '1';
   iTabela2[4, 2] := '2';
   iTabela2[4, 3] := '3';
   iTabela2[4, 4] := '4';
   iTabela2[4, 5] := '5';
   iTabela2[4, 6] := '6';
   iTabela2[4, 7] := '7';
   iTabela2[4, 8] := '8';
   iTabela2[4, 9] := '9';
   iTabela2[3, 1] := 'A';
   iTabela2[3, 2] := 'B';
   iTabela2[3, 3] := 'C';
   iTabela2[3, 4] := 'D';
   iTabela2[3, 5] := 'E';
   iTabela2[3, 6] := 'F';
   iTabela2[3, 7] := 'G';
   iTabela2[3, 8] := 'H';
   iTabela2[3, 9] := 'I';
   iTabela2[2, 1] := 'J';
   iTabela2[2, 2] := 'K';
   iTabela2[2, 3] := 'L';
   iTabela2[2, 4] := 'M';
   iTabela2[2, 5] := 'N';
   iTabela2[2, 6] := 'O';
   iTabela2[2, 7] := 'P';
   iTabela2[2, 8] := 'Q';
   iTabela2[2, 9] := 'R';
   iTabela2[1, 1] := 'S';
   iTabela2[1, 2] := 'T';
   iTabela2[1, 3] := 'U';
   iTabela2[1, 4] := 'V';
   iTabela2[1, 5] := 'W';
   iTabela2[1, 6] := 'Y';
   iTabela2[1, 7] := 'Z';
   iTabela2[1, 8] := '0';
   iTabela2[1, 9] := '0';
end;


procedure TFrmApresKey.CriaArquivoIni(sContraSenhaConc: string);
Var
  ArkIni: TIniFile;
begin
  {cria arquivo}
   ArkIni := TIniFile.Create(sPastaWin+'\winsysbr.ini');
   Try
     ArkIni.WriteString('@','@',Criptografa(sContraSenhaConc));
   Finally
     ArkIni.Free;
   end;
end;

function TFrmApresKey.ObterArquivoIni: string;
Var
   ArkIni : TIniFile;
   sCodigo: string;
begin
   //lê arquivo
   sPastaWin := PastaWindows;
   ArkIni := TIniFile.Create(sPastaWin+'\winsysbr.ini');
   Try
      sCodigo := ArkIni.ReadString('@','@','');
   Finally
   sCodigo := DesCriptografa(sCodigo);
   ArkIni.Free;
   Result := sCodigo;
   end;
end;

function TFrmApresKey.DesCriptografa(cifrado: string): string;
var
   Tamanho, n: integer;
   Retorno: String;
begin
     Tamanho := Length(cifrado);
     Retorno := '';
     for n := 1 to Tamanho do
     begin
          {decifrar subtraindo, no caso, 127 (ou o número
          usado para cifrar) ao valor ASCII de cada
          caracter da senha}
          Retorno := Retorno + Chr(Ord(cifrado[n]) - 131);
     end;
     DesCriptografa := Retorno;

end;

function TFrmApresKey.Criptografa(senha: String): String;
var
   Tamanho, n: integer;
   Retorno: String;
begin
     Tamanho := Length(senha);
     Retorno := '';
     for n := 1 to Tamanho do
     begin
          {cifrar somando 127 (ou qualquer outro número)
          ao valor ASCII de cada caracter da senha}
          Retorno := Retorno + Chr(Ord(senha[n]) + 131);
     end;
     Criptografa := Retorno;

end;

function ValidarLicenca(sDataAtivado:String): boolean;
Var
   sArquivo: string;
begin
   sArquivo  :=  FrmApresKey.ObterArquivoIni;
   if (ValidaContraSenha(sArquivo,sDataAtivado)) then
      Result := True
   else
      Result := False;   
end;
//retorna pasta padrao do windows
function TFrmApresKey.PastaWindows: string;
var
   MeuBuffer: Array [1..128] of Char;
   retorno: Integer;
   PegaSysDir : string;
Begin
   retorno:=GetSystemDirectory(@MeuBuffer,128);
   if (retorno>128) OR (retorno=0) then
      PegaSysDir:=''
   else
      PegaSysDir:=StrPas(@MeuBuffer);
   Result := PegaSysDir;
end;
//valida quando o sistema inicia

function TFrmApresKey.ValidarAtivacao: Boolean;
var
   sContraConcatenada: string;
begin
   sContraConcatenada := MskC1.Text+MskC2.Text+MskC3.Text+MskC4.Text;
   if (ValidaContraSenha(sContraConcatenada,'')) then
     CriaArquivo(sContraConcatenada)
   else
      Result := False;
end;
// cria arquivo .ini
function TFrmApresKey.CriaArquivo(Texto: string): boolean;
begin
   sPastaWin := PastaWindows;
   //if (FileExists(sPastaWin+'\winsysbr.ini')) then
   //   DeleteFile(sPastaWin+'\winsysbr.ini');
   CriaArquivoIni(Texto);
end;

procedure TFrmApresKey.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_RETURN then
      Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFrmApresKey.FormShow(Sender: TObject);
begin
   RetornaContraSenha;
   MskC1.SetFocus;
end;

procedure TFrmApresKey.BtnEnviarEmailClick(Sender: TObject);
  Var
    tsMensagem:TStrings;
begin
   try
      tsMensagem := TStringList.Create;
      tsMensagem.Add('Registro do Sistema - Renew Informática Ltda.');
      tsMensagem.Add('Data Registro : ' +DateToStr(Date));
      tsMensagem.Add('Hora : '+TimeToStr(Time));
      tsMensagem.Add('Serial Sistema : ');
      tsMensagem.Add(MskS1.Text+'-'+MskS2.Text+'-'+MskS3.Text+'-'+MskS4.Text);
     {}
      IdMessage.Recipients.EMailAddresses := 'suporte@renewpr.com.br';
      IdMessage.Subject := 'Registro do SoftWare - Renew Consultoria & Informática Ltda.';
      IdMessage.Body    := tsMensagem;
      //Manipulando os Anexos
      //for Anexo := 0 to lbxAnexos.Items.Count-1 do
      //TIdAttachment.Create(idmessage.MessageParts, TFileName(lbxAnexos.Items.Strings[Anexo]));
      IdSMTP.Connect;
      try
        IdSMTP.Send(IdMessage);
      finally
        IdSMTP.Disconnect;
      end;
      uteis.aviso(Pchar('E-mail enviado para Renew Consutoria & Informática Ltda.'));
    finally
       tsMensagem.Free;
    end;
end;

function PrencheZeroEsquerda(Num_Zero: ShortString;
  N: Byte): ShortString;
begin
  if N > Length(Num_Zero) Then
    begin
       PrencheZeroEsquerda := Copies ('0', N - Length(Num_Zero)) + Num_Zero;
    end
  else
    begin
       PrencheZeroEsquerda := Copy (Num_Zero, Length(Num_Zero) - N + 1, N);
    end;
end;
{Prenche uma String de tamanho "N" com o caractere "Ch"}
Function Copies (Ch : Char; N : Byte) : ShortString;
begin
  if N < 1 Then
    Result := ''
  else begin
    FillChar (Result[1], N, Ch);
    Result[0] := Char(N);
  end;
end;

end.


