{**************************************************************************
| Programa.....: Database - Nome formulario  Datamodulo
| Objetivo.....: Administração das Tabelas do sistema
| Analista.....: Márcio Neu Pacheco
| Programador..: Márcio
|
| Comentários:
|
| Criação..........: Ago/98
| Ultima Alteração.: Jan/03
| Alterado por.....: Márcio
|**************************************************************************}
unit Database;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db,DBTables;

type
  TDataModulo = class(TDataModule)
    DsTransport: TDataSource;
    TbTransport: TTable;
    TbBanco: TTable;
    Dsbanco: TDataSource;
    TbCtAnalise: TTable;
    DsCtAnalise: TDataSource;
    TbRepres: TTable;
    TbCliente: TTable;
    TbRegiao: TTable;
    TbRegiaoREG_CODIGO: TStringField;
    TbRegiaoREG_DESCRI: TStringField;
    DsRegiao: TDataSource;
    DsCliente: TDataSource;
    DsRepres: TDataSource;
    DsIRRF: TDataSource;
    TbIRRF: TTable;
    DsRecParce: TDataSource;
    DsReceber: TDataSource;
    TbReceber: TTable;
    TbPrdLinha: TTable;
    TbPrdLinhaLIN_CODIGO: TStringField;
    TbPrdLinhaLIN_DESCRI: TStringField;
    DsPrdLinha: TDataSource;
    DsPrdClassIPI: TDataSource;
    TbPrdTipo: TTable;
    TbPrdTipoPTI_CODIGO: TStringField;
    TbPrdTipoPTI_DESCRI: TStringField;
    DsPrdTipo: TDataSource;
    TbPrdGrupo: TTable;
    DsPrdGrupo: TDataSource;
    DsFornec: TDataSource;
    DsProduto: TDataSource;
    TbProduto: TTable;
    TbFornec: TTable;
    TbEveRepres: TTable;
    DsEveRepres: TDataSource;
    TbEvento: TTable;
    DsEvento: TDataSource;
    TbPagParce: TTable;
    DsPagParce: TDataSource;
    DsPagar: TDataSource;
    TbRecParce: TTable;
    TbPagar: TTable;
    TbPrdClassIPI: TTable;
    DsRepAux: TDataSource;
    TbRepAux: TTable;
    TbRepAuxREP_CODIGO: TStringField;
    TbRepAuxREP_NOME: TStringField;
    DTBAdjutor: TDatabase;
    DsEmpresa: TDataSource;
    TbEmpresa: TTable;
    TbProdutoPRD_FISICO_CC: TFloatField;
    TbProdutoPRD_ANTECIPADO_CC: TFloatField;
    TbEmbalagem: TTable;
    DsEmbalagem: TDataSource;
    DsPedidos: TDataSource;
    TbPedidos: TTable;
    TbTranspAux: TTable;
    DsTranspAux: TDataSource;
    DsParcelas: TDataSource;
    DsPedItem: TDataSource;
    TbPedItem: TTable;
    DsOperFisc: TDataSource;
    TbOperFisc: TTable;
    TbCtAnaliseCCT_CODIGO: TStringField;
    TbCtAnaliseCCT_DESCRI: TStringField;
    TbCtAnaliseCCT_TIPO: TStringField;
    TbCtAnaliseCCT_CONTA: TStringField;
    TbCtAnaliseEMP_CODIGO: TStringField;
    TbClienteCLI_CODIGO: TStringField;
    TbClienteCLI_RAZAO: TStringField;
    TbClienteREG_CODIGO: TStringField;
    TbClienteCLI_ATIVIDADE: TStringField;
    TbClienteCLI_CIDADE: TStringField;
    TbClienteCLI_CEP: TStringField;
    TbClienteCLI_CXPOST: TStringField;
    TbClienteCLI_EMAIL: TStringField;
    TbClienteCLI_FONE: TStringField;
    TbClienteCLI_FAX: TStringField;
    TbClienteTRP_CODIGO: TStringField;
    TbClienteCLI_CGC: TStringField;
    TbClienteCLI_CONTATO: TStringField;
    TbClienteCLI_FUNCONT: TStringField;
    TbClienteREP_CODIGO: TStringField;
    TbClienteCLI_DTULTCOM: TDateTimeField;
    TbClienteCLI_CIDENTR: TStringField;
    TbClienteCLI_CEPENTR: TStringField;
    TbClienteCLI_CIDFAT: TStringField;
    TbClienteCLI_CEPFAT: TStringField;
    TbClienteCLI_UF: TStringField;
    TbClienteCLI_UFENTR: TStringField;
    TbClienteCLI_UFFAT: TStringField;
    TbClienteEMP_CODIGO: TStringField;
    TbEventoEVE_CODIGO: TStringField;
    TbEventoEVE_DESCRI: TStringField;
    TbEventoEVE_TIPODC: TStringField;
    TbEventoEVE_IRRF: TStringField;
    TbEventoEVE_SITUAC: TStringField;
    TbEventoEMP_CODIGO: TStringField;
    TbEveRepresERP_CODIGO: TStringField;
    TbEveRepresERP_TIPO: TStringField;
    TbEveRepresERP_DATA: TDateTimeField;
    TbEveRepresERP_COMPL: TStringField;
    TbEveRepresERP_IMPOSTO: TStringField;
    TbEveRepresEVE_CODIGO: TStringField;
    TbEveRepresREP_CODIGO: TStringField;
    TbEveRepresEMP_CODIGO: TStringField;
    TbFornecFOR_RAZAO: TStringField;
    TbFornecFOR_ENDERE: TStringField;
    TbFornecFOR_CIDADE: TStringField;
    TbFornecFOR_UF: TStringField;
    TbFornecFOR_CEP: TStringField;
    TbFornecFOR_CONTATO: TStringField;
    TbFornecFOR_FONE: TStringField;
    TbFornecFOR_FAX: TStringField;
    TbFornecFOR_EMAIL: TStringField;
    TbFornecFOR_FONCONT: TStringField;
    TbFornecFOR_FAXCONT: TStringField;
    TbFornecFOR_OBS: TStringField;
    TbFornecEMP_CODIGO: TStringField;
    TbProdutoPRD_CODIGO: TStringField;
    TbProdutoPRD_DESCRI: TStringField;
    TbProdutoPGR_CODIGO: TStringField;
    TbProdutoPTI_CODIGO: TStringField;
    TbProdutoIPI_CODIGO: TStringField;
    TbProdutoPRD_ALIQICM: TFloatField;
    TbProdutoLIN_CODIGO: TStringField;
    TbProdutoPRD_COMPL: TStringField;
    TbProdutoPRD_MINIMO: TFloatField;
    TbProdutoPRD_PCUSTO: TFloatField;
    TbProdutoPRD_PVENDA: TFloatField;
    TbProdutoPRD_PMEDIO: TFloatField;
    TbProdutoPRD_ESTOQUE: TFloatField;
    TbProdutoPRD_SAIDA: TFloatField;
    TbProdutoPRD_PENDENTE: TFloatField;
    TbProdutoFOR_CODIGO: TStringField;
    TbProdutoPRD_ENTRADA: TFloatField;
    TbProdutoPRD_MAXIMO: TFloatField;
    TbProdutoPRD_ICMSUBS: TFloatField;
    TbProdutoPRD_UTILCONV: TBooleanField;
    TbProdutoPRD_UNDCOMP: TStringField;
    TbProdutoPRD_PESOKg: TFloatField;
    TbProdutoPRD_FATORC: TFloatField;
    TbProdutoPRD_DIVMULT: TStringField;
    TbProdutoEMP_CODIGO: TStringField;
    TbReceberCLI_CODIGO: TStringField;
    TbReceberREP_CODIGO: TStringField;
    TbReceberPED_CODIGO: TStringField;
    TbReceberFAT_DTEMIS: TDateTimeField;
    TbReceberFAT_ALIQUOTA: TFloatField;
    TbReceberFAT_OBSLIVRO: TStringField;
    TbReceberFAT_OPERUF: TStringField;
    TbReceberFAT_LIVRO: TBooleanField;
    TbReceberEMP_CODIGO: TStringField;
    TbPagarFOR_CODIGO: TStringField;
    TbPagarPAG_TIPO: TStringField;
    TbPagarPAG_DTEMIS: TDateTimeField;
    TbPagarCCT_CODIGO: TStringField;
    TbPagarPAG_VLNOTA: TFloatField;
    TbPagarPAG_BASEICMS: TFloatField;
    TbPagarPAG_ALIQICMS: TFloatField;
    TbPagarPAG_BASEIPI: TFloatField;
    TbPagarPAG_VL_IPI: TFloatField;
    TbPagarPAG_FAVORECIDO: TStringField;
    TbPagarPAG_LIVRO: TBooleanField;
    TbPagarEMP_CODIGO: TStringField;
    TbPedidosREP_CODIGO: TStringField;
    TbPedidosPED_DTENTRADA: TDateTimeField;
    TbPedidosPED_COMIS1: TFloatField;
    TbPedidosPED_COMIS2: TFloatField;
    TbPedidosPCL_CODIGO: TStringField;
    TbPedidosPED_DESCTOVL: TFloatField;
    TbPedidosPED_DESCTOPC: TFloatField;
    TbPedidosTRP_CODIGO: TStringField;
    TbPedidosPED_FRETE: TStringField;
    TbPedidosTRP_REDESP: TStringField;
    TbPedidosPED_OBSNOTA: TStringField;
    TbPedidosPED_VLTOTAL: TFloatField;
    TbPedidosPED_VLFATURADO: TFloatField;
    TbPedidosPED_FATURAS: TStringField;
    TbPedidosPED_SITCRED: TStringField;
    TbPedidosPED_DTLIM_ATD: TDateTimeField;
    TbPedidosPED_PRIORIDADE: TStringField;
    TbPedidosEMP_CODIGO: TStringField;
    TbPrdClassIPIIPI_CODIGO: TStringField;
    TbPrdClassIPIEMP_CODIGO: TStringField;
    TbPrdGrupoPGR_CODIGO: TStringField;
    TbPrdGrupoPGR_DESCRI: TStringField;
    TbPrdGrupoEMP_CODIGO: TStringField;
    TbPrdTipoEMP_CODIGO: TStringField;
    TbPrdLinhaEMP_CODIGO: TStringField;
    TbRecParceFPC_NUMER: TStringField;
    TbRecParceBAN_CODIGO: TStringField;
    TbRecParceFPC_COBNUM: TStringField;
    TbRecParceFPC_COBTIPO: TStringField;
    TbRecParceFPC_DESCTO: TFloatField;
    TbRecParceFPC_DTDESC: TDateTimeField;
    TbRecParceFPC_VENCTO: TDateTimeField;
    TbRecParceFPC_PAGTO: TDateTimeField;
    TbRecParceFPC_VLPARC: TFloatField;
    TbRecParceFPC_VLPAGO: TFloatField;
    TbRecParceFPC_OBS: TStringField;
    TbRecParceFPC_SITPAG: TBooleanField;
    TbRecParceEMP_CODIGO: TStringField;
    TbRegiaoEMP_CODIGO: TStringField;
    TbRepresREP_CODIGO: TStringField;
    TbRepresREP_GRUPO: TStringField;
    TbRepresREG_CODIGO: TStringField;
    TbRepresREP_FUNCAO: TStringField;
    TbRepresREP_SUPERVISAO: TStringField;
    TbRepresREP_RAZAO: TStringField;
    TbRepresREP_NOME: TStringField;
    TbRepresREP_ENDERE: TStringField;
    TbRepresREP_CIDADE: TStringField;
    TbRepresREP_UF: TStringField;
    TbRepresREP_CEP: TStringField;
    TbRepresREP_FONE: TStringField;
    TbRepresREP_FAX: TStringField;
    TbRepresREP_EMAIL: TStringField;
    TbRepresREP_TIPO: TStringField;
    TbRepresREP_SITUACAO: TStringField;
    TbRepresREP_QUOTA: TFloatField;
    TbRepresREP_NDEPEND: TSmallintField;
    TbRepresREP_DTNASC: TDateTimeField;
    TbRepresREP_INSC: TStringField;
    TbRepresREP_CGC: TStringField;
    TbRepresEMP_CODIGO: TStringField;
    TbTranspAuxTRP_CODIGO: TStringField;
    TbTranspAuxTRP_RAZAO: TStringField;
    TbBancoBAN_CODIGO: TStringField;
    TbBancoBAN_RAZAO: TStringField;
    TbBancoBAN_CODAGE: TStringField;
    TbBancoBAN_ENDERE: TStringField;
    TbBancoBAN_CIDADE: TStringField;
    TbBancoBAN_UF: TStringField;
    TbBancoBAN_FONE: TStringField;
    TbBancoBAN_FAX: TStringField;
    TbBancoBAN_CEP: TStringField;
    TbBancoBAN_CONTATO: TStringField;
    TbBancoBAN_OBS: TStringField;
    TbBancoEMP_CODIGO: TStringField;
    TbFornecFOR_CGC: TStringField;
    TbFornecFOR_INSC: TStringField;
    DsPrdManut: TDataSource;
    TbPrdManut: TTable;
    TbClienteCLI_DTINICIO: TDateTimeField;
    TbClienteCLI_PESSOA: TStringField;
    DsSaldoBanco: TDataSource;
    TbSaldoBanco: TTable;
    TbSaldoBancoSAB_CODIGO: TStringField;
    TbSaldoBancoBAN_CODIGO: TStringField;
    TbSaldoBancoSAB_DIA: TDateTimeField;
    TbSaldoBancoSAB_SALDO: TFloatField;
    TbSaldoBancoSAB_BLOQUEADO: TFloatField;
    TbSaldoBancoSAB_APLICADO: TFloatField;
    TbSaldoBancoSAB_TIPOAPL: TStringField;
    TbSaldoBancoSAB_OBS: TStringField;
    TbSaldoBancoBAN_APELIDO_LK: TStringField;
    DsFluxoCaixa: TDataSource;
    TbFluxoCaixa: TTable;
    TbFluxoCaixaFLU_DIA: TDateTimeField;
    TbFichaTec: TTable;
    DsFichaTec: TDataSource;
    TbProdutoPRD_REFER: TStringField;
    DsFichaTecIten: TDataSource;
    TbFichaTecIten: TTable;
    TbReceberPCL_CODIGO: TStringField;
    TbParcelas: TTable;
    TbBancoBAN_DNAS_CONT: TDateTimeField;
    TbBancoBAN_EMAIL: TStringField;
    TbBancoBAN_HOME: TStringField;
    TbFornecFOR_HOME: TStringField;
    TbFornecFOR_EMAILCONT: TStringField;
    TbFornecFOR_CODIGO: TStringField;
    TbClienteCLI_HOME: TStringField;
    TbRepresREP_OBS: TMemoField;
    DsOrdCompItem: TDataSource;
    TbOrdCompItem: TTable;
    DsOrdCompra: TDataSource;
    TbOrdCompra: TTable;
    DsCotaItem: TDataSource;
    TbCotaItem: TTable;
    DsCotacao: TDataSource;
    TbCotacao: TTable;
    TbCotaItemPRD_DESCRI_LK: TStringField;
    TbCotaItemCIT_TOTAL_CC: TFloatField;
    TbOrdCompItemOCI_TOTAL_CC: TFloatField;
    TbCotacaoCOT_CODIGO: TStringField;
    TbCotacaoCOT_DATA: TDateTimeField;
    TbCotacaoCOT_FRETE: TStringField;
    TbCotacaoCOT_PRAZOPGTO: TStringField;
    TbCotacaoCOT_OBS: TMemoField;
    TbCotacaoEMP_CODIGO: TStringField;
    TbCotaItemCOT_CODIGO: TStringField;
    TbCotaItemPRD_REFER: TStringField;
    TbCotaItemEMP_CODIGO: TStringField;
    TbOrdCompraOCP_CODIGO: TStringField;
    TbOrdCompraCOT_CODIGO: TStringField;
    TbOrdCompraFOR_CODIGO: TStringField;
    TbOrdCompraOCP_DTMAXIMA: TDateTimeField;
    TbOrdCompraOCP_DTEMIS: TDateTimeField;
    TbOrdCompraOCP_DTMINIMA: TDateTimeField;
    TbOrdCompraOCP_FRETE: TStringField;
    TbOrdCompraOCP_ICMS: TFloatField;
    TbOrdCompraOCP_IPI: TFloatField;
    TbOrdCompraTRP_CODIGO: TStringField;
    TbOrdCompraOCP_PRAZOPGTO: TStringField;
    TbOrdCompraOCP_DESCTO: TFloatField;
    TbOrdCompraEMP_CODIGO: TStringField;
    TbOrdCompItemOCP_CODIGO: TStringField;
    TbOrdCompItemOCI_QTDE: TFloatField;
    TbOrdCompItemPRD_REFER: TStringField;
    TbOrdCompItemOCI_IPI: TFloatField;
    TbOrdCompItemEMP_CODIGO: TStringField;
    TbOrdCompraOCP_TOTAL: TFloatField;
    TbCotacaoFOR_CODIGO: TStringField;
    TbCotacaoFOR_DESCRI_LK: TStringField;
    TbOrdCompraFOR_DESCRI_LK: TStringField;
    TbOrdCompraFOR_FONCONT_LK: TStringField;
    TbCotacaoFOR_FONE_LK: TStringField;
    TbPedidosCLI_CODIGO: TStringField;
    TbPedItemPRD_CODIGO: TStringField;
    TbPedItemPRF_QTDE: TFloatField;
    TbPedItemPRF_PRECO: TFloatField;
    TbPedItemEMP_CODIGO: TStringField;
    TbPedItemPRD_REFER: TStringField;
    TbPedItemPRF_TOTAL_CC: TFloatField;
    TbEmbalagemPED_CODIGO: TStringField;
    TbEmbalagemPRD_CODIGO: TStringField;
    TbEmbalagemPEB_QTDE: TFloatField;
    TbEmbalagemEMP_CODIGO: TStringField;
    TbEmbalagemPRD_REFER: TStringField;
    TbEmbalagemPEB_PRECO: TFloatField;
    DsPrdPend: TDataSource;
    TbPrdPend: TTable;
    TbPrdPendPRD_REFER: TStringField;
    TbPrdPendOCP_CODIGO: TStringField;
    TbPrdPendPPE_QTDE: TFloatField;
    TbPrdPendPPE_DATA: TDateTimeField;
    TbClienteCLI_PORTE: TStringField;
    TbClienteCLI_BAIRRO: TStringField;
    TbOrdCompItemOCI_SITUACAO: TStringField;
    TbProdutoPRD_UND: TStringField;
    TbCotaItemCIT_REG: TAutoIncField;
    TbPrdPendPPE_REG: TAutoIncField;
    TbPagarPAG_SERIE: TStringField;
    TbCotacaoCOT_STATUS: TStringField;
    TbOrdCompraOCP_STATUS: TStringField;
    TbPedItemPRF_SITUACAO: TStringField;
    TbProdutoPRD_EMBALA: TStringField;
    TbProdutoPRD_CARACT: TMemoField;
    TbPrdManutPRD_REFER: TStringField;
    TbPrdManutPES_TIPO: TStringField;
    TbPrdManutPES_QTDE: TFloatField;
    TbPrdManutPES_NUMDOC: TStringField;
    TbPrdManutPES_TIPDOC: TStringField;
    TbPrdManutPES_DATA: TDateTimeField;
    TbPrdManutEMP_CODIGO: TStringField;
    TbPrdManutPES_ORIGEM: TStringField;
    TbPrdManutPES_VALOR: TFloatField;
    DsPagItens: TDataSource;
    TbPagItens: TTable;
    TbPagItensPAG_NUMDOC: TStringField;
    TbPagItensPRD_CODIGO: TStringField;
    TbPagItensPRD_REFER: TStringField;
    TbPagItensPRD_DESCRI_LK: TStringField;
    TbPagItensPAT_TOTAL_CC: TFloatField;
    TbPagItensOCP_CODIGO: TStringField;
    TbTmpNfEnt: TTable;
    DsTmpNfEnt: TDataSource;
    TbCotacaoCOT_ENTREGA: TDateTimeField;
    TbTmpNfEntREG: TAutoIncField;
    TbTmpNfEntPAG_NUMDOC: TStringField;
    TbTmpNfEntPRD_REFER: TStringField;
    TbTmpNfEntPRD_CODIGO: TStringField;
    TbTmpNfEntPAT_QTDE: TFloatField;
    TbTmpNfEntPAT_IPI: TFloatField;
    TbTmpNfEntPRD_DESCRI_LK: TStringField;
    TbTmpNfEntPAT_TOTAL_CC: TFloatField;
    TbTmpNfEntPAT_PRECO: TFloatField;
    TbRecParceFPC_STATUS: TStringField;
    TbReceberFAT_CODIGO: TStringField;
    TbRecParceFAT_CODIGO: TStringField;
    DsRecItem: TDataSource;
    TbRecItem: TTable;
    TbPagarPAG_CODIGO: TStringField;
    TbPagarPAG_OBS: TStringField;
    TbParcelasPCL_CODIGO: TStringField;
    TbParcelasPCL_NOME: TStringField;
    TbParcelasPCL_DESCTO: TFloatField;
    TbParcelasPCL_MULTA: TFloatField;
    TbParcelasPCL_JUROS: TFloatField;
    TbParcelasPCL_NPARCELAS: TSmallintField;
    TbParcelasPCL_DIASENTREP: TSmallintField;
    TbParcelasPCL_MANTERDIA: TBooleanField;
    TbParcelasPCL_CARENC_PRI: TSmallintField;
    TbParcelasPCL_OBS: TStringField;
    TbParcelasPCL_DISPONIVEL: TBooleanField;
    TbIRRFIR_TETO1: TFloatField;
    TbIRRFIR_TETO2: TFloatField;
    TbIRRFIR_TETO3: TFloatField;
    TbIRRFIR_ALIQ1: TFloatField;
    TbIRRFIR_ALIQ2: TFloatField;
    TbIRRFIR_ALIQ3: TFloatField;
    TbIRRFIR_DEDU1: TFloatField;
    TbIRRFIR_DEDU2: TFloatField;
    TbIRRFIR_DEDU3: TFloatField;
    TbIRRFIR_JURIDI: TFloatField;
    TbIRRFIR_DEPEND: TFloatField;
    TbIRRFEMP_CODIGO: TStringField;
    TbBancoBAN_JUROMES: TFloatField;
    TbCotaItemCIT_QTDE: TFloatField;
    TbCotaItemCIT_PRECO: TFloatField;
    TbCotaItemCIT_IPI: TFloatField;
    TbCotacaoCOT_ICMS: TFloatField;
    TbCotacaoCOT_IPI: TFloatField;
    TbCotacaoCOT_DESCTO: TFloatField;
    TbCotacaoCOT_TOTAL: TFloatField;
    TbEveRepresERP_VALOR: TFloatField;
    TbReceberFAT_QTDITEM: TFloatField;
    TbReceberFAT_VL_LIQ: TFloatField;
    TbReceberFAT_VLFAT: TFloatField;
    TbReceberFAT_VLNCOMIS: TFloatField;
    TbReceberFAT_COMIS1: TFloatField;
    TbReceberFAT_COMIS2: TFloatField;
    TbReceberFAT_COMIS3: TFloatField;
    TbReceberFAT_BASEICMS: TFloatField;
    TbFluxoCaixaFLU_RECEBE: TFloatField;
    TbFluxoCaixaFLU_PAGAR: TFloatField;
    TbFluxoCaixaFLU_BANCO: TFloatField;
    TbFluxoCaixaFLU_SALDO: TFloatField;
    TbFluxoCaixaFLU_ACUMULO: TFloatField;
    TbPrdClassIPIIPI_ALIQ: TFloatField;
    TbPagItensPAT_QTDE: TFloatField;
    TbPagItensPAT_PRECO: TFloatField;
    TbPagItensPAT_IPI: TFloatField;
    TbIRRFIR_MES: TStringField;
    TbRecItemFAT_CODIGO: TStringField;
    TbRecItemPRD_CODIGO: TStringField;
    TbRecItemPRD_REFER: TStringField;
    TbRecItemFIT_QTDE: TFloatField;
    TbRecItemFIT_PRECO: TFloatField;
    TbRecItemEMP_CODIGO: TStringField;
    DsForXProd: TDataSource;
    TbForXProd: TTable;
    DsICMS: TDataSource;
    TbICMS: TTable;
    TbICMSICM_LOCAL: TStringField;
    TbICMSICM_ALIQ: TFloatField;
    TbICMSICM_ORIGEM: TStringField;
    TbICMSICM_DESTINO: TStringField;
    TbPedItemFATURA_CI: TBooleanField;
    TbBancoTESTE_CC: TFloatField;
    TbPagParcePAG_CODIGO: TStringField;
    TbPagParcePPC_NUMER: TStringField;
    TbPagParcePPC_BANCO: TStringField;
    TbPagParcePPC_VENCTO: TDateTimeField;
    TbPagParcePPC_PAGTO: TDateTimeField;
    TbPagParcePPC_VLPARC: TFloatField;
    TbPagParcePPC_VLPAGO: TFloatField;
    TbPagParcePPC_OBS: TStringField;
    TbPagParcePPC_SITPAG: TBooleanField;
    TbPagParceEMP_CODIGO: TStringField;
    TbRecParceCLI_CODIGO: TStringField;
    TbFichaTecPRD_REFER: TStringField;
    TbFichaTecFTC_TUP: TFloatField;
    TbFichaTecFTC_DCMODE1: TStringField;
    TbFichaTecFTC_DCMODE2: TStringField;
    TbFichaTecFTC_DCMODE3: TStringField;
    TbFichaTecFTC_DCMODE4: TStringField;
    TbFichaTecFTC_DCMODE5: TStringField;
    TbFichaTecEMP_CODIGO: TStringField;
    TbFichaTecItenPRD_REFER: TStringField;
    TbFichaTecItenFTI_UC: TFloatField;
    TbFichaTecItenFTI_MODE1: TStringField;
    TbFichaTecItenFTI_MODE2: TStringField;
    TbFichaTecItenFTI_MODE3: TStringField;
    TbFichaTecItenFTI_MODE4: TStringField;
    TbFichaTecItenFTI_MODE5: TStringField;
    TbPagParceFOR_CODIGO: TStringField;
    TbPagParceCCT_CODIGO: TStringField;
    TbFichaTecItenPRD_REFER_ITENS: TStringField;
    TbPedItemPED_CODIGO: TStringField;
    TbPedItemPRF_IPIALIQ: TFloatField;
    TbPedidosPED_CODIGO: TStringField;
    TbRecItemFIT_IPIALIQ: TFloatField;
    TbPedidosPED_SITUACAO: TStringField;
    TbPedidosPED_COMIS3: TFloatField;
    TbPedidosPED_DTSAIDA: TDateTimeField;
    TbTransportTRP_CODIGO: TStringField;
    TbTransportTRP_RAZAO: TStringField;
    TbTransportTRP_ENDERE: TStringField;
    TbTransportTRP_CIDADE: TStringField;
    TbTransportTRP_UF: TStringField;
    TbTransportTRP_CEP: TStringField;
    TbTransportTRP_CGC: TStringField;
    TbTransportTRP_INSC: TStringField;
    TbTransportTRP_FONE: TStringField;
    TbTransportTRP_FAX: TStringField;
    TbTransportTRP_EMAIL: TStringField;
    TbTransportTRP_CONTATO: TStringField;
    TbTransportEMP_CODIGO: TStringField;
    TbTransportTRP_HOME: TStringField;
    TbForXProdFOR_CODIGO: TStringField;
    TbForXProdEMP_CODIGO: TStringField;
    TbCliAtividade: TTable;
    DsCliAtividade: TDataSource;
    TbCliAtividadeRCL_CODIGO: TStringField;
    TbCliAtividadeRCL_ATIVIDADE: TStringField;
    TbCliAtividadeEMP_CODIGO: TStringField;
    TbPrdClassIPIIPI_APELIDO: TStringField;
    TbParametros: TTable;
    DsParametros: TDataSource;
    TbRecParceREP_CODIGO: TStringField;
    TbRecParceFPC_DTEMIS: TDateTimeField;
    TbOperFiscOPE_SUBCOD: TStringField;
    TbOperFiscOPE_DESCRI: TStringField;
    TbOperFiscOPE_TRIBICMS: TBooleanField;
    TbOperFiscOPE_TRIBIPI: TBooleanField;
    TbOperFiscOPE_REDU_ICM: TFloatField;
    TbOperFiscOPE_REDU_IPI: TFloatField;
    TbOperFiscOPE_IPINABASEICMS: TBooleanField;
    TbOperFiscOPE_ESTATISTICA: TBooleanField;
    TbOperFiscOPE_IMP_AVISO: TBooleanField;
    TbOperFiscOPE_NATUREZA: TStringField;
    TbOperFiscEMP_CODIGO: TStringField;
    TbProdutoPRD_DTPCUSTO: TDateTimeField;
    TbProdutoPRD_TABPRECO: TStringField;
    TbPedidosPED_FRETE2: TStringField;
    TbClienteCLI_INSC: TStringField;
    TbEmpresaEMP_CODIGO: TStringField;
    TbEmpresaEMP_RAZAO: TStringField;
    TbEmpresaEMP_ENDERE: TStringField;
    TbEmpresaEMP_BAIRRO: TStringField;
    TbEmpresaEMP_CIDADE: TStringField;
    TbEmpresaEMP_UF: TStringField;
    TbEmpresaEMP_CEP: TStringField;
    TbEmpresaEMP_FONE: TStringField;
    TbEmpresaEMP_FAX: TStringField;
    TbEmpresaEMP_EMAIL: TStringField;
    TbEmpresaEMP_CGC: TStringField;
    TbEmpresaEMP_INSC: TStringField;
    TbEmpresaEMP_HOME: TStringField;
    TbProdutoPRD_GARANTIA: TStringField;
    TbEmpresaEMP_CXPOSTAL: TStringField;
    TbPedidosPED_OBSGERAL01: TStringField;
    TbPedidosPED_OBSGERAL02: TStringField;
    TbPedidosPED_OBSGERAL03: TStringField;
    TbParametrosPMT_NOSSOCODIGO: TStringField;
    TbParametrosPMT_COMIS_GRP: TBooleanField;
    TbParametrosPMT_COMIS_REP: TFloatField;
    TbParametrosPMT_COMIS_SUP: TFloatField;
    TbParametrosPMT_COMIS_GER: TFloatField;
    TbParametrosPMT_PAGTO_COM_TP: TStringField;
    TbParametrosPMT_COMIS_QUINZ: TBooleanField;
    TbParametrosPMT_1QZ_DIAS: TStringField;
    TbParametrosPMT_2QZ_DIAS: TStringField;
    TbParametrosPMT_BORDERO_COM: TStringField;
    TbParametrosPMT_NUMER_PEDIDO: TStringField;
    TbParametrosPMT_DPL_IPI_NA1D: TBooleanField;
    TbParametrosPMT_ATUALIZ_ESTONF: TBooleanField;
    TbParametrosPMT_QTDE_DECIMAIS: TStringField;
    TbParametrosPMT_PED_IMPORTANTE: TMemoField;
    TbParametrosPMT_CAB_TABPRECO: TStringField;
    TbParametrosPMT_OBS_BLOQ1: TStringField;
    TbParametrosPMT_OBS_BLOQ2: TStringField;
    TbParametrosPMT_OBS_BLOQ3: TStringField;
    TbParametrosPMT_LOC_PAGTO: TStringField;
    TbParametrosPMT_IRRF: TFloatField;
    DTBAdjMaster: TDatabase;
    TbPedidosPED_EXPEDICAO: TStringField;
    TbRepAuxREP_SUPERVISAO: TStringField;
    TbParametrosPMT_UNFORMULA: TSmallintField;
    TbRecParceFPC_IMPDUP: TStringField;
    TbPedItemPRF_PRDDESCRI: TStringField;
    TbClienteCLI_FONENTR: TStringField;
    TbClienteCLI_ENDERE: TStringField;
    TbClienteCLI_ENDENTR: TStringField;
    TbClienteCLI_ENDFAT: TStringField;
    TbOrdCompraOCP_OBS1: TStringField;
    TbOrdCompraOCP_OBS2: TStringField;
    TbPrdGrupoPGR_COMISS: TStringField;
    TbEmbalagemPRD_DESCRI_LK: TStringField;
    TbOperFiscOPE_SEMVLCOM: TBooleanField;
    TbFatorCustos: TTable;
    DsFatorCustos: TDataSource;
    TbFatorCustosVCT_CLASSE: TStringField;
    TbFatorCustosVCT_TUP: TFloatField;
    TbFatorCustosVCT_TMAQ: TFloatField;
    TbFatorCustosVCT_DF: TFloatField;
    TbFatorCustosVCT_DV: TFloatField;
    TbFatorCustosVCT_ICMS: TFloatField;
    TbFatorCustosVCT_FED: TFloatField;
    TbFatorCustosVCT_DPG: TFloatField;
    TbFatorCustosVCT_LV: TFloatField;
    TbFatorCustosVCT_FIN: TFloatField;
    TbFatorCustosVCT_COMRP: TFloatField;
    TbFatorCustosVCT_COMSP: TFloatField;
    TbFatorCustosVCT_COMGE: TFloatField;
    TbFatorCustosVCT_DESC: TFloatField;
    TbProdutoPRD_FAMILIA: TStringField;
    TbBancoBAN_CONTA: TStringField;
    TbBancoBAN_INSTRUCAO1: TStringField;
    TbBancoBAN_INSTRUCAO2: TStringField;
    TbBancoBAN_CODNOBANCO: TStringField;
    TbBancoBAN_TAM_NONUM: TStringField;
    TbBancoBAN_N_CARTEIRA: TStringField;
    TbBancoBAN_DIGCONTA: TStringField;
    TbParametrosPMT_EMPRESACLASSE: TStringField;
    TbEmpresaEMP_ENDENTR: TStringField;
    TbEmpresaEMP_CIDENTR: TStringField;
    TbEmpresaEMP_UFENTR: TStringField;
    TbEmpresaEMP_CEPENTR: TStringField;
    TbForXProdPRD_REFER: TStringField;
    TbPedItemPRF_VAR1: TFloatField;
    TbPedItemPRF_VAR2: TFloatField;
    TbPedItemPRF_VAR3: TFloatField;
    TbPedItemPRF_VAR4: TFloatField;
    TbPedItemPRF_VAR5: TFloatField;
    TbProdutoPRD_VAR1: TFloatField;
    TbProdutoPRD_VAR2: TFloatField;
    TbProdutoPRD_VAR3: TFloatField;
    TbProdutoPRD_VAR4: TFloatField;
    TbProdutoPRD_VAR5: TFloatField;
    TbPrdManutPES_VAR1: TFloatField;
    TbPrdManutPES_VAR2: TFloatField;
    TbPrdManutPES_VAR3: TFloatField;
    TbPrdManutPES_VAR4: TFloatField;
    TbPrdManutPES_VAR5: TFloatField;
    TbUsers: TTable;
    DsUsers: TDataSource;
    TbPagarPAG_NUMDOC: TStringField;
    TbOrdCompraOCP_REQUERENTE: TStringField;
    TbUsersNOME: TStringField;
    TbUsersSENHA: TStringField;
    TbUsersMENU1_01: TStringField;
    TbUsersMENU1_02: TStringField;
    TbUsersMENU1_03: TStringField;
    TbUsersMENU1_04: TStringField;
    TbUsersMENU1_05: TStringField;
    TbUsersMENU1_06: TStringField;
    TbUsersMENU2_01: TStringField;
    TbUsersMENU2_02: TStringField;
    TbUsersMENU2_03: TStringField;
    TbUsersMENU2_04: TStringField;
    TbUsersMENU3_01: TStringField;
    TbUsersMENU3_02: TStringField;
    TbUsersMENU3_03: TStringField;
    TbUsersMENU3_04: TStringField;
    TbUsersMENU4_01: TStringField;
    TbUsersOP_INCALT: TStringField;
    TbUsersOP_EXCLUI: TStringField;
    TbUsersOP_CONSULTA: TStringField;
    TbUsersOP_RELATORIO: TStringField;
    TbEmpresaEMP_FANTASIA: TStringField;
    TbProdutoPRD_VAR6: TFloatField;
    TbPedItemPRF_VAR6: TFloatField;
    TbPrdManutPES_VAR6: TFloatField;
    TbFichaTecFTC_DCMODE6: TStringField;
    TbFichaTecItenFTI_MODE6: TStringField;
    TbPagItensPAG_CODIGO: TStringField;
    DTBShare: TDatabase;
    TbShare: TTable;
    DsShare: TDataSource;
    TbShareClientes: TStringField;
    TbShareProdutos: TStringField;
    TbShareBancos: TStringField;
    TbShareTransportadoras: TStringField;
    TbShareRepresentantes: TStringField;
    TbShareFornecedores: TStringField;
    TbShareReceber: TStringField;
    TbSharePagar: TStringField;
    TbSharePedidos: TStringField;
    TbShareCotacoes: TStringField;
    TbShareOrdensCompra: TStringField;
    TbSharefichaTecnica: TStringField;
    TbShareOrdemProducao: TStringField;
    TbShareTabelas: TStringField;
    TbFichaTecItenEMP_CODIGO: TStringField;
    TbParametrosPMT_MDL_OP: TStringField;
    TbPedidosPED_DTEMBARQUE: TDateTimeField;
    TbCentroCusto: TTable;
    DsCentroCusto: TDataSource;
    TbCentroCustoCEC_CODIGO: TStringField;
    TbCentroCustoCEC_DESCRI: TStringField;
    TbCtAnaliseCEC_CODIGO: TStringField;
    TbFornecCCT_CODIGO: TStringField;
    TbPagParceBAN_CODIGO: TStringField;
    TbBancoBAN_APELIDO: TStringField;
    TbICMSICMS_SUBS: TFloatField;
    TbProdutoPRD_TEMSUB: TStringField;
    TbOperFiscOPE_AGRUPADO: TStringField;
    TbOperFiscOPE_SUBTRIBUTARIA: TBooleanField;
    TbCheque: TTable;
    TbChequeCHQ_CODIGO: TStringField;
    TbChequeCHQ_TOTAL: TFloatField;
    TbChequeCHQ_NOMINAL: TStringField;
    TbChequeCHQ_DATA: TDateTimeField;
    TbChequeCHQ_FINALIZA: TStringField;
    TbChequeBAN_CODIGO: TStringField;
    DsCheque: TDataSource;
    TbChequeItens: TTable;
    TbChequeItensCHQ_CODIGO: TStringField;
    TbChequeItensCHE_FAVORECIDO: TStringField;
    TbChequeItensCHE_NUMDOC: TStringField;
    TbChequeItensCHE_PARCELA: TStringField;
    TbChequeItensCHE_REMOVE: TStringField;
    TbChequeItensCHE_OBS: TStringField;
    TbChequeItensCHE_VENCTO: TDateTimeField;
    TbChequeItensCHE_VLPAGO: TFloatField;
    TbChequeItensPAG_CODIGO: TStringField;
    DsChequeItens: TDataSource;
    TbChequeBAN_NOME: TStringField;
    TbChequeCHQ_IMP: TStringField;
    TbClienteCLI_OBS: TStringField;
    TbClienteCLI_INATIVO: TStringField;
    TbClienteCLI_DTINATIVO: TDateTimeField;
    TbClienteCLI_MOTIVO: TStringField;
    TbProdutoPRD_DCVAR1: TStringField;
    TbProdutoPRD_DCVAR2: TStringField;
    TbProdutoPRD_DCVAR3: TStringField;
    TbProdutoPRD_DCVAR4: TStringField;
    TbProdutoPRD_DCVAR5: TStringField;
    TbProdutoPRD_DCVAR6: TStringField;
    TbParametrosPMT_EANPAIS: TStringField;
    TbParametrosPMT_EANEMPRESA: TStringField;
    TbProdutoPRD_CODBARRA: TStringField;
    TbParametrosPMT_PEDITEMDESC: TBooleanField;
    TbOrdCompItemPRD_DESCRI_CC: TStringField;
    TbProdutoPRD_DESCRI_RES: TStringField;
    TbParametrosPMT_DESCPRODRES: TBooleanField;
    TbParametrosPMT_PRECOCOMIPI: TBooleanField;
    TbCtAnaliseCCT_PROVISAO: TFloatField;
    TbProdutoPRD_SITRIBUT: TStringField;
    TbParametrosPMT_SITRIBUTARIA: TStringField;
    TbFichaTecFTC_PROC1: TStringField;
    TbFichaTecFTC_PROC2: TStringField;
    TbFichaTecFTC_PROC3: TStringField;
    TbFichaTecFTC_PROC4: TStringField;
    TbFichaTecFTC_PROC5: TStringField;
    TbFichaTecFTC_PROC6: TStringField;
    TbFichaTecFTC_PROC7: TStringField;
    TbFichaTecFTC_PROC8: TStringField;
    TbPedidosPED_VLFATBRUTO: TFloatField;
    TbCelula: TTable;
    DsCelula: TDataSource;
    TbCelulaCEL_CODIGO: TStringField;
    TbCelulaCEL_NOME: TStringField;
    TbProdutoPRD_PMATPRI: TFloatField;
    DsComponentes: TDataSource;
    TbComponentes: TTable;
    TbComponentesCCP_CODIGO: TStringField;
    TbComponentesCCP_NOME: TStringField;
    TbComponentesCCP_FUNCAO: TStringField;
    TbComponentesCCP_TUPDIARIO: TFloatField;
    TbComponentesCEL_CODIGO: TStringField;
    TbComponentesCEL_NOME_LK: TStringField;
    DsMetas: TDataSource;
    TbMetas: TTable;
    TbMetasCME_CODIGO: TStringField;
    TbMetasCME_DIASUTEIS: TFloatField;
    TbMetasCME_TUPMETAMES: TFloatField;
    TbMetasCME_TUPACRECENT: TFloatField;
    TbMetasCME_TUPNEGATIVO: TFloatField;
    TbMetasCEL_CODIGO: TStringField;
    TbProdutoPRD_MAOOBRA: TFloatField;
    TbMetasCME_MES_CC: TStringField;
    TbMetasCME_ANO_CC: TStringField;
    TbMetasCEL_NOME_LK: TStringField;
    TbBancoBAN_COD_CART: TStringField;
    TbPedidosPED_DTFATURA: TDateTimeField;
    TbPedidosPED_DESCTOPC2: TFloatField;
    TbParametrosPMT_NF_MARCA: TStringField;
    TbICMSICM_IE_SUBTRIB: TStringField;
    TbPrdGrupoPGR_COM_PERC: TFloatField;
    TbParametrosPMT_COMIS_PROD: TBooleanField;
    TbPedItemPRF_COMIS: TFloatField;
    TbRecItemFIT_COMIS: TFloatField;
    TbMetasCME_TUPREALIZADO: TFloatField;
    TbMetasCME_FATURAMENTO: TFloatField;
    TbMovCel: TTable;
    DsMovCel: TDataSource;
    TbReceberFAT_CANCELADA: TBooleanField;
    TbReceberFAT_BASESUB: TFloatField;
    TbReceberFAT_ICMSRET: TFloatField;
    TbReceberFAT_DESP_ACES: TFloatField;
    TbParametrosSIN_COD_IDENTIF: TStringField;
    TbParametrosSIN_COD_FINALID: TStringField;
    TbParametrosSIN_MODE_NF: TStringField;
    TbParametrosSIN_SERIE_NF: TStringField;
    TbParametrosSIN_SUBSERIE: TStringField;
    TbParametrosSIN_CONTATO: TStringField;
    TbMetasCME_PERCPATICIPA: TFloatField;
    TbRecItemFIT_DESCTO: TFloatField;
    TbRecParceBAN_APELIDO_CC: TStringField;
    TbParametrosPMT_ITENS_PEDIDO: TSmallintField;
    TbReceberFAT_VL_IPI: TFloatField;
    TbParametrosPMT_DESCTO_ITEM: TBooleanField;
    TbPedItemPRF_IDESCTO1: TFloatField;
    TbPedItemPRF_IDESCTO2: TFloatField;
    TbRecItemFIT_SUBSTIT: TFloatField;
    TbMovCelOSV_CODIGO: TStringField;
    TbMovCelCEL_CODIGO: TStringField;
    TbMovCelPRD_REFER: TStringField;
    TbMovCelOSV_EMISSAO: TDateTimeField;
    TbMovCelOSV_QTDE: TFloatField;
    TbMovCelPED_CODIGO: TStringField;
    TbMovCelCEM_DTENTROU: TDateTimeField;
    TbMovCelCEM_DTCONCLUIU: TDateTimeField;
    TbMovCelCEM_PRECOUNIT: TFloatField;
    TbMovCelCEM_TUPUNIT: TFloatField;
    TbMovCelCEM_CELAUX: TBooleanField;
    TbMovCelCEM_TRABALHO: TStringField;
    TbMovCelCEM_TUPTRAB: TFloatField;
    TbMovCelCEL_NOME_LK: TStringField;
    TbMes: TTable;
    DsMes: TDataSource;
    TbMesMES_NUMERO: TStringField;
    TbMesMES_DESCRI: TStringField;
    TbMovCelCME_CODIGO: TStringField;
    TbMovCelVCT_TUP: TFloatField;
    TbBancoBAN_PROTPRAZO: TStringField;
    TbParametrosPMT_CELULAPROD: TBooleanField;
    TbParametrosPMT_PROCESPROD: TBooleanField;
    TbMovCelCEM_SITUACAO: TStringField;
    TbCompMeta: TTable;
    DsCompMeta: TDataSource;
    TbCompMetaCME_CODIGO: TStringField;
    TbCompMetaCCP_CODIGO: TStringField;
    TbCompMetaCEL_CODIGO: TStringField;
    TbCompMetaMEC_TUPDIARIO: TFloatField;
    TbCompMetaMEC_DIAS: TFloatField;
    TbCompMetaCCP_NOME_LK: TStringField;
    TbCompMetaTotal_Tup_CC: TFloatField;
    TbMetasTUP_ARealizar_CC: TFloatField;
    TbMetasCME_TOT_DIAS_COMP: TFloatField;
    TbRepresREP_CELULAR: TStringField;
    TbRepresREP_CONTA: TStringField;
    TbRepresREP_AGENCIA: TStringField;
    TbRepresREP_BANCO: TStringField;
    TbProjetoCaixa: TTable;
    DsProjetoCaixa: TDataSource;
    TbProjetoCaixaPCX_CODIGO: TStringField;
    TbProjetoCaixaPCX_DESCRI: TStringField;
    TbProjetoCaixaPCX_INICIO: TDateTimeField;
    TbProjetoCaixaPCX_FIM: TDateTimeField;
    TbProjetoCaixaPCX_TERMINADO: TStringField;
    TbPagarPCX_CODIGO: TStringField;
    TbPagParcePCX_CODIGO: TStringField;
    TbPagarPAG_PREVISAO: TBooleanField;
    TbReceberCCT_CODIGO: TStringField;
    TbReceberPCX_CODIGO: TStringField;
    TbReceberFAT_OBS: TStringField;
    TbRecParceCCT_CODIGO: TStringField;
    TbReceberFAT_PREVISAO: TBooleanField;
    TbProjetoCaixaPCX_TERMINADO_CC: TStringField;
    TbRecParcePCX_CODIGO: TStringField;
    TbOperFiscOPE_AVISOLEGAL: TStringField;
    TbOperFiscOPE_FRETENABASE: TBooleanField;
    TbRecParceFPC_NPARCELAS: TSmallintField;
    TbEmpresaEMP_EMAILCOMPRAS: TStringField;
    TbEmpresaEMP_EMAILVENDAS: TStringField;
    TbFornecFOR_PRAZOVENDAS: TStringField;
    TbEmpresaEMP_NOMECOMPRADOR: TStringField;
    TbFichaTecFTC_CRIACAO: TDateTimeField;
    TbFichaTecItenFTI_MODIFICADA: TDateTimeField;
    TbFichaTecItenFTI_UCMODIFIC: TFloatField;
    TbRepresREP_BANCOFAVOR: TStringField;
    TbRepAuxREP_FUNCAO: TStringField;
    TbProdutoPRD_VAR7: TFloatField;
    TbProdutoPRD_VAR8: TFloatField;
    TbProdutoPRD_DCVAR7: TStringField;
    TbProdutoPRD_DCVAR8: TStringField;
    TbPedItemPRF_VAR7: TFloatField;
    TbPedItemPRF_VAR8: TFloatField;
    TbPrdManutPES_VAR7: TFloatField;
    TbPrdManutPES_VAR8: TFloatField;
    TbFichaTecFTC_DCMODE7: TStringField;
    TbFichaTecFTC_DCMODE8: TStringField;
    TbFichaTecItenFTI_MODE7: TStringField;
    TbFichaTecItenFTI_MODE8: TStringField;
    TbParametrosPMT_VARIACOES: TBooleanField;
    TbOperFiscOPE_CODIGO: TStringField;
    TbReceberFAT_OPERACAO: TStringField;
    TbPagarPAG_OPERACAO: TStringField;
    TbRepAuxREP_GERENTE: TStringField;
    TbRepresREP_GERENTE: TStringField;
    TbOrdCompItemOCI_PRECO: TFloatField;
    TbMovCelOSV_QTDECONC: TFloatField;
    TbMovCelOSV_QTDEDEFE: TFloatField;
    TbMovCelOSV_VALORPECA: TFloatField;
    TbMovCelOSV_VALORDEFE: TFloatField;
    TbFatorCustosVCT_FIXO: TFloatField;
    TbFatorCustosVCT_COMPLE: TFloatField;
    TbFatorCustosVCT_INDIRETA: TFloatField;
    TbFatorCustosVCT_LUCROUNID: TFloatField;
    TbFatorCustosVCT_PERDA: TFloatField;
    TbFatorCustosVCT_VISTA: TFloatField;
    TbFatorCustosVCT_30D: TFloatField;
    TbFatorCustosVCT_45D: TFloatField;
    TbFatorCustosVCT_60D: TFloatField;
    TbFatorCustosVCT_75D: TFloatField;
    TbFatorCustosVCT_90D: TFloatField;
    TbFichaTecFTC_COMPLE: TFloatField;
    TbFichaTecFTC_INDIRETA: TFloatField;
    TbFichaTecFTC_LUCROUNID: TFloatField;
    TbFichaTecFTC_FIXO: TFloatField;
    TbFichaTecItenFTI_PRECOCUSTO: TFloatField;
    TbMovProduz: TTable;
    DsMovProduz: TDataSource;
    TbMovProduzOSV_CODIGO: TStringField;
    TbMovProduzCEL_CODIGO: TStringField;
    TbMovProduzCEM_DTPRODUZ: TDateTimeField;
    TbMovProduzCEM_QTDE: TFloatField;
    TbMovProduzCEM_DEFEITO: TFloatField;
    TbCelulaCEL_RAZAO: TStringField;
    TbCelulaCEL_ENDE: TStringField;
    TbCelulaCEL_BAIRRO: TStringField;
    TbCelulaCEL_CIDADE: TStringField;
    TbCelulaCEL_INSC: TStringField;
    TbCelulaCEL_FONE1: TStringField;
    TbCelulaCEL_CELULAR: TStringField;
    TbCelulaCEL_FAX: TStringField;
    TbCelulaCEL_OBS: TStringField;
    TbCelulaCEL_CNPJ: TStringField;
    TbCelulaCEL_CEP: TStringField;
    TbFatorCustosVCT_TXTCOND1: TStringField;
    TbFatorCustosVCT_TXTCOND2: TStringField;
    TbFatorCustosVCT_TXTCOND3: TStringField;
    TbFatorCustosVCT_TXTCOND4: TStringField;
    TbFatorCustosVCT_TXTCOND5: TStringField;
    TbFatorCustosVCT_TXTCOND6: TStringField;
    procedure TbFornecBeforeEdit(DataSet: TDataSet);
    procedure TbClienteBeforeEdit(DataSet: TDataSet);
    procedure TbBancoBeforeEdit(DataSet: TDataSet);
    procedure TbTransportBeforeEdit(DataSet: TDataSet);
    procedure TbRegiaoBeforeEdit(DataSet: TDataSet);
    procedure TbRepresBeforeEdit(DataSet: TDataSet);
    procedure TbProdutoBeforeEdit(DataSet: TDataSet);
    procedure TbEventoBeforeEdit(DataSet: TDataSet);
    procedure TbEveRepresBeforeEdit(DataSet: TDataSet);
    procedure TbPrdGrupoBeforeEdit(DataSet: TDataSet);
    procedure TbPrdTipoBeforeEdit(DataSet: TDataSet);
    procedure TbIRRFBeforeEdit(DataSet: TDataSet);
    procedure TbPagarBeforeEdit(DataSet: TDataSet);
    procedure TbPagParceBeforeEdit(DataSet: TDataSet);
    procedure TbReceberBeforeEdit(DataSet: TDataSet);
    procedure TbRecParceBeforeEdit(DataSet: TDataSet);
    procedure TbCtAnaliseAfterCancel(DataSet: TDataSet);
    procedure TbCtAnaliseBeforeEdit(DataSet: TDataSet);
    procedure TbPrdLinhaBeforeEdit(DataSet: TDataSet);
    procedure TbPrdClassIPIBeforeEdit(DataSet: TDataSet);
    procedure DTBAdjutorLogin(Database: TDatabase; LoginParams: TStrings);
    procedure DataModuloCreate(Sender: tObject);
    procedure DataModuloDestroy(Sender: tObject);
    procedure TbEmpresaBeforeEdit(DataSet: TDataSet);
    procedure TbPedidosBeforeEdit(DataSet: TDataSet);
    procedure TbParcelasBeforeEdit(DataSet: TDataSet);
    procedure TbOperFiscBeforeEdit(DataSet: TDataSet);
    procedure TbSaldoBancoBeforeEdit(DataSet: TDataSet);
    procedure TbCotaItemCalcFields(DataSet: TDataSet);
    procedure TbCotacaoBeforeEdit(DataSet: TDataSet);
    procedure TbOrdCompraBeforeEdit(DataSet: TDataSet);
    procedure TbOrdCompItemCalcFields(DataSet: TDataSet);
    procedure TbCotaItemCIT_QTDEChange(Sender: TField);
    procedure TbCotaItemAfterDelete(DataSet: TDataSet);
    procedure TbPagItensCalcFields(DataSet: TDataSet);
    procedure TbTmpNfEntCalcFields(DataSet: TDataSet);
    procedure TbOperFiscPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure TbProdutoAfterScroll(DataSet: TDataSet);
    procedure TbProdutoCalcFields(DataSet: TDataSet);
    procedure TbPedItemCalcFields(DataSet: TDataSet);
    procedure TbReceberAfterScroll(DataSet: TDataSet);
    procedure DTBAdjMasterLogin(Database: TDatabase;
      LoginParams: TStrings);
    procedure TbEmbalagemAfterPost(DataSet: TDataSet);
    procedure TbFatorCustosBeforeEdit(DataSet: TDataSet);
    procedure TbUsersBeforeEdit(DataSet: TDataSet);
    procedure TbOrdCompItemBeforeEdit(DataSet: TDataSet);
    procedure TbCotaItemBeforePost(DataSet: TDataSet);
    procedure DTBShareLogin(Database: TDatabase; LoginParams: TStrings);
    procedure TbICMSBeforeEdit(DataSet: TDataSet);
    procedure TbPedItemBeforeEdit(DataSet: TDataSet);
    procedure TbCentroCustoBeforeEdit(DataSet: TDataSet);
    procedure TbParametrosBeforeEdit(DataSet: TDataSet);
    procedure TbCelulaBeforeEdit(DataSet: TDataSet);
    procedure TbComponentesBeforeEdit(DataSet: TDataSet);
    procedure TbMetasBeforeEdit(DataSet: TDataSet);
    procedure TbMetasCalcFields(DataSet: TDataSet);
    procedure TbRecParceCalcFields(DataSet: TDataSet);
    procedure TbMovCelBeforeEdit(DataSet: TDataSet);
    procedure TbCompMetaCalcFields(DataSet: TDataSet);
    procedure TbCompMetaBeforeEdit(DataSet: TDataSet);
    procedure TbProjetoCaixaBeforeEdit(DataSet: TDataSet);
    procedure TbProjetoCaixaCalcFields(DataSet: TDataSet);
    procedure TbPedItemAfterScroll(DataSet: TDataSet);
    procedure TbOrdCompItemAfterScroll(DataSet: TDataSet);
    procedure TbMovCelAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModulo: TDataModulo;
  WExcluiPend : Boolean;

implementation

uses For0001, Trp0001, Ban0001, Reg0001, Rep0001, Prd0001, Eve0001,
     Evr0001, Prd0002, Prd0003, Prd0004, Prd0005, Tir0001, Pag0001, Pag0002,
     Rec0001, Rec0002, Cct0001, Emp0001, Ped0001,  Pcl0001, Ope0001,
     Sab0001, Ftc0001, Cot0001, OCP0001, Prd0009, Cli0001, ADJ0001,
  DataQuery, Ped0003, Cus0001, Usu0001, Login, Cec0001, ICMS0000, PedItem,
  Ocp0003, Prmd0001, CEL0001, Cel0002, Cel0005, CEL0007, CEL0009,
  PCX0000, NFImprim, GimpCust, Men0001;



{$R *.DFM}

procedure TDataModulo.TbFornecBeforeEdit(DataSet: TDataSet);
begin
  FormFornec.DesabilitaBotoes;
end;


procedure TDataModulo.TbClienteBeforeEdit(DataSet: TDataSet);
begin
  if Assigned(FormCliente)then
     FormCliente.DesabilitaBotoes;
end;


procedure TDataModulo.TbBancoBeforeEdit(DataSet: TDataSet);
begin
  FormBanco.Desabilitabotoes;
end;


procedure TDataModulo.TbTransportBeforeEdit(DataSet: TDataSet);
begin
  FormTransport.Desabilitabotoes;
end;


procedure TDataModulo.TbRegiaoBeforeEdit(DataSet: TDataSet);
begin
  FormRegiao.DesabilitaBotoes;
end;


procedure TDataModulo.TbRepresBeforeEdit(DataSet: TDataSet);
begin
  FormRepres.DesabilitaBotoes;
end;


procedure TDataModulo.TbProdutoBeforeEdit(DataSet: TDataSet);
begin
 //verifica se formulario esta ativo na memoria
  if Assigned(FormProduto)then
     Begin
     FormProduto.DesabilitaBotoes;
     end;
end;


procedure TDataModulo.TbEventoBeforeEdit(DataSet: TDataSet);
begin
  FormEvento.DesabilitaBotoes;
end;


procedure TDataModulo.TbEveRepresBeforeEdit(DataSet: TDataSet);
begin
  FormEveRepres.DesabilitaBotoes;
end;


procedure TDataModulo.TbPrdGrupoBeforeEdit(DataSet: TDataSet);
begin
  FormProdGrupo.DesabilitaBotoes;
end;


procedure TDataModulo.TbPrdTipoBeforeEdit(DataSet: TDataSet);
begin
  FormProdTipo.Desabilitabotoes;
end;


procedure TDataModulo.TbIRRFBeforeEdit(DataSet: TDataSet);
begin
  FormIRRF.DesabilitaBotoes;
end;


procedure TDataModulo.TbPagarBeforeEdit(DataSet: TDataSet);
begin
if Assigned(FormContasPagar)then
 FormContasPagar.DesabilitaBotoes;
end;

procedure TDataModulo.TbRecParceBeforeEdit(DataSet: TDataSet);
begin
  FormContasRecParcelas.DesabilitaBotoes;
  DsRecParce.AutoEdit := True;
end;


procedure TDataModulo.TbPagParceBeforeEdit(DataSet: TDataSet);
begin
  if Assigned(FormContasPagParcelas) then
  begin
  FormContasPagParcelas.DesabilitaBotoes;
  DsPagParce.AutoEdit := True;
  end;
end;


procedure TDataModulo.TbReceberBeforeEdit(DataSet: TDataSet);
begin
//
if Assigned(FormContasReceber) then
  begin
  FormContasReceber.Desabilitabotoes;
  {evita mudar de registro em edição}
  FormContasReceber.EditFatura.Enabled := False;
  end;
end;


procedure TDataModulo.TbCtAnaliseAfterCancel(DataSet: TDataSet);
begin
  FormContAnalise.DesabilitaBotoes;
end;


procedure TDataModulo.TbCtAnaliseBeforeEdit(DataSet: TDataSet);
begin
  FormContAnalise.DesabilitaBotoes;
end;

procedure TDataModulo.TbPrdLinhaBeforeEdit(DataSet: TDataSet);
begin
  FormPrdLinha.DesabilitaBotoes;
end;


procedure TDataModulo.TbPrdClassIPIBeforeEdit(DataSet: TDataSet);
begin
  FormPrd_IPI.DesabilitaBotoes;
end;


procedure TDataModulo.DTBAdjutorLogin(Database: TDatabase;
  LoginParams: TStrings);
begin
  //Inclusão aut. da senha do Banco de Dados
  LoginParams.Values['USER NAME'] := '';
  LoginParams.Values['PASSWORD'] := '';
end;


procedure TDataModulo.DataModuloCreate(Sender: tObject);
begin
  // Conexão Database|BDE
  try
    DtbAdjutor.Connected := True;
  except
    //beep;
    uteis.aviso('Não Posso Fazer a Conexão "DtbAdjutor -> BDE"!!!');
  end;
end;


procedure TDataModulo.DataModuloDestroy(Sender: tObject);
begin
  try  // Desconexão  Database|BDE
    DtbAdjutor.Connected := False;
  except
    begin
      //beep;
      uteis.aviso('Não Posso Desfazer a Conexão "DtbAdjutor -> BDE"!!!');
    end;  
  end;
end;


procedure TDataModulo.TbEmpresaBeforeEdit(DataSet: TDataSet);
begin
  FormEmpresa.DesabilitaBotoes;
end;


procedure TDataModulo.TbPedidosBeforeEdit(DataSet: TDataSet);
begin
 // faz somente se formulario esta ativo na memoria
  if Assigned(FormPedidos)and not Assigned(FormNFImprime) then
    FormPedidos.DesabilitaBotoes;
end;


procedure TDataModulo.TbParcelasBeforeEdit(DataSet: TDataSet);
begin
  FormParcelas.DesabilitaBotoes;
end;


procedure TDataModulo.TbOperFiscBeforeEdit(DataSet: TDataSet);
begin
  FormOperFisc.DesabilitaBotoes;
end;


procedure TDataModulo.TbSaldoBancoBeforeEdit(DataSet: TDataSet);
begin
  FormSaldoBanco.DesabilitaBotoes;
end;


procedure TDataModulo.TbCotaItemCalcFields(DataSet: TDataSet);
begin
  TbCotaItemCIT_TOTAL_CC.Value := TbCotaItemCIT_QTDE.Value * TbCotaItemCIT_PRECO.Value;
end;


procedure TDataModulo.TbCotacaoBeforeEdit(DataSet: TDataSet);
begin
  FormCotacao.DesabilitaBotoes;
end;


procedure TDataModulo.TbOrdCompraBeforeEdit(DataSet: TDataSet);
begin
  FormOrdCompra.Desabilitabotoes;
end;


procedure TDataModulo.TbOrdCompItemCalcFields(DataSet: TDataSet);
begin
  // Localizar descri do produto
  Datamodulo.TbProduto.IndexName := 'XPRD_REFE';
  Datamodulo.TbProduto.Findkey([TbOrdCompItemPRD_REFER.Value]);
  Datamodulo.TbOrdCompItemPRD_DESCRI_CC.Value := Datamodulo.TbProdutoPRD_DESCRI.Value;
  //
  TbOrdCompItemOCI_TOTAL_CC.Value := TbOrdCompItemOCI_QTDE.Value*TbOrdCompItemOCI_PRECO.Value;
end;


procedure TDataModulo.TbCotaItemCIT_QTDEChange(Sender: TField);
begin
  if (TbCotaItemPRD_REFER.Value='')then
     begin
     uteis.aviso('Especifique o produto!');
     TbCotaItem.Cancel;
     exit;
     end;
end;


procedure TDataModulo.TbCotaItemAfterDelete(DataSet: TDataSet);
begin
  FormCotacao.CalcTotal;
end;


procedure TDataModulo.TbPagItensCalcFields(DataSet: TDataSet);
begin
  TbPagItensPAT_TOTAL_CC.Value := TbPagItensPAT_QTDE.Value * TbPagItensPAT_PRECO.Value;
end;


procedure TDataModulo.TbTmpNfEntCalcFields(DataSet: TDataSet);
begin
   DataModulo.TbTmpNfEntPAT_TOTAL_CC.Value := DataModulo.TbTmpNfEntPAT_QTDE.Value
     * DataModulo.TbTmpNfEntPAT_PRECO.Value;
end;

procedure TDataModulo.TbOperFiscPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  if copy(E.Message,1,13) = 'Key violation' then
     begin
     end;
end;


procedure TDataModulo.TbProdutoAfterScroll(DataSet: TDataSet);
begin
{BUSCANDO FOTO DO PRODUTO}
if Assigned(FormProduto)then
   begin
   if FileExists(FrmMenu.PathNewFotos+'\'+TbProdutoPRD_REFER.Value+'.jpg') then
      FormProduto.ImgProduto.Picture.LoadFromFile(FrmMenu.PathNewFotos+'\'+TbProdutoPRD_REFER.Value+'.jpg')
   else
      FormProduto.ImgProduto.Picture.LoadFromFile(FrmMenu.PathNewFotos+'\Default.jpg');
   end;
{BUSCANDO FICHA DO PRODUTO}
if Assigned(FormProduto)then
   begin
   FormProduto.RichDoc.Clear;
   if FileExists(FrmMenu.PathNewFicha+'\'+TbProdutoPRD_REFER.Value+'.Rtf') then
      FormProduto.RichDoc.Lines.LoadFromFile(FrmMenu.PathNewFicha+'\'+TbProdutoPRD_REFER.Value+'.Rtf');
   end;
end;

procedure TDataModulo.TbProdutoCalcFields(DataSet: TDataSet);
begin
  TbProdutoPRD_FISICO_CC.Value := TbprodutoPRD_ESTOQUE.Value +
  TbprodutoPRD_ENTRADA.Value - TbprodutoPRD_SAIDA.Value;
  //
  TbProdutoPRD_ANTECIPADO_CC.Value := TbprodutoPRD_ESTOQUE.Value +
  TbprodutoPRD_ENTRADA.Value - TbprodutoPRD_SAIDA.Value +
  TbprodutoPRD_PENDENTE.Value;
end;

procedure TDataModulo.TbPedItemCalcFields(DataSet: TDataSet);
begin
  TbPedItemPRF_TOTAL_CC.Value := (TbPedItemPRF_QTDE.Value * TbPedItemPRF_PRECO.Value);
end;

procedure TDataModulo.TbReceberAfterScroll(DataSet: TDataSet);
begin

{Retirado por rodrigo 25/08/2003}
// faz somente se formulario esta ativo na memoria
(*if Assigned(FormContasReceber)then
// Atualizo SQL somente se a page itens estiver ativa
if  FormContasReceber.PgParcelas.ActivePage = FormContasReceber.TbShItens then
  begin
  // cada vez que troco de registro faço uma nova SQL pelo numero da fatura
  with DatamodQry.TQItemRec do
   begin
   close;
   SQL.Clear;
   Sql.Add('SELECT FAT_IT02.FAT_CODIGO, FAT_IT02.PRD_CODIGO, FAT_IT02.PRD_REFER, FAT_IT02.FIT_QTDE, FAT_IT02.FIT_IPIALIQ, FAT_IT02.FIT_PRECO,'+
   'FAT_IT02.EMP_CODIGO, PRD0000.PRD_DESCRI, PRD0000.PRD_REFER, FAT_IT02.FIT_COMIS, FAT_IT02.FIT_DESCTO,FAT_IT02.FIT_SUBSTIT');
   Sql.Add('FROM FAT_IT02 LEFT OUTER JOIN PRD0000 ON FAT_IT02.PRD_REFER = PRD0000.PRD_REFER');
   Sql.Add('WHERE FAT_IT02.PRD_REFER=Prd0000.PRD_REFER AND FAT_IT02.FAT_CODIGO='''+FormContasReceber.EdtFat_Codigo.Text+'''');
   Open;
   end;
  end;
  *)
end;

procedure TDataModulo.DTBAdjMasterLogin(Database: TDatabase;
  LoginParams: TStrings);
begin
 //Inclusão aut. da senha do Banco de Dados
  LoginParams.Values['USER NAME'] := '';
  LoginParams.Values['PASSWORD'] := '';
end;

procedure TDataModulo.TbEmbalagemAfterPost(DataSet: TDataSet);
begin
{COMANDOS COM A TELA ITENS ASSOCIADOS DE PEDIDOS ATIVA}
IF Assigned(FormPedItensAss)THEN
   TbEmbalagem.Refresh;
end;

procedure TDataModulo.TbFatorCustosBeforeEdit(DataSet: TDataSet);
begin
    if Assigned(FormCusto) then
      FormCusto.DesabilitaBotoes;

end;

procedure TDataModulo.TbUsersBeforeEdit(DataSet: TDataSet);
begin
   FormUsu_dace.DesabilitaBotoes;
end;

procedure TDataModulo.TbOrdCompItemBeforeEdit(DataSet: TDataSet);
begin
 //verifica se formulario esta ativo na memoria
  if Assigned(FormOcpItem)then
     Begin
     FormOcpItem.DesabilitaBotoes;
     end;
end;

procedure TDataModulo.TbCotaItemBeforePost(DataSet: TDataSet);
begin
if (Assigned(FormCotacao)=True) and (Datamodulo.TbCotaItem.State in [dsInsert]) then
   Datamodulo.TbCotaItemEMP_CODIGO.Value := Datamodulo.TbCotacaoEMP_CODIGO.Value;
end;

procedure TDataModulo.DTBShareLogin(Database: TDatabase;
  LoginParams: TStrings);
begin
 //Inclusão aut. da senha do Banco de Dados
  LoginParams.Values['USER NAME'] := '';
  LoginParams.Values['PASSWORD'] := '';
end;

procedure TDataModulo.TbICMSBeforeEdit(DataSet: TDataSet);
begin
FormAliqICms.DesabilitaBotoes;
end;

procedure TDataModulo.TbPedItemBeforeEdit(DataSet: TDataSet);
begin
// faz somente se formulario esta ativo na memoria
  if Assigned(FormPedItens)then
    FormPedItens.DesabilitaBotoes;
end;

procedure TDataModulo.TbCentroCustoBeforeEdit(DataSet: TDataSet);
begin
 FormCentroCusto.DesabilitaBotoes;
end;

procedure TDataModulo.TbParametrosBeforeEdit(DataSet: TDataSet);
begin
 if Assigned(FormParametros)then
    FormParametros.DesabilitaBotao;
end;

procedure TDataModulo.TbCelulaBeforeEdit(DataSet: TDataSet);
begin
 if Assigned(FormCelula)then
    Formcelula.DesabilitaBotoes;
end;

procedure TDataModulo.TbComponentesBeforeEdit(DataSet: TDataSet);
begin
 if Assigned(FormComponentes)then
    FormComponentes.DesabilitaBotoes;
end;

procedure TDataModulo.TbMetasBeforeEdit(DataSet: TDataSet);
begin
if Assigned(FormMetaProd)then
   FormMetaProd.DesabilitaBotoes;
end;

procedure TDataModulo.TbMetasCalcFields(DataSet: TDataSet);
begin
TbMetasCME_MES_CC.Value := copy(TbMetasCME_CODIGO.Value,5,2);
TbMetasCME_ANO_CC.Value := copy(TbMetasCME_CODIGO.Value,1,4);
TbMetasTUP_ARealizar_CC.Value := TbMetasCME_TUPMETAMES.Value+TbMetasCME_TUPNEGATIVO.Value;
end;

procedure TDataModulo.TbRecParceCalcFields(DataSet: TDataSet);
begin
 if Assigned(FormContasRecParcelas)then
   begin
   if Datamodulo.TbBanco.FindKey([DataModulo.TbRecParceBAN_CODIGO.Value])then
      DataModulo.TbRecParceBAN_APELIDO_CC.Value := Datamodulo.TbBancoBAN_APELIDO.Value
   else
      DataModulo.TbRecParceBAN_APELIDO_CC.Value := '';
   end;
end;

procedure TDataModulo.TbMovCelBeforeEdit(DataSet: TDataSet);
begin
// envia p/ celulas
if Assigned(FormEnviaCelula) then
  FormEnviaCelula.Desabilitabotoes;
// manutenção de movimentos
if Assigned(FormManutMovCel) then
  FormManutMovCel.Desabilitabotoes;
end;

procedure TDataModulo.TbCompMetaCalcFields(DataSet: TDataSet);
begin
  DataModulo.TbCompMetaTOTAL_TUP_CC.Value := DataModulo.TbCompMetaMEC_DIAS.Value*DataModulo.TbCompMetaMEC_TUPDIARIO.Value;
end;

procedure TDataModulo.TbCompMetaBeforeEdit(DataSet: TDataSet);
begin
if Assigned(FormMetaProd)then
    FormMetaProd.HabilitaConfirmacao;
end;

procedure TDataModulo.TbProjetoCaixaBeforeEdit(DataSet: TDataSet);
begin
if Assigned(FormProjCaixa) then
   FormProjCaixa.Desabilitabotoes;
end;

procedure TDataModulo.TbProjetoCaixaCalcFields(DataSet: TDataSet);
begin
IF TbProjetoCaixaPCX_TERMINADO.Value = 'S' then
   TbProjetoCaixaPCX_TERMINADO_CC.Value := 'Sim'
else
   TbProjetoCaixaPCX_TERMINADO_CC.Value := 'Não';
end;

procedure TDataModulo.TbPedItemAfterScroll(DataSet: TDataSet);
begin
 // faz somente se formulario esta ativo na memoria
 if Assigned(FormPedidos)then
   // localizar p/ mostrar estoque
   Datamodulo.TbProduto.Findkey([Datamodulo.TbPedItemPRD_REFER.Text]);
end;

procedure TDataModulo.TbOrdCompItemAfterScroll(DataSet: TDataSet);
begin
 // faz somente se formulario esta ativo na memoria
 if Assigned(FormOrdCompra)then
   // localizar p/ mostrar estoque
   Datamodulo.TbProduto.Findkey([Datamodulo.TbOrdCompItemPRD_REFER.Value]);
end;

procedure TDataModulo.TbMovCelAfterScroll(DataSet: TDataSet);
begin
if Assigned(FormEnviaCelula) then
  FormEnviaCelula.ValidaProducao;
end;

end.
