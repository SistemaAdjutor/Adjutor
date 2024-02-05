unit GImpPedi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Mask,   StdCtrls, Buttons, RwFunc,
  RDprint, Provider, SqlExpr, DBClient, ppProd, ppClass,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppBands, ppVar, ppCtrls,
  ppPrnabl, ppCache, ppModule, raCodMod, ppStrtch, ppSubRpt, DBCtrls,
  ppParameter, frxClass, frxDBSet, Math, ComboBoxRw, Data.DBXFirebird,
  ppDesignLayer, SgDbSeachComboUnit, Data.FMTBcd,BaseForm, BaseDBForm, ACBrEnterTab, ACBrBase, ACBrCalculadora, JvExMask, JvToolEdit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxDBLookupComboBox, Vcl.ExtCtrls, ppTableGrid, JvExControls, JvAnimatedImage, JvGIFCtrl,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormGImpPedido = class(TfrmBaseDB)
    Grp03: TGroupBox;
    grp08: TGroupBox;
    BitConfig: TBitBtn;
    BitOk: TBitBtn;
    BitCancelar: TBitBtn;
    grp04: TGroupBox;
    Label1: TLabel;
    EditInicial: TEdit;
    grp00: TGroupBox;
    LTBox: TListBox;
    grp01: TGroupBox;
    RadVideo: TRadioButton;
    RadImpressora: TRadioButton;
    RadText: TRadioButton;
    Grp02: TGroupBox;
    Label6: TLabel;
    CbCliente: TComboBox;
    grp07: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    PrinterPedido: TPrinterSetupDialog;
    SqlCdsPedido: TSQLQuery;
    DsPedido: TDataSource;
    SqlCdsItenPedi: TSQLQuery;
    DsItenPedi: TDataSource;
    SqlCdsPedidoPED_CODIGO: TStringField;
    SqlCdsPedidoPED_DTENTRADA: TSQLTimeStampField;
    SqlCdsPedidoPED_EXPEDICAO: TStringField;
    SqlCdsPedidoPED_COMIS1: TFMTBCdField;
    SqlCdsPedidoPED_FRETE: TStringField;
    SqlCdsPedidoPED_FRETE2: TStringField;
    SqlCdsPedidoPED_SITCRED: TStringField;
    SqlCdsPedidoPED_PRIORIDADE: TStringField;
    SqlCdsPedidoPED_DESCTOPC1: TFMTBCdField;
    SqlCdsPedidoPED_DESCTOPC2: TFMTBCdField;
    SqlCdsPedidoCLI_CODIGO: TStringField;
    SqlCdsPedidoCLI_ENDERE: TStringField;
    SqlCdsPedidoCLI_BAIRRO: TStringField;
    SqlCdsPedidoCLI_CIDADE: TStringField;
    SqlCdsPedidoCLI_UF: TStringField;
    SqlCdsPedidoCLI_CEP: TStringField;
    SqlCdsPedidoCLI_PESSOA: TStringField;
    SqlCdsPedidoCLI_CGC: TStringField;
    SqlCdsPedidoCLI_INSC: TStringField;
    SqlCdsPedidoCLI_CONTATO: TStringField;
    SqlCdsPedidoCLI_FAX: TStringField;
    SqlCdsPedidoCLI_ENDENTR: TStringField;
    SqlCdsPedidoCLI_CIDENTR: TStringField;
    SqlCdsPedidoCLI_UFENTR: TStringField;
    SqlCdsPedidoCLI_ENDFAT: TStringField;
    SqlCdsPedidoCLI_CIDFAT: TStringField;
    SqlCdsPedidoCLI_UFFAT: TStringField;
    SqlCdsPedidoCLI_CEPFAT: TStringField;
    SqlCdsPedidoREP_CODIGO: TStringField;
    SqlCdsPedidoREP_NOME: TStringField;
    SqlCdsPedidoPCL_CODIGO: TStringField;
    SqlCdsPedidoPCL_NOME: TStringField;
    SqlCdsPedidoTRP_CODIGO: TStringField;
    SqlCdsPedidoTRP_RAZAO: TStringField;
    SqlCdsPedidoTRP_FONE: TStringField;
    SqlCdsPedidoTRP_REDESP: TStringField;
    SqlCdsPedidoTRP_RAZAO_1: TStringField;
    SqlCdsPedidoTRP_FONE_1: TStringField;
    SqlCdsItenPediPED_CODIGO: TStringField;
    SqlCdsItenPediPRD_REFER: TStringField;
    SqlCdsItenPediPRF_PRDDESCRI: TStringField;
    SqlCdsItenPediPRF_PRECO: TFMTBCdField;
    SqlCdsItenPediPRF_QTDE: TFMTBCdField;
    SqlCdsItenPediPRF_IPIALIQ: TFMTBCdField;
    SqlCdsItenPediPRF_VAR1: TFMTBCdField;
    SqlCdsItenPediPRF_VAR2: TFMTBCdField;
    SqlCdsItenPediPRF_VAR3: TFMTBCdField;
    SqlCdsItenPediPRF_VAR4: TFMTBCdField;
    SqlCdsItenPediPRF_VAR5: TFMTBCdField;
    SqlCdsItenPediPRD_PESOKG: TFMTBCdField;
    SqlCdsItenPediPRD_DCVAR1: TStringField;
    SqlCdsItenPediPRD_DCVAR2: TStringField;
    SqlCdsItenPediPRD_DCVAR3: TStringField;
    SqlCdsItenPediPRD_DCVAR4: TStringField;
    SqlCdsItenPediPRD_DCVAR5: TStringField;
    SqlCdsPedidoCLI_FANTASIA: TStringField;
    SqlCdsPedidoCLI_FONE: TStringField;
    SqlCdsParam: TSQLQuery;
    SqlCdsParamPMT_VARIACOES: TStringField;
    SqlCdsParamPMT_COMIS_GRP: TStringField;
    SqlCdsPedidoPED_COMIS2: TFMTBCdField;
    SqlCdsPedidoPED_COMIS3: TFMTBCdField;
    SqlCdsPedidoCLI_CEPENTR: TStringField;
    SqlCdsItenPediPRD_UND: TStringField;
    SqlCdsPedidoPED_DESCTONF: TStringField;
    SqlCdsPedidoPED_DESCTOVL: TFMTBCdField;
    SqlCdsPedidoPED_VLTOTAL_IPI: TFMTBCdField;
    SqlCdsPedidoPED_VLTOTAL_LIQ: TFMTBCdField;
    SqlCdsPedidoPED_VLTOTAL_BRUTO: TFMTBCdField;
    SqlCdsPedidoPED_DTSAIDA: TSQLTimeStampField;
    SqlCdsRel01: TSQLQuery;
    DsRel01: TDataSource;
    ppRRel01: TppReport;
    SqlCdsRel01PED_MES_CC: TStringField;
    SqlCdsClie: TSQLQuery;
    SqlCdsClieCLI_CODIGO: TStringField;
    SqlCdsClieCLI_RAZAO: TStringField;
    SqlCdsRep: TSQLQuery;
    SqlCdsRepREP_CODIGO: TStringField;
    SqlCdsRepREP_NOME: TStringField;
    EdtClie: TEdit;
    CbCliCod: TComboBox;
    ppRReL02: TppReport;
    SqlCdsItenPediPRF_VAR6: TFMTBCdField;
    SqlCdsItenPediPRF_VAR7: TFMTBCdField;
    SqlCdsItenPediPRF_VAR8: TFMTBCdField;
    SqlCdsItenPediPRD_DCVAR6: TStringField;
    SqlCdsItenPediPRD_DCVAR7: TStringField;
    SqlCdsItenPediPRD_DCVAR8: TStringField;
    SqlCdsPedidoOPV_CODIGO: TIntegerField;
    SqlCdsPedidoOPV_DESCRICAO: TStringField;
    SqlCdsPedidoPED_OBSG2: TStringField;
    SqlCdsPedidoPED_OBSG3: TStringField;
    SqlCdsPedidoPED_OBSG4: TStringField;
    SqlCdsPedidoPED_OBSG5: TStringField;
    SqlCdsPedidoPED_OBSG6: TStringField;
    SqlCdsPedidoPED_OBSG7: TStringField;
    EdtTipo: TEdit;
    CbTipo: TComboBox;
    Label3: TLabel;
    CdsTipo: TSQLQuery;
    CdsTipoOPV_CODIGO: TIntegerField;
    CdsTipoOPV_DESCRICAO: TStringField;
    CdsTipoOPV_TIPO: TStringField;
    CdsTipoEMP_CODIGO: TStringField;
    RadEntrada: TRadioButton;
    RadEntrega: TRadioButton;
    ppDBRel01: TppDBPipeline;
    SqlCdsRel02: TSQLQuery;
    DsRel02: TDataSource;
    RadFaturamento: TRadioButton;
    SqlCdsRel02PED_PENDENTE_CC: TCurrencyField;
    SqlCdsRel01PED_CODIGO: TStringField;
    SqlCdsRel01WQTDE: TFMTBCdField;
    SqlCdsRel01PED_DTENTRADA: TSQLTimeStampField;
    SqlCdsRel01PED_DTSAIDA: TSQLTimeStampField;
    SqlCdsRel01PED_VLTOTAL_BRUTO: TFMTBCdField;
    SqlCdsRel01CLI_CODIGO: TStringField;
    SqlCdsRel01CLI_RAZAO: TStringField;
    SqlCdsRel01CLI_UF: TStringField;
    SqlCdsRel01REP_CODIGO: TStringField;
    SqlCdsRel01REP_NOME: TStringField;
    SqlCdsRel02EMP_CODIGO: TStringField;
    SqlCdsRel02PED_DTSAIDA: TSQLTimeStampField;
    SqlCdsRel02PED_DTENTRADA: TSQLTimeStampField;
    SqlCdsRel02CLI_CODIGO: TStringField;
    SqlCdsRel02CLI_RAZAO: TStringField;
    SqlCdsRel02CLI_UF: TStringField;
    SqlCdsRel02REP_NOME: TStringField;
    SqlCdsRel02REP_CODIGO: TStringField;
    SqlCdsRel02PED_CODIGO: TStringField;
    SqlCdsRel02PED_DESCTOVL: TFMTBCdField;
    SqlCdsRel02WVALOR_FATURADO: TFMTBCdField;
    SqlCdsRel02WVALOR_PEDIDO_LIQUIDO: TFMTBCdField;
    SqlCdsRel02WVALOR_FATURADO_LIQUIDO: TFMTBCdField;
    SqlCdsRel02WVALOR_FATURADO_IPI: TFMTBCdField;
    ppDBRel02: TppDBPipeline;
    ppRRel03: TppReport;
    SqlCdsRel03: TSQLQuery;
    DsRel03: TDataSource;
    ppDBRel03: TppDBPipeline;
    ppRRel04: TppReport;
    SqlCdsRel04: TSQLQuery;
    DsRel04: TDataSource;
    SqlCdsRel041: TSQLQuery;
    DsRel041: TDataSource;
    ppDBRel041: TppDBPipeline;
    SqlCdsRel041NF_IT_NOTANUMER: TStringField;
    SqlCdsRel041PRD_REFER: TStringField;
    SqlCdsRel041PRD_DESCRI: TStringField;
    SqlCdsRel041NF_QTDE: TFMTBCdField;
    SqlCdsRel041NF_PRECO: TFMTBCdField;
    SqlCdsRel041NF_EMISSAO: TDateField;
    SqlCdsRel03NF_NOTANUMBER: TStringField;
    SqlCdsRel03NF_EMISSAO: TDateField;
    SqlCdsRel03NF_SAIDA: TDateField;
    SqlCdsRel03NF_TOT_NOTA: TFMTBCdField;
    SqlCdsRel03CLI_CODIGO: TStringField;
    SqlCdsRel03CLI_RAZAO: TStringField;
    SqlCdsRel03CLI_CIDADE: TStringField;
    SqlCdsRel03CLI_UF: TStringField;
    SqlCdsRel03PED_CODIGO: TStringField;
    SqlCdsRel03TRP_CODIGO: TStringField;
    SqlCdsRel03TRP_RAZAO: TStringField;
    SqlCdsRel04NF_NOTANUMBER: TStringField;
    SqlCdsRel04NF_EMISSAO: TDateField;
    SqlCdsRel04NF_SAIDA: TDateField;
    SqlCdsRel04NF_TOT_NOTA: TFMTBCdField;
    SqlCdsRel04CLI_CODIGO: TStringField;
    SqlCdsRel04CLI_RAZAO: TStringField;
    SqlCdsRel04CLI_CIDADE: TStringField;
    SqlCdsRel04CLI_UF: TStringField;
    SqlCdsRel04PED_CODIGO: TStringField;
    SqlCdsRel04TRP_CODIGO: TStringField;
    SqlCdsRel04TRP_RAZAO: TStringField;
    ppDBRel04: TppDBPipeline;
    ppHeaderBand3: TppHeaderBand;
    ppShape6: TppShape;
    ppShape5: TppShape;
    ppShape4: TppShape;
    ppShape2: TppShape;
    ppLine8: TppLine;
    LBL_03_EMPRESA: TppLabel;
    LBL_03_LTITULO1: TppLabel;
    LBL_03_LTITULO2: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppShape1: TppShape;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppShape3: TppShape;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppShape7: TppShape;
    ppLabel34: TppLabel;
    ppShape8: TppShape;
    ppLabel35: TppLabel;
    ppShape9: TppShape;
    ppLabel36: TppLabel;
    ppShape10: TppShape;
    ppLabel37: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppLine10: TppLine;
    ppDBText24: TppDBText;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppDBText25: TppDBText;
    ppLine13: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    raCodeModule2: TraCodeModule;
    ppHeaderBand4: TppHeaderBand;
    ppShape11: TppShape;
    ppShape12: TppShape;
    ppShape13: TppShape;
    ppShape14: TppShape;
    ppLine23: TppLine;
    LBL_04_EMPRESA: TppLabel;
    LBL_04_LTITULO1: TppLabel;
    LBL_04_LTITULO2: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppShape15: TppShape;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppShape16: TppShape;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppShape17: TppShape;
    ppLabel44: TppLabel;
    ppShape18: TppShape;
    ppLabel45: TppLabel;
    ppShape19: TppShape;
    ppLabel46: TppLabel;
    ppShape20: TppShape;
    ppLabel47: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppLine24: TppLine;
    ppDBText33: TppDBText;
    ppLine25: TppLine;
    ppDBText34: TppDBText;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppLine26: TppLine;
    ppLine34: TppLine;
    ppDBText41: TppDBText;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    raCodeModule3: TraCodeModule;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand5: TppDetailBand;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    SqlCdsRel02PED_VLTUPS: TFMTBCdField;
    SqlCdsParamPMT_TUPPEDIDO: TStringField;
    SqlCdsRel02PED_TOTUPS: TFMTBCdField;
    SqlCdsPedidoPED_TOTUPS: TFMTBCdField;
    SqlCdsPedidoPED_VLTUPS: TFMTBCdField;
    SqlCdsPedidoCLI_RAZAO: TStringField;
    Grp05: TGroupBox;
    Label4: TLabel;
    Edt_Tipo: TEdit;
    Cb_Tipo: TComboBox;
    DsRel05: TDataSource;
    ppRRel05: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppLine38: TppLine;
    LBL_05_EMPRESA: TppLabel;
    LBL_05_TITULO01: TppLabel;
    LBL_05_TITULO02: TppLabel;
    ppSystemVariable13: TppSystemVariable;
    ppSystemVariable14: TppSystemVariable;
    ppLine39: TppLine;
    ppDetailBand6: TppDetailBand;
    ppDBRel05: TppDBPipeline;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLabel22: TppLabel;
    ppDBText10: TppDBText;
    ppDBText15: TppDBText;
    ppLine40: TppLine;
    ppLabel26: TppLabel;
    ppLine41: TppLine;
    ppLabel27: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppDBText46: TppDBText;
    ppLine42: TppLine;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText54: TppDBText;
    ppLabel54: TppLabel;
    ppLine43: TppLine;
    ppLabel55: TppLabel;
    ppDBCalc16: TppDBCalc;
    ppDBText55: TppDBText;
    SqlCdsItenPediPTI_SIGLA: TStringField;
    SqlCdsVendaSeg: TSQLQuery;
    DsVendaSeg: TDataSource;
    SqlCdsVendaSegQTDE: TFMTBCdField;
    SqlCdsVendaSegTOTAL_FAT: TFMTBCdField;
    SqlCdsVendaSegTOTAL_PED: TFMTBCdField;
    SqlCdsVendaSegLIN_CODIGO: TStringField;
    SqlCdsVendaSegLIN_DESCRI: TStringField;
    ppRVendaSeg: TppReport;
    ppHeaderBand6: TppHeaderBand;
    ppLine44: TppLine;
    ppLblSegEmpresa: TppLabel;
    ppLabel57: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppLine45: TppLine;
    ppDetailBand7: TppDetailBand;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLine46: TppLine;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    SqlCdsVendaSegCC_REPRES: TCurrencyField;
    SqlCdsVendaSegTOTAL_GERAL_FAT: TAggregateField;
    ppDBText61: TppDBText;
    DBVendaSeg: TppDBPipeline;
    ppLine47: TppLine;
    ppLabel63: TppLabel;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppFooterBand1: TppFooterBand;
    ppDBCalc20: TppDBCalc;
    ppLblPeriodo: TppLabel;
    Grp06: TGroupBox;
    Rad_Todos: TRadioButton;
    Rad_Faturado: TRadioButton;
    Rad_Faturar: TRadioButton;
    SqlCdsItenPediPRF_REGISTRO: TIntegerField;
    SqlCdsItenPediPRF_QTDEFAT: TFMTBCdField;
    SqlCdsItenPediPRF_SITUACAO: TStringField;
    SqlCdsItenPediPRF_ITEMCOMIS: TFMTBCdField;
    SqlCdsItenPediPRF_ICMSALIQ: TFMTBCdField;
    SqlCdsItenPediEMP_CODIGO: TStringField;
    SqlCdsItenPediPRF_PRECO_BRUTO: TFMTBCdField;
    SqlCdsItenPediPRF_OP: TStringField;
    SqlCdsItenPediPRF_QTDE_FAT_VAR1: TFMTBCdField;
    SqlCdsItenPediPRF_QTDE_FAT_VAR2: TFMTBCdField;
    SqlCdsItenPediPRF_QTDE_FAT_VAR3: TFMTBCdField;
    SqlCdsItenPediPRF_QTDE_FAT_VAR4: TFMTBCdField;
    SqlCdsItenPediPRF_QTDE_FAT_VAR5: TFMTBCdField;
    SqlCdsItenPediPRF_QTDE_FAT_VAR6: TFMTBCdField;
    SqlCdsItenPediPRF_QTDE_FAT_VAR7: TFMTBCdField;
    SqlCdsItenPediPRF_QTDE_FAT_VAR8: TFMTBCdField;
    SqlCdsItenPediPRF_FLAG_ATUALIZA_ESTOQUE: TStringField;
    SqlCdsItenPediPRF_ORIGEM_ITEM: TStringField;
    SqlCdsItenPediPRF_PRODUTO_AGREGADO: TStringField;
    ppLabel56: TppLabel;
    ppDBCalc15: TppDBCalc;
    EditFinal: TEdit;
    Label2: TLabel;
    SqlCdsRel02PED_COMIS1: TFMTBCdField;
    ppParameterList1: TppParameterList;
    ppHeaderBand2: TppHeaderBand;
    ppLine2: TppLine;
    LBL_01_EMPRESA: TppLabel;
    LBL_01_LTITULO1: TppLabel;
    LBL_01_LTITULO2: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel20: TppLabel;
    ppLabel8: TppLabel;
    ppLabel19: TppLabel;
    ppLabel21: TppLabel;
    ppLabel13: TppLabel;
    ppLabel64: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText16: TppDBText;
    ppDBText18: TppDBText;
    ppDBText11: TppDBText;
    ppDBText17: TppDBText;
    ppDBText19: TppDBText;
    ppDBTRazao: TppDBText;
    ppDBText21: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLabel23: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppLine5: TppLine;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppLabel24: TppLabel;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel25: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    raCodeModule1: TraCodeModule;
    SqlCdsRel02Comissao_CC: TCurrencyField;
    ppDBText5: TppDBText;
    SqlCdsRel01PED_VLTOTAL_LIQ: TFMTBCdField;
    SqlCdsPedidoCLI_EMAIL_ALTERNATIVO: TStringField;
    SqlCdsPedidoPED_OBSNOTA: TBlobField;
    SqlCdsPedidoPED_OBSG1: TBlobField;
    ppLabel66: TppLabel;
    ppDBText62: TppDBText;
    RDprintPedidos2: TRDprint;
    SqlCdsPedidoPED_VLFRETE: TFMTBCdField;
    SqlCdsItenPediPRD_PESOLIQ: TFMTBCdField;
    ppDBCalc23: TppDBCalc;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppDBCalc24: TppDBCalc;
    Label48: TLabel;
    EdProjetoObraCodigo: TEdit;
    CbProjetoObra: TComboBoxRw;
    SqlCdsItenPediPRF_IDESCTO1: TFloatField;
    SqlCdsItenPediPRF_IDESCTO2: TFloatField;
    RDprintPedidos: TRDprint;
    grp09: TGroupBox;
    Label9: TLabel;
    CbTipoFrete: TComboBox;
    cbTranspCod: TComboBox;
    cbTransp: TComboBox;
    EdtTransp: TEdit;
    Label10: TLabel;
    CdsTransp: TSQLQuery;
    dsTransp: TDataSource;
    CdsTranspTRP_CODIGO: TStringField;
    CdsTranspTRP_RAZAO: TStringField;
    dbTransp: TppDBPipeline;
    ppTransp: TppReport;
    ppParameterList7: TppParameterList;
    SqlCdsTransp: TSQLQuery;
    SqlCdsTranspPED_CODIGO: TStringField;
    SqlCdsTranspCLI_RAZAO: TStringField;
    SqlCdsTranspPED_VLFATURADO: TFMTBCDField;
    SqlCdsTranspPED_VLFRETE: TFMTBCDField;
    SqlCdsTranspTIPOFRETE: TStringField;
    SqlCdsTranspPED_DESP_ACES: TFMTBCDField;
    SqlCdsTranspTRP_RAZAO: TStringField;
    SqlCdsTranspTRP_CODIGO: TStringField;
    SqlCdsTranspPED_PLACA: TStringField;
    ppHeaderBand7: TppHeaderBand;
    ppLine48: TppLine;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppSystemVariable9: TppSystemVariable;
    ppSystemVariable10: TppSystemVariable;
    ppLine49: TppLine;
    ppDetailBand8: TppDetailBand;
    ppDBText14: TppDBText;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLabel79: TppLabel;
    ppDBCalc28: TppDBCalc;
    ppDBCalc29: TppDBCalc;
    ppDBCalc30: TppDBCalc;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppLabel73: TppLabel;
    ppDBText70: TppDBText;
    ppLine50: TppLine;
    ppLabel74: TppLabel;
    ppLine51: TppLine;
    ppLabel78: TppLabel;
    ppLabel80: TppLabel;
    ppLabel82: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppDBText71: TppDBText;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppLine52: TppLine;
    ppLine53: TppLine;
    ppLabel83: TppLabel;
    ppDBCalc25: TppDBCalc;
    ppDBCalc26: TppDBCalc;
    ppDBCalc27: TppDBCalc;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppLabel81: TppLabel;
    ppDBText67: TppDBText;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppDesignLayers8: TppDesignLayers;
    ppDesignLayer8: TppDesignLayer;
    SqlCdsTranspPED_DTENTRADA: TSQLTimeStampField;
    ppLabel84: TppLabel;
    dspItemPedi: TDataSetProvider;
    cdsItemPedi: TClientDataSet;
    dspRel2: TDataSetProvider;
    cdsRel2: TClientDataSet;
    cdsRel1: TClientDataSet;
    dspRel1: TDataSetProvider;
    cdsRel3: TClientDataSet;
    dspRel3: TDataSetProvider;
    cdsRel4: TClientDataSet;
    dspRel4: TDataSetProvider;
    cdsRel41: TClientDataSet;
    dspRel41: TDataSetProvider;
    cdsTransporte: TClientDataSet;
    dspTransp: TDataSetProvider;
    cdsVendaSeg: TClientDataSet;
    cdsVendaSegQTDE: TFMTBCDField;
    cdsVendaSegTOTAL_FAT: TFMTBCDField;
    cdsVendaSegTOTAL_PED: TFMTBCDField;
    cdsVendaSegLIN_CODIGO: TStringField;
    cdsVendaSegLIN_DESCRI: TStringField;
    cdsVendaSegCC_REPRES: TCurrencyField;
    cdsVendaSegTOTAL_GERAL_FAT: TAggregateField;
    dspVendasSeg: TDataSetProvider;
    ppDBCalc31: TppDBCalc;
    EditDataI: TJvDateEdit;
    EditDataF: TJvDateEdit;
    grpVendedor: TGroupBox;
    CbRep: TComboBox;
    EdtRep: TEdit;
    Label5: TLabel;
    CbRepCod: TComboBox;
    ppRRel09: TppReport;
    ppHeaderBand8: TppHeaderBand;
    ppLine54: TppLine;
    LBL_09_EMPRESA: TppLabel;
    LBL_09_TITULO01: TppLabel;
    LBL_09_TITULO02: TppLabel;
    ppSystemVariable15: TppSystemVariable;
    ppSystemVariable16: TppSystemVariable;
    ppLine55: TppLine;
    ppDetailBand9: TppDetailBand;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppDBText74: TppDBText;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppDBText77: TppDBText;
    ppDBText78: TppDBText;
    ppDBText79: TppDBText;
    ppDBText80: TppDBText;
    ppDBText81: TppDBText;
    ppDBText82: TppDBText;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppDBText83: TppDBText;
    ppDBText84: TppDBText;
    ppLine56: TppLine;
    ppLabel88: TppLabel;
    ppLine57: TppLine;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppLine58: TppLine;
    ppLine59: TppLine;
    ppLabel99: TppLabel;
    ppDBCalc32: TppDBCalc;
    ppDBCalc33: TppDBCalc;
    ppDBCalc34: TppDBCalc;
    ppDesignLayers9: TppDesignLayers;
    ppDesignLayer9: TppDesignLayer;
    ppParameterList8: TppParameterList;
    chkMultiempresa: TCheckBox;
    SqlCdsRel04EMP_CODIGO: TStringField;
    SqlCdsRel041EMP_CODIGO: TStringField;
    SqlCdsRel03EMP_CODIGO: TStringField;
    SqlCdsRel01EMP_CODIGO: TStringField;
    ppDBText85: TppDBText;
    ppHeaderBand1: TppHeaderBand;
    ppLine14: TppLine;
    LBL_00_EMPRESA: TppLabel;
    LBL_00_LTITULO1: TppLabel;
    LBL_00_LTITULO2: TppLabel;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable12: TppSystemVariable;
    ppLine29: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel12: TppLabel;
    ppLine9: TppLine;
    ppLabel65: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBRep: TppDBText;
    ppDBText20: TppDBText;
    ppDBCliente: TppDBText;
    ppDBText4: TppDBText;
    ppDBText9: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel11: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLabel67: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel9: TppLabel;
    ppDBText1: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel10: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine1: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppDBCalc21: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppLabel14: TppLabel;
    raCodeModule4: TraCodeModule;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppLabel77: TppLabel;
    ppLabel85: TppLabel;
    CdsTotaOrcamentos: TClientDataSet;
    CdsTotaOrcamentosMes: TStringField;
    CdsTotaOrcamentosOrcaSoli: TIntegerField;
    CdsTotaOrcamentosOrcaEfetivados: TIntegerField;
    CdsTotaOrcamentosTotalVendas: TFMTBCDField;
    pOrigem: TPanel;
    Label120: TLabel;
    cbOrigem: TSgDbSearchCombo;
    CdsTotaOrcamentosDigMes: TIntegerField;
    CdsTotaOrcamentosVendasRealizadas: TIntegerField;
    ppOrcamentos: TppReport;
    dbTotalOrcamentos: TppDBPipeline;
    dsTotalOrcamentos: TDataSource;
    ppParameterList9: TppParameterList;
    ppDesignLayers10: TppDesignLayers;
    ppDesignLayer10: TppDesignLayer;
    ppHeaderBand9: TppHeaderBand;
    ppDetailBand10: TppDetailBand;
    ppDBText86: TppDBText;
    ppDBText87: TppDBText;
    ppDBText88: TppDBText;
    ppDBText89: TppDBText;
    ppDBText90: TppDBText;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel100: TppLabel;
    ppSystemVariable17: TppSystemVariable;
    ppSystemVariable18: TppSystemVariable;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppTableGrid1: TppTableGrid;
    ppTableRow1: TppTableRow;
    ppTableColumn1: TppTableColumn;
    ppTableCell1: TppTableCell;
    ppTableColumn2: TppTableColumn;
    ppTableCell3: TppTableCell;
    ppTableColumn3: TppTableColumn;
    ppTableCell5: TppTableCell;
    ppTableColumn4: TppTableColumn;
    ppTableCell7: TppTableCell;
    ppTableColumn5: TppTableColumn;
    ppTableCell9: TppTableCell;
    ppOrigem: TppLabel;
    ppTableGrid3: TppTableGrid;
    ppTableRow3: TppTableRow;
    ppTableCell11: TppTableCell;
    ppTableCell12: TppTableCell;
    ppTableCell13: TppTableCell;
    ppTableCell14: TppTableCell;
    ppTableCell15: TppTableCell;
    ppTableColumn11: TppTableColumn;
    ppTableColumn12: TppTableColumn;
    ppTableColumn13: TppTableColumn;
    ppTableColumn14: TppTableColumn;
    ppTableColumn15: TppTableColumn;
    ppLabel108: TppLabel;
    ppTableGrid2: TppTableGrid;
    ppTableRow2: TppTableRow;
    ppTableCell2: TppTableCell;
    ppLabel106: TppLabel;
    ppTableCell4: TppTableCell;
    ppDBCalc35: TppDBCalc;
    ppTableCell6: TppTableCell;
    ppDBCalc36: TppDBCalc;
    ppTableCell8: TppTableCell;
    ppDBCalc37: TppDBCalc;
    ppTableCell10: TppTableCell;
    ppDBCalc38: TppDBCalc;
    ppTableColumn6: TppTableColumn;
    ppTableColumn7: TppTableColumn;
    ppTableColumn8: TppTableColumn;
    ppTableColumn9: TppTableColumn;
    ppTableColumn10: TppTableColumn;
    ppSummaryBand4: TppSummaryBand;
    ppRRel11: TppReport;
    ppHeaderBand10: TppHeaderBand;
    ppLine60: TppLine;
    LBL_11_EMPRESA: TppLabel;
    LBL_11_TITULO01: TppLabel;
    LBL_11_TITULO02: TppLabel;
    ppSystemVariable19: TppSystemVariable;
    ppSystemVariable20: TppSystemVariable;
    ppLine61: TppLine;
    ppDetailBand11: TppDetailBand;
    ppDBText91: TppDBText;
    ppDBText92: TppDBText;
    ppDBText94: TppDBText;
    ppDBText95: TppDBText;
    ppDBText97: TppDBText;
    ppDBText98: TppDBText;
    ppDBText99: TppDBText;
    ppDBText100: TppDBText;
    ppDBText101: TppDBText;
    ppDesignLayers11: TppDesignLayers;
    ppDesignLayer11: TppDesignLayer;
    ppParameterList10: TppParameterList;
    ppDBText30: TppDBText;
    ppDBText96: TppDBText;
    ppLine62: TppLine;
    ppLabel111: TppLabel;
    ppLine63: TppLine;
    ppLabel112: TppLabel;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppLabel117: TppLabel;
    ppLabel118: TppLabel;
    ppLabel119: TppLabel;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppSummaryBand5: TppSummaryBand;
    ppLine64: TppLine;
    ppLine65: TppLine;
    ppLabel122: TppLabel;
    ppDBCalc39: TppDBCalc;
    ppSummaryBand6: TppSummaryBand;
    ppLine66: TppLine;
    ppLabel110: TppLabel;
    ppDBCalc40: TppDBCalc;
    ppDBCalc41: TppDBCalc;
    ppDBCalc42: TppDBCalc;
    ppLine67: TppLine;
    qRelOrdem: TSQLQuery;
    cdsRelOrdem: TClientDataSet;
    dspRelOrdem: TDataSetProvider;
    cdsRelOrdemPED_CODIGO: TStringField;
    cdsRelOrdemPED_CONTATO_CLIENTE: TStringField;
    qRelOrdemPED_CODIGO: TStringField;
    qRelOrdemPED_CONTATO_CLIENTE: TStringField;
    frxDBRelOrdem: TfrxDBDataset;
    frxRelOrdem: TfrxReport;
    qRelOrdemPRF_PRDDESCRI: TStringField;
    cdsRelOrdemPRF_PRDDESCRI: TStringField;
    PanelAguarde: TPanel;
    JvGIFAnimator1: TJvGIFAnimator;
    pinfo: TPanel;
    sqlOrcMes: TSQLQuery;
    dspOrcMes: TDataSetProvider;
    cdsOrcMes: TClientDataSet;
    dsOrcMes: TDataSource;
    frxDBdsOrcMes: TfrxDBDataset;
    cdsOrcMesREP_RAZAO: TStringField;
    cdsOrcMesANO: TSmallintField;
    cdsOrcMesMES: TStringField;
    cdsOrcMesQTDEORCADO: TIntegerField;
    cdsOrcMesORCADO: TFMTBCDField;
    cdsOrcMesQTDEFATURADO: TLargeintField;
    cdsOrcMesFATURADO: TFMTBCDField;
    frxOrcMes: TfrxReport;
    ppLabel113: TppLabel;
    ppDBText102: TppDBText;
    ppDBText53: TppDBText;
    ppDBRel05ppField23: TppField;
    qRel05: TFDQuery;
    qRel05PED_CODIGO: TStringField;
    qRel05OPV_CODIGO: TIntegerField;
    qRel05OPV_DESCRICAO: TStringField;
    qRel05PED_DTENTRADA: TSQLTimeStampField;
    qRel05PED_DTSAIDA: TSQLTimeStampField;
    qRel05PED_SITUACAO: TStringField;
    qRel05PED_VLTOTAL_LIQ: TFMTBCDField;
    qRel05PED_VLTOTAL_BRUTO: TFMTBCDField;
    qRel05PED_VLFATURADO: TFMTBCDField;
    qRel05CLI_CODIGO: TStringField;
    qRel05CLI_RAZAO: TStringField;
    qRel05NF_NOTANUMBER: TStringField;
    qRel05NF_EMISSAO: TDateField;
    qRel05NF_TOT_NOTA: TFMTBCDField;
    qRel05PED_STATUS_CC: TStringField;
    qRel05NF_NUM_NFE: TIntegerField;
    qRel05REP_CODIGO: TStringField;
    qRel05REP_RAZAO: TStringField;
    qRel05emp_codigo: TStringField;
    qRel05FPG_DESCRICAO: TStringField;
    qRel05PCL_NOME: TStringField;
    qRel05VLRFATURAR: TFMTBCDField;
    qRel05VALOR_A_FATURAR: TFMTBCDField;
    procedure BitOkClick(Sender: tObject);
    procedure BitConfigClick(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure FormShow(Sender: tObject);
    procedure EditFinalExit(Sender: tObject);
    procedure EditInicialExit(Sender: tObject);
    procedure EditDataIExit(Sender: tObject);
    procedure EditDataFExit(Sender: tObject);
    procedure LTBoxClick(Sender: tObject);
    procedure SqlCdsPedidoAfterScroll(DataSet: TDataSet);
    procedure MudaCorCampos(Sender: tObject);
    procedure ppHeaderBand1BeforePrint(Sender: tObject);
    procedure SqlCdsRel01CalcFields(DataSet: TDataSet);
    procedure EdtClieKeyPress(Sender: tObject; var Key: Char);
    procedure CbClienteEnter(Sender: tObject);
    procedure EdtClieEnter(Sender: tObject);
    procedure EdtClieExit(Sender: tObject);
    procedure CbClienteClick(Sender: tObject);
    procedure CbRepClick(Sender: tObject);
    procedure CbRepEnter(Sender: tObject);
    procedure EdtRepExit(Sender: tObject);
    procedure ppHeaderBand2BeforePrint(Sender: tObject);
    procedure EdtTipoExit(Sender: tObject);
    procedure CbTipoClick(Sender: tObject);
    procedure SqlCdsRel02CalcFields(DataSet: TDataSet);
    procedure Edt_TipoExit(Sender: tObject);
    procedure Cb_TipoClick(Sender: tObject);
    procedure Cb_TipoExit(Sender: tObject);
    procedure EdProjetoObraCodigoExit(Sender: tObject);
    procedure CbProjetoObraChange(Sender: tObject);
    procedure CbProjetoObraExit(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure cbTranspClick(Sender: TObject);
    procedure cbTranspEnter(Sender: TObject);
    procedure cdsVendaSegCalcFields(DataSet: TDataSet);
    procedure PaginaGetText(Sender: TObject; var Text: string);
    procedure ppSystemVariable12GetText(Sender: TObject; var Text: string);
    procedure FormDestroy(Sender: TObject);
    procedure ppLabel86GetText(Sender: TObject; var Text: string);
    procedure ppLabel100GetText(Sender: TObject; var Text: string);
    procedure ppOrigemGetText(Sender: TObject; var Text: string);
    procedure frxRelOrdemGetValue(const VarName: string; var Value: Variant);
    procedure qRel05CalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    fListaEmpresas : TStringList;
    {campos}
    CampoEdit    :TEdit;
    CampoBox     :TComboBox;
    CampoData    :TjvDateEdit;
    wVariacoes   :String;
    PathNewRel   :String;
    wPagina      :Integer;
    wQTDE_ITENS,
    wPAG_TOTAL   :Integer;
    sPedido:String;

    wSql1,wSql2,wSql3,wSql4,
    wSeleciona,wOrdem : String;

    procedure ImprimirPedido;
    procedure Cabecalho2;

    procedure ImprimirMeiaPagina;
    procedure LayOut;
    procedure Cabecalho;

    Procedure ImprimiVendasSegmento;
    Function Imprimir_End_Entrega:Boolean;

    procedure ImprimirGastosFrete;
    procedure Rel_Contagem_Orcamentos;
    procedure ImprimirControleDeOrcamentosNoPeriodo;
  public
    { Public declarations }
  end;

var
  FormGImpPedido: TFormGImpPedido;

implementation

uses Uteis, DataCad, uPedido, InicioDB, ufrmpreviewrb;

{$R *.dfm}


procedure TFormGImpPedido.MudaCorCampos(Sender: tObject);
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
    {CampoData :TDateEdit}
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
end;

procedure TFormGImpPedido.BitOkClick(Sender: tObject);
begin
  try
    if (LTBox.ItemIndex = 0) then  //copia de pedido
       begin
         {Copia do Pedido}
           if sPedido = '' then
              begin
              uteis.erro  ('É preciso carregar na tela o Pedido inicial a imprimir.');
              exit;
           end;

           wSeleciona :=' where PED.PED_CODIGO >= '''+EditInicial.Text+'''and PED.PED_CODIGO <='''+EditFinal.Text+''' and PED.PED_SITUACAO <> ''C''';
           wOrdem     :=' PED.PED_CODIGO';
           wSql1 := ' Select  PED.PED_VLFRETE, PED.PED_CODIGO,PED.PED_DTENTRADA,PED.PED_DTSAIDA,PED.PED_EXPEDICAO,PED.PED_COMIS1,PED.PED_COMIS2,PED.PED_COMIS3,PED.PED_FRETE,'+
                    ' PED.PED_FRETE2, PED.PED_SITCRED,PED.PED_PRIORIDADE,PED.PED_TOTUPS,PED.PED_VLTUPS,PED.PED_DESCTONF,PED.PED_DESCTOPC1,PED.PED_DESCTOPC2,PED.PED_DESCTOVL,'+
                    ' PED.PED_VLTOTAL_LIQ,PED.PED_VLTOTAL_IPI,PED.PED_VLTOTAL_BRUTO,PED.PED_OBSERVACAO_NOTA as PED_OBSNOTA,PED.PED_OBSERVACAO as PED_OBSG1,PED.PED_OBSG2,PED.PED_OBSG3,'+
                    ' PED.PED_OBSG4,PED.PED_OBSG5,PED.PED_OBSG6,PED.PED_OBSG7,PED.CLI_CODIGO,coalesce(CLI.CLI_RAZAO,PED_ORS_CLIENTE ) CLI_RAZAO, CLI.CLI_FANTASIA, '+
                    ' CLI.CLI_ENDERE, CLI.CLI_BAIRRO,CLI.CLI_CIDADE,CLI.CLI_UF,CLI.CLI_CEP, CLI.CLI_PESSOA,CLI.CLI_CGC, '+
                    ' CLI.CLI_INSC,CLI.CLI_CONTATO,  coalesce(CLI.CLI_FONE,PED_ORS_FONE) CLI_FONE ,CLI.CLI_FAX,CLI.CLI_ENDENTR, CLI.CLI_CIDENTR,CLI.CLI_UFENTR,CLI.CLI_CEPENTR,CLI.CLI_ENDFAT,'+
                    ' CLI.CLI_CIDFAT,CLI.CLI_UFFAT,CLI.CLI_CEPFAT,CLI.CLI_EMAIL_ALTERNATIVO,PED.REP_CODIGO,REP.REP_NOME,PED.PCL_CODIGO,PCL.PCL_NOME,PED.TRP_CODIGO, '+
                    ' TRP.TRP_RAZAO,TRP.TRP_FONE,PED.TRP_REDESP,TRR.TRP_RAZAO,TRR.TRP_FONE,PED.OPV_CODIGO,OPV.OPV_DESCRICAO '+
                    ' from PED0000 PED LEFT JOIN CLI0000 CLI on PED.cli_codigo = CLI.cli_codigo LEFT JOIN REP0000 REP on PED.rep_codigo = REP.rep_codigo '+
                    ' LEFT JOIN PCL0000 PCL on PED.pcl_codigo = PCL.pcl_codigo LEFT JOIN TRP0000 TRP on PED.trp_codigo = TRP.trp_codigo '+
                    ' LEFT JOIN TRP0000 TRR ON PED.trp_redesp = TRR.trp_codigo LEFT JOIN OPV0000 OPV ON (OPV.OPV_CODIGO = PED.OPV_CODIGO) ';
           SqlCdsPedido.Close;
           SqlCdsPedido.sql.Clear;
           SqlCdsPedido.sql.Text := SQLDEF('PEDIDOS',wSql1,wSeleciona,wOrdem,'PED.');
           SqlCdsPedido.Open;

           if not SqlCdsPedido.IsEmpty then
              ImprimirPedido;

       end;

    if (LTBox.ItemIndex = 1) then    // romaneio do pedido
       begin
       {Pedido/Romaneio Meia Pagina}
           if sPedido = '' then
               begin
             uteis.erro  ('É preciso carregar na tela o Pedido inicial a imprimir.');
             exit;
            end;

           wSeleciona :=' where PED.PED_CODIGO >= '''+EditInicial.Text+'''and PED.PED_CODIGO <='''+EditFinal.Text+''' and PED.PED_SITUACAO <> ''C''';
           wOrdem     :=' PED.PED_CODIGO';
           wSql1 := 'Select PED.PED_VLFRETE,PED.PED_CODIGO,PED.PED_DTENTRADA,PED.PED_DTSAIDA,PED.PED_EXPEDICAO,PED.PED_COMIS1,PED.PED_COMIS2,PED.PED_COMIS3,PED.PED_FRETE,PED.PED_FRETE2,PED.PED_SITCRED,'+
                    ' PED.PED_PRIORIDADE,PED.PED_TOTUPS,PED.PED_VLTUPS, PED.PED_DESCTONF,PED.PED_DESCTOPC1,PED.PED_DESCTOPC2,PED.PED_DESCTOVL, PED.PED_OBSG4,PED.PED_OBSG5,'+
                    ' PED.PED_VLTOTAL_LIQ,PED.PED_VLTOTAL_IPI,PED.PED_VLTOTAL_BRUTO,PED.PED_OBSERVACAO_NOTA as PED_OBSNOTA,PED.PED_OBSERVACAO as PED_OBSG1,PED.PED_OBSG2,PED.PED_OBSG3,'+
                    ' PED.PED_OBSG6,PED.PED_OBSG7,PED.CLI_CODIGO, coalesce(CLI.CLI_RAZAO,PED_ORS_CLIENTE ) CLI_RAZAO, CLI.CLI_FANTASIA, '+
                    ' CLI.CLI_ENDERE,CLI.CLI_BAIRRO,CLI.CLI_CIDADE,CLI.CLI_UF,CLI.CLI_CEP, '+
                    ' CLI.CLI_PESSOA,CLI.CLI_CGC,CLI.CLI_INSC,CLI.CLI_CONTATO, coalesce(CLI.CLI_FONE,PED_ORS_FONE) CLI_FONE,CLI.CLI_FAX,CLI.CLI_ENDENTR, '+
                    ' CLI.CLI_CIDENTR,CLI.CLI_UFENTR,CLI.CLI_CEPENTR,CLI.CLI_ENDFAT,CLI.CLI_CIDFAT,CLI.CLI_UFFAT,CLI.CLI_CEPFAT, '+
                    ' CLI.CLI_EMAIL_ALTERNATIVO,PED.REP_CODIGO,REP.REP_NOME,PED.PCL_CODIGO,PCL.PCL_NOME,PED.TRP_CODIGO,'+
                    ' TRP.TRP_RAZAO,TRP.TRP_FONE,PED.TRP_REDESP,TRR.TRP_RAZAO,TRR.TRP_FONE,PED.OPV_CODIGO,OPV.OPV_DESCRICAO '+
                    ' from PED0000 PED LEFT JOIN CLI0000 CLI on PED.cli_codigo = CLI.cli_codigo '+
                    ' LEFT JOIN REP0000 REP on PED.rep_codigo = REP.rep_codigo '+
                    ' LEFT JOIN PCL0000 PCL on PED.pcl_codigo = PCL.pcl_codigo '+
                    ' LEFT JOIN TRP0000 TRP on PED.trp_codigo = TRP.trp_codigo '+
                    ' LEFT JOIN TRP0000 TRR ON PED.trp_redesp = TRR.trp_codigo '+
                    ' LEFT JOIN OPV0000 OPV ON (OPV.OPV_CODIGO = PED.OPV_CODIGO) ';
           SqlCdsPedido.Close;
           SqlCdsPedido.sql.Clear;
           SqlCdsPedido.sql.Text := SQLDEF('PEDIDOS',wSql1,wSeleciona,wOrdem,'PED.');
           SqlCdsPedido.Open;
           //
           if not SqlCdsPedido.IsEmpty then
              ImprimirMeiaPagina;
       end;

    // verifica se a data final é maior que a data inicial
    if EditDataI.Date > EditDataF.Date then
        begin
            uteis.erro  ('Data final não pode ser menor que a data inicial!');
            EditDataF.Setfocus;
            exit;
       end;

    {selecionar o filtro por Data de Entrada, Data de Saida e Data do Faturmento somente nos relatorio 1 e 2}
    if (LTBox.ItemIndex = 2) or (LTBox.ItemIndex = 3) then    { item 2  - relatório geral dos pedidos 3 - relatorio de pedidos por vendedores}
    begin

           if RadEntrada.checked  then
           begin
                  LBL_00_LTITULO2.Caption := 'Entrada de Pedidos - entre '+EditDataI.Text+' e '+EditDataF.Text;
                  LBL_01_LTITULO2.Caption := 'Entrada de Pedidos - entre '+EditDataI.Text+' e '+EditDataF.Text;
                  if (LTBox.ItemIndex = 2) then
                     wOrdem := ' ORDER BY P1.PED_DTENTRADA, coalesce(C1.CLI_RAZAO, PED_ORS_CLIENTE)';
                  if (LTBox.ItemIndex = 3) then
                     wOrdem := ' ORDER BY R1.REP_NOME,P1.PED_DTENTRADA, coalesce(C1.CLI_RAZAO, PED_ORS_CLIENTE)';
                  wSeleciona := ' WHERE P1.PED_DTENTRADA BETWEEN '''+DataAmericana(EditDataI.Text)+''' AND '''+DataAmericana(EditDataF.Text)+''' and P1.PED_SITUACAO NOT IN ( ''C'',''A'') ';
           end
           Else
           if RadEntrega.checked  then
           begin
                  LBL_00_LTITULO2.Caption := 'Entrega de Pedidos - entre '+EditDataI.Text+' e '+EditDataF.Text;
                  LBL_01_LTITULO2.Caption := 'Entrega de Pedidos - entre '+EditDataI.Text+' e '+EditDataF.Text;
                  if (LTBox.ItemIndex = 2) then
                     wOrdem := ' ORDER BY P1.PED_DTSAIDA, coalesce(C1.CLI_RAZAO, PED_ORS_CLIENTE)';
                  if (LTBox.ItemIndex = 3) then
                     wOrdem := ' ORDER BY R1.REP_NOME,P1.PED_DTSAIDA, coalesce(C1.CLI_RAZAO, PED_ORS_CLIENTE)';
                  wSeleciona := ' WHERE P1.PED_DTSAIDA BETWEEN '''+DataAmericana(EditDataI.Text)+''' AND '''+DataAmericana(EditDataF.Text)+''' and P1.PED_SITUACAO NOT IN ( ''C'',''A'') ';
           end
           Else
           if RadFaturamento.checked  then
           begin
                LBL_00_LTITULO2.Caption := 'Data do Faturamento - entre '+EditDataI.Text+' e '+EditDataF.Text;
                LBL_01_LTITULO2.Caption := 'Data do Faturamento - entre '+EditDataI.Text+' e '+EditDataF.Text;
                wOrdem := ' ORDER BY R1.REP_NOME,P1.PED_DTSAIDA, coalesce(C1.CLI_RAZAO, PED_ORS_CLIENTE)';
                wSeleciona := ' WHERE N1.NF_EMISSAO BETWEEN '''+DataAmericana(EditDataI.Text)+''' AND '''+DataAmericana(EditDataF.Text)+''' AND N1.NF_CANCELADA <> ''S'' AND N1.OPE_SEMVLCOM = ''N'' ' +
                ' and P1.PED_SITUACAO NOT IN ( ''C'',''A'') ';
           end;

           {filtros genéricos - geral / vend }
           {Selecionou um Representante}
           if EdtRep.Text <> '' then
              wSeleciona := wSeleciona + ' AND P1.REP_CODIGO = '''+EdtRep.Text+'''';
           {Selecionou um Tipo}
           if EdtTipo.Text <> '' then
           begin
               wSeleciona := wSeleciona + ' AND P1.OPV_CODIGO = '''+EdtTipo.Text+'''';
               LBL_00_LTITULO2.Caption := LBL_00_LTITULO2.Caption + ' Tipo: '+StrZero(EdtTipo.Text,EdtTipo.MaxLength)+' - '+CbTipo.Text;
               LBL_01_LTITULO2.Caption := LBL_01_LTITULO2.Caption + ' Tipo: '+StrZero(EdtTipo.Text,EdtTipo.MaxLength)+' - '+CbTipo.Text;               
           end;
           {Selecionou um C.Custo}
           if EdProjetoObraCodigo.Text <> '' then
           begin
              wSeleciona := wSeleciona + ' AND P1.PCX_CODIGO = '''+EdProjetoObraCodigo.Text+'''';
              LBL_00_LTITULO2.Caption := LBL_00_LTITULO2.Caption+   ' C.CUSTO:'+EdProjetoObraCodigo.Text+' - '+CbProjetoObra.Text;
              LBL_01_LTITULO2.Caption := LBL_01_LTITULO2.Caption+   ' C.CUSTO:'+EdProjetoObraCodigo.Text+' - '+CbProjetoObra.Text;
           end;

           if LTBox.ItemIndex = 2 then
           begin
                  LBL_00_LTITULO1.Caption := 'RELATÓRIO GERAL DE PEDIDOS';
                  {Selecionou um cliente}
                  if EdtClie.Text <> '' then
                     wSeleciona := wSeleciona + ' AND P1.CLI_CODIGO = '''+EdtClie.Text+'''';
           end
           else //if LTBox.ItemIndex = 3 then
           begin
                  // pela data de faturamento o WHERE pela data da Nota
                  LBL_01_LTITULO1.Caption := 'RELATÓRIO DE PEDIDOS POR VENDEDORES';
           end;
           {Verifica o compartilhamento se exclusivo}
           if not chkMultiempresa.Checked and (share('PEDIDOS') = 'E') then
              wSeleciona := wSeleciona + ' AND P1.EMP_CODIGO = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO)
          Else
             wSeleciona := wSeleciona + ' AND P1.EMP_CODIGO in ('+fListaEmpresas.commatext+') ';
    end;

    if (LTBox.ItemIndex = 2) then
       begin
           screen.cursor := crHourGlass;
           try
             wSql1 := 'Select p1.EMP_CODIGO, P1.ped_codigo, P1.ped_dtentrada,P1.ped_dtsaida,P1.ped_vltotal_bruto,P1.ped_vltotal_liq,P1.cli_codigo, '+
                      ' (SELECT SUM(P2.PRF_QTDE) FROM PED_IT01 P2 WHERE P1.PED_CODIGO = P2.ped_codigo and P1.EMP_CODIGO = P2.EMP_CODIGO ) AS WQTDE, '+
                      ' coalesce(C1.CLI_RAZAO, PED_ORS_CLIENTE) CLI_RAZAO,  C1.CLI_UF,P1.rep_codigo,R1.rep_NOME  ';
             wSql2 := 'FROM PED0000 P1 ';
             wSql3 := 'LEFT JOIN cli0000 C1 ON P1.CLI_CODIGO = C1.cli_codigo LEFT JOIN REP0000 R1 ON P1.REP_CODIGO = R1.REP_CODIGO ';

             cdsRel1.Close;
             sqlcdsrel01.SQL.Clear;
             SqlCdsRel01.sql.Text := wSql1+wSql2+wSql3+wSeleciona+ wOrdem;
            cdsRel1.Open;
             if cdsRel1.IsEmpty then
               GeraException('Não foi encontrado informações');

             if RadVideo.Checked then
                begin
                    ppRRel01.DeviceType := 'Screen';
                end else
             if RadImpressora.Checked then
                begin
                    ppRRel01.ShowPrintDialog := true;
                    ppRRel01.DeviceType := 'Printer';
                end;

             RBuilderPreview(ppRRel01);
             CbCliente.ItemIndex := 0;
             cdsRel1.close;
           except on E:EDataBaseError do
                uteis.erro  (pchar('Erro ao gerar relatorio '+e.message));
           end;
           screen.Cursor := crdefault;
       end;
    {relatorio}
    if LTBox.ItemIndex = 3 then
       begin
           screen.cursor := crHourGlass;
           try
            {
             if SqlCdsParamPMT_TUPPEDIDO.AsString = 'S' then
                begin
                    ppLblTups.Visible := TRUE;
                    ppDBTups.Visible  := TRUE;
                end
             else
                begin
                    ppLblTups.Visible := FALSE;
                    ppDBTups.Visible  := FALSE;
                end;
              }
             if (RadEntrada.checked ) or (RadEntrega.checked ) then
                begin
                    wSql1 := ' SELECT P1.EMP_CODIGO,P1.PED_DTSAIDA,P1.PED_DTENTRADA,P1.CLI_CODIGO,P1.PED_COMIS1,coalesce(C1.CLI_RAZAO, PED_ORS_CLIENTE) AS CLI_RAZAO ,C1.CLI_UF,R1.REP_NOME, '+
                             ' P1.REP_CODIGO,P1.PED_CODIGO,P1.PED_DESCTOVL,P1.PED_TOTUPS,P1.PED_VLTUPS,sum(N1.NF_TOT_NOTA) AS WVALOR_FATURADO,';
                    wSql2 := '(P1.PED_VLTOTAL_LIQ-P1.PED_DESCTOVL) AS WVALOR_PEDIDO_LIQUIDO,SUM(N1.NF_TOT_PROD-N1.NF_VL_DESCTO) AS WVALOR_FATURADO_LIQUIDO,SUM(N1.NF_TOT_NOTA)AS WVALOR_FATURADO_IPI FROM PED0000 P1 LEFT JOIN CLI0000 C1 ON (P1.CLI_CODIGO = C1.CLI_CODIGO)  ';
                    wSql3 := 'LEFT JOIN REP0000 R1 ON (P1.REP_CODIGO = R1.REP_CODIGO) LEFT JOIN NF0001 N1 ON (N1.PED_CODIGO = P1.PED_CODIGO) AND (N1.NF_EMISSAO BETWEEN '''+DataAmericana(EditDataI.Text)+''' AND '''+DataAmericana(EditDataF.Text)+''') AND (N1.NF_CANCELADA = ''N'') AND (N1.OPE_SEMVLCOM = ''N'') AND (P1.EMP_CODIGO = N1.EMP_CODIGO) ';
                    wSql4 := 'GROUP BY 1,2,3,4,5,6 ,C1.CLI_UF,R1.REP_NOME,P1.REP_CODIGO,P1.PED_CODIGO,P1.PED_DESCTOVL,P1.PED_TOTUPS,P1.PED_VLTUPS,P1.PED_VLTOTAL_LIQ ';
                end;
             if (RadFaturamento.checked ) then
                begin
                    wSql1 := 'SELECT P1.EMP_CODIGO,P1.PED_DTSAIDA,P1.PED_DTENTRADA,P1.CLI_CODIGO,P1.PED_COMIS1,coalesce(C1.CLI_RAZAO, PED_ORS_CLIENTE) AS CLI_RAZAO ,C1.CLI_UF,R1.REP_NOME, '+
                             ' P1.REP_CODIGO,P1.PED_CODIGO,P1.PED_DESCTOVL,P1.PED_TOTUPS,P1.PED_VLTUPS,SUM(N1.NF_TOT_NOTA) AS WVALOR_FATURADO,';
                    wSql2 := '(P1.PED_VLTOTAL_LIQ-P1.PED_DESCTOVL) AS WVALOR_PEDIDO_LIQUIDO,SUM(N1.NF_TOT_PROD-N1.NF_VL_DESCTO) AS WVALOR_FATURADO_LIQUIDO,SUM(N1.NF_TOT_NOTA) AS WVALOR_FATURADO_IPI FROM NF0001 N1 ';
                    wSql3 := 'JOIN PED0000 P1 ON (P1.PED_CODIGO = N1.PED_CODIGO) AND (N1.EMP_CODIGO =P1.EMP_CODIGO) LEFT JOIN CLI0000 C1 ON P1.CLI_CODIGO = C1.CLI_CODIGO LEFT JOIN REP0000 R1 ON (P1.REP_CODIGO = R1.REP_CODIGO) ';
                    wSql4 := 'GROUP BY 1,2,3,4,5,6 ,C1.CLI_UF,R1.REP_NOME,P1.REP_CODIGO,P1.PED_CODIGO,P1.PED_DESCTOVL,P1.PED_TOTUPS,P1.PED_VLTUPS,P1.PED_VLTOTAL_LIQ ';
                end;
             CdsRel2.Close;
             SqlCdsRel02.SQL.Text := wSql1+wSql2+wSql3+wSeleciona+wSql4+ wOrdem ;
             cdsRel2.Open;
             if cdsRel2.IsEmpty then
              GeraException('Não foi encontrado informações');
             if RadVideo.Checked then
                begin
                    ppRRel02.DeviceType := 'Screen';
                end else
             if RadImpressora.Checked then
                begin
                    ppRRel02.ShowPrintDialog := true;
                    ppRRel02.DeviceType := 'Printer';
                end;

           RBuilderPreview(ppRRel02);
             //CbRep.ItemIndex := 0;
           except on E:EDataBaseError do
                uteis.erro  (pchar('Erro ao gerar relatorio '+e.message));
           end;
           screen.Cursor := crdefault;
       end;
    //**** quinto relatório; pedido fat./Expedição ****//
    if LTBox.ItemIndex = 4 then
       begin
           screen.cursor := crHourGlass;
           wSql1      := 'SELECT N1.emp_codigo, N1.NF_NOTANUMBER,N1.NF_EMISSAO,N1.NF_SAIDA,N1.NF_TOT_NOTA,N1.CLI_CODIGO,C1.CLI_RAZAO,C1.CLI_CIDADE,c1.CLI_BAIRRO, '+
                         ' C1.CLI_UF,N1.PED_CODIGO,P1.TRP_CODIGO,T1.TRP_RAZAO FROM NF0001 N1 ';
           wSql2      := 'LEFT JOIN CLI0000 C1 ON (N1.CLI_CODIGO = C1.CLI_CODIGO) LEFT JOIN PED0000 P1 ON (N1.PED_CODIGO = P1.PED_CODIGO) AND (N1.EMP_CODIGO = P1.EMP_CODIGO) ';
           wSql3      := 'LEFT JOIN TRP0000 T1 ON (T1.TRP_CODIGO = P1.TRP_CODIGO) ';
           wSeleciona := 'WHERE N1.NF_EMISSAO BETWEEN '''+DataAmericana(EditDataI.Text)+''' AND '''+DataAmericana(EditDataF.Text)+''' AND N1.OPE_SEMVLCOM = ''N'' AND N1.NF_CANCELADA = ''N'' AND N1.NF_ENTR_SAID = ''S'' ';
           wOrdem     := 'N1.NF_NOTANUMBER,N1.NF_EMISSAO ';
           try
             CdsRel3.Close;
             SqlCdsRel03.SQL.Clear;
             if chkMultiempresa.Checked then
             begin
               wSeleciona := wSeleciona + ' AND n1.emp_codigo in ('+fListaEmpresas.commatext+')';
               SqlCdsRel03.sql.Text := wSql1+wSql2+wSql3+wSeleciona+ 'order by '+ wOrdem
             end
             else
               SqlCdsRel03.sql.Text := SQLDEF('PEDIDOS',wSql1+wSql2+wSql3,wSeleciona,wOrdem,'N1.');
             CdsRel3.Open;
             if cdsRel3.IsEmpty then
              GeraException('Não foi encontrado informações');
             LBL_03_EMPRESA.Caption  := dbinicio.empresa.razao;
             LBL_03_LTITULO1.Caption := 'PEDIDO FATURADOS - CONTROLE PARA EXPEDIÇÃO';
             LBL_03_LTITULO2.Caption := 'Período: '+EditDataI.Text+' até '+EditDataF.Text;
           except on E:EDataBaseError do
             uteis.erro  (pchar('Erro ao gerar relatório ! '+e.Message));
           end;
           if RadVideo.Checked then
              begin
                  ppRRel03.DeviceType := 'Screen';
              end else
           if RadImpressora.Checked then
              begin
                  ppRRel03.ShowPrintDialog := true;
                  ppRRel03.DeviceType := 'Printer';
              end;

           RBuilderPreview(ppRRel03);
           screen.Cursor := crDefault;
       end;
    //**** sexto relatório;pedido fat./Expedição com detalhes (itens) ****//
    if (LTBox.ItemIndex = 5) then
       begin
           screen.cursor := crHourGlass;
           wSql1      := 'SELECT P1.EMP_CODIGO, N1.NF_NOTANUMBER,N1.NF_EMISSAO,N1.NF_SAIDA,N1.NF_TOT_NOTA,N1.CLI_CODIGO,C1.CLI_RAZAO,C1.CLI_CIDADE,C1.CLI_UF, c1.CLI_BAIRRO, N1.PED_CODIGO, '+
                         ' P1.TRP_CODIGO,T1.TRP_RAZAO FROM NF0001 N1 ';
           wSql2      := 'LEFT JOIN CLI0000 C1 ON (N1.CLI_CODIGO = C1.CLI_CODIGO) LEFT JOIN PED0000 P1 ON (N1.PED_CODIGO = P1.PED_CODIGO) AND (N1.EMP_CODIGO = P1.EMP_CODIGO) ';
           wSql3      := 'LEFT JOIN TRP0000 T1 ON (T1.TRP_CODIGO = P1.TRP_CODIGO) ';

           wSeleciona := 'WHERE N1.NF_EMISSAO BETWEEN '''+DataAmericana(EditDataI.Text)+''' AND '''+DataAmericana(EditDataF.Text)+''' AND N1.OPE_SEMVLCOM = ''N'' AND N1.NF_CANCELADA = ''N'' AND N1.NF_ENTR_SAID = ''S'' ';
           wOrdem     := 'N1.NF_NOTANUMBER,N1.NF_EMISSAO ';
           try
             CdsRel4.Close;
             SqlCdsRel04.SQL.Clear;
             if chkMultiempresa.Checked then
             begin
               wSeleciona := wSeleciona + ' AND P1.emp_codigo in ('+fListaEmpresas.commatext+') ';
               SqlCdsRel04.sql.Text := wSql1+wSql2+wSql3+wSeleciona+ 'order by '+ wOrdem
             end
             else
               SqlCdsRel04.sql.Text := SQLDEF('PEDIDOS',wSql1+wSql2+wSql3,wSeleciona,wOrdem,'N1.');
             CdsRel4.Open;
             if cdsRel4.IsEmpty then
              GeraException('Não foi encontrado informações');
             wSql1      := 'SELECT N1.EMP_CODIGO, N2.NF_IT_NOTANUMER,N2.PRD_REFER,N2.PRD_DESCRI,N2.NF_QTDE,N2.NF_PRECO,N1.NF_EMISSAO FROM NF_IT01 N2 ';
             wSql2      := 'JOIN NF0001 N1 ON (N1.NF_NOTANUMBER = N2.NF_IT_NOTANUMER AND N2.EMP_CODIGO = N1.EMP_CODIGO) AND (N1.PED_CODIGO = N2.PED_CODIGO) ';

             wOrdem     := 'N1.NF_EMISSAO,N2.NF_IT_NOTANUMER,N2.PRD_DESCRI';
             cdsRel41.Close;
             SqlCdsRel041.SQL.Clear;
             if chkMultiempresa.Checked then
             begin
              wSeleciona := 'WHERE N1.NF_EMISSAO BETWEEN '''+DataAmericana(EditDataI.Text)+''' AND '''+DataAmericana(EditDataF.Text)+''' AND N1.OPE_SEMVLCOM = ''N'' AND N1.NF_CANCELADA = ''N'' AND N1.NF_ENTR_SAID = ''S'' ';
               wSeleciona := wSeleciona + ' AND n1.emp_codigo in ('+fListaEmpresas.commatext+') ';
               SqlCdsRel041.SQL.Text := wSql1+wSql2+wSeleciona+ 'order by '+ wOrdem
             end
             else
               SqlCdsRel041.SQL.Text := SQLDEF('PEDIDOS',wSql1+wSql2,wSeleciona,wOrdem,'N1.');
             cdsRel41.Open;
             LBL_04_EMPRESA.Caption  := dbinicio.EMPRESA.RAZAO;
             LBL_04_LTITULO1.Caption := 'PEDIDO FATURADOS - CONTROLE PARA EXPEDIÇÃO (DETALHADO)';
             LBL_04_LTITULO2.Caption := 'Período: '+EditDataI.Text+' até '+EditDataF.Text;
           except on E:EDataBaseError do
             uteis.erro  (pchar('Erro ao gerar relatório ! '+e.Message));
           end;
           if RadVideo.Checked then
              begin
                  ppRRel04.DeviceType := 'Screen';
              end else
           if RadImpressora.Checked then
              begin
                  ppRRel04.ShowPrintDialog := true;
                  ppRRel04.DeviceType := 'Printer';
              end;

           RBuilderPreview(ppRRel04);
           screen.Cursor := crDefault;
       end
    Else
     //Relatório de Pedidos à Faturar/Faturados
    if (LTBox.ItemIndex in [6, 9,11]) then
    begin
           Screen.Cursor := crHourGlass;
           wSeleciona := '';
           wOrdem     := '';
           //wSql1 := 'Select P1.PED_CODIGO,P1.OPV_CODIGO,O1.OPV_DESCRICAO,P1.PED_DTENTRADA,P1.PED_DTSAIDA,P1.PED_SITUACAO,P1.PED_VLTOTAL_LIQ,P1.PED_VLTOTAL_BRUTO,P1.PED_VLFATURADO,P1.CLI_CODIGO,C1.CLI_RAZAO,F1.FAT_CODIGO,F1.FAT_DTEMIS,F1.FAT_VLFAT FROM PED0000 P1 ';
           //wSql2 := 'LEFT JOIN CLI0000 C1 ON (P1.CLI_CODIGO = C1.CLI_CODIGO) LEFT JOIN FAT0000 F1 ON (P1.PED_CODIGO = F1.PED_CODIGO) AND (P1.EMP_CODIGO = F1.EMP_CODIGO) LEFT JOIN OPV0000 O1 ON (P1.OPV_CODIGO = O1.OPV_CODIGO) ';

           wSql1 := 'SELECT pcl.PCL_NOME, p1.emp_codigo, P1.REP_CODIGO,RE.REP_RAZAO, P1.PED_CODIGO,P1.OPV_CODIGO,O1.OPV_DESCRICAO,P1.PED_DTENTRADA,P1.PED_DTSAIDA,P1.PED_SITUACAO,P1.CLI_CODIGO, '+
                    ' coalesce(C1.CLI_RAZAO, PED_ORS_CLIENTE) AS CLI_RAZAO, '+
                    '(SELECT first 1 F1.NF_NOTANUMBER  FROM nf0001 F1 WHERE (F1.PED_CODIGO = P1.PED_CODIGO AND F1.EMP_CODIGO = P1.EMP_CODIGO)) AS NF_NOTANUMBER, '+
                    '(SELECT first 1 F1.NF_EMISSAO  FROM nf0001 F1 WHERE (F1.PED_CODIGO = P1.PED_CODIGO AND F1.EMP_CODIGO = P1.EMP_CODIGO)) AS NF_EMISSAO,'+
                    '(SELECT first 1 F1.NF_NUM_NFE  FROM nf0001 F1 WHERE (F1.PED_CODIGO = P1.PED_CODIGO AND F1.EMP_CODIGO = P1.EMP_CODIGO)) AS NF_NUM_NFE,'+
                    '(SELECT SUM(F1.NF_TOT_NOTA)  FROM nf0001 F1 WHERE (F1.PED_CODIGO = P1.PED_CODIGO AND F1.EMP_CODIGO = P1.EMP_CODIGO)) AS NF_TOT_NOTA,'+
                    ' COALESCE(P1.PED_VLTOTAL_BRUTO - P1.PED_VLFATURADO, 0) AS VLRFATURAR, ' +
                    ' COALESCE(P1.PED_VLTOTAL_BRUTO - P1.PED_VLFATURADO, 0) AS VALOR_A_FATURAR, ' +
                    'COALESCE(P1.PED_VLTOTAL_LIQ,0) AS PED_VLTOTAL_LIQ, ';
           wSql2 := 'COALESCE(P1.PED_VLTOTAL_BRUTO,0) AS PED_VLTOTAL_BRUTO,COALESCE(P1.PED_VLFATURADO,0) AS PED_VLFATURADO, FP.FPG_DESCRICAO FROM PED0000 P1   '+
                    ' LEFT JOIN CLI0000 C1 ON (P1.CLI_CODIGO = C1.CLI_CODIGO) ';
           wSql3 := ' LEFT JOIN OPV0000 O1 ON (P1.OPV_CODIGO = O1.OPV_CODIGO) '+
                    ' LEFT JOIN REP0000 RE ON (RE.REP_CODIGO = P1.REP_CODIGO ) '+
                    ' LEFT JOIN PCL0000 pcl ON (pcl.PCL_CODIGO = p1.PCL_CODIGO) ' +
                    ' LEFT JOIN FORMA_PAGAMENTO FP ON (FP.FPG_REGISTRO = P1.FPG_REGISTRO) ';
           //


           if (RadEntrada.checked ) then
           begin
                  LBL_05_TITULO02.Caption := 'Data de Entrada: '+EditDataI.Text+' até '+ EditDataF.Text;

             wSeleciona := ' WHERE P1.PED_DTENTRADA between '''+DataAmericana(EditDataI.Text)+''' and '''+DataAmericana(EditDataF.Text)+''' and P1.PED_SITUACAO <> ''C''';

             if  (LTBox.ItemIndex = 9) OR (LTBox.ItemIndex = 11)then
               wOrdem     := ' P1.REP_CODIGO,P1.PED_DTENTRADA '
             else
             if  (LTBox.ItemIndex = 6)  then
               wOrdem     := ' P1.OPV_CODIGO, CLI_RAZAO, P1.PED_DTENTRADA '
             else
               wOrdem     := ' P1.OPV_CODIGO,P1.PED_DTENTRADA ';
           end
           else
           if (RadEntrega.checked ) then
           begin
             LBL_05_TITULO02.Caption := 'Data de Entrega: '+EditDataI.Text+' até '+ EditDataF.Text;
             wSeleciona := ' WHERE P1.PED_DTSAIDA between '''+DataAmericana(EditDataI.Text)+''' and '''+DataAmericana(EditDataF.Text)+''' and P1.PED_SITUACAO <> ''C''';

             if  (LTBox.ItemIndex = 9) OR (LTBox.ItemIndex = 11) then
               wOrdem     := ' P1.REP_CODIGO,P1.PED_DTSAIDA '
             else
             if  (LTBox.ItemIndex = 6)  then
               wOrdem     := ' P1.OPV_CODIGO, CLI_RAZAO, P1.PED_DTSAIDA '
             else
               wOrdem     := ' P1.OPV_CODIGO,P1.PED_DTSAIDA ';

           end
           else
           if (RadFaturamento.checked ) then
           begin
               wSql1 := 'SELECT pcl.PCL_NOME, p1.emp_codigo, P1.REP_CODIGO,vE.REP_RAZAO, P1.PED_CODIGO,P1.OPV_CODIGO,O1.OPV_DESCRICAO,P1.PED_DTENTRADA,P1.PED_DTSAIDA,P1.PED_SITUACAO,P1.CLI_CODIGO,'+
                  ' coalesce(C1.CLI_RAZAO, PED_ORS_CLIENTE) AS CLI_RAZAO ,'+
                  ' F1.NF_NOTANUMBER, '+
                  ' F1.NF_EMISSAO,'+
                  ' F1.NF_NUM_NFE,'+
                  ' F1.NF_TOT_NOTA,'+
                  ' COALESCE(P1.PED_VLTOTAL_BRUTO - P1.PED_VLFATURADO, 0) AS VLRFATURAR, ' +
                  'COALESCE(P1.PED_VLTOTAL_LIQ,0) AS PED_VLTOTAL_LIQ, ';
              wSql2 := 'COALESCE(P1.PED_VLTOTAL_BRUTO,0) AS PED_VLTOTAL_BRUTO,COALESCE(P1.PED_VLFATURADO,0) AS PED_VLFATURADO, FP.FPG_DESCRICAO '+
                       'FROM PED0000 P1 '+
                       ' join nf0001 F1 on F1.PED_CODIGO = P1.PED_CODIGO AND f1.EMP_CODIGO = p1.EMP_CODIGO AND NF_STATUS_NFE  NOT IN (''C'',''R'')'+
                       ' LEFT JOIN CLI0000 C1 ON (P1.CLI_CODIGO = C1.CLI_CODIGO) '+
                       ' LEFT JOIN REP0000 VE ON (VE.REP_CODIGO = P1.REP_CODIGO ) '
                       ;

              LBL_05_TITULO02.Caption := 'Data de Faturamento: '+EditDataI.Text+' até '+ EditDataF.Text;
              wSeleciona := ' WHERE F1.NF_EMISSAO between '''+DataAmericana(EditDataI.Text)+''' and '''+DataAmericana(EditDataF.Text)+''' and P1.PED_SITUACAO <> ''C''';

              if  (LTBox.ItemIndex = 9) OR (LTBox.ItemIndex = 11) then
                wOrdem     := ' P1.REP_CODIGO,F1.NF_EMISSAO '
              else
              if  (LTBox.ItemIndex = 6)  then
                wOrdem     := ' P1.OPV_CODIGO, CLI_RAZAO, F1.NF_EMISSAO '
              else
                wOrdem     := ' P1.OPV_CODIGO,F1.NF_EMISSAO ';
           end;

           {Verifica o compartilhamento se exclusivo}
           if not chkMultiempresa.Checked and (share('PEDIDOS') = 'E') then
              wSeleciona := wSeleciona + ' AND P1.EMP_CODIGO = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO)
           Else
             wSeleciona := wSeleciona + ' AND P1.EMP_CODIGO in ('+fListaEmpresas.commatext+') ';

          {Selecionou um Representante}
           if EdtRep.Text <> '' then
           begin
             wSeleciona := wSeleciona + ' AND P1.REP_CODIGO = '''+EdtRep.Text+'''';
             LBL_05_TITULO02.Caption :=  LBL_05_TITULO02.Caption +  '. Vendedor : '+ CbRep.Text;
           end;

          {Selecionou um Cliente}
           if EdtClie.Text <> '' then
           begin
             wSeleciona := wSeleciona + ' AND P1.CLI_CODIGO = '''+EdtClie.Text+'''';
             LBL_05_TITULO02.Caption :=  LBL_05_TITULO02.Caption +  '. Cliente : '+ cbCliente.Text;
           end
           else
           begin
             LBL_05_TITULO02.Caption :=  LBL_05_TITULO02.Caption +  '. Cliente : Todos';
           end;


           if (Edt_Tipo.Text <> '999') then
                  wSeleciona := wSeleciona + ' AND P1.OPV_CODIGO = '''+Edt_Tipo.Text+'''';
           if (Rad_Faturado.Checked) then
                  wSeleciona := wSeleciona + ' AND ((P1.PED_SITUACAO = ''T'') OR (P1.PED_SITUACAO = ''P''))';
           if (Rad_Faturar.Checked) then
                  wSeleciona := wSeleciona + ' AND ((P1.PED_SITUACAO = ''F'') OR (P1.PED_SITUACAO = ''P''))';
           try
             qRel05.Close;
             qRel05.SQL.Clear;
             if chkMultiempresa.Checked then
                 wSeleciona := wSeleciona + ' AND p1.emp_codigo in ('+fListaEmpresas.commatext+')';
             qRel05.SQL.Text := wSql1+wSql2+wSql3+wSeleciona +IIF(wOrdem   <>'',' ORDER BY '+wordem,'');
             if dbInicio.IsDesenvolvimento then
              copytoClipboard(qRel05.SQL.Text);
             qRel05.Open;
             // CdsRel5.Open;
             ppDBRel05.AutocreateFields := True;
             if qRel05.IsEmpty then
              GeraException('Não foi encontrado informações');
             LBL_05_EMPRESA.Caption  := DBINICIO.EMPRESA.RAZAO;
             if (Rad_Todos.Checked) then
                LBL_05_TITULO01.Caption := 'RELATÓRIO DE PEDIDO À FATURAR / FATURADOS';
             if (Rad_Faturar.Checked) then
                LBL_05_TITULO01.Caption := 'RELATÓRIO DE PEDIDO À FATURAR';
             if (Rad_Faturado.Checked) then
                LBL_05_TITULO01.Caption := 'RELATÓRIO DE PEDIDO FATURADOS';
             //
             if RadVideo.Checked then
                begin
                    ppRRel05.DeviceType := 'Screen';
                end else
             if RadImpressora.Checked then
                begin
                    ppRRel05.ShowPrintDialog := true;
                    ppRRel05.DeviceType := 'Printer';
                end;
             if (LTBox.ItemIndex = 6) then
                RBuilderPreview(ppRRel05)
             else if  (LTBox.ItemIndex = 9) then
             begin
               LBL_09_TITULO02.Caption := LBL_05_TITULO02.Caption;
               LBL_09_TITULO01.Caption := LBL_05_TITULO01.Caption + ' por vendedor';
               LBL_09_EMPRESA.Caption := LBL_05_EMPRESA.Caption;
               RBuilderPreview(ppRRel09);
             end
             else if  (LTBox.ItemIndex = 11) then
             begin
               LBL_11_TITULO02.Caption := LBL_05_TITULO02.Caption;
               LBL_11_TITULO01.Caption := 'Pedidos com forma de pagamento';
               LBL_11_EMPRESA.Caption := LBL_05_EMPRESA.Caption;
               RBuilderPreview(ppRRel11);
             end;

             Screen.Cursor := crDefault;
           except on E:EDataBaseError do
              uteis.erro  (pchar('Erro ao gerar o relatorio ! '+e.message));
           end;

    end
    else
    if (LTBox.ItemIndex = 7) then
      {venda por segmento de produto}
       ImprimiVendasSegmento
     else
     if (LTBox.ItemIndex = 8) then
       ImprimirGastosFrete
     else if LTBox.ItemIndex = 10 then
       Rel_Contagem_Orcamentos
     else if LTBox.ItemIndex = 12 then
     begin
        cdsRelOrdem.DisableControls;
        try
          cdsRelOrdem.Close;
          qRelOrdem.SQL.Clear;
          qRelOrdem.SQL.Text := 'SELECT IT.PED_CODIGO, IT.PRF_PRDDESCRI, PED.PED_CONTATO_CLIENTE FROM PED_IT01 IT '+
          'JOIN PED0000 PED ON (IT.PED_CODIGO = PED.PED_CODIGO AND  IT.EMP_CODIGO = PED.EMP_CODIGO) LEFT JOIN PRD0000 PRD ON (IT.PRD_REFER = PRD.PRD_REFER) WHERE PRD.PRD_PRODSERV = ''S'''+
          ' AND PED.PED_DTENTRADA BETWEEN '+(DateToSQL(EditDataI.Date))+' AND '+(DateToSQL(EditDataF.Date));


          if (Rad_Faturado.Checked) then
            qRelOrdem.SQL.Text := qRelOrdem.SQL.Text + ' AND ((Ped.PED_SITUACAO = ''T'') OR (Ped.PED_SITUACAO = ''P''))';
          if (Rad_Faturar.Checked) then
            qRelOrdem.SQL.Text := qRelOrdem.SQL.Text + ' AND ((Ped.PED_SITUACAO = ''F'') OR (Ped.PED_SITUACAO = ''P''))';

          cdsRelOrdem.Open;
        finally
         cdsRelOrdem.EnableControls;
        end;
        TfrxPictureView(frxRelOrdem.FindObject('LogoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);

        frxRelOrdem.ShowReport(true);
     end
     else
     if (LTBox.ItemIndex = 13) then
       ImprimirControleDeOrcamentosNoPeriodo;
  finally
    screen.Cursor := crDefault;
  end;
end;

procedure TFormGImpPedido.Cabecalho;
begin
  if LTBox.ItemIndex = 0 then     // PEDIDO
  begin
    Inc(wPagina);
    RDprintPedidos.ImpF(1,1   ,'-----------------------------------------------------------------------------------------------------------------------------------------',[comp17]);
    RDprintPedidos.ImpF(2,2   ,DBINICIO.EMPRESA.RAZAO,[Expandido]);
    RDprintPedidos.ImpF(2,117 ,'Pagina Nº: '+StrZero(IntToStr(wPagina),2)+'/'+FormatFLoat('00',(wPAG_TOTAL)),[comp17]);
    RDprintPedidos.ImpF(3,2   ,DBINICIO.EMPRESA.ENDERECO,[comp17]);
    if SqlCdsPedidoOPV_CODIGO.AsString = '16' then  //orçamento
         RDprintPedidos.ImpF(3,80  ,'ORÇAMENTO Nº: '+SqlCdsPedidoPED_CODIGO.AsString,[Expandido])
    else
      RDprintPedidos.ImpF(3,80  ,'PEDIDO Nº: '+SqlCdsPedidoPED_CODIGO.AsString,[Expandido]);
    RDprintPedidos.ImpF(4,2   ,DBINICIO.EMPRESA.CEP+' '+Trim(DBINICIO.EMPRESA.CIDADE)+' - '+DBINICIO.EMPRESA.UF+' '+'Fone: '+DBINICIO.EMPRESA.FONE+' '+'Fax: '+DBINICIO.EMPRESA.FAX,[comp17]);
    RDprintPedidos.ImpF(5,2   ,'Site: '+DBINICIO.EMPRESA.HOME_PAGE+' '+'Email: '+DBINICIO.EMPRESA.EMAIL,[comp17]);
    RDprintPedidos.ImpF(5,85  ,'CNPJ: '+DBINICIO.EMPRESA.CNPJ_CNPF+' - '+'Inscrição: '+DBINICIO.EMPRESA.INSC_EST,[comp17]);
    //RDprintPedidos.ImpF(5,115 ,'Pagina Nº: '+StrZero(IntToStr(wPagina),2)+'/'+FormatFLoat('00',(wPAG_TOTAL)),[comp17]);
    RDprintPedidos.ImpF(6,1   ,'-----------------------------------------------------------------------------------------------------------------------------------------',[comp17]);
    if wPAG_TOTAL > 1 then
       begin
       RDprintPedidos.ImpF(7,2  ,'*** REFERENCIA  QTDE UND   DESCRIMINAÇÃO                                                    PREÇO UNIT R$        P.TOTAL R$         IPI'  ,[Comp17]);
       RDprintPedidos.ImpF(8,1  ,'=========================================================================================================================================',[Comp17]);
       end;
  end;
  if LTBox.ItemIndex = 1 then     //ROMANEIO
  begin
    Inc(wPagina);
    RDprintPedidos.ImpF(1,1   ,'-----------------------------------------------------------------------------------------------------------------------------------------',[comp17]);
    RDprintPedidos.ImpF(2,2   ,DBINICIO.EMPRESA.RAZAO, [comp17]);
    RDprintPedidos.ImpF(2,62  ,'Fone: '+DBINICIO.EMPRESA.FONE+'         ROMANEIO Nº: '+SqlCdsPedidoPED_CODIGO.AsString,[comp17]);
    RDprintPedidos.ImpF(2,120 ,'Pagina Nº: '+StrZero(IntToStr(wPagina),2)+'/'+FormatFLoat('00',(wPAG_TOTAL)),[comp17]);
    RDprintPedidos.ImpF(3,1   ,'-----------------------------------------------------------------------------------------------------------------------------------------',[comp17]);

    if wPAG_TOTAL > 1 then
    begin
      RDprintPedidos.ImpF(4,2  ,'*** REFERENCIA  QTDE UND   DESCRIMINAÇÃO                                                    PREÇO UNIT R$        P.TOTAL R$         IPI'  ,[Comp17]);
      RDprintPedidos.ImpF(5,1  ,'=========================================================================================================================================',[Comp17]);
    end;
  end;
end;



procedure TFormGImpPedido.ImprimirGastosFrete;
var
  wData :String;
begin
                 { FOI COMENTADO SITUAÇÃO ONDE SÓ BUSCA FRETES DE PEDIDOS FATURADOS }
   //wSQL1  := ' select trp0000.TRP_CODIGO,P1.PED_CODIGO, C1.CLI_RAZAO,(SELECT first 1 F1.NF_EMISSAO  FROM nf0001 F1 WHERE (F1.PED_CODIGO = P1.PED_CODIGO AND F1.EMP_CODIGO = P1.EMP_CODIGO)) AS NF_EMISSAO,'+
   //          ' COALESCE(P1.PED_VLFATURADO,0) AS PED_VLFATURADO,P1.PED_VLFRETE,case P1.PED_FRETE when ''0'' then ''Emitente-CIF'' when ''1'' then ''Destinatario-FOB'' when ''2'' then ''Terceiros'' when ''9'' then ''Sem frete''  end as TipoFrete,'+
   //          ' P1.PED_DESP_ACES, trp0000.trp_razao, P1.PED_PLACA FROM PED0000 P1 ';

   wSQL1  := ' select trp0000.TRP_CODIGO,P1.PED_CODIGO, C1.CLI_RAZAO, P1.PED_DTENTRADA,'+
             ' COALESCE(P1.PED_VLTOTAL_LIQ,0) AS PED_VLFATURADO,P1.PED_VLFRETE,case P1.PED_FRETE when ''0'' then ''Remetente-CIF'' when ''1'' then ''Destinatario-FOB'' when ''2'' then ''Terceiros'' when ''9'' then ''Sem frete''  end as TipoFrete,'+
             ' P1.PED_DESP_ACES, trp0000.trp_razao, P1.PED_PLACA FROM PED0000 P1 ';


  // wSQL2  := ' join nf0001 F2 on F2.PED_CODIGO = P1.PED_CODIGO LEFT JOIN CLI0000 C1 ON(P1.CLI_CODIGO = C1.CLI_CODIGO) left join trp0000 on trp0000.trp_codigo = p1.trp_codigo';
   wSQL2  := ' LEFT JOIN CLI0000 C1 ON(P1.CLI_CODIGO = C1.CLI_CODIGO) left join trp0000 on trp0000.trp_codigo = p1.trp_codigo';


  // wSQL3 := ' where F2.NF_EMISSAO between '''+DataAmericana(EditDataI.Text)+''' and '''+DataAmericana(EditDataF.Text)+''' and trp0000.TRP_CODIGO <> '''' ';
  // wSQL3 := ' where P1.PED_DTENTRADA between '''+DataAmericana(EditDataI.Text)+''' and '''+DataAmericana(EditDataF.Text)+''' and trp0000.TRP_CODIGO <> '''' ';
  wSQL3 := ' where P1.PED_DTENTRADA between '''+DataAmericana(EditDataI.Text)+''' and '''+DataAmericana(EditDataF.Text)+'''  and P1.PED_VLFRETE > 0  ';

  if chkMultiempresa.Checked then
    wSQL3 := wSQL3 + ' and p1.emp_codigo in ('+fListaEmpresas.commatext+')'
  else
  begin
    if DBInicio.Exclusivo ('PEDIDOS') then
      wSQL3 := wSQL3 + ' and p1.emp_codigo = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO);
  end;

  wOrdem := ' order by 1 ';
   // 0 é todos
   if CbTipoFrete.ItemIndex > 0 then
   begin
     if CbTipoFrete.ItemIndex = 1 then //CIF
       wSQL3 := wSQL3 + ' and P1.PED_FRETE = ''0'' ';
     if CbTipoFrete.ItemIndex = 2 then      //FOB
       wSQL3 := wSQL3 + ' and P1.PED_FRETE = ''1'' ';
     if CbTipoFrete.ItemIndex = 3 then // TERCEIROS
       wSQL3 := wSQL3 + ' and P1.PED_FRETE = ''2'' ';
     if CbTipoFrete.ItemIndex = 4 then // 3-Próprio por conta do remetente
       wSQL3 := wSQL3 + ' and P1.PED_FRETE = ''3'' ';
     if CbTipoFrete.ItemIndex = 5 then // 4-Próprio por conta do destinatário
       wSQL3 := wSQL3 + ' and P1.PED_FRETE = ''4'' ';
     if CbTipoFrete.ItemIndex = 6 then
       wSQL3 := wSQL3 + ' and P1.PED_FRETE = ''9'' ';
   end;
   if (EdtTransp.Text <> '999') and (EdtTransp.Text <> '') then
     wSQL3 := wSQL3 + ' AND P1.TRP_CODIGO = '''+EdtTransp.Text+''''
   Else
      wSQL3 := wSQL3 +  ' AND P1.TRP_CODIGO <> ' + QuotedStr('');
   cdsTransporte.Close;

   //SqlCdsVendaSeg.CommandText := SqlDef('PEDIDOS',wSQL1,wSQL2+wGroup,'order by TOTAL_FAT Desc','I1.');
   SqlCdsTransp.SQL.Clear;
   SqlCdsTransp.SQL.Text := wSQL1 + wSQL2 + wSQL3 + wOrdem;
   cdsTransporte.Open;
   if cdsTransporte.IsEmpty then
     GeraException('Não foi encontrado informações');
//   SqlCdsVendaSeg.IndexFieldNames := 'TOTAL_FAT'desc;

   if RadVideo.checked  then
      begin
          ppTransp.DeviceType := 'Screen';
      end;
   if RadImpressora.checked  then
      begin
          ppTransp.ShowPrintDialog := true;
          ppTransp.DeviceType      := 'Printer';
      end;

   ppLabel70.Caption := DBINICIO.EMPRESA.RAZAO;
   ppLabel71.Caption := 'Período de  '+EditDataI.Text+'  até  '+EditDataF.Text+'';
   ppLabel72.Caption := 'Relatório de Gastos com Frete';
   RBuilderPreview(ppTransp);
end;

procedure TFormGImpPedido.ImprimirMeiaPagina;
var
  wColuna,wEspaco,wLinha,I,wQtdeItens:Integer;
  WTOT_UNITARIO,WTOT_QTDE,WPESO_TOTAL:Double;
  wPedido,wImpVarDesc,wImpVarQtde,msg : String;
begin
  // ROMANEIO DO PEDIDO

  wPagina   := 0;

  wColuna   := 0;
  RDPrintPedidos.Impressora := Grafico;
  RDprintPedidos.TamanhoQteLinhas := 33;
  RDprintPedidos.TamanhoQteColunas := 139;
  if RadVideo.checked  then
  begin
    RDprintPedidos.OpcoesPreview.Preview := True;
    RDprintPedidos.Abrir;
  end
  else
  begin
    RDprintPedidos.OpcoesPreview.Preview := False;
         RDprintPedidos.Abrir;
         if not RDPrintPedidos.Setup then
            exit;
     end;
  wPedido := SqlCdsPedidoPED_CODIGO.AsString;
  while not SqlCdsPedido.Eof do
   begin
       //                         0         1         2         3         4         5         6         7         8         9         0         1         2         3      7
       //                         012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567
       //                                                                                                                                                   Pagina Nº: 01/02
       Cabecalho;
       if (wPagina=1) then
          begin
              RDprintPedidos.ImpF(4,2   ,'Data do Pedido: '+SqlCdsPedidoPED_DTENTRADA.AsString,[Comp17]);
              RDprintPedidos.ImpF(4,45  ,'Data de Entrega: '+SqlCdsPedidoPED_DTSAIDA.AsString,[Comp17]);
//              RDprintPedidos.ImpF(4,48  ,SqlCdsPedidoPED_DTSAIDA.AsString, [Comp17]);
              RDprintPedidos.ImpF(4,90 ,'Tipo: ' + SqlCdsPedidoOPV_CODIGO.AsString+' - '+SqlCdsPedidoOPV_DESCRICAO.AsString,[comp17]);
              RDprintPedidos.ImpF(5,1   ,'-----------------------------------------------------------------------------------------------------------------------------------------',[Comp17]);
              RDprintPedidos.ImpF(6 ,2  ,'Razão Social   : '+SqlCdsPedidoCLI_CODIGO.AsString+' - '+SqlCdsPedidoCLI_RAZAO.AsString,[Comp17]);
              RDprintPedidos.ImpF(6 ,75 ,'Fantasia : '+SqlCdsPedidoCLI_FANTASIA.AsString,[Comp17]);
              if Imprimir_End_Entrega   then
                 begin
                 RDprintPedidos.ImpF(7,2  ,'End.Entrega    : '+SqlCdsPedidoCLI_ENDENTR.AsString,[Comp17]);
                 RDprintPedidos.ImpF(7,75 ,'Bairro   : '+' ',[Comp17]);
                 RDprintPedidos.ImpF(8,2  ,'Cidade         : '+SqlCdsPedidoCLI_CIDENTR.AsString,[Comp17]);
                 RDprintPedidos.ImpF(8,75 ,'Estado   : '+SqlCdsPedidoCLI_UFENTR.AsString+' Cep: '+MascaraCep(SqlCdsPedidoCLI_CEPENTR.AsString),[Comp17]);
                 end
              else
                begin
                RDprintPedidos.ImpF(7,2  ,'Endereço       : '+SqlCdsPedidoCLI_ENDERE.AsString,[Comp17]);
                RDprintPedidos.ImpF(7,75 ,'Bairro   : '+SqlCdsPedidoCLI_BAIRRO.AsString,[Comp17]);
                RDprintPedidos.ImpF(8,2  ,'Cidade         : '+SqlCdsPedidoCLI_CIDADE.AsString,[Comp17]);
                RDprintPedidos.ImpF(8,75 ,'Estado   : '+SqlCdsPedidoCLI_UF.AsString+' Cep: '+MascaraCep(SqlCdsPedidoCLI_CEP.AsString),[Comp17]);
              end;
              RDprintPedidos.ImpF(9,2 ,'Contato        : '+SqlCdsPedidoCLI_CONTATO.AsString,[Comp17]);
              RDprintPedidos.ImpF(9,75  ,'CNPJ/CNPF: '+MascraCNPJ_CNPF(SqlCdsPedidoCLI_CGC.AsString),[Comp17]);
              RDprintPedidos.ImpF(10,2  ,'Cond. de Pagto : '+SqlCdsPedidoPCL_NOME.AsString,[Comp17]);
              RDprintPedidos.ImpF(10,75 ,'Fone     : '+SqlCdsPedidoCLI_FONE.AsString+' Fax: '+SqlCdsPedidoCLI_FAX.AsString,[Comp17]);
              //
              wLinha := 11;
              RDprintPedidos.ImpF(wLinha,1  ,'-----------------------------------------------------------------------------------------------------------------------------------------',[Comp17]);
              Inc(wLinha);
              RDprintPedidos.ImpF(wLinha,2  ,'*** REFERENCIA  QTDE UND   DESCRIMINAÇÃO                                                    PREÇO UNIT R$        P.TOTAL R$         IPI'  ,[Comp17]);
              Inc(wLinha);
              RDprintPedidos.ImpF(wLinha,1  ,'=========================================================================================================================================',[Comp17]);
              //                          999 XXXXXXXXXXX                12345678901234567890123456789012345678901234567890
              //                                                                  1         2         3         4         5
              Inc(wLinha);
//                wLinha := 25;
          end;
       WTOT_QTDE   := 0;
       WPESO_TOTAL := 0;
       SqlCdsItenPedi.First;
       wQtdeItens  := 1;
       //imprimir os itens do pedido
       while not SqlCdsItenPedi.Eof do
        begin
            if (wVariacoes='S') then
               begin
               if(SqlCdsItenPediPTI_SIGLA.AsString = 'PA')or (SqlCdsItenPediPTI_SIGLA.AsString = 'PI') then
                   begin
                       For I := 1 to 8 do
                          begin
                          if (I = 1) then
                             begin
                             if (SqlCdsItenPediPRF_VAR1.AsCurrency>0) then
                                begin
                                RDprintPedidos.ImpF  (wLinha,1  ,IntToStr(wQtdeItens),[Comp17]);
                             if (SqlCdsItenPediPRF_PRODUTO_AGREGADO.AsString = 'S') then
                                   RDprintPedidos.ImpF  (wLinha,4  ,'A',[Comp17]);
                             //
                             RDprintPedidos.ImpF  (wlinha,6  ,SqlCdsItenPediPRD_REFER.AsString,[Comp17]);
                             RDprintPedidos.ImpVal(wlinha,18 ,'',SqlCdsItenPediPRF_VAR1.AsCurrency,[Comp17]);
                             RDprintPedidos.ImpF  (wlinha,25 ,SqlCdsItenPediPRD_UND.AsString,[Comp17]);
                             RDprintPedidos.ImpF  (wlinha,29 ,SqlCdsItenPediPRF_PRDDESCRI.AsString+' - '+SqlCdsItenPediPRD_DCVAR1.AsString,[Comp17]);
                             RDprintPedidos.ImpVal(wlinha,90 ,QtdeCasaDecimal('P'),SqlCdsItenPediPRF_PRECO.AsCurrency,[Comp17]);
                             //
                             wTot_unitario := (SqlCdsItenPediPRF_VAR1.AsCurrency * SqlCdsItenPediPRF_PRECO.AsCurrency);
                             //
                             RDprintPedidos.ImpVal(wlinha,109,QtdeCasaDecimal('P'),WTOT_UNITARIO,[Comp17]);
                             RDprintPedidos.ImpVal(wlinha,129,'#,##0.00',SqlCdsItenPediPRF_IPIALIQ.AsCurrency,[Comp17]);
                             Inc(wLinha);
                             Inc(wQtdeItens);
                             end;
                          end;
                          if (I = 2) then
                              begin
                              if (SqlCdsItenPediPRF_VAR2.AsCurrency>0) then
                                 begin
                                 if (SqlCdsItenPediPRF_VAR1.AsCurrency = 0) then
                                    begin
                                    RDprintPedidos.ImpF  (wLinha,1  ,IntToStr(wQtdeItens),[Comp17]);
                                    Inc(wQtdeItens);
                                    end;
                                 if (SqlCdsItenPediPRF_PRODUTO_AGREGADO.AsString = 'S') then
                                     RDprintPedidos.ImpF  (wLinha,4  ,'A',[Comp17]);

                                 RDprintPedidos.ImpF  (wlinha,6  ,SqlCdsItenPediPRD_REFER.AsString,[Comp17]);
                                 RDprintPedidos.ImpVal(wlinha,18 ,'',SqlCdsItenPediPRF_VAR2.AsCurrency,[Comp17]);
                                 RDprintPedidos.ImpF  (wlinha,25 ,SqlCdsItenPediPRD_UND.AsString,[Comp17]);
                                 RDprintPedidos.ImpF  (wlinha,29 ,SqlCdsItenPediPRF_PRDDESCRI.AsString+' - '+SqlCdsItenPediPRD_DCVAR2.AsString,[Comp17]);
                                 RDprintPedidos.ImpVal(wlinha,90 ,QtdeCasaDecimal('P'),SqlCdsItenPediPRF_PRECO.AsCurrency,[Comp17]);
                                 //
                                 WTOT_UNITARIO := (SqlCdsItenPediPRF_VAR2.AsCurrency * SqlCdsItenPediPRF_PRECO.AsCurrency);
                                 RDprintPedidos.ImpVal(wlinha,109,QtdeCasaDecimal('P'),WTOT_UNITARIO,[Comp17]);
                                 RDprintPedidos.ImpVal(wlinha,129,'#,##0.00',SqlCdsItenPediPRF_IPIALIQ.AsCurrency,[Comp17]);
                                 Inc(wLinha);
                                 end;
                              end;
                            if (I = 3) then
                                begin
                                if (SqlCdsItenPediPRF_VAR3.AsCurrency>0) then
                                   begin
                                   if (SqlCdsItenPediPRF_VAR2.AsCurrency = 0) then
                                      begin
                                      RDprintPedidos.ImpF  (wLinha,1  ,IntToStr(wQtdeItens),[Comp17]);
                                      Inc(wQtdeItens);
                                      end;
                                   if (SqlCdsItenPediPRF_PRODUTO_AGREGADO.AsString = 'S') then
                                      RDprintPedidos.ImpF  (wLinha,4  ,'A',[Comp17]);

                                   RDprintPedidos.ImpF  (wlinha,6  ,SqlCdsItenPediPRD_REFER.AsString,[Comp17]);
                                   RDprintPedidos.ImpVal(wlinha,18 ,'',SqlCdsItenPediPRF_VAR3.AsCurrency,[Comp17]);
                                   RDprintPedidos.ImpF  (wlinha,25 ,SqlCdsItenPediPRD_UND.AsString,[Comp17]);
                                   RDprintPedidos.ImpF  (wlinha,29 ,SqlCdsItenPediPRF_PRDDESCRI.AsString+' - '+SqlCdsItenPediPRD_DCVAR3.AsString,[Comp17]);
                                   RDprintPedidos.ImpVal(wlinha,90 ,QtdeCasaDecimal('P'),SqlCdsItenPediPRF_PRECO.AsCurrency,[Comp17]);
                                   //
                                   WTOT_UNITARIO := (SqlCdsItenPediPRF_VAR3.AsCurrency * SqlCdsItenPediPRF_PRECO.AsCurrency);
                                   RDprintPedidos.ImpVal(wlinha,109,QtdeCasaDecimal('P'),WTOT_UNITARIO,[Comp17]);
                                   RDprintPedidos.ImpVal(wlinha,129,'#,##0.00',SqlCdsItenPediPRF_IPIALIQ.AsCurrency,[Comp17]);
                                   Inc(wLinha);
                                   end;
                                 end;
                             if (I = 4) then
                                 begin
                                  if (SqlCdsItenPediPRF_VAR4.AsCurrency>0) then
                                      begin
                                      if (SqlCdsItenPediPRF_VAR3.AsCurrency = 0) then
                                         begin
                                         RDprintPedidos.ImpF  (wLinha,1  ,IntToStr(wQtdeItens),[Comp17]);
                                         Inc(wQtdeItens);
                                         end;
                                      if (SqlCdsItenPediPRF_PRODUTO_AGREGADO.AsString = 'S') then
                                          RDprintPedidos.ImpF  (wLinha,4  ,'A',[Comp17]);

                                       RDprintPedidos.ImpF  (wlinha,6  ,SqlCdsItenPediPRD_REFER.AsString,[Comp17]);
                                       RDprintPedidos.ImpVal(wlinha,18 ,'',SqlCdsItenPediPRF_VAR4.AsCurrency,[Comp17]);
                                       RDprintPedidos.ImpF  (wlinha,25 ,SqlCdsItenPediPRD_UND.AsString,[Comp17]);
                                       RDprintPedidos.ImpF  (wlinha,29 ,SqlCdsItenPediPRF_PRDDESCRI.AsString+' - '+SqlCdsItenPediPRD_DCVAR4.AsString,[Comp17]);
                                       RDprintPedidos.ImpVal(wlinha,90 ,QtdeCasaDecimal('P'),SqlCdsItenPediPRF_PRECO.AsCurrency,[Comp17]);
                                       //
                                       WTOT_UNITARIO := (SqlCdsItenPediPRF_VAR4.AsCurrency * SqlCdsItenPediPRF_PRECO.AsCurrency);
                                       RDprintPedidos.ImpVal(wlinha,109,QtdeCasaDecimal('P'),WTOT_UNITARIO,[Comp17]);
                                       RDprintPedidos.ImpVal(wlinha,129,'#,##0.00',SqlCdsItenPediPRF_IPIALIQ.AsCurrency,[Comp17]);
                                       Inc(wLinha);
                                       end;
                                   end;
                              if (I = 5) then
                                   begin
                                   if (SqlCdsItenPediPRF_VAR5.AsCurrency>0) then
                                      begin
                                      if (SqlCdsItenPediPRF_VAR4.AsCurrency = 0) then
                                          begin
                                          RDprintPedidos.ImpF  (wLinha,1  ,IntToStr(wQtdeItens),[Comp17]);
                                          Inc(wQtdeItens);
                                          end;
                                      if (SqlCdsItenPediPRF_PRODUTO_AGREGADO.AsString = 'S') then
                                          RDprintPedidos.ImpF  (wLinha,4  ,'A',[Comp17]);

                                      RDprintPedidos.ImpF  (wlinha,6  ,SqlCdsItenPediPRD_REFER.AsString,[Comp17]);
                                      RDprintPedidos.ImpVal(wlinha,18 ,'',SqlCdsItenPediPRF_VAR5.AsCurrency,[Comp17]);
                                      RDprintPedidos.ImpF  (wlinha,25 ,SqlCdsItenPediPRD_UND.AsString,[Comp17]);
                                      RDprintPedidos.ImpF  (wlinha,29 ,SqlCdsItenPediPRF_PRDDESCRI.AsString+' - '+SqlCdsItenPediPRD_DCVAR5.AsString,[Comp17]);
                                      RDprintPedidos.ImpVal(wlinha,90 ,QtdeCasaDecimal('P'),SqlCdsItenPediPRF_PRECO.AsCurrency,[Comp17]);
                                      //
                                      WTOT_UNITARIO := (SqlCdsItenPediPRF_VAR5.AsCurrency * SqlCdsItenPediPRF_PRECO.AsCurrency);
                                      RDprintPedidos.ImpVal(wlinha,109,QtdeCasaDecimal('P'),WTOT_UNITARIO,[Comp17]);
                                      RDprintPedidos.ImpVal(wlinha,129,'#,##0.00',SqlCdsItenPediPRF_IPIALIQ.AsCurrency,[Comp17]);
                                      Inc(wLinha);
                                      end;
                                   end;
                              if (I = 6) then
                                   begin
                                   if (SqlCdsItenPediPRF_VAR6.AsCurrency>0) then
                                      begin
                                      if (SqlCdsItenPediPRF_VAR5.AsCurrency = 0) then
                                         begin
                                         RDprintPedidos.ImpF  (wLinha,1  ,IntToStr(wQtdeItens),[Comp17]);
                                         Inc(wQtdeItens);
                                         end;
                                      if (SqlCdsItenPediPRF_PRODUTO_AGREGADO.AsString = 'S') then
                                         RDprintPedidos.ImpF  (wLinha,4  ,'A',[Comp17]);

                                         RDprintPedidos.ImpF  (wlinha,6  ,SqlCdsItenPediPRD_REFER.AsString,[Comp17]);
                                         RDprintPedidos.ImpVal(wlinha,18 ,'',SqlCdsItenPediPRF_VAR6.AsCurrency,[Comp17]);
                                         RDprintPedidos.ImpF  (wlinha,25 ,SqlCdsItenPediPRD_UND.AsString,[Comp17]);
                                         RDprintPedidos.ImpF  (wlinha,29 ,SqlCdsItenPediPRF_PRDDESCRI.AsString+' - '+SqlCdsItenPediPRD_DCVAR6.AsString,[Comp17]);
                                         RDprintPedidos.ImpVal(wlinha,90 ,QtdeCasaDecimal('P'),SqlCdsItenPediPRF_PRECO.AsCurrency,[Comp17]);
                                         //
                                         WTOT_UNITARIO := (SqlCdsItenPediPRF_VAR6.AsCurrency * SqlCdsItenPediPRF_PRECO.AsCurrency);
                                         RDprintPedidos.ImpVal(wlinha,109,QtdeCasaDecimal('P'),WTOT_UNITARIO,[Comp17]);
                                         RDprintPedidos.ImpVal(wlinha,129,'#,##0.00',SqlCdsItenPediPRF_IPIALIQ.AsCurrency,[Comp17]);
                                         Inc(wLinha);
                                      end;
                                   end;
                              if (I = 7) then
                                  begin
                                  if (SqlCdsItenPediPRF_VAR7.AsCurrency>0) then
                                      begin
                                      if (SqlCdsItenPediPRF_VAR6.AsCurrency = 0) then
                                         begin
                                         RDprintPedidos.ImpF  (wLinha,1  ,IntToStr(wQtdeItens),[Comp17]);
                                         Inc(wQtdeItens);
                                         end;
                                      if (SqlCdsItenPediPRF_PRODUTO_AGREGADO.AsString = 'S') then
                                          RDprintPedidos.ImpF  (wLinha,4  ,'A',[Comp17]);

                                          RDprintPedidos.ImpF  (wlinha,6  ,SqlCdsItenPediPRD_REFER.AsString,[Comp17]);
                                          RDprintPedidos.ImpVal(wlinha,18 ,'',SqlCdsItenPediPRF_VAR7.AsCurrency,[Comp17]);
                                          RDprintPedidos.ImpF  (wlinha,25 ,SqlCdsItenPediPRD_UND.AsString,[Comp17]);
                                          RDprintPedidos.ImpF  (wlinha,29 ,SqlCdsItenPediPRF_PRDDESCRI.AsString+' - '+SqlCdsItenPediPRD_DCVAR7.AsString,[Comp17]);
                                          RDprintPedidos.ImpVal(wlinha,90 ,QtdeCasaDecimal('P'),SqlCdsItenPediPRF_PRECO.AsCurrency,[Comp17]);
                                          //
                                          WTOT_UNITARIO := (SqlCdsItenPediPRF_VAR7.AsCurrency * SqlCdsItenPediPRF_PRECO.AsCurrency);
                                          RDprintPedidos.ImpVal(wlinha,109,QtdeCasaDecimal('P'),WTOT_UNITARIO,[Comp17]);
                                          RDprintPedidos.ImpVal(wlinha,129,'#,##0.00',SqlCdsItenPediPRF_IPIALIQ.AsCurrency,[Comp17]);
                                          Inc(wLinha);
                                      end;
                                  end;
                              if (I = 8) then
                                  begin
                                  if (SqlCdsItenPediPRF_VAR8.AsCurrency>0) then
                                      begin
                                      if (SqlCdsItenPediPRF_VAR7.AsCurrency = 0) then
                                         begin
                                         RDprintPedidos.ImpF  (wLinha,1  ,IntToStr(wQtdeItens),[Comp17]);
                                         Inc(wQtdeItens);
                                         end;
                                      if (SqlCdsItenPediPRF_PRODUTO_AGREGADO.AsString = 'S') then
                                         RDprintPedidos.ImpF  (wLinha,4  ,'A',[Comp17]);
                                      //
                                      RDprintPedidos.ImpF  (wlinha,6  ,SqlCdsItenPediPRD_REFER.AsString,[Comp17]);
                                      RDprintPedidos.ImpVal(wlinha,18 ,'',SqlCdsItenPediPRF_VAR8.AsCurrency,[Comp17]);
                                      RDprintPedidos.ImpF  (wlinha,25 ,SqlCdsItenPediPRD_UND.AsString,[Comp17]);
                                      RDprintPedidos.ImpF  (wlinha,29 ,SqlCdsItenPediPRF_PRDDESCRI.AsString+' - '+SqlCdsItenPediPRD_DCVAR8.AsString,[Comp17]);
                                      RDprintPedidos.ImpVal(wlinha,90 ,QtdeCasaDecimal('P'),SqlCdsItenPediPRF_PRECO.AsCurrency,[Comp17]);
                                      //
                                      WTOT_UNITARIO := (SqlCdsItenPediPRF_VAR8.AsCurrency * SqlCdsItenPediPRF_PRECO.AsCurrency);
                                      RDprintPedidos.ImpVal(wlinha,109,QtdeCasaDecimal('P'),WTOT_UNITARIO,[Comp17]);
                                      RDprintPedidos.ImpVal(wlinha,129,'#,##0.00',SqlCdsItenPediPRF_IPIALIQ.AsCurrency,[Comp17]);
                                      Inc(wLinha);
                                      end;
                                  end;
                            end;   // end For
                      {terminando de verificar as variacoes}
                      if (SqlCdsItenPediPRF_VAR1.AsCurrency = 0) and (SqlCdsItenPediPRF_VAR2.AsCurrency = 0) and (SqlCdsItenPediPRF_VAR3.AsCurrency = 0) and (SqlCdsItenPediPRF_VAR4.AsCurrency = 0) and
                          (SqlCdsItenPediPRF_VAR5.AsCurrency = 0) and (SqlCdsItenPediPRF_VAR6.AsCurrency = 0) and (SqlCdsItenPediPRF_VAR7.AsCurrency = 0) and (SqlCdsItenPediPRF_VAR8.AsCurrency = 0) then
                          begin
                          {se for um produto antigo que foi colocado sem variacao e agora passou a ter variação imprimi}
                           RDprintPedidos.ImpF  (wLinha,1  ,IntToStr(wQtdeItens),[Comp17]);
                           if (SqlCdsItenPediPRF_PRODUTO_AGREGADO.AsString = 'S') then
                               RDprintPedidos.ImpF  (wLinha,4  ,'A',[Comp17]);

                           RDprintPedidos.ImpF  (wlinha,6  ,SqlCdsItenPediPRD_REFER.AsString,[Comp17]);
                           RDprintPedidos.ImpVal(wlinha,18 ,'',SqlCdsItenPediPRF_QTDE.AsCurrency,[Comp17]);
                           RDprintPedidos.ImpF  (wlinha,25 ,SqlCdsItenPediPRD_UND.AsString,[Comp17]);
                           RDprintPedidos.ImpF  (wlinha,29 ,SqlCdsItenPediPRF_PRDDESCRI.AsString,[Comp17]);
                           RDprintPedidos.ImpVal(wlinha,90 ,QtdeCasaDecimal('P'),SqlCdsItenPediPRF_PRECO.AsCurrency,[Comp17]);
                           WTOT_UNITARIO := (SqlCdsItenPediPRF_QTDE.AsCurrency * SqlCdsItenPediPRF_PRECO.AsCurrency);
                           RDprintPedidos.ImpVal(wlinha,109 ,QtdeCasaDecimal('P'),WTOT_UNITARIO,[Comp17]);
                           RDprintPedidos.ImpVal(wlinha,129,'#,##0.00',SqlCdsItenPediPRF_IPIALIQ.AsCurrency,[Comp17]);
                           Inc(wLinha);
                           Inc(wQtdeItens);
                          end;
                      end
                     else  // senao eh Produto PA e PI
                       begin
                        RDprintPedidos.ImpF  (wLinha,1  ,IntToStr(wQtdeItens),[Comp17]);
                        if (SqlCdsItenPediPRF_PRODUTO_AGREGADO.AsString = 'S') then
                            RDprintPedidos.ImpF  (wLinha,4  ,'A',[Comp17]);
                         //
                         RDprintPedidos.ImpF  (wlinha,6  ,SqlCdsItenPediPRD_REFER.AsString,[Comp17]);
                         RDprintPedidos.ImpVal(wlinha,18 ,'',SqlCdsItenPediPRF_QTDE.AsCurrency,[Comp17]);
                         RDprintPedidos.ImpF  (wlinha,25 ,SqlCdsItenPediPRD_UND.AsString,[Comp17]);
                         RDprintPedidos.ImpF  (wlinha,29 ,SqlCdsItenPediPRF_PRDDESCRI.AsString,[Comp17]);
                         RDprintPedidos.ImpVal(wlinha,90 ,QtdeCasaDecimal('P'),SqlCdsItenPediPRF_PRECO.AsCurrency,[Comp17]);
                         WTOT_UNITARIO := (SqlCdsItenPediPRF_QTDE.AsCurrency * SqlCdsItenPediPRF_PRECO.AsCurrency);
                         RDprintPedidos.ImpVal(wlinha,109 ,QtdeCasaDecimal('P'),WTOT_UNITARIO,[Comp17]);
                         RDprintPedidos.ImpVal(wlinha,129,'#,##0.00',SqlCdsItenPediPRF_IPIALIQ.AsCurrency,[Comp17]);
                         Inc(wLinha);
                         Inc(wQtdeItens);
                       end;
               end
            else     //senao se o produto não tem variacao
               begin
                RDprintPedidos.ImpF  (wLinha,1  ,IntToStr(wQtdeItens),[Comp17]);
                if (SqlCdsItenPediPRF_PRODUTO_AGREGADO.AsString = 'S') then
                   RDprintPedidos.ImpF  (wLinha,4  ,'A',[Comp17]);
                //
                RDprintPedidos.ImpF  (wlinha,6  ,SqlCdsItenPediPRD_REFER.AsString,[Comp17]);
                RDprintPedidos.ImpVal(wlinha,18 ,'',SqlCdsItenPediPRF_QTDE.AsCurrency,[Comp17]);
                RDprintPedidos.ImpF  (wlinha,25 ,SqlCdsItenPediPRD_UND.AsString,[Comp17]);
                RDprintPedidos.ImpF  (wlinha,29 ,SqlCdsItenPediPRF_PRDDESCRI.AsString,[Comp17]);
                RDprintPedidos.ImpVal(wlinha,90 ,QtdeCasaDecimal('P'),SqlCdsItenPediPRF_PRECO.AsCurrency,[Comp17]);
                WTOT_UNITARIO := (SqlCdsItenPediPRF_QTDE.AsCurrency * SqlCdsItenPediPRF_PRECO.AsCurrency);
                RDprintPedidos.ImpVal(wlinha,109 ,QtdeCasaDecimal('P'),WTOT_UNITARIO,[Comp17]);
                RDprintPedidos.ImpVal(wlinha,129,'#,##0.00',SqlCdsItenPediPRF_IPIALIQ.AsCurrency,[Comp17]);
                Inc(wLinha);
                Inc(wQtdeItens);
               end;
            //
            if (SqlCdsItenPediPRF_PRODUTO_AGREGADO.AsString = 'N') then
               WTOT_QTDE := (WTOT_QTDE + SqlCdsItenPediPRF_QTDE.AsCurrency);// soma o total das quantidades.
            WPESO_TOTAL  := WPESO_TOTAL +  (SQLCdsItenPediPRD_PESOKG.AsCurrency * SqlCdsItenPediPRF_QTDE.AsCurrency);

            //  próximo item do pedido
            SqlCdsItenPedi.Next;

            if (wLinha >=31) then
               begin
               RDprintPedidos.ImpF  (wLinha,1  ,'=========================================================================================================================================',[Comp17]);
               RDprintPedidos.NovaPagina;
               Cabecalho;
               wLinha := 4;
               end;
        end;  // fim do while itens

//      if (wQtdeItens <= 11) then
       if (wLinha <= 24) then
          begin
              RDprintPedidos.ImpF  (wLinha,1  ,'=========================================================================================================================================',[Comp17]);
              wLinha := wLinha + 1;
              RDprintPedidos.ImpF  (wLinha,02 ,'Total Qtde:',[comp17]);
              RDprintPedidos.ImpVal(wLinha,18 ,'',WTOT_QTDE,[comp17]);
              RDprintPedidos.ImpF  (wLinha,86 ,'TOTAL LIQUIDO PEDIDO :',[comp17]);
              RDprintPedidos.ImpVal(wLinha,109,QtdeCasaDecimal('P'),SqlCdsPedidoPED_VLTOTAL_LIQ.AsCurrency,[comp17]);
              wLinha := wLinha + 1;
              RDprintPedidos.ImpF  (wLinha,1  ,'-----------------------------------------------------------------------------------------------------------------------------------------',[Comp17]);
              wLinha := wLinha + 1;
              RDprintPedidos.ImpF(wLinha,2 ,'VALOR TOTAL DO IPI:',[comp17]);
              RDprintPedidos.ImpF(wLinha,22,FormatFloat('#,##0.00',SqlCdsPedidoPED_VLTOTAL_IPI.AsCurrency),[comp17]);
              RDprintPedidos.ImpF(wLinha,40 ,'DESCTO: '+FormatFloat('#,##0.00',SqlCdsPedidoPED_DESCTOPC1.AsCurrency)+' + '+FormatFloat('#,##0.00',SqlCdsPedidoPED_DESCTOPC2.AsCurrency)+'    '+FormatFloat('#,##0.00',SqlCdsPedidoPED_DESCTOVL.AsCurrency),[comp17]);
              RDprintPedidos.ImpF  (wLinha,86 ,'TOTAL GERAL PEDIDO   :',[comp17]);
              RDprintPedidos.ImpVal(wLinha,109,QtdeCasaDecimal('P'),(SqlCdsPedidoPED_VLTOTAL_BRUTO.AsCurrency ),[comp17]);
              wLinha := wLinha + 1;
              RDprintPedidos.ImpF(wLinha,1  ,'-----------------------------------------------------------------------------------------------------------------------------------------',[Comp17]);
              wLinha := wLinha + 2;
              RdPrintPedidos.ImpF(wLinha,5, 'Material separado por :_______________________________________________________ Data:_____/_____/_________ Hora: _____:_____',[Comp17]);
              wLinha := wLinha + 2;
              RdPrintPedidos.ImpF(wLinha,5, 'Material conferido por :______________________________________________________ Data:_____/_____/_________ Hora: _____:_____',[Comp17]);
              wLinha := wLinha + 2;
              RdPrintPedidos.ImpF(wLinha,5, 'Recebimento por :_____________________________________________________________ Data:_____/_____/_________ Hora: _____:_____',[Comp17]);
           end
       else
          begin
              RDprintPedidos.NovaPagina;
              Cabecalho;
              RDprintPedidos.ImpF  (wLinha,1  ,'=========================================================================================================================================',[Comp17]);
              RDprintPedidos.ImpF  (wLinha,02 ,'Total Qtde:',[comp17]);
              RDprintPedidos.ImpVal(wLinha,18 ,'',WTOT_QTDE,[comp17]);
              RDprintPedidos.ImpF  (wLinha,86 ,'TOTAL LIQUIDO PEDIDO :',[comp17]);
              RDprintPedidos.ImpVal(wLinha,109,QtdeCasaDecimal('P'),SqlCdsPedidoPED_VLTOTAL_LIQ.AsCurrency,[comp17]);
              wLinha := wLinha + 1;
              RDprintPedidos.ImpF  (wLinha,1  ,'-----------------------------------------------------------------------------------------------------------------------------------------',[Comp17]);
              wLinha := wLinha + 1;
              RDprintPedidos.ImpF(wLinha,2 ,'VALOR TOTAL DO IPI:',[comp17]);
              RDprintPedidos.ImpF(wLinha,22,FormatFloat('#,##0.00',SqlCdsPedidoPED_VLTOTAL_IPI.AsCurrency),[comp17]);
              RDprintPedidos.ImpF(wLinha,40 ,'DESCTO: '+FormatFloat('#,##0.00',SqlCdsPedidoPED_DESCTOPC1.AsCurrency)+' + '+FormatFloat('#,##0.00',SqlCdsPedidoPED_DESCTOPC2.AsCurrency)+'    '+FormatFloat('#,##0.00',SqlCdsPedidoPED_DESCTOVL.AsCurrency),[comp17]);
              RDprintPedidos.ImpF  (wLinha,86 ,'TOTAL GERAL PEDIDO   :',[comp17]);
              RDprintPedidos.ImpVal(wLinha,109,QtdeCasaDecimal('P'),(SqlCdsPedidoPED_VLTOTAL_BRUTO.AsCurrency ),[comp17]);
              wLinha := wLinha + 1;
              RDprintPedidos.ImpF(wLinha,1  ,'-----------------------------------------------------------------------------------------------------------------------------------------',[Comp17]);
              wLinha := wLinha + 2;
              RdPrintPedidos.ImpF(wLinha,5, 'Recebimento/Data:____________________________________________________________________________________________________________________',[Comp17]);
          end;

       SqlCdsPedido.Next;
       if (wPedido <> SqlCdsPedidoPED_CODIGO.AsString) then
          begin
              wPagina := 0;
          end;
       RDprintPedidos.NovaPagina;
   end;

  SqlCdsPedido.Close;
  SqlCdsItenPedi.close;
  SqlCdsParam.Close;
  RDprintPedidos.Fechar;
end;

procedure TFormGImpPedido.BitConfigClick(Sender: tObject);
begin
    PrinterPedido.Execute;
end;

procedure TFormGImpPedido.BitCancelarClick(Sender: tObject);
begin
    Close;
end;

procedure TFormGImpPedido.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
    Screen.Cursor := crHourGlass;
    try
      SqlCdsPedido.Close;
      SqlCdsItenPedi.Close;
      SqlCdsParam.Close;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao fechar as tabelas !'+e.message))
    end;
    Screen.cursor := crDefault;
end;

procedure TFormGImpPedido.FormShow(Sender: tObject);
begin
    Left := 166;
    Top  := 180;
 //   Screen.OnActiveControlChange := MudaCorCampos;
    Screen.cursor := crHourGlass;
    try
      {Abre a tabela de parametros somente utilizado no pedido}
      SqlCdsParam.Close;
      SqlCdsParam.SQL.Clear;
      SqlCdsParam.sql.Text := SqlDef('Parametros','SELECT T1.PMT_VARIACOES,T1.PMT_COMIS_GRP,T1.PMT_TUPPEDIDO FROM PRMT0001 T1 ','','T1.EMP_CODIGO','T1.');
      SqlCdsParam.Open;
      {}

      SqlCdsClie.Close;
      SqlCdsClie.SQL.Clear;
      SqlCdsClie.sql.Text := SQLDEF('CLIENTES','Select Cli_codigo,Cli_Razao from cli0000','','cli_razao','');
      SqlCdsClie.Open;
      SqlCdsClie.First;


      CbCliente.Items.Clear;
      CbCliCod.Items.Add('');
      CbCliente.Items.Add('TODOS');
      while not SqlCdsClie.Eof do
       begin
           CbCliCod.Items.Add(SqlCdsClieCLI_CODIGO.AsString);
           CbCliente.Items.Add(SqlCdsClieCLI_RAZAO.AsString);
           SqlCdsClie.Next;
       end;
      CbCliCod.ItemIndex  := 0;
      CbCliente.ItemIndex := 0;

      SqlCdsRep.Close;
      SqlCdsRep.SQL.Clear;
      SqlCdsRep.SQL.Text := SQLDEF('REPRESENTANTES','Select REP_CODIGO,REP_NOME from REP0000','','rep_nome','');
      SqlCdsRep.Open;
      SqlCdsRep.First;
      CbRepCod.Items.Add('');
      CbRep.Items.Clear;
      CbRep.Items.Add('TODOS');
      while not SqlCdsRep.Eof do
       begin
           CbRepCod.Items.Add(SqlCdsRepREP_CODIGO.AsString);
           CbRep.Items.Add(SqlCdsRepREP_NOME.AsString);
           SqlCdsRep.Next;
       end;
      CbRepCod.ItemIndex := 0;
      CbRep.ItemIndex    := 0;
      {Combo Tipo}
            // TIPO
      // carrega somente movimentos de SAIDAS
      CdsTipo.Close;
      CdsTipo.SQL.Clear;
      CdsTipo.sql.Text := 'select * from OPV0000 where OPV_TIPO = ''S'' ORDER BY OPV_DESCRICAO';
      CdsTipo.Open;
      CdsTipo.First;
      CbTipo.Items.Add('TODOS OS TIPOS');
      Cb_Tipo.Items.Add('TODOS OS TIPOS');
      while not CdsTipo.Eof do
       begin
           Cb_Tipo.Items.Add(CdsTipoOPV_DESCRICAO.AsString);
           CbTipo.Items.Add(CdsTipoOPV_DESCRICAO.AsString);
           CdsTipo.Next;
       end;
      CbTipo.ItemIndex  := 0;
      Cb_Tipo.ItemIndex := 0;


      CdsTransp.Close;
      CdsTransp.SQL.Clear;
      CdsTransp.SQL.Text := 'select TRP_CODIGO, TRP_RAZAO from TRP0000 order by 2';
      CdsTransp.Open;
      CdsTransp.First;
      cbTranspCod.Items.Add('');
      cbTransp.Items.Add('TODOS');
      while not CdsTransp.Eof do
      begin
        cbTranspCod.Items.Add(CdsTranspTRP_CODIGO.AsString);
        cbTransp.Items.Add(CdsTranspTRP_RAZAO.AsString);
        CdsTransp.Next;
      end;

      cbTransp.ItemIndex  := 0;
    except on E:EdataBaseError do
        uteis.erro  (pchar('erro ao carregar as combo !'+e.message));
    end;
    LTBox.Items.Add('Cópia do Pedido');                         //00
    LTBox.Items.Add('Romaneio do Pedido');                      //01
    LTBox.Items.Add('Relatório Geral de Pedidos');              //02
    LTBox.Items.Add('Relatório de Pedidos por Vendedores');     //03
    LTBox.Items.Add('Faturamento de Pedidos/Expedição');        //04
    LTBox.Items.Add('Faturamento de Pedidos/Itens');            //05
    LTBox.Items.Add('Pedidos à Faturar/Faturados');//06
    LTBox.Items.Add('Vendas por linha do produto');//07
    LTBox.Items.Add('Gastos com Fretes');//08
    LTBox.Items.Add('Pedidos à Faturar/Faturados por Vendedor');//09 copia do 06
    LTBox.Items.Add('Relatório de orçamentos por origem');//10
    LTBox.Items.Add('Pedidos com forma de pagamento');//11 copia do 09
    LTBox.Items.Add('Relação de O.S'); // 12
    LTBox.Items.Add('Controle de Orçamento no Mês'); // 13

    LTBox.ItemIndex := 0;  // seta no primeiro item
    EditDataI.Date := now;      // data de hoje
    EditDataF.Date := now;  //Data De Hoje.
    screen.cursor := crDefault;
    LayOut;
    LTBox.SetFocus;
end;

procedure TFormGImpPedido.frxRelOrdemGetValue(const VarName: string; var Value: Variant);
begin
  inherited;
  if (VarName = 'EMPRESA') then
    Value := dbInicio.empresa.RAZAO
  else if (VarName = 'ENDERECO') then
    Value := dbInicio.Empresa.ENDERECO
  else if (VarName = 'CEP') then
    Value := dbInicio.Empresa.CEP
  else if (VarName = 'CIDADE') then
    Value := dbInicio.Empresa.CIDADE
  else if (VarName = 'UF') then
    Value := dbInicio.Empresa.UF
  else if (VarName = 'TELEFONE') then
    Value := dbInicio.Empresa.FONE
  else if (VarName = 'EMAIL') then
    Value := dbInicio.Empresa.EMAIL
  else if (VarName = 'CNPJ') then
    Value := dbInicio.Empresa.CNPJ_CNPF
  else if (VarName = 'MES') then
  begin
    case cdsOrcMesMES.AsInteger of
      1 : Value := 'Janeiro';
      2 : Value := 'Fevereiro';
      3 : Value := 'Março';
      4 : Value := 'Abril';
      5 : Value := 'Maio';
      6 : Value := 'Junho';
      7 : Value := 'Julho';
      8 : Value := 'Agosto';
      9 : Value := 'Setembro';
      10 : Value := 'Outubro';
      11 : Value := 'Novembro';
      12 : Value := 'Dezembro';
    end;
  end;


end;

procedure TFormGImpPedido.EditFinalExit(Sender: tObject);
begin
    EditFinal.Text := StrZero(EditFinal.Text,6);
    if EditFinal.Text < EditInicial.Text then
       begin
           uteis.aviso('Nº Final menor que o Nº Inicial !');
           EditFinal.SetFocus;
       end;
end;

procedure TFormGImpPedido.EditInicialExit(Sender: tObject);
begin
    if (ActiveControl.Name = 'BitCancelar') or (ActiveControl.name = 'LTBox') then
       exit;
    EditInicial.Text := StrZero(EditInicial.Text,6);
    if EditInicial.text = '' then
       begin
           Messagebeep($ffffffff);
           uteis.aviso('Digite o Nº do(s) Pedido(s) para impressão!');
           EditInicial.SetFocus;
       end
    else
       begin
           EditFinal.Text := EditInicial.Text;
       end;
end;

procedure TFormGImpPedido.EditDataIExit(Sender: tObject);
begin
    if not TestaDataStr(EditDataI.Text) then
       EditDataI.setfocus;
end;

procedure TFormGImpPedido.EditDataFExit(Sender: tObject);
begin
    if not TestaDataStr(EditDataF.Text) then
       EditDataF.setfocus;
end;

procedure TFormGImpPedido.LayOut;
begin
   if (Assigned(FrmPedido)) then
      sPedido := FrmPedido.EdPedidoNumero.Text;
   {else
      sPedido := FormPedidos.EdtPed_codigo.Text;}
    chkMultiempresa.Enabled :=  LTBox.ItemIndex  in [2,3,6,9];
    if not chkMultiempresa.Enabled then
      chkMultiempresa.Checked := False;
    if (LTBox.ItemIndex = 0) then
       begin
           {Desativa}
           Grp02.Visible          := False;
           Grp03.Visible          := False;
           grpVendedor.Visible    := false;
           Grp05.Visible          := False;
           Grp06.Visible          := False;
           Grp07.Visible          := False;
           Grp09.Visible          := False;
           pOrigem.Visible        := False;
           {Habilitar}
           Grp04.Visible          := true;
           Grp04.Caption          := 'Pedido';
           Label1.Caption         := 'Nº Pedido :';
           {Posicionar Groups}
           Grp04.Top              := 119;
           Grp08.Top              := 159;
           EditInicial.Text       := sPedido;
           //EditInicial.Text       := StrZero(EditInicial.Text,6);
           EditFinal.Text         := EditInicial.Text;
       end
    else
    if (LTBox.ItemIndex = 1) then
       begin
           {Desativa}
           Grp02.Visible          := False;
           Grp03.Visible          := False;
           grpVendedor.Visible    := false;
           Grp05.Visible          := False;
           Grp06.Visible          := False;
           Grp07.Visible          := False;
           Grp09.Visible          := False;
           pOrigem.Visible        := False;
           {Habilitar}
           Grp04.Visible          := true;
           Grp04.Caption          := 'Romaneio';
           Label1.Caption         := 'Nº Romaneio :';
           {Posicionar Groups}
           Grp04.Top              := 119;
           Grp08.Top              := 159;
           EditInicial.Text       := sPedido;
           //EditInicial.Text       := StrZero(EditInicial.Text,6);
           EditFinal.Text         := EditInicial.Text;
        end
    else
    if (LTBox.ItemIndex = 2) then    // Geral
       begin
           {Desativa}
           RadFaturamento.Enabled := False;
           Grp04.Visible          := False;
           Grp05.Visible          := False;
           Grp06.Visible          := False;
           pOrigem.Visible        := False;
           {Habilitar}
           Grp02.Visible          := true;
           Grp03.Visible          := True;
           grpVendedor.Visible    := True;
           Grp07.Visible          := true;
           Grp09.Visible          := False;
           {Posicionar Groups}
           Grp02.Top              := 119;
           Grp03.Top              := 161;
           grpVendedor.Top        := 224;
           Grp07.Top              := 260;
           Grp08.Top              := 333;
       end
     else
     if (LTBox.ItemIndex = 3) then  // Por Vendedor
       begin
           {Desativa}
           Grp02.Visible          := False;
           Grp04.Visible          := False;
           Grp05.Visible          := False;
           Grp06.Visible          := False;
           Grp09.Visible          := False;
           pOrigem.Visible        := False;
           {Habilitar}
           RadFaturamento.Enabled := True;
           RadEntrada.Caption     := 'Data Entrada';
           Grp03.Visible          := true;
           grpVendedor.Visible    := true;
           Grp07.Visible          := true;
           {Posicionar Groups}
           Grp03.Top              := 119;
           grpVendedor.Top        := 184;
           Grp07.Top              := 218;
           Grp08.Top              := 290;
       end
    else
    if (LTBox.ItemIndex = 4) or (LTBox.ItemIndex = 5) then
       begin
           {Desativa}
           RadEntrega.Enabled     := False;
           RadFaturamento.Enabled := False;
           RadEntrada.Caption     := 'Data Emissão';
           Grp02.Visible          := False;
           Grp03.Visible          := False;
           grpVendedor.Visible    := False;
           Grp04.Visible          := False;
           Grp05.Visible          := False;
           Grp06.Visible          := False;
           Grp09.Visible          := False;
           pOrigem.Visible        := False;
           {Habilitar}
           Grp07.Visible          := true;
           EditDataI.Date         := now;  //data de hoje
           EditDataF.Date         := now;  //Data De Hoje.
           {Posicionar Groups}
           Grp07.Top              := 119;
           Grp08.Top              := 190;

       end
    else
    if (LTBox.ItemIndex = 6) OR  (LTBox.ItemIndex = 9) OR (LTBox.ItemIndex = 11) then 
       begin
           {Desativa}
           Grp03.Visible          := False; // tipo de pedido / centro de custo
           Grp04.Visible          := False; // Nº do pedido de: até:
           Grp09.Visible          := False;
           pOrigem.Visible        := False;
           {Habilitar}
           Grp02.Visible          := True; // cliente
           RadEntrada.Enabled     := True;
           RadEntrega.Enabled     := True;
           RadFaturamento.Enabled := true;
           RadEntrada.Caption     := 'Data Entrada';
           grpVendedor.Visible    := true;
           Grp05.Visible          := True;
           Grp06.Visible          := True;
           Grp07.Visible          := true; // período
           Grp07.Top              := 119;
           Grp06.Top              := 192;
           Grp05.Top              := 233;
           grpVendedor.Top        := 274;
           Grp02.Top              := 307;

           Grp08.Top              := 348;

           Edt_Tipo.Text          := '999';
           Cb_Tipo.Text           := 'TODOS OS TIPOS';
       end
    else
    if (LTBox.ItemIndex = 9) OR (LTBox.ItemIndex = 11) then
       begin
           {Desativa}
           Grp02.Visible          := False;
           Grp03.Visible          := False;
           Grp04.Visible          := False;
           Grp09.Visible          := False;
           pOrigem.Visible        := False;
           {Habilitar}
           RadEntrada.Enabled     := True;
           RadEntrega.Enabled     := True;
           RadFaturamento.Enabled := true;
           RadEntrada.Caption     := 'Data Entrada';
           grpVendedor.Visible    := true;
           Grp05.Visible          := True;
           Grp06.Visible          := True;
           Grp07.Visible          := true;
           Grp07.Top              := 119;
           Grp06.Top              := 192;
           Grp05.Top              := 233;

           grpVendedor.Top        := 274;
           Grp08.Top              := 307;

           Edt_Tipo.Text          := '999';
           Cb_Tipo.Text           := 'TODOS OS TIPOS';
       end
    else
    if (LTBox.ItemIndex = 7) then
       begin
        {vendas por segmento do produto}
           {Desativa}
           Grp02.Visible          := True;
           Grp03.Visible          := True;
           grpVendedor.Visible    := True;
           Grp04.Visible          := False;
           Grp05.Visible          := False;
           Grp06.Visible          := False;
           Grp09.Visible          := False;
           pOrigem.Visible        := False;
           {Habilitar}
           RadEntrada.Enabled     := True;
           RadEntrega.Enabled     := True;
           RadFaturamento.Enabled := true;
           RadEntrada.Caption     := 'Data Entrada';
           Grp07.Visible          := True;
           Grp02.Top              := 119;
           Grp03.Top              := 161;
           grpVendedor.Top        := 224;

           Grp07.Top              := 257;    //73
           Grp08.Top              := 330;
           Edt_Tipo.Text          := '999';
           Cb_Tipo.Text           := 'TODOS OS TIPOS';
       end
    else
    if (LTBox.ItemIndex = 8) then
       begin
        {gastos com frete}
           {Desativa}
           RadEntrega.Enabled     := False;
           RadFaturamento.Enabled := False;
           Grp02.Visible          := False;
           Grp03.Visible          := False;
           grpVendedor.Visible    := false;
           Grp04.Visible          := False;
           Grp06.Visible          := False;
           Grp05.Visible          := false;
           pOrigem.Visible        := False;
           {Habilitar}
           RadEntrada.Enabled := true;
           RadEntrada.Checked := true;
           RadEntrada.Caption     := 'Data Entrada';
           Grp07.Visible          := true;
           Grp09.Visible          := true;
           Grp07.Top              := 119;
           Grp09.Top              := 195;
           Grp08.Top              := 255;
           EdtTransp.Text          := '999';
           cbTransp.Text           := 'TODOS OS TIPOS';

       end
       else
       //totalização do orçamentos
       if (LTBox.ItemIndex = 10) then
       begin
           RadEntrega.Enabled     := False;
           RadFaturamento.Enabled := False;
           Grp02.Visible          := False;
           Grp03.Visible          := False;
           grpVendedor.Visible    := false;
           Grp04.Visible          := False;
           Grp06.Visible          := False;
           Grp05.Visible          := false;
           {Habilitar}
           RadEntrada.Enabled := true;
           RadEntrada.Checked := true;
           RadEntrada.Caption     := 'Data Entrada';
           Grp07.Visible          := true;
           Grp09.Visible          := false;
           pOrigem.Visible        := True;
           Grp07.Top              := 119;
           pOrigem.Top            := 195;
           Grp08.Top              := 228;
       end
       else
       if (LTBox.ItemIndex = 12) then
       begin
           RadEntrega.Enabled     := False;
           RadFaturamento.Enabled := False;
           Grp02.Visible          := False;
           Grp03.Visible          := False;
           grpVendedor.Visible    := false;
           Grp04.Visible          := False;
           Grp06.Visible          := True;
           Grp05.Visible          := false;
           {Habilitar}
           RadEntrada.Enabled := true;
           RadEntrada.Checked := true;
           RadEntrada.Caption     := 'Data Entrada';
           Grp07.Visible          := true;
           Grp09.Visible          := false;
           pOrigem.Visible        := false;
           Grp07.Top              := 119;
           Grp06.top              := 195;
           Grp08.Top              := 228;
       end
    else
    if (LTBox.ItemIndex = 13)  then
       begin
           {Desativa}
           Grp02.Visible          := False;
           Grp03.Visible          := False;
           Grp04.Visible          := False;
           Grp05.Visible          := False;
           Grp06.Visible          := False;
           Grp09.Visible          := False;
           RadEntrega.Enabled     := False;
           RadFaturamento.Enabled := False;
           {Habilitar}
           RadEntrada.Enabled     := True;
           RadEntrada.Caption     := 'Data Entrada';
           grpVendedor.Visible    := true;
           pOrigem.Visible        := True;
           Grp07.Visible          := true;
           Grp07.Top              := 119;
           grpVendedor.Top        := Grp07.Top + Grp07.Height;
           pOrigem.Top            := grpVendedor.Top + grpVendedor.Height;
           Grp08.Top              := pOrigem.Top + pOrigem.Height;
       end

       ;

         // relatorio  geral e relatorio por representante
     if (LTBox.ItemIndex = 2)or (LTBox.ItemIndex = 3) then
        begin
         // default tipo = 15 VENDAS
           EdtTipo.Text  := '15';
           //EdtTipo.Text  := StrZero(EdtTipo.Text,EdtTipo.MaxLength);
           if CdsTipo.Locate('OPV_CODIGO',EdtTipo.Text,[]) then
              CbTipo.Text := CdsTipoOPV_DESCRICAO.AsString
           else
              begin
                  EdtTipo.Text := '';
                  CbTipo.SetFocus;
              end;
         end;


    FormGImpPedido.AutoSize := true;
end;

procedure TFormGImpPedido.LTBoxClick(Sender: tObject);
begin
    LayOut;
end;

procedure TFormGImpPedido.SqlCdsPedidoAfterScroll(DataSet: TDataSet);
var
   sEmpresa:String;
   QryReg:TSQLQuery;
begin
   QryReg := TSQLQuery.Create(Nil);
    try
      sEmpresa := '';

      QryReg.SQLConnection := DataCadastros.SQLConnection1;
      QryReg.SQL.Clear;
      QryReg.SQL.Add('Select PRODUTOS from SHAREDB');
      QryReg.Open;
      if (QryReg.FieldByName('PRODUTOS').AsString = 'E') then
         begin
            sEmpresa := ' and PRD.emp_codigo = '+QuotedStr(DBINICIO.EMPRESA.EMP_CODIGO);
         end;
      QryReg.Close;
      FreeAndNil(QryReg);


      wSql1 := 'Select PIT.*,PTI.PTI_SIGLA,';
      wSql2 := 'PRD.PRD_UND,PRD.PRD_PESOKG,PRD.prd_pesoliq,PRD.PRD_PESOLIQ,PRD.PRD_DCVAR1,PRD.PRD_DCVAR2,PRD.PRD_DCVAR3,PRD.PRD_DCVAR4,PRD.PRD_DCVAR5,PRD.PRD_DCVAR6,PRD.PRD_DCVAR7,PRD.PRD_DCVAR8 from PED_IT01 PIT ';
      wSql3 := 'LEFT JOIN PRD0000 PRD ON (PIT.PRD_REFER = PRD.PRD_REFER '+sEmpresa+') LEFT JOIN PRD_TIPO PTI ON (PRD.PTI_CODIGO = PTI.PTI_CODIGO) ';

      SqlCdsItenPedi.Close;
      SqlCdsItenPedi.SQL.Clear;
      SqlCdsItenPedi.SQL.Text := SQLDEF('PEDIDOS',wSql1+wSql2+wSql3,'where PIT.PED_CODIGO = '''+SqlCdsPedidoPED_CODIGO.AsString+'''','PIT.PRF_REGISTRO','PIT.');
      SqlCdsItenPedi.Open;
      cdsItemPedi.Open;
  //    SqlCdsItenPedi.First;

    if LTBox.ItemIndex = 0 then
    begin
      wQTDE_ITENS:= cdsItemPedi.RecordCount;
      wPAG_TOTAL := 1;
      if (wQTDE_ITENS > 1) then
         wPAG_TOTAL := Ceil(wQTDE_ITENS/13);
     end else

    if LTBox.ItemIndex <> 1 then
    begin
      wQTDE_ITENS:= cdsItemPedi.RecordCount;
      wPAG_TOTAL := (wQTDE_ITENS mod 25);
      if (wPAG_TOTAL > 1) then
         begin
            wPAG_TOTAL := (wQTDE_ITENS DIV 25);
            wPAG_TOTAL := wPAG_TOTAL + 1;
         end
      else
         begin
            wPAG_TOTAL := (wQTDE_ITENS DIV 25);
            if wPAG_TOTAL = 0 then
               wPAG_TOTAL := 1;
         end;
     end else
     begin
      wQTDE_ITENS:= cdsItemPedi.RecordCount;
      wPAG_TOTAL := (wQTDE_ITENS mod 11);
      if (wPAG_TOTAL > 1) then
         begin
            wPAG_TOTAL := (wQTDE_ITENS DIV 11);
            wPAG_TOTAL := wPAG_TOTAL + 1;
         end
      else
         begin
            wPAG_TOTAL := (wQTDE_ITENS DIV 11);
            if wPAG_TOTAL = 0 then
               wPAG_TOTAL := 1;
         end;
     end;



    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao localizar os itens do pedido !'+e.message));
    end;
end;

procedure TFormGImpPedido.ppHeaderBand1BeforePrint(Sender: tObject);
begin
    LBL_00_EMPRESA.Caption := DBINICIO.EMPRESA.Razao;
end;

procedure TFormGImpPedido.SqlCdsRel01CalcFields(DataSet: TDataSet);
Var
  wPED_MES:String[2];
begin
    if (RadEntrada.checked ) then
       begin
           wPED_MES := Copy(DateToStr(SqlCdsRel01PED_DTENTRADA.AsDateTime),4,2);
       end;
    if (RadEntrega.checked ) then
       begin
           wPED_MES := Copy(DateToStr(SqlCdsRel01PED_DTSAIDA.AsDateTime),4,2);
       end;
    SqlCdsRel01PED_MES_CC.AsString := wPED_MES;
end;

procedure TFormGImpPedido.EdtClieKeyPress(Sender: tObject; var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
           //beep;
           Key := #0;
       end;
end;

procedure TFormGImpPedido.CbClienteEnter(Sender: tObject);
begin
    CbCliente.SelectAll;
end;

procedure TFormGImpPedido.EdtClieEnter(Sender: tObject);
begin
    EdtClie.SelectAll;
end;

procedure TFormGImpPedido.EdtClieExit(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    EdtClie.Text := StrZero(EdtClie.Text,EdtClie.MaxLength);
    if SqlCdsClie.Locate('CLI_CODIGO',EdtClie.Text,[]) then
       CbCliente.Text := SqlCdsClieCLI_RAZAO.AsString
    else
       begin
           EdtClie.Text := '';
           CbCliente.SetFocus;
       end;
    screen.Cursor := crDefault;
end;

procedure TFormGImpPedido.CbClienteClick(Sender: tObject);
Var
  wCodCli : String[5];
begin
    Screen.Cursor := crHourGlass;
    CbCliCod.ItemIndex := CbCliente.ItemIndex;
    wCodCli := Copy(CbCliCod.Text,1,5);
    if CbCliCod.ItemIndex = 0  then
        EdtClie.Clear;
    if SqlCdsClie.Locate('CLI_CODIGO',wCodCli,[]) then
       EdtClie.Text := SqlCdsClieCLI_CODIGO.AsString;
    Screen.Cursor   := crDefault;
end;

procedure TFormGImpPedido.CbRepClick(Sender: tObject);
Var
  wCodRep : String[3];
begin
    Screen.Cursor := crHourGlass;
    CbRepCod.ItemIndex := CbRep.ItemIndex;
    if CbRep.Text = 'TODOS' then
    begin
       EdtRep.Text := '';
       Screen.Cursor   := crDefault;
    end
    else begin
      wCodRep := Copy(CbRepCod.Text,1,3);
      if SqlCdsRep.Locate('REP_CODIGO',wCodRep,[]) then
         EdtRep.Text := SqlCdsRepREP_CODIGO.AsString;
      Screen.Cursor   := crDefault;
    end;
end;

procedure TFormGImpPedido.CbRepEnter(Sender: tObject);
begin
    CbRep.SelectAll;
end;

procedure TFormGImpPedido.EdtRepExit(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    EdtRep.Text := StrZero(EdtRep.Text,EdtRep.MaxLength);
    if SqlCdsRep.Locate('REP_CODIGO',EdtRep.Text,[]) then
       CbRep.Text := SqlCdsRepREP_NOME.AsString
    else
       begin
           EdtRep.Text := '';
           CbRep.SetFocus;
       end;
    screen.Cursor := crDefault;
end;

procedure TFormGImpPedido.ppHeaderBand2BeforePrint(Sender: tObject);
begin
    LBL_01_EMPRESA.Caption := DBINICIO.EMPRESA.Razao;
end;


procedure TFormGImpPedido.ppLabel100GetText(Sender: TObject; var Text: string);
begin
  inherited;
  text:= 'Período de  '+EditDataI.Text+'  até  '+EditDataF.Text+'';
end;

procedure TFormGImpPedido.ppOrigemGetText(Sender: TObject; var Text: string);
begin
  inherited;
  if cbOrigem.idRetorno <> '' then
   text:= 'Origem: '+ cbOrigem.CDS.FieldByName('cori_Descricao').AsString
  else
    text:= 'Todas origens';
end;

procedure TFormGImpPedido.ppLabel86GetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text:= DBINICIO.EMPRESA.Razao;
end;

procedure TFormGImpPedido.ppSystemVariable12GetText(Sender: TObject; var Text: string);
begin
  inherited;
    text:= StringReplace(text,'of','de',[rfReplaceAll]);
end;

procedure TFormGImpPedido.qRel05CalcFields(DataSet: TDataSet);
begin
  inherited;
    if (qRel05PED_SITUACAO.AsString = 'F') then
       qRel05PED_STATUS_CC.AsString := 'À FATURAR';
    if (qRel05PED_SITUACAO.AsString = 'P') then
       qRel05PED_STATUS_CC.AsString := 'PARCIAL';
    if (qRel05PED_SITUACAO.AsString = 'T') then
       qRel05PED_STATUS_CC.AsString := 'FATURADO';
end;

procedure TFormGImpPedido.PaginaGetText(Sender: TObject; var Text: string);
begin
  inherited;
  text:= StringReplace(text,'of','de',[rfReplaceAll]);
  text:= StringReplace(text,'Page','Página',[rfReplaceAll]);
end;

procedure TFormGImpPedido.EdtTipoExit(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    if EdtTipo.Text <> '' then
       begin
           EdtTipo.Text  := StrZero(EdtTipo.Text,EdtTipo.MaxLength);
           if CdsTipo.Locate('OPV_CODIGO',EdtTipo.Text,[]) then
              CbTipo.Text := CdsTipoOPV_DESCRICAO.AsString
           else
              begin
                  EdtTipo.Text := '';
                  CbTipo.SetFocus;
              end;
       end
    else
       begin
           CbTipo.ItemIndex := 0;
           CbTipo.Text := 'TODOS';
       end;
    screen.Cursor := crDefault;
end;

procedure TFormGImpPedido.CbTipoClick(Sender: tObject);
begin
    if CbTipo.ItemIndex <> 0 then
       begin
           if CdsTipo.Locate('OPV_DESCRICAO',CbTipo.Text,[])  then
              begin
                  EdtTipo.Text := StrZero(CdsTipoOPV_CODIGO.AsString,EdtTipo.MaxLength);
              end;
       end
    else
       begin
           EdtTipo.Text := '';
       end;
end;

procedure TFormGImpPedido.cbTranspClick(Sender: TObject);
Var
  wCodTransp : String[3];
begin
    Screen.Cursor := crHourGlass;
    cbTranspCod.ItemIndex := cbTransp.ItemIndex;
    wCodTransp := Copy(cbTranspCod.Text,1,3);
    if CdsTransp.Locate('TRP_CODIGO',wCodTransp,[]) then
       EdtTransp.Text := CdsTranspTRP_CODIGO.AsString
    else
       EdtTransp.Text := '999';
    Screen.Cursor   := crDefault;
end;

procedure TFormGImpPedido.cbTranspEnter(Sender: TObject);
begin
  cbTransp.SelectAll;
end;

procedure TFormGImpPedido.SqlCdsRel02CalcFields(DataSet: TDataSet);
begin
    SqlCdsRel02PED_PENDENTE_CC.AsCurrency := (SqlCdsRel02WVALOR_PEDIDO_LIQUIDO.AsCurrency -(SqlCdsRel02WVALOR_FATURADO_LIQUIDO.AsCurrency));
    SqlCdsRel02Comissao_CC.AsCurrency     := ((SqlCdsRel02PED_COMIS1.AsCurrency/100) * SqlCdsRel02WVALOR_PEDIDO_LIQUIDO.AsCurrency);
end;


procedure TFormGImpPedido.Rel_Contagem_Orcamentos;
var condicao:string;
 Const
  meses : array[1..12] of string = ('Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro');
begin
  condicao := ' and PED_DTENTRADA BETWEEN  '+ DateToSQL(EditDataI.Date) +' and ' + DateToSQL(EditDataF.Date) ;
  if cbOrigem.idRetorno <> '' then
    condicao := condicao+ ' and cori_codigo = ' + cbOrigem.idRetorno;

   CdsTotaOrcamentos.close;
   //CdsTotaOrcamentos.EmptyDataSet;
   CdsTotaOrcamentos.CreateDataSet;
    // orcamento solicitados
   OpenAux(' SELECT EXTRACT (MONTH FROM PED_DTENTRADA) mes , COUNT(*) num '+
           ' FROM PED0000 PE '+
           ' WHERE  PED_FOI_ORCAMENTO = ''S''  '+
            condicao +
            'GROUP BY  EXTRACT (MONTH FROM PED_DTENTRADA) ');

   if not qaux.IsEmpty then
   begin
     while not qAux.Eof do
     begin
       CdsTotaOrcamentos.Insert;
       CdsTotaOrcamentosMes.AsString := meses[ qAux.FieldByName('mes').AsInteger];
       CdsTotaOrcamentosOrcaSoli.AsInteger :=  qAux.FieldByName('num').AsInteger;
       CdsTotaOrcamentosDigMes.AsInteger  := qAux.FieldByName('mes').AsInteger;
       CdsTotaOrcamentos.Post;
       qAux.Next;
     end;


   end;
   //orcamento faturados
   OpenAux('SELECT EXTRACT (MONTH FROM PED_DTENTRADA) mes ,SUM(PED_VLFATURADO) PED_VLTOTAL_BRUTO, COUNT(*) num  '+
           ' FROM PED0000 PE  '+
           ' WHERE  PED_SITUACAO IN ( ''T'', ''P'') AND PED_FOI_ORCAMENTO = ''S'' '+
           condicao+
           ' GROUP BY  EXTRACT (MONTH FROM PED_DTENTRADA)  ');
   qAux.First;
   if not qaux.IsEmpty then
   begin
     while not qAux.Eof do
     begin
       if CdsTotaOrcamentos.Locate('DigMes',qAux.FieldByName('mes').AsInteger,[]) then // se já existe o mês
         CdsTotaOrcamentos.Edit
       else
         CdsTotaOrcamentos.Insert;

       CdsTotaOrcamentosMes.AsString := meses[ qAux.FieldByName('mes').AsInteger];
       CdsTotaOrcamentosOrcaEfetivados.AsInteger :=  qAux.FieldByName('num').AsInteger;
       CdsTotaOrcamentosTotalVendas.AsFloat := qAux.FieldByName('PED_VLTOTAL_BRUTO').AsFloat;
       CdsTotaOrcamentosDigMes.AsInteger  := qAux.FieldByName('mes').AsInteger;
       CdsTotaOrcamentos.Post;
       qAux.Next;
     end;


   end;
   //vendas somente aquelas que nuncam foram vendas
   OpenAux(' SELECT EXTRACT (MONTH FROM PED_DTENTRADA) mes ,SUM(PED_VLFATURADO) PED_VLTOTAL_BRUTO, COUNT(*) num '+
           ' FROM PED0000 PE '+
           ' WHERE  PED_SITUACAO IN ( ''T'', ''P'') AND PED_FOI_ORCAMENTO =''N'' '+
            condicao +
            'GROUP BY  EXTRACT (MONTH FROM PED_DTENTRADA) ');
  qAux.First;
   if not qaux.IsEmpty then
   begin
     while not qAux.Eof do
     begin
       if CdsTotaOrcamentos.Locate('DigMes',qAux.FieldByName('mes').AsInteger,[]) then // se já existe o mês
         CdsTotaOrcamentos.Edit
       else
         CdsTotaOrcamentos.Insert;

       CdsTotaOrcamentosMes.AsString := meses[ qAux.FieldByName('mes').AsInteger];
       CdsTotaOrcamentosVendasRealizadas.AsInteger :=  qAux.FieldByName('num').AsInteger;
       CdsTotaOrcamentosTotalVendas.AsFloat := CdsTotaOrcamentosTotalVendas.AsFloat+ qAux.FieldByName('PED_VLTOTAL_BRUTO').AsFloat;
       CdsTotaOrcamentosDigMes.AsInteger  := qAux.FieldByName('mes').AsInteger;
       CdsTotaOrcamentos.Post;
       qAux.Next;
     end;


   end;
   if CdsTotaOrcamentos.IsEmpty then
     raise Exception.Create('Não foi encontrados pedidos no período');

   if RadVideo.checked  then
      begin
          ppTransp.DeviceType := 'Screen';
      end;
   if RadImpressora.checked  then
      begin
          ppTransp.ShowPrintDialog := true;
          ppTransp.DeviceType      := 'Printer';
      end;


  // ppOrigem.Visible :=  cbOrigem.idRetorno <> '';
   RBuilderPreview(ppOrcamentos);
   CdsTotaOrcamentos.close;
end;


procedure TFormGImpPedido.Edt_TipoExit(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    if (Edt_Tipo.Text <> '') then
       begin
           if CdsTipo.Locate('OPV_CODIGO',Edt_Tipo.Text,[]) then
              begin
                  Cb_Tipo.Text   := CdsTipoOPV_DESCRICAO.AsString;
                  Edt_Tipo.Text := StrZero(Edt_Tipo.Text,Edt_Tipo.MaxLength);
              end
           else
              begin
                  Edt_Tipo.Text := '999';
                  Cb_Tipo.Text := 'TODOS OS TIPOS';
                  Cb_Tipo.SetFocus;
                  Cb_Tipo.SelectAll;
              end;
       end
    else
       begin
           Cb_Tipo.ItemIndex := 0;
           Cb_Tipo.Text := 'TODOS OS TIPOS';
       end;
    screen.Cursor := crDefault;
end;

procedure TFormGImpPedido.Cb_TipoClick(Sender: tObject);
begin
    if (Cb_Tipo.ItemIndex <> 0) then
       begin
           if CdsTipo.Locate('OPV_DESCRICAO',Cb_Tipo.Text,[])  then
              begin
                  Edt_Tipo.Text := StrZero(CdsTipoOPV_CODIGO.AsString,Edt_Tipo.MaxLength);
              end
           else
              begin
                  Edt_Tipo.Text := '999';
                  Cb_Tipo.Text  := 'TODOS OS TIPOS';
              end;
       end
    else
       begin
           Edt_Tipo.Text := '999';
           Cb_Tipo.Text  := 'TODOS OS TIPOS';
       end;
end;

procedure TFormGImpPedido.Cb_TipoExit(Sender: tObject);
begin
    if (Cb_Tipo.Text <> '') then
       begin
           if CdsTipo.Locate('OPV_DESCRICAO',Cb_Tipo.Text,[])  then
              begin
                  Edt_Tipo.Text := StrZero(CdsTipoOPV_CODIGO.AsString,Edt_Tipo.MaxLength);
              end
           else
              begin
                  Edt_Tipo.Text := '999';
                  Cb_Tipo.Text  := 'TODOS OS TIPOS';
              end;
       end
    else
       begin
           Edt_Tipo.Text := '999';
           Cb_Tipo.Text  := 'TODOS OS TIPOS';
       end;
end;

procedure TFormGImpPedido.cdsVendaSegCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsVendaSegCC_REPRES.AsCurrency :=  ((CdsVendaSegTOTAL_FAT.AsCurrency * 100)/CdsVendaSegTOTAL_GERAL_FAT.value);
end;

procedure TFormGImpPedido.ImprimiVendasSegmento;
// Vendas por Linha dos Produtos
var
wGroup :String;
begin

   wSQL1  := 'select Sum(I1.PRF_QTDE)AS QTDE ,sum(I1.PRF_QTDEFAT * I1.PRF_PRECO)AS TOTAL_FAT ,sum(I1.PRF_QTDE * I1.PRF_PRECO)AS TOTAL_PED ,P1.LIN_CODIGO,L1.LIN_DESCRI from PED_IT01 I1 '+
             ' join  ped0000 pe on pe.emp_codigo = i1.emp_codigo and pe.ped_codigo = i1.ped_codigo and PED_SITUACAO <> '+QuotedStr('C')+
             ' left join PRD0000 P1 on(I1.PRD_REFER = P1.PRD_REFER  AND i1.EMP_CODIGO = p1.EMP_CODIGO) ';
   wSQL2  := 'left join PRD_LINHA L1 on (L1.LIN_CODIGO = P1.lIN_CODIGO)';

   wGroup := ' group by P1.LIN_CODIGO,L1.LIN_DESCRI ';

   if RadEntrada.checked  then
       wSQL3 := ' where PED_DTENTRADA between '''+DataAmericana(EditDataI.Text)+''' and ' + QuotedStr(DataAmericana(EditDataF.Text))
   else
   if RadEntrega.checked  then
       wSQL3 := ' where I1.PED_CODIGO in(select PED_CODIGO from NF0001 Where NF_SAIDA between '''+DataAmericana(EditDataI.Text)+''' and '''+DataAmericana(EditDataF.Text)+''')'
   else
     if RadFaturamento.checked  then
       wSQL3 := ' where I1.PED_CODIGO in(select PED_CODIGO from FAT0000 Where FAT_DTEMIS between '''+DataAmericana(EditDataI.Text)+''' and '''+DataAmericana(EditDataF.Text)+''')'   ;

  {Selecionou um cliente}
  if EdtClie.Text <> '' then
      wSQL3 :=  wSQL3  + ' AND Pe.CLI_CODIGO = '+QuotedStr( EdtClie.Text);

  { tpo de pedido}
  if EdtTipo.Text <> '' then
     wSQL3 :=  wSQL3  + ' AND pe.OPV_CODIGO = '+QuotedStr( EdtTipo.Text);

   {centro de custo}
  if EdProjetoObraCodigo.Text <> '' then
   wSQL3 :=  wSQL3  + ' AND pe.PCX_CODIGO =  '+QuotedStr( EdProjetoObraCodigo.Text);

  {selecionar vendedor}
  if EdtRep.Text <> '' then
     wSQL3 :=  wSQL3  + ' AND Pe.REP_CODIGO = '+QuotedStr( EdtRep.Text);

   CdsVendaSeg.Close;
   //SqlCdsVendaSeg.CommandText := SqlDef('PEDIDOS',wSQL1,wSQL2+wGroup,'order by TOTAL_FAT Desc','I1.');
   SqlCdsVendaSeg.SQL.Clear;
   {Verifica o compartilhamento se exclusivo}
    if not chkMultiempresa.Checked and (share('PEDIDOS') = 'E') then
      wSQL3 := wSQL3 + ' AND i1.EMP_CODIGO = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO)
    else if chkMultiempresa.Checked then
      wSQL3 := wSQL3 + ' and '+ ' i1.emp_codigo in ('+fListaEmpresas.commatext+')';


   SqlCdsVendaSeg.SQL.Text := wSQL1 + wSQL2 + wSQL3 + wGroup;
   if DBInicio.IsDesenvolvimento then
      CopyToClipboard(SqlCdsVendaSeg.SQL.Text);
   CdsVendaSeg.Open;
   if CdsVendaSeg.IsEmpty then
      GeraException('Não foi encontrado informações');
   SqlCdsVendaSeg.IndexDefs.Update;

//   SqlCdsVendaSeg.IndexFieldNames := 'TOTAL_FAT'desc;

   if RadVideo.checked  then
      begin
          ppRVendaSeg.DeviceType := 'Screen';
      end;
   if RadImpressora.checked  then
      begin
          ppRVendaSeg.ShowPrintDialog := true;
          ppRVendaSeg.DeviceType      := 'Printer';
      end;

   ppLblSegEmpresa.Caption := DBINICIO.EMPRESA.RAZAO;
   ppLblperiodo.Caption    := 'Período de  '+EditDataI.Text+'  até  '+EditDataF.Text+'';

   RBuilderPreview(ppRVendaSeg);

end;

function TFormGImpPedido.Imprimir_End_Entrega: Boolean;
begin
    if (Trim(SqlCdsPedidoCLI_ENDERE.AsString) = Trim(SqlCdsPedidoCLI_ENDENTR.AsString))
    and(Trim(SqlCdsPedidoCLI_CIDADE.AsString) = Trim(SqlCdsPedidoCLI_CIDENTR.AsString)) then
       Result := False
    else
       if ((Trim(SqlCdsPedidoCLI_CIDENTR.AsString))<> '') then
          Result := True
       else
          Result := False;
end;


procedure TFormGImpPedido.ImprimirPedido;
var
  wLinha,wQtdeItens:Integer;
  WTOT_UNITARIO,WTOT_QTDE,WPESO_TOTAL, wDescontoTotal:Double;
  wPedido: String;
begin
   // COPIA DO PEDIDO

    wPagina   := 0;


    RDprintPedidos2.Impressora := Epson;
    RDprintPedidos2.TamanhoQteLinhas := 33;
    if RadVideo.checked  then
       begin
           RDprintPedidos2.OpcoesPreview.Preview := True;
           RDprintPedidos2.Abrir;
       end
    else
       begin
           RDprintPedidos2.OpcoesPreview.Preview := False;
           RDprintPedidos2.Abrir;
           if not RDprintPedidos2.Setup  then
              exit;
       end;
    wPedido := SqlCdsPedidoPED_CODIGO.AsString;
    while not SqlCdsPedido.Eof do
     begin
         //     0         1         2         3         4         5         6         7         8         9         0         1         2         3      7
         //     012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567
         //                                                                                                                                                   Pagina Nº: 01/02
         Cabecalho2;
         if (wPagina=1) then
            begin

                RDprintPedidos2.ImpF(4 ,1  ,'CLIENTE: '+SqlCdsPedidoCLI_CODIGO.AsString+' - '+SqlCdsPedidoCLI_RAZAO.AsString,[]);
                RDprintPedidos2.ImpD(4 ,80  ,'CNPJ/CNPF: '+MascraCNPJ_CNPF(SqlCdsPedidoCLI_CGC.AsString),[]);
                RDprintPedidos2.Impf(5 ,1  ,'ENDERECO: '+SqlCdsPedidoCLI_ENDERE.AsString+' - BAIRRO: '+SqlCdsPedidoCLI_BAIRRO.AsString,[]);
                RDprintPedidos2.Impf(6 ,1  ,'CEP: '+MascaraCep(SqlCdsPedidoCLI_CEP.AsString)+' - CIDADE: '+SqlCdsPedidoCLI_CIDADE.AsString+'-'+SqlCdsPedidoCLI_UF.AsString,[]);
                RDprintPedidos2.Impf(7 ,1  ,'FONE: '+MascaraFone(SqlCdsPedidoCLI_FONE.AsString)+' - CONTATO: '+SqlCdsPedidoCLI_CONTATO.AsString,[]);
                RDprintPedidos2.ImpD(7 ,80  ,'VENDEDOR: '+SqlCdsPedidoREP_CODIGO.AsString+' '+SqlCdsPedidoREP_NOME.AsString,[]);
                RDprintPedidos2.ImpF(8,1   ,'--------------------------------------------------------------------------------',[]);
                RDprintPedidos2.ImpF(9,1  ,'REFERENCIA            DESCRICAO DOS PRODUTOS     QTDE     PRECO       SUBTOTAL  '  ,[]);
                RDprintPedidos2.ImpF(10,1  ,'--------------------------------------------------------------------------------',[]);
                wLinha := 11;
            end;
         WTOT_QTDE   := 0;
         WPESO_TOTAL := 0;
         wDescontoTotal := 0;
         SqlCdsItenPedi.First;
         wQtdeItens  := 1;
         while not SqlCdsItenPedi.Eof do
          begin

              RDprintPedidos2.ImpF (wlinha,1  ,COPY(SqlCdsItenPediPRD_REFER.AsString,1,20),[]);
              RDprintPedidos2.ImpF  (wlinha,22 ,COPY(SqlCdsItenPediPRF_PRDDESCRI.AsString,1,28),[]);
              RDprintPedidos2.ImpD(wlinha,55 ,SqlCdsItenPediPRF_QTDE.AsString,[]);
              RDprintPedidos2.ImpD(wlinha,68 ,FormatFloat('###,###,###,##0.00',SqlCdsItenPediPRF_PRECO_BRUTO.AsCurrency) ,[]);
              WTOT_UNITARIO := (SqlCdsItenPediPRF_QTDE.AsCurrency * SqlCdsItenPediPRF_PRECO_BRUTO.AsCurrency);
              wDescontoTotal := wDescontoTotal + (SqlCdsItenPediPRF_QTDE.AsCurrency * SqlCdsItenPediPRF_PRECO_BRUTO.AsCurrency) - (SqlCdsItenPediPRF_QTDE.AsCurrency * SqlCdsItenPediPRF_PRECO.AsCurrency);
              RDprintPedidos2.ImpD(wlinha,80 ,FormatFloat('###,###,###,##0.00',WTOT_UNITARIO),[]);
              Inc(wLinha);
              Inc(wQtdeItens);
              
              if (SqlCdsItenPediPRF_PRODUTO_AGREGADO.AsString = 'N') then
                 WTOT_QTDE := (WTOT_QTDE + SqlCdsItenPediPRF_QTDE.AsCurrency);// soma o total das quantidades.
              WPESO_TOTAL  := WPESO_TOTAL +  (SqlCdsItenPediPRD_PESOLIQ.AsCurrency * SqlCdsItenPediPRF_QTDE.AsCurrency);
              SqlCdsItenPedi.Next;

              if (wLinha >=24) then
                 begin
                 RDprintPedidos2.ImpF(26,1  ,'CONFERIR O MATERIAL NO ATO DA ENTREGA. NAO ACEITAMOS RECLAMACOES POSTERIORES.',[]);
                 RDprintPedidos2.ImpF(28,1  ,'PROXIMA PAGINA',[]);
                 RDprintPedidos.NovaPagina;
                 Cabecalho2;
                 wLinha := 7;
                 end;
          end;

         if (wLinha <= 25) then
            begin
                RDprintPedidos2.ImpF(25,1  ,'CONFERIR O MATERIAL NO ATO DA ENTREGA. NAO ACEITAMOS RECLAMACOES POSTERIORES.',[]);
                RDprintPedidos2.ImpF(26,1 ,'QUANTIDADE:'+FloatToStr(WTOT_QTDE),[]);
                RDprintPedidos2.ImpF(26,50 ,'PESO LIQUIDO      :',[]);
                RDprintPedidos2.ImpD(26,80,FormatFloat('###,###,###,##0.000',WPESO_TOTAL),[]);
                RDprintPedidos2.ImpF(27,50 ,'TOTAL DOS PRODUTOS:',[]);
                RDprintPedidos2.ImpD(27,80,FormatFloat('###,###,###,##0.00',SqlCdsPedidoPED_VLTOTAL_LIQ.AsCurrency + wDescontoTotal),[]);
                RDprintPedidos2.ImpF(28,50 ,'FRETE             :',[]);
                RDprintPedidos2.ImpD(28,80,FormatFloat('###,###,###,##0.00',SqlCdsPedidoPED_VLFRETE.AsFloat),[]);

                RDprintPedidos2.ImpF(29,50 ,'DESCONTO          :',[]);
                if (wDescontoTotal > 0) then
                  RDprintPedidos2.ImpF(29,59 ,FormatFloat('###0.00',(wDescontoTotal * 100) /(SqlCdsPedidoPED_VLTOTAL_LIQ.AsCurrency + wDescontoTotal))+'%',[]);
                RDprintPedidos2.ImpD(29,80,FormatFloat('###,###,###,##0.00',wDescontoTotal),[]);
                RDprintPedidos2.ImpF(29,1  ,'_______________________________________',[]);

                RDprintPedidos2.ImpF(30,1  ,'ASSINATURA',[]);
                RDprintPedidos2.ImpF  (30,50 ,'IPI               :',[]);
                RDprintPedidos2.ImpD(30,80,FormatFloat('###,###,###,##0.00',SqlCdsPedidoPED_VLTOTAL_IPI.AsCurrency),[]);
                RDprintPedidos2.ImpF  (31,50 ,'TOTAL PEDIDO      :',[]);
                RDprintPedidos2.ImpD(31,80,FormatFloat('###,###,###,##0.00',SqlCdsPedidoPED_VLTOTAL_BRUTO.AsCurrency),[]);
                wLinha := 30
            end;
         SqlCdsPedido.Next;
         if (wPedido <> SqlCdsPedidoPED_CODIGO.AsString) then
            begin
                wPagina := 0;
            end;
         RDprintPedidos2.NovaPagina;
     end;


    //FECHA
    SqlCdsPedido.Close;
    SqlCdsItenPedi.close;
    SqlCdsParam.Close;
    RDprintPedidos2.Fechar;

end;

procedure TFormGImpPedido.Cabecalho2;
begin
   Inc(wPagina);
   RDprintPedidos2.ImpF(1,1   ,DBINICIO.EMPRESA.RAZAO,[]);
   RDprintPedidos2.ImpF(1,64 ,'PAGINA Nº:  '+StrZero(IntToStr(wPagina),2)+'/'+FormatFLoat('00',(wPAG_TOTAL)),[]);

   if SqlCdsPedidoOPV_CODIGO.AsString = '16' then  //orçamento
        RDprintPedidos2.ImpF(2,1  ,'ORÇAMENTO Nº: '+SqlCdsPedidoPED_CODIGO.AsString,[])
   else
     RDprintPedidos2.ImpF(2,1  ,'PEDIDO Nº: '+SqlCdsPedidoPED_CODIGO.AsString,[]);
   RDprintPedidos2.ImpF(2,64   ,'DATA : '+SqlCdsPedidoPED_DTENTRADA.AsString,[]);
   RDprintPedidos2.ImpF(3,1   ,'--------------------------------------------------------------------------------',[]);
   if wPagina > 1 then
      begin
         RDprintPedidos2.ImpF(4,1  ,'REFERENCIA            DESCRICAO DOS PRODUTOS     QTDE     PRECO       SUBTOTAL  '  ,[]);
         RDprintPedidos2.ImpF(5,1  ,'--------------------------------------------------------------------------------',[]);
      end;
end;


procedure TFormGImpPedido.EdProjetoObraCodigoExit(Sender: tObject);
begin
   EdProjetoObraCodigo.Text := PreenchezeroEsquerda(EdProjetoObraCodigo.Text,3);
   if (EdProjetoObraCodigo.Text = '000') then
      begin
         EdProjetoObraCodigo.Clear;
         CbProjetoObra.Text := '';
      end
   else
      begin
         CbProjetoObra.TextoLocalizar := EdProjetoObraCodigo.Text;
         CbProjetoObra.Localizar := True;
         if not (CbProjetoObra.Localizado) then
            begin
               uteis.aviso('Centro de Custo não localizado com o código informado');
               CbProjetoObra.Text := '';
               EdProjetoObraCodigo.SetFocus;
               EdProjetoObraCodigo.SelectAll;
            end;
      end;

end;

procedure TFormGImpPedido.CbProjetoObraChange(Sender: tObject);
begin
   EdProjetoObraCodigo.Text := CbProjetoObra.CodigoLista;
end;

procedure TFormGImpPedido.CbProjetoObraExit(Sender: tObject);
begin
   if (CbProjetoObra.CodigoLista = '') or (CbProjetoObra.Text = '') then
      begin
         CbProjetoObra.Text := '';
         EdProjetoObraCodigo.Text := '';
      end
   else
      begin
         EdProjetoObraCodigo.Text := CbProjetoObra.CodigoLista;
      end;

end;

procedure TFormGImpPedido.FormCreate(Sender: tObject);
begin
   inherited;
  // CbProjetoObra.CarregarCombo := True;
   wVariacoes := dbInicio.GetParametroSistema('PMT_VARIACOES');
   PathNewRel := dbInicio.GetParametroSistema('PMT_PATHRELATORIO');
   fListaEmpresas:= TStringList.Create;
   fListaEmpresas := ListaEmpresasPermitidas('PERMITE');
   JvGIFAnimator1.Animate := True;
end;

procedure TFormGImpPedido.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(fListaEmpresas);
end;

procedure TFormGImpPedido.ImprimirControleDeOrcamentosNoPeriodo;
begin
  PanelAguarde.Visible := True;
  cdsOrcMes.Close;
  sqlOrcMes.SQL.Text :=
     ' SELECT DISTINCT R.REP_RAZAO, ' +
     '   EXTRACT(year FROM PED.PED_DTENTRADA) AS ANO, LPAD(EXTRACT(MONTH FROM PED.PED_DTENTRADA), 2,0) AS Mes,' +
     '   count((SELECT count(p.PED_CODIGO) FROM PED0000 p WHERE p.PED_CODIGO = ped.PED_CODIGO AND ped.PED_SITUACAO = ''F'' )) AS QtdeOrcado,' +
     '   sum((SELECT sum(p.PED_VLTOTAL_LIQ) FROM PED0000 p WHERE p.PED_CODIGO = ped.PED_CODIGO AND ped.PED_SITUACAO = ''F'' )) AS Orcado,' +
     '   avg(' +
     '       (SELECT' +
     '         count(ped2.PED_CODIGO)' +
     '       FROM PED0000 ped2' +
     '       WHERE ped2.PED_DTENTRADA BETWEEN ' + DateToSQL(EditDataI.Date) + ' AND ' + DateToSQL(EditDataF.Date)  +
     '       AND (PED2.PED_SITUACAO IN (''T'', ''P'') )' +
     '       AND ped2.EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo) +
     '       AND PED2.REP_CODIGO = PED.REP_CODIGO ' +
     '       AND EXTRACT(MONTH FROM PED2.PED_DTENTRADA) = EXTRACT(MONTH FROM PED.PED_DTENTRADA)  )' +
     '   ) AS QtdeFaturado,' +
     '   sum((SELECT sum(p.PED_VLFATURADO) FROM PED0000 p WHERE p.PED_CODIGO = ped.PED_CODIGO AND ped.PED_SITUACAO in (''T'', ''P''))) AS Faturado' +
     ' FROM PED0000 ped' +
     ' LEFT JOIN REP0000 r ON (r.REP_CODIGO = ped.REP_CODIGO)' +
     ' LEFT JOIN CLI0000 cli ON (cli.CLI_CODIGO = ped.CLI_CODIGO)' +
     ' LEFT JOIN CLIENTE_ORIGEM clo ON (clo.CORI_CODIGO = ped.CORI_CODIGO)' +
     ' LEFT JOIN  OPV0000 tpp ON (tpp.OPV_CODIGO = ped.OPV_CODIGO)' +
     ' WHERE ped.PED_DTENTRADA BETWEEN ' + DateToSQL(EditDataI.Date) + ' AND ' + DateToSQL(EditDataF.Date)  +
     ' AND ped.EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo) +
     iif(cbOrigem.idRetorno = '', '', ' AND clo.CORI_CODIGO = ' + cbOrigem.idRetorno) +
     iif(EdtRep.Text = '', '', ' AND R.REP_CODIGO  = ' + EdtRep.Text)  +
     ' GROUP BY 1,2,3' +
     ' ORDER BY 1,2,3' ;
  cdsOrcMes.Open;
  if DBInicio.IsDesenvolvimento then
    CopyToClipBoard(sqlOrcMes.SQL.Text);


  PanelAguarde.Visible := False;

  TfrxPictureView(frxOrcMes.FindObject('LogoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);
  frxOrcMes.ShowReport(true);

end;


end.
