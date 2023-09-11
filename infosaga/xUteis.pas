
unit Uteis;

//{$D-}

interface

uses
  Forms, Classes, SysUtils, windows, math, Dialogs, DateUtils, Graphics, jpeg, winapi.messages,
  DB, Clipbrd, MaskUtils, Variants, Controls, ExtDlgs, WiniNet, WinSock, ExtCtrls, inicioDB;


type
    tProcedureDetalheAfterPrint = procedure( Sender: TForm ) of object;

Function DiaInicioBimestre( Date: tDateTime ): tDateTime ;
Function DiaFinalBimestre( Date: tDateTime ): tDateTime ;
Function DiaInicioTrimestre( Date: tDateTime ): tDateTime ;
Function DiaFinalTrimestre( Date: tDateTime ): tDateTime ;
Function DiaInicioSemestre( Date: tDateTime ): tDateTime ;
Function DiaFinalSemestre( Date: tDateTime ): tDateTime ;
Function DiaInicioAno( Date: tDateTime ): tDateTime ;
Function DiaFinalAno( Date: tDateTime ): tDateTime ;



function IsCharEspec( Str: String):Boolean;
procedure limpaBufferTeclado;
procedure DeletarArquivos( pPasta, pScopo:string );
procedure TrimAppMemorySize; // mega super hiper limpador de memÛria da aplicaÁ„o
procedure Le_Imagem_bmp(pFile: string; pIMG: tImage);
Procedure Save_Imagem_BMP_toJPEG( pLogo:tImage; pCampo:tBlobField );

Function RoundTo (const AValue: Double; const Digits: SmallInt = -2 ):Double;

function CopyLeft(InValue: String; Len: Integer): String;
function CopyRight(InValue: String; Len: Integer): String;

procedure GetListaStringssepVirgula( fListaCamposGrid:string; Out ListaOut:tStrings );
Function Extenso(Valor:Double):string;
Function SepareCidadeUf( Const pCidadeUf: string; Var pCid, pUf: String ): Boolean;
Function InternetAtiva(ShowMessage:boolean): boolean;
Function ExtrairNumeros(msg:string):string; // Extrai digitos numÈricos de uma string
Function ExtrairLetras(msg:string):string; // Extrai digitos n„o numÈricos de uma string
function testacpf(num: string): String; // testa cpf
function testacgc(CNPJ: string): String; // testa cnpj
Function testaCgcCpf(num:string):string; // testa cpf ou cnpj
function Running32ON64: boolean; // true se for processo 32bits rodando sob so 64bits
Function InsereBarraDiretorio(lPath:string):string; // Testa e insere "/" ao final do path informado
Function EmptyDate( dta : tDateTime): Boolean ; // Testa se data È vazia
Function GetIdadeAnos( DtNasc : tDateTime ): String; // retorna a qtd de anos entre a data informada e a atual
Function GetIdadeCompleta( DtNasc : tDateTime ): String; // retorna a descriÁ„o em anos, meses e dias entre a data informada e a dt atual
function strzero( nm:Variant;tam:integer ): string ;// retorna string com decimal preenchido com zeros a esquerda
Function iif ( condic: boolean ; restrue, resfalse:variant ): variant; // retorna restrue ou resfalse de acordo com a condiÁ„o informada
Function IsDate(wData:String):Boolean; // testa se dado contido em string È uma data
Function HasTextaValidDate( DtStr: string ) : boolean;
Procedure AcceptNumberOnly( var keyd:char );
procedure DateDiff(Date1, Date2: TDateTime; var Days, Months, Years: Word);
function NumeroAleatorio:LongWord;
function JanelaExiste(Classe, Janela: string): Boolean;
function DelphiAberto: Boolean;

Procedure LoadBitmapFromBlob(Bitmap: TBitmap; Blob: TBlobField);

Procedure LoadBitmapFromFile(Bitmap: TBitmap );
Procedure SaveBitmapToFile(Image: tPicture );

function GetTextBefore(pTexto,pBusca:string):string;
function GetTextAfter(pTexto,pBusca:string):string;

function qstr(pstr:string):string;

Function DateToSQL( dta: tDate ): string;

Function DateTimeToSQL( dta: tDateTime ): string;
Function TimeToSQL( dta: tDateTime ): string;
Function SetHoraInicio( dta: tDateTime ): tDateTime;
Function SetHoraFinal( dta: tDateTime ): tDateTime;

Function FloatToSQL( vlr:Extended ): string;
Procedure TestaPasta(aPath:string);
procedure GeraException(msg: string);
function NomeOuCodigo(fCampoNome, fCampoCod, fData: string): string;
Function IsNum(dado:string):boolean;
function CampoSql (fField, fData: string): string;

Function InsereAfter(pDado,pSeparador:string):string; // insere pSeparador se pDaDO nao for vazio
Function InsereApos(pDado,pSeparador:string):string; // insere pSeparador se pDaDO nao for vazio

Function CampoSqlOr(CamposPesquisar: array of string;DadoPesquisar:string):string;

Function AlinGraphicText( pdado:string;ptam:integer;lAlign:string;Canvas:tCanvas):string;
Function AlinGraphicTextB( pdado:string;ptam:integer;lAlign,CharPreenchimento:string;Canvas:tCanvas):string;

Procedure CopiarParaAreaTransferencia(pTexto:String);
Procedure CopyToClipBoard(pTexto:String);

Function FormataCgcCpf(pDado:string):string;

Function ConfirmaSimNao(pTexto:string):boolean;
Function SqlGetNomeTabela(sql:string):string;
Function GetPalavraApos(txt, pll:string):string;
Function SqlGetCampoId(sql:string):string;
Function PreencherString(pDado:String;pTam:Integer;pCaracter:String):string;
Function Len( pdado: string ):integer;
Function Transform( pDado,pMasc: string ): string;
function FieldByName(pDataSet:tObject;pFieldName:string):Variant;
function  AceitaSomenteNumero(Key: Char; EhDecimal: Boolean = False): Char;

function getDataArquivo(FileName: string): tDateTime;
Procedure AtualizaPasta(pOrigem,pDestino: string);
Function FormataCEP( pCep: string ): string;
function FormataFone(pFone:string):string;
procedure Le_Imagem_JPEG_toBMP(pCampo: TBlobField; pBMP: tBitMap); Overload;
procedure Le_Imagem_JPEG_toBMP(pCampo: TBlobField; pIMG: tImage); Overload;
Function LastDay( dtRef: tDate ) : tDate;

//Function BytesToStr(const Value: tBytes): string; xe8

//Novi
Function DesCriptografa(cifrado: String): String;
Function Criptografa(senha: String): String;
function GetIp: String;
function GetBuildInfo:string;

Procedure Aviso( msg:string );
function confirmacao ( msg : string ) : word;
Procedure Erro( msg:string );

Function GetIndiceTabelaPecos ( pIndiceTabela:String ): Integer;
Function RemoveTraillingBlanks(pStr:string):string;
function ConcatSe(p1,p2:string):string; // concatena strings se ambas n„o forem vazias;

function PrimeiroDiadoMes(Data : TDateTime) : TDateTime;
function MascaraCNPJ_CPF(wpCnpf_Cpf:string):string;
function MascaraFone(wpFone:string):string;
Function TiraAcento(Texto:String;Maiusculo:Boolean):String;

function Centraliza(wStr1: String; wTama: Integer): String;
function AlinhaD(Texto : String; Tamanho : Integer) : String;
function replicate ( ch:string; cnt:integer): string;
Function RetornaNull(wTEXTO:String):String;
function MesesEntreDatas(dDataInicial, dDataFinal: TDate): integer;


Const
     CR = #10;
     LF = #13;
     CRLF = #10+#13;

     clReadOnly=$00E2E2E2;
     clZebra=$00E2E2E2;
     clCampoDestaque=$00DFFFFE;

     VK_0 = 48;
     VK_1 = 49;
     VK_2 = 50;
     VK_3 = 51;
     VK_4 = 52;
     VK_5 = 53;
     VK_6 = 54;
     VK_7 = 55;
     VK_8 = 56;
     VK_9 = 57;
     VK_A = 65;
     VK_B = 66;
     VK_C = 67;
     VK_D = 68;
     VK_E = 69;
     VK_F = 70;
     VK_G = 71;
     VK_H = 72;
     VK_I = 73;
     VK_J = 74;
     VK_K = 75;
     VK_L = 76;
     VK_M = 77;
     VK_N = 78;
     VK_O = 79;
     VK_P = 80;
     VK_Q = 81;
     VK_R = 82;
     VK_S = 83;
     VK_T = 84;
     VK_U = 85;
     VK_V = 86;
     VK_W = 87;
     VK_X = 88;
     VK_Y = 89;
     VK_Z = 90;

     CC_MAIUSC='ABCDEFGHIJKLMNOPQRSTUVXYZW';
     CC_MINUSC='abcdefghijklmnopqrstuvxyzw';
     CC_ACENTUADO_MINUSC='·ÈÌÛ˙‡ËÏÚ˘‚ÍÓÙ˚„ıÒÁ‰ÎÔˆ¸';
     CC_ACENTUADO_MAIUSC='¡…ÌÛ˙¿»Ã“Ÿ¬ Œ‘€√’—«ƒÀœ÷‹';

    Centenas: array[1..9] of string[12]=('CEM','DUZENTOS','TREZENTOS','QUATROCENTOS','QUINHENTOS','SEISCENTOS','SETECENTOS','OITOCENTOS','NOVECENTOS');
    Dezenas : array[2..9] of string[10]=('VINTE','TRINTA','QUARENTA','CINQUENTA','SESSENTA','SETENTA','OITENTA','NOVENTA');
    Dez     : array[0..9] of string[10]=('DEZ','ONZE','DOZE','TREZE','QUATORZE','QUINZE','DEZESSEIS','DEZESSETE','DEZOITO','DEZENOVE');
    Unidades: array[1..9] of string[10]=('UM','DOIS','TRES','QUATRO','CINCO','SEIS','SETE','OITO','NOVE');

    MoedaSingular = 'REAL';
    MoedaPlural   = 'REAIS';
    CentSingular  = 'CENTAVO';
    CentPlural    = 'CENTAVOS';
    Zero          = 'ZERO';



implementation

Procedure Aviso( msg:string );
begin
     MessageDlg( msg, mtWarning, [mbOk], 0);
end;

function Confirmacao ( msg : string ) : word;
begin
     //result := MessageDlg( msg , mtConfirmation, [ mbYes, mbNo ], 0 ); <==== esta bugado no xe8
     RESULT := application.messagebox ( pWideChar(msg), 'ConfirmaÁ„o', mb_yesno + mb_iconquestion );
end;

Procedure Erro( msg:string );
begin
     MessageDlg( msg, mtError, [mbOk], 0);
end;

Function LastDay( dtRef: tDate ) : tDate;
begin
     result := EndOfTheMonth( dtRef ) ;
end;

{Function BytesToStr(const Value: tBytes): string;
var
    I: integer;
    S : String;
    Lt: char;
begin
    S := '';
    for I := Length(Value)-1 Downto 0 do
    begin
        Lt := Chr(Value[I]);
        S := Lt + S;
    end;
    Result := S;
end;}

Function HasTextaValidDate( DtStr: string ) : boolean;
var
  dd: Integer;
  mm: Integer;
  yy: Integer;
  ultdia: Integer;
  DateStr: String;
begin
     result := false ;
     DateStr := ExtrairNumeros( DtStr ) ;
     if length(DateStr)=8 then
     begin
          dd := strtointdef( copy ( datestr , 1 , 2 ) , 0 );
          mm := strtointdef( copy ( datestr , 3 , 2 ) , 0 );
          yy := strtointdef( copy ( datestr , 5 , 4 ) , 0 );
          if (dd>0) and (mm>0) and (yy>1900) then
          begin
               if (mm<13) then // mes v·lido
               begin
                    ultdia := DayOf( LastDay ( encodedate ( yy,mm,1 ) ) );
                    if dd <= ultdia then
                       result := true;
               end;
          end;
     end;
end;

Function ExtrairLetras(msg:string):string; // Extrai digitos n„o numÈricos de uma string
var x,y:integer;
    num:string;
    cjCaracteres: string;
begin
     num:='';
     cjCaracteres:= CC_MAIUSC+CC_MINUSC+CC_ACENTUADO_MINUSC+CC_ACENTUADO_MAIUSC;
     x := length(msg);
     for y:=1 to x do
     begin
          if pos(msg[y],cjCaracteres)<>0 then
             num := num + msg[y];
     end;
     result := num;
end;

function ExtrairNumeros(msg: string): string; // extrai digitos decimais de uma string
var x,y:integer;
    num:string;
begin
     num:='';
     x := length(msg);
     for y:=1 to x do
     begin
          if pos(msg[y],'1234567890')<>0 then
             num := num + msg[y];
     end;
     result := num;
end;

function testacpf(num: string): String; // responde com digito veficador correto caso o informado esteja errado
var
   n1,n2,n3,n4,n5,n6,n7,n8,n9:integer;
   d1,d2:integer;
   digitado, calculado:string;
begin
     n1:= StrToInt(num[1]);
     n2:= StrToInt(num[2]);
     n3:= StrToInt(num[3]);
     n4:= StrToInt(num[4]);
     n5:= StrToInt(num[5]);
     n6:= StrToInt(num[6]);
     n7:= StrToInt(num[7]);
     n8:= StrToInt(num[8]);
     n9:= StrToInt(num[9]);
     d1:= n9*2+n8*3+n7*4+n6*5+n5*6+n4*7+n3*8+n2*9+n1*10;
     d1:= 11-(d1 mod 11);
     if d1>=10 then
        d1:=0;
     d2:= d1*2+n9*3+n8*4+n7*5+n6*6+n5*7+n4*8+n3*9+n2*10+n1*11;
     d2:= 11-(d2 mod 11);
     if d2>=10 then
        d2:=0;
     calculado:= inttostr(d1)+inttostr(d2);
     digitado:= num[10]+num[11];
     if calculado = digitado then
        testacpf:=''
     else
        testacpf:='Digito CPF inv·lido! (Correto='+calculado+')';
end;

function testacgc(CNPJ: string): String; // responde com digito veficador correto caso o informado esteja errado
{ Prof. Omero Francisco Bertol (http://www.pb.utfpr.edu.br/omero/) }
var DInfo, fCnpj: string;
    sm, i, r, peso: integer;
    ts : string;
begin
     fCnpj:=trim(cnpj);
     if (length(fCNPJ) <> 14) then
     begin
          result := 'CNPJ inv·lido!';
          exit;
     end;

     try
        sm := 0;
        peso := 2;
        DInfo := fCNPJ[13]+fCNPJ[14];

        for i := 12 downto 1 do
        begin
             sm := sm + (StrToInt(fCNPJ[i]) * peso);
             peso := peso + 1;
             if (peso = 10) then
                peso := 2;
        end;
        r := sm mod 11;

        if ((r = 0) or (r = 1)) then
           fcnpj[13] := '0'
        else
           fcnpj[13] := inttostr( 11-r )[1];

        sm := 0;
        peso := 2;
        for i := 13 downto 1 do
        begin
             sm := sm + (StrToInt(fCNPJ[i]) * peso);
             peso := peso + 1;
             if (peso = 10) then
                peso := 2;
        end;
        r := sm mod 11;
        if ((r = 0) or (r = 1)) then
           fcnpj[14] := '0'
        else
           fcnpj[14] := inttostr(11-r)[1];
        if DInfo=(fcnpj[13]+fcnpj[14]) then
           result := ''
        else
            result := 'Digito CNPJ Inv·lido (Correto='+fcnpj[13]+fcnpj[14]+')';
     except
       result := 'CNPJ inv·lido!'
     end;
end;

Function TestaCgcCpf(num:string):string; // Responde com msg erro caso cpf ou cnpj inv·lido
var
  tam: Integer;
  res: String;
begin
     num := trim(num);
     tam := length(num);
     result := '';
     if tam=11 then
     begin
          res := testacpf(num);
          if res<>'' then
             result:='DÌgito CPF Inv·lido! (Correto='+res+')'
     end
     Else
     if tam=14 then
     begin
          res := testacgc(num);
          if res<>'' then
             result := 'DÌgito CNPJ Inv·lido! (Correto='+res+')'
     end
     Else
         Result := 'CPF ou CNPJ Inv·lido!';
end;

function Running32ON64: boolean;
{
Returns:
-True if run a 32 bit process under 64 bit OS
-False if run 32 bit process under 32 bit OS
-False if run 64 bit process under 64 bit OS
Minimum Requirments: Windows XP SP2
Uses: windows
}
type
    TIsWow64Process = function(Handle:THandle; var IsWow64 : boolean) : boolean; stdcall;
var
   hDLL : cardinal;
   IsWow64Process : TIsWow64Process;
begin
     result := false;
     hDLL := LoadLibrary('kernel32.dll');
     if (hDLL = 0) then
        Exit;
     try
        IsWow64Process := tIsWow64Process(GetProcAddress(hDLL, 'IsWow64Process'));
        if Assigned(IsWow64Process) then
           IsWow64Process(GetCurrentProcess, result);
     finally
         FreeLibrary(hDLL);
     end;
end;

Procedure AcceptNumberOnly( var keyd:char );
begin
     if (keyd<>#8) and (pos(keyd,'.1234567890')=0) then // #8->VK_BACK(Backspace)
      keyd:=#0;
end;

Function InsereBarraDiretorio(lPath:string):string;
begin
     if lPath[length(lPath)]='\' then
        Result:=lPath
     Else
         Result := lPath + '\';
end;

Function EmptyDate( dta : tDateTime): Boolean ;
begin
     result := floor (dta)=0;
     if not result then
        result := not isDate ( DateToStr( dta ) ) ;
end;

procedure DateDiff(Date1, Date2: TDateTime; var Days, Months, Years: Word);
{ Corrected by Anatoly A. Sanko (2:450/73) }
var
  DtSwap: TDateTime;
  Day1, Day2, Month1, Month2, Year1, Year2: Word;
begin
  if Date1 > Date2 then begin
    DtSwap := Date1;
    Date1 := Date2;
    Date2 := DtSwap;
  end;
  DecodeDate(Date1, Year1, Month1, Day1);
  DecodeDate(Date2, Year2, Month2, Day2);
  Years := Year2 - Year1;
  Months := 0;
  Days := 0;
  if Month2 < Month1 then begin
    Inc(Months, 12);
    Dec(Years);
  end;
  Inc(Months, Month2 - Month1);
  if Day2 < Day1 then begin
    Inc(Days, DaysInAMonth(Year1, Month1));
    if Months = 0 then begin
      Dec(Years);
      Months := 11;
    end
    else Dec(Months);
  end;
  Inc(Days, Day2 - Day1);
end;

Function GetIdadeCompleta( DtNasc : tDateTime ): String;
var d,m,y: word;
begin
     Result := '';
     DateDiff( DtNasc, date , d,m,y);
     if Y > 0 then
        Result := StrZero( y,2 )+' anos, ';
     if m > 0 then
        Result := Result + strzero(m,2)+' meses e ';
     Result := Result + strzero(d,2)+' dias.';
end;


function GetIdadeAnos(DtNasc: tDateTime): String;
var d,m,y: word;
begin
     DateDiff( DtNasc, date , d,m,y);
     Result := StrZero( y,2 );
end;

function strzero( nm:Variant;tam:integer ): string ;
var y,n: integer;
begin
     if VarType(nm)=varInteger then
        result := inttostr(nm)
     Else
        result := IntToStr(StrToIntDef(nm,0));
     y := length( result );
     if y < tam then
        for n := 1 to (tam-y) do
            result := '0'+result;
end;

Function IsDate(wData:String):Boolean;
Begin
     IsDate := HasTextaValidDate( wData );
end;

Function iif ( condic: boolean ; restrue, resfalse:variant ): variant;
begin
     if condic then
        iif := restrue
     else
        iif := resfalse;
end;

function NumeroAleatorio:LongWord;
begin
     Randomize;
     Result := Random(4294967295);
end;

function JanelaExiste(Classe, Janela: string): Boolean;
var
  aClasse, aJanela: array[0..79] of char;
begin
  if Classe = '' then
    aClasse[0] := #0
  else
    StrPCopy(aClasse, Classe);
  if Janela = '' then
    aJanela[0] := #0
  else
    StrPCopy(aJanela, Janela);
  Result := FindWindow(aClasse, aJAnela) <> 0;
end;

function DelphiAberto: Boolean;
begin
    // result := false;

     if assigned ( dbInicio ) then
        Result := dbInicio.IsDesenvolvimento
     else
        Result := JanelaExiste('TPropertyInspector', 'Object Inspector');
end;

Procedure LoadBitmapFromBlob(Bitmap: TBitmap; Blob: TBlobField);
var
  ms, ms2: TMemoryStream;
begin
  ms := TMemoryStream.Create;
  try
    Blob.SaveToStream(ms);
    ms.Position := 0;
    Bitmap.LoadFromStream(ms);
  finally
    ms.Free;
  end;
end;


procedure DeletarArquivos( pPasta, pScopo:string );
var i: integer;
    sr: TSearchRec;
    lPasta:String;
begin
     lPasta:=InsereBarraDiretorio(pPasta);
     I := FindFirst(lPasta+pScopo, faAnyFile, SR);
     while I = 0 do
     begin
          DeleteFile( pWideChar( lPasta + SR.Name ) );
          I := FindNext(SR);
     end;
end;


Procedure LoadBitmapFromFile(Bitmap: TBitmap );
var  OpenDialog: TOpenPictureDialog;
begin
     try
       OpenDialog:= TOpenPictureDialog.Create(NIL);
       OpenDialog.filter:='Bitmaps (*.bmp)|*.bmp';
       if OpenDialog.Execute then
          BitMap.LoadFromFile(OpenDialog.Filename);
     finally
       FreeAndNil(OPenDialog);
     end;
end;

Procedure SaveBitmapToFile(Image: tPicture );
var  OpenDialog: TSavePictureDialog;
begin
     try
       OpenDialog:= TSavePictureDialog.Create(NIL);
       OpenDialog.filter:='Bitmaps (*.bmp)|*.bmp';
       if OpenDialog.Execute then
          Image.SaveToFile(OpenDialog.Filename);
     finally
       FreeAndNil(OPenDialog);
     end;
end;

function ConcatSe(p1,p2:string):string; // concatena strings se ambas n„o forem vazias;
begin
     result :='';
     if (p1<>'') and (p2<>'') then
        result := ' '+p1+p2+' ';
end;

function GetTextBefore(pTexto,pBusca:string):string;
var p:integer;
begin
  p := pos(pBusca.toUpper,pTexto.toUpper);
  if p>0 then
     result:=Copy(pTexto,1,p-1)
  Else
     result:='';
end;

function GetTextAfter(pTexto,pBusca:string):string;
var p:integer;
begin
  p := pos(pBusca.toUpper,pTexto.toUpper);
  if p>0 then
     result:=Copy(pTexto,p+length(pBusca),length(pTexto))
  Else
     result:='';
end;

function qstr(pstr:string):string;
begin
     result := quotedstr(pstr);
end;

Function DateToSQL( dta: tDate ): string;
var y,m,d: word;
begin
     if dta<>0 then
     begin
          decodedate( dta, y,m,d);
          result := quotedstr( strzero(y,4)+'-'+strzero(m,2)+'-'+strzero(d,2) );
     end
     Else
     Result := ' null ';
end;

Function SetHoraInicio( dta: tDateTime ): tDateTime;
var y,m,d,h,mn,s: word;
begin
     decodedate( dta, y,m,d);
     h:=0;
     mn:=0;
     s:=0;
     result := encodedatetime(y,m,d,h,mn,s,s);
end;

Function SetHoraFinal( dta: tDateTime ): tDateTime;
var y,m,d,h,mn,s: word;
begin
     decodedate( dta, y,m,d);
     h:=23;
     mn:=59;
     s:=59;
     result := encodedatetime(y,m,d,h,mn,s,s);
end;


Function DateTimeToSQL( dta: tDateTime ): string;
var y,m,d: word;
begin
     decodedate( dta, y,m,d);
     result := quotedstr( strzero(y,4)+'-'+strzero(m,2)+'-'+strzero(d,2)+' '+TimeToStr(dta) );
end;

Function TimeToSQL( dta: tDateTime ): string;
begin
     result := quotedstr( TimeToStr(dta) );
end;


Procedure TestaPasta(aPath:string);
begin
     If not DirectoryExists(aPath) then
        if not ForceDirectories(aPath) then
           GeraException('N„o foi possÌvel criar a pasta '+aPath);
end;

procedure GeraException(msg: string);
begin
     if trim(msg)<>'' then // sÛ eleva exceÁ„o se existir uma msg de erro v·lida.
     begin
          try
             showmessage( msg );
             abort;
          except
                raise;
          end;
     end;
end;

function NomeOuCodigo(fCampoNome, fCampoCod, fData: string): string;
begin
     result := '';
     if trim(fData)<>'' then
     begin
          if (fData[1]='%') then
             Result := CampoSql( fCampoNome, fData )
          Else
          if StrToIntDef(fData,-1)<>-1 then
             Result := CampoSql( fCampoCod, fData )
          Else
             Result := CampoSql( fCampoNome, fData );
     end;
end;

Function IsNum(dado:string):boolean;
begin
  Result := (StrToIntDef(dado,-96745635)<>-96745635) ;
end;

function CampoSql (fField, fData: string): string;
var vChar: Char;
begin
     result := '';
     fData  := Trim(fData);
     if fData<>'' then
     begin
          vChar := fData[1];
          if (vChar = '=') or (vChar = '!') then
          begin
               fData[1]:=' ';
               fData:=Trim(fData);
               if vChar = '!' then
                  result := uppercase( fField ) + ' NOT LIKE ' + quotedstr( fData +'%' )
               Else
                  result := uppercase( fField ) + ' = ' + quotedstr( fData );
          end
          Else
             result := uppercase( fField ) + ' LIKE ' + quotedstr( fData +'%' );
     end;
end;

Function InsereAfter(pDado,pSeparador:string):string;
begin
     result := '';
     if trim(pdado)<>'' then
        result := pDado+pSeparador;
end;

Function InsereApos(pDado,pSeparador:string):string;
begin
     result := InsereAfter(pDado,pSeparador);
end;

Function CampoSqlOr(CamposPesquisar: array of string;DadoPesquisar:string):string;
var I:Integer;
begin
     result := '';
     if trim(DadoPesquisar)<>'' then
     begin
          for I:=Low(CamposPesquisar) to High(CamposPesquisar) do
          begin
            result := InsereAfter(result,' or ');
            result := result + '('+CamposPesquisar[I]+' LIKE '+qStr('%'+trim(DadoPesquisar)+'%')+')';
          end;
          result := '('+result+')';
     end;
end;

Function AlinGraphicText( pdado:string;
                          ptam:integer;
                          lAlign:string;
                          Canvas:tCanvas):string;
begin
  result := AlinGraphicTextB( pDado, pTam, lAlign, ' ', Canvas );
end;

Function AlinGraphicTextB( pdado:string;
                           ptam:integer;
                           lAlign,CharPreenchimento:string;
                           Canvas:tCanvas):string;
begin
  result := pDado;
 if Canvas.TextWidth(result)<pTam then
 begin
    if lAlign='D' then
    begin
         while Canvas.TextWidth(result)<pTam do
               result:=CharPreenchimento+result;
    end
    Else
    begin
       while Canvas.TextWidth(result)<pTam do
             result:=result+CharPreenchimento;
    end;
 End
 Else
 if Canvas.TextWidth(result)>pTam then
 begin
      while Canvas.TextWidth(result)>pTam do
            result:=Copy(result,1,length(result)-1);
 end;
end;

Procedure CopiarParaAreaTransferencia(pTexto:String);
begin
  Clipboard.AsText := pTexto;
end;

Procedure CopyToClipBoard(pTexto:String);
begin
     Clipboard.AsText := pTexto;
end;

Function FormataCgcCpf(pDado:string):string;
begin
     pDado:=extrairnumeros(pdado);
     if length(pdado)=11 then //cpf
        result := Transform( pDado , '999.999.999-99')
     else
     if length(pdado)=14 then //cgc
        result := Transform( pDado , '99.999.999/9999-99')
     else
        result := pDado;
end;

Function Len( pdado: string ):integer;
begin
     result:=Length(pDado)
end;

Function Transform( pDado,pMasc: string ): string;
// transform( str, '999.999.999-99' )
var dd: string;
    ldd,lmc,x,cntdd: integer;
begin
     dd :=trim( pDado ) ;
     ldd:=len(dd);
     cntdd:=1;
     lmc:=len(pMasc);
     result := '';
     for x := 1 to lmc do
     begin
          if pMasc[x]='9' then
          begin
               if cntdd<=ldd then
               begin
                 result:=result+dd[cntdd];
                 inc(cntdd)
               end
               Else
                   break;
          end
          Else
              result:=result+pMasc[x];
     end;
end;

Function ConfirmaSimNao(pTexto:string):boolean;
begin
     result := MessageDlg(pTexto,mtConfirmation,[mbYes,mbNo],0)=mrYes;
end;

function FieldByName(pDataSet:tObject;pFieldName:string):Variant;
begin
     if pDataSet.InheritsFrom(tField) then
        result := tField(pDataSet).DataSet.FieldByName(pFieldName).Value
     Else
     if pDataSet.InheritsFrom(tDataSet) then
        result := tDataSet(pDataSet).FieldByName(pFieldName).Value
     Else
     if pDataSet.InheritsFrom(tDataSource) then
        result := tDataSource(pDataSet).dataset.FieldByName(pFieldName).Value;

     if VarType(result)=varNull then
        result:='';
end;

function SqlGetNomeTabela(sql: string): string;
begin
     result := GetPalavraApos(sql,'from');
end;

function GetPalavraApos(txt, pll: string): string;
var
  txtb,pllb: string;
  p,t,tp: integer;
  rid: String;
  iniciou: Boolean;
begin
     pllb := Trim(uppercase(pll));
     txtb := Trim(UpperCase(txt));
     t := Length(txtb);
     tp := Length(pllb);
     p := pos(pllb,txtb)+tp;
     //showmessage( copy ( txtb , p , t ) );
     rid := '';
     iniciou := false;
     if p>0 then
     begin
          while p<=t do
          begin
               if (txtb[p] in ['A'..'Z']) or (txtb[p] in ['0'..'9']) or
                  (txtb[p] = '_') then
               begin
                    iniciou := true;
                    rid := rid + txtb[p];
               end
               Else
               if iniciou then
                  t := 0;
               inc(p);
          end;
     end;
     result := rid;
end;

function SqlGetCampoId(sql:string):string;
begin
     result := GetPalavraApos(sql,'where');
end;

Function PreencherString(pDado:String;pTam:Integer;pCaracter:String):string;
begin
     result := Trim(pDado);
     if Length(result)<pTam then
     begin
          while Length(result)<pTam do
                Result := Result + pCaracter;
     end
     Else
     if Length(result)>pTam then
        Result := Copy ( Result, 1 , pTam );
end;

function  AceitaSomenteNumero(Key: Char; EhDecimal: Boolean = False): Char;
begin
     if key='0' then
        result := Key
     Else if key='1' then
        result := Key
     Else if key='2' then
        result := Key
     Else if key='3' then
        result := Key
     Else if key='4' then
        result := Key
     Else if key='5' then
        result := Key
     Else if key='6' then
        result := Key
     Else if key='7' then
        result := Key
     Else if key='8' then
        result := Key
     Else if key='9' then
        result := Key
     Else if key=chr(8) then
        result := Key
     Else if (key='.') and EhDecimal then
        result := Key
     Else
        result := #0;
end;

function getDataArquivo(FileName: string): tDateTime;
var
	data_int : integer;
begin
	data_int:=FileAge(FileName);
	Result := FileDateToDateTime(data_int);
end;

Procedure AtualizaPasta(pOrigem,pDestino: string);
Var
   SearchFile: TSearchRec;
   FindResult: Integer;
   PastaOrigem, PastaDestino, ArqOrigem, ArqDestino: string;
   DtDestino, DtOrigem: tDateTime;
   flg: boolean;
begin
     PastaOrigem:=InsereBarraDiretorio(pOrigem);
     PastaDestino:=InsereBarraDiretorio(pDestino);
     if PastaOrigem<>PastaDestino then
     begin
         FindResult := FindFirst(PastaOrigem+'*.*', faArchive, SearchFile);
         try
            While FindResult = 0 do
            begin
                 ArqOrigem := PastaOrigem+SearchFile.Name;
                 ArqDestino := PastaDestino+SearchFile.Name;
                 flg:=True;
                 if FileExists(ArqDestino) then
                 begin
                      DtOrigem :=  fileDateToDateTime(SearchFile.time);  //SearchFile.TimeStamp; dx8
                      DtDestino := getDataArquivo( ArqDestino );
                      flg := DtOrigem > DtDestino;
                 end;
                 if Flg then
                    CopyFile(pChar(ArqOrigem),pChar(ArqDestino), True);
                 FindResult := FindNext(SearchFile);
            end;
         finally
               SysUtils.FindClose(SearchFile)
         end;
     end;
end;

Function InternetAtiva(ShowMessage:boolean): boolean;
var i:dword;
begin
    Result:= InternetGetConnectedState(@i,0) ; //unit WiniNet
    if not result then
       GeraException('Sem Conex„o com a Internet');
end;

function DesCriptografa(cifrado: string): string;
var
   Tamanho, n: integer;
   Retorno: String;
begin
     Tamanho := Length(cifrado);
     Retorno := '';
     for n := 1 to Tamanho do
     begin
          {decifrar subtraindo, no caso, 127 (ou o n˙mero
          usado para cifrar) ao valor ASCII de cada
          caracter da senha}
          Retorno := Retorno + Chr(Ord(cifrado[n]) - 131);
     end;
     DesCriptografa := Retorno;
end;

function Criptografa(senha: String): String;
var
   Tamanho, n: integer;
   Retorno: String;
begin
     Tamanho := Length(senha);
     Retorno := '';
     for n := 1 to Tamanho do
     begin
          {cifrar somando 127 (ou qualquer outro n˙mero)
          ao valor ASCII de cada caracter da senha}
          Retorno := Retorno + Chr(Ord(senha[n]) + 131);
     end;
     Criptografa := Retorno;
end;

function GetIp: String;
VAR   wsaData   :TWSAData;
begin
  //obtem o ip da maquina
  WSAStartup( 257, wsaData );
  GetIp := Trim(iNet_ntoa( PInAddr( GetHostByName( nil )^.h_addr_list^ )^ ));
end;

function GetBuildInfo:string;
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
     if verinfosize<>0 then
     begin
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
         result := IntToStr(V1)+'.'+IntToStr(V2)+'.'+IntToStr(V3)+'.'+IntToStr(V4);
     end
     else
         result := '';
     //result := VersaoExe;
end;


Function FloatToSQL( vlr:Extended ): string;
var a1: string ;
begin
     a1 := FloatToStr( vlr );
     if (a1 = 'NAN')  or  (a1 = 'INF') or (a1 = '-INF') then
        Raise eConvertError.Create('Uma express„o resultou um valor inv·lido: NaN ou Infinity ou NegInfinity');
        //showmessage('Uma express„o resultou um valor inv·lido: NaN ou Infinity ou NegInfinity');
     Result := StringReplace(a1,',','.',[rfReplaceAll]);
end;

Function FormataCEP( pCep: string ): string;
begin
     if Length( trim ( pCep ) ) = 8 then
        result := copy(pCEP,1,5)+'-'+copy(pCep,6,3)
     Else
        result := pCep; 
end;

function FormataFone(pFone:string):string;
begin
     Result := '('+copy(pFone,1,3)+')'+copy(pFone,4,4)+'-'+copy(pFone,8,4);
end;

procedure Le_Imagem_JPEG_toBMP(pCampo: TBlobField; pBMP: tBitMap);
var vBS:TStream;
    vMinhaImagem:TJPEGImage;
Begin
   pBMP.Assign(Nil);
   if not pCampo.IsNull then
   try
      vBS := pCampo.DataSet.CreateBlobStream(pCampo,bmRead);
      vMinhaImagem := TJPEGImage.Create;
      vMinhaImagem.LoadFromStream( vBS );
      pBMP.Assign(vMinhaImagem);
   Finally
          FreeAndNil(vBS);
          FreeAndNil(vMinhaImagem);
   end;
end;

{procedure Le_Imagem_JPEG(Campo: TBlobField; Foto: TImage);
var BS:TStream;
    MinhaImagem:TJPEGImage;
Begin
   Foto.Picture.Assign(Nil);
   Foto.Repaint;
   if Campo.AsString <> '' Then
      Begin

         BS := DataCadastros.CdsEmpresa.CreateBlobStream(Campo,bmRead);
         MinhaImagem := TJPEGImage.Create;
         MinhaImagem.LoadFromStream(BS);
         Foto.Picture.Assign(MinhaImagem);
         BS.Free;
         MinhaImagem.Free;
      End
   Else
      Foto.Picture.LoadFromFile('');

   application.processmessages;
end;}

procedure Le_Imagem_JPEG_toBMP(pCampo: TBlobField; pIMG: tImage);
var vBS:TStream;
    vMinhaImagem:TJPEGImage;
Begin
   pImg.Picture.Bitmap.Assign(Nil);
   if not pCampo.IsNull then
   try
      vBS := pCampo.DataSet.CreateBlobStream(pCampo,bmRead);
      vMinhaImagem := TJPEGImage.Create;
      vMinhaImagem.LoadFromStream( vBS );
      pImg.Picture.Bitmap.Assign(vMinhaImagem);
   Finally
          FreeAndNil(vBS);
          FreeAndNil(vMinhaImagem);
   end;
end;

procedure Le_Imagem_bmp(pFile: string; pIMG: tImage);
Begin
   pImg.Picture.Bitmap.Assign(Nil);
   pImg.Picture.LoadFromFile ( pFile );
end;

Procedure Save_Imagem_BMP_toJPEG( pLogo:tImage; pCampo:tBlobField );
var lStream: tStream;
    lJpeg:TJPEGImage;
Begin
     lJpeg := TJPEGImage.Create;
     try
        lJpeg.Assign(pLogo.Picture.Graphic);
        lStream := pCampo.DataSet.CreateBlobStream(pCampo,bmWrite);
        lJpeg.SaveToStream( lStream ) ;
     Finally
        lStream.Free;
        lJpeg.Free;
     end;

end;


procedure TrimAppMemorySize;
var MainHandle : THandle;
begin
    try
      MainHandle := OpenProcess(PROCESS_ALL_ACCESS, false, GetCurrentProcessID) ;
      SetProcessWorkingSetSize(MainHandle, $FFFFFFFF, $FFFFFFFF) ;
      CloseHandle(MainHandle) ;
    except
    end;
    Application.ProcessMessages;
end;


Function GetIndiceTabelaPecos ( pIndiceTabela:String ): Integer;
begin
     if pIndiceTabela = 'T1' then
        Result  := 0;
     if pIndiceTabela = 'T2' then
        Result  := 1;
     if pIndiceTabela = 'T3' then
        Result  := 2;
     if pIndiceTabela = 'T4' then
        Result  := 3;
     if pIndiceTabela = 'T5' then
        Result  := 4;
     if pIndiceTabela = 'T6' then
        Result  := 5;
end;

Function RemoveTraillingBlanks(pStr:string):string; // remove espaÁos repetidos e crlf
var x: integer;
begin
     result := '';
     for x := 1 to pStr.Length do
     begin
          if (pStr[x]=#13) or (pStr[x]=#10) then
             pStr[x]:=' ';
          if not ((pStr[x]=' ') and (pStr[x-1]=pStr[x])) then
             Result:=Result+pStr[x];
     end;
end;

Function Extenso(Valor:Double):string;
var ComoTexto: string;
    Parte: string;
//
  Function Ext3(Parte:string):string;
  var Base: string;
      digito: integer;
  begin
       Base:='';
       digito:=StrToInt(Parte[1]);
       if digito=0 then
          Base:=''
       else
          Base:=Centenas[digito];
       if (digito = 1) and (Parte > '100') then
          Base:='CENTO';
       Digito:=StrToInt(Parte[2]);
       if digito = 1 then
       begin
           Digito:=StrToInt(Parte[3]);
           if Base <> '' then
              Base:=Base + ' E ';
           Base:=Base + Dez[Digito];
       end
       else
       begin
           if (Base <> '') and (Digito > 0) then
              Base:=Base+' E ';
           if Digito > 1 then
              Base:=Base + Dezenas[digito];
           Digito:=StrToInt(Parte[3]);
           if Digito > 0 then
           begin
               if Base <> '' then
                  Base:=Base+' E ';
               Base:=Base+Unidades[Digito];
           end;
       end;
       Result:=Base;
  end;
//
begin
     Result:='';
     ComoTexto:=FloatToStrF(Abs(Valor),ffFixed,18,2);
     while length(ComoTexto) < 15 do
           Insert('0',ComoTexto,1);

     while length(ComoTexto) > 15 do
           delete(ComoTexto,1,1);

     // Calcula os bilhıes
     Parte:=Ext3(copy(ComoTexto,1,3));
     if StrToInt(copy(ComoTexto,1,3)) = 1 then
        Parte:=Parte + ' BILHAO'
     else
     if Parte <> '' then
        Parte:=Parte + ' BILHOES';
     Result:=Parte;

     // Calcula os nilhıes
     Parte:=Ext3(copy(ComoTexto,4,3));
     if Parte <> '' then
     begin
          if Result <> '' then
             Result:=Result+', ';
          if StrToInt(copy(ComoTexto,4,3)) = 1 then
             Parte:=Parte + ' MILHAO'
          else
              Parte:=Parte + ' MILHOES';
          Result:=Result + Parte;
     end;

     // Calcula os nilhares
     Parte:=Ext3(copy(ComoTexto,7,3));
     if Parte <> '' then
     begin
          if Result <> '' then
             Result:=Result + ', ';
          Parte:=Parte + ' MIL';
          Result:=Result + Parte;
     end;

     // Calcula as unidades
     Parte:=Ext3(copy(ComoTexto,10,3));
     if Parte <> '' then
     begin
          if Result <> '' then
             if Frac(Valor) = 0 then
                Result:=Result + ' E '
             else
                Result:=Result + ', ';
          Result:=Result + Parte;
     end;

     // Acrescenta o texto da moeda
     if Int(Valor) = 1 then
        Parte:=' ' + MoedaSingular
     else
        Parte:=' ' + MoedaPlural;
     if copy(ComoTexto,7,6) = '000000' then
        Parte:='DE ' + MoedaPlural;
     Result:=Result + Parte;

     // Se o valor for zero, limpa o resultado
     if int(Valor) = 0 then
        Result:='';

     //Calcula os centavos
     Parte:=Ext3('0'+copy(ComoTexto,14,2));
     if Parte <> '' then
     begin
          if Result <> '' then
             Result:=Result + ' E ';
          if Parte = Unidades[1] then
             Parte:=Parte + ' '+CentSingular
          else
             Parte:=Parte + ' '+CentPlural;
          Result:=Result + Parte;
     end;

     // Se o valor for zero, assume a constante ZERO
     if Valor = 0 then
        Result:=Zero;
end;

function PrimeiroDiadoMes(Data : TDateTime) : TDateTime;
begin
     PrimeiroDiadoMes := StartOfTheMonth( data );
end;

function MascaraCNPJ_CPF(wpCnpf_Cpf:string):string;
begin
     If LENGTH(TRIM(wpCnpf_cpf))< 14 then
        Result := copy(wpCnpf_Cpf,1,3)+'.'+ copy(wpCnpf_Cpf,4,3)+'.'+copy(wpCnpf_Cpf,7,3)+'-'+copy(wpCnpf_Cpf,10,2)
     else
        Result := copy(wpCnpf_Cpf,1,2)+'.'+ copy(wpCnpf_Cpf,3,3)+'.'+copy(wpCnpf_Cpf,6,3)+'/'+copy(wpCnpf_Cpf,9,4)+'-'+copy(wpCnpf_Cpf,13,2);
end;

function MascaraFone(wpFone:string):string;
begin
    Result := '('+copy(wpFone,1,3)+')'+copy(wpFone,4,4)+'-'+copy(wpFone,8,4);
end;


Function TiraAcento(Texto:String;Maiusculo:Boolean):String;
const ComAcento = '‚‰‡Â·„ÁÍÎËÈÔÓÌÏÒÙˆÛÚı˚˘˙¸ˇ˝ƒ≈¡¬¿√«… À»ÕŒœÃ—÷”‘“’‹⁄€Ÿ›ü';
      SemAcento = 'aaaaaaceeeeiiiinooooouuuuyyAAAAAACEEEEIIIINOOOOOUUUUYY';
var wI:Integer;
begin
     for wI := 1 to Length(Texto)do
     begin
          if Pos(Texto[wI],ComAcento)<>0 then
             Texto[wI] := SemAcento[Pos(Texto[wI],ComAcento)];
     end;
     if Maiusculo = true then
        Result := UpperCase(Texto)
     else
        Result := Texto;
end;


// recebe Curitiba/PR - devolve pCid='Curitiba', pUf='PR'
Function SepareCidadeUf( Const pCidadeUf: string; Var pCid, pUf: String ): Boolean;
begin
     pUf:='';
     pCid:='';
     if length( pCidadeUf ) = 2 then
        pUf := pCidadeUf
     else
     begin
          pUf := GetTextAfter( pCidadeUf, '/' );
          if pUf='' then
             pCid := pCidadeUf
          Else
             pCid := GetTextBefore( pCidadeUf, '/' );
     end;
     Result := ( ( pCid<>'' ) or (pUf<>'') );
end;


procedure GetListaStringssepVirgula( fListaCamposGrid:string; Out ListaOut:tStrings );
begin
     if fListaCamposGrid<>'' then
     begin
        if pos( ',' , fListaCamposGrid ) = 0 then
           ListaOut.Add( fListaCamposGrid )
        Else
        begin
             fListaCamposGrid:=fListaCamposGrid+',';
             while fListaCamposGrid<>'' do
             begin
                  ListaOut.Add( GetTextBefore( fListaCamposGrid, ','  ) );
                  fListaCamposGrid:= GetTextAfter( fListaCamposGrid, ','  );
             end;
        End;
     end;
end;

function replicate ( ch:string; cnt:integer): string;
var x:integer;
begin
     result := '';
     for x := 1 to cnt do
         result := result + ch;
end;

function Centraliza(wStr1: String; wTama: Integer): String;
var vTam:integer;
begin
     result := trim ( wStr1 ) ;
     vTam := Length( result );
     vTam := floor( ( wTama - vTam ) / 2 );
     result := result+Replicate ( ' ', vTam  );
     while length(result)<wTama do
           result := ' '+result;
end;


function AlinhaD(Texto : String; Tamanho : Integer) : String;
begin
     Texto := Trim(Texto);
     while length(Texto) < Tamanho do
           Texto := ' ' + Texto;
     Result := Texto;
end;

// corrigir erros erred roundto original delphi
Function RoundTo (const AValue: Double; const Digits: SmallInt = -2 ):Double;
var Pow, FracValue, PowValue : Extended;
    IntCalc, FracCalc, IntValue : Int64;
    Negativo: Boolean;
    dig: smallint;

begin

     if Digits<0 then
        Dig := Digits*(-1)
     Else
        Dig := Dig ;
     Negativo  := (AValue < 0);

     Pow       := intpower(10, abs(Dig) );
     PowValue  := abs(AValue) / 10 ;
     IntValue  := trunc(PowValue);
     FracValue := frac(PowValue);

     PowValue := SimpleRoundTo( FracValue * 10 * Pow, -9) ; // SimpleRoundTo elimina dizimas ;
     IntCalc  := trunc( PowValue );
     FracCalc := trunc( frac( PowValue ) * 100 );

     if (FracCalc >= 50) then
        Inc( IntCalc );

     Result := ((IntValue*10) + (IntCalc / Pow));
     if Negativo then
        Result := -Result;

end;

function CopyLeft(InValue: String; Len: Integer): String;
begin
     Result := Copy(InValue, 1, Len);
end;

function CopyRight(InValue: String; Len: Integer): String;
begin
     Result := Copy(InValue, Length(InValue)-(Len - 1), Len);
end;

procedure limpaBufferTeclado;
var msg: Tmsg;
begin
     while PeekMessage(Msg, 0, WM_KEYFIRST, WM_KEYLAST, PM_REMOVE or PM_NOYIELD) do; //limpabufferteclado
end;

Function RetornaNull(wTEXTO:String):String;
begin
     if Trim(wTEXTO) = '' then
        result := 'null'
   else
      result := qStr( wTEXTO );
end;

function IsCharEspec( Str: String):Boolean;
Var aChar:PChar;
Const CharEspc: set of Char = [#0..#255] - ['a'..'z','A'..'Z','1'..'9','0'];
begin
     aChar := pChar( Str );
     Result := False;
     if ((aChar^ in CharEspc)) then
        Result := True;
end;

Function DiaInicioBimestre( Date: tDateTime ): tDateTime ;
var ano: string ;
begin
     ano := YearOf( Date ).ToString;
     if (Date>=StrToDate('01/01/'+ano)) and (Date<StrToDate('01/03/'+ano)) then
        Result := StrToDate('01/01/'+ano)
     Else
     if (Date>=StrToDate('01/03/'+ano)) and (Date<StrToDate('01/05/'+ano)) then
        Result := StrToDate('01/03/'+ano)
     Else
     if (Date>=StrToDate('01/05/'+ano)) and (Date<StrToDate('01/07/'+ano)) then
        Result := StrToDate('01/05/'+ano)
     Else
     if (Date>=StrToDate('01/07/'+ano)) and (Date<StrToDate('01/09/'+ano)) then
        Result := StrToDate('01/07/'+ano)
     Else
     if (Date>=StrToDate('01/09/'+ano)) and (Date<StrToDate('01/11/'+ano)) then
        Result := StrToDate('01/09/'+ano)
     Else
     if (Date>=StrToDate('01/11/'+ano)) and (Date<=StrToDate('31/12/'+ano)) then
        Result := StrToDate('01/11/'+ano)
end;

Function DiaFinalBimestre( Date: tDateTime ): tDateTime ;
var ano: string ;
begin
     ano := YearOf( Date ).ToString;
     if (Date>=StrToDate('01/01/'+ano)) and (Date<StrToDate('01/03/'+ano)) then
        Result := LastDay ( StrToDate('01/02/'+ano) )
     Else
     if (Date>=StrToDate('01/03/'+ano)) and (Date<StrToDate('01/05/'+ano)) then
        Result := LastDay ( StrToDate('01/04/'+ano) )
     Else
     if (Date>=StrToDate('01/05/'+ano)) and (Date<StrToDate('01/07/'+ano)) then
        Result := LastDay ( StrToDate('01/06/'+ano) )
     Else
     if (Date>=StrToDate('01/07/'+ano)) and (Date<StrToDate('01/09/'+ano)) then
        Result := LastDay ( StrToDate('01/08/'+ano) )
     Else
     if (Date>=StrToDate('01/09/'+ano)) and (Date<StrToDate('01/11/'+ano)) then
        Result := LastDay ( StrToDate('01/10/'+ano) )
     Else
     if (Date>=StrToDate('01/11/'+ano)) and (Date<=StrToDate('31/12/'+ano)) then
        Result := LastDay ( StrToDate('01/12/'+ano) )
end;

Function DiaInicioTrimestre( Date: tDateTime ): tDateTime ;
var ano: string ;
begin
     ano := YearOf( Date ).ToString;
     if (Date>=StrToDate('01/01/'+ano)) and (Date<StrToDate('01/04/'+ano)) then
        Result := StrToDate('01/01/'+ano)
     Else
     if (Date>=StrToDate('01/04/'+ano)) and (Date<StrToDate('01/07/'+ano)) then
        Result := StrToDate('01/04/'+ano)
     Else
     if (Date>=StrToDate('01/07/'+ano)) and (Date<StrToDate('01/10/'+ano)) then
        Result := StrToDate('01/07/'+ano)
     Else
     if (Date>=StrToDate('01/10/'+ano)) and (Date<=StrToDate('31/12/'+ano)) then
        Result := StrToDate('01/10/'+ano)
end;

Function DiaFinalTrimestre( Date: tDateTime ): tDateTime ;
var ano: string ;
begin
     ano := YearOf( Date ).ToString;
     if (Date>=StrToDate('01/01/'+ano)) and (Date<StrToDate('01/04/'+ano)) then
        Result := lastDay ( StrToDate('01/03/'+ano) )
     Else
     if (Date>=StrToDate('01/04/'+ano)) and (Date<StrToDate('01/07/'+ano)) then
        Result := lastDay ( StrToDate('01/06/'+ano) )
     Else
     if (Date>=StrToDate('01/07/'+ano)) and (Date<StrToDate('01/10/'+ano)) then
        Result := lastDay ( StrToDate('01/09/'+ano) )
     Else
     if (Date>=StrToDate('01/10/'+ano)) and (Date<=StrToDate('31/12/'+ano)) then
        Result := lastDay ( StrToDate('01/12/'+ano) );
end;

Function DiaInicioSemestre( Date: tDateTime ): tDateTime ;
var ano: string ;
begin
     ano := YearOf( Date ).ToString;
     if (Date>=StrToDate('01/01/'+ano)) and (Date<StrToDate('01/07/'+ano)) then
        Result := StrToDate('01/01/'+ano)
     Else
     if (Date>=StrToDate('01/06/'+ano)) and (Date<=StrToDate('31/12/'+ano)) then
        Result := StrToDate('01/06/'+ano)
end;

Function DiaFinalSemestre( Date: tDateTime ): tDateTime ;
var ano: string ;
begin
     ano := YearOf( Date ).ToString;
     if (Date>=StrToDate('01/01/'+ano)) and (Date<StrToDate('01/07/'+ano)) then
        Result := LastDay ( StrToDate('01/06/'+ano) )
     Else
     if (Date>=StrToDate('01/06/'+ano)) and (Date<=StrToDate('31/12/'+ano)) then
        Result := StrToDate('31/12/'+ano)
end;

Function DiaInicioAno( Date: tDateTime ): tDateTime ;
var ano: string ;
begin
     ano := YearOf( Date ).ToString;
     Result := StrToDate('01/01/'+ano) ;
end;

Function DiaFinalAno( Date: tDateTime ): tDateTime ;
var ano: string ;
begin
     ano := YearOf( Date ).ToString;
     Result := StrToDate('31/12/'+ano) ;
end;

function MesesEntreDatas(dDataInicial, dDataFinal: TDate): integer;
var
    Anosi, Mesesi, Diasi: integer;
    Anosf, Mesesf, Diasf: integer;
    Anos, Meses, Dias: Word;
begin
DecodeDate(dDataInicial,Anos,Meses,Dias);
anosi:=Anos;
Mesesi:=Meses;
DiasI:=Dias;
Decodedate(dDataFinal,Anos,Meses,Dias);
anosF:=Anos;
MesesF:=Meses;
DiasF:=Dias;
AnosF:=Abs(AnosF-AnosI);
MesesF:=(MesesF-Mesesi);
DiasF:=(DiasF-Diasi);
if MesesF < 0 Then
  begin
    Dec(AnosF);
    Inc(MesesF,12);
  end;
if DiasF < 0 then
   Dec(MesesF);
Result :=abs(MesesF + (AnosF * 12));
end;


end.



