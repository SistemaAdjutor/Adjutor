unit val0002;

interface

function LicencaCriptografa(sTexto:String):String;
function LicencaDescriptografa(sTexto:String):String;
function Cnpj(sTexto:String):String;
function Validade(sTexto:String):TDateTime;
function Conexoes(sTexto:String):Integer;
function PreenchezeroEsquerda(Varia: ShortString;
  N: Byte): ShortString;


implementation

uses SysUtils;


function Copies(Ch: Char; N: Byte): ShortString;
begin
  if N < 1 Then
    Result := ''
  else begin
    FillChar (Result[1], N, Ch);
    Result[0] := AnsiChar(Char(N));
  end;
end;

function PreenchezeroEsquerda(Varia: ShortString;
  N: Byte): ShortString;
begin
  if N > Length(Varia) Then
    PreencheZeroEsquerda := Copies ('0', N - Length(Varia)) + Varia
  else
    PreencheZeroEsquerda := Copy (Varia, Length(Varia) - N + 1, N);
end;


function LicencaCriptografa(sTexto:String):String;
var
  V1,V2,V3,V4,V5:Integer;
begin
  V1 := StrToInt(COPY(sTexto,0,5));
  V2 := StrToInt(COPY(sTexto,6,5));
  V3 := StrToInt(COPY(sTexto,11,5));
  V4 := StrToInt(COPY(sTexto,16,5));
  V5 := StrToInt(COPY(sTexto,21,5));    

  V1 := V1 + 123;
  V2 := V2 + 123;
  V3 := V3 + 123;
  V4 := V4 + 123;
  V5 := V5 + 123;

  sTexto := '';

  sTexto := sTexto + PreenchezeroEsquerda(IntToStr(V1),6);
  sTexto := sTexto + PreenchezeroEsquerda(IntToStr(V2),6);
  sTexto := sTexto + PreenchezeroEsquerda(IntToStr(V3),6);
  sTexto := sTexto + PreenchezeroEsquerda(IntToStr(V4),6);
  sTexto := sTexto + PreenchezeroEsquerda(IntToStr(V5),6);

  Result := sTexto;     
end;

function LicencaDescriptografa(sTexto:String):String;
var
  V1,V2,V3,V4,V5:Integer;
begin
     if sTexto='' then
        Result := PreenchezeroEsquerda('0',25)
     Else
     begin
           V1 := StrToInt(COPY(sTexto,0,6));
           V2 := StrToInt(COPY(sTexto,7,6));
           V3 := StrToInt(COPY(sTexto,13,6));
           V4 := StrToInt(COPY(sTexto,19,6));
           V5 := StrToInt(COPY(sTexto,25,6));

           V1 := V1 - 123;
           V2 := V2 - 123;
           V3 := V3 - 123;
           V4 := V4 - 123;
           V5 := V5 - 123;

           sTexto := '';

           sTexto := sTexto + PreenchezeroEsquerda(IntToStr(V1),5);
           sTexto := sTexto + PreenchezeroEsquerda(IntToStr(V2),5);
           sTexto := sTexto + PreenchezeroEsquerda(IntToStr(V3),5);
           sTexto := sTexto + PreenchezeroEsquerda(IntToStr(V4),5);
           sTexto := sTexto + PreenchezeroEsquerda(IntToStr(V5),5);

           Result := sTexto;
     end;
end;

function Cnpj(sTexto:String):String;
begin
  sTexto := LicencaDescriptografa(sTexto);
  Result := copy(sTexto,0,14);
end;

function Validade(sTexto:String):TDateTime;
var
  Data:TDateTime;
  sAux,Otra:String;
begin
  sTexto := LicencaDescriptografa(sTexto);
  try
    sAux := COPY(sTexto,15,8);
    Otra := COPY(sAux,1,2)+'/'+COPY(sAux,3,2)+'/'+COPY(sAux,5,4);
    Data := StrToDate(Otra);
  except
    Data := Date;
  end;
  Result := Data;
end;

function Conexoes(sTexto:String):Integer;
var
   Numero:Integer;
begin
     sTexto := LicencaDescriptografa(sTexto);
     try
        Numero := StrToInt(COPY(sTexto,23,3));
     except
           Numero := 1;
     end;
     Result := Numero;

end;

end.
