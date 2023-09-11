unit UFuncoes;

interface

uses
  Messages,SysUtils, Printers, WinProcs, Dialogs, Menus,Forms,   JvToolEdit,
  DB, DBTables,{{DBXpress,} DBClient, Windows, Mask, StdCtrls,
  Buttons, Classes,ComCtrls, ShellApi, Registry, DateUtils, Math, uteis, vcl.graphics;

type
  TAbreFecha = (afAbrir, afFechar);

Const
  RepHead =0;
  RepTrail=1;
  RepBoth =2;
  RepEvery=3;
  ReplaceLeft = 0;
  ReplaceRight = 1;
  ReplaceBoth = 2;
  ReplaceAll = 3;

  mdAscend = 0;
  mdDescend = 1;

  EspacoBranco = #32;
  EspacoNulo = #0;

{****************************************FUNCOES BANCO DE DADOS******************************************}
 procedure AbreFecha(const Arquivos: array of TClientDataSet; Modo: TAbreFecha);

{**********************************************FIM*******************************************************}


{******************************procedimento********************************}
procedure PreencheZerroCampoEdit(Campo: TEdit;Zero:Integer);
{libera menu acesso}
procedure Liberar(Sender: tObject; Status: Boolean);
{deabilita menus e habilta}
procedure DesabilitaHabilitaMenus(Status: Boolean; Form: TComponent; NomeComp:String);
{código de barras}
procedure CriaCodigo(Cod : String; Imagem : TCanvas);
{versao sistema}

Function DataAmericana(wPdata:String):String;
function TestaDataStr(const S: string): boolean;
function PreenchezeroEsquerda(Varia :String; N : Byte) : ShortString;
{procedimento para impressão de linhas em um relatório}
procedure PrintaFolha(Nlin,Ncol: Integer;Var LinhaAtual: Integer; Var Arquivo:
Text;Texto: Variant);
{funcao para mascra cnpj cnpf}
function MascraCNPJ_CNPF(Varia :ShortString) :ShortString;
{funcao para telefone}
function MascraTELEFONE(Varia :ShortString) :ShortString;

function ExtrairAspas(wTexto:String):String;

Function TiraAcento(Texto:String;Maiusculo:Boolean):String;



function UltimoDiaMes(Data : TDateTime; lSabDom : Boolean) : TDateTime;

{ Esta função retorna true se a data passada como parâmetro é fim de mês.
Retorna false caso contrário. }
function FimDoMesData(const Data: TDateTime): boolean;
{retorna se o ano bisexto}
function AnoBiSexto(Ayear: Integer): Boolean;

function DataExtenso (const wData:TDate) :String;

function ValidarEstado(Dado : string) : boolean;



function DiaSemana(wData:TDateTime) :String;

function Formatar(Texto : string; TamanhoDesejado : integer; AcrescentarADireita : boolean = true; CaracterAcrescentar : char = ' ') : string;

function Modulo11(Valor: String; Base: Integer = 9; Resto : boolean = false) : string;

function Modulo10(Valor: String) : string;


Function ValorAmericano(sValor:String) : String;

function ExtractSystemDir : String;
{procedimento para impressão de linhas em um relatório}
procedure PrintaFolhaDuplicata(Nlin,Ncol: Integer;Var LinhaAtual: Integer; Var Arquivo:
Text;Texto: Variant);

{********************************funçoes***********************************}

Function IIF (Const wCondicao, wCorreto, wErrado: Variant) : Variant;
{Verificando se a Impressora está On Line}
//function PrinterOnLine: Boolean;
function PrinterOnLine: Boolean;

{Prenche, à direita, com espaco  até o tamanho total "N"}
Function PreencheDireita  (Varia :ShortString; N : integer) : ShortString;

{Prenche, à esquerda, com espaco  até o tamanho total "N"}
Function PreencheEsquerda (Varia :ShortString; N : Byte) : ShortString;

Function PreencheDireitaCaracter (Varia :ShortString; N : Byte) : ShortString;

Function PreencheEsquerdaCaracter (Varia :ShortString; N : Byte) : ShortString;

{Prenche uma String de tamanho "N" com o caractere "Ch"}
Function Copies (Ch : Char; N : Byte) : ShortString;

{Prenche, à direita, uma string "S" com caracteres "P" até o tamanho total "N"}
Function PadLeft (S :ShortString; N : Byte; P : Char) : ShortString;

{Prenche, à esquerda, uma string "S" com caracteres "P" até o tamanho total "N"}
Function PadRight (S :ShortString; N : Byte; P : Char) : ShortString;

{Prenche, à direita e à esquerda, uma string "S" com caracteres "P" até o tamanho total "N"}
Function Middle (S : ShortString; N : SmallInt; P : Char) : ShortString;

{ Substitui um caracter "FromChar" por outro "ToChar" em uma string "SourceStr" }
Function ReplaceChar (SourceStr : ShortString; FromChar, ToChar : Char;
Mode : Byte) : ShortString;

{Substitui uma String "FromStr" por outra "ToStr" em uma String "Source"}
Function ReplaceStr (Source, FromStr, ToStr : ShortString; Mode : Byte) : ShortString;

{ Retira os caracteres "CharToStrip" de uma string "SourceStr" }
Function StripChar (SourceStr : ShortString; CharToStrip : Char; Mode : Byte) : ShortString;

{Remove as duplicidades de uma substring "T" em uma string "S"}
Function StripRepeat (S, T : ShortString) : ShortString;

{Inverte uma string}
Function ReverseStr (S : ShortString) : ShortString;

{Retorna SubString de uma String "S" a partir da ocorrência da String "T"}
Function CopyFrom (S, T : ShortString) : ShortString;

{Retorna SubString de uma String "S" até a ocorrência da String "T"}
Function CopyUntil (S, T : ShortString) : ShortString;

{Retorna a última ocorrência de uma string "T" em uma string "S"}
Function LastPos (T, S : ShortString) : Byte;

{Retorna a posicao do primeiro caracter após a ocorrência de todas strings "T" consecutivas}
Function NoPos (T, S : ShortString) : Byte;

{Retorna o número de ocorrências de uma string "T" dentro de outra "S"}
Function Occurs(T, S : ShortString) : Byte;

{Retorna a posição da enésima ocorrência da string "T" na string "S"}
Function OccurPos (T, S : ShortString; N : Byte) : Byte;

{ Retira os espaços em branco à direita }
Function RTrim (StrX : string) : string;

{ Retira os espaços em branco a esquerda }
Function LTrim (StrX : string) : string;

{ Retira os espaços em branco a esquerda e a direita }
Function Trim (StrX : string) : string;

{Preenche variavel com "IntX" vezes uma string passada}
Function Replicate (StrX : string; IntX : Integer) : string;

{Preenche string com n espaços}
Function Space (const IntX : ShortInt) : string;

{Centraliza string}
Function Center (StrX : string; IntX : ShortInt) : string;

{Retira os n caracteres a esquerda}
Function LeftStr (StrX : string; const IntX : ShortInt) : string;

{Retira os n caracteres a direita}
Function RightStr (StrX : string; const IntX : ShortInt) : string;


{Gera número por extenso}
function extenso (valor: real): string;

{Prenche, à esquerda, uma string "S" com caracteres "P" até o tamanho total "N"}
Function PrencheZeroEsquerda (Num_Zero :ShortString; N : Byte) : ShortString;

{verifica o digito do codigo de barrras}
function CalculaDigitoBarra(CodigoBarra: String) : String;

{rotina para calculo do produto com digito}
function CalculaCodigoModulo10(Numero : String) : String;
//function CalculaCodigoProdutoModulo11(Numero : String) : String;

{valida data}
function ValidaData(datas: String ; wFOCO:TJvDateEdit): String;
//Criptografa
function Criptografa(senha: String): String;
//DesCriptografa
function DesCriptografa(cifrado: String): String;
//coloca mascra CNPJ/CNPF
function ColocaMascraCNPJ_CNPF(NUMERO: String): String;

function TestaImpressoraMatricial :Boolean;

function ArredondaFloat(x : Real): Real;

function ArrendondaValor(Num :Real; Decimal :Integer) : Real;


function ArredondaPorDecimal(valor:Real;casasDecimais:integer):Real;

//extrair somente numeros
function ExtrairNumeros(wTEXTO:String): String;

function ExtrairAfa_Numeros(wTEXTO:String): String;

//extrair caracter
function ExtrairCarecter(wTEXTO:String): String;

procedure CopiarArquivo(const cFrom, cTo : string);

procedure DeletaArquivo(Arquivo:String);

//procedure TrataErroIB( E: EIBInterBaseError );

function LogUserWindows : String;


procedure MoveArquivo(sOrigem,sDestino:String;bConfirmacao:Boolean);

implementation






{******************************procedimentos*******************************}
procedure Liberar(Sender: tObject; Status: Boolean);
begin
  if Sender <> nil then
  begin
    if Sender.ClassType = TMenuItem then
      TMenuItem(Sender).Enabled := Status;
    if Sender.ClassType = TSpeedButton then
      TSpeedButton(Sender).Enabled := Status;
    if Sender.ClassType = TToolButton then
      TToolButton(Sender).Enabled := Status;
    if Sender.ClassType = TToolButton then
      TToolButton(Sender).Enabled := Status;
  end;
end;

procedure DesabilitaHabilitaMenus(Status: Boolean; Form: TComponent; NomeComp:String);
begin
  Liberar(TMenuItem(Form.FindComponent(NomeComp)), Status);
end;


procedure PreencheZerroCampoEdit(Campo: TEdit;Zero:Integer);
Var
QtdeZero:String;
begin
   QtdeZero := '';
   QtdeZero := string(PrencheZeroEsquerda(QtdeZero,Zero));
   if Campo.Text = '' then
      begin
         Campo.Text := QtdeZero;
      end
   else
      begin
         Campo.Text := FormatFloat(QtdeZero,StrToInt(campo.Text));
      end;
end;
{Procedimento para impressão de linhas em um relatório}
procedure PrintaFolha(Nlin,Ncol: Integer;Var LinhaAtual: Integer; Var Arquivo:
Text;Texto: Variant);
var
X: Integer;
begin
   Write(Arquivo,#13);
   If Nlin<>LinhaAtual then
      begin
         for X :=LinhaAtual to (Nlin-1) do
           begin
              WriteLn(Arquivo,'');
              LinhaAtual:=LinhaAtual+1;
           end;
      end;
   If Ncol>0 then
      begin
         For X:=0 to Ncol do
          begin
             Write(Arquivo,' ');
          end;
      end;
   If LinhaAtual >=63 then { 63 É O NÚMERO DA ÚLTIMA LINHA ANTES DO RODAPÉ}
      begin
         For X:=63 to 67 do { 67 É A QUANTIDADE DE LINHAS POR PÁGINA }
           begin
              Writeln(Arquivo,'');
              LinhaAtual:=1;
            end;
      end;
   Write(Arquivo,Texto);
end;



{duplicata}
procedure PrintaFolhaDuplicata(Nlin,Ncol: Integer;Var LinhaAtual: Integer; Var Arquivo:
Text;Texto: Variant);
var
X: Integer;
begin
   Write(Arquivo,#13);
   If Nlin<>LinhaAtual then
      begin
         for X :=LinhaAtual to (Nlin-1) do
           begin
              WriteLn(Arquivo,'');
              LinhaAtual:=LinhaAtual+1;
           end;
      end;
   If Ncol>0 then
      begin
         For X:=0 to Ncol do
          begin
             Write(Arquivo,' ');
          end;
      end;
   If LinhaAtual = 23 then { 63 É O NÚMERO DA ÚLTIMA LINHA ANTES DO RODAPÉ}
      begin
         //For X:=23 to 35 do { 67 É A QUANTIDADE DE LINHAS POR PÁGINA }
         For X:=23 to 23 do { 67 É A QUANTIDADE DE LINHAS POR PÁGINA }
           begin
              Writeln(Arquivo,'');
              LinhaAtual:=1;
            end;
      end;
   Write(Arquivo,Texto);
end;

{*************************************funcôes*****************************}
{Prenche, à direita, com espaco  até o tamanho total "N"}
Function PreencheDireita (Varia :ShortString; N : integer) : ShortString;
begin
   if N > Length(Varia) Then
     begin
        PreencheDireita := string(Varia + Copies (EspacoBranco, N - Length(Varia)));
     end
   else
      begin
         PreencheDireita := string(Copy (Varia, 1, N));
      end;
end;

{Prenche, à esquerda, com espaco  até o tamanho total "N"}
Function PreencheEsquerda (Varia :ShortString; N : Byte) : ShortString;
begin
 if N > Length(varia) Then
    begin
       PreencheEsquerda :=string( Copies (EspacoBranco, N - Length(varia)) + varia);
    end
  else
    begin
       PreencheEsquerda :=string( Copy (Varia, Length(Varia) - N + 1, N));
    end;

end;


Function PreencheDireitaCaracter (Varia :ShortString; N : Byte) : ShortString;
begin
   if N > Length(Varia) Then
     begin
        PreencheDireitaCaracter := Varia + Copies ('.', N - Length(Varia));
     end
   else
      begin
         PreencheDireitaCaracter := Copy (Varia, 1, N);
      end;
end;

Function PreencheEsquerdaCaracter (Varia :ShortString; N : Byte) : ShortString;
begin
 if N > Length(varia) Then
    begin
       PreencheEsquerdaCaracter := Copies ('.', N - Length(varia)) + varia;
    end
  else
    begin
       PreencheEsquerdaCaracter := Copy (Varia, Length(Varia) - N + 1, N);
    end;

end;

{Verificando se a Impressora está On Line}
//function PrinterOnLine: Boolean;
function PrinterOnLine: Boolean;
const
  PrnStInt: Byte = $17;
  StRq: Byte = $02;
  PrnNum: Word = 0;
var
  nResult: Byte;
begin
  ASM
    mov ah, StRq;
    mov dx, PrnNum;
    Int $17;
    mov nResult, ah;
  end;
end;



{Gera número por extenso}
function extenso (valor: real): string;
var
  Centavos, Centena, Milhar, Milhao, Texto, msg: string;
const
Unidades: array[1..9] of string = ('Um', 'Dois', 'Tres', 'Quatro', 'Cinco',
'Seis', 'Sete', 'Oito', 'Nove');

Dez: array[1..9] of string = ('Onze', 'Doze', 'Treze', 'Quatorze', 'Quinze',
'Dezesseis', 'Dezessete', 'Dezoito', 'Dezenove');

Dezenas: array[1..9] of string = ('Dez', 'Vinte', 'Trinta', 'Quarenta',
'Cinquenta', 'Sessenta', 'Setenta',
'Oitenta', 'Noventa');

Centenas: array[1..9] of string = ('Cento', 'Duzentos', 'Trezentos',
'Quatrocentos', 'Quinhentos', 'Seiscentos',
'Setecentos', 'Oitocentos', 'Novecentos');

function ifs(Expressao: Boolean; CasoVerdadeiro, CasoFalso: String): String;
begin

if Expressao then Result:=CasoVerdadeiro

else Result:=CasoFalso;

end;

function MiniExtenso (trio: string): string;
var
Unidade, Dezena, Centena: string;

begin

Unidade:='';

Dezena:='';

Centena:='';

if (trio[2]='1') and (trio[3]<>'0') then

begin

Unidade:=Dez[strtoint(trio[3])];

Dezena:='';

end

else

begin

if trio[2]<>'0' then Dezena:=Dezenas[strtoint(trio[2])];

if trio[3]<>'0' then Unidade:=Unidades[strtoint(trio[3])];

end;

if (trio[1]='1') and (Unidade='') and (Dezena='')

then Centena:='cem'

else

if trio[1]<>'0'

then Centena:=Centenas[strtoint(trio[1])]

else Centena:='';

Result:= Centena + ifs((Centena<>'') and ((Dezena<>'') or (Unidade<>'')), ' e ', '')

+ Dezena + ifs((Dezena<>'') and (Unidade<>''),' e ', '') + Unidade;

end;

begin

if (valor>999999.99) or (valor<0) then

begin

msg:='O valor está fora do intervalo permitido.';

msg:=msg+'O número deve ser maior ou igual a zero e menor que 999.999,99.';

msg:=msg+' Se não for corrigido o número não será escrito por extenso.';

showmessage(msg);

Result:='';

exit;

end;

if valor=0 then

begin

Result:='';

Exit;

end;

Texto:=formatfloat('000000.00',valor);

Milhar:=MiniExtenso(Copy(Texto,1,3));

Centena:=MiniExtenso(Copy(Texto,4,3));

Centavos:=MiniExtenso('0'+Copy(Texto,8,2));

Result:=Milhar;

if Milhar<>'' then

if copy(texto,4,3)='000' then

Result:=Result+' Mil Reais'

else

Result:=Result+' Mil, ';

if (((copy(texto,4,2)='00') and (Milhar<>'')

and (copy(texto,6,1)<>'0')) or (centavos=''))

and (Centena<>'') then Result:=Result+' e ';

if (Milhar+Centena <>'') then Result:=Result+Centena;

if (Milhar='') and (copy(texto,4,3)='001') then

Result:=Result+' Real'

else

if (copy(texto,4,3)<>'000') then Result:=Result+' Reais';

if Centavos='' then

begin

Result:=Result+'.';

Exit;

end

else

begin

if Milhar+Centena='' then

Result:=Centavos

else

Result:=Result+', e '+Centavos;

if (copy(texto,8,2)='01') and (Centavos<>'') then

Result:=Result+' Centavo.'

else

Result:=Result+' Centavos.';

end;

end;


{Prenche uma String de tamanho "N" com o caractere "Ch"}
Function Copies (Ch : Char; N : Byte) : ShortString;
begin
  if N < 1 Then
    Result := ''
  else begin
    FillChar (Result[1], N, Ch);
    Result[0] := AnsiChar(N);
  end;
end;

{Prenche, à direita, uma string "S" com caracteres "P" até o tamanho total "N"}
Function PadLeft (S :ShortString; N : Byte; P : Char) : ShortString;
begin
if N < 1 Then
Result := ''
else
if N > Length(S) Then
Result := S + Copies (P, N - Length(S))
else
Result := Copy (S, 1, N);
end;

{Prenche, à esquerda, uma string "S" com caracteres "P" até o tamanho total "N"}
Function PadRight (S :ShortString; N : Byte; P : Char) : ShortString;
begin
if N < 1 Then
Result := ''
else
if N > Length(S) Then
Result := Copies (P, N - Length(S)) + S
else
Result := Copy (S, Length(S) - N + 1, N);
end;

{Prenche, à direita e à esquerda, uma string "S" com caracteres "P" até o tamanho total "N"}
Function Middle (S : ShortString; N : SmallInt; P : Char) : ShortString;
var
Spare, NDiv : Byte;
begin
if N < 1 Then
Result := ''
else begin
Spare := Abs (N - Length (S));
NDiv := Spare Div 2;
if N > Length(S) Then
Result := Copies (P, NDiv) + S + Copies (P, Spare - NDiv)
else
Result := Copy (S, NDiv + 1, N);
end;
end;

{ Substitui um caracter "FromChar" por outro "ToChar" em uma string "SourceStr" }
Function ReplaceChar (SourceStr : ShortString; FromChar, ToChar : Char;
Mode : Byte) : ShortString;
var
I : Integer;
begin
Result := '';
if Mode <> ReplaceLeft Then
For I := Length (SourceStr) DownTo 1 Do
if SourceStr[I] = AnsiChar(FromChar) Then
SourceStr[I] := AnsiChar(ToChar)
else
Break;
if Mode <> ReplaceRight Then
For I := 1 To Length (SourceStr) Do
If SourceStr[I] = AnsiChar(FromChar) Then
SourceStr[I] := AnsiChar(ToChar)
else
if Mode <> ReplaceAll Then
Break;
Result := SourceStr;
end;


{Substitui uma String "FromStr" por outra "ToStr" em uma String "Source"}
Function ReplaceStr (Source, FromStr, ToStr : ShortString; Mode : Byte) : ShortString;
Var
P : Byte;
Begin
if Mode <> ReplaceRight Then
if Pos (FromStr, Source) = 1 Then
Source := ToStr + Copy (Source, Length (ToStr) + 1, 255);
if Mode <> ReplaceLeft Then begin
Source := ReverseStr (Source);
if Pos (ReverseStr (FromStr), Source) = 1 Then
Source := ReverseStr (ToStr) + Copy (Source, Length (ToStr) + 1, 255);
Source := ReverseStr (Source);
end;
if Mode = ReplaceAll Then begin
P := Pos (FromStr, Source);
while P > 0 do begin
Source := Copy (Source, 1, P - 1) + ToStr + Copy (Source, P + Length (ToStr), 255);
P := Pos (FromStr, Source);
end;
end;
ReplaceStr := Source;
End;

{ Retira os caracteres "CharToStrip" de uma string "SourceStr" }
Function StripChar (SourceStr : ShortString; CharToStrip : Char; Mode : Byte) : ShortString;
var
I : Integer;
begin
Result := '';
If SourceStr <> '' Then begin
if Mode <> ReplaceLeft Then
While (Byte (SourceStr[0]) > 0) and (SourceStr[Byte (SourceStr[0])] = AnsiChar(CharToStrip)) Do
Dec (SourceStr[0]);
if Mode <> ReplaceRight Then begin
I := 1;
While (I <= Byte(SourceStr[0])) and (SourceStr[I] = AnsiChar(CharToStrip)) Do
Inc (I);
if I > 1 Then
SourceStr := Copy (SourceStr, I, 255);
if Mode = ReplaceAll Then begin
For I := 1 To Byte (SourceStr[0]) Do
if SourceStr[I] <> AnsiChar(CharToStrip) Then
Result := Result + SourceStr[I];
SourceStr := Result;
end;
end;
Result := SourceStr;
end;
end;

{Remove as duplicidades de uma substring "T" em uma string "S"}
Function StripRepeat (S, T : ShortString) : ShortString;
Var P : Byte;
Begin
P := Pos (T + T, S);
while P > 0 Do begin
Delete (S, P, Length(T));
P := Pos (T + T, S);
end;
StripRepeat := S;
End;

{Inverte uma string}
Function ReverseStr (S : ShortString) : ShortString;
var I : Integer;
begin
Result := '';
For I := Length(S) DownTo 1 Do
Result := Result + S[I];
end;

{Retorna SubString de uma String "S" a partir da ocorrência da String "T"}
Function CopyFrom (S, T : ShortString) : ShortString;
Var P : Byte;
Begin
P := Pos (T, S);
if P > 0 Then
CopyFrom := Copy (S, P + Length(T), 255)
else
CopyFrom := '';
End;

{Retorna SubString de uma String "S" até a ocorrência da String "T"}
Function CopyUntil (S, T : ShortString) : ShortString;
Var P : Byte;
Begin
P := Pos (T, S);
if P > 0 Then
CopyUntil := Copy (S, 1, Pred(P))
else
CopyUntil := S;
End;

{Retorna a última ocorrência de uma string "T" em uma string "S"}
Function LastPos (T, S : ShortString) : Byte;
Var P : Byte;
Begin
P := Pos (ReverseStr (T), ReverseStr (S));
if P > 0 Then
LastPos := Length(S) - P
else
LastPos := 0;
End;

{Retorna a posicao do primeiro caracter após a ocorrência de todas strings "T" consecutivas}
Function NoPos (T, S : ShortString) : Byte;
Var Tam : Byte;
Begin
Tam := Length(T);
Result := 1;
While Pos (T, S) = 1 Do Begin
Inc (Result, Tam);
S := Copy (S, Tam + 1, 255);
end;
End;

{Retorna o número de ocorrências de uma string "T" dentro de outra "S"}
Function Occurs(T, S : ShortString) : Byte;
Var P : Byte;
Begin
Result := 0;
P := Pos (T, S);
while P > 0 do begin
Inc (Result);
S := Copy (S, P + Length (T), 255);
P := Pos (T, S);
end;
End;

{Retorna a posição da enésima ocorrência da string "T" na string "S"}
Function OccurPos (T, S : ShortString; N : Byte) : Byte;
Var Op, P, I : Byte;
Begin
I := 0;
Op := 0;
P := Pos (T, S);
While P > 0 Do Begin
Inc (Op);
if Op = N Then Begin
OccurPos := I + P;
Exit;
End;
Inc(I, P + Length(T) - 1);
P := Pos (T, Copy (S, I + 1, 255));
End;
OccurPos := 0;
End;

{Retira os espaços em branco à direita}
Function RTrim (StrX : string) : string;
begin
RTrim := StripChar (StrX, EspacoBranco, ReplaceRight);
end;

{Retira os espaços em branco a esquerda}
Function LTrim (StrX : string) : string;
begin
LTrim := StripChar (StrX, EspacoBranco, ReplaceLeft);
end;

{Retira os espaços em branco a esquerda e a direita}
Function Trim (StrX : string) : string;
begin
Trim := StripChar (StrX, EspacoBranco, ReplaceBoth);;
end;

{Preenche variavel com "IntX" vezes uma string passada}
Function Replicate (StrX : string; IntX : Integer ) : string;
begin
Result := '';
while Length (Result) < IntX do
Result := Result + StrX;
end;

{Preenche string com n espaços}
Function Space (const IntX : ShortInt) : string;
begin
Space := Copies (EspacoBranco, IntX);
end;

{Centraliza string}
Function Center(StrX : string; IntX : ShortInt) : string;
begin
Center := Middle (StrX, IntX, EspacoBranco);
end;

{Retira os n caracteres a esquerda}
Function LeftStr (StrX : string; const IntX : ShortInt) : string;
begin
// LeftStr := Copy (StrX, IntX + 1, Length (StrX) - IntX);
LeftStr := Copy (StrX, 1, IntX);
end;

{Retira os n caracteres a direita}
Function RightStr (StrX : string; const IntX : ShortInt ) : string;
begin
RightStr := ReverseStr(Copy(ReverseStr(StrX), 1, Intx));
end;



{Prenche, à esquerda, uma string "S" com caracteres "P" até o tamanho total "N"}
Function PrencheZeroEsquerda (Num_Zero :ShortString; N : Byte) : ShortString;
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

function CalculaDigitoBarra(CodigoBarra : String) : String;
Var
PARES,IMPARES,RESULTADO1,RESULTADO2,RESULTADOFINAL,DIGITO:Integer;
begin

{Este cálculo é idêntico ao das numerações EAN-13 e EAN-8.
Importante: As posições dos dígitos são numeradas da direita para a esquerda neste algoritmo (o dígito verificador está na primeira posição: o prefixo P1 está na 13ª posição no EAN-13 e na 8ª no EAN-8).
PASSO 1: Começando da segunda posição do número, some os valores dos dígitos nas posições pares.
PASSO 2: Multiplique por três o resultado do passo 1 acima.
PASSO 3: Começando da terceira posição do número, some os  valores dos dígitos nas posições ímpares.
PASSO 4: Some os resultados dos passos 2 e 3.
PASSO 5: O dígito verificador é o menor número, ao qual somado aos resultados obtidos por meio do passo 4, dá um número múltiplo de 10.
Por exemplo, para calcular o dígito verificador para o seguinte número EAN-13: 427622135746 C:
                         4    2    7    6    2    2    1    3    5    7    4    6     C
PASSO1:               2    +    6    +    2    +    3    +   7    +    6           =  26

PASSO2:                                                                                   x3 =   78
PASSO3:         4    +    7    +    2    +    1    +    5    +    4                =   23
PASSO4:                                        Some PASSO2 + PASSO3    = 101
PASSO5:                                                                                     C =     9
O número completo é 4276221357469.
OBS.: Os mesmos passos devem ser seguidos para o cálculo com 17 dígitos.

Desenvolvido por PIXEL Tecnologia
 }
  {}
   PARES         := 0;
   IMPARES       := 0;
   RESULTADO1    := 0;
   RESULTADO2    := 0;
   RESULTADOFINAL:= 0;
   DIGITO        := 0;
  {Começando da segunda posição do número, some os valores dos dígitos nas posições pares.}
   PARES       := (PARES + StrToInt(copy(CodigoBarra,2,1)));
   PARES       := (PARES + StrToInt(copy(CodigoBarra,4,1)));
   PARES       := (PARES + StrToInt(copy(CodigoBarra,6,1)));
   PARES       := (PARES + StrToInt(copy(CodigoBarra,8,1)));
   PARES       := (PARES + StrToInt(copy(CodigoBarra,10,1)));
   PARES       := (PARES + StrToInt(copy(CodigoBarra,12,1)));
  {Multiplique por três o resultado do passo 1 acima.}
   RESULTADO1       := (PARES *  3);
  {Começando da terceira posição do número, some os  valores dos dígitos nas posições ímpares.}
   IMPARES     := (IMPARES + StrToInt(copy(CodigoBarra,1,1)));
   IMPARES     := (IMPARES + StrToInt(copy(CodigoBarra,3,1)));
   IMPARES     := (IMPARES + StrToInt(copy(CodigoBarra,5,1)));
   IMPARES     := (IMPARES + StrToInt(copy(CodigoBarra,7,1)));
   IMPARES     := (IMPARES + StrToInt(copy(CodigoBarra,9,1)));
   IMPARES     := (IMPARES + StrToInt(copy(CodigoBarra,11,1)));
   RESULTADO2  := IMPARES;
  {Some os resultados dos passos 2 e 3.}
   RESULTADOFINAL := (RESULTADO1 + RESULTADO2);
  {O dígito verificador é o menor número, ao qual somado aos resultados
   obtidos por meio do passo 4, dá um número múltiplo de 10.}
   Digito := Digito + (RESULTADOFINAL mod 10);
   if Digito <> 0 then
      begin
         result := IntToStr((10 - Digito));
      end
   else
      begin
         result := '0';
      end;

end;

{rotina de cálculo do módulo 10 11
 entrada - número em formato String
 saída - número com dígito de verificação}
function CalculaCodigoModulo10(Numero : String) : String;
//function CalculaCodigoProdutoModulo11(Numero : String) : String;
var
  Digito : Integer;
  i,j,cod,N : Integer;
begin
  Numero := Trim(Numero);
  Digito := 0;
  j := 2;
  for i := Length(Numero) downto 1 do begin
    N := Ord(Numero[i])-Ord('0');
    cod := (N mod 10)*j;
    Digito := Digito + (cod mod 10)+(cod div 10);
    if j = 2 then
      j := 1
    else
      j := 2;
  end;
  Digito := Digito mod 10;
  if Digito <> 0 then
    Result := Numero+IntToStr(10-Digito)
  else
    Result := Numero + '0';
end;
//Criptografa
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
//DesCriptografa
function DesCriptografa(cifrado: string): string;
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

function ColocaMascraCNPJ_CNPF(NUMERO: String): String;
begin
  {cnpj}
   if Length(Trim(NUMERO)) = 14 then
      begin
         ColocaMascraCNPJ_CNPF := copy(NUMERO,0,2)+'.'+copy(NUMERO,3,3)+'.'+copy(NUMERO,6,3)+'/'+copy(NUMERO,9,4)+'-'+copy(NUMERO,13,2);
      end;
  {cnpf}
   if Length(Trim(NUMERO)) = 11 then
      begin
         ColocaMascraCNPJ_CNPF := copy(NUMERO,0,3)+'.'+copy(NUMERO,4,3)+'.'+copy(NUMERO,7,3)+'-'+copy(NUMERO,10,2);
      end;
end;

function ValidaData(datas: String ;wFOCO:TjvDateEdit): String;
var
  mAno, mMes, mDia: Integer;
  sAno, sMes, sDia: String;
  sData: String;
  diames: Integer;
  limite: Integer;
  bissexto: Boolean;
begin
  sAno := Trim(Copy(datas, 7, 4));
  sMes := Trim(Copy(datas, 4, 2));
  sDia := Trim(Copy(datas, 1, 2));

  if (sAno = '') or (sMes = '') or (sDia = '') then
    begin
      ValidaData := ''; // Data Inválida
      exit;
    end;

  mAno := StrToInt(sAno);
  mMes := StrToInt(sMes);
  mDia := StrToInt(sDia);

  limite := 30;  // Até 30 -> vai para Ano 2030, Após -> 1930
  bissexto := False;

  case mAno of   //  Verificar o Ano da Data
    0..99:
      begin
        if (mAno < limite) then
          mAno := 2000 + mAno
        else
          mAno := 1900 + mAno;
      end;

    100..999:
      begin
        ValidaData := ''; // Data Inválida
        uteis.aviso('Data Informada não e válida !!!');
        wFOCO.SetFocus;
        wFOCO.SelectAll;
        exit;
      end;
  end;

  if (mAno mod 4 = 0) then
    bissexto := True;

  case mMes of   //  Verificar o Mes da Data (28, 29, 30, 31 dias)
    1,3,5,7,8,10,12:
      begin
        diames := 31;
      end;

    4,6,9,11:
      begin
        diames := 30;
      end;

    2:
      begin
        if bissexto then
          diames := 29
        else
          diames := 28;
      end
  else;
    ValidaData := ''; // Data Inválida
    uteis.aviso('Data Informada não e válida !!!');
    wFOCO.SetFocus;
    wFOCO.SelectAll;
    exit;
  end;

  if (mDia < 1) or (mDia > diames) then
    begin
      ValidaData := ''; // Data Inválida
      uteis.aviso('Data Informada não e válida !!!');
      wFOCO.SetFocus;
      wFOCO.SelectAll;
      exit;
    end;

  sData := '';

  case mDia of
    1..9:
      begin
        sData := '0';
      end;
  end;

  sData := sData + IntToStr(mDia) + '/';

  case mMes of
    1..9:
      begin
        sData := sData + '0';
      end;
  end;

  sData := sData + IntToStr(mMes) + '/' + IntToStr(mAno);

  ValidaData := sData;    // Retorna a Data
  exit;

end;

function TestaImpressoraMatricial :Boolean;
Const
PrnStInt : Byte = $17;
StRq     : Byte = $02;
PrnNum   : Word = 0; {0 para LPT1, 1 para LPT2,etc. }
Var
nResult   : byte;
Begin
   Asm
      mov ah,StRq;
      mov dx,PrnNum;
      Int $17;
      mov nResult,ah;
    end;
TestaImpressoraMatricial := (nResult and $80) = $80;

{if not TestaImpressoraMatricial then
ShowMessage('Verifique a Impressora!');
 }
end;

{procedure TrataErroIB( E: EIBInterBaseError );
var ErroIB:string;

sqlcode:integer;

begin

sqlcode := E.IBErrorCode;

case sqlcode of

335544517:ErroIB :='Exceção encontrata no banco de dados. '+E.MESSAGE;
335544472:ErroIB :='Você não tem Acesso ao Banco de Dados. Erro de Acesso, contate o Administrador';
335544375:ErroIB :='O Serviço do Interbase está desligado.'+#13+'Causas prováveis:'+#13+
'(*) O Interbase Server não foi instalado'+#13+
'(*) O Interbase Server foi desinstalado do Servidor'+#13+
'(*) O Serviço do Interbase Server não está sendo ativado na inicalização do Windows'+#13+
'digite CTRL+ALT+DEL Verifique se o serviço INTERBASE SERVER está ativo';
335544324:ErroIB :='Endereço inválido para o Banco de dados. Conexão não está Ativa';
//335544402,335544415:IDATual.ErroIB :='Internal ERROR. ';
335544402,335544415:ErroIB :='Internal ERROR. ';
335544363:ErroIB :='Operação inválida. Transação inválida ou Nula. Reinicie o Computador ';
335544321:ErroIB := 'Expressão numérica inválida ou string truncada. Contate Suporte';
335544346:ErroIB :='Tabelas de Sistema Corrompidas';
335544404:ErroIB :='Foi detecado corrupção no Banco de Dados.'+#13+ ' Anote o módulo que está operando e contate Rodrigo'+#13+'ou email wsi@terra.com.br';
335544451:ErroIB :='A atualização atual conflita com outro processo na rede'+#13+
'O Registro pode estar sendo atualizado por outro Usuário';
335544466:ErroIB :='Este registro não pode ser excluído porque' + #13 +
'Existem outros que dependem dele e que não foram excluídos';
335544721:ErroIB :='O servidor de rede selecionado no SetupServer não foi encontrado';
335544741:ErroIB :='Base de Dados está fora do ar. Favor entrar' + #13 +
'em contato com o responsável pela rede na ' + #13 +
'localidade selecionada ou tente mais tarde.';
335544753:ErroIB :='Usuário Já Existente no Interbase';
335544754:ErroIB :='Erro Adicionando Usuário';
335544755:ErroIB :='Erro Modificando dados do Usuário';
335544756:ErroIB :='Erro deletando Usuário do Servidor Interbase';
335544531:ErroIB :='Voce não pode entrar com um Registro NULO.';
335544751:ErroIB :='O Protocolo de Rede informado na Conexão com o servidor Interbase é Inválido';
335544726:ErroIB :='Erro Lendo dados da Conexão. Contate o Adminstrador da Rede';
335544722:ErroIB :='Erro na Conexão de Rede Local';
335544706:ErroIB :='O Nome do Servidor não foi Encontrado';
335544676:ErroIB :='Falta de Memória no Servidor Interbase';
335544665:ErroIB :='Chave Primária já existente. Regitro não pode ser duplicado';
end;
if erroib <> '' then showmessage(erroib);
end;}

Function PreencheZeroEsquerda(Varia :String; N : Byte) : ShortString;
begin
   if N > Length(Varia) Then
     begin
        PreencheZeroEsquerda := string(Copies ('0', N - Length(Varia)) + Varia);
      end
   else
      begin
         PreencheZeroEsquerda := string(Copy (Varia, Length(Varia) - N + 1, N));
      end;

end;

function MascraCNPJ_CNPF(Varia :ShortString) :ShortString;
begin
   if Length(Varia) = 14 Then
      begin {mascra CPNPJ}
         MascraCNPJ_CNPF := Copy(Varia,0,2) + '.'+
                            Copy(Varia,3,3) + '.'+
                            Copy(Varia,6,3) + '/'+
                            Copy(Varia,9,4) + '-'+
                            Copy(Varia,13,2);
      end
   else
      begin
         if Length(Varia) = 11 Then
            begin{mascra CNPF}
               MascraCNPJ_CNPF := Copy(Varia,0,3) + '.'+
                                  Copy(Varia,4,3) + '.'+
                                  Copy(Varia,7,3) + '-'+
                                  Copy(Varia,10,2);
            end;
      end;
end;

function MascraTELEFONE(Varia :ShortString) :ShortString;
begin
   if Length(Varia) = 10 Then
      begin
         MascraTELEFONE := '('+copy(Varia,0,2)+')'+
                               copy(Varia,3,4)+'-'+
                               copy(Varia,7,4);
      end
   else
   if Length(Varia) = 9 Then
      begin
         MascraTELEFONE := '('+copy(Varia,0,2)+')'+
                               copy(Varia,3,3)+'-'+
                               copy(Varia,6,4);
      end
   else
      begin
         MascraTELEFONE := '(  )    -    ';
      end;
end;

{}
Function IIF (Const wCondicao, wCorreto, wErrado: Variant) : Variant;
begin
  If wCondicao Then
    Result := wCorreto
  else
    Result := wErrado;
end;

procedure AbreFecha(const Arquivos: array of TClientDataSet; Modo: TAbreFecha);
var
  i: integer;
begin
  if Modo = afAbrir then
  begin
    try
      for i := 0 to high(Arquivos) do
        if not Arquivos[i].Active then
          Arquivos[i].Open;
    except on E:Exception do
      raise Exception.Create('Impossível acessar o arquivo: ' + #13 + E.message );
    end;
  end;

  if Modo = afFechar then
  begin
    try
      for i := 0 to high(Arquivos) do
        if Arquivos[i].Active then
          Arquivos[i].Close;
    except on E:Exception do
      raise Exception.Create('Impossível fechar o arquivo: ' + #13 + E.message );
    end;
  end;
end;


function ArredondaFloat(x : Real): Real;
begin
  if x > 0 Then
     begin
     if Frac(x) > 0.5 Then
        begin
        x := x + 1 - Frac(x);
        end
     else
        begin
        x := x - Frac(x);
        end;
     end
  else
     begin
     x := x - Frac(x);
     end;
     result := x
end;

function ExtrairAfa_Numeros(wTEXTO:String): String;
Var
I:Integer;
wAUX:String;
begin
   wAUX := '';
   for I := 1 to Length(wTEXTO) do
   begin
      if (wTEXTO[I] in ['0'..'9']) or (wTEXTO[I] in ['A'..'Z']) then
        begin
           wAUX := wAUX + copy(wTEXTO,I,1);
        end;
   end;
   Result := wAUX;
end;

function ExtrairNumeros(wTEXTO:String) :String;
Var
I:Integer;
wAUX:String;
begin
   wAUX := '';
   for I := 1 to Length(wTEXTO) do
   begin
      if (wTEXTO[I] in ['0'..'9']) then
        begin
           wAUX := wAUX + copy(wTEXTO,I,1);
        end;
   end;
   Result := wAUX;
end;

function ExtrairCarecter(wTEXTO:String) :String;
Var
I:Integer;
begin
   for I := 1 to Length(wTEXTO) do
   begin
      if (wTEXTO[I] in ['&']) then
        begin
           Delete(wTEXTO,I,1);
        end;
   end;
   Result := wTEXTO;
end;

function ExtrairAspas(wTexto:string):String;
Var
I:Integer;
wAUX:String;
begin
   wAUX := '';
   for I := 1 to Length(wTEXTO) do
   begin
      if (wTEXTO[I]  in [chr(39)]) then
        begin
           delete(wTEXTO,I,1);
        end;
     if (wTEXTO[I]  in [chr(34)]) then
        begin
           delete(wTEXTO,I,1);
        end;
     if (wTEXTO[I]  in [chr(39)]) then
            begin
               delete(wTEXTO,I,1);
            end;
     if (wTEXTO[I]  in [chr(34)]) then
        begin
           delete(wTEXTO,I,1);
        end;
      if (wTEXTO[I]  in [chr(39)]) then
            begin
               delete(wTEXTO,I,1);
            end;
   end;
   Result := wTexto;
   
end;



{REMOVE ACENTOS DE UMA STRING}
Function TiraAcento(Texto:String;Maiusculo:Boolean):String;
// const ComAcento = 'âäàåáãçêëèéïîíìñôöóòõûùúüÿýÄÅÁÂÀÃÇÉÊËÈÍÎÏÌÑÖÓÔÒÕÜÚÛÙÝŸ';
//       SemAcento = 'aaaaaaceeeeiiiinooooouuuuyyAAAAAACEEEEIIIINOOOOOUUUUYY';
const ComAcento = 'âäàåáãçêëèéïîíìñôöóòõûùúüÿýÄÅÁÂÀÃÇÉÊËÈÍÎÏÌÑÖÓÔÒÕÜÚÛÙÝŸªº°"!@#$%¨&*()_+-=`´[]^~,.;:/?|\<>''' + #13 + #10 + #13#10;
      SemAcento = 'aaaaaaceeeeiiiinooooouuuuyyAAAAAACEEEEIIIINOOOOOUUUUYYaoo---------------------------------   ';


  var wI:Integer;
begin
   for wI := 1 to Length(Texto)do
      begin
         if Pos(Texto[wI],ComAcento) <> 0 then
            Texto[wI] := SemAcento[Pos(Texto[wI],ComAcento)];
      end;
   if Maiusculo  then
      Result := UpperCase(Texto)
   else
      Result := Texto;
end;


function UltimoDiaMes(Data : TDateTime; lSabDom : Boolean) : TDateTime;
begin
   result := LastDay( Data );
end;

function FimDoMesData(const Data: TDateTime): boolean;
Var
  Ano, Mes, Dia: Word;
begin
  DecodeDate(Data +1, Ano, Mes, Dia);
  Result := Dia = 1;
end;

{retorna se o ano bisexto}
function AnoBiSexto(Ayear: Integer): Boolean;
begin
   Result := (AYear mod 4 = 0) and ((AYear mod 100 <> 0) or
             (AYear mod 400 = 0));

end;

function ValidarEstado(Dado : string) : boolean;
  const
   Estados = 'SPMGRJRSSCPRESDFMTMSGOTOBASEALPBPEMARNCEPIPAAMAPFNACRRRO';
  var
    Posicao : integer;
begin
   Result := True;
   if Dado <> '' then
      begin
         Posicao := Pos(UpperCase(Dado),Estados);
         if (Posicao = 0) or ((Posicao mod 2) = 0) then
            Result := false;
      end;
end;


function DiaSemana(wData:TDateTime) :String;
  const
    semana : array[1..7] of string = ('Domingo','Segunda-feira','Terça-feira','Quarta-feira','Quinta-feira','Sexta-feira','Sábado');
begin
   Result := semana[DayOfWeek(wData)];

end;

function DataExtenso(const wData:TDate) :String;
 Const
  mes : array[1..12] of string = ('Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro');
begin

   Result := IntToStr(DayOf(wData))+' de '+ mes[MonthOf(wData)]+' de '+IntToStr(YearOf(wData));
end;

function Formatar(Texto : string; TamanhoDesejado : integer; AcrescentarADireita : boolean = true; CaracterAcrescentar : char = ' ') : string;
{
   OBJETIVO: Eliminar caracteres inválidos e acrescentar caracteres à esquerda ou à direita do texto original para que a string resultante fique com o tamanho desejado

   Texto : Texto original
   TamanhoDesejado: Tamanho que a string resultante deverá ter
   AcrescentarADireita: Indica se o carácter será acrescentado à direita ou à esquerda
      TRUE - Se o tamanho do texto for MENOR que o desejado, acrescentar carácter à direita
             Se o tamanho do texto for MAIOR que o desejado, eliminar últimos caracteres do texto
      FALSE - Se o tamanho do texto for MENOR que o desejado, acrescentar carácter à esquerda
             Se o tamanho do texto for MAIOR que o desejado, eliminar primeiros caracteres do texto
   CaracterAcrescentar: Carácter que deverá ser acrescentado
}
var
   QuantidadeAcrescentar,
   TamanhoTexto,
   PosicaoInicial,
   i : integer;

begin
   case CaracterAcrescentar of
      '0'..'9','a'..'z','A'..'Z' : ;{Não faz nada}
      else
         CaracterAcrescentar := ' ';
   end;

   Texto := Trim(AnsiUpperCase(Texto));
   TamanhoTexto := Length(Texto);
   for i := 1 to (TamanhoTexto) do
   begin
      if Pos(Texto[i],' 0123456789abCdefghijklmnopqrstuvwxyzABCdEFGHIJKLMNOPQRSTUVWXYZ`~''"!@#$%^&*()_-+=|/\{}[]:;,.<>') = 0 then
      begin
         case Texto[i] of
            'Á','À','Â','Ä','Ã' : Texto[i] := 'A';
            'É','È','Ê','Ë' : Texto[i] := 'E';
            'Í','Ì','Î','Ï' : Texto[i] := 'I';
            'Ó','Ò','Ô','Ö','Õ' : Texto[i] := 'O';
            'Ú','Ù','Û','Ü' : Texto[i] := 'U';
            'Ç' : Texto[i] := 'C';
            'Ñ' : Texto[i] := 'N';
            else Texto[i] := ' ';
         end;
      end;
   end;

   QuantidadeAcrescentar := TamanhoDesejado - TamanhoTexto;
   if QuantidadeAcrescentar < 0 then
      QuantidadeAcrescentar := 0;
   if CaracterAcrescentar = '' then
      CaracterAcrescentar := ' ';
   if TamanhoTexto >= TamanhoDesejado then
      PosicaoInicial := TamanhoTexto - TamanhoDesejado + 1
   else
      PosicaoInicial := 1;

   if AcrescentarADireita then
      Texto := Copy(Texto,1,TamanhoDesejado) + StringOfChar(CaracterAcrescentar,QuantidadeAcrescentar)
   else
      Texto := StringOfChar(CaracterAcrescentar,QuantidadeAcrescentar) + Copy(Texto,PosicaoInicial,TamanhoDesejado);

   Result := AnsiUpperCase(Texto);
end;

function Modulo11(Valor: String; Base: Integer = 9; Resto : boolean = false) : string;
{
   Rotina muito usada para calcular dígitos verificadores
   Pega-se cada um dos dígitos contidos no parâmetro VALOR, da direita para a
   esquerda e multiplica-se pela seqüência de pesos 2, 3, 4 ... até BASE.
   Por exemplo: se a base for 9, os pesos serão 2,3,4,5,6,7,8,9,2,3,4,5...
   Se a base for 7, os pesos serão 2,3,4,5,6,7,2,3,4...
   Soma-se cada um dos subprodutos.
   Divide-se a soma por 11.
   Faz-se a operação 11-Resto da divisão e devolve-se o resultado dessa operação
   como resultado da função Modulo11.
   Obs.: Caso o resultado seja maior que 9, deverá ser substituído por 0 (ZERO).
}
var
   Soma : integer;
   Contador, Peso, Digito : integer;
begin
   Soma := 0;
   Peso := 2;
   for Contador := Length(Valor) downto 1 do
   begin
      Soma := Soma + (StrToInt(Valor[Contador]) * Peso);
      if Peso < Base then
         Peso := Peso + 1
      else
         Peso := 2;
   end;

   if Resto then
      Result := IntToStr(Soma mod 11)
   else
   begin
      Digito := 11 - (Soma mod 11);
      if (Digito > 9) then
         Digito := 0;
      // implementacao a partir do manual Santander - 29/05/17
      if (Soma mod 11 ) = 10  then
         Digito := 1;
      if ((Soma mod 11) = 0) or ((Soma mod 11) = 1) then
         Digito := 0;
      //  fim impl. Santander
      Result := IntToStr(Digito);
   end
end;

function Modulo10(Valor: String) : string;
{
   Rotina usada para cálculo de alguns dígitos verificadores
   Pega-se cada um dos dígitos contidos no parâmetro VALOR, da direita para a
   esquerda e multiplica-se por 2121212...
   Soma-se cada um dos subprodutos. Caso algum dos subprodutos tenha mais de um
   dígito, deve-se somar cada um dos dígitos. (Exemplo: 7*2 = 14 >> 1+4 = 5)
   Divide-se a soma por 10.
   Faz-se a operação 10-Resto da divisão e devolve-se o resultado dessa operação
   como resultado da função Modulo10.
   Obs.: Caso o resultado seja maior que 9, deverá ser substituído por 0 (ZERO).
}
var
   Auxiliar : string;
   Contador, Peso : integer;
   Digito : integer;
begin
   Auxiliar := '';
   Peso := 2;
   for Contador := Length(Valor) downto 1 do
   begin
      Auxiliar := IntToStr(StrToInt(Valor[Contador]) * Peso) + Auxiliar;
      if Peso = 1 then
         Peso := 2
      else
         Peso := 1;
   end;

   Digito := 0;
   for Contador := 1 to Length(Auxiliar) do
   begin
      Digito := Digito + StrToInt(Auxiliar[Contador]);
   end;
   Digito := 10 - (Digito mod 10);
   if (Digito > 9) then
      Digito := 0;
   Result := IntToStr(Digito);
end;

function ExtractSystemDir : String;
 Var
   Buffer : Array[0..144] of Char;
begin
   GetSystemDirectory(Buffer,144);
   //Result := FormatPath(StrPas(Buffer));
   Result := StrPas(Buffer);
end;

procedure CopiarArquivo(const cFrom, cTo : string);
 var
  OpStruc : TSHFileOpStruct;
  frombuf, tobuf : array[0..128] of Char;
begin
   FillChar(frombuf, Sizeof(frombuf), 0);
   FillChar(tobuf, Sizeof(tobuf), 0);
   StrPCopy(frombuf, cFrom);
   StrPCopy(tobuf, cTo);
   with OpStruc do
     begin
        Wnd := Application.Handle;
        wFunc := FO_COPY;
        pFrom := @frombuf;
        pTo := @tobuf;
        fFlags := FOF_NOCONFIRMATION or FOF_RENAMEONCOLLISION;
        fAnyOperationsAborted := False;
        hNameMappings := nil;
        lpszProgressTitle := nil;
     end; // with
   ShFileOperation(OpStruc);
end; // CopyDir

procedure DeletaArquivo(Arquivo:String);
begin
   if FileExists(Arquivo) then
      begin
         //CloseHandle(Pchar(Arquivo));
         DeleteFile(Pchar(Arquivo));
      end;
end;

Function DataAmericana(wPdata:String):String;
{ Objetivo :                                                  }
{ Transforma uma Data (DD/MM/YYYY) em (MM/DD/YYYY)                }
{ Consultas Sql só funcionam corretamente no padrão americano }
//
begin
// Converter datas p/ padrao americano(MM/DD/YYYY).SQL só aceita assim.
 wPdata := Copy(wPdata,4,2)+'/'+Copy(wPdata,1,2)+'/'+Copy(wPdata,7,4);
 DataAmericana := wPdata;
end;

function TestaDataStr(const S: string): boolean;
begin
   Result := True;
   if (S<>'  /  /    ') and (S<> '  /  /  ') and (copy(S,1,2)<>'  ') and (copy(S,4,2)<> '  ') and (copy(S,4,2)<> '    ')then
       begin
         try
           StrToDate(S);
           Result := True;
         except
           Result := False;
           uteis.aviso(Pchar(s+' : Data informada inválida !'));
         end;
       end
   else
     begin
         Result := False;
         uteis.aviso(Pchar(s+' : Data informada inválida !'));
     end;
end;

function LogUserWindows : String;
 var
  Registro: TRegistry;
begin
   Registro := TRegistry.Create;
   Registro.RootKey := HKEY_LOCAL_MACHINE;
   if Registro.OpenKey('Network\Logon', false) then
   begin
      result := Registro.ReadString('username');
   end;
   Registro.Free
end;


function ArrendondaValor(Num :Real; Decimal :Integer) : Real;
begin
   if (Frac(Frac(Num)*Power(10 ,decimal))*10) > 5 then
      result := trunc(Num)+ceil(Frac(Num)*Power(10 ,decimal))/100
   else
      result := trunc(Num)+trunc(Frac(Num)*Power(10 ,decimal))/100;
end;

{código de barras}
procedure CriaCodigo(Cod : String; Imagem : TCanvas);
 Const
    digitos : array['0'..'9'] of string[5]= ('00110','10001','01001','11000','00101',
                                             '10100','01100','00011','10010','01010');
 Var
   Numero : String;
   Cod1 : Array[1..1000] Of Char;
   Cod2 : Array[1..1000] Of Char;
   Codigo : Array[1..1000] Of Char;
   Digito : String;
   c1,c2 : Integer;
   x,y,z,h : LongInt;
   a,b,c,d : TPoint;
   I : Boolean;
begin
   Numero := Cod;
   for x := 1 to 1000 Do
    begin
       Cod1 [x] := #0;
       Cod2 [x] := #0;
       Codigo[x] := #0;
    end;
    c1 := 1;
    c2 := 1;
    x := 1;
    for y := 1 to Length(Numero) div 2 do
      begin
         Digito := Digitos[Numero[x ]];
         for z := 1 to 5 do
           begin
              Cod1[c1] := Digito[z];
              Inc(c1);
           end;
         Digito := Digitos[Numero[x+1]];
         for z := 1 to 5 do
           begin
              Cod2[c2] := Digito[z];
              Inc(c2);
           end;
         Inc(x,2);
      end;
    y := 5;
    Codigo[1] := '0';
    Codigo[2] := '0';
    Codigo[3] := '0';
    Codigo[4] := '0'; { Inicio do Codigo }
    for x := 1 to c1-1 do
      begin
         Codigo[y] := Cod1[x]; Inc(y);
         Codigo[y] := Cod2[x]; Inc(y);
      end;
    Codigo[y] := '1'; Inc(y); { Final do Codigo }
    Codigo[y] := '0'; Inc(y);
    Codigo[y] := '0';
    Imagem.Pen .Width := 1;
    Imagem.Brush.Color := ClWhite;
    Imagem.Pen .Color := ClWhite;
    a.x := 1; a.y := 0;
    b.x := 1; b.y := 79;
    c.x := 2000; c.y := 79;
    d.x := 2000; d.y := 0;
    Imagem.Polygon([a,b,c,d]);
    Imagem.Brush.Color := ClBlack;
    Imagem.Pen .Color := ClBlack;
    x := 0;
    i := True;
    for y:=1 to 1000 do
      begin
         if Codigo[y] <> #0 Then
         begin
            If Codigo[y] = '0' then
               h := 1
            else
               h := 3;
         a.x := x; a.y := 0;
         b.x := x; b.y := 79;
         c.x := x+h-1; c.y := 79;
         d.x := x+h-1; d.y := 0;
         if i Then
           Imagem.Polygon([a,b,c,d]);
         i := Not(i);
         x := x + h;
      end;
end;

end;

procedure MoveArquivo(sOrigem,sDestino:String;bConfirmacao:Boolean);
 var
   Dados: TSHFileOpStruct;
begin
     FillChar(Dados,SizeOf(Dados), 0);
   with Dados do
     begin
        wFunc := FO_MOVE;//FO_COPY;
        pFrom := PChar(sOrigem);
        pTo := PChar(sDestino);
        if bConfirmacao then
           fFlags:= FOF_ALLOWUNDO{com confirmacao para substituir}
        else
           fFlags:= FOF_NOCONFIRMATION;{sem confirmacao para substituir}
     end;
   SHFileOperation(Dados);
end;

Function ValorAmericano(sValor:String) : String;
  Var
   I :Integer;
begin
   if (sValor <> ' ') and (sValor <> '') then
      begin
         for I := 0 to Length(sValor) do
           begin
              if sValor[I] = ',' then
                 sValor[I]:= '.';
           end;
         Result := sValor;
      end
   else
      Result := '0.00';
end;


Function ArredondaPorDecimal(valor:Real;casasDecimais:integer):Real;
var
Fator, Fracao: Extended;
begin
{Eleva o Valor 10 ao expoente mandado na variavel casasDecimais}  
Fator:= IntPower(10, casasDecimais);
  { Multiplica o valor pelo fator e faz a conversao de string e depois para float novamente para evitar arredondamentos. }
  valor:= StrToFloat(FloatToStr(valor* Fator));
{Pega a Parte Inteira do Numero}
  Result := Int(valor);
{Pega a Parte Fracionaria}
  Fracao:= Frac(valor);
{Faz a regra de arredondamento}  
if Fracao >= 0.5 then
    Result := Result + 1
else if Fracao <= -0.5 then
    Result := Result - 1;
{O valor Final inteiro divide por 100 para transformar em decimal novamente.}
  Result := Result / Fator;
end;


end.





