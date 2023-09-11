
{***********************************************************************
 Programa.....: TmBanest- Nome formulario = FormTrasmBancos
 Objetivo.....: Gerar arquivo de transmissão p/ bancos
 Analista.....: Márcio Neu Pacheco
 Programador..: Márcio Neu Pacheco

 Comentários:   Programa gera Arquivo CNAB
                BANESTADO - ITAÚ - CAIXA

 Criação..........: Set/00
 Ultima Alteração.: Mar/2002
 Alterado Por.....: Jackson
************************************************************************}

unit TmBanest;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls,RwFunc, Db, DBTables, Grids, DBGrids, Buttons, DBCtrls, ExtCtrls;

type
  TFormTrasmBancos = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    xInicial: TEdit;
    xFinal: TEdit;
    xNossoN: TEdit;
    xCarteira: TEdit;
    xInstrucao1: TEdit;
    xInstrucao2: TEdit;
    xMensagem: TEdit;
    TQRecParce: TQuery;
    TQRecParceFAT_CODIGO: TStringField;
    TQRecParceFPC_NUMER: TStringField;
    TQRecParceREP_CODIGO: TStringField;
    TQRecParceBAN_CODIGO: TStringField;
    TQRecParceFPC_DTEMIS: TDateTimeField;
    TQRecParceFPC_COBNUM: TStringField;
    TQRecParceFPC_COBTIPO: TStringField;
    TQRecParceFPC_STATUS: TStringField;
    TQRecParceFPC_DESCTO: TFloatField;
    TQRecParceFPC_DTDESC: TDateTimeField;
    TQRecParceFPC_VENCTO: TDateTimeField;
    TQRecParceFPC_PAGTO: TDateTimeField;
    TQRecParceFPC_VLPARC: TFloatField;
    TQRecParceFPC_VLPAGO: TFloatField;
    TQRecParceFPC_OBS: TStringField;
    TQRecParceFPC_SITPAG: TBooleanField;
    TQRecParceEMP_CODIGO: TStringField;
    TQRecParceCLI_CODIGO: TStringField;
    TQRecParceFPC_IMPDUP: TStringField;
    DBGrid1: TDBGrid;
    DsQRecParce: TDataSource;
    Label9: TLabel;
    DBLkCboBanco: TDBLookupComboBox;
    TbSequencia: TTable;
    TbSequenciaCEF_REMESSA: TStringField;
    Label10: TLabel;
    EdtProtesto: TEdit;
    Label8: TLabel;
    LbRemessa: TLabel;
    BitBtn1: TBitBtn;
    Memo1: TMemo;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    Edt_Instruc: TLabel;
    procedure MudaCorCampos(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure xInicialExit(Sender: tObject);
    procedure xFinalExit(Sender: tObject);
    procedure xFinalEnter(Sender: tObject);
    Procedure RegDetalhe_Bane;
    Procedure RegHeader_Bane;
    Procedure EspacoCampo(wCampo:string;wTamanho:Integer);
    procedure BitBtn1Click(Sender: tObject);
    Procedure MostraGerado;
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure DBLkCboBancoExit(Sender: tObject);
    Procedure RegHeader_Itau;
    Procedure RegDetalhe_Itau;
    procedure xNossoNKeyPress(Sender: tObject; var Key: Char);
    procedure xCarteiraKeyPress(Sender: tObject; var Key: Char);
    procedure xInstrucao1KeyPress(Sender: tObject; var Key: Char);
    procedure xInstrucao2KeyPress(Sender: tObject; var Key: Char);
    procedure EdtProtestoKeyPress(Sender: tObject; var Key: Char);
    procedure FormKeyDown(Sender: tObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: tObject);
    procedure xInstrucao1Exit(Sender: tObject);
    procedure xInicialKeyPress(Sender: tObject; var Key: Char);
    procedure xFinalKeyPress(Sender: tObject; var Key: Char);
    procedure EdtProtestoExit(Sender: tObject);
  private
    { Private declarations }
        {campos}
    CampoEdit    :TEdit;
    CampoDbMemo  :TDBMemo;
    CampoTDBLuk  :TDBLookupComboBox;
    
    function DgVerificador(Numero:String):string;
    Procedure GravaHeader;
    procedure GravaRegistros;
    procedure GravaTrailer;
    procedure HabilitaObjetos;
    procedure DesHabilitaObjetos;

  public
    { Public declarations }
  end;

var
  FormTrasmBancos: TFormTrasmBancos;
  wseq,wSeqLote:integer;
  w_nnumero:Double;
  ArquivoTexto : TextFile;
  wNosso_nu,wCCampo:string;
  wSeqCaixa:integer;


implementation

uses ADJ0001, Database, Men0001;



{$R *.DFM}







procedure TFormTrasmBancos.MudaCorCampos(Sender: tObject);
begin
  {CampoEdit :TEdit}
   if Assigned(CampoEdit) then
      begin
         CampoEdit.color := clWindow;
      end;
   if ActiveControl is TEdit then
      begin
         if TEdit(ActiveControl).color = $00D7D7D7 then
            begin
               exit;
            end;
         TEdit(ActiveControl).color := $0080FFFF;
         CampoEdit := TEdit(ActiveControl);
      end
   else
      begin
         CampoEdit := nil;
      end;

   {CampoDbMemo:TDBMemo}
   if Assigned(CampoDbMemo) then
      begin
         CampoDbMemo.color := clWindow;
      end;
   if ActiveControl is TDBMemo then
      begin
         TDBMemo(ActiveControl).color := $0080FFFF;
         CampoDbMemo := TDBMemo(ActiveControl);
      end
   else
      begin
         CampoDbMemo := nil;
      end;

  {CampoTDBLuk  :TDBLookupComboBox}
   if Assigned(CampoTDBLuk) then
      begin
         CampoTDBLuk.color := clWindow;
      end;
   if ActiveControl is TDBLookupComboBox then
      begin
         TDBLookupComboBox(ActiveControl).color := $0080FFFF;
         CampoTDBLuk := TDBLookupComboBox(ActiveControl);
      end
   else
      begin
         CampoTDBLuk := nil;
      end;

end;


Function nnsomar():integer;
// soma o nosso numero p/ calculo do digito verificador
// Banco : BANESTADO
var
nn,wsoma:integer;
i:integer;
begin
nn:=9;
wsoma:=0;
For i := 9 downto 1 do
 begin
  wsoma := wsoma+StrToInt(copy(wNosso_nu,i,1))*nn;
  nn:=nn-1;
  if nn=3 then
    nn:=9;
 end;
nnsomar:=wsoma;
end;

Function nnsomar_caixa():integer;
// soma o nosso numero p/ calculo do digito verificador
// Banco : CAIXA
var
nn,wsoma:integer;
i:integer;
begin
nn:=2;
wsoma:=0;
For i := 10 downto 1 do
 begin
  wsoma := wsoma+StrToInt(copy(wNosso_nu,i,1))*nn;
  nn:=nn+1;
  if nn=10 then
    nn:=2;
 end;
nnsomar_caixa:=wsoma;
end;

Procedure TFormTrasmBancos.RegDetalhe_Bane;
// Banco BANESTADO
// cria registros de detalhe
// cria tambem o registro de Trailler no final
var
wp01a17,wp18a24,wp25a37,wp38a62,wp63a72,wp73a107,wp108a110,wp111a120,wp121a126,wp127a139:string;
wp140a150,wp151a156,wp157a160,wp161a173,wp174a218,wp219a220,wp221a234,wp235a274,wp275a314,wp315a326,wp327a331:string;
wp332a334,wp335a349,wp350a351,wp352a381,wp382a394,wp395a400:string;
wsomatorio,wdigver,wqtd_titu:Integer;
wsoma_titu,wjuromora:Double;
wdetalhe,wtrailler,wsomatotal:string;
begin
TQRecParce.First;
While not TQRecParce.eof do
  begin
  wseq:=wseq + 1;
  wp01a17:='102'+FormAdjutor

  .wEmp_cgc; //cgc
  wp18a24:='       ';// brancos 7
  with Datamodulo do
  begin
  wp25a37:= StrZero(TbBancoBAN_CODAGE.Value,5)+StrZero(TbBancoBAN_CONTA.Value,7)+TbBancoBAN_DIGCONTA.Value;//'0030800122860';
  end;
  wp38a62:='                         ';// 25 c
  // calculo nossonumero
  w_nnumero:=w_nnumero+1;
  wsomatorio:=0;
  wdigver:=0;
  wNosso_nu:=FloatToStr(w_nnumero);
  // charmar funcao nnsomar
  wsomatorio:=nnsomar();
  While true do
   begin
    wdigver:=wsomatorio mod 11; // resto da divisao
    if wdigver=10 then
      // se resto igual a 10 incrementar o numero e recalcular soma
      begin
       w_nnumero:=w_nnumero+1;
       wNosso_nu:=FloatToStr(w_nnumero);
       wsomatorio:=nnsomar();
      end
     else
      break;
   end;
  wp63a72:=wNosso_nu+IntToStr(wdigver);
  wp73a107:='                                   '; // brancos 35c
  wp108a110:=xCarteira.Text+'01';
  if TQRecParceFPC_NUMER.Value = '' then
     // fatura unica
     wp111a120:=TQRecParceFAT_CODIGO.Value
  else
     // mais de um vencto
     wp111a120:=TQRecParceFAT_CODIGO.Value+'/'+TQRecParceFPC_NUMER.Value;
  EspacoCampo(wp111a120,10);
  wp111a120:=wp111a120+wCCampo;
  Wp121A126:=copy(DateToStr(TQRecParceFPC_VENCTO.Value),1,2)+copy(DateToStr(TQRecParceFPC_VENCTO.Value),4,2)+copy(DateToStr(TQRecParceFPC_VENCTO.Value),9,2);
  wp127a139:=StrZero(FloatToStrF(TQRecParceFPC_VLPARC.Value,ffNumber,11,2),13);
  // tirar virgula de decimal
  wp127a139:=StrZero(copy(wp127a139,1,10)+copy(wp127a139,12,2),13);
  //  funcao tirar pontos de milhares
  wp127a139:=SemMilhar(wp127a139);
  // volta a deixar com 13 digitos
  wp127a139:=StrZero(wp127a139,13);
  //
  // contador de titulos e de valor total de titulos
  //  usado do reg. trailler
  wqtd_titu:=wqtd_titu+1;
  wsoma_titu:=wsoma_titu+TQRecParceFPC_VLPARC.Value;
  //
  wp140a150:='000'+'00000'+'01'+'N';
  wp151a156:=copy(DateToStr(TQRecParceFPC_DTEMIS.Value),1,2)+copy(DateToStr(TQRecParceFPC_DTEMIS.Value),4,2)+copy(DateToStr(TQRecParceFPC_DTEMIS.Value),9,2);
  wp157a160:=StrZero(xInstrucao1.text,2)+StrZero(xInstrucao2.text,2);
  // calcular juro conforme o banco
  wjuromora:=(TQRecParceFPC_VLPARC.Value*(Datamodulo.TbBancoBAN_JUROMES.Value/100))/30;
  wp161a173:=StrZero(FloatToStrF(wjuromora,ffNumber,11,2),13);
  // tirar virgula de decimal
  wp161a173:=StrZero(copy(wp161a173,1,10)+copy(wp161a173,12,2),13);
  //  funcao tirar pontos de milhares
  wp161a173:=SemMilhar(wp161a173);
  // volta a deixar com 13 digitos
  wp161a173:=StrZero(wp161a173,13);
  //
  wp174a218:='000000'+'0000000000000'+'0000000000000'+'0000000000000';
  // Buscar dados do Cliente
  Datamodulo.TbCliente.FindKey([TQRecParceCLI_CODIGO.Value]);
  if Length(Trim(Datamodulo.TbClienteCLI_CGC.Value))=14 then
     wp219a220:= '02'  //cgc
  else
     wp219a220:= '01'; //cpf
  wp221a234:=StrZero(Datamodulo.TbClienteCLI_CGC.Value,14);
  wp235a274:=copy(Datamodulo.TbClienteCLI_RAZAO.Value,1,40);
  EspacoCampo(wp235a274,40);
  wp235a274:=wp235a274+wCCampo;
  wp275a314:=copy(Datamodulo.TbClienteCLI_ENDERE.Value,1,40);
  EspacoCampo(wp275a314,40);
  wp275a314:=wp275a314+wCCampo;
  WP315a326:=copy(Datamodulo.TbClienteCLI_BAIRRO.Value,1,12);
  EspacoCampo(wp315a326,12);
  wp315a326:=wp315a326+wCCampo;
  wp327a331:=StrZero(COPY(Datamodulo.TbClienteCLI_CEP.Value,1,5),5); // CEP
  wp332a334:=copy(Datamodulo.TbClienteCLI_CEP.Value,6,3);  // SULFIX CEP
  wp335a349:=copy(Datamodulo.TbClienteCLI_CIDADE.Value,1,15);
  EspacoCampo(wp335a349,15);
  wp335a349:=wp335a349+wCCampo;
  wp350a351:=Datamodulo.TbClienteCLI_UF.Value;
  wp352a381:=xMensagem.Text;
  EspacoCampo(wp352a381,30);
  wp352a381:=wp352a381+wCCampo;
  wp382a394:='             '; // brancos 13 c
  wp395a400:=StrZero(IntToStr(wseq),6);
  // proximo
  TQRecParce.Next;
  // gravar registro detalhe
  wdetalhe:=wp01a17+wp18a24+wp25a37+wp38a62+wp63a72+wp73a107+wp108a110+wp111a120+wp121a126+wp127a139;
  wdetalhe:=wdetalhe+wp140a150+wp151a156+wp157a160+wp161a173+wp174a218+wp219a220+wp221a234+wp235a274+wp275a314;
  wdetalhe:=wdetalhe+wp315a326+wp327a331+wp332a334+wp335a349+wp350a351+wp352a381+wp382a394+wp395a400;
  // grava dados no arquivo
  Writeln(ArquivoTexto,wdetalhe);
  end;
  // ****  CRIAR Registro Trailler ****
  //
  wseq:=wseq + 1;
  wtrailler:='9'+StrZero(IntToStr(wqtd_titu),8);
  wsomatotal:=StrZero(FloatToStrF(wsoma_titu,ffNumber,12,2),14);
  // tirar virgula de decimais
  wsomatotal:=StrZero(copy(wsomatotal,1,11)+copy(wsomatotal,13,2),14);
  // tirar pontos de milhares
  wsomatotal:=SemMilhar(wsomatotal);
  // volta a deixar com 14 digitos
  wsomatotal:=StrZero(wsomatotal,14);
  //
  wtrailler:=wtrailler+wsomatotal;
  EspacoCampo(wtrailler,394);
  wtrailler:=wtrailler+wCCampo;
  Wtrailler:=wtrailler+StrZero(IntToStr(wseq),6);
   // grava dados no arquivo
  Writeln(ArquivoTexto,wtrailler);

end;


Procedure TFormTrasmBancos.RegDetalhe_Itau;
// Banco ITAÚ
// cria registros de detalhe
// cria tambem o registro de Trailler no final
var
wp01a17,wp18a29,wp30a62,wp63a70,wp71a83,wp84a86,wp87a107,wp108a110,wp111a120:string;
wp121a126,wp127a139,wp140a150,wp151a156,wp157a160,wp161a173,wp174a218,wp219a220,wp221a234:string;
wp235a264,wp265a274,wp275a314,wp315a326,wp327a334,wp335a349,wp350a351,wp352a381,wp382a394,wp395a400:string;
wsomatorio,wqtd_titu:Integer;
wsoma_titu,wjuromora:Double;
wdetalhe,wtrailler,wsomatotal:string;
begin
TQRecParce.First;
While not TQRecParce.eof do
  begin
  wseq:=wseq + 1;
  wp01a17:='102'+dbInicio.Empresa.CNPJ_CNPF;
  wp18a29:=StrZero(Datamodulo.TbBancoBAN_CODNOBANCO.Value,12); // 12 carac
  wp30a62:='                                 '; // 8c + 25 c = 33 c
  { nosso numero = Itau forneceu a formula p/ digito verificador, mas neste
    Layou não é necessário tenho espaço somente p/ os 8 digitos iniciais  }
   // calculo nossonumero
  w_nnumero:=w_nnumero+1;
  wp63a70:=FloatToStr(w_nnumero);
  wp71a83:='0000000000000'; // 13 c
  wp84a86:= Datamodulo.TbBancoBAN_N_CARTEIRA.Value;
  wp87a107:='                     '; // brancos 21c
  WP108A110:=Datamodulo.TbBancoBAN_COD_CART.Value+'01'; //01 = REMESSA
  if TQRecParceFPC_NUMER.Value = '' then
     // fatura unica
     wp111a120:=TQRecParceFAT_CODIGO.Value
  else
     // mais de um vencto
     wp111a120:=TQRecParceFAT_CODIGO.Value+'/'+TQRecParceFPC_NUMER.Value;
  EspacoCampo(wp111a120,10);
  wp111a120:=wp111a120+wCCampo;
  Wp121A126:=copy(DateToStr(TQRecParceFPC_VENCTO.Value),1,2)+copy(DateToStr(TQRecParceFPC_VENCTO.Value),4,2)+copy(DateToStr(TQRecParceFPC_VENCTO.Value),9,2);
  wp127a139:=StrZero(FloatToStrF(TQRecParceFPC_VLPARC.Value,ffNumber,11,2),13);
  // tirar virgula de decimal
  wp127a139:=StrZero(copy(wp127a139,1,10)+copy(wp127a139,12,2),13);
  //  funcao tirar pontos de milhares
  wp127a139:=SemMilhar(wp127a139);
  // volta a deixar com 13 digitos
  wp127a139:=StrZero(wp127a139,13);
  //
  // contador de titulos e de valor total de titulos
  //  usado do reg. trailler
  wqtd_titu:=wqtd_titu+1;
  wsoma_titu:=wsoma_titu+TQRecParceFPC_VLPARC.Value;
  //
  wp140a150:='341'+Datamodulo.TbBancoBAN_CODAGE.Value+'01N'; //01=Dup.Mercantil
  wp151a156:=copy(DateToStr(TQRecParceFPC_DTEMIS.Value),1,2)+copy(DateToStr(TQRecParceFPC_DTEMIS.Value),4,2)+copy(DateToStr(TQRecParceFPC_DTEMIS.Value),9,2);
  wp157a160:=StrZero(xInstrucao1.text,2)+StrZero(xInstrucao2.text,2);
  // calcular juro conforme o banco
  wjuromora:=(TQRecParceFPC_VLPARC.Value*(Datamodulo.TbBancoBAN_JUROMES.Value/100))/30;
  wp161a173:=StrZero(FloatToStrF(wjuromora,ffNumber,11,2),13);
  // tirar virgula de decimal
  wp161a173:=StrZero(copy(wp161a173,1,10)+copy(wp161a173,12,2),13);
  //  funcao tirar pontos de milhares
  wp161a173:=SemMilhar(wp161a173);
  // volta a deixar com 13 digitos
  wp161a173:=StrZero(wp161a173,13);
  //
  wp174a218:='000000'+'0000000000000'+'0000000000000'+'0000000000000';
  // Buscar dados do Cliente
  Datamodulo.TbCliente.FindKey([TQRecParceCLI_CODIGO.Value]);
  if Length(Trim(Datamodulo.TbClienteCLI_CGC.Value))=14 then
     wp219a220:= '02'  //cgc
  else
     wp219a220:= '01'; //cpf
  wp221a234:=StrZero(Datamodulo.TbClienteCLI_CGC.Value,14);
  wp235a264:=copy(Datamodulo.TbClienteCLI_RAZAO.Value,1,30);
  EspacoCampo(wp235a264,30);
  wp235a264:=wp235a264+wCCampo;
  wp265a274:='          ';  //10c
  wp275a314:=copy(Datamodulo.TbClienteCLI_ENDERE.Value,1,40);
  EspacoCampo(wp275a314,40);
  wp275a314:=wp275a314+wCCampo;
  WP315a326:=copy(Datamodulo.TbClienteCLI_BAIRRO.Value,1,12);
  EspacoCampo(wp315a326,12);
  wp315a326:=wp315a326+wCCampo;
  wp327a334:=StrZero(Datamodulo.TbClienteCLI_CEP.Value,8); // CEP
  wp335a349:=copy(Datamodulo.TbClienteCLI_CIDADE.Value,1,15);
  EspacoCampo(wp335a349,15);
  wp335a349:=wp335a349+wCCampo;
  wp350a351:=Datamodulo.TbClienteCLI_UF.Value;
  wp352a381:='                              ';                 //30c sacador ou avalista
  wp382a394:='    '+'000000'+StrZero(EdtProtesto.Text,2)+' ';//13c - 03 = qtde de dias mora
  wp395a400:=StrZero(IntToStr(wseq),6);
  // proximo
  TQRecParce.Next;
  // gravar registro detalhe
  wdetalhe:=wp01a17+wp18a29+wp30a62+wp63a70+wp71a83+wp84a86+wp87a107+wp108a110+wp111a120;
  wdetalhe:=wdetalhe+wp121a126+wp127a139+wp140a150+wp151a156+wp157a160+wp161a173+wp174a218+wp219a220+wp221a234;
  wdetalhe:=wdetalhe+wp235a264+wp265a274+wp275a314+wp315a326+wp327a334+wp335a349+wp350a351+wp352a381+wp382a394+wp395a400;
  // grava dados no arquivo
  Writeln(ArquivoTexto,wdetalhe);
  end;
  // ****  CRIAR Registro Trailler ****
  //
  wseq:=wseq + 1;
  wtrailler:='9';
  EspacoCampo(wtrailler,394);
  wtrailler:=wtrailler+wCCampo;
  Wtrailler:=wtrailler+StrZero(IntToStr(wseq),6);
  // grava dados no arquivo
  Writeln(ArquivoTexto,wtrailler);

end;


procedure TFormTrasmBancos.RegHeader_Bane;
// Banco BANESTADO
// cria registro de cabeçalho
var
wvalor:string[13];
wregistro,wfixo1,wfix_rem,wfixo01,wcobranca,wbrancos1,wcedente,wconta,wdigconta:string;
wempresa,wfixo038,wn_banco,wgravacao,wdensidade,wfix_bpi,wsequencia:string;
wbrancos2,wbrancos3:string[143];
wRg1,wNomeArquivo:string;
begin
// atribuir dados fixos do header
wregistro:='0';
wfixo1:='1';
wfix_rem:='REMESSA';
wfixo01:='01';
wcobranca:='COBRANCA       ';//15C
wbrancos1:='       '; // 7c
wcedente:= StrZero(Datamodulo.TbBancoBAN_CODAGE.Value,5); // '00308';
wconta:=StrZero(Datamodulo.TbBancoBAN_CONTA.Value,7);// '0012286';
wdigconta:=Datamodulo.TbBancoBAN_DIGCONTA.Value; //'0';
wempresa:=COPY(dbInicio.Empresa.Razao,1,30); // RAZAO EMPRESA
EspacoCampo(wempresa,30);
wempresa:=wempresa+wCCampo;
wfixo038:='038';
wn_banco:='BANESTADO      '; //15C
wgravacao:=copy(DateToStr(Date),1,2)+copy(DateToStr(Date),4,2)+copy(DateToStr(Date),9,2);
wdensidade:='01600';
wfix_bpi:='BPI';
wbrancos2:='                                                                                                                                               '; // 143 c
wbrancos3:='                                                                                                                                               '; // 143 c
wsequencia:='000001';
wseq:=1;   // contador da sequencia
// montar o registro header
wRg1:=wregistro+wfixo1+wfix_rem+wfixo01+wcobranca+wbrancos1+wcedente+wconta+wdigconta+wempresa;
wRg1:=wRg1 +wfixo038+wn_banco+wgravacao+wdensidade+wfix_bpi+wbrancos2+wbrancos3+wsequencia;
//
{*** ROTINA CRIA NOME PARA O ARQUIVO TEXTO . Esta é a seq. que mantem a ordem
 mais ascendente p/ os numeros}
// pega dia + mes +ultimo digito do ano
wNomeArquivo:=copy(DateToStr(Date),1,2)+copy(DateToStr(Date),4,2)+copy(DateToStr(Date),10,1);
// acrescenta + ult.digito da hora + ult. digito do min. + 1o. digito do  centesimo de min
wNomeArquivo:=wNomeArquivo+copy(TimeToStr(Time),2,1)+copy(TimeToStr(Time),5,1)+copy(TimeToStr(Time),7,1);
AssignFile(ArquivoTexto, 'c:\Bancos\Banestad\'+wNomeArquivo+'.dat');
// grava arquivo
Rewrite(ArquivoTexto);
// abre arquivo p/ inclusao
Append(ArquivoTexto);
// grava dados no arquivo
Writeln(ArquivoTexto,wRg1);
//
FormTrasmBancos.RegDetalhe_Bane; // proc cria detalhes
// mostra  numero da remessa no video
FormTrasmBancos.LbRemessa.Caption := wNomeArquivo+'.dat';
//
CloseFile(ArquivoTexto);
end;


Procedure TFormTrasmBancos.RegHeader_Itau;
// Banco ITAÚ
// cria registro de cabeçalho
var
wvalor:string[13];
wregistro,wfixo1,wfix_rem,wfixo01,wcobranca,wcodempresa,wbrancos1,wfixo2:string;
wempresa,wn_banco,wgravacao,wsequencia:string;
wbrancos2,wbrancos3:string[147];
wRg1,wNomeArquivo:string;
begin
// atribuir dados fixos do header
wregistro:='0';
wfixo1:='1';
wfix_rem:='REMESSA';
wfixo01:='01';
wcobranca:='COBRANCA       ';//15C
wcodempresa:=StrZero(Datamodulo.TbBancoBAN_CODNOBANCO.Value,12); // 12 carac
wbrancos1:='        '; // 8c
wempresa:=COPY(dbInicio.Empresa.Razao,1,30); // RAZAO EMPRESA
EspacoCampo(wempresa,30);
wempresa:=wempresa+wCCampo;
wfixo2:='341';  // cod. do banco
wn_banco:='ITAU           '; //15C
wgravacao:=copy(DateToStr(Date),1,2)+copy(DateToStr(Date),4,2)+copy(DateToStr(Date),9,2);
wbrancos2:='                                                                                                                                                   '; // 147 c
wbrancos3:='                                                                                                                                                   '; // 147 c
wsequencia:='000001';
//
wseq:=1;   // contador da sequencia
// montar o registro header
wRg1:=wregistro+wfixo1+wfix_rem+wfixo01+wcobranca+wcodempresa+wbrancos1+wempresa;
wRg1:=wRg1 +wfixo2+wn_banco+wgravacao+wbrancos2+wbrancos3+wsequencia;
//
{*** ROTINA CRIA NOME PARA O ARQUIVO TEXTO . Esta é a seq. que mantem a ordem
 mais ascendente p/ os numeros}
// pega dia + mes +ultimo digito do ano
wNomeArquivo:=copy(DateToStr(Date),1,2)+copy(DateToStr(Date),4,2)+copy(DateToStr(Date),10,1);
// acrescenta + ult.digito da hora + ult. digito do min. + 1o. digito do  centesimo de min
wNomeArquivo:=wNomeArquivo+copy(TimeToStr(Time),2,1)+copy(TimeToStr(Time),5,1)+copy(TimeToStr(Time),7,1);
AssignFile(ArquivoTexto, 'c:\Bancos\Itau\'+wNomeArquivo+'.dat');
// grava arquivo
Rewrite(ArquivoTexto);
// abre arquivo p/ inclusao
Append(ArquivoTexto);
// grava dados no arquivo
Writeln(ArquivoTexto,wRg1);
//
FormTrasmBancos.RegDetalhe_Itau; // proc cria detalhes
// mostra  numero da remessa no video
FormTrasmBancos.LbRemessa.Caption := wNomeArquivo+'.dat';
//
CloseFile(ArquivoTexto);
end;



Procedure TFormTrasmBancos.EspacoCampo(wCampo:string;wTamanho:Integer);
// p/ campos alfanumericos sao acrescentados contados os espacos em branco
// que ficaram faltando no campo original p/ completar o tamanho exigido
var
i : integer;
wDifer : integer;
begin
wdifer:=0;
wCCampo :='';
wDifer:= wTamanho-Length(wCampo);
for i :=1 to wDifer do
 wCCampo := wCCampo+' ';  // sempre recebe mais um espaço

end;





procedure TFormTrasmBancos.FormShow(Sender: tObject);
begin
Left:= 34;
Top := 46;
Memo1.Text := '';
 {ativa o método ao evento OnActiveControlChange}
  Screen.OnActiveControlChange   := MudaCorCampos;

Try
  Datamodulo.TbCliente.DatabaseName := Preopen('Clientes');
  Datamodulo.TbCliente.IndexFieldNames:='CLI_CODIGO';
  Datamodulo.TbCliente.Open;
except
  uteis.erro  ('Impossível abrir tabela "TbCliente"!');
end;
Try
  Datamodulo.TbBanco.DatabaseName := Preopen('Bancos');
  Datamodulo.TbBanco.IndexFieldNames:='BAN_APELIDO';
  Datamodulo.TbBanco.Open;
except
  uteis.erro  ('Impossível abrir tabela "TbBanco!"');
end;
//
Try
  TbSequencia.Open;
except
  uteis.erro  ('Impossível abrir tabela de Sequência!');
end;
//
try
DataModulo.TbEmpresa.Open;
Except
uteis.erro  ('Impossível abrir a tabela de empresas!');
end;

end;

procedure TFormTrasmBancos.xInicialExit(Sender: tObject);
begin
xInicial.text:=StrZero(xInicial.text,6);
// atribui ao final o mesmo. usuario pode mudar
xfinal.text:=xInicial.text;
end;

procedure TFormTrasmBancos.xFinalExit(Sender: tObject);
var
wban_codigo:string;
begin
xFinal.text:=StrZero(xfinal.text,6);
if xFinal.text < xInicial.text then
  begin
  uteis.erro  ('Número final deve ser maior ou igual ao inicial');
  xfinal.SetFocus;
  exit;
  end;
//  **** Abrir Sql conforme faturas ****
With TQRecParce do
 begin
 Close;
 wban_codigo:=Datamodulo.TbBancoBAN_CODIGO.Value;
 DatabaseName := Preopen('Receber');
 Sql.Clear;
 Sql.Add('SELECT FAT_CODIGO,FPC_NUMER,REP_CODIGO,BAN_CODIGO,FPC_DTEMIS,FPC_COBNUM,FPC_COBTIPO,FPC_STATUS,FPC_DESCTO,FPC_DTDESC,FPC_VENCTO,FPC_PAGTO,FPC_VLPARC,FPC_VLPAGO,FPC_OBS,FPC_SITPAG,EMP_CODIGO,CLI_CODIGO,FPC_IMPDUP');
 Sql.Add('FROM FAT_PC01');
 Sql.Add('WHERE BAN_CODIGO='''+wban_codigo+'''AND FAT_CODIGO>='''+xInicial.text+'''AND FAT_CODIGO<='''+xfinal.text+'''');
 Sql.Add('ORDER BY FAT_CODIGO,FPC_NUMER');
 Open;
 end;
end;

procedure TFormTrasmBancos.xFinalEnter(Sender: tObject);
begin
xFinal.SelectAll;
end;

Procedure TFormTrasmBancos.MostraGerado;
var
ArquivoTexto: TextFile;
TextoTransmissao,NomeArquivo:String;
begin
Memo1.Text := '';  // limpar memo
NomeArquivo:= LbRemessa.Caption;
//AssignFile(ArquivoTexto, 'c:\Bancos\Banestad\'+wNomeArquivo+'.dat');

if COPY(Datamodulo.TbBancoBAN_APELIDO.Value,1,4)='BANE' then
   AssignFile(ArquivoTexto,'c:\Bancos\Banestad\'+NomeArquivo);
if COPY(Datamodulo.TbBancoBAN_APELIDO.Value,1,4)='ITAU' then
   AssignFile(ArquivoTexto,'c:\Bancos\Itau\'+NomeArquivo);
if COPY(Datamodulo.TbBancoBAN_APELIDO.Value,1,4)='CAIX' then
   AssignFile(ArquivoTexto,'c:\Bancos\Caixa\'+NomeArquivo);
//
Reset(ArquivoTexto);
while(not eof(ArquivoTexto)) do
  begin
  Readln(ArquivoTexto, TextoTransmissao);
  Memo1.Lines.Add(TextoTransmissao);
  end;
closeFile(ArquivoTexto);

end;

procedure TFormTrasmBancos.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
Screen.OnActiveControlChange := NIL;
Try
  Datamodulo.TbCliente.Close;
except
  uteis.erro  ('Impossível fechar tabela "TbCliente"');
end;
Try
  Datamodulo.TbBanco.Close;
except
  uteis.erro  ('Impossível fechar tabela "TbBanco"');
end;
TbSequencia.close;
try DataModulo.TbEmpresa.close; Except uteis.erro  ('Impossível fechar a tabela de empresas.'); end;
end;

procedure TFormTrasmBancos.DBLkCboBancoExit(Sender: tObject);
begin
// setar dados conforme banco selecionado
xNossoN.Enabled := True;
if Datamodulo.TbBancoBAN_TAM_NONUM.Value='' then
  begin
  uteis.erro  ('Antes de continuar, vá ao cadastro de bancos e informe a quantidade de digitos do Nosso Número.');
  exit;
  end;
xNosson.MaxLength := StrToInt(Datamodulo.TbBancoBAN_TAM_NONUM.Value);
xCarteira.Text    := Trim(Datamodulo.TbBancoBAN_COD_CART.Value);
xInstrucao1.Text  := Datamodulo.TbBancoBAN_INSTRUCAO1.Value;
xInstrucao2.Text  := Datamodulo.TbBancoBAN_INSTRUCAO2.Value;
EdtProtesto.Text  := DataModulo.TbBancoBAN_PROTPRAZO.Value;
///////{só p/ CAIXA}
xInstrucao1.Text := Justifica('e',xInstrucao1.Text,2,'0');
if copy(DBLkCboBanco.Text,1,5) = 'CAIXA' then
   begin
   Edt_Instruc.Visible := True;
   xInstrucao2.Text    := '';
   xInstrucao2.Enabled := False;
   xInstrucao2.Color   := clSilver;
   if xInstrucao1.Text = '01'then
      Edt_Instruc.Caption := 'Protestar'
   else if xInstrucao1.Text = '02'then
           Edt_Instruc.Caption := 'Devolver'
        else
           Edt_Instruc.Caption := 'Instrução Inválida!'
   end
else
   begin
   Edt_Instruc.Visible := False;
   xInstrucao2.Enabled := True;
   xInstrucao2.Color   := clwindow;
   end;
///////////////////
end;

procedure TFormTrasmBancos.xNossoNKeyPress(Sender: tObject; var Key: Char);
begin
// deixo aceitar somente numeros
  if not(Key in['0','1','2','3','4','5','6','7','8','9',#8]) then
    begin
      //beep;
      Key:=#0;
    end;
end;


Procedure TFormTrasmBancos.GravaHeader;
var wArquivo:TextFile; wLinha:String; wI:Integer; wAux:String;
begin             {CAIXA ECONOMICA}
Screen.Cursor := crHourGlass;
{incrementa sequencia na tabela}
TbSequencia.Edit;
TbSequenciaCEF_REMESSA.Value := StrZero(IntToStr(StrToInt(TbSequenciaCEF_REMESSA.Value)+1),5);
TbSequencia.Post;
{cria arquivo}
AssignFile(wArquivo, 'C:\bancos\caixa\Rem_ToImport\CEF'+TbSequenciaCEF_REMESSA.Value+'.ADJ');
{Grava Arquivo}
Rewrite(wArquivo);
wAux := UpperCase(copy(Justifica('D',dbInicio.Empresa.Razao,30,' '),1,30));
{Cria o Header}
wLinha := '01REMESSA01COBRANCA       '+DataModulo.TbBancoBAN_CODAGE.Value+DataModulo.TbBancoBAN_CODNOBANCO.Value+'    '
+wAux+'104C ECON FEDERAL '+copy(DateToStr(Date),1,2)+copy(DateToStr(Date),4,2);
if Length(DateToStr(Date)) = 8 then
   wLinha := wLinha + copy(DateToStr(Date),7,2)
else
   wLinha := wLinha + copy(DateToStr(Date),9,2);
for wI := 1 to 289 do begin wLinha := wLinha + ' ' end;
   wSeqCaixa := wSeqCaixa+1;
wLinha := wLinha+TbSequenciaCEF_REMESSA.Value+Justifica('e',IntToStr(wSeqCaixa),6,'0');
Append(wArquivo);
Writeln(wArquivo,wLinha);
CloseFile(wArquivo);
LbRemessa.Caption := 'C:\bancos\caixa\Rem_ToImport\CEF'+TbSequenciaCEF_REMESSA.Value+'.ADJ';
Memo1.Text := '';
Memo1.Lines.Add(wLinha);
screen.Cursor := crDefault;
end;

procedure TFormTrasmBancos.GravaRegistros;
var wArquivo:TextFile; wLinha:string; wAux:String;
begin
// Grava Detalhe de Remessa da Caixa Economica
AssignFile(wArquivo, 'C:\bancos\caixa\Rem_ToImport\CEF'+TbSequenciaCEF_REMESSA.Value+'.ADJ');
Append(wArquivo);
TQRecParce.First;
while not(TQRecParce.EOF)do
  begin
  {nossoNumero, etc}
  wLinha := '102'+dbInicio.Empresa.CNPJ_CNPF+DataModulo.TbBancoBAN_CODAGE.Value+DataModulo.TbBancoBAN_CODNOBANCO.Value+'  '+'00';
  wLinha := wLinha+'                         '+xNossoN.Text+DgVerificador(xNossoN.Text)+'   ';
  {mensagem,carteira e tipo de ocorencia}
  wLinha := wLinha+Justifica('d',xMensagem.Text,30,' ')+Justifica('e',xCarteira.Text,2,'0')+'01';
  {seu numero}
  if TQRecParceFPC_NUMER.Value = '' then
     wLinha := wLinha+Justifica('D',TQRecParceFAT_CODIGO.Value,10,' ')   // fatura unica
  else
     wLinha := wLinha+Justifica('D',TQRecParceFAT_CODIGO.Value+'/'+TQRecParceFPC_NUMER.Value,10,' ');
  {vencimento}
  wAux := copy(DateToStr(TQRecParceFPC_VENCTO.Value),1,2)+copy(DateToStr(TQRecParceFPC_VENCTO.Value),4,2);
  if Length(DateToStr(TQRecParceFPC_VENCTO.Value)) = 8 then
     wLinha := wLinha+wAux+copy(DateToStr(TQRecParceFPC_VENCTO.Value),7,2){ano da Dt.vencto}
  else
     wLinha := wLinha+wAux+copy(DateToStr(TQRecParceFPC_VENCTO.Value),9,2);{ano da Dt.vencto}
  {valor nominal do titulo}
  wAux :=  Format('%.0n',[TQRecParceFPC_VLPARC.Value*100]);
  wLinha := wLinha+Justifica('e',SemMilhar(wAux),13,'0')+'1040000001A';
  {data Emissao}
  wAux := copy(DateToStr(TQRecParceFPC_DTEMIS.Value),1,2)+copy(DateToStr(TQRecParceFPC_DTEMIS.Value),4,2);
  if Length(DateToStr(TQRecParceFPC_DTEMIS.Value)) = 8 then
     wLinha := wLinha+wAux+copy(DateToStr(TQRecParceFPC_DTEMIS.Value),7,2){ano da Dt.vencto}
  else
     wLinha := wLinha+wAux+copy(DateToStr(TQRecParceFPC_DTEMIS.Value),9,2);{ano da Dt.vencto}
  {insturções de cobrança}
  wLinha := wLinha+Justifica('e',xInstrucao1.Text,2,'0')+'00';
  {juros diario}
  wAux := Format('%.0n',[(((DataModulo.TbBancoBAN_JUROMES.Value/30)*TQRecParceFPC_VLPARC.Value)/100)*100]);
  wLinha := wLinha+Justifica('e',SemMilhar(wAux),13,'0')+'000000000000000000000000000000000000000000000';
  {Dados do sacado}
  if DataModulo.TbCliente.FindKey([TQRecParceCLI_CODIGO.Value])then
     begin
     {inscrição do sacado}
     if length(DataModulo.TbClienteCLI_CGC.Value)=14 then
        begin
        wLinha := wLinha+'02'+Justifica('e',DataModulo.TbClienteCLI_CGC.Value,14,'0');
        end
     else
        begin
        wLinha := wLinha+'01'+Justifica('e',DataModulo.TbClienteCLI_CGC.Value,14,'0');
        end;
     {nome do sacado}
     wLinha := wLinha+Justifica('d',copy(DataModulo.TbClienteCLI_RAZAO.Value,1,35),35,' ');
     {endereço do sacado}
     wLinha := wLinha+'     '+Justifica('d',copy(DataModulo.TbClienteCLI_ENDERE.Value,1,35),35,' ');
     {bairo}
     if DataModulo.TbClienteCLI_BAIRRO.Value <> ''then
        wAux := DataModulo.TbClienteCLI_BAIRRO.Value
     else
        wAux := 'XXXXXXXXXXXX';
     wLinha := wLinha+'     '+Justifica('d',copy(wAux,1,12),12,' ');
     {CEP}
     wLinha := wLinha+Justifica('d',copy(DataModulo.TbClienteCLI_CEP.Value,1,8),8,' ');
     {cidade}
     wLinha := wLinha+Justifica('d',copy(DataModulo.TbClienteCLI_CIDADE.Value,1,15),15,' ');
     {UF}
     wLinha := wLinha+Justifica('d',copy(DataModulo.TbClienteCLI_UF.Value,1,2),2,' ');
     end;
  wlinha  := wLinha+'0000000000000000                      00';
  wSeqCaixa := wSeqCaixa+1;
  wlinha  := wLinha+Justifica('d',copy(EdtProtesto.Text,1,2),2,' ')+'1'+Justifica('e',IntToStr(wSeqCaixa),6,'0');
  xNossoN.Text := IntToStr(StrToInt64(xNossoN.Text)+1);
  TQRecParce.Next;
  Writeln(wArquivo,wLinha);
  Memo1.Lines.Add(wLinha);
  end;
CloseFile(wArquivo);
end;



procedure TFormTrasmBancos.GravaTrailer;
var wArquivo:TextFile; wLinha:string; wI:integer;
begin
AssignFile(wArquivo, 'C:\bancos\caixa\Rem_ToImport\CEF'+TbSequenciaCEF_REMESSA.Value+'.ADJ');
Append(wArquivo);
wLinha := '9';
for wI := 1 to 393 do begin wLinha := wLinha + ' ' end;
wSeqCaixa := wSeqCaixa+1;
wlinha  := wLinha+Justifica('e',IntToStr(wSeqCaixa),6,'0');
Writeln(wArquivo,wLinha);
Memo1.Lines.Add(wLinha);
CloseFile(wArquivo);
end;


function TFormTrasmBancos.DgVerificador(Numero:String):string;
var wAux:integer; wIndices:String[10]; I:integer;
begin
wIndices:='3298765432'; wAux:=0;
for I := 1 to 10 do
  wAux := (wAux)+(StrToInt(copy(Numero,I,1))*StrToInt(copy(wIndices,I,1)));
if 11-(waux mod 11)>9 then
   Result := '0'
else
   Result := IntToStr(11-(waux mod 11));
end;


procedure TFormTrasmBancos.xCarteiraKeyPress(Sender: tObject;
  var Key: Char);
begin
// deixo aceitar somente numeros
  if not(Key in['0','1','2','3','4','5','6','7','8','9',#8]) then
    begin
      //beep;
      Key:=#0;
    end;
end;

procedure TFormTrasmBancos.xInstrucao1KeyPress(Sender: tObject;
  var Key: Char);
begin
// deixo aceitar somente numeros
  if not(Key in['0','1','2','3','4','5','6','7','8','9',#8]) then
    begin
      //beep;
      Key:=#0;
    end;
end;

procedure TFormTrasmBancos.xInstrucao2KeyPress(Sender: tObject;
  var Key: Char);
begin
// deixo aceitar somente numeros
  if not(Key in['0','1','2','3','4','5','6','7','8','9',#8]) then
    begin
      //beep;
      Key:=#0;
    end;
end;

procedure TFormTrasmBancos.EdtProtestoKeyPress(Sender: tObject;
  var Key: Char);
begin
// deixo aceitar somente numeros
  if not(Key in['0','1','2','3','4','5','6','7','8','9',#8]) then
    begin
      //beep;
      Key:=#0;
    end;
end;

procedure TFormTrasmBancos.FormKeyDown(Sender: tObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_F9 then
  close;
end;

procedure TFormTrasmBancos.BitBtn1Click(Sender: tObject);
begin
if DBLkCboBanco.Text = '' then
   begin
   uteis.aviso('Escolha um Banco!');
   DBLkCboBanco.SetFocus;
   exit;
   end;
if TQRecParce.IsEmpty then
   begin
   uteis.aviso('Não há Parcelas no Intervalo entre as Faturas!');
   xInicial.SetFocus;
   exit;
   end;
{INICIO DA RORINA DA CAIXA}
if COPY(Datamodulo.TbBancoBAN_APELIDO.Value,1,4)='CAIX' then
   begin
   if Length(xNossoN.Text)<10 then
      begin
      uteis.erro  ('Nosso Numero em branco ou incompleto.');
      xNossoN.SetFocus;
      exit;                    
      end;
   {seq. do registro dentro do arquivo - zera p/ incrementar ao gravar reg.}
   wSeqCaixa := 0;
   Try
     GravaHeader;
     GravaRegistros;
     GravaTrailer;
   except
     uteis.erro  ('Houve um problema na geração do arquivo!');
     exit;
   end;
   uteis.aviso('Arquivo gerado com sucesso!');
   exit;
   end;
/////////////////////{Fim da geração da CEF}
//
// variaveis publicas contadores
wseq:=0;wSeqLote:=0;
// diminui contador nosso numero p/ incrementar na rotina RegDetalhe
try
   w_nnumero:=StrToFloat(xNossoN.Text)-1;
except
  uteis.erro  ('Nosso Numero em branco ou incompleto.');
  exit;
end;
//
if COPY(Datamodulo.TbBancoBAN_APELIDO.Value,1,4)='BANE' then
   RegHeader_Bane;
if COPY(Datamodulo.TbBancoBAN_APELIDO.Value,1,4)='ITAU' then
   RegHeader_Itau;
MostraGerado; // mostra o arquivo texto gerado
xNossoN.Enabled := False;

end;

procedure TFormTrasmBancos.SpeedButton1Click(Sender: tObject);
begin
close;
end;

procedure TFormTrasmBancos.xInstrucao1Exit(Sender: tObject);
begin
///////{só p/ CAIXA}
xInstrucao1.Text := Justifica('e',xInstrucao1.Text,2,'0');
if copy(DBLkCboBanco.Text,1,5) = 'CAIXA' then
   begin
   Edt_Instruc.Visible := True;
   xInstrucao2.Text    := '';
   xInstrucao2.Enabled := False;
   xInstrucao2.Color   := clSilver;
   if xInstrucao1.Text = '01'then
      Edt_Instruc.Caption := 'Protestar'
   else if xInstrucao1.Text = '02'then
           Edt_Instruc.Caption := 'Devolver'
        else
           Edt_Instruc.Caption := 'Instrução Inválida!'
   end
else
   begin
   Edt_Instruc.Visible := False;
   xInstrucao2.Enabled := True;
   xInstrucao2.Color   := clwindow;
   end;
///////////////////
end;

procedure TFormTrasmBancos.xInicialKeyPress(Sender: tObject;
  var Key: Char);
begin
// deixo aceitar somente numeros
  if not(Key in['0','1','2','3','4','5','6','7','8','9',#8]) then
    begin
      //beep;
      Key:=#0;
    end;
end;

procedure TFormTrasmBancos.xFinalKeyPress(Sender: tObject; var Key: Char);
begin
// deixo aceitar somente numeros
  if not(Key in['0','1','2','3','4','5','6','7','8','9',#8]) then
    begin
      //beep;
      Key:=#0;
    end;
end;

procedure TFormTrasmBancos.HabilitaObjetos;
begin
//
end;

procedure TFormTrasmBancos.DesHabilitaObjetos;
begin
//
end;


procedure TFormTrasmBancos.EdtProtestoExit(Sender: tObject);
begin
if copy(DBLkCboBanco.Text,1,5) = 'CAIXA' then
   begin
   EdtProtesto.Text := justifica('e',EdtProtesto.Text,2,'0');
   end;
end;

end.
