unit Fat0000_Romaneio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, System.StrUtils,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DBXFirebird, RDprint, Data.DB, Datasnap.DBClient, SimpleDS, Data.FMTBcd, Data.SqlExpr;

type
  TFrmFat0000_Romaneio = class(TForm)
    CdsImpNota: TSimpleDataSet;
    CdsImpNotaNF_REGISTRO: TIntegerField;
    CdsImpNotaNF_NOTANUMBER: TStringField;
    CdsImpNotaNF_EMISSAO: TDateField;
    CdsImpNotaNF_SAIDA: TDateField;
    CdsImpNotaNF_CONDPAGTO: TStringField;
    CdsImpNotaOPE_CODIGO: TStringField;
    CdsImpNotaOPE_NATUREZA: TStringField;
    CdsImpNotaOPE_AGRUPADO: TStringField;
    CdsImpNotaPED_CODIGO: TStringField;
    CdsImpNotaREP_CODIGO: TStringField;
    CdsImpNotaNF_ENTR_SAID: TStringField;
    CdsImpNotaNF_IMPRESS: TStringField;
    CdsImpNotaCLI_CODIGO: TStringField;
    CdsImpNotaNF_VLFRETE: TFMTBCdField;
    CdsImpNotaNF_VLSEGURO: TFMTBCdField;
    CdsImpNotaNF_DESP_ACES: TFMTBCdField;
    CdsImpNotaNF_ALIQ_ICMS: TFMTBCdField;
    CdsImpNotaNF_BASEICMS: TFMTBCdField;
    CdsImpNotaNF_VL_ICMS: TFMTBCdField;
    CdsImpNotaNF_VLBASESUBTRIB: TFMTBCdField;
    CdsImpNotaNF_VL_SUBTRIB: TFMTBCdField;
    CdsImpNotaNF_TOT_CSUB: TFMTBCdField;
    CdsImpNotaNF_TOT_PROD: TFMTBCdField;
    CdsImpNotaNF_TOT_NOTA: TFMTBCdField;
    CdsImpNotaNF_VL_IPI: TFMTBCdField;
    CdsImpNotaNF_BASE_IPI: TFMTBCdField;
    CdsImpNotaNF_VL_DESCTO: TFMTBCdField;
    CdsImpNotaNF_PLACAVE: TStringField;
    CdsImpNotaNF_QTDE: TFMTBCdField;
    CdsImpNotaNF_PESOBRU: TFMTBCdField;
    CdsImpNotaNF_PESOLIQ: TFMTBCdField;
    CdsImpNotaNF_ESPECIE: TStringField;
    CdsImpNotaNF_MARCA: TStringField;
    CdsImpNotaNF_NUMERO: TStringField;
    CdsImpNotaNF_INTERNO: TStringField;
    CdsImpNotaNF_CANCELADA: TStringField;
    CdsImpNotaPCL_CODIGO: TStringField;
    CdsImpNotaNF_AGRUPADO: TStringField;
    CdsImpNotaEMP_CODIGO: TStringField;
    CdsImpNotaCLI_BAIRRO: TStringField;
    CdsImpNotaCLI_CEP: TStringField;
    CdsImpNotaCLI_CGC: TStringField;
    CdsImpNotaCLI_CEPFAT: TStringField;
    CdsImpNotaCLI_CIDADE: TStringField;
    CdsImpNotaCLI_CEPENTR: TStringField;
    CdsImpNotaCLI_CIDENTR: TStringField;
    CdsImpNotaCLI_CIDFAT: TStringField;
    CdsImpNotaCLI_ENDENTR: TStringField;
    CdsImpNotaCLI_ENDERE: TStringField;
    CdsImpNotaCLI_ENDFAT: TStringField;
    CdsImpNotaCLI_INSC: TStringField;
    CdsImpNotaCLI_UF: TStringField;
    CdsImpNotaCLI_UFENTR: TStringField;
    CdsImpNotaCLI_UFFAT: TStringField;
    CdsImpNotaCLI_RAZAO: TStringField;
    CdsImpNotaCLI_FONE: TStringField;
    CdsImpNotaPED_OBSNOTA: TStringField;
    CdsImpNotaPED_FRETE: TStringField;
    CdsImpNotaPED_FRETE2: TStringField;
    CdsImpNotaTRP_CODIGO: TStringField;
    CdsImpNotaTRP_REDESP: TStringField;
    CdsImpNotaREP_NOME: TStringField;
    CdsImpNotaNF_OBS_OPER: TStringField;
    CdsImpNotaNF_OBS_PEDI: TStringField;
    CdsImpNotaAMX_CODIGO: TStringField;
    CdsImpNotaOPE_DESCRINATUREZA: TStringField;
    CdsImpNotaNF_OBSG1: TStringField;
    CdsImpNotaNF_OBSG2: TStringField;
    CdsImpNotaNF_OBSG3: TStringField;
    CdsImpNotaNF_OBSG4: TStringField;
    CdsImpNotaNF_OBSG5: TStringField;
    CdsImpNotaNF_OBSG6: TStringField;
    CdsImpNotaCLI_PESSOA: TStringField;
    CdsImpNotaNF_TP_DESCTO: TStringField;
    CdsImpNotaNF_PC_DESCTO1: TFMTBCdField;
    CdsImpNotaNF_PC_DESCTO2: TFMTBCdField;
    CdsImpNotaNF_BASE_ISS: TFMTBCdField;
    CdsImpNotaNF_VALOR_ISS: TFMTBCdField;
    CdsImpNotaOPE_REDU_ICM: TFMTBCdField;
    CdsImpNotaNF_OBS_OPER_AVISO2: TStringField;
    CdsImpNotaOPV_CODIGO: TIntegerField;
    CdsImpNotaOPE_NOTA_COMPLEMENTAR: TStringField;
    CdsImpNotaNF_OBSERVACAO: TBlobField;
    CdsImpNotaPED_OBSERVACAO: TBlobField;
    RdPrintRecibo: TRDprint;
    SqlCdsParcelas: TSimpleDataSet;
    SqlCdsParcelasFAT_REGISTRO: TIntegerField;
    SqlCdsParcelasFAT_CODIGO: TStringField;
    SqlCdsParcelasFPC_NUMER: TStringField;
    SqlCdsParcelasREP_CODIGO: TStringField;
    SqlCdsParcelasBAN_CODIGO: TStringField;
    SqlCdsParcelasCCT_CODIGO: TStringField;
    SqlCdsParcelasPCX_CODIGO: TStringField;
    SqlCdsParcelasFPC_DTEMIS: TSQLTimeStampField;
    SqlCdsParcelasFPC_NPARCELAS: TSmallintField;
    SqlCdsParcelasFPC_COBNUM: TStringField;
    SqlCdsParcelasFPC_COBTIPO: TStringField;
    SqlCdsParcelasFPC_TIPODOC: TStringField;
    SqlCdsParcelasFPC_SITPAG: TStringField;
    SqlCdsParcelasFPC_STATUS: TStringField;
    SqlCdsParcelasFPC_DESCTO: TFMTBCdField;
    SqlCdsParcelasFPC_DTDESC: TSQLTimeStampField;
    SqlCdsParcelasFPC_VENCTO: TSQLTimeStampField;
    SqlCdsParcelasFPC_PAGTO: TSQLTimeStampField;
    SqlCdsParcelasFPC_VLPARC: TFMTBCdField;
    SqlCdsParcelasFPC_VLPAGO: TFMTBCdField;
    SqlCdsParcelasFPC_OBS: TStringField;
    SqlCdsParcelasCLI_CODIGO: TStringField;
    SqlCdsParcelasFPC_IMPDUP: TStringField;
    SqlCdsParcelasFPC_JUROS: TFMTBCdField;
    SqlCdsParcelasFPC_MULTA: TFMTBCdField;
    SqlCdsParcelasFPC_VL_RET: TFMTBCdField;
    SqlCdsParcelasEMP_CODIGO: TStringField;
    SqlCdsParcelasCCT_NOVO: TStringField;
    SqlCdsParcelasFPC_PREVISAO: TStringField;
    SqlCdsParcelasBAN_APELIDO: TStringField;
    SqlCdsParcelasFPC_STATUS_REMESSA: TStringField;
    SqlCdsParcelasFPC_DATA_REMESSA: TDateField;
    SqlCdsParcelasBAN_COD_APELIDO: TIntegerField;
    SqlCdsParcelasFPC_STATUS_BAIXA: TStringField;
    RdPrintNotaFiscal: TRDprint;
    CdsItemNota: TSimpleDataSet;
    CdsItemNotaNF_REGISTRO: TIntegerField;
    CdsItemNotaNF_IT_NOTANUMER: TStringField;
    CdsItemNotaPRD_REFER: TStringField;
    CdsItemNotaPED_CODIGO: TStringField;
    CdsItemNotaNF_QTDE: TFMTBCdField;
    CdsItemNotaNF_PRECO: TFMTBCdField;
    CdsItemNotaNF_IPIALIQ: TFMTBCdField;
    CdsItemNotaIPI_CODIGO: TStringField;
    CdsItemNotaNF_VLSUBST: TFMTBCdField;
    CdsItemNotaNF_IDESCTO1: TFMTBCdField;
    CdsItemNotaNF_IDESCTO2: TFMTBCdField;
    CdsItemNotaEMP_CODIGO: TStringField;
    CdsItemNotaNF_ICMSALIQ: TFMTBCdField;
    CdsItemNotaNF_PMATPRIMA: TFMTBCdField;
    CdsItemNotaCLI_CODIGO: TStringField;
    CdsItemNotaPRD_UND: TStringField;
    CdsItemNotaPRD_REFER_EQUIV: TStringField;
    CdsItemNotaNF_TOTAL_CC: TCurrencyField;
    CdsItemNotaNF_TOTAL_IPI_CC: TCurrencyField;
    CdsItemNotaIC_IMPRESSO: TStringField;
    CdsItemNotaNF_COMISSAO: TFMTBCdField;
    CdsItemNotaNF_QTDE_VAR1: TFMTBCdField;
    CdsItemNotaNF_QTDE_VAR2: TFMTBCdField;
    CdsItemNotaNF_QTDE_VAR3: TFMTBCdField;
    CdsItemNotaNF_QTDE_VAR4: TFMTBCdField;
    CdsItemNotaNF_QTDE_VAR5: TFMTBCdField;
    CdsItemNotaNF_QTDE_VAR6: TFMTBCdField;
    CdsItemNotaNF_QTDE_VAR7: TFMTBCdField;
    CdsItemNotaNF_QTDE_VAR8: TFMTBCdField;
    CdsItemNotaPRD_DCVAR1: TStringField;
    CdsItemNotaPRD_DCVAR2: TStringField;
    CdsItemNotaPRD_DCVAR3: TStringField;
    CdsItemNotaPRD_DCVAR4: TStringField;
    CdsItemNotaPRD_DCVAR5: TStringField;
    CdsItemNotaPRD_DCVAR6: TStringField;
    CdsItemNotaPRD_DCVAR7: TStringField;
    CdsItemNotaPRD_DCVAR8: TStringField;
    CdsItemNotaCC_ID: TIntegerField;
    CdsItemNotaNF_FLAG_ATUALIZA_ESTOQUE: TStringField;
    CdsItemNotaNF_PRODUTO_AGREGADO: TStringField;
    CdsItemNotaPRD_ORIGEM: TIntegerField;
    CdsItemNotaPRD_COMPL: TStringField;
    CdsItemNotaPRD_DESCRI: TStringField;
    CdsItemNotaPRF_REGISTRO: TIntegerField;
    CdsItemNotaNF_IPIVALOR: TFMTBCdField;
    CdsItemNotaNF_ICMSVALOR: TFMTBCdField;
    CdsItemNotaNF_HORA: TTimeField;
    CdsItemNotaNTP_CFOP: TIntegerField;
    CdsItemNotaNF_IPIBASE: TFMTBCdField;
    CdsItemNotaNF_ICMSBASE: TFMTBCdField;
    CdsItemNotaNF_SUBTRIBASE: TFMTBCdField;
    CdsItemNotaNF_ALIQSUBTRIB: TFMTBCdField;
    CdsItemNotaNF_MVAPERC: TFMTBCdField;
    CdsItemNotaNF_ICMSREDUCAOPERC: TFMTBCdField;
    CdsItemNotaNF_ALIQDOSIMPLES: TFMTBCdField;
    CdsItemNotaNF_CREDICMSDOSIMPLES: TFMTBCdField;
    CdsItemNotaNF_IFRETE: TFMTBCdField;
    CdsItemNotaNF_ISEGURO: TFMTBCdField;
    CdsItemNotaNF_IDESP_ACES: TFMTBCdField;
    CdsItemNotaNF_IBASEISSQN: TFMTBCdField;
    CdsItemNotaNF_IALIQISSQN: TFMTBCdField;
    CdsItemNotaNF_IVLISSQN: TFMTBCdField;
    CdsItemNotaNF_CST_PIS: TFMTBCdField;
    CdsItemNotaNF_BASE_PIS: TFMTBCdField;
    CdsItemNotaNF_ALIQPIS: TFMTBCdField;
    CdsItemNotaNF_VLPIS: TFMTBCdField;
    CdsItemNotaNF_CST_COFINS: TFMTBCdField;
    CdsItemNotaNF_BASE_COFINS: TFMTBCdField;
    CdsItemNotaNF_ALIQCOFINS: TFMTBCdField;
    CdsItemNotaNF_VLCOFINS: TFMTBCdField;
    CdsItemNotaOPE_CODIGO: TStringField;
    CdsItemNotaAMX_CODIGO_DESTINO: TStringField;
    CdsItemNotaAMX_CODIGO_ORIGEM: TStringField;
    CdsItemNotaUSU_CODIGO: TIntegerField;
    CdsItemNotaPRD_CODIGO: TStringField;
    CdsItemNotaPRD_COMPL_DESCRI: TStringField;
    CdsItemNotaSTB_TRIBUTACAO: TStringField;
    CdsItemNotaPRDCO_CODIGO_ORIGINAL: TStringField;
    CdsItemNotaNF_TOTAL_PROD_AG: TAggregateField;
    qAux: TSQLQuery;
    CdsItemNotaPRG_REGISTRO: TIntegerField;
  private
    { Private declarations }
  public
        procedure imprima( pNumNf: string );
  end;

var
  FrmFat0000_Romaneio: TFrmFat0000_Romaneio;

implementation

{$R *.dfm}

uses uteis, InicioDB, datacad, rwFunc;

{ TFrmFat0000_Romaneio }

procedure TFrmFat0000_Romaneio.imprima( pNumNf: string );
var
    wLinha, I:Integer;
    wTotLiq, wTotBruto, wPesoTotal : Real;
    wSeqItens:String;
    wsql1, wsql2, wsql3, wsql4, wsql5, wseleciona, woredem: string;
    wDUPLICATA      : array[1..6]      of String;
    wVENCIMENTO     : array[1..6]      of String;
    wVALOR_DUPLICATA: array[1..6]      of double;

begin
    {********************************************************************
    * Objetivo : Imprime Recibo da Nota Fiscal
    **********************************************************************}
    {Seleciona a nota fiscal}
    wPesoTotal := 0;
    CdsImpNota.Close;
    CdsImpNota.DataSet.CommandText := 'select n1.NF_REGISTRO, n1.NF_NOTANUMBER, n1.NF_EMISSAO, n1.NF_SAIDA, n1.NF_VLFRETE, n1.NF_VLSEGURO, n1.NF_DESP_ACES, n1.NF_ALIQ_ICMS, '+
                                      '       n1.NF_BASEICMS, n1.NF_VL_ICMS, n1.NF_VLBASESUBTRIB, n1.NF_VL_SUBTRIB, n1.NF_TOT_CSUB, n1.NF_TOT_PROD, n1.NF_TOT_NOTA, n1.NF_VL_IPI, '+
                                      '       n1.NF_BASE_IPI, n1.NF_VL_DESCTO, n1.NF_PLACAVE, n1.NF_QTDE, n1.NF_PESOBRU, n1.NF_PESOLIQ, n1.NF_ESPECIE, n1.NF_MARCA, n1.NF_NUMERO, '+
                                      '       n1.NF_INTERNO, n1.NF_CANCELADA, n1.PCL_CODIGO, n1.NF_AGRUPADO, n1.EMP_CODIGO, c1.CLI_BAIRRO, c1.CLI_CEP, c1.CLI_CGC, c1.CLI_CEPFAT, '+
                                      '       c1.CLI_CIDADE, c1.CLI_CEPENTR, c1.CLI_CIDENTR, c1.CLI_CIDFAT, c1.CLI_ENDENTR, c1.CLI_ENDERE, c1.CLI_ENDFAT, c1.CLI_INSC, c1.CLI_UF, '+
                                      '       c1.CLI_UFENTR, c1.CLI_UFFAT, c1.CLI_RAZAO, c1.CLI_FONE, PED_OBSNOTA, PED_FRETE, PED_FRETE2, P1.TRP_CODIGO, P1.TRP_REDESP, R1.REP_NOME, '+
                                      '       n1.NF_OBS_OPER, n1.NF_OBS_PEDI, n1.AMX_CODIGO, o1.OPE_DESCRINATUREZA, n1.NF_OBSG1, n1.NF_OBSG2, n1.NF_OBSG3, n1.NF_OBSG4, n1.NF_OBSG5, '+
                                      '       n1.NF_OBSG6, c1.CLI_PESSOA, n1.NF_TP_DESCTO, n1.NF_PC_DESCTO1, n1.NF_PC_DESCTO2, n1.NF_BASE_ISS, n1.NF_VALOR_ISS, o1.OPE_REDU_ICM, '+
                                      '       n1.NF_OBS_OPER_AVISO2, n1.OPV_CODIGO, o1.OPE_NOTA_COMPLEMENTAR, n1.NF_OBSERVACAO, p1.PED_OBSERVACAO, '+
                                      '       N1.NF_CONDPAGTO, O1.OPE_CODIGO, O1.OPE_NATUREZA, O1.OPE_AGRUPADO, P1.PED_CODIGO, P1.REP_CODIGO, N1.NF_ENTR_SAID, '+
                                      '       N1.NF_IMPRESS, C1.CLI_CODIGO '+
                                      'from NF0001 N1 '+
                                      '     join OPE0000 O1 on O1.OPE_CODIGO = N1.OPE_CODIGO '+
                                      '     join PED0000 P1 on P1.PED_CODIGO = N1.PED_CODIGO AND P1.EMP_CODIGO = N1.EMP_CODIGO '+
                                      '     join CLI0000 C1 on C1.CLI_CODIGO = N1.CLI_CODIGO '+
                                      '     left join REP0000 R1 on R1.REP_CODIGO = P1.REP_CODIGO '+
                                      '     left join TRP0000 T1 on T1.TRP_CODIGO = P1.TRP_CODIGO '+
                                      '     left join TRP0000 T2 on T2.TRP_CODIGO = P1.TRP_REDESP '+
                                      'where n1.NF_NOTANUMBER = '+qStr(pNumNf)+' AND n1.NF_CANCELADA = '+qStr('N')+
                                      ConcatSe( ' and n1.',dbInicio.ExclusivoSql('PEDIDOS') ) ;


    CdsImpNota.Open;
    if (CdsImpNota.IsEmpty = FALSE) then
       begin
           RDPrintRecibo.Abrir;
           RDPrintRecibo.OpcoesPreview.Preview := true;
           //                                  1        2        3        4        5        6        7        8        9        0
           //                         0123456790123456790123456790123456790123456790123456790123456790123456790123456790123456790
           if DBInicio.GetParametroSistema('PMT_PEDIDO_IND_PLASTICA') = 'S' then
           begin
             RDPrintRecibo.Imp (002,001,'---------------------------------------------------------------------------------------------------------------------------------------');
             RDPrintRecibo.ImpF(003,001,'Romaneio de Entrega Nº:'+CdsImpNotaNF_NOTANUMBER.AsString,[expandido]);
             RDPrintRecibo.ImpF(003,98,'Emissão : '+CdsImpNotaNF_EMISSAO.AsString,[negrito]);
             RDPrintRecibo.Imp (004,001,'---------------------------------------------------------------------------------------------------------------------------------------');
             RDPrintRecibo.Imp (005,009,'Cliente  : '+CdsImpNotaCLI_CODIGO.AsString+ ' - '+CdsImpNotaCLI_RAZAO.AsString);
             //RDPrintRecibo.ImpF(007,020,CdsImpNotaCLI_RAZAO.AsString,[expandido]);
             RDPrintRecibo.Imp (006,009,'Endereço : '+CdsImpNotaCLI_ENDERE.AsString);
             RDPrintRecibo.Imp (007,009,'Bairro   : '+CdsImpNotaCLI_BAIRRO.AsString);
             RDPrintRecibo.Imp (008,009,'Cidade   : '+MascaraCep(CdsImpNotaCLI_CEP.AsString) +'   '+ trim(CdsImpNotaCLI_CIDADE.AsString)+' - '+CdsImpNotaCLI_UF.AsString);
  //           RDPrintRecibo.Imp (010,020,trim(CdsImpNotaCLI_CIDADE.AsString)+' - '+CdsImpNotaCLI_UF.AsString);
             RDPrintRecibo.Imp (009,009,'Fone     : '+MascaraFone(CdsImpNotaCLI_FONE.AsString));
//             RDPrintRecibo.Imp (010,009,'CNPJ/CPF : '+MascaraCNPJ_CPF(CdsImpNotaCLI_CGC.AsString)+'   -    Insc.Estadual: '+CdsImpNotaCLI_INSC.AsString);
             RDPrintRecibo.Imp (010,001,'---------------------------------------------------------------------------------------------------------------------------------------');
             RDPrintRecibo.Imp (011,001,'*** CONDIÇÕES DE PAGAMENTO :');
             RDPrintRecibo.Imp (011,090,'Nº de volumes :');
             RDPrintRecibo.ImpVal (011,107,'#,##0',CdsImpNotaNF_QTDE.AsInteger,[]);
             {Busca a Descriçao da Condição de Pagto}
             DataCadastros.sqlUpdate.Close;
             DataCadastros.SqlUpdate.sql.text :=SQLDEF('TABELAS','Select PCL_CODIGO,PCL_NOME,PCL_DISPONIVEL,EMP_CODIGO from PCL0000','where PCL_CODIGO = '''+CdsImpNotaPCL_CODIGO.AsString+'''','PCL_CODIGO','');
             DataCadastros.sqlUpdate.Open;
             RDPrintRecibo.ImpF(011,030,DataCadastros.sqlUpdate.FieldByName('PCL_NOME').AsString,[negrito]);
             DataCadastros.sqlUpdate.Close;
             {Busca parcelas e carregar arrays}
             try
               SqlCdsParcelas.Close;
               SqlCdsParcelas.DATASET.CommandText := SQLDEF('RECEBER','select F1.*,B1.BAN_APELIDO from FAT_PC01 F1 left join BAN0000 B1 on B1.BAN_CODIGO = F1.BAN_CODIGO ','Where F1.FAT_CODIGO = '''+CdsImpNotaNF_NOTANUMBER.AsString+'''','F1.FAT_CODIGO','F1.');
               SqlCdsParcelas.Open;
             except on  E:EDataBaseError do
                uteis.erro  (pchar('Erro ao localizar as parcelas ! '+e.message));
             end;
             //
             i:=1;
             wLinha := 13;
             SqlCdsParcelas.First;
             while not SqlCdsParcelas.Eof do
              begin
                  if i <=6 then
                     begin
                         wVENCIMENTO[i]         :=SqlCdsParcelasFPC_Vencto.AsString;
                         wVALOR_DUPLICATA[i]    :=SqlCdsParcelasFPC_VLPARC.AsCurrency;
                     end
                  else
                     begin
                         uteis.aviso('Ative o suporte técnico : a NF aceita no máximo 6 parcelas');
                         break;
                     end;
                   //
                   SqlCdsParcelas.Next;
                   i:=i+1;
              end;
             {DADOS DAS PARCELAS DA FATURA}
             if wVALOR_DUPLICATA[1] > 0 then
                begin
                    {VENCIMENTO1}
                    RDprintNotaFiscal.Imp   (wLinha,001,wVENCIMENTO[1]);
                    {VALOR1}
                    RDprintNotaFiscal.ImpVal(wLinha,015,'##,###,##0.00', wVALOR_DUPLICATA[1],[]);
                end;
             if wVALOR_DUPLICATA[2] > 0 then
                begin
                    {VENCIMENTO1}
                    RDprintNotaFiscal.Imp   (wLinha,030,wVENCIMENTO[2]);
                    {VALOR1}
                    RDprintNotaFiscal.ImpVal(wLinha,044,'##,###,##0.00', wVALOR_DUPLICATA[2],[]);
                end;
             if wVALOR_DUPLICATA[3] > 0 then
                begin
                    {VENCIMENTO1}
                    RDprintNotaFiscal.Imp   (wLinha,060,wVENCIMENTO[3]);
                    {VALOR1}
                    RDprintNotaFiscal.ImpVal(wLinha,074,'##,###,##0.00', wVALOR_DUPLICATA[3],[]);
                end;
             if wVALOR_DUPLICATA[4] > 0 then
                begin
                    Inc(wLinha);
                    {VENCIMENTO1}
                    RDprintNotaFiscal.Imp   (wLinha,001,wVENCIMENTO[4]);
                    {VALOR1}
                    RDprintNotaFiscal.ImpVal(wLinha,015,'##,###,##0.00', wVALOR_DUPLICATA[4],[]);
                end;
             if wVALOR_DUPLICATA[5] > 0 then
                begin
                    {VENCIMENTO1}
                    RDprintNotaFiscal.Imp   (wLinha,030,wVENCIMENTO[5]);
                    {VALOR1}
                    RDprintNotaFiscal.ImpVal(wLinha,044,'##,###,##0.00', wVALOR_DUPLICATA[5],[]);
                end;
             if wVALOR_DUPLICATA[6] > 0 then
                begin
                    {VENCIMENTO1}
                    RDprintNotaFiscal.Imp   (wLinha,060,wVENCIMENTO[6]);
                    {VALOR1}
                    RDprintNotaFiscal.ImpVal(wLinha,074,'##,###,##0.00', wVALOR_DUPLICATA[6],[]);
                end;
           end
           else
           begin
             RDPrintRecibo.ImpF(002,001, dbInicio.Empresa.RAZAO,[expandido]);
             RDPrintRecibo.ImpF(003,001, trim(dbInicio.Empresa.CIDADE)+'/'+dbInicio.Empresa.UF,[expandido]);
             RDPrintRecibo.ImpF(003,114,'Emissão : '+CdsImpNotaNF_EMISSAO.AsString,[negrito]);
             RDPrintRecibo.Imp (004,001,'---------------------------------------------------------------------------------------------------------------------------------------');
             RDPrintRecibo.ImpF(005,001,'Romaneio de Entrega Nº:'+CdsImpNotaNF_NOTANUMBER.AsString,[expandido]);
             RDPrintRecibo.ImpF(005,98,'Pedido:'+CdsImpNotaPED_CODIGO.AsString,[expandido]);
             RDPrintRecibo.Imp (006,001,'---------------------------------------------------------------------------------------------------------------------------------------');
             RDPrintRecibo.Imp (007,009,'Cliente  : '+CdsImpNotaCLI_CODIGO.AsString+ ' - '+CdsImpNotaCLI_RAZAO.AsString);
             //RDPrintRecibo.ImpF(007,020,CdsImpNotaCLI_RAZAO.AsString,[expandido]);
             RDPrintRecibo.Imp (008,009,'Endereço : '+CdsImpNotaCLI_ENDERE.AsString);
             RDPrintRecibo.Imp (009,009,'Bairro   : '+CdsImpNotaCLI_BAIRRO.AsString);
             RDPrintRecibo.Imp (010,009,'Cidade   : '+MascaraCep(CdsImpNotaCLI_CEP.AsString) +'   '+ trim(CdsImpNotaCLI_CIDADE.AsString)+' - '+CdsImpNotaCLI_UF.AsString);
  //           RDPrintRecibo.Imp (010,020,trim(CdsImpNotaCLI_CIDADE.AsString)+' - '+CdsImpNotaCLI_UF.AsString);
             RDPrintRecibo.Imp (011,009,'Fone     : '+MascaraFone(CdsImpNotaCLI_FONE.AsString));
             RDPrintRecibo.Imp (012,009,'CNPJ/CPF : '+MascaraCNPJ_CPF(CdsImpNotaCLI_CGC.AsString)+'   -    Insc.Estadual: '+CdsImpNotaCLI_INSC.AsString);
             RDPrintRecibo.Imp (013,001,'---------------------------------------------------------------------------------------------------------------------------------------');
             RDPrintRecibo.Imp (014,001,'*** CONDIÇÕES DE PAGAMENTO :');
             RDPrintRecibo.Imp (014,090,'Nº de volumes :');
             RDPrintRecibo.ImpVal (014,107,'#,##0',CdsImpNotaNF_QTDE.AsInteger,[]);
             {Busca a Descriçao da Condição de Pagto}
             DataCadastros.sqlUpdate.Close;
             DataCadastros.SqlUpdate.sql.text :=SQLDEF('TABELAS','Select PCL_CODIGO,PCL_NOME,PCL_DISPONIVEL,EMP_CODIGO from PCL0000','where PCL_CODIGO = '''+CdsImpNotaPCL_CODIGO.AsString+'''','PCL_CODIGO','');
             DataCadastros.sqlUpdate.Open;
             RDPrintRecibo.ImpF(014,030,DataCadastros.sqlUpdate.FieldByName('PCL_NOME').AsString,[negrito]);
             DataCadastros.sqlUpdate.Close;
             {Busca parcelas e carregar arrays}
             try
               SqlCdsParcelas.Close;
               SqlCdsParcelas.DATASET.CommandText := SQLDEF('RECEBER','select F1.*,B1.BAN_APELIDO from FAT_PC01 F1 left join BAN0000 B1 on B1.BAN_CODIGO = F1.BAN_CODIGO ','Where F1.FAT_CODIGO = '''+CdsImpNotaNF_NOTANUMBER.AsString+'''','F1.FAT_CODIGO','F1.');
               SqlCdsParcelas.Open;
             except on  E:EDataBaseError do
                uteis.erro  (pchar('Erro ao localizar as parcelas ! '+e.message));
             end;
             //
             i:=1;
             wLinha := 15;
             SqlCdsParcelas.First;
             while not SqlCdsParcelas.Eof do
              begin
                  if i <=6 then
                     begin
                         wVENCIMENTO[i]         :=SqlCdsParcelasFPC_Vencto.AsString;
                         wVALOR_DUPLICATA[i]    :=SqlCdsParcelasFPC_VLPARC.AsCurrency;
                     end
                  else
                     begin
                         uteis.aviso('Ative o suporte técnico : a NF aceita no máximo 6 parcelas');
                         break;
                     end;
                   //
                   SqlCdsParcelas.Next;
                   i:=i+1;
              end;
             {DADOS DAS PARCELAS DA FATURA}
             if wVALOR_DUPLICATA[1] > 0 then
                begin
                    {VENCIMENTO1}
                    RDprintNotaFiscal.Imp   (wLinha,001,wVENCIMENTO[1]);
                    {VALOR1}
                    RDprintNotaFiscal.ImpVal(wLinha,015,'##,###,##0.00', wVALOR_DUPLICATA[1],[]);
                end;
             if wVALOR_DUPLICATA[2] > 0 then
                begin
                    {VENCIMENTO1}
                    RDprintNotaFiscal.Imp   (wLinha,030,wVENCIMENTO[2]);
                    {VALOR1}
                    RDprintNotaFiscal.ImpVal(wLinha,044,'##,###,##0.00', wVALOR_DUPLICATA[2],[]);
                end;
             if wVALOR_DUPLICATA[3] > 0 then
                begin
                    {VENCIMENTO1}
                    RDprintNotaFiscal.Imp   (wLinha,060,wVENCIMENTO[3]);
                    {VALOR1}
                    RDprintNotaFiscal.ImpVal(wLinha,074,'##,###,##0.00', wVALOR_DUPLICATA[3],[]);
                end;
             if wVALOR_DUPLICATA[4] > 0 then
                begin
                    Inc(wLinha);
                    {VENCIMENTO1}
                    RDprintNotaFiscal.Imp   (wLinha,001,wVENCIMENTO[4]);
                    {VALOR1}
                    RDprintNotaFiscal.ImpVal(wLinha,015,'##,###,##0.00', wVALOR_DUPLICATA[4],[]);
                end;
             if wVALOR_DUPLICATA[5] > 0 then
                begin
                    {VENCIMENTO1}
                    RDprintNotaFiscal.Imp   (wLinha,030,wVENCIMENTO[5]);
                    {VALOR1}
                    RDprintNotaFiscal.ImpVal(wLinha,044,'##,###,##0.00', wVALOR_DUPLICATA[5],[]);
                end;
             if wVALOR_DUPLICATA[6] > 0 then
                begin
                    {VENCIMENTO1}
                    RDprintNotaFiscal.Imp   (wLinha,060,wVENCIMENTO[6]);
                    {VALOR1}
                    RDprintNotaFiscal.ImpVal(wLinha,074,'##,###,##0.00', wVALOR_DUPLICATA[6],[]);
                end;

           end;

             Inc(wLinha);
             RDPrintRecibo.Imp (wLinha,001,'---------------------------------------------------------------------------------------------------------------------------------------');
           Inc(wLinha);
           RDPrintRecibo.Imp (wLinha,001,'        Qtde  Und Produto                                                                         Vl.Unitário        Vl.Total');
           Inc(wLinha);
           RDPrintRecibo.Imp (wLinha,001,'---------------------------------------------------------------------------------------------------------------------------------------');
           Inc(wLinha);


           wSql1      := 'Select NF.*,PD.PRD_ORIGEM,CL.CLI_CODIGO,PD.PRD_UND,PD.PRD_COMPL,PD.PRD_DCVAR1,' +
                         'PD.PRD_DCVAR2,PD.PRD_DCVAR3,PD.PRD_DCVAR4,PD.PRD_DCVAR5,PD.PRD_DCVAR6,PD.PRD_DCVAR7,' +
                         'PD.PRD_DCVAR8,PQ.PRD_REFER_EQUIV ' +
                         ' FROM NF_IT01 NF ';
           wSql2      := '  LEFT JOIN NF0001 CL ON (NF.nf_it_notanumer = CL.nf_notanumber) ' +
                         '  LEFT JOIN PRD0000 PD ON (PD.PRD_REFER = NF.PRD_REFER) ' +
                         '  LEFT JOIN PRD_EQUIV PQ ON (PD.prd_refer = PQ.prd_refer) AND (CL.CLI_CODIGO = PQ.CLI_CODIGO) ';
           //
           wSeleciona := 'where NF.NF_IT_NOTANUMER = '''+pNumNf+''' and CL.ped_codigo = '''+CdsImpNotaPED_CODIGO.Value+''' and NF.NF_QTDE > 0 AND NF.EMP_CODIGO = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO);
           wOrdem     := 'NF.NF_IT_NOTANUMER';
           CdsItemNota.Close;
           CdsItemNota.DATASET.CommandText := SQLDef('PEDIDOS',wSql1+wSql2,wSeleciona,wOrdem,'NF.');
           CdsItemNota.Open;



           //
           wTotLiq := 0; wTotBruto := 0;
           CdsItemNota.First;
           while not CdsItemNota.Eof do
            begin

              qAux.Close;
              qAux.SQL.Text := 'SELECT PRF_PESOKG, PRD_PESOLIQ, PRF_PESO, PRF_QTDE, ' +
                               ' CASE WHEN pi.PRD_UND IS NULL THEN pr.PRD_UND ELSE pi.PRD_UND END AS PRD_UND' +
                               ' FROM PED_IT01 pi ' +
                               ' JOIN PRD0000 pr ON PR.PRD_REFER = PI.PRD_REFER ' +
                               ' WHERE pi.PED_CODIGO = ' + QuotedStr(CdsItemNotaPED_CODIGO.AsString) +
                               '   AND pi.PRD_REFER = ' + QuotedStr(CdsItemNotaPRD_REFER.AsString) +
                               '   AND pi.PRG_REGISTRO = ' + IntToStr(CdsItemNotaPRG_REGISTRO.AsInteger) +
                               '   AND pi.PRF_QTDE = ' + FloatToSQL(CdsItemNotaNF_QTDE.AsCurrency) +
                               '   AND pi.EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo) ;
              qAux.Open;

              if wlinha =66 then
              begin
                wlinha := 2;
                RDPrintRecibo.Novapagina;
                RDPrintRecibo.Imp (wLinha,001,'---------------------------------------------------------------------------------------------------------------------------------------');
                Inc(wLinha);
                RDPrintRecibo.Imp (wLinha,001,'        Qtde  Und Produto                                                                         Vl.Unitário        Vl.Total');
                Inc(wLinha);
                RDPrintRecibo.Imp (wLinha,001,'---------------------------------------------------------------------------------------------------------------------------------------');
                Inc(wLinha);
              end;

                if (dbinicio.empresa.wVariacaoNota = 'S') then
                   begin
                       FOR I := 1 TO 8 DO
                        begin
                            {Var1}
                            if (I = 1) and (CdsItemNotaNF_QTDE_VAR1.AsCurrency > 0) then
                               begin
                                   RDPrintRecibo.Imp   (wLinha,001,'[__]');
                                   RDPrintRecibo.ImpVal(wLinha,005,'#,##0.000  ',CdsItemNotaNF_QTDE_VAR1.AsCurrency,[]);
                                   RDPrintRecibo.Imp   (wLinha,015,qAux.FieldByName('PRD_UND').AsString);
                                   RDPrintRecibo.Imp   (wLinha,019,CdsItemNotaPRD_REFER.AsString);
                                   RDPrintRecibo.Imp   (wLinha,030,trim(CdsItemNotaPRD_DESCRI.AsString)+' - '+trim(CdsItemNotaPRD_DCVAR1.AsString));
                                   RDPrintRecibo.ImpVal(wLinha,099,'#,##0.00',CdsItemNotaNF_PRECO.AsFloat,[]);
                                  // RDPrintRecibo.ImpVal(wLinha,099,'#,##0.00',(((CdsItemNotaNF_QTDE_VAR1.AsCurrency * CdsItemNotaNF_PRECO.AsCurrency) * CdsItemNotaNF_IPIALIQ.AsCurrency)/100)+(CdsItemNotaNF_QTDE_VAR1.AsCurrency * CdsItemNotaNF_PRECO.AsCurrency),[]);
                                   RDPrintRecibo.ImpVal(wLinha,115,'#,##0.00',(CdsItemNotaNF_QTDE_VAR1.AsCurrency * CdsItemNotaNF_PRECO.AsFloat),[]);
//                                   RDPrintRecibo.ImpVal(wLinha,115,'#,##0.00',(CdsItemNotaNF_QTDE_VAR1.AsCurrency * CdsItemNotaNF_PRECO.AsFloat),[]);
                                   Inc(wLinha);
                               end;
                            {Var2}
                            if (I = 2) and (CdsItemNotaNF_QTDE_VAR2.AsCurrency > 0) then
                               begin
                                   RDPrintRecibo.Imp   (wLinha,001,'[__]');
                                   RDPrintRecibo.ImpVal(wLinha,005,'#,##0.000  ',CdsItemNotaNF_QTDE_VAR2.AsCurrency,[]);
                                   RDPrintRecibo.Imp   (wLinha,015,qAux.FieldByName('PRD_UND').AsString);
                                   RDPrintRecibo.Imp   (wLinha,019,CdsItemNotaPRD_REFER.AsString);
                                   RDPrintRecibo.Imp   (wLinha,030,trim(CdsItemNotaPRD_DESCRI.AsString)+' - '+trim(CdsItemNotaPRD_DCVAR2.AsString));
                                   RDPrintRecibo.ImpVal(wLinha,099,'#,##0.00',CdsItemNotaNF_PRECO.AsFloat,[]);
                                   //RDPrintRecibo.ImpVal(wLinha,099,'#,##0.00',(((CdsItemNotaNF_QTDE_VAR2.AsCurrency * CdsItemNotaNF_PRECO.AsCurrency) * CdsItemNotaNF_IPIALIQ.AsCurrency)/100)+(CdsItemNotaNF_QTDE_VAR2.AsCurrency * CdsItemNotaNF_PRECO.AsCurrency),[]);
                                   RDPrintRecibo.ImpVal(wLinha,115,'#,##0.00',(CdsItemNotaNF_QTDE_VAR2.AsCurrency * CdsItemNotaNF_PRECO.AsFloat),[]);
                                   Inc(wLinha);
                               end;
                            {Var3}
                            if (I = 3) and (CdsItemNotaNF_QTDE_VAR3.AsCurrency > 0) then
                               begin
                                   RDPrintRecibo.Imp   (wLinha,001,'[__]');
                                   RDPrintRecibo.ImpVal(wLinha,005,'#,##0.000  ',CdsItemNotaNF_QTDE_VAR3.AsCurrency,[]);
                                   RDPrintRecibo.Imp   (wLinha,015,qAux.FieldByName('PRD_UND').AsString);
                                   RDPrintRecibo.Imp   (wLinha,019,CdsItemNotaPRD_REFER.AsString);
                                   RDPrintRecibo.Imp   (wLinha,030,trim(CdsItemNotaPRD_DESCRI.AsString)+' - '+trim(CdsItemNotaPRD_DCVAR3.AsString));
                                   RDPrintRecibo.ImpVal(wLinha,099,'#,##0.00',CdsItemNotaNF_PRECO.AsFloat,[]);
                                   //RDPrintRecibo.ImpVal(wLinha,099,'#,##0.00',(((CdsItemNotaNF_QTDE_VAR3.AsCurrency * CdsItemNotaNF_PRECO.AsCurrency) * CdsItemNotaNF_IPIALIQ.AsCurrency)/100)+(CdsItemNotaNF_QTDE_VAR3.AsCurrency * CdsItemNotaNF_PRECO.AsCurrency),[]);
                                   RDPrintRecibo.ImpVal(wLinha,115,'#,##0.00',(CdsItemNotaNF_QTDE_VAR3.AsCurrency * CdsItemNotaNF_PRECO.AsFloat),[]);
                                   Inc(wLinha);
                               end;
                            {Var4}
                            if (I = 4) and (CdsItemNotaNF_QTDE_VAR4.AsCurrency > 0) then
                               begin
                                   RDPrintRecibo.Imp   (wLinha,001,'[__]');
                                   RDPrintRecibo.ImpVal(wLinha,005,'#,##0.000  ',CdsItemNotaNF_QTDE_VAR4.AsCurrency,[]);
                                   RDPrintRecibo.Imp   (wLinha,015,qAux.FieldByName('PRD_UND').AsString);
                                   RDPrintRecibo.Imp   (wLinha,019,CdsItemNotaPRD_REFER.AsString);
                                   RDPrintRecibo.Imp   (wLinha,030,trim(CdsItemNotaPRD_DESCRI.AsString)+' - '+trim(CdsItemNotaPRD_DCVAR4.AsString));
                                   RDPrintRecibo.ImpVal(wLinha,099,'#,##0.00',CdsItemNotaNF_PRECO.AsFloat,[]);
                                   //RDPrintRecibo.ImpVal(wLinha,099,'#,##0.00',(((CdsItemNotaNF_QTDE_VAR4.AsCurrency * CdsItemNotaNF_PRECO.AsCurrency) * CdsItemNotaNF_IPIALIQ.AsCurrency)/100)+(CdsItemNotaNF_QTDE_VAR4.AsCurrency * CdsItemNotaNF_PRECO.AsCurrency),[]);
                                   RDPrintRecibo.ImpVal(wLinha,115,'#,##0.00',(CdsItemNotaNF_QTDE_VAR4.AsCurrency * CdsItemNotaNF_PRECO.AsFloat),[]);
                                   Inc(wLinha);
                               end;
                            {Var5}
                            if (I = 5) and (CdsItemNotaNF_QTDE_VAR5.AsCurrency > 0) then
                               begin
                                   RDPrintRecibo.Imp   (wLinha,001,'[__]');
                                   RDPrintRecibo.ImpVal(wLinha,005,'#,##0.000  ',CdsItemNotaNF_QTDE_VAR5.AsCurrency,[]);
                                   RDPrintRecibo.Imp   (wLinha,015,qAux.FieldByName('PRD_UND').AsString);
                                   RDPrintRecibo.Imp   (wLinha,019,CdsItemNotaPRD_REFER.AsString);
                                   RDPrintRecibo.Imp   (wLinha,030,trim(CdsItemNotaPRD_DESCRI.AsString)+' - '+trim(CdsItemNotaPRD_DCVAR5.AsString));
                                   RDPrintRecibo.ImpVal(wLinha,099,'#,##0.00',CdsItemNotaNF_PRECO.AsFloat,[]);
                                   //RDPrintRecibo.ImpVal(wLinha,099,'#,##0.00',(((CdsItemNotaNF_QTDE_VAR5.AsCurrency * CdsItemNotaNF_PRECO.AsCurrency) * CdsItemNotaNF_IPIALIQ.AsCurrency)/100)+(CdsItemNotaNF_QTDE_VAR5.AsCurrency * CdsItemNotaNF_PRECO.AsCurrency),[]);
                                   RDPrintRecibo.ImpVal(wLinha,115,'#,##0.00',(CdsItemNotaNF_QTDE_VAR5.AsCurrency * CdsItemNotaNF_PRECO.AsFloat),[]);
                                   Inc(wLinha);
                               end;
                            {Var6}
                            if (I = 6) and (CdsItemNotaNF_QTDE_VAR6.AsCurrency > 0) then
                               begin
                                   RDPrintRecibo.Imp   (wLinha,001,'[__]');
                                   RDPrintRecibo.ImpVal(wLinha,005,'#,##0.000  ',CdsItemNotaNF_QTDE_VAR6.AsCurrency,[]);
                                   RDPrintRecibo.Imp   (wLinha,015,qAux.FieldByName('PRD_UND').AsString);
                                   RDPrintRecibo.Imp   (wLinha,019,CdsItemNotaPRD_REFER.AsString);
                                   RDPrintRecibo.Imp   (wLinha,030,trim(CdsItemNotaPRD_DESCRI.AsString)+' - '+trim(CdsItemNotaPRD_DCVAR6.AsString));
                                   RDPrintRecibo.ImpVal(wLinha,099,'#,##0.00',CdsItemNotaNF_PRECO.AsFloat,[]);
                                   //RDPrintRecibo.ImpVal(wLinha,099,'#,##0.00',(((CdsItemNotaNF_QTDE_VAR6.AsCurrency * CdsItemNotaNF_PRECO.AsCurrency) * CdsItemNotaNF_IPIALIQ.AsCurrency)/100)+(CdsItemNotaNF_QTDE_VAR6.AsCurrency * CdsItemNotaNF_PRECO.AsCurrency),[]);
                                   RDPrintRecibo.ImpVal(wLinha,115,'#,##0.00',(CdsItemNotaNF_QTDE_VAR6.AsCurrency * CdsItemNotaNF_PRECO.AsFloat),[]);
                                   Inc(wLinha);
                               end;
                            {Var7}
                            if (I = 7) and (CdsItemNotaNF_QTDE_VAR7.AsCurrency > 0) then
                               begin
                                   RDPrintRecibo.Imp   (wLinha,001,'[__]');
                                   RDPrintRecibo.ImpVal(wLinha,005,'#,##0.000  ',CdsItemNotaNF_QTDE_VAR7.AsCurrency,[]);
                                   RDPrintRecibo.Imp   (wLinha,015,qAux.FieldByName('PRD_UND').AsString);
                                   RDPrintRecibo.Imp   (wLinha,019,CdsItemNotaPRD_REFER.AsString);
                                   RDPrintRecibo.Imp   (wLinha,030,trim(CdsItemNotaPRD_DESCRI.AsString)+' - '+trim(CdsItemNotaPRD_DCVAR7.AsString));
                                   RDPrintRecibo.ImpVal(wLinha,099,'#,##0.00',CdsItemNotaNF_PRECO.AsFloat,[]);
                                  // RDPrintRecibo.ImpVal(wLinha,099,'#,##0.00',(((CdsItemNotaNF_QTDE_VAR7.AsCurrency * CdsItemNotaNF_PRECO.AsCurrency) * CdsItemNotaNF_IPIALIQ.AsCurrency)/100)+(CdsItemNotaNF_QTDE_VAR7.AsCurrency * CdsItemNotaNF_PRECO.AsCurrency),[]);
                                   RDPrintRecibo.ImpVal(wLinha,115,'#,##0.00',(CdsItemNotaNF_QTDE_VAR7.AsCurrency * CdsItemNotaNF_PRECO.AsFloat),[]);
                                   Inc(wLinha);
                               end;
                            {Var8}
                            if (I = 8) and (CdsItemNotaNF_QTDE_VAR8.AsCurrency > 0) then
                               begin
                                   RDPrintRecibo.Imp   (wLinha,001,'[__]');
                                   RDPrintRecibo.ImpVal(wLinha,005,'#,##0.000  ',CdsItemNotaNF_QTDE_VAR8.AsCurrency,[]);
                                   RDPrintRecibo.Imp   (wLinha,015,qAux.FieldByName('PRD_UND').AsString);
                                   RDPrintRecibo.Imp   (wLinha,019,CdsItemNotaPRD_REFER.AsString);
                                   RDPrintRecibo.Imp   (wLinha,030,trim(CdsItemNotaPRD_DESCRI.AsString)+' - '+trim(CdsItemNotaPRD_DCVAR8.AsString));
                                   RDPrintRecibo.ImpVal(wLinha,099,'#,##0.00',CdsItemNotaNF_PRECO.AsFloat,[]);
                                   //RDPrintRecibo.ImpVal(wLinha,099,'#,##0.00',(((CdsItemNotaNF_QTDE_VAR8.AsCurrency * CdsItemNotaNF_PRECO.AsCurrency) * CdsItemNotaNF_IPIALIQ.AsCurrency)/100)+(CdsItemNotaNF_QTDE_VAR8.AsCurrency * CdsItemNotaNF_PRECO.AsCurrency),[]);
                                   RDPrintRecibo.ImpVal(wLinha,115,'#,##0.00',(CdsItemNotaNF_QTDE_VAR8.AsCurrency * CdsItemNotaNF_PRECO.AsFloat),[]);
                                   Inc(wLinha);
                               end;
                        end

                   end
                else
                   begin
                       RDPrintRecibo.Imp   (wLinha,001,'[__]');
                       RDPrintRecibo.ImpVal(wLinha,005,'#,##0.000  ',CdsItemNotaNF_QTDE.AsCurrency,[]);
                       RDPrintRecibo.Imp   (wLinha,015,qAux.FieldByName('PRD_UND').AsString);
                       RDPrintRecibo.Imp   (wLinha,019,CdsItemNotaPRD_REFER.AsString);
                       RDPrintRecibo.Imp   (wLinha,030,CdsItemNotaPRD_DESCRI.AsString);
                       RDPrintRecibo.ImpVal(wLinha,102,'#,##0.00',CdsItemNotaNF_PRECO.AsFloat,[]);
                       //RDPrintRecibo.ImpVal(wLinha,099,'#,##0.00',CdsItemNotaNF_TOTAL_IPI_CC.AsCurrency,[]);
                       if CdsItemNotaNF_TOTAL_CC.AsCurrency > 0 then
                         RDPrintRecibo.ImpVal(wLinha,118,'#,##0.00',CdsItemNotaNF_TOTAL_CC.AsCurrency,[])
                       else
                         RDPrintRecibo.ImpVal(wLinha,118,'#,##0.00',CdsItemNotaNF_QTDE.AsCurrency * CdsItemNotaNF_PRECO.AsFloat ,[]);
                       Inc(wLinha);
                   end;
                if CdsItemNotaNF_TOTAL_CC.AsCurrency > 0 then
                  wTotLiq   := wTotLiq   + CdsItemNotaNF_TOTAL_CC.AsCurrency
                else
                  wTotLiq   := wTotLiq   + (CdsItemNotaNF_QTDE.AsCurrency * CdsItemNotaNF_PRECO.AsFloat);

                if CdsItemNotaNF_TOTAL_IPI_CC.AsCurrency > 0 then
                  wTotBruto := wTotBruto + CdsItemNotaNF_TOTAL_IPI_CC.AsCurrency
                else
                  wTotBruto := wTotBruto + (CdsItemNotaNF_QTDE.AsCurrency + CdsItemNotaNF_PRECO.AsFloat);




                if UpperCase(qAux.FieldByName('PRD_UND').AsString) = 'KG' then
                  wPesoTotal := wPesoTotal + qAux.FieldByName('PRF_QTDE').AsFloat
                else
                  wPesoTotal := wPesoTotal + qAux.FieldByName('PRF_PESO').AsFloat;

                CdsItemNota.Next;
            end;
           RDPrintRecibo.Imp (wLinha,001,'---------------------------------------------------------------------------------------------------------------------------------------');
           if CdsImpNotaNF_VL_DESCTO.AsCurrency >0 then
              begin
                  Inc(wLinha);
                  RDPrintRecibo.ImpF  (wLinha,086,'Sub-Total',[negrito]);
                 // RDPrintRecibo.ImpVal(wLinha,102,'#,##0.00',wTotBruto,[negrito]);
                  RDPrintRecibo.ImpVal(wLinha,118,'#,##0.00',wTotLiq,[negrito]);
                  Inc(wLinha);
                  RDPrintRecibo.ImpF  (wLinha,086,'Desconto',[negrito]);
                  //RDPrintRecibo.ImpVal(wLinha,102,'#,##0.00',CdsImpNotaNF_VL_DESCTO.AsCurrency,[negrito]);
                  RDPrintRecibo.ImpVal(wLinha,118,'#,##0.00',CdsImpNotaNF_VL_DESCTO.AsCurrency,[negrito]);
              end;
           //
           Inc(wLinha);

           if DBInicio.GetParametroSistema('PMT_PEDIDO_IND_PLASTICA') = 'S' then
           begin
             RDPrintRecibo.ImpF  (wLinha, 026, 'Peso Total:', [negrito]);
             RDPrintRecibo.ImpVal(wLinha, 038, '#,##0.00 KG', wPesoTotal, [negrito]);
           end;
           // RDPrintRecibo.ImpF  (wLinha, 046, 'KG', [negrito]);

           RDPrintRecibo.ImpF  (wLinha,086,'Total',[negrito]);
           RDPrintRecibo.ImpVal(wLinha,118,'#,##0.00',(wTotLiq-CdsImpNotaNF_VL_DESCTO.AsCurrency),[negrito]);
           Inc(wLinha);
           RDPrintRecibo.Imp (wLinha,001,'---------------------------------------------------------------------------------------------------------------------------------------');
           wLinha := wLinha + 2;
           RDPrintRecibo.Imp (wLinha,001,'Material conferido por: _________________________________________________  Data : __________/__________/_______________');
           wLinha := wLinha + 2;
           RDPrintRecibo.Imp (wLinha,001,'---------------------------------------------------------------------------------------------------------------------------------------');
           Inc(wLinha);
           RDPrintRecibo.Imp (wLinha,001,copy(AnsiReplaceStr(CdsImpNotaPED_OBSERVACAO.AsString,'#$D#$A',' '),0,130));
           Inc(wLinha);
           RDPrintRecibo.Imp (wLinha,001,copy(AnsiReplaceStr(CdsImpNotaPED_OBSERVACAO.AsString,'#$D#$A',' '),129,130));
           Inc(wLinha);
           RDPrintRecibo.Imp (wLinha,001,copy(AnsiReplaceStr(CdsImpNotaPED_OBSERVACAO.AsString,'#$D#$A',' '),259,130));
           Inc(wLinha);
           wLinha := wLinha + 2;
           RDPrintRecibo.Imp (wLinha,001,'________________________________________________________________');
           RDPrintRecibo.Imp (wLinha,075,'______________________________ _______/________/___________');
           wLinha := wLinha + 2;
           RDPrintRecibo.Imp (wLinha,001,'                  NOME E ASSINATURA DO RECEBEDOR');
           RDPrintRecibo.Imp (wLinha,075,'                    DATA DO RECEBIMENTO');
           RDPrintRecibo.Fechar;
       end;
end;


end.
