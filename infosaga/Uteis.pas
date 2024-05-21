unit Uteis;

//{$D-}

interface

uses
  uPlanoContasCentroCustoManual, Vcl.DBGrids, firedac.comp.client, Vcl.ComCtrls,
  IdSMTP, IdSSLOpenSSL, IdExplicitTLSClientServerBase, idMessage, IdIntercept, IdGlobal, IdAttachmentFile,
  ACBrMail,
  Forms, Classes, SysUtils, windows, math, Dialogs, DateUtils, Graphics, jpeg, winapi.messages,System.StrUtils,
  DB, Clipbrd, MaskUtils, Variants, Controls, ExtDlgs, WiniNet, WinSock, ExtCtrls, inicioDB, ComObj,
  Vcl.StdCtrls, cxDBLookupComboBox, Vcl.Buttons, Vcl.DBCtrls, ComboBoxRW, SgDbSeachComboUnit,  Vcl.Mask,
  JvEdit, JvValidateEdit,JvToolEdit, jvdbcontrols;

type
    tProcedureDetalheAfterPrint = procedure( Sender: TForm ) of object;
type
TBotoes = record
Incluir,
Relatorio,
Alterar,
Exluir:boolean;
end;

function  RetornaNullString(const sString:String):String;
function  RetornaEnderecoSemNumero(const sEndereco:String):String;
function  RetornaNumeroEndereco(const sEndereco:String):String;
Function DiaInicioBimestre(const Date: tDateTime ): tDateTime ;
Function DiaFinalBimestre( Date: tDateTime ): tDateTime ;
Function DiaInicioTrimestre( Date: tDateTime ): tDateTime ;
Function DiaFinalTrimestre( Date: tDateTime ): tDateTime ;
Function DiaInicioSemestre( Date: tDateTime ): tDateTime ;
Function DiaFinalSemestre( Date: tDateTime ): tDateTime ;
Function DiaInicioAno( Date: tDateTime ): tDateTime ;
Function DiaFinalAno( Date: tDateTime ): tDateTime ;
function UltimoDiaDoMes(mes, ano: integer): integer;

function MessageDlg(const Msg: string; DlgType: TMsgDlgType;  Buttons: TMsgDlgButtons; HelpCtx: Longint): Integer;

function IsCharEspec(const Str: String):Boolean;
function MsgDlgPersonalizado (const Msg: string; DlgType: TMsgDlgType; Buttons: TMsgDlgButtons; Captions: array of string): Integer;
procedure limpaBufferTeclado;
procedure DeletarArquivos( pPasta, pScopo:string );
procedure TrimAppMemorySize; // mega super hiper limpador de memória da aplicação
procedure Le_Imagem_bmp(pFile: string; pIMG: tImage);
Procedure Save_Imagem_BMP_toJPEG( pLogo:tImage; pCampo:tBlobField );

Function RoundTo (const AValue: Double; const Digits: SmallInt = -2 ):Double;

function CopyLeft(InValue: String; Len: Integer): String;
function CopyRight(InValue: String; Len: Integer): String;

procedure GetListaStringssepVirgula( fListaCamposGrid:string; Out ListaOut:tStrings );
Function Extenso(Valor:Double):string;
Function SepareCidadeUf( Const pCidadeUf: string; Var pCid, pUf: String ): Boolean;
Function InternetAtiva(ShowMessage:boolean): boolean;
Function ExtrairNumeros(msg:string):string; // Extrai digitos numéricos de uma string
Function ExtrairLetras(msg:string):string; // Extrai digitos não numéricos de uma string
function testacpf(num: string): String; // testa cpf
function testacgc(CNPJ: string): String; // testa cnpj
Function testaCgcCpf(num:string):string; // testa cpf ou cnpj
function Running32ON64: boolean; // true se for processo 32bits rodando sob so 64bits
Function InsereBarraDiretorio(lPath:string):string; // Testa e insere "/" ao final do path informado
Function EmptyDate( dta : tDateTime): Boolean ; // Testa se data é vazia
Function GetIdadeAnos( DtNasc : tDateTime ): String; // retorna a qtd de anos entre a data informada e a atual
Function GetIdadeCompleta( DtNasc : tDateTime ): String; // retorna a descrição em anos, meses e dias entre a data informada e a dt atual
function strzero( nm:Variant;tam:integer ): string ;// retorna string com decimal preenchido com zeros a esquerda
Function iif ( condic: boolean ; restrue, resfalse:variant ): variant; // retorna restrue ou resfalse de acordo com a condição informada
Function IsDate(wData:String):Boolean; // testa se dado contido em string é uma data
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
function sqstr(pstr:string):string;

Function DateToSQL( const dta: tDate ): string;

Function DateTimeToSQL(const dta: tDateTime ): string;
Function TimeToSQL( dta: tDateTime ): string;
Function SetHoraInicio( const dta: tDateTime ): tDateTime;
Function SetHoraFinal( const dta: tDateTime ): tDateTime;

Function FloatToSQL( vlr:Extended ): string;
Procedure TestaPasta(aPath:string);
procedure GeraException(msg: string);
function NomeOuCodigo(fCampoNome, fCampoCod, fData: string): string;
Function IsNum(dado:string):boolean;
Function IsNumeric(s: string): boolean;
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
Function DesCriptografa(const cifrado: String): String;
Function Criptografa(senha: String): String;
function GetIp: String;
function GetBuildInfo:string;

Procedure Aviso( msg:string );
Procedure Informacao( msg:string );
function confirmacao ( msg : string ) : word;
Procedure Erro( msg:string );

Function GetIndiceTabelaPecos (const pIndiceTabela:String ): Integer;
Function RemoveTraillingBlanks(pStr:string):string;
function RemoveCaracteresInvalidos (const pstr: string ):string;
function RetirarMascaraCNPJ_INSC (const pStr: string): string;
function TrocaCaracterEspecial(aTexto : string; aLimExt : boolean) : string;
function RetiraTodaMascara(const pStr: string): string;
function ConcatSe(p1,p2:string):string; // concatena strings se ambas não forem vazias;

function PrimeiroDiadoMes(Data : TDateTime) : TDateTime;
function PrimeiroDiadoMesSubsequente(Data : TDateTime) : TDateTime;
function MascaraCNPJ_CPF(wpCnpf_Cpf:string):string;
function MascaraFone(const wpFone:string):string;   // ANTIGO

Function TiraAcento(Texto:String;Maiusculo:Boolean):String;
Function TiraCaracteresEspeciais(Texto:String; VF: Boolean = True):String;

function Centraliza(wStr1: String; wTama: Integer): String;
function AlinhaD(Texto : String; Tamanho : Integer) : String;
function replicate ( ch:string; cnt:integer): string;
Function RetornaNull(const wTEXTO:String):String;
function MesesEntreDatas(dDataInicial, dDataFinal: TDate): integer;
function DownloadArquivo(const Origem, Destino: String): Boolean;
function AcessoUsuario(UsaMenu, CodUsuario: string; Form: TForm):TBotoes;
procedure HabilitaIncluir(UsaMenu, CodUsuario: string; Form: TForm);
function RetiraAcentos(str: String): String;
function Capitalize(Texto:String): String;
function ListaEmpresasPermitidas (const tipoMultiempresa: string)  : TStringList;
procedure GravaIni(arquivo, secao, nome, aTexto: string);
function LeIni(arquivo, secao, nome: string; var aTexto: string): string;
function CarregaLoteAutomatico(controle, envase: Boolean; lote: string): string;
function minutosParaHms(d: integer): string;
procedure CriaCSV(ds: TDataSource; lista: TStringList; Form: TForm; empCodigo: boolean = True; titulo: string = '');
function LastPos(const pesq: string; const S: string): integer;
function retiraPontoEVirgula(str: string): string;
function retiraCRLF(str: string): string;


procedure PreparaACBR(usuario: string);


procedure PreparaSMTP(usuario: string; var smtp: TIdSMTP; var SSLSocket: TIdSSLIOHandlerSocketOpenSSL);
function EnviaMail(usuario, de, para, assunto, responder: string; mensagem, anexos: TStringList; comCopia: string = '') : Boolean;
procedure AjustaNivelSuperior;
function AlmoxarifadoUsuario(AmxCodigo: string): Boolean;
procedure EsvaziaBuffer;
procedure MovimentaLote(prfRegistro, prdlRegistro: integer; Form, tipoES: string; quantidade, PRDLSaldo: double);
function GetColumn(aGrid : TDBGrid; aFieldName : string) : TColumn;
function ExtraiNumeroDoEndereco(endereco: string): string;
function Estados(sigla: string): string;
procedure GravaHistoricoEmail(modulo: string; destinatário: string; titulo: string; CliFor: string; CliForCodigo: string; DataEnvio: TDateTime; Usuario: string; Anexo: string);
procedure ExecSql2(const pSql: string);
function RealMod (x: double; MaxInteger: Integer) : double;
function BloqueiaPedidoVendaFaturaAtraso(cliCodigo, prazoCodigo: string) : Boolean;


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
     CC_ACENTUADO_MINUSC='áéíóúàèìòùâêîôûãõñçäëïöü';
     CC_ACENTUADO_MAIUSC='ÁÉíóúÀÈÌÒÙÂÊÎÔÛÃÕÑÇÄËÏÖÜ';

    Centenas: array[1..9] of string[12]=('CEM','DUZENTOS','TREZENTOS','QUATROCENTOS','QUINHENTOS','SEISCENTOS','SETECENTOS','OITOCENTOS','NOVECENTOS');
    Dezenas : array[2..9] of string[10]=('VINTE','TRINTA','QUARENTA','CINQUENTA','SESSENTA','SETENTA','OITENTA','NOVENTA');
    Dez     : array[0..9] of string[10]=('DEZ','ONZE','DOZE','TREZE','QUATORZE','QUINZE','DEZESSEIS','DEZESSETE','DEZOITO','DEZENOVE');
    Unidades: array[1..9] of string[10]=('UM','DOIS','TRES','QUATRO','CINCO','SEIS','SETE','OITO','NOVE');

    MoedaSingular = 'REAL';
    MoedaPlural   = 'REAIS';
    CentSingular  = 'CENTAVO';
    CentPlural    = 'CENTAVOS';
    Zero          = 'ZERO';

var
    ConnectionStatus: TStringList;
    posicaoUltimoPonto, RegistroCorrente:Integer;

implementation

uses DataCad, DataCad1, IniFiles, SqlExpr, uConclusaoOP, uEnvaseProdutos, uEmpresaExportacao, AutorizaForm, uPedido;


procedure GravaIni(arquivo, secao, nome, aTexto: string);
var
  ArqIni: TIniFile;
begin
  arquivo := dbInicio.SistemaLocal+'settings\' + arquivo + '.ini';
  ArqIni := TIniFile.Create(arquivo);
  try
    ArqIni.WriteString(secao, nome, aTexto);
  finally
    ArqIni.Free;
  end;

end;

function LeIni(arquivo, secao, nome: string; var aTexto: string): string;
var
  ArqIni: TIniFile;
begin
  arquivo := dbInicio.SistemaLocal+'settings\' + arquivo + '.ini';
  ArqIni := TIniFile.Create(arquivo);
  try
    aTexto := ArqIni.ReadString(secao, nome, aTexto);
  finally
    ArqIni.Free;
  end;
  Result := aTexto;
end;

Procedure Informacao( msg:string );
begin
     MessageDlg( msg, mtInformation, [mbOk], 0);
end;

Procedure Aviso( msg:string );
begin
     MessageDlg( msg, mtWarning, [mbOk], 0);
end;

function Confirmacao ( msg : string ) : word;
begin
     //result := MessageDlg( msg , mtConfirmation, [ mbYes, mbNo ], 0 ); <==== esta bugado no xe8
     RESULT := application.messagebox ( pWideChar(msg), 'Confirmação', mb_yesno + mb_iconquestion );
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
               if (mm<13) then // mes válido
               begin
                    ultdia := DayOf( LastDay ( encodedate ( yy,mm,1 ) ) );
                    if dd <= ultdia then
                       result := true;
               end;
          end;
     end;
end;

Function ExtrairLetras(msg:string):string; // Extrai digitos não numéricos de uma string
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
        testacpf:='Digito CPF inválido! (Correto='+calculado+')';
end;

function testacgc(CNPJ: string): String; // responde com digito veficador correto caso o informado esteja errado
{ Prof. Omero Francisco Bertol (http://www.pb.utfpr.edu.br/omero/) }
var DInfo, fCnpj: string;
    sm, i, r, peso: integer;
begin
     fCnpj:=trim(cnpj);
     if (length(fCNPJ) <> 14) then
     begin
          result := 'CNPJ inválido!';
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
            result := 'Digito CNPJ Inválido (Correto='+fcnpj[13]+fcnpj[14]+')';
     except
       result := 'CNPJ inválido!'
     end;
end;

Function TestaCgcCpf(num:string):string; // Responde com msg erro caso cpf ou cnpj inválido
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
             result:='Dígito CPF Inválido! (Correto='+res+')'
     end
     Else
     if tam=14 then
     begin
          res := testacgc(num);
          if res<>'' then
             result := 'Dígito CNPJ Inválido! (Correto='+res+')'
     end
     Else
         Result := 'CPF ou CNPJ Inválido!';
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
     Result := Random(429496729);
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
     OpenDialog:= TOpenPictureDialog.Create(NIL);
     try
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
  OpenDialog:= TSavePictureDialog.Create(NIL);
  try

   OpenDialog.filter:='Bitmaps (*.bmp)|*.bmp';
   if OpenDialog.Execute then
      Image.SaveToFile(OpenDialog.Filename);
  finally
   FreeAndNil(OPenDialog);
  end;
end;

function ConcatSe(p1,p2:string):string; // concatena strings se ambas não forem vazias;
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

function sqstr(pstr:string):string;
begin
     result := chr(39) + pstr + chr(39);
end;


Function DateToSQL( const dta: tDate ): string;
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

Function SetHoraInicio( const dta: tDateTime ): tDateTime;
var y,m,d,h,mn,s: word;
begin
     decodedate( dta, y,m,d);
     h:=0;
     mn:=0;
     s:=0;
     result := encodedatetime(y,m,d,h,mn,s,s);
end;

Function SetHoraFinal( const dta: tDateTime ): tDateTime;
var y,m,d,h,mn,s: word;
begin
     decodedate( dta, y,m,d);
     h:=23;
     mn:=59;
     s:=59;
     result := encodedatetime(y,m,d,h,mn,s,s);
end;


Function DateTimeToSQL( const dta: tDateTime ): string;
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
           GeraException('Não foi possível criar a pasta '+aPath);
end;

procedure GeraException(msg: string);
begin
     if trim(msg)<>'' then // só eleva exceção se existir uma msg de erro válida.
     begin
          try
             // showmessage( msg );
             MessageDlg( msg, mtWarning, [mbOK], 0 );
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
function IsNumeric(S : String) : Boolean;
var
  i: double;
begin
 Result := TryStrToFloat(s, i);
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
    begin
      StringReplace(fData,'%','',[rfReplaceAll]);
//          Else
//             result := uppercase( fField ) + ' LIKE ' + quotedstr( fData +'%' );
       result := uppercase( fField ) + ' CONTAINING  ' + quotedstr( fData  );
    end;
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
  try
    Clipboard.AsText := pTexto;
  except
    pTexto := '';
    // faz nada
  end;
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
       GeraException('Sem Conexão com a Internet');
end;

function DesCriptografa(const cifrado: string): string;
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

function Criptografa(senha: String): String;
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
   Prog,
   SpecialBuildStr,
   PrivateBuildStr,
   FileFunction: string;


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
         result := IntToStr(V1)+'.'+IntToStr(V2)+'.'+IntToStr(V3)+'.'+IntToStr(V4)+ SpecialBuildStr;
     end
     else
         result := '';
     //result := VersaoExe;
end;


Function FloatToSQL( vlr:Extended ): string;
var a1, a2, a3: string ;
begin
  a1 := FloatToStr( vlr );
  if (a1 = 'NAN')  or  (a1 = 'INF') or (a1 = '-INF') then
    Raise eConvertError.Create('Uma expressão resultou um valor inválido: NaN ou Infinity ou NegInfinity');
    //showmessage('Uma expressão resultou um valor inválido: NaN ou Infinity ou NegInfinity');
  a1 := StringReplace(a1,',','.',[rfReplaceAll]);
  if pos('.', a1) = 0   then
    a3 := a1 + '.00'
  else
  begin
    a2 := a1.Substring(pos('.', a1));
    if Length(a2) = 1 then a3 := a1 + '0'
    else a3 := a1;
  end;
  Result := a3;
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
   begin
     vMinhaImagem := TJPEGImage.Create;
     try
        vBS := pCampo.DataSet.CreateBlobStream(pCampo,bmRead);
        vMinhaImagem.LoadFromStream( vBS );
        pBMP.Assign(vMinhaImagem);
     Finally
            FreeAndNil(vBS);
            FreeAndNil(vMinhaImagem);
     end;
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
   begin
     vMinhaImagem := TJPEGImage.Create;
     try
        vBS := pCampo.DataSet.CreateBlobStream(pCampo,bmRead);
        vMinhaImagem.LoadFromStream( vBS );
        pImg.Picture.Bitmap.Assign(vMinhaImagem);
     Finally
        FreeAndNil(vBS);
        FreeAndNil(vMinhaImagem);
     end;
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

//https://www.projetoacbr.com.br/forum/topic/24324-comando-milagroso-para-redu%C3%A7%C3%A3o-de-mem%C3%B3ria-delphi-funciona-mesmo/
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


Function GetIndiceTabelaPecos ( const pIndiceTabela:String ): Integer;
begin
  Result  := 0;
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
function RetiraTodaMascara(const pStr: string): string;
var
  valornovo:String;
begin

  valornovo := AnsiReplaceStr(pStr,'.','');
  valornovo := AnsiReplaceStr(valornovo,'/','');
  valornovo := AnsiReplaceStr(valornovo,'-','');
  result := AnsiReplaceStr(valornovo,'\','');

end;
function RemoveCaracteresInvalidos (const pstr: String ):string;
begin
  result := AnsiReplaceStr(pstr,'|','');

end;
//Função para substituir caracteres especiais.

function TrocaCaracterEspecial(aTexto : string; aLimExt : boolean) : string;
const
  //Lista de caracteres especiais
  xCarEsp: array[1..38] of String = ('á', 'à', 'ã', 'â', 'ä','Á', 'À', 'Ã', 'Â', 'Ä',
                                     'é', 'è','É', 'È','í', 'ì','Í', 'Ì',
                                     'ó', 'ò', 'ö','õ', 'ô','Ó', 'Ò', 'Ö', 'Õ', 'Ô',
                                     'ú', 'ù', 'ü','Ú','Ù', 'Ü','ç','Ç','ñ','Ñ');
  //Lista de caracteres para troca
  xCarTro: array[1..38] of String = ('a', 'a', 'a', 'a', 'a','A', 'A', 'A', 'A', 'A',
                                     'e', 'e','E', 'E','i', 'i','I', 'I',
                                     'o', 'o', 'o','o', 'o','O', 'O', 'O', 'O', 'O',
                                     'u', 'u', 'u','u','u', 'u','c','C','n', 'N');
  //Lista de Caracteres Extras
  xCarExt: array[1..49] of string = ('<','>','!','@','#','$','%','¨','&','*',
                                     '(',')','_','+','=','{','}','[',']','?',
                                     ';',':',',','|','*','"','~','^','´','`',
                                     '¨','æ','Æ','ø','£','Ø','ƒ','ª','º','¿',
                                     '®','½','¼','ß','µ','þ','ý','Ý','/');
var
  xTexto : string;
  i : Integer;
begin
   xTexto := aTexto;
   for i:=1 to 38 do
     xTexto := StringReplace(xTexto, xCarEsp[i], xCarTro[i], [rfreplaceall]);
   //De acordo com o parâmetro aLimExt, elimina caracteres extras.
   if (aLimExt) then
     for i:=1 to 49 do
       xTexto := StringReplace(xTexto, xCarExt[i], '', [rfreplaceall]);
   Result := xTexto;
end;
function RetirarMascaraCNPJ_INSC (const pStr: string): string;
var
  valornovo:String;
begin

  valornovo := AnsiReplaceStr(pStr,'.','');
  valornovo := AnsiReplaceStr(valornovo,'/','');
  valornovo := AnsiReplaceStr(valornovo,'-','');
  result := AnsiReplaceStr(valornovo,'\','');

end;
Function RemoveTraillingBlanks(pStr:string):string; // remove espaços repetidos e crlf
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

     // Calcula os bilhões
     Parte:=Ext3(copy(ComoTexto,1,3));
     if StrToInt(copy(ComoTexto,1,3)) = 1 then
        Parte:=Parte + ' BILHAO'
     else
     if Parte <> '' then
        Parte:=Parte + ' BILHOES';
     Result:=Parte;

     // Calcula os nilhões
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

function PrimeiroDiadoMesSubsequente(Data : TDateTime) : TDateTime;
var
  dia, mes, ano: word;
begin
  DecodeDate(Data, ano, mes, dia);
  dia := 1;
  if mes < 12 then
    mes := mes + 1
  else
  begin
    mes := 1;
    ano := ano + 1
  end;

  Result := EncodeDate(ano, mes, dia)
end;

function MascaraCNPJ_CPF(wpCnpf_Cpf:string):string;
begin
     If LENGTH(TRIM(wpCnpf_cpf))< 14 then
        Result := copy(wpCnpf_Cpf,1,3)+'.'+ copy(wpCnpf_Cpf,4,3)+'.'+copy(wpCnpf_Cpf,7,3)+'-'+copy(wpCnpf_Cpf,10,2)
     else
        Result := copy(wpCnpf_Cpf,1,2)+'.'+ copy(wpCnpf_Cpf,3,3)+'.'+copy(wpCnpf_Cpf,6,3)+'/'+copy(wpCnpf_Cpf,9,4)+'-'+copy(wpCnpf_Cpf,13,2);
end;

function MascaraFone(const wpFone:string):string;
begin
  if Length(trim(wpFone))=12  then
  begin
    if wpFone[1] = '0' then
      Result := '('+copy(wpFone,2,2)+')'+copy(wpFone,4,5)+'-'+copy(wpFone,9,4)
  end
  else if Length(trim(wpFone))=11 then
  begin
       if wpFone[1] = '0' then
      Result := '('+copy(wpFone,2,2)+')'+copy(wpFone,4,4)+'-'+copy(wpFone,8,4)
    else
      Result := '('+copy(wpFone,1,2)+')'+copy(wpFone,3,5)+'-'+copy(wpFone,8,4)
  end
  else if Length(trim(wpFone))=10   then
  begin
    if wpFone[1] = '0' then
     Result := '('+copy(wpFone,2,2) +')'+copy(wpFone,4,3)+'-'+copy(wpFone,7,4)
    else
      Result := '('+copy(wpFone,1,2)+')'+copy(wpFone,3,4)+'-'+copy(wpFone,7,4)

  end
  else if wpFone = '' then
  Result := '';
end;


Function TiraAcento(Texto:String;Maiusculo:Boolean):String;
//const ComAcento = 'âäàåáãçêëèéïîíìñôöóòõûùúüÿýÄÅÁÂÀÃÇÉÊËÈÍÎÏÌÑÖÓÔÒÕÜÚÛÙÝŸªº°|';
//      SemAcento = 'aaaaaaceeeeiiiinooooouuuuyyAAAAAACEEEEIIIINOOOOOUUUUYYaoo-';
const ComAcento = 'âäàåáãçêëèéïîíìñôöóòõûùúüÿýÄÅÁÂÀÃÇÉÊËÈÍÎÏÌÑÖÓÔÒÕÜÚÛÙÝŸªº°''' + #13 + #10 + #13#10;
      SemAcento = 'aaaaaaceeeeiiiinooooouuuuyyAAAAAACEEEEIIIINOOOOOUUUUYYaoo--   ';
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

Function TiraCaracteresEspeciais(Texto:String; VF : boolean = True):String;
const ComAcento = 'âäàåáãçêëèéïîíìñôöóòõûùúüÿýÄÅÁÂÀÃÇÉÊËÈÍÎÏÌÑÖÓÔÒÕÜÚÛÙÝŸªº°"!@#%¨&*()_+-=`´[]^~,.;:/?|\<>''' + #13 + #10 + #13#10;
      SemAcento = 'aaaaaaceeeeiiiinooooouuuuyyAAAAAACEEEEIIIINOOOOOUUUUYYaoo--------------------------------   ';
var wI:Integer;
begin
  for wI := 1 to Length(Texto)do
  begin
    if Pos(Texto[wI],ComAcento)<>0 then
      Texto[wI] := SemAcento[Pos(Texto[wI],ComAcento)];
  end;
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
        Dig := Digits*(-1);
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

Function RetornaNull(const wTEXTO:String):String;
begin
     if Trim(wTEXTO) = '' then
        result := 'null'
   else
      result := qStr( wTEXTO );
end;

function IsCharEspec(const Str: String):Boolean;
Var aChar:PChar;
Const CharEspc: set of Char = [#0..#255] - ['a'..'z','A'..'Z','1'..'9','0'];
begin
     aChar := pChar( Str );
     Result := False;
     if ((aChar^ in CharEspc)) then
        Result := True;
end;

Function DiaInicioBimestre( const Date: tDateTime ): tDateTime ;
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

function DownloadArquivo(const Origem, Destino: String): Boolean;
const BufferSize = 1024;
var
   hSession, hURL: HInternet;
   Buffer: array[1..BufferSize] of Byte;
   BufferLen: DWORD;
   f: File;
   sAppName: string;
begin
     Result := False;
     sAppName := ExtractFileName(Application.ExeName);
     hSession := InternetOpen(PChar(sAppName),
     INTERNET_OPEN_TYPE_PRECONFIG,
     nil, nil, 0);
     try
     hURL := InternetOpenURL(hSession,
     PChar(Origem),
     nil,0,0,0);
                try
                   AssignFile(f, Destino);
                   Rewrite(f,1);
                repeat
                      InternetReadFile(hURL, @Buffer,
                      SizeOf(Buffer), BufferLen);
                      BlockWrite(f, Buffer, BufferLen)
                      until BufferLen = 0;
                      CloseFile(f);
                      Result:=True;
                finally
                InternetCloseHandle(hURL)
     end
     finally
       InternetCloseHandle(hSession)
     end
end;

function AcessoUsuario(UsaMenu, CodUsuario: string; Form: TForm):TBotoes;
var i:integer;
begin
  DataCadastros1.CdSAcessosUsuario.open;


  if DataCadastros1.CdSAcessosUsuario.Locate('USA_MENU;USA_COD_USUARIO',VarArrayOf([UsaMenu,CodUsuario]),[]) then
  begin

        if FORM <> NIL then
          for i := Form.ComponentCount -1 downto 0 do
          begin
            if (Form.Components[i] is TComboBox) then
            (Form.Components[i] as TComboBox).Enabled := IIF(DataCadastros1.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString <> 'N',true,false);
            if (Form.Components[i] is TcxLookupComboBox) then
            (Form.Components[i] as TcxLookupComboBox).Enabled := IIF(DataCadastros1.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString <> 'N',true,false);
            if (Form.Components[i] is TRadioButton) then
            (Form.Components[i] as TRadioButton).Enabled := IIF(DataCadastros1.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString <> 'N',true,false);
            if (Form.Components[i] is TSpeedButton) and (Form.Components[i].Name <> 'btnNovo') and (Form.Components[i].Name <> 'btnEdita') and (Form.Components[i].Name <> 'btnExclui') and (Form.Components[i].Name <> 'btnImprime') then
              (Form.Components[i] as TSpeedButton).Enabled := IIF(DataCadastros1.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString <> 'N',true,false);
            if (Form.Components[i] is TComboBoxRw) then
            (Form.Components[i] as TComboBoxRw).Enabled := IIF(DataCadastros1.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString <> 'N',true,false);
            if (Form.Components[i] is TSgDbSearchCombo) then
            (Form.Components[i] as TSgDbSearchCombo).Enabled := IIF(DataCadastros1.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString <> 'N',true,false);
            //if (Form.Components[i] is TGroupBox) then
            //(Form.Components[i] as TGroupBox).Enabled := IIF(DataCadastros1.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString = 'S',true,false);
            if (Form.Components[i] is TJvValidateEdit) then
            (Form.Components[i] as TJvValidateEdit).Enabled := IIF(DataCadastros1.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString <> 'N',true,false);
            if (Form.Components[i] is TMaskEdit) then
            (Form.Components[i] as TMaskEdit).Enabled := IIF(DataCadastros1.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString <> 'N',true,false);
            if (Form.Components[i] is TJvDBDateEdit) then
            (Form.Components[i] as TjvDBDateEdit).Enabled := IIF(DataCadastros1.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString <> 'N',true,false);
            if (Form.Components[i] is TDBEdit) then
            (Form.Components[i] as TDBEdit).Enabled := IIF(DataCadastros1.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString <> 'N',true,false);
            if (Form.Components[i] is TDBCheckBox) then
            (Form.Components[i] as TDBCheckBox).Enabled := IIF(DataCadastros1.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString <> 'N',true,false);
          end;
    Result.Alterar := IIF(DataCadastros1.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString <> 'N',true,false);
    Result.Incluir := IIF(DataCadastros1.CdSAcessosUsuario.FieldByName('USA_INCLUSAO').AsString  <> 'N',true,false);
    Result.Exluir  := IIF(DataCadastros1.CdSAcessosUsuario.FieldByName('USA_EXCLUSAO').AsString  <> 'N',true,false);
    Result.Relatorio :=  IIF(DataCadastros1.CdSAcessosUsuario.FieldByName('USA_RELATORIO').AsString  <> 'N',true,false); //RELATÓRIO E EXPORTAR DADOS
     end;
  DataCadastros1.CdSAcessosUsuario.close;

end;

procedure HabilitaIncluir(UsaMenu, CodUsuario: string; Form: TForm);
var i:integer;
begin
     DataCadastros1.CdSAcessosUsuario.open;
     for i := Form.ComponentCount -1 downto 0 do
        begin
          if (Form.Components[i] is TComboBox) then
          (Form.Components[i] as TComboBox).Enabled := true;
          if (Form.Components[i] is TcxLookupComboBox) then
          (Form.Components[i] as TcxLookupComboBox).Enabled := true;
          if (Form.Components[i] is TRadioButton) then
          (Form.Components[i] as TRadioButton).Enabled := true;
          if (Form.Components[i] is TSpeedButton) then
          (Form.Components[i] as TSpeedButton).Enabled := true;
          if (Form.Components[i] is TComboBoxRw) then
          (Form.Components[i] as TComboBoxRw).Enabled := true;
          if (Form.Components[i] is TSgDbSearchCombo) then
          (Form.Components[i] as TSgDbSearchCombo).Enabled := true;
          if (Form.Components[i] is TGroupBox) then
          (Form.Components[i] as TGroupBox).Enabled := true;
          if (Form.Components[i] is TJvValidateEdit) then
          (Form.Components[i] as TJvValidateEdit).Enabled := true;
          if (Form.Components[i] is TMaskEdit) then
          (Form.Components[i] as TMaskEdit).Enabled := true;
          if (Form.Components[i] is TJvDBDateEdit) then
          (Form.Components[i] as TJvDBDateEdit).Enabled := true;
          if (Form.Components[i] is TDBEdit) then
          (Form.Components[i] as TDBEdit).Enabled := true;
          if (Form.Components[i] is TDBCheckBox) then
          (Form.Components[i] as TDBCheckBox).Enabled := true;
        end;

  DataCadastros1.CdSAcessosUsuario.close;

end;
function ACBrStr( AString : AnsiString ) : String ;
begin
{$IFDEF UNICODE}
 {$IFDEF USE_LConvEncoding}
   Result := CP1252ToUTF8( AString ) ;
 {$ELSE}
   {$IFDEF FPC}
     Result := SysToUTF8( AString ) ;
   {$ELSE}
     Result := AnsiToUtf8( AString ) ;
   {$ENDIF}
 {$ENDIF}
{$ELSE}
  Result := AString
{$ENDIF}
end ;

function ACBrStrToAnsi(AString: String): AnsiString;
begin
{$IFDEF UNICODE}
 {$IFDEF USE_LConvEncoding}
   Result := UTF8ToCP1252( AString ) ;
 {$ELSE}
   {$IFDEF FPC}
    Result := Utf8ToAnsi( AString ) ;
   {$ELSE}
    Result := AnsiString( AString ) ;
   {$ENDIF}
 {$ENDIF}
{$ELSE}
  Result := AString
{$ENDIF}
end;
function Capitalize(Texto:String): String;
var
   OldStart: Integer;
begin
  if Texto <> '' then
  begin
   Texto := UpperCase(Copy(Texto,1,1))+AnsiLowerCase(Copy(Texto,2, Length(Texto)));
   Result := Texto;
  end;
end;

function ListaEmpresasPermitidas (const tipoMultiempresa: string) : TStringList;
var multiempresa : boolean;
  fListaEmpresas : TStringList;
begin
  multiempresa := False;
  if tipoMultiempresa = 'FATURA' then
    multiempresa  := DBInicio.Empresa.wPMT_FATURA_MULTIEMPRESA
  Else if tipoMultiempresa = 'EXPEDICAO' then
    multiempresa  := DBInicio.Empresa.wPMT_EXPEDICAO_MULTIEMPRESA
  ELSE if tipoMultiempresa = 'PERMITE' then
   multiempresa := True ;
  fListaEmpresas:= TStringList.Create;
  Try
    if not multiempresa then
       fListaEmpresas.add(QuotedStr(DBInicio.Empresa.EMP_CODIGO))
    else
    begin
      fListaEmpresas.Delimiter := ',';
      DBInicio.qAux.Close;
      DBInicio.qAux.CommandText := 'select emp_codigo from USUARIO_EMPRESA  where usu_codigo = '+ DBInicio.Usuario.CODIGO ;
      DBInicio.qAux.Open;
      while not DBInicio.qAux.Eof do
      begin
        fListaEmpresas.Add(QuotedStr(DBInicio.qAux.FieldByName('emp_codigo').AsString)) ;
        DBInicio.qAux.next;
      end;
      if DBInicio.qAux.IsEmpty then
        fListaEmpresas.add(QuotedStr(DBInicio.Empresa.EMP_CODIGO));


    end;
  finally
    Result := fListaEmpresas;

  End;
end;
function RetiraAcentos(str: String): String;

begin

  (*for i := 1 to Length ( str ) do
    case str[i] of
    'б': str[i] := 'a';
    'й': str[i] := 'e';
    'н': str[i] := 'i';
    'у': str[i] := 'o';
    'ъ': str[i] := 'u';
    'а': str[i] := 'a';
    'и': str[i] := 'e';
    'м': str[i] := 'i';
    'т': str[i] := 'o';
    'щ': str[i] := 'u';
    'в': str[i] := 'a';
    'к': str[i] := 'e';
    'о': str[i] := 'i';
    'ф': str[i] := 'o';
    'ы': str[i] := 'u';
    'д': str[i] := 'a';
    'л': str[i] := 'e';
    'п': str[i] := 'i';
    'ц': str[i] := 'o';
    'ь': str[i] := 'u';
    'г': str[i] := 'a';
    'х': str[i] := 'o';
    'с': str[i] := 'n';
    'з': str[i] := 'c';
    'Б': str[i] := 'A';
    'Й': str[i] := 'E';
    'Н': str[i] := 'I';
    'У': str[i] := 'O';
    'Ъ': str[i] := 'U';
    'А': str[i] := 'A';
    'И': str[i] := 'E';
    'М': str[i] := 'I';
    'Т': str[i] := 'O';
    'Щ': str[i] := 'U';
    'В': str[i] := 'A';
    'К': str[i] := 'E';
    'О': str[i] := 'I';
    'Ф': str[i] := 'O';
    'Ы': str[i] := 'U';
    'Д': str[i] := 'A';
    'Л': str[i] := 'E';
    'П': str[i] := 'I';
    'Ц': str[i] := 'O';
    'Ь': str[i] := 'U';
    'Г': str[i] := 'A';
    'Х': str[i] := 'O';
    'С': str[i] := 'N';
    'З': str[i] := 'C';
    '>': str[i] := #32;
  '<': str[i] := #32;
  '&': str[i] := #32;
  '№': str[i] := #32;
  'І': str[i] := #32;
  '"': str[i] := #32;
  '\': str[i] := #32;
  '/': str[i] := #32;
  'і': str[i] := #32;
  '°': str[i] := #32;
  'Є': str[i] := #32;
    #186: str[i] := #32;
   // #10:str[i] := '';
   // '&':str[i] := 'E';
   // '<':str[i] := '';
   // '>':str[i] := ''; *)
  str := TiraAcento(str,false);


  //end;
  str := AnsiReplaceStr(str,'  ',' ');
  str := AnsiReplaceStr(str,'  ',' ');
  str := AnsiReplaceStr(str,'  ',' ');
  str := AnsiReplaceStr(str,'  ',' ');
  str := AnsiReplaceStr(str,'  ',' ');
  str := AnsiReplaceStr(str,'  ',' ');
  str := AnsiReplaceStr(str,'  ',' ');
  str := AnsiReplaceStr(str,'  ',' ');
  str := AnsiReplaceStr(str,'  ',' ');
  str := AnsiReplaceStr(str,'  ',' ');
  str := AnsiReplaceStr(str,'  ',' ');
  str := AnsiReplaceStr(str,'  ',' ');

  Result := Trim(str);
end;

function  RetornaEnderecoSemNumero( const sEndereco: String): String;
   var
      iTamanhoEndereco,
      iPosicaoVirgula,
      i:Integer;
      sAuxiliar:String;
      bLocalizouVirgula:Boolean;
begin
   bLocalizouVirgula := False;
   iTamanhoEndereco := Length(sEndereco);
   for i := 0 to iTamanhoEndereco -1 do
      begin
         sAuxiliar := Copy(sEndereco,i,1);
         if (sAuxiliar = ',') then
           begin
             iPosicaoVirgula := i;
             bLocalizouVirgula := True;
           end;
      end;
   {}
   if (not bLocalizouVirgula) then
     begin
        Result := sEndereco;
     end
   else
     begin
        if (iPosicaoVirgula = iTamanhoEndereco) then
           Result := 'S/N'
        else
           Result := Trim(Copy(sEndereco,1,(iPosicaoVirgula-1)));
     end;
end;
function  RetornaNumeroEndereco(const sEndereco: String): String;
   var
      iTamanhoEndereco,
      iPosicaoVirgula,
      i:Integer;
      sAuxiliar:String;
      bLocalizouVirgula:Boolean;
begin
   bLocalizouVirgula := False;
   iTamanhoEndereco := Length(sEndereco);
   for i := 0 to iTamanhoEndereco -1 do
      begin
         sAuxiliar := Copy(sEndereco,i,1);
         if (sAuxiliar = ',') then
           begin
             iPosicaoVirgula := i;
             bLocalizouVirgula := True;
           end;
      end;
   {}
   if (not bLocalizouVirgula) then
     begin
        Result := '';
     end
   else
     begin
        if (iPosicaoVirgula = iTamanhoEndereco) then
           Result := 'S/N'
        else
           Result := Trim(Copy(sEndereco,iPosicaoVirgula+1,(iTamanhoEndereco-iPosicaoVirgula)));
     end;

end;
function  RetornaNullString(const sString: String): String;
begin
  if (Length(sString) > 0) then
    Result := #39+sString+#39
  else
    Result := 'Null';
end;
function MessageDlg(const Msg: string; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons; HelpCtx: Longint): Integer;
Var
  Mensagem: TForm;
Begin
  Mensagem := CreateMessageDialog(Msg, DlgType, Buttons);
  Mensagem.HelpConText := HelpCtx;

  With Mensagem Do
  Begin
//    For I := 0 To ComponentCount - 1 Do
//      If (Components[I] is TButton) Then
//        If (TButton(Components[I]).ModalResult = DefButton) Then
//          ActiveControl := TWincontrol(Components[I]);

    If DlgType = mtConfirmation Then
      Caption := 'Confirmação'
    else If DlgType = mtWarning Then
      Caption := 'Atenção'
    else If DlgType = mtError Then
      Caption := 'Erro'
    else If DlgType = mtInFormation Then
      Caption := 'Informação';

    TButton(Mensagem.FindComponent('YES')).Caption := '&Sim';
    TButton(Mensagem.FindComponent('NO')).Caption := '&Não';
    TButton(Mensagem.FindComponent('CANCEL')).Caption := '&Cancelar';
    TButton(Mensagem.FindComponent('ABORT')).Caption := '&Abortar';
    TButton(Mensagem.FindComponent('RETRY')).Caption := '&Repetir';
    TButton(Mensagem.FindComponent('IGNORE')).Caption := '&Ignorar';
    TButton(Mensagem.FindComponent('ALL')).Caption := '&Todos';
    TButton(Mensagem.FindComponent('HELP')).Caption := 'A&juda';
  End;
  Result := Mensagem.ShowModal;
  Mensagem.Free;


end;

function MsgDlgPersonalizado(const Msg: string; DlgType: TMsgDlgType; Buttons: TMsgDlgButtons; Captions: array of string): Integer;
var
  aMsgDlg: TForm;
  i: Integer;
  dlgButton: TButton;
  CaptionIndex: Integer;
begin
  { Criar o dialogo }
  aMsgDlg := CreateMessageDialog(Msg, DlgType, Buttons);
  CaptionIndex := 0;
  { Faz um loop varrendo os objetos do dialogo }
  for i := 0 to pred(aMsgDlg.ComponentCount) do
  begin
    if (aMsgDlg.Components[i] is TButton) then
    begin
      { Apenas entra na condição se o objeto for um button }
      dlgButton := TButton(aMsgDlg.Components[i]);
      if CaptionIndex > High(Captions) then //Captura o Index dos captions dos buttons criado no array
         Break;
      dlgButton.Caption := Captions[CaptionIndex];
      Inc(CaptionIndex);
    end;
  end;
  Result := aMsgDlg.ShowModal;
end;

function CarregaLoteAutomatico(controle, envase: Boolean;lote: string): string;
Var
 qAux, qAux4, qAuxSemente: TSQLQuery;
 ano, mes, dia: Word;
 registro: integer;
begin
  qAux := TSQLQuery.Create(Nil);
  qAux.SQLConnection := DataCadastros.SQLConnection1;
  if frmConclusaoOP <> nil then
    registro := frmConclusaoOP.registro;

  if controle and (DBInicio.Empresa.PMT_LOTE_AUTOMATICO = 'A' ) and (not envase) AND (lote = '') then
  begin

    qAux4 := TSQLQuery.Create(Nil);
    qAux4.SQLConnection := DataCadastros.SQLConnection1;
    qAuxSemente := TSQLQuery.Create(Nil);
    qAuxSemente.SQLConnection := DataCadastros.SQLConnection1;

    qAuxSemente.Close;
    qAuxSemente.SQL.Clear;
    qAuxSemente.SQL.Text := 'SELECT FIRST 1 PMT_LOTE_SEMENTE, EMP_CODIGO ' +
      ' FROM LOTE_ESTORNADO ' +
      ' WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.Empresa.EMP_CODIGO) +
      ' ORDER BY PMT_LOTE_SEMENTE' ;
    qAuxSemente.Open;

    DecodeDate(date(), ano, mes, dia);

    if qAuxSemente.IsEmpty then
    begin
      qAux.Close;
      qAux.SQL.Clear;
      qAux.SQL.Text := 'SELECT PMT_LOTE_SEMENTE, PMT_LOTE_PREFIXO ' +
        ' FROM PRMT0001 WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.Empresa.EMP_CODIGO);
      qAux.Open;
      Lote := IntToStr(qAux.FieldByName('PMT_LOTE_SEMENTE').AsInteger + 1);
      qAux4.Close;
      qAux4.SQL.Clear;
      qAux4.SQL.Text := 'UPDATE PRMT0001 SET PMT_LOTE_SEMENTE = ' + lote +
          ' WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.Empresa.EMP_CODIGO);
      qAux4.ExecSQL;
      if DBInicio.Empresa.PMT_REL_ORDEMPRODUCAO = '13' then
        Result := qAux.FieldByName('PMT_LOTE_PREFIXO').AsString + Lote + '/' +  strZero(dia, 2) + strZero(mes, 2) + strZero(ano, 4)
      else
        Result := qAux.FieldByName('PMT_LOTE_PREFIXO').AsString + Lote + '-' + IntToStr(ano) ;
    end
    else
    begin
      Lote := qAuxSemente.FieldByName('PMT_LOTE_SEMENTE').AsString;
      if DBInicio.Empresa.PMT_REL_ORDEMPRODUCAO = '13' then
        Result := Lote + '/' +  strZero(dia, 2) + strZero(mes, 2) + strZero(ano, 4)
      else
        Result := Lote + '-' + IntToStr(ano) ;
      dbInicio.ExecSQL('DELETE FROM LOTE_ESTORNADO  ' +
              ' WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.Empresa.EMP_CODIGO) +
              ' AND PMT_LOTE_SEMENTE = ' + Lote 
              );
    end;

  end
  else
  if lote <> '' then
    begin
      qAux.Close;
      qAux.SQL.Clear;
      qAux.SQL.Text := 'SELECT PRDL_LOTE ' +
        ' FROM PRD_LOTE WHERE PRDL_REGISTRO = ' + iif(frmEnvaseProdutos <> nil, lote, IntToStr(registro));
      qAux.Open;
      Result := qAux.FieldByName('PRDL_LOTE').AsString;
    end
  else
    Result := lote;
;

end;


function minutosParaHms(d: integer): string;
var h, m, s: Integer;
    hDisplay, mDisplay, sDisplay: string;
begin
    d := d * 60;
    h := floor(d / 3600);
    m := floor(d mod 3600 / 60);
    s := floor(d mod 3600 mod 60);

    hDisplay := strzero(IntToStr(h), 2) ;
    mDisplay := strzero(IntToStr(m), 2) ;
    sDisplay := strzero(IntToStr(s), 2) ;
    Result := hDisplay + ':' + mDisplay + ':' + sDisplay;
end;


function retiraPontoEVirgula(str: string): string;
var
  i: Integer;
begin
  result := '';
  for i := 0 to length(str)  do
  begin
    if str.Substring(i, 1) = ';' then
      result := result + '-'
    else
      result := result + str.Substring(i, 1);
  end;
end;

function retiraCRLF(str: string): string;
var
  i: Integer;
begin
  result := '';
  for i := 0 to length(str)  do
  begin
    if (str.Substring(i, 1) = #13)  then
      result := result + '\n'
    else
    if (str.Substring(i, 1) = #10)  then
      result := result + ''
    else
      result := result + str.Substring(i, 1);
  end;
end;

function LastPos(const pesq: string; const S: string): integer;
var
  i: Integer;
begin
  result := 0;
  for i := length(S) downto 1 do
  begin
    if s.Substring(i, Length(pesq)) = pesq then
      Exit(i);
  end;
end;

procedure PreparaSMTP(usuario: string; var smtp: TIdSMTP; var SSLSocket: TIdSSLIOHandlerSocketOpenSSL);
var
  buffer: array[0..255] of char;
  size: dword;
begin
  smtp.Disconnect();
  if (DBInicio.Empresa.EmailAutenticacao) then
     smtp.AuthType := satDefault
  else
     smtp.AuthType := satNone;
  size := 256;
  if GetComputerName(buffer, size) then
    smtp.HeloName := buffer
  else
    smtp.HeloName := '';
  smtp.Host := DBInicio.Empresa.EmailHost;
  smtp.Port := StrToInt(DBInicio.Empresa.EmailPorta);
  smtp.IOHandler := SSLSocket;
  if usuario = 'NFE' then
  begin
    smtp.Username:= DBInicio.Empresa.EmailUserName;
    smtp.Password := DBInicio.Empresa.EmailPassworld;
  end
  else
  begin
    smtp.Username:= DBInicio.Empresa.EmailUserNameFinanceiro;
    smtp.Password := DBInicio.Empresa.EmailPassworldFinanceiro;
  end;
  if (DBInicio.Empresa.EmailRequerConexaoTLS) then
     smtp.UseTLS := utUseRequireTLS
  else
     smtp.UseTLS := utNoTLSSupport;


  if dbInicio.Empresa.EmailRequerConexaoSSL then
  begin

    case dbInicio.Empresa.EmailVersaoSSL of
    1: SSLSocket.SSLOptions.Method := sslvTLSv1;
    2: SSLSocket.SSLOptions.Method := sslvSSLv2;
    3: SSLSocket.SSLOptions.Method := sslvSSLv3;
    end;

    if (dbInicio.Empresa.EmailModoSSL = 'B') then
       SSLSocket.SSLOptions.Mode := sslmBoth
    else
    if (dbInicio.Empresa.EmailModoSSL = 'C') then
       SSLSocket.SSLOptions.Mode := sslmClient
    else
    if (dbInicio.Empresa.EmailModoSSL = 'S') then
       SSLSocket.SSLOptions.Mode := sslmServer
    else
    if (dbInicio.Empresa.EmailModoSSL = 'U') then
       SSLSocket.SSLOptions.Mode := sslmUnassigned;
  end;
end;

procedure PreparaACBR(usuario: string);
var
  apiACBR: boolean;
begin
  DBInicio.ACBrMail.Host := DBInicio.Empresa.EmailHost;
  DBInicio.ACBrMail.Port := DBInicio.Empresa.EmailPorta;
  DBInicio.ACBrMail.SetTLS := DBInicio.Empresa.EmailRequerConexaoTLS;
  DBInicio.ACBrMail.SetSSL := DBInicio.Empresa.EmailRequerConexaoSSL;

  apiACBR := DBInicio.BuscaUmDadoSqlAsString('SELECT EMP_UTILIZAR_API_ACBR FROM EMP0000 WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.Empresa.EMP_CODIGO) )  = 'S';
  if apiACBR then
  begin
    DBInicio.ACBrMail.Username := DBInicio.BuscaUmDadoSqlAsString('SELECT EMP_USUARIO_API_ACBR FROM EMP0000 WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.Empresa.EMP_CODIGO) );
    DBInicio.ACBrMail.Password := DBInicio.BuscaUmDadoSqlAsString('SELECT EMP_TOKEN_API_ACBR FROM EMP0000 WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.Empresa.EMP_CODIGO) );
  end
  else
  begin
    if usuario = 'NFE' then
    begin
      DBInicio.ACBrMail.Username := DBInicio.Empresa.EmailUserName;
      DBInicio.ACBrMail.Password := DBInicio.Empresa.EmailPassworld;
    end
    else
    begin
      DBInicio.ACBrMail.Username := DBInicio.Empresa.EmailUserNameFinanceiro;
      DBInicio.ACBrMail.Password := DBInicio.Empresa.EmailPassworldFinanceiro;
    end;;
  end;
end;

function EnviaMail(usuario, de, para, assunto, responder: string; mensagem, anexos: TStringList; comCopia: string = '') : Boolean;
var
  // cliente SMTP
  smtp: TIdSMTP;
  SSLSocket : TIdSSLIOHandlerSocketOpenSSL;
  msg: tIdMessage;
  i, j: integer;


  // cliente ACBR
  clienteACBR: boolean;

  resultado : boolean;
  destinatarios : TStringList;

  aliasNFE, aliasFinanceiro, remetente: string;


begin
  clienteACBR := DBInicio.BuscaUmDadoSqlAsString('SELECT EMP_USAR_MAIL_ACBR FROM EMP0000 WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.Empresa.EMP_CODIGO) )  = 'S';
  ConnectionStatus := TStringList.Create;
  destinatarios := TStringList.Create;
  destinatarios := tStringList.Create;
  destinatarios.Delimiter := ';';
  destinatarios.StrictDelimiter := True;
  destinatarios.DelimitedText := para;

  {
  mensagem.Text :=
    '<!DOCTYPE html><html>' +
    '   <head>'+
    '     <meta http-equiv="content-type" content="text/html; charset=UTF-8">'+
    '   </head>' +
    '   <body>' + mensagem.Text + '</body>' +
    '</html>';

    não funciona para colocar o content type e acentos na mensagem...

   }

  aliasNFE := DBInicio.BuscaUmDadoSqlAsString('SELECT EMP_NFE_MAIL_ALIAS FROM EMP0000 WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo ));
  aliasFinanceiro := DBInicio.BuscaUmDadoSqlAsString('SELECT EMP_FINANCEIRO_MAIL_ALIAS FROM EMP0000 WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo ));

  remetente := LowerCase(de);
  if (usuario = 'NFE') and (aliasNFE <> '') then
    remetente := LowerCase(aliasNFE);
  if (usuario = 'Financeiro') and (aliasFinanceiro <> '') then
    remetente := LowerCase(aliasFinanceiro);


  for j := 0 to destinatarios.Count - 1 do
  begin
    if destinatarios[j] = '' then
      continue;
    if clienteACBR then
    begin
      DBInicio.ACBrMail.Clear;
      PreparaACBR(usuario);
      DBInicio.ACBrMail.From := remetente;
      DBInicio.ACBrMail.FromName := DBInicio.Empresa.FANTASIA;
      DBInicio.ACBrMail.ReplyTo.Text := remetente;
      if comCopia <> '' then
        DBInicio.ACBrMail.AddCC(comCopia);
      DBInicio.ACBrMail.AddAddress(destinatarios[j], destinatarios[j]);
      DBInicio.ACBrMail.IsHTML := True;
      DBInicio.ACBrMail.Subject := assunto;
      DBInicio.ACBrMail.Body.Text := mensagem.Text;
      if Assigned(anexos) then
        for i := 0 to anexos.Count -1 do
          if FileExists(anexos[i]) then
            DBInicio.ACBrMail.AddAttachment(anexos[i], '', adAttachment);
      try
        DBInicio.ACBrMail.Send(False);
        resultado := True;
      except
        on e:exception do
        begin
          resultado := False;
          ShowMessage('Falha no envio!' + #13 + e.message + #13 + ConnectionStatus.Text);
        end;
      end;
    end
    else
    begin
      smtp := TIdSMTP.Create();
      SSLSocket := TIdSSLIOHandlerSocketOpenSSL.Create(smtp);
      SSLSocket.Intercept := DBInicio.IdConnectionIntercept1;
      msg:= tIdMessage.Create();
      PreparaSMTP(usuario, smtp, SSLSocket);
      with msg do
      begin
        Body := mensagem;
        From.Address := remetente;
        Sender.Address := remetente;
        ReplyTo.EMailAddresses := remetente;
        if comCopia <> '' then
          CCList.EMailAddresses := comCopia;
        From.Name := DBInicio.Empresa.FANTASIA;

        Recipients.Add;
        Recipients.Items[0].Address := destinatarios[j];
        Subject := assunto;
      end;

      if Assigned(anexos) then
        for i := 0 to anexos.Count - 1 do
        begin
          if FileExists(anexos[i]) then
          begin
            try
              TIdAttachmentFile.Create(msg.MessageParts , anexos[i]);
            except
            end;
          end;
        end;

      try
        smtp.Connect();
        smtp.Send(msg);
        smtp.Disconnect;
        resultado := True;
      except
        on e:exception do
        begin
          resultado := False;
          ShowMessage('Falha no envio!' + #13 + e.message + #13 + ConnectionStatus.Text);
        end;
      end;
      smtp.Disconnect;
      FreeAndNil(SSLSocket);
      FreeAndNil(smtp);

    end;
  end;
  FreeAndNil(ConnectionStatus);
  Result := resultado;
end;

function AlmoxarifadoUsuario(AmxCodigo: string) : Boolean;
begin
  Result := True;
  DataCadastros1.cdsAlmoxUsu.Close;
  DataCadastros1.cdsAlmoxUsu.Open;
  if not DataCadastros1.cdsAlmoxUsu.Locate('USU_CODIGO;AMX_CODIGO',varArrayof([DBInicio.Usuario.CODIGO,AmxCodigo]),[]) then
  begin
    MessageDlg('Você não tem autorização para visualização de estoque deste Almoxarifado', mtWarning, [mbOK], 0);
    Result := False;
  end;
end;

// tem que ser aqui esta procedure, pois a uPlanoContasCentroCustoManual não debuga nem com reza braba
procedure AjustaNivelSuperior;
var
  lancamento: boolean;
  I: integer;
  NivelAnterior, Reduzido: String;
  rSomaTmp, ValorNivelAnterior, ValorPrimeiroNivel: Real;
begin
  if (FrmPlanoContasCentroCustoManual.CdsIndicesValor.AsFloat > 0) then
  begin
    while not FrmPlanoContasCentroCustoManual.CdsIndices.Bof do
    begin
      Reduzido := FrmPlanoContasCentroCustoManual.CdsIndicesReduzido.AsString;
      FrmPlanoContasCentroCustoManual.qAux.Close;
      FrmPlanoContasCentroCustoManual.qAux.SQL.Text := 'SELECT PCX_TIPO FROM pcx0000 WHERE PCX_CODIGO = ' + QuotedStr(Reduzido);
      FrmPlanoContasCentroCustoManual.qAux.Open;
      lancamento := FrmPlanoContasCentroCustoManual.qAux.FieldByName('PCX_TIPO').AsString = 'L';
      if lancamento then
      begin
        rSomaTmp := rSomaTmp + FrmPlanoContasCentroCustoManual.CdsIndicesValor.AsFloat;
      end
      else
      begin
        ValorNivelAnterior := ValorNivelAnterior + rSomaTmp;
        FrmPlanoContasCentroCustoManual.CdsIndices.Edit;
        FrmPlanoContasCentroCustoManual.qAux2.Close;
        FrmPlanoContasCentroCustoManual.qAux2.SQL.Text := 'SELECT NIVEL_PAI FROM pcx0000 WHERE PCX_CODIGO = ' + QuotedStr(Reduzido);
        FrmPlanoContasCentroCustoManual.qAux2.Open;
        if FrmPlanoContasCentroCustoManual.qAux2.FieldByName('NIVEL_PAI').AsString = '' then
        begin
          FrmPlanoContasCentroCustoManual.CdsIndicesValor.AsFloat := ValorPrimeiroNivel;
          FrmPlanoContasCentroCustoManual.CdsIndicesIndice.AsFloat := (ValorPrimeiroNivel * 100) / FrmPlanoContasCentroCustoManual.rValorFatura;
          ValorPrimeiroNivel := 0;
        end
        else
        begin
          FrmPlanoContasCentroCustoManual.CdsIndicesValor.AsFloat := ValorNivelAnterior;
          FrmPlanoContasCentroCustoManual.CdsIndicesIndice.AsFloat := (ValorNivelAnterior * 100) / FrmPlanoContasCentroCustoManual.rValorFatura;
        end;
        FrmPlanoContasCentroCustoManual.CdsIndices.Post;
        ValorPrimeiroNivel := ValorPrimeiroNivel + rSomaTmp;
        rSomaTmp := 0;
      end;
      if NivelAnterior = FrmPlanoContasCentroCustoManual.CdsIndicesNivel.AsString then
      begin
        ValorNivelAnterior := rSomaTmp;
        rSomaTmp := 0;
      end;

      for I := Length(FrmPlanoContasCentroCustoManual.CdsIndicesNivel.AsString) downto 1 do
      begin
        if (FrmPlanoContasCentroCustoManual.CdsIndicesNivel.AsString[I] = '.') then
        begin
          FrmPlanoContasCentroCustoManual.qAux2.Close;
          FrmPlanoContasCentroCustoManual.qAux2.SQL.Text := 'SELECT NIVEL_PAI FROM pcx0000 WHERE PCX_CODIGO = ' + QuotedStr(Reduzido);
          FrmPlanoContasCentroCustoManual.qAux2.Open;
          NivelAnterior := FrmPlanoContasCentroCustoManual.qAux2.FieldByName('NIVEL_PAI').AsString;
          break
        end;
      end;
      FrmPlanoContasCentroCustoManual.CdsIndices.Prior;
    end;
  end;

  rSomaTmp := 0;
  FrmPlanoContasCentroCustoManual.CdsIndices.First;
  while not FrmPlanoContasCentroCustoManual.CdsIndices.Eof do
  begin
    Reduzido := FrmPlanoContasCentroCustoManual.CdsIndicesReduzido.AsString;
    FrmPlanoContasCentroCustoManual.qAux.Close;
    FrmPlanoContasCentroCustoManual.qAux.SQL.Text := 'SELECT PCX_TIPO FROM pcx0000 WHERE PCX_CODIGO = ' + QuotedStr(Reduzido);
    FrmPlanoContasCentroCustoManual.qAux.Open;
    lancamento := FrmPlanoContasCentroCustoManual.qAux.FieldByName('PCX_TIPO').AsString = 'L';
    if lancamento then
      rSomaTmp := rSomaTmp + FrmPlanoContasCentroCustoManual.CdsIndicesValor.AsFloat;
    FrmPlanoContasCentroCustoManual.CdsIndices.Next;
  end;
  FrmPlanoContasCentroCustoManual.lbTotal.Caption := 'Total: ' + FormatFloat('###,###,###.00', rSomaTmp);

end;

procedure EsvaziaBuffer;
var
  Msg: TMsg;
begin
  while PeekMessage(Msg, 0, WM_KEYFIRST, WM_KEYLAST,
    PM_REMOVE or PM_NOYIELD) do;
end;


                                                         // PF form de pedido, item do pedido ou faturamento
procedure MovimentaLote(prfRegistro, prdlRegistro: integer; Form, tipoES: string; quantidade, PRDLSaldo: double);
var
  PILutilizado, saldo, saldoPIL: double;
  itemRegistro, loteRegistro: integer;
begin

  if prdlRegistro = 0 then
    exit;

  DBInicio.qAux.Close;
  DBInicio.qAux.SQL.Text := 'SELECT PRF_REGISTRO, PRDL_REGISTRO, PIL_UTILIZADO FROM PEDIDO_ITEM_LOTE WHERE PRF_REGISTRO = ' + IntToStr(prfRegistro);
  DBInicio.qAux.Open;



  if  (copy(Form, 1, 13) = 'FrmPedidoItem') and (tipoES = 'S') then
  begin
      if DBInicio.qAux.IsEmpty and (prdlRegistro > 0) then
      begin
        DBInicio.ExecSql('INSERT INTO PEDIDO_ITEM_LOTE VALUES (' + IntToStr(prfRegistro) + ',' + IntToStr(prdlRegistro) + ',' + FloatToSql(quantidade) + ')' );
        saldo := PRDLsaldo - quantidade;
        DBInicio.ExecSql('UPDATE PRD_LOTE SET PRDL_SALDO = ' + FloatToSql(saldo) + ' WHERE PRDL_REGISTRO = ' + IntToStr(prdlRegistro) );
      end
      else
      if NOT DBInicio.qAux.IsEmpty and (prdlRegistro > 0) and (tipoES = 'S') then
      begin
        PILutilizado := DBInicio.qAux.FieldByName('PIL_UTILIZADO').AsFloat;
        if PILutilizado = quantidade then
          Exit;
        if PILutilizado > quantidade then
        begin
          saldoPIL := PILutilizado - quantidade;
          if quantidade =  PRDLSaldo then
            saldo := 0
          else
            saldo := PRDLsaldo + saldoPIL;
          DBInicio.ExecSql('UPDATE PEDIDO_ITEM_LOTE SET PIL_UTILIZADO = PIL_UTILIZADO - '  + FloatToSql(saldoPIL) + ' WHERE PRF_REGISTRO = ' + IntToStr(prfRegistro) );
          DBInicio.ExecSql('UPDATE PRD_LOTE SET PRDL_SALDO = ' + FloatToSql(saldo) + ' WHERE PRDL_REGISTRO = ' + IntToStr(prdlRegistro) );
        end;
        if PILutilizado < quantidade then
        begin
          saldoPIL := quantidade;
          saldo := PRDLsaldo - (quantidade - PILutilizado);
          DBInicio.ExecSql('UPDATE PEDIDO_ITEM_LOTE SET PIL_UTILIZADO =  ' + FloatToSql(saldoPIL) + ' WHERE PRF_REGISTRO = ' + IntToStr(prfRegistro) );
          DBInicio.ExecSql('UPDATE PRD_LOTE SET PRDL_SALDO = ' + FloatToSql(saldo) + ' WHERE PRDL_REGISTRO = ' + IntToStr(prdlRegistro) );
        end;
      end;
  end
  else
  if (copy(Form, 1, 13) = 'FormFatPedido') and (tipoES = 'S') then
    dbInicio.ExecSql('UPDATE PRD_LOTE SET PRDL_SALDO = PRDL_SALDO - ' + FloatToSql(quantidade) + ' WHERE PRDL_REGISTRO = ' + InttoStr(prdlRegistro))
  else
  if (tipoES = 'E') then
  begin
    dbInicio.ExecSql('UPDATE PRD_LOTE SET PRDL_SALDO = PRDL_SALDO + ' + FloatToSql(quantidade) + ' WHERE PRDL_REGISTRO = ' + InttoStr(prdlRegistro));
    dbInicio.ExecSql('DELETE FROM PEDIDO_ITEM_LOTE WHERE PRF_REGISTRO = ' + IntToStr(prfRegistro));
  end;
  if  (copy(Form, 1, 13) = 'FrmPedidoTipo') and (tipoES = 'S') then
  begin
    dbInicio.ExecSql('UPDATE PRD_LOTE SET PRDL_SALDO = PRDL_SALDO - ' + FloatToSql(quantidade) + ' WHERE PRDL_REGISTRO = ' + InttoStr(prdlRegistro))
  end;


end;


function GetColumn(aGrid: TDBGrid; aFieldName: string): TColumn;
var
  I : integer;
begin
  for I := 0 to aGrid.Columns.Count-1 do
    if aGrid.Columns[I].FieldName = aFieldName then
    begin
      Result := aGrid.Columns[I];
      exit;
    end;
  Result := nil;
end;

function ExtraiNumeroDoEndereco(endereco: string): string;
begin
    result := endereco;
end;

function Estados(sigla: string): string;
begin
  if sigla = 'AC' then result := 'Acre'
  else
  if sigla = 'AL' then result := 'Alagoas'
  else
  if sigla = 'AP' then result := 'Amapá'
  else
  if sigla = 'AM' then result := 'Amazonas'
  else
  if sigla = 'BA' then result := 'Bahia'
  else
  if sigla = 'CE' then result := 'Ceará'
  else
  if sigla = 'ES' then result := 'Espírito Santo'
  else
  if sigla = 'GO' then result := 'Goiás'
  else
  if sigla = 'MA' then result := 'Maranhão'
  else
  if sigla = 'MT' then result := 'Mato Grosso'
  else
  if sigla = 'MS' then result := 'Mato Grosso do Sul'
  else
  if sigla = 'MG' then result := 'Minas Gerais'
  else
  if sigla = 'PA' then result := 'Pará'
  else
  if sigla = 'PB' then result := 'Paraíba'
  else
  if sigla = 'PR' then result := 'Paraná'
  else
  if sigla = 'PE' then result := 'Pernambuco'
  else
  if sigla = 'PI' then result := 'Piauí'
  else
  if sigla = 'RJ' then result := 'Rio de Janeiro'
  else
  if sigla = 'RN' then result := 'Rio Grande do Norte'
  else
  if sigla = 'RS' then result := 'Rio Grande do Sul'
  else
  if sigla = 'RO' then result := 'Rondônia'
  else
  if sigla = 'RR' then result := 'Roraima'
  else
  if sigla = 'SC' then result := 'Santa Catarina'
  else
  if sigla = 'SP' then result := 'São Paulo'
  else
  if sigla = 'SE' then result := 'Sergipe'
  else
  if sigla = 'TO' then result := 'Tocantins' ;
end;


procedure GravaHistoricoEmail(modulo: string; destinatário: string; titulo: string; CliFor: string; CliForCodigo: string; DataEnvio: TDateTime; Usuario: string; Anexo: string);
var
  ChavePrimaria: integer;
begin
  ChavePrimaria := DBInicio.GetNextSequence('GEN_HISTORICO_EMAIL');
  DBInicio.ExecSql(
    'INSERT INTO HISTORICO_EMAIL ' +
    '         (    HEM_CODIGO, HEM_MODULO, HEM_DESTINATARIO, HEM_TITULO, HEM_CLI_FOR, CLI_FOR_CODIGO, HEM_DATA_ENVIO, USU_CODIGO, EMP_CODIGO, HEM_ANEXO)' +
    ' VALUES  (' + IntToStr(ChavePrimaria) + ',' + QuotedStr(modulo) + ',' + QuotedStr(destinatário) + ',' + QuotedStr(titulo) + ',' + QuotedStr(CliFor) + ',' + QuotedStr(CliForCodigo) + ',' + DateTimeToSQL(DataEnvio) + ',' + Usuario + ',' + QuotedStr(DBInicio.Emp_Codigo) + ',' + QuotedStr(Anexo)  + ')'
  );
end;


procedure ExecSql2(const pSql: string);
var qry: TFDQuery;
    MsgErro: string;
begin
     qry:= TFDQuery.Create(nil);
     try
       try
         qry.Connection:=DBInicio.FDACConn;
         qry.SQL.text:=StringReplace( pSql, '  ', ' ', [rfReplaceAll, rfIgnoreCase]);
         if dbInicio.IsDesenvolvimento then
           CopyToClipBoard(qry.SQL.text);
         qry.ExecSQL(True);
       Except
             on E:Exception do
                  msgErro := 'ExecSql2: '+#13+qry.SQL.text+#13+'Retornou o Erro: '+E.Message+#13+' *** Copiado para area de transferencia ***';
       end;
     finally
     qry.close;
     FreeAndNil(qry);
     end;
end;


function RealMod (x: double; MaxInteger: Integer) : double;
begin
    Result := (trunc(x) mod MaxInteger) + frac(x)
end;

// Os nomes das colunas é o displayLabel do Campo inserido no ClientDataSet
procedure CriaCSV(ds: TDataSource; lista: TStringList; Form: TForm; empCodigo: boolean = True; titulo: string = '');
var j : integer;
    linhas: TStringList;
    gravar: TStreamWriter;
    FiltroEmpresa : string;
    linha : string;
    SaveDialog: TSaveDialog;
    progresso : TProgressBar;
begin

  if empCodigo then
  begin
    if (DBInicio.BuscaUmDadoSqlAsInteger('SELECT COUNT(EMP_CODIGO) FROM EMP0000') > 1) {and (Form.Name <> 'frmDemandaProducao')} then
    begin
      if frmEmpresaExportacao = nil then
        frmEmpresaExportacao := TfrmEmpresaExportacao.Create(nil);
      frmEmpresaExportacao.ShowModal;
      if frmEmpresaExportacao.ModalResult <> mrOk then
        Exit;
      frmEmpresaExportacao.cdsAux.First;
      FiltroEmpresa := '';
      while not frmEmpresaExportacao.cdsAux.Eof  do
      begin
        if frmEmpresaExportacao.cdsAux.FieldByName('SELECIONADO').AsString = '1' then
        begin
          if FiltroEmpresa <> '' then
            FiltroEmpresa := FiltroEmpresa + ' OR ';
          FiltroEmpresa := FiltroEmpresa +  ' EMP_CODIGO = ' + QuotedStr(frmEmpresaExportacao.cdsAux.FieldByName('EMP_CODIGO').AsString);
        end;
        frmEmpresaExportacao.cdsAux.Next;
      end;
    end
    else
      FiltroEmpresa := FiltroEmpresa +  'EMP_CODIGO = ' + QuotedStr(DBInicio.BuscaUmDadoSqlAsString('SELECT EMP_CODIGO FROM EMP0000'));
  end
  else
    FiltroEmpresa := '';
  if DBInicio.IsDesenvolvimento then
    CopyToClipBoard(FiltroEmpresa);
  progresso := TProgressBar.Create(Form);
  progresso.Top := (Form.Height div 2);
  progresso.Left := (Form.Width div 2);
  try
    progresso.Max := ds.DataSet.RecordCount;
  except
    progresso.Max := 1000;
  end;
  Application.ProcessMessages;

  SaveDialog := TSaveDialog.Create(ds);
  SaveDialog.Filter := 'Dados Separados por Ponto e Vírgula|*.csv';
  if titulo = '' then
    SaveDialog.title := 'Exportar Dados'
  else
  begin
    SaveDialog.title := titulo;
    SaveDialog.FileName := titulo;
  end;
  SaveDialog.DefaultExt := 'csv';
  if SaveDialog.Execute then
  begin
    progresso.Show;
    linhas := TStringList.Create;
    linha := '';
    for j := 0 to lista.Count -1 do
    begin
      linha := linha + ds.DataSet.FieldByName(lista[j]).DisplayLabel;
      if j <> lista.Count -1 then
        linha := linha + ';';
    end;
    linhas.add(linha);

    ds.DataSet.Filtered := False;
    ds.DataSet.Filter := FiltroEmpresa;
    ds.DataSet.Filtered := True;
    ds.DataSet.DisableControls;
    ds.DataSet.First;
    while not ds.DataSet.Eof do
    begin
      try
        progresso.Position := ds.DataSet.RecNo;
        linha := '';
        for j := 0 to lista.Count -1 do
        begin
          if ds.DataSet.FieldByName(lista[j]).FieldName = 'TEMPO_EM_MINUTOS' then
            linha := linha + minutosParaHms(ds.DataSet.FieldByName(lista[j]).AsInteger)
          else
            linha := linha + retiraCRLF(RetiraPontoEVirgula(ds.DataSet.FieldByName(lista[j]).AsAnsiString));
          if j <> lista.Count -1 then
            linha := linha + ';';
        end;
        linhas.add(linha);
        ds.DataSet.Next;
      except
        on e:Exception do
          ShowMessage(e.Message);

      end;
    end;

    gravar := TStreamWriter.Create(SaveDialog.FileName, False, TEncoding.UTF8);
    gravar.Write(linhas.Text);
    // linhas.SaveToFile(SaveDialog.FileName);

    ds.DataSet.EnableControls;
    progresso.Visible := False;

    gravar.Free;
    FreeAndNil(SaveDialog);
    FreeAndNil(progresso);

    MessageDlg('Arquivo gravado com sucesso!', mtInformation, [mbOK], 0);
  end;
end;

function UltimoDiaDoMes(mes, ano: integer): integer;
begin
  case mes of
    1 : Result := 31; // janeiro
    2 : // fevereiro
    begin
      if ano / 4 = Int(ano/4) then Result := 29 // ano bissexto
      else Result := 28
    end;
    3: Result := 31; // março
    4: Result := 30; // abril
    5: Result := 31; // maio
    6: Result := 30; // junho
    7: Result := 31; // julho
    8: Result := 31; // agosto
    9: Result := 30; // setembro
    10: Result := 31; // outubro
    11: Result := 30; // novembro
    12: Result := 31; // dezembro
  end;
end;


function BloqueiaPedidoVendaFaturaAtraso(cliCodigo, prazoCodigo: string) : Boolean;
var
  tcr : TFrmAutoriza;
  dias: integer;
  atrasado, prazo, aVista: boolean;
begin
  dias := dbInicio.BuscaUmDadoSqlAsInteger('SELECT PMT_BLOQ_PED_VENDA_FAT_ATRASO_D FROM PRMT0001 WHERE EMP_CODIGO = ' + QuotedStr(dbInicio.Empresa.EMP_CODIGO) );
  atrasado := dbInicio.BuscaUmDadoSqlAsInteger ( 'SELECT CAST(MAX(DATEDIFF(DAY FROM FPC_VENCTO TO CURRENT_DATE)) AS INTEGER) '+
                                         'FROM FAT_PC01 WHERE CLI_CODIGO = ' + QuotedStr(cliCodigo)+
                                         ' AND FPC_SITPAG = ' + QuotedStr('P') + ' AND FPC_VENCTO < CURRENT_DATE') >= dias;
  if prazoCodigo <> '' then
    prazo := dbInicio.BuscaUmDadoSqlAsString('SELECT c.PCL_CODIGO FROM CLI0000 c WHERE CLI_CODIGO = ' + QuotedStr(cliCodigo) + ' AND PCL_CODIGO = ' + QuotedStr(prazoCodigo) ) <> ''
  else
    prazo := false;

  if prazoCodigo <> '' then
    aVista := dbInicio.BuscaUmDadoSqlAsInteger('SELECT PCL_MODALIDADE FROM PCL0000 c WHERE PCL_CODIGO = ' + prazoCodigo) <> 1
  else
    aVista := True;
//  if frmPedido <> nil then
//    frmPedido.edPrazoCodigo.Text := prazoCodigo;

  if  atrasado and prazo and not aVista then
  begin
    Result := True;

    tcr := TFrmAutoriza.Create(nil) ;
    try
      tcr.TipoValidacao := vDesbloqueiaVendaEmAtraso;
      tcr.lbAviso.Caption := 'Cliente possui faturas em atraso a mais de ' + IntToStr(dias) + ' dias! Venda não liberada! ' + #13+#10 + 'Favor entrar em contato com o financeiro!';
      tcr.lbAviso.Top := tcr.lbAviso.Top - 10;
      tcr.ShowModal;
      if tcr.modalresult <> mrOk then
      begin
         Result := True
      end
      else
         Result := False;
    finally
      FreeAndNil( tcr ) ;
    end;
  end
  else
    Result := False;
end;


end.






