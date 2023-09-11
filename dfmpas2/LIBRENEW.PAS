{************************************************************************
 Programa...: LIBRENEW  - Nome formulario =
 Analista...: Marcio Neu Pacheco.
 Programador: Antonio Marcos F. de Souza.
 Criação....: 03/03/1998
 Título.....:

 Comentários: LIBRENEW conten todos os procedimentos mais usados.



 **Alterações**
 Data.......: 31/03/1998
 Responsável: Marcos

************************************************************************}

unit LIBRENEW;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons,Mask, DBCtrls,Db;
{procedimentos e funções da LIBRENEW }
{declaração dos procedimentos}
 procedure TransformaMesData(MesCombo1:TcomboBox;  var DataInicial,DataFinal:String);
 procedure PegaNumParaMes(ValorCampo:String; Combo :TComboBox);
 procedure AtribMesCombMetade(Combo: TComboBox);
 procedure AtribuiAno(Combo : TComboBox);
 procedure MesNumero(Combo : TComboBox; var RetornoMes:String);

implementation

{procedimentos da dll e funções}
 
 
 
 procedure AtribuiMesCombo(MesCombo : TComboBox);far; external 'mensagen.dll';

{***inicio dos procedimentos***}

{***procedimento***}

{prcedimento pega o mes da combo e retorna o mes  em numero}
procedure MesNumero(Combo : TComboBox; var RetornoMes:String);
begin
   if UpperCase(Combo.Text) = 'JANEIRO'then
      begin
         RetornoMes := '01';
      end;
   if UpperCase(Combo.Text) = 'FEVEREIRO'then
      begin
         RetornoMes := '02';
      end;
   if UpperCase(Combo.Text) = 'MARÇO'then
      begin
         RetornoMes := '03';
      end;
   if UpperCase(Combo.Text) = 'ABRIL'then
      begin
         RetornoMes := '04';
      end;
   if UpperCase(Combo.Text) = 'MAIO'then
      begin
         RetornoMes := '05';
      end;
   if UpperCase(Combo.Text) = 'JUNHO'then
      begin
         RetornoMes := '06';
      end;
   if UpperCase(Combo.Text) = 'JULHO'then
      begin
         RetornoMes := '07';
      end;
   if UpperCase(Combo.Text) = 'AGOSTO'then
      begin
         RetornoMes := '08';
      end;
   if UpperCase(Combo.Text) = 'SETEMBRO'then
      begin
         RetornoMes := '09';
      end;
   if UpperCase(Combo.Text) = 'OUTUBRO'then
      begin
         RetornoMes := '10';
      end;
   if UpperCase(Combo.Text) = 'NOVEMBRO'then
      begin
         RetornoMes := '11';
      end;
   if UpperCase(Combo.Text) = 'DEZEMBRO'then
      begin
         RetornoMes := '12';
      end;



end;

{procedimento pega um valor e retorno o mes correspondente}
procedure PegaNumParaMes(ValorCampo:String;Combo :TComboBox);
//Var
//MesNum:array [1..12] of String;
begin

   if ValorCampo = '01'then
      begin
         Combo.Text := 'JANEIRO';
      end;
   if ValorCampo = '02'then
      begin
         Combo.Text := 'FEVEREIRO';
      end;
   if ValorCampo = '03'then
      begin
         Combo.Text := 'MARÇO';
      end;
   if ValorCampo = '04'then
      begin
         Combo.Text := 'ABRIL';
      end;
   if ValorCampo = '05'then
      begin
         Combo.Text := 'MAIO';
      end;
   if ValorCampo = '06'then
      begin
         Combo.Text := 'JUNHO';
      end;
   if ValorCampo = '07'then
      begin
         Combo.Text := 'JULHO';
      end;
   if ValorCampo = '08'then
      begin
         Combo.Text := 'JULHO';
      end;
   if ValorCampo = '09'then
      begin
         Combo.Text := 'AGOSTO';
      end;
   if ValorCampo = '10'then
      begin
         Combo.Text := 'SETEMBRO';
      end;
   if ValorCampo = '11'then
      begin
         Combo.Text := 'OUTUBRO';
      end;
   if ValorCampo = '12'then
      begin
         Combo.Text := 'DEZEMBRO';
      end;
   if ValorCampo = ''then
      begin
         Combo.Text := '';
      end;


end;

{procediemnto p/atribuir ano na combo}
procedure AtribuiAno(Combo : TComboBox);
var
PegaAno:TDateTime;
AnoCombo:String;
X:Integer;
begin
  {Atribui data atual}
   PegaAno:=Date;
  {atribui ano atual - 5 anos}
   AnoCombo := IntToStr(StrToInt(FormatDateTime('yyyy',PegaAno))- 5) ;
  {Atribui na Combo}
   for X:=1 to 15 do
     begin
        Combo.Items.Add(AnoCombo);
       {incrementa os anos ate 10}
        AnoCombo := IntToStr(StrToInt(AnoCombo) + 1);
     end;

end;

{procedimento p/atribui mes na combo}
procedure AtribMesCombMetade(Combo: TComboBox);
Var
MesMetade:array [1..12] of String;
X:Integer;
begin
  {atribui os meses}
   MesMetade[1] := 'JANEIRO';
   MesMetade[2] := 'FEVEREIRO';
   MesMetade[3] := 'MARÇO';
   MesMetade[4] := 'ABRIL';
   MesMetade[5] := 'MAIO';
   MesMetade[6] := 'JUNHO';
   MesMetade[7] := 'JULHO';
   MesMetade[8] := 'AGOSTO';
   MesMetade[9] := 'SETEMBRO';
   MesMetade[10]:= 'OUTUBRO';
   MesMetade[11]:= 'NOVEMBRO';
   MesMetade[12]:= 'DEZEMBRO';
  {Atribui na Combo}
   for X:=1 to 12 do
     begin
        Combo.Items.Add(MesMetade[X]);
     end;

end;


{procedimento de transforma mês selecionado}
procedure TransformaMesData(MesCombo1:TcomboBox;  var DataInicial,DataFinal:String);
begin
  {inicializa variaveis}
   DataInicial := '';
   DataFinal   := '';
  {Mes de Janeiro}
   if MesCombo1.Text = 'Janeiro' then
      begin
         DataInicial := '01/01/'+ FormatDatetime('yyyy',now);
         DataFinal   := '31/01/'+ FormatDatetime('yyyy',now);
      end;
  {mes de Fevereiro}
   if MesCombo1.Text = 'Fevereiro' then
      begin
         DataInicial := '01/02/'+ FormatDatetime('yyyy',now);
         DataFinal   := '28/02/'+ FormatDatetime('yyyy',now);
      end;
  {mes de Março}
   if MesCombo1.Text = 'Março' then
      begin
         DataInicial := '01/03/'+ FormatDatetime('yyyy',now);
         DataFinal   := '31/03/'+ FormatDatetime('yyyy',now);
      end;
  {mes de Abril}
   if MesCombo1.Text = 'Abril' then
      begin
         DataInicial := '01/04/'+ FormatDatetime('yyyy',now);
         DataFinal   := '30/04/'+ FormatDatetime('yyyy',now);
      end;
  {mes de Maio}
   if MesCombo1.Text = 'Maio' then
      begin
         DataInicial := '01/05/'+ FormatDatetime('yyyy',now);
         DataFinal   := '31/05/'+ FormatDatetime('yyyy',now);
      end;
  {mes de Junho}
   if MesCombo1.Text = 'Junho' then
      begin
         DataInicial := '01/06/'+ FormatDatetime('yyyy',now);
         DataFinal   := '30/06/'+ FormatDatetime('yyyy',now);
      end;
  {mes de Julho}
   if MesCombo1.Text = 'Julho' then
      begin
         DataInicial := '01/07/'+ FormatDatetime('yyyy',now);
         DataFinal   := '31/07/'+ FormatDatetime('yyyy',now);
      end;
  {mes de Agosto}
   if MesCombo1.Text = 'Agosto' then
      begin
         DataInicial := '01/08/'+ FormatDatetime('yyyy',now);
         DataFinal   := '31/08/'+ FormatDatetime('yyyy',now);
      end;
  {mes de Setembro}
   if MesCombo1.Text = 'Setembro' then
      begin
         DataInicial := '01/09/'+ FormatDatetime('yyyy',now);
         DataFinal   := '30/09/'+ FormatDatetime('yyyy',now);
      end;
  {mes de Outubro}
   if MesCombo1.Text = 'Outubro' then
      begin
         DataInicial := '01/10/'+ FormatDatetime('yyyy',now);
         DataFinal   := '31/10/'+ FormatDatetime('yyyy',now);
      end;
  {mes de Novembro}
   if MesCombo1.Text = 'Novembro' then
      begin
         DataInicial := '01/11/'+ FormatDatetime('yyyy',now);
         DataFinal   := '30/11/'+ FormatDatetime('yyyy',now);
      end;
  {mes de Dezembro}
   if MesCombo1.Text = 'Dezembro' then
      begin
         DataInicial := '01/12/'+ FormatDatetime('yyyy',now);
         DataFinal   := '31/12/'+ FormatDatetime('yyyy',now);
      end;

end;

end.
