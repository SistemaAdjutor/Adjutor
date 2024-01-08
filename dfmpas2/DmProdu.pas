unit DmProdu;

interface

uses
  SysUtils, Classes, FMTBCd, DB, DBClient, Provider, SqlExpr,SqlClientDataSet, Graphics, RwFunc, MIDASLIB,
  DBLocal, DBLocalS, Data.DBXFirebird, SimpleDS;

type
  TDmProducao = class(TDataModule)
    SqlCelula: tsqlquery;
    DspCelula: TDataSetProvider;
    CdsCelula: TClientDataSet;
    DsCelula: TDataSource;
    SqlCelulaCEL_CODIGO: TStringField;
    SqlCelulaCEL_NOME: TStringField;
    SqlCelulaCEL_RAZAO: TStringField;
    SqlCelulaCEL_ENDE: TStringField;
    SqlCelulaCEL_BAIRRO: TStringField;
    SqlCelulaCEL_CIDADE: TStringField;
    SqlCelulaCEL_CNPJ: TStringField;
    SqlCelulaCEL_INSC: TStringField;
    SqlCelulaCEL_FONE1: TStringField;
    SqlCelulaCEL_CELULAR: TStringField;
    SqlCelulaCEL_FAX: TStringField;
    SqlCelulaCEL_OBS: TStringField;
    SqlCelulaCEL_CEP: TStringField;
    SqlCelulaEMP_CODIGO: TStringField;
    CdsCelulaCEL_CODIGO: TStringField;
    CdsCelulaCEL_NOME: TStringField;
    CdsCelulaCEL_RAZAO: TStringField;
    CdsCelulaCEL_ENDE: TStringField;
    CdsCelulaCEL_BAIRRO: TStringField;
    CdsCelulaCEL_CIDADE: TStringField;
    CdsCelulaCEL_CNPJ: TStringField;
    CdsCelulaCEL_INSC: TStringField;
    CdsCelulaCEL_FONE1: TStringField;
    CdsCelulaCEL_CELULAR: TStringField;
    CdsCelulaCEL_FAX: TStringField;
    CdsCelulaCEL_OBS: TStringField;
    CdsCelulaCEL_CEP: TStringField;
    CdsCelulaEMP_CODIGO: TStringField;
    SqlComponentes: tsqlquery;
    DspComponentes: TDataSetProvider;
    CdsComponentes: TClientDataSet;
    DsComponentes: TDataSource;
    SqlComponentesCCP_CODIGO: TStringField;
    SqlComponentesCCP_NOME: TStringField;
    SqlComponentesCCP_FUNCAO: TStringField;
    SqlComponentesCCP_TUPDIARIO: TFloatField;
    SqlComponentesCEL_CODIGO: TStringField;
    SqlComponentesEMP_CODIGO: TStringField;
    CdsComponentesCCP_CODIGO: TStringField;
    CdsComponentesCCP_NOME: TStringField;
    CdsComponentesCCP_FUNCAO: TStringField;
    CdsComponentesCCP_TUPDIARIO: TFloatField;
    CdsComponentesCEL_CODIGO: TStringField;
    CdsComponentesEMP_CODIGO: TStringField;
    SqlMetas: tsqlquery;
    DspMetas: TDataSetProvider;
    CdsMetas: TClientDataSet;
    DsMetas: TDataSource;
    SqlMetasCME_CODIGO: TStringField;
    SqlMetasCME_DIASUTEIS: TFMTBCdField;
    SqlMetasCME_TUPMETAMES: TFMTBCdField;
    SqlMetasCME_TUPACRECENT: TFMTBCdField;
    SqlMetasCME_TUPNEGATIVO: TFMTBCdField;
    SqlMetasCEL_CODIGO: TStringField;
    SqlMetasCME_TUPREALIZADO: TFMTBCdField;
    SqlMetasCME_FATURAMENTO: TFMTBCdField;
    SqlMetasCME_PERCPATICIPA: TFMTBCdField;
    SqlMetasCME_TOT_DIAS_COMP: TFMTBCdField;
    SqlMetasEMP_CODIGO: TStringField;
    CdsMetasCME_CODIGO: TStringField;
    CdsMetasCME_DIASUTEIS: TFMTBCdField;
    CdsMetasCME_TUPMETAMES: TFMTBCdField;
    CdsMetasCME_TUPACRECENT: TFMTBCdField;
    CdsMetasCME_TUPNEGATIVO: TFMTBCdField;
    CdsMetasCEL_CODIGO: TStringField;
    CdsMetasCME_TUPREALIZADO: TFMTBCdField;
    CdsMetasCME_FATURAMENTO: TFMTBCdField;
    CdsMetasCME_PERCPATICIPA: TFMTBCdField;
    CdsMetasCME_TOT_DIAS_COMP: TFMTBCdField;
    CdsMetasEMP_CODIGO: TStringField;
    SqlCompMeta: tsqlquery;
    DspCompMeta: TDataSetProvider;
    CdsCompMeta: TClientDataSet;
    DsCompMeta: TDataSource;
    CdsCompMetaCME_CODIGO: TStringField;
    CdsCompMetaCCP_CODIGO: TStringField;
    CdsCompMetaCEL_CODIGO: TStringField;
    CdsCompMetaMEC_TUPDIARIO: TFMTBCdField;
    CdsCompMetaMEC_DIAS: TFMTBCdField;
    CdsCompMetaEMP_CODIGO: TStringField;
    SqlCompMetaCME_CODIGO: TStringField;
    SqlCompMetaCCP_CODIGO: TStringField;
    SqlCompMetaCEL_CODIGO: TStringField;
    SqlCompMetaMEC_TUPDIARIO: TFMTBCdField;
    SqlCompMetaMEC_DIAS: TFMTBCdField;
    SqlCompMetaEMP_CODIGO: TStringField;
    SqlCompMetaCME_REGISTRO: TIntegerField;
    CdsCompMetaCME_REGISTRO: TIntegerField;
    CdsMetasTUP_AREALIZAR_CC: TCurrencyField;
    SqlFatorCustos: tsqlquery;
    DspFatorCustos: TDataSetProvider;
    CdsFatorCustos: TClientDataSet;
    DsFatorCustos: TDataSource;
    DspMovCel: TDataSetProvider;
    CdsMovCel: TClientDataSet;
    DsMovCel: TDataSource;
    SqlMovCel: tsqlquery;
    SqlFatorCustosVCT_TUP: TFMTBCdField;
    SqlFatorCustosVCT_TMAQ: TFMTBCdField;
    SqlFatorCustosVCT_DF: TFMTBCdField;
    SqlFatorCustosVCT_DV: TFMTBCdField;
    SqlFatorCustosVCT_ICMS: TFMTBCdField;
    SqlFatorCustosVCT_FED: TFMTBCdField;
    SqlFatorCustosVCT_DPG: TFMTBCdField;
    SqlFatorCustosVCT_LV: TFMTBCdField;
    SqlFatorCustosVCT_FIN: TFMTBCdField;
    SqlFatorCustosVCT_COMRP: TFMTBCdField;
    SqlFatorCustosVCT_COMSP: TFMTBCdField;
    SqlFatorCustosVCT_COMGE: TFMTBCdField;
    SqlFatorCustosVCT_DESC: TFMTBCdField;
    SqlFatorCustosVCT_CLASSE: TStringField;
    SqlFatorCustosVCT_FIXO: TFMTBCdField;
    SqlFatorCustosVCT_COMPLE: TFMTBCdField;
    SqlFatorCustosVCT_INDIRETA: TFMTBCdField;
    SqlFatorCustosVCT_LUCROUNID: TFMTBCdField;
    SqlFatorCustosVCT_PERDA: TFMTBCdField;
    SqlFatorCustosVCT_VISTA: TFMTBCdField;
    SqlFatorCustosVCT_30D: TFMTBCdField;
    SqlFatorCustosVCT_45D: TFMTBCdField;
    SqlFatorCustosVCT_60D: TFMTBCdField;
    SqlFatorCustosVCT_75D: TFMTBCdField;
    SqlFatorCustosVCT_90D: TFMTBCdField;
    SqlFatorCustosVCT_TXTCOND1: TStringField;
    SqlFatorCustosVCT_TXTCOND2: TStringField;
    SqlFatorCustosVCT_TXTCOND3: TStringField;
    SqlFatorCustosVCT_TXTCOND4: TStringField;
    SqlFatorCustosVCT_TXTCOND5: TStringField;
    SqlFatorCustosVCT_TXTCOND6: TStringField;
    SqlFatorCustosEMP_CODIGO: TStringField;
    CdsFatorCustosVCT_TUP: TFMTBCdField;
    CdsFatorCustosVCT_TMAQ: TFMTBCdField;
    CdsFatorCustosVCT_DF: TFMTBCdField;
    CdsFatorCustosVCT_DV: TFMTBCdField;
    CdsFatorCustosVCT_ICMS: TFMTBCdField;
    CdsFatorCustosVCT_FED: TFMTBCdField;
    CdsFatorCustosVCT_DPG: TFMTBCdField;
    CdsFatorCustosVCT_LV: TFMTBCdField;
    CdsFatorCustosVCT_FIN: TFMTBCdField;
    CdsFatorCustosVCT_COMRP: TFMTBCdField;
    CdsFatorCustosVCT_COMSP: TFMTBCdField;
    CdsFatorCustosVCT_COMGE: TFMTBCdField;
    CdsFatorCustosVCT_DESC: TFMTBCdField;
    CdsFatorCustosVCT_CLASSE: TStringField;
    CdsFatorCustosVCT_FIXO: TFMTBCdField;
    CdsFatorCustosVCT_COMPLE: TFMTBCdField;
    CdsFatorCustosVCT_INDIRETA: TFMTBCdField;
    CdsFatorCustosVCT_LUCROUNID: TFMTBCdField;
    CdsFatorCustosVCT_PERDA: TFMTBCdField;
    CdsFatorCustosVCT_VISTA: TFMTBCdField;
    CdsFatorCustosVCT_30D: TFMTBCdField;
    CdsFatorCustosVCT_45D: TFMTBCdField;
    CdsFatorCustosVCT_60D: TFMTBCdField;
    CdsFatorCustosVCT_75D: TFMTBCdField;
    CdsFatorCustosVCT_90D: TFMTBCdField;
    CdsFatorCustosVCT_TXTCOND1: TStringField;
    CdsFatorCustosVCT_TXTCOND2: TStringField;
    CdsFatorCustosVCT_TXTCOND3: TStringField;
    CdsFatorCustosVCT_TXTCOND4: TStringField;
    CdsFatorCustosVCT_TXTCOND5: TStringField;
    CdsFatorCustosVCT_TXTCOND6: TStringField;
    CdsFatorCustosEMP_CODIGO: TStringField;
    SqlMovCelCEL_CODIGO: TStringField;
    SqlMovCelOSV_QTDE: TFMTBCdField;
    SqlMovCelOSV_QTDECONC: TFMTBCdField;
    SqlMovCelOSV_QTDEDEFE: TFMTBCdField;
    SqlMovCelOSV_VALORPECA: TFMTBCdField;
    SqlMovCelOSV_VALORDEFE: TFMTBCdField;
    SqlMovCelPED_CODIGO: TStringField;
    SqlMovCelCME_CODIGO: TStringField;
    SqlMovCelCEM_PRECOUNIT: TFMTBCdField;
    SqlMovCelCEM_TUPUNIT: TFMTBCdField;
    SqlMovCelCEM_CELAUX: TStringField;
    SqlMovCelCEM_TRABALHO: TStringField;
    SqlMovCelCEM_TUPTRAB: TFMTBCdField;
    SqlMovCelVCT_TUP: TFMTBCdField;
    SqlMovCelCEM_SITUACAO: TStringField;
    SqlMovCelEMP_CODIGO: TStringField;
    CdsMovCelCEL_CODIGO: TStringField;
    CdsMovCelOSV_QTDE: TFMTBCdField;
    CdsMovCelOSV_QTDECONC: TFMTBCdField;
    CdsMovCelOSV_QTDEDEFE: TFMTBCdField;
    CdsMovCelOSV_VALORPECA: TFMTBCdField;
    CdsMovCelOSV_VALORDEFE: TFMTBCdField;
    CdsMovCelPED_CODIGO: TStringField;
    CdsMovCelCME_CODIGO: TStringField;
    CdsMovCelCEM_PRECOUNIT: TFMTBCdField;
    CdsMovCelCEM_TUPUNIT: TFMTBCdField;
    CdsMovCelCEM_CELAUX: TStringField;
    CdsMovCelCEM_TRABALHO: TStringField;
    CdsMovCelCEM_TUPTRAB: TFMTBCdField;
    CdsMovCelVCT_TUP: TFMTBCdField;
    CdsMovCelCEM_SITUACAO: TStringField;
    CdsMovCelEMP_CODIGO: TStringField;
    SqlCdsAlmox: tsqlquery;
    DspAlmox: TDataSetProvider;
    CdsAlmox: TClientDataSet;
    DsAlmox: TDataSource;
    SqlCdsAlmoxEMP_CODIGO: TStringField;
    CdsAlmoxEMP_CODIGO: TStringField;
    SqlPcp: tsqlquery;
    DspPcp: TDataSetProvider;
    CdsPcp: TClientDataSet;
    SqlPcpSEC_CODIGO: TStringField;
    SqlPcpSEC_DESCRI: TStringField;
    SqlPcpSEC_QTDE: TSmallintField;
    SqlPcpSEC_CUSTO_UNIT: TFMTBCdField;
    SqlPcpSEC_TMP_CUSTO: TStringField;
    SqlPcpEMP_CODIGO: TStringField;
    DsPcp: TDataSource;
    CdsPcpSEC_CODIGO: TStringField;
    CdsPcpSEC_DESCRI: TStringField;
    CdsPcpSEC_QTDE: TSmallintField;
    CdsPcpSEC_CUSTO_UNIT: TFMTBCdField;
    CdsPcpSEC_TMP_CUSTO: TStringField;
    CdsPcpEMP_CODIGO: TStringField;
    SqlCdsMes: tsqlquery;
    DspMes: TDataSetProvider;
    CdsMes: TClientDataSet;
    DsMes: TDataSource;
    SqlCdsMesMES_NUMERO: TStringField;
    SqlCdsMesMES_DESCRI: TStringField;
    SqlCdsMesEMP_CODIGO: TStringField;
    CdsMesMES_NUMERO: TStringField;
    CdsMesMES_DESCRI: TStringField;
    CdsMesEMP_CODIGO: TStringField;
    SqlCdsFichaTec: tsqlquery;
    DspFichaTec: TDataSetProvider;
    DsFichaTec: TDataSource;
    SqlCdsAlmoxItem: tsqlquery;
    DspAlmoxItem: TDataSetProvider;
    CdsAlmoxItem: TClientDataSet;
    DsAlmoxItem: TDataSource;
    SqlCdsAlmoxItemAMX_REGISTRO: TIntegerField;
    SqlCdsAlmoxItemAMX_CODIGO: TStringField;
    SqlCdsAlmoxItemAMX_ESTOQUE: TFMTBCdField;
    SqlCdsAlmoxItemAMX_ENTRADA: TFMTBCdField;
    SqlCdsAlmoxItemAMX_SAIDA: TFMTBCdField;
    SqlCdsAlmoxItemAMX_PENDENTE: TFMTBCdField;
    SqlCdsAlmoxItemEMP_CODIGO: TStringField;
    CdsAlmoxItemAMX_REGISTRO: TIntegerField;
    CdsAlmoxItemAMX_CODIGO: TStringField;
    CdsAlmoxItemAMX_ESTOQUE: TFMTBCdField;
    CdsAlmoxItemAMX_ENTRADA: TFMTBCdField;
    CdsAlmoxItemAMX_SAIDA: TFMTBCdField;
    CdsAlmoxItemAMX_PENDENTE: TFMTBCdField;
    CdsAlmoxItemEMP_CODIGO: TStringField;
    SqlMetasCME_REGISTRO: TIntegerField;
    CdsMetasCME_REGISTRO: TIntegerField;
    SqlPrevConsumo: tsqlquery;
    SqlPrevConsumoPRD_DESCRI: TStringField;
    SqlPrevConsumoPSV_QUANT1: TFMTBCdField;
    SqlPrevConsumoPSV_QUANT2: TFMTBCdField;
    SqlPrevConsumoPSV_QUANT3: TFMTBCdField;
    SqlPrevConsumoPSV_QUANT4: TFMTBCdField;
    SqlPrevConsumoPSV_QUANT5: TFMTBCdField;
    SqlPrevConsumoPSV_QUANT6: TFMTBCdField;
    SqlPrevConsumoPSV_QUANT7: TFMTBCdField;
    SqlPrevConsumoPSV_QUANT8: TFMTBCdField;
    SqlPrevConsumoPSV_MODE1: TStringField;
    SqlPrevConsumoPSV_MODE2: TStringField;
    SqlPrevConsumoPSV_MODE3: TStringField;
    SqlPrevConsumoPSV_MODE4: TStringField;
    SqlPrevConsumoPSV_MODE5: TStringField;
    SqlPrevConsumoPSV_MODE6: TStringField;
    SqlPrevConsumoPSV_MODE7: TStringField;
    SqlPrevConsumoPSV_MODE8: TStringField;
    SqlPrevConsumoPSV_QUALMOD: TStringField;
    SqlPrevConsumoPED_CODIGO: TStringField;
    SqlPrevConsumoPSV_FLAG: TStringField;
    SqlPrevConsumoPSV_CUSTO: TFMTBCdField;
    SqlPrevConsumoPSV_ESTFISICO: TFMTBCdField;
    SqlPrevConsumoPSV_ESTANTEC: TFMTBCdField;
    SqlPrevConsumoPSV_UND: TStringField;
    SqlPrevConsumoEMP_CODIGO: TStringField;
    DspPrevConsumo: TDataSetProvider;
    CdsPrevConsumo: TClientDataSet;
    CdsPrevConsumoPRD_DESCRI: TStringField;
    CdsPrevConsumoPSV_QUANT1: TFMTBCdField;
    CdsPrevConsumoPSV_QUANT2: TFMTBCdField;
    CdsPrevConsumoPSV_QUANT3: TFMTBCdField;
    CdsPrevConsumoPSV_QUANT4: TFMTBCdField;
    CdsPrevConsumoPSV_QUANT5: TFMTBCdField;
    CdsPrevConsumoPSV_QUANT6: TFMTBCdField;
    CdsPrevConsumoPSV_QUANT7: TFMTBCdField;
    CdsPrevConsumoPSV_QUANT8: TFMTBCdField;
    CdsPrevConsumoPSV_MODE1: TStringField;
    CdsPrevConsumoPSV_MODE2: TStringField;
    CdsPrevConsumoPSV_MODE3: TStringField;
    CdsPrevConsumoPSV_MODE4: TStringField;
    CdsPrevConsumoPSV_MODE5: TStringField;
    CdsPrevConsumoPSV_MODE6: TStringField;
    CdsPrevConsumoPSV_MODE7: TStringField;
    CdsPrevConsumoPSV_MODE8: TStringField;
    CdsPrevConsumoPSV_QUALMOD: TStringField;
    CdsPrevConsumoPED_CODIGO: TStringField;
    CdsPrevConsumoPSV_FLAG: TStringField;
    CdsPrevConsumoPSV_CUSTO: TFMTBCdField;
    CdsPrevConsumoPSV_ESTFISICO: TFMTBCdField;
    CdsPrevConsumoPSV_ESTANTEC: TFMTBCdField;
    CdsPrevConsumoPSV_UND: TStringField;
    CdsPrevConsumoEMP_CODIGO: TStringField;
    DsPrevConsumo: TDataSource;
    SqlPrevItens: tsqlquery;
    DspPrevItens: TDataSetProvider;
    CdsPrevItens: TClientDataSet;
    DsPrevItens: TDataSource;
    SqlPrevConsumoPSV_REGISTRO: TIntegerField;
    CdsPrevConsumoPSV_REGISTRO: TIntegerField;
    SqlCdsFichaTecFTC_TUP: TFMTBCdField;
    SqlCdsFichaTecFTC_CRIACAO: TSQLTimeStampField;
    SqlCdsFichaTecFTC_FIXO: TFMTBCdField;
    SqlCdsFichaTecFTC_COMPLE: TFMTBCdField;
    SqlCdsFichaTecFTC_INDIRETA: TFMTBCdField;
    SqlCdsFichaTecFTC_LUCROUNID: TFMTBCdField;
    SqlCdsFichaTecEMP_CODIGO: TStringField;
    SqlCdsFichaTecPRD_DESCRI: TStringField;
    SqlCdsFichaTecPRD_DCVAR1: TStringField;
    SqlCdsFichaTecPRD_DCVAR2: TStringField;
    SqlCdsFichaTecPRD_DCVAR3: TStringField;
    SqlCdsFichaTecPRD_DCVAR4: TStringField;
    SqlCdsFichaTecPRD_DCVAR5: TStringField;
    SqlCdsFichaTecPRD_DCVAR6: TStringField;
    SqlCdsFichaTecPRD_DCVAR7: TStringField;
    SqlCdsFichaTecPRD_DCVAR8: TStringField;
    SqlCdsItemFicha: tsqlquery;
    DspItemFicha: TDataSetProvider;
    CdsItemFicha: TClientDataSet;
    DsItemFicha: TDataSource;
    SqlCdsItemFichaFTI_REGISTRO: TIntegerField;
    SqlCdsItemFichaFTI_MODIFICADA: TSQLTimeStampField;
    SqlCdsItemFichaFTI_UC: TFMTBCdField;
    SqlCdsItemFichaFTI_UCMODIFIC: TFMTBCdField;
    SqlCdsItemFichaFTI_MODE1: TStringField;
    SqlCdsItemFichaFTI_MODE2: TStringField;
    SqlCdsItemFichaFTI_MODE3: TStringField;
    SqlCdsItemFichaFTI_MODE4: TStringField;
    SqlCdsItemFichaFTI_MODE5: TStringField;
    SqlCdsItemFichaFTI_MODE6: TStringField;
    SqlCdsItemFichaFTI_MODE7: TStringField;
    SqlCdsItemFichaFTI_MODE8: TStringField;
    SqlCdsItemFichaFTI_PRECOCUSTO: TFMTBCdField;
    SqlCdsItemFichaEMP_CODIGO: TStringField;
    CdsItemFichaFTI_REGISTRO: TIntegerField;
    CdsItemFichaFTI_MODIFICADA: TSQLTimeStampField;
    CdsItemFichaFTI_UC: TFMTBCdField;
    CdsItemFichaFTI_UCMODIFIC: TFMTBCdField;
    CdsItemFichaFTI_MODE1: TStringField;
    CdsItemFichaFTI_MODE2: TStringField;
    CdsItemFichaFTI_MODE3: TStringField;
    CdsItemFichaFTI_MODE4: TStringField;
    CdsItemFichaFTI_MODE5: TStringField;
    CdsItemFichaFTI_MODE6: TStringField;
    CdsItemFichaFTI_MODE7: TStringField;
    CdsItemFichaFTI_MODE8: TStringField;
    CdsItemFichaFTI_PRECOCUSTO: TFMTBCdField;
    CdsItemFichaEMP_CODIGO: TStringField;
    SqlOsv: tsqlquery;
    DspOsv: TDataSetProvider;
    CdsOsv: TClientDataSet;
    DsOsv: TDataSource;
    SqlOsvIt: tsqlquery;
    DspOsvIt: TDataSetProvider;
    CdsOsvIt: TClientDataSet;
    DsOsvIt: TDataSource;
    SqlOsvCEL_CODIGO: TStringField;
    SqlOsvFTC_CRIACAO: TSQLTimeStampField;
    SqlOsvOSV_EMISSAO: TSQLTimeStampField;
    SqlOsvOSV_QTDE: TFMTBCdField;
    SqlOsvOSV_PRECOUNIT: TFMTBCdField;
    SqlOsvFTC_TUP: TFMTBCdField;
    SqlOsvPED_CODIGO: TStringField;
    SqlOsvOSV_CONCLUSAO: TSQLTimeStampField;
    SqlOsvEMP_CODIGO: TStringField;
    SqlOsvOSV_QTDE1: TFMTBCdField;
    SqlOsvOSV_QTDE2: TFMTBCdField;
    SqlOsvOSV_QTDE3: TFMTBCdField;
    SqlOsvOSV_QTDE4: TFMTBCdField;
    SqlOsvOSV_QTDE5: TFMTBCdField;
    SqlOsvOSV_QTDE6: TFMTBCdField;
    SqlOsvOSV_QTDE7: TFMTBCdField;
    SqlOsvOSV_QTDE8: TFMTBCdField;
    SqlOsvOSV_STATUS: TStringField;
    SqlOsvCLI_CODIGO: TStringField;
    SqlOsvOSV_MOTIVOESTORNO: TStringField;
    SqlOsvOSV_VALIDADE: TSQLTimeStampField;
    CdsOsvCEL_CODIGO: TStringField;
    CdsOsvFTC_CRIACAO: TSQLTimeStampField;
    CdsOsvOSV_EMISSAO: TSQLTimeStampField;
    CdsOsvOSV_QTDE: TFMTBCdField;
    CdsOsvOSV_PRECOUNIT: TFMTBCdField;
    CdsOsvFTC_TUP: TFMTBCdField;
    CdsOsvPED_CODIGO: TStringField;
    CdsOsvOSV_CONCLUSAO: TSQLTimeStampField;
    CdsOsvEMP_CODIGO: TStringField;
    CdsOsvOSV_QTDE1: TFMTBCdField;
    CdsOsvOSV_QTDE2: TFMTBCdField;
    CdsOsvOSV_QTDE3: TFMTBCdField;
    CdsOsvOSV_QTDE4: TFMTBCdField;
    CdsOsvOSV_QTDE5: TFMTBCdField;
    CdsOsvOSV_QTDE6: TFMTBCdField;
    CdsOsvOSV_QTDE7: TFMTBCdField;
    CdsOsvOSV_QTDE8: TFMTBCdField;
    CdsOsvOSV_STATUS: TStringField;
    CdsOsvCLI_CODIGO: TStringField;
    CdsOsvOSV_MOTIVOESTORNO: TStringField;
    CdsOsvOSV_VALIDADE: TSQLTimeStampField;
    SqlOsvItOSI_REGISTRO: TIntegerField;
    CdsOsvItOSI_REGISTRO: TIntegerField;
    CdsOsvItQTDE1_CC: TCurrencyField;
    CdsOsvItQTDE2_CC: TCurrencyField;
    CdsOsvItQTDE3_CC: TCurrencyField;
    CdsOsvItQTDE4_CC: TCurrencyField;
    CdsOsvItQTDE5_CC: TCurrencyField;
    CdsOsvItQTDE6_CC: TCurrencyField;
    CdsOsvItQTDE7_CC: TCurrencyField;
    CdsOsvItQTDE8_CC: TCurrencyField;
    SqlMovCelCEM_REGISTRO: TIntegerField;
    CdsMovCelCEM_REGISTRO: TIntegerField;
    DspMovProduz: TDataSetProvider;
    CdsMovProduz: TClientDataSet;
    DsProduz: TDataSource;
    SqlCdsMovProduz: tsqlquery;
    SqlCdsMovProduzCEM_REGISTRO: TIntegerField;
    SqlCdsMovProduzCEM_QTDE: TFMTBCdField;
    SqlCdsMovProduzCEM_DEFEITO: TFMTBCdField;
    SqlCdsMovProduzEMP_CODIGO: TStringField;
    CdsMovProduzCEM_REGISTRO: TIntegerField;
    CdsMovProduzCEL_CODIGO: TStringField;
    CdsMovProduzCEM_QTDE: TFMTBCdField;
    CdsMovProduzCEM_DEFEITO: TFMTBCdField;
    CdsMovProduzEMP_CODIGO: TStringField;
    SqlMovCelOSV_EMISSAO: TDateField;
    SqlMovCelCEM_DTENTROU: TDateField;
    SqlMovCelCEM_DTCONCLUIU: TDateField;
    CdsMovCelOSV_EMISSAO: TDateField;
    CdsMovCelCEM_DTENTROU: TDateField;
    CdsMovCelCEM_DTCONCLUIU: TDateField;
    SqlCdsMovProduzCEM_DTPRODUZ: TDateField;
    CdsMovProduzCEM_DTPRODUZ: TDateField;
    SqlMovCelCEL_NOME: TStringField;
    CdsMovCelCEL_NOME: TStringField;
    SqlOsvOSV_OBS1: TStringField;
    SqlOsvOSV_OBS2: TStringField;
    SqlOsvOSV_OBS3: TStringField;
    SqlOsvOSV_OBS4: TStringField;
    SqlOsvOSV_OBS5: TStringField;
    SqlOsvOSV_OBS6: TStringField;
    SqlOsvOSV_OBS7: TStringField;
    CdsOsvOSV_OBS1: TStringField;
    CdsOsvOSV_OBS2: TStringField;
    CdsOsvOSV_OBS3: TStringField;
    CdsOsvOSV_OBS4: TStringField;
    CdsOsvOSV_OBS5: TStringField;
    CdsOsvOSV_OBS6: TStringField;
    CdsOsvOSV_OBS7: TStringField;
    SqlCdsFichaTecPTI_SIGLA: TStringField;
    CdsFichaTec: TClientDataSet;
    CdsFichaTecFTC_TUP: TFMTBCdField;
    CdsFichaTecFTC_CRIACAO: TSQLTimeStampField;
    CdsFichaTecFTC_FIXO: TFMTBCdField;
    CdsFichaTecFTC_COMPLE: TFMTBCdField;
    CdsFichaTecFTC_INDIRETA: TFMTBCdField;
    CdsFichaTecFTC_LUCROUNID: TFMTBCdField;
    CdsFichaTecEMP_CODIGO: TStringField;
    CdsFichaTecPRD_DESCRI: TStringField;
    CdsFichaTecPRD_DCVAR1: TStringField;
    CdsFichaTecPRD_DCVAR2: TStringField;
    CdsFichaTecPRD_DCVAR3: TStringField;
    CdsFichaTecPRD_DCVAR4: TStringField;
    CdsFichaTecPRD_DCVAR5: TStringField;
    CdsFichaTecPRD_DCVAR6: TStringField;
    CdsFichaTecPRD_DCVAR7: TStringField;
    CdsFichaTecPRD_DCVAR8: TStringField;
    CdsFichaTecPTI_SIGLA: TStringField;
    SqlOsvOSV_CODIGO: TStringField;
    CdsOsvOSV_CODIGO: TStringField;
    SqlCdsPsvGrupo: tsqlquery;
    DspPsvGrupo: TDataSetProvider;
    CdsPsvGrupo: TClientDataSet;
    DsPsvGrupo: TDataSource;
    CdsPsvGrupoPSG_REGISTRO: TIntegerField;
    CdsPsvGrupoEMP_CODIGO: TStringField;
    CdsPsvGrupoPED_CODIGO: TStringField;
    CdsPsvGrupoCLI_CODIGO: TStringField;
    SqlCdsPs2Itens: tsqlquery;
    DspPs2Itens: TDataSetProvider;
    CdsPs2Itens: TClientDataSet;
    DsPs2Itens: TDataSource;
    SqlCdsPsvGrupoPSG_REGISTRO: TIntegerField;
    SqlCdsPsvGrupoEMP_CODIGO: TStringField;
    SqlCdsPsvGrupoPED_CODIGO: TStringField;
    SqlCdsPsvGrupoCLI_CODIGO: TStringField;
    SqlCdsPs2ItensPS2_REGISTRO: TIntegerField;
    SqlCdsPs2ItensEMP_CODIGO: TStringField;
    SqlCdsPs2ItensPED_CODIGO: TStringField;
    SqlCdsPs2ItensPS2_QTDE: TFMTBCdField;
    SqlCdsPs2ItensPS2_QTDE1: TFMTBCdField;
    SqlCdsPs2ItensPS2_QTDE2: TFMTBCdField;
    SqlCdsPs2ItensPS2_QTDE3: TFMTBCdField;
    SqlCdsPs2ItensPS2_QTDE4: TFMTBCdField;
    SqlCdsPs2ItensPS2_QTDE5: TFMTBCdField;
    SqlCdsPs2ItensPS2_QTDE6: TFMTBCdField;
    SqlCdsPs2ItensPS2_QTDE7: TFMTBCdField;
    SqlCdsPs2ItensPS2_QTDE8: TFMTBCdField;
    CdsPs2ItensPS2_REGISTRO: TIntegerField;
    CdsPs2ItensEMP_CODIGO: TStringField;
    CdsPs2ItensPED_CODIGO: TStringField;
    CdsPs2ItensPS2_QTDE: TFMTBCdField;
    CdsPs2ItensPS2_QTDE1: TFMTBCdField;
    CdsPs2ItensPS2_QTDE2: TFMTBCdField;
    CdsPs2ItensPS2_QTDE3: TFMTBCdField;
    CdsPs2ItensPS2_QTDE4: TFMTBCdField;
    CdsPs2ItensPS2_QTDE5: TFMTBCdField;
    CdsPs2ItensPS2_QTDE6: TFMTBCdField;
    CdsPs2ItensPS2_QTDE7: TFMTBCdField;
    CdsPs2ItensPS2_QTDE8: TFMTBCdField;
    SqlPrevItensPSI_REGISTRO: TIntegerField;
    CdsPrevItensPSI_REGISTRO: TIntegerField;
    SqlCdsItemFichaFTI_NIVEL: TIntegerField;
    SqlCdsItemFichaFTI_SEQUENCIA: TIntegerField;
    SqlCdsItemFichaFTI_REFER_PAI: TStringField;
    SqlCdsItemFichaFTI_TIPO_PI: TStringField;
    CdsItemFichaFTI_NIVEL: TIntegerField;
    CdsItemFichaFTI_SEQUENCIA: TIntegerField;
    CdsItemFichaFTI_REFER_PAI: TStringField;
    CdsItemFichaFTI_TIPO_PI: TStringField;
    DspAponta: TDataSetProvider;
    CdsAponta: TClientDataSet;
    DsAponta: TDataSource;
    SqlAponta: tsqlquery;
    SqlApontaAPM_CODIGO: TIntegerField;
    SqlApontaOSV_CODIGO: TStringField;
    SqlApontaAPM_QTDE: TFMTBCdField;
    SqlApontaAPM_DATAAPONT: TDateField;
    SqlApontaAPM_TIPOAPONT: TStringField;
    SqlApontaAPM_NUMDOC: TStringField;
    SqlApontaAPM_ORIGEM: TStringField;
    CdsApontaAPM_CODIGO: TIntegerField;
    CdsApontaOSV_CODIGO: TStringField;
    CdsApontaAPM_QTDE: TFMTBCdField;
    CdsApontaAPM_DATAAPONT: TDateField;
    CdsApontaAPM_TIPOAPONT: TStringField;
    CdsApontaAPM_NUMDOC: TStringField;
    CdsApontaAPM_ORIGEM: TStringField;
    SqlCdsPs2ItensPS2_FICHA: TStringField;
    CdsPs2ItensPS2_FICHA: TStringField;
    DspEmpenho: TDataSetProvider;
    CdsEmpenho: TClientDataSet;
    DsEmpenho: TDataSource;
    SQLEmpenho: tsqlquery;
    SQLEmpenhoEPM_CODIGO: TIntegerField;
    CdsEmpenhoEPM_CODIGO: TIntegerField;
    SQLEmpenhoOSV_CODIGO: TStringField;
    SQLEmpenhoEPM_QTDE: TFMTBCdField;
    SQLEmpenhoEPM_DATAEMPENHO: TDateField;
    SQLEmpenhoEPM_TIPOEMPENHO: TStringField;
    SQLEmpenhoEPM_NUMDOC: TStringField;
    SQLEmpenhoEPM_ORIGEM: TStringField;
    SQLEmpenhoEMP_CODIGO: TStringField;
    SQLEmpenhoEPM_STATUS: TStringField;
    CdsEmpenhoOSV_CODIGO: TStringField;
    CdsEmpenhoEPM_QTDE: TFMTBCdField;
    CdsEmpenhoEPM_DATAEMPENHO: TDateField;
    CdsEmpenhoEPM_TIPOEMPENHO: TStringField;
    CdsEmpenhoEPM_NUMDOC: TStringField;
    CdsEmpenhoEPM_ORIGEM: TStringField;
    CdsEmpenhoEMP_CODIGO: TStringField;
    CdsEmpenhoEPM_STATUS: TStringField;
    SqlCdsMovProduzOSV_CODIGO: TStringField;
    SqlCdsMovProduzCEL_CODIGO: TStringField;
    CdsMovProduzOSV_CODIGO: TStringField;
    SqlMovCelOSV_CODIGO: TStringField;
    CdsMovCelOSV_CODIGO: TStringField;
    SqlCdsFichaTecFTC_REGISTRO: TSmallintField;
    SqlOsvOSV_IMPRESSO: TStringField;
    CdsOsvOSV_IMPRESSO: TStringField;
    SqlPrevItensPSI_CUSTO: TFMTBCdField;
    SqlPrevItensPSI_ESTFISICO: TFMTBCdField;
    SqlPrevItensPSI_ESTANTEC: TFMTBCdField;
    SqlPrevItensPSI_CONSUMO: TFMTBCdField;
    SqlPrevItensPSI_FALTA: TFMTBCdField;
    SqlPrevItensEMP_CODIGO: TStringField;
    SqlPrevItensPSI_ESTRESERVA: TFMTBCdField;
    SqlPrevItensPSI_STATUS: TStringField;
    SqlPrevItensPED_CODIGO: TStringField;
    SqlPrevItensPSI_DISPONIVEL: TFMTBCdField;
    SqlPrevItensPRD_REFER_ITENS: TStringField;
    CdsPrevItensPSI_CUSTO: TFMTBCdField;
    CdsPrevItensPSI_ESTFISICO: TFMTBCdField;
    CdsPrevItensPSI_ESTANTEC: TFMTBCdField;
    CdsPrevItensPSI_CONSUMO: TFMTBCdField;
    CdsPrevItensPSI_FALTA: TFMTBCdField;
    CdsPrevItensEMP_CODIGO: TStringField;
    CdsPrevItensPSI_ESTRESERVA: TFMTBCdField;
    CdsPrevItensPSI_STATUS: TStringField;
    CdsPrevItensPED_CODIGO: TStringField;
    CdsPrevItensPSI_DISPONIVEL: TFMTBCdField;
    CdsPrevItensPRD_REFER_ITENS: TStringField;
    SqlPrevItensPSI_CONSUMO_SEMI: TFMTBCdField;
    CdsPrevItensPSI_CONSUMO_SEMI: TFMTBCdField;
    SqlCdsAlmoxTemp: tsqlquery;
    DspAlmoxTemp: TDataSetProvider;
    CdsAlmoxTemp: TClientDataSet;
    SqlCdsAlmoxTempAMX_REGISTRO: TIntegerField;
    SqlCdsAlmoxTempAMX_DATA: TDateField;
    SqlCdsAlmoxTempAMX_QTDE: TIntegerField;
    SqlCdsAlmoxTempPRD_DESCRI: TStringField;
    CdsAlmoxTempAMX_REGISTRO: TIntegerField;
    CdsAlmoxTempAMX_DATA: TDateField;
    CdsAlmoxTempAMX_QTDE: TIntegerField;
    CdsAlmoxTempPRD_DESCRI: TStringField;
    DsAlmoxTemp: TDataSource;
    SqlCdsAlmoxTempAMX_NUM_OP: TStringField;
    CdsAlmoxTempAMX_NUM_OP: TStringField;
    SqlCdsAlmoxTempEMP_CODIGO: TStringField;
    CdsAlmoxTempEMP_CODIGO: TStringField;
    SqlCdsAlmoxTempAMX_STATUS: TStringField;
    CdsAlmoxTempAMX_STATUS: TStringField;
    SqlCdsAlmoxTempAMX_STAT_UPD: TStringField;
    CdsAlmoxTempAMX_STAT_UPD: TStringField;
    SqlCdsAlmoxTempAMX_OP_PAI: TStringField;
    CdsAlmoxTempAMX_OP_PAI: TStringField;
    SqlCdsAlmoxTempPRD_DCVAR1: TStringField;
    SqlCdsAlmoxTempPRD_DCVAR2: TStringField;
    SqlCdsAlmoxTempPRD_DCVAR3: TStringField;
    SqlCdsAlmoxTempPRD_DCVAR4: TStringField;
    SqlCdsAlmoxTempPRD_DCVAR5: TStringField;
    SqlCdsAlmoxTempPRD_DCVAR6: TStringField;
    SqlCdsAlmoxTempPRD_DCVAR7: TStringField;
    SqlCdsAlmoxTempPRD_DCVAR8: TStringField;
    CdsAlmoxTempPRD_DCVAR1: TStringField;
    CdsAlmoxTempPRD_DCVAR2: TStringField;
    CdsAlmoxTempPRD_DCVAR3: TStringField;
    CdsAlmoxTempPRD_DCVAR4: TStringField;
    CdsAlmoxTempPRD_DCVAR5: TStringField;
    CdsAlmoxTempPRD_DCVAR6: TStringField;
    CdsAlmoxTempPRD_DCVAR7: TStringField;
    CdsAlmoxTempPRD_DCVAR8: TStringField;
    SqlOsvOSV_REGISTRO: TIntegerField;
    CdsOsvOSV_REGISTRO: TIntegerField;
    SqlCdsAlmoxTempAMX_TIPO: TStringField;
    CdsAlmoxTempAMX_TIPO: TStringField;
    CdsAlmoxTempCC_TIPO: TStringField;
    StpOSV0001: TSQLStoredProc;
    SqlPrevConsumoPTI_SIGLA: TStringField;
    CdsPrevConsumoPTI_SIGLA: TStringField;
    SqlPrevItensPSI_UND: TStringField;
    CdsPrevItensPSI_UND: TStringField;
    SqlPrevItensPSI_PAI: TStringField;
    CdsPrevItensPSI_PAI: TStringField;
    SqlPrevItensPSI_SIGLA: TStringField;
    CdsPrevItensPSI_SIGLA: TStringField;
    SqlOsvOSV_ORIGEM_PAI: TStringField;
    SqlOsvOSV_ORIGEM_ARVORE: TStringField;
    CdsOsvOSV_ORIGEM_PAI: TStringField;
    CdsOsvOSV_ORIGEM_ARVORE: TStringField;
    SqlOsvOSV_STATUS_SITUACAO: TStringField;
    CdsOsvOSV_STATUS_SITUACAO: TStringField;
    SqlOsvOSV_QTDE_SOLICITADA: TFMTBCdField;
    CdsOsvOSV_QTDE_SOLICITADA: TFMTBCdField;
    SqlOsvOSV_ESTOQUE: TFMTBCdField;
    CdsOsvOSV_ESTOQUE: TFMTBCdField;
    SqlOsvOSV_PAI: TStringField;
    CdsOsvOSV_PAI: TStringField;
    SqlPrevItensPSI_REQ_COMPRA: TStringField;
    CdsPrevItensPSI_REQ_COMPRA: TStringField;
    SqlPrevConsumoPSV_REQ_COMPRA: TStringField;
    CdsPrevConsumoPSV_REQ_COMPRA: TStringField;
    SqlOsvOSV_VARIACAO: TStringField;
    CdsOsvOSV_VARIACAO: TStringField;
    SqlOsvOSV_CODIGO_PAI: TStringField;
    CdsFichaTecFTC_REGISTRO: TSmallintField;
    CdsOsvOSV_CODIGO_PAI: TStringField;
    SqlOsvItOSV_CODIGO: TStringField;
    SqlOsvItOSI_MODIFICADA: TSQLTimeStampField;
    SqlOsvItEMP_CODIGO: TStringField;
    SqlOsvItOSI_SITUACAO: TStringField;
    SqlOsvItOSI_RESERVADO: TFMTBCdField;
    SqlOsvItOSI_EMPENHO: TFMTBCdField;
    SqlOsvItOSI_APONTADO: TFMTBCdField;
    SqlOsvItOSI_EMP_PENDENTE: TFMTBCdField;
    SqlOsvItOSI_REQ_COMPRA: TStringField;
    SqlOsvItOSI_ORIGEM: TStringField;
    SqlOsvItOSI_CODIGO_ORIGEM: TStringField;
    SqlOsvItOSI_CODIGO_ARVORE: TStringField;
    SqlOsvItOSI_STATUSEMPENHO: TStringField;
    CdsOsvItOSV_CODIGO: TStringField;
    CdsOsvItOSI_MODIFICADA: TSQLTimeStampField;
    CdsOsvItEMP_CODIGO: TStringField;
    CdsOsvItOSI_SITUACAO: TStringField;
    CdsOsvItOSI_RESERVADO: TFMTBCdField;
    CdsOsvItOSI_EMPENHO: TFMTBCdField;
    CdsOsvItOSI_APONTADO: TFMTBCdField;
    CdsOsvItOSI_EMP_PENDENTE: TFMTBCdField;
    CdsOsvItOSI_REQ_COMPRA: TStringField;
    CdsOsvItOSI_ORIGEM: TStringField;
    CdsOsvItOSI_CODIGO_ORIGEM: TStringField;
    CdsOsvItOSI_CODIGO_ARVORE: TStringField;
    CdsOsvItOSI_STATUSEMPENHO: TStringField;
    SqlApontaEMP_CODIGO: TStringField;
    CdsApontaEMP_CODIGO: TStringField;
    SqlOsvOSV_LOTE: TStringField;
    CdsOsvOSV_LOTE: TStringField;
    SqlCdsPs2ItensCLI_CODIGO: TStringField;
    SqlCdsPs2ItensPS2_LOTE: TStringField;
    CdsPs2ItensCLI_CODIGO: TStringField;
    CdsPs2ItensPS2_LOTE: TStringField;
    SqlCdsFichaTecFTC_PROC1: TStringField;
    SqlCdsFichaTecFTC_PROC2: TStringField;
    SqlCdsFichaTecFTC_PROC3: TStringField;
    SqlCdsFichaTecFTC_PROC4: TStringField;
    SqlCdsFichaTecFTC_PROC5: TStringField;
    SqlCdsFichaTecFTC_PROC6: TStringField;
    SqlCdsFichaTecFTC_PROC7: TStringField;
    SqlCdsFichaTecFTC_PROC8: TStringField;
    CdsFichaTecFTC_PROC1: TStringField;
    CdsFichaTecFTC_PROC2: TStringField;
    CdsFichaTecFTC_PROC3: TStringField;
    CdsFichaTecFTC_PROC4: TStringField;
    CdsFichaTecFTC_PROC5: TStringField;
    CdsFichaTecFTC_PROC6: TStringField;
    CdsFichaTecFTC_PROC7: TStringField;
    CdsFichaTecFTC_PROC8: TStringField;
    SqlOsvItOSI_UC: TFloatField;
    CdsOsvItOSI_UC: TFloatField;
    SqlOsvItOSI_QTDE1: TFMTBCdField;
    SqlOsvItOSI_QTDE2: TFMTBCdField;
    SqlOsvItOSI_QTDE3: TFMTBCdField;
    SqlOsvItOSI_QTDE4: TFMTBCdField;
    SqlOsvItOSI_QTDE5: TFMTBCdField;
    SqlOsvItOSI_QTDE6: TFMTBCdField;
    SqlOsvItOSI_QTDE7: TFMTBCdField;
    SqlOsvItOSI_QTDE8: TFMTBCdField;
    CdsOsvItOSI_QTDE1: TFMTBCdField;
    CdsOsvItOSI_QTDE2: TFMTBCdField;
    CdsOsvItOSI_QTDE3: TFMTBCdField;
    CdsOsvItOSI_QTDE4: TFMTBCdField;
    CdsOsvItOSI_QTDE5: TFMTBCdField;
    CdsOsvItOSI_QTDE6: TFMTBCdField;
    CdsOsvItOSI_QTDE7: TFMTBCdField;
    CdsOsvItOSI_QTDE8: TFMTBCdField;
    SqlCdsAlmoxAMX_CODIGO: TStringField;
    SqlCdsAlmoxAMX_DESCRI: TStringField;
    SqlCdsAlmoxAMX_TIPO: TStringField;
    CdsAlmoxAMX_CODIGO: TStringField;
    CdsAlmoxAMX_DESCRI: TStringField;
    CdsAlmoxAMX_TIPO: TStringField;
    SqlCdsAlmoxAMX_FISICO: TStringField;
    SqlCdsAlmoxAMX_TERCEIROS: TStringField;
    SqlCdsAlmoxAMX_FORATERCEIROS: TStringField;
    SqlCdsAlmoxAMX_CIRCULANTE: TStringField;
    SqlCdsAlmoxAMX_VIRTUAL: TStringField;
    CdsAlmoxAMX_FISICO: TStringField;
    CdsAlmoxAMX_TERCEIROS: TStringField;
    CdsAlmoxAMX_FORATERCEIROS: TStringField;
    CdsAlmoxAMX_CIRCULANTE: TStringField;
    CdsAlmoxAMX_VIRTUAL: TStringField;
    SqlCdsFichaTecPRD_REFER: TStringField;
    CdsFichaTecPRD_REFER: TStringField;
    SqlCdsAlmoxItemPRD_REFER: TStringField;
    CdsAlmoxItemPRD_REFER: TStringField;
    SqlPrevConsumoPRD_REFER: TStringField;
    CdsPrevConsumoPRD_REFER: TStringField;
    SqlPrevItensPRD_REFER: TStringField;
    CdsPrevItensPRD_REFER: TStringField;
    SqlCdsPs2ItensPRD_REFER: TStringField;
    CdsPs2ItensPRD_REFER: TStringField;
    SqlCdsAlmoxTempAMX_REFER: TStringField;
    CdsAlmoxTempAMX_REFER: TStringField;
    SqlOsvPRD_REFER: TStringField;
    CdsOsvPRD_REFER: TStringField;
    SqlOsvItPRD_REFER: TStringField;
    SqlOsvItPRD_REFER_ITENS: TStringField;
    CdsOsvItPRD_REFER: TStringField;
    CdsOsvItPRD_REFER_ITENS: TStringField;
    SqlMovCelPRD_REFER: TStringField;
    CdsMovCelPRD_REFER: TStringField;
    SqlApontaPRD_REFER_ITENS: TStringField;
    CdsApontaPRD_REFER_ITENS: TStringField;
    SQLEmpenhoPRD_REFER_ITENS: TStringField;
    CdsEmpenhoPRD_REFER_ITENS: TStringField;
    SqlCdsItemFichaPRD_REFER: TStringField;
    SqlCdsItemFichaPRD_REFER_ITENS: TStringField;
    CdsItemFichaPRD_REFER: TStringField;
    CdsItemFichaPRD_REFER_ITENS: TStringField;
    SqlCdsItemFichaPRG_REGISTRO: TIntegerField;
    CdsItemFichaPRG_REGISTRO: TIntegerField;
    SqlCdsAlmoxAMX_ATIVO: TStringField;
    CdsAlmoxAMX_ATIVO: TStringField;
    SqlCdsFichaTecFTC_BASEFORMULA: TIntegerField;
    CdsFichaTecFTC_BASEFORMULA: TIntegerField;
    sqlPrd_lote: TSqlClientDataSet;
    sqlPrd_loteprdl_registro: TIntegerField;
    sqlPrd_lotePRDL_SALDO: TFMTBCDField;
    CdsAlmoxAMX_CNPJ_PART: TStringField;
    SqlCdsAlmoxAMX_CNPJ_PART: TStringField;
    CdsFichaTecFTC_ETAPAS: TBlobField;
    SqlCdsFichaTecFTC_ETAPAS: TBlobField;
    SqlCdsOsvItem: TSQLQuery;
    dspCdsOsvItem: TDataSetProvider;
    CdsOsvItem: TClientDataSet;
    SqlCdsOsvItemEMP_CODIGO: TStringField;
    SqlCdsOsvItemOSI_REGISTRO: TIntegerField;
    SqlCdsOsvItemOSV_CODIGO: TStringField;
    SqlCdsOsvItemPRD_REFER_ITENS: TStringField;
    SqlCdsOsvItemPTI_SIGLA: TStringField;
    SqlCdsOsvItemFALTA_APONTAR: TFMTBCDField;
    SqlCdsOsvItemWSALDO: TFMTBCDField;
    SqlCdsOsvItemOSI_STATUSEMPENHO: TStringField;
    SqlCdsOsvItemPRD_GERENCIA_LOTE: TStringField;
    SqlCdsFichaTecAMX_CODIGO: TStringField;
    CdsFichaTecAMX_CODIGO: TStringField;
    SqlCdsAlmoxEMI_IE: TStringField;
    CdsAlmoxEMI_IE: TStringField;
    SqlCdsAlmoxEMI_CODIGO: TIntegerField;
    CdsAlmoxEMI_CODIGO: TIntegerField;
    SqlCdsAlmoxAMX_NUM_ATO_DECLARATORIO: TStringField;
    SqlCdsAlmoxAMX_VALIDADE_ATO_DECLARATORIO: TDateField;
    CdsAlmoxAMX_NUM_ATO_DECLARATORIO: TStringField;
    CdsAlmoxAMX_VALIDADE_ATO_DECLARATORIO: TDateField;
    procedure CdsICMSAfterInsert(DataSet: TDataSet);
    procedure CdsICMSBeforeEdit(DataSet: TDataSet);
    procedure CdsCentroCustoAfterInsert(DataSet: TDataSet);
    procedure CdsCtAnaliseBeforeEdit(DataSet: TDataSet);
    procedure CdsProCaixaAfterInsert(DataSet: TDataSet);
    procedure CdsProCaixaBeforeEdit(DataSet: TDataSet);
    procedure CdsChequesAfterInsert(DataSet: TDataSet);
    procedure CdsNotaFiscalAfterInsert(DataSet: TDataSet);
    procedure CdsFichaTecnicaBeforeEdit(DataSet: TDataSet);
    procedure CdsCelulaBeforeEdit(DataSet: TDataSet);
    procedure CdsComponentesBeforeEdit(DataSet: TDataSet);
    procedure CdsMetasCalcFields(DataSet: TDataSet);
    procedure CdsMetasBeforeEdit(DataSet: TDataSet);
    procedure CdsCompMetaAfterInsert(DataSet: TDataSet);
    procedure CdsCompMetaCalcFields(DataSet: TDataSet);
    procedure CdsFatorCustosBeforeEdit(DataSet: TDataSet);
    procedure CdsAlmoxBeforePost(DataSet: TDataSet);
    procedure CdsPcpBeforeEdit(DataSet: TDataSet);
    procedure CdsPcpBeforePost(DataSet: TDataSet);
    procedure CdsAlmoxItemAfterInsert(DataSet: TDataSet);
    procedure CdsCelulaBeforePost(DataSet: TDataSet);
    procedure CdsComponentesBeforePost(DataSet: TDataSet);
    procedure CdsMetasBeforePost(DataSet: TDataSet);
    procedure CdsPrevItensBeforePost(DataSet: TDataSet);
    procedure CdsPrevConsumoBeforeEdit(DataSet: TDataSet);
    procedure CdsFichaTecBeforeEdit(DataSet: TDataSet);
    procedure CdsItemFichaBeforePost(DataSet: TDataSet);
    procedure CdsOsvItCalcFields(DataSet: TDataSet);
    procedure CdsMovCelBeforePost(DataSet: TDataSet);
    procedure CdsMovProduzBeforePost(DataSet: TDataSet);
    procedure CdsMovCelBeforeEdit(DataSet: TDataSet);
    procedure CdsOsvBeforeEdit(DataSet: TDataSet);
    procedure CdsAlmoxTempCalcFields(DataSet: TDataSet);
    procedure CdsAlmoxBeforeEdit(DataSet: TDataSet);
    procedure CdsOsvItBeforeOpen(DataSet: TDataSet);
    procedure CdsAlmoxBeforeOpen(DataSet: TDataSet);
  private
         wPmt_UnFormula: integer;
  public
    { Public declarations }
  end;

var
  DmProducao: TDmProducao;

implementation

uses DataCad, ICMS0000, CCT0001, PCX0000, Ftc0001, CEL0001, iniciodb,
  CEL0002, Cel0005, DataCad1, Cus0001, Almox0001, Pcp0001,
  PrevC001, Osv0001, CEL0007, CEL0009, Prd0001, Osv0002;

{$R *.dfm}

procedure TDmProducao.CdsICMSAfterInsert(DataSet: TDataSet);
begin
    DataCadastros.IncrementaRegistro('ICM0000',DataCadastros1.CdsICMSICM_REGISTRO);
end;

procedure TDmProducao.CdsICMSBeforeEdit(DataSet: TDataSet);
begin
  if Assigned(FormAliqICms) then
     FormAliqICms.DesabilitaBotoes;
end;

procedure TDmProducao.CdsCentroCustoAfterInsert(DataSet: TDataSet);
begin
    DataCadastros.IncrementaRegistro('CEC_0000',DataCadastros1.CdsCentroCustoCEC_CODIGO);
end;

procedure TDmProducao.CdsCtAnaliseBeforeEdit(DataSet: TDataSet);
begin
    if Assigned(FormContAnalise) then
       FormContAnalise.DesabilitaBotoes;
end;

procedure TDmProducao.CdsProCaixaAfterInsert(DataSet: TDataSet);
begin
    DataCadastros.IncrementaRegistro('PCX0000',DataCadastros1.CdsProCaixaPCX_CODIGO);
end;

procedure TDmProducao.CdsProCaixaBeforeEdit(DataSet: TDataSet);
begin
   if Assigned(FormProjCaixa) then
      FormProjCaixa.DesabilitaBotoes;
end;

procedure TDmProducao.CdsChequesAfterInsert(DataSet: TDataSet);
begin
//   DataCadastros.IncrementaCodigo('CHQ0000',DataCadastros1.CdsChequesCHQ_CODIGO,'SYSFILE',DataCadastros.CdsSysfileSYS_CHEQUE);
end;

procedure TDmProducao.CdsNotaFiscalAfterInsert(DataSet: TDataSet);
begin
//   DataCadastros.IncrementaCodigo('NF0000',DataCadastros1.CdsNotaFiscalNF_NU_NOTA,'SYSFILE',DataCadastros.CdsSysfileSYS_NFISCAL);
end;

procedure TDmProducao.CdsFichaTecnicaBeforeEdit(DataSet: TDataSet);
begin
    if Assigned(FormFichaTecnica) then
       FormFichaTecnica.DesabilitaBotoes;
end;

procedure TDmProducao.CdsCelulaBeforeEdit(DataSet: TDataSet);
begin
    if Assigned(FormCelula)then
       FormCelula.DesabilitaBotoes;
end;

procedure TDmProducao.CdsComponentesBeforeEdit(DataSet: TDataSet);
begin
    if Assigned(FormComponentes)then
       FormComponentes.DesabilitaBotoes;
end;

procedure TDmProducao.CdsMetasCalcFields(DataSet: TDataSet);
begin
    DmProducao.CdsMetasTUP_AREALIZAR_CC.AsCurrency := ((DmProducao.CdsMetasCME_TUPMETAMES.AsCurrency + DmProducao.CdsMetasCME_TUPNEGATIVO.AsCurrency) - DmProducao.CdsMetasCME_TUPACRECENT.AsCurrency);
end;

procedure TDmProducao.CdsMetasBeforeEdit(DataSet: TDataSet);
begin
    if Assigned(FormMetaProd)then
       begin
           FormMetaProd.DesabilitaBotoes;
           FormMetaProd.EdtAno.Enabled     := False;
           FormMetaProd.EdtAno.Color       := clBtnFace;
           FormMetaProd.EdtMes.Enabled     := False;
           FormMetaProd.EdtMes.Color       := clBtnFace;
           FormMetaProd.EdtCelula.Enabled  := False;
           FormMetaProd.EdtCelula.Color    := clBtnFace;
           FormMetaProd.CbxCelulas.Enabled := False;
           FormMetaProd.CbxCelulas.Color   := clBtnFace;
       end;

end;

procedure TDmProducao.CdsCompMetaAfterInsert(DataSet: TDataSet);
begin
    DataCadastros.IncrementaRegistro('CEL_MTC04',DmProducao.CdsCompMetaCME_REGISTRO);
end;

procedure TDmProducao.CdsCompMetaCalcFields(DataSet: TDataSet);
begin
//    DataModulo.TbCompMetaTOTAL_TUP_CC.Value := DataModulo.TbCompMetaMEC_DIAS.Value*DataModulo.TbCompMetaMEC_TUPDIARIO.Value;
end;

procedure TDmProducao.CdsFatorCustosBeforeEdit(DataSet: TDataSet);
begin
    if Assigned(FormCusto) then
       FormCusto.DesabilitaBotoes;
end;

procedure TDmProducao.CdsAlmoxBeforeOpen(DataSet: TDataSet);
begin
 CdsAlmox.FieldByName('AMX_CNPJ_PART').EditMask := '99\.999\.999\/9999\-99;0;_';
end;

procedure TDmProducao.CdsAlmoxBeforePost(DataSet: TDataSet);
begin
    DataCadastros.IncrementaREgistro('ALMOX0000',CdsAlmoxAMX_CODIGO);
end;

procedure TDmProducao.CdsPcpBeforeEdit(DataSet: TDataSet);
begin
    if Assigned(FormPCPCadastro) then
       FormPCPCadastro.DesabilitaBotoes;
end;

procedure TDmProducao.CdsPcpBeforePost(DataSet: TDataSet);
begin
    DataCadastros.IncrementaREgistro('PCP_SECAO',CdsPcpSEC_CODIGO);
end;

procedure TDmProducao.CdsAlmoxItemAfterInsert(DataSet: TDataSet);
begin
    DataCadastros.IncrementaRegistro('ALMOX_IT01',CdsAlmoxItemAMX_REGISTRO);
end;

procedure TDmProducao.CdsCelulaBeforePost(DataSet: TDataSet);
begin
    DataCadastros.IncrementaRegistro('CEL0000',CdsCelulaCEL_CODIGO);
end;

procedure TDmProducao.CdsComponentesBeforePost(DataSet: TDataSet);
begin
    DataCadastros.IncrementaRegistro('CEL_CP01',CdsComponentesCCP_CODIGO);
end;

procedure TDmProducao.CdsMetasBeforePost(DataSet: TDataSet);
begin
    DataCadastros.IncrementaRegistro('CEL_ME02',CdsMetasCME_REGISTRO);
end;

procedure TDmProducao.CdsPrevItensBeforePost(DataSet: TDataSet);
begin
    DataCadastros.IncrementaREgistro('PSV_IT01',CdsPrevItensPSI_REGISTRO);
end;

procedure TDmProducao.CdsPrevConsumoBeforeEdit(DataSet: TDataSet);
begin
    FormPrevConsumo.IncluirRefe;
end;

procedure TDmProducao.CdsFichaTecBeforeEdit(DataSet: TDataSet);
begin
//    if Assigned(FormFichaTecnica) then
//       FormFichaTecnica.DesabilitaBotoes;
    if Assigned(FormProduto) then
       begin
           FormProduto.DesabilitaBotoesFTC;
           //FormProduto.Tbs_Produtos.TabVisible := False;
       end;
end;

procedure TDmProducao.CdsItemFichaBeforePost(DataSet: TDataSet);
begin
     CdsItemFichaFTI_REGISTRO.AsInteger:=dbInicio.GetNextSequence('GEN_FTC_IT01_REGISTRO');
end;

procedure TDmProducao.CdsOsvItBeforeOpen(DataSet: TDataSet);
begin
     wPmt_UnFormula:=StrToIntDef(dbinicio.getparametrosistema('PMT_UNFORMULA'),0);
end;

procedure TDmProducao.CdsOsvItCalcFields(DataSet: TDataSet);
begin
    if CdsOsvItOSI_QTDE1.AsCurrency >0 then
       CdsOsvItQTDE1_CC.AsCurrency := (CdsOsvItOSI_UC.AsCurrency * CdsOsvItOSI_QTDE1.AsCurrency) / wPmt_UnFormula;
    if CdsOsvItOSI_QTDE2.AsCurrency >0 then
       CdsOsvItQTDE2_CC.AsCurrency := (CdsOsvItOSI_UC.AsCurrency * CdsOsvItOSI_QTDE2.AsCurrency) / wPmt_UnFormula;
    if CdsOsvItOSI_QTDE3.AsCurrency >0 then
       CdsOsvItQTDE3_CC.AsCurrency := (CdsOsvItOSI_UC.AsCurrency * CdsOsvItOSI_QTDE3.AsCurrency) / wPmt_UnFormula;
    if CdsOsvItOSI_QTDE4.AsCurrency >0 then
       CdsOsvItQTDE4_CC.AsCurrency := (CdsOsvItOSI_UC.AsCurrency * CdsOsvItOSI_QTDE4.AsCurrency) / wPmt_UnFormula;
    if CdsOsvItOSI_QTDE5.AsCurrency >0 then
       CdsOsvItQTDE5_CC.AsCurrency := (CdsOsvItOSI_UC.AsCurrency * CdsOsvItOSI_QTDE5.AsCurrency) / wPmt_UnFormula;
    if CdsOsvItOSI_QTDE6.AsCurrency >0 then
       CdsOsvItQTDE6_CC.AsCurrency := (CdsOsvItOSI_UC.AsCurrency * CdsOsvItOSI_QTDE6.AsCurrency) / wPmt_UnFormula;
    if CdsOsvItOSI_QTDE7.AsCurrency >0 then
       CdsOsvItQTDE7_CC.AsCurrency := (CdsOsvItOSI_UC.AsCurrency * CdsOsvItOSI_QTDE7.AsCurrency) / wPmt_UnFormula;
    if CdsOsvItOSI_QTDE8.AsCurrency >0 then
       CdsOsvItQTDE8_CC.AsCurrency := (CdsOsvItOSI_UC.AsCurrency * CdsOsvItOSI_QTDE8.AsCurrency) / wPmt_UnFormula;
end;

procedure TDmProducao.CdsMovCelBeforePost(DataSet: TDataSet);
begin
    DataCadastros.IncrementaRegistro('CEL_MOV03',CdsMovCelCEM_REGISTRO);
end;

procedure TDmProducao.CdsMovProduzBeforePost(DataSet: TDataSet);
begin
    DataCadastros.IncrementaRegistro('CEL_MOV04',CdsMovProduzCEM_REGISTRO);
end;

procedure TDmProducao.CdsMovCelBeforeEdit(DataSet: TDataSet);
begin
    if Assigned(FormEnviaCelula)then
       FormEnviaCelula.DesabilitaBotoes;
    if Assigned(FormManutMovCel) then
       FormManutMovCel.DesabilitaBotoes;
end;

procedure TDmProducao.CdsOsvBeforeEdit(DataSet: TDataSet);
begin
    if Assigned(FormOrdServGera)then
       FormOrdServGera.DesabilitaBotoes;
end;

procedure TDmProducao.CdsAlmoxTempCalcFields(DataSet: TDataSet);
begin
   if CdsAlmoxTempAMX_TIPO.AsString = 'P' then
      CdsAlmoxTempCC_TIPO.AsString := 'Pendente'
   Else
      CdsAlmoxTempCC_TIPO.AsString := 'Separar';

end;

procedure TDmProducao.CdsAlmoxBeforeEdit(DataSet: TDataSet);
begin
    if Assigned(FormCadAlmox) then
       FormCadAlmox.DesabilitaBotoes;
end;

end.




