unit GImpRece;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, RwFunc,
  Provider, SqlExpr,SqlClientDataSet, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, DB, DBClient, DBLocal, DBLocalS, ppModule, raCodMod, ppBands,
  ppVar, ppCtrls, ppPrnabl, ppCache, daDataView, daQueryDataView,
  daDBExpress, daDataModule,   ppParameter, ClipBrd, ppStrtch,
  ppMemo, ppDesignLayer, SimpleDS, Data.DBXFirebird, JvExMask, JvToolEdit, system.StrUtils;

type
  TFormGImpRece = class(TForm)
    SqlCdsRelReceber: TSQLClientDataSet;
    DsRelReceber: TDataSource;
    ppRPRelConReceber01: TppReport;
    SqlCdsRelReceberFAT_CODIGO: TStringField;
    SqlCdsRelReceberFAT_DTEMIS: TSQLTimeStampField;
    SqlCdsRelReceberFAT_VL_LIQ: TFMTBCdField;
    SqlCdsRelReceberFAT_VLFAT: TFMTBCdField;
    SqlCdsRelReceberFAT_QTDITEM: TFMTBCdField;
    SqlCdsRelReceberFAT_BASEICMS: TFMTBCdField;
    SqlCdsRelReceberFAT_ALIQUOTA: TFMTBCdField;
    SqlCdsRelReceberFAT_VL_IPI: TFMTBCdField;
    SqlCdsRelReceberFAT_BASESUB: TFMTBCdField;
    SqlCdsRelReceberFAT_ICMSRET: TFMTBCdField;
    SqlCdsRelReceberFAT_COMIS1: TFMTBCdField;
    SqlCdsRelReceberCLI_CODIGO: TStringField;
    SqlCdsRelReceberCLI_RAZAO: TStringField;
    SqlCdsRelReceberCLI_FONE: TStringField;
    SqlCdsRelReceberCLI_UF: TStringField;
    SqlCdsRelReceberREP_CODIGO: TStringField;
    SqlCdsRelReceberREP_NOME: TStringField;
    SqlCdsRelReceberPED_CODIGO: TStringField;
    SqlCdsRelReceberFPC_NUMER: TStringField;
    SqlCdsRelReceberFPC_VENCTO: TSQLTimeStampField;
    SqlCdsRelReceberFPC_COBNUM: TStringField;
    SqlCdsRelReceberFPC_STATUS: TStringField;
    SqlCdsRelReceberFPC_VLPARC: TFMTBCdField;
    SqlCdsRelReceberFPC_VLPAGO: TFMTBCdField;
    SqlCdsRelReceberFPC_DTEMIS: TSQLTimeStampField;
    SqlCdsRelReceberBAN_CODIGO: TStringField;
    SqlCdsRelReceberBAN_APELIDO: TStringField;
    SqlCdsRelReceberFPC_MES_CC: TStringField;
    SqlCdsRelReceberFPC_RECEBER_CC: TCurrencyField;
    ppRPRelConReceber02: TppReport;
    ppRPRelConReceber03: TppReport;
    SqlCdsRelReceberFPC_DIA_CC: TStringField;
    SqlCdsRelReceberFAT_ICMS_CC: TCurrencyField;
    ppDBNotas: TppDBPipeline;
    DsNotas: TDataSource;
    SqlCdsNotas: TSQLClientDataSet;
    SqlCdsNotasFAT_ICMS_CC: TCurrencyField;
    ppRPRelConReceber04: TppReport;
    SqlCdsNotasFAT_CODIGO: TStringField;
    SqlCdsNotasFAT_DTEMIS: TSQLTimeStampField;
    SqlCdsNotasFAT_VL_LIQ: TFMTBCdField;
    SqlCdsNotasFAT_VLFAT: TFMTBCdField;
    SqlCdsNotasFAT_QTDITEM: TFMTBCdField;
    SqlCdsNotasFAT_BASEICMS: TFMTBCdField;
    SqlCdsNotasFAT_ALIQUOTA: TFMTBCdField;
    SqlCdsNotasFAT_VL_IPI: TFMTBCdField;
    SqlCdsNotasFAT_BASESUB: TFMTBCdField;
    SqlCdsNotasFAT_ICMSRET: TFMTBCdField;
    SqlCdsNotasCLI_CODIGO: TStringField;
    SqlCdsNotasCLI_RAZAO: TStringField;
    SqlCdsNotasCLI_UF: TStringField;
    SqlCdsNotasREP_CODIGO: TStringField;
    SqlCdsNotasREP_NOME: TStringField;
    SqlCdsNotasEMP_CODIGO: TStringField;
    pp04HeaderBand2: TppHeaderBand;
    ppLine16: TppLine;
    LBL_04_EMPRESA: TppLabel;
    LBL_04_LTITULO1: TppLabel;
    LBL_04_LTITULO2: tpplabel;
    ppLine17: TppLine;
    ppSystemVariable9: TppSystemVariable;
    ppSystemVariable10: TppSystemVariable;
    ppLabel50: TppLabel;
    ppLine26: TppLine;
    ppLabel55: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel56: TppLabel;
    pp04DetailBand2: TppDetailBand;
    ppDBText41: TppDBText;
    ppDBText44: TppDBText;
    ppDBText43: TppDBText;
    ppDBText45: TppDBText;
    ppDBText42: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    pp04SummaryBand3: TppSummaryBand;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppDBCalc23: TppDBCalc;
    ppLabel61: TppLabel;
    ppDBCalc24: TppDBCalc;
    ppLabel62: TppLabel;
    ppDBCalc25: TppDBCalc;
    ppDBCalc26: TppDBCalc;
    ppDBCalc27: TppDBCalc;
    ppDBCalc28: TppDBCalc;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppLabel20: TppLabel;
    ppDBText50: TppDBText;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppLabel39: TppLabel;
    ppDBText51: TppDBText;
    ppLabel40: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppRPRelConReceber06: TppReport;
    SqlCdsRel06: TSQLClientDataSet;
    DsRel06: TDataSource;
    ppDBRel06: TppDBPipeline;
    SqlCdsRel06FAT_CODIGO: TStringField;
    SqlCdsRel06REP_CODIGO: TStringField;
    SqlCdsRel06FPC_DTEMIS: TSQLTimeStampField;
    SqlCdsRel06FPC_NUMER: TStringField;
    SqlCdsRel06CCT_CODIGO: TStringField;
    SqlCdsRel06PCX_CODIGO: TStringField;
    SqlCdsRel06BAN_CODIGO: TStringField;
    SqlCdsRel06FPC_COBNUM: TStringField;
    SqlCdsRel06FPC_COBTIPO: TStringField;
    SqlCdsRel06FPC_STATUS: TStringField;
    SqlCdsRel06FPC_DESCTO: TFMTBCdField;
    SqlCdsRel06FPC_DTDESC: TSQLTimeStampField;
    SqlCdsRel06FPC_VENCTO: TSQLTimeStampField;
    SqlCdsRel06FPC_PAGTO: TSQLTimeStampField;
    SqlCdsRel06FPC_VLPARC: TFMTBCdField;
    SqlCdsRel06FPC_VLPAGO: TFMTBCdField;
    SqlCdsRel06FPC_OBS: TStringField;
    SqlCdsRel06FPC_SITPAG: TStringField;
    SqlCdsRel06CLI_CODIGO: TStringField;
    SqlCdsRel06FPC_IMPDUP: TStringField;
    SqlCdsRel06CLI_RAZAO: TStringField;
    SqlCdsRel06FPC_MES_CC: TStringField;
    ppLine33: TppLine;
    pp06HeaderBand2: TppHeaderBand;
    ppLine27: TppLine;
    LBL_06_EMPRESA: TppLabel;
    LBL_06_LTITULO1: TppLabel;
    LBL_06_LTITULO2: tpplabel;
    ppLine28: TppLine;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable12: TppSystemVariable;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLine29: TppLine;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    pp06DetailBand2: TppDetailBand;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText53: TppDBText;
    ppDBText58: TppDBText;
    ppDBText60: TppDBText;
    ppDBText54: TppDBText;
    ppDBText61: TppDBText;
    ppDBText52: TppDBText;
    pp06SummaryBand3: TppSummaryBand;
    ppLabel75: TppLabel;
    ppDBCalc29: TppDBCalc;
    ppDBCalc30: TppDBCalc;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppGroup5: TppGroup;
    pp06GroupHeaderBand5: TppGroupHeaderBand;
    ppDBText55: TppDBText;
    pp06GroupFooterBand5: TppGroupFooterBand;
    ppLabel78: TppLabel;
    ppDBCalc32: TppDBCalc;
    ppLine32: TppLine;
    ppDBCalc33: TppDBCalc;
    raCodeModule5: TraCodeModule;
    ppLabel64: TppLabel;
    ppDBText66: TppDBText;
    SqlCdsRelReceberPCX_CODIGO: TStringField;
    SqlCdsNotasPCX_CODIGO: TStringField;
    SqlCdsRel07: TSQLClientDataSet;
    DsRel07: TDataSource;
    ppDBRel07: TppDBPipeline;
    ppRPRelConReceber07: TppReport;
    SqlCdsRel07FAT_CODIGO: TStringField;
    SqlCdsRel07OPV_CODIGO: TSmallintField;
    SqlCdsRel07CLI_CODIGO: TStringField;
    SqlCdsRel07CLI_RAZAO: TStringField;
    SqlCdsRel07FAT_DTEMIS: TSQLTimeStampField;
    SqlCdsRel07FAT_VLFAT: TFMTBCdField;
    SqlCdsRel07FAT_VL_RET: TFMTBCdField;
    SqlCdsRel07FAT_IRPJ_RET: TFMTBCdField;
    SqlCdsRel07FAT_PIS_RET: TFMTBCdField;
    SqlCdsRel07FAT_COFINS_RET: TFMTBCdField;
    SqlCdsRel07FAT_INSS_RET: TFMTBCdField;
    SqlCdsRel07FAT_CONTSOCIAL_RET: TFMTBCdField;
    SqlCdsRel07FAT_BASE_ISS: TFMTBCdField;
    SqlCdsRel07FAT_ISS_RET: TFMTBCdField;
    SqlCdsRel07FAT_BASE_INSS: TFMTBCdField;
    SqlCdsRel07FAT_TLIQUIDO_CC: TCurrencyField;
    SqlCdsRel08: TSQLClientDataSet;
    DsRel08: TDataSource;
    ppRPRelConReceber08: TppReport;
    SqlCdsRel08FAT_CODIGO: TStringField;
    SqlCdsRel08FPC_NUMER: TStringField;
    SqlCdsRel08FPC_VENCTO: TSQLTimeStampField;
    SqlCdsRel08FPC_VLPARC: TFMTBCdField;
    SqlCdsRel08FPC_VLPAGO: TFMTBCdField;
    SqlCdsRel08FPC_PAGTO: TSQLTimeStampField;
    SqlCdsRel08FPC_SITPAG: TStringField;
    SqlCdsRel08FPC_PREVISAO: TStringField;
    SqlCdsRel08CLI_CODIGO: TStringField;
    SqlCdsRel08CLI_RAZAO: TStringField;
    SqlCdsRel08FPC_OBS: TStringField;
    ppDBRel08: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppLine42: TppLine;
    LBL_08_EMPRESA: TppLabel;
    LBL_08_LTITULO1: TppLabel;
    LBL_08_LTITULO2: tpplabel;
    ppLine43: TppLine;
    ppSystemVariable17: TppSystemVariable;
    ppSystemVariable18: TppSystemVariable;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppLabel105: TppLabel;
    ppLine44: TppLine;
    ppLabel108: TppLabel;
    ppLabel104: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText81: TppDBText;
    ppDBText82: TppDBText;
    ppDBText83: TppDBText;
    ppDBText84: TppDBText;
    ppDBText85: TppDBText;
    ppDBText91: TppDBText;
    ppDBText86: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLabel111: TppLabel;
    ppDBCalc51: TppDBCalc;
    ppLine45: TppLine;
    ppLabel99: TppLabel;
    SqlCdsRel08FPC_DTEMIS: TSQLTimeStampField;
    ppDBText87: TppDBText;
    ppLabel100: TppLabel;
    pp03HeaderBand1: TppHeaderBand;
    ppLine19: TppLine;
    LBL_03_EMPRESA: TppLabel;
    LBL_03_LTITULO1: TppLabel;
    LBL_03_LTITULO2: tpplabel;
    ppLine22: TppLine;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel46: TppLabel;
    ppLine23: TppLine;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    pp03DetailBand1: TppDetailBand;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    pp03SummaryBand2: TppSummaryBand;
    ppLabel49: TppLabel;
    ppDBCalc16: TppDBCalc;
    ppLine24: TppLine;
    ppLine25: TppLine;
    raCodeModule4: TraCodeModule;
    pp07HeaderBand1: TppHeaderBand;
    ppLine38: TppLine;
    LBL_07_EMPRESA: TppLabel;
    LBL_07_LTITULO1: TppLabel;
    LBL_07_LTITULO2: tpplabel;
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
    ppLabel65: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel98: TppLabel;
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
    ppDBText77: TppDBText;
    ppDBText78: TppDBText;
    ppDBText79: TppDBText;
    ppDBText80: TppDBText;
    pp07SummaryBand1: TppSummaryBand;
    ppLine41: TppLine;
    ppDBCalc39: TppDBCalc;
    ppDBCalc40: TppDBCalc;
    ppDBCalc41: TppDBCalc;
    ppDBCalc42: TppDBCalc;
    ppDBCalc43: TppDBCalc;
    ppDBCalc44: TppDBCalc;
    ppDBCalc45: TppDBCalc;
    ppDBCalc46: TppDBCalc;
    ppDBCalc47: TppDBCalc;
    ppDBCalc48: TppDBCalc;
    ppLabel97: TppLabel;
    ppDBCalc49: TppDBCalc;
    raCodeModule6: TraCodeModule;
    ppLine46: TppLine;
    SqlCdsNotasPCL_CODIGO: TStringField;
    SqlCdsNotasPCL_NOME: TStringField;
    SqlCdsRelReceberFPC_MES_PAGTO_CC: TStringField;
    SqlCdsRelReceberEMP_CODIGO: TStringField;
    SqlCdsRelReceberFPC_PAGTO: TSQLTimeStampField;
    ppRPRelConReceber00A: TppReport;
    ppDBReceber: TppDBPipeline;
    ppHeaderBand2: TppHeaderBand;
    ppLine48: TppLine;
    LBL_0A_EMPRESA: TppLabel;
    LBL_0A_LTITULO1: TppLabel;
    LBL_0A_LTITULO2: tpplabel;
    ppLine49: TppLine;
    ppSystemVariable19: TppSystemVariable;
    ppSystemVariable20: TppSystemVariable;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppLine50: TppLine;
    ppLabel116: TppLabel;
    ppLabel117: TppLabel;
    ppLabel118: TppLabel;
    ppLabel127: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText57: TppDBText;
    ppDBText89: TppDBText;
    ppDBText90: TppDBText;
    ppDBText92: TppDBText;
    ppDBText93: TppDBText;
    ppDBText94: TppDBText;
    ppDBText95: TppDBText;
    ppDBText96: TppDBText;
    ppDBText97: TppDBText;
    ppDBText100: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    ppLabel119: TppLabel;
    ppDBCalc38: TppDBCalc;
    ppLabel120: TppLabel;
    ppDBCalc50: TppDBCalc;
    ppDBCalc52: TppDBCalc;
    ppLine51: TppLine;
    ppLine52: TppLine;
    ppGroup6: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppLabel121: TppLabel;
    ppDBText98: TppDBText;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppLabel122: TppLabel;
    ppDBCalc53: TppDBCalc;
    ppLabel123: TppLabel;
    ppDBCalc54: TppDBCalc;
    ppDBCalc55: TppDBCalc;
    ppLine53: TppLine;
    ppGroup7: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppLabel124: TppLabel;
    ppDBText99: TppDBText;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppLabel125: TppLabel;
    ppDBCalc56: TppDBCalc;
    ppLabel126: TppLabel;
    ppDBCalc57: TppDBCalc;
    ppLine54: TppLine;
    ppDBCalc58: TppDBCalc;
    raCodeModule8: TraCodeModule;
    pp01HeaderBand1: TppHeaderBand;
    ppLine8: TppLine;
    LBL_01_EMPRESA: TppLabel;
    LBL_01_LTITULO1: TppLabel;
    LBL_01_LTITULO2: tpplabel;
    ppLine9: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel21: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLine10: TppLine;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel22: TppLabel;
    ppLabel101: TppLabel;
    pp01DetailBand1: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBCliente: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText20: TppDBText;
    ppDBText19: TppDBText;
    pp01SummaryBand2: TppSummaryBand;
    ppLabel30: TppLabel;
    ppDBCalc10: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLine11: TppLine;
    ppLine12: TppLine;
    raCodeModule1: TraCodeModule;
    SqlCdsRel09: TSQLClientDataSet;
    DsRel09: TDataSource;
    ppDBRel09: TppDBPipeline;
    ppRPRelConReceber09: TppReport;
    SqlCdsRel09FAT_CODIGO: TStringField;
    SqlCdsRel09FPC_NUMER: TStringField;
    SqlCdsRel09FPC_NPARCELAS: TSmallintField;
    SqlCdsRel09FPC_DTEMIS: TSQLTimeStampField;
    SqlCdsRel09FPC_VENCTO: TSQLTimeStampField;
    SqlCdsRel09FPC_DATADESCTO: TDateField;
    SqlCdsRel09FPC_COBTIPO: TStringField;
    SqlCdsRel09FPC_STATUS: TStringField;
    SqlCdsRel09FPC_SITPAG: TStringField;
    SqlCdsRel09FPC_DESCONTADO: TStringField;
    SqlCdsRel09FPC_VLPARC: TFMTBCdField;
    SqlCdsRel09CLI_CODIGO: TStringField;
    SqlCdsRel09CLI_RAZAO: TStringField;
    SqlCdsRel09BAN_CODIGO: TStringField;
    SqlCdsRel09BAN_APELIDO: TStringField;
    SqlCdsRel09BAN_LIMITE_DESCTODUPL: TFMTBCdField;
    SqlCdsRel09BAN_LIMITE_DESCTOCHEQ: TFMTBCdField;
    SqlCdsRel09BAN_LIMITE_UTILIZADO_DUPL: TFMTBCdField;
    SqlCdsRel09BAN_LIMITE_UTILIZADO_CHEQ: TFMTBCdField;
    SqlCdsRel09FATURA_CC: TStringField;
    SqlCdsRel09CLIENTE_CC: TStringField;
    SqlCdsRel09DOCUTO_CC: TStringField;
    SqlCdsRel09LIMITE_01_CC: TCurrencyField;
    SqlCdsRel09LIMITE_02_CC: TCurrencyField;
    SqlCdsRel09N_DIAS_CC: TIntegerField;
    SqlCdsRel09BAN_JUROS_DESCTOCHEQ: TFMTBCdField;
    SqlCdsRel09BAN_JUROS_DESCTODUPL: TFMTBCdField;
    SqlCdsRel09TOTAL_LIQUIDO_CC: TCurrencyField;
    SqlCdsRel09JURO_BANCO_CC: TCurrencyField;
    SqlCdsRel09FPC_JUROS_DESCTO: TFMTBCdField;
    SqlCdsRelReceberFPC_COBTIPO: TStringField;
    SqlCdsRelReceberDESCR_COBRANCA_CC: TStringField;
    pp02HeaderBand1: TppHeaderBand;
    ppLine13: TppLine;
    LBL_02_EMPRESA: TppLabel;
    LBL_02_LTITULO1: TppLabel;
    LBL_02_LTITULO2: tpplabel;
    ppLine14: TppLine;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel27: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLine15: TppLine;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    pp02DetailBand1: TppDetailBand;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBTCliente: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    pp02SummaryBand2: TppSummaryBand;
    ppLabel38: TppLabel;
    ppDBCalc11: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppLine18: TppLine;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppLabel19: TppLabel;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppLine61: TppLine;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLabel18: TppLabel;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppLine21: TppLine;
    ppGroup10: TppGroup;
    ppGroupHeaderBand9: TppGroupHeaderBand;
    ppLabel138: TppLabel;
    ppDBText113: TppDBText;
    ppLine63: TppLine;
    ppGroupFooterBand9: TppGroupFooterBand;
    ppLine64: TppLine;
    ppDBCalc65: TppDBCalc;
    ppDBCalc66: TppDBCalc;
    ppLine65: TppLine;
    ppLabel139: TppLabel;
    raCodeModule3: TraCodeModule;
    ppLabel140: TppLabel;
    ppDBText15: TppDBText;
    SqlCdsRelReceberVL_DESCTO_LIQ_CC: TCurrencyField;
    SqlCdsRelReceberFPC_JUROS_DESCTO: TFMTBCdField;
    SqlCdsRelReceberFPC_DESCONTADO: TStringField;
    ppDBCalc67: TppDBCalc;
    ppDBCalc68: TppDBCalc;
    ppDBCalc69: TppDBCalc;
    SqlCdsRel10: TSQLClientDataSet;
    DsRel10: TDataSource;
    ppDBRel10: TppDBPipeline;
    ppRPRelConReceber10: TppReport;
    SqlCdsRel10FAT_REGISTRO: TIntegerField;
    SqlCdsRel10FAT_CODIGO: TStringField;
    SqlCdsRel10FPC_NUMER: TStringField;
    SqlCdsRel10REP_CODIGO: TStringField;
    SqlCdsRel10BAN_CODIGO: TStringField;
    SqlCdsRel10CCT_CODIGO: TStringField;
    SqlCdsRel10PCX_CODIGO: TStringField;
    SqlCdsRel10FPC_DTEMIS: TSQLTimeStampField;
    SqlCdsRel10FPC_NPARCELAS: TSmallintField;
    SqlCdsRel10FPC_COBNUM: TStringField;
    SqlCdsRel10FPC_COBTIPO: TStringField;
    SqlCdsRel10FPC_TIPODOC: TStringField;
    SqlCdsRel10FPC_SITPAG: TStringField;
    SqlCdsRel10FPC_STATUS: TStringField;
    SqlCdsRel10FPC_DESCTO: TFMTBCdField;
    SqlCdsRel10FPC_DTDESC: TSQLTimeStampField;
    SqlCdsRel10FPC_VENCTO: TSQLTimeStampField;
    SqlCdsRel10FPC_PAGTO: TSQLTimeStampField;
    SqlCdsRel10FPC_VLPARC: TFMTBCdField;
    SqlCdsRel10FPC_VLPAGO: TFMTBCdField;
    SqlCdsRel10FPC_OBS: TStringField;
    SqlCdsRel10CLI_CODIGO: TStringField;
    SqlCdsRel10FPC_IMPDUP: TStringField;
    SqlCdsRel10FPC_JUROS: TFMTBCdField;
    SqlCdsRel10FPC_MULTA: TFMTBCdField;
    SqlCdsRel10FPC_VL_RET: TFMTBCdField;
    SqlCdsRel10EMP_CODIGO: TStringField;
    SqlCdsRel10CCT_NOVO: TStringField;
    SqlCdsRel10FPC_PREVISAO: TStringField;
    SqlCdsRel10FPC_STATUS_REMESSA: TStringField;
    SqlCdsRel10FPC_DATA_REMESSA: TDateField;
    SqlCdsRel10BAN_COD_APELIDO: TIntegerField;
    SqlCdsRel10FPC_STATUS_BAIXA: TStringField;
    SqlCdsRel10FPC_FORMAPAGTO: TStringField;
    SqlCdsRel10FPC_DESCONTADO: TStringField;
    SqlCdsRel10FPC_DATADESCTO: TDateField;
    SqlCdsRel10FPC_CONFIRMADESCTO: TStringField;
    SqlCdsRel10FPC_CONFIRMADEVOLUCAO: TStringField;
    SqlCdsRel10FPC_DATADEVOLUCAO: TDateField;
    SqlCdsRel10FPC_OBS_DESCTO: TStringField;
    SqlCdsRel10FPC_JUROS_DESCTO: TFMTBCdField;
    SqlCdsRel10PAG_CODIGO: TStringField;
    SqlCdsRel10FPC_BANCO_CHEQUE: TIntegerField;
    SqlCdsRel10FPC_NUM_CHEQUE: TStringField;
    SqlCdsRel10FPC_NUM_CHEQUE_DV: TStringField;
    SqlCdsRel10BAN_APELIDO: TStringField;
    SqlCdsRel10BCO_DESCRICAO: TStringField;
    SqlCdsRel10FPC_CHEQUE_DATA: TDateField;
    SqlCdsRel10PED_CODIGO: TStringField;
    SqlCdsRel10CC_OPERACAO: TStringField;
    SqlCdsRel09FPC_BANCO_CHEQUE: TIntegerField;
    SqlCdsRel09FPC_NUM_CHEQUE: TStringField;
    SqlCdsRel09FPC_NUM_CHEQUE_DV: TStringField;
    SqlCdsRel09FPC_SACADO_CHEQUE: TStringField;
    SqlCdsCliente: TSQLClientDataSet;
    SqlCdsClienteCLI_CODIGO: TStringField;
    SqlCdsClienteCLI_RAZAO: TStringField;
    SqlCdsClienteEMP_CODIGO: TStringField;
    SqlCdsBanco: TSQLClientDataSet;
    SqlCdsBancoBAN_CODIGO: TStringField;
    SqlCdsBancoBAN_RAZAO: TStringField;
    SqlCdsBancoBAN_APELIDO: TStringField;
    SqlCdsBancoEMP_CODIGO: TStringField;
    SqlCdsRepresentante: TSQLClientDataSet;
    SqlCdsRepresentanteREP_CODIGO: TStringField;
    SqlCdsRepresentanteREP_NOME: TStringField;
    SqlCdsRepresentanteEMP_CODIGO: TStringField;
    SqlCdsProjCx: TSQLClientDataSet;
    SqlCdsProjCxPCX_CODIGO: TStringField;
    SqlCdsProjCxPCX_DESCRI: TStringField;
    SqlCdsProjCxEMP_CODIGO: TStringField;
    SqlBcoCheques: TSQLClientDataSet;
    SqlBcoChequesBCO_CODIGO: TIntegerField;
    SqlBcoChequesBCO_DESCRICAO: TStringField;
    SqlBcoChequesEMP_CODIGO: TStringField;
    SqlCdsRel10FPC_SACADO_CHEQUE: TStringField;
    SqlCdsRel10FPC_EXCLUSAO: TStringField;
    SqlCdsRel10FPC_DATA_EXCLUSAO: TDateField;
    SqlCdsRel10FPC_HORA_EXCLUSAO: TTimeField;
    SqlCdsRel10FPC_MOTIVO_EXCLUSAO: TStringField;
    SqlCdsRel10USU_CODIGO: TIntegerField;
    SqlCdsRel10USU_LOGIN: TStringField;
    SqlCdsRel10CLI_RAZAO: TStringField;
    ppParameterList1: TppParameterList;
    SqlCdsRel10CC_RAZAO: TStringField;
    ppHeaderBand3: TppHeaderBand;
    ppLine20: TppLine;
    LBL_10_EMPRESA: TppLabel;
    LBL_10_LTITULO1: TppLabel;
    LBL_10_LTITULO2: tpplabel;
    ppSystemVariable23: TppSystemVariable;
    ppSystemVariable24: TppSystemVariable;
    ppLine66: TppLine;
    ppLabel141: TppLabel;
    ppLabel143: TppLabel;
    ppLabel142: TppLabel;
    ppLabel144: TppLabel;
    ppLabel145: TppLabel;
    ppLabel146: TppLabel;
    ppLabel147: TppLabel;
    ppLabel148: TppLabel;
    ppLabel149: TppLabel;
    ppLabel151: TppLabel;
    ppLabel153: TppLabel;
    ppLabel154: TppLabel;
    ppLabel156: TppLabel;
    ppLabel155: TppLabel;
    ppLabel157: TppLabel;
    ppLabel158: TppLabel;
    ppLabel159: TppLabel;
    ppLine67: TppLine;
    ppLabel160: TppLabel;
    ppLabel161: TppLabel;
    ppLabel150: TppLabel;
    ppLabel152: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText24: TppDBText;
    ppDBFANTASIA: TppDBText;
    ppDBText115: TppDBText;
    ppDBFatura: TppDBText;
    ppDBText117: TppDBText;
    ppDBBanco1: TppDBText;
    ppDBText121: TppDBText;
    ppDBBancoCH: TppDBText;
    ppDBText123: TppDBText;
    ppDBText114: TppDBText;
    ppDBText118: TppDBText;
    ppDBText116: TppDBText;
    ppSummaryBand6: TppSummaryBand;
    ppLine68: TppLine;
    ppDBCalc61: TppDBCalc;
    ppLabel164: TppLabel;
    raCodeModule9: TraCodeModule;
    SqlCdsRel09CC_RAZAO: TStringField;
    SqlCdsRel09FPC_TIPODOC: TStringField;
    ppParameterList2: TppParameterList;
    SqlCdsRel09BCO_DESCRICAO: TStringField;
    ppHeaderBand5: TppHeaderBand;
    ppLine55: TppLine;
    LBL_09_EMPRESA: TppLabel;
    LBL_09_LTITULO1: tpplabel;
    LBL_09_LTITULO2: tpplabel;
    ppSystemVariable21: TppSystemVariable;
    ppSystemVariable22: TppSystemVariable;
    ppLine56: TppLine;
    ppDetailBand6: TppDetailBand;
    ppDBTRazao: TppDBText;
    ppDBText106: TppDBText;
    ppDBText107: TppDBText;
    ppDBText108: TppDBText;
    ppDBText109: TppDBText;
    ppDBText101: TppDBText;
    ppDBText110: TppDBText;
    ppDBTNcheque: TppDBText;
    ppDBText112: TppDBText;
    DBTSacado: TppDBText;
    ppSummaryBand5: TppSummaryBand;
    ppLine62: TppLine;
    ppLabel136: TppLabel;
    ppDBCalc60: TppDBCalc;
    ppGroup8: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppLabel128: TppLabel;
    ppLine57: TppLine;
    ppDBText102: TppDBText;
    ppDBText104: TppDBText;
    LBL_LIMITE1: TppLabel;
    DbLimite1: TppDBText;
    LBL_LIMITE2: TppLabel;
    DbLimite2: TppDBText;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppLabel166: TppLabel;
    ppDBCalc62: TppDBCalc;
    ppLine70: TppLine;
    ppGroup9: TppGroup;
    ppGroupHeaderBand8: TppGroupHeaderBand;
    ppLine69: TppLine;
    LBL_TIPO_COBRANCA: TppLabel;
    ppGroupFooterBand8: TppGroupFooterBand;
    ppDBCalc59: TppDBCalc;
    ppLabel131: TppLabel;
    ppLine60: TppLine;
    ppGroup11: TppGroup;
    ppGroupHeaderBand10: TppGroupHeaderBand;
    ppLine58: TppLine;
    ppLabel129: TppLabel;
    ppLabel130: TppLabel;
    ppLabel132: TppLabel;
    ppLabel133: TppLabel;
    ppLabel135: TppLabel;
    ppLabel137: TppLabel;
    ppLabel134: TppLabel;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppLabel162: TppLabel;
    ppGroupFooterBand10: TppGroupFooterBand;
    ppLabel163: TppLabel;
    ppDBCalc63: TppDBCalc;
    ppLine59: TppLine;
    ppLine71: TppLine;
    raCodeModule10: TraCodeModule;
    ppDBText105: TppDBText;
    SqlCdsRelReceberFPC_JUROS: TFMTBCdField;
    SqlCdsRelReceberFPC_MULTA: TFMTBCdField;
    SqlCdsRelReceberFPC_DESCTO: TFMTBCdField;
    ppLabel165: TppLabel;
    ppDBText111: TppDBText;
    ppLabel167: TppLabel;
    ppDBText119: TppDBText;
    ppDBCalc64: TppDBCalc;
    ppDBCalc70: TppDBCalc;
    SqlCdsRelReceberBAN_JUROMES: TFMTBCdField;
    SqlCdsRelReceberJurosDia: TFloatField;
    SqlCdsRelReceberJurosTotal: TFloatField;
    SqlCdsClienteCLI_CGC: TStringField;
    Panel1: TPanel;
    Group01: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Group05: TGroupBox;
    LabelCliente: TLabel;
    lbl2: TLabel;
    CbCliente: TComboBox;
    rb1: TRadioButton;
    rb2: TRadioButton;
    CCodigo: TEdit;
    grContaBanco: TGroupBox;
    Label1: TLabel;
    CbBancos: TComboBox;
    Group03: TGroupBox;
    Label2: TLabel;
    CbRepre: TComboBox;
    Group06: TGroupBox;
    CbCaixa: TComboBox;
    grBanco: TGroupBox;
    CbBcoCheque: TComboBox;
    Group09: TGroupBox;
    Label5: TLabel;
    lblDoc: TLabel;
    CbxCarteira: TComboBox;
    CbxTipoDoc: TComboBox;
    Group11: TGroupBox;
    RadTodos: TRadioButton;
    RadDescontados: TRadioButton;
    RadaDescontar: TRadioButton;
    RadDevolvidos: TRadioButton;
    Group07: TGroupBox;
    BitConfig: TBitBtn;
    BitOk: TBitBtn;
    BitCancelar: TBitBtn;
    PrinterSetupDialog1: TPrinterSetupDialog;
    Panel2: TPanel;
    GroupBox6: TGroupBox;
    LTBoxRelatorio: TListBox;
    GroupBox3: TGroupBox;
    RadVideo: TRadioButton;
    RadImpressora: TRadioButton;
    RadText: TRadioButton;
    pnStatus: TPanel;
    Group04: TGroupBox;
    RadTodas: TRadioButton;
    RadPagas: TRadioButton;
    RadPendente: TRadioButton;
    RadParcial: TRadioButton;
    Group08: TGroupBox;
    Rad_Vencto: TRadioButton;
    Rad_Pagto: TRadioButton;
    Panel3: TPanel;
    Group12: TGroupBox;
    Rad_Todas: TRadioButton;
    Rad_Cheques: TRadioButton;
    Rad_Duplicata: TRadioButton;
    Group13: TGroupBox;
    Rad_Data_Vencto: TRadioButton;
    Rad_Data_Descto: TRadioButton;
    ppRPRelConReceber00: TppReport;
    pp00HeaderBand2: TppHeaderBand;
    LBL_00_EMPRESA: TppLabel;
    LBL_00_LTITULO1: TppLabel;
    LBL_00_LTITULO2: tpplabel;
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
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel12: TppLabel;
    pp00DetailBand2: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText103: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel14: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppLabel17: TppLabel;
    ppDBCalc6: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppLine4: TppLine;
    ppLine7: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel9: TppLabel;
    ppDBText1: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel11: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLabel16: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppLine3: TppLine;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppLabel10: TppLabel;
    ppDBText3: TppDBText;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel13: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLabel15: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppLine2: TppLine;
    ppDBCalc4: TppDBCalc;
    raCodeModule2: TraCodeModule;
    ppParameterList3: TppParameterList;
    SqlCdsRelReceberFPG_DESCRICAO: TStringField;
    SqlCdsRelReceberFPG_REGISTRO: TIntegerField;
    ppLabel168: TppLabel;
    ppDBText120: TppDBText;
    ppDBText122: TppDBText;
    ppLabel169: TppLabel;
    ppDBText124: TppDBText;
    ppLabel170: TppLabel;
    ppDBText10: TppDBText;
    EditDataI: TJvDateEdit;
    EditDataF: TJvDateEdit;
    Cconta: TEdit;
    CCodRep: TEdit;
    CCodProj: TEdit;
    CurrBcoCheque: TEdit;
    SqlCdsNotasFPC_VLPARC: TFMTBCDField;
    ppRPRelConReceber05: TppReport;
    pp05HeaderBand1: TppHeaderBand;
    ppLine34: TppLine;
    LBL_05_EMPRESA: TppLabel;
    LBL_05_LTITULO1: TppLabel;
    LBL_05_LTITULO2: TppLabel;
    ppLine35: TppLine;
    ppSystemVariable13: TppSystemVariable;
    ppSystemVariable14: TppSystemVariable;
    ppLabel71: TppLabel;
    ppLine36: TppLine;
    ppLabel72: TppLabel;
    ppLabel76: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel63: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText56: TppDBText;
    ppDBTextRazao: TppDBText;
    ppDBText59: TppDBText;
    ppDBText64: TppDBText;
    ppDBText62: TppDBText;
    ppDBText65: TppDBText;
    ppDBText88: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLabel82: TppLabel;
    ppDBCalc37: TppDBCalc;
    ppLine37: TppLine;
    ppLine47: TppLine;
    raCodeModule7: TraCodeModule;
    ppDesignLayers6: TppDesignLayers;
    ppDesignLayer6: TppDesignLayer;
    ppParameterList9: TppParameterList;
    ppRPRelConReceber05Banco: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppLine5: TppLine;
    LBL_51_EMPRESA: TppLabel;
    LBL_051_LTITULO1: TppLabel;
    LBL_051_LTITULO2: TppLabel;
    ppLine72: TppLine;
    ppSystemVariable25: TppSystemVariable;
    ppSystemVariable26: TppSystemVariable;
    ppLabel85: TppLabel;
    ppLine73: TppLine;
    ppLabel171: TppLabel;
    ppLabel172: TppLabel;
    ppLabel173: TppLabel;
    ppLabel175: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppDBText63: TppDBText;
    ppDBText125: TppDBText;
    ppDBText126: TppDBText;
    ppDBText127: TppDBText;
    ppDBText128: TppDBText;
    ppSummaryBand7: TppSummaryBand;
    ppLabel176: TppLabel;
    ppDBCalc31: TppDBCalc;
    ppLine74: TppLine;
    ppLine75: TppLine;
    raCodeModule11: TraCodeModule;
    ppDesignLayers13: TppDesignLayers;
    ppDesignLayer13: TppDesignLayer;
    ppParameterList13: TppParameterList;
    SqlCdsNotasban_codigo: TStringField;
    SqlCdsNotasban_apelido: TStringField;
    ppDBText129: TppDBText;
    ppDBText130: TppDBText;
    ppGroup12: TppGroup;
    ppGroupHeaderBand11: TppGroupHeaderBand;
    ppGroupFooterBand11: TppGroupFooterBand;
    ppDBCalc34: TppDBCalc;
    ppLabel177: TppLabel;
    ppDBText131: TppDBText;
    ppLabel178: TppLabel;
    ppDBCalc35: TppDBCalc;
    ppLabel79: TppLabel;
    ppLabel83: TppLabel;
    ppDBText132: TppDBText;
    procedure MudaCorCampos(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure BitOkClick(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure BitConfigClick(Sender: tObject);
    procedure EditDataFExit(Sender: tObject);
    procedure EditDataIExit(Sender: tObject);
    procedure LTBoxRelatorioClick(Sender: tObject);
    procedure CbClienteClick(Sender: tObject);
    procedure CbBancosClick(Sender: tObject);
    procedure CbRepreClick(Sender: tObject);
    procedure CbCaixaClick(Sender: tObject);
    procedure SqlCdsRelReceberCalcFields(DataSet: TDataSet);
    procedure pp04HeaderBand2BeforePrint(Sender: tObject);
    procedure SqlCdsNotasCalcFields(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure SqlCdsRel06CalcFields(DataSet: TDataSet);
    procedure pp06HeaderBand2BeforePrint(Sender: tObject);
    procedure pp00HeaderBand2BeforePrint(Sender: tObject);
    procedure pp01HeaderBand1BeforePrint(Sender: tObject);
    procedure pp02HeaderBand1BeforePrint(Sender: tObject);
    procedure pp03HeaderBand1BeforePrint(Sender: tObject);
    procedure LTBoxRelatorioDblClick(Sender: tObject);
    procedure pp07HeaderBand1BeforePrint(Sender: tObject);
    procedure SqlCdsRel07CalcFields(DataSet: TDataSet);
    procedure ppHeaderBand1BeforePrint(Sender: tObject);
    procedure pp05HeaderBand1BeforePrint(Sender: tObject);
    procedure ppHeaderBand2BeforePrint(Sender: tObject);
    procedure RadTodasClick(Sender: tObject);
    procedure SqlCdsRel09CalcFields(DataSet: TDataSet);
    procedure CurrBcoChequeExit(Sender: tObject);
    procedure CurrBcoChequeEnter(Sender: tObject);
    procedure CbBcoChequeClick(Sender: tObject);
    procedure SqlCdsRel10CalcFields(DataSet: TDataSet);
    procedure CCodigoEnter(Sender: tObject);
    procedure CcontaEnter(Sender: tObject);
    procedure CCodRepEnter(Sender: tObject);
    procedure CCodProjEnter(Sender: tObject);
    procedure CCodigoExit(Sender: tObject);
    procedure CcontaExit(Sender: tObject);
    procedure CCodRepExit(Sender: tObject);
    procedure CCodProjExit(Sender: tObject);
    procedure rb1Click(Sender: tObject);
    procedure rb2Click(Sender: tObject);
    procedure CCodigoKeyPress(Sender: tObject; var Key: Char);
    procedure SqlCdsRelReceberBeforeOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: tObject);
    procedure ppRPRelConReceber00BeforePrint(Sender: tObject);
    procedure LBL_51_EMPRESAGetText(Sender: TObject; var Text: string);
    procedure TrocandoPaginasGetText(Sender: TObject; var Text: string);
  private
PathNewRel :STRING;
       {campos}
    CampoBox     :TComboBox;
    CampoData    :TJVDateEdit;
    CampoCurrency:TEdit;
    {}
//    wCli_Codigo,
//    wRep_Codigo,
//    wBan_Codigo,
//    wPcx_Codigo,
//    wCli_Descri,
//    wRep_Descri,
//    wBan_Descri,
//    wPcx_Descri,
    wTipoDocumento,
    wTipoCobranca : String;

    procedure LayOutRelatorio;
    procedure LayOutFiltro;
    procedure CriaRelatorio09;
    procedure CriaRelatorio10;
    procedure BuscaBcoCheque;
    procedure BuscaCliente;
    procedure BuscaConta;
    procedure BuscaRepresentante;
    procedure BuscaProjeto;
    function GetFiltroCli(prefsql:string):String;
    procedure settipobuscacliente;
  public
    {Public declarations}
  end;

var
  FormGImpRece: TFormGImpRece;
implementation

{$R *.DFM}

uses Uteis, DataCad,DataCad1, Men0001, Rec0005, ufrmpreviewrb, iniciodb;





procedure TFormGImpRece.MudaCorCampos(Sender: tObject);
begin
    {cor dos campos TCampoBox}
    if Assigned(CampoBox) then
       begin
           CampoBox.color := clWindow;
       end;
    if ActiveControl is TComboBox then
       begin
           TComboBox(ActiveControl).color := $0080FFFF;
           CampoBox := TComboBox(ActiveControl);
       end
    else
       begin
           CampoBox := nil;
       end;
    {CampoData  :TDateEdit}
    if Assigned(CampoData) then
       begin
           CampoData.color := clWindow;
       end;
    if ActiveControl is TJVDateEdit then
       begin
           TJVDateEdit(ActiveControl).color := $0080FFFF;
           CampoData := TJVDateEdit(ActiveControl);
       end
    else
       begin
           CampoData := nil;
       end;
    {CampoCurrency:TCurrencyEdit}
    if Assigned(CampoCurrency) then
       begin
           CampoCurrency.color := clWindow;
       end;
    if ActiveControl is TEdit then
       begin
           TEdit(ActiveControl).color := $0080FFFF;
           CampoCurrency := TEdit(ActiveControl);
       end
    else
       begin
           CampoCurrency := nil;
       end;
end;

procedure TFormGImpRece.FormShow(Sender: tObject);
begin
//  Left := 166;
//  Top := 82;
    //
     {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
    try
      DataCadastros1.CdsParametros.Close;
      DataCadastros1.CdsParametros.CommandText := SQLDEF('PARAMETROS','SELECT * FROM PRMT0001','','EMP_CODIGO','');
      DataCadastros1.CdsParametros.Open;
      if DataCadastros1.CdsParametrosPMT_PROJCX.AsString = 'S' then
         begin
             CbCaixa.Enabled   := True;
         end;
      try
        DataCadastros1.CdsParametros.Close;
      except on E:EdataBaseError do
         begin
             uteis.erro  (Pchar('Erro ao Fechar a Tabela PARAMETROS !'+e.message));
         end;
      end;
    except on E:EdataBaseError do
        begin
            uteis.erro  (Pchar('Erro ao abrir a Tabela PARAMETROS !'+e.message));
        end;
    end;

    try
      SqlCdsCliente.Close;
      SqlCdsCliente.CommandText:=SQLDEF('CLIENTES','SELECT CLI_CODIGO,CLI_RAZAO,EMP_CODIGO,CLI_CGC FROM CLI0000','','CLI_RAZAO','');
      SqlCdsCliente.Open;
      SqlCdsCliente.First;
      while not SqlCdsCliente.Eof do
        begin
            CbCliente.Items.Add(SqlCdsClienteCLI_RAZAO.AsString);
            SqlCdsCliente.Next;
        end;
    except on E:EdatabaseError do
        begin
            uteis.erro  (Pchar('Erro ao abrir a Tabela CLIENTES !'+e.message));
        end;
    end;

    try
      SqlCdsBanco.Close;
      SqlCdsBanco.CommandText:=SQLDEF('BANCOS','SELECT BAN_CODIGO,BAN_RAZAO,BAN_APELIDO,EMP_CODIGO FROM BAN0000','','BAN_APELIDO','');
      SqlCdsBanco.Open;
      SqlCdsBanco.First;
      while not SqlCdsBanco.Eof do
        begin
            CbBancos.Items.Add(SqlCdsBancoBAN_APELIDO.AsString);
            SqlCdsBanco.Next;
        end;
    except on E:EdatabaseError do
        begin
            uteis.erro  (Pchar('Erro ao abrir a Tabela BANCOS !'+e.message));
        end;
    end;
    {Carrega os Bancos do Cheque}
    try
      SqlBcoCheques.Close;
      SqlBcoCheques.CommandText:=SQLDEF('BANCOS','SELECT * FROM BANCOS','','BCO_DESCRICAO','');
      SqlBcoCheques.Open;
      SqlBcoCheques.First;
      CbBcoCheque.Items.Clear;
      CbBcoCheque.Items.Add('TODOS OS BANCOS');
      while not SqlBcoCheques.Eof do
       begin
           CbBcoCheque.Items.Add(SqlBcoChequesBCO_DESCRICAO.AsString);
           SqlBcoCheques.Next;
       end;
      CbBcoCheque.ItemIndex := 0;       
    except on E:EdatabaseError do
        begin
            uteis.erro  (Pchar('Erro ao abrir a Tabela BANCOS !'+e.message));
        end;
    end;
    {}
    try
      SqlCdsRepresentante.Close;
      SqlCdsRepresentante.CommandText:=SQLDEF('REPRESENTANTES','SELECT REP_CODIGO,REP_NOME,EMP_CODIGO FROM REP0000','','REP_NOME','');
      SqlCdsRepresentante.Open;
      SqlCdsRepresentante.First;
      while not SqlCdsRepresentante.Eof do
        begin
            CbRepre.Items.Add(SqlCdsRepresentanteREP_NOME.AsString);
            SqlCdsRepresentante.Next;
        end;
    except on E:EdatabaseError do
        begin
            uteis.erro  (Pchar('Erro ao abrir a Tabela Vendedor !'+e.message));
        end;
    end;

    try
      SqlCdsProjCx.Close;
      SqlCdsProjCx.CommandText:=SQLDEF('TABELAS','SELECT PCX_CODIGO,PCX_DESCRI,EMP_CODIGO FROM PCX0000','','PCX_DESCRI','');
      SqlCdsProjCx.Open;
      SqlCdsProjCx.First;
      while not SqlCdsProjCx.Eof do
        begin
            CbCaixa.Items.Add(SqlCdsProjCxPCX_DESCRI.AsString);
            SqlCdsProjCx.Next;
        end;
    except on E:EdatabaseError do
        begin
            uteis.erro  (Pchar('Erro ao abrir a Tabela PROJETO DE CAIXA !'+e.message));
        end;
    end;
    screen.cursor := crHourGlass;
    { AS TABELAS SÃO EXCLUSIVA P/ CADA RELATORIO E ESTAO SENDO ABERTAS CONFORME
    O ITEM ESCOLHIDO NA COMBO }
    // Abrir indice por vencimento
    // carregar comb com nome dos relatórios
    LTBoxRelatorio.Items.Add('Relatório de Controle de Contas à Receber');            //0  RelConReceber01 00
    LTBoxRelatorio.Items.Add('Relatório de Títulos à Receber e Recebidos');           //1  RelConReceber02 01
    LTBoxRelatorio.Items.Add('Relatório de Títulos à Receber por Conta');             //2  RelConReceber03 02
    LTBoxRelatorio.Items.Add('Relatório de Títulos Vencidos');                        //3  RelFaturaDia    03
    LTBoxRelatorio.Items.Add('Relatório de Contas Faturadas por Estado');             //4  RelConReceber05 04
    LTBoxRelatorio.Items.Add('Relatório de Contas Faturadas');                        //5
    LTBoxRelatorio.Items.Add('Relatório de Contas Faturadas por Banco');              //6

    LTBoxRelatorio.Items.Add('Previsão de Liquidez do Faturamento');                  //7
    LTBoxRelatorio.Items.Add('Relatório de Notas Fiscais com Retenção');              //8
    LTBoxRelatorio.Items.Add('Relatório de Contas à Receber definido como Previsão'); //9
    LTBoxRelatorio.Items.Add('Relatório de Títulos Descontados (Remessa)');           //10
    LTBoxRelatorio.Items.Add('Relatório de Cheques');                                 //11 RelConReceber10 11

    if Assigned(FrmRemessaDescontar) then
       LTBoxRelatorio.ItemIndex := 10   // No ultimo relatorio
    else
       LTBoxRelatorio.ItemIndex := 0;  // seta no primeiro item
    LayOutRelatorio;
    LayOutFiltro;
    if (LTBoxRelatorio.ItemIndex = 0) then // Primeiro Relatório.
       begin
           CCodigo.SetFocus;
           CCodigo.SelectAll;
       end;
    // valores de datas pré-atribuido
    EditDataI.Date := now-15;   // data de hoje - 15 dias
    EditDataF.Date := now;
    Radtodas.Checked := True;
    screen.cursor := crDefault;
end;

procedure TFormGImpRece.BitOkClick(Sender: tObject);
begin
    wSql1          := '';
    wSql2          := '';
    wSql3          := '';
    wSql4          := '';
    wSql5          := '';
    wSeleciona     := '';
    wOrdem         := '';
    wTipoCobranca  := '';
    wTipoDocumento := '';
    // verifica se a data final é maior que a data inicial
    if EditDataI.Date > EditDataF.Date then
       begin
           uteis.erro  ('Data final não pode ser menor que a data inicial!');
           EditDataF.Setfocus;
           exit;
       end;
    {Aqui faz o Filtro conforme Selecionado no RadioBottom}
    if (LTBoxRelatorio.ItemIndex < 3) then   //Rel = 0,1,2
    begin
         if RadPagas.checked and Rad_Pagto.Checked then
           wSeleciona := ' where F2.FPC_PAGTO BETWEEN '+QuotedStr(DataAmericana(EditDataI.Text))+' AND '+QuotedStr(DataAmericana(EditDataF.Text))
         else
           wSeleciona := ' where F2.FPC_VENCTO BETWEEN '+QuotedStr(DataAmericana(EditDataI.Text))+' AND '+QuotedStr(DataAmericana(EditDataF.Text));
     //      RadPendente
        if (LTBoxRelatorio.ItemIndex = 0) or (LTBoxRelatorio.ItemIndex = 1) then
        begin
            if RadPendente.checked  then
               wSeleciona := wSeleciona + ' AND F2.FPC_VLPAGO = 0 AND F2.FPC_SITPAG = ''P'' AND FAT_EXCLUSAO = ''N'' '
            else
            if RadParcial.checked  then
               wSeleciona := wSeleciona + ' AND F2.FPC_VLPAGO < F2.FPC_VLPARC AND (FPC_PAGTO IS NOT NULL) AND F2.FPC_SITPAG = '+quotedStr('P')
            else
            if RadPagas.checked  then
               wSeleciona := wSeleciona + ' AND F2.FPC_SITPAG=''L''';

            if RadPagas.Checked or RadParcial.checked then
            Begin
                if Rad_Vencto.Checked then
                   wOrdem     := 'F2.FPC_VENCTO, F2.FPC_PAGTO'
                else
                   wOrdem     := 'F2.FPC_PAGTO, F2.FPC_VENCTO';
            end
            else
                wOrdem := 'F2.FPC_VENCTO, F2.FPC_PAGTO' ;

            if (CCodRep.Text <> '999') then
            begin
                {Adiciona no Filtro o Código do Representante}
                wSeleciona := wSeleciona +' AND F1.REP_CODIGO = '+quotedstr(StrZero(CCodRep.Text,3));
            end;

            if (CbxCarteira.ItemIndex <> -1) then
            begin
                 wTipoCobranca := IIF(CbxCarteira.ItemIndex = 0,'TODOS'  ,
                                  IIF(CbxCarteira.ItemIndex = 1,'CT',               //CT = CARTEIRA
                                  IIF(CbxCarteira.ItemIndex = 2,'CS',               //CS = COBRANCA SIMPLES
                                  IIF(CbxCarteira.ItemIndex = 3,'CC',               //CC = COBRANCA CAUCIONADA
                                  IIF(CbxCarteira.ItemIndex = 4,'CD',               //Cd = COBRANCA DESCONTADA
                                  IIF(CbxCarteira.ItemIndex = 5,'SR',               //SR = COBRANCA SEM REGISTRO
                                  IIF(CbxCarteira.ItemIndex = 6,'CR',               //CR = COBRANCA RAPIDA
                                  IIF(CbxCarteira.ItemIndex = 7,'CQ','CH'))))))));  //CQ = CUSTODIA CHEQUE / CH = CHEQUE DESCONTADO
                 if (Trim(wTipoCobranca) <> 'TODOS') then
                    wSeleciona := wSeleciona + ' AND F2.FPC_COBTIPO = '+quotedstr(wTipoCobranca);
            end;

            if (CbxTipoDoc.ItemIndex <> -1) then
            begin
                wTipoDocumento := IIF(CbxTipoDoc.ItemIndex = 0,'TODOS'  ,
                                  IIF(CbxTipoDoc.ItemIndex = 1,'DP',
                                  IIF(CbxTipoDoc.ItemIndex = 2,'BL',
                                  IIF(CbxTipoDoc.ItemIndex = 3,'RC',
                                  IIF(CbxTipoDoc.ItemIndex = 4,'CH',
                                  IIF(CbxTipoDoc.ItemIndex = 5,'DN',
                                  IIF(CbxTipoDoc.ItemIndex = 6,'OU','CC')))))));
               if (Trim(wTipoDocumento) <> 'TODOS') then
                  wSeleciona := wSeleciona + ' AND F2.FPC_TIPODOC = '+QuotedStr(wTipoDocumento);
            end;
        end
        else
        begin
            if RadPendente.checked  then
               wSeleciona := wSeleciona + ' AND F2.FPC_VLPAGO = 0 AND F2.FPC_SITPAG = ''P'' AND FAT_EXCLUSAO = ''N'' '
            Else
            if RadParcial.checked  then
               wSeleciona := wseleciona + ' AND F2.FPC_VLPAGO < F2.FPC_VLPARC AND (FPC_PAGTO IS NOT NULL)'
            else
            if RadPagas.checked  then
               wSeleciona := wSeleciona + ' AND F2.FPC_SITPAG=''L''';

            if (CbxCarteira.ItemIndex <> -1) then
               wTipoCobranca := IIF(CbxCarteira.ItemIndex = 0,''  ,
                                IIF(CbxCarteira.ItemIndex = 1,'CT',               //CT = CARTEIRA
                                IIF(CbxCarteira.ItemIndex = 2,'CS',               //CS = COBRANCA SIMPLES
                                IIF(CbxCarteira.ItemIndex = 3,'CC',               //CC = COBRANCA CAUCIONADA
                                IIF(CbxCarteira.ItemIndex = 4,'Cd',               //Cd = COBRANCA DESCONTADA
                                IIF(CbxCarteira.ItemIndex = 5,'SR',               //SR = COBRANCA SEM REGISTRO
                                IIF(CbxCarteira.ItemIndex = 6,'CR',               //CR = COBRANCA RAPIDA
                                IIF(CbxCarteira.ItemIndex = 7,'CQ','CH'))))))));  //CQ = CUSTODIA CHEQUE / CH = CHEQUE DESCONTADO
              if (Length(wTipoCobranca)>0) then
                 wSeleciona := wSeleciona + ' and F2.FPC_COBTIPO = '+quotedstr(wTipoCobranca);
              wOrdem := 'F2.BAN_CODIGO,F2.FPC_COBTIPO,F2.FPC_VENCTO';
        end;
    end
    else
       begin
           if LTBoxRelatorio.ItemIndex = 3 then
              begin
                  {Filtrar todas as Contas com a Situação Pendente}
                  wSeleciona := ' where F2.FPC_VENCTO BETWEEN '+quotedstr(DataAmericana(EditDataI.Text))+' AND '+quotedstr(DataAmericana(EditDataF.Text))+' AND F2.FPC_SITPAG = '+quotedstr('P');
                  wSeleciona := wSeleciona+GetFiltroCli('C1');
                  wOrdem     := 'F2.FPC_VENCTO';
              end;

           if (LTBoxRelatorio.ItemIndex = 4) then
              begin
                  {Filtrar todas as Contas}
                  CbCliente.ItemIndex := 0;
                  CbBancos.ItemIndex  := 0;
                  CbRepre.ItemIndex   := 0;
                  CbCaixa.ItemIndex   := 0;
                  wSeleciona := ' where F1.FAT_DTEMIS BETWEEN '+quotedstr(DataAmericana(EditDataI.Text))+' AND '+quotedstr(DataAmericana(EditDataF.Text));
                  wOrdem     := ' C1.CLI_UF,F1.FAT_DTEMIS,F1.FAT_CODIGO';
              end;
           if (LTBoxRelatorio.ItemIndex = 5) or (LTBoxRelatorio.ItemIndex = 6)  then
              begin

                  wSeleciona := ' where F1.FAT_DTEMIS BETWEEN '+quotedstr(DataAmericana(EditDataI.Text))+' AND '+quotedstr(DataAmericana(EditDataF.Text));
                  if (Cconta.Text <> '') and (Cconta.Text <> '9999') then
                     wseleciona := wSeleciona +' AND F2.ban_codigo =' + QuotedStr(StrZero(Cconta.Text,4)) ;
                  if LTBoxRelatorio.ItemIndex = 6 then
                    wOrdem     := ' b1.BAN_CODIGO, ban_apelido, F1.FAT_DTEMIS,C1.CLI_RAZAO'
                  else
                    wOrdem     := ' F1.FAT_DTEMIS,C1.CLI_RAZAO';
                  {Filtrar todas as Contas}
                  CbCliente.ItemIndex := 0;
                  CbBancos.ItemIndex  := 0;
                  Cconta.Text := '';
                  CbRepre.ItemIndex   := 0;
                  CbCaixa.ItemIndex   := 0;
              end;
           if LTBoxRelatorio.ItemIndex = 7 then
              begin
                  {Filtrar todas as Contas}
                  CbCliente.ItemIndex := 0;
                  CbBancos.ItemIndex  := 0;
                  CbRepre.ItemIndex   := 0;
                  CbCaixa.ItemIndex   := 0;
                  wSeleciona := ' where F1.FPC_DTEMIS BETWEEN '+quotedstr(DataAmericana(EditDataI.Text))+' AND '+quotedstr(DataAmericana(EditDataF.Text));
                  wOrdem     := ' F1.FPC_VENCTO';
              end;
           if (LTBoxRelatorio.ItemIndex = 8) then
              begin
                  {Filtrar todas as Contas}
                  CbBancos.ItemIndex  := 0;
                  CbRepre.ItemIndex   := 0;
                  CbCaixa.ItemIndex   := 0;
                  wSeleciona := ' where F1.opv_codigo = 22 AND F1.FAT_DTEMIS BETWEEN '+quotedstr(DataAmericana(EditDataI.Text))+' AND '+quotedstr(DataAmericana(EditDataF.Text));
                  wOrdem     := ' F1.FAT_DTEMIS,F1.FAT_CODIGO';
              end;
           if (LTBoxRelatorio.ItemIndex = 9) then
              begin
                  wSeleciona := ' where F1.FPC_PREVISAO = '+quotedstr('S')+' AND F1.FPC_VENCTO BETWEEN '+quotedstr(DataAmericana(EditDataI.Text))+' AND '+quotedstr(DataAmericana(EditDataF.Text));
                  wOrdem     := ' F1.FPC_VENCTO';
              end;
       end;

       wSeleciona := wSeleciona+GetFiltroCli('C1');

    if (Cconta.Text <> '9999') then
       begin
           {Adiciona no Filtro o Código do Banco}
           if ((LTBoxRelatorio.ItemIndex = 2)
           or (LTBoxRelatorio.ItemIndex = 10)) then
              wSeleciona := wSeleciona +' AND F2.BAN_CODIGO = '+quotedstr(StrZero(Cconta.Text,4));
       end;

    if (CCodRep.Text <> '999') then
       begin
           {Adiciona no Filtro o Código do Representante}
           wSeleciona := wSeleciona +' AND F1.REP_CODIGO = '+quotedstr(StrZero(CCodRep.Text,3));
       end;

    if (CCodProj.TEXT <> '999') then
       begin
           {Adiciona no Filtro o Código do Projeto de Caixa}
           wSeleciona := wSeleciona +' AND F1.PCX_CODIGO = '+quotedstr(StrZero(CCodProj.Text,3));
       end;
    {Abertura do Arquivo do Relatorio}
    if LTBoxRelatorio.ItemIndex < 4 then  //Rel = 0,1,2,3 que usam o SqlCdsRelReceber
    begin
         try
           wSql1 := 'SELECT F1.EMP_CODIGO,F1.FAT_CODIGO,F1.FAT_DTEMIS,F1.FAT_VL_LIQ,F1.FAT_VLFAT,F1.FAT_QTDITEM,F1.FAT_BASEICMS,F1.FAT_ALIQUOTA,F1.PCX_CODIGO,F1.FAT_VL_IPI,F1.FAT_BASESUB,';
           wSql2 := 'F1.FAT_ICMSRET,F1.FAT_COMIS1,F1.CLI_CODIGO,C1.CLI_RAZAO,C1.CLI_FONE,C1.CLI_UF,F1.REP_CODIGO,R1.REP_NOME,F1.PED_CODIGO,F2.FPC_NUMER,F2.FPC_VENCTO, F2.FPC_JUROS, F2.FPC_MULTA,F2.FPC_DESCTO,';
           wSql3 := 'F2.FPC_COBNUM,F2.FPC_STATUS,F2.FPC_VLPARC,F2.FPC_VLPAGO,F2.FPC_DTEMIS,F2.FPC_PAGTO,F2.FPC_COBTIPO,F2.BAN_CODIGO,F2.FPC_JUROS_DESCTO,F2.FPC_DESCONTADO,B1.BAN_APELIDO,'+
                    'B1.BAN_JUROMES, F2.FPG_REGISTRO, FPG_DESCRICAO FROM FAT0000 F1 ';
           wSql4 := 'JOIN FAT_PC01 F2 ON (F1.fat_codigo = F2.fat_codigo and F1.EMP_CODIGO = F2.EMP_CODIGO) LEFT JOIN CLI0000 C1 ON (F1.cli_codigo = C1.cli_codigo) ';
           wSql5 := 'LEFT JOIN REP0000 R1 ON (F1.rep_codigo = R1.rep_codigo) LEFT JOIN BAN0000 B1 ON (F2.ban_codigo = B1.ban_codigo) '+
                    'LEFT JOIN FORMA_PAGAMENTO FP ON (FP.FPG_REGISTRO = F2.FPG_REGISTRO )' ;
           //
           wSeleciona := wSeleciona + ' AND F2.FPC_EXCLUSAO = '+quotedstr('N');
           //
           SqlCdsRelReceber.Close;
           SqlCdsRelReceber.CommandText := SQLDEF('RECEBER',wSql1+wSql2+wSql3+wSql4+wSql5,wSeleciona,wOrdem,'F2.');
           SqlCdsRelReceber.open;
         except on E:EdataBaseError do
           uteis.erro  (Pchar('Erro ao abrir a Tabela DO RELATORIO !'+e.message));
         end;
    end
    else
    if (LTBoxRelatorio.ItemIndex = 5) or  (LTBoxRelatorio.ItemIndex = 6) then
    begin
       try
         wSql1 := ' SELECT  b1.BAN_CODIGO, ban_apelido, F1.FAT_CODIGO,F1.FAT_DTEMIS,F1.FAT_VL_LIQ,F1.FAT_VLFAT,F1.FAT_QTDITEM,F1.FAT_BASEICMS,F1.FAT_BASESUB,F1.FAT_ALIQUOTA,F1.FAT_ICMSRET,F1.FAT_VL_IPI,';
         wSql2 := ' F1.PCX_CODIGO,F1.CLI_CODIGO,C1.CLI_RAZAO,C1.CLI_UF, F1.REP_CODIGO,R1.REP_NOME,F1.PCL_CODIGO,P3.PCL_NOME,F1.EMP_CODIGO, F2.FPC_VLPARC FROM FAT0000 F1 ';
         wSql3 := ' JOIN FAT_PC01 F2 ON (F1.fat_codigo = F2.fat_codigo and F1.EMP_CODIGO = F2.EMP_CODIGO) ';
         wSql4 := ' LEFT JOIN CLI0000 C1 ON (F1.CLI_CODIGO = C1.CLI_CODIGO)LEFT JOIN REP0000 R1 ON (F1.REP_CODIGO = R1.REP_CODIGO)LEFT JOIN PCL0000 P3 ON (F1.PCL_CODIGO = P3.PCL_CODIGO)'+
                  ' LEFT JOIN BAN0000 b1 ON (f2.BAN_CODIGO = b1.BAN_CODIGO) ';
         //
         wSeleciona := wSeleciona + ' AND F1.FAT_EXCLUSAO = ''N''';
         //
         SqlCdsNotas.Close;
         SqlCdsNotas.CommandText := SQLDEF('RECEBER',wSql1+wSql2+wSql3+wSql4,wSeleciona,wOrdem,'F1.');
         SqlCdsNotas.open;
       except on E:EdataBaseError do
         uteis.erro  (Pchar('Erro ao abrir a Tabela DO RELATORIO !'+e.message));
       end;
    end
    else
    if (LTBoxRelatorio.ItemIndex = 4)  then
     begin
         try
           // b1.BAN_CODIGO, ban_apelido, sempre vazios
           wSql1 := ' SELECT '''' BAN_CODIGO, '''' ban_apelido, F1.FAT_CODIGO,F1.FAT_DTEMIS,F1.FAT_VL_LIQ,F1.FAT_VLFAT,F1.FAT_QTDITEM,F1.FAT_BASEICMS,F1.FAT_BASESUB,F1.FAT_ALIQUOTA,F1.FAT_ICMSRET,F1.FAT_VL_IPI,';
           wSql2 := ' F1.PCX_CODIGO,F1.CLI_CODIGO,C1.CLI_RAZAO,C1.CLI_UF, F1.REP_CODIGO,R1.REP_NOME,F1.PCL_CODIGO,P3.PCL_NOME,F1.EMP_CODIGO, 0.0 FPC_VLPARC FROM FAT0000 F1 ';
           wSql3 := ' LEFT JOIN CLI0000 C1 ON (F1.CLI_CODIGO = C1.CLI_CODIGO)LEFT JOIN REP0000 R1 ON (F1.REP_CODIGO = R1.REP_CODIGO)LEFT JOIN PCL0000 P3 ON (F1.PCL_CODIGO = P3.PCL_CODIGO)';
           //
           wSeleciona := wSeleciona + ' AND F1.FAT_EXCLUSAO = ''N''';
           //
           SqlCdsNotas.Close;
           SqlCdsNotas.CommandText := SQLDEF('RECEBER',wSql1+wSql2+wSql3,wSeleciona,wOrdem,'F1.');
           SqlCdsNotas.open;
         except on E:EdataBaseError do
           uteis.erro  (Pchar('Erro ao abrir a Tabela DO RELATORIO !'+e.message));
         end;
     end
    else
    if LTBoxRelatorio.ItemIndex = 7 then
       begin
           try
             wSql1 := 'SELECT F1.FAT_CODIGO,F1.REP_CODIGO,F1.FPC_DTEMIS,F1.FPC_NUMER,F1.CCT_CODIGO,F1.PCX_CODIGO,F1.BAN_CODIGO,F1.FPC_COBNUM,F1.FPC_COBTIPO,';
             wSql2 := 'F1.FPC_STATUS,F1.FPC_DESCTO,F1.FPC_DTDESC,F1.FPC_VENCTO,F1.FPC_PAGTO,F1.FPC_VLPARC,F1.FPC_VLPAGO,F1.FPC_OBS,F1.FPC_SITPAG,F1.FPC_IMPDUP,';
             wSql3 := 'F1.EMP_CODIGO,F1.CLI_CODIGO,C1.CLI_RAZAO FROM FAT_PC01 F1 JOIN CLI0000 C1 ON F1.cli_codigo = C1.cli_codigo ';
             //
             wSeleciona := wSeleciona + ' AND F1.FPC_EXCLUSAO = ''N''';
             //
             SqlCdsRel06.Close;
             SqlCdsRel06.CommandText := SQLDEF('RECEBER',wSql1+wSql2+wSql3,wSeleciona,wOrdem,'F1.');
             SqlCdsRel06.open;
           except on E:EdataBaseError do
             uteis.erro  (Pchar('Erro ao abrir a Tabela DO RELATORIO !'+e.message));
           end;
       end
    else
    if LTBoxRelatorio.ItemIndex = 8 then
       begin
           try
             wSql1 := 'SELECT F1.FAT_CODIGO,F1.OPV_CODIGO,F1.CLI_CODIGO,C1.CLI_RAZAO,F1.FAT_DTEMIS,F1.FAT_VLFAT,F1.FAT_VL_RET,';
             wSql2 := 'F1.FAT_IRPJ_RET,F1.FAT_PIS_RET,F1.FAT_COFINS_RET,F1.FAT_INSS_RET,F1.FAT_CONTSOCIAL_RET,F1.FAT_BASE_ISS,';
             wSql3 := 'F1.FAT_ISS_RET,F1.FAT_BASE_INSS FROM FAT0000 F1 JOIN CLI0000 C1 ON F1.CLI_CODIGO = C1.CLI_CODIGO';
             //
             wSeleciona := wSeleciona + ' AND F1.FAT_EXCLUSAO = ''N''';
             //
             SqlCdsRel07.Close;
             SqlCdsRel07.CommandText := SQLDEF('RECEBER',wSql1+wSql2+wSql3,wSeleciona,wOrdem,'F1.');
             SqlCdsRel07.open;
           except on E:EdataBaseError do
              uteis.erro  (Pchar('Erro ao abrir a Tabela DO RELATORIO !'+e.message));
           end;
       end
    else
    if LTBoxRelatorio.ItemIndex = 9 then
       begin
           try
             wSql1 := 'SELECT F1.FAT_CODIGO,F1.FPC_NUMER,F1.FPC_DTEMIS,F1.FPC_VENCTO,F1.FPC_VLPARC,F1.FPC_VLPAGO,F1.FPC_PAGTO,F1.FPC_SITPAG,';
             wSql2 := 'F1.FPC_PREVISAO,F1.FPC_OBS,F1.CLI_CODIGO,C1.CLI_RAZAO FROM FAT_PC01 F1 JOIN CLI0000 C1 ON F1.CLI_CODIGO = C1.CLI_CODIGO ';
             //
             wSeleciona := wSeleciona + ' AND F1.FPC_EXCLUSAO = ''N''';
             //
             SqlCdsRel08.Close;
             SqlCdsRel08.CommandText := SQLDEF('RECEBER',wSql1+wSql2,wSeleciona,wOrdem,'F1.');
             SqlCdsRel08.open;
           except on E:EdataBaseError do
              uteis.erro  (Pchar('Erro ao abrir a Tabela DO RELATORIO N 8 !'+e.message));
           end;
       end;


       if (LTBoxRelatorio.ItemIndex = 0) or (LTBoxRelatorio.ItemIndex = 1) then
       begin
           if RadTodas.checked  then
              begin
                  LBL_00_LTitulo2.Caption := 'RECEBER e RECEBIDAS';
                  LBL_0A_LTitulo2.Caption := 'RECEBER e RECEBIDAS';
                  LBL_01_LTitulo2.Caption := 'RECEBER';
              end
           Else
           if RadPendente.checked  then
              begin
                  LBL_00_LTitulo2.Caption := 'RECEBER PENDENTES';
                  LBL_0A_LTitulo2.Caption := 'RECEBER PENDENTES';
                  LBL_01_LTitulo2.Caption := 'RECEBER PENDENTES';
              end
           Else
           if RadPagas.checked  Then
              begin
                  LBL_00_LTitulo2.Caption := 'RECEBIDAS';
                  LBL_0A_LTitulo2.Caption := 'RECEBIDAS';
                  LBL_01_LTitulo2.Caption := 'RECEBIDAS';
              end
           Else
           if RadParcial.checked  Then
              begin
                  LBL_00_LTitulo2.Caption := 'PARCIALMENTE RECEBIDAS';
                  LBL_0A_LTitulo2.Caption := 'PARCIALMENTE RECEBIDAS';
                  LBL_01_LTitulo2.Caption := 'PARCIALMENTE RECEBIDAS';
              end;
       end;

       if (LTBoxRelatorio.ItemIndex = 0) then
       begin
           LBL_00_LTITULO1.Caption := '';
           LBL_0A_LTITULO1.Caption := '';

           LBL_00_LTITULO1.Caption := 'RELATORIO DE CONTAS A RECEBER ANALITICO';
           LBL_0A_LTITULO1.Caption := 'RELATORIO DE CONTAS A RECEBER ANALITICO ';
           if (CbxCarteira.ItemIndex > 0) then
              begin
                  LBL_00_LTITULO1.Caption := LBL_00_LTITULO1.Caption +' ('+CbxCarteira.Text+')';
                  LBL_0A_LTITULO1.Caption := LBL_0A_LTITULO1.Caption +' ('+CbxCarteira.Text+')';
              end;

           if (CbxTipoDoc.ItemIndex > 0) then
              begin
                  LBL_00_LTITULO1.Caption := LBL_00_LTITULO1.Caption +' - ('+CbxTipoDoc.Text+')';
                  LBL_0A_LTITULO1.Caption := LBL_0A_LTITULO1.Caption +' - ('+CbxTipoDoc.Text+')';
              end;
              
           if (Rad_Vencto.checked ) then
              begin
                  LBL_00_LTITULO2.Caption:=LBL_00_LTITULO2.Caption+' - entre '+EditDataI.Text+' ate '+EditDataF.Text+' - Por Vencimento';
                  LBL_0A_LTITULO2.Caption:=LBL_0A_LTITULO2.Caption+' - entre '+EditDataI.Text+' ate '+EditDataF.Text+' - Por Vencimento';
                  if RadVideo.Checked then
                     begin
                         ppRPRelConReceber00.DeviceType := 'Screen';
                     end else
                  if RadImpressora.Checked then
                     begin
                         ppRPRelConReceber00.DeviceType := 'Printer';
                         ppRPRelConReceber00.ShowPrintDialog := true;
                     end;

                  RBuilderPreview(ppRPRelConReceber00);
              end
           else
              begin
                  LBL_00_LTITULO2.Caption:=LBL_00_LTITULO2.Caption+' - entre '+EditDataI.Text+' ate '+EditDataF.Text+' - Por Recebimento';
                  LBL_0A_LTITULO2.Caption:=LBL_0A_LTITULO2.Caption+' - entre '+EditDataI.Text+' ate '+EditDataF.Text+' - Por Recebimento';
                  if RadVideo.Checked then
                     begin
                         ppRPRelConReceber00A.DeviceType := 'Screen';
                     end else
                  if RadImpressora.Checked then
                     begin
                         ppRPRelConReceber00A.DeviceType := 'Printer';
                         ppRPRelConReceber00A.ShowPrintDialog := true;
                     end;

                  RBuilderPreview(ppRPRelConReceber00A);
              end;
           CbCliente.SetFocus;
           CbCliente.SelectAll;
           exit;
       end;
    if (LTBoxRelatorio.ItemIndex = 1) then
       begin
           LBL_01_LTitulo1.Caption := '';
           LBL_01_LTitulo1.Caption := 'RELATORIO DE CONTAS A RECEBER SINTETICO';
           if (CbxCarteira.ItemIndex > 0) then
              begin
                  LBL_01_LTitulo1.Caption := LBL_01_LTitulo1.Caption +' ('+CbxCarteira.Text+')';
              end;
           if (CbxTipoDoc.ItemIndex > 0) then
              begin
                  LBL_01_LTitulo1.Caption := LBL_01_LTitulo1.Caption +' - ('+CbxTipoDoc.Text+')';
              end;
           LBL_01_LTITULO2.Caption:=LBL_01_LTITULO2.Caption+' - entre '+EditDataI.Text+' ate '+EditDataF.Text;
           if RadVideo.Checked then
              begin
                  ppRPRelConReceber01.DeviceType := 'Screen';
              end else
           if RadImpressora.Checked then
              begin
                  ppRPRelConReceber01.DeviceType := 'Printer';
                  ppRPRelConReceber01.ShowPrintDialog := true;
              end;

           RBuilderPreview(ppRPRelConReceber01);
           CbCliente.SetFocus;
           CbCliente.SelectAll;
           exit;
       end;
    if LTBoxRelatorio.ItemIndex = 2 then
       begin
           if CbBancos.ItemIndex = 0 then
              begin
                  if RadTodas.checked  then
                     begin
                         LBL_02_LTitulo2.Caption := 'RECEBER e RECEBIDAS';
                     end
                  ELSE
                  if RadPendente.checked  then
                     begin
                         LBL_02_LTitulo2.Caption := 'RECEBER PENDENTES';
                     end
                  ELSE
                  if RadPagas.checked  Then
                     begin
                         LBL_02_LTitulo2.Caption := 'RECEBIDAS';
                     end
                  ELSE
                   if RadParcial.checked  Then
                     begin
                         LBL_02_LTitulo2.Caption := 'PARCIALMENTE RECEBIDAS';
                     end;

              end
           else
              begin
                  if RadTodas.checked  then
                     begin
                         LBL_02_LTitulo2.Caption := 'TODOS OS TITULOS DO BANCO: '+StrZero(Cconta.Text,4)+' - '+CbBancos.Text;
                     end
                  ELSE
                  if RadPendente.checked  then
                     begin
                         LBL_02_LTitulo2.Caption := 'TITULOS PENDENTES NO BANCO :'+StrZero(Cconta.Text,4)+' - '+CbBancos.Text;
                     end
                  ELSE
                  if RadPagas.checked  then
                     begin
                         LBL_02_LTitulo2.Caption := 'TITULOS RECEBIDOS NO BANCO :'+StrZero(Cconta.Text,4)+' - '+CbBancos.Text;
                     end
                  ELSE
                  if RadParcial.checked  then
                     begin
                         LBL_02_LTitulo2.Caption := 'TITULOS PARCIALMENTE RECEBIDOS NO BANCO :'+StrZero(Cconta.Text,4)+' - '+CbBancos.Text;
                     end;

              end;
           LBL_02_LTitulo1.Caption := 'RELATÓRIO DE TÍTULOS NO BANCO';
           LBL_02_LTITULO2.Caption:=LBL_02_LTITULO2.Caption+' - entre '+EditDataI.Text+' ate '+EditDataF.Text;
           if RadVideo.Checked then
              begin
                  ppRPRelConReceber02.DeviceType := 'Screen';
              end else
           if RadImpressora.Checked then
              begin
                  ppRPRelConReceber02.DeviceType := 'Printer';
                  ppRPRelConReceber02.ShowPrintDialog := true;
              end;

           RBuilderPreview(ppRPRelConReceber02);
           CbBancos.SetFocus;
           CbBancos.SelectAll;
           exit;
       end;
    if LTBoxRelatorio.ItemIndex = 3 then
       begin
           if CbRepre.ItemIndex = 0 then
              begin
                  LBL_03_LTITULO2.Caption := 'FATURAS VENCIDAS';
              end
           else
              begin
                  LBL_03_LTITULO2.Caption := 'FATURAS VENCIDAS DO REPRESENTANTE : '+StrZero(CCodRep.Text,3)+' - '+CbRepre.Text;
              end;
           LBL_03_LTitulo1.Caption := 'RELATÓRIO DE TÍTULOS VENCIDOS';
           LBL_03_LTITULO2.Caption:=LBL_03_LTITULO2.Caption+' - entre '+EditDataI.Text+' ate '+EditDataF.Text;
           if RadVideo.Checked then
              begin
                  ppRPRelConReceber03.DeviceType := 'Screen';
              end else
           if RadImpressora.Checked then
              begin
                  ppRPRelConReceber03.DeviceType := 'Printer';
                  ppRPRelConReceber03.ShowPrintDialog := true;
              end;

           RBuilderPreview(ppRPRelConReceber03);
           CbRepre.SetFocus;
           CbRepre.SelectAll;
           exit;
       end;
       
    if LTBoxRelatorio.ItemIndex = 4 then
       begin
           LBL_04_LTitulo1.Caption:='RELATÓRIO DE CONTAS FATURADAS POR ESTADO';
           LBL_04_LTitulo2.Caption:='PERÍODO : '+EditDataI.Text+' ate '+EditDataF.Text;
           if RadVideo.Checked then
              begin
                  ppRPRelConReceber04.DeviceType := 'Screen';
              end else
           if RadImpressora.Checked then
              begin
                  ppRPRelConReceber04.DeviceType := 'Printer';
                  ppRPRelConReceber04.ShowPrintDialog := true;
              end;

           RBuilderPreview(ppRPRelConReceber04);
           EditDataI.SetFocus;
           EditDataI.SelectAll;
           exit;
       end;
    if (LTBoxRelatorio.ItemIndex = 5) then
       begin
           LBL_05_LTitulo1.Caption:='RELATÓRIO DE NOTAS FATURADAS';
           LBL_05_LTitulo2.Caption:='PERÍODO : '+EditDataI.Text+' ate '+EditDataF.Text;
           if RadVideo.Checked then
              begin
                  ppRPRelConReceber05.DeviceType := 'Screen';
              end else
           if RadImpressora.Checked then
              begin
                  ppRPRelConReceber05.DeviceType := 'Printer';
                  ppRPRelConReceber05.ShowPrintDialog := true;
              end;

           RBuilderPreview(ppRPRelConReceber05);
           EditDataI.SetFocus;
           EditDataI.SelectAll;
           exit;
       end;
      if (LTBoxRelatorio.ItemIndex = 6) then
       begin
           LBL_051_LTitulo1.Caption:='RELATÓRIO DE NOTAS FATURADAS POR BANCO';
           LBL_051_LTitulo2.Caption:='PERÍODO : '+EditDataI.Text+' ate '+EditDataF.Text;
           if RadVideo.Checked then
              begin
                  ppRPRelConReceber05Banco.DeviceType := 'Screen';
              end else
           if RadImpressora.Checked then
              begin
                  ppRPRelConReceber05Banco.DeviceType := 'Printer';
                  ppRPRelConReceber05Banco.ShowPrintDialog := true;
              end;

           RBuilderPreview(ppRPRelConReceber05Banco);
           EditDataI.SetFocus;
           EditDataI.SelectAll;
           exit;
       end;
    if LTBoxRelatorio.ItemIndex = 7 then
       begin
           LBL_06_LTITULO1.Caption := 'PREVISÃO DE LIQUIDEZ DO FATURAMENTO';
           LBL_06_LTITULO2.Caption := 'PERÍODO : '+EditDataI.Text+' ate '+EditDataF.Text;
           if RadVideo.Checked then
              begin
                  ppRPRelConReceber06.DeviceType := 'Screen';
              end else
           if RadImpressora.Checked then
              begin
                  ppRPRelConReceber06.DeviceType := 'Printer';
                  ppRPRelConReceber06.ShowPrintDialog := true;
              end;

           RBuilderPreview(ppRPRelConReceber06);
           EditDataI.SetFocus;
           EditDataI.SelectAll;
           exit;
       end;
    if LTBoxRelatorio.ItemIndex = 8 then
       begin
           LBL_07_LTITULO1.Caption := 'RELATORIO DE NOTAS FISCAIS COM RETENCAO - CTAS A RECEBER';
           if cbCliente.ItemIndex <> 0 then
              LBL_07_LTITULO2.Caption := 'Cliente: '+SqlCdsClienteCLI_CODIGO.AsString+' - '+Trim(SqlCdsClienteCLI_RAZAO.AsString)+' no período de: '+EditDataI.Text+' ate '+EditDataF.Text
           else
              LBL_07_LTITULO2.Caption := 'Período de: '+EditDataI.Text+' ate '+EditDataF.Text;
           if RadVideo.Checked then
              begin
                  ppRPRelConReceber07.DeviceType := 'Screen';
              end else
           if RadImpressora.Checked then
              begin
                  ppRPRelConReceber07.DeviceType := 'Printer';
                  ppRPRelConReceber07.ShowPrintDialog := true;
              end;

           RBuilderPreview(ppRPRelConReceber07);
           CbCliente.ItemIndex := 0;
           EditDataI.SetFocus;
           EditDataI.SelectAll;
           exit;
       end;
    if LTBoxRelatorio.ItemIndex = 9 then
       begin
           LBL_08_LTITULO1.Caption := 'RELATORIO DE CONTAS À RECEBER DEFINIDO COMO PREVISÃO';
           if cbCliente.ItemIndex <> 0 then
              LBL_08_LTITULO2.Caption := 'Cliente: '+SqlCdsClienteCLI_CODIGO.AsString+' - '+Trim(SqlCdsClienteCLI_RAZAO.AsString)+' no período de: '+EditDataI.Text+' ate '+EditDataF.Text
           else
              LBL_08_LTITULO2.Caption := 'Período de: '+EditDataI.Text+' ate '+EditDataF.Text;
           if RadVideo.Checked then
              begin
                  ppRPRelConReceber08.DeviceType := 'Screen';
              end else
           if RadImpressora.Checked then
              begin
                  ppRPRelConReceber08.DeviceType := 'Printer';
                  ppRPRelConReceber08.ShowPrintDialog := true;
              end;

           RBuilderPreview(ppRPRelConReceber08);
           CbCliente.ItemIndex := 0;
           EditDataI.SetFocus;
           EditDataI.SelectAll;
           exit;
       end;
    if LTBoxRelatorio.ItemIndex = 10 then
       begin
           CriaRelatorio09;
       end;
    if LTBoxRelatorio.ItemIndex = 11 then
       begin
           CriaRelatorio10;
       end;
end;

procedure TFormGImpRece.BitCancelarClick(Sender: tObject);
begin
    FormGImpRece.Close;
end;

procedure TFormGImpRece.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
    Close;
end;

procedure TFormGImpRece.BitConfigClick(Sender: tObject);
begin
    PrinterSetupDialog1.Execute;
end;

procedure TFormGImpRece.EditDataFExit(Sender: tObject);
begin
    if EditDataF.Text <> '  /  /    ' then
       begin
           if not TestaDataStr(EditDataF.Text) then
              EditDataF.setfocus;
       end;
end;

procedure TFormGImpRece.EditDataIExit(Sender: tObject);
begin
    if EditDataI.Text <> '  /  /    ' then
       begin
           if not TestaDataStr(EditDataI.Text) then
                EditDataI.setfocus;
       end;
end;

procedure TFormGImpRece.LTBoxRelatorioClick(Sender: tObject);
begin
    LayOutRelatorio;
end;

procedure TFormGImpRece.CbClienteClick(Sender: tObject);
begin
   if (ActiveControl<> Nil)
      and(ActiveControl.Name <> 'BitCancelar')
      and(ActiveControl.Name <> 'CCodigo')
      and(ActiveControl.Name <> 'EditDataI')
      and(ActiveControl.Name <> 'EditDataF') then
      BuscaCliente;
end;

procedure TFormGImpRece.CbBancosClick(Sender: tObject);
begin
   if (ActiveControl<> Nil)
   and(ActiveControl.Name <> 'BitCancelar')
   and(ActiveControl.Name <> 'Cconta')
   and(ActiveControl.Name <> 'EditDataI')
   and(ActiveControl.Name <> 'EditDataF') then
      BuscaConta;
end;

procedure TFormGImpRece.CbRepreClick(Sender: tObject);
begin
   if (ActiveControl<> Nil)
   and(ActiveControl.Name <> 'BitCancelar')
   and(ActiveControl.Name <> 'CCodRep')
   and(ActiveControl.Name <> 'EditDataI')
   and(ActiveControl.Name <> 'EditDataF') then
      BuscaRepresentante;
end;

procedure TFormGImpRece.CbCaixaClick(Sender: tObject);
begin
   if (ActiveControl<> Nil)
   and(ActiveControl.Name <> 'BitCancelar')
   and(ActiveControl.Name <> 'CCodProj')
   and(ActiveControl.Name <> 'EditDataI')
   and(ActiveControl.Name <> 'EditDataF') then
      BuscaProjeto;
end;

procedure TFormGImpRece.SqlCdsRelReceberCalcFields(DataSet: TDataSet);
Var
  WFPC_DIA:String;
begin
    WFPC_DIA := FloatToStr(Int(Now - SqlCdsRelReceberFPC_VENCTO.AsDateTime));
    SqlCdsRelReceberFPC_MES_CC.AsString       := Copy(DateToStr(SqlCdsRelReceberFPC_VENCTO.AsDateTime),4,2);
    SqlCdsRelReceberFPC_MES_PAGTO_CC.AsString := Copy(DateToStr(SqlCdsRelReceberFPC_PAGTO.AsDateTime),4,2);
    if SqlCdsRelReceberFPC_STATUS.AsString <> 'Cancelada' then
       begin
           if wFPC_DIA >='0' then
              SqlCdsRelReceberFPC_DIA_CC.AsString := wFPC_DIA
           else
              SqlCdsRelReceberFPC_DIA_CC.AsString := '0';

           //SqlCdsRelReceberFPC_RECEBER_CC.AsCurrency := (SqlCdsRelReceberFPC_VLPARC.AsCurrency - SqlCdsRelReceberFPC_VLPAGO.AsCurrency + SqlCdsRelReceberFPC_VLPARC.AsCurrency);
           SqlCdsRelReceberFPC_RECEBER_CC.AsCurrency := SqlCdsRelReceberFPC_VLPARC.AsCurrency - SqlCdsRelReceberFPC_VLPAGO.AsCurrency + (SqlCdsRelReceberFPC_JUROS.AsCurrency + SqlCdsRelReceberFPC_MULTA.AsCurrency) - SqlCdsRelReceberFPC_DESCTO.AsCurrency;
       end;
      {Calcula o Valor Liquido da parcela}
      if (SqlCdsRelReceberFPC_DESCONTADO.AsString = 'S') then
         SqlCdsRelReceberVL_DESCTO_LIQ_CC.AsCurrency := SqlCdsRelReceberFPC_VLPARC.AsCurrency //(SqlCdsRelReceberFPC_VLPARC.AsCurrency - SqlCdsRelReceberFPC_JUROS_DESCTO.AsCurrency)
      else
         SqlCdsRelReceberVL_DESCTO_LIQ_CC.AsCurrency := 0;
      {}
      SqlCdsRelReceberFAT_ICMS_CC.AsCurrency:=((SqlCdsRelReceberFAT_BASEICMS.AsCurrency * SqlCdsRelReceberFAT_ALIQUOTA.AsCurrency) /100);
      {}
      SqlCdsRelReceberDESCR_COBRANCA_CC.AsString := IIF(SqlCdsRelReceberFPC_COBTIPO.AsString = 'CT','CARTEIRA',
                                                    IIF(SqlCdsRelReceberFPC_COBTIPO.AsString = 'CS','COBRANCA SIMPLES',
                                                    IIF(SqlCdsRelReceberFPC_COBTIPO.AsString = 'CC','COBRANCA CAUCIONADA',
                                                    IIF(SqlCdsRelReceberFPC_COBTIPO.AsString = 'Cd','COBRANCA DESCONTADA',
                                                    IIF(SqlCdsRelReceberFPC_COBTIPO.AsString = 'SR','COBRANCA SEM REGISTRO',
                                                    IIF(SqlCdsRelReceberFPC_COBTIPO.AsString = 'CR','COBRANCA RAPIDA',
                                                    IIF(SqlCdsRelReceberFPC_COBTIPO.AsString = 'CQ','CUSTODIA CHEQUE',
                                                    IIF(SqlCdsRelReceberFPC_COBTIPO.AsString = 'CH','CHEQUE DESCONTADO',''))))))));
      if (SqlCdsRelReceberBAN_JUROMES.AsFloat > 0)and(StrToFloat(WFPC_DIA) > 0) then
         begin
            SqlCdsRelReceberJurosDia.AsFloat := (SqlCdsRelReceberFPC_RECEBER_CC.AsCurrency * ((SqlCdsRelReceberBAN_JUROMES.AsFloat / 100) / 30)) * StrToFloat(WFPC_DIA);
            SqlCdsRelReceberJurosTotal.AsFloat := SqlCdsRelReceberFPC_RECEBER_CC.AsCurrency + SqlCdsRelReceberJurosDia.AsFloat;
         end
      else
         begin
            SqlCdsRelReceberJurosDia.AsFloat := 0;
            SqlCdsRelReceberJurosTotal.AsFloat := SqlCdsRelReceberFPC_RECEBER_CC.AsCurrency;
         end;

end;

procedure TFormGImpRece.pp04HeaderBand2BeforePrint(Sender: tObject);
begin
    LBL_04_EMPRESA.Caption := dbInicio.Empresa.Razao;
end;

procedure TFormGImpRece.SqlCdsNotasCalcFields(DataSet: TDataSet);
begin
    SqlCdsNotasFAT_ICMS_CC.AsCurrency:=((SqlCdsNotasFAT_BASEICMS.AsCurrency * SqlCdsNotasFAT_ALIQUOTA.AsCurrency) /100);
end;

procedure TFormGImpRece.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    try
      SqlCdsCliente.Close;
      SqlCdsBanco.Close;
      SqlCdsRepresentante.Close;
      SqlCdsProjCx.Close;
      SqlCdsNotas.Close;
      SqlCdsRelReceber.Close;
      SqlCdsRel06.Close;
      SqlCdsRel07.Close;
      SqlCdsRel08.Close;
    except on E:EDataBaseError do
       begin
           uteis.erro  (Pchar('Erro ao Fechar as Tabelas DO RELATORIO !'+e.message));
       end;
    end;
end;

procedure TFormGImpRece.SqlCdsRel06CalcFields(DataSet: TDataSet);
Var
  wFPC_DIA:String;
begin
    wFPC_DIA := Copy(DateToStr(SqlCdsRel06FPC_VENCTO.AsDateTime),4,2);
    if SqlCdsRel06FPC_STATUS.AsString <> 'Cancelada' then
       begin
           SqlCdsRel06FPC_MES_CC.AsString := wFPC_DIA;
       end;

end;

procedure TFormGImpRece.pp06HeaderBand2BeforePrint(Sender: tObject);
begin
    LBL_06_EMPRESA.Caption := dbInicio.Empresa.Razao;
end;

procedure TFormGImpRece.pp00HeaderBand2BeforePrint(Sender: tObject);
begin
    LBL_00_EMPRESA.Caption := dbInicio.Empresa.Razao;
end;

procedure TFormGImpRece.pp01HeaderBand1BeforePrint(Sender: tObject);
begin
    LBL_01_EMPRESA.Caption := dbInicio.Empresa.Razao;
end;

procedure TFormGImpRece.pp02HeaderBand1BeforePrint(Sender: tObject);
begin
    LBL_02_EMPRESA.Caption := dbInicio.Empresa.Razao;
end;

procedure TFormGImpRece.pp03HeaderBand1BeforePrint(Sender: tObject);
begin
    LBL_03_EMPRESA.Caption := dbInicio.Empresa.Razao;
end;

procedure TFormGImpRece.LTBoxRelatorioDblClick(Sender: tObject);
begin
    if (LTBoxRelatorio.ItemIndex = 0) or (LTBoxRelatorio.ItemIndex = 1) then
       begin
           CCodigo.SetFocus;
           CCodigo.SelectAll;
       end;
    if (LTBoxRelatorio.ItemIndex = 2) then
       begin
           CbBancos.SetFocus;
           CbBancos.SelectAll;
       end;
    if (LTBoxRelatorio.ItemIndex = 3) then
       begin
           CbRepre.SetFocus;
           CbRepre.SelectAll;
       end;
    if (LTBoxRelatorio.ItemIndex = 4) or (LTBoxRelatorio.ItemIndex = 5) or (LTBoxRelatorio.ItemIndex = 6) or (LTBoxRelatorio.ItemIndex = 7) or
    (LTBoxRelatorio.ItemIndex = 9) then
       begin
           EditDataI.SetFocus;
           EditDataI.SelectAll;
       end;
    if (LTBoxRelatorio.ItemIndex = 11) then
       begin
          EditDataI.SetFocus;
          EditDataI.SelectAll;
       end;
end;

procedure TFormGImpRece.pp07HeaderBand1BeforePrint(Sender: tObject);
begin
    LBL_07_EMPRESA.Caption := dbInicio.Empresa.Razao;
end;

procedure TFormGImpRece.SqlCdsRel07CalcFields(DataSet: TDataSet);
begin
    SqlCdsRel07FAT_TLIQUIDO_CC.AsCurrency := SqlCdsRel07FAT_VLFAT.AsCurrency - SqlCdsRel07FAT_VL_RET.AsCurrency;
end;

procedure TFormGImpRece.ppHeaderBand1BeforePrint(Sender: tObject);
begin
    LBL_08_EMPRESA.Caption := dbInicio.Empresa.Razao;
end;

procedure TFormGImpRece.pp05HeaderBand1BeforePrint(Sender: tObject);
begin
    LBL_05_EMPRESA.Caption := dbInicio.Empresa.Razao;
end;

procedure TFormGImpRece.LayOutRelatorio;
begin
     Group07.Align:=alTop;
     self.Refresh;
    if (LTBoxRelatorio.ItemIndex = 0) then // Primeiro Relatório.
       begin
           {Habilita}
           Group01.Visible := True; //Periodo
           Group04.Visible := True; //Filtrar
           pnStatus.Visible := True;
           Group05.Visible := True; //clientes
           Group06.Visible := True; //Projeto Caixa
           Group09.Visible := True;
           lblDoc.Visible     := True;
           CbxTipoDoc.Visible := True;
           {Desabilita}
           grContaBanco.Visible := False;
           Group03.Visible := False;
           grBanco.Visible := False;
           Group11.Visible := False;
           Group12.Visible := False;
           Group13.Visible := False;
           Panel3.Visible := False;
//           Group01.TabOrder := 02;
//           Group05.TabOrder := 03;
//           pnStatus.TabOrder := 04;
//           Group06.TabOrder := 05;
//           Group09.TabOrder := 06;
//           Group08.TabOrder := 07;
           LayOutFiltro;
       end;
    if (LTBoxRelatorio.ItemIndex = 1) then // Primeiro Relatório.
       begin
           {Habilita}
           Group01.Visible := True; //Periodo
           Group04.Visible := True; //Filtrar
           pnStatus.Visible := True; //Filtrar
           Group05.Visible := True; //clientes
           Group06.Visible := True; //Projeto Caixa
           Group09.Visible := True;
           lblDoc.Visible     := True;
           CbxTipoDoc.Visible := True;
           {Desabilita}
           grContaBanco.Visible := False;
           Group03.Visible := True;
           grBanco.Visible := False;
           Group11.Visible := False;
           Group12.Visible := False;
           Group13.Visible := False;
           Panel3.Visible := False;
//           {Posiciona}
//           Group01.TabOrder := 02;
//           Group03.TabOrder := 03;
//           Group05.TabOrder := 04;
//           pnStatus.TabOrder := 5;
//           Group06.TabOrder := 06;
//           Group09.TabOrder := 07;
//           Group08.TabOrder := 08;
           LayOutFiltro;
       end;
    if (LTBoxRelatorio.ItemIndex = 2) then
       begin
           {Habilita}
           Group01.Visible := true;
           grContaBanco.Visible := True;
           Group04.Visible := True;
           pnStatus.Visible := True;
           Group06.Visible := True;
           Group09.Visible := True;
           {Desabilita}
           Group03.Visible := False;
           Group05.Visible := False;
           GrBanco.Visible := False;
           Group11.Visible := False;
           Group12.Visible := False;
           Group13.Visible := False;
           Panel3.Visible := False;
           lblDoc.Visible     := False;
           CbxTipoDoc.Visible := False;
//           {Posiciona}
//           Group01.TabOrder := 02;
//           Group02.TabOrder := 03;
//           Group04.TabOrder := 04;
//           pnStatus.TabOrder:= 4;
//           Group09.TabOrder := 05;
//           Group06.TabOrder := 06;
//           Group07.TabOrder := 07;
       end;
    if (LTBoxRelatorio.ItemIndex = 3) then
       begin
           {Habilita}
           Group01.Visible := true;
           Group03.Visible := True;
           Group06.Visible := True;
           lblDoc.Visible     := False;
           CbxTipoDoc.Visible := False;
           {Desabilita}
           grContaBanco.Visible := False;
           Group04.Visible := False;
           pnStatus.Visible := False;
           Group08.Visible := False;
           Group05.Visible := true;
           Group09.Visible := False;
           GrBanco.Visible := False;
           Group11.Visible := False;
           Group12.Visible := False;
           Group13.Visible := False;
           Panel3.Visible := False;
           {Posiciona}
//           Group01.TabOrder := 02;
//           Group03.TabOrder := 03;
//           Group05.TabOrder := 04;
//           Group06.TabOrder := 05;
//           Group07.TabOrder := 06;
       end;
    if (LTBoxRelatorio.ItemIndex = 5) or (LTBoxRelatorio.ItemIndex = 6)   then
    begin
           {Habilita}
           Group01.Visible := True;
           Group06.Visible := True;
           grContaBanco.Visible := True;

           {Desabilita}
           Group03.Visible := False;
           Group04.Visible := False;
           pnStatus.Visible := False;
           Group08.Visible := False;
           Group05.Visible := False;
           Group09.Visible := False;
           GrBanco.Visible := False;
           Group11.Visible := False;
           Group12.Visible := False;
           Group13.Visible := False;
           Panel3.Visible := False;
           lblDoc.Visible     := False;
           CbxTipoDoc.Visible := False;
//           {Posiciona}
//           Group01.TabOrder := 02;
//           Group06.TabOrder := 03;
//           Group07.TabOrder := 04;
    end;
    if (LTBoxRelatorio.ItemIndex = 4) or (LTBoxRelatorio.ItemIndex = 7) then
    begin
           {Habilita}
           Group01.Visible := True;
           Group06.Visible := True;
           {Desabilita}
           grContaBanco.Visible := False;
           Group03.Visible := False;
           Group04.Visible := False;
           pnStatus.Visible := False;
           Group08.Visible := False;
           Group05.Visible := False;
           Group09.Visible := False;
           GrBanco.Visible := False;
           Group11.Visible := False;
           Group12.Visible := False;
           Group13.Visible := False;
           Panel3.Visible := False;
           lblDoc.Visible     := False;
           CbxTipoDoc.Visible := False;

    end;
    if ( (LTBoxRelatorio.ItemIndex = 8) or (LTBoxRelatorio.ItemIndex = 9) )then
       begin
           {Habilita}
           Group01.Visible := True;
           Group05.Visible := True;
           {Desabilita}
           grContaBanco.Visible := False;
           Group03.Visible := False;
           Group04.Visible := False;
           pnStatus.Visible := False;
           Group08.Visible := False;
           Group06.Visible := False;
           Group09.Visible := False;
           GrBanco.Visible := False;
           Group11.Visible := False;
           Group12.Visible := False;
           Group13.Visible := False;
           Panel3.Visible := False;
           lblDoc.Visible     := False;
           CbxTipoDoc.Visible := False;
//           {Posiciona}
//           Group01.TabOrder := 02;
//           Group05.TabOrder := 03;
//           Group07.TabOrder := 04;
       end;
    if (LTBoxRelatorio.ItemIndex = 10) then
       begin
           {Relatório de Títulos Descontados (Remessa)}
           {Habilita}
           Group01.Visible := True;
           grContaBanco.Visible := True;
           Group12.Visible := True;
           Group13.Visible := True;
           Panel3.Visible := True;
           {Desabilita}
           Group05.Visible := False;
           Group03.Visible := False;
           Group04.Visible := False;
           pnStatus.Visible := False;
           Group08.Visible := False;
           Group06.Visible := False;
           Group09.Visible := False;
           GrBanco.Visible := False;
           Group11.Visible := False;
           lblDoc.Visible     := False;
           CbxTipoDoc.Visible := False;
//           {Posiciona}
//           Group01.TabOrder := 02;
//           Group02.TabOrder := 03;
//           Group12.TabOrder := 04;
//           Group13.TabOrder := 05;
//           Panel3.TabOrder := 04;
//           Group07.TabOrder := 06;
       end;
    if (LTBoxRelatorio.ItemIndex = 11) then
       begin
           {Relatório de Cheques}
           {Habilita}
           Group01.Visible := True;
           grContaBanco.Visible := True;
           Group05.Visible := True;
           Group11.Visible := True;
           {Desabilita}
           Group03.Visible := False;
           Group04.Visible := False;
           pnStatus.Visible := False;
           Group06.Visible := False;
           Group08.Visible := False;
           Group09.Visible := False;
           GrBanco.Visible := False;
           Group12.Visible := False;
           Group13.Visible := False;
           Panel3.Visible := False;
//           {Posiciona}
//           Group01.TabOrder := 02;
//           Group05.TabOrder := 03;
//           Group02.TabOrder := 04;
//           Group11.TabOrder := 05;
//           Group07.TabOrder := 06;
       end;
    {Redimensiona o Formulario}
    FormGImpRece.AutoSize := True;
    //
    settipobuscacliente;
    //
    Cconta.Text  := '9999';
    CbBancos.Text     := 'TODOS';
    //
    CCodRep.Text := '999';
    CbRepre.Text      := 'TODOS';
    //
    CCodProj.Text := '999';
    CbCaixa.Text       := 'TODOS';
    //
    CurrBcoCheque.Text := '9999';
    CbBcoCheque.Text        := 'TODOS';
    //
    CbxCarteira.ItemIndex := 0;
    CbxTipoDoc.ItemIndex  := 0;
    CbxCarteira.Text := 'TODOS';
    CbxTipoDoc.Text  := 'TODOS';
    //
    Group07.Align:=alBottom;
end;

procedure TFormGImpRece.LBL_51_EMPRESAGetText(Sender: TObject; var Text: string);
begin
    Text := dbInicio.Empresa.Razao;
end;

procedure TFormGImpRece.ppHeaderBand2BeforePrint(Sender: tObject);
begin
    LBL_0A_EMPRESA.Caption := dbInicio.Empresa.Razao;
end;

procedure TFormGImpRece.RadTodasClick(Sender: tObject);
begin
    LayOutFiltro;
end;

procedure TFormGImpRece.LayOutFiltro;
begin
     Group08.Visible  := RadPagas.Checked or RadParcial.Checked ;
end;

procedure TFormGImpRece.CriaRelatorio09;
begin
    try
      Screen.Cursor := crHourGlass;
      wSql1      := '';
      wSql2      := '';
      wSql3      := '';
      wSql4      := '';
      wSeleciona := '';
      wOrdem     := '';
      try
        if (Rad_Data_Descto.Checked) then
           begin
              wSeleciona := 'WHERE F1.FPC_DESCONTADO = ''S'' AND F1.FPC_DATADESCTO BETWEEN '''+DataAmericana(EditDataI.Text)+''' and '''+DataAmericana(EditDataF.Text)+'''';
           end
        else
        if (Rad_Data_Vencto.Checked) then
           begin
              wSeleciona := 'WHERE F1.FPC_DESCONTADO = ''S'' AND F1.FPC_VENCTO BETWEEN '''+DataAmericana(EditDataI.Text)+''' and '''+DataAmericana(EditDataF.Text)+'''';
           end;
        {Todas as Faturas Duplicata e Cheques}
        if (Rad_Todas.Checked) then
           //wSeleciona := wSeleciona + ' AND (F1.FPC_COBTIPO = ''Cd'' OR F1.FPC_COBTIPO = ''CH'')';
        //
        if (Rad_Duplicata.Checked) then
          // wSeleciona := wSeleciona + ' AND F1.FPC_COBTIPO = ''Cd''';
        //
        if (Rad_Cheques.Checked) then
          // wSeleciona := wSeleciona + ' AND F1.FPC_COBTIPO = ''CH''';
        //
        if (Cconta.Text <> '9999') then
           begin
               wSeleciona := wSeleciona + ' AND F1.BAN_CODIGO = '''+StrZero(CConta.Text,4)+'''';
               LBL_09_LTITULO2.Caption := 'Conta : '+StrZero(CConta.Text,4)+' - '+CbBancos.Text;
           end
        else
           begin
               LBL_09_LTITULO2.Caption := 'Conta : TODAS AS CONTAS ';
           end;
        //
        wOrdem     := 'F1.FPC_COBTIPO,B1.BAN_APELIDO,F1.FPC_DATADESCTO,F1.FPC_VENCTO,F1.FPC_COBTIPO,C1.CLI_RAZAO ';
        //
        wSql1      := 'Select F1.FAT_CODIGO,F1.FPC_NUMER,F1.FPC_NPARCELAS,F1.FPC_DTEMIS,F1.FPC_VENCTO,F1.FPC_DATADESCTO,F1.FPC_COBTIPO,F1.FPC_STATUS,F1.FPC_SITPAG,F1.FPC_DESCONTADO,F1.FPC_TIPODOC,';
        wSql2      := 'F1.FPC_VLPARC,F1.CLI_CODIGO,C1.CLI_RAZAO,F1.BAN_CODIGO,B1.BAN_APELIDO,B1.BAN_LIMITE_DESCTODUPL,B1.BAN_LIMITE_DESCTOCHEQ,B1.BAN_LIMITE_UTILIZADO_DUPL,B1.BAN_LIMITE_UTILIZADO_CHEQ,';
        wSql3      := 'B1.BAN_JUROS_DESCTOCHEQ,B1.BAN_JUROS_DESCTODUPL,F1.FPC_JUROS_DESCTO,F1.FPC_BANCO_CHEQUE,F1.FPC_NUM_CHEQUE,F1.FPC_NUM_CHEQUE_DV,F1.FPC_SACADO_CHEQUE,T1.BCO_DESCRICAO from FAT_PC01 F1 ';
        wSql4      := 'LEFT JOIN BAN0000 B1 on (F1.BAN_CODIGO = B1.BAN_CODIGO) LEFT JOIN BANCOS T1 ON (T1.BCO_CODIGO = F1.FPC_BANCO_CHEQUE) LEFT JOIN CLI0000 C1 ON (F1.CLI_CODIGO = C1.CLI_CODIGO) ';
        //
        wSeleciona := wSeleciona + ' AND F1.FPC_EXCLUSAO = ''N''';
        //
        SqlCdsRel09.Close;
        SqlCdsRel09.CommandText := SQLDEF('RECEBER',wSql1+wSql2+wSql3+wSql4,wSeleciona,wOrdem,'F1.');
        SqlCdsRel09.Open;
        SqlCdsRel09.First;
        //
        LBL_09_EMPRESA.Caption  := dbInicio.Empresa.RAZAO;
        if (Rad_Todas.Checked) then
           LBL_09_LTITULO1.Caption := 'RELATORIO DE DESCONTOS';
        if (Rad_Duplicata.Checked) then
           LBL_09_LTITULO1.Caption := 'RELATORIO DE DESCONTOS : DUPLICATAS';
        if (Rad_Cheques.Checked) then
           LBL_09_LTITULO1.Caption := 'RELATORIO DE DESCONTOS : CHEQUES';

        LBL_09_LTITULO2.Caption := LBL_09_LTITULO2.Caption+' - entre '+EditDataI.Text+' ate '+EditDataF.Text;
        //
        if RadVideo.Checked then
           begin
               ppRPRelConReceber09.DeviceType := 'Screen';
           end else
        if RadImpressora.Checked then
           begin
               ppRPRelConReceber09.DeviceType := 'Printer';
               ppRPRelConReceber09.ShowPrintDialog := true;
           end;

        RBuilderPreview(ppRPRelConReceber09);
      except on E:EdataBaseError do
         uteis.erro  (pchar('Erro ao criar o Relatório ! '+e.message));
      end;
    finally
      begin
          Screen.Cursor := crDefault;
          SqlCdsRel09.Close;
      end;
    end;
end;

procedure TFormGImpRece.SqlCdsRel09CalcFields(DataSet: TDataSet);
begin
    if (SqlCdsRel09FPC_NPARCELAS.AsCurrency > 1) then
       SqlCdsRel09FATURA_CC.AsString := SqlCdsRel09FPC_NUMER.AsString+'/'+StrZero(SqlCdsRel09FPC_NPARCELAS.AsString,2)
    else
       SqlCdsRel09FATURA_CC.AsString := '01/'+StrZero(SqlCdsRel09FPC_NPARCELAS.AsString,2);
    //
//    SqlCdsRel09CLIENTE_CC.AsString   := SqlCdsRel09CLI_CODIGO.AsString+'-'+copy(SqlCdsRel09CLI_RAZAO.AsString,1,40);
    //
    SqlCdsRel09N_DIAS_CC.AsInteger := StrToInt(DifDias(SqlCdsRel09FPC_VENCTO.AsDateTime,SqlCdsRel09FPC_DATADESCTO.AsDateTime));
    //
    if (SqlCdsRel09FPC_COBTIPO.AsString = 'Cd') then
       begin
           LBL_TIPO_COBRANCA.Caption              := 'DUPLICATA';
           SqlCdsRel09DOCUTO_CC.AsString          := 'Duplicata';
           SqlCdsRel09LIMITE_01_CC.AsCurrency     := SqlCdsRel09BAN_LIMITE_DESCTODUPL.AsCurrency;
           SqlCdsRel09LIMITE_02_CC.AsCurrency     := SqlCdsRel09BAN_LIMITE_UTILIZADO_DUPL.AsCurrency;
//           LBL_JUROS.Caption                      := 'Juros Duplicata:';
           SqlCdsRel09JURO_BANCO_CC.AsCurrency    := SqlCdsRel09BAN_JUROS_DESCTODUPL.AsCurrency;
           LBL_LIMITE1.Caption                    := 'Limite Duplicata:';
//           SqlCdsRel09VL_JUROS_CC.AsCurrency      := ((((SqlCdsRel09FPC_VLPARC.AsCurrency * SqlCdsRel09BAN_JUROS_DESCTODUPL.AsCurrency)/30)*SqlCdsRel09N_DIAS_CC.AsInteger)/100);
       end
    else
    if (SqlCdsRel09FPC_COBTIPO.AsString = 'CH') then
       begin
           LBL_TIPO_COBRANCA.Caption              := 'CHEQUE';
           SqlCdsRel09DOCUTO_CC.AsString          := 'Cheque';
           SqlCdsRel09LIMITE_01_CC.AsCurrency     := SqlCdsRel09BAN_LIMITE_DESCTOCHEQ.AsCurrency;
           SqlCdsRel09LIMITE_02_CC.AsCurrency     := SqlCdsRel09BAN_LIMITE_UTILIZADO_CHEQ.AsCurrency;
//           LBL_JUROS.Caption                      := 'Juros Cheque:';
           SqlCdsRel09JURO_BANCO_CC.AsCurrency    := SqlCdsRel09BAN_JUROS_DESCTOCHEQ.AsCurrency;
           LBL_LIMITE1.Caption                    := 'Limite Cheque:';
//           SqlCdsRel09VL_JUROS_CC.AsCurrency      := ((((SqlCdsRel09FPC_VLPARC.AsCurrency * SqlCdsRel09BAN_JUROS_DESCTOCHEQ.AsCurrency)/30)*SqlCdsRel09N_DIAS_CC.AsInteger)/100);
       end;
    SqlCdsRel09TOTAL_LIQUIDO_CC.AsCurrency := (SqlCdsRel09FPC_VLPARC.AsCurrency - SqlCdsRel09FPC_JUROS_DESCTO.AsCurrency);
    //
    if (SqlCdsRel09FPC_TIPODOC.AsString = 'CH') then
       begin
          if (SqlCdsRel09FPC_SACADO_CHEQUE.AsString = '') then
             SqlCdsRel09CC_RAZAO.AsString := SqlCdsRel09CLI_RAZAO.AsString
          else
             SqlCdsRel09CC_RAZAO.AsString := SqlCdsRel09FPC_SACADO_CHEQUE.AsString;
       end
    else
       SqlCdsRel09CC_RAZAO.AsString := SqlCdsRel09CLI_RAZAO.AsString
end;

procedure TFormGImpRece.CurrBcoChequeExit(Sender: tObject);
begin
   if (CurrBcoCheque.Text <> '9999') then
      begin
         if (SqlBcoCheques.Locate('BCO_CODIGO',CurrBcoCheque.Text,[])) then
            begin
               CbBcoCheque.Text := SqlBcoChequesBCO_DESCRICAO.AsString;
            end
         else
            begin
               uteis.aviso('Banco não localizado com o código informado !');
               CbBcoCheque.ItemIndex := 0;
               CbBcoCheque.Text      := 'TODOS OS BANCOS';
            end;
      end
   else
      begin
         CbBcoCheque.ItemIndex := 0;
         CbBcoCheque.Text      := 'TODOS OS BANCOS';
      end;
end;

procedure TFormGImpRece.CurrBcoChequeEnter(Sender: tObject);
begin
   CurrBcoCheque.SelectAll;
end;

procedure TFormGImpRece.CbBcoChequeClick(Sender: tObject);
begin
   if (ActiveControl<> Nil)
   and(ActiveControl.Name <> 'BitCancelar')
   and(ActiveControl.Name <> 'CurrBcoCheque')
   and(ActiveControl.Name <> 'EditDataI')
   and(ActiveControl.Name <> 'EditDataF') then
      BuscaBcoCheque;
end;

procedure TFormGImpRece.BuscaBcoCheque;
begin
   if (CbBcoCheque.Text <>'TODOS OS BANCOS')
   or (CbBcoCheque.ItemIndex <> 0) then
      begin
         if (SqlBcoCheques.Locate('BCO_DESCRICAO',CbBcoCheque.Text,[])=True) then
            begin
               CurrBcoCheque.Text := SqlBcoChequesBCO_CODIGO.AsString;
            end
         else
            begin
               uteis.aviso('Banco não localizado com o nome informado !');
               CurrBcoCheque.Text   := '9999';
               CbBcoCheque.ItemIndex := 0;
               CbBcoCheque.Text      := 'TODOS OS BANCOS';
               CbBcoCheque.SetFocus;
            end;
      end;
end;

procedure TFormGImpRece.CriaRelatorio10;
begin
   wSql1        := '';
   wSql2        := '';
   wSql3        := '';
   wSeleciona   := '';
   wOrdem       := '';
   try
     Screen.Cursor := crHourGlass;
     wSql1      := 'SELECT T1.*,T2.CLI_RAZAO,T3.BAN_APELIDO,T4.BCO_DESCRICAO,T5.PED_CODIGO FROM FAT_PC01 T1 ';
     wSql2      := 'LEFT JOIN FAT0000 T5 ON (T5.FAT_CODIGO = T1.FAT_CODIGO AND T1.EMP_CODIGO = T5.EMP_CODIGO)LEFT JOIN CLI0000 T2 ON (T2.CLI_CODIGO = T1.CLI_CODIGO)';
     wSql3      := 'LEFT JOIN BAN0000 T3 ON (T3.BAN_CODIGO = T1.BAN_CODIGO) LEFT JOIN BANCOS T4 ON (T4.BCO_CODIGO = T1.FPC_BANCO_CHEQUE)';
     wSeleciona := 'WHERE T1.FPC_VENCTO BETWEEN '''+DataAmericana(EditDataI.Text)+''' AND '''+DataAmericana(EditDataF.Text)+''' AND T1.FPC_TIPODOC = ''CH'' AND T1.FPC_EXCLUSAO = ''N''';
     wOrdem     := 'T1.FPC_DTEMIS,T1.CLI_CODIGO,T1.FAT_CODIGO,T1.FPC_NUMER';
     //
     wSeleciona := wSeleciona+GetFiltroCli('T2');
     {if (CCodigo.Text <>'99999') and (CCodigo.Text <>'99999999999999')then
     begin
         if rb1.Checked then
            cod := StrZero(CCodigo.Text,5)
         Else
            cod := CCodigo.Text;
           wSeleciona := wSeleciona + ' AND T1.CLI_CODIGO = '''+cod+'''';
     end;}
    if (CConta.Text <> '9999') then
       begin
           {Adiciona no Filtro o Código do Banco}
           wSeleciona := wSeleciona +' AND T1.BAN_CODIGO = '''+StrZero(Cconta.Text,4)+'''';
       end;
     if (RadDescontados.Checked) then
        begin
           wSeleciona := wSeleciona + ' AND T1.FPC_DESCONTADO = ''S''';
        end;
     if (RadaDescontar.Checked) then
        begin
           wSeleciona := wSeleciona + ' AND T1.FPC_DESCONTADO = ''N''';
        end;
     if (RadDevolvidos.Checked) then
        begin
           wSeleciona := wSeleciona + ' AND T1.FPC_CONFIRMADEVOLUCAO = ''S''';
        end;
     //
     SqlCdsRel10.Close;
     SqlCdsRel10.CommandText := SQLDEF('RECEBER',wSql1+wSql2+wSql3,wSeleciona,wOrdem,'T1.');
     SqlCdsRel10.Open;
     SqlCdsRel10.First;
     //
     LBL_10_EMPRESA.Caption  := dbInicio.Empresa.RAZAO;
     LBL_10_LTITULO1.Caption := 'RELATORIO DE CHEQUES';
     LBL_10_LTITULO2.Caption := 'Período de: '+EditDataI.Text+' até '+EditDataF.Text;
     if (RadDescontados.Checked) then
        LBL_10_LTITULO2.Caption := LBL_10_LTITULO2.Caption +' - CHEQUES DESCONTADOS';
     if (RadaDescontar.Checked) then
        LBL_10_LTITULO2.Caption := LBL_10_LTITULO2.Caption +' - CHEQUES A DESCONTAR';
     if (RadDevolvidos.Checked) then
        LBL_10_LTITULO2.Caption := LBL_10_LTITULO2.Caption +' - CHEQUES DEVOLVIDOS';
     //
     if RadVideo.Checked then
        begin
            ppRPRelConReceber10.DeviceType := 'Screen';
        end else
     if RadImpressora.Checked then
        begin
            ppRPRelConReceber10.DeviceType := 'Printer';
            ppRPRelConReceber10.ShowPrintDialog := true;
        end;

     RBuilderPreview(ppRPRelConReceber10);
     //
     Screen.Cursor := crDefault;
   except
     on E:EDataBaseError do
       begin
          //beep;
          Screen.Cursor := crDefault;
          uteis.erro  (pchar('Impossível gerar o relatorio !'+#13#10+
                     'Mensagem erro: '+e.message));
       end;
   end;
end;

procedure TFormGImpRece.SqlCdsRel10CalcFields(DataSet: TDataSet);
begin
   SqlCdsRel10CC_OPERACAO.AsString := IIF(SqlCdsRel10FPC_COBTIPO.AsString = 'CT','CARTEIRA',
                                      IIF(SqlCdsRel10FPC_COBTIPO.AsString = 'CS','COBRANÇA SIMPLES',
                                      IIF(SqlCdsRel10FPC_COBTIPO.AsString = 'CC','COBRANÇA CAUCIONADA',
                                      IIF(SqlCdsRel10FPC_COBTIPO.AsString = 'Cd','COBRANÇA DESCONTADA',
                                      IIF(SqlCdsRel10FPC_COBTIPO.AsString = 'SR','COBRANÇA SEM REGISTRO',
                                      IIF(SqlCdsRel10FPC_COBTIPO.AsString = 'CR','COBRANÇA RAPIDA',
                                      IIF(SqlCdsRel10FPC_COBTIPO.AsString = 'CQ','CUSTODIA DE CHEQUE',
                                      IIF(SqlCdsRel10FPC_COBTIPO.AsString = 'CH','CHEQUE DESCONTADO',''))))))));
   if (SqlCdsRel10FPC_TIPODOC.AsString = 'CH') then
      begin
         if (SqlCdsRel10FPC_SACADO_CHEQUE.IsNull) then
            SqlCdsRel10CC_RAZAO.AsString := SqlCdsRel10CLI_RAZAO.AsString
         else
            SqlCdsRel10CC_RAZAO.AsString := SqlCdsRel10FPC_SACADO_CHEQUE.AsString;
      end
   else
      SqlCdsRel10CC_RAZAO.AsString := SqlCdsRel10CLI_RAZAO.AsString;
end;

procedure TFormGImpRece.CCodigoEnter(Sender: tObject);
begin
   CCodigo.SelectAll;
end;

procedure TFormGImpRece.CcontaEnter(Sender: tObject);
begin
   CConta.SelectAll;
end;

procedure TFormGImpRece.CCodRepEnter(Sender: tObject);
begin
   CCodRep.SelectAll;
end;

procedure TFormGImpRece.CCodProjEnter(Sender: tObject);
begin
   CCodProj.SelectAll;
end;

procedure TFormGImpRece.CCodigoExit(Sender: tObject);
var cmp, dado: string;
    msg: PChar;
begin

   if (CCodigo.text <> '99999') and (CCodigo.text <> '99999999999999') then
      begin
         if rb1.Checked then
         begin
            cmp := 'CLI_CODIGO';
            dado := StrZero(CCodigo.Text,5);
            msg := 'código';
         end
         Else
         begin
            cmp := 'CLI_CGC';
            dado := CCodigo.Text;
            msg := 'CNPJ/CPF';
         end;

         if (SqlCdsCliente.Locate(cmp,dado,[])=True) then
            begin
               CbCliente.Text := SqlCdsClienteCLI_RAZAO.AsString;
            end
         else
            begin
               msg := pChar('Cliente não localizado com o '+msg+' informado !');
               uteis.aviso(msg);
               CbCliente.ItemIndex := 0;
               CbCliente.Text      := 'TODOS';
            end;
      end
   else
      begin
         CbCliente.ItemIndex := 0;
         CbCliente.Text      := 'TODOS';
      end;
end;

procedure TFormGImpRece.BuscaCliente;
begin
   if (CbCliente.Text <>'TODOS')
   or (CbCliente.ItemIndex <> 0) then
      begin
         if (SqlCdsCliente.Locate('CLI_RAZAO',CbCliente.Text,[])=True) then
            begin
               if rb2.Checked then
                  CCodigo.Text := SqlCdsClienteCLI_CGC.AsString
               Else
                  CCodigo.Text := SqlCdsClienteCLI_CODIGO.AsString;
            end
         else
            begin
               uteis.aviso('Cliente não localizado com o nome informado !');
               CCodigo.Text       := '99999';
               CbCliente.ItemIndex := 0;
               CbCliente.Text      := 'TODOS';
               CbCliente.SetFocus;
            end
      end
   else
      begin
         CbCliente.ItemIndex := 0;
         CbCliente.Text      := 'TODOS';
      end;
end;

procedure TFormGImpRece.CcontaExit(Sender: tObject);
begin
   if (Cconta.Text <> '9999') then
      begin
         if (SqlCdsBanco.Locate('BAN_CODIGO',StrZero(Cconta.Text,4),[])=True) then
            begin
               CbBancos.Text := SqlCdsBancoBAN_APELIDO.AsString;
            end
         else
            begin
               uteis.aviso('Conta não localizado com o código informado !');
               Cconta.Text       := '9999';
               CbBancos.ItemIndex := 0;
               CbBancos.Text      := 'TODOS';
            end;
      end
   else
      begin
         CbBancos.ItemIndex := 0;
         CbBancos.Text      := 'TODOS';
      end;
end;

procedure TFormGImpRece.BuscaConta;
begin
   if (CbBancos.Text <>'TODOS')
   or (CbBancos.ItemIndex <> 0) then
      begin
         if (SqlCdsBanco.Locate('BAN_APELIDO',CbBancos.Text,[])=True) then
            begin
               Cconta.Text := SqlCdsBancoBAN_CODIGO.AsString;
            end
         else
            begin
               uteis.aviso('Conta não localizado com o nome informado !');
               Cconta.Text       := '9999';
               CbBancos.ItemIndex := 0;
               CbBancos.Text      := 'TODOS';
               CbBancos.SetFocus;
            end;
      end
   else
      begin
         Cconta.Text       := '9999';
         CbBancos.ItemIndex := 0;
         CbBancos.Text      := 'TODOS';
      end;
end;

procedure TFormGImpRece.CCodRepExit(Sender: tObject);
begin
   if (CCodRep.Text <> '999') then
      begin
         if (SqlCdsRepresentante.Locate('REP_CODIGO',StrZero(CCodRep.Text,3),[])=True) then
            begin
               CbRepre.Text := SqlCdsRepresentanteREP_NOME.AsString;
            end
         else
            begin
               uteis.aviso('Vendedor não localizado com o código informado !');
               CCodRep.Text     := '999';
               CbRepre.ItemIndex := 0;
               CbRepre.Text      := 'TODOS';
            end;
      end
   else
      begin
         CbRepre.ItemIndex := 0;
         CbRepre.Text      := 'TODOS';
      end;
end;

procedure TFormGImpRece.BuscaRepresentante;
begin
   if (CbRepre.Text <>'TODOS')
   or (CbRepre.ItemIndex <> 0) then
      begin
         if (SqlCdsRepresentante.Locate('REP_NOME',CbRepre.Text,[])=True) then
            begin
               CCodRep.Text := SqlCdsRepresentanteREP_CODIGO.AsString;
            end
         else
            begin
               uteis.aviso('Vendedor não localizado com o nome informado !');
               CCodRep.Text     := '999';
               CbRepre.ItemIndex := 0;
               CbRepre.Text      := 'TODOS';
               CbRepre.SetFocus;
            end;
      end
   else
      begin
         CCodRep.Text     := '999';
         CbRepre.ItemIndex := 0;
         CbRepre.Text      := 'TODOS';
      end;
end;

procedure TFormGImpRece.CCodProjExit(Sender: tObject);
begin
   if (CCodProj.Text <> '999') then
      begin
         if (SqlCdsProjCx.Locate('PCX_CODIGO',StrZero(CCodProj.Text,3),[])=True) then
            begin
               CbCaixa.Text := SqlCdsProjCxPCX_DESCRI.AsString;
            end
         else
            begin
               uteis.aviso('Centro de Custo não localizado com o código informado !');
               CCodProj.Text    := '999';
               CbCaixa.ItemIndex := 0;
               CbCaixa.Text      := 'TODOS';
            end;
      end
   else
      begin
         CbCaixa.ItemIndex := 0;
         CbCaixa.Text      := 'TODOS';
      end;
end;

procedure TFormGImpRece.BuscaProjeto;
begin
   if (CbCaixa.Text <>'TODOS')
   or (CbCaixa.ItemIndex <> 0) then
      begin
         if (SqlCdsProjCx.Locate('PCX_DESCRI',CbCaixa.Text,[])=True) then
            begin
               CCodProj.Text := SqlCdsProjCxPCX_CODIGO.AsString;
            end
         else
            begin
               uteis.aviso('Projeto não localizado com o nome informado !');
               CCodProj.Text    := '999';
               CbCaixa.ItemIndex := 0;
               CbCaixa.Text      := 'TODOS';
               CbCaixa.SetFocus;
            end;
      end
   else
      begin
         CbCaixa.ItemIndex := 0;
         CbCaixa.Text      := 'TODOS';
      end;
end;

procedure TFormGImpRece.rb1Click(Sender: tObject);
begin
   settipobuscacliente;
   CCodigo.SetFocus;
end;

Procedure TFormGImpRece.settipobuscacliente;
begin
  if rb1.checked then
  begin
    LabelCliente.Caption:='Código:';
    CCodigo.MaxLength:=5;
    CCodigo.Text:='99999';
    CCodigo.Width:=40;
    CbCliente.Left:=112;
    CbCliente.Width:=296;
  end
  Else
  begin
    LabelCliente.Caption:= 'CNPJ/CPF:';
    CCodigo.MaxLength:=14;
    CCodigo.Text:='99999999999999';
    CCodigo.Width:=93;
    CbCliente.Left:=166;
    CbCliente.Width:=242;
  end;
  CbCliente.Text    := 'TODOS';
end;

procedure TFormGImpRece.rb2Click(Sender: tObject);
begin
   settipobuscacliente;
   CCodigo.SetFocus;
end;

procedure TFormGImpRece.CCodigoKeyPress(Sender: tObject; var Key: Char);
begin
  if Pos (key , '1234567890')=0 then
    key := #0;
end;

procedure TFormGImpRece.SqlCdsRelReceberBeforeOpen(DataSet: TDataSet);
begin
  //ClipBrd.Clipboard.AsText:=SqlCdsRelReceber.CommandText;
end;

Function TFormGImpRece.GetFiltroCli(prefsql:string):String;
var cmp,cod : string;
begin
    result := '';
    if (CCodigo.Text <>'99999') and (CCodigo.Text <>'99999999999999')then
    begin
        if rb1.Checked then
        begin
           cod := StrZero(CCodigo.Text,5);
           cmp := 'CLI_CODIGO';
        END
        Else
        BEGIN
           cod := CCodigo.text;
           cmp := 'CLI_CGC';
        end;
        if prefsql<>'' then
          if pos('.',prefsql)=0 then
             prefsql:=prefsql+'.'; 
        result := ' AND '+prefsql+cmp+' = '''+cod+'''';
    end;
end;

procedure TFormGImpRece.FormCreate(Sender: tObject);
begin
     rb1.Checked:=TRUE;
     settipobuscacliente;
     Self.autosize := True ;
     PathNewRel := dbInicio.GetParametroSistema('PMT_PATHRELATORIO');
end;

procedure TFormGImpRece.ppRPRelConReceber00BeforePrint(Sender: tObject);
///
   Procedure InsereTextoRBuilder( pRbLabel: tpplabel );
   begin
       pRbLabel.Caption := pRbLabel.Caption +' - C.CUSTO: '+CCodProj.Text+'-'+CbCaixa.Text ;
   end;
///
begin
     if (CCodProj.Text <> '999') then
     case LtBoxRelatorio.itemIndex of
     0: begin InsereTextoRBuilder( LBL_00_LTITULO2 ); InsereTextoRBuilder( LBL_0A_LTITULO2 ); end;
     1: InsereTextoRBuilder( LBL_01_LTITULO2 );
     2: InsereTextoRBuilder( LBL_02_LTitulo2 );
     3: InsereTextoRBuilder( LBL_03_LTITULO2 );
     4: InsereTextoRBuilder( LBL_04_LTitulo2 );
     5: InsereTextoRBuilder( LBL_05_LTitulo2 );
     6: InsereTextoRBuilder( LBL_051_LTITULO2 );
     7: InsereTextoRBuilder( LBL_06_LTitulo2 );
     8: InsereTextoRBuilder( LBL_07_LTitulo2 );
     end;
end;

procedure TFormGImpRece.TrocandoPaginasGetText(Sender: TObject; var Text: string);
begin
  Text := AnsiReplaceStr(text, 'Page','Página');
  Text := AnsiReplaceStr(text, 'of','de');
end;

end.


