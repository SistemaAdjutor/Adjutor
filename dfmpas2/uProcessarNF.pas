unit uProcessarNF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora, uteis,
  iniciodb, pcnconversaonfe, ACBrMail, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP, IdComponent, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdBaseComponent, IdMessage, ACBrDFe, ACBrNFe, ACBrNFeDANFEClass, ACBrNFeDANFEFR, vcl.imaging.jpeg, pcnconversao, ACBrNFeDANFeESCPOS,
  ACBrDANFCeFortesFr, IdAttachmentFile,  ACBrUtil, XMLIntf, XMLDoc, zlib, ACBrNFeDANFeRLClass,  Spin,    ACBrNFeNotasFiscais,System.StrUtils,
  TypInfo, DateUtils,  blcksock, pcnNFe,   ACBrDFeConfiguracoes, pcnAuxiliar,    Grids,  ACBrNFeConfiguracoes, Vcl.ExtCtrls, Datasnap.Provider, Datasnap.DBClient,
  pngextra, rwfunc,ACBrECFVirtual, ACBrECFVirtualBuffer, ACBrECFVirtualPrinter, ACBrECFVirtualNFCe, ACBrDFeReport, ACBrDFeDANFeReport, frxClass, BaseDbEstoqueForm,ACBrDFeSSL,
  Vcl.Clipbrd ;

type

  TfrmProcessaNFe = class(TfrmBaseDbEstoque)
    ACBrNFeDANFEFR1: TACBrNFeDANFEFR;
    ACBrNFe1: TACBrNFe;
    IdMessage1: TIdMessage;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    SMTP: TIdSMTP;
    sslsocket: TIdSSLIOHandlerSocketOpenSSL;
    ACBrMail1: TACBrMail;
    qNota: TSQLQuery;
    qItemNota: TSQLQuery;
    qDIproduto: TSQLQuery;
    qAdicaoDI: TSQLQuery;
    qDuplicata: TSQLQuery;
    pMsg: TPanel;
    qXML: TSQLQuery;
    qXMLNFX_REGISTRO: TIntegerField;
    qXMLEMP_CODIGO: TIntegerField;
    qXMLNF_REGISTRO: TIntegerField;
    qXMLNFX_XML: TBlobField;
    CdsXML: TClientDataSet;
    dspXML: TDataSetProvider;
    CdsXMLNFX_REGISTRO: TIntegerField;
    CdsXMLEMP_CODIGO: TIntegerField;
    CdsXMLNF_REGISTRO: TIntegerField;
    CdsXMLNFX_XML: TBlobField;
    EnviarEmail: TPNGButton;
    Imprimir: TPNGButton;
    qXMLNFX_XML_RECIBO: TBlobField;
    CdsXMLNFX_XML_RECIBO: TBlobField;
    ACBrNFeDANFeRL1: TACBrNFeDANFeRL;
    ACBrECFVirtualNFCe1: TACBrECFVirtualNFCe;
    frxReport1: TfrxReport;
    ACBrNFeDANFCeFortes1: TACBrNFeDANFCeFortes;
    ACBrNFeDANFCEFR1: TACBrNFeDANFCEFR;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FPIS, FCofins : double; // percentual
    FLote: string;
    fEmp_codigo: string;
    fEmailRepresentanteNFE : boolean;
    fSerieNF, fUF,
    fOPT_SIMPLES ,  fPMT_GerarTagICMSSubsPagaAnter,
    femail,fhome_page,fEmailinterno, frazao,fEmailHost, fCSC, fIDToken,
    ffantasia, fendereco, ffone, fcep, fcidade, fbairro, fINSC_EST, fCNPJ_CNPF, fINS_MUNICIPAL, femp_crt: string;
    fEmailUserName, fEmailPassworld, fEmailModoSSL , fEmailPorta : String;

    femailAutenticacao, fPMT_RESPONSAVEL_TECNICO : boolean;
    fEmailRequerConexaoSSL, fEmailRequerConexaoTLS, fusar_logo : Boolean;


	  fiCSOSN, fiCSOSN_ST, fCID_IBGE, fEmailVersaoSSL  : integer;



   procedure SetLote (const aValues:string);
   procedure SetEmpCodigo(const Value: string);
   procedure AdicaoProdutosNFe;
   procedure DocumentoImportacao;
   procedure TributacaoICMS_simples;
   procedure TributacaoICMS;
   procedure TributacaoIPI;
   procedure TotalizacaoNFE;
   procedure GravarHistorico (Const  mensagem :string; const  nf_registro,NFM_REGISTRO : integer);
   procedure GravarNota(const protocolo: string; const status: string; const chave: string; const nf_registro: Integer; const DataAutorizacao: TDateTime; const Lote: string);
   procedure GravarChaveOnly ( const chave: string ; const nf_registro: Integer);
   procedure GravarStatus (const status: string;const nf_registro : integer);
   procedure GravarEmailEnviado (const nf_registro :integer; const status : string);
   procedure GravaXML (itemNota,nf_registro : integer);

  public
    property Lote: string read Flote write SetLote;
    procedure GerarNFE (const espelho: boolean);
    procedure ConfiguracoesIniciais(Tipo:TpcnModeloDF);
    function enviarEmailIndy(const sPara, sAssunto: String; sMensagem: TStrings ;
               Anexos: TStrings; sReplyTo: TStrings): boolean;

    procedure BuscaNota(const Nota:string);
    procedure BuscaItem(const Nota:string);
    procedure BuscaDuplicata(const Nota:string);
    procedure BuscaDI(Prf_registro : integer);
    procedure BuscaAdicoesDI (pid_registro: Integer);
    function GerarSeqNFe: string;
    function GerarSeqNFCe: string;
    function GerarAssinarEnviar: boolean;
    procedure EnviarEmailAutorizado(const i,nf_reg : integer;const sprotocolo : string);
    procedure ConsultarNota(const Nota:string);
    function CarregarXML(NF_REGISTRO : Integer): boolean;
    function RetirarSujeira ( str : string): string;
    function ValidarRegrasdeNegociosAdjuntor(out Erros: String): Boolean;
    procedure CarregarParametros;
     property EmpCodigo : string read fEmp_codigo write SetEmpCodigo;
  end;

var
  frmProcessaNFe: TfrmProcessaNFe;
    NotaF: NotaFiscal;
    Produto: TDetCollectionItem;
//    Servico: TDetCollectionItem;
    Volume: TVolCollectionItem;
    Duplicata: TDupCollectionItem;
    FormaPagamentos : TpagCollectionItem;
    ObsComplementar: TobsContCollectionItem;
    ObsFisco: TobsFiscoCollectionItem;
    Referenciada: TNFrefCollectionItem;
    DI: TDICollectionItem;
    Adicao: TAdiCollectionItem;
    Medicamento: TMedCollectionItem;
//  Arma: TArmaCollectionItem;
//  Reboque: TreboqueCollectionItem;
//  Lacre: TLacresCollectionItem;
    ProcReferenciado: TprocRefCollectionItem;
    NumNFe :string;
    ok: boolean;
    i: integer;
    CSOSN,CSOSNST: Integer;
    MostraIBPT_Item : boolean;
implementation

{$R *.dfm}

uses
  math, Fat0003, Fat0000;

{ TfrmBaseDB1 }

procedure TfrmProcessaNFe.AdicaoProdutosNFe;
var i, j, recordCount : integer;
 rateioDifal: Array of Double;
 precoUndTrib, resto : double;
 vlDifal : Real;
 Municipal, Estadual, Federal: string;

begin
{
  qItemNota.First;
  recordCount := 0;
  // contando os itens da nota, pois o componente não possui recordcount...
  while not qItemNota.Eof do
  begin
    inc(recordCount);
    qItemNota.Next;
  end;
  SetLength(rateioDifal, recordCount);
  vlDifal := qNota.FieldByName('NF_VLDIFAL').AsFloat;
  resto := RealMod(vlDifal, recordCount);
  qItemNota.First;
  for j  := 0 to recordCount -1 do
  begin
    rateioDifal[j] := (qItemNota.FieldByName('TOTAL').AsFloat / qNota.FieldByName('NF_TOT_PROD').AsFloat) * (qNota.FieldByName('NF_DESP_ACES').AsFloat + vlDifal);
    qItemNota.Next;
  end;

 }




  qItemNota.First;
  i := 1;
  //Adicionando Produtos  antigos DadosBasicosProduto  ProdutoImportacao
  while not qItemNota.Eof do
  begin
    Produto := NotaF.NFe.Det.Add;
    // Produto.Prod.detExport exportação indireta
    Produto.Prod.nItem    := i;
    if DBInicio.Empresa.wPMT_UTILIZA_CODIGO_ORIG_VD and (qItemNota.FieldByName('PRDCO_CODIGO_ORIGINAL').AsString <> '') then // CODIGO ORIGINAL NA DANFE
      Produto.Prod.cProd    := qItemNota.FieldByName('PRDCO_CODIGO_ORIGINAL').AsString
    Else
      Produto.Prod.cProd    := qItemNota.FieldByName('PRD_REFER').AsString;
    if (qItemNota.FieldByName('PRD_CODBARRA').AsString = '') OR (qItemNota.FieldByName('PRD_VAIXML').AsString = 'N')  then
    begin
      Produto.Prod.cEAN := 'SEM GTIN';
      Produto.Prod.cEANTrib := 'SEM GTIN';
    end
    else
    begin
      Produto.Prod.cEAN      := ExtrairNumeros(qItemNota.FieldByName('PRD_CODBARRA').AsString);
      Produto.Prod.cEANTrib  := ExtrairNumeros(qItemNota.FieldByName('PRD_CODBARRA').AsString);
    end;
    if Length(qItemNota.FieldByName('PRD_DESCRI').AsString) > 120 then
      Produto.Prod.xProd    := COPY(qItemNota.FieldByName('PRD_DESCRI').AsString,1,120)
    else
      Produto.Prod.xProd    := qItemNota.FieldByName('PRD_DESCRI').AsString;
    // pedido de compra antiga procedure PedidoCompraProduto
//    if qItemNota.FieldByName('PRF_B2B_PEDIDO_COMPRA').AsString <> '' then
//    begin
//
//      produto.Prod.xPed :=  qItemNota.FieldByName('PRF_B2B_PEDIDO_COMPRA').AsString;
//      Produto.Prod.NItemPed := intToStr(qItemNota.FieldByName('PRF_B2B_ITEM_PEDIDO_COMPRA').AsInteger);
//      Produto.Prod.xProd := Produto.Prod.xProd + ' - Número do pedido: '+produto.Prod.xPed + ' - Item do pedido : ' + Produto.Prod.NItemPed
//    end;
    Produto.Prod.NCM      := qItemNota.FieldByName('IPI_CODIGO').AsString; // Tabela NCM disponível em  http://www.receita.fazenda.gov.br/Aliquotas/DownloadArqTIPI.htm

    if qItemNota.FieldByName('PRD_CODIGO_FCI').AsString <> '' then
      Produto.Prod.nFCI := qItemNota.FieldByName('PRD_CODIGO_FCI').AsString;

    //    Produto.Prod.EXTIPI   := '';
    Produto.Prod.CFOP     := IntToStr(qItemNota.FieldByName('NTP_CFOP').AsInteger);
    Produto.Prod.uCom     := qItemNota.FieldByName('PRD_UND').AsString;
    Produto.Prod.qCom     := qItemNota.FieldByName('NF_QTDE').AsFloat ;
    Produto.Prod.vUnCom   := qItemNota.FieldByName('NF_PRECO').AsFloat;
    Produto.Prod.vProd    := qItemNota.FieldByName('TOTAL').AsFloat ;

    IF qItemNota.FieldByName('PRD_UND_TRIB').AsString = '' Then    //exportação valores tributários
    begin
      Produto.Prod.uTrib     :=  qItemNota.FieldByName('PRD_UND').AsString;
      Produto.Prod.qTrib     :=  qItemNota.FieldByName('NF_QTDE').AsFloat;
      Produto.Prod.vUnTrib   :=  qItemNota.FieldByName('NF_PRECO').AsFloat;
    end
    else
    begin
      Produto.Prod.uTrib     :=  qItemNota.FieldByName('PRD_UND_TRIB').AsString;
      Produto.Prod.qTrib     :=  qItemNota.FieldByName('PRF_QUANT_TRIB').AsFloat;
      precoUndTrib :=   qItemNota.FieldByName('NF_PRECO').AsFloat *  qItemNota.FieldByName('NF_QTDE').AsFloat / qItemNota.FieldByName('PRF_QUANT_TRIB').AsFloat ;
      Produto.Prod.vUnTrib   := precoUndTrib;
    end;


   // qNota.FieldByName('NF_VLDIFAL').AsFloat

//     Produto.Prod.vOutro    := rateioDifal[i-1]; // qItemNota.FieldByName('NF_IDESP_ACES').asCurrency + rateioDifal[i-1] ;
    Produto.Prod.vOutro    := qItemNota.FieldByName('NF_IDESP_ACES').asCurrency; //  + qItemNota.FieldByName('NF_VALOR_PARTILHA_DESTINO').asCurrency;
    Produto.Prod.vFrete    := qItemNota.FieldByName('NF_IFRETE').asCurrency;
    Produto.Prod.vSeg      := qItemNota.FieldByName('NF_ISEGURO').asCurrency;
    Produto.Prod.vDesc     := qItemNota.FieldByName('NF_IDESCTO1').asCurrency;
    If (not MatchStr(qItemNota.FieldByName('CEST_COD').asString,['','0', ' '] )) and not (qItemNota.FieldByName('CEST_COD').IsNull) then
      Produto.Prod.CEST := qItemNota.FieldByName('CEST_COD').asString;
    Produto.Prod.IndTot  :=itSomaTotalNFe; {O Valor do item compoe o valor total da nota 0=Sim 1=Nao}

    if (NotaF.NFe.Ide.finNFe = fnDevolucao) and (fOPT_SIMPLES = 'S') then
    begin
     Produto.pDevol := qItemNota.FieldByName('NF_IPIALIQ').AsFloat;
     Produto.vIPIDevol := qItemNota.FieldByName('NF_IPIVALOR').AsFloat;

    end;
    if qItemNota.FieldByName('PRF_B2B_PEDIDO_COMPRA').AsString <> '' then
    begin
      produto.Prod.xPed :=  qItemNota.FieldByName('PRF_B2B_PEDIDO_COMPRA').AsString;
      Produto.Prod.NItemPed := intToStr(qItemNota.FieldByName('PRF_B2B_ITEM_PEDIDO_COMPRA').AsInteger);
      Produto.infAdProd  :=  #13 + #10 + 'Número do pedido: '+produto.Prod.xPed + ' - Item do pedido : ' + Produto.Prod.NItemPed
    end;
    Produto.infAdProd      := qItemNota.FieldByName('PRD_COMPL_DESCRI').AsString + Produto.infAdProd;
    // if MostraIBPT_Item then
    if DBInicio.GetParametroSistema('PMT_VALOR_APROX_TRIB') = 'T' then
    begin
      Municipal := '';
      Estadual  := ' R$: ' + FormatFloat('##0.00', ( (qItemNota.FieldByName('IBPT_VLAP').AsCurrency / 100)  * qItemNota.FieldByName('IBPT_ALIQEST').asCurrency) ) + ' (' + FormatFloat('##0.00', qItemNota.FieldByName('IBPT_ALIQEST').asCurrency ) + '%)' +
      ' Estadual';
      Federal   := ' R$: ' + FormatFloat('##0.00', ( (qItemNota.FieldByName('IBPT_VLAP').AsCurrency / 100)  * qItemNota.FieldByName('IBPT_ALIQFED').asCurrency) ) + ' (' + FormatFloat('##0.00', qItemNota.FieldByName('IBPT_ALIQFED').asCurrency ) + '%)' +
      ' Federal, ';
      Produto.infAdProd  := Produto.infAdProd + #13 + #10 +  'Trib. aprox. ' + Federal + Estadual + Municipal;
    end;
    if (DBInicio.GetParametroSistema('PMT_VALOR_APROX_TRIB') = 'C') AND (qNota.FieldByName('CLI_CONSFINAL').AsString = 'S')   then
    begin
      Municipal := '';
      Estadual  := ' R$: ' + FormatFloat('##0.00', ( (qItemNota.FieldByName('IBPT_VLAP').AsCurrency / 100)  * qItemNota.FieldByName('IBPT_ALIQEST').asCurrency) ) + ' (' + FormatFloat('##0.00', qItemNota.FieldByName('IBPT_ALIQEST').asCurrency ) + '%)' +
      ' Estadual';
      Federal   := ' R$: ' + FormatFloat('##0.00', ( (qItemNota.FieldByName('IBPT_VLAP').AsCurrency / 100)  * qItemNota.FieldByName('IBPT_ALIQFED').asCurrency) ) + ' (' + FormatFloat('##0.00', qItemNota.FieldByName('IBPT_ALIQFED').asCurrency ) + '%)' +
      ' Federal, ';
      Produto.infAdProd  := Produto.infAdProd + #13 + #10 +  'Trib. aprox. ' + Federal + Estadual + Municipal;
    end;

    // Procedure ProdutoImportacao;
    if COPY(Produto.Prod.CFOP,1,1)= '3' then
    begin
      BuscaDI(qItemNota.FieldByName('PRF_REGISTRO').AsInteger);
      DocumentoImportacao;
    end;
   //Campos específicos para venda de medicamentos
   // tem lote e é produto especifico de medicamento
    if (not qItemNota.FieldByName('prdl_registro').IsNull) and  (qItemNota.FieldByName('PRD_ESPECIFICO').AsString = 'S') and
      (qItemNota.FieldByName('ID_PRD_ESPECIFICO').asInteger = 3)
    then
    begin
      Medicamento := Produto.Prod.med.Add;
      Medicamento.nLote := qItemNota.FieldByName('prdl_lote').AsString;
      Medicamento.qLote := qItemNota.FieldByName('NF_QTDE').AsFloat ;
      Medicamento.dFab  := qItemNota.FieldByName('prdl_data_fabricacao').AsDateTime ;
      Medicamento.dVal  := qItemNota.FieldByName('prdl_data_validade').AsDateTime ;
      Medicamento.vPMC  := qItemNota.FieldByName('prdl_preco_maximo').AsFloat ;
      Medicamento.cProdANVISA := '';
      // não obrigatória colocar nas informações adicionais
      if qItemNota.FieldByName('prdl_lote').AsString <> '' then
        Produto.infAdProd      := qItemNota.FieldByName('PRD_COMPL_DESCRI').AsString + ' ' +
                'Lote: '+Medicamento.nLote+' Validade:'+DateToStr(Medicamento.dVal);

      if Medicamento.dVal <> 0 then
        Produto.infAdProd      :=   Produto.infAdProd + ' ' +
             'Validade: '+DateToStr(Medicamento.dVal );

      if qItemNota.FieldByName('PRD_CODIGO_FCI').AsString <> '' then
        Produto.infAdProd :=  Produto.infAdProd + ' FCI:' + qItemNota.FieldByName('PRD_CODIGO_FCI').AsString;

    end;


    //SIMPLES NACIONAL SOMENTE ICMS
   if (fOPT_SIMPLES = 'S')  then
   begin
     if (femp_crt <> '2')  then
       TributacaoICMS_Simples
     else
       TributacaoICMS;

    // Pis paar simples Nacional

    if (femp_crt <> '2')  then
     Produto.Imposto.PIS.CST := pis99
    else
     Produto.Imposto.PIS.CST := StrToCSTPIS(OK,qItemNota.FieldByName('CST_PIS').AsString);
    Produto.Imposto.PIS.VBC := 0;
    Produto.Imposto.PIS.PPIS := 0;
    Produto.Imposto.PIS.VPIS := 0;

    // confins para simples nacional
    if (femp_crt <> '2')  then
       Produto.Imposto.COFINS.CST := cof99
    else
     Produto.Imposto.COFINS.CST := StrToCSTCOFINS(OK,qItemNota.FieldByName('CST_COFINS').AsString);
    Produto.Imposto.COFINS.VBC := 0;
    Produto.Imposto.COFINS.pCOFINS := 0;
    Produto.Imposto.COFINS.vCOFINS := 0;

   end //    if fOPT_SIMPLES = 'S' then
   else     // NÃO É DO SIMPLES
   begin
     TributacaoICMS;
     TributacaoIPI;
     //IMPOSTO IMPORTAÇÃO
      if COPY(Produto.Prod.CFOP,1,1)= '3' then
      begin
       Produto.Imposto.II.VBC := 0;
       Produto.Imposto.II.vDespAdu := 0;
       Produto.Imposto.II.vII := 0;
       Produto.Imposto.II.vIOF := 0;
      end;
       Produto.Imposto.PIS.CST := StrToCSTPIS(OK,qItemNota.FieldByName('CST_PIS').AsString);
      if ((qItemNota.FieldByName('NF_VLPIS').AsFloat > 0) and (not MatchStr(qItemNota.FieldByName('CST_PIS').AsString,['99','98','49']))) then
      begin
        Produto.Imposto.PIS.VBC := qItemNota.FieldByName('NF_BASE_PIS').asCurrency;
        Produto.Imposto.PIS.PPIS := qItemNota.FieldByName('NF_ALIQPIS').asCurrency;
        FPIS := qItemNota.FieldByName('NF_ALIQPIS').asCurrency;
        Produto.Imposto.PIS.VPIS := qItemNota.FieldByName('NF_VLPIS').asCurrency;
      end
      else if qItemNota.FieldByName('CST_PIS').AsString = '' then
          Produto.Imposto.PIS.CST := pis08;
      Produto.Imposto.COFINS.CST := StrToCSTCOFINS(OK, qItemNota.FieldByName('CST_COFINS').AsString);
     if (qItemNota.FieldByName('NF_VLCOFINS').AsFloat > 0) and (not MatchStr(qItemNota.FieldByName('CST_COFINS').AsString,['99','98','49'])) then
     begin

        Produto.Imposto.COFINS.VBC := qItemNota.FieldByName('NF_BASE_COFINS').asCurrency;
        Produto.Imposto.COFINS.pCOFINS := qItemNota.FieldByName('NF_ALIQCOFINS').asCurrency;
        Produto.Imposto.COFINS.vCOFINS := qItemNota.FieldByName('NF_VLCOFINS').asCurrency;
        fCOFINS := qItemNota.FieldByName('NF_ALIQCOFINS').asCurrency;
     end
     else if qItemNota.FieldByName('CST_COFINS').AsString = '' then
        Produto.Imposto.COFINS.CST := cof08;

   end;
   // ICMS uf dest  - antigo VendaInterEstadualConsumidorFinal_Item
   if (NotaF.NFe.Emit.EnderEmit.UF <> NotaF.NFe.Dest.EnderDest.UF) and // interestadual
      ( NotaF.NFe.Ide.indFinal  = cfConsumidorFinal ) and // Consumidor final / não contribuinte
      (qnota.FieldByName('OPE_TIPO_OPERACAO').AsString = 'V') then
    Begin

			qAux.Close;
			qAux.Sql.Text := 'select ICM_TIPO_CALCULO_DIFAL ' +
												'from ICM0000 WHERE ICM_DESTINO = ' + QuotedStr(NotaF.NFe.Dest.EnderDest.UF) + ConcatSe( ' AND ', dbInicio.ExclusivoSql('ICMS') )  ;
			qAux.open;
      if qAux.fieldByName('ICM_TIPO_CALCULO_DIFAL').AsInteger = 1 then
      begin
        Produto.Imposto.ICMSUFDest.vBCUFDest      := qItemNota.FieldByName('NF_VALOR_BCICMS_DESTINO').asCurrency + qItemNota.FieldByName('NF_VALOR_PARTILHA_DESTINO').asCurrency;
        Produto.Imposto.ICMSUFDest.vBCFCPUFDest    := qItemNota.FieldByName('NF_VALOR_BCICMS_DESTINO').asCurrency + qItemNota.FieldByName('NF_VALOR_PARTILHA_DESTINO').asCurrency;
      end
      else if qAux.fieldByName('ICM_TIPO_CALCULO_DIFAL').AsInteger = 0 then
      begin
        Produto.Imposto.ICMSUFDest.vBCUFDest      := qItemNota.FieldByName('NF_VALOR_BCICMS_DESTINO').asCurrency;
        Produto.Imposto.ICMSUFDest.vBCFCPUFDest    := qItemNota.FieldByName('NF_VALOR_BCICMS_DESTINO').asCurrency ;
      end
      else
        GeraException('Tipo de Cálculo para DIFAL não informado no cadastro de alíquots de ICMS dos Estados.');
      Produto.Imposto.ICMSUFDest.pFCPUFDest     := qItemNota.FieldByName('NF_PERC_FCP').asCurrency ;
      Produto.Imposto.ICMSUFDest.pICMSUFDest    := qItemNota.FieldByName('NF_ALIQ_ICMS_INTERNA_DESTINO').asCurrency ;
      Produto.Imposto.ICMSUFDest.pICMSInter     := qItemNota.FieldByName('NF_ALIQ_ICMS_INTERESTADUAL').asCurrency ;
      Produto.Imposto.ICMSUFDest.pICMSInterPart := qItemNota.FieldByName('NF_PERC_PARTILHA_DESTINO').asCurrency;
      Produto.Imposto.ICMSUFDest.vFCPUFDest     := qItemNota.FieldByName('NF_VALOR_FCP').asCurrency ;
      Produto.Imposto.ICMSUFDest.vICMSUFDest    := qItemNota.FieldByName('NF_VALOR_PARTILHA_DESTINO').asCurrency;
      Produto.Imposto.ICMSUFDest.vICMSUFRemet   := qItemNota.FieldByName('NF_VALOR_PARTILHA_ORIGEM').asCurrency;

    End;
    IF ((Produto.Imposto.ICMS.cst IN [cst00, cst10,cst60, cst90]) and (NotaF.NFe.Dest.EnderDest.UF = 'PR')) OR
       ((Produto.Imposto.ICMS.cst IN [cst00, cst10, {cst41,} cst60]) and (NotaF.NFe.Dest.EnderDest.UF = 'RJ')) OR
              ((Produto.Imposto.ICMS.cst IN [cst00, cst10]) and (NotaF.NFe.Dest.EnderDest.UF = 'RS'))  then
        produto.Prod.cBenef   := ''
    Else
      produto.Prod.cBenef   := qItemNota.FieldByName('NF_CBENEF').AsString;

     //   if (oSistema.Empresa.Parametro.ValorAproximadoImpostos = vaiTodos) or (NotaFiscal.Destinatario.ConsumidorFinal) then INCOMPLETO
   if MostraIBPT_Item then
      Produto.Imposto.vTotTrib := qItemNota.FieldByName('IBPT_VLAP').AsCurrency;  //ValorImpostosPreco;

   Inc(i,1);
   if qItemNota.FieldByName('NF_VALOR_FCP').asCurrency > 0 Then
      Produto.infAdProd      :=   Produto.infAdProd + ' ' + 'Base FCP :'+ FloatToSQL( qItemNota.FieldByName('NF_ICMSBASE').AsFloat) +
       '/ Percentual FCP = '+FloatToSQL(qItemNota.FieldByName('NF_PERC_FCP').AsCurrency) +
       ' / Valor FCP = '+FloatToSQL(qItemNota.FieldByName('NF_VALOR_FCP').asCurrency)  ;
   if qItemNota.FieldByName('NF_VALOR_FCP_st').asCurrency > 0  then
   if qItemNota.FieldByName('NF_MVAPERC').AsFloat = 0 then
   begin
      Produto.infAdProd :=   Produto.infAdProd + ' ' + 'Base FCP ST :'+FormatFloat('#,##0.00', uteis.RoundTo( qItemNota.FieldByName('NF_SUBTRIBASE').AsFloat) )+
       '/ Percentual FCP ST = '+FloatToSQL(qItemNota.FieldByName('NF_PERC_FCP').AsCurrency) +
       ' / Valor FCP ST = '+FloatToSQL(qItemNota.FieldByName('NF_VALOR_FCP_st').asCurrency)  ;
   end
   else
   begin
      Produto.infAdProd :=   Produto.infAdProd + ' ' + 'Base FCP ST :'+FormatFloat('#,##0.00', uteis.RoundTo( qItemNota.FieldByName('TOTAL').AsFloat *
                                                                       qItemNota.FieldByName('NF_MVAPERC').AsFloat/100) )+
       '/ Percentual FCP ST = '+FloatToSQL(qItemNota.FieldByName('NF_PERC_FCP').AsCurrency) +
       ' / Valor FCP ST = '+FloatToSQL(qItemNota.FieldByName('NF_VALOR_FCP_st').asCurrency)  ;

   end;

   qItemNota.Next;
  end; // fim inclusão de produto


end;

procedure TfrmProcessaNFe.BuscaAdicoesDI(pid_registro: Integer);
begin
 qAdicaoDI.Close;
 qAdicaoDI.CommandText :=
   ' select PDA_ADICAO, PDA_SEQ_ADICAO, PDA_CODIGO_FABRICANTE FROM ped_it01_di_adicao T1 '+
   ' WHERE T1.pid_registro = '+ IntToStr(pid_registro) ;

 qAdicaoDI.Open;
end;

procedure TfrmProcessaNFe.BuscaDI(Prf_registro: integer);
begin
 qDIproduto.Close;
 qDIproduto.CommandText :=
   ' SELECT pid_registro, PID_NUMERO_DI, PID_DATA_DI, PID_LOCAL_DESEMBARACO, PID_UF_DESEMBARACO, PID_DATA_DESEMBARACO, PID_CODIGO_EXPORTADOR, PID_VIA_TRANSPORTE,'+
   ' PID_VALOR_AFRMM, PID_FORMA_IMPORTACAO, PID_CNPJ_ADQUIRENTE, PID_UF_ADQUIRENTE '+
   ' FROM PED_IT01_DI'+
   ' WHERE PRF_REGISTRO = '+  IntToStr(Prf_registro);

 qDIproduto.Open;
end;

procedure TfrmProcessaNFe.BuscaDuplicata(const Nota: string);
begin
 qDuplicata.Close;
 qDuplicata.CommandText :=
 ' SELECT DISTINCT FAT_CODIGO||'' ''||FPC_NUMER as FATURA, FPC_NUMER ,FPC_VENCTO,FPC_VLPARC,FPC_VALR_SERVICOS, FPC_COBTIPO, FPC_TIPODOC, FPG_REGISTRO  FROM FAT_PC01 np'+
 ' WHERE FAT_CODIGO = ' + QuotedStr(Nota)+
 ' and emp_codigo = '+QuotedStr(EmpCodigo);
 qDuplicata.Open;

end;

procedure TfrmProcessaNFe.BuscaItem(const Nota: string);
begin
 qItemNota.Close;
 qItemNota.SQL.Clear;
 qItemNota.SQL.Add(
  '  SELECT it.CST_IPI, it.PRDCO_CODIGO_ORIGINAL, IT.PRD_REFER, IT.PRD_DESCRI, IT.IPI_CODIGO, IT.NTP_CFOP, IT.OPE_CODIGO, ' +
//  '  PR.PRD_UND, ' +
  ' CASE WHEN pid.PRD_UND IS NULL THEN pr.PRD_UND ELSE pid.PRD_UND END AS PRD_UND, ' +
  '  IT.NF_QTDE, IT.NF_PRECO, it.PRD_COMPL_DESCRI, PRD_ESPECIFICO, ID_PRD_ESPECIFICO,   '+
  ' cast(IT.nf_totalitem as numeric(18,2)) as TOTAL, NF_IFRETE, NF_IDESP_ACES, NF_ISEGURO, NF_IDESCTO1, pid.PRF_REGISTRO,lo.prdl_registro ,                '+
  ' lo.prdl_data_validade,lo.prdl_data_fabricacao, lo.prdl_lote, lo.prdl_preco_maximo, pr.CEST_COD, it.NF_CSOSN, pid.PRF_B2B_PEDIDO_COMPRA, pid.PRF_B2B_ITEM_PEDIDO_COMPRA, '+
  ' PRD_ORIGEM, NF_VLSUBST, it.STB_TRIBUTACAO, it.NF_IPIBASE,it.NF_IPIALIQ, it.NF_IPIVALOR , NF_ICMSVALOR, NF_ICMSBASE, NF_ICMSALIQ, NF_ICMSREDUCAOPERC,            '+
  ' NF_SUBTRIBASE, NF_ALIQSUBTRIB, NF_VLSUBST,NF_MVAPERC, ST.STB_TRIBUTACAO, ST.STB_DESCRICAO, OPE_TIPO_OPERACAO, NF_VLPIS, NF_ALIQPIS, NF_BASE_PIS,                '+
  ' NF_VLCOFINS, NF_ALIQCOFINS,NF_BASE_COFINS, it.IBPT_VLAP,it.IBPT_ALIQFED, it.IBPT_ALIQEST,                                                                       '+
  ' NF_VALOR_BCICMS_DESTINO, NF_PERC_FCP, NF_ALIQ_ICMS_INTERNA_DESTINO, NF_ALIQ_ICMS_INTERESTADUAL, NF_PERC_PARTILHA_DESTINO,                                       '+
  ' NF_VALOR_FCP, NF_VALOR_PARTILHA_DESTINO, NF_VALOR_PARTILHA_ORIGEM, PR.PRD_CODBARRA, NF_ALIQDOSIMPLES, NF_CREDICMSDOSIMPLES,  '+
  ' NF_ICMSSUBSTITUTO_ANT, NF_CBENEF, pr.PRD_UND_TRIB, pid.PRF_QUANT_TRIB,NF_VALOR_FCP_st, CST_PIS, CST_COFINS,'+
  '  NF_VALORICMSDESON,NF_MOTIVDESON, PRD_VAIXML , OPE_CENQ_IPI, pr.PRD_CODIGO_FCI                           '+
  ' FROM NF_IT01 it                                                                                                                                                 '+
  ' JOIN PRD0000 PR ON (PR.PRD_REFER = IT.PRD_REFER  '+ ConcatSe (' and PR.',dbInicio.ExclusivoSql('PRODUTOS') ) + ')                                              '+
  ' LEFT JOIN SITUACAO_TRIBUTARIA ST ON (PR.STB_TRIBUTACAO =  ST.STB_TRIBUTACAO)                                                                                    '+
  ' LEFT JOIN prd_lote lo on lo.prdl_registro = it.prdl_registro                                                                                                    '+
  ' left join PED_IT01 pid on (pid.PRF_REGISTRO = it.PRF_REGISTRO and pid.emp_codigo = it.emp_codigo )                                                                                                  '+
  ' LEFT JOIN OPE0000 OP ON (OP.OPE_CODIGO  = it.OPE_CODIGO )                                                                                                       '+
  ' WHERE NF_IT_NOTANUMER =  '+QuotedStr(Nota) +
  ' and it.emp_codigo = ' + QuotedStr(EmpCodigo) ) ;
   if (qNota.FieldByName('NF_INTEGRADO').AsString = 'S') then
      qItemNota.SQL.add( ' AND PR.PRD_PRODSERV = '+ QuotedStr('P'));
   qItemNota.SQL.add(' ORDER BY pid.PED_CODIGO, pid.PRF_SEQUENCIA');

 qItemNota.Open;


end;

procedure TfrmProcessaNFe.BuscaNota(const Nota:string);
begin
 qnota.Close;
 //novo
 if EmpCodigo = '' then
    EmpCodigo := DBInicio.Empresa.EMP_CODIGO;


 qNota.CommandText :=
    ' SELECT nf_status_nfe, nf.nf_num_nfe, nf.NF_NOTANUMBER, OPE_DESCRINATUREZA, NF.PCL_CODIGO, PC.PCL_NOME ,PC.PCL_MODALIDADE, NF_ENTR_SAID, nf_finalidade,  '+
    ' OPE_TIPO_OPERACAO,ped.CLI_CONSFINAL,ENDERECO_ENTREGA, nf.CLI_CODIGO, COALESCE(ED.ESTADO, CLI_UF) CLI_UF_ENTR ,CLI_UF,          '+
    ' CLI_CGC,CLI_INSCMUNI,  CLI_FANTASIA,  CLI_INSC,CLI_SUFRAMA,cl.CLI_RAZAO , CLI_FONE, CLI_ENDERE,                 '+
    ' cli_bairro, cl.cli_cidade,CLI_EMAIL,   CLI_CEP, pa.pai_pais, cl.pai_codigo,                                                      '+
    ' (SELECT CID_COD_IBGE  FROM CID0000 WHERE CID_CODIGO = cl.CID_CODIGO) CID_COD_IBGE,                                            '+
    '  COALESCE(re.ESTADO, CLI_UF) CLI_UF_retirada, re.cod_cidade codcidade_retirada, ' +
    ' re.nome as nome_retirada, RE.DESCRICAO AS end_retirada, re.insc_estadual as ie_retirada,  re.CNPJ AS CNPJ_retirada, re.COD_PAIS AS COD_PAIS_retirada, re.NUMERO AS NUM_retirada,   '+
    ' ed.nome as nome_entr , ed.DESCRICAO AS end_entr, ed.insc_estadual as ie_entr,  ed.CNPJ AS CNPJ_ENTR, ed.COD_PAIS AS COD_PAIS_ENTR, ed.NUMERO AS NUM_ENTR,                       '+
    ' re.COMPLEMENTO AS COMP_retirada, re.BAIRRO AS BAIRRO_retirada, re.CXPOSTAL   ,                                                                           '+
    ' ed.COMPLEMENTO AS COMP_ENTR, ed.BAIRRO AS BAIRRO_ENTR, ed.CXPOSTAL CXPOSTAL_ENTR,                                                                        '+
    ' re.CEP AS CEP_retirada, re.CIDADE AS CID_retirada,                                                                                                       '+
    ' ed.CEP AS CEP_ENTR, ed.CIDADE AS CID_ENTR, CID_COD_IBGE AS IBGE_entr ,ed.cod_pais, pae.pai_pais pais_entr,                                                           '+

   ' nf.PCL_CODIGO,  NF_BASEICMS, NF_VL_ICMS, NF_VLBASESUBTRIB, NF_VL_SUBTRIB, NF_VALOR_COFINS, NF_VLFRETE,                         '+
   ' NF_VLSEGURO, NF_DESP_ACES, NF_VLDIFAL, NF_VL_DESCTO, NF_VL_DESCTO_FAT,                                                                     '+
   ' NF_TOT_PROD, NF_TOT_NOTA , NF_VL_IPI, NF_BASE_IPI, NF_VALORTOT_PIS, NF_EMISSAO,NF_SAIDA,NF_HORASAIDA,                          '+
   ' nf.OPE_NATUREZA, nf.OPE_CODIGO, OPE_DESCRI,  NF_TIPODOC,                                                                       '+
   ' NF_MODELO_NF, NF_SERIE, NF_TIPO_FRETE,nf_observacao, NF_CHAVE_NFE,                                                        '+
   ' NF_PLACAVE, nf.nf_ufveiculo,                                                                                              '+
   ' ped.TRP_CODIGO, tr.TRP_RAZAO, trp_cep, PED_FRETE,                                                                         '+
   ' Tr.TRP_UF , TRP_INSC , TRP_CGC ,TRP_ENDERE,TRP_CIDADE, TRP_FONE,                                                          '+
   ' NF_MARCA, NF_QTDE, NF_PESOBRU, NF_PESOLIQ, NF_ESPECIE, NF_NUMERO,                                                         '+
   ' nf.PED_CODIGO, rp.REP_CODIGO, rp.REP_NOME, RP.REP_EMAIL,                                                                 '+
   ' NF_ALIQCREDSIMPLES, NF_VLCREDSIMPLES, nf.NF_REGISTRO,                                                                    '+
   ' op.EMP_CSOSN, op.EMP_CSOSN_ST, op.OPE_FORMULA_BASE_ICMS, op.OPE_ICMS_DESONERADO_DIMINUI,                                 '+
   ' nf_export_uf_embarque, nf_export_local_embarque,    IBPT_VLAPROXTRIBUTOS,                                                '+
   ' NF_VALORTOT_COFINS,NF_VALOR_TOTAL_FCP,NF_VALOR_TOTAL_PARTILHA_DEST, NF_VALOR_TOTAL_PARTILHA_ORIG,                        '+
   ' COALESCE(nf.NF_OBS_OPER,'''') || '' '' || COALESCE(nf.NF_OBSG6,'''') || '' ''  '+
  	'  ||  COALESCE(nf.NF_OBS_OPER_AVISO2,'''') AS MSG_NFE_OPER_FISCAL, '+
    ' nf.nf_observacao,  nf.nf_chave_nfe_referenciada, nf.NF_FORMAPAGTO, OP.OPE_ESCRITA, NF_INTEGRADO , NF_TIPONOTA,          '+
    ' nf.OPE_SEMVLCOM, ped.cli_cpf, FPG_DESCRICAO, ft.FAT_VALORANTECIPADO, NF_VALOR_TOTAL_FCPST , NF_TotalICMS_Deson '+
    ' FROM NF0001 nf ' +
    ' JOIN CLI0000 cl ON (cl.CLI_CODIGO = nf.CLI_CODIGO) '+// ConcatSe (' and CL.',dbInicio.ExclusivoSql('CLIENTES') ) +  '   )     '+
    ' join ped0000 ped on (ped.ped_codigo = nf.ped_codigo and nf.emp_codigo = ped.emp_codigo )                                  '+
    ' LEFT JOIN ENDERECO ED ON (ED.CODIGO = ENDERECO_ENTREGA )                                                                  '+
    ' LEFT JOIN ENDERECO RE ON (RE.COD_CLIENTE = CL.CLI_CODIGO AND RE.TIPO = 2 )                                                   '+
    ' LEFT JOIN CID0000 ec ON (ec.CID_CODIGO = ed.COD_CIDADE)                                                                   '+
    ' LEFT JOIN PCL0000 PC ON (PC.PCL_CODIGO = NF.PCL_CODIGO)                                                                   '+
    ' LEFT JOIN FAT0000 FT ON (FT.fat_codigo = NF.NF_NOTANUMBER  AND  ft.EMP_CODIGO = nf.emp_codigo)                            '+
    ' LEFT JOIN OPE0000 OP ON (OP.OPE_CODIGO  = NF.OPE_CODIGO AND OP.OPE_NATUREZA = NF.OPE_NATUREZA )                           '+
    ' LEFT JOIN TRP0000 Tr ON (Tr.trp_codigo = ped.trp_codigo) '+
    ' LEFT JOIN REP0000 RP ON (rp.REP_CODIGO = nf.REP_CODIGO '+ ConcatSe (' and RP.',dbInicio.ExclusivoSql('REPRESENTANTES') ) +  '  ) '+
    ' LEFT JOIN pais0000 pa ON (pa.pai_codigo = cl.pai_codigo)                                                                  '+
    ' LEFT JOIN pais0000 pae ON (pae.pai_codigo = ed.cod_pais)    '+
    ' LEFT JOIN FORMA_PAGAMENTO FP on (FP.FPG_REGISTRO = NF.FPG_REGISTRO )  ' +
    ' WHERE NF_NOTANUMBER = '+QuotedStr(Nota) +
    ' and nf.EMP_CODIGO = '+ QuotedStr(EmpCodigo);

  // Clipboard.AsText :=  qNota.CommandText;

  qnota.Open;
  BuscaItem(Nota);

end;

procedure TfrmProcessaNFe.CarregarParametros;
var
  serie: string;
begin
  if dbinicio.Empresa.EMP_CODIGO = EmpCodigo then
  begin    // primeiro carregamento
    fEmailRepresentanteNFE := DBInicio.Nfe.EmailRepresentanteNFE;

    fUF := DBInicio.Empresa.UF;
    fOPT_SIMPLES := DBInicio.Empresa.OPT_SIMPLES;
    fiCSOSN := DBInicio.Empresa.iCSOSN;
    fiCSOSN_ST := DBInicio.Empresa.iCSOSN_ST ;

    femail := DBInicio.Empresa.EMAIL;
    fhome_page := DBInicio.Empresa.HOME_PAGE;
    frazao := DBInicio.Empresa.RAZAO;

    if DBInicio.GetParametroSistema('PMT_MULTIPLAS_IE') = 'S' then
    begin
      if FormFaturamento <> nil then
        fINSC_EST     := BuscaUmDadoSqlAsString('SELECT emi.EMI_IE FROM EMP_MULTIPLAS_IE emi JOIN PEDIDO_IE pi ON (pi.EMI_CODIGO = emi.EMI_CODIGO) WHERE pi.PED_CODIGO =  ' + QuotedStr(FormFaturamento.cdsnotas.FieldByName('PED_CODIGO').AsString))
      else
        fINSC_EST     := BuscaUmDadoSqlAsString('SELECT emi.EMI_IE FROM EMP_MULTIPLAS_IE emi JOIN PEDIDO_IE pi ON (pi.EMI_CODIGO = emi.EMI_CODIGO) WHERE pi.PED_CODIGO =  ' + QuotedStr(FormFatPedido.DBEditPedido.Text))
    end
    else
      fINSC_EST     := DBInicio.Empresa.INSC_EST;

    if (DBInicio.GetParametroSistema('PMT_MULTIPLAS_IE') = 'S') then
    begin
      if FormFaturamento <> nil then
        fSerieNF     := BuscaUmDadoSqlAsString('SELECT emi.EMI_SERIE_NF FROM EMP_MULTIPLAS_IE emi JOIN PEDIDO_IE pi ON (pi.EMI_CODIGO = emi.EMI_CODIGO) WHERE pi.PED_CODIGO =  ' + QuotedStr(FormFaturamento.cdsnotas.FieldByName('PED_CODIGO').AsString))
      else
        fSerieNF     := BuscaUmDadoSqlAsString('SELECT emi.EMI_SERIE_NF FROM EMP_MULTIPLAS_IE emi JOIN PEDIDO_IE pi ON (pi.EMI_CODIGO = emi.EMI_CODIGO) WHERE pi.PED_CODIGO =  ' + QuotedStr(FormFatPedido.DBEditPedido.Text))
    end
    else
      fSerieNF     := DBInicio.Empresa.SerieNF;
    // fSerieNF := DBInicio.Empresa.SerieNF;

    fCNPJ_CNPF    := DBInicio.Empresa.CNPJ_CNPF;
    fFANTASIA     := DBInicio.Empresa.FANTASIA;
    fENDERECO     := DBInicio.Empresa.ENDERECO;
    fBAIRRO       := DBInicio.Empresa.BAIRRO;
    fCIDADE       := DBInicio.Empresa.CIDADE;
    ffone         := dbinicio.Empresa.FONE;
    fCEP          := DBInicio.Empresa.CEP;
    fEmailHost := DBInicio.Empresa.EmailHost;
    femailAutenticacao := DBInicio.Empresa.EmailAutenticacao;
    fEmailInterno := DBInicio.Empresa.EmailInterno;
    fIDToken := dbinicio.nfce.idToken;
    fCSC := dbinicio.nfce.CSC ;
    fPMT_RESPONSAVEL_TECNICO   := DBInicio.Empresa.WPMT_RESPONSAVEL_TECNICO;
    fINS_MUNICIPAL := DBInicio.Empresa.INS_MUNICIPAL;
    femp_crt := DBInicio.Empresa.emp_crt;
    fCID_IBGE := DBInicio.Empresa.CID_IBGE;
    fEmailUserName  := DBInicio.empresa.EmailUserName;
    fEmailPassworld := DBInicio.Empresa.EmailPassworld;
    fEmailModoSSL := DBInicio.Empresa.EmailModoSSL;
    fEmailPorta := DBInicio.Empresa.EmailPorta;
    fEmailRequerConexaoSSL := DBInicio.Empresa.EmailRequerConexaoSSL;
    fEmailRequerConexaoTLS := DBInicio.Empresa.EmailRequerConexaoTLS;
    fEmailVersaoSSL := DBInicio.Empresa.EmailVersaoSSL;
    fusar_logo := DBInicio.Nfe.Usar_Logo;
  end
  else
  begin
    OpenAux2(' SELECT EMP_SERIE_NFE, ' +
             '  EMP_UF,      ' +
             '  EMP_OPTANTE_SIMPLES, ' +
             '  EMP_CSOSN,           ' +
             '  EMP_CSOSN_ST,        '+
             '  PMT_GerarTagICMSSubsPagaAnter, ' +
             '  EMP_EMAIL,  '+
             '  EMP_HOME,   '+
             '  EMP_EMAIL_INTERNO, '+
             '  EMP_RAZAO,        '+
             '  EMP_FANTASIA,     '+
             '  EMP_ENDERE,       '+
             '  EMP_BAIRRO,       '+
             '  EMP_CEP,          '+
             '  EMP_CIDADE,       '+
             '  EMP_FONE,         '+
             '  EMP_INSC,         '+
             '  EMP_INSC_MUNICIPAL, '+
             '  EMP_CGC ,         '+
             '  EMP_HOST,          '+
             '  EMP_REQUER_AUTENTICACAO, EMP_CSC, EMP_idToken, '+
             '  PMT_RESPONSAVEL_TECNICO, '+
             '  EMP_CRT, CID_CODIGO, '+
             '  EMP_USERNAME,EMP_PASSWORD, EMP_MODO_SSL,EMP_PORTA, '+
             '  EMP_REQUER_CONEXAO_SSL,  EMP_REQUER_CONEXAO_TLS, EMP_VERSAO_SSL, '+
             '  EMP_LOGONFE_PROPRIO, EMP_NFE_REP  ' +
             '   FROM EMP0000 e JOIN PRMT0001 p ON (p.EMP_CODIGO = e.EMP_CODIGO) '+
             ' where e.emp_codigo = '+QuotedStr(EmpCodigo));
    fEmailRepresentanteNFE := qAux2.FieldByName('EMP_NFE_REP').asString = 'S';


    fUF           := qAux2.FieldByName('EMP_UF').asString;
    fOPT_SIMPLES  := qAux2.FieldByName('EMP_OPTANTE_SIMPLES').asString;
    fiCSOSN       := qAux2.FieldByName('EMP_CSOSN').AsInteger;
    fiCSOSN_ST    := qAux2.FieldByname('EMP_CSOSN_ST').AsInteger;

    fEMAIL        := qAux2.FieldByname('EMP_EMAIL').AsString;
    fHOME_PAGE    := qAux2.FieldByname('EMP_HOME').AsString;
    fRAZAO        := qAux2.FieldByname('EMP_RAZAO').AsString;

    if DBInicio.GetParametroSistema('PMT_MULTIPLAS_IE') = 'S' then
      fINSC_EST     := BuscaUmDadoSqlAsString('SELECT emi.EMI_IE FROM EMP_MULTIPLAS_IE emi JOIN PEDIDO_IE pi ON (pi.EMI_CODIGO = emi.EMI_CODIGO) WHERE pi.PED_CODIGO =  ' + QuotedStr(FormFaturamento.cdsnotas.FieldByName('PED_CODIGO').AsString))
    else
      fINSC_EST     := qAux2.FieldByname('EMP_INSC').AsString;
    if DBInicio.GetParametroSistema('PMT_MULTIPLAS_IE') = 'S' then
      fSerieNF     := BuscaUmDadoSqlAsString('SELECT emi.EMI_SERIE_NF FROM EMP_MULTIPLAS_IE emi JOIN PEDIDO_IE pi ON (pi.EMI_CODIGO = emi.EMI_CODIGO) WHERE pi.PED_CODIGO =  ' + QuotedStr(FormFaturamento.cdsnotas.FieldByName('PED_CODIGO').AsString))
    else
      fSerieNF     := qAux2.FieldByName('EMP_SERIE_NFE').asString;

    fCNPJ_CNPF    := MascaraCNPJ_CPF(qAux2.FieldByname('EMP_CGC').AsString);
    fINS_MUNICIPAL:= qAux2.FieldByname('EMP_INSC_MUNICIPAL').AsString;
    fFANTASIA     := qAux2.FieldByname('EMP_FANTASIA').AsString;
    fENDERECO     := qAux2.FieldByname('EMP_ENDERE').AsString;
    fBAIRRO       := qAux2.FieldByname('EMP_BAIRRO').AsString;
    fCIDADE       := qAux2.FieldByname('EMP_CIDADE').AsString;
    ffone        :=  MascaraFone(qAux2.FieldByname('EMP_FONE').AsString);
    fCEP          := copy(qAux2.FieldByname('EMP_CEP').AsString,1,5)+'-'+copy(qAux2.FieldByname('EMP_CEP').AsString,6,3);
    fPMT_RESPONSAVEL_TECNICO :=  (qAux2.FieldByName('PMT_RESPONSAVEL_TECNICO').AsString = 'S');
    fEmailHost := qAux2.FieldByname('EMP_HOST').AsString;
    fEmailAutenticacao := qAux2.FieldByname('EMP_REQUER_AUTENTICACAO').AsString = 'S';
    fEmailInterno:=qAux2.FieldByName('EMP_EMAIL_INTERNO').AsString;
    fCSC :=      qAux2.FieldByname('EMP_CSC').AsString ;
    fIDToken :=  qAux2.FieldByname('EMP_idToken').AsString ;
    femp_crt  := qAux2.FieldByName('EMP_CRT').AsString;
    fCID_IBGE :=  BuscaUmDadoSqlAsInteger('SELECT CID_COD_IBGE  FROM CID0000 WHERE CID_CODIGO = '+ IntToStr(qAux2.FieldByName('CID_CODIGO').AsInteger));
    fEmailUserName  := qAux2.FieldByname('EMP_USERNAME').AsString;
    fEmailPassworld := qAux2.FieldByname('EMP_PASSWORD').AsString;
    fEmailModoSSL := qAux2.FieldByname('EMP_MODO_SSL').AsString ;
    fEmailPorta := qAux2.FieldByname('EMP_PORTA').AsString;
    fEmailRequerConexaoSSL := qAux2.FieldByname('EMP_REQUER_CONEXAO_SSL').AsString = 'S';
    fEmailRequerConexaoTLS := qAux2.FieldByname('EMP_REQUER_CONEXAO_tLs').AsString = 'S';
    fEmailVersaoSSL := qAux2.FieldByname('EMP_VERSAO_SSL').AsInteger;
    fUsar_Logo :=  qAux2.FieldByName('EMP_LOGONFE_PROPRIO').AsString = 'S';
  end;
end;

function TfrmProcessaNFe.CarregarXML(NF_REGISTRO: Integer): boolean;
var
 xml :TStringStream;
 xmlstream : TStream;
begin
 ACBrNFe1.NotasFiscais.Clear;
  OpenAux('select first 1  NFX_XML from NF0001_XML'+
          ' where  NF_REGISTRO = '+ IntToStr(NF_REGISTRO) +
          ' ORDER BY NFX_REGISTRO DESC ');
   if qAux.FieldByName('NFX_XML').AsString <> '' then
   begin
     xml :=  TStringStream.Create;
     xmlstream := qAux.CreateBlobStream(qAux.FieldByName('NFX_XML'),bmRead);
     try
       xml.CopyFrom(xmlstream,xmlstream.Size) ;
       result := ACBrNFe1.NotasFiscais.LoadFromStream(xml,TRUE) ;

     finally
       FreeAndNil(xml);
       FreeAndNil(xmlstream);
     end;
   end
   Else
     result:=False;

end;

procedure TfrmProcessaNFe.ConfiguracoesIniciais(Tipo:TpcnModeloDF);
var path   :string;
    LOGO   :tBitMap;
begin
  path := DBInicio.Versao.PATH +'NFe4';

  if tipo = moNFe then
  begin
    ACBrNFe1.DANFE := ACBrNFeDANFEFR1;
    ACBrNFeDANFEFR1.FastFile :=  DBInicio.Versao.PATH+'NFe4'+'\relatorio\DANFE.fr3';

    if DBInicio.Empresa.wPMT_FATURA_MULTIEMPRESA then
    begin
      LOGO := tBitMap.Create;
      OpenAux3(' SELECT EMP_LOGO, EMP_LOGO_NFE from emp0000 as emp WHERE emp.emp_codigo = '+QuotedStr(EmpCodigo));

      If fUsar_Logo then
      begin
        Le_Imagem_JPEG_toBMP( qaux3.FieldByName('EMP_LOGO_NFE') as TBlobField ,logo );
        Logo.SaveToFile(DBInicio.Versao.PATH+'NFe4'+'\temp\'+ 'logo' + DBInicio.EMP_CODIGO + '.jpg')
      end
      else
      begin
        Le_Imagem_JPEG_toBMP( qaux3.FieldByName('EMP_LOGO') as TBlobField ,logo );
        LOGO.SaveToFile(DBInicio.Versao.PATH+'NFe4'+'\temp\'+ 'logo' + DBInicio.EMP_CODIGO + '.jpg');
      end;

         ACBrNFe1.DANFE.ExpandeLogoMarca := fusar_logo;


    end
    else
    begin
      If not FileExists(DBInicio.Versao.PATH+'NFe4'+'\temp\'+ 'logo' + DBInicio.EMP_CODIGO + '.jpg') then
      begin
        If fUsar_Logo then
          DBInicio.Nfe.Logo.SaveToFile(DBInicio.Versao.PATH+'NFe4'+'\temp\'+ 'logo' + DBInicio.EMP_CODIGO + '.jpg')
        else
          DBInicio.Empresa.LOGO.SaveToFile(DBInicio.Versao.PATH+'NFe4'+'\temp\'+ 'logo' + DBInicio.EMP_CODIGO + '.jpg');
      end;

      ACBrNFe1.DANFE.ExpandeLogoMarca := fusar_logo;

    end;
  end
  Else
  begin
   ACBrNFe1.DANFE := ACBrNFeDANFCeFortes1 ;

   //ACBrNFeDANFCEFR1.FastFile :=  DBInicio.Versao.PATH+'NFe4'+'\relatorio\DANFeNFCe5_00.fr3';
   ACBrNFe1.DANFE.PathPDF  :=   path + '\'+ FormatDateTime('yyyymm',date) + '\NFCe' ;
  end;
  with ACBrNFe1.DANFE do
   begin
     if (Tipo = moNFe) then
     begin
       PathPDF    := path + '\'+ FormatDateTime('yyyymm',date) + '\NFe';
       if DBInicio.Nfe.TipoDanfe = tpRetrato then
         TipoDANFE  := tiRetrato
       else
        TipoDANFE := tiPaisagem;
     end
     Else
       PathPDF    := path + '\'+ FormatDateTime('yyyymm',date) + '\NFCe' ;


     Logo       := path+ '\temp\'+'logo' + DBInicio.EMP_CODIGO + '.jpg';
    Email := fEMAIL;
    Site := fHOME_PAGE;

   end;


  with ACBrNFe1.Configuracoes.Arquivos do
   begin
     EmissaoPathNFe     := True;
     Salvar             := True;
     SepararPorMes      := True;
    // SepararPorAno      := True;
     AdicionarLiteral   := True;
     EmissaoPathNFe     := True;
     SalvarEvento       := True;
     SepararPorCNPJ     := False;
     SepararPorModelo   := False;
     PathSalvar         := path ;
     PathSchemas        := DBInicio.Versao.PATH+'NFe4'+'\schemas' ;
     PathNFe            := path ;
     PathInu            := path+'\Inutilizadas' ;
     PathEvento         := path;
   end;

  with ACBrNFe1.Configuracoes.Geral do
   begin
     if DBInicio.Nfe.Emp_TipoCertificado = 1 then //a1
     begin
       SSLLib                := libCapicomDelphiSoap;
       SSLCryptLib           := cryCapicom;
       SSLHttpLib            := httpIndy;
       SSLXmlSignLib         := xsMsXmlCapicom;
     end
     else
     if (DBInicio.Nfe.Emp_TipoCertificado = 3) or (DBInicio.Nfe.Emp_TipoCertificado = 9) then
     begin
       SSLLib := libWinCrypt;
       SSLCryptLib := cryWinCrypt;
       SSLHttpLib := httpWinHttp;
       SSLXmlSignLib := xsLibXml2;
     end;
     ACBrNFe1.Configuracoes.WebServices.SSLType :=  LT_TLSv1_2;

     AtualizarXMLCancelado := true;
     ExibirErroSchema := True;
     RetirarAcentos   := true;
         //'[TN]%TAGNIVEL%[/TN] [TAG]%TAG%[/TAG] [DSC]%DESCRICAO%[/DSC] [MSG]%MSG%.[/MSG] [ID]%ID%[/ID] ';
     FormatoAlerta    :=  '[TAG]:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%. [/TAG]';
     If DBInicio.Nfe.Contingencia = 'S' then
        FormaEmissao := teContingencia
     else
       FormaEmissao     := teNormal;

     if tipo = moNFe then
       ModeloDF         := moNFe   //notafiscal eletronica
     else
       ModeloDF := moNFCe;


     VersaoDF         := ve400;

     Salvar           := true;
     if ModeloDF = moNFCe then
     begin
       //IncluirQRCodeXMLNFCe := True;
       IdCSC            :=  fidToken;
       CSC              :=  fCSC; // 9e0c9eec1cf06209 ab5aade444e1caea 0123456789;
       VersaoQRCode     :=  veqr200;
     end;
   end;

  with ACBrNFe1.Configuracoes.WebServices do
   begin
     UF         := fUF;
     if dbinicio.Nfe.AmbienteWebService = tpProducao then
     begin
       ACBrNFe1.Configuracoes.WebServices.Ambiente := taProducao;
       fPMT_GerarTagICMSSubsPagaAnter :=  'P';
     end
     else
     begin
       ACBrNFe1.Configuracoes.WebServices.Ambiente := taHomologacao;
       fPMT_GerarTagICMSSubsPagaAnter :=  'H' ;
     end;
     Visualizar := False;
     Salvar     := True;   ///SALVAR SOAP
//     AjustaAguardaConsultaRet := False;
//     AguardarConsultaRet:= 0;
//     Tentativas          := 0;
//     IntervaloTentativas  := 0;
//     TimeOut := 0;

     if fUF = 'SP' then
     begin
       AguardarConsultaRet:= 5000;
       Tentativas          := 1;
       IntervaloTentativas  := 180000;
       TimeOut := 20000;

     end
     else
     begin
       AguardarConsultaRet:= 5000;
       Tentativas          := 7;
       IntervaloTentativas  := 3000;
       TimeOut := 10000;
     end;
     //proxy
     ProxyHost := '';
     ProxyPort := '';
     ProxyUser := '';
     ProxyPass := '';
   end;
   if fPMT_GerarTagICMSSubsPagaAnter = 'N'  then
     ACBrNFe1.Configuracoes.Geral.ForcarGerarTagRejeicao938:= fgtNunca
   else IF fPMT_GerarTagICMSSubsPagaAnter = 'P' then
     ACBrNFe1.Configuracoes.Geral.ForcarGerarTagRejeicao938:= fgtSomenteProducao
   else if fPMT_GerarTagICMSSubsPagaAnter = 'H' then
     ACBrNFe1.Configuracoes.Geral.ForcarGerarTagRejeicao938 := fgtSomenteHomologacao
   else if fPMT_GerarTagICMSSubsPagaAnter = 'S'  then
     ACBrNFe1.Configuracoes.Geral.ForcarGerarTagRejeicao938:= fgtSempre;
end;

procedure TfrmProcessaNFe.ConsultarNota(const Nota:string);
var resultCons: boolean;
smotivo,nf_reg :integer;
sprotocolo, chave,nomeArq, msgerro,sql, status : string;
begin
  Application.ProcessMessages;
  pMsg.Caption := 'Consultando notas transmitidas';
  Application.ProcessMessages;
  BuscaNota(Nota);
  If not CarregarXML(qNota.FieldByName('nf_registro').AsInteger) then
  begin
    if not (qNota.FieldByName('NF_CHAVE_NFE').IsNull) and (qNota.FieldByName('NF_CHAVE_NFE').AsString <> '') then
      chave := qNota.FieldByName('NF_CHAVE_NFE').AsString
    else
      exit;
  end;
  if (chave ='') and not (qNota.FieldByName('NF_CHAVE_NFE').IsNull) and (qNota.FieldByName('NF_CHAVE_NFE').AsString <> '')  then
    chave := qNota.FieldByName('NF_CHAVE_NFE').AsString;

  try
   resultCons:= ACBrNFe1.Consultar(chave);
  except
     on E : Exception do
      begin
        nf_reg:=  qNota.FieldByName('nf_registro').AsInteger ;
        if pos('timed out',e.message,1) > 0 then
        begin
          GravarHistorico ( 'Timed out. consulte mais tarde  '+ RetirarSujeira(e.Message), nf_reg  ,   0);
        end
        else
        if pos('DadosPFX',e.message,1) > 0 then
        begin
           GravarHistorico ( 'Erro no certificado. consulte mais tarde  '+ RetirarSujeira(e.Message),nf_reg,  0);
        end
        else if pos('An error occurred in the secure channel support',e.message,1)>0 then
        begin
            GravarHistorico ( 'Erro interno : '+ RetirarSujeira(e.Message),nf_reg, 0);

        end
        else if pos('Erro Interno',E.Message,1)>0 then
        begin
          GravarHistorico (copy(RetirarSujeira(e.Message),1,80)+ ', tente mais tarde',nf_reg,0);

        end
        else
        if ACBrNFe1.WebServices.Consulta.cStat in [0] then  //nem envio, falha no xml
        begin

            GravarHistorico ( 'Não enviado (REJEIÇÃO)  '+ RetornarConteudoEntre(e.Message, '[TAG]','[/TAG]'), nf_reg,   0);
            GravarStatus('R',nf_reg);
            status := 'R';
            nomeArq := Copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 44);
            nomeArq := ACBrNFe1.Configuracoes.Arquivos.PathSalvar + '\'+ FormatDateTime('yyyymm',date) + '\Rejeitados\' + NomeArq; //
            ACBrNFe1.NotasFiscais.GravarXML(NomeArq +'-nfe.xml');
        end
        else
        begin
          if not ACBrNFe1.NotasFiscais.Items[0].confirmada then
          begin
            GravarHistorico ( 'Processado (REJEIÇÃO): '+ ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.xMotivo,
                              nf_reg,   ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.cStat);
            GravarStatus('R',nf_reg);
            status := 'R';
            nomeArq := Copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 44);
            nomeArq := ACBrNFe1.Configuracoes.Arquivos.PathSalvar + '\'+ FormatDateTime('yyyymm',date) + '\Rejeitados\' + NomeArq; //
            ACBrNFe1.NotasFiscais.GravarXML(NomeArq +'-nfe.xml');
          end;

        end;
      end;
    end;
    if resultCons then
    begin
      sMotivo := ACBrNFe1.WebServices.Consulta.cstat;
      sProtocolo := ACBrNFe1.WebServices.Consulta.Protocolo;
      nf_reg:=  qNota.FieldByName('nf_registro').AsInteger ;
      if ACBrNFe1.WebServices.Consulta.cstat in [100] then //autorizada
      begin
       if ACBrNFe1.NOTAsFiscais.count = 1 then
         chave := Copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 44)
       else
       Begin
         chave :=  ACBrNFe1.WebServices.CONSULTA.NFeChave ;
         nomeArq := ACBrNFe1.Configuracoes.Arquivos.PathSalvar + FormatDateTime('yyyymm',ACBrNFe1.WebServices.Consulta.DhRecbto) + '\NFE\' + chave+'-nfe.xml';
         if FileExists(nomeArq) then
           ACBrNFe1.NotasFiscais.LoadFromFile(nomeArq,TRUE)
         else
         begin
          ACBrNFe1.NotasFiscais.Clear;
          GerarNFE (False);
         end;
       End;

       if ACBrNFe1.Configuracoes.Geral.ModeloDF = moNFe then
         GravarHistorico ( 'NFe Autorizada, protocolo: '+sProtocolo,nf_reg,   100)
       else
         GravarHistorico ( 'NFCe Autorizada, protocolo: '+sProtocolo,nf_reg,   100);
       GravarNota(sProtocolo,'A',chave, nf_reg, ACBrNFe1.WebServices.Consulta.DhRecbto,'0');
       GravaXML(0,nf_reg);
      end
      else if ACBrNFe1.WebServices.Consulta.cstat  = 101 then
      begin
         if qNota.FieldByName('nf_status_nfe').asstring = 'A' then //se estava autorizada e foi para cancelada, cancelar fatura
         begin
           CancelamentoFatura(qNota.FieldByName('NF_NOTANUMBER').AsString,
               qNota.FieldByName('PED_CODIGO').AsString,
               qNota.FieldByName('OPE_CODIGO').AsString,
               qNota.FieldByName('OPE_NATUREZA').AsString,
               qNota.FieldByName('NF_TOT_PROD').AsFloat,
               qNota.FieldByName('NF_VL_DESCTO').AsFloat,
               qNota.FieldByName('NF_NUM_NFE').AsInteger,
               qNota.FieldByName('NF_VL_SUBTRIB').AsFloat,
               qNota.FieldByName('NF_VL_IPI').AsFloat);
         end;
         //gravar inutulização
         msgErro :=    ACBrNFe1.WebServices.Consulta.xmotivo  ;
         if msgerro = '' then
          msgerro := 'Cancelamento de NF-e homologado';
          sql := 'INSERT INTO NF0001_INU_CANC (EMP_CODIGO, fic_data, fic_hora, USU_CODIGO, FIC_TIPO,FIC_NUMERO_NFE, FIC_OBSERVACAO) '+
         ' VALUES ('+QuotedStr(EmpCodigo)+','+
         DateToSQL(  ACBrNFe1.WebServices.Consulta.DhRecbto)+','+
         TimeToSQL(  ACBrNFe1.WebServices.Consulta.DhRecbto)+ ','+ dbinicio.Usuario.CODIGO+','+QuotedStr('C')+ ','+IntToStr(nf_reg) + ','+
                 QuotedStr( msgerro)+')';
          ExecSql(SQL);
          sql:=   ' UPDATE NF0001  '+
                  ' SET  NF_STATUS_NFE = ''C'', '  +
                  '  NF_PROTOCOLO_NFE_CANC = '+ QuotedStr(sprotocolo)+ ','+
                  '  NF_CANCELADA = ''S'', '+
                  ' NF_VENDA_FATURADA = ''N''' +
                  ' WHERE NF_REGISTRO = '+ IntToStr(nf_reg);
         ExecSql(SQL);
         GravarHistorico ( 'Cancelado , protocolo: '+sProtocolo , nf_reg,ACBrNFe1.WebServices.Consulta.cstat);
      end

      else
       if (ACBrNFe1.WebServices.Consulta.cstat in [110,205,233,234] ) or (ACBrNFe1.WebServices.Consulta.cstat = 301 ) or (ACBrNFe1.WebServices.Consulta.cstat = 302) then
       begin
         case ACBrNFe1.WebServices.Consulta.cstat of
           110: msgErro := 'Uso Denegado';
           205: msgErro := 'NF-e está denegada na base de dados da SEFAZ';
           233: msgErro := 'IE do destinatário não cadastrada';
           234: msgErro := 'IE do destinatário não vinculada ao CNPJ';
           301: msgErro := 'Uso Denegado: Irregularidade fiscal do emitente';
           302: msgErro := 'Irregularidade fiscal do destinatário';
         end;

          GravarHistorico ( 'Processado : '+ msgErro , nf_reg,ACBrNFe1.WebServices.Consulta.cstat);
          GravarStatus('R',nf_reg);
          status := 'R';
          nomeArq := Copy(ACBrNFe1.NotasFiscais.Items[I].NFe.infNFe.ID, 4, 44);
          nomeArq := ACBrNFe1.Configuracoes.Arquivos.PathSalvar + '\'+ FormatDateTime('yyyymm',date) + '\Rejeitados\' + NomeArq; //
          ACBrNFe1.NotasFiscais.GravarXML(NomeArq +'-nfe.xml');


       end
      else//      NF-e não consta na base de dados da SEFAZ
      if ACBrNFe1.WebServices.Consulta.cstat = 217 then
      begin
        GravarHistorico ( 'Não processado : '+ ACBrNFe1.WebServices.Consulta.msg,
                          nf_reg,  217);
        GravarStatus('N',nf_reg);
        status := 'N';

      end
      Else          //Rejeição: Código do Órgão diverge do órgão autorizador
      if  ACBrNFe1.WebServices.Consulta.cstat = 656 then
      begin
        GravarHistorico ( 'Tente daqui a alguns minutos : '+ ACBrNFe1.WebServices.Consulta.msg,   nf_reg,  656);

      end
      else
      begin

        GravarHistorico ( 'Processado (REJEIÇÃO): '+ ACBrNFe1.WebServices.Consulta.msg,
                          nf_reg,   ACBrNFe1.WebServices.Consulta.cstat);
        GravarStatus('R',nf_reg);
        status := 'R';
        nomeArq := Copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 44);
        nomeArq := ACBrNFe1.Configuracoes.Arquivos.PathSalvar + '\'+ FormatDateTime('yyyymm',date) + '\Rejeitados\' + NomeArq; //
        ACBrNFe1.NotasFiscais.GravarXML(NomeArq +'-nfe.xml');
      end;
    end;

end;

procedure TfrmProcessaNFe.DocumentoImportacao;
begin
  If not qDIproduto.IsEmpty then
  begin
  //Declaração de Importação. Pode ser adicionada várias através do comando Prod.DI.Add

    DI := Produto.Prod.DI.Add;
    DI.nDi         := RetiraAcentos(qDIproduto.FieldByName('PID_NUMERO_DI').AsString);
    DI.dDi         := qDIproduto.FieldByName('PID_DATA_DI').AsDateTime;
    DI.xLocDesemb  := qDIproduto.FieldByName('PID_LOCAL_DESEMBARACO').AsString;
    DI.UFDesemb    := qDIproduto.FieldByName('PID_UF_DESEMBARACO').AsString;
    DI.dDesemb     := qDIproduto.FieldByName('PID_DATA_DESEMBARACO').AsDateTime;
    DI.cExportador := qDIproduto.FieldByName('PID_CODIGO_EXPORTADOR').AsString;
    DI.tpViaTransp := StrToTipoViaTransp(OK,IntToStr(qDIproduto.FieldByName('PID_VIA_TRANSPORTE').AsInteger));
    if (di.tpViaTransp = tvMaritima) then
      di.vAFRMM := qDIproduto.FieldByName('PID_VALOR_AFRMM').AsFloat;
    DI.tpIntermedio :=  StrToTipoIntermedio(OK,IntToStr(qDIproduto.FieldByName('PID_FORMA_IMPORTACAO').AsInteger));
    DI.CNPJ := RetirarMascaraCNPJ_INSC(qDIproduto.FieldByName('PID_CNPJ_ADQUIRENTE').AsString);
    DI.UFTerceiro := qDIproduto.FieldByName('PID_UF_ADQUIRENTE').AsString;

    BuscaAdicoesDI(qDIproduto.FieldByName('pid_registro').AsInteger);
    if not qAdicaoDI.IsEmpty then
    begin
      Adicao := DI.adi.Add;
      Adicao.nAdicao     := StrToIntDef(qAdicaoDI.FieldByName('PDA_ADICAO').AsString,0);
      Adicao.nSeqAdi     := StrToIntDef(qAdicaoDI.FieldByName('PDA_SEQ_ADICAO').AsString,0);
      Adicao.cFabricante := qAdicaoDI.FieldByName('PDA_CODIGO_FABRICANTE').AsString;
      // Adicao.vDescDI     := 0; NÃO IMPLEMENTADO  adjutor
      //Adicao.nDraw // não implementado no adjutor
    end;
  end;
end;

procedure TfrmProcessaNFe.EnviarEmailAutorizado(const i,nf_reg : integer;const sprotocolo : string);
var
  email,sNomeArquivo,tipo : string;
  assunto,msg  : string;
  reply, mensagem, AnexosEmail: TStringList;

begin
  if ACBrNFe1.Configuracoes.Geral.ModeloDF = moNFe then
  begin
     tipo := 'nfe';
     ACBrNFe1.DANFE := ACBrNFeDANFEFR1;
  end
  else
  begin
     tipo := 'nfce';
     ACBrNFe1.DANFE := ACBrNFeDANFCEFR1;
     ACBrNFeDANFCEFR1.FastFile :=  DBInicio.Versao.PATH+'NFe4'+'\relatorio\DANFeNFCe5_00.fr3';
     ACBrNFe1.DANFE.ExpandeLogoMarca := false;
     ACBrNFe1.DANFE.PathPDF := DBInicio.Versao.PATH +'NFe4' + '\'+ FormatDateTime('yyyymm',date) + '\NFCe' ;
  end;

  Application.ProcessMessages;
  pMsg.Caption := 'Enviando email da '+UpperCase(tipo)+  ' : '+ IntToStr(ACBrNFe1.NotasFiscais.Items[i].NFe.Ide.nNF);
  EnviarEmail.Visible := true;
  Application.ProcessMessages;
  ACBrNFE1.NotasFiscais.ImprimirPDF;
  AnexosEmail := TStringList.Create;
  try
    sNomeArquivo := Copy(ACBrNFe1.NotasFiscais.Items[i].NFe.infNFe.ID, 4, 44);
    sNomeArquivo :=  PathWithDelim(ACBrNFe1.DANFE.PathPDF) + sNomeArquivo;
    //ACBrNFe1.NotasFiscais.GravarXML(sNomeArquivo+'-'+tipo+'.xml');
    AnexosEmail.Clear;
    AnexosEmail.Add(sNomeArquivo+ '-nfe.pdf');
    AnexosEmail.Add(sNomeArquivo+'-nfe.xml');
    if ACBrNFe1.Configuracoes.WebServices.Ambiente = taHomologacao then
    begin

      assunto :=   'Desconsiderar: '+UpperCase(tipo)+  ' no. : '+
        IntToStr(ACBrNFe1.NotasFiscais.Items[i].NFe.Ide.nNF)+  ' (ambiente homologação) -  não tem Validade Jurídica -'+ fRAZAO;
      If DBInicio.Usuario.USUARIOPADRAO = DBInicio.Usuario.USERNAME then
        email:= 'adjutor@novisistemas.com.br'
      else if fEmailInterno <> '' then
        email := fEmailInterno
      else
        email := 'adjutor@novisistemas.com.br';
      if fEmailRepresentanteNFE AND (qNota.FieldByName('REP_EMAIL').AsString <> '') then
        EMAIL := EMAIL +';'+  qNota.FieldByName('REP_EMAIL').AsString
    end
    else
    begin
     if ACBrNFe1.Configuracoes.Geral.ModeloDF = moNFe then
        assunto :=   'Nota Fiscal eletrônica - '+UpperCase(tipo)+' no. : '+
             IntToStr(ACBrNFe1.NotasFiscais.Items[i].NFe.Ide.nNF)+  ' - '+ fRAZAO
     else
        assunto :=   'Nota Fiscal Consumidor eletrônica - '+UpperCase(tipo)+' no. : '+
             IntToStr(ACBrNFe1.NotasFiscais.Items[i].NFe.Ide.nNF)+  ' - '+ fRAZAO;
       email:= ACBrNFe1.NotasFiscais.items[i].NFe.Dest.Email;
      if fEmailInterno<> '' then
        email:= email +';'+fEmailInterno;

      if fEmailRepresentanteNFE AND (qNota.FieldByName('REP_EMAIL').AsString <> '') then
        EMAIL := EMAIL +';'+  qNota.FieldByName('REP_EMAIL').AsString
    end;
    reply:=  TStringList.Create;
    mensagem := TStringList.Create;
    try
      reply.Clear;
      mensagem.Clear;
      reply.Add(ACBrNFe1.DANFE.Email);

      if ACBrNFe1.Configuracoes.WebServices.Ambiente = taHomologacao then
          mensagem.Add('**** DESCONSIDERAR '+TIPO+' : AMBIENTE DE HOMOLOGAÇÃO');

      mensagem.Add('Nota Fiscal Eletrônica  XML e PDF ');
      mensagem.Add(UpperCase(tipo)+': ' +    IntToStr(ACBrNFe1.NotasFiscais.Items[i].NFe.Ide.nNF));
     // mensagem.Add('Recibo : ')  ;
      mensagem.Add('Chave da Nfe: '+Copy(ACBrNFe1.NotasFiscais.Items[i].NFe.infNFe.ID, 4, 44));
      mensagem.Add('Protocolo de Autorização:  '+sProtocolo  );

      mensagem.Add( DBInicio.Empresa.MensagemNFe  );
      //colocar informações do prestador

     // não funcionou por causa da porta
     // if enviarEmailIndy(email, assunto, mensagem, AnexosEmail, reply) then
     //   reply := reply;

      if enviaMail('NFE', Trim(fEmailUserName), email, assunto, reply[0], mensagem, AnexosEmail) then
      begin

        msg := 'Email enviado a '+email+' da '+tipo+ ' 4.0 n.: '+  IntToStr(ACBrNFe1.NotasFiscais.Items[i].NFe.Ide.nNF) + ' com sucesso';
        //MessageDlg(msg, mtInformation, [mbOK], 0);
        GravarHistorico(msg,nf_reg, 0) ;
        GravarEmailEnviado(nf_Reg,'S');
      end
      else
      begin
        msg := 'Ocorreu algum erro ao enviar a'+ email +' da ' + TIPO + ' 4.0: '+  IntToStr(ACBrNFe1.NotasFiscais.Items[i].NFe.Ide.nNF) ;
        //MessageDlg(msg, mtError, [mbOK], 0);
        GravarHistorico(msg,nf_reg, 0) ;
        GravarEmailEnviado(nf_Reg,'N');
      end;

    finally
      reply.Free;
      mensagem.Free;
    end;
  finally
   FreeAndNil(AnexosEmail);
   EnviarEmail.Visible := False;
  end;


end;

function TfrmProcessaNFe.enviarEmailIndy(const sPara, sAssunto: String; sMensagem: TStrings;  Anexos, sReplyTo: TStrings): boolean;
var
  Send: boolean;
  i:Integer;
  Email:String;
  msg: TIdMessage;

begin
  send:= false;
  if (FEmailHost <> '') then
  begin

    with SMTP do
    begin

        Disconnect;

        if (fEmailAutenticacao) then
           AuthType := satDefault
        else
           AuthType := satNone;

        Host := fEmailHost;
        IOHandler := SSLSocket;
        Password := Trim(fEmailPassworld);
        Port := StrToIntDef(fEmailPorta,0);
        Username := Trim(fEmailUserName);

        if (FEmailRequerConexaoTLS) then
           UseTLS := utUseRequireTLS
        else
           UseTLS := utNoTLSSupport;

    end;

    if FEmailRequerConexaoSSL then
    begin

      case FEmailVersaoSSL of
      1: SSLSocket.SSLOptions.Method := sslvTLSv1;
      2: SSLSocket.SSLOptions.Method := sslvSSLv2;
      3: SSLSocket.SSLOptions.Method := sslvSSLv3;
      end;

      if (fEmailModoSSL = 'B') then
         SSLSocket.SSLOptions.Mode := sslmBoth
      else
      if (fEmailModoSSL = 'C') then
         SSLSocket.SSLOptions.Mode := sslmClient
      else
      if (fEmailModoSSL = 'S') then
         SSLSocket.SSLOptions.Mode := sslmServer
      else
      if (fEmailModoSSL = 'U') then
         SSLSocket.SSLOptions.Mode := sslmUnassigned;

   end;
   msg:= tIdMessage.Create(self);
   try
     with MSG do
     begin
          Clear;
          Email := Trim(fEmailUserName);
          Recipients.EMailAddresses := sPara;
          From.Address := Trim(fEmailUserName);
          From.Text := email;
          From.Name := fRAZAO;
          Subject := sAssunto;
          Body :=  sMensagem;
          ReplyTo.Add;
          ReplyTo.Items[0].Address :=  Trim(sReplyTo[0]);
     end;


      // anexos
      if Assigned(Anexos) then
         for i := 0 to Anexos.Count - 1 do
         begin
              if FileExists(Anexos[i]) then
              begin
                   try
                       TIdAttachmentFile.Create(msg.MessageParts , Anexos[i]);
                    except
                   end;
              end;
         end;


     try
        SMTP.Connect();
        SMTP.Send(MSG);
        SMTP.Disconnect;
        Send := True;
     except
           Send := False;
     end;
      SMTP.Disconnect;

   finally
     msg.free;
   end;
   end;
     Result := Send;
end;

procedure TfrmProcessaNFe.FormCreate(Sender: TObject);
begin
  inherited;

  Application.ProcessMessages;
  Tform(sender).Height := 100;
  tform(sender).Width := 739;
  Screen.Cursor := crHourGlass;
  ACBrNFeDANFEFR1.CasasDecimais.qCom :=  dbInicio.Empresa.fPMT_QTDE_DEC_PED;
  ACBrNFeDANFEFR1.CasasDecimais.vUnCom :=  dbInicio.Empresa.fPMT_QTDE_DEC_PED;
end;

procedure TfrmProcessaNFe.FormDestroy(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crDefault;
end;

function TfrmProcessaNFe.GerarAssinarEnviar : boolean;  //RESULT FALSE NÃO FOI PARA RECEITA
var
  sMotivo,i, nf_reg, rej :integer;
  sProtocolo,
  chave, msgErro,NomeArq, motivo, erro, status : String;
  ResultEnvio : boolean;
  dataAutorizacao : TDateTime;
  cstat : integer;
  ErrosXML: TStringList;
  ErrValidacao : boolean;
  sincrono : boolean;
begin
 result := False;
 status := 'N'; // abordagem pessimista, a nota não foi transmitida, mas lá em baixo o padrão era T...
  if (qNota.FieldByName('OPE_ESCRITA').AsString = 'N') and (ACBrNFe1.Configuracoes.Geral.ModeloDF = moNFe) then
  begin
    GravarHistorico ( 'Não gera escrita fiscal, então não gera NFe 4.0  ',
                      qNota.FieldByName('NF_REGISTRO').AsInteger,   0);
    exit;
  end;

  Application.ProcessMessages;
  if ACBrNFe1.Configuracoes.Geral.ModeloDF = moNFe then
  begin
   pMsg.Caption := 'Gerando as NFe 4.0';
   lote := IntToStr(GetNextSequence('GEN_SEQUENCIA_LOTE_NFE'));
  end
  else
  begin
   pMsg.Caption := 'Gerando as NFCe 4.0';
   lote := IntToStr(GetNextSequence('GEN_LOTE_NFCe'));
  end;

 //ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Fat.nFat
  OpenAux('SELECT NF_REGISTRO FROM NF0001 WHERE NF_NOTANUMBER = '+quotedStr (qnota.fieldbyname('NF_NOTANUMBER').AsString) +
          ' and emp_codigo = '+ QuotedStr(EmpCodigo)
  );
  nf_reg := qaux.FieldByName('NF_REGISTRO').AsInteger;
  Application.ProcessMessages;
  ACBrNFe1.NotasFiscais.GerarNFe;
  GravarChaveOnly(OnlyNumber(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID),nf_reg);
  try
   ACBrNFe1.NotasFiscais.Assinar;
    pMsg.Caption := 'Assinando';
    Application.ProcessMessages;
  except
   on e: exception  do
   begin
    msgErro := RetirarSujeira(e.Message);
    NErros := msgErro;
    GravarHistorico ( 'Não enviado  : '+ msgErro ,
                      nf_reg,   0);
    GravarStatus('N',nf_reg);
    status := 'N';
    result:= False;
    exit;
   end;
  end;
  pMsg.Caption := 'Enviando';
  Application.ProcessMessages;
  ErrosXML := TStringList.Create;
  ErrValidacao:= False;
  try
    try
     ACBrNFe1.NotasFiscais.Validar;
    except
     on e: exception  do
     begin
        msgErro:= RetornarConteudoEntre(e.Message, '[TAG]','[/TAG]');
        if msgErro = '' then
           msgErro := RetirarSujeira(e.Message);
        msgErro := copy (msgErro,1,255);

        GravarHistorico ( 'Não enviado (REJEIÇÃO XML) : '+ msgErro ,
                          nf_reg,   0);
        GravarStatus('N',nf_reg);
        status := 'N';
        nomeArq := ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Fat.nFat;
        nomeArq := DBInicio.Versao.PATH +'NFe4' + '\'+ FormatDateTime('yyyymm',date) + '\Gerados\' + NomeArq;
        ACBrNFe1.NotasFiscais.GravarXML(NomeArq +'-nfe.xml');
        result:= False;
        ErrValidacao:= True;
       // NErros := NErros + ' - ' + msgErro + CRLF;
     end;
    end;
    if not ACBrNFe1.NotasFiscais.ValidarRegrasdeNegocios(msgErro) then
    begin
      ErrosXML.Text := msgErro;
      if ErrosXML.Count>1 then
      begin

        for I := 1 to ErrosXML.Count-1 do
        //desconsiderar o erro de total da nota na devolução no optante por simples porque no total da nota
        // vem acrescido o valor do ipi de devolução
        if  ((StrToIntDef(copy(ErrosXML[i],1,3),0) = 610) and (fOPT_SIMPLES = 'S') and
         (NotaF.NFe.Ide.finNFe = fnDevolucao))  then
        begin
          result:= True;
          ErrValidacao:= False;
        end
        else if  ((StrToIntDef(copy(ErrosXML[i],1,3),0) = 897) ) then
        begin
          result:= True;
          ErrValidacao:= False;
        end
        //sem valor comercial não gera fatura / receber
        else if  (StrToIntDef(copy(ErrosXML[i],1,3),0) = 872) then //and  (qNota.FieldByName('OPE_SEMVLCOM').AsString = 'S') then
        begin
          result:= True;
          ErrValidacao:= False;
        end
        else if  ((StrToIntDef(copy(ErrosXML[i],1,3),0)) = 894 ) or
                 ((StrToIntDef(copy(ErrosXML[i],1,3),0)) = 867 ) or
                 ((StrToIntDef(copy(ErrosXML[i],1,3),0)) = 900 )  then
        begin
          result:= True;
          ErrValidacao:= False;
        end
        else if ErrosXML[i] <> '' then
        begin
          ErrosXML[i] := StringReplace( ErrosXML[i],'Rejeição:','',[rfReplaceAll] );
          NErros := NErros + ErrosXML[i] + CRLF;
          GravarHistorico ( 'Não enviado (REJEIÇÃO XML) : '+ copy(ErrosXML[i],5,Length(ErrosXML[i]))  ,
                            nf_reg, StrToIntDef(copy(ErrosXML[i],1,3),0)  );
          result:= False;
          ErrValidacao:= True;
        end;
         nomeArq := ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Fat.nFat;
         nomeArq := DBInicio.Versao.PATH +'NFe4' + '\'+ FormatDateTime('yyyymm',date) + '\Gerados\' + NomeArq;
         ACBrNFe1.NotasFiscais.GravarXML(NomeArq +'-nfe.xml');
      end;

    end;
    if not ValidarRegrasdeNegociosAdjuntor(msgErro) then
    begin

      ErrosXML.Text := msgErro;
      for I := 0 to ErrosXML.Count-1 do
      begin
        rej := StrToIntDef(copy(ErrosXML[i],1,3),0);
        if rej > 0  then
          GravarHistorico ( 'Não enviado (REJEIÇÃO XML) : '+ copy(ErrosXML[i],5,Length(ErrosXML[i])) ,
                           nf_reg,   rej)
        else
          GravarHistorico ( 'Não enviado (REJEIÇÃO XML) : '+ ErrosXML[i] ,
                          nf_reg,   0);
      end;
      nomeArq := ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Fat.nFat;
      nomeArq := DBInicio.Versao.PATH +'NFe4' + '\'+ FormatDateTime('yyyymm',date) + '\Gerados\' + NomeArq;
      ACBrNFe1.NotasFiscais.GravarXML(NomeArq +'-nfe.xml');

      result:= False;
      ErrValidacao:= True;
    end;

  finally
    ErrosXML.Free;
  end;
   if ErrValidacao then
   begin
     exit;
   end;
  sincrono :=  DBInicio.Nfe.sincrono;
  try
    ResultEnvio := ACBrNFe1.Enviar(lote,false,sincrono);
  except
     on E : Exception do
      begin
       if sincrono then
       begin
         cstat:= ACBrNFe1.WebServices.Enviar.cStat;  // sincrono
         motivo:= ACBrNFe1.WebServices.Enviar.xMotivo;
       end
       else
       begin
         cstat := ACBrNFe1.WebServices.Retorno.cStat;
         motivo :=ACBrNFe1.WebServices.Retorno.xMotivo;


       end;
        erro := e.Message;
        msgErro:= ACBrNFe1.WebServices.Enviar.Msg;
        sProtocolo := ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.nprot;
        if (nf_reg = 0 ) then
          nf_reg := DBInicio.BuscaUmDadoSqlAsInteger('SELECT NF_REGISTRO FROM NF0001 WHERE NF_NOTANUMBER = '+quotedStr (ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Fat.nFat) +
                                                   ' and emp_codigo = '+ QuotedStr(EmpCodigo)  );
        chave := Copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 44);
         //ACBrNFe1.WebServices.Enviar.RetWS ou  ACBrNFe1.WebServices.Enviar.RetornoWS?. //sincrono

        ResultEnvio := False;
        if pos('timed out',e.message,1) > 0 then
        begin
            GravarHistorico ( 'Timed out. consulte mais tarde  '+ RetirarSujeira(e.Message), nf_reg,   0);
            GravarStatus('T',nf_reg);
            status := 'T';
            GravaXML(i,nf_reg);
            result := True
        end
        else if pos('An error occurred in the secure channel support',e.message,1)>0 then
        begin

            GravarStatus('N',nf_reg);
            status := 'N';
            GravarHistorico ('Erro segurança: ' +RetirarSujeira(e.Message),nf_reg,   0);
            nomeArq := ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Fat.nFat;
            nomeArq := DBInicio.Versao.PATH +'NFe4' + '\'+ FormatDateTime('yyyymm',date) + '\Gerados\' + NomeArq;
            ACBrNFe1.NotasFiscais.GravarXML(NomeArq +'-nfe.xml');
            result := False;
        end
        else
        if pos('Codigo Identificador do CSC no QR-Code nao cadastrado na SEFAZ',e.message,1)>0 then
        begin

          GravarStatus('N',nf_reg);
          status := 'N';
          GravarHistorico ( RetirarSujeira(e.Message)+ ', solução: preencher corretamente CSC e IDToken no cadastro de empresa, aba NFCe',
                              nf_reg,   0);
          nomeArq := ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Fat.nFat;
          nomeArq := DBInicio.Versao.PATH +'NFe4' + '\'+ FormatDateTime('yyyymm',date) + '\Gerados\' + NomeArq;
          ACBrNFe1.NotasFiscais.GravarXML(NomeArq +'-nfe.xml');
          result := False;
        end
        else if pos('Erro Interno',E.Message,1)>0 then
        begin
          GravarStatus('T',nf_reg);
          status := 'T';
          GravarHistorico (copy(RetirarSujeira(e.Message),1,80)+ ', tente mais tarde',nf_reg,0);
          result := False;
        end
        else
        if cstat in [103,104,105] then   //lote em processo
        begin
         GravarHistorico ( 'NFe em processo: '+motivo,nf_reg, cstat);
         GravarStatus('T',nf_reg);
         status := 'T';
         if ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.dhRecbto = 0 then
           dataAutorizacao := now
         else
           dataAutorizacao  := ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.dhRecbto;
         GravarNota(sProtocolo,'T',chave, nf_reg,dataAutorizacao, lote);
         GravaXML(i,nf_reg);
        end
        else if cStat in [108,109] then
        begin
          GravarHistorico ( 'Tente mais tarde : '+ ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.xMotivo,
                           nf_reg, cstat);
          GravarStatus('N',nf_reg);
          status := 'N';
          nomeArq := ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Fat.nFat;
          nomeArq := DBInicio.Versao.PATH +'NFe4' + '\'+ FormatDateTime('yyyymm',date) + '\Gerados\' + NomeArq;
          ACBrNFe1.NotasFiscais.GravarXML(NomeArq +'-nfe.xml');
          result:=False;

        end
        //denegada
        else if (cstat in [110,205,233,234]) or
               (cstat = 301) or    (cstat = 302 )  then
        begin
          msgErro:= RetornarConteudoEntre(e.Message, '[TAG]','[/TAG]');
          if msgErro = '' then
             msgErro := RetirarSujeira(e.Message);
          if msgErro = '' then
          begin
           case cstat of
             110: msgErro := 'Uso Denegado';
             205: msgErro := 'NF-e está denegada na base de dados da SEFAZ';
             233: msgErro := 'IE do destinatário não cadastrada';
             234: msgErro := 'IE do destinatário não vinculada ao CNPJ';
             301: msgErro := 'Uso Denegado: Irregularidade fiscal do emitente';
             302: msgErro := 'Irregularidade fiscal do destinatário';
           end;

          end;
          GravarHistorico ( msgErro,
                           nf_reg,cstat );
          GravarStatus('R',nf_reg);
          status := 'R';
          nomeArq := Copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 44);
          nomeArq := ACBrNFe1.Configuracoes.Arquivos.PathSalvar + '\'+ FormatDateTime('yyyymm',date) + '\Rejeitados\' + NomeArq; //
          ACBrNFe1.NotasFiscais.GravarXML(NomeArq +'-nfe.xml');
          result := True;

        end
        else  if cstat >  200 then  //rejeição
        begin
            msgErro:= RetornarConteudoEntre(e.Message, '[TAG]','[/TAG]');
            if msgErro = '' then
               msgErro := RetirarSujeira(e.Message);
            GravarChaveOnly(chave,nf_reg);
            GravarHistorico ( 'Não enviado (REJEIÇÃO) : '+ copy(msgErro,1,230) , nf_reg ,   cstat);
            if cstat <> 225 then // erro de xml, não precisa deixar rejeitado
            begin
              GravarStatus('R',nf_reg);
              status := 'R';
            end;
            nomeArq := ACBrNFe1.Configuracoes.Arquivos.PathSalvar + '\'+ FormatDateTime('yyyymm',date) + '\Rejeitados\' + chave; //
            ACBrNFe1.NotasFiscais.GravarXML(NomeArq +'-nfe.xml');
            result:= True;

        end
        else
        begin
           if not ACBrNFe1.NotasFiscais.Items[0].confirmada then
            begin
              if ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.xMotivo <> '' then
                GravarHistorico ( 'Não processado : '+ ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.xMotivo, nf_reg,  cstat);
              GravarStatus('R',nf_reg);
              status := 'R';
              nomeArq := ACBrNFe1.Configuracoes.Arquivos.PathSalvar + '\'+ FormatDateTime('yyyymm',date) + '\Rejeitados\' + chave; //
              ACBrNFe1.NotasFiscais.GravarXML(NomeArq +'-nfe.xml');
              result := True;
            end
            else
            begin
                GravarHistorico ( 'processado : '+ ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.xMotivo, nf_reg,  cstat);
                GravarStatus('T',nf_reg);
                status := 'T';
            end;
        end;
      end;
    end;

    if ResultEnvio then
    begin
      for I := 0 to ACBrNFe1.NotasFiscais.Count-1 do
      begin
       sProtocolo := ACBrNFe1.NotasFiscais.Items[I].NFe.procNFe.nprot;
       //msgErro := ACBrNFe1.NotasFiscais.Items[I].NFe.procNFe.xMotivo;
       cstat:= ACBrNFe1.NotasFiscais.Items[I].NFe.procNFe.cStat;
       chave := Copy(ACBrNFe1.NotasFiscais.Items[i].NFe.infNFe.ID, 4, 44);
       nf_reg := qnota.FieldByName('NF_REGISTRO').AsInteger ;
       if cstat in [100] then //autorizada
       begin
         if ACBrNFe1.Configuracoes.Geral.ModeloDF = moNFe then
           GravarHistorico ( 'NFe Autorizada, protocolo: '+sProtocolo,nf_reg,cstat)
         else
           GravarHistorico ( 'NFCe Autorizada, protocolo: '+sProtocolo,nf_reg,cstat);

         if ACBrNFe1.NotasFiscais.Items[i].NFe.procNFe.dhRecbto = 0 then
           dataAutorizacao := now
         else
           dataAutorizacao  := ACBrNFe1.NotasFiscais.Items[i].NFe.procNFe.dhRecbto;
         GravarNota(sProtocolo,'A',chave, nf_reg,dataAutorizacao, lote );
         GravaXML(i,nf_reg);
         if ACBrNFe1.Configuracoes.Geral.ModeloDF = moNFCe then
         begin
           ACBrNFe1.DANFE := ACBrNFeDANFCEFR1;
           ACBrNFeDANFCEFR1.FastFile :=  DBInicio.Versao.PATH+'NFe4'+'\relatorio\DANFeNFCe5_00.fr3';
           ACBrNFe1.DANFE.ExpandeLogoMarca := false;
         end;

          // enviaremail
          if fEmailHost <> '' then
             EnviarEmailAutorizado(i,nf_reg,sprotocolo);
         ACBrNFE1.NotasFiscais.Items[0].NFe.Emit.xNome   := copy(dbinicio.Empresa.RAZAO,1,60);
         ACBrNFE1.DANFE.Email := DBInicio.Empresa.EMAIL;
         ACBrNFE1.DANFE.Site :=DBInicio.Empresa.HOME_PAGE;
         if ACBrNFe1.Configuracoes.Geral.ModeloDF = moNFCe then
         begin
           ACBrNFe1.DANFE := ACBrNFeDANFCEFR1;
           ACBrNFeDANFCEFR1.FastFile :=  DBInicio.Versao.PATH+'NFe4'+'\relatorio\DANFeNFCe5_00.fr3';
           ACBrNFe1.DANFE.ExpandeLogoMarca := false;
         end;

         ACBrNFe1.NotasFiscais.Imprimir;
       end
       else
       if (cstat in [110,205,233,234] ) or (cstat = 301 ) or (cstat = 302) then
       begin
         case cstat of
           110: msgErro := 'Uso Denegado';
           205: msgErro := 'NF-e está denegada na base de dados da SEFAZ';
           233: msgErro := 'IE do destinatário não cadastrada';
           234: msgErro := 'IE do destinatário não vinculada ao CNPJ';
           301: msgErro := 'Uso Denegado: Irregularidade fiscal do emitente';
           302: msgErro := 'Irregularidade fiscal do destinatário';
         end;

          GravarHistorico ( 'Processado : '+ msgErro , nf_reg,cstat);
          GravarStatus('R',nf_reg);
          status := 'R';
          nomeArq := Copy(ACBrNFe1.NotasFiscais.Items[I].NFe.infNFe.ID, 4, 44);
          nomeArq := ACBrNFe1.Configuracoes.Arquivos.PathSalvar + '\'+ FormatDateTime('yyyymm',date) + '\Rejeitados\' + NomeArq; //
          ACBrNFe1.NotasFiscais.GravarXML(NomeArq +'-nfe.xml');
          result := True;

       end
       else
       begin
         GravarHistorico ( 'NFe em processo: '+sProtocolo,nf_reg, cstat);
         if ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.dhRecbto = 0 then
           dataAutorizacao := now
         else
           dataAutorizacao  := ACBrNFe1.NotasFiscais.Items[i].NFe.procNFe.dhRecbto;
         GravarNota(sProtocolo,'T',chave, nf_reg,dataAutorizacao, lote);
         GravaXML(i,nf_reg);
       end;
      end; {fim-for}

      result:= True;
    end
    Else
    begin
      GravarHistorico ( 'NFe em processo: '+sProtocolo,nf_reg, cstat);
       if ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.dhRecbto = 0 then
         dataAutorizacao := now
       else
         dataAutorizacao  := ACBrNFe1.NotasFiscais.Items[i].NFe.procNFe.dhRecbto;
       // GravarNota(sProtocolo,'T',chave, nf_reg,dataAutorizacao, lote);
       GravarNota(sProtocolo, status, chave, nf_reg, dataAutorizacao, lote);
       GravaXML(i,nf_reg);
       result:= True;
    end;
end;

procedure TfrmProcessaNFe.GerarNFE (const espelho: boolean);
var vLiqFat, vLiqDesc, vParcelas, semValorComercial: double;
  Hora : TTime;
  Data : TDate;

  function InforComplentares (compl : string):string;
  begin
     compl := Trim(RetiraAcentos(compl));
     compl := StringReplace(compl, ''#$D'', '', [rfReplaceAll]);
     result := StringReplace(compl, ''#$A'', '', [rfReplaceAll]);

  end;

begin
  if not espelho  then
  begin
    if ACBrNFe1.Configuracoes.Geral.ModeloDF = moNFe then
    begin
      if dbInicio.Nfe.TipoSequencia = tpFatura  then  //mesmo numero da fatrura
        NumNFe:= qNota.FieldByName('NF_NOTANUMBER').asString
      else //numero sequencial
        NumNFe:= GerarSeqNFe;
    end
    else
     NumNFe:= GerarSeqNFCe;
  end;

  if qNota.FieldByName('OPE_ESCRITA').AsString = 'N' then
   exit;

  // Identificar NFE antiga procedure IDEntificaNF
  NotaF := ACBrNFe1.NotasFiscais.Add;
  if DBInicio.Empresa.PMT_ATIVAR_INTERMEDIADOR then
    NotaF.NFe.Ide.indIntermed  := iiOperacaoSemIntermediador;
  NotaF.NFe.infNFe.Versao:= 4;// StrTo(VersaoDFToStr(ACBrNFe1.Configuracoes.Geral.VersaoDF));
  NotaF.NFe.Ide.natOp     := qNota.FieldByName('OPE_DESCRINATUREZA').AsString;

  OpenAux2 ('SELECT EMP_CONT_NOME, EMP_CONT_CPF, EMP_CONT_CNPJ, EMP_CONT_CRC, EMP_CGC FROM EMP0000' +
            ' where emp_codigo = '+ QuotedStr(EmpCodigo));

  //autorizacao para baixa xml


  if qAux2.FieldByName('EMP_CONT_CNPJ').AsString <> '' then
    NotaF.NFe.autXML.Add.CNPJCPF := qAux2.FieldByName('EMP_CONT_CNPJ').AsString;
  if qAux2.FieldByName('EMP_CONT_CPF').AsString <> '' then
    NotaF.NFe.autXML.Add.CNPJCPF := qAux2.FieldByName('EMP_CONT_CPF').AsString;
  if RetirarMascaraCNPJ_INSC(qnota.FieldByName('CLI_CGC').AsString) <> RetirarMascaraCNPJ_INSC(qAux2.FieldByName('EMP_CGC').AsString) then
  begin
    if qAux2.FieldByName('EMP_CGC').AsString <> '' then
      NotaF.NFe.autXML.Add.CNPJCPF := qAux2.FieldByName('EMP_CGC').AsString;
  end;




  if ACBrNFe1.Configuracoes.Geral.ModeloDF = moNFe then
    NotaF.NFe.Ide.modelo    := 55 //NF-e
  else
    NotaF.NFe.Ide.modelo    := 65; //NFC-e

  NotaF.NFe.Ide.serie     := StrToIntDef(fSerieNF,0);
  NotaF.NFe.Ide.cNF       := -1;
  NotaF.NFe.Ide.nNF       := StrToIntDef(NumNFe,0);
  /// nfce ele grava a fatura e já envie sempre
  ///  mas na nota fiscal eletrônico ele pode fatura e emitir a nota fiscal bem mas tarde
  Hora := StrToTime(qNota.FieldByName('NF_HORASAIDA').asstring);
  Data := StrToDate(qNota.FieldByName('NF_EMISSAO').AsString); // ele pode emitir depois a nota
//  if ACBrNFe1.Configuracoes.Geral.ModeloDF = moNFe then
//      NotaF.NFe.Ide.dEmi      := now//data+hora;
//  else
     NotaF.NFe.Ide.dEmi      := data+hora;

  // Data := StrToDate(qNota.FieldByName('NF_SAIDA').AsString);
  if ACBrNFe1.Configuracoes.Geral.ModeloDF = moNFe then
  begin
//    if NotaF.NFe.Ide.dEmi > (qNota.FieldByName('NF_SAIDA').AsDateTime+ qNota.FieldByName('NF_HORASAIDA').AsDateTime) then
//        NotaF.NFe.Ide.dSaiEnt := now
//    else
      NotaF.NFe.Ide.dSaiEnt   := qNota.FieldByName('NF_SAIDA').AsDateTime+ qNota.FieldByName('NF_HORASAIDA').AsDateTime; //date; // não preencher para nota de consumidor
   // NotaF.NFe.Ide.hSaiEnt   := qNota.FieldByName('NF_HORASAIDA').AsDateTime;// Data+ hora;
  end;

  if qNota.FieldByName('NF_ENTR_SAID').AsString = 'S' then
    NotaF.NFe.Ide.tpNF      := tnSaida
  Else if qNota.FieldByName('NF_ENTR_SAID').AsString = 'E' then
     NotaF.NFe.Ide.tpNF      := tnEntrada;
  NotaF.NFe.Ide.tpEmis    := ACBrNFe1.Configuracoes.Geral.FormaEmissao;
  NotaF.NFe.Ide.tpAmb     := ACBrNFe1.Configuracoes.WebServices.Ambiente;
  if GetBuildInfo <> '' then
   NotaF.NFe.Ide.verProc   := GetBuildInfo  //Versão do seu sistema
  else
   NotaF.NFe.Ide.verProc   := 'Teste 1';  //Versão do seu sistema
  NotaF.NFe.Ide.cUF       := UFtoCUF(fUF );
  NotaF.NFe.Ide.cMunFG    := fCID_IBGE; //codigo do ibge

   if ACBrNFe1.Configuracoes.Geral.ModeloDF = moNFe then
   begin
     if  Assigned( ACBrNFe1.DANFE ) then
       NotaF.NFe.Ide.tpImp     := ACBrNFe1.DANFE.TipoDANFE;
   end
   else  ///NFC-e
      NotaF.NFe.Ide.tpImp     := tiNFCe;
  //consumidor final ou insento de icms   ou NFC-e
  if (qNota.FieldByName('CLI_CONSFINAL').AsString = 'S') or (ACBrNFe1.Configuracoes.Geral.ModeloDF = moNFCe ) then
     NotaF.NFe.Ide.indFinal  := cfConsumidorFinal
  else
      NotaF.NFe.Ide.indFinal  := cfNao;

  if  ACBrNFe1.Configuracoes.Geral.ModeloDF = moNFe then
    NotaF.NFe.Ide.indPres   := pcOutros
  else
    NotaF.NFe.Ide.indPres   := pcPresencial;

  NotaF.NFe.Ide.procEmi   := peAplicativoContribuinte;
  If DBInicio.Nfe.Contingencia = 'S' then
  begin
      NotaF.NFe.Ide.dhCont := date;
      NotaF.NFe.Ide.xJust  :=  'INDISPONIBILIDADE DOS SERVICOS NOS SERVIDORES ESTADUAIS';

  end;

  if not qNota.FieldByName('nf_finalidade').IsNull then
    NotaF.NFe.Ide.finNFe    := StrToFinNFe(OK, IntToStr(qnota.FieldByName('nf_finalidade').AsInteger))
  else // vai ser desativado
  begin
   if qnota.FieldByName('OPE_TIPO_OPERACAO').AsString = 'D' then
    NotaF.NFe.Ide.finNFe := fnDevolucao
   else
    NotaF.NFe.Ide.finNFe := fnNormal;
  end;

{
  if ACBrNFe1.Configuracoes.Geral.ModeloDF = moNFCe then
  begin
     // NotaF.NFe.Ide.indPag:= ipVista      //sempre a vista
    with NotaF.NFe.pag.New do
    begin
      indPag := ipVista;
      tPag := fpOutro;
      xPag := qNota.FieldByName('FPG_DESCRICAO').AsString;
      // vPag := 99.00;
    end;
  end
  else
  begin
    if MatchStr(FinNFeToStr(NotaF.NFe.Ide.finNFe),[ '3', '4'])   then
     NotaF.NFe.Ide.indPag := ipOutras
    else  if (qNota.FieldByName('PCL_MODALIDADE').AsString <> '') then
    begin
     // NotaF.NFe.Ide.indPag:= StrToIndpag(ok,qNota.FieldByName('PCL_MODALIDADE').AsString)
      with NotaF.NFe.pag.New do
      begin
        indPag := StrToIndpag(ok,qNota.FieldByName('PCL_MODALIDADE').AsString);
        tPag := fpOutro;
        xPag := qNota.FieldByName('FPG_DESCRICAO').AsString;
        // vPag := 99.00;
      end;

    end
    else
       NotaF.NFe.Ide.indPag:= ipVista;

  end ;
       }


  //devolução
  if (NotaF.NFe.Ide.finNFe in [fnComplementar, fnAjuste, fnDevolucao]) or ( qnota.FieldByName('CLI_UF_ENTR').AsString = 'EX' )  then
  begin
   if qNota.FieldByName('NF_CHAVE_NFE_REFERENCIADA').AsString <> '' then
   begin
     Referenciada := NotaF.NFe.Ide.NFref.Add;
     Referenciada.refNFe  := qNota.FieldByName('NF_CHAVE_NFE_REFERENCIADA').AsString;
     Referenciada.RefNF.modelo := 1; //   Referenciada.mod tipo de de modelo não implementado pela ACBR
   end;
   OpenAux('SELECT NF_CHAVE_NFE_REFERENCIADA FROM NF_REFERENCIA WHERE NF_REGISTRO = '+qNota.FieldByName('NF_REGISTRO').AsString );
   while not qAux.Eof do
   begin
     Referenciada := NotaF.NFe.Ide.NFref.Add;
     Referenciada.refNFe  := qAux.FieldByName('NF_CHAVE_NFE_REFERENCIADA').AsString;
    Referenciada.RefNF.modelo := 1; //   Referenciada.mod tipo de de modelo não implementado pela ACBR
     qAux.Next;
   end;

   //DEFINIR - por enquanto não obrigatório BA04 A BA09


  end ;

  if qnota.FieldByName('CLI_UF_ENTR').AsString = fUF then
     NotaF.NFe.Ide.idDest := doInterna
  else if qnota.FieldByName('CLI_UF_ENTR').AsString = 'EX' then
  begin
     NotaF.NFe.Ide.idDest := doExterior;
     NotaF.NFe.exporta.UFSaidaPais    :=   qNota.FieldByName('nf_export_uf_embarque').AsString;  //UFembarq
     NotaF.NFe.exporta.xLocExporta :=  qNota.FieldByName('NF_EXPORT_LOCAL_EMBARQUE').AsString;   //xLocEmbarq
  end
  else
      NotaF.NFe.Ide.idDest := doInterestadual;

  //EMITENTE Procedure EmitenteNF;
  NotaF.NFe.Emit.CNPJCPF           := RetirarMascaraCNPJ_INSC(fCNPJ_CNPF);
  NotaF.NFe.Emit.IE                := RetirarMascaraCNPJ_INSC(fINSC_EST);
  NotaF.NFe.Emit.xNome             := Copy(fRAZAO,1,60);
  NotaF.NFe.Emit.xFant             := Copy(fFANTASIA,1,60);
  NotaF.NFe.Emit.EnderEmit.fone    := fFONE;


  NotaF.NFe.Emit.EnderEmit.CEP     := StrToIntDef(RetiraTodaMascara(fCEP),0);;
  NotaF.NFe.Emit.EnderEmit.xLgr    := copy(RetornaEnderecoSemNumero(fendereco),1,60);
  NotaF.NFe.Emit.EnderEmit.nro     := RetornaNumeroEndereco(fEndereco);
  NotaF.NFe.Emit.EnderEmit.xCpl    := '';
  NotaF.NFe.Emit.EnderEmit.xBairro := fBAIRRO;
  NotaF.NFe.Emit.EnderEmit.cMun    := NotaF.NFe.Ide.cMunFG;
  NotaF.NFe.Emit.EnderEmit.xMun    := fCIDADE;
  NotaF.NFe.Emit.EnderEmit.UF      := fUF;
  NotaF.NFe.Emit.enderEmit.cPais   := 1058;
  NotaF.NFe.Emit.enderEmit.xPais   := 'BRASIL';

  NotaF.NFe.Emit.IM                := fINS_MUNICIPAL;
  NotaF.NFe.Emit.CRT               :=  StrToCRT(OK,fEMP_CRT);// (1-crtSimplesNacional, 2-crtSimplesExcessoReceita, 3-crtRegimeNormal)

    //destinatario  antigo DestinatarioNF
    if not (qnota.FieldByName('CLI_UF_ENTR').AsString = 'EX') then //estrangeiro não grava cnpj
       NotaF.NFe.Dest.CNPJCPF           := RetirarMascaraCNPJ_INSC(qnota.FieldByName('CLI_CGC').AsString);
    if  (ACBrNFe1.Configuracoes.Geral.ModeloDF = moNFCe )  then // NFC-e
    begin
        NotaF.NFe.Dest.CNPJCPF:=  RetirarMascaraCNPJ_INSC(qnota.FieldByName('CLI_CPF').AsString);
        if NotaF.NFe.Dest.CNPJCPF = '00000000000' then
          NotaF.NFe.Dest.CNPJCPF := '';
        NotaF.NFe.Dest.IE:= '' ;
        NotaF.NFe.Dest.indIEDest := inNaoContribuinte;
    end
    else
    begin
      if qnota.FieldByName('CLI_UF_ENTR').AsString = 'EX' then
      begin
       NotaF.NFe.Dest.IE:= '';
       NotaF.NFe.Dest.indIEDest :=  inNaoContribuinte;
      end
      else
      begin

       if NotaF.NFe.Ide.indFinal  = cfConsumidorFinal then
       begin
          NotaF.NFe.Dest.indIEDest := inNaoContribuinte;
          NotaF.NFe.Dest.IE       := OnlyNumber(qnota.FieldByName('CLI_INSC').AsString);
       end
       else
       begin
          if (qnota.FieldByName('CLI_INSC').AsString = 'ISENTO') OR (qnota.FieldByName('CLI_INSC').AsString= '') then
            NotaF.NFe.Dest.indIEDest := inIsento
          else
          begin
//           if DBInicio.GetParametroSistema('PMT_MULTIPLAS_IE') = 'S' then
//              NotaF.NFe.Dest.IE     := fINSC_EST
//           else
            NotaF.NFe.Dest.IE       := OnlyNumber(qnota.FieldByName('CLI_INSC').AsString);
            NotaF.NFe.Dest.indIEDest := inContribuinte;
          end;

       end;
      end;
    end;

    NotaF.NFe.Dest.IM                := qNota.FieldByName('CLI_INSCMUNI').AsString;
    NotaF.NFe.Dest.Email             := qnota.FieldByName('CLI_EMAIL').AsString;
  //  NotaF.NFe.Dest.idEstrangeiro //estranegiro  número do passaporte ou outro documento legal para  identificar pessoa estrangeira (campo aceita valor nulo).
    NotaF.NFe.Dest.ISUF              := qnota.FieldByName('CLI_SUFRAMA').AsString;     //Inscrição na SUFRAMA
    NotaF.NFe.Dest.xNome             := COPY(qnota.FieldByName('CLI_RAZAO').AsString,1,60);
    NotaF.NFe.Dest.EnderDest.Fone    := qnota.FieldByName('CLI_FONE').AsString;

    NotaF.NFe.Dest.EnderDest.CEP     :=  StrToIntDef(RetiraTodaMascara(qnota.FieldByName('CLI_CEP').AsString),0);
    NotaF.NFe.Dest.EnderDest.xLgr    := COPY(RetornaEnderecoSemNumero(qnota.FieldByName('CLI_ENDERE').AsString),1,60);
    if RetornaNumeroEndereco(qnota.FieldByName('CLI_ENDERE').AsString) = '' then
      NotaF.NFe.Dest.EnderDest.nro     := 'S/N'
    else
      NotaF.NFe.Dest.EnderDest.nro     := RetornaNumeroEndereco(qnota.FieldByName('CLI_ENDERE').AsString);
    NotaF.NFe.Dest.EnderDest.xCpl    := '';
    NotaF.NFe.Dest.EnderDest.xBairro := qnota.FieldByName('cli_bairro').AsString;

    if qnota.FieldByName('CLI_UF_ENTR').AsString = 'EX' then
        NotaF.NFe.Dest.EnderDest.UF := 'EX'
    Else
      NotaF.NFe.Dest.EnderDest.UF      := qnota.FieldByName('CLI_UF').AsString;

    if qnota.FieldByName('CLI_UF_ENTR').AsString = 'EX' then
      NotaF.NFe.Dest.EnderDest.cMun:= 9999999
    else
      NotaF.NFe.Dest.EnderDest.cMun := qnota.FieldByName('CID_COD_IBGE').AsInteger;

    NotaF.NFe.Dest.EnderDest.xMun    := qnota.FieldByName('cli_cidade').AsString;


    NotaF.NFe.Dest.EnderDest.cPais   := StrToIntDef(qnota.FieldByName('pai_codigo').AsString,1058);
    NotaF.NFe.Dest.EnderDest.xPais   := qnota.FieldByName('pai_pais').AsString;


 //Use os campos abaixo para informar o endereço de retirada quando for diferente do Remetente/Destinatário
 {
  NotaF.NFe.Retirada.CNPJCPF := '';
  NotaF.NFe.Retirada.xLgr    := '';
  NotaF.NFe.Retirada.nro     := '';
  NotaF.NFe.Retirada.xCpl    := '';
  NotaF.NFe.Retirada.xBairro := '';
  NotaF.NFe.Retirada.cMun    := 0;
  NotaF.NFe.Retirada.xMun    := '';
  NotaF.NFe.Retirada.UF      := '';}

  // entrega
  if qnota.FieldByName('CLI_UF_ENTR').AsString <> 'EX' then
  begin
    if not qnota.FieldByName('ENDERECO_ENTREGA').isnull then
    begin
      if qnota.FieldByName('CNPJ_ENTR').AsString = '' then
        NotaF.NFe.Entrega.CNPJCPF := RetirarMascaraCNPJ_INSC(qnota.FieldByName('CLI_CGC').AsString)
      else
        NotaF.NFe.Entrega.CNPJCPF   := qnota.FieldByName('CNPJ_ENTR').AsString;

       if qnota.FieldByName('nome_entr').AsString <> EmptyStr then
         NotaF.NFe.Entrega.xNome :=  qnota.FieldByName('nome_entr').AsString
       else
        NotaF.NFe.Entrega.xNome      := qnota.FieldByName('CLI_RAZAO').AsString;

       NotaF.NFe.Entrega.CEP        :=  StrToIntDef(qnota.FieldByName('CEP_ENTR').AsString,0);
       NotaF.NFe.Entrega.Fone       := qnota.FieldByName('CLI_FONE').AsString;
       NotaF.NFe.Entrega.Email      := qnota.FieldByName('CLI_EMAIL').AsString;
       NotaF.NFe.Entrega.IE       := OnlyNumber(qnota.FieldByName('ie_entr').AsString);
       NotaF.NFe.Entrega.xLgr       := qnota.FieldByName('end_entr').AsString;
       NotaF.NFe.Entrega.nro        := qnota.FieldByName('NUM_ENTR').AsString;
       NotaF.NFe.Entrega.xCpl       := qnota.FieldByName('COMP_ENTR').AsString;
       NotaF.NFe.Entrega.xBairro    := qnota.FieldByName('BAIRRO_ENTR').AsString;
       NotaF.NFe.Entrega.xMun       := qnota.FieldByName('CID_ENTR').AsString;
       notaf.NFe.Entrega.cMun       := qnota.FieldByName('IBGE_entr').AsInteger;
       notaf.NFe.Entrega.UF         := qnota.FieldByName('CLI_UF_ENTR').AsString;
       notaf.NFe.Entrega.cPais   := StrToIntDef(qnota.FieldByName('cod_pais').AsString,1058);
       notaf.NFe.Entrega.xPais   := qnota.FieldByName('pais_entr').AsString;

    end;
    //retirada
    if (qNota.FieldByName('end_retirada').AsString <> EmptyStr)  then
    begin
      if qnota.FieldByName('CNPJ_retirada').AsString = '' then
        NotaF.NFe.Retirada.CNPJCPF := RetirarMascaraCNPJ_INSC(qnota.FieldByName('CLI_CGC').AsString)
      else
	     NotaF.NFe.Retirada.CNPJCPF   := qnota.FieldByName('CNPJ_retirada').AsString;
       if (qnota.FieldByName('nome_retirada').AsString <> EmptyStr ) then
         NotaF.NFe.Retirada.xNome := qnota.FieldByName('nome_retirada').AsString
       else
         NotaF.NFe.Retirada.xNome      := qnota.FieldByName('CLI_RAZAO').AsString;

       NotaF.NFe.Retirada.CEP        :=  StrToIntDef(qnota.FieldByName('CEP_retirada').AsString,0);
       NotaF.NFe.Retirada.Fone       := qnota.FieldByName('CLI_FONE').AsString;
       NotaF.NFe.Retirada.Email      := qnota.FieldByName('CLI_EMAIL').AsString;

       NotaF.NFe.Retirada.IE       := OnlyNumber(qnota.FieldByName('ie_retirada').AsString);
       NotaF.NFe.Retirada.xLgr       := qnota.FieldByName('end_retirada').AsString;
       NotaF.NFe.Retirada.nro        := qnota.FieldByName('NUM_retirada').AsString;
       NotaF.NFe.Retirada.xCpl       := qnota.FieldByName('COMP_retirada').AsString;
       NotaF.NFe.Retirada.xBairro    := qnota.FieldByName('BAIRRO_retirada').AsString;


       NotaF.NFe.Retirada.xMun       := qnota.FieldByName('CID_retirada').AsString;
       notaf.NFe.Retirada.cMun       := BuscaUmDadoSqlAsInteger('SELECT CID_COD_IBGE  FROM CID0000 WHERE CID_CODIGO = '+ IntToStr(qnota.FieldByName('codcidade_retirada').AsInteger));
       notaf.NFe.Retirada.UF         := qnota.FieldByName('CLI_UF_retirada').AsString;
       notaf.NFe.Retirada.cPais   := StrToIntDef(qnota.FieldByName('cod_pais').AsString,1058);
       notaf.NFe.Retirada.xPais   := qnota.FieldByName('pais_entr').AsString;


    end;

  end;
  MostraIBPT_Item :=  pos('IBPT',qNota.FieldByName('nf_observacao').AsString)>0 ;
  AdicaoProdutosNFe;
  TotalizacaoNFE;
  //NF-e indicação da modalidade de frete e seus transporte
  // nfce - não pode e entregue na hora, sem frete
  if ACBrNFe1.Configuracoes.Geral.ModeloDF = moNFe then
  begin
    if qnota.FieldByName('PED_FRETE').IsNull then
       GeraException('Frete não preenchido no produto');

    NotaF.NFe.Transp.modFrete := StrTomodFrete(ok,IntToStr(qnota.FieldByName('PED_FRETE').AsInteger)) ;
    if not MatchStr(qnota.FieldByName('TRP_CGC').AsString,['00000000000000','']) then
       NotaF.NFe.Transp.Transporta.CNPJCPF  := RetirarMascaraCNPJ_INSC(qnota.FieldByName('TRP_CGC').AsString);
    NotaF.NFe.Transp.Transporta.xNome    := qNota.FieldByName('TRP_RAZAO').AsString;
    NotaF.NFe.Transp.Transporta.IE       := RetirarMascaraCNPJ_INSC(qNota.FieldByName('TRP_INSC').AsString) ;
    NotaF.NFe.Transp.Transporta.xEnder   := qNota.FieldByName('TRP_ENDERE').AsString;
    NotaF.NFe.Transp.Transporta.xMun     := qNota.FieldByName('TRP_CIDADE').AsString;
    NotaF.NFe.Transp.Transporta.UF       := qNota.FieldByName('TRP_UF').AsString;
    NotaF.NFe.Transp.veicTransp.placa := qNota.FieldByName('NF_PLACAVE').AsString;
    NotaF.NFe.Transp.veicTransp.UF    :=  qNota.FieldByName('nf_ufveiculo').AsString;
    NotaF.NFe.Transp.veicTransp.RNTC  := '';
  end
  else // NFC-e não pode ter FRETE
    NotaF.NFe.Transp.modFrete := mfSemFrete; // NFC-e não pode ter FRETE

  if ACBrNFe1.Configuracoes.Geral.ModeloDF = moNFe then // NF-E 4
  begin
    Volume := NotaF.NFe.Transp.Vol.Add;
    Volume.qVol  := trunc(qNota.FieldByName('NF_QTDE').AsInteger);
    Volume.esp   := qNota.FieldByName('NF_ESPECIE').AsString;
    Volume.marca := qNota.FieldByName('NF_MARCA').AsString;
    Volume.nVol  := qNota.FieldByName('NF_NUMERO').AsString;
    Volume.pesoL := qNota.FieldByName('NF_PESOLIQ').AsFloat;;
    Volume.pesoB := qNota.FieldByName('NF_PESOBRU').AsFloat;;
  end;

  // NFCe O grupo de Cobranca/Fatura não pode ser informado para NFC-e senão ocorrerá a Rejeição 760: NFC-e com dados de cobrança (Fatura, Duplicata).
  // e não pode ser cfop com opção sem valor comercial
  if (ACBrNFe1.Configuracoes.Geral.ModeloDF = moNFe)
  and (qNota.FieldByName('OPE_SEMVLCOM').AsString <> 'S')
  then // nf 4.0
  begin

    BuscaDuplicata(qNota.FieldByName('NF_NOTANUMBER').AsString);
    qDuplicata.First;
    while not qduplicata.Eof do
    Begin
      //fatura integrada da NFe e NFSe
      if qnota.FieldByName('NF_INTEGRADO').AsString = 'S' then
        vParcelas :=  qDuplicata.FieldByName('FPC_VLPARC').AsFloat -    qDuplicata.FieldByName('FPC_VALR_SERVICOS').AsFloat
      else
       vParcelas :=   qDuplicata.FieldByName('FPC_VLPARC').AsFloat;

      vLiqFat :=  vLiqFat + vParcelas;
      qduplicata.Next;
    end;
    //    if vLiqFat = 0  then
    //     vLiqFat:=qNota.FieldByName('NF_TOT_NOTA').AsFloat;

    NotaF.NFe.Cobr.Fat.nFat  := qNota.FieldByName('NF_NOTANUMBER').AsString;
    if ((qNota.FieldByName('NF_VL_DESCTO').AsFloat = 0) or (qNota.FieldByName('NF_VL_DESCTO').IsNull)) AND
       ((qNota.FieldByName('NF_VL_DESCTO_FAT').AsFloat = 0) or (qNota.FieldByName('NF_VL_DESCTO_FAT').IsNull))  then
      vLiqDesc := 0 // 0.0001 ????
    else
      vLiqDesc :=  qNota.FieldByName('NF_VL_DESCTO').AsFloat + qNota.FieldByName('NF_VL_DESCTO_FAT').AsFloat ;
      // valor antecipado não vai na fatura, somente no total da nota


      // NotaF.NFe.Cobr.Fat.vOrig := vLiqFat +  vLiqDesc -  qNota.FieldByName('FAT_VALORANTECIPADO').AsFloat ;







      semValorComercial := 0; // qItemNota.FieldByName('OPE_Codigo').Asstring;
      qItemNota.First;
      while not qItemNota.Eof do
      begin
       qAux.Close;
    	 qAux.SQL.Text:='select * from ope0000 where ope_codigo='+qStr(iif(qItemNota.FieldByName('OPE_CODIGO').AsString = '', qNota.FieldByName('OPE_CODIGO').AsString, qItemNota.FieldByName('OPE_CODIGO').AsString ));
		   qAux.Open;
       if qAux.FieldByName('OPE_SEMVLCOM').AsString = 'S' then
         semValorComercial := semValorComercial + qItemNota.FieldByName('TOTAL').AsFloat;

       qItemNota.Next;
      end;





    with DBInicio.Empresa do
    begin
      if PMT_FAT_NF_VALOR_ORIGINAL = 'T' then
        NotaF.NFe.Cobr.Fat.vOrig := qNota.FieldByName('NF_TOT_PROD').AsFloat
      else
      if PMT_FAT_NF_VALOR_ORIGINAL = 'L' then
        NotaF.NFe.Cobr.Fat.vOrig := vLiqFat
      else
      if PMT_FAT_NF_VALOR_ORIGINAL = 'N' then
        NotaF.NFe.Cobr.Fat.vOrig := qNota.FieldByName('NF_TOT_NOTA').AsFloat;

      if PMT_FAT_NF_FRETE_SEGURO_DESP then
        NotaF.NFe.Cobr.Fat.vOrig := NotaF.NFe.Cobr.Fat.vOrig
                                    + qNota.FieldByName('NF_VLFRETE').AsFloat
                                    + qNota.FieldByName('NF_VLSEGURO').AsFloat
                                    + qNota.FieldByName('NF_DESP_ACES').AsFloat;

      if PMT_FAT_NF_VALOR_LIQ_DESC then
        NotaF.NFe.Cobr.Fat.vOrig := NotaF.NFe.Cobr.Fat.vOrig + vLiqDesc;

      if PMT_FAT_NF_VALOR_ANTECIPADO then
        NotaF.NFe.Cobr.Fat.vOrig := NotaF.NFe.Cobr.Fat.vOrig - qNota.FieldByName('FAT_VALORANTECIPADO').AsFloat;

      if PMT_FAT_NF_SEM_VALOR_COMERCIAL then
        NotaF.NFe.Cobr.Fat.vOrig := NotaF.NFe.Cobr.Fat.vOrig - semValorComercial;




      if PMT_FAT_NF_VL_LIQ_VALOR_ANTECIP then
        NotaF.NFe.Cobr.Fat.vLiq  := vLiqFat - qNota.FieldByName('FAT_VALORANTECIPADO').AsFloat
      else
        NotaF.NFe.Cobr.Fat.vLiq  := vLiqFat;

    end;

    NotaF.NFe.Cobr.Fat.vDesc := vLiqDesc;




    qDuplicata.First;
    if NotaF.NFe.Cobr.Fat.vLiq > 0 then
    begin
      if not qDuplicata.IsEmpty then
      begin
        vLiqFat:= 0 ;
        while not qduplicata.Eof do
        begin
          if qDuplicata.FieldByName('FPG_REGISTRO').AsInteger = StrToIntDef(DBInicio.GetParametroSistema('PMT_LANCA_CC_VERBA_FPG_REGISTRO'), 0) then
          begin
            qDuplicata.Next;
            continue;
          end;

          //fatura integrada da NFe e NFSe
          if qnota.FieldByName('NF_INTEGRADO').AsString = 'S' then
            vParcelas :=  qDuplicata.FieldByName('FPC_VLPARC').AsFloat -    qDuplicata.FieldByName('FPC_VALR_SERVICOS').AsFloat
          else
           vParcelas :=   qDuplicata.FieldByName('FPC_VLPARC').AsFloat;
          if vParcelas >0  then
          begin
            Duplicata := NotaF.NFe.Cobr.Dup.Add;
            Duplicata.nDup  := PreenchezeroEsquerda(qDuplicata.FieldByName('FPC_NUMER').AsString,3);
            Duplicata.dVenc := qDuplicata.FieldByName('FPC_VENCTO').AsDateTime;
            Duplicata.vDup  := vParcelas;
          end;
          qduplicata.Next;
        end;
      end;
    end;
  end;
  FormaPagamentos :=  NotaF.NFe.pag.Add;
  //NFC-e só pode ser em dinheiro

  (* 01=Dinheiro
  02=Cheque
  03=Cartão de Crédito
  04=Cartão de Débito
  05=Crédito Loja
  10=Vale Alimentação
  11=Vale Refeição
  12=Vale Presente
  13=Vale Combustível
  99=Outro *)
  if (ACBrNFe1.Configuracoes.Geral.ModeloDF = moNFe)  and MatchStr(FinNFeToStr(NotaF.NFe.Ide.finNFe),[ '3', '4'])   then
    FormaPagamentos.tPag := fpSemPagamento
  else if AnsiContainsText(qNota.FieldByName('FPG_DESCRICAO').AsString,'Dinheiro')  then
    FormaPagamentos.tPag := fpDinheiro
  else if  AnsiContainsText(qNota.FieldByName('FPG_DESCRICAO').AsString,'Cheque')  then
    FormaPagamentos.tPag := fpCheque
  else if  AnsiContainsText(qNota.FieldByName('FPG_DESCRICAO').AsString,'Cartão de Crédito') or
      AnsiContainsText(qNota.FieldByName('FPG_DESCRICAO').AsString,'Crédito')   or
      AnsiContainsText(qNota.FieldByName('FPG_DESCRICAO').AsString,'Credito')  then
    FormaPagamentos.tPag := fpCartaoCredito
  else if AnsiContainsText(qNota.FieldByName('FPG_DESCRICAO').AsString,'Cartão de Débito') or
        AnsiContainsText(qNota.FieldByName('FPG_DESCRICAO').AsString,'Débito')  or
        AnsiContainsText(qNota.FieldByName('FPG_DESCRICAO').AsString,'Debito')  then
    FormaPagamentos.tPag := fpCartaoDebito
  else if AnsiContainsText(qNota.FieldByName('FPG_DESCRICAO').AsString,'Crédito Loja')  or
          AnsiContainsText(qNota.FieldByName('FPG_DESCRICAO').AsString,'Credito Loja') then
    FormaPagamentos.tPag := fpCreditoLoja
  else if AnsiContainsText(qNota.FieldByName('FPG_DESCRICAO').AsString,'Vale Alimentação')  or
          AnsiContainsText(qNota.FieldByName('FPG_DESCRICAO').AsString,'Alimentação')  or
          AnsiContainsText(qNota.FieldByName('FPG_DESCRICAO').AsString,'Alimentacao')  then
   FormaPagamentos.tPag := fpValeAlimentacao
  else if AnsiContainsText(qNota.FieldByName('FPG_DESCRICAO').AsString,'Vale Refeição')  or
          AnsiContainsText(qNota.FieldByName('FPG_DESCRICAO').AsString,'Refeição')  or
          AnsiContainsText(qNota.FieldByName('FPG_DESCRICAO').AsString,'Refeicao')  then
   FormaPagamentos.tPag := fpValeRefeicao
  else if AnsiContainsText(qNota.FieldByName('FPG_DESCRICAO').AsString,'Vale Presente')  or
          AnsiContainsText(qNota.FieldByName('FPG_DESCRICAO').AsString,'Presente') then
   FormaPagamentos.tPag := fpValePresente
  else if AnsiContainsText(qNota.FieldByName('FPG_DESCRICAO').AsString,'Vale Combustível')  or
          AnsiContainsText(qNota.FieldByName('FPG_DESCRICAO').AsString,'Combustível') or
          AnsiContainsText(qNota.FieldByName('FPG_DESCRICAO').AsString,'Combustivel') then
   FormaPagamentos.tPag := fpValeCombustivel
  else if AnsiContainsText(qNota.FieldByName('FPG_DESCRICAO').AsString,'Boleto Bancário')  or
          AnsiContainsText(qNota.FieldByName('FPG_DESCRICAO').AsString,'Boleto Bancario') or
          AnsiContainsText(qNota.FieldByName('FPG_DESCRICAO').AsString,'Boletos') or
          AnsiContainsText(qNota.FieldByName('FPG_DESCRICAO').AsString,'Boleto') then
   FormaPagamentos.tPag := fpBoletoBancario
  else if AnsiContainsText(qNota.FieldByName('FPG_DESCRICAO').AsString,'Depósito Bancário')  or
          AnsiContainsText(qNota.FieldByName('FPG_DESCRICAO').AsString,'Depósito') or
          AnsiContainsText(qNota.FieldByName('FPG_DESCRICAO').AsString,'Deposito') then
   FormaPagamentos.tPag := fpDepositoBancario
  else if AnsiContainsText(qNota.FieldByName('FPG_DESCRICAO').AsString,'Pagamento Instantâneo (PIX)')  or
          AnsiContainsText(qNota.FieldByName('FPG_DESCRICAO').AsString,'PIX') or
          AnsiContainsText(qNota.FieldByName('FPG_DESCRICAO').AsString,'pix') then
   FormaPagamentos.tPag := fpPagamentoInstantaneo
  else if AnsiContainsText(qNota.FieldByName('FPG_DESCRICAO').AsString,'Transferência Bancária, Carteira Digital')  or
          AnsiContainsText(qNota.FieldByName('FPG_DESCRICAO').AsString,'Carteira Digital') or
          AnsiContainsText(qNota.FieldByName('FPG_DESCRICAO').AsString,'Transferencia Bancaria') or
          AnsiContainsText(qNota.FieldByName('FPG_DESCRICAO').AsString,'Carteira Digital') then
   FormaPagamentos.tPag := fpTransfBancario
  else if AnsiContainsText(qNota.FieldByName('FPG_DESCRICAO').AsString,'Programa de Fidelidade, Cashback, Crédito Virtual')  or
          AnsiContainsText(qNota.FieldByName('FPG_DESCRICAO').AsString,'Credito Virtual') or
          AnsiContainsText(qNota.FieldByName('FPG_DESCRICAO').AsString,'Cashback') then
   FormaPagamentos.tPag := fpRegimeEspecial
  else if UpperCase(qNota.FieldByName('FPG_DESCRICAO').AsString) = 'SEM PAGAMENTO'  then
    FormaPagamentos.tPag := fpSemPagamento
  else
    FormaPagamentos.tPag := fpOutro;

  if ACBrNFe1.Configuracoes.Geral.ModeloDF = moNFCe then
  begin
    with FormaPagamentos do
    begin
      indPag := ipVista;
      vPag := qNota.FieldByName('NF_TOT_NOTA').AsFloat ;
      if tPag = fpOutro then
        xPag := DBInicio.GetParametroSistema('PMT_DESCRICAO_99_OUTROS');
    end;
  end
  else
  begin
    if MatchStr(FinNFeToStr(NotaF.NFe.Ide.finNFe),[ '3', '4'])   then
     NotaF.NFe.Ide.indPag := ipOutras
    else  if (qNota.FieldByName('PCL_MODALIDADE').AsString <> '') then
    begin
      with FormaPagamentos do
      begin
        if qNota.FieldByName('PCL_MODALIDADE').AsString <> '2' then
        begin
          indPag := StrToIndpag(ok,qNota.FieldByName('PCL_MODALIDADE').AsString);
          vPag := qNota.FieldByName('NF_TOT_NOTA').AsFloat ;
        end;
        if tPag = fpOutro then
          xPag := DBInicio.GetParametroSistema('PMT_DESCRICAO_99_OUTROS');
      end;
    end
    else
       NotaF.NFe.Ide.indPag:= ipVista;
  end ;



  //informações complementares ao contribuinte
  NotaF.NFe.InfAdic.infCpl     :=  InforComplentares(qNota.FieldByName('nf_observacao').AsString);
  //informações complementares ao fisco
  NotaF.NFe.InfAdic.infAdFisco := InforComplentares(qNota.FieldByName('MSG_NFE_OPER_FISCAL').AsString);
  if  qNota.FieldByName('NF_VALOR_TOTAL_FCP').ascurrency >0 then
    NotaF.NFe.InfAdic.infAdFisco := NotaF.NFe.InfAdic.infAdFisco+#13#10+
                     ' . Total do FCP = '+FloatToSQL(qNota.FieldByName('NF_VALOR_TOTAL_FCP').ascurrency);
  if qNota.FieldByName('NF_VALOR_TOTAL_FCPst').ascurrency > 0  then
    NotaF.NFe.InfAdic.infAdFisco := NotaF.NFe.InfAdic.infAdFisco+#13#10+
                ' . Total do FCP ST = '+FloatToSQL(qNota.FieldByName('NF_VALOR_TOTAL_FCPst').ascurrency);

  IF  qNota.FieldByName('NF_VALORTOT_PIS').AsFloat >0 then
    NotaF.NFe.InfAdic.infAdFisco :=  NotaF.NFe.InfAdic.infAdFisco + '. '+' PIS '+ FormatFloat('#,##0.00',FPIS) + '%' +
    ' TOTAL '+ FormatFloat('##0.00', qNota.FieldByName('NF_VALORTOT_PIS').AsFloat  ) ;
  if qNota.FieldByName('NF_VALORTOT_COFINS').AsFloat> 0 then
    NotaF.NFe.InfAdic.infAdFisco :=  NotaF.NFe.InfAdic.infAdFisco +'.'+' COFINS '+ FormatFloat('#,##0.00',FCofins) + '%' +
    ' TOTAL '+ FormatFloat('##0.00', qNota.FieldByName('NF_VALORTOT_COFINS').AsFloat );

  //informações complementares do tecnico responsável somente para ambiente de homologação
 // if ACBrNFe1.Configuracoes.WebServices.Ambiente = taHomologacao then
 if fPMT_RESPONSAVEL_TECNICO  OR (ACBrNFe1.Configuracoes.WebServices.Ambiente = taHomologacao) then
  begin
     with NotaF.NFe.infRespTec do
    begin
      CNPJ     := '11089061000193';
      xContato := 'Márcio Pacheco - Novi sistemas';
      email    := 'suporte@novisistemas.com.br';
      fone     := '4130299231';
    end;
  end;


end;

function TfrmProcessaNFe.GerarSeqNFCe: string;
var i: integer;
begin
  BeginTransaction;
  try
   i:= GetNextSequence('GEN_SEQ_NFCe');
   ExecSql('update NF0001 set nf_num_nfce = ' + InttoStr(i) +  ' where NF_REGISTRO = '+ IntToStr(qnota.FieldByName('NF_REGISTRO').AsInteger));
   CommitTransaction;
  except
    RollBackTransaction;
    result:= '0' ;
  end;
  result := inttostr(i);
end;

function TfrmProcessaNFe.GerarSeqNFe: string;
var i, ie, ieCodigo  :integer;
sql : string;
begin
 if (dbInicio.Nfe.TipoSequencia = tpGenerator) then
    begin
      if (qNota.FieldByName('nf_num_nfe').AsInteger = 0) or (qNota.FieldByName('nf_num_nfe').IsNull) then
      begin
        if DBInicio.GetParametroSistema('PMT_MULTIPLAS_IE') = 'S' then
        begin
          BeginTransaction;
          try
            i := BuscaUmDadoSqlAsInteger('SELECT EMI_SEQUENCIA_NF + 1 FROM EMP_MULTIPLAS_IE emi JOIN PEDIDO_IE pi ON (pi.EMI_CODIGO = emi.EMI_CODIGO) WHERE pi.PED_CODIGO =  ' + QuotedStr(FormFaturamento.cdsnotas.FieldByName('PED_CODIGO').AsString));
            sql := 'SELECT emi.EMI_IE FROM EMP_MULTIPLAS_IE emi JOIN PEDIDO_IE pi ON (pi.EMI_CODIGO = emi.EMI_CODIGO) WHERE pi.PED_CODIGO =  ' + QuotedStr(FormFaturamento.cdsnotas.FieldByName('PED_CODIGO').AsString);
            ie := BuscaUmDadoSqlAsInteger(sql);
            ieCodigo := BuscaUmDadoSqlAsInteger('SELECT emi.EMI_CODIGO FROM EMP_MULTIPLAS_IE emi JOIN PEDIDO_IE pi ON (pi.EMI_CODIGO = emi.EMI_CODIGO) WHERE pi.PED_CODIGO =  ' + QuotedStr(FormFaturamento.cdsnotas.FieldByName('PED_CODIGO').AsString));
            ExecSql('UPDATE EMP_MULTIPLAS_IE SET EMI_SEQUENCIA_NF = ' + IntToStr(i) + ' WHERE EMI_CODIGO = ' + IntToStr(ieCodigo) );
            ExecSql('update NF0001 set nf_num_nfe = ' + InttoStr(i) +  ' where NF_REGISTRO = '+ IntToStr(qnota.FieldByName('NF_REGISTRO').AsInteger)   );
            CommitTransaction;
            Result := IntToStr(i);
          Except
            RollBackTransaction;
            result:= '0' ;
          end;
        end
        else
        begin
          BeginTransaction;
          try
            OpenAux('SELECT retorno FROM PCD_SEQUENCIA_NFE('''+EmpCodigo+''','+QuotedStr(IIF(fSerieNF = '900','S','N'))+')') ;
            i := qaux.FieldByName('retorno').AsInteger;
            ExecSql('update NF0001 set nf_num_nfe = ' + InttoStr(i+1) +  ' where NF_REGISTRO = '+ IntToStr(qnota.FieldByName('NF_REGISTRO').AsInteger)   );
            CommitTransaction;
            Result     := InttoStr((i+1));
          except
            RollBackTransaction;
            result:= '0' ;
          end;
        end;
      end
      else
        result := InttoStr(qNota.FieldByName('nf_num_nfe').AsInteger) ;

    end;
end;

procedure TfrmProcessaNFe.GravarChaveOnly(const chave: string;const nf_registro: Integer);
var sql :string;
begin
  sql:=   ' UPDATE NF0001  '+
            ' SET NF_CHAVE_NFE = '+QuotedStr(chave) +
//            '  NF_LOTE_NFE = '+     IntToStr(Lote) +
            ' WHERE NF_REGISTRO = '+ IntToStr(NF_REGISTRO);

  ExecSql(SQL);
end;

procedure TfrmProcessaNFe.GravarEmailEnviado(const nf_registro: integer; const status : string);
var sql :string;
begin

  sql:=   ' UPDATE NF0001  '+
          ' SET  NF_ENVIADO_NFE_EMAIL = '  + QuotedStr(status) +
          ' WHERE NF_REGISTRO = '+ IntToStr(NF_REGISTRO);
 ExecSql(SQL);

end;

procedure TfrmProcessaNFe.GravarHistorico(const mensagem: string;const nf_registro, NFM_REGISTRO: integer);
var vcodigo : integer;
  sql: string;
begin
   vcodigo := GetNextSequence('GEN_NF0001_HISTORICO_ID');
   sql := ' insert into NF0001_HISTORICO (NFH_REGISTRO, EMP_CODIGO, NF_REGITRO ,NFM_REGISTRO,USU_CODIGO , NFH_DATA, NFH_HORA, NFH_DESCRICAO ) '+
          ' values ('+IntToStr(vcodigo)+','+EmpCodigo +','+ IntToStr(nf_registro)  +','+IntToStr(NFM_REGISTRO) + ','+ DBInicio.Usuario.CODIGO + ','+
            DateToSQL(now)+','+ TimeToSQL(time)+  ','+
              QuotedStr(COPY(mensagem,1,255) ) + ' )'  ;
   try
    ExecSql( sql);
   except
    on e: exception do
    begin
      raise;

    end;

   end;

end;

procedure TfrmProcessaNFe.GravarNota(const protocolo: string; const status: string; const chave: string; const nf_registro: Integer; const DataAutorizacao: TDateTime; const Lote: String);
var sql :string;
begin
    sql:=   ' UPDATE NF0001  '+
            ' SET  NF_STATUS_NFE = '  + QuotedStr(status) + ' , '+
            '  NF_CHAVE_NFE = '+QuotedStr(chave) + ' , '+
            '  NF_PROTOCOLO_NFE = '+ QuotedStr(protocolo)+  ','+
            '  NF_DATA_AUTORIZACAO = '+  RetornaNullString (DataAmericana(FormatDateTime('DD/MM/YYYY',DataAutorizacao)))+','+
            '  NF_HORA_AUTORIZACAO = '+  RetornaNullString(FormatDateTime('HH:MM:SS',DataAutorizacao))   +  ','+
            '  NF_LOTE_NFE = '+     Lote +
            ' WHERE NF_REGISTRO = '+ IntToStr(NF_REGISTRO);


 ExecSql(SQL);
end;

procedure TfrmProcessaNFe.GravarStatus(const status: string; const nf_registro: integer);
var sql: string;
begin
// gravar status  e protocolo, chave, xml
  sql:=   ' UPDATE NF0001  '+
          ' SET  NF_STATUS_NFE = '  + QuotedStr(status)+
          ' WHERE NF_REGISTRO = '+ IntToStr(NF_REGISTRO);
 ExecSql(SQL);
end;

procedure TfrmProcessaNFe.GravaXML(itemNota, nf_registro: integer);
begin
//  if ACBrNFe1.NotasFiscais.Items[itemNota].NFE.procNFe.nProt = '' then
//    exit;
  CdsXML.Close;
  qXML.CommandText := 'SELECT NFX_REGISTRO,EMP_CODIGO,NF_REGISTRO, NFX_XML,NFX_XML_RECIBO FROM NF0001_XML where 1=0';
  CdsXML.Open;
  CdsXML.Insert;
  cdsXMLNFX_REGISTRO.AsInteger := GetNextSequence('GEN_NF0001_XML_ID') ;
  cdsXMLEMP_CODIGO.AsInteger := StrToInt(Empcodigo);
  CdsXMLNF_REGISTRO.AsInteger :=  nf_registro;
  CdsXMLNFX_XML_RECIBO.AsString := UTF8Encode(ACBrNFe1.WebServices.Retorno.Recibo);
  CdsXML.FieldByName('NFX_XML').AsString := UTF8Encode( ACBrNFe1.NotasFiscais.Items[itemNota].XMLAssinado);
  CdsXML.ApplyUpdates(0);

end;

function TfrmProcessaNFe.RetirarSujeira( str: string): string;
begin
   str := Trim(RetiraAcentos(str));
   str := StringReplace(str, ''#$D'', '', [rfReplaceAll]);
   str := StringReplace(str,'{http://www.portalfiscal.inf.br/nfe}','', [rfReplaceAll]);
   str := StringReplace(str,'Element','', [rfReplaceAll]);
   str := StringReplace(str,'Falha na validacao dos dados da nota:','', [rfReplaceAll]);
   result := StringReplace(str, ''#$A'', '', [rfReplaceAll]);
end;

procedure TfrmProcessaNFe.SetEmpCodigo(const Value: string);
begin
  fEmp_codigo := Value;
  CarregarParametros;
end;

procedure TfrmProcessaNFe.SetLote(const aValues: string);
begin
   FLote := Avalues;
end;
 {CST ICM
 00 – Tributada integralmente
 10 – Tributada e com cobrança do ICMS-ST
 20 – Com redução de base de cálculo
 30 – Isenta ou não tributada e com cobrança do ICMS-ST
 40 – Isenta
 41 – Não tributada
 50 – Suspensão
 51 – Diferimento
 60 – ICMS cobrado anteriormente por ST
 70 – Com redução de base de cálculo e cobrança do ICMS-ST
 90 – Outras}
procedure TfrmProcessaNFe.TotalizacaoNFE;
var temST: boolean;
begin

  with NotaF.NFe.Total.ICMSTot do
  begin
     vBC := qNota.FieldByName('NF_BASEICMS').AsFloat;
     VICMS := qNota.FieldByName('NF_VL_ICMS').AsFloat;
     vICMSDeson := 0 ;

     if (fOPT_SIMPLES = 'S')  then
     begin
        qItemNota.First;
         temst:= False;
        //Adicionando Produtos  antigos DadosBasicosProduto  ProdutoImportacao
        while not qItemNota.Eof do
        begin
            if (qItemNota.FieldByName('NF_VLSUBST').AsFloat = 0 )   and
              not  MatchStr(qItemNota.FieldByName('STB_TRIBUTACAO').AsString,['10','60']) then
              qItemNota.Next
            else
            begin
              temst:= True;
              Break;
            end;
        end;
     end
     else
       temst:= True;

     if temST then
     begin
      VBCST := qNota.FieldByName('NF_VLBASESUBTRIB').AsFloat;
      VST := qNota.FieldByName('NF_VL_SUBTRIB').AsFloat;
     end;
     vICMSDeson:= qNota.FieldByName('NF_TotalICMS_Deson').AsFloat;
     VProd := qNota.FieldByName('NF_TOT_PROD').AsFloat;
     VFrete := qNota.FieldByName('NF_VLFRETE').AsFloat;
     VSeg :=   qNota.FieldByName('NF_VLSEGURO').AsFloat;
     VDesc :=   qNota.FieldByName('NF_VL_DESCTO').AsFloat;
     VII :=   0;
     if  (qNota.FieldByName('NF_VALOR_TOTAL_FCP').ascurrency >0)  and ( NotaF.NFe.Ide.indFinal  <> cfConsumidorFinal )  then
       vFCP :=  qNota.FieldByName('NF_VALOR_TOTAL_FCP').ascurrency;
     if qNota.FieldByName('NF_VALOR_TOTAL_FCPst').ascurrency > 0  then
      vFCPST := qNota.FieldByName('NF_VALOR_TOTAL_FCPst').ascurrency;

     VPIS :=  qNota.FieldByName('NF_VALORTOT_PIS').AsFloat;
     VCOFINS :=  qNota.FieldByName('NF_VALORTOT_COFINS').AsFloat;


     if DBInicio.Empresa.PMT_HABILITAR_DIFAL then
     begin
       VOutro :=  qNota.FieldByName('NF_DESP_ACES').AsFloat + qNota.FieldByName('NF_VLDIFAL').AsFloat ;
       vNF :=  qNota.FieldByName('NF_TOT_NOTA').AsFloat + vFCPST  + qNota.FieldByName('NF_VLDIFAL').AsFloat
     end
     else
     begin
       VOutro :=  qNota.FieldByName('NF_DESP_ACES').AsFloat;
       vNF :=  qNota.FieldByName('NF_TOT_NOTA').AsFloat + vFCPST;
     end;


     if (NotaF.NFe.Ide.finNFe = fnDevolucao) and (fOPT_SIMPLES = 'S') then
     begin
       vIPIDevol := qNota.FieldByName('NF_VL_IPI').AsFloat ;

     end
     else
      vIPI :=  qNota.FieldByName('NF_VL_IPI').AsFloat;

     // vNF := vNF + vIPI;

     if (VBCST<>0) or (VST<>0) then // informa IE substitut.tribut
     begin
      OpenAux2(' SELECT ICM_IE_SUBTRIB FROM ICM0000 WHERE ICM_DESTINO = '+ QuotedStr(qnota.FieldByName('CLI_UF_ENTR').AsString)  +
      ConcatSe (' and ',dbInicio.ExclusivoSql('ICMS')) );
      if not qAux2.IsEmpty then
        NotaF.NFe.Emit.IEST            := RetirarMascaraCNPJ_INSC ( qaux2.FieldByName('ICM_IE_SUBTRIB').AsString );  //IE do Substituto Tributário
     end;

     if (NotaF.NFe.Emit.EnderEmit.UF <> NotaF.NFe.Dest.EnderDest.UF) and // interestadual
        ( NotaF.NFe.Ide.indFinal  = cfConsumidorFinal ) and // Consumidor final / não contribuinte
        (qnota.FieldByName('OPE_TIPO_OPERACAO').AsString = 'V') then
     begin
          vFCPUFDest:=qNota.FieldByName('NF_VALOR_TOTAL_FCP').ascurrency;
          vICMSUFDest:=qNota.FieldByName('NF_VALOR_TOTAL_PARTILHA_DEST').ascurrency;
          vICMSUFRemet:=qNota.FieldByName('NF_VALOR_TOTAL_PARTILHA_ORIG').ascurrency;
     end;

  end;

  // if (oSistema.Empresa.Parametro.ValorAproximadoImpostos = vaiTodos) or (NotaFiscal.Destinatario.ConsumidorFinal) then  //incompleto
   if  MostraIBPT_Item then
          notaf.NFe.Total.ICMSTot.VTotTrib := qnota.FieldByName('IBPT_VLAPROXTRIBUTOS').AsCurrency;

end;

procedure TfrmProcessaNFe.TributacaoICMS;
begin
 produto.Imposto.ICMS.orig := StrToOrig(ok,IntToStr(qItemNota.FieldByName('PRD_ORIGEM').AsInteger));
 if copy(IntToStr(qItemNota.FieldByName('NTP_CFOP').AsInteger),1,1) = '7' then // cfop de exportação cts do icms é 41 = não tributado
  produto.Imposto.ICMS.CST  := cst41
 else
   produto.Imposto.ICMS.CST  := StrToCSTICMS ( ok , qItemNota.FieldByName('STB_TRIBUTACAO').AsString);
 if qnota.FieldByName('nf_export_local_embarque').AsString <> '' then  //exportação seta cst 41
   produto.Imposto.ICMS.CST := cst41
 else if (qItemNota.FieldByName('NF_ICMSREDUCAOPERC').AsFloat > 0) and ( NOT MatchStr(qItemNota.FieldByName('STB_TRIBUTACAO').AsString,['51','20']) )  then    //DIFERIMENTO
  produto.Imposto.ICMS.CST := cst51 ; //diferimento


  if produto.Imposto.ICMS.cst = cst00 then
  begin
   produto.Imposto.ICMS.modBC := StrTomodBC(ok,'3');
   produto.Imposto.ICMS.vBC := qItemNota.FieldByName('NF_ICMSBASE').AsFloat;
   produto.Imposto.ICMS.pICMS := qItemNota.FieldByName('NF_ICMSALIQ').AsFloat;
   produto.Imposto.ICMS.vICMS :=qItemNota.FieldByName('NF_ICMSVALOR').AsFloat;// RoundTo ( produto.Imposto.ICMS.vBC * ( produto.Imposto.ICMS.pICMS / 100 ) , -2 ) ;   //
   IF (qItemNota.FieldByName('NF_VALOR_FCP').asCurrency > 0) and ( NotaF.NFe.Ide.indFinal  <> cfConsumidorFinal ) Then
   begin
     Produto.Imposto.ICMS.pFCP     := qItemNota.FieldByName('NF_PERC_FCP').asCurrency;
     Produto.Imposto.ICMS.vFCP     := qItemNota.FieldByName('NF_VALOR_FCP').asCurrency ;
   end;


  end
  else
  if produto.Imposto.ICMS.CST = cst10 then
  begin
    produto.Imposto.ICMS.modBC := StrTomodBC(ok,'3');
    produto.Imposto.ICMS.vBC := qItemNota.FieldByName('NF_ICMSBASE').AsFloat;
    produto.Imposto.ICMS.pICMS := qItemNota.FieldByName('NF_ICMSALIQ').AsFloat;
    produto.Imposto.ICMS.vICMS := qItemNota.FieldByName('NF_ICMSVALOR').AsFloat;
    if qItemNota.FieldByName('NF_MVAPERC').AsFloat > 0  then
      produto.Imposto.ICMS.ModBCST := StrTomodBCST(ok, '4')
    else
      produto.Imposto.ICMS.ModBCST := StrTomodBCST(ok, '0') ;

    produto.Imposto.ICMS.PMVAST := qItemNota.FieldByName('NF_MVAPERC').AsFloat; //margem valor agregado

   IF (qItemNota.FieldByName('NF_VALOR_FCP').asCurrency > 0) and ( NotaF.NFe.Ide.indFinal  <> cfConsumidorFinal ) Then
   begin
     Produto.Imposto.ICMS.vBCFCP   := qItemNota.FieldByName('NF_ICMSBASE').AsFloat;
     Produto.Imposto.ICMS.pFCP     := qItemNota.FieldByName('NF_PERC_FCP').asCurrency;
     Produto.Imposto.ICMS.vFCP     := qItemNota.FieldByName('NF_VALOR_FCP').asCurrency ;
   end;
   if qItemNota.FieldByName('NF_VALOR_FCP_st').asCurrency > 0  then
   begin
     Produto.Imposto.ICMS.vBCFCPST   := qItemNota.FieldByName('NF_SUBTRIBASE').AsFloat;
     Produto.Imposto.ICMS.pFCPST     := qItemNota.FieldByName('NF_PERC_FCP').asCurrency;
     Produto.Imposto.ICMS.vFCPST     := qItemNota.FieldByName('NF_VALOR_FCP_st').asCurrency ;
   end;


  end
  else
  if produto.Imposto.ICMS.CST = cst20 then
  begin
    produto.Imposto.ICMS.modBC := StrTomodBC(ok,'3');
    Produto.Imposto.ICMS.PRedBC := qItemNota.FieldByName('NF_ICMSREDUCAOPERC').AsFloat;
    produto.Imposto.ICMS.vBC := qItemNota.FieldByName('NF_ICMSBASE').AsFloat;
    produto.Imposto.ICMS.pICMS := qItemNota.FieldByName('NF_ICMSALIQ').AsFloat;
    produto.Imposto.ICMS.vICMS := qItemNota.FieldByName('NF_ICMSVALOR').AsFloat;  //TNotaFiscalItem(NotaFiscal.ItensNotaFiscal[I]).IcmsValor;

   IF (qItemNota.FieldByName('NF_VALOR_FCP').asCurrency > 0) and ( NotaF.NFe.Ide.indFinal  <> cfConsumidorFinal ) Then
   begin
    Produto.Imposto.ICMS.vBCFCP   := qItemNota.FieldByName('NF_ICMSBASE').AsFloat;
    Produto.Imposto.ICMS.pFCP     := qItemNota.FieldByName('NF_PERC_FCP').asCurrency;
    Produto.Imposto.ICMS.vFCP     := qItemNota.FieldByName('NF_VALOR_FCP').asCurrency ;
   end;

  end
  else
  if produto.Imposto.ICMS.CST = cst30 then
  begin
     produto.Imposto.ICMS.modBC := StrTomodBC(ok,'4');
  if qItemNota.FieldByName('NF_MVAPERC').AsFloat > 0  then
      produto.Imposto.ICMS.ModBCST := StrTomodBCST(ok, '4')
    else
      produto.Imposto.ICMS.ModBCST := StrTomodBCST(ok, '0') ;
     Produto.Imposto.ICMS.PRedBC := qItemNota.FieldByName('NF_ICMSREDUCAOPERC').AsFloat;
     produto.Imposto.ICMS.vBC := qItemNota.FieldByName('NF_ICMSBASE').AsFloat;
     produto.Imposto.ICMS.pICMS := qItemNota.FieldByName('NF_ICMSALIQ').AsFloat;
     produto.Imposto.ICMS.vICMS := qItemNota.FieldByName('NF_ICMSVALOR').AsFloat;   //TNotaFiscalItem(NotaFiscal.ItensNotaFiscal[I]).IcmsValor;
     produto.Imposto.ICMS.PMVAST := qItemNota.FieldByName('NF_MVAPERC').AsFloat; //margem valor agregado
     Produto.Imposto.ICMS.vBCST := qItemNota.FieldByName('NF_SUBTRIBASE').AsFloat;
     Produto.Imposto.ICMS.PICMSST := qItemNota.FieldByName('NF_ALIQSUBTRIB').AsFloat;
     Produto.Imposto.ICMS.VICMSST := qItemNota.FieldByName('NF_VLSUBST').AsFloat;

//    IF qItemNota.FieldByName('NF_VALOR_FCP').asCurrency > 0 Then
//    begin
//      Produto.Imposto.ICMS.vBCST := qItemNota.FieldByName('NF_SUBTRIBASE').AsFloat;
//      Produto.Imposto.ICMS.PICMSST := qItemNota.FieldByName('NF_ALIQSUBTRIB').AsFloat;
//      Produto.Imposto.ICMS.VICMSST := qItemNota.FieldByName('NF_VLSUBST').AsFloat;
//    end;
    if qItemNota.FieldByName('NF_VALOR_FCP_st').asCurrency > 0  then
    begin
     Produto.Imposto.ICMS.vBCFCPST   := qItemNota.FieldByName('NF_SUBTRIBASE').AsFloat;
     Produto.Imposto.ICMS.pFCPST     := qItemNota.FieldByName('NF_PERC_FCP').asCurrency;
     Produto.Imposto.ICMS.vFCPST     := qItemNota.FieldByName('NF_VALOR_FCP_st').asCurrency ;

    end;
  end
  else
  if produto.Imposto.ICMS.CST = cst41 then
  begin
//    Produto.Imposto.ICMS.vBCFCPSTRet   := qItemNota.FieldByName('NF_ICMSBASE').AsFloat;
//    Produto.Imposto.ICMS.pFCPSTRet     := qItemNota.FieldByName('NF_PERC_FCP').asCurrency;
//    Produto.Imposto.ICMS.vFCPSTRet     := qItemNota.FieldByName('NF_VALOR_FCP').asCurrency ;

  end
  else
  if Produto.Imposto.ICMS.cst = cst51 then
  begin
    Produto.Imposto.ICMS.modBC := StrTomodBC(ok,'3');
    // Produto.Imposto.ICMS.PRedBC := qItemNota.FieldByName('NF_ICMSREDUCAOPERC').AsFloat;
    Produto.Imposto.ICMS.VBC := qItemNota.FieldByName('NF_ICMSBASE').AsFloat;

    Produto.Imposto.ICMS.pICMS := qItemNota.FieldByName('NF_ICMSALIQ').AsFloat;
    Produto.Imposto.ICMS.vICMS := qItemNota.FieldByName('NF_ICMSVALOR').AsFloat;// RoundTo ( produto.Imposto.ICMS.vBC * ( produto.Imposto.ICMS.pICMS / 100 ) , -2 ) ;CMS := RoundTo ( ( Produto.Imposto.ICMS.VBC * ( 1 - ( Produto.Imposto.ICMS.PRedBC/100 ) ) ) * ( Produto.Imposto.ICMS.pICMS  / 100 ) , -2 ) ;  //TNotaFiscalItem(NotaFiscal.ItensNotaFiscal[I]).IcmsValor;

    Produto.Imposto.ICMS.vICMSOp := RoundTo (  Produto.Imposto.ICMS.VBC * ( Produto.Imposto.ICMS.pICMS / 100 ) , -2 ) ;  //TNotaFiscalItem(NotaFiscal.ItensNotaFiscal[I]).IcmsValor;
    // Produto.Imposto.ICMS.pDif := Produto.Imposto.ICMS.PRedBC ;
    Produto.Imposto.ICMS.pDif := qItemNota.FieldByName('NF_ICMSREDUCAOPERC').AsFloat ;
    Produto.Imposto.ICMS.vICMSDif := Produto.Imposto.ICMS.vICMSOp - Produto.Imposto.ICMS.vICMS ;
    if (qItemNota.FieldByName('NF_VALOR_FCP').asCurrency > 0) and ( NotaF.NFe.Ide.indFinal  <> cfConsumidorFinal ) then
    begin
      Produto.Imposto.ICMS.vBCFCP   := qItemNota.FieldByName('NF_ICMSBASE').AsFloat;
      Produto.Imposto.ICMS.pFCP     := qItemNota.FieldByName('NF_PERC_FCP').asCurrency;
      Produto.Imposto.ICMS.vFCP     := qItemNota.FieldByName('NF_VALOR_FCP').asCurrency ;
    end;
  end
  else
  if Produto.Imposto.ICMS.cst = cst60 then
  begin
    Produto.Imposto.ICMS.VBCSTRet := qItemNota.FieldByName('NF_SUBTRIBASE').AsFloat;
    //Produto.Imposto.ICMS.VICMSSTRet := qItemNota.FieldByName('NF_VLSUBST').AsFloat;
    Produto.Imposto.ICMS.vICMSSTRet := qItemNota.FieldByName('NF_ICMSSUBSTITUTO_ANT').AsFloat;
    Produto.Imposto.ICMS.vICMSSubstituto := qItemNota.FieldByName('NF_ICMSSUBSTITUTO_ANT').AsFloat;
   if Produto.Imposto.ICMS.vICMSSTRet = 0 then
    begin
      Produto.Imposto.ICMS.pST := 0 ;
      Produto.Imposto.ICMS.vBCSTRet := 0 ;

    end;
//    Produto.Imposto.ICMS.vBCFCPSTRet   := qItemNota.FieldByName('NF_ICMSBASE').AsFloat;
//    Produto.Imposto.ICMS.pFCPSTRet     := qItemNota.FieldByName('NF_PERC_FCP').asCurrency;
//    Produto.Imposto.ICMS.vFCPSTRet     := qItemNota.FieldByName('NF_VALOR_FCP').asCurrency ;
  end
  else
  if Produto.Imposto.ICMS.cst = cst70 then
  begin
     Produto.Imposto.ICMS.modBC := StrTomodBC(ok,'3');
     Produto.Imposto.ICMS.PRedBC := qItemNota.FieldByName('NF_ICMSREDUCAOPERC').AsFloat;
     Produto.Imposto.ICMS.vBC := qItemNota.FieldByName('NF_ICMSBASE').AsFloat;
     Produto.Imposto.ICMS.pICMS := qItemNota.FieldByName('NF_ICMSALIQ').AsFloat;
     Produto.Imposto.ICMS.vICMS := qItemNota.FieldByName('NF_ICMSVALOR').AsFloat; //RoundTo ( ( Produto.Imposto.ICMS.vBC * ( 1 - ( Produto.Imposto.ICMS.PRedBC/100 ) ) ) * ( Produto.Imposto.ICMS.pICMS / 100 ) , -2 ) ;

        if qItemNota.FieldByName('NF_MVAPERC').AsFloat > 0  then
          produto.Imposto.ICMS.ModBCST := StrTomodBCST(ok, '4')
        else
          produto.Imposto.ICMS.ModBCST := StrTomodBCST(ok, '0') ;
       Produto.Imposto.ICMS.PMVAST := qItemNota.FieldByName('NF_MVAPERC').AsFloat; //margem valor agregado
       Produto.Imposto.ICMS.vBCST := qItemNota.FieldByName('NF_SUBTRIBASE').AsFloat;
       Produto.Imposto.ICMS.PICMSST := qItemNota.FieldByName('NF_ALIQSUBTRIB').AsFloat;
       Produto.Imposto.ICMS.VICMSST := qItemNota.FieldByName('NF_VLSUBST').AsFloat;
    IF (qItemNota.FieldByName('NF_VALOR_FCP').asCurrency > 0) and ( NotaF.NFe.Ide.indFinal  <> cfConsumidorFinal ) Then
    begin
      Produto.Imposto.ICMS.vBCFCP   := qItemNota.FieldByName('NF_ICMSBASE').AsFloat;
      Produto.Imposto.ICMS.pFCP     := qItemNota.FieldByName('NF_PERC_FCP').asCurrency;
      Produto.Imposto.ICMS.vFCP     := qItemNota.FieldByName('NF_VALOR_FCP').asCurrency ;

    end;
    if qItemNota.FieldByName('NF_VALOR_FCP_st').asCurrency >  0 then
    begin
     Produto.Imposto.ICMS.vBCFCPST   := qItemNota.FieldByName('NF_SUBTRIBASE').AsFloat;
     Produto.Imposto.ICMS.pFCPST     := qItemNota.FieldByName('NF_PERC_FCP').asCurrency;
     Produto.Imposto.ICMS.vFCPST     := qItemNota.FieldByName('NF_VALOR_FCP_st').asCurrency ;
    end;
 end
  else
  if Produto.Imposto.ICMS.cst = cst90 then
  begin
     Produto.Imposto.ICMS.modBC := StrTomodBC(ok,'3');
     Produto.Imposto.ICMS.VBC := qItemNota.FieldByName('NF_ICMSBASE').AsFloat;
     Produto.Imposto.ICMS.PICMS := qItemNota.FieldByName('NF_ICMSALIQ').AsFloat;
     Produto.Imposto.ICMS.vICMS := qItemNota.FieldByName('NF_ICMSVALOR').AsFloat; //RoundTo ( Produto.Imposto.ICMS.VBC  * ( Produto.Imposto.ICMS.PICMS / 100 ) , -2 ) ;

     Produto.Imposto.ICMS.ModBCST := StrTomodBCST(ok,'0');
     Produto.Imposto.ICMS.vBCST := qItemNota.FieldByName('NF_SUBTRIBASE').AsFloat;
     Produto.Imposto.ICMS.PICMSST := qItemNota.FieldByName('NF_ALIQSUBTRIB').AsFloat;
     Produto.Imposto.ICMS.VICMSST := qItemNota.FieldByName('NF_VLSUBST').AsFloat;

    IF (qItemNota.FieldByName('NF_VALOR_FCP').asCurrency > 0) and ( NotaF.NFe.Ide.indFinal  <> cfConsumidorFinal ) Then
    begin
      Produto.Imposto.ICMS.vBCFCP   := qItemNota.FieldByName('NF_ICMSBASE').AsFloat;
      Produto.Imposto.ICMS.pFCP     := qItemNota.FieldByName('NF_PERC_FCP').asCurrency;
      Produto.Imposto.ICMS.vFCP     := qItemNota.FieldByName('NF_VALOR_FCP').asCurrency ;

    end;
    if qItemNota.FieldByName('NF_VALOR_FCP_st').asCurrency > 0 then
    begin
     Produto.Imposto.ICMS.vBCFCPST   := qItemNota.FieldByName('NF_SUBTRIBASE').AsFloat;
     Produto.Imposto.ICMS.pFCPST     := qItemNota.FieldByName('NF_PERC_FCP').asCurrency;
     Produto.Imposto.ICMS.vFCPST     := qItemNota.FieldByName('NF_VALOR_FCP_st').asCurrency ;
    end;

  end;
  //DEFINIR  - CONSUMIDOR FINAL FORA DO ESTADO
  Produto.Imposto.ICMS.vBCST := qItemNota.FieldByName('NF_SUBTRIBASE').AsFloat;
  Produto.Imposto.ICMS.PICMSST := qItemNota.FieldByName('NF_ALIQSUBTRIB').AsFloat;
  Produto.Imposto.ICMS.VICMSST := qItemNota.FieldByName('NF_VLSUBST').AsFloat;
   // ICMS uf dest  - antigo VendaInterEstadualConsumidorFinal_Item
  // icms desoneração
  if qItemNota.FieldByName('NF_VALORICMSDESON').AsFloat >0 then
  begin
    Produto.Imposto.ICMS.vICMSDeson   := qItemNota.FieldByName('NF_VALORICMSDESON').AsFloat;
    Produto.Imposto.ICMS.motDesICMS   := StrTomotDesICMS(ok, qItemNota.FieldByName('NF_MOTIVDESON').AsString);
  end;

end;

procedure TfrmProcessaNFe.TributacaoICMS_simples;
begin
  Produto.Imposto.ICMS.orig    :=  StrToOrig(ok,IntToStr(qItemNota.FieldByName('PRD_ORIGEM').AsInteger));
  //sem st e não for 10 e 60
  // cst 10 - Tributada e com cobrança do ICMS-ST
  // cst 60 - cobrado anteriormente por ST
  if (qItemNota.FieldByName('NF_VLSUBST').AsFloat = 0 )   and
  not  MatchStr(qItemNota.FieldByName('STB_TRIBUTACAO').AsString,['10','60']) then
  begin
    if not qItemNota.FieldByName('NF_CSOSN').isnull and (qItemNota.FieldByName('NF_CSOSN').AsInteger > 0) then
       CSOSN := qItemNota.FieldByName('NF_CSOSN').AsInteger  // especifica por cfop
    Else
    if qNota.FieldByName('EMP_CSOSN').AsInteger  <>0 then
      CSOSN := qNota.FieldByName('EMP_CSOSN').AsInteger  // especifica por cfop
    else
      CSOSN := fiCSOSN;

    // icms desoneração
    if qItemNota.FieldByName('NF_VALORICMSDESON').AsFloat >0 then
    begin
      Produto.Imposto.ICMS.vICMSDeson   := qItemNota.FieldByName('NF_VALORICMSDESON').AsFloat;
      Produto.Imposto.ICMS.motDesICMS   := StrTomotDesICMS(ok, qItemNota.FieldByName('NF_MOTIVDESON').AsString);
    end;

    Produto.Imposto.ICMS.CSOSN := StrToCSOSNIcms(ok,IntToStr(CSOSN));
    if (COPY(Produto.Prod.CFOP,1,1) = '3') then   // grupo 3: entradas e aquisições de serviços no exterior
    begin
       Produto.Imposto.ICMS.CSOSN := csosn900;
       Produto.Imposto.IPI.qSelo := 0;
       if MatchStr(qItemNota.FieldByName('CST_IPI').AsString,['00','01','49','50','51','99']) then
         Produto.Imposto.IPI.cEnq := '999'
       else
          produto.Imposto.IPI.cEnq := qItemNota.FieldByName('OPE_CENQ_IPI').AsString ;
       Produto.Imposto.IPI.CST := StrToCSTIPI(OK, qItemNota.FieldByName('CST_IPI').AsString); //IIF( NotaF.NFe.Ide.tpNF = tnEntrada , ipi49 , ipi50);
       Produto.Imposto.IPI.vBC :=  qItemNota.FieldByName('NF_IPIBASE').AsFloat;
       produto.Imposto.IPI.pIPI := qItemNota.FieldByName( 'NF_IPIALIQ').AsFloat;
       produto.Imposto.IPI.vIPI := qItemNota.FieldByName('NF_IPIVALOR').AsFloat;

    end
    else
      Produto.Imposto.ICMS.CST :=  StrToCSTICMS ( ok , qItemNota.FieldByName('STB_TRIBUTACAO').AsString);

    case StrToIntDef(CSOSNIcmsToStr(Produto.Imposto.ICMS.CSOSN),0)   of
    101: begin //Tributada pelo Simples Nacional com permissão de crédito (TRIBUTADA / COM CRED / SEM ST)
          if ( NotaF.NFe.Ide.indFinal  = cfNao ) then
          begin
           Produto.Imposto.ICMS.PCredSN :=   qItemNota.FieldByName('NF_ALIQDOSIMPLES').AsFloat;
           Produto.Imposto.ICMS.VCredICMSSN := qItemNota.FieldByName('NF_CREDICMSDOSIMPLES').AsFloat;
          end;


         end;

    500: begin
          Produto.Imposto.ICMS.vICMSSTRet := qItemNota.FieldByName('NF_ICMSSUBSTITUTO_ANT').AsFloat;
          Produto.Imposto.ICMS.vICMSSubstituto := qItemNota.FieldByName('NF_ICMSSUBSTITUTO_ANT').AsFloat;
         if Produto.Imposto.ICMS.vICMSSTRet = 0 then
          begin
            Produto.Imposto.ICMS.pST := 0 ;
            Produto.Imposto.ICMS.vBCSTRet := 0 ;

          end;
//          Produto.Imposto.ICMS.vBCFCPSTRet   := qItemNota.FieldByName('NF_ICMSBASE').AsFloat;
//          Produto.Imposto.ICMS.pFCPSTRet     := qItemNota.FieldByName('NF_PERC_FCP').asCurrency;
//          Produto.Imposto.ICMS.vFCPSTRet     := qItemNota.FieldByName('NF_VALOR_FCP').asCurrency ;
         end;
    900: begin // Outros
           Produto.Imposto.ICMS.modBC := StrTomodBC(ok,'3');
           if qItemNota.FieldByName('NF_ICMSVALOR').AsFloat > 0  then
           begin
             Produto.Imposto.ICMS.vBC := qItemNota.FieldByName('NF_ICMSBASE').AsFloat;
             Produto.Imposto.ICMS.PRedBC := qItemNota.FieldByName('NF_ICMSREDUCAOPERC').AsFloat;
             Produto.Imposto.ICMS.pICMS := qItemNota.FieldByName('NF_ICMSALIQ').AsFloat;
             Produto.Imposto.ICMS.vICMS := qItemNota.FieldByName('NF_ICMSVALOR').AsFloat; //RoundTo ( ( Produto.Imposto.ICMS.vBC * ( 1 - ( Produto.Imposto.ICMS.PRedBC/100 ) ) ) * ( Produto.Imposto.ICMS.pICMS / 100 ) , -2 ) ;

           end;

         end
    end;

  end
  else //com st
  begin

    Produto.Imposto.ICMS.CST := StrToCSTICMS ( ok , qItemNota.FieldByName('STB_TRIBUTACAO').AsString);
    if qItemNota.FieldByName('NF_MVAPERC').AsFloat > 0  then
      produto.Imposto.ICMS.ModBCST := StrTomodBCST(ok, '4')
    else
      produto.Imposto.ICMS.ModBCST := StrTomodBCST(ok, '0') ;
    produto.Imposto.ICMS.PMVAST := qItemNota.FieldByName('NF_MVAPERC').AsFloat; //margem valor agregado
    if qnota.FieldByName('EMP_CSOSN_ST').AsInteger <> 0 then //csosn cfop
       CSOSNST := qnota.FieldByName('EMP_CSOSN_ST').AsInteger // especifica por cfop
    Else
       CSOSNST := fiCSOSN_ST;
    Produto.Imposto.ICMS.CSOSN := StrToCSOSNIcms(ok,IntToStr(CSOSNST));
    case StrToIntDef(CSOSNIcmsToStr(Produto.Imposto.ICMS.CSOSN),0)  of
    201,202,203:
        begin
            Produto.Imposto.ICMS.modBC := StrTomodBC(OK,'4');
            Produto.Imposto.ICMS.vBCST := qItemNota.FieldByName('NF_SUBTRIBASE').AsFloat;
            Produto.Imposto.ICMS.PICMSST := qItemNota.FieldByName('NF_ALIQSUBTRIB').AsFloat;
            Produto.Imposto.ICMS.VICMSST := qItemNota.FieldByName('NF_VLSUBST').AsFloat;
            IF StrToIntDef(CSOSNIcmsToStr(Produto.Imposto.ICMS.CSOSN),0)=201 THEN
            begin
                Produto.Imposto.ICMS.PCredSN := qNota.FieldByName('NF_ALIQCREDSIMPLES').AsFloat;
                Produto.Imposto.ICMS.VCredICMSSN := qNota.FieldByName('NF_VLCREDSIMPLES').AsFloat;
            end;
           if qItemNota.FieldByName('NF_VALOR_FCP_st').asCurrency > 0  then
           begin
             Produto.Imposto.ICMS.vBCFCPST   := qItemNota.FieldByName('NF_SUBTRIBASE').AsFloat;
             Produto.Imposto.ICMS.pFCPST     := qItemNota.FieldByName('NF_PERC_FCP').asCurrency;
             Produto.Imposto.ICMS.vFCPST     := qItemNota.FieldByName('NF_VALOR_FCP_st').asCurrency ;
           end;
            if qItemNota.FieldByName('NF_VALOR_FCP').asCurrency>0 then
            begin
              Produto.Imposto.ICMS.vBCFCPST   := qItemNota.FieldByName('NF_ICMSBASE').AsFloat;
              Produto.Imposto.ICMS.pFCPST     := qItemNota.FieldByName('NF_PERC_FCP').asCurrency;
              Produto.Imposto.ICMS.vFCPST     := qItemNota.FieldByName('NF_VALOR_FCP').asCurrency ;
            end;
        end;
    500: begin
          Produto.Imposto.ICMS.vICMSSTRet := qItemNota.FieldByName('NF_ICMSSUBSTITUTO_ANT').AsFloat;
          Produto.Imposto.ICMS.vICMSSubstituto := qItemNota.FieldByName('NF_ICMSSUBSTITUTO_ANT').AsFloat;
          if Produto.Imposto.ICMS.vICMSSTRet = 0 then
          begin
            Produto.Imposto.ICMS.pST := 0 ;
            Produto.Imposto.ICMS.vBCSTRet := 0 ;

          end;


         end;
    900: begin
            if qItemNota.FieldByName('NF_MVAPERC').AsFloat > 0  then
              produto.Imposto.ICMS.ModBCST := StrTomodBCST(ok, '4')
            else
              produto.Imposto.ICMS.ModBCST := StrTomodBCST(ok, '0');
            Produto.Imposto.ICMS.PMVAST := qItemNota.FieldByName('NF_MVAPERC').AsFloat; //margem valor agregado
            Produto.Imposto.ICMS.vBCST := qItemNota.FieldByName('NF_SUBTRIBASE').AsFloat;
            Produto.Imposto.ICMS.PICMSST :=  qItemNota.FieldByName('NF_ALIQSUBTRIB').AsFloat;
            Produto.Imposto.ICMS.VICMSST := qItemNota.FieldByName('NF_VLSUBST').AsFloat;
            Produto.Imposto.ICMS.PCredSN :=  qNota.FieldByName('NF_ALIQCREDSIMPLES').AsFloat;
            Produto.Imposto.ICMS.VCredICMSSN := qNota.FieldByName('NF_VLCREDSIMPLES').AsFloat;
         end
    end;


  end;
end;

procedure TfrmProcessaNFe.TributacaoIPI;
begin
{CST IPI
00	Entrada com Recuperação de Crédito
01	Entrada Tributada com Alíquota Zero
02	Entrada Isenta
03	Entrada Não Tributada
04	Entrada Imune
05	Entrada com Suspensão
49	Outras Entradas
50	Saída Tributada
51	Saída Tributável com Alíquota Zero
52	Saída Isenta
53	Saída Não Tributada
54	Saída Imune
55	Saída com Suspensão
99	Outras Saídas}
// Se tributa IPI o CST IPI -> Entrada = 49 'Outras Entradas e Saída = 50 'Saida Tributada
  if (qItemNota.FieldByName('NF_IPIVALOR').AsFloat > 0) or (qnota.FieldByName('CLI_UF_ENTR').AsString = 'EX') or
  (MatchStr(qItemNota.FieldByName('CST_IPI').AsString,['01','02','03','04','05','51','52','53','54','55','99'])) then
  begin
    Produto.Imposto.IPI.qSelo := 0;
    if MatchStr(qItemNota.FieldByName('CST_IPI').AsString,['00','01','49','50','51','99']) then
       Produto.Imposto.IPI.cEnq := '999'
    else
       produto.Imposto.IPI.cEnq := qItemNota.FieldByName('OPE_CENQ_IPI').AsString ;
    Produto.Imposto.IPI.cst :=  StrToCSTIPI(OK,qItemNota.FieldByName('CST_IPI').AsString);

       //DÚVIDA
//     if (TNotaFiscalItem(NotaFiscal.ItensNotaFiscal[I]).ValorIPIPorProduto) then
//     begin
//        Produto.Imposto.IPI.qUnid := qItemNota.FieldByName('NF_QTDE').AsFloat ;
//       Produto.Imposto.IPI.vUnid := qItemNota.FieldByName('NF_IPIVALOR').AsFloat/ qItemNota.FieldByName('NF_QTDE').AsFloat;
//     end
//     else
     if qItemNota.FieldByName('CST_IPI').AsString <> '99' then
     begin
        Produto.Imposto.IPI.vBC := qItemNota.FieldByName('NF_IPIBASE').AsFloat;
        Produto.Imposto.IPI.pIPI := qItemNota.FieldByName('NF_IPIALIQ').AsFloat;
        Produto.Imposto.IPI.vIPI := qItemNota.FieldByName('NF_IPIVALOR').AsFloat;
     end;


  end;



end;

function TfrmProcessaNFe.ValidarRegrasdeNegociosAdjuntor(out Erros: String): Boolean;

  procedure AdicionaErro(const Erro: String);
  begin
    Erros := Erros + Erro + sLineBreak;
  end;
begin

 if ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.CEP = 0 then
   AdicionaErro( 'CEP Emitente inválido');
 if acbrnfe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.CEP = 0 then
   AdicionaErro( 'CEP Destinatário inválido');
// if (ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.idDest = doExterior)
//   and ((ACBrNFe1.NotasFiscais.Items[0].NFe.exporta.UFSaidaPais= '') OR (ACBrNFe1.NotasFiscais.Items[0].NFe.exporta.xLocExporta = '')) then
//    AdicionaErro( '356 - Informar o local de saída/embarque do Pais somente no caso da exportação');
  Result := EstaVazio(Erros);
end;

end.

