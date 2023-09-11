unit UFuncoes;

interface

uses
  Messages,SysUtils, Printers, WinProcs, Dialogs, Menus,forms, BaseForm,  BaseForm,IniFiles,
  DB, IB, DBTables, {{DBXpress,}  DBClient, Windows,  Mask, StdCtrls,  rx rxToolEdit, RXDBCtrl,
  Buttons, Variants, Classes,ComCtrls, ShellApi, Registry, DateUtils, Math,
  QGraphics, Winsock, SqlExpr,URLMon;

type
  TAbreFecha = (afAbrir, afFechar);

Var
  sSeleciona :AnsiString;
  SQLConsulta:TSQLQuery;

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
procedure Liberar(Sender: TObject; Status: Boolean);
{deabilita menus e habilta}
procedure DesabilitaHabilitaMenus(Status: Boolean; Form: TComponent; NomeComp:String);

{código de barras}
procedure CriaCodigoBarras(Cod : String; Imagem : TCanvas);

{versao sistema}
function GetBuildInfo:string;

function DataAmericana(wPdata:String):String;

function ValorAmericano(sValor:String) : String;

function QuantidadeAmericano(sValor:String) : String;

function TestaDataStr(const S: string): boolean;

function PreenchezeroEsquerda(Varia :ShortString; N : Byte) : ShortString;

Function RoundDecimal(AValue:Real;ADecimal:integer):Real;
{procedimento para impressão de linhas em um relatório}
procedure PrintaFolha(Nlin,Ncol: Integer;Var LinhaAtual: Integer; Var Arquivo:
Text;Texto: Variant);

{mascra para nosso numero banco}
function MascraNossoNumero(sNossoNumero :ShortString) :ShortString;

function VerificaPracaCobrancaBanco(iCodCliente,iCodBanco:String):Boolean;

Function CalcularCustoMedioProduto(sCodigoProduto:String;cCustoNovo,cQtdeEntrada,cQtdeAnterior:Real):Real;

{funcao para mascra cnpj cnpf}
function MascraCNPJ_CNPF(Varia :ShortString) :ShortString;
{funcao para telefone}
function MascraTELEFONE(Varia :ShortString) :ShortString;

function ExtrairAspas(wTexto:String):String;

Function TiraAcento(Texto:String;Maiusculo:Boolean):String;

Function TrocarAcento(Texto:String;MaiusculoParaMinusculo:Boolean):String;

function PrimeiroDiadoMes(Data : TDateTime; lSabDom : Boolean) : TDateTime;

function UltimoDiaMes(Data : TDateTime; lSabDom : Boolean) : TDateTime;

function RetornaIPmaquina:String;

function RetornaIPInternet:String;


function RetornaInformacaoRede(Tipo:Integer) : string;

{ Esta função retorna true se a data passada como parâmetro é fim de mês.
Retorna false caso contrário. }
function FimDoMesData(const Data: TDateTime): boolean;
{retorna se o ano bisexto}
function AnoBiSexto(Ayear: Integer): Boolean;

function DataExtenso(wData:TDateTime) :String;

function ValidarEstado(Dado : string) : boolean;

function ValidarCepEstado(sEstado,sCEP:String) : Boolean;

function DiaSemana(wData:TDateTime) :String;

function Formatar(Texto : string; TamanhoDesejado : integer; AcrescentarADireita : boolean = true; CaracterAcrescentar : char = ' ') : string;

function Modulo11(Valor: String; Base: Integer = 9; Resto : boolean = false) : string;

function Modulo10(Valor: String) : string;

function ExtractSystemDir : String;

function CalcularDescontoFinal(rDesc1,rDesc2,rDesc3,rDesc4,rDesc5,rDesc6,rDesc7,rDesc8,rDesc9,rDesc10:Real):Real;

{procedimento para impressão de linhas em um relatório}
procedure PrintaFolhaDuplicata(Nlin,Ncol: Integer;Var LinhaAtual: Integer; Var Arquivo:
Text;Texto: Variant);

{********************************funçoes***********************************}

Function IIF (Const wCondicao, wCorreto, wErrado: Variant) : Variant;

{Verificando se a Impressora está On Line}
//function PrinterOnLine: Boolean;
function PrinterOnLine: Boolean;

{Prenche, à direita, com espaco  até o tamanho total "N"}
Function PreencheDireita  (Varia :ShortString; N : Byte) : ShortString;

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

function ValidaEstado(sUF:String):Boolean;

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

{Retorna Próxima palavra após os espaços determinados por "BlankToSkip"}
Function NextWord (S : ShortString; BlankToSkip, Mode : Byte) : ShortString;

{Retorna a Posição Inicial da Próxima palavra após o caracter indicado por "InitPos"}
Function NextPosWord (S : ShortString; InitPos, Mode : Byte) : Byte;

{Gera número por extenso}
function extenso (valor: real): string;

{Prenche, à esquerda, uma string "S" com caracteres "P" até o tamanho total "N"}
Function PrencheZeroEsquerda (Num_Zero :ShortString; N : Byte) : ShortString;

Function PreencheZeroDireita (Varia    :ShortString; N : Byte) : ShortString;

{verifica o digito do codigo de barrras}
function CalculaDigitoBarra(CodigoBarra: String) : String;

{rotina para calculo do produto com digito}
function CalculaCodigoModulo10(Numero : String) : String;
//function CalculaCodigoProdutoModulo11(Numero : String) : String;

Function MesExtenso (xMes : Variant) : string; 

{valida data}
function ValidaData(datas: String ; wFOCO:TDateEdit): String;
//Criptografa
function Criptografa(senha: String): String;
//DesCriptografa
function DesCriptografa(cifrado: String): String;
//coloca mascra CNPJ/CNPF
function ColocaMascraCNPJ_CNPF(NUMERO: String): String;

function TestaImpressoraMatricial :Boolean;

function ArredondaFloat(x : Real): Real;

function ArrendondaValor(Num :Real; Decimal :Integer) : Real;

function RoundNExtend(x: Extended; d: Integer): Extended;

//extrair somente numeros
function ExtrairNumeros(wTEXTO:String): String;

function ExtrairAfa_Numeros(wTEXTO:String): String;

//extrair caracter
function ExtrairCarecter(wTEXTO:String): String;

function ExtrairCarecterDefenido(sTexto:AnsiString;cCarecter:Char;sPreencheEspaco:String) :AnsiString;

procedure CopiarArquivo(const cFrom, cTo : string);

procedure DeletaArquivo(Arquivo:String);

procedure TrataErroIB( E: EIBInterBaseError );

function  funGetNomeUser: String;

procedure MoveArquivo(sOrigem,sDestino:String;bConfirmacao:Boolean);

function RetornaResolucaoVideo : String;

function FireBirdCarregado(Tipo:String = ''):Boolean;

procedure MudaResolucaoVideo(sLargura,sAltura:Integer);

function MargemPeloMarkup(cCusto,cMargem:Currency):Currency;

function RetornaPorcentagemMarkup(cCusto,cPrecoVenda:Currency):Currency;

function RetornaPorcentagemMargem(cPreco,cCusto:Currency):Currency;

function RetornaNumeroPar(iNumeroInteiro: Integer) : boolean;

function AlteraEstoque(sCampo_Fornecedor,sCampo_Estoque:String):Boolean;

Function CalculaC3cheque(numero: string): String;

function Valida_CMC7cheque(Entrada:String) : Boolean;

Function Inscricao        ( Inscricao, Tipo   : String ) : Boolean;

Function Mascara_Inscricao( Inscricao, Estado : String ) : String;

function  CalculaEquivalenciaPrecoTabela(rDesconto1,rDesconto2,rDesconto3,
          rDesconto4,rDesconto5,rDesconto6,rDesconto7,rPrecoVenda:Real) : Real;

Function PreenchaData(sData :String):String;

Function RetornaValorParcelamento(C, J, N: Real): Real;

function DownloadFile(Source, Dest: string): Boolean;

function  VerificaFechamentoExistente(wData:TDateTime):Boolean;


implementation








{******************************procedimentos*******************************}
procedure Liberar(Sender: TObject; Status: Boolean);
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
   QtdeZero := PrencheZeroEsquerda(QtdeZero,Zero);
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
Function PreencheDireita (Varia :ShortString; N : Byte) : ShortString;
begin
   if N > Length(Varia) Then
     begin
        PreencheDireita := Varia + Copies (EspacoBranco, N - Length(Varia));
     end
   else
      begin
         PreencheDireita := Copy (Varia, 1, N);
      end;
end;

{Prenche, à esquerda, com espaco  até o tamanho total "N"}
Function PreencheEsquerda (Varia :ShortString; N : Byte) : ShortString;
begin
 if N > Length(varia) Then
    begin
       PreencheEsquerda := Copies ('0', N - Length(varia)) + varia;
    end
  else
    begin
       PreencheEsquerda := Copy (Varia, Length(Varia) - N + 1, N);
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
    Result[0] := Char(N);
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
if SourceStr[I] = FromChar Then
SourceStr[I] := ToChar
else
Break;
if Mode <> ReplaceRight Then
For I := 1 To Length (SourceStr) Do
If SourceStr[I] = FromChar Then
SourceStr[I] := ToChar
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
While (Byte (SourceStr[0]) > 0) and (SourceStr[Byte (SourceStr[0])] = CharToStrip) Do
Dec (SourceStr[0]);
if Mode <> ReplaceRight Then begin
I := 1;
While (I <= Byte(SourceStr[0])) and (SourceStr[I] = CharToStrip) Do
Inc (I);
if I > 1 Then
SourceStr := Copy (SourceStr, I, 255);
if Mode = ReplaceAll Then begin
For I := 1 To Byte (SourceStr[0]) Do
if SourceStr[I] <> CharToStrip Then
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
   while P > 0 Do
     begin
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
   For I  := Length(S) DownTo 1 Do
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

{Retorna Próxima palavra após os espaços determinados por "BlankToSkip"}
Function NextWord (S : ShortString; BlankToSkip, Mode : Byte) : ShortString;
Var
PosAnt, PosFin : Integer;
Begin
if Mode = mdAscend Then
PosFin := 1
else
PosFin := Length (S);
Inc (BlankToSkip);
Repeat
PosAnt := PosFin;
PosFin := NextPosWord (S, PosFin, Mode);
Dec (BlankToSkip);
Until (BlankToSkip = 0) or (PosFin = 0);
if BlankToSkip > 0 Then
Result := ''
else begin
if PosFin = 0 Then
if Mode = mdAscend Then
PosFin := Length (S) + 1;
if Mode = mdAscend Then
Result := StripChar (Copy (S, PosAnt, PosFin - PosAnt), EspacoBranco, ReplaceRight)
else
Result := StripChar (Copy (S, PosFin + 1, PosAnt - PosFin), EspacoBranco, ReplaceLeft);
end;
End;

{Retorna a Posição Inicial da Próxima palavra após o caracter indicado por "InitPos"}
Function NextPosWord (S : ShortString; InitPos, Mode : Byte) : Byte;
//Var I : Integer;
Begin
//InitPos := Min (Max (InitPos, 1), Length(S));
//if Mode = mdDescend Then
//I := -1
//else
//I := 1;
//while ((InitPos <= Length(S)) And (InitPos > 0) And (S[InitPos] <> ' ')) Do
//Inc (InitPos, I);
//while ((InitPos <= Length(S)) And (InitPos > 0) And (S[InitPos] = ' ')) Do
//Inc (InitPos, I);
//if InitPos > Length (S) Then
//InitPos := 0;
//NextPosWord := InitPos;
End;

{Prenche, à esquerda, uma string "S" com caracteres "P" até o tamanho total "N"}
Function PreencheZeroDireita (Varia  :ShortString; N : Byte) : ShortString;
begin
   if N > Length(Varia) Then
     begin
        PreencheZeroDireita := Varia + Copies ('0', N - Length(Varia));
     end
   else
      begin
         PreencheZeroDireita := Copy (Varia, 1, N);
      end;
end;
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
      ColocaMascraCNPJ_CNPF := copy(NUMERO,0,2)+'.'+copy(NUMERO,3,3)+'.'+copy(NUMERO,6,3)+'/'+copy(NUMERO,9,4)+'-'+copy(NUMERO,13,2)
  {cnpf}
   else
   if Length(Trim(NUMERO)) = 11 then
      ColocaMascraCNPJ_CNPF := copy(NUMERO,0,3)+'.'+copy(NUMERO,4,3)+'.'+copy(NUMERO,7,3)+'-'+copy(NUMERO,10,2);
end;

function ValidaData(datas: String ;wFOCO:TDateEdit): String;
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
        if bissexto = True then
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
procedure TrataErroIB( E: EIBInterBaseError );
var ErroIB:string;

sqlcode:integer;

begin
   sqlcode := E.IBErrorCode;
   case sqlcode of
        335544517:ErroIB := 'Exceção encontrata no banco de dados. '+E.MESSAGE;
        335544472:ErroIB := 'Você não tem Acesso ao Banco de Dados. Erro de Acesso, contate o Administrador';
        335544375:ErroIB := 'O Serviço do Interbase está desligado.'+#13+'Causas prováveis:'+#13+
        '(*) O Interbase Server não foi instalado'+#13+
        '(*) O Interbase Server foi desinstalado do Servidor'+#13+
        '(*) O Serviço do Interbase Server não está sendo ativado na inicalização do Windows'+#13+
        'digite CTRL+ALT+DEL Verifique se o serviço INTERBASE SERVER está ativo';
        335544324:ErroIB := 'Endereço inválido para o Banco de dados. Conexão não está Ativa';
        //335544402,335544415:IDATual.ErroIB :='Internal ERROR. ';
        335544402,335544415:ErroIB :='Internal ERROR. ';
        335544363:ErroIB := 'Operação inválida. Transação inválida ou Nula. Reinicie o Computador ';
        335544321:ErroIB := 'Expressão numérica inválida ou string truncada. Contate Suporte';
        335544346:ErroIB := 'Tabelas de Sistema Corrompidas';
        335544404:ErroIB := 'Foi detecado corrupção no Banco de Dados.'+#13+ ' Anote o módulo que está operando e contate Rodrigo'+#13+'ou email wsi@terra.com.br';
        335544451:ErroIB := 'A atualização atual conflita com outro processo na rede'+#13+
        'O Registro pode estar sendo atualizado por outro Usuário';
        335544466:ErroIB := 'Este registro não pode ser excluído porque' + #13 +
        'Existem outros que dependem dele e que não foram excluídos';
        335544721:ErroIB := 'O servidor de rede selecionado no SetupServer não foi encontrado';
        335544741:ErroIB := 'Base de Dados está fora do ar. Favor entrar' + #13 +
        'em contato com o responsável pela rede na ' + #13 +
        'localidade selecionada ou tente mais tarde.';
        335544753:ErroIB := 'Usuário Já Existente no Interbase';
        335544754:ErroIB := 'Erro Adicionando Usuário';
        335544755:ErroIB := 'Erro Modificando dados do Usuário';
        335544756:ErroIB := 'Erro deletando Usuário do Servidor Interbase';
        335544531:ErroIB := 'Voce não pode entrar com um Registro NULO.';
        335544751:ErroIB := 'O Protocolo de Rede informado na Conexão com o servidor Interbase é Inválido';
        335544726:ErroIB := 'Erro Lendo dados da Conexão. Contate o Adminstrador da Rede';
        335544722:ErroIB := 'Erro na Conexão de Rede Local';
        335544706:ErroIB := 'O Nome do Servidor não foi Encontrado';
        335544676:ErroIB := 'Falta de Memória no Servidor Interbase';
        335544665:ErroIB := 'Chave Primária já existente. Regitro não pode ser duplicado';
   end;
   if erroib <> '' then
      showmessage(ErroIB);
end;

Function PreencheZeroEsquerda(Varia :ShortString; N : Byte) : ShortString;
begin
   if N > Length(Varia) Then
     begin
        PreencheZeroEsquerda := Copies ('0', N - Length(Varia)) + Varia;
      end
   else
      begin
         PreencheZeroEsquerda := Copy (Varia, Length(Varia) - N + 1, N);
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


function ExtrairCarecterDefenido(sTexto:AnsiString;cCarecter:Char;sPreencheEspaco:String) :AnsiString;
Var
  I:Integer;
begin
   for I := 1 to Length(sTexto) do
   begin
      if (sTexto[I] in [cCarecter]) then
        begin
           Delete(sTexto,I,1);
           if (sPreencheEspaco = 'S') then
              Insert(EspacoBranco,sTexto,I);

        end;
   end;
   Result := sTexto;
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
      if (wTEXTO[I]  in [chr(44)]) then
            begin
               delete(wTEXTO,I,1);
            end;
   end;
   Result := wTexto;
   
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
   {
   result := Copy (IntToStr (100 + v1), 3, 2) + '.' +
   Copy (IntToStr (100 + v2), 3, 2) + '.' +
   Copy (IntToStr (100 + v3), 3, 2) + '.' +
   Copy (IntToStr (100 + v4), 3, 2);
   }
end;

Function TrocarAcento(Texto:String;MaiusculoParaMinusculo:Boolean):String;
 const Minusculo = 'âäàåáãçêëèéïîíìñôöóòõûùúüÿý';
       Maiusculo = 'ÄÅÁÂÀÃÇÉÊËÈÍÎÏÌÑÖÓÔÒÕÜÚÛÙÝŸ';
  var wI:Integer;
begin
   if (MaiusculoParaMinusculo) then
      begin
         for wI := 1 to Length(Texto)do
            begin
               if Pos(Texto[wI],Maiusculo) <> 0 then
                  Texto[wI] := Minusculo[Pos(Texto[wI],Maiusculo)];
            end;
      end
   else
   if (MaiusculoParaMinusculo = False) then
      begin
         for wI := 1 to Length(Texto)do
            begin
               if Pos(Texto[wI],Minusculo) <> 0 then
                  Texto[wI] := Maiusculo[Pos(Texto[wI],Minusculo)];
            end;
      end;
   Result := Texto;
end;

{REMOVE ACENTOS DE UMA STRING}
Function TiraAcento(Texto:String;Maiusculo:Boolean):String;
 const ComAcento = 'âäàåáãçêëèéïîíìñôöóòõûùúüÿýÄÅÁÂÀÃÇÉÊËÈÍÎÏÌÑÖÓÔÒÕÜÚÛÙÝŸ';
       SemAcento = 'aaaaaaceeeeiiiinooooouuuuyyAAAAAACEEEEIIIINOOOOOUUUUYY';
  var wI:Integer;
begin
   for wI := 1 to Length(Texto)do
      begin
         if Pos(Texto[wI],ComAcento) <> 0 then
            Texto[wI] := SemAcento[Pos(Texto[wI],ComAcento)];
      end;
   if Maiusculo = true then
      Result := UpperCase(Texto)
   else
      Result := Texto;
end;

{}
function PrimeiroDiadoMes(Data : TDateTime; lSabDom : Boolean) : TDateTime;
 var
  Ano, Mes, Dia : word;
  DiaDaSemana : Integer;
begin
   DecodeDate (Data, Ano, Mes, Dia);
   Dia := 1;
   if lSabDom Then
      begin
         DiaDaSemana := DayOfWeek (Data);
         if DiaDaSemana = 1 Then
            Dia := 2
         else
         if DiaDaSemana = 7 Then
            Dia := 3;
      end;
   PrimeiroDiadoMes      := EncodeDate (Ano, Mes, Dia);
   
end;

function UltimoDiaMes(Data : TDateTime; lSabDom : Boolean) : TDateTime;
  var
    Ano, Mes, Dia : word;
    AuxData : TDateTime;
    DiaDaSemana : Integer;
begin
   AuxData := PrimeiroDiadoMes (IncMonth(Data), False) - 1;
   if lSabDom Then
      begin
         DecodeDate (Auxdata, Ano, Mes, Dia);
         DiaDaSemana := DayOfWeek (AuxData);
         if DiaDaSemana = 1 Then
            Dia := Dia - 2
         else
         if DiaDaSemana = 7 Then
            Dec (Dia);
         AuxData := EnCodeDate (Ano, Mes, Dia);
      end;
   //UltimoDiaMesUtil := AuxData;
   result := AuxData;
end;
{ Esta função retorna true se a data passada como parâmetro é fim de mês.
Retorna false caso contrário. }
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

function ValidarCepEstado(sEstado,sCEP:String) : Boolean;
 var
  iCEP1 :Integer;
begin
{   sCEP  := copy(sCEP,1,5) + copy(sCEP,7,3);
   iCEP1 := StrToInt(copy(sCEP,1,3));
   if Length(trim(sCEP)) > 0 then
     begin
        if (StrToInt(sCEP) <= 1000000.0) THEN
           begin
              uteis.aviso('C.E.P. tem que ser maior que [01000-000] !');
              result := False;
           end
        else
           begin
             if Length(trim(copy(iCEP1,6,3))) < 3 THEN
                result := FALSE
else if (cEstado = 'SP') AND (iCEP11 >= 10 ) AND (iCEP11 <= 199) THEN
RESULT := TRUE
else if (cEstado = 'RJ') AND (iCEP11 >= 200) AND (iCEP11 <= 289) THEN
Result := True
else if (cEstado = 'ES') AND (iCEP11 >= 290) AND (iCEP11 <= 299) THEN
Result := True
else if (cEstado = 'MG') AND (iCEP11 >= 300) AND (iCEP11 <= 399) THEN
Result := True
else if (cEstado = 'BA') AND (iCEP11 >= 400) AND (iCEP11 <= 489) THEN
Result := True
else if (cEstado = 'SE') AND (iCEP11 >= 490) AND (iCEP11 <= 499) THEN
Result := True
else if (cEstado = 'PE') AND (iCEP11 >= 500) AND (iCEP11 <= 569) THEN
Result := True
else if (cEstado = 'AL') AND (iCEP11 >= 570) AND (iCEP11 <= 579) THEN
Result := True
else if (cEstado = 'PB') AND (iCEP11 >= 580) AND (iCEP11 <= 589) THEN
Result := True
else if (cEstado = 'RN') AND (iCEP11 >= 590) AND (iCEP11 <= 599) THEN
Result := True
else if (cEstado = 'CE') AND (iCEP11 >= 600) AND (iCEP11 <= 639) THEN
Result := True
else if (cEstado = 'PI') AND (iCEP11 >= 640) AND (iCEP11 <= 649) THEN
Result := True
else if (cEstado = 'MA') AND (iCEP11 >= 650) AND (iCEP11 <= 659) THEN
Result := True
else if (cEstado = 'PA') AND (iCEP11 >= 660) AND (iCEP11 <= 688) THEN
Result := True
else if (cEstado = 'AM') AND ((iCEP11 >= 690) AND (iCEP11 <= 692) OR (iCEP11 >= 694) AND (iCEP11 <= 698)) THEN
RESULT := True
else if (cEstado = 'AP') AND (iCEP11 = 689) THEN
RESULT := True
else if (cEstado = 'RR') AND (iCEP11 = 693) THEN
RESULT := True
else if (cEstado = 'AC') AND (iCEP11 = 699) THEN
RESULT := True
else if ((cEstado = 'DF') OR (cEstado = 'GO')) AND (iCEP11 >= 000)AND(iCEP11 <= 999)THEN
RESULT := True
else if (cEstado = 'TO') AND (iCEP11 >= 770) AND (iCEP11 <= 779) THEN
Result := True
else if (cEstado = 'MT') AND (iCEP11 >= 780) AND (iCEP11 <= 788) THEN
Result := True
else if (cEstado = 'MS') AND (iCEP11 >= 790) AND (iCEP11 <= 799) THEN
Result := True
else if (cEstado = 'RO') AND (iCEP11 = 789) THEN
Result := True
else if (cEstado = 'PR') AND (iCEP11 >= 800) AND (iCEP11 <= 879) THEN
Result := True
else if (cEstado = 'SC') AND (iCEP11 >= 880) AND (iCEP11 <= 899) THEN
Result := True
else if (cEstado = 'RS') AND (iCEP11 >= 900) AND (iCEP11 <= 999) THEN Result := True else
RESULT := False
end;
end
else
RESULT := True;
end;
 }
end;

function DiaSemana(wData:TDateTime) :String;
  const
    semana : array[1..7] of string = ('Domingo','Segunda-feira','Terça-feira','Quarta-feira','Quinta-feira','Sexta-feira','Sábado');
begin
   Result := semana[DayOfWeek(wData)];

end;

function DataExtenso(wData:TDateTime) :String;
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
      if Pos(Texto[i],' 0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ`~''"!@#$%^&*()_-+=|/\{}[]:;,.<>') = 0 then
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
   //wPdata := Copy(wPdata,4,2)+'/'+Copy(wPdata,1,2)+'/'+Copy(wPdata,7,4);
   //DataAmericana := wPdata;
   if (wPData = '') then
      DataAmericana := '01/01/1900'
   else
      DataAmericana := FormatDateTIme('mm/dd/yyyy',StrToDate(wPData));
end;

function ValorAmericano(sValor:String) : String;
  Var
   I,X:Integer;
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

function QuantidadeAmericano(sValor:String) : String;
  Var
   I,X:Integer;
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
      Result := '0.000';
end;

function TestaDataStr(const S: string): boolean;
begin
   Result := True;
   if (S <> '  /  /    ') and (S <> '  /  /  ') and (copy(S,1,2) <> '  ') and (copy(S,4,2) <>  '  ') and (copy(S,4,2) <>  '    ')then
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

function funGetNomeUser: String;
 var
  vobjRegistro : TRegistry;
begin
   vobjRegistro := TRegistry.Create;
   try
     case Win32PlatFrmBase of
        VER_PLAtFrmBase_WIN32_WINDOWS:begin // Windows 9x
                                      vobjRegistro.RootKey := HKEY_LOCAL_MACHINE;
                                      if vobjRegistro.OpenKey('\Network\Logon', True) then
                                         Result := vobjRegistro.ReadString('username');
                                   end;
        VER_PLAtFrmBase_WIN32_NT: begin // Windows XP
                                  vobjRegistro.RootKey := HKEY_CURRENT_USER;
                                  if vobjRegistro.OpenKey('\Software\Microsoft\Windows\CurrentVersion\Explorer', True) then
                                     Result := vobjRegistro.ReadString('Logon User Name');
                               end;
     end;

   finally
      vobjRegistro.Free;
   end;

end;

function ArrendondaValor(Num :Real; Decimal :Integer) : Real;
begin
   if (Frac(Frac(Num)*Power(10 ,decimal))*10) > 5 then
      result := trunc(Num)+ceil(Frac(Num)*Power(10 ,decimal))/100
   else
      result := trunc(Num)+trunc(Frac(Num)*Power(10 ,decimal))/100;
end;

{código de barras}
procedure CriaCodigoBarras(Cod : String; Imagem : TCanvas);
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
    Imagem.Pen .Color  := ClBlack;
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

function RetornaResolucaoVideo : String;
// const
//  ScreenWidth: LongInt = 800;
//  ScreenHeight: LongInt = 600;
begin
   if (Screen.Width = 640)
   and(Screen.Height = 480) then
      Result := '640X480'
   else
   if (Screen.Width = 800)
   and(Screen.Height = 480) then
      Result := '800X480'
   else
   if (Screen.Width = 800)
   and(Screen.Height = 600) then
      Result := '800X600'
   else
   if (Screen.Width = 1024)
   and(Screen.Height = 576) then
      Result := '1024X576'
   else
   if (Screen.Width = 1024)
   and(Screen.Height = 768) then
      Result := '1024X768'
   else
   Result := 'INDEFINIDO';
end;

procedure MudaResolucaoVideo(sLargura,sAltura:Integer);
 var
   DeviceMode: TDeviceMode;
   sLarguraAnterior,
   sAlturaAnterior:Integer;
begin
  {resolução anterior}
   sLarguraAnterior  := GetSystemMetrics(SM_CXSCREEN);
   sAlturaAnterior   := GetSystemMetrics(SM_CYSCREEN);
  {muda}
   with DeviceMode do
      begin
         dmSize       := SizeOf(TDeviceMode);
         dmPelsWidth  := sLargura;
         dmPelsHeight := sAltura;
         dmFields     := DM_PELSWIDTH or DM_PELSHEIGHT;
      end;
   uteis.aviso('Aviso o aplicativo vai ser finalizado !!!'+#13#10+
         'para restaurar as novas configuraçoes.');
   ChangeDisplaySettings(DeviceMode,0);
   Application.Terminate;
   
end;

function FireBirdCarregado(Tipo:String = ''):Boolean;
 var
   Registro   :TRegistry;
   Arquivo    : String;
   Servidor   : Boolean;
   //schm,
   //schs       : SC_Handle;
   P          : PChar;
   Espera     : Integer;
begin
(*
   Servidor := False;
   schs     := 0;
   if (FindWindow('IB_Server','InterBase Server')=0) and // FireBird 1.0
      (FindWindow('FB_Server','FireBird Server')=0) then // FireBird 1.5
       begin
          Registro := TRegistry.Create;
          try
             Registro.RootKey := HKEY_LOCAL_MACHINE;
             Registro.OpenKey('\',False);
             if Registro.OpenKey('Software\GeraSoft',False) then
                begin
                   if Registro.ValueExists('Servidor') then
                      Servidor := Registro.ReadBool('Servidor');
                      Registro.OpenKey('\',False);
                end;
             if ((Servidor) or (Tipo = 'Servidor')) then
                begin
                   if Registro.OpenKey('Software\Borland\InterBase\CurrentVersion',False) then
                      begin
                         if (Registro.ValueExists('RootDirectory')) then
                             begin
                                if (Win32PlatFrmBase = VER_PLAtFrmBase_WIN32_WINDOWS) then
                                   begin
                                      Arquivo := (Registro.ReadString('RootDirectory')+'Bin\IbGuard.Exe -a');
                                      WinExec(pansichar(Arquivo),sw_show);
                                   end
                                 else
                                 if (Win32PlatFrmBase = VER_PLAtFrmBase_WIN32_NT) then
                                    begin
                                       schm := OpenSCManager('',nil,SC_MANAGER_CONNECT);
                                       if (schm>0) then
                                          begin
                                             schs := OpenService(schm,'InterbaseServer',SERVICE_START);
                                             if (schs>0) then
                                                begin
                                                   Application.ProcessMessages;
                                                   P := Nil;
                                                   StartService(schs,0,P);
                                                end;
                                          end;
                                       CloseServiceHandle(schs);
                                       CloseServiceHandle(schm);
                                    end;
                       end;
                end;
             Espera := 0;
             while ((FindWindow('IB_Server','InterBase Server')=0) and (Espera<10)) do
                   begin
                      Sleep(500);
                      Inc(Espera);
                   end;
              end;
              finally
                  Registro.CloseKey;
                  Registro.Free;
              end;
       end;
   Result := ((not Servidor) or (FindWindow('IB_Server', 'InterBaseServer')<>0) or
             (FindWindow('FB_Server','FireBird Server')<>0))
*)             
end;

{gera preco de venda pela markup}
function MargemPeloMarkup(cCusto,cMargem:Currency):Currency;
 Var
  cDiferenca:Currency;
begin
   cDiferenca := (100 - cMargem);
  //
   Result     := ((cCusto / cDiferenca) * 100);
end;

function RetornaPorcentagemMarkup(cCusto,cPrecoVenda:Currency):Currency;
begin
   Result := (100 - ((cCusto / cPrecoVenda) * 100));
end;

function RetornaPorcentagemMargem(cPreco,cCusto:Currency):Currency;
begin
   if (cPreco > 0)
   and(cCusto > 0) then
      Result := (((cPreco / cCusto) * 100) - 100)
   else
   if (cCusto = 0) then
      Result := 100
   else
      Result := 0;
end;

function MascraNossoNumero(sNossoNumero :ShortString) :ShortString;
  Var
   I : Integer;
   sNumero:ShortString;
begin
  {inicializa variaveis}
   Result  := '';
   sNumero := '';
  //
   For I  := Length(sNossoNumero) DownTo 1 Do
     begin
        if (I = Length(sNossoNumero)) then
           sNumero := sNumero + sNossoNumero[I]+'-'
        else
        if (I = (Length(sNossoNumero) - 3)) then
           sNumero := sNumero + sNossoNumero[I]+'.'
        else
           sNumero := sNumero + sNossoNumero[I];
     end;
   Result := ReverseStr(sNumero);
end;

function RetornaNumeroPar(iNumeroInteiro: Integer) : boolean;
begin
   if (iNumeroInteiro div 2) = (iNumeroInteiro/2) then
      result := True
  else
      result := False;
end;

function ValidaEstado(sUF:String):Boolean;
const
   sEstados = 'SPMGRJRSSCPRESDFMTMSGOTOBASEALPBPEMARNCEPIPAAMAPFNACRRRO';
var
   Posicao : integer;
begin
   Result := True;
   if (sUF <> '') then
      begin
         Posicao := Pos(UpperCase(sUF),sEstados);
         if (Posicao = 0) or ((Posicao mod 2) = 0) then
            begin
               Result := False;
               uteis.aviso('O estado informado não e valido!' );
            end;
      end
   else
      begin
         Result := False;
         uteis.aviso('O estado informado não e valido!' );
      end;
end;

function RetornaIPInternet:String;
begin

end;

function RetornaIPmaquina:String;
 var
   WSAData: TWSAData;
   HostEnt: PHostEnt;
   Name:string;
begin
   WSAStartup(2, WSAData);
   SetLength(Name, 255);
   Gethostname(PChar(Name), 255);
   SetLength(Name, StrLen(PChar(Name)));
   HostEnt := gethostbyname(PChar(Name));
   with HostEnt^ do
     Result:=Format('%d.%d.%d.%d',[Byte(h_addr^[0]),
     Byte(h_addr^[1]),Byte(h_addr^[2]),Byte(h_addr^[3])]);
     WSACleanup;
end;

function RetornaInformacaoRede(Tipo:Integer) : string;
// Requer a Registry declarada na clausula uses da unit
// Tipo : 1 - Nome do Computador na rede
// 2 - Nome do Grupo de trabalho
// 3 - Descrição do computador na rede
 var
  Reg : TRegistry;
begin
   Reg := TRegistry.create;
   Result := '(n/a)';
   with Reg do
      try
        RootKey := HKEY_LOCAL_MACHINE;
        if OpenKey('SystemCurrentControlSetServicesVxDVNETSUP', false) then
           begin
              Case Tipo of
                1: Result := ReadString('ComputerName');
                2: Result := ReadString('Workgroup');
                3: Result := ReadString('Comment');
              end;
           end;
      Finally
        CloseKey;
        free;
      end;
end;

function AlteraEstoque(sCampo_Fornecedor,sCampo_Estoque:String):Boolean;
  var
    I :integer;
begin
 {rotina que verifica se o fornecedor da entrada atualiza o preco ,
  custo e margem do estoque}
 {*****************
  T = TODOS
  N = NENHUM
  M = MARGEM
  P = PRECO
  C = CUSTO
 }
  if (Trim(sCampo_Fornecedor) = 'T') then
     result := True
  else
  if (Trim(sCampo_Fornecedor) = 'N') then
     result := False
  else
     begin
        result := False;
        if (Trim(sCampo_Fornecedor) <> '') then
          begin
             for I := 1 to length(sCampo_Fornecedor) do
                begin
                   if (sCampo_Fornecedor[I] in [sCampo_Estoque[1]]) then
                      begin
                         result := True;
                         exit;
                      end
                   else
                      result := False;
                end;
          end;
     end;
end;

function CalculaC3cheque(numero: string): String;
var
  x, resto, tam, digito : integer;
  d, d_aux : string;
begin
  digito:= 0;

  d_aux    := ExtrairNumeros(numero);
  tam      := length(d_aux);
  d        := copy(d_aux,0,tam);

  for x:= 1 to length(d) do
  begin
    digito:= digito + (StrToInt(d[x])*(length(d)+2-x));
  end;

  digito   := digito * 10;
  resto    := digito mod 11;
  digito   := resto;
  resto    := digito mod 10;
  Result   := IntToStr(resto);

end;

function Valida_CMC7cheque(Entrada:String) : Boolean;
var
  campo1, campo2, campo3 : String;
begin
  Entrada := ExtrairNumeros(Entrada);
  campo1 := Copy(entrada,1,7);
  campo2 := Copy(entrada,9,10);
  campo3 := Copy(entrada,20,10);
  Result := True;
  if Modulo10(campo1) <> Copy(Entrada,19,1) then
     Result := False
  Else
  if Modulo10(campo2) <> Copy(Entrada,8,1) then
     Result := False
  Else
  if Modulo10(campo3) <> Copy(Entrada,30,1) then
     Result := False;
end;


{ Inscrições _________________________________________________________________________________________ }

Function Inscricao( Inscricao, Tipo : String ) : Boolean; Var

Contador  : ShortInt;
Casos     : ShortInt;
Digitos   : ShortInt;

Tabela_1  : String;
Tabela_2  : String;
Tabela_3  : String;

Base_1    : String;
Base_2    : String;
Base_3    : String;

Valor_1   : ShortInt;

Soma_1    : Integer;
Soma_2    : Integer;

Erro_1    : ShortInt;
Erro_2    : ShortInt;
Erro_3    : ShortInt;

Posicao_1 : string;
Posicao_2 : String;

Tabela    : String;
Rotina    : String;
Modulo    : ShortInt;
Peso      : String;

Digito    : ShortInt;

Resultado : String;
Retorno   : Boolean;

Begin

  Try

  Tabela_1 := ' ';
  Tabela_2 := ' ';
  Tabela_3 := ' ';

  {                                                                               }                                                                                                                 {                                                                                                }
  {         Valores possiveis para os digitos (j)                                 }
  {                                                                               }
  { 0 a 9 = Somente o digito indicado.                                            }
  {     N = Numeros 0 1 2 3 4 5 6 7 8 ou 9                                        }
  {     A = Numeros 1 2 3 4 5 6 7 8 ou 9                                          }
  {     B = Numeros 0 3 5 7 ou 8                                                  }
  {     C = Numeros 4 ou 7                                                        }
  {     D = Numeros 3 ou 4                                                        }
  {     E = Numeros 0 ou 8                                                        }
  {     F = Numeros 0 1 ou 5                                                      }
  {     G = Numeros 1 7 8 ou 9                                                    }
  {     H = Numeros 0 1 2 ou 3                                                    }
  {     I = Numeros 0 1 2 3 ou 4                                                  }
  {     J = Numeros 0 ou 9                                                        }
  {     K = Numeros 1 2 3 ou 9                                                    }
  {                                                                               }
  { ----------------------------------------------------------------------------- }
  {                                                                               }
  {         Valores possiveis para as rotinas (d) e (g)                           }
  {                                                                               }
  { A a E = Somente a Letra indicada.                                             }
  {     0 = B e D                                                                 }
  {     1 = C e E                                                                 }
  {     2 = A e E                                                                 }
  {                                                                               }
  { ----------------------------------------------------------------------------- }
  {                                                                               }
  {                                  C T  F R M  P  R M  P                        }
  {                                  A A  A O O  E  O O  E                        }
  {                                  S M  T T D  S  T D  S                        }
  {                                                                               }
  {                                  a b  c d e  f  g h  i  jjjjjjjjjjjjjj        }
  {                                  0000000001111111111222222222233333333        }
  {                                  1234567890123456789012345678901234567        }

  IF Tipo = 'AC'   Then Tabela_1 := '1.09.0.E.11.01. .  .  .     01NNNNNNX.14.00';
  IF Tipo = 'AC'   Then Tabela_2 := '2.13.0.E.11.02.E.11.01. 01NNNNNNNNNXY.13.14';
  IF Tipo = 'AL'   Then Tabela_1 := '1.09.0.0.11.01. .  .  .     24BNNNNNX.14.00';
  IF Tipo = 'AP'   Then Tabela_1 := '1.09.0.1.11.01. .  .  .     03NNNNNNX.14.00';
  IF Tipo = 'AP'   Then Tabela_2 := '2.09.1.1.11.01. .  .  .     03NNNNNNX.14.00';
  IF Tipo = 'AP'   Then Tabela_3 := '3.09.0.E.11.01. .  .  .     03NNNNNNX.14.00';
  IF Tipo = 'AM'   Then Tabela_1 := '1.09.0.E.11.01. .  .  .     0CNNNNNNX.14.00';
  IF Tipo = 'BA'   Then Tabela_1 := '1.08.0.E.10.02.E.10.03.      NNNNNNYX.14.13';
  IF Tipo = 'BA'   Then Tabela_2 := '2.08.0.E.11.02.E.11.03.      NNNNNNYX.14.13';
  IF Tipo = 'CE'   Then Tabela_1 := '1.09.0.E.11.01. .  .  .     0NNNNNNNX.14.13';
  IF Tipo = 'DF'   Then Tabela_1 := '1.13.0.E.11.02.E.11.01. 07DNNNNNNNNXY.13.14';
  IF Tipo = 'ES'   Then Tabela_1 := '1.09.0.E.11.01. .  .  .     0ENNNNNNX.14.00';
  IF Tipo = 'GO'   Then Tabela_1 := '1.09.1.E.11.01. .  .  .     1FNNNNNNX.14.00';
  IF Tipo = 'GO'   Then Tabela_2 := '2.09.0.E.11.01. .  .  .     1FNNNNNNX.14.00';
  IF Tipo = 'MA'   Then Tabela_1 := '1.09.0.E.11.01. .  .  .     12NNNNNNX.14.00';
  IF Tipo = 'MT'   Then Tabela_1 := '1.11.0.E.11.01. .  .  .   NNNNNNNNNNX.14.00';
  IF Tipo = 'MS'   Then Tabela_1 := '1.09.0.E.11.01. .  .  .     28NNNNNNX.14.00';
  IF Tipo = 'MG'   Then Tabela_1 := '1.13.0.2.10.10.E.11.11. NNNNNNNNNNNXY.13.14';
  IF Tipo = 'PA'   Then Tabela_1 := '1.09.0.E.11.01. .  .  .     15NNNNNNX.14.00';
  IF Tipo = 'PB'   Then Tabela_1 := '1.09.0.E.11.01. .  .  .     16NNNNNNX.14.00';
  IF Tipo = 'PR'   Then Tabela_1 := '1.10.0.E.11.09.E.11.08.    NNNNNNNNXY.13.14';
  IF Tipo = 'PE'   Then Tabela_1 := '1.14.1.E.11.07. .  .  .18ANNNNNNNNNNX.14.00';
  IF Tipo = 'PI'   Then Tabela_1 := '1.09.0.E.11.01. .  .  .     19NNNNNNX.14.00';
  IF Tipo = 'RJ'   Then Tabela_1 := '1.08.0.E.11.08. .  .  .      GNNNNNNX.14.00';
  IF Tipo = 'RN'   Then Tabela_1 := '1.09.0.0.11.01. .  .  .     20HNNNNNX.14.00';
  IF Tipo = 'RS'   Then Tabela_1 := '1.10.0.E.11.01. .  .  .    INNNNNNNNX.14.00';
  IF Tipo = 'RO'   Then Tabela_1 := '1.09.1.E.11.04. .  .  .     ANNNNNNNX.14.00';
  IF Tipo = 'RO'   Then Tabela_2 := '2.14.0.E.11.01. .  .  .NNNNNNNNNNNNNX.14.00';
  IF Tipo = 'RR'   Then Tabela_1 := '1.09.0.D.09.05. .  .  .     24NNNNNNX.14.00';
  IF Tipo = 'SC'   Then Tabela_1 := '1.09.0.E.11.01. .  .  .     NNNNNNNNX.14.00';
  IF Tipo = 'SP'   Then Tabela_1 := '1.12.0.D.11.12.D.11.13.  NNNNNNNNXNNY.11.14';
  IF Tipo = 'SP'   Then Tabela_2 := '2.12.0.D.11.12. .  .  .  NNNNNNNNXNNN.11.00';
  IF Tipo = 'SE'   Then Tabela_1 := '1.09.0.E.11.01. .  .  .     NNNNNNNNX.14.00';
  IF Tipo = 'TO'   Then Tabela_1 := '1.11.0.E.11.06. .  .  .   29JKNNNNNNX.14.00';

  IF Tipo = 'CNPJ' Then Tabela_1 := '1.14.0.E.11.21.E.11.22.NNNNNNNNNNNNXY.13.14';
  IF Tipo = 'CPF'  Then Tabela_1 := '1.11.0.E.11.31.E.11.32.   NNNNNNNNNXY.13.14';

  { Deixa somente os numeros }

  Base_1 := '';

  For Contador := 1 TO 30 Do IF Pos( Copy( Inscricao, Contador, 1 ), '0123456789' ) <> 0 Then Base_1 := Base_1 + Copy( Inscricao, Contador, 1 );

  { Repete 3x - 1 para cada caso possivel  }

  Casos  := 0;

  Erro_1 := 0;
  Erro_2 := 0;
  Erro_3 := 0;

  While Casos < 3 Do Begin

    Casos := Casos + 1;

    IF Casos = 1 Then Tabela := Tabela_1;
    IF Casos = 2 Then Erro_1 := Erro_3  ;
    IF Casos = 2 Then Tabela := Tabela_2;
    IF Casos = 3 Then Erro_2 := Erro_3  ;
    IF Casos = 3 Then Tabela := Tabela_3;

    Erro_3 := 0 ;

    IF Copy( Tabela, 1, 1 ) <> ' ' Then Begin

      { Verifica o Tamanho }

      IF Length( Trim( Base_1 ) ) <> ( StrToInt( Copy( Tabela,  3,  2 ) ) ) Then Erro_3 := 1;

      IF Erro_3 = 0 Then Begin

        { Ajusta o Tamanho }

        Base_2 := Copy( '              ' + Base_1, Length( '              ' + Base_1 ) - 13, 14 );

        { Compara com valores possivel para cada uma da 14 posições }

        Contador := 0 ;

        While ( Contador < 14 ) AND ( Erro_3 = 0 ) Do Begin

          Contador := Contador + 1;

          Posicao_1 := Copy( Copy( Tabela, 24, 14 ), Contador, 1 );
          Posicao_2 := Copy( Base_2                , Contador, 1 );

          IF ( Posicao_1  = ' '        ) AND (      Posicao_2                 <> ' ' ) Then Erro_3 := 1;
          IF ( Posicao_1  = 'N'        ) AND ( Pos( Posicao_2, '0123456789' )  =   0 ) Then Erro_3 := 1;
          IF ( Posicao_1  = 'A'        ) AND ( Pos( Posicao_2, '123456789'  )  =   0 ) Then Erro_3 := 1;
          IF ( Posicao_1  = 'B'        ) AND ( Pos( Posicao_2, '03578'      )  =   0 ) Then Erro_3 := 1;
          IF ( Posicao_1  = 'C'        ) AND ( Pos( Posicao_2, '47'         )  =   0 ) Then Erro_3 := 1;
          IF ( Posicao_1  = 'D'        ) AND ( Pos( Posicao_2, '34'         )  =   0 ) Then Erro_3 := 1;
          IF ( Posicao_1  = 'E'        ) AND ( Pos( Posicao_2, '08'         )  =   0 ) Then Erro_3 := 1;
          IF ( Posicao_1  = 'F'        ) AND ( Pos( Posicao_2, '015'        )  =   0 ) Then Erro_3 := 1;
          IF ( Posicao_1  = 'G'        ) AND ( Pos( Posicao_2, '1789'       )  =   0 ) Then Erro_3 := 1;
          IF ( Posicao_1  = 'H'        ) AND ( Pos( Posicao_2, '0123'       )  =   0 ) Then Erro_3 := 1;
          IF ( Posicao_1  = 'I'        ) AND ( Pos( Posicao_2, '01234'      )  =   0 ) Then Erro_3 := 1;
          IF ( Posicao_1  = 'J'        ) AND ( Pos( Posicao_2, '09'         )  =   0 ) Then Erro_3 := 1;
          IF ( Posicao_1  = 'K'        ) AND ( Pos( Posicao_2, '1239'       )  =   0 ) Then Erro_3 := 1;
          IF ( Posicao_1 <>  Posicao_2 ) AND ( Pos( Posicao_1, '0123456789' )  >   0 ) Then Erro_3 := 1;

        End;

        { Calcula os Digitos }

        Rotina  := ' ';
        Digitos := 000;
        Digito  := 000;

        While ( Digitos < 2 ) AND ( Erro_3 = 0 ) Do Begin

          Digitos := Digitos + 1;

          { Carrega peso }

          Peso := Copy( Tabela, 5 + ( Digitos * 8 ), 2 );

          IF Peso <> '  ' Then Begin

            Rotina :=           Copy( Tabela, 0 + ( Digitos * 8 ), 1 )  ;
            Modulo := StrToInt( Copy( Tabela, 2 + ( Digitos * 8 ), 2 ) );

            IF Peso = '01' Then Peso := '06.05.04.03.02.09.08.07.06.05.04.03.02.00';
            IF Peso = '02' Then Peso := '05.04.03.02.09.08.07.06.05.04.03.02.00.00';
            IF Peso = '03' Then Peso := '06.05.04.03.02.09.08.07.06.05.04.03.00.02';
            IF Peso = '04' Then Peso := '00.00.00.00.00.00.00.00.06.05.04.03.02.00';
            IF Peso = '05' Then Peso := '00.00.00.00.00.01.02.03.04.05.06.07.08.00';
            IF Peso = '06' Then Peso := '00.00.00.09.08.00.00.07.06.05.04.03.02.00';
            IF Peso = '07' Then Peso := '05.04.03.02.01.09.08.07.06.05.04.03.02.00';
            IF Peso = '08' Then Peso := '08.07.06.05.04.03.02.07.06.05.04.03.02.00';
            IF Peso = '09' Then Peso := '07.06.05.04.03.02.07.06.05.04.03.02.00.00';
            IF Peso = '10' Then Peso := '00.01.02.01.01.02.01.02.01.02.01.02.00.00';
            IF Peso = '11' Then Peso := '00.03.02.11.10.09.08.07.06.05.04.03.02.00';
            IF Peso = '12' Then Peso := '00.00.01.03.04.05.06.07.08.10.00.00.00.00';
            IF Peso = '13' Then Peso := '00.00.03.02.10.09.08.07.06.05.04.03.02.00';
            IF Peso = '21' Then Peso := '05.04.03.02.09.08.07.06.05.04.03.02.00.00';
            IF Peso = '22' Then Peso := '06.05.04.03.02.09.08.07.06.05.04.03.02.00';
            IF Peso = '31' Then Peso := '00.00.00.10.09.08.07.06.05.04.03.02.00.00';
            IF Peso = '32' Then Peso := '00.00.00.11.10.09.08.07.06.05.04.03.02.00';

            { Multiplica }

            Base_3 := Copy( ( '0000000000000000' + Trim( Base_2 ) ), Length( ( '0000000000000000' + Trim( Base_2 ) ) ) - 13, 14 );

            Soma_1 := 0;
            Soma_2 := 0;

            For Contador := 1 To 14 Do Begin

              Valor_1 := ( StrToInt( Copy( Base_3, Contador, 01 ) ) * StrToInt( Copy( Peso, Contador * 3 - 2, 2 ) ) );

              Soma_1  := Soma_1 + Valor_1;

              IF Valor_1 > 9 Then Valor_1 := Valor_1 - 9;

              Soma_2  := Soma_2 + Valor_1;

            End;

            { Ajusta valor da soma }

            IF Pos( Rotina, 'A2'  ) > 0 Then Soma_1 := Soma_2;
            IF Pos( Rotina, 'B0'  ) > 0 Then Soma_1 := Soma_1 * 10;
            IF Pos( Rotina, 'C1'  ) > 0 Then Soma_1 := Soma_1 + ( 5 + 4 * StrToInt( Copy( Tabela, 6, 1 ) ) );

            { Calcula o Digito }

            IF Pos( Rotina, 'D0'  ) > 0 Then Digito := Soma_1 Mod Modulo;
            IF Pos( Rotina, 'E12' ) > 0 Then Digito := Modulo - ( Soma_1 Mod Modulo);

            IF Digito < 10 Then Resultado := IntToStr( Digito );
            IF Digito = 10 Then Resultado := '0';
            IF Digito = 11 Then Resultado := Copy( Tabela, 6, 1 );

            { Verifica o Digito }

            IF ( Copy( Base_2, StrToInt( Copy( Tabela, 36 + ( Digitos * 3 ), 2 ) ), 1 ) <> Resultado ) Then Erro_3 := 1;

          End;

        End;

      End;

    End;

  End;

  { Retorna o resultado da Verificação }

  Retorno := FALSE;

  IF ( Trim( Tabela_1 ) <> '' ) AND ( ERRO_1 = 0 ) Then Retorno := TRUE;
  IF ( Trim( Tabela_2 ) <> '' ) AND ( ERRO_2 = 0 ) Then Retorno := TRUE;
  IF ( Trim( Tabela_3 ) <> '' ) AND ( ERRO_3 = 0 ) Then Retorno := TRUE;

  IF Trim( Inscricao ) = 'ISENTO' Then Retorno := TRUE;

  Result := Retorno;

  Except

  Result := False;

End;

End;

{ Mascara_Inscricao __________________________________________________________________________________ }

Function Mascara_Inscricao( Inscricao, Estado : String ) : String; Var

Mascara     : String;

Contador_1  : Integer;
Contador_2  : Integer;

Begin

  IF Estado = 'AC' Then Mascara := '**.***.***/***-**' ;
  IF Estado = 'AL' Then Mascara := '*********'         ;
  IF Estado = 'AP' Then Mascara := '*********'         ;
  IF Estado = 'AM' Then Mascara := '**.***.***-*'      ;
  IF Estado = 'BA' Then Mascara := '******-**'         ;
  IF Estado = 'CE' Then Mascara := '********-*'        ;
  IF Estado = 'DF' Then Mascara := '***********-**'    ;
  IF Estado = 'ES' Then Mascara := '*********'         ;
  IF Estado = 'GO' Then Mascara := '**.***.***-*'      ;
  IF Estado = 'MA' Then Mascara := '*********'         ;
  IF Estado = 'MT' Then Mascara := '**********-*'      ;
  IF Estado = 'MS' Then Mascara := '*********'         ;
  IF Estado = 'MG' Then Mascara := '***.***.***/****'  ;
  IF Estado = 'PA' Then Mascara := '**-******-*'       ;
  IF Estado = 'PB' Then Mascara := '********-*'        ;
  IF Estado = 'PR' Then Mascara := '********-**'       ;
  IF Estado = 'PE' Then Mascara := '**.*.***.*******-*';
  IF Estado = 'PI' Then Mascara := '*********'         ;
  IF Estado = 'RJ' Then Mascara := '**.***.**-*'       ;
  IF Estado = 'RN' Then Mascara := '**.***.***-*'      ;
  IF Estado = 'RS' Then Mascara := '***/*******'       ;
  IF Estado = 'RO' Then Mascara := '***.*****-*'       ;
  IF Estado = 'RR' Then Mascara := '********-*'        ;
  IF Estado = 'SC' Then Mascara := '***.***.***'       ;
  IF Estado = 'SP' Then Mascara := '***.***.***.***'   ;
  IF Estado = 'SE' Then Mascara := '*********-*'       ;
  IF Estado = 'TO' Then Mascara := '***********'       ;

  Contador_2  := 1;

  Result      := '';

  Mascara     := Mascara + '****';

  For Contador_1 := 1 To Length( Mascara ) Do Begin

    IF Copy( Mascara, Contador_1, 1 ) =  '*' Then Result := Result + Copy( Inscricao, Contador_2, 1 );
    IF Copy( Mascara, Contador_1, 1 ) <> '*' Then Result := Result + Copy( Mascara  , Contador_1, 1 );

    IF Copy( Mascara, Contador_1, 1 ) =  '*' Then Contador_2 := Contador_2 + 1;

  End;

  Result := Trim( Result );

End;
{ Fim ________________________________________________________________________________________________}


Function MesExtenso (xMes : Variant) : string;
 Var
  Dia, Mes, Ano : Word;
begin
   Mes := 0;
   Case VarType (xMes) of
      VarDate : DecodeDate (xMes, Ano, Mes, Dia);
      VarString :
      Try
        Mes := StrToInt (xMes);
      Except
      End;
   else
     Try
       Mes := Round (xMes);
     Except
     End;
   end;
   case Mes of
     1: Result := 'Janeiro';
     2: Result := 'Fevereiro';
     3: Result := 'Março';
     4: Result := 'Abril';
     5: Result := 'Maio';
     6: Result := 'Junho';
     7: Result := 'Julho';
     8: Result := 'Agosto';
     9: Result := 'Setembro';
     10: Result := 'Outubro';
     11: Result := 'Novembro';
     12: Result := 'Dezembro';
   else
     Result := '';
end;
end;

Function RoundDecimal(AValue:Real; ADecimal: integer):Real;
 Var
   strValue : string;
begin
   strValue := FloatToStrF(AValue,ffFixed,18,ADecimal);
   Result   := StrToFloat(strValue);
end;

function VerificaPracaCobrancaBanco(iCodCliente,iCodBanco:String):Boolean;
begin
   {try
     SQLConsulta := TSQLQuery.Create(Nil);
     SQLConsulta.DisableControls;
     SQLConsulta.SQLConnection := DadosBase.SQLConnection;
     SQLConsulta.SQL.Clear;
     SQLConsulta.Close;
     SQLConsulta.SQL.Add('Select CLT.CL_CODIGO,PRC_CODIGO from CLIENTES CLT join PRACA_COBRANCA PRC on (PRC.PRC_DESCRICAO_PRACA = CLT.CL_CIDADE_COB and PRC.PRC_ESTADO_PRACA = CLT.CL_UF_COB) where CLT.CL_CODIGO = '''+iCodCliente+''' and PRC.PRC_CODIGO_BANCO = '''+iCodBanco+'''');
     SQLConsulta.Open;
     if (not SQLConsulta.IsEmpty) then
        Result := True
    else
       begin
          Result := False;
          uteis.aviso('     Banco informado para cobrança bancaria não possui    '+#13#10+
                '        praça de cobrança para cidade do cliente !        '+#13#10+#13#10+
                'Verifique se a cidade de cobrança do cliente esta correta !');
       end;
   finally
     SQLConsulta.EnableControls;
     SQLConsulta.Close;
     FreeAndNil(SQLConsulta);
   end;}
end;

Function CalcularCustoMedioProduto(sCodigoProduto:String;cCustoNovo,cQtdeEntrada,cQtdeAnterior:Real):Real;
 Var
    cVARIA1,
    cVARIA2,
    cVARIA3,
    cVARIA4:Real;
begin{
   try
     SQLConsulta := TSQLQuery.Create(Nil);
     SQLConsulta.DisableControls;
     SQLConsulta.SQLConnection := DadosBase0.SQLConnection;
     SQLConsulta.SQL.Clear;
     SQLConsulta.Close;
     SQLConsulta.SQL.Add('Select EST_SALDO_ESTOQUE,EST_CUSTO_MEDIO from ESTOQUE where EST_CODIGO_PRODUTO = '''+sCodigoProduto+'''');
     SQLConsulta.Open;
     if (not SQLConsulta.IsEmpty) then
        begin
            {atualiza custo medio} {
             if ((SQLConsulta.FieldByName('EST_SALDO_ESTOQUE').AsCurrency - cQtdeAnterior) > 0) then
                begin
                   cVARIA1 := (SQLConsulta.FieldByName('EST_SALDO_ESTOQUE').AsCurrency - cQtdeAnterior);
                   if (SQLConsulta.FieldByName('EST_CUSTO_MEDIO').AsCurrency = 0) then
                      cVARIA2 := (cVARIA1 * cCustoNovo)
                   else
                      cVARIA2 := (cVARIA1 * SQLConsulta.FieldByName('EST_CUSTO_MEDIO').AsCurrency);
                   cVARIA3 := (cQtdeEntrada * cCustoNovo);
                   cVARIA4 := (cVARIA1 + cQtdeEntrada);
                   Result  := ((cVARIA2 + cVARIA3) / cVARIA4);
                end
             else
                Result := cCustoNovo;

        end
     else{produto novo o custo medio e o que entra} {
        Result := cCustoNovo;
   finally
     SQLConsulta.EnableControls;
     SQLConsulta.Close;
     FreeAndNil(SQLConsulta);
   end;}
end;

function  CalculaEquivalenciaPrecoTabela(rDesconto1,rDesconto2,rDesconto3,
          rDesconto4,rDesconto5,rDesconto6,rDesconto7,rPrecoVenda:Real) : Real;
Var
wRESULTA1,wRESULTA2,wRESULTA3,wRESULTA4,wRESULTA5,
wRESULTA6,wRESULTA7,wRESULTA8,wRESULTA9,wRESULTA10,
wMULTIPLICADOR:Real;
begin
  {inicializa variaveis}
   wMULTIPLICADOR       := 0;
  {tira resutador para multiplicar}
  {acha o fator para mutiplicação}
   if (rDesconto1 > 0) then
      begin
         wRESULTA1      := (100 - rDesconto1);
         wMULTIPLICADOR := wRESULTA1;
         if (wMULTIPLICADOR > 0) then
            wMULTIPLICADOR := (wMULTIPLICADOR /100);
      end;
   if (rDesconto2 > 0) then
      begin
         wRESULTA2      := (100 - rDesconto2);
         wMULTIPLICADOR := (wMULTIPLICADOR * wRESULTA2);
         if (wMULTIPLICADOR > 0) then
            wMULTIPLICADOR := (wMULTIPLICADOR /100);
      end;
   if (rDesconto3 > 0) then
      begin
         wRESULTA3      := (100 - rDesconto3);
         wMULTIPLICADOR := (wMULTIPLICADOR * wRESULTA3);
         if (wMULTIPLICADOR > 0) then
            wMULTIPLICADOR := (wMULTIPLICADOR /100);
      end;
   if (rDesconto4 > 0) then
      begin
         wRESULTA4      := (100 - rDesconto4);
         wMULTIPLICADOR := (wMULTIPLICADOR * wRESULTA4);
         if (wMULTIPLICADOR > 0) then
            wMULTIPLICADOR := (wMULTIPLICADOR /100);
      end;
   if (rDesconto5 > 0) then
      begin
         wRESULTA5      := (100 - rDesconto5);
         wMULTIPLICADOR := (wMULTIPLICADOR * wRESULTA5);
         if (wMULTIPLICADOR > 0) then
            wMULTIPLICADOR := (wMULTIPLICADOR /100);
      end;
   if (rDesconto6 > 0) then
      begin
         wRESULTA6      := (100 - rDesconto6);
         wMULTIPLICADOR := (wMULTIPLICADOR * wRESULTA6);
         if (wMULTIPLICADOR > 0) then
            wMULTIPLICADOR := (wMULTIPLICADOR /100);
      end;
   if (rDesconto7 > 0) then
      begin
         wRESULTA7      := (100 - rDesconto7);
         wMULTIPLICADOR := (wMULTIPLICADOR * wRESULTA7);
         if (wMULTIPLICADOR > 0) then
            wMULTIPLICADOR := (wMULTIPLICADOR /100);
      end;
  {resulta o preco para tabela de preco}
   if (wMULTIPLICADOR > 0) then
      result := (rPrecoVenda / wMULTIPLICADOR)
   else
      result := rPrecoVenda;
end;

Function PreenchaData(sData: String): String;
Var
  wDia,wMes,wAno :String;
begin
    wDia := Trim(Copy(sData,1,2));
    wMes := Trim(Copy(sData,4,2));
    wAno := Trim(Copy(sData,7,4));
    if (wDia = '') then
       wDia := PreenchezeroEsquerda(copy(DateToStr(now),1,2),2)
    else
       wDia := PreenchezeroEsquerda(wDia,2);
    if (wMes = '')or(Length(wMes)<2) then
       wMes := PreenchezeroEsquerda(copy(DateToStr(now),4,2),2)
    else
       wMes := PreenchezeroEsquerda(wMes,2);
    if (wAno = '') then
       wAno := PreenchezeroEsquerda(copy(DateToStr(now),7,4),4)
    else
       begin
           if (Length(wAno)<4) then
              begin
                  wAno := copy(DateToStr(now),7,1)+PreenchezeroEsquerda(wAno,3);
              end;
       end;
    Result := wDia+'/'+wMes+'/'+wAno;
end;

function RoundNExtend(x: Extended; d: Integer): Extended;
const 
  t: array [0..12] of int64 = (1, 10, 100, 1000, 10000, 100000,
    1000000, 10000000, 100000000, 1000000000, 10000000000,
    100000000000, 1000000000000);
begin
  if Abs(d) > 12 then
    raise ERangeError.Create('RoundN: Value must be in -12..12');
  if d = 0 then
    Result := Int(x) + Int(Frac(x) * 2)
  else
    if d > 0 then
    begin
      x := x * t[d];
      Result := (Int(x) + Int(Frac(x) * 2)) / t[d];
    end
    else
    begin  // d < 0
      x := x / t[-d];
      Result := (Int(x) + Int(Frac(x) * 2)) * t[-d];
    end;
end;

Function RetornaValorParcelamento(C, J, N: Real): Real;
begin
  {C: representa o valor do bem (capital)
   J: a taxa de juros mensal no formato '#.##'( ex: 3,00 - tres por cento)
   N: é o número de parcelas, em meses.
   Retorna o valor de cada parcela.}   
   Result := (C * ((J / 100) / ( 1-(Power (1 / (1 + (J / 100)),N)))));
end;

function DownloadFile(Source, Dest: string): Boolean;
begin
  try
    Result := UrlDownloadToFile(nil, PChar(source), PChar(Dest), 0, nil) = 0;
  except
    Result := False;
  end;
end;

function VerificaFechamentoExistente(
  wData: TDateTime): Boolean;
  Var
    iMesV,
    iAnoV:Integer;
begin
  { try
    {inicializa variaveis} {
     iMesV := MonthOf(wData);
     iAnoV := YearOf(wData);
    {verifica}    {
     FrmMenu.RwSQLCmdGeral.MontarSql    := False;
     FrmMenu.RwSQLCmdGeral.ResetaCampos := True;
     FrmMenu.RwSQLCmdGeral.Campos       := 'FHM_MES';
     FrmMenu.RwSQLCmdGeral.Condicao     := 'FHM_MES = '''+IntToStr(iMesV)+''' and FHM_ANO = '''+IntToStr(iAnoV)+'''';
     FrmMenu.RwSQLCmdGeral.Tabela       := 'FECHAMENTO_MENSAL';
     FrmMenu.RwSQLCmdGeral.Compartilhar := 'PARAMETROS';
     FrmMenu.RwSQLCmdGeral.MontarSql    := True;
     //
     DadosConsulta.CDSConsultar.Close;
     DadosConsulta.CDSConsultar.CommandText := FrmMenu.RwSQLCmdGeral.ComandoSql;
     DadosConsulta.CDSConsultar.Open;
     if (DadosConsulta.CDSConsultar.IsEmpty) then
        Result := False
     else
        Result := True;
     DadosConsulta.CDSConsultar.Close;
   except
      on E:EDataBaseError do
         begin
            uteis.erro  (Pchar('Impossível verificar o fechamento mensal !'+#13#10+
                       'Mensagem erro: '+ E.message));
         end;
   end; }
end;

function CalcularDescontoFinal(rDesc1,rDesc2,rDesc3,rDesc4,rDesc5,
        rDesc6,rDesc7,rDesc8,rDesc9,rDesc10:Real):Real;
   Var
     cCalculo:Real;
begin
   cCalculo := ( 100      - (( 100      * rDesc1 ) / 100));
   cCalculo := ( cCalculo - (( cCalculo * rDesc2 ) / 100));
   cCalculo := ( cCalculo - (( cCalculo * rDesc3 ) / 100));
   cCalculo := ( cCalculo - (( cCalculo * rDesc4 ) / 100));
   cCalculo := ( cCalculo - (( cCalculo * rDesc5 ) / 100));
   cCalculo := ( cCalculo - (( cCalculo * rDesc6 ) / 100));
   cCalculo := ( cCalculo - (( cCalculo * rDesc7 ) / 100));
   cCalculo := ( cCalculo - (( cCalculo * rDesc8 ) / 100));
   cCalculo := ( cCalculo - (( cCalculo * rDesc9 ) / 100));
   cCalculo := ( cCalculo - (( cCalculo * rDesc10) / 100));
  {mostra o resultado}
   Result   := ((100 - cCalculo ));
end;

end.

