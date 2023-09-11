unit RWFunc;
//{$D-}

interface

uses Windows,Messages,SysUtils,Printers,WinProcs,Dialogs,Menus,Forms,IniFiles,DB,
     DBTables,{{DBXpress,} SqlClientDataSet,DBClient,DBGrids,Mask,StdCtrls, Buttons,
     Classes,ComCtrls,ShellApi,Graphics,ExtCtrls,jpeg,SqlExpr,DataCad,Math,DBLocalS, JvToolEdit,
     DBLocal,Provider,Grids,Variants,Controls,{qControls,} uFinanceiroDao, BaseDbEstoqueForm, System.StrUtils;

Var
  wSql1,
  wSql2,
  wSql3,
  wSql4,
  wSql5,
  wSql6,
  wSeleciona,
  wOrdem,
  wNPedido,
  wNLetra,
  wDataI,
  wDataF           : String;
  wStatusEmpenho   : String[1];
  oTransacao    :TTransactionDesc;
  iNumeroTransacaoAtual:Integer;
  wReferencia : String;
Const
  ReplaceLeft = 0;
  ReplaceRight = 1;
  ReplaceBoth = 2;
  ReplaceAll = 3;
  EspacoBranco = #32;
  EspacoNulo = #0;

(******************************************************************************)

function Verificadiadata(const Data:Tdate;const Dias:integer;const DiasCorridos: boolean):Tdate;
function Dias_Uteis(DataI, DataF:TDateTime):Integer;



function Executa_Transacao(const sAcao: String; iNumTranscao: Integer): Integer;
function Retornar_Codigo(const sGenerator: String; iAcao : Integer): Integer;

{Retorna o Saldo do Produto do Almoxarifado}
Function  Retorna_Saldo_Almox(fRefer,fAlmox:String):Currency;

function AddMonth(const dData: TDateTime; const Months: Extended): TDateTime;

{Funcoes utilizado no sistema adjutor}
Function IncrementaMes(dData:TDateTime;iMes:Integer):String;

Function Verifica_Ultimo_Dia_Mes(dData:TDateTime):TDateTime;

//Funcao para preencher a data em objetos Data, e objetos Edit's
Function PreenchaData(wData: String): String;
//procedure TestaCGCCPF(P_Texto:String; P_CgcCpf:String);
Function TestaCGCCPF(P_Texto:String;const  P_CgcCpf:String): Boolean;
{funcao para mascra cnpj cnpf}
Function MascraCNPJ_CNPF(Varia :ShortString) :ShortString;
//
Function ColocaMascraCNPJ_CNPF(const NUMERO: String): String;
//
Function PreenchezeroEsquerda(Varia :ShortString; N : Byte) : ShortString;

function RetirarDecimais(rValor:Real;iDecimal:Integer):Real;

Function CalculaC3cheque(numero: string): String;

Function ExtrairAspas(wTexto:String):String;

function RetornaNumeroEndereco(sEndereco:String):String;
function RetornaEnderecoSemNumero(sEndereco:String):String;
procedure Reserva_Materia(const wMateria,wQtdeReserva: String);

procedure ExportaSQLRenew(sTexto:AnsiString);


Function Substitui_Apostrofo(wTexto:String):String;

{valida data}
Function ValidaData(datas: String ; wFOCO:TjvDateEdit): String;
Function Modulo11(Valor: String; Base: Integer = 9; Resto : boolean = false) : string;

Function Modulo10(Valor: String) : string;
Function Formatar(Texto : string; TamanhoDesejado : integer; AcrescentarADireita : boolean = true; CaracterAcrescentar : char = ' ') : string;
Function Criptografa(senha: String): String;
Function DesCriptografa(cifrado: String): String;

Function DataAmericana(wPdata:String):String;
Function DataSistema(wSysdata:TDateTime):TDateTime;

Function ExtCem(const pCem:String):String;
procedure MarcarIndexarCampoGrade(tGrade:TDBGrid;
                                  tColuna: TColumn;
                                  tCdSTabela:TClientDataSet);
procedure MarcarIndexarCampoGradeSQLClientDataSet(tGrade:TDBGrid;
                                                  tColuna: TColumn;
                                                  tCdSTabela:TSQLClientDataSet);
Function StripDouble(pString:String):String;
Function Replicate(const pString:String;xWidth:Integer):String;
Function Space(iLength:Integer):String;
Function PadL(const sString:String;iLength:Integer;cChar:Char):String;
Function PadR(const sString:String;iLength:Integer;cChar:Char):String;
Function PadC(const sString:String;iLength:Integer;cChar:Char):String;
Function _Left(const sString:String;const iLength:Integer):String;
Function Right(const pString:String;const XWidth:Integer):String;
Function iif(Condicao:Boolean;retornaTrue,retornaFalse:Variant):Variant;

Function DataExtenso(Data: TDateTime): string;
//Function PegaAliasPath(alias:string):string;
Function MascaraCep(wpCep:string):string;

Function Justifica(Lado:Pchar;Texto:ShortString; TextSize:Integer; Caracter: Pchar):ShortString;

Function SemMilhar(const StringNum:String):String;
Function TestaDataStr(const S:String): boolean;
{}
Function Share( wShare : String):String;
//function SQLDEF(wShare:String ; wSQL:String;wOrdem:String):String;
Function SQLDEF(const wShare:String; wComando:String; wCondicao:String; wOrdem:String; wApelido:String):String;
{Prenche, à direita, com espaco  até o tamanho total "N"}
Function PreencheDireita  (Varia :ShortString; N : Byte) : ShortString;
{Prenche, à esquerda, com espaco  até o tamanho total "N"}
Function PreencheEsquerda (Varia :ShortString; N : Byte) : ShortString;
{Prenche, à Direita, com espaco  até o tamanho total "N"}
Function PreencheDireitaCaracter (wCaracter:Char; Varia :ShortString; N : Byte) : ShortString;
Function PreencheEsquerdaCaracter (Varia :ShortString; N : Byte) : ShortString;
{ Retira os caracteres "CharToStrip" de uma string "SourceStr" }
//nction StripChar (SourceStr : ShortString; CharToStrip : Char; Mode : Byte) : ShortString;
{Tira caracteres em branco da frente e depois da string }
//nction Trim (StrX : string) : string;
{Prenche uma String de tamanho "N" com o caractere "Ch"}
Function Copies (Ch : Char; N : Byte) : ShortString;
//extrair caracter
Function ExtrairCarecter(wTEXTO:String): String;
Function ExtractSystemDir : String;
{versao sistema}

Function AddNivel (Campo:String;Titulo:String) : String;
Function ExtrairNumeros(const wTEXTO:String): String;
Function RetornaTransacao:integer;
Function ValorAmericano(sValor:String) : String;
Function ValidaEstado(sUF:String):Boolean;

Function SequenciadorPRC(DB :TSQLConnection; Empresa:String; Tabela: string; Campo: string; Pendencia: integer; const ValorAtual : string = ''): string;

Function Retorna_Saldo_Estoque(const xReferencia,xEmpresa,xQtde :String): Double;
Function Retorna_Saldo_Estoque_Variacao(xNVar,xReferencia,xEmpresa,xQtde :String): Double;
Function QtdeCasaDecimal(const fTipo:String) : String; overload;
Function QtdeCasaDecimal(const emp_codigo :string ; const fTipo:String) : String; overload;
Function ExtrairLetra(wTEXTO:String) :String;


Function Retorna_Qtde_Estoque(xReferencia,xEmpresa :String):Integer;
Function Atribui_Letra_Pedido(fNPedido:String):String;
Function Proxima_Letra(fLetra:String):String;
Function Considera_Estoque(fSaldoEstoque,fQtdePedido:Double;fSigla,fConsiderar:String;fBtn_Pa,fBtn_Pi:Boolean):Double;
Function Verifica_Item_OP(fEmpresa,fPedido:String):Boolean;
function DifDias(DataVenc,DataAtual:TDateTime): String;
Function MesExtenso( const Mes:Word ) : string;
//
Function Parcelar_Valor(iNumParcela,iNParcelas:Integer;cValor,Cdescto:Real):Real;
//
Function Retornar_Vencto(iNumParcela,iNParcelas,iCarencia,iDiasEntreParcelas:Integer;sManterDia:String;DataEmissao:Tdatetime):TDateTime;
//


{Procedimentos utilizado no sistema adjutor}
Procedure Incrementa_Qtde_Reserva_Empenho(xRegistro,xTpOP,xTpAponta,xFaltaApontar :String);
Procedure Atualiza_Empenho_Estoque(pTipoEmpenho,pMateria,pQtdeEmpenho:String);
Procedure Inserir_Empenho(wTipoEmpenho, wOP, wMateria, wEmpresa, wDataEmpenho, wQtdeEmpenho: string; wNum_Lote: Integer);
Procedure Atualiza_Kardex(xTpAponta,xENTSAI,xOP,xMateria,xEmpresa,xData,xQtde :String);

Procedure Aumenta_Reserva_empenhada(xEmpresa,xMateria,xQtde : String);
Procedure Mudar_Status_Op(xEmpresa,xOP,xStatusOP : String);
Procedure Mudar_Status_Empenho(pEmpresa,pOP : String);
Procedure Diminui_Reserva_OP(xRegistro,xFaltaApontar :String);
Procedure AtualizaQtdeProducao(Wrefer,wTipo,wQtde:String);
Procedure Atualiza_Status_ItemOP(wREFER,wNUM_OP,wSTATUS,wSTATUS_ITEM:String;wQTDE:Currency);
Procedure AtualizaStatusOP(wNUM_OP,wSTATUS :String);
Procedure Reserva_MateriaNovo(wMateria,wQtdeReserva,wEmpresa,wNum_OP: String);
Procedure Proc_producao(wOsvCodigo,wStatus,wempCodigo,wNumPedido:String);
Procedure BuscaItemOP(WNumOP:String);
Procedure BuscaLoteProduto(wPrd_Refer :string);
Procedure Atualizar_Limite_Conta(pDC,pTipo,pEmpresa,pBanco,pValor:String);
Procedure Atualiza_Estoque_Variacao(pDC,pRefer,pVar1,pVar2,pVar3,pVar4,pVar5,pVar6,pVar7,pVar8 : String);
Procedure Atualiza_Reserva_Variacao_Estoque(pDC,pRefer,pVar1,pVar2,pVar3,pVar4,pVar5,pVar6,pVar7,pVar8 : String);


function RetornaNumeroEnderecoSomenteNumeros(sEndereco:String):String;

implementation

uses Uteis, DataMov, Rec0001, Fat0003, DataMov2, DmProdu,  Osv0006, OsvN0002, FATPARC, iniciodb;

function Retornar_Codigo(const sGenerator: String; iAcao : Integer): Integer;
Var
   QryReg:TSQLQuery;
begin
   QryReg := TSQLQuery.Create(Nil);
   try
     Result := 0;
     QryReg.SQLConnection := DataCadastros.SQLConnection1;
     QryReg.SQL.Clear;
     QryReg.SQL.Add('SELECT GEN_ID('+sGenerator+','+IntToStr(iAcao)+') FROM RDB$DATABASE');
     QryReg.Open;
     Result := (QryReg.Fields[0].AsInteger);
   finally
     FreeAndNil(QryReg);
   end;
end;


function Executa_Transacao(const sAcao: String; iNumTranscao: Integer): Integer;
begin
   Result := 0; //Neutro
   //
   if (sAcao = 'I') then //Inicializa uma transacao
      begin
         {Inicia uma Transacao}
         oTransacao.TransactionID  := Retornar_Codigo('GEN_NUMERO_TRANSACAO',1);
         oTransacao.IsolationLevel := xilREADCOMMITTED;
         DataCadastros.SQLConnection1.StartTransaction(oTransacao);
         //
         Result := oTransacao.TransactionID;
      end
   else
   if (sAcao = 'C') then //Commita uma transacao
      begin
         oTransacao.TransactionID  := iNumTranscao;
         DataCadastros.SQLConnection1.Commit(oTransacao);
         //Result := 0; //Neutro
      end
   else
   if (sAcao = 'R') then //RollBack uma transacao
      begin
         oTransacao.TransactionID  := iNumTranscao;
         DataCadastros.SQLConnection1.Rollback(oTransacao);
         //Result := 0; //Neutro
      end;
end;

{Prenche uma String de tamanho "N" com o caractere "Ch"}
Function Copies (Ch : Char; N : Byte) : ShortString;
begin
     if N < 1 Then
        Result := ''
     else
     begin
          FillChar (Result[1], N, Ch);
          Result[0] := AnsiChar(Char(N));
     end;
end;

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
       PreencheEsquerda := Copies (EspacoBranco, N - Length(varia)) + varia;
    end
  else
    begin
       PreencheEsquerda := Copy (Varia, Length(Varia) - N + 1, N);
    end;

end;

Function PreencheDireitaCaracter(wCaracter:char; Varia :ShortString; N : Byte) : ShortString;
begin
   if N > Length(Varia) Then
     begin
//        PreencheDireitaCaracter := Varia + Copies ('.', N - Length(Varia));
        PreencheDireitaCaracter := Varia + Copies (wCaracter, N - Length(Varia));
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

function SemMilhar(const StringNum:String):String;
// Objetivo : tirar os pontos de milhares
var
wAux : integer;
wNewText : String;
begin
if not(length(StringNum) = 0)then
   begin
   wAux := length(StringNum);
   wNewText := '';
   While wAux > 0 do
     begin
     if Copy(StringNum,length(StringNum)-waux+1,1)<>'.'then
        wNewText := wNewText+Copy(StringNum,length(StringNum)-waux+1,1);
     wAux := wAux -1
     end;
   SemMilhar := wNewText;
   end;
end;

//******************************************************************
Function TestaCGCCPF(P_Texto:String; const P_CgcCpf:String):Boolean;
// Objetivo : Testa CGC e CPF
Var i, code : Integer;
    d2 : Array[1..12] of Integer;
    DF4, DF5, DF6, RESTO1, Pridig, Segdig : Integer;
    Pridig2, Segdig2 : String;
    WTexto : String;
    //P_CgcCpf : String;
begin
    if (P_Texto = '   .   .   -  ') or (P_Texto = '  .   .   /    -  ') or (P_Texto = '') then
       begin
           uteis.aviso ('É Necessário Digitar o CNPJ ou o CPF!');
           exit;
       end;
    begin
        // INICIO DA ROTINA QUE TESTA CGC
        //
        if P_CgcCpf = 'J'then
           begin
               WTexto:= '';
               if Length(P_Texto)=14 then
                  begin
                      P_Texto := copy(P_Texto,1,2)+'.'+copy(P_Texto,3,3)+'.'+copy(P_Texto,6,3)+'/'+copy(P_Texto,9,4)+'-'+copy(P_Texto,13,2);
                  end;
               WTexto:=copy(P_Texto,1,2);
               WTexto:=WTexto+copy(P_Texto,4,3);
               WTexto:=WTexto+copy(P_Texto,8,3);
               WTexto:=WTexto+copy(P_Texto,12,4);
               WTexto:=WTexto+copy(P_Texto,17,2);
               If (WTexto='')  Then
                  Begin
                      MessageDlg('Campo "CNPJ" não pode ser vazio',mtError,[mbOk],0);
                  end
               Else
                  Begin
                      For i := 1 to 12 do Val(WTexto[i],D2[i],Code);
                        DF4 := 5 * D2[1] + 4 * D2[2] + 3 * D2[3] + 2 * D2[4] + 9 * D2[5] + 8 * D2[6] + 7 * D2[7]
                        + 6 * D2[8] + 5 * D2[9] + 4 * D2[10] + 3 * D2[11] + 2 * D2[12];
                        DF5 := DF4 div 11;
                        DF6 := DF5 * 11;
                        Resto1 := Df4 - DF6;
                        If (Resto1=0) or (Resto1=1) then Pridig:=0 else Pridig:=11 - Resto1;

                        For i := 1 to 12 do Val(WTexto[i],D2[i],Code);
                        DF4 := 6 * D2[1] + 5 * D2[2] + 4 * D2[3] + 3 * D2[4] + 2 * D2[5]
                        + 9 * D2[6] + 8 * D2[7] + 7 * D2[8] + 6 * D2[9] + 5 * D2[10] +4 * D2[11]
                        + 3 * D2[12] + 2 * Pridig;
                        DF5 := DF4 div 11;
                        DF6 := DF5 * 11;
                        Resto1 := Df4 - DF6;
                        If (Resto1=0) or (Resto1=1) then Segdig:=0 else Segdig:=11 - Resto1;

                        Str(Pridig, Pridig2);
                        Str(Segdig, Segdig2);
                        If not (Pridig2=WTexto[13]) or not (SegDig2=WTexto[14]) then
                           Begin
                               uteis.aviso('CNPJ inválido!');
                               Result := false;
                           end
                        else
                           begin
                               //uteis.aviso('CGC Ok!');
                               Result := true;
                          end;
                  end;
           end
        else
           Begin
               // INICIO DA ROTINA QUE TESTA CPF
               //WTexto:='';
               WTexto:=copy(P_Texto,1,3);
               WTexto:=WTexto+copy(P_Texto,4,3);
               WTexto:=WTexto+copy(P_Texto,7,3);
               WTexto:=WTexto+copy(P_Texto,10,2);
               If (WTexto='')  Then
                  Begin
                      uteis.aviso('Campo "CPF" não pode ser vazio');
                  end
               Else
                  Begin
                      For i := 1 to 9 do Val(WTexto[i],D2[i],Code);
                      DF4 := 10 * D2[1] + 9 * D2[2] + 8 * D2[3] + 7 * D2[4] + 6 * D2[5] + 5 * D2[6] + 4 * D2[7] + 3 * D2[8] + 2 * D2[9];
                      DF5 := DF4 div 11;
                      DF6 := DF5 * 11;
                      Resto1 := Df4 - DF6;
                      If (Resto1=0) or (Resto1=1) then
                         Pridig:=0
                      else
                         Pridig:=11 - Resto1;

                      For i := 1 to 9 do Val(WTexto[i],D2[i],Code);
                      DF4 := 11 * D2[1] + 10 * D2[2] + 9 * D2[3] + 8 * D2[4] + 7 * D2[5] + 6 * D2[6] + 5 * D2[7] + 4 * D2[8] + 3 *
                      D2[9] + 2 * Pridig;
                      DF5 := DF4 div 11;
                      DF6 := DF5 * 11;
                      Resto1 := Df4 - DF6;
                      If (Resto1=0) or (Resto1=1) then
                         Segdig:=0
                      else
                         Segdig:=11 - Resto1;

                      Str(Pridig, Pridig2);
                      Str(Segdig, Segdig2);
                      If not (Pridig2=WTexto[10]) or not (SegDig2=WTexto[11]) then
                         Begin
                             uteis.aviso('CPF Inválido!');
                             Result := False;
                         end
                      else
                         //uteis.aviso('CPF Ok');
                         Result := True;
                  end;
           end;
    end;
end;


Function DataAmericana(wPdata:String):String;
begin
     wPdata := Copy(wPdata,4,2)+'/'+Copy(wPdata,1,2)+'/'+Copy(wPdata,7,4);
     if wpData = '//' then
        DataAmericana := 'nil'
     else
        DataAmericana := wPdata;
end;

Function DataSistema(wSysdata:TDateTime):TDateTime;
//Objetivo :
// Pega data do sistema da função Now, sem as horas
var
wAux : string;
begin
 wAux:=DateTimeToStr(wSysData);
 wAux:= Copy(wAux,1,2)+'/'+Copy(wAux,4,2)+'/'+Copy(wAux,7,4);
 DataSistema := StrToDateTime(wAux);
end;


//***********************************************************************
// função número por extenso
// Esta funcao chama várias outras necessarias
{Function Extenso(pValor:Extended;pQtde:Integer):String;
const
 aCifra:Array[1..6,1..2]of String=((' TRILHÃO,',' TRILHÕES, '),
                                   (' BILHÃO,',' BILHÕES, '),
                                   (' MILHÃO,',' MILHÕES, '),
                                   (' MIL, ',' MIL, '),
                                   (' ',' '),
                                   (' CENTAVO',' CENTAVOS'));
Var
 tStr,tExtenso,tSubs,tP,tPrencha:String;
 tX,tQ,tCentavos:Integer;
begin
    tSubs:=' ';
    textenso:=' ';
    tStr:=StrZero(pValor,18,2);
    tCentavos:=StrToInt(Copy(tStr,17,2));
    if pValor > 0 then
    begin
      if tCentavos > 0 then
       tExtenso:=ExtCem(StrZero(tCentavos,3,0))+aCifra[6,Trunc(iif(tCentavos=1,1,2))];
      if trunc(pValor)>0 then
       tExtenso:=iif(trunc(pValor)=1,'REAL','REAIS')+iif(tCentavos>0,' E ','')+tExtenso;
      for tX:=5 Downto 1 do
      begin
        tSubs:=Copy(tStr,(tX*3)-2,3);
        if StrToInt(tSubs)>0 then
          tExtenso:=ExtCem(tSubs)+aCifra[tX,trunc(iif(StrToInt(tSubs)=1,1,2))]+''+tExtenso;

      end;
    end;
    if (pQtde>0) then
       begin
           tP       := '.X';
           tPrencha := '';
           for tQ:= Length(tExtenso) to pQtde do
               tPrencha := tPrencha + tP;

           Result:=(tExtenso+tPrencha);
       end
    else
       Result :=(tExtenso);
end;}

function ExtCem(const pCem:String):String;
Const
 aCent:Array[1..9]of string=('CENTO','DUZENTOS','TREZENTOS','QUATROCENTOS',
   'QUINHENTOS','SEISCENTOS','SETECENTOS','OITOCENTOS','NOVECENTOS');
 aVint:Array[1..9]of string=('ONZE ','DOZE ','TREZE ','QUATORZE ',
   'QUINZE','DEZESSEIS','DEZESSETE','DEZOITO','DEZENOVE');
 aDez:Array[1..9]of string=('DEZ','VINTE','TRINTA','QUARENTA',
   'CINQUENTA','SESSENTA','SETENTA','OITENTA','NOVENTA');
 aUnit:Array[1..9]of string=('UM','DOIS','TREIS','QUATRO',
   'CINCO','SEIS','SETE','OITO','NOVE');
Var
 aVal:Array[1..3]of integer;
 text:String;
begin
 text:='';
 aVal[1]:=StrToInt(Copy(pCem,1,1));
 aVal[2]:=StrToInt(Copy(pCem,2,1));
 aVal[3]:=StrToInt(Copy(pcem,3,1));
 if StrToInt(pCem)>0 then
 begin
   if StrToInt(pCem)=100 then
     text:='cem'
   else begin
     if aVal[1]>0 then
       text:=aCent[aVal[1]]+iif((aVal[2]+aVal[3])>0,' E ','');
     if (aVal[2]=1) and (aVal[3]>0) then
       text:=Text+''+ aVint[aVal[3]]
     else begin
       if aVal[2]>0 then
         text:=text+' '+aDez[aVal[2]]+iif(aVal[3]>0,' E ','');
     text:=text+iif(aVal[3]>0,''+aUnit[aVal[3]],'');
     end;
   end;
 end;
 text:=text+'';
 Result:=text;
end;

function StripDouble(pString:String):String;
begin
 while pos(' ',pString)>0 do Delete(pString,pos(' ',pString),1);
 Result:=pString;
end;


function Replicate(const pString:String;xWidth:Integer):String;
Var
 nCount:Integer;
 pStr:String;
begin
    pStr:=' ';
    for nCount:=1 to xWidth do
    pStr:=pStr+pString;
    Result:=pStr;
end;


function Space(iLength:Integer):String;
begin
  Result := Replicate(' ',iLength);
end;

function PadL(const sString:String;iLength:Integer;cChar:Char):String;
begin
  Result := Right(Replicate(cChar,iLength)+sString,iLength);
end;

function PadR(const sString:String;iLength:Integer;cChar:Char):String;
begin
 Result := _Left(sString+Replicate(cChar,iLength),iLength);
end;

function PadC(const sString:String;iLength:Integer;cChar:Char):String;
begin
  Result := _Left(Replicate(cChar,(iLength-Length(sString))div 2)+ sString + replicate(cChar,(iLength-Length(sString))div 2+2),iLength);
end;

function _Left(const sString:String;const iLength:Integer):String;
begin
  Result := copy(sString,1,iLength);
end;

function Right(const pString:String;const XWidth:Integer):String;
begin
  Result := Copy(pString,Length(pString)-xWidth+1,xWidth);
end;

function iif(Condicao:Boolean;retornaTrue,retornaFalse:Variant):Variant;
begin
  if Condicao then
   Result := retornaTrue
  else
   Result := retornaFalse;
end;

Function DataExtenso(Data: TDateTime): string;
Const AMes: Array[1..12]of String = ('Janeiro','Fevereiro','Março','Abril',
    'Maio','Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro');
var
 Dia,Mes,Ano:Word;
Begin
    DecodeDate(Data,Ano,Mes,Dia);
    Result := dbInicio.EMPRESA.CIDADE+'        '+IntToStr(Dia)+'   '+aMes[Mes]+'      '+IntToStr(Ano);
end;

{Function PegaAliasPath(alias:string):string;
var
 Params:TStringList;
begin
    Params:= TStringList.Create;
    Session.GetAliasParams(alias,Params);
    result := Params.Values['PATH'];
    Params.free;
end;}

function MascaraCep(wpCep:string):string;
begin
    Result := copy(wpCep,1,2)+'.'+copy(wpCep,3,3)+'-'+copy(wpCep,6,3);
end;

function Justifica(Lado:Pchar;Texto:ShortString; TextSize:Integer; Caracter: Pchar):ShortString;
var
wText:ShortString;
begin
{Função para Justificar caracteres
** parametros**
Lado     : Define de que lado do texto vai ser colocado o texto a concatenar
Texto    : É o texto atual que será concatenado até atingir solicitado
TextZize : Tamanho que o texto deve retornar depois de concatenado
Caracter : Caracter que deve formar o texto a concatenar}

{abandona a função se concatenação exigir tamanho maior que 255 caracteres}
if TextSize > 255 then
   begin
   uteis.aviso('O Parametro TextSize da Função Concatena é um ShortString '
   +#13+'e deve ter no maximo 255 caracteres.');
   exit;
   end;
{passa parametro recebido para maiuscula}
Lado := Pchar(UpperCase(Lado));
{inicia a variavel}
wText := '';
{se texto existir e tamanho requerido(TextSize) for maior
que seu tamanho atual(length(Texto))}
if (length(Texto) < TextSize)then
   While (length(wText)) < (TextSize-length(Texto)) do
     begin
     wText :=  Caracter + wText;
     end;
if Lado = 'D' then
   Result := Texto + wText  {(Lado = Pchar D)}
else
   Result := wText + Texto; {Qualquer outro caracter concatena a esquerda}
end;


function TestaDataStr(const S:String): boolean;
begin
    Result := true;
    // testar somente se nao for data em branco
    if (S<>'  /  /    ') and (S<> '  /  /  ') then
       begin
           try
             StrToDate(S);
             Result := true;
           except on EConvertError do
           begin
             Result := false;
             uteis.aviso(Pchar(s+' : Data Inválida !'));
           end;
           end;
       end;
end;


Function Share( wShare : String): String;
Var
  compartilhado : boolean;
Begin
  wShare := UpperCase(wshare);
  compartilhado := False;
  if wShare = 'PRODUTOS' then
    compartilhado:= dbinicio.Sharedb.Produtos
  else if wShare = 'CLIENTES' then
    compartilhado := dbinicio.Sharedb.Clientes
  else if wShare = 'BANCOS' then
    compartilhado := dbinicio.Sharedb.Bancos
  else if wShare = 'TRANSPORTADORAS' then
    compartilhado := dbinicio.Sharedb.Transportadora
  else if wShare = 'REPRESENTANTES' then
    compartilhado := dbinicio.Sharedb.Representantes
  else if wShare = 'FORNECEDORES' then
    compartilhado := dbinicio.Sharedb.Fornecedores
  else if wShare = 'RECEBER' then
    compartilhado := dbinicio.Sharedb.Receber
  else if wShare = 'PAGAR' then
    compartilhado := dbinicio.Sharedb.Pagar
  else if wShare = 'PEDIDOS' then
    compartilhado := dbinicio.Sharedb.Pedidos
  else if wShare = 'COTACOES' then
    compartilhado := dbinicio.Sharedb.Cotacoes
  else if wShare = 'ORDENSCOMPRA' then
    compartilhado := dbinicio.Sharedb.OrdensCompra
  else if wShare = 'FICHATECNICA' then
    compartilhado := dbinicio.Sharedb.FichaTecnica
  else if wShare = 'ORDEMPRODUCAO' then
    compartilhado := dbinicio.Sharedb.OrdemProducao
  else if wShare = 'PARAMETROS' then
    compartilhado := dbinicio.Sharedb.Parametros
  else if wShare = 'TABELAS' then
    compartilhado := dbinicio.Sharedb.Tabelas
  else if wShare = 'PRAZOS' then
    compartilhado := dbinicio.Sharedb.Prazos
  else if wShare = 'OPERACAOFISCAL' then
    compartilhado := dbinicio.Sharedb.OperacaoFiscal
  else if wShare = 'PLANODECONTAS' then
    compartilhado := dbinicio.Sharedb.PlanoContas
  else if wShare = 'FISCAL' then
    compartilhado := dbinicio.Sharedb.Fiscal
  else if wShare = 'ESTOQUES' then
    compartilhado := dbinicio.Sharedb.Estoques
  else if wShare = 'ICMS' then
    compartilhado := dbinicio.Sharedb.ICMS;
  if compartilhado then
    Result := 'C'
  else
    Result := 'E'

//   try
//      QryReg := TSQLQuery.Create(Nil);
//      QryReg.SQLConnection := DataCadastros.SQLConnection1;
//      QryReg.SQL.Clear;
//      QryReg.SQL.Add('Select '+wShare+' from SHAREDB');
//      QryReg.Open;
//      Result := QryReg.FieldByName(''+wShare+'').value;
//   finally
//      FreeAndNil(QryReg);
//   end;
end;


function SQLDEF(const wShare:String; wComando:String; wCondicao:String; wOrdem:String; wApelido:String):String;
{ wShare    = Verifica se tabela e compartilhada: Se a tabela nao for compartilhada a Clausula Where emp_codigo=emp_codigo será incluido automaticamente.
  wComando  = Define quais os comandos que serao utilizado
  wTabela   = Define o Arquivo ou Arquivos que será aberto, ex.: TESTE1,TESTE2,....
  wCondicao = Se a wCondicao for definida será EXECUTADO A CONDICAO. Exemplo: WHERE REP_CODIGO='''+XCODIGO+'''', caso contrario a clausula where será retirada da instrucao Select.
  wOrdem    = Define a ordem atraves dos campos da tabela. Exemplo: CAMPO1,CAMPO2,....
 }
Var compartilhado : boolean;
    vCondicao,vOrdem,vComparti:String;
begin

    vCondicao :=IIF(wCondicao<>'',wCondicao,'');
    vOrdem    :=IIF(wOrdem   <>'',' ORDER BY '+wordem,'');

    if (wShare = 'MULTIEMPRESA') or (wShare = 'NAOEXCLUSIVA') then
      Result := wComando+' '+vCondicao+' '+vOrdem
    else
    Begin


      if wCondicao='' then
         vComparti:= 'Where '
      Else
         vComparti:= ' AND ';
      vComparti := vComparti +wApelido+'EMP_CODIGO = '+quotedstr(PreencheEsquerda(dbInicio.EMPRESA.EMP_CODIGO,3));

      if (wShare = 'EXCLUSIVA') then
          Result := wComando+' '+vCondicao+' '+vComparti+' '+vOrdem
      else
      begin

          if wShare = 'PRODUTOS' then
            compartilhado:= DBInicio.Sharedb.Produtos
          else if wshare = 'CLIENTES' then
            compartilhado := DBInicio.Sharedb.Clientes
          else if wShare = 'BANCOS' then
            compartilhado := DBInicio.Sharedb.Bancos
          else if wShare = 'TRANSPORTADORAS' then
            compartilhado := DBInicio.Sharedb.Transportadora
          else if wShare = 'REPRESENTANTES' then
            compartilhado := DBInicio.Sharedb.Representantes
          else if wShare = 'FORNECEDORES' then
            compartilhado := dbinicio.Sharedb.Fornecedores
          else if wshare = 'RECEBER' then
            compartilhado := DBINICIO.Sharedb.Receber
          else if wShare = 'PAGAR' then
            compartilhado := DBINICIO.Sharedb.Pagar
          else if wShare = 'PEDIDOS' then
            compartilhado := DBInicio.Sharedb.Pedidos
          else if wShare = 'COTACOES' then
            compartilhado := DBInicio.Sharedb.Cotacoes
          else if wShare = 'ORDENSCOMPRA' then
            compartilhado := DBInicio.Sharedb.OrdensCompra
          else if wShare = 'FICHATECNICA' then
            compartilhado := DBInicio.Sharedb.FichaTecnica
          else if wShare = 'ORDEMPRODUCAO' then
            compartilhado := DBInicio.Sharedb.OrdemProducao
          else if wShare = 'PARAMETROS' then
            compartilhado := DBInicio.Sharedb.Parametros
          else if wShare = 'TABELAS' then
            compartilhado := DBInicio.Sharedb.Tabelas
          else if wShare = 'PRAZOS' then
            compartilhado := DBInicio.Sharedb.Prazos
          else if wShare = 'OPERACAOFISCAL' then
            compartilhado := DBInicio.Sharedb.OperacaoFiscal
          else if wShare = 'PLANODECONTAS' then
            compartilhado := DBInicio.Sharedb.PlanoContas
          else if wShare = 'FISCAL' then
            compartilhado := dbinicio.Sharedb.Fiscal
          else if wShare = 'ESTOQUES' then
            compartilhado := DBInicio.Sharedb.Estoques
          ELSE if wShare = 'ICMS' then
            compartilhado := DBInicio.Sharedb.ICMS;


          if ((compartilhado) and (wShare <> 'RECEBER') and (wShare <> 'PAGAR')) or (wShare = 'MULTIEMPRESA') then
            Result := wComando+' '+vCondicao+' '+vOrdem
          else
            Result := wComando+' '+vCondicao+' '+vComparti+' '+vOrdem;
          if dbInicio.isDesenvolvimento then
            copyToClipboard(Result);
//        finally
//           FreeAndNil(QryReg);
//        end;
      end;
    End;

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
      if Length(wTEXTO) = i then    //caso ele exclua uma caractere a cadeia muda o tamanho da cadeia
        break;
   end;
   Result := wTEXTO;
end;

function ExtractSystemDir : String;
 Var
   Buffer : Array[0..144] of Char;
begin
   GetSystemDirectory(Buffer,144);
   //Result := FormatPath(StrPas(Buffer));
   Result := StrPas(Buffer);
end;

function AddNivel (Campo:String;Titulo:String) : String;
Var
N1       : String[1];
N2,N3    : String[2];
N4,N5,N6 : String[3];
NovoCod  : String[14];
Retorna  : String[19];
begin
    {Demonstar a conta tirando os pontos}
    N1 := COPY(CAMPO,1,1);
    N2 := COPY(CAMPO,3,2);
    N3 := COPY(CAMPO,6,2);
    N4 := COPY(CAMPO,9,3);
    N5 := COPY(CAMPO,13,3);
    N6 := COPY(CAMPO,17,3);
    {Atribui no NovoCod a conta sem os pontos}
    NovoCod := N1+N2+N3+N4+N5+N6;
    {Faz a somatoria do numero da Conta}
    if (N1 <> '') then
       begin
           if uteis.confirmacao ( ('LEIA ESTA MENSAGEM CUIDADOSAMENTE !!!'+#13+#10+'Você esta prestes a inserir uma Sub-Conta ligando a Conta:'+#13+#10+CAMPO+' - '+Titulo)) = idYes then
              begin
                  if (N6 = '') then
                     NovoCod := NovoCod + '1'
                  else
                     begin
                         if (N6<>'') then
                            uteis.aviso('Número máximo de nível esgotado !');
                         exit;
                     end;
              end
           else
              begin
                  if uteis.confirmacao ( ('Incrementa a conta selecionada: '+#13+#10+CAMPO+' - '+Titulo))= idYes then
                     begin
                         NovoCod := CurrToStr(StrToCurr(NovoCod) + 1);
                     end;
              end;
       end;
    {Monta o Numero da Conta}
    if COPY(NOVOCOD,1,1)<> '' then
       Retorna :=                      COPY(NOVOCOD,1,1)+IIF(COPY(NOVOCOD,2,2)<>'','.','');
    if COPY(NOVOCOD,2,2)<> '' then
       Retorna := Retorna + StrZero(COPY(NOVOCOD,2,2),2)+IIF(COPY(NOVOCOD,4,2)<>'','.','');
    if COPY(NOVOCOD,4,2)<> '' then
       Retorna := Retorna + StrZero(COPY(NOVOCOD,4,2),2)+IIF(COPY(NOVOCOD,6,3)<>'','.','');
    if COPY(NOVOCOD,6,3)<> '' then
       Retorna := Retorna + StrZero(COPY(NOVOCOD,6,3),3)+IIF(COPY(NOVOCOD,9,3)<>'','.','');
    if COPY(NOVOCOD,9,3)<> '' then
       Retorna := Retorna + StrZero(COPY(NOVOCOD,9,3),3)+IIF(COPY(NOVOCOD,12,3)<>'','.','');
    if COPY(NOVOCOD,12,3)<> '' then
       Retorna := Retorna + StrZero(COPY(NOVOCOD,12,3),3);
    if COPY(Retorna,1,1)> '2' then
       begin
           uteis.aviso('Número do 1º Nível esgotado !');
           exit;
       end;
    try
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=SqlDef('TABELAS','Select CCT_NIVEL from CCT_0000','where CCT_NIVEL='''+Retorna+'''','CCT_NIVEL','');
      DataCadastros.sqlUpdate.Open;
      if DataCadastros.sqlUpdate.IsEmpty then
         begin
             Result  := Retorna;
         end
      else
         begin
             uteis.aviso('Sub-Conta já existente...Favor Selecionar outra !');
             exit;
         end;
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao conferir a conta !'+e.message));
    end;
end;

function ExtrairNumeros(const wTEXTO:String) :String;
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

function ValidaData(datas: String ;wFOCO:TJvDateEdit): String;
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
        if bissexto  then
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

function ColocaMascraCNPJ_CNPF(const NUMERO: String): String;
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

Function PreencheZeroEsquerda(Varia :ShortString; N : Byte) : ShortString;
begin
   if N > Length(Varia) Then
        PreencheZeroEsquerda := Copies ('0', N - Length(Varia)) + Varia
   else
        PreencheZeroEsquerda := Copy (Varia, Length(Varia) - N + 1, N);
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

function RetornaTransacao:integer;
begin
    DataCadastros.SQLStdTransacao.StoredProcName := 'RETORNA_TRANSACAO';
    DataCadastros.SQLStdTransacao.ExecProc;
    Result := DataCadastros.SQLStdTransacao.Params[0].AsInteger;
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

function Modulo11(Valor: String; Base: Integer = 9; Resto : boolean = false) : string;
var
   Soma : integer;
   Contador, Peso, Digito : integer;
   vl_mult: Integer;

begin
   Soma := 0;
   Peso := 2;
   for Contador := Length(Valor) downto 1 do
   begin
      vl_mult := (StrToInt(Valor[Contador]) * Peso);
      Soma := Soma + vl_mult;
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

function ValorAmericano(sValor:String) : String;
  Var
   I,X,posicaoVisgula:Integer;
begin
   posicaoVisgula := 1000;
   if (sValor <> ' ') and (sValor <> '') then
      begin
         for I := 1 to Length(sValor) do
           begin
              if sValor[I] = ',' then
               begin
                 sValor[I]:= '.';
                 posicaoVisgula := I;
               end;
               if (I > posicaoVisgula+6) then
                  sValor[I]:= ' ';
           end;
         Result := sValor;
      end
   else
      Result := '0.00';
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
               uteis.aviso('O Estado informado não é válido !' );
            end;
      end
   else
      begin
         Result := False;
         uteis.aviso('O Estado informado não e válido !' );
      end;
end;

function SequenciadorPRC(DB: TSQLConnection; Empresa, Tabela, Campo: string; Pendencia: integer; const ValorAtual: string): string;
var
  SProcedure : TSQLStoredProc;
begin
    {Para utilizar a Funcao SequenciadorPRC, deve criar Tabelas é um StoredProcedure,
    esses dados estão no Arquivo C:\JOBPROGRAM\ADJUTOR\SEQUENCIADOR.SQL}
    SProcedure := TSQLStoredProc.Create(nil);
    with SProcedure do
    begin
         SQLConnection  := DB;
         StoredProcName := 'PRC_SEQUENCIADORA';
         ParamByName('EMPRESA').Text    := EMPRESA;
         ParamByName('TABELA').Text     := TABELA;
         ParamByName('CAMPO').Text      := CAMPO;
         ParamByName('PENDENCIA').Text  := IntToStr(Pendencia);
         ParamByName('VALORATUAL').Text := ValorAtual;
         ExecProc;
         Result := ParamByName('ID_RETORNO').Text;
         Destroy;
     end;
end;

//function Preenchadatas(wData: String): String;
Function PreenchaData(wData: String): String;
Var
  wDia,wMes,wAno :String;
begin
    wDia := Trim(Copy(wData,1,2));
    wMes := Trim(Copy(wData,4,2));
    wAno := Trim(Copy(wData,7,4));
    if (wDia = '') then
       wDia := StrZero(copy(DateToStr(now),1,2),2)
    else
       wDia := StrZero(wDia,2);
    if (wMes = '')or(Length(wMes)<2) then
       wMes := StrZero(copy(DateToStr(now),4,2),2)
    else
       wMes := StrZero(wMes,2);
    if (wAno = '') then
       wAno := StrZero(copy(DateToStr(now),7,4),4)
    else
       begin
           if (Length(wAno)<4) then
              begin
                  wAno := copy(DateToStr(now),7,1)+StrZero(wAno,3);
              end;
       end;
    Result := wDia+'/'+wMes+'/'+wAno;
end;

Function Retorna_Saldo_Estoque_Variacao(xNVar,xReferencia,xEmpresa,xQtde :String): Double;
Var
  xEmpenho : Double;
begin
    try
      {Retorna o Saldo do Estoque da referencia por variacao}
      if ((DBiNICIO.GetParametroSistema('PMT_VARIACOES')='S')) and (xNVar<>'0') then
         begin
             if (xNVar = '1') then
                wSql1 := 'Select (P1.PRD_VAR1) AS WSALDO From PRD0000 P1 ';
             if (xNVar = '2') then
                wSql1 := 'Select (P1.PRD_VAR2) AS WSALDO From PRD0000 P1 ';
             if (xNVar = '3') then
                wSql1 := 'Select (P1.PRD_VAR3) AS WSALDO From PRD0000 P1 ';
             if (xNVar = '4') then
                wSql1 := 'Select (P1.PRD_VAR4) AS WSALDO From PRD0000 P1 ';
             if (xNVar = '5') then
                wSql1 := 'Select (P1.PRD_VAR5) AS WSALDO From PRD0000 P1 ';
             if (xNVar = '6') then
                wSql1 := 'Select (P1.PRD_VAR6) AS WSALDO From PRD0000 P1 ';
             if (xNVar = '7') then
                wSql1 := 'Select (P1.PRD_VAR7) AS WSALDO From PRD0000 P1 ';
             if (xNVar = '8') then
                wSql1 := 'Select (P1.PRD_VAR8) AS WSALDO From PRD0000 P1 ';
         end
      else
         begin
             wSql1 := 'Select ((P1.PRD_ESTOQUE+P1.PRD_ENTRADA)-(P1.PRD_SAIDA+P1.PRD_RESERVA+P1.PRD_EMPENHO)) AS WSALDO From PRD0000 P1 ';
         end;

      wSeleciona := 'Where P1.PRD_REFER = '''+xReferencia+''' and P1.EMP_CODIGO = '''+xEmpresa+'''';
      wOrdem     := ' Order by P1.PRD_REFER';
      //
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=wSql1+wSeleciona+wOrdem;
      DataCadastros.sqlUpdate.Open;
      if (not DataCadastros.sqlUpdate.IsEmpty ) then
         begin
             if (DataCadastros.sqlUpdate.FieldByName('WSALDO').AsCurrency >= StrToFloat(xQtde)) then
                 begin
                     xEmpenho       := StrToFloat(xQtde);
                     wStatusEmpenho := 'S'; //Apontamento Concluido
                 end
              else
                 begin
                     if (DataCadastros.sqlUpdate.FieldByName('WSALDO').AsCurrency <= 0) then
                        begin
                            xEmpenho       := 0;
                            wStatusEmpenho := 'N'; //Apontamento Pendente
                        end
                     else
                        if (DataCadastros.sqlUpdate.FieldByName('WSALDO').AsCurrency < StrToFloat(xQtde))and
                          (DataCadastros.sqlUpdate.FieldByName('WSALDO').AsCurrency >0) then
                           begin
                               xEmpenho       := DataCadastros.sqlUpdate.FieldByName('WSALDO').AsCurrency;
                               wStatusEmpenho := 'P'; //Apontamento Parcial
                           end;
                 end;
             Result := xEmpenho;
         end;
      //
    except on E:EdataBaseError do
      uteis.erro  (pchar('Erro ao atualizar a tabela PRD0000 a reserva !'+E.Message));
    end;
end;

function Retorna_Saldo_Estoque(const xReferencia,xEmpresa,xQtde:String): Double;
Var
  xEmpenho : Double;
begin
    try
      {Agora Retorna o Saldo do Estoque da referencia}
      wSql1      := 'Select ((P1.PRD_ESTOQUE+P1.PRD_ENTRADA)-(P1.PRD_SAIDA+P1.PRD_RESERVA+P1.PRD_EMPENHO)) AS WSALDO From PRD0000 P1 ';
      wSeleciona := ' Where P1.PRD_REFER = '''+xReferencia+'''';
      wOrdem     := ' P1.PRD_REFER';
      //
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',WSQL1,wSeleciona,wOrdem,'P1.');
      DataCadastros.sqlUpdate.Open;
      {}
      if (not DataCadastros.sqlUpdate.IsEmpty) then
         begin
             if (DataCadastros.sqlUpdate.FieldByName('WSALDO').AsCurrency >= StrToCurr(xQtde)) then
                 begin
                     xEmpenho       := DataCadastros.sqlUpdate.FieldByName('WSALDO').AsCurrency;//StrToCurr(xQtde);
//                     wStatusEmpenho := 'S'; //Apontamento Concluido
                 end
              else
                 begin
                     if (DataCadastros.sqlUpdate.FieldByName('WSALDO').AsCurrency <= 0) then
                        begin
                            xEmpenho       := 0;
//                            wStatusEmpenho := 'N'; //Apontamento Pendente
                        end
                     else
                        begin
                            if (DataCadastros.sqlUpdate.FieldByName('WSALDO').AsCurrency < StrToCurr(xQtde)) and
                               (DataCadastros.sqlUpdate.FieldByName('WSALDO').AsCurrency > 0) then
                               xEmpenho    := DataCadastros.sqlUpdate.FieldByName('WSALDO').AsCurrency;
//                            wStatusEmpenho := 'P'; //Apontamento Parcial
                        end;
                 end;
             Result := xEmpenho;
         end;
      //
    except on E:EdataBaseError do
      uteis.erro  (pchar('Erro ao atualizar a tabela PRD0000 a reserva !'+E.Message));
    end;
end;


procedure Incrementa_Qtde_Reserva_Empenho(xRegistro,xTpOP,xTpAponta,xFaltaApontar :String);
var qtde {quantidade empenhadas} : Double;

begin
    try
      {Atualiza Status do Item Apontado na tabela OSV_IT02}
      if (xTpOP = 'R') then  // OP Tipo RESERVA
         wSql1 := 'Update OSV_IT02 set OSI_STATUSEMPENHO = '''+xTpAponta+''','+
                                          'OSI_RESERVADO = (OSI_RESERVADO + '+xFaltaApontar+')'
      else                   // OP Tipo PRODUCAO
      begin
           //osi_qtde1 so usando quantidade 1, a 2 ao 8 ainda não estão funcinais
           wSql1 :='SELECT SUM(EPM_QTDE) epm_qtde,  max(osi_qtde1) osi_qtde1 FROM EPM_0000 E1 JOIN OSV_IT02 O2 ON (O2.OSV_CODIGO = E1.OSV_CODIGO AND e1.PRD_REFER_ITENS = o2.PRD_REFER_ITENS) ';
           wSql2:=' WHERE OSI_REGISTRO = '+   QuotedStr(xRegistro)   +
                  ' AND EPM_TIPOEMPENHO IN (''A'',''M'') ';

          DataCadastros.sqlUpdate.Close;
          DataCadastros.SqlUpdate.sql.text :=SQLDEF('ORDEMPRODUCAO', wSql1 ,wSql2,'','E1.');
          DataCadastros.sqlUpdate.Open;
          if DataCadastros.sqlUpdate.IsEmpty then // não achou o registro para estorna, alguma coisa errado ocorreu
             qtde := 0.0
          else
             qtde := DataCadastros.sqlUpdate.FieldByName('EPM_QTDE').AsFloat;


         wSql1 := 'Update OSV_IT02 set OSI_STATUSEMPENHO = '''+xTpAponta+''','+
                                            'OSI_EMPENHO = '+ FloatToSQL(qtde)  ;
      end;

      //
      wSeleciona := ' where OSI_REGISTRO = '''+xRegistro+'''';
      //
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=wSql1+wSeleciona;
      DataCadastros.sqlUpdate.Execsql;
      //
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao atualizar o Status do Apontamento ! '+e.message));
    end;
end;

procedure Atualiza_Kardex(xTpAponta,xENTSAI, xOP, xMateria, xEmpresa, xData, xQtde: String);
Var
  wRegistro : String;
begin
    try
      //
      {Verifica se Movimento do Apontamento existe no mesmo dia}
      wSql1 := 'Select E1.*,A1.AMX_DESCRI From PRD_ENSA E1 LEFT JOIN ALMOX0000 A1 ON (A1.AMX_CODIGO = E1.AMX_CODIGO) ';
      //
      wSeleciona := 'Where E1.EMP_CODIGO = '''+xEmpresa+
                 ''' AND E1.PES_NUMDOC = '''+xOP+
                 ''' AND E1.PRD_REFER  = '''+xMateria+
                 ''' AND E1.PES_TIPO   = '''+xENTSAI+
                 ''' AND E1.PES_TIPDOC = ''OP'+
                 ''' AND E1.PES_DATA   = '''+xData+'''';

      wOrdem     := ' Order by E1.EMP_CODIGO,E1.PES_NUMDOC,E1.PRD_REFER,E1.PES_TIPO,E1.PES_TIPDOC,E1.PES_DATA';
      //
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=wSql1+wSeleciona+wOrdem;
      DataCadastros.sqlUpdate.Open;
      if (not DataCadastros.sqlUpdate.IsEmpty) then
         begin
             wRegistro := DataCadastros.sqlUpdate.FieldByName('PES_REGISTRO').AsString;
             if (xTpAponta<>'E') then
                wSql1     := 'Update PRD_ENSA SET PES_QTDE = (PES_QTDE + '+ ValorAmericano(xQtde)+')'
             else
                wSql1     := 'Update PRD_ENSA SET PES_QTDE = (PES_QTDE - '+ ValorAmericano(xQtde)+')';
             wSeleciona:= ' where PES_REGISTRO = '+wRegistro+'';
             //
             DataCadastros.sqlUpdate.Close;
             DataCadastros.SqlUpdate.sql.text :=wSql1+wSeleciona;
             DataCadastros.sqlUpdate.Execsql;
         end
      else
         begin
             {Lança no Kardex o Movimento da qtde Apontada}
             wSql1 := 'Insert Into PRD_ENSA ('+
                      'PES_NUMDOC,'+
                      'PRD_REFER,'+
                      'PES_DATA,'+
                      'PES_TIPDOC,'+
                      'PES_TIPO,'+
                      'PES_ORIGEM,'+
                      'PES_QTDE,'+
                      'PES_FLAG_ACERTO,'+
                      'PES_FLAG_CONTA,'+
                      'EMP_CODIGO) ';
             wSql2 := 'Values ('''+xOP+''','''+
                                   xMateria+''','''+
                                   xData+''','''+
                                   'OP'+''','''+
                                   xENTSAI+''','''+
                                   'Automatica'+''','''+
                                   ValorAmericano(xQtde)+''','''+
                                   'N'+''','''+
                                   'S'+''','''+
                                   xEmpresa+''')';
             DataCadastros.sqlUpdate.Close;
             DataCadastros.SqlUpdate.sql.text :=wSql1+wSql2;
             DataCadastros.sqlUpdate.Execsql;
         end;
      //
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao Lança movimento no Kardex ! '+e.Message));
    end;
end;


procedure Aumenta_Reserva_empenhada(xEmpresa,xMateria,xQtde : String);
begin
    try
      {Aumenta da Reserva NO ESTOQUE a Quantidade Apontada}
      wSql1      := 'Update PRD0000 Set PRD_RESERVA  = (PRD_RESERVA + '+ValorAmericano(xQtde)+') ';
      wSeleciona := 'where PRD_REFER = '''+xMateria+'''';
      //
      DataMovimento2.sqlaux.close;
      DataMovimento2.sqlaux.sql.text := sqldef('PRODUTOS',wSql1,wSeleciona,'','');
      DataMovimento2.sqlaux.ExecSql;
      DataMovimento2.sqlaux.close;
      //
    except on E:EdataBaseError do
       uteis.erro  (pchar('Erro ao baixar qtde Apontada do Estoque ! '+e.message));
    end;
end;

procedure Mudar_Status_Op(xEmpresa,xOP,xStatusOP : String);
begin
    try
      wSql1 := 'Update OSV0001 SET OSV_STATUS = '''+xStatusOP+'''';  // So muda o status
      //
      if Assigned(FormOrdServRefazer) then
         begin
             if (FormOrdServRefazer.RadTodas.checked ) then
                wSeleciona := ' Where OSV_CODIGO_PAI = '''+ExtrairNumeros(xOP)+''''
             else
                wSeleciona := ' Where OSV_CODIGO = '''+xOP+'''';
         end
      else
         wSeleciona := ' Where OSV_CODIGO = '''+xOP+'''';
      //
      DataCadastros.SQLConnection1.Execute(wSql1+wSeleciona,nil);

    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao atualizar o Status da Ordem de Produção ! '+e.message));
    end;

end;

procedure Diminui_Reserva_OP(xRegistro,xFaltaApontar :String);
begin
    try
      {Atualiza a Reservado}
      wSql1      := 'Update OSV_IT02 set OSI_RESERVADO = (OSI_RESERVADO - '+xFaltaApontar+')';
      //
      wSeleciona := ' where OSI_REGISTRO = '''+xRegistro+'''';
      //
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=wSql1+wSeleciona;
      DataCadastros.sqlUpdate.Execsql;
      //
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao atualizar o Status do Apontamento ! '+e.message));
    end;
end;

procedure Inserir_Empenho(wTipoEmpenho, wOP, wMateria, wEmpresa, wDataEmpenho, wQtdeEmpenho: string; wNum_Lote: Integer);
Var

  fqtde : Double;
  chave: integer ;
  dQtdeEmpenho : Extended;
begin
    try
         if wQtdeEmpenho = '' then
           dQtdeEmpenho := 0
         else
           dQtdeEmpenho := strtofloat(AnsiReplaceStr(wQtdeEmpenho,'.',','))  ;
         if wTipoEmpenho = 'E' then
         begin
           wSql1 :='SELECT EPM_QTDE, EPM_CODIGO FROM EPM_0000 E1 ';
          if wNum_Lote <> 0 then
              wSql2:=' WHERE OSV_CODIGO = '+   QuotedStr(wOP)   +
                     ' AND PRD_REFER_ITENS = '+ QuotedStr(wMateria)  +
                     ' AND EPM_DATAEMPENHO = '+ (QuotedStr(wDataEmpenho))  +
                     ' AND PRDL_REGISTRO = '  + IntToStr(wNum_Lote)
          Else
             wSql2:=' WHERE OSV_CODIGO = '+   QuotedStr(wOP)   +
                     ' AND EPM_DATAEMPENHO = '+ QuotedStr(wDataEmpenho)  +
                     ' AND PRD_REFER_ITENS = '+ QuotedStr(wMateria) ;

          DataCadastros.sqlUpdate.Close;
          DataCadastros.SqlUpdate.sql.text :=SQLDEF('ORDEMPRODUCAO', wSql1 ,wSql2,'E1.EMP_CODIGO','E1.');
          DataCadastros.sqlUpdate.Open;
          if DataCadastros.sqlUpdate.IsEmpty then // não achou o registro para estorna, alguma coisa errado ocorreu
              exit;
          fQtde := DataCadastros.sqlUpdate.FieldByName('EPM_QTDE').AsFloat;
          chave := DataCadastros.SqlUpdate.FieldByName('EPM_CODIGO').AsInteger;
          if fQtde = dQtdeEmpenho then
            wSql1 := ' DELETE FROM EPM_0000'+
                     ' WHERE OSV_CODIGO = '+   QuotedStr(wOP)   +
                     ' AND PRD_REFER_ITENS = '+ QuotedStr(wMateria)+
                     ' AND EPM_CODIGO ='+ IntToStr(chave)  +
                     ' AND EPM_TIPOEMPENHO IN (''A'',''M'')'
          else
          if fQtde > dQtdeEmpenho then // quantidade empenhada é maior que vai ser estornada
            begin
              fQtde := fQtde - dQtdeEmpenho;
              wSql1 := ' UPDATE EPM_0000'+
                       ' SET EPM_QTDE = '+ FloatToSQL(fQtde)+
                       ' WHERE OSV_CODIGO = '+ QuotedStr(wOP)   +
                       ' AND PRD_REFER_ITENS = '+ QuotedStr(wMateria)+
                       ' AND EPM_CODIGO =' +IntToStr(chave)  +
                      ' AND EPM_TIPOEMPENHO IN (''A'',''M'')';
            end;
            if wNum_Lote <> 0 then
               wSql2 := ' AND PRDL_REGISTRO = '  + IntToStr(wNum_Lote)
            else
               wSql2 := '';
         end
         else
          begin
            //verifica se já foi empenhado na mesma data
            wSql1 :='SELECT EPM_QTDE, EPM_CODIGO FROM EPM_0000 E1 ';
            if wNum_Lote <> 0 then
                wSql2:=' WHERE OSV_CODIGO = '+   QuotedStr(wOP)   +
                       ' AND PRD_REFER_ITENS = '+ QuotedStr(wMateria)  +
                       ' AND EPM_DATAEMPENHO = '+ QuotedStr(wDataEmpenho)  +
                       ' AND PRDL_REGISTRO = '  + IntToStr(wNum_Lote)
            Else
               wSql2:=' WHERE OSV_CODIGO = '+   QuotedStr(wOP)   +
                       ' AND EPM_DATAEMPENHO = '+ QuotedStr(wDataEmpenho)  +
                       ' AND PRD_REFER_ITENS = '+ QuotedStr(wMateria) ;
            DataCadastros.sqlUpdate.Close;
            DataCadastros.SqlUpdate.sql.text :=SQLDEF('ORDEMPRODUCAO', wSql1 ,wSql2,'E1.EMP_CODIGO','E1.');
            DataCadastros.sqlUpdate.Open;
            if DataCadastros.sqlUpdate.IsEmpty then
            begin
               wSql1 := 'Insert Into EPM_0000 ('+
                        'OSV_CODIGO,'+
                        'PRD_REFER_ITENS,'+
                        'EPM_QTDE,'+
                        'EPM_DATAEMPENHO,'+
                        'EPM_TIPOEMPENHO,'+
                        'EMP_CODIGO,   '+
                        'PRDL_REGISTRO ) ';
               wSql2 := 'Values (' + QuotedStr(wOP)+','+
                                     QuotedStr(wMateria)+','+
                                     wQtdeEmpenho+','+
                                     QuotedStr(wDataEmpenho)+','+
                                     QuotedStr(wTipoEmpenho)+','+
                                     QuotedStr(wEMPRESA)+','+
                                     IntToStr(wNum_Lote)+ ')';
            end
            else
            begin
              fQtde := DataCadastros.sqlUpdate.FieldByName('EPM_QTDE').AsFloat;
              fQtde := fQtde + dQtdeEmpenho;
              chave := DataCadastros.SqlUpdate.FieldByName('EPM_CODIGO').AsInteger;
              wSql1 := ' UPDATE EPM_0000'+
                       ' SET EPM_QTDE = '+ FloatToSQL(fQtde)+
                       ' WHERE OSV_CODIGO = '+   QuotedStr(wOP)   +
                       ' AND PRD_REFER_ITENS = '+ QuotedStr(wMateria)+
                       ' AND EPM_CODIGO ='+ IntToStr(chave)  +
                       ' AND EPM_TIPOEMPENHO IN (''A'',''M'')';
              if wNum_Lote <> 0 then
                 wSql2 := ' AND PRDL_REGISTRO = '  + IntToStr(wNum_Lote)
              else
                 wSql2 := '';


            end;
          end;
            if wSql1 <> '' then
            begin
             DataCadastros.sqlUpdate.Close;
             DataCadastros.SqlUpdate.sql.text :=wSql1+wSql2;
             DataCadastros.sqlUpdate.Execsql;
            end;

//         end;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao gravar na tabela do Empenho ! '+e.message));
    end;
end;

procedure Atualiza_Empenho_Estoque(pTipoEmpenho,pMateria,pQtdeEmpenho:String);
begin
    try
      {atualiza saldo empenhado no estoque}
      if (pTipoEmpenho <> 'E') then
       begin
           DataMovimento2.sqlaux.close;
           DataMovimento2.sqlaux.sql.text := 'Update PRD0000 set PRD_EMPENHO = (PRD_EMPENHO + '+pQtdeEmpenho+') where PRD_REFER = '''+pMateria+''''+
              ConcatSe(' and ', DBInicio.ExclusivoSql('PRODUTOS'));
           DataMovimento2.sqlaux.ExecSql;
       end
      else
       begin
           DataMovimento2.sqlaux.close;
           DataMovimento2.sqlaux.sql.text := 'Update PRD0000 set PRD_EMPENHO = (PRD_EMPENHO - '+pQtdeEmpenho+') where PRD_REFER = '''+pMateria+''''+
            ConcatSe(' and ', DBInicio.ExclusivoSql('PRODUTOS'));
           DataMovimento2.sqlaux.ExecSql;
       end;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao atualizar o Empenho ! '+e.message));
    end;
end;
function QtdeCasaDecimal( const fTipo: String) : String;
begin
  QtdeCasaDecimal(dbInicio.EMPRESA.EMP_CODIGO,ftipo);
end;

function QtdeCasaDecimal(const emp_codigo:String ; const fTipo: String) : String;
Var
  fQtde : Integer;
begin
    try

      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('PARAMETROS','SELECT P1.PMT_QTDE_DECIMAIS, PMT_QTDE_DEC_PED, PMT_QTDE_DEC_OCP  FROM PRMT0001 P1 ',
                                                'WHERE P1.EMP_CODIGO = '+ QuotedStr(emp_codigo) ,'P1.EMP_CODIGO','P1.');
      DataCadastros.sqlUpdate.Open;
      if fTipo= 'N' then
        fQtde := DataCadastros.sqlUpdate.FieldByName('PMT_QTDE_DECIMAIS').AsInteger
      Else if ftipo = 'P' then
        fQtde := DataCadastros.sqlUpdate.FieldByName('PMT_QTDE_DEC_PED').AsInteger
      else if ftipo = 'OCP' then
        fQtde := DataCadastros.sqlUpdate.FieldByName('PMT_QTDE_DEC_OCP').AsInteger ;


      if (MatchText(fTipo,['N','OCP'])) then //Nota Fiscal
         begin
             if (fQtde = 0) or (fQtde = 1) then
                Result := '#,0';
             if (fQtde = 2) then
                Result := '#,##0.00';
             if (fQtde = 3) then
                Result := '#,###0.000';
             if (fQtde = 4) then
                Result := '#,####0.0000';
             if (fQtde = 5) then
                Result := '#,####0.00000';
         end;
      if (fTipo = 'P') then //pedido
         begin
             if (fQtde = 0) or (fQtde = 1) then
                Result := '###,###,####0';
             if (fQtde = 2) then
                Result := '###,###,####0.00';
             if (fQtde = 3) then
                Result := '###,###,####0.000';
             if (fQtde = 4) then
                Result := '###,###,####0.0000';
             if (fQtde = 5) then
                Result := '###,###,####0.00000';

         end;
      DataCadastros.sqlUpdate.Close;
    except on E:EdataBaseError do
       uteis.erro  (pchar('Erro ao abrir o arquivo de parametros ! '+e.message));
    end;
end;

function ExtrairLetra(wTEXTO:String) :String;
Var
I:Integer;
X:String;
begin
   for I := 1 to Length(wTEXTO) do
     begin
         if not (wTexto[I] in ['0'..'9']) then
           begin
               X := X + Copy(wTexto,I,1);
           end;
     end;
   Result := X;

end;


procedure Reserva_MateriaNovo(wMateria,wQtdeReserva,wEmpresa,wNum_OP: String);
begin
    try
      {Baixa do Estoque a quantidade Apontada}
      wSql1      := 'Update PRD0000 Set PRD_RESERVA = (PRD_RESERVA + '+wQtdeReserva+') ';
      wSeleciona := 'where PRD_REFER = '''+wMateria+''' AND EMP_CODIGO = '''+wEmpresa+'''';
      //
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=wSql1+wSeleciona;
      DataCadastros.sqlUpdate.Execsql;
      //
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao fazer a reserva no Estoque ! '+e.message));
    end;

    try
      {Atualaliza a qtde reservada nos itens da O.P}
      wSql1      := 'Update OSV_IT02 Set OSI_RESERVADO = (OSI_RESERVADO + '+wQtdeReserva+') ';
      wSeleciona := 'where PRD_REFER = '''+wMateria+''' and OSV_CODIGO = '''+wNum_op+'''  and  EMP_CODIGO = '''+wEmpresa+'''';
      //
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=wSql1+wSeleciona;
      DataCadastros.sqlUpdate.Execsql;
      //
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao fazer a reserva no item da O.P ! '+e.message));
    end;
end;

Function Retorna_Qtde_Estoque(xReferencia,xEmpresa:String):Integer;
begin
    try
      {Agora Retorna o Saldo do Estoque da referencia}
      {retornar somente o saldo sem fazer nada com relacao ao empenho}
      wSql1      := 'Select ((PRD_ESTOQUE+PRD_ENTRADA)-(PRD_SAIDA+PRD_RESERVA+PRD_EMPENHO)) AS WSALDO From PRD0000 ';
//    wSql1      := 'Select ((PRD_ESTOQUE+PRD_ENTRADA)-(PRD_SAIDA+PRD_RESERVA)) AS WSALDO From PRD0000 ';
      wSeleciona := ' Where PRD_REFER = '''+xReferencia+'''';
      wOrdem     := ' PRD_REFER';
      //
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=sqldef('PRODUTOS',WSQL1,wSeleciona,'','');
      DataCadastros.sqlUpdate.Open;
      {}
      if (not DataCadastros.sqlUpdate.IsEmpty) then
         begin
             Result := DataCadastros.sqlUpdate.Fieldbyname('wSALDO').AsInteger;
         end
      else
         result := 0;
      //
    except on E:EdataBaseError do
      uteis.erro  (pchar('Erro ao atualizar a tabela PRD0000 a reserva !'+E.Message));
    end;

end;
Procedure Atualiza_Status_ItemOP(wREFER,wNUM_OP,wSTATUS,wSTATUS_ITEM:String;wQTDE:Currency);
var
wSQL1,wSQL2:String;
begin

   if wSTATUS = 'R' then
      begin
      {ADPATADO PARA CONTROLAR O QUANDO O CONSUMO FOR MENOR DO QUE O QUE ESTA NA FICHA TÉCNICA}
        if wSTATUS_ITEM = 'S' then
            wSQL1 := 'Update OSV_IT02 set OSI_STATUSEMPENHO = '''+wSTATUS_ITEM+''' , OSI_RESERVADO = ''0'', OSI_EMPENHO = (OSI_EMPENHO + '+ValorAmericano(FloatToStr(wQtde))+')'
        else
            wSQL1 := 'Update OSV_IT02 set OSI_STATUSEMPENHO = '''+wSTATUS_ITEM+''' , OSI_RESERVADO = (OSI_RESERVADO - '+ValorAmericano(FloatToStr(wQtde))+'), OSI_EMPENHO = (OSI_EMPENHO + '+ValorAmericano(FloatToStr(wQtde))+')'
      end
   else
       wSQL1 := 'Update OSV_IT02 set OSI_STATUSEMPENHO = '''+wSTATUS_ITEM+''' , OSI_EMPENHO = (OSI_EMPENHO + '+ValorAmericano(FloatToStr(wQtde))+')';
      //wSQL1 := 'Update OSV_IT02 set OSI_STATUSEMPENHO = '''+wSTATUS_ITEM+''' , OSI_EMPENHO = '+ValorAmericano(FloatToStr(wQtde))+'';
      //wSQL1 := 'Update OSV_IT02 set OSI_STATUSEMPENHO = '''+wSTATUS_ITEM+''' , OSI_EMPENHO = (OSI_EMPENHO + '+FloatToStr(wQTDE)+')';

      wSQL2 := 'Where OSV_CODIGO = '''+wNUM_OP+''' and PRD_REFER_ITENS = '''+wREFER+'''';

     DataCadastros.sqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.text :=sqldef('ORDEMPRODUCAO',WSQL1,wSQL2,'','');
     DataCadastros.sqlUpdate.Execsql;

end;
Procedure AtualizaStatusOP(wNUM_OP,wSTATUS :String);
var
wSQL1,wSQL2:String;
begin

      wSQL1 := 'Update OSV0001 set OSV_STATUS = '''+wSTATUS+'''';

      wSQL2 := 'Where OSV_CODIGO = '''+wNUM_OP+'''';

     DataCadastros.sqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.text :=sqldef('ORDEMPRODUCAO',WSQL1,wSQL2,'','');
     DataCadastros.sqlUpdate.Execsql;

end;

Procedure AtualizaQtdeProducao(Wrefer,wTipo,wQtde:String);
Begin
    if wTipo = 'E' then // entrada
       wSql1      := 'Update PRD0000 Set PRD_SALDOPRODUCAO = (PRD_SALDOPRODUCAO + '+wQtde+')'
    else{saida}
       wSql1      := 'Update PRD0000 Set PRD_SALDOPRODUCAO = (PRD_SALDOPRODUCAO - '+wQtde+')';

    wSeleciona := ' where PRD_REFER = '''+wRefer+'''';
    //
    DataMovimento2.sqlaux.Close;
    DataMovimento2.sqlaux.sql.text := sqlDef('PRODUTOS',wSql1,wSeleciona,'','');
    DataMovimento2.sqlaux.ExecSql;
end;

Procedure Proc_producao(wOsvCodigo,wStatus,wEmpCodigo,wNumPedido:String);
Var
  wApontado, wApontadoLote, wEstoque: Double;
  wStatusAP:String;
  wPmt_Amx_Producao_saida: STRING;
  tcr : tFrmBaseDbEstoque;
  prd_codigo : string;
begin
    try
       wPmt_Amx_Producao_saida := dbInicio.GetParametroSistema('PMT_AMX_PRODUCAO_SAIDA');
      {Busca os itens da OP, ja esta apontado no 1 registro}
      BuscaItemOP(wOsvCodigo);
      while not DmProducao.SqlCdsOsvItem.Eof do
      begin
           {Faz o Apontamento e atribui o Status do apontamento}
           (*wEstoque := Retorna_Saldo_Estoque(DmProducao.SqlCdsOsvItemPRD_REFER_ITENS.AsString,
                                             DmProducao.SqlCdsOsvItemEMP_CODIGO.AsString,
                                             DmProducao.SqlCdsOsvItemFALTA_APONTAR.AsString);*)
            tcr := tFrmBaseDbEstoque.Create(nil);
           try
             prd_codigo :=
              DBInicio.BuscaUmDadoSqlAsString(SQLDEF('PRODUTOS','select prd_codigo from prd0000 pr','where PRD_REFER = '+QuotedStr(DmProducao.SqlCdsOsvItemPRD_REFER_ITENS.AsString),'','pr.') );
             wEstoque := tcr.KardexRetornaSaldo(prd_codigo , wPmt_Amx_Producao_saida, '');
           finally
             FreeAndNil( tcr );
           end;


           //
           if (FormOrdServCentroGerar.SqlCdsParamPMT_OPS_CONCLUIR.AsString = 'S') then
               wApontado := DmProducao.SqlCdsOsvItemFALTA_APONTAR.AsFloat
           else
           if (wEstoque >= DmProducao.SqlCdsOsvItemFALTA_APONTAR.AsFloat) then
           begin
                // wApontado := DmProducao.SqlCdsOsvItemFALTA_APONTAR.AsCurrency;
                if (FormOrdServCentroGerar.wConsiderar = 'S') then
                begin
                         wStatusAp := 'S';
                         wApontado := DmProducao.SqlCdsOsvItemFALTA_APONTAR.AsFloat;
                end
                else
                begin
                      if ((DmProducao.SqlCdsOsvItemPTI_SIGLA.AsString = 'PA' ) and ( DmProducao.SqlCdsOsvItemOSI_STATUSEMPENHO.AsString = 'N')) or
                         ((DmProducao.SqlCdsOsvItemPTI_SIGLA.AsString = 'PI')  and ( DmProducao.SqlCdsOsvItemOSI_STATUSEMPENHO.AsString = 'N')) then
                      begin
                             wStatusAp := 'N';
                             wApontado := 0;
                      end
                      else
                      begin
                             wStatusAp := 'S';
                             wApontado := DmProducao.SqlCdsOsvItemFALTA_APONTAR.AsCurrency;
                      end;
                  end;
           end
           else
           begin
                  if (FormOrdServCentroGerar.wConsiderar = 'S') then
                  begin
                         if (wEstoque <= 0) then
                            wStatusAp := 'N'
                         else
                            wStatusAp := 'P';
                         wApontado := wEstoque;
                  end
                  else
                  begin
                         if (DmProducao.SqlCdsOsvItemPTI_SIGLA.AsString = 'PA') or (DmProducao.SqlCdsOsvItemPTI_SIGLA.AsString = 'PI') then
                         begin
                                wStatusAp := 'N';
                                wApontado := 0;
                         end
                         else
                         begin
                                if (wEstoque <= 0) then
                                   wStatusAp := 'N'
                                else
                                   wStatusAp := 'P';
                                wApontado := wEstoque;
                         end
                  end;
           end;
           {Gerar Ordem de Produçao com Reserva}
           if (wStatus = 'R') then
           begin
                  wStatusAp := 'N'; {Quando for Reserva o Apontamento é Pendente sempre}
                  if (dbInicio.GetParametroSistema('PMT_ATULIZA_ESTOQUE')  = 'F') then  // Atualiza a reserva pela producao
                     Reserva_Materia(DmProducao.SqlCdsOsvItemPRD_REFER_ITENS.AsString, ValorAmericano(FloatToStr(wApontado)));
                  {Atualiza o Status do Item na Tabela OSV_IT02}
                  Incrementa_Qtde_Reserva_Empenho(DmProducao.SqlCdsOsvItemOSI_REGISTRO.AsString,
                                                  wStatus,
                                                  wStatusAp,
                                                  ValorAmericano(FloatToStr(wApontado)));
           end;
           //
           if (wStatus = 'P') then
           begin
                  if (wApontado > 0) then
                  begin
                         if (DmProducao.SqlCdsOsvItemPRD_GERENCIA_LOTE.AsString = 'S') then // verifica se controla lote
                         begin
                           BuscaLoteProduto (DmProducao.SqlCdsOsvItemPRD_REFER_ITENS.AsString);
                             ///if DmProducao.sqlPrd_lote.IsEmpty then GeraException('ERRO: Não há lotes cadastrados na MP');
                           if not DmProducao.sqlPrd_lote.IsEmpty then
                           begin
                              DmProducao.sqlPrd_lote.First;
                             while (wApontado <> 0 ) do
                             begin
                               if wApontado <=  DmProducao.sqlPrd_lote.FieldByName('PRDL_SALDO').AsFloat then
                                  wApontadoLote :=  wApontado
                               else
                                 wApontadoLote :=  DmProducao.sqlPrd_lote.FieldByName('PRDL_SALDO').AsFloat;

                                Inserir_Empenho('A',
                                               DmProducao.SqlCdsOsvItemOSV_CODIGO.AsString,
                                               DmProducao.SqlCdsOsvItemPRD_REFER_ITENS.AsString,
                                               DmProducao.SqlCdsOsvItemEMP_CODIGO.AsString,
                                               DataAmericana(DateToStr(now)),
                                               ValorAmericano(FloatToStr(wApontadoLote)),
                                               DmProducao.sqlPrd_lote.FieldByName('PRDL_REGISTRO').AsInteger
                                               );

                                 //Novo Kardex
                                 if (wApontadoLote > 0) then
                                 begin
                                     tcr := tFrmBaseDbEstoque.Create(nil);
                                     try
                                         tcr.KardexLancamento(DmProducao.SqlCdsOsvItemOSI_REGISTRO.AsString,
                                                             'PRO',
                                                             wPmt_Amx_Producao_saida,
                                                             '',
                                                             prd_codigo,
                                                             '',//grade
                                                             '',
                                                             'S',
                                                             '',
                                                             inttostr(DmProducao.sqlPrd_lote.FieldByName('PRDL_REGISTRO').AsInteger),// lote
                                                             'EMPENHADO PARA PRODUÇÃO',
                                                             Now,
                                                             wApontadoLote,
                                                             FormOrdServCentroGerar.CdsTempNUM_OP_ORIGEN.AsString,
                                                             FormOrdServCentroGerar.EdtORDEM.Text,
                                                             0.00
                                                             );
                                      finally
                                        FreeAndNil(tcr);
                                      end;
                                 end;

                                wApontado :=  wApontado - wApontadoLote;
                               DmProducao.sqlPrd_lote.Next;
                             end;
                                {Atualizar o Campo PRD_EMPENHO no Estoque}
                               Atualiza_Empenho_Estoque('A',
                                                        DmProducao.SqlCdsOsvItemPRD_REFER_ITENS.AsString,
                                                        ValorAmericano(FloatToStr(wApontado)));
                             {Atualiza o Status do Item na Tabela OSV_IT02}
                               Incrementa_Qtde_Reserva_Empenho(DmProducao.SqlCdsOsvItemOSI_REGISTRO.AsString,
                                                               wStatus,
                                                               wStatusAp,
                                                               ValorAmericano(FloatToStr(wApontado)));
                               {Atualiza Saldo Produçao}
                               AtualizaQtdeProducao(DmProducao.SqlCdsOsvItemPRD_REFER_ITENS.AsString,
                                                    'E',
                                                    ValorAmericano(FloatToStr(wApontado)));
                           end;
                         end
                         else
                         begin
                             Inserir_Empenho('A',
                                             DmProducao.SqlCdsOsvItemOSV_CODIGO.AsString,
                                             DmProducao.SqlCdsOsvItemPRD_REFER_ITENS.AsString,
                                             DmProducao.SqlCdsOsvItemEMP_CODIGO.AsString,
                                             DataAmericana(DateToStr(now)),
                                             ValorAmericano(FloatToStr(wApontado)),0);

                             {Atualizar o Campo PRD_EMPENHO no Estoque}
                             Atualiza_Empenho_Estoque('A',
                                                      DmProducao.SqlCdsOsvItemPRD_REFER_ITENS.AsString,
                                                      ValorAmericano(FloatToStr(wApontado)));
                             {Atualiza o Status do Item na Tabela OSV_IT02}
                             Incrementa_Qtde_Reserva_Empenho(DmProducao.SqlCdsOsvItemOSI_REGISTRO.AsString,
                                                             wStatus,
                                                             wStatusAp,
                                                             ValorAmericano(FloatToStr(wApontado)));
                             {Atualiza Saldo Produçao}
                             AtualizaQtdeProducao(DmProducao.SqlCdsOsvItemPRD_REFER_ITENS.AsString,
                                                  'E',
                                                  ValorAmericano(FloatToStr(wApontado)));
                             //Novo Kardex
                             if (wApontado > 0) then
                             begin
                                 tcr := tFrmBaseDbEstoque.Create(nil);
                                 try
                                     tcr.KardexLancamento(DmProducao.SqlCdsOsvItemOSI_REGISTRO.AsString,
                                                         'PRO',
                                                         wPmt_Amx_Producao_saida,
                                                         '',
                                                         prd_codigo,

                                                         '',//grade
                                                         '',
                                                         'S',
                                                         '',
                                                         '',//Novo esquema de lote
                                                         'EMPENHADO PARA PRODUÇÃO',
                                                         Now,
                                                         wApontado,
                                                         FormOrdServCentroGerar.CdsTempNUM_OP_ORIGEN.AsString,
                                                         FormOrdServCentroGerar.EdtORDEM.Text,
                                                         0.00
                                                         );
                                  finally
                                    FreeAndNil(tcr);
                                  end;
                             end;
                         end;
                  end;
           end;
           //
           DmProducao.SqlCdsOsvItem.Next;
      end;
      //
      try
        {Marcar OP como Producao}
        Mudar_Status_Op(wEmpCodigo,
                        wOsvCodigo,
                        wStatus);
        //
        {Atualiza o Status do Empenho na tabela OSV0001}
        Mudar_Status_Empenho(wEmpCodigo,
                             wOsvCodigo);
        //
        {Atualiza o Flag da Tabela de Pedido PED0000}
        wSql1      := 'Update PED0000 set PED_PRODUCAO = ''S''';
        //
        wSeleciona := ' Where PED_CODIGO ='''+wNumPedido+''' AND EMP_CODIGO = '''+wempCodigo+'''';
        //
        DataCadastros.sqlUpdate.Close;
        DataCadastros.SqlUpdate.sql.text :=wSql1+wSeleciona;
        DataCadastros.sqlUpdate.Execsql;
      except on E:EDataBaseError do
         uteis.erro  (pchar('Erro ao transferir a OP para produção ! '+e.message));
      end;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao gerar o produção !'));
    end;
end;
Procedure BuscaLoteProduto(wPrd_Refer :string);
begin
 DmProducao.sqlPrd_lote.Close;
 DmProducao.sqlPrd_lote.CommandText :=  SQLDEF('PRODUTOS',
 ' SELECT prdl_registro, prdl_saldo, prd_refer FROM PRD_LOTE l JOIN PRD0000 p ON (p.PRD_CODIGO = l.PRD_CODIGO)  ',
 ' WHERE p.PRD_REFER ='+ QuotedStr(wPrd_Refer) +
 ' AND prdl_saldo >0 ' ,
 ' prdl_registro, prdl_data_validade ','P.') ;
 DmProducao.sqlPrd_lote.Open;

end;
Procedure BuscaItemOP(WNumOP:String);
Begin
   try
     wSql1      := 'Select O2.EMP_CODIGO,O2.OSI_REGISTRO,O2.OSV_CODIGO,O2.PRD_REFER_ITENS,P2.PTI_SIGLA,O2.OSI_STATUSEMPENHO, P1.PRD_GERENCIA_LOTE, ';
     wSql2      := 'Cast((O2.osi_qtde1+O2.osi_qtde2+O2.osi_qtde3+O2.osi_qtde4+O2.osi_qtde5+O2.osi_qtde6+O2.osi_qtde7+O2.osi_qtde8)-(O2.osi_reservado + O2.osi_empenho) AS NUMERIC(15,5)) AS FALTA_APONTAR,';
     wSql3      := '((P1.PRD_ESTOQUE+P1.PRD_ENTRADA)-(P1.PRD_SAIDA+P1.PRD_RESERVA+P1.PRD_EMPENHO)) AS WSALDO from OSV_IT02 O2 left join PRD0000 P1 '+
                   ' ON (O2.PRD_REFER_ITENS = P1.PRD_REFER '+ ConcatSe('and P1.', DBInicio.ExclusivoSql('PRODUTOS')) +' ) '+
                   ' left join PRD_TIPO P2 ON (P1.PTI_CODIGO = P2.PTI_CODIGO) ';
     //
     wSeleciona := 'Where O2.OSV_CODIGO = '''+WNumOP+'''';
     wOrdem     := ' Order by O2.OSV_CODIGO';
     //
     DmProducao.SqlCdsOsvItem.Close;
     DmProducao.SqlCdsOsvItem.CommandText := wSql1+wSql2+wSql3+wSeleciona+wOrdem;
     DmProducao.SqlCdsOsvItem.Open;
     DmProducao.SqlCdsOsvItem.First;
     //
   except on E:EDataBaseError do
      uteis.erro  (pchar('Erro ao abrir a tabela ! '+e.message));
   end;
end;

function Atribui_Letra_Pedido(fNPedido: String): String;
Var
  wNPedido,
  wNLetra   : String;
begin
    try
      wNPedido := StrZero(Copy(fNPedido,1,6),6);
      wNLetra  := Copy(fNPedido,7,1);
      //
      Result := Proxima_Letra(wNLetra);
    except
       uteis.erro  (pchar('Erro ao atribuir a letra ao pedido ! '));
    end;
end;

function Proxima_Letra(fLetra:String): String;
begin
    if (fLetra = '') then
       Result := 'A';
    if (fLetra = 'A') then
       Result := 'B';
    if (fLetra = 'B') then
       Result := 'C';
    if (fLetra = 'C') then
       Result := 'D';
    if (fLetra = 'D') then
       Result := 'E';
    if (fLetra = 'E') then
       Result := 'F';
    if (fLetra = 'F') then
       Result := 'G';
    if (fLetra = 'G') then
       Result := 'H';
    if (fLetra = 'H') then
       Result := 'I';
    if (fLetra = 'I') then
       Result := 'J';
    if (fLetra = 'J') then
       Result := 'K';
    if (fLetra = 'K') then
       Result := 'L';
    if (fLetra = 'L') then
       Result := 'M';
    if (fLetra = 'M') then
       Result := 'N';
    if (fLetra = 'N') then
       Result := 'O';
    if (fLetra = 'O') then
       Result := 'P';
    if (fLetra = 'P') then
       Result := 'Q';
    if (fLetra = 'Q') then
       Result := 'R';
    if (fLetra = 'R') then
       Result := 'S';
    if (fLetra = 'S') then
       Result := 'T';
    if (fLetra = 'T') then
       Result := 'U';
    if (fLetra = 'U') then
       Result := 'V';
    if (fLetra = 'V') then
       Result := 'W';
    if (fLetra = 'W') then
       Result := 'X';
    if (fLetra = 'X') then
       Result := 'Y';
    if (fLetra = 'Y') then
       Result := 'Z';
end;

Function Considera_Estoque(fSaldoEstoque,fQtdePedido:Double;fSigla,fConsiderar:String;fBtn_Pa,fBtn_Pi:Boolean):Double;
begin
    if (fConsiderar = 'S') then
       begin
           if (fSaldoEstoque >= fQtdePedido) then
              begin
                  Result := fQtdePedido;                  //     wQtdeProduzirPe := wProduzirQtde;
              end
           else
              begin
                  Result := (fQtdePedido - fSaldoEstoque); // wQtdeProduzirPe := (wProduzirQtde - wSaldoEstoque);
              end;
       end
    else
       begin
           {Não Considera o Estoque e o PA E PI esta marcado}
           if (fBtn_Pa) and (fBtn_Pi) then
              begin
                  Result := fQtdePedido;  //wQtdeProduzirPe := wProduzirQtde;
              end
           else
              begin
                  {PA - não esta marcado - Considera}
                  if (not fBtn_Pa) then
                     begin
                         if (fSigla = 'PA') then
                            begin
                                Result := (fQtdePedido - fSaldoEstoque);//wQtdeProduzirPe := (wProduzirQtde - wSaldoEstoque);
                            end;
                     end
                  else
                     begin
                         if (fSigla = 'PA') then
                            begin
                                Result :=  fQtdePedido; //wQtdeProduzirPe := (wProduzirQtde);
                            end;
                     end;
                  {PI - não esta marcado}
                  if (not fBtn_PI) then
                  begin
                         if (fSigla = 'PI') then
                            Result := (fQtdePedido - fSaldoEstoque); //wQtdeProduzirPe := (wProduzirQtde - wSaldoEstoque);
                  end
                  else
                  begin
                         if (fSigla = 'PI') then
                            Result := fQtdePedido; //wQtdeProduzirPe := (wProduzirQtde);
                  end;
              end;
           //
       end;
end;

procedure Mudar_Status_Empenho(pEmpresa,pOP : String);
Var
  pStatus   : Boolean;
  pAtribuir : String;
begin
    wSeleciona := 'where O1.OSV_CODIGO = '''+pOP+'''' ;//+ ' and O1.PRD_REFER = '''+wReferencia+'''';
    wOrdem     := 'O1.OSV_CODIGO';
    DmProducao.CdsOsvIt.Close;
    DmProducao.CdsOsvIt.CommandText := SQLDEF('ORDEMPRODUCAO','Select O1.* from OSV_IT02 O1',wSeleciona,wOrdem,'O1.');
    DmProducao.CdsOsvIt.Open;
    DmProducao.CdsOsvIt.First;
    pStatus := True;
    DmProducao.CdsOsvIt.DisableControls;
    while not DmProducao.CdsOsvIt.Eof do
     begin
         if (DmProducao.CdsOsvItOSI_STATUSEMPENHO.AsString <>'S') then
            pStatus := False;
         DmProducao.CdsOsvIt.Next;
     end;
    DmProducao.CdsOsvIt.EnableControls;
    //
    {Atualiza o Status do Empenho na Tabela OSV0001}
    if (pStatus ) then
       pAtribuir := 'S'  //Todos os Itens da OP estao concluídos.
    else
       pAtribuir := 'N'; //Existem Itens da OP pendente.
    //
    DataCadastros.sqlUpdate.Close;
    DataCadastros.SqlUpdate.sql.text :='Update OSV0001 SET OSV_STATUS_SITUACAO = '''+pAtribuir+''' WHERE EMP_CODIGO = '''+pEmpresa+''' AND OSV_CODIGO = '''+pOP+'''';
    DataCadastros.sqlUpdate.Execsql;
end;


Function Verifica_Item_OP(fEmpresa,fPedido:String):Boolean;
begin
    try
      wSql1      := 'Select PRF_OP from PED_IT01 ';
      wSeleciona := 'where EMP_CODIGO = '''+fEmpresa+''' and PED_CODIGO = '''+fPedido+'''';
      wOrdem     := ' order by EMP_CODIGO,PED_CODIGO';
      Result     := True;
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=wSql1+wSeleciona+wOrdem;
      DataCadastros.sqlUpdate.Open;
      DataCadastros.sqlUpdate.First;
      DataCadastros.sqlUpdate.DisableControls;
      while not DataCadastros.sqlUpdate.Eof do
       begin
           if (DataCadastros.sqlUpdate.FieldByName('PRF_OP').AsString <> 'S') then
              Result := False;
           DataCadastros.sqlUpdate.Next;
       end;
     DataCadastros.sqlUpdate.EnableControls;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao verificar situação da Ordem de produção ! '+e.message));
    end;
end;

procedure Atualizar_Limite_Conta(pDC,pTipo,pEmpresa, pBanco,
  pValor: String);
begin
    try
      wSql1 := '';
      if (pTipo = 'C') then   //Cheque
         begin
             if (pDC = 'C') then  //Credita no campo o valor da parcela no campo cheque
                wSQL1 := 'Update BAN0000 set BAN_LIMITE_UTILIZADO_CHEQ = (BAN_LIMITE_UTILIZADO_CHEQ + '+ValorAmericano(pValor)+')'
             else                 //Debita no campo o valor da parcela no campo cheque
                wSQL1 := 'Update BAN0000 set BAN_LIMITE_UTILIZADO_CHEQ = (BAN_LIMITE_UTILIZADO_CHEQ - '+ValorAmericano(pValor)+')';
         end;
      if (pTipo = 'D') then   //Duplicata
         begin
             if (pDC = 'C') then  //Credita no campo o valor da parcela no campo duplicata
                wSQL1 := 'Update BAN0000 set BAN_LIMITE_UTILIZADO_DUPL = (BAN_LIMITE_UTILIZADO_DUPL + '+ValorAmericano(pValor)+')'
             else                 //Debita no campo o valor da parcela no campo duplicata
                wSQL1 := 'Update BAN0000 set BAN_LIMITE_UTILIZADO_DUPL = (BAN_LIMITE_UTILIZADO_DUPL - '+ValorAmericano(pValor)+')'
         end;
      //
//      wSeleciona := ' where EMP_CODIGO = '''+pEmpresa+''' AND BAN_CODIGO = '''+pBanco+'''';
      wSeleciona := ' where BAN_CODIGO = '''+pBanco+'''';
      //
      if (pTipo <> '') then
        begin
           DataCadastros.sqlUpdate.Close;
           DataCadastros.SqlUpdate.sql.text :=wSql1 + wSeleciona;
           DataCadastros.sqlUpdate.Execsql;
        end;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao atualizar o Limite do Banco ! '+e.message));
    end;
end;

function DifDias(DataVenc,DataAtual:TDateTime): String;
Var
Data : TDateTime;
dia, mes, ano: Word;

begin
    //Data := 0;
    Data := (DataVenc - DataAtual);
    DecodeDate( Data, ano, mes, dia);
    Result := FloatToStr(Data);
end;

Procedure Atualiza_Estoque_Variacao(pDC,pRefer,pVar1,pVar2,pVar3,pVar4,pVar5,pVar6,pVar7,pVar8 : String);
begin
    {se tiver variacao baixa estoque das variacoes}
    try
      if (pDC = 'D') then
         begin
             wSQL1 := 'Update PRD0000 set '+
                      'PRD_VAR1 = (PRD_VAR1 - '+ValorAmericano(pVar1)+'),'+
                      'PRD_VAR2 = (PRD_VAR2 - '+ValorAmericano(pVar2)+'),'+
                      'PRD_VAR3 = (PRD_VAR3 - '+ValorAmericano(pVar3)+'),'+
                      'PRD_VAR4 = (PRD_VAR4 - '+ValorAmericano(pVar4)+'),'+
                      'PRD_VAR5 = (PRD_VAR5 - '+ValorAmericano(pVar5)+'),'+
                      'PRD_VAR6 = (PRD_VAR6 - '+ValorAmericano(pVar6)+'),'+
                      'PRD_VAR7 = (PRD_VAR7 - '+ValorAmericano(pVar7)+'),'+
                      'PRD_VAR8 = (PRD_VAR8 - '+ValorAmericano(pVar8)+')';
         end
      else
         begin
             wSQL1 := 'Update PRD0000 set '+
                      'PRD_VAR1 = (PRD_VAR1 + '+ValorAmericano(pVar1)+'),'+
                      'PRD_VAR2 = (PRD_VAR2 + '+ValorAmericano(pVar2)+'),'+
                      'PRD_VAR3 = (PRD_VAR3 + '+ValorAmericano(pVar3)+'),'+
                      'PRD_VAR4 = (PRD_VAR4 + '+ValorAmericano(pVar4)+'),'+
                      'PRD_VAR5 = (PRD_VAR5 + '+ValorAmericano(pVar5)+'),'+
                      'PRD_VAR6 = (PRD_VAR6 + '+ValorAmericano(pVar6)+'),'+
                      'PRD_VAR7 = (PRD_VAR7 + '+ValorAmericano(pVar7)+'),'+
                      'PRD_VAR8 = (PRD_VAR8 + '+ValorAmericano(pVar8)+')';
         end;
      //
      wSQL2 := ' where PRD_REFER = '''+pRefer+'''';

      //


      DataCadastros.sqlUpdate.close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSQL1,wSQL2,'','');
      DataCadastros.sqlUpdate.Execsql;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao atualiza o Saldo do Estoque das variações ! '+e.message));
    end;
end;

Procedure Atualiza_Reserva_Variacao_Estoque(pDC,pRefer,pVar1,pVar2,pVar3,pVar4,pVar5,pVar6,pVar7,pVar8 : String);
begin
    {se tiver variacao baixa estoque das variacoes}
    try
      if (pDC = 'D') then
         begin
             wSQL1 := 'Update PRD0000 set '+
                      'PRD_RESERVA_VAR1 = (PRD_RESERVA_VAR1 - '+ValorAmericano(pVar1)+'),'+
                      'PRD_RESERVA_VAR2 = (PRD_RESERVA_VAR2 - '+ValorAmericano(pVar2)+'),'+
                      'PRD_RESERVA_VAR3 = (PRD_RESERVA_VAR3 - '+ValorAmericano(pVar3)+'),'+
                      'PRD_RESERVA_VAR4 = (PRD_RESERVA_VAR4 - '+ValorAmericano(pVar4)+'),'+
                      'PRD_RESERVA_VAR5 = (PRD_RESERVA_VAR5 - '+ValorAmericano(pVar5)+'),'+
                      'PRD_RESERVA_VAR6 = (PRD_RESERVA_VAR6 - '+ValorAmericano(pVar6)+'),'+
                      'PRD_RESERVA_VAR7 = (PRD_RESERVA_VAR7 - '+ValorAmericano(pVar7)+'),'+
                      'PRD_RESERVA_VAR8 = (PRD_RESERVA_VAR8 - '+ValorAmericano(pVar8)+')';
         end
      else
         begin
             wSQL1 := 'Update PRD0000 set '+
                      'PRD_RESERVA_VAR1 = (PRD_RESERVA_VAR1 + '+ValorAmericano(pVar1)+'),'+
                      'PRD_RESERVA_VAR2 = (PRD_RESERVA_VAR2 + '+ValorAmericano(pVar2)+'),'+
                      'PRD_RESERVA_VAR3 = (PRD_RESERVA_VAR3 + '+ValorAmericano(pVar3)+'),'+
                      'PRD_RESERVA_VAR4 = (PRD_RESERVA_VAR4 + '+ValorAmericano(pVar4)+'),'+
                      'PRD_RESERVA_VAR5 = (PRD_RESERVA_VAR5 + '+ValorAmericano(pVar5)+'),'+
                      'PRD_RESERVA_VAR6 = (PRD_RESERVA_VAR6 + '+ValorAmericano(pVar6)+'),'+
                      'PRD_RESERVA_VAR7 = (PRD_RESERVA_VAR7 + '+ValorAmericano(pVar7)+'),'+
                      'PRD_RESERVA_VAR8 = (PRD_RESERVA_VAR8 + '+ValorAmericano(pVar8)+')';
         end;
      //
      wSeleciona := ' where PRD_REFER = '''+pRefer+'''';
      //
      DataCadastros.sqlUpdate.close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSQL1,wSeleciona,'','');
      DataCadastros.sqlUpdate.Execsql;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao atualiza o Saldo do Estoque das variações ! '+e.message));
    end;
end;

procedure Reserva_Materia(const wMateria,wQtdeReserva: String);
begin
    {retirado o try except por causa da transacao ao gravar item do pedido}
    {Incrementa o Campo PRD_RESERVA a quantidade reservada}
    wSql1      := 'Update PRD0000 Set PRD_RESERVA = (PRD_RESERVA + '+wQtdeReserva+') ';
    //
    wSeleciona := 'where PRD_REFER = '''+wMateria+'''';
    //
    DataCadastros.SQLConnection1.Execute(SqlDef('PRODUTOS',wSql1,wSeleciona,'',''),nil);
end;



function RetirarDecimais(rValor:Real;iDecimal:Integer):Real;
 Var
   sValor:String;
begin
   sValor := CurrToStr(rValor * 100);
   Delete(sValor,Pos(',',sValor),iDecimal + 1);
   Result := (StrTocurr(sValor) / 100);
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

function ExtrairAspas(wTexto:string):String;
Var
I:Integer;
wAUX:String;
begin
   wAUX := '';
   for I := 1 to Length(wTEXTO) do
   begin
      if (wTEXTO[I]  in [chr(39)]) then   //'
        begin
           delete(wTEXTO,I,1);
        end;
     if (wTEXTO[I]  in [chr(34)]) then    //"
        begin
           delete(wTEXTO,I,1);
        end;
     if (wTEXTO[I]  in [chr(39)]) then    //'
            begin
               delete(wTEXTO,I,1);
            end;
     if (wTEXTO[I]  in [chr(34)]) then    //"
        begin
           delete(wTEXTO,I,1);
        end;
      if (wTEXTO[I]  in [chr(39)]) then   //"
            begin
               delete(wTEXTO,I,1);
            end;
      if (wTEXTO[I]  in [chr(44)]) then   //,
            begin
               delete(wTEXTO,I,1);
            end;
   end;
   Result := wTexto;
end;

Function Substitui_Apostrofo(wTexto:String):String;
Var
I   :Integer;
wAUX:String;
begin
   wAUX := '';
   for I := 1 to Length(wTEXTO) do
     begin
        if (wTEXTO[I] in [chr(39)]) then   //'
           begin
              wAUX := wAUX + ' ';
           end
        else
           wAUX := wAUX + COPY(wTEXTO,I,1);
     end;
   Result := wAUX;
end;

{procedure uteis.erro  ( msg : pchar );
begin
   application.messagebox ( msg, 'Erro', mb_ok + mb_iconstop );
end;}

{mensagen para confirmação}

{//function uteis.confirmacao  ( msg : pchar ) : word;
begin
   result := application.messagebox ( msg, 'Confirmação', mb_yesno + mb_iconquestion );
end;}

function MesExtenso(const Mes:Word ) : string;
const meses : array[0..11] of PChar = ('Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro','Outubro', 'Novembro', 'Dezembro');
begin
   result := meses[mes-1];
end;

Function Parcelar_Valor(iNumParcela,iNParcelas:Integer;cValor,Cdescto:Real):Real;
Var
Z    : Integer;
waux1    : Variant;
wdescto,
wValor,
yValor   : Double;
begin

   yValor := cValor;
   if (Cdescto > 0) then
      begin
         cValor := int(100*(cValor-((cValor*Cdescto)/100)))/100;
      end;
   {Guarda valor já c/ descto }
   wdescto:= cValor;
   {Desconta no Valor total da Nota o Valor da Retencao}
   {calcula valor das parcelas c/ duas casas decimais sem arredondamento}
   cValor := int(100*(cValor/iNParcelas))/100;
   //Guardando diferença em centavos e transformando-o em inteiro
   // wdescto = Vl total da nota; wvalor = vl da parcela c/ 2 casas
   waux1:= (wdescto-(cValor*iNParcelas))*100;
   {transforma inteiro p/ comparar depois}
   waux1:= StrToInt(FloatToStrf(waux1,ffFixed,1,0));
   //
   if (iNumParcela = iNParcelas) then
      begin
         Z := (iNParcelas -1);
         if (waux1 > 0) then
            wValor :=(yValor-((cValor + 0.01) * Z))
         else
            wValor :=(yValor-(cValor * Z));
         Result := wValor;
      end
   else
      begin
         if (waux1 > 0) then
            begin
               Result := (cValor + 0.01);
               waux1  := waux1 - 1;
            end
         else
            begin
               Result := cValor;
            end;
      end;
end;

Function Retornar_Vencto(iNumParcela,iNParcelas,iCarencia,iDiasEntreParcelas:Integer;sManterDia:String;DataEmissao:Tdatetime):TDateTime;
Var
sData,
wDia,
wMes,
wAno,
wDiaAux     : String;
wVencto     : TDateTime;
wIntervalo : Integer;
begin
   {Intervalo entre Parcelas}
   wIntervalo := iDiasEntreParcelas;
   sData   := DateToStr(DataEmissao);

   wVencto    := DataEmissao;
   {1ª Parcela}
   if (iNumParcela = 1) then
      begin
         sData   := DateToStr(DataEmissao);
         wVencto := wVencto + iCarencia;
      end
   else
      begin
         if (sManterDia = 'N') then
            begin
               sData   := DateToStr(DataEmissao);
               wVencto := wVencto + wIntervalo;
            end
         else
            begin
               {Desmenbra data da variável }
               wDia    := FormatDateTime('dd',wVencto);
               wDiaAux := Wdia;
               wMes    := FormatDateTime('mm',wVencto);
               wAno    := FormatDateTime('yyyy',wVencto);
               {Incrementa meses da data }      {Ex: se interv 60 = 2 meses}
               wMes    := IntToStr(StrToInt(wMes) + (wIntervalo div 30));
               {IFs que verifican validade de datas}
               if (wMes = '2') and ((wDia = '29') or (wDia = '30') or (wDia = '31')) then
                  wDia := '28';
               if (wMes = '4') and (wDia = '31') then
                  wDia := '30';
               if (wMes = '6') and (wDia = '31') then
                  wDia := '30';
               IF (wMes = '9') and (wDia = '31') then
                  wDia := '30';
               IF (wMes = '11') and (wDia = '31') then
                  wDia := '30';
                  {se mes passar do ano corrente}                               {ou passar um ano, ou mais}
               if (((StrToInt(wMes) div 12)=1)
               and((StrToInt(wMes) mod 12)>0))
               or ((StrToInt(wMes) div 12)>1) then
                  Begin
                      {se sobra meses}
                      if (StrToInt(WMes) mod 12)>0 then
                         begin
                             wAno := IntToStr(StrToInt(wAno)+ StrToInt(wMes) div 12);
                             {a sobra da divisão equivale ao mes}  {Ex:14 div 12 = fevereiro}
                             wMes := StrZero(IntToStr(StrToInt(wMes) mod 12),2);
                         end
                      else
                         begin
                             {Ex:24 meses div por 12 = 2 anos}{-1 porque não passou de dezembro}
                             wAno := IntToStr(StrToInt(wAno)+ (StrToInt(wMes) div 12)-1);
                         end;
                  end;
               {Passa vencto correto}
               wVencto := StrToDateTime(wDia+'/'+StrZero(wMes,2)+'/'+wAno);
               wDia    := wDiaAux;
            end;
      end;
   sData  := DateToStr(DataEmissao);
   Result := wVencto;
end;

procedure MarcarIndexarCampoGrade(tGrade:TDBGrid;
                                  tColuna: TColumn;
                                  tCdSTabela:TClientDataSet);
begin
   screen.Cursor := crHourglass;
  {Recupera a cor original da coluna atualmente indexada}
   if (tCdSTabela.IndexFieldNames <> '') then
       tGrade.Columns[tGrade.Tag].Title.Color := tGrade.FixedColor;
  {Se o campo não for blob ou memo e se for do tipo data}
   if (not (tColuna.Field.DataType in [ftBlob,ftMemo]))
   and(tColuna.Field.FieldKind = fkData) then
      begin
         tGrade.Tag := tColuna.Index;
         tCdSTabela.IndexFieldNames := tColuna.FieldName;
         tColuna.Title.Color := $00FFBB77;
      end
   else
      begin
         //beep;
         uteis.aviso('Não e possível ordernar por esta coluna!');
      end;
    screen.Cursor := crDefault;
end;

Function IncrementaMes(dData:TDateTime;iMes:Integer):String;
begin
   Result := DateToStr(IncMonth(dData, 1));
end;

Function Verifica_Ultimo_Dia_Mes(dData:TDateTime):TDateTime;
Var
wDia,
wMes,
wAno : String;
begin
   wDia := '';
   wMes := '';
   wAno := '';
   //
   wDia    := FormatDateTime('dd',dData);
   wMes    := FormatDateTime('mm',dData);
   wAno    := FormatDateTime('yyyy',dData);
   //
   {IFs que verifican validade de datas}
   if (wMes = '2') and ((wDia = '29') or (wDia = '30') or (wDia = '31')) then
      wDia := '28';
   if (wMes = '4') and (wDia = '31') then
      wDia := '30';
   if (wMes = '6') and (wDia = '31') then
      wDia := '30';
   IF (wMes = '9') and (wDia = '31') then
      wDia := '30';
   IF (wMes = '11') and (wDia = '31') then
      wDia := '30';
   //
   Result := StrToDateTime(wDia+'/'+StrZero(wMes,2)+'/'+wAno);
end;

function Retorna_Saldo_Almox(fRefer,fAlmox: String): Currency;
Var
  wQtde_Entra,wQtde_Saida,wQtde_Saldo,wQtde_Reserva:Currency;
begin
   try
     wQtde_Entra   := 0;
     wQtde_Saida   := 0;
     wQtde_Saldo   := 0;
     wQtde_Reserva := 0;
     wSql1      := 'select P1.prd_refer,p1.pes_tipo,cast(sum(p1.pes_qtde)as Numeric(15,4))as wqtde from PRD_ENSA P1 ';
     wSql2      := ' Group by P1.prd_refer,p1.pes_tipo';
     wSeleciona := ' where P1.PRD_REFER = '''+fREFER+''' and P1.AMX_CODIGO = '''+fAlmox+''' ';
     if Share('PRODUTOS') = 'E' then
        wSeleciona := wSeleciona + ' and P1.EMP_CODIGO = '''+dbInicio.EMPRESA.EMP_CODIGO+'''';
     DataCadastros.sqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.text :=wSql1+wSeleciona+wSql2;
     DataCadastros.sqlUpdate.Open;
     if (not DataCadastros.sqlUpdate.IsEmpty) then
        begin
            DataCadastros.sqlUpdate.First;
            while not DataCadastros.sqlUpdate.Eof do
             begin
                 if (DataCadastros.sqlUpdate.FieldByName('pes_tipo').AsString = 'E') then
                    wQtde_Entra := (wQtde_Entra + DataCadastros.sqlUpdate.FieldByName('wqtde').AsCurrency)
                 else
                    wQtde_Saida := (wQtde_Saida + DataCadastros.sqlUpdate.FieldByName('wqtde').AsCurrency);
                 DataCadastros.sqlUpdate.Next;
             end;
            //
            wSQL1      := 'select A1.* FROM PRD_RESERVA_ALMOX A1 ';
            wSeleciona := 'where A1.AMX_CODIGO = '''+fAlmox+''' AND A1.prd_refer = '''+fRefer+'''';
            //
            DataCadastros.sqlUpdate.Close;
            DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,wSeleciona,'','A1.');
            DataCadastros.sqlUpdate.Open;
            //
            if (not DataCadastros.sqlUpdate.IsEmpty) then
               begin
                   wQtde_Reserva := DataCadastros.sqlUpdate.FieldByName('PRA_QTDE_RESERVA').AsCurrency;
               end;
            wQtde_Saldo := (wQtde_Entra - (wQtde_Saida + wQtde_Reserva));
        end;
     if (wQtde_Saldo > 0) then
        Result := wQtde_Saldo
     else
        Result := 0;
   except
     on E:EDataBaseError do
       begin
           uteis.erro  (pchar('Erro ao abrir o arquivo !'+#13#10+
                      'Mensagem erro : '+e.message));
       end;
   end;
end;

procedure MarcarIndexarCampoGradeSQLClientDataSet(tGrade:TDBGrid;
                                                  tColuna: TColumn;
                                                  tCdSTabela:TSQLClientDataSet);
begin
   screen.Cursor := crHourglass;
  {Recupera a cor original da coluna atualmente indexada}
   if (tCdSTabela.IndexFieldNames <> '') then
       tGrade.Columns[tGrade.Tag].Title.Color := tGrade.FixedColor;
  {Se o campo não for blob ou memo e se for do tipo data}
   if (not (tColuna.Field.DataType in [ftBlob,ftMemo]))
   and(tColuna.Field.FieldKind = fkData) then
      begin
         tGrade.Tag := tColuna.Index;
         tCdSTabela.IndexFieldNames := tColuna.FieldName;
         tColuna.Title.Color := $00FFBB77;
      end
   else
      begin
         //beep;
         uteis.aviso('Não e possível ordernar por esta coluna!');
      end;
    screen.Cursor := crDefault;
end;


procedure ExportaSQLRenew(sTexto:AnsiString);
   var
      wREGISTRO :TextFile;
begin
   AssignFile(wREGISTRO, 'C:\Captare.sql');
   if FileExists('C:\Captare.sql') then
      Append(wREGISTRO) { se existir, apenas adiciona linhas }
   else
      ReWrite(wREGISTRO); { cria um novo se não existir }
   Writeln(wREGISTRO,DateToStr(Date)+' '+TimeToStr(Time)+ 'CAPTARE');
   Writeln(wREGISTRO,'<----------------------------------INICIO------------------------------------->');
   Writeln(wREGISTRO,'');
   Writeln(wREGISTRO,sTexto);
   Writeln(wREGISTRO,'');
   Writeln(wREGISTRO,'<------------------------------------FIM-------------------------------------->');
   Writeln(wREGISTRO,'');
   Writeln(wREGISTRO,'');
   CloseFile(wREGISTRO);
end;

function RetornaNumeroEndereco(sEndereco:String):String;
   var
      iTamanhoEndereco,
      iPosicaoVirgula,
      i:Integer;
      sAuxiliar:String;
begin
   iTamanhoEndereco := Length(sEndereco);
   for i := 0 to iTamanhoEndereco -1 do
      begin
         sAuxiliar := Copy(sEndereco,i,1);
         if (sAuxiliar = ',') then
            iPosicaoVirgula := i;
      end;
   {}
   if (iPosicaoVirgula = iTamanhoEndereco) then
      Result := 'S/N'
   else
      Result := Trim(Copy(sEndereco,iPosicaoVirgula+1,(iTamanhoEndereco-iPosicaoVirgula)));
end;


function RetornaNumeroEnderecoSomenteNumeros(sEndereco:String):String;
   var
      iTamanhoEndereco,
      iPosicaoVirgula,
      i:Integer;
      sAuxiliar,
      sNumeroEndereco:String;
begin
   iTamanhoEndereco := Length(sEndereco);
   for i := 0 to iTamanhoEndereco -1 do
      begin
         sAuxiliar := Copy(sEndereco,i,1);
         if (sAuxiliar = ',') then
            iPosicaoVirgula := i;
      end;
   sNumeroEndereco := copy(sEndereco,iPosicaoVirgula+1,iTamanhoEndereco-iPosicaoVirgula);
   sNumeroEndereco := Trim(sNumeroEndereco);
   iTamanhoEndereco := Length(sNumeroEndereco);
   for i := 0 to iTamanhoEndereco -1 do
      begin
         sAuxiliar := Copy(sNumeroEndereco,i,1);
         if (sAuxiliar = ' ') then
            begin
               iTamanhoEndereco := i;
               Break;
            end;
      end;
    sNumeroEndereco := copy(sNumeroEndereco,1,iTamanhoEndereco);
    sNumeroEndereco := ExtrairNumeros(sNumeroEndereco);
   {}
   if (sNumeroEndereco = '') then
      Result := '0'
   else
      Result := sNumeroEndereco;
end;

function RetornaEnderecoSemNumero(sEndereco:String):String;
   var
      iTamanhoEndereco,
      iPosicaoVirgula,
      i:Integer;
      sAuxiliar:String;
begin
   iTamanhoEndereco := Length(sEndereco);
   for i := 0 to iTamanhoEndereco -1 do
      begin
         sAuxiliar := Copy(sEndereco,i,1);
         if (sAuxiliar = ',') then
            iPosicaoVirgula := i;
      end;
   {}
   if (iPosicaoVirgula = iTamanhoEndereco) then
      Result := 'S/N'
   else
      Result := Trim(Copy(sEndereco,1,(iPosicaoVirgula-1)));
end;

function AddMonth(const dData: TDateTime; const Months: Extended): TDateTime;
  {***
  *  IsBisexto()
  *  Retorna 'True' caso o ano seja bisexto
  *
  *}
  function IsBisexto(Ano: Word): Boolean;
  begin
    Result := (Ano mod 4 = 0) and ((Ano mod 100 <> 0) or (Ano mod 400 = 0));
  end;
var
  Dia, Mes, Ano: Word;
  iMes: Integer;
begin
  DecodeDate (dData, Ano, Mes, Dia);
  iMes := Mes + Trunc (Months);

  if iMes > 12 then begin
    Ano := Ano + (iMes - 1) div 12;
    iMes := iMes mod 12;
    if iMes = 0 then
      iMes := 12;
  end
  else if iMes < 1 then begin
    Ano := Ano + (iMes div 12) - 1;
    iMes := 12 - Abs(iMes) mod 12;
  end;
  Mes := iMes;

  // Ensure Day of Month is valid
  if Mes = 2 then  begin
    if IsBiSexto(Ano) and (Dia > 29) then
      Dia := 29
    else if not IsBiSexto(Ano) and (Dia > 28) then
      Dia := 28;
  end
  else if (Mes in [9, 4, 6, 11]) and (Dia = 31) then
    Dia := 30;

  if Months < 0 then
    Result := EncodeDate(Ano, Mes, Dia) - Frac(Abs(Months)) * 30 - Frac(dData)
  else
    Result := EncodeDate (Ano, Mes, Dia) + Frac(Months) * 30 + Frac(dData);
end;

function Dias_Uteis(DataI, DataF:TDateTime):Integer;
var
 contador:Integer;
begin
   DataI := DataI+1;
   if DataI > DataF then
      begin
         result  := 0;
         exit
      end;
   Contador := 0;
   while (DataI <= DataF) do
      begin
         if ((DayOfWeek(DataI) <> 1) and (DayOfWeek(DataI) <> 7)) then
           Inc(Contador);
         DataI := DataI + 1;       
      end;
   result := Contador;
end;


function Verificadiadata(const Data:Tdate;const Dias:integer;const DiasCorridos: boolean):Tdate;
var
 Datainicial:Tdate;
 DataFinal:Tdate;
begin
  datainicial:=data+1;
  datafinal:=data+dias;
  while (Datainicial<=Datafinal) and not DiasCorridos  do
  begin
     //if trunc(datainicial) mod 7 = 1 then
     if ((DayOfWeek(datainicial) = 1) or (DayOfWeek(datainicial) = 7)) then
       begin
         datafinal:=Datafinal+1;
       end;
       datainicial:=datainicial+1;
  end;
  Result := datafinal;
end;




end.
