{*************************************************************************
* Programa...: GImpRepr - Gerenciador de Impressao Vendedores ou Representantes
* Objetivo...: disponibilizar relatorios dos representantes
* Analista...: Márcio Neu Pacheco
* Programador: Márcio
*
* Comentários: Imprime bordero c/ objeto Rprinter
*
* Criação..........: Nov/1999
* Ultima Alteração.: SET/2013
* Alterado por.....: Márcio
**************************************************************************}

unit GImpRepr;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBTables, Mask, DBCtrls, baseform,
  ExtCtrls, RWFunc, Grids, DBGrids, RDprint, ComCtrls, Provider,
  SqlExpr,SqlClientDataSet, DBClient, DBLocal, DBLocalS, ppProd, ppClass, ppReport, ppComm,
  ppRelatv, ppDB, ppDBPipe, ppModule, raCodMod, ppCtrls, ppBands, ppVar,
  ppPrnabl, ppCache, ppStrtch, ppMemo, ppSubRpt, MIDASLIB,DateUtils,
  ppParameter,   Spin, Data.DBXFirebird, ppDesignLayer, SimpleDS,
  ACBrEnterTab, ACBrBase, ACBrCalculadora,Data.FmtBcd, JvExMask, JvToolEdit, SgDbSeachComboUnit;

type
  TFormGimpRepr = class(TFrmBase)
    PrinterBordero: TPrinterSetupDialog;
    GroupSelecao: TGroupBox;
    LabelRepre: TLabel;
    GroupQuinzenas: TGroupBox;
    RadDuas: TRadioButton;
    RadSegunda: TRadioButton;
    GroupConfig: TGroupBox;
    BitCancelar: TBitBtn;
    BitConfig: TBitBtn;
    RadPrimeira: TRadioButton;
    BitOk: TBitBtn;
    GroupDispositivo: TGroupBox;
    RadVideo: TRadioButton;
    RadImpressora: TRadioButton;
    GroupAtivos: TGroupBox;
    RadInativos: TRadioButton;
    RadAtivos: TRadioButton;
    RadTodos: TRadioButton;
    GroupClassif: TGroupBox;
    RadCodi: TRadioButton;
    RadCida: TRadioButton;
    RadAlfa: TRadioButton;
    GroupPeriodo: TGroupBox;
    GroupObs: TGroupBox;
    EditObs01: TEdit;
    EditObs02: TEdit;
    GroupBox3: TGroupBox;
    LTBoxRelatorio: TListBox;
    CbRepresentantes: TComboBox;
    SqlCdsRepre: TSQLClientDataSet;
    SqlCdsRepresentantes: TSQLClientDataSet;
    DsRepresentantes: TDataSource;
    ppRP03: TppReport;
    SqlCdsRepresentantesREP_CODIGO: TStringField;
    SqlCdsRepresentantesREP_GRUPO: TStringField;
    SqlCdsRepresentantesREG_CODIGO: TStringField;
    SqlCdsRepresentantesREP_FUNCAO: TStringField;
    SqlCdsRepresentantesREP_SUPERVISAO: TStringField;
    SqlCdsRepresentantesREP_GERENTE: TStringField;
    SqlCdsRepresentantesREP_RAZAO: TStringField;
    SqlCdsRepresentantesREP_NOME: TStringField;
    SqlCdsRepresentantesREP_ENDERE: TStringField;
    SqlCdsRepresentantesREP_CIDADE: TStringField;
    SqlCdsRepresentantesREP_CELULAR: TStringField;
    SqlCdsRepresentantesREP_CONTA: TStringField;
    SqlCdsRepresentantesREP_AGENCIA: TStringField;
    SqlCdsRepresentantesREP_BANCO: TStringField;
    SqlCdsRepresentantesREP_BANCOFAVOR: TStringField;
    SqlCdsRepresentantesREP_UF: TStringField;
    SqlCdsRepresentantesREP_CEP: TStringField;
    SqlCdsRepresentantesREP_FONE: TStringField;
    SqlCdsRepresentantesREP_FAX: TStringField;
    SqlCdsRepresentantesREP_EMAIL: TStringField;
    SqlCdsRepresentantesREP_TIPO: TStringField;
    SqlCdsRepresentantesREP_SITUACAO: TStringField;
    SqlCdsRepresentantesREP_OBS: TMemoField;
    SqlCdsRepresentantesREP_QUOTA: TFMTBCdField;
    SqlCdsRepresentantesREP_NDEPEND: TSmallintField;
    SqlCdsRepresentantesREP_DTNASC: TSQLTimeStampField;
    SqlCdsRepresentantesREP_INSC: TStringField;
    SqlCdsRepresentantesREP_CGC: TStringField;
    SqlCdsRepresentantesEMP_CODIGO: TStringField;
    ppDBRepresentantes: TppDBPipeline;
    ppRP04: TppReport;
    SqlCdsParametros: TSQLClientDataSet;
    SqlCdsRepreREP_CODIGO: TStringField;
    SqlCdsRepreREP_NOME: TStringField;
    SqlCdsRepreREP_FUNCAO: TStringField;
    EdtRep: TEdit;
    SqlCdsParametrosPMT_COMIS_PROD: TStringField;
    SqlCdsParametrosPMT_1QZ_DIAS: TStringField;
    SqlCdsParametrosPMT_2QZ_DIAS: TStringField;
    SqlCdsParametrosPMT_PAGTO_COM_TP: TStringField;
    SqlCdsParametrosPMT_IRRF: TFMTBCdField;
    SqlCdsParametrosPMT_BORDERO_COM: TStringField;
    SqlCdsComissao: TSqlClientDataSet;
    SqlCdsComissaoFAT_CODIGO: TStringField;
    SqlCdsComissaoFPC_NUMER: TStringField;
    SqlCdsComissaoREP_CODIGO: TStringField;
    SqlCdsComissaoFPC_DTEMIS: TSQLTimeStampField;
    SqlCdsComissaoFPC_VLPARC: TFMTBCDField;
    SqlCdsComissaoFPC_PAGTO: TSQLTimeStampField;
    SqlCdsComissaoCLI_CODIGO: TStringField;
    SqlCdsComissaoCLI_RAZAO: TStringField;
    SqlCdsComissaoCLI_UF: TStringField;
    SqlCdsComissaoFPC_VENCTO: TSQLTimeStampField;
    SqlCdsComissaoFPC_VLPAGO: TFMTBCDField;
    SqlCdsComissaoFPC_NPARCELAS: TSmallintField;
    SqlCdsComissaoFAT_CANCELADA: TStringField;
    SqlCdsComissaoPED_CODIGO: TStringField;
    SqlCdsComissaoFAT_QTDITEM: TFMTBCDField;
    SqlCdsComissaoFAT_VL_LIQ: TFMTBCDField;
    SqlCdsComissaoFAT_VLNCOMIS: TFMTBCDField;
    SqlCdsComissaoFAT_DTEMIS: TSQLTimeStampField;
    SqlCdsComissaoFAT_COMIS1: TFMTBCDField;
    SqlCdsComissaoFAT_COMIS2: TFMTBCDField;
    SqlCdsComissaoFAT_COMIS3: TFMTBCDField;
    SqlCdsComissaoFAT_VLFAT: TFMTBCDField;
    SqlCdsEventos: TSQLClientDataSet;
    SqlCdsEventosEMP_CODIGO: TStringField;
    SqlCdsEventosREP_CODIGO: TStringField;
    SqlCdsEventosEVE_CODIGO: TStringField;
    SqlCdsEventosEVE_DESCRI: TStringField;
    SqlCdsEventosERP_VALOR: TFMTBCdField;
    SqlCdsEventosERP_TIPO: TStringField;
    SqlCdsEventosERP_DATA: TSQLTimeStampField;
    SqlCdsEventosERP_COMPL: TStringField;
    SqlCdsEventosERP_CODIGO: TStringField;
    SqlCdsEventosERP_IMPOSTO: TStringField;
    CdsTmp_Rcom: TClientDataSet;
    DsTmp_Rcom: TDataSource;
    CdsTmp_RcomEMP_CODIGO: TStringField;
    CdsTmp_RcomREP_CODIGO: TStringField;
    CdsTmp_RcomREP_GRUPO: TStringField;
    CdsTmp_RcomREP_RAZAO: TStringField;
    CdsTmp_RcomREP_AGENCIA: TStringField;
    CdsTmp_RcomREP_CONTA: TStringField;
    CdsTmp_RcomREP_BANCO: TStringField;
    CdsTmp_RcomREP_BANCOFAVOR: TStringField;
    CdsTmp_RcomRCOM_VENDAS: TCurrencyField;
    CdsTmp_RcomRCOM_COMISSOES: TCurrencyField;
    CdsTmp_RcomRCOM_CREDITOS: TCurrencyField;
    CdsTmp_RcomRCOM_DEBITOS: TCurrencyField;
    CdsTmp_RcomRCOM_IRRF: TCurrencyField;
    DsEventos: TDataSource;
    CdsTmp_RcomREP_CGC: TStringField;
    CdsTmp_RcomREP_TIPO: TStringField;
    ppDBTmp_RCom: TppDBPipeline;
    ppDBEventos: TppDBPipeline;
    ppRepTmp_Rcom: TppReport;
    ppDetailBand1: TppDetailBand;
    ppShape1: TppShape;
    ppShape2: TppShape;
    LBL_EMPRESA: TppLabel;
    ppLabel20: TppLabel;
    LBL_REPRESENTANTE: TppLabel;
    LBL_PERIODO: TppLabel;
    LBL_QUINZENA: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLabel29: TppLabel;
    ppDBText15: TppDBText;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppDBText17: TppDBText;
    ppDBText20: TppDBText;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    LBL_LIN01: TppLabel;
    LBL_LIN02: TppLabel;
    LBL_LIN03: TppLabel;
    LBL_LIN04: TppLabel;
    LBL_LIN05: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    Total_Creditos: TppVariable;
    Total_Debitos: TppVariable;
    Liquido_Pagar: TppVariable;
    ppShape3: TppShape;
    ppLabel39: TppLabel;
    ppDBText23: TppDBText;
    ppLabel40: TppLabel;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppLabel41: TppLabel;
    ppDBText26: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppShape5: TppShape;
    ppLabel43: TppLabel;
    LBL_OBS01: TppLabel;
    LBL_OBS02: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel42: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    raCodeModule3: TraCodeModule;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    CdsTmpEquip: TClientDataSet;
    DsTmpEquip: TDataSource;
    ppRTmpEquip: TppReport;
    CdsTmpEquipREP_CODIGO: TStringField;
    CdsTmpEquipEMP_CODIGO: TStringField;
    CdsTmpEquipTMP_TOTVENDAS: TCurrencyField;
    CdsTmpEquipTMP_COMISSAO: TCurrencyField;
    CdsTmpEquipTMP_TOTLITROS: TCurrencyField;
    CdsTmpEquipTMP_VENDAPRODP: TCurrencyField;
    CdsTmpEquipTMP_COMPROP: TCurrencyField;
    CdsTmpEquipTMP_LITROPROP: TCurrencyField;
    CdsTmpEquipREP_GRUPO: TStringField;
    CdsTmpEquipREP_RAZAO: TStringField;
    CdsTmpEquipREP_FUNCAO: TStringField;
    CdsTmpEquipREP_SUPERVISOR: TStringField;
    CdsTmpEquipREP_GERENTE: TStringField;
    PanEquipe: TPanel;
    RadGer: TRadioButton;
    RadSup: TRadioButton;
    ppHeaderBand2: TppHeaderBand;
    ppLine30: TppLine;
    LBL_02_LTITULO1: TppLabel;
    LBL_02_LTITULO2: TppLabel;
    ppSystemVariable13: TppSystemVariable;
    ppSystemVariable14: TppSystemVariable;
    ppDetailBand3: TppDetailBand;
    LBL_02_LTITULO3: TppLabel;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppTotVendido: TppDBText;
    ppVlComissao: TppDBText;
    ppDBText40: TppDBText;
    CdsTmpEquipPER_COMISSAO_CC: TCurrencyField;
    ppDBText37: TppDBText;
    LBL_02_EMPRESA: TppLabel;
    LBL_02_QUINZENA: TppLabel;
    SqlCdsComissaoREP_FUNCAO: TStringField;
    ppSummaryBand1: TppSummaryBand;
    ppLine15: TppLine;
    ppLabel53: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppFooterBand2: TppFooterBand;
    LBL_02_OBS1: TppLabel;
    ppLine16: TppLine;
    LBL_02_OBS2: TppLabel;
    ppLine17: TppLine;
    ppLabel54: TppLabel;
    ppLine18: TppLine;
    CdsTmpEquipWTOTALVENDIDO_CC: TCurrencyField;
    CdsTmpEquipWVALORCOMISSAO_CC: TCurrencyField;
    CdsTmpEquipWQTDE_CC: TCurrencyField;
    ppDBTmpEquip: TppDBPipeline;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    raCodeModule4: TraCodeModule;
    GroupGrupo: TGroupBox;
    Edt_Grupo: TEdit;
    Label1: TLabel;
    pp00HeaderBand2: TppHeaderBand;
    ppLine5: TppLine;
    LBL_03_EMPRESA: TppLabel;
    LBL_03_LTITULO1: TppLabel;
    LBL_03_LTITULO2: TppLabel;
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
    ppLabel9: TppLabel;
    pp00DetailBand2: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText3: TppDBText;
    ppDBText7: TppDBText;
    ppVariable1: TppVariable;
    ppVariable2: TppVariable;
    pp00SummaryBand2: TppSummaryBand;
    ppLabel25: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppLabel55: TppLabel;
    ppGroupFooterBand2: TppGroupFooterBand;
    raCodeModule2: TraCodeModule;
    ppLine19: TppLine;
    ppDBText38: TppDBText;
    ppLine21: TppLine;
    pp04HeaderBand1: TppHeaderBand;
    ppLine2: TppLine;
    LBL_04_EMPRESA: TppLabel;
    LBL_04_LTITULO1: TppLabel;
    LBL_04_LTITULO2: TppLabel;
    ppLine3: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    pp04DetailBand1: TppDetailBand;
    ppLabel10: TppLabel;
    ppDBText8: TppDBText;
    ppLabel11: TppLabel;
    ppDBText9: TppDBText;
    ppLabel12: TppLabel;
    ppVariable3: TppVariable;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    LblCgcCpf: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText16: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppLine4: TppLine;
    ppDBMemo1: TppDBMemo;
    ppDBTextCgcCpf: TppDBText;
    ppLabel24: TppLabel;
    VarFuncao: TppVariable;
    ppLabel57: TppLabel;
    ppDBText41: TppDBText;
    pp04SummaryBand1: TppSummaryBand;
    ppLabel16: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppLabel56: TppLabel;
    ppLine20: TppLine;
    ppDBText39: TppDBText;
    ppGroupFooterBand3: TppGroupFooterBand;
    raCodeModule1: TraCodeModule;
    GpTipoRel: TGroupBox;
    RadSintetico: TRadioButton;
    RadAnalitico: TRadioButton;
    ppRComissaoTipo: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLine9: TppLine;
    ppLblPeriodoTipo: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLabel63: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    lblComissaoTipoEmp: TppLabel;
    ppLblQuinzenaTipo: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText42: TppDBText;
    DsComissaoTipo: TDataSource;
    SqlCdsComissaoTipo: TSQLClientDataSet;
    SqlCdsComissaoTipoMEDIA_COMIS: TFMTBCdField;
    SqlCdsComissaoTipoTOTAL_FAT: TFMTBCdField;
    SqlCdsComissaoTipoPTI_CODIGO: TStringField;
    SqlCdsComissaoTipoPTI_DESCRI: TStringField;
    SqlCdsComissaoTipoREP_CODIGO: TStringField;
    SqlCdsComissaoTipoCC_VALOR_COMIS: TCurrencyField;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppDBText43: TppDBText;
    SqlCdsComissaoTipoREP_NOME: TStringField;
    ppDBComissaoTipo: TppDBPipeline;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppLabel72: TppLabel;
    ppDBCalc15: TppDBCalc;
    ppLine24: TppLine;
    ppDBCalc9: TppDBCalc;
    ppLblPeriodoTipo1: TppLabel;
    SqlCdsTipoAnalitico1: TSQLClientDataSet;
    CdsTipoAnalitico2: TSQLClientDataSet;
    CdsTipoAnalitico2PRD_REFER: TStringField;
    CdsTipoAnalitico2PRD_DESCRI: TStringField;
    CdsTipoAnalitico2TOTALPRECO: TFMTBCdField;
    CdsTipoAnalitico2TOTALQTDE: TFMTBCdField;
    CdsTipoAnalitico2MEDIA_PERC: TFMTBCdField;
    SQLCdsComissaoProd: TSQLClientDataSet;
    DsComissaoProd: TDataSource;
    ppRComissaoProd: TppReport;
    SQLCdsComissaoProdFAT_CODIGO: TStringField;
    SQLCdsComissaoProdCLI_CODIGO: TStringField;
    SQLCdsComissaoProdCLI_RAZAO: TStringField;
    SQLCdsComissaoProdREP_CODIGO: TStringField;
    SQLCdsComissaoProdFPC_DTEMIS: TSQLTimeStampField;
    SQLCdsComissaoProdFPC_PAGTO: TSQLTimeStampField;
    SQLCdsComissaoProdFPC_VENCTO: TSQLTimeStampField;
    SQLCdsComissaoProdEMP_CODIGO: TStringField;
    SQLCdsComissaoProdPRD_REFER: TStringField;
    SQLCdsComissaoProdPRD_DESCRI: TStringField;
    SQLCdsComissaoProdLIN_CODIGO: TStringField;
    SQLCdsComissaoProdFIT_QTDE: TFMTBCdField;
    SQLCdsComissaoProdFIT_PRECO: TFMTBCdField;
    SQLCdsComissaoProdFIT_COMIS: TFMTBCdField;
    ppParameterList1: TppParameterList;
    SQLCdsComissaoProdCLI_CIDADE: TStringField;
    SQLCdsComissaoProdREP_NOME: TStringField;
    SQLCdsComissaoProdLIN_DESCRI: TStringField;
    raCodeModule6: TraCodeModule;
    SQLCdsComissaoProdCC_TOTAL_VENDA: TCurrencyField;
    SQLCdsComissaoProdCC_TOTAL_COMIS: TCurrencyField;
    DBComissaoProd: TppDBPipeline;
    ppHeaderBand4: TppHeaderBand;
    ppLine25: TppLine;
    LBL_CP_EMPRESA: TppLabel;
    LBL_CP_LTITULO1: TppLabel;
    LBL_CP_LTITULO2: TppLabel;
    ppLine26: TppLine;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel64: TppLabel;
    ppLabel69: TppLabel;
    ppLine27: TppLine;
    ppLabel71: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText51: TppDBText;
    ppDBText54: TppDBText;
    ppVariable4: TppVariable;
    ppDBREP_CODIGO: TppDBText;
    ppDBText57: TppDBText;
    ppDBText60: TppDBText;
    ppVariable5: TppVariable;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppDBText55: TppDBText;
    ppLabel65: TppLabel;
    ppDBText56: TppDBText;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppLabel75: TppLabel;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    raCodeModule5: TraCodeModule;
    ppLabel70: TppLabel;
    ppLabel80: TppLabel;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine31: TppLine;
    SQLCdsComissaoProdPED_CODIGO: TStringField;
    ppLabel58: TppLabel;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    SqlCdsComissaoFPC_DESCONTADO: TStringField;
    SqlCdsComissaoNF_NUM_NFE: TIntegerField;
    rgEmpresaLogada: TRadioGroup;
    pnPeriodo1: TPanel;
    LabelMes: TLabel;
    EditMes: TEdit;
    LabelAno: TLabel;
    EditAno: TEdit;
    SqlCdsComissaoFAT_ICMSRET: TFMTBCDField;
    SqlCdsComissaoFAT_VL_IPI: TFMTBCDField;
    RDPrintBordero: TRDprint;
    ReportComissao: TppReport;
    ppParameterList7: TppParameterList;
    ppDesignLayers8: TppDesignLayers;
    ppDesignLayer8: TppDesignLayer;
    ppHeaderBand5: TppHeaderBand;
    ppDetailBand6: TppDetailBand;
    ppFooterBand3: TppFooterBand;
    lempresa: TppLabel;
    ltitulo: TppLabel;
    lperiodo: TppLabel;
    ppSystemVariable9: TppSystemVariable;
    lquinzena: TppLabel;
    ppDBText65: TppDBText;
    ppDBText67: TppDBText;
    pipeComissao: TppDBPipeline;
    dsComissao: TDataSource;
    SqlCdsComissaoPedido: TSqlClientDataSet;
    SqlCdsComissaoPedidoFAT_CODIGO: TStringField;
    SqlCdsComissaoPedidoFPC_NUMER: TStringField;
    SqlCdsComissaoPedidoREP_CODIGO: TStringField;
    SqlCdsComissaoPedidoFPC_DTEMIS: TSQLTimeStampField;
    SqlCdsComissaoPedidoFPC_VLPARC: TFMTBCDField;
    SqlCdsComissaoPedidoFPC_PAGTO: TSQLTimeStampField;
    SqlCdsComissaoPedidoCLI_CODIGO: TStringField;
    SqlCdsComissaoPedidoCLI_RAZAO: TStringField;
    SqlCdsComissaoPedidoCLI_UF: TStringField;
    SqlCdsComissaoPedidoFPC_VENCTO: TSQLTimeStampField;
    SqlCdsComissaoPedidoFPC_VLPAGO: TFMTBCDField;
    SqlCdsComissaoPedidoFPC_NPARCELAS: TSmallintField;
    SqlCdsComissaoPedidoFAT_CANCELADA: TStringField;
    SqlCdsComissaoPedidoPED_CODIGO: TStringField;
    SqlCdsComissaoPedidoFAT_QTDITEM: TFMTBCDField;
    SqlCdsComissaoPedidoFAT_VL_LIQ: TFMTBCDField;
    SqlCdsComissaoPedidoFAT_VLNCOMIS: TFMTBCDField;
    SqlCdsComissaoPedidoFAT_DTEMIS: TSQLTimeStampField;
    SqlCdsComissaoPedidoFAT_COMIS1: TFMTBCDField;
    SqlCdsComissaoPedidoFAT_COMIS2: TFMTBCDField;
    SqlCdsComissaoPedidoFAT_COMIS3: TFMTBCDField;
    SqlCdsComissaoPedidoFAT_VLFAT: TFMTBCDField;
    SqlCdsComissaoPedidoREP_FUNCAO: TStringField;
    SqlCdsComissaoPedidoFPC_DESCONTADO: TStringField;
    SqlCdsComissaoPedidoNF_NUM_NFE: TIntegerField;
    SqlCdsComissaoPedidoFAT_ICMSRET: TFMTBCDField;
    SqlCdsComissaoPedidoFAT_VL_IPI: TFMTBCDField;
    SqlCdsComissaoPedidoREP_NOME: TStringField;
    SqlCdsComissaoPedidoREP_RAZAO: TStringField;
    SqlCdsComissaoPedidoREP_AGENCIA: TStringField;
    SqlCdsComissaoPedidoREP_CONTA: TStringField;
    SqlCdsComissaoPedidoREP_BANCO: TStringField;
    SqlCdsComissaoPedidoREP_BANCOFAVOR: TStringField;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppLine32: TppLine;
    ppLabel59: TppLabel;
    ppLine33: TppLine;
    ppLabel60: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppDBText74: TppDBText;
    ppDBText78: TppDBText;
    SqlCdsComissaoPedidoParcelas: TStringField;
    ppDBText79: TppDBText;
    SqlCdsComissaoPedidocomissao: TFloatField;
    SqlCdsComissaoPedidoVLNCOMIS: TFloatField;
    SqlCdsComissaoPedidoVL_LIQ: TFloatField;
    ppDBText73: TppDBText;
    ppDBText77: TppDBText;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppSummaryBand2: TppSummaryBand;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppDBText83: TppDBText;
    ppDBText66: TppDBText;
    ppDBText80: TppDBText;
    ppDBText81: TppDBText;
    radDefinir: TRadioButton;
    gbDefinir: TGroupBox;
    Label2: TLabel;
    edPrimeira: TEdit;
    edSegunda: TEdit;
    Label3: TLabel;
    SqlCdsParametrosPMT_COMIS_SOBRE_DIF_VENDA_CUSTO: TStringField;
    qAux: TSQLQuery;
    gbProduto: TGroupBox;
    cbProduto: TSgDbSearchCombo;
    qProduto: TSQLQuery;
    edProduto: TEdit;
    rbExcel: TRadioButton;
    ppLabel96: TppLabel;
    ppDBText82: TppDBText;

    procedure FormShow(Sender: tObject);
    procedure BitOkClick(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
    procedure EditMesExit(Sender: tObject);
    procedure BitConfigClick(Sender: tObject);
    procedure EditAnoExit(Sender: tObject);
    procedure LTBoxRelatorioClick(Sender: tObject);
    procedure pp04HeaderBand1BeforePrint(Sender: tObject);
    procedure pp00HeaderBand2BeforePrint(Sender: tObject);
    procedure EditMesKeyPress(Sender: tObject; var Key: Char);
    procedure EdtRepKeyPress(Sender: tObject; var Key: Char);
    procedure EdtRepExit(Sender: tObject);
    procedure CbRepresentantesClick(Sender: tObject);
    procedure CbRepresentantesExit(Sender: tObject);
    procedure ppHeaderBand1BeforePrint(Sender: tObject);
    procedure RadGerClick(Sender: tObject);
    procedure CdsTmpEquipCalcFields(DataSet: TDataSet);
    procedure SqlCdsComissaoTipoCalcFields(DataSet: TDataSet);
    procedure SQLCdsComissaoProdCalcFields(DataSet: TDataSet);
    procedure rgEmpresaLogadaExit(Sender: tObject);
    procedure rgEmpresaLogadaClick(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure lempresaGetText(Sender: TObject; var Text: string);
    procedure ltituloGetText(Sender: TObject; var Text: string);
    procedure lperiodoGetText(Sender: TObject; var Text: string);
    procedure lquinzenaGetText(Sender: TObject; var Text: string);
    procedure plComissaoGetText(Sender: TObject; var Text: string);
    procedure radDefinirClick(Sender: TObject);
    procedure RadDuasClick(Sender: TObject);
    procedure RadSegundaClick(Sender: TObject);
    procedure RadPrimeiraClick(Sender: TObject);
    procedure edProdutoExit(Sender: TObject);
    procedure cbProdutoSelect(Sender: TObject);
  private
         PathNewRel : STRING;

         wAuxdataI,
         wSeleciona,wOrdem,
         wSql1,wSql2,wSql3,wSql4 : String;
         wImposto,wValorParcela :Double;
    wTotal_Comis:Double;
    Procedure Cabecalho(wcodrep:string);
    Procedure ImprimirBordero;
    Procedure CabecalhoAlternativo(wcodrep:string);
    Procedure ImprimirBorderoAlternativo;
    Procedure GravaControle;

    Procedure DatasPriQz;
    Procedure DatasSegQz;
    Procedure DataDuas;

    Procedure GravaControlEventos(var wRepres:String);
    procedure LayOutdoForm;
    procedure CriaRelRepre00;
    procedure CriaRelComissaoRep01;
    procedure CriaRelRepre02;
    procedure CriaRelRepre03;
    procedure CriaRelComissaoProd;
    procedure PreencheCombo;
    Procedure ImprimiComissaoTipo;
    procedure DatasSegundaQuinzenaDefinida;
    procedure DatasPrimeiraQuinzenaDefinida;

  public
    { Public declarations }
  end;

var
  FormGimpRepr: TFormGimpRepr;
  wDataI, wDataF:string;
  wPubRep_Codigo:String[3];
  wPubRep_funcao:String[1];
  wPagina:Integer;

implementation

uses Uteis, DataCad, Men0001, ufrmpreviewrb, iniciodb;

{$R *.DFM}






procedure TFormGimpRepr.FormShow(Sender: tObject);
begin
      inherited;
      if (dbInicio.Empresa.sPadraoPesquisaEmpresa = 'L') then
        rgEmpresaLogada.ItemIndex := 0
      else
        rgEmpresaLogada.ItemIndex := 1;

      SqlCdsParametros.close;
      SqlCdsParametros.CommandText:=SQLDEF(iif(rgEmpresaLogada.ItemIndex = 0,'EXCLUSIVA','NAOEXCLUSIVA'),'SELECT X1.PMT_COMIS_PROD,X1.PMT_1QZ_DIAS,X1.PMT_2QZ_DIAS,X1.PMT_PAGTO_COM_TP,X1.PMT_IRRF,X1.PMT_BORDERO_COM, X1.PMT_COMIS_SOBRE_DIF_VENDA_CUSTO FROM PRMT0001 X1','','X1.EMP_CODIGO','X1.');
      SqlCdsParametros.Open;
      {carregar comb com nome dos relatórios}
      LTBoxRelatorio.Items.Add('Relatório de Comissões - % Pedidos'); //0
      LTBoxRelatorio.Items.Add('Controle de Comissões/Recibo');      //1
      LTBoxRelatorio.Items.Add('Relatório de Comissões por Equipe'); //2
      LTBoxRelatorio.Items.Add('Relatório de Comissões - % Produtos'); //3
      LTBoxRelatorio.Items.Add('Listagem Resumida de Vendedores');//4 RelRepresentante01
      LTBoxRelatorio.Items.Add('Relatório Geral de Vendedores');  //5 RelRepresentante02
      LTBoxRelatorio.Items.Add('Relatório de comissão do vendedor por tipo de produto');  //6 RelRepresentante02
      LTBoxRelatorio.Items.Add('Relatório de Comissões - Pedido / Cliente / NFe'); //7
      //LTBoxRelatorio.Items.Add('Relatório Curva ABC Produtos por Vendedor'); // ---> sie

      LTBoxRelatorio.ItemIndex := 0;
      //
      {Defauts dos objetos da tela inicial}
      // seta no primeiro item
      LayOutdoForm;
      RadGer.Checked      := true;
      RadPrimeira.Checked := True;
      RadAlfa.Checked     := True;
      Screen.Cursor := crDefault;
end;

Procedure TFormGimpRepr.ImprimirBordero;
//**************** INICIO DO BORDERO *******************************
{utilizacao : Bordero de Comissoes
{usa Objeto Rprinter
{objetivo :                                                        }
{Inicio da impressão dos dados do bordero                          }
{******************************************************************}
var
   wcomissao, wValor_Tot_Geral, wTotal_Comis : Double;
   wLinha:Integer;
   wCodigo_Rep: string;
   lMultiplic: Real;
   lValorRetirarParcela: Currency ;
begin
    wPagina:=1;
    SqlCdsComissao.First;
    if RadVideo.checked  then
       RDPrintBordero.OpcoesPreview.Preview := True
    else
       RDPrintBordero.OpcoesPreview.Preview := False;
       //
    RDPrintBordero.Abrir;
    screen.Cursor := CrHourglass;
    //
    While not (SqlCdsComissao.EOF) do
     begin
         wCodigo_rep := SqlCdsComissaoREP_CODIGO.AsString;
         // chama proc. cabeçalho  que esta no final deste programa
         Cabecalho(wCodigo_rep);
         //
         wLinha := 13;
         // *** INICIAR IMPRESSAO DOS VALORES P/ COMISSAO DO REPRESENTANTE *** //
         // zerar totalizadores
         wValorParcela    := 0;
         wValor_Tot_Geral := 0;
         wTotal_Comis     := 0;
         while (SqlCdsComissaoREP_CODIGO.AsString=wCodigo_rep)and not(SqlCdsComissao.Eof) do
         begin
              // *** VERIFICANDO PARAMETROS GLOBAIS DA EMPRESA
              { 17/05/11 Márcio -> comissao por produto tambem grava comissao geral pela média dos produtos
               então mesmo sendo comissao por porduto este relatório estará correto }
              if SqlCdsParametrosPMT_PAGTO_COM_TP.AsString = 'T'  then // Pagto de comissao pelo total Liq. Nota
              begin
                   // só imprime quando passando na parcela 01 ou única parcela
                   RDPrintBordero.Imp(wLinha, 1,SqlCdsComissaoFPC_DTEMIS.AsString);
                   RDPrintBordero.Imp(wLinha, 12,SqlCdsComissaoPED_CODIGO.AsString);
                   RDPrintBordero.Imp(wLinha, 19,Copy(SqlCdsComissaoCLI_RAZAO.AsString,1,34));
                   RDPrintBordero.Imp(wLinha, 56,SqlCdsComissaoCLI_UF.AsString);
                   RDPrintBordero.Imp(wLinha, 59,SqlCdsComissaoFAT_CODIGO.AsString);
                   //RDPrintBordero.Imp(wLinha, 70,SqlCdsComissaoFPC_NUMER.AsString+'/'+SqlCdsComissaoFPC_NPARCELAS.AsString);
                   // Imprime pelo total liquido da nota
                   RDPrintBordero.ImpVal(WLinha, 72,'###,##0.00',SqlCdsComissaoFAT_VL_LIQ.AsCurrency,[]);
                   RDPrintBordero.ImpVal(WLinha, 83,'##,##0.00',SqlCdsComissaoFAT_VLNCOMIS.AsCurrency,[]);

                   RDPrintBordero.ImpVal(WLinha, 93,'#0.000',SqlCdsComissaoFAT_COMIS1.AsCurrency,[]);
                   // Calculo de comissao individual
                   wComissao := (SqlCdsComissaoFAT_VL_LIQ.AsCurrency-SqlCdsComissaoFAT_VLNCOMIS.AsCurrency)*(SqlCdsComissaoFAT_COMIS1.AsCurrency/100);
                   RDPrintBordero.ImpVal(wLinha, 100,'##,##0.00',wComissao,[]);
                   RDPrintBordero.Imp(wLinha,110,SqlCdsComissaoFPC_VENCTO.AsString);
                   RDPrintBordero.Imp(wLinha,121,SqlCdsComissaoFPC_PAGTO.AsString);
                   //
                   wValor_Tot_Geral := (WValor_Tot_Geral+SqlCdsComissaoFAT_VL_LIQ.AsCurrency);
                   wTotal_Comis := (wTotal_Comis + wComissao);
                   //
                   wLinha := wLinha+1;

              end
              else // Datamodulo.TbParametrosPMT_PAGTO_COM_TP='P'arcela // Pagto de comissao pelo valor liquido de cada parcela
              begin
                   RDPrintBordero.Imp(wLinha, 1,SqlCdsComissaoFPC_DTEMIS.AsString);
                   RDPrintBordero.Imp(wLinha, 12,SqlCdsComissaoPED_CODIGO.AsString);
                   RDPrintBordero.Imp(wLinha, 19,Copy(SqlCdsComissaoCLI_RAZAO.AsString, 1, 34));
                   RDPrintBordero.Imp(wLinha, 56,SqlCdsComissaoCLI_UF.AsString);
                   RDPrintBordero.Imp(wLinha, 59,SqlCdsComissaoFAT_CODIGO.AsString);
                   RDPrintBordero.Imp(wLinha, 66,SqlCdsComissaoFPC_NUMER.AsString+'/'+SqlCdsComissaoFPC_NPARCELAS.AsString);
                   //Calcular vl. liquido da parcela(valor sem IPI)
                   //wImposto :=SqlCdsComissaoFAT_VLFAT.AsCurrency-(SqlCdsComissaoFAT_VL_LIQ.AsCurrency-SqlCdsComissaoFAT_VLNCOMIS.AsCurrency);
                   //wValorParcela:=SqlCdsComissaoFPC_VLPARC.AsCurrency-(wImposto/SqlCdsComissaoFPC_NPARCELAS.AsCurrency);
                   wImposto := 0;

                   //wValorParcela := (SqlCdsComissaoFAT_VL_LIQ.AsCurrency-SqlCdsComissaoFAT_VLNCOMIS.AsCurrency)/SqlCdsComissaoFPC_NPARCELAS.AsCurrency;
                   // verifica se parametro colocar IPI e ST na primerira parcela esta ativo
                   lValorRetirarParcela:=0;
                   if (DBiNICIO.Empresa.bFaturamentoIPI1Parcela) then
                      lValorRetirarParcela := SqlCdsComissaoFAT_VL_IPI.asCurrency ;
                   if (DBiNICIO.eMPRESA.bFaturamentoST1Parcela) then
                      lValorRetirarParcela := lValorRetirarParcela + SqlCdsComissaoFAT_ICMSRET.asCurrency;

                   if lValorRetirarParcela>0 then
                   begin
                        // verificação somente na primeira parcela
                        if StrToIntDef( SqlCdsComissaoFPC_NUMER.asstring, -1 ) = 1 then
                           begin
                            // ratifica se a primeira parcela esta mesmo maior com o valor dos impostos IPI e/ou ST somados na parcela (trata multiplas parcelas)
                            if (SqlCdsComissaoFPC_VLParc.AsCurrency) > (((SqlCdsComissaoFAT_VLFAT.AsCurrency-SqlCdsComissaoFAT_VLNCOMIS.AsCurrency)/SqlCdsComissaoFPC_NPARCELAS.AsCurrency)+1) then    // +1 desconsidea centavos da dizima
                               wValorParcela := SqlCdsComissaoFPC_VLParc.AsCurrency - lValorRetirarParcela
                            else
                            if SqlCdsComissaoFPC_NPARCELAS.AsCurrency = 1 then       // tratamento especifico quando tem uma parcela somente
                                wValorParcela := SqlCdsComissaoFPC_VLParc.AsCurrency - lValorRetirarParcela
                            else
                             //   preciso fazer propoção pois tem varias parcelas mas os impostos nao foram colocados na primeira parcela, foi rateado nelas
                              begin
                                lMultiplic := (SqlCdsComissaoFat_VL_Liq.AsCurrency-SqlCdsComissaoFAT_VLNCOMIS.AsCurrency) / SqlCdsComissaoFat_VLfat.AsCurrency;
                                wValorParcela := SqlCdsComissaoFPC_VLParc.AsCurrency * lMultiplic;
                              end
                            end

                        else
                           wValorParcela := SqlCdsComissaoFPC_VLParc.AsCurrency;
                   end
                   Else
                   begin
                        lMultiplic := (SqlCdsComissaoFat_VL_Liq.AsCurrency-SqlCdsComissaoFAT_VLNCOMIS.AsCurrency) / SqlCdsComissaoFat_VLfat.AsCurrency;
                        wValorParcela := SqlCdsComissaoFPC_VLParc.AsCurrency * lMultiplic;
                   end;


                   // Imprime pelo total liquido da nota
                   RDPrintBordero.ImpVal(WLinha, 72,'###,##0.00',wValorParcela,[]);
                   RDPrintBordero.ImpVal(WLinha, 83,'##,##0.00',(SqlCdsComissaoFAT_VLNCOMIS.AsCurrency/SqlCdsComissaoFPC_NPARCELAS.AsCurrency),[]);
                   RDPrintBordero.ImpVal(WLinha, 93,'#0.000',SqlCdsComissaoFAT_COMIS1.AsCurrency,[]);
                   //
                   wComissao :=(wValorParcela*SqlCdsComissaoFAT_COMIS1.AsCurrency/100);
                   wValor_Tot_Geral := (WValor_Tot_Geral+wValorParcela);
                   RDPrintBordero.ImpVal(wLinha, 100,'##,##0.00',wComissao,[]);
                   RDPrintBordero.Imp(wLinha,110,SqlCdsComissaoFPC_VENCTO.AsString);
                   RDPrintBordero.Imp(wLinha,121,SqlCdsComissaoFPC_PAGTO.AsString);
                   //
                   WTotal_Comis := (WTotal_Comis + Wcomissao);
                   wLinha := wLinha+1;
              end;

              SqlCdsComissao.Next;
              if wlinha = 58 then
              begin
                  // estourou linha -> ImprimirBordero cabeçalho
                  Inc(wPagina);
                  RDPrintBordero.Novapagina;
                  Cabecalho(wCodigo_rep);
                  wlinha := 13;
               end;
         end;
        {IMPRIMIR EVENTOS DO REPRESENTANTE - SOMENTE QUEM TEVE VENDAS}
        RDPrintBordero.Imp(wLinha, 1,'------------------------------------------------------------------------------------------------------------------------------------');
        wLinha := wLinha+1;
        RDPrintBordero.Imp   (wLinha,001,'Sub-Total');
        RDPrintBordero.ImpVal(wLinha, 72,'###,##0.00',wValor_Tot_Geral,[]);
        RDPrintBordero.ImpVal(wLinha, 99,'###,##0.00',wTotal_Comis,[]);
        Inc(wLinha);
        RDPrintBordero.Imp(wLinha, 1,'------------------------------------------------------------------------------------------------------------------------------------');
        Inc(wLinha);
        RDPrintBordero.Imp(wLinha, 2,'EVENTOS:');
        wLinha := wLinha+1;
        try
          {Busca os eventos dos representantes}
          wSql1      := 'SELECT E1.EMP_CODIGO,E1.REP_CODIGO,E1.EVE_CODIGO,E2.EVE_DESCRI,E1.ERP_VALOR,E1.ERP_TIPO,E1.ERP_DATA,E1.ERP_COMPL,';
          wSql2      := 'E1.ERP_CODIGO,E1.ERP_IMPOSTO FROM EVE_RP01 E1 JOIN EVE0000 E2 ON (E2.EVE_CODIGO = E1.EVE_CODIGO) ';
          wSeleciona := 'WHERE E1.ERP_DATA BETWEEN '''+DataAmericana(wDataI)+''' AND '''+DataAmericana(wDataF)+''' AND E1.REP_CODIGO = '''+wCodigo_rep+'''';
          SqlCdsEventos.Close;
          SqlCdsEventos.CommandText := SQLDEF(iif(rgEmpresaLogada.ItemIndex = 0,'EXCLUSIVA','NAOEXCLUSIVA'),wSql1+wSql2,wSeleciona,'E1.REP_CODIGO,E1.ERP_DATA','E1.');
          SqlCdsEventos.Open;
          SqlCdsEventos.First;
          if SqlCdsEventos.IsEmpty = false then
             begin
                 while not SqlCdsEventos.Eof do
                  begin
                      RDPrintBordero.Imp(wLinha, 4,SqlCdsEventosERP_CODIGO.AsString);
                      RDPrintBordero.Imp(wLinha, 10,SqlCdsEventosERP_DATA.AsString);
                      RDPrintBordero.Imp(wLinha, 21,SqlCdsEventosEVE_DESCRI.AsString);
                      RDPrintBordero.Imp(wLinha, 48,SqlCdsEventosERP_COMPL.AsString);
                      RDPrintBordero.ImpVal(wLinha,94,'###,##0.00',SqlCdsEventosERP_VALOR.AsCurrency,[]);
                      RDPrintBordero.Imp(wLinha, 106,SqlCdsEventosERP_TIPO.AsString);
                      if SqlCdsEventosERP_TIPO.AsString = 'D' then
                         // diminui valor do total da comissao
                         wTotal_Comis := (wTotal_Comis-SqlCdsEventosERP_VALOR.AsCurrency)
                      else
                         // aumenta valor no total da comissao
                         WTotal_Comis := (WTotal_Comis+SqlCdsEventosERP_VALOR.AsCurrency);
                      //
                      wLinha := wLinha+1;
                      if wlinha = 58 then
                         begin
                             // Estourou as linhas ImprimirBordero o cabeçalho e continuar a ImprimirBordero eventos
                             Inc(wPagina);
                             RDPrintBordero.Novapagina;
                             Cabecalho(wCodigo_rep);
                             wlinha := 13;
                         end;
                      SqlCdsEventos.Next;
                  end;
             end;
          RDPrintBordero.Imp(wLinha, 1,'------------------------------------------------------------------------------------------------------------------------------------');
          Inc(wLinha);
          if RadPrimeira.checked  then
             RDPrintBordero.Imp(wLinha,2,'Total 1a. Quinzena :')
          else
             if RadSegunda.checked   then
                RDPrintBordero.Imp(wLinha,2,'Total 2a. Quinzena :')
             else
                RDPrintBordero.Imp(wLinha,2,'TOTAL DO MÊS :');
          RDPrintBordero.ImpVal(wLinha, 72,'###,##0.00',wValor_Tot_Geral,[]);
          RDPrintBordero.ImpVal(wLinha, 99,'###,##0.00',wTotal_Comis,[]);
          Inc(wLinha);
          RDPrintBordero.Imp(wLinha, 1,'------------------------------------------------------------------------------------------------------------------------------------');
          {zera numero de pagina p/ prox. repres.}
          if not SqlCdsComissao.Eof then
             begin
                 wPagina:= 1;
                 RDPrintBordero.Novapagina;
             end;
        except on E:EDataBaseError do
          uteis.erro  (pchar('Erro ao localizar os eventos do vendedores ! '+e.message));
        end;
     end;
    screen.Cursor := CrDefault;
    RDPrintBordero.Fechar;
end;

procedure TFormGimpRepr.Cabecalho(wcodrep:string);
{ Objetivo :                                    }
{ Imprime o cabeçalho da pagina do bordero      }
begin
    try
      wSql1 := 'SELECT R1.* FROM REP0000 R1 ';
      SqlCdsRepresentantes.close;
      SqlCdsRepresentantes.CommandText := 'SELECT R1.* FROM REP0000 R1 WHERE R1.REP_CODIGO = '+qStr(wCodRep) ; //SQLDEF('NAOEXCLUSIVA'),wSql1,'WHERE R1.REP_CODIGO = '''+wCodRep+'''','R1.REP_CODIGO','R1.');
      SqlCdsRepresentantes.Open;
      RDPrintBordero.Imp(2, 2,'Emissão: '+DateTimeToStr(Date));
      RDPrintBordero.Imp(2, 119,'Página:'+IntToStr(WPagina));
      RDPrintBordero.Imp(3, 1,'====================================================================================================================================');
      RDPrintBordero.ImpF(4, 2,dbInicio.Empresa.Razao,[Expandido]);
      RDPrintBordero.Imp(5, 2,'RELATÓRIO DE COMISSÕES  -   MÊS/ANO : '+EditMes.Text+'/'+EditAno.Text);
      RDPrintBordero.Imp(6, 2,'PERÍODO DE : '+wDataI+' Até '+wdataF);
      //
      if RadPrimeira.checked  then
         RDPrintBordero.Imp(6,118,'1a. QUINZENA')
      else
         if RadSegunda.checked   then
            RDPrintBordero.Imp(6,118,'2a. QUINZENA :');
      RDPrintBordero.Imp(7, 1,'====================================================================================================================================');
      RDPrintBordero.Imp(8, 2,SqlCdsRepresentantesREP_CODIGO.AsString+'-'+SqlCdsRepresentantesREP_GRUPO.AsString+'  '+SqlCdsRepresentantesREP_RAZAO.AsString);
      // DADOS DA CONTA DO REPRESENTANTE
      RDPrintBordero.Imp(8, 55,'[ Agência:'+SqlCdsRepresentantesREP_AGENCIA.AsString);
      RDPrintBordero.Imp(8, 72,'Conta:'+SqlCdsRepresentantesREP_CONTA.AsString);
      RDPrintBordero.Imp(8, 93,'Banco :'+SqlCdsRepresentantesREP_BANCO.AsString);
      RDPrintBordero.Imp(9, 10,SqlCdsRepresentantesREP_NOME.AsString);
      RDPrintBordero.Imp(9, 93,'Credor:'+SqlCdsRepresentantesREP_BANCOFAVOR.AsString);
      RDPrintBordero.Imp(10, 1,'------------------------------------------------------------------------------------------------------------------------------------');
      RDPrintBordero.Imp(11, 2,'EMISSÃO  PEDIDO  CLIENTE                                UF FATURA  PC VALOR LIQ. VL S/Comis.  %   COM/PAGAR    VCTO     PAGTO');
      RDPrintBordero.Imp(12, 1,'------------------------------------------------------------------------------------------------------------------------------------');
    except on E:EDataBaseError do
      uteis.erro  (pchar('Erro ao localizar os dados do vendedor ! '+e.message));
    end;
end;

Procedure TFormGimpRepr.GravaControle;
{ Objetivo :
{ Gravar na tabela temporaria (TMP_RCOM) dados de eventos,comissoes e eventos}
{ e depois ImprimirBordero relatorio Controle de Comissões/Recibo                                                }
{ OBS :Quando nao vendeu e tem Lctos de Eventos tirar Individual p/aparecer  }
var
  Wcomissao, wValor_Tot_Geral,wTotal_deb,wTotal_cred,wValor_liquido:Double;
  { var wTotal_Comis = Public secao Private}
  wCodigo_Rep,wPedido,wCliente,wFatura: string;
begin
    screen.Cursor := CrHourglass;
    SqlCdsComissao.First;
    if not (SqlCdsComissao.IsEmpty) then
       begin
           While not(SqlCdsComissao.EOF) do
            begin
                wCodigo_rep := SqlCdsComissaoREP_CODIGO.AsString;
                // zerar totalizadores p/ o representante
                wValor_Tot_Geral := 0;
                wTotal_Comis := 0;
                while (SqlCdsComissaoREP_CODIGO.AsString=wCodigo_rep)and not(SqlCdsComissao.Eof) do
                 begin
                     // *** VERIFICANDO PARAMETROS GLOBAIS DA EMPRESA
                    // IF SqlCdsParametrosPMT_COMIS_PROD.AsString = 'N' then
                        // se false é pagto de comissao de percentual sobre valor
                        begin
                            {PMT_PAGTO_COM_TP = T - total liquido da nota
                             PMT_PAGTO_COM_TP = P - Pela parcelas faturadas}
                            IF SqlCdsParametrosPMT_PAGTO_COM_TP.AsString = 'T'  then
                               // Pagto de comissao pelo total Liq. Nota
                               begin
                                   // só calcular quando passando na parcela 01 ou única parc. [ ]
//                                   IF (SqlCdsComissaoFPC_NUMER.AsString=' ')or(SqlCdsComissaoFPC_NUMER.AsString='01') then
//                                      begin
                                          Wcomissao := (SqlCdsComissaoFAT_VL_LIQ.AsCurrency-SqlCdsComissaoFAT_VLNCOMIS.AsCurrency)*(SqlCdsComissaoFAT_COMIS1.AsCurrency/100);
                                          WValor_Tot_Geral := (WValor_Tot_Geral+SqlCdsComissaoFAT_VL_LIQ.AsCurrency);
                                          WTotal_Comis := (WTotal_Comis + Wcomissao);
//                                      end;
                               end
                            else
                               begin
                                   //Calcular vl. liquido da parcela(valor sem IPI)
                                   wImposto     :=0;
                                   wValorParcela:=0;
                                   wImposto     :=SqlCdsComissaoFAT_VLFAT.AsCurrency-(SqlCdsComissaoFAT_VL_LIQ.AsCurrency-SqlCdsComissaoFAT_VLNCOMIS.AsCurrency);
                                   wValorParcela:=SqlCdsComissaoFPC_VLPARC.AsCurrency-(wImposto/SqlCdsComissaoFPC_NPARCELAS.AsCurrency);
                                   //
                                   Wcomissao := (wValorParcela*SqlCdsComissaoFAT_COMIS1.AsCurrency/100);
                                   WValor_Tot_Geral := (WValor_Tot_Geral+wValorParcela);
                                   //
                                   WTotal_Comis := (WTotal_Comis + Wcomissao);
                               end;
                        end;
                     wCliente       := SqlCdsComissaoCLI_RAZAO.AsString;
                     wFatura        := SqlCdsComissaoFAT_CODIGO.AsString;
                     wValor_liquido := wComissao;
                     SqlCdsComissao.Next;
                 end;// end do while das parcelas do Repres.
                {Busca dos dados do Representante}
                SqlCdsRepresentantes.Close;
                SqlCdsRepresentantes.CommandText := SQLDEF(iif(rgEmpresaLogada.ItemIndex = 0,'EXCLUSIVA','NAOEXCLUSIVA'),'SELECT R1.* FROM REP0000 R1 ','WHERE R1.REP_CODIGO = '''+wCodigo_rep+'''','R1.REP_CODIGO','R1.');
                SqlCdsRepresentantes.Open;
                if (not SqlCdsRepresentantes.IsEmpty) then
                   begin
                      CdsTmp_RCom.Append;
                      CdsTmp_RcomEMP_CODIGO.AsString       := dbInicio.Empresa.EMP_CODIGO;
                      CdsTmp_RcomREP_CODIGO.AsString       := wCodigo_rep;
                      CdsTmp_RcomREP_GRUPO.AsString        := SqlCdsRepresentantesREP_GRUPO.AsString;
                      CdsTmp_RcomREP_RAZAO.AsString        := SqlCdsRepresentantesREP_RAZAO.AsString;
                      CdsTmp_RcomREP_AGENCIA.AsString      := SqlCdsRepresentantesREP_AGENCIA.AsString;
                      CdsTmp_RcomREP_CONTA.AsString        := SqlCdsRepresentantesREP_CONTA.AsString;
                      CdsTmp_RcomREP_BANCO.AsString        := SqlCdsRepresentantesREP_BANCO.AsString;
                      CdsTmp_RcomREP_BANCOFAVOR.AsString   := SqlCdsRepresentantesREP_BANCOFAVOR.AsString;
                      CdsTmp_RcomREP_CGC.AsString          := SqlCdsRepresentantesREP_CGC.AsString;
                      CdsTmp_RcomREP_TIPO.AsString         := SqlCdsRepresentantesREP_TIPO.AsString;
                      CdsTmp_RcomRCOM_VENDAS.AsCurrency    := wValor_tot_geral;
                      CdsTmp_RcomRCOM_COMISSOES.AsCurrency := wTotal_Comis;
                      CdsTmp_Rcom.Post;
                   end;
                GravaControlEventos(wCodigo_rep);
            end;
       end
    else
       begin
           wCodigo_rep := EdtRep.Text;
           GravaControlEventos(wCodigo_rep);  // proc busca eventos
       end;
    screen.Cursor := CrDefault;
end;

Procedure TFormGimpRepr.GravaControlEventos(var wRepres:String);
// Objetivo : Busca Eventos do Repres.
//            Proc auxiliar da GravaControle
//            dá o Post na tabela TbTempcom
Var
Wcomissao, wTotal_deb,wTotal_cred:Double;
{ var wTotal_Comis = Public secao Private}
begin
    // **** PESQUISAR EVENTOS DO REPRESENTANTE ****
    wTotal_deb  := 0;
    wTotal_cred := 0;
    {Busca os eventos dos representantes}
    wSql1      := 'SELECT E1.EMP_CODIGO,E1.REP_CODIGO,E1.EVE_CODIGO,E2.EVE_DESCRI,E1.ERP_VALOR,E1.ERP_TIPO,E1.ERP_DATA,E1.ERP_COMPL,';
    wSql2      := 'E1.ERP_CODIGO,E1.ERP_IMPOSTO FROM EVE_RP01 E1 JOIN EVE0000 E2 ON (E2.EVE_CODIGO = E1.EVE_CODIGO) ';
    wSeleciona := 'WHERE E1.ERP_DATA BETWEEN '''+DataAmericana(wDataI)+''' AND '''+DataAmericana(wDataF)+''' AND E1.REP_CODIGO = '''+wRepres+'''';
    SqlCdsEventos.Close;
    SqlCdsEventos.CommandText := SQLDEF(iif(rgEmpresaLogada.ItemIndex = 0,'EXCLUSIVA','NAOEXCLUSIVA'),wSql1+wSql2,wSeleciona,'E1.REP_CODIGO,E1.ERP_DATA','E1.');
    SqlCdsEventos.Open;
    SqlCdsEventos.First;
    while (SqlCdsEventosREP_CODIGO.AsString=wRepres)and not(SqlCdsEventos.Eof) do
     begin
          if SqlCdsEventosERP_TIPO.AsString = 'D' then
            WTotal_deb := (WTotal_deb+SqlCdsEventosERP_VALOR.AsCurrency)
          else
            WTotal_cred := (WTotal_cred+SqlCdsEventosERP_VALOR.AsCurrency);
          //
          SqlCdsEventos.Next;
     end;
    if CdsTmp_RCom.State in [dsBrowse] then
       begin
           {se tabela nao esta em Insert é porque o repres nao teve venda entao
            dou Insert e gravo somente dados necessarios e de eventos }
           {Localiza o registro na tabela}
           {Busca dos dados do Representante}
           SqlCdsRepresentantes.Close;
           SqlCdsRepresentantes.CommandText := SQLDEF(iif(rgEmpresaLogada.ItemIndex = 0,'EXCLUSIVA','NAOEXCLUSIVA'),'SELECT R1.* FROM REP0000 R1 ','WHERE R1.REP_CODIGO = '''+wRepres+'''','R1.REP_CODIGO','R1.');
           SqlCdsRepresentantes.Open;
           if (not SqlCdsRepresentantes.IsEmpty) then
              begin
                  if CdsTmp_Rcom.Locate('REP_CODIGO',wRepres,[])= true then
                     begin
                         CdsTmp_RCom.Edit;
                     end
                  else
                     begin
                         CdsTmp_RCom.Append;
                     end;
                  CdsTmp_RcomEMP_CODIGO.AsString      := dbInicio.Empresa.EMP_CODIGO;
                  CdsTmp_RcomREP_CODIGO.AsString      := wRepres;
                  CdsTmp_RcomREP_GRUPO.AsString       := SqlCdsRepresentantesREP_GRUPO.AsString;
                  CdsTmp_RcomREP_RAZAO.AsString       := SqlCdsRepresentantesREP_RAZAO.AsString;
                  CdsTmp_RcomREP_AGENCIA.AsString     := SqlCdsRepresentantesREP_AGENCIA.AsString;
                  CdsTmp_RcomREP_CONTA.AsString       := SqlCdsRepresentantesREP_CONTA.AsString;
                  CdsTmp_RcomREP_BANCO.AsString       := SqlCdsRepresentantesREP_BANCO.AsString;
                  CdsTmp_RcomREP_BANCOFAVOR.AsString  := SqlCdsRepresentantesREP_BANCOFAVOR.AsString;
                  CdsTmp_RcomREP_CGC.AsString         := SqlCdsRepresentantesREP_CGC.AsString;
                  CdsTmp_RcomREP_TIPO.AsString        := SqlCdsRepresentantesREP_TIPO.AsString;
                  CdsTmp_RcomRCOM_CREDITOS.AsCurrency := wTotal_cred;
                  CdsTmp_RcomRCOM_DEBITOS.AsCurrency  := wTotal_deb;
                  // calcular imposto de renda se pessoa juridica
                  if SqlCdsRepresentantesREP_TIPO.AsString = 'J' then
                     begin
                         CdsTmp_RcomRCOM_IRRF.AsCurrency := SqlCdsParametrosPMT_IRRF.AsCurrency*(wTotal_Comis+WTotal_cred-WTotal_deb)/100;
                     end;
                  CdsTmp_Rcom.Post;
              end;
       end;
end;

Procedure TFormGimpRepr.DatasPriQz;
{ Objetivo :                                             }
{ Constroe a data  inicial e final da Primeira Quinzena  }
{ Busca informações da tabela TbParametros               }
{ Variáveis que recebem valores : wDataI e wDataF        }
//
var
  wDia,wDiaF, wMes, wAno:string;
begin
    wDia := Copy(SqlCdsParametrosPMT_1QZ_DIAS.AsString, 1, 2);
    wMes := EditMes.Text;
    wAno := EditAno.Text;
    if StrToInt(wDia) > 20 then
       begin
           wMes := IntToStr(StrToInt(EditMes.Text)-1);
           if wMes = '0' then
              begin
                  // data inicia no ultimo mes do ano anterior
                  wMes := '12';
                  WAno := IntToStr(StrToInt(EditAno.Text)-1);
              end;
       end;
    //
    // data inicial da primeira quinzena.
    wDataI :=DateTimeToStr(StrToDateTime(wDia+'/'+wMes+'/'+wAno));
    //data final da primeira quinzena.
    wDia := Copy(SqlCdsParametrosPMT_1QZ_DIAS.AsString, 3, 2);
    wDataF :=DateTimeToStr(StrToDateTime(WDia+'/'+EditMes.Text+'/'+EditAno.text));
    // Converter datas p/ padrao americano(MM/DD/YYYY).SQL só aceita assim.
//    wDataI := DataAmericana(wDataI);
//    wDataF := DataAmericana(wDataF);
end;

Procedure TFormGimpRepr.DatasSegQz;
{ Objetivo :                                             }
{ Constroe a data  inicial e final da Segunda Quinzena   }
{ Busca informações da tabela TbParametros               }
{ Variáveis que recebem valores : wDataI e wDataF        }
//
var
  wDia, wDiaF, wMes, wAno:string;
  wAnoInt, wMesInt:Integer;
Begin
    wDia := Copy(SqlCdsParametrosPMT_2QZ_DIAS.AsString, 1, 2);
//    data inicial da segunda quinzena.
    wDataI := (wDia+'/'+EditMes.Text+'/'+EditAno.text);
//    data final da segunda quinzena.
    wdiaF:= Copy(SqlCdsParametrosPMT_2QZ_DIAS.AsString, 3, 2);
    wMes := EditMes.Text;
    wAno := EditAno.Text;
    if wDiaF < wDia then  //o dia da dataF vai dar no inicio do proximo mes
       begin
           wMes := IntToStr(StrToInt(EditMes.Text)+1);
           wMes := StrZero(wMes,2);
       end;
//
    if wMes = '13' then
       Begin
           // A data final vai dar no inicio do proximo ANO
           wMes := '01';
           wAno := IntToStr(StrToInt(EditAno.Text)+1);
       end;
//
    wDataF := (wDiaF+'/'+wMes+'/'+wAno);
    wMesInt := StrToInt(wMes);
//   Acertar ultimo dia do mes quando 2a quinzena terminar dia 30
    if wDiaf = '30' then
       begin
           Case wMesInt of
              1,3,5,7,8,10,12: wDataF:= ('31/'+wMes+'/'+wAno);
              4,6,9,11 :  wDataF:= ('30/'+wMes+'/'+wAno)
           else
              // verificar 2 (fevereiro)
              wAnoInt := StrToInt(wAno);
              if ((wAnoInt/4) = Round(wAnoInt/4)) then
                 // é bisexto
                 wDataF:= ('29/'+wMes+'/'+wAno)
              else
                 wDataF:= ('28/'+wMes+'/'+wAno);
           end;
       end;
//    Converter datas p/ padrao americano(MM/DD/YYYY).SQL só aceita assim
//    wDataI := DataAmericana(wDataI);
//    wDataF := DataAmericana(wDataF);
end;

Procedure TFormGimpRepr.DatasPrimeiraQuinzenaDefinida;
var
  wDia,wDiaF, wMes, wAno:string;
begin
    wDia := Copy(edPrimeira.Text, 1, 2);
    wMes := EditMes.Text;
    wAno := EditAno.Text;
    if StrToInt(wDia) > 20 then
       begin
           wMes := IntToStr(StrToInt(EditMes.Text)-1);
           if wMes = '0' then
              begin
                  // data inicia no ultimo mes do ano anterior
                  wMes := '12';
                  WAno := IntToStr(StrToInt(EditAno.Text)-1);
              end;
       end;
    //
    // data inicial da primeira quinzena.
    wDataI :=DateTimeToStr(StrToDateTime(wDia+'/'+wMes+'/'+wAno));
    //data final da primeira quinzena.
    wDia := Copy(edPrimeira.Text, 3, 2);
    wDataF :=DateTimeToStr(StrToDateTime(WDia+'/'+EditMes.Text+'/'+EditAno.text));
end;

procedure TFormGimpRepr.DatasSegundaQuinzenaDefinida;
var
  wDia, wDiaF, wMes, wAno:string;
  wAnoInt, wMesInt:Integer;
Begin
    wDia := Copy(edPrimeira.Text, 1, 2);
//    data inicial da segunda quinzena.
    wDataI := (wDia+'/'+EditMes.Text+'/'+EditAno.text);
//    data final da segunda quinzena.
    wdiaF:= Copy(edSegunda.Text, 3, 2);
    wMes := EditMes.Text;
    wAno := EditAno.Text;
    if wDiaF < wDia then  //o dia da dataF vai dar no inicio do proximo mes
       begin
           wMes := IntToStr(StrToInt(EditMes.Text)+1);
           wMes := StrZero(wMes,2);
       end;
//
    if wMes = '13' then
       Begin
           // A data final vai dar no inicio do proximo ANO
           wMes := '01';
           wAno := IntToStr(StrToInt(EditAno.Text)+1);
       end;
//
    wDataF := (wDiaF+'/'+wMes+'/'+wAno);
    wMesInt := StrToInt(wMes);
//   Acertar ultimo dia do mes quando 2a quinzena terminar dia 30
    if wDiaf = '30' then
       begin
           Case wMesInt of
              1,3,5,7,8,10,12: wDataF:= ('31/'+wMes+'/'+wAno);
              4,6,9,11 :  wDataF:= ('30/'+wMes+'/'+wAno)
           else
              // verificar 2 (fevereiro)
              wAnoInt := StrToInt(wAno);
              if ((wAnoInt/4) = Round(wAnoInt/4)) then
                 // é bisexto
                 wDataF:= ('29/'+wMes+'/'+wAno)
              else
                 wDataF:= ('28/'+wMes+'/'+wAno);
           end;
       end;
end;




//*** INICIO DO FILTRO DO BORDERO ***\\
//***********************************************************************
procedure TFormGimpRepr.BitOkClick(Sender: tObject);
begin
    if (LTBoxRelatorio.ItemIndex in [0,1,2,7]) then
    begin
           {Obrigatorio digitar mes/ano nos relatorios 0,1,2}
           if (EditMes.Text = '') Then
              begin
                  MessageBeep($FFFFFF);
                  uteis.aviso('Você deve digitar o mês !');
                  EditMes.Text := '';
                  EditMes.SetFocus;
                  exit;
              end;
           // construção de datas para seleção do relatório
           if radDefinir.checked  then
           begin
              DatasPrimeiraQuinzenaDefinida;       // constroi datas da quinzena definida
              wAuxdataI := wDataI;   // Guarda dataI da primeira quinzena
              DatasSegundaQuinzenaDefinida;
              wDataI    := WauxdataI;
           end
           else
           if Radprimeira.checked  then
              DatasPriQz       // constroe datas da primeira quinzena
           else
              if Radsegunda.checked  then
                 DatasSegQz     // constroe datas da segunda quinzena
              else
                 // trabalhar com as duas quinzenas
                 begin
                     DatasPriQz;
                     wAuxdataI := wDataI;   // Guarda dataI da primeira quinzena
                     DatasSegQz;
                     wDataI    := WauxdataI;
                 end;
           if (LTBoxRelatorio.ItemIndex = 0) then
           begin
             CriaRelComissaoRep01;
             EdtRepExit(sender);
             exit;
           end;
           if (LTBoxRelatorio.ItemIndex in [1,7]) then
              begin
                  CriaRelRepre00;
                  EdtRepExit(sender);
                  exit;
              end;
           if (LTBoxRelatorio.ItemIndex = 2) then
               begin
                   if EdtRep.Text <> '999' then
                      begin
                          CriaRelRepre02;
                          EdtRepExit(sender);
                      end
                   else
                      begin
                          if (RadGer.checked ) then
                             uteis.aviso('Informe um Gerente !')
                          else
                             uteis.aviso('Informe um Supervisor !');
                          EdtRep.SetFocus;
                      end;
                   Exit;
               end;
    end;
    // reltorio de comissao por produto e tabela escalonada
    if (LTBoxRelatorio.ItemIndex = 3) then
       begin
            CriaRelComissaoProd;
            EdtRepExit(sender);
           exit;
       end;
   // listagem resumida de representante
   if (LTBoxRelatorio.ItemIndex = 4) then
       begin
            CriaRelRepre03;
            EdtRepExit(sender);
           exit;
       end;
    // listagem detalhada de representante
    if (LTBoxRelatorio.ItemIndex = 5) then
       begin
           CriaRelRepre03;
           EdtRepExit(sender);
           exit;
       end;
    // comissao por tipo de produto - analisar melhor este relatório, viabilizr uso em 04/02/2011 - Márcio
    if (LTBoxRelatorio.ItemIndex = 6) then
       begin
           ImprimiComissaoTipo;
           EdtRepExit(sender);
           exit;
       end;


end;
procedure TFormGimpRepr.BitCancelarClick(Sender: tObject);
begin
    Close;
end;

procedure TFormGimpRepr.EditMesExit(Sender: tObject);
begin
    if not (ActiveControl.name = 'BitCancelar') then
       begin
           if EditMes.Text = '' then
              begin
                  MessageBeep($ffffff);
                  uteis.aviso('Você deve digitar um mês !');
                  EditMes.SetFocus;
                  exit;
              end;
       end;
    //
    EditMes.Text := StrZero(EditMes.Text,EditMes.MaxLength);
    If (EditMes.text < '01') and (EditMes.Text <> '') then
       begin
           MessageBeep($FFFFFFFF);
           uteis.aviso('Você deve digitar o mês Correto!');
           EditMes.setfocus;
       end;
    //
    if EditMes.Text > '12' then
       begin
           MessageBeep($ffffffff);
           uteis.aviso('Você deve digitar o mês correto!');
           EditMes.SetFocus;
       end;
end;

procedure TFormGimpRepr.BitConfigClick(Sender: tObject);
begin
    PrinterBordero.Execute;
end;

procedure TFormGimpRepr.EditAnoExit(Sender: tObject);
begin
    if not (ActiveControl.name = 'BitCancelar') then
       begin
           if EditAno.Text = '' then
              begin
                  MessageBeep($ffffff);
                  uteis.aviso('Você deve digitar o ano !');
                  EditAno.SetFocus;
                  exit;
              end;
       end;
    //
    if not (ActiveControl.name = 'BitCancelar') then
       begin
           if Length(EditAno.Text) < 4 then
              begin
                  MessageBeep($ffffffff);
                  uteis.aviso('Você deve digitar o ano inteiro!');
                  EditAno.SetFocus;
              end;
       end;
end;

procedure TFormGimpRepr.LTBoxRelatorioClick(Sender: tObject);
begin
    LayOutdoForm;
    EditObs01.Text := '';
    EditObs02.Text := '';
end;

procedure TFormGimpRepr.ltituloGetText(Sender: TObject; var Text: string);
begin
  inherited;
  text:= 'Relatório de comissões  - Mês/Ano : ' +EditMes.Text + '/'+EditAno.Text;
end;

procedure TFormGimpRepr.LayOutdoForm;
begin

    if (LTBoxRelatorio.ItemIndex = 0) then
      rbExcel.Visible := True
    else
      rbExcel.Visible := False;

    if (LTBoxRelatorio.ItemIndex = 0) or (LTBoxRelatorio.ItemIndex = 7) then
       begin
           GroupSelecao.Visible   := True; //100
           PanEquipe.Visible      := False;
           GroupQuinzenas.Visible := True; //227 145
           GroupPeriodo.Visible   := True; //267 187
           pnPeriodo1.Visible:=True;

           GroupAtivos.Visible    := False;
           GroupClassif.Visible   := False;
           GroupGrupo.Visible     := False;
           GroupObs.Visible       := False;
           gbProduto.Visible      := False;
           {Configurar formulario}
           GroupSelecao.Top       := 100;
           GroupQuinzenas.Top     := 150;
           GroupPeriodo.Top       := 192;
           GroupConfig.Top        := 243;
           FormGimpRepr.AutoSize  := True;
           FormGimpRepr.AutoSize  := False;
           GpTipoRel.Visible      := False;
           EdtRep.SetFocus;
       end;
    if (LTBoxRelatorio.ItemIndex = 3) then
       begin
           GroupSelecao.Visible   := True; //100
           PanEquipe.Visible      := False;
           GroupQuinzenas.Visible := True; //227 145
           GroupPeriodo.Visible   := True; //267 187
           pnPeriodo1.Visible     := True;
           gbProduto.Visible      := True;

           GroupAtivos.Visible    := False;
           GroupClassif.Visible   := False;
           GroupGrupo.Visible     := False;
           GroupObs.Visible       := False;
           {Configurar formulario}
           GroupSelecao.Top       := 100;
           GroupQuinzenas.Top     := 150;
           GroupPeriodo.Top       := 192;
           gbProduto.top          := 240;
           GroupConfig.Top        := 293;
           FormGimpRepr.AutoSize  := True;
           FormGimpRepr.AutoSize  := False;
           GpTipoRel.Visible      := False;
           EdtRep.SetFocus;
       end;
    if (LTBoxRelatorio.ItemIndex = 1) or (LTBoxRelatorio.ItemIndex = 2) then
       begin
           GroupSelecao.Visible   := True;
           if (LTBoxRelatorio.ItemIndex = 2) then
              begin
                  RadGer.Checked            := true;
                  PanEquipe.Visible         := true;
                  PanEquipe.TabOrder        := 0;
                  EdtRep.TabOrder           := 1;
                  CbRepresentantes.TabOrder := 2;
                  LabelRepre.Caption        := IIF(RadGer.checked ,'Gerente:','Supervisor:');
              end
           else
              begin
                  PanEquipe.Visible         := False;
                  EdtRep.TabOrder           := 0;
                  CbRepresentantes.TabOrder := 1;
                  LabelRepre.Caption        := 'Vendedor:';
              end;
           GroupQuinzenas.Visible := True;
           GroupPeriodo.Visible   := True;
           GroupObs.Visible       := True;
           GroupClassif.Visible   := False;
           GroupAtivos.Visible    := False;
           GroupGrupo.Visible     := False;
           gbProduto.Visible      := False;
           GroupSelecao.top       := 100;
           GroupQuinzenas.Top     := 150;
           GroupPeriodo.Top       := 192;
           GroupObs.Top           := 248;
           GroupConfig.Top        := 302;
           FormGimpRepr.AutoSize  := True;
           FormGimpRepr.AutoSize  := False;
           GpTipoRel.Visible      := False;
           EdtRep.SetFocus;
       end;
    if (LTBoxRelatorio.ItemIndex = 4) OR (LTBoxRelatorio.ItemIndex = 5)then
       begin
           GroupSelecao.Visible   := False;
           GroupPeriodo.Visible   := False;
           GroupQuinzenas.Visible := False;
           GroupObs.Visible       := False;
           gbProduto.Visible      := False;
           GroupAtivos.Visible    := True;
           GroupClassif.Visible   := True;
           GroupGrupo.Visible     := True;
           GroupAtivos.Top        := 100;
           GroupClassif.Top       := 145;
           GroupGrupo.Top         := 187;
           GroupConfig.Top        := 230;
           FormGimpRepr.AutoSize  := True;
           FormGimpRepr.AutoSize  := False;
           GpTipoRel.Visible      := False;
       end;
    if LTBoxRelatorio.ItemIndex = 6 then
       begin
           GroupSelecao.Visible   := True;
           GroupPeriodo.Visible   := True;
           GroupQuinzenas.Visible := True;
           GroupObs.Visible       := False;
           GroupAtivos.Visible    := False;
           GroupClassif.Visible   := False;
           GroupGrupo.Visible     := False;
           gbProduto.Visible      := False;
           GpTipoRel.Visible      := true;
           RadGer.Visible         := false;
           RadSup.Visible         := False;
           GpTipoRel.Top          := 149;
           GroupQuinzenas.Top     := 192;
           GroupPeriodo.Top       := 231;
           GroupConfig.Top        := 323;
           FormGimpRepr.AutoSize  := True;
           FormGimpRepr.AutoSize  := False;
       end;

    PreencheCombo;
end;

procedure TFormGimpRepr.lempresaGetText(Sender: TObject; var Text: string);
begin
  inherited;
  text:= DBInicio.Empresa.FANTASIA;
end;

procedure TFormGimpRepr.CriaRelRepre00;
begin
    screen.Cursor := CrHourglass;
    wSeleciona := '';
    wOrdem     := '';
    if SqlCdsParametrosPMT_BORDERO_COM.AsString = 'E' then//Emissao
       begin
           // retirado o fat cancelada wSeleciona := 'WHERE F2.FPC_DTEMIS BETWEEN '''+DataAmericana(wDataI)+''' AND '''+DataAmericana(wDataF)+''' AND F1.FAT_CANCELADA=''N''';
           wSeleciona := 'WHERE FPC_DTEMIS BETWEEN '''+DataAmericana(wDataI)+''' AND '''+DataAmericana(wDataF)+'''';
           wOrdem     := 'REP_CODIGO,FPC_DTEMIS,CLI_RAZAO';
       end;
    if SqlCdsParametrosPMT_BORDERO_COM.AsString = 'V' then //Vencimento
       begin
           wSeleciona := 'WHERE FPC_VENCTO BETWEEN '''+DataAmericana(wDataI)+''' AND '''+DataAmericana(wDataF)+'''';
           wOrdem     := 'REP_CODIGO,FPC_VENCTO,CLI_RAZAO';
       end;
    // tirado isto ->(F2.FPC_VLPARC-FPC_VLPAGO) se <= 0 nao tem valor pendente,parcela nao foi paga parcial.Só deve pagar comissao quando pagto total da parcela
    if SqlCdsParametrosPMT_BORDERO_COM.AsString = 'P' then //Pagamento
       begin
           //wSeleciona := 'WHERE ((F2.FPC_PAGTO BETWEEN '+QuotedStr(DataAmericana(wDataI))+' AND '+QuotedStr(DataAmericana(wDataF))+')OR(F2.fpc_vencto BETWEEN '+QuotedStr(DataAmericana(wDataI))+' AND '+QuotedStr(DataAmericana(wDataF))+'))';
           wSeleciona := 'WHERE ((FPC_PAGTO BETWEEN '+QuotedStr(DataAmericana(wDataI))+' AND '+QuotedStr(DataAmericana(wDataF))+' AND fpc_vencto <= '+QuotedStr(DataAmericana(wDataF))+')OR(fpc_vencto BETWEEN '+QuotedStr(DataAmericana(wDataI))+' AND '+QuotedStr(DataAmericana(wDataF))+' AND FPC_PAGTO < fpc_vencto))';
           wOrdem     := 'REP_CODIGO,FPC_VENCTO,CLI_RAZAO';
       end;

    if (EdtRep.Text <> '999') then
       begin
           wSeleciona := wSeleciona + ' AND REP_CODIGO = '''+EdtRep.Text+'''';
       end
    else
       begin
           wSeleciona := wSeleciona + '';
       end;
    try
      wSql1 := 'SELECT REP_NOME,REP_RAZAO,REP_AGENCIA,REP_CONTA,REP_BANCO,REP_BANCOFAVOR,nf_num_nfe, '+
               ' FAT_CODIGO,FPC_NUMER,REP_CODIGO, FPC_DTEMIS,FPC_VLPARC,FPC_PAGTO,CLI_CODIGO,CLI_RAZAO,CLI_UF, '+
               '  FPC_VENCTO,FPC_VLPAGO,FPC_NPARCELAS,FPC_DESCONTADO,FAT_CANCELADA,PED_CODIGO,FAT_QTDITEM,FAT_VL_LIQ,FAT_VLNCOMIS, '+
               '  FAT_DTEMIS,FAT_COMIS1,FAT_COMIS2,  FAT_COMIS3,FAT_VLFAT,REP_FUNCAO,fat_icmsret,fat_vl_ipi  '+
               '  FROM VW_VENDEDOR_COMISSAO                                                                  ';
      if SqlCdsParametrosPMT_PAGTO_COM_TP.AsString = 'T' then
         begin
             wSeleciona := wSeleciona + ' AND FPC_NUMER <= ''01''';
         end
      else
         begin
             wSeleciona := wSeleciona + '';
         end;
      //
      wSeleciona := wSeleciona + ' AND FPC_EXCLUSAO = ''N''';
      //
      SqlCdsComissao.Close;
      SqlCdsComissao.CommandText := SQLDEF(iif(rgEmpresaLogada.ItemIndex = 0,'EXCLUSIVA','NAOEXCLUSIVA'),wSql1,wSeleciona,wOrdem,'');
      SqlCdsComissao.Open;
    except on E:EDataBaseError do
      uteis.erro  (pchar('Erro ao abrir as tabelas ! '+e.message));
    end;
    if (LTBoxRelatorio.ItemIndex = 0) then
       ImprimirBordero;
    if (LTBoxRelatorio.ItemIndex = 7) then
       ImprimirBorderoAlternativo;
    if (LTBoxRelatorio.ItemIndex = 1) then
       begin
           if not (CdsTmp_RCom.Active) then
              CdsTmp_Rcom.CreateDataSet;
            {limpar arquivo}
           CdsTmp_Rcom.EmptyDataSet;
           GravaControle;
           CdsTmp_Rcom.First;
           try
             {Busca os eventos dos representantes}
             wSql1      := 'SELECT E1.EMP_CODIGO,E1.REP_CODIGO,E1.EVE_CODIGO,E2.EVE_DESCRI,E1.ERP_VALOR,E1.ERP_TIPO,E1.ERP_DATA,E1.ERP_COMPL,';
             wSql2      := 'E1.ERP_CODIGO,E1.ERP_IMPOSTO FROM EVE_RP01 E1 JOIN EVE0000 E2 ON (E2.EVE_CODIGO = E1.EVE_CODIGO) ';
             wSeleciona := 'WHERE E1.ERP_DATA BETWEEN '''+DataAmericana(wDataI)+''' AND '''+DataAmericana(wDataF)+'''';
             SqlCdsEventos.Close;
             SqlCdsEventos.CommandText := SQLDEF(iif(rgEmpresaLogada.ItemIndex = 0,'EXCLUSIVA','NAOEXCLUSIVA'),wSql1+wSql2,wSeleciona,'E1.REP_CODIGO,E1.ERP_DATA','E1.');
             SqlCdsEventos.Open;
           except on E:EdataBaseError do
             uteis.erro  (pchar('Erro ao localizar os eventos ! '+e.message));
           end;
           LBL_EMPRESA.Caption      := dbInicio.Empresa.RAZAO;
           if RadPrimeira.checked  then
              LBL_QUINZENA.Caption    := '1a. QUINZENA'
           else
              if RadSegunda.checked   then
                 LBL_QUINZENA.Caption := '2a. QUINZENA'
              else
                 LBL_QUINZENA.Caption := '1a. E 2a. QUINZENA';
           {Preenche os dados do recibo}
           LBL_PERIODO.Caption := 'Período de '+wDataI+' a '+wDataF;
           Lbl_lin03.Caption   := dbInicio.Empresa.RAZAO+'.';
           LBL_OBS01.Caption   := EditObs01.Text;
           LBL_OBS02.Caption   := EditObs02.Text;
           if RadVideo.Checked then
              begin
                  ppRepTmp_Rcom.DeviceType := 'Screen';
              end else
           if RadImpressora.Checked then
              begin
                  ppRepTmp_Rcom.DeviceType := 'Printer';
              end;
           RBuilderPreview(ppRepTmp_Rcom);
       end;
    screen.Cursor := crDefault;
end;


procedure TformGimpRepr.CriaRelComissaoProd;
{ busca comissao pela tabela de produtos vendidos
  abertura do Sql sem a funcao SQLDEF mas verifica pela funcao Share 
 }
begin
   screen.Cursor := CrHourglass;
   wSeleciona := ' WHERE fpc.EMP_CODIGO = fat.EMP_CODIGO  ';
   wOrdem     := '';
   // forma a data do mes - junta as duas quinzenas
   DataDuas;
   //
   if Radprimeira.checked  then
      DatasPriQz       // constroe datas da primeira quinzena
   else
      if Radsegunda.checked  then
         DatasSegQz     // constroe datas da segunda quinzena
      else
         // trabalhar com as duas quinzenas
         begin
             DataDuas;
         end;
    //
    if SqlCdsParametrosPMT_BORDERO_COM.AsString = 'E' then//Emissao
       begin
           // pegar somente parcela 01 pois pode ter mais de uma parcela com a mesma data de emissao
           wSeleciona := wSeleciona +  ' AND fpc.FPC_DTEMIS BETWEEN '''+DataAmericana(wDataI)+''' AND '''+DataAmericana(wDataF)+''' AND fpc.FPC_NUMER = ''01''';
           wOrdem     := ' ORDER BY fpc.REP_CODIGO,prd.LIN_CODIGO,fpc.FPC_DTEMIS,cli.CLI_RAZAO';
           LBL_CP_LTITULO2.Caption := 'Por Emissão - Período de  : '+wDataI+' até : '+wdataF;
       end;
    if SqlCdsParametrosPMT_BORDERO_COM.AsString = 'V' then //Vencimento
       begin
           wSeleciona := wSeleciona +  ' AND fpc.FPC_VENCTO BETWEEN '''+DataAmericana(wDataI)+''' AND '''+DataAmericana(wDataF)+'''';
           wOrdem     := ' ORDER BY fpc.REP_CODIGO,lin.LIN_CODIGO,fpc.FPC_VENCTO,cli.CLI_RAZAO';
           LBL_CP_LTITULO2.Caption := 'Por Vencimento - Período de  : '+wDataI+' até : '+wdataF;
       end;
    if SqlCdsParametrosPMT_BORDERO_COM.AsString = 'P' then //Pagamento
       begin
           //wSeleciona := ' AND T2.FPC_PAGTO BETWEEN '''+DataAmericana(wDataI)+''' AND '''+DataAmericana(wDataF)+'''';
           wSeleciona := wSeleciona + ' AND ((fpc.FPC_PAGTO BETWEEN '+QuotedStr(DataAmericana(wDataI))+' AND '+QuotedStr(DataAmericana(wDataF))+' AND fpc.fpc_vencto <= '+QuotedStr(DataAmericana(wDataF))+')OR(fpc.fpc_vencto BETWEEN '+QuotedStr(DataAmericana(wDataI))+' AND '+QuotedStr(DataAmericana(wDataF))+' AND fpc.FPC_PAGTO < fpc.fpc_vencto))';
           wOrdem     := ' ORDER BY fpc.REP_CODIGO,prd.LIN_CODIGO,fpc.FPC_PAGTO,cli.CLI_RAZAO';
           LBL_CP_LTITULO2.Caption := 'Por Pagamento - Período de  : '+wDataI+' até : '+wdataF;
       end;
    // selecionar todos ou determinado representante

    if (EdtRep.Text <> '999') then
       begin
           wSeleciona := wSeleciona + ' AND fpc.REP_CODIGO = '''+EdtRep.Text+'''';
       end;

    if cbProduto.idRetorno <> '' then
      wSeleciona := wSeleciona + ' AND nfi.PRD_REFER = ' + QuotedStr(cbProduto.idRetorno)  ;

    wSeleciona := wSeleciona + ' and fpc.EMP_CODIGO = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO);
    try
     wSql1  :=
               ' SELECT DISTINCT ' +
               '   fat.FAT_CODIGO, ' +
               '   nfi.PRD_REFER, ' +
               '   nfi.NF_QTDE  AS FIT_QTDE, ' +
               '   prd.PRD_PVENDA - prd.PRD_PCUSTO AS FIT_PRECO, ' +
               '   prd.PRD_COMISSAO AS FIT_COMIS, ' +
               '   fpc.CLI_CODIGO, ' +
               '   fpc.FPC_DTEMIS, ' +
               '   fpc.FPC_PAGTO, ' +
               '   fpc.FPC_VENCTO, ' +
               '   fpc.EMP_CODIGO, ' +
               '   fpc.REP_CODIGO, ' +
               '   fat.PED_CODIGO, ' +
               '   prd.PRD_DESCRI, ' +
               '   prd.LIN_CODIGO, ' +
               '   cli.CLI_RAZAO, ' +
               '   cli.CLI_CIDADE, ' +
               '   rep.REP_NOME, ' +
               '   lin.LIN_DESCRI ' +
               ' FROM FAT_PC01 fpc ' +
               ' JOIN FAT0000 fat ON	(fat.FAT_CODIGO = fpc.FAT_CODIGO) ' +
               ' JOIN NF0001 nf ON (nf.NF_NOTANUMBER = fat.FAT_CODIGO) ' +
               ' JOIN NF_IT01 nfi ON (nfi.NF_IT_NOTANUMER = nf.NF_NUM_NFE) ' +
               ' JOIN PRD0000 prd ON	(prd.PRD_REFER = nfi.PRD_REFER) ' +
               ' JOIN CLI0000 cli ON	(cli.CLI_CODIGO = fat.CLI_CODIGO) ' +
               ' JOIN REP0000 rep ON	(rep.REP_CODIGO = fpc.REP_CODIGO) ' +
               ' LEFT JOIN PRD_LINHA lin ON	(lin.LIN_CODIGO = prd.LIN_CODIGO) ' ;



     uteis.aviso('Este relatório poderá levar alguns minutos para processar, por favor aguarde...');
     // abrir exclusivo por empresa
     if Share('RECEBER') = 'E' Then
       begin
       SQLCdsComissaoProd.Close;
       SQLCdsComissaoProd.CommandText := wSql1+wSeleciona+wOrdem;
       if DBInicio.IsDesenvolvimento then
         CopyToClipBoard(SQLCdsComissaoProd.CommandText);
       SQLCdsComissaoProd.Open;
       end;
    except on E:EDataBaseError do
      uteis.erro  (pchar('Erro ao abrir as tabelas ! '+e.message));
    end;
    //
    LBL_CP_EMPRESA.Caption  := dbInicio.Empresa.RAZAO;
    LBL_CP_LTITULO1.Caption := 'RELATÓRIO DE COMISSÕES POR PRODUTO ';
    //
    // Imprimir relatório
    if RadVideo.Checked then
         begin
          ppRComissaoProd.DeviceType:='Screen';
          RBuilderPreview(ppRComissaoProd);
         end;

     if RadImpressora.Checked then
         begin
          ppRComissaoProd.DeviceType:='Printer';
          ppRComissaoProd.ShowPrintDialog := true;
          ppRComissaoProd.Print;
         end;


    screen.Cursor := crDefault;


end;


procedure TFormGimpRepr.CriaRelComissaoRep01;
var
   wcomissao: Currency;
    wValor_Tot_Geral,  wTotal_Comis : Double;
   wLinha:Integer;
   wCodigo_Rep, wMes_Ano: string;
   lMultiplic: Real;
   lValorRetirarParcela: Currency ;
  lista: TStringList;

begin
   screen.Cursor := CrHourglass;
   wSeleciona := '';
   wOrdem     := '';
   // forma a data do mes - junta as duas quinzenas
   {
   DataDuas;
   //
   if Radprimeira.checked  then
      DatasPriQz       // constroe datas da primeira quinzena
   else
      if Radsegunda.checked  then
         DatasSegQz     // constroe datas da segunda quinzena
      else
         // trabalhar com as duas quinzenas
         begin
             DataDuas;
         end;
}
    if SqlCdsParametrosPMT_BORDERO_COM.AsString = 'E' then//Emissao
       begin
           // retirado o fat cancelada wSeleciona := 'WHERE F2.FPC_DTEMIS BETWEEN '''+DataAmericana(wDataI)+''' AND '''+DataAmericana(wDataF)+''' AND F1.FAT_CANCELADA=''N''';
           wSeleciona := 'WHERE FPC_DTEMIS BETWEEN '''+DataAmericana(wDataI)+''' AND '''+DataAmericana(wDataF)+'''';
           wOrdem     := 'REP_CODIGO,FPC_DTEMIS,CLI_RAZAO';
       end;
    if SqlCdsParametrosPMT_BORDERO_COM.AsString = 'V' then //Vencimento
       begin
           wSeleciona := 'WHERE FPC_VENCTO BETWEEN '''+DataAmericana(wDataI)+''' AND '''+DataAmericana(wDataF)+'''';
           wOrdem     := 'REP_CODIGO,FPC_VENCTO,CLI_RAZAO';
       end;

    if SqlCdsParametrosPMT_BORDERO_COM.AsString = 'P' then //Pagamento
       begin
           wSeleciona := 'WHERE ((FPC_PAGTO BETWEEN '+QuotedStr(DataAmericana(wDataI))+' AND '+QuotedStr(DataAmericana(wDataF))+' AND fpc_vencto <= '+QuotedStr(DataAmericana(wDataF))+')OR(fpc_vencto BETWEEN '+QuotedStr(DataAmericana(wDataI))+' AND '+QuotedStr(DataAmericana(wDataF))+' AND FPC_PAGTO < fpc_vencto))';
           wOrdem     := 'REP_CODIGO,FPC_VENCTO,CLI_RAZAO';
       end;

    if (EdtRep.Text <> '999') then
       begin
           wSeleciona := wSeleciona + ' AND REP_CODIGO = '''+EdtRep.Text+'''';
       end
    else
       begin
           wSeleciona := wSeleciona + '';
       end;
    try
      wSql1 :='SELECT FPG_REGISTRO, CASE REP_FUNCAO '+
              ' WHEN ''R''  THEN REP_NOME ||'' (Vendedor)''   '+
              ' WHEN ''T''  THEN REP_NOME ||'' (Televendas)'' '+
              ' WHEN ''S''  THEN REP_NOME ||'' (Supervisor)'' '+
              ' WHEN ''G''  THEN REP_NOME ||'' (Gerente)''    '+
              'end REP_NOME, '+
              ' REP_RAZAO,REP_AGENCIA,REP_CONTA,REP_BANCO,REP_BANCOFAVOR,nf_num_nfe, '+
              ' FAT_CODIGO,FPC_NUMER,REP_CODIGO, FPC_DTEMIS,FPC_VLPARC,FPC_PAGTO,CLI_CODIGO,CLI_RAZAO,CLI_UF, '+
              '  FPC_VENCTO,FPC_VLPAGO,FPC_NPARCELAS,FPC_DESCONTADO,FAT_CANCELADA,PED_CODIGO,FAT_QTDITEM,FAT_VL_LIQ,FAT_VLNCOMIS, '+
              '  FAT_DTEMIS,FAT_COMIS1,FAT_COMIS2,  FAT_COMIS3,FAT_VLFAT,REP_FUNCAO,fat_icmsret,fat_vl_ipi  '+
              '  FROM VW_VENDEDOR_COMISSAO  vw                                                                ';

      if SqlCdsParametrosPMT_PAGTO_COM_TP.AsString = 'T' then
         begin
             wSeleciona := wSeleciona + ' AND ((FPC_NUMER = ''01'')';
             wSeleciona := wSeleciona + ' OR (SELECT COUNT(fp.FPG_REGISTRO) FROM FAT_PC01 fp WHERE fp.FAT_CODIGO = vw.FAT_CODIGO  AND vw.FPG_REGISTRO = ' + IntToStr(StrToIntDef(DBInicio.GetParametroSistema('PMT_LANCA_CC_VERBA_FPG_REGISTRO'), 0)) + '	) = 1  )'
         end
      else
         begin
             wSeleciona := wSeleciona + '';
         end;
      //
      wSeleciona := wSeleciona + ' AND FPC_EXCLUSAO = ''N''';

      //

      SqlCdsComissaoPedido.Close;
      SqlCdsComissaoPedido.CommandText := SQLDEF(iif(rgEmpresaLogada.ItemIndex = 0,'EXCLUSIVA','NAOEXCLUSIVA'),wSql1,wSeleciona,wOrdem,'');
      if dbInicio.isDesenvolvimento then
        CopyToClipBoard(SqlCdsComissaoPedido.CommandText);
      SqlCdsComissaoPedido.Open;
    except on E:EDataBaseError do
      uteis.erro  (pchar('Erro ao abrir as tabelas ! '+e.message));
    end;
      SqlCdsComissaoPedido.First;
      while not SqlCdsComissaoPedido.Eof do
      begin
        if not (SqlCdsComissaoPedido.State in dsEditModes) then
               SqlCdsComissaoPedido.Edit;

        if SqlCdsParametrosPMT_COMIS_SOBRE_DIF_VENDA_CUSTO.AsString = 'S' then // Pagar comissão somente sobre o valor da diferença entre o Preço de Venda e o Preço de Custo
        begin







              SqlCdsComissaoPedidoFAT_VL_LIQ.AsCurrency := 0;
              SqlCdsComissaoPedidoFAT_VLFAT.AsCurrency := 0;

              qAux.Close;
              qAux.SQL.Text := 'SELECT DISTINCT (prd.PRD_PVENDA - prd.PRD_PCUSTO) AS FAT_VL_LIQ, ((prd.PRD_PVENDA - prd.PRD_PCUSTO) / 100 * prd.PRD_COMISSAO)  AS FAT_VLNCOMIS ' +
                               ' FROM FAT0000 fat ' +
                               ' JOIN FAT_PC01 fp ON (fp.FAT_CODIGO  = fat.FAT_CODIGO AND fp.EMP_CODIGO = fat.EMP_CODIGO ) ' +
                               ' JOIN PED_IT01 pit ON (pit.PED_CODIGO = fat.PED_CODIGO) ' +
                               ' JOIN PRD0000 prd ON (prd.PRD_CODIGO = pit.PRD_CODIGO) ' +
                               ' WHERE fat.PED_CODIGO = ' + QuotedStr(SqlCdsComissaoPedidoPED_CODIGO.AsString) +
                               ' AND fat.EMP_CODIGO = ' + QuotedStr(DBInicio.EMP_CODIGO) ;
              qAux.Open;
              while not qAux.Eof do
              begin
                SqlCdsComissaoPedidoFAT_VLNCOMIS.AsCurrency := SqlCdsComissaoPedidoFAT_VLNCOMIS.AsCurrency + qAux.FieldByName('FAT_VLNCOMIS').AsCurrency;
                SqlCdsComissaoPedidoFAT_VL_LIQ.AsCurrency := SqlCdsComissaoPedidoFAT_VL_LIQ.AsCurrency + qAux.FieldByName('FAT_VL_LIQ').AsCurrency;
                SqlCdsComissaoPedidoFAT_VLFAT.AsCurrency := SqlCdsComissaoPedidoFAT_VLFAT.AsCurrency  + qAux.FieldByName('FAT_VL_LIQ').AsCurrency;
                qAux.Next;
              end;







          if SqlCdsParametrosPMT_PAGTO_COM_TP.AsString = 'T' then      // TOTAL DA NOTA
          begin
            SqlCdsComissaoPedidoVL_LIQ.AsCurrency :=   SqlCdsComissaoPedidoFAT_VL_LIQ.AsCurrency;
            SqlCdsComissaoPedidoVLNCOMIS.AsCurrency := SqlCdsComissaoPEDIDOFAT_VLNCOMIS.AsCurrency ;
            wcomissao := SqlCdsComissaoPedidoVLNCOMIS.AsCurrency;
            if SqlCdsComissaoPedidoFAT_COMIS1.Value=0 then
                SqlCdsComissaoPedidoComissao.Value := 0
            else
            begin
                SqlCdsComissaoPedidoComissao.Value :=  wcomissao;
            end;

          end
          else
          begin  // por parcelas







             SqlCdsComissaoPedidoParcelas.AsString :=   (SqlCdsComissaoPedidoFPC_NUMER.AsString+'/'+SqlCdsComissaoPedidoFPC_NPARCELAS.AsString);
             lValorRetirarParcela:=0;
             if (DBInicio.Empresa.bFaturamentoIPI1Parcela) then
                lValorRetirarParcela := SqlCdsComissaoPedidoFAT_VL_IPI.asCurrency ;
             if (DBInicio.Empresa.bFaturamentoST1Parcela) then
                lValorRetirarParcela := lValorRetirarParcela + SqlCdsComissaoPedidoFAT_ICMSRET.asCurrency;
             if lValorRetirarParcela>0 then
             begin
                  // verificação somente na primeira parcela
                if StrToIntDef( SqlCdsComissaoPedidoFPC_NUMER.asstring, -1 ) = 1 then
                   begin
                    // ratifica se a primeira parcela esta mesmo maior com o valor dos impostos IPI e/ou ST somados na parcela (trata multiplas parcelas)
                    if (SqlCdsComissaoPedidoFPC_VLPARC.AsCurrency) > (((SqlCdsComissaoPedidoFAT_VLFAT.AsCurrency-SqlCdsComissaoPedidoFAT_VLNCOMIS.AsCurrency)/SqlCdsComissaoPedidoFPC_NPARCELAS.AsCurrency)+1) then    // +1 desconsidea centavos da dizima
                       wValorParcela := SqlCdsComissaoPedidoFPC_VLParc.AsCurrency - lValorRetirarParcela
                    else
                    if SqlCdsComissaoPedidoFPC_NPARCELAS.AsCurrency = 1 then       // tratamento especifico quando tem uma parcela somente
                        wValorParcela := SqlCdsComissaoPedidoFPC_VLParc.AsCurrency - lValorRetirarParcela
                    else
                     //   preciso fazer propoção pois tem varias parcelas mas os impostos nao foram colocados na primeira parcela, foi rateado nelas
                      begin
                        lMultiplic := (SqlCdsComissaoPedidoFat_VL_Liq.AsCurrency-SqlCdsComissaoPedidoFAT_VLNCOMIS.AsCurrency) / SqlCdsComissaoPedidoFat_VLfat.AsCurrency;
                        wValorParcela := SqlCdsComissaoPedidoFPC_VLParc.AsCurrency * lMultiplic;
                      end
                    end

                else
                   wValorParcela := SqlCdsComissaoPedidoFPC_VLPARC.AsCurrency;
             end
             Else
             begin
                lMultiplic := (SqlCdsComissaoPedidoFat_VL_Liq.AsCurrency-SqlCdsComissaoPedidoFAT_VLNCOMIS.AsCurrency) / SqlCdsComissaoPedidoFat_VLfat.AsCurrency;
                wValorParcela := SqlCdsComissaoPedidoFPC_VLParc.AsCurrency * lMultiplic;
             end;



             



             SqlCdsComissaoPedidoVL_LIQ.Value  := wValorParcela;
             SqlCdsComissaoPedidoVLNCOMIS.Value := (SqlCdsComissaoPedidoFAT_VLNCOMIS.AsCurrency/SqlCdsComissaoPedidoFPC_NPARCELAS.AsCurrency);
             wComissao := SqlCdsComissaoPedidoVLNCOMIS.Value;
             SqlCdsComissaoPedidoComissao.Value :=  (wcomissao);
          end;













        end
        else
        if SqlCdsParametrosPMT_PAGTO_COM_TP.AsString = 'T' then      // TOTAL DA NOTA
        begin
          SqlCdsComissaoPedidoVL_LIQ.AsCurrency :=   SqlCdsComissaoPedidoFAT_VL_LIQ.AsCurrency;
          SqlCdsComissaoPedidoVLNCOMIS.AsCurrency:= SqlCdsComissaoPEDIDOFAT_VLNCOMIS.AsCurrency ;
          wcomissao := SqlCdsComissaoPedidoFAT_VL_LIQ.AsCurrency-SqlCdsComissaoPedidoFAT_VLNCOMIS.AsCurrency;
          if SqlCdsComissaoPedidoFAT_COMIS1.Value=0 then
              SqlCdsComissaoPedidoComissao.Value := 0
          else
          begin
              wcomissao := Uteis.RoundTo  ( ( wcomissao *  (SqlCdsComissaoPedidoFAT_COMIS1.AsCurrency)/100),-2);
              SqlCdsComissaoPedidoComissao.Value :=  wcomissao;
          end;

        end
        else
        begin  // por parcelas
           SqlCdsComissaoPedidoParcelas.AsString :=   (SqlCdsComissaoPedidoFPC_NUMER.AsString+'/'+SqlCdsComissaoPedidoFPC_NPARCELAS.AsString);
           lValorRetirarParcela:=0;
           if (DBInicio.Empresa.bFaturamentoIPI1Parcela) then
              lValorRetirarParcela := SqlCdsComissaoPedidoFAT_VL_IPI.asCurrency ;
           if (DBInicio.Empresa.bFaturamentoST1Parcela) then
              lValorRetirarParcela := lValorRetirarParcela + SqlCdsComissaoPedidoFAT_ICMSRET.asCurrency;
           if lValorRetirarParcela>0 then
           begin
                // verificação somente na primeira parcela
              if StrToIntDef( SqlCdsComissaoPedidoFPC_NUMER.asstring, -1 ) = 1 then
                 begin
                  // ratifica se a primeira parcela esta mesmo maior com o valor dos impostos IPI e/ou ST somados na parcela (trata multiplas parcelas)
                  if (SqlCdsComissaoPedidoFPC_VLPARC.AsCurrency) > (((SqlCdsComissaoPedidoFAT_VLFAT.AsCurrency-SqlCdsComissaoPedidoFAT_VLNCOMIS.AsCurrency)/SqlCdsComissaoPedidoFPC_NPARCELAS.AsCurrency)+1) then    // +1 desconsidea centavos da dizima
                     wValorParcela := SqlCdsComissaoPedidoFPC_VLParc.AsCurrency - lValorRetirarParcela
                  else
                  if SqlCdsComissaoPedidoFPC_NPARCELAS.AsCurrency = 1 then       // tratamento especifico quando tem uma parcela somente
                      wValorParcela := SqlCdsComissaoPedidoFPC_VLParc.AsCurrency - lValorRetirarParcela
                  else
                   //   preciso fazer propoção pois tem varias parcelas mas os impostos nao foram colocados na primeira parcela, foi rateado nelas
                    begin
                      lMultiplic := (SqlCdsComissaoPedidoFat_VL_Liq.AsCurrency-SqlCdsComissaoPedidoFAT_VLNCOMIS.AsCurrency) / SqlCdsComissaoPedidoFat_VLfat.AsCurrency;
                      wValorParcela := SqlCdsComissaoPedidoFPC_VLParc.AsCurrency * lMultiplic;
                    end
                  end

              else
                 wValorParcela := SqlCdsComissaoPedidoFPC_VLPARC.AsCurrency;
           end
           Else
           begin
              lMultiplic := (SqlCdsComissaoPedidoFat_VL_Liq.AsCurrency-SqlCdsComissaoPedidoFAT_VLNCOMIS.AsCurrency) / SqlCdsComissaoPedidoFat_VLfat.AsCurrency;
              wValorParcela := SqlCdsComissaoPedidoFPC_VLParc.AsCurrency * lMultiplic;
           end;
           SqlCdsComissaoPedidoVL_LIQ.Value  := wValorParcela;
           SqlCdsComissaoPedidoVLNCOMIS.Value := (SqlCdsComissaoPedidoFAT_VLNCOMIS.AsCurrency/SqlCdsComissaoPedidoFPC_NPARCELAS.AsCurrency);
           wComissao :=(wValorParcela*SqlCdsComissaoPedidoFAT_COMIS1.AsCurrency/100);
           SqlCdsComissaoPedidoComissao.Value :=  (wcomissao);
        end;
        SqlCdsComissaoPedido.Post;
        SqlCdsComissaoPedido.Next;
      end;

    // Imprimir relatório
    if RadVideo.Checked then
         begin
          ReportComissao.DeviceType:='Screen';
          RBuilderPreview(ReportComissao);
         end;

     if RadImpressora.Checked then
         begin
          ReportComissao.DeviceType:='Printer';
          ReportComissao.ShowPrintDialog := true;
          ReportComissao.Print;
         end;

     screen.Cursor := crDefault;

     if rbExcel.Checked then
        begin
          lista := TStringList.Create;
          lista.Clear;
          lista.add('REP_CODIGO');
          lista.add('REP_RAZAO');
          lista.add('REP_NOME');
          lista.add('REP_BANCO');
          lista.add('REP_AGENCIA');
          lista.add('REP_CONTA');
          lista.add('FPC_DTEMIS');
          lista.add('PED_CODIGO');
          lista.add('CLI_RAZAO');
          lista.add('CLI_UF');
          lista.add('FAT_CODIGO');
          lista.add('PARCELAS');
          lista.add('VL_LIQ');
          lista.add('VLNCOMIS');
          lista.add('FAT_COMIS1');
          lista.add('COMISSAO');
          lista.add('FPC_VENCTO');
          lista.add('FPC_PAGTO');
          CriaCSV(dsComissao, lista, Self, False);
        end;

end;

procedure TFormGimpRepr.CriaRelRepre03;
Var
  wOrdem,wSeleciona,wTitulo2,wOrdemT:String;
begin
    if (LTBoxRelatorio.ItemIndex = 4)
    or (LTBoxRelatorio.ItemIndex = 5) then
       begin
           // Seleciona a Situacao do Representante.
           if RadAtivos.checked  then
              begin
                  wSeleciona:='WHERE REP_SITUACAO = '''+'A'+'''';
                  wTitulo2:= '[ ATIVOS ]';
              end;
           if RadInativos.checked  then
              begin
                  wSeleciona:='WHERE REP_SITUACAO = '''+'I'+'''';
                  wTitulo2:= '[ INATIVOS ]';
              end;

           if RadTodos.checked  then
              begin
                  wSeleciona:='';
                  wTitulo2:= '[ ATIVOS ]';
              end;
           {Filtrou por grupo}
           if (Edt_Grupo.Text <>'') then
              begin
                  if (RadTodos.checked ) then
                     wSeleciona := wSeleciona + 'WHERE REP_GRUPO = '''+Edt_Grupo.Text+''''
                  else
                     wSeleciona := wSeleciona + ' AND REP_GRUPO = '''+Edt_Grupo.Text+'''';
              end;
           if (LTBoxRelatorio.ItemIndex = 4) or (LTBoxRelatorio.ItemIndex = 5) then
              begin
                  // Seleciona uma Ordem do Relatorio.
                  if RadAlfa.checked  then
                     begin
                         wOrdem  := 'REP_GRUPO, REP_NOME';
                         wOrdemt := 'Nome do Vendedor';
                     end;
                  if RadCida.checked  then
                     begin
                         wOrdem  := 'REP_GRUPO,REP_UF,REP_CIDADE, REP_NOME';
                         wOrdemt := 'Estado e Cidade';
                     end;
                  if RadCodi.checked  then
                     begin
                         wOrdem  := 'REP_GRUPO,REP_CODIGO';
                         wOrdemt := 'Código do Vendedor';
                     end;
              end
           else
              begin
                  // Seleciona uma Ordem do Relatorio.
                  if RadAlfa.checked  then
                     begin
                         wOrdem  := 'REP_NOME';
                         wOrdemt := 'Nome do Vendedor';
                     end;
                  if RadCida.checked  then
                     begin
                         wOrdem  := 'REP_UF,REP_CIDADE,REP_NOME';
                         wOrdemt := 'Estado e Cidade';
                     end;
                  if RadCodi.checked  then
                     begin
                         wOrdem  := 'REP_CODIGO';
                         wOrdemt := 'Código do Vendedor';
                     end;
              end;
           try
             SqlCdsRepresentantes.Close;
             SqlCdsRepresentantes.CommandText:=SQLDEF(iif(rgEmpresaLogada.ItemIndex = 0,'EXCLUSIVA','NAOEXCLUSIVA'),'SELECT * FROM REP0000',wSeleciona,wOrdem,'');
             SqlCdsRepresentantes.Open;
           except on E:EdatabaseError do
              begin
                  uteis.erro  (Pchar('Erro ao abrir tabela VENDEDOR !'+e.message));
              end;
           end;

           if LTBoxRelatorio.ItemIndex = 4 then
              begin
                  LBL_03_EMPRESA.Caption  := dbInicio.Empresa.RAZAO;
                  LBL_03_LTITULO1.Caption := 'LISTAGEM RESUMIDA DE VENDEDORES';
                  LBL_03_LTITULO2.Caption := 'Vendedores Ativo/Inativo.: '+wTitulo2+' Classificado por .: '+wOrdemt;
              end;

           if LTBoxRelatorio.ItemIndex = 5 then
              begin
                  LBL_04_EMPRESA.Caption  := dbInicio.Empresa.RAZAO;
                  LBL_04_LTITULO1.Caption := 'LISTAGEM RESUMIDA DE VENDEDORES';
                  LBL_04_LTITULO2.Caption := 'Vendedores Ativo/Inativo.: '+wTitulo2+' Classificado por .: '+wOrdemt;
              end;

           if RadVideo.Checked then
              begin
                  if LTBoxRelatorio.ItemIndex = 4 then
                     begin
                         ppRP03.DeviceType:='Screen';
                         RBuilderPreview(ppRP03);
                     end
                  else
                     begin
                         ppRP04.DeviceType:='Screen';
                         RBuilderPreview(ppRP04);
                     end;
              end;
           if RadImpressora.Checked then
              begin
                  if LTBoxRelatorio.ItemIndex = 5 then
                     begin
                         ppRP03.DeviceType:='Printer';
                         ppRP03.ShowPrintDialog := true;
                         ppRP03.Print;
                     end
                  else
                     begin
                         ppRP04.DeviceType:='Printer';
                         ppRP04.ShowPrintDialog := true;
                         ppRP04.Print;
                     end;
              end;
           
           //
           Edt_Grupo.Text := '';
       end;
end;

procedure TFormGimpRepr.pp04HeaderBand1BeforePrint(Sender: tObject);
begin
    LBL_04_EMPRESA.Caption:=DBiNICIO.EMPRESA.Razao;
end;

procedure TFormGimpRepr.pp00HeaderBand2BeforePrint(Sender: tObject);
begin
    LBL_03_EMPRESA.Caption:=DBiNICIO.EMPRESA.Razao;
end;

procedure TFormGimpRepr.EditMesKeyPress(Sender: tObject; var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;
end;

procedure TFormGimpRepr.edProdutoExit(Sender: TObject);
begin
  inherited;
  cbProduto.idRetorno := edProduto.Text;
end;

procedure TFormGimpRepr.EdtRepKeyPress(Sender: tObject; var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;

end;

procedure TFormGimpRepr.EdtRepExit(Sender: tObject);
begin
    EdtRep.Text := StrZero(EdtRep.Text,EdtRep.MaxLength);
    if EdtRep.Text <> '999' then
       begin
           if SqlCdsRepre.Locate('REP_CODIGO',EdtRep.Text,[]) = true then
              begin
                  CbRepresentantes.Text := SqlCdsRepreREP_NOME.AsString;
              end
           else
              begin
                  if (LTBoxRelatorio.ItemIndex = 2) then
                     begin
                         if (RadGer.checked ) then
                            CbRepresentantes.Text := 'TODOS OS GERENTES'
                         else
                            CbRepresentantes.Text := 'TODOS OS SUPERVISORES';
                     end
                  else
                     begin
                         CbRepresentantes.Text := 'TODOS OS VENDEDORES';
                     end;
                  // CbRepresentantes.ItemIndex := 0;
                  // EdtRep.Text                := '999';
              end;
       end
    else
       begin
           if (LTBoxRelatorio.ItemIndex = 2) then
              begin
                  if (RadGer.checked ) then
                     begin
                         CbRepresentantes.Text := 'TODOS OS GERENTES';
                     end
                  else
                     begin
                         CbRepresentantes.Text := 'TODOS OS SUPERVISORES';
                     end;
              end
           else
              begin
                  CbRepresentantes.Text := 'TODOS OS VENDEDORES';
              end;
           // CbRepresentantes.ItemIndex := 0;
           // EdtRep.Text                := '999';
       end;
end;

procedure TFormGimpRepr.CbRepresentantesClick(Sender: tObject);
begin
    if (CbRepresentantes.ItemIndex<>0) then
       begin
           if SqlCdsRepre.Locate('REP_NOME',CbRepresentantes.Text,[]) = true then
              begin
                  EdtRep.Text := SqlCdsRepreREP_CODIGO.AsString;
              end
           else
              begin
                  if (LTBoxRelatorio.ItemIndex = 2) then
                     begin
                         if (RadGer.checked ) then
                            begin
                                uteis.aviso('Gerente não encontrado !');
                                CbRepresentantes.Text := 'TODOS OS GERENTES';
                            end
                         else
                            begin
                                uteis.aviso('Supervisor não encontrado !');
                                CbRepresentantes.Text := 'TODOS OS SUPERVISORES';
                            end;
                     end
                  else
                     begin
                         uteis.aviso('Vendedores não encontrado !');
                         CbRepresentantes.Text := 'TODOS OS VENDEDORES';
                     end;
                  // EdtRep.Text           := '999';
              end;
       end
    else
       begin
           if (LTBoxRelatorio.ItemIndex = 2) then
              begin
                  if (RadGer.checked ) then
                     begin
                         CbRepresentantes.Text := 'TODOS OS GERENTES';
                     end
                  else
                     begin
                         CbRepresentantes.Text := 'TODOS OS SUPERVISORES';
                     end;
              end
           else
              begin
                  CbRepresentantes.Text := 'TODOS OS VENDEDORES';
              end;
           // EdtRep.Text           := '999';
       end;
end;

procedure TFormGimpRepr.CbRepresentantesExit(Sender: tObject);
begin
    if (CbRepresentantes.Text <> 'TODOS OS VENDEDORES') AND (EdtRep.Text <> '999') then
       begin
           if SqlCdsRepre.Locate('REP_NOME',CbRepresentantes.Text,[]) = true then
              begin
                  EdtRep.Text := SqlCdsRepreREP_CODIGO.AsString;
              end
           else
              begin
                  if (LTBoxRelatorio.ItemIndex = 2) then
                     begin
                         if (RadGer.checked ) then
                            begin
                                uteis.aviso('Gerente não encontrado !');
                                CbRepresentantes.Text := 'TODOS OS GERENTES';
                            end
                         else
                            begin
                                uteis.aviso('Supervisor não encontrado !');
                                CbRepresentantes.Text := 'TODOS OS SUPERVISORES';
                            end;
                     end
                  else
                     begin
                         uteis.aviso('Vendedores não encontrado !');
                         CbRepresentantes.Text := 'TODOS OS VENDEDORES';
                     end;
                  // EdtRep.Text := '999';
              end;
       end
    else
       begin
           if (LTBoxRelatorio.ItemIndex = 2) then
              begin
                  if (RadGer.checked ) then
                     begin
                         CbRepresentantes.Text := 'TODOS OS GERENTES';
                     end
                  else
                     begin
                         CbRepresentantes.Text := 'TODOS OS SUPERVISORES';
                     end;
              end
           else
              begin
                  CbRepresentantes.Text := 'TODOS OS VENDEDORES';
              end;
           // EdtRep.Text := '999';
       end;
end;

procedure TFormGimpRepr.ppHeaderBand1BeforePrint(Sender: tObject);
begin
    ppHeaderBand1.Visible := true;
end;

procedure TFormGimpRepr.plComissaoGetText(Sender: TObject; var Text: string);
begin
  inherited;


 //'###,##0.00'
end;

procedure TFormGimpRepr.lperiodoGetText(Sender: TObject; var Text: string);
begin
  inherited;
   text:= 'Período de '+wDataI+' Até '+wdataF;
end;

procedure TFormGimpRepr.lquinzenaGetText(Sender: TObject; var Text: string);
begin
  inherited;
  if RadPrimeira.checked  then
    text:= '1ª quinzena'
  else
    if RadSegunda.checked   then
      text:='2ª quinzena'
  else
    if RadDuas.Checked then
      text := '1ª e 2ª quinzena'
  else
    if radDefinir.Checked then
      text := 'Período Definido';


end;

procedure TFormGimpRepr.PreencheCombo;
begin
    Screen.Cursor := crHourGlass;
    try
      if (LTBoxRelatorio.ItemIndex = 2) then
         begin
             if (RadGer.checked ) then
                wSeleciona := 'WHERE (R1.REP_FUNCAO= ''G'')'
             else
                wSeleciona := 'WHERE (R1.REP_FUNCAO = ''S'')';
         end
      else
         wSeleciona := '';
      SqlCdsRepre.close;
      SqlCdsRepre.CommandText:=SQLDEF('REPRESENTANTES','SELECT R1.REP_CODIGO,R1.REP_NOME,R1.REP_FUNCAO FROM REP0000 R1',wSeleciona,'R1.REP_NOME','R1.');
      SqlCdsRepre.Open;
      CbRepresentantes.Items.Clear;
      if (LTBoxRelatorio.ItemIndex = 2) then
         begin
             CbRepresentantes.Items.Add('')
         end
      else
         begin
             CbRepresentantes.Items.Add('TODOS OS VENDEDORES');
             LabelRepre.Caption := 'Vendedor:';
         end;
      SqlCdsRepre.First;
      while not SqlCdsRepre.Eof do
        begin
            CbRepresentantes.Items.Add(SqlCdsRepreREP_NOME.AsString);
            SqlCdsRepre.Next;
        end;
      // CbRepresentantes.ItemIndex := 0;
      EdtRepExit(Self);
      if (LTBoxRelatorio.ItemIndex = 2) then
         begin
             if (RadGer.checked ) then
                begin
                    CbRepresentantes.Text := '';
                    LabelRepre.Caption    := 'Gerente:';
                end
             else
                begin
                    CbRepresentantes.Text := '';
                    LabelRepre.Caption    := 'Supervisor:';
                end;
             // EdtRep.Text := '';
         end;
//      else
//         begin
//             CbRepresentantes.Text := 'TODOS OS VENDEDORES';
//             LabelRepre.Caption    := 'Vendedor:';
//             EdtRep.Text           := '999';
//         end;
    except on E:EDataBaseError do
      uteis.erro  (pchar('Erro ao carregar a combo ! '+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormGimpRepr.radDefinirClick(Sender: TObject);
begin
  inherited;
  gbDefinir.Visible := True;
  edPrimeira.SetFocus;
end;

procedure TFormGimpRepr.RadDuasClick(Sender: TObject);
begin
  inherited;
  gbDefinir.Visible := False;
end;

procedure TFormGimpRepr.RadGerClick(Sender: tObject);
begin
    PreencheCombo;
    EdtRep.SetFocus;
end;

procedure TFormGimpRepr.RadPrimeiraClick(Sender: TObject);
begin
  inherited;
  gbDefinir.Visible := False;
end;

procedure TFormGimpRepr.RadSegundaClick(Sender: TObject);
begin
  inherited;
  gbDefinir.Visible := False;
end;

procedure TFormGimpRepr.CriaRelRepre02;
var
  Wcomissao, wValor_Tot_Geral,wTotal_Comis,wTotal_litros,wFat_comis,WTOTALEQUIPE :Double;
  wVendaProp,wComProp,wLitroProp :Double;
  wcodigo_rep,wCod_Rep,wNome_Rep: string;
begin
    screen.Cursor := CrHourglass;
    wSeleciona := '';
    wOrdem     := '';
    {Seleciona a equipe do Gerente/Supervisor}
    if (RadGer.checked ) then
    begin
           wSeleciona := 'WHERE R1.REP_CODIGO = '''+EdtRep.Text+''' OR R1.REP_GERENTE = '''+EdtRep.Text+'''';
           wOrdem     := 'R1.REP_GERENTE,R1.REP_CODIGO';
    end
    else
    begin
           wSeleciona := 'WHERE R1.REP_CODIGO = '''+EdtRep.Text+''' OR R1.REP_SUPERVISAO = '''+EdtRep.Text+'''';
           wOrdem     := 'R1.REP_SUPERVISAO,R1.REP_CODIGO';
    end;
    wSeleciona := wSeleciona + ' AND R1.REP_SITUACAO = ''A''';
    SqlCdsRepresentantes.Close;
    SqlCdsRepresentantes.CommandText := SQLDEF(iif(rgEmpresaLogada.ItemIndex = 0,'EXCLUSIVA','NAOEXCLUSIVA'),'SELECT R1.* FROM REP0000 R1 ',wSeleciona,wOrdem,'R1.');
    SqlCdsRepresentantes.Open;
    WTOTALEQUIPE := SqlCdsRepresentantes.RecordCount;
    if not (CdsTmpEquip.Active) then
       CdsTmpEquip.CreateDataSet;
    CdsTmpEquip.EmptyDataSet;
    SqlCdsRepresentantes.First;
    while not SqlCdsRepresentantes.Eof do
    begin
         {Busca os Lancamentos de cada representante da equipe do Gerente/Supervisor}
         if SqlCdsParametrosPMT_BORDERO_COM.AsString = 'E' then
         begin
                // retirado fat cancelda wSeleciona := 'WHERE F2.FPC_DTEMIS BETWEEN '''+DataAmericana(wDataI)+''' AND '''+DataAmericana(wDataF)+''' AND F1.FAT_CANCELADA=''N''';
                wSeleciona := 'WHERE F2.FPC_DTEMIS BETWEEN '''+DataAmericana(wDataI)+''' AND '''+DataAmericana(wDataF)+'''';
                wOrdem     := 'F2.REP_CODIGO,F2.FPC_DTEMIS,C1.CLI_RAZAO';
         end;
         if SqlCdsParametrosPMT_BORDERO_COM.AsString = 'V' then
         begin
                wSeleciona := 'WHERE F2.FPC_VENCTO BETWEEN '''+DataAmericana(wDataI)+''' AND '''+DataAmericana(wDataF)+'''';
                wOrdem     := 'F2.REP_CODIGO,F2.FPC_VENCTO,C1.CLI_RAZAO';
         end;
         if SqlCdsParametrosPMT_BORDERO_COM.AsString = 'P' then
         begin
                wSeleciona := 'WHERE F2.FPC_PAGTO BETWEEN '''+DataAmericana(wDataI)+''' AND '''+DataAmericana(wDataF)+'''';
                wOrdem     := 'F2.REP_CODIGO,F2.FPC_PAGTO,C1.CLI_RAZAO';
         end;
         wSeleciona := wSeleciona + ' AND F2.REP_CODIGO = '''+SqlCdsRepresentantesREP_CODIGO.AsString+'''';

           {Grava os Dados da Equipe}
           wCod_Rep    := SqlCdsRepresentantesREP_CODIGO.AsString;
           wcodigo_rep := SqlCdsRepresentantesREP_RAZAO.AsString;
           CdsTmpEquip.Append;
           {Busca os lancamentos dos representantes da equipe no contas a receber}
           wSql1 := 'SELECT F2.FAT_CODIGO,F2.FPC_NUMER,F2.REP_CODIGO,F2.FPC_DTEMIS,F2.FPC_VLPARC,F2.FPC_PAGTO,F2.CLI_CODIGO,C1.CLI_RAZAO,C1.CLI_UF,F2.FPC_VENCTO,F2.FPC_VLPAGO,F2.FPC_NPARCELAS,F2.FPC_DESCONTADO,';
           wSql2 := 'F1.FAT_CANCELADA,F1.PED_CODIGO,F1.FAT_QTDITEM,F1.FAT_VL_LIQ,F1.FAT_VLNCOMIS,F1.FAT_DTEMIS,F1.FAT_COMIS1,F1.FAT_COMIS2,F1.FAT_COMIS3,F1.FAT_CANCELADA,F1.FAT_VLFAT,R1.REP_FUNCAO, f1.nf_num_nfe, f1.fat_icmsret, f1.fat_vl_ipi '+
                    'FROM FAT_PC01 F2 ';
           wSql3 := 'JOIN FAT0000 F1 ON (F1.FAT_CODIGO = F2.FAT_CODIGO) AND (F2.EMP_CODIGO = F1.EMP_CODIGO) LEFT JOIN CLI0000 C1 ON (F2.CLI_CODIGO = C1.CLI_CODIGO) LEFT JOIN REP0000 R1 ON (R1.REP_CODIGO = F2.REP_CODIGO)';
           if SqlCdsParametrosPMT_PAGTO_COM_TP.AsString = 'T' then
                  wSeleciona := wSeleciona + ' AND F2.FPC_NUMER <= ''01'''
           else
                  wSeleciona := wSeleciona + '';

           wSeleciona := wSeleciona + ' AND F2.FPC_EXCLUSAO = ''N''';

           SqlCdsComissao.Close;
           SqlCdsComissao.CommandText := SQLDEF(iif(rgEmpresaLogada.ItemIndex = 0,'EXCLUSIVA','NAOEXCLUSIVA'),wSql1+wSql2+wSql3,wSeleciona,wOrdem,'F2.');
           SqlCdsComissao.Open;
           Screen.Cursor := CrHourglass;
           wVendaProp:=0;wComProp:=0;wLitroProp:=0;
           // zerar totalizadores p/ o representante
           wComissao:=0;wValor_Tot_Geral:=0;wTotal_Comis:=0;wTotal_litros:=0;wFat_comis:=0;
           SqlCdsComissao.first;
           while (SqlCdsComissaoREP_CODIGO.AsString = wCod_Rep) and not (SqlCdsComissao.Eof) do
           begin
                //wSql1  retidado fatCancelada    := 'SELECT SUM(N2.NF_QTDE) AS WQTDE_ITENS FROM NF_IT01 N2 JOIN FAT0000 F1 ON (F1.FAT_CODIGO = N2.NF_IT_NOTANUMER) AND F1.FAT_CANCELADA=''N'' AND ((F1.OPV_CODIGO =15 ) or (F1.OPV_CODIGO =22) or (F1.OPV_CODIGO = 23)) AND (F1.EMP_CODIGO = N2.EMP_CODIGO) ';
                //wSql1                           := 'SELECT SUM(N2.NF_QTDE) AS WQTDE_ITENS FROM NF_IT01 N2 JOIN FAT0000 F1 ON (F1.FAT_CODIGO = N2.NF_IT_NOTANUMER) AND ((F1.OPV_CODIGO =15 ) or (F1.OPV_CODIGO =22) or (F1.OPV_CODIGO = 23)) AND (F1.EMP_CODIGO = N2.EMP_CODIGO) ';
                wSql1      := 'SELECT SUM(N2.NF_QTDE) AS WQTDE_ITENS FROM NF_IT01 N2 JOIN FAT0000 F1 ON (F1.FAT_CODIGO = N2.NF_IT_NOTANUMER) AND F1.FAT_EXCLUSAO = ''N'' AND (F1.EMP_CODIGO = N2.EMP_CODIGO) ';
                wSeleciona := 'WHERE F1.REP_CODIGO = '''+SqlCdsRepresentantesREP_CODIGO.AsString+''' AND N2.NF_IT_NOTANUMER = '''+SqlCdsComissaoFAT_CODIGO.AsString+'''';
                if Share('RECEBER')='E' then
                   wSeleciona := wSeleciona + ' AND F1.EMP_CODIGO='''+dbInicio.Empresa.EMP_CODIGO+'''';
                DataCadastros.sqlUpdate.close;
                DataCadastros.SqlUpdate.sql.text :=wSql1+wSeleciona;
                DataCadastros.sqlUpdate.Open;
                // *** VERIFICANDO PARAMETROS GLOBAIS DA EMPRESA
                {PMT_PAGTO_COM_TP = T - TOTAL LIQUIDO DA NOTA
                 PMT_PAGTO_COM_TP = P - VALOR DA PARCELA LIQUIDA SEM IMPOSTO}
                if SqlCdsParametrosPMT_PAGTO_COM_TP.AsString = 'T' then
                begin
                              if SqlCdsRepreREP_FUNCAO.AsString = 'G' then
                              begin
                                     if (SqlCdsComissaoREP_FUNCAO.AsString = 'G') then
                                        wComissao := (SqlCdsComissaoFAT_VL_LIQ.AsCurrency-SqlCdsComissaoFAT_VLNCOMIS.AsCurrency)*(SqlCdsComissaoFAT_COMIS1.AsCurrency/100)
                                     else
                                        wComissao := (SqlCdsComissaoFAT_VL_LIQ.AsCurrency-SqlCdsComissaoFAT_VLNCOMIS.AsCurrency)*(SqlCdsComissaoFAT_COMIS3.AsCurrency/100);
                              end
                              else
                              if (SqlCdsComissaoREP_FUNCAO.AsString = 'S') then
                                        wComissao := (SqlCdsComissaoFAT_VL_LIQ.AsCurrency-SqlCdsComissaoFAT_VLNCOMIS.AsCurrency)*(SqlCdsComissaoFAT_COMIS1.AsCurrency/100)
                              else
                                        wComissao := (SqlCdsComissaoFAT_VL_LIQ.AsCurrency-SqlCdsComissaoFAT_VLNCOMIS.AsCurrency)*(SqlCdsComissaoFAT_COMIS2.AsCurrency/100);
                              wValor_Tot_Geral := (wValor_Tot_Geral+SqlCdsComissaoFAT_VL_LIQ.AsCurrency);
                              wtotal_litros    := wtotal_litros + DataCadastros.sqlUpdate.FieldByName('WQTDE_ITENS').AsCurrency;
                              wTotal_Comis     := (wTotal_Comis + wComissao);
                end
                else
                begin
                       {Calcular o Valor da Parcela tirando o imposto}
                       wImposto     :=0;
                       wValorParcela:=0;
                       wImposto     :=SqlCdsComissaoFAT_VLFAT.AsCurrency-(SqlCdsComissaoFAT_VL_LIQ.AsCurrency-SqlCdsComissaoFAT_VLNCOMIS.AsCurrency);
                       wValorParcela:=SqlCdsComissaoFPC_VLPARC.AsCurrency-(wImposto/SqlCdsComissaoFPC_NPARCELAS.AsCurrency);
                       if SqlCdsRepreREP_FUNCAO.AsString = 'G' then
                       begin
                              if (SqlCdsComissaoREP_FUNCAO.AsString = 'G') then
                                 Wcomissao := (wValorParcela*SqlCdsComissaoFAT_COMIS1.AsCurrency/100)
                              else
                                 Wcomissao := (wValorParcela*SqlCdsComissaoFAT_COMIS3.AsCurrency/100)
                       end
                       else
                       if (SqlCdsComissaoREP_FUNCAO.AsString = 'S') then
                                 Wcomissao := (wValorParcela*SqlCdsComissaoFAT_COMIS1.AsCurrency/100)
                       else
                                 Wcomissao := (wValorParcela*SqlCdsComissaoFAT_COMIS2.AsCurrency/100);
                       WValor_Tot_Geral := (WValor_Tot_Geral+wValorParcela);
                       wtotal_litros    := wtotal_litros + DataCadastros.sqlUpdate.FieldByName('WQTDE_ITENS').AsCurrency;
                       WTotal_Comis     := (WTotal_Comis + Wcomissao);
                end;
                SqlCdsComissao.Next;
           end;
           wcodigo_rep := SqlCdsRepresentantesREP_CODIGO.AsString;
           wNome_Rep   := SqlCdsRepresentantesREP_NOME.AsString;
           if (wTotal_Comis >0) then
           begin
                  CdsTmpEquip.Append;
                  CdsTmpEquipREP_CODIGO.AsString     := SqlCdsRepresentantesREP_CODIGO.AsString;
                  CdsTmpEquipREP_GRUPO.AsString      := SqlCdsRepresentantesREP_GRUPO.AsString;
                  CdsTmpEquipREP_FUNCAO.AsString     := SqlCdsRepresentantesREP_FUNCAO.AsString;
                  if (SqlCdsRepresentantesREP_RAZAO.IsNull = False) then
                     CdsTmpEquipREP_RAZAO.AsString   := SqlCdsRepresentantesREP_RAZAO.AsString
                  else
                     CdsTmpEquipREP_RAZAO.AsString   := SqlCdsRepresentantesREP_NOME.AsString;
                  CdsTmpEquipREP_SUPERVISOR.AsString := SqlCdsRepresentantesREP_SUPERVISAO.AsString;
                  CdsTmpEquipREP_GERENTE.AsString    := SqlCdsRepresentantesREP_GERENTE.AsString;
                  CdsTmpEquipTMP_TOTVENDAS.AsCurrency:= wValor_tot_geral;
                  CdsTmpEquipTMP_COMISSAO.AsCurrency := wTotal_Comis;
                  CdsTmpEquipTMP_TOTLITROS.AsCurrency:= wTotal_litros;
                  CdsTmpEquip.Post;
           end;

         SqlCdsRepresentantes.Next;
    end;
    {Cabaçalho do Relatorio}
    LBL_02_EMPRESA.Caption  := dbInicio.Empresa.RAZAO;
    LBL_02_LTITULO1.Caption := 'RELATÓRIO DE COMISSÕES DE VENDA POR EQUIPE ';
    LBL_02_LTITULO2.Caption := iif(SqlCdsRepreREP_FUNCAO.AsString = 'G','GERENTE : ','SUPERVISOR : ')+EdtRep.Text+ ' - '+CbRepresentantes.Text;
    LBL_02_LTITULO3.Caption := 'Período de : '+wDataI +' a '+wDataF;
    LBL_02_QUINZENA.Caption := IIF(RadPrimeira.checked ,'1a. QUINZENA',
                               IIF(RadSegunda.Checked  = TRUE,'2a. QUINZENA','1a. E 2a. QUINZENA'));
    LBL_02_OBS1.Caption := EditObs01.Text;
    LBL_02_OBS2.Caption := EditObs02.Text;
    CdsTmpEquip.First;
    if RadVideo.Checked then
       ppRTmpEquip.DeviceType := 'Screen'
    else
    if RadImpressora.Checked then
       ppRTmpEquip.DeviceType := 'Printer';

    RBuilderPreview(ppRTmpEquip);
    screen.Cursor := crDefault;
end;

procedure TFormGimpRepr.CdsTmpEquipCalcFields(DataSet: TDataSet);
begin
    if CdsTmpEquipTMP_TOTVENDAS.AsCurrency >0 then
       CdsTmpEquipPER_COMISSAO_CC.AsCurrency := (CdsTmpEquipTMP_COMISSAO.AsCurrency/CdsTmpEquipTMP_TOTVENDAS.AsCurrency)*100;
    if CdsTmpEquipREP_FUNCAO.AsString = 'G' then
       begin
           if (CdsTmpEquipREP_FUNCAO.AsString = 'S') OR (CdsTmpEquipREP_FUNCAO.AsString = 'R') then
              begin
                  CdsTmpEquipWTOTALVENDIDO_CC.AsCurrency  := CdsTmpEquipWTOTALVENDIDO_CC.AsCurrency  + CdsTmpEquipTMP_TOTVENDAS.AsCurrency;
                  CdsTmpEquipWVALORCOMISSAO_CC.AsCurrency := CdsTmpEquipWVALORCOMISSAO_CC.AsCurrency + CdsTmpEquipTMP_COMISSAO.AsCurrency;
                  CdsTmpEquipWQTDE_CC.AsCurrency          := CdsTmpEquipWQTDE_CC.AsCurrency          + CdsTmpEquipTMP_TOTLITROS.AsCurrency;
              end;
       end
    else
       begin
           if (CdsTmpEquipREP_FUNCAO.AsString = 'R') then
              begin
                  CdsTmpEquipWTOTALVENDIDO_CC.AsCurrency  := CdsTmpEquipWTOTALVENDIDO_CC.AsCurrency  + CdsTmpEquipTMP_TOTVENDAS.AsCurrency;
                  CdsTmpEquipWVALORCOMISSAO_CC.AsCurrency := CdsTmpEquipWVALORCOMISSAO_CC.AsCurrency + CdsTmpEquipTMP_COMISSAO.AsCurrency;
                  CdsTmpEquipWQTDE_CC.AsCurrency          := CdsTmpEquipWQTDE_CC.AsCurrency          + CdsTmpEquipTMP_TOTLITROS.AsCurrency;
              end;
       end;
end;

procedure TFormGimpRepr.ImprimiComissaoTipo;
begin
   {}
   DataDuas;

   if Radprimeira.checked  then
      DatasPriQz       // constroe datas da primeira quinzena
   else
      if Radsegunda.checked  then
         DatasSegQz     // constroe datas da segunda quinzena
      else
         // trabalhar com as duas quinzenas
         begin
             DataDuas;
         end;

   wSQL1 := 'select avg(I1.PRF_ITEMCOMIS)AS MEDIA_COMIS ,sum(I1.PRF_QTDEFAT * I1.PRF_PRECO)AS TOTAL_FAT ,P1.PTI_CODIGO,L1.PTI_DESCRI,PED.REP_CODIGO,REP.REP_NOME ';
   wSQL2 := ' from PED_IT01 I1 left join PED0000 PED on (I1.PED_CODIGO = PED.PED_CODIGO) left join PRD0000 P1 on(I1.PRD_REFER = P1.PRD_REFER) left join PRD_TIPO L1 on (L1.PTI_CODIGO = P1.PTI_CODIGO) left join REP0000 REP on (REP.rep_codigo = PED.REP_CODIGO)';

   if EdtRep.Text = '999' then
       wSQL3 := ' where PED.ped_codigo in(select PED_CODIGO from FAT0000 where FAT_DTEMIS Between '''+DataAmericana(wDataI)+''' and '''+DataAmericana(wDataF)+''')'
   else
       wSQL3 := ' where PED.rep_codigo = '''+EdtRep.Text+''' and PED.ped_codigo in(select PED_CODIGO from FAT0000 where FAT_DTEMIS  Between '''+DataAmericana(wDataI)+''' and '''+DataAmericana(wDataF)+''')';

   wSQL4 := ' group by P1.PTI_CODIGO,L1.PTI_DESCRI,PED.REP_CODIGO,REP.REP_NOME';

   SqlCdsComissaoTipo.Close;
   SqlCdsComissaoTipo.CommandText := wSQL1+wSQL2+wSQL3+wSQL4;
   SqlCdsComissaoTipo.Open;

   lblComissaoTipoEmp.Caption := dbInicio.Empresa.RAZAO;
   if RadPrimeira.checked  then
      ppLblQuinzenaTipo.Caption    := '1a. QUINZENA'
   else
      if RadSegunda.checked   then
         ppLblQuinzenaTipo.Caption := '2a. QUINZENA'
      else
         ppLblQuinzenaTipo.Caption := '1a. E 2a. QUINZENA';
   {Preenche os dados do recibo}
   ppLblPeriodoTipo.Caption := 'Período de '+wDataI+' a '+wDataF;

   pprComissaoTipo.DeviceType := 'Screen';
   RBuilderPreview(pprComissaoTipo);
end;

procedure TFormGimpRepr.DataDuas;
var
wMes,wAno :Word;

begin
  {}
  wDataI := DateToStr(EncodeDate(StrToInt(EditAno.Text),StrToInt(EditMes.text),01));
  wMEs := StrToInt(EditMes.text);
  wAno := StrToInt(EditAno.Text);
  wDataF := DateToStr(EncodeDate(StrToInt(EditAno.Text),StrToInt(EditMes.text),DaysInAMonth(wAno,wMEs)));
end;

procedure TFormGimpRepr.SqlCdsComissaoTipoCalcFields(DataSet: TDataSet);
begin
    SqlCdsComissaoTipoCC_VALOR_COMIS.AsCurrency := ((SqlCdsComissaoTipoTOTAL_FAT.AsCurrency  * SqlCdsComissaoTipoMEDIA_COMIS.AsCurrency)/100);
end;


procedure TFormGimpRepr.SQLCdsComissaoProdCalcFields(DataSet: TDataSet);
begin
SQLCdsComissaoProdCC_TOTAL_VENDA.AsCurrency := SQLCdsComissaoProdFIT_QTDE.Ascurrency * SQLCdsComissaoProdFIT_PRECO.Ascurrency;
SQLCdsComissaoProdCC_TOTAL_COMIS.Ascurrency := (SQLCdsComissaoProdFIT_QTDE.Ascurrency * SQLCdsComissaoProdFIT_PRECO.Ascurrency)*SQLCdsComissaoProdFIT_COMIS.Ascurrency/100;
end;

procedure TFormGimpRepr.ImprimirBorderoAlternativo;
//**************** INICIO DO BORDERO *******************************
{utilizacao : Bordero de Comissoes
{usa Objeto Rprinter
{objetivo :                                                        }
{Inicio da impressão dos dados do bordero                          }
{******************************************************************}
var
wcomissao, wValor_Tot_Geral, wTotal_Comis : Double;
wLinha:Integer;
wCodigo_Rep, wMes_Ano: string;
begin
    wPagina:=1;
    SqlCdsComissao.First;
    if RadVideo.checked  then
       RDPrintBordero.OpcoesPreview.Preview := True
    else
       RDPrintBordero.OpcoesPreview.Preview := False;
       //
    RDPrintBordero.Abrir;
    screen.Cursor := CrHourglass;
    //
    While not (SqlCdsComissao.EOF) do
     begin
         wCodigo_rep := SqlCdsComissaoREP_CODIGO.AsString;
         // chama proc. cabeçalho  que esta no final deste programa
         CabecalhoAlternativo(wCodigo_rep);
         //
         wLinha := 13;
         // *** INICIAR IMPRESSAO DOS VALORES P/ COMISSAO DO REPRESENTANTE *** //
         // zerar totalizadores
         wValorParcela    := 0;
         wValor_Tot_Geral := 0;
         wTotal_Comis     := 0;
         while (SqlCdsComissaoREP_CODIGO.AsString=wCodigo_rep)and not(SqlCdsComissao.Eof) do
          begin
              //         1         2         3         4         5         6         7         8         9         10        11        12
              //1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890
              //EMISSÃO    PEDIDO/INT.  CLIENTE                                        UF NFE      FATURA     VALOR NF    %         COM/PAGAR
              //01/01/2005   000000     000000-NOME DO CLIENTE                         PR 0000000  0000000   123.125.00  999       123..125.00
              RDPrintBordero.Imp(wLinha, 1,SqlCdsComissaoFPC_DTEMIS.AsString);
              RDPrintBordero.Imp(wLinha, 14,SqlCdsComissaoPED_CODIGO.AsString);
              RDPrintBordero.Imp(wLinha, 25,Copy(SqlCdsComissaoCLI_CODIGO.AsString+'-'+SqlCdsComissaoCLI_RAZAO.AsString,1,48));
              RDPrintBordero.Imp(wLinha, 72,SqlCdsComissaoCLI_UF.AsString);
              RDPrintBordero.Imp(wLinha, 75,SqlCdsComissaoNF_NUM_NFE.AsString);
              RDPrintBordero.Imp(wLinha, 84,SqlCdsComissaoFAT_CODIGO.AsString);
              //RDPrintBordero.Imp(wLinha, 70,SqlCdsComissaoFPC_NUMER.AsString+'/'+SqlCdsComissaoFPC_NPARCELAS.AsString);
              // Imprime pelo total liquido da nota
              RDPrintBordero.ImpVal(WLinha, 94,'###,##0.00',SqlCdsComissaoFAT_VL_LIQ.AsCurrency,[]);
              RDPrintBordero.ImpVal(WLinha, 106,'#0.000',SqlCdsComissaoFAT_COMIS1.AsCurrency,[]);
              // Calculo de comissao individual
              wComissao := (SqlCdsComissaoFAT_VL_LIQ.AsCurrency-SqlCdsComissaoFAT_VLNCOMIS.AsCurrency)*(SqlCdsComissaoFAT_COMIS1.AsCurrency/100);
              RDPrintBordero.ImpVal(wLinha, 116,'###,##0.00',wComissao,[]);
              //
              wValor_Tot_Geral := (WValor_Tot_Geral+SqlCdsComissaoFAT_VL_LIQ.AsCurrency);
              wTotal_Comis := (wTotal_Comis + wComissao);
              //
              wLinha := wLinha+1;
              SqlCdsComissao.Next;
              if wlinha = 58 then
                 begin
                     // estourou linha -> ImprimirBordero cabeçalho
                     Inc(wPagina);
                     RDPrintBordero.Novapagina;
                     CabecalhoAlternativo(wCodigo_rep);
                     wlinha := 13;
                  end;
          end;
        {IMPRIMIR EVENTOS DO REPRESENTANTE - SOMENTE QUEM TEVE VENDAS}
        RDPrintBordero.Imp(wLinha, 1,'------------------------------------------------------------------------------------------------------------------------------------');
        wLinha := wLinha+1;
        RDPrintBordero.Imp   (wLinha,001,'Sub-Total');
        RDPrintBordero.ImpVal(wLinha, 94,'###,##0.00',wValor_Tot_Geral,[]);
        RDPrintBordero.ImpVal(wLinha, 116,'###,##0.00',wTotal_Comis,[]);
        Inc(wLinha);
        RDPrintBordero.Imp(wLinha, 1,'------------------------------------------------------------------------------------------------------------------------------------');
        Inc(wLinha);
        RDPrintBordero.Imp(wLinha, 2,'EVENTOS:');
        wLinha := wLinha+1;
        try
          {Busca os eventos dos representantes}
          wSql1      := 'SELECT E1.EMP_CODIGO,E1.REP_CODIGO,E1.EVE_CODIGO,E2.EVE_DESCRI,E1.ERP_VALOR,E1.ERP_TIPO,E1.ERP_DATA,E1.ERP_COMPL,';
          wSql2      := 'E1.ERP_CODIGO,E1.ERP_IMPOSTO FROM EVE_RP01 E1 JOIN EVE0000 E2 ON (E2.EVE_CODIGO = E1.EVE_CODIGO) ';
          wSeleciona := 'WHERE E1.ERP_DATA BETWEEN '''+DataAmericana(wDataI)+''' AND '''+DataAmericana(wDataF)+''' AND E1.REP_CODIGO = '''+wCodigo_rep+'''';
          SqlCdsEventos.Close;
          SqlCdsEventos.CommandText := SQLDEF(iif(rgEmpresaLogada.ItemIndex = 0,'EXCLUSIVA','NAOEXCLUSIVA'),wSql1+wSql2,wSeleciona,'E1.REP_CODIGO,E1.ERP_DATA','E1.');
          SqlCdsEventos.Open;
          SqlCdsEventos.First;
          if SqlCdsEventos.IsEmpty = false then
             begin
                 while not SqlCdsEventos.Eof do
                  begin
                      RDPrintBordero.Imp(wLinha, 4,SqlCdsEventosERP_CODIGO.AsString);
                      RDPrintBordero.Imp(wLinha, 10,SqlCdsEventosERP_DATA.AsString);
                      RDPrintBordero.Imp(wLinha, 21,SqlCdsEventosEVE_DESCRI.AsString);
                      RDPrintBordero.Imp(wLinha, 48,SqlCdsEventosERP_COMPL.AsString);
                      RDPrintBordero.ImpVal(wLinha,94,'###,##0.00',SqlCdsEventosERP_VALOR.AsCurrency,[]);
                      RDPrintBordero.Imp(wLinha, 106,SqlCdsEventosERP_TIPO.AsString);
                      if SqlCdsEventosERP_TIPO.AsString = 'D' then
                         // diminui valor do total da comissao
                         wTotal_Comis := (wTotal_Comis-SqlCdsEventosERP_VALOR.AsCurrency)
                      else
                         // aumenta valor no total da comissao
                         WTotal_Comis := (WTotal_Comis+SqlCdsEventosERP_VALOR.AsCurrency);
                      //
                      wLinha := wLinha+1;
                      if wlinha = 58 then
                         begin
                             // Estourou as linhas ImprimirBordero o cabeçalho e continuar a ImprimirBordero eventos
                             Inc(wPagina);
                             RDPrintBordero.Novapagina;
                             Cabecalho(wCodigo_rep);
                             wlinha := 13;
                         end;
                      SqlCdsEventos.Next;
                  end;
             end;
          RDPrintBordero.Imp(wLinha, 1,'------------------------------------------------------------------------------------------------------------------------------------');
          Inc(wLinha);
          if RadPrimeira.checked  then
             RDPrintBordero.Imp(wLinha,2,'Total 1a. Quinzena :')
          else
             if RadSegunda.checked   then
                RDPrintBordero.Imp(wLinha,2,'Total 2a. Quinzena :')
             else
                RDPrintBordero.Imp(wLinha,2,'TOTAL DO MÊS :');
          RDPrintBordero.ImpVal(wLinha, 94,'###,##0.00',wValor_Tot_Geral,[]);
          RDPrintBordero.ImpVal(wLinha, 116,'###,##0.00',wTotal_Comis,[]);
          Inc(wLinha);
          RDPrintBordero.Imp(wLinha, 1,'------------------------------------------------------------------------------------------------------------------------------------');
          {zera numero de pagina p/ prox. repres.}
          if not SqlCdsComissao.Eof then
             begin
                 wPagina:= 1;
                 RDPrintBordero.Novapagina;
             end;
        except on E:EDataBaseError do
          uteis.erro  (pchar('Erro ao localizar os eventos do vendedores ! '+e.message));
        end;
     end;
    screen.Cursor := CrDefault;
    RDPrintBordero.Fechar;
end;

procedure TFormGimpRepr.CabecalhoAlternativo(wcodrep: string);
begin
  try
      wSql1 := 'SELECT R1.* FROM REP0000 R1 ';
      SqlCdsRepresentantes.close;
      SqlCdsRepresentantes.CommandText := 'SELECT * FROM REP0000 WHERE REP_CODIGO = '+quotedstr(wCodRep); //SQLDEF(iif(rgEmpresaLogada.ItemIndex = 0,'EXCLUSIVA','NAOEXCLUSIVA'),wSql1,'WHERE R1.REP_CODIGO = '''+wCodRep+'''','R1.REP_CODIGO','R1.');
      SqlCdsRepresentantes.Open;
      RDPrintBordero.Imp(2, 2,'Emissão: '+DateTimeToStr(Date));
      RDPrintBordero.Imp(2, 119,'Página:'+IntToStr(WPagina));
      RDPrintBordero.Imp(3, 1,'====================================================================================================================================');
      RDPrintBordero.ImpF(4, 2,dbInicio.Empresa.Razao,[negrito]);
      RDPrintBordero.ImpD(4, 128,'RELATÓRIO DE COMISSÕES  -   MÊS/ANO : '+EditMes.Text+'/'+EditAno.Text,[negrito]);
      RDPrintBordero.Imp(5, 2,'PERÍODO DE : '+wDataI+' Até '+wdataF);
      //
      if RadPrimeira.checked  then
         RDPrintBordero.Imp(5,118,'1a. QUINZENA')
      else
         if RadSegunda.checked   then
            RDPrintBordero.Imp(5,118,'2a. QUINZENA :');
      RDPrintBordero.Imp(6, 1,'====================================================================================================================================');
      RDPrintBordero.Imp(7, 2,SqlCdsRepresentantesREP_CODIGO.AsString+'-'+SqlCdsRepresentantesREP_GRUPO.AsString+'  '+SqlCdsRepresentantesREP_RAZAO.AsString);
      // DADOS DA CONTA DO REPRESENTANTE
      RDPrintBordero.Imp(7, 55,'[ Agência:'+SqlCdsRepresentantesREP_AGENCIA.AsString);
      RDPrintBordero.Imp(7, 72,'Conta:'+SqlCdsRepresentantesREP_CONTA.AsString);
      RDPrintBordero.Imp(7, 93,'Banco :'+SqlCdsRepresentantesREP_BANCO.AsString);
      RDPrintBordero.Imp(8, 10,SqlCdsRepresentantesREP_NOME.AsString);
      RDPrintBordero.Imp(8, 93,'Credor:'+SqlCdsRepresentantesREP_BANCOFAVOR.AsString);
      RDPrintBordero.Imp(9,  1,'------------------------------------------------------------------------------------------------------------------------------------');
      RDPrintBordero.Imp(10, 2,'EMISSÃO    PEDIDO/INT.  CLIENTE                                        UF NFE      FATURA     VALOR NF    %         COM/PAGAR');
      RDPrintBordero.Imp(11, 1,'------------------------------------------------------------------------------------------------------------------------------------');
    except on E:EDataBaseError do
      uteis.erro  (pchar('Erro ao localizar os dados do vendedor ! '+e.message));
    end;
end;

procedure TFormGimpRepr.cbProdutoSelect(Sender: TObject);
begin
  inherited;
  edProduto.Text := cbProduto.idRetorno;
end;

procedure TFormGimpRepr.rgEmpresaLogadaExit(Sender: tObject);
begin
  PreencheCombo;
end;

procedure TFormGimpRepr.rgEmpresaLogadaClick(Sender: tObject);
begin
  PreencheCombo;
end;

procedure TFormGimpRepr.FormCreate(Sender: tObject);
begin
     inherited;
     self.Height:=505;
     self.Width:=561;
     self.AutoSize:=True;
     PathNewRel := dbInicio.GetParametroSistema('PMT_PATHRELATORIO');

end;

end.


