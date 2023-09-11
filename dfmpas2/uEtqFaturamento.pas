unit uEtqFaturamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBForm, Data.DBXFirebird, Data.FMTBCd, Data.DB, RDprint, ppCtrls, ppParameter, ppDesignLayer, ppBands, ppBarCod, ppPrnabl, ppClass, ppCache, ppProd,
  ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, Datasnap.DBClient, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora, Datasnap.Provider, DataCad, ppStrtch,
  ppMemo;

type
  TfrmEtqFaturamento = class(TfrmBaseDB)
    PanEtiqueta: TPanel;
    GrBEtiqueta: TGroupBox;
    Label3: TLabel;
    Label9: TLabel;
    EditFinal: TEdit;
    EditInicial: TEdit;
    Rad_Etiq_Sistema: TRadioButton;
    Rad_Etiq_Pre_Impressa: TRadioButton;
    BitEtiqFechar: TBitBtn;
    BitImprimeEtiq: TBitBtn;
    Gb_Estilo_Etiqueta: TGroupBox;
    rbModelo1: TRadioButton;
    rbModelo3: TRadioButton;
    rbModelo2: TRadioButton;
    rbModelo4: TRadioButton;
    rbModelo5: TRadioButton;
    grpMensagem: TGroupBox;
    edtMensagem: TEdit;
    chkSolicitarQuantidade: TCheckBox;
    SqlCdsEtiqueta: TSQLQuery;
    SqlCdsEtiquetaNF_NOTANUMBER: TStringField;
    SqlCdsEtiquetaNF_QTDE: TFMTBCdField;
    SqlCdsEtiquetaCLI_RAZAO: TStringField;
    SqlCdsEtiquetaCLI_FANTASIA: TStringField;
    SqlCdsEtiquetaCLI_ENDERE: TStringField;
    SqlCdsEtiquetaCLI_BAIRRO: TStringField;
    SqlCdsEtiquetaCLI_CEP: TStringField;
    SqlCdsEtiquetaCLI_CIDADE: TStringField;
    SqlCdsEtiquetaCLI_UF: TStringField;
    SqlCdsEtiquetaCLI_FONE: TStringField;
    SqlCdsEtiquetaCLI_ENDENTR: TStringField;
    SqlCdsEtiquetaCLI_CIDENTR: TStringField;
    SqlCdsEtiquetaCLI_CEPENTR: TStringField;
    SqlCdsEtiquetaCLI_UFENTR: TStringField;
    SqlCdsEtiquetaCLI_FONENTR: TStringField;
    SqlCdsEtiquetaCLI_CONTATO: TStringField;
    SqlCdsEtiquetaTRP_RAZAO: TStringField;
    SqlCdsEtiquetaNF_NUM_NFE: TIntegerField;
    SqlCdsEtiquetaCLI_BAIENTR: TStringField;
    CdsEtiqueta: TClientDataSet;
    CdsEtiquetaCLI_RAZAO: TStringField;
    CdsEtiquetaCLI_ENDE: TStringField;
    CdsEtiquetaCLI_BAIRRO: TStringField;
    CdsEtiquetaCLI_CEP: TStringField;
    CdsEtiquetaCLI_CIDADE: TStringField;
    CdsEtiquetaCLI_UF: TStringField;
    CdsEtiquetaNF_NUM: TStringField;
    CdsEtiquetaNF_VOLUME: TStringField;
    CdsEtiquetaNF_MENSAGEM: TStringField;
    CdsEtiquetaTRANSP: TStringField;
    CdsEtiquetaREMETENTE: TStringField;
    DsEtiqueta: TDataSource;
    ppDBPEtiqueta: TppDBPipeline;
    ppDBPEtiquetappField1: TppField;
    ppDBPEtiquetappField2: TppField;
    ppDBPEtiquetappField3: TppField;
    ppDBPEtiquetappField4: TppField;
    ppDBPEtiquetappField5: TppField;
    ppDBPEtiquetappField6: TppField;
    ppDBPEtiquetappField7: TppField;
    ppDBPEtiquetappField8: TppField;
    ppDBPEtiquetappField9: TppField;
    ppDBPEtiquetappField10: TppField;
    ppDBPEtiquetappField11: TppField;
    prprtModelo1: TppReport;
    ppColumnHeaderBand2: TppColumnHeaderBand;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppColumnHeaderBand16: TppColumnHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText7: TppDBText;
    ppLabel2: TppLabel;
    ppDBText8: TppDBText;
    ppDBText16: TppDBText;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBText17: TppDBText;
    ppBarCode1: TppBarCode;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppDBText19: TppDBText;
    ppLabel12: TppLabel;
    ppColumnFooterBand1: TppColumnFooterBand;
    ppColumnFooterBand2: TppColumnFooterBand;
    ppColumnFooterBand16: TppColumnFooterBand;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    prprtModelo2: TppReport;
    ppColumnHeaderBand5: TppColumnHeaderBand;
    ppColumnHeaderBand3: TppColumnHeaderBand;
    ppColumnHeaderBand4: TppColumnHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppLabel3: TppLabel;
    ppDBText6: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppLabel4: TppLabel;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppLabel6: TppLabel;
    ppLabel11: TppLabel;
    ppDBText18: TppDBText;
    ppLabel13: TppLabel;
    ppDBText20: TppDBText;
    ppColumnFooterBand5: TppColumnFooterBand;
    ppColumnFooterBand3: TppColumnFooterBand;
    ppColumnFooterBand4: TppColumnFooterBand;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppParameterList2: TppParameterList;
    prprtModelo3: TppReport;
    ppColumnHeaderBand7: TppColumnHeaderBand;
    ppColumnHeaderBand8: TppColumnHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppLabel14: TppLabel;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppLabel15: TppLabel;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppLabel16: TppLabel;
    ppLabel18: TppLabel;
    ppBarCode2: TppBarCode;
    ppLabel20: TppLabel;
    pmgLogo: TppImage;
    plblRemetente: TppLabel;
    plblEndereco: TppLabel;
    plblTelefone: TppLabel;
    plblLine: TppLabel;
    ppDBText52: TppDBText;
    ppLabel40: TppLabel;
    ppDBText53: TppDBText;
    ppLabel41: TppLabel;
    ppColumnFooterBand8: TppColumnFooterBand;
    ppColumnFooterBand6: TppColumnFooterBand;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppParameterList3: TppParameterList;
    prprtModelo4: TppReport;
    ppColumnHeaderBand10: TppColumnHeaderBand;
    ppColumnHeaderBand11: TppColumnHeaderBand;
    ppColumnHeaderBand9: TppColumnHeaderBand;
    ppDetailBand4: TppDetailBand;
    ppLabel22: TppLabel;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppLabel23: TppLabel;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppDBText39: TppDBText;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppDBText40: TppDBText;
    ppLabel29: TppLabel;
    pbrCd1: TppBarCode;
    ppColumnFooterBand10: TppColumnFooterBand;
    ppColumnFooterBand11: TppColumnFooterBand;
    ppColumnFooterBand9: TppColumnFooterBand;
    ppDesignLayers4: TppDesignLayers;
    ppDesignLayer4: TppDesignLayer;
    ppParameterList4: TppParameterList;
    ppReport3: TppReport;
    ppColumnHeaderBand13: TppColumnHeaderBand;
    ppColumnHeaderBand14: TppColumnHeaderBand;
    ppDetailBand6: TppDetailBand;
    ppLabel30: TppLabel;
    ppDBText42: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppLabel31: TppLabel;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppLabel35: TppLabel;
    ppBarCode4: TppBarCode;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppColumnFooterBand14: TppColumnFooterBand;
    ppColumnFooterBand13: TppColumnFooterBand;
    ppDesignLayers7: TppDesignLayers;
    ppDesignLayer7: TppDesignLayer;
    ppParameterList7: TppParameterList;
    prprtModelo5: TppReport;
    ppColumnHeaderBand6: TppColumnHeaderBand;
    ppColumnHeaderBand12: TppColumnHeaderBand;
    ppDetailBand5: TppDetailBand;
    ppLabel17: TppLabel;
    ppDBText23: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText41: TppDBText;
    ppLabel19: TppLabel;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppLabel21: TppLabel;
    ppBarCode3: TppBarCode;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppDBText50: TppDBText;
    ppLabel39: TppLabel;
    ppDBText51: TppDBText;
    ppColumnFooterBand12: TppColumnFooterBand;
    ppColumnFooterBand7: TppColumnFooterBand;
    ppDesignLayers6: TppDesignLayers;
    ppDesignLayer6: TppDesignLayer;
    ppParameterList6: TppParameterList;
    SqlCdsParamEtiq: TSQLQuery;
    SqlCdsParamEtiqCET_CODIGO: TStringField;
    SqlCdsParamEtiqCET_DTCADA: TDateField;
    SqlCdsParamEtiqCET_DESCRIETIQ: TStringField;
    SqlCdsParamEtiqCET_ATIVO: TStringField;
    SqlCdsParamEtiqCET_TPIMP: TStringField;
    SqlCdsParamEtiqCET_QTDETIQ: TStringField;
    SqlCdsParamEtiqCET_ROTULO: TStringField;
    SqlCdsParamEtiqCET_INICOL1: TStringField;
    SqlCdsParamEtiqCET_INICOL2: TStringField;
    SqlCdsParamEtiqCET_INICOL3: TStringField;
    SqlCdsParamEtiqEMP_CODIGO: TStringField;
    SqlCdsParamEtiqCET_CLIENTE: TStringField;
    SqlCdsParamEtiqCET_ENDERECO: TStringField;
    SqlCdsParamEtiqCET_CIDADE: TStringField;
    SqlCdsParamEtiqCET_ESTADO: TStringField;
    SqlCdsParamEtiqCET_CEP: TStringField;
    SqlCdsParamEtiqCET_NFISCAL: TStringField;
    SqlCdsParamEtiqCET_QTDE: TStringField;
    SqlCdsParamEtiqCET_PESO: TStringField;
    SqlCdsParamEtiqCET_CODPRODUTO: TStringField;
    SqlCdsParamEtiqCET_PRODUTO: TStringField;
    SqlCdsParamEtiqCET_TRANSPORT: TStringField;
    SqlCdsParamEtiqCET_ENDTRANSP: TStringField;
    SqlCdsParamEtiqCET_CIDTRANSP: TStringField;
    SqlCdsParamEtiqCET_CEPTRANSP: TStringField;
    SqlCdsParamEtiqCET_LINHAS: TStringField;
    RdPrintEtiq1: TRDprint;
    CdsImpNota: TSQLQuery;
    CdsImpNotaNF_REGISTRO: TIntegerField;
    CdsImpNotaNF_NOTANUMBER: TStringField;
    CdsImpNotaNF_EMISSAO: TDateField;
    CdsImpNotaNF_SAIDA: TDateField;
    CdsImpNotaNF_HORASAIDA: TTimeField;
    CdsImpNotaNF_CONDPAGTO: TStringField;
    CdsImpNotaOPE_CODIGO: TStringField;
    CdsImpNotaOPE_NATUREZA: TStringField;
    CdsImpNotaOPE_AGRUPADO: TStringField;
    CdsImpNotaPED_CODIGO: TStringField;
    CdsImpNotaREP_CODIGO: TStringField;
    CdsImpNotaNF_ENTR_SAID: TStringField;
    CdsImpNotaNF_IMPRESS: TStringField;
    CdsImpNotaCLI_CODIGO: TStringField;
    CdsImpNotaNF_VLFRETE: TFMTBCdField;
    CdsImpNotaNF_VLSEGURO: TFMTBCdField;
    CdsImpNotaNF_DESP_ACES: TFMTBCdField;
    CdsImpNotaNF_ALIQ_ICMS: TFMTBCdField;
    CdsImpNotaNF_BASEICMS: TFMTBCdField;
    CdsImpNotaNF_VL_ICMS: TFMTBCdField;
    CdsImpNotaNF_VLBASESUBTRIB: TFMTBCdField;
    CdsImpNotaNF_VL_SUBTRIB: TFMTBCdField;
    CdsImpNotaNF_TOT_CSUB: TFMTBCdField;
    CdsImpNotaNF_TOT_PROD: TFMTBCdField;
    CdsImpNotaNF_TOT_NOTA: TFMTBCdField;
    CdsImpNotaNF_VL_IPI: TFMTBCdField;
    CdsImpNotaNF_BASE_IPI: TFMTBCdField;
    CdsImpNotaNF_VL_DESCTO: TFMTBCdField;
    CdsImpNotaNF_PLACAVE: TStringField;
    CdsImpNotaNF_QTDE: TFMTBCdField;
    CdsImpNotaNF_PESOBRU: TFMTBCdField;
    CdsImpNotaNF_PESOLIQ: TFMTBCdField;
    CdsImpNotaNF_ESPECIE: TStringField;
    CdsImpNotaNF_MARCA: TStringField;
    CdsImpNotaNF_NUMERO: TStringField;
    CdsImpNotaNF_INTERNO: TStringField;
    CdsImpNotaNF_CANCELADA: TStringField;
    CdsImpNotaPCL_CODIGO: TStringField;
    CdsImpNotaNF_AGRUPADO: TStringField;
    CdsImpNotaEMP_CODIGO: TStringField;
    CdsImpNotaCLI_BAIRRO: TStringField;
    CdsImpNotaCLI_CEP: TStringField;
    CdsImpNotaCLI_CGC: TStringField;
    CdsImpNotaCLI_CEPFAT: TStringField;
    CdsImpNotaCLI_CIDADE: TStringField;
    CdsImpNotaCLI_CEPENTR: TStringField;
    CdsImpNotaCLI_CIDENTR: TStringField;
    CdsImpNotaCLI_CIDFAT: TStringField;
    CdsImpNotaCLI_ENDENTR: TStringField;
    CdsImpNotaCLI_ENDERE: TStringField;
    CdsImpNotaCLI_ENDFAT: TStringField;
    CdsImpNotaCLI_INSC: TStringField;
    CdsImpNotaCLI_UF: TStringField;
    CdsImpNotaCLI_UFENTR: TStringField;
    CdsImpNotaCLI_UFFAT: TStringField;
    CdsImpNotaCLI_RAZAO: TStringField;
    CdsImpNotaCLI_FONE: TStringField;
    CdsImpNotaPED_OBSNOTA: TStringField;
    CdsImpNotaPED_FRETE: TStringField;
    CdsImpNotaPED_FRETE2: TStringField;
    CdsImpNotaTRP_CODIGO: TStringField;
    CdsImpNotaTRP_REDESP: TStringField;
    CdsImpNotaREP_NOME: TStringField;
    CdsImpNotaNF_OBS_OPER: TStringField;
    CdsImpNotaNF_OBS_PEDI: TStringField;
    CdsImpNotaAMX_CODIGO: TStringField;
    CdsImpNotaOPE_DESCRINATUREZA: TStringField;
    CdsImpNotaNF_OBSG1: TStringField;
    CdsImpNotaNF_OBSG2: TStringField;
    CdsImpNotaNF_OBSG3: TStringField;
    CdsImpNotaNF_OBSG4: TStringField;
    CdsImpNotaNF_OBSG5: TStringField;
    CdsImpNotaNF_OBSG6: TStringField;
    CdsImpNotaCLI_PESSOA: TStringField;
    CdsImpNotaNF_TP_DESCTO: TStringField;
    CdsImpNotaNF_PC_DESCTO1: TFMTBCdField;
    CdsImpNotaNF_PC_DESCTO2: TFMTBCdField;
    CdsImpNotaNF_BASE_ISS: TFMTBCdField;
    CdsImpNotaNF_VALOR_ISS: TFMTBCdField;
    CdsImpNotaOPE_REDU_ICM: TFMTBCdField;
    CdsImpNotaNF_OBS_OPER_AVISO2: TStringField;
    CdsImpNotaOPV_CODIGO: TIntegerField;
    CdsImpNotaOPE_NOTA_COMPLEMENTAR: TStringField;
    CdsImpNotaNF_OBSERVACAO: TBlobField;
    CdsImpNotaPED_OBSERVACAO: TBlobField;
    RdPrintNotaFiscal: TRDprint;
    CdsTransportadora: TClientDataSet;
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
    CdsTransportadoraTRP_ATIVO: TStringField;
    CdsTransportadoraTRP_OBSERVACAO: TMemoField;
    CdsTransportadoraCID_CODIGO: TIntegerField;
    CdsTransportadoraTRP_EMAIL: TStringField;
    CdsTransportadoraTRP_BAIRRO: TStringField;
    CdsTransportadoraTRP_PLACA: TStringField;
    CdsTransportadoraTRP_PLACAUF: TStringField;
    DspTransportadora: TDataSetProvider;
    SqlTransportadora: TSQLQuery;
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
    SqlTransportadoraTRP_ATIVO: TStringField;
    SqlTransportadoraTRP_OBSERVACAO: TMemoField;
    SqlTransportadoraCID_CODIGO: TIntegerField;
    SqlTransportadoraTRP_EMAIL: TStringField;
    SqlTransportadoraTRP_BAIRRO: TStringField;
    SqlTransportadoraTRP_PLACA: TStringField;
    SqlTransportadoraTRP_PLACAUF: TStringField;
    ppShape1: TppShape;
    rbModelo6: TRadioButton;
    rbModelo7: TRadioButton;
    rbModelo8: TRadioButton;
    prprtModelo7: TppReport;
    ppDetailBand7: TppDetailBand;
    ppDesignLayers5: TppDesignLayers;
    ppDesignLayer5: TppDesignLayer;
    ppParameterList5: TppParameterList;
    ppLabel45: TppLabel;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppLabel46: TppLabel;
    ppDBText57: TppDBText;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    lbRazaoMod7: TppLabel;
    lbEndeMod7: TppLabel;
    lbFoneMod7: TppLabel;
    ppLine3: TppLine;
    ppDBBarCode1: TppDBBarCode;
    ppDBText58: TppDBText;
    SqlCdsEtiquetaTRP_ENDERE: TStringField;
    SqlCdsEtiquetaTRP_CIDADE: TStringField;
    SqlCdsEtiquetaTRP_CEP: TStringField;
    ppDBPEtiquetappField12: TppField;
    ppDBPEtiquetappField13: TppField;
    EP: TppField;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    CdsEtiquetaTRP_CIDADE: TStringField;
    CdsEtiquetaTRP_CEP: TStringField;
    CdsEtiquetaTRP_ENDERE: TStringField;
    prprtModelo6: TppReport;
    ppDetailBand8: TppDetailBand;
    ppLabel42: TppLabel;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppLabel43: TppLabel;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppLabel44: TppLabel;
    ppBarCode5: TppBarCode;
    lblRazaoMod6: TppLabel;
    lblEnderecoMod6: TppLabel;
    lblTelefoneMod6: TppLabel;
    ppLabel52: TppLabel;
    ppDBText70: TppDBText;
    ppDesignLayers8: TppDesignLayers;
    ppDesignLayer8: TppDesignLayer;
    ppParameterList8: TppParameterList;
    prprModelo8: TppReport;
    ppDetailBand9: TppDetailBand;
    plempresaMod8: TppLabel;
    ppLabel49: TppLabel;
    ppDBText69: TppDBText;
    ppLabel50: TppLabel;
    ppDesignLayers9: TppDesignLayers;
    ppDesignLayer9: TppDesignLayer;
    ppParameterList9: TppParameterList;
    ppDBText71: TppDBText;
    SqlCdsEtiquetaENDERECO_ENTREGA: TIntegerField;
    SqlCdsEtiquetaend_entr: TStringField;
    SqlCdsEtiquetaBAIRRO_ENTR: TStringField;
    SqlCdsEtiquetaCEP_ENTR: TStringField;
    SqlCdsEtiquetaCID_ENTR: TStringField;
    SqlCdsEtiquetaestado_entr: TStringField;
    SqlCdsEtiquetanumero: TStringField;
    prprtModelo9: TppReport;
    ppDetailBand10: TppDetailBand;
    ppLabel51: TppLabel;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppDBText74: TppDBText;
    ppLabel53: TppLabel;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppDBText77: TppDBText;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLine4: TppLine;
    ppLine5: TppLine;
    lbRazaoMod9: TppLabel;
    lbEndeMod9: TppLabel;
    lbFoneMod9: TppLabel;
    ppLine6: TppLine;
    ppDBBarCode2: TppDBBarCode;
    ppDBText78: TppDBText;
    ppDBText79: TppDBText;
    ppDBText80: TppDBText;
    ppDesignLayers10: TppDesignLayers;
    ppDesignLayer10: TppDesignLayer;
    ppParameterList10: TppParameterList;
    rbModelo9: TRadioButton;
    rbModelo10: TRadioButton;
    prprtModelo10: TppReport;
    ppDetailBand12: TppDetailBand;
    ppLabel56: TppLabel;
    ppDBText81: TppDBText;
    ppDBText82: TppDBText;
    ppDBText83: TppDBText;
    ppDBText84: TppDBText;
    ppLabel57: TppLabel;
    ppDBText85: TppDBText;
    ppDBText86: TppDBText;
    ppLabel58: TppLabel;
    ppLabel62: TppLabel;
    ppDBText87: TppDBText;
    ppDesignLayers12: TppDesignLayers;
    ppDesignLayer12: TppDesignLayer;
    ppParameterList12: TppParameterList;
    ppDBText88: TppDBText;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    Remetente: TppLabel;
    lbl3: TppLabel;
    empresa: TppImage;
    rbModelo11: TRadioButton;
    prprtModelo11: TppReport;
    ppDetailBand11: TppDetailBand;
    ppLabel63: TppLabel;
    ppDBText89: TppDBText;
    ppDBText90: TppDBText;
    ppDBText91: TppDBText;
    ppDBText92: TppDBText;
    ppLabel64: TppLabel;
    ppDBText93: TppDBText;
    ppDBText94: TppDBText;
    ppLabel65: TppLabel;
    ppBarCode6: TppBarCode;
    lblRazaoMod11: TppLabel;
    lblEnderecoMod11: TppLabel;
    lblTelefoneMod11: TppLabel;
    ppLabel69: TppLabel;
    ppDBText95: TppDBText;
    ppDesignLayers11: TppDesignLayers;
    ppDesignLayer11: TppDesignLayer;
    ppParameterList11: TppParameterList;
    procedure BitImprimeEtiqClick(Sender: TObject);
    procedure BitEtiqFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
   wSQL1, WSQL2, WSQLADI, WSELECIONA, WORDEM: STRING;
   fNotaNumero: string;
   procedure AtivarACBrETQ ;
   procedure Imprimir_Etiqueta_Sistema;
   procedure ImprimeEtiquetas;
   function Gravar_End_Entrega: Boolean;
//         procedure ImprimeModelo6;
    procedure SetNotaNumero(const Value: string);
  public
        Property NotaNumero: string Read fNotaNumero Write SetNotaNumero;
  end;

var
  frmEtqFaturamento: TfrmEtqFaturamento;


Const
     STX = chr(2);
     CR  = chr(13);
     LF = chr(10);
     SOH = chr(1);


implementation

uses uteis, iniciodb, RWFUNC, Men0001;

{$R *.dfm}

{ TfrmBaseDB4 }


procedure TfrmEtqFaturamento.AtivarACBrETQ ;
begin
end ;


procedure TfrmEtqFaturamento.BitEtiqFecharClick(Sender: TObject);
begin
  inherited;
     Close;
end;

procedure TfrmEtqFaturamento.BitImprimeEtiqClick(Sender: TObject);
begin
     inherited;
     if (Rad_Etiq_Sistema.Checked) then
        Imprimir_Etiqueta_Sistema;
     if (Rad_Etiq_Pre_Impressa.Checked) then
        ImprimeEtiquetas;
end;

procedure TfrmEtqFaturamento.FormCreate(Sender: TObject);
begin
     inherited;
     self.autosize:=true;
     edtMensagem.Text := dbInicio.Empresa.sPMT_MSG_ETIQUETASISTEMA;
     aCaption:='Etiquetas ';

end;

function TfrmEtqFaturamento.Gravar_End_Entrega: Boolean;
begin
    if (trim(SqlCdsEtiquetaCLI_ENDERE.AsString) = trim(SqlCdsEtiquetaCLI_ENDENTR.AsString))
    and(trim(SqlCdsEtiquetaCLI_CIDADE.AsString) = trim(SqlCdsEtiquetaCLI_CIDENTR.AsString)) then
       Result := False
    else
       if (trim(SqlCdsEtiquetaCLI_ENDENTR.AsString)='O MESMO')
       OR (trim(SqlCdsEtiquetaCLI_ENDENTR.AsString)='MESMO') then
          Result := False
       else
       if (LENGTH(trim(SqlCdsEtiquetaCLI_CIDENTR.AsString))> 0) then
          Result := True
       else
          Result := False;
end;

procedure TfrmEtqFaturamento.ImprimeEtiquetas;
var I,wNumeroEtiq,wModelo,wColuna1,wColuna2,wColuna3,wColuna,wLinha,wlinhaEtiqueta  : integer;
    wRotulos,wNumer_Nota,wDescontos,wCampoAux,wImpressora:string;
begin
    try
      {Abre a tabela de configuracoes da etiqueta pega a etiqueta ativa.}
      SqlCdsParamEtiq.close;
      SqlCdsParamEtiq.Sql.text := SQLDEF('PARAMETROS','Select ET.* from SYSETIQUETA ET','where ET.CET_ATIVO = ''S''','ET.CET_ATIVO','ET.');
      SqlCdsParamEtiq.Open;
      {Seleciona a nota fiscal}
      wSql1 := 'Select t1.*,C1.CLI_BAIRRO,C1.CLI_CEP,C1.CLI_CGC,C1.CLI_CEPFAT,C1.CLI_CIDADE,C1.CLI_CEPENTR,C1.CLI_CIDENTR,C1.CLI_CIDFAT,C1.CLI_ENDENTR,C1.CLI_ENDERE,';
      wSql2 := 'C1.CLI_ENDFAT,C1.CLI_INSC,C1.CLI_UF,C1.CLI_UFENTR,C1.CLI_UFFAT,C1.CLI_RAZAO,C1.CLI_FONE,C1.CLI_PESSOA,p1.PED_OBSERVACAO,';
      wSql3 := 'P1.PED_OBSNOTA,P1.PED_FRETE,P1.PED_FRETE2,P1.TRP_CODIGO,P1.TRP_REDESP,O1.OPE_DESCRINATUREZA,O1.OPE_REDU_ICM,O1.OPE_NOTA_COMPLEMENTAR,R1.REP_NOME From NF0001 T1 ';
      wSql4 := 'JOIN OPE0000 O1 ON (O1.ope_codigo = t1.ope_codigo) JOIN PED0000 P1 ON (P1.PED_CODIGO = t1.ped_codigo AND t1.EMP_CODIGO = p1.EMP_CODIGO ) JOIN CLI0000 C1 ON (C1.CLI_CODIGO = P1.CLI_CODIGO) ';
      wSql5 := 'LEFT JOIN REP0000 R1 ON (R1.REP_CODIGO = P1.REP_CODIGO) LEFT JOIN TRP0000 t2 ON (T2.trp_codigo = P1.trp_codigo) LEFT JOIN TRP0000 T3 ON (T3.trp_codigo = P1.trp_redesp) ';
      wSeleciona := 'where t1.NF_NOTANUMBER BETWEEN '''+EditInicial.Text+''' AND '''+EditFinal.Text+''' AND t1.NF_CANCELADA = ''N''';
      CdsImpNota.Close;
      CdsImpNota.sql.text := SQLDEF('PEDIDOS',wSQL1+wSQL2+wSQL3+wSQL4+wSQL5,wSeleciona,'t1.NF_NOTANUMBER','t1.');
      CdsImpNota.Open;
      if (CdsImpNota.IsEmpty = FALSE) then
         begin

             {MODELO DA ETIQUETA : 0=1 coluna, 1=2 coluna, 2=3 coluna }
             wModelo := SqlCdsParamEtiqCET_QTDETIQ.AsInteger;
             {TIPO DA IMPRESSORA : 0=Matricial, 1=Jato }
             wImpressora := SqlCdsParamEtiqCET_TPIMP.AsString;
             // Ajusta a largura da folha de acordo com o número de colunas
             case wModelo of
               1 : RdPrintEtiq1.TamanhoQteColunas  :=  45;
               2 : RdPrintEtiq1.TamanhoQteColunas  :=  90;
               3 : RdPrintEtiq1.TamanhoQteColunas  := 132;
             end;
             {INICIO DA COLUNA 1}
             wColuna1 := StrToInt(SqlCdsParamEtiqCET_INICOL1.AsString);
             {INICIO DA COLUNA 2}
             wColuna2 := StrToInt(SqlCdsParamEtiqCET_INICOL2.AsString);
             {INICIO DA COLUNA 3}
             wColuna3 := StrToInt(SqlCdsParamEtiqCET_INICOL3.AsString);
             {NUMERO MAXIMO DE LINHAS - IMP. MATRICIAL}
             wlinhaEtiqueta := 0;
             //
             if wImpressora = 'M' then  // matricial
                RdPrintEtiq1.TamanhoQteLinhas := StrToInt(SqlCdsParamEtiqCET_LINHAS.AsString)
             else
                // jato/laser(A4=70 Linhas) - implemetar linhas conforme tamanho etiqueta
                wLinhaEtiqueta :=  StrToInt(SqlCdsParamEtiqCET_LINHAS.AsString);
             //
             {IMPRIMIR ROTULOS DOS DADOS = S ou [ ] }
             wRotulos := SqlCdsParamEtiqCET_ROTULO.AsString;
             wColuna  := wColuna1;
             wLinha   := 0;
             RDprintNotaFiscal.OpcoesPreview.Preview := True;
             RdPrintEtiq1.Abrir;
             while (CdsImpNotaNF_NOTANUMBER.AsString<=EditFinal.Text) and not (CdsImpNota.Eof) do
              begin
                  {verifica quantos etiquetas de cada nota (qtde de volumes) }
                  wNumer_Nota := CdsImpNotaNF_NOTANUMBER.AsString;
                  while(CdsImpNotaNF_NOTANUMBER.AsString = wNumer_Nota)and not(CdsImpNota.Eof) do
                   begin
                       wNumeroEtiq := CdsImpNotaNF_QTDE.AsInteger;
                       for I := 1 to wNumeroEtiq do
                        begin
                            {CLIENTE}
                            if (Copy(SqlCdsParamEtiqCET_CLIENTE.AsString,7,1) = 'S') then
                               if wRotulos = 'S' then
                                  RdPrintEtiq1.imp(wLinha+StrToInt(COPY(SqlCdsParamEtiqCET_CLIENTE.AsString,1,3)),StrToInt(COPY(SqlCdsParamEtiqCET_CLIENTE.AsString,4,3))+wColuna,'Cliente: '+CdsImpNotaCLI_RAZAO.AsString)
                               else
                                  RdPrintEtiq1.imp(wLinha+StrToInt(COPY(SqlCdsParamEtiqCET_CLIENTE.AsString,1,3)),StrToInt(COPY(SqlCdsParamEtiqCET_CLIENTE.AsString,4,3))+wColuna,CdsImpNotaCLI_RAZAO.AsString);
                            {ENDEREÇO}
                            {Endereço normal}
                            if (CdsImpNotaCLI_CIDENTR.AsString = '') then
                               begin
                                   {Endereço}
                                   if (Copy(SqlCdsParamEtiqCET_ENDERECO.AsString,7,1) = 'S') then
                                      if wRotulos = 'S' then
                                         RdPrintEtiq1.imp(wLinha+StrToInt(COPY(SqlCdsParamEtiqCET_ENDERECO.AsString,1,3)),StrToInt(COPY(SqlCdsParamEtiqCET_ENDERECO.AsString,4,3))+wColuna,'Endereço: '+CdsImpNotaCLI_ENDERE.AsString)
                                      else
                                         RdPrintEtiq1.imp(wLinha+StrToInt(COPY(SqlCdsParamEtiqCET_ENDERECO.AsString,1,3)),StrToInt(COPY(SqlCdsParamEtiqCET_ENDERECO.AsString,4,3))+wColuna,CdsImpNotaCLI_ENDERE.AsString);
                                   {Cidade}
                                   if (Copy(SqlCdsParamEtiqCET_CIDADE.AsString,7,1) = 'S') then
                                      if wRotulos = 'S' then
                                         RdPrintEtiq1.imp(wLinha+StrToInt(COPY(SqlCdsParamEtiqCET_CIDADE.AsString,1,3)),StrToInt(COPY(SqlCdsParamEtiqCET_CIDADE.AsString,4,3))+wColuna,'Cidade: '+CdsImpNotaCLI_CIDADE.AsString)
                                      else
                                         RdPrintEtiq1.imp(wLinha+StrToInt(COPY(SqlCdsParamEtiqCET_CIDADE.AsString,1,3)),StrToInt(COPY(SqlCdsParamEtiqCET_CIDADE.AsString,4,3))+wColuna,CdsImpNotaCLI_CIDADE.AsString);
                                   {Estado}
                                   if (Copy(SqlCdsParamEtiqCET_ESTADO.AsString,7,1) = 'S') then
                                      if wRotulos = 'S' then
                                         RdPrintEtiq1.imp(wLinha+StrToInt(COPY(SqlCdsParamEtiqCET_ESTADO.AsString,1,3)),StrToInt(COPY(SqlCdsParamEtiqCET_ESTADO.AsString,4,3))+wColuna,'UF: '+CdsImpNotaCLI_UF.AsString)
                                      else
                                         RdPrintEtiq1.imp(wLinha+StrToInt(COPY(SqlCdsParamEtiqCET_ESTADO.AsString,1,3)),StrToInt(COPY(SqlCdsParamEtiqCET_ESTADO.AsString,4,3))+wColuna,CdsImpNotaCLI_UF.AsString);
                                   {CEP}
                                   if (Copy(SqlCdsParamEtiqCET_CEP.AsString,7,1) = 'S') then
                                      if wRotulos = 'S' then
                                         RdPrintEtiq1.imp(wLinha+StrToInt(COPY(SqlCdsParamEtiqCET_CEP.AsString,1,3)),StrToInt(COPY(SqlCdsParamEtiqCET_CEP.AsString,4,3))+wColuna,'CEP: '+MascaraCep(CdsImpNotaCLI_CEP.AsString))
                                      else
                                         RdPrintEtiq1.imp(wLinha+StrToInt(COPY(SqlCdsParamEtiqCET_CEP.AsString,1,3)),StrToInt(COPY(SqlCdsParamEtiqCET_CEP.AsString,4,3))+wColuna,MascaraCep(CdsImpNotaCLI_CEP.AsString));
                               end
                            else
                               {Tem outro Endereço para Entrega }
                               begin
                                   {Endereço}
                                   if (Copy(SqlCdsParamEtiqCET_ENDERECO.AsString,7,1) = 'S') then
                                      if wRotulos = 'S' then
                                         RdPrintEtiq1.imp(wLinha+StrToInt(COPY(SqlCdsParamEtiqCET_ENDERECO.AsString,1,3)),StrToInt(COPY(SqlCdsParamEtiqCET_ENDERECO.AsString,4,3))+wColuna,'Endereço: '+CdsImpNotaCLI_ENDENTR.AsString)
                                      else
                                         RdPrintEtiq1.imp(wLinha+StrToInt(COPY(SqlCdsParamEtiqCET_ENDERECO.AsString,1,3)),StrToInt(COPY(SqlCdsParamEtiqCET_ENDERECO.AsString,4,3))+wColuna,CdsImpNotaCLI_ENDENTR.AsString);
                                   {Cidade}
                                   if (Copy(SqlCdsParamEtiqCET_CIDADE.AsString,7,1) = 'S') then
                                      if wRotulos = 'S' then
                                         RdPrintEtiq1.imp(wLinha+StrToInt(COPY(SqlCdsParamEtiqCET_CIDADE.AsString,1,3)),StrToInt(COPY(SqlCdsParamEtiqCET_CIDADE.AsString,4,3))+wColuna,'Cidade: '+CdsImpNotaCLI_CIDENTR.AsString)
                                      else
                                         RdPrintEtiq1.imp(wLinha+StrToInt(COPY(SqlCdsParamEtiqCET_CIDADE.AsString,1,3)),StrToInt(COPY(SqlCdsParamEtiqCET_CIDADE.AsString,4,3))+wColuna,CdsImpNotaCLI_CIDENTR.AsString);
                                   {Estado}
                                   if (Copy(SqlCdsParamEtiqCET_ESTADO.AsString,7,1) = 'S') then
                                      if wRotulos = 'S' then
                                         RdPrintEtiq1.imp(wLinha+StrToInt(COPY(SqlCdsParamEtiqCET_ESTADO.AsString,1,3)),StrToInt(COPY(SqlCdsParamEtiqCET_ESTADO.AsString,4,3))+wColuna,'UF: '+CdsImpNotaCLI_UFENTR.AsString)
                                      else
                                         RdPrintEtiq1.imp(wLinha+StrToInt(COPY(SqlCdsParamEtiqCET_ESTADO.AsString,1,3)),StrToInt(COPY(SqlCdsParamEtiqCET_ESTADO.AsString,4,3))+wColuna,CdsImpNotaCLI_UFENTR.AsString);
                                   {CEP}
                                   if (Copy(SqlCdsParamEtiqCET_CEP.AsString,7,1) = 'S') then
                                      if wRotulos = 'S' then
                                         RdPrintEtiq1.imp(wLinha+StrToInt(COPY(SqlCdsParamEtiqCET_CEP.AsString,1,3)),StrToInt(COPY(SqlCdsParamEtiqCET_CEP.AsString,4,3))+wColuna,'CEP: '+MascaraCep(CdsImpNotaCLI_CEPENTR.AsString))
                                      else
                                         RdPrintEtiq1.imp(wLinha+StrToInt(COPY(SqlCdsParamEtiqCET_CEP.AsString,1,3)),StrToInt(COPY(SqlCdsParamEtiqCET_CEP.AsString,4,3))+wColuna,MascaraCep(CdsImpNotaCLI_CEPENTR.AsString));
                               end;
                            {NUMERO DA NOTA}
                            if (Copy(SqlCdsParamEtiqCET_NFISCAL.AsString,7,1) = 'S') then
                               if wRotulos = 'S' then
                                  RdPrintEtiq1.imp(wLinha+StrToInt(COPY(SqlCdsParamEtiqCET_NFISCAL.AsString,1,3)),StrToInt(COPY(SqlCdsParamEtiqCET_NFISCAL.AsString,4,3))+wColuna,'Nota Fiscal: '+CdsImpNotaNF_NOTANUMBER.AsString)
                               else
                                  RdPrintEtiq1.imp(wLinha+StrToInt(COPY(SqlCdsParamEtiqCET_NFISCAL.AsString,1,3)),StrToInt(COPY(SqlCdsParamEtiqCET_NFISCAL.AsString,4,3))+wColuna,CdsImpNotaNF_NOTANUMBER.AsString);
                            {QUANTIDADE(VOLUME)}
                            if (Copy(SqlCdsParamEtiqCET_QTDE.AsString,7,1) = 'S') then
                               if wRotulos = 'S' then
                                  RdPrintEtiq1.imp(wLinha+StrToInt(COPY(SqlCdsParamEtiqCET_QTDE.AsString,1,3)),StrToInt(COPY(SqlCdsParamEtiqCET_QTDE.AsString,4,3))+wColuna,'Quantidade: '+CdsImpNotaNF_QTDE.AsString)
                               else
                                  RdPrintEtiq1.imp(wLinha+StrToInt(COPY(SqlCdsParamEtiqCET_QTDE.AsString,1,3)),StrToInt(COPY(SqlCdsParamEtiqCET_QTDE.AsString,4,3))+wColuna,CdsImpNotaNF_QTDE.AsString);
                            {PESO}
                            if (Copy(SqlCdsParamEtiqCET_PESO.AsString,7,1) = 'S') then
                               if wRotulos = 'S' then
                                  begin
                                      RdPrintEtiq1.imp(wLinha+StrToInt(COPY(SqlCdsParamEtiqCET_PESO.AsString,1,3)),StrToInt(COPY(SqlCdsParamEtiqCET_PESO.AsString,4,3))+wColuna,'Peso: ');
                                      RdPrintEtiq1.impVal(wLinha+StrToInt(COPY(SqlCdsParamEtiqCET_PESO.AsString,1,3)),StrToInt(COPY(SqlCdsParamEtiqCET_PESO.AsString,4,3))+wColuna+6,'###,##0.000',CdsImpNotaNF_PESOBRU.AsCurrency,[]);
                                  end
                               else
                                  RdPrintEtiq1.impVal(wLinha+StrToInt(COPY(SqlCdsParamEtiqCET_PESO.AsString,1,3)),StrToInt(COPY(SqlCdsParamEtiqCET_PESO.AsString,4,3))+wColuna+6,'###,##0.000',CdsImpNotaNF_PESOBRU.AsCurrency,[]);
                            {CODIGO DO PRODUTO}
                            if (Copy(SqlCdsParamEtiqCET_CODPRODUTO.AsString,7,1) = 'S') then
                               if wRotulos = 'S' then
                                  RdPrintEtiq1.imp(wLinha+StrToInt(COPY(SqlCdsParamEtiqCET_CODPRODUTO.AsString,1,3)),StrToInt(COPY(SqlCdsParamEtiqCET_CODPRODUTO.AsString,4,3))+wColuna,'Código: ')
                               else
                                  RdPrintEtiq1.imp(wLinha+StrToInt(COPY(SqlCdsParamEtiqCET_CODPRODUTO.AsString,1,3)),StrToInt(COPY(SqlCdsParamEtiqCET_CODPRODUTO.AsString,4,3))+wColuna,'');
                            {DESCRICAO DO PRODUTO}
                            if (Copy(SqlCdsParamEtiqCET_PRODUTO.AsString,7,1) = 'S') then
                               if wRotulos = 'S' then
                                  RdPrintEtiq1.imp(wLinha+StrToInt(COPY(SqlCdsParamEtiqCET_PRODUTO.AsString,1,3)),StrToInt(COPY(SqlCdsParamEtiqCET_PRODUTO.AsString,4,3))+wColuna,'Produto: ')
                               else
                                  RdPrintEtiq1.imp(wLinha+StrToInt(COPY(SqlCdsParamEtiqCET_PRODUTO.AsString,1,3)),StrToInt(COPY(SqlCdsParamEtiqCET_PRODUTO.AsString,4,3))+wColuna,'');
                            {Buscar os dados da transportadora referente ao pedido}
                            CdsTransportadora.Close;
                            SqlTransportadora.sql.text := SQLDEF('TRANSPORTADORAS','Select T1.* from TRP0000 T1 ','where T1.TRP_CODIGO = '''+CdsImpNotaTRP_CODIGO.AsString+'''','T1.TRP_CODIGO','T1.');
                            CdsTransportadora.Open;
                            if CdsTransportadora.IsEmpty = false then
                               begin
                                   {TRANSPORTADORA}
                                   if (Copy(SqlCdsParamEtiqCET_TRANSPORT.AsString,7,1) = 'S') then
                                      if wRotulos = 'S' then
                                         RdPrintEtiq1.imp(wLinha+StrToInt(COPY(SqlCdsParamEtiqCET_TRANSPORT.AsString,1,3)),StrToInt(COPY(SqlCdsParamEtiqCET_TRANSPORT.AsString,4,3))+wColuna,'Transportadora: '+CdsTransportadoraTRP_RAZAO.AsString)
                                      else
                                         RdPrintEtiq1.imp(wLinha+StrToInt(COPY(SqlCdsParamEtiqCET_TRANSPORT.AsString,1,3)),StrToInt(COPY(SqlCdsParamEtiqCET_TRANSPORT.AsString,4,3))+wColuna,CdsTransportadoraTRP_RAZAO.AsString);
                                   (*
                                   {ENDEREÇO TRANSPORTADORA}
                                    if ArquivoIni.ReadString('ENDTRAN','IMPRIME','') = 'S' then
                                      if wRotulos = 'S' then
                                         RdPrintEtiq1.imp(StrToInt(ArquivoIni.ReadString('ENDTRAN','LINHA','')),StrToInt(ArquivoIni.ReadString('ENDTRAN','COLUNA',''))+wColuna,'Endereço: ');
                                      else
                                         RdPrintEtiq1.imp(StrToInt(ArquivoIni.ReadString('ENDTRAN','LINHA','')),StrToInt(ArquivoIni.ReadString('ENDTRAN','COLUNA',''))+wColuna,'');
                                   {CIDADE TRANSPORTADORA}
                                    if ArquivoIni.ReadString('CIDTRAN','IMPRIME','') = 'S' then
                                      if wRotulos = 'S' then
                                         RdPrintEtiq1.imp(StrToInt(ArquivoIni.ReadString('CIDTRAN','LINHA','')),StrToInt(ArquivoIni.ReadString('CIDTRAN','COLUNA',''))+wColuna,'Cidade: ');
                                      else
                                         RdPrintEtiq1.imp(StrToInt(ArquivoIni.ReadString('CIDTRAN','LINHA','')),StrToInt(ArquivoIni.ReadString('CIDTRAN','COLUNA',''))+wColuna,'');
                                   {CEP TRANSPORTADORA}
                                    if ArquivoIni.ReadString('CEPTRAN','IMPRIME','') = 'S' then
                                      if wRotulos = 'S' then
                                         RdPrintEtiq1.imp(StrToInt(ArquivoIni.ReadString('CEPTRAN','LINHA','')),StrToInt(ArquivoIni.ReadString('CEPTRAN','COLUNA',''))+wColuna,'CEP: ');
                                      else
                                         RdPrintEtiq1.imp(StrToInt(ArquivoIni.ReadString('CEPTRAN','LINHA','')),StrToInt(ArquivoIni.ReadString('CEPTRAN','COLUNA',''))+wColuna,'');
                                      *)
                               end;
                            if wImpressora = 'M' then
                               {Na matricial nao implementar linhas. pois o tamanho da pagina
                               é o tamanho da própria etiqueta }
                               begin
                                   {verifica se imprime nova pagina ou imprime na proxima coluna }
                                   if wModelo = 1 then   /// 1 coluna
                                      RdPrintEtiq1.Novapagina;

                                   if wModelo = 2 then   // 2 coluna
                                      if wColuna = wColuna1 then
                                         wColuna := wColuna2
                                      else
                                         if wColuna = wColuna2 then
                                           begin
                                               wColuna := wColuna1;
                                               RdPrintEtiq1.Novapagina;
                                           end;

                                   if wModelo = 3 then // 3 colunas
                                      if wColuna = wColuna1 then
                                         wColuna := wColuna2
                                       else
                                          if wColuna = wColuna2 then
                                             wColuna := wColuna3
                                          else
                                             begin
                                                 wColuna := wColuna1;
                                                 RdPrintEtiq1.Novapagina;
                                             end;
                               end
                            else
                               begin
                                   {é impressora jato/laser... a troca de pagina é somente pela
                                     tamanho do formulario (A4 = 70 linhas)...preciso implementar
                                    linhas nas etiquetas dentro da pagina}
                                   {verifica se imprime nova pagina ou imprime na proxima coluna }
                                   if wModelo = 1 then   /// 1 coluna
                                      wLinha :=wLinha+wLinhaEtiqueta;

                                   if wModelo = 2 then   // 2 coluna
                                      if wColuna = wColuna1 then
                                         wColuna := wColuna2
                                      else
                                         if wColuna = wColuna2 then
                                           begin
                                               wLinha :=wLinha+wLinhaEtiqueta;
                                               wColuna := wColuna1;
                                           end;

                                   if wModelo = 3 then // 3 colunas
                                      if wColuna = wColuna1 then
                                         wColuna := wColuna2
                                       else
                                          if wColuna = wColuna2 then
                                             wColuna := wColuna3
                                          else
                                             begin
                                                 wLinha :=wLinha+wLinhaEtiqueta;
                                                 wColuna := wColuna1;
                                             end;

                                   // verificar a troca de folha(pagina)
                                   //Exemplo: 70 - 14  = 56
                                   if wLinha >  RdPrintEtiq1.TamanhoQteLinhas - wLinhaEtiqueta then
                                      begin
                                          RdPrintEtiq1.Novapagina;
                                          wLinha := 0;
                                      end;
                               end;
                        end;  // For
                       CdsImpNota.Next
                   end;    // while
              end;      // while
            RdPrintEtiq1.Fechar;

         end
      else
         begin
             uteis.aviso('Etiqueta não foi impressa !');
             EditInicial.SetFocus;
         end;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao carregar a tabela de parametros da etiqueta !'+e.message));
    end;
end;

procedure TfrmEtqFaturamento.Imprimir_Etiqueta_Sistema;
Var
  I,wIQtde     : Integer;
  sMsgEtiqueta, wSqlAdi, value : String;
begin
   wSqlAdi := '';
   try

     try
       sMsgEtiqueta := Trim(edtMensagem.Text);
       //
       wSql1      := 'SELECT T1.NF_NOTANUMBER,T1.NF_NUM_NFE,T1.NF_QTDE,T4.TRP_RAZAO,T2.CLI_RAZAO,T2.CLI_FANTASIA,T2.CLI_ENDERE,T2.CLI_BAIRRO,T2.CLI_CEP,'+
                     ' T2.CLI_CIDADE,T2.CLI_UF,T2.CLI_FONE,T2.CLI_ENDENTR,';
       wSql2      := 'T2.CLI_CIDENTR,T2.CLI_CEPENTR,T2.CLI_UFENTR,T2.CLI_FONENTR,T2.CLI_BAIENTR,T2.CLI_CONTATO,                                  '+
                     'T4.TRP_ENDERE, (T4.TRP_CIDADE ||''-''|| T4.TRP_UF) as TRP_CIDADE, T4.TRP_CEP,                                              '+
                     ' ENDERECO_ENTREGA, ed.DESCRICAO AS end_entr, CNPJ AS CNPJ_ENTR, COD_PAIS AS COD_PAIS_ENTR, NUMERO,                         '+
                     ' COMPLEMENTO AS COMP_ENTR, BAIRRO AS BAIRRO_ENTR, CXPOSTAL CXPOSTAL_ENTR,ESTADO as estado_entr,                             '+
                     ' CEP AS CEP_ENTR, CIDADE AS CID_ENTR, CID_COD_IBGE AS IBGE_entr                                                             '+
                     ' FROM NF0001 T1  '+
                     ' LEFT JOIN CLI0000 T2 ON (T2.CLI_CODIGO = T1.CLI_CODIGO) LEFT JOIN PED0000 T3 ON (T1.PED_CODIGO = T3.PED_CODIGO  AND t1.EMP_CODIGO = t3.EMP_CODIGO  ) LEFT JOIN TRP0000 T4 ON (T3.TRP_CODIGO = T4.TRP_CODIGO)'+
                     ' LEFT JOIN ENDERECO ED ON (ED.CODIGO = t3.ENDERECO_ENTREGA ) '+
                     ' LEFT JOIN CID0000 ec ON (ec.CID_CODIGO = ed.COD_CIDADE) ';
       wSeleciona := 'WHERE T1.NF_NOTANUMBER BETWEEN '''+EditInicial.Text+''' AND '''+EditFinal.Text+'''';
       wOrdem     := 'T1.NF_NOTANUMBER';
       //
       SqlCdsEtiqueta.Close;
       SqlCdsEtiqueta.sql.text := SQLDEF('RECEBER',wSQL1+wSQL2,wSeleciona,wOrdem,'T1.');
       SqlCdsEtiqueta.Open;
       I := 1;
       if (CdsEtiqueta.Active = False) then
          CdsEtiqueta.CreateDataSet;
       CdsEtiqueta.EmptyDataSet;

       while not SqlCdsEtiqueta.Eof do
        begin
           if (chkSolicitarQuantidade.Checked) then
              begin
                 repeat
                     value := InputBox('Revisar a Quantidade de Volumes', 'Quantidade de Volumes:', SqlCdsEtiquetaNF_QTDE.AsString);
                 until value <> '';
                 wIQtde := StrToInt(value);
              end
           else
           begin
              if SqlCdsEtiquetaNF_QTDE.AsInteger = 0  then
                wIQtde := 1
              else
                wIQtde := SqlCdsEtiquetaNF_QTDE.AsInteger;
           end;
           for I := 1 to wIQtde do
             begin
                CdsEtiqueta.Append;
                CdsEtiquetaCLI_RAZAO.AsString  := SqlCdsEtiquetaCLI_RAZAO.AsString;
                if (not SqlCdsEtiquetaENDERECO_ENTREGA.IsNull) and  (SqlCdsEtiquetaENDERECO_ENTREGA.AsInteger <> 0) then
                begin
                  cdsEtiquetaCLI_ENDE.AsString   := SqlCdsEtiquetaend_entr.AsString + ',' + SqlCdsEtiquetaNUMERO.AsString;
                  CdsEtiquetaCLI_BAIRRO.AsString := SqlCdsEtiquetaBAIRRO_ENTR.AsString;
                  CdsEtiquetaCLI_CEP.AsString    := MascaraCep(SqlCdsEtiquetaCEP_ENTR.AsString);
                  CdsEtiquetaCLI_CIDADE.AsString := trim(SqlCdsEtiquetaCID_ENTR.AsString)+' - '+SqlCdsEtiquetaestado_entr.AsString;

                end
                else
                begin
                  CdsEtiquetaCLI_ENDE.AsString   := SqlCdsEtiquetaCLI_ENDERE.AsString;
                  CdsEtiquetaCLI_BAIRRO.AsString := SqlCdsEtiquetaCLI_BAIRRO.AsString;
                  CdsEtiquetaCLI_CEP.AsString    := MascaraCep(SqlCdsEtiquetaCLI_CEP.AsString);
                  CdsEtiquetaCLI_CIDADE.AsString := trim(SqlCdsEtiquetaCLI_CIDADE.AsString)+' - '+SqlCdsEtiquetaCLI_UF.AsString;
                end;
                if SqlCdsEtiquetaNF_NUM_NFE.AsInteger > 0 then
                  CdsEtiquetaNF_NUM.AsString     := IntToStr(SqlCdsEtiquetaNF_NUM_NFE.AsInteger)
                else
                  CdsEtiquetaNF_NUM.AsString     := SqlCdsEtiquetaNF_NOTANUMBER.AsString;

                CdsEtiquetaNF_VOLUME.AsString  := StrZero(IntToStr(I),3)+'/'+StrZero(IntToStr(wIQtde),3);
                CdsEtiquetaNF_MENSAGEM.AsString:= sMsgEtiqueta;
                CdsEtiquetaTRANSP.AsString     := SqlCdsEtiquetaTRP_RAZAO.AsString;
                CdsEtiquetaREMETENTE.AsString  := dbInicio.Empresa.RAZAO;
                CdsEtiquetaTRP_CIDADE.AsString := SqlCdsEtiquetaTRP_CIDADE.AsString;
                CdsEtiquetaTRP_ENDERE.AsString := SqlCdsEtiquetaTRP_ENDERE.AsString;
                CdsEtiquetaTRP_CEP.AsString    := SqlCdsEtiquetaTRP_CEP.AsString;


                CdsEtiqueta.Post;

             end;
           SqlCdsEtiqueta.Next;
        end;

       //
       CdsEtiqueta.First;
       if (rbModelo1.Checked) then
         begin
            prprtModelo1.DeviceType := 'Screen';
            prprtModelo1.Print;
         end
       else
       if (rbModelo2.Checked) then
         begin
            prprtModelo2.DeviceType := 'Screen';
            prprtModelo2.Print;
         end
       else
       if (rbModelo3.Checked) then
         begin
            pmgLogo.Picture := FrmMenu.ImglogoMenu.Picture;
            plblRemetente.Caption := dbInicio.Empresa.RAZAO;
            plblEndereco.Caption := dbInicio.Empresa.ENDERECO+' '+dbInicio.Empresa.BAIRRO+' '+dbInicio.Empresa.CEP+' '+dbInicio.Empresa.CIDADE+'/'+dbInicio.Empresa.UF;
            plblTelefone.Caption := dbInicio.Empresa.FONE;
            prprtModelo3.DeviceType := 'Screen';
            prprtModelo3.Print;
         end
       else
       if (rbModelo4.Checked) then
         begin
            prprtModelo4.DeviceType := 'Screen';
            prprtModelo4.Print;
         end
       else
       if (rbModelo5.Checked) then
         begin
            //pmgLogo.Picture := FrmMenu.ImglogoMenu.Picture;
            ppLabel32.Caption := dbInicio.Empresa.RAZAO;
            ppLabel33.Caption := dbInicio.Empresa.ENDERECO+' '+dbInicio.Empresa.BAIRRO+' '+dbInicio.Empresa.CEP+' '+dbInicio.Empresa.CIDADE+'/'+dbInicio.Empresa.UF;
            ppLabel34.Caption := dbInicio.Empresa.FONE;
            prprtModelo5.DeviceType := 'Screen';
            prprtModelo5.Print;
         end
       else
        if (rbModelo6.Checked) then
         begin
            //pmgLogo.Picture := FrmMenu.ImglogoMenu.Picture;
            lblRazaoMod6.Caption := dbInicio.Empresa.RAZAO;
            lblEnderecoMod6.Caption := dbInicio.Empresa.ENDERECO+' '+dbInicio.Empresa.BAIRRO+' '+dbInicio.Empresa.CEP+' '+dbInicio.Empresa.CIDADE+'/'+dbInicio.Empresa.UF;
            lblTelefoneMod6.Caption := dbInicio.Empresa.FONE;
            prprtModelo6.DeviceType := 'Screen';
            prprtModelo6.Print;
         end
       else
       if (rbModelo6.Checked) then
           begin
           //   ImprimeModelo6;
           end
       else
       if rbModelo7.Checked then
       begin
            lbRazaoMod7.Caption := dbInicio.Empresa.RAZAO;
            lbEndeMod7.Caption := dbInicio.Empresa.ENDERECO+' '+dbInicio.Empresa.BAIRRO+' '+dbInicio.Empresa.CEP+' '+dbInicio.Empresa.CIDADE+'/'+dbInicio.Empresa.UF;
            lbFoneMod7.Caption := dbInicio.Empresa.FONE;
            prprtModelo7.DeviceType := 'Screen';
            prprtmodelo7.Print;

       end
       else
       if rbModelo8.Checked then
       begin
            plempresaMod8.Caption := DBInicio.Empresa.FANTASIA;
            prprModelo8.DeviceType := 'Screen';
            prprModelo8.Print;

       end
       else
       if rbModelo9.Checked then
       begin
            lbRazaoMod9.Caption := dbInicio.Empresa.RAZAO;
            lbEndeMod9.Caption := dbInicio.Empresa.ENDERECO+' '+dbInicio.Empresa.BAIRRO+' '+dbInicio.Empresa.CEP+' '+dbInicio.Empresa.CIDADE+'/'+dbInicio.Empresa.UF;
            lbFoneMod9.Caption := dbInicio.Empresa.FONE;
            prprtModelo9.DeviceType := 'Screen';
            prprtmodelo9.Print;

       end
       else
       if rbModelo10.Checked then
       begin
         empresa.Picture := FrmMenu.ImglogoMenu.Picture;
         Remetente.Caption := dbInicio.Empresa.RAZAO;
         prprtModelo10.DeviceType := 'Screen';
         prprtmodelo10.Print;
       end
       else
        if (rbModelo11.Checked) then
         begin
            //pmgLogo.Picture := FrmMenu.ImglogoMenu.Picture;
            lblRazaoMod11.Caption := dbInicio.Empresa.RAZAO;
            lblEnderecoMod11.Caption := dbInicio.Empresa.ENDERECO+' '+dbInicio.Empresa.BAIRRO+' '+dbInicio.Empresa.CEP+' '+dbInicio.Empresa.CIDADE+'/'+dbInicio.Empresa.UF;
            lblTelefoneMod11.Caption := dbInicio.Empresa.FONE;
            prprtModelo11.DeviceType := 'Screen';
            prprtModelo11.Print;
         end;
     finally

         CdsEtiqueta.EmptyDataSet;
         CdsEtiqueta.Close;
     end;
   except
      on E:EDataBaseError do
         begin
            uteis.erro  (pchar('Impossível gerar etiqueta !'+#13#10+
                       'Mensagem erro: '+e.message));
         end;
   end;
end;

 procedure TfrmEtqFaturamento.SetNotaNumero(const Value: string);
begin
  fNotaNumero := Value;
  EditInicial.Text := Value;
  EditFinal.Text := Value;
end;

end.
