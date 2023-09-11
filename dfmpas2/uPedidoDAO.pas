unit uPedidoDAO;

interface

uses
   SysUtils, Variants, uPedido, Data.DBXCommon, Forms, Dialogs, Datasnap.DBClient;

function GravarTratamentoTermicoItemPedido (const sPedidoCodigo: Integer; const tipoPeca, material, durezaSuperficial, DurezaNucleo, Profundidade, TamanhoGrao, EHT, Desenho : string;
         const PesoKg: double = 0.0; const Qtde: double = 0.0  ) : boolean;
function GravarPedidoResumido(  sPedidoCodigo, sTipoPedidoCodigo,   sClienteCodigo : string  ; dDataEntrada, dDataSaida:TDateTime ):boolean;
function GravarPedido(sIE, sCliConsFinal, sCliConsuProprio,
                      sPedidoOrdemServico,
                      sPedidoCodigo,
                      sTipoPedidoCodigo,
                      sClienteCodigo,
                      sVendedorCodigo,
                      sVendedorInternoCodigo,
                      sPrazoCodigo,
                      sTransportadoraCodigo,
                      sCFOPCodigo,
                      sProjetoObraCodigo,
                      sTipoFrete,//A pagar = 'F' Pago = 'C'
                      sNumeroPedidoCliente,
                      sContatoCliente,
                      sSituacao,//F = Faturar /P = Parcial /D = Faturado
                      sOrsCliente,
                      sOrsFone,
                      sOrsFax,
                      sOrsEmail,
                      sOrsDiasEntrega,
                      sOrsDiasValidade,
                      sOrsEstado,
                      sFormaPagamento
                      :String;
                      bAplicaDescontoNotaFiscal
                      :Boolean;
                      dDataEntrada,
                      dDataSaida
                      :TDateTime;
                      rComissao1,
                      rComissao2,
                      rComissao3,
                      rComissao4,
                      rDescontoValor,
                      rDescontoPercentual1,
                      rDescontoPercentual2,
                      rValorFrete,
                      rValorDespesas,
                      rValorSeguro,
                      rValorDespesasImportacao,
                      rTotalIPI,
                      rTotalST,
                      rTotalValorLiquido,
                      rValorTotalBruto
                      :Currency;
                      wsObservacao,
                      wsObservacaoProducao,
                      wsObservacaoNota,
                      sExpUF,
                      sExpLocal,
                      sExpRecinto:WideString;
                      sIdPedido: integer;
                      sSitExp: String;
                      sEnderEntrega:integer;sPlaca:string;rValorFreteCIF : Currency = 0.0; sNFCe_CPF: string = ''; obsPPAC : string = ''; Origem : integer =0;
                      scbOrsCliConsfinal : integer =-1 ;srgOrsCliConsuProprio :integer = -1; scbOrsCliRegimeTributario: integer =-1):Boolean;
procedure CalculoEstoquePendente(const afetaestoque: boolean; const stipo, ProdutoOriginal, ProdutoSelecionado: string; var rQtdeAnterior, rQtdeNova, qPendenteAnterior,
          qPendenteNova, qpreciso: double;  const rSaldo: double; const dQtdeKit: double; var dQtdeEstoque: double; var stipoKardesES :string);
function ItemKitCompleto ( Qtde, Pendencia : double ;  dQtdeKit: double ) : double;
function KitsCompletos (const AtualizaEstoque : boolean ; const registro : integer): double;
function GravarPedidoItemResumido (sPedidoCodigo , sProdutoCodigo, sProdutoReferencia,sProdutoDescricao : string; rQuantidade, rQuantidadeConvertida: real;iCodigoUsuario: Integer) : integer;
function GravarPedidoItem(sID_DIRETIVAS:Integer;
                          prdUnd: string;
                          sPedidoCodigo, sProdutoCodigo, sProdutoReferencia, sProdutoCodigoOriginal,
                          sProdutoDescricao, sAlmoxarifadoCodigo,
                          sProdutoDescricaoComplemento, sPedidoB2b, sTabelaPreco,
                          sUsouVerba: String; bAtualizaEstoque, bProdutoAgregado :Boolean;
                          rQuantidade, rQuantidadeConvertida, rQuantidadeFaturada, rPreco,
                          rPrecoBruto, rCusto, rMargemProduto, rAcrescimo, rDesconto1,
                          rDesconto2, rComissaoItem, rAliquotaIPI, rValorST, rAliquotaICMS,
                          rValorICMS, rValorVerba :Real;
                          iRegistroItem, iCodigoUsuario: Integer; iCodigoLote : Variant ; iCCdigoGrade, iItemPedidoB2b,
                          iCodigoRegistroVinculado, iDiretiva:Integer;
                          p_PRF_PRAZO_ENTREGA: string; Prazo: string = ''; PesoKg: double = 0.0;
                          qPendente: real = 0.0; bProdutoSemValor :Boolean = False  ):Integer;
function PercentualComissao (const prd_refer : string; prd_codigo: string; const cli_codigo: string; const preco: double):currency;
function GravarVendaPerdida(sProdutoCodigo,
                            sProdutoReferencia,
                            sVendedorCodigo,
                            sClienteCodigo,
                            sPedidoCodigo,
                            sUsuarioCodido
                            :String;
                            rQuantidade,
                            rPreco
                            :Currency
                            ):Boolean;


procedure AtualizarSituacaoExpedicao (const sPedidoCodigo , sitExp , emp_codigo : string);

function ExcluirPedidoItem(iRegistro:integer):Boolean;

function ExcluirPedidoCompleto(iRegistro:integer):Boolean;

function ExistePedido(sPedido:String):Boolean;

procedure CancelaPedido(sPedido, idMotivo ,sObservacao:String);

procedure ReordenarItens(SqlCdsPedidoItem: TClientDataSet);

var agrupar: boolean;

implementation

uses
  DataCad, RWFunc, Men0001, DB, uteis, iniciodb, uPedidoItem, uPedidoTipo;

function GravarTratamentoTermicoItemPedido (const sPedidoCodigo: Integer; const tipoPeca, material, durezaSuperficial, DurezaNucleo, Profundidade, TamanhoGrao, EHT, Desenho : string;
         const PesoKg: double = 0.0; const Qtde: double = 0.0 ) : boolean;
var sQuery:WideString;
begin
  //Verifica se o Pedido ja esta na base de dados caso esteja será uma alteração
  sQuery := 'UPDATE PED_IT01 SET '+
            '  PED_TIPOPECA_TERM  =  '  + QuotedStr(tipoPeca) +
            '  ,PED_MATERIAL_TERM   = '+ QuotedStr( material) +
            '  ,PED_DUREZASUPERFICIAL_TERM = '+QuotedStr(durezaSuperficial)+
            '  ,PED_DUREZANUCLEO_TERM  = '+QuotedStr(DurezaNucleo)  +
            '  ,PED_PROFUNDIDADE_TERM = '+QuotedStr(Profundidade) +
            '  ,PED_TAMANHOGRAO_TERM = ' + QuotedStr(TamanhoGrao) +
            '  ,PED_EHT_TERM = '+ QuotedStr(EHT) +
            '  ,PED_DESENHO_TERM = '+ QuotedStr(Desenho) +
            '  ,PRF_PESOKG = '+FloatToSQL(PesoKg)    +
            '  ,PRF_QTDE_ENV_PRODUCAO = '+ FloatToSQL(Qtde) +
            ' WHERE  prf_registro = '+QuotedStr(IntToStr(sPedidoCodigo)) ;

   try
     dataCadastros.sqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.text :=sQuery;
     dataCadastros.sqlUpdate.Execsql;
     dataCadastros.sqlUpdate.Close;
     Result := True;
   except on E: Exception do
    Result := False;
   end;



end;


function GravarPedidoResumido(  sPedidoCodigo, sTipoPedidoCodigo,   sClienteCodigo : string  ; dDataEntrada, dDataSaida:TDateTime ):boolean;
var vIdPedido : integer;
    ie, cliConsFinal, cliConsuProprio, ieT: string;
begin
 vIdPedido := DBInicio.GetNextSequence('gen_id_pedido');
 cliConsFinal := '';
 cliConsuProprio := '';
 if frmPedido = nil then
  ie := ''
 else
 begin
  ieT := DBInicio.BuscaUmDadoSqlAsString('SELECT emi.EMI_CODIGO FROM EMP_MULTIPLAS_IE WHERE emi.EMI_CODIGO =  ' + VarToStr(frmPedido.dblcInscricaoEstadual.KeyValue));
  ie := iif(frmPedido.dblcInscricaoEstadual.KeyValue = null, '',  ieT);
  cliConsFinal := frmPedido.cbCliConsFinal.Values[frmPedido.cbCliConsFinal.ItemIndex];
  cliConsuProprio := frmPedido.cbFinalidade.Values[frmPedido.cbFinalidade.ItemIndex];
 end;
 result := GravarPedido('',
                ie, cliConsFinal, cliConsuProprio,
                sPedidoCodigo,sTipoPedidoCodigo,sClienteCodigo,EmptyStr,EmptyStr,EmptyStr,EmptyStr,EmptyStr,EmptyStr,
                EmptyStr,EmptyStr, EmptyStr,'I' ,EmptyStr ,EmptyStr,EmptyStr,EmptyStr,EmptyStr,EmptyStr,EmptyStr, EmptyStr, false,
                dDataEntrada, dDataSaida,  0,0,0,0,0,0,0 ,0, 0,0,0,0,0,0,0, EmptyStr ,EmptyStr,EmptyStr,EmptyStr,EmptyStr, EmptyStr, vIdPedido,
                EmptyStr, 0, EmptyStr);
end;


function GravarPedido(sIE,
                      sCliConsFinal,
                      sCliConsuProprio,
                      sPedidoOrdemServico,
                      sPedidoCodigo,
                      sTipoPedidoCodigo,
                      sClienteCodigo,
                      sVendedorCodigo,
                      sVendedorInternoCodigo,
                      sPrazoCodigo,
                      sTransportadoraCodigo,
                      sCFOPCodigo,
                      sProjetoObraCodigo,
                      sTipoFrete,//A pagar = 'F' Pago = 'C'
                      sNumeroPedidoCliente,
                      sContatoCliente,
                      sSituacao,//F = Faturar /P = Parcial /T = Faturado // A = AGRUPADO
                      sOrsCliente,
                      sOrsFone,
                      sOrsFax,
                      sOrsEmail,
                      sOrsDiasEntrega,
                      sOrsDiasValidade,
                      sOrsEstado,
                      sFormaPagamento
                      :String;
                      bAplicaDescontoNotaFiscal
                      :Boolean;
                      dDataEntrada,
                      dDataSaida
                      :TDateTime;
                      rComissao1,
                      rComissao2,
                      rComissao3,
                      rComissao4, {comissaão vendedor interno}
                      rDescontoValor,
                      rDescontoPercentual1,
                      rDescontoPercentual2,
                      rValorFrete,
                      rValorDespesas,
                      rValorSeguro,
                      rValorDespesasImportacao,
                      rTotalIPI,
                      rTotalST,
                      rTotalValorLiquido,
                      rValorTotalBruto
                      :Currency;
                      wsObservacao,
                      wsObservacaoProducao,
                      wsObservacaoNota,
                      sExpUF,
                      sExpLocal,
                      sExpRecinto:WideString;
                      sIdPedido: integer;
                      sSitExp: String;
                      sEnderEntrega:integer;sPlaca:string; rValorFreteCIF : Currency = 0.0; sNFCe_CPF: string = ''; obsPPAC : string = ''; Origem : integer = 0;
                      scbOrsCliConsfinal: integer =-1; srgOrsCliConsuProprio: integer =-1; scbOrsCliRegimeTributario: integer =-1):Boolean;
var
   sQuery:WideString;
   bPedidoExiste:Boolean;
   orcamento : Boolean;
   trf_reg : Integer;
   assunto, prazo, vendedor, vendedor2 : string;
   Orc_cliente, orc_email, orc_fone, orc_endereco , orc_nomeEmpresa : string; // crm agenda de tarefas de orçamentos
   prazoDias : TDateTime;

begin
   if sIE = '' then
    sIE := '0';
//    sIE := DBInicio.Empresa.INSC_EST;
   sCFOPCodigo := PreenchezeroEsquerda(sCFOPCodigo,3);

   sFormaPagamento := IIF(sFormaPagamento = '','0',sFormaPagamento);
   if (sSituacao <> 'I') then
   begin
     dataCadastros.sqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.text :='select OPV_ORCAMENTO from OPV0000 where OPV_CODIGO = ' + sTipoPedidoCodigo ;
     dataCadastros.sqlUpdate.Open;
     orcamento :=  dataCadastros.sqlUpdate.FieldByName('OPV_ORCAMENTO').AsString = 'S';
     //Verifica se o Pedido ja esta na base de dados caso esteja será uma alteração
     dataCadastros.sqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.text :=SqlDef('PEDIDOS','SELECT COUNT(T1.ped_registro) FROM ped0000 T1 ','WHERE T1.ped_codigo = '+QuotedStr(sPedidoCodigo),'','T1.');
     dataCadastros.sqlUpdate.Open;
     bPedidoExiste := False;
     if (not dataCadastros.sqlUpdate.IsEmpty) then
        begin
           if (dataCadastros.sqlUpdate.FieldByName('COUNT').AsInteger > 0) then
              bPedidoExiste := True;
        end;
     dataCadastros.sqlUpdate.Close;
   end;
   if (sSituacao <> 'I') AND (bPedidoExiste) then //Update
   begin
        {atualizar estatus expedicao , no histórico também}
         AtualizarSituacaoExpedicao(sPedidoCodigo,sSitExp,dbInicio.Empresa.EMP_CODIGO );
         sQuery := 'UPDATE ped0000 SET '+
                   // ' EMI_IE = '+QuotedStr(sIE)+','+
                   ' EMI_CODIGO = '+sIE+','+
                   ' CLI_CONSFINAL = ' + QuotedStr(sCliConsFinal) + ',' +
                   ' CLI_CONSU_PROPRIO = ' + QuotedStr(sCliConsuProprio) + ',' +
                   ' PED_OS = '+QuotedStr(sPedidoOrdemServico)+','+
                   ' FPG_REGISTRO = '+QuotedStr(sFormaPagamento)+','+
                   ' PED_CODIGO = '+QuotedStr(sPedidoCodigo)+','+
                   ' CLI_CODIGO = '+QuotedStr(sClienteCodigo)+','+
                   ' REP_CODIGO = '+QuotedStr(sVendedorCodigo)+','+
                   ' REP_CODIGO_INTERNO = '+QuotedStr(sVendedorInternoCodigo)+','+
                   ' OPE_CODIGO = '+QuotedStr(sCFOPCodigo)+','+
                   ' PCX_CODIGO = '+QuotedStr(sProjetoObraCodigo)+','+
                   ' PED_ORS_CLIENTE = '+QuotedStr(sOrsCliente)+','+
                   ' PED_ORS_DIAS_ENTREGA = '+RetornaNull(sOrsDiasEntrega)+','+
                   ' PED_ORS_DIAS_VALIDADE = '+RetornaNull(sOrsDiasValidade)+','+
                   ' PED_ORS_FONE = '+QuotedStr(sOrsFone)+','+
                   ' PED_ORS_FAX = '+QuotedStr(sOrsFax)+','+
                   ' PED_ORS_EMAIL = '+QuotedStr(sOrsEmail)+','+
                   ' PED_ORS_ESTADO = '+QuotedStr(sOrsEstado)+','+
                   ' PED_ORS_CLI_CONSFINAL = '+IntToStr(scbOrsCliConsfinal)+','+
                   ' PED_ORS_CLI_CONSU_PROPRIO = '+IntToStr(srgOrsCliConsuProprio)+','+
                   ' PED_ORS_CLI_REGIME_TRIBUTARIO = '+IntToStr(scbOrsCliRegimeTributario)+','+
                   ' PED_DTENTRADA = '+QuotedStr(DataAmericana(DateToStr(dDataEntrada)))+','+
                   ' PED_DTSAIDA = '+DateTimeToSQL(dDataSaida)+','+
                   ' PED_COMIS1 = '+QuotedStr(ValorAmericano(FormatFloat('###,###,###,##0.0000',rComissao1)))+','+
                   ' PED_COMIS2 = '+QuotedStr(ValorAmericano(FormatFloat('###,###,###,##0.0000',rComissao2)))+','+
                   ' PED_COMIS3 = '+QuotedStr(ValorAmericano(FormatFloat('###,###,###,##0.0000',rComissao3)))+','+
                   ' PED_COMISSAO_VEN = '+QuotedStr(ValorAmericano(FormatFloat('###,###,###,##0.0000',rComissao4)))+','+
                   ' PCL_CODIGO = '+QuotedStr(sPrazoCodigo)+','+
                   ' PED_DESCTOVL = '+QuotedStr(ValorAmericano(FloatToStr(rDescontoValor)))+','+
                   ' PED_DESCTOPC1 = '+QuotedStr(ValorAmericano(FloatToStr(rDescontoPercentual1)))+','+
                   ' PED_DESCTOPC2 = '+QuotedStr(ValorAmericano(FloatToStr(rDescontoPercentual2)))+','+
                   ' TRP_CODIGO = '+QuotedStr(sTransportadoraCodigo)+','+
                   ' PED_FRETE = '+QuotedStr(sTipoFrete)+','+
                   ' PED_VLTOTAL_LIQ = '+QuotedStr(ValorAmericano(FloatToStr(rTotalValorLiquido)))+','+
                   ' EMP_CODIGO = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+','+
                   ' OPV_CODIGO = '+QuotedStr(sTipoPedidoCodigo)+','+
                   ' PED_DESCTONF = '+QuotedStr(IIF(bAplicaDescontoNotaFiscal,'S','N'))+','+
                   ' PED_SITUACAO = '+QuotedStr(sSituacao)+','+
                   ' PED_VLTOTAL_BRUTO = '+QuotedStr(ValorAmericano(FloatToStr(rValorTotalBruto)))+','+
                   ' PED_VLTOTAL_IPI = '+QuotedStr(ValorAmericano(FloatToStr(rTotalIPI)))+','+
                   ' PED_VALOR_ST = '+QuotedStr(ValorAmericano(FloatToStr(rTotalST)))+','+
                   ' PED_VLFRETE = '+QuotedStr(ValorAmericano(FloatToStr(rValorFrete)))+','+
                   ' PED_DESP_ACES = '+QuotedStr(ValorAmericano(FloatToStr(rValorDespesas)))+','+
                   ' PED_VLSEGURO = '+QuotedStr(ValorAmericano(FloatToStr(rValorSeguro)))+','+
                   ' PED_DESP_IMPOR = '+QuotedStr(ValorAmericano(FloatToStr(rValorDespesasImportacao)))+','+
                   ' PED_NUMERO_PED_CLIENTE = '+QuotedStr(sNumeroPedidoCliente)+','+
                   ' PED_CONTATO_CLIENTE = '+QuotedStr(sContatoCliente)+','+
                   ' PED_OBSERVACAO = '+QuotedStr(wsObservacao)+','+
                   ' PED_OBS_PRODUCAO = '+QuotedStr(wsObservacaoProducao)+','+

                   ' PED_EXP_UF = '+QuotedStr(sExpUF)+','+
                   ' PED_EXP_LOCAL_EXP = '+QuotedStr(sExpLocal)+','+
                   ' PED_EXP_LOCAL_RECINTO = '+QuotedStr(sExpRecinto)+','+
                   ' SitExp = '+qStr( sSitExp )+', '+
                   ' ENDERECO_ENTREGA = '+IntToStr( sEnderEntrega )+', '+
                   ' PED_OBSERVACAO_NOTA = '+QuotedStr(wsObservacaoNota)+', '+
                   ' PED_PLACA = '+QuotedStr(sPlaca)+  ','+
                   ' PED_VALOR_CIF = '+QuotedStr(ValorAmericano(FloatToStr(rValorFreteCIF))) + ','+
                   ' CLI_CPF = ' + QuotedStr(sNFCe_CPF)+     ','+
                   ' PED_SubcabecalhoPPAC = '+ QuotedStr(obsPPAC)+','+
                   ' CORI_CODIGO = '+IIF(Origem=0,'NULL',IntToStr(Origem)) +
                   iif(orcamento,', PED_FOI_ORCAMENTO = '+QuotedStr('S') ,'')+
                   ' WHERE PED_CODIGO = '+QuotedStr(sPedidoCodigo)+ ' and EMP_CODIGO = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO)
                   ;



         dataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :=sQuery;
         dataCadastros.sqlUpdate.Execsql;
         dataCadastros.sqlUpdate.Close;

         Result := True;



   end
   else  //Insert
   begin
         sQuery := 'INSERT INTO ped0000 '+
                   '('+
                   'ID_PEDIDO,'+
                   'EMI_CODIGO, ' +
                   'CLI_CONSFINAL, ' +
                   'CLI_CONSU_PROPRIO, ' +
                   'PED_OS,'+
                   'FPG_REGISTRO,'+
                   'PED_CODIGO,'+
                   'CLI_CODIGO,'+
                   'REP_CODIGO,'+
                   'REP_CODIGO_INTERNO,'+
                   'OPE_CODIGO,'+
                   'PCX_CODIGO,'+
                   'PED_DTENTRADA,'+
                   'PED_DTSAIDA,'+
                   'PED_ORS_CLIENTE,'+
                   'PED_ORS_DIAS_ENTREGA,'+
                   'PED_ORS_DIAS_VALIDADE,'+
                   'PED_ORS_FONE,'+
                   'PED_ORS_FAX,'+
                   'PED_ORS_EMAIL,'+
                   'PED_ORS_ESTADO,'+
                   'PED_COMIS1,'+
                   'PED_COMIS2,'+
                   'PED_COMIS3,'+
                   'PED_COMISSAO_VEN,'+
                   'PCL_CODIGO,'+
                   'PED_DESCTOVL,'+
                   'PED_DESCTOPC1,'+
                   'PED_DESCTOPC2,'+
                   'TRP_CODIGO,'+
                   'PED_FRETE,'+
                   'PED_VLTOTAL_LIQ,'+
                   'EMP_CODIGO,'+
                   'OPV_CODIGO,'+
                   'PED_DESCTONF,'+
                   'PED_SITUACAO,'+
                   'PED_VLTOTAL_BRUTO,'+
                   'PED_VLTOTAL_IPI,'+
                   'PED_VALOR_ST,'+
                   'PED_VLFRETE,'+
                   'PED_DESP_ACES,'+
                   'PED_VLSEGURO,'+
                   'PED_DESP_IMPOR,'+
                   'PED_NUMERO_PED_CLIENTE,'+
                   'PED_CONTATO_CLIENTE,'+
                   'PED_OBSERVACAO,'+
                   'PED_OBS_PRODUCAO,'+
                   'PED_EXP_UF,'+
                   'PED_EXP_LOCAL_EXP,'+
                   'PED_EXP_LOCAL_RECINTO,'+
                   'ENDERECO_ENTREGA,'+
                   'PED_OBSERVACAO_NOTA,'+
                   'PED_PLACA,'+
                   'SitExp,'+
                   'PED_VALOR_CIF ,  '+
                   'CLI_CPF,  '+
                   'Ped_faturar_liberado, PED_SubcabecalhoPPAC'+  IIF(Origem=0,'',', CORI_CODIGO')+  ',PED_FOI_ORCAMENTO, '+
                   'PED_ORS_CLI_CONSFINAL, PED_ORS_CLI_CONSU_PROPRIO, PED_ORS_CLI_REGIME_TRIBUTARIO ' +
                   ')' +
                   'VALUES'+
                   '('+
                   IntToStr(sIdPedido)+','+
                   sIE+','+
                   QuotedStr(sCliConsFinal) + ',' +
                   QuotedStr(sCliConsuProprio) + ',' +
                   QuotedStr(sPedidoOrdemServico)+','+
                   QuotedStr(sFormaPagamento)+','+
                   QuotedStr(sPedidoCodigo)+','+
                   QuotedStr(sClienteCodigo)+','+
                   QuotedStr(sVendedorCodigo)+','+
                   QuotedStr(sVendedorInternoCodigo)+','+
                   QuotedStr(sCFOPCodigo)+','+
                   QuotedStr(sProjetoObraCodigo)+','+
                   QuotedStr(DataAmericana(DateToStr(dDataEntrada)))+','+
                   DateTimeToSQL(dDataSaida)+','+
                   QuotedStr(sOrsCliente)+','+
                   RetornaNull(sOrsDiasEntrega)+','+
                   RetornaNull(sOrsDiasValidade)+','+
                   QuotedStr(sOrsFone)+','+
                   QuotedStr(sOrsFax)+','+
                   QuotedStr(sOrsEmail)+','+
                   QuotedStr(sOrsEstado)+','+
                   QuotedStr(ValorAmericano(FormatFloat('###,###,###,##0.0000',rComissao1)))+','+
                   QuotedStr(ValorAmericano(FormatFloat('###,###,###,##0.0000',rComissao2)))+','+
                   QuotedStr(ValorAmericano(FormatFloat('###,###,###,##0.0000',rComissao3)))+','+
                   QuotedStr(ValorAmericano(FormatFloat('###,###,###,##0.0000',rComissao4)))+','+
                   QuotedStr(sPrazoCodigo)+','+
                   QuotedStr(ValorAmericano(FloatToStr(rDescontoValor)))+','+
                   QuotedStr(ValorAmericano(FloatToStr(rDescontoPercentual1)))+','+
                   QuotedStr(ValorAmericano(FloatToStr(rDescontoPercentual2)))+','+
                   QuotedStr(sTransportadoraCodigo)+','+
                   QuotedStr(sTipoFrete)+','+
                   QuotedStr(ValorAmericano(FloatToStr(rTotalValorLiquido)))+','+
                   QuotedStr(dbInicio.Empresa.EMP_CODIGO)+','+
                   QuotedStr(sTipoPedidoCodigo)+','+
                   QuotedStr(IIF(bAplicaDescontoNotaFiscal,'S','N'))+','+
                   QuotedStr(sSituacao)+','+
                   QuotedStr(ValorAmericano(FloatToStr(rValorTotalBruto)))+','+
                   QuotedStr(ValorAmericano(FloatToStr(rTotalIPI)))+','+
                   QuotedStr(ValorAmericano(FloatToStr(rTotalST)))+','+
                   QuotedStr(ValorAmericano(FloatToStr(rValorFrete)))+','+
                   QuotedStr(ValorAmericano(FloatToStr(rValorDespesas)))+','+
                   QuotedStr(ValorAmericano(FloatToStr(rValorSeguro)))+','+
                   QuotedStr(ValorAmericano(FloatToStr(rValorDespesasImportacao)))+','+
                   QuotedStr(sNumeroPedidoCliente)+','+
                   QuotedStr(sContatoCliente)+','+
                   QuotedStr(wsObservacao)+','+
                   QuotedStr(wsObservacaoProducao)+','+
                   QuotedStr(sExpUF)+','+
                   QuotedStr(sExpLocal)+','+
                   QuotedStr(sExpRecinto)+','+
                   IntToStr(sEnderEntrega)+','+
                   QuotedStr(wsObservacaoNota)+','+
                   QuotedStr(sPlaca)+','+
                   QuotedStr( sSitExp )+  ','+
                   QuotedStr(ValorAmericano(FloatToStr(rValorFreteCIF))) +    ','+
                   QuotedStr(sNFCe_CPF)+','+
                   QuotedStr(iif(DBInicio.Empresa.wTipoLiberacaoFaturamento = 'A','S','N' ))+  ','+
                   QuotedStr(obsPPAC)+
                   IIF(Origem=0,'',','+ IntToStr(Origem)) +','+
                   IIF(orcamento, QuotedStr( 'S') ,QuotedStr('N'))+','+
                   IntToStr(scbOrsCliConsfinal)+','+
                   IntToStr(srgOrsCliConsuProprio)+ ',' +
                   IntToStr(scbOrsCliRegimeTributario)+
                   ')';
         dataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :=sQuery;
         dataCadastros.sqlUpdate.Execsql;
         dataCadastros.sqlUpdate.Close;

         Result := True;
   end;
   if  (sSituacao <> 'I') and orcamento then // gravar o follow up
   begin
     dataCadastros.sqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.text :=SqlDef('PEDIDOS','SELECT COUNT (1) as CONTA FROM PED_IT01 it ','WHERE it.ped_codigo = '+QuotedStr(sPedidoCodigo),'','it.');
     dataCadastros.sqlUpdate.Open;
     IF dataCadastros.sqlUpdate.FieldByName('CONTA').AsInteger = 0 then
        exit;


     dataCadastros.sqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.text :=SqlDef('PEDIDOS','SELECT TRF_REGISTRO FROM TAREFAS_CRM T1 ','WHERE T1.ped_codigo = '+QuotedStr(sPedidoCodigo),'','T1.');
     dataCadastros.sqlUpdate.Open;
      trf_reg := dataCadastros.sqlUpdate.FieldByName('TRF_REGISTRO').AsInteger;
     bPedidoExiste := (dataCadastros.sqlUpdate.FieldByName('TRF_REGISTRO').AsInteger > 0);



     prazoDias := Date+ 6 ;
     dataCadastros.SqlUpdate.Close;
     dataCadastros.SqlUpdate.SQL.Text := 'SELECT pcl_nome FROM PCL0000 where pcl_codigo = '+QuotedStr(sPrazoCodigo);
     DataCadastros.SqlUpdate.Open;
     prazo :=  dataCadastros.SqlUpdate.FieldByName('PCL_NOME').AsString;

     DataCadastros.SqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.Text := 'SELECT * FROM REP0000 WHERE rep_codigo = '+QuotedStr(sVendedorCodigo);
     DataCadastros.SqlUpdate.Open;
     vendedor := DataCadastros.SqlUpdate.FieldByName('rep_nome').AsString;

     DataCadastros.SqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.Text := 'SELECT * FROM REP0000 WHERE rep_codigo = '+QuotedStr(sVendedorInternoCodigo);
     DataCadastros.SqlUpdate.Open;
     vendedor2 := DataCadastros.SqlUpdate.FieldByName('rep_nome').AsString;
       //tem cliente cadastrado
      if sClienteCodigo <> '' then
      Begin
        DataCadastros.SqlUpdate.Close;
        DataCadastros.SqlUpdate.SQL.Text := SQLDEF('CLIENTES', 'select CLI_RAZAO, cli_contato, CLI_EMAIL, CLI_FONE, CLI_ENDERE, CLI_CIDADE, CLI_UF from cli0000',
                                                   ' where cli_codigo  = ' + QuotedStr( sClienteCodigo),'','');
        DataCadastros.SqlUpdate.open;
        orc_email := DataCadastros.SqlUpdate.FieldByName('cli_email').AsString;
        orc_fone := DataCadastros.SqlUpdate.FieldByName('CLI_FONE').AsString;
        orc_endereco := DataCadastros.SqlUpdate.FieldByName('CLI_ENDERE').AsString  + ','+  DataCadastros.SqlUpdate.FieldByName('CLI_CIDADE').AsString  +'-' + DataCadastros.SqlUpdate.FieldByName('CLI_UF').AsString ;
        orc_nomeEmpresa := DataCadastros.SqlUpdate.FieldByName('cli_razao').AsString;
        Orc_cliente :=  copy(DataCadastros.SqlUpdate.FieldByName('cli_contato').AsString,1,60);
      end
      else
      begin
        orc_email := sOrsEmail;
        orc_fone := sOrsFone;
        orc_endereco := '';
        orc_nomeEmpresa :=  copy(sOrsCliente,1,60);
        Orc_cliente := sContatoCliente;

      end;


     if not bPedidoExiste then
     begin
       assunto := 'Aberto ORÇAMENTO número '+ sPedidoCodigo +
       ' no dia '+ DateToStr(dDataEntrada)+ ' - Valor R$ '+ FormatFloat('###,###,###,##0.00', rTotalValorLiquido) + '- prazo '+ prazo+
         ',vendedor '+ vendedor +' e ' + vendedor2 +', Aguardando cliente confirmar  fechamento da Venda';

        trf_reg :=   dbInicio.GetNextSequence ('GEN_TAREFAS') ;
         sQuery := 'INSERT INTO TAREFAS_CRM (TRF_REGISTRO, EMP_CODIGO, REP_CODIGO, TRF_PRAZO, TRF_ASSUNTO, TRF_FINALIZADA, TRF_EXCLUIDO, TRF_NIVEL, CLI_CODIGO, '+
                  ' TRF_CONTATO, TRF_EMAILCONTATO, TRF_CONTATOFONE, TRF_ENDERECO, TRF_ACAO, TRF_ORIGEM, TRF_DATA_REGISTRO,  TRF_DATAABERTURA, PED_CODIGO, TRF_NOMEEMPRESA)   '+
                  ' VALUES(' +  IntToStr(trf_reg)  +','+
                    QuotedStr(DBINICIO.Empresa.EMP_CODIGO) + ',' +
                    QuotedStr(sVendedorCodigo) + ','+
                    DateToSQL(prazoDias) + ',' +
                    QuotedStr(assunto ) + ','+
                    QuotedStr('N') + ',' +
                    QuotedStr('N') + ',' +
                    iif(sClienteCodigo <> '', '2','0') +','+ // sem cliente cadastrado vem como prospect
                    QuotedStr(sClienteCodigo) +','+
                    QuotedStr(Orc_cliente) + ','+
                    QuotedStr(orc_email) + ','+
                    QuotedStr(orc_fone) + ',' +
                    QuotedStr(orc_endereco) + ',' +
                    IntToStr(8) +','+  //TRF_ACAO
                    iif(sClienteCodigo <> '','0', IntToStr(5) )+','+//já é cliente então origem cliente se não é vem como televendas
                    DateTimeToSQL(now) +','+
                    DateTimeToSQL(now) + ','+
                    QuotedStr(sPedidoCodigo)+','+
                    QuotedStr(copy(orc_nomeEmpresa,1,60))
                     +')';

     end
     else
     begin

       assunto := 'Alterado o ORÇAMENTO número '+ sPedidoCodigo +
       ' no dia '+ DateToStr(dDataEntrada)+ ' - Valor R$ '+ FormatFloat('###,###,###,##0.00', rTotalValorLiquido) + '- prazo '+ prazo+
         ',vendedor '+ vendedor +' e ' + vendedor2 +', Aguardando cliente confirmar  fechamento da Venda';

       sQuery:= ' update TAREFAS_CRM '+
       ' SET REP_CODIGO = '+QuotedStr(sVendedorCodigo) +
       ' , TRF_ASSUNTO = ' + QuotedStr(( assunto))  +
       ' , CLI_CODIGO = '+QuotedStr(sClienteCodigo) +
       ' , TRF_CONTATO =  '+   QuotedStr(copy(Orc_cliente,1,60)) +
       ' , TRF_EMAILCONTATO = '+ QuotedStr(copy(orc_email,1,60)) +
       ' , TRF_CONTATOFONE  = '+ QuotedStr(orc_fone) +
       ' , TRF_ENDERECO = '+ QuotedStr(orc_endereco) +
       ' , TRF_NOMEEMPRESA = '+    QuotedStr(copy(orc_nomeEmpresa,1,60))+
       '  WHERE TRF_REGISTRO = '+ IntToStr(trf_reg);



     end;
     dataCadastros.sqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.text :=sQuery;
     dataCadastros.sqlUpdate.Execsql;
     dataCadastros.sqlUpdate.Close;
      Squery:=  'INSERT INTO TAREFAS_HISTORICO      '+
       ' (TAH_REGISTRO, TRF_REGISTRO, TAH_DATA_REGISTRO, TAH_ASSUNTO) '+
       ' VALUES('+IntToStr( dbInicio.GetNextSequence('GEN_TAH_HISTORICO')) +','+
          IntToStr(trf_reg)+ ','+
          DateTimeToSQL(now)  +','+
          QuotedStr(assunto) +  ')';

       dataCadastros.sqlUpdate.Close;
       DataCadastros.SqlUpdate.sql.text :=sQuery;
       dataCadastros.sqlUpdate.Execsql;
       dataCadastros.sqlUpdate.Close;

   end
   else if  (sSituacao <> 'I') then // é  vendas não é orçamento, e não é pedido interno
   begin
     //verificar se já foi aberto uma tarefa
     dataCadastros.sqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.text :=SqlDef('PEDIDOS','SELECT TRF_REGISTRO  FROM TAREFAS_CRM T1 ','WHERE TRF_FINALIZADA = ''N'' and T1.ped_codigo = '+QuotedStr(sPedidoCodigo),'','T1.');
     dataCadastros.sqlUpdate.Open;
     trf_reg := dataCadastros.sqlUpdate.FieldByName('TRF_REGISTRO').AsInteger;
     bPedidoExiste := (dataCadastros.sqlUpdate.FieldByName('TRF_REGISTRO').AsInteger > 0);

     if bPedidoExiste then //tem uma tarefa NÃO TERMINADA
     begin
        assunto := 'Venda Fechada : Orçamento passou para tipo VENDA em '+ FormatDateTime('dd/mm/yyyy hh:nn',now)  ;
        SQUERY:= ' update TAREFAS_CRM '+
                 ' SET REP_CODIGO = '+QuotedStr(sVendedorCodigo) +
                 ' , TRF_ASSUNTO = ''' +(( assunto))   +''''+
                 ', TRF_FINALIZADA = ''S'' '+
                 ', TRF_DATA_FINA = ' + DateTimeToSQL(NOW) +

                 '  WHERE TRF_REGISTRO = '+ IntToStr(trf_reg);
         dataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :=sQuery;
         dataCadastros.sqlUpdate.Execsql;
         dataCadastros.sqlUpdate.Close;

        Squery:=  'INSERT INTO TAREFAS_HISTORICO      '+
         ' (TAH_REGISTRO, TRF_REGISTRO, TAH_DATA_REGISTRO, TAH_ASSUNTO) '+
         ' VALUES('+IntToStr( dbInicio.GetNextSequence('GEN_TAH_HISTORICO')) +','+
            IntToStr(trf_reg)+ ','+
            DateTimeToSQL(now)  +','+
            QuotedStr(assunto) +  ')';

         dataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :=sQuery;
         dataCadastros.sqlUpdate.Execsql;
         dataCadastros.sqlUpdate.Close;

     end;


   end;
end;

function GravarPedidoItemResumido (sPedidoCodigo , sProdutoCodigo, sProdutoReferencia,sProdutoDescricao : string; rQuantidade, rQuantidadeConvertida: real;iCodigoUsuario: Integer) : integer;
begin
 result :=  GravarPedidoItem(0,'', sPedidoCodigo , sProdutoCodigo, sProdutoReferencia, EmptyStr, sProdutoDescricao,
                  EmptyStr,EmptyStr,EmptyStr, EmptyStr, EmptyStr,
                  false, false,  rQuantidade, rQuantidadeConvertida, 0 , 0  , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                  0, iCodigoUsuario, 0 ,0,0, 0,0,'','');

end;
function GravarPedidoItem(sID_DIRETIVAS:Integer;
                          prdUnd: string;
                          sPedidoCodigo, sProdutoCodigo, sProdutoReferencia, sProdutoCodigoOriginal,
                          sProdutoDescricao, sAlmoxarifadoCodigo,
                          sProdutoDescricaoComplemento, sPedidoB2b, sTabelaPreco,
                          sUsouVerba: String; bAtualizaEstoque, bProdutoAgregado :Boolean;
                          rQuantidade, rQuantidadeConvertida, rQuantidadeFaturada, rPreco,
                          rPrecoBruto, rCusto, rMargemProduto, rAcrescimo, rDesconto1,
                          rDesconto2, rComissaoItem, rAliquotaIPI, rValorST, rAliquotaICMS,
                          rValorICMS, rValorVerba :Real;
                          iRegistroItem, iCodigoUsuario: Integer; iCodigoLote : Variant ;
                          iCCdigoGrade, iItemPedidoB2b,
                          iCodigoRegistroVinculado, iDiretiva:Integer;
                          p_PRF_PRAZO_ENTREGA: string; Prazo: string = ''; PesoKg: double = 0.0 ;
                          qPendente: real = 0.0; bProdutoSemValor :Boolean = False ):Integer;
var
   sQuery:WideString;
   bItemExiste, bTemVendaPerdida, continua :Boolean;
   Lote, LoteAtual, LoteAnterior, prfSequencia, registroVinculado, enfRegistro: Integer;
   iRetorno:Integer;
   I,Max, Min: Integer;
   QtdePRF, QTDEPendente, Saldo: double;
   validade, validadeLoteAnterior : TDateTime;
   sProdutoDescricaoLote, nomeLote, ES, nomeLoteAnterior: string;
   transacao : TDBXTransaction;
begin


  if FrmPedidoItem <> nil then
  begin
     if (DBInicio.BuscaUmDadoSqlAsInteger('SELECT PRF_REGISTRO FROM DEMANDA_PRODUCAO ' +
                                       ' WHERE PRF_REGISTRO = ' + IntToStr(iRegistroItem) +
                                       ' AND EMP_CODIGO = ' + QuotedStr(dbInicio.Empresa.EMP_CODIGO)) > 0)
     and (FrmPedidoItem.CurQuantidade.Value <> FrmPedidoItem.CurquantidadeAnterior)
     and (DBInicio.GetParametroSistema('PMT_ALTERA_QUANT_ITEM_PED') <> 'S')
     then
     begin
       MessageDlg('Este pedido já foi enviado para o PCP Demanda, não é possível alterar a quantidade', mtWarning, [mbOk], 0);
       Abort;
     end;

     if (DBInicio.BuscaUmDadoSqlAsInteger('SELECT PRF_REGISTRO FROM DEMANDA_PRODUCAO ' +
                                       ' WHERE PRF_REGISTRO = ' + IntToStr(iRegistroItem) +
                                       ' AND EMP_CODIGO = ' + QuotedStr(dbInicio.Empresa.EMP_CODIGO)) > 0)
     and (FrmPedidoItem.CurQuantidade.Value <> FrmPedidoItem.CurquantidadeAnterior)
     and (DBInicio.GetParametroSistema('PMT_ALTERA_QUANT_ITEM_PED') = 'S')
     then
     begin
       MessageDlg('A quantidade enviada para produção não será alterada', mtWarning, [mbOk], 0);
     end;
  end;
  if FrmPedido <> nil then
    FrmPedido.PanelAguarde.Visible := True;
  Application.ProcessMessages;

   iRetorno := iRegistroItem;
   bItemExiste := False;

   //Verifica se o Item do Pedido ja esta na base de dados caso esteja será uma alteração
   dataCadastros.sqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text :=SqlDef('PEDIDOS','SELECT t1.PRF_QTDEFAT, T1.enf_registro, T1.prf_registro, PRF_QTDE, PRDL_REGISTRO FROM ped_it01 T1 ','WHERE T1.prf_registro = '+QuotedStr(IntToStr(iRegistroItem)) ,'T1.PRF_SEQUENCIA','T1.');
   dataCadastros.sqlUpdate.Open;


   if (not dataCadastros.sqlUpdate.IsEmpty) then
   begin
     if (dataCadastros.sqlUpdate.FieldByName('prf_registro').AsInteger > 0) then
     begin
        bItemExiste := True;
        enfRegistro := dataCadastros.sqlUpdate.FieldByName('enf_registro').AsInteger;
     end;
   end;


   if (bItemExiste)  then //era Update, agora é delete...
    begin

     if rQuantidadeFaturada = 0 then
      rQuantidadeFaturada := DataCadastros.SqlUpdate.FieldByName('PRF_QTDEFAT').AsFloat;

      {

       if dataCadastros.sqlUpdate.FieldByName('PRDL_REGISTRO').AsInteger = 0 then
       begin

          if VarIsNumeric(iCodigoLote) then
          begin
            Lote:= iCodigoLote;
            DataCadastros.SqlUpdate2.SQL.Text := 'SELECT PRDL_SALDO, PRDL_DATA_VALIDADE, PRDL_LOTE FROM PRD_LOTE '+
                                                 ' WHERE PRDL_REGISTRO = '+IntToStr(lote);
            DataCadastros.SqlUpdate2.Open;
            validade := dataCadastros.sqlUpdate2.FieldByName('PRDL_DATA_VALIDADE').AsDateTime;
            nomeLote := dataCadastros.sqlUpdate2.FieldByName('PRDL_LOTE').AsString;
            Saldo := dataCadastros.sqlUpdate2.FieldByName('PRDL_SALDO').AsFloat;

          end;
          if VarIsArray(iCodigoLote) then
          begin
           Lote := VarArrayGet(iCodigoLote, [1,1] );
           //saldo := VarArrayGet(iCodigoLote, [1,2] );
           validade := VarArrayGet(iCodigoLote,[1,3]);
           nomeLote := VarArrayGet(iCodigoLote,[1,4]);
          end;
         if Lote > 0 then
           sProdutoDescricao := sProdutoDescricao +  ' - Lote :'+ nomeLote +
           iif(validade = 0 ,'',' Validade: '+FormatDateTime('dd/mm/yyyy',validade));
       end
       else
       begin
         Lote := dataCadastros.sqlUpdate.FieldByName('PRDL_REGISTRO').AsInteger ;
         saldo := DBInicio.BuscaUmDadoSqlAsFloat('SELECT PRDL_SALDO FROM PRD_LOTE WHERE PRDL_REGISTRO = ' + IntToStr(Lote));
       end;
       p_PRF_PRAZO_ENTREGA := StringReplace(p_PRF_PRAZO_ENTREGA, '-', '/', [rfReplaceAll]);
       sQuery := 'UPDATE ped_it01 SET '+
                 ' PED_CODIGO = '+QuotedStr(sPedidoCodigo)+','+
                 ' PRD_REFER = '+QuotedStr(sProdutoReferencia)+','+
                 ' PRDCO_CODIGO_ORIGINAL = '+QuotedStr(sProdutoCodigoOriginal)+','+
                 ' PRF_TABPRECO = '+QuotedStr(sTabelaPreco)+','+
                 ' PRF_QTDE = '+QuotedStr(ValorAmericano(FloatToStr(rQuantidade)))+','+
                 ' PRF_QTDE_CONVERTIDA = '+QuotedStr(ValorAmericano(FloatToStr(rQuantidadeConvertida)))+','+
                 ' PRF_PRECO = '+QuotedStr(ValorAmericano(FloatToStr(rPreco)))+','+
                 ' PRF_PRECO_ORIGINAL = '+QuotedStr(ValorAmericano(FloatToStr(rPreco)))+','+
                 ' PRF_CUSTO = '+QuotedStr(ValorAmericano(FloatToStr(rCusto)))+','+
                 ' PRF_MARGEM_PRODUTO = '+QuotedStr(ValorAmericano(FloatToStr(rMargemProduto)))+','+
                 ' PRF_IDESCTO1 = '+FloatToSql ( rDesconto1 ) +','+
                 ' PRF_IDESCTO2 = '+FloatToSql ( rDesconto2 ) +','+
                 ' PRF_ITEMCOMIS = '+QuotedStr(ValorAmericano(FloatToStr(rComissaoItem)))+','+
                 ' PRF_IPIALIQ = '+QuotedStr(ValorAmericano(FloatToStr(rAliquotaIPI)))+','+
                 ' PRF_VALOR_ST = '+QuotedStr(ValorAmericano(FloatToStr(rValorST)))+','+
                 ' PRF_ICMSALIQ = '+QuotedStr(ValorAmericano(FloatToStr(rAliquotaICMS)))+','+
                 ' PRF_PRDDESCRI = '+QuotedStr(sProdutoDescricao)+','+
                 ' PRF_PRECO_BRUTO = '+QuotedStr(ValorAmericano(FloatToStr(rPrecoBruto)))+','+
                 ' PRF_ACRESCIMO = '+QuotedStr(ValorAmericano(FloatToStr(rAcrescimo)))+','+
                 ' PRF_FLAG_ATUALIZA_ESTOQUE = '+QuotedStr(IIF(bAtualizaEstoque,'S','N'))+','+
                 ' PRF_PRODUTO_AGREGADO = '+QuotedStr(IIF(bProdutoAgregado,'S','N'))+','+
                 ' PRF_VALOR_ICMS = '+QuotedStr(ValorAmericano(FloatToStr(rValorICMS)))+','+
                 ' USU_CODIGO = '+QuotedStr(dbInicio.Usuario.Codigo)+','+
                 ' PRD_CODIGO = '+QuotedStr(sProdutoCodigo)+','+
                 ' EMP_CODIGO = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+','+
                 ' AMX_CODIGO_DESTINO = '+QuotedStr(sAlmoxarifadoCodigo)+','+
                 ' PRF_COMPL_DESCRI = '+QuotedStr(sProdutoDescricaoComplemento)+','+
                 ' PRG_REGISTRO = '+QuotedStr(IntToStr(iCCdigoGrade))+','+
                 ' PRDD_REGISTRO = '+QuotedStr(IntToStr(iDiretiva))+','+
                 ' PRF_B2B_PEDIDO_COMPRA = '+QuotedStr(sPedidoB2b)+','+
                 ' PRF_B2B_ITEM_PEDIDO_COMPRA = '+QuotedStr(IntToStr(iItemPedidoB2b))+','+
                 ' USOU_VERBA = '+QuotedStr(sUsouVerba)+','+
                 ' VALOR_VERBA = '+FloatToSql(rValorVerba)+ ','+
                 ' PRF_PRAZO_ENTREGA = ' + iif((p_PRF_PRAZO_ENTREGA='')  or (p_PRF_PRAZO_ENTREGA=' null ') or (p_PRF_PRAZO_ENTREGA='0') ,'NULL', p_PRF_PRAZO_ENTREGA)+  ','+
                 ' PRF_PRAZO_DIAS = ' + iif(Prazo='','NULL',Prazo)+  ','+
                 ' PRF_PESOKG = '+ FloatToSQL(PesoKg) + ','+
                 IIF(LOTE=0,'',' PRDL_REGISTRO = '+(IntToStr(Lote))+',')+   //PRDL_REGISTRO
                 ' prf_qtdePend = '+ QuotedStr(ValorAmericano(FloatToStr(qPendente)))+','+
                 IIF (qPendente>0, ' PRF_DTPENDENCIA = CURRENT_TIMESTAMP ,','')+
                 ' PRF_PRODUTO_SEMVALOR = '+ QuotedStr(IIF(bProdutoSemValor,'S','N'))+
                 ' WHERE prf_registro = '+QuotedStr(IntToStr(iRegistroItem))+' and EMP_CODIGO = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO);

       dataCadastros.sqlUpdate.Close;
       DataCadastros.SqlUpdate.sql.text :=sQuery;
       dataCadastros.sqlUpdate.Execsql;
       dataCadastros.sqlUpdate.Close;

       }



       prfSequencia := DBInicio.BuscaUmDadoSqlAsInteger('select prf_sequencia from PED_IT01 pi2 WHERE prf_registro = ' + IntToStr(iRegistroItem));

       if VarIsArray(iCodigoLote) then
       begin
         LoteAtual := VarArrayGet(iCodigoLote, [1,1] );
         Lote := LoteAtual;
       end
       else
         Lote := dataCadastros.sqlUpdate.FieldByName('PRDL_REGISTRO').AsInteger ;

       if FrmPedidoItem <> nil then
         if loteAtual <> FrmPedidoItem.loteAnterior then
           if DBInicio.GetParametroSistema('PMT_ATUALIZA_LOTE') = 'P'  then
             movimentaLote(iRegistroItem, FrmPedidoItem.loteAnterior, screen.ActiveForm.Name, 'E', FrmPedidoItem.curQuantidadeAnterior, 0);




       if (FrmPedidoItem <> nil) and (FrmPedidoItem.curQuantidadeAnterior > rQuantidade) then
         saldo := (FrmPedidoItem.curQuantidadeAnterior - rQuantidade) + DBInicio.BuscaUmDadoSqlAsFloat('SELECT PRDL_SALDO FROM PRD_LOTE WHERE PRDL_REGISTRO = ' + IntToStr(Lote))
       else
         saldo := DBInicio.BuscaUmDadoSqlAsFloat('SELECT PRDL_SALDO FROM PRD_LOTE WHERE PRDL_REGISTRO = ' + IntToStr(Lote))
         ;
       ES := 'E';
       if FrmPedidoItem = nil then
         qtdePRF := rQuantidade
       else if FrmPedidoItem.curQuantidadeAnterior < rQuantidade then
       begin
         qtdePRF := rQuantidade - FrmPedidoItem.curQuantidadeAnterior;
         ES := 'S';
       end
       else if loteAtual <> FrmPedidoItem.loteAnterior then
       begin
         qtdePRF := rQuantidade;
         ES := 'S';
       end
       else
         qtdePRF := FrmPedidoItem.curQuantidadeAnterior - rQuantidade;
       if FrmPedidoTipo <> nil then
       begin
         qtdePRF := rQuantidade;
         if  (dbInicio.BuscaUmDadoSqlAsString('SELECT OPV_ATESTOQUE FROM OPV0000 WHERE OPV_CODIGO = ' + frmPedidoTipo.edPedidoAtualNumero.text) = 'N')
         and (dbInicio.BuscaUmDadoSqlAsString('SELECT OPV_ATESTOQUE FROM OPV0000 WHERE OPV_CODIGO = ' + frmPedidoTipo.edPedidoNovoNumero.text) = 'S')
         then ES := 'S';
       end;

       if FrmPedidoTipo <> nil then
       begin
         if dbInicio.BuscaUmDadoSqlAsString('SELECT OPV_ATESTOQUE FROM OPV0000 WHERE OPV_CODIGO = ' + frmPedidoTipo.edPedidoNovoNumero.text) = 'S' then
           if DBInicio.GetParametroSistema('PMT_ATUALIZA_LOTE') = 'P'  then
              movimentaLote(iRegistroItem, Lote, screen.ActiveForm.Name, ES, qtdePRF, 0);

         if (dbInicio.BuscaUmDadoSqlAsString('SELECT OPV_ATESTOQUE FROM OPV0000 WHERE OPV_CODIGO = ' + frmPedidoTipo.edPedidoAtualNumero.text) = 'S')
          and (dbInicio.BuscaUmDadoSqlAsString('SELECT OPV_ATESTOQUE FROM OPV0000 WHERE OPV_CODIGO = ' + frmPedidoTipo.edPedidoNovoNumero.text) = 'N')
          then
           if DBInicio.GetParametroSistema('PMT_ATUALIZA_LOTE') = 'P'  then
              movimentaLote(iRegistroItem, Lote, screen.ActiveForm.Name, ES, qtdePRF, 0);



       end
       else
       begin
        if (FrmPedidoItem <> nil) then
          if  (FrmPedidoItem.ExisteLote) then
          begin
             if (QtdePRF > saldo) and (lote > 0) then
             begin
               MessageDlg('Não há saldo suficiente no lote...', mtWarning, [mbOk],0);
               Abort;
             end;
             if DBInicio.GetParametroSistema('PMT_ATUALIZA_LOTE') = 'P'  then           // if dbInicio.BuscaUmDadoSqlAsString('SELECT OPV_ATESTOQUE FROM OPV0000 WHERE OPV_CODIGO = ' + FrmPedido.EdPedidoTipo.text) = 'S' then
               movimentaLote(iRegistroItem, Lote, screen.ActiveForm.Name, ES, qtdePRF, Saldo);
          end;
       end;
       // sQuery := 'DELETE FROM PED_IT01 ' +
       //           ' WHERE PRF_REGISTRO = ' + QuotedStr(IntToStr(iRegistroItem)) + ' AND EMP_CODIGO = ' + QuotedStr(dbInicio.Empresa.EMP_CODIGO);
       // DBInicio.ExecSql(sQuery);
       registroVinculado := DBInicio.BuscaUmDadoSqlAsInteger('SELECT PRF_REGISTRO_VINCULADO FROM PED_IT01 WHERE PRF_REGISTRO_VINCULADO = ' + IntToStr(iRegistroItem));

    end;

///    else

    begin

      if VarIsNumeric(iCodigoLote) then
      begin
        Lote:= iCodigoLote;
        Min := 1;
        Max := 1;
      end
      else if VarIsArray(iCodigoLote) then
      begin
        min := VarArrayLowBound(iCodigoLote,1);
        max := VarArrayHighBound(iCodigoLote,1);
        QTDEPendente := rQuantidade;

      end;

      for I := min to max do
      begin
          if not VarIsArray(iCodigoLote) and VarIsNumeric(iCodigoLote) then
          begin
            lote := iCodigoLote;
          end
          else
          begin
            if max > 0 then
            begin
              Lote := VarArrayGet(iCodigoLote, [i,1] );
              saldo :=  DBInicio.BuscaUmDadoSqlAsFloat('SELECT PRDL_SALDO FROM PRD_LOTE WHERE PRDL_REGISTRO = ' + IntToStr(Lote));      // VarArrayGet(iCodigoLote, [i,2] );
              validade := VarArrayGet(iCodigoLote,[i,3]);
              nomeLote := VarArrayGet(iCodigoLote,[i,4]);
              if (QTDEPendente >= Saldo) and not bItemExiste then
              begin
                QTDEPendente := QTDEPendente - Saldo;
                rQuantidade := Saldo;
              end
              else
              if (FrmPedidoItem <> nil) then
                if  (not FrmPedidoItem.ExisteLote) then
                begin
                  if i = max then
                  begin
                    rQuantidade := QTDEPendente;
                    QTDEPendente := QTDEPendente - (Saldo - QTDEPendente);
                  end
                  else
                  begin
                    QTDEPendente := QTDEPendente - Saldo;
                    rQuantidade := Saldo;
                  end;
                end
              else
              begin
                rQuantidade  := QTDEPendente;
                QTDEPendente := 0;
              end;
            end;
          end;


         if Lote > 0 then
         begin
           if FrmPedidoItem <> nil then
           begin
             DataCadastros.SqlUpdate2.Close;
             DataCadastros.SqlUpdate2.SQL.Text := 'SELECT PRDL_DATA_VALIDADE, PRDL_LOTE FROM PRD_LOTE WHERE PRDL_REGISTRO = '+IntToStr(FrmPedidoItem.loteAnterior);
             DataCadastros.SqlUpdate2.Open;
             validadeLoteAnterior := dataCadastros.sqlUpdate2.FieldByName('PRDL_DATA_VALIDADE').AsDateTime;
             nomeLoteAnterior := dataCadastros.sqlUpdate2.FieldByName('PRDL_LOTE').AsString;
             sProdutoDescricao := StringReplace(sProdutoDescricao, ' - Lote :'+ nomeLoteAnterior + iif(validadeLoteAnterior = 0 ,'',' Validade: '+FormatDateTime('dd/mm/yyyy',validadeLoteAnterior)), '', [rfReplaceAll, rfIgnoreCase]);
             sProdutoDescricao := StringReplace(sProdutoDescricao, ' - Lote :'+ nomeLote + iif(validade = 0 ,'',' Validade: '+FormatDateTime('dd/mm/yyyy',validade)), '', [rfReplaceAll, rfIgnoreCase]);
             sProdutoDescricaoLote := sProdutoDescricao +  ' - Lote :'+ nomeLote + iif(validade = 0 ,'',' Validade: '+FormatDateTime('dd/mm/yyyy',validade))
           end;
           if frmPedidoTipo <> nil then
             sProdutoDescricaoLote := sProdutoDescricao;
         end
         else
           sProdutoDescricaoLote := sProdutoDescricao;
        if Length(sProdutoDescricaoLote) > 254 then
          sProdutoDescricaoLote := copy(sProdutoDescricaoLote,1,254);

        iRetorno := dbInicio.GetNextSequence('GEN_ITEM_PEDIDO');
        if prfSequencia = 0 then
          if (FrmPedido = nil) or agrupar or (FrmPedido.SqlCdsPedidoItem.RecordCount = 0) then
            prfSequencia := 1
          else
            prfSequencia := FrmPedido.SqlCdsPedidoItem.RecordCount + 1;

       if registroVinculado > 0 then
       begin
         sQuery := 'UPDATE PED_IT01 ' +
                   ' SET PRF_REGISTRO_VINCULADO = ' + IntToStr(iRetorno) +
                   ' WHERE PRF_REGISTRO_VINCULADO = ' + IntToStr(registroVinculado) + ' AND EMP_CODIGO = ' + QuotedStr(dbInicio.Empresa.EMP_CODIGO);
         DBInicio.ExecSql(sQuery);
       end;



          // if FrmPedido <> nil then
            // prfSequencia := FrmPedido.SqlCdsPedidoItem.RecordCount + 1;

        sQuery := 'INSERT INTO ped_it01 '+
                   '('+
                   'PRD_UND,'+
                   'PRF_SEQUENCIA,'+
                   'PRF_REGISTRO,'+
                   'PED_CODIGO,'+
                   'PRD_REFER,'+
                   'PRDCO_CODIGO_ORIGINAL,'+
                   'PRF_TABPRECO,'+
                   'PRF_QTDE,'+
                   'PRF_QTDE_CONVERTIDA,'+
                   'PRF_QTDEFAT,'+
                   'PRF_PRECO,'+
                   'PRF_PRECO_ORIGINAL,'+
                   'PRF_CUSTO,'+
                   'PRF_MARGEM_PRODUTO,'+
                   'PRF_IDESCTO1,'+
                   'PRF_IDESCTO2,'+
                   'PRF_SITUACAO,'+
                   'PRF_ITEMCOMIS,'+
                   'PRF_IPIALIQ,'+
                   'PRF_VALOR_ST,'+
                   'PRF_ICMSALIQ,'+
                   'PRF_PRDDESCRI,'+
                   'EMP_CODIGO,'+
                   'PRF_PRECO_BRUTO,'+
                   'PRF_ACRESCIMO,'+
                   'PRF_OP,'+
                   'PRF_FLAG_ATUALIZA_ESTOQUE,'+
                   'PRF_ORIGEM_ITEM,'+
                   'PRF_PRODUTO_AGREGADO,'+
                   'PRF_VALOR_ICMS,'+
                   'USU_CODIGO,'+
                   'PRD_CODIGO,'+
                   'AMX_CODIGO_DESTINO,'+
                   'PRF_COMPL_DESCRI,'+
                   'PRDL_REGISTRO,'+
                   'PRF_B2B_PEDIDO_COMPRA,'+
                   'PRF_B2B_ITEM_PEDIDO_COMPRA,'+
                   'PRF_REGISTRO_VINCULADO,'+
                   'PRDD_REGISTRO,'+
                   ' PRG_REGISTRO, ID_DIRETIVAS, USOU_VERBA, VALOR_VERBA, PRF_PRAZO_ENTREGA, PRF_PRAZO_DIAS, PRF_PESOKG, prf_qtdePend, '+
                   IIF (qPendente>0, ' PRF_DTPENDENCIA, ','')+
                   ' PRF_PRODUTO_SEMVALOR  '+
                   ')'+
                   'VALUES'+
                   '('+
                   QuotedStr(prdUnd)+','+
                   QuotedStr(IntToStr(prfSequencia))+','+
                   QuotedStr(IntToStr(iRetorno))+','+
                   QuotedStr(sPedidoCodigo)+','+
                   QuotedStr(sProdutoReferencia)+','+
                   QuotedStr(sProdutoCodigoOriginal)+','+
                   QuotedStr(sTabelaPreco)+','+
                   QuotedStr(ValorAmericano(FloatToStr(rQuantidade)))+','+
                   QuotedStr(ValorAmericano(FloatToStr(rQuantidadeConvertida)))+','+
                   QuotedStr(ValorAmericano(FloatToStr(rQuantidadeFaturada)))+','+
                   QuotedStr(ValorAmericano(FloatToStr(rPreco)))+','+
                   QuotedStr(ValorAmericano(FloatToStr(rPreco)))+','+
                   QuotedStr(ValorAmericano(FloatToStr(rCusto)))+','+
                   QuotedStr(ValorAmericano(FloatToStr(rMargemProduto)))+','+
                   FloatToSql(rDesconto1)+','+
                   FloatToSql(rDesconto2)+','+
                   QuotedStr('F')+','+
                   QuotedStr(ValorAmericano(FloatToStr(rComissaoItem)))+','+
                   QuotedStr(ValorAmericano(FloatToStr(rAliquotaIPI)))+','+
                   QuotedStr(ValorAmericano(FloatToStr(rValorST)))+','+
                   QuotedStr(ValorAmericano(FloatToStr(rAliquotaICMS)))+','+
                   QuotedStr(sProdutoDescricaoLote)+','+
                   QuotedStr(dbInicio.Empresa.EMP_CODIGO)+','+
                   QuotedStr(ValorAmericano(FloatToStr(rPrecoBruto)))+','+
                   QuotedStr(ValorAmericano(FloatToStr(rAcrescimo)))+','+
                   QuotedStr('N')+','+
                   QuotedStr(IIF(bAtualizaEstoque,'S','N'))+','+
                   QuotedStr('O')+','+
                   QuotedStr(IIF(bProdutoAgregado,'S','N'))+','+
                   QuotedStr(ValorAmericano(FloatToStr(rValorICMS)))+','+
                   QuotedStr(dbInicio.Usuario.Codigo)+','+
                   QuotedStr(sProdutoCodigo)+','+
                   QuotedStr(sAlmoxarifadoCodigo)+','+
                   QuotedStr(sProdutoDescricaoComplemento)+','+
                   QuotedStr(IntToStr(Lote))+','+   //PRDL_REGISTRO
                   QuotedStr(sPedidoB2b)+','+
                   QuotedStr(IntToStr(iItemPedidoB2b))+','+
                   QuotedStr(IntToStr(iCodigoRegistroVinculado))+','+
                   QuotedStr(IntToStr(iDiretiva))+','+
                   QuotedStr(IntToStr(iCCdigoGrade))+','+
                   QuotedStr(IntToStr(sID_DIRETIVAS))+','+
                   QuotedStr(sUsouVerba)+','+
                   FloatToSql(rValorVerba)+ ','+
                   iif((p_PRF_PRAZO_ENTREGA='') or (p_PRF_PRAZO_ENTREGA=' null '),'NULL', p_PRF_PRAZO_ENTREGA )+  ','+
                   iif(Prazo='','NULL',Prazo)+  ','+
                   FloatToSQL(PesoKg) +  ','+
                   QuotedStr(ValorAmericano(FloatToStr(qPendente)))+  ','+
                   IIF (qPendente>0, DateTimeToSQL(NOW)+',','')+
                   QuotedStr(IIF(bProdutoSemValor,'S','N'))+
                   ')';
         if DBInicio.IsDesenvolvimento then
          CopyToClipBoard(sQuery);

         dataCadastros.sqlUpdate.Close;
         // DataCadastros.SqlUpdate.sql.text :=sQuery;
         // dataCadastros.sqlUpdate.Execsql;

          continua := true;
          if FrmPedido <> nil then
              FrmPedido.PanelAguarde.Visible := True;
          Application.ProcessMessages;
          while continua do
          begin
            try
               DataCadastros.SqlUpdate.Close;
               // DataCadastros.SqlUpdate.SQLConnection.Connected := False;
               DataCadastros.SqlUpdate.SQL.Text := sQuery;
               // DataCadastros.SqlUpdate.SQLConnection.Connected := True;
               transacao := DataCadastros.SqlUpdate.SQLConnection.BeginTransaction;
               DataCadastros.SqlUpdate.ExecSql;
               DataCadastros.SqlUpdate.SQLConnection.CommitFreeAndNil(transacao);
            except
              on E: Exception do
              begin
                showmessage(e.Message);
              end;
 //               continue;
            end;
            continua := false;
          end;
          if FrmPedido <> nil then
              FrmPedido.PanelAguarde.Visible := False;

         dataCadastros.sqlUpdate.Close;


         if (bItemExiste)  then
         begin
           sQuery := 'UPDATE PED_IT01 SET ENF_REGISTRO =  ' + IntToStr(enfRegistro) +
                     ' WHERE PRF_REGISTRO = ' + IntToStr(iRetorno);
           DBInicio.ExecSql(sQuery);


           sQuery := 'UPDATE DEMANDA_PRODUCAO SET PRF_REGISTRO =  ' + IntToStr(iRetorno) + ', ENF_REGISTRO =  ' + IntToStr(enfRegistro) +
                     ' WHERE PRF_REGISTRO = ' + IntToStr(iRegistroItem) + ' AND EMP_CODIGO = ' + QuotedStr(dbInicio.Empresa.EMP_CODIGO);
           DBInicio.ExecSql(sQuery);


           sQuery := 'UPDATE EXPEDICAO_ITEM SET PRF_REGISTRO =  ' + IntToStr(iRetorno) +
                     ' WHERE PRF_REGISTRO = ' + IntToStr(iRegistroItem);
           DBInicio.ExecSql(sQuery);


           sQuery := 'UPDATE PRD_DIRETIVA_ITEM SET PRF_REGISTRO =  ' + IntToStr(iRetorno) +
                     ' WHERE PRF_REGISTRO = ' + IntToStr(iRegistroItem);
           DBInicio.ExecSql(sQuery);


           sQuery := 'UPDATE PED_IT01_DI SET PRF_REGISTRO =  ' + IntToStr(iRetorno) +
                     ' WHERE PRF_REGISTRO = ' + IntToStr(iRegistroItem);
           DBInicio.ExecSql(sQuery);


           sQuery := 'UPDATE ITEM_ORDEMPRODUCAO SET PRF_REGISTRO =  ' + IntToStr(iRetorno) +
                     ' WHERE PRF_REGISTRO = ' + IntToStr(iRegistroItem) ;
           DBInicio.ExecSql(sQuery);


           sQuery := 'UPDATE ENF_IT01 SET PRF_REGISTRO =  ' + IntToStr(iRetorno) + ', ENF_REGISTRO =  ' + IntToStr(enfRegistro) +
                     ' WHERE PRF_REGISTRO = ' + IntToStr(iRegistroItem) + ' AND EMP_CODIGO = ' + QuotedStr(dbInicio.Empresa.EMP_CODIGO);
           DBInicio.ExecSql(sQuery);


           sQuery := 'UPDATE PED_IT01_INDUST SET PRF_REGISTRO =  ' + IntToStr(iRetorno) + ', ENF_REGISTRO =  ' + IntToStr(enfRegistro) +
                     ' WHERE PRF_REGISTRO = ' + IntToStr(iRegistroItem) ;
           DBInicio.ExecSql(sQuery);


           sQuery := 'UPDATE NF_IT01 SET PRF_REGISTRO =  ' + IntToStr(iRetorno) +
                     ' WHERE PRF_REGISTRO = ' + IntToStr(iRegistroItem) + ' AND EMP_CODIGO = ' + QuotedStr(dbInicio.Empresa.EMP_CODIGO);
           DBInicio.ExecSql(sQuery);


           sQuery := 'UPDATE PEDIDO_ITEM_LOTE SET PRF_REGISTRO =  ' + IntToStr(iRetorno) +
                     ' WHERE PRF_REGISTRO = ' + IntToStr(iRegistroItem) ;
           DBInicio.ExecSql(sQuery);



           sQuery := 'DELETE FROM PED_IT01 ' +
                     ' WHERE PRF_REGISTRO = ' + QuotedStr(IntToStr(iRegistroItem)) + ' AND EMP_CODIGO = ' + QuotedStr(dbInicio.Empresa.EMP_CODIGO);
           DBInicio.ExecSql(sQuery);

         end;


         if FrmPedidoItem <> nil then
         begin
           if not bItemExiste and (FrmPedidoItem.curQuantidadeAnterior < rQuantidade) then
           begin
             if (DBInicio.GetParametroSistema('PMT_ATUALIZA_LOTE') = 'P')
             and (frmPedido.SqlCdsTipoPedidoOPV_ATESTOQUE.Asstring = 'S')
             then
               movimentaLote(iRetorno, Lote, screen.ActiveForm.Name, 'S', rQuantidade, saldo);
           end
           else
           if not frmPedidoItem.ExisteLote then
           begin
             if (DBInicio.GetParametroSistema('PMT_ATUALIZA_LOTE') = 'P')
             and (frmPedido.SqlCdsTipoPedidoOPV_ATESTOQUE.Asstring = 'S')
             then
             begin
              movimentaLote(iRetorno, Lote, screen.ActiveForm.Name, 'S', rQuantidade, saldo );
             end;
           end;

         end;

         if QTDEPendente <= 0 then
           break;

      end;


    end;

  if FrmPedido <> nil then
    FrmPedido.PanelAguarde.Visible := False;


  Result := iRetorno;
end;
function PercentualComissao (const prd_refer : string; prd_codigo: string; const cli_codigo: string;const preco: double):currency;
var sql :string;
   diferencaAnt : double;
begin
  if cli_codigo <> '' then
  begin
    // verificar se cliente permite comissão
    dataCadastros.sqlUpdate.Close;
    dataCadastros.sqlUpdate.SQL.Text := SQLDEF('CLIENTES',' select CLI_SEMCOMISSAO from CLI0000 ',' where cli_codigo = '+ QuotedStr(cli_codigo),'','');
    dataCadastros.sqlUpdate.Open;
    if not  dataCadastros.sqlUpdate.IsEmpty and (dataCadastros.sqlUpdate.FieldByName('CLI_SEMCOMISSAO').AsString = 'S') then
      Result := 0
    else
    begin
       if prd_codigo = '' then
       begin
         dataCadastros.sqlUpdate.Close;
         dataCadastros.sqlUpdate.SQL.Text := SQLDEF('PRODUTOS','SELECT PRD_CODIGO FROM PRD0000 P1',' where P1.PRD_REFER= '+ QuotedStr(prd_refer),'','P1.');
         dataCadastros.sqlUpdate.Open;
         if not dataCadastros.sqlUpdate.IsEmpty then
           prd_codigo := dataCadastros.sqlUpdate.FieldByName('PRD_CODIGO').AsString;
       end;
       if dbInicio.Empresa.pComissaoItem then
       begin

         sql:= ' Select P1.PRD_COMISSAO,P2.PTI_COMISSAO,P3.PGR_COM_PERC,P3.PGR_COMISS from PRD0000 P1 '+
               ' left join PRD_TIPO P2 on (P2.PTI_CODIGO = P1.PTI_CODIGO) '+
               ' left join PRD_GRUPO P3 on(P3.PGR_CODIGO = P1.PGR_CODIGO) ';
         dataCadastros.sqlUpdate.Close;
         dataCadastros.sqlUpdate.SQL.Text := SQLDEF('PRODUTOS',sql,' where P1.PRD_CODIGO= '+ QuotedStr(prd_codigo),'','P1.');
         dataCadastros.sqlUpdate.Open;
         if not dataCadastros.sqlUpdate.IsEmpty  then
         begin
           // se tem comissao no produto
           if dataCadastros.sqlUpdate.FieldByName('PRD_COMISSAO').AsCurrency > 0 then
             Result := dataCadastros.sqlUpdate.FieldByName('PRD_COMISSAO').AsCurrency
           else
           // se tem comissao no tipo
           if dataCadastros.sqlUpdate.FieldByName('PTI_COMISSAO').AsCurrency > 0 then
              Result := dataCadastros.sqlUpdate.FieldByName('PTI_COMISSAO').AsCurrency
           else
           // se tem comissao no grupo
           if dataCadastros.sqlUpdate.FieldByName('PGR_COM_PERC').AsCurrency > 0 then
             Result := dataCadastros.sqlUpdate.FieldByName('PGR_COM_PERC').AsCurrency
           else
             Result := dbInicio.Empresa.pComissaoRepresentantePadrao;
         end
         else
           Result := 0;

       end
       else if dbInicio.Empresa.pComissaoEscala then
       begin
        //ainda não tem codigo

       end
       Else if dbInicio.Empresa.pComissaoSimples then
       begin
         dataCadastros.sqlUpdate.Close;
         dataCadastros.sqlUpdate.SQL.Text := ' Select abs(prd_pvenda-'+FloatToSQL(preco)+ ') seq, nome, prd_pvenda, PRD_PERC_COMISSAO ,PRD_PERC_VENDA, tab_registro ,PRD_CODIGO     '+
                                             ' from  TABELAPRECOS '+
                                             '  WHERE PRD_CODIGO = '+QuotedStr(prd_codigo) +
                                             ' AND EMP_CODIGO = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO)+
                                             ' order by 1 ';
         dataCadastros.sqlUpdate.Open;
         if not dataCadastros.sqlUpdate.IsEmpty then
           result :=  dataCadastros.sqlUpdate.FieldByName('PRD_PERC_COMISSAO').AsFloat;

       end

       else
       begin
         Result :=  dbInicio.Empresa.pComissaoRepresentantePadrao;


       end;

    end;
  end
  else
  begin
    result := 0 ;
    exit;
  end;

end;
function GravarVendaPerdida(sProdutoCodigo,
                            sProdutoReferencia,
                            sVendedorCodigo,
                            sClienteCodigo,
                            sPedidoCodigo,
                            sUsuarioCodido
                            :String;
                            rQuantidade,
                            rPreco
                            :Currency
                            ):Boolean;
var
   sQuery:WideString;
   reg : integer;
begin
   reg:= DBInicio.BuscaUmDadoSqlAsInteger(' SELECT PVP_REGISTRO FROM PED_VENDA_PERDIDA '+
                 'WHERE PED_CODIGO = '+ QuotedStr(sPedidoCodigo)+  ' AND PRD_CODIGO =  '+ QuotedStr(sProdutoCodigo) +
                  ConcatSe(' and ',DBInicio.ExclusivoSql('ESTOQUES')));

   dataCadastros.sqlUpdate.Close;
   if reg > 0  then
     squery := 'UPDATE PED_VENDA_PERDIDA SET PVP_QUANTIDADE = PVP_QUANTIDADE + '+ ValorAmericano(FloatToStr(rQuantidade))  +
                ' ,PRF_PRECO = '+ QuotedStr(ValorAmericano(FloatToStr(rPreco)))+
                ' , PVP_DATA = '+ QuotedStr(DataAmericana(DateToStr(now)))+
                ' WHERE PVP_REGISTRO = '+IntToStr(reg)
   else
     if rQuantidade>0 then
        sQuery := 'INSERT INTO PED_VENDA_PERDIDA '+
                     '('+
                     'EMP_CODIGO,'+
                     'PRD_CODIGO,'+
                     'PRD_REFER,'+
                     'PVP_QUANTIDADE,'+
                     'REP_CODIGO,'+
                     'CLI_CODIGO,'+
                     'PED_CODIGO,'+
                     'PVP_DATA,'+
                     'USU_CODIGO, '+
                     'PRF_PRECO' +
                     ')'+
                     'VALUES'+
                     '('+
                     QuotedStr(dbInicio.Empresa.EMP_CODIGO)+','+
                     QuotedStr(sProdutoCodigo)+','+
                     QuotedStr(sProdutoReferencia)+','+
                     QuotedStr(ValorAmericano(FloatToStr(rQuantidade)))+','+
                     QuotedStr(sVendedorCodigo)+','+
                     QuotedStr(sClienteCodigo)+','+
                     QuotedStr(sPedidoCodigo)+','+
                     QuotedStr(DataAmericana(DateToStr(now)))+','+
                     QuotedStr(sUsuarioCodido)+  ',' +
                     QuotedStr(ValorAmericano(FloatToStr(rPreco)))+
                     ')';

   DataCadastros.SqlUpdate.sql.text :=sQuery;
   dataCadastros.sqlUpdate.Execsql;
   dataCadastros.sqlUpdate.Close;

   Result := True;

end;


function ExcluirPedidoItem(iRegistro:integer):Boolean;
begin
   dataCadastros.sqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text :='DELETE FROM PED_IT01 WHERE PRF_REGISTRO = '+IntToStr(iRegistro);
   dataCadastros.sqlUpdate.Execsql;
   dataCadastros.sqlUpdate.Close;
end;


function ExcluirPedidoCompleto(iRegistro:integer):Boolean;
begin
   dataCadastros.sqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text :='DELETE FROM PED0000 WHERE PED_REGISTRO = '+IntToStr(iRegistro);
   dataCadastros.sqlUpdate.Execsql;
   dataCadastros.sqlUpdate.Close;
end;

function ExistePedido(sPedido:String):Boolean;
begin
   dataCadastros.sqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text :=SQLDEF('PEDIDOS','Select cast(count(*) as integer) as conta from    PED0000 T1','WHERE T1.PED_CODIGO = '+QuotedStr(sPedido),'','T1.');
   dataCadastros.sqlUpdate.Open;
   Result := dataCadastros.sqlUpdate.FieldByName('CONTA').AsInteger > 0;
   dataCadastros.sqlUpdate.Close;
end;


procedure CancelaPedido(sPedido,idMotivo,sObservacao:String);
begin
   dataCadastros.sqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text :=SQLDEF('PEDIDOS','UPDATE PED0000 T1 SET T1.PED_SITUACAO = '+QuotedStr('C')+
                                                           ', T1.PED_MOTIVO_CANCELAMENTO = '+QuotedStr(sObservacao)+
                                                           ', T1.PMT_REGISTRO = '+idMotivo+'','WHERE T1.PED_CODIGO = '+QuotedStr(sPedido),'','T1.');
   dataCadastros.sqlUpdate.Execsql;
   dataCadastros.sqlUpdate.Close;
end;
procedure AtualizarSituacaoExpedicao (const sPedidoCodigo , sitExp, Emp_codigo: string);
var squery :string;
begin
   dataCadastros.sqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text :='SELECT SITEXP FROM ped0000 T1 WHERE T1.ped_codigo = '+QuotedStr(sPedidoCodigo) + ' and emp_codigo = '+QuotedStr(emp_codigo);
   dataCadastros.sqlUpdate.Open;

   if DataCadastros.SqlUpdate.FieldByName('SITEXP').AsString <>  sitExp   then
   begin

     squery:= ' INSERT INTO HISTORICO_EXPE (HIS_REGISTRO, EMP_CODIGO, SITEXP,DATASIT,USU_CODIGO, PED_CODIGO, OBSERVACAO) '+
              ' VALUES (GEN_ID(GEN_HIST_EXPE,1),'+QuotedStr(emp_codigo)+ ','   +qStr(SitExp) +',CURRENT_TIMESTAMP,'+DBInicio.Usuario.CODIGO+
              ','+QuotedStr(sPedidoCodigo)  +
              ','+QuotedStr('Modificação feita pelo pedido')+
                       ')';

     dataCadastros.sqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.text :=sQuery;
     dataCadastros.sqlUpdate.Execsql;
     dataCadastros.sqlUpdate.Close;
   end;
end;
procedure CalculoEstoquePendente(const afetaestoque: boolean; const stipo, ProdutoOriginal, ProdutoSelecionado: string; var rQtdeAnterior, rQtdeNova, qPendenteAnterior,
 qPendenteNova, qpreciso: double;  const rSaldo: double; const dQtdeKit: double; var dQtdeEstoque: double; var stipoKardesES :string);
  var qtemp :Currency;
begin
 stipoKardesES := 'S';
 if not afetaestoque then
  begin
    qPendenteNova := 0;
  end
  else if (sTipo = 'I') then
  begin
	  rQtdeAnterior := 0;
	  qpreciso := (dQtdeKit*rQtdeNova);
    qPendenteAnterior := 0 ;
    if (qpreciso >= rsaldo) then //tem menos do estoque do que preciso
    begin
      qPendenteNova := qpreciso - rsaldo;
      dQtdeEstoque := rsaldo;
    end
    else
  	begin
      qPendenteNova := 0;
	    dQtdeEstoque :=  qpreciso;
    end;
  end
  else  //alteração
  begin
    if (ProdutoOriginal <> ProdutoSelecionado ) then
    begin
      qpreciso := (dQtdeKit*rQtdeNova);
      if qpreciso >= rsaldo then //tem menos do estoque do que preciso
      begin
        qPendenteNova := qpreciso - rsaldo;
        dQtdeEstoque := rsaldo;
      end
      else
  	  begin
        qPendenteNova := 0 ;
	    	dQtdeEstoque := qpreciso;
  	  end;
    end
    else if rQtdeNova > rQtdeAnterior then //adiciona mais item
    begin
      //preciso = quantidade a mais que alterei no pedido (nova - anterior) + valor que ficou pendente
      qpreciso := (dQtdeKit*(rQtdeNova - rQtdeAnterior)) + qPendenteAnterior;
      if (qpreciso >= rsaldo) then
        qPendenteNova := qpreciso -rsaldo
      else
        qPendenteNova := 0;
  	  dQtdeEstoque := (dQtdeKit*(rQtdeNova - rQtdeAnterior)) + (qPendenteAnterior-qPendenteNova)
    end
    else if (rQtdeAnterior > rQtdeNova) then //Remove
    begin
      qtemp := (dQtdeKit*(rQtdeAnterior-rQtdeNova));
      stipoKardesES := iif(qtemp > qPendenteAnterior, 'E','S');
      if stipoKardesES = 'E' then     // estorno
      begin
        dQtdeEstoque :=  qtemp  - qPendenteAnterior;
        qPendenteNova := 0;
      end
      else // saida de produto , porque tinha saldo, e tinha pendencia, mesmo removendo itens
      begin
        if (qtemp = qPendenteAnterior) then
          qpreciso := 0
        else if qtemp < qPendenteAnterior then
          qpreciso := qPendenteAnterior - qtemp;

        if rsaldo = 0 then
        begin
          qPendenteNova := qpreciso;
          dQtdeEstoque :=  qtemp - (qPendenteAnterior-qPendenteNova) ;
        end
        else if (qpreciso > rsaldo) then
        begin
          qPendenteNova := qpreciso -rsaldo;
          dQtdeEstoque := qPendenteNova;
        end
        else
        begin
          qPendenteNova := 0;
          dQtdeEstoque := qpreciso;
        end;
      end;


    end
    else if rQtdeNova = rQtdeAnterior then
    begin
      if rsaldo >= qPendenteAnterior then
       qPendenteNova := 0
      else
       qPendenteNova := qPendenteAnterior - rSaldo;
	    dQtdeEstoque :=  	(qPendenteAnterior-qPendenteNova) ;
    end;

  end;
end;
 // quantos kit completa este item
function ItemKitCompleto ( Qtde, Pendencia : double ;  dQtdeKit: double ) : double;
begin
 result :=  trunc(((qtde*dQtdeKit)-Pendencia) /  Qtde ) ;

end;
function KitsCompletos (const AtualizaEstoque : boolean ; const registro : integer): double;
var Qtde, Pendencia : double ;
   dQtdeKit, qcompl,minKit: double ;
begin
  if not (DBInicio.Empresa.wPMT_CONTROLA_KIT) then
  begin
    if not AtualizaEstoque then
    begin
      dataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :='update PED_IT01 set PRF_QTDEPEND  = 0 where PRF_REGISTRO =  '+ IntToStr(registro) ;
      dataCadastros.sqlUpdate.Execsql;
      dataCadastros.sqlUpdate.Close;
    end
    else // atualiza estoque, verifica se há pendencias
    begin
      dataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text := 'SELECT PRF_QTDE FROM PED_IT01 co where PRF_REGISTRO =  '+ IntToStr(registro) ;
      dataCadastros.sqlUpdate.Open;
      if not dataCadastros.sqlUpdate.IsEmpty then
          dQtdeKit := dataCadastros.sqlUpdate.FieldByName('PRF_QTDE').AsFloat;

      dataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=SqlDef('PEDIDOS','SELECT * FROM PED_IT01 t1 ','WHERE PRF_REGISTRO_VINCULADO =   '+IntToStr(registro),'','T1.');
      dataCadastros.sqlUpdate.Open;
      dataCadastros.sqlUpdate.First;
      minKit :=dQtdeKit ;
      if not dataCadastros.sqlUpdate.IsEmpty then
      while not dataCadastros.sqlUpdate.Eof do
      begin
        Qtde := dataCadastros.sqlUpdate.FieldByName('prf_qtde').AsFloat;
        Pendencia := dataCadastros.sqlUpdate.FieldByName('prf_qtdepend').AsFloat;
        // quantos kit completa este item
        qcompl := ItemKitCompleto(Qtde, Pendencia , dQtdeKit);
        if minKit > qcompl then
            minkit :=  qcompl;
        dataCadastros.sqlUpdate.Next;
      end;
      result := minkit;
      if (dQtdeKit-minkit)>=0 then
      begin
        dataCadastros.sqlUpdate.Close;
        DataCadastros.SqlUpdate.sql.text :='update PED_IT01 set PRF_QTDEPEND  = '+FloatToSQL(dQtdeKit-minkit) +' , PRF_DTPENDENCIA = CURRENT_TIMESTAMP ' + 'where PRF_REGISTRO =  '+ IntToStr(registro) ;
        dataCadastros.sqlUpdate.Execsql;
        dataCadastros.sqlUpdate.Close;
      end;
    end;
  end;
end;

procedure ReordenarItens(SqlCdsPedidoItem: TClientDataSet);
var
  rec : integer;
begin
  SqlCdsPedidoItem.Addindex('idxSequencia', 'PRF_SEQUENCIA; PRF_REGISTRO', []);
  SqlCdsPedidoItem.IndexName := 'idxSequencia';
  SqlCdsPedidoItem.DisableControls;
  SqlCdsPedidoItem.First;
  rec := 0;
  while not SqlCdsPedidoItem.Eof do
  begin
    Inc(rec);
    DBInicio.ExecSql('UPDATE PED_IT01 SET PRF_SEQUENCIA = ' + IntToStr(rec) + ' WHERE PRF_REGISTRO =  ' + SqlCdsPedidoItem.FieldByName('PRF_REGISTRO').AsString );
    SqlCdsPedidoItem.Next;
  end;
  SqlCdsPedidoItem.IndexName := '';
  SqlCdsPedidoItem.DeleteIndex('idxSequencia');

  SqlCdsPedidoItem.Close;
  SqlCdsPedidoItem.Open;
  SqlCdsPedidoItem.EnableControls;
end;



end.

