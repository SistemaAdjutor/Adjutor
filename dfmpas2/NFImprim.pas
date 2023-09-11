{********************************************************************
| Programa....: NFIMPRIM  - Nome formulario = FormNfImprime
| Objetivo....: Gerenciar Notas Fiscais a Imprimir
| Analista....: Márcio Neu Pacheco
| Programador.: Márcio
|
| Comentários : Layout Exclusivo p/ cada empresa - RwEspec
|
| Criação...........: Set/99
| Ultima Alteração..: Jan/02
| Alterado Por......: MÁRCIO
**********************************************************************}
unit NFImprim;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Db, DBTables, Grids, DBGrids,RwEspec,
  Mask, DBCtrls,RwFunc, ERPrint,inifiles, RDprint,  rxToolEdit, rxCurrEdit;

type
  TFormNFImprime = class(TForm)
    TbNFiscal: TTable;
    PrinterSetupDialog1: TPrinterSetupDialog;
    TbReceParcela: TTable;
    TbReceParcelaFAT_CODIGO: TStringField;
    TbReceParcelaFPC_NUMER: TStringField;
    TbReceParcelaBAN_CODIGO: TStringField;
    TbReceParcelaFPC_COBNUM: TStringField;
    TbReceParcelaFPC_COBTIPO: TStringField;
    TbReceParcelaFPC_STATUS: TStringField;
    TbReceParcelaFPC_DESCTO: TFloatField;
    TbReceParcelaFPC_DTDESC: TDateTimeField;
    TbReceParcelaFPC_VENCTO: TDateTimeField;
    TbReceParcelaFPC_PAGTO: TDateTimeField;
    TbReceParcelaFPC_VLPARC: TFloatField;
    TbReceParcelaFPC_VLPAGO: TFloatField;
    TbReceParcelaFPC_OBS: TStringField;
    TbReceParcelaFPC_SITPAG: TBooleanField;
    TbReceParcelaEMP_CODIGO: TStringField;
    TbReceParcelaCLI_CODIGO: TStringField;
    DBGrdNotas: TDBGrid;
    DsNFiscal: TDataSource;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    TbNFiscalNF_NU_NOTA: TStringField;
    TbNFiscalNF_EMISSAO: TDateTimeField;
    TbNFiscalNF_SAIDA: TDateTimeField;
    TbNFiscalBAN_CODIGO: TStringField;
    TbNFiscalNF_PEDIDO: TStringField;
    TbNFiscalNF_REPRES: TStringField;
    TbNFiscalNF_IMPRESS: TStringField;
    TbNFiscalNF_CODCLI: TStringField;
    TbNFiscalNF_NOMECLI: TStringField;
    TbNFiscalNF_ENDCLI: TStringField;
    TbNFiscalNF_CIDCLI: TStringField;
    TbNFiscalNF_ESTCLI: TStringField;
    TbNFiscalNF_BAICLI: TStringField;
    TbNFiscalNF_CEPCLI: TStringField;
    TbNFiscalNF_FONCLI: TStringField;
    TbNFiscalNF_ENDENT: TStringField;
    TbNFiscalNF_CIDENT: TStringField;
    TbNFiscalNF_ESTENT: TStringField;
    TbNFiscalNF_CEPENT: TStringField;
    TbNFiscalNF_ENDCOB: TStringField;
    TbNFiscalNF_CIDCOB: TStringField;
    TbNFiscalNF_ESTCOB: TStringField;
    TbNFiscalNF_CEPCOB: TStringField;
    TbNFiscalNF_CGC: TStringField;
    TbNFiscalNF_FRETE: TStringField;
    TbNFiscalNF_FRETE2: TStringField;
    TbNFiscalNF_QTDE: TFloatField;
    TbNFiscalNF_PLACAVE: TStringField;
    TbNFiscalNF_PESOBRU: TFloatField;
    TbNFiscalNF_PESOLIQ: TFloatField;
    TbNFiscalNF_ALIQ_ICMS: TFloatField;
    TbNFiscalNF_BASEICMS: TFloatField;
    TbNFiscalNF_VLICMS: TFloatField;
    TbNFiscalNF_TOT_PROD: TFloatField;
    TbNFiscalNF_TOT_NOTA: TFloatField;
    TbNFiscalNF_VLIPI: TFloatField;
    TbNFiscalNF_DESCTO: TFloatField;
    TbNFiscalNF_ESPECIE: TStringField;
    TbNFiscalNF_MARCA: TStringField;
    TbNFiscalNF_NUMERO: TStringField;
    TbNFiscalNF_ENTR_SAID: TStringField;
    TbNFiscalTRP_CODIGO: TStringField;
    TbNFiscalNF_TRP_NOME: TStringField;
    TbNFiscalNF_TRP_FONE: TStringField;
    TbNFiscalNF_TRP_ENDE: TStringField;
    TbNFiscalNF_TRP_CIDA: TStringField;
    TbNFiscalNF_TRP_UF: TStringField;
    TbNFiscalNF_TRP_CGC: TStringField;
    TbNFiscalNF_TRP_INSC: TStringField;
    TbNFiscalNF_TRP_RNOME: TStringField;
    TbNFiscalNF_TRP_RFONE: TStringField;
    TbNFiscalNF_TRP_RCIDA: TStringField;
    TbNFiscalNF_TRP_RUF: TStringField;
    TbNFiscalNF_OBS_PEDI: TStringField;
    TbNFiscalNF_OBS_NOTA: TStringField;
    TbNFiscalNF_VLFRETE: TFloatField;
    TbNFiscalOPE_SUBCOD: TStringField;
    TbNFiscalEMP_CODIGO: TStringField;
    TbNFiscalNF_BASESUBTRIB: TFloatField;
    TbNFiscalNF_VLSUBTRIB: TFloatField;
    TbNFiscalNF_TOT_CSUB: TFloatField;
    TbNFiscalNF_MINUTAOBS: TStringField;
    TbNFiscalNF_MINUTAVAL: TFloatField;
    TbNFiscalNF_DESCTO_PC1: TFloatField;
    TbNFiscalNF_DESCTO_PC2: TFloatField;
    TbNFiscalNF_IE_SUB: TStringField;
    TbNFiscalOPE_NATUREZA: TStringField;
    TbNFiscalNF_CONDPAGTO: TStringField;
    TbNFiscalNF_REPNOME: TStringField;
    TbNFiscalNF_INSCRI: TStringField;
    TbNFiscalNF_OBS_OPER: TStringField;
    TbNFiscalNF_TRP_RENDE: TStringField;
    TbNFiscalNF_TRP_RCEP: TStringField;
    TbNFiscalOPE_CODIGO: TStringField;
    TbNFiscalOPE_AGRUPADO: TStringField;
    RPrintNFiscal: TEvRPrint;
    GroupBox1: TGroupBox;
    SBit_Notas: TSpeedButton;
    SBit_Prenota: TSpeedButton;
    SBit_Recibo: TSpeedButton;
    SBit_Etiquetas: TSpeedButton;
    Sbit_Minuta: TSpeedButton;
    SBit_Fichas: TSpeedButton;
    GroupBox2: TGroupBox;
    BitNFiscal: TBitBtn;
    BitLimpar: TBitBtn;
    BitConfig: TBitBtn;
    BitSair: TBitBtn;
    RDprintNotaFiscal: tRdPrintOld;
    Bit_Estorno: TBitBtn;
    GrBoxMinuta: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    LabCliente: TLabel;
    LabNota: TLabel;
    LabTransport: TLabel;
    LabTipoFrete: TLabel;
    Label5: TLabel;
    LabtotNota: TLabel;
    Label6: TLabel;
    LabQtde: TLabel;
    LabEspecie: TLabel;
    Label7: TLabel;
    LabPeso: TLabel;
    Label8: TLabel;
    EditObsMinuta: TEdit;
    NEditValorFrete: TCurrencyEdit;
    BitMinuta: TBitBtn;
    BitMinutaFechar: TBitBtn;
    GrBEtiqueta: TGroupBox;
    Label2: TLabel;
    Label9: TLabel;
    EditFinal: TEdit;
    EditInicial: TEdit;
    BitImprimeEtiq: TBitBtn;
    BitEtiqFechar: TBitBtn;
    RdPrintEtiq1: tRdPrintOld;
    TbNFiscalIten: TTable;
    DsNFiscalIten: TDataSource;
    TbNFiscalItenNF_NUMERO: TStringField;
    TbNFiscalItenPRD_REFER: TStringField;
    TbNFiscalItenPRD_QTDE: TFloatField;
    TbNFiscalItenPRD_PRECO: TFloatField;
    TbNFiscalItenPRD_UNIDADE: TStringField;
    TbNFiscalItenIPI_ALIQ: TFloatField;
    TbNFiscalItenPRD_ICMS: TFloatField;
    TbNFiscalItenPRD_DESCRI: TStringField;
    TbNFiscalItenEMP_CODIGO: TStringField;
    TbNFiscalItenIPI_APELIDO: TStringField;
    TbNFiscalItenIPI_CLASSIF: TStringField;
    TbNFiscalItenPRD_SITRIBUT: TStringField;
    TbNFiscalItenVL_SUBSTIT: TFloatField;
    TbNFiscalItenNF_IDESCTO1: TFloatField;
    TbNFiscalItenNF_IDESCTO2: TFloatField;
    TbNFiscalItenPRD_TOT_CC: TFloatField;
    procedure BitNFiscalClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure BitSairClick(Sender: tObject);
    procedure TbNFiscalItenCalcFields(DataSet: TDataSet);
    procedure BitLimparClick(Sender: tObject);
    procedure BitConfigClick(Sender: tObject);
    procedure SBit_NotasClick(Sender: tObject);
    procedure SBit_PrenotaClick(Sender: tObject);
    procedure SBit_FichasClick(Sender: tObject);
    procedure SBit_ReciboClick(Sender: tObject);
    procedure Bit_EstornoClick(Sender: tObject);
    procedure Sbit_MinutaClick(Sender: tObject);
    procedure BitMinutaClick(Sender: tObject);
    procedure FormKeyPress(Sender: tObject; var Key: Char);
    procedure BitMinutaFecharClick(Sender: tObject);
    procedure EditInicialExit(Sender: tObject);
    procedure EditFinalExit(Sender: tObject);
    procedure EditInicialKeyPress(Sender: tObject; var Key: Char);
    procedure EditFinalKeyPress(Sender: tObject; var Key: Char);
    procedure BitImprimeEtiqClick(Sender: tObject);
    procedure SBit_EtiquetasClick(Sender: tObject);
    procedure BitEtiqFecharClick(Sender: tObject);
  private
    { Private declarations }
    wAbParametros : Boolean;  // flag de abertura Defaut é False
    // var p/ chegar estorno de nota
    wAbPedido,wAbPedItem,wAbReceber,wAbRecParce,wAbRecItem : Boolean;
    //
    wNumeroNota: string;  // guarda registro atual da grade
    procedure ImprimeNotaFiscal(wImprime:String);
    procedure PreNota;
    procedure Recibo;
    procedure AbrirTabEstorno;
    procedure FecharTabEstorno;
    procedure EstornaNF;
    Procedure ImprimeEtiquetas;
  public
    { Public declarations }

  end;

var
  FormNFImprime: TFormNFImprime;
  wCompCampo : string;
  wnossocodigo : string;

implementation

uses Database, Ped0001, ADJ0001, Car0001, QrMinuta, Men0001;

{$R *.DFM }





procedure TFormNFImprime.BitNFiscalClick(Sender: tObject);
begin
  if uteis.confirmacao ( 'Confirma Impressão de Todas as Notas Pendentes ?') = idyes then
    ImprimeNotaFiscal('T');
end;

procedure TFormNFImprime.FormShow(Sender: tObject);
begin
  Left := 8;
  Top := 36;

  screen.cursor:=CrHourglass;
  // 1
  try
    TbNFiscal.DatabaseName := Preopen('receber');
    TbNFiscal.IndexFieldNames := 'NF_NU_NOTA';
    TbNFiscal.Open;
  except
    uteis.erro  ('Impossível acessar a tabela de "Nota fiscal"! ');
  end;
  // 2
  try
    TbNFiscalIten.DatabaseName := Preopen('receber');
    TbNFiscalIten.IndexFieldNames := 'NF_NUMERO';
    TbNFiscalIten.Open;

  except
    uteis.erro  ('Impossível acessar a tabela de "Itens da nota fiscal"!');
  end;
  // 3
  // tabela usada p/ imprimir parcelas da nota
  try
    //
    TbReceParcela.DatabaseName := Preopen('receber');
    TbReceParcela.Open;
  except
    uteis.erro  ('Impossível acessar a tabela de "Parcelas da nota fiscal"!');
  end;
  // 4
  try
    if Datamodulo.TbProduto.Active = False then
       begin
       Datamodulo.TbProduto.DatabaseName := Preopen('produtos');
       Datamodulo.TbProduto.IndexName := 'XPRD_REFE';
       Datamodulo.TbProduto.Open;
       end;
  except
    uteis.erro  ('Impossível acessar a tabela de "Produtos"!');
  end;
  // 5
  // O pedido pode ter aberto
  if Datamodulo.TbParametros.Active = False then
    begin
     wAbParametros := True;
    // Apanhar nossocodigo da tabela parametros
     try
       Datamodulo.TbParametros.Open;
     except
       uteis.erro  ('Impossível acessar a tabela  "TbParametros"! ');
     end;
    end;
  wnossocodigo := Datamodulo.TbParametrosPMT_NOSSOCODIGO.Value;
  // 6
  try
   Datamodulo.TbTransport.DatabaseName := Preopen('transportadoras');
   Datamodulo.TbTransport.IndexName := 'XTRP_CODI';
   Datamodulo.TbTransport.Open;
  except
   uteis.erro  ('Impossível acessar a tabela de "Transportadora"!');
  end;
  //
  //Link entre tabelas: Itens de Nota
  TbNFiscalIten.MasterSource := DsNFiscal;
  TbNFiscalIten.MasterFields := 'NF_NU_NOTA';
  //
  screen.cursor:=crDefault;
  TbNFiscal.Last;
end;

procedure TFormNFImprime.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin

  // 1
  try
    TbNFiscal.Close;
  except
    uteis.erro  ('Impossível fechar a tabela de "Nota fiscal"!');
  end;
  // 2
  try
    TbNFiscalIten.Close;
  except
    uteis.erro  ('Impossível fechar a tabela de "Itens da nota fiscal"!');
  end;
 // 3
  try
    TbReceParcela.Close;
  except
    uteis.erro  ('Impossível fechar tabela de "Parcelas da nota fiscal"!');
  end;
  // 4
  try
    Datamodulo.TbTransport.Close;
  except
    uteis.erro  ('Impossível fechar tabela de "Transportadora"!');
  end;
  // 5
  if not Assigned(FormPedidos)then
    Datamodulo.TbProduto.Close;
  // 6
  if wAbParametros then
    begin
     // tabela foi aberta por form atual
     try
       Datamodulo.TbParametros.close;
     except
       uteis.erro  ('Impossível fechar a tabela  "TbParametros"! ');
     end;
    end;
end;

procedure TFormNFImprime.BitSairClick(Sender: tObject);
begin
  Close;
end;

procedure TFormNFImprime.TbNFiscalItenCalcFields(DataSet: TDataSet);
begin
    TbNFiscalItenPRD_TOT_CC.Value :=TbNFiscalItenPRD_QTDE.Value*TbNFiscalItenPRD_PRECO.Value;
end;

procedure TFormNFImprime.BitLimparClick(Sender: tObject);
begin
if uteis.confirmacao ( 'Este Processo Limpará as Notas Impressas. Confirma ?') = idyes  then
    begin
    TbNFiscal.First;
    While not TbNFiscal.Eof do
      begin
      if (TbNFiscalNF_IMPRESS.Value = 'S')or (TbNFiscalNF_IMPRESS.Value = 'I') then
        begin
        while TbNFiscalItenNF_NUMERO.Value=TbNFiscalNF_NU_NOTA.Value do
          begin
          // deleta itens
          TbNFiscalIten.Delete;
          end;
        //
        //deleta notas
        TbNFiscal.Delete;
        end
      else
        TbNFiscal.Next;
      //
      end;
    end;

end;

procedure TFormNFImprime.BitConfigClick(Sender: tObject);
begin
   PrinterSetupDialog1.Execute;
end;


procedure TFormNFImprime.ImprimeNotaFiscal(wImprime:String);
{*********************************************************************
* Objetivo        : Imprimir Nota Fiscal
* Caracteristicas : usa parametros arquivo .ini
* Parametros      : wImprime => se imprime [T]odas ou somente uma
*
***********************************************************************}
var
wLinha, WLinhaParc, WColParc, i :Integer;
wVal_Extenso:String;
wDescontos,wCampoAux:string;
wClasseIpi    :array[1..2,1..6] of string;
wDUPLICATA    :array[1..6]      of String;
wVENCIMENTO   :Array[1..6]      of String;
wVALOR_DUPLICATA:Array[1..6]    of Currency;
wBookmark : Tbookmark;
ArquivoIni:TiniFile;
begin
// inicializar valores
i:=0;
for i:= 1 to 6 do
 wClasseIpi[1,i]:='';
//***********************************************************************
// ***** NOTA FISCAL  ***** //
// **********************************************************************}
{cria o arquivo}
if not FileExists(FrmMenu.PathIniNF+'\sysnotau.ini') then
  begin
  //beep;
  RDprintNotaFiscal.Fechar;
  uteis.erro  ('Impossível localizar arquivo de parametros para nota fiscal !');
  exit;
  end
else
   ArquivoIni := TiniFile.Create(FrmMenu.PathIniNF+'\sysnotau.ini');
//
// desabilita link - obrigatorio p/ nao dar bug nos itens
TbNFiscalIten.MasterSource := Nil;
TbNFiscalIten.MasterFields := '';
//
{TAMANHO DA FONTE}
if ArquivoIni.ReadString('FONTE','TAMANHO','') = '0' then
  // fonte Comp 17 Cp
  RDprintNotaFiscal.FonteTamanhoPadrao := S17cpp
else
  // fonte Normal 10 Cp
  RDprintNotaFiscal.FonteTamanhoPadrao := S10cpp;
//
RDprintNotaFiscal.TamanhoQteLinhas := StrToInt(ArquivoIni.ReadString('LINHAS_NOTA','LINHA',''));

// Se T = Todas : vai p/ inicio do arquivo, senão começa do registro atual
RDprintNotaFiscal.OpcoesPreview.Preview := True;
RDprintNotaFiscal.abrir;
if wImprime = 'T' then
   TbNFiscal.First
else
   // Individual, marco resgisto atual
   wBookmark := TbNFiscal.GetBookmark;

while (not TbNFiscal.EOF) do
  begin
  if TbNFiscalNF_IMPRESS.Text <> 'I' then
    begin
    if TbNFiscalNF_ENTR_SAID.VAlue = 'S' then
       begin
       {X DA SAIDA}
       if ArquivoIni.ReadString('SAIDA','IMPRIME','') = 'S' then
         RDprintNotaFiscal.impF(StrToInt(ArquivoIni.ReadString('SAIDA','LINHA','')),StrToInt(ArquivoIni.ReadString('SAIDA','COLUNA','')),'X',[expandido]);
       end
    else
      {X DA ENTRADA}
      if ArquivoIni.ReadString('ENTRADA','IMPRIME','') = 'S' then
         RDprintNotaFiscal.impF(StrToInt(ArquivoIni.ReadString('ENTRADA','LINHA','')),StrToInt(ArquivoIni.ReadString('ENTRADA','COLUNA','')),'X',[expandido]);
    {NUMERO NOTA FISCAL}
    if ArquivoIni.ReadString('NOTA_FISCAL','IMPRIME','') = 'S' then
       RDprintNotaFiscal.impF(StrToInt(ArquivoIni.ReadString('NOTA_FISCAL','LINHA','')),StrToInt(ArquivoIni.ReadString('NOTA_FISCAL','COLUNA','')), TbNFiscalNF_NU_NOTA.AsString,[negrito]);
    {NATUREZA DE OPERACAO}
    if ArquivoIni.ReadString('NATOPERACAO','IMPRIME','') = 'S' then
        RDprintNotaFiscal.imp(StrToInt(ArquivoIni.ReadString('NATOPERACAO','LINHA','')),StrToInt(ArquivoIni.ReadString('NATOPERACAO','COLUNA','')), TbNFiscalOPE_NATUREZA.AsString);
    {CFOP}
    if ArquivoIni.ReadString('CFOP','IMPRIME','') = 'S' then
       RDprintNotaFiscal.imp(StrToInt(ArquivoIni.ReadString('CFOP','LINHA','')),StrToInt(ArquivoIni.ReadString('CFOP','COLUNA','')), TbNFiscalOPE_CODIGO.AsString);
    {INSC_SUBS.TRIBUTARIA}
    if ArquivoIni.ReadString('INSC_TRIBUTA','IMPRIME','') = 'S' then
       RDprintNotaFiscal.imp(StrToInt(ArquivoIni.ReadString('INSC_TRIBUTA','LINHA','')),StrToInt(ArquivoIni.ReadString('INSC_TRIBUTA','COLUNA','')), '');
    {RAZAO}
    if ArquivoIni.ReadString('RAZAO','IMPRIME','') = 'S' then
       RDprintNotaFiscal.imp(StrToInt(ArquivoIni.ReadString('RAZAO','LINHA','')),StrToInt(ArquivoIni.ReadString('RAZAO','COLUNA','')), TbNFiscalNF_NOMECLI.AsString);
    {CNPJ_CLIENTE}
    if ArquivoIni.ReadString('CNPJ_CLIENTE','IMPRIME','') = 'S' then
       RDprintNotaFiscal.imp(StrToInt(ArquivoIni.ReadString('CNPJ_CLIENTE','LINHA','')),StrToInt(ArquivoIni.ReadString('CNPJ_CLIENTE','COLUNA','')), MascaraCNPJ_CPF(TbNFiscalNF_CGC.AsString));
    {DATA_EMISSAO}
    if ArquivoIni.ReadString('DATA_EMISSAO','IMPRIME','') = 'S' then
       RDprintNotaFiscal.imp(StrToInt(ArquivoIni.ReadString('DATA_EMISSAO','LINHA','')),StrToInt(ArquivoIni.ReadString('DATA_EMISSAO','COLUNA','')),TbNFiscalNF_EMISSAO.AsString);
    {ENDERECO}
    if ArquivoIni.ReadString('ENDERECO','IMPRIME','') = 'S' then
       RDprintNotaFiscal.imp(StrToInt(ArquivoIni.ReadString('ENDERECO','LINHA','')),StrToInt(ArquivoIni.ReadString('ENDERECO','COLUNA','')), TbNFiscalNF_ENDCLI.AsString);
    {BAIRRO}
    if ArquivoIni.ReadString('BAIRRO','IMPRIME','') = 'S' then
       RDprintNotaFiscal.imp(StrToInt(ArquivoIni.ReadString('BAIRRO','LINHA','')),StrToInt(ArquivoIni.ReadString('BAIRRO','COLUNA','')), TbNFiscalNF_BAICLI.AsString);
    {CEP}
    if ArquivoIni.ReadString('CEP','IMPRIME','') = 'S' then
       RDprintNotaFiscal.imp(StrToInt(ArquivoIni.ReadString('CEP','LINHA','')),StrToInt(ArquivoIni.ReadString('CEP','COLUNA','')), MascaraCep(TbNFiscalNF_CEPCLI.AsString));
    {DATA_SAIDA}
    if ArquivoIni.ReadString('DATA_SAIDA','IMPRIME','') = 'S' then
       RDprintNotaFiscal.imp(StrToInt(ArquivoIni.ReadString('DATA_SAIDA','LINHA','')),StrToInt(ArquivoIni.ReadString('DATA_SAIDA','COLUNA','')), TbNFiscalNF_SAIDA.AsString);
    {CIDADE}
    if ArquivoIni.ReadString('CIDADE','IMPRIME','') = 'S' then
       RDprintNotaFiscal.imp(StrToInt(ArquivoIni.ReadString('CIDADE','LINHA','')),StrToInt(ArquivoIni.ReadString('CIDADE','COLUNA','')), TbNFiscalNF_CIDCLI.AsString);
    {FONE}
    if ArquivoIni.ReadString('FONE','IMPRIME','') = 'S' then
       RDprintNotaFiscal.imp(StrToInt(ArquivoIni.ReadString('FONE','LINHA','')),StrToInt(ArquivoIni.ReadString('FONE','COLUNA','')), MascaraFone(TbNFiscalNF_FONCLI.AsString));
    {ESTADO}
    if ArquivoIni.ReadString('ESTADO','IMPRIME','') = 'S' then
       RDprintNotaFiscal.imp(StrToInt(ArquivoIni.ReadString('ESTADO','LINHA','')),StrToInt(ArquivoIni.ReadString('ESTADO','COLUNA','')), TbNFiscalNF_ESTCLI.AsString);
    {INSC_ESTADO}
    if ArquivoIni.ReadString('INSC_ESTAD','IMPRIME','') = 'S' then
       RDprintNotaFiscal.imp(StrToInt(ArquivoIni.ReadString('INSC_ESTAD','LINHA','')),StrToInt(ArquivoIni.ReadString('INSC_ESTAD','COLUNA','')), TbNFiscalNF_INSCRI.AsString);
    {HORA_SAIDA}
    if ArquivoIni.ReadString('HORA_SAIDA','IMPRIME','') = 'S' then
       RDprintNotaFiscal.imp(StrToInt(ArquivoIni.ReadString('HORA_SAIDA','LINHA','')),StrToInt(ArquivoIni.ReadString('HORA_SAIDA','COLUNA','')), TimeToStr(Time));
    {FATURA}
    {Busca parcelas e carregar arrays}
    FormNFImprime.TbReceParcela.FindKey([TbNFiscalNF_NU_NOTA.Value]);
    //
    i:=1;
    while(FormNFImprime.TbReceParcelaFAT_CODIGO.Value = TbNFiscalNF_NU_NOTA.value)and not(FormNFImprime.TbReceParcela.Eof) do
      begin
      if i <=6 then
        begin
        wDUPLICATA[i] :=TbNFiscalNF_NU_NOTA.AsString;
        // se mais de uma parcela colocar numeroda parcela
        if i > 1 then
          begin
           wDUPLICATA[i-1] :=TbNFiscalNF_NU_NOTA.AsString+'/'+IntToStr(i-1);
           wDUPLICATA[i] :=TbNFiscalNF_NU_NOTA.AsString+'/'+IntToStr(i);
          end;
        wVENCIMENTO[i]      :=TbReceParcelaFPC_Vencto.AsString;
        wVALOR_DUPLICATA[i] :=TbReceParcelaFPC_VLPARC.Value;
        end
      else
        begin
        uteis.aviso('Ative o suporte técnico : a NF aceita somente 6 parcelas');
        break;
        end;
      //
      FormNFImprime.TbReceParcela.Next;
      i:=i+1;
      end;
      {DADOS DAS PARCELAS DA FATURA}
      if wDUPLICATA[1] <> '' then
         begin
         {FATURA1}
         if ArquivoIni.ReadString('FATURA1','IMPRIME','') = 'S' then
            RDprintNotaFiscal.imp(StrToInt(ArquivoIni.ReadString('FATURA1','LINHA','')),StrToInt(ArquivoIni.ReadString('FATURA1','COLUNA','')), wDUPLICATA[1]);
         {VENCIMENTO1}
         if ArquivoIni.ReadString('VENCIMENTO1','IMPRIME','') = 'S' then
            RDprintNotaFiscal.imp(StrToInt(ArquivoIni.ReadString('VENCIMENTO1','LINHA','')),StrToInt(ArquivoIni.ReadString('VENCIMENTO1','COLUNA','')), wVENCIMENTO[1]);
         {VALOR1}
         if ArquivoIni.ReadString('VALOR1','IMPRIME','') = 'S' then
            RDprintNotaFiscal.impVal(StrToInt(ArquivoIni.ReadString('VALOR1','LINHA','')),StrToInt(ArquivoIni.ReadString('VALOR1','COLUNA','')),'##,###,##0.00', wVALOR_DUPLICATA[1],[]);
         end;
      if wDUPLICATA[2] <> '' then
         begin
         {FATURA2}
         if ArquivoIni.ReadString('FATURA2','IMPRIME','') = 'S' then
            RDprintNotaFiscal.imp(StrToInt(ArquivoIni.ReadString('FATURA2','LINHA','')),StrToInt(ArquivoIni.ReadString('FATURA2','COLUNA','')), wDUPLICATA[2]);
         {VENCIMENTO2}
         if ArquivoIni.ReadString('VENCIMENTO2','IMPRIME','') = 'S' then
            RDprintNotaFiscal.imp(StrToInt(ArquivoIni.ReadString('VENCIMENTO2','LINHA','')),StrToInt(ArquivoIni.ReadString('VENCIMENTO2','COLUNA','')), wVENCIMENTO[2]);
         {VALOR2}
         if ArquivoIni.ReadString('VALOR2','IMPRIME','') = 'S' then
            RDprintNotaFiscal.impVal(StrToInt(ArquivoIni.ReadString('VALOR2','LINHA','')),StrToInt(ArquivoIni.ReadString('VALOR2','COLUNA','')), '##,###,##0.00', wVALOR_DUPLICATA[2],[]);
         end;
      if wDUPLICATA[3] <> '' then
         begin
         {FATURA3}
         if ArquivoIni.ReadString('FATURA3','IMPRIME','') = 'S' then
            RDprintNotaFiscal.imp(StrToInt(ArquivoIni.ReadString('FATURA3','LINHA','')),StrToInt(ArquivoIni.ReadString('FATURA3','COLUNA','')), wDUPLICATA[3]);
         {VENCIMENTO3}
         if ArquivoIni.ReadString('VENCIMENTO3','IMPRIME','') = 'S' then
            RDprintNotaFiscal.imp(StrToInt(ArquivoIni.ReadString('VENCIMENTO3','LINHA','')),StrToInt(ArquivoIni.ReadString('VENCIMENTO3','COLUNA','')), wVENCIMENTO[3]);
         {VALOR3}
         if ArquivoIni.ReadString('VALOR3','IMPRIME','') = 'S' then
            RDprintNotaFiscal.impVal(StrToInt(ArquivoIni.ReadString('VALOR3','LINHA','')),StrToInt(ArquivoIni.ReadString('VALOR3','COLUNA','')), '##,###,##0.00', wVALOR_DUPLICATA[3],[]);
         end;
      if wDUPLICATA[4] <> '' then
         begin
         {FATURA4}
         if ArquivoIni.ReadString('FATURA4','IMPRIME','') = 'S' then
            RDprintNotaFiscal.imp(StrToInt(ArquivoIni.ReadString('FATURA4','LINHA','')),StrToInt(ArquivoIni.ReadString('FATURA4','COLUNA','')), wDUPLICATA[4]);
         {VENCIMENTO4}
         if ArquivoIni.ReadString('VENCIMENTO4','IMPRIME','') = 'S' then
            RDprintNotaFiscal.imp(StrToInt(ArquivoIni.ReadString('VENCIMENTO4','LINHA','')),StrToInt(ArquivoIni.ReadString('VENCIMENTO4','COLUNA','')), wVENCIMENTO[4]);
         {VALOR4}
         if ArquivoIni.ReadString('VALOR4','IMPRIME','') = 'S' then
            RDprintNotaFiscal.impVal(StrToInt(ArquivoIni.ReadString('VALOR4','LINHA','')),StrToInt(ArquivoIni.ReadString('VALOR4','COLUNA','')), '##,###,##0.00', wVALOR_DUPLICATA[4],[]);
         end;
      if wDUPLICATA[5] <> '' then
         begin
         {FATURA5}
         if ArquivoIni.ReadString('FATURA5','IMPRIME','') = 'S' then
            RDprintNotaFiscal.imp(StrToInt(ArquivoIni.ReadString('FATURA5','LINHA','')),StrToInt(ArquivoIni.ReadString('FATURA5','COLUNA','')), wDUPLICATA[5]);
         {VENCIMENTO5}
         if ArquivoIni.ReadString('VENCIMENTO5','IMPRIME','') = 'S' then
            RDprintNotaFiscal.imp(StrToInt(ArquivoIni.ReadString('VENCIMENTO5','LINHA','')),StrToInt(ArquivoIni.ReadString('VENCIMENTO5','COLUNA','')), wVENCIMENTO[5]);
         {VALOR5}
         if ArquivoIni.ReadString('VALOR5','IMPRIME','') = 'S' then
            RDprintNotaFiscal.impVal(StrToInt(ArquivoIni.ReadString('VALOR5','LINHA','')),StrToInt(ArquivoIni.ReadString('VALOR5','COLUNA','')), '##,###,##0.00', wVALOR_DUPLICATA[5],[]);
         end;
       if wDUPLICATA[6] <> '' then
          begin
          {FATURA6}
          if ArquivoIni.ReadString('FATURA6','IMPRIME','') = 'S' then
             RDprintNotaFiscal.imp(StrToInt(ArquivoIni.ReadString('FATURA6','LINHA','')),StrToInt(ArquivoIni.ReadString('FATURA6','COLUNA','')), wDUPLICATA[6]);
          {VENCIMENTO6}
          if ArquivoIni.ReadString('VENCIMENTO6','IMPRIME','') = 'S' then
             RDprintNotaFiscal.imp(StrToInt(ArquivoIni.ReadString('VENCIMENTO6','LINHA','')),StrToInt(ArquivoIni.ReadString('VENCIMENTO6','COLUNA','')), wVENCIMENTO[6]);
          {VALOR6}
          if ArquivoIni.ReadString('VALOR6','IMPRIME','') = 'S' then
             RDprintNotaFiscal.impVal(StrToInt(ArquivoIni.ReadString('VALOR6','LINHA','')),StrToInt(ArquivoIni.ReadString('VALOR6','COLUNA','')), '##,###,##0.00', wVALOR_DUPLICATA[6],[]);
          end;
    {DADOS DO PRODUTO}
    // pegar linha inicial dos itens da nota
    if ArquivoIni.ReadString('PRODUTO_DESC','IMPRIME','') = 'S' then
      wLINHA:=  StrToInt(ArquivoIni.ReadString('PRODUTO_DESC','LINHA',''));
    //
    TbNFiscalIten.First;
    TbNFiscalIten.FindKey([TbNFiscalNF_NU_NOTA.Value]);
    while (TbNFiscalNF_NU_NOTA.Value = TbNFiscalItenNF_NUMERO.value) and not(TbNFiscalIten.Eof) do
      begin
      // procurar descricao do produto
      Datamodulo.TbProduto.IndexName := 'XPRD_REFE';
      Datamodulo.TbProduto.FindKey([TbNFiscalItenPrd_Refer.Text]);
      //
      if ArquivoIni.ReadString('PRODUTO','IMPRIME','') = 'S' then
        RDprintNotaFiscal.imp(wLINHA,StrToInt(ArquivoIni.ReadString('PRODUTO','COLUNA','')), Trim(TbNFiscalItenPRD_REFER.AsString));
      if ArquivoIni.ReadString('PRODUTO_DESC','IMPRIME','') = 'S' then
        RDprintNotaFiscal.imp(wLINHA,StrToInt(ArquivoIni.ReadString('PRODUTO_DESC','COLUNA','')), Trim(TbNFiscalItenPRD_DESCRI.AsString));
      // Se é para imprimir somente Apelido
      if ArquivoIni.ReadString('CF_APEL','IMPRIME','') = 'S' then
         RDprintNotaFiscal.imp(wLINHA,StrToInt(ArquivoIni.ReadString('CF_APEL','COLUNA','')),TbNFiscalItenIPI_APELIDO.AsString)
      else
         // imprime o codigo direto
         if ArquivoIni.ReadString('CF_COD','IMPRIME','') = 'S' then
            RDprintNotaFiscal.imp(wLINHA,StrToInt(ArquivoIni.ReadString('CF_COD','COLUNA','')),TbNFiscalItenIPI_CLASSIF.AsString);
      if ArquivoIni.ReadString('ST','IMPRIME','') = 'S' then
        RDprintNotaFiscal.imp(wLINHA,StrToInt(ArquivoIni.ReadString('ST','COLUNA','')),TbNFiscalItenPRD_SITRIBUT.AsString);
      if ArquivoIni.ReadString('UNIDADE','IMPRIME','') = 'S' then
         RDprintNotaFiscal.imp(wLINHA,StrToInt(ArquivoIni.ReadString('UNIDADE','COLUNA','')),TbNFiscalItenPRD_UNIDADE.AsString);
      //
      RDprintNotaFiscal.impVal(wLINHA,StrToInt(ArquivoIni.ReadString('QTDE','COLUNA','')),'########', TbNFiscalItenPRD_QTDE.AsInteger,[]);
      RDprintNotaFiscal.impVal(wLINHA,StrToInt(ArquivoIni.ReadString('PRECO_UNITARIO','COLUNA','')), '#,###,##0.00',TbNFiscalItenPRD_PRECO.AsCurrency,[]);
      RDprintNotaFiscal.impVal(wLINHA,StrToInt(ArquivoIni.ReadString('PRECO_TOTAL','COLUNA','')),'##,###,##0.00',TbNFiscalItenPRD_PRECO.AsCurrency*TbNFiscalItenPRD_QTDE.AsCurrency,[]);
      if ArquivoIni.ReadString('ALQ_ICMS','IMPRIME','') = 'S' then
         RDprintNotaFiscal.impVal(wLINHA,StrToInt(ArquivoIni.ReadString('ALQ_ICMS','COLUNA','')),'##0',TbNFiscalItenPRD_ICMS.AsCurrency,[]);
      if ArquivoIni.ReadString('ALQ_IPI','IMPRIME','') = 'S' then
         RDprintNotaFiscal.impVal(wLINHA,StrToInt(ArquivoIni.ReadString('ALQ_IPI','COLUNA','')),'##0',TbNFiscalItenIPI_ALIQ.AsCurrency,[]);
      if ArquivoIni.ReadString('VALOR_IPI','IMPRIME','') = 'S' then
         RDprintNotaFiscal.impVal(wLINHA,StrToInt(ArquivoIni.ReadString('VALOR_IPI','COLUNA','')),'#,##0.00',TbNFiscalItenPRD_QTDE.AsInteger*TbNFiscalItenPRD_PRECO.AsCurrency*TbNFiscalItenIPI_ALIQ.Value/100,[]);
      // Se é para imprimir somente Apelido
      if ArquivoIni.ReadString('CF_APEL','IMPRIME','') = 'S' then
        begin
        // Preencher matriz com codigo class.Ipi
        for i := 1 to 6 do
          begin
          if wClasseIpi[1,i]='' then
            begin
            wClasseIpi[1,i]:=TbNFiscalItenIPI_APELIDO.Value;
            wClasseIpi[2,i]:=Datamodulo.TbProdutoIPI_CODIGO.Value;
            break;
            end
          else
            if wClasseIpi[2,i]=Datamodulo.TbProdutoIPI_CODIGO.Value then
              break;
          end;
        end;
      TbNFiscalIten.Next;
      Inc(wLINHA);
      end; // while produto
    {DESCONTO NO CORPO DA NOTA}
    wDescontos:='';
    if TbNFiscalNF_DESCTO.Value > 0 then
       begin
       {SUB-TOTAL DOS PRODUTOS}
       Inc(wLINHA);
       RDPrintNotaFiscal.imp(wLINHA,StrToInt(ArquivoIni.ReadString('QTDE','COLUNA','')),'Sub-Total...');
       //Total dos produtos sem o descto(valor é gravado já c/ desconto)
       RDPrintNotaFiscal.impVal(wLINHA,StrToInt(ArquivoIni.ReadString('PRECO_TOTAL','COLUNA','')),'##,###,##0.00',TbNFiscalNF_TOT_PROD.AsCurrency+TbNFiscalNF_DESCTO.AsCurrency,[]);
       Inc(wLINHA);
       //Prepar desconto 1 e/ou desconto 2 : quando por pecentual
       if TbNFiscalNF_DESCTO_PC1.Value > 0 then
         wDescontos:=Trim(FloatToStr(TbNFiscalNF_DESCTO_PC1.Value));
       if TbNFiscalNF_DESCTO_PC2.Value > 0 then
         wDescontos:=wDescontos+'+'+Trim(FloatToStr(TbNFiscalNF_DESCTO_PC2.Value));
       //
       {PERCENTUAL DO(S) DESCONTOS}
       RDPrintNotaFiscal.imp(wLINHA,StrToInt(ArquivoIni.ReadString('QTDE','COLUNA','')),'Desconto....');
       RDPrintNotaFiscal.imp(wLINHA,StrToInt(ArquivoIni.ReadString('QTDE','COLUNA',''))+13,wDescontos);
       {VALOR DO DESCONTO}
       RDPrintNotaFiscal.impVal(wLINHA,StrToInt(ArquivoIni.ReadString('PRECO_TOTAL','COLUNA','')),'##,###,##0.00',TbNFiscalNF_DESCTO.AsCurrency,[]);
       {VALOR TOTAL DOS PRODUTOS C/ DESCTO}
       Inc(wLINHA);
       RDPrintNotaFiscal.imp(wLINHA,StrToInt(ArquivoIni.ReadString('PRECO_TOTAL','COLUNA','')),'------------');
       Inc(wLINHA);
       RDPrintNotaFiscal.impVal(wLINHA,StrToInt(ArquivoIni.ReadString('PRECO_TOTAL','COLUNA','')),'##,###,##0.00',TbNFiscalNF_TOT_PROD.AsCurrency,[]);
       end;
   {MENSAGEM 1 - Aviso do Cadastro de Operação fiscal}
    if ArquivoIni.ReadString('MENSAGEM1','IMPRIME','') = 'S' then
       RDprintNotaFiscal.impF(StrToInt(ArquivoIni.ReadString('MENSAGEM1','LINHA','')),StrToInt(ArquivoIni.ReadString('MENSAGEM1','COLUNA','')),TbNFiscalNF_OBS_OPER.AsString ,[]);
    {MENSAGEM2 - ainda nao uso - Provável cadastro de mensagens}
    if ArquivoIni.ReadString('MENSAGEM2','IMPRIME','') = 'S' then
       RDprintNotaFiscal.impF(StrToInt(ArquivoIni.ReadString('MENSAGEM2','LINHA','')),StrToInt(ArquivoIni.ReadString('MENSAGEM2','COLUNA','')),'',[]);
    {BASE_ICMS}
    if ArquivoIni.ReadString('BASE_ICMS','IMPRIME','') = 'S' then
       RDprintNotaFiscal.impVal(StrToInt(ArquivoIni.ReadString('BASE_ICMS','LINHA','')),StrToInt(ArquivoIni.ReadString('BASE_ICMS','COLUNA','')),'###,##0.00',TbNFiscalNF_BASEICMS.AsCurrency ,[]);
    {VALOR_ICMS}
    if ArquivoIni.ReadString('VALOR_ICMS','IMPRIME','') = 'S' then
       RDprintNotaFiscal.impVal(StrToInt(ArquivoIni.ReadString('VALOR_ICMS','LINHA','')),StrToInt(ArquivoIni.ReadString('VALOR_ICMS','COLUNA','')),'##,###,##0.00',TbNFiscalNF_VLICMS.AsCurrency ,[]);
    {falta fazer calculo da substituicao}
    {BASE_SUBST }
    if ArquivoIni.ReadString('BASE_SUBST','IMPRIME','') = 'S' then
       RDprintNotaFiscal.impVal(StrToInt(ArquivoIni.ReadString('BASE_SUBST','LINHA','')),StrToInt(ArquivoIni.ReadString('BASE_SUBST','COLUNA','')),'##,###,##0.00',0,[]);
    {BASE_SUBST}
    if ArquivoIni.ReadString('VALOR_SUBST','IMPRIME','') = 'S' then
       RDprintNotaFiscal.impVal(StrToInt(ArquivoIni.ReadString('VALOR_SUBST','LINHA','')),StrToInt(ArquivoIni.ReadString('VALOR_SUBST','COLUNA','')),'##,###,##0.00',0,[]);
    {VALOR_PRODUTOS}
    if ArquivoIni.ReadString('VALOR_PRODUTO','IMPRIME','') = 'S' then
       RDprintNotaFiscal.impVal(StrToInt(ArquivoIni.ReadString('VALOR_PRODUTO','LINHA','')),StrToInt(ArquivoIni.ReadString('VALOR_PRODUTO','COLUNA','')),'##,###,##0.00',TbNFiscalNF_TOT_PROD.AsCurrency ,[]);
    {VALOR_FRETE}
    if ArquivoIni.ReadString('VALOR_FRETE','IMPRIME','') = 'S' then
       RDprintNotaFiscal.impVal(StrToInt(ArquivoIni.ReadString('VALOR_FRETE','LINHA','')),StrToInt(ArquivoIni.ReadString('VALOR_FRETE','COLUNA','')),'##,###,##0.00',TbNFiscalNF_VLFRETE.AsCurrency ,[]);
    {Falta Fazer - VALOR_SEGURO}
    if ArquivoIni.ReadString('VALOR_SEGURO','IMPRIME','') = 'S' then
       RDprintNotaFiscal.impVal(StrToInt(ArquivoIni.ReadString('VALOR_SEGURO','LINHA','')),StrToInt(ArquivoIni.ReadString('VALOR_SEGURO','COLUNA','')),'##,###,##0.00',0,[]);
    {Falta Fazer - DESP_ACESS}
    if ArquivoIni.ReadString('DESP_ACESS','IMPRIME','') = 'S' then
       RDprintNotaFiscal.impVal(StrToInt(ArquivoIni.ReadString('DESP_ACESS','LINHA','')),StrToInt(ArquivoIni.ReadString('DESP_ACESS','COLUNA','')),'##,###,##0.00',0,[]);
    {VALOR_TOT_IPI}
    if ArquivoIni.ReadString('VALOR_TOT_IPI','IMPRIME','') = 'S' then
       RDprintNotaFiscal.impVal(StrToInt(ArquivoIni.ReadString('VALOR_TOT_IPI','LINHA','')),StrToInt(ArquivoIni.ReadString('VALOR_TOT_IPI','COLUNA','')),'##,###,##0.00',TbNFiscalNF_VLIPI.AsCurrency,[]);
    {VALOR_TOT_NOTA}
    if ArquivoIni.ReadString('VALOR_TOT_NOTA','IMPRIME','') = 'S' then
       RDprintNotaFiscal.impVal(StrToInt(ArquivoIni.ReadString('VALOR_TOT_NOTA','LINHA','')),StrToInt(ArquivoIni.ReadString('VALOR_TOT_NOTA','COLUNA','')),'##,###,##0.00',TbNFiscalNF_TOT_NOTA.AsCurrency,[]);
    {TRANSPORTADORA }
    if ArquivoIni.ReadString('TRANSPORTADORA','IMPRIME','') = 'S' then
       RDprintNotaFiscal.impF(StrToInt(ArquivoIni.ReadString('TRANSPORTADORA','LINHA','')),StrToInt(ArquivoIni.ReadString('TRANSPORTADORA','COLUNA','')),TbNFiscalNF_TRP_NOME.AsString+' '+MascaraFone(TbNFiscalNF_TRP_FONE.AsString),[]);
    {FRETE_CONTA}
    if ArquivoIni.ReadString('FRETE_CONTA','IMPRIME','') = 'S' then
       RDprintNotaFiscal.impF(StrToInt(ArquivoIni.ReadString('FRETE_CONTA','LINHA','')),StrToInt(ArquivoIni.ReadString('FRETE_CONTA','COLUNA','')),TbNFiscalNF_FRETE.AsString,[]);
    {PLACA_VEIC}
    if ArquivoIni.ReadString('PLACA_VEIC','IMPRIME','') = 'S' then
       RDprintNotaFiscal.impF(StrToInt(ArquivoIni.ReadString('PLACA_VEIC','LINHA','')),StrToInt(ArquivoIni.ReadString('PLACA_VEIC','COLUNA','')),TbNFiscalNF_PLACAVE.AsString,[]);
    {Falta Fazer - PLACA_UF}
    //if ArquivoIni.ReadString('PLACA_UF','IMPRIME','') = 'S' then
    //   RDprintNotaFiscal.impF(StrToInt(ArquivoIni.ReadString('PLACA_UF','LINHA','')),StrToInt(ArquivoIni.ReadString('PLACA_UF','COLUNA','')),' ',[]);
    {CNPJ_TRANS}
    if ArquivoIni.ReadString('CNPJ_TRANS','IMPRIME','') = 'S' then
       RDprintNotaFiscal.imp(StrToInt(ArquivoIni.ReadString('CNPJ_TRANS','LINHA','')),StrToInt(ArquivoIni.ReadString('CNPJ_TRANS','COLUNA','')), MascaraCNPJ_CPF(TbNFiscalNF_TRP_CGC.AsString));
    {END_TRANS}
    if ArquivoIni.ReadString('END_TRANS','IMPRIME','') = 'S' then
       RDprintNotaFiscal.impF(StrToInt(ArquivoIni.ReadString('END_TRANS','LINHA','')),StrToInt(ArquivoIni.ReadString('END_TRANS','COLUNA','')),TbNFiscalNF_TRP_ENDE.AsString,[]);
    {CID_TRANS}
    if ArquivoIni.ReadString('CID_TRANS','IMPRIME','') = 'S' then
       RDprintNotaFiscal.impF(StrToInt(ArquivoIni.ReadString('CID_TRANS','LINHA','')),StrToInt(ArquivoIni.ReadString('CID_TRANS','COLUNA','')),TbNFiscalNF_TRP_CIDA.AsString,[]);
    {UF_TRANS}
    if ArquivoIni.ReadString('UF_TRANS','IMPRIME','') = 'S' then
       RDprintNotaFiscal.impF(StrToInt(ArquivoIni.ReadString('UF_TRANS','LINHA','')),StrToInt(ArquivoIni.ReadString('UF_TRANS','COLUNA','')),TbNFiscalNF_TRP_UF.AsString,[]);
    {INSC_TRANS}
    if ArquivoIni.ReadString('INSC_TRANS','IMPRIME','') = 'S' then
       RDprintNotaFiscal.impF(StrToInt(ArquivoIni.ReadString('INSC_TRANS','LINHA','')),StrToInt(ArquivoIni.ReadString('INSC_TRANS','COLUNA','')),TbNFiscalNF_TRP_INSC.AsString,[]);
    {VOLUMES}
    {QTDE_TRANS}
    if ArquivoIni.ReadString('QTDE_TRANS','IMPRIME','') = 'S' then
       RDprintNotaFiscal.impF(StrToInt(ArquivoIni.ReadString('QTDE_TRANS','LINHA','')),StrToInt(ArquivoIni.ReadString('QTDE_TRANS','COLUNA','')),TbNFiscalNF_QTDE.AsString,[]);
    {ESPECIE_TRANS}
    if ArquivoIni.ReadString('ESPECIE_TRANS','IMPRIME','') = 'S' then
        RDprintNotaFiscal.impF(StrToInt(ArquivoIni.ReadString('ESPECIE_TRANS','LINHA','')),StrToInt(ArquivoIni.ReadString('ESPECIE_TRANS','COLUNA','')),TbNFiscalNF_ESPECIE.AsString,[]);
    {MARCA}
    if ArquivoIni.ReadString('MARCA','IMPRIME','') = 'S' then
        RDprintNotaFiscal.impF(StrToInt(ArquivoIni.ReadString('MARCA','LINHA','')),StrToInt(ArquivoIni.ReadString('MARCA','COLUNA','')),TbNFiscalNF_MARCA.AsString,[]);
    {NUM_TRANS}
    if ArquivoIni.ReadString('NUM_TRANS','IMPRIME','') = 'S' then
        RDprintNotaFiscal.impF(StrToInt(ArquivoIni.ReadString('NUM_TRANS','LINHA','')),StrToInt(ArquivoIni.ReadString('NUM_TRANS','COLUNA','')),'',[]);
    {PESO_BRUTO}
    if ArquivoIni.ReadString('PESO_BRUTO','IMPRIME','') = 'S' then
       RDprintNotaFiscal.impVaL(StrToInt(ArquivoIni.ReadString('PESO_BRUTO','LINHA','')),StrToInt(ArquivoIni.ReadString('PESO_BRUTO','COLUNA','')),'###,##0.000',TbNFiscalNF_PESOBRU.AsCurrency,[]);
    {PESO_LIQUIDO}
    if ArquivoIni.ReadString('PESO_LIQUIDO','IMPRIME','') = 'S' then
       RDprintNotaFiscal.impVaL(StrToInt(ArquivoIni.ReadString('PESO_LIQUIDO','LINHA','')),StrToInt(ArquivoIni.ReadString('PESO_LIQUIDO','COLUNA','')),'###,##0.000',TbNFiscalNF_PESOLIQ.AsCurrency,[]);
    //Se endereço de Entrega diferente
    if TbNFiscalNF_CIDENT.Value <> '' then
      Begin
      {ENDEREÇO DE ENTREGA - TEXTO:TITULO}
      if ArquivoIni.ReadString('ENTREGA_TIT','IMPRIME','') = 'S' then
         RDprintNotaFiscal.impF(StrToInt(ArquivoIni.ReadString('ENTREGA_TIT','LINHA','')),StrToInt(ArquivoIni.ReadString('ENTREGA_TIT','COLUNA','')),'END.ENTREGA:',[Negrito]);
      {ENDEREÇO DE ENTREGA - RUA}
      if ArquivoIni.ReadString('ENTREGA_RUA','IMPRIME','') = 'S' then
          RDprintNotaFiscal.impF(StrToInt(ArquivoIni.ReadString('ENTREGA_RUA','LINHA','')),StrToInt(ArquivoIni.ReadString('ENTREGA_RUA','COLUNA','')),TbNFiscalNF_ENDENT.AsString,[]);
      {ENDEREÇO DE ENTREGA - CIDADE/UF/CEP}
      wCampoAux:=Trim(TbNFiscalNF_CIDENT.AsString)+'/'+TbNFiscalNF_ESTENT.AsString+' CEP '+MascaraCep(TbNFiscalNF_CEPENT.AsString);
      if ArquivoIni.ReadString('ENTREGA_CIDA','IMPRIME','') = 'S' then
          RDprintNotaFiscal.impF(StrToInt(ArquivoIni.ReadString('ENTREGA_CIDA','LINHA','')),StrToInt(ArquivoIni.ReadString('ENTREGA_CIDA','COLUNA','')),wCampoAux,[]);
      End;
    //Se endereço de Cobranca diferente
    if TbNFiscalNF_CIDCOB.Value <> '' then
      Begin
      {ENDEREÇO DE COBRANCA - TEXTO:TITULO }
      if ArquivoIni.ReadString('COBRANCA_TIT','IMPRIME','') = 'S' then
          RDprintNotaFiscal.impF(StrToInt(ArquivoIni.ReadString('COBRANCA_TIT','LINHA','')),StrToInt(ArquivoIni.ReadString('COBRANCA_TIT','COLUNA','')),'END.COBRANÇA:',[Negrito]);
      {ENDEREÇO DE COBRANCA - RUA}
      if ArquivoIni.ReadString('COBRANCA_RUA','IMPRIME','') = 'S' then
         RDprintNotaFiscal.impF(StrToInt(ArquivoIni.ReadString('COBRANCA_RUA','LINHA','')),StrToInt(ArquivoIni.ReadString('COBRANCA_RUA','COLUNA','')),TbNFiscalNF_ENDCOB.AsString,[]);
      {ENDEREÇO DE COBRANCA - CIDADE/UF/CEP}
      wCampoAux:=Trim(TbNFiscalNF_CIDCOB.AsString)+'/'+TbNFiscalNF_ESTCOB.AsString+' CEP '+MascaraCep(TbNFiscalNF_CEPCOB.AsString);
      if ArquivoIni.ReadString('COBRANCA_CIDA','IMPRIME','') = 'S' then
         RDprintNotaFiscal.impF(StrToInt(ArquivoIni.ReadString('COBRANCA_CIDA','LINHA','')),StrToInt(ArquivoIni.ReadString('COBRANCA_CIDA','COLUNA','')),wCampoAux,[]);
      End;
    {DADOS ADICIONAIS}
    {verificar se tem redespacho}
    if not TbNFiscalNF_TRP_RNOME.IsNull = True then
       begin
      {TRANSP.REDESPACHO - TEXTO:TITULO}
       if ArquivoIni.ReadString('REDESP_TITU','IMPRIME','') = 'S' then
          RDprintNotaFiscal.impF(StrToInt(ArquivoIni.ReadString('REDESP_TITU','LINHA','')),StrToInt(ArquivoIni.ReadString('REDESP_TITU','COLUNA','')),'REDESPACHO:',[Negrito]);
      {TRANSP.REDESPACHO - NOME+fone}
       wCampoAux:=Trim(TbNFiscalNF_TRP_RNOME.AsString)+' F.'+MascaraFone(TbNFiscalNF_TRP_RFONE.AsString);
       if ArquivoIni.ReadString('TRANS_REDESP','IMPRIME','') = 'S' then
          RDprintNotaFiscal.impF(StrToInt(ArquivoIni.ReadString('TRANS_REDESP','LINHA','')),StrToInt(ArquivoIni.ReadString('TRANS_REDESP','COLUNA','')),wCampoAux,[]);
      {TRANSP.REDESPACHO - RUA}
       if ArquivoIni.ReadString('REDESP_RUA','IMPRIME','') = 'S' then
          RDprintNotaFiscal.impF(StrToInt(ArquivoIni.ReadString('REDESP_RUA','LINHA','')),StrToInt(ArquivoIni.ReadString('REDESP_RUA','COLUNA','')),TbNFiscalNF_TRP_RENDE.AsString,[]);
      {TRANSP.REDESPACHO - CIDADE/UF/CEP+(cif ou fob)}
       // Dados do cif e fob
       if TbNFiscalNF_FRETE2.Value = 'C' then
          wCampoAux:=Trim(TbNFiscalNF_TRP_RCIDA.AsString)+'/'+TbNFiscalNF_TRP_RUF.AsString+' CEP '+TbNFiscalNF_TRP_RCEP.AsString+' (CIF)'
       else
          wCampoAux:=Trim(TbNFiscalNF_TRP_RCIDA.AsString)+'/'+TbNFiscalNF_TRP_RUF.AsString+' CEP '+TbNFiscalNF_TRP_RCEP.AsString+' (FOB)';
       if ArquivoIni.ReadString('REDESP_CID','IMPRIME','') = 'S' then
          RDprintNotaFiscal.imp(StrToInt(ArquivoIni.ReadString('REDESP_CID','LINHA','')),StrToInt(ArquivoIni.ReadString('REDESP_CID','COLUNA','')),wCampoAux);
       end;
     {DADOS1- OBSERVACAO PEDIDO}
     if ArquivoIni.ReadString('DADOS1','IMPRIME','') = 'S' then
        RDprintNotaFiscal.impF(StrToInt(ArquivoIni.ReadString('DADOS1','LINHA','')),StrToInt(ArquivoIni.ReadString('DADOS1','COLUNA','')),TbNFiscalNF_OBS_PEDI.AsString,[]);
    {DADOS2 - OBSERVACAO FATURAMENTO}
     if ArquivoIni.ReadString('DADOS2','IMPRIME','') = 'S' then
        RDprintNotaFiscal.impF(StrToInt(ArquivoIni.ReadString('DADOS2','LINHA','')),StrToInt(ArquivoIni.ReadString('DADOS2','COLUNA','')),TbNFiscalNF_OBS_NOTA.AsString,[]);
    {DADOS3 - NUMERO DO PEDIDO}
     if ArquivoIni.ReadString('DADOS3','IMPRIME','') = 'S' then
        RDprintNotaFiscal.impF(StrToInt(ArquivoIni.ReadString('DADOS3','LINHA','')),StrToInt(ArquivoIni.ReadString('DADOS3','COLUNA','')),'P.'+TbNFiscalNF_PEDIDO.AsString,[]);
    {DADOS4 - CODIGO DO REPRESENTANTE}
     if ArquivoIni.ReadString('DADOS4','IMPRIME','') = 'S' then
        RDprintNotaFiscal.impF(StrToInt(ArquivoIni.ReadString('DADOS4','LINHA','')),StrToInt(ArquivoIni.ReadString('DADOS4','COLUNA','')),'R.'+TbNFiscalNF_REPRES.AsString,[]);
    {DADOS5 - NOME DO REPRESENTANTE}
     if ArquivoIni.ReadString('DADOS5','IMPRIME','') = 'S' then
        RDprintNotaFiscal.impF(StrToInt(ArquivoIni.ReadString('DADOS5','LINHA','')),StrToInt(ArquivoIni.ReadString('DADOS5','COLUNA','')),TbNFiscalNF_REPNOME.AsString,[]);
    {DADOS6}
     if ArquivoIni.ReadString('DADOS6','IMPRIME','') = 'S' then
        RDprintNotaFiscal.impF(StrToInt(ArquivoIni.ReadString('DADOS6','LINHA','')),StrToInt(ArquivoIni.ReadString('DADOS6','COLUNA','')),'',[]);
    { CLASS.FISCAL DO IPI QUANDO NAO FOI IMPRESSA NO CORPO DA NOTA}
    {DADOS7 CF 1}
     if ArquivoIni.ReadString('DADOS7','IMPRIME','') = 'S' then
        RDprintNotaFiscal.impF(StrToInt(ArquivoIni.ReadString('DADOS7','LINHA','')),StrToInt(ArquivoIni.ReadString('DADOS7','COLUNA','')),wClasseIpi[1,1]+' '+wClasseIpi[2,1],[]);
    {DADOS8 - CF 2}
     if ArquivoIni.ReadString('DADOS8','IMPRIME','') = 'S' then
        RDprintNotaFiscal.impF(StrToInt(ArquivoIni.ReadString('DADOS8','LINHA','')),StrToInt(ArquivoIni.ReadString('DADOS8','COLUNA','')),wClasseIpi[1,2]+' '+wClasseIpi[2,2],[]);
    {DADOS9 - CF 3}
     if ArquivoIni.ReadString('DADOS9','IMPRIME','') = 'S' then
        RDprintNotaFiscal.impF(StrToInt(ArquivoIni.ReadString('DADOS9','LINHA','')),StrToInt(ArquivoIni.ReadString('DADOS9','COLUNA','')),wClasseIpi[1,3]+' '+wClasseIpi[2,3],[]);
    {DADOS10 - CF 4}
     if ArquivoIni.ReadString('DADOS10','IMPRIME','') = 'S' then
        RDprintNotaFiscal.impF(StrToInt(ArquivoIni.ReadString('DADOS10','LINHA','')),StrToInt(ArquivoIni.ReadString('DADOS10','COLUNA','')),wClasseIpi[1,4]+' '+wClasseIpi[2,4],[]);
    {DADOS11 - CF 5}
     if ArquivoIni.ReadString('DADOS11','IMPRIME','') = 'S' then
        RDprintNotaFiscal.impF(StrToInt(ArquivoIni.ReadString('DADOS11','LINHA','')),StrToInt(ArquivoIni.ReadString('DADOS11','COLUNA','')),wClasseIpi[1,5]+' '+wClasseIpi[2,5],[]);
    {DADOS12 - CF 6}
     if ArquivoIni.ReadString('DADOS12','IMPRIME','') = 'S' then
        RDprintNotaFiscal.impF(StrToInt(ArquivoIni.ReadString('DADOS12','LINHA','')),StrToInt(ArquivoIni.ReadString('DADOS12','COLUNA','')),wClasseIpi[1,6]+' '+wClasseIpi[2,6],[]);
    {FATURA_NOTA - NUMERO NF}
     if ArquivoIni.ReadString('FATURA_NOTA','IMPRIME','') = 'S' then
        RDprintNotaFiscal.impF(StrToInt(ArquivoIni.ReadString('FATURA_NOTA','LINHA','')),StrToInt(ArquivoIni.ReadString('FATURA_NOTA','COLUNA','')),TbNFiscalNF_NU_NOTA.AsString,[negrito]);

     {limpa}
     for i:=1 to 6 do
       begin
       wDUPLICATA[i]           := '';
       wVENCIMENTO[i]          := '';
       wVALOR_DUPLICATA[i]     := 0;
       end;
     // *** GRAVAR flag como Nota Já Impressa (S)
     TbNFiscal.Edit;
     TbNFiscalNF_IMPRESS.Value := 'I';
     TbNFiscal.Post;
     TbNFiscal.FlushBuffers;

     RDprintNotaFiscal.Novapagina;

    end;// end do NF_IMPRESS.Text <> 'I'

    TbNFiscal.Next;
    if wImprime <> 'T' Then
      // nota individual - sai do while
      Break;

  end;// end While

  RDprintNotaFiscal.Fechar;
  ArquivoIni.Free;

  //Restabelecer Link entre tabelas: Itens de Nota
  TbNFiscalIten.MasterSource := FormNFImprime.DsNFiscal;
  TbNFiscalIten.MasterFields := 'NF_NU_NOTA';
  //
  //volta posição atual na tela e destroe marcador
  TbNFiscal.GotoBookmark(wBookmark);
  TbNFiscal.FreeBookmark(wBookmark);

end;


procedure TFormNFImprime.SBit_NotasClick(Sender: tObject);
begin
 if TbNFiscalNF_IMPRESS.Value = '' then
    begin
    // nota nunca foi impressa
    if uteis.confirmacao ( ('Confirma Impressão da Nota Fiscal "'+TbNFiscalNF_NU_NOTA.Value+'" ?')) = idyes then
       begin
       if TbNFiscal.Eof Then
         begin
         TbNFiscal.FindKey([TbNFiscalNF_NU_NOTA.Value])
         end;
       ImprimeNotaFiscal('A');
       end;
   end
  else
    // nota já foi impressa
   if uteis.confirmacao ( ('A Nota "'+TbNFiscalNF_NU_NOTA.Value+'" já foi impressa. Deseja reimprimir ?')) = idyes then
     begin
     TbNFiscal.Edit;
     TbNFiscalNF_IMPRESS.Value := '';
     TbNFiscal.Post;
     ImprimeNotaFiscal('A');
     end;
end;


procedure TFormNFImprime.PreNota;
var
WLinha, WLinhaParc, WColParc :Integer;
WVL_UNI, WVL_TOT, WBASE_ICMS, WVL_ICMS, WVL_TOT_PRD, WVL_TOT_NOTA,
WPES_BRUT, WVL_IPI, WVL_IPI_TOT, WValor_Parce,WVL_TOTPROD,WVL_DESCTO,WBASE_SUBS,
WVL_SUBS,WVL_FRETE,wOperacao,wFone:String;
begin
{***********************************************************************
* Objetivo: Imprime Pre-Nota para conferencia
************************************************************************}
while (not TbNFiscal.EOF) do
  begin
    RPrintNFiscal.BeginDoc;
    wlinha:=1;
    RPrintNFiscal.Font.Size := 9;
    // Cliente
    RPrintNFiscal.NewPos(wlinha, 1);
    RPrintNFiscal.Out(TbNFiscalNF_NOMECLI.AsString, 45, [pcBold]);
    RPrintNFiscal.NewPos(wlinha, 77);
    RPrintNFiscal.Out('NOTA FISCAL   :', 16, []);
    RPrintNFiscal.NewPos(wlinha, 93);
    RPrintNFiscal.Out(TbNFiscalNF_NU_NOTA.AsString, 6, [pcBold]);
    //
    RPrintNFiscal.NewPos(wlinha+1, 1);
    RPrintNFiscal.Out(TbNFiscalNF_ENDCLI.AsString, 40, []);
    //
    RPrintNFiscal.NewPos(wlinha+1, 77);
    RPrintNFiscal.Out('COD.OPERAÇÃO  :', 16, []);
    if TbNFiscalOPE_AGRUPADO.Value<> '' then
      // tem dois tipos de operacao junto
      begin
      woperacao:=TbNFiscalOPE_CODIGO.Value+'/'+TbNFiscalOPE_AGRUPADO.Value;
      RPrintNFiscal.NewPos(wlinha+1, 93);
      RPrintNFiscal.Out(woperacao, 9, []);
      end
    else
      begin
      RPrintNFiscal.NewPos(wlinha+1, 93);
      RPrintNFiscal.Out(TbNFiscalOPE_CODIGO.AsString, 3, []);
      end;
    //
    RPrintNFiscal.NewPos(wlinha+2, 1);
    RPrintNFiscal.Out(TbNFiscalNF_BAICLI.AsString, 25, []);
    RPrintNFiscal.NewPos(wlinha+2, 1);
    RPrintNFiscal.Out(TbNFiscalNF_CIDCLI.AsString, 30, []);
    RPrintNFiscal.NewPos(wlinha+2, 61);
    RPrintNFiscal.Out(TbNFiscalNF_ESTCLI.AsString, 2, []);
    RPrintNFiscal.NewPos(wlinha+2, 65);
    RPrintNFiscal.Out(TbNFiscalNF_CEPCLI.AsString, 15, []);
    //
    RPrintNFiscal.NewPos(wlinha+2, 77);
    RPrintNFiscal.Out('EMISSÃO       :', 16, []);
    RPrintNFiscal.NewPos(wlinha+2,93);
    RPrintNFiscal.Out(TbNFiscalNF_EMISSAO.AsString, 8, []);
    //
    RPrintNFiscal.NewPos(wlinha+3, 1);
    RPrintNFiscal.Out('FONE: ', 6, []);
    RPrintNFiscal.NewPos(wlinha+3, 8);
    RPrintNFiscal.Out(TbNFiscalNF_FONCLI.AsString, 11, []);
    RPrintNFiscal.NewPos(wlinha+3, 77);
    RPrintNFiscal.Out('SAÍDA         :', 16, []);
    RPrintNFiscal.NewPos(wlinha+3, 93);
    RPrintNFiscal.Out(TbNFiscalNF_SAIDA.AsString, 8, []);
    //
    RPrintNFiscal.NewPos(wlinha+4, 1);
    RPrintNFiscal.Out('CNPJ: ', 6, []);
    RPrintNFiscal.NewPos(wlinha+4, 8);
    RPrintNFiscal.Out(TbNFiscalNF_CGC.AsString, 14, []);
    RPrintNFiscal.NewPos(wlinha+4, 30);
    RPrintNFiscal.Out('INSC.EST.: ', 11, []);
    RPrintNFiscal.NewPos(wlinha+4, 42);
    RPrintNFiscal.Out(TbNFiscalNF_INSCRI.AsString, 18, []);
    //
    RPrintNFiscal.NewPos(wlinha+5, 1);
    RPrintNFiscal.Out('--------------------------------------------------------------------------------------------------------------------------------------',110, [pcLineFeed]);
    RPrintNFiscal.NewPos(wlinha+6, 30);
    RPrintNFiscal.Out('*** CONDIÇÕES DE PAGAMENTO ***', 30, []);
    // Fatura
    // busca parcela
    FormNFImprime.TbReceParcela.FindKey([TbNFiscalNF_NU_NOTA.Value]);
    //
    WLinhaParc := 8;
    WColParc := 8;
    while (FormNFImprime.TbREceParcelaFAT_CODIGO.Value = TbNFiscalNF_NU_NOTA.value) and not (FormNFImprime.TbReceParcela.Eof) do
      begin
      RPrintNFiscal.NewPos(WLinhaParc, WColParc);
      RPrintNFiscal.Out(TbNFiscalNF_NU_NOTA.AsString, 6, []);
      //Imprime Vencimento e Valor do parcelamento da Fatura
      RPrintNFiscal.NewPos(WLinhaParc, WcolParc+15);
      RPrintNFiscal.Out(FormNFImprime.TbReceParcelaFPC_Vencto.AsString, 8, []);
      //
      RPrintNFiscal.NewPos(WLinhaParc,WcolParc+39);
      WValor_Parce := FloatToStrF(FormNFImprime.TbReceParcelaFPC_VLPARC.Value, ffNumber, 12, 2);
      RPrintNFiscal.Out(WValor_Parce, 8, [pcRight, pcLineFeed]);
      //analisar qual coluna iniciar impressao da proxima parcela
      if WColParc = 8 Then
         begin
         WColParc := 58;    // imprimir na mesma linha
         end
      else
        //  volta coluna p/ 6 e imprimi na prox. linha
        begin
        WColParc := 8;
        WLinhaParc := WLinhaParc + 1;
        end;
      //
      FormNFImprime.TbReceParcela.Next;
      end;  // end while das parcelas
    WLinha:= 10;
    RPrintNFiscal.NewPos(wlinha, 1);
    RPrintNFiscal.Out('--------------------------------------------------------------------------------------------------------------------------------------',110, [pcLineFeed]);
    // Dados do produto.
    TbNFiscalIten.FindKey([TbNFiscalNF_NU_NOTA.Value]);
   // diminuir o tamanho da letra
    RPrintNFiscal.Font.Size := 8;
    while (TbNFiscalNF_NU_NOTA.Value = TbNFiscalItenNF_NUMERO.value) and not(TbNFiscalIten.Eof) do
      begin
       // procurar descricao do produto pelo ídice
        Datamodulo.TbProduto.IndexName := 'XPRD_REFE';
        Datamodulo.TbProduto.FindKey([TbNFiscalItenPrd_Refer.Text]);
        //
        // verificar se o item tem subs.Tributaria
        IF Datamodulo.TbProdutoPRD_TEMSUB.Value='S' then  // tem subs.
          begin
          RPrintNFiscal.NewPos(WLinha+1, 0);
          RPrintNFiscal.Out('*', 1, [pcRight]);
          end;
        RPrintNFiscal.NewPos(WLinha+1, 3);
        RPrintNFiscal.Out(TbNFiscalItenPRD_REFER.AsString, 5, [pcRight]);
        RPrintNFiscal.NewPos(WLinha+1, 8);
        RPrintNFiscal.Out(TbNFiscalItenPRD_DESCRI.AsString, 40, []);
        RPrintNFiscal.NewPos(WLinha+1, 50);
        RPrintNFiscal.Out(TbNFiscalItenIPI_APELIDO.AsString, 2, []);
        RPrintNFiscal.NewPos(WLinha+1, 53);
        RPrintNFiscal.Out(TbNFiscalItenPRD_SITRIBUT.AsString, 2, []);
        RPrintNFiscal.NewPos(WLinha+1, 56);
        RPrintNFiscal.Out(TbNFiscalItenPRD_UNIDADE.AsString, 3, []);
        RPrintNFiscal.NewPos(WLinha+1, 59);
        RPrintNFiscal.Out(TbNFiscalItenPRD_QTDE.AsString, 8, [pcRight]);
        RPrintNFiscal.NewPos(WLinha+1, 71);
        //Converção de String p/ Float para criar máscara.
        //Exeplo do objeto para converçao SPop := FloatToStrF(PopTotal, ffNumber, 12, 0);
        WVL_UNI := FloatToStrF(TbNFiscalItenPRD_PRECO.Value, ffNumber, 9, 2);
        RPrintNFiscal.Out(WVL_UNI, 8, [pcRight]);
        WVL_TOT := FloatToStrF(TbNFiscalItenPRD_PRECO.Value * TbNFiscalItenPRD_QTDE.VAlue, ffNumber, 12, 2);
        RPrintNFiscal.NewPos(WLinha+1, 81);
        RPrintNFiscal.Out(WVL_TOT, 13, [pcRight]);
        RPrintNFiscal.NewPos(WLinha+1, 95);
        RPrintNFiscal.Out(TbNFiscalItenPRD_ICMS.AsString, 3, [pcRight]);
        RPrintNFiscal.NewPos(WLinha+1, 99);
        RPrintNFiscal.Out(TbNFiscalItenIPI_ALIQ.AsString, 2, [pcRight]);//pcLiFeed Temporario por falta do campo valor do IPI.
        //Faz o calculo do valor do IPI
        RPrintNFiscal.NewPos(WLinha+1,102);
        WVL_IPI := FloatToStrF(TbNFiscalItenPRD_QTDE.Value * TbNFiscalItenPRD_PRECO.Value * TbNFiscalItenIPI_ALIQ.Value / 100, ffNumber, 8, 2);
        RPrintNFiscal.Out(WVL_IPI, 9, [pcRight]);
        //
        TbNFiscalIten.Next;
        WLinha := WLinha + 1;
      end;
      if TbNFiscalNF_DESCTO.Value > 0 then
        begin
        WLinha := WLinha + 2;
        RPrintNFiscal.NewPos(wLinha, 70);
        RPrintNFiscal.Out('Sub-Total' , 9, []);
        RPrintNFiscal.NewPos(wLinha, 85);
        //obter total dos produtos sem o descto(o valor gravado já é c/ desconto)
        WVL_TOTPROD:=FloatToStrF(TbNFiscalNF_TOT_PROD.Value+TbNFiscalNF_DESCTO.Value,ffNumber,12,2);
        RPrintNFiscal.Out(WVL_TOTPROD,13, [pcRight]);
        WLinha := WLinha + 1;
        RPrintNFiscal.NewPos(wLinha, 70);
        RPrintNFiscal.Out('Descto',6,[]);
       // percentual 1
        WVL_DESCTO    := FloatToStrF(TbNFiscalNF_DESCTO_PC1.Value,ffNumber,3,1);
        RPrintNFiscal.NewPos(wLinha, 77);
        RPrintNFiscal.Out(WVL_DESCTO,4, [pcRight]);
        // se tem mais o segundo descto
        if TbNFiscalNF_DESCTO_PC2.Value > 0 then
          begin
          RPrintNFiscal.NewPos(wLinha, 81);
          RPrintNFiscal.Out('+',1,[]);
          // percetual 2
          WVL_DESCTO    :=FloatToStrF(TbNFiscalNF_DESCTO_PC2.Value,ffNumber,3,1);
          RPrintNFiscal.NewPos(wLinha, 82);
          RPrintNFiscal.Out(WVL_DESCTO,4, [pcRight]);
          end;
        // valor do descto
        WVL_DESCTO:=FloatToStrF(TbNFiscalNF_DESCTO.Value,ffNumber,10,2);
        RPrintNFiscal.NewPos(wLinha, 87);
        RPrintNFiscal.Out(WVL_DESCTO,11, [pcRight]);
        WLinha := WLinha + 1;
        RPrintNFiscal.NewPos(wLinha, 70);
        RPrintNFiscal.Out('Sub-Total' , 9, []);
        RPrintNFiscal.NewPos(wLinha, 85);
        // somente total já c/ desconto
        WVL_TOTPROD:=FloatToStrF(TbNFiscalNF_TOT_PROD.Value,ffNumber,12,2);
        RPrintNFiscal.Out(WVL_TOTPROD,13, [pcRight]);
        end;
      //
      wlinha:=40;
      RPrintNFiscal.NewPos(wlinha, 1);
      RPrintNFiscal.Out('--------------------------------------------------------------------------------------------------------------------------------------',110, [pcLineFeed]);
      wlinha:=wlinha+1;
      //valores dos impostos
      RPrintNFiscal.NewPos(wLinha, 1);
      RPrintNFiscal.Out('Base Calculo ICMS',17,[]);
      RPrintNFiscal.NewPos(wLinha, 24);
      RPrintNFiscal.Out('Valor do ICMS',13,[]);
      RPrintNFiscal.NewPos(wLinha, 42);
      RPrintNFiscal.Out('Base Calc.ICMS Subs.',20,[]);
      RPrintNFiscal.NewPos(wLinha, 66);
      RPrintNFiscal.Out('Valor ICMS Subs.',16,[]);
      RPrintNFiscal.NewPos(wLinha, 87);
      RPrintNFiscal.Out('Vl.Total Produtos',16,[]);
      //
      RPrintNFiscal.NewPos(wlinha+1, 4);
      WBASE_ICMS := FloatToStrF(TbNFiscalNF_BASEICMS.Value, ffNumber,12 ,2);
      RPrintNFiscal.Out(WBASE_ICMS, 13, [pcRight]);
      //
      RPrintNFiscal.NewPos(wlinha+1, 26);
      WVL_ICMS := FloatToStrF(TbNFiscalNF_VLICMS.Value, ffNumber,10 ,2);
      RPrintNFiscal.Out(WVL_ICMS, 11, [pcRight]);
      //
      RPrintNFiscal.NewPos(wlinha+1, 48);
      WBASE_SUBS := FloatToStrF(TbNFiscalNF_BASESUBTRIB.Value, ffNumber,12 ,2);
      RPrintNFiscal.Out(WBASE_SUBS, 13, [pcRight]);
      //
      RPrintNFiscal.NewPos(wlinha+1, 70);
      WVL_SUBS := FloatToStrF(TbNFiscalNF_VLSUBTRIB.Value, ffNumber,10 ,2);
      RPrintNFiscal.Out(WVL_SUBS, 11, [pcRight]);
      //
      RPrintNFiscal.NewPos(wlinha+1, 90);
      WVL_TOT_PRD := FloatToStrF(TbNFiscalNF_TOT_PROD.Value, ffNumber, 12, 2);
      RPrintNFiscal.Out(WVL_TOT_PRD, 13, [pcRight]);
      //
      RPrintNFiscal.NewPos(wLinha+3, 1);
      RPrintNFiscal.Out('Frete',5,[]);
      RPrintNFiscal.NewPos(wLinha+3, 66);
      RPrintNFiscal.Out('Valor Total IPI',15,[]);
      RPrintNFiscal.NewPos(wLinha+3, 87);
      RPrintNFiscal.Out('Vl.Total da Nota',16,[]);
      //
      RPrintNFiscal.NewPos(wlinha+4, 4);
      WVL_FRETE := FloatToStrF(TbNFiscalNF_VLFRETE.Value, ffNumber, 12, 2);
      RPrintNFiscal.Out(WVL_FRETE, 13, [pcRight]);
      //
      RPrintNFiscal.NewPos(wlinha+4, 68);
      WVL_IPI_TOT := FloatToStrF(TbNFiscalNF_VLIPI.Value, ffNumber, 12, 2);
      RPrintNFiscal.Out(WVL_IPI_TOT, 13, [pcRight]);
      //
      RPrintNFiscal.NewPos(wlinha+4, 90);
      WVL_TOT_NOTA := FloatToStrF(TbNFiscalNF_TOT_NOTA.Value, ffNumber, 12, 2);
      RPrintNFiscal.Out(WVL_TOT_NOTA, 13,[pcRight]);
      //
      RPrintNFiscal.NewPos(wlinha+5, 1);
      RPrintNFiscal.Out('--------------------------------------------------------------------------------------------------------------------------------------',110, [pcLineFeed]);
      // Transportadora / volume
      RPrintNFiscal.NewPos(wlinha+6, 1);
      RPrintNFiscal.Out(TbNFiscalNF_TRP_NOME.AsString, 40, []);
      wFone := MascaraFone(TbNFiscalNF_TRP_FONE.AsString);
      RPrintNFiscal.NewPos(wlinha+6, 43);
      RPrintNFiscal.Out(wFone, 14, []);
      RPrintNFiscal.NewPos(wlinha+6, 58);
      RPrintNFiscal.Out('QTDE VOLUMES:', 13, []);
      RPrintNFiscal.NewPos(wlinha+6,72);
      RPrintNFiscal.Out(TbNFiscalNF_QTDE.AsString, 7, [pcRight]);
      RPrintNFiscal.NewPos(wlinha+6, 82);
      RPrintNFiscal.Out('PESO :', 6, []);
      RPrintNFiscal.NewPos(wlinha+6, 90);
      WPES_BRUT := FloatToStrF(TbNFiscalNF_PESOBRU.Value, ffNumber, 7, 3);
      RPrintNFiscal.Out(WPES_BRUT, 9, [pcRight]);
      //
      RPrintNFiscal.EndDoc;
    Break; // abandona while
  end;// end do primeiro while
end;


procedure TFormNFImprime.SBit_PrenotaClick(Sender: tObject);
begin
  TbNFiscal.FindKey([TbNFiscalNF_NU_NOTA.Value]);
  PreNota();      //imprimir
end;

procedure TFormNFImprime.SBit_FichasClick(Sender: tObject);
begin
     Try
       Try
       FormGImpCaract := TFormGImpCaract.Create (Application);
       FormGImpCaract.ShowModal;
       finally
         FormGImpCaract.Destroy;
         FormGImpCaract:= nil;
       end;
     except
       //beep;
       uteis.erro  ('Ocorreu um erro na criação do formulário!');
     end;
end;


procedure TFormNFImprime.Recibo;
var
wLinha :Integer;
WVL_UNI, WVL_TOT,
WValor_Parce,WVL_TOTPROD,WVL_DESCTO,
wSeqItens:String;
begin
{*********************************************************************
* Objetivo : Imprime Recibo da Nota Fiscal
**********************************************************************}
while (not TbNFiscal.EOF) do
  begin
    RPrintNFiscal.BeginDoc;
    wlinha:=1;
    RPrintNFiscal.Font.Size := 8;
    //
    RPrintNFiscal.NewPos(wlinha, 1);
    RPrintNFiscal.Out('--------------------------------------------------------------------------------------------------------------------------------------',110, [pcLineFeed]);
    wlinha:=wlinha+2;
    RPrintNFiscal.NewPos(wlinha,1);
    RPrintNFiscal.Out('Nº:' ,3,[]);
    RPrintNFiscal.NewPos(wlinha,5);
    RPrintNFiscal.Out(TbNFiscalNF_PEDIDO.AsString ,6,[]);
    RPrintNFiscal.NewPos(wlinha,71);
    RPrintNFiscal.Out(FormAdjutor.wEmp_Cidade+',', 30, []);
    RPrintNFiscal.NewPos(wlinha,88);
    RPrintNFiscal.Out(TbNFiscalNF_EMISSAO.AsString, 8, []);
    RPrintNFiscal.NewPos(wlinha+2, 1);
    RPrintNFiscal.Out(TbNFiscalNF_CODCLI.AsString,5, []);
    RPrintNFiscal.NewPos(wlinha+2, 7);
    RPrintNFiscal.Out(TbNFiscalNF_NOMECLI.AsString, 45, [pcBold]);
    RPrintNFiscal.NewPos(wlinha+3, 7);
    RPrintNFiscal.Out(TbNFiscalNF_ENDCLI.AsString, 45, []);
    RPrintNFiscal.NewPos(wlinha+3, 53);
    RPrintNFiscal.Out('Bairro :', 8, []);
    RPrintNFiscal.NewPos(wlinha+3, 62);
    RPrintNFiscal.Out(TbNFiscalNF_BAICLI.AsString, 25, []);
    RPrintNFiscal.NewPos(wlinha+4, 7);
    RPrintNFiscal.Out(TbNFiscalNF_CIDCLI.AsString, 30, []);
    RPrintNFiscal.NewPos(wlinha+4, 39);
    RPrintNFiscal.Out(TbNFiscalNF_ESTCLI.AsString, 2, []);
    RPrintNFiscal.NewPos(wlinha+5, 7);
    RPrintNFiscal.Out('CEP :', 5, []);
    RPrintNFiscal.NewPos(wlinha+5, 13);
    RPrintNFiscal.Out(TbNFiscalNF_CEPCLI.AsString, 25, []);
    RPrintNFiscal.NewPos(wlinha+5, 22);
    RPrintNFiscal.Out('Fone :', 6, []);
    RPrintNFiscal.NewPos(wlinha+5, 30);
    RPrintNFiscal.Out(TbNFiscalNF_FONCLI.AsString, 25, []);
    // CNPJ
    RPrintNFiscal.NewPos(wlinha+5, 53);
    RPrintNFiscal.Out(TbNFiscalNF_CGC.AsString, 14, []);
    //
    RPrintNFiscal.NewPos(wlinha+6, 1);
    RPrintNFiscal.Out('--------------------------------------------------------------------------------------------------------------------------------------',110, [pcLineFeed]);
    RPrintNFiscal.NewPos(wlinha+7, 7);
    RPrintNFiscal.Out('*** CONDIÇÕES DE PAGAMENTO :', 28, []);
    RPrintNFiscal.NewPos(wlinha+7,37);
    RPrintNFiscal.Out(TbNFiscalNF_CONDPAGTO.AsString, 35, []);
    // Fatura
    // busca parcela
    FormNFImprime.TbReceParcela.FindKey([TbNFiscalNF_NU_NOTA.Value]);
    //
    wLinha :=wLinha+9;
    while (FormNFImprime.TbReceParcelaFAT_CODIGO.Value = TbNFiscalNF_NU_NOTA.value) and not (FormNFImprime.TbReceParcela.Eof) do
      begin
      RPrintNFiscal.NewPos(wLinha, 3);
      RPrintNFiscal.Out(FormNFImprime.TbReceParcelaFPC_Vencto.AsString, 8, []);
      RPrintNFiscal.NewPos(wLinha,18);
      WValor_Parce := FloatToStrF(FormNFImprime.TbReceParcelaFPC_VLPARC.Value, ffNumber, 12, 2);
      RPrintNFiscal.Out(WValor_Parce, 8, [pcRight]);
      RPrintNFiscal.NewPos(wLinha,48);
      RPrintNFiscal.Out('Visto : _________________________', 33, []);
      //
      wLinha := wLinha + 1;
      FormNFImprime.TbReceParcela.Next;
      end;
    RPrintNFiscal.NewPos(wlinha, 1);
    RPrintNFiscal.Out('--------------------------------------------------------------------------------------------------------------------------------------',110, [pcLineFeed]);
    // Titulos das colunas
    RPrintNFiscal.NewPos(WLinha+1, 6);
    RPrintNFiscal.Out('Qtde', 4, []);
    RPrintNFiscal.NewPos(WLinha+1, 11);
    RPrintNFiscal.Out('Un', 2, []);
    RPrintNFiscal.NewPos(WLinha+1, 15);
    RPrintNFiscal.Out('Produto', 7, []);
    RPrintNFiscal.NewPos(WLinha+1, 66);
    RPrintNFiscal.Out('Unit.', 8, []);
    RPrintNFiscal.NewPos(WLinha+1, 74);
    RPrintNFiscal.Out('Total' ,8, [pcRight]);
    //
    //Falta ainda colocar descto individual p/ Item
    //
    RPrintNFiscal.NewPos(WLinha+1, 94);
    RPrintNFiscal.Out('Vlr.Liq.', 11, [pcRight]);
    wLinha := wLinha + 2;
    RPrintNFiscal.NewPos(wlinha, 1);
    RPrintNFiscal.Out('--------------------------------------------------------------------------------------------------------------------------------------',110, [pcLineFeed]);
    // Dados do produto.
    TbNFiscalIten.FindKey([TbNFiscalNF_NU_NOTA.Value]);
    wSeqItens := 'I';  // impar
    while (TbNFiscalNF_NU_NOTA.Value = TbNFiscalItenNF_NUMERO.value) and not(TbNFiscalIten.Eof) do
      begin
      // procurar descricao do produto pelo ídice
      Datamodulo.TbProduto.IndexName := 'XPRD_REFE';
      Datamodulo.TbProduto.FindKey([TbNFiscalItenPrd_Refer.Text]);
      RPrintNFiscal.NewPos(WLinha+1, 1);
      if wSeqItens = 'I' then    // impar
        begin
        RPrintNFiscal.Out('[ ]', 3, []);
        RPrintNFiscal.NewPos(WLinha+1, 4);
        RPrintNFiscal.Out(TbNFiscalItenPRD_QTDE.AsString, 7, [pcRight,pcBold]);
        RPrintNFiscal.NewPos(WLinha+1, 11);
        RPrintNFiscal.Out(TbNFiscalItenPRD_UNIDADE.AsString, 3, [pcBold]);
        RPrintNFiscal.NewPos(WLinha+1, 15);
        RPrintNFiscal.Out(TbNFiscalItenPRD_REFER.AsString, 5, [pcRight,pcBold]);
        RPrintNFiscal.NewPos(WLinha+1, 23);
        RPrintNFiscal.Out(TbNFiscalItenPRD_DESCRI.AsString, 40, [pcBold]);
        RPrintNFiscal.NewPos(WLinha+1, 63);
        //Converção de String p/ Float para criar máscara.
        WVL_UNI := FloatToStrF(TbNFiscalItenPRD_PRECO.Value, ffNumber, 9, 2);
        RPrintNFiscal.Out(WVL_UNI, 8, [pcRight,pcBold]);
        WVL_TOT := FloatToStrF(TbNFiscalItenPRD_PRECO.Value * TbNFiscalItenPRD_QTDE.VAlue, ffNumber, 10, 2);
        RPrintNFiscal.NewPos(WLinha+1, 73);
        RPrintNFiscal.Out(WVL_TOT, 11, [pcRight,pcBold]);
        //
        //  Falta ainda colocar descto individual p/ Item
        //
        RPrintNFiscal.NewPos(WLinha+1, 94);
        RPrintNFiscal.Out(WVL_TOT, 11, [pcRight,pcBold]);
        wSeqItens := 'P' // prox. é par
        end
      else
        begin
        RPrintNFiscal.Out('[ ]', 3, []);
        RPrintNFiscal.NewPos(WLinha+1, 4);
        RPrintNFiscal.Out(TbNFiscalItenPRD_QTDE.AsString, 7, [pcRight]);
        RPrintNFiscal.NewPos(WLinha+1, 11);
        RPrintNFiscal.Out(TbNFiscalItenPRD_UNIDADE.AsString, 3, []);
        RPrintNFiscal.NewPos(WLinha+1, 15);
        RPrintNFiscal.Out(TbNFiscalItenPRD_REFER.AsString, 5, [pcRight]);
        RPrintNFiscal.NewPos(WLinha+1, 23);
        RPrintNFiscal.Out(TbNFiscalItenPRD_DESCRI.AsString, 40, []);
        RPrintNFiscal.NewPos(WLinha+1, 63);
        //Converção de String p/ Float para criar máscara.
        WVL_UNI := FloatToStrF(TbNFiscalItenPRD_PRECO.Value, ffNumber, 9, 2);
        RPrintNFiscal.Out(WVL_UNI, 8, [pcRight]);
        WVL_TOT := FloatToStrF(TbNFiscalItenPRD_PRECO.Value * TbNFiscalItenPRD_QTDE.VAlue, ffNumber, 10, 2);
        RPrintNFiscal.NewPos(WLinha+1, 73);
        RPrintNFiscal.Out(WVL_TOT, 11, [pcRight]);
        //
        //  Falta ainda colocar descto individual p/ Item
        //
        RPrintNFiscal.NewPos(WLinha+1, 94);
        RPrintNFiscal.Out(WVL_TOT, 11, [pcRight]);
        wSeqItens := 'I' // prox. é Impar
        end;
        //
        TbNFiscalIten.Next;
        WLinha := WLinha + 1;
      end;  // while
      // verificar se tem descto geral
      if TbNFiscalNF_DESCTO.Value > 0 then
        begin
        WLinha := WLinha + 2;
        RPrintNFiscal.NewPos(wLinha, 70);
        RPrintNFiscal.Out('Sub-Total' , 9, []);
        RPrintNFiscal.NewPos(wLinha, 94);
        //obter total dos produtos sem o descto(o valor gravado já é c/ desconto)
        WVL_TOTPROD:=FloatToStrF(TbNFiscalNF_TOT_PROD.Value+TbNFiscalNF_DESCTO.Value,ffNumber,10,2);
        RPrintNFiscal.Out(WVL_TOTPROD,11, [pcRight]);
        WLinha := WLinha + 1;
        RPrintNFiscal.NewPos(wLinha, 70);
        RPrintNFiscal.Out('Descto',6,[]);
       // percentual 1
        WVL_DESCTO    := FloatToStrF(TbNFiscalNF_DESCTO_PC1.Value,ffNumber,3,1);
        RPrintNFiscal.NewPos(wLinha, 77);
        RPrintNFiscal.Out(WVL_DESCTO,4, [pcRight]);
        // se tem mais o segundo descto
        if TbNFiscalNF_DESCTO_PC2.Value > 0 then
          begin
          RPrintNFiscal.NewPos(wLinha, 81);
          RPrintNFiscal.Out('+',1,[]);
          // percetual 2
          WVL_DESCTO    :=FloatToStrF(TbNFiscalNF_DESCTO_PC2.Value,ffNumber,3,1);
          RPrintNFiscal.NewPos(wLinha, 82);
          RPrintNFiscal.Out(WVL_DESCTO,4, [pcRight]);
          end;
        // valor do descto
        WVL_DESCTO:=FloatToStrF(TbNFiscalNF_DESCTO.Value,ffNumber,10,2);
        RPrintNFiscal.NewPos(wLinha, 94);
        RPrintNFiscal.Out(WVL_DESCTO,11, [pcRight]);
        WLinha := WLinha + 1;
        RPrintNFiscal.NewPos(wLinha, 70);
        RPrintNFiscal.Out('Total.............' , 18, []);
        // somente total já c/ desconto
        RPrintNFiscal.NewPos(wLinha, 94);
        WVL_TOTPROD:=FloatToStrF(TbNFiscalNF_TOT_PROD.Value,ffNumber,10,2);
        RPrintNFiscal.Out(WVL_TOTPROD,11, [pcRight]);
        end
      else
        // sem descto
        begin
        WLinha := WLinha + 2;
        //obter total dos produtos sem o descto(o valor gravado já é c/ desconto)
        RPrintNFiscal.NewPos(wLinha, 70);
        RPrintNFiscal.Out('Total' , 9, []);
        RPrintNFiscal.NewPos(WLinha, 94);
        WVL_TOTPROD:=FloatToStrF(TbNFiscalNF_TOT_PROD.Value+TbNFiscalNF_DESCTO.Value,ffNumber,10,2);
        RPrintNFiscal.Out(WVL_TOTPROD,11, [pcRight]);
        end;
      //
      RPrintNFiscal.NewPos(wlinha+4, 3);
      RPrintNFiscal.Out('--------------------------------------',38, []);
      RPrintNFiscal.NewPos(wlinha+5, 3);
      RPrintNFiscal.Out('      ASSINATURA DO RECEBEDOR         ',38, []);
      RPrintNFiscal.NewPos(wlinha+7, 1);
      RPrintNFiscal.Out('--------------------------------------------------------------------------------------------------------------------------------------',110, [pcLineFeed]);
      RPrintNFiscal.EndDoc;
    Break; // abandona while
  end;// end do primeiro while

end;


procedure TFormNFImprime.SBit_ReciboClick(Sender: tObject);
begin
  TbNFiscal.FindKey([TbNFiscalNF_NU_NOTA.Value]);
  Recibo();      //imprimir
end;


procedure TFormNFImprime.AbrirTabEstorno;
begin
screen.cursor:=CrHourglass;
{Abertura de Tabelas - comercial}
TRY
  if Datamodulo.TbPedidos.Active = False then
     begin
     wAbPedido := True;
     Datamodulo.TbPedidos.Filtered := False;
     Datamodulo.TbPedidos.DatabaseName := Preopen('Pedidos');
     Datamodulo.TbPedidos.IndexName := 'XPED_CODI';
     Datamodulo.TbPedidos.Open;
     end;
  if Datamodulo.TbPedItem.Active = False then
     begin
     wAbPedItem := True;
     Datamodulo.TbPedItem.Filtered := False;
     Datamodulo.TbPedItem.DatabaseName := Preopen('Pedidos');
     Datamodulo.TbPedItem.IndexName := 'XPED_CODI_PRF';
     Datamodulo.TbPedItem.Open;
     end;
  if Datamodulo.TbEmbalagem.Active = False then
     begin
     Datamodulo.TbEmbalagem.Filtered := False;
     Datamodulo.TbEmbalagem.DatabaseName := Preopen('Pedidos');
     Datamodulo.TbEmbalagem.IndexName:='PED_CODI_PEB';
     Datamodulo.TbEmbalagem.Open;
     end;
  if Datamodulo.TbPrdManut.Active = false then
     begin
     Datamodulo.TbPrdManut.Filtered := False;
     Datamodulo.TbPrdManut.DatabaseName := Preopen('Produtos');
     Datamodulo.TbPrdManut.IndexName := 'XPRD_NUMD';
     Datamodulo.TbPrdManut.Open;
     end;
  {Abertura de tabelas - Financeiro}
  if Datamodulo.TbReceber.Active = False then
     begin
     wAbReceber := True;
     Datamodulo.TbReceber.Filtered := False;
     Datamodulo.TbReceber.DatabaseName := Preopen('receber');
     Datamodulo.TbReceber.IndexName := 'XFAT_CODI';
     Datamodulo.TbReceber.Open;
     end;
  if Datamodulo.TbRecParce.Active = False then
     begin
     wAbRecParce := True;
     Datamodulo.TbRecParce.Filtered := False;
     Datamodulo.TbRecParce.DatabaseName := Preopen('Receber');
     Datamodulo.TbRecParce.IndexName := 'XFAT_CODI_FPC';
     Datamodulo.TbRecParce.open;
     end;
  if Datamodulo.TbRecItem.Active = False then
     begin
     wAbRecItem := True;
     Datamodulo.TbRecItem.Filtered := False;
     Datamodulo.TbRecItem.DatabaseName := Preopen('Receber');
     Datamodulo.TbRecItem.IndexName := 'XFAT_CODI_FIT';
     Datamodulo.TbRecItem.open;
     end;
Except
  uteis.erro  ('Ocorreu um Erro ao Abrir as Tabelas!');
End;
screen.cursor:=CrDefault;
end;

procedure TFormNFImprime.FecharTabEstorno;
begin
screen.cursor:=CrHourglass;
TRY
  Datamodulo.TbEmbalagem.Close;
  Datamodulo.TbPrdManut.Close;
  //
  if wAbPedido = True then
     Datamodulo.TbPedidos.Close;
  if wAbPedItem = True then
     Datamodulo.TbPedItem.Close;
  if  wAbReceber = True then
     Datamodulo.TbReceber.Close;
  if wAbRecParce = True then
     Datamodulo.TbRecParce.Close;
  if wAbRecItem = True then
     Datamodulo.TbRecItem.Close;
EXCEPT
  uteis.erro  ('Erro ao fechar as tabelas!');
END;
screen.cursor:=CrDefault;
end;



procedure TFormNFImprime.EstornaNF;
begin
screen.cursor:=CrHourglass;
{Certifica não relacionamento das Tabelas}
Datamodulo.TbPedItem.MasterFields := '';
Datamodulo.TbPedItem.MasterSource := nil;
AbrirTabEstorno;
{ESTORNAR COMERCIAL-PEDIDOS}
{Pedido Estornar valores}
if Datamodulo.TbPedidos.FindKey([FormNFImprime.TbNFiscalNF_PEDIDO.Value])then
   begin
   Datamodulo.TbPedidos.Edit;
   Datamodulo.TbPedidosPED_VLFATURADO.value:=Datamodulo.TbPedidosPED_VLFATURADO.value-(FormNFImprime.TbNFiscalNF_TOT_PROD.Value);
   Datamodulo.TbPedidosPED_VLFATBRUTO.value:=Datamodulo.TbPedidosPED_VLFATBRUTO.value-FormNFImprime.TbNFiscalNF_TOT_NOTA.Value;
   Datamodulo.TbPedidosPED_FATURAS.Value:= COPY(Datamodulo.TbPedidosPED_FATURAS.Value,1,Length(Trim(Datamodulo.TbPedidosPED_FATURAS.Value))-7);
   Datamodulo.TbPedidos.Post;
   Datamodulo.TbPedidos.FlushBuffers;
   end;
{deleta historico de produtos dos pedidos e embalagens}
if Datamodulo.TbPrdManut.FindKey([FormNFImprime.TbNFiscalNF_NU_NOTA.Value]) then
   while (Datamodulo.TbPrdManutPES_NUMDOC.Value=FormNFImprime.TbNFiscalNF_NU_NOTA.Value)and not(Datamodulo.TbPrdManut.Eof) do
     begin
     Datamodulo.TbPrdManut.Delete;
     Datamodulo.TbPrdManut.FlushBuffers;
     end;
{PedItem - colocar situacao = "N"}
If Datamodulo.TbPedItem.FindKey([FormNFImprime.TbNFiscalNF_PEDIDO.Value]) then
   begin
   while (Datamodulo.TbPedItemPED_CODIGO.Value=FormNFImprime.TbNFiscalNF_PEDIDO.Value)and not(Datamodulo.TbPedItem.Eof) do
     begin
     Datamodulo.TbPedItem.Edit;
     Datamodulo.TbPedItemPRF_SITUACAO.Value := 'N';   // flag p/pedido
     Datamodulo.TbPedItemFATURA_CI.Value := True ;    // flag p/Faturamento
     Datamodulo.TbPedItem.Post;
     Datamodulo.TbPedItem.FlushBuffers;
     {Estornar Estoque de Produto Acabado}
     if Datamodulo.TbProduto.Findkey([Datamodulo.TbPedItemPRD_REFER.Value]) then
       begin
       DataModulo.TbProduto.Edit;
       DataModulo.TbProdutoPRD_SAIDA.Value:=DataModulo.TbProdutoPRD_SAIDA.Value-Datamodulo.TbPedItemPRF_QTDE.Value;
       DataModulo.TbProduto.Post;
       DataModulo.TbProduto.FlushBuffers;
       end;
     Datamodulo.TbPedItem.Next;
     end;
   end;
{Atualizar Estoque com os Itens associados (Embalagens)}
IF Datamodulo.TbEmbalagem.FindKey([Datamodulo.TbPedidosPED_CODIGO.Value]) then
   begin
   while (Datamodulo.TbEmbalagemPED_CODIGO.Value=Datamodulo.TbPedidosPED_CODIGO.Value)and not(Datamodulo.TbEmbalagem.EOF) do
     begin
     If DataModulo.TbProduto.FindKey([Datamodulo.TbEmbalagemPRD_REFER.Value]) then
        Begin
        {Atualizar saida do estoque}
        DataModulo.TbProduto.Edit;
        DataModulo.TbProdutoPRD_SAIDA.Value:=DataModulo.TbProdutoPRD_SAIDA.Value-Datamodulo.TbEmbalagemPEB_QTDE.Value;
        DataModulo.TbProduto.Post;
        DataModulo.TbProduto.FlushBuffers;
        end;
     Datamodulo.TbEmbalagem.Next;
     end;
   end;
{ESTORNAR FINANCEIRO - Ct.Receber}
if Datamodulo.TbReceber.FindKey([FormNFImprime.TbNFiscalNF_NU_NOTA.Value]) then
   begin
   {Exclusão das parcelas}
   if Datamodulo.TbRecParce.FindKey([FormNFImprime.TbNFiscalNF_NU_NOTA.Value]) then
      While (Datamodulo.TbRecParceFat_CODIGO.Value = Datamodulo.TbReceberFat_CODIGO.Value )and not (Datamodulo.TbRecParce.EOF) do
        begin
        Datamodulo.TbRecParce.Delete;
        Datamodulo.TbRecParce.FlushBuffers;
        end;
   {Exclusão dos Itens da fatura}
   if Datamodulo.TbRecItem.FindKey([Datamodulo.TbReceberFAT_CODIGO.Value]) then
      While (Datamodulo.TbRecItemFat_CODIGO.Value = Datamodulo.TbReceberFat_CODIGO.Value) and not (Datamodulo.TbRecItem.EOF) do
        begin
        Datamodulo.TbRecItem.Delete;
        Datamodulo.TbRecItem.FlushBuffers;
        end;
   //
   Datamodulo.TbReceber.Delete;
   Datamodulo.TbReceber.FlushBuffers;
   end;

{EXCLUIR ITENS DA NF e NF}
// desabilita link - obrigatorio(senao nao exclui todos os itens,só o primeiro)
TbNFiscalIten.MasterSource := Nil;
TbNFiscalIten.MasterFields := '';
//TbNFiscalIten.Filtered := False;
//TbNFiscalIten.Filter := 'NF_NUMERO='''+TbNFiscalNF_NU_NOTA.Value+'''';
//TbNFiscalIten.Filtered := True;
if TbNFiscalIten.FindKey([TbNFiscalNF_NU_NOTA.Value])then
  begin
   While(TbNFiscalItenNF_NUMERO.Value=TbNFiscalNF_NU_NOTA.Value)and not(TbNFiscalIten.Eof) do
      begin
      TbNFiscalIten.Delete;
      TbNFiscalIten.FlushBuffers;
      end;
   //TbNFiscalIten.Filtered := False;
   TbNFiscal.Delete;
   TbNFiscal.FlushBuffers;
  end;
//Restabelecer Link entre tabelas: Itens de Nota
TbNFiscalIten.MasterSource := DsNFiscal;
TbNFiscalIten.MasterFields := 'NF_NU_NOTA';
//
FecharTabEstorno;
//relacionamento (necesario se voltar ao pedido direto)
if Assigned(FormPedidos)then
   begin
   Datamodulo.TbPedItem.MasterSource := Datamodulo.DsPedidos;
   Datamodulo.TbPedItem.MasterFields := 'PED_CODIGO';
   end;
screen.cursor:=CrDefault;
end;


procedure TFormNFImprime.Bit_EstornoClick(Sender: tObject);
begin
//
if uteis.confirmacao ( ('Tem certeza que deseja estornar a Nota Fiscal "'+TbNFiscalNF_NU_NOTA.Value+'" ?')) = IdYes then
  EstornaNF;

end;

procedure TFormNFImprime.Sbit_MinutaClick(Sender: tObject);
begin
//
wNumeroNota := TbNFiscalNF_NU_NOTA.Value;
GrBoxMinuta.Visible := True;
LabCliente.Caption  := TbNFiscalNF_NOMECLI.Value;
LabNota.Caption     := TbNFiscalNF_NU_NOTA.Value;
LabTransport.Caption:= TbNFiscalNF_TRP_NOME.Value;
LabTotNota.Caption  := FloatToStrF(TbNFiscalNF_TOT_NOTA.Value, ffNumber, 11, 2);
LabQtde.Caption     := FloatToStrF(TbNFiscalNF_QTDE.Value, ffNumber, 9,0);
LabEspecie.Caption  := TbNFiscalNF_ESPECIE.Value;
LabPeso.Caption     := FloatToStrF(TbNFiscalNF_PESOBRU.Value, ffNumber, 11, 2);
EditObsMinuta.Text   := TbNFiscalNF_MINUTAOBS.Value;
NEditValorFrete.Value:= TbNFiscalNF_MINUTAVAL.Value;
//
if TbNFiscalNF_FRETE.Value = '1' then
  LabTipoFrete.Caption := 'FRETE PAGO'
else
 LabTipoFrete.Caption := 'FRETE À PAGAR';
//
EditObsMinuta.SetFocus;

end;

procedure TFormNFImprime.BitMinutaClick(Sender: tObject);
begin
  // gravar valores
  TbNFiscal.Edit;
  TbNFiscalNF_MINUTAOBS.Value:=EditObsMinuta.Text;
  TbNFiscalNF_MINUTAVAL.Value:=NEditValorFrete.Value;
  TbNFiscal.Post;
  TbNFiscal.FlushBuffers;
 //Abrir form
 try
    RelMinuta := TRelMinuta.Create(Application);
 except
    //beep;
    uteis.erro  ('Ocorreu um erro na criação do relatório!');
 end;
 //
 RelMinuta.Preview;
 //  tira da memoria
 RelMinuta.Destroy;
 RelMinuta := nil;
 //
 BitMinutafechar.Click;

end;

procedure TFormNFImprime.FormKeyPress(Sender: tObject; var Key: Char);
begin
 if key = #27 then
   if GrBoxMinuta.Visible = True then
      BitMinutaFechar.Click
   else
     if GrBEtiqueta.Visible = True then
       BitEtiqFechar.Click
     else
       close;

end;

procedure TFormNFImprime.BitMinutaFecharClick(Sender: tObject);
begin
  GrBoxMinuta.Visible := False;
  TbNFiscal.Filtered := False;
  // voltar no registro que estava
  TbNFiscal.FindKey([wNumeroNota]);

end;

procedure TFormNFImprime.EditInicialExit(Sender: tObject);
begin
  EditInicial.Text:= StrZero(EditInicial.Text,6);
  if FormNFImprime.TbNfiscal.Findkey([EditInicial.text])= False then
     uteis.erro  ('No.de Nota não esta na lista ou não existe.');
  EditFinal.Text := EditInicial.Text;
end;

procedure TFormNFImprime.EditFinalExit(Sender: tObject);
begin
EditFinal.Text:= StrZero(EditFinal.Text,6);
end;

procedure TFormNFImprime.EditInicialKeyPress(Sender: tObject; var Key: Char);
begin
 // deixo aceitar somente numeros
  if not(Key in['0','1','2','3','4','5','6','7','8','9',#8]) then
    begin
    //beep;
    Key:=#0;
    end;
end;

procedure TFormNFImprime.EditFinalKeyPress(Sender: tObject; var Key: Char);
begin
 // deixo aceitar somente numeros
  if not(Key in['0','1','2','3','4','5','6','7','8','9',#8]) then
    begin
    //beep;
    Key:=#0;
    end;
end;


Procedure TFormNFImprime.ImprimeEtiquetas;
// Imprime etiquetas conforme o volume de itens na N.F.
// Impressao para Matricial e p/ Jato/Laser
var
I,wNumeroEtiq,wModelo,wImpressora,wColuna1,wColuna2,wColuna3,wColuna,wLinha,wlinhaEtiqueta  : integer;
wRotulos,wNumer_Nota:string;
ArquivoIni:TiniFile;
begin
screen.Cursor := crHourglass;
{cria o arquivo}
if not FileExists(FrmMenu.PathIniNF+'\SysEtqNF.ini') then
  begin
  //beep;
  RDprintNotaFiscal.Fechar;
  uteis.erro  ('Impossível localizar arquivo de parametros das etiquetas !');
  exit;
  end;

try
//  ArquivoIni := TiniFile.Create(FrmAdjutor.PathIniNF+'\SysEtqNF.ini');
  {MODELO DA ETIQUETA : 0=1 coluna, 1=2 coluna, 2=3 coluna}
  wModelo :=StrToInt(ArquivoIni.ReadString('MODELO','MODELO',''));
  {TIPO DA IMPRESSORA : 0=Matricial, 1=Jato}
  wImpressora :=StrToInt(ArquivoIni.ReadString('TIPO','IMPRESSORA',''));

  // Ajusta a largura da folha de acordo com o número de colunas
  case wModelo of
    0 : RdPrintEtiq1.TamanhoQteColunas  :=  45;
    1 : RdPrintEtiq1.TamanhoQteColunas  :=  90;
    2 : RdPrintEtiq1.TamanhoQteColunas  := 132;
    end;
  {INICIO DA COLUNA 1}
  wColuna1 := StrToInt(ArquivoIni.ReadString('COLUNA1','INICIO',''));
  {INICIO DA COLUNA 2}
  wColuna2 := StrToInt(ArquivoIni.ReadString('COLUNA2','INICIO',''));
  {INICIO DA COLUNA 3}
  wColuna3 := StrToInt(ArquivoIni.ReadString('COLUNA3','INICIO',''));
  {NUMERO MAXIMO DE LINHAS - IMP. MATRICIAL}
  wlinhaEtiqueta := 0;
  //
  if wImpressora = 0 then  // matricial
     RdPrintEtiq1.TamanhoQteLinhas := StrToInt(ArquivoIni.ReadString('MATRICIAL','LINHAS',''))
  else
     // jato/laser(A4=70 Linhas) - implemetar linhas conforme tamanho etiqueta
     wLinhaEtiqueta :=  StrToInt(ArquivoIni.ReadString('MATRICIAL','LINHAS',''));
  //
  {IMPRIMIR ROTULOS DOS DADOS = S ou [ ]}
  wRotulos :=ArquivoIni.ReadString('ROTULOS','IMPRIME','');
  wColuna  := wColuna1;
  wLinha   := 0;
  RDprintNotaFiscal.OpcoesPreview.Preview := True;
  RdPrintEtiq1.Abrir;
  while(TbNFiscalNF_NU_NOTA.Value<=EditFinal.Text)and not(TbNFiscal.EOF) do
    begin
    {verifica quantos etiquetas de cada nota (qtde de volumes)}
    wNumer_Nota := TbNFiscalNF_NU_NOTA.Value;
    while(TbNFiscalNF_NU_NOTA.Value=wNumer_Nota)and not(TbNFiscal.EOF) do
       begin
       wNumeroEtiq := TbNFiscalNF_QTDE.AsInteger;
       for I := 1 to wNumeroEtiq do
         begin
         {CLIENTE}
         if ArquivoIni.ReadString('CLIENTE','IMPRIME','') = 'S' then
           if wRotulos = 'S' then
              RdPrintEtiq1.imp(wLinha+StrToInt(ArquivoIni.ReadString('CLIENTE','LINHA','')),StrToInt(ArquivoIni.ReadString('CLIENTE','COLUNA',''))+wColuna,'Cliente: '+TbNFiscalNF_NOMECLI.AsString)
           else
              RdPrintEtiq1.imp(wLinha+StrToInt(ArquivoIni.ReadString('CLIENTE','LINHA','')),StrToInt(ArquivoIni.ReadString('CLIENTE','COLUNA',''))+wColuna, TbNFiscalNF_NOMECLI.AsString);
         {ENDEREÇO}
         {Endereço normal}
         if TbNfiscalNF_CIDENT.Value = '' then
           begin
           {Endereço}
           if ArquivoIni.ReadString('ENDERECO','IMPRIME','') = 'S' then
             if wRotulos = 'S' then
                RdPrintEtiq1.imp(wLinha+StrToInt(ArquivoIni.ReadString('ENDERECO','LINHA','')),StrToInt(ArquivoIni.ReadString('ENDERECO','COLUNA',''))+wColuna,'Endereço: '+TbNfiscalNF_ENDCLI.AsString)
             else
                RdPrintEtiq1.imp(wLinha+StrToInt(ArquivoIni.ReadString('ENDERECO','LINHA','')),StrToInt(ArquivoIni.ReadString('ENDERECO','COLUNA',''))+wColuna, TbNfiscalNF_ENDCLI.AsString);
           {Cidade}
           if ArquivoIni.ReadString('CIDADE','IMPRIME','') = 'S' then
             if wRotulos = 'S' then
                RdPrintEtiq1.imp(wLinha+StrToInt(ArquivoIni.ReadString('CIDADE','LINHA','')),StrToInt(ArquivoIni.ReadString('CIDADE','COLUNA',''))+wColuna,'Cidade: '+TbNfiscalNF_CIDCLI.AsString)
             else
                RdPrintEtiq1.imp(wLinha+StrToInt(ArquivoIni.ReadString('CIDADE','LINHA','')),StrToInt(ArquivoIni.ReadString('CIDADE','COLUNA',''))+wColuna, TbNfiscalNF_CIDCLI.AsString);
           {Estado}
           if ArquivoIni.ReadString('UF','IMPRIME','') = 'S' then
             if wRotulos = 'S' then
                RdPrintEtiq1.imp(wLinha+StrToInt(ArquivoIni.ReadString('UF','LINHA','')),StrToInt(ArquivoIni.ReadString('UF','COLUNA',''))+wColuna,'UF: '+TbNfiscalNF_ESTCLI.AsString)
             else
                RdPrintEtiq1.imp(wLinha+StrToInt(ArquivoIni.ReadString('UF','LINHA','')),StrToInt(ArquivoIni.ReadString('UF','COLUNA',''))+wColuna, TbNfiscalNF_ESTCLI.AsString);
           {CEP}
           if ArquivoIni.ReadString('CEP','IMPRIME','') = 'S' then
             if wRotulos = 'S' then
                RdPrintEtiq1.imp(wLinha+StrToInt(ArquivoIni.ReadString('CEP','LINHA','')),StrToInt(ArquivoIni.ReadString('CEP','COLUNA',''))+wColuna,'CEP: '+MascaraCep(TbNfiscalNF_CEPCLI.AsString))
             else
                RdPrintEtiq1.imp(wLinha+StrToInt(ArquivoIni.ReadString('CEP','LINHA','')),StrToInt(ArquivoIni.ReadString('CEP','COLUNA',''))+wColuna, MascaraCep(TbNfiscalNF_CEPCLI.AsString));
           end
         else
          {Tem outro Endereço para Entrega}
           begin
           {Endereço}
           if ArquivoIni.ReadString('ENDERECO','IMPRIME','') = 'S' then
             if wRotulos = 'S' then
                RdPrintEtiq1.imp(wLinha+StrToInt(ArquivoIni.ReadString('ENDERECO','LINHA','')),StrToInt(ArquivoIni.ReadString('ENDERECO','COLUNA',''))+wColuna,'Endereço: '+TbNfiscalNF_ENDENT.AsString)
             else
                RdPrintEtiq1.imp(wLinha+StrToInt(ArquivoIni.ReadString('ENDERECO','LINHA','')),StrToInt(ArquivoIni.ReadString('ENDERECO','COLUNA',''))+wColuna, TbNfiscalNF_ENDENT.AsString);
           {Cidade}
           if ArquivoIni.ReadString('CIDADE','IMPRIME','') = 'S' then
             if wRotulos = 'S' then
                RdPrintEtiq1.imp(wLinha+StrToInt(ArquivoIni.ReadString('CIDADE','LINHA','')),StrToInt(ArquivoIni.ReadString('CIDADE','COLUNA',''))+wColuna,'Cidade: '+TbNfiscalNF_CIDENT.AsString)
             else
                RdPrintEtiq1.imp(wLinha+StrToInt(ArquivoIni.ReadString('CIDADE','LINHA','')),StrToInt(ArquivoIni.ReadString('CIDADE','COLUNA',''))+wColuna, TbNfiscalNF_CIDENT.AsString);
           {Estado}
           if ArquivoIni.ReadString('UF','IMPRIME','') = 'S' then
             if wRotulos = 'S' then
                RdPrintEtiq1.imp(wLinha+StrToInt(ArquivoIni.ReadString('UF','LINHA','')),StrToInt(ArquivoIni.ReadString('UF','COLUNA',''))+wColuna,'UF: '+TbNfiscalNF_ESTENT.AsString)
             else
                RdPrintEtiq1.imp(wLinha+StrToInt(ArquivoIni.ReadString('UF','LINHA','')),StrToInt(ArquivoIni.ReadString('UF','COLUNA',''))+wColuna, TbNfiscalNF_ESTENT.AsString);
           {CEP}
           if ArquivoIni.ReadString('CEP','IMPRIME','') = 'S' then
             if wRotulos = 'S' then
                RdPrintEtiq1.imp(wLinha+StrToInt(ArquivoIni.ReadString('CEP','LINHA','')),StrToInt(ArquivoIni.ReadString('CEP','COLUNA',''))+wColuna,'CEP: '+MascaraCep(TbNfiscalNF_CEPENT.AsString))
             else
                RdPrintEtiq1.imp(wLinha+StrToInt(ArquivoIni.ReadString('CEP','LINHA','')),StrToInt(ArquivoIni.ReadString('CEP','COLUNA',''))+wColuna, MascaraCep(TbNfiscalNF_CEPENT.AsString));
           end;
         {NUMERO DA NOTA}
         if ArquivoIni.ReadString('NOTA','IMPRIME','') = 'S' then
           if wRotulos = 'S' then
              RdPrintEtiq1.imp(wLinha+StrToInt(ArquivoIni.ReadString('NOTA','LINHA','')),StrToInt(ArquivoIni.ReadString('NOTA','COLUNA',''))+wColuna,'Nota Fiscal: '+TbNFiscalNF_NU_NOTA.AsString)
           else
              RdPrintEtiq1.imp(wLinha+StrToInt(ArquivoIni.ReadString('NOTA','LINHA','')),StrToInt(ArquivoIni.ReadString('NOTA','COLUNA',''))+wColuna, TbNFiscalNF_NU_NOTA.AsString);
        {QUANTIDADE(VOLUME)}
         if ArquivoIni.ReadString('QUANTIDADE','IMPRIME','') = 'S' then
           if wRotulos = 'S' then
              RdPrintEtiq1.imp(wLinha+StrToInt(ArquivoIni.ReadString('QUANTIDADE','LINHA','')),StrToInt(ArquivoIni.ReadString('QUANTIDADE','COLUNA',''))+wColuna,'Quantidade: '+TbNFiscalNF_QTDE.AsString)
           else
              RdPrintEtiq1.imp(wLinha+StrToInt(ArquivoIni.ReadString('QUANTIDADE','LINHA','')),StrToInt(ArquivoIni.ReadString('QUANTIDADE','COLUNA',''))+wColuna, TbNFiscalNF_QTDE.AsString);
        {PESO}
         if ArquivoIni.ReadString('PESO','IMPRIME','') = 'S' then
           if wRotulos = 'S' then
              begin
              RdPrintEtiq1.imp(wLinha+StrToInt(ArquivoIni.ReadString('PESO','LINHA','')),StrToInt(ArquivoIni.ReadString('PESO','COLUNA',''))+wColuna,'Peso: '); // 6 caracter
              RdPrintEtiq1.impVaL(wLinha+StrToInt(ArquivoIni.ReadString('PESO','LINHA','')),StrToInt(ArquivoIni.ReadString('PESO','COLUNA',''))+wColuna+6,'###,##0.000',TbNFiscalNF_PESOBRU.AsCurrency,[]);
              end
           else
              RdPrintEtiq1.impVaL(wLinha+StrToInt(ArquivoIni.ReadString('PESO','LINHA','')),StrToInt(ArquivoIni.ReadString('PESO','COLUNA',''))+wColuna,'###,##0.000',TbNFiscalNF_PESOBRU.AsCurrency,[]);
        {CODIGO DO PRODUTO}
         if ArquivoIni.ReadString('CODPROD','IMPRIME','') = 'S' then
           if wRotulos = 'S' then
              RdPrintEtiq1.imp(wLinha+StrToInt(ArquivoIni.ReadString('CODPROD','LINHA','')),StrToInt(ArquivoIni.ReadString('CODPROD','COLUNA',''))+wColuna,'Código: ')
           else
              RdPrintEtiq1.imp(wLinha+StrToInt(ArquivoIni.ReadString('CODPROD','LINHA','')),StrToInt(ArquivoIni.ReadString('CODPROD','COLUNA',''))+wColuna,'');
        {DESCRICAO DO PRODUTO}
         if ArquivoIni.ReadString('PRODUTO','IMPRIME','') = 'S' then
           if wRotulos = 'S' then
              RdPrintEtiq1.imp(wLinha+StrToInt(ArquivoIni.ReadString('PRODUTO','LINHA','')),StrToInt(ArquivoIni.ReadString('PRODUTO','COLUNA',''))+wColuna,'Produto: ')
           else
              RdPrintEtiq1.imp(wLinha+StrToInt(ArquivoIni.ReadString('PRODUTO','LINHA','')),StrToInt(ArquivoIni.ReadString('PRODUTO','COLUNA',''))+wColuna,'');
        {TRANSPORTADORA}
         if ArquivoIni.ReadString('TRANSP','IMPRIME','') = 'S' then
           if wRotulos = 'S' then
              RdPrintEtiq1.imp(wLinha+StrToInt(ArquivoIni.ReadString('TRANSP','LINHA','')),StrToInt(ArquivoIni.ReadString('TRANSP','COLUNA',''))+wColuna,'Transportadora: '+TbNfiscalNF_TRP_NOME.AsString)
           else
              RdPrintEtiq1.imp(wLinha+StrToInt(ArquivoIni.ReadString('TRANSP','LINHA','')),StrToInt(ArquivoIni.ReadString('TRANSP','COLUNA',''))+wColuna,TbNfiscalNF_TRP_NOME.AsString);
        (*
        {ENDEREÇO TRANSPORTADORA}
         if ArquivoIni.ReadString('ENDTRAN','IMPRIME','') = 'S' then
           if wRotulos = 'S' then
              RdPrintEtiq1.imp(StrToInt(ArquivoIni.ReadString('ENDTRAN','LINHA','')),StrToInt(ArquivoIni.ReadString('ENDTRAN','COLUNA',''))+wColuna,'Endereço: ');
           else
              RdPrintEtiq1.imp(StrToInt(ArquivoIni.ReadString('ENDTRAN','LINHA','')),StrToInt(ArquivoIni.ReadString('ENDTRAN','COLUNA',''))+wColuna,'');
        {CIDADE TRANSPORTADORA
         if ArquivoIni.ReadString('CIDTRAN','IMPRIME','') = 'S' then
           if wRotulos = 'S' then
              RdPrintEtiq1.imp(StrToInt(ArquivoIni.ReadString('CIDTRAN','LINHA','')),StrToInt(ArquivoIni.ReadString('CIDTRAN','COLUNA',''))+wColuna,'Cidade: ');
           else
              RdPrintEtiq1.imp(StrToInt(ArquivoIni.ReadString('CIDTRAN','LINHA','')),StrToInt(ArquivoIni.ReadString('CIDTRAN','COLUNA',''))+wColuna,'');
        {CEP TRANSPORTADORA
         if ArquivoIni.ReadString('CEPTRAN','IMPRIME','') = 'S' then
           if wRotulos = 'S' then
              RdPrintEtiq1.imp(StrToInt(ArquivoIni.ReadString('CEPTRAN','LINHA','')),StrToInt(ArquivoIni.ReadString('CEPTRAN','COLUNA',''))+wColuna,'CEP: ');
           else
              RdPrintEtiq1.imp(StrToInt(ArquivoIni.ReadString('CEPTRAN','LINHA','')),StrToInt(ArquivoIni.ReadString('CEPTRAN','COLUNA',''))+wColuna,'');

        *)

         if wImpressora = 0 then
           {Na matricial nao implementar linhas. pois o tamanho da pagina
           é o tamanho da própria etiqueta}
           begin
           {verifica se imprime nova pagina ou imprime na proxima coluna}
           if wModelo = 0 then   /// 1 coluna
              RdPrintEtiq1.Novapagina;

           if wModelo = 1 then   // 2 coluna
              if wColuna = wColuna1 then
                 wColuna := wColuna2
              else
                if wColuna = wColuna2 then
                  begin
                  wColuna := wColuna1;
                  RdPrintEtiq1.Novapagina;
                  end;

            if wModelo = 2 then // 3 colunas
               if wColuna = wColuna1 then
                  wColuna := wColuna2
                else
                   if wColuna = wColuna2 then
                      wColuna := wColuna3
                   else
                      begin
                      wColuna := wColuna1;
                      RdPrintEtiq1.Novapagina;
                      end;
           end
         else
           begin
           {é impressora jato/laser... a troca de pagina é somente pela
             tamanho do formulario (A4 = 70 linhas)...preciso implementar
            linhas nas etiquetas dentro da pagina}
           {verifica se imprime nova pagina ou imprime na proxima coluna}
           if wModelo = 0 then   /// 1 coluna
               wLinha :=wLinha+wLinhaEtiqueta;

           if wModelo = 1 then   // 2 coluna
              if wColuna = wColuna1 then
                 wColuna := wColuna2
              else
                if wColuna = wColuna2 then
                  begin
                  wLinha :=wLinha+wLinhaEtiqueta;
                  wColuna := wColuna1;
                  end;

            if wModelo = 2 then // 3 colunas
               if wColuna = wColuna1 then
                  wColuna := wColuna2
                else
                   if wColuna = wColuna2 then
                      wColuna := wColuna3
                   else
                      begin
                      wLinha :=wLinha+wLinhaEtiqueta;
                      wColuna := wColuna1;
                      end;

           // verificar a troca de folha(pagina)
           //Exemplo: 70 - 14  = 56
           if wLinha >  RdPrintEtiq1.TamanhoQteLinhas - wLinhaEtiqueta then
              begin
              RdPrintEtiq1.Novapagina;
              wLinha := 0;
              end;
           end;
         end;  // For
         TbNFiscal.Next
       end;    // while
     end;      // while
     RdPrintEtiq1.Fechar;
   finally
      ArquivoIni.Free;
   end;  // try
 screen.Cursor := crDefault;
end;



procedure TFormNFImprime.BitImprimeEtiqClick(Sender: tObject);
begin
ImprimeEtiquetas;
BitEtiqFechar.Click;

end;

procedure TFormNFImprime.SBit_EtiquetasClick(Sender: tObject);
begin
   GrBEtiqueta.Visible := True;
   EditInicial.Text := TbNFiscalNF_NU_NOTA.Value;
   EditInicial.Setfocus;
end;

procedure TFormNFImprime.BitEtiqFecharClick(Sender: tObject);
begin
EditInicial.Text := '';
EditFinal.Text   := '';
GrBEtiqueta.Visible := False;

end;



end.










