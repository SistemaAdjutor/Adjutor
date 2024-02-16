unit DataCad1;

interface

uses
  SysUtils, Classes, FMTBCd, DB, DBClient, Provider, SqlExpr, MIDASLIB;

type
  TDataCadastros1 = class(TDataModule)
    SqlICMS: tsqlquery;
    DspICMS: TDataSetProvider;
    CdsICMS: TClientDataSet;
    DsICMS: TDataSource;
    SqlCentroCusto: tsqlquery;
    DpsCentroCusto: TDataSetProvider;
    CdsCentroCusto: TClientDataSet;
    DsCentroCusto: TDataSource;
    SqlCentroCustoCEC_CODIGO: TStringField;
    SqlCentroCustoCEC_DESCRI: TStringField;
    SqlCentroCustoEMP_CODIGO: TStringField;
    CdsCentroCustoCEC_CODIGO: TStringField;
    CdsCentroCustoCEC_DESCRI: TStringField;
    CdsCentroCustoEMP_CODIGO: TStringField;
    SqlProCaixa: tsqlquery;
    DspProCaixa: TDataSetProvider;
    CdsProCaixa: TClientDataSet;
    DsProCaixa: TDataSource;
    SqlParametros: tsqlquery;
    DspParametros: TDataSetProvider;
    CdsParametros: TClientDataSet;
    DsParametros: TDataSource;
    SqlCheques: tsqlquery;
    DspCheques: TDataSetProvider;
    CdsCheques: TClientDataSet;
    DsCheques: TDataSource;
    SqlChequesCHQ_CODIGO: TStringField;
    SqlChequesCHQ_TOTAL: TFMTBCdField;
    SqlChequesCHQ_NOMINAL: TStringField;
    SqlChequesCHQ_DATA: TSQLTimeStampField;
    SqlChequesCHQ_FINALIZA: TStringField;
    SqlChequesBAN_CODIGO: TStringField;
    SqlChequesBAN_NOME: TStringField;
    SqlChequesCHQ_IMP: TStringField;
    SqlChequesEMP_CODIGO: TStringField;
    CdsChequesCHQ_CODIGO: TStringField;
    CdsChequesCHQ_TOTAL: TFMTBCdField;
    CdsChequesCHQ_NOMINAL: TStringField;
    CdsChequesCHQ_DATA: TSQLTimeStampField;
    CdsChequesCHQ_FINALIZA: TStringField;
    CdsChequesBAN_CODIGO: TStringField;
    CdsChequesBAN_NOME: TStringField;
    CdsChequesCHQ_IMP: TStringField;
    CdsChequesEMP_CODIGO: TStringField;
    SqlChequesItens: tsqlquery;
    DspChequeItens: TDataSetProvider;
    CdsChequesItens: TClientDataSet;
    DsChequeItens: TDataSource;
    SqlChequesItensCHQ_CODIGO: TStringField;
    SqlChequesItensCHE_FAVORECIDO: TStringField;
    SqlChequesItensCHE_NUMDOC: TStringField;
    SqlChequesItensPAG_CODIGO: TStringField;
    SqlChequesItensCHE_PARCELA: TStringField;
    SqlChequesItensCHE_REMOVE: TStringField;
    SqlChequesItensCHE_OBS: TStringField;
    SqlChequesItensCHE_VENCTO: TSQLTimeStampField;
    SqlChequesItensCHE_VLPAGO: TFMTBCdField;
    SqlChequesItensEMP_CODIGO: TStringField;
    CdsChequesItensCHQ_CODIGO: TStringField;
    CdsChequesItensCHE_FAVORECIDO: TStringField;
    CdsChequesItensCHE_NUMDOC: TStringField;
    CdsChequesItensPAG_CODIGO: TStringField;
    CdsChequesItensCHE_PARCELA: TStringField;
    CdsChequesItensCHE_REMOVE: TStringField;
    CdsChequesItensCHE_OBS: TStringField;
    CdsChequesItensCHE_VENCTO: TSQLTimeStampField;
    CdsChequesItensCHE_VLPAGO: TFMTBCdField;
    CdsChequesItensEMP_CODIGO: TStringField;
    SqlEmbalagem: tsqlquery;
    DspEmbalagem: TDataSetProvider;
    CdsEmbalagem: TClientDataSet;
    DsEmbalagem: TDataSource;
    SqlEmbalagemPED_CODIGO: TStringField;
    SqlEmbalagemPRD_CODIGO: TStringField;
    SqlEmbalagemPEB_PRECO: TFMTBCdField;
    SqlEmbalagemPEB_QTDE: TFMTBCdField;
    SqlEmbalagemEMP_CODIGO: TStringField;
    SqlEmbalagemPRD_REFER: TStringField;
    SqlEmbalagemPEB_REGISTRO: TIntegerField;
    CdsEmbalagemPEB_REGISTRO: TIntegerField;
    CdsEmbalagemPED_CODIGO: TStringField;
    CdsEmbalagemPRD_CODIGO: TStringField;
    CdsEmbalagemPEB_PRECO: TFMTBCdField;
    CdsEmbalagemPEB_QTDE: TFMTBCdField;
    CdsEmbalagemEMP_CODIGO: TStringField;
    CdsEmbalagemPRD_REFER: TStringField;
    SqlNotaFiscal: tsqlquery;
    DspNotaFiscal: TDataSetProvider;
    CdsNotaFiscal: TClientDataSet;
    DsNotaFiscal: TDataSource;
    SqlPrdManut: tsqlquery;
    DspPrdManut: TDataSetProvider;
    CdsPrdManut: TClientDataSet;
    DsPrdManut: TDataSource;
    SqlPrdManutPES_TIPO: TStringField;
    SqlPrdManutPES_QTDE: TFMTBCdField;
    SqlPrdManutPES_NUMDOC: TStringField;
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
    CdsPrdManutPES_REGISTRO: TIntegerField;
    CdsPrdManutPES_TIPO: TStringField;
    CdsPrdManutPES_QTDE: TFMTBCdField;
    CdsPrdManutPES_NUMDOC: TStringField;
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
    SqlNFitem: tsqlquery;
    DspNFitem: TDataSetProvider;
    CdsNFitem: TClientDataSet;
    DsNFitem: TDataSource;
    SqlICMSICM_ALIQ: TFMTBCdField;
    SqlICMSICM_DESTINO: TStringField;
    SqlICMSICMS_SUBS: TFMTBCdField;
    SqlICMSICM_REGISTRO: TIntegerField;
    SqlICMSICM_IE_SUBTRIB: TStringField;
    CdsICMSICM_ALIQ: TFMTBCdField;
    CdsICMSICM_DESTINO: TStringField;
    CdsICMSICMS_SUBS: TFMTBCdField;
    CdsICMSICM_REGISTRO: TIntegerField;
    CdsICMSICM_IE_SUBTRIB: TStringField;
    SqlEveRepr: tsqlquery;
    DspEveRepr: TDataSetProvider;
    CdsEveRepr: TClientDataSet;
    DsEveRepr: TDataSource;
    SqlEveReprERP_CODIGO: TStringField;
    SqlEveReprERP_VALOR: TFMTBCdField;
    SqlEveReprERP_TIPO: TStringField;
    SqlEveReprERP_DATA: TSQLTimeStampField;
    SqlEveReprERP_COMPL: TStringField;
    SqlEveReprERP_IMPOSTO: TStringField;
    SqlEveReprEVE_CODIGO: TStringField;
    SqlEveReprREP_CODIGO: TStringField;
    SqlEveReprEMP_CODIGO: TStringField;
    CdsEveReprERP_CODIGO: TStringField;
    CdsEveReprERP_VALOR: TFMTBCdField;
    CdsEveReprERP_TIPO: TStringField;
    CdsEveReprERP_DATA: TSQLTimeStampField;
    CdsEveReprERP_COMPL: TStringField;
    CdsEveReprERP_IMPOSTO: TStringField;
    CdsEveReprEVE_CODIGO: TStringField;
    CdsEveReprREP_CODIGO: TStringField;
    CdsEveReprEMP_CODIGO: TStringField;
    SqlIss: tsqlquery;
    DspIss: TDataSetProvider;
    CdsIss: TClientDataSet;
    DsIss: TDataSource;
    SqlTrib: tsqlquery;
    DspTrib: TDataSetProvider;
    CdsTrib: TClientDataSet;
    DsTrib: TDataSource;
    SqlIssISS_CODIGO: TStringField;
    SqlIssISS_MUNICIPIO: TStringField;
    SqlIssISS_UF: TStringField;
    SqlIssISS_PGRC_ISS: TFMTBCdField;
    SqlIssISS_PERC_RET: TFMTBCdField;
    CdsIssISS_CODIGO: TStringField;
    CdsIssISS_MUNICIPIO: TStringField;
    CdsIssISS_UF: TStringField;
    CdsIssISS_PGRC_ISS: TFMTBCdField;
    CdsIssISS_PERC_RET: TFMTBCdField;
    SqlIssEMP_CODIGO: TStringField;
    CdsIssEMP_CODIGO: TStringField;
    SqlTribTRB_CODIGO: TStringField;
    SqlTribTRB_ATIVO: TStringField;
    SqlTribTRB_SIMP_FED: TFMTBCdField;
    SqlTribTRB_SIMP_EST: TFMTBCdField;
    SqlTribTRB_SIMP_FED_DE: TFMTBCdField;
    SqlTribTRB_SIMP_FED_ATE: TFMTBCdField;
    SqlTribTRB_SIMP_EST_DE: TFMTBCdField;
    SqlTribTRB_SIMP_EST_ATE: TFMTBCdField;
    SqlTribTRB_IRPJ: TFMTBCdField;
    SqlTribTRB_IRPJ_RET: TFMTBCdField;
    SqlTribTRB_IRPF: TFMTBCdField;
    SqlTribTRB_PIS: TFMTBCdField;
    SqlTribTRB_PIS_RET: TFMTBCdField;
    SqlTribTRB_COFINS: TFMTBCdField;
    SqlTribTRB_COFINS_RET: TFMTBCdField;
    SqlTribTRB_CONTSOCIAL: TFMTBCdField;
    SqlTribTRB_CONTSOCIAL_RET: TFMTBCdField;
    SqlTribTRB_INSS: TFMTBCdField;
    SqlTribTRB_INSS_RET: TFMTBCdField;
    SqlTribEMP_CODIGO: TStringField;
    CdsTribTRB_CODIGO: TStringField;
    CdsTribTRB_ATIVO: TStringField;
    CdsTribTRB_SIMP_FED: TFMTBCdField;
    CdsTribTRB_SIMP_EST: TFMTBCdField;
    CdsTribTRB_SIMP_FED_DE: TFMTBCdField;
    CdsTribTRB_SIMP_FED_ATE: TFMTBCdField;
    CdsTribTRB_SIMP_EST_DE: TFMTBCdField;
    CdsTribTRB_SIMP_EST_ATE: TFMTBCdField;
    CdsTribTRB_IRPJ: TFMTBCdField;
    CdsTribTRB_IRPJ_RET: TFMTBCdField;
    CdsTribTRB_IRPF: TFMTBCdField;
    CdsTribTRB_PIS: TFMTBCdField;
    CdsTribTRB_PIS_RET: TFMTBCdField;
    CdsTribTRB_COFINS: TFMTBCdField;
    CdsTribTRB_COFINS_RET: TFMTBCdField;
    CdsTribTRB_CONTSOCIAL: TFMTBCdField;
    CdsTribTRB_CONTSOCIAL_RET: TFMTBCdField;
    CdsTribTRB_INSS: TFMTBCdField;
    CdsTribTRB_INSS_RET: TFMTBCdField;
    CdsTribEMP_CODIGO: TStringField;
    SqlTribTRB_ISS: TFMTBCdField;
    SqlTribTRB_ISS_RET: TFMTBCdField;
    CdsTribTRB_ISS: TFMTBCdField;
    CdsTribTRB_ISS_RET: TFMTBCdField;
    SQLUsuario: tsqlquery;
    SQLUsuarioUSU_CODIGO: TIntegerField;
    SQLUsuarioUSU_DATA_CADASTRO: TDateField;
    SQLUsuarioUSU_DATA_ATUALIZACAO: TDateField;
    SQLUsuarioUSU_NOME: TStringField;
    SQLUsuarioUSU_LOGIN: TStringField;
    SQLUsuarioUSU_SENHA: TStringField;
    SQLUsuarioUSU_TIPO_USUARIO: TStringField;
    SQLUsuarioUSU_LIBERA_CREDITO: TStringField;
    SQLUsuarioUSU_LIBERA_PRECO: TStringField;
    SQLUsuarioUSU_LIBERA_DESCONTO: TStringField;
    SQLUsuarioUSU_EMAIL: TStringField;
    SQLUsuarioUSU_ESTATISTICA: TStringField;
    SQLUsuarioUSU_REEMISSAO_PED: TStringField;
    DSPUsuario: TDataSetProvider;
    CdSUsuario: TClientDataSet;
    CdSUsuarioUSU_CODIGO: TIntegerField;
    CdSUsuarioUSU_DATA_CADASTRO: TDateField;
    CdSUsuarioUSU_DATA_ATUALIZACAO: TDateField;
    CdSUsuarioUSU_NOME: TStringField;
    CdSUsuarioUSU_LOGIN: TStringField;
    CdSUsuarioUSU_SENHA: TStringField;
    CdSUsuarioUSU_TIPO_USUARIO: TStringField;
    CdSUsuarioUSU_LIBERA_CREDITO: TStringField;
    CdSUsuarioUSU_LIBERA_PRECO: TStringField;
    CdSUsuarioUSU_LIBERA_DESCONTO: TStringField;
    CdSUsuariowTIPO_USUARIO: TStringField;
    CdSUsuarioUSU_EMAIL: TStringField;
    CdSUsuarioUSU_ESTATISTICA: TStringField;
    CdSUsuarioUSU_REEMISSAO_PED: TStringField;
    DsUsuario: TDataSource;
    SQLAcessosUsuario: tsqlquery;
    SQLAcessosUsuarioUSA_REGISTRO: TIntegerField;
    SQLAcessosUsuarioUSA_COD_USUARIO: TIntegerField;
    SQLAcessosUsuarioUSA_MENU: TStringField;
    SQLAcessosUsuarioUSA_ACESSO: TIntegerField;
    SQLAcessosUsuarioUSA_ALTERACAO: TStringField;
    SQLAcessosUsuarioUSA_INCLUSAO: TStringField;
    SQLAcessosUsuarioUSA_EXCLUSAO: TStringField;
    DSPAcessosUsuario: TDataSetProvider;
    CdSAcessosUsuario: TClientDataSet;
    CdSAcessosUsuarioUSA_REGISTRO: TIntegerField;
    CdSAcessosUsuarioUSA_COD_USUARIO: TIntegerField;
    CdSAcessosUsuarioUSA_MENU: TStringField;
    CdSAcessosUsuarioUSA_ACESSO: TIntegerField;
    CdSAcessosUsuarioUSA_ALTERACAO: TStringField;
    CdSAcessosUsuarioUSA_INCLUSAO: TStringField;
    CdSAcessosUsuarioUSA_EXCLUSAO: TStringField;
    DsAcessosUsuario: TDataSource;
    SQLUsaParametro: tsqlquery;
    SQLUsaParametroUSP_REGISTRO: TIntegerField;
    SQLUsaParametroUSP_COD_USUARIO: TIntegerField;
    SQLUsaParametroUSP_STAT_PRECO_BRUTO_P: TStringField;
    SQLUsaParametroUSP_STAT_PRECO_LIQUIDO_P: TStringField;
    SQLUsaParametroUSP_STAT_DESC_AUTOMATICO_P: TStringField;
    SQLUsaParametroUSP_DESCONTO_MAX_P: TFMTBCdField;
    SQLUsaParametroUSP_REEMISSAO_PEDIDO_P: TStringField;
    SQLUsaParametroUSP_EXCLUSAO_PEDIDO_P: TStringField;
    SQLUsaParametroUSP_STAT_PRECO_BRUTO_T: TStringField;
    SQLUsaParametroUSP_STAT_PRECO_LIQUIDO_T: TStringField;
    SQLUsaParametroUSP_STAT_DESC_AUTOMATICO_T: TStringField;
    SQLUsaParametroUSP_DESCONTO_MAX_T: TFMTBCdField;
    SQLUsaParametroUSP_REEMISSAO_PEDIDO_T: TStringField;
    SQLUsaParametroUSP_EXCLUSAO_PEDIDO_T: TStringField;
    SQLUsaParametroUSP_STAT_COMISSAO: TStringField;
    SQLUsaParametroUSP_STAT_CUSTO: TStringField;
    SQLUsaParametroUSP_STAT_MARGEM: TStringField;
    SQLUsaParametroUSP_STAT_PRECO_VENDA: TStringField;
    SQLUsaParametroUSP_STAT_MARGEM_MINIMA: TStringField;
    SQLUsaParametroUSP_STAT_PRECO_OFERTA: TStringField;
    SQLUsaParametroUSP_ALTERA_DESCONTO_P: TStringField;
    SQLUsaParametroUSP_ALTERA_DESCONTO_T: TStringField;
    SQLUsaParametroUSP_DESCONTO_OFERTA_P: TStringField;
    SQLUsaParametroUSP_DESCONTO_OFERTA_T: TStringField;
    SQLUsaParametroUSP_ALTERA_NF_ENTRADA: TStringField;
    DSPUsaParametro: TDataSetProvider;
    CdSUsaParametro: TClientDataSet;
    CdSUsaParametroUSP_REGISTRO: TIntegerField;
    CdSUsaParametroUSP_COD_USUARIO: TIntegerField;
    CdSUsaParametroUSP_STAT_PRECO_BRUTO_P: TStringField;
    CdSUsaParametroUSP_STAT_PRECO_LIQUIDO_P: TStringField;
    CdSUsaParametroUSP_STAT_DESC_AUTOMATICO_P: TStringField;
    CdSUsaParametroUSP_DESCONTO_MAX_P: TFMTBCdField;
    CdSUsaParametroUSP_REEMISSAO_PEDIDO_P: TStringField;
    CdSUsaParametroUSP_EXCLUSAO_PEDIDO_P: TStringField;
    CdSUsaParametroUSP_STAT_PRECO_BRUTO_T: TStringField;
    CdSUsaParametroUSP_STAT_PRECO_LIQUIDO_T: TStringField;
    CdSUsaParametroUSP_STAT_DESC_AUTOMATICO_T: TStringField;
    CdSUsaParametroUSP_DESCONTO_MAX_T: TFMTBCdField;
    CdSUsaParametroUSP_REEMISSAO_PEDIDO_T: TStringField;
    CdSUsaParametroUSP_EXCLUSAO_PEDIDO_T: TStringField;
    CdSUsaParametroUSP_STAT_COMISSAO: TStringField;
    CdSUsaParametroUSP_STAT_CUSTO: TStringField;
    CdSUsaParametroUSP_STAT_MARGEM: TStringField;
    CdSUsaParametroUSP_STAT_PRECO_VENDA: TStringField;
    CdSUsaParametroUSP_STAT_MARGEM_MINIMA: TStringField;
    CdSUsaParametroUSP_STAT_PRECO_OFERTA: TStringField;
    CdSUsaParametroUSP_ALTERA_DESCONTO_P: TStringField;
    CdSUsaParametroUSP_ALTERA_DESCONTO_T: TStringField;
    CdSUsaParametroUSP_DESCONTO_OFERTA_P: TStringField;
    CdSUsaParametroUSP_DESCONTO_OFERTA_T: TStringField;
    CdSUsaParametroUSP_ALTERA_NF_ENTRADA: TStringField;
    DSUsaParametro: TDataSource;
    SQLArquivoCNAB: tsqlquery;
    SQLDupliCNAB: tsqlquery;
    CdSArquivoCNAB: TClientDataSet;
    CdSDupliCNAB: TClientDataSet;
    DSPArquivoCNAB: TDataSetProvider;
    DSPDupliCNAB: TDataSetProvider;
    DSArquivoCNAB: TDataSource;
    DSDupliCNAB: TDataSource;
    SQLArquivoCNABCNAB_REGISTRO: TIntegerField;
    SQLArquivoCNABCNAB_CODIGO: TIntegerField;
    SQLArquivoCNABCNAB_COD_EMPESA: TIntegerField;
    SQLArquivoCNABCNAB_CODIGO_BANCO: TIntegerField;
    SQLArquivoCNABCNAB_COD_ARQUIVO: TStringField;
    SQLArquivoCNABCNAB_LITERAL_ARQUIVO: TStringField;
    SQLArquivoCNABCNAB_DATA: TDateField;
    SQLArquivoCNABCNAB_HORA: TTimeField;
    SQLArquivoCNABCNAB_COD_SERVICO: TStringField;
    SQLArquivoCNABCNAB_LITERA_SERVICO: TStringField;
    SQLArquivoCNABCNAB_AGENCIA: TStringField;
    SQLArquivoCNABCNAB_AGENCIA_DV: TStringField;
    SQLArquivoCNABCNAB_CONTA: TStringField;
    SQLArquivoCNABCNAB_CONTA_DV: TStringField;
    SQLArquivoCNABCNAB_QTDE_DUPLICATA: TIntegerField;
    SQLArquivoCNABCNAB_NOME_ARQUIVO: TStringField;
    SQLArquivoCNABCNAB_STATUS: TStringField;
    SQLArquivoCNABCNAB_DATA_STATUS: TDateField;
    SQLArquivoCNABCNAB_HORA_STATUS: TTimeField;
    SQLArquivoCNABCNAB_STATUS_BAIXA: TStringField;
    SQLArquivoCNABCNAB_DATA_BAIXA: TDateField;
    SQLArquivoCNABCNAB_HORA_BAIXA: TTimeField;
    CdSArquivoCNABCNAB_REGISTRO: TIntegerField;
    CdSArquivoCNABCNAB_CODIGO: TIntegerField;
    CdSArquivoCNABCNAB_COD_EMPESA: TIntegerField;
    CdSArquivoCNABCNAB_CODIGO_BANCO: TIntegerField;
    CdSArquivoCNABCNAB_COD_ARQUIVO: TStringField;
    CdSArquivoCNABCNAB_LITERAL_ARQUIVO: TStringField;
    CdSArquivoCNABCNAB_DATA: TDateField;
    CdSArquivoCNABCNAB_HORA: TTimeField;
    CdSArquivoCNABCNAB_COD_SERVICO: TStringField;
    CdSArquivoCNABCNAB_LITERA_SERVICO: TStringField;
    CdSArquivoCNABCNAB_AGENCIA: TStringField;
    CdSArquivoCNABCNAB_AGENCIA_DV: TStringField;
    CdSArquivoCNABCNAB_CONTA: TStringField;
    CdSArquivoCNABCNAB_CONTA_DV: TStringField;
    CdSArquivoCNABCNAB_QTDE_DUPLICATA: TIntegerField;
    CdSArquivoCNABCNAB_NOME_ARQUIVO: TStringField;
    CdSArquivoCNABCNAB_STATUS: TStringField;
    CdSArquivoCNABCNAB_DATA_STATUS: TDateField;
    CdSArquivoCNABCNAB_HORA_STATUS: TTimeField;
    CdSArquivoCNABCNAB_STATUS_BAIXA: TStringField;
    CdSArquivoCNABCNAB_DATA_BAIXA: TDateField;
    CdSArquivoCNABCNAB_HORA_BAIXA: TTimeField;
    SQLDupliCNABDCN_REGISTRO: TIntegerField;
    SQLDupliCNABDCN_COD_REMESSA: TIntegerField;
    SQLDupliCNABDCN_DUPLICATA: TStringField;
    SQLDupliCNABDCN_COD_OCORRENCIA: TStringField;
    SQLDupliCNABDCN_DATA_OCORRENCIA: TDateField;
    SQLDupliCNABDCN_INSTRUCAO1: TStringField;
    SQLDupliCNABDCN_INSTRUCAO2: TStringField;
    SQLDupliCNABDCN_COD_REJEICAO: TStringField;
    SQLDupliCNABDCN_INDIC_CREDITO: TStringField;
    SQLDupliCNABDCN_NOSSO_NUMERO: TStringField;
    SQLDupliCNABDCN_TARIFA: TFMTBCdField;
    SQLDupliCNABDCN_VALOR_ABATIMENTO: TFMTBCdField;
    SQLDupliCNABDCN_VALOR_DESCONTO: TFMTBCdField;
    SQLDupliCNABDCN_VALOR_PAGO: TFMTBCdField;
    SQLDupliCNABDCN_JUROS_MORA: TFMTBCdField;
    SQLDupliCNABDCN_VALOR_MULTA: TFMTBCdField;
    SQLDupliCNABDCN_STATUS_BAIXA: TStringField;
    SQLDupliCNABDCN_IDENTIFICA_TITULO: TStringField;
    SQLDupliCNABDCN_PROTESTAR: TStringField;
    SQLDupliCNABDCN_DIAS_PROT: TIntegerField;
    CdSDupliCNABDCN_REGISTRO: TIntegerField;
    CdSDupliCNABDCN_COD_REMESSA: TIntegerField;
    CdSDupliCNABDCN_DUPLICATA: TStringField;
    CdSDupliCNABDCN_COD_OCORRENCIA: TStringField;
    CdSDupliCNABDCN_DATA_OCORRENCIA: TDateField;
    CdSDupliCNABDCN_INSTRUCAO1: TStringField;
    CdSDupliCNABDCN_INSTRUCAO2: TStringField;
    CdSDupliCNABDCN_COD_REJEICAO: TStringField;
    CdSDupliCNABDCN_INDIC_CREDITO: TStringField;
    CdSDupliCNABDCN_NOSSO_NUMERO: TStringField;
    CdSDupliCNABDCN_TARIFA: TFMTBCdField;
    CdSDupliCNABDCN_VALOR_ABATIMENTO: TFMTBCdField;
    CdSDupliCNABDCN_VALOR_DESCONTO: TFMTBCdField;
    CdSDupliCNABDCN_VALOR_PAGO: TFMTBCdField;
    CdSDupliCNABDCN_JUROS_MORA: TFMTBCdField;
    CdSDupliCNABDCN_VALOR_MULTA: TFMTBCdField;
    CdSDupliCNABDCN_STATUS_BAIXA: TStringField;
    CdSDupliCNABDCN_IDENTIFICA_TITULO: TStringField;
    CdSDupliCNABDCN_PROTESTAR: TStringField;
    CdSDupliCNABDCN_DIAS_PROT: TIntegerField;
    CdSOcorrenciaCNAB: TClientDataSet;
    DSPOcorrenciaCNAB: TDataSetProvider;
    DSOcorrenciaCNAB: TDataSource;
    SQLOcorrenciaCNAB: tsqlquery;
    CdSOcorrenciaCNABOCR_REGISTRO: TIntegerField;
    CdSOcorrenciaCNABOCR_COD_BANCO: TIntegerField;
    CdSOcorrenciaCNABOCR_COD_OCORRENCIA: TStringField;
    CdSOcorrenciaCNABOCR_DESCRICAO: TStringField;
    CdSOcorrenciaCNABOCR_TIPO_OCORRENCIA: TStringField;
    CdSOcorrenciaCNABOCR_COMANDO: TStringField;
    SQLInstrucaoCNAB: tsqlquery;
    CdSInstrucaoCNAB: TClientDataSet;
    DSPInstrucaoCNAB: TDataSetProvider;
    DSInstrucaoCNAB: TDataSource;
    SQLInstrucaoCNABIST_REGISTRO: TIntegerField;
    SQLInstrucaoCNABIST_COD_BANCO: TIntegerField;
    SQLInstrucaoCNABIST_CODIGO: TStringField;
    SQLInstrucaoCNABIST_DESCRICAO: TStringField;
    SQLInstrucaoCNABIST_COMANDO: TStringField;
    CdSInstrucaoCNABIST_REGISTRO: TIntegerField;
    CdSInstrucaoCNABIST_COD_BANCO: TIntegerField;
    CdSInstrucaoCNABIST_CODIGO: TStringField;
    CdSInstrucaoCNABIST_DESCRICAO: TStringField;
    CdSInstrucaoCNABIST_COMANDO: TStringField;
    SqlICMSICM_UF_DESTINO: TStringField;
    SqlICMSEMP_CODIGO: TStringField;
    CdsICMSICM_UF_DESTINO: TStringField;
    CdsICMSEMP_CODIGO: TStringField;
    SQLDupliCNABDCN_DUP_PARCELA: TStringField;
    CdSDupliCNABDCN_DUP_PARCELA: TStringField;
    SQLArquivoCNABEMP_CODIGO: TStringField;
    CdSArquivoCNABEMP_CODIGO: TStringField;
    SQLDupliCNABEMP_CODIGO: TStringField;
    CdSDupliCNABEMP_CODIGO: TStringField;
    SqlParametrosPMT_REGISTRO: TSmallintField;
    CdsParametrosPMT_REGISTRO: TSmallintField;
    SqlParametrosEMP_CODIGO: TStringField;
    SqlParametrosPMT_NOSSOCODIGO: TStringField;
    SqlParametrosPMT_COMIS_GRP: TStringField;
    SqlParametrosPMT_COMIS_REP: TFMTBCdField;
    SqlParametrosPMT_COMIS_SUP: TFMTBCdField;
    SqlParametrosPMT_COMIS_GER: TFMTBCdField;
    SqlParametrosPMT_NF_MARCA: TStringField;
    SqlParametrosPMT_PAGTO_COM_TP: TStringField;
    SqlParametrosPMT_COMIS_QUINZ: TStringField;
    SqlParametrosPMT_COMIS_PROD: TStringField;
    SqlParametrosPMT_VARIACOES: TStringField;
    SqlParametrosPMT_1QZ_DIAS: TStringField;
    SqlParametrosPMT_2QZ_DIAS: TStringField;
    SqlParametrosPMT_BORDERO_COM: TStringField;
    SqlParametrosPMT_NUMER_PEDIDO: TStringField;
    SqlParametrosPMT_DPL_IPI_NA1D: TStringField;
    SqlParametrosPMT_QTDE_DECIMAIS: TStringField;
    SqlParametrosPMT_PED_IMPORTANTE: TMemoField;
    SqlParametrosPMT_CAB_TABPRECO: TStringField;
    SqlParametrosPMT_OBS_BLOQ1: TStringField;
    SqlParametrosPMT_OBS_BLOQ2: TStringField;
    SqlParametrosPMT_OBS_BLOQ3: TStringField;
    SqlParametrosPMT_LOC_PAGTO: TStringField;
    SqlParametrosPMT_IRRF: TFMTBCdField;
    SqlParametrosPMT_UNFORMULA: TSmallintField;
    SqlParametrosPMT_EMPRESACLASSE: TStringField;
    SqlParametrosPMT_MDL_OP: TStringField;
    SqlParametrosPMT_EANPAIS: TStringField;
    SqlParametrosPMT_EANEMPRESA: TStringField;
    SqlParametrosPMT_PEDITEMDESC: TStringField;
    SqlParametrosPMT_DESCPRODRES: TStringField;
    SqlParametrosPMT_PRECOCOMIPI: TStringField;
    SqlParametrosPMT_SITRIBUTARIA: TStringField;
    SqlParametrosPMT_ITENS_PEDIDO: TSmallintField;
    SqlParametrosSIN_COD_IDENTIF: TStringField;
    SqlParametrosSIN_COD_FINALID: TStringField;
    SqlParametrosSIN_MODE_NF: TStringField;
    SqlParametrosSIN_SERIE_NF: TStringField;
    SqlParametrosSIN_SUBSERIE: TStringField;
    SqlParametrosSIN_CONTATO: TStringField;
    SqlParametrosPMT_DESCTO_ITEM: TStringField;
    SqlParametrosPMT_CELULAPROD: TStringField;
    SqlParametrosPMT_PROCESPROD: TStringField;
    SqlParametrosPMT_PROJCX: TStringField;
    SqlParametrosPMT_PATHFOTO: TStringField;
    SqlParametrosPMT_PATHFICHA: TStringField;
    SqlParametrosPMT_PATHRELATORIO: TStringField;
    SqlParametrosPMT_ALMOX: TStringField;
    SqlParametrosPMT_COMPLTO_NF: TStringField;
    SqlParametrosPMT_MENSAGEM1: TStringField;
    SqlParametrosPMT_MENSAGEM2: TStringField;
    SqlParametrosPMT_TUPPEDIDO: TStringField;
    SqlParametrosPMT_KARDEX_PEDIDO: TStringField;
    SqlParametrosPMT_PI: TStringField;
    SqlParametrosPMT_PA: TStringField;
    SqlParametrosPMT_OPSPRODUZIR: TStringField;
    SqlParametrosPMT_BTN_ALT_REFER: TStringField;
    SqlParametrosPMT_COD_CARTEIRA: TStringField;
    SqlParametrosSIN_ARQ_MAGNETICO: TStringField;
    SqlParametrosPMT_TP_COBRANCA: TStringField;
    SqlParametrosPMT_TP_DOCTO: TStringField;
    SqlParametrosPMT_BTN_EQUIV: TStringField;
    SqlParametrosPMT_PATH_LOGODUPL: TStringField;
    CdsParametrosEMP_CODIGO: TStringField;
    CdsParametrosPMT_NOSSOCODIGO: TStringField;
    CdsParametrosPMT_COMIS_GRP: TStringField;
    CdsParametrosPMT_COMIS_REP: TFMTBCdField;
    CdsParametrosPMT_COMIS_SUP: TFMTBCdField;
    CdsParametrosPMT_COMIS_GER: TFMTBCdField;
    CdsParametrosPMT_NF_MARCA: TStringField;
    CdsParametrosPMT_PAGTO_COM_TP: TStringField;
    CdsParametrosPMT_COMIS_QUINZ: TStringField;
    CdsParametrosPMT_COMIS_PROD: TStringField;
    CdsParametrosPMT_VARIACOES: TStringField;
    CdsParametrosPMT_1QZ_DIAS: TStringField;
    CdsParametrosPMT_2QZ_DIAS: TStringField;
    CdsParametrosPMT_BORDERO_COM: TStringField;
    CdsParametrosPMT_NUMER_PEDIDO: TStringField;
    CdsParametrosPMT_DPL_IPI_NA1D: TStringField;
    CdsParametrosPMT_QTDE_DECIMAIS: TStringField;
    CdsParametrosPMT_PED_IMPORTANTE: TMemoField;
    CdsParametrosPMT_CAB_TABPRECO: TStringField;
    CdsParametrosPMT_OBS_BLOQ1: TStringField;
    CdsParametrosPMT_OBS_BLOQ2: TStringField;
    CdsParametrosPMT_OBS_BLOQ3: TStringField;
    CdsParametrosPMT_LOC_PAGTO: TStringField;
    CdsParametrosPMT_IRRF: TFMTBCdField;
    CdsParametrosPMT_UNFORMULA: TSmallintField;
    CdsParametrosPMT_EMPRESACLASSE: TStringField;
    CdsParametrosPMT_MDL_OP: TStringField;
    CdsParametrosPMT_EANPAIS: TStringField;
    CdsParametrosPMT_EANEMPRESA: TStringField;
    CdsParametrosPMT_PEDITEMDESC: TStringField;
    CdsParametrosPMT_DESCPRODRES: TStringField;
    CdsParametrosPMT_PRECOCOMIPI: TStringField;
    CdsParametrosPMT_SITRIBUTARIA: TStringField;
    CdsParametrosPMT_ITENS_PEDIDO: TSmallintField;
    CdsParametrosSIN_COD_IDENTIF: TStringField;
    CdsParametrosSIN_COD_FINALID: TStringField;
    CdsParametrosSIN_MODE_NF: TStringField;
    CdsParametrosSIN_SERIE_NF: TStringField;
    CdsParametrosSIN_SUBSERIE: TStringField;
    CdsParametrosSIN_CONTATO: TStringField;
    CdsParametrosPMT_DESCTO_ITEM: TStringField;
    CdsParametrosPMT_CELULAPROD: TStringField;
    CdsParametrosPMT_PROCESPROD: TStringField;
    CdsParametrosPMT_PROJCX: TStringField;
    CdsParametrosPMT_PATHFOTO: TStringField;
    CdsParametrosPMT_PATHFICHA: TStringField;
    CdsParametrosPMT_PATHRELATORIO: TStringField;
    CdsParametrosPMT_ALMOX: TStringField;
    CdsParametrosPMT_COMPLTO_NF: TStringField;
    CdsParametrosPMT_MENSAGEM1: TStringField;
    CdsParametrosPMT_MENSAGEM2: TStringField;
    CdsParametrosPMT_TUPPEDIDO: TStringField;
    CdsParametrosPMT_KARDEX_PEDIDO: TStringField;
    CdsParametrosPMT_PI: TStringField;
    CdsParametrosPMT_PA: TStringField;
    CdsParametrosPMT_OPSPRODUZIR: TStringField;
    CdsParametrosPMT_BTN_ALT_REFER: TStringField;
    CdsParametrosPMT_COD_CARTEIRA: TStringField;
    CdsParametrosSIN_ARQ_MAGNETICO: TStringField;
    CdsParametrosPMT_TP_COBRANCA: TStringField;
    CdsParametrosPMT_TP_DOCTO: TStringField;
    CdsParametrosPMT_BTN_EQUIV: TStringField;
    CdsParametrosPMT_PATH_LOGODUPL: TStringField;
    SqlParametrosPMT_BTN_DUPLICA: TStringField;
    CdsParametrosPMT_BTN_DUPLICA: TStringField;
    SqlCentroCustoCEC_PLANO: TStringField;
    CdsCentroCustoCEC_PLANO: TStringField;
    SqlNotaFiscalNF_REGISTRO: TIntegerField;
    SqlNotaFiscalNF_NOTANUMBER: TStringField;
    SqlNotaFiscalNF_EMISSAO: TDateField;
    SqlNotaFiscalNF_SAIDA: TDateField;
    SqlNotaFiscalNF_HORASAIDA: TTimeField;
    SqlNotaFiscalPCL_CODIGO: TStringField;
    SqlNotaFiscalNF_CONDPAGTO: TStringField;
    SqlNotaFiscalOPE_CODIGO: TStringField;
    SqlNotaFiscalOPE_NATUREZA: TStringField;
    SqlNotaFiscalOPE_AGRUPADO: TStringField;
    SqlNotaFiscalPED_CODIGO: TStringField;
    SqlNotaFiscalREP_CODIGO: TStringField;
    SqlNotaFiscalNF_ENTR_SAID: TStringField;
    SqlNotaFiscalNF_IMPRESS: TStringField;
    SqlNotaFiscalCLI_CODIGO: TStringField;
    SqlNotaFiscalNF_VLFRETE: TFMTBCdField;
    SqlNotaFiscalNF_VLSEGURO: TFMTBCdField;
    SqlNotaFiscalNF_DESP_ACES: TFMTBCdField;
    SqlNotaFiscalNF_ALIQ_ICMS: TFMTBCdField;
    SqlNotaFiscalNF_BASEICMS: TFMTBCdField;
    SqlNotaFiscalNF_VL_ICMS: TFMTBCdField;
    SqlNotaFiscalNF_VLBASESUBTRIB: TFMTBCdField;
    SqlNotaFiscalNF_VL_SUBTRIB: TFMTBCdField;
    SqlNotaFiscalNF_TOT_CSUB: TFMTBCdField;
    SqlNotaFiscalNF_TOT_PROD: TFMTBCdField;
    SqlNotaFiscalNF_TOT_NOTA: TFMTBCdField;
    SqlNotaFiscalNF_VL_IPI: TFMTBCdField;
    SqlNotaFiscalNF_BASE_IPI: TFMTBCdField;
    SqlNotaFiscalNF_VL_DESCTO: TFMTBCdField;
    SqlNotaFiscalNF_PLACAVE: TStringField;
    SqlNotaFiscalNF_QTDE: TFMTBCdField;
    SqlNotaFiscalNF_PESOBRU: TFMTBCdField;
    SqlNotaFiscalNF_PESOLIQ: TFMTBCdField;
    SqlNotaFiscalNF_ESPECIE: TStringField;
    SqlNotaFiscalNF_MARCA: TStringField;
    SqlNotaFiscalNF_NUMERO: TStringField;
    SqlNotaFiscalNF_INTERNO: TStringField;
    SqlNotaFiscalNF_CANCELADA: TStringField;
    SqlNotaFiscalNF_AGRUPADO: TStringField;
    SqlNotaFiscalEMP_CODIGO: TStringField;
    SqlNotaFiscalNF_OBS_OPER: TStringField;
    SqlNotaFiscalNF_OBS_PEDI: TStringField;
    SqlNotaFiscalAMX_CODIGO: TStringField;
    SqlNotaFiscalNF_OBSG1: TStringField;
    SqlNotaFiscalNF_OBSG2: TStringField;
    SqlNotaFiscalNF_OBSG3: TStringField;
    SqlNotaFiscalNF_OBSG4: TStringField;
    SqlNotaFiscalNF_OBSG5: TStringField;
    SqlNotaFiscalNF_OBSG6: TStringField;
    SqlNotaFiscalNF_TP_DESCTO: TStringField;
    SqlNotaFiscalNF_PC_DESCTO1: TFMTBCdField;
    SqlNotaFiscalNF_PC_DESCTO2: TFMTBCdField;
    SqlNotaFiscalNF_BASE_ISS: TFMTBCdField;
    SqlNotaFiscalNF_VALOR_ISS: TFMTBCdField;
    SqlNotaFiscalOPV_CODIGO: TIntegerField;
    CdsNotaFiscalNF_REGISTRO: TIntegerField;
    CdsNotaFiscalNF_NOTANUMBER: TStringField;
    CdsNotaFiscalNF_EMISSAO: TDateField;
    CdsNotaFiscalNF_SAIDA: TDateField;
    CdsNotaFiscalNF_HORASAIDA: TTimeField;
    CdsNotaFiscalPCL_CODIGO: TStringField;
    CdsNotaFiscalNF_CONDPAGTO: TStringField;
    CdsNotaFiscalOPE_CODIGO: TStringField;
    CdsNotaFiscalOPE_NATUREZA: TStringField;
    CdsNotaFiscalOPE_AGRUPADO: TStringField;
    CdsNotaFiscalPED_CODIGO: TStringField;
    CdsNotaFiscalREP_CODIGO: TStringField;
    CdsNotaFiscalNF_ENTR_SAID: TStringField;
    CdsNotaFiscalNF_IMPRESS: TStringField;
    CdsNotaFiscalCLI_CODIGO: TStringField;
    CdsNotaFiscalNF_VLFRETE: TFMTBCdField;
    CdsNotaFiscalNF_VLSEGURO: TFMTBCdField;
    CdsNotaFiscalNF_DESP_ACES: TFMTBCdField;
    CdsNotaFiscalNF_ALIQ_ICMS: TFMTBCdField;
    CdsNotaFiscalNF_BASEICMS: TFMTBCdField;
    CdsNotaFiscalNF_VL_ICMS: TFMTBCdField;
    CdsNotaFiscalNF_VLBASESUBTRIB: TFMTBCdField;
    CdsNotaFiscalNF_VL_SUBTRIB: TFMTBCdField;
    CdsNotaFiscalNF_TOT_CSUB: TFMTBCdField;
    CdsNotaFiscalNF_TOT_PROD: TFMTBCdField;
    CdsNotaFiscalNF_TOT_NOTA: TFMTBCdField;
    CdsNotaFiscalNF_VL_IPI: TFMTBCdField;
    CdsNotaFiscalNF_BASE_IPI: TFMTBCdField;
    CdsNotaFiscalNF_VL_DESCTO: TFMTBCdField;
    CdsNotaFiscalNF_PLACAVE: TStringField;
    CdsNotaFiscalNF_QTDE: TFMTBCdField;
    CdsNotaFiscalNF_PESOBRU: TFMTBCdField;
    CdsNotaFiscalNF_PESOLIQ: TFMTBCdField;
    CdsNotaFiscalNF_ESPECIE: TStringField;
    CdsNotaFiscalNF_MARCA: TStringField;
    CdsNotaFiscalNF_NUMERO: TStringField;
    CdsNotaFiscalNF_INTERNO: TStringField;
    CdsNotaFiscalNF_CANCELADA: TStringField;
    CdsNotaFiscalNF_AGRUPADO: TStringField;
    CdsNotaFiscalEMP_CODIGO: TStringField;
    CdsNotaFiscalNF_OBS_OPER: TStringField;
    CdsNotaFiscalNF_OBS_PEDI: TStringField;
    CdsNotaFiscalAMX_CODIGO: TStringField;
    CdsNotaFiscalNF_OBSG1: TStringField;
    CdsNotaFiscalNF_OBSG2: TStringField;
    CdsNotaFiscalNF_OBSG3: TStringField;
    CdsNotaFiscalNF_OBSG4: TStringField;
    CdsNotaFiscalNF_OBSG5: TStringField;
    CdsNotaFiscalNF_OBSG6: TStringField;
    CdsNotaFiscalNF_TP_DESCTO: TStringField;
    CdsNotaFiscalNF_PC_DESCTO1: TFMTBCdField;
    CdsNotaFiscalNF_PC_DESCTO2: TFMTBCdField;
    CdsNotaFiscalNF_BASE_ISS: TFMTBCdField;
    CdsNotaFiscalNF_VALOR_ISS: TFMTBCdField;
    CdsNotaFiscalOPV_CODIGO: TIntegerField;
    SqlPrdManutAMX_CODIGO: TStringField;
    SqlPrdManutFOR_CODIGO: TStringField;
    SqlPrdManutPES_IPI: TFMTBCdField;
    CdsPrdManutAMX_CODIGO: TStringField;
    CdsPrdManutFOR_CODIGO: TStringField;
    CdsPrdManutPES_IPI: TFMTBCdField;
    SqlNFitemNF_REGISTRO: TIntegerField;
    SqlNFitemNF_IT_NOTANUMER: TStringField;
    SqlNFitemPED_CODIGO: TStringField;
    SqlNFitemNF_QTDE: TFMTBCdField;
    SqlNFitemNF_IPIALIQ: TFMTBCdField;
    SqlNFitemIPI_CODIGO: TStringField;
    SqlNFitemNF_VLSUBST: TFMTBCdField;
    SqlNFitemNF_IDESCTO1: TFMTBCdField;
    SqlNFitemNF_IDESCTO2: TFMTBCdField;
    SqlNFitemEMP_CODIGO: TStringField;
    SqlNFitemNF_ICMSALIQ: TFMTBCdField;
    SqlNFitemNF_PMATPRIMA: TFMTBCdField;
    CdsNFitemNF_REGISTRO: TIntegerField;
    CdsNFitemNF_IT_NOTANUMER: TStringField;
    CdsNFitemPED_CODIGO: TStringField;
    CdsNFitemNF_QTDE: TFMTBCdField;
    CdsNFitemNF_IPIALIQ: TFMTBCdField;
    CdsNFitemIPI_CODIGO: TStringField;
    CdsNFitemNF_VLSUBST: TFMTBCdField;
    CdsNFitemNF_IDESCTO1: TFMTBCdField;
    CdsNFitemNF_IDESCTO2: TFMTBCdField;
    CdsNFitemEMP_CODIGO: TStringField;
    CdsNFitemNF_ICMSALIQ: TFMTBCdField;
    CdsNFitemNF_PMATPRIMA: TFMTBCdField;
    SqlParametrosPMT_BAIXA_EST_AXF: TStringField;
    CdsParametrosPMT_BAIXA_EST_AXF: TStringField;
    SqlParametrosPMT_QTDE_DEC_PED: TIntegerField;
    CdsParametrosPMT_QTDE_DEC_PED: TIntegerField;
    SqlCentroCustoCEC_RATEIO: TStringField;
    CdsCentroCustoCEC_RATEIO: TStringField;
    SqlParametrosPMT_OPS_CONCLUIR: TStringField;
    CdsParametrosPMT_OPS_CONCLUIR: TStringField;
    SqlParametrosPMT_VAR_NOTA: TStringField;
    CdsParametrosPMT_VAR_NOTA: TStringField;
    SqlNFitemNF_COMISSAO: TFMTBCdField;
    SqlNFitemNF_QTDE_VAR1: TFMTBCdField;
    SqlNFitemNF_QTDE_VAR2: TFMTBCdField;
    SqlNFitemNF_QTDE_VAR3: TFMTBCdField;
    SqlNFitemNF_QTDE_VAR4: TFMTBCdField;
    SqlNFitemNF_QTDE_VAR5: TFMTBCdField;
    SqlNFitemNF_QTDE_VAR6: TFMTBCdField;
    SqlNFitemNF_QTDE_VAR7: TFMTBCdField;
    SqlNFitemNF_QTDE_VAR8: TFMTBCdField;
    CdsNFitemNF_COMISSAO: TFMTBCdField;
    CdsNFitemNF_QTDE_VAR1: TFMTBCdField;
    CdsNFitemNF_QTDE_VAR2: TFMTBCdField;
    CdsNFitemNF_QTDE_VAR3: TFMTBCdField;
    CdsNFitemNF_QTDE_VAR4: TFMTBCdField;
    CdsNFitemNF_QTDE_VAR5: TFMTBCdField;
    CdsNFitemNF_QTDE_VAR6: TFMTBCdField;
    CdsNFitemNF_QTDE_VAR7: TFMTBCdField;
    CdsNFitemNF_QTDE_VAR8: TFMTBCdField;
    SQLOcorrenciaCNABOCR_REGISTRO: TIntegerField;
    SQLOcorrenciaCNABOCR_COD_BANCO: TIntegerField;
    SQLOcorrenciaCNABOCR_COD_OCORRENCIA: TStringField;
    SQLOcorrenciaCNABOCR_DESCRICAO: TStringField;
    SQLOcorrenciaCNABOCR_TIPO_OCORRENCIA: TStringField;
    SQLOcorrenciaCNABOCR_COMANDO: TStringField;
    SqlParametrosPMT_FOR_DESCTO_CHEQ_PAG: TStringField;
    SqlParametrosPMT_FOR_DESCTO_DUPL_PAG: TStringField;
    CdsParametrosPMT_FOR_DESCTO_CHEQ_PAG: TStringField;
    CdsParametrosPMT_FOR_DESCTO_DUPL_PAG: TStringField;
    SqlParametrosPMT_ATULIZA_ESTOQUE: TStringField;
    CdsParametrosPMT_ATULIZA_ESTOQUE: TStringField;
    SqlParametrosPMT_QTDE_DEC_ENF: TIntegerField;
    CdsParametrosPMT_QTDE_DEC_ENF: TIntegerField;
    SqlParametrosPMT_QTDE_DEC_OCP: TIntegerField;
    CdsParametrosPMT_QTDE_DEC_OCP: TIntegerField;
    SqlNFitemNF_PRECO: TFMTBCdField;
    SqlNFitemNF_FLAG_ATUALIZA_ESTOQUE: TStringField;
    CdsNFitemNF_PRECO: TFMTBCdField;
    CdsNFitemNF_FLAG_ATUALIZA_ESTOQUE: TStringField;
    SqlParametrosPMT_BTN_ALT_IPI_ENF: TStringField;
    CdsParametrosPMT_BTN_ALT_IPI_ENF: TStringField;
    SqlParametrosSIN_MODE_ENF: TStringField;
    SqlParametrosSIN_SERIE_ENF: TStringField;
    SqlParametrosSIN_SUBSERIE_ENF: TStringField;
    CdsParametrosSIN_MODE_ENF: TStringField;
    CdsParametrosSIN_SERIE_ENF: TStringField;
    CdsParametrosSIN_SUBSERIE_ENF: TStringField;
    CdsParametrosPMT_PRODUTO_AGREGADO: TStringField;
    SqlParametrosPMT_PRODUTO_AGREGADO: TStringField;
    SqlParametrosPMT_PRESTACAO_SERVICO: TStringField;
    CdsParametrosPMT_PRESTACAO_SERVICO: TStringField;
    SqlParametrosPMT_MSG_ETIQUETASISTEMA: TStringField;
    CdsParametrosPMT_MSG_ETIQUETASISTEMA: TStringField;
    SqlParametrosPMT_GERAR_NUM_LOTE: TStringField;
    CdsParametrosPMT_GERAR_NUM_LOTE: TStringField;
    SqlParametrosPMT_RETIRA_VLR_ICMS_NF_E: TStringField;
    CdsParametrosPMT_RETIRA_VLR_ICMS_NF_E: TStringField;
    SqlParametrosPMT_ESTOQUE_CONVERSAO: TStringField;
    CdsParametrosPMT_ESTOQUE_CONVERSAO: TStringField;
    SqlParametrosPMT_MENSAGEM3: TStringField;
    CdsParametrosPMT_MENSAGEM3: TStringField;
    SqlParametrosPMT_MOD_BOLETO_BARRA: TIntegerField;
    CdsParametrosPMT_MOD_BOLETO_BARRA: TIntegerField;
    SqlICMSICM_DESCR_UF: TStringField;
    SqlICMSICM_COD_IBGE: TIntegerField;
    CdsICMSICM_DESCR_UF: TStringField;
    CdsICMSICM_COD_IBGE: TIntegerField;
    SqlCidade: tsqlquery;
    CdsCidade: TClientDataSet;
    DspCidade: TDataSetProvider;
    DsCidade: TDataSource;
    SqlCidadeCID_CODIGO: TIntegerField;
    SqlCidadeEMP_CODIGO: TIntegerField;
    SqlCidadeCID_COD_IBGE: TIntegerField;
    SqlCidadeCID_CIDADE: TStringField;
    SqlCidadeCID_ESTADO: TStringField;
    SqlCidadeCID_CEP_INICIO: TStringField;
    SqlCidadeCID_CEP_FINAL: TStringField;
    CdsCidadeCID_CODIGO: TIntegerField;
    CdsCidadeEMP_CODIGO: TIntegerField;
    CdsCidadeCID_COD_IBGE: TIntegerField;
    CdsCidadeCID_CIDADE: TStringField;
    CdsCidadeCID_ESTADO: TStringField;
    CdsCidadeCID_CEP_INICIO: TStringField;
    CdsCidadeCID_CEP_FINAL: TStringField;
    SQLSitTributaria: tsqlquery;
    CdSSitTributaria: TClientDataSet;
    DSPSitTributaria: TDataSetProvider;
    DSSitTributaria: TDataSource;
    SQLSitTributariaSTB_CODIGO: TIntegerField;
    SQLSitTributariaEMP_CODIGO: TIntegerField;
    SQLSitTributariaSTB_DATA_CADASTRO: TDateField;
    SQLSitTributariaSTB_DATA_ATUALIZA: TDateField;
    SQLSitTributariaSTB_TRIBUTACAO: TStringField;
    SQLSitTributariaSTB_DESCRICAO: TStringField;
    SQLSitTributariaSTB_SUBSTITUICAO: TStringField;
    SQLSitTributariaSTB_SUBSTITUICAO_DENTRO_UF: TStringField;
    CdSSitTributariaSTB_CODIGO: TIntegerField;
    CdSSitTributariaEMP_CODIGO: TIntegerField;
    CdSSitTributariaSTB_DATA_CADASTRO: TDateField;
    CdSSitTributariaSTB_DATA_ATUALIZA: TDateField;
    CdSSitTributariaSTB_TRIBUTACAO: TStringField;
    CdSSitTributariaSTB_DESCRICAO: TStringField;
    CdSSitTributariaSTB_SUBSTITUICAO: TStringField;
    CdSSitTributariaSTB_SUBSTITUICAO_DENTRO_UF: TStringField;
    SqlICMSICM_MVA: TFMTBCdField;
    CdsICMSICM_MVA: TFMTBCdField;
    SqlRegraCFOP: tsqlquery;
    CdSRegraCFOP: TClientDataSet;
    DSPRegraCFOP: TDataSetProvider;
    DSRegraCFOP: TDataSource;
    SqlICMSICM_SUB_TRI_SN: TStringField;
    CdsICMSICM_SUB_TRI_SN: TStringField;
    SqlICMSSOMA_MVA_SN: TStringField;
    CdsICMSSOMA_MVA_SN: TStringField;
    SqlParametrosPMT_CALCULARPM: TIntegerField;
    CdsParametrosPMT_CALCULARPM: TIntegerField;
    SqlICMSICMS_REDUZIDO: TFMTBCdField;
    CdsICMSICMS_REDUZIDO: TFMTBCdField;
    SQLMarkup: tsqlquery;
    DspMarkup: TDataSetProvider;
    CdsMarkup: TClientDataSet;
    DsMarkup: TDataSource;
    SQLMarkupMKP_PERC1: TFMTBCdField;
    SQLMarkupMKP_PERC2: TFMTBCdField;
    SQLMarkupMKP_PERC3: TFMTBCdField;
    SQLMarkupMKP_PERC4: TFMTBCdField;
    SQLMarkupMKP_PERC5: TFMTBCdField;
    SQLMarkupMKP_PERC6: TFMTBCdField;
    SQLMarkupMKP_COMIS1: TFMTBCdField;
    SQLMarkupMKP_COMIS2: TFMTBCdField;
    SQLMarkupMKP_COMIS3: TFMTBCdField;
    SQLMarkupMKP_COMIS4: TFMTBCdField;
    SQLMarkupMKP_COMIS5: TFMTBCdField;
    SQLMarkupMKP_COMIS6: TFMTBCdField;
    SQLMarkupMKP_TIPOCALCULO: TStringField;
    CdsMarkupMKP_PERC1: TFMTBCdField;
    CdsMarkupMKP_PERC2: TFMTBCdField;
    CdsMarkupMKP_PERC3: TFMTBCdField;
    CdsMarkupMKP_PERC4: TFMTBCdField;
    CdsMarkupMKP_PERC5: TFMTBCdField;
    CdsMarkupMKP_PERC6: TFMTBCdField;
    CdsMarkupMKP_COMIS1: TFMTBCdField;
    CdsMarkupMKP_COMIS2: TFMTBCdField;
    CdsMarkupMKP_COMIS3: TFMTBCdField;
    CdsMarkupMKP_COMIS4: TFMTBCdField;
    CdsMarkupMKP_COMIS5: TFMTBCdField;
    CdsMarkupMKP_COMIS6: TFMTBCdField;
    CdsMarkupMKP_TIPOCALCULO: TStringField;
    SQLMarkupEMP_CODIGO: TStringField;
    CdsMarkupEMP_CODIGO: TStringField;
    SQLMarkupMKP_CODIGO: TStringField;
    CdsMarkupMKP_CODIGO: TStringField;
    SqlParametrosPMT_COMIS_ESCALA: TStringField;
    CdsParametrosPMT_COMIS_ESCALA: TStringField;
    SqlParametrosPMT_CALCULARPV: TIntegerField;
    CdsParametrosPMT_CALCULARPV: TIntegerField;
    SQLMarkupLIN_CODIGO: TStringField;
    CdsMarkupLIN_CODIGO: TStringField;
    SqlNotaFiscalNF_ALIQCREDSIMPLES: TFMTBCdField;
    SqlNotaFiscalNF_VLCREDSIMPLES: TFMTBCdField;
    CdsNotaFiscalNF_ALIQCREDSIMPLES: TFMTBCdField;
    CdsNotaFiscalNF_VLCREDSIMPLES: TFMTBCdField;
    SqlNFitemNF_IPIVALOR: TFMTBCdField;
    SqlNFitemNF_ICMSVALOR: TFMTBCdField;
    SqlNFitemNF_IPIBASE: TFMTBCdField;
    SqlNFitemNF_ICMSBASE: TFMTBCdField;
    SqlNFitemNF_SUBTRIBASE: TFMTBCdField;
    SqlNFitemNF_ALIQSUBTRIB: TFMTBCdField;
    SqlNFitemNF_MVAPERC: TFMTBCdField;
    CdsNFitemNF_IPIVALOR: TFMTBCdField;
    CdsNFitemNF_ICMSVALOR: TFMTBCdField;
    CdsNFitemNF_IPIBASE: TFMTBCdField;
    CdsNFitemNF_ICMSBASE: TFMTBCdField;
    CdsNFitemNF_SUBTRIBASE: TFMTBCdField;
    CdsNFitemNF_ALIQSUBTRIB: TFMTBCdField;
    CdsNFitemNF_MVAPERC: TFMTBCdField;
    SQLUsaParametroUSP_RELATORIOS_P: TStringField;
    SQLUsaParametroUSP_VISUALIZA_PEDIDOS_P: TStringField;
    CdSUsaParametroUSP_RELATORIOS_P: TStringField;
    CdSUsaParametroUSP_VISUALIZA_PEDIDOS_P: TStringField;
    SQLUsuarioREP_CODIGO: TStringField;
    CdSUsuarioREP_CODIGO: TStringField;
    SQLUsaParametroUSP_ALTERA_COMISSAO: TStringField;
    CdSUsaParametroUSP_ALTERA_COMISSAO: TStringField;
    SqlParametrosPMT_ATIVA_NFSE: TStringField;
    CdsParametrosPMT_ATIVA_NFSE: TStringField;
    SqlParametrosPMT_AMX_ENTRADA: TStringField;
    SqlParametrosPMT_AMX_VENDA: TStringField;
    SqlParametrosPMT_AMX_FATURAMENTO: TStringField;
    CdsParametrosPMT_AMX_ENTRADA: TStringField;
    CdsParametrosPMT_AMX_VENDA: TStringField;
    CdsParametrosPMT_AMX_FATURAMENTO: TStringField;
    SqlParametrosPMT_TABNOME1: TStringField;
    SqlParametrosPMT_TABNOME2: TStringField;
    SqlParametrosPMT_TABNOME3: TStringField;
    SqlParametrosPMT_TABNOME4: TStringField;
    SqlParametrosPMT_TABNOME5: TStringField;
    SqlParametrosPMT_TABNOME6: TStringField;
    CdsParametrosPMT_TABNOME1: TStringField;
    CdsParametrosPMT_TABNOME2: TStringField;
    CdsParametrosPMT_TABNOME3: TStringField;
    CdsParametrosPMT_TABNOME4: TStringField;
    CdsParametrosPMT_TABNOME5: TStringField;
    CdsParametrosPMT_TABNOME6: TStringField;
    SqlNFitemPRD_DESCRI: TStringField;
    SqlNFitemNF_PRODUTO_AGREGADO: TStringField;
    SqlNFitemNF_HORA: TTimeField;
    SqlNFitemNTP_CFOP: TIntegerField;
    SqlNFitemNF_ICMSREDUCAOPERC: TFMTBCdField;
    SqlNFitemNF_ALIQDOSIMPLES: TFMTBCdField;
    SqlNFitemNF_CREDICMSDOSIMPLES: TFMTBCdField;
    SqlNFitemNF_IFRETE: TFMTBCdField;
    SqlNFitemNF_ISEGURO: TFMTBCdField;
    SqlNFitemNF_IDESP_ACES: TFMTBCdField;
    SqlNFitemNF_IBASEISSQN: TFMTBCdField;
    SqlNFitemNF_IALIQISSQN: TFMTBCdField;
    SqlNFitemNF_IVLISSQN: TFMTBCdField;
    SqlNFitemNF_CST_PIS: TFMTBCdField;
    SqlNFitemNF_BASE_PIS: TFMTBCdField;
    SqlNFitemNF_ALIQPIS: TFMTBCdField;
    SqlNFitemNF_VLPIS: TFMTBCdField;
    SqlNFitemNF_CST_COFINS: TFMTBCdField;
    SqlNFitemNF_BASE_COFINS: TFMTBCdField;
    SqlNFitemNF_ALIQCOFINS: TFMTBCdField;
    SqlNFitemNF_VLCOFINS: TFMTBCdField;
    SqlNFitemOPE_CODIGO: TStringField;
    SqlNFitemAMX_CODIGO_DESTINO: TStringField;
    SqlNFitemAMX_CODIGO_ORIGEM: TStringField;
    SqlNFitemUSU_CODIGO: TIntegerField;
    SqlNFitemPRD_CODIGO: TStringField;
    SqlNFitemPRF_REGISTRO: TIntegerField;
    SqlNFitemPRD_COMPL_DESCRI: TStringField;
    CdsNFitemPRD_DESCRI: TStringField;
    CdsNFitemNF_PRODUTO_AGREGADO: TStringField;
    CdsNFitemNF_HORA: TTimeField;
    CdsNFitemNTP_CFOP: TIntegerField;
    CdsNFitemNF_ICMSREDUCAOPERC: TFMTBCdField;
    CdsNFitemNF_ALIQDOSIMPLES: TFMTBCdField;
    CdsNFitemNF_CREDICMSDOSIMPLES: TFMTBCdField;
    CdsNFitemNF_IFRETE: TFMTBCdField;
    CdsNFitemNF_ISEGURO: TFMTBCdField;
    CdsNFitemNF_IDESP_ACES: TFMTBCdField;
    CdsNFitemNF_IBASEISSQN: TFMTBCdField;
    CdsNFitemNF_IALIQISSQN: TFMTBCdField;
    CdsNFitemNF_IVLISSQN: TFMTBCdField;
    CdsNFitemNF_CST_PIS: TFMTBCdField;
    CdsNFitemNF_BASE_PIS: TFMTBCdField;
    CdsNFitemNF_ALIQPIS: TFMTBCdField;
    CdsNFitemNF_VLPIS: TFMTBCdField;
    CdsNFitemNF_CST_COFINS: TFMTBCdField;
    CdsNFitemNF_BASE_COFINS: TFMTBCdField;
    CdsNFitemNF_ALIQCOFINS: TFMTBCdField;
    CdsNFitemNF_VLCOFINS: TFMTBCdField;
    CdsNFitemOPE_CODIGO: TStringField;
    CdsNFitemAMX_CODIGO_DESTINO: TStringField;
    CdsNFitemAMX_CODIGO_ORIGEM: TStringField;
    CdsNFitemUSU_CODIGO: TIntegerField;
    CdsNFitemPRD_CODIGO: TStringField;
    CdsNFitemPRF_REGISTRO: TIntegerField;
    CdsNFitemPRD_COMPL_DESCRI: TStringField;
    SqlParametrosPMT_AMX_PRODUCAO_ENTRADA: TStringField;
    SqlParametrosPMT_AMX_PRODUCAO_SAIDA: TStringField;
    CdsParametrosPMT_AMX_PRODUCAO_ENTRADA: TStringField;
    CdsParametrosPMT_AMX_PRODUCAO_SAIDA: TStringField;
    SQLUsaParametroUSP_KARDEX_LANC_ENTRADA: TStringField;
    SQLUsaParametroUSP_KARDEX_LANC_SAIDA: TStringField;
    SQLUsaParametroUSP_KARDEX_LANC_BALANCO: TStringField;
    CdSUsaParametroUSP_KARDEX_LANC_ENTRADA: TStringField;
    CdSUsaParametroUSP_KARDEX_LANC_SAIDA: TStringField;
    CdSUsaParametroUSP_KARDEX_LANC_BALANCO: TStringField;
    SqlParametrosPMT_PIS_ALIQ_PRESUMIDO: TFMTBCdField;
    SqlParametrosPMT_PIS_ALIQ_REAL: TFMTBCdField;
    SqlParametrosPMT_COFINS_ALIQ_PRESUMIDO: TFMTBCdField;
    SqlParametrosPMT_COFINS_ALIQ_REAL: TFMTBCdField;
    CdsParametrosPMT_PIS_ALIQ_PRESUMIDO: TFMTBCdField;
    CdsParametrosPMT_PIS_ALIQ_REAL: TFMTBCdField;
    CdsParametrosPMT_COFINS_ALIQ_PRESUMIDO: TFMTBCdField;
    CdsParametrosPMT_COFINS_ALIQ_REAL: TFMTBCdField;
    SQLMarkupMKP_AC_DC: TStringField;
    CdsMarkupMKP_AC_DC: TStringField;
    SqlRegraCFOPOPR_REGISTRO: TIntegerField;
    SqlRegraCFOPEMP_CODIGO: TStringField;
    SqlRegraCFOPIPI_CODIGO: TStringField;
    SqlRegraCFOPOPE_CODIGO_ORIGEM: TStringField;
    SqlRegraCFOPOPR_AC: TStringField;
    SqlRegraCFOPOPR_AL: TStringField;
    SqlRegraCFOPOPR_AP: TStringField;
    SqlRegraCFOPOPR_AM: TStringField;
    SqlRegraCFOPOPR_BA: TStringField;
    SqlRegraCFOPOPR_CE: TStringField;
    SqlRegraCFOPOPR_DF: TStringField;
    SqlRegraCFOPOPR_GO: TStringField;
    SqlRegraCFOPOPR_ES: TStringField;
    SqlRegraCFOPOPR_MA: TStringField;
    SqlRegraCFOPOPR_MT: TStringField;
    SqlRegraCFOPOPR_MS: TStringField;
    SqlRegraCFOPOPR_MG: TStringField;
    SqlRegraCFOPOPR_PA: TStringField;
    SqlRegraCFOPOPR_PB: TStringField;
    SqlRegraCFOPOPR_PR: TStringField;
    SqlRegraCFOPOPR_PE: TStringField;
    SqlRegraCFOPOPR_PI: TStringField;
    SqlRegraCFOPOPR_RJ: TStringField;
    SqlRegraCFOPOPR_RN: TStringField;
    SqlRegraCFOPOPR_RS: TStringField;
    SqlRegraCFOPOPR_RO: TStringField;
    SqlRegraCFOPOPR_RR: TStringField;
    SqlRegraCFOPOPR_SP: TStringField;
    SqlRegraCFOPOPR_SC: TStringField;
    SqlRegraCFOPOPR_SE: TStringField;
    SqlRegraCFOPOPR_TO: TStringField;
    SqlRegraCFOPOPE_DESTINO: TStringField;
    SqlRegraCFOPSTB_TRIBUTACAO: TStringField;
    SqlRegraCFOPOPR_PERCENTUAL_MVA: TFMTBCdField;
    SqlRegraCFOPDATA_CADASTRO: TDateField;
    SqlRegraCFOPDATA_ALTERACAO: TDateField;
    SqlRegraCFOPOPR_ATIVO: TStringField;
    CdSRegraCFOPOPR_REGISTRO: TIntegerField;
    CdSRegraCFOPEMP_CODIGO: TStringField;
    CdSRegraCFOPIPI_CODIGO: TStringField;
    CdSRegraCFOPOPE_CODIGO_ORIGEM: TStringField;
    CdSRegraCFOPOPR_AC: TStringField;
    CdSRegraCFOPOPR_AL: TStringField;
    CdSRegraCFOPOPR_AP: TStringField;
    CdSRegraCFOPOPR_AM: TStringField;
    CdSRegraCFOPOPR_BA: TStringField;
    CdSRegraCFOPOPR_CE: TStringField;
    CdSRegraCFOPOPR_DF: TStringField;
    CdSRegraCFOPOPR_GO: TStringField;
    CdSRegraCFOPOPR_ES: TStringField;
    CdSRegraCFOPOPR_MA: TStringField;
    CdSRegraCFOPOPR_MT: TStringField;
    CdSRegraCFOPOPR_MS: TStringField;
    CdSRegraCFOPOPR_MG: TStringField;
    CdSRegraCFOPOPR_PA: TStringField;
    CdSRegraCFOPOPR_PB: TStringField;
    CdSRegraCFOPOPR_PR: TStringField;
    CdSRegraCFOPOPR_PE: TStringField;
    CdSRegraCFOPOPR_PI: TStringField;
    CdSRegraCFOPOPR_RJ: TStringField;
    CdSRegraCFOPOPR_RN: TStringField;
    CdSRegraCFOPOPR_RS: TStringField;
    CdSRegraCFOPOPR_RO: TStringField;
    CdSRegraCFOPOPR_RR: TStringField;
    CdSRegraCFOPOPR_SP: TStringField;
    CdSRegraCFOPOPR_SC: TStringField;
    CdSRegraCFOPOPR_SE: TStringField;
    CdSRegraCFOPOPR_TO: TStringField;
    CdSRegraCFOPOPE_DESTINO: TStringField;
    CdSRegraCFOPSTB_TRIBUTACAO: TStringField;
    CdSRegraCFOPOPR_PERCENTUAL_MVA: TFMTBCdField;
    CdSRegraCFOPDATA_CADASTRO: TDateField;
    CdSRegraCFOPDATA_ALTERACAO: TDateField;
    CdSRegraCFOPOPR_ATIVO: TStringField;
    SqlRegraCFOPOPR_EX: TStringField;
    CdSRegraCFOPOPR_EX: TStringField;
    SQLUsaParametroUSP_LIBERA_ANALISE_CREDITO: TStringField;
    SQLUsaParametroUSP_LIBERA_ANALISE_PRODUCAO: TStringField;
    CdSUsaParametroUSP_LIBERA_ANALISE_CREDITO: TStringField;
    CdSUsaParametroUSP_LIBERA_ANALISE_PRODUCAO: TStringField;
    SqlParametrosPMT_OPV_CODIGO_VENDA_PADRAO: TIntegerField;
    SqlParametrosPMT_UTILIZA_ANALISE_CREDITO: TStringField;
    SqlParametrosPMT_UTILIZA_ANALISE_PRODUCAO: TStringField;
    CdsParametrosPMT_OPV_CODIGO_VENDA_PADRAO: TIntegerField;
    CdsParametrosPMT_UTILIZA_ANALISE_CREDITO: TStringField;
    CdsParametrosPMT_UTILIZA_ANALISE_PRODUCAO: TStringField;
    SqlParametrosPMT_COMP_ITEM_PEDIDO_IT_NF: TStringField;
    CdsParametrosPMT_COMP_ITEM_PEDIDO_IT_NF: TStringField;
    SqlParametrosPMT_PROD_PCP_ENDERECO: TStringField;
    CdsParametrosPMT_PROD_PCP_ENDERECO: TStringField;
    SqlParametrosPMT_VENDA_LIBERADA_CAD_PRODUTO: TStringField;
    SqlParametrosPMT_VENDA_CLI_SEM_CAD: TStringField;
    CdsParametrosPMT_VENDA_LIBERADA_CAD_PRODUTO: TStringField;
    CdsParametrosPMT_VENDA_CLI_SEM_CAD: TStringField;
    SqlParametrosPMT_VENDA_GRADE: TStringField;
    CdsParametrosPMT_VENDA_GRADE: TStringField;
    SQLUsaParametroUSP_VENDA_CADASTRO_PRODUTO: TStringField;
    SQLUsaParametroUSP_VENDA_REAJUSTE: TStringField;
    CdSUsaParametroUSP_VENDA_CADASTRO_PRODUTO: TStringField;
    CdSUsaParametroUSP_VENDA_REAJUSTE: TStringField;
    SQLUsaParametroUSP_VISUALIZA_CLIENTES_P: TStringField;
    CdSUsaParametroUSP_VISUALIZA_CLIENTES_P: TStringField;
    SqlParametrosPMT_SEQUENCIA_UNICA_PEDIDO: TStringField;
    CdsParametrosPMT_SEQUENCIA_UNICA_PEDIDO: TStringField;
    SqlParametrosPMT_PEDIDO_COMPRA_MSG: TMemoField;
    CdsParametrosPMT_PEDIDO_COMPRA_MSG: TMemoField;
    SqlParametrosPMT_MENSAGEM_PADRAO_ORCAMENTO: TMemoField;
    CdsParametrosPMT_MENSAGEM_PADRAO_ORCAMENTO: TMemoField;
    SQLUsaParametroUSP_VISUALIZA_ANALISE_CREDITO_: TStringField;
    CdSUsaParametroUSP_VISUALIZA_ANALISE_CREDITO_: TStringField;
    SqlParametrosPMT_VENDA_MSG_ATRASO_FIN: TStringField;
    CdsParametrosPMT_VENDA_MSG_ATRASO_FIN: TStringField;
    SqlICMSICMS_PROD_IMPORTADO: TFMTBCdField;
    CdsICMSICMS_PROD_IMPORTADO: TFMTBCdField;
    SqlParametrosPMT_FAT_MSG_PEDIDO_VEND: TStringField;
    CdsParametrosPMT_FAT_MSG_PEDIDO_VEND: TStringField;
    SQLUsaParametroUSP_ALTERA_CUSTOS_PRODUTO: TStringField;
    CdSUsaParametroUSP_ALTERA_CUSTOS_PRODUTO: TStringField;
    SQLUsaParametroUSP_VISUALIZA_MARKUP_PEDIDO: TStringField;
    CdSUsaParametroUSP_VISUALIZA_MARKUP_PEDIDO: TStringField;
    SqlParametrosPMT_BLOQ_VENDA_PCM: TStringField;
    CdsParametrosPMT_BLOQ_VENDA_PCM: TStringField;
    SqlParametrosPMT_REFERENCIA_PROVISORIA: TStringField;
    CdsParametrosPMT_REFERENCIA_PROVISORIA: TStringField;
    SQLUsaParametroUSP_VENDA_TRANSFERENCIA: TStringField;
    CdSUsaParametroUSP_VENDA_TRANSFERENCIA: TStringField;
    SqlParametrosPMT_COMP_ITEM_PEDIDO: TStringField;
    CdsParametrosPMT_COMP_ITEM_PEDIDO: TStringField;
    SqlRegraCFOPOPR_PERCENTUAL_MVA_SIMPLES: TFMTBCdField;
    CdSRegraCFOPOPR_PERCENTUAL_MVA_SIMPLES: TFMTBCdField;
    SQLPerfilRateio: tsqlquery;
    CdsPerfilRateio: TClientDataSet;
    DSPPerfilRateio: TDataSetProvider;
    dsPerfilRateio: TDataSource;
    SQLPerfilRateioPCXPF_REGISTRO: TIntegerField;
    SQLPerfilRateioEMP_CODIGO: TStringField;
    SQLPerfilRateioPCXPF_DATA_INICIAL: TDateField;
    SQLPerfilRateioPCXPF_DATA_FINAL: TDateField;
    CdsPerfilRateioPCXPF_REGISTRO: TIntegerField;
    CdsPerfilRateioEMP_CODIGO: TStringField;
    CdsPerfilRateioPCXPF_DATA_INICIAL: TDateField;
    CdsPerfilRateioPCXPF_DATA_FINAL: TDateField;
    CdsParametrosPMT_B2B: TStringField;
    SqlParametrosPMT_B2B: TStringField;
    SqlRegraCFOPOPR_ALIQ_ST_UF: TFMTBCdField;
    CdSRegraCFOPOPR_ALIQ_ST_UF: TFMTBCdField;
    SqlRegraCFOPOPR_REDUCAO_BASE_ST: TFMTBCdField;
    CdSRegraCFOPOPR_REDUCAO_BASE_ST: TFMTBCdField;
    SqlPrdManutPRD_REFER: TStringField;
    CdsPrdManutPRD_REFER: TStringField;
    SqlNFitemPRD_REFER: TStringField;
    CdsNFitemPRD_REFER: TStringField;
    SQLChequeStatus: tsqlquery;
    DSPChequeStatus: TDataSetProvider;
    CdsChequeStatus: TClientDataSet;
    dsChequeStatus: TDataSource;
    SQLChequeStatusCHS_REGISTRO: TIntegerField;
    SQLChequeStatusEMP_CODIGO: TStringField;
    SQLChequeStatusCHS_DESCRICAO: TStringField;
    SQLChequeStatusCHS_COR: TStringField;
    CdsChequeStatusCHS_REGISTRO: TIntegerField;
    CdsChequeStatusEMP_CODIGO: TStringField;
    CdsChequeStatusCHS_DESCRICAO: TStringField;
    CdsChequeStatusCHS_COR: TStringField;
    SqlParametrosPMT_CERTIFICADO_DIGITAL: TStringField;
    CdsParametrosPMT_CERTIFICADO_DIGITAL: TStringField;
    SqlParametrosPMT_FIN_HABILITA_CENTRO_C_AVANC: TStringField;
    CdsParametrosPMT_FIN_HABILITA_CENTRO_C_AVANC: TStringField;
    SqlParametrosPMT_CENTRO_CUSTO_OBRIGATORIO: TStringField;
    CdsParametrosPMT_CENTRO_CUSTO_OBRIGATORIO: TStringField;
    SqlProCaixaPCX_CODIGO: TStringField;
    SqlProCaixaPCX_DESCRI: TStringField;
    SqlProCaixaPCX_NIVEL: TStringField;
    SqlProCaixaPCX_INICIO: TSQLTimeStampField;
    SqlProCaixaPCX_FIM: TSQLTimeStampField;
    SqlProCaixaPCX_TERMINADO: TStringField;
    SqlProCaixaEMP_CODIGO: TStringField;
    CdsProCaixaPCX_CODIGO: TStringField;
    CdsProCaixaPCX_DESCRI: TStringField;
    CdsProCaixaPCX_NIVEL: TStringField;
    CdsProCaixaPCX_INICIO: TSQLTimeStampField;
    CdsProCaixaPCX_FIM: TSQLTimeStampField;
    CdsProCaixaPCX_TERMINADO: TStringField;
    CdsProCaixaEMP_CODIGO: TStringField;
    SqlParametrosPMT_VALOR_APROX_TRIB: TStringField;
    CdsParametrosPMT_VALOR_APROX_TRIB: TStringField;
    SqlParametrosPMT_OBRIGAR_GRADE_VENDA: TStringField;
    CdsParametrosPMT_OBRIGAR_GRADE_VENDA: TStringField;
    SqlParametrosPMT_OBRIGAR_DIRETIVA_VENDA: TStringField;
    SqlParametrosPMT_EMPRESA_PADRAO_BOLETO: TStringField;
    CdsParametrosPMT_OBRIGAR_DIRETIVA_VENDA: TStringField;
    CdsParametrosPMT_EMPRESA_PADRAO_BOLETO: TStringField;
    SqlParametrosPMT_DPL_ST_NA1D: TStringField;
    CdsParametrosPMT_DPL_ST_NA1D: TStringField;
    SqlParametrosPMT_HABILITA_TABELA_PRECOS: TStringField;
    CdsParametrosPMT_HABILITA_TABELA_PRECOS: TStringField;
    SQLUsaParametroUSP_ALTERA_TABELA_PRECOS: TStringField;
    CdSUsaParametroUSP_ALTERA_TABELA_PRECOS: TStringField;
    SqlParametrosPMT_UTILIZA_CODIGO_ORIG_VD_NF: TStringField;
    CdsParametrosPMT_UTILIZA_CODIGO_ORIG_VD_NF: TStringField;
    SqlParametrosPMT_CUSTO_BASE_PRODUCAO: TStringField;
    CdsParametrosPMT_CUSTO_BASE_PRODUCAO: TStringField;
    SqlParametrosPMT_CONS_VENDA_PEDDO_STAT: TStringField;
    CdsParametrosPMT_CONS_VENDA_PEDDO_STAT: TStringField;
    SqlParametrosPMT_FAT_CONFIRMA_PARCELA: TStringField;
    CdsParametrosPMT_FAT_CONFIRMA_PARCELA: TStringField;
    SqlParametrosPMT_PADRAO_PESQUISA_PROD: TStringField;
    CdsParametrosPMT_PADRAO_PESQUISA_PROD: TStringField;
    SqlParametrosPMT_PADRAO_EMP_CONSULTA: TStringField;
    CdsParametrosPMT_PADRAO_EMP_CONSULTA: TStringField;
    CdsParametrosPMT_FORM_DANFE: TStringField;
    SqlParametrosPMT_FORM_DANFE: TStringField;
    SqlParametrosPMT_MULTTAB: TStringField;
    CdsParametrosPMT_MULTTAB: TStringField;
    SqlParametrosPMT_OBRIGAR_DIRETIVA_VENDA_ABA: TStringField;
    CdsParametrosPMT_OBRIGAR_DIRETIVA_VENDA_ABA: TStringField;
    SqlParametrosPMT_USAR_SEQUENCIA_NFE_UNICA: TStringField;
    CdsParametrosPMT_USAR_SEQUENCIA_NFE_UNICA: TStringField;
    SqlParametrosPMT_EXIBIRMESIMPOSTOSPARANA: TStringField;
    CdsParametrosPMT_EXIBIRMESIMPOSTOSPARANA: TStringField;
    SqlICMSFCP_PERC: TFMTBCdField;
    CdsICMSFCP_PERC: TFMTBCdField;
    SqlParametrosPMT_COPARTICIPACAO: TStringField;
    CdsParametrosPMT_COPARTICIPACAO: TStringField;
    SqlParametrosPMT_CSTPISCOFINS: TStringField;
    CdsParametrosPMT_CSTPISCOFINS: TStringField;
    SqlConsulta: TSQLQuery;
    CdsParametrosFMT_PAD_REFER: TStringField;
    SqlParametrosFMT_PAD_REFER: TStringField;
    SQLUsaParametroUSP_USAPRAZODESABILITADO: TStringField;
    CDSUsaParametroUSP_USAPRAZODESABILITADO: TStringField;
    CdsParametrosPMT_CNPJ_CLIENTE_DUPLICADO: TStringField;
    SqlParametrosPMT_CNPJ_CLIENTE_DUPLICADO: TStringField;
    SqlParametrosPMT_VALOR_KIT: TStringField;
    CdsParametrosPMT_VALOR_KIT: TStringField;
    CDSAcessosUsuarioUSA_RELATORIO: TStringField;
    SQLAcessosUsuarioUSA_RELATORIO: TStringField;
    SqlParametrosPMT_ITENS_KIT: TStringField;
    CdsParametrosPMT_ITENS_KIT: TStringField;
    SqlParametrosPMT_TRIB_NF: TStringField;
    CdsParametrosPMT_TRIB_NF: TStringField;
    SqlParametrosPMT_CONTROLA_KIT: TStringField;
    CdsParametrosPMT_CONTROLA_KIT: TStringField;
    SqlParametrosPMT_PAGAR_COMISSAO_VERBA: TStringField;
    CdsParametrosPMT_PAGAR_COMISSAO_VERBA: TStringField;
    SqlParametrosPMT_PERC_COMISSAO1: TFMTBCDField;
    SqlParametrosPMT_PERC_VENDA1: TFMTBCDField;
    SqlParametrosPMT_PERC_COMISSAO2: TFMTBCDField;
    SqlParametrosPMT_PERC_VENDA2: TFMTBCDField;
    SqlParametrosPMT_PERC_COMISSAO3: TFMTBCDField;
    SqlParametrosPMT_PERC_VENDA3: TFMTBCDField;
    SqlParametrosPMT_PERC_COMISSAO4: TFMTBCDField;
    SqlParametrosPMT_PERC_VENDA4: TFMTBCDField;
    SqlParametrosPMT_PERC_COMISSAO5: TFMTBCDField;
    SqlParametrosPMT_PERC_VENDA5: TFMTBCDField;
    SqlParametrosPMT_PERC_COMISSAO6: TFMTBCDField;
    SqlParametrosPMT_PERC_VENDA6: TFMTBCDField;
    CdsParametrosPMT_PERC_COMISSAO1: TFMTBCDField;
    CdsParametrosPMT_PERC_VENDA1: TFMTBCDField;
    CdsParametrosPMT_PERC_COMISSAO2: TFMTBCDField;
    CdsParametrosPMT_PERC_VENDA2: TFMTBCDField;
    CdsParametrosPMT_PERC_COMISSAO3: TFMTBCDField;
    CdsParametrosPMT_PERC_VENDA3: TFMTBCDField;
    CdsParametrosPMT_PERC_COMISSAO4: TFMTBCDField;
    CdsParametrosPMT_PERC_VENDA4: TFMTBCDField;
    CdsParametrosPMT_PERC_COMISSAO5: TFMTBCDField;
    CdsParametrosPMT_PERC_VENDA5: TFMTBCDField;
    CdsParametrosPMT_PERC_COMISSAO6: TFMTBCDField;
    CdsParametrosPMT_PERC_VENDA6: TFMTBCDField;
    SqlParametrosPMT_COMIS_SIMPLES: TStringField;
    CdsParametrosPMT_COMIS_SIMPLES: TStringField;
    SQLUsaParametroLIBERA_COLABORADOR: TStringField;
    CDSUsaParametroLIBERA_COLABORADOR: TStringField;
    CDSUsaParametroPERMITE_VER_CUSTO: TStringField;
    SQLUsaParametroPERMITE_VER_CUSTO: TStringField;
    CDSUsaParametroPERMITE_VENDA_ABAIXO_CUSTO: TStringField;
    SQLUsaParametroPERMITE_VENDA_ABAIXO_CUSTO: TStringField;
    SqlParametrosPMT_MULTTAB_SCRIPT: TStringField;
    SqlParametrosPMT_DIGITACAO_GRID_VENDAS: TStringField;
    CdsParametrosPMT_MULTTAB_SCRIPT: TStringField;
    CdsParametrosPMT_DIGITACAO_GRID_VENDAS: TStringField;
    SQLUsuarioUSU_EMAIL_SENHA: TStringField;
    CDSUsuarioUSU_EMAIL_SENHA: TStringField;
    SqlParametrosPMT_PRODUZIR_MAIS_OP: TStringField;
    CdsParametrosPMT_PRODUZIR_MAIS_OP: TStringField;
    SqlParametrosESP_NOME: TStringField;
    SqlParametrosESP_PADROES: TStringField;
    SqlParametrosESP_COL1: TStringField;
    SqlParametrosESP_COL2: TStringField;
    SqlParametrosESP_COL3: TStringField;
    SqlParametrosESP_COL4: TStringField;
    SqlParametrosESP_COL5: TStringField;
    SqlParametrosESP_COL6: TStringField;
    SqlParametrosESP_COL7: TStringField;
    CdsParametrosESP_NOME: TStringField;
    CdsParametrosESP_PADROES: TStringField;
    CdsParametrosESP_COL1: TStringField;
    CdsParametrosESP_COL2: TStringField;
    CdsParametrosESP_COL3: TStringField;
    CdsParametrosESP_COL4: TStringField;
    CdsParametrosESP_COL5: TStringField;
    CdsParametrosESP_COL6: TStringField;
    CdsParametrosESP_COL7: TStringField;
    CdsParametrosPMT_VARPERC_MEDIDA_PRODUTO: TFMTBCDField;
    CdsParametrosPMT_HABILITA_MEDIDAPRD: TStringField;
    SqlParametrosPMT_VARPERC_MEDIDA_PRODUTO: TFMTBCDField;
    SqlParametrosPMT_HABILITA_MEDIDAPRD: TStringField;
    CdsParametrosPMT_NCM_UND_ITEM_PROV: TStringField;
    SqlParametrosPMT_NCM_UND_ITEM_PROV: TStringField;
    dsEmpUsu: TDataSource;
    cdsEmpUsu: TClientDataSet;
    dspEmpUsu: TDataSetProvider;
    qEmpUsu: TSQLQuery;
    cdsEmpUsuEMP_CODIGO: TStringField;
    cdsEmpUsuusu_codigo: TIntegerField;
    qEmpUsuEMP_CODIGO: TStringField;
    qEmpUsuusu_codigo: TIntegerField;
    CdsParametrosPMT_NUMDIAS_ORC: TIntegerField;
    SqlParametrosPMT_NUMDIAS_ORC: TIntegerField;
    CdsParametrosPMT_HABILITAR_CODORIGINAL: TStringField;
    SqlParametrosPMT_HABILITAR_CODORIGINAL: TStringField;
    CdsParametrosPMT_PRAZO_ITEM: TStringField;
    SqlParametrosPMT_PRAZO_ITEM: TStringField;
    CDSUsaParametroUSP_VIZUALIZAR_COMISSOES: TStringField;
    SQLUsaParametroUSP_VIZUALIZAR_COMISSOES: TStringField;
    CdsParametrospmt_Pedido_Doacao: TStringField;
    SqlParametrospmt_Pedido_Doacao: TStringField;
    CdsParametrosEMP_HAB_NFCE: TStringField;
    SqlParametrosEMP_HAB_NFCE: TStringField;
    CdsParametrosPMT_CALCULO_MARGEM: TIntegerField;
    SqlParametrosPMT_CALCULO_MARGEM: TIntegerField;
    CdsParametrosPMT_MEM_PESQPED: TStringField;
    SqlParametrosPMT_MEM_PESQPED: TStringField;
    CDSUsaParametrousp_permite_excluir_itens: TStringField;
    SQLUsaParametrousp_permite_excluir_itens: TStringField;
    CdsParametrosPMT_FATURAR_PENDENCIAS: TStringField;
    SqlParametrosPMT_FATURAR_PENDENCIAS: TStringField;
    SQLUsaParametroUSP_INCLUIR_CLIENTES: TStringField;
    SQLUsaParametroUSP_ALTERAR_CLIENTES: TStringField;
    CDSUsaParametroUSP_INCLUIR_CLIENTES: TStringField;
    CDSUsaParametroUSP_ALTERAR_CLIENTES: TStringField;
    CdsParametrosPMT_OP_SEMAPONTA: TStringField;
    SqlParametrosPMT_OP_SEMAPONTA: TStringField;
    CdsParametrosPMT_NAO_AUTO_PVENDA: TStringField;
    SqlParametrosPMT_NAO_AUTO_PVENDA: TStringField;
    CdsParametrosPMT_RESPONSAVEL_TECNICO: TStringField;
    SqlParametrosPMT_RESPONSAVEL_TECNICO: TStringField;
    CDSUsaParametroUSP_USA_CREDITO_CC: TStringField;
    SQLUsaParametroUSP_USA_CREDITO_CC: TStringField;
    CdsParametrosPMT_LIBERAR_FATURA: TStringField;
    SqlParametrosPMT_LIBERAR_FATURA: TStringField;
    CdsParametrosPMT_LIBERAR_EXPEDICAO: TStringField;
    SqlParametrosPMT_LIBERAR_EXPEDICAO: TStringField;
    CdsParametrosPMT_NAO_ATUALIZAR_BANCO: TStringField;
    SqlParametrosPMT_NAO_ATUALIZAR_BANCO: TStringField;
    CdsParametrosPMT_ORDEM_CODFORN: TStringField;
    CdsParametrosPMT_ORDEM_DESCFORN: TStringField;
    SqlParametrosPMT_ORDEM_CODFORN: TStringField;
    SqlParametrosPMT_ORDEM_DESCFORN: TStringField;
    CdsParametrosPMT_EXPEDICAO_MULTIEMPRESA: TStringField;
    SqlParametrosPMT_EXPEDICAO_MULTIEMPRESA: TStringField;
    CDSUsaParametroUSP_ESTORNAEXPEDICAO: TStringField;
    SQLUsaParametroUSP_ESTORNAEXPEDICAO: TStringField;
    CdsParametrosPMT_FATURA_MULTIEMPRESA: TStringField;
    SqlParametrosPMT_FATURA_MULTIEMPRESA: TStringField;
    CdsParametrosPMT_HAB_TERMICO: TStringField;
    SqlParametrosPMT_HAB_TERMICO: TStringField;
    CdsParametrosPMT_ORC_GERAPEDIDO: TStringField;
    CdsParametrosPMT_ORC_GERAACORDO: TStringField;
    SqlParametrosPMT_ORC_GERAPEDIDO: TStringField;
    SqlParametrosPMT_ORC_GERAACORDO: TStringField;
    CDSUsaParametroUSP_TRANSFERENCIATITULOS: TStringField;
    SQLUsaParametroUSP_TRANSFERENCIATITULOS: TStringField;
    CdsParametrosPMT_ATUALIZAR_CLIENTE: TStringField;
    SqlParametrosPMT_ATUALIZAR_CLIENTE: TStringField;
    CDSUsaParametroUSP_ABRICHAMADO: TStringField;
    SQLUsaParametroUSP_ABRICHAMADO: TStringField;
    CdsParametrosPMT_RETIRAR_ICMS_BASECOFINSPIS: TStringField;
    SqlParametrosPMT_RETIRAR_ICMS_BASECOFINSPIS: TStringField;
    CdsParametrosPMT_ATIVAR_PPAC: TStringField;
    SqlParametrosPMT_ATIVAR_PPAC: TStringField;
    CDSUsaParametroUSP_DASH_VENDAS: TStringField;
    CDSUsaParametroUSP_DASH_FINANCEIRO: TStringField;
    SQLUsaParametroUSP_DASH_VENDAS: TStringField;
    SQLUsaParametroUSP_DASH_FINANCEIRO: TStringField;
    CDSUsaParametroUSP_DASH_NAO_ABRIR: TStringField;
    SQLUsaParametroUSP_DASH_NAO_ABRIR: TStringField;
    CdsParametrosPMT_ICMS_CUSTOENTRADA: TStringField;
    CdsParametrosPMT_PIS_CUSTOENTRADA: TStringField;
    SqlParametrosPMT_ICMS_CUSTOENTRADA: TStringField;
    SqlParametrosPMT_PIS_CUSTOENTRADA: TStringField;
    CdsParametrosPMT_INCLUIRRAPIDO: TStringField;
    SqlParametrosPMT_INCLUIRRAPIDO: TStringField;
    CDSUsaParametroUSP_ALTERA_FORMA_PAG_FAT: TStringField;
    SQLUsaParametroUSP_ALTERA_FORMA_PAG_FAT: TStringField;
    CdsParametrospmt_CaminhoFoto: TStringField;
    SqlParametrospmt_CaminhoFoto: TStringField;
    CDSUsaParametroUSP_APROVAR_PAG: TStringField;
    CDSUsaParametroUSP_REPROVAR_PAG: TStringField;
    CDSUsaParametroUSP_APROVAR_EST: TStringField;
    CDSUsaParametroUSP_REPROVAR_EST: TStringField;
    CDSUsaParametroUSP_APONTAR: TStringField;
    SQLUsaParametroUSP_APROVAR_PAG: TStringField;
    SQLUsaParametroUSP_REPROVAR_PAG: TStringField;
    SQLUsaParametroUSP_APROVAR_EST: TStringField;
    SQLUsaParametroUSP_REPROVAR_EST: TStringField;
    SQLUsaParametroUSP_APONTAR: TStringField;
    CdsParametrosPMT_CONTROLE_CONTASPAGAR: TStringField;
    SqlParametrosPMT_CONTROLE_CONTASPAGAR: TStringField;
    CDSUsaParametroUSP_APONTAR_EST: TStringField;
    SQLUsaParametroUSP_APONTAR_EST: TStringField;
    CdsParametrosPMT_CAMINHO_PEDIN: TStringField;
    SqlParametrosPMT_CAMINHO_PEDIN: TStringField;
    CDSUsaParametroUSP_LIMITE_CONSULTA_ORCA: TIntegerField;
    SQLUsaParametroUSP_LIMITE_CONSULTA_ORCA: TIntegerField;
    CdsParametrosPMT_GERARSUBORDENS: TStringField;
    CdsParametrosPMT_HABILITAR_MRP: TStringField;
    CdsParametrosPMT_COMPOSICAOORDEM: TStringField;
    CdsParametrosPMT_COMSUMIRINSUMO: TStringField;
    SqlParametrosPMT_GERARSUBORDENS: TStringField;
    SqlParametrosPMT_HABILITAR_MRP: TStringField;
    SqlParametrosPMT_COMPOSICAOORDEM: TStringField;
    SqlParametrosPMT_COMSUMIRINSUMO: TStringField;
    CdsParametrosPMT_CUSTO_MATERIAPRIMA: TStringField;
    SqlParametrosPMT_CUSTO_MATERIAPRIMA: TStringField;
    CDSUsaParametroUSP_CUSTOPRODUCAO: TStringField;
    SQLUsaParametroUSP_CUSTOPRODUCAO: TStringField;
    CdsParametrosPMT_CUSTOOPERACAO: TStringField;
    CdsParametrosPMT_CUSTOCOLABORADOR: TStringField;
    CdsParametrosPMT_CUSTOEQUIPAMENTO: TStringField;
    SqlParametrosPMT_CUSTOOPERACAO: TStringField;
    SqlParametrosPMT_CUSTOCOLABORADOR: TStringField;
    SqlParametrosPMT_CUSTOEQUIPAMENTO: TStringField;
    CdsParametrosPMT_VINCULAR_VENDEDOR: TStringField;
    SqlParametrosPMT_VINCULAR_VENDEDOR: TStringField;
    CdsParametrosPMT_MULTIPLICADOR_P: TStringField;
    SqlParametrosPMT_MULTIPLICADOR_P: TStringField;
    CdsParametrosPMT_ENVASE_SBAIXA: TStringField;
    SqlParametrosPMT_ENVASE_SBAIXA: TStringField;
    CdsParametrosPMT_HABILITA_ENVASE: TStringField;
    SqlParametrosPMT_HABILITA_ENVASE: TStringField;
    CdsParametrosPMT_REL_ORDEMPRODUCAO: TStringField;
    SqlParametrosPMT_REL_ORDEMPRODUCAO: TStringField;
    CdsParametrosPMT_CLIENTE_PRODUCAO: TStringField;
    SqlParametrosPMT_CLIENTE_PRODUCAO: TStringField;
    CDSUsaParametroUSP_ALTERA_VENDEDOR: TStringField;
    SQLUsaParametroUSP_ALTERA_VENDEDOR: TStringField;
    CDSUsaParametroUSP_OPV_CODIGO: TIntegerField;
    CDSUsaParametroUSP_PERMITE_ALTER_TIPO: TStringField;
    SQLUsaParametroUSP_OPV_CODIGO: TIntegerField;
    SQLUsaParametroUSP_PERMITE_ALTER_TIPO: TStringField;
    dsTipoPedido: TDataSource;
    dspTipoPedido: TDataSetProvider;
    cdsTipoPedido: TClientDataSet;
    qTipoPedido: TSQLQuery;
    qTipoPedidoOPV_CODIGO: TIntegerField;
    qTipoPedidoOPV_DESCRICAO: TStringField;
    cdsTipoPedidoOPV_CODIGO: TIntegerField;
    cdsTipoPedidoOPV_DESCRICAO: TStringField;
    CdsParametrosPMT_HABILITAR_PRODU_ANTIGO: TStringField;
    SqlParametrosPMT_HABILITAR_PRODU_ANTIGO: TStringField;
    CdsParametrosPMT_INTEGRAR_PRD_SERV: TStringField;
    SqlParametrosPMT_INTEGRAR_PRD_SERV: TStringField;
    CDSUsaParametroUSP_ALTERA_DESCONTO_NOTA: TStringField;
    SQLUsaParametroUSP_ALTERA_DESCONTO_NOTA: TStringField;
   
    CdsParametrosPMT_CENTROCUSTO_REQUERIDO_PAGAR: TStringField;
    SqlParametrosPMT_CENTROCUSTO_REQUERIDO_PAGAR: TStringField;
    CdsParametrosPMT_DESCOSIDERAR_FATURA: TStringField;
    SqlParametrosPMT_DESCOSIDERAR_FATURA: TStringField;
    SqlParametrosPMT_VALOR_MINIMO_DO_SERVICO: TFMTBCDField;
    CdsParametrosPMT_VALOR_MINIMO_DO_SERVICO: TFMTBCDField;
    SqlParametrosPMT_AUTORIZA_EMPENHO: TStringField;
    CdsParametrosPMT_AUTORIZA_EMPENHO: TStringField;
    SqlParametrosPMT_LOTE_AUTOMATICO: TStringField;
    SqlParametrosPMT_LOTE_PREFIXO: TStringField;
    CdsParametrosPMT_LOTE_AUTOMATICO: TStringField;
    CdsParametrosPMT_LOTE_PREFIXO: TStringField;
    SqlParametrosPMT_LOTE_SEMENTE: TIntegerField;
    CdsParametrosPMT_LOTE_SEMENTE: TIntegerField;
    SqlProCaixaPCX_PARTICIPA_CUSTO_OPERACIONAL: TStringField;
    CdsProCaixaPCX_PARTICIPA_CUSTO_OPERACIONAL: TStringField;
    SQLUsaParametroUSP_AUTORIZA_COTACAO_MATERIAL: TStringField;
    SQLUsaParametroUSP_AUTORIZA_COMPRA_MATERIAL: TStringField;
    CDSUsaParametroUSP_AUTORIZA_COTACAO_MATERIAL: TStringField;
    CDSUsaParametroUSP_AUTORIZA_COMPRA_MATERIAL: TStringField;
    SqlParametrosPMT_PRD_REFER_SCO_REFER: TStringField;
    CdsParametrosPMT_PRD_REFER_SCO_REFER: TStringField;
    SQLUsaParametroUSP_REALIZA_COTACAO_MATERIAL: TStringField;
    CDSUsaParametroUSP_REALIZA_COTACAO_MATERIAL: TStringField;
    CDSUsaParametroUSP_HABILITA_COLUNA_NF: TStringField;

    SqlParametrosPMT_REL_DATA_EXPEDICAO: TStringField;
    CdsParametrosPMT_REL_DATA_EXPEDICAO: TStringField;
    SqlParametrosPMT_LIMITE_CREDITO_INICIAL: TFMTBCDField;
    CdsParametrosPMT_LIMITE_CREDITO_INICIAL: TFMTBCDField;
    SqlParametrosPMT_OS_CABECALHO: TStringField;
    SqlParametrosPMT_OS_REV: TStringField;
    SqlParametrosPMT_OS_DATA_EMISSAO: TDateField;
    CdsParametrosPMT_OS_CABECALHO: TStringField;
    CdsParametrosPMT_OS_REV: TStringField;
    CdsParametrosPMT_OS_DATA_EMISSAO: TDateField;    SQLUsuarioUSU_MENU01: TStringField;
    SQLUsuarioUSU_MENU02: TStringField;
    SQLUsuarioUSU_MENU03: TStringField;
    SQLUsuarioUSU_MENU04: TStringField;
    SQLUsuarioUSU_MENU05: TStringField;
    SQLUsuarioUSU_MENU06: TStringField;
    SQLUsuarioUSU_MENU07: TStringField;
    SQLUsuarioUSU_MENU08: TStringField;
    SQLUsuarioUSU_MENU09: TStringField;
    SQLUsuarioUSU_MENU010: TStringField;
    SQLUsuarioUSU_MENU011: TStringField;
    SQLUsuarioUSU_MENU012: TStringField;
    SQLUsuarioUSU_MENU013: TStringField;
    SQLUsuarioUSU_MENU014: TStringField;
    SQLUsuarioUSU_MENU015: TStringField;
    SQLUsuarioUSU_INCLUSAO: TStringField;
    SQLUsuarioUSU_ALTERACAO: TStringField;
    SQLUsuarioUSU_EXCLUSAO: TStringField;
    SQLUsuarioUSU_RELATORIO: TStringField;
    CDSUsuarioUSU_MENU01: TStringField;
    CDSUsuarioUSU_MENU02: TStringField;
    CDSUsuarioUSU_MENU03: TStringField;
    CDSUsuarioUSU_MENU04: TStringField;
    CDSUsuarioUSU_MENU05: TStringField;
    CDSUsuarioUSU_MENU06: TStringField;
    CDSUsuarioUSU_MENU07: TStringField;
    CDSUsuarioUSU_MENU08: TStringField;
    CDSUsuarioUSU_MENU09: TStringField;
    CDSUsuarioUSU_MENU010: TStringField;
    CDSUsuarioUSU_MENU011: TStringField;
    CDSUsuarioUSU_MENU012: TStringField;
    CDSUsuarioUSU_MENU013: TStringField;
    CDSUsuarioUSU_MENU014: TStringField;
    CDSUsuarioUSU_MENU015: TStringField;
    CDSUsuarioUSU_INCLUSAO: TStringField;
    CDSUsuarioUSU_ALTERACAO: TStringField;
    CDSUsuarioUSU_EXCLUSAO: TStringField;
    CDSUsuarioUSU_RELATORIO: TStringField;
    SQLUsaParametroUSP_FATURARSEMCONCLUSAO: TStringField;
    CDSUsaParametroUSP_FATURARSEMCONCLUSAO: TStringField;

    SqlParametrosPMT_AMX_ENVASE_SAIDA: TStringField;
    CdsParametrosPMT_AMX_ENVASE_SAIDA: TStringField;


    SQLUsaParametroUSP_VISUALIZA_ABA_VENDA: TStringField;

    CDSUsaParametroUSP_VISUALIZA_ABA_VENDA: TStringField;
    SqlParametrosPMT_DESCRICAO_99_OUTROS: TStringField;
    CdsParametrosPMT_DESCRICAO_99_OUTROS: TStringField;



    SqlParametrosPMT_MULTIPLAS_IE: TStringField;
    CdsParametrosPMT_MULTIPLAS_IE: TStringField;
    SQLUsaParametroUSP_DESABILITA_COPIAR_PEDIDO: TStringField;
    CDSUsaParametroUSP_DESABILITA_COPIAR_PEDIDO: TStringField;
    SqlParametrosPMT_LOTE_RASTREABILIDADE: TStringField;
    CdsParametrosPMT_LOTE_RASTREABILIDADE: TStringField;
    SqlParametrosPMT_REVISAO_RELATORIO: TStringField;
    CdsParametrosPMT_REVISAO_RELATORIO: TStringField;
    SqlParametrosPMT_HABILITAR_DIFAL: TStringField;
    CdsParametrosPMT_HABILITAR_DIFAL: TStringField;
    SQLUsaParametroUSP_VISUALIZA_PEDIDOS_CRM: TStringField;
    CDSUsaParametroUSP_VISUALIZA_PEDIDOS_CRM: TStringField;    
	SqlParametrosPMT_HABILITA_MEDIDAPRD_DESC1: TStringField;
    SqlParametrosPMT_HABILITA_MEDIDAPRD_DESC2: TStringField;
    SqlParametrosPMT_HABILITA_MEDIDAPRD_DESC3: TStringField;
    SqlParametrosPMT_HABILITA_MEDIDAPRD_DESC4: TStringField;
    CdsParametrosPMT_HABILITA_MEDIDAPRD_DESC1: TStringField;
    CdsParametrosPMT_HABILITA_MEDIDAPRD_DESC2: TStringField;
    CdsParametrosPMT_HABILITA_MEDIDAPRD_DESC3: TStringField;
    CdsParametrosPMT_HABILITA_MEDIDAPRD_DESC4: TStringField;
    qAlmoxUsu: TSQLQuery;
    dspAlmoxUsu: TDataSetProvider;
    cdsAlmoxUsu: TClientDataSet;
    dsAmoxUsu: TDataSource;
    qAlmoxUsuUSU_CODIGO: TIntegerField;
    qAlmoxUsuAMX_CODIGO: TStringField;
    cdsAlmoxUsuUSU_CODIGO: TIntegerField;
    cdsAlmoxUsuAMX_CODIGO: TStringField;
    SQLUsaParametroUSP_PEDIDO_ABAIXO_PRAZO_MINIMO: TStringField;
    CDSUsaParametroUSP_PEDIDO_ABAIXO_PRAZO_MINIMO: TStringField;
    SQLUsaParametroUSP_PROD_SEM_ALMOX: TStringField;
    CDSUsaParametroUSP_PROD_SEM_ALMOX: TStringField;
    SqlParametrosPMT_METODO_CALCULO_PRECO: TStringField;
    CdsParametrosPMT_METODO_CALCULO_PRECO: TStringField;
    SqlParametrosPMT_CAMINHO_IMAGEM_OP: TStringField;
    CdsParametrosPMT_CAMINHO_IMAGEM_OP: TStringField;
    SqlParametrosPMT_IMPORTA_ITENS_XML: TStringField;
    CdsParametrosPMT_IMPORTA_ITENS_XML: TStringField;
    SQLUsaParametroUSP_AUTORIZA_RETIRADA_MATERIAL: TStringField;
    SQLUsaParametroUSP_REALIZA_RETIRADA_MATERIAL: TStringField;
    CDSUsaParametroUSP_AUTORIZA_RETIRADA_MATERIAL: TStringField;
    CDSUsaParametroUSP_REALIZA_RETIRADA_MATERIAL: TStringField;
    SqlParametrosPMT_NAT_OPER_PADRAO: TStringField;
    CdsParametrosPMT_NAT_OPER_PADRAO: TStringField;
    SqlICMSICM_TIPO_CALCULO_DIFAL: TIntegerField;
    CdsICMSICM_TIPO_CALCULO_DIFAL: TIntegerField;
    SqlParametrosPMT_NAT_OPER_RETORNO: TStringField;
    CdsParametrosPMT_NAT_OPER_RETORNO: TStringField;
    SqlParametrosPMT_DESC_ORIGINAL_INDUST: TStringField;
    CdsParametrosPMT_DESC_ORIGINAL_INDUST: TStringField;
    SqlParametrosPMT_MSG_ORCAMENTO_INDUST: TStringField;
    CdsParametrosPMT_MSG_ORCAMENTO_INDUST: TStringField;
    SqlParametrosPMT_CENTRO_CUSTO_ENF: TStringField;
    CdsParametrosPMT_CENTRO_CUSTO_ENF: TStringField;
    SqlParametrosPMT_PEDIDO_IND_PLASTICA: TStringField;
    CdsParametrosPMT_PEDIDO_IND_PLASTICA: TStringField;
    SqlParametrosPMT_GRADE_MEDIDA1: TStringField;
    SqlParametrosPMT_GRADE_MEDIDA2: TStringField;
    SqlParametrosPMT_GRADE_MEDIDA3: TStringField;
    CdsParametrosPMT_GRADE_MEDIDA1: TStringField;
    CdsParametrosPMT_GRADE_MEDIDA2: TStringField;
    CdsParametrosPMT_GRADE_MEDIDA3: TStringField;
    SQLUsaParametroUSP_EXIBE_ABA_INFO_CLIENTE: TStringField;
    CDSUsaParametroUSP_EXIBE_ABA_INFO_CLIENTE: TStringField;
    SqlParametrosPMT_ENF_CHK_INDUSTRIALIZACAO: TStringField;
    CdsParametrosPMT_ENF_CHK_INDUSTRIALIZACAO: TStringField;
    SqlParametrosPMT_NF_ESPECIE: TStringField;
    CdsParametrosPMT_NF_ESPECIE: TStringField;
    SqlParametrosPMT_VINC_NF_ITEM_RETORNO: TStringField;
    CdsParametrosPMT_VINC_NF_ITEM_RETORNO: TStringField;
    SqlParametrosPMT_FATURA_SEM_PESO: TStringField;
    CdsParametrosPMT_FATURA_SEM_PESO: TStringField;
    SqlParametrosPMT_ATUALIZA_LOTE: TStringField;
    CdsParametrosPMT_ATUALIZA_LOTE: TStringField;
    SqlParametrosPMT_LANCA_PERC_MATERIA_PRIMA: TStringField;
    CdsParametrosPMT_LANCA_PERC_MATERIA_PRIMA: TStringField;
    SqlParametrosPMT_ALTERA_QUANT_ITEM_PED: TStringField;
    CdsParametrosPMT_ALTERA_QUANT_ITEM_PED: TStringField;
    SqlParametrosPMT_RETORNO_POR_CORES: TStringField;
    CdsParametrosPMT_RETORNO_POR_CORES: TStringField;
    SqlParametrosPMT_ENVIA_COPIA_PEDIDO_INDUST: TStringField;
    CdsParametrosPMT_ENVIA_COPIA_PEDIDO_INDUST: TStringField;
    SqlParametrosPMT_LANCA_CONTA_CORRENTE_VERBA: TStringField;
    CdsParametrosPMT_LANCA_CONTA_CORRENTE_VERBA: TStringField;
    SqlParametrosPMT_LANCA_CC_VERBA_FPG_REGISTRO: TIntegerField;
    CdsParametrosPMT_LANCA_CC_VERBA_FPG_REGISTRO: TIntegerField;
    SqlParametrosPMT_VENDA_CLI_SEM_CAD_OBRIG: TStringField;
    CdsParametrosPMT_VENDA_CLI_SEM_CAD_OBRIG: TStringField;
    SqlParametrosPMT_VALOR_DIFAL_PEDIDO: TStringField;
    CdsParametrosPMT_VALOR_DIFAL_PEDIDO: TStringField;
    SqlParametrosPMT_UTILIZA_CODIGO_ORIG_VD_PD: TStringField;
    CdsParametrosPMT_UTILIZA_CODIGO_ORIG_VD_PD: TStringField;
    SqlParametrosPMT_HABILITA_ICMS_PEDIDO: TStringField;
    CdsParametrosPMT_HABILITA_ICMS_PEDIDO: TStringField;
    SqlParametrosPMT_FAT_NF_VALOR_ORIGINAL: TStringField;
    SqlParametrosPMT_FAT_NF_FRETE_SEGURO_DESP: TStringField;
    SqlParametrosPMT_FAT_NF_VALOR_LIQ_DESC: TStringField;
    SqlParametrosPMT_FAT_NF_VALOR_ANTECIPADO: TStringField;
    SqlParametrosPMT_FAT_NF_SEM_VALOR_COMERCIAL: TStringField;
    SqlParametrosPMT_FAT_NF_VL_LIQ_VALOR_ANTECIP: TStringField;
    CdsParametrosPMT_FAT_NF_VALOR_ORIGINAL: TStringField;
    CdsParametrosPMT_FAT_NF_FRETE_SEGURO_DESP: TStringField;
    CdsParametrosPMT_FAT_NF_VALOR_LIQ_DESC: TStringField;
    CdsParametrosPMT_FAT_NF_VALOR_ANTECIPADO: TStringField;
    CdsParametrosPMT_FAT_NF_SEM_VALOR_COMERCIAL: TStringField;
    CdsParametrosPMT_FAT_NF_VL_LIQ_VALOR_ANTECIP: TStringField;
    SqlParametrosPMT_COMIS_SOBRE_DIF_VENDA_CUSTO: TStringField;
    CdsParametrosPMT_COMIS_SOBRE_DIF_VENDA_CUSTO: TStringField;
    SqlParametrosPMT_BAIXA_ESTOQUE_AVANCADO: TStringField;
    CdsParametrosPMT_BAIXA_ESTOQUE_AVANCADO: TStringField;
    SqlParametrosPMT_GER_AVANC_ANTECIP_DESC: TStringField;
    CdsParametrosPMT_GER_AVANC_ANTECIP_DESC: TStringField;
    SqlParametrosPMT_MENSAGEM_VENDAS: TStringField;
    CdsParametrosPMT_MENSAGEM_VENDAS: TStringField;
    SqlParametrosPMT_INFORMA_LOTE_NOTA_ENTRADA: TStringField;
    CdsParametrosPMT_INFORMA_LOTE_NOTA_ENTRADA: TStringField;
    SQLUsaParametroUSP_INCLUI_ITEM_PED_OP_GERADA: TStringField;
    CDSUsaParametroUSP_INCLUI_ITEM_PED_OP_GERADA: TStringField;
    SqlParametrosPMT_RESP_TECNICO_QUALIDADE: TStringField;
    CdsParametrosPMT_RESP_TECNICO_QUALIDADE: TStringField;
    SqlParametrosPMT_CRQ_RESP_TECNICO_QUALIDADE: TStringField;
    CdsParametrosPMT_CRQ_RESP_TECNICO_QUALIDADE: TStringField;
    SQLUsaParametroUSP_DASH_INTELIGENCIA: TStringField;
    CDSUsaParametroUSP_DASH_INTELIGENCIA: TStringField;
    SqlParametrosPMT_LAYOUT_BOLETO_FATURAMENTO: TStringField;
    CdsParametrosPMT_LAYOUT_BOLETO_FATURAMENTO: TStringField;
    SqlParametrosPMT_BLOQ_PED_VENDA_FAT_ATRASO: TStringField;
    SqlParametrosPMT_BLOQ_PED_VENDA_FAT_ATRASO_D: TIntegerField;
    CdsParametrosPMT_BLOQ_PED_VENDA_FAT_ATRASO: TStringField;
    CdsParametrosPMT_BLOQ_PED_VENDA_FAT_ATRASO_D: TIntegerField;
    SQLUsaParametroUSP_PERMITE_VENDA_FATURA_ATRASO: TStringField;
    CDSUsaParametroUSP_PERMITE_VENDA_FATURA_ATRASO: TStringField;
    SQLUsuarioUSU_ATIVO: TStringField;
    CDSUsuarioUSU_ATIVO: TStringField;
    CDSUsuarioUSUARIO_ATIVO: TStringField;
    procedure CdsICMSBeforeEdit(DataSet: TDataSet);
    procedure CdsCtAnaliseBeforeEdit(DataSet: TDataSet);
    procedure CdsProCaixaBeforeEdit(DataSet: TDataSet);
    procedure CdsChequesAfterInsert(DataSet: TDataSet);
    procedure CdsNotaFiscalAfterInsert(DataSet: TDataSet);
    procedure CdsParametrosBeforeEdit(DataSet: TDataSet);
    procedure CdsEveReprAfterEdit(DataSet: TDataSet);
    procedure CdsTribBeforeEdit(DataSet: TDataSet);
    procedure CdSAcessosUsuarioAfterInsert(DataSet: TDataSet);
    procedure CdSUsuarioAfterInsert(DataSet: TDataSet);
    procedure CdSUsuarioAfterEdit(DataSet: TDataSet);
    procedure CdSUsuarioCalcFields(DataSet: TDataSet);
    procedure CdSUsuarioReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure CdSUsaParametroAfterInsert(DataSet: TDataSet);
    procedure CdsTribBeforePost(DataSet: TDataSet);
    procedure CdsIssBeforePost(DataSet: TDataSet);
    procedure CdsICMSBeforePost(DataSet: TDataSet);
    procedure CdsEveReprBeforePost(DataSet: TDataSet);
    procedure CdSArquivoCNABAfterInsert(DataSet: TDataSet);
    procedure CdSArquivoCNABAfterScroll(DataSet: TDataSet);
    procedure CdsParametrosAfterInsert(DataSet: TDataSet);
    procedure CdSSitTributariaBeforeEdit(DataSet: TDataSet);
    procedure SITUACAO_TRIBUTARIArePost(DataSet: TDataSet);
    procedure CdsMarkupBeforePost(DataSet: TDataSet);
    procedure CdsMarkupBeforeEdit(DataSet: TDataSet);
    procedure CdsCidadeBeforeEdit(DataSet: TDataSet);
    procedure CdsPerfilRateioBeforeEdit(DataSet: TDataSet);
    procedure CdsPerfilRateioBeforePost(DataSet: TDataSet);
    procedure CdsChequeStatusBeforeEdit(DataSet: TDataSet);
    procedure CdsProCaixaAfterInsert(DataSet: TDataSet);
    procedure CdsCentroCustoBeforePost(DataSet: TDataSet);
    procedure CDSUsuarioAfterScroll(DataSet: TDataSet);
    procedure CdsParametrosPMT_REL_ORDEMPRODUCAOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure CdsParametrosPMT_REL_ORDEMPRODUCAOSetText(Sender: TField; const Text: string);
    procedure CdsParametrosPMT_LAYOUT_BOLETO_FATURAMENTOGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure CdsParametrosPMT_LAYOUT_BOLETO_FATURAMENTOSetText(Sender: TField;
      const Text: string);
    procedure DsUsuarioDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataCadastros1: TDataCadastros1;

implementation

uses DataCad, ICMS0000, CCT0001, PCX0000, Prmd0001, EVR0001,
   Trib0001,  RNOP0001, STR0002, STR0001, iniciodb,
  markup001, CID0001, uCadastroPerfilRateio, uChequeStatus, cnab0002, RWFUNC, Usuar001, UTEIS;

{$R *.dfm}

procedure TDataCadastros1.CdsICMSBeforeEdit(DataSet: TDataSet);
begin
  if Assigned(FormAliqICms) then
     FormAliqICms.DesabilitaBotoes;
end;

procedure TDataCadastros1.CdsCtAnaliseBeforeEdit(DataSet: TDataSet);
begin
  if Assigned(FormContAnalise) then
  FormContAnalise.DesabilitaBotoes;
end;

procedure TDataCadastros1.CdsProCaixaBeforeEdit(DataSet: TDataSet);
begin
   if Assigned(FormProjCaixa) then
      FormProjCaixa.DesabilitaBotoes;
end;

procedure TDataCadastros1.CdsCentroCustoBeforePost(DataSet: TDataSet);
begin
    DataCadastros.IncrementaRegistro('CEC_0000',DataCadastros1.CdsCentroCustoCEC_CODIGO);
end;

procedure TDataCadastros1.CdsChequesAfterInsert(DataSet: TDataSet);
begin
   DataCadastros.IncrementaCodigo('CHQ0000',CdsChequesCHQ_CODIGO,'SYSFILE',DataCadastros.CdsSysfileSYS_CHEQUE);
end;

procedure TDataCadastros1.CdsNotaFiscalAfterInsert(DataSet: TDataSet);
begin
//    DataCadastros.IncrementaCodigo('NF0001',CdsNotaFiscalNF_NU_NOTA,'SYSFILE',DataCadastros.CdsSysfileSYS_NFISCAL);
end;

procedure TDataCadastros1.CdsParametrosBeforeEdit(DataSet: TDataSet);
begin
    If Assigned(FormParametros) then
       FormParametros.DesabilitaBotao;
end;

procedure TDataCadastros1.CdsParametrosPMT_LAYOUT_BOLETO_FATURAMENTOGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  {
    0 - Padrão
    1 - Carnê
    2 - Fatura
    3 - Padrão Entrega
    4 - com Recibo
    5 - Padrão e Carnê
  }
  if Sender.AsString = '0' then
    text:= 'Padrão'
  else if Sender.AsString = '1' then
    text := 'Carnê'
  else if Sender.AsString = '2' then
    text := 'Fatura'
  else if Sender.AsString = '3' then
    text := 'Padrão Entrega'
  else if Sender.AsString = '4' then
    text := 'com Recibo'
  else if Sender.AsString = '5' then
    text := 'Padrão e Carnê';
end;

procedure TDataCadastros1.CdsParametrosPMT_LAYOUT_BOLETO_FATURAMENTOSetText(
  Sender: TField; const Text: string);
begin
  {
    0 - Padrão
    1 - Carnê
    2 - Fatura
    3 - Padrão Entrega
    4 - com Recibo
    5 - Padrão e Carnê
  }
  if text = 'Padrão' then
     Sender.AsString := '0'
  else if text = 'Carnê' then
    sender.AsString := '1'
  else if text = 'Fatura' then
     sender.AsString := '2'
  else if text = 'Padrão Entrega' then
    sender.AsString := '3'
  else if text = 'com Recibo' then
    sender.AsString := '4'
  else if text = 'Padrão e Carnê' then
    sender.AsString := '5';
end;

procedure TDataCadastros1.CdsParametrosPMT_REL_ORDEMPRODUCAOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
 {*
 antigo
//  Modelo 1 - Indústria Química
//  Modelo 2 - Indústria Química
//  Modelo 3 - Indústria metalúrgica - operações c/ cod. barras
//  Modelo 4 - Indústria Química com densidade


  novo
  Modelo 1 - Chemvet
  Modelo 2 - Indústria química com identificação
  Modelo 3 - Química Rocha
  Modelo 4 - Indústria Química com densidade
  Modelo 5 - Inquibra
  Modelo 6 - BSC
  Modelo 7 - ArtGrill
  Modelo 8 - Itagrill
  Modelo 9 - Mandibor
  Modelo 10 - Normadin
  Modelo 11 - Indústria Plástica
  Modelo 12 - L forja
  Modelo 13 - Arkson


 *}
  if Sender.AsString = '1' then
    text:= 'Modelo 1 - Chemvet'
  else if Sender.AsString = '2' then
    text := 'Modelo 2 - Indústria química com identificação'
  else if Sender.AsString = '3' then
    text := 'Modelo 3 - Química Rocha'
  else if Sender.AsString = '4' then
    text := 'Modelo 4 - Indústria Química com densidade'
  else if Sender.AsString = '5' then
    text := 'Modelo 5 - Inquibra'
  else if Sender.AsString = '6' then
    text := 'Modelo 6 - BSC'
  else if Sender.AsString = '7' then
    text := 'Modelo 7 - ArtGrill'
  else if Sender.AsString = '8' then
    text := 'Modelo 8 - Itagrill'
  else if Sender.AsString = '9' then
    text := 'Modelo 9 - Mandibor'
  else if Sender.AsString = '10' then
    text := 'Modelo 10 - Normadin'
  else if Sender.AsString = '11' then
    text := 'Modelo 11 - Indústria Plástica'
  else if Sender.AsString = '12' then
    text := 'Modelo 12 - L Forja'
  else if Sender.AsString = '13' then
    text := 'Modelo 13 - Arkson'
    ;
end;

procedure TDataCadastros1.CdsParametrosPMT_REL_ORDEMPRODUCAOSetText(Sender: TField; const Text: string);
begin
  if text = 'Modelo 1 - Chemvet' then
     Sender.AsString := '1'
  else if text = 'Modelo 2 - Indústria química com identificação' then
    sender.AsString := '2'
  else if text = 'Modelo 3 - Química Rocha' then
     sender.AsString := '3'
  else if text = 'Modelo 4 - Indústria Química com densidade' then
    sender.AsString := '4'
  else if text = 'Modelo 5 - Inquibra' then
    sender.AsString := '5'
  else if text = 'Modelo 6 - BSC' then
    sender.AsString := '6'
  else if text = 'Modelo 7 - ArtGrill' then
    sender.AsString := '7'
  else if text = 'Modelo 8 - Itagrill' then
    sender.AsString := '8'
  else if text = 'Modelo 9 - Mandibor' then
    sender.AsString := '9'
  else if text = 'Modelo 10 - Normadin' then
    sender.AsString := '10'
  else if text = 'Modelo 11 - Indústria Plástica' then
    sender.AsString := '11'
  else if text = 'Modelo 12 - L Forja' then
    sender.AsString := '12'
  else if text = 'Modelo 13 - Arkson' then
    sender.AsString := '13'
    ;

end;

procedure TDataCadastros1.CdsEveReprAfterEdit(DataSet: TDataSet);
begin
    if assigned(FormEveRepres) then
       FormEveRepres.DesabilitaBotoes;
end;

procedure TDataCadastros1.CdsTribBeforeEdit(DataSet: TDataSet);
begin
    if Assigned(FormCadTributos) then
       FormCadTributos.DesabilitaBotoes;
end;

procedure TDataCadastros1.CdSAcessosUsuarioAfterInsert(DataSet: TDataSet);
begin
  DataCadastros.IncrementaRegistro('USUARIO_ACESSO',CdSAcessosUsuarioUSA_REGISTRO);
  

end;


procedure TDataCadastros1.CdSUsuarioAfterInsert(DataSet: TDataSet);
begin
    DataCadastros.IncrementaRegistro('USUARIO',CdSUsuarioUSU_CODIGO);

   CdSUsuarioUSU_DATA_CADASTRO.Value    := Date;
   CdSUsuarioUSU_DATA_ATUALIZACAO.Value := Date;
end;

procedure TDataCadastros1.CDSUsuarioAfterScroll(DataSet: TDataSet);
begin

 if DataSet.Active and not DataSet.IsEmpty then
 begin
    cdsEmpUsu.Close;
    qEmpUsu.CommandText := 'select * from usuario_empresa where usu_codigo = '+ IntToStr(dataset.FieldByName('usu_codigo').AsInteger);
    cdsEmpUsu.Open;

    cdsAlmoxUsu.Close;
    qAlmoxUsu.CommandText := 'SELECT * FROM USUARIO_ALMOXARIFADO WHERE USU_CODIGO = '+ dataset.FieldByName('USU_CODIGO').AsString;
    cdsAlmoxUsu.Open;


 end;
end;

procedure TDataCadastros1.CdSUsuarioAfterEdit(DataSet: TDataSet);
begin
 if Assigned(FrmCadastroUsuario) then
      begin
         FrmCadastroUsuario.HabilitaBotoes;
         CdSUsuarioUSU_DATA_ATUALIZACAO.AsDateTime := Date;
      end;
end;

procedure TDataCadastros1.CdSUsuarioCalcFields(DataSet: TDataSet);
begin
   if CdSUsuarioUSU_TIPO_USUARIO.AsString = 'A' then
      CdSUsuariowTIPO_USUARIO.AsString := 'Administrador'
   else
   if CdSUsuarioUSU_TIPO_USUARIO.AsString = 'U' then
      CdSUsuariowTIPO_USUARIO.AsString := 'Usuário'
   else
   if CdSUsuarioUSU_TIPO_USUARIO.AsString = 'G' then
      CdSUsuariowTIPO_USUARIO.AsString := 'Gerencial';

   if CdSUsuarioUSU_ATIVO.AsString = 'S' then
     CdSUsuarioUSUARIO_ATIVO.AsString := 'Sim'
   else
     CdSUsuarioUSUARIO_ATIVO.AsString := 'Não';
end;

procedure TDataCadastros1.CdSUsuarioReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
 if (E is EDataBaseError) then
      begin
         if Copy(E.message,1,34) = 'violation of PRIMARY or UNIQUE KEY' then
           DataCadastros.IncrementaRegistro('USUARIO',CdSUsuarioUSU_CODIGO);
      end;
end;

procedure TDataCadastros1.DsUsuarioDataChange(Sender: TObject; Field: TField);
begin
  if FrmCadastroUsuario <> nil then
  begin
    if CDSUsuarioUSU_ATIVO.AsString = 'S' then
    begin
      FrmCadastroUsuario.gbNivelAcesso.Enabled := True;
      FrmCadastroUsuario.boxAcesso.Enabled := True;
      FrmCadastroUsuario.boxOperacao.Enabled := True;
    end
    else
    begin
      FrmCadastroUsuario.gbNivelAcesso.Enabled := False;
      FrmCadastroUsuario.boxAcesso.Enabled := False;
      FrmCadastroUsuario.boxOperacao.Enabled := False;
    end;
  end;
end;

procedure TDataCadastros1.CdSUsaParametroAfterInsert(DataSet: TDataSet);
begin
     DataCadastros.IncrementaRegistro('USUARIO_PARAMETRO',CdSUsaParametroUSP_REGISTRO);
end;

procedure TDataCadastros1.CdsTribBeforePost(DataSet: TDataSet);
begin
     DataCadastros.IncrementaREgistro('TRIB0000',CdsTribTRB_CODIGO);
end;

procedure TDataCadastros1.CdsIssBeforePost(DataSet: TDataSet);
begin
     DataCadastros.IncrementaREgistro('ISS0000',CdsIssISS_CODIGO);
end;

procedure TDataCadastros1.CdsICMSBeforePost(DataSet: TDataSet);
begin
     DataCadastros.IncrementaRegistro('ICM0000',CdsICMSICM_REGISTRO);
     {substituição S/N}
     if (FormAliqICms.CbSubst_SN.ItemIndex =  1) then
        CdsICMSICM_SUB_TRI_SN.AsString := 'S'
     else
        CdsICMSICM_SUB_TRI_SN.AsString := 'N';

    {MVA-Aplica e soma S/N}
    if (FormAliqICms.CbApliSoma.ItemIndex = 1) then
           CdsICMSSOMA_MVA_SN.AsString := 'S'
        else
           CdsICMSSOMA_MVA_SN.AsString := 'N';
end;

procedure TDataCadastros1.CdsEveReprBeforePost(DataSet: TDataSet);
begin
    DataCadastros.IncrementaRegistro('EVE_RP01',CdsEveReprERP_CODIGO);
end;

procedure TDataCadastros1.CdSArquivoCNABAfterInsert(DataSet: TDataSet);
begin
//   DataCAdastros.IncrementaRegistro('ARQUIVO_CNAB',CdSArquivoCNABCNAB_REGISTRO);
end;

procedure TDataCadastros1.CdSArquivoCNABAfterScroll(DataSet: TDataSet);
 Var
   wSQL1,wSQL2,wSQL3:String;
begin
   if Assigned(FrmRetornoCNAB) then
   begin
         if CdSArquivoCNAB.State = dsBrowse then
         begin
               try
                   CdSArquivoCNAB.DisableControls;
                   FrmRetornoCNAB.SQLDupliCNAB.DisableControls;

                  {titulos}
                   if (CdSArquivoCNAB.FieldByName('CNAB_LITERAL_ARQUIVO').AsString = 'REMESSA') or (CdSArquivoCNAB.FieldByName('CNAB_LITERAL_ARQUIVO').AsString = 'ESTORNO REMESSA') then
                      begin
                          wSQL1 := 'SELECT D1.*,f2.FPC_CODIGO_REGISTRO_RETORNO, F2.FAT_CODIGO,F2.FAT_REGISTRO,F2.FPC_NUMER,F2.FPC_VENCTO,F2.FPC_PAGTO,F2.FPC_VLPARC,F2.FPC_JUROS,F2.FPC_VLPAGO,F2.CLI_CODIGO,C1.CLI_RAZAO,F2.FPC_COBNUM,'+
                          ' coalesce(DESCRICAOOCORRENCIA,O1.OCR_DESCRICAO) as OCR_DESCRICAO,R1.REJ_DESCRICAO FROM DUPLICAT_CNAB D1 ';
                          wSQL2 := ' LEFT JOIN FAT_PC01 F2 ON (D1.DCN_DUPLICATA = F2.FAT_CODIGO and D1.DCN_DUP_PARCELA = F2.FPC_NUMER ' +
                                    iif(DBINICIO.Exclusivo('RECEBER'),' AND F2.EMP_CODIGO = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO),'') + ')'+
                                   ' LEFT JOIN CLI0000 C1 ON (F2.CLI_CODIGO = C1.CLI_CODIGO) '+
                                   ' LEFT JOIN OCORRENCIA_CNAB O1 ON (F2.BAN_COD_APELIDO = O1.OCR_COD_BANCO)';
                          wSQL3 := 'AND (D1.DCN_COD_OCORRENCIA = O1.OCR_COD_OCORRENCIA) AND (O1.OCR_TIPO_OCORRENCIA = ''R'') LEFT JOIN REJEICAO_CNAB R1 ON (F2.BAN_COD_APELIDO = R1.REJ_COD_BANCO and D1.DCN_COD_REJEICAO = R1.REJ_COD_REJEICAO) ';
                      end
                   else
                   if (CdSArquivoCNAB.FieldByName('CNAB_LITERAL_ARQUIVO').AsString = 'RETORNO') or (CdSArquivoCNAB.FieldByName('CNAB_LITERAL_ARQUIVO').AsString = 'ESTORNO RETORNO') then
                      begin
                          wSQL1 := 'SELECT COALESCE(FPC_COBNUM,DCN_NOSSO_NUMERO) AS FPC_COBNUM, D1.*,f2.FPC_CODIGO_REGISTRO_RETORNO, F2.FAT_CODIGO,F2.FAT_REGISTRO,F2.FPC_NUMER,F2.FPC_VENCTO,F2.FPC_PAGTO,F2.FPC_VLPARC,F2.FPC_JUROS,'+
                                   '  COALESCE(DCN_VALOR_PAGO, F2.FPC_VLPAGO) as FPC_VLPAGO,C1.CLI_CODIGO,C1.CLI_RAZAO,F2.FPC_COBNUM, '+
                                   ' coalesce(DESCRICAOOCORRENCIA,O1.OCR_DESCRICAO) as OCR_DESCRICAO ,R1.REJ_DESCRICAO FROM DUPLICAT_CNAB D1 ';
                          wSQL2 := ' LEFT JOIN FAT_PC01 F2 ON (D1.DCN_DUPLICATA = F2.FAT_CODIGO and D1.DCN_DUP_PARCELA = F2.FPC_NUMER '+
                                    iif(DBINICIO.Exclusivo('RECEBER'),' AND F2.EMP_CODIGO = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO),'') +')'+
                                   ' LEFT JOIN CLI0000 C1 ON (F2.CLI_CODIGO = C1.CLI_CODIGO or C1.CLI_UND_CONSUMIDORA = DCN_NOSSO_NUMERO) LEFT JOIN OCORRENCIA_CNAB O1 ON ( F2.BAN_COD_APELIDO = O1.OCR_COD_BANCO '+
                                   ' AND D1.DCN_COD_OCORRENCIA = O1.OCR_COD_OCORRENCIA AND O1.OCR_TIPO_OCORRENCIA = ''T'') ';
                          wSQL3 := '  LEFT JOIN REJEICAO_CNAB R1 ON (F2.BAN_COD_APELIDO = R1.REJ_COD_BANCO and D1.DCN_COD_REJEICAO = R1.REJ_COD_REJEICAO) ';
                      end;

                   FrmRetornoCNAB.SQLDupliCNAB.Close;
                   FrmRetornoCNAB.SQLDupliCNAB.PacketRecords := 10;
                   FrmRetornoCNAB.SQLDupliCNAB.CommandText := wSQL1+wSQL2+wSQL3+' WHERE D1.DCN_COD_REMESSA = '''+CdSArquivoCNABCNAB_REGISTRO.AsString+'''' +
                                                            iif(Share('RECEBER')= 'E',' AND D1.EMP_CODIGO = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO),'') +
                                                            ' ORDER BY F2.FPC_VENCTO ' ;
                   FrmRetornoCNAB.SQLDupliCNAB.Open;
               finally
                   CdSArquivoCNAB.EnableControls;
                   FrmRetornoCNAB.SQLDupliCNAB.EnableControls;
               end;
            end;
      end;

end;

procedure TDataCadastros1.CdsParametrosAfterInsert(DataSet: TDataSet);
begin
    DataCadastros.IncrementaRegistro('PRMT0001',CdsParametrosPMT_REGISTRO);
end;

procedure TDataCadastros1.CdSSitTributariaBeforeEdit(DataSet: TDataSet);
begin
  if Assigned(FormCadSitTributaria) then
     FormCadSitTributaria.DesabilitaBotoes;
end;

procedure TDataCadastros1.SITUACAO_TRIBUTARIArePost(DataSet: TDataSet);
begin
    DataCadastros.IncrementaREgistro('SITUACAO_TRIBUTARIA',CdSSitTributariaSTB_CODIGO);
end;

procedure TDataCadastros1.CdsMarkupBeforePost(DataSet: TDataSet);
begin
    DataCadastros.IncrementaREgistro('MKP0000',CdsMarkupMKP_CODIGO);
end;

procedure TDataCadastros1.CdsMarkupBeforeEdit(DataSet: TDataSet);
begin
    if Assigned(FormTabelaMarkup) then
     FormTabelaMarkup.DesabilitaBotoes;
end;

procedure TDataCadastros1.CdsCidadeBeforeEdit(DataSet: TDataSet);
begin
  if Assigned(FormCadCidade) then
     FormCadCidade.DesabilitaBotoes;
end;

procedure TDataCadastros1.CdsPerfilRateioBeforeEdit(DataSet: TDataSet);
begin
   if Assigned(FrmCadastroPerfilRateio) then
     FrmCadastroPerfilRateio.DesabilitaBotoes;
end;

procedure TDataCadastros1.CdsPerfilRateioBeforePost(DataSet: TDataSet);
begin
   DataCadastros.IncrementaREgistro('PCX0000_PERFIL',CdsPerfilRateioPCXPF_REGISTRO);
end;

procedure TDataCadastros1.CdsChequeStatusBeforeEdit(DataSet: TDataSet);
begin
   if Assigned(FrmChequeStatus) then
     FrmChequeStatus.DesabilitaBotoes;
end;

procedure TDataCadastros1.CdsProCaixaAfterInsert(DataSet: TDataSet);
begin
   DataCAdastros.IncrementaRegistro('PCX0000',CdsProCaixaPCX_CODIGO);
end;

end.

