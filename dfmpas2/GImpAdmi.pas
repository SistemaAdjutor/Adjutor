unit GImpAdmi;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Mask, RwFunc, Db, DBTables, Clipbrd,
  DBCtrls,   ComCtrls, Grids, DBGrids, TeeProcs, TeEngine, Chart,
  DbChart, Series, Provider, SqlExpr,SqlClientDataSet, DBClient, DBLocal, DBLocalS, ppProd,
  ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppModule, raCodMod,
  ppBands, ppVar, ppCtrls, ppPrnabl, ppCache, MIDASLIB, ppParameter, jpeg,
  frxClass, frxDBSet, frxExportXLS, frxExportPDF, Data.DBXFirebird,
  ppDesignLayer, SimpleDS, JvExMask, JvToolEdit, Data.FMTBcd, SgDbSeachComboUnit;

type
  TFormGImpRelAdm = class(TForm)
    PrinterRelatorios: TPrinterSetupDialog;
    DsTmpEstat: TDataSource;
    DsTQEstatist: TDataSource;
    Panel1: TPanel;
    TreeGerencial: TTreeView;
    Label2: TLabel;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    PanTodos: TPanel;
    SqlCdsClientes: TSQLClientDataSet;
    SqlCdsRepresentantes: TSQLClientDataSet;
    SqlCdsCbLinha: TSQLClientDataSet;
    SqlCdsClientesCLI_CODIGO: TStringField;
    SqlCdsClientesCLI_RAZAO: TStringField;
    SqlCdsClientesCLI_CIDADE: TStringField;
    SqlCdsClientesEMP_CODIGO: TStringField;
    SqlCdsRepresentantesREP_CODIGO: TStringField;
    SqlCdsRepresentantesREP_NOME: TStringField;
    SqlCdsRepresentantesREP_TIPO: TStringField;
    SqlCdsRepresentantesREP_SUPERVISAO: TStringField;
    SqlCdsRepresentantesEMP_CODIGO: TStringField;
    SqlCdsCbLinhaLIN_CODIGO: TStringField;
    SqlCdsCbLinhaLIN_DESCRI: TStringField;
    SqlCdsCbLinhaEMP_CODIGO: TStringField;
    SqlCdsRepresentantesREP_FUNCAO: TStringField;
    SqlCdsRelGer01: TSQLClientDataSet;
    DsRelGer01: TDataSource;
    ppRelGer01: TppReport;
    pp01HeaderBand1: TppHeaderBand;
    ppLine18: TppLine;
    LBL_01_EMPRESA: TppLabel;
    LBL_01_LTITULO1: TppLabel;
    LBL_01_LTITULO2: TppLabel;
    ppLine20: TppLine;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppLine21: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    pp01DetailBand1: TppDetailBand;
    pp01SummaryBand1: TppSummaryBand;
    ppLine22: TppLine;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBText1: TppDBText;
    ppLabel5: TppLabel;
    SqlCdsRelGer02: TSQLClientDataSet;
    DsRelGer02: TDataSource;
    ppRelGer02: TppReport;
    pp02HeaderBand1: TppHeaderBand;
    ppLine1: TppLine;
    LBL_02_EMPRESA: TppLabel;
    LBL_02_LTITULO1: TppLabel;
    LBL_02_LTITULO2: TppLabel;
    ppLine2: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLine3: TppLine;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    pp02DetailBand1: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    pp02SummaryBand1: TppSummaryBand;
    ppLine4: TppLine;
    ppLabel11: TppLabel;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    SqlCdsRepresentantesREP_GERENTE: TStringField;
    SqlCdsRelGer03: TSQLClientDataSet;
    DsRelGer03: TDataSource;
    ppRelGer03: TppReport;
    SqlCdsRelGer04: TSQLClientDataSet;
    DsRelGer04: TDataSource;
    ppRelGer04: TppReport;
    pp04HeaderBand1: TppHeaderBand;
    ppLine9: TppLine;
    LBL_04_EMPRESA: TppLabel;
    LBL_04_LTITULO1: TppLabel;
    LBL_04_LTITULO2: TppLabel;
    ppLine10: TppLine;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    pp04DetailBand1: TppDetailBand;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    pp04SummaryBand1: TppSummaryBand;
    ppLine12: TppLine;
    ppLabel33: TppLabel;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppGroup2: TppGroup;
    pp04GroupHeaderBand2: TppGroupHeaderBand;
    ppLabel34: TppLabel;
    ppDBText28: TppDBText;
    ppLine13: TppLine;
    pp04GroupFooterBand2: TppGroupFooterBand;
    ppLabel24: TppLabel;
    ppDBText18: TppDBText;
    ppLine14: TppLine;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    raCodeModule4: TraCodeModule;
    ppLine15: TppLine;
    SqlCdsRelGer05: TSQLClientDataSet;
    DsRelGer05: TDataSource;
    ppRelGer05: TppReport;
    SqlCdsPagar: TSQLClientDataSet;
    SqlCdsToTais: TSQLClientDataSet;
    SqlCdsReceber: TSQLClientDataSet;
    DsTmp: TDataSource;
    ppRelAdm0013: TppReport;
    pp03HeaderBand1: TppHeaderBand;
    ppLine5: TppLine;
    LBL_03_EMPRESA: TppLabel;
    LBL_03_LTITULO1: TppLabel;
    LBL_03_LTITULO2: TppLabel;
    ppLine6: TppLine;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLine7: TppLine;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel21: TppLabel;
    pp03DetailBand1: TppDetailBand;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    pp03SummaryBand1: TppSummaryBand;
    ppLine8: TppLine;
    ppLabel20: TppLabel;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    raCodeModule2: TraCodeModule;
    CdsTmp: TClientDataSet;
    CdsTmpTmp_vencto: TDateField;
    CdsTmpTmp_Recebido: TCurrencyField;
    CdsTmpTmp_Receber: TCurrencyField;
    CdsTmpTmp_Pago: TCurrencyField;
    CdsTmpTmp_pagar: TCurrencyField;
    SqlCdsReceberFPC_VENCTO: TSQLTimeStampField;
    SqlCdsReceberWRECEBIDO: TFMTBCdField;
    SqlCdsReceberWRECEBER: TFMTBCdField;
    SqlCdsPagarPPC_VENCTO: TSQLTimeStampField;
    SqlCdsPagarWPAGO: TFMTBCdField;
    SqlCdsPagarWPAGAR: TFMTBCdField;
    ppHeaderBand1: TppHeaderBand;
    ppLine25: TppLine;
    LBL_13_EMPRESA: TppLabel;
    LBL_13_TITULO1: TppLabel;
    LBL_13_TITULO2: TppLabel;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable12: TppSystemVariable;
    ppLine29: TppLine;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel32: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLine26: TppLine;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppLine27: TppLine;
    ppLabel42: TppLabel;
    ppLine28: TppLine;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc27: TppDBCalc;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    CdsTmpTmp_AB_CC: TCurrencyField;
    CdsTmpTmp_Cd_CC: TCurrencyField;
    CdsTmpTmp_AC_CC: TCurrencyField;
    ppDBCalc28: TppDBCalc;
    ppDBCalc29: TppDBCalc;
    ppDBCalc30: TppDBCalc;
    CdsTmpTmp_ABCd_CC: TCurrencyField;
    ppDBTemporario: TppDBPipeline;
    ppDBCalc31: TppDBCalc;
    PanLinha: TPanel;
    PanClie: TPanel;
    EdtCli: TEdit;
    CbCliente: TComboBox;
    PanRep: TPanel;
    EdtRep: TEdit;
    CbRepresent: TComboBox;
    RadGer: TRadioButton;
    RadSup: TRadioButton;
    LBLPRDLINHA: TLabel;
    LBLCLIENTES: TLabel;
    LBLREPRESEN: TLabel;
    CbTeste: TComboBox;
    SqlCdsRel080910: TSQLClientDataSet;
    CdsRel080910: TClientDataSet;
    DsRel080910: TDataSource;
    ppRel080910: TppReport;
    CdsRel080910PRD_REFER: TStringField;
    CdsRel080910FTI_QTDE: TCurrencyField;
    CdsRel080910FTI_VALOR: TCurrencyField;
    CdsRel080910FTI_VL_BRUTO: TCurrencyField;
    CdsRel080910FAT_DTEMIS: TDateField;
    CdsRel080910FAT_CODIGO: TStringField;
    CdsRel080910PER_QTDE: TCurrencyField;
    CdsRel080910PER_VL_BRUTO: TCurrencyField;
    CdsRel080910EMP_CODIGO: TStringField;
    CdsRel080910PRD_DESCRI: TStringField;
    CdsRel080910TOT_MATPRIMA_CC: TCurrencyField;
    CdsRel080910PER_MATPRIMA_CC: TCurrencyField;
    CdsRel080910PRD_PMATPRIMA: TCurrencyField;
    ppDBREL080910: TppDBPipeline;
    ppHeaderBand2: TppHeaderBand;
    ppLine30: TppLine;
    LBL_TMP_EMPRESA: TppLabel;
    LBL_TMP_LTITULO1: TppLabel;
    LBL_TMP_LTITULO2: TppLabel;
    ppSystemVariable13: TppSystemVariable;
    ppSystemVariable14: TppSystemVariable;
    ppLine31: TppLine;
    LBL_TMP_LTITULO3: TppLabel;
    ppLabel55: TppLabel;
    ppLine32: TppLine;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLabel63: TppLabel;
    ppDBCalc32: TppDBCalc;
    ppDBCalc33: TppDBCalc;
    ppDBCalcValorBruto: TppDBCalc;
    ppDBCalc35: TppDBCalc;
    ppLine33: TppLine;
    ppLine34: TppLine;
    raCodeModule6: TraCodeModule;
    ppDBRelGer02: TppDBPipeline;
    ppDBCalc7: TppDBCalc;
    CdsRelGer02: TClientDataSet;
    CdsRelGer02REP_CODIGO: TStringField;
    CdsRelGer02REP_NOME: TStringField;
    CdsRelGer02REP_COTA: TCurrencyField;
    CdsRelGer02QTDE_PEDIDOS: TCurrencyField;
    CdsRelGer02QTDE_ITENS: TCurrencyField;
    CdsRelGer02TOTAL_LIQ_PEDIDOS: TCurrencyField;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBCalc10: TppDBCalc;
    SqlCdsRelGer02REP_CODIGO: TStringField;
    SqlCdsRelGer02REP_NOME: TStringField;
    SqlCdsRelGer02REP_QUOTA: TFMTBCdField;
    SqlCdsRelGer02WVL_LIQ_FAT: TFMTBCdField;
    SqlCdsRelGer02WQTDE_PEDIDOS: TIntegerField;
    SqlCdsRelGer03REP_CODIGO: TStringField;
    SqlCdsRelGer03REP_NOME: TStringField;
    SqlCdsRelGer03REP_FUNCAO: TStringField;
    SqlCdsRelGer03REP_QUOTA: TFMTBCdField;
    SqlCdsRelGer03REP_GERENTE: TStringField;
    SqlCdsRelGer03REP_SUPERVISAO: TStringField;
    SqlCdsRelGer03WPEDIDOS: TIntegerField;
    SqlCdsRelGer03WVLLIQ: TFMTBCdField;
    CdsRelGer03: TClientDataSet;
    CdsRelGer03REP_CODIGO: TStringField;
    CdsRelGer03REP_GRUPO: TStringField;
    CdsRelGer03REP_FUNCAO: TStringField;
    CdsRelGer03REP_NOME: TStringField;
    CdsRelGer03REP_GERENTE: TStringField;
    CdsRelGer03REP_SUPERVISAO: TStringField;
    CdsRelGer03REP_QUOTA: TCurrencyField;
    CdsRelGer03QTDE_PEDIDOS: TCurrencyField;
    CdsRelGer03QTDE_ITENS: TCurrencyField;
    CdsRelGer03TOTAL_LIQ_VENDAS: TCurrencyField;
    ppDBRelGer03: TppDBPipeline;
    SqlCdsRelGer03REP_GRUPO: TStringField;
    CdsRelGer04: TClientDataSet;
    CdsRelGer04CLI_UF: TStringField;
    CdsRelGer04CLI_CIDADE: TStringField;
    CdsRelGer04QTDE_PEDIDOS: TCurrencyField;
    CdsRelGer04QTDE_ITENS: TCurrencyField;
    CdsRelGer04TOTAL_LIQ_VENDAS: TCurrencyField;
    ppDBRelGer04: TppDBPipeline;
    SqlCdsRelGer04CLI_UF: TStringField;
    SqlCdsRelGer04CLI_CIDADE: TStringField;
    SqlCdsRelGer04WPEDIDOS: TIntegerField;
    SqlCdsRelGer04WVLLIQ: TFMTBCdField;
    CdsRelGer05: TClientDataSet;
    CdsRelGer05FAT_CODIGO: TStringField;
    CdsRelGer05FAT_VL_LIQ: TCurrencyField;
    CdsRelGer05FAT_VL_FAT: TCurrencyField;
    CdsRelGer05CLI_RAZAO: TStringField;
    CdsRelGer05CLI_CGC: TStringField;
    CdsRelGer05CLI_INSC: TStringField;
    CdsRelGer05CLI_ENDERE: TStringField;
    CdsRelGer05CLI_BAIRRO: TStringField;
    CdsRelGer05CLI_CEP: TStringField;
    CdsRelGer05CLI_CIDADE: TStringField;
    CdsRelGer05CLI_UF: TStringField;
    CdsRelGer05CLI_FONE: TStringField;
    CdsRelGer05CLI_FAX: TStringField;
    CdsRelGer05CLI_EMAIL: TStringField;
    CdsRelGer05CLI_CONTATO: TStringField;
    CdsRelGer05CLI_FUNCONT: TStringField;
    CdsRelGer05QTDE_ITENS: TCurrencyField;
    CdsRelGer05FAT_DTEMIS: TDateField;
    CdsRelGer05CLI_CODIGO: TStringField;
    ppDBRelGer05: TppDBPipeline;
    ppLine35: TppLine;
    SqlCdsRelGer01NF_EMISSAO: TDateField;
    SqlCdsRelGer01NF_TOT_NOTA: TFMTBCdField;
    SqlCdsRelGer01TOTAL_LIQ: TFMTBCdField;
    SqlCdsRelGer01WQTDE: TFMTBCdField;
    ppDBRelGer01: TppDBPipeline;
    SqlCdsRel080910NF_NOTANUMBER: TStringField;
    SqlCdsRel080910NF_VL_DESCTO: TFMTBCdField;
    SqlCdsRel080910PRD_REFER: TStringField;
    SqlCdsRel080910PRD_DESCRI: TStringField;
    SqlCdsRel080910NF_FLAG_ATUALIZA_ESTOQUE: TStringField;
    SqlCdsRel080910NF_QTDE: TFMTBCdField;
    SqlCdsRel080910PRD_PMATPRI: TFMTBCdField;
    SqlCdsRel080910NF_PMATPRIMA: TFMTBCdField;
    SqlCdsRel080910NF_IPIALIQ: TFMTBCdField;
    SqlCdsRel080910NF_VLSUBST: TFMTBCdField;
    SqlCdsRel080910CTOTAL: TFMTBCdField;
    SqlCdsRelGer05NF_NOTANUMBER: TStringField;
    SqlCdsRelGer05NF_TOT_NOTA: TFMTBCdField;
    SqlCdsRelGer05NF_EMISSAO: TDateField;
    SqlCdsRelGer05CLI_CODIGO: TStringField;
    SqlCdsRelGer05CLI_RAZAO: TStringField;
    SqlCdsRelGer05CLI_CGC: TStringField;
    SqlCdsRelGer05CLI_INSC: TStringField;
    SqlCdsRelGer05CLI_ENDERE: TStringField;
    SqlCdsRelGer05CLI_BAIRRO: TStringField;
    SqlCdsRelGer05CLI_CEP: TStringField;
    SqlCdsRelGer05CLI_CIDADE: TStringField;
    SqlCdsRelGer05CLI_UF: TStringField;
    SqlCdsRelGer05CLI_FONE: TStringField;
    SqlCdsRelGer05CLI_FAX: TStringField;
    SqlCdsRelGer05CLI_EMAIL: TStringField;
    SqlCdsRelGer05CLI_CONTATO: TStringField;
    SqlCdsRelGer05CLI_FUNCONT: TStringField;
    SqlRelLiquidez: TSQLClientDataSet;
    DsRelLiquidez: TDataSource;
    DBRelLiquidez: TppDBPipeline;
    ppRelLiquidez: TppReport;
    SqlRelLiquidezFAT_REGISTRO: TIntegerField;
    SqlRelLiquidezFAT_CODIGO: TStringField;
    SqlRelLiquidezFPC_NUMER: TStringField;
    SqlRelLiquidezREP_CODIGO: TStringField;
    SqlRelLiquidezBAN_CODIGO: TStringField;
    SqlRelLiquidezCCT_CODIGO: TStringField;
    SqlRelLiquidezPCX_CODIGO: TStringField;
    SqlRelLiquidezFPC_DTEMIS: TSQLTimeStampField;
    SqlRelLiquidezFPC_NPARCELAS: TSmallintField;
    SqlRelLiquidezFPC_COBNUM: TStringField;
    SqlRelLiquidezFPC_COBTIPO: TStringField;
    SqlRelLiquidezFPC_TIPODOC: TStringField;
    SqlRelLiquidezFPC_SITPAG: TStringField;
    SqlRelLiquidezFPC_STATUS: TStringField;
    SqlRelLiquidezFPC_DESCTO: TFMTBCdField;
    SqlRelLiquidezFPC_DTDESC: TSQLTimeStampField;
    SqlRelLiquidezFPC_VENCTO: TSQLTimeStampField;
    SqlRelLiquidezFPC_PAGTO: TSQLTimeStampField;
    SqlRelLiquidezFPC_VLPARC: TFMTBCdField;
    SqlRelLiquidezFPC_VLPAGO: TFMTBCdField;
    SqlRelLiquidezFPC_OBS: TStringField;
    SqlRelLiquidezCLI_CODIGO: TStringField;
    SqlRelLiquidezFPC_IMPDUP: TStringField;
    SqlRelLiquidezFPC_JUROS: TFMTBCdField;
    SqlRelLiquidezFPC_MULTA: TFMTBCdField;
    SqlRelLiquidezFPC_VL_RET: TFMTBCdField;
    SqlRelLiquidezEMP_CODIGO: TStringField;
    SqlRelLiquidezCCT_NOVO: TStringField;
    SqlRelLiquidezFPC_PREVISAO: TStringField;
    SqlRelLiquidezFPC_STATUS_REMESSA: TStringField;
    SqlRelLiquidezFPC_DATA_REMESSA: TDateField;
    SqlRelLiquidezBAN_COD_APELIDO: TIntegerField;
    SqlRelLiquidezFPC_STATUS_BAIXA: TStringField;
    SqlRelLiquidezFPC_FORMAPAGTO: TStringField;
    SqlRelLiquidezFPC_DESCONTADO: TStringField;
    SqlRelLiquidezFPC_DATADESCTO: TDateField;
    SqlRelLiquidezFPC_CONFIRMADESCTO: TStringField;
    SqlRelLiquidezFPC_CONFIRMADEVOLUCAO: TStringField;
    SqlRelLiquidezFPC_DATADEVOLUCAO: TDateField;
    SqlRelLiquidezFPC_OBS_DESCTO: TStringField;
    SqlRelLiquidezFPC_JUROS_DESCTO: TFMTBCdField;
    SqlRelLiquidezPAG_CODIGO: TStringField;
    SqlRelLiquidezFPC_BANCO_CHEQUE: TIntegerField;
    SqlRelLiquidezFPC_NUM_CHEQUE: TStringField;
    SqlRelLiquidezFPC_NUM_CHEQUE_DV: TStringField;
    SqlRelLiquidezFPC_CHEQUE_DATA: TDateField;
    SqlRelLiquidezFPC_SACADO_CHEQUE: TStringField;
    SqlRelLiquidezFPC_EXCLUSAO: TStringField;
    SqlRelLiquidezFPC_DATA_EXCLUSAO: TDateField;
    SqlRelLiquidezFPC_HORA_EXCLUSAO: TTimeField;
    SqlRelLiquidezFPC_MOTIVO_EXCLUSAO: TStringField;
    SqlRelLiquidezUSU_CODIGO: TIntegerField;
    SqlRelLiquidezUSU_LOGIN: TStringField;
    SqlRelLiquidezCC_MES: TStringField;
    ppParameterList1: TppParameterList;
    ppHeaderBand5: TppHeaderBand;
    ppLine38: TppLine;
    LBL_LIQ_EMPRESA: TppLabel;
    LBL_LIQ_LTITULO1: TppLabel;
    LBL_LIQ_LTITULO2: TppLabel;
    ppSystemVariable15: TppSystemVariable;
    ppSystemVariable16: TppSystemVariable;
    ppLine39: TppLine;
    ppDetailBand6: TppDetailBand;
    ppGroup4: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBText44: TppDBText;
    ppLine36: TppLine;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLine37: TppLine;
    ppLabel71: TppLabel;
    ppLine40: TppLine;
    ppDBCalc38: TppDBCalc;
    ppDBCalc39: TppDBCalc;
    ppLine41: TppLine;
    ppSummaryBand3: TppSummaryBand;
    ppLabel72: TppLabel;
    ppDBCalc40: TppDBCalc;
    ppDBCalc41: TppDBCalc;
    ppGroup5: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppDBCalc42: TppDBCalc;
    ppDBCalc43: TppDBCalc;
    ppDBText49: TppDBText;
    ppParameterList2: TppParameterList;
    pp05HeaderBand1: TppHeaderBand;
    ppLine16: TppLine;
    LBL_05_EMPRESA: TppLabel;
    LBL_05_LTITULO1: TppLabel;
    LBL_05_LTITULO2: TppLabel;
    ppLine17: TppLine;
    ppSystemVariable9: TppSystemVariable;
    ppSystemVariable10: TppSystemVariable;
    LBL_05_LTITULO3: TppLabel;
    pp05DetailBand1: TppDetailBand;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText29: TppDBText;
    pp05SummaryBand1: TppSummaryBand;
    ppLabel36: TppLabel;
    ppDBCalc26: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppGroup3: TppGroup;
    pp05GroupHeaderBand2: TppGroupHeaderBand;
    DBCodigo: TppDBText;
    DbCnpj: TppDBText;
    DBendere: TppDBText;
    ppLine19: TppLine;
    ppLabel31: TppLabel;
    ppLabel35: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLine24: TppLine;
    LBLCGC: TppLabel;
    ppLabel23: TppLabel;
    ppDBText27: TppDBText;
    DBContato: TppDBText;
    DBFuncao: TppDBText;
    LBLCIDADE: TppLabel;
    LBLEMAIL: TppLabel;
    pp05GroupFooterBand2: TppGroupFooterBand;
    ppLine11: TppLine;
    ppLabel64: TppLabel;
    ppDBCalc34: TppDBCalc;
    ppDBCalc36: TppDBCalc;
    ppDBCalc37: TppDBCalc;
    ppLine23: TppLine;
    raCodeModule5: TraCodeModule;
    SqlCdsRel080910CUSTO: TFMTBCdField;
    CdsRel080910CUSTO: TFloatField;
    SqlCdsRel080910CUSTO_TOTAL: TFMTBCdField;
    CdsRel080910CUSTO_TOTAL: TFloatField;
    ppDBCalc44: TppDBCalc;
    Panel4: TPanel;
    Image1: TImage;
    GroupBox1: TGroupBox;
    RadVideo: TRadioButton;
    RadImpressora: TRadioButton;
    RadText: TRadioButton;
    GroupBox2: TGroupBox;
    BitOk: TBitBtn;
    BitSair: TBitBtn;
    BitConfig: TBitBtn;
    SqlCdsClienteMargemContrib: TSQLClientDataSet;
    dsClienteMargemContrib: TDataSource;
    SqlCdsClienteMargemContribCLI_CODIGO: TStringField;
    SqlCdsClienteMargemContribCLI_RAZAO: TStringField;
    SqlCdsClienteMargemContribTOTAL_NOTA: TFMTBCdField;
    SqlCdsClienteMargemContribCONTRIBUICAO: TFMTBCdField;
    frxClienteMargemContrib: TfrxReport;
    frxdbClienteMargemContrib: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    rgEmpresaLogada: TRadioGroup;
    SqlCdsClienteMargemContribCLI_CGC: TStringField;
    SqlCdsClienteMargemContribQUANTIDADE: TIntegerField;
    SqlCdsRelGer05NF_TOT_PROD: TFMTBCdField;
    SqlCdsContas: TSqlClientDataSet;
    SqlCdsContasCCT_NIVEL: TStringField;
    SqlCdsContasCCT_DESCRI: TStringField;
    SqlCdsContasCCT_CODIGO: TStringField;
    SqlCdsContasDESPESAS: TFMTBCDField;
    SqlCdsContasRECEITA: TFMTBCDField;
    ppdbPlano: TppDBPipeline;
    ppRelPlano: TppReport;
    dsPlanoContas: TDataSource;
    ppParameterList9: TppParameterList;
    ppHeaderBand3: TppHeaderBand;
    LBL_45_EMPRESA: TppLabel;
    LBL_45_LTITULO1: TppLabel;
    LBL_45_LTITULO2: TppLabel;
    ppSystemVariable17: TppSystemVariable;
    ppSystemVariable18: TppSystemVariable;
    ppLine42: TppLine;
    ppLabel22: TppLabel;
    ppLabel28: TppLabel;
    ppLabel65: TppLabel;
    ppLabel67: TppLabel;
    ppLine43: TppLine;
    ppLabel66: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText30: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    despesastotais: TppVariable;
    receitatotal: TppVariable;
    resultado: TppVariable;
    ppLine44: TppLine;
    raCodeModule1: TraCodeModule;
    ppDesignLayers9: TppDesignLayers;
    ppDesignLayer9: TppDesignLayer;
    EditDataI: TJvDateEdit;
    EditDataF: TJvDateEdit;
    SqlCdsRelGer01NF_TOT_PROD: TFMTBCDField;
    ppLabel76: TppLabel;
    ppDBCalc46: TppDBCalc;
    SqlCdsRelGer01NF_VLFRETE: TFMTBCDField;
    SqlCdsRelGer01NF_DESP_ACES: TFMTBCDField;
    SqlCdsRelGer01VL_IMPOSTOS: TFMTBCDField;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppFooterBand2: TppFooterBand;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    qLinha: TSQLQuery;
    EdtLin: TEdit;
    CbPrdLinha: TSgDbSearchCombo;
    qTipoPedido: TSQLQuery;
    dsTipoPedido: TDataSource;
    scTipoPedido: TSgDbSearchCombo;
    Label1: TLabel;
    procedure MudaCorCampos(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure BitOkClick(Sender: tObject);
    procedure BitSairClick(Sender: tObject);
    procedure BitConfigClick(Sender: tObject);
    procedure CriaRelLiquidez;
    procedure EditDataIExit(Sender: tObject);
    procedure EditDataFExit(Sender: tObject);
    procedure EditDataIEnter(Sender: tObject);
    procedure EditDataFEnter(Sender: tObject);
    procedure TreeGerencialClick(Sender: tObject);
    procedure CbRepresentClick(Sender: tObject);
    procedure pp02HeaderBand1BeforePrint(Sender: tObject);
    procedure RadGerClick(Sender: tObject);
    procedure CdsTmpCalcFields(DataSet: TDataSet);
    procedure EdtRepClick(Sender: tObject);
    procedure EdtRepExit(Sender: tObject);
    procedure CbRepresentEnter(Sender: tObject);
    procedure CbRepresentExit(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure CbClienteChange(Sender: tObject);
    procedure EdtCliClick(Sender: tObject);
    procedure EdtCliExit(Sender: tObject);
    procedure CbClienteExit(Sender: tObject);
    procedure CdsRel080910CalcFields(DataSet: TDataSet);
    procedure CbClienteClick(Sender: tObject);
    procedure SqlRelLiquidezCalcFields(DataSet: TDataSet);
    procedure frxClienteMargemContribGetValue(const VarName: String;
      var Value: Variant);
    procedure SqlCdsClienteMargemContribCLI_CGCGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure despesastotaisGetText(Sender: TObject; var Text: string);
    procedure receitatotalGetText(Sender: TObject; var Text: string);
    procedure resultadoGetText(Sender: TObject; var Text: string);
    procedure ppSystemVariable7GetText(Sender: TObject; var Text: string);
    procedure ppSystemVariable14GetText(Sender: TObject; var Text: string);
    procedure ppSystemVariable13GetText(Sender: TObject; var Text: string);
    procedure CbPrdLinhaSelect(Sender: TObject);
    procedure EdtLinExit(Sender: TObject);
  private
    { Private declarations }
    CampoData    :TjvDateEdit;
    CampoCombo   :TComboBox;
    CampoEdit    :TEdit;

    wRepr,
    wDescri,
    wCodCliente,
    wRefer:string;
    wQtde,
    wTotal,
    wValor_liq,
    wTotqtde,
    wTot_liq,
    wTot_bruto,
    wValor_bruto,
    wTotalBruto,
    wPmatPrima:Currency;
    wAchouCli,
    bChamaRelatorio  : Boolean;
    sFiltro:String;
    despesa, receita :Double;
    //
    procedure CarregaComboBox;

   public
    { Public declarations }
  end;

var
  FormGImpRelAdm: TFormGImpRelAdm;

implementation

{$R *.DFM}

uses Uteis, DataCad, DataCad1, Men0001, ufrmpreviewrb, iniciodb;





procedure TFormGImpRelAdm.MudaCorCampos(Sender: tObject);
begin
    {CampoData  :TDateEdit}
    if Assigned(CampoData) then
       begin
          CampoData.color := clBtnFace; //clWindow;
       end;
    if ActiveControl is TjvDateEdit then
       begin
          TjvDateEdit(ActiveControl).color := $0080FFFF;
          CampoData := TjvDateEdit(ActiveControl);
       end
    else
       begin
          CampoData := nil;
       end;
    {CampoCombo : TComboBox}
    if Assigned(CampoCombo) then
       begin
          CampoCombo.color := clWindow;
       end;
    if ActiveControl is TComboBox then
       begin
          TComboBox(ActiveControl).color := $0080FFFF;
          CampoCombo := TComboBox(ActiveControl);
       end
    else
       begin
          CampoCombo := nil;
       end;
    {CampoEdit : TEdit}
    if Assigned(CampoEdit) then
       begin
          CampoEdit.color := clWindow;
       end;
    if ActiveControl is TEdit then
       begin
          TEdit(ActiveControl).color := $0080FFFF;
          CampoEdit := TEdit(ActiveControl);
       end
    else
       begin
          CampoEdit := nil;
       end;
end;

procedure TFormGImpRelAdm.FormShow(Sender: tObject);
begin
    //Valida se o padrão de conulta da empresa é Logada ou Todas esta nos parâmetros
    if (dbInicio.empresa.sPadraoPesquisaEmpresa = 'L') then
      rgEmpresaLogada.ItemIndex := 0
    else
      rgEmpresaLogada.ItemIndex := 1;
    bChamaRelatorio := True;
    RadGer.Checked  := True;
    screen.cursor   := crHourGlass;
    //FormGImpRelAdm.AutoSize := True;
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
    // defaults inicial
    // LboxNomeRel.ItemIndex := 0;
    TreeGerencial.FullExpand;
    //TreeGerencial.Items.Item[7].Expand(True);
    //TreeGerencial.Items.Item[8].Expand(True);
    //TreeGerencial.Items.Item[13].Expand(True);
    Screen.cursor     := crDefault;
    PanTodos.Visible  := False;
    EditDataI.Date    := now;
    EditDataF.Date    := now+30;
    CarregaComboBox;
    try
      SqlCdsClientes.Close;
      SqlCdsClientes.CommandText := SQLDEF(iif(rgEmpresaLogada.ItemIndex = 0,'EXCLUSIVA','NAOEXCLUSIVA'),'SELECT C1.CLI_CODIGO,C1.CLI_RAZAO,C1.CLI_CIDADE,C1.EMP_CODIGO FROM CLI0000 C1','','C1.CLI_RAZAO','C1.');
      SqlCdsClientes.Open;
      SqlCdsClientes.First;
      CbCliente.Items.Add('TODOS OS CLIENTES');
      CbTeste.Items.Add('');
      while not SqlCdsClientes.Eof do
        begin
            CbTeste.Items.Add(SqlCdsClientesCLI_CODIGO.AsString);
            CbCliente.Items.Add(SqlCdsClientesCLI_RAZAO.AsString);
            SqlCdsClientes.Next;
        end;
      EdtCli.Text         := '99999';
      CbCliente.ItemIndex := 0;
      CbTeste.ItemIndex   := 0;
      {Carregando Combo da linha}
      {
      SqlCdsCbLinha.Close;
      // SqlCdsCbLinha.CommandText := SQLDEF(iif(rgEmpresaLogada.ItemIndex = 0,'EXCLUSIVA','NAOEXCLUSIVA'),'SELECT L1.* FROM PRD_LINHA L1','','L1.LIN_DESCRI','L1.');
      SqlCdsCbLinha.CommandText := 'SELECT L1.* FROM PRD_LINHA L1 ORDER BY L1.LIN_DESCRI';
      SqlCdsCbLinha.Open;
      SqlCdsCbLinha.First;
      CbPrdLinha.Items.Add('TODAS AS LINHAS');
      while not SqlCdsCbLinha.Eof do
        begin
            CbPrdLinha.Items.Add(SqlCdsCbLinhaLIN_DESCRI.AsString);
            SqlCdsCbLinha.Next;
        end;
      EdtLin.Text          := '999';
      CbPrdLinha.ItemIndex := 0;
      }
    except on E:EDataBaseError do
        uteis.erro  (Pchar('Erro ao Abrir a Tabela de Produto de Linha !'+e.message));
    end;
    EditDataI.SetFocus;

    Height := 435;
    Width := 680;
    PanLinha.top := 8;
    PanLinha.Left := 8;
    qTipoPedido.Open;
end;

procedure TFormGImpRelAdm.CriaRelLiquidez;
begin
   try
     wSql1      := 'SELECT T1.* FROM FAT_PC01 T1 LEFT JOIN CLI0000 T2 ON (T2.CLI_CODIGO = T1.CLI_CODIGO) ';
     wSeleciona := 'WHERE T1.FPC_DTEMIS BETWEEN '''+DataAmericana(EditDataI.Text)+''' AND '''+DataAmericana(EditDataF.Text)+''' AND T1.FPC_EXCLUSAO = ''N'' AND FPC_SITPAG <> ''C''  ';
     wOrdem     := 'T1.FPC_VENCTO,T1.FPC_DTEMIS';
     //
     SqlRelLiquidez.Close;
     SqlRelLiquidez.CommandText := SQLDEF(iif(rgEmpresaLogada.ItemIndex = 0,'EXCLUSIVA','NAOEXCLUSIVA'),wSql1,wSeleciona,wOrdem,'T1.');
     SqlRelLiquidez.Open;
     {ATRIBUI O CABECALHO DO RELATORIO}
     LBL_LIQ_LTITULO1.Caption := 'PREVISÃO DE LIQUIDEZ DO FATURAMENTO - CONTAS À RECEBER';
     LBL_LIQ_LTITULO2.Caption := 'Periódo de: '+EditDataI.Text+' Até '+EditDataF.Text;
     LBL_LIQ_EMPRESA.Caption  := dbInicio.Empresa.RAZAO;
     {EXECUTA O RELATORIO}
     if RadVideo.checked  then
        begin
            ppRelLiquidez.DeviceType := 'Screen';
        end;
     if RadImpressora.checked  then
        begin
            ppRelLiquidez.DeviceType := 'Printer';
            ppRelLiquidez.ShowPrintDialog := true;
        end;
     if RadText.checked  then
        begin
            ppRelLiquidez.ShowPrintDialog := False;
            ppRelLiquidez.DeviceType   := 'ReportTextFile';
            ppRelLiquidez.TextFileName := FrmMenu.PathNewRel+'\RELGER_LIQUIDEZ.TXT';
            uteis.aviso(pchar('Relatório salvo na pasta : '+trim(FrmMenu.PathNewRel)+'\RELGER_LIQUIDEZ.TXT'));
        end;
     ppRelLiquidez.Print;
     BitOk.Enabled := False;
     EditDataI.SetFocus;
   except
      on E:EDatabaseError do
        begin
           uteis.erro  (pchar('Impossível gerar o relatorio !'+#13#10+
                      'Mensagem erro: '+e.message));
        end;
   end;
end;

procedure TFormGImpRelAdm.despesastotaisGetText(Sender: TObject; var Text: string);
begin
  Text := FormatFloat('#,##0.00',despesa);
end;

procedure TFormGImpRelAdm.BitOkClick(Sender: tObject);
var
 iQtdeReg :Integer;
 uCustoTmp:Double;

begin
    // verifica se a data final é maior que a data inicial
    if EditDataI.Date > EditDataF.Date then
      begin
          uteis.erro  ('Data final não pode ser menor que a data inicial!');
          EditDataF.Setfocus;
          exit;
      end;
    if (EditDataI.Text = '  /  /    ') or (EditDataI.Date = 0) then
       begin
           uteis.aviso('Informe um período !');
           EditDataI.SetFocus;
           EditDataI.SelectAll;
           exit;
       end;
    {Faz o Filtro pelo Periodo selcionado}
    wSeleciona:= 'WHERE F1.FAT_DTEMIS BETWEEN '''+DataAmericana(EditDataI.Text)+''' AND '''+DataAmericana(EditDataF.Text)+''' AND F1.FAT_EXCLUSAO = ''N''';
    //Inicio do primeiro relatorio  - vendas(Faturamento)por dia no periodo
    screen.cursor := crHourGlass;
    if TreeGerencial.Items.Item[1].Selected then
       begin
           wSeleciona:= 'WHERE T1.NF_EMISSAO BETWEEN '''+DataAmericana(EditDataI.Text)+''' AND '''+DataAmericana(EditDataF.Text)+''' AND T1.OPE_SEMVLCOM = ''N'' AND T1.NF_CANCELADA = ''N'''+
                        ' AND NF_STATUS_NFE IN ('+QuotedStr('A')+','+QuotedStr('O')+','+QuotedStr('N')+')';
           wOrdem    := ' ORDER BY T1.NF_EMISSAO';
           {EXECUTA O SQL}
           try
             wSql1    := 'SELECT T1.NF_EMISSAO,SUM(T1.NF_TOT_NOTA) NF_TOT_NOTA,SUM(NF_TOT_PROD) AS NF_TOT_PROD ,SUM(NF_TOT_PROD - T1.NF_VL_DESCTO) TOTAL_LIQ, SUM(NF_VLFRETE) NF_VLFRETE,  '+
                         ' SUM(NF_VL_IPI+NF_VL_SUBTRIB) VL_IMPOSTOS, SUM(NF_VLSEGURO+  NF_DESP_ACES) AS NF_DESP_ACES,'+
                         ' SUM((SELECT SUM(NF_QTDE) FROM NF_IT01 T2 WHERE T2.NF_IT_NOTANUMER = T1.NF_NOTANUMBER AND T1.EMP_CODIGO = T2.EMP_CODIGO )) AS WQTDE '+
                         ' FROM NF0001 T1 JOIN  FAT0000 fat ON (NF_CANCELADA = ''N'' AND NF_NOTANUMBER = fat.FAT_CODIGO AND t1.EMP_CODIGO = fat.EMP_CODIGO) ';
            wsql2 :=     'GROUP BY T1.NF_EMISSAO';
{
             wSQL1 := 'SELECT F1.EMP_CODIGO,F1.FAT_CODIGO,F1.FAT_DTEMIS,F1.FAT_VL_LIQ,F1.FAT_VLFAT,COALESCE(SUM(N1.NF_QTDE),0) AS WQTDE FROM FAT0000 F1 ';
             wSQL2 := 'LEFT JOIN NF_IT01 N1 ON (N1.NF_IT_NOTANUMER = F1.FAT_CODIGO) AND (F1.EMP_CODIGO = N1.EMP_CODIGO) AND N1.NF_FLAG_ATUALIZA_ESTOQUE = ''S''';
             wSQL3 := 'GROUP BY F1.EMP_CODIGO,F1.FAT_CODIGO,F1.FAT_DTEMIS,F1.FAT_VL_LIQ,F1.FAT_VLFAT ';
}
             if (rgEmpresaLogada.ItemIndex = 0) then
                wSeleciona := wSeleciona + ' AND T1.EMP_CODIGO = '''+dbInicio.Empresa.EMP_CODIGO+'''';
             SqlCdsRelGer01.Close;
             SqlCdsRelGer01.CommandText := wSql1+wSeleciona+wSql2+wOrdem;
             SqlCdsRelGer01.Open;
             //
             iQtdeReg := SqlCdsRelGer01.RecordCount;
             {ATRIBUI O CABECALHO DO RELATORIO}
             LBL_01_LTITULO1.Caption := 'RELATÓRIO DE VENDAS DIÁRIAS FATURADAS';
             LBL_01_LTITULO2.Caption := 'Periódo de: '+EditDataI.Text+' Até '+EditDataF.Text;
             LBL_01_EMPRESA.Caption  := dbInicio.Empresa.RAZAO;
             {EXECUTA O RELATORIO}
             if RadVideo.Checked then
                ppRelGer01.DeviceType := 'Screen'
             else
             if RadImpressora.checked  then
             begin
                    ppRelGer01.DeviceType := 'Printer';
                    ppRelGer01.ShowPrintDialog := true;
             end;
             ppRelGer01.TextFileName := FrmMenu.PathNewRel+'\RELGERFATURAMENTO';

             RBuilderPreview(ppRelGer01);
             BitOk.Enabled := False;
             EditDataI.SetFocus;
           except on E:EdataBaseError do
               uteis.erro  (Pchar('Erro ao Abrir a tabela NF0001 !'+e.Message));
           end;
       end;

    //segundo vendas por representante
    if TreeGerencial.Items.Item[2].Selected then
       begin
           wSeleciona:= 'WHERE T1.NF_EMISSAO BETWEEN '''+DataAmericana(EditDataI.Text)+''' AND '''+DataAmericana(EditDataF.Text)+''' AND T1.OPE_SEMVLCOM = ''N'' AND T1.NF_CANCELADA = ''N'' '+
                        ' AND T1.NF_STATUS_NFE IN ('+QuotedStr('A')+','+QuotedStr('O')+')';
           wOrdem := 'ORDER BY T2.REP_NOME';
           try
             if (rgEmpresaLogada.ItemIndex = 0) then
                wSeleciona := wSeleciona + ' AND T1.EMP_CODIGO='''+dbInicio.Empresa.EMP_CODIGO+'''';
             wSql1 := 'SELECT T1.REP_CODIGO,T2.REP_NOME,T2.REP_QUOTA,CAST(COUNT(*) AS INTEGER) AS WQTDE_PEDIDOS ,SUM(T1.NF_TOT_PROD - T1.NF_VL_DESCTO) AS WVL_LIQ_FAT FROM NF0001 '+
                     ' T1 LEFT JOIN REP0000 T2 ON (T2.REP_CODIGO = T1.REP_CODIGO) JOIN OPE0000 T4 ON (T4.OPE_CODIGO = T1.OPE_CODIGO) ';
             wSql2 := ' GROUP BY T1.REP_CODIGO,T2.REP_NOME,T2.REP_QUOTA ';

             SqlCdsRelGer02.Close;
             SqlCdsRelGer02.CommandText := wSql1+wSeleciona+wSql2+wOrdem;
             SqlCdsRelGer02.Open;
             if not (CdsRelGer02.Active) then
                CdsRelGer02.CreateDataSet;
             CdsRelGer02.EmptyDataSet;
             SqlCdsRelGer02.First;
             while not SqlCdsRelGer02.Eof do
              begin
                  CdsRelGer02.Append;
                  CdsRelGer02REP_CODIGO.AsString          := SqlCdsRelGer02REP_CODIGO.AsString;
                  CdsRelGer02REP_NOME.AsString            := SqlCdsRelGer02REP_NOME.AsString;
                  CdsRelGer02REP_COTA.AsCurrency          := SqlCdsRelGer02REP_QUOTA.AsCurrency;
                  CdsRelGer02QTDE_PEDIDOS.AsCurrency      := SqlCdsRelGer02WQTDE_PEDIDOS.AsCurrency;
                  CdsRelGer02TOTAL_LIQ_PEDIDOS.AsCurrency := SqlCdsRelGer02WVL_LIQ_FAT.AsCurrency;
                  {Soma as quantidades de itens de cada representante vendido no período}
                  try
                    wSql1      := 'SELECT SUM(T2.NF_QTDE) AS WQTDE_ITENS FROM NF0001 T1 LEFT JOIN NF_IT01 T2 ON (T2.NF_IT_NOTANUMER = T1.NF_NOTANUMBER AND T1.EMP_CODIGO = T2.EMP_CODIGO ) JOIN OPE0000 T4 ON (T4.OPE_CODIGO = T1.OPE_CODIGO) ';
                    wSeleciona := 'WHERE T1.NF_EMISSAO BETWEEN '''+DataAmericana(EditDataI.Text)+''' AND '''+DataAmericana(EditDataF.Text)+''' AND T1.OPE_SEMVLCOM = ''N'' AND T1.NF_CANCELADA = ''N'' AND T1.REP_CODIGO = '''+SqlCdsRelGer02REP_CODIGO.AsString+'''';
                    //
                    if (rgEmpresaLogada.ItemIndex = 0) then
                       wSeleciona := wSeleciona + ' AND T1.EMP_CODIGO = '''+dbInicio.Empresa.EMP_CODIGO+'''';
                    DataCadastros.sqlUpdate.close;
                    DataCadastros.SqlUpdate.sql.text :=wSql1+wSeleciona;
                    DataCadastros.sqlUpdate.Open;
                    CdsRelGer02QTDE_ITENS.AsCurrency := DataCadastros.sqlUpdate.FieldByName('WQTDE_ITENS').AsCurrency;
                    CdsRelGer02.Post;
                  except on E:EDataBaseError do
                     uteis.erro  (pchar('Erro ao Calcular a quantidade de Itens ! '+e.message));
                  end;
                  SqlCdsRelGer02.Next;
              end;
           except on E:EdataBaseError do
               uteis.erro  (Pchar('Erro ao Abrir as Tabelas FAT0000 e FOR0000 !'+e.Message));
           end;
           {ATRIBUI O CABECALHO DO RELATORIO}
           LBL_02_LTITULO1.Caption := 'RELATÓRIO DE VENDAS LIQUIDAS FATURADAS POR VENDEDORES';
           LBL_02_LTITULO2.Caption := 'Periódo de: '+EditDataI.Text+' Até '+EditDataF.Text;
           LBL_02_EMPRESA.Caption  := dbInicio.Empresa.RAZAO;
           {EXECUTA O RELATORIO}
           CdsRelGer02.First;
           if RadVideo.checked  then
              begin
                  ppRelGer02.DeviceType := 'Screen';
              end;
           if RadImpressora.checked  then
              begin
                  ppRelGer02.DeviceType := 'Printer';
                  ppRelGer02.ShowPrintDialog := true;
              end;
           if RadText.checked  then
              begin
                  ppRelGer02.ShowPrintDialog := False;
                  ppRelGer02.DeviceType   := 'ReportTextFile';
                  ppRelGer02.TextFileName := FrmMenu.PathNewRel+'\RELGERFATURAMENTO.TXT';
                  uteis.aviso(pchar('Relatório salvo na pasta : '+trim(FrmMenu.PathNewRel)+'\RELGERFATURAMENTO.TXT'));
              end;
           ppRelGer02.Print;
           BitOk.Enabled := False;
           EditDataI.SetFocus;
       end;

    // Relatório de Vendas por Supervisor/Gerente/Equipe
    if TreeGerencial.Items.Item[3].Selected then
       begin
           //wSeleciona:= 'WHERE T1.FAT_DTEMIS BETWEEN '''+DataAmericana(EditDataI.Text)+''' AND '''+DataAmericana(EditDataF.Text)+''' AND T4.OPE_SEMVLCOM = ''N'' AND T1.NF_CANCELADA = ''N''';
           wSeleciona:= 'WHERE T1.FAT_DTEMIS BETWEEN '+DateToSQL( StrToDate(EditDataI.Text))+' AND '+DateToSQL(StrToDate( EditDataF.Text))+' AND T1.FAT_EXCLUSAO = ''N'' ';
           if (EdtRep.Text <> '999') then
              begin
                  wSeleciona := wSeleciona + IIF(SqlCdsRepresentantesREP_FUNCAO.AsString='G',' AND T2.REP_GERENTE = '''+EdtRep.Text+'''',' AND T2.REP_SUPERVISAO = '''+EdtRep.Text+'''');
                  LBL_03_LTITULO2.Caption := IIF(SqlCdsRepresentantesREP_FUNCAO.AsString='G','GERENTE: '+EdtRep.Text+' - '+CbRepresent.Text,'SUPERVISOR: '+EdtRep.Text+' - '+CbRepresent.Text);
              end
           else
              begin
                  LBL_03_LTITULO2.Caption := IIF(SqlCdsRepresentantesREP_FUNCAO.AsString='G','GERENTE: TODOS OS GERENTES','SUPERVISOR: TODOS OS SUPERVISORES');
              end;
           if scTipoPedido.idRetorno <> '' then
           begin
              wSeleciona := wSeleciona + ' AND T1.OPV_CODIGO = ' + scTipoPedido.idRetorno + ' ';
              LBL_03_LTITULO2.Caption := LBL_03_LTITULO2.Caption + ' | Tipo de Pedido: ' + scTipoPedido.Text;
           end;

           if RadGer.checked  then
              wOrdem := 'ORDER BY T2.REP_GERENTE,T2.REP_SUPERVISAO,T2.REP_NOME'
           else
              wOrdem := 'ORDER BY T2.REP_SUPERVISAO,T2.REP_NOME';
           try
             wSql1 := 'SELECT T1.REP_CODIGO,T2.REP_NOME,T2.REP_FUNCAO,T2.REP_QUOTA,T2.REP_GERENTE,T2.REP_SUPERVISAO,T2.REP_GRUPO, CAST(COUNT(*) AS INTEGER) AS WPEDIDOS,';
             wSql2 := 'SUM(T1.FAT_VL_LIQ) AS WVLLIQ FROM FAT0000 T1 LEFT JOIN REP0000 T2 ON (T2.REP_CODIGO = T1.REP_CODIGO AND T2.REP_SITUACAO = ''A'') ';
             wSql3 := 'GROUP BY T1.REP_CODIGO,T2.REP_NOME,T2.REP_FUNCAO,T2.REP_QUOTA,T2.REP_GERENTE,T2.REP_SUPERVISAO,T2.REP_GRUPO ';
             if (rgEmpresaLogada.ItemIndex = 0) then
                wSeleciona := wSeleciona + ' AND T1.EMP_CODIGO='''+dbInicio.Empresa.EMP_CODIGO+'''';
             SqlCdsRelGer03.Close;
             SqlCdsRelGer03.CommandText := wSql1+wSql2+wSeleciona+wSql3+wOrdem;
             SqlCdsRelGer03.open;
             if not (CdsRelGer03.Active) then
                CdsRelGer03.CreateDataSet;
             CdsRelGer03.EmptyDataSet;
             SqlCdsRelGer03.First;
             while not SqlCdsRelGer03.Eof do
              begin
                  CdsRelGer03.Append;
                  CdsRelGer03REP_CODIGO.AsString         := SqlCdsRelGer03REP_CODIGO.AsString;
                  CdsRelGer03REP_GRUPO.AsString          := SqlCdsRelGer03REP_GRUPO.AsString;
                  CdsRelGer03REP_FUNCAO.AsString         := SqlCdsRelGer03REP_FUNCAO.AsString;
                  CdsRelGer03REP_NOME.AsString           := SqlCdsRelGer03REP_NOME.AsString;
                  CdsRelGer03REP_GERENTE.AsString        := SqlCdsRelGer03REP_GERENTE.AsString;
                  CdsRelGer03REP_SUPERVISAO.AsString     := SqlCdsRelGer03REP_SUPERVISAO.AsString;
                  CdsRelGer03REP_QUOTA.AsCurrency        := SqlCdsRelGer03REP_QUOTA.AsCurrency;
                  CdsRelGer03QTDE_PEDIDOS.AsCurrency     := SqlCdsRelGer03WPEDIDOS.AsCurrency;
                  CdsRelGer03TOTAL_LIQ_VENDAS.AsCurrency := SqlCdsRelGer03WVLLIQ.AsCurrency;
                  {Soma as quantidades de itens de cada representante vendido no período}
                  try
                    wSql1      := 'SELECT SUM(T2.NF_QTDE) AS WQTDE_ITENS FROM NF0001 T1 LEFT JOIN NF_IT01 T2 ON (T2.NF_IT_NOTANUMER = T1.NF_NOTANUMBER AND T1.EMP_CODIGO = T2.EMP_CODIGO )';
                    wSeleciona := 'WHERE T1.NF_EMISSAO BETWEEN '''+DataAmericana(EditDataI.Text)+''' AND '''+DataAmericana(EditDataF.Text)+''' AND T1.OPE_SEMVLCOM = ''N'' AND T1.NF_CANCELADA = ''N'' AND T1.REP_CODIGO = '''+SqlCdsRelGer03REP_CODIGO.AsString+'''';
                    if (rgEmpresaLogada.ItemIndex = 0) then
                       wSeleciona := wSeleciona + ' AND T1.EMP_CODIGO='''+dbInicio.Empresa.EMP_CODIGO+'''';
                    DataCadastros.sqlUpdate.close;
                    DataCadastros.SqlUpdate.sql.text :=wSql1+wSeleciona;
                    DataCadastros.sqlUpdate.Open;
                    CdsRelGer03QTDE_ITENS.AsCurrency := DataCadastros.sqlUpdate.FieldByName('WQTDE_ITENS').AsCurrency;
                    CdsRelGer03.Post;
                  except on E:EDataBaseError do
                     uteis.erro  (pchar('Erro ao Calcular a quantidade de Itens ! '+e.message));
                  end;
                  SqlCdsRelGer03.Next;
              end;
             CdsRelGer03.First;
           except on E:EdataBaseError do
               uteis.erro  (pchar('Erro ao abrir a Tabela FAT0000+REP0000 !'+e.Message));
           end;
           {ATRIBUI O CABECALHO DO RELATORIO}
           LBL_03_LTITULO1.Caption := 'RELATÓRIO DE VENDAS DA EQUIPE  -  Período :'+EditDataI.Text+' a '+EditDataF.Text;
           LBL_03_EMPRESA.Caption  := dbInicio.Empresa.RAZAO;
           {EXECUTA O RELATORIO}
           if RadVideo.checked  then
              begin
                  ppRelGer03.DeviceType := 'Screen';
              end;
           if RadImpressora.checked  then
              begin
                  ppRelGer03.DeviceType := 'Printer';
                  ppRelGer03.ShowPrintDialog := true;
              end;
           if RadText.checked  then
              begin
                  ppRelGer03.ShowPrintDialog := False;
                  ppRelGer03.DeviceType   := 'ReportTextFile';
                  ppRelGer03.TextFileName := FrmMenu.PathNewRel+'\RELGERFATEQUIPE.TXT';
                  uteis.aviso(pchar('Relatório salvo na pasta : '+trim(FrmMenu.PathNewRel)+'\RELGERFATEQUIPE.TXT'));
              end;
           ppRelGer03.Print;
           EditDataI.SetFocus;
       end;
    //Inicio do Quarto relatorio  - vendas por Estado
    if TreeGerencial.Items.Item[4].Selected then
       begin
           {EXECUTA O SQL}
           try
             wSql1      := 'SELECT T2.CLI_UF,T2.CLI_CIDADE, CAST (COUNT(*) AS INTEGER) AS WPEDIDOS,SUM(T1.NF_TOT_NOTA) AS WVLLIQ ';
             wSql2      := 'FROM NF0001 T1 LEFT JOIN CLI0000 T2 ON (T2.CLI_CODIGO = T1.CLI_CODIGO) JOIN OPE0000 T4 ON (T4.OPE_CODIGO = T1.OPE_CODIGO) ';
             wSql3      := 'GROUP BY T2.CLI_UF,T2.CLI_CIDADE ';
             wSeleciona := 'WHERE T1.NF_EMISSAO BETWEEN '''+DataAmericana(EditDataI.Text)+''' AND '''+DataAmericana(EditDataF.Text)+''' AND T1.OPE_SEMVLCOM = ''N'' AND T1.NF_CANCELADA = ''N''' +
                         ' AND T1.NF_STATUS_NFE IN ('+QuotedStr('A')+','+QuotedStr('O')+')';

             wOrdem     := ' ORDER BY T2.CLI_UF,T2.CLI_CIDADE';
             //
             if (rgEmpresaLogada.ItemIndex = 0) then
                wSeleciona := wSeleciona + ' AND T1.EMP_CODIGO='''+dbInicio.Empresa.EMP_CODIGO+'''';
             SqlCdsRelGer04.Close;
             SqlCdsRelGer04.CommandText := wSql1+wSql2+wSeleciona+wSql3+wOrdem;
             SqlCdsRelGer04.Open;
             if not CdsRelGer04.Active then
                CdsRelGer04.CreateDataSet;
             CdsRelGer04.EmptyDataSet;
             SqlCdsRelGer04.First;
             while not SqlCdsRelGer04.eof do
              begin
                  CdsRelGer04.Append;
                  CdsRelGer04CLI_UF.AsString             := SqlCdsRelGer04CLI_UF.AsString;
                  CdsRelGer04CLI_CIDADE.AsString         := SqlCdsRelGer04CLI_CIDADE.AsString;
                  CdsRelGer04QTDE_PEDIDOS.AsCurrency     := SqlCdsRelGer04WPEDIDOS.AsCurrency;
                  CdsRelGer04TOTAL_LIQ_VENDAS.AsCurrency := SqlCdsRelGer04WVLLIQ.AsCurrency;
                  try
                    wSql1      := 'SELECT SUM(T2.NF_QTDE) AS WQTDE_ITENS FROM NF0001 T1 LEFT JOIN NF_IT01 T2 ON (T2.NF_IT_NOTANUMER = T1.NF_NOTANUMBER AND T1.EMP_CODIGO = T2.EMP_CODIGO) ';
                    wSql2      := 'LEFT JOIN CLI0000 T3 ON (T3.CLI_CODIGO = T1.CLI_CODIGO) JOIN OPE0000 T4 ON (T4.OPE_CODIGO = T1.OPE_CODIGO) ';
                    wSeleciona := 'WHERE T1.NF_EMISSAO BETWEEN '''+DataAmericana(EditDataI.Text)+''' AND '''+DataAmericana(EditDataF.Text)+''' AND T1.OPE_SEMVLCOM = ''N'' AND T1.NF_CANCELADA = ''N'' AND T3.CLI_UF = '''+SqlCdsRelGer04CLI_UF.AsString+''' AND T3.CLI_CIDADE = '''+SqlCdsRelGer04CLI_CIDADE.AsString+''''+
                                  ' AND T1.NF_STATUS_NFE IN ('+QuotedStr('A')+','+QuotedStr('O')+')';
                    if (rgEmpresaLogada.ItemIndex = 0) then
                       wSeleciona := wSeleciona + ' AND T1.EMP_CODIGO = '''+dbInicio.Empresa.EMP_CODIGO+'''';
                    DataCadastros.sqlUpdate.close;
                    DataCadastros.SqlUpdate.sql.text :=wSql1+wSql2+wSeleciona;
                    DataCadastros.sqlUpdate.Open;
                    CdsRelGer04QTDE_ITENS.AsCurrency := DataCadastros.sqlUpdate.FieldByName('WQTDE_ITENS').AsCurrency;
                    CdsRelGer04.Post;
                  except on E:EDataBaseError do
                     uteis.erro  (pchar('Erro ao Calcular a quantidade de Itens ! '+e.message));
                  end;
                  SqlCdsRelGer04.Next;
              end;
           except on E:EdataBaseError do
               uteis.erro  (Pchar('Erro ao Abrir a tabela FAT0000 !'+e.Message));
           end;
           CdsRelGer04.First;
           {ATRIBUI O CABECALHO DO RELATORIO}
           LBL_04_LTITULO1.Caption := 'VENDAS REALIZADAS POR ESTADO';
           LBL_04_LTITULO2.Caption := 'Periódo de: '+EditDataI.Text+' Até '+EditDataF.Text;
           LBL_04_EMPRESA.Caption  := dbInicio.Empresa.RAZAO;
           {EXECUTA O RELATORIO}
           if RadVideo.checked  then
              begin
                  ppRelGer04.DeviceType := 'Screen';
              end;
           if RadImpressora.checked  then
              begin
                  ppRelGer04.DeviceType := 'Printer';
                  ppRelGer04.ShowPrintDialog := true;
              end;
           if RadText.checked  then
              begin
                  ppRelGer04.ShowPrintDialog := False;
                  ppRelGer04.DeviceType   := 'ReportTextFile';
                  ppRelGer04.TextFileName := FrmMenu.PathNewRel+'\RELGER04.TXT';
                  uteis.aviso(pchar('Relatório salvo na pasta : '+trim(FrmMenu.PathNewRel)+'\RELGER04.TXT'));
              end;
           ppRelGer04.Print;
           BitOk.Enabled := False;
           EditDataI.SetFocus;
       end;
    {5º Relatorio Vendas por Cliente}
    if TreeGerencial.Items.Item[5].Selected then
       Begin
           wSeleciona:= 'WHERE T1.NF_EMISSAO BETWEEN '''+DataAmericana(EditDataI.Text)+''' AND '''+DataAmericana(EditDataF.Text)+''' AND T1.OPE_SEMVLCOM = ''N'' AND T1.NF_CANCELADA = ''N'''+
                        ' AND T1.NF_STATUS_NFE IN ('+QuotedStr('A')+','+QuotedStr('O')+')';
           if EdtCli.Text <> '99999' then
              wSeleciona := wSeleciona + ' AND T1.CLI_CODIGO = '''+EdtCli.Text+'''';
           {EXECUTA O SQL}
           try
             wSql1 := 'SELECT T1.NF_NOTANUMBER,T1.CLI_CODIGO,T1.NF_TOT_NOTA,T1.NF_TOT_PROD,T1.NF_EMISSAO,T3.CLI_RAZAO,T3.CLI_CGC,T3.CLI_INSC,T3.CLI_ENDERE,T3.CLI_BAIRRO,';
             wSql2 := 'T3.CLI_CEP,T3.CLI_CIDADE,T3.CLI_UF,T3.CLI_FONE,T3.CLI_FAX,T3.CLI_EMAIL,T3.CLI_CONTATO,T3.CLI_FUNCONT FROM NF0001 T1 ';
             wSql3 := 'LEFT JOIN CLI0000 T3 ON (T3.CLI_CODIGO = T1.CLI_CODIGO) JOIN OPE0000 T4 ON (T4.OPE_CODIGO = T1.OPE_CODIGO)';
             wOrdem := 'T3.CLI_RAZAO,T1.NF_EMISSAO';
             SqlCdsRelGer05.Close;
             SqlCdsRelGer05.CommandText := SQLDEF(iif(rgEmpresaLogada.ItemIndex = 0,'EXCLUSIVA','NAOEXCLUSIVA'),wSql1+wSql2+wSql3,wSeleciona,wOrdem,'T1.');
             SqlCdsRelGer05.Open;
             // ADR
             // Clipboard.AsText := SqlCdsRelGer05.CommandText;

             if not CdsRelGer05.Active then
                CdsRelGer05.CreateDataSet;
             CdsRelGer05.EmptyDataSet;
             SqlCdsRelGer05.First;
             while not SqlCdsRelGer05.Eof do
              begin
                  CdsRelGer05.Append;
                  CdsRelGer05FAT_CODIGO.AsString    := SqlCdsRelGer05NF_NOTANUMBER.AsString;
                  CdsRelGer05FAT_VL_LIQ.AsCurrency  := SqlCdsRelGer05NF_TOT_PROD.AsCurrency;
                  CdsRelGer05FAT_VL_FAT.AsCurrency  := SqlCdsRelGer05NF_TOT_NOTA.AsCurrency;
                  CdsRelGer05FAT_DTEMIS.AsString    := SqlCdsRelGer05NF_EMISSAO.AsString;
                  CdsRelGer05CLI_CODIGO.AsString    := SqlCdsRelGer05CLI_CODIGO.AsString;
                  CdsRelGer05CLI_RAZAO.AsString     := SqlCdsRelGer05CLI_RAZAO.AsString;
                  CdsRelGer05CLI_CGC.AsString       := SqlCdsRelGer05CLI_CGC.AsString;
                  CdsRelGer05CLI_INSC.AsString      := SqlCdsRelGer05CLI_INSC.AsString;
                  CdsRelGer05CLI_ENDERE.AsString    := SqlCdsRelGer05CLI_ENDERE.AsString;
                  CdsRelGer05CLI_BAIRRO.AsString    := SqlCdsRelGer05CLI_BAIRRO.AsString;
                  CdsRelGer05CLI_CEP.AsString       := SqlCdsRelGer05CLI_CEP.AsString;
                  CdsRelGer05CLI_CIDADE.AsString    := SqlCdsRelGer05CLI_CIDADE.AsString;
                  CdsRelGer05CLI_UF.AsString        := SqlCdsRelGer05CLI_UF.AsString;
                  CdsRelGer05CLI_FONE.AsString      := SqlCdsRelGer05CLI_FONE.AsString;
                  CdsRelGer05CLI_FAX.AsString       := SqlCdsRelGer05CLI_FAX.AsString;
                  CdsRelGer05CLI_EMAIL.AsString     := SqlCdsRelGer05CLI_EMAIL.AsString;
                  CdsRelGer05CLI_CONTATO.AsString   := SqlCdsRelGer05CLI_CONTATO.AsString;
                  CdsRelGer05CLI_FUNCONT.AsString   := SqlCdsRelGer05CLI_FUNCONT.AsString;
                  try
                    wSql1      := 'SELECT SUM(T2.NF_QTDE) AS WQTDE_ITENS FROM NF0001 T1 LEFT JOIN NF_IT01 T2 ON (T2.NF_IT_NOTANUMER = T1.NF_NOTANUMBER AND T1.EMP_CODIGO = T2.EMP_CODIGO) JOIN OPE0000 T4 ON (T4.OPE_CODIGO = T1.OPE_CODIGO)';
                    wSeleciona:= 'WHERE T1.NF_EMISSAO BETWEEN '''+DataAmericana(EditDataI.Text)+''' AND '''+DataAmericana(EditDataF.Text)+''' AND T1.OPE_SEMVLCOM = ''N'' AND T1.NF_CANCELADA = ''N'' AND T2.NF_IT_NOTANUMER = '''+SqlCdsRelGer05NF_NOTANUMBER.AsString+''''+
                                 ' AND T1.NF_STATUS_NFE IN ('+QuotedStr('A')+','+QuotedStr('O')+')';
                    if (rgEmpresaLogada.ItemIndex = 0) then
                       wSeleciona := wSeleciona + ' AND T1.EMP_CODIGO = '''+dbInicio.Empresa.EMP_CODIGO+'''';

                    DataCadastros.sqlUpdate.close;
                    DataCadastros.SqlUpdate.sql.text :=wSql1+wSeleciona;
                    DataCadastros.sqlUpdate.Open;
                    CdsRelGer05QTDE_ITENS.AsCurrency := DataCadastros.sqlUpdate.FieldByName('WQTDE_ITENS').AsCurrency;
                    CdsRelGer05.Post;
                  except on E:EDataBaseError do
                     uteis.erro  (pchar('Erro ao Calcular a quantidade de Itens ! '+e.message));
                  end;
                  SqlCdsRelGer05.Next;
              end;
           except on E:EdataBaseError do
               uteis.erro  (Pchar('Erro ao Abrir a tabela FAT0000 !'+e.Message));
           end;
           CdsRelGer05.First;
           CdsRelGer05.IndexName := 'INDEX_RAZAO_EMISSAO';
           {ATRIBUI O CABECALHO DO RELATORIO}
           LBL_05_LTITULO1.Caption := 'RELATÓRIO DE VENDAS POR CLIENTE';
           LBL_05_LTITULO2.Caption := 'Cliente : '+EdtCli.Text+' - '+CbCliente.Text;
           LBL_05_LTITULO3.Caption := 'No periódo de: '+EditDataI.Text+' Até '+EditDataF.Text;
           LBL_05_EMPRESA.Caption  := dbInicio.Empresa.RAZAO;
           {EXECUTA O RELATORIO}
           if RadVideo.checked  then
              begin
                  ppRelGer05.DeviceType := 'Screen';
              end;
           if RadImpressora.checked  then
              begin
                  ppRelGer05.DeviceType := 'Printer';
                  ppRelGer05.ShowPrintDialog := true;
              end;

           RBuilderPreview(ppRelGer05);
           EdtCli.Text         := '99999';
           CbCliente.Text      := 'TODOS OS CLIENTES';
           CbCliente.ItemIndex := 0;
           CbTeste.ItemIndex   := 0;
           EditDataI.SetFocus;
       end;
    {6º Relatorio Vendas por Cliente - Margem de Contribuição}
    if TreeGerencial.Items.Item[6].Selected then
     Begin
         wSeleciona:= '';
         if EdtCli.Text <> '99999' then
            wSeleciona := wSeleciona + ' AND T1.CLI_CODIGO = '''+EdtCli.Text+'''';
         if (rgEmpresaLogada.ItemIndex = 0) then
            wSeleciona := wSeleciona + ' AND T1.EMP_CODIGO = '''+dbInicio.Empresa.EMP_CODIGO+'''';
         {EXECUTA O SQL}
           
           sFiltro := 'Periodo '+ EditDataI.Text+ ' até '+ EditDataF.Text;
           SqlCdsClienteMargemContrib.Close;
           SqlCdsClienteMargemContrib.CommandText := 'SELECT  '+
                                                     '    T1.cli_codigo,  '+
                                                     '    T2.cli_razao,  '+
                                                     '    t2.cli_cgc,  '+
                                                     '    CAST(count(t1.fat_registro) AS INTEGER) as QUANTIDADE, '+
                                                     '    SUM (CAST(T1.fat_vlfat AS numeric(18,2)))AS TOTAL_NOTA,  '+
                                                     '    SUM (CAST((T1.fat_vlfat * 100)/  '+
                                                     '    (SELECT   '+
                                                     '            sum ( T1.fat_vlfat)  '+
                                                     '        FROM FAT0000 T1  '+
                                                     '        left join cli0000 T2 on (T2.cli_codigo = T1.cli_codigo)  '+
                                                     '        WHERE T1.FAT_DTEMIS BETWEEN '''+DataAmericana(EditDataI.Text)+''' AND '''+DataAmericana(EditDataF.Text)+''' AND FAT_EXCLUSAO <> ''S'' '+wSeleciona+') AS numeric(18,2))) AS contribuicao  '+
                                                     'FROM FAT0000 T1  '+
                                                     'left join cli0000 T2 on (T2.cli_codigo= T1.cli_codigo)  '+
                                                     'WHERE T1.FAT_DTEMIS BETWEEN '''+DataAmericana(EditDataI.Text)+''' AND '''+DataAmericana(EditDataF.Text)+''' AND FAT_EXCLUSAO <> ''S''  '+wSeleciona+''+
                                                     'GROUP BY  '+
                                                     'T1.cli_codigo,t2.cli_cgc,   '+
                                                     '    T2.cli_razao order by 5 desc ';
           SqlCdsClienteMargemContrib.Open;

           frxClienteMargemContrib.ShowReport();

         EditDataI.SetFocus;
     end;

       ///verificar para baixo
    {Relatório de Produto Vendidos no Periodo (Margem Contribuição)}
    if (TreeGerencial.Items.Item[9].Selected)
    or(TreeGerencial.Items.Item[10].Selected)
    or(TreeGerencial.Items.Item[11].Selected) then
       begin
           wTotalBruto := 0;
//           wSeleciona := 'WHERE T1.FAT_DTEMIS BETWEEN '''+DataAmericana(EditDataI.Text)+''' AND '''+DataAmericana(EditDataF.Text)+''' AND T1.FAT_EXCLUSAO = ''N''';
           wSeleciona := 'WHERE T1.NF_EMISSAO BETWEEN '''+DataAmericana(EditDataI.Text)+''' AND '''+DataAmericana(EditDataF.Text)+''' AND T1.OPE_SEMVLCOM = ''N'' AND T1.NF_CANCELADA = ''N''' +
                         ' AND T1.NF_STATUS_NFE IN ('+QuotedStr('A')+','+QuotedStr('O')+')';
           LBL_TMP_LTITULO3.Caption := 'Periodo de: '+EditDataI.Text+' A '+EditDataF.Text;
           try
             if TreeGerencial.Items.Item[9].Selected then  // todos
                begin
                    LBL_TMP_LTITULO2.Caption := 'Todos os Produtos vendidos';
                end;
             if TreeGerencial.Items.Item[10].Selected then  // todos
                begin
                    LBL_TMP_LTITULO2.Caption := 'Produtos que participam da Tabela de Preço';
                    wSeleciona := wSeleciona + ' AND T3.PRD_TABPRECO = ''S''';
                end;
             if TreeGerencial.Items.Item[11].Selected then  // todos
                begin
                    LBL_TMP_LTITULO2.Caption := 'Produtos da Linha : '+EdtLin.Text+' - '+CbPrdLinha.Text;
                    if EdtLin.text <> '999' then
                       wSeleciona := wSeleciona + 'AND T3.LIN_CODIGO = '''+EdtLin.Text+''''
                    else
                       wSeleciona := wSeleciona + '';
                end;
{
             wSql1 := 'SELECT T1.FAT_CODIGO,T1.FAT_DTEMIS,T2.PRD_REFER,T3.PRD_DESCRI,T3.PRD_TABPRECO,T3.LIN_CODIGO,COALESCE(T3.PRD_PMATPRI,0) AS PRD_PMATPRI,COALESCE(T2.NF_QTDE,0) AS NF_QTDE,';
             wSql2 := 'COALESCE(T2.NF_PRECO,0) AS NF_PRECO,COALESCE(T2.NF_PMATPRIMA,0) AS NF_PMATPRIMA,COALESCE(T2.NF_IPIALIQ,0) AS NF_IPIALIQ,COALESCE(T2.NF_VLSUBST,0) AS NF_VLSUBST FROM FAT0000 T1 ';
             wSql3 := 'LEFT JOIN NF_IT01 T2 ON (T2.NF_IT_NOTANUMER = T1.FAT_CODIGO AND T1.EMP_CODIGO = T2.EMP_CODIGO AND T2.NF_FLAG_ATUALIZA_ESTOQUE = ''S'') LEFT JOIN PRD0000 T3 ON (T3.PRD_REFER = T2.PRD_REFER) ';
}
             wSql1 := 'SELECT T1.NF_NOTANUMBER,T1.NF_VL_DESCTO,T2.PRD_REFER,T3.PRD_DESCRI,T2.NF_FLAG_ATUALIZA_ESTOQUE,CAST(((T2.NF_QTDE * T2.NF_PRECO)) AS NUMERIC(15,4)) AS CTOTAL,COALESCE(T2.NF_PRECO,0) AS NF_PRECO,';
             wSql2 := 'COALESCE(T2.NF_QTDE,0) AS NF_QTDE,COALESCE(T3.PRD_PMATPRI,0) AS PRD_PMATPRI,COALESCE(T2.NF_PMATPRIMA,0) AS NF_PMATPRIMA,COALESCE(T2.NF_IPIALIQ,0) AS NF_IPIALIQ,COALESCE(T2.NF_VLSUBST,0) AS NF_VLSUBST,T1.OPE_SEMVLCOM,';
             wSql3 := 'CAST(T3.PRD_PCUSTO AS NUMERIC(15,4)) AS CUSTO,CAST((T2.NF_QTDE * T3.PRD_PCUSTO) AS NUMERIC(15,4)) AS CUSTO_TOTAL FROM NF0001 T1 LEFT JOIN NF_IT01 T2 ON (T2.NF_IT_NOTANUMER = T1.NF_NOTANUMBER '+
                      ' AND T1.EMP_CODIGO = T2.EMP_CODIGO) JOIN PRD0000 T3 ON (T3.PRD_REFER = T2.PRD_REFER    '+IIF(Share('PRODUTOS') = 'C','','AND T3.EMP_CODIGO = T2.EMP_CODIGO') +'      ) '+
                      'JOIN OPE0000 T4 ON (T4.OPE_CODIGO = T1.OPE_CODIGO) ';
             //
             SqlCdsRel080910.Close;
             SqlCdsRel080910.CommandText := SQLDEF(iif(rgEmpresaLogada.ItemIndex = 0,'EXCLUSIVA','NAOEXCLUSIVA'),wSql1+wSql2+wSql3,wSeleciona,'T3.PRD_REFER','T1.');
             SqlCdsRel080910.Open;
             iQtdeReg := SqlCdsRel080910.RecordCount;
             if not CdsRel080910.Active then
                CdsRel080910.CreateDataSet;
             {limpar arquivo}
             CdsRel080910.EmptyDataSet;
             if SqlCdsRel080910.IsEmpty = false then
                begin
                    {Zerar as variaves}
                    wTotqtde   := 0;
                    wTot_liq   := 0;
                    wTot_bruto := 0;
                    wPmatPrima := 0;
                    SqlCdsRel080910.First;
                    {antes somar qtde e valor total p/ gravar percentuais}
                    while not SqlCdsRel080910.Eof do
                     begin
//                               wTotal    := (SqlCdsRel080910NF_QTDE.AsCurrency * SqlCdsRel080910NF_PRECO.AsCurrency);
                         wTotal    := SqlCdsRel080910CTOTAL.AsCurrency;
                         //if (SqlCdsRel080910NF_FLAG_ATUALIZA_ESTOQUE.AsString = 'S') then
                         //   begin
                               wTotqtde  := wTotqtde   + SqlCdsRel080910NF_QTDE.AsCurrency;
                         //   end;
                         wTot_liq  := wTot_liq   + wTotal;
                         wTot_bruto:= wTot_bruto + (wTotal+(wTotal*SqlCdsRel080910NF_IPIALIQ.AsCurrency/100)+SqlCdsRel080910NF_VLSUBST.AsCurrency);
                         SqlCdsRel080910.Next;
                     end;
                    SqlCdsRel080910.First;
                    while not SqlCdsRel080910.Eof do
                     begin
                         {Zerar as variaveis}
                         wqtde       := 0;
                         wvalor_liq  := 0;
                         wvalor_bruto:= 0;
                         wPmatPrima  := 0;
                         uCustoTmp   := 0;
                         {Gravar no arquivo temporario CdSREL080910}
                         wrefer  := SqlCdsRel080910PRD_REFER.AsString;
                         wDescri := SqlCdsRel080910PRD_DESCRI.AsString;
                         while (SqlCdsRel080910PRD_REFER.AsString=wRefer)and not SqlCdsRel080910.Eof do
                          begin

                             wqtde         := wqtde + SqlCdsRel080910NF_QTDE.AsCurrency;

//                                   wTotal        := (SqlCdsRel080910NF_QTDE.AsCurrency * SqlCdsRel080910NF_PRECO.AsCurrency);
                             wTotal        := SqlCdsRel080910CTOTAL.AsCurrency;
                             uCustoTmp     := SqlCdsRel080910CUSTO.AsFloat;
                             wPmatPrima    := wPmatPrima + (SqlCdsRel080910NF_QTDE.AsCurrency * SqlCdsRel080910NF_PMATPRIMA.AsCurrency);
                             wValor_liq    := wValor_liq+wTotal;
                             wValor_bruto  := wValor_bruto+(wTotal+(wTotal*SqlCdsRel080910NF_IPIALIQ.AsCurrency/100)+SqlCdsRel080910NF_VLSUBST.AsCurrency);
                             SqlCdsRel080910.Next;
                          end;
                         if (Trim(wRefer) <> '') then
                            begin
                                CdsRel080910.Append;
                                CdsRel080910CUSTO.AsFloat            := uCustoTmp;
                                CdsRel080910CUSTO_TOTAL.AsFloat      := wQtde * uCustoTmp;
                                CdsRel080910PRD_REFER.AsString       := wRefer;
                                CdsRel080910PRD_DESCRI.AsString      := wDescri;
                                CdsRel080910PRD_PMATPRIMA.AsCurrency:= wPmatPrima;
                                CdsRel080910FTI_QTDE.AsCurrency     := wQtde;
                                CdsRel080910FTI_VALOR.AsCurrency    := wValor_Liq;
                                CdsRel080910FTI_VL_BRUTO.AsCurrency := wValor_bruto;
                                CdsRel080910PER_QTDE.AsCurrency     := (wQtde/wTotqtde)*100;
                                CdsRel080910PER_VL_BRUTO.AsCurrency := (wValor_Bruto/wTot_Bruto)*100;
                                CdsRel080910.Post;
                            end;
                     end;
                end;
             try
               CdsRel080910.First;
               LBL_TMP_EMPRESA.Caption := dbInicio.Empresa.RAZAO;
               LBL_TMP_LTITULO1.Caption:= 'PRODUTOS VENDIDOS NO PERÍODO - Margem de Contribuição - [Total Bruto X Total Geral]';
               if RadVideo.checked  then
                  begin
                      ppRel080910.DeviceType := 'Screen';
                  end;
               if RadImpressora.checked  then
                  begin
                      ppRel080910.DeviceType := 'Printer';
                      ppRel080910.ShowPrintDialog := true;
                  end;

               RBuilderPreview(ppRel080910);
             Finally
               CdsRel080910.Close;
             end;
           except on E:EDataBaseError do
             uteis.erro  (pchar('Erro ao gerar o relatório ! '+e.message));
           end;
       end;
    // Setimo rel. Controle Financeiro de contas
    if TreeGerencial.Items.Item[14].Selected then
       begin
           if not CdsTmp.Active then
              CdsTmp.CreateDataSet;
           {limpar arquivo}
           CdsTmp.EmptyDataSet;
           {Abre a tabela Contas a Receber}
           wSql1 := ' Select F1.FPC_VENCTO,SUM(F1.FPC_VLPAGO) AS WRECEBIDO,SUM(F1.fpc_vlparc-F1.FPC_VLPAGO) AS WRECEBER FROM  FAT_PC01 F1 ';
           wSql2 := ' GROUP BY F1.FPC_VENCTO ';
           wOrdem:= ' ORDER BY F1.FPC_VENCTO ';
           wSeleciona:= 'WHERE F1.FPC_VENCTO BETWEEN '''+DataAmericana(EditDataI.Text)+''' AND '''+DataAmericana(EditDataF.Text)+ ''' AND F1.FPC_EXCLUSAO = ''N''';
           if (rgEmpresaLogada.ItemIndex = 0) then
              wSeleciona := wSeleciona + ' AND F1.EMP_CODIGO = '''+dbInicio.Empresa.EMP_CODIGO+'''';
           try
             SqlCdsReceber.Close;
             SqlCdsReceber.CommandText := wSql1 + wSeleciona + wSql2 + wOrdem;
             SqlCdsReceber.Open;
             SqlCdsReceber.First;
             while not SqlCdsReceber.Eof do
              begin
                  CdsTmp.Append;
                  CdsTmpTmp_vencto.AsDateTime   := SqlCdsReceberFPC_VENCTO.AsDateTime;
                  CdsTmpTmp_Recebido.AsCurrency := SqlCdsReceberWRECEBIDO.AsCurrency;
                  CdsTmpTmp_Receber.AsCurrency  := SqlCdsReceberWRECEBER.AsCurrency;
                  CdsTmpTmp_Pago.AsCurrency     := 0;
                  CdsTmpTmp_pagar.AsCurrency    := 0;
                  CdsTmp.Post;
                  SqlCdsReceber.Next;
              end;
             SqlCdsReceber.Close;
             {Abre a tabela Contas a Receber}
             wSql1 := 'Select P1.PPC_VENCTO,SUM(P1.PPC_VLPAGO) AS WPAGO,SUM(P1.PPC_VLPARC-P1.PPC_VLPAGO) AS WPAGAR FROM PAG_PC01 P1 ';
             wSql2 := 'GROUP BY P1.PPC_VENCTO ';
             wOrdem:= 'ORDER BY P1.PPC_VENCTO ';
             wSeleciona:= 'WHERE P1.PPC_VENCTO BETWEEN '''+DataAmericana(EditDataI.Text)+''' AND '''+DataAmericana(EditDataF.Text)+ ''' AND P1.PPC_EXCLUSAO = ''N''';
             if (rgEmpresaLogada.ItemIndex = 0) then
                wSeleciona := wSeleciona + ' AND P1.EMP_CODIGO = '''+dbInicio.Empresa.EMP_CODIGO+'''';
             SqlCdsPagar.Close;
             SqlCdsPagar.CommandText := wSql1 + wSeleciona + wSql2 + wOrdem;
             SqlCdsPagar.Open;
             SqlCdsPagar.First;
             while not SqlCdsPagar.Eof do
              begin
                  if (CdsTmp.Locate('TMP_VENCTO',SqlCdsPagarPPC_VENCTO.Text,[]) = true) then
                     CdsTmp.Edit
                  else
                     begin
                         CdsTmp.Append;
                         CdsTmpTmp_Recebido.AsCurrency := 0;
                         CdsTmpTmp_Receber.AsCurrency  := 0;
                         CdsTmpTmp_vencto.AsDateTime   := SqlCdsPagarPPC_VENCTO.AsDateTime;
                     end;
                  CdsTmpTmp_Pago.AsCurrency   := SqlCdsPagarWPAGO.AsCurrency;
                  CdsTmpTmp_pagar.AsCurrency  := SqlCdsPagarWPAGAR.AsCurrency;
                  CdsTmp.Post;
                  SqlCdsPagar.Next;
              end;
             CdsTmp.First;
             try
               LBL_13_EMPRESA.Caption := dbInicio.Empresa.RAZAO;
               LBL_13_TITULO1.Caption := 'CONTROLE FINANCEIRO DIÁRIO DE CONTAS À RECEBER E PAGAR';
               LBL_13_TITULO2.Caption := 'Periódo de: '+EditDataI.Text+' Até '+EditDataF.Text;
               if RadVideo.checked  then
                  begin
                      ppRelAdm0013.DeviceType := 'Screen';
                  end;
               if RadImpressora.checked  then
                  begin
                      ppRelAdm0013.DeviceType := 'Printer';
                      ppRelAdm0013.ShowPrintDialog := true;
                  end;
               if RadText.checked  then
                  begin
                      ppRelAdm0013.ShowPrintDialog := False;
                      ppRelAdm0013.DeviceType   := 'ReportTextFile';
                      ppRelAdm0013.TextFileName := FrmMenu.PathNewRel+'\ReceberPagar.TXT';
                      uteis.aviso(pchar('Relatório salvo na pasta : '+trim(FrmMenu.PathNewRel)+'\ReceberPagar.TXT'));
                  end;
               ppRelAdm0013.Print;
             Finally
               CdsTmp.Close;
             end;
           except on E:EDataBaseError do
              uteis.erro  (pchar('Erro ao carregar a tabela temporária ! '+e.message));
           end;
       end;
    {RELATÓRIO DE LIQUIDEZ}
    if TreeGerencial.Items.Item[16].Selected then
     Begin
         CriaRelLiquidez;
         screen.cursor := crDefault;
         Exit;
     End;
    {'Plana de contas - por emissão'}
     {'Plano de contas - por vencimento'-18}
    if (TreeGerencial.Items.Item[17].Selected) or
       (TreeGerencial.Items.Item[18].Selected) then
     Begin
       wSql1 :=
              ' SELECT CC.CCT_NIVEL,CC.CCT_DESCRI,CC.CCT_CODIGO, '+
              '  (SELECT SUM(COALESCE(FPC_VLPARC,0) -COALESCE(FPC_DESCTO,0)+  '+
              '         COALESCE(FPC_JUROS,0)+COALESCE(FPC_MULTA,0)- COALESCE(FPC_VLPAGO,0)) AS RECEITA  '+
              '  FROM FAT_PC01 f1 JOIN CCT_0000 C1 ON (C1.CCT_CODIGO = F1.CCT_CODIGO)  '+
              '  WHERE  C1.CCT_NIVEL STARTING WITH CC.CCT_NIVEL                         '+
              IIF(TreeGerencial.Items.Item[17].Selected,
              ' AND FPC_DTEMIS BETWEEN '+QuotedStr(DataAmericana(EditDataI.Text))+' AND '+QuotedStr(DataAmericana(EditDataF.Text)),
              ' AND FPC_VENCTO BETWEEN '+QuotedStr(DataAmericana(EditDataI.Text))+' AND '+QuotedStr(DataAmericana(EditDataF.Text)))+
              iif( Share('RECEBER')= 'E', ' AND F1.EMP_CODIGO = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO),'')+
              '  AND FPC_EXCLUSAO = ''N''                                                 '+
              '  AND FPC_STATUS <> ''Cancelada''),                                        '+

              '   (SELECT SUM(COALESCE(P1.PPC_VLPARC,0) - COALESCE(PPC_DESCTO,0) +      '+
              '               COALESCE(PPC_JUROS,0) + COALESCE(PPC_MULTA,0) - COALESCE(P1.PPC_VLPAGO,0)) AS DESPESAS  '+
              '     FROM PAG_PC01 P1 JOIN CCT_0000 C1 ON (C1.CCT_CODIGO = P1.CCT_CODIGO)                               '+
              '     WHERE  C1.CCT_NIVEL STARTING WITH CC.CCT_NIVEL                                                     '+
              IIF(TreeGerencial.Items.Item[17].Selected,
              ' AND PPC_DTEMIS BETWEEN '+QuotedStr(DataAmericana(EditDataI.Text))+' AND '+QuotedStr(DataAmericana(EditDataF.Text)),
              '  AND P1.PPC_VENCTO BETWEEN '+QuotedStr(DataAmericana(EditDataI.Text))+' AND '+QuotedStr(DataAmericana(EditDataF.Text)))+
              iif( Share('PAGAR')= 'E', ' AND P1.EMP_CODIGO = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO),'')+
              '     AND PPC_EXCLUSAO = ''N'')                                                                          '+
              ' FROM CCT_0000 CC                                                                                       '+
              ' GROUP BY CC.CCT_NIVEL,CC.CCT_DESCRI,CC.CCT_CODIGO                                                      '+
              ' ORDER BY CC.CCT_NIVEL ' ;


       LBL_45_EMPRESA.Caption  := dbInicio.Empresa.RAZAO;
       if TreeGerencial.Items.Item[17].Selected then
         LBL_45_LTITULO1.Caption := 'Plano de contas - por  emissão'
       else
         LBL_45_LTITULO1.Caption := 'Plano de contas - por vencimento';
       LBL_45_LTITULO2.Caption :=  'Período : '+EditDataI.Text+' até '+EditDataF.Text;
       SqlCdsContas.Close;
       SqlCdsContas.CommandText := wSql1 ;
       SqlCdsContas.Open;
       SqlCdsContas.Filtered :=false;
       SqlCdsContas.Filter := 'receita >0 or despesas>0';
       SqlCdsContas.Filtered :=true;
       SqlCdsContas.First;
       despesa := 0 ;
       receita := 0 ;
       while not SqlCdsContas.eof do
       begin
         if IsNum(SqlCdsContasCCT_NIVEL.AsString) then
         begin
            despesa := despesa+ SqlCdsContasDESPESAS.AsFloat;
            receita := receita + sqlCdsContasRECEITA.AsFloat;
         end;
         SqlCdsContas.Next
       end;

       SqlCdsContas.First;
        if RadVideo.checked  then
        begin
            ppRelPlano.DeviceType := 'Screen';
        end;
        if RadImpressora.checked  then
        begin
            ppRelPlano.DeviceType := 'Printer';
            ppRelPlano.ShowPrintDialog := true;
        end;
       if RadText.checked  then
       begin
          ppRelPlano.ShowPrintDialog := False;
          ppRelPlano.DeviceType   := 'ReportTextFile';
          ppRelPlano.TextFileName := FrmMenu.PathNewRel+'\PlanodeContas.txt';
          uteis.aviso(pchar('Relatório salvo na pasta : '+trim(FrmMenu.PathNewRel)+'\PlanodeContas.txt'));
       end;
       RBuilderPreview( ppRelPlano );

     End;

    screen.cursor := crDefault;
    TreeGerencial.SetFocus;

end;// end da procedure

procedure TFormGImpRelAdm.BitSairClick(Sender: tObject);
begin
    close;
end;

procedure TFormGImpRelAdm.BitConfigClick(Sender: tObject);
begin
    PrinterRelatorios.Execute;
end;

//********* procedure para calculo da contas Receber e Pagar *********
procedure TFormGImpRelAdm.receitatotalGetText(Sender: TObject; var Text: string);
begin
  text := FormatFloat('#,##0.00',receita);
end;

procedure TFormGImpRelAdm.resultadoGetText(Sender: TObject; var Text: string);
begin
  if (receita >0) and (despesa>0) then
     text := FormatFloat('#,##0.00',(receita-despesa))
end;

procedure TFormGImpRelAdm.EditDataIExit(Sender: tObject);
begin
    if not TestaDataStr(EditDataI.Text) then
        EditDataI.setfocus;
end;

procedure TFormGImpRelAdm.EditDataFExit(Sender: tObject);
begin
    if not TestaDataStr(EditDataF.Text) then
       EditDataF.setfocus;
end;

procedure TFormGImpRelAdm.EditDataIEnter(Sender: tObject);
begin
    EditDataI.SelectAll;
end;

procedure TFormGImpRelAdm.EditDataFEnter(Sender: tObject);
begin
    EditDataF.SelectAll;
end;

procedure TFormGImpRelAdm.TreeGerencialClick(Sender: tObject);
begin
    BitOk.Enabled := True;
    CarregaComboBox;
    // vendas Representantes: Gerente e Supervisor
    if TreeGerencial.Items.Item[3].Selected then
       begin
           PanTodos.Visible    := True;
           PanClie.Visible     := False;
           PanLinha.Visible    := False;
           PanRep.Visible      := True;
       end
    else
       begin
           // vendas clientes: mostrar combo
           if TreeGerencial.Items.Item[5].Selected then
              begin
                  PanTodos.Visible    := True;
                  PanClie.Visible     := True;
                  PanLinha.Visible    := False;
                  PanRep.Visible      := False;
              end
           else
              // margem de contribuicao por Segmento/linha : mostrar combo
              if TreeGerencial.Items.Item[11].Selected then
                 begin
                     PanTodos.Visible    := True;
                     PanClie.Visible     := False;
                     PanLinha.Visible    := True;
                     PanRep.Visible      := False;
                 end
              else
                 begin
                     PanTodos.Visible    := False;
                     PanClie.Visible     := False;
                     PanLinha.Visible    := False;
                     PanRep.Visible      := False;
                 end;
       end;
end;

procedure TFormGImpRelAdm.CbRepresentClick(Sender: tObject);
begin
    if (ActiveControl.Name = 'EdtRep') and (PanRep.Visible=true)or
       (ActiveControl.Name = 'TreeGerencial')or
       (ActiveControl.Name = 'BitSair') then
       exit;
    if (CbRepresent.ItemIndex <> 0) then
       begin
           if SqlCdsRepresentantes.Locate('REP_NOME',CbRepresent.Text,[]) = true then
              begin
                  EdtRep.Text := SqlCdsRepresentantesREP_CODIGO.AsString;
              end
           else
              begin
                  if RadGer.checked  then
                     uteis.aviso('Gerente não encontrado !')
                  else
                     uteis.aviso('Supervisor não encontrado !');
                  CbRepresent.SetFocus;
                  CbRepresent.SelectAll;
              end;
       end
    else
       begin
           EdtRep.Text           := '999';
           CbRepresent.ItemIndex := 0;
       end;
end;

procedure TFormGImpRelAdm.pp02HeaderBand1BeforePrint(Sender: tObject);
begin
    LBL_02_EMPRESA.Caption := dbInicio.Empresa.Razao;
end;

procedure TFormGImpRelAdm.ppSystemVariable13GetText(Sender: TObject; var Text: string);
begin
    Text := FormatDateTime('dd/MM/yyyy HH:nn',now);
end;

procedure TFormGImpRelAdm.ppSystemVariable14GetText(Sender: TObject; var Text: string);
begin
  Text := StringReplace(text,'of','de',[]);
end;

procedure TFormGImpRelAdm.ppSystemVariable7GetText(Sender: TObject; var Text: string);
begin
  Text := FormatDateTime('dd/MM/yyyy HH:nn',now);
end;

procedure TFormGImpRelAdm.RadGerClick(Sender: tObject);
begin
    CarregaComboBox;
    EdtRep.SetFocus;
    EdtRep.SelectAll;
end;

procedure TFormGImpRelAdm.CdsTmpCalcFields(DataSet: TDataSet);
begin
    CdsTmpTmp_AB_CC.AsCurrency   := CdsTmpTmp_AB_CC.AsCurrency  + (CdsTmpTmp_Recebido.AsCurrency + CdsTmpTmp_Receber.AsCurrency);
    CdsTmpTmp_Cd_CC.AsCurrency   := CdsTmpTmp_Cd_CC.AsCurrency  + (CdsTmpTmp_Pago.AsCurrency + CdsTmpTmp_pagar.AsCurrency);
    CdsTmpTmp_AC_CC.AsCurrency   := CdsTmpTmp_AC_CC.AsCurrency  + (CdsTmpTmp_Recebido.AsCurrency - CdsTmpTmp_Pago.AsCurrency);
    CdsTmpTmp_ABCd_CC.AsCurrency := (CdsTmpTmp_AB_CC.AsCurrency - CdsTmpTmp_Cd_CC.AsCurrency);
end;

procedure TFormGImpRelAdm.CarregaComboBox;
Var
  wTpRep : String;
begin
    if TreeGerencial.Items.Item[3].Selected then
       begin
           if (RadGer.checked ) then
              begin
                  wTpRep := 'G';
              end;
           if (RadSup.checked ) then
              begin
                  wTpRep := 'S';
              end;
           CbRepresent.Items.Clear;
           screen.cursor := crHourGlass;
           try
             SqlCdsRepresentantes.Close;
             SqlCdsRepresentantes.CommandText := SQLDEF('REPRESENTANTES','SELECT R1.REP_CODIGO,R1.REP_NOME,R1.REP_TIPO,R1.REP_SUPERVISAO,R1.REP_GERENTE,R1.REP_FUNCAO,R1.EMP_CODIGO FROM REP0000 R1','WHERE R1.REP_FUNCAO='''+wTpRep+'''','R1.REP_NOME','R1.');
             SqlCdsRepresentantes.Open;
             SqlCdsRepresentantes.First;
             if (RadGer.checked ) then
                CbRepresent.Items.Add('TODOS OS GERENTES')
             else
                CbRepresent.Items.Add('TODOS OS SUPERVISORES');
             while not SqlCdsRepresentantes.Eof do
               begin
                   CbRepresent.Items.Add(SqlCdsRepresentantesREP_NOME.AsString);
                   SqlCdsRepresentantes.Next;
               end;
             EdtRep.Text           := '999';
             CbRepresent.ItemIndex := 0;
           except on E:EDataBaseError do
               uteis.erro  (Pchar('Erro ao Abrir a Tabela de Representantes !'+e.message));
           end;
           screen.cursor := crDefault;
       end;
end;

procedure TFormGImpRelAdm.EdtRepClick(Sender: tObject);
begin
    EdtRep.SelectAll;
end;

procedure TFormGImpRelAdm.EdtRepExit(Sender: tObject);
begin
    EdtRep.Text := StrZero(EdtRep.Text,EdtRep.MaxLength);
    if EdtRep.Text <> '999' then
       begin
           if SqlCdsRepresentantes.Locate('REP_CODIGO',EdtRep.Text,[])=True then
              begin
                  CbRepresent.Text := SqlCdsRepresentantesREP_NOME.AsString;
              end
           else
              begin
                  if RadGer.checked  then
                     begin
                         uteis.aviso('Gerente não encontrado !');
                         wRepr := 'TODOS OS GERENTES';
                     end
                  else
                     begin
                         uteis.aviso('Supervisor não encontrado !');
                         wRepr := 'TODOS OS SUPERVISORES';
                     end;
                  EdtRep.Text      := '999';
                  CbRepresent.Text := wRepr;
                  EdtRep.SetFocus;
                  EdtRep.SelectAll;
              end;
       end
    else
       begin
           EdtRep.Text           := '999';
           CbRepresent.ItemIndex := 0;
       end;
end;

procedure TFormGImpRelAdm.CbRepresentEnter(Sender: tObject);
begin
    CbRepresent.SelectAll;
end;

procedure TFormGImpRelAdm.CbRepresentExit(Sender: tObject);
begin
    if (ActiveControl.Name='EdtRep')and(PanRep.Visible=true) or
       (ActiveControl.Name='BitSair') then
       exit;
    if RadGer.checked  then
       wRepr := 'TODOS OS GERENTES'
    else
       wRepr := 'TODOS OS SUPERVISORES';
    if (CbRepresent.Text <> wRepr) then
       begin
           if SqlCdsRepresentantes.Locate('REP_NOME',CbRepresent.Text,[])= true then
              begin
                  EdtRep.Text := SqlCdsRepresentantesREP_CODIGO.AsString;
              end
           else
              begin
                  if RadGer.checked  then
                     uteis.aviso('Gerente não encontrado !')
                  else
                     uteis.aviso('Supervisor não encontrado !');
                  EdtRep.Text      := '999';
                  CbRepresent.Text := wRepr;
                  CbRepresent.SetFocus;
                  CbRepresent.SelectAll;
              end;
       end
    else
       begin
           EdtRep.Text := '999';
           CbRepresent.Text := wRepr;
       end;
end;

procedure TFormGImpRelAdm.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
    //CLOSE;
    Action := CaFree;
end;

procedure TFormGImpRelAdm.FormDestroy(Sender: TObject);
begin
     FormGImpRelAdm := Nil;
end;

procedure TFormGImpRelAdm.FormResize(Sender: TObject);
begin
  Height := 469;
  Width := 680;
end;

procedure TFormGImpRelAdm.CbClienteChange(Sender: tObject);
begin
    CbTeste.ItemIndex := CbCliente.ItemIndex;
    wCodCliente       := Copy(CbTeste.Text,0,5);
    wAchouCli := false;
    if SqlCdsClientes.Locate('CLI_CODIGO',wCodCliente,[])= true then
       begin
           EdtCli.Text       := SqlCdsClientesCLI_CODIGO.AsString;
           CbTeste.ItemIndex := CbCliente.ItemIndex;
       end
    else
       begin
           EdtCli.Text    := '99999';
           CbCliente.Text := 'TODOS OS CLIENTES';
           CbCliente.SelectAll;
       end;
end;

procedure TFormGImpRelAdm.EdtCliClick(Sender: tObject);
begin
    EdtCli.SelectAll;
end;

procedure TFormGImpRelAdm.EdtCliExit(Sender: tObject);
begin
    EdtCli.Text := StrZero(EdtCli.Text,EdtCli.MaxLength);
    if EdtCli.Text <> '99999' then
       begin
           if SqlCdsClientes.Locate('CLI_CODIGO',EdtCli.Text,[])=True then
              begin
                  wAchouCli      := true;
                  CbCliente.Text := SqlCdsClientesCLI_RAZAO.AsString;
              end
           else
              begin
                  uteis.aviso('Cliente não encontrado !');
                  EdtCli.Text    := '99999';
                  CbCliente.Text := 'TODOS OS CLIENTES';
                  EdtCli.SetFocus;
                  EdtCli.SelectAll;
              end;
       end
    else
       begin
           EdtCli.Text    := '99999';
           CbCliente.Text := 'TODOS OS CLIENTES';
       end;
end;

procedure TFormGImpRelAdm.CbClienteExit(Sender: tObject);
begin
    if (ActiveControl.Name='EdtCli') and (PanClie.Visible = true) or
       (ActiveControl.Name='BitSair') or
       (ActiveControl.Name='TreeGerencial') then
       exit;
    if (EdtCli.Text <> '99999') then
       begin
           if wAchouCli = False then
              begin
                  CbTeste.ItemIndex := cbCliente.ItemIndex;
                  wCodCliente       := Copy(CbTeste.Text,0,5);
                  if SqlCdsClientes.Locate('CLI_CODIGO',wCodCliente,[])= true then
                     begin
                         EdtCli.Text       := SqlCdsClientesCLI_CODIGO.AsString;
                         CbTeste.ItemIndex := CbCliente.ItemIndex;
                     end
                  else
                     begin
                         uteis.aviso('Cliente não encontrado !');
                         EdtCli.Text         := '99999';
                         CbCliente.Text      := 'TODOS OS CLIENTES';
                         CbTeste.ItemIndex   := 0;
                         CbCliente.ItemIndex := 0;
                         CbCliente.SetFocus;
                         CbCliente.SelectAll;
                     end;
              end;
       end
    else
       begin
           EdtCli.Text         := '99999';
           CbCliente.Text      := 'TODOS OS CLIENTES';
           CbTeste.ItemIndex   := 0;
           CbCliente.ItemIndex := 0;
       end;
end;

procedure TFormGImpRelAdm.CbPrdLinhaSelect(Sender: TObject);
begin
     EdtLin.Text := CbPrdLinha.idRetorno;
end;

procedure TFormGImpRelAdm.EdtLinExit(Sender: TObject);
begin
    EdtLin.Text := StrZero(EdtLin.Text,EdtLin.MaxLength);
    CbPrdLinha.idRetorno := EdtLin.Text;
end;

procedure TFormGImpRelAdm.CdsRel080910CalcFields(DataSet: TDataSet);
begin
    if CdsRel080910FTI_VL_BRUTO.AsCurrency>0 then
       CdsRel080910PER_MATPRIMA_CC.AsCurrency := (CdsRel080910PRD_PMATPRIMA.AsCurrency)/(CdsRel080910FTI_VL_BRUTO.AsCurrency)*100;
//       CdsRel080910PER_MATPRIMA_CC.AsCurrency := (CdsRel080910FTI_QTDE.AsCurrency * CdsRel080910PRD_PMATPRIMA.AsCurrency)/(CdsRel080910FTI_VL_BRUTO.AsCurrency)*100;

end;

procedure TFormGImpRelAdm.CbClienteClick(Sender: tObject);
begin
    if CbCliente.Text <> '' then
       begin
           if SqlCdsClientes.Locate('CLI_RAZAO',CbCliente.Text,[])= false then
              begin
                  uteis.aviso('Cliente não cadastrado !');
                  CbCliente.SetFocus;
              end
           else
              begin
                  wAchouCli   := true;
                  EdtCli.Text := SqlCdsClientesCLI_CODIGO.AsString;
              end;
       end;
end;

procedure TFormGImpRelAdm.SqlRelLiquidezCalcFields(DataSet: TDataSet);
begin
   if (COPY(SqlRelLiquidezFPC_VENCTO.AsString,4,2)='01') then
      SqlRelLiquidezCC_MES.AsString := 'JANEIRO'+'/'+COPY(SqlRelLiquidezFPC_VENCTO.AsString,7,4)
   else
   if (COPY(SqlRelLiquidezFPC_VENCTO.AsString,4,2)='02') then
      SqlRelLiquidezCC_MES.AsString := 'FEVEREIRO'+'/'+COPY(SqlRelLiquidezFPC_VENCTO.AsString,7,4)
   else
   if (COPY(SqlRelLiquidezFPC_VENCTO.AsString,4,2)='03') then
      SqlRelLiquidezCC_MES.AsString := 'MARCO'+'/'+COPY(SqlRelLiquidezFPC_VENCTO.AsString,7,4)
   else
   if (COPY(SqlRelLiquidezFPC_VENCTO.AsString,4,2)='04') then
      SqlRelLiquidezCC_MES.AsString := 'ABRIL'+'/'+COPY(SqlRelLiquidezFPC_VENCTO.AsString,7,4)
   else
   if (COPY(SqlRelLiquidezFPC_VENCTO.AsString,4,2)='05') then
      SqlRelLiquidezCC_MES.AsString := 'MAIO'+'/'+COPY(SqlRelLiquidezFPC_VENCTO.AsString,7,4)
   else
   if (COPY(SqlRelLiquidezFPC_VENCTO.AsString,4,2)='06') then
      SqlRelLiquidezCC_MES.AsString := 'JUNHO'+'/'+COPY(SqlRelLiquidezFPC_VENCTO.AsString,7,4)
   else
   if (COPY(SqlRelLiquidezFPC_VENCTO.AsString,4,2)='07') then
      SqlRelLiquidezCC_MES.AsString := 'JULHO'+'/'+COPY(SqlRelLiquidezFPC_VENCTO.AsString,7,4)
   else
   if (COPY(SqlRelLiquidezFPC_VENCTO.AsString,4,2)='08') then
      SqlRelLiquidezCC_MES.AsString := 'AGOSTO'+'/'+COPY(SqlRelLiquidezFPC_VENCTO.AsString,7,4)
   else
   if (COPY(SqlRelLiquidezFPC_VENCTO.AsString,4,2)='09') then
      SqlRelLiquidezCC_MES.AsString := 'SETEMBRO'+'/'+COPY(SqlRelLiquidezFPC_VENCTO.AsString,7,4)
   else
   if (COPY(SqlRelLiquidezFPC_VENCTO.AsString,4,2)='10') then
      SqlRelLiquidezCC_MES.AsString := 'OUTUBRO'+'/'+COPY(SqlRelLiquidezFPC_VENCTO.AsString,7,4)
   else
   if (COPY(SqlRelLiquidezFPC_VENCTO.AsString,4,2)='11') then
      SqlRelLiquidezCC_MES.AsString := 'NOVEMBRO'+'/'+COPY(SqlRelLiquidezFPC_VENCTO.AsString,7,4)
   else
   if (COPY(SqlRelLiquidezFPC_VENCTO.AsString,4,2)='12') then
      SqlRelLiquidezCC_MES.AsString := 'DEZEMBRO'+'/'+COPY(SqlRelLiquidezFPC_VENCTO.AsString,7,4);
end;

procedure TFormGImpRelAdm.frxClienteMargemContribGetValue(
  const VarName: String; var Value: Variant);
begin
  if (VarName = 'Empresa') then
    Value := dbInicio.Empresa.RAZAO
  else
  if (VarName = 'Filtro') then
    Value := sFiltro;
end;

procedure TFormGImpRelAdm.SqlCdsClienteMargemContribCLI_CGCGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  Text := MascaraCNPJ_CPF(SqlCdsClienteMargemContribCLI_CGC.AsString);
end;

end.
