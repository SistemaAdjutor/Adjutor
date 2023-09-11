unit GImpPaga;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, baseform,
  StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, Db, DBTables,RwFunc,
    Provider, SqlExpr,SqlClientDataSet, DBClient, DBLocal, DBLocalS, ppBands,
  ppCache, ppClass, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport,
  ppModule, raCodMod, ppVar, ppCtrls, ppPrnabl, MIDASLIB,  rxCurrEdit,
  ppParameter, frxClass, frxDBSet, jpeg, frxExportPDF, frxExportXLS,
  Data.DBXFirebird, ppDesignLayer, SimpleDS, Data.FMTBCd, ACBrEnterTab,
  ACBrBase, ACBrCalculadora, ACBrETQ, JvExMask, JvToolEdit, System.StrUtils;

type
  TFormGImpPagar = class(TfrmBase)
    SqlCdsProjCx: TSQLClientDataSet;
    PrinterSetupDialog1: TPrinterSetupDialog;
    SqlCdsFornecedor: TSQLClientDataSet;
    SqlCdsContaAnalise: TSQLClientDataSet;
    SqlCdsFornecedorFOR_CODIGO: TStringField;
    SqlCdsFornecedorFOR_RAZAO: TStringField;
    SqlCdsFornecedorEMP_CODIGO: TStringField;
    SqlCdsContaAnaliseCCT_CODIGO: TStringField;
    SqlCdsContaAnaliseCCT_DESCRI: TStringField;
    SqlCdsContaAnaliseEMP_CODIGO: TStringField;
    SqlCdsProjCxPCX_CODIGO: TStringField;
    SqlCdsProjCxPCX_DESCRI: TStringField;
    SqlCdsProjCxEMP_CODIGO: TStringField;
    SqlCdsPag00: tSimpleDataSet;
    DsPag00: TDataSource;
    ppRPRelConPagar00: TppReport;
    SqlCdsPag00PAG_CODIGO: TStringField;
    SqlCdsPag00PAG_NUMDOC: TStringField;
    SqlCdsPag00PCX_CODIGO: TStringField;
    SqlCdsPag00PPC_NUMER: TStringField;
    SqlCdsPag00PPC_VLPARC: TFMTBCdField;
    SqlCdsPag00PPC_VLPAGO: TFMTBCdField;
    SqlCdsPag00PPC_BANCO: TStringField;
    SqlCdsPag00PPC_OBS: TStringField;
    SqlCdsPag00FOR_CODIGO: TStringField;
    SqlCdsPag00FOR_RAZAO: TStringField;
    SqlCdsPag00PAG_MES_CC: TStringField;
    SqlCdsPag00PPC_VLPAGAR_CC: TCurrencyField;
    SqlCdsPag00PPC_SITPAG: TStringField;
    SqlCdsPag00CCT_CODIGO: TStringField;
    ppPBPagar00: TppDBPipeline;
    SqlCdsCentroCustos: TSQLClientDataSet;
    SqlCdsCentroCustosCEC_CODIGO: TStringField;
    SqlCdsCentroCustosCEC_DESCRI: TStringField;
    SqlCdsCentroCustosEMP_CODIGO: TStringField;
    ppRPRelConPagar01: TppReport;
    ppRPRelConPagar02: TppReport;
    ppDBPagar02: TppDBPipeline;
    DsPag02: TDataSource;
    SqlCdsPag02: TSQLClientDataSet;
    SqlCdsPag02PAG_CODIGO: TStringField;
    SqlCdsPag02PCX_CODIGO: TStringField;
    SqlCdsPag02PPC_VLPARC: TFMTBCdField;
    SqlCdsPag02PPC_VLPAGO: TFMTBCdField;
    SqlCdsPag02PAG_NUMDOC: TStringField;
    SqlCdsPag02CCT_CODIGO: TStringField;
    SqlCdsPag02CCT_DESCRI: TStringField;
    SqlCdsPag02FOR_CODIGO: TStringField;
    SqlCdsPag02FOR_RAZAO: TStringField;
    SqlCdsPag02CCT_PROVISAO: TFMTBCdField;
    pp02HeaderBand1: TppHeaderBand;
    ppLine11: TppLine;
    LBL_02_EMPRESA: TppLabel;
    LBL_02_LTITULO1: TppLabel;
    LBL_02_LTITULO2: TppLabel;
    ppLine12: TppLine;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel29: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel41: TppLabel;
    ppLabel19: TppLabel;
    ppLine13: TppLine;
    ppBandDetail: TppDetailBand;
    ppDBText20: TppDBText;
    ppDBText25: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    pp02SummaryBand1: TppSummaryBand;
    ppGroup7: TppGroup;
    ppGroupHeaderConta: TppGroupHeaderBand;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppLabel20: TppLabel;
    ppDBText35: TppDBText;
    ppLine15: TppLine;
    ppGroupFooterConta: TppGroupFooterBand;
    ppDBText24: TppDBText;
    SqlCdsPag02PPC_VLPAGAR_CC: TCurrencyField;
    ppGroup3: TppGroup;
    ppBandFavorecido: TppGroupHeaderBand;
    ppBandFavor: TppGroupFooterBand;
    ppLine16: TppLine;
    ppDBText26: TppDBText;
    ppDBText31: TppDBText;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppLabel21: TppLabel;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppLabel34: TppLabel;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppLine19: TppLine;
    ppLabel36: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLine17: TppLine;
    SqlCdsPag06: TSQLClientDataSet;
    DsPag06: TDataSource;
    ppDBPagar06: TppDBPipeline;
    ppRPRelConPagar06: TppReport;
    SqlCdsPag06PAG_CODIGO: TStringField;
    SqlCdsPag06PAG_DTEMIS: TSQLTimeStampField;
    SqlCdsPag06PAG_NUMDOC: TStringField;
    SqlCdsPag06PAG_VLNOTA: TFMTBCdField;
    SqlCdsPag06PAG_VL_IPI: TFMTBCdField;
    SqlCdsPag06PAG_ALIQICMS: TFMTBCdField;
    SqlCdsPag06PAG_BASEICMS: TFMTBCdField;
    SqlCdsPag06FOR_CODIGO: TStringField;
    SqlCdsPag06FOR_RAZAO: TStringField;
    SqlCdsPag06PAG_VLNOTA_CC: TFMTBCdField;
    SqlCdsPag06PAG_ICMS_CC: TCurrencyField;
    SqlCdsPag07: TSQLClientDataSet;
    DsPag07: TDataSource;
    ppRPRelConPagar07: TppReport;
    SqlCdsPag07PAG_CODIGO: TStringField;
    SqlCdsPag07OPV_CODIGO: TSmallintField;
    SqlCdsPag07FOR_CODIGO: TStringField;
    SqlCdsPag07FOR_RAZAO: TStringField;
    SqlCdsPag07PAG_DTEMIS: TSQLTimeStampField;
    SqlCdsPag07PAG_NUMDOC: TStringField;
    SqlCdsPag07PAG_VLNOTA: TFMTBCdField;
    SqlCdsPag07PAG_VL_RET: TFMTBCdField;
    SqlCdsPag07PAG_IRPJ_RET: TFMTBCdField;
    SqlCdsPag07PAG_PIS_RET: TFMTBCdField;
    SqlCdsPag07PAG_COFINS_RET: TFMTBCdField;
    SqlCdsPag07PAG_INSS_RET: TFMTBCdField;
    SqlCdsPag07PAG_CONTSOCIAL_RET: TFMTBCdField;
    SqlCdsPag07PAG_BASE_ISS: TFMTBCdField;
    SqlCdsPag07PAG_BASE_INSS: TFMTBCdField;
    SqlCdsPag07PAG_ISS_RET: TFMTBCdField;
    SqlCdsPag07PAG_TLIQUIDO: TCurrencyField;
    ppDBPagar07: TppDBPipeline;
    SqlCdsPag08: TSQLClientDataSet;
    DsPag08: TDataSource;
    ppRPRelConPagar08: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLine14: TppLine;
    LBL_08_EMPRESA: TppLabel;
    LBL_08_LTITULO1: TppLabel;
    LBL_08_LTITULO2: TppLabel;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable12: TppSystemVariable;
    ppDetailBand2: TppDetailBand;
    ppLine29: TppLine;
    ppLabel68: TppLabel;
    ppLine30: TppLine;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppDBCalc36: TppDBCalc;
    ppLabel72: TppLabel;
    SqlCdsPag08PAG_CODIGO: TStringField;
    SqlCdsPag08PPC_NUMER: TStringField;
    SqlCdsPag08PPC_VLPARC: TFMTBCdField;
    SqlCdsPag08PPC_OBS: TStringField;
    SqlCdsPag08PPC_PREVISAO: TStringField;
    SqlCdsPag08PAG_NUMDOC: TStringField;
    SqlCdsPag08FOR_CODIGO: TStringField;
    SqlCdsPag08FOR_RAZAO: TStringField;
    ppDBPagar08: TppDBPipeline;
    ppLabel59: TppLabel;
    ppDBText64: TppDBText;
    SqlCdsPag00PPC_DTEMIS: TSQLTimeStampField;
    SqlCdsPag00PPC_VENCTO: TSQLTimeStampField;
    SqlCdsPag00PPC_PAGTO: TSQLTimeStampField;
    SqlCdsPag02PPC_VENCTO: TSQLTimeStampField;
    SqlCdsPag02PPC_PAGTO: TSQLTimeStampField;
    SqlCdsPag02PPC_DTEMIS: TSQLTimeStampField;
    SqlCdsPag08PPC_DTEMIS: TSQLTimeStampField;
    SqlCdsPag08PPC_VENCTO: TSQLTimeStampField;
    pp00HeaderBand2: TppHeaderBand;
    ppLine5: TppLine;
    LBL_00_EMPRESA: TppLabel;
    LBL_00_LTITULO1: TppLabel;
    LBL_00_LTITULO2: TppLabel;
    ppLine6: TppLine;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLine1: TppLine;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel7: TppLabel;
    pp00DetailBand2: TppDetailBand;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    pp00SummaryBand2: TppSummaryBand;
    ppLabel17: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppLabel18: TppLabel;
    ppDBCalc9: TppDBCalc;
    ppLine10: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel8: TppLabel;
    ppDBText1: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel15: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppLabel16: TppLabel;
    ppDBCalc6: TppDBCalc;
    ppLine9: TppLine;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppLabel12: TppLabel;
    ppDBText2: TppDBText;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel13: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLabel14: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppLine8: TppLine;
    raCodeModule2: TraCodeModule;
    SqlCdsTipos: TSQLClientDataSet;
    SqlCdsTiposOPV_CODIGO: TIntegerField;
    SqlCdsTiposOPV_DESCRICAO: TStringField;
    SqlCdsTiposOPV_TIPO: TStringField;
    SqlCdsPag06OPV_CODIGO: TSmallintField;
    SqlCdsPag06OPV_DESCRICAO: TStringField;
    pp06HeaderBand1: TppHeaderBand;
    ppLine25: TppLine;
    LBL_06_EMPRESA: TppLabel;
    LBL_06_LTITULO1: TppLabel;
    LBL_06_LTITULO2: TppLabel;
    ppLine26: TppLine;
    ppSystemVariable9: TppSystemVariable;
    ppSystemVariable10: TppSystemVariable;
    ppLine27: TppLine;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    pp06DetailBand2: TppDetailBand;
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
    pp06SummaryBand1: TppSummaryBand;
    ppLine28: TppLine;
    ppDBCalc28: TppDBCalc;
    ppDBCalc29: TppDBCalc;
    ppDBCalc30: TppDBCalc;
    ppDBCalc31: TppDBCalc;
    ppGroup4: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppLabel47: TppLabel;
    ppDBText32: TppDBText;
    ppDBText36: TppDBText;
    ppLine18: TppLine;
    ppGroupFooterBand3: TppGroupFooterBand;
    raCodeModule4: TraCodeModule;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppLine21: TppLine;
    ppLabel48: TppLabel;
    ppLabel35: TppLabel;
    ppLabel37: TppLabel;
    SqlCdsPag09: TSQLClientDataSet;
    DsPag09: TDataSource;
    ppRPRelConPagar09: TppReport;
    ppDBPagar09: TppDBPipeline;
    SqlCdsPag09TP_DOC_CC: TStringField;
    SqlCdsPag09PAG_TLIQUIDO_CC: TCurrencyField;
    ppHeaderBand2: TppHeaderBand;
    ppLine20: TppLine;
    LBL_09_EMPRESA: TppLabel;
    LBL_09_LTITULO1: TppLabel;
    LBL_09_LTITULO2: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppLine33: TppLine;
    ppDetailBand1: TppDetailBand;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText65: TppDBText;
    ppDBText82: TppDBText;
    ppDBText87: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLine24: TppLine;
    ppDBCalc26: TppDBCalc;
    ppLabel98: TppLabel;
    ppGroup5: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLabel52: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel76: TppLabel;
    ppLabel84: TppLabel;
    ppLabel49: TppLabel;
    ppDBText88: TppDBText;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppLine34: TppLine;
    ppLabel50: TppLabel;
    ppDBCalc53: TppDBCalc;
    ppLine35: TppLine;
    raCodeModule3: TraCodeModule;
    SqlCdsPag09PAG_CODIGO: TStringField;
    SqlCdsPag09OPV_CODIGO: TSmallintField;
    SqlCdsPag09FOR_CODIGO: TStringField;
    SqlCdsPag09FOR_RAZAO: TStringField;
    SqlCdsPag09PAG_DTEMIS: TSQLTimeStampField;
    SqlCdsPag09PAG_NUMDOC: TStringField;
    SqlCdsPag09PAG_TIPO: TStringField;
    SqlCdsPag09PAG_VLNOTA: TFMTBCdField;
    SqlCdsPag09PAG_VL_IPI: TFMTBCdField;
    SqlCdsPag09PAG_ALIQICMS: TFMTBCdField;
    SqlCdsPag09PAG_BASEICMS: TFMTBCdField;
    SqlCdsPag09PAG_ICMS_CC: TCurrencyField;
    SqlCdsPag09PAG_VLNOTA_CC: TCurrencyField;
    SqlCdsContas: TSQLClientDataSet;
    SqlCdsLanctos: TSQLClientDataSet;
    DsResultado: TDataSource;
    ppRepResultado: TppReport;
    CdsResultado: TClientDataSet;
    SqlCdsContasCCT_NIVEL: TStringField;
    SqlCdsContasCCT_DESCRI: TStringField;
    SqlCdsContasCCT_CONTA: TStringField;
    SqlCdsContasCCT_CODIGO: TStringField;
    SqlCdsContasCCT_STATUS: TStringField;
    SqlCdsContasCCT_PROVISAO: TFMTBCdField;
    SqlCdsLanctosCCT_CODIGO: TStringField;
    SqlCdsLanctosWVLPAGO: TFMTBCdField;
    SqlCdsLanctosWVLPAGAR: TFMTBCdField;
    CdsResultadoNIVEL: TStringField;
    CdsResultadoDESCRICAO: TStringField;
    CdsResultadoPROVISAO: TFloatField;
    CdsResultadoVLPAGAR: TFloatField;
    CdsResultadoVLPAGO: TFloatField;
    CdsResultadoTIPO: TStringField;
    CdsResultadoCCT_CODIGO: TStringField;
    ppDBPResultado: TppDBPipeline;
    ppRPRelConPagar00A: TppReport;
    SqlCdsPag00PAG_MES_PAGTO_CC: TStringField;
    pp07HeaderBand1: TppHeaderBand;
    ppLine38: TppLine;
    LBL_07_EMPRESA: TppLabel;
    LBL_07_LTITULO1: TppLabel;
    LBL_07_LTITULO2: TppLabel;
    ppLine39: TppLine;
    ppSystemVariable15: TppSystemVariable;
    ppSystemVariable16: TppSystemVariable;
    ppLine40: TppLine;
    ppLabel77: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    pp07DetailBand1: TppDetailBand;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppDBText74: TppDBText;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    pp07SummaryBand1: TppSummaryBand;
    ppLine41: TppLine;
    ppDBCalc39: TppDBCalc;
    ppDBCalc40: TppDBCalc;
    ppDBCalc41: TppDBCalc;
    ppDBCalc42: TppDBCalc;
    ppDBCalc43: TppDBCalc;
    ppDBCalc44: TppDBCalc;
    ppDBCalc45: TppDBCalc;
    ppDBCalc32: TppDBCalc;
    ppDBCalc33: TppDBCalc;
    ppDBCalc34: TppDBCalc;
    ppDBCalc35: TppDBCalc;
    ppLabel65: TppLabel;
    raCodeModule5: TraCodeModule;
    ppHeaderBand3: TppHeaderBand;
    ppLine36: TppLine;
    LBL_45_EMPRESA: TppLabel;
    LBL_45_LTITULO1: TppLabel;
    LBL_45_LTITULO2: TppLabel;
    ppSystemVariable13: TppSystemVariable;
    ppSystemVariable14: TppSystemVariable;
    ppLine37: TppLine;
    ppLabel51: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLine42: TppLine;
    ppLabel82: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppSharp: TppShape;
    ppDBTNIVEL: TppDBText;
    ppDBTDESCRI: TppDBText;
    ppDBTPROVI: TppDBText;
    ppDBTPAGAR: TppDBText;
    ppDBTPAGO: TppDBText;
    ppDBTCODIGO: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLineRoda: TppLine;
    ppSummaryBand3: TppSummaryBand;
    pplbltotal: TppLabel;
    ppLineTotal: TppLine;
    ppVarPagar: TppVariable;
    ppVarPago: TppVariable;
    raCodeModule8: TraCodeModule;
    raCodeModule9: TraCodeModule;
    SqlCdsBancos: TSQLClientDataSet;
    SqlCdsBancosBAN_CODIGO: TStringField;
    SqlCdsBancosBAN_APELIDO: TStringField;
    SqlCdsPag00BAN_CODIGO: TStringField;
    SqlCdsPag00BAN_APELIDO: TStringField;
    pp01HeaderBand1: TppHeaderBand;
    ppLine2: TppLine;
    LBL_01_EMPRESA: TppLabel;
    LBL_01_LTITULO1: TppLabel;
    LBL_01_LTITULO2: TppLabel;
    ppLine3: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel27: TppLabel;
    ppLine4: TppLine;
    ppLabel28: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel40: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    pp01DetailBand1: TppDetailBand;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText13: TppDBText;
    pp01SummaryBand1: TppSummaryBand;
    ppLabel32: TppLabel;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppLabel33: TppLabel;
    ppDBCalc12: TppDBCalc;
    ppLine7: TppLine;
    ppGroup9: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppLabel83: TppLabel;
    ppDBText91: TppDBText;
    ppLine49: TppLine;
    ppDBText92: TppDBText;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppLine50: TppLine;
    raCodeModule1: TraCodeModule;
    ppDBCalc52: TppDBCalc;
    ppDBCalc54: TppDBCalc;
    ppLabel85: TppLabel;
    ppDBCalc55: TppDBCalc;
    ppLine51: TppLine;
    ppLabel95: TppLabel;
    ppLabel115: TppLabel;
    ppDBText93: TppDBText;
    SqlCdsPag02PPC_OBS: TStringField;
    ppParameterList1: TppParameterList;
    ppHeaderBand4: TppHeaderBand;
    ppLine43: TppLine;
    LBL_0A_EMPRESA: TppLabel;
    LBL_0A_LTITULO1: TppLabel;
    LBL_0A_LTITULO2: TppLabel;
    ppLine44: TppLine;
    ppSystemVariable17: TppSystemVariable;
    ppSystemVariable18: TppSystemVariable;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLine45: TppLine;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText66: TppDBText;
    ppDBText77: TppDBText;
    ppDBText78: TppDBText;
    ppDBText79: TppDBText;
    ppDBText80: TppDBText;
    ppDBText81: TppDBText;
    ppDBText83: TppDBText;
    ppDBText84: TppDBText;
    ppDBText85: TppDBText;
    ppDBText86: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    ppLabel107: TppLabel;
    ppDBCalc27: TppDBCalc;
    ppDBCalc37: TppDBCalc;
    ppLabel108: TppLabel;
    ppDBCalc38: TppDBCalc;
    ppLine46: TppLine;
    ppGroup6: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppLabel109: TppLabel;
    ppDBText89: TppDBText;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppLabel110: TppLabel;
    ppDBCalc46: TppDBCalc;
    ppDBCalc47: TppDBCalc;
    ppLabel111: TppLabel;
    ppDBCalc48: TppDBCalc;
    ppLine47: TppLine;
    ppGroup8: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppLabel112: TppLabel;
    ppDBText90: TppDBText;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppLabel113: TppLabel;
    ppDBCalc49: TppDBCalc;
    ppDBCalc50: TppDBCalc;
    ppLabel114: TppLabel;
    ppDBCalc51: TppDBCalc;
    ppLine48: TppLine;
    raCodeModule7: TraCodeModule;
    SqlCdsPag00PPC_STATUS: TStringField;
    SqlCdsPag00PPC_JUROS: TFMTBCdField;
    SqlCdsPag00PPC_MULTA: TFMTBCdField;
    SqlCdsPag00PPC_DESCTO: TFMTBCdField;
    SqlCdsPag02PPC_JUROS: TFMTBCdField;
    SqlCdsPag02PPC_MULTA: TFMTBCdField;
    SqlCdsPag02PPC_DESCTO: TFMTBCdField;
    SqlCdsPag11: TSQLClientDataSet;
    DsPag11: TDataSource;
    SqlCdsPag11PPC_VLPARC: TFMTBCdField;
    SqlCdsPag11PPC_VLPAGO: TFMTBCdField;
    SqlCdsPag11FOR_CODIGO: TStringField;
    SqlCdsPag11FOR_RAZAO: TStringField;
    SqlCdsPag11PPC_VLPAGAR_CC: TFMTBCdField;
    ppRPRelConPagar11: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    frxRelConPagar10Novo: TfrxReport;
    frxdbRel10: TfrxDBDataset;
    Panel1: TPanel;
    Group01: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Group02: TGroupBox;
    Label1: TLabel;
    CbFornecedor: TComboBox;
    EdtFor: TEdit;
    Group05: TGroupBox;
    Label2: TLabel;
    CbContaAnalise: TComboBox;
    EdtConta: TEdit;
    Group09: TGroupBox;
    Label4: TLabel;
    CbxTipos: TComboBox;
    EdtTipo: TEdit;
    Group06: TGroupBox;
    RadDetalhada: TRadioButton;
    RadResumida: TRadioButton;
    Group07: TGroupBox;
    LblProjCx: TLabel;
    CbCaixa: TComboBox;
    EdtPcx: TEdit;
    Group10: TGroupBox;
    Label7: TLabel;
    CbTpDocs: TComboBox;
    Group12: TGroupBox;
    Label8: TLabel;
    CbxBanco: TComboBox;
    Group13: TGroupBox;
    rbCabecalho: TRadioButton;
    rbParcela: TRadioButton;
    rbAmbas: TRadioButton;
    Group08: TGroupBox;
    BitConfig: TBitBtn;
    BitOk: TBitBtn;
    BitCancelar: TBitBtn;
    Panel2: TPanel;
    GroupBox6: TGroupBox;
    LTBoxRelatorio: TListBox;
    GroupBox1: TGroupBox;
    RadVideo: TRadioButton;
    RadImpressora: TRadioButton;
    Panel3: TPanel;
    Group03: TGroupBox;
    RadTodas: TRadioButton;
    RadPendente: TRadioButton;
    RadPagas: TRadioButton;
    Group11: TGroupBox;
    Rad_Vencto: TRadioButton;
    Rad_Pagto: TRadioButton;
    radParcial: TRadioButton;
    SqlCdsPag00PPC_VALOR_N_RATEIA: TFMTBCdField;
    ppRPRelConPagar13: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppLine52: TppLine;
    ppLabel116: TppLabel;
    LBL_13_LTITULO2: TppLabel;
    ppLine53: TppLine;
    ppSystemVariable19: TppSystemVariable;
    ppSystemVariable20: TppSystemVariable;
    ppLabel119: TppLabel;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppLabel122: TppLabel;
    ppLabel123: TppLabel;
    ppLabel124: TppLabel;
    ppLine54: TppLine;
    ppLabel125: TppLabel;
    ppLabel126: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppDBText94: TppDBText;
    ppDBText95: TppDBText;
    ppDBText96: TppDBText;
    ppDBText97: TppDBText;
    ppDBText98: TppDBText;
    ppDBText99: TppDBText;
    ppDBText100: TppDBText;
    ppSummaryBand5: TppSummaryBand;
    ppDesignLayers10: TppDesignLayers;
    ppDesignLayer10: TppDesignLayer;
    ppParameterList10: TppParameterList;
    LBL_13_LTITULO1: TppLabel;
    ppLabel129: TppLabel;
    ppLine56: TppLine;
    ppDBCalc60: TppDBCalc;
    ppDBCalc66: TppDBCalc;
    SqlCdsPag00PAG_OBS: TStringField;
    SqlCdsPag00CCT_DESCRI: TStringField;
    ctpgrel14: TfrxReport;
    DBDataset14: TfrxDBDataset;
    SqlCdsPag00CCT_PROVISAO: TFMTBCdField;
    SqlCdsPag00PPC_VLLIQUIDO: TFMTBCdField;
    ppDBPipeline1: TppDBPipeline;
    ppDBText101: TppDBText;
    ppDBCalc56: TppDBCalc;
    ppLabel117: TppLabel;
    ppDBText102: TppDBText;
    SqlCdsPag02PAG_VALOR: TFMTBCDField;
    EditDataI: TJvDateEdit;
    EditDataF: TJvDateEdit;
    Cconta: TEdit;
    cbPeriodo: TComboBox;

    procedure FormShow(Sender: tObject);
    procedure BitOkClick(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
    procedure BitConfigClick(Sender: tObject);
    procedure EditDataFExit(Sender: tObject);
    procedure EditDataIExit(Sender: tObject);
    procedure CbFornecedorClick(Sender: tObject);
    procedure CbContaAnaliseClick(Sender: tObject);
    procedure CbCaixaClick(Sender: tObject);
    procedure LTBoxRelatorioClick(Sender: tObject);
    procedure SqlCdsPag00CalcFields(DataSet: TDataSet);
    procedure pp01HeaderBand1BeforePrint(Sender: tObject);
    procedure SqlCdsPag02CalcFields(DataSet: TDataSet);
    procedure pp02HeaderBand1BeforePrint(Sender: tObject);
    procedure pp06HeaderBand1BeforePrint(Sender: tObject);
    procedure SqlCdsPag06CalcFields(DataSet: TDataSet);
    procedure LTBoxRelatorioDblClick(Sender: tObject);
    procedure pp07HeaderBand1BeforePrint(Sender: tObject);
    procedure SqlCdsPag07CalcFields(DataSet: TDataSet);
    procedure ppHeaderBand1BeforePrint(Sender: tObject);
    procedure pp00HeaderBand2BeforePrint(Sender: tObject);
    procedure CbxTiposClick(Sender: tObject);
    procedure SqlCdsPag09CalcFields(DataSet: TDataSet);
    procedure EdtForExit(Sender: tObject);
    procedure EdtContaExit(Sender: tObject);
    procedure EdtTipoExit(Sender: tObject);
    procedure EdtPcxExit(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure ppDBTNIVELPrint(Sender: tObject);
    procedure ppSharpPrint(Sender: tObject);
    procedure pplbltotalPrint(Sender: tObject);
    procedure ppVarPagarCalc(Sender: tObject; var Value: Variant);
    procedure ppHeaderBand4BeforePrint(Sender: tObject);
    procedure RadTodasClick(Sender: tObject);
    procedure CcontaExit(Sender: tObject);
    procedure CbxBancoClick(Sender: tObject);
    procedure ppRPRelConPagar11GetValue(const VarName: String;
      var Value: Variant);
    procedure frxRelConPagar10NovoGetValue(const VarName: String;
      var Value: Variant);
    procedure ppRPRelConPagar00BeforePrint(Sender: tObject);
    procedure ppDBText101GetText(Sender: tObject; var Text: string);
    procedure ppDBCalc59GetText(Sender: tObject; var Text: string);
    procedure paginaGetText(Sender: TObject; var Text: string);
  private
    PathNewRel :STRING;
    vlLiqTotal :currency ;
    vlLiqTotalG :currency ;
    vlLiqTotalM :currency ;
    wVlPagar,wVlPago : Real;
    sTituloRelatorio,
    sFiltroRelatorio:String;
    procedure LayOutRelatorio;
    procedure LayOutFiltro;
    procedure BuscaConta;
  public
    { Public declarations }
  end;

var  FormGImpPagar: TFormGImpPagar;

implementation

{$R *.DFM}

uses Uteis, DataCad, DataCad1, Men0001, ufrmpreviewrb, iniciodb;


procedure TFormGImpPagar.FormShow(Sender: tObject);
begin
    INHERITED;
    screen.cursor := crHourGlass;
    try
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('PARAMETROS','SELECT P1.PMT_PROJCX FROM PRMT0001 P1','','EMP_CODIGO','P1.');
      DataCadastros.sqlUpdate.Open;
      if DataCadastros.sqlUpdate.FieldByName('PMT_PROJCX').AsString = 'S' then
         begin
             LblProjCx.Enabled := True;
             CbCaixa.Enabled   := True;
         end;
      DataCadastros.sqlUpdate.Close;
      //
      SqlCdsFornecedor.Close;
      SqlCdsFornecedor.CommandText := SQLDEF('FORNECEDORES','SELECT FOR_CODIGO,FOR_RAZAO,EMP_CODIGO FROM FOR0000','','FOR_RAZAO','');
      SqlCdsFornecedor.Open;
      SqlCdsFornecedor.First;
      while not SqlCdsFornecedor.Eof do
        begin
            CbFornecedor.Items.Add(SqlCdsFornecedorFOR_RAZAO.AsString);
            SqlCdsFornecedor.Next;
        end;
      //
      SqlCdsContaAnalise.Close;
      SqlCdsContaAnalise.CommandText := SQLDEF('TABELAS','SELECT CCT_CODIGO,CCT_DESCRI,EMP_CODIGO FROM CCT_0000','','CCT_DESCRI','');
      SqlCdsContaAnalise.Open;
      SqlCdsContaAnalise.First;
      while not SqlCdsContaAnalise.Eof do
        begin
            CbContaAnalise.Items.Add(SqlCdsContaAnaliseCCT_DESCRI.AsString);
            SqlCdsContaAnalise.Next;
        end;
      //
      SqlCdsProjCx.Close;
      SqlCdsProjCx.CommandText := SQLDEF('TABELAS','select PCX_CODIGO, PCX_DESCRI, EMP_CODIGO FROM PCX0000','','PCX_DESCRI','');
      SqlCdsProjCx.Open;
      SqlCdsProjCx.First;
      while not SqlCdsProjCx.Eof do
        begin
            CbCaixa.Items.Add(SqlCdsProjCxPCX_DESCRI.AsString);
            SqlCdsProjCx.Next;
        end;
      //
      SqlCdsTipos.Close;
      SqlCdsTipos.CommandText := SQLDEF('TABELAS','SELECT OPV_CODIGO,OPV_DESCRICAO,OPV_TIPO FROM OPV0000 ','WHERE OPV_TIPO = ''E''','OPV_DESCRICAO','');
      SqlCdsTipos.Open;
      SqlCdsTipos.First;
      CbxTipos.Items.Clear;
      CbxTipos.Items.add('TODOS');
      while not SqlCdsTipos.Eof do
       begin
           CbxTipos.Items.Add(SqlCdsTiposOPV_DESCRICAO.AsString);
           SqlCdsTipos.Next;
       end;
      CbxTipos.ItemIndex := 0;
      {Carregar a Combo Conta}
      SqlCdsBancos.Close;
      SqlCdsBancos.CommandText := SQLDEF('BANCOS','Select BAN_CODIGO,BAN_APELIDO from BAN0000 ','','BAN_APELIDO','');
      SqlCdsBancos.Open;
      SqlCdsBancos.First;
      CbxBanco.Items.Clear;
      CbxBanco.Items.add('TODOS');
      while not SqlCdsBancos.Eof do
       begin
           CbxBanco.Items.Add(SqlCdsBancosBAN_APELIDO.AsString);
           SqlCdsBancos.Next;
       end;
      CbxBanco.ItemIndex := 0;
    except on E:EdataBaseError do
       uteis.erro  (pchar('Erro ao carregar as combos ! '+#13#10+
                  'Mensagem erro: '+e.message));
    end;
    screen.cursor := crDefault;
    // carregar comb com nome dos relatórios
    LTBoxRelatorio.Items.Add('Relatório de Controle de Contas à Pagar          '); //00
    LTBoxRelatorio.Items.Add('Relatório de Contas à pagar                      '); //01
    LTBoxRelatorio.Items.Add('Relatório de despesas por Contas [Realizado]     '); //02
    LTBoxRelatorio.Items.Add('Relatório de despesas por Contas [Previsto]      '); //03
    LTBoxRelatorio.Items.Add('Plano de contas - despesas - realizado   '); //04
    LTBoxRelatorio.Items.Add('Plano de contas - despesas - previsto    '); //05
    LTBoxRelatorio.Items.Add('-------------------------------------------------'); //06 Listagem das Entradas no Pagar por Tipo
    LTBoxRelatorio.Items.Add('Relatório de Notas de Serviços com Retenção      '); //07
    LTBoxRelatorio.Items.Add('Relatório de Contas à Pagar Definida como Previsão'); //08
    LTBoxRelatorio.Items.Add('Relatório de Contas a Pagar por tipo de Documento '); //09
    LTBoxRelatorio.Items.Add('Relatório de Contas a Pagar por Fornecedor - Analítico'); //10
    LTBoxRelatorio.Items.Add('Relatório de Contas a Pagar por Fornecedor - Sintético '); //11
    LTBoxRelatorio.Items.Add('-------------------------------------------------'); //12
    LTBoxRelatorio.Items.Add('Relatório de Contas a Pagar por Co-Participação '); //13
    LTBoxRelatorio.Items.Add('Relatório de Contas a Pagar Analítico/Gerencial '); //14
    LTBoxRelatorio.ItemIndex := 0;  // seta no primeiro item
    // valores de datas pré-atribuido
    EditDataI.Date := now;      // data de hoje
    EditDataF.Date := now+15;  // hoje + 15 dias
    Radtodas.Checked := True;
    RadDetalhada.Checked := True;
    LayOutRelatorio;
    LayOutFiltro;
    screen.cursor := crDefault;
end;

procedure TFormGImpPagar.BitOkClick(Sender: tObject);
Var
  wNivel, sObsTmp :String;
begin
    wSql1      := '';
    wSql2      := '';
    wSql3      := '';
    wSeleciona := '';
    wOrdem     := '';
    // verifica se a data final é maior que a data inicial
    if EditDataI.Date > EditDataF.Date then
    begin
           uteis.erro  ('Data final não pode ser menor que a data inicial!');
           EditDataF.Setfocus;
    end
    else
    begin
          if (LTBoxRelatorio.ItemIndex in [ 0,1,10,11,13,14]) then
          begin
               LBL_00_LTITULO1.Caption := '';
               LBL_0A_LTITULO1.Caption := '';

               if RadTodas.checked  then
               Begin                   // ' + iif(cbPeriodo.ItemIndex = 0, 'PPC_VENCTO', 'PPC_DTEMIS') + '
                    wSeleciona := 'WHERE P2.' + iif(cbPeriodo.ItemIndex = 0, 'PPC_VENCTO', 'PPC_DTEMIS') + ' BETWEEN '''+DataAmericana(EditDataI.Text)+''' AND '''+DataAmericana(EditDataF.Text)+'''';
                    LBL_00_LTITULO2.Caption := 'Contas à Pagar e Pagas';
                    LBL_0A_LTITULO2.Caption := 'Contas à Pagar e Pagas';
                    LBL_01_LTITULO2.Caption := 'Contas à Pagar';
               end
               else
               if RadParcial.checked then
               Begin
                    if (Rad_Vencto.checked ) then
                       wSeleciona := 'WHERE P2.' + iif(cbPeriodo.ItemIndex = 0, 'PPC_VENCTO', 'PPC_DTEMIS') + ' BETWEEN '''+DataAmericana(EditDataI.Text)+''' AND '''+DataAmericana(EditDataF.Text)+''' AND P2.PPC_SITPAG='+quotedstr('P')+' AND P2.PPC_VLPAGO < P2.PPC_VLPARC AND (PPC_PAGTO IS NOT NULL)'
                    else
                        wSeleciona := 'WHERE P2.PPC_PAGTO BETWEEN '''+DataAmericana(EditDataI.Text)+''' AND '''+DataAmericana(EditDataF.Text)+''' AND P2.PPC_SITPAG='+quotedstr('P')+' AND P2.PPC_VLPAGO < P2.PPC_VLPARC AND (PPC_PAGTO IS NOT NULL)';
                    LBL_00_LTITULO2.Caption := 'Contas à Pagar Parcialmente Pagas';
                    LBL_0A_LTITULO2.Caption := 'Contas à Pagar Parcialmente Pagas';
                    LBL_01_LTITULO2.Caption := 'Contas Parcialmente Pagas';
               end
               else
               if RadPendente.checked  then
               Begin
                    wSeleciona := 'WHERE P2.' + iif(cbPeriodo.ItemIndex = 0, 'PPC_VENCTO', 'PPC_DTEMIS') + ' BETWEEN '''+DataAmericana(EditDataI.Text)+''' AND '''+DataAmericana(EditDataF.Text)+''' AND P2.PPC_SITPAG = ''P''';
                    LBL_00_LTITULO2.Caption := 'Contas Pendentes';
                    LBL_0A_LTITULO2.Caption := 'Contas Pendentes';
                    LBL_01_LTITULO2.Caption := 'Contas Pendentes';
               end
               else
               if RadPagas.checked  then
               Begin
                    if (Rad_Vencto.checked ) then
                       wSeleciona := 'WHERE P2.' + iif(cbPeriodo.ItemIndex = 0, 'PPC_VENCTO', 'PPC_DTEMIS') + ' BETWEEN '''+DataAmericana(EditDataI.Text)+''' AND '''+DataAmericana(EditDataF.Text)+''' AND P2.PPC_SITPAG=''L'''
                    else
                       wSeleciona := 'WHERE P2.PPC_PAGTO BETWEEN '''+DataAmericana(EditDataI.Text)+''' AND '''+DataAmericana(EditDataF.Text)+''' AND P2.PPC_SITPAG=''L''';
                    LBL_00_LTITULO2.Caption := 'Contas Pagas';
                    LBL_0A_LTITULO2.Caption := 'Contas Pagas';
                    LBL_01_LTITULO2.Caption := 'Contas Pagas';
               end;

               if LTBoxRelatorio.ItemIndex in [0,13,14] then
               begin
                    if (RadPagas.checked ) then
                    begin
                         if (Rad_Vencto.checked ) then
                            wOrdem := 'P2.' + iif(cbPeriodo.ItemIndex = 0, 'PPC_VENCTO', 'PPC_DTEMIS') + ',FOR_RAZAO, P2.PPC_PAGTO'
                         else
                         if (Rad_Pagto.checked ) then
                            wOrdem := 'P2.PPC_PAGTO,FOR_RAZAO, P2.' + iif(cbPeriodo.ItemIndex = 0, 'PPC_VENCTO', 'PPC_DTEMIS') + '';
                    end
                    else
                        wOrdem := 'P2.' + iif(cbPeriodo.ItemIndex = 0, 'PPC_VENCTO', 'PPC_DTEMIS') + ',FOR_RAZAO, P2.PPC_PAGTO';
               end
               Else
               if (LTBoxRelatorio.ItemIndex = 1) then
               begin
                    if (RadPagas.checked ) then
                    begin
                         if (Rad_Vencto.checked ) then
                            wOrdem := 'P2.BAN_CODIGO,P2.' + iif(cbPeriodo.ItemIndex = 0, 'PPC_VENCTO', 'PPC_DTEMIS') + ',FOR_RAZAO,P2.PPC_PAGTO'
                         else
                         if (Rad_Pagto.checked ) then
                            wOrdem := 'P2.BAN_CODIGO,P2.PPC_PAGTO,FOR_RAZAO,P2.' + iif(cbPeriodo.ItemIndex = 0, 'PPC_VENCTO', 'PPC_DTEMIS') + '';
                    end
                    else
                        wOrdem := 'P2.BAN_CODIGO,P2.' + iif(cbPeriodo.ItemIndex = 0, 'PPC_VENCTO', 'PPC_DTEMIS') + ',FOR_RAZAO,P2.PPC_PAGTO';
               end
               Else
               if (LTBoxRelatorio.ItemIndex = 10) then
               begin
                    if (RadPagas.checked ) then
                    begin
                         if (Rad_Vencto.checked ) then
                            wOrdem := 'FOR_RAZAO, P2.FOR_CODIGO ASC, P2.' + iif(cbPeriodo.ItemIndex = 0, 'PPC_VENCTO', 'PPC_DTEMIS') + ', P2.PPC_VLPARC desc'
                         else
                         if (Rad_Pagto.checked ) then
                            wOrdem := 'FOR_RAZAO, P2.FOR_CODIGO ASC, P2.PPC_PAGTO, P2.PPC_VLPARC desc';
                    end
                    else
                        wOrdem := 'FOR_RAZAO, P2.FOR_CODIGO ASC, P2.' + iif(cbPeriodo.ItemIndex = 0, 'PPC_VENCTO', 'PPC_DTEMIS') + ', P2.PPC_VLPARC desc';
               end
               Else
               if (LTBoxRelatorio.ItemIndex = 11) then
                  wOrdem := 'group by F1.FOR_RAZAO, P2.FOR_CODIGO order by F1.FOR_RAZAO asc, sum(P2.PPC_VLPARC) desc';

               if (EdtFor.Text<>'9999') then
                  wSeleciona := wSeleciona + ' AND P2.FOR_CODIGO = '''+EdtFor.Text+'''';

               if (Group12.Visible) then
               begin
                    if (StrToIntDef(Cconta.text,0) <> 9999) then
                       wSeleciona := wSeleciona + ' AND P2.BAN_CODIGO = '''+StrZero(Cconta.Text,4)+'''';
               end;

               IF (LTBoxRelatorio.ItemIndex = 14) THEN
                 if (EdtConta.Text<>'999') then
                    wSeleciona := wSeleciona + ' AND P2.CCT_CODIGO = '''+EdtConta.Text+'''';
          end
          Else
          if (LTBoxRelatorio.ItemIndex = 2) or (LTBoxRelatorio.ItemIndex = 3) then    // RELATÓRIO ppRPRelConPagar02
          begin
                 if (LTBoxRelatorio.ItemIndex = 3) then
                    wSeleciona := 'WHERE P2.' + iif(cbPeriodo.ItemIndex = 0, 'PPC_VENCTO', 'PPC_DTEMIS') + ' BETWEEN '''+DataAmericana(EditDataI.Text)+''' AND '''+DataAmericana(EditDataF.Text)+''''
                 else
                 if (LTBoxRelatorio.ItemIndex = 2) then
                    wSeleciona := 'WHERE T1.PAG_DATA_PAGAMENTO BETWEEN '''+DataAmericana(EditDataI.Text)+''' AND '''+DataAmericana(EditDataF.Text)+'''';

                 if (EdtConta.Text<>'999') then
                 begin
                        if (LTBoxRelatorio.ItemIndex = 2) then
                               wSeleciona := wSeleciona + ' AND P2.CCT_CODIGO = '''+EdtConta.Text+''' AND P2.PPC_SITPAG=''L'''
                        else
                               wSeleciona := wSeleciona + ' AND P2.CCT_CODIGO = '''+EdtConta.Text+'''';
                 end
                 else
                 if (LTBoxRelatorio.ItemIndex = 2) then
                    wSeleciona := wSeleciona + ' AND P2.PPC_SITPAG=''L''';

                 if RadDetalhada.checked  then
                 begin
                        if (LTBoxRelatorio.ItemIndex = 2) then
                           LBL_02_LTitulo1.Caption := 'CONSOLIDAÇÃO DE DESPESAS POR CONTAS (Realizado) - DETALHADA'
                        else
                           LBL_02_LTitulo1.Caption := 'CONSOLIDAÇÃO DE DESPESAS POR CONTAS (Previsto) - DETALHADA';
                        ppBandFavor.Visible := False;
                        ppBandDetail.Visible:= True;
                        wOrdem :='P2.CCT_CODIGO, P2.' + iif(cbPeriodo.ItemIndex = 0, 'PPC_VENCTO', 'PPC_DTEMIS') + ', FOR_RAZAO';
                 end
                 else
                 begin
                        if (LTBoxRelatorio.ItemIndex = 2) then
                           LBL_02_LTitulo1.Caption := 'CONSOLIDAÇÃO DE DESPESAS POR CONTAS (Realizado) - RESUMIDA'
                        else
                           LBL_02_LTitulo1.Caption := 'CONSOLIDAÇÃO DE DESPESAS POR CONTAS (Previsto) - RESUMIDA';
                        ppBandFavor.Visible := True;
                        ppBandDetail.Visible:= False;
                        wOrdem :='P2.CCT_CODIGO, FOR_RAZAO, P2.FOR_CODIGO';
                 end;
                   if (rbCabecalho.Checked) then
                      sObsTmp := 'T5.PAG_OBS'
                   else
                   if (rbParcela.Checked) then
                      sObsTmp := 'P2.PPC_OBS'
                   else
                       sObsTmp := 'COALESCE(T5.PAG_OBS,'''')||'' ''||COALESCE(p2.PPC_OBS,'''')';

                 if (LTBoxRelatorio.ItemIndex = 2) then    // busca pelo Pagamento (realizado)
                   begin
                     wSql1 := 'SELECT (T1.pag_valor + T1.PAG_JUROS) as pag_valor, P2.PAG_CODIGO, '+sObsTmp+' as PPC_OBS,P2.PPC_VENCTO,P2.PPC_VLPARC,P2.PPC_VLPAGO,P2.PPC_PAGTO,P2.PCX_CODIGO,P2.PPC_DTEMIS, P2.ppc_juros, P2.ppc_multa, P2.ppc_descto, ';
                     wSql2 := 'P2.PAG_NUMDOC,P2.CCT_CODIGO,C1.CCT_DESCRI,C1.CCT_PROVISAO,P2.FOR_CODIGO,F1.FOR_RAZAO FROM PAG_PAGAMENTO T1 left join PAG_PC01 P2 on P2.pag_registro = T1.pag_registro  ';
                     wSql3 := 'JOIN PAG0000 T5 ON (T5.PAG_CODIGO = P2.PAG_CODIGO AND P2.EMP_CODIGO = T5.EMP_CODIGO) JOIN CCT_0000 C1 ON P2.CCT_CODIGO = C1.CCT_CODIGO JOIN FOR0000 F1 ON P2.FOR_CODIGO = F1.FOR_CODIGO';
                   end
                  else
                  begin          // ao considera pagamento somente o vencimento (previsto)
                     wSql1 := 'SELECT P2.PAG_CODIGO, '+sObsTmp+' as PPC_OBS,P2.PPC_VENCTO,P2.PPC_VLPARC,P2.PPC_VLPAGO,P2.PPC_PAGTO,P2.PCX_CODIGO,P2.PPC_DTEMIS, P2.ppc_juros, P2.ppc_multa, P2.ppc_descto, ';
                     wSql2 := 'P2.PAG_NUMDOC,P2.CCT_CODIGO,C1.CCT_DESCRI,C1.CCT_PROVISAO,P2.FOR_CODIGO,F1.FOR_RAZAO,P2.PPC_VLPARC as pag_valor FROM PAG_PC01 P2 ';
                     wSql3 := 'JOIN PAG0000 T5 ON (T5.PAG_CODIGO = P2.PAG_CODIGO AND P2.EMP_CODIGO = T5.EMP_CODIGO) JOIN CCT_0000 C1 ON P2.CCT_CODIGO = C1.CCT_CODIGO JOIN FOR0000 F1 ON P2.FOR_CODIGO = F1.FOR_CODIGO';
                   end;
                  //
                   wSeleciona := wSeleciona + ' AND P2.PPC_EXCLUSAO = ''N''';
                   //
                   SqlCdsPag02.Close;
                   SqlCdsPag02.CommandText := SQLDEF('PAGAR',wSql1+wSql2+wSql3,wSeleciona,wOrdem,'P2.');
                   SqlCdsPag02.Open;


          end
          Else
          if (LTBoxRelatorio.ItemIndex = 4) or (LTBoxRelatorio.ItemIndex = 5) then
          begin
                 Screen.Cursor := crHourGlass;
                 try

                   if (RadResumida.Checked) then
                          wSeleciona := 'WHERE C1.CCT_STATUS = ''T'' AND C1.CCT_CONTA = ''S'''
                   else
                          wSeleciona := 'WHERE C1.CCT_CONTA = ''S''';

                   {Abre a Tabela de Contas Caixa}
                   wSql1 := 'SELECT C1.CCT_NIVEL,C1.CCT_DESCRI,C1.CCT_CONTA,C1.CCT_CODIGO,C1.CCT_STATUS,C1.CCT_PROVISAO FROM CCT_0000 C1 ';
                   wOrdem:= 'C1.CCT_NIVEL ';
                   SqlCdsContas.Close;
                   SqlCdsContas.CommandText := SQLDEF('PLANODECONTAS',wSql1,wSeleciona,wOrdem,'C1.');
                   SqlCdsContas.Open;
                   SqlCdsContas.First;
                   if not (CdsResultado.Active) then
                      CdsResultado.CreateDataSet;
                   CdsResultado.EmptyDataSet;
                   SqlCdsContas.DisableControls;
                   while not SqlCdsContas.eof do
                   begin
                        wNivel := SqlCdsContasCCT_NIVEL.AsString;
                        {Busca os lancamentos }
                        if (LTBoxRelatorio.ItemIndex = 4) then
                               {Realizado - Data Pagamento}
                               wSeleciona := 'WHERE P1.PPC_PAGTO BETWEEN '''+DataAmericana(EditDataI.Text)+''' AND '''+DataAmericana(EditDataF.Text)+''' AND P1.PPC_SITPAG = ''L''';

                        if (LTBoxRelatorio.ItemIndex = 5) then
                               {Realizado - Data Vencimento}
                               wSeleciona := 'WHERE P1.' + iif(cbPeriodo.ItemIndex = 0, 'PPC_VENCTO', 'PPC_DTEMIS') + ' BETWEEN '''+DataAmericana(EditDataI.Text)+''' AND '''+DataAmericana(EditDataF.Text)+'''';

                        wSql1 := 'SELECT P1.CCT_CODIGO,C1.CCT_NIVEL,SUM(P1.PPC_VLPARC - PPC_DESCTO + PPC_JUROS + PPC_MULTA - P1.PPC_VLPAGO) AS WVLPAGAR,SUM(P1.PPC_VLPAGO) AS WVLPAGO FROM PAG_PC01 P1 JOIN CCT_0000 C1 ON (C1.CCT_CODIGO = P1.CCT_CODIGO) ';
                        wSql2 := 'GROUP BY P1.CCT_CODIGO,C1.CCT_NIVEL ';
                        if Share('PAGAR')= 'E' then
                           wSeleciona := wSeleciona + ' AND P1.EMP_CODIGO = '''+dbInicio.Empresa.EMP_CODIGO+'''';

                        wSeleciona := wSeleciona +' AND C1.CCT_NIVEL LIKE '''+SqlCdsContasCCT_NIVEL.AsString+'%''';
                        wOrdem:= ' ORDER BY C1.CCT_NIVEL';
                        {Projeto caixa}
                        if (EdtPcx.Text<>'999') then
                           wSeleciona := wSeleciona + 'AND P1.PCX_CODIGO = '''+EdtPcx.Text+'''';
                        //
                        //
                        wSeleciona := wSeleciona + ' AND P1.PPC_EXCLUSAO = ''N''';
                        //
                        {Busca o Lancamento Referente a Conta}
                        SqlCdsLanctos.Close;
                        SqlCdsLanctos.CommandText := wSql1+wSeleciona+wSql2+wOrdem;
                        SqlCdsLanctos.Open;

                        CdsResultado.Append;
                        CdsResultadoNIVEL.AsString     := SqlCdsContasCCT_NIVEL.AsString;
                        CdsResultadoCCT_CODIGO.AsString:= SqlCdsContasCCT_CODIGO.AsString;
                        CdsResultadoDESCRICAO.AsString := SqlCdsContasCCT_DESCRI.AsString;
                        CdsResultadoTIPO.AsString      := SqlCdsContasCCT_STATUS.AsString;
                        CdsResultadoPROVISAO.AsFloat   := SqlCdsContasCCT_PROVISAO.AsFloat;
                        wVlPagar := 0;
                        wVlPago  := 0;
                        SqlCdsLanctos.First;
                        SqlCdsLanctos.DisableControls;
                        while not SqlCdsLanctos.Eof do
                        begin
                             wVlPagar := wVlPagar + SqlCdsLanctosWVLPAGAR.AsFloat;
                             wVlPago  := wVlPago  + SqlCdsLanctosWVLPAGO.AsFloat;
                             SqlCdsLanctos.Next;
                        end;
                        SqlCdsLanctos.EnableControls;
                        CdsResultadoVLPAGAR.AsFloat := wVlPagar; //WwSqlCdsLanctosWVLPAGAR.AsFloat;
                        CdsResultadoVLPAGO.AsFloat  := wVlPago;  //SqlCdsLanctosWVLPAGO.AsFloat;
                         if (CdsResultadoPROVISAO.AsFloat > 0 ) or
                            (wVlPagar >0) or (wVlPago >0) then
                            CdsResultado.Post
                        else
                           CdsResultado.Cancel;
                        SqlCdsContas.Next;
                   end;
                   SqlCdsContas.EnableControls;
                   CdsResultado.First;

                   LBL_45_EMPRESA.Caption  := dbInicio.Empresa.RAZAO;
                   if (RadDetalhada.checked ) then
                   begin
                          if (LTBoxRelatorio.ItemIndex=4) then
                             LBL_45_LTitulo1.Caption := 'PLANO DE CONTAS - DESPESAS (ANALÍTICO)-[REALIZADO]';
                          if (LTBoxRelatorio.ItemIndex=5) then
                             LBL_45_LTitulo1.Caption := 'PLANO DE CONTAS - DESPESAS (ANALÍTICO)-[PREVISTO]';
                   end
                   else
                   begin
                         if (LTBoxRelatorio.ItemIndex=4) then
                            LBL_45_LTitulo1.Caption := 'PLANO DE CONTAS - DESPESAS (SINTÉTICO)-[REALIZADO]';
                         if (LTBoxRelatorio.ItemIndex=5) then
                            LBL_45_LTitulo1.Caption := 'PLANO DE CONTAS - DESPESAS (SINTÉTICO)-[PREVISTO]';
                   end;
                   LBL_45_LTITULO2.Caption := 'Período : '+EditDataI.Text+' até '+EditDataF.Text;
                   if RadVideo.checked  then
                      ppRepResultado.DeviceType := 'Screen'
                   else
                   if RadImpressora.checked  then
                      ppRepResultado.DeviceType := 'Printer';
                   ppRepResultado.TextFileName := PathNewRel+'\RELANALISEREALIZADO';
                   RBuilderPreview( ppRepResultado );

                 except on E:EdataBaseError do
                     uteis.erro  (pchar('Erro ao abrir as tabelas ! '+e.message));
                 end;
                 Screen.Cursor := crDefault;
          end;

          if (EdtPcx.Text<>'999') then
          begin
                 wSeleciona := wSeleciona + ' AND P2.PCX_CODIGO = '''+EdtPcx.Text+'''';
          end;

          if (LTBoxRelatorio.ItemIndex in [0,1,10,13,14]) then
          begin
                   wSql1 := 'select P2.PAG_CODIGO, P2.PPC_DTEMIS, P2.PAG_NUMDOC, P2.PCX_CODIGO, P2.PPC_NUMER, P2.PPC_VENCTO,'+
                            '       P2.PPC_VLPARC, P2.PPC_JUROS, P2.PPC_MULTA, P2.PPC_DESCTO, P2.PPC_VLPAGO, P2.PPC_PAGTO, P2.PPC_SITPAG,'+
                            '       P2.PPC_BANCO, P2.BAN_CODIGO, P2.PPC_STATUS, B1.BAN_APELIDO, P2.PPC_OBS, P2.FOR_CODIGO, F1.FOR_RAZAO,'+
                            '       P2.PPC_VALOR_N_RATEIA, PG.PAG_OBS, PG.CCT_CODIGO, CT.CCT_DESCRI, CT.cct_provisao, '+
                            '       ( P2.PPC_VLPARC - P2.PPC_VALOR_N_RATEIA) AS PPC_VLLIQUIDO ';

                   wSql2 := '';

                   wSql3 := 'FROM PAG_PC01 P2' +
                            '     join PAG0000 PG on PG.PAG_CODIGO = P2.PAG_CODIGO AND PG.EMP_CODIGO = '''+dbInicio.Empresa.EMP_CODIGO+''''+
                            '     left join CCT_0000 CT on CT.CCT_CODIGO = PG.CCT_CODIGO'+
                            '     LEFT JOIN FOR0000 F1 ON (P2.FOR_CODIGO = F1.FOR_CODIGO)'+
                            '     LEFT JOIN BAN0000 B1 ON (B1.BAN_CODIGO = P2.BAN_CODIGO)';
                   //
                   wSeleciona := wSeleciona + ' AND P2.PPC_EXCLUSAO = ''N''';
                   if (LTBoxRelatorio.ItemIndex = 13)  then
                      wSeleciona:=wSeleciona+' and Coalesce(P2.PPC_VALOR_N_RATEIA,0)<>0';
                   //
                   SqlCdsPag00.Close;
                   SqlCdsPag00.dataset.commandtext := SQLDEF('PAGAR',wSql1+wSql2+wSql3,wSeleciona,wOrdem,'P2.');
                   SqlCdsPag00.Open;
          end
          Else
          if (LTBoxRelatorio.ItemIndex = 11) then
          begin
             try
               wSql1 := 'SELECT sum(P2.PPC_VLPARC) as PPC_VLPARC,sum(P2.PPC_VLPAGO) as PPC_VLPAGO,';
               wSql2 := '(sum(COALESCE(P2.PPC_VLPARC,0)) - sum(COALESCE(P2.PPC_VLPAGO,0)) + sum(COALESCE(P2.PPC_JUROS,0)) + sum(COALESCE(P2.PPC_MULTA,0)) '+
                        '- sum(COALESCE(P2.PPC_DESCTO,0))) AS PPC_VLPAGAR_CC, P2.FOR_CODIGO, F1.FOR_RAZAO';
               wSql3 := ' FROM PAG_PC01 P2 LEFT JOIN FOR0000 F1 ON (P2.FOR_CODIGO = F1.FOR_CODIGO) LEFT JOIN BAN0000 B1 ON (B1.BAN_CODIGO = P2.BAN_CODIGO) ';
               //
               wSeleciona := wSeleciona + ' AND P2.PPC_EXCLUSAO = ''N''';
               //
               SqlCdsPag11.Close;
               SqlCdsPag11.CommandText := SQLDEF('PAGAR',wSql1+wSql2+wSql3,wSeleciona,'','P2.');
               SqlCdsPag11.CommandText := SqlCdsPag11.CommandText +
               ' group by  F1.FOR_RAZAO , P2.FOR_CODIGO order by F1.FOR_RAZAO asc , 1 desc';
               SqlCdsPag11.Open;
             except on E:EDataBaseError do
               uteis.erro  (Pchar('Erro ao Abrir a Tabela SQLCdSPAG00 !'+e.message));
             end;
          end
          Else


          if (LTBoxRelatorio.ItemIndex = 7) then
             begin
                 wSeleciona := 'where P1.OPV_CODIGO = 1 AND P1.PAG_DTEMIS BETWEEN '''+DataAmericana(EditDataI.Text)+''' AND '''+DataAmericana(EditDataF.Text)+'''';
                 if (EdtFor.Text <>'9999') then
                    begin
                        wSeleciona := wSeleciona + ' AND P1.FOR_CODIGO = '''+EdtFor.Text+'''';
                    end;
                 wOrdem := 'P1.PAG_DTEMIS';
                 try
                   wSql1 := 'SELECT P1.PAG_CODIGO,P1.OPV_CODIGO,P1.FOR_CODIGO,F1.FOR_RAZAO,P1.PAG_DTEMIS,P1.PAG_NUMDOC,P1.PAG_VLNOTA,P1.PAG_VL_RET,P1.PAG_IRPJ_RET,';
                   wSql2 := 'P1.PAG_PIS_RET,P1.PAG_COFINS_RET,P1.PAG_INSS_RET,P1.PAG_CONTSOCIAL_RET,P1.PAG_BASE_ISS,P1.PAG_BASE_INSS,P1.PAG_ISS_RET FROM PAG0000 P1 ';
                   wSql3 := 'JOIN FOR0000 F1 ON P1.for_codigo = F1.for_codigo';
                   //
                   wSeleciona := wSeleciona + ' AND P1.PAG_EXCLUSAO = ''N''';
                   //
                   SqlCdsPag07.Close;
                   SqlCdsPag07.CommandText := SQLDEF('PAGAR',wSql1+wSql2+wSql3,wSeleciona,wOrdem,'P1.');
                   SqlCdsPag07.Open;
                 except on E:EDataBaseError do
                    uteis.erro  (Pchar('Erro ao Abrir a Tabela SQLCdSPAG07 !'+e.message));
                 end;
          end
          Else
          if (LTBoxRelatorio.ItemIndex = 8) then
          begin
                 LBL_08_LTITULO1.Caption := 'RELATÓRIO DE CONTAS À PAGAR DEFINIDA COMO PREVISÃO';
                 wSeleciona := 'where P1.PPC_PREVISAO = ''S'' AND P1.' + iif(cbPeriodo.ItemIndex = 0, 'PPC_VENCTO', 'PPC_DTEMIS') + ' BETWEEN '''+DataAmericana(EditDataI.Text)+''' AND '''+DataAmericana(EditDataF.Text)+'''';
                 LBL_08_LTITULO2.Caption := 'Periodo de vencto: '+EditDataI.Text+' até '+EditDataF.Text;
                 if (EdtFor.Text <>'9999') then
                    begin
                        wSeleciona := wSeleciona + ' AND P1.FOR_CODIGO = '''+EdtFor.Text+'''';
                        LBL_08_LTITULO2.Caption := LBL_08_LTITULO2.Caption + ' Fornecedor: '+EdtFor.Text+' - '+CbFornecedor.Text;
                    end
                 else
                    begin
                        LBL_08_LTITULO2.Caption := LBL_08_LTITULO2.Caption + ' Fornecedor: TODOS OS FORNECEDORES';
                    end;
                 wOrdem := 'P1.' + iif(cbPeriodo.ItemIndex = 0, 'PPC_VENCTO', 'PPC_DTEMIS') + '';
                 try
                   wSql1 := 'SELECT P1.PAG_CODIGO,P1.PPC_NUMER,P1.PPC_DTEMIS,P1.PPC_VENCTO,P1.PPC_VLPARC,P1.PPC_OBS,';
                   wSql2 := 'P1.PPC_PREVISAO,P1.PAG_NUMDOC,P1.FOR_CODIGO,F1.FOR_RAZAO FROM pag_pc01 P1 ';
                   wSql3 := 'JOIN FOR0000 F1 ON P1.FOR_CODIGO = F1.FOR_CODIGO';
                   //
                   wSeleciona := wSeleciona + ' AND P1.PPC_EXCLUSAO = ''N''';
                   //
                   SqlCdsPag08.Close;
                   SqlCdsPag08.CommandText := SQLDEF('PAGAR',wSql1+wSql2+wSql3,wSeleciona,wOrdem,'P1.');
                   SqlCdsPag08.Open;
                 except on E:EDataBaseError do
                    uteis.erro  (Pchar('Erro ao Abrir a Tabela SQLCdSPAG08!'+e.message));
                 end;
          end;
          {Cabeçalhos do Relatorios}
          if (LTBoxRelatorio.ItemIndex = 2) then
          begin
                 if (EdtConta.Text<>'999') then
                        LBL_02_LTitulo2.Caption := 'Contas Pagas entre : '+EditDataI.Text+' até '+EditDataF.Text
                 else
                        LBL_02_LTitulo2.Caption :='Contas de Análise Pagas.: '+EdtConta.Text+' - '+CbContaAnalise.Text+' - Pago entre: '+EditDataI.Text+' até '+EditDataF.Text;
          end
          Else
          if (LTBoxRelatorio.ItemIndex = 3) then
          begin
                 if (EdtConta.Text<>'999') then
                        LBL_02_LTitulo2.Caption := 'Contas vencendo entre : '+EditDataI.Text+' até '+EditDataF.Text
                 else
                        LBL_02_LTitulo2.Caption :='Contas de Análise vencendo.: '+EdtConta.Text+' - '+CbContaAnalise.Text+' - vencendo entre: '+EditDataI.Text+' até '+EditDataF.Text;
          end;
             
          {EXECUTA O RELATORIO}
          if (LTBoxRelatorio.ItemIndex = 0) then
          begin

               LBL_0A_LTitulo1.Caption := 'RELATÓRIO DE CONTROLE DE CONTAS À PAGAR E PAGAS';
               LBL_00_LTITULO2.Caption:=LBL_00_LTITULO2.Caption+' - entre: '+EditDataI.Text+' até '+EditDataF.Text+' - ';

               if RadVideo.checked  then
                  ppRPRelConPagar00.DeviceType := 'Screen'
               Else
               if RadImpressora.checked  then
                  ppRPRelConPagar00.DeviceType := 'Printer';

               {Else
               if RadText.checked  then
               begin
                      ppRPRelConPagar00.ShowPrintDialog := False;
                      ppRPRelConPagar00.DeviceType   := 'ReportTextFile';
               end;}

               if (Rad_Vencto.checked ) then
               begin
                    LBL_00_LTITULO2.Caption:=LBL_00_LTITULO2.Caption+iif(cbPeriodo.ItemIndex = 0, ' - Por Vencimento', ' - Por Data de Emissão');
                    ppRPRelConPagar00.TextFileName := PathNewRel+'\RELCONTPAGAR00';
                    RBuilderPreview( ppRPRelConPagar00 );
               end
               else
               begin
                    LBL_0A_LTITULO2.Caption:=LBL_00_LTITULO2.Caption+' Por Pagamento';
                    ppRPRelConPagar00.TextFileName := PathNewRel+'\RELCONTPAGAR00A';
                    RBuilderPreview( ppRPRelConPagar00A );
               end;

               CbFornecedor.ItemIndex := 0;
               exit;
          end
          Else
          if (LTBoxRelatorio.ItemIndex = 13) then
          begin

               PPLabel116.Caption:=dbInicio.Empresa.RAZAO;
               LBL_13_LTITULO1.Caption := 'RELATÓRIO DE CONTROLE DE CONTAS À PAGAR E PAGAS (Co-Participação)';
               LBL_13_LTITULO2.Caption:=LBL_00_LTITULO2.Caption+' - entre: '+EditDataI.Text+' até '+EditDataF.Text+' - ';
               vlLiqTotal := 0;
               vlLiqTotalG := 0;
               vlLiqTotalM := 0;

               if RadVideo.checked  then
                  ppRPRelConPagar13.DeviceType := 'Screen'
               Else
               if RadImpressora.checked  then
                  ppRPRelConPagar13.DeviceType := 'Printer';

               LBL_13_LTITULO2.Caption:=LBL_00_LTITULO2.Caption+iif(cbPeriodo.ItemIndex = 0, ' - Por Vencimento', ' - Por Data de Emissão');
               ppRPRelConPagar13.TextFileName := PathNewRel+'\RELCONTPAGAR13';

               RBuilderPreview( ppRPRelConPagar13 );

               CbFornecedor.ItemIndex := 0;
               exit;
          end
          Else
          if (LTBoxRelatorio.ItemIndex = 14) then
          begin
               sTituloRelatorio := 'RELATÓRIO DE CONTAS À PAGAR ANALÍTICO/GERENCIAL';
               sFiltroRelatorio:=' Data entre: '+EditDataI.Text+' até '+EditDataF.Text+iif(cbPeriodo.ItemIndex = 0, ' - Por Vencimento', ' - Por Data de Emissão');
               if RadPagas.Checked then
                  if NOT Rad_Vencto.Checked then
                     sFiltroRelatorio:=' Data entre: '+EditDataI.Text+' até '+EditDataF.Text+' - Por Pagamento';
               if delphiaberto  then
                  CopyToClipBoard(SqlCdsPag00.dataset.commandtext);
               ctpgrel14.ShowReport();

               CbFornecedor.ItemIndex := 0;
               exit;
          end

          Else
          if (LTBoxRelatorio.ItemIndex = 1) then
          begin
               LBL_01_LTitulo1.Caption := 'RELATÓRIO DE CONTROLE DE CONTAS À PAGAR';
                 if (RadPagas.checked ) then
                 begin
                        if (Rad_Vencto.checked ) then
                           LBL_01_LTITULO2.Caption:=LBL_01_LTITULO2.Caption+' - entre: '+EditDataI.Text+' até '+EditDataF.Text+iif(cbPeriodo.ItemIndex = 0, ' - Por Vencimento', ' - Por Data de Emissão')
                        else
                           LBL_01_LTITULO2.Caption:=LBL_01_LTITULO2.Caption+' - entre: '+EditDataI.Text+' até '+EditDataF.Text+' - Por Pagamento';
                 end
                 else
                     LBL_01_LTITULO2.Caption:=LBL_01_LTITULO2.Caption+' - entre: '+EditDataI.Text+' até '+EditDataF.Text+iif(cbPeriodo.ItemIndex = 0, ' - Por Vencimento', ' - Por Data de Emissão');

                 if RadVideo.checked  then
                    ppRPRelConPagar01.DeviceType := 'Screen'
                 else
                 if RadImpressora.checked  then
                    ppRPRelConPagar01.DeviceType := 'Printer';
                 ppRPRelConPagar01.TextFileName := PathNewRel+'\RELCONTPAGAR01';

                 RBuilderPreview( ppRPRelConPagar01);

                 CbFornecedor.ItemIndex := 0;
                 exit;
          end
          Else
          if (LTBoxRelatorio.ItemIndex = 2) then
          begin
                 if RadVideo.Checked then
                    ppRPRelConPagar02.DeviceType := 'Screen'
                 else
                 if RadImpressora.Checked then
                    ppRPRelConPagar02.DeviceType := 'Printer';
                 ppRPRelConPagar02.TextFileName := PathNewRel+'\RELCONTPAGAR02';
                 RBuilderPreview( ppRPRelConPagar02);
                 CbContaAnalise.ItemIndex := 0;
                 exit;
          end
          Else
          if (LTBoxRelatorio.ItemIndex = 3) then
          begin
               if RadVideo.Checked then
                  ppRPRelConPagar02.DeviceType := 'Screen'
               Else
               if RadImpressora.Checked then
                  ppRPRelConPagar02.DeviceType := 'Printer';
               ppRPRelConPagar02.TextFileName := PathNewRel+'\RELCONTPAGAR03';
               RBuilderPreview( ppRPRelConPagar02);
               CbContaAnalise.ItemIndex := 0;
               exit;
          end
          Else
          if (LTBoxRelatorio.ItemIndex = 7) then
          begin
                 LBL_07_LTITULO1.Caption := 'RELATORIO DE NOTAS FISCAIS COM RETENCAO - CTAS A PAGAR';
                 if (EdtFor.Text<>'9999') then
                    LBL_07_LTITULO2.Caption := 'Fornecedor: '+EdtFor.Text+'- '+trim(CbFornecedor.Text)+' no periódo de: '+EditDataI.Text+' até '+EditDataF.Text
                 else
                    LBL_07_LTITULO2.Caption := 'Periodo.: '+EditDataI.Text+' até '+EditDataF.Text;
                 if RadVideo.Checked then
                    ppRPRelConPagar07.DeviceType := 'Screen'
                 else
                 if RadImpressora.Checked then
                    ppRPRelConPagar07.DeviceType := 'Printer';
                 ppRPRelConPagar07.TextFileName := PathNewRel+'\RELCONTPAGAR07';
                 RBuilderPreview(ppRPRelConPagar07);
                 CbFornecedor.ItemIndex :=0;
                 EditDatai.SetFocus;
                 exit;
          end
          Else
          if (LTBoxRelatorio.ItemIndex = 8) then
          begin
                 if RadVideo.Checked then
                    ppRPRelConPagar08.DeviceType := 'Screen'
                 Else
                 if RadImpressora.Checked then
                    ppRPRelConPagar08.DeviceType := 'Printer';
                        ppRPRelConPagar08.TextFileName := PathNewRel+'\RELCONTPAGAR08';
                 RBuilderPreview(ppRPRelConPagar08);
                 CbFornecedor.ItemIndex :=0;
                 EditDatai.SetFocus;
                 exit;
          end
          Else
          if (LTBoxRelatorio.ItemIndex = 9) then
          begin
                 wSeleciona := 'WHERE P1.PAG_DTEMIS BETWEEN '''+DataAmericana(EditDataI.Text)+''' AND '''+DataAmericana(EditDataF.Text)+''' AND P1.PAG_PREVISAO = ''N''';
                 if (EdtFor.Text<>'9999') then
                    begin
                        wSeleciona := wSeleciona + ' AND P1.FOR_CODIGO = '''+EdtFor.Text+'''';
                    end;
                 if (CbTpDocs.ItemIndex <> 0) then
                    begin
                        wSeleciona := wSeleciona + ' AND P1.PAG_TIPO = '''+IIF(CbTpDocs.ItemIndex = 0,'',
                                                                           IIF(CbTpDocs.ItemIndex = 1,'BQ',
                                                                           IIF(CbTpDocs.ItemIndex = 2,'CH',
                                                                           IIF(CbTpDocs.ItemIndex = 3,'CN',
                                                                           IIF(CbTpDocs.ItemIndex = 4,'DF',
                                                                           IIF(CbTpDocs.ItemIndex = 5,'DP',
                                                                           IIF(CbTpDocs.ItemIndex = 6,'GR',
                                                                           IIF(CbTpDocs.ItemIndex = 7,'NF',
                                                                           IIF(CbTpDocs.ItemIndex = 8,'RC','XX')))))))))+'''';
                    end;
                 wOrdem := 'P1.PAG_TIPO,P1.PAG_DTEMIS,F1.FOR_RAZAO';
                 try
                   wSql1 :='SELECT P1.PAG_CODIGO,P1.OPV_CODIGO,P1.FOR_CODIGO,F1.FOR_RAZAO,P1.PAG_DTEMIS,P1.PAG_NUMDOC,P1.PAG_TIPO,P1.PAG_VLNOTA,P1.PAG_VL_IPI,P1.PAG_ALIQICMS,P1.PAG_BASEICMS ';
                   wSql2 := 'FROM PAG0000 P1 ';
                   wSql3 := 'JOIN FOR0000 F1 ON (P1.FOR_CODIGO = F1.FOR_CODIGO)';
                   //
                   wSeleciona := wSeleciona + ' AND P1.PAG_EXCLUSAO = ''N''';
                   //
                   SqlCdsPag09.Close;
                   SqlCdsPag09.CommandText := SQLDEF('PAGAR',wSql1+wSql2+wSql3,wSeleciona,wOrdem,'P1.');
                   SqlCdsPag09.Open;
                 except on E:EDataBaseError do
                    uteis.erro  (Pchar('Erro ao Abrir a Tabela SQLCdSPAG07 !'+e.message));
                 end;
                 LBL_09_EMPRESA.Caption  := dbInicio.Empresa.RAZAO;
                 LBL_09_LTITULO1.Caption := 'RELATORIO DE CONTAS A PAGAR POR TIPO DE DOCUMENTO';
                 if (EdtFor.Text<>'9999') then
                    LBL_09_LTITULO2.Caption := 'Fornecedor: '+EdtFor.Text+'- '+trim(CbFornecedor.Text)+' no periódo de: '+EditDataI.Text+' até '+EditDataF.Text
                 else
                    LBL_09_LTITULO2.Caption := 'Periodo.: '+EditDataI.Text+' até '+EditDataF.Text;
                 if RadVideo.Checked then
                    ppRPRelConPagar09.DeviceType := 'Screen'
                 else
                 if RadImpressora.Checked then
                    ppRPRelConPagar09.deviceType := 'Printer';
                 ppRPRelConPagar09.TextFileName := PathNewRel+'\RELCONTPAGAR09';
                 RBuilderPreview(ppRPRelConPagar09);
                 CbFornecedor.ItemIndex :=0;
                 EditDatai.SetFocus;
                 exit;
          end
          Else
          if (LTBoxRelatorio.ItemIndex = 10) then
          begin
                 sTituloRelatorio := 'RELATÓRIO DE CONTAS À PAGAR - POR FORNECEDOR - ANALÍTICO';
                 if (RadPagas.checked ) then
                    begin
                        if (Rad_Vencto.checked ) then
                           sFiltroRelatorio:=' Data entre: '+EditDataI.Text+' até '+EditDataF.Text+iif(cbPeriodo.ItemIndex = 0, ' - Por Vencimento', ' - Por Data de Emissão')
                        else
                           sFiltroRelatorio:=' Data entre: '+EditDataI.Text+' até '+EditDataF.Text+' - Por Pagamento';
                    end
                 else
                    begin
                        sFiltroRelatorio:=' Data entre: '+EditDataI.Text+' até '+EditDataF.Text+iif(cbPeriodo.ItemIndex = 0, ' - Por Vencimento', ' - Por Data de Emissão');
                    end;

                 frxRelConPagar10Novo.ShowReport();
                CbFornecedor.ItemIndex := 0;
                exit;
          end
          Else
          if (LTBoxRelatorio.ItemIndex = 11) then
          begin
                sFiltroRelatorio := ''; 
                if (RadPagas.checked ) then
                   begin
                       if (Rad_Vencto.checked ) then
                          sFiltroRelatorio:=sFiltroRelatorio+' - entre: '+EditDataI.Text+' até '+EditDataF.Text
                       else
                          sFiltroRelatorio:=sFiltroRelatorio+' - entre: '+EditDataI.Text+' até '+EditDataF.Text;
                   end
                else
                   begin
                       sFiltroRelatorio:=sFiltroRelatorio+' - entre: '+EditDataI.Text+' até '+EditDataF.Text;
                   end;


                sTituloRelatorio := 'RELATÓRIO DE CONTAS À PAGAR - POR FORNECEDOR - SINTÉTICO';
                ppRPRelConPagar11.ShowReport();
                CbFornecedor.ItemIndex := 0;
                exit;
          end;
       end;
end;

procedure TFormGImpPagar.BitCancelarClick(Sender: tObject);
begin
    FormGImpPagar.Close;
end;

procedure TFormGImpPagar.BitConfigClick(Sender: tObject);
begin
    PrinterSetupDialog1.Execute;
end;

procedure TFormGImpPagar.EditDataFExit(Sender: tObject);
begin
    if EditDataF.Text <> '  /  /    ' then
       begin
           if not TestaDataStr(EditDataF.Text) then
              EditDataF.setfocus;
       end;
end;

procedure TFormGImpPagar.EditDataIExit(Sender: tObject);
begin
    if EditDataI.Text <> '  /  /    ' then
       begin
           if not TestaDataStr(EditDataI.Text) then
               EditDataI.setfocus;
       end;
end;

procedure TFormGImpPagar.CbFornecedorClick(Sender: tObject);
begin
    if (SqlCdsFornecedor.Locate('FOR_RAZAO',CbFornecedor.Text,[])=true) then
       begin
           EdtFor.Text := SqlCdsFornecedorFOR_CODIGO.AsString;
       end
    else
       begin
           EdtFor.Text            := '9999';
           CbFornecedor.Text      := 'TODOS';
           CbFornecedor.ItemIndex := 0;
       end;
end;

procedure TFormGImpPagar.CbContaAnaliseClick(Sender: tObject);
begin
    if (SqlCdsContaAnalise.Locate('CCT_DESCRI',CbContaAnalise.Text,[])=true) then
       begin
           EdtConta.Text := SqlCdsContaAnaliseCCT_CODIGO.AsString;
       end
    else
       begin
           EdtConta.Text            := '999';
           CbContaAnalise.Text      := 'TODOS';
           CbContaAnalise.ItemIndex := 0;
       end;
end;

procedure TFormGImpPagar.CbCaixaClick(Sender: tObject);
begin
    if (SqlCdsProjCx.Locate('PCX_DESCRI',CbCaixa.Text,[])=true) then
       begin
           EdtPcx.Text := SqlCdsProjCxPCX_CODIGO.AsString;
       end
    else
       begin
           EdtPcx.Text       := '999';
           CbCaixa.Text      := 'TODOS';
           CbCaixa.ItemIndex := 0;
       end;
end;

procedure TFormGImpPagar.LTBoxRelatorioClick(Sender: tObject);
begin
    LayOutRelatorio;
end;

procedure TFormGImpPagar.SqlCdsPag00CalcFields(DataSet: TDataSet);
begin
    SqlCdsPag00PAG_MES_CC.AsString       := Copy(DateToStr(SqlCdsPag00PPC_VENCTO.AsDateTime),4,2);
    SqlCdsPag00PAG_MES_PAGTO_CC.AsString := Copy(DateToStr(SqlCdsPag00PPC_PAGTO.AsDateTime),4,2);

    if SqlCdsPag00PPC_STATUS.AsString <> 'Cancelada' then
        SqlCdsPag00PPC_VLPAGAR_CC.AsCurrency := SqlCdsPag00PPC_VLPARC.AsCurrency - SqlCdsPag00PPC_VLPAGO.AsCurrency + SqlCdsPag00PPC_JUROS.AsCurrency + SqlCdsPag00PPC_MULTA.AsCurrency - SqlCdsPag00PPC_DESCTO.AsCurrency;

end;

procedure TFormGImpPagar.pp01HeaderBand1BeforePrint(Sender: tObject);
begin
    LBL_01_EMPRESA.Caption := dbInicio.Empresa.Razao;
end;

procedure TFormGImpPagar.SqlCdsPag02CalcFields(DataSet: TDataSet);
begin
  SqlCdsPag02PPC_VLPAGAR_CC.AsCurrency := SqlCdsPag02PPC_VLPARC.AsCurrency - SqlCdsPag02PPC_VLPAGO.AsCurrency + SqlCdsPag02PPC_JUROS.AsCurrency + SqlCdsPag02PPC_MULTA.AsCurrency - SqlCdsPag02PPC_DESCTO.AsCurrency;
end;

procedure TFormGImpPagar.pp02HeaderBand1BeforePrint(Sender: tObject);
begin
    LBL_02_EMPRESA.Caption := dbInicio.Empresa.Razao;
end;

procedure TFormGImpPagar.pp06HeaderBand1BeforePrint(Sender: tObject);
begin
    LBL_06_EMPRESA.Caption := dbInicio.Empresa.Razao;
end;

procedure TFormGImpPagar.SqlCdsPag06CalcFields(DataSet: TDataSet);
begin
    SqlCdsPag06PAG_VLNOTA_CC.AsCurrency := SqlCdsPag06PAG_VLNOTA.AsCurrency - SqlCdsPag06PAG_VL_IPI.AsCurrency;
    SqlCdsPag06PAG_ICMS_CC.AsCurrency   := (SqlCdsPag06PAG_BASEICMS.AsCurrency * SqlCdsPag06PAG_ALIQICMS.AsCurrency) /100;
end;

procedure TFormGImpPagar.LTBoxRelatorioDblClick(Sender: tObject);
begin
    EditDataI.SetFocus;
end;

procedure TFormGImpPagar.pp07HeaderBand1BeforePrint(Sender: tObject);
begin
    LBL_07_EMPRESA.Caption := dbInicio.Empresa.Razao;
end;

procedure TFormGImpPagar.SqlCdsPag07CalcFields(DataSet: TDataSet);
begin
    SqlCdsPag07PAG_TLIQUIDO.AsCurrency := SqlCdsPag07PAG_VLNOTA.AsCurrency - SqlCdsPag07PAG_VL_RET.AsCurrency;
end;

procedure TFormGImpPagar.ppHeaderBand1BeforePrint(Sender: tObject);
begin
    LBL_08_EMPRESA.Caption := dbInicio.Empresa.Razao;
end;

procedure TFormGImpPagar.paginaGetText(Sender: TObject; var Text: string);
begin
  inherited;
  text:= StringReplace(text,'of','de',[rfReplaceAll]);
  text:= StringReplace(text,'Page','Página',[rfReplaceAll]);;
end;

procedure TFormGImpPagar.pp00HeaderBand2BeforePrint(Sender: tObject);
begin
    LBL_00_EMPRESA.Caption := dbInicio.Empresa.Razao;
end;

procedure TFormGImpPagar.CbxTiposClick(Sender: tObject);
begin
    if (SqlCdsTipos.Locate('OPV_DESCRICAO',CbxTipos.Text,[])=true) then
       begin
           EdtTipo.Text := SqlCdsTiposOPV_CODIGO.AsString;
       end
    else
       begin
           EdtTipo.Text       := '999';
           CbxTipos.Text      := 'TODOS';
           CbxTipos.ItemIndex := 0;
       end;
end;

procedure TFormGImpPagar.SqlCdsPag09CalcFields(DataSet: TDataSet);
begin
    if SqlCdsPag09PAG_TIPO.AsString   = 'BQ' then
       SqlCdsPag09TP_DOC_CC.AsString := 'BLOQUETO';
    if SqlCdsPag09PAG_TIPO.AsString   = 'CH' then
       SqlCdsPag09TP_DOC_CC.AsString := 'CHEQUE';
    if SqlCdsPag09PAG_TIPO.AsString   = 'CN' then
       SqlCdsPag09TP_DOC_CC.AsString := 'CN';
    if SqlCdsPag09PAG_TIPO.AsString   = 'DF' then
       SqlCdsPag09TP_DOC_CC.AsString := 'DARF';
    if SqlCdsPag09PAG_TIPO.AsString   = 'DP' then
       SqlCdsPag09TP_DOC_CC.AsString := 'DUPLICATA';
    if SqlCdsPag09PAG_TIPO.AsString   = 'GR' then
       SqlCdsPag09TP_DOC_CC.AsString := 'GUIA DE RECOLHIMENTO';
    if SqlCdsPag09PAG_TIPO.AsString   = 'NF' then
       SqlCdsPag09TP_DOC_CC.AsString := 'NOTA FISCAL';
    if SqlCdsPag09PAG_TIPO.AsString   = 'RC' then
       SqlCdsPag09TP_DOC_CC.AsString := 'RECIBO';
    if SqlCdsPag09PAG_TIPO.AsString   = 'XX' then
       SqlCdsPag09TP_DOC_CC.AsString := 'OUTROS';
    SqlCdsPag09PAG_VLNOTA_CC.AsCurrency := SqlCdsPag09PAG_VLNOTA.AsCurrency - SqlCdsPag09PAG_VL_IPI.AsCurrency;
    SqlCdsPag09PAG_ICMS_CC.AsCurrency   := (SqlCdsPag09PAG_BASEICMS.AsCurrency * SqlCdsPag09PAG_ALIQICMS.AsCurrency) /100;
end;

procedure TFormGImpPagar.LayOutRelatorio;
begin
     Group08.Align:=alTop;
     self.Refresh;
    if (LTBoxRelatorio.ItemIndex = 0 ) or (LTBoxRelatorio.ItemIndex = 1) or (LTBoxRelatorio.ItemIndex = 13) or (LTBoxRelatorio.ItemIndex = 14) then
    begin
           Group01.Visible := True;
           Group02.Visible := True;
           Group03.Visible := True;
           Group03.Width   := 413;
           panel3.Visible := True;
           Group07.Visible := True;
           Group08.Visible := True;

           Group05.Visible := (LTBoxRelatorio.ItemIndex = 14);
           Group06.Visible := False;
           Group09.Visible := False;
           Group10.Visible := False;
           Group13.Visible := False;
           if (LTBoxRelatorio.ItemIndex = 0 ) then
           begin
                 Group12.Visible := False;
                 Group08.Top     := 382;
           end
           else
           if (LTBoxRelatorio.ItemIndex = 1 ) then
           begin
                 Group12.Visible := True;
                 Group12.Top     := 382;
                 Group08.Top     := 425;
           end;
           {Posiciona}
           Group01.Top := 219;
           Group02.Top := 259;
           Group03.Top := 300;
           Group07.Top := 341;
           LayOutFiltro;
    end
    Else
    if (LTBoxRelatorio.ItemIndex = 2 ) or (LTBoxRelatorio.ItemIndex = 3) then
    begin
           {Habilita}
           Group01.Visible := True;
           Group05.Visible := True;
           Group06.Visible := True;
           Group07.Visible := True;
           Group08.Visible := True;
           {Desabilita}
           Group02.Visible := False;
           Group03.Visible := False;
           panel3.Visible := False;
           Group11.Visible := False;

           Group09.Visible := False;
           Group10.Visible := False;
           Group12.Visible := False;
           Group13.Visible := True;
           {Posiciona}
           Group01.Top := 219;
           Group05.Top := 259;
           Group06.Top := 300;
           Group07.Top := 341;
           Group08.Top := 382;
           Group13.Top := 423;
    end
    Else
    if (LTBoxRelatorio.ItemIndex = 4) or (LTBoxRelatorio.ItemIndex = 5) then
    begin
           {Habilita}
           Group01.Visible := True;
           Group06.Visible := True;
           Group07.Visible := True;
           Group08.Visible := True;
           {Desabilita}
           Group02.Visible := False;
           Group03.Visible := False;
           panel3.Visible := False;
           Group11.Visible := False;

           Group05.Visible := False;
           Group09.Visible := False;
           Group10.Visible := False;
           Group12.Visible := False;
           Group13.Visible := False;
           {Posiciona}
           Group01.Top := 219;
           Group06.Top := 259;
           Group07.Top := 300;
           Group08.Top := 341;
    end
    Else
    if (LTBoxRelatorio.ItemIndex = 6) then
    begin
           {Habilita}
           Group01.Visible := False;
           Group07.Visible := False;
           Group08.Visible := False;
           Group09.Visible := False;
           {Desabilita}
           Group02.Visible := False;
           Group03.Visible := False;
           panel3.Visible := False;
           Group11.Visible := False;

           Group05.Visible := False;
           Group06.Visible := False;
           Group10.Visible := False;
           Group12.Visible := False;
           Group13.Visible := False;
           {Posiciona}
           Group01.Top := 219;
           Group07.Top := 259;
           Group09.Top := 300;
           Group08.Top := 341;
    end
    Else
    if (LTBoxRelatorio.ItemIndex = 7) or (LTBoxRelatorio.ItemIndex = 8) then
    begin
           {Habilita}
           Group01.Visible := True;
           Group02.Visible := True;
           Group08.Visible := True;
           {Desabilita}
           Group03.Visible := False;
           panel3.Visible := False;
           Group11.Visible := False;

           Group05.Visible := False;
           Group06.Visible := False;
           Group07.Visible := False;
           Group09.Visible := False;
           Group10.Visible := False;
           Group12.Visible := False;
           Group13.Visible := False;
           {Posiciona}
           Group01.Top := 219;
           Group02.Top := 259;
           Group08.Top := 300;
    end
    Else
    if (LTBoxRelatorio.ItemIndex = 9) then
    begin
           {Habilita}
           Group01.Visible := True;
           Group02.Visible := True;
           Group08.Visible := True;
           Group10.Visible := True;
           {Desabilita}
           Group03.Visible := False;
           panel3.Visible := False;
           Group11.Visible := False;

           Group05.Visible := False;
           Group06.Visible := False;
           Group07.Visible := False;
           Group09.Visible := False;
           Group12.Visible := False;
           Group13.Visible := False;
           {Posiciona}
           Group01.Top := 219;
           Group02.Top := 259;
           Group10.Top := 300;
           Group08.Top := 341;
    end;
    FormGImpPagar.AutoSize := True;
    Group08.Align:=alBottom;
end;

procedure TFormGImpPagar.EdtForExit(Sender: tObject);
begin
    EdtFor.text := StrZero(EdtFor.Text,EdtFor.MaxLength);
    if (EdtFor.Text <> '9999') then
       begin
           if (SqlCdsFornecedor.Locate('FOR_CODIGO',EdtFor.Text,[])=true) then
              begin
                  CbFornecedor.Text := SqlCdsFornecedorFOR_RAZAO.AsString;
              end
           else
              begin
                  EdtFor.Text            := '9999';
                  CbFornecedor.Text      := 'TODOS';
                  CbFornecedor.ItemIndex := 0;
              end;
       end
    else
       begin
           EdtFor.Text            := '9999';
           CbFornecedor.Text      := 'TODOS';
           CbFornecedor.ItemIndex := 0;
       end;
end;

procedure TFormGImpPagar.EdtContaExit(Sender: tObject);
begin
    EdtConta.text := StrZero(EdtConta.Text,EdtConta.MaxLength);
    if (EdtConta.Text <> '999') then
       begin
           if (SqlCdsContaAnalise.Locate('CCT_CODIGO',EdtConta.Text,[])=true) then
              begin
                  CbContaAnalise.Text := SqlCdsContaAnaliseCCT_DESCRI.AsString;
              end
           else
              begin
                  EdtConta.Text            := '999';
                  CbContaAnalise.Text      := 'TODOS';
                  CbContaAnalise.ItemIndex := 0;
              end;
       end
    else
       begin
           EdtConta.Text            := '999';
           CbContaAnalise.Text      := 'TODOS';
           CbContaAnalise.ItemIndex := 0;
       end;
end;

procedure TFormGImpPagar.EdtTipoExit(Sender: tObject);
begin
    EdtTipo.text := StrZero(EdtTipo.Text,EdtTipo.MaxLength);
    if (EdtTipo.Text <> '999') then
       begin
           if (SqlCdsTipos.Locate('OPV_CODIGO',EdtTipo.Text,[])=true) then
              begin
                  CbxTipos.Text := SqlCdsTiposOPV_DESCRICAO.AsString;
              end
           else
              begin
                  EdtTipo.Text       := '999';
                  CbxTipos.Text      := 'TODOS';
                  CbxTipos.ItemIndex := 0;
              end;
       end
    else
       begin
           EdtTipo.Text       := '999';
           CbxTipos.Text      := 'TODOS';
           CbxTipos.ItemIndex := 0;
       end;
end;

procedure TFormGImpPagar.EdtPcxExit(Sender: tObject);
begin
    EdtPcx.text := StrZero(EdtPcx.Text,EdtPcx.MaxLength);
    if (EdtPcx.Text <> '999') then
    begin
         if (SqlCdsProjCx.Locate('PCX_CODIGO',EdtPcx.Text,[])=true) then
                  CbCaixa.Text := SqlCdsProjCxPCX_DESCRI.AsString
         else
         begin
                  EdtPcx.Text       := '999';
                  CbCaixa.Text      := 'TODOS';
                  CbCaixa.ItemIndex := 0;
         end;
    end
    else
    begin
           EdtPcx.Text       := '999';
           CbCaixa.Text      := 'TODOS';
           CbCaixa.ItemIndex := 0;
    end;
end;

procedure TFormGImpPagar.FormCreate(Sender: tObject);
begin
    SELF.HEIGHT:=718;
    SELf.WIDTH:=466;
    INHERITED;
    wSql1      := '';
    wSql2      := '';
    wSql3      := '';
    wSql4      := '';
    wSeleciona := '';
    wOrdem     := '';
    self.autosize:=True;
    PathNewRel := dbInicio.GetParametroSistema('PMT_PATHRELATORIO');
end;

procedure TFormGImpPagar.ppDBCalc59GetText(Sender: tObject; var Text: string);
begin
     Text := FormatFloat( '##,##0.00', vlLiqTotalM );
     vlLiqTotalG := vlLiqTotalG+vlLiqTotalM;
     vlLiqTotalM:=0;
end;

procedure TFormGImpPagar.ppDBText101GetText(Sender: tObject; var Text: string);
VAR SLD : CURRENCY;
begin
     SLD:=SqlCdsPag00PPC_VLPAGAR_CC.AsCurrency - SqlCdsPag00PPC_VALOR_N_RATEIA.AsCurrency;
     Text := FormatFloat( '##,##0.00', SLD );
     vlLiqTotal := vlLiqTotal + SLD;
end;

procedure TFormGImpPagar.ppDBTNIVELPrint(Sender: tObject);
begin
    if (CdsResultadoTIPO.AsString = 'T') then
       begin
           if (LTBoxRelatorio.ItemIndex = 4) then
              begin
                  if (RadDetalhada.checked ) then
                     begin
                         ppDBTNIVEL.Font.Style  := [fsbold];
                         ppDBTCODIGO.Font.Style := [fsbold];
                         ppDBTDESCRI.Font.Style := [fsbold];
                         ppDBTPROVI.Font.Style  := [fsbold];
                         ppDBTPAGAR.Font.Style  := [fsbold];
                         ppDBTPAGO.Font.Style   := [fsbold];
                     end
                  else
                     begin
                         if (Length(trim(CdsResultadoNIVEL.AsString))=1) then
                            begin
                                ppDBTNIVEL.Font.Style  := [fsbold];
                                ppDBTCODIGO.Font.Style := [fsbold];
                                ppDBTDESCRI.Font.Style := [fsbold];
                                ppDBTPROVI.Font.Style  := [fsbold];
                                ppDBTPAGAR.Font.Style  := [fsbold];
                                ppDBTPAGO.Font.Style   := [fsbold];
                            end
                         else
                            begin
                                ppDBTNIVEL.Font.Style  := [];
                                ppDBTCODIGO.Font.Style := [];
                                ppDBTDESCRI.Font.Style := [];
                                ppDBTPROVI.Font.Style  := [];
                                ppDBTPAGAR.Font.Style  := [];
                                ppDBTPAGO.Font.Style   := [];
                            end;
                     end;
              end
           else
              begin
                  if (Length(trim(CdsResultadoNIVEL.AsString))=1) then
                     begin
                         ppDBTNIVEL.Font.Style  := [fsbold];
                         ppDBTCODIGO.Font.Style := [fsbold];
                         ppDBTDESCRI.Font.Style := [fsbold];
                         ppDBTPROVI.Font.Style  := [fsbold];
                         ppDBTPAGAR.Font.Style  := [fsbold];
                         ppDBTPAGO.Font.Style   := [fsbold];
                     end
                  else
                     begin
                         ppDBTNIVEL.Font.Style  := [];
                         ppDBTCODIGO.Font.Style := [];
                         ppDBTDESCRI.Font.Style := [];
                         ppDBTPROVI.Font.Style  := [];
                         ppDBTPAGAR.Font.Style  := [];
                         ppDBTPAGO.Font.Style   := [];
                     end;
              end;
       end
    else
       begin
           ppDBTNIVEL.Font.Style  := [];
           ppDBTCODIGO.Font.Style := [];
           ppDBTDESCRI.Font.Style := [];
           ppDBTPROVI.Font.Style  := [];
           ppDBTPAGAR.Font.Style  := [];
           ppDBTPAGO.Font.Style   := [];
       end;
end;

procedure TFormGImpPagar.ppSharpPrint(Sender: tObject);
begin
    if (LTBoxRelatorio.ItemIndex = 4) then
       begin
           if (CdsResultadoTIPO.AsString = 'T') then
              begin
                  if (RadDetalhada.Checked=true) then
                     ppSharp.Visible := True
                  else
                     begin
                         if (Length(trim(CdsResultadoNIVEL.AsString))=1) then
                            begin
                                ppSharp.Visible := True
                            end
                         else
                            begin
                                ppSharp.Visible := False;
                            end;
                     end;
              end
           else
              ppSharp.Visible := False;
       end
    else
       begin
           if (Length(trim(CdsResultadoNIVEL.AsString))=1) then
              begin
                  ppSharp.Visible := True
              end
           else
              begin
                  ppSharp.Visible := False;
              end;
       end;
end;

procedure TFormGImpPagar.pplbltotalPrint(Sender: tObject);
begin
    if (RadResumida.checked ) then
       begin
           ppVarPagar.Visible    := true;
           ppVarPago.Visible     := true;
           pplbltotal.Visible    := true;
           ppLineTotal.Visible   := true;
           ppLineRoda.Visible    := False;
       end
    else
       begin
           ppVarPagar.Visible    := False;
           ppVarPago.Visible     := False;
           pplbltotal.Visible    := False;
           ppLineTotal.Visible   := False;
           ppLineRoda.Visible    := True;
       end;
end;

procedure TFormGImpPagar.ppVarPagarCalc(Sender: tObject;
  var Value: Variant);
begin
    if (Length(trim(CdsResultadoNIVEL.AsString))>1) then
       begin
           ppVarPagar.Value       := ppVarPagar.Value + CdsResultadoVLPAGAR.AsCurrency;
           ppVarPago.Value        := ppVarPago.Value  + CdsResultadoVLPAGO.AsCurrency;
       end
    else
       begin
           ppVarPagar.Value       := ppVarPagar.Value + 0;
           ppVarPago.Value        := ppVarPago.Value  + 0;
       end;
end;

procedure TFormGImpPagar.ppHeaderBand4BeforePrint(Sender: tObject);
begin
    LBL_0A_EMPRESA.Caption := dbInicio.Empresa.Razao;
end;

procedure TFormGImpPagar.RadTodasClick(Sender: tObject);
begin
    LayOutFiltro;
end;

procedure TFormGImpPagar.LayOutFiltro;
begin
     Group11.Visible  := RadPagas.Checked or RadParcial.checked;
end;

procedure TFormGImpPagar.CcontaExit(Sender: tObject);
begin
   if (StrToIntDef(Cconta.text,0) <> 9999) then
      begin
         if (SqlCdsBancos.Locate('BAN_CODIGO',StrZero(Cconta.Text,4),[])=True) then
            begin
               CbxBanco.Text := SqlCdsBancosBAN_APELIDO.AsString;
            end
         else
            begin
               uteis.aviso('Conta não localizado com o código informado !');
               Cconta.text       := '9999';
               CbxBanco.ItemIndex := 0;
               CbxBanco.Text      := 'TODOS';
            end;
      end
   else
      begin
         CbxBanco.ItemIndex := 0;
         CbxBanco.Text      := 'TODOS';
      end;
end;

procedure TFormGImpPagar.CbxBancoClick(Sender: tObject);
begin
   if (ActiveControl<> Nil)
   and(ActiveControl.Name <> 'BitCancelar')
   and(ActiveControl.Name <> 'Cconta')
   and(ActiveControl.Name <> 'EditDataI')
   and(ActiveControl.Name <> 'EditDataF') then
      BuscaConta;
end;

procedure TFormGImpPagar.BuscaConta;
begin
   if (CbxBanco.Text <>'TODOS')
   or (CbxBanco.ItemIndex <> 0) then
      begin
         if (SqlCdsBancos.Locate('BAN_APELIDO',CbxBanco.Text,[])=True) then
            begin
               Cconta.text := SqlCdsBancosBAN_CODIGO.AsString;
            end
         else
            begin
               uteis.aviso('Conta não localizado com o nome informado !');
               Cconta.text       := '9999';
               CbxBanco.ItemIndex := 0;
               CbxBanco.Text      := 'TODOS';
               CbxBanco.SetFocus;
            end;
      end
   else
      begin
         CbxBanco.ItemIndex := 0;
         CbxBanco.Text      := 'TODOS';
      end;
end;

procedure TFormGImpPagar.ppRPRelConPagar11GetValue(const VarName: String;
  var Value: Variant);
var
  stream:TStream;
  JpedImage:TJPEGImage;
  MinhaImagem:TJPEGImage;

begin
  if (VarName  = 'RAZAO') then
     Value := dbInicio.Empresa.FANTASIA
  else
  if (VarName  = 'ENDERECO') then
     Value := dbInicio.Empresa.ENDERECO
  else
  if (VarName  = 'CEP') then
     Value := dbInicio.Empresa.CEP
  else
  if (VarName  = 'CIDADE') then
     Value := dbInicio.Empresa.CIDADE
  else
  if (VarName  = 'UF') then
     Value := dbInicio.Empresa.UF
  else
  if (VarName  = 'TITULO') then
     Value := sTituloRelatorio
  else
  if (VarName  = 'filtro') then
     Value := sFiltroRelatorio
  else
  if (VarName  = 'FONE') then
     Value := dbInicio.Empresa.FONE;

  TfrxPictureView(ppRPRelConPagar11.FindObject('LogoEmpresa')).Picture.Assign( dbInicio.Empresa.Logo );

end;

procedure TFormGImpPagar.frxRelConPagar10NovoGetValue(
  const VarName: String; var Value: Variant);
var
  stream:TStream;
  JpedImage:TJPEGImage;
  MinhaImagem:TJPEGImage;

begin
  if (VarName  = 'RAZAO') then
     Value := dbInicio.Empresa.FANTASIA
  else
  if (VarName  = 'ENDERECO') then
     Value := dbInicio.Empresa.ENDERECO
  else
  if (VarName  = 'CEP') then
     Value := dbInicio.Empresa.CEP
  else
  if (VarName  = 'CIDADE') then
     Value := dbInicio.Empresa.CIDADE
  else
  if (VarName  = 'UF') then
     Value := dbInicio.Empresa.UF
  else
  if (VarName  = 'TITULO') then
     Value := sTituloRelatorio
  else
  if (VarName  = 'filtro') then
     Value := sFiltroRelatorio
  else
  if (VarName  = 'FONE') then
     Value := dbInicio.Empresa.FONE;

  TfrxPictureView(frxRelConPagar10Novo.FindObject('LogoEmpresa')).Picture.Assign( dbInicio.Empresa.Logo );

end;

procedure TFormGImpPagar.ppRPRelConPagar00BeforePrint(Sender: tObject);
   Procedure InsereTextoRBuilder( pRbLabel: tpplabel );
   begin
       pRbLabel.Caption := pRbLabel.Caption +' - C.CUSTO: '+EdtPcx.Text+'-'+cbCaixa.Text ;
   end;
///
begin
     if (EdtPcx.text <> '999') then
     case LtBoxRelatorio.itemIndex of
     0: begin InsereTextoRBuilder( LBL_00_LTITULO2 ); InsereTextoRBuilder( LBL_0A_LTITULO2 ); end;
     1: InsereTextoRBuilder( LBL_01_LTITULO2 );
     2: InsereTextoRBuilder( LBL_02_LTitulo2 );
     3: InsereTextoRBuilder( LBL_02_LTitulo2 );
     4: InsereTextoRBuilder( LBL_45_LTitulo2 );
     5: InsereTextoRBuilder( LBL_45_LTitulo2 );
     end;
end;

end.

DataCadastros.sqlUpdate.Close;
  DataCadastros.SqlUpdate.sql.text :='SELECT EMP_LOGO FROM EMP0000 WHERE EMP_CODIGO ='+QuotedStr(dbInicio.Empresa.EMP_CODIGO);
  DataCadastros.sqlUpdate.Open;
  if (not DataCadastros.sqlUpdate.IsEmpty) then
     begin
        if (DataCadastros.sqlUpdate.FieldByName('EMP_LOGO').AsString <> '') then
           begin
              stream := TMemoryStream.Create;
              stream := DataCadastros.sqlUpdate.CreateBlobStream(DataCadastros.sqlUpdate.FieldByName('EMP_LOGO'),bmRead);
              //FrmMenu.ImglogoMenu.saPicture.sa
              MinhaImagem := TJPEGImage.Create;
              MinhaImagem.LoadFromStream(stream);
              MinhaImagem.SaveToStream(stream);
              TfrxPictureView(ppRPRelConPagar11.FindObject('LogoEmpresa')).Picture.Assign(MinhaImagem);
           end;
     end;
