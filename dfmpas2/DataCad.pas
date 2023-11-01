unit DataCad;

interface

uses
  SysUtils, Classes, {DBXpress,} DB, SqlExpr, FMTBCd, DBClient, Provider,
  MIDASLIB, Data.DBXFirebird, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDataCadastros = class(TDataModule)
    SQLConnection1: TSQLConnection;
    SqlCLientes: tsqlquery;
    DspClientes: TDataSetProvider;
    CdsClientes: TClientDataSet;
    DsCliente: TDataSource;
    SqlCLientesCLI_DTINATIVO: TSQLTimeStampField;
    SqlCLientesCLI_INATIVO: TStringField;
    SqlCLientesCLI_MOTIVO: TStringField;
    SqlCLientesCLI_CODIGO: TStringField;
    SqlCLientesREG_CODIGO: TStringField;
    SqlCLientesCLI_ATIVIDADE: TStringField;
    SqlCLientesCLI_PORTE: TStringField;
    SqlCLientesCLI_BAIRRO: TStringField;
    SqlCLientesCLI_CIDADE: TStringField;
    SqlCLientesCLI_CEP: TStringField;
    SqlCLientesCLI_CXPOST: TStringField;
    SqlCLientesCLI_FONE: TStringField;
    SqlCLientesCLI_FAX: TStringField;
    SqlCLientesTRP_CODIGO: TStringField;
    SqlCLientesCLI_INSC: TStringField;
    SqlCLientesCLI_CGC: TStringField;
    SqlCLientesCLI_PESSOA: TStringField;
    SqlCLientesCLI_CONTATO: TStringField;
    SqlCLientesCLI_FUNCONT: TStringField;
    SqlCLientesREP_CODIGO: TStringField;
    SqlCLientesCLI_DTINICIO: TSQLTimeStampField;
    SqlCLientesCLI_DTULTCOM: TSQLTimeStampField;
    SqlCLientesCLI_CIDENTR: TStringField;
    SqlCLientesCLI_CEPENTR: TStringField;
    SqlCLientesCLI_FONENTR: TStringField;
    SqlCLientesCLI_CIDFAT: TStringField;
    SqlCLientesCLI_CEPFAT: TStringField;
    SqlCLientesCLI_UF: TStringField;
    SqlCLientesCLI_UFENTR: TStringField;
    SqlCLientesCLI_UFFAT: TStringField;
    SqlCLientesEMP_CODIGO: TStringField;
    CdsClientesCLI_DTINATIVO: TSQLTimeStampField;
    CdsClientesCLI_INATIVO: TStringField;
    CdsClientesCLI_MOTIVO: TStringField;
    CdsClientesCLI_CODIGO: TStringField;
    CdsClientesREG_CODIGO: TStringField;
    CdsClientesCLI_ATIVIDADE: TStringField;
    CdsClientesCLI_PORTE: TStringField;
    CdsClientesCLI_BAIRRO: TStringField;
    CdsClientesCLI_CIDADE: TStringField;
    CdsClientesCLI_CEP: TStringField;
    CdsClientesCLI_CXPOST: TStringField;
    CdsClientesCLI_FONE: TStringField;
    CdsClientesCLI_FAX: TStringField;
    CdsClientesTRP_CODIGO: TStringField;
    CdsClientesCLI_INSC: TStringField;
    CdsClientesCLI_CGC: TStringField;
    CdsClientesCLI_PESSOA: TStringField;
    CdsClientesCLI_CONTATO: TStringField;
    CdsClientesCLI_FUNCONT: TStringField;
    CdsClientesREP_CODIGO: TStringField;
    CdsClientesCLI_DTINICIO: TSQLTimeStampField;
    CdsClientesCLI_DTULTCOM: TSQLTimeStampField;
    CdsClientesCLI_CIDENTR: TStringField;
    CdsClientesCLI_CEPENTR: TStringField;
    CdsClientesCLI_FONENTR: TStringField;
    CdsClientesCLI_CIDFAT: TStringField;
    CdsClientesCLI_CEPFAT: TStringField;
    CdsClientesCLI_UF: TStringField;
    CdsClientesCLI_UFENTR: TStringField;
    CdsClientesCLI_UFFAT: TStringField;
    CdsClientesEMP_CODIGO: TStringField;
    SqlRepresentante: tsqlquery;
    DspRepresentante: TDataSetProvider;
    CdsRepresentante: TClientDataSet;
    DsRepresentante: TDataSource;
    SqlRepresentanteREP_CODIGO: TStringField;
    SqlRepresentanteREP_GRUPO: TStringField;
    SqlRepresentanteREG_CODIGO: TStringField;
    SqlRepresentanteREP_FUNCAO: TStringField;
    SqlRepresentanteREP_SUPERVISAO: TStringField;
    SqlRepresentanteREP_GERENTE: TStringField;
    SqlRepresentanteREP_RAZAO: TStringField;
    SqlRepresentanteREP_NOME: TStringField;
    SqlRepresentanteREP_ENDERE: TStringField;
    SqlRepresentanteREP_CIDADE: TStringField;
    SqlRepresentanteREP_CELULAR: TStringField;
    SqlRepresentanteREP_CONTA: TStringField;
    SqlRepresentanteREP_AGENCIA: TStringField;
    SqlRepresentanteREP_BANCO: TStringField;
    SqlRepresentanteREP_BANCOFAVOR: TStringField;
    SqlRepresentanteREP_UF: TStringField;
    SqlRepresentanteREP_CEP: TStringField;
    SqlRepresentanteREP_FONE: TStringField;
    SqlRepresentanteREP_FAX: TStringField;
    SqlRepresentanteREP_EMAIL: TStringField;
    SqlRepresentanteREP_TIPO: TStringField;
    SqlRepresentanteREP_SITUACAO: TStringField;
    SqlRepresentanteREP_OBS: TMemoField;
    SqlRepresentanteREP_QUOTA: TFMTBCdField;
    SqlRepresentanteREP_NDEPEND: TSmallintField;
    SqlRepresentanteREP_DTNASC: TSQLTimeStampField;
    SqlRepresentanteREP_INSC: TStringField;
    SqlRepresentanteREP_CGC: TStringField;
    SqlRepresentanteEMP_CODIGO: TStringField;
    CdsRepresentanteREP_CODIGO: TStringField;
    CdsRepresentanteREP_GRUPO: TStringField;
    CdsRepresentanteREG_CODIGO: TStringField;
    CdsRepresentanteREP_FUNCAO: TStringField;
    CdsRepresentanteREP_SUPERVISAO: TStringField;
    CdsRepresentanteREP_GERENTE: TStringField;
    CdsRepresentanteREP_RAZAO: TStringField;
    CdsRepresentanteREP_NOME: TStringField;
    CdsRepresentanteREP_ENDERE: TStringField;
    CdsRepresentanteREP_CIDADE: TStringField;
    CdsRepresentanteREP_CELULAR: TStringField;
    CdsRepresentanteREP_CONTA: TStringField;
    CdsRepresentanteREP_AGENCIA: TStringField;
    CdsRepresentanteREP_BANCO: TStringField;
    CdsRepresentanteREP_BANCOFAVOR: TStringField;
    CdsRepresentanteREP_UF: TStringField;
    CdsRepresentanteREP_CEP: TStringField;
    CdsRepresentanteREP_FONE: TStringField;
    CdsRepresentanteREP_FAX: TStringField;
    CdsRepresentanteREP_EMAIL: TStringField;
    CdsRepresentanteREP_TIPO: TStringField;
    CdsRepresentanteREP_SITUACAO: TStringField;
    CdsRepresentanteREP_OBS: TMemoField;
    CdsRepresentanteREP_QUOTA: TFMTBCdField;
    CdsRepresentanteREP_NDEPEND: TSmallintField;
    CdsRepresentanteREP_DTNASC: TSQLTimeStampField;
    CdsRepresentanteREP_INSC: TStringField;
    CdsRepresentanteREP_CGC: TStringField;
    CdsRepresentanteEMP_CODIGO: TStringField;
    SqlTransportadora: tsqlquery;
    CdsTransportadora: TClientDataSet;
    DspTransportadora: TDataSetProvider;
    SqlTransportadoraTRP_CODIGO: TStringField;
    SqlTransportadoraTRP_RAZAO: TStringField;
    SqlTransportadoraTRP_ENDERE: TStringField;
    SqlTransportadoraTRP_CIDADE: TStringField;
    SqlTransportadoraTRP_UF: TStringField;
    SqlTransportadoraTRP_CEP: TStringField;
    SqlTransportadoraTRP_CGC: TStringField;
    SqlTransportadoraTRP_INSC: TStringField;
    SqlTransportadoraTRP_FONE: TStringField;
    SqlTransportadoraTRP_FAX: TStringField;
    SqlTransportadoraTRP_CONTATO: TStringField;
    SqlTransportadoraEMP_CODIGO: TStringField;
    SqlTransportadoraTRP_HOME: TStringField;
    DsTransportadora: TDataSource;
    CdsTransportadoraTRP_CODIGO: TStringField;
    CdsTransportadoraTRP_RAZAO: TStringField;
    CdsTransportadoraTRP_ENDERE: TStringField;
    CdsTransportadoraTRP_CIDADE: TStringField;
    CdsTransportadoraTRP_UF: TStringField;
    CdsTransportadoraTRP_CEP: TStringField;
    CdsTransportadoraTRP_CGC: TStringField;
    CdsTransportadoraTRP_INSC: TStringField;
    CdsTransportadoraTRP_FONE: TStringField;
    CdsTransportadoraTRP_FAX: TStringField;
    CdsTransportadoraTRP_CONTATO: TStringField;
    CdsTransportadoraEMP_CODIGO: TStringField;
    CdsTransportadoraTRP_HOME: TStringField;
    SqlRegiao: tsqlquery;
    DspRegiao: TDataSetProvider;
    CdsRegiao: TClientDataSet;
    DsRegiao: TDataSource;
    SqlRegiaoREG_CODIGO: TStringField;
    SqlRegiaoREG_DESCRI: TStringField;
    SqlRegiaoEMP_CODIGO: TStringField;
    CdsRegiaoREG_CODIGO: TStringField;
    CdsRegiaoREG_DESCRI: TStringField;
    CdsRegiaoEMP_CODIGO: TStringField;
    SqlAtividade: tsqlquery;
    DspAtividade: TDataSetProvider;
    CdsAtividade: TClientDataSet;
    DsAtividade: TDataSource;
    SqlAtividadeRCL_CODIGO: TStringField;
    SqlAtividadeRCL_ATIVIDADE: TStringField;
    SqlAtividadeEMP_CODIGO: TStringField;
    CdsAtividadeRCL_CODIGO: TStringField;
    CdsAtividadeRCL_ATIVIDADE: TStringField;
    CdsAtividadeEMP_CODIGO: TStringField;
    SqlFornecedor: tsqlquery;
    DspFornecedor: TDataSetProvider;
    CdsFornecedor: TClientDataSet;
    DsFornecedor: TDataSource;
    SqlFornecedorFOR_CODIGO: TStringField;
    SqlFornecedorCCT_CODIGO: TStringField;
    SqlFornecedorFOR_RAZAO: TStringField;
    SqlFornecedorFOR_ENDERE: TStringField;
    SqlFornecedorFOR_CIDADE: TStringField;
    SqlFornecedorFOR_UF: TStringField;
    SqlFornecedorFOR_CEP: TStringField;
    SqlFornecedorFOR_CONTATO: TStringField;
    SqlFornecedorFOR_FONE: TStringField;
    SqlFornecedorFOR_FAX: TStringField;
    SqlFornecedorFOR_FONCONT: TStringField;
    SqlFornecedorFOR_FAXCONT: TStringField;
    SqlFornecedorFOR_OBS: TStringField;
    SqlFornecedorEMP_CODIGO: TStringField;
    SqlFornecedorFOR_CGC: TStringField;
    SqlFornecedorFOR_INSC: TStringField;
    SqlFornecedorFOR_EMAILCONT: TStringField;
    SqlFornecedorFOR_PRAZOVENDAS: TStringField;
    CdsFornecedorFOR_CODIGO: TStringField;
    CdsFornecedorCCT_CODIGO: TStringField;
    CdsFornecedorFOR_RAZAO: TStringField;
    CdsFornecedorFOR_ENDERE: TStringField;
    CdsFornecedorFOR_CIDADE: TStringField;
    CdsFornecedorFOR_UF: TStringField;
    CdsFornecedorFOR_CEP: TStringField;
    CdsFornecedorFOR_CONTATO: TStringField;
    CdsFornecedorFOR_FONE: TStringField;
    CdsFornecedorFOR_FAX: TStringField;
    CdsFornecedorFOR_FONCONT: TStringField;
    CdsFornecedorFOR_FAXCONT: TStringField;
    CdsFornecedorFOR_OBS: TStringField;
    CdsFornecedorEMP_CODIGO: TStringField;
    CdsFornecedorFOR_CGC: TStringField;
    CdsFornecedorFOR_INSC: TStringField;
    CdsFornecedorFOR_EMAILCONT: TStringField;
    CdsFornecedorFOR_PRAZOVENDAS: TStringField;
    SqlCtAnalise: tsqlquery;
    DspCtAnalise: TDataSetProvider;
    CdsCtAnalise: TClientDataSet;
    DsCtAnalise: TDataSource;
    SqlProdutos: tsqlquery;
    DspProdutos: TDataSetProvider;
    CdsProdutos: TClientDataSet;
    DsProdutos: TDataSource;
    CdsProdutosPRD_CODIGO: TStringField;
    CdsProdutosPRD_UND: TStringField;
    CdsProdutosPRD_EMBALA: TStringField;
    CdsProdutosPGR_CODIGO: TStringField;
    CdsProdutosPTI_CODIGO: TStringField;
    CdsProdutosIPI_CODIGO: TStringField;
    CdsProdutosPRD_ALIQICM: TFMTBCdField;
    CdsProdutosPRD_CARACT: TMemoField;
    CdsProdutosPRD_MINIMO: TFMTBCdField;
    CdsProdutosPRD_PCUSTO: TFMTBCdField;
    CdsProdutosPRD_PVENDA: TFMTBCdField;
    CdsProdutosPRD_PMEDIO: TFMTBCdField;
    CdsProdutosPRD_PMATPRI: TFMTBCdField;
    CdsProdutosPRD_MAOOBRA: TFMTBCdField;
    CdsProdutosPRD_ESTOQUE: TFMTBCdField;
    CdsProdutosPRD_SAIDA: TFMTBCdField;
    CdsProdutosPRD_PENDENTE: TFMTBCdField;
    CdsProdutosFOR_CODIGO: TStringField;
    CdsProdutosPRD_ENTRADA: TFMTBCdField;
    CdsProdutosPRD_MAXIMO: TFMTBCdField;
    CdsProdutosPRD_TEMSUB: TStringField;
    CdsProdutosPRD_SITRIBUT: TStringField;
    CdsProdutosPRD_ICMSUBS: TFMTBCdField;
    CdsProdutosPRD_UTILCONV: TStringField;
    CdsProdutosPRD_UNDCOMP: TStringField;
    CdsProdutosPRD_PESOKG: TFMTBCdField;
    CdsProdutosPRD_FATORC: TFMTBCdField;
    CdsProdutosPRD_DIVMULT: TStringField;
    CdsProdutosEMP_CODIGO: TStringField;
    CdsProdutosPRD_DTPCUSTO: TSQLTimeStampField;
    CdsProdutosPRD_TABPRECO: TStringField;
    CdsProdutosPRD_GARANTIA: TStringField;
    CdsProdutosPRD_FAMILIA: TStringField;
    CdsProdutosPRD_VAR1: TFMTBCdField;
    CdsProdutosPRD_VAR2: TFMTBCdField;
    CdsProdutosPRD_VAR3: TFMTBCdField;
    CdsProdutosPRD_VAR4: TFMTBCdField;
    CdsProdutosPRD_VAR5: TFMTBCdField;
    CdsProdutosPRD_VAR6: TFMTBCdField;
    CdsProdutosPRD_VAR7: TFMTBCdField;
    CdsProdutosPRD_VAR8: TFMTBCdField;
    CdsProdutosPRD_DCVAR1: TStringField;
    CdsProdutosPRD_DCVAR2: TStringField;
    CdsProdutosPRD_DCVAR3: TStringField;
    CdsProdutosPRD_DCVAR4: TStringField;
    CdsProdutosPRD_DCVAR5: TStringField;
    CdsProdutosPRD_DCVAR6: TStringField;
    CdsProdutosPRD_DCVAR7: TStringField;
    CdsProdutosPRD_DCVAR8: TStringField;
    SqlForXProd: tsqlquery;
    CdsForXProd: TClientDataSet;
    DspForXProd: TDataSetProvider;
    DsForXProd: TDataSource;
    SqlForXProdFOR_CODIGO: TStringField;
    SqlForXProdEMP_CODIGO: TStringField;
    CdsForXProdFOR_CODIGO: TStringField;
    CdsForXProdEMP_CODIGO: TStringField;
    SqlUpdate: TSQLQuery;
    SqlBanco: tsqlquery;
    DspBanco: TDataSetProvider;
    CdsBanco: TClientDataSet;
    DsBanco: TDataSource;
    SqlBancoBAN_CODIGO: TStringField;
    SqlBancoBAN_RAZAO: TStringField;
    SqlBancoBAN_CODAGE: TStringField;
    SqlBancoBAN_ENDERE: TStringField;
    SqlBancoBAN_CIDADE: TStringField;
    SqlBancoBAN_UF: TStringField;
    SqlBancoBAN_FONE: TStringField;
    SqlBancoBAN_FAX: TStringField;
    SqlBancoBAN_CEP: TStringField;
    SqlBancoBAN_CONTATO: TStringField;
    SqlBancoBAN_JUROMES: TFMTBCdField;
    SqlBancoBAN_OBS: TStringField;
    SqlBancoEMP_CODIGO: TStringField;
    SqlBancoBAN_DNAS_CONT: TSQLTimeStampField;
    SqlBancoBAN_EMAIL: TStringField;
    SqlBancoBAN_HOME: TStringField;
    SqlBancoBAN_DIGCONTA: TStringField;
    SqlBancoBAN_COD_CART: TStringField;
    SqlBancoBAN_N_CARTEIRA: TStringField;
    SqlBancoBAN_INSTRUCAO1: TStringField;
    SqlBancoBAN_INSTRUCAO2: TStringField;
    SqlBancoBAN_TAM_NONUM: TStringField;
    SqlBancoBAN_PROTPRAZO: TStringField;
    CdsBancoBAN_CODIGO: TStringField;
    CdsBancoBAN_RAZAO: TStringField;
    CdsBancoBAN_CODAGE: TStringField;
    CdsBancoBAN_ENDERE: TStringField;
    CdsBancoBAN_CIDADE: TStringField;
    CdsBancoBAN_UF: TStringField;
    CdsBancoBAN_FONE: TStringField;
    CdsBancoBAN_FAX: TStringField;
    CdsBancoBAN_CEP: TStringField;
    CdsBancoBAN_CONTATO: TStringField;
    CdsBancoBAN_JUROMES: TFMTBCdField;
    CdsBancoBAN_OBS: TStringField;
    CdsBancoEMP_CODIGO: TStringField;
    CdsBancoBAN_DNAS_CONT: TSQLTimeStampField;
    CdsBancoBAN_EMAIL: TStringField;
    CdsBancoBAN_HOME: TStringField;
    CdsBancoBAN_DIGCONTA: TStringField;
    CdsBancoBAN_COD_CART: TStringField;
    CdsBancoBAN_N_CARTEIRA: TStringField;
    CdsBancoBAN_INSTRUCAO1: TStringField;
    CdsBancoBAN_INSTRUCAO2: TStringField;
    CdsBancoBAN_TAM_NONUM: TStringField;
    CdsBancoBAN_PROTPRAZO: TStringField;
    SqlSysfile: tsqlquery;
    CdsSysfile: TClientDataSet;
    DspSysfile: TDataSetProvider;
    SqlSysfileSYS_CLIENTE: TIntegerField;
    SqlSysfileSYS_PRODUTO: TIntegerField;
    SqlSysfileSYS_BANCO: TIntegerField;
    SqlSysfileSYS_TRANSPORTADORA: TIntegerField;
    SqlSysfileSYS_FORNECEDORES: TIntegerField;
    SqlSysfileSYS_REGIAO: TIntegerField;
    SqlSysfileSYS_ATIVIDADE: TIntegerField;
    SqlSysfileSYS_REPRESENTANTE: TIntegerField;
    SqlSysfileSYS_GRUPO_PROD: TIntegerField;
    SqlSysfileSYS_SUB_GRUPO_PROD: TIntegerField;
    SqlSysfileSYS_SEGMENTO: TIntegerField;
    SqlSysfileSYS_CENTRO_CUSTO: TIntegerField;
    SqlSysfileSYS_CONTA_ANALISE: TIntegerField;
    SqlSysfileSYS_CONTA_PROJ_CAIXA: TIntegerField;
    SqlSysfileSYS_PEDIDO: TIntegerField;
    SqlSysfileSYS_NFISCAL: TIntegerField;
    SqlSysfileSYS_DUPLICATA: TIntegerField;
    SqlSysfileSYS_ORD_COMPRA: TIntegerField;
    SqlSysfileSYS_CP: TIntegerField;
    SqlSysfileSYS_ORD_PROD: TIntegerField;
    SqlSysfileSYS_CEL_PROD: TIntegerField;
    SqlSysfileSYS_INT_CELULAS: TIntegerField;
    SqlSysfileSYS_PROC_PRODUCAO: TIntegerField;
    CdsSysfileSYS_CLIENTE: TIntegerField;
    CdsSysfileSYS_PRODUTO: TIntegerField;
    CdsSysfileSYS_BANCO: TIntegerField;
    CdsSysfileSYS_TRANSPORTADORA: TIntegerField;
    CdsSysfileSYS_FORNECEDORES: TIntegerField;
    CdsSysfileSYS_REGIAO: TIntegerField;
    CdsSysfileSYS_ATIVIDADE: TIntegerField;
    CdsSysfileSYS_REPRESENTANTE: TIntegerField;
    CdsSysfileSYS_GRUPO_PROD: TIntegerField;
    CdsSysfileSYS_SUB_GRUPO_PROD: TIntegerField;
    CdsSysfileSYS_SEGMENTO: TIntegerField;
    CdsSysfileSYS_CENTRO_CUSTO: TIntegerField;
    CdsSysfileSYS_CONTA_ANALISE: TIntegerField;
    CdsSysfileSYS_CONTA_PROJ_CAIXA: TIntegerField;
    CdsSysfileSYS_PEDIDO: TIntegerField;
    CdsSysfileSYS_NFISCAL: TIntegerField;
    CdsSysfileSYS_DUPLICATA: TIntegerField;
    CdsSysfileSYS_ORD_COMPRA: TIntegerField;
    CdsSysfileSYS_CP: TIntegerField;
    CdsSysfileSYS_ORD_PROD: TIntegerField;
    CdsSysfileSYS_CEL_PROD: TIntegerField;
    CdsSysfileSYS_INT_CELULAS: TIntegerField;
    CdsSysfileSYS_PROC_PRODUCAO: TIntegerField;
    SqlSysfileSYS_REGISTRO: TIntegerField;
    CdsSysfileSYS_REGISTRO: TIntegerField;
    SqlEvento: tsqlquery;
    DspEvento: TDataSetProvider;
    CdsEvento: TClientDataSet;
    DsEvento: TDataSource;
    SqlEventoEVE_CODIGO: TStringField;
    SqlEventoEVE_DESCRI: TStringField;
    SqlEventoEVE_TIPODC: TStringField;
    SqlEventoEVE_IRRF: TStringField;
    SqlEventoEVE_SITUAC: TStringField;
    SqlEventoEMP_CODIGO: TStringField;
    CdsEventoEVE_CODIGO: TStringField;
    CdsEventoEVE_DESCRI: TStringField;
    CdsEventoEVE_TIPODC: TStringField;
    CdsEventoEVE_IRRF: TStringField;
    CdsEventoEVE_SITUAC: TStringField;
    CdsEventoEMP_CODIGO: TStringField;
    SqlPrdTipo: tsqlquery;
    DspPrdTipo: TDataSetProvider;
    CdsPrdTipo: TClientDataSet;
    DsPrdtipo: TDataSource;
    SqlPrdTipoPTI_CODIGO: TStringField;
    SqlPrdTipoPTI_DESCRI: TStringField;
    SqlPrdTipoEMP_CODIGO: TStringField;
    CdsPrdTipoPTI_CODIGO: TStringField;
    CdsPrdTipoPTI_DESCRI: TStringField;
    CdsPrdTipoEMP_CODIGO: TStringField;
    SqlPrdGrupo: tsqlquery;
    DspPrdGrupo: TDataSetProvider;
    CdsPrdGrupo: TClientDataSet;
    DsPrdGrupo: TDataSource;
    SqlPrdGrupoPGR_CODIGO: TStringField;
    SqlPrdGrupoPGR_DESCRI: TStringField;
    SqlPrdGrupoPGR_COMISS: TStringField;
    SqlPrdGrupoPGR_COM_PERC: TFMTBCdField;
    SqlPrdGrupoEMP_CODIGO: TStringField;
    CdsPrdGrupoPGR_CODIGO: TStringField;
    CdsPrdGrupoPGR_DESCRI: TStringField;
    CdsPrdGrupoPGR_COMISS: TStringField;
    CdsPrdGrupoPGR_COM_PERC: TFMTBCdField;
    CdsPrdGrupoEMP_CODIGO: TStringField;
    SqlPrdLinha: tsqlquery;
    DspPrdLinha: TDataSetProvider;
    CdsPrdLinha: TClientDataSet;
    DsPrdLinha: TDataSource;
    SqlPrdLinhaLIN_DESCRI: TStringField;
    SqlPrdLinhaEMP_CODIGO: TStringField;
    CdsPrdLinhaLIN_DESCRI: TStringField;
    CdsPrdLinhaEMP_CODIGO: TStringField;
    SqlPrdClassIPI: tsqlquery;
    DspPrdClassIPI: TDataSetProvider;
    CdsPrdClassIPI: TClientDataSet;
    DsPrdClassIPI: TDataSource;
    SqlParcelas: tsqlquery;
    DspParcelas: TDataSetProvider;
    CdsParcelas: TClientDataSet;
    DsParcelas: TDataSource;
    SqlParcelasPCL_NOME: TStringField;
    SqlParcelasPCL_DESCTO: TFMTBCdField;
    SqlParcelasPCL_MULTA: TFMTBCdField;
    SqlParcelasPCL_JUROS: TFMTBCdField;
    SqlParcelasPCL_NPARCELAS: TSmallintField;
    SqlParcelasPCL_DIASENTREP: TSmallintField;
    SqlParcelasPCL_MANTERDIA: TStringField;
    SqlParcelasPCL_CARENC_PRI: TSmallintField;
    SqlParcelasPCL_OBS: TStringField;
    SqlParcelasPCL_DISPONIVEL: TStringField;
    SqlParcelasEMP_CODIGO: TStringField;
    CdsParcelasPCL_NOME: TStringField;
    CdsParcelasPCL_DESCTO: TFMTBCdField;
    CdsParcelasPCL_MULTA: TFMTBCdField;
    CdsParcelasPCL_JUROS: TFMTBCdField;
    CdsParcelasPCL_NPARCELAS: TSmallintField;
    CdsParcelasPCL_DIASENTREP: TSmallintField;
    CdsParcelasPCL_MANTERDIA: TStringField;
    CdsParcelasPCL_CARENC_PRI: TSmallintField;
    CdsParcelasPCL_OBS: TStringField;
    CdsParcelasPCL_DISPONIVEL: TStringField;
    CdsParcelasEMP_CODIGO: TStringField;
    DspOperFisc: TDataSetProvider;
    CdsOperFisc: TClientDataSet;
    DsOperFisc: TDataSource;
    SqlOperFisc: tsqlquery;
    CdsProdutosPRD_FISICO_CC: TCurrencyField;
    CdsProdutosPRD_ANTECIPADO_CC: TCurrencyField;
    SqlSysfileSYS_CHEQUE: TIntegerField;
    CdsSysfileSYS_CHEQUE: TIntegerField;
    SqlSysfileSYS_SALDO_BANCO: TIntegerField;
    CdsSysfileSYS_SALDO_BANCO: TIntegerField;
    SqlSysfileSYS_CXFIXO: TIntegerField;
    CdsSysfileSYS_CXFIXO: TIntegerField;
    CdsClientesCLI_CURVA: TStringField;
    CdsClientesCLI_LIMITECRED: TFMTBCdField;
    CdsClientesCLI_LIMITEUTILIZ: TFMTBCdField;
    CdsClientesCLI_PEDABERTO: TFMTBCdField;
    CdsClientesCLI_VL_ULTCOMP: TFMTBCdField;
    CdsClientesCLI_CELULAR: TStringField;
    SqlCLientesCLI_CURVA: TStringField;
    SqlCLientesCLI_LIMITECRED: TFMTBCdField;
    SqlCLientesCLI_LIMITEUTILIZ: TFMTBCdField;
    SqlCLientesCLI_PEDABERTO: TFMTBCdField;
    SqlCLientesCLI_VL_ULTCOMP: TFMTBCdField;
    SqlCLientesCLI_CELULAR: TStringField;
    SqlCLientesCLI_ENDERE: TStringField;
    SqlCLientesCLI_ENDENTR: TStringField;
    SqlCLientesCLI_ENDFAT: TStringField;
    CdsClientesCLI_ENDERE: TStringField;
    CdsClientesCLI_ENDENTR: TStringField;
    CdsClientesCLI_ENDFAT: TStringField;
    CdsProdutosPRD_DTCADASTRO: TDateField;
    CdsProdutosPRD_CURVA: TStringField;
    CdsProdutosPRD_CODMERCOSUL: TStringField;
    CdsProdutosPRD_DTPVENDA: TDateField;
    CdsProdutosAMX_CODIGO: TStringField;
    //CdsProdutosPRD_PESOLIQ: TFMTBCdField;
    SqlEmpresa: tsqlquery;
    DspEmpresa: TDataSetProvider;
    CdsEmpresa: TClientDataSet;
    DsEmpresa: TDataSource;
    SqlEmpresaEMP_CODIGO: TStringField;
    SqlEmpresaEMP_RAZAO: TStringField;
    SqlEmpresaEMP_ENDERE: TStringField;
    SqlEmpresaEMP_BAIRRO: TStringField;
    SqlEmpresaEMP_CXPOSTAL: TStringField;
    SqlEmpresaEMP_CIDADE: TStringField;
    SqlEmpresaEMP_UF: TStringField;
    SqlEmpresaEMP_CEP: TStringField;
    SqlEmpresaEMP_ENDENTR: TStringField;
    SqlEmpresaEMP_CIDENTR: TStringField;
    SqlEmpresaEMP_UFENTR: TStringField;
    SqlEmpresaEMP_CEPENTR: TStringField;
    SqlEmpresaEMP_FONE: TStringField;
    SqlEmpresaEMP_FAX: TStringField;
    SqlEmpresaEMP_EMAIL: TStringField;
    SqlEmpresaEMP_EMAILCOMPRAS: TStringField;
    SqlEmpresaEMP_NOMECOMPRADOR: TStringField;
    SqlEmpresaEMP_EMAILVENDAS: TStringField;
    SqlEmpresaEMP_CGC: TStringField;
    SqlEmpresaEMP_INSC: TStringField;
    SqlEmpresaEMP_FANTASIA: TStringField;
    SqlEmpresaEMP_HOME: TStringField;
    CdsEmpresaEMP_CODIGO: TStringField;
    CdsEmpresaEMP_RAZAO: TStringField;
    CdsEmpresaEMP_ENDERE: TStringField;
    CdsEmpresaEMP_BAIRRO: TStringField;
    CdsEmpresaEMP_CXPOSTAL: TStringField;
    CdsEmpresaEMP_CIDADE: TStringField;
    CdsEmpresaEMP_UF: TStringField;
    CdsEmpresaEMP_CEP: TStringField;
    CdsEmpresaEMP_ENDENTR: TStringField;
    CdsEmpresaEMP_CIDENTR: TStringField;
    CdsEmpresaEMP_UFENTR: TStringField;
    CdsEmpresaEMP_CEPENTR: TStringField;
    CdsEmpresaEMP_FONE: TStringField;
    CdsEmpresaEMP_FAX: TStringField;
    CdsEmpresaEMP_EMAIL: TStringField;
    CdsEmpresaEMP_EMAILCOMPRAS: TStringField;
    CdsEmpresaEMP_NOMECOMPRADOR: TStringField;
    CdsEmpresaEMP_EMAILVENDAS: TStringField;
    CdsEmpresaEMP_CGC: TStringField;
    CdsEmpresaEMP_INSC: TStringField;
    CdsEmpresaEMP_FANTASIA: TStringField;
    CdsEmpresaEMP_HOME: TStringField;
    SqlPrdManut: tsqlquery;
    SqlPrdManutPES_TIPO: TStringField;
    SqlPrdManutPES_QTDE: TFMTBCdField;
    SqlPrdManutPES_TIPDOC: TStringField;
    SqlPrdManutPES_DATA: TSQLTimeStampField;
    SqlPrdManutEMP_CODIGO: TStringField;
    SqlPrdManutPES_ORIGEM: TStringField;
    SqlPrdManutPES_VALOR: TFMTBCdField;
    SqlPrdManutPES_VAR1: TFMTBCdField;
    SqlPrdManutPES_VAR2: TFMTBCdField;
    SqlPrdManutPES_VAR3: TFMTBCdField;
    SqlPrdManutPES_VAR4: TFMTBCdField;
    SqlPrdManutPES_VAR5: TFMTBCdField;
    SqlPrdManutPES_VAR6: TFMTBCdField;
    SqlPrdManutPES_VAR7: TFMTBCdField;
    SqlPrdManutPES_VAR8: TFMTBCdField;
    SqlPrdManutPES_REGISTRO: TIntegerField;
    CdsPrdManut: TClientDataSet;
    DspPrdManut: TDataSetProvider;
    CdsPrdManutPES_REGISTRO: TIntegerField;
    CdsPrdManutPES_TIPO: TStringField;
    CdsPrdManutPES_QTDE: TFMTBCdField;
    CdsPrdManutPES_TIPDOC: TStringField;
    CdsPrdManutPES_DATA: TSQLTimeStampField;
    CdsPrdManutEMP_CODIGO: TStringField;
    CdsPrdManutPES_ORIGEM: TStringField;
    CdsPrdManutPES_VALOR: TFMTBCdField;
    CdsPrdManutPES_VAR1: TFMTBCdField;
    CdsPrdManutPES_VAR2: TFMTBCdField;
    CdsPrdManutPES_VAR3: TFMTBCdField;
    CdsPrdManutPES_VAR4: TFMTBCdField;
    CdsPrdManutPES_VAR5: TFMTBCdField;
    CdsPrdManutPES_VAR6: TFMTBCdField;
    CdsPrdManutPES_VAR7: TFMTBCdField;
    CdsPrdManutPES_VAR8: TFMTBCdField;
    CdsProdutosPRD_CODBARRA: TStringField;
    SqlParcelasPCL_CODIGO: TStringField;
    CdsParcelasPCL_CODIGO: TStringField;
    SqlSharedb: tsqlquery;
    DspSharedb: TDataSetProvider;
    CdsSharedb: TClientDataSet;
    DsSharedb: TDataSource;
    SqlSharedbREGISTROS: TSmallintField;
    CdsSharedbREGISTROS: TSmallintField;
    SqlSysfileSYS_ENF: TIntegerField;
    SqlSysfileSYS_SNF: TIntegerField;
    CdsSysfileSYS_ENF: TIntegerField;
    CdsSysfileSYS_SNF: TIntegerField;
    SqlCLientesCLI_OBS: TMemoField;
    CdsClientesCLI_OBS: TMemoField;
    CdsCtAnaliseCCT_MOV_CC: TStringField;
    SqlCtAnaliseCCT_CODIGO: TStringField;
    SqlCtAnaliseCCT_PROVISAO: TFMTBCdField;
    SqlCtAnaliseCCT_TIPO: TStringField;
    SqlCtAnaliseCEC_CODIGO: TStringField;
    SqlCtAnaliseCCT_CONTA: TStringField;
    SqlCtAnaliseCCT_NIVEL: TStringField;
    SqlCtAnaliseEMP_CODIGO: TStringField;
    CdsCtAnaliseCCT_CODIGO: TStringField;
    CdsCtAnaliseCCT_PROVISAO: TFMTBCdField;
    CdsCtAnaliseCCT_TIPO: TStringField;
    CdsCtAnaliseCEC_CODIGO: TStringField;
    CdsCtAnaliseCCT_CONTA: TStringField;
    CdsCtAnaliseCCT_NIVEL: TStringField;
    CdsCtAnaliseEMP_CODIGO: TStringField;
    SqlCtAnaliseCCT_STATUS: TStringField;
    CdsCtAnaliseCCT_STATUS: TStringField;
    SqlPrdClassIPIIPI_CODIGO: TStringField;
    SqlPrdClassIPIIPI_ALIQ: TFMTBCdField;
    SqlPrdClassIPIEMP_CODIGO: TStringField;
    SqlPrdClassIPIIPI_APELIDO: TStringField;
    CdsPrdClassIPIIPI_CODIGO: TStringField;
    CdsPrdClassIPIIPI_ALIQ: TFMTBCdField;
    CdsPrdClassIPIEMP_CODIGO: TStringField;
    CdsPrdClassIPIIPI_APELIDO: TStringField;
    SqlSharedbCLIENTES: TStringField;
    SqlSharedbPRODUTOS: TStringField;
    SqlSharedbBANCOS: TStringField;
    SqlSharedbTRANSPORTADORAS: TStringField;
    SqlSharedbREPRESENTANTES: TStringField;
    SqlSharedbFORNECEDORES: TStringField;
    SqlSharedbRECEBER: TStringField;
    SqlSharedbPAGAR: TStringField;
    SqlSharedbPEDIDOS: TStringField;
    SqlSharedbCOTACOES: TStringField;
    SqlSharedbORDENSCOMPRA: TStringField;
    SqlSharedbFICHATECNICA: TStringField;
    SqlSharedbORDEMPRODUCAO: TStringField;
    SqlSharedbPARAMETROS: TStringField;
    SqlSharedbTABELAS: TStringField;
    SqlSharedbPRAZOS: TStringField;
    SqlSharedbOPERACAOFISCAL: TStringField;
    SqlSharedbPLANODECONTAS: TStringField;
    CdsSharedbCLIENTES: TStringField;
    CdsSharedbPRODUTOS: TStringField;
    CdsSharedbBANCOS: TStringField;
    CdsSharedbTRANSPORTADORAS: TStringField;
    CdsSharedbREPRESENTANTES: TStringField;
    CdsSharedbFORNECEDORES: TStringField;
    CdsSharedbRECEBER: TStringField;
    CdsSharedbPAGAR: TStringField;
    CdsSharedbPEDIDOS: TStringField;
    CdsSharedbCOTACOES: TStringField;
    CdsSharedbORDENSCOMPRA: TStringField;
    CdsSharedbFICHATECNICA: TStringField;
    CdsSharedbORDEMPRODUCAO: TStringField;
    CdsSharedbPARAMETROS: TStringField;
    CdsSharedbTABELAS: TStringField;
    CdsSharedbPRAZOS: TStringField;
    CdsSharedbOPERACAOFISCAL: TStringField;
    CdsSharedbPLANODECONTAS: TStringField;
    SqlFornecedorFOR_BAIRRO: TStringField;
    CdsFornecedorFOR_BAIRRO: TStringField;
    SqlCtAnaliseCCT_DESCRI: TStringField;
    CdsCtAnaliseCCT_DESCRI: TStringField;
    SqlCtAnaliseCCT_ANTIGO: TStringField;
    CdsCtAnaliseCCT_ANTIGO: TStringField;
    DsPrdManut: TDataSource;
    SqlPrdManutFOR_CODIGO: TStringField;
    CdsPrdManutFOR_CODIGO: TStringField;
    SqlBancoBAN_COD_APELIDO: TIntegerField;
    CdsBancoBAN_COD_APELIDO: TIntegerField;
    SqlBancoBAN_CAMINHO_REMESSA: TStringField;
    SqlBancoBAN_CAMINHO_RETORNO: TStringField;
    CdsBancoBAN_CAMINHO_REMESSA: TStringField;
    CdsBancoBAN_CAMINHO_RETORNO: TStringField;
    SqlBancoBAN_SEQUENCIA_REMESSA: TIntegerField;
    CdsBancoBAN_SEQUENCIA_REMESSA: TIntegerField;
    SqlBancoBAN_ACEITE: TStringField;
    CdsBancoBAN_ACEITE: TStringField;
    SqlBancoBAN_ESPECIE_COB: TStringField;
    CdsBancoBAN_ESPECIE_COB: TStringField;
    SQLStdTransacao: TSQLStoredProc;
    CdsProdutosPRD_DESCRI_RES: TStringField;
    SQLStoredProc: TSQLStoredProc;
    SqlPrdLinhaLIN_CODIGO: TStringField;
    CdsPrdLinhaLIN_CODIGO: TStringField;
    SqlBancoBAN_SEQ_NOSSONUMERO: TIntegerField;
    CdsBancoBAN_SEQ_NOSSONUMERO: TIntegerField;
    SqlBancoBAN_CODAGEDIG: TStringField;
    CdsBancoBAN_CODAGEDIG: TStringField;
    CdsProdutosPRD_GRADE: TStringField;
    SqlBancoBAN_COBTIPO: TStringField;
    CdsBancoBAN_COBTIPO: TStringField;
    CdsProdutosLIN_CODIGO: TStringField;
    SqlPrdGrupoPGR_ATUALIZA_ESTOQUE: TStringField;
    CdsPrdGrupoPGR_ATUALIZA_ESTOQUE: TStringField;
    SqlCLientesCLI_PROTESTAR: TStringField;
    SqlCLientesCLI_QTDE_DIAS_PROTESTO: TIntegerField;
    CdsClientesCLI_PROTESTAR: TStringField;
    CdsClientesCLI_QTDE_DIAS_PROTESTO: TIntegerField;
    SqlCLientesCLI_CONSFINAL: TStringField;
    CdsClientesCLI_CONSFINAL: TStringField;
    CdsProdutosPRD_CUSTOCOMIPI: TFMTBCdField;
    SqlPrdManutPES_IPI: TFMTBCdField;
    CdsPrdManutPES_IPI: TFMTBCdField;
    SProcedure: TSQLStoredProc;
    SqlPrdTipoPTI_SIGLA: TStringField;
    CdsPrdTipoPTI_SIGLA: TStringField;
    CdsProdutosPRD_RESERVA: TFMTBCdField;
    CdsProdutosPRD_EMPENHO: TFMTBCdField;
    CdsProdutosPRD_SALDOPRODUCAO: TFMTBCdField;
    SqlPrdManutPES_NUMDOC: TStringField;
    CdsPrdManutPES_NUMDOC: TStringField;
    SqlCLientesCLI_PAIS: TStringField;
    CdsClientesCLI_PAIS: TStringField;
    SqlCLientesCLI_FANTASIA: TStringField;
    CdsClientesCLI_FANTASIA: TStringField;
    SqlPrdTipoPTI_COMISSAO: TFMTBCdField;
    CdsPrdTipoPTI_COMISSAO: TFMTBCdField;
    CdsProdutosPRD_COMISSAO: TFMTBCdField;
    SqlBancoBAN_LIMITECREDITO: TFMTBCdField;
    SqlBancoBAN_VCTOLIMITE: TIntegerField;
    SqlBancoBAN_DIASCRED_COBRANCA: TIntegerField;
    SqlBancoBAN_FLUXOCAIXA: TStringField;
    SqlBancoBAN_GERACHEQUE: TStringField;
    CdsBancoBAN_LIMITECREDITO: TFMTBCdField;
    CdsBancoBAN_VCTOLIMITE: TIntegerField;
    CdsBancoBAN_DIASCRED_COBRANCA: TIntegerField;
    CdsBancoBAN_FLUXOCAIXA: TStringField;
    CdsBancoBAN_GERACHEQUE: TStringField;
    SqlBancoBAN_APELIDO: TStringField;
    CdsBancoBAN_APELIDO: TStringField;
    SqlBancoBAN_LIMITE_DESCTODUPL: TFMTBCdField;
    SqlBancoBAN_LIMITE_DESCTOCHEQ: TFMTBCdField;
    SqlBancoBAN_NDIAS_MAXDESCTO: TIntegerField;
    SqlBancoBAN_OUTROS_CREDITOS: TFMTBCdField;
    SqlBancoBAN_JUROS_DESCTOCHEQ: TFMTBCdField;
    CdsBancoBAN_LIMITE_DESCTODUPL: TFMTBCdField;
    CdsBancoBAN_LIMITE_DESCTOCHEQ: TFMTBCdField;
    CdsBancoBAN_NDIAS_MAXDESCTO: TIntegerField;
    CdsBancoBAN_OUTROS_CREDITOS: TFMTBCdField;
    CdsBancoBAN_JUROS_DESCTOCHEQ: TFMTBCdField;
    SqlBancoBAN_LIMITE_UTILIZADO_CHEQ: TFMTBCdField;
    SqlBancoBAN_LIMITE_UTILIZADO_DUPL: TFMTBCdField;
    CdsBancoBAN_LIMITE_UTILIZADO_CHEQ: TFMTBCdField;
    CdsBancoBAN_LIMITE_UTILIZADO_DUPL: TFMTBCdField;
    SqlBancoBAN_JUROS_DESCTODUPL: TFMTBCdField;
    CdsBancoBAN_JUROS_DESCTODUPL: TFMTBCdField;
    SqlCtAnaliseCCT_NOVO: TStringField;
    CdsCtAnaliseCCT_NOVO: TStringField;
    SqlFornecedorCCT_NOVO: TStringField;
    CdsFornecedorCCT_NOVO: TStringField;
    SqlPrdManutPES_FLAG_ACERTO: TStringField;
    CdsPrdManutPES_FLAG_ACERTO: TStringField;
    SqlPrdManutPES_FLAG_CONTA: TStringField;
    CdsPrdManutPES_FLAG_CONTA: TStringField;
    SqlPrdManutPES_HORA: TTimeField;
    CdsPrdManutPES_HORA: TTimeField;
    CdsProdutosPRD_RESERVA_VAR1: TFMTBCdField;
    CdsProdutosPRD_RESERVA_VAR2: TFMTBCdField;
    CdsProdutosPRD_RESERVA_VAR3: TFMTBCdField;
    CdsProdutosPRD_RESERVA_VAR4: TFMTBCdField;
    CdsProdutosPRD_RESERVA_VAR5: TFMTBCdField;
    CdsProdutosPRD_RESERVA_VAR6: TFMTBCdField;
    CdsProdutosPRD_RESERVA_VAR7: TFMTBCdField;
    CdsProdutosPRD_RESERVA_VAR8: TFMTBCdField;
    SqlPrdTipoPTI_ATUALIZAR_ESTOQUE: TStringField;
    CdsPrdTipoPTI_ATUALIZAR_ESTOQUE: TStringField;
    SqlPrdManutPES_KARDEX_TIPO: TStringField;
    CdsPrdManutPES_KARDEX_TIPO: TStringField;
    SqlBancoBAN_LIMITE_CHEQESP: TFMTBCdField;
    SqlBancoBAN_SEQ_CHEQUE: TIntegerField;
    CdsBancoBAN_LIMITE_CHEQESP: TFMTBCdField;
    CdsBancoBAN_SEQ_CHEQUE: TIntegerField;
    SqlPrdManutPED_CODIGO: TStringField;
    CdsPrdManutPED_CODIGO: TStringField;
    SqlTransportadoraTRP_ATIVO: TStringField;
    CdsTransportadoraTRP_ATIVO: TStringField;
    SqlTransportadoraTRP_OBSERVACAO: TMemoField;
    CdsTransportadoraTRP_OBSERVACAO: TMemoField;
    SqlFornecedorFOR_ATIVO: TStringField;
    CdsFornecedorFOR_ATIVO: TStringField;
    SqlFornecedorPCL_CODIGO: TStringField;
    CdsFornecedorPCL_CODIGO: TStringField;
    CdsProdutosPRD_SIMULACAO: TFMTBCdField;
    CdsProdutosPRD_DT_ULT_COMPRA: TDateField;
    CdsProdutosPRD_VL_ULT_COMPRA: TFMTBCdField;
    CdsProdutosPRD_NF_ULT_COMPRA: TStringField;
    CdsProdutosFOR_CODIGO_ANT: TStringField;
    CdsProdutosPRD_DT_ULT_COMPRA_ANT: TDateField;
    CdsProdutosPRD_VL_ULT_COMPRA_ANT: TFMTBCdField;
    CdsProdutosPRD_NF_ULT_COMPRA_ANT: TStringField;
    SqlCLientesCLI_HISTORICO: TMemoField;
    CdsClientesCLI_HISTORICO: TMemoField;
    SqlCLientesCLI_CONSU_PROPRIO: TStringField;
    CdsClientesCLI_CONSU_PROPRIO: TStringField;
    CdsProdutosPRD_LOTE: TStringField;
    CdsProdutosPRD_FATOR_PROD: TFMTBCdField;
    CdsProdutosPRD_DIV_MULT_PROD: TStringField;
    SqlCLientesCID_CODIGO: TIntegerField;
    CdsClientesCID_CODIGO: TIntegerField;
    SqlFornecedorCID_CODIGO: TIntegerField;
    CdsFornecedorCID_CODIGO: TIntegerField;
    SqlEmpresaCID_CODIGO: TIntegerField;
    SqlEmpresaEMP_AMBIENTE_NFE: TIntegerField;
    CdsEmpresaCID_CODIGO: TIntegerField;
    CdsEmpresaEMP_AMBIENTE_NFE: TIntegerField;
    SqlEmpresaEMP_MODELO_NFE: TIntegerField;
    SqlEmpresaEMP_SERIE_NFE: TIntegerField;
    SqlEmpresaEMP_HOST: TStringField;
    SqlEmpresaEMP_USERNAME: TStringField;
    SqlEmpresaEMP_PASSWORD: TStringField;
    SqlEmpresaEMP_REQUER_AUTENTICACAO: TStringField;
    SqlEmpresaEMP_MENSAGEM_NFE: TStringField;
    SqlEmpresaEMP_SISTEMA_CONTINGENCIA_NFE: TStringField;
    CdsEmpresaEMP_MODELO_NFE: TIntegerField;
    CdsEmpresaEMP_SERIE_NFE: TIntegerField;
    CdsEmpresaEMP_HOST: TStringField;
    CdsEmpresaEMP_USERNAME: TStringField;
    CdsEmpresaEMP_PASSWORD: TStringField;
    CdsEmpresaEMP_REQUER_AUTENTICACAO: TStringField;
    CdsEmpresaEMP_MENSAGEM_NFE: TStringField;
    CdsEmpresaEMP_SISTEMA_CONTINGENCIA_NFE: TStringField;
    CdsProdutosSTB_TRIBUTACAO: TStringField;
    CdsProdutosPRD_ORIGEM: TIntegerField;
    SqlEmpresaEMP_CAMINHO_LOGO: TStringField;
    CdsEmpresaEMP_CAMINHO_LOGO: TStringField;
    SqlEmpresaEMP_OPTANTE_SIMPLES: TStringField;
    SqlEmpresaEMP_PERCENT_SIMPLES: TFMTBCdField;
    CdsEmpresaEMP_OPTANTE_SIMPLES: TStringField;
    CdsEmpresaEMP_PERCENT_SIMPLES: TFMTBCdField;
    SqlEmpresaEMP_CODIGO_CONTABILIDADE: TStringField;
    CdsEmpresaEMP_CODIGO_CONTABILIDADE: TStringField;
    SqlEmpresaEMP_EMAIL_CONTADOR: TStringField;
    SqlEmpresaEMP_EMAIL_INTERNO: TStringField;
    CdsEmpresaEMP_EMAIL_CONTADOR: TStringField;
    CdsEmpresaEMP_EMAIL_INTERNO: TStringField;
    SqlVersao: tsqlquery;
    CdsVersao: TClientDataSet;
    DspVersao: TDataSetProvider;
    DsVersao: TDataSource;
    SqlVersaoCODIGO: TIntegerField;
    SqlVersaoVERSAO: TStringField;
    SqlVersaoDATA: TDateField;
    SqlVersaoPROGRAMA: TStringField;
    SqlVersaoNOMEARQUIVO: TStringField;
    SqlVersaoARQUIVO: TBlobField;
    CdsVersaoCODIGO: TIntegerField;
    CdsVersaoVERSAO: TStringField;
    CdsVersaoDATA: TDateField;
    CdsVersaoPROGRAMA: TStringField;
    CdsVersaoNOMEARQUIVO: TStringField;
    CdsVersaoARQUIVO: TBlobField;
    SqlEmpresaEMP_GENERATION_NFE: TStringField;
    CdsEmpresaEMP_GENERATION_NFE: TStringField;
    SqlVersaoATUALIZADOR: TBlobField;
    CdsVersaoATUALIZADOR: TBlobField;
    CdsProdutosPRD_MARGEMVENDA: TFMTBCdField;
    CdsProdutosPRD_MARGEMOFERTA: TFMTBCdField;
    CdsProdutosPRD_PRECOOFERTA: TFMTBCdField;
    CdsProdutosPRD_INICIOOFERTA: TDateField;
    CdsProdutosPRD_FIMOFERTA: TDateField;
    SqlPrdManutPES_CUSTO_AGREGADO: TFMTBCdField;
    SqlPrdManutPES_COMCREDITO: TFMTBCdField;
    CdsPrdManutPES_CUSTO_AGREGADO: TFMTBCdField;
    CdsPrdManutPES_COMCREDITO: TFMTBCdField;
    SqlOperFiscEMP_CODIGO: TStringField;
    SqlOperFiscOPE_CODIGO: TStringField;
    SqlOperFiscOPE_NATUREZA: TStringField;
    SqlOperFiscOPE_TIPO: TStringField;
    SqlOperFiscOPE_ESCRITA: TStringField;
    SqlOperFiscOPE_DENTRO: TStringField;
    SqlOperFiscOPE_DESCRI: TStringField;
    SqlOperFiscOPE_TRIBICMS: TStringField;
    SqlOperFiscOPE_TRIBIPI: TStringField;
    SqlOperFiscOPE_REDU_ICM: TFMTBCdField;
    SqlOperFiscOPE_REDU_IPI: TFMTBCdField;
    SqlOperFiscOPE_IPINABASEICMS: TStringField;
    SqlOperFiscOPE_FRETENABASE: TStringField;
    SqlOperFiscOPE_SEMVLCOM: TStringField;
    SqlOperFiscOPE_IMP_AVISO: TStringField;
    SqlOperFiscOPE_AVISOLEGAL: TStringField;
    SqlOperFiscOPE_AVISOLEGAL2: TStringField;
    SqlOperFiscOPE_AGRUPADO: TStringField;
    SqlOperFiscOPE_SUBTRIBUTARIA: TStringField;
    SqlOperFiscOPE_ESTOQUE: TStringField;
    SqlOperFiscCCT_CODIGO: TStringField;
    SqlOperFiscOPV_CODIGO: TIntegerField;
    SqlOperFiscOPE_SERVICO: TStringField;
    SqlOperFiscOPE_PIS: TFMTBCdField;
    SqlOperFiscOPE_COFINS: TFMTBCdField;
    SqlOperFiscOPE_CONTRISOCIAL: TFMTBCdField;
    SqlOperFiscOPE_DESCRINATUREZA: TStringField;
    SqlOperFiscOPE_INDICE_IMP: TFMTBCdField;
    SqlOperFiscOPE_NOTA_COMPLEMENTAR: TStringField;
    SqlOperFiscOPE_FRETEBASEIPI: TStringField;
    SqlOperFiscOPE_DESPIMPORIPI: TStringField;
    SqlOperFiscOPE_AUMEN_ICMS: TFMTBCdField;
    SqlOperFiscOPE_ICMS_TOTALNOTA: TStringField;
    CdsOperFiscEMP_CODIGO: TStringField;
    CdsOperFiscOPE_CODIGO: TStringField;
    CdsOperFiscOPE_NATUREZA: TStringField;
    CdsOperFiscOPE_TIPO: TStringField;
    CdsOperFiscOPE_ESCRITA: TStringField;
    CdsOperFiscOPE_DENTRO: TStringField;
    CdsOperFiscOPE_DESCRI: TStringField;
    CdsOperFiscOPE_TRIBICMS: TStringField;
    CdsOperFiscOPE_TRIBIPI: TStringField;
    CdsOperFiscOPE_REDU_ICM: TFMTBCdField;
    CdsOperFiscOPE_REDU_IPI: TFMTBCdField;
    CdsOperFiscOPE_IPINABASEICMS: TStringField;
    CdsOperFiscOPE_FRETENABASE: TStringField;
    CdsOperFiscOPE_SEMVLCOM: TStringField;
    CdsOperFiscOPE_IMP_AVISO: TStringField;
    CdsOperFiscOPE_AVISOLEGAL: TStringField;
    CdsOperFiscOPE_AVISOLEGAL2: TStringField;
    CdsOperFiscOPE_AGRUPADO: TStringField;
    CdsOperFiscOPE_SUBTRIBUTARIA: TStringField;
    CdsOperFiscOPE_ESTOQUE: TStringField;
    CdsOperFiscCCT_CODIGO: TStringField;
    CdsOperFiscOPV_CODIGO: TIntegerField;
    CdsOperFiscOPE_SERVICO: TStringField;
    CdsOperFiscOPE_PIS: TFMTBCdField;
    CdsOperFiscOPE_COFINS: TFMTBCdField;
    CdsOperFiscOPE_CONTRISOCIAL: TFMTBCdField;
    CdsOperFiscOPE_DESCRINATUREZA: TStringField;
    CdsOperFiscOPE_INDICE_IMP: TFMTBCdField;
    CdsOperFiscOPE_NOTA_COMPLEMENTAR: TStringField;
    CdsOperFiscOPE_FRETEBASEIPI: TStringField;
    CdsOperFiscOPE_DESPIMPORIPI: TStringField;
    CdsOperFiscOPE_AUMEN_ICMS: TFMTBCdField;
    CdsOperFiscOPE_ICMS_TOTALNOTA: TStringField;
    SqlProdutosPRD_CODIGO: TStringField;
    SqlProdutosPRD_DTCADASTRO: TDateField;
    SqlProdutosPRD_DESCRI_RES: TStringField;
    SqlProdutosPRD_UND: TStringField;
    SqlProdutosPRD_EMBALA: TStringField;
    SqlProdutosPGR_CODIGO: TStringField;
    SqlProdutosPTI_CODIGO: TStringField;
    SqlProdutosIPI_CODIGO: TStringField;
    SqlProdutosPRD_ALIQICM: TFMTBCdField;
    SqlProdutosLIN_CODIGO: TStringField;
    SqlProdutosPRD_CARACT: TMemoField;
    SqlProdutosPRD_MINIMO: TFMTBCdField;
    SqlProdutosPRD_PCUSTO: TFMTBCdField;
    SqlProdutosPRD_PVENDA: TFMTBCdField;
    SqlProdutosPRD_PMEDIO: TFMTBCdField;
    SqlProdutosPRD_PMATPRI: TFMTBCdField;
    SqlProdutosPRD_MAOOBRA: TFMTBCdField;
    SqlProdutosPRD_ESTOQUE: TFMTBCdField;
    SqlProdutosPRD_SAIDA: TFMTBCdField;
    SqlProdutosPRD_PENDENTE: TFMTBCdField;
    SqlProdutosFOR_CODIGO: TStringField;
    SqlProdutosPRD_ENTRADA: TFMTBCdField;
    SqlProdutosPRD_MAXIMO: TFMTBCdField;
    SqlProdutosPRD_TEMSUB: TStringField;
    SqlProdutosPRD_SITRIBUT: TStringField;
    SqlProdutosPRD_ICMSUBS: TFMTBCdField;
    SqlProdutosPRD_UTILCONV: TStringField;
    SqlProdutosPRD_UNDCOMP: TStringField;
    SqlProdutosPRD_PESOKG: TFMTBCdField;
    SqlProdutosPRD_FATORC: TFMTBCdField;
    SqlProdutosPRD_DIVMULT: TStringField;
    SqlProdutosEMP_CODIGO: TStringField;
    SqlProdutosPRD_DTPCUSTO: TSQLTimeStampField;
    SqlProdutosPRD_TABPRECO: TStringField;
    SqlProdutosPRD_GARANTIA: TStringField;
    SqlProdutosPRD_FAMILIA: TStringField;
    SqlProdutosPRD_CODBARRA: TStringField;
    SqlProdutosPRD_VAR1: TFMTBCdField;
    SqlProdutosPRD_VAR2: TFMTBCdField;
    SqlProdutosPRD_VAR3: TFMTBCdField;
    SqlProdutosPRD_VAR4: TFMTBCdField;
    SqlProdutosPRD_VAR5: TFMTBCdField;
    SqlProdutosPRD_VAR6: TFMTBCdField;
    SqlProdutosPRD_VAR7: TFMTBCdField;
    SqlProdutosPRD_VAR8: TFMTBCdField;
    SqlProdutosPRD_DCVAR1: TStringField;
    SqlProdutosPRD_DCVAR2: TStringField;
    SqlProdutosPRD_DCVAR3: TStringField;
    SqlProdutosPRD_DCVAR4: TStringField;
    SqlProdutosPRD_DCVAR5: TStringField;
    SqlProdutosPRD_DCVAR6: TStringField;
    SqlProdutosPRD_DCVAR7: TStringField;
    SqlProdutosPRD_DCVAR8: TStringField;
    SqlProdutosPRD_CURVA: TStringField;
    SqlProdutosPRD_CODMERCOSUL: TStringField;
    SqlProdutosPRD_DTPVENDA: TDateField;
    SqlProdutosAMX_CODIGO: TStringField;
    //SqlProdutosPRD_PESOLIQ: TFMTBCdField;
    SqlProdutosPRD_GRADE: TStringField;
    SqlProdutosPRD_CUSTOCOMIPI: TFMTBCdField;
    SqlProdutosPRD_RESERVA: TFMTBCdField;
    SqlProdutosPRD_EMPENHO: TFMTBCdField;
    SqlProdutosPRD_SALDOPRODUCAO: TFMTBCdField;
    SqlProdutosPRD_SIMULACAO: TFMTBCdField;
    SqlProdutosPRD_COMISSAO: TFMTBCdField;
    SqlProdutosPRD_RESERVA_VAR1: TFMTBCdField;
    SqlProdutosPRD_RESERVA_VAR2: TFMTBCdField;
    SqlProdutosPRD_RESERVA_VAR3: TFMTBCdField;
    SqlProdutosPRD_RESERVA_VAR4: TFMTBCdField;
    SqlProdutosPRD_RESERVA_VAR5: TFMTBCdField;
    SqlProdutosPRD_RESERVA_VAR6: TFMTBCdField;
    SqlProdutosPRD_RESERVA_VAR7: TFMTBCdField;
    SqlProdutosPRD_RESERVA_VAR8: TFMTBCdField;
    SqlProdutosPRD_DT_ULT_COMPRA: TDateField;
    SqlProdutosPRD_VL_ULT_COMPRA: TFMTBCdField;
    SqlProdutosPRD_NF_ULT_COMPRA: TStringField;
    SqlProdutosFOR_CODIGO_ANT: TStringField;
    SqlProdutosPRD_DT_ULT_COMPRA_ANT: TDateField;
    SqlProdutosPRD_VL_ULT_COMPRA_ANT: TFMTBCdField;
    SqlProdutosPRD_NF_ULT_COMPRA_ANT: TStringField;
    SqlProdutosPRD_LOTE: TStringField;
    SqlProdutosPRD_FATOR_PROD: TFMTBCdField;
    SqlProdutosPRD_DIV_MULT_PROD: TStringField;
    SqlProdutosSTB_TRIBUTACAO: TStringField;
    SqlProdutosPRD_ORIGEM: TIntegerField;
    SqlProdutosPRD_CUSTO_CREDITO: TFMTBCdField;
    SqlProdutosPRD_MARGEMVENDA: TFMTBCdField;
    SqlProdutosPRD_MARGEMOFERTA: TFMTBCdField;
    SqlProdutosPRD_PRECOOFERTA: TFMTBCdField;
    SqlProdutosPRD_INICIOOFERTA: TDateField;
    SqlProdutosPRD_FIMOFERTA: TDateField;
    CdsProdutosPRD_CUSTO_CREDITO: TFMTBCdField;
    SqlPrdManutPES_KARDEX_OBS: TStringField;
    CdsPrdManutPES_KARDEX_OBS: TStringField;
    SqlPrdManutUSU_CODIGO: TIntegerField;
    SqlPrdManutUSU_LOGIN: TStringField;
    CdsPrdManutUSU_CODIGO: TIntegerField;
    CdsPrdManutUSU_LOGIN: TStringField;
    SqlPrdTipoPTI_MARGEM: TFMTBCdField;
    CdsPrdTipoPTI_MARGEM: TFMTBCdField;
    SqlPrdTipoPTI_MARGEMOF: TFMTBCdField;
    CdsPrdTipoPTI_MARGEMOF: TFMTBCdField;
    SqlProdutosPRD_PVENDA2: TFMTBCdField;
    SqlProdutosPRD_PVENDA3: TFMTBCdField;
    SqlProdutosPRD_PVENDA4: TFMTBCdField;
    SqlProdutosPRD_PVENDA5: TFMTBCdField;
    SqlProdutosPRD_PVENDA6: TFMTBCdField;
    CdsProdutosPRD_PVENDA2: TFMTBCdField;
    CdsProdutosPRD_PVENDA3: TFMTBCdField;
    CdsProdutosPRD_PVENDA4: TFMTBCdField;
    CdsProdutosPRD_PVENDA5: TFMTBCdField;
    CdsProdutosPRD_PVENDA6: TFMTBCdField;
    SqlProdutosUSU_CODIGO_ATUAL_TAB: TIntegerField;
    SqlProdutosUSU_LOGIN_ATUAL_TAB: TStringField;
    SqlProdutosPRD_DATA_ATUAL_TAB: TSQLTimeStampField;
    CdsProdutosUSU_CODIGO_ATUAL_TAB: TIntegerField;
    CdsProdutosUSU_LOGIN_ATUAL_TAB: TStringField;
    CdsProdutosPRD_DATA_ATUAL_TAB: TSQLTimeStampField;
    SqlEmpresaEMP_SEQUENCIA_NFE: TIntegerField;
    SqlEmpresaEMP_TIPO_DANFE: TStringField;
    CdsEmpresaEMP_SEQUENCIA_NFE: TIntegerField;
    CdsEmpresaEMP_TIPO_DANFE: TStringField;
    SqlProdutosPRD_PESOLIQ: TFMTBCdField;
    CdsProdutosPRD_PESOLIQ: TFMTBCdField;
    SqlTransportadoraCID_CODIGO: TIntegerField;
    CdsTransportadoraCID_CODIGO: TIntegerField;
    SqlEmpresaEMP_CHAVE: TStringField;
    SqlEmpresaEMP_DATA_ACESSO: TStringField;
    SqlEmpresaEMP_CRT: TIntegerField;
    SqlEmpresaEMP_CSOSN: TIntegerField;
    CdsEmpresaEMP_CHAVE: TStringField;
    CdsEmpresaEMP_DATA_ACESSO: TStringField;
    CdsEmpresaEMP_CRT: TIntegerField;
    CdsEmpresaEMP_CSOSN: TIntegerField;
    SqlCLientesCLI_INSCMUNI: TStringField;
    SqlCLientesCLI_BAIENTR: TStringField;
    SqlCLientesCLI_BAIFAT: TStringField;
    CdsClientesCLI_INSCMUNI: TStringField;
    CdsClientesCLI_BAIENTR: TStringField;
    SqlEmpresaEMP_PERIODOIPI: TStringField;
    CdsEmpresaEMP_PERIODOIPI: TStringField;
    SqlFornecedorFOR_INSCMUNI: TStringField;
    SqlFornecedorFOR_DTCADASTRO: TSQLTimeStampField;
    SqlFornecedorFOR_INSCST: TStringField;
    CdsFornecedorFOR_INSCMUNI: TStringField;
    CdsFornecedorFOR_DTCADASTRO: TSQLTimeStampField;
    CdsFornecedorFOR_INSCST: TStringField;
    SqlProdutosSPED_GENCODIGO: TStringField;
    SqlProdutosSPED_TIPCODIGO: TStringField;
    SqlProdutosPRD_UNICODIGO: TIntegerField;
    CdsProdutosSPED_GENCODIGO: TStringField;
    CdsProdutosSPED_TIPCODIGO: TStringField;
    CdsProdutosPRD_UNICODIGO: TIntegerField;
    SqlPrdManutAMX_CODIGO: TStringField;
    SqlPrdManutCLI_CODIGO: TStringField;
    SqlPrdManutAMX_DESCRI: TStringField;
    CdsPrdManutAMX_CODIGO: TStringField;
    CdsPrdManutCLI_CODIGO: TStringField;
    CdsPrdManutAMX_DESCRI: TStringField;
    SqlProdutosPRD_PRODSERV: TStringField;
    CdsProdutosPRD_PRODSERV: TStringField;
    SqlEmpresaEMP_INSC_MUNICIPAL: TStringField;
    CdsEmpresaEMP_INSC_MUNICIPAL: TStringField;
    SqlEmpresaEMP_REGIME_SERVICO: TStringField;
    CdsEmpresaEMP_REGIME_SERVICO: TStringField;
    CdsClientesCLI_BAIFAT: TStringField;
    SqlOperFiscOPE_SEMVLCOM_MOSTRAF: TStringField;
    CdsOperFiscOPE_SEMVLCOM_MOSTRAF: TStringField;
    SqlBancoBAN_CARTEIRA_REGISTRO: TStringField;
    SqlBancoBAN_RESP_BOLETO: TStringField;
    CdsBancoBAN_CARTEIRA_REGISTRO: TStringField;
    CdsBancoBAN_RESP_BOLETO: TStringField;
    SqlCLientesAMX_CODIGO: TStringField;
    SqlCLientesPCL_CODIGO: TStringField;
    SqlCLientesBAN_CODIGO: TStringField;
    SqlCLientesCLI_DESC1: TFMTBCdField;
    SqlCLientesCLI_DESC2: TFMTBCdField;
    CdsClientesAMX_CODIGO: TStringField;
    CdsClientesPCL_CODIGO: TStringField;
    CdsClientesBAN_CODIGO: TStringField;
    CdsClientesCLI_DESC1: TFMTBCdField;
    CdsClientesCLI_DESC2: TFMTBCdField;
    SqlCLientesCLI_TABPRECO: TStringField;
    CdsClientesCLI_TABPRECO: TStringField;
    SqlCLientesPAI_CODIGO: TStringField;
    CdsClientesPAI_CODIGO: TStringField;
    CdsPrdManutREPETICAO_REFER: TIntegerField;
    CdsEmpresaEMP_MODALIDADE: TStringField;
    SqlEmpresaEMP_MODALIDADE: TStringField;
    SqlEmpresaEMP_PIS_ALIQ: TFMTBCdField;
    SqlEmpresaEMP_COFINS_ALIQ: TFMTBCdField;
    SqlEmpresaEMP_IRPJ_ALIQ: TFMTBCdField;
    CdsEmpresaEMP_PIS_ALIQ: TFMTBCdField;
    CdsEmpresaEMP_COFINS_ALIQ: TFMTBCdField;
    CdsEmpresaEMP_IRPJ_ALIQ: TFMTBCdField;
    SqlOperFiscOPE_TRIBPISCOFINS: TStringField;
    SqlOperFiscOPE_TEMCREDITO: TStringField;
    SqlOperFiscOPE_ATIVA: TStringField;
    CdsOperFiscOPE_TRIBPISCOFINS: TStringField;
    CdsOperFiscOPE_TEMCREDITO: TStringField;
    CdsOperFiscOPE_ATIVA: TStringField;
    SqlProdutosPRD_DESCRI: TStringField;
    SqlProdutosPRD_COMPL: TStringField;
    CdsProdutosPRD_DESCRI: TStringField;
    CdsProdutosPRD_COMPL: TStringField;
    SqlFornecedorFOR_MODALIDADE_CONTABIL: TStringField;
    SqlFornecedorFOR_ATUALIZA_PCUSTO: TStringField;
    SqlFornecedorFOR_ATUALIZA_PVENDA: TStringField;
    SqlFornecedorFOR_MOTIVO_INATIVO: TStringField;
    CdsFornecedorFOR_MODALIDADE_CONTABIL: TStringField;
    CdsFornecedorFOR_ATUALIZA_PCUSTO: TStringField;
    CdsFornecedorFOR_ATUALIZA_PVENDA: TStringField;
    CdsFornecedorFOR_MOTIVO_INATIVO: TStringField;
    SqlPrdClassIPINCM_TEMCREDITO: TStringField;
    CdsPrdClassIPINCM_TEMCREDITO: TStringField;
    SqlCLientesCLI_CLASSE_CLI_FOR: TStringField;
    CdsClientesCLI_CLASSE_CLI_FOR: TStringField;
    SqlOperFiscOPE_IPI_TOTALNOTA: TStringField;
    CdsOperFiscOPE_IPI_TOTALNOTA: TStringField;
    SqlProdutosPRD_CODORIGINAL: TStringField;
    CdsProdutosPRD_CODORIGINAL: TStringField;
    SqlCLientesCLI_EMAIL: TStringField;
    SqlCLientesCLI_HOME: TStringField;
    CdsClientesCLI_EMAIL: TStringField;
    CdsClientesCLI_HOME: TStringField;
    SqlFornecedorFOR_EMAIL: TStringField;
    SqlFornecedorFOR_HOME: TStringField;
    CdsFornecedorFOR_EMAIL: TStringField;
    CdsFornecedorFOR_HOME: TStringField;
    SqlCLientesCLI_EMAIL_ALTERNATIVO: TStringField;
    CdsClientesCLI_EMAIL_ALTERNATIVO: TStringField;
    SqlCLientesCLI_RAZAO: TStringField;
    CdsClientesCLI_RAZAO: TStringField;
    SqlRepresentanteREP_COMISSAO: TFMTBCdField;
    CdsRepresentanteREP_COMISSAO: TFMTBCdField;
    SqlCLientesOPE_CODIGO: TStringField;
    CdsClientesOPE_CODIGO: TStringField;
    SqlEmpresaEMP_REQUER_CONEXAO_SSL: TStringField;
    SqlEmpresaEMP_PORTA: TIntegerField;
    SqlEmpresaEMP_VERSAO_SSL: TIntegerField;
    SqlEmpresaEMP_MODO_SSL: TStringField;
    CdsEmpresaEMP_REQUER_CONEXAO_SSL: TStringField;
    CdsEmpresaEMP_PORTA: TIntegerField;
    CdsEmpresaEMP_VERSAO_SSL: TIntegerField;
    CdsEmpresaEMP_MODO_SSL: TStringField;
    SqlProdutosPRD_CUSTOFRETE: TFMTBCdField;
    SqlProdutosPRD_CUSTOIPI: TFMTBCdField;
    SqlProdutosPRD_CUSTOSUBTRIB: TFMTBCdField;
    SqlProdutosPRD_CUSTOADCIONAL: TFMTBCdField;
    SqlProdutosPRD_MGDESPFIXAS: TFMTBCdField;
    SqlProdutosPRD_INDICESOBMARGEM: TFMTBCdField;
    CdsProdutosPRD_CUSTOFRETE: TFMTBCdField;
    CdsProdutosPRD_CUSTOIPI: TFMTBCdField;
    CdsProdutosPRD_CUSTOSUBTRIB: TFMTBCdField;
    CdsProdutosPRD_CUSTOADCIONAL: TFMTBCdField;
    CdsProdutosPRD_MGDESPFIXAS: TFMTBCdField;
    CdsProdutosPRD_INDICESOBMARGEM: TFMTBCdField;
    SqlBancoBAN_CODNOBANCO: TStringField;
    CdsBancoBAN_CODNOBANCO: TStringField;
    SqlBancoBAN_CODIGO_TRANSMISSAO: TStringField;
    CdsBancoBAN_CODIGO_TRANSMISSAO: TStringField;
    SqlBancoBAN_CONTA: TStringField;
    CdsBancoBAN_CONTA: TStringField;
    SqlBancoBAN_CONCILIACAO_DATA: TDateField;
    SqlBancoBAN_CONCILIACAO_SALDO: TFMTBCdField;
    CdsBancoBAN_CONCILIACAO_DATA: TDateField;
    CdsBancoBAN_CONCILIACAO_SALDO: TFMTBCdField;
    SqlEmpresaEMP_SEQUENCIA_NFE_SCAN: TIntegerField;
    CdsEmpresaEMP_SEQUENCIA_NFE_SCAN: TIntegerField;
    SqlParcelasPCL_PERCENTUAL_PRIMEIRA_P: TFMTBCdField;
    strngfldSqlParcelasPCL_TIPO: TStringField;
    CdsParcelasPCL_PERCENTUAL_PRIMEIRA_P: TFMTBCdField;
    CdsParcelasPCL_TIPO: TStringField;
    SqlEmpresaEMP_CONT_PESSOA: TStringField;
    SqlEmpresaEMP_CONT_NOME: TStringField;
    SqlEmpresaEMP_CONT_CRC: TStringField;
    SqlEmpresaEMP_CONT_ENDERECO: TStringField;
    SqlEmpresaEMP_CONT_NUMERO: TStringField;
    SqlEmpresaEMP_CONT_CEP: TStringField;
    SqlEmpresaEMP_CONT_COMPLEMENTO: TStringField;
    SqlEmpresaEMP_CONT_BAIRRO: TStringField;
    SqlEmpresaEMP_CONT_FONE: TStringField;
    SqlEmpresaEMP_CONT_FAX: TStringField;
    SqlEmpresaEMP_CONT_EMAIL: TStringField;
    SqlEmpresaEMP_CONT_CID: TIntegerField;
    CdsEmpresaEMP_CONT_PESSOA: TStringField;
    CdsEmpresaEMP_CONT_NOME: TStringField;
    CdsEmpresaEMP_CONT_CRC: TStringField;
    CdsEmpresaEMP_CONT_ENDERECO: TStringField;
    CdsEmpresaEMP_CONT_NUMERO: TStringField;
    CdsEmpresaEMP_CONT_CEP: TStringField;
    CdsEmpresaEMP_CONT_COMPLEMENTO: TStringField;
    CdsEmpresaEMP_CONT_BAIRRO: TStringField;
    CdsEmpresaEMP_CONT_FONE: TStringField;
    CdsEmpresaEMP_CONT_FAX: TStringField;
    CdsEmpresaEMP_CONT_EMAIL: TStringField;
    CdsEmpresaEMP_CONT_CID: TIntegerField;
    SqlEmpresaEMP_SUFRAMA: TStringField;
    SqlEmpresaEMP_INDICADOR_ATIVIDADE: TIntegerField;
    CdsEmpresaEMP_SUFRAMA: TStringField;
    CdsEmpresaEMP_INDICADOR_ATIVIDADE: TIntegerField;
    SqlEmpresaEMP_CONT_CIDADE: TStringField;
    SqlEmpresaEMP_CONT_UF: TStringField;
    CdsEmpresaEMP_CONT_CIDADE: TStringField;
    CdsEmpresaEMP_CONT_UF: TStringField;
    SqlCLientesCLI_SUFRAMA: TStringField;
    CdsClientesCLI_SUFRAMA: TStringField;
    SqlFornecedorFOR_SUFRAMA: TStringField;
    CdsFornecedorFOR_SUFRAMA: TStringField;
    SqlProdutosSRV_REGISTRO: TIntegerField;
    CdsProdutosSRV_REGISTRO: TIntegerField;
    SqlParcelasPCL_MODALIDADE: TStringField;
    CdsParcelasPCL_MODALIDADE: TStringField;
    SqlOperFiscOPE_NATUREZA_ENTRADA: TStringField;
    CdsOperFiscOPE_NATUREZA_ENTRADA: TStringField;
    SqlPrdTipoSPED_GENCODIGO: TStringField;
    CdsPrdTipoSPED_GENCODIGO: TStringField;
    SqlProdutosPRD_FOTO: TBlobField;
    CdsProdutosPRD_FOTO: TBlobField;
    SqlEmpresaEMP_LOGO: TBlobField;
    CdsEmpresaEMP_LOGO: TBlobField;
    SqlTransportadoraTRP_EMAIL: TStringField;
    CdsTransportadoraTRP_EMAIL: TStringField;
    SqlEmpresaEMP_COD_INC_TRIBUTARIA: TStringField;
    SqlEmpresaEMP_COD_IND_APROP_CREDITO: TStringField;
    SqlEmpresaEMP_COD_IND_TIPO_APURADA: TStringField;
    SqlEmpresaEMP_COD_IND_REGIME: TStringField;
    CdsEmpresaEMP_COD_INC_TRIBUTARIA: TStringField;
    CdsEmpresaEMP_COD_IND_APROP_CREDITO: TStringField;
    CdsEmpresaEMP_COD_IND_TIPO_APURADA: TStringField;
    CdsEmpresaEMP_COD_IND_REGIME: TStringField;
    SqlTransportadoraTRP_BAIRRO: TStringField;
    CdsTransportadoraTRP_BAIRRO: TStringField;
    SqlOperFiscOPE_TIPO_OPERACAO: TStringField;
    CdsOperFiscOPE_TIPO_OPERACAO: TStringField;
    SqlEmpresaEMP_COD_IND_ESCRITURACAO: TStringField;
    CdsEmpresaEMP_COD_IND_ESCRITURACAO: TStringField;
    SqlEmpresaEMP_CONT_CNPJ: TStringField;
    SqlEmpresaEMP_CONT_CPF: TStringField;
    CdsEmpresaEMP_CONT_CNPJ: TStringField;
    CdsEmpresaEMP_CONT_CPF: TStringField;
    SQLConversaoMedida: tsqlquery;
    CdsConversaoMedida: TClientDataSet;
    DspConversaoMedida: TDataSetProvider;
    dsConversaoMedida: TDataSource;
    SQLConversaoMedidaCONV_REGISTRO: TIntegerField;
    SQLConversaoMedidaEMP_CODIGO: TStringField;
    SQLConversaoMedidaCONV_UND_DE: TStringField;
    SQLConversaoMedidaCONV_UND_PARA: TStringField;
    SQLConversaoMedidaCONV_OPERACAO: TStringField;
    SQLConversaoMedidaCONV_FATOR: TFMTBCdField;
    CdsConversaoMedidaCONV_REGISTRO: TIntegerField;
    CdsConversaoMedidaEMP_CODIGO: TStringField;
    CdsConversaoMedidaCONV_UND_DE: TStringField;
    CdsConversaoMedidaCONV_UND_PARA: TStringField;
    CdsConversaoMedidaCONV_OPERACAO: TStringField;
    CdsConversaoMedidaCONV_FATOR: TFMTBCdField;
    CdsConversaoMedidawOperacao: TStringField;
    SqlOperFiscOPE_ATUALIZA_CUSTO: TStringField;
    CdsOperFiscOPE_ATUALIZA_CUSTO: TStringField;
    SqlProdutosPRD_STATUS: TStringField;
    CdsProdutosPRD_STATUS: TStringField;
    SqlProdutosPRD_GERENCIA_LOTE: TStringField;
    CdsProdutosPRD_GERENCIA_LOTE: TStringField;
    SqlCLientesCLI_REGIME_TRIBUTARIO: TStringField;
    CdsClientesCLI_REGIME_TRIBUTARIO: TStringField;
    SqlCtAnaliseCCT_PERFIL_RATEIO: TStringField;
    CdsCtAnaliseCCT_PERFIL_RATEIO: TStringField;
    SqlEmpresaEMP_CSOSN_ST: TIntegerField;
    CdsEmpresaEMP_CSOSN_ST: TIntegerField;
    SqlEmpresaOPE_CODIGO_DENTRO: TStringField;
    SqlEmpresaOPE_CODIGO_FORA: TStringField;
    CdsEmpresaOPE_CODIGO_DENTRO: TStringField;
    CdsEmpresaOPE_CODIGO_FORA: TStringField;
    DsPrdClassIPIICMS: TDataSource;
    CdsPrdClassIPIICMS: TClientDataSet;
    DspPrdClassIPIICMS: TDataSetProvider;
    SqlPrdClassIPIICMS: tsqlquery;
    SqlPrdClassIPIICMSIPII_REGISTRO: TIntegerField;
    SqlPrdClassIPIICMSEMP_CODIGO: TStringField;
    SqlPrdClassIPIICMSIPI_CODIGO: TStringField;
    SqlPrdClassIPIICMSIPII_ESTADO: TStringField;
    SqlPrdClassIPIICMSIPII_ALIQUOTA: TFMTBCdField;
    CdsPrdClassIPIICMSIPII_REGISTRO: TIntegerField;
    CdsPrdClassIPIICMSEMP_CODIGO: TStringField;
    CdsPrdClassIPIICMSIPI_CODIGO: TStringField;
    CdsPrdClassIPIICMSIPII_ESTADO: TStringField;
    CdsPrdClassIPIICMSIPII_ALIQUOTA: TFMTBCdField;
    SqlProdutosPRD_REFER: TStringField;
    CdsProdutosPRD_REFER: TStringField;
    SqlForXProdPRD_REFER: TStringField;
    SqlForXProdFOR_DESCRICAO_PRODUTO: TStringField;
    CdsForXProdPRD_REFER: TStringField;
    CdsForXProdFOR_DESCRICAO_PRODUTO: TStringField;
    SqlPrdManutPRD_REFER: TStringField;
    SqlPrdManutREPETICAO_REFER: TIntegerField;
    CdsPrdManutPRD_REFER: TStringField;
    SqlProdutosPRD_UND_GRADE_CALCULO: TStringField;
    CdsProdutosPRD_UND_GRADE_CALCULO: TStringField;
    SqlPrdClassIPIIPI_VALOR_POR_ITEM: TFMTBCdField;
    CdsPrdClassIPIIPI_VALOR_POR_ITEM: TFMTBCdField;
    SqlPrdTipoPTI_SINCRONIZA: TStringField;
    CdsPrdTipoPTI_SINCRONIZA: TStringField;
    SqlCLientesPCX_CODIGO: TStringField;
    CdsClientesPCX_CODIGO: TStringField;
    SqlOperFiscOPE_INDUSTRIALIZACAO: TStringField;
    CdsOperFiscOPE_INDUSTRIALIZACAO: TStringField;
    SqlProdutosPRD_GRADE_OBRIGATORIO: TStringField;
    CdsProdutosPRD_GRADE_OBRIGATORIO: TStringField;
    dsDiretiva: TDataSource;
    CdsDiretiva: TClientDataSet;
    DspDiretiva: TDataSetProvider;
    SqlDiretiva: tsqlquery;
    SqlDiretivaPRDD_REGISTRO: TIntegerField;
    SqlDiretivaEMP_CODIGO: TStringField;
    SqlDiretivaPRDD_DESCRICAO: TStringField;
    SqlDiretivaPRDD_ATIVO: TStringField;
    CdsDiretivaPRDD_REGISTRO: TIntegerField;
    CdsDiretivaEMP_CODIGO: TStringField;
    CdsDiretivaPRDD_DESCRICAO: TStringField;
    CdsDiretivaPRDD_ATIVO: TStringField;
    SqlTransportadoraTRP_PLACA: TStringField;
    CdsTransportadoraTRP_PLACA: TStringField;
    SqlDiretivaPRDD_SIGLA: TStringField;
    CdsDiretivaPRDD_SIGLA: TStringField;
    dsCnae: TDataSource;
    CdsCnae: TClientDataSet;
    DspCnae: TDataSetProvider;
    SqlCnae: tsqlquery;
    SqlCnaeCNAE_REGISTRO: TIntegerField;
    SqlCnaeCNAE_CODIGO: TStringField;
    SqlCnaeCNAE_DESCRICAO: TStringField;
    SqlCnaeCNAE_CARGA_TRIB_MEDIA: TFMTBCdField;
    CdsCnaeCNAE_REGISTRO: TIntegerField;
    CdsCnaeCNAE_CODIGO: TStringField;
    CdsCnaeCNAE_DESCRICAO: TStringField;
    CdsCnaeCNAE_CARGA_TRIB_MEDIA: TFMTBCdField;
    SqlCLientesCNAE_REGISTRO: TIntegerField;
    CdsClientesCNAE_REGISTRO: TIntegerField;
    SqlCLientesCLI_MODO_TRIB_ST: TStringField;
    CdsClientesCLI_MODO_TRIB_ST: TStringField;
    SqlSharedbFISCAL: TStringField;
    CdsSharedbFISCAL: TStringField;
    SqlProdutosPRDE_REGISTRO: TIntegerField;
    CdsProdutosPRDE_REGISTRO: TIntegerField;
    SqlPrdClassIPIIPI_EX: TStringField;
    CdsPrdClassIPIIPI_EX: TStringField;
    SqlProdutosCEST_COD: TStringField;
    SqlProdutosCEST_REVISAR: TStringField;
    CdsProdutosCEST_COD: TStringField;
    CdsProdutosCEST_REVISAR: TStringField;
    SqlOperFiscEMP_CSOSN: TIntegerField;
    SqlOperFiscEMP_CSOSN_ST: TIntegerField;
    CdsOperFiscEMP_CSOSN: TIntegerField;
    CdsOperFiscEMP_CSOSN_ST: TIntegerField;
    SqlBancoBAN_MULTA: TFMTBCdField;
    SqlBancoBAN_MULTA_DIAS: TIntegerField;
    CdsBancoBAN_MULTA: TFMTBCdField;
    CdsBancoBAN_MULTA_DIAS: TIntegerField;
    SqlCLientesPRE_ID: TIntegerField;
    CdsClientesPRE_ID: TIntegerField;
    SqlTransportadoraTRP_PLACAUF: TStringField;
    CdsTransportadoraTRP_PLACAUF: TStringField;
    SqlProdutosPRD_CSTPISCOFINS: TStringField;
    CdsProdutosPRD_CSTPISCOFINS: TStringField;
    SqlUpdate2: TSQLQuery;
    SqlUpdate1RES: TSQLQuery;
    SqlBancoban_convenio: TStringField;
    CdsBancoban_convenio: TStringField;
    SqlTransportadoraFRETE: TStringField;
    CdsTransportadoraFRETE: TStringField;
    SqlTransportadoraCLIENTE_RETIRA: TStringField;
    CdsTransportadoraCLIENTE_RETIRA: TStringField;
    SqlParcelasPERC_COMISSAO: TFMTBCDField;
    SqlParcelasPERC_VERBA: TFMTBCDField;
    CdsParcelasPERC_COMISSAO: TFMTBCDField;
    CdsParcelasPERC_VERBA: TFMTBCDField;
    SqlRepresentanteGERAR_VERBA: TStringField;
    CdsRepresentanteGERAR_VERBA: TStringField;
    SqlFornecedorAMX_CODIGO: TStringField;
    SqlFornecedorCOLABORADOR: TStringField;
    SqlFornecedorENDERECO_COL: TStringField;
    SqlFornecedorDATA_NASC: TSQLTimeStampField;
    SqlFornecedorLOCAL_NASC: TStringField;
    SqlFornecedorNACIONALIDADE: TStringField;
    SqlFornecedorESTADO_CIVIL: TStringField;
    SqlFornecedorPAI: TStringField;
    SqlFornecedorMAE: TStringField;
    SqlFornecedorRG: TStringField;
    SqlFornecedorRG_EMISSAO: TSQLTimeStampField;
    SqlFornecedorORGAO_UF: TStringField;
    SqlFornecedorTITULO_ELEITORAL: TStringField;
    SqlFornecedorZONA: TIntegerField;
    SqlFornecedorSECAO: TIntegerField;
    SqlFornecedorORGAO_CLASSE: TStringField;
    SqlFornecedorCTPS: TIntegerField;
    SqlFornecedorSERIE: TStringField;
    SqlFornecedorCTPS_EXPEDICAO: TSQLTimeStampField;
    SqlFornecedorCTPS_UF: TStringField;
    SqlFornecedorCPF: TStringField;
    SqlFornecedorHABILITACAO: TStringField;
    SqlFornecedorHABILITACAO_CATEG: TStringField;
    SqlFornecedorDOC_MILITAR: TStringField;
    SqlFornecedorDOC_MILITAR_CATEG: TStringField;
    SqlFornecedorCOR: TStringField;
    SqlFornecedorSEXO: TStringField;
    SqlFornecedorGRAU_INSTRUCAO: TStringField;
    SqlFornecedorDEFICIENCIA: TStringField;
    SqlFornecedorCARGO: TStringField;
    SqlFornecedorFUNCAO: TStringField;
    SqlFornecedorADMISSAO: TSQLTimeStampField;
    SqlFornecedorSALARIO: TFMTBCDField;
    SqlFornecedorSALARIO_POR: TStringField;
    SqlFornecedorHORA_ENTRADA: TTimeField;
    SqlFornecedorHORA_SAIDA: TTimeField;
    SqlFornecedorSAIDA_INTERVALO: TTimeField;
    SqlFornecedorENTRADA_INTERVALO: TTimeField;
    SqlFornecedorFGTS_DATA_OPCAO: TSQLTimeStampField;
    SqlFornecedorFGTS_CONTA_BANCO: TStringField;
    SqlFornecedorFGTS_DATA_RETIFICACAO: TSQLTimeStampField;
    SqlFornecedorPIS_DATA: TSQLTimeStampField;
    SqlFornecedorPIS_NUMERO: TStringField;
    SqlFornecedorPIS_DOMINIO_BANCARIO: TStringField;
    SqlFornecedorPIS_NUM_BANCO: TIntegerField;
    SqlFornecedorPIS_END_AGENCIA: TStringField;
    SqlFornecedorBENEFICIARIOS: TStringField;
    SqlFornecedorSALARIO_ALTERACOES: TStringField;
    SqlFornecedorFERIAS_PERIODO_AQUISITIVO: TStringField;
    SqlFornecedorFERIAS_PERIODO_GOZO: TStringField;
    SqlFornecedorACIDENTE_TRABALHO: TStringField;
    SqlFornecedorDOENCA_PROFISSIONAL: TStringField;
    SqlFornecedorCONTRIBUICAO_SINDICATO: TStringField;
    SqlFornecedorRESCISAO_DATA: TSQLTimeStampField;
    SqlFornecedorRESCISAO_TIPO: TStringField;
    CdsFornecedorAMX_CODIGO: TStringField;
    CdsFornecedorCOLABORADOR: TStringField;
    CdsFornecedorENDERECO_COL: TStringField;
    CdsFornecedorDATA_NASC: TSQLTimeStampField;
    CdsFornecedorLOCAL_NASC: TStringField;
    CdsFornecedorNACIONALIDADE: TStringField;
    CdsFornecedorESTADO_CIVIL: TStringField;
    CdsFornecedorPAI: TStringField;
    CdsFornecedorMAE: TStringField;
    CdsFornecedorRG: TStringField;
    CdsFornecedorRG_EMISSAO: TSQLTimeStampField;
    CdsFornecedorORGAO_UF: TStringField;
    CdsFornecedorTITULO_ELEITORAL: TStringField;
    CdsFornecedorZONA: TIntegerField;
    CdsFornecedorSECAO: TIntegerField;
    CdsFornecedorORGAO_CLASSE: TStringField;
    CdsFornecedorCTPS: TIntegerField;
    CdsFornecedorSERIE: TStringField;
    CdsFornecedorCTPS_EXPEDICAO: TSQLTimeStampField;
    CdsFornecedorCTPS_UF: TStringField;
    CdsFornecedorCPF: TStringField;
    CdsFornecedorHABILITACAO: TStringField;
    CdsFornecedorHABILITACAO_CATEG: TStringField;
    CdsFornecedorDOC_MILITAR: TStringField;
    CdsFornecedorDOC_MILITAR_CATEG: TStringField;
    CdsFornecedorCOR: TStringField;
    CdsFornecedorSEXO: TStringField;
    CdsFornecedorGRAU_INSTRUCAO: TStringField;
    CdsFornecedorDEFICIENCIA: TStringField;
    CdsFornecedorCARGO: TStringField;
    CdsFornecedorFUNCAO: TStringField;
    CdsFornecedorADMISSAO: TSQLTimeStampField;
    CdsFornecedorSALARIO: TFMTBCDField;
    CdsFornecedorSALARIO_POR: TStringField;
    CdsFornecedorHORA_ENTRADA: TTimeField;
    CdsFornecedorHORA_SAIDA: TTimeField;
    CdsFornecedorSAIDA_INTERVALO: TTimeField;
    CdsFornecedorENTRADA_INTERVALO: TTimeField;
    CdsFornecedorFGTS_DATA_OPCAO: TSQLTimeStampField;
    CdsFornecedorFGTS_CONTA_BANCO: TStringField;
    CdsFornecedorFGTS_DATA_RETIFICACAO: TSQLTimeStampField;
    CdsFornecedorPIS_DATA: TSQLTimeStampField;
    CdsFornecedorPIS_NUMERO: TStringField;
    CdsFornecedorPIS_DOMINIO_BANCARIO: TStringField;
    CdsFornecedorPIS_NUM_BANCO: TIntegerField;
    CdsFornecedorPIS_END_AGENCIA: TStringField;
    CdsFornecedorBENEFICIARIOS: TStringField;
    CdsFornecedorSALARIO_ALTERACOES: TStringField;
    CdsFornecedorFERIAS_PERIODO_AQUISITIVO: TStringField;
    CdsFornecedorFERIAS_PERIODO_GOZO: TStringField;
    CdsFornecedorACIDENTE_TRABALHO: TStringField;
    CdsFornecedorDOENCA_PROFISSIONAL: TStringField;
    CdsFornecedorCONTRIBUICAO_SINDICATO: TStringField;
    CdsFornecedorRESCISAO_DATA: TSQLTimeStampField;
    CdsFornecedorRESCISAO_TIPO: TStringField;
    SqlFornecedorFONE_RESIDENCIAL: TStringField;
    SqlFornecedorFONE_CELULAR: TStringField;
    SqlFornecedorCBO: TStringField;
    SqlFornecedorPIS_AGENCIA: TStringField;
    CdsFornecedorFONE_RESIDENCIAL: TStringField;
    CdsFornecedorFONE_CELULAR: TStringField;
    CdsFornecedorCBO: TStringField;
    CdsFornecedorPIS_AGENCIA: TStringField;
    SqlCLientesCLI_VALORFRETE: TFMTBCDField;
    SqlCLientesCLI_VALORDESPESAS: TFMTBCDField;
    CdsClientesCLI_VALORFRETE: TFMTBCDField;
    CdsClientesCLI_VALORDESPESAS: TFMTBCDField;
    sATUALIZACAO_CUSTOS: TSQLStoredProc;
    CdsCnaesrv_codigo: TStringField;
    SqlCnaesrv_codigo: TStringField;
    dspSQLupd: TDataSetProvider;
    cdsSQLupd: TClientDataSet;
    CdsClientesVEND_INTERNO_CODIGO: TStringField;
    SqlCLientesVEND_INTERNO_CODIGO: TStringField;
    CdsClientesFPG_REGISTRO: TIntegerField;
    SqlCLientesFPG_REGISTRO: TIntegerField;
    CdsBancoBAN_LEIAUTE: TIntegerField;
    SqlBancoBAN_LEIAUTE: TIntegerField;
    SqlCLientesCLI_FRETE: TStringField;
    CdsClientesCLI_FRETE: TStringField;
    CdsPrdGrupoPGR_PER_LUCRO: TFMTBCDField;
    CdsPrdGrupoPGR_PER_OUTROS: TFMTBCDField;
    CdsPrdGrupoPGR_PER_FRETE: TFMTBCDField;
    CdsPrdGrupoPGR_PER_IPI: TFMTBCDField;
    CdsPrdGrupoPGR_PER_PISCONFINS: TFMTBCDField;
    CdsPrdGrupoPGR_PER_ICMS: TFMTBCDField;
    CdsPrdGrupoPGR_MARGEMVENDA: TFMTBCDField;
    CdsPrdGrupoPGR_MARGEMOFERTA: TFMTBCDField;
    SqlPrdGrupoPGR_PER_ICMS: TFMTBCDField;
    SqlPrdGrupoPGR_PER_PISCONFINS: TFMTBCDField;
    SqlPrdGrupoPGR_PER_IPI: TFMTBCDField;
    SqlPrdGrupoPGR_PER_FRETE: TFMTBCDField;
    SqlPrdGrupoPGR_PER_OUTROS: TFMTBCDField;
    SqlPrdGrupoPGR_PER_LUCRO: TFMTBCDField;
    SqlPrdGrupoPGR_MARGEMOFERTA: TFMTBCDField;
    SqlPrdGrupoPGR_MARGEMVENDA: TFMTBCDField;
    SqlCLientesCLI_UND_CONSUMIDORA: TIntegerField;
    CdsClientesCLI_UND_CONSUMIDORA: TIntegerField;
    CdsParcelasPCL_TX_MARGEM: TFMTBCDField;
    SqlParcelasPCL_TX_MARGEM: TFMTBCDField;
    CdsParcelaspcl_baixa_automa: TStringField;
    SqlParcelaspcl_baixa_automa: TStringField;
    CdsOperFiscOPE_ENTRADA_INDUST: TStringField;
    CdsOperFiscOPE_RETORNO_INDUST: TStringField;
    SqlOperFiscOPE_ENTRADA_INDUST: TStringField;
    SqlOperFiscOPE_RETORNO_INDUST: TStringField;
    CdsPrdClassIPIIPI_REDVLLIQ: TStringField;
    SqlPrdClassIPIIPI_REDVLLIQ: TStringField;
    CdsBancoBAN_DIASCRED_CARTAO: TIntegerField;
    SqlBancoBAN_DIASCRED_CARTAO: TIntegerField;
    CdsBancoBAN_ATIVO: TStringField;
    SqlBancoBAN_ATIVO: TStringField;
    CdsClientesCLI_SEMCOMISSAO: TStringField;
    SqlCLientesCLI_SEMCOMISSAO: TStringField;
    CdsCnaecnae_ativo: TStringField;
    SqlCnaecnae_ativo: TStringField;
    CdsClientesCLI_LATITUDE: TFMTBCDField;
    CdsClientesCLI_LONGITUDE: TFMTBCDField;
    SqlCLientesCLI_LATITUDE: TFMTBCDField;
    SqlCLientesCLI_LONGITUDE: TFMTBCDField;
    CdsOperFiscOPE_TEMRETENCAO: TStringField;
    SqlOperFiscOPE_TEMRETENCAO: TStringField;
    SqlOperFiscOPE_CST_IPI: TStringField;
    SqlOperFiscOPE_CST_PISCOFINS: TStringField;
    CdsOperFiscOPE_CST_IPI: TStringField;
    CdsOperFiscOPE_CST_PISCOFINS: TStringField;
    CdsClientesCORI_CODIGO: TIntegerField;
    SqlCLientesCORI_CODIGO: TIntegerField;
    CdsOperFiscOPE_OCULTA: TStringField;
    SqlOperFiscOPE_OCULTA: TStringField;
    CdsOperFiscOPE_TRIBUTAR_INSS: TStringField;
    CdsOperFiscOPE_TRIBUTAR_CSLL: TStringField;
    CdsOperFiscOPE_TRIBUTAR_IR: TStringField;
    CdsOperFiscOPE_TRIBUTAR_PIS: TStringField;
    CdsOperFiscOPE_TRIBUTAR_COFINS: TStringField;
    SqlOperFiscOPE_TRIBUTAR_INSS: TStringField;
    SqlOperFiscOPE_TRIBUTAR_CSLL: TStringField;
    SqlOperFiscOPE_TRIBUTAR_IR: TStringField;
    SqlOperFiscOPE_TRIBUTAR_PIS: TStringField;
    SqlOperFiscOPE_TRIBUTAR_COFINS: TStringField;
    CdsOperFiscOPE_ICMSDESON: TFMTBCDField;
    CdsOperFiscOPE_MOTIVDESON: TIntegerField;
    SqlOperFiscOPE_ICMSDESON: TFMTBCDField;
    SqlOperFiscOPE_MOTIVDESON: TIntegerField;
    CdsBancoBAN_INSTRUCAO3: TStringField;
    SqlBancoBAN_INSTRUCAO3: TStringField;
    CdsOperFiscOPE_CENQ_IPI: TStringField;
    SqlOperFiscOPE_CENQ_IPI: TStringField;
    SqlOperFiscOPE_ICMS_DESONERADO_DIMINUI: TStringField;
    CdsOperFiscOPE_ICMS_DESONERADO_DIMINUI: TStringField;
    SqlOperFiscOPE_FORMULA_BASE_ICMS: TIntegerField;
    CdsOperFiscOPE_FORMULA_BASE_ICMS: TIntegerField;
    SqlOperFiscOPE_REF_NFE_IND: TStringField;
    CdsOperFiscOPE_REF_NFE_IND: TStringField;
    SqlOperFiscOPE_VENDA_SAIDA_ARMAZEM: TStringField;
    CdsOperFiscOPE_VENDA_SAIDA_ARMAZEM: TStringField;
    SqlAlmoxarifado: TSQLQuery;
    dspAlmoxarifado: TDataSetProvider;
    cdsAlmoxarifado: TClientDataSet;
    dsAlmoxarifado: TDataSource;
    SqlAlmoxarifadoAMX_CODIGO: TStringField;
    SqlAlmoxarifadoAMX_DESCRI: TStringField;
    SqlAlmoxarifadoAMX_TIPO: TStringField;
    SqlAlmoxarifadoEMP_CODIGO: TStringField;
    SqlAlmoxarifadoAMX_FISICO: TStringField;
    SqlAlmoxarifadoAMX_TERCEIROS: TStringField;
    SqlAlmoxarifadoAMX_FORATERCEIROS: TStringField;
    SqlAlmoxarifadoAMX_CIRCULANTE: TStringField;
    SqlAlmoxarifadoAMX_VIRTUAL: TStringField;
    SqlAlmoxarifadoAMX_ATIVO: TStringField;
    SqlAlmoxarifadoAMX_CNPJ_PART: TStringField;
    SqlAlmoxarifadoEMI_IE: TStringField;
    SqlAlmoxarifadoEMI_CODIGO: TIntegerField;
    SqlAlmoxarifadoAMX_NUM_ATO_DECLARATORIO: TStringField;
    SqlAlmoxarifadoAMX_VALIDADE_ATO_DECLARATORIO: TDateField;
    cdsAlmoxarifadoAMX_CODIGO: TStringField;
    cdsAlmoxarifadoAMX_DESCRI: TStringField;
    cdsAlmoxarifadoAMX_TIPO: TStringField;
    cdsAlmoxarifadoEMP_CODIGO: TStringField;
    cdsAlmoxarifadoAMX_FISICO: TStringField;
    cdsAlmoxarifadoAMX_TERCEIROS: TStringField;
    cdsAlmoxarifadoAMX_FORATERCEIROS: TStringField;
    cdsAlmoxarifadoAMX_CIRCULANTE: TStringField;
    cdsAlmoxarifadoAMX_VIRTUAL: TStringField;
    cdsAlmoxarifadoAMX_ATIVO: TStringField;
    cdsAlmoxarifadoAMX_CNPJ_PART: TStringField;
    cdsAlmoxarifadoEMI_IE: TStringField;
    cdsAlmoxarifadoEMI_CODIGO: TIntegerField;
    cdsAlmoxarifadoAMX_NUM_ATO_DECLARATORIO: TStringField;
    cdsAlmoxarifadoAMX_VALIDADE_ATO_DECLARATORIO: TDateField;
    SqlParcelasPCL_VALOR_MINIMO_VENDA: TFMTBCDField;
    CdsParcelasPCL_VALOR_MINIMO_VENDA: TFMTBCDField;
    SqlOperFiscOPE_RETORNO_INDUST_SOBRA: TStringField;
    CdsOperFiscOPE_RETORNO_INDUST_SOBRA: TStringField;
    SqlBancoFPG_REGISTRO: TIntegerField;
    CdsBancoFPG_REGISTRO: TIntegerField;
    SqlOperFiscOPE_DESP_ACES_PIS_COFINS: TStringField;
    CdsOperFiscOPE_DESP_ACES_PIS_COFINS: TStringField;
    SqlUpdate1: TFDQuery;
    SqlBancoBAN_TIPO_JUROS: TStringField;
    CdsBancoBAN_TIPO_JUROS: TStringField;
    SqlPrdClassIPINCM_DESC_FAMILIA: TMemoField;
    CdsPrdClassIPINCM_DESC_FAMILIA: TMemoField;
    SqlFornecedorTRP_CODIGO: TStringField;
    CdsFornecedorTRP_CODIGO: TStringField;
    SqlBancoBAN_DIAS_PARA_BAIXA: TIntegerField;
    CdsBancoBAN_DIAS_PARA_BAIXA: TIntegerField;
    SqlCLientesCLI_DTNASCIMENTO: TSQLTimeStampField;
    CdsClientesCLI_DTNASCIMENTO: TSQLTimeStampField;
    SqlOperFiscOPE_ARTIGO_DIFERIMENTO: TStringField;
    SqlOperFiscOPE_ARTIGO_REDUCAO: TStringField;
    CdsOperFiscOPE_ARTIGO_DIFERIMENTO: TStringField;
    CdsOperFiscOPE_ARTIGO_REDUCAO: TStringField;
    SqlCLientesCCT_CODIGO: TStringField;
    CdsClientesCCT_CODIGO: TStringField;
    SqlSharedbPRODUTO_PRECO_EMPRESA: TStringField;
    CdsSharedbPRODUTO_PRECO_EMPRESA: TStringField;
    SqlSharedbENDERECO_ESTOQUE: TStringField;
    CdsSharedbENDERECO_ESTOQUE: TStringField;
    procedure CdsClientesBeforeEdit(DataSet: TDataSet);
    procedure CdsRepresentanteBeforeEdit(DataSet: TDataSet);
    procedure CdsFornecedorBeforeEdit(DataSet: TDataSet);
    procedure CdsBancoBeforeEdit(DataSet: TDataSet);
    procedure CdsTransportadoraBeforeEdit(DataSet: TDataSet);
    procedure CdsProdutosAfterInsert(DataSet: TDataSet);
    procedure CdsAtividadeAfterInsert(DataSet: TDataSet);
    procedure CdsEventoBeforeEdit(DataSet: TDataSet);
    procedure CdsRegiaoBeforeEdit(DataSet: TDataSet);
    procedure CdsPrdTipoBeforeEdit(DataSet: TDataSet);
    procedure CdsPrdGrupoBeforeEdit(DataSet: TDataSet);
    procedure CdsPrdClassIPIBeforeEdit(DataSet: TDataSet);
    procedure CdsParcelasBeforeEdit(DataSet: TDataSet);
    procedure CdsOperFiscBeforeEdit(DataSet: TDataSet);
    procedure CdsCtAnaliseBeforeEdit(DataSet: TDataSet);
    procedure CdsProdutosCalcFields(DataSet: TDataSet);
    procedure CdsSharedbBeforeEdit(DataSet: TDataSet);
    procedure CdsClientesBeforePost(DataSet: TDataSet);
    procedure CdsFornecedorBeforePost(DataSet: TDataSet);
    procedure CdsBancoBeforePost(DataSet: TDataSet);
    procedure CdsTransportadoraBeforePost(DataSet: TDataSet);
    procedure CdsRepresentanteBeforePost(DataSet: TDataSet);
    procedure CdsParcelasBeforePost(DataSet: TDataSet);
    procedure CdsRegiaoBeforePost(DataSet: TDataSet);
    procedure CdsCtAnaliseAfterScroll(DataSet: TDataSet);
    procedure CdsCtAnaliseCalcFields(DataSet: TDataSet);
    procedure CdsCtAnaliseBeforePost(DataSet: TDataSet);
    procedure CdsCtAnaliseBeforeScroll(DataSet: TDataSet);
    procedure CdsEventoBeforePost(DataSet: TDataSet);
    procedure CdsPrdTipoBeforePost(DataSet: TDataSet);
    procedure CdsPrdGrupoBeforePost(DataSet: TDataSet);
    procedure CdsPrdLinhaBeforePost(DataSet: TDataSet);
    procedure CdsPrdLinhaBeforeEdit(DataSet: TDataSet);
    procedure CdsOperFiscBeforePost(DataSet: TDataSet);
    procedure CdsPrdManutAfterInsert(DataSet: TDataSet);
    procedure CdsSharedbBeforePost(DataSet: TDataSet);
    procedure CdsConversaoMedidaBeforePost(DataSet: TDataSet);
    procedure CdsConversaoMedidaCalcFields(DataSet: TDataSet);
    procedure CdsConversaoMedidaBeforeEdit(DataSet: TDataSet);
    procedure DsCtAnaliseDataChange(Sender: TObject; Field: TField);
    procedure CdsPrdClassIPIICMSAfterInsert(DataSet: TDataSet);
    procedure DsPrdClassIPIDataChange(Sender: TObject; Field: TField);
    procedure CdsPrdClassIPIICMSBeforePost(DataSet: TDataSet);
    procedure CdsPrdClassIPIICMSAfterPost(DataSet: TDataSet);
    procedure CdsPrdClassIPIICMSAfterDelete(DataSet: TDataSet);
    procedure DsAtividadeStateChange(Sender: TObject);
    procedure CdsDiretivaAfterDelete(DataSet: TDataSet);
    procedure CdsDiretivaAfterPost(DataSet: TDataSet);
    procedure dsDiretivaStateChange(Sender: TObject);
    procedure CdsCnaeAfterDelete(DataSet: TDataSet);
    procedure CdsCnaeAfterPost(DataSet: TDataSet);
    procedure dsCnaeStateChange(Sender: TObject);
    procedure dsProdutoEnderecamentoStateChange(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure CdsPrdGrupoPRD_PER_FATORESChange(Sender: TField);
    procedure CdsClientesAfterInsert(DataSet: TDataSet);
    procedure CdsOperFiscNewRecord(DataSet: TDataSet);
    procedure CdsOperFiscOPE_MOTIVDESONGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure CdsOperFiscOPE_MOTIVDESONSetText(Sender: TField; const Text: string);
    procedure CdsParcelasAfterScroll(DataSet: TDataSet);
    procedure SqlUpdateAfterOpen(DataSet: TDataSet);
    procedure SqlUpdate2AfterOpen(DataSet: TDataSet);
    procedure SqlUpdate1RESAfterOpen(DataSet: TDataSet);
    procedure CdsBancoAfterScroll(DataSet: TDataSet);
  private
    vlTran: TTransactionDesc;
  public
        procedure IncrementaCodigo(Tabela: String; Chave_Primaria: TField;Tabela1:String;SEQ_SYSFILE:TField);
        procedure IncrementaRegistro(Tabela: String; Chave_Registro: TField);
        procedure CancelaInsercao(Tabela : String; Chave_registro : TField;SYSFILE:TField);
        Function RetornaCodigo(wNomeProcedure:String):Integer;
        procedure BeginTran;
        procedure CommitTran;
        // compatibilizar tSqlClientDataSet via rtti
  end;

var
  DataCadastros: TDataCadastros;


implementation

uses Cli0001, Rep0001, For0001, Ban0001, Trp0001, EVE0001, Reg0001, Prd0003,
  Prd0002, Prd0004, Pcl0001, Ope0001, CCT0001, ShareDb,
  RwFunc, Prd0005, uCadastroConversaoMedida, CLI0004, uCadastroDiretiva,
  uCnae, uProdutoEnderecamento, uteis, InicioDb;

{$R *.dfm}

procedure TDataCadastros.CdsClientesAfterInsert(DataSet: TDataSet);
begin
  if CdsClientesCLI_CONSU_PROPRIO.AsString = '' then
     CdsClientesCLI_CONSU_PROPRIO.AsString := 'N';
end;

procedure TDataCadastros.CdsClientesBeforeEdit(DataSet: TDataSet);
begin
    if Assigned(FormCliente)then
       FormCliente.DesabilitaBotoes;
end;

procedure TDataCadastros.CdsRepresentanteBeforeEdit(DataSet: TDataSet);
begin
    if Assigned(FormRepres) then
       FormRepres.DesabilitaBotoes;
end;

procedure TDataCadastros.CdsFornecedorBeforeEdit(DataSet: TDataSet);
begin
 if Assigned(FormFornec) then
  FormFornec.DesabilitaBotoes;
end;

procedure TDataCadastros.CdsBancoAfterScroll(DataSet: TDataSet);
begin
  if FormBanco <> nil then
    with FormBanco do
    begin
      EdtBan_Codigo.text := DataCadastros.CdsBancoBAN_CODIGO.AsString;
      MostraDados;
      VerificaCampos;
      // AtribuirEspecieBanco(FormatFloat('000',cBanco.AsInteger));
    end;
end;

procedure TDataCadastros.CdsBancoBeforeEdit(DataSet: TDataSet);
begin
    if Assigned(formBanco) then
       FormBanco.DesabilitaBotoes;
end;

procedure TDataCadastros.CdsTransportadoraBeforeEdit(DataSet: TDataSet);
begin
    if Assigned(formTransport) then
       FormTransport.DesabilitaBotoes;
end;

procedure TDataCadastros.IncrementaCodigo(Tabela: String; Chave_Primaria: TField;Tabela1:String;SEQ_SYSFILE:TField);
Var Qry,Qry1:TSQLQuery;
begin
     if Chave_primaria.DataSet.State <> dsInsert then
        exit;

     Qry := TSQLQuery.Create(Nil);
     Qry1:= TSQLQuery.Create(Nil);

     try

        Qry.SQLConnection   := SQLConnection1;
        Qry1.SQLConnection  := SQLConnection1;

        Qry1.Close;
        Qry1.SQL.Add('select max('+SEQ_SYSFILE.FieldName+') from '+Tabela1);
        Qry1.Open;
        Qry.Close;
        Qry.SQL.Add('select * from '+Tabela);
        Qry.Open;

        CdSSysFile.Open;
        with Qry1 do
        begin
              if SEQ_SYSFILE.IsNull then
              begin
                    Chave_Primaria.AsInteger := 1;
                    CdSSysFile.Edit;
                    SEQ_SYSFILE.AsInteger    := 1;
              end
              else
              begin
                    Chave_Primaria.AsInteger := (SEQ_SYSFILE.AsInteger + 1);
                    CdSSysFile.Edit;
                    SEQ_SYSFILE.AsInteger    := (SEQ_SYSFILE.AsInteger + 1);
              end;
              CdSSysFile.Post;
              CdSSysFile.ApplyUpdates(0);
              CdSSysFile.Close;
        end;

     finally

            qry.Close;
            qry1.Close;
            FreeAndNil(Qry);
            FreeAndNil(Qry1);

     end;

end;

procedure TDataCadastros.IncrementaRegistro(Tabela: String;Chave_Registro: TField);
Var QryReg:TSQLQuery;
begin
   try
      QryReg := TSQLQuery.Create(Nil);
      if Chave_Registro.DataSet.State = dsInsert then
      begin
            QryReg.SQLConnection := SQLConnection1;
            QryReg.SQL.Clear;
            QryReg.SQL.Add('Select max('+Chave_Registro.FieldName+')'+' from '+Tabela); // erro: deveria ser generator
            QryReg.Open;
            if QryReg.Fields[0].IsNull then
               Chave_registro.AsInteger := 1
            else
                Chave_registro.AsInteger := (QryReg.Fields[0].AsInteger +1);

            if QryReg.Fields[0].ClassType = TStringField then
               Chave_registro.AsString := StrZero(Chave_registro.AsString,QryReg.Fields[0].Size);
       end;
   finally
      FreeAndNil(QryReg);
   end;
end;

procedure TDataCadastros.CdsProdutosAfterInsert(DataSet: TDataSet);
begin
     if CdsProdutosPRD_CODIGO.isnull then
        CdsProdutosPRD_CODIGO.AsString:= StrZero(DBInicio.BuscaUmDadoSqlAsInteger('SELECT max(CAST(prd_codigo AS INTEGER))+1  from prd0000') ,5);

     if CdsProdutosPRD_CSTPISCOFINS.isnull then
        CdsProdutosPRD_CSTPISCOFINS.AsString := dbInicio.GetParametroSistema('PMT_CSTPISCOFINS');
end;

procedure TDataCadastros.CdsAtividadeAfterInsert(DataSet: TDataSet);
begin
    incrementaregistro('CLI_ATV1',CdsAtividadeRCL_CODIGO);
end;

procedure TDataCadastros.CdsEventoBeforeEdit(DataSet: TDataSet);
begin
    if Assigned(FormEvento) then
       FormEvento.DesabilitaBotoes;
end;

procedure TDataCadastros.CdsRegiaoBeforeEdit(DataSet: TDataSet);
begin
    if Assigned(FormRegiao) then
       FormRegiao.DesabilitaBotoes;
end;

procedure TDataCadastros.CdsPrdTipoBeforeEdit(DataSet: TDataSet);
begin
    if Assigned(FormProdTipo) then
       FormProdTipo.DesabilitaBotoes;
end;

procedure TDataCadastros.CdsPrdGrupoBeforeEdit(DataSet: TDataSet);
begin
    if Assigned(FormProdGrupo) then
        FormProdGrupo.DesabilitaBotoes;
end;

procedure TDataCadastros.CdsPrdClassIPIBeforeEdit(DataSet: TDataSet);
begin
    if Assigned(FormPrd_IPI) then
       FormPrd_IPI.DesabilitaBotoes;
end;

procedure TDataCadastros.CdsParcelasAfterScroll(DataSet: TDataSet);
begin
  if DataCadastros.CdsParcelasPCL_MODALIDADE.AsString = '' then
    exit;
  if (DataCadastros.CdsParcelasPCL_MODALIDADE.AsInteger = 2) and (FormParcelas <> nil) then
    FormParcelas.DbePcl_nome.ReadOnly := True;
  if (DataCadastros.CdsParcelasPCL_MODALIDADE.AsInteger <> 2) and (FormParcelas <> nil) then
    FormParcelas.DbePcl_nome.ReadOnly := False;

end;

procedure TDataCadastros.CdsParcelasBeforeEdit(DataSet: TDataSet);
begin
    if Assigned(FormParcelas) then
       FormParcelas.Desabilitabotoes;
end;

procedure TDataCadastros.CdsOperFiscBeforeEdit(DataSet: TDataSet);
begin
    if Assigned(FormOperFisc) then
       FormOperFisc.Desabilitabotoes;
end;

procedure TDataCadastros.CdsCtAnaliseBeforeEdit(DataSet: TDataSet);
begin
    if Assigned(FormContAnalise) then
       FormContAnalise.DesabilitaBotoes;
end;

procedure TDataCadastros.CdsProdutosCalcFields(DataSet: TDataSet);
begin
    //CdsProdutosPRD_FISICO_CC.AsCurrency     := (CdsprodutosPRD_ESTOQUE.AsCurrency + CdsprodutosPRD_ENTRADA.AsCurrency) - (CdsprodutosPRD_SAIDA.AsCurrency + CdsProdutosPRD_RESERVA.AsCurrency);
    CdsProdutosPRD_FISICO_CC.AsCurrency     := (CdsprodutosPRD_ESTOQUE.AsCurrency + CdsprodutosPRD_ENTRADA.AsCurrency) - (CdsprodutosPRD_SAIDA.AsCurrency  + CdsProdutosPRD_RESERVA.AsCurrency + CdsProdutosPRD_EMPENHO.AsCurrency) ;
    CdsProdutosPRD_ANTECIPADO_CC.AsCurrency := (CdsprodutosPRD_ESTOQUE.AsCurrency + CdsprodutosPRD_ENTRADA.AsCurrency  + CdsprodutosPRD_PENDENTE.AsCurrency) - (CdsprodutosPRD_SAIDA.AsCurrency + CdsProdutosPRD_RESERVA.AsCurrency + CdsProdutosPRD_EMPENHO.AsCurrency );
end;

procedure TDataCadastros.CancelaInsercao(Tabela : String; Chave_registro : TField ;SYSFILE:TField);
Var Campo : Integer;
begin

     campo := Chave_Registro.AsInteger;
     if Chave_registro.DataSet.State <> dsInsert then
        exit
     else
     begin
          CdSSysFile.Open;
          if SYSFILE.Value = Campo then
          begin
               CdSSysFile.Edit;
               SYSFILE.AsInteger    := SYSFILE.AsInteger -1;
               CdSSysFile.Post;
               CdSSysFile.ApplyUpdates(0);
          end;
          CdSSysFile.Close;
     end;

end;

procedure TDataCadastros.CdsSharedbBeforeEdit(DataSet: TDataSet);
begin
    if Assigned(FormShare) then
       FormShare.HabBotoes;
end;

procedure TDataCadastros.CdsClientesBeforePost(DataSet: TDataSet);
begin
     if CdsClientesCLI_CODIGO.isnull then
        CdsClientesCLI_CODIGO.asString:= strzero( dbInicio.GetNextSequence('GEN_CLI0000_CODIGO'), 5 ) ;
    //IncrementaRegistro('CLI0000',CdsClientesCLI_CODIGO);
end;

procedure TDataCadastros.CdsFornecedorBeforePost(DataSet: TDataSet);
begin
     if CdsFornecedorFOR_CODIGO.isnull then
        CdsFornecedorFOR_CODIGO.asString:= strzero( dbInicio.GetNextSequence('GEN_FOR0000_CODIGO'), 4 ) ;
    //IncrementaRegistro('FOR0000',CdsFornecedorFOR_CODIGO);
end;

procedure TDataCadastros.CdsBancoBeforePost(DataSet: TDataSet);
begin
    IncrementaRegistro('BAN0000',CdsBancoBAN_CODIGO);
end;

procedure TDataCadastros.CdsTransportadoraBeforePost(DataSet: TDataSet);
begin
     if CdsTransportadoraTRP_CODIGO.isNull then
        CdsTransportadoraTRP_CODIGO.asString:= strzero( dbInicio.GetNextSequence('GEN_TRP0000_CODIGO'), 3 ) ;
    //IncrementaRegistro('TRP0000',CdsTransportadoraTRP_CODIGO);
end;

procedure TDataCadastros.CdsRepresentanteBeforePost(DataSet: TDataSet);
begin
     if trim(CdsRepresentanteREP_NOME.asString)='' then
        GeraEXception('Nome do Vendedor deve ser Informado!');
     if trim(CdsRepresentanteREP_RAZAO.asString)='' then
        GeraEXception('Razao Social da Empresa deve ser Informada!');
    IncrementaRegistro('REP0000',CdsRepresentanteREP_CODIGO);
end;

procedure TDataCadastros.CdsParcelasBeforePost(DataSet: TDataSet);
begin
     if CdsParcelasPCL_CODIGO.isnull then
        CdsParcelasPCL_CODIGO.AsString := sTRzERO( DBiNICIO.GetNextSequence('GEN_PCL0000_CODIGO'),3);
     //IncrementaRegistro('PCL0000',CdsParcelasPCL_CODIGO);
end;

procedure TDataCadastros.CdsRegiaoBeforePost(DataSet: TDataSet);
begin
    IncrementaRegistro('REG0000',CdsRegiaoREG_CODIGO);
end;

procedure TDataCadastros.CdsCtAnaliseAfterScroll(DataSet: TDataSet);
begin
    if Assigned(FormContAnalise) then
       begin
           // Contas raízes : 1 - Entradas e 2 - Saídas nao devem ser alteradas
           if (trim(DataCadastros.CdsCtAnaliseCCT_NIVEL.Value)='1')or(trim(DataCadastros.CdsCtAnaliseCCT_NIVEL.Value)='2') then
             begin
                 FormContAnalise.BloquearEditContas;
             end
           else
              FormContAnalise.DesBloquearEditContas;
           FormContAnalise.MostraDados;
       end;
end;

procedure TDataCadastros.CdsCtAnaliseCalcFields(DataSet: TDataSet);
begin
    if DataCadastros.CdsCtAnaliseCCT_CONTA.AsString = 'S' then
       DataCadastros.CdsCtAnaliseCCT_MOV_CC.AsString := 'Saída'
    else
       DataCadastros.CdsCtAnaliseCCT_MOV_CC.AsString := 'Entrada';
end;

procedure TDataCadastros.CdsCtAnaliseBeforePost(DataSet: TDataSet);
begin
     IncrementaRegistro('CCT_0000',CdsCtAnaliseCCT_CODIGO);
end;

procedure TDataCadastros.CdsCtAnaliseBeforeScroll(DataSet: TDataSet);
begin
      if Assigned(FormContAnalise) then
      begin
         // Contas raízes : 1 - Entradas e 2 - Saídas nao devem ser alteradas
         if (trim(DataCadastros.CdsCtAnaliseCCT_NIVEL.Value)='1')or(trim(DataCadastros.CdsCtAnaliseCCT_NIVEL.Value)='2') then
             FormContAnalise.BloquearEditContas
         else
            FormContAnalise.DesBloquearEditContas;
         FormContAnalise.MostraDados;
      end;
end;

procedure TDataCadastros.CdsEventoBeforePost(DataSet: TDataSet);
begin
    IncrementaRegistro('EVE0000',CdsEventoEVE_CODIGO);
end;

procedure TDataCadastros.CdsPrdTipoBeforePost(DataSet: TDataSet);
begin
    IncrementaRegistro('PRD_TIPO',CdsPrdTipoPTI_CODIGO);
end;

procedure TDataCadastros.CdsPrdGrupoBeforePost(DataSet: TDataSet);
begin
    incrementaRegistro('PRD_GRUPO',CdsPrdGrupoPGR_CODIGO);
end;

procedure TDataCadastros.CdsPrdGrupoPRD_PER_FATORESChange(Sender: TField);
begin
  CdsPrdGrupoPGR_MARGEMVENDA.AsFloat := CdsPrdGrupoPGR_PER_ICMS.AsFloat + CdsPrdGrupoPGR_PER_PISCONFINS.AsFloat  +
   CdsPrdGrupoPGR_PER_IPI.AsFloat + CdsPrdGrupoPGR_PER_FRETE.AsFloat + CdsPrdGrupoPGR_PER_OUTROS.AsFloat +
   CdsPrdGrupoPGR_PER_LUCRO.AsFloat;
end;

procedure TDataCadastros.CdsPrdLinhaBeforePost(DataSet: TDataSet);
begin
    IncrementaRegistro('PRD_LINHA',CdsPrdLinhaLIN_CODIGO);
end;

procedure TDataCadastros.CdsPrdLinhaBeforeEdit(DataSet: TDataSet);
begin
    if Assigned(FormPrdLinha) then
       FormPrdLinha.DesabilitaBotoes;
end;

procedure TDataCadastros.CdsOperFiscBeforePost(DataSet: TDataSet);
begin
     if CdsOperFiscOPE_CODIGO.isnull then
        CdsOperFiscOPE_CODIGO.AsString := StrZero( dbInicio.GetNextSequence('gen_ope0000_codigo'),3);
    //IncrementaRegistro('OPE0000',CdsOperFiscOPE_CODIGO);
end;

procedure TDataCadastros.CdsOperFiscNewRecord(DataSet: TDataSet);
begin
 CdsOperFiscOPE_OCULTA.AsString := 'N'
end;

procedure TDataCadastros.CdsOperFiscOPE_MOTIVDESONGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  case Sender.AsInteger of
    1 : Text:= '1 – Táxi';
    3 : Text:= '3 – Produto agropecuário/Uso na agropecuária';
    4 : Text:= '4 – Frotista/Locadora';
    5 : Text:= '5 – Diplomático/Consular';
    6 : Text:= '6 – Utilitários e Motocicletas da Amazônia Ocidental e Áreas de Livre Comércio';
    7 : Text:= '7 – SUFRAMA';
    8 : Text:= '8 – Venda a Órgão Público';
    9 : Text:= '9 – Outros';
    10: Text:= '10 – Deficiente Condutor';
    11: Text:= '11 - Deficiente Não Condutor';
    12: Text:= '12 – Órgão de fomento e desenvolvimento agropecuário';
  end;

end;

procedure TDataCadastros.CdsOperFiscOPE_MOTIVDESONSetText(Sender: TField; const Text: string);
begin
  if pos('Táxi',text) > 0  then  Sender.AsInteger := 1  ;
  if pos('Produto agropecuário/Uso na agropecuária',text) > 0  then  Sender.AsInteger := 3;
  if pos('Frotista/Locadora',text) > 0  then  Sender.AsInteger := 4  ;
  if pos('Diplomático/Consular',text) > 0  then  Sender.AsInteger := 5 ;
  if pos('Utilitários e Motocicletas da Amazônia Ocidental e Áreas de Livre Comércio',text) > 0  then  Sender.AsInteger := 6 ;
  if pos('SUFRAMA',text) > 0  then  Sender.AsInteger := 7  ;
  if pos('Venda a Órgão Público',text) > 0  then  Sender.AsInteger := 8;
  if pos('Outros',text) > 0  then  Sender.AsInteger := 9;
  if pos('Deficiente Condutor',text) > 0  then  Sender.AsInteger := 10 ;
  if pos('Deficiente Não Condutor',text) > 0  then  Sender.AsInteger := 11  ;
  if pos('Órgão de fomento e desenvolvimento agropecuário',text) > 0  then  Sender.AsInteger := 12;
end;

procedure TDataCadastros.CdsPrdManutAfterInsert(DataSet: TDataSet);
begin
//    IncrementaRegistro('PRD_ENSA',CdsPrdManutPES_REGISTRO);
end;

procedure TDataCadastros.CdsSharedbBeforePost(DataSet: TDataSet);
begin
    //crementaRegistro('SHAREDB',CdsSharedbREGISTROS);
end;

function TDataCadastros.RetornaCodigo(wNomeProcedure: String): Integer;
begin
    SQLStoredProc.StoredProcName := wNomeProcedure;
    SQLStoredProc.ExecProc;
    Result := SQLStoredProc.Params[0].AsInteger;
end;

procedure TDataCadastros.SqlUpdate1RESAfterOpen(DataSet: TDataSet);
begin
  if DBInicio.IsDesenvolvimento then
    CopyToClipBoard(SqlUpdate1.SQL.Text);
end;

procedure TDataCadastros.SqlUpdate2AfterOpen(DataSet: TDataSet);
begin
  if DBInicio.IsDesenvolvimento then
    CopyToClipBoard(SqlUpdate2.SQL.Text);
end;

procedure TDataCadastros.SqlUpdateAfterOpen(DataSet: TDataSet);
begin
  if DBInicio.IsDesenvolvimento then
    CopyToClipBoard(SqlUpdate.SQL.Text);
end;

procedure TDataCadastros.CdsConversaoMedidaBeforePost(DataSet: TDataSet);
begin
   IncrementaRegistro('CONV0000',CdsConversaoMedidaCONV_REGISTRO);
end;

procedure TDataCadastros.CdsConversaoMedidaCalcFields(DataSet: TDataSet);
begin
   CdsConversaoMedidawOperacao.AsString := iif(CdsConversaoMedidaCONV_OPERACAO.AsString = 'D','Divisão','Multiplicação');
end;

procedure TDataCadastros.CdsConversaoMedidaBeforeEdit(DataSet: TDataSet);
begin
    if Assigned(FormCadastroConversaoMedida)then
       FormCadastroConversaoMedida.HabilitaDesbilitaBotoes(True);
end;

procedure TDataCadastros.DsCtAnaliseDataChange(Sender: TObject;
  Field: TField);
begin
   if (Assigned(FormContAnalise)) then
      begin
         FormContAnalise.AtualizaNivel;
      end;
end;

procedure TDataCadastros.CdsPrdClassIPIICMSAfterInsert(DataSet: TDataSet);
begin
   if (Assigned(FormPrd_IPI)) then
      begin
         if (CdsPrdClassIPI.IsEmpty) then
            begin
               uteis.aviso('Primeiro cadastre uma classificação fiscal para depois adicionar as alíquotas de ICMS');
               CdsPrdClassIPIICMS.Cancel;
            end
         else
         if (CdsPrdClassIPI.State = dsEdit) then
            begin
               uteis.aviso('Salve primeiro as alterações antes de informar as alíquotas de ICMS');
               CdsPrdClassIPIICMS.Cancel;
            end
         else
            begin
               CdsPrdClassIPIICMSIPI_CODIGO.AsString := CdsPrdClassIPIIPI_CODIGO.AsString;
               CdsPrdClassIPIICMSEMP_CODIGO.AsString := CdsPrdClassIPIEMP_CODIGO.AsString;
            end;
      end;
end;

procedure TDataCadastros.DsPrdClassIPIDataChange(Sender: TObject;
  Field: TField);
begin
   CdsPrdClassIPIICMS.Close;
   if (not CdsPrdClassIPI.IsEmpty) then
   begin
         SqlPrdClassIPIICMS.sql.text := SQLDEF('TABELAS','SELECT * FROM IPI0000_ICMS','WHERE IPI_CODIGO = '+QuotedStr(CdsPrdClassIPIIPI_CODIGO.AsString),'IPII_ESTADO','');
         CdsPrdClassIPIICMS.Open;
   end;
end;

procedure TDataCadastros.CdsPrdClassIPIICMSBeforePost(DataSet: TDataSet);
begin
   if (Assigned(FormPrd_IPI)) then
      begin
         if (CdsPrdClassIPIICMSIPII_ESTADO.AsString = '') then
            begin
               raise Exception.Create('Informe o Estado');
            end
         else
         if (CdsPrdClassIPIICMSIPII_ALIQUOTA.AsFloat <= 0) then
            begin
               raise Exception.Create('Informe o Alíquota do ICMS');
            end;
      end;
end;

procedure TDataCadastros.CdsPrdClassIPIICMSAfterPost(DataSet: TDataSet);
begin
   CdsPrdClassIPIICMS.ApplyUpdates(0);
end;

procedure TDataCadastros.CdsPrdClassIPIICMSAfterDelete(DataSet: TDataSet);
begin
   CdsPrdClassIPIICMS.ApplyUpdates(0);
end;

procedure TDataCadastros.DsAtividadeStateChange(Sender: TObject);
begin
  if (Assigned(FormCliAtividade)) then
    begin
        FormCliAtividade.DesabilitaBotoes;
    end;
end;

procedure TDataCadastros.CdsDiretivaAfterDelete(DataSet: TDataSet);
begin
   CdsDiretiva.ApplyUpdates(0);
end;

procedure TDataCadastros.CdsDiretivaAfterPost(DataSet: TDataSet);
begin
   CdsDiretiva.ApplyUpdates(0);
end;

procedure TDataCadastros.dsDiretivaStateChange(Sender: TObject);
begin
  if (Assigned(FormDiretiva)) then
    begin
        FormDiretiva.DesabilitaBotoes;
    end;
end;

procedure TDataCadastros.CdsCnaeAfterDelete(DataSet: TDataSet);
begin
   CdsCnae.ApplyUpdates(0);
end;

procedure TDataCadastros.CdsCnaeAfterPost(DataSet: TDataSet);
begin
   CdsCnae.ApplyUpdates(0);
end;

procedure TDataCadastros.dsCnaeStateChange(Sender: TObject);
begin
  if (Assigned(FormCnae)) then
    begin
        FormCnae.DesabilitaBotoes;
    end;
end;

procedure TDataCadastros.dsProdutoEnderecamentoStateChange(
  Sender: TObject);
begin
  if (Assigned(FrmProdutoEnderecamento)) then
    begin
        FrmProdutoEnderecamento.DesabilitaBotoes;
    end;
end;

procedure TDataCadastros.DataModuleCreate(Sender: TObject);
begin
     dbInicio.IniciaDB(sqlConnection1);
     vltran.TransactionId:=NumeroAleatorio;
     vltran.IsolationLevel:=xilREADCOMMITTED;
end;

procedure TDataCadastros.BeginTran;
begin
  if not SQLConnection1.InTransaction then
     SQLConnection1.StartTransaction(vltran);
end;

procedure TDataCadastros.CommitTran;
begin
  if SQLConnection1.InTransaction then
     SQLConnection1.Commit(vltran);
end;

End.



