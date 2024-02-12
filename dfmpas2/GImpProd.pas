{************************************************************************
| Programa...:  QrprFor1 - Nome formulario = RelProdFornece             *
| Objetivo...:  Relátorio de Produtos por Fornecedores                  *
| Analista...:  Marcio Neu Pacheco                                      *
| Programador:
|                                                                       *
| Comentários:                                                          *
|                                                                       *
| Criação..........: Abr/2002                                           *
| Ultima Alteração.: Nov/2010                                           *
| Alterado por.....: Márcio                                             *
*************************************************************************}
unit GImpProd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, RwFunc, Db, DBTables,
  Provider, SqlExpr,SqlClientDataSet, DBClient, DBLocal, DBLocalS, ppVar, ppCtrls, ppPrnabl,
  ppClass, ppBands, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv, clipbrd,
  ppDBPipe, ppModule, raCodMod, ppStrtch, ppSubRpt, daDataModule, MIDASLIB,
  ppParameter, frxClass, frxDBSet, frxExportPDF, frxExportXLS, Data.DBXFirebird,
  ppDesignLayer, SimpleDS, JvExMask, JvToolEdit, frxExportBaseDialog;

type
  TFormGImpProduto = class(TForm)
    GrpSelecao: TGroupBox;
    LabelBANCO: TLabel;
    Labelcliente: TLabel;
    GrpSaldo: TGroupBox;
    RadTodos: TRadioButton;
    RadPositivo: TRadioButton;
    RadNegativo: TRadioButton;
    PrinterSetupDialog1: TPrinterSetupDialog;
    GrpOrdem: TGroupBox;
    RadRefer: TRadioButton;
    RadProdu: TRadioButton;
    GrpBotoes: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Grpvigencia: TGroupBox;
    LabelData: TLabel;
    CbTipo: TComboBox;
    CbGrupo: TComboBox;
    SqlCdsProdutos: TSQLClientDataSet;
    DsProdutos: TDataSource;
    SqlCdsProdutosPRD_DESCRI: TStringField;
    SqlCdsProdutosPRD_UND: TStringField;
    SqlCdsProdutosPGR_CODIGO: TStringField;
    SqlCdsProdutosPTI_CODIGO: TStringField;
    SqlCdsProdutosPRD_MINIMO: TFMTBCdField;
    SqlCdsProdutosPRD_PCUSTO: TFMTBCdField;
    SqlCdsProdutosPRD_PVENDA: TFMTBCdField;
    SqlCdsProdutosPRD_ESTOQUE: TFMTBCdField;
    SqlCdsProdutosPRD_SAIDA: TFMTBCdField;
    SqlCdsProdutosPRD_PENDENTE: TFMTBCdField;
    SqlCdsProdutosPRD_ENTRADA: TFMTBCdField;
    SqlCdsProdutosPRD_MAXIMO: TFMTBCdField;
    SqlCdsProdutosPRD_VAR1: TFMTBCdField;
    SqlCdsProdutosPRD_VAR2: TFMTBCdField;
    SqlCdsProdutosPRD_VAR3: TFMTBCdField;
    SqlCdsProdutosPRD_VAR4: TFMTBCdField;
    SqlCdsProdutosPRD_VAR5: TFMTBCdField;
    SqlCdsProdutosPRD_VAR6: TFMTBCdField;
    SqlCdsProdutosPRD_VAR7: TFMTBCdField;
    SqlCdsProdutosPRD_VAR8: TFMTBCdField;
    SqlCdsProdutosPRD_DCVAR1: TStringField;
    SqlCdsProdutosPRD_DCVAR2: TStringField;
    SqlCdsProdutosPRD_DCVAR3: TStringField;
    SqlCdsProdutosPRD_DCVAR4: TStringField;
    SqlCdsProdutosPRD_DCVAR5: TStringField;
    SqlCdsProdutosPRD_DCVAR6: TStringField;
    SqlCdsProdutosPRD_DCVAR7: TStringField;
    SqlCdsProdutosPRD_DCVAR8: TStringField;
    SqlCdsTipo: TSQLClientDataSet;
    SqlCdsGrupo: TSQLClientDataSet;
    SqlCdsTipoPTI_CODIGO: TStringField;
    SqlCdsTipoPTI_DESCRI: TStringField;
    SqlCdsGrupoPGR_CODIGO: TStringField;
    SqlCdsGrupoPGR_DESCRI: TStringField;
    SqlCdsGrupoPGR_COMISS: TStringField;
    SqlCdsGrupoPGR_COM_PERC: TFMTBCdField;
    ppDBProdutos: TppDBPipeline;
    ppRP00: TppReport;
    ppRP04: TppReport;
    ppRP03: TppReport;
    DsProduFornecedor: TDataSource;
    ppDBProdForn: TppDBPipeline;
    ppRP07: TppReport;
    SqlCdsProduFornecedor: TSQLClientDataSet;
    ppRP01: TppReport;
    ppRP05: TppReport;
    ppDB05: TppDBPipeline;
    DsRel05: TDataSource;
    SqlCdsRel05: TSQLClientDataSet;
    SqlCdsRel05PRD_DESCRI: TStringField;
    SqlCdsRel05PRD_COMPL: TStringField;
    SqlCdsRel05PRD_PVENDA: TFMTBCdField;
    SqlCdsRel05PRD_PESOKG: TFMTBCdField;
    SqlCdsRel05PRD_EMBALA: TStringField;
    SqlCdsRel05PRD_TABPRECO: TStringField;
    SqlCdsRel05IPI_CODIGO: TStringField;
    SqlCdsRel05IPI_ALIQ: TFMTBCdField;
    SqlCdsRel05LIN_CODIGO: TStringField;
    SqlCdsRel05LIN_DESCRI: TStringField;
    ppRP08: TppReport;
    pp05HeaderBand4: TppHeaderBand;
    ppLine18: TppLine;
    LBL_05_EMPRESA: TppLabel;
    LBL_05_END1: TppLabel;
    ppLine21: TppLine;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable12: TppSystemVariable;
    ppLabel50: TppLabel;
    ppLabel49: TppLabel;
    LBL_05_DATAVI: TppLabel;
    LBL_05_HOME: TppLabel;
    PMT_CAB_TABPRECO: TppLabel;
    pp05DetailBand4: TppDetailBand;
    ppDBText23: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText53: TppDBText;
    ppDBText58: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText22: TppDBText;
    ppLine22: TppLine;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLine25: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine26: TppLine;
    SqlCdsProdutosPRD_PMEDIO: TFMTBCdField;
    SqlCdsProduFornecedorPRD_DESCRI: TStringField;
    SqlCdsProduFornecedorPGR_CODIGO: TStringField;
    SqlCdsProduFornecedorPTI_CODIGO: TStringField;
    SqlCdsProduFornecedorFOR_CODIGO: TStringField;
    SqlCdsProduFornecedorFOR_RAZAO: TStringField;
    SqlCdsProduFornecedorFOR_CIDADE: TStringField;
    SqlCdsProduFornecedorFOR_FONE: TStringField;
    SqlCdsProduFornecedorFOR_FAX: TStringField;
    SqlCdsProduFornecedorFOR_CONTATO: TStringField;
    SqlCdsProduFornecedorFOR_EMAIL: TStringField;
    pp07HeaderBand1: TppHeaderBand;
    ppLine19: TppLine;
    LBL_07_EMPRESA: TppLabel;
    LBL_07_LTITULO1: TppLabel;
    LBL_07_LTITULO2: TppLabel;
    ppLine20: TppLine;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    pp07DetailBand1: TppDetailBand;
    ppDBText59: TppDBText;
    ppDBText51: TppDBText;
    ppLabel29: TppLabel;
    ppDBText56: TppDBText;
    ppLabel43: TppLabel;
    ppDBText55: TppDBText;
    ppLabel44: TppLabel;
    ppDBText57: TppDBText;
    ppLabel41: TppLabel;
    ppDBText52: TppDBText;
    ppLabel42: TppLabel;
    ppDBText54: TppDBText;
    ppLabel35: TppLabel;
    ppSummaryBand4: TppSummaryBand;
    ppLabel12: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppGroup7: TppGroup;
    pp07GroupHeaderBand1: TppGroupHeaderBand;
    ppLine13: TppLine;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppLabel34: TppLabel;
    ppLabel31: TppLabel;
    pp07GroupFooterBand1: TppGroupFooterBand;
    ppLine23: TppLine;
    raCodeModule4: TraCodeModule;
    Edt_Tipo: TEdit;
    Edt_Grupo: TEdit;
    Group02: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    ppRP09: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppLine29: TppLine;
    LBL_09_EMPRESA: TppLabel;
    LBL_09_LTITULO1: TppLabel;
    LBL_09_LTITULO2: TppLabel;
    ppLine30: TppLine;
    ppSystemVariable15: TppSystemVariable;
    ppSystemVariable16: TppSystemVariable;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel78: TppLabel;
    ppLine31: TppLine;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText19: TppDBText;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppDBText74: TppDBText;
    ppSummaryBand5: TppSummaryBand;
    ppLine32: TppLine;
    ppLabel81: TppLabel;
    ppDBCalc6: TppDBCalc;
    SqlCdsEstoque: TSQLClientDataSet;
    CdsEstoque: TClientDataSet;
    DsEstoque: TDataSource;
    SqlCdsKardex: TSQLClientDataSet;
    ppDBEstoque: TppDBPipeline;
    CdsEstoqueEMP_CODIGO: TStringField;
    CdsEstoquePRD_DESCRICAO: TStringField;
    CdsEstoquePRD_UND: TStringField;
    CdsEstoquePRD_ESTOQUE: TCurrencyField;
    CdsEstoquePRD_ENTRADA: TCurrencyField;
    CdsEstoquePRD_SAIDA: TCurrencyField;
    CdsEstoqueESTOQUE_ATUAL: TCurrencyField;
    CdsEstoquePRD_PCUSTO: TCurrencyField;
    CdsEstoqueTOTAL_PCUSTO: TCurrencyField;
    CdsEstoquePRD_PMEDIO: TCurrencyField;
    CdsEstoqueTOTAL_PMEDIO: TCurrencyField;
    SqlCdsSaldo: TSQLClientDataSet;
    SqlCdsEstoquePRD_DESCRI: TStringField;
    SqlCdsEstoquePRD_UND: TStringField;
    SqlCdsEstoquePRD_PCUSTO: TFMTBCdField;
    SqlCdsEstoquePRD_PMEDIO: TFMTBCdField;
    SqlCdsEstoquePRD_PVENDA: TFMTBCdField;
    SqlCdsEstoqueWESTOQUE: TFMTBCdField;
    SqlCdsSaldoPRD_REFER: TStringField;
    SqlCdsSaldoPES_TIPO: TStringField;
    SqlCdsSaldoWPES_QTDE: TFMTBCdField;
    SqlCdsKardexPRD_REFER: TStringField;
    SqlCdsKardexPES_TIPO: TStringField;
    SqlCdsKardexWPES_QTDE: TFMTBCdField;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppDBText77: TppDBText;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    LBL_09_LTITULO3: TppLabel;
    pp08HeaderBand1: TppHeaderBand;
    ppLine24: TppLine;
    LBL_08_EMPRESA: TppLabel;
    LBL_08_LTITULO1: TppLabel;
    LBL_08_LTITULO2: TppLabel;
    ppLine27: TppLine;
    ppSystemVariable13: TppSystemVariable;
    ppSystemVariable14: TppSystemVariable;
    ppLabel61: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLine28: TppLine;
    pp08DetailBand1: TppDetailBand;
    ppDBText62: TppDBText;
    ppDBText66: TppDBText;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    raCodeModule7: TraCodeModule;
    ppLabel60: TppLabel;
    ppR09: TppReport;
    SqlCdsEstPA: TSQLClientDataSet;
    DsEstPA: TDataSource;
    SqlCdsEstPAPRD_ENTRADA: TFMTBCdField;
    SqlCdsEstPAPRD_ESTOQUE: TFMTBCdField;
    SqlCdsEstPAPRD_EMPENHO: TFMTBCdField;
    SqlCdsEstPAPRD_RESERVA: TFMTBCdField;
    SqlCdsEstPAPRD_SALDOPRODUCAO: TFMTBCdField;
    SqlCdsEstPAPTI_SIGLA: TStringField;
    SqlCdsEstPAPRD_DCVAR1: TStringField;
    SqlCdsEstPAPRD_DCVAR2: TStringField;
    SqlCdsEstPAPRD_DCVAR3: TStringField;
    SqlCdsEstPAPRD_DCVAR4: TStringField;
    SqlCdsEstPAPRD_DCVAR5: TStringField;
    SqlCdsEstPAPRD_DCVAR6: TStringField;
    SqlCdsEstPAPRD_DCVAR7: TStringField;
    SqlCdsEstPAPRD_DCVAR8: TStringField;
    SqlCdsEstPAPRD_VAR1: TFMTBCdField;
    SqlCdsEstPAPRD_VAR2: TFMTBCdField;
    SqlCdsEstPAPRD_VAR3: TFMTBCdField;
    SqlCdsEstPAPRD_VAR4: TFMTBCdField;
    SqlCdsEstPAPRD_VAR5: TFMTBCdField;
    SqlCdsEstPAPRD_VAR6: TFMTBCdField;
    SqlCdsEstPAPRD_VAR7: TFMTBCdField;
    SqlCdsEstPAPRD_VAR8: TFMTBCdField;
    SqlCdsEstPAPRD_MINIMO: TFMTBCdField;
    SqlCdsEstPACC_DISPONIVEL: TCurrencyField;
    SqlCdsEstPAPRD_SAIDA: TFMTBCdField;
    SqlCdsVar: TSQLClientDataSet;
    SqlCdsVarPED_CODIGO: TStringField;
    SqlCdsVarPRF_VAR1: TFMTBCdField;
    SqlCdsVarPRF_VAR2: TFMTBCdField;
    SqlCdsVarPRF_VAR3: TFMTBCdField;
    SqlCdsVarPRF_VAR4: TFMTBCdField;
    SqlCdsVarPRF_VAR5: TFMTBCdField;
    SqlCdsVarPRF_VAR6: TFMTBCdField;
    SqlCdsVarPRF_VAR7: TFMTBCdField;
    SqlCdsVarPRF_VAR8: TFMTBCdField;
    SqlCdsVarPED_SITUACAO: TStringField;
    SqlCdsVarOPV_ATESTOQUE: TStringField;
    ppHeaderBand5: TppHeaderBand;
    ppDetailBand5: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    Label_empresaEstPA: TppLabel;
    Refer: TppLabel;
    DEscricao: TppLabel;
    Saldo: TppLabel;
    ppDBText78: TppDBText;
    ppDBText79: TppDBText;
    ppDBText80: TppDBText;
    SqlCdsEstPACC_SALDO: TCurrencyField;
    ppDBText81: TppDBText;
    ppLabel62: TppLabel;
    ppDBText82: TppDBText;
    ppLabel72: TppLabel;
    ppDBText83: TppDBText;
    ppDBText84: TppDBText;
    ppDBText85: TppDBText;
    ppDBText86: TppDBText;
    ppDBText87: TppDBText;
    ppDBText88: TppDBText;
    ppDBText90: TppDBText;
    ppDBText91: TppDBText;
    ppDBText92: TppDBText;
    SqlCdsEstPAPRD_DESCRI: TStringField;
    ppDBText93: TppDBText;
    ppDBText94: TppDBText;
    ppLabel77: TppLabel;
    ppLabel82: TppLabel;
    ppDBText95: TppDBText;
    ppDBText96: TppDBText;
    ppDBText97: TppDBText;
    ppDBText98: TppDBText;
    ppDBText99: TppDBText;
    ppDBText100: TppDBText;
    ppLine33: TppLine;
    ppLine34: TppLine;
    SqlCdsEstPACC_TESTE: TIntegerField;
    ppDBText89: TppDBText;
    SqlCdsEstPACC_DISP_VAR1: TIntegerField;
    SqlCdsEstPACC_DISP_VAR2: TIntegerField;
    SqlCdsEstPACC_DISP_VAR3: TIntegerField;
    SqlCdsEstPACC_DISP_VAR4: TIntegerField;
    SqlCdsEstPACC_DISP_VAR5: TIntegerField;
    SqlCdsEstPACC_DISP_VAR6: TIntegerField;
    SqlCdsEstPACC_DISP_VAR7: TIntegerField;
    SqlCdsEstPACC_DISP_VAR8: TIntegerField;
    ppSystemVariable17: TppSystemVariable;
    ppSystemVariable18: TppSystemVariable;
    ppLabel83: TppLabel;
    LblTipo: TppLabel;
    LblGrupo: TppLabel;
    ppLine35: TppLine;
    SqlCdsEstPAPTI_CODIGO: TStringField;
    SqlCdsEstPAPGR_CODIGO: TStringField;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBText101: TppDBText;
    ppDBText102: TppDBText;
    SqlCdsEstPAPTI_DESCRI: TStringField;
    SqlCdsEstPAPGR_DESCRI: TStringField;
    ppDBEstoquePA: TppDBPipeline;
    ppDBText103: TppDBText;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppDBText104: TppDBText;
    ppDBText105: TppDBText;
    ppLabel84: TppLabel;
    ppDBCalc9: TppDBCalc;
    ppParameterList1: TppParameterList;
    ppHeaderBand3: TppHeaderBand;
    ppLine10: TppLine;
    LBL_03_EMPRESA: TppLabel;
    LBL_03_LTITULO1: TppLabel;
    LBL_03_LTITULO2: TppLabel;
    ppLine11: TppLine;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel30: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLine12: TppLine;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppVariable6: TppVariable;
    ppDBText11: TppDBText;
    ppVariable7: TppVariable;
    ppDBText63: TppDBText;
    ppVariable4: TppVariable;
    ppSummaryBand3: TppSummaryBand;
    ppLine14: TppLine;
    ppLabel36: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppVariable8: TppVariable;
    ppVariable9: TppVariable;
    ppVariable11: TppVariable;
    raCodeModule3: TraCodeModule;
    SqlCdsProdutosPRD_RESERVA: TFMTBCdField;
    ppParameterList2: TppParameterList;
    Radreserva: TRadioButton;
    ppHeaderBand1: TppHeaderBand;
    ppLine1: TppLine;
    LBL_00_EMPRESA: TppLabel;
    LBL_00_LTITULO1: TppLabel;
    LBL_00_LTITULO2: TppLabel;
    ppLine2: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLine3: TppLine;
    ppLabel4: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppVariable1: TppVariable;
    ppLabel10: TppLabel;
    ppDBText4: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine4: TppLine;
    ppLabel11: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppVariable2: TppVariable;
    raCodeModule1: TraCodeModule;
    ppParameterList3: TppParameterList;
    pp01HeaderBand4: TppHeaderBand;
    ppLine8: TppLine;
    LBL_01_EMPRESA: TppLabel;
    LBL_01_LTITULO1: TppLabel;
    LBL_01_LTITULO2: TppLabel;
    ppLine15: TppLine;
    ppSystemVariable9: TppSystemVariable;
    ppSystemVariable10: TppSystemVariable;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLine16: TppLine;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel37: TppLabel;
    ppLabel45: TppLabel;
    pp01DetailBand4: TppDetailBand;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppVariable10: TppVariable;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppVariable12: TppVariable;
    pp01SummaryBand5: TppSummaryBand;
    ppLine17: TppLine;
    ppLabel48: TppLabel;
    ppDBCalc5: TppDBCalc;
    daDataModule1: TdaDataModule;
    raCodeModule5: TraCodeModule;
    ppParameterList4: TppParameterList;
    ppHeaderBand2: TppHeaderBand;
    ppLine5: TppLine;
    LBL_04_EMPRESA: TppLabel;
    LBL_04_LTITULO1: TppLabel;
    LBL_04_LTITULO2: TppLabel;
    ppLine6: TppLine;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLine7: TppLine;
    ppDVariacao: TppDetailBand;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppVariable3: TppVariable;
    ppLabel24: TppLabel;
    ppSubRVariacao: TppSubReport;
    ppChildReport2: TppChildReport;
    ppDetailBand4: TppDetailBand;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLine9: TppLine;
    ppLabel25: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppVariable5: TppVariable;
    raCodeModule2: TraCodeModule;
    SQLCdsTabMulti: TSQLClientDataSet;
    StringField2: TStringField;
    StringField3: TStringField;
    FMTBCdField1: TFMTBCdField;
    FMTBCdField2: TFMTBCdField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    FMTBCdField3: TFMTBCdField;
    StringField7: TStringField;
    StringField8: TStringField;
    DSTabMulti: TDataSource;
    ppDBPipeTabMulti: TppDBPipeline;
    ppRPTabMulti: TppReport;
    ppHeaderBand6: TppHeaderBand;
    ppLine36: TppLine;
    LABEL_EMPRESA2: TppLabel;
    LBL_05_END2: TppLabel;
    ppLine37: TppLine;
    ppSystemVariable19: TppSystemVariable;
    ppSystemVariable20: TppSystemVariable;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    LBL_05_DATAVI2: TppLabel;
    LBL_05_HOME2: TppLabel;
    ppDetailBand6: TppDetailBand;
    ppDBText106: TppDBText;
    ppDBText107: TppDBText;
    ppDBText109: TppDBText;
    ppDBText110: TppDBText;
    ppDBText112: TppDBText;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppDBText113: TppDBText;
    ppLine38: TppLine;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel99: TppLabel;
    ppLine39: TppLine;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppLine40: TppLine;
    SQLCdsTabMultiPRD_PVENDA2: TFMTBCdField;
    SQLCdsTabMultiPRD_PVENDA3: TFMTBCdField;
    SQLCdsTabMultiPRD_PVENDA4: TFMTBCdField;
    SQLCdsTabMultiPRD_PVENDA5: TFMTBCdField;
    SQLCdsTabMultiPRD_PVENDA6: TFMTBCdField;
    SQLCdsTabMultiPRD_DATA_ATUAL_TAB: TSQLTimeStampField;
    ppLabel95: TppLabel;
    ppDBText108: TppDBText;
    ppDBText111: TppDBText;
    ppDBText114: TppDBText;
    ppDBText115: TppDBText;
    ppDBText116: TppDBText;
    ppDBText117: TppDBText;
    ppLabel98: TppLabel;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    SQLCdsTabMultiPRD_UND: TStringField;
    ppLabel103: TppLabel;
    SQLCdsTabMultiMKP_COMIS1: TFMTBCdField;
    ppDBText118: TppDBText;
    ppDBText119: TppDBText;
    ppDBText120: TppDBText;
    ppDBText121: TppDBText;
    ppDBText122: TppDBText;
    ppDBText123: TppDBText;
    SQLCdsTabMultiMKP_COMIS2: TFMTBCdField;
    SQLCdsTabMultiMKP_COMIS3: TFMTBCdField;
    SQLCdsTabMultiMKP_COMIS4: TFMTBCdField;
    SQLCdsTabMultiMKP_COMIS5: TFMTBCdField;
    SQLCdsTabMultiMKP_COMIS6: TFMTBCdField;
    GrpAlmox: TGroupBox;
    Edt_Almox: TEdit;
    CbAlmox: TComboBox;
    SqlCdsAlmox: TSQLClientDataSet;
    SqlCdsAlmoxAMX_CODIGO: TStringField;
    SqlCdsAlmoxAMX_DESCRI: TStringField;
    SqlCdsAlmoxAMX_TIPO: TStringField;
    SqlCdsAlmoxEMP_CODIGO: TStringField;
    SqlCdsAlmoxAMX_FISICO: TStringField;
    SqlCdsAlmoxAMX_TERCEIROS: TStringField;
    SqlCdsAlmoxAMX_FORATERCEIROS: TStringField;
    SqlCdsAlmoxAMX_CIRCULANTE: TStringField;
    SqlCdsAlmoxAMX_VIRTUAL: TStringField;
    CdsEstoqueNovo: TSQLClientDataSet;
    CdsEstoqueNovoPRD_CODIGO: TStringField;
    CdsEstoqueNovoPRD_DESCRI: TStringField;
    CdsEstoqueNovoPRD_UND: TStringField;
    CdsEstoqueNovoPRD_PCUSTO: TFMTBCdField;
    CdsEstoqueNovoPRD_MINIMO: TFMTBCdField;
    CdsEstoqueNovoPGR_CODIGO: TStringField;
    CdsEstoqueNovoPTI_CODIGO: TStringField;
    CdsEstoqueNovoESTOQUE_ANTERIOR: TFMTBCdField;
    CdsEstoqueNovoESTOQUE_ENTRADAS: TFMTBCdField;
    CdsEstoqueNovoESTOQUE_SAIDAS: TFMTBCdField;
    CdsEstoqueNovoESTOQUE_ATUAL: TFMTBCdField;
    frxInventarioEstoque: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    CdsEstoqueNovoPRD_PMEDIO: TFMTBCdField;
    frxEstoqueAtual: TfrxReport;
    frxRelatorioFinanceiroEstoqueGeral: TfrxReport;
    CdsEstoqueNovoPRD_PENDENTE: TFMTBCdField;
    frxEstoqueCompras: TfrxReport;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    LTBoxProdu: TListBox;
    GrpDispositivo: TGroupBox;
    RadVideo: TRadioButton;
    RadImpressora: TRadioButton;
    RadText: TRadioButton;
    frxRelatorioFinanceiroEstoque: TfrxReport;
    CdsEstoqueNovoPRD_PVENDA: TFMTBCdField;
    CdsEstoqueNovoIPI_CODIGO: TStringField;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    grpNCMCredito: TGroupBox;
    chkNCMcredito: TCheckBox;
    frxInventarioNCM: TfrxReport;
    CbLinha: TComboBox;
    Edt_Linha: TEdit;
    Label1: TLabel;
    SqlCdsLinha: TSQLClientDataSet;
    SqlCdsLinhaLIN_CODIGO: TStringField;
    SqlCdsLinhaLIN_DESCRI: TStringField;
    SqlCdsLinhaEMP_CODIGO: TStringField;
    SqlCdsProdutosPRD_REFER: TStringField;
    SqlCdsRel05PRD_REFER: TStringField;
    SqlCdsProduFornecedorPRD_REFER: TStringField;
    SqlCdsEstoquePRD_REFER: TStringField;
    SqlCdsEstPAPRD_REFER: TStringField;
    SqlCdsVarPRD_REFER: TStringField;
    SQLCdsTabMultiPRD_REFER: TStringField;
    CdsEstoqueNovoPRD_REFER: TStringField;
    CdsEstoquePRD_REFER: TStringField;
    grpAdicional: TGroupBox;
    chkProdutoInativo: TCheckBox;
    CdsEstoqueNovoPRDE_REGISTRO: TIntegerField;
    CdsEstoqueNovoPRDE_ENDERECO: TStringField;
    rbEnder: TRadioButton;
    rbMarca: TRadioButton;
    CdsEstoqueNovolin_descri: TStringField;
    frxEstoqueAtualGrade: TfrxReport;
    CdsEstoqueNovoPRG_DESCRICAO: TStringField;
    CdsEstoqueNovoPRG_SALDO: TFMTBCDField;
    EditDataI: TJvDateEdit;
    EditDataF: TJvDateEdit;
    EdtDtVigenc: TJvDateEdit;
    frxEstoqueCodBarra: TfrxReport;
    SqlCdsProdutosPRD_CUSTOFRETE: TFMTBCDField;
    SqlCdsProdutosPRD_CUSTOIPI: TFMTBCDField;
    SqlCdsProdutosPRD_CUSTOSUBTRIB: TFMTBCDField;
    SqlCdsProdutosPRD_CUSTOCOMIPI: TFMTBCDField;
    SqlCdsProdutosPRD_MARGEMVENDA: TFMTBCDField;
    ppRP15: TppReport;
    ppParameterList11: TppParameterList;
    ppHeaderBand7: TppHeaderBand;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel104: TppLabel;
    ppLine43: TppLine;
    ppLine45: TppLine;
    LBL_15_EMPRESA1: TppLabel;
    ppSystemVariable21: TppSystemVariable;
    ppSystemVariable22: TppSystemVariable;
    LBL_15_RELATORIO: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel92: TppLabel;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    Logo: TppImage;
    LBL_15_FILTRO: TppLabel;
    ppDetailBand7: TppDetailBand;
    ppDBText124: TppDBText;
    ppDBText125: TppDBText;
    ppDBText127: TppDBText;
    ppDBText126: TppDBText;
    ppDBText128: TppDBText;
    ppDBText129: TppDBText;
    ppDBText130: TppDBText;
    ppDBText131: TppDBText;
    ppDBText132: TppDBText;
    ppDBText133: TppDBText;
    ppLabel108: TppLabel;
    ppSummaryBand6: TppSummaryBand;
    ppLine44: TppLine;
    ppLabel111: TppLabel;
    ppDBCalc10: TppDBCalc;
    raCodeModule6: TraCodeModule;
    ppDesignLayers12: TppDesignLayers;
    ppDesignLayer12: TppDesignLayer;
    procedure MudaCorCampos(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure BitOkClick(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
    procedure BitConfigClick(Sender: tObject);
    procedure CBoxNomeRelClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure EdtDtVigencExit(Sender: tObject);
    procedure LTBoxProduClick(Sender: tObject);
    procedure pp07HeaderBand1BeforePrint(Sender: tObject);
    procedure CbTipoClick(Sender: tObject);
    procedure CbGrupoClick(Sender: tObject);
    procedure pp05HeaderBand4BeforePrint(Sender: tObject);
    procedure Edt_TipoKeyPress(Sender: tObject; var Key: Char);
    procedure Edt_TipoExit(Sender: tObject);
    procedure Edt_GrupoExit(Sender: tObject);
    procedure Edt_TipoClick(Sender: tObject);
    procedure Edt_GrupoClick(Sender: tObject);
    procedure SqlCdsEstPACalcFields(DataSet: TDataSet);
    procedure ppHeaderBand6BeforePrint(Sender: tObject);
    procedure Edt_AlmoxClick(Sender: tObject);
    procedure Edt_AlmoxExit(Sender: tObject);
    procedure CbAlmoxClick(Sender: tObject);
    procedure CbAlmoxExit(Sender: tObject);
    procedure frxInventarioEstoqueGetValue(const VarName: String;
      var Value: Variant);
    procedure frxEstoqueAtualGetValue(const VarName: String;
      var Value: Variant);
    procedure frxRelatorioFinanceiroEstoqueGeralGetValue(
      const VarName: String; var Value: Variant);
    procedure frxInventarioNCMGetValue(const VarName: String;
      var Value: Variant);
    procedure Edt_LinhaClick(Sender: tObject);
    procedure Edt_LinhaExit(Sender: tObject);
    procedure Edt_LinhaKeyPress(Sender: tObject; var Key: Char);
    procedure CbLinhaClick(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure ppDBText130GetText(Sender: TObject; var Text: string);
    procedure ppDBText133GetText(Sender: TObject; var Text: string);
    procedure ppDBText132GetText(Sender: TObject; var Text: string);
    procedure ppDBText131GetText(Sender: TObject; var Text: string);
    procedure ppDBText129GetText(Sender: TObject; var Text: string);
    procedure ppDBText128GetText(Sender: TObject; var Text: string);
    procedure ppDBText126GetText(Sender: TObject; var Text: string);
    procedure ppDBText127GetText(Sender: TObject; var Text: string);
  private
    { Private declarations }
         {campos}
    CampoEdit    :TEdit;
    CampoBox     :TComboBox;
    CampoData    :TjvDateEdit;
    CampoTDBLuk  :TDBLookupComboBox;
    WGrupo, WTipo, WTabelaPreco, wOrdem,wSeleciona:String;
    procedure LayOutDoForm;
    procedure HabSecao;
    procedure HabSaldo;
    procedure HabOrdem;
    procedure HabVigen;
    procedure DesSecao;
    procedure DesSaldo;
    procedure DesOrdem;
    procedure DesVigen;
    procedure HabDesAlmoxarifado(status:Boolean);
    procedure CriaRelProdu01;
    procedure CriaRelProdu05;
    procedure CriaRelTabMultipla;
    procedure CriaRelProdu08;
    procedure CriaRelProdu09;
    Procedure CriaRelEstPA;
    //
    procedure BuscaEstoque(condicaoAdicional:String);
  public
    { Public declarations }
  end;

var
  FormGImpProduto: TFormGImpProduto;
  sFiltro:String;
implementation

{$R *.DFM}

uses Uteis, DataCad, ufrmpreviewrb, iniciodb;

procedure TFormGImpProduto.MudaCorCampos(Sender: tObject);
begin
    {CampoEdit :TEdit}
    if Assigned(CampoEdit) then
       begin
           CampoEdit.color := clWindow;
       end;
    if ActiveControl is TEdit then
       begin
           if TEdit(ActiveControl).color = $00D7D7D7 then
              begin
                  exit;
              end;
           TEdit(ActiveControl).color := $0080FFFF;
           CampoEdit := TEdit(ActiveControl);
       end
    else
       begin
           CampoEdit := nil;
       end;
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
    if ActiveControl is TjvDateEdit then
       begin
           TjvDateEdit(ActiveControl).color := $0080FFFF;
           CampoData := TjvDateEdit(ActiveControl);
       end
    else
       begin
           CampoData := nil;
       end;
    {CampoTDBLuk  :TDBLookupComboBox}
    if Assigned(CampoTDBLuk) then
       begin
           CampoTDBLuk.color := clWindow;
       end;
    if ActiveControl is TDBLookupComboBox then
       begin
           TDBLookupComboBox(ActiveControl).color := $0080FFFF;
           CampoTDBLuk := TDBLookupComboBox(ActiveControl);
       end
    else
       begin
           CampoTDBLuk := nil;
       end;
end;

procedure TFormGImpProduto.FormShow(Sender: tObject);
begin
    Left := 160;
    Top := 82;
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
    PMT_CAB_TABPRECO.Caption := dbinicio.empresa.wPMT_CAB_TABPRECO;

    SqlCdsTipo.Close;
    SqlCdsTipo.CommandText:=SQLDEF('TABELAS','SELECT PTI_CODIGO,PTI_DESCRI FROM PRD_TIPO','','PTI_DESCRI','');
    SqlCdsTipo.Open;
    while not SqlCdsTipo.Eof do
    begin
         CbTipo.Items.Add(SqlCdsTipoPTI_DESCRI.AsString);
         SqlCdsTipo.Next;
    end;

    SqlCdsGrupo.Close;
    SqlCdsGrupo.CommandText:=SQLDEF('TABELAS','SELECT PGR_CODIGO,PGR_DESCRI, PGR_COMISS, PGR_COM_PERC FROM PRD_GRUPO','','PGR_DESCRI','');
    SqlCdsGrupo.Open;
    while not SqlCdsGrupo.Eof do
    begin
         CbGrupo.Items.Add(SqlCdsGrupoPGR_DESCRI.AsString);
         SqlCdsGrupo.Next;
    end;

    SqlCdsLinha.Close;
    SqlCdsLinha.CommandText:=SQLDEF('TABELAS','select LIN_CODIGO, LIN_DESCRI, EMP_CODIGO from prd_linha','','LIN_DESCRI','');
    SqlCdsLinha.Open;
    SqlCdsLinha.First;
    while not SqlCdsLinha.Eof do
    begin
         CbLinha.Items.Add(SqlCdsLinhaLIN_DESCRI.AsString);
         SqlCdsLinha.Next;
    end;

    SqlCdsAlmox.Close;
    SqlCdsAlmox.CommandText:=SQLDEF('TABELAS','SELECT * FROM ALMOX0000','','AMX_DESCRI','');
    SqlCdsAlmox.Open;
    SqlCdsAlmox.First;
    while not SqlCdsAlmox.Eof do
    begin
         CbAlmox.Items.Add(SqlCdsAlmoxAMX_DESCRI.AsString);
         SqlCdsAlmox.Next;
    end;

    Edt_Tipo.Text     := '999';
    CbTipo.ItemIndex  := 0;
    CbTipo.Text       := 'TODOS OS TIPOS';
    Edt_Grupo.Text    := '999';
    CbGrupo.ItemIndex := 0;
    CbGrupo.Text      := 'TODOS OS GRUPOS';
    Edt_Almox.Text    := '9999';
    CbLinha.ItemIndex := 0;
    CbLinha.Text      := 'TODAS AS LINHAS';
    Edt_Linha.Text    := '999';
    CbAlmox.ItemIndex := 0;
    CbAlmox.Text      := 'TODOS OS ALMOXARIFADOS';
    // carregar o ListBox com os nomes dos relatórios
    LTBoxProdu.Items.Add('Relatório do Estoque Físico (novo)');                   //00 PPRP00
    LTBoxProdu.Items.Add('Relatório do Estoque Físico+Compras em Aberto (novo)'); //01 PPRP01
    LTBoxProdu.Items.Add('Relatório do Estoque Físico por Grade'); //02 PPRP01
    LTBoxProdu.Items.Add('Relatório Financeiro do Estoque (novo)');               //03 frxRelatorioFinanceiroEstoque
    LTBoxProdu.Items.Add('Rel.Financeiro do Estoque por Período'); //04 PPRP09
    LTBoxProdu.Items.Add('Rel.do Estoque com Variações'); //05 PPRP04
    LTBoxProdu.Items.Add('Tabela de Preços por Linha');                         //06 PPRP05
    LTBoxProdu.Items.Add('Tabela de Preços por Linha - Multi-Preços');           //07 ppRPTabMulti
    LTBoxProdu.Items.Add('Código de Barras - Etiquetas');                        //08 nao tem
    LTBoxProdu.Items.Add('Relatório de Produtos por Fornecedor');                //09 PPRP07
    LTBoxProdu.Items.Add('Rel.Descrição das Variações');  //10 PPRP08
    LTBoxProdu.Items.Add('Rel.produto acabado e semi-acabado'); //11 PPRP08
    LTBoxProdu.Items.Add('Relatório de Inventário de Estoque (novo)');            //12 frxInventarioEstoque
    LTBoxProdu.Items.Add('Relatório de Inventário de Estoque - NCM');            //13
    LTBoxProdu.Items.Add('Relatório de Estoque Físico com Código de barras');    //14
    LTBoxProdu.Items.Add('Relatório de Custo de Mercadoria Vendida - CMV');    //15
    LTBoxProdu.ItemIndex:=0;
    LTBoxProdu.SetFocus;
    DesVigen;
    DesSecao;
    DesSaldo;
    DesOrdem;
    LayOutDoForm;
    screen.cursor := crDefault;
end;

procedure TFormGImpProduto.FormCloseQuery(Sender: tObject;  var CanClose: Boolean);
begin
     CdsEstoqueNovo.Close;
     SqlCdsGrupo.Close;
     SqlCdsAlmox.Close;
     SqlCdsLinha.Close;
     SqlCdsTipo.Close;
     SqlCdsProdutos.Close;
     SqlCdsRel05.Close;
end;

procedure TFormGImpProduto.BitOkClick(Sender: tObject);
begin
   wSeleciona := '';
   if LTBoxProdu.ItemIndex in [0,1,2,3,4,12,13,14]  then
   begin

         case LTBoxProdu.ItemIndex of
           0:
              begin
                  BuscaEstoque('');
                  //sFiltro := 'Período de :'+EditDataI.Text+' até '+EditDataF.Text+' Tipo:'+CbTipo.Text+' Grupo:'+CbGrupo.Text+' Almoxarifados:'+CbAlmox.Text;
                  sFiltro := 'Estoque até '+EditDataI.Text+' Tipo:'+CbTipo.Text+' Grupo:'+CbGrupo.Text+' Linha:'+CbLinha.Text+' Almoxarifados:'+CbAlmox.Text;
                  frxEstoqueAtual.ShowReport();
              end;
           2 :
              begin
                  BuscaEstoque('');
                  //sFiltro := 'Período de :'+EditDataI.Text+' até '+EditDataF.Text+' Tipo:'+CbTipo.Text+' Grupo:'+CbGrupo.Text+' Almoxarifados:'+CbAlmox.Text;
                  sFiltro := 'Estoque até '+EditDataI.Text+' Tipo:'+CbTipo.Text+' Grupo:'+CbGrupo.Text+' Linha:'+CbLinha.Text+' Almoxarifados:'+CbAlmox.Text;
                  frxEstoqueAtualGrade.ShowReport();

              end;
           1: begin
                  BuscaEstoque('');
                  //sFiltro := 'Período de :'+EditDataI.Text+' até '+EditDataF.Text+' Tipo:'+CbTipo.Text+' Grupo:'+CbGrupo.Text+' Almoxarifados:'+CbAlmox.Text;
                  sFiltro := 'Estoque até '+EditDataI.Text+' Tipo:'+CbTipo.Text+' Grupo:'+CbGrupo.Text+' Linha:'+CbLinha.Text+' Almoxarifados:'+CbAlmox.Text;
                  frxEstoqueCompras.ShowReport();
              end;
           3: begin
                  BuscaEstoque('');
                  sFiltro := 'Período de :'+EditDataI.Text+' até '+EditDataF.Text+' Tipo:'+CbTipo.Text+' Linha:'+CbLinha.Text+' Grupo:'+CbGrupo.Text+' Almoxarifados:'+CbAlmox.Text;
                  frxRelatorioFinanceiroEstoque.ShowReport();
              end;
           4: begin
                  BuscaEstoque('');
                  sFiltro := 'Período de :'+EditDataI.Text+' até '+EditDataF.Text+' Tipo:'+CbTipo.Text+' Linha:'+CbLinha.Text+' Grupo:'+CbGrupo.Text+' Almoxarifados:'+CbAlmox.Text;
                  frxRelatorioFinanceiroEstoqueGeral.ShowReport();
              end;
           12: begin
                  BuscaEstoque('inventario');
                  sFiltro := 'Período de :'+EditDataI.Text+' até '+EditDataF.Text+' Tipo:'+CbTipo.Text+' Linha:'+CbLinha.Text+' Grupo:'+CbGrupo.Text+' Almoxarifados:'+CbAlmox.Text;
                  frxInventarioEstoque.ShowReport();
               end;
           13: begin
                  BuscaEstoque('inventarioNCM');
                  sFiltro := 'Período de :'+EditDataI.Text+' até '+EditDataF.Text+' Tipo:'+CbTipo.Text+' Linha:'+CbLinha.Text+' Grupo:'+CbGrupo.Text+' Almoxarifados:'+CbAlmox.Text;
                  frxInventarioNCM.ShowReport();
               end;
           14: begin
                  BuscaEstoque('');
                  //sFiltro := 'Periodo de :'+EditDataI.Text+' at� '+EditDataF.Text+' Tipo:'+CbTipo.Text+' Grupo:'+CbGrupo.Text+' Almoxarifados:'+CbAlmox.Text;
                   sFiltro := 'Período de :'+EditDataI.Text+' até '+EditDataF.Text+' Tipo:'+CbTipo.Text+' Linha:'+CbLinha.Text+' Grupo:'+CbGrupo.Text+' Almoxarifados:'+CbAlmox.Text;
                  frxEstoqueCodBarra.ShowReport();

               end;
         end;
   end
   else
   begin
         Screen.Cursor := crHourGlass;
         {Configura a Classificacao do Produto}

         if RadRefer.Checked then
            wOrdem:='P1.PRD_REFER,P1.PRD_DESCRI'
         else
         if RadProdu.Checked then
            wOrdem:='P1.PRD_DESCRI,P1.PRD_REFER';


         if (LTBoxProdu.ItemIndex in [0,1,3,5,14,15] ) then
            begin
                if RadTodos.checked  then
                   begin
                       if (LTBoxProdu.ItemIndex = 2) then
                          wSeleciona := 'Where P1.PRD_PENDENTE > 0 '
                       else
                          wSeleciona:='';
                       LBL_00_LTitulo2.Caption := 'Todo o estoque ';
                       LBL_01_LTitulo2.Caption := 'Todo o estoque ';
                       LBL_03_LTitulo2.Caption := 'Todo o estoque ';
                       LBL_04_LTitulo2.Caption := 'Todo o estoque ';
                   end;

                if RadPositivo.checked  then
                   begin
                       if (LTBoxProdu.ItemIndex = 0) or (LTBoxProdu.ItemIndex = 1) or (LTBoxProdu.ItemIndex = 3) or (LTBoxProdu.ItemIndex = 5) or (LTBoxProdu.ItemIndex = 14) or (LTBoxProdu.ItemIndex = 15) then
                          wSeleciona := 'Where (P1.PRD_ESTOQUE+P1.PRD_ENTRADA-(P1.PRD_SAIDA+P1.PRD_RESERVA)>0)';
                          //wSeleciona:='Where ((P1.PRD_ESTOQUE+P1.PRD_ENTRADA+P1.PRD_PENDENTE-(P1.PRD_SAIDA+P1.PRD_RESERVA)>0))AND(P1.PRD_PENDENTE>0) ';
                       LBL_00_LTitulo2.Caption := 'Produtos com estoque positivo ';
                       LBL_01_LTitulo2.Caption := 'Produtos com estoque positivo ';
                       LBL_03_LTitulo2.Caption := 'Produtos com estoque positivo ';
                       LBL_04_LTitulo2.Caption := 'Produtos com estoque positivo ';
                   end;

                if RadNegativo.checked  then
                   begin
                       if (LTBoxProdu.ItemIndex = 0) or (LTBoxProdu.ItemIndex = 1)  or (LTBoxProdu.ItemIndex = 3) or (LTBoxProdu.ItemIndex = 5) or (LTBoxProdu.ItemIndex = 14) or (LTBoxProdu.ItemIndex = 15) then
                          wSeleciona := 'Where ((P1.PRD_ESTOQUE+P1.PRD_ENTRADA-(P1.PRD_SAIDA+P1.PRD_RESERVA)<0) OR (P1.PRD_ESTOQUE+P1.PRD_ENTRADA-(P1.PRD_SAIDA+P1.PRD_RESERVA)<P1.PRD_MINIMO))';
                         // wSeleciona:='Where ((P1.PRD_ESTOQUE+P1.PRD_ENTRADA+P1.PRD_PENDENTE-(P1.PRD_SAIDA+P1.PRD_RESERVA)<0) OR (P1.PRD_ESTOQUE+P1.PRD_ENTRADA+P1.PRD_PENDENTE-(P1.PRD_SAIDA+P1.PRD_RESERVA)<P1.PRD_MINIMO))AND(P1.PRD_PENDENTE>0) ';
                       LBL_00_LTitulo2.Caption := 'Produtos com estoque negativo ou abaixo do mínimo ';
                       LBL_01_LTitulo2.Caption := 'Produtos com estoque negativo ou abaixo do mínimo ';
                       LBL_03_LTitulo2.Caption := 'Produtos com estoque negativo ou abaixo do mínimo ';
                       LBL_04_LTitulo2.Caption := 'Produtos com estoque negativo ou abaixo do mínimo ';
                   end;
                if Radreserva.checked  then
                   begin
                       if (LTBoxProdu.ItemIndex = 0) or (LTBoxProdu.ItemIndex = 14)  or (LTBoxProdu.ItemIndex = 15)then
                          wSeleciona := 'Where P1.PRD_RESERVA > 0 '
                       else
                          wSeleciona:='';
                       LBL_00_LTitulo2.Caption := 'Estoque em Reserva ';
                       LBL_01_LTitulo2.Caption := 'Estoque em Reserva ';
                       LBL_03_LTitulo2.Caption := 'Estoque em Reserva ';
                       LBL_04_LTitulo2.Caption := 'Estoque em Reserva ';
                   end;


            end;
         {Relatório de produtor por fornecedor}
         if LTBoxProdu.ItemIndex IN [0,14,15] then
            begin
                CriaRelProdu01;
                exit;
            end;
         {Relatorio do Estoque atual + compras em aberto}
         if LTBoxProdu.ItemIndex = 1 then
            begin
                CriaRelProdu01;
                exit;
            end;
         {Relatorio Financeiro do Estoque (Geral)}
         if LTBoxProdu.ItemIndex = 3 then
            begin
                CriaRelProdu01;
                exit;
            end;
         {Relatorio Financeiro do Estoque no Periodo}
         if LTBoxProdu.ItemIndex = 4 then
            begin
                CriaRelProdu09;
                exit;
            end;
         {Relatório do Estoque Atual com Saldo das Variações}
         if LTBoxProdu.ItemIndex = 5 then
            begin
                CriaRelProdu01;
                exit;
            end;
         {Tabela de Preços - Unica}
         if LTBoxProdu.ItemIndex = 6 then
            begin
                CriaRelProdu05;
                exit;
            end;
         {Tabela de Preços - Multipla}
         if LTBoxProdu.ItemIndex = 7 then
            begin
                CriaRelTabMultipla;
                exit;
            end;

         {Código de Barras - Etiquetas}
         if LTBoxProdu.ItemIndex = 8 then
            begin
                Screen.Cursor := crDefault;
            end;
         {Relatório de Produtos por Fornecedor}
         if LTBoxProdu.ItemIndex = 9 then
            begin
                CriaRelProdu08;
                exit;
            end;

         {Relatório de Descrição das Variações}
         if LTBoxProdu.ItemIndex = 10 then
            begin
                CriaRelProdu01;
                exit;
            end;
         {relatorio do estoque PA}
         if LTBoxProdu.ItemIndex = 11 then
            begin
                CriaRelEstPA;
            end;

         if LTBoxProdu.ItemIndex = 14 then
            begin
                CriaRelProdu01;
                exit;
            end;
         if LTBoxProdu.ItemIndex = 15 then
            begin
                CriaRelProdu01;
                exit;
            end;
      end;
    Screen.Cursor     := crDefault;
    Edt_Tipo.Text     := '999';
    CbTipo.ItemIndex  := 0;
    CbTipo.Text       := 'TODOS OS TIPOS';
    Edt_Grupo.Text    := '999';
    CbGrupo.ItemIndex := 0;
    CbGrupo.Text      := 'TODOS OS GRUPOS';
    Edt_Linha.Text    := '999';
    CbLinha.ItemIndex := 0;
    CbLinha.Text      := 'TODAS AS LINHAS';
end;

procedure TFormGImpProduto.BitCancelarClick(Sender: tObject);
begin
    Close;
end;

procedure TFormGImpProduto.LayOutDoForm;
Var
 DataV:String;
begin
    label4.Visible := True;
    EditDataF.Visible := True;
    FormGImpProduto.AutoSize := True;
    //credito
    if ((LTBoxProdu.ItemIndex = 0)or(LTBoxProdu.ItemIndex = 1)or(LTBoxProdu.ItemIndex = 3)or(LTBoxProdu.ItemIndex = 4)or(LTBoxProdu.ItemIndex = 12)or(LTBoxProdu.ItemIndex = 13)or(LTBoxProdu.ItemIndex = 14)or(LTBoxProdu.ItemIndex = 15))then
      begin
        grpNCMCredito.Visible := True;
        grpAdicional.Visible := True;
      end
    else
      begin
        grpNCMCredito.Visible := False;
        grpAdicional.Visible := False;
      end;

    //rbEnder.visible :=  (LTBoxProdu.ItemIndex = 0);
    
    if (LTBoxProdu.ItemIndex = 0)or(LTBoxProdu.ItemIndex = 1)or(LTBoxProdu.ItemIndex = 2)or(LTBoxProdu.ItemIndex = 14) or (LTBoxProdu.ItemIndex = 15) then
      begin
           // copiei itemindex = 0 or itemindex = 1
         GrpAlmox.Visible := True;
         EditDataI.Date := (now);
         label4.Visible := false;
         EditDataF.Visible := false;
         EditDataF.Date := now;
         Group02.Visible := True;
         //
         //  Group02.Visible := False;
           {Quem fica visivel e quem fica invisivel}
           GrpVigencia.Visible := False;
           DesVigen;
        //   GrpVigencia.Top := 96;
           HabSecao;
        //   GrpSelecao.Top  := 178;
           HabSaldo;
        //   GrpSaldo.Top    := 137;
           HabDesAlmoxarifado(true);
        //   GrpAlmox.Top    := 247;
           HabOrdem;
        //   GrpOrdem.Top    := 288;
       //    GrpBotoes.Top   := 327;
           GrpSaldo.Visible := True;
          // Barcod1.Visible := False;
           {Tamanho do Form e Tops}
           Edt_Tipo.SetFocus;
           Edt_Tipo.SelectAll;
           exit;
      end;
    if ((LTBoxProdu.ItemIndex = 3)or(LTBoxProdu.ItemIndex = 5)) then
       begin
           Group02.Visible := False;
           {Quem fica visivel e quem fica invisivel}
           GrpVigencia.Visible := True;
           DesVigen;
         //  GrpVigencia.Top := 96;
           HabSecao;
         //  GrpSelecao.Top  := 178;
           HabSaldo;
         //  GrpSaldo.Top    := 137;
           HabDesAlmoxarifado(true);
         //  GrpAlmox.Top    := 247;
           HabOrdem;
         //  GrpOrdem.Top    := 288;
         //  GrpBotoes.Top   := 327;
           GrpSaldo.Visible := True;
          // Barcod1.Visible := False;
           {Tamanho do Form e Tops}
           Edt_Tipo.SetFocus;
           Edt_Tipo.SelectAll;
           exit;
       end;
    if (LTBoxProdu.ItemIndex = 4) then
       begin
           {Quem fica visivel e quem fica invisivel}
           EditDataI.Date := (now-30);
           EditDataF.Date := now;
           DesVigen;
           GrpVigencia.Visible := True;
          // GrpVigencia.Top := 96;
           Group02.Visible := True;
          // Group02.Top     := 137;
           HabSaldo;
          // GrpSaldo.Top    := 177;
           HabSecao;
          // GrpSelecao.Top  := 217;
           HabOrdem;
         //  GrpOrdem.Top    := 286;
         //  GrpBotoes.Top   := 325;
           GrpSaldo.Visible := True;
           // Barcod1.Visible := False;
           {Tamanho do Form e Tops}
           EditDataI.SetFocus;
           EditDataI.SelectAll;
           exit;
       end;
    if (LTBoxProdu.ItemIndex = 6) or (LTBoxProdu.ItemIndex = 7) then
       begin
           Group02.Visible := False;
           {Quem fica visivel e quem fica invisivel}
           HabVigen;
           GrpVigencia.Visible := True;
         //  GrpVigencia.Top := 96;
           HabSecao;
           GrpSelecao.Enabled := True;
          // GrpSelecao.Top  := 178;
           DesSaldo;
         //  GrpSaldo.Top    := 137;
           DesOrdem;
         //  GrpOrdem.Top    := 247;
         //  GrpBotoes.Top   := 286;
           DataV := EdtDtVigenc.Text;
           EdtDtVigenc.Text := Copy(DataV,4,2)+'/'+Copy(DataV,1,2)+'/'+Copy(DataV,7,4);
           EdtDtVigenc.Date := Now;
           GrpSaldo.Visible := True;
           EdtDtVigenc.SetFocus;
           EdtDtVigenc.SelectAll;
           exit;
       end;
    if (LTBoxProdu.ItemIndex = 8) then
       begin
           Group02.Visible := False;
           {Quem fica visivel e quem fica Desabilitado}
           DesVigen;
           GrpVigencia.Visible := True;
          // GrpVigencia.Top := 96;
           DesSecao;
          // GrpSelecao.Top  := 178;
           DesSaldo;
         //  GrpSaldo.Top    := 137;
           DesOrdem;
         //  GrpOrdem.Top    := 247;
         //  GrpBotoes.Top   := 286;
           GrpSaldo.Visible := True;
           exit;
       end;
    if (LTBoxProdu.ItemIndex = 9) then
       begin
           Group02.Visible := False;
           {Quem fica visivel e quem fica invisivel}
           DesVigen;
           GrpVigencia.Visible := True;
         //  GrpVigencia.Top := 96;
           HabSecao;
         //  GrpSelecao.Top  := 178;
           DesSaldo;
         //  GrpSaldo.Top    := 137;
           HabOrdem;
        //   GrpOrdem.Top    := 247;
        //   GrpBotoes.Top   := 286;
           GrpSaldo.Visible := True;
           // Barcod1.Visible := False;
           {Tamanho do Form e Tops}
           Edt_Tipo.SetFocus;
           Edt_Tipo.SelectAll;
           exit;
       end;
    if (LTBoxProdu.ItemIndex = 10) then
       begin
           Group02.Visible := False;
           {Quem fica visivel e quem fica invisivel}
           DesVigen;
           GrpVigencia.Visible := True;
          // GrpVigencia.Top := 96;
           HabSecao;
         //  GrpSelecao.Top  := 178;
           DesSaldo;
           GrpSaldo.Visible := True;
          // GrpSaldo.Top    := 137;
           HabOrdem;
         //  GrpOrdem.Top    := 218;
         //  GrpBotoes.Top   := 250;
           // Barcod1.Visible := False;
           {Tamanho do Form e Tops}
           Edt_Tipo.SetFocus;
           Edt_Tipo.SelectAll;
           exit;
       end;
    if (LTBoxProdu.ItemIndex = 11) then
       begin
           Group02.Visible := False;
           {Quem fica visivel e quem fica invisivel}
           DesVigen;
           GrpVigencia.Visible := false;
           HabSecao;
         //  GrpSelecao.Top  := 96;
           DesSaldo;
           GrpSaldo.Visible := false;
         //  grpSaldo.Top     := 96;
           HabOrdem;
         //  GrpOrdem.Top    := 177;
         //  GrpBotoes.Top   := 218;
           {Tamanho do Form e Tops}
           Edt_Tipo.SetFocus;
           Edt_Tipo.SelectAll;
           exit;
       end;
    if ((LTBoxProdu.ItemIndex = 0)or(LTBoxProdu.ItemIndex = 1)or(LTBoxProdu.ItemIndex = 14) or(LTBoxProdu.ItemIndex = 15) )   then
       begin
         GrpAlmox.Visible := True;
         EditDataI.Date := (now);
         label4.Visible := false;
         EditDataF.Visible := false;
         EditDataF.Date := now;
         Group02.Visible := True;
       end
    else
    if ((LTBoxProdu.ItemIndex = 4)or(LTBoxProdu.ItemIndex = 12)or(LTBoxProdu.ItemIndex = 13)) then
      begin
         GrpAlmox.Visible := True;
         EditDataI.Date := (now-30);
         //label4.Visible := false;
         //EditDataF.Visible := false;
         EditDataF.Date := now;
         Group02.Visible := True;
      end
    else
      GrpAlmox.Visible := False;


    FormGImpProduto.AutoSize := True;
end;

procedure TFormGImpProduto.BitConfigClick(Sender: tObject);
begin
    PrinterSetupDialog1.Execute;
end;

procedure TFormGImpProduto.CBoxNomeRelClick(Sender: tObject);
begin
    LayOutDoForm;
end;

procedure TFormGImpProduto.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
end;

procedure TFormGImpProduto.EdtDtVigencExit(Sender: tObject);
begin
    if not TestaDataStr(EdtDtVigenc.Text) then
       EdtDtVigenc.setfocus;
end;

procedure TFormGImpProduto.LTBoxProduClick(Sender: tObject);
begin
    LayOutDoForm;
end;

procedure TFormGImpProduto.HabVigen;
begin
    GrpVigencia.Enabled := True;
    LabelData.Enabled   := True;
    EdtDtVigenc.Enabled := True;
end;

procedure TFormGImpProduto.HabSecao;
begin
    GrpSelecao.Enabled   := True;
    LabelBanco.Enabled   := True;
    LabelCliente.Enabled := True;
    CbGrupo.Enabled      := True;
    CbTipo.Enabled       := True;
    CbLinha.Enabled      := True;  
end;

procedure TFormGImpProduto.HabSaldo;
begin
    GrpSaldo.Enabled    := True;
    RadTodos.Enabled    := True;
    RadPositivo.Enabled := True;
    RadNegativo.Enabled := True;
end;

procedure TFormGImpProduto.HabOrdem;
begin
    GrpOrdem.Enabled := True;
    RadRefer.Enabled := True;
    RadProdu.Enabled := True;
end;

procedure TFormGImpProduto.DesOrdem;
begin
    GrpOrdem.Enabled := False;
    RadRefer.Enabled := False;
    RadProdu.Enabled := False;
end;

procedure TFormGImpProduto.DesSaldo;
begin
    GrpSaldo.Enabled    := False;
    RadTodos.Enabled    := False;
    RadPositivo.Enabled := False;
    RadNegativo.Enabled := False;
end;

procedure TFormGImpProduto.DesSecao;
begin
    GrpSelecao.Enabled   := False;
    LabelBanco.Enabled   := False;
    LabelCliente.Enabled := False;
    CbGrupo.Enabled      := False;
    CbTipo.Enabled       := False;
    CbLinha.Enabled      := False;
end;

procedure TFormGImpProduto.DesVigen;
begin
    GrpVigencia.Enabled := False;
    LabelData.Enabled   := False;
    EdtDtVigenc.Enabled := False;
end;

procedure TFormGImpProduto.CriaRelProdu01;
begin
     if LTBoxProdu.ItemIndex in [0,1,2,3,5,10,14,15] then
       begin
           LBL_00_EMPRESA.Caption:=dbInicio.Empresa.Razao;
           LBL_01_EMPRESA.Caption:=dbInicio.Empresa.Razao;
           LBL_03_EMPRESA.Caption:=dbInicio.Empresa.Razao;
           LBL_04_EMPRESA.Caption:=dbInicio.Empresa.Razao;
           LBL_08_EMPRESA.Caption:=dbInicio.Empresa.Razao;
           if (Edt_Tipo.Text <> '999') then
           begin
                  {Selecionou um tipo}
                  if (LTBoxProdu.ItemIndex = 0)or(LTBoxProdu.ItemIndex = 1)or(LTBoxProdu.ItemIndex = 2) or (LTBoxProdu.ItemIndex = 3) or (LTBoxProdu.ItemIndex = 5) or (LTBoxProdu.ItemIndex = 14)  or (LTBoxProdu.ItemIndex = 15)  then
                  begin
                         if RadTodos.checked  then
                         begin
                                if (LTBoxProdu.ItemIndex <> 2) then
                                   wSeleciona := wSeleciona +' where P1.PTI_CODIGO='''+Edt_Tipo.text+''''
                                else
                                   wSeleciona := wSeleciona + ' AND P1.PTI_CODIGO='''+Edt_Tipo.text+'''';
                         end
                         else
                             wSeleciona := wSeleciona +' and P1.PTI_CODIGO='''+Edt_Tipo.text+'''';
                  end;
                  if (LTBoxProdu.ItemIndex = 10) then
                     wSeleciona := wSeleciona +'where P1.PTI_CODIGO='''+Edt_Tipo.text+'''';
                  LBL_00_LTitulo2.Caption := LBL_00_LTitulo2.Caption + 'TIPO: '+Edt_Tipo.text+' - '+CbTipo.Text;
                  LBL_01_LTitulo2.Caption := LBL_01_LTitulo2.Caption + 'TIPO: '+Edt_Tipo.text+' - '+CbTipo.Text;
                  LBL_03_LTitulo2.Caption := LBL_03_LTitulo2.Caption + 'TIPO: '+Edt_Tipo.text+' - '+CbTipo.Text;
                  LBL_04_LTitulo2.Caption := LBL_04_LTitulo2.Caption + 'TIPO: '+Edt_Tipo.text+' - '+CbTipo.Text;
                  LBL_08_LTitulo2.Caption := 'TIPO: '+WTipo+' - '+CbTipo.Text;
                  if (Edt_Grupo.Text<>'999') then
                  begin
                         {Selecionou um Grupo}
                         wSeleciona := wSeleciona + ' and P1.PGR_CODIGO='''+Edt_Grupo.Text+'''';
                         LBL_00_LTitulo2.Caption := LBL_00_LTitulo2.Caption + ' do grupo: '+Edt_Grupo.Text+' - '+CbGrupo.Text;
                         LBL_01_LTitulo2.Caption := LBL_01_LTitulo2.Caption + ' do grupo: '+Edt_Grupo.Text+' - '+CbGrupo.Text;
                         LBL_03_LTitulo2.Caption := LBL_03_LTitulo2.Caption + ' do grupo: '+Edt_Grupo.Text+' - '+CbGrupo.Text;
                         LBL_04_LTitulo2.Caption := LBL_04_LTitulo2.Caption + ' do grupo: '+Edt_Grupo.Text+' - '+CbGrupo.Text;
                         if (Edt_Tipo.Text<>'999') then
                            LBL_08_LTitulo2.Caption := LBL_08_LTitulo2.Caption + ' do grupo: '+Edt_Grupo.Text+' - '+CbGrupo.Text
                         else
                            LBL_08_LTitulo2.Caption := 'TIPO: TODOS do GRUPO: '+Edt_Grupo.Text+' - '+CbGrupo.Text;
                  end;
           end
           else
           begin
                  {Nao selecionou um tipo E selecionou um grupo}
                  if (Edt_Grupo.Text<>'999') then
                  begin
                         {Selecionou um Grupo}
                         if (LTBoxProdu.ItemIndex = 0)or(LTBoxProdu.ItemIndex = 1)or(LTBoxProdu.ItemIndex = 2) or (LTBoxProdu.ItemIndex = 3) or (LTBoxProdu.ItemIndex = 5) or (LTBoxProdu.ItemIndex = 14)  or (LTBoxProdu.ItemIndex = 15) then
                         begin
                                if RadTodos.checked  then
                                   wSeleciona := wSeleciona +' where P1.PGR_CODIGO='''+Edt_Grupo.Text+''''
                                else
                                   wSeleciona := wSeleciona +' and P1.PGR_CODIGO='''+Edt_Grupo.Text+'''';
                            end;
                         if LTBoxProdu.ItemIndex = 10 then
                            if (CbTipo.ItemIndex = 0) or (CbTipo.ItemIndex = 0) or (CbTipo.ItemIndex = 14) or (CbTipo.ItemIndex = 15)then
                               wSeleciona := wSeleciona +' where P1.PGR_CODIGO='''+Edt_Grupo.Text+'''';
                         LBL_00_LTitulo2.Caption := LBL_00_LTitulo2.Caption + ' do grupo: '+Edt_Grupo.Text+' - '+CbGrupo.Text;
                         LBL_01_LTitulo2.Caption := LBL_01_LTitulo2.Caption + ' do grupo: '+Edt_Grupo.Text+' - '+CbGrupo.Text;
                         LBL_03_LTitulo2.Caption := LBL_03_LTitulo2.Caption + ' do grupo: '+Edt_Grupo.Text+' - '+CbGrupo.Text;
                         LBL_04_LTitulo2.Caption := LBL_04_LTitulo2.Caption + ' do grupo: '+Edt_Grupo.Text+' - '+CbGrupo.Text;
                         if (Edt_Tipo.Text <> '999') then
                            LBL_08_LTitulo2.Caption := LBL_08_LTitulo2.Caption + ' do grupo: '+Edt_Grupo.Text+' - '+CbGrupo.Text
                         else
                            LBL_08_LTitulo2.Caption := 'TIPO: TODOS do GRUPO: '+Edt_Grupo.Text+' - '+CbGrupo.Text;
                  end
                  else
                  begin
                         LBL_00_LTitulo2.Caption := LBL_00_LTitulo2.Caption + 'do tipo: TODOS do grupo: TODOS';
                         LBL_01_LTitulo2.Caption := LBL_01_LTitulo2.Caption + 'do tipo: TODOS do grupo: TODOS';
                         LBL_03_LTitulo2.Caption := LBL_03_LTitulo2.Caption + 'do tipo: TODOS do grupo: TODOS';
                         LBL_04_LTitulo2.Caption := LBL_04_LTitulo2.Caption + 'do tipo: TODOS do grupo: TODOS';
                         LBL_08_LTitulo2.Caption := 'TIPO: TODOS do GRUPO: TODOS';
                  end;
           end;
           if LTBoxProdu.ItemIndex = 10 then
              if (Edt_Tipo.Text<>'999') or (Edt_Grupo.Text <>'999') then
                 wSeleciona := wSeleciona + ' and P1.PRD_DCVAR1 <>'''''
              else
                 wSeleciona := wSeleciona + ' where P1.PRD_DCVAR1 <>''''';

           if (Edt_Linha.Text<>'999') then
           begin
              if (wSeleciona = '') then
                 wSeleciona := ' where LIN_CODIGO = ' + QuotedStr(Edt_Linha.Text)
              else
                 wSeleciona := wSeleciona + ' and LIN_CODIGO = '+QuotedStr(Edt_Linha.Text);
           end;
           //Somente produtos Ativos
           if (wSeleciona = '') then
              wSeleciona := ' where P1.PRD_STATUS = '+QuotedStr('A')
           else
              wSeleciona := wSeleciona + ' and P1.PRD_STATUS = '+QuotedStr('A');

           Screen.Cursor := crHourGlass;
           try
             SqlCdsProdutos.Close;
             SqlCdsProdutos.CommandText:=SQLDEF('PRODUTOS','SELECT P1.PRD_DESCRI,P1.PRD_REFER,P1.PRD_UND,P1.PGR_CODIGO,P1.PTI_CODIGO,P1.PRD_MINIMO,P1.PRD_PCUSTO,P1.PRD_PVENDA,P1.PRD_ESTOQUE,'+
                                                ' P1.PRD_SAIDA,P1.PRD_PENDENTE, P1.PRD_ENTRADA,P1.PRD_MAXIMO,P1.PRD_PMEDIO,P1.PRD_VAR1,P1.PRD_VAR2,P1.PRD_VAR3,P1.PRD_VAR4,P1.PRD_VAR5, '+
                                                'P1.PRD_VAR6,P1.PRD_VAR7,P1.PRD_VAR8,P1.PRD_DCVAR1,P1.PRD_DCVAR2,P1.PRD_RESERVA,P1.PRD_DCVAR3,P1.PRD_DCVAR4,P1.PRD_DCVAR5,P1.PRD_DCVAR6,  '+
                                                'P1.PRD_DCVAR7,P1.PRD_DCVAR8,P1.PRD_CUSTOFRETE,P1.PRD_CUSTOIPI,P1.PRD_CUSTOSUBTRIB,P1.PRD_CUSTOCOMIPI,P1.PRD_MARGEMVENDA FROM PRD0000 P1 ',
                                                wSeleciona,wOrdem,'P1.');
             SqlCdsProdutos.Open;
           except on E:EdatabaseError do
              uteis.erro  (Pchar('Erro ao abrir tabela PRODUTOS !'+e.message));
           end;


           screen.cursor := crDefault;
           //
           if (LTBoxProdu.ItemIndex = 0) or (LTBoxProdu.ItemIndex = 14)then
              begin
                  LBL_00_LTitulo1.Caption := 'RELATÓRIO DO ESTOQUE ATUAL';
                  {Cabeçalho}
                  if RadVideo.Checked then
                     begin
                         ppRP00.DeviceType:='Screen';
                     end else
                  if RadImpressora.Checked then
                     begin
                         ppRP00.DeviceType:='Printer';
                         ppRP00.ShowPrintDialog := true;
                     end;
                  RBuilderPreview(ppRP00);
              end;
           {RELATÓRIO DO ESTOQUE DE PRODUTOS(ANTECIPADO) OU (REL. DE PENDENTES)}
           if (LTBoxProdu.ItemIndex = 1) or (LTBoxProdu.ItemIndex = 2) then
              begin
                  if LTBoxProdu.ItemIndex = 1 then
                     begin
                         LBL_01_LTitulo1.Caption := 'RELATÓRIO DO ESTOQUE ATUAL+COMPRAS EM ABERTO)';
                     end;
                  if LTBoxProdu.ItemIndex = 2 then
                     begin
                         LBL_01_LTitulo1.Caption := 'RELATÓRIO  DO ESTOQUE ATUAL COM GRADE';
                     end;
                  if RadVideo.Checked then
                     begin
                         ppRP01.DeviceType:='Screen';
                     end else
                  if RadImpressora.Checked then
                     begin
                         ppRP01.DeviceType:='Printer';
                         ppRP01.ShowPrintDialog := true;
                     end;
                  RBuilderPreview(ppRP01);
              end;
           if LTBoxProdu.ItemIndex = 3 then
              begin
                  LBL_03_LTitulo1.Caption := 'RELATÓRIO FINANCEIRO DO ESTOQUE (GERAL)';
                  if RadVideo.Checked then
                     begin
                         ppRP03.DeviceType:='Screen';
                     end else
                  if RadImpressora.Checked then
                     begin
                         ppRP03.DeviceType:='Printer';
                         ppRP03.ShowPrintDialog := true;
                     end;

                  RBuilderPreview(ppRP03);
              end;
           if (LTBoxProdu.ItemIndex = 5) then // Estoque c/ Variacoes
              begin
                  LBL_04_LTitulo1.Caption := 'RELATÓRIO DO ESTOQUE ATUAL COM SALDO DAS VARIAÇÕES';
                  if RadVideo.Checked then
                     begin
                         ppRP04.DeviceType:='Screen';
                     end else
                  if RadImpressora.Checked then
                     begin
                         ppRP04.DeviceType:='Printer';
                         ppRP04.ShowPrintDialog := true;
                     end;

                  RBuilderPreview(ppRP04);
              end;
           if LTBoxProdu.ItemIndex = 10 then
              begin
                  LBL_08_LTITULO1.Caption:='RELATÓRIO DE DESCRIÇÃO DAS VARIAÇÕES DOS PRODUTOS';
                  screen.cursor := crDefault;
                  if RadVideo.Checked then
                     begin
                         ppRP08.DeviceType:='Screen';
                     end;
                  if RadImpressora.Checked then
                     begin
                         ppRP08.DeviceType:='Printer';
                         ppRP08.ShowPrintDialog := true;
                     end;

                  RBuilderPreview(ppRP08);
              end;
           //
           if (LTBoxProdu.ItemIndex = 15)then
              begin
                  LBL_15_RELATORIO.Caption := 'RELATÓRIO CUSTO DE MERCADORIA VENDIDA - CMV';
                  LBL_15_EMPRESA1.Caption:=dbInicio.Empresa.Razao;
                  LBL_15_FILTRO.Caption := ' Tipo: '+CbTipo.Text+' Linha: '+CbLinha.Text+' Grupo: '+CbGrupo.Text+' Almoxarifados: '+CbAlmox.Text;
                  Logo.Picture.Assign(DBInicio.Empresa.LOGO);

                  // LBL_15_HOME1.Caption   :=IIF(dbInicio.Empresa.HOME_PAGE<>'','Home-Page.: '+dbInicio.Empresa.HOME_PAGE,'')+IIF(dbInicio.Empresa.Email<>'',' E-mail.: '+dbInicio.Empresa.Email,'');
                  // LBL_15_END1.Caption   :=dbInicio.Empresa.Endereco+' - Cidade.: '+dbInicio.Empresa.Cidade+' - Estado.: '+dbInicio.Empresa.UF+' - CEP: '+dbInicio.Empresa.Cep+' - Fone: '+dbInicio.Empresa.Fone;

                  {Cabeçalho}
                  if RadVideo.Checked then
                     begin
                         ppRP15.DeviceType:='Screen';
                     end else
                  if RadImpressora.Checked then
                     begin
                         ppRP15.DeviceType:='Printer';
                         ppRP15.ShowPrintDialog := true;
                     end;
                  RBuilderPreview(ppRP15);
              end;



       end;
       CbTipo.ItemIndex := 0;
       CbGrupo.ItemIndex:= 0;
       CbLinha.ItemIndex:= 0;
       CbTipo.SetFocus;
       RadVideo.Checked:=true;
end;

procedure TFormGImpProduto.CriaRelProdu05;
begin
    if LTBoxProdu.ItemIndex = 6 then
       begin
           screen.cursor := crHourGlass;
           try
             SqlCdsRel05.Close;

             wSeleciona := SQLDEF('PRODUTOS','SELECT P1.PRD_REFER,P1.PRD_DESCRI,P1.PRD_COMPL,P1.PRD_PVENDA,P1.PRD_PESOKg,P1.PRD_EMBALA,P1.PRD_TABPRECO,P1.IPI_CODIGO,I1.IPI_ALIQ,P1.LIN_CODIGO,'+
                                             'L1.LIN_DESCRI FROM PRD0000 P1 LEFT JOIN PRD_LINHA L1 ON (P1.LIN_CODIGO = L1.LIN_CODIGO) LEFT JOIN IPI0000 I1 ON (P1.IPI_CODIGO = I1.IPI_CODIGO)',
                                             'WHERE P1.PRD_TABPRECO =''S'' and P1.PRD_STATUS = ''A'''    +
                                             IIF (Edt_Linha.Text<>'999' ,' and L1.LIN_CODIGO = '+QuotedStr(Edt_Linha.Text),'')
                                             ,'L1.LIN_DESCRI,P1.PRD_DESCRI','P1.');

             SqlCdsRel05.CommandText:= wSeleciona;
             SqlCdsRel05.Open;
           except on E:EdatabaseError do
             begin
                 uteis.erro  (Pchar('Erro ao abrir tabela PRODUTOS !'+e.message));
             end;
           end;

           screen.cursor := crDefault;
           LBL_05_DATAVI.Caption:=DateToStr(EdtDtVigenc.Date);
           if RadVideo.Checked then
              begin
                  ppRP05.DeviceType:='Screen';
              end else
           if RadImpressora.Checked then
              begin
                  ppRP05.DeviceType:='Printer';
                  ppRP05.ShowPrintDialog := true;
              end;

           RBuilderPreview(ppRP05);
       end;
       EdtDtVigenc.SetFocus;
       RadVideo.Checked:=true;
end;

procedure TFormGImpProduto.CriaRelTabMultipla;
begin
    if LTBoxProdu.ItemIndex = 7 then
       begin
           screen.cursor := crHourGlass;
           try
             SQLCdsTabMulti.Close;
             SQLCdsTabMulti.CommandText:=SQLDEF('PRODUTOS','SELECT P1.PRD_REFER,P1.PRD_DESCRI,PRD_UND,P1.PRD_COMPL,P1.PRD_PVENDA,P1.PRD_PVENDA2,P1.PRD_PVENDA3,P1.PRD_PVENDA4,P1.PRD_PVENDA5,'+
                                                'P1.PRD_PVENDA6,P1.PRD_DATA_ATUAL_TAB,P1.PRD_PESOKg,P1.PRD_EMBALA,P1.PRD_TABPRECO,P1.IPI_CODIGO,I1.IPI_ALIQ,P1.LIN_CODIGO,'+
                                                'L1.LIN_DESCRI,T1.MKP_COMIS1,T1.MKP_COMIS2,T1.MKP_COMIS3,T1.MKP_COMIS4,T1.MKP_COMIS5,T1.MKP_COMIS6'+
                                                ' FROM PRD0000 P1 LEFT JOIN PRD_LINHA L1 ON (P1.LIN_CODIGO = L1.LIN_CODIGO) LEFT JOIN IPI0000 I1 ON (P1.IPI_CODIGO = I1.IPI_CODIGO) '+
                                                ' LEFT JOIN mkp0000 T1 ON P1.lin_codigo = T1.lin_codigo','WHERE P1.PRD_TABPRECO =''S'' and P1.PRD_STATUS = ''A'''+
                                                IIF (Edt_Linha.Text<>'999' ,' and T1.LIN_CODIGO = '+QuotedStr(Edt_Linha.Text),''),
                                                'L1.LIN_DESCRI,P1.PRD_DESCRI','P1.');
             SQLCdsTabMulti.Open;
           except on E:EdatabaseError do
             begin
                 uteis.erro  (Pchar('Erro ao abrir tabela PRODUTOS !'+e.message));
             end;
           end;
           screen.cursor := crDefault;
           LBL_05_DATAVI2.Caption:=DateToStr(EdtDtVigenc.Date);
           if RadVideo.Checked then
              begin
                  ppRPTabMulti.DeviceType:='Screen';
              end else
           if RadImpressora.Checked then
              begin
                  ppRPTabMulti.DeviceType:='Printer';
                  ppRPTabMulti.ShowPrintDialog := true;
              end;

           RBuilderPreview(ppRPTabMulti);
       end;
       EdtDtVigenc.SetFocus;
       RadVideo.Checked:=true;
end;


procedure TFormGImpProduto.pp07HeaderBand1BeforePrint(Sender: tObject);
begin
    LBL_07_EMPRESA.Caption:=dbInicio.Empresa.Razao;
end;

procedure TFormGImpProduto.ppDBText126GetText(Sender: TObject; var Text: string);
begin
  if Text = '' then
    Text := '0,000';

end;

procedure TFormGImpProduto.ppDBText127GetText(Sender: TObject; var Text: string);
begin
  if Text = '' then
    Text := '0,000';

end;

procedure TFormGImpProduto.ppDBText128GetText(Sender: TObject; var Text: string);
begin
  if Text = '' then
    Text := '0,000';

end;

procedure TFormGImpProduto.ppDBText129GetText(Sender: TObject; var Text: string);
begin
  if Text = '' then
    Text := '0,000';

end;

procedure TFormGImpProduto.ppDBText130GetText(Sender: TObject; var Text: string);
begin
  if Text = '' then
    Text := '0,000';
end;

procedure TFormGImpProduto.ppDBText131GetText(Sender: TObject; var Text: string);
begin
  if Text = '' then
    Text := '0,000';

end;

procedure TFormGImpProduto.ppDBText132GetText(Sender: TObject; var Text: string);
begin
  if Text = '' then
    Text := '0,000';

end;

procedure TFormGImpProduto.ppDBText133GetText(Sender: TObject; var Text: string);
begin
  if Text = '' then
    Text := '0,000';

end;

procedure TFormGImpProduto.CbTipoClick(Sender: tObject);
begin
    if (SqlCdsTipo.Locate('PTI_DESCRI',CbTipo.Text,[])=true) then
       begin
           Edt_Tipo.Text := SqlCdsTipoPTI_CODIGO.AsString;
           CbGrupo.Enabled := True;
       end
    else
       begin
           Edt_Tipo.Text    := '999';
           CbTipo.Text      := 'TODOS OS TIPOS';
           CbTipo.ItemIndex := 0;
       end;
end;

procedure TFormGImpProduto.CbGrupoClick(Sender: tObject);
begin
    if (SqlCdsGrupo.Locate('PGR_DESCRI',CbGrupo.Text,[])=true) then
       begin
           Edt_Grupo.Text := SqlCdsGrupoPGR_CODIGO.AsString;
       end
    else
       begin
           Edt_Grupo.Text    := '999';
           CbGrupo.Text      := 'TODOS OS GRUPOS';
           CbGrupo.ItemIndex := 0;
       end;
end;

procedure TFormGImpProduto.pp05HeaderBand4BeforePrint(Sender: tObject);
begin
    LBL_05_EMPRESA.Caption:=dbInicio.Empresa.Razao;
    LBL_05_HOME.Caption   :=IIF(dbInicio.Empresa.HOME_PAGE<>'','Home-Page.: '+dbInicio.Empresa.HOME_PAGE,'')+IIF(dbInicio.Empresa.Email<>'',' E-mail.: '+dbInicio.Empresa.Email,'');
    LBL_05_END1.Caption   :=dbInicio.Empresa.Endereco+' - Cidade.: '+dbInicio.Empresa.Cidade+' - Estado.: '+dbInicio.Empresa.UF+' - CEP: '+dbInicio.Empresa.Cep+' - Fone: '+dbInicio.Empresa.Fone;
end;

procedure TFormGImpProduto.Edt_TipoKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;
end;

procedure TFormGImpProduto.Edt_TipoExit(Sender: tObject);
begin
    Edt_Tipo.text := StrZero(Edt_Tipo.Text,Edt_Tipo.MaxLength);
    if (Edt_Tipo.Text <> '999') then
       begin
           if (SqlCdsTipo.Locate('PTI_CODIGO',Edt_Tipo.Text,[])=true) then
              begin
                  CbTipo.Text := SqlCdsTipoPTI_DESCRI.AsString;
              end
           else
              begin
                  Edt_Tipo.Text    := '999';
                  CbTipo.Text      := 'TODOS OS TIPOS';
                  CbTipo.ItemIndex := 0;
              end;
       end
    else
       begin
           Edt_Tipo.Text    := '999';
           CbTipo.Text      := 'TODOS OS TIPOS';
           CbTipo.ItemIndex := 0;
       end;
end;

procedure TFormGImpProduto.Edt_GrupoExit(Sender: tObject);
begin
    Edt_Grupo.text := StrZero(Edt_Grupo.Text,Edt_Grupo.MaxLength);
    if (Edt_Grupo.Text <> '999') then
       begin
           if (SqlCdsGrupo.Locate('PGR_CODIGO',Edt_Grupo.Text,[])=true) then
              begin
                  CbGrupo.Text := SqlCdsGrupoPGR_DESCRI.AsString;
              end
           else
              begin
                  Edt_Grupo.Text    := '999';
                  CbGrupo.Text      := 'TODOS OS GRUPOS';
                  CbGrupo.ItemIndex := 0;
              end;
       end
    else
       begin
           Edt_Grupo.Text    := '999';
           CbGrupo.Text      := 'TODOS OS GRUPOS';
           CbGrupo.ItemIndex := 0;
       end;
end;

procedure TFormGImpProduto.CriaRelProdu09;
Var
  wSaldoAntEstoque,
  wEntrada,
  wSaida : Double;
begin
    Screen.Cursor := crHourGlass;
    try
      try
        {Abre a tabela de PRODUTOS}
        LBL_09_LTITULO2.Caption := '';
        LBL_09_LTITULO3.Caption := '';
        if (Edt_Tipo.Text<>'999') then
           begin
               wSeleciona := 'WHERE P1.PTI_CODIGO = '''+Edt_tipo.Text+'''';
               LBL_09_LTITULO3.Caption := ' Tipo: '+Edt_Tipo.Text+' - '+CbTipo.Text;
           end
        else
           begin
               wSeleciona := '';
               LBL_09_LTITULO3.Caption := 'Tipo: 999 - TODOS OS TIPO ';
           end;
        if (Edt_Grupo.Text<>'999') then
           begin
               LBL_09_LTITULO3.Caption := LBL_09_LTITULO3.Caption + ' - Grupo: '+Edt_Grupo.Text+' - '+CbGrupo.Text;
               if (Edt_Tipo.Text<>'999') then
                  begin
                      wSeleciona := wSeleciona + ' AND P1.PGR_CODIGO = '''+Edt_Grupo.Text+'''';
                  end
               else
                  begin
                      wSeleciona := 'WHERE P1.PGR_CODIGO = '''+Edt_Grupo.Text+'''';
                  end;
           end
        else
           begin                                                                                                            {((P1.PRD_ESTOQUE+P1.PRD_ENTRADA)-PRD_SAIDA) }
               LBL_09_LTITULO3.Caption := LBL_09_LTITULO3.Caption + ' - Grupo: 999 - TODOS OS GRUPOS ';
           end;
        //Somente produtos Ativos
        if (wSeleciona = '') then
           wSeleciona := ' where P1.PRD_STATUS = '+QuotedStr('A')
        else
           wSeleciona := wSeleciona + ' and P1.PRD_STATUS = '+QuotedStr('A');
        //
        wSql1 := 'SELECT P1.PRD_REFER,P1.PRD_DESCRI,P1.PRD_UND,P1.PRD_PCUSTO,P1.PRD_PMEDIO,P1.PRD_PVENDA,(PRD_ESTOQUE+PRD_ENTRADA)-(PRD_SAIDA+PRD_RESERVA+PRD_EMPENHO) as wESTOQUE FROM PRD0000 P1 ';
        //
        SqlCdsEstoque.Close;
        SqlCdsEstoque.CommandText := SQLDEF('PRODUTOS',wSql1,wSeleciona,'P1.PRD_REFER','P1.');
        SqlCdsEstoque.Open;
        {Cria tabela temporaria em memoria}
        if not CdsEstoque.Active then
           CdsEstoque.CreateDataSet;
        CdsEstoque.EmptyDataSet;
        //
        SqlCdsEstoque.First;
        SqlCdsEstoque.DisableControls;
        while not SqlCdsEstoque.Eof do
         begin
             {Busca a Movimentação do Saldo Anterior do produto no Kardex}
             wSql1      := 'SELECT K1.PRD_REFER,K1.PES_TIPO,SUM(K1.PES_QTDE) AS WPES_QTDE FROM PRD_ENSA K1 ';
             wSql2      := 'GROUP BY K1.PRD_REFER,K1.PES_TIPO ';
             wSeleciona := 'WHERE K1.PES_DATA < '''+DataAmericana(EditDataI.Text)+''' AND K1.PRD_REFER = '''+SqlCdsEstoquePRD_REFER.AsString+'''';
             wOrdem     := ' ORDER BY K1.PRD_REFER';
             if (Share('PRODUTOS')='E') then
                wSeleciona := wSeleciona + ' AND K1.EMP_CODIGO = '''+dbInicio.Empresa.EMP_CODIGO+'''';
             SqlCdsSaldo.Close;
             SqlCdsSaldo.CommandText := wSql1+wSeleciona+wSql2+wOrdem;
             SqlCdsSaldo.Open;
             SqlCdsSaldo.First;
             wSaldoAntEstoque := 0;
             SqlCdsSaldo.DisableControls;
             while not SqlCdsSaldo.Eof do
               begin
                   if (SqlCdsSaldoPES_TIPO.AsString='E') then
                      wSaldoAntEstoque := wSaldoAntEstoque + SqlCdsSaldoWPES_QTDE.AsCurrency
                   else
                      wSaldoAntEstoque := wSaldoAntEstoque - SqlCdsSaldoWPES_QTDE.AsCurrency;
                   SqlCdsSaldo.Next;
               end;
             SqlCdsSaldo.EnableControls;
             //
             {Busca a Movimentação do produto no Kardex conforme o periodo}
             wSql1      := 'SELECT K1.PRD_REFER,K1.PES_TIPO,SUM(K1.PES_QTDE) AS WPES_QTDE FROM PRD_ENSA K1 ';
             wSql2      := 'GROUP BY K1.PRD_REFER,K1.PES_TIPO ';
             wSeleciona := 'WHERE K1.PES_DATA BETWEEN '''+DataAmericana(EditDataI.Text)+''' AND '''+DataAmericana(EditDataF.Text)+''' AND K1.PRD_REFER = '''+SqlCdsEstoquePRD_REFER.AsString+'''';
             wOrdem     := ' ORDER BY K1.PRD_REFER';
             if (Share('PRODUTOS')='E') then
                wSeleciona := wSeleciona + ' AND K1.EMP_CODIGO = '''+dbInicio.Empresa.EMP_CODIGO+'''';
             SqlCdsKardex.Close;
             SqlCdsKardex.CommandText := wSql1+wSeleciona+wSql2+wOrdem;
             SqlCdsKardex.Open;
             wEntrada     := 0;
             wSaida       := 0;
             SqlCdsKardex.First;
             SqlCdsKardex.DisableControls;
             while not SqlCdsKardex.Eof do
               begin
                   if (SqlCdsKardexPES_TIPO.AsString='E') then
                      wEntrada := wEntrada + SqlCdsKardexWPES_QTDE.AsCurrency
                   else
                      wSaida := wSaida + SqlCdsKardexWPES_QTDE.AsCurrency;
                   SqlCdsKardex.Next;
               end;
             SqlCdsKardex.EnableControls;
             if CdsEstoque.Locate('PRD_REFER',SqlCdsEstoquePRD_REFER.AsString,[])=true then
                CdsEstoque.Edit
             else
                CdsEstoque.Append;
             //
             CdsEstoqueEMP_CODIGO.AsString      := dbInicio.Empresa.EMP_CODIGO;
             CdsEstoquePRD_REFER.AsString       := SqlCdsEstoquePRD_REFER.AsString;
             CdsEstoquePRD_DESCRICAO.AsString   := SqlCdsEstoquePRD_DESCRI.AsString;
             CdsEstoquePRD_UND.AsString         := SqlCdsEstoquePRD_UND.AsString;
             CdsEstoquePRD_PCUSTO.AsCurrency    := SqlCdsEstoquePRD_PCUSTO.AsCurrency;
             CdsEstoquePRD_PMEDIO.AsCurrency    := SqlCdsEstoquePRD_PMEDIO.AsCurrency;
             CdsEstoquePRD_ESTOQUE.AsCurrency   := wSaldoAntEstoque;
             CdsEstoquePRD_ENTRADA.AsCurrency   := iif(wEntrada>0,wEntrada,0);
             CdsEstoquePRD_SAIDA.AsCurrency     := iif(wSaida>0,wSaida,0);
             CdsEstoqueESTOQUE_ATUAL.AsCurrency := SqlCdsEstoque.FieldByName('wESTOQUE').AsFloat;//(CdsEstoquePRD_ESTOQUE.AsFloat+CdsEstoquePRD_ENTRADA.AsFloat)-(CdsEstoquePRD_SAIDA.AsFloat); //((CdsEstoquePRD_ESTOQUE.AsCurrency+CdsEstoquePRD_ENTRADA.AsCurrency)-CdsEstoquePRD_SAIDA.AsCurrency);
             if (CdsEstoqueESTOQUE_ATUAL.AsCurrency>0) then
                begin
                    CdsEstoqueTOTAL_PCUSTO.AsCurrency := (CdsEstoqueESTOQUE_ATUAL.AsCurrency*CdsEstoquePRD_PCUSTO.AsCurrency);
                    CdsEstoqueTOTAL_PMEDIO.AsCurrency := (CdsEstoqueESTOQUE_ATUAL.AsCurrency*CdsEstoquePRD_PMEDIO.AsCurrency);
                end
             else
                begin
                    CdsEstoqueTOTAL_PCUSTO.AsCurrency := 0;
                    CdsEstoqueTOTAL_PMEDIO.AsCurrency := 0;
                end;
             CdsEstoque.Post;
             SqlCdsEstoque.Next;
         end;
        SqlCdsEstoque.EnableControls;
        //
        CdsEstoque.DisableControls;
        CdsEstoque.First;
        {Classifica por}
        if (RadRefer.checked ) then
           CdsEstoque.IndexName := 'IDX_REFER'
        else
        if (RadProdu.checked ) then
           CdsEstoque.IndexName := 'IDX_DESCRI';
        {else
        if (rbEnder.checked ) then
           CdsEstoque.IndexName := 'IDX_DESCRI'}

        //
        LBL_09_LTITULO2.Caption := 'Período : '+EditDataI.Text+' até '+EditDataF.Text;
        //
        {Filtra o Saldo do Estoque}
        if (RadTodos.checked ) then
           begin
               CdsEstoque.Filtered := False;
               CdsEstoque.Filter   := '';
               CdsEstoque.Filtered := True;
               LBL_09_LTITULO2.Caption := LBL_09_LTITULO2.Caption + ' - Todo Estoque';
           end;
        if (RadPositivo.checked ) then
           begin
               CdsEstoque.Filtered := False;
               CdsEstoque.Filter   := 'ESTOQUE_ATUAL>0';
               CdsEstoque.Filtered := True;
               LBL_09_LTITULO2.Caption := LBL_09_LTITULO2.Caption + ' - Estoque Positivo ';
           end;
        if (RadNegativo.checked ) then
           begin
               CdsEstoque.Filtered := False;
               CdsEstoque.Filter   := 'ESTOQUE_ATUAL<0';
               CdsEstoque.Filtered := True;
               LBL_09_LTITULO2.Caption := LBL_09_LTITULO2.Caption + ' - Estoque Negativo ';
           end;
        //
        if (RadVideo.checked ) then
           ppRP09.DeviceType := 'Screen';
        if (RadImpressora.checked ) then
           begin
               ppRP09.DeviceType := 'Printer';
               ppRP09.ShowPrintDialog := true;
           end;
        LBL_09_EMPRESA.Caption  := dbInicio.Empresa.RAZAO;
        LBL_09_LTITULO1.Caption := 'RELATÓRIO FINANCEIRO DO ESTOQUE';
        RBuilderPreview(ppRP09);
        CdsEstoque.EnableControls;
      except on E:EDataBaseError do
         uteis.erro  (pchar('Erro ao gerar o relatório ! '+e.message));
      end;
    finally
      CdsEstoque.Close;
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormGImpProduto.CriaRelProdu08;
Var
  wPTICOD,wPTIDES,wGRUCOD,wGRUDES:STRING;
begin
    if (LTBoxProdu.ItemIndex = 9) then
       begin
           screen.cursor := crHourGlass;
           if (Edt_tipo.Text<>'999') then
              begin
                  wPTICOD:=Edt_Tipo.Text;
                  wPTIDES:=CbTipo.Text;
              end
           else
              begin
                  wPTICOD:='999';
                  wPTIDES:='TODOS OS TIPOS';
              end;
           if (Edt_Grupo.Text<>'999') then
              begin
                  wGRUCOD:=Edt_Grupo.Text;
                  wGRUDES:=CbGrupo.Text;
              end
           else
              begin
                  wGRUCOD:='999';
                  wGRUDES:='TODOS OS GRUPOS';
              end;
           if (CbTipo.ItemIndex <> 0)and(CbGrupo.ItemIndex <> 0)then
              begin
                  wSeleciona:='AND P1.PTI_CODIGO = '''+wPTICOD+'''AND P1.PGR_CODIGO = '''+wGRUCOD+'''';
                  LBL_07_LTITULO2.Caption := ' TIPO : '+wPTICOD+' - '+wPTIDES+' GRUPO : '+wGRUCOD+' - '+wGRUDES;
              end;
           if (CbTipo.ItemIndex <> 0)and(CbGrupo.ItemIndex = 0)then
              begin
                  wSeleciona:='AND P1.PTI_CODIGO = '''+wPTICOD+'''';
                  LBL_07_LTITULO2.Caption := ' TIPO : '+wPTICOD+' - '+wPTIDES+' GRUPO : '+wGRUCOD+' - '+wGRUDES;
              end;
           if (CbTipo.ItemIndex = 0)and(CbGrupo.ItemIndex <> 0)then
              begin
                  wSeleciona:='AND P1.PGR_CODIGO = '''+wGRUCOD+'''';
                  LBL_07_LTITULO2.Caption := ' TIPO : '+wPTICOD+' - '+wPTIDES+' GRUPO : '+wGRUCOD+' - '+wGRUDES;
              end;
           if (CbTipo.ItemIndex = 0)and(CbGrupo.ItemIndex = 0)then
              begin
                  wSeleciona:='';
                  LBL_07_LTITULO2.Caption := ' TIPO : '+wPTICOD+' - '+wPTIDES+' GRUPO : '+wGRUCOD+' - '+wGRUDES;
              end;
           // todos
           //Somente produtos Ativos
           if (wSeleciona = '') then
              wSeleciona := ' where P1.PRD_STATUS = '+QuotedStr('A')
           else
              wSeleciona := wSeleciona + ' and P1.PRD_STATUS = '+QuotedStr('A');
           try
             SqlCdsProduFornecedor.Close;
             SqlCdsProduFornecedor.CommandText:=SQLDEF('PRODUTOS','SELECT P1.PRD_REFER,P1.PRD_DESCRI,P1.PGR_CODIGO,P1.PTI_CODIGO,P1.FOR_CODIGO,F1.FOR_RAZAO,F1.FOR_CIDADE,F1.FOR_FONE,F1.FOR_FAX,F1.FOR_CONTATO,'+
                                                       'F1.FOR_EMAIL,F2.PRD_REFER FROM FOR_PROD F2 JOIN PRD0000 P1 ON F2.prd_refer = P1.prd_refer JOIN FOR0000 F1 ON F2.for_codigo = F1.for_codigo ',wSeleciona,'P1.PRD_DESCRI,F1.FOR_RAZAO','F2.');
             SqlCdsProduFornecedor.Open;
           except on E:EdatabaseError do
             begin
                 uteis.erro  (Pchar('Erro ao abrir tabela PRODUTOS !'+e.message));
             end;
           end;
           LBL_07_LTITULO1.Caption:='RELATÓRIO DE PRODUTOS POR FORNECEDORES';
           screen.cursor := crDefault;
           if RadVideo.Checked then
              begin
                  ppRP07.DeviceType:='Screen';
              end else
           if RadImpressora.Checked then
              begin
                  ppRP07.DeviceType:='Printer';
                  ppRP07.ShowPrintDialog := true;
              end;

           RBuilderPreview(ppRP07);
       end;
       CbTipo.ItemIndex := 0;
       CbGrupo.ItemIndex:= 0;
       CbTipo.SetFocus;
       RadVideo.Checked:=true;
end;

procedure TFormGImpProduto.Edt_TipoClick(Sender: tObject);
begin
    Edt_Tipo.SelectAll;
end;

procedure TFormGImpProduto.Edt_GrupoClick(Sender: tObject);
begin
    Edt_Grupo.SelectAll;
end;

procedure TFormGImpProduto.SqlCdsEstPACalcFields(DataSet: TDataSet);
var
wReser1,wReser2,wReser3,
wReser4,wReser5,wReser6,
wReser7,wReser8 : Currency;
begin

    wReser1 := 0;
    wReser2 := 0;
    wReser3 := 0;
    wReser4 := 0;
    wReser5 := 0;
    wReser6 := 0;
    wReser7 := 0;
    wReser8 := 0;


    SqlCdsEstPACC_DISPONIVEL.AsCurrency := (((SqlCdsEstPAPRD_ESTOQUE.Ascurrency + SqlCdsEstPAPRD_ENTRADA.Ascurrency) - SqlCdsEstPAPRD_SAIDA.Ascurrency) - SqlCdsEstPAPRD_RESERVA.AsCurrency);
    SqlCdsEstPACC_SALDO.AsCurrency      := ((SqlCdsEstPAPRD_ESTOQUE.Ascurrency + SqlCdsEstPAPRD_ENTRADA.Ascurrency) - SqlCdsEstPAPRD_SAIDA.Ascurrency);
    {}
    Wsql1 := 'select P1.PRF_VAR1,P1.PRF_VAR2,P1.PRF_VAR3,P1.PRF_VAR4,P1.PRF_VAR5,P1.PRF_VAR6,P1.PRF_VAR7,P1.PRF_VAR8,P1.PRD_REFER,P2.PED_CODIGO,P2.PED_SITUACAO,P3.OPV_ATESTOQUE from PED_IT01 P1, ped0000 p2 ,OPV0000 P3';
    Wsql2 := ' where P1.PRD_REFER = '''+SqlCdsEstPAPRD_REFER.AsString+''' and P2.PED_CODIGO = P1.PED_CODIGO and P2.PED_SITUACAO = ''F'' and P3.OPV_CODIGO = P2.OPV_CODIGO AND P3.OPV_ATESTOQUE = ''S''';

      SqlCdsVar.Close;
      SqlCdsVar.CommandText := Wsql1 + Wsql2;
      sqlCdsVar.Open;

      while not sqlCdsVar.Eof do
         Begin

                if SqlCdsVarOPV_ATESTOQUE.AsString = 'S' then
                   begin
                       wReser1 := (wReser1 + SqlCdsVarPRF_VAR1.AsCurrency);
                       wReser2 := (wReser2 + SqlCdsVarPRF_VAR2.AsCurrency);
                       wReser3 := (wReser3 + SqlCdsVarPRF_VAR3.AsCurrency);
                       wReser4 := (wReser4 + SqlCdsVarPRF_VAR4.AsCurrency);
                       wReser5 := (wReser5 + SqlCdsVarPRF_VAR5.AsCurrency);
                       wReser6 := (wReser6 + SqlCdsVarPRF_VAR6.AsCurrency);
                       wReser7 := (wReser7 + SqlCdsVarPRF_VAR7.AsCurrency);
                       wReser8 := (wReser8 + SqlCdsVarPRF_VAR8.AsCurrency);
                   end;
             sqlCdsVar.next;
         end;

      SqlCdsEstPACC_DISP_VAR1.AsCurrency := SqlCdsEstPAPRD_VAR1.AsCurrency - wReser1;
      SqlCdsEstPACC_DISP_VAR2.AsCurrency := SqlCdsEstPAPRD_VAR2.AsCurrency - wReser2;
      SqlCdsEstPACC_DISP_VAR3.AsCurrency := SqlCdsEstPAPRD_VAR3.AsCurrency - wReser3;
      SqlCdsEstPACC_DISP_VAR4.AsCurrency := SqlCdsEstPAPRD_VAR4.AsCurrency - wReser4;
      SqlCdsEstPACC_DISP_VAR5.AsCurrency := SqlCdsEstPAPRD_VAR5.AsCurrency - wReser5;
      SqlCdsEstPACC_DISP_VAR6.AsCurrency := SqlCdsEstPAPRD_VAR6.AsCurrency - wReser6;
      SqlCdsEstPACC_DISP_VAR7.AsCurrency := SqlCdsEstPAPRD_VAR7.AsCurrency - wReser7;
      SqlCdsEstPACC_DISP_VAR8.AsCurrency := SqlCdsEstPAPRD_VAR8.AsCurrency - wReser8;

      if SqlCdsEstPAPRD_DCVAR1.AsString ='' then
         SqlCdsEstPACC_DISP_VAR1.AsString := '';
      if SqlCdsEstPAPRD_DCVAR2.AsString = '' then
         SqlCdsEstPACC_DISP_VAR2.AsString := '';
      if SqlCdsEstPAPRD_DCVAR3.AsString ='' then
         SqlCdsEstPACC_DISP_VAR3.AsString := '';
      if SqlCdsEstPAPRD_DCVAR4.AsString ='' then
         SqlCdsEstPACC_DISP_VAR4.AsString := '';
      if SqlCdsEstPAPRD_DCVAR5.AsString ='' then
         SqlCdsEstPACC_DISP_VAR5.AsString := '';
      if SqlCdsEstPAPRD_DCVAR6.AsString ='' then
         SqlCdsEstPACC_DISP_VAR6.AsString := '';
      if SqlCdsEstPAPRD_DCVAR7.AsString ='' then
         SqlCdsEstPACC_DISP_VAR7.AsString := '';
      if SqlCdsEstPAPRD_DCVAR8.AsString ='' then
         SqlCdsEstPACC_DISP_VAR8.AsString := '';









end;

procedure TFormGImpProduto.CriaRelEstPA;
var
wSQL1,wSQL2,wSQL3,wWhere,wORder :String;
begin
  {}

  wSQL1 := 'select P1.PRD_REFER, P1.PRD_ENTRADA, P1.PRD_ESTOQUE, P1.PRD_SAIDA, P1.PRD_EMPENHO, P1.PRD_RESERVA, P1.PRD_SALDOPRODUCAO , P1.PRD_DESCRI,P1.PTI_CODIGO,P1.PGR_CODIGO,';
  wSQL2 := ' P1.PRD_DCVAR1, P1.PRD_DCVAR2, P1.PRD_DCVAR3, P1.PRD_DCVAR4, P1.PRD_DCVAR5, P1.PRD_DCVAR6, P1.PRD_DCVAR7, P1.PRD_DCVAR8, P1.PRD_VAR1, P1.PRD_VAR2, P1.PRD_VAR3, P1.PRD_VAR4,';
  wSQL3 := ' P1.PRD_VAR5, P1.PRD_VAR6, P1.PRD_VAR7, P1.PRD_VAR8, P1.PRD_MINIMO,P2.PTI_SIGLA, P2.PTI_DESCRI,P3.PGR_DESCRI from PRD0000 P1  , PRD_TIPO P2 , PRD_GRUPO P3 ';

    if (Edt_tipo.Text = '999')  and (Edt_grupo.Text = '999') then
          wWhere := ' where P1.PTI_CODIGO = P2.PTI_CODIGO and P3.PGR_CODIGO = P1.PGR_CODIGO '
    else
        if (Edt_tipo.Text <> '999')  and (Edt_grupo.Text = '999') then
            wWhere := ' where P1.PTI_CODIGO = '''+edt_tipo.Text+''' and P2.PTI_CODIGO = P1.PTI_CODIGO and P3.PGR_CODIGO = P1.PGR_CODIGO '
        else
             if (Edt_tipo.Text = '999')  and (Edt_grupo.Text <> '999') then
                 wWhere := ' where P1.PGR_CODIGO = '''+Edt_Grupo.Text+''' and P2.PTI_CODIGO = P1.PTI_CODIGO and P3.PGR_CODIGO = P1.PGR_CODIGO '
             else
                 if (Edt_tipo.Text <> '999')  and (Edt_grupo.Text <> '999') then
                      wWhere := ' where P1.PGR_CODIGO = '''+Edt_Grupo.Text+'''  and P1.PTI_CODIGO = '''+Edt_Tipo.Text+''' and P2.PTI_CODIGO = P1.PTI_CODIGO and P3.PGR_CODIGO = P1.PGR_CODIGO ';



  IF RadRefer.checked  then
     wOrder := 'order by P1.PGR_CODIGO,P1.PTI_CODIGO,P1.PRD_REFER'
  Else
     wOrder := 'order by P1.PGR_CODIGO,P1.PTI_CODIGO,P1.PRD_DESCRI';

  sqlCdsEstPa.Close;
  sqlCdsEstPa.CommandText := wSQL1 +wSQL2 +wSQL3 +wWhere + wOrder;
  sqlCdsEstPa.Open;


  LblTipo.Caption  := Edt_Tipo.Text +' - '+ CbTipo.Text;
  LblGrupo.Caption := Edt_grupo.Text + ' - '+cbgrupo.Text;
  Label_empresaEstPA.Caption := dbInicio.Empresa.RAZAO;

  ppr09.DeviceType := 'Screen';
  ppr09.Print;
  Screen.Cursor := crhourglass;
end;

procedure TFormGImpProduto.ppHeaderBand6BeforePrint(Sender: tObject);
begin
   LABEL_EMPRESA2.Caption:=dbInicio.Empresa.Razao;
   LBL_05_HOME2.Caption   :=IIF(dbInicio.Empresa.HOME_PAGE<>'','Home-Page.: '+dbInicio.Empresa.HOME_PAGE,'')+IIF(dbInicio.Empresa.Email<>'',' E-mail.: '+dbInicio.Empresa.Email,'');
   LBL_05_END2.Caption   :=dbInicio.Empresa.Endereco+' - Cidade.: '+dbInicio.Empresa.Cidade+' - Estado.: '+dbInicio.Empresa.UF+' - CEP: '+dbInicio.Empresa.Cep+' - Fone: '+dbInicio.Empresa.Fone;

end;

procedure TFormGImpProduto.Edt_AlmoxClick(Sender: tObject);
begin
   Edt_Grupo.SelectAll;
end;

procedure TFormGImpProduto.Edt_AlmoxExit(Sender: tObject);
begin
    Edt_Almox.text := StrZero(Edt_Almox.Text,Edt_Almox.MaxLength);
    if (Edt_Almox.Text <> '9999') then
       begin
           if (SqlCdsAlmox.Locate('AMX_CODIGO',Edt_Almox.Text,[])=true) then
              begin
                  CbAlmox.Text := SqlCdsAlmoxAMX_DESCRI.AsString;
              end
           else
              begin
                  Edt_Almox.Text    := '9999';
                  CbAlmox.Text      := 'TODOS OS ALMOXARIFADOS';
                  CbAlmox.ItemIndex := 0;
              end;
       end
    else
       begin
           Edt_Almox.Text    := '9999';
           CbAlmox.Text      := 'TODOS OS ALMOXARIFADOS';
           CbAlmox.ItemIndex := 0;
       end;
end;

procedure TFormGImpProduto.CbAlmoxClick(Sender: tObject);
begin
    if (SqlCdsAlmox.Locate('AMX_DESCRI',CbAlmox.Text,[])=true) then
       begin
           Edt_Almox.Text := SqlCdsAlmoxAMX_CODIGO.AsString;
       end
    else
       begin
           Edt_Almox.Text    := '9999';
           CbAlmox.Text      := 'TODOS OS ALMOXARIFADOS';
           CbAlmox.ItemIndex := 0;
       end;
end;

procedure TFormGImpProduto.CbAlmoxExit(Sender: tObject);
begin
    if (SqlCdsAlmox.Locate('AMX_DESCRI',CbAlmox.Text,[])=true) then
       begin
           Edt_Almox.Text := SqlCdsAlmoxAMX_CODIGO.AsString;
       end
    else
       begin
           Edt_Almox.Text    := '9999';
           CbAlmox.Text      := 'TODOS OS ALMOXARIFADOS';
           CbAlmox.ItemIndex := 0;
       end;
end;

procedure TFormGImpProduto.HabDesAlmoxarifado(status: Boolean);
begin
   GrpAlmox.Visible := status;
end;

procedure TFormGImpProduto.BuscaEstoque(condicaoAdicional:String);
var
   dataInicial,
   dataFinal,
   almoxarifado,
   tipo,
   grupo,
   linha,
   condicao,
   ordenacao,
   AlmoxGeral,
   AlmoxSaldo,
   sTipoRelatorio,
   impNegativo :String;
   sleftGrade: string;
begin

   Screen.Cursor := crHourGlass;
   dataInicial := QuotedStr(DataAmericana(EditDataI.Text)+' 00:00:00');
   datafinal   := QuotedStr(DataAmericana(EditDataF.Text)+' 23:59:59');

   CdsEstoqueNovo.Close;
   condicaoAdicional := '';
   sTipoRelatorio := condicaoAdicional;

   if ((LTBoxProdu.ItemIndex = 0)or(LTBoxProdu.ItemIndex = 1) or(LTBoxProdu.ItemIndex = 14)  or(LTBoxProdu.ItemIndex = 15)  ) then
      dataInicial := dataFinal;


   condicao    := 'where (1 = 1) ';
   if  Share('PRODUTOS') = 'E' then
    begin
       condicao := condicao + ' AND prd0000.emp_codigo ='+QuotedStr(PreencheEsquerda(dbInicio.Empresa.EMP_CODIGO,3));
    end;

   if (chkNCMcredito.Checked) then
      condicao := condicao + ' and prd0000.IPI_CODIGO IN (SELECT T1.ipi_codigo FROM ipi0000 T1 WHERE T1.ncm_temcredito = ''S'')';

   if (chkProdutoInativo.Checked) then
      condicao := condicao + ' and prd0000.PRD_STATUS = ''I'' '
   else
   //Somente produtos Ativos
      condicao := condicao + ' and prd0000.PRD_STATUS = ''A'' ';

   //
   AlmoxSaldo := '';
   if (Edt_Almox.Text <> '9999') then
      begin
        //AlmoxSaldo := ' and kardex.amx_codigo = '+QuotedStr(Edt_Almox.Text);
        AlmoxSaldo := QuotedStr(Edt_Almox.Text);
      end
   else
      AlmoxSaldo := QuotedStr('');
   if (RadNegativo.checked ) then
   begin
      if (LTBoxProdu.ItemIndex = 2) then
        condicaoAdicional:=condicaoAdicional + ' and P2.PRG_SALDO < 0 '
      else
      begin
         //condicaoAdicional := ' and (coalesce((select first 1 kardex.kar_saldo from kardex where kardex.emp_codigo ='+QuotedStr(PreencheEsquerda(dbInicio.Empresa.EMP_CODIGO,3))+AlmoxSaldo+ ' and kardex.prd_codigo = prd0000.prd_codigo and kardex.data_hora <= '+dataFinal+almoxarifado+' order by kardex.kar_registro desc ),0) < prd0000.PRD_MINIMO ';
         //condicaoAdicional := condicaoAdicional + ' or coalesce((select first 1 kardex.kar_saldo from kardex where kardex.emp_codigo ='+QuotedStr(PreencheEsquerda(dbInicio.Empresa.EMP_CODIGO,3))+AlmoxSaldo+' and kardex.prd_codigo = prd0000.prd_codigo and kardex.data_hora <= '+dataFinal+almoxarifado+' order by kardex.kar_registro desc ),0) < 0 )';

         condicaoAdicional := ' and ((SELECT saldo FROM PCd_KARDEX_SALDO_FULL('+QuotedStr(PreencheEsquerda(dbInicio.Empresa.EMP_CODIGO,3))+',prd0000.prd_codigo, '+dataInicial+', '+dataFinal+', '+AlmoxSaldo+')) < prd0000.PRD_MINIMO ';
         condicaoAdicional :=  condicaoAdicional + ' or (SELECT saldo FROM PCd_KARDEX_SALDO_FULL('+QuotedStr(PreencheEsquerda(dbInicio.Empresa.EMP_CODIGO,3))+',prd0000.prd_codigo, '+dataInicial+', '+dataFinal+', '+AlmoxSaldo+')) < 0)'
      end
   end
   else
   begin
      if (LTBoxProdu.ItemIndex = 2) and  (RadPositivo.checked ) then
        condicaoAdicional:= condicaoAdicional + ' and P2.PRG_SALDO > 0 '
      else
      begin
         //quando e inventario nao tras os zerados
         if ((condicaoAdicional = 'inventarioNCM') or (RadPositivo.checked )) then
            condicaoAdicional := ' and (SELECT saldo FROM PCd_KARDEX_SALDO_FULL('+QuotedStr(PreencheEsquerda(dbInicio.Empresa.EMP_CODIGO,3))+',prd0000.prd_codigo, '+dataInicial+', '+dataFinal+', '+AlmoxSaldo+')) > 0';
      end;
   end;
   //Tipo
   if (Edt_Tipo.Text <> '999') then
      condicaoAdicional := condicaoAdicional + ' and  prd0000.PTI_CODIGO = '+QuotedStr(Edt_Tipo.Text);
   //Grupo
   if (Edt_Grupo.Text <> '999') then
      condicaoAdicional := condicaoAdicional + ' and  prd0000.PGR_CODIGO = '+QuotedStr(Edt_Grupo.Text);
   //Linha
   if (Edt_Linha.Text <> '999') then
      condicaoAdicional := condicaoAdicional + ' and  prd0000.LIN_CODIGO = '+QuotedStr(Edt_Linha.Text);

   //Ordenação
   CdsEstoqueNovo.IndexName:='';
   ordenacao:='';
   if (RadRefer.checked ) then
   BEGIN
        //CdsEstoqueNovo.IndexName:='INDX1';
        ordenacao := 'order by prd0000.prd_refer';
   end
   else
   if (RadProdu.checked ) then
   begin
        //CdsEstoqueNovo.IndexName:='INDX2';
        ordenacao := 'order by prd0000.prd_descri';
   end
   Else
   if rbEnder.Checked then
   begin
      ordenacao := 'order by en.prde_endereco, prd0000.prd_refer';
   end
   Else
   if rbMarca.Checked then
      ordenacao := 'order by ln.lin_descri, prd0000.prd_descri';




   if (sTipoRelatorio = 'inventarioNCM') then
      begin
         ordenacao := 'order by prd0000.ipi_codigo';
         if (RadRefer.checked ) then
         BEGIN
            ordenacao := ordenacao+', prd0000.prd_refer'
         end
         else
         BEGIN
            ordenacao := ordenacao+', prd0000.prd_descri';
         end;
      end;

   if (Edt_Almox.Text <> '9999') then
      begin
         //almoxarifado := ' and kardex.amx_codigo = '+QuotedStr(PreenchezeroEsquerda(Edt_Almox.Text,4));

         almoxarifado := QuotedStr(Edt_Almox.Text);

         AlmoxGeral   := 'and prd0000.prd_codigo in (SELECT T1.prd_codigo FROM KARDEX T1 WHERE T1.AMX_CODIGO = '+QuotedStr(PreenchezeroEsquerda(Edt_Almox.Text,4))+'  GROUP BY T1.prd_codigo)'
      end;
   almoxarifado := almoxarifado + ' and  kardex.amx_codigo in (SELECT t2.AMX_CODIGO from ALMOX0000 t2 WHERE t2.AMX_CODIGO = kardex.amx_codigo and t2.AMX_ATIVO = ''S'')';
//   if (Edt_Tipo.Text <> '999') then
//      tipo := ' and prd0000.pti_codigo = '+QuotedStr(Edt_Tipo.Text);
//   if (Edt_Grupo.Text <> '999') then
//      grupo := ' and prd0000.pgr_codigo = '+QuotedStr(Edt_Grupo.Text);
//   if (Edt_Linha.Text <> '999') then
//      linha := ' and prd0000.lin_codigo = '+QuotedStr(Edt_Linha.Text);

   if (LTBoxProdu.ItemIndex = 2) then
        sleftGrade:= '         inner join prd_grade p2 on (prd0000.prd_codigo =  p2.prd_codigo) ';
//   else
//       sleftGrade :=  '         left join prd_grade p2 on (prd0000.prd_codigo =  p2.prd_codigo) ' ;

   CdsEstoqueNovo.CommandText := 'select '+
                                 '    prd0000.prd_codigo,'+
                                 '    prd0000.prd_pendente,'+
                                 '    prd0000.prd_refer,'+
                                 '    prd0000.prd_descri,'+
                                 '    prd0000.prd_und,'+
                                 '    prd0000.prd_pcusto,'+
                                 '    prd0000.prd_pmedio,'+
                                 '    prd0000.prd_minimo,'+
                                 '    prd0000.pgr_codigo,'+
                                 '    prd0000.pti_codigo,'+
                                 '    prd0000.ipi_codigo,'+
                                 '    prd0000.prd_pvenda,'+
                                 '    prd0000.prde_registro,'+
                                 '    en.prde_endereco,'+
                                 '    ln.lin_descri,'+
                                 iif(LTBoxProdu.ItemIndex = 2,'  P2.PRG_DESCRICAO, P2.PRG_SALDO, ',' '''' PRG_DESCRICAO, 0.0 PRG_SALDO, ')  +
                                 '    (SELECT saldo_anterior FROM PCd_KARDEX_SALDO_FULL('+QuotedStr(PreencheEsquerda(dbInicio.Empresa.EMP_CODIGO,3))+', prd0000.prd_codigo, '+dataInicial+', '+dataFinal+', '+AlmoxSaldo+')) AS estoque_anterior, '+
                                 '    (SELECT entradas FROM PCd_KARDEX_SALDO_FULL('+QuotedStr(PreencheEsquerda(dbInicio.Empresa.EMP_CODIGO,3))+', prd0000.prd_codigo, '+dataInicial+', '+dataFinal+', '+AlmoxSaldo+')) AS estoque_entradas, '+
                                 '    (SELECT saidas FROM PCd_KARDEX_SALDO_FULL('+QuotedStr(PreencheEsquerda(dbInicio.Empresa.EMP_CODIGO,3))+', prd0000.prd_codigo, '+dataInicial+', '+dataFinal+', '+AlmoxSaldo+')) AS estoque_saidas, '+
                                 '    CASE ' +
                                 '      WHEN (SELECT COUNT(PRDL_REGISTRO) FROM PRD_LOTE pl WHERE pl.PRD_CODIGO = prd0000.prd_codigo ' +  iif(AlmoxSaldo = '''9999''', '', ' AND pl.AMX_CODIGO = ' + AlmoxSaldo + ' AND pl.EMP_CODIGO = ' + QuotedStr(PreencheEsquerda(dbInicio.Empresa.EMP_CODIGO,3))) +  ') > 0 ' +
                                 '        THEN (SELECT sum(PRDL_SALDO) FROM PRD_LOTE pl WHERE pl.PRD_CODIGO = prd0000.prd_codigo ' +  iif(AlmoxSaldo = '''9999''', '', ' AND pl.AMX_CODIGO = ' + AlmoxSaldo + ' AND pl.EMP_CODIGO = ' + QuotedStr(PreencheEsquerda(dbInicio.Empresa.EMP_CODIGO,3))) +  ') ' +
                                 '      ELSE (SELECT saldo FROM PCd_KARDEX_SALDO_FULL('+QuotedStr(PreencheEsquerda(dbInicio.Empresa.EMP_CODIGO,3))+',prd0000.prd_codigo, '+dataInicial+', '+dataFinal+', '+AlmoxSaldo+'))  ' +
                                 '    END AS estoque_atual ' +
                                 ' from prd0000 '+
                                 '         left join PRD0000_ENDERECAMENTO en on en.prde_registro=prd0000.prde_registro '+
                                 '         left join prd_linha ln on ln.lin_codigo=prd0000.lin_codigo  '+
                                 sleftGrade +
                                 condicao+' '+condicaoAdicional+' '+AlmoxGeral+' '+ordenacao;

   if dbInicio.IsDesenvolvimento then
    CopyToClipboard(CdsEstoqueNovo.CommandText);

   CdsEstoqueNovo.Open;
   CdsEstoqueNovo.First;
   CdsEstoqueNovo.First;
   Screen.Cursor     := crDefault;
end;

procedure TFormGImpProduto.frxInventarioEstoqueGetValue(
  const VarName: String; var Value: Variant);
begin
   if (VarName = 'Empresa') then
      Value := dbInicio.Empresa.RAZAO
   else
   if (VarName = 'Filtro') then
      Value := sFiltro;
end;

procedure TFormGImpProduto.frxEstoqueAtualGetValue(const VarName: String;
  var Value: Variant);
begin
   if (VarName = 'Empresa') then
      Value := dbInicio.Empresa.RAZAO
   else
   if (VarName = 'Filtro') then
      Value := sFiltro;
end;

procedure TFormGImpProduto.frxRelatorioFinanceiroEstoqueGeralGetValue(
  const VarName: String; var Value: Variant);
begin
   if (VarName = 'Empresa') then
      Value := dbInicio.Empresa.RAZAO
   else
   if (VarName = 'Filtro') then
      Value := sFiltro;
end;

procedure TFormGImpProduto.frxInventarioNCMGetValue(const VarName: String;
  var Value: Variant);
begin
   if (VarName = 'Empresa') then
      Value := dbInicio.Empresa.RAZAO
   else
   if (VarName = 'Filtro') then
      Value := sFiltro;
end;

procedure TFormGImpProduto.Edt_LinhaClick(Sender: tObject);
begin
    Edt_Linha.SelectAll;
end;

procedure TFormGImpProduto.Edt_LinhaExit(Sender: tObject);
begin
    Edt_Linha.text := StrZero(Edt_Linha.Text,Edt_Linha.MaxLength);
    if (Edt_Linha.Text <> '999') then
       begin
           if (SqlCdsLinha.Locate('LIN_CODIGO',Edt_Linha.Text,[])=true) then
              begin
                  CbLinha.Text := SqlCdsLinhaLIN_DESCRI.AsString;
              end
           else
              begin
                  Edt_Linha.Text    := '999';
                  CbLinha.Text      := 'TODAS AS LINHAS';
                  CbLinha.ItemIndex := 0;
              end;
       end
    else
       begin
           Edt_Linha.Text    := '999';
           CbLinha.Text      := 'TODAS AS LINHAS';
           CbLinha.ItemIndex := 0;
       end;
end;

procedure TFormGImpProduto.Edt_LinhaKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;
end;

procedure TFormGImpProduto.CbLinhaClick(Sender: tObject);
begin
    if (SqlCdsLinha.Locate('LIN_DESCRI',CbLinha.Text,[])=true) then
       begin
           Edt_Linha.Text := SqlCdsLinhaLIN_CODIGO.AsString;
       end
    else
       begin
           Edt_Linha.Text    := '999';
           CbLinha.Text      := 'TODAS AS LINHAS';
           CbLinha.ItemIndex := 0;
       end;
end;

procedure TFormGImpProduto.FormCreate(Sender: tObject);
begin
     inherited;
     Self.width:=492;
end;

end.
