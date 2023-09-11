unit DmCada;

interface

uses
  SysUtils, Classes, {{DBXpress,}  DB, SqlExpr, FMTBCd, DBClient, Provider;

type
  TDmCadastros = class(TDataModule)
    SQLConnection1: TSQLConnection;
    SqlCLientes: TSQLDataSet;
    DspClientes: TDataSetProvider;
    CdsClientes: TClientDataSet;
    DsCliente: TDataSource;
    SqlCLientesCLI_DTINATIVO: TSQLTimeStampField;
    SqlCLientesCLI_INATIVO: TStringField;
    SqlCLientesCLI_MOTIVO: TStringField;
    SqlCLientesCLI_CODIGO: TStringField;
    SqlCLientesCLI_RAZAO: TStringField;
    SqlCLientesREG_CODIGO: TStringField;
    SqlCLientesCLI_ATIVIDADE: TStringField;
    SqlCLientesCLI_PORTE: TStringField;
    SqlCLientesCLI_ENDERE: TStringField;
    SqlCLientesCLI_BAIRRO: TStringField;
    SqlCLientesCLI_CIDADE: TStringField;
    SqlCLientesCLI_CEP: TStringField;
    SqlCLientesCLI_CXPOST: TStringField;
    SqlCLientesCLI_EMAIL: TStringField;
    SqlCLientesCLI_HOME: TStringField;
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
    SqlCLientesCLI_ENDENTR: TStringField;
    SqlCLientesCLI_CIDENTR: TStringField;
    SqlCLientesCLI_CEPENTR: TStringField;
    SqlCLientesCLI_FONENTR: TStringField;
    SqlCLientesCLI_ENDFAT: TStringField;
    SqlCLientesCLI_CIDFAT: TStringField;
    SqlCLientesCLI_CEPFAT: TStringField;
    SqlCLientesCLI_UF: TStringField;
    SqlCLientesCLI_UFENTR: TStringField;
    SqlCLientesCLI_UFFAT: TStringField;
    SqlCLientesCLI_OBS: TStringField;
    SqlCLientesEMP_CODIGO: TStringField;
    CdsClientesCLI_DTINATIVO: TSQLTimeStampField;
    CdsClientesCLI_INATIVO: TStringField;
    CdsClientesCLI_MOTIVO: TStringField;
    CdsClientesCLI_CODIGO: TStringField;
    CdsClientesCLI_RAZAO: TStringField;
    CdsClientesREG_CODIGO: TStringField;
    CdsClientesCLI_ATIVIDADE: TStringField;
    CdsClientesCLI_PORTE: TStringField;
    CdsClientesCLI_ENDERE: TStringField;
    CdsClientesCLI_BAIRRO: TStringField;
    CdsClientesCLI_CIDADE: TStringField;
    CdsClientesCLI_CEP: TStringField;
    CdsClientesCLI_CXPOST: TStringField;
    CdsClientesCLI_EMAIL: TStringField;
    CdsClientesCLI_HOME: TStringField;
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
    CdsClientesCLI_ENDENTR: TStringField;
    CdsClientesCLI_CIDENTR: TStringField;
    CdsClientesCLI_CEPENTR: TStringField;
    CdsClientesCLI_FONENTR: TStringField;
    CdsClientesCLI_ENDFAT: TStringField;
    CdsClientesCLI_CIDFAT: TStringField;
    CdsClientesCLI_CEPFAT: TStringField;
    CdsClientesCLI_UF: TStringField;
    CdsClientesCLI_UFENTR: TStringField;
    CdsClientesCLI_UFFAT: TStringField;
    CdsClientesCLI_OBS: TStringField;
    CdsClientesEMP_CODIGO: TStringField;
    SqlShare: TSQLDataSet;
    DspShare: TDataSetProvider;
    CdsShare: TClientDataSet;
    SqlShareCLIENTES: TStringField;
    SqlSharePRODUTOS: TStringField;
    SqlShareBANCOS: TStringField;
    SqlShareTRANSPORTADORAS: TStringField;
    SqlShareREPRESENTANTES: TStringField;
    SqlShareFORNECEDORES: TStringField;
    SqlShareRECEBER: TStringField;
    SqlSharePAGAR: TStringField;
    SqlSharePEDIDOS: TStringField;
    SqlShareCOTACOES: TStringField;
    SqlShareORDENSCOMPRA: TStringField;
    SqlShareFICHATECNICA: TStringField;
    SqlShareORDEMPRODUCAO: TStringField;
    SqlShareTABELAS: TStringField;
    CdsShareCLIENTES: TStringField;
    CdsSharePRODUTOS: TStringField;
    CdsShareBANCOS: TStringField;
    CdsShareTRANSPORTADORAS: TStringField;
    CdsShareREPRESENTANTES: TStringField;
    CdsShareFORNECEDORES: TStringField;
    CdsShareRECEBER: TStringField;
    CdsSharePAGAR: TStringField;
    CdsSharePEDIDOS: TStringField;
    CdsShareCOTACOES: TStringField;
    CdsShareORDENSCOMPRA: TStringField;
    CdsShareFICHATECNICA: TStringField;
    CdsShareORDEMPRODUCAO: TStringField;
    CdsShareTABELAS: TStringField;
    SqlRepresentante: TSQLDataSet;
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
    SqlTransportadora: TSQLDataSet;
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
    SqlTransportadoraTRP_EMAIL: TStringField;
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
    CdsTransportadoraTRP_EMAIL: TStringField;
    CdsTransportadoraTRP_CONTATO: TStringField;
    CdsTransportadoraEMP_CODIGO: TStringField;
    CdsTransportadoraTRP_HOME: TStringField;
    SqlRegiao: TSQLDataSet;
    DspRegiao: TDataSetProvider;
    CdsRegiao: TClientDataSet;
    DsRegiao: TDataSource;
    SqlRegiaoREG_CODIGO: TStringField;
    SqlRegiaoREG_DESCRI: TStringField;
    SqlRegiaoEMP_CODIGO: TStringField;
    CdsRegiaoREG_CODIGO: TStringField;
    CdsRegiaoREG_DESCRI: TStringField;
    CdsRegiaoEMP_CODIGO: TStringField;
    SqlAtividade: TSQLDataSet;
    DspAtividade: TDataSetProvider;
    CdsAtividade: TClientDataSet;
    DsAtividade: TDataSource;
    SqlAtividadeRCL_CODIGO: TStringField;
    SqlAtividadeRCL_ATIVIDADE: TStringField;
    SqlAtividadeEMP_CODIGO: TStringField;
    CdsAtividadeRCL_CODIGO: TStringField;
    CdsAtividadeRCL_ATIVIDADE: TStringField;
    CdsAtividadeEMP_CODIGO: TStringField;
    SqlFornecedor: TSQLDataSet;
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
    SqlFornecedorFOR_EMAIL: TStringField;
    SqlFornecedorFOR_FONCONT: TStringField;
    SqlFornecedorFOR_FAXCONT: TStringField;
    SqlFornecedorFOR_OBS: TStringField;
    SqlFornecedorEMP_CODIGO: TStringField;
    SqlFornecedorFOR_CGC: TStringField;
    SqlFornecedorFOR_INSC: TStringField;
    SqlFornecedorFOR_HOME: TStringField;
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
    CdsFornecedorFOR_EMAIL: TStringField;
    CdsFornecedorFOR_FONCONT: TStringField;
    CdsFornecedorFOR_FAXCONT: TStringField;
    CdsFornecedorFOR_OBS: TStringField;
    CdsFornecedorEMP_CODIGO: TStringField;
    CdsFornecedorFOR_CGC: TStringField;
    CdsFornecedorFOR_INSC: TStringField;
    CdsFornecedorFOR_HOME: TStringField;
    CdsFornecedorFOR_EMAILCONT: TStringField;
    CdsFornecedorFOR_PRAZOVENDAS: TStringField;
    SqlCtAnalise: TSQLDataSet;
    DspCtAnalise: TDataSetProvider;
    CdsCtAnalise: TClientDataSet;
    DsCtAnalise: TDataSource;
    SqlCtAnaliseCCT_CODIGO: TStringField;
    SqlCtAnaliseCCT_PROVISAO: TFMTBCdField;
    SqlCtAnaliseCCT_DESCRI: TStringField;
    SqlCtAnaliseCEC_CODIGO: TStringField;
    SqlCtAnaliseCCT_TIPO: TStringField;
    SqlCtAnaliseCCT_CONTA: TStringField;
    SqlCtAnaliseEMP_CODIGO: TStringField;
    CdsCtAnaliseCCT_CODIGO: TStringField;
    CdsCtAnaliseCCT_PROVISAO: TFMTBCdField;
    CdsCtAnaliseCCT_DESCRI: TStringField;
    CdsCtAnaliseCEC_CODIGO: TStringField;
    CdsCtAnaliseCCT_TIPO: TStringField;
    CdsCtAnaliseCCT_CONTA: TStringField;
    CdsCtAnaliseEMP_CODIGO: TStringField;
    SqlProdutos: TSQLDataSet;
    DspProdutos: TDataSetProvider;
    CdsProdutos: TClientDataSet;
    DsProdutos: TDataSource;
    SqlProdutosPRD_CODIGO: TStringField;
    SqlProdutosPRD_DESCRI: TStringField;
    SqlProdutosPRD_DESCRI_RES: TStringField;
    SqlProdutosPRD_REFER: TStringField;
    SqlProdutosPRD_UND: TStringField;
    SqlProdutosPRD_EMBALA: TStringField;
    SqlProdutosPGR_CODIGO: TStringField;
    SqlProdutosPTI_CODIGO: TStringField;
    SqlProdutosIPI_CODIGO: TStringField;
    SqlProdutosPRD_ALIQICM: TFMTBCdField;
    SqlProdutosLIN_CODIGO: TStringField;
    SqlProdutosPRD_COMPL: TStringField;
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
    CdsProdutosPRD_CODIGO: TStringField;
    CdsProdutosPRD_DESCRI: TStringField;
    CdsProdutosPRD_DESCRI_RES: TStringField;
    CdsProdutosPRD_REFER: TStringField;
    CdsProdutosPRD_UND: TStringField;
    CdsProdutosPRD_EMBALA: TStringField;
    CdsProdutosPGR_CODIGO: TStringField;
    CdsProdutosPTI_CODIGO: TStringField;
    CdsProdutosIPI_CODIGO: TStringField;
    CdsProdutosPRD_ALIQICM: TFMTBCdField;
    CdsProdutosLIN_CODIGO: TStringField;
    CdsProdutosPRD_COMPL: TStringField;
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
    CdsProdutosPRD_CODBARRA: TStringField;
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
    SqlForXProd: TSQLDataSet;
    CdsForXProd: TClientDataSet;
    DspForXProd: TDataSetProvider;
    DsForXProd: TDataSource;
    SqlForXProdFOR_CODIGO: TStringField;
    SqlForXProdPRD_REFER: TStringField;
    SqlForXProdEMP_CODIGO: TStringField;
    CdsForXProdFOR_CODIGO: TStringField;
    CdsForXProdPRD_REFER: TStringField;
    CdsForXProdEMP_CODIGO: TStringField;
    SqlUpdate: TSQLDataSet;
    sqlUpdate: TClientDataSet;
    DspUpdate: TDataSetProvider;
    SqlBanco: TSQLDataSet;
    DspBanco: TDataSetProvider;
    CdsBanco: TClientDataSet;
    DsBanco: TDataSource;
    SqlBancoBAN_CODIGO: TStringField;
    SqlBancoBAN_RAZAO: TStringField;
    SqlBancoBAN_APELIDO: TStringField;
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
    SqlBancoBAN_CONTA: TStringField;
    SqlBancoBAN_DIGCONTA: TStringField;
    SqlBancoBAN_COD_CART: TStringField;
    SqlBancoBAN_N_CARTEIRA: TStringField;
    SqlBancoBAN_INSTRUCAO1: TStringField;
    SqlBancoBAN_INSTRUCAO2: TStringField;
    SqlBancoBAN_CODNOBANCO: TStringField;
    SqlBancoBAN_TAM_NONUM: TStringField;
    SqlBancoBAN_PROTPRAZO: TStringField;
    CdsBancoBAN_CODIGO: TStringField;
    CdsBancoBAN_RAZAO: TStringField;
    CdsBancoBAN_APELIDO: TStringField;
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
    CdsBancoBAN_CONTA: TStringField;
    CdsBancoBAN_DIGCONTA: TStringField;
    CdsBancoBAN_COD_CART: TStringField;
    CdsBancoBAN_N_CARTEIRA: TStringField;
    CdsBancoBAN_INSTRUCAO1: TStringField;
    CdsBancoBAN_INSTRUCAO2: TStringField;
    CdsBancoBAN_CODNOBANCO: TStringField;
    CdsBancoBAN_TAM_NONUM: TStringField;
    CdsBancoBAN_PROTPRAZO: TStringField;
    SqlSysfile: TSQLDataSet;
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
    SqlEvento: TSQLDataSet;
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
    SqlPrdTipo: TSQLDataSet;
    DspPrdTipo: TDataSetProvider;
    CdsPrdTipo: TClientDataSet;
    DsPrdtipo: TDataSource;
    SqlPrdTipoPTI_CODIGO: TStringField;
    SqlPrdTipoPTI_DESCRI: TStringField;
    SqlPrdTipoEMP_CODIGO: TStringField;
    CdsPrdTipoPTI_CODIGO: TStringField;
    CdsPrdTipoPTI_DESCRI: TStringField;
    CdsPrdTipoEMP_CODIGO: TStringField;
    SqlPrdGrupo: TSQLDataSet;
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
    SqlPrdLinha: TSQLDataSet;
    DspPrdLinha: TDataSetProvider;
    CdsPrdLinha: TClientDataSet;
    DsPrdLinha: TDataSource;
    SqlPrdLinhaLIN_CODIGO: TStringField;
    SqlPrdLinhaLIN_DESCRI: TStringField;
    SqlPrdLinhaEMP_CODIGO: TStringField;
    CdsPrdLinhaLIN_CODIGO: TStringField;
    CdsPrdLinhaLIN_DESCRI: TStringField;
    CdsPrdLinhaEMP_CODIGO: TStringField;
    SqlPrdClassIPI: TSQLDataSet;
    DspPrdClassIPI: TDataSetProvider;
    CdsPrdClassIPI: TClientDataSet;
    DsPrdClassIPI: TDataSource;
    SqlPrdClassIPIIPI_CODIGO: TStringField;
    SqlPrdClassIPIIPI_ALIQ: TFMTBCdField;
    SqlPrdClassIPIEMP_CODIGO: TStringField;
    SqlPrdClassIPIIPI_APELIDO: TStringField;
    CdsPrdClassIPIIPI_CODIGO: TStringField;
    CdsPrdClassIPIIPI_ALIQ: TFMTBCdField;
    CdsPrdClassIPIEMP_CODIGO: TStringField;
    CdsPrdClassIPIIPI_APELIDO: TStringField;
    SqlParcelas: TSQLDataSet;
    DspParcelas: TDataSetProvider;
    CdsParcelas: TClientDataSet;
    DsParcelas: TDataSource;
    SqlParcelasPCL_CODIGO: TStringField;
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
    CdsParcelasPCL_CODIGO: TStringField;
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
    SqlOperFisc: TSQLDataSet;
    SqlOperFiscOPE_CODIGO: TStringField;
    SqlOperFiscOPE_SUBCOD: TStringField;
    SqlOperFiscOPE_DESCRI: TStringField;
    SqlOperFiscOPE_TRIBICMS: TStringField;
    SqlOperFiscOPE_TRIBIPI: TStringField;
    SqlOperFiscOPE_REDU_ICM: TFMTBCdField;
    SqlOperFiscOPE_REDU_IPI: TFMTBCdField;
    SqlOperFiscOPE_IPINABASEICMS: TStringField;
    SqlOperFiscOPE_FRETENABASE: TStringField;
    SqlOperFiscOPE_SEMVLCOM: TStringField;
    SqlOperFiscOPE_ESTATISTICA: TStringField;
    SqlOperFiscOPE_IMP_AVISO: TStringField;
    SqlOperFiscOPE_NATUREZA: TStringField;
    SqlOperFiscOPE_AVISOLEGAL: TStringField;
    SqlOperFiscEMP_CODIGO: TStringField;
    SqlOperFiscOPE_AGRUPADO: TStringField;
    SqlOperFiscOPE_SUBTRIBUTARIA: TStringField;
    CdsOperFiscOPE_CODIGO: TStringField;
    CdsOperFiscOPE_SUBCOD: TStringField;
    CdsOperFiscOPE_DESCRI: TStringField;
    CdsOperFiscOPE_TRIBICMS: TStringField;
    CdsOperFiscOPE_TRIBIPI: TStringField;
    CdsOperFiscOPE_REDU_ICM: TFMTBCdField;
    CdsOperFiscOPE_REDU_IPI: TFMTBCdField;
    CdsOperFiscOPE_IPINABASEICMS: TStringField;
    CdsOperFiscOPE_FRETENABASE: TStringField;
    CdsOperFiscOPE_SEMVLCOM: TStringField;
    CdsOperFiscOPE_ESTATISTICA: TStringField;
    CdsOperFiscOPE_IMP_AVISO: TStringField;
    CdsOperFiscOPE_NATUREZA: TStringField;
    CdsOperFiscOPE_AVISOLEGAL: TStringField;
    CdsOperFiscEMP_CODIGO: TStringField;
    CdsOperFiscOPE_AGRUPADO: TStringField;
    CdsOperFiscOPE_SUBTRIBUTARIA: TStringField;
    SqlOperFiscOPE_REGISTRO: TIntegerField;
    CdsOperFiscOPE_REGISTRO: TIntegerField;
    CdsProdutosPRD_FISICO_CC: TCurrencyField;
    CdsProdutosPRD_ANTECIPADO_CC: TCurrencyField;
    SqlSysfileSYS_CHEQUE: TIntegerField;
    CdsSysfileSYS_CHEQUE: TIntegerField;
    SqlSysfileSYS_SALDO_BANCO: TIntegerField;
    CdsSysfileSYS_SALDO_BANCO: TIntegerField;
    SqlBancos: TSQLDataSet;
    DspBancos: TDataSetProvider;
    CdsBancos: TClientDataSet;
    DsBancos: TDataSource;
    SqlBancosBCO_CODIGO: TIntegerField;
    SqlBancosBCO_DESCRICAO: TStringField;
    CdsBancosBCO_DESCRICAO: TStringField;
    procedure CdsClientesBeforeEdit(DataSet: TDataSet);
    procedure CdsRepresentanteBeforeEdit(DataSet: TDataSet);
    procedure CdsFornecedorBeforeEdit(DataSet: TDataSet);
    procedure CdsBancoBeforeEdit(DataSet: TDataSet);
    procedure CdsTransportadoraBeforeEdit(DataSet: TDataSet);
    procedure CdsClientesAfterInsert(DataSet: TDataSet);
    procedure CdsRepresentanteAfterInsert(DataSet: TDataSet);
    procedure CdsTransportadoraAfterInsert(DataSet: TDataSet);
    procedure CdsRegiaoAfterInsert(DataSet: TDataSet);
    procedure CdsFornecedorAfterInsert(DataSet: TDataSet);
    procedure CdsProdutosAfterInsert(DataSet: TDataSet);
    procedure CdsBancoAfterInsert(DataSet: TDataSet);
    procedure CdsAtividadeAfterInsert(DataSet: TDataSet);
    procedure CdsEventoAfterInsert(DataSet: TDataSet);
    procedure CdsEventoBeforeEdit(DataSet: TDataSet);
    procedure CdsRegiaoBeforeEdit(DataSet: TDataSet);
    procedure CdsPrdTipoAfterInsert(DataSet: TDataSet);
    procedure CdsPrdTipoBeforeEdit(DataSet: TDataSet);
    procedure CdsPrdGrupoAfterInsert(DataSet: TDataSet);
    procedure CdsPrdGrupoBeforeEdit(DataSet: TDataSet);
    procedure CdsPrdLinhaAfterInsert(DataSet: TDataSet);
    procedure CdsPrdClassIPIBeforeEdit(DataSet: TDataSet);
    procedure CdsParcelasAfterInsert(DataSet: TDataSet);
    procedure CdsParcelasBeforeEdit(DataSet: TDataSet);
    procedure CdsOperFiscAfterInsert(DataSet: TDataSet);
    procedure CdsOperFiscBeforeEdit(DataSet: TDataSet);
    procedure CdsCtAnaliseBeforeEdit(DataSet: TDataSet);
    procedure CdsCtAnaliseAfterInsert(DataSet: TDataSet);
    procedure CdsProdutosBeforeEdit(DataSet: TDataSet);
    procedure CdsProdutosCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
     procedure IncrementaCodigo(Tabela: String; Chave_Primaria: TField;Tabela1:String;SEQ_SYSFILE:TField);
     procedure IncrementaRegistro(Tabela: String; Chave_Registro: TField);

  end;

var
  DmCadastros: TDmCadastros;





implementation

uses Cli0001, Rep0001, For0001, Ban0001, Trp0001, EVE0001, Reg0001, Prd0003,
  Prd0002, Prd0004, Pcl0001, Ope0001, CCT0001, Prd0001;

{$R *.dfm}

procedure TDmCadastros.CdsClientesBeforeEdit(DataSet: TDataSet);
begin
if Assigned(FormCliente)then
     FormCliente.DesabilitaBotoes;
end;

procedure TDmCadastros.CdsRepresentanteBeforeEdit(DataSet: TDataSet);
begin
  if Assigned(FormRepres) then
  FormRepres.DesabilitaBotoes;
end;

procedure TDmCadastros.CdsFornecedorBeforeEdit(DataSet: TDataSet);
begin
 if Assigned(FormFornec) then
  FormFornec.DesabilitaBotoes;
end;

procedure TDmCadastros.CdsBancoBeforeEdit(DataSet: TDataSet);
begin
   if Assigned(formBanco) then
   FormBanco.DesabilitaBotoes;
end;

procedure TDmCadastros.CdsTransportadoraBeforeEdit(DataSet: TDataSet);
begin
   if Assigned(formTransport) then
   FormTransport.DesabilitaBotoes;
end;

procedure TDmCadastros.IncrementaCodigo(Tabela: String; Chave_Primaria: TField;Tabela1:String;SEQ_SYSFILE:TField);
Var
Qry,Qry1:TSQLQuery;
begin
   try
     if Chave_primaria.DataSet.State <> dsInsert then
        begin
           exit;
        end
     else
        begin
           try
              Qry := TSQLQuery.Create(Nil);
              Qry1:= TSQLQuery.Create(Nil);
              Qry.SQLConnection   := SQLConnection1;
              Qry1.SQLConnection  := SQLConnection1;
             {pega valor sysfile}
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
                 end;
           finally
               CdSSysFile.ApplyUpdates(0);
               CdSSysFile.Close;
               FreeAndNil(Qry);
               FreeAndNil(Qry1);
           end;
        end;
   except
       uteis.erro  (Pchar('Impossível Incremento da Tabela :'+Tabela));
   end;
end;
procedure TDmCadastros.IncrementaRegistro(Tabela: String;
  Chave_Registro: TField);
  Var
QryReg:TSQLQuery;
begin
   try
      if Chave_Registro.DataSet.State <> dsInsert then
         begin
            exit;
         end;
      QryReg := TSQLQuery.Create(Nil);
      QryReg.SQLConnection := SQLConnection1;
      QryReg.SQL.Clear;
      QryReg.SQL.Add('Select max('+Chave_Registro.FieldName+')'+' from '+Tabela);
      QryReg.Open;
      if QryReg.Fields[0].IsNull then
         begin
            Chave_registro.AsInteger := 1;
         end
      else
         begin
            Chave_registro.AsInteger := (QryReg.Fields[0].AsInteger +1);
         end;
   finally
      FreeAndNil(QryReg);
   end;
end;

procedure TDmCadastros.CdsClientesAfterInsert(DataSet: TDataSet);
begin
  IncrementaCodigo('CLI0000',CdsClientesCLI_CODIGO,'SYSFILE',CdsSysfileSYS_CLIENTE);
end;

procedure TDmCadastros.CdsRepresentanteAfterInsert(DataSet: TDataSet);
begin
   IncrementaCodigo('REP0000',CdsRepresentanteREP_CODIGO,'SYSFILE',CdsSysfileSYS_REPRESENTANTE);
end;

procedure TDmCadastros.CdsTransportadoraAfterInsert(DataSet: TDataSet);
begin
   IncrementaCodigo('TRP0000',CdsTransportadoraTRP_CODIGO,'SYSFILE',CdsSysfileSYS_TRANSPORTADORA);
end;

procedure TDmCadastros.CdsRegiaoAfterInsert(DataSet: TDataSet);
begin
   IncrementaCodigo('REG0000',CdsRegiaoREG_CODIGO,'SYSFILE',CdsSysfileSYS_REGIAO);
end;

procedure TDmCadastros.CdsFornecedorAfterInsert(DataSet: TDataSet);
begin
   IncrementaCodigo('FOR0000',CdsFornecedorFOR_CODIGO,'SYSFILE',CdsSysfileSYS_FORNECEDORES);
end;

procedure TDmCadastros.CdsProdutosAfterInsert(DataSet: TDataSet);
begin
   IncrementaCodigo('PRD0000',CdsProdutosPRD_CODIGO,'SYSFILE',CdsSysfileSYS_PRODUTO);
end;

procedure TDmCadastros.CdsBancoAfterInsert(DataSet: TDataSet);
begin
   IncrementaCodigo('BAN0000',CdsBancoBAN_CODIGO,'SYSFILE',CdsSysfileSYS_BANCO);
end;

procedure TDmCadastros.CdsAtividadeAfterInsert(DataSet: TDataSet);
begin
   incrementaregistro('CLI_ATV1',CdsAtividadeRCL_CODIGO);
end;

procedure TDmCadastros.CdsEventoAfterInsert(DataSet: TDataSet);
begin
      IncrementaRegistro('EVE0000',CdsEventoEVE_CODIGO);
end;

procedure TDmCadastros.CdsEventoBeforeEdit(DataSet: TDataSet);
begin
   If Assigned(FormEvento) then
      begin
          FormEvento.DesabilitaBotoes;
      end;
end;

procedure TDmCadastros.CdsRegiaoBeforeEdit(DataSet: TDataSet);
begin
   if Assigned(FormRegiao) then
       FormRegiao.DesabilitaBotoes;
end;

procedure TDmCadastros.CdsPrdTipoAfterInsert(DataSet: TDataSet);
begin
    IncrementaRegistro('PRD_TIPO',CdsPrdTipoPTI_CODIGO);
end;

procedure TDmCadastros.CdsPrdTipoBeforeEdit(DataSet: TDataSet);
begin
   if Assigned(FormProdTipo) then
       FormProdTipo.DesabilitaBotoes;

end;

procedure TDmCadastros.CdsPrdGrupoAfterInsert(DataSet: TDataSet);
begin
IncrementaRegistro('PRD_GRUPO',CdsPrdGrupoPGR_CODIGO);
end;

procedure TDmCadastros.CdsPrdGrupoBeforeEdit(DataSet: TDataSet);
begin
   if Assigned(FormProdGrupo) then
       FormProdGrupo.DesabilitaBotoes;
end;

procedure TDmCadastros.CdsPrdLinhaAfterInsert(DataSet: TDataSet);
begin
  IncrementaRegistro('PRD_LINHA',CdsPrdLinhaLIN_CODIGO);
end;

procedure TDmCadastros.CdsPrdClassIPIBeforeEdit(DataSet: TDataSet);
begin
  if Assigned(FormPrd_IPI) then
     FormPrd_IPI.DesabilitaBotoes;
end;

procedure TDmCadastros.CdsParcelasAfterInsert(DataSet: TDataSet);
begin
  incrementaRegistro('PCL0000',CdsParcelasPCL_CODIGO);
end;

procedure TDmCadastros.CdsParcelasBeforeEdit(DataSet: TDataSet);
begin
if Assigned(FormParcelas) then
   FormParcelas.Desabilitabotoes;
end;

procedure TDmCadastros.CdsOperFiscAfterInsert(DataSet: TDataSet);
begin
   IncrementaRegistro('OPE0000',CdsOperFiscOPE_REGISTRO);
end;

procedure TDmCadastros.CdsOperFiscBeforeEdit(DataSet: TDataSet);
begin
   if Assigned(FormOperFisc) then
   FormOperFisc.Desabilitabotoes;
end;

procedure TDmCadastros.CdsCtAnaliseBeforeEdit(DataSet: TDataSet);
begin
 if Assigned(FormContAnalise) then
  FormContAnalise.DesabilitaBotoes;
end;

procedure TDmCadastros.CdsCtAnaliseAfterInsert(DataSet: TDataSet);
begin
IncrementaRegistro('CCT_0000',CdsCtAnaliseCCT_CODIGO)
end;

procedure TDmCadastros.CdsProdutosBeforeEdit(DataSet: TDataSet);
begin
   if Assigned(FormProduto) then
        FormProduto.DesabilitaBotoes;
end;

procedure TDmCadastros.CdsProdutosCalcFields(DataSet: TDataSet);
begin
  CdsProdutosPRD_FISICO_CC.AsCurrency := CdsprodutosPRD_ESTOQUE.AsCurrency + CdsprodutosPRD_ENTRADA.AsCurrency - CdsprodutosPRD_SAIDA.AsCurrency;
  //
  CdsProdutosPRD_ANTECIPADO_CC.AsCurrency := CdsprodutosPRD_ESTOQUE.AsCurrency +
  CdsprodutosPRD_ENTRADA.AsCurrency - CdsprodutosPRD_SAIDA.AsCurrency +
  CdsprodutosPRD_PENDENTE.AsCurrency;
end;

end.
