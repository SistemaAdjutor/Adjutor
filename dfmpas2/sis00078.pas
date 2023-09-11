unit sis00078;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppBarCod, ppCtrls, ppPrnabl, ppClass, ppCache, ppBands, ppProd,
  ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, DB, DBClient, Provider,
  SqlExpr,SqlClientDataSet, DBLocal, DBLocalS, ppModule, daDataModule;

type
  TFrmBoletoCodBarras = class(TForm)
    CdSBoleto: TClientDataSet;
    CdSBoletoCOD_BANCO: TStringField;
    CdSBoletoCOD_BANCO_DV: TStringField;
    CdSBoletoVENCIMENTO: TDateField;
    CdSBoletoESPECIE: TStringField;
    CdSBoletoQTDE_MOEDA: TCurrencyField;
    CdSBoletoVALOR_DOCUMENTO: TCurrencyField;
    CdSBoletoDESCONTO: TCurrencyField;
    CdSBoletoOUTRAS_DEDUCOES: TCurrencyField;
    CdSBoletoOUTROS_ACRESCIMOS: TCurrencyField;
    CdSBoletoMORA_JUROS: TCurrencyField;
    CdSBoletoVALOR_COBRADO: TCurrencyField;
    CdSBoletoNOSSO_NUMERO: TStringField;
    CdSBoletoNUMERO_DOCUMENTO: TStringField;
    CdSBoletoCODIGO_CENDENTE: TStringField;
    CdSBoletoDATA_DOCUMENTO: TDateField;
    CdSBoletoDATA_PROCESSAMENTO: TDateField;
    CdSBoletoAGENCIA: TStringField;
    CdSBoletoAGENCIA_DV: TStringField;
    CdSBoletoCONTA: TStringField;
    CdSBoletoCONTA_DV: TStringField;
    CdSBoletoCAMPO_LIVRE: TStringField;
    CdSBoletoCODIGO_BARRAS: TStringField;
    CdSBoletoLINHA_CODIGO: TStringField;
    CdSBoletoCEDENTE: TStringField;
    CdSBoletoLOCAL_PAGAMENTO: TStringField;
    CdSBoletoESPECIE_DOC: TStringField;
    CdSBoletoACEITE: TStringField;
    CdSBoletoCARTEIRA: TStringField;
    CdSBoletoINSTRUCAO1: TStringField;
    CdSBoletoINSTRUCAO2: TStringField;
    CdSBoletoINSTRUCAO3: TStringField;
    CdSBoletoINSTRUCAO4: TStringField;
    CdSBoletoINSTRUCAO5: TStringField;
    CdSBoletoINSTRUCAO6: TStringField;
    CdSBoletoINSTRUCAO7: TStringField;
    CdSBoletoINSTRUCAO8: TStringField;
    CdSBoletoINSTRUCAO9: TStringField;
    CdSBoletoINSTRUCAO10: TStringField;
    CdSBoletoSACADO: TStringField;
    CdSBoletoSACADO_CNPF_CNPJ: TStringField;
    CdSBoletoSACADO_ENDERECO: TStringField;
    CdSBoletoSACADO_BAIRRO: TStringField;
    CdSBoletoSACADO_CIDADE: TStringField;
    CdSBoletoSACADO_UF: TStringField;
    CdSBoletoSACADO_CEP: TStringField;
    CdSBoletoAVALISTA: TStringField;
    DsBoletosBarras: TDataSource;
    ppDBPBoletoBarras: TppDBPipeline;
    RpBoleto: TppReport;
    ppDetailBand1: TppDetailBand;
    ppImgBanco1: TppImage;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel1: TppLabel;
    ppLine4: TppLine;
    ppLine1: TppLine;
    ppLine7: TppLine;
    ppLabel4: TppLabel;
    ppLine8: TppLine;
    ppLabel5: TppLabel;
    ppLine9: TppLine;
    ppLabel6: TppLabel;
    ppLabel8: TppLabel;
    ppLine10: TppLine;
    ppLabel9: TppLabel;
    ppLine11: TppLine;
    ppLabel10: TppLabel;
    ppLine12: TppLine;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLine15: TppLine;
    ppLine13: TppLine;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel22: TppLabel;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLine22: TppLine;
    ppLabel25: TppLabel;
    ppLine24: TppLine;
    ppLabel26: TppLabel;
    ppImgBanco2: TppImage;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLabel3: TppLabel;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLabel17: TppLabel;
    ppLine19: TppLine;
    ppLabel18: TppLabel;
    ppLine23: TppLine;
    ppLabel19: TppLabel;
    ppLabel21: TppLabel;
    ppLine16: TppLine;
    ppImgBanco3: TppImage;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLabel28: TppLabel;
    ppLine29: TppLine;
    ppLabel29: TppLabel;
    ppLine30: TppLine;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLine31: TppLine;
    ppLabel32: TppLabel;
    ppLine32: TppLine;
    ppLabel33: TppLabel;
    ppLine33: TppLine;
    ppLabel34: TppLabel;
    ppLine34: TppLine;
    ppLabel35: TppLabel;
    ppLine35: TppLine;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLine36: TppLine;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLine37: TppLine;
    ppLabel40: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLine38: TppLine;
    ppLabel46: TppLabel;
    ppLine39: TppLine;
    ppLabel47: TppLabel;
    ppLine40: TppLine;
    ppLabel48: TppLabel;
    ppLine41: TppLine;
    ppLabel49: TppLabel;
    ppLine42: TppLine;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLine43: TppLine;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel58: TppLabel;
    ppDBText1: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppLabel41: TppLabel;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppLabel2: TppLabel;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppLabel57: TppLabel;
    ppDBText56: TppDBText;
    ppDBBarCode1: TppDBBarCode;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    SQLCrCduplicata: TSQLClientDataSet;
    CdSBoletoCODIGO_CARTEIRA: TStringField;
    ppLine14: TppLine;
    ppLine44: TppLine;
    ppTextoRespo: TppLabel;
    daDataModule1: TdaDataModule;
  private
    { Private declarations }
    {Variaveis}
     wNOSSO_NUMERO_BOLETO,
     wSQL1,
     wSQL2,
     wSQL3,
     wSQL4:String;
     //
    {rotinas para o boleto}
     procedure PrepararBoletoImpressao;
     procedure AtualizaDuplicataNossoNumero(wDUPLICATA,wNOSSO_NUMERO:String);
     function  MascraNossoNumero(wCOD_NOSSO,wBANCO:String) :String;
     //
     function  CalcularDigitoNossoNumeroCEF(Titulo,Carteira,Banco:String) : string; {Calcula o dígito do NossoNumero, conforme critérios definidos por cada banco}
     function  GetCampoLivreCodigoBarra(BANCO,wNossoNumero,wCodigoAgencia,wCodigoCedente,wCarteira,sVencimento: String): string; {Retorna o conteúdo da parte variável do código de barras}
     function  GerarCodigoBarra : String;{Gera o cidigo de barra}
     function  CalcularDigitoNossoNumeroHSBC(CodCliente,SequenciaTitulo:String) : string; {Calcula o dígito do NossoNumero, conforme critérios definidos por cada banco}
     function  CalcularDigitoNossoNumeroHSBCSemRegistro(sSequencia,sCodCedente,sVencimento:String) : string;
     function  FormatarDataJuliano(dData:TDateTime):String;

  public
    { Public declarations }
     procedure ImprimirBoletoCodigoBarras(wCOD_BOLETO,wTIPO,wSAIDA,wREEMISSAO:String;w_SQL:AnsiString);

     function  CalcularFatorVencimento(DataDesejada : TDateTime) : string;
     function  LinhaDigitavelCodigoBarras(CODIGOS:String) : string; {Retorna a representação numérica do código de barras}

  end;

var
  FrmBoletoCodBarras: TFrmBoletoCodBarras;

implementation

uses SISBASE0, UFuncoes, SISBASE3, Menu;






{$R *.dfm}

{ TFrmBoletoCodBarras }

function TFrmBoletoCodBarras.CalcularDigitoNossoNumeroCEF(Titulo, Carteira,
  Banco: String): string;
 var
   wDataVencimento,
   wNossoNumero,
   WDigitoNossoNumero1,
   wCarteira,
   wCodigoCedente,
   wDigitoNossoNumero : string;
   DataVencimento:TDate;
begin
  {calcula nosso numero banco CEF}
   if BANCO = '104' then
      begin
         Result             := '0';
         wNossoNumero       := '8'+Formatar(Titulo,14,False,'0');
         wDigitoNossoNumero := Modulo11(wNossoNumero,9,False);
         Result             := wNossoNumero+'-'+wDigitoNossoNumero;
      end
   else
   if BANCO = '1' then
      begin
         wCarteira          := Formatar(Carteira,2,False,'0');
         wNossoNumero       := Formatar(Titulo,11,False,'0');
         wDigitoNossoNumero := Modulo11(wNossoNumero,9,True);
        //
         if StrToInt(wDigitoNossoNumero) = 10 then
            wDigitoNossoNumero := 'X'
         else
            wDigitoNossoNumero := (wDigitoNossoNumero);
         Result := wNossoNumero +'-'+wDigitoNossoNumero;
      end;
end;

function TFrmBoletoCodBarras.CalcularFatorVencimento(
  DataDesejada: TDateTime): string;
begin
  {O fator de vencimento é a quantidade de dias entre 07/Nov/1997 e a data de vencimento do título}
   Result := IntToStr( Trunc(DataDesejada - EncodeDate(1997,10,07)));
end;

function TFrmBoletoCodBarras.GerarCodigoBarra: String;
var
   wCodigoBanco,
   wCodigoMoeda,
   wDigitoCodigoBarras,
   wFatorVencimento,
   wValorDocumento,
   wCampoLivre,
   wCodigoBarras: string;
   wvalor:Currency;
begin
   Result := '';
   {
    A primeira parte do código de barras é composta por:
    Código do banco (3 posições)
    Código da moeda = 9 (1 posição)
    Dígito do código de barras (1 posição) - Será calculado e incluído pelo componente
    Fator de vencimento (4 posições) - Obrigatório a partir de 03/07/2000
    Valor do documento (10 posições) - Sem vírgula decimal e com ZEROS à esquerda

    A segunda parte do código de barras é um campo livre, que varia de acordo
    com o banco
   }
   if CdSBoletoCOD_BANCO.AsString = '104' then
      begin
         {Primeira parte do código de barras}
          wCodigoBanco      := Formatar(CdSBoletoCOD_BANCO.AsString,3,false,'0');
          wCodigoMoeda      := '9'; //real
          wFatorVencimento  := Formatar(CalcularFatorVencimento(CdSBoletoVENCIMENTO.AsDateTime),4,false,'0');
          wValorDocumento   := FormatCurr('0000000000',CdSBoletoVALOR_DOCUMENTO.AsCurrency * 100); {Formata o valor com 10 dígitos, incluindo as casas decimais, mas não mostra o ponto decimal}
         {Segunda parte do código de barras - Campo livre - Varia de acordo com o banco}
          wCampoLivre       := CdSBoletoCAMPO_LIVRE.AsString;
         {Calcula o dígito e completa o código de barras}
          wCodigoBarras          := wCodigoBanco + wCodigoMoeda + wFatorVencimento + wValorDocumento + wCampoLivre;
          wDigitoCodigoBarras    := Modulo11(wCodigoBarras,9);
          if wDigitoCodigoBarras = '0' then
             wDigitoCodigoBarras := '1';
         {}
          Result := Copy(wCodigoBarras,1,4) + wDigitoCodigoBarras + Copy(wCodigoBarras,5,length(wCodigoBarras)-4);
      end
   else
   if CdSBoletoCOD_BANCO.AsString = '399' then
      begin
         {Primeira parte do código de barras}
          wCodigoBanco      := Formatar(CdSBoletoCOD_BANCO.AsString,3,false,'0');
          wCodigoMoeda      := '9'; //real
          wFatorVencimento  := Formatar(CalcularFatorVencimento(CdSBoletoVENCIMENTO.AsDateTime),4,false,'0');
          wValorDocumento   := FormatCurr('0000000000',CdSBoletoVALOR_DOCUMENTO.AsCurrency * 100); {Formata o valor com 10 dígitos, incluindo as casas decimais, mas não mostra o ponto decimal}
         {Segunda parte do código de barras - Campo livre - Varia de acordo com o banco}
          wCampoLivre       := CdSBoletoCAMPO_LIVRE.AsString;
         {Calcula o dígito e completa o código de barras}
          wCodigoBarras          := wCodigoBanco + wCodigoMoeda + wFatorVencimento + wValorDocumento + wCampoLivre;
          wDigitoCodigoBarras    := Modulo11(wCodigoBarras,9);
          if wDigitoCodigoBarras = '0' then
             wDigitoCodigoBarras := '1'
          else
          if wDigitoCodigoBarras = '10' then
             wDigitoCodigoBarras := '1';
          Result := Copy(wCodigoBarras,1,4) + wDigitoCodigoBarras + Copy(wCodigoBarras,5,length(wCodigoBarras)-4);
      end;
end;

function TFrmBoletoCodBarras.GetCampoLivreCodigoBarra(BANCO, wNossoNumero,
  wCodigoAgencia, wCodigoCedente, wCarteira, sVencimento: String): string;
 Var
  DataVencimento:TDate;
  wUltimoDigitoDoAno,
  wDataVencimentoJuliano,
  wDiaDoAno:String;
  wTIPO_COBRACA :String[1];
begin

   {
    A primeira parte do código de barras será calculada automaticamente.
    Ela é composta por:
    Código do banco (3 posições)
    Código da moeda = 9 (1 posição)
    Dígito do código de barras (1 posição) - Será calculado e incluído pelo componente
    Fator de vencimento (4 posições) - Obrigatório a partir de 03/07/2000
    Valor do documento (10 posições) - Sem vírgula decimal e com ZEROS à esquerda

    A segunda parte do código de barras é um campo livre, que varia de acordo
    com o banco. Esse campo livre será calculado por esta função (que você deverá
    alterar de acordo com as informações fornecidas pelo banco).
   }

   {Segunda parte do código de barras - Campo livre - Varia de acordo com o banco}
   if BANCO = '104' then
      begin
         wCodigoCedente   := Formatar(wCodigoCedente,5,false,'0');
         wCodigoAgencia   := Formatar(wCodigoAgencia,4,false,'0');
         wTIPO_COBRACA    := 'S';
         if wTIPO_COBRACA = 'S' then //S=SEM REGISTRO - R=COBRANÇA RAPIDA =
            wNossoNumero  := Formatar(Copy(wNossoNumero,2,14),14,false,'0') //'8'+Formatar(wNossoNumero,13,false,'0')
         else
            wNossoNumero  := Formatar(wNossoNumero,10,false,'0');//Formatar('9'+wNossoNumero,10,false,'0');
                                                                            //7 e constante da caixa economica
         Result           := wCodigoCedente + wCodigoAgencia + wCarteira + '7' + wNossoNumero;
      end
   else
   if BANCO = '1' then
      begin
         wNossoNumero       := Formatar(wNossoNumero,11,false,'0');
         //ADigitoNossoNumero := Formatar(DigitoNossoNumero,1,false,'0');
         wCodigoAgencia     := Formatar(wCodigoAgencia,4,false,'0');
         wCodigoCedente     := Formatar(wCodigoCedente,8,false,'0');
         wCarteira          := Formatar(wCarteira,2);
         Result := wNossoNumero + wCodigoAgencia + wCodigoCedente + wCarteira;
      end
   else
   if BANCO = '399' then {cobrança sem registro}
      begin
         wCodigoCedente         := Formatar(wCodigoCedente,07,false,'0');
         wNossoNumero           := Formatar(wNossoNumero,13,false,'0');
         wDataVencimentoJuliano := FormatarDataJuliano(StrToDate(sVencimento));
         Result                 := wCodigoCedente + wNossoNumero + wDataVencimentoJuliano + '2';
      end;
end;

procedure TFrmBoletoCodBarras.ImprimirBoletoCodigoBarras(wCOD_BOLETO,
  wTIPO, wSAIDA, wREEMISSAO: String;w_SQL:AnsiString);
begin
   try
      if not CdSBoleto.Active then
         CdSBoleto.CreateDataSet;
     {inicializa variveis}
      wNOSSO_NUMERO_BOLETO := '';
      SQLCrCduplicata.Close;
      if wTIPO = 'D' then {por duplicata}
         begin
            wSQL1 := 'select CRC.*,CL_RAZAO,CL_CNPJ_CNPF,CL_ENDERECO_COB,CL_BAIRRO_COB,CL_CIDADE_COB,CL_UF_COB,CL_CEP_COB';
            wSQL2 := ' from CRCdUPLICATA CRC,CLIENTES CL where CRC_COD_CLIENTE = CL_CODIGO and CRC_DUPLICATA ='''+wCOD_BOLETO+''' order by CRC_DUPLICATA';
            SQLCrCduplicata.CommandText := wSQL1+wSQL2;
         end
      else
      if wTIPO = 'F' then {por fatura}
         begin
            wSQL1 := 'select CRC.*,CL_RAZAO,CL_CNPJ_CNPF,CL_ENDERECO_COB,CL_BAIRRO_COB,CL_CIDADE_COB,CL_UF_COB,CL_CEP_COB';
            wSQL2 := ' from CRCdUPLICATA CRC,CLIENTES CL where CRC_COD_CLIENTE = CL_CODIGO and CRC_NOTA_FISCAL ='''+wCOD_BOLETO+''' order by CRC_DUPLICATA';
            SQLCrCduplicata.CommandText := wSQL1+wSQL2;
         end
      else
      if wTIPO = 'G' then
         begin
            SQLCrCduplicata.CommandText := w_SQL;
         end;
      //
      SQLCrCduplicata.Open;
      //
      if not SQLCrCduplicata.IsEmpty then
         begin
            try
              SQLCrCduplicata.First;
             {limpar arquivo}
              CdSBoleto.EmptyDataSet;
              while not SQLCrCduplicata.Eof do
                 begin
                   {seleciona o banco}
                    DadosBase0.CdSAgenciaBanco.Close;
                    DadosBase0.CdSAgenciaBanco.CommandText := 'select * from AGENCIA_BANCO where AB_BANCO = '''+SQLCrCduplicata.FieldByname('CRC_COD_BANCO').AsString+'''';/// and AB_BANCO_COBRANCA = ''B''';
                    DadosBase0.CdSAgenciaBanco.Open;
                   //
                    if wREEMISSAO = 'N' then
                       begin
                          {incremeta a sequencia do nosso numero do banco}
                           if not DadosBase0.CdSAgenciaBanco.IsEmpty then
                              begin
                                 DadosBase0.CdSAgenciaBanco.Edit;
                                 DadosBase0.CdSAgenciaBanco.FieldByname('AB_SEQ_NOSSO_NUMERO').AsInteger := (DadosBase0.CdSAgenciaBanco.FieldByname('AB_SEQ_NOSSO_NUMERO').AsInteger + 1);
                                 DadosBase0.CdSAgenciaBanco.ApplyUpdates(0);
                                {calcular nosso numero}
                                 if SQLCrCduplicata.FieldByname('CRC_COD_BANCO').AsInteger = 104 then
                                    begin
                                       wNOSSO_NUMERO_BOLETO := CalcularDigitoNossoNumeroCEF(DadosBase0.CdSAgenciaBanco.FieldByname('AB_SEQ_NOSSO_NUMERO').AsString,'0',DadosBase0.CdSAgenciaBanco.FieldByname('AB_BANCO').AsString);
                                      {atualiza duplicata}
                                       AtualizaDuplicataNossoNumero(SQLCrCduplicata.FieldByname('CRC_DUPLICATA').AsString,Copy(wNOSSO_NUMERO_BOLETO,01,15)+Copy(wNOSSO_NUMERO_BOLETO,17,01));
                                    end
                                 else {calcular nosso numero}
                                 if SQLCrCduplicata.FieldByname('CRC_COD_BANCO').AsInteger = 399 then
                                    begin
                                       wNOSSO_NUMERO_BOLETO := CalcularDigitoNossoNumeroHSBCSemRegistro(DadosBase0.CdSAgenciaBanco.FieldByname('AB_SEQ_NOSSO_NUMERO').AsString,DadosBase0.CdSAgenciaBanco.FieldByname('AB_IDENTIFICA_BANCO').AsString,SQLCrCduplicata.FieldByname('CRC_VENCIMENTO').AsString);
                                      {atualiza duplicata}
                                       AtualizaDuplicataNossoNumero(SQLCrCduplicata.FieldByname('CRC_DUPLICATA').AsString,Copy(wNOSSO_NUMERO_BOLETO,01,16));
                                      {mascra}
                                       //wNOSSO_NUMERO_BOLETO := MascraNossoNumero(wNOSSO_NUMERO_BOLETO,SQLCrCduplicata.FieldByname('CRC_COD_BANCO').AsString);
                                    end;
                              end
                           else
                              begin
                                 //beep;
                                 uteis.aviso('Impossível atualiza nosso número no cadastro de contas bancarias ....');
                                 exit;
                              end;
                       end
                    else
                       begin
                          if SQLCrCduplicata.FieldByname('CRC_COD_BANCO').AsInteger = 104 then
                             wNOSSO_NUMERO_BOLETO := MascraNossoNumero(SQLCrCduplicata.FieldByname('CRC_COD_COBRANCA').AsString,SQLCrCduplicata.FieldByname('CRC_COD_BANCO').AsString)
                          else
                             wNOSSO_NUMERO_BOLETO := SQLCrCduplicata.FieldByname('CRC_COD_COBRANCA').AsString;
                       end;
                   {grava boleto para impressao}
                    PrepararBoletoImpressao;
                   //
                    SQLCrCduplicata.Next;
                 end;
            finally
            {}
             CdSBoleto.First;
            {atribuir imagem do banco}
             if FileExists(dbInicio.SistemaLocal+'\logo\'+Formatar(SQLCrCduplicata.FieldByName('CRC_COD_BANCO').AsString,3,False,'0')+'.jpg') then
                begin
                   ppImgBanco1.Picture.LoadFromFile(dbInicio.SistemaLocal+'\logo\'+Formatar(SQLCrCduplicata.FieldByName('CRC_COD_BANCO').AsString,3,False,'0')+'.jpg');
                   ppImgBanco2.Picture.LoadFromFile(dbInicio.SistemaLocal+'\logo\'+Formatar(SQLCrCduplicata.FieldByName('CRC_COD_BANCO').AsString,3,False,'0')+'.jpg');
                   ppImgBanco3.Picture.LoadFromFile(dbInicio.SistemaLocal+'\logo\'+Formatar(SQLCrCduplicata.FieldByName('CRC_COD_BANCO').AsString,3,False,'0')+'.jpg');
                end;
            {relatorio}
             try
                if wSAIDA = 'V' then
                   RpBoleto.DeviceType := 'Screen'
                else
                   RpBoleto.DeviceType := 'Printer';
                RpBoleto.Print;
             finally
                //CdSBoleto.Active := False;
                CdSBoleto.Close;
             end;
            end;
         end;
   except on E:EDataBaseError do
     begin
        //beep;
        uteis.erro  (Pchar('Impossível gravar no arquivo:'+#13#10+E.message));
     end;
   end;
end;

function TFrmBoletoCodBarras.LinhaDigitavelCodigoBarras(
  CODIGOS: String): string;
{
   A linha digitável é baseada na informações do código de barras.
   As informações que fazem parte do código de barras são:
   Posição         Conteúdo
   1 a 3           Número do banco
   4               Código da Moeda - 9 para Real
   5               Digito verificador do Código de Barras
   6 a 19          Valor (12 inteiros e 2 decimais)
   20 a 44         Campo Livre definido por cada banco
}
var
   p1, p2, p3, p4, p5, p6,
   Campo1, Campo2, Campo3, Campo4, Campo5 : string;
begin
   if CdSBoletoCOD_BANCO.AsString = '104' then
      begin
         {
           Campo 1 - composto pelo código do banco, código da moeda, as cinco primeiras posições
           do campo livre e DV (modulo10) desse campo
         }
         p1 := Copy(CODIGOS,1,4);
         p2 := Copy(CODIGOS,20,5);
         p3 := Modulo10(p1+p2);
         p4 := p1+p2+p3;
         p5 := Copy(p4,1,5);
         p6 := Copy(p4,6,5);
         Campo1 := p5+'.'+p6;

         {
           Campo 2 - composto pelas posiçoes 6 a 15 do campo livre
           e DV (modulo10) deste campo
         }
         p1 := Copy(CODIGOS,25,10);
         p2 := Modulo10(p1);
         p3 := p1+p2;
         p4 := Copy(p3,1,5);
         p5 := Copy(p3,6,6);
         Campo2 := p4+'.'+p5;

         {
           Campo 3 - composto pelas posicoes 16 a 25 do campo livre
           e DV (modulo10) deste campo
         }
         p1 := Copy(CODIGOS,35,10);
         p2 := Modulo10(p1);
         p3 := p1+p2;
         p4 := Copy(p3,1,5);
         p5 := Copy(p3,6,6);
         Campo3 := p4+'.'+p5;

         {
           Campo 4 - digito verificador do codigo de barras
         }
         Campo4 := Copy(CODIGOS,5,1);
         // não Campo4 := Modulo10(CODIGOS);
         {
           Campo 5 - composto pelo valor nominal do documento, sem indicacao
           de zeros a esquerda e sem edicao (sem ponto e virgula). Quando se
           tratar de valor zerado, a representacao deve ser 000 (tres zeros).
         }
         Campo5 := Copy(CODIGOS,6,14);

         Result := Campo1 + ' ' + Campo2 + ' ' + Campo3 + ' ' + Campo4 + ' ' + Campo5;
      end
   else
   if CdSBoletoCOD_BANCO.AsString = '399' then
      begin
         {
           Campo 1 - composto pelo código do banco, código da moeda, as cinco primeiras posições
           do campo livre e DV (modulo10) desse campo
         }
         p1 := Copy(CODIGOS,1,4);
         p2 := Copy(CODIGOS,20,5);
         p3 := Modulo10(p1+p2);
         p4 := p1+p2+p3;
         p5 := Copy(p4,1,5);
         p6 := Copy(p4,6,5);
         Campo1 := p5+'.'+p6;

         {
           Campo 2 - composto pelas posiçoes 6 a 15 do campo livre
           e DV (modulo10) deste campo
         }
         p1 := Copy(CODIGOS,25,10);
         p2 := Modulo10(p1);
         p3 := p1+p2;
         p4 := Copy(p3,1,5);
         p5 := Copy(p3,6,6);
         Campo2 := p4+'.'+p5;

         {
           Campo 3 - composto pelas posicoes 16 a 25 do campo livre
           e DV (modulo10) deste campo
         }
         p1 := Copy(CODIGOS,35,10);
         p2 := Modulo10(p1);
         p3 := p1+p2;
         p4 := Copy(p3,1,5);
         p5 := Copy(p3,6,6);
         Campo3 := p4+'.'+p5;

         {
           Campo 4 - digito verificador do codigo de barras
         }
         Campo4 := Copy(CODIGOS,5,1);
         // não Campo4 := Modulo10(CODIGOS);
         {
           Campo 5 - composto pelo valor nominal do documento, sem indicacao
           de zeros a esquerda e sem edicao (sem ponto e virgula). Quando se
           tratar de valor zerado, a representacao deve ser 000 (tres zeros).
         }
         Campo5 := Copy(CODIGOS,6,14);

         Result := Campo1 + ' ' + Campo2 + ' ' + Campo3 + ' ' + Campo4 + ' ' + Campo5;
      end

end;

procedure TFrmBoletoCodBarras.PrepararBoletoImpressao;
begin
   try
     {atribuir no boleto}
      CdSBoleto.Insert;
      CdSBoletoCOD_BANCO.AsString                           := Formatar(SQLCrCduplicata.FieldByname('CRC_COD_BANCO').AsString,3,False,'0');
      CdSBoletoCOD_BANCO_DV.AsString                        := Modulo11(SQLCrCduplicata.FieldByname('CRC_COD_BANCO').AsString,9);
      CdSBoletoCEDENTE.AsString                             := dbInicio.Empresa.RAZAO;
      CdSBoletoLOCAL_PAGAMENTO.AsString                     := DadosBase0.CdSAgenciaBanco.FieldByname('AB_LOCAL_PAGAMENTO').AsString;
      //
      CdSBoletoVENCIMENTO.AsDateTime                        := SQLCrCduplicata.FieldByname('CRC_VENCIMENTO').AsDateTime;
      CdSBoletoESPECIE.AsString                             := 'R$';
      if CdSBoletoCOD_BANCO.AsString = '104' then
         CdSBoletoESPECIE_DOC.AsString                      := 'DM' //DUPLICATA MERCANTIL
      else
         CdSBoletoESPECIE_DOC.AsString                      := '';{cobranca sem registro}{cobranca com registro 'PD'}
      //
      CdSBoletoACEITE.AsString                              :='NÃO';
      CdSBoletoQTDE_MOEDA.AsCurrency                        := 0;
      CdSBoletoVALOR_DOCUMENTO.AsCurrency                   := SQLCrCduplicata.FieldByname('CRC_VALOR_DUPLICATA').AsCurrency;
      CdSBoletoDESCONTO.AsCurrency                          := SQLCrCduplicata.FieldByname('CRC_DESCONTO').AsCurrency;
      CdSBoletoMORA_JUROS.AsCurrency                        := 0;
      CdSBoletoVALOR_COBRADO.AsCurrency                     := 0;
      CdSBoletoOUTRAS_DEDUCOES.AsCurrency                   := 0;
      CdSBoletoOUTROS_ACRESCIMOS.AsCurrency                 := 0;
     {calcula digito verificador do nosso numero banco}

      CdSBoletoNUMERO_DOCUMENTO.AsString                    := SQLCrCduplicata.FieldByname('CRC_DUPLICATA').AsString;

      CdSBoletoNOSSO_NUMERO.AsString                        := wNOSSO_NUMERO_BOLETO;//CalcularDigitoNossoNumero  (DadosBase0.CdSAgenciaBanco.FieldByname('AB_SEQ_NOSSO_NUMERO').AsString,'0',DadosBase0.CdSAgenciaBanco.FieldByname('AB_BANCO').AsString);

     //
      CdSBoletoDATA_DOCUMENTO.AsDateTime                    := SQLCrCduplicata.FieldByname('CRC_EMISSAO').AsDateTime;
      CdSBoletoDATA_PROCESSAMENTO.AsDateTime                := SQLCrCduplicata.FieldByname('CRC_EMISSAO').AsDateTime;
     {}
      CdSBoletoAGENCIA.AsString                             := DadosBase0.CdSAgenciaBanco.FieldByname('AB_AGENCIA').AsString;
      CdSBoletoAGENCIA_DV.AsString                          := DadosBase0.CdSAgenciaBanco.FieldByname('AB_AGENCIA_DV').AsString;
      CdSBoletoCONTA.AsString                               := Formatar(DadosBase0.CdSAgenciaBanco.FieldByname('AB_CONTA').AsString,11,false,'0');
      CdSBoletoCONTA_DV.AsString                            := DadosBase0.CdSAgenciaBanco.FieldByname('AB_CONTA_DV').AsString;

      if CdSBoletoCOD_BANCO.AsString = '104' then
         CdSBoletoCARTEIRA.AsString                         := DadosBase0.CdSAgenciaBanco.FieldByname('AB_COD_CARTEIRA').AsString
      else
      if CdSBoletoCOD_BANCO.AsString = '399' then
         CdSBoletoCARTEIRA.AsString                         := 'CNR';

      CdSBoletoCODIGO_CARTEIRA.AsString                     := DadosBase0.CdSAgenciaBanco.FieldByname('AB_NUMERO_CARTEIRA').AsString;

      if CdSBoletoCOD_BANCO.AsString = '104' then
         CdSBoletoCODIGO_CENDENTE.AsString                  := CdSBoletoAGENCIA.AsString+'.'+Copy(DadosBase0.CdSAgenciaBanco.FieldByname('AB_IDENTIFICA_BANCO').AsString,1,3)+'.'+Copy(DadosBase0.CdSAgenciaBanco.FieldByname('AB_IDENTIFICA_BANCO').AsString,4,8)+'-'+Modulo11(Copy(DadosBase0.CdSAgenciaBanco.FieldByname('AB_IDENTIFICA_BANCO').AsString,4,8),9)
      else
      if CdSBoletoCOD_BANCO.AsString = '399' then
         CdSBoletoCODIGO_CENDENTE.AsString                  := DadosBase0.CdSAgenciaBanco.FieldByname('AB_IDENTIFICA_BANCO').AsString; //CdSBoletoAGENCIA.AsString+'-'+CdSBoletoAGENCIA.AsString+DadosBase0.CdSAgenciaBanco.FieldByname('AB_CONTA').AsString+DadosBase0.CdSAgenciaBanco.FieldByname('AB_CONTA_DV').AsString;

      if CdSBoletoCOD_BANCO.AsString = '104' then
         CdSBoletoCAMPO_LIVRE.AsString                      := GetCampoLivreCodigoBarra(CdSBoletoCOD_BANCO.AsString,Copy(CdSBoletoNOSSO_NUMERO.AsString,1,15) ,CdSBoletoAGENCIA.AsString,
                                                                                        Copy(DadosBase0.CdSAgenciaBanco.FieldByname('AB_IDENTIFICA_BANCO').AsString,7,5),CdSBoletoCODIGO_CARTEIRA.AsString,CdSBoletoVENCIMENTO.AsString)
      else
      if CdSBoletoCOD_BANCO.AsString = '399' then
         CdSBoletoCAMPO_LIVRE.AsString                      := GetCampoLivreCodigoBarra(CdSBoletoCOD_BANCO.AsString,Copy(CdSBoletoNOSSO_NUMERO.AsString,1,13),CdSBoletoAGENCIA.AsString,
                                                                                        CdSBoletoCODIGO_CENDENTE.AsString,CdSBoletoCODIGO_CARTEIRA.AsString,CdSBoletoVENCIMENTO.AsString);

     {codigo de barras}
      CdSBoletoCODIGO_BARRAS.AsString                       := GerarCodigoBarra;
      CdSBoletoLINHA_CODIGO.AsString                        := LinhaDigitavelCodigoBarras(CdSBoletoCODIGO_BARRAS.AsString);

{         CdSBoletoLINHA_CODIGO.AsString                     := LinhaDigitavelCodigoBarras(Copy(GerarCodigoBarra,1,5)+
                                                               FormatCurr('00000000000000',SQLCrCduplicata.FieldByname('CRC_VALOR_DUPLICATA').AsCurrency*100)+
                                                               GetCampoLivreCodigoBarra(SQLCrCduplicata.FieldByname('CRC_COD_BANCO').AsString,
                                                               DadosBase0.CdSAgenciaBanco.FieldByname('AB_SEQ_NOSSO_NUMERO').AsString,
                                                               DadosBase0.CdSAgenciaBanco.FieldByname('AB_AGENCIA').AsString,
                                                               CdSBoletoCODIGO_CENDENTE.AsString,
                                                               DadosBase0.CdSAgenciaBanco.FieldByname('AB_COD_CARTEIRA').AsString));
 }
     {instruçoes}
      CdSBoletoINSTRUCAO1.AsString                          := DadosBase0.CdSAgenciaBanco.FieldByname('AB_INST_DESCRICAO1').AsString;
      CdSBoletoINSTRUCAO2.AsString                          := DadosBase0.CdSAgenciaBanco.FieldByname('AB_INST_DESCRICAO2').AsString;
      CdSBoletoINSTRUCAO3.AsString                          := DadosBase0.CdSAgenciaBanco.FieldByname('AB_INST_DESCRICAO3').AsString;
      CdSBoletoINSTRUCAO4.AsString                          := DadosBase0.CdSAgenciaBanco.FieldByname('AB_INST_DESCRICAO4').AsString +' R$:     '+ FormatCurr('###,##0.00',(((CdSBoletoVALOR_DOCUMENTO.AsCurrency * DadosBase0.CdSAgenciaBanco.FieldByname('AB_JUROS_MORA').AsCurrency) / 100) / 30)) ;
      CdSBoletoINSTRUCAO5.AsString                          := '';
      CdSBoletoINSTRUCAO6.AsString                          := '';
      CdSBoletoINSTRUCAO7.AsString                          := '';
      CdSBoletoINSTRUCAO8.AsString                          := '';
      CdSBoletoINSTRUCAO9.AsString                          := '';
      CdSBoletoINSTRUCAO10.AsString                         := '';
     {sacado}
      CdSBoletoSACADO.AsString                              := SQLCrCduplicata.FieldByname('CL_RAZAO').AsString;
      CdSBoletoSACADO_ENDERECO.AsString                     := SQLCrCduplicata.FieldByname('CL_ENDERECO_COB').AsString;
      CdSBoletoSACADO_BAIRRO.AsString                       := SQLCrCduplicata.FieldByname('CL_BAIRRO_COB').AsString;
      CdSBoletoSACADO_CIDADE.AsString                       := SQLCrCduplicata.FieldByname('CL_CIDADE_COB').AsString;
      CdSBoletoSACADO_UF.AsString                           := SQLCrCduplicata.FieldByname('CL_UF_COB').AsString;
      CdSBoletoSACADO_CEP.AsString                          := SQLCrCduplicata.FieldByname('CL_CEP_COB').AsString;
      CdSBoletoSACADO_CNPF_CNPJ.AsString                    := SQLCrCduplicata.FieldByname('CL_CNPJ_CNPF').AsString;
     {avalista}
      CdSBoletoAVALISTA.AsString                            := '';
     {grava}
      CdSBoleto.Post;
   except on E:EDataBaseError do
     begin
        //beep;
        uteis.erro  (Pchar('Impossível gravar no arquivo:'+#13#10+E.message));
     end;
   end;

end;

procedure TFrmBoletoCodBarras.AtualizaDuplicataNossoNumero(wDUPLICATA,wNOSSO_NUMERO:String);
begin
   try
     Screen.Cursor := crHourGlass;
      DadosBase3.CdSatualizacao.Close;
      DadosBase3.CdSatualizacao.CommandText      := 'update CRCdUPLICATA set CRC_COD_COBRANCA = '''+wNOSSO_NUMERO+''',CRC_STATUS_EMISSAO = ''S'' where CRC_DUPLICATA = '''+wDUPLICATA+'''';
      DadosBase3.CdSatualizacao.Execute;
     Screen.Cursor := CrDefault;
   except on E:EDataBaseError do
     begin
        //beep;
        Screen.Cursor := CrDefault;
        uteis.erro  (Pchar('Impossível gravar no arquivo:'+#13#10+E.message));
     end;
   end;
end;

function TFrmBoletoCodBarras.MascraNossoNumero(wCOD_NOSSO, wBANCO: String): String;
begin
   if wBANCO = '104' then
      result :=  Copy(wCOD_NOSSO,01,15)+'-'+Copy(wCOD_NOSSO,16,01)
   else
   if wBANCO = '399' then
      result :=  Copy(wCOD_NOSSO,01,10)+'-'+Copy(wCOD_NOSSO,11,01);
end;

function TFrmBoletoCodBarras.CalcularDigitoNossoNumeroHSBCSemRegistro(sSequencia,sCodCedente,sVencimento:String) : string;
 var
   sParte1,
   sParte2,
   sParte3,
   sParteFinal,
   sDigito1,
   sDigito2,
   sDigito3 : string;
begin
   sSequencia           := Formatar(sSequencia,13,False,'0');
   sDigito1             := Modulo11(sSequencia,9,False);
   sParte1              := (sSequencia+sDigito1+'4');{4 é o tipo identificador}
   sParte2              := '8'+sCodCedente;{acresentar o numero 8 para código com 07 posições}
   sParte3              := (Copy(sVencimento,1,2)+Copy(sVencimento,4,2)+Copy(sVencimento,9,2));
   sParteFinal          := FloatToStr(StrToFloat(sParte1)+StrToFloat(sParte2)+StrToFloat(sParte3));
   sDigito2             := Modulo11(sParteFinal,9,False);
   Result               := sSequencia+sDigito1+'4'+sDigito2;
end;

function TFrmBoletoCodBarras.CalcularDigitoNossoNumeroHSBC(CodCliente,SequenciaTitulo:String): String;
 var
   wCodigoCedente,
   wSequencia,
   wDigitoNossoNumero : string;
begin
   wCodigoCedente        := Formatar(CodCliente,05,false,'0');
   wSequencia            := Formatar(SequenciaTitulo,05,false,'0');
   WDigitoNossoNumero    := Modulo11(wCodigoCedente+SequenciaTitulo,7,False);
   Result                := wCodigoCedente+wSequencia+WDigitoNossoNumero;
end;

(*
    if DataVencimento <> 0  then
    begin
       wDataVencimento    := FormatDateTime('ddmmyy',DataVencimento);
       wDigitoNossoNumero := Modulo11(IntToStr(StrToInt(wNossoNumero + wDigitoNossoNumero1 + '4') + StrToInt(wCodigoCedente) + StrToInt(wDataVencimento)));
       WDigitoNossoNumero := wDigitoNossoNumero1 + '4' + WDigitoNossoNumero;
    end
    else
    begin
       wDigitoNossoNumero := Modulo11(IntToStr(StrToInt(wNossoNumero + wDigitoNossoNumero1 + '5') + StrToInt(wCodigoCedente)));
       wDigitoNossoNumero := wDigitoNossoNumero1 + '5' + wDigitoNossoNumero;
    end;
    Result := wNossoNumero +'-'+wDigitoNossoNumero;
*)
function TFrmBoletoCodBarras.FormatarDataJuliano(dData: TDateTime): String;
 Var
   sDiaDoAno,
   sUltimoDigitoDoAno :String;
begin
      {
       O preenchimento da data de vencimento em formato juliano, somente deve
       ser feito, se e somente se, para tipo identificador "4" e com retorno
       dos 3 dígitos no arquivo magnético e demonstrativo de liquidação
       (condição cadastral).
       Data de vencimento informada através de mês juliano.  Exemplo:
       -  001  -  corresponde a 01 de janeiro
       -  042  -  corresponde a 11 de fevereiro
       A última posição dessas deve ser utilizada para representar o ano. Exemplo:
       -  0 a 7  -  corresponde: 2000 a 2007
       -  8 e 9  -  corresponde: 1998 e 1999
       Para o tipo identificador 5 ou tipo de identificador 4 sem o retorno dos
       3 dígitos, a data de vencimento no formato juliano deve ser zerada (0000).
      }
   if dData = 0 then
      result := '0000'
   else
   begin
       sDiaDoAno              := Formatar(IntToStr(Trunc(dData - EncodeDate(StrToInt(FormatDateTime('yyyy',dData))-1,12,31))),3,false,'0');
       sUltimoDigitoDoAno     := FormatDateTime('y',dData);
       result                 := sDiaDoAno + Copy(sUltimoDigitoDoAno,2,1);
   end;
end;

end.
