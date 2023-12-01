unit Fat0003;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, BaseDbFaturamentoForm,
  Dialogs, StdCtrls, Buttons,  rxCurrEdit, Grids, DBGrids, Mask,  rxToolEdit, DBCtrls, acbrUtil,
  Provider, SqlExpr,SqlClientDataSet, DB, {{DBXpress,} DBClient, ExtCtrls,
  Math, ComboBoxRw, ComCtrls, Data.DBXFirebird, SgDbSeachComboUnit, System.StrUtils,
  ACBrEnterTab, ACBrBase, ACBrCalculadora, Data.FMTBcd, BaseForm, BaseDBForm, uprocessarNF,pcnConversaoNFe, JvExMask, JvToolEdit, Vcl.Menus;

type
  TFormFatPedido = class(TfrmBaseDbFaturamento)
    GroupBox1: TGroupBox;
    GroupBox5: TGroupBox;
    CdsItemPedido: TClientDataSet;
    CdsItemPedidoTOTAL_PRODUTOS_AG: TAggregateField;
    DsItemPedido: TDataSource;
    Label3: TLabel;
    DBEditPedido: TDBEdit;
    DBEditCliente: TDBEdit;
    Label23: TLabel;
    Label20: TLabel;
    Label26: TLabel;
    Label28: TLabel;
    DBEditNumero: TDBEdit;
    DBEditQtde: TDBEdit;
    DBEditFrete: TDBEdit;
    Label24: TLabel;
    Label21: TLabel;
    Label27: TLabel;
    Label29: TLabel;
    DBEditPesoBruto: TDBEdit;
    DBEditEsp: TDBEdit;
    DBEditSeguro: TDBEdit;
    Label25: TLabel;
    Label22: TLabel;
    Label2: TLabel;
    Label30: TLabel;
    DBEditPesoLiq: TDBEdit;
    DBEditMarca: TDBEdit;
    DBEditDesp: TDBEdit;
    DBEditHs: TDBEdit;
    RadSaida: TRadioButton;
    RadEntrada: TRadioButton;
    Label1: TLabel;
    CurrNumNota: TCurrencyEdit;
    Label17: TLabel;
    Label7: TLabel;
    DBEOpv_codigo: TDBEdit;
    CbTipo1: TComboBoxRw;
    Label33: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    Panel2: TPanel;
    BitConfirmaNota: TBitBtn;
    BitCancelar: TBitBtn;
    Panel3: TPanel;
    GroupBox3: TGroupBox;
    Label18: TLabel;
    Label5: TLabel;
    CbxCarteira: TComboBox;
    CbxTipoDoc: TComboBox;
    Label10: TLabel;
    DBEditDespImport: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    btnMudaNumeroFatura: TSpeedButton;
    pgcDetalhes: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    ScrollBox1: TScrollBox;
    DBMemoObs: TDBMemo;
    Panel6: TPanel;
    SpeedButton1: TSpeedButton;
    EdTransportadoraCodigo: TEdit;
    CbTransportadora: TComboBoxRw;
    Label4: TLabel;
    DBEditPlacaVeiculo: TDBEdit;
    Label34: TLabel;
    DBEdPlaca: TDBEdit;
    Label16: TLabel;
    CbTipoFrete: TComboBox;
    GroupBox7: tLabel;
    Label11: TLabel;
    CbExportUF: TComboBox;
    Label12: TLabel;
    ExportLocalEmbarque: TEdit;
    Label35: TLabel;
    DBEdit3: TDBEdit;
    CbBancos: TComboBoxRw;
    ChkComplementar: TDBCheckBox;
    CbOper: TComboBoxRw;
    qCfop: TSQLQuery;
    qItemPedido: TSQLQuery;
    DspItemPedido: TDataSetProvider;
    qPedidos: TSQLQuery;
    DspPedidos: TDataSetProvider;
    CdsPedidos: TClientDataSet;
    dsPedidos: TDataSource;
    CdsPedidosPED_OBSERVACAO_NOTA: TBlobField;
    CdsPedidosTRP_CODIGO: TStringField;
    CdsPedidosPED_STATUS_ANALISE_CREDITO: TStringField;
    CdsPedidosPED_OS: TStringField;
    CdsPedidosFPG_REGISTRO: TIntegerField;
    CdsPedidosPED_CODIGO: TStringField;
    CdsPedidosPCX_CODIGO: TStringField;
    CdsPedidosAMX_CODIGO: TStringField;
    CdsPedidosPED_DTENTRADA: TSQLTimeStampField;
    CdsPedidosPED_VLTOTAL_LIQ: TFMTBCDField;
    CdsPedidosPED_VLTOTAL_BRUTO: TFMTBCDField;
    CdsPedidosPED_SITUACAO: TStringField;
    CdsPedidosPED_DESCTONF: TStringField;
    CdsPedidosPED_TPDESCTO: TStringField;
    CdsPedidosOPE_CODIGO: TIntegerField;
    CdsPedidosPED_DESCTOPC1: TFMTBCDField;
    CdsPedidosPED_DESCTOPC2: TFMTBCDField;
    CdsPedidosPED_DESCTOVL: TFMTBCDField;
    CdsPedidosPED_VLFRETE: TFMTBCDField;
    CdsPedidosPED_DESP_ACES: TFMTBCDField;
    CdsPedidosPED_VLSEGURO: TFMTBCDField;
    CdsPedidosCLI_CODIGO: TStringField;
    CdsPedidosCLI_RAZAO: TStringField;
    CdsPedidosCLI_CIDADE: TStringField;
    CdsPedidosCLI_UF: TStringField;
    CdsPedidosCLI_CONSFINAL: TStringField;
    CdsPedidosCLI_CONSU_PROPRIO: TStringField;
    CdsPedidosCLI_REGIME_TRIBUTARIO: TStringField;
    CdsPedidosCLI_MODO_TRIB_ST: TStringField;
    CdsPedidosCNAE_CARGA_TRIB_MEDIA: TFMTBCDField;
    CdsPedidosOPV_CODIGO: TIntegerField;
    CdsPedidosPCL_CODIGO: TStringField;
    CdsPedidosPED_COMIS1: TFMTBCDField;
    CdsPedidosPED_COMIS2: TFMTBCDField;
    CdsPedidosPED_COMIS3: TFMTBCDField;
    CdsPedidosPED_OBSNOTA: TStringField;
    CdsPedidosREP_CODIGO: TStringField;
    CdsPedidosEMP_CODIGO: TStringField;
    CdsPedidosPED_DESP_IMPOR: TFMTBCDField;
    CdsPedidosPED_FRETE: TStringField;
    qCLientes: TSQLQuery;
    qCLientesCLI_CODIGO: TStringField;
    qCLientesCLI_DTINATIVO: TSQLTimeStampField;
    qCLientesCLI_INATIVO: TStringField;
    qCLientesCLI_MOTIVO: TStringField;
    qCLientesREG_CODIGO: TStringField;
    qCLientesCLI_ATIVIDADE: TStringField;
    qCLientesCLI_PORTE: TStringField;
    qCLientesCLI_BAIRRO: TStringField;
    qCLientesCLI_CIDADE: TStringField;
    qCLientesCLI_CEP: TStringField;
    qCLientesCLI_CXPOST: TStringField;
    qCLientesCLI_FONE: TStringField;
    qCLientesCLI_FAX: TStringField;
    qCLientesTRP_CODIGO: TStringField;
    qCLientesCLI_INSC: TStringField;
    qCLientesCLI_CGC: TStringField;
    qCLientesCLI_PESSOA: TStringField;
    qCLientesCLI_CONTATO: TStringField;
    qCLientesCLI_FUNCONT: TStringField;
    qCLientesREP_CODIGO: TStringField;
    qCLientesCLI_DTINICIO: TSQLTimeStampField;
    qCLientesCLI_DTULTCOM: TSQLTimeStampField;
    qCLientesCLI_CIDENTR: TStringField;
    qCLientesCLI_CEPENTR: TStringField;
    qCLientesCLI_FONENTR: TStringField;
    qCLientesCLI_CIDFAT: TStringField;
    qCLientesCLI_CEPFAT: TStringField;
    qCLientesCLI_UF: TStringField;
    qCLientesCLI_UFENTR: TStringField;
    qCLientesCLI_UFFAT: TStringField;
    qCLientesEMP_CODIGO: TStringField;
    qCLientesCLI_CURVA: TStringField;
    qCLientesCLI_LIMITECRED: TFMTBCDField;
    qCLientesCLI_LIMITEUTILIZ: TFMTBCDField;
    qCLientesCLI_PEDABERTO: TFMTBCDField;
    qCLientesCLI_VL_ULTCOMP: TFMTBCDField;
    qCLientesCLI_CELULAR: TStringField;
    qCLientesCLI_ENDERE: TStringField;
    qCLientesCLI_ENDENTR: TStringField;
    qCLientesCLI_ENDFAT: TStringField;
    qCLientesCLI_OBS: TMemoField;
    qCLientesCLI_PROTESTAR: TStringField;
    qCLientesCLI_QTDE_DIAS_PROTESTO: TIntegerField;
    qCLientesCLI_CONSFINAL: TStringField;
    qCLientesCLI_PAIS: TStringField;
    qCLientesCLI_FANTASIA: TStringField;
    qCLientesCLI_HISTORICO: TMemoField;
    qCLientesCLI_CONSU_PROPRIO: TStringField;
    qCLientesCID_CODIGO: TIntegerField;
    qCLientesCLI_INSCMUNI: TStringField;
    qCLientesCLI_BAIENTR: TStringField;
    qCLientesCLI_BAIFAT: TStringField;
    qCLientesAMX_CODIGO: TStringField;
    qCLientesPCL_CODIGO: TStringField;
    qCLientesBAN_CODIGO: TStringField;
    qCLientesCLI_DESC1: TFMTBCDField;
    qCLientesCLI_DESC2: TFMTBCDField;
    qCLientesCLI_TABPRECO: TStringField;
    qCLientesPAI_CODIGO: TStringField;
    qCLientesCLI_CLASSE_CLI_FOR: TStringField;
    qCLientesCLI_EMAIL: TStringField;
    qCLientesCLI_HOME: TStringField;
    qCLientesCLI_EMAIL_ALTERNATIVO: TStringField;
    qCLientesCLI_RAZAO: TStringField;
    qCLientesOPE_CODIGO: TStringField;
    qCLientesCLI_SUFRAMA: TStringField;
    qCLientesCLI_REGIME_TRIBUTARIO: TStringField;
    qCLientesPCX_CODIGO: TStringField;
    qCLientesCNAE_REGISTRO: TIntegerField;
    qCLientesCLI_MODO_TRIB_ST: TStringField;
    qCLientesPRE_ID: TIntegerField;
    qOperFisc: TSQLQuery;
    qIcms: TSQLQuery;
    qIcmsICM_ALIQ: TFMTBCDField;
    qIcmsICMS_SUBS: TFMTBCDField;
    qIcmsICMS_PROD_IMPORTADO: TFMTBCDField;
    qIcmsSOMA_MVA_SN: TStringField;
    qIcmsICM_SUB_TRI_SN: TStringField;
    qIcmsICMS_REDUZIDO: TFMTBCDField;
    qNotaFiscal: TSQLQuery;
    qNotaFiscalNF_REGISTRO: TIntegerField;
    qNotaFiscalNF_NOTANUMBER: TStringField;
    qNotaFiscalNF_EMISSAO: TDateField;
    qNotaFiscalNF_SAIDA: TDateField;
    qNotaFiscalNF_HORASAIDA: TTimeField;
    qNotaFiscalNF_CONDPAGTO: TStringField;
    qNotaFiscalOPE_CODIGO: TStringField;
    qNotaFiscalOPE_NATUREZA: TStringField;
    qNotaFiscalOPE_AGRUPADO: TStringField;
    qNotaFiscalREP_CODIGO: TStringField;
    qNotaFiscalNF_ENTR_SAID: TStringField;
    qNotaFiscalNF_IMPRESS: TStringField;
    qNotaFiscalCLI_CODIGO: TStringField;
    qNotaFiscalNF_VLFRETE: TFMTBCDField;
    qNotaFiscalNF_VLSEGURO: TFMTBCDField;
    qNotaFiscalNF_DESP_ACES: TFMTBCDField;
    qNotaFiscalNF_ALIQ_ICMS: TFMTBCDField;
    qNotaFiscalNF_VL_DESCTO: TFMTBCDField;
    qNotaFiscalNF_PLACAVE: TStringField;
    qNotaFiscalNF_QTDE: TFMTBCDField;
    qNotaFiscalNF_PESOBRU: TFMTBCDField;
    qNotaFiscalNF_PESOLIQ: TFMTBCDField;
    qNotaFiscalNF_MARCA: TStringField;
    qNotaFiscalNF_NUMERO: TStringField;
    qNotaFiscalNF_INTERNO: TStringField;
    qNotaFiscalNF_CANCELADA: TStringField;
    qNotaFiscalPCL_CODIGO: TStringField;
    qNotaFiscalNF_AGRUPADO: TStringField;
    qNotaFiscalEMP_CODIGO: TStringField;
    qNotaFiscalNF_OBS_OPER: TStringField;
    qNotaFiscalNF_OBS_PEDI: TStringField;
    qNotaFiscalAMX_CODIGO: TStringField;
    qNotaFiscalNF_OBSG1: TStringField;
    qNotaFiscalNF_OBSG2: TStringField;
    qNotaFiscalNF_OBSG3: TStringField;
    qNotaFiscalNF_OBSG4: TStringField;
    qNotaFiscalNF_OBSG5: TStringField;
    qNotaFiscalNF_OBSG6: TStringField;
    qNotaFiscalNF_TP_DESCTO: TStringField;
    qNotaFiscalNF_PC_DESCTO1: TFMTBCDField;
    qNotaFiscalNF_PC_DESCTO2: TFMTBCDField;
    qNotaFiscalNF_BASE_ISS: TFMTBCDField;
    qNotaFiscalNF_VALOR_ISS: TFMTBCDField;
    qNotaFiscalOPV_CODIGO: TIntegerField;
    qNotaFiscalNF_ESPECIE: TStringField;
    qNotaFiscalPED_CODIGO: TStringField;
    qNotaFiscalOPE_REDU_ICM: TFMTBCDField;
    qNotaFiscalNF_OBS_OPER_AVISO2: TStringField;
    qNotaFiscalOPE_SEMVLCOM: TStringField;
    qNotaFiscalNF_TIPODOC: TStringField;
    qNotaFiscalNF_MODELO_NF: TStringField;
    qNotaFiscalNF_SERIE: TStringField;
    qNotaFiscalNF_CHAVE_NFE: TStringField;
    qNotaFiscalNF_NUM_NFE: TIntegerField;
    qNotaFiscalNF_DESP_IMPORT: TFMTBCDField;
    qNotaFiscalNF_STATUS_NFE: TStringField;
    qNotaFiscalNF_ENVIADO_NFE_EMAIL: TStringField;
    qNotaFiscalNF_EMAIL_ENVIO_NFE: TStringField;
    qNotaFiscalNF_LOTE_NFE: TIntegerField;
    qNotaFiscalNF_PROTOCOLO_NFE: TStringField;
    qNotaFiscalNF_PROTOCOLO_NFE_CANC: TStringField;
    qNotaFiscalNF_PROTOCOLO_AUTORIZACAO: TStringField;
    qNotaFiscalNF_DATA_AUTORIZACAO: TDateField;
    qNotaFiscalNF_HORA_AUTORIZACAO: TTimeField;
    qNotaFiscalNF_ALIQCREDSIMPLES: TFMTBCDField;
    qNotaFiscalNF_VLCREDSIMPLES: TFMTBCDField;
    qNotaFiscalNF_ALIQPIS: TFMTBCDField;
    qNotaFiscalNF_ALIQCOFINS: TFMTBCDField;
    qNotaFiscalSRV_REGISTRO: TIntegerField;
    qNotaFiscalNF_NFSE_VLR_IR: TFMTBCDField;
    qNotaFiscalNF_NFSE_VLR_CSLL: TFMTBCDField;
    qNotaFiscalNF_NFSE_VLR_INSS: TFMTBCDField;
    qNotaFiscalNF_NFSE_VLR_COFINS: TFMTBCDField;
    qNotaFiscalNF_NFSE_VLR_PIS: TFMTBCDField;
    qNotaFiscalNF_NFSE_VLR_DEDUCOES: TFMTBCDField;
    qNotaFiscalNF_NFSE_VLR_ISS: TFMTBCDField;
    qNotaFiscalNF_NFSE_VLR_BASE_CALCULO: TFMTBCDField;
    qNotaFiscalNF_NFSE_DESCRICAO: TBlobField;
    qNotaFiscalNF_STATUS_NFSE: TStringField;
    qNotaFiscalNF_NFSE_ALIQUOTA_ISS: TFMTBCDField;
    qNotaFiscalNF_EXPORT_UF_EMBARQUE: TStringField;
    qNotaFiscalNF_EXPORT_LOCAL_EMBARQUE: TStringField;
    qNotaFiscalNF_VALORTOT_PIS: TFMTBCDField;
    qNotaFiscalNF_VALORTOT_COFINS: TFMTBCDField;
    qNotaFiscalNF_COMPLEMENTAR: TStringField;
    qNotaFiscalNFE_STATUS_PRODUCAO: TStringField;
    qNotaFiscalNF_OBSERVACAO: TBlobField;
    qNotaFiscalNF_TIPO_FRETE: TStringField;
    qNotaFiscalNF_BASEICMS: TFMTBCDField;
    qNotaFiscalNF_VL_ICMS: TFMTBCDField;
    qNotaFiscalNF_VLBASESUBTRIB: TFMTBCDField;
    qNotaFiscalNF_VL_SUBTRIB: TFMTBCDField;
    qNotaFiscalNF_TOT_CSUB: TFMTBCDField;
    qNotaFiscalNF_TOT_PROD: TFMTBCDField;
    qNotaFiscalNF_TOT_NOTA: TFMTBCDField;
    qNotaFiscalNF_VL_IPI: TFMTBCDField;
    qNotaFiscalNF_BASE_IPI: TFMTBCDField;
    qNotaFiscalNF_VENDA_FATURADA: TStringField;
    qNotaFiscalNF_CHAVE_NFE_REFERENCIADA: TStringField;
    qNotaFiscalNF_VALOR_TOTAL_FCP: TFMTBCDField;
    qNotaFiscalNF_VALOR_TOTAL_PARTILHA_DEST: TFMTBCDField;
    qNotaFiscalNF_VALOR_TOTAL_PARTILHA_ORIG: TFMTBCDField;
    qNotaFiscalIBPT_VLAPROXTRIBUTOS: TFMTBCDField;
    qNotaFiscalNF_UFVEICULO: TStringField;
    dspNotaFiscal: TDataSetProvider;
    CdsNotaFiscal: TClientDataSet;
    CdsNotaFiscalNF_REGISTRO: TIntegerField;
    CdsNotaFiscalNF_NOTANUMBER: TStringField;
    CdsNotaFiscalNF_EMISSAO: TDateField;
    CdsNotaFiscalNF_SAIDA: TDateField;
    CdsNotaFiscalNF_HORASAIDA: TTimeField;
    CdsNotaFiscalNF_CONDPAGTO: TStringField;
    CdsNotaFiscalOPE_CODIGO: TStringField;
    CdsNotaFiscalOPE_NATUREZA: TStringField;
    CdsNotaFiscalOPE_AGRUPADO: TStringField;
    CdsNotaFiscalREP_CODIGO: TStringField;
    CdsNotaFiscalNF_ENTR_SAID: TStringField;
    CdsNotaFiscalNF_IMPRESS: TStringField;
    CdsNotaFiscalCLI_CODIGO: TStringField;
    CdsNotaFiscalNF_VLFRETE: TFMTBCDField;
    CdsNotaFiscalNF_VLSEGURO: TFMTBCDField;
    CdsNotaFiscalNF_DESP_ACES: TFMTBCDField;
    CdsNotaFiscalNF_ALIQ_ICMS: TFMTBCDField;
    CdsNotaFiscalNF_VL_DESCTO: TFMTBCDField;
    CdsNotaFiscalNF_PLACAVE: TStringField;
    CdsNotaFiscalNF_QTDE: TFMTBCDField;
    CdsNotaFiscalNF_PESOBRU: TFMTBCDField;
    CdsNotaFiscalNF_PESOLIQ: TFMTBCDField;
    CdsNotaFiscalNF_MARCA: TStringField;
    CdsNotaFiscalNF_NUMERO: TStringField;
    CdsNotaFiscalNF_INTERNO: TStringField;
    CdsNotaFiscalNF_CANCELADA: TStringField;
    CdsNotaFiscalPCL_CODIGO: TStringField;
    CdsNotaFiscalNF_AGRUPADO: TStringField;
    CdsNotaFiscalEMP_CODIGO: TStringField;
    CdsNotaFiscalNF_OBS_OPER: TStringField;
    CdsNotaFiscalNF_OBS_PEDI: TStringField;
    CdsNotaFiscalNF_TIPO_CC: TStringField;
    CdsNotaFiscalAMX_CODIGO: TStringField;
    CdsNotaFiscalNF_OBSG1: TStringField;
    CdsNotaFiscalNF_OBSG2: TStringField;
    CdsNotaFiscalNF_OBSG3: TStringField;
    CdsNotaFiscalNF_OBSG4: TStringField;
    CdsNotaFiscalNF_OBSG5: TStringField;
    CdsNotaFiscalNF_OBSG6: TStringField;
    CdsNotaFiscalNF_TP_DESCTO: TStringField;
    CdsNotaFiscalNF_PC_DESCTO1: TFMTBCDField;
    CdsNotaFiscalNF_PC_DESCTO2: TFMTBCDField;
    CdsNotaFiscalNF_BASE_ISS: TFMTBCDField;
    CdsNotaFiscalNF_VALOR_ISS: TFMTBCDField;
    CdsNotaFiscalNF_STATUS_CC: TStringField;
    CdsNotaFiscalOPV_CODIGO: TIntegerField;
    CdsNotaFiscalNF_ESPECIE: TStringField;
    CdsNotaFiscalPED_CODIGO: TStringField;
    CdsNotaFiscalOPE_REDU_ICM: TFMTBCDField;
    CdsNotaFiscalNF_OBS_OPER_AVISO2: TStringField;
    CdsNotaFiscalOPE_SEMVLCOM: TStringField;
    CdsNotaFiscalNF_TIPODOC: TStringField;
    CdsNotaFiscalNF_MODELO_NF: TStringField;
    CdsNotaFiscalNF_SERIE: TStringField;
    CdsNotaFiscalNF_CHAVE_NFE: TStringField;
    CdsNotaFiscalNF_NUM_NFE: TIntegerField;
    CdsNotaFiscalNF_DESP_IMPORT: TFMTBCDField;
    CdsNotaFiscalNF_STATUS_NFE: TStringField;
    CdsNotaFiscalNF_ENVIADO_NFE_EMAIL: TStringField;
    CdsNotaFiscalNF_EMAIL_ENVIO_NFE: TStringField;
    CdsNotaFiscalNF_LOTE_NFE: TIntegerField;
    CdsNotaFiscalNF_PROTOCOLO_NFE: TStringField;
    CdsNotaFiscalNF_PROTOCOLO_NFE_CANC: TStringField;
    CdsNotaFiscalNF_PROTOCOLO_AUTORIZACAO: TStringField;
    CdsNotaFiscalNF_DATA_AUTORIZACAO: TDateField;
    CdsNotaFiscalNF_HORA_AUTORIZACAO: TTimeField;
    CdsNotaFiscalNF_ALIQCREDSIMPLES: TFMTBCDField;
    CdsNotaFiscalNF_VLCREDSIMPLES: TFMTBCDField;
    CdsNotaFiscalNF_ALIQPIS: TFMTBCDField;
    CdsNotaFiscalNF_ALIQCOFINS: TFMTBCDField;
    CdsNotaFiscalSRV_REGISTRO: TIntegerField;
    CdsNotaFiscalNF_NFSE_VLR_IR: TFMTBCDField;
    CdsNotaFiscalNF_NFSE_VLR_CSLL: TFMTBCDField;
    CdsNotaFiscalNF_NFSE_VLR_INSS: TFMTBCDField;
    CdsNotaFiscalNF_NFSE_VLR_COFINS: TFMTBCDField;
    CdsNotaFiscalNF_NFSE_VLR_PIS: TFMTBCDField;
    CdsNotaFiscalNF_NFSE_VLR_DEDUCOES: TFMTBCDField;
    CdsNotaFiscalNF_NFSE_VLR_ISS: TFMTBCDField;
    CdsNotaFiscalNF_NFSE_VLR_BASE_CALCULO: TFMTBCDField;
    CdsNotaFiscalNF_NFSE_DESCRICAO: TBlobField;
    CdsNotaFiscalNF_STATUS_NFSE: TStringField;
    CdsNotaFiscalNF_NFSE_ALIQUOTA_ISS: TFMTBCDField;
    CdsNotaFiscalNF_EXPORT_UF_EMBARQUE: TStringField;
    CdsNotaFiscalNF_EXPORT_LOCAL_EMBARQUE: TStringField;
    CdsNotaFiscalNF_VALORTOT_PIS: TFMTBCDField;
    CdsNotaFiscalNF_VALORTOT_COFINS: TFMTBCDField;
    CdsNotaFiscalNF_COMPLEMENTAR: TStringField;
    CdsNotaFiscalNFE_STATUS_PRODUCAO: TStringField;
    CdsNotaFiscalNF_OBSERVACAO: TBlobField;
    CdsNotaFiscalNF_TIPO_FRETE: TStringField;
    CdsNotaFiscalNF_BASEICMS: TFMTBCDField;
    CdsNotaFiscalNF_VL_ICMS: TFMTBCDField;
    CdsNotaFiscalNF_VLBASESUBTRIB: TFMTBCDField;
    CdsNotaFiscalNF_VL_SUBTRIB: TFMTBCDField;
    CdsNotaFiscalNF_TOT_CSUB: TFMTBCDField;
    CdsNotaFiscalNF_TOT_PROD: TFMTBCDField;
    CdsNotaFiscalNF_TOT_NOTA: TFMTBCDField;
    CdsNotaFiscalNF_VL_IPI: TFMTBCDField;
    CdsNotaFiscalNF_BASE_IPI: TFMTBCDField;
    CdsNotaFiscalNF_VENDA_FATURADA: TStringField;
    CdsNotaFiscalNF_CHAVE_NFE_REFERENCIADA: TStringField;
    CdsNotaFiscalNF_VALOR_TOTAL_FCP: TFMTBCDField;
    CdsNotaFiscalNF_VALOR_TOTAL_PARTILHA_DEST: TFMTBCDField;
    CdsNotaFiscalNF_VALOR_TOTAL_PARTILHA_ORIG: TFMTBCDField;
    CdsNotaFiscalIBPT_VLAPROXTRIBUTOS: TFMTBCDField;
    CdsNotaFiscalNF_UFVEICULO: TStringField;
    DsNotaFiscal: TDataSource;
    qOperFiscEMP_CODIGO: TStringField;
    qOperFiscOPE_CODIGO: TStringField;
    qOperFiscOPE_NATUREZA: TStringField;
    qOperFiscOPE_NATUREZA_ENTRADA: TStringField;
    qOperFiscOPE_TIPO: TStringField;
    qOperFiscOPE_ESCRITA: TStringField;
    qOperFiscOPE_DENTRO: TStringField;
    qOperFiscOPE_DESCRI: TStringField;
    qOperFiscOPE_TRIBICMS: TStringField;
    qOperFiscOPE_TRIBIPI: TStringField;
    qOperFiscOPE_REDU_ICM: TFMTBCDField;
    qOperFiscOPE_REDU_IPI: TFMTBCDField;
    qOperFiscOPE_IPINABASEICMS: TStringField;
    qOperFiscOPE_FRETENABASE: TStringField;
    qOperFiscOPE_SEMVLCOM: TStringField;
    qOperFiscOPE_IMP_AVISO: TStringField;
    qOperFiscOPE_AVISOLEGAL: TStringField;
    qOperFiscOPE_AVISOLEGAL2: TStringField;
    qOperFiscOPE_AGRUPADO: TStringField;
    qOperFiscOPE_SUBTRIBUTARIA: TStringField;
    qOperFiscOPE_ESTOQUE: TStringField;
    qOperFiscCCT_CODIGO: TStringField;
    qOperFiscOPV_CODIGO: TIntegerField;
    qOperFiscOPE_SERVICO: TStringField;
    qOperFiscOPE_PIS: TFMTBCDField;
    qOperFiscOPE_COFINS: TFMTBCDField;
    qOperFiscOPE_CONTRISOCIAL: TFMTBCDField;
    qOperFiscOPE_DESCRINATUREZA: TStringField;
    qOperFiscOPE_INDICE_IMP: TFMTBCDField;
    qOperFiscOPE_NOTA_COMPLEMENTAR: TStringField;
    qOperFiscOPE_FRETEBASEIPI: TStringField;
    qOperFiscOPE_DESPIMPORIPI: TStringField;
    qOperFiscOPE_AUMEN_ICMS: TFMTBCDField;
    qOperFiscOPE_ICMS_TOTALNOTA: TStringField;
    qOperFiscOPE_SEMVLCOM_MOSTRAF: TStringField;
    qOperFiscOPE_TRIBPISCOFINS: TStringField;
    qOperFiscOPE_TEMCREDITO: TStringField;
    qOperFiscOPE_ATIVA: TStringField;
    qOperFiscOPE_IPI_TOTALNOTA: TStringField;
    qOperFiscOPE_TIPO_OPERACAO: TStringField;
    qOperFiscOPE_ATUALIZA_CUSTO: TStringField;
    qOperFiscOPE_INDUSTRIALIZACAO: TStringField;
    qOperFiscEMP_CSOSN: TIntegerField;
    qOperFiscEMP_CSOSN_ST: TIntegerField;
    qIcmsICM_MVA: TFMTBCDField;
    CdsItemPedidoCC_ID: TIntegerField;
    CdsItemPedidoCFOP: TStringField;
    CdsItemPedidoCFOP_Codigo: TStringField;
    CdsItemPedidoPRF_REGISTRO: TIntegerField;
    CdsItemPedidoPED_CODIGO: TStringField;
    CdsItemPedidoPRD_REFER: TStringField;
    CdsItemPedidoPRF_QTDE: TFMTBCDField;
    CdsItemPedidoPRF_QTDEFAT: TFMTBCDField;
    CdsItemPedidoPRF_PRECO: TFMTBCDField;
    CdsItemPedidoPRF_CUSTO: TFMTBCDField;
    CdsItemPedidoPRF_MARGEM_PRODUTO: TFMTBCDField;
    CdsItemPedidoPRF_IDESCTO1: TFloatField;
    CdsItemPedidoPRF_IDESCTO2: TFloatField;
    CdsItemPedidoPRF_SITUACAO: TStringField;
    CdsItemPedidoPRF_ITEMCOMIS: TFMTBCDField;
    CdsItemPedidoPRF_IPIALIQ: TFMTBCDField;
    CdsItemPedidoEMP_CODIGO: TStringField;
    CdsItemPedidoPRF_PRECO_1: TFMTBCDField;
    CdsItemPedidoPRF_PRECO_BRUTO: TFMTBCDField;
    CdsItemPedidoPRF_OP: TStringField;
    CdsItemPedidoPRF_FLAG_ATUALIZA_ESTOQUE: TStringField;
    CdsItemPedidoPRF_ORIGEM_ITEM: TStringField;
    CdsItemPedidoPRF_PRODUTO_AGREGADO: TStringField;
    CdsItemPedidoAMX_CODIGO_DESTINO: TStringField;
    CdsItemPedidoPRF_COMPL_DESCRI: TStringField;
    CdsItemPedidoPRG_REGISTRO: TIntegerField;
    CdsItemPedidoPRDL_REGISTRO: TIntegerField;
    CdsItemPedidoPRDCO_CODIGO_ORIGINAL: TStringField;
    CdsItemPedidoPRF_ICMSALIQ: TFMTBCDField;
    CdsItemPedidoSTB_TRIBUTACAO: TStringField;
    CdsItemPedidoPRD_PCUSTO: TFMTBCDField;
    CdsItemPedidoPRD_CUSTOIPI: TFMTBCDField;
    CdsItemPedidoPRD_ORIGEM: TIntegerField;
    CdsItemPedidoIPI_CODIGO: TStringField;
    CdsItemPedidoPRD_PRODUTO: TStringField;
    CdsItemPedidoPRD_PESOKG: TFMTBCDField;
    CdsItemPedidoPRD_PESOLIQ: TFMTBCDField;
    CdsItemPedidoPRD_CUSTOCOMIPI: TFMTBCDField;
    CdsItemPedidoIPI_POR_PRODUTO: TFMTBCDField;
    CdsItemPedidoPGR_ATUALIZA_ESTOQUE: TStringField;
    CdsItemPedidoPGR_CODIGO: TStringField;
    CdsItemPedidoPTI_ATUALIZAR_ESTOQUE: TStringField;
    CdsItemPedidoOPV_ATESTOQUE: TStringField;
    CdsItemPedidoPRD_PRODSERV: TStringField;
    CdsItemPedidoPRD_REFER_MP: TStringField;
    CdsItemPedidoPGR_CODIGO_1: TStringField;
    CdsItemPedidoPRF_PRDDESCRI: TStringField;
    CdsItemPedidoID_PRD_ESPECIFICO: TIntegerField;
    CdsItemPedidoPRD_ESPECIFICO: TStringField;
    CdsItemPedidoPRD_ESPECIFICO_REDST: TSingleField;
    Label15: TLabel;
    CurServicos: TCurrencyEdit;
    Label31: TLabel;
    CurProdutos: TCurrencyEdit;
    GroupBox2: TGroupBox;
    PanOperacao: TLabel;
    GridItensNota: TDBGrid;
    CdsItemPedidoPRF_QTDE_FATURAR_CC: TFMTBCDField;
    CdsItemPedidoTOTAL_FATURAR: TFMTBCDField;
    dsRecParce: TDataSource;
    CdsItemPedidoOpe_Natureza: TStringField;
    CdsItemPedidoOpe_Codigo: TStringField;
    CdsItemPedidoPTI_SIGLA: TStringField;
    CdsPedidosPED_PLACA: TStringField;
    Label19: TLabel;
    DBEdit5: TDBEdit;
    CdsItemPedidoPRF_REGISTRO_VINCULADO: TIntegerField;
    edSerie: TEdit;
    Label36: TLabel;
    qRecParceFAT_NUMSERIE: TStringField;
    CdsPedidosPED_COMISSAO_VEN: TFMTBCDField;
    CdsPedidosREP_CODIGO_INTERNO: TStringField;
    CdsPedidosENDERECO_ENTREGA: TIntegerField;
    CdsNotaFiscalnf_finalidade: TIntegerField;
    qNotaFiscalnf_finalidade: TIntegerField;
    qNotaFiscalNF_FORMAPAGTO: TIntegerField;
    CdsNotaFiscalNF_FORMAPAGTO: TIntegerField;
    ChkNFE: TCheckBox;
    chkNotaConsumidor: TCheckBox;
    Label37: TLabel;
    edFPagto: TSgDbSearchCombo;
    qFPagto: TSQLQuery;
    CdsNotaFiscalFPG_REGISTRO: TIntegerField;
    qNotaFiscalFPG_REGISTRO: TIntegerField;
    qNotaFiscalNF_INTEGRADO: TStringField;
    qNotaFiscalNF_TIPONOTA: TStringField;
    CdsNotaFiscalNF_INTEGRADO: TStringField;
    CdsNotaFiscalNF_TIPONOTA: TStringField;
    CdsPedidosCLI_CPF: TStringField;
    CdsItemPedidoPRF_QTDEPEND: TFMTBCDField;
    CdsItemPedidoIPI_REDVLLIQ: TStringField;
    CdsNotaFiscalNF_VL_DESCTO_FAT: TFMTBCDField;
    qNotaFiscalNF_VL_DESCTO_FAT: TFMTBCDField;
    CdsItemPedidoPRF_PRODUTO_SEMVALOR: TStringField;
    CdsPedidosREP_NOME: TStringField;
    RxDataEmissao: TJvDateEdit;
    RxDataSaida: TJvDateEdit;
    CdsItemPedidoKIT_VIRTUAL: TIntegerField;
    CdsNotaFiscalNF_SITEXPEDICAO: TStringField;
    qNotaFiscalNF_SITEXPEDICAO: TStringField;
    CdsPedidosSITEXP: TStringField;
    CdsItemPedidoPRD_PMEDIO: TFMTBCDField;
    btnEmpresa: TBitBtn;
    CurrcodBanco: TEdit;
    CdsPedidosOPV_ESTOQUE_REMESSAINDUS: TStringField;
    CdsPedidosCLI_CGC: TStringField;
    CdsItemPedidoprd_cbenef: TStringField;
    mPedidoItem: TPopupMenu;
    Incluircbenef1: TMenuItem;
    CdsItemPedidoalterou_cbenef: TBooleanField;
    DBLookupComboBox1: TDBLookupComboBox;
    cdsFinalidade: TClientDataSet;
    cdsFinalidadecodigo: TIntegerField;
    cdsFinalidadefinalidade: TStringField;
    dsFinalidade: TDataSource;
    Label32: TLabel;
    tsServico: TTabSheet;
    Label38: TLabel;
    Label43: TLabel;
    SpeedButton5: TSpeedButton;
    qOperFiscope_temretencao: TStringField;
    edcidade: TEdit;
    edUF: TEdit;
    GroupBox4: TGroupBox;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    edISS: TCurrencyEdit;
    edINSS: TCurrencyEdit;
    edCSLL: TCurrencyEdit;
    EDir: TCurrencyEdit;
    edPIS: TCurrencyEdit;
    edCOFINS: TCurrencyEdit;
    edValorISS: TCurrencyEdit;
    edValorINSS: TCurrencyEdit;
    edValorCSLL: TCurrencyEdit;
    edValorCOFINS: TCurrencyEdit;
    edValorIR: TCurrencyEdit;
    edValorPIS: TCurrencyEdit;
    qIcmsFCP_PERC: TFMTBCDField;
    qNotaFiscalNF_VALOR_TOTAL_FCPST: TFMTBCDField;
    CdsNotaFiscalNF_VALOR_TOTAL_FCPST: TFMTBCDField;
    qOperFiscOPE_CST_IPI: TStringField;
    qOperFiscOPE_CST_PISCOFINS: TStringField;
    CdsItemPedidoRegraCFOP: TIntegerField;
    btnAdicionar: TBitBtn;
    BitBtn1: TBitBtn;
    qOperFiscOPE_TRIBUTAR_INSS: TStringField;
    qOperFiscOPE_TRIBUTAR_CSLL: TStringField;
    qOperFiscOPE_TRIBUTAR_IR: TStringField;
    qOperFiscOPE_TRIBUTAR_PIS: TStringField;
    qOperFiscOPE_TRIBUTAR_COFINS: TStringField;
    qNotaFiscalNF_TotalICMS_Deson: TFMTBCDField;
    CdsNotaFiscalNF_TotalICMS_Deson: TFMTBCDField;
    qOperFiscOPE_ICMS_DESONERADO_DIMINUI: TStringField;
    dblcInscricaoEstadual: TDBLookupComboBox;
    dsInscricaoEstadual: TDataSource;
    qInscricaoEstadual: TSQLQuery;
    cdsInscricaoEstadual: TClientDataSet;
    dspInscricaoEstadual: TDataSetProvider;
    lbInscricaoEstadual: TLabel;
    btnLimpar: TSpeedButton;
    qIcmsICM_TIPO_CALCULO_DIFAL: TIntegerField;
    CdsItemPedidoOPE_CODIGO_RETORNO: TStringField;
    qOperFiscOPE_DESP_ACES_PIS_COFINS: TStringField;
    CdsItemPedidoCAP_CODIGO: TIntegerField;
    CdsPedidosPED_VLDIFAL: TFMTBCDField;
    qNotaFiscalNF_VLDIFAL: TFMTBCDField;
    CdsNotaFiscalNF_VLDIFAL: TFMTBCDField;
    qOperFiscOPE_ARTIGO_DIFERIMENTO: TStringField;
    GroupBox6: TGroupBox;
    CbConsFinal: TComboBox;
    luso: TLabel;
    Label8: TLabel;
    Label52: TLabel;
    chkFreteProporcional: TCheckBox;

    procedure CurrcodBancoExit(Sender: tObject);
    procedure BitConfirmaNotaClick(Sender: tObject);
    procedure DBEditQtdeKeyPress(Sender: tObject; var Key: Char);
    procedure CdsItemPedidoCalcFields(DataSet: TDataSet);
    procedure GridItensNotaDrawColumnCell(Sender: tObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBMemoObsExit(Sender: tObject);
    procedure EdTransportadoraCodigoExit(Sender: tObject);
    procedure btnMudaNumeroFaturaClick(Sender: tObject);
    procedure CurrNumNotaChange(Sender: tObject);
    procedure DBEditPesoBrutoExit(Sender: tObject);
    procedure DBEditPesoLiqExit(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure CdsItemPedidoPRD_REFERGetText(Sender: TField;      var Text: String; DisplayText: Boolean);
    procedure CbTransportadoraSelect(Sender: tObject);
    procedure CbBancosSelect(Sender: TObject);
    procedure CbOperSelect(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RxDataEmissaoExit(Sender: TObject);
    procedure RadSaidaClick(Sender: TObject);
    procedure CdsNotaFiscalAfterInsert(DataSet: TDataSet);
    procedure BitCancelarClick(Sender: TObject);
    procedure GridItensNotaKeyDown(Sender: tObject; var Key: Word; Shift: TShiftState);
    procedure RxDataSaidaExit(Sender: tObject);
    procedure GridItensNotaDblClick(Sender: TObject);
    procedure RadEntradaClick(Sender: TObject);
    procedure CurrNumNotaExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CbOperClick(Sender: TObject);
    procedure chkNotaConsumidorClick(Sender: TObject);
    procedure ChkNFEClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnEmpresaClick(Sender: TObject);
    procedure Incluircbenef1Click(Sender: TObject);
    procedure CdsItemPedidoalterou_cbenefGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure SpeedButton5Click(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure dblcInscricaoEstadualClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    function VerificaLancamentosContasReceber():Boolean;
    procedure CdsRecParceBeforeInsert(DataSet: TDataSet);

  public
    wTotalDesoneracao : double;
    FNF_REGISTRO : INTEGER;
    cid_codigo_prestacao : integer;
    lcCodPedido, wauxCST: string;
    fEmp_codigo: string;
    fEmp_codigoOriginal:string;
    FGeraPedido : boolean;
    rRateioFreteDiferenca, rRateioDifalDiferenca, rRateioDespesaDiferenca, rRateioSeguroDiferenca, rRateioDescontoDiferenca: Real;
    wCST_CODIGO, wCBenef: string;
    wCadProdAliqIcms, wValorIPI, wIPIFrete, wPorcDescto, wIcmsAliq, wCALCULO, wPrecoMatPrima: Real;
    wVlParce, wValor1Parcela: Real;
    bAlteradoManual: Boolean;
    wCest : String ;
    wIBPTAliqImp, wIBPTAliqNac, wIBPTAliqEst, wIbptAliqFed, wValorAproxTributosItem, wValorAproxTributosTot : Currency ;
    sTipoFaturamento:string;
    FIntegrar : boolean;
    sObsNota: WideString;
    w_Nao_Quer_Peso_Na_NF, wClassificacaoFiscal: string;
    bIniciadoNumeracao, bEscrita: Boolean;
    WFAT_VLFAT, wValorProdGeral, cRetencao: CURRENCY;
    rt1 : Extended;
    rRateioTmp: Real;
    lIsIndustria : boolean ;
    wPMC: currency;
    rValorIPIUnidade: Double;
    bIPIPorUnidade: Boolean;
    wFator,wIcms : double;
    wIcmDifalST, wDifalST, wIcmEstad, wBaseValorProd : double;
    bIsentarICMS: boolean;
    wIcmNoEstado, wIcmForaEstado : Currency;
    lIsProdutoEspecifico, lIsMedicamento : Boolean;
        wDescPISCofins,
        wALiqICmsCliente, wTotalIPI, wTotalIPITotalNF, wValorSubs: Real;
        wValorProd, wValorProdFaturar, wValorProdIndividual: Real;
        wRateioFreteSeguroDesp, wIPIDESPIMPORT, wDesctoItemValor: Real;
        wDesctoValorIPI, wTotalSemComissao, wBaseIcmsIndividual, wValorIcmsIndividual: Real;
        wBaseIPIIndividual, wValorIPIIndividual, wBaseIcms, wBaseIPI, wValorIcms: Real;
				wValorCredSimples, wTotalBaseIcmsIndividual, wTotalBaseVlIcmsIndividual: Real;
				wTotalBaseIcms, wTotalVlBaseIcms, wDesctoValorICMS, wBaseValorSubs, wTeste: Real;
				wTotalValorSubs, wBasePIS, wBaseCOFINS, wAliquotaPIS, wAliquotaCOFINS: Real;
				wValorPIS, wValorCOFINS, wValorTotalPIS, wValorTotalCOFINS, wTotalBaseValorSubs: Real;
				wFreteIndividual, wDespesaIndividual, wSeguroIndividual, wDescontoIndividual, wBaseicms_simples, wBaseicms_simplesAproveit: Real;
				wVTotFPC,wVTotFPC_st, wVTotPartDest, wVTotPartOrig, wALiqICmsInterno, wAliqFCP, wALiqICmsInterEstadual,wAliqIcmsImportado, vICMSSubstitutoTotal: Currency ; // adr 2015
				wConsumidor, wVenda, wSalvaDadosFCPPartilha: Boolean ; // adr 2015
				wDifal, wBaseProduto, wIcmDifal, wPercentPartilha, wValFCP, wPartDest, wPartOrig: Currency ; // adr 2015
				wCalBaseValorSubs, wUfAliqMVA, wAliqreduzidaICMS, wUfResultMVA, wUfAliqIcmsForaEst, wUfAliqIcmsInterestadlRegra, wUfAliqIcmsSubCli, wUfAliqIcmsSubCliRegra, wReducaoBaseST: Real; {jko}
				wForaEstSN, wExterior, wUfAplMvaSomaSN, wUfIcmsSubSN,        {jko}
				wTemSubs: string;    {jko}
        CreditoConta : double;
				wSequenciaNFe, IcmTipoCalculoDifal: integer;   { mar }
        sFat_CODIGO : string;
    cstPISCOFINS : string;
    fSerieNF, fUF, fwAtualizaEstoque, fwTp_Cobranca, fwTp_Docto, fsReferenciaProvisoriaOrcamento, fwCod_Carteira,
    fOPT_SIMPLES , fwNFModelo, fwPrmMarca, fwPrmEspecie, fTipoSeqNfe, fPMT_GerarTagICMSSubsPagaAnter,femp_crt,fPMT_CERTIFICADO_DIGITAL : string;

    // NOTA FISCAL
    PMT_MENSAGEM1, PMT_MENSAGEM2, PMT_MENSAGEM3 : string;

    fwPMT_CONTROLA_KIT , fwPMT_FATURAR_PENDENCIAS, fwPrm_NrPedido_Vendedor_fat, fwPmt_Ativa_NFCE, fbEMP_NFE_FAT,
    fbFaturamentoIPI1Parcela, fbFaturamentoST1Parcela, fwPMT_COMP_ITEM_PEDIDO_IT_NF, fwPMT_ITENS_KIT, fwPMT_TRIB_NF :  boolean;
    fALIQ_CREDITO : real;
	  fiCSOSN, fwCalcularPV : integer;
    fEMP_PIS_ALIQ, fEMP_COFINS_ALIQ : Currency;
    Cfop_per_deferido : double ;/// deferido valor , se um item houver trazer para nota
    cfop_indice_reducao : double ; //reducao de valor de icms, se um item houver trazer na nota
    vTotalICMS_Deson, AliquotaDesonGeral, QuantidadeTotalDeItens : double;
    procedure GravaNotaFiscal;
    procedure FinalizarTratamentoTermico;
    function NotaParcial : boolean;
    procedure GravaItensNota;
    Function BuscaOperacaoNovo ( const pCodOper: string ):Boolean;
    function VerificaNumeroUtilizado(numero: Integer): Boolean;
    procedure CarregaTelaNF;
    procedure ChamaTelaQtdeFaturar;
    procedure CalculaPeso;
    procedure Gravar_Item_Nota(const sNota, sItem: string);
    procedure AdicionaNumeroFatura;
    procedure RemoveNumeroFatura;
    procedure GetPercentualPartilhaIcm;
    function GetCSOSN: integer;
    procedure CdsItemPedidoOpen;
    procedure BuscarPlacaVeiculoTransportadora;
    procedure DadosAdicionaisSimples;
    procedure InformacoesCredito;
    procedure SetCodPedido(const Value: string);
    procedure SetEmpCodigo(const Value: string);
    procedure SetEmpCodigoOriginal (const Value: string);
    procedure SetIntegrar( const Value : boolean);
    procedure BuscaIBPT(const pNCM: string; var vAliqImp, vAliqNac, vAliqEst: Currency);
    function LerCestProdutO(const RefProduto: string): string;
    procedure CalculaValorTotalFaturar;
    procedure AtualizaPedido;
    function GravaFatura : integer;
    procedure AjustaFiltroCfop;
    function FiltroCFOP:string;
    procedure AtualizaEstoque;
    function EstoqueInsuficiente: boolean;
    function GravarCreditoCliente(const conta : string ; const fat_registro: integer; const valor : double)  : boolean;
    Function BuscaRegra ( const pNbm, pUf, pRegCfop, prd_origem : string ): integer;
    function ChavePrimariaNF: Integer;
    procedure InsereCreditoContasReceber(CreditoContaCR: double);
    procedure ObtemTotalNota;
    procedure RateioFrete_despesas;
    Procedure IniciaVar ;
    procedure IniciaVarItem;
    Procedure LeRegra ( pRegra:integer; cfopCodigo : string = '' );
    procedure NotaDeDevolucao;
    procedure ItensDaNotaDeDevolucao(var sNF_IPIALIQ, sNF_ICMSVALOR: Currency; sNF_SUBTRIBASE, sNF_ALIQSUBTRIB, sNF_VLSUBST: string)  ;
    function RateioFrete: double;
  public
    procedure CarregarParametros;
    property TipoFaturamento: String Read sTipoFaturamento Write sTipoFaturamento;
    property CodPedido: string Read lcCodPedido Write SetCodPedido;
    property EmpCodigo : string read femp_codigo write SetEmpCodigo;
    property EmpCodigoOriginal : string read fEmp_codigoOriginal write SetEmpCodigoOriginal; //não muda depois que abre
    property GerarPedido : boolean read   FGeraPedido write FGeraPedido;
    property Integrar : boolean read FIntegrar write SetIntegrar;
    property Fat_Codigo : string read sFat_CODIGO write sFat_CODIGO;
    var
      geraFaturamento: Boolean;
  private
    cfop_Nota : TStringList;

  end;

var
   FormFatPedido: TFormFatPedido;

implementation

uses Fat0002, FATPARC, uCadastroFrases, uteis, iniciodb, uAvisos, rwfunc,
  fat0000, uPesqEmpresa, CID0002, uPesqChaveRefer, uPedido, uProdutoDao, uPedidoItem;

{$R *.dfm}

procedure TFormFatPedido.DBEditQtdeKeyPress(Sender: tObject; var Key: Char);
begin
     if not (key in ['0'..'9', #8]) then
        Key := #0;
end;

procedure TFormFatPedido.dblcInscricaoEstadualClick(Sender: TObject);
begin
  inherited;
  edSerie.text := BuscaUmDadoSqlAsString('SELECT EMI_SERIE_NF FROM EMP_MULTIPLAS_IE WHERE EMI_CODIGO = ' + VarToStr(dblcInscricaoEstadual.KeyValue));
  fSerieNF     := edSerie.text;
  CdsNotaFiscalNF_SERIE.AsString := fSerieNF;
end;

procedure TFormFatPedido.CarregarParametros;
var
  ie, pedCodigo: string;
begin
  //if dbinicio.Empresa.wPMT_FATURA_MULTIEMPRESA then
  if EmpCodigo = '' then
    EmpCodigo := DBInicio.Empresa.EMP_CODIGO;

  if (DBInicio.Empresa.EMP_CODIGO = EmpCodigo) then
  begin    // primeiro carregamento
    fPMT_CERTIFICADO_DIGITAL:=  dbinicio.Empresa.wPMT_CERTIFICADO_DIGITAL;
    if Fat0000.FormFaturamento = nil then
      pedCodigo := frmPedido.edPedidoNumero.Text
    else
      pedCodigo := FormFaturamento.cdsPedidos.FieldByName('PED_CODIGO').AsString;

    //      pedCodigo := FormFaturamento.cdsNotas.FieldByName('PED_CODIGO').AsString;

    ie := BuscaUmDadoSqlAsString('SELECT EMI_CODIGO FROM PEDIDO_IE WHERE PED_CODIGO = ' + QuotedStr(pedCodigo));
    if ie = '' then
      ie := BuscaUmDadoSqlAsString('SELECT EMI_CODIGO FROM PED0000 WHERE PED_CODIGO = ' + QuotedStr(pedCodigo));
    if (DBInicio.GetParametroSistema('PMT_MULTIPLAS_IE') = 'S') then
      fSerieNF     := BuscaUmDadoSqlAsString('SELECT EMI_SERIE_NF FROM EMP_MULTIPLAS_IE WHERE EMI_CODIGO = ' + ie)
    else
      fSerieNF     := DBInicio.Empresa.SerieNF;

    fwPMT_FATURAR_PENDENCIAS := DBInicio.Empresa.wPMT_FATURAR_PENDENCIAS;
    fUF := DBInicio.Empresa.UF;
    fwTp_Docto := DBInicio.Empresa.wTp_Docuto;
    fwTp_Cobranca := DBInicio.Empresa.wTp_Cobranca;
    fwPrm_NrPedido_Vendedor_fat := DBInicio.Empresa.wPrm_NrPedido_Vendedor_fat;
	  fwPmt_Ativa_NFCE := DBInicio.Empresa.wPmt_Ativa_NFCE;
    fbEMP_NFE_FAT := DBInicio.Empresa.bEMP_NFE_FAT;
    fwAtualizaEstoque := DBInicio.Empresa.wAtualizaEstoque;
    fsReferenciaProvisoriaOrcamento := DBInicio.Empresa.sReferenciaProvisoriaOrcamento;
    fwCod_Carteira := dbInicio.empresa.wCod_Carteira;
    fOPT_SIMPLES := DBInicio.Empresa.OPT_SIMPLES;
    fALIQ_CREDITO := DBInicio.Empresa.ALIQ_CREDITO;
    fwNFModelo := DBInicio.Empresa.wNFModelo;
    fwPrmMarca := DBInicio.Empresa.wPrmMarca;
    fwPrmEspecie := DBInicio.GetParametroSistema('PMT_NF_ESPECIE');
    fiCSOSN := dbInicio.Empresa.iCSOSN;
    fwCalcularPV := DBInicio.Empresa.wCalcularPV;
    fTipoSeqNfe := DBInicio.Empresa.TipoSeqNfe;
    fPMT_GerarTagICMSSubsPagaAnter := DBInicio.Empresa.PMT_GerarTagICMSSubsPagaAnter;
    fwPMT_CONTROLA_KIT := DBInicio.Empresa.wPMT_CONTROLA_KIT;
    fbFaturamentoIPI1Parcela := DBInicio.Empresa.bFaturamentoIPI1Parcela;
    fbFaturamentoST1Parcela := DBInicio.Empresa.bFaturamentoST1Parcela;
    fwPMT_COMP_ITEM_PEDIDO_IT_NF  := DBInicio.Empresa.wPMT_COMP_ITEM_PEDIDO_IT_NF;
    fwPMT_ITENS_KIT := DBInicio.Empresa.wPMT_ITENS_KIT;
    fwPMT_TRIB_NF := DBInicio.Empresa.wPMT_TRIB_NF;
    fEMP_PIS_ALIQ:= dbInicio.Empresa.EMP_PIS_ALIQ ;
    fEMP_COFINS_ALIQ := dbInicio.Empresa.EMP_COFINS_ALIQ ;
    femp_crt := DBInicio.Empresa.emp_crt;
    PMT_MENSAGEM1 := DBInicio.Empresa.PMT_MENSAGEM1;
    PMT_MENSAGEM2 := DBInicio.Empresa.PMT_MENSAGEM2;
    PMT_MENSAGEM3 := DBInicio.Empresa.PMT_MENSAGEM3;
  end
  else
  begin
     OpenAux2( '   SELECT EMP_SERIE_NFE,'+
             '          PMT_FATURAR_PENDENCIAS,'+
             '          EMP_UF,'+
             '          PMT_TP_DOCTO,'+
             '          PMT_TP_COBRANCA,'+
             '          PMT_FAT_MSG_PEDIDO_VEND,'+
             '          EMP_HAB_NFCE,'+
             '          EMP_NFE_FAT,'+
             '          PMT_ATULIZA_ESTOQUE,'+
             '          PMT_REFERENCIA_PROVISORIA,'+
             '          PMT_COD_CARTEIRA,'+
             '          EMP_OPTANTE_SIMPLES,'+
             '          EMP_DIREITO_CREDITO,'+
             '          SIN_MODE_NF,'+
             '          PMT_NF_MARCA,'+
             '          PMT_NF_ESPECIE,'+
             '          EMP_CSOSN,'+
             '          PMT_CALCULARPV,'+
             '          EMP_GENERATION_NFE,'+
             '          PMT_GerarTagICMSSubsPagaAnter,'+
             '          PMT_CONTROLA_KIT,'+
             '          PMT_DPL_IPI_NA1D,'+
             '          PMT_DPL_ST_NA1D, '+
             '          PMT_COMP_ITEM_PEDIDO_IT_NF,'+
             '          PMT_ITENS_KIT,'+
             '          PMT_TRIB_NF,'+
             '          PMT_MENSAGEM1,'+
             '          PMT_MENSAGEM2,'+
             '          PMT_MENSAGEM3,'+
             '          EMP_PIS_ALIQ,'+
             '          EMP_COFINS_ALIQ, EMP_CRT, PMT_CERTIFICADO_DIGITAL'+
             '   FROM EMP0000 e JOIN PRMT0001 p ON (p.EMP_CODIGO = e.EMP_CODIGO)'+
             ' where e.emp_codigo = '+QuotedStr(EmpCodigo));
      if DBInicio.GetParametroSistema('PMT_MULTIPLAS_IE') = 'S' then
        fSerieNF     := BuscaUmDadoSqlAsString('SELECT EMI_SERIE_NF FROM EMP_MULTIPLAS_IE WHERE EMI_CODIGO = ' + VarToStr(dblcInscricaoEstadual.KeyValue))
      else
        fSerieNF     := qAux2.FieldByName('EMP_SERIE_NFE').asString;
      fPMT_CERTIFICADO_DIGITAL := qAux2.FieldByName('PMT_CERTIFICADO_DIGITAL').AsString;
      fwPMT_FATURAR_PENDENCIAS  :=    qAux2.FieldByName('PMT_FATURAR_PENDENCIAS').AsBoolean;
      fUF  :=    qAux2.FieldByName('EMP_UF').asString;
      fwTp_Docto  :=    qAux2.FieldByName('PMT_TP_DOCTO').asString;
      fwTp_Cobranca  :=    qAux2.FieldByName('PMT_TP_COBRANCA').asString;
      fwPrm_NrPedido_Vendedor_fat  :=    qAux2.FieldByName('PMT_FAT_MSG_PEDIDO_VEND').AsBoolean;
      fwPmt_Ativa_NFCE  :=    qAux2.FieldByName('EMP_HAB_NFCE').AsBoolean;
      fbEMP_NFE_FAT:=    qAux2.FieldByName('EMP_NFE_FAT').AsBoolean;
      fwAtualizaEstoque   :=    qAux2.FieldByName('PMT_ATULIZA_ESTOQUE').asString;
      fsReferenciaProvisoriaOrcamento  :=    qAux2.FieldByName('PMT_REFERENCIA_PROVISORIA').asString;
      fwCod_Carteira       :=    qAux2.FieldByName('PMT_COD_CARTEIRA').asString;
      fOPT_SIMPLES       :=    qAux2.FieldByName('EMP_OPTANTE_SIMPLES').asString;
      fALIQ_CREDITO      :=    qAux2.FieldByName('EMP_DIREITO_CREDITO').AsFloat;
      fwNFModelo       :=    qAux2.FieldByName('SIN_MODE_NF').asString;
      fwPrmMarca      :=    qAux2.FieldByName('PMT_NF_MARCA').asString;
      fwPrmEspecie     :=    qAux2.FieldByName('PMT_NF_ESPECIE').asString;
      fiCSOSN      :=    qAux2.FieldByName('EMP_CSOSN').AsInteger;
      fwCalcularPV    :=    qAux2.FieldByName('PMT_CALCULARPV').AsInteger;
      fTipoSeqNfe      :=    qAux2.FieldByName('EMP_GENERATION_NFE').asString;
      fPMT_GerarTagICMSSubsPagaAnter        :=    qAux2.FieldByName('PMT_GerarTagICMSSubsPagaAnter').asString;
      fwPMT_CONTROLA_KIT       :=    qAux2.FieldByName('PMT_CONTROLA_KIT').AsBoolean;
      fbFaturamentoIPI1Parcela        :=    qAux2.FieldByName('PMT_DPL_IPI_NA1D').AsBoolean;
      fbFaturamentoST1Parcela      :=    qAux2.FieldByName('PMT_DPL_ST_NA1D').AsBoolean;
      fwPMT_COMP_ITEM_PEDIDO_IT_NF       :=    qAux2.FieldByName('PMT_COMP_ITEM_PEDIDO_IT_NF').AsBoolean;
      fwPMT_ITENS_KIT        :=    qAux2.FieldByName('PMT_ITENS_KIT').AsBoolean;
      fwPMT_TRIB_NF     :=    qAux2.FieldByName('PMT_TRIB_NF').AsBoolean;
      fEMP_PIS_ALIQ        :=    qAux2.FieldByName('EMP_PIS_ALIQ').asFloat;
      fEMP_COFINS_ALIQ        :=    qAux2.FieldByName('EMP_COFINS_ALIQ').asFloat;
      femp_crt  := qAux2.FieldByName('EMP_CRT').AsString;

      PMT_MENSAGEM1  := qAux2.FieldByName('PMT_MENSAGEM1').AsString;
      PMT_MENSAGEM2  := qAux2.FieldByName('PMT_MENSAGEM2').AsString;
      PMT_MENSAGEM3  := qAux2.FieldByName('PMT_MENSAGEM3').AsString;

  end

end;

procedure TFormFatPedido.CarregaTelaNF;
var
  PedidoInfor, obsPedidoVenda, opvVenda: string;

begin
     CurrNumNota.Text := StrZero(CurrNumNota.Text, 6);
     if sTipoFaturamento = 'S' then // pegar da empresa  NFSE a série
      begin
       if (DBInicio.NFSE.Serie = '') and (DBInicio.GetParametroSistema('PMT_MULTIPLAS_IE') <> 'S') then
       begin
         RemoveNumeroFatura; // remover a fatura criada
         GeraException('Série da NFSE não preenchida. Vá ao cadastro de empresa');
       end;
       if DBInicio.GetParametroSistema('PMT_MULTIPLAS_IE') = 'S' then
         edSerie.text    := BuscaUmDadoSqlAsString('SELECT EMI_SERIE_NF FROM EMP_MULTIPLAS_IE WHERE EMI_CODIGO = ' + VarToStr(dblcInscricaoEstadual.KeyValue))
       else
         edSerie.text := DBInicio.NFSE.Serie
      end
     else
     begin
       if (fSerieNF = '') and (DBInicio.GetParametroSistema('PMT_MULTIPLAS_IE') <> 'S') then
       begin
         RemoveNumeroFatura; // remover a fatura criada
         GeraException('Série da NFe não preenchida. Vá ao cadastro de empresa');
       end;
       if DBInicio.GetParametroSistema('PMT_MULTIPLAS_IE') = 'S' then
         edSerie.text    := '?????'
       else
         edSerie.Text := fSerieNF;


     end;
     cdsNotaFiscal.Close;
     qNotaFiscal.Sql.Text := 'Select * from NF0001 where NF_NOTANUMBER = ' + qStr(StrZero(CurrNumNota.Text,6)) ;
     if dbInicio.Exclusivo('RECEBER') then
         qNotaFiscal.Sql.Add(' and emp_codigo = '+QuotedStr(EmpCodigo));
     CdsNotaFiscal.Open;

     if (CdsNotaFiscal.IsEmpty)  or (CurrNumNota.Text ='0') or (integrar and not CdsNotaFiscal.IsEmpty)  then
        CdsNotaFiscal.Insert;


     CbTransportadora.idRetorno := CdsPedidosTRP_CODIGO.asString;
     if TipoFaturamento = 'P'  then
      CdsNotaFiscalNF_VLFRETE.AsFloat := CdsPedidosPED_VLFRETE.AsFloat;
     CdsNotaFiscalNF_VLSEGURO.AsFloat := CdsPedidosPED_VLSEGURO.AsFloat;
     CdsNotaFiscalNF_DESP_ACES.AsFloat := CdsPedidosPED_DESP_ACES.AsFloat; // + CdsPedidosPED_VLDIFAL.AsFloat;
     CdsNotaFiscalNF_VLDIFAL.AsFloat := CdsPedidosPED_VLDIFAL.AsFloat;
     CdsNotaFiscalNF_DESP_IMPORT.AsFloat := CdsPedidosPED_DESP_IMPOR.AsFloat;


    sObsNota := CdsPedidosPED_OBSERVACAO_NOTA.AsString;
    CdsNotaFiscalNF_OBSERVACAO.AsString := sObsNota;

    if not(CdsPedidosENDERECO_ENTREGA.IsNull) and (CdsPedidosENDERECO_ENTREGA.AsInteger <> 0)  then
    begin
      OpenAux('SELECT (COALESCE(DESCRICAO,'''') || '',''|| COALESCE(numero,'''') ||''-''|| COALESCE(COMPLEMENTO,'''')) AS CLI_ENDENTR, '+
              '  cidade as CLI_CIDENTR, ESTADO AS CLI_UFENTR, CEP AS CLI_CEPENTR '+
              'FROM ENDERECO  WHERE codigo = '+ IntToStr(CdsPedidosENDERECO_ENTREGA.AsInteger)
              );
      if not qaux.IsEmpty then
       CdsNotaFiscalNF_OBSERVACAO.asstring := CdsNotaFiscalNF_OBSERVACAO.asstring+iif ( sObsNota<>'', #13, '' )+
                                              'Endereço Entrega: ' + TRIM(qAux.FieldByName('CLI_ENDENTR').AsString) +
                                              ' - Cidade :' + qAux.FieldByName('CLI_CIDENTR').AsString +
                                              '/' + qAux.FieldByName('CLI_UFENTR').AsString +
                                              ' - CEP : ' +  FormataCEP(qAux.FieldByName('CLI_CEPENTR').AsString) +'.';
    end;
   if (fwPrm_NrPedido_Vendedor_fat) then
   begin
     if (CdsPedidosPED_CODIGO.AsString <> '') then
       PedidoInfor :=   'Pedido: ' + CdsPedidosPED_CODIGO.AsString+'. ';
     if (CdsPedidosREP_CODIGO.AsString <> '') then
       PedidoInfor := PedidoInfor+ 'Vendedor: ' + CdsPedidosREP_CODIGO.AsString +'-'+CdsPedidosREP_NOME.AsString;
     if CdsNotaFiscalNF_OBSERVACAO.asstring='' then
      CdsNotaFiscalNF_OBSERVACAO.asstring :=  PedidoInfor +'. '
     else
      CdsNotaFiscalNF_OBSERVACAO.asstring := CdsNotaFiscalNF_OBSERVACAO.asstring + #13#10+  PedidoInfor +'. ';
   end;

   opvVenda := dbInicio.BuscaUmDadoSqlAsString('SELECT OPV_VENDA FROM OPV0000 WHERE  OPV_CODIGO = '+QuotedStr(CdsPedidosOPV_CODIGO.AsString  ));
   if opvVenda = 'S' then
   begin
       obsPedidoVenda := #13 + #10 + dbInicio.BuscaUmDadoSqlAsString('SELECT PMT_MENSAGEM_VENDAS FROM PRMT0001 WHERE  EMP_CODIGO = ' + QuotedStr(dbInicio.EMP_CODIGO  )) + ' - ';
   end
   else
      obsPedidoVenda := '';
   CdsNotaFiscalNF_OBSERVACAO.AsString := obsPedidoVenda  + CdsNotaFiscalNF_OBSERVACAO.AsString + #13#10 + DBInicio.Empresa.PMT_MENSAGEM1 + ' ' + DBInicio.Empresa.PMT_MENSAGEM2 + ' ' + DBInicio.Empresa.PMT_MENSAGEM3;
   sObsNota := CdsNotaFiscalNF_OBSERVACAO.AsString;
end;

procedure TFormFatPedido.ChamaTelaQtdeFaturar;
var clone: TClientDataSet;
 registro : integer;
 faturadosKit: double;
 cfopDestino  : string;
 bregra :  integer;
begin
  if (CdsItemPedidoPRF_QTDEFAT.AsFloat < CdsItemPedidoPRF_QTDE.AsFloat) then
  begin
    FormFaturar := TFormFaturar.Create(Application);
    try
       if CdsItemPedidoCFOP.AsString<>'' then
          FormFaturar.CodCfop:=CdsItemPedidoCFOP.AsString
       ELSE
       Begin
          wCST_CODIGO := CdsItemPedido.FieldByName('STB_TRIBUTACAO').AsString;

          bRegra := BuscaRegra ( CdsItemPedido.FieldByName('IPI_CODIGO').AsString {wClassificacaoFiscal},
                                 CdsPedidosCLI_UF.AsString,
                                 cboper.idRetorno,
                                 CdsItemPedido.FieldByName('prd_origem').AsString {sprd_Origem}  ) ;

 			    if bRegra<>0 then
          begin
             openaux ( 'SELECT * FROM ope_regra where opr_registro = ' + IntToStr( bRegra ) );
             if BuscaOperacaoNovo ( qAux.FieldByName('OPE_DESTINO').AsString ) then
             begin
               cfopDestino :=  qAux.FieldByName('OPE_DESTINO').AsString;
               FormFaturar.CodCfop := cfopDestino;
             end;
             IF not (CdsItemPedido.State IN dsEditModes) Then
               CdsItemPedido.Edit;
             CdsItemPedidoRegraCFOP.AsInteger  :=bRegra;
             //CdsItemPedido.Post;
						 //LeRegra( bRegra ,CdsItemPedido.FieldByName('STB_TRIBUTACAO').AsString, bIsentarICMS)
          end
          else
            FormFaturar.CodCfop := cboper.idRetorno;
            FormFaturar.Registro := CdsItemPedido.RecNo;


       End;
       FormFaturar.ShowModal;
       if FormFaturar.modalresult=mrOk then
       begin
          if not (CdsItemPedido.State IN dsEditModes) Then
          CdsItemPedido.Edit;
          if (FormFaturar.QtdFaturar >= 0) then
          begin
              IF not fwPMT_FATURAR_PENDENCIAS and (CdsItemPedidoPRF_QTDEPEND.AsCurrency >0) and
                (FormFaturar.QtdFaturar = CdsItemPedidoPRF_QTDE.AsCurrency)  then
                GeraException('Não pode faturar, quantidade insuficiente de estoque');

               CdsItemPedidoPRF_QTDE_FATURAR_CC.AsCurrency := FormFaturar.QtdFaturar;
               CdsItemPedidoTOTAL_FATURAR.asCurrency := CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat * CdsItemPedidoPRF_PRECO.AsFloat;
          end;
          BuscaOperacaoNovo ( FormFaturar.CodCfop );
          // quando ele pegou uma regra antes de iniciar a tela, e que tem um cfop do destino , mas mesmo assim
          // ele trocou o cfop, neste caso, ele vai desconsiderar a regra
          if (cfopDestino <> '') and (cfopDestino<>FormFaturar.CodCfop) and (CdsItemPedidoRegraCFOP.AsInteger>0)  then
            CdsItemPedidoRegraCFOP.AsInteger := 0;

          CdsItemPedidoCFOP.AsString := FormFaturar.CodCfop;
          CdsItemPedidoOPE_NATUREZA.AsString := qOperFiscOPE_NATUREZA.AsString;
          CdsItemPedidoOPE_CODIGO.AsString := qOperFiscOPE_CODIGO.AsString;
          // CdsItemPedidoOPE_CODIGO_RETORNO.AsString := CdsItemPedidoOPE_CODIGO_RETORNO.AsString;
          CdsItemPedido.Post;
          faturadosKit :=  CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat;
          registro := CdsItemPedidoPRF_REGISTRO.AsInteger;
          clone := TClientDataSet.Create(Self);
          try
            clone.CloneCursor(CdsItemPedido,false);
            clone.Filtered:= False;
            clone.Filter := 'PRF_REGISTRO_VINCULADO = '+ IntToStr(registro);
             clone.Filtered:= True;
            clone.First;
            while not clone.Eof do
            begin
              clone.Edit;
              clone.FieldByName('PRF_QTDE_FATURAR_CC').AsFloat :=  clone.FieldByName('PRF_QTDE').AsFloat * faturadosKit ;
              if clone.FieldByName('PRF_PRECO').AsFloat > 0 then
                clone.FieldByName('TOTAL_FATURAR').AsFloat :=  clone.FieldByName('PRF_PRECO').AsFloat * clone.FieldByName('PRF_QTDE_FATURAR_CC').AsFloat ;

              CLONE.Post;
              clone.Next;
            end;
          finally
            clone.Free;
          end;

          BuscaOperacaoNovo(CbOper.idRetorno);
          // BuscaOperacaoNovo ( FormFaturar.CodCfop );

          CalculaValorTotalFaturar;
          CalculaPeso;
       end;
    finally
      FreeAndNil( FormFaturar );
    end;
  end;
end;


function TFormFatPedido.ChavePrimariaNF: Integer;
begin
  IF FNF_REGISTRO =0  THEN
    FNF_REGISTRO := dbInicio.GetNextSequence('GEN_NF_REGISTRO');
  Result := FNF_REGISTRO;
end;

procedure TFormFatPedido.ChkNFEClick(Sender: TObject);
begin
  inherited;
  if ChkNFE.Checked then
    chkNotaConsumidor.Checked := False;

end;

procedure TFormFatPedido.chkNotaConsumidorClick(Sender: TObject);
begin
  inherited;
  if chkNotaConsumidor.Checked then
    ChkNFE.Checked := False;
  AdicionaNumeroFatura;
end;

function TFormFatPedido.FiltroCFOP: string;
var
 flt :string;
begin
     flt := 'OPE_ATIVA='+qStr('S');
     if RadSaida.checked  then
        flt := flt + ' and OPE_TIPO = '+qStr('S')
     Else
        flt := flt + ' and OPE_TIPO = '+qStr('E');

     if CdsPedidosCLI_UF.AsString = fUF then // estadual
        flt := flt + ' and OPE_DENTRO <> '+qStr('F')
     else
        flt := flt + ' and OPE_DENTRO <> '+qStr('D');

    // cbOper.FiltroTabela:=flt;
    if TipoFaturamento = 'S' then
      flt := flt + 'and OPE_SERVICO= ''S'''
    else
      flt := flt + 'and OPE_SERVICO =  ''N''';
    flt :=  flt + ' and  ope_oculta = ''N''';
    result := flt;
end;

procedure TFormFatPedido.FinalizarTratamentoTermico;
 var DataHoraF : TDateTime;
        SQL : string;
begin
 if DBInicio.Empresa.wPMT_PROD_TERMICO then
 Begin
   DataHoraF := now;
   SQL := ' UPDATE ORDEMPRODUCAO '+
           ' SET OPR_DATAFATURA = ' + DateTimeToSQL(DataHoraF) +
           ' WHERE PED_CODIGO = '+QuotedStr( CdsPedidosPED_CODIGO.AsString) +
           ' AND EMP_CODIGO = '+QuotedStr(fEmp_codigo);
   ExecSql(SQL);


 End;
end;

procedure TFormFatPedido.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if ModalResult <> mrOk then
   RemoveNumeroFatura;
end;

procedure TFormFatPedido.FormCreate(Sender: tObject);
begin
  inherited ;
  self.Width:=989;
  self.Height:=642;
  pgcDetalhes.ActivePageIndex := 0;
  bIniciadoNumeracao:=False;
  GerarPedido := False;
  GridItensNota.Hint := 'Dê duplo clique para selecionar o item ou ' + #13 + 'pressione Enter no item selecionado !';
  // dataset abertos em setcodpedido ( nPedido )
  btnEmpresa.Enabled := dbinicio.Empresa.wPMT_FATURA_MULTIEMPRESA;
  cdsFinalidade.CreateDataSet;
  cdsFinalidade.Insert;
  cdsFinalidadecodigo.AsInteger := 1;
  cdsFinalidadefinalidade.AsString := 'NF-e normal';
  cdsFinalidade.Post;

  cdsFinalidade.Insert;
  cdsFinalidadecodigo.AsInteger := 2;
  cdsFinalidadefinalidade.AsString := 'NF-e complementar';
  cdsFinalidade.Post;

  cdsFinalidade.Insert;
  cdsFinalidadecodigo.AsInteger := 3;
  cdsFinalidadefinalidade.AsString := 'NF-e de Ajuste';
  cdsFinalidade.Post;


  cdsFinalidade.Insert;
  cdsFinalidadecodigo.AsInteger := 4;
  cdsFinalidadefinalidade.AsString := 'Devolução/Retorno';
  cdsFinalidade.Post;
  cfop_Nota := TStringList.Create;
  cfop_Nota.Duplicates := dupIgnore;

  if DBInicio.GetParametroSistema('PMT_MULTIPLAS_IE') = 'S' then
  begin
    qInscricaoEstadual.Close;
    cdsInscricaoEstadual.Close;
    qInscricaoEstadual.SQL.Clear;
    qInscricaoEstadual.SQL.Text := 'SELECT  EMI_CODIGO, EMI_IE || CAST('' - '' AS VARCHAR(3)) || EMI_DESCRICAO AS EMI_DESCRICAO  FROM EMP_MULTIPLAS_IE ORDER BY EMI_DESCRICAO';
    qInscricaoEstadual.Open;
    cdsInscricaoEstadual.Open;
  end
  else
  begin
      dblcInscricaoEstadual.Visible := False;
      lbInscricaoEstadual.Visible := False;
  end;

  // CurrcodBanco.SetFocus;
  CarregarParametros;
  chkNotaConsumidor.Enabled := fwPmt_Ativa_NFCE;
 // ChkNFE.Enabled :=   not GerarPedido;
  if GerarPedido then
    chkNotaConsumidor.Checked := true
  else
    ChkNFE.Checked :=   fbEMP_NFE_FAT;


end;

procedure TFormFatPedido.FormShow(Sender: TObject);
begin
  inherited;

  if (qOperFiscOPE_TIPO_OPERACAO.AsString = 'D')
   and (BuscaUmDadoSqlAsString('SELECT OPV_DEVOLUCAO FROM OPV0000 WHERE OPV_CODIGO = ' +  CdsPedidosOPV_CODIGO.AsString ) = 'S') then
  begin
    if not (CdsNotaFiscal.State in dsEditModes) then
      CdsNotaFiscal.Edit;

    CdsNotaFiscalNF_CHAVE_NFE_REFERENCIADA.AsString :=
        BuscaUmDadoSqlAsString('SELECT ENF_CHAVE_NFESE ' +
                               ' FROM ENF_DEVOLUCAO  ' +
                               ' WHERE PED_CODIGO = ' + QuotedStr(CdsPedidosPED_CODIGO.AsString) + ' AND EMP_CODIGO = ' + QuotedStr(DBInicio.EMP_CODIGO)
                              );
    // CdsNotaFiscal.Post;
  end;

  CurrcodBanco.SetFocus;
end;

procedure TFormFatPedido.SetCodPedido(const Value: string);
begin

     sObsNota := '';
     w_Nao_Quer_Peso_Na_NF := 'N';
     RxDataEmissao.Date := now;
     RxDataSaida.Date := now;

     lcCodPedido:=Value;
     CdsPedidos.Close;
     qPedidos.SQL.Clear;
     qPedidos.SQL.Add( 'SELECT P1.PED_OBSERVACAO_NOTA,' );
     qPedidos.SQL.Add( '       P1.TRP_CODIGO,' );
     qPedidos.SQL.Add( '       P1.PED_STATUS_ANALISE_CREDITO,' );
     qPedidos.SQL.Add( '       P1.PED_OS,' );
     qPedidos.SQL.Add( '       p1.FPG_REGISTRO,' );
     qPedidos.SQL.Add( '       P1.PED_CODIGO,' );
     qPedidos.SQL.Add( '       p1.PCX_CODIGO,' );
     qPedidos.SQL.Add( '       P1.AMX_CODIGO,' );
     qPedidos.SQL.Add( '       P1.PED_DTENTRADA,' );
     qPedidos.SQL.Add( '       P1.PED_VLTOTAL_LIQ,' );
     qPedidos.SQL.Add( '       P1.PED_VLTOTAL_BRUTO,' );
     qPedidos.SQL.Add( '       P1.PED_SITUACAO,' );
     qPedidos.SQL.Add( '       P1.PED_DESCTONF,' );
     qPedidos.SQL.Add( '       P1.PED_TPDESCTO,' );
     qPedidos.SQL.Add( '       P1.OPE_CODIGO,' );
     qPedidos.SQL.Add( '       P1.PED_DESCTOPC1,' );
     qPedidos.SQL.Add( '       P1.PED_DESCTOPC2,' );
     if sTipoFaturamento = 'S' then
       qPedidos.SQL.Add( '      0.0 as PED_DESCTOVL,' )
     else
       qPedidos.SQL.Add( '       P1.PED_DESCTOVL,' );
     qPedidos.SQL.Add( '       P1.ped_vlfrete,' );
     qPedidos.SQL.Add( '       P1.ped_desp_aces,' );
     qPedidos.SQL.Add( '       P1.PED_VLDIFAL,' );
     qPedidos.SQL.Add( '       P1.ped_vlseguro,' );
     qPedidos.SQL.Add( '       P1.CLI_CODIGO,' );
     qPedidos.SQL.Add( '       C1.CLI_RAZAO,' );
     qPedidos.SQL.Add( '       C1.CLI_CIDADE,' );
     qPedidos.SQL.Add( '       C1.CLI_UF,' );
     qPedidos.SQL.Add( '       P1.CLI_CONSFINAL,' );
     qPedidos.SQL.Add( '       P1.CLI_CONSU_PROPRIO,' );
     qPedidos.SQL.Add( '       C1.CLI_REGIME_TRIBUTARIO,' );
     qPedidos.SQL.Add( '       C1.cli_modo_trib_st,' );
     qPedidos.SQL.Add( '       c1.CLI_CGC,');
     qPedidos.SQL.Add( '       cn1.cnae_carga_trib_media,' );
     qPedidos.SQL.Add( '       P1.OPV_CODIGO,' );
     qPedidos.SQL.Add( '       P1.PCL_CODIGO,' );
     qPedidos.SQL.Add( '       CAST(P1.PED_COMIS1 AS NUMERIC(10,4)) AS PED_COMIS1,' );
     qPedidos.SQL.Add( '       P1.PED_COMIS2,' );
     qPedidos.SQL.Add( '       P1.PED_COMIS3,' );
     qPedidos.SQL.Add( '       P1.PED_COMISSAO_VEN,' );
     qPedidos.SQL.Add( '       P1.PED_OBSNOTA,' );
     qPedidos.SQL.Add( '       P1.REP_CODIGO,' );
     qPedidos.SQL.Add( '       P1.EMP_CODIGO,' );
     qPedidos.SQL.Add( '       P1.PED_DESP_IMPOR,' );
     qPedidos.SQL.Add( '       p1.PED_FRETE, ' );
     qPedidos.SQL.Add( '       p1.PED_PLACA, ' );
     qPedidos.SQL.Add( '       p1.REP_CODIGO_INTERNO, ' );
     qpedidos.SQL.Add( '       p1.ENDERECO_ENTREGA, ')     ;
     qpedidos.SQL.Add( '       p1.CLI_CPF, '  )     ;
     qpedidos.SQL.Add( '       RE.REP_NOME, SITEXP, '  )     ;
     qpedidos.SQL.Add( '       OPV_ESTOQUE_REMESSAINDUS ');
     qPedidos.SQL.Add( 'FROM PED0000 P1' );
     qPedidos.SQL.Add( '    left JOIN CLI0000 C1 ON P1.CLI_CODIGO = C1.CLI_CODIGO ' );
     qPedidos.SQL.Add( '    left JOIN REP0000 RE ON RE.REP_CODIGO = P1.REP_CODIGO ' );
     qPedidos.SQL.Add( '    left JOIN cnae CN1 ON (CN1.cnae_registro = C1.cnae_registro) ' );
     qPedidos.SQL.Add( '    left join OPV0000 op on (op.opv_codigo = p1.opv_codigo )');

     qPedidos.SQL.Add( 'Where p1.ped_codigo = '+qStr(lcCodPedido) +' and p1.emp_codigo = '+QuotedStr(EmpCodigo) );

     CdsPedidos.open;
     if (CdsPedidosFPG_REGISTRO.AsInteger <> 0 ) or (not CdsPedidosFPG_REGISTRO.IsNull) then
        edFPagto.idRetorno := IntToStr(CdsPedidosFPG_REGISTRO.AsInteger);



     ClientePossuiFaturasAtrasadas(CdsPedidosCLI_CODIGO.AsString, 'CLIM_FATURAMENTO');
     CbTipo1.idRetorno := CdsPedidosOPV_CODIGO.AsString;

     qClientes.Close;
     qClientes.sql.text := 'SELECT * '+
                           'FROM CLI0000 '+
                           'Where CLI_CODIGO = '+qStr(CdsPedidosCLI_CODIGO.AsString) +
                           iif(DBInicio.empresa.wPMT_FATURA_MULTIEMPRESA,
                                ConcatSe( ' and ',dbInicio.ExclusivoSql('CLIENTES',EmpCodigo) ),
                                ConcatSe( ' and ',dbInicio.ExclusivoSql('CLIENTES') ))
          ;
     qClientes.Open;


     CbConsFinal.ItemIndex := IIF(CdsPedidosCLI_CONSFINAL.AsString = 'S', 0, 1);

     if CdsPedidosCLI_CONSU_PROPRIO.AsString = 'S' then
        luso.Caption := 'Uso e consumo'
     else
        luso.Caption := 'Revenda';


     if CdsPedidosPED_FRETE.AsString = '0' then
        CbTipoFrete.ItemIndex := 0
     Else
     if CdsPedidosPED_FRETE.AsString = '1' then
        CbTipoFrete.ItemIndex := 1
     else
     if CdsPedidosPED_FRETE.AsString = '2' then
        CbTipoFrete.ItemIndex := 2
     else
     if CdsPedidosPED_FRETE.AsString = '3' then
        CbTipoFrete.ItemIndex := 3
     else
     if CdsPedidosPED_FRETE.AsString = '4' then
        CbTipoFrete.ItemIndex := 4
     Else
        CbTipoFrete.ItemIndex := 5;

     if (qclientesBAN_CODIGO.AsString <> '') then
        CbBancos.idRetorno := qClientesBAN_CODIGO.AsString
     Else
        CbBancos.idRetorno := fwCod_Carteira;

     if fwTp_Cobranca='' then
        CbxCarteira.ItemIndex := 0
     Else
     if fwTp_Cobranca = 'CT' then
        CbxCarteira.ItemIndex := 1
     Else
     if fwTp_Cobranca = 'CS' then
        CbxCarteira.ItemIndex := 2
     Else
     if fwTp_Cobranca = 'CC' then
        CbxCarteira.ItemIndex := 3
     Else
     if fwTp_Cobranca = 'CD' then
        CbxCarteira.ItemIndex := 4
     Else
     if fwTp_Cobranca = 'SR' then
        CbxCarteira.ItemIndex := 5
     ELSE
        CbxCarteira.ItemIndex := 6;

     IF fwTp_Docto = '' THEN
        CbxTipoDoc.ItemIndex := 0
     ELSE
     IF fwTp_Docto = 'DP' THEN
        CbxTipoDoc.ItemIndex := 1
     ELSE
     IF fwTp_Docto = 'BL' THEN
        CbxTipoDoc.ItemIndex := 2
     ELSE
     IF fwTp_Docto = 'RC' THEN
        CbxTipoDoc.ItemIndex :=  3
     ELSE
     IF fwTp_Docto = 'CH' THEN
        CbxTipoDoc.ItemIndex := 4
     ELSE
     IF fwTp_Docto = 'DN' THEN
        CbxTipoDoc.ItemIndex := 5
     ELSE
     IF fwTp_Docto = 'OU' THEN
        CbxTipoDoc.ItemIndex := 6
     eLSE
         CbxTipoDoc.ItemIndex := 7;


     AjustaFiltroCfop;
     CbOper.idRetorno := StrZero(CdsPedidosOPE_CODIGO.AsString,3);
     if CbOper.idRetorno <> '' then
     begin
       OpenAux('select ope_tipo from OPE0000_VIEW_PESQUISA where ope_codigo = '+QuotedStr(CbOper.idRetorno) );
       RadSaida.Checked :=  qaux.FieldByName('ope_tipo').AsString = 'S';
       RadEntrada.Checked :=  qaux.FieldByName('ope_tipo').AsString = 'E';
     end
     else
       RadSaida.Checked := ( CdsPedidosOPE_CODIGO.AsString = '0') ;

     CdsItemPedidoOpen;

     CarregaTelaNf ;

          //finalidade
     if cbOper.IdRetorno <> '' then
     begin
       OpenAux2('SELECT OPE_TIPO_OPERACAO FROM OPE0000 WHERE OPE_CODIGO  = ' + QuotedStr(cbOper.IdRetorno)+ ' AND  OPE_NATUREZA =  '+ QuotedStr(cbOper.CDS.fieldbyname('ope_natureza').AsString) );
       if qaux2.FieldByName('OPE_TIPO_OPERACAO').AsString = 'D' then
         CdsNotaFiscalnf_finalidade.AsInteger := 4
       else
         CdsNotaFiscalnf_finalidade.AsInteger := 1;
     end;

     CalculaPeso; //loop item
     CalculaValorTotalFaturar; //loop item
     DadosAdicionaisSimples;

end;

procedure TFormFatPedido.SetEmpCodigo(const Value: string);
begin
 fEmp_codigo := Value;
end;

procedure TFormFatPedido.SetEmpCodigoOriginal(const Value: string);
begin
  fEmp_codigoOriginal := Value;
end;

procedure TFormFatPedido.SetIntegrar(const Value: boolean);
begin
  FIntegrar := Value;
end;

procedure TFormFatPedido.SpeedButton1Click(Sender: TObject);
begin
     inherited;
     FrmCadastroObservacao := TFrmCadastroObservacao.Create(Application);
     try
        FrmCadastroObservacao.FormStyle := fsNormal;
        FrmCadastroObservacao.Visible := false;
        FrmCadastroObservacao.memo := DBMemoObs;
        FrmCadastroObservacao.ShowModal;
     finally
            FreeAndNil( FrmCadastroObservacao );
     end;
end;

procedure TFormFatPedido.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  edcidade.Clear;
  edUF.Clear ;
  cid_codigo_prestacao := 0 ;
  edISS.Clear;
  edINSS.Clear;
  edCSLL.Clear;
  edIR.Clear;
  edPIS.Clear ;
  edCOFINS.Clear;
  edValorISS.Clear;
  edValorINSS.Clear;
  edValorCSLL.Clear;
  edValorIR.Clear;
  edValorPIS.Clear;
  edValorCOFINS.Clear;

 FormCidadeGrid := TFormCidadeGrid.Create(Application);
  try

    FormCidadeGrid.ShowModal;
    edcidade.Text  := FormCidadeGrid.Cidade;
    edUF.Text      := FormCidadeGrid.Estado;
    cid_codigo_prestacao := FormCidadeGrid.Cod_Cidade;
    OpenAux3('SELECT * FROM ISS0000 ' +
            ' WHERE CID_CODIGO =  ' +IntToStr(cid_codigo_prestacao));

    IF qOperFisc.FieldByName('OPE_TRIBUTAR_INSS').AsString = 'S' then
      edINSS.Value := (qAux3.FieldByName('ISS_PERCENT_INSS').AsFloat)
    else
      edINSS.Value := 0 ;

    if qOperFisc.FieldByName('OPE_TRIBUTAR_CSLL').AsString = 'S' then
       edCSLL.Value := (qAux3.FieldByName('ISS_PERCENT_CSLL').AsFloat)
    else
      edCSLL.Value  := 0 ;

    if qOperFisc.FieldByName('OPE_TRIBUTAR_IR').AsString = 'S' then
      edIR.Value   := (qAux3.FieldByName('ISS_PERCENT_IR').AsFloat)
    Else
      edIR.Value   := 0;

    if qOperFisc.FieldByName('OPE_TRIBUTAR_PIS').AsString = 'S' then
      edPIS.Value  := (qAux3.FieldByName('ISS_PERCENT_PIS').AsFloat)
    else
      edPIS.Value  := 0 ;

    if qOperFisc.FieldByName('OPE_TRIBUTAR_COFINS').AsString = 'S' then
     edCOFINS.Value := (qAux3.FieldByName('ISS_PERCENT_COFINS').AsFloat)
    else
      edCOFINS.value := 0;

    if (CurServicos.Value > 0)  then
    begin
     if (NOT qOperFisc.IsEmpty)  then
     begin
       edISS.Value := (qAux3.FieldByName('ISS_PGRC_ISS').AsFloat);
       if qAux3.FieldByName('ISS_PGRC_ISS').AsFloat > 0 then
         edValorISS.Value := (CurServicos.Value * qAux3.FieldByName('ISS_PGRC_ISS').AsFloat/100);

     end
     else
     begin
       edValorISS.Value := 0 ;
       edISS.Value :=0;
     end;
     if (qAux3.FieldByName('ISS_PERCENT_INSS').AsFloat > 0) and  (qOperFisc.FieldByName('OPE_TRIBUTAR_INSS').AsString = 'S') then
       edValorINSS.Value := (CurServicos.Value * qAux3.FieldByName('ISS_PERCENT_INSS').AsFloat/100);

     if (qAux3.FieldByName('ISS_PERCENT_CSLL').AsFloat > 0) and (qOperFisc.FieldByName('OPE_TRIBUTAR_CSLL').AsString = 'S')  then
       edValorCSLL.Value := (CurServicos.Value * qAux3.FieldByName('ISS_PERCENT_CSLL').AsFloat/100);

     if (qAux3.FieldByName('ISS_PERCENT_IR').AsFloat > 0) and (qOperFisc.FieldByName('OPE_TRIBUTAR_IR').AsString = 'S' )   then
      edValorIR.Value :=  (CurServicos.Value * qAux3.FieldByName('ISS_PERCENT_IR').AsFloat/100);

     if (qAux3.FieldByName('ISS_PERCENT_PIS').AsFloat>0) and (qOperFisc.FieldByName('OPE_TRIBUTAR_PIS').AsString = 'S') then
       edValorPIS.Value := (CurServicos.Value * qAux3.FieldByName('ISS_PERCENT_PIS').AsFloat/100);

     if (qAux3.FieldByName('ISS_PERCENT_COFINS').AsFloat >0)  and (qOperFisc.FieldByName('OPE_TRIBUTAR_COFINS').AsString = 'S') then
       edValorCOFINS.Value := (CurServicos.Value * qAux3.FieldByName('ISS_PERCENT_COFINS').AsFloat/100);



    end;

  finally
    FormCidadeGrid.Destroy;
    FormCidadeGrid := Nil;
  end;
end;

procedure TFormFatPedido.CdsItemPedidoalterou_cbenefGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Sender.AsBoolean := False;
end;

procedure TFormFatPedido.CdsItemPedidoCalcFields(DataSet: TDataSet);
begin
     CdsItemPedidoCC_ID.AsInteger := CdsItemPedido.RecNo;
     CdsItemPedidoCFOP.Value := CdsItemPedidoOPE_NATUREZA.Value;
     CdsItemPedidoCFOP_Codigo.Value := CdsItemPedidoOPE_CODIGO.Value;
end;

procedure TFormFatPedido.CdsItemPedidoOpen;
var sEmpresa, sCondicaoTipo: string;
begin

     CdsItemPedido.DisableControls;
     CdsItemPedido.Close;

     sCondicaoTipo := ' and P2.PRD_PRODSERV = ' + QuotedStr(sTipoFaturamento); //Tipo Produto ou Serviço
     sEmpresa := '';

     if DBInicio.Exclusivo('PRODUTOS') then
        sEmpresa := ' and p1.emp_codigo = p2.emp_codigo ';

    qItemPedido.sql.CLEAR;
    qItemPedido.Sql.Add('SELECT p1.PRF_REGISTRO,');
    qItemPedido.Sql.Add('       p1.PED_CODIGO,');
    qItemPedido.Sql.Add('       p1.PRD_REFER,');
    qItemPedido.Sql.Add('       p1.PRF_QTDE,');
    qItemPedido.Sql.Add('       p1.PRF_QTDEFAT,');
    qItemPedido.Sql.Add('       p1.PRF_PRECO,');
    qItemPedido.Sql.Add('       p1.PRF_CUSTO,');
    qItemPedido.Sql.Add('       p1.PRF_MARGEM_PRODUTO,');
    if sTipoFaturamento = 'S' then
    begin
      qItemPedido.Sql.Add('     CAST (0.0 AS  DOUBLE PRECISION) as  PRF_IDESCTO1,');
      qItemPedido.Sql.Add('    CAST (0.0 AS  DOUBLE PRECISION) as PRF_IDESCTO2,');

    end
    else
    begin
      qItemPedido.Sql.Add('       p1.PRF_IDESCTO1,');
      qItemPedido.Sql.Add('       p1.PRF_IDESCTO2,');
    end;
    qItemPedido.Sql.Add('       p1.PRF_SITUACAO,');
    qItemPedido.Sql.Add('       p1.PRF_ITEMCOMIS,');
    qItemPedido.Sql.Add('       p1.PRF_IPIALIQ,');
    qItemPedido.Sql.Add('       p1.EMP_CODIGO,');
    qItemPedido.Sql.Add('       p1.PRF_PRECO,');
    qItemPedido.Sql.Add('       p1.PRF_PRECO_BRUTO,');
    qItemPedido.Sql.Add('       p1.PRF_OP,');
    qItemPedido.Sql.Add('       p1.PRF_FLAG_ATUALIZA_ESTOQUE,');
    qItemPedido.Sql.Add('       p1.PRF_ORIGEM_ITEM,');
    qItemPedido.Sql.Add('       p1.PRF_PRODUTO_AGREGADO,');
    qItemPedido.Sql.Add('       p1.PRF_PRODUTO_SEMVALOR,');
    qItemPedido.Sql.Add('       p1.AMX_CODIGO_DESTINO,');
    qItemPedido.Sql.Add('       p1.PRF_COMPL_DESCRI,');
    qItemPedido.Sql.Add('       p1.PRG_REGISTRO,');
    qItemPedido.Sql.Add('       p1.PRDL_REGISTRO,');
    qItemPedido.Sql.Add('       p1.PRDCO_CODIGO_ORIGINAL,');
    qItemPedido.Sql.Add('       P1.PRF_ICMSALIQ,');
    qItemPedido.Sql.Add('       COALESCE(P2.STB_TRIBUTACAO,''00'') AS STB_TRIBUTACAO,');
    qItemPedido.Sql.Add('       P2.PRD_PCUSTO,');
    qItemPedido.Sql.Add('       P2.PRD_CUSTOIPI,');
    qItemPedido.Sql.Add('       P2.PRD_PMEDIO,');
    qItemPedido.Sql.Add('       p1.PRD_ORIGEM,');
    qItemPedido.Sql.Add('       P2.IPI_CODIGO,');
    qItemPedido.Sql.Add('       p2.prd_codigo as prd_produto,');
    qItemPedido.Sql.Add('       P2.PRD_PESOKG,');
    qItemPedido.Sql.Add('       P2.PRD_PESOLIQ,');
    qItemPedido.Sql.Add('       P2.PRD_CUSTOCOMIPI,');
    qItemPedido.Sql.Add('       IPI.IPI_VALOR_POR_ITEM AS IPI_POR_PRODUTO,');
    qItemPedido.Sql.Add('       IPI.IPI_REDVLLIQ,');
    qItemPedido.Sql.Add('       COALESCE(g1.PGR_ATUALIZA_ESTOQUE,''S'') AS PGR_ATUALIZA_ESTOQUE,');
    qItemPedido.Sql.Add('       G1.PGR_CODIGO,');
    qItemPedido.Sql.Add('       COALESCE(T1.PTI_ATUALIZAR_ESTOQUE,''S'') AS PTI_ATUALIZAR_ESTOQUE,');
    qItemPedido.Sql.Add('       P3.OPV_ATESTOQUE,');
    qItemPedido.Sql.Add('       P2.PRD_PRODSERV,');
    qItemPedido.Sql.Add('       PM.PRD_REFER AS PRD_REFER_MP,');
    qItemPedido.Sql.Add('       G1.PGR_CODIGO,');
    qItemPedido.Sql.Add('       P1.PRF_PRDDESCRI,');
    qItemPedido.Sql.Add('       p2.prd_especifico,');
    qItemPedido.Sql.Add('       p2.id_prd_especifico,');
    qItemPedido.Sql.Add('       p2.prd_especifico_redst,');
    qItemPedido.Sql.Add('       COALESCE (p1.OPE_CODIGO, (SELECT op.OPE_CODIGO FROM OPE0000 op WHERE op.OPE_CODIGO = p1.OPE_CODIGO_RETORNO)) AS OPE_CODIGO,');
    qItemPedido.Sql.Add('       COALESCE (p1.Ope_Natureza, (SELECT op.OPE_NATUREZA FROM OPE0000 op WHERE op.OPE_CODIGO = p1.OPE_CODIGO_RETORNO)) AS OPE_NATUREZA,');
//    qItemPedido.Sql.Add('       p1.Ope_Natureza,');
//    qItemPedido.Sql.Add('       p1.Ope_Codigo,');
    qItemPedido.Sql.Add('       p1.OPE_CODIGO_RETORNO,');
    qItemPedido.SQL.Add('       P1.PRF_REGISTRO_VINCULADO, ' );
    if fwPMT_FATURAR_PENDENCIAS then
    begin
       //PARA O KIT ELE DEVE MULTIPLICAR A VALOR DO AGREGADO
      qItemPedido.Sql.Add('   ((CASE PRF_PRODUTO_AGREGADO               '+
                        '      WHEN ''S'' THEN (SELECT PRF_QTDE-Coalesce( PRF_QTDEFAT,0) FROM PED_IT01 IK WHERE P1.PRF_REGISTRO_VINCULADO = IK.PRF_REGISTRO)* PRF_QTDE '+
                        '       WHEN ''N'' THEN PRF_QTDE                                              '+
                        '       END) -Coalesce( p1.PRF_QTDEFAT,0)) as PRF_QTDE_FATURAR_CC,         ');
     qItemPedido.Sql.Add(' CAST(CAST(((CASE PRF_PRODUTO_AGREGADO    '+
                         'WHEN ''S'' THEN (SELECT PRF_QTDE-Coalesce( PRF_QTDEFAT,0) FROM PED_IT01 IK WHERE P1.PRF_REGISTRO_VINCULADO = IK.PRF_REGISTRO)* PRF_QTDE '+
                         'WHEN ''N'' THEN PRF_QTDE                                                                                       '+
                         'END) -Coalesce( p1.PRF_QTDEFAT,0)) AS numeric(15,3)) *  cast(P1.PRF_PRECO as numeric(15,5)) as numeric(18,2)  ) as TOTAL_FATURAR,      ');

    end
    else
    begin
      qItemPedido.Sql.Add('   ((CASE PRF_PRODUTO_AGREGADO               '+
                          '      WHEN ''S'' THEN (SELECT PRF_QTDE-Coalesce( PRF_QTDEFAT,0) FROM PED_IT01 IK WHERE P1.PRF_REGISTRO_VINCULADO = IK.PRF_REGISTRO)* PRF_QTDE '+
                          '       WHEN ''N'' THEN PRF_QTDE                                              '+
                          '       END) -Coalesce( p1.PRF_QTDEFAT,0)-Coalesce( p1.PRF_QTDEPEND,0)) as PRF_QTDE_FATURAR_CC,         ') ;
      qItemPedido.Sql.Add(' CAST(CAST(((CASE PRF_PRODUTO_AGREGADO    '+
                               'WHEN ''S'' THEN (SELECT PRF_QTDE-Coalesce( PRF_QTDEFAT,0) FROM PED_IT01 IK WHERE P1.PRF_REGISTRO_VINCULADO = IK.PRF_REGISTRO)* PRF_QTDE '+
                               'WHEN ''N'' THEN PRF_QTDE                                                                                       '+
                               'END) -Coalesce( p1.PRF_QTDEFAT,0)-Coalesce( p1.PRF_QTDEPEND,0) ) AS numeric(15,3)) *  cast(P1.PRF_PRECO as numeric(15,5)) as numeric(18,2)  ) as TOTAL_FATURAR,      ');


    end;

    //qItemPedido.Sql.Add('       (p1.PRF_QTDE - Coalesce( p1.PRF_QTDEFAT,0)) as PRF_QTDE_FATURAR_CC,');
   // qItemPedido.Sql.Add('       cast(cast(P1.PRF_QTDE - Coalesce( p1.PRF_QTDEFAT,0) as numeric(15,3)) * cast(P1.PRF_PRECO as numeric(15,5)) as numeric(18,2)) as TOTAL_FATURAR, T1.PTI_SIGLA');
    qItemPedido.Sql.Add(' T1.PTI_SIGLA, ');
    qItemPedido.Sql.Add(' (SELECT cast(COUNT(1) as integer) FROM PED_IT01 it2 WHERE p1.PRF_REGISTRO = IT2.PRF_REGISTRO_VINCULADO)  kit_virtual, ');
    qItemPedido.SQL.Add(' p1.PRF_QTDEPEND, ');
    qItemPedido.SQL.Add(' p1.CAP_CODIGO, ');
    qItemPedido.SQL.Add(' p2.prd_cbenef ');
    qItemPedido.Sql.Add('FROM PED_IT01 P1 ');
    qItemPedido.Sql.Add('     JOIN PRD0000 P2 ON P2.PRD_CODIGO = P1.PRD_CODIGO '  );
    qItemPedido.Sql.Add('     JOIN PRD0000 PM ON PM.PRD_CODIGO = P1.PRD_CODIGO ' );
    qItemPedido.Sql.Add('     LEFT JOIN PRD_GRUPO G1 ON P2.PGR_CODIGO = G1.PGR_CODIGO ');
    qItemPedido.Sql.Add('     LEFT JOIN PRD_TIPO T1 ON P2.PTI_CODIGO = T1.PTI_CODIGO ');
    qItemPedido.Sql.Add('     LEFT JOIN PED0000 P0 ON P1.PED_CODIGO = P0.PED_CODIGO AND P1.EMP_CODIGO = P0.EMP_CODIGO ');
    qItemPedido.Sql.Add('     LEFT JOIN OPV0000 P3 ON P0.OPV_CODIGO = P3.OPV_CODIGO ');
    qItemPedido.Sql.Add('     LEFT JOIN IPI0000 IPI ON (IPI.IPI_CODIGO  = P2.IPI_CODIGO) ' );


    qItemPedido.Sql.Add('WHERE P1.PED_CODIGO = '+ qstr(CdsPedidosPed_Codigo.AsString) + sCondicaoTipo);
    qItemPedido.Sql.Add(' and p1.emp_codigo = '+QuotedStr(EmpCodigo) );
    if fsReferenciaProvisoriaOrcamento <> '' then
      qItemPedido.Sql.Add(' and P2.prd_refer <> '+ QuotedStr(fsReferenciaProvisoriaOrcamento));

    qItemPedido.SQL.Add(' AND ((PRF_QTDE > PRF_QTDEFAT and coalesce(PRF_REGISTRO_VINCULADO,0) = 0)  ');
     qItemPedido.SQL.Add(' or ( PRF_REGISTRO_VINCULADO > 0 and   (SELECT cast(COUNT(1) as integer) FROM PED_IT01 it2 WHERE it2.PRF_REGISTRO = p1.PRF_REGISTRO_VINCULADO and it2.PRF_QTDE > it2.PRF_QTDEFAT) > 0)) ');
    qItemPedido.Sql.Add(' order by P1.PED_CODIGO,P1.PRF_SEQUENCIA');

    if dbInicio.IsDesenvolvimento then
      CopyToClipBoard(qItemPedido.SQL.Text);
    CdsItemPedido.Open;
   if EstoqueInsuficiente then
    begin
      RemoveNumeroFatura; // remover a fatura criada
      GeraException('Não há estoque suficiente para faturar');
    end;
    CdsItemPedido.EnableControls;

end;

procedure TFormFatPedido.CurrcodBancoExit(Sender: tObject);
begin
  if (CurrCodBanco.Text <> '0')  or (CurrCodBanco.Text  <> '') then
  begin
    CurrCodBanco.Text := strzero(CurrCodBanco.Text,4);
    OpenAux3('select ban_ativo from ban0000 where ban_codigo = '+QuotedStr(CurrcodBanco.Text));
    if qAux3.FieldByName('BAN_ATIVO').AsString = 'N' then
    begin
      CurrCodBanco.Clear;
      CbBancos.Clear;
      GeraException('Conta banco inativa');
    end;
    cbBancos.idRetorno := CurrCodBanco.Text;
    if cbBancos.idRetorno='' then
         GeraException('Banco não localizado!');
  end
  else
    CbBancos.idRetorno := '';
end;

procedure TFormFatPedido.DadosAdicionaisSimples;
var vValorIcmSimples: Currency ;
CSOSN :integer;
begin

    if (fOPT_SIMPLES = 'S') then // desconsiderado sem valor comercial and (qOperFiscOPE_SEMVLCOM.AsString = 'N') Then   // venda
    begin


         DbMemoObs.Lines.Text := sObsNota;
         vValorIcmSimples := 0;

         if (fALIQ_CREDITO > 0)  then
         begin
              if (qOperFiscOPE_INDICE_IMP.AsFloat > 0) and (qOperFiscOPE_SEMVLCOM.AsString = 'N') then
              begin
                   wBaseicms_simples := (CurProdutos.Value - (CurProdutos.Value * qOperFiscOPE_INDICE_IMP.AsFloat / 100)) * (fALIQ_CREDITO / 100);
                   DBMemoObs.Lines.Add('Redução da base de  R$ ' + FormatFloat('##0.00', CurProdutos.Value) + ' em ' + FormatFloat('##0.00', qOperFiscOPE_INDICE_IMP.AsFloat) + '%');
              end
              else
                  wBaseicms_simples := CurProdutos.Value;
              OpenAux3('SELECT EMP_CSOSN FROM OPE0000 o '+
                       ' WHERE OPE_CODIGO = '+ QuotedStr (CbOper.idretorno)+
                       iif(DBInicio.empresa.wPMT_FATURA_MULTIEMPRESA,
                       ConcatSe( ' and ',dbInicio.ExclusivoSql('FISCAL',EmpCodigo)),
                       ConcatSe( ' and ',dbInicio.ExclusivoSql('FISCAL')))

                       );
              If (qAux3.FieldByName('EMP_CSOSN').IsNull) OR (qAux3.FieldByName('EMP_CSOSN').AsInteger = 0 ) then
                CSOSN :=  fiCSOSN
              else
                CSOSN := qAux3.FieldByName('EMP_CSOSN').AsInteger;

              vValorIcmSimples := wBaseicms_simples * fALIQ_CREDITO / 100;


         End;

         if (fUF='PR') and (CdsPedidosCLI_UF.AsString='PR') then // venda consumidor dentro do paraná
            if dbinicio.GetParametroSistema('pmt_exibirmesimpostosparana')='S' then
               DBMemoObs.Lines.Add('** ICMS R$ '+ FormatFloat( '##0.00',  vValorIcmSimples )+' IPI R$ 0.00 ISS R$ 0.00 (Cnf.Lei Estadual:17127/2012-PR) **');

    end;

end;

procedure TFormFatPedido.BitCancelarClick(Sender: TObject);
begin
  inherited;
  ExecSql(' DELETE FROM NF_REFERENCIA WHERE NF_REGISTRO = '+IntToStr(ChavePrimariaNF));
  CdsPedidos.CancelUpdates;
  CdsItemPedido.CancelUpdates;
  cdsNotaFiscal.CancelUpdates;
  RollbackTransaction ;
  close;
  RemoveNumeroFatura;
end;

procedure TFormFatPedido.BitConfirmaNotaClick(Sender: tObject);
var lMsg,wConcatSE: string;
    nf : TfrmProcessaNFe ;
    abortado, semValorComercial : Boolean;
    fat_registro : integer;
    CreditoContaFat: double;
///
    Procedure TrataExcption( pMessage:string );
    begin
        ExecSql(' DELETE FROM NF_REFERENCIA WHERE NF_REGISTRO = '+IntToStr(ChavePrimariaNF));
        CdsPedidos.CANCELUPDATES;
        CdsItemPedido.CANCELUPDATES;
        cdsNotaFiscal.CANCELUPDATES;
        RollBackTransaction;
        RollBackTransaction;
        // Showmessage( lmsg+' Nada foi feito!'+#13+#13+'Erro:'+#13+pMessage );
        Showmessage(lmsg + pMessage);
        modalresult := mrCancel;
    end;
///

begin
      geraFaturamento := False;
      lMsg:='';
      CurrNumNota.Text := StrZero(CurrNumNota.Text, 6);

      if (( VarToStr(dblcInscricaoEstadual.KeyValue) = '') or (dblcInscricaoEstadual.KeyValue = null)) and (DBInicio.GetParametroSistema('PMT_MULTIPLAS_IE') = 'S') then
      begin
        showmessage('Favor Escolhar uma Inscrição Estadual');
        dblcInscricaoEstadual.SetFocus;
        exit;
      end;


      if CbBancos.idRetorno = '' then
         uteis.aviso('Informe o Banco !')
      else
      if cbOper.idRetorno = '' then
         uteis.aviso('Informe a Operação fiscal !')
      else
      if (qOperFiscOPE_TIPO_OPERACAO.AsString = 'D') and ((CdsNotaFiscalNF_CHAVE_NFE_REFERENCIADA.AsString = '') or (Length(CdsNotaFiscalNF_CHAVE_NFE_REFERENCIADA.AsString) <> 44)) then
         uteis.aviso('Como a Fatura é de devolução a chave da nfe referente a devolução deve ser preenchida !')
      else
      if (DBEditPlacaVeiculo.Text <> '') and (DBEdPlaca.Text = '') then
        uteis.aviso('UF da placa deve ser preenchida !')
      else
      if edFPagto.idRetorno = '' then
        uteis.Aviso('Forma de pagamento deve ser preenchida !')
      else
      if EstoqueInsuficiente then
        uteis.Aviso('Não há estoque suficiente para faturar')
      else
      if (qOperFiscOPE_SERVICO.AsString = 'S') and (edcidade.Text = '') and (sTipoFaturamento = 'S') then
      begin
         pgcDetalhes.ActivePage := tsServico;
        uteis.Aviso('Local de serviço não preenchido')
      end
      else
      if (DBInicio.GetParametroSistema('PMT_FATURA_SEM_PESO') <> 'S') and ((CdsNotaFiscalNF_PESOBRU.AsFloat = 0) or (CdsNotaFiscalNF_PESOLIQ.AsFloat = 0)) then
      begin
        uteis.Aviso('Informar peso Bruto e Líquido.')
      end
      else
      begin
          CdsItemPedido.First;
          while not CdsItemPedido.Eof do
          begin
            if (ProdutoGerenciaLote(CdsItemPedidoPRD_REFER.AsString))
              and (BuscaUmDadoSqlAsString('SELECT OPV_SEMLOTE FROM OPV0000 WHERE OPV_CODIGO = ' + CdsPedidosOPV_CODIGO.AsString ) <> 'S')
            then
             begin
               if CdsItemPedidoPRDL_REGISTRO.AsInteger = 0  then
                begin
                  MessageDlg('O produto ' + CdsItemPedidoPRD_REFER.AsString + ' controla lote e este não foi informado no pedido.', mtWarning, [mbOk], 0);
                  Abort;
                end;
             end;
             CdsItemPedido.Next;
          end;
          CdsItemPedido.First;
          if cdsItemPedidoPRF_QTDEPEND.AsFloat > 0 then
          begin
            if MessageDlg('Existe item com saldo insuficiente deseja faturar parcial?', mtConfirmation, mbYesNo, 0) <> mrYes then
              exit
          end;

          CdsItemPedido.DisableControls;

          /////////////////////////////////////////////////////////////////////////////////////////////
          BeginTransaction;
          try
              BitConfirmaNota.Enabled := False;
              BitCancelar.Enabled := False;
              lmsg := 'Ocorreram Problemas ao Tentar Gerar a Fatura!!!';

              GravaNotaFiscal;
              AtualizaPedido;

              // Grava Fatura no Contas a Receber se nota nao for complementar de impostos
              if not ChkComplementar.Checked then
                fat_registro:= GravaFatura;
              //verifica se operação fiscal tem valor comercial para abrir a tela de parcelamento
              // se nota nao for complementar de impostos


              if not ChkComplementar.Checked and (wValorProdFaturar > 0) then
              begin
                   // BuscaOperacaoNovo ( cbOper.IdRetorno );
                   //BuscaOperacaoNovo (qOperFiscOPE_CODIGO.AsString );
                   // if (qOperFiscOPE_SEMVLCOM.AsString = 'N') or ((qOperFiscOPE_SEMVLCOM.AsString = 'S') and (qOperFiscOPE_SEMVLCOM_MOSTRAF.AsString = 'S')) then
                   if geraFaturamento then
                   begin
                        if (CdsRecParceTotalParc.Value <=0)  then
                           GeraException('O prazo de pagamento escolhido esta com problemas, verifique!');
                        frmFATPARC := TfrmFATPARC.Create(Application);
                        try    // abre tela parcelamento
                           CdsRecParce.First;
                           frmFATPARC.FAT_VLFAT := wFAT_VLFAT;
                           frmFATPARC.Fat_vlliq := wFAT_VLFAT -cRetencao;
                           frmFATPARC.PCL_CODIGO:=CdsPedidosPCL_CODIGO.AsString;
                           frmFATPARC.NumFatura := StrZero(CurrNumNota.Text,6);
                           frmFATPARC.Emp_Codigo := EmpCodigo;
                           if (dblcInscricaoEstadual.KeyValue <> null) and (DBInicio.GetParametroSistema('PMT_MULTIPLAS_IE') = 'S') then
                             frmFATPARC.NumeroSerie := BuscaUmDadoSqlAsString('SELECT EMI_SERIE_NF FROM EMP_MULTIPLAS_IE WHERE EMI_CODIGO = ' + VarToStr(dblcInscricaoEstadual.KeyValue))
                           else
                             frmFATPARC.NumeroSerie := edSerie.Text;
                           frmFATPARC.dsRecParce.dataset:=CdsRecParce;
                           frmFATPARC.Integrar := Integrar;
                           frmFATPARC.ExisteFatura :=  (Fat_Codigo <> '0') and (fat_codigo <> '') ;

                           frmFATPARC.ShowModal;
                           if frmFATPARC.cdsCreditoConta.Active then
                           begin
                              frmFATPARC.cdsCreditoConta.Filtered := False;
                              frmFATPARC.cdsCreditoConta.Filter := 'selecionado = true';
                              frmFATPARC.cdscreditoconta.Filtered := True;
                              frmFATPARC.cdscreditoconta.first;
                              CreditoConta:= 0 ;
                              if not frmFATPARC.cdscreditoconta.IsEmpty then
                                while not frmFATPARC.cdscreditoconta.Eof do
                                begin
                                  GravarCreditoCliente(frmFATPARC.cdsCreditoContaCodigo.AsString, fat_registro, frmFATPARC.cdsCreditoContausado.AsFloat);
                                  CreditoConta := CreditoConta   +  frmFATPARC.cdsCreditoContausado.AsFloat;
                                  frmFATPARC.cdscreditoconta.Next;
                                end;
                               if CreditoConta >0 then
                               begin
                                  ExecSql(' update NF0001 set NF_VL_DESCTO_FAT = NF_VL_DESCTO_FAT + '+ FloatToSQL(CreditoConta) +
                                  ', NF_OBSERVACAO = NF_OBSERVACAO ||  '+
                                   QuotedStr(' . Faturamento utilizando R$ '+ FormatFloat('##0.00', CreditoConta) +  ' de crédito da conta corrente')+
                                      ' where nf_notanumber   = '+QuotedStr(CdsNotaFiscalNF_NOTANUMBER.AsString) +
                                      ' and emp_codigo = '+QuotedStr(EmpCodigo),false);
                               end;
                           end;
                           abortado := False;

                           if frmFatParc.ModalResult=mrCancel then
                           begin

                                CdsRecParce.Cancel;
                                lmsg := 'Faturamento cancelado pelo usuário!';
                                 ExecSql(' DELETE FROM NF_REFERENCIA WHERE NF_REGISTRO = '+IntToStr(ChavePrimariaNF));
                                 CdsPedidos.CancelUpdates;
                                 CdsItemPedido.CancelUpdates;
                                 cdsNotaFiscal.CancelUpdates;
                                 RollbackTransaction ;
                                 abortado := True;
                                abort;
                           end
                           Else if (Fat_Codigo = '0') or (fat_codigo = '')  then
                           begin
                             CdsRecParce.ApplyUpdates(0);
                             ExecSql( ' update FAT0000 set cct_codigo = '+QuotedStr(frmFATPARC.CbxCtaAnalise.idRetorno)+ ',' +
                                      ' fat_vlfat = ' + FloatToSQL(frmFATPARC.FAT_VLFAT - creditoConta) +
                                      ' where FAT_CODIGO = '+qStr(StrZero(CurrNumNota.Text,6)) +
                                       ConcatSe( ' and ', dbInicio.ExclusivoSql('RECEBER',EmpCodigo)) , false );

                           end;

                        finally
                               FreeAndNil( frmFATPARC );
                        end;
                   end;
              END;

              // if DBInicio.GetParametroSistema('PMT_LANCA_CONTA_CORRENTE_VERBA') = '0'  then
                ExecSql( ' DELETE FROM FAT_PC01 ' +
                       ' WHERE FAT_CODIGO = '+qStr(StrZero(CurrNumNota.Text,6)) +
                       ' AND FPC_VLPARC = 0 ' +
                        ConcatSe( ' and ', dbInicio.ExclusivoSql('RECEBER',EmpCodigo)) , false );
              // else
                if CreditoConta > 0 then
                begin
                  CreditoContaFat := wFAT_VLFAT - CreditoConta;
                  if CreditoContaFat = 0 then
                    CreditoContaFat := wFAT_VLFAT;
                  InsereCreditoContasReceber(CreditoConta);
                {
                  ExecSql( ' UPDATE FAT_PC01 SET  FPC_VLPARC = '  + FloatToSQL(CreditoContaFat) +
                         ' ,FPC_VLPAGO = '  + FloatToSQL(CreditoContaFat) +
                         ', FPC_PAGTO = '  + DateTimeToSQL(now) +
                         ' WHERE FAT_CODIGO = '+qStr(StrZero(CurrNumNota.Text,6)) +
                         ConcatSe( ' and ', dbInicio.ExclusivoSql('RECEBER',EmpCodigo)) , false );
                 }
                  ExecSql( ' UPDATE FAT0000 SET  FAT_VALORANTECIPADO = '  + FloatToSQL(CreditoConta) +
                         ' WHERE FAT_CODIGO = '+qStr(StrZero(CurrNumNota.Text,6)) +
                         ConcatSe( ' and ', dbInicio.ExclusivoSql('RECEBER',EmpCodigo)) , false );
                end;


               if TipoFaturamento = 'P' then //produto
               begin


                  AtualizaEstoque;

                 if (fTipoSeqNfe = 'S') then    // sincronizado
                  ExecSql( 'Update EMP0000 Set EMP_SEQUENCIA_NFE = '+ IntToStr(wSequenciaNfe) +
                    iif(DBInicio.empresa.wPMT_FATURA_MULTIEMPRESA,
                     ConcatSe(' where ' , dbInicio.ExclusivoSql( 'RECEBER',EmpCodigo ) ),
                     ConcatSe(' where ' , dbInicio.ExclusivoSql( 'RECEBER' ) ) ));

               end;
              FinalizarTratamentoTermico;

              CdsPedidos.applyupdates(0);
              CdsItemPedido.EnableControls;
              CdsItemPedido.applyupdates(0);
              cdsNotaFiscal.applyupdates(0);

              // multiplas inscrições estaduais

              if (dblcInscricaoEstadual.KeyValue <> null) and (DBInicio.GetParametroSistema('PMT_MULTIPLAS_IE') = 'S') then
              begin
                if BuscaUmDadoSqlAsString('SELECT PED_CODIGO FROM PEDIDO_IE WHERE PED_CODIGO = ' + QuotedStr(DBEditPedido.Text)) = '' then
                begin
                  ExecSql('INSERT INTO PEDIDO_IE VALUES( ' +
                    QuotedStr(DBEditPedido.Text) + ',' +
                    QuotedStr('') + ',' +
                    QuotedStr(VarToStr(dblcInscricaoEstadual.KeyValue)) +
                    ')'
                  );
                end
                else
                begin
                  ExecSql('UPDATE PEDIDO_IE SET ' +
                    'EMI_CODIGO = ' + VarToStr(dblcInscricaoEstadual.KeyValue) +
                    ' WHERE PED_CODIGO = ' + QuotedStr(DBEditPedido.Text)
                  );

                end;

              end;

              if not VerificaLancamentosContasReceber then
                raise Exception.Create(' Abortado');

              /////////////////////////////////////////////////////////////////////////////////////////////
              committransaction;


          Except
            on E:Exception do
            begin
               abortado := True;
               TrataExcption( E.Message );

               RemoveNumeroFatura;
            end;
          end;
          if not abortado then
          begin
            if TipoFaturamento = 'S' then //SERVIÇO
            begin
              Showmessage('Faturamento realizado com sucesso! Vá a contas à Receber e gere NFSe.');

            end
            else // faturamento do produto
            begin
           // faz envio da NFE DIRETO A NFe
             If chkNotaConsumidor.Checked then
             begin
              if not assigned(frmProcessaNFe)  then
               nf := TfrmProcessaNFe.Create(self);
              try
                nf.EmpCodigo := EmpCodigo;
                if chkNotaConsumidor.Checked then
                   nf.ConfiguracoesIniciais(moNFCe);
                 NF.Show;


                // nf.ACBrNFe1.SSL.numeroserie := fPMT_CERTIFICADO_DIGITAL;
                nf.ACBrNFe1.SSL.NumeroSerie := BuscaUmDadoSqlAsString('SELECT PMT_CERTIFICADO_DIGITAL FROM PRMT0001 WHERE EMP_CODIGO = ' + QuotedStr(nf.EmpCodigo));
                nf.ACBrNFe1.SSL.CarregarCertificado;
                if not nf.ACBrNFe1.SSL.CertificadoLido then
                begin
                  MessageDlg('Favor informar o número de série do certificado da empresa ' + nf.EmpCodigo + ' nos parâmetros globais', mtWarning, [mbOK], 0);
                  abort;
                  // nf.ACBrNFe1.SSL.SelecionarCertificado;
                end;


                NF.BuscaNota(StrZero(CurrNumNota.Text,6));
                nf.GerarNFE(False);
                try
                 nf.GerarAssinarEnviar;
                except
                  raise ;
                end;

              finally
                FreeAndNil(nf);
              end;
             end
             else //transmitir NFe depois
             begin
               BuscaOperacaoNovo(qOperFiscOPE_CODIGO.AsString);
               // BuscaOperacaoNovo(CbOper.idRetorno);
              // if FormFatPedido.qOperFiscOPE_SEMVLCOM.AsString = 'S' then
               if FormFatPedido.CdsNotaFiscalOPE_SEMVLCOM.AsString= 'S' then
                 Showmessage('Faturamento realizado com sucesso! Pronta para gerar a NFe, sem gerar Contas à Receber')
               else
                 Showmessage('Faturamento realizado com sucesso! Pronta para gerar a NFe.');
             end;
            end;
          end;

          modalresult := mrOk ;


          semValorComercial := True;
          CdsItemPedido.First;
          while not CdsItemPedido.Eof do
          begin
            BuscaOperacaoNovo (iif(CdsItemPedidoCFOP_Codigo.AsString = '', cbOper.IdRetorno, CdsItemPedidoCFOP_Codigo.AsString ));
            if qOperFiscOPE_SEMVLCOM.AsString = 'N' then
              semValorComercial := False;
            CdsItemPedido.Next;
          end;

          { se a fatura é sem valor comercial o receber foi gravado para mostrar venctos na Danfe, então deve-se excluir o receber e parcela agora}
          // if qOperFiscOPE_SEMVLCOM.AsString = 'S' then
          // if CdsNotaFiscalOPE_SEMVLCOM.AsString = 'S' then
          if semValorComercial then
          begin
               wConcatSE := iif(DBInicio.empresa.wPMT_FATURA_MULTIEMPRESA,
                            ConcatSe( ' and ', dbInicio.ExclusivoSql('RECEBER',EmpCodigo) ),
                            ConcatSe( ' and ', dbInicio.ExclusivoSql('RECEBER') ));
               ExecSql( 'Delete from FAT0000 where FAT_CODIGO = '+qStr(StrZero(CurrNumNota.Text,6))+wConcatSE );
               ExecSql( 'Delete from FAT_PC01 where FAT_CODIGO = '+qStr(StrZero(CurrNumNota.Text,6))+wConcatSE );
               ExecSql( 'Delete from FAT_IT02 where FAT_CODIGO = '+qStr(StrZero(CurrNumNota.Text,6))+wConcatSE );
          end;



      end
end;

function TFormFatPedido.GravaFatura: integer;
var wTip_Cobranca, wTip_Docuto, wCct_codigo, wPcx_codigo, sql : string;
    wFat_Dtemis: TDateTime;
    wSomaDespesas : currency ;
    lFat_Registro : Integer;
    DiminuiICMSDesonerado: boolean;

begin
    if (wValorProdFaturar <= 0) then
      exit;
   wSomaDespesas := CdsNotaFiscalNF_VLFRETE.AsFloat + CdsNotaFiscalNF_VLSEGURO.AsFloat + CdsNotaFiscalNF_DESP_ACES.AsFloat + CdsNotaFiscalNF_VLDIFAL.AsFloat  ;
   If qOperFiscope_temretencao.AsString = 'S' then
     cRetencao := edValorISS.Value +edValorINSS.Value + edValorCSLL.Value + edValorIR.Value + edValorPIS.Value+ edValorCOFINS.Value   // retenções serviço
   else
      cRetencao := edValorINSS.Value + edValorCSLL.Value + edValorIR.Value + edValorPIS.Value+ edValorCOFINS.Value ;  // retenções serviço
   wFAT_VLFAT:= wValorProdFaturar + wTotalIPITotalNF + wTotalValorSubs +wVTotFPC_st + wSomaDespesas - CdsPedidosPED_DESCTOVL.AsFloat - wDescPISCofins;

   DiminuiICMSDesonerado := BuscaUmDadoSqlAsString('SELECT OPE_ICMS_DESONERADO_DIMINUI FROM OPE0000 WHERE OPE_CODIGO = ' + QuotedStr(strzero(cbOper.IdRetorno,3))) = 'S';
   if DiminuiICMSDesonerado then
      wFAT_VLFAT := wFAT_VLFAT - wTotalDesoneracao;

   if qOperFiscOPE_ICMS_TOTALNOTA.AsString = 'S' then    // importaçoes ->: somar total icm ao valor da nf
      wFAT_VLFAT := wFAT_VLFAT + wTotalVlBaseIcms;
    if Integrar then
      lFat_Registro:= BuscaUmDadoSqlAsInteger('SELECT FIRST 1 FAT_REGISTRO FROM FAT0000 WHERE PED_CODIGO = '+QuotedStr( CdsPedidosPED_CODIGO.AsString) +
                    ConcatSe(' AND ', DBInicio.ExclusivoSql('PEDIDOS'))  );
   if (qOperFiscOPE_SERVICO.AsString = 'S') AND  (qOperFiscope_temretencao.AsString <> 'S')  then
   Begin
       edValorISS.Value := 0 ;
       edISS.Value :=0;
   End;

    if Integrar and (lFat_Registro <> 0) then
    begin

      sql:= ' UPDATE FAT0000 ' +
            '  SET FAT_VL_LIQ = FAT_VL_LIQ + '+FloatToSql( wValorProdFaturar - CdsPedidosPED_DESCTOVL.AsFloat-cRetencao - iif(DiminuiICMSDesonerado,wTotalDesoneracao,0) )+
            ' , FAT_VLFAT =  FAT_VLFAT+  '+FloatToSql( wFAT_VLFAT );
      If TipoFaturamento = 'S' then
         sql:= sql + ' , FPC_VALORSERV_LIQ =' +FloatToSql( wValorProdFaturar - CdsPedidosPED_DESCTOVL.AsFloat - iif(DiminuiICMSDesonerado,wTotalDesoneracao,0) )+
                     ' , FPC_VALORSERV_FAT =' +FloatToSql( wFAT_VLFAT )+
                     ' , FAT_IRPJ_PERC = '+   FloatToSQL(EDir.Value)+
                     ' , FAT_IRPJ_RET  = '+  FloatToSQL(edValorIR.Value)+
                     ' , FAT_PIS_PERC  = '+   FloatToSQL(edPIS.Value)+
                     ' , FAT_PIS_RET  = ' +   FloatToSQL(edValorPIS.Value)+
                     ' , FAT_COFINS_PERC  = ' +   FloatToSQL(edCOFINS.Value)+
                     ' , FAT_COFINS_RET   = '  +   FloatToSQL(edValorCOFINS.Value)+
                     ' , FAT_CONTSOCIAL_PERC  = ' +   FloatToSQL(edCSLL.Value)+
                     ' , FAT_CONTSOCIAL_RET  = '  +   FloatToSQL(edValorCSLL.Value)+
                     ' , FAT_INSS_PERC  = '     +   FloatToSQL(edINSS.Value)+
                     ' , FAT_INSS_RET  = '    +   FloatToSQL(edValorINSS.Value)+
                     ' , FAT_ISS_PERC  = '  +   FloatToSQL(edISS.Value)+
                     ' , FAT_ISS_RET   = '   +   FloatToSQL(edValorISS.Value)+
                     ' , FAT_VL_RET   = '   +   FloatToSQL(cRetencao )+
                     ' , FAT_BASE_ISS  = '  + FloatToSQL(CurServicos.Value ) +
                     ' , FAT_BASE_INSS  = ' + FloatToSQL(CurServicos.Value )+
                     ', FAT_CID_CODIGO_PRESTACAO = '+ IntToStr( cid_codigo_prestacao) ;
      sql:= sql +   ' WHERE FAT_REGISTRO = ' +IntToStr( LFat_Registro );
      ExecSql(sql,false);
      Fat_Codigo := IntToStr(lFat_Registro);
    end
    else
    begin

         CurrNumNota.Text := StrZero(CurrNumNota.Text, 6);

         lFat_Registro := dbInicio.GetNextSequence('GEN_FAT0000_REGISTRO');

         ExecSql('INSERT INTO FAT0000 ( FAT_REGISTRO, FAT_CODIGO, NF_NUM_NFE, FAT_NUMSERIE, PCL_CODIGO, OPV_CODIGO, FAT_DTEMIS, CLI_CODIGO, REP_CODIGO, PED_CODIGO, ' +
                 '                      FAT_PREVISAO, FAT_EXCLUSAO, FAT_OPERUF, FAT_LIVRO, FAT_VL_LIQ, FAT_VLFAT, FAT_VLNCOMIS, FAT_COMIS1, '+
                 '                      FAT_COMIS2, FAT_COMIS3,FAT_COMISSAO_VEN, EMP_CODIGO, OPE_CODIGO, FAT_OPERACAO,  PCX_CODIGO, FAT_VL_IPI, '+
                 '                      FAT_ALIQUOTA, FAT_BASEICMS, FAT_BASESUB, FAT_ICMSRET, REP_CODIGO_INTERNO,FPC_VALORSERV_LIQ, FPC_VALORSERV_FAT, '+
                 '                      FAT_IRPJ_PERC,FAT_IRPJ_RET,FAT_PIS_PERC,FAT_PIS_RET,FAT_COFINS_PERC,FAT_COFINS_RET,FAT_CONTSOCIAL_PERC,FAT_CONTSOCIAL_RET, '+
                 '                      FAT_INSS_PERC,FAT_INSS_RET,FAT_ISS_PERC,FAT_ISS_RET,FAT_VL_RET,FAT_BASE_ISS,FAT_BASE_INSS, '+
                 '   FAT_CID_CODIGO_PRESTACAO) '+
                 ' VALUES ( '+IntToStr( LFat_Registro )+', '+
                 '         '+qStr( StrZero(CurrNumNota.Text,6) )+', '+
                 '         '+iif(chkNotaConsumidor.Checked,'null',qStr( StrZero(CurrNumNota.Text,6) ))+', '+
                 '         '+qStr( edSerie.Text )               +',' +
                 '         '+qStr( CdsPedidosPCL_CODIGO.AsString )+', '+
                 '         '+CdsPedidosOPV_CODIGO.AsString +', '+
                 '         '+DateToSql( RxDataEmissao.Date )+', '+
                 '         '+qStr( CdsPedidosCLI_CODIGO.AsString )+', '+
                 '         '+qStr( CdsPedidosREP_CODIGO.AsString )+', '+
                 '         '+qStr( CdsPedidosPED_CODIGO.AsString )+', '+
                 '         '+qStr( 'N' )+', '+
                 '         '+qStr( 'N' )+', '+
                 '         '+qStr( CdsPedidosCLI_UF.AsString )+', '+
                 '         '+qStr( 'S' )+', '+
                 '         '+iif((CurServicos.Value > 0) and (cRetencao>0 ), FloatToSql( wValorProdFaturar -
                                       CdsPedidosPED_DESCTOVL.AsFloat -(cRetencao )),
                                       FloatToSql( wValorProdFaturar - CdsPedidosPED_DESCTOVL.AsFloat  )  )+', ' +
//                 '         '+FloatToSql( wValorProdFaturar - CdsPedidosPED_DESCTOVL.AsFloat )+', '+
                 '         '+FloatToSql( wFAT_VLFAT )+', '+
                 '         '+FloatToSql( wTotalSemComissao )+', '+
                 '         '+FloatToSql( CdsPedidosPED_COMIS1.AsFloat )+', '+
                 '         '+FloatToSql( CdsPedidosPED_COMIS2.AsFloat )+', '+
                 '         '+FloatToSql( CdsPedidosPED_COMIS3.AsFloat )+', '+
                 '         '+FloatToSQL(CdsPedidosPED_COMISSAO_VEN.AsFloat)+', '+
                 '         '+qStr( EmpCodigo )+', '+
                 '         '+qStr( qOperFiscOPE_CODIGO.AsString )+', '+
                 '         '+qStr( qOperFiscOPE_CODIGO.AsString )+', '+
//                 '         '+qStr( CBoPER.iDRETORNO )+', '+
                 '         '+qStr( CdsPedidosPCX_CODIGO.AsString )+', '+
                 '         '+FloatToSql( CdsNotaFiscalNF_VL_IPI.AsFloat )+', '+
                 '         '+FloatToSql( CdsNotaFiscalNF_ALIQ_ICMS.AsFloat )+', '+
                 '         '+FloatToSql( CdsNotaFiscalNF_BASEICMS.AsFloat )+', '+
                 '         '+FloatToSql( CdsNotaFiscalNF_VLBASESUBTRIB.AsFloat )+', '+
                 '         '+FloatToSql( CdsNotaFiscalNF_VL_SUBTRIB.AsFloat )+', '+
                 '         '+qStr( CdsPedidosREP_CODIGO_INTERNO.AsString )+  ','+
                 '         '+iif(tipofaturamento= 'S', FloatToSql( wValorProdFaturar - CdsPedidosPED_DESCTOVL.AsFloat - iif(DiminuiICMSDesonerado,wTotalDesoneracao,0) ) ,FloatToSQL(0.0))+','+
                 '         '+iif(TipoFaturamento='S',FloatToSql( wFAT_VLFAT ),FloatToSQL(0.0)) +','+
                 '         '+  FloatToSQL(EDir.Value)+ ','+
                 '         '+  FloatToSQL(edValorIR.Value)+','+
                 '         '+  FloatToSQL(edPIS.Value)+','+
                 '         '+   FloatToSQL(edValorPIS.Value)+','+
                 '         '+   FloatToSQL(edCOFINS.Value)+','+
                 '         '+   FloatToSQL(edValorCOFINS.Value)+','+
                 '         '+   FloatToSQL(edCSLL.Value)+','+
                 '         '+   FloatToSQL(edValorCSLL.Value)+','+
                 '         '+   FloatToSQL(edINSS.Value)+','+
                 '         '+   FloatToSQL(edValorINSS.Value)+','+
                 '         '+   FloatToSQL(edISS.Value)+','+
                 '         '+   FloatToSQL(edValorISS.Value)+','+
                 '         '+   FloatToSQL(edValorISS.Value +edValorINSS.Value + edValorCSLL.Value + edValorIR.Value + edValorPIS.Value+ edValorCOFINS.Value   )+','+
                 '         '+  FloatToSQL(CurServicos.Value ) +','+
                 '         '+  FloatToSQL(CurServicos.Value ) +','+
                 '         '+ IntToStr( cid_codigo_prestacao) +
                    ' )' ,false);
    end;
     wVlParce := ( wValorProdFaturar + wTotalIPITotalNF + wSomaDespesas + wTotalValorSubs+wVTotFPC_st) - CdsPedidosPED_DESCTOVL.AsFloat-wDescPISCofins-cRetencao - iif(DiminuiICMSDesonerado,wTotalDesoneracao,0);

     wCct_codigo := qOperFiscCCT_CODIGO.AsString;
     if (CdsPedidosPCX_CODIGO.AsString = '') then
        wPcx_codigo := '0'
     else
        wPcx_codigo := CdsPedidosPCX_CODIGO.AsString;
     wFat_Dtemis := RxDataEmissao.Date;

     case CbxCarteira.ItemIndex of
     0: wTip_Cobranca := '';
     1: wTip_Cobranca := 'CT';
     2: wTip_Cobranca := 'CS';
     3: wTip_Cobranca := 'CC';
     4: wTip_Cobranca := 'CD';
     5: wTip_Cobranca := 'SR';
     6: wTip_Cobranca := 'CR';
     7: wTip_Cobranca := 'CQ';
     else
         wTip_Cobranca := 'CH';
     end;
     case CbxTipoDoc.ItemIndex of
     0: wTip_Docuto := '';
     1: wTip_Docuto := 'DP';
     2: wTip_Docuto := 'BL';
     3: wTip_Docuto := 'RC';
     4: wTip_Docuto := 'CH';
     5: wTip_Docuto := 'DN';
     6: wTip_Docuto := 'OU';
     else
         wTip_Docuto := 'CC';
     end;
     wValor1Parcela := 0;
     // IPI na 1 parcela
     if (wTotalIPITotalNF > 0) and (fbFaturamentoIPI1Parcela) then
        wValor1Parcela := wValor1Parcela + wTotalIPITotalNF;
     //ST na 1 parcela
     if (wTotalValorSubs > 0) and (fbFaturamentoST1Parcela) then
        wValor1Parcela := wValor1Parcela + wTotalValorSubs;
     if (wVTotFPC_st>0) and (fbFaturamentoST1Parcela)  then
        wValor1Parcela := wValor1Parcela+wVTotFPC_st;



     self.ParcelarRec( wVlParce, wValor1Parcela, cRetencao, cbBancos.IDRetorno, wTip_Cobranca, wTip_Docuto, wCct_codigo, wPcx_codigo,
                          StrZero(CurrNumNota.Text,6), CDsPedidosPCL_CODIGO.AsString,  wFat_Dtemis,
                          cdsPedidosRep_Codigo.AsString, cdsPedidoscLI_Codigo.AsString,edSerie.Text, StrToInt(edFPagto.idRetorno),Integrar, TipoFaturamento, EmpCodigo);

   result := lFat_Registro;
end;

procedure TFormFatPedido.AtualizaPedido;
var wValorUltimacompra: double;
    CPF : string;
    invalido : boolean;

begin
  if chkNotaConsumidor.Checked then
  begin
    cpf:=InputBox('CPF/CNPJ na NFCe' ,'Digite o CPF/CNPJ ou deixe em branco',CdsPedidosCLI_CPF.AsString);
    invalido := not (cpf = emptystr);
   while invalido do
   //RWFunc.TestaCgcCpf(cpf,iif((length(cpf)=14) or (length(cpf)=18),'J','F')) do
   begin
     if (length(RetirarMascaraCNPJ_INSC(cpf))=11) then
      invalido := testacpf(RetirarMascaraCNPJ_INSC(cpf))<>''
     else
      invalido := testacgc(RetirarMascaraCNPJ_INSC(cpf)) <> '';
     invalido :=  invalido and not (cpf = emptystr);
     if invalido then
       cpf:=InputBox('CPF/CNPJ na NFCe' ,'CPF/CNPJ inválido, tente de novo ou deixe em branco',cpf);

   end;
  end;
  cpf:= RetirarMascaraCNPJ_INSC(cpf);
  CurrNumNota.Text := StrZero(CurrNumNota.Text, 6);
  wValorUltimacompra := (wValorProd + wTotalIPITotalNF + DBEditFrete.Field.AsFloat + DBEditSeguro.Field.AsFloat + DBEditDesp.Field.AsFloat + wTotalValorSubs) - CdsPedidosPED_DESCTOVL.AsFloat;
   ExecSql( 'Update CLI0000 '+
            'Set CLI_DTULTCOM = ' + DateToSql(RxDataEmissao.Date) + ', CLI_VL_ULTCOMP = ' + FloatToSql(wValorUltimacompra) +
            ' where CLI_CODIGO = ' + qStr(CdsPedidosCLI_CODIGO.AsString)+
            iif(DBInicio.empresa.wPMT_FATURA_MULTIEMPRESA,
            ConcatSe( ' and ', dbInicio.ExclusivoSql('CLIENTES',EmpCodigo) ),
            ConcatSe( ' and ', dbInicio.ExclusivoSql('CLIENTES') )),false
   //se estiver depachado ou em separação não mudar situação
            );
   ExecSql( 'Insert into NF_PED ( NP_NOTANUMER, NP_PED_CODIGO, EMP_CODIGO) Values ('+ qStr(StrZero(CurrNumNota.Text,6))+', '+ qStr(CdsPedidosPED_codigo.asstring)+' ,'+ qStr(EmpCodigo) + ')',false );

   ExecSql( ' Update PED0000 '+
            ' set '+ iif(MatchText(CdsPedidosSITEXP.AsString,['DPA', 'DEP', 'SEP'] ),'SitExp = SitExp ','  SitExp = ''FAT'' ') +
            ', PED_VLFATURADO = ( coalesce(PED_VLFATURADO,0) + ' + FloatToSql( wValorProd +  wTotalIPITotalNF +
                                                  CdsNotaFiscalNF_VLFRETE.AsFloat +
                                                  CdsNotaFiscalNF_VLSEGURO.AsFloat +
                                                  CdsNotaFiscalNF_DESP_ACES.AsFloat +
                                                  wTotalValorSubs - CdsPedidosPED_DESCTOVL.AsFloat )+') '+
            ' , CLI_CPF = '+QuotedStr(cpf) +
            ' , FPG_REGISTRO = ' + IntToStr(CdsPedidosFPG_REGISTRO.AsInteger) +
            iif(EmpCodigo=EmpCodigoOriginal,'',',EMP_CODIGO = '+QuotedStr(EmpCodigo) )+
            ' where PED_CODIGO = ' + qStr(CdsPedidosPED_codigo.asstring) +
             ' and emp_codigo = '+QuotedStr(EmpCodigoOriginal) ,false);
  if EmpCodigo<>EmpCodigoOriginal then
    ExecSql('update HISTORICO_EXPE set emp_codigo = ' +QuotedStr(EmpCodigo) +
            ' where PED_CODIGO = ' + qStr(CdsPedidosPED_codigo.asstring) +
            ' and emp_codigo = '+QuotedStr(EmpCodigoOriginal),false );

   ExecSql(' INSERT INTO HISTORICO_EXPE (HIS_REGISTRO,EMP_CODIGO, SITEXP,DATASIT,USU_CODIGO, PED_CODIGO) '+
           ' VALUES (GEN_ID(GEN_HIST_EXPE,1),'+ QuotedStr(EmpCodigo) + ',''FAT'',CURRENT_TIMESTAMP,'+DBInicio.Usuario.CODIGO+
            ','+QuotedStr(CdsPedidosPED_codigo.asstring)  +          ')',false);


end;

procedure TFormFatPedido.AjustaFiltroCfop;
begin
     CbOper.FiltroTabela := FiltroCFOP;
end;

procedure TFormFatPedido.RxDataSaidaExit(Sender: tObject);
begin
    if (RxDataSaida.Date < RxDataEmissao.Date) then
    begin
        uteis.aviso('Data de saída não pode ser menor que a data de emissão !');
        RxDataSaida.SetFocus;
    end;
end;

procedure TFormFatPedido.GridItensNotaKeyDown(Sender: tObject; var Key: Word; Shift: TShiftState);
begin
     if ((Shift = [ssCtrl]) and (Key = 46)) then
        KEY := 0;
     if key = VK_RETURN then
     begin
          ChamaTelaQtdeFaturar;
          key := 0;
     end;
     INHERITED;
end;

procedure TFormFatPedido.Incluircbenef1Click(Sender: TObject);
begin

  CdsItemPedido.edit;
  CdsItemPedidoprd_cbenef.AsString :=  InputBox('Incluir cbenef para item','CBenef',CdsItemPedidoprd_cbenef.AsString);
  CdsItemPedidoalterou_cbenef.AsBoolean := True;
  CdsItemPedido.post;
end;

procedure TFormFatPedido.InformacoesCredito;
var
  vValorIcmSimples: Currency ;
  CSOSN :integer;
  opeArtigoReducao: string;
begin

    if (fOPT_SIMPLES = 'S') then // desconsiderado sem valor comercial and (qOperFiscOPE_SEMVLCOM.AsString = 'N') Then   // venda
    begin

         //DbMemoObs.Lines.Text := DbMemoObs.Lines.Text;
         vValorIcmSimples := 0;

         if (fALIQ_CREDITO > 0)  then
         begin
             wBaseicms_simples := (CurProdutos.Value + CdsNotaFiscalNF_VLFRETE.AsFloat + CdsNotaFiscalNF_VLSEGURO.AsFloat + CdsNotaFiscalNF_DESP_ACES.AsFloat
             + CdsNotaFiscalNF_VL_SUBTRIB.AsFloat + CdsNotaFiscalNF_VL_IPI.AsFloat          );

              if (qOperFiscOPE_INDICE_IMP.AsFloat > 0) and (qOperFiscOPE_SEMVLCOM.AsString = 'N') then
              begin
                   wBaseicms_simples := (wBaseicms_simples - (CurProdutos.Value * qOperFiscOPE_INDICE_IMP.AsFloat / 100)) * (fALIQ_CREDITO / 100);
                   DBMemoObs.Lines.Add('Redução da base de  R$ ' + FormatFloat('##0.00', CurProdutos.Value) + ' em ' + FormatFloat('##0.00', qOperFiscOPE_INDICE_IMP.AsFloat) + '%');
              end ;

              OpenAux3('SELECT EMP_CSOSN, OPE_ARTIGO_REDUCAO FROM OPE0000 o '+
                       ' WHERE OPE_CODIGO = '+ QuotedStr (CbOper.idretorno)+
                       iif(DBInicio.empresa.wPMT_FATURA_MULTIEMPRESA,
                       ConcatSe( ' and ', dbInicio.ExclusivoSql('FISCAL',EmpCodigo) ),
                       ConcatSe( ' and ', dbInicio.ExclusivoSql('FISCAL') )))


                      ;
              If (qAux3.FieldByName('EMP_CSOSN').IsNull) OR (qAux3.FieldByName('EMP_CSOSN').AsInteger = 0 ) then
                CSOSN :=  fiCSOSN
              else
                CSOSN := qAux3.FieldByName('EMP_CSOSN').AsInteger;
              opeArtigoReducao := qAux3.FieldByName('OPE_ARTIGO_REDUCAO').AsString;

              vValorIcmSimples := wBaseicms_simplesAproveit * fALIQ_CREDITO / 100;
              if (vValorIcmSimples > 0) and  (CdsPedidosCLI_CONSFINAL.AsString <> 'S') and (CSOSN in [101,201]) then
                 DBMemoObs.Lines.Add('Permite aproveitamento de crédito de ICMS no valor de R$ ' +
                 FormatFloat('##0.00', vValorIcmSimples) + ' referente alíquota de ' + FloatToStr(fALIQ_CREDITO) +
                 opeArtigoReducao);
                 // ' % conforme Art.23 LC 123/2006');
         End;
    end;


end;

procedure TFormFatPedido.CalculaValorTotalFaturar;
var it: tBookMark ;
    TOT: EXTENDED ;

begin
    CdsItemPedido.DisableControls;
    it := CdsItemPedido.GetBookMark;
    try

        CurProdutos.Value:=0;
        CurServicos.Value:=0;
        tot := 0;
        CdsItemPedido.First;
        while not CdsItemPedido.Eof do
        begin
             CurProdutos.Value:=0;
             CdsItemPedido.Edit;
             if (CdsItemPedidoPRF_PRODUTO_AGREGADO.AsString = 'N') then
             begin
                 CdsItemPedidoTOTAL_FATURAR.AsFloat := Uteis.RoundTo( CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat * CdsItemPedidoPRF_PRECO.AsFloat, -2 ) ;
               Tot := Tot + CdsItemPedidoTOTAL_FATURAR.asCurrency;
             end;

             CdsItemPedido.Post;
             CdsItemPedido.Next;
        end;
    finally
       if it <> nil then
          if CdsItemPedido.BookMarkValid( it ) then
             CdsItemPedido.GotoBookMark( it );
       CdsItemPedido.EnableControls;
       if TipoFaturamento = 'S' then
          CurServicos.Value := tot
       else
          CurProdutos.Value := Tot;
    end;
end;

procedure TFormFatPedido.BuscarPlacaVeiculoTransportadora ;
begin
     if CbTransportadora.tag = 0 then
         if cbTransportadora.idRetorno<>'' then
         begin
           if CdsPedidosPED_PLACA.Value <> EmptyStr then
             DBEditPlacaVeiculo.Field.AsString := CdsPedidosPED_PLACA.Value
           else
             DBEditPlacaVeiculo.Field.AsString := cbTransportadora.CDS.FieldByName('TRP_PLACA').AsString;
           DBEdPlaca.Field.AsString := cbTransportadora.CDS.FieldByName('TRP_PLACAUF').AsString;
         end
         Else
         begin
              DBEditPlacaVeiculo.Field.clear;
              DBEdPlaca.Field.clear;
         end;
end;


procedure TFormFatPedido.AtualizaEstoque;
var TipoNota, wTipoAtualizaEstoque, wGrupoAtualizaEstoque, amx_destino, amxTipoVenda : string;
     kit : boolean;
   kitQtdeFat: double;
begin
 if (CdsPedidosOPV_ESTOQUE_REMESSAINDUS.AsString = 'S') and (CdsPedidosCLI_CGC.AsString <> '' ) then     //REMESSA
   amx_destino := BuscaUmDadoSqlAsString('SELECT AMX_CODIGO FROM ALMOX0000 WHERE  AMX_CNPJ_PART = '+QuotedStr(RetirarMascaraCNPJ_INSC(CdsPedidosCLI_CGC.AsString)))
 else
   amx_destino := '';

  CdsItemPedido.First;
  while not CdsItemPedido.Eof do
  begin

      // atualiza estoque TIPO S/N
      wTipoAtualizaEstoque := CdsItemPedido.FieldByName('PTI_ATUALIZAR_ESTOQUE').AsString;

      // atualiza estoque grupo S/N
       wGrupoAtualizaEstoque :=  CdsItemPedido.FieldByName('PGR_ATUALIZA_ESTOQUE').AsString;
    // Somente atualizar o estoque quando:
    //  No tipo de produto o Flag Atualiza Estoque for Sim.
    //  No grupo do produto o Flag Atualiza Estoque for Sim.
    //  No Tipo de Pedido o Flag Atualiza Estoque for Sim.
    //  Na Operaçao fiscal o Flag for Sim
    if (CdsItemPedidoPRD_REFER.AsString <> '9999') and ( wTipoAtualizaEstoque = 'S') and (CdsItemPedidoOPV_ATESTOQUE.AsString = 'S') and
       (qOperFiscOPE_ESTOQUE.AsString = 'S') then
       begin
            { desliguei condição, CdsItemPedidoPGR_ATUALIZA_ESTOQUE.AsString com falha quando é multi-almoxarifado, vindo semppre N - 16/06/17 marcio}
            //  if (CdsItemPedidoPGR_ATUALIZA_ESTOQUE.AsString = 'S') or (CdsItemPedidoPGR_CODIGO.IsNull) then
            if wGrupoAtualizaEstoque = 'S' then
            begin
             TipoNota := iif(RadSaida.Checked, 'S', 'E');
             CurrNumNota.Text := StrZero(CurrNumNota.Text, 6);
             //atualizar a observação do kardex
             if (CdsItemPedidoPRF_FLAG_ATUALIZA_ESTOQUE.AsString = 'S') and (fwAtualizaEstoque = 'P') then
             begin

                AtualizarObsKardex(CdsItemPedidoPRD_PRODUTO.AsString, CdsItemPedidoPED_CODIGO.AsString,
                'Faturado em '+DateTimeToStr(now) + ' com Nota fiscal No. '+StrZero(CurrNumNota.Text,6)  );




                if BuscaUmDadoSqlAsString('SELECT OPV_BAIXAR_ESTOQUE_PELO_FAT FROM OPV0000 WHERE  OPV_CODIGO = '+QuotedStr(CdsPedidosOPV_CODIGO.AsString  )) = 'S' then
                begin
                   amxTipoVenda := BuscaUmDadoSqlAsString('SELECT AMX_CODIGO FROM ALMOX0000 WHERE  AMX_CNPJ_PART = '+QuotedStr(RetirarMascaraCNPJ_INSC(DBInicio.Empresa.CNPJ_CNPF)));
                   TipoNota := 'S';
                   KardexLancamento( CdsItemPedidoPRF_REGISTRO.AsString,
                                     'NF',
                                     amxTipoVenda,
                                     amx_destino,
                                     CdsItemPedidoPRD_PRODUTO.AsString,
                                     CdsItemPedidoPRG_REGISTRO.AsString,
                                     '',
                                     TipoNota,
                                     '',
                                     CdsItemPedidoPRDL_REGISTRO.AsString,           // registro no lote somente no pedido, feita a baixa no pedido, somente registrar no kardex
                                     iif(CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat < 0,
                                      'ALTERAÇÃO DE ITEM DO PEDIDO', iif(TipoNota = 'E', 'ENTRADA', 'SAIDA') + ' PELO FATURAMENTO'),
                                     Now,
                                     iif(CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat < 0,
                                     CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat *  - 1,
                                     CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat),
                                     StrZero(CurrNumNota.Text,6),
                                     CdsPedidosCLI_CODIGO.AsString + '-' + CdsPedidosCLI_RAZAO.AsString,
                                     CdsItemPedidoPRF_PRECO.AsFloat,
                                     CdsPedidosCLI_CODIGO.AsString,//CLI_CODIGO
                                    '',//FOR_CODIGO
                                    '',//COL_CODIGO
                                    CdsItemPedidoPRD_REFER.AsString,//REFERENCIA
                                    ((CdsPedidosOPV_ESTOQUE_REMESSAINDUS.AsString = 'S') and (CdsPedidosCLI_CGC.AsString <> '' )  ),  // entrada na estoque do terceir
                                     'BAIXADO DO ESTOQUE PELO FATURAMENTO ')  ;



                end;



             end;
             if (CdsItemPedidoPRF_FLAG_ATUALIZA_ESTOQUE.AsString = 'S') and (fwAtualizaEstoque = 'F') then
             begin
                kit := CdsItemPedidoPTI_SIGLA.AsString = 'KT';
//                (Buscaumdadosqlasstring( 'SELECT B.PTI_SIGLA FROM PRD0000 A '+
//                                                 'JOIN PRD_TIPO B ON B.PTI_CODIGO = A.PTI_CODIGO '+
//                                                 'WHERE A.PRD_REFER='+qStr(CdsItemPedidoPRD_REFER.AsString))='KT');
                if (not kit and (CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat <> 0)  and (CdsItemPedidoPRF_REGISTRO_VINCULADO.AsInteger = 0)) or
                       ((kit and fwPMT_CONTROLA_KIT) and (CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat <> 0)) then
                BEGIN


                     KardexLancamento( CdsItemPedidoPRF_REGISTRO.AsString,
                                       'NF',
                                       CdsItemPedidoAMX_CODIGO_DESTINO.AsString,
                                       amx_destino,
                                       CdsItemPedidoPRD_PRODUTO.AsString,
                                       CdsItemPedidoPRG_REGISTRO.AsString,
                                       '',
                                       TipoNota,
                                       '',
                                       CdsItemPedidoPRDL_REGISTRO.AsString,           // registro no lote somente no pedido, feita a baixa no pedido, somente registrar no kardex
                                       iif(CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat < 0,
                                        'ALTERAÇÃO DE ITEM DO PEDIDO', iif(TipoNota = 'E', 'ENTRADA', 'SAIDA') + ' PELO FATURAMENTO'),
                                       Now,
                                       iif(CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat < 0,
                                       CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat *  - 1,
                                       CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat),
                                       StrZero(CurrNumNota.Text,6),
                                       CdsPedidosCLI_CODIGO.AsString + '-' + CdsPedidosCLI_RAZAO.AsString,
                                       CdsItemPedidoPRF_PRECO.AsFloat,
                                       CdsPedidosCLI_CODIGO.AsString,//CLI_CODIGO
                                      '',//FOR_CODIGO
                                      '',//COL_CODIGO
                                      CdsItemPedidoPRD_REFER.AsString,//REFERENCIA
                                      ((CdsPedidosOPV_ESTOQUE_REMESSAINDUS.AsString = 'S') and (CdsPedidosCLI_CGC.AsString <> '' )  ),  // entrada na estoque do terceir
                                       'REMESSA INDUSTRIALIZAÇÃO PELO FATURAMENTO ')  ;



                END;

                if (kit and not fwPMT_CONTROLA_KIT) then
                begin

                   kitQtdeFat :=  CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat;
                   if (kitQtdeFat > 0) and (cdsItemPedidoPRF_REGISTRO.AsInteger > 0 ) then
                   begin
                     openaux ('SELECT t1.*, Coalesce(t1.PRF_QTDE,0) as PRF_QTDE_FATURAR_CC, P2.PRD_CODIGO as prd_produto, P3.PRD_REFER AS PRD_REFER_MP ' +
                              'FROM PED_IT01 T1 '+
                              '     JOIN PRD0000 P2 ON (P2.PRD_REFER = IIF(Coalesce(t1.prd_refer,'+qStr('')+')='+qStr('')+',T1.prdco_codigo_original,T1.prd_refer)  ) '+
                              '     JOIN PRD0000 P3 ON (P3.PRD_CODIGO = T1.PRD_CODIGO) '+
                              'WHERE T1.PRF_REGISTRO_VINCULADO = '+cdsItemPedidoPRF_REGISTRO.asstring +
                               ConcatSe(' and p2.',dbinicio.ExclusivoSql('PRODUTOS')) +
                              ConcatSe(' and p3.',dbinicio.ExclusivoSql('PRODUTOS')));
                     while not qAux.eof do
                     begin
      //                    Baixa_Estoque(TipoNota, qAux.fieldbyname('PRD_REFER_MP').AsString, EmpCodigo, qAux.fieldbyname('PRF_QTDE_FATURAR_CC').asFloat );  //atualiza saldo estoque
                          if ( qAux.fieldbyname('PRF_QTDE_FATURAR_CC').AsFloat <> 0) then
                          Begin
                              KardexLancamento(qAux.fieldbyname('PRF_REGISTRO').AsString,
                                              'NF',
                                              qAux.fieldbyname('AMX_CODIGO_DESTINO').AsString,
                                              amx_destino,
                                              qAux.fieldbyname('PRD_CODIGO').AsString,
                                              qAux.fieldbyname('PRG_REGISTRO').AsString,
                                              '',
                                              TipoNota,
                                              '',
                                              qAux.fieldbyname('PRDL_REGISTRO').AsString, {NÃO PODE PASSAR O LOTE PORQUE MESMO BAIXA ESTOQUE POR FATURAMENTO ELE BAIXA O LOTE SOMENTE NO PEDIDO}
                                              iif(qAux.fieldbyname('PRF_QTDE_FATURAR_CC').AsFloat < 0, 'ALTERAÇÃO DE ITEM DO PEDIDO', iif(TipoNota = 'E', 'ENTRADA', 'SAIDA') + ' PELO FATURAMENTO'),
                                              Now,
                                              qAux.fieldbyname('PRF_QTDE_FATURAR_CC').AsFloat *  kitQtdeFat,  StrZero(CurrNumNota.Text,6),
                                              CdsPedidosCLI_CODIGO.AsString + '-' + CdsPedidosCLI_RAZAO.AsString,
                                              qAux.fieldbyname('PRF_PRECO').AsFloat,
                                               CdsPedidosCLI_CODIGO.AsString,//CLI_CODIGO
                                              '',//FOR_CODIGO
                                              '',//COL_CODIGO
                                               '',//REFERENCIA
                                              ((CdsPedidosOPV_ESTOQUE_REMESSAINDUS.AsString = 'S') and (CdsPedidosCLI_CGC.AsString <> '' )  ),  // entrada na estoque do terceir
                                              iif(qAux.fieldbyname('PRF_QTDE_FATURAR_CC').AsFloat < 0, 'REMESSA INDUSTRIALIZAÇÃO - ALTERAÇÃO DE ITEM DO PEDIDO', iif(TipoNota = 'S', 'ENTRADA', 'SAIDA') + ' PELO FATURAMENTO')) ;

                          End;
                        qAux.Next;
                     end;
                     qAux.Close;
                   end;
                end;
             end;


            end;
       end;


   CdsItemPedido.Next;
  end;
end;

Function TFormFatPedido.BuscaOperacaoNovo ( const pCodOper: string ):boolean   ;
var  wMensagem, uf: string;
begin

		 qOperFisc.Close;
		 qOperFisc.SQL.Text:='select * from ope0000 where ope_codigo='+qStr(pCodOper);
		 qOperFisc.Open;
     tsServico.TabVisible := qOperFisc.FieldByName('OPE_SERVICO').asstring = 'S';
		 result :=  not qOperFisc.IsEmpty;

     if qCLientes.Active then
      uf := qCLientesCLI_UF.asstring
     else
      if FrmPedidoItem <> nil then
        uf := FrmPedido.cbbClienteEstado.Text;




			qIcms.Close;
			qIcms.Sql.Text := 'select ICM_ALIQ, ' +
												'       ICMS_SUBS, '  +
												'       ICMS_PROD_IMPORTADO, ' +
												'       SOMA_MVA_SN, ' +
												'       ICM_MVA, ' +
												'       ICM_SUB_TRI_SN, ' +
												'       ICMS_REDUZIDO, ' +
                        '       FCP_PERC, ' +
                        '       ICM_TIPO_CALCULO_DIFAL ' +
												'from ICM0000 WHERE ICM_DESTINO = ' + quotedstr(uf)+ConcatSe( ' AND ', dbInicio.ExclusivoSql('ICMS') )  ;
			qIcms.open;



			if (CdsPedidosCLI_UF.AsString <> fUF) then
				 wForaEstSN := 'S'
			else
				 wForaEstSN := 'N';

			wConsumidor := ( CdsPedidosCLI_CONSFINAL.AsString = 'S' );
			wExterior := iif(CdsPedidosCLI_UF.AsString = 'EX', 'S', 'N');

			if qOperFiscOPE_TRIBICMS.AsString = 'S' then
			begin
         icmTipoCalculoDifal   := qIcmsICM_TIPO_CALCULO_DIFAL.AsInteger;
         wALiqICmsCliente      :=qIcmsICM_ALIQ.asCurrency;
         wALiqICmsInterEstadual:=qIcmsICM_ALIQ.asCurrency; // INTERESTADUAL
         wUfAliqIcmsForaEst    :=qIcmsICM_ALIQ.asCurrency; // INTERESTADUAL
         wALiqICmsInterno      :=qIcmsICMS_SUBS.asCurrency;  // ESTADUAL
         wAliqIcmsImportado    :=qIcmsICMS_PROD_IMPORTADO.asCurrency;

         wUfAplMvaSomaSN := '';
         wUfIcmsSubSN := '';
         wUfAliqIcmsSubCli := 0;
         wUfAliqMVA := 0;
         wAliqreduzidaICMS := 0;

         //Consumidor final Aliquotas de ICMS pela UF destino NT 2015.003
         // nao calcular sub.trib. para consumirdor final e para cliente que usa no processo de industrialização
         //Venda interestadual mercadorias importadas

      end;

      if (not wConsumidor) and ( not (CdsPedidosCLI_CONSU_PROPRIO.AsString = 'S')) then
      begin
           wUfAplMvaSomaSN := qIcmsSOMA_MVA_SN.AsString;
           wUfIcmsSubSN := qIcmsICM_SUB_TRI_SN.AsString;
           wUfAliqIcmsSubCli := qIcmsICMS_SUBS.AsFloat;

           if qIcmsICM_MVA.AsFloat > 0 then
              wUfAliqMVA := qIcmsICM_MVA.AsFloat;

           wAliqreduzidaICMS  := qIcmsICMS_REDUZIDO.AsFloat;
           wALiqICmsCliente   := qIcmsICM_ALIQ.asCurrency;
           wUfAliqIcmsForaEst := qIcmsICM_ALIQ.asCurrency; // INTERESTADUAL
      end;

      if (wExterior = 'N') and (wForaEstSN = 'S') and (qIcmsICMS_PROD_IMPORTADO.AsFloat > 0)
      and ( (CdsItemPedidoPRD_ORIGEM.AsString = '1') or (CdsItemPedidoPRD_ORIGEM.AsString = '2') or (CdsItemPedidoPRD_ORIGEM.AsString = '3') or (CdsItemPedidoPRD_ORIGEM.AsString = '8') ) then
      begin
        wAliqIcmsImportado := qIcmsICMS_PROD_IMPORTADO.asCurrency;
        wALiqICmsCliente := wAliqIcmsImportado;
        wUfAliqIcmsForaEst:= wAliqIcmsImportado;
      end;

     if (qOperFiscOPE_ESTOQUE.AsString = 'N') then
     begin
          PanOperacao.Caption := 'CFOP selecionada não atualiza estoque';
          PanOperacao.Font.Color := clRed;
     end
     else
     begin
          PanOperacao.Caption := 'CFOP selecionada atualiza estoque';
          PanOperacao.Font.Color := clGreen;
     end;

     if (fwAtualizaEstoque = 'F') and (cbOper.CDS.Active) then   //Atualiza pelo faturamento
     begin
        // :=
           OpenAux2( 'Select P2.OPV_ATESTOQUE, OPV_DESCRICAO From PED0000 P1 '+
             '       JOIN OPV0000 P2 ON P1.OPV_CODIGO = P2.OPV_CODIGO '+
             'WHERE P1.PED_CODIGO = ' + qStr(cdsPedidosPed_Codigo.AsString) +
             ' AND  P1.emp_codigo = '+QuotedStr(EmpCodigo) ) ;

				 if (qAux2.FieldByName('OPV_ATESTOQUE').AsString <> qOperFiscOPE_ESTOQUE.AsString) and (pCodOper <> '') then
					 begin
							if (qAux2.FieldByName('OPV_ATESTOQUE').AsString = 'S') then
                 wMensagem := 'Tipo do Pedido : ' + qAux2.FieldByName('OPV_DESCRICAO').AsString +  ' - Baixa Estoque.'
              else
                 wMensagem := 'Tipo do Pedido : ' + qAux2.FieldByName('OPV_DESCRICAO').AsString + ' - Não Baixa Estoque.';
                                         //
              if (qOperFiscOPE_ESTOQUE.AsString = 'S') then
                 wMensagem := wMensagem + #13#13 + 'CFOP  ' + cbOper.CDS.FieldByName('CFOP').AsString + #13 + 'Este Faturamento Baixará ESTOQUE.'
              else
                 wMensagem := wMensagem + #13#13 + 'CFOP ' + cbOper.CDS.FieldByName('CFOP').AsString + #13 + 'Este Faturamento NÃO baixará ESTOQUE.';
                                         //
              uteis.aviso(pchar('Pedido Nº ' + DBEditPedido.Text + #13  + wMensagem + #13#10 + #13#10 +
               '* ATENÇÃO : O Tipo do Pedido é marcado para controlar estoque, mas o CFOP está marcado para não baixar estoque, ou vice-versa !'));
					 end;

     end;
end;

function TFormFatPedido.BuscaRegra(const pNbm, pUf, pRegCfop, prd_origem: string): integer;
var i: integer;
    sOrigem : string;
begin
  if MatchStr(prd_origem,['1','2','6','7']) then   // estrangeira
    sorigem := 'E'
  else
    sOrigem := 'N';

  result := 0;
  for I := 8 downto 2 do // tenta localizar regras estaduais por ncm (ou parte do ncm)
  begin
    if result = 0 then
    begin
        Result := BuscaUmDadoSqlAsInteger ('SELECT opr_registro FROM ope_regra '+
                                           ' where ipi_codigo = ' + qStr( copy(pNbm, 1, I) ) +
                                           ' AND opr_' + pUf + ' = '+qStr('S')+
                                           ' AND ope_codigo_origem = '+ qStr( pRegCfop ) +
                                           iif(sOrigem<>'',' and OPR_ORIGEM = ' +QuotedStr(sorigem),'')+
                                           iif(DBInicio.empresa.wPMT_FATURA_MULTIEMPRESA,
                                               ConcatSe( ' and ',dbInicio.ExclusivoSql('FISCAL',EmpCodigo)),
                                               ConcatSe( ' and ',dbInicio.ExclusivoSql('FISCAL')))
                                                  );
         if result = 0 then
           Result := BuscaUmDadoSqlAsInteger ('SELECT opr_registro FROM ope_regra '+
                                               ' where ipi_codigo = ' + qStr( copy(pNbm, 1, I) ) +
                                               ' AND opr_' + pUf + ' = '+qStr('S')+
                                               ' AND ope_codigo_origem = '+ qStr( pRegCfop ) +
                                                ' and OPR_ORIGEM = ' +QuotedStr('I')+
                                                iif(DBInicio.empresa.wPMT_FATURA_MULTIEMPRESA,
                                                ConcatSe( ' and ',dbInicio.ExclusivoSql('FISCAL',EmpCodigo)),
                                                ConcatSe( ' and ',dbInicio.ExclusivoSql('FISCAL')))

                                               );
     end
     Else
        Break
  end;
  if Result=0 then // busca regra genérica
    Result := BuscaUmDadoSqlAsInteger ( 'SELECT opr_registro FROM ope_regra '+
                                        ' where ipi_codigo = ' + qStr( '**' ) +
                                        ' AND opr_' + pUf + ' = '+qStr('S')+
                                        ' AND ope_codigo_origem = '+ qStr( pRegCfop ) +
                                        ' AND opr_origem = '+ qStr( sOrigem ) +
                                         iif(DBInicio.empresa.wPMT_FATURA_MULTIEMPRESA,
                                          ConcatSe( ' and ', dbInicio.ExclusivoSql('FISCAL',EmpCodigo) ),
                                          ConcatSe( ' and ', dbInicio.ExclusivoSql('FISCAL'))));


  if Result=0 then // se não encontrar regra genérica, busca regra fiscal com capacidade
    Result := BuscaUmDadoSqlAsInteger ( 'SELECT rg.opr_registro ' +
                                        ' FROM ope_regra rg '+
                                        ' JOIN REGRA_FISCAL_PROD_CAP pc ON (pc.OPR_REGISTRO = rg.OPR_REGISTRO) and (pc.cap_codigo =  ' + IntToStr(cdsitempedidocap_codigo.asinteger) + ')' +
                                        ' where ipi_codigo = ' + qStr( '**' ) +
                                       //  ' AND STB_TRIBUTACAO = ' + qStr(wCST_CODIGO) +
                                        ' AND opr_' + pUf + ' = '+qStr('S')+
                                        ' AND ope_codigo_origem = '+ qStr( pRegCfop ) +
                                         iif(DBInicio.empresa.wPMT_FATURA_MULTIEMPRESA,
                                          ConcatSe( ' and ', dbInicio.ExclusivoSql('FISCAL',EmpCodigo) ),
                                          ConcatSe( ' and ', dbInicio.ExclusivoSql('FISCAL'))));



  if Result=0 then // se não encontrar regra genérica, nem capacidade, busca sem a origem do produto, ou seja, regra indiferente para origem da mercadoria
    Result := BuscaUmDadoSqlAsInteger ( 'SELECT opr_registro FROM ope_regra '+
                                        ' where ipi_codigo = ' + qStr( '**' ) +
                                        ' AND opr_' + pUf + ' = '+qStr('S')+
                                        ' AND ope_codigo_origem = '+ qStr( pRegCfop ) +
                                         iif(DBInicio.empresa.wPMT_FATURA_MULTIEMPRESA,
                                          ConcatSe( ' and ', dbInicio.ExclusivoSql('FISCAL',EmpCodigo) ),
                                          ConcatSe( ' and ', dbInicio.ExclusivoSql('FISCAL'))));




end;

procedure TFormFatPedido.CbBancosSelect(Sender: TObject);
begin
  inherited;
  CurrCodBanco.Text := cbBancos.idRetorno;

end;

procedure TFormFatPedido.CbOperClick(Sender: TObject);
begin

  BuscaOperacaoNovo( cbOper.idRetorno ) ;
end;

procedure TFormFatPedido.CbOperSelect(Sender: TObject);
begin
		 BuscaOperacaoNovo( cbOper.idRetorno ) ;
		 if cbOper.idRetorno<>'' then
				AdicionaNumeroFatura;

		 DadosAdicionaisSimples; // CREDITO DE ICMS  da empresa se SIMPLES
end;

procedure TFormFatPedido.CalculaPeso;
var it: tBookMark;
    wPeso, wPesoBruto, wPesoLiq, PesoInformado: Real;
    join, prdCodigo, prdCReferencia, uCom, uTrib: String;
begin
     wPesoBruto := 0;
     wPesoLiq := 0;

     if w_Nao_Quer_Peso_Na_NF = 'N' then           // sim quero peso / senão usuaro zerou peso nao calcular
     begin
         it := CdsItemPedido.GetBookMark;
         CdsItemPedido.DisableControls;
         try
             CdsItemPedido.First;
             while not CdsItemPedido.Eof do
             begin

                  // utilizado no pedido que foi baseado em uma entrada de nota fiscal para industrialização
                  if copy(CdsItemPedidoPRF_PRDDESCRI.AsString, 1, 1) = '[' then
                  begin
                    prdCReferencia := QuotedStr(copy(CdsItemPedidoPRF_PRDDESCRI.AsString, 2, pos(']', CdsItemPedidoPRF_PRDDESCRI.AsString) - 2));
                    prdCodigo := QuotedStr(BuscaUmDadoSqlAsString('SELECT PRD_CODIGO FROM PRD0000 WHERE PRD_REFER = ' +  QuotedStr(CdsItemPedidoPRD_REFER.AsString) ) );
                    join := 'JOIN PRD0000_CODIGO pc ON pc.FOR_CODIGO = T2.FOR_CODIGO AND pc.PRDC_REFERENCIA = ' + prdCReferencia + '  AND  pc.PRD_CODIGO = ' + prdCodigo ;
                  end
                  else
                    join := '';

                  // wPeso é utilizado somente para emissao de notaa de industrialização que busca a nota de entrada para verificar peso
                  qAux.Close;
                  qAux.Sql.Text := 'SELECT T2.enf_peso_entrada, t2.ENF_UCOM, t2.ENF_UTRIB '+
                                     'FROM ped_it01_indust T1 ' +
                                     ' JOIN enf_it01 T2 ON (T2.enf_registro = T1.enf_registro AND T2.enf_peso_entrada > 0) ' +
                                     join +
                                   ' WHERE T1.prf_registro = ' + CdsItemPedidoPRF_REGISTRO.AsString ;
                  qAux.Open;
                  wPeso := qAux.FieldByName('enf_peso_entrada').AsFloat;
                  uCom :=  qAux.FieldByName('enf_ucom').AsString;
                  uTrib:=  qAux.FieldByName('enf_utrib').AsString;
                  if wPeso<>0 then
                  begin
                       if (formFaturar <> nil) and (CdsItemPedidoPRD_REFER.AsString = FormFaturar.dbedtRefer.Text) and (FormFaturar.Registro = CdsItemPedido.RecNo) and ((uCom <> uTrib) AND (uTrib = 'KG') ) then
                       begin
                         PesoInformado := (wPeso / FormFatPedido.cdsItemPedidoPRF_QTDE.AsFloat) * FormFaturar.CurrQtdeFatu.Value;
                         wPesoBruto := wPesoBruto + PesoInformado ;
                         wPesoLiq := wPesoLiq + PesoInformado;
                       end
                       else if (formFaturar <> nil) and (CdsItemPedidoPRD_REFER.AsString = FormFaturar.dbedtRefer.Text) and (FormFaturar.Registro = CdsItemPedido.RecNo) then
                       begin
                         PesoInformado := FormFaturar.CurrQtdeFatu.Value;
                         wPesoBruto := wPesoBruto + (wPeso * PesoInformado) ;
                         wPesoLiq := wPesoLiq + (wPeso * PesoInformado);
                       end
                       // else if (uCom <> uTrib) AND (uTrib = 'KG') then
                       else if ((uCom <> uTrib) AND (uTrib = 'KG')) or ( (uCom = 'KG') and (uTrib = 'KG')  ) then
                       begin
                         // PesoInformado := 1
                         wPesoBruto := wPesoBruto + wPeso;
                         wPesoLiq := wPesoLiq + wPeso;
                       end
                       else
                       begin
                         PesoInformado := CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat;
                         wPesoBruto := wPesoBruto + (wPeso * PesoInformado) ;
                         wPesoLiq := wPesoLiq + (wPeso * PesoInformado);
                       end;

                  end
                  else
                  begin
                       if CdsItemPedidoPRD_PESOKG.AsFloat > 0 then
                          wPesoBruto := wPesoBruto + (CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat * CdsItemPedidoPRD_PESOKG.AsFloat);
                       if CdsItemPedidoPRD_PESOLIQ.AsFloat > 0 then
                          wPesoLiq := wPesoLiq + (CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat * CdsItemPedidoPRD_PESOLIQ.AsFloat);
                  end;
                  CdsItemPedido.Next;
             end;
         Finally
                 if it <> nil then
                    if CdsItemPedido.BookMarkValid( it ) then
                       CdsItemPedido.GotobOOKMark( it );
                 CdsItemPedido.EnableControls;
         end;
     end;
     if CdsNotaFiscal.state=dsBrowse then
        CdsNotaFiscal.Edit;
     CdsNotaFiscalNF_PESOBRU.AsFloat := wPesoBruto;
     CdsNotaFiscalNF_PESOLIQ.AsFloat := wPesoLiq;
end;

procedure TFormFatPedido.GridItensNotaDblClick(Sender: TObject);
begin
  inherited;
  ChamaTelaQtdeFaturar;
end;

procedure TFormFatPedido.GridItensNotaDrawColumnCell(Sender: tObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (CdsItemPedidoPRF_QTDEPEND.AsFloat > 0) or (CdsItemPedidoPRF_PRODUTO_AGREGADO.AsString = 'S') or (CdsItemPedidoPRF_PRODUTO_SEMVALOR.AsString = 'S')  then
    GridItensNota.Canvas.Font.Color := clRed;

  if (Column.FieldName = 'PRF_QTDEPEND') or (CdsItemPedidoPRF_PRODUTO_AGREGADO.AsString = 'S')  or (CdsItemPedidoPRF_PRODUTO_SEMVALOR.AsString = 'S')  then
     GridItensNota.DefaultDrawDataCell(rect, Column.Field, State);
end;

function TFormFatPedido.GravarCreditoCliente(const conta: string; const fat_registro: integer; const valor: double): boolean;
begin
  try
    ExecSql(' insert into CONTA_FATURA ( CODIGO_CONTA ,FAT_REGISTRO ,CFA_DATAREGISTRO ,  CFA_VALOR) '+
            ' values ('+ QuotedStr(conta) + ',' + IntToStr(fat_registro) + ',' + DateTimeToSQL(now)+ ','+FloatToSQL(valor)+')',false);


    ExecSql(' UPDATE CONTA_CORRENTE SET VALOR_UTILIZADO  = VALOR_UTILIZADO + '+FloatToSQL(valor)+
            ' WHERE codigo = '+QuotedStr(conta) ,false );

  except
     result := False;
  end;
end;

procedure TFormFatPedido.Gravar_Item_Nota(const sNota, sItem: string);
var
  sNF_SUBTRIBASE, sNF_ALIQSUBTRIB, sNF_VLSUBST, sNF_MVAPERC, sNF_IPI_POR_UNIDADE, sCompl: string;
  BlDifalA, BlDifalB, CSOSN_item,  cstIPI: string;
  rAliqAux, rCusto, sNF_ICMSVALOR, sNF_IPIALIQ, sPercReduz, vICMSSubstituto , Nf_fcp, nf_fcpst : Currency;
  sql, NTP_CFOP, ope_codigo: string;
  icmsDeson, AliquotaDeson, a,b,c, saldo, BaseProdutoBanco: double;
  motivDeson : string;
  baseSimples, IpiNaBaseICMS, FreteNaBAse, ICMSTotalNota : boolean;
begin
    sCompl:='';
    nf_fcpst := 0;
    Nf_fcp := 0;

    if fwPMT_COMP_ITEM_PEDIDO_IT_NF then
       sCompl := CdsItemPedidoPRF_COMPL_DESCRI.AsString;

    wConsumidor := (CdsPedidosCLI_CONSFINAL.AsString = 'S');
    wVenda := (qOperFiscOPE_TIPO_OPERACAO.AsString = 'V');

    //ATUALIZAR CUSTO DELAY ENTRE PEDIDO E FATURA, menos quando o kit é virtual e formado por itens do kit
    if (fwPMT_ITENS_KIT) and ( (CdsItemPedido.FieldByName('KIT_VIRTUAL').AsInteger>0) OR  (CdsItemPedido.FieldByName('PTI_SIGLA').AsString = 'KT')) then
      rCusto :=  CdsItemPedidoPRF_CUSTO.AsFloat
    else
    begin
      if DBInicio.Exclusivo( 'PRODUTO_PRECO_EMPRESA' )  then
        rCusto :=  CdsItemPedidoPRF_CUSTO.AsFloat
      else
      begin
        if fwCalcularPV = 0 then
           rCusto := CdsItemPedidoPRD_PCUSTO.AsFloat
        else if fwCalcularPV = 1 then
           rCusto := CdsItemPedidoPRD_CUSTOCOMIPI.AsFloat
        else if fwCalcularPV = 2 then
         rCusto := CdsItemPedidoPRD_CUSTOCOMIPI.AsFloat ;
      end;
      ExecSql( 'UPDATE PED_IT01 SET PRF_CUSTO = ' + FloatToSql(rCusto) + ' where PRF_REGISTRO = ' + qStr(CdsItemPedidoPRF_REGISTRO.AsString),false );

    end;
    sPercReduz:=0;
    if wAliqreduzidaICMS > 0 then   {percentual de reduçao sobre aliq.ICMS }
       sPercReduz := wAliqreduzidaICMS
    else
    if qOperFiscOPE_REDU_ICM.AsFloat > 0 then { reducção de percentnoviual do ICMS na operação Fiscal }
       sPercReduz := qOperFiscOPE_REDU_ICM.AsFloat
    Else
    if qOperFiscOPE_INDICE_IMP.AsFloat>0 then
      sPercReduz := qOperFiscOPE_INDICE_IMP.AsFloat;
    sNF_IPIALIQ:=CdsItemPedidoPRF_IPIALIQ.AsFloat;
    sNF_IPI_POR_UNIDADE:='N';
    if (CdsItemPedidoIPI_POR_PRODUTO.AsFloat > 0) then
    begin
         sNF_IPIALIQ := 0;
         sNF_IPI_POR_UNIDADE := 'S';
    end;

    sNF_SUBTRIBASE := 'null';
    sNF_ALIQSUBTRIB := 'null';
    sNF_VLSUBST := 'null';
    sNF_MVAPERC := 'null';
    if wBaseValorSubs > 0 then
    begin
         sNF_SUBTRIBASE := FloatToSql(Uteis.RoundTo( wBaseValorSubs, -2 ));
         sNF_ALIQSUBTRIB := FloatToSql(wUfAliqIcmsSubCli);
         sNF_VLSUBST := FloatToSql(Uteis.RoundTo( wValorSubs, -2 ));
         sNF_MVAPERC := FloatToSql(wUFAliqMVA);
         if qIcmsFCP_PERC.ASFLOAT>0 then
           nf_fcpst :=  Uteis.RoundTo( (CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat * CdsItemPedidoPRF_PRECO.AsFloat * wUFAliqMVA/ 100 ) * qIcmsFCP_PERC.ASFLOAT/100 ,-2)
         else
          nf_fcpst :=  Uteis.RoundTo(( wBaseValorSubs / 100 ) * wAliqFCP ,-2);
         wVTotFPC_st:=wVTotFPC_st+ nf_fcpst;
    end;


    sNF_ICMSVALOR:=wValorIcmsIndividual;
    if not ((fOPT_SIMPLES = 'S') and (femp_crt = '1')) then
       sNF_ICMSVALOR := iif(wValorIcms = 0, wValorIcmsIndividual, wValorIcms)
    else
    if ( GetCSOSN <> 900) and (femp_crt = '1') AND (fOPT_SIMPLES = 'S') then
       sNF_ICMSVALOR := 0;


    blDifalA:='';
    blDifalB:='';

    if (femp_crt <> '1')  then // somente lucro presumido e real
    begin
       wBaseProduto := (CdsItemPedidoPRF_QTDE_FATURAR_CC.asCurrency * CdsItemPedidoPRF_PRECO.asCurrency)  ;
       if BuscaUmDadoSqlAsString
          ('SELECT OPE_IPINABASEICMS FROM OPE0000 ' +
           ' WHERE EMP_CODIGO =' + QuotedStr(DBInicio.Emp_Codigo) +
           ' AND OPE_CODIGO = ' +  QuotedStr(cboper.idretorno)
          ) = 'S' then
         wBaseProduto := wBaseProduto + wValorIPI;
       if BuscaUmDadoSqlAsString
          ('SELECT OPE_FRETENABASE FROM OPE0000 ' +
           ' WHERE EMP_CODIGO =' + QuotedStr(DBInicio.Emp_Codigo) +
           ' AND OPE_CODIGO = ' +  QuotedStr(cboper.idretorno)
          ) = 'S' then
         wBaseProduto := wBaseProduto + wFreteIndividual + wDespesaIndividual + wSeguroIndividual;
       if BuscaUmDadoSqlAsString
          ('SELECT OPE_ICMS_TOTALNOTA FROM OPE0000 ' +
           ' WHERE EMP_CODIGO =' + QuotedStr(DBInicio.Emp_Codigo) +
           ' AND OPE_CODIGO = ' +  QuotedStr(cboper.idretorno)
          ) = 'S' then
         wBaseProduto := wBaseProduto * (1 + sNF_ICMSVALOR);
        wBaseProduto := wBaseProduto - wDescontoIndividual;


       if  (wForaEstSN='N') then
       begin
         if not wVenda or (not MatchStr(wCST_CODIGO,['00','10','20','51','70','90'])) then
           wAliqFCP := 0 ;
         Nf_fcp:=   wBaseProduto / 100 * wAliqFCP ;
         wVTotFPC:=wVTotFPC+ Uteis.RoundTo(Nf_fcp ,-2);
       end
       else
       begin
         if not wVenda and (not MatchStr(wCST_CODIGO,['40','41','50','60','90'])) then
           wAliqFCP := 0 ;
         Nf_fcp:=   wBaseProduto / 100 * wAliqFCP ;
         wVTotFPC:=wVTotFPC+ Uteis.RoundTo(Nf_fcp ,-2);

       end;



       if wConsumidor and wVenda and (wForaEstSN='S') and DBInicio.Empresa.PMT_HABILITAR_DIFAL then  // SO INTERESTADUAL decreto EC 87(VENDA FORA DO ESTADO A CONSUMIDOR FINAL )
       begin

//           // não é exportação e origem = 1,2 ou 3(importados)
           if (wAliqIcmsImportado > 0) and ( (CdsItemPedidoPRD_ORIGEM.AsString = '1') or (CdsItemPedidoPRD_ORIGEM.AsString = '2') or (CdsItemPedidoPRD_ORIGEM.AsString = '3') ) then
              rAliqAux := wAliqIcmsImportado
           Else
              rAliqAux := wALiqICmsInterEstadual;

           wDifal := (wALiqICmsInterno - rAliqAux) ;      // percentual do difal
           if (cdsPedidosCLI_CONSFINAL.AsString = 'S') and (dbInicio.Empresa.UF <> cdsPedidosCLI_UF.AsString) then
           begin
            if IcmTipoCalculoDifal = 1 then // o cálculo ´´e com base por dentro
            begin
               // a := wBaseProduto - ((wBaseProduto / 100) *  rAliqAux);
               // b := a / (1 -(wALiqICmsInterno / 100));
               // wIcmDifal := ( b - wBaseProduto )  // wIcmDifal valor do difal

               a := wBaseIcmsIndividual - ((wBaseIcmsIndividual / 100) *  rAliqAux);
               b := a / (1 -(wALiqICmsInterno / 100));
               wIcmDifal := ((b * (wALiqICmsInterno / 100) )- sNF_ICMSVALOR); // wIcmDifal valor do difal
            end
            else // o cálculo é com base por fora
            begin
              wIcmDifal := wBaseProduto * (wDifal / 100) // wIcmDifal valor do difal
            end;
           end
           else
             wIcmDifal := ( wBaseProduto / 100 ) * wDifal;  // wIcmDifal valor do difal

           wPartDest := (( wIcmDifal / 100 ) * wPercentPartilha)  ;
           wPartOrig := ( wIcmDifal / 100 )* ( 100 - wPercentPartilha );

           if (cdsPedidosCLI_CONSFINAL.AsString = 'S') and (dbInicio.Empresa.UF <> cdsPedidosCLI_UF.AsString) then
           begin
            if IcmTipoCalculoDifal = 1 then
              BaseProdutoBanco := wBaseIcmsIndividual
            else
              BaseProdutoBanco := wBaseProduto
           end;

           blDifalA := ',NF_VALOR_BCICMS_DESTINO,  NF_ALIQ_ICMS_INTERNA_DESTINO, NF_ALIQ_ICMS_INTERESTADUAL, NF_PERC_PARTILHA_DESTINO, '+
                       ' NF_VALOR_PARTILHA_DESTINO, NF_VALOR_PARTILHA_ORIGEM ';

           blDifalB := ','+ FloatToSql( BaseProdutoBanco )+', '+
                            FloatToSql( wALiqICmsInterno )+', '+
                            FloatToSql( rAliqAux )+', '+
                            FloatToSql( wPercentPartilha )+', '+
                            FloatToSql( wPartDest )+', '+
                            FloatToSql( wPartOrig ) ;

           wVTotPartDest:=wVTotPartDest+ Uteis.RoundTo(wPartDest,-2);
           wVTotPartOrig:=wVTotPartOrig+ Uteis.RoundTo(wPartOrig,-2);
           wSalvaDadosFCPPartilha:=True;
       end ;

   end;
       if CdsItemPedidoOPE_CODIGO.AsString<> '' then
       begin
           OpenAux3('SELECT EMP_CSOSN FROM OPE0000 o '+
                  ' WHERE OPE_CODIGO = '+ QuotedStr (CdsItemPedidoOPE_CODIGO.AsString)+
               iif(DBInicio.empresa.wPMT_FATURA_MULTIEMPRESA,
                   ConcatSe( ' and ',dbInicio.ExclusivoSql('FISCAL',EmpCodigo)),
                   ConcatSe( ' and ',dbInicio.ExclusivoSql('FISCAL')))
                  );
          If (qAux3.FieldByName('EMP_CSOSN').IsNull) OR (qAux3.FieldByName('EMP_CSOSN').AsInteger = 0 ) then
            CSOSN_item :=  inttostr(GetCSOSN)
          else
            CSOSN_item := IntToStr(qAux3.FieldByName('EMP_CSOSN').AsInteger);
       end
       else
         CSOSN_item :=  inttostr(GetCSOSN);
   if MatchStr(CSOSN_item,['101','201']) then
     wBaseicms_simplesAproveit := wBaseicms_simplesAproveit + wValorProdIndividual + wFreteIndividual + wDespesaIndividual +wSeguroIndividual + wValorIPIIndividual - wDescontoIndividual;
    //ICMS cobrando anteriormente por ST

    // foi comentado para validar se há nota de entrada com st porque alguns clientes estão mandando zerados depois
    // a contabilidade corrigi // (fPMT_GerarTagICMSSubsPagaAnter <> 'N')
   if ( (MatchStr(CSOSN_item,['500']) or (wCST_CODIGO = '60'))) then
   begin

//     BuscaUmDadoSqlAsCurrency('SELECT round(enf_vlsubst/ ' +
  //                             iif(wCST_CODIGO = '60',
    //                              FloatToSQL(QuantidadeTotalDeItens),
      //                            'ENF_QTDE') +



    vICMSSubstituto :=
     // BuscaUmDadoSqlAsCurrency('SELECT round(enf_vlsubst/ENF_QTDE,4)           '+
     BuscaUmDadoSqlAsCurrency('SELECT round((enf_vlsubst/ENF_QTDE) * ' + FloatToSQL(QuantidadeTotalDeItens) +',4)'+
                              '  FROM ENF_IT01 it JOIN ENF0001 ef ON (ef.ENF_NOTANUMBER =  it.ENF_IT_NOTANUMBER '+
                              ' AND it.EMP_CODIGO = ef.EMP_CODIGO) '+
                              '  WHERE ENF_VLSUBST > 0 '+
                              '  AND prd_refer = '+QuotedStr(sItem)  +
                               iif(DBInicio.empresa.wPMT_FATURA_MULTIEMPRESA,
                                   ConcatSe( '  and it.', dbInicio.exclusivoSql( 'PRODUTOS' ,EmpCodigo) ),
                                   ConcatSe( '  and it.', dbInicio.exclusivoSql( 'PRODUTOS' ) )) +
                              '  ORDER BY enf_entrada DESC     ');
    vICMSSubstitutoTotal := vICMSSubstituto + vICMSSubstitutoTotal;
//    if vICMSSubstituto <= 0 then
//       raise Exception.Create('Ocorrerá  rejeição no item  '+sItem +
//        ', pois não tem registro de compra com ST. Registre a compra ou troque de CFOP ');
   end
   else
     vICMSSubstituto := 0;

//   if wValorCOFINS=0  then
//    cstPISCOFINS  :='08' ;
    If  (qOperFiscOPE_TRIBIPI.AsString = 'S') and ( trim(qOperFiscOPE_CST_IPI.AsString) <> '')  then
   begin
      cstIPI := trim(qOperFiscOPE_CST_IPI.AsString);
   end;
   if cstIPI = '' then
   begin
    if RadSaida.checked then
       cstIPI := '50'  //outras saidas
    else
      cstIPI := '49';// Outras Entradas  IPI

   end;
   // pegar todas as cfops dos itens para se ter todas as cfop usado na nota
     cfop_Nota.Add(iif(CdsItemPedidoOPE_CODIGO.AsString= '',qOperFiscOPE_CODIGO.asString,CdsItemPedidoOPE_CODIGO.asString));  //ope_codigo
   if qOperFiscOPE_REDU_ICM.AsFloat>0 then
    begin
      Cfop_per_deferido := qOperFiscOPE_REDU_ICM.AsFloat;
    end
    else
    if (qOperFiscOPE_INDICE_IMP.AsFloat > 0)  then
    begin

      cfop_indice_reducao := qOperFiscOPE_INDICE_IMP.AsFloat
    end;
    NTP_CFOP := iif(CdsItemPedidoOPE_NATUREZA.asString = '',qOperFiscOPE_NATUREZA.asString,CdsItemPedidoOPE_NATUREZA.asString) ;
    ope_codigo := iif(CdsItemPedidoOPE_CODIGO.AsString= '',qOperFiscOPE_CODIGO.asString,CdsItemPedidoOPE_CODIGO.asString);

    //icms desoneração
   if MatchStr(wCST_CODIGO,['20','30','40','41','50','70','90']) then
   begin


     AliquotaDeson := BuscaUmDadoSqlAsFloat('SELECT OPE_ICMSDESON FROM OPE0000 WHERE OPE_CODIGO = '+QuotedStr(ope_codigo  ));
     baseSimples := BuscaUmDadoSqlAsFloat('SELECT OPE_FORMULA_BASE_ICMS FROM OPE0000 WHERE OPE_CODIGO = '+QuotedStr(ope_codigo  )) = 1;
     // CSTs 30,40: Isenção
     // BASEICMS /(1-Aliquota )* aliquota
     if AliquotaDeson>0  then
     begin

       AliquotaDeson := AliquotaDeson /100;
      if wBaseIcmsIndividual = 0  then  // insento
        begin
          if baseSimples then
            icmsDeson :=  Uteis.RoundTo ( CdsItemPedidoPRF_PRECO.AsFloat * CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat * AliquotaDeson, -2)
          else
            icmsDeson :=  Uteis.RoundTo ( CdsItemPedidoPRF_PRECO.AsFloat * CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat/(1- AliquotaDeson)  * AliquotaDeson, -2)
        end
       else
         icmsDeson := Uteis.RoundTo ( wBaseIcmsIndividual/(1- AliquotaDeson)  * AliquotaDeson ,2);
       wTotalDesoneracao := wTotalDesoneracao + icmsDeson;
       motivDeson := BuscaUmDadoSqlAsString('SELECT OPE_MOTIVDESON FROM OPE0000 WHERE OPE_CODIGO = '+QuotedStr(ope_codigo  ));
       vTotalICMS_Deson := vTotalICMS_Deson +   icmsDeson;
       AliquotaDesonGeral :=  AliquotaDeson*100;

     end;
   end;

   if (qOperFiscOPE_TIPO_OPERACAO.AsString = 'D')
   and (BuscaUmDadoSqlAsString('SELECT OPV_DEVOLUCAO FROM OPV0000 WHERE OPV_CODIGO = ' +  CdsPedidosOPV_CODIGO.AsString ) = 'S') then
   begin
      ItensDaNotaDeDevolucao(sNF_IPIALIQ, sNF_ICMSVALOR, sNF_SUBTRIBASE, sNF_ALIQSUBTRIB, sNF_VLSUBST);
   end;



   sql:=
            ' Insert into NF_IT01 ( emp_codigo, USU_CODIGO, AMX_CODIGO_DESTINO, PRD_CODIGO, NF_IT_NOTANUMER, '+
            '                       PRD_REFER, PRD_DESCRI, PRD_COMPL_DESCRI, PED_CODIGO, NF_QTDE, NF_IFRETE, '+
            '                       NF_IDESP_ACES, NF_ISEGURO, NF_IDESCTO1, CEST_COD, IBPT_ALIQFED, IBPT_ALIQEST, '+
            '                       IBPT_VLAP, PRDL_REGISTRO, NF_MARGEM_PRODUTO, NF_CUSTO, NF_PRECO, NF_ALIQDOSIMPLES, '+
            '                       NF_CREDICMSDOSIMPLES, NF_ICMSBASE, NF_ICMSALIQ, NF_ICMSVALOR, NF_ICMSREDUCAOPERC,' +
            '                       CST_IPI, NF_IPIBASE, NF_IPIVALOR, IPI_CODIGO, NF_IPIALIQ, NF_IPI_POR_UNIDADE, NF_SUBTRIBASE, ' +
            '                       NF_ALIQSUBTRIB, NF_VLSUBST, NF_MVAPERC, NF_PMATPRIMA, PRF_REGISTRO, NF_COMISSAO, '+
            '                       NF_FLAG_ATUALIZA_ESTOQUE, NF_PRODUTO_AGREGADO, NF_HORA, OPE_CODIGO, NTP_CFOP, '+
            '                       STB_TRIBUTACAO, CST_PIS, NF_BASE_PIS, NF_ALIQPIS, NF_VLPIS, CST_COFINS, NF_BASE_COFINS, NF_ALIQCOFINS, '+
            '                       NF_VLCOFINS, PRG_REGISTRO, PRDCO_CODIGO_ORIGINAL, NF_LEI_TRANSPARENCIA '+blDifalA+
            '                       , NF_CSOSN, nf_totalitem, NF_ICMSSUBSTITUTO_ANT, nf_cbenef,NF_VALOR_FCP, NF_PERC_FCP, NF_VALOR_FCP_st, '+
            '                      NF_VALORICMSDESON, NF_MOTIVDESON ) '+
            ' values ( '+qStr(EmpCodigo)+', '+ //emp_codigo,
            '          '+qStr(dbInicio.Usuario.Codigo)+', '+ //USU_CODIGO,
            '          '+qStr(CdsItemPedidoAMX_CODIGO_DESTINO.AsString)+', '+ //AMX_CODIGO_DESTINO,
            '          '+qStr(CdsItemPedidoPRD_PRODUTO.AsString)+', '+ //PRD_CODIGO,
            '          '+qStr( sNota )+', '+ //NF_IT_NOTANUMER, '+
            '          '+qStr( sItem )+', '+  //PRD_REFER,
            '          '+qStr( CdsItemPedidoPRF_PRDDESCRI.AsString )+', '+ //PRD_DESCRI,
            '          '+qstr( sCompl )+', '+ //PRD_COMPL_DESCRI,
            '          '+qStr( CdsPedidosPed_Codigo.asstring )+', '+ //PED_CODIGO,
            '          '+FloatToSql(iif(CdsItemPedidoPRF_PRODUTO_SEMVALOR.AsString <> 'S',CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat, CdsItemPedidoPRF_QTDE.AsFloat) )+', '+  //NF_QTDE,
            '          '+FloatToSql( wFreteIndividual  )+', '+ //NF_IFRETE, '+
            '          '+FloatToSql( wDespesaIndividual  )+', '+ //NF_IDESP_ACES,
            '          '+FloatToSql( wSeguroIndividual  )+', '+ //NF_ISEGURO,
            '          '+FloatToSql( wDescontoIndividual  )+', '+ //NF_IDESCTO1,
            '          '+qStr( wCest )+', '+ //CEST_COD,
            '          '+FloatToSql( wIbptAliqFed )+', '+ //IBPT_ALIQFED,
            '          '+FloatToSql( wIbptAliqEst )+', '+ //IBPT_ALIQEST, '+
            '          '+FloatToSql( wValorAproxTributosItem )+', '+  //IBPT_VLAP,
            '          '+iif(CdsItemPedidoPRDL_REGISTRO.IsNull,'null',CdsItemPedidoPRDL_REGISTRO.AsString) +', '+ //PRDL_REGISTRO,
            '          '+FloatToSql( CdsItemPedidoPRF_MARGEM_PRODUTO.AsFloat )+', '+ //NF_MARGEM_PRODUTO,
            '          '+FloatToSql( rCusto )+', '+ //NF_CUSTO,
            '          '+FloatToSql(iif(CdsItemPedidoPRF_PRODUTO_SEMVALOR.AsString <> 'S',CdsItemPedidoPRF_PRECO.AsFloat,0) )+', '+ //NF_PRECO,
            '          '+FloatToSql( fALIQ_CREDITO)+', '+ //NF_ALIQDOSIMPLES, '+
            '          '+FloatToSql( wValorCredSimples )+', '+ //NF_CREDICMSDOSIMPLES,
            '          '+FloatToSql( Uteis.RoundTo( wBaseIcmsIndividual,-2)  )+', '+ //NF_ICMSBASE,
            '          '+FloatToSql( Uteis.RoundTo( wIcmsAliq,-2)  )+', '+ //NF_ICMSALIQ,
            '          '+FloatToSql( Uteis.RoundTo( sNF_ICMSVALOR, -2 ) )+', '+ //NF_ICMSVALOR,
            '          '+FloatToSql( sPercReduz )+', '+ //NF_ICMSREDUCAOPERC,' +
            '          '+QuotedStr(cstIPI)+','+  //CST_IPI
            '          '+FloatToSql( Uteis.RoundTo( wBaseIPIIndividual, -2) )+', '+ //NF_IPIBASE,
            '          '+FloatToSql( Uteis.RoundTo( wValorIPIIndividual, -2) )+', '+ //NF_IPIVALOR,
            '          '+qStr( CdsItemPedidoIPI_CODIGO.AsString )+', '+ //IPI_CODIGO,
            '          '+FloatToSql( sNF_IPIALIQ )+', '+ //NF_IPIALIQ,
            '          '+qStr( sNF_IPI_POR_UNIDADE )+', '+ //NF_IPI_POR_UNIDADE,
            '          '+sNF_SUBTRIBASE+', '+ //NF_SUBTRIBASE, ' +
            '          '+sNF_ALIQSUBTRIB+', '+ //NF_ALIQSUBTRIB,
            '          '+sNF_VLSUBST+', '+ //NF_VLSUBST,
            '          '+sNF_MVAPERC+', '+ //NF_MVAPERC,
            '          '+FloatToSql( wPrecoMatPrima )+', '+ //NF_PMATPRIMA,
            '          '+CdsItemPedidoPRF_REGISTRO.AsString+', '+ //PRF_REGISTRO,
            '          '+FloatToSql( CdsItemPedidoPRF_ITEMCOMIS.AsFloat )+', '+ //NF_COMISSAO, '+
            '          '+qStr( CdsItemPedidoPRF_FLAG_ATUALIZA_ESTOQUE.AsString )+', '+ //NF_FLAG_ATUALIZA_ESTOQUE,
            '          '+qStr( CdsItemPedidoPRF_PRODUTO_AGREGADO.AsString )+', ' + //NF_PRODUTO_AGREGADO,
            '          '+TimeToSql( time )+', '+ //NF_HORA,
            '          '+qStr(ope_codigo ) +', '+ //OPE_CODIGO,
            '          '+ NTP_CFOP +', '+ //NTP_CFOP, '+
            '          '+qStr( wCST_CODIGO )+', '+  //STB_TRIBUTACAO,
            '          '+QuotedStr(qOperFiscOPE_CST_PISCOFINS.AsString)+ ','+    //CST_PIS
//            '          '+QuotedStr(cstPISCOFINS)+ ','+    //CST_PIS
            '          '+FloatToSql( Uteis.RoundTo( wBasePIS, -2))+', '+ //NF_BASE_PIS,
            '          '+FloatToSql( wAliquotaPIS )+', '+ //NF_ALIQPIS,
            '          '+IIF(MatchStr(cstPISCOFINS,['99','98','49']),'0',FloatToSql( Uteis.RoundTo( wValorPIS,-2 )))+', '+ //NF_VLPIS,
            '          '+QuotedStr(qOperFiscOPE_CST_PISCOFINS.AsString)+ ','+  //CST_COFINS
//            '          '+QuotedStr(cstPISCOFINS)+ ','+  //CST_COFINS
            '          '+FloatToSql( Uteis.RoundTo( wBaseCOFINS, -2))+', '+ //NF_BASE_COFINS,
            '          '+FloatToSql( wAliquotaCOFINS )+', '+ //NF_ALIQCOFINS, '+
            '          '+IIF(MatchStr(cstPISCOFINS,['99','98','49']),'0',FloatToSql( Uteis.RoundTo( wValorCOFINS, -2)))+', '+ //NF_VLCOFINS,
            '          '+ IIF( CdsItemPedidoPRG_REGISTRO.AsInteger=0,'NULL',IntToStr(CdsItemPedidoPRG_REGISTRO.AsInteger)) +', '+ //PRG_REGISTRO,
            '          '+qStr( CdsItemPedidoPRDCO_CODIGO_ORIGINAL.AsString )+', '+ //PRDCO_CODIGO_ORIGINAL,
            '          '+qStr( iif( wConsumidor and wVenda, 'S','N' ) )+ //NF_LEI_TRANSPARENCIA
            '          '+blDifalB+', '+CSOSN_item+    ','+
            '          '+FloatToSql( CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat*CdsItemPedidoPRF_PRECO.AsFloat) +     ','+ //nf_totalitem
            '          '+FloatToSql(vICMSSubstituto)+','+
            '          '+QuotedStr(CdsItemPedidoprd_cbenef.AsString) +','+
            '          '+FloatToSQL( Nf_fcp)+ ','+
            '          '+FloatToSql(wAliqFCP )+','+
            '          '+FloatToSql( nf_fcpst )+ ','+
            '          '+FloatToSql( icmsDeson )+ ','+
            '          '+ iif (motivDeson='','null',motivDeson)+
                   ' )';

  ExecSql(sql ,false);
  if (CdsItemPedidoPRDL_REGISTRO.AsInteger > 0) AND (DBInicio.GetParametroSistema('PMT_ATUALIZA_LOTE') = 'F')  then
  begin
    saldo := DBInicio.BuscaUmDadoSqlAsFloat('SELECT PRDL_SALDO FROM PRD_LOTE WHERE PRDL_REGISTRO = ' + CdsItemPedidoPRDL_REGISTRO.AsString);
    movimentaLote(CdsItemPedidoPRF_REGISTRO.AsInteger, CdsItemPedidoPRDL_REGISTRO.AsInteger, screen.ActiveForm.Name, 'S', CdsItemPedidoPRF_QTDE.AsFloat, Saldo);
  end;

end;

procedure TFormFatPedido.GetPercentualPartilhaIcm;
begin
     wPercentPartilha:=BuscaUmDadoSqlAsFloat( ' select a.pPartilha '+
                                              ' From PARTILHA_ICM_FCP a '+
                                              ' Where a.ano = ( Select Max(b.ano) '+
                                              '                 From   PARTILHA_ICM_FCP b '+
                                              '                 where  b.ano<='+FormatDateTime('YYYY', RxDataEmissao.Date)+')' ) ;
end;

procedure TFormFatPedido.GravaNotaFiscal;
var wAuxTrib: currency ;
    sTipoFrete, vAviso, Municipal, Estadual, Federal: string;
    total: double;
    it : tBookMark ;
    valorDiferido, basereduzida : double;
    BaseICMS_REAL_SEM_REDUCAO : Double;
begin
     rRateioFreteDiferenca := 0;
     rRateioDespesaDiferenca := 0;
     rRateioSeguroDiferenca := 0;
     rRateioDescontoDiferenca := 0;
     wValorProd := 0;
     wValorProdFaturar := 0;
     GetPercentualPartilhaIcm;
     wSalvaDadosFCPPartilha:=False;
     wDescPISCofins := 0 ;
     //////////////////////////////////////
     GravaItensNota;     //////////////////
     //////////////////////////////////////
     BaseICMS_REAL_SEM_REDUCAO :=  Uteis.RoundTo( wTotalBaseIcms  ,-2);
     wTotalBaseIcms := Uteis.RoundTo( wTotalBaseIcmsIndividual , -2 );
     wTotalVlBaseIcms := Uteis.RoundTo( wTotalBaseVlIcmsIndividual , -2 );

     if cbTipoFrete.itemindex=5 then
        sTipoFrete:='9'
     Else
        sTipoFrete:=InttoStr(cbTipoFrete.itemindex);
     CurrNumNota.Text := StrZero(CurrNumNota.Text, 6);

     ExecSql( 'UPDATE PED0000 SET TRP_CODIGO = ' +qStr(cbTransportadora.idretorno) +',PED_FRETE = ' +qStr(sTipoFrete) +
              '  WHERE PED_CODIGO = ' + qStr(CdsPedidosPED_CODIGO.AsString) +
              ' and emp_codigo = '+QuotedStr(EmpCodigoOriginal)  ,false
              );

     CdsNotaFiscalNF_NOTANUMBER.AsString := StrZero(CurrNumNota.Text,6);
     if qOperFiscOPE_ESCRITA.AsString = 'S' then
        if (fTipoSeqNfe = 'S') then // sincroniza num nfe / fatura
        begin
           if not chkNotaConsumidor.Checked then
             CdsNotaFiscalNF_NUM_NFE.AsString := StrZero(CurrNumNota.Text,6);
             wSequenciaNfe := CdsNotaFiscalNF_NOTANUMBER.asInteger;
        end;

     //Dados de Exportação

     CdsNotaFiscalNF_EXPORT_UF_EMBARQUE.AsString := CbExportUF.Text;
     CdsNotaFiscalNF_EXPORT_LOCAL_EMBARQUE.AsString := ExportLocalEmbarque.Text;
     CdsNotaFiscalNF_EMISSAO.AsDateTime := RxDataEmissao.Date;
     CdsNotaFiscalNF_SAIDA.AsDateTime := RxDataSaida.Date;
     CdsNotaFiscalOPE_CODIGO.AsString := cbOper.IdRetorno;
     CdsNotaFiscalFPG_REGISTRO.AsInteger := StrToIntDef(edFPagto.idRetorno,0);
     CdsNotaFiscalNF_INTEGRADO.AsString := iif(Integrar,'S','N');
     CdsNotaFiscalNF_TIPONOTA.AsString := TipoFaturamento;
     //finalidade
     if CdsNotaFiscalnf_finalidade.Index = -1 then
     begin
       if cbOper.IdRetorno <> '' then
       begin
         OpenAux2('SELECT OPE_TIPO_OPERACAO FROM OPE0000 WHERE OPE_CODIGO  = ' + QuotedStr(cbOper.IdRetorno)+ ' AND  OPE_NATUREZA =  '+ QuotedStr(cbOper.CDS.fieldbyname('ope_natureza').AsString) );
         if qaux2.FieldByName('OPE_TIPO_OPERACAO').AsString = 'D' then
           CdsNotaFiscalnf_finalidade.AsInteger := 4
         else
           CdsNotaFiscalnf_finalidade.AsInteger := 1;
       end;
     END;


     //TIPO DE FRETE PARA SPED
     CdsNotaFiscalNF_TIPO_FRETE.AsString := sTipoFrete;
     CdsNotaFiscalOPE_NATUREZA.AsString := cbOper.CDS.fieldbyname('ope_natureza').AsString;
     CdsNotaFiscalOPE_AGRUPADO.AsString := qOperFiscOPE_AGRUPADO.AsString;

     CdsNotaFiscalOPE_SEMVLCOM.AsString :=  'S';
     CdsNotaFiscalNF_VENDA_FATURADA.AsString := 'N';
     CdsItemPedido.First;
		 while not CdsItemPedido.Eof do
     begin
       BuscaOperacaoNovo (iif(CdsItemPedidoCFOP_Codigo.AsString = '', cbOper.IdRetorno, CdsItemPedidoCFOP_Codigo.AsString ));
       if qOperFiscOPE_SEMVLCOM.AsString = 'N' then
       begin
         CdsNotaFiscalOPE_SEMVLCOM.AsString := 'N';
         CdsNotaFiscalNF_VENDA_FATURADA.AsString := 'S';
       end;
       CdsItemPedido.Next;
     end;



     // CdsNotaFiscalOPE_SEMVLCOM.AsString := qOperFiscOPE_SEMVLCOM.AsString;
     // marca se Fatura é de venda: se gerou fatura é
//     if qOperFiscOPE_SEMVLCOM.AsString = 'S' then
//        CdsNotaFiscalNF_VENDA_FATURADA.AsString := 'N'
//     else
//        CdsNotaFiscalNF_VENDA_FATURADA.AsString := 'S';
     CdsNotaFiscalPED_CODIGO.AsString := cdsPedidosPed_codigo.asstring ;
     CdsNotaFiscalREP_CODIGO.AsString := CdsPedidosREP_CODIGO.AsString;
     CdsNotaFiscalNF_ENTR_SAID.AsString := IIF(RadSaida.checked , 'S', 'E');
     CdsNotaFiscalNF_IMPRESS.AsString := 'N';
     CdsNotaFiscalCLI_CODIGO.AsString := CdsPedidosCLI_CODIGO.AsString;
     CdsNotaFiscalNF_VL_DESCTO.AsFloat := CdsPedidosPED_DESCTOVL.AsFloat;
     CdsNotaFiscalNF_VL_DESCTO_FAT.AsFloat := wDescPISCofins   ;//desconto PIS E COFINS + VALOR ANTECIPADO (VAI GRAVAR MAIS ADIANTE)

     if qOperFiscOPE_ESCRITA.AsString = 'S' then
        CdsNotaFiscalNF_INTERNO.AsString := 'N'  //Atualizar o livro fiscal porque nao foi gerado recibo
     else
        CdsNotaFiscalNF_INTERNO.AsString := 'S'; //Nao atualiza o livro fiscal porque foi gerado recibo

     CdsNotaFiscalNF_CANCELADA.AsString := 'N';
     CdsNotaFiscalPCL_CODIGO.AsString := CdsPedidosPCL_CODIGO.AsString;
     CdsNotaFiscalNF_AGRUPADO.AsString := 'N';
     CdsNotaFiscalNF_TOT_PROD.AsFloat := Uteis.RoundTo( wValorProd , -2 );
     total := wValorProd +
              wTotalIPITotalNF +
              RateioFrete + // CdsNotaFiscalNF_VLFRETE.AsFloat +
              CdsNotaFiscalNF_VLSEGURO.AsFloat +
              CdsNotaFiscalNF_DESP_ACES.AsFloat +
              wTotalValorSubs - CdsPedidosPED_DESCTOVL.AsFloat;
     if BuscaUmDadoSqlAsString('SELECT OPE_ICMS_DESONERADO_DIMINUI FROM OPE0000 WHERE OPE_CODIGO = ' + QuotedStr(strzero(cbOper.IdRetorno, 3)  )) = 'S' then
        total := total - wTotalDesoneracao;
     CdsNotaFiscalNF_TOT_NOTA.AsFloat := Uteis.RoundTo( total , -2 );

     if qOperFiscOPE_ICMS_TOTALNOTA.AsString = 'S' then
        CdsNotaFiscalNF_TOT_NOTA.AsFloat := Uteis.RoundTo( CdsNotaFiscalNF_TOT_NOTA.AsFloat + wTotalVlBaseIcms , -2 );
     CdsNotaFiscalNF_ALIQ_ICMS.AsFloat := Uteis.RoundTo( wALiqICmsCliente , -2 );
     //zera valores de base e valor do icms que foram usados para calculo da substituição tributario caso necessario
     if (fOPT_SIMPLES = 'S') and (GetCSOSN <> 900) and (femp_crt = '1') then
     begin
          CdsNotaFiscalNF_BASEICMS.AsFloat := 0;
          CdsNotaFiscalNF_VL_ICMS.AsFloat := 0;
          CdsNotaFiscalNF_ALIQ_ICMS.AsFloat := 0;
     end
     else
     begin
          CdsNotaFiscalNF_BASEICMS.AsFloat := RoundTo ( wTotalBaseIcms , -2 );
          CdsNotaFiscalNF_VL_ICMS.AsFloat := Uteis.RoundTo ( wTotalVlBaseIcms , -2 );
     end;
     CdsNotaFiscalNF_VL_IPI.AsFloat := Uteis.RoundTo ( wTotalIPI , -2 );
     CdsNotaFiscalNF_VALORTOT_PIS.AsFloat := Uteis.RoundTo ( wValorTotalPIS , -2 );
     CdsNotaFiscalNF_VALORTOT_COFINS.AsFloat := Uteis.RoundTo ( wValorTotalCOFINS , -2 );
     CdsNotaFiscalNF_TotalICMS_Deson.AsFloat := uteis.RoundTo(vTotalICMS_Deson,-2) ;
     if vTotalICMS_Deson>0 then
       CdsNotaFiscalNF_OBSERVACAO.AsString :=  CdsNotaFiscalNF_OBSERVACAO.AsString +
       ' Abatimento de '+FloatToStr( uteis.RoundTo( AliquotaDesonGeral,-2))+ '% de icms referente isenção para zona franca ou area de livre comércio valor de R$ '+
       FloatToStr( uteis.RoundTo(vTotalICMS_Deson))+  ' registro cliente suframa '+qCLientesCLI_SUFRAMA.AsString+ '. ';
     if (vTotalICMS_Deson= 0) AND (qCLientesCLI_SUFRAMA.AsString <> '')  then
        CdsNotaFiscalNF_OBSERVACAO.AsString :=  CdsNotaFiscalNF_OBSERVACAO.AsString + '- Número da inscrição no Suframa: ' +qCLientesCLI_SUFRAMA.AsString+ '. ';

     // Icms substituicao trib.
     CdsNotaFiscalNF_VLBASESUBTRIB.AsFloat := Uteis.RoundTo ( wTotalBaseValorSubs , -2 );
     CdsNotaFiscalNF_VL_SUBTRIB.AsFloat := Uteis.RoundTo ( wTotalValorSubs , -2 );
		 //Incluir frete+seguro+desp.acessorias na base do IPI
		 CdsNotaFiscalNF_BASE_IPI.AsFloat := Uteis.RoundTo ( wBaseIPI , -2 );
     if (qOperFiscOPE_DESPIMPORIPI.Value = 'S') then
        CdsNotaFiscalNF_BASE_IPI.AsFloat := Uteis.RoundTo ( CdsNotaFiscalNF_BASE_IPI.AsFloat + cdsNotaFiscalNF_DESP_IMPORT.AsFloat , -2 );
     if (Cfop_per_deferido >0) then    //qOperFiscOPE_REDU_ICM.AsFloat
     Begin
        valorDiferido :=Uteis.RoundTo ( (
         (wTotalBaseIcmsIndividual* wALiqICmsCliente/100)-
         (Uteis.RoundTo(((100-Cfop_per_deferido )* wALiqICmsCliente/100),-2)* wTotalBaseIcmsIndividual/100)),-2);

         vaviso := 'ICMS diferido em '+FloatToSql( Cfop_per_deferido )+'%, no montante de R$ '+FloatToSql(valorDiferido) +
         ',' + qOperFiscOPE_ARTIGO_DIFERIMENTO.AsString;
         //  ', conforme art. 28 do RICMS/2017.'
     end
     else
     if ( cfop_indice_reducao > 0)  then     //qOperFiscOPE_INDICE_IMP.AsFloat
     begin
       basereduzida :=  wTotalBaseIcmsIndividual;


       vaviso :=  'Redução da base de ICMS em '+FloatToSql( cfop_indice_reducao )+'%, no montante de R$ '+FloatToSql( BaseICMS_REAL_SEM_REDUCAO- basereduzida );

     end;
//     else
//       vaviso := qOperFiscOPE_AVISOLEGAL.AsString;
     if cfop_Nota.CommaText <> '' then
     BEGIN
         OpenAux2('SELECT ope_natureza, OPE_AVISOLEGAL  FROM OPE0000 '+
                  ' WHERE OPE_CODIGO IN ( '+cfop_Nota.CommaText+') '+
                  ' AND OPE_AVISOLEGAL <> '''' ' );
         if not qAux2.IsEmpty then
         begin
           while not qAux2.eof do
           begin
             vAviso := vAviso+ +iif(vAviso<>'','- ','')+ qAux2.FieldByName('ope_natureza').AsString +' - ' +
                       qAux2.FieldByName('OPE_AVISOLEGAL').AsString;
             qAux2.Next;
           end;
         end;
     END;


     If qOperFiscOPE_ESCRITA.AsString = 'N'  then
          CdsNotaFiscalNF_STATUS_NFE.AsString := 'O';

     CdsNotaFiscalNF_OBS_OPER.AsString := vaviso;
     CdsNotaFiscalNF_OBS_OPER_AVISO2.AsString := qOperFiscOPE_AVISOLEGAL2.AsString;
     CdsNotaFiscalNF_OBS_PEDI.AsString := copy(CdsPedidosPED_OBSERVACAO_NOTA.AsString, 1, 60);
		 CdsNotaFiscalEMP_CODIGO.AsString := EmpCodigo;
     CdsNotaFiscalAMX_CODIGO.AsString := CdsPedidosAMX_CODIGO.AsString;
     CdsNotaFiscalNF_TP_DESCTO.AsString := CdsPedidosPED_TPDESCTO.AsString;
		 CdsNotaFiscalNF_PC_DESCTO1.AsFloat := CdsPedidosPED_DESCTOPC1.AsFloat;
		 CdsNotaFiscalNF_PC_DESCTO2.AsFloat := CdsPedidosPED_DESCTOPC2.AsFloat;
     CdsNotaFiscalOPV_CODIGO.AsInteger := CdsPedidosOPV_CODIGO.AsInteger;
     CdsNotaFiscalOPE_REDU_ICM.AsFloat := Uteis.RoundTo ( qOperFiscOPE_REDU_ICM.AsFloat , -2 );


     //formas de pagamento
     case CbxTipoDoc.ItemIndex of
       2:  CdsNotaFiscalNF_FORMAPAGTO.AsInteger := 15; //boleto
       4:  CdsNotaFiscalNF_FORMAPAGTO.AsInteger := 2; //CHEQUE
       5:  CdsNotaFiscalNF_FORMAPAGTO.AsInteger := 1; //DINEHIRO

     else
       CdsNotaFiscalNF_FORMAPAGTO.AsInteger := 99; // outros
     end;
    if wVTotFPC_st>0 then
    begin
       CdsNotaFiscalNF_VALOR_TOTAL_FCPST.asCurrency := Uteis.RoundTo(wVTotFPC_st,-2);

    end;
     if wVTotFPC>0 then
       CdsNotaFiscalNF_VALOR_TOTAL_FCP.asCurrency := Uteis.RoundTo(wVTotFPC,-2);
     if wSalvaDadosFCPPartilha then
     begin

          CdsNotaFiscalNF_VALOR_TOTAL_PARTILHA_DEST.asCurrency := Uteis.RoundTo(wVTotPartDest,-2);
          CdsNotaFiscalNF_VALOR_TOTAL_PARTILHA_ORIG.asCurrency := Uteis.RoundTo(wVTotPartOrig,-2);
        // simples (não tem GNRE UF remetente)
        if (fOPT_SIMPLES = 'N') and DBInicio.Empresa.PMT_HABILITAR_DIFAL then
              DBMemoObs.Lines.Add( '** EC 87/2015 DIFAL '+
                                   'valor GNRE UF destinatário '+FormatFloat('#0.00',wPercentPartilha)+'% R$ '+FormatFloat( '####,##0.00',wVTotPartDest)+', '+
                                   'valor GNRE UF remetente '+FormatFloat('#0.00',100-wPercentPartilha)+'% R$ '+FormatFloat( '####,##0.00',wVTotPartOrig)+', '+
                                   'valor FCP R$ '+FormatFloat('####,##0.00',wVTotFPC)+' **' );


     end;
//   if not NotaParcial then
       InformacoesCredito;
//       if qOperFiscOPE_SEMVLCOM.AsString = 'N' then
         if CdsNotaFiscalOPE_SEMVLCOM.AsString = 'N' then
           DBMemoObs.Lines.Add('Forma de Pagamento : ' + edFPagto.Text+'.');
     // msg venda interna para estado parana empr <> simples (para empresa simples a msg é mostrada montada procedure TFormFatPedido.)
//     if (qOperFiscOPE_SEMVLCOM.AsString = 'N') and (CdsPedidosCLI_UF.AsString='PR') and (fOPT_SIMPLES <> 'S') and (fUF='PR') then
       if (CdsNotaFiscalOPE_SEMVLCOM.AsString = 'N') and (CdsPedidosCLI_UF.AsString='PR') and (fOPT_SIMPLES <> 'S') and (fUF='PR') then
        if dbinicio.GetParametroSistema('pmt_exibirmesimpostosparana')='S' then
           DBMemoObs.Lines.Add('** ICMS R$ '+ FormatFloat( '##0.00',  wTotalVlBaseIcms )+
                                           ' IPI R$ '+ FormatFloat( '##0.00',  wTotalIPI )+
                                           ' ISS R$ '+ FormatFloat( '##0.00',  0.00)+
                                           '(Cnf.Lei Estadual:17127/2012-PR) **');

     If (wTotalIPI > 0  ) and (fOPT_SIMPLES = 'S') and (CdsNotaFiscalnf_finalidade.AsInteger = 4)  then
     begin
         DBMemoObs.Lines.Add('O valor total do IPI foi agregado no valor total da nota. ');


     end;
     //IBPT
     CdsNotaFiscalIBPT_VLAPROXTRIBUTOS.AsCurrency := wValorAproxTributosTot;
     if (wConsumidor or (DBInicio.GetParametroSistema('PMT_VALOR_APROX_TRIB')='T')) and wVenda then // se (consumidor ou mostra ibpt para todos) e venda então
     begin
         wAuxTrib := (wValorAproxTributosTot / CdsNotaFiscalNF_TOT_PROD.asCurrency) * 100;
         if fwPMT_TRIB_NF then
           DBMemoObs.Lines.Add(' VLR.AP.TRIBUTOS R$ '+FormatFloat( '##0.00',  wValorAproxTributosTot )+' ('+FormatFloat( '##0.00',wAuxTrib)+'% )')
         else
         begin
            Municipal := ' R$ 0,00 Municipal (0%) ';
            Estadual  := ' R$: ' + FormatFloat('##0.00', ( (wValorAproxTributosTot / 100)  * wIbptAliqEst) ) + ' Estadual (' + FormatFloat('##0.00', wIbptAliqEst ) + '%), ';
            Federal   := ' R$: ' + FormatFloat('##0.00', ( (wValorAproxTributosTot / 100)  * wIbptAliqFed) ) + ' Federal (' + FormatFloat('##0.00', wIbptAliqFed ) + '%), ';
            DBMemoObs.Lines.Add('Trib. aprox. ' + Federal + Estadual + Municipal + ' FONTE: IBPT');

           // DBMemoObs.Lines.Add(' VLR.AP.TRIBUTOS R$ '+FormatFloat( '##0.00',  wValorAproxTributosTot )+' ('+FormatFloat( '##0.00',wAuxTrib)+'% ) FONTE: IBPT');
         end;
     END;
     if vICMSSubstitutoTotal > 0  then
      DBMemoObs.Lines.Add('Total ICMS ST pago anteriormente R$ '+ FormatFloat( '###,##0.00', vICMSSubstitutoTotal) );
     CdsNotaFiscalNF_TIPODOC.AsString := IIF(CbxTipoDoc.ItemIndex = 0, '', IIF(CbxTipoDoc.ItemIndex = 1, 'DP', IIF(CbxTipoDoc.ItemIndex = 2, 'BL', IIF(CbxTipoDoc.ItemIndex = 3, 'RC', IIF(CbxTipoDoc.ItemIndex = 4, 'CH', IIF(CbxTipoDoc.ItemIndex = 5, 'DN', IIF(CbxTipoDoc.ItemIndex = 6, 'OU', 'CC')))))));
     CdsNotaFiscalNF_REGISTRO.asInteger := ChavePrimariaNF;

     if CdsPedidosSITEXP.AsString = 'LIB' then
        CdsNotaFiscalNF_SITEXPEDICAO.AsString := 'L'
     else
       CdsNotaFiscalNF_SITEXPEDICAO.AsString := 'F';



   if (qOperFiscOPE_TIPO_OPERACAO.AsString = 'D')
   and (BuscaUmDadoSqlAsString('SELECT OPV_DEVOLUCAO FROM OPV0000 WHERE OPV_CODIGO = ' +  CdsPedidosOPV_CODIGO.AsString ) = 'S') then
   begin
      NotaDeDevolucao;
   end;

   CdsNotaFiscalNF_VLFRETE.AsFloat := RateioFrete;

   CdsNotaFiscal.Post;
   CdsNotaFiscal.ApplyUpdates(0);
end;


    procedure TFormFatPedido.ObtemTotalNota;
    begin
         CdsItemPedido.First;
         wValorProdGeral := 0;
         QuantidadeTotalDeItens := 0;
         while not CdsItemPedido.Eof do
         begin
             if CdsItemPedidoPRF_PRODUTO_AGREGADO.AsString = 'N' then
             begin
                if (CdsItemPedido.FieldByName('STB_TRIBUTACAO').AsString = '60') then
                  QuantidadeTotalDeItens := QuantidadeTotalDeItens + CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat;
                wValorProdGeral := Uteis.RoundTo ( wValorProdGeral + (CdsItemPedidoPRF_PRECO.AsFloat * CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat),-2) ;
             end;

              CdsItemPedido.Next;
         end;
    end;
///


function  TFormFatPedido.RateioFrete: double;
var
  rt, wRateioFrete, valorTotal, valorTotalProd: double;
begin

  valorTotalProd := 0;

  CdsItemPedido.First;
  while not CdsItemPedido.Eof do // acumuladores
  begin
    valorTotalProd := valorTotalProd + (CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat * CdsItemPedidoPRF_PRECO.AsFloat);
    CdsItemPedido.Next;
  end;
  if chkFreteProporcional.Checked then
    valorTotal := CdsPedidosPED_VLTOTAL_LIQ.AsFloat
  else
    valorTotal := valorTotalProd;



  CdsItemPedido.First;
  rt := 0;
  wRateioFrete := 0;
  while not CdsItemPedido.Eof do // acumuladores
  begin
    rt := (Uteis.RoundTo(CdsItemPedidoPRF_PRECO.AsFloat * CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat, -2)/ valorTotal {CdsPedidosPED_VLTOTAL_LIQ.AsFloat}  ) ;
    if (CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat > 0) then // Frete
    begin
      wRateioFrete := wRateioFrete + Uteis.RoundTo(rt * cdsNotaFiscalNF_VLFRETE.AsFloat,-2);
    end;

    CdsItemPedido.Next;

  end;
  result := wRateioFrete;
end;

procedure TFormFatPedido.RateioFrete_despesas;
    begin
           rRateioFreteDiferenca := 0;
           rRateioDespesaDiferenca := 0;
           rRateioSeguroDiferenca := 0;
           rRateioDescontoDiferenca := 0;
           rRateioDifalDiferenca := 0;
           CdsItemPedido.First;
           while not CdsItemPedido.Eof do // acumuladores
           begin
                if (CdsItemPedido.FieldByName('PRF_REGISTRO_VINCULADO').IsNull) or
                (CdsItemPedido.FieldByName('PRF_REGISTRO_VINCULADO').AsInteger = 0 ) then // não é itens do kit
                  if CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat>0 then
                  begin

                      rt1 := (Uteis.RoundTo(CdsItemPedidoPRF_PRECO.AsFloat * CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat, -2)/ wValorProdGeral) ;


                      if (cdsNotaFiscalNF_VLFRETE.AsFloat > 0) then // Frete
                      begin
                           rRateioTmp := Uteis.RoundTo(rt1 * cdsNotaFiscalNF_VLFRETE.AsFloat,-2);
                           rRateioFreteDiferenca := rRateioFreteDiferenca + rRateioTmp;
                      end;
                      if (cdsNotaFiscalNF_DESP_ACES.AsFloat > 0) then  //Despesas
                      begin
                           rRateioTmp := Uteis.RoundTo(rt1 * cdsNotaFiscalNF_DESP_ACES.AsFloat  ,-2);
                           rRateioDespesaDiferenca := rRateioDespesaDiferenca + rRateioTmp;
                      end;
                      if (CdsNotaFiscalNF_VLDIFAL.AsFloat > 0) then  //Despesas
                      begin
                           rRateioTmp := Uteis.RoundTo(rt1 * (CdsNotaFiscalNF_VLDIFAL.AsFloat)  ,-2);
                           rRateioDespesaDiferenca  := rRateioDespesaDiferenca + rRateioTmp;
                           rRateioDifalDiferenca  := rRateioDifalDiferenca + rRateioTmp;
                      end;

                      if (cdsNotaFiscalNF_VLSEGURO.asfloat > 0) then //Seguro
                      begin
                           rRateioTmp := Uteis.RoundTo(rt1 * cdsNotaFiscalNF_VLSEGURO.asfloat,-2);
                           rRateioSeguroDiferenca := rRateioSeguroDiferenca + rRateioTmp;
                      end;
                      if (CdsPedidosPED_DESCTOVL.AsFloat > 0) then //Desconto
                      begin
                           rRateioTmp := Uteis.RoundTo(rt1 * CdsPedidosPED_DESCTOVL.AsFloat,-2);
                           rRateioDescontoDiferenca := rRateioDescontoDiferenca + rRateioTmp;
                      end;
                  end;
                CdsItemPedido.Next;
           end;
           //Guarda diferenças do rateio
           if (DBEditFrete.Field.AsFloat > 0) then //Frete
              rRateioFreteDiferenca := Uteis.RoundTo( DBEditFrete.Field.AsFloat - rRateioFreteDiferenca, -2 );
           if (DBEditDesp.Field.AsFloat > 0) OR (rRateioDifalDiferenca > 0)  then //Despesas
              rRateioDespesaDiferenca := Uteis.RoundTo( (DBEditDesp.Field.AsFloat + rRateioDifalDiferenca ) - rRateioDespesaDiferenca, -2 );
           if (DBEditSeguro.Field.AsFloat > 0) then //Seguro
              rRateioSeguroDiferenca := Uteis.RoundTo( DBEditSeguro.Field.AsFloat - rRateioSeguroDiferenca, -2 );
           if (CdsPedidosPED_DESCTOVL.AsFloat > 0) then //Desconto
              rRateioDescontoDiferenca := Uteis.RoundTo( CdsPedidosPED_DESCTOVL.AsFloat - rRateioDescontoDiferenca, -2);
    end;
///
    Procedure TFormFatPedido.IniciaVar ;
    begin
        wTotalDesoneracao := 0;
        wTotalSemComissao := 0;
        wValorTotalPIS := 0;
        wValorTotalCOFINS := 0;
        wTotalBaseIcmsIndividual := 0;
        wTotalBaseIcms := 0;
        wTotalVlBaseIcms := 0;
        wTotalValorSubs := 0;
        wTotalBaseValorSubs := 0;
        wValorTotalCOFINS := 0;
        wVTotFPC:=0;
        wVTotPartDest:=0;
        wVTotPartOrig:=0;
        wValorAproxTributosTot:=0;
        wBaseIPI := 0;
        lIsIndustria := (qClientesCLI_ATIVIDADE.asstring = '002');
        wValorProdIndividual := 0;
        wIPIDESPIMPORT := 0;
        vICMSSubstitutoTotal :=0 ;
        wBaseicms_simplesAproveit := 0; //items que tem aproveitamento de crédito   CSOSN 101,201
        vTotalICMS_Deson :=0;
    end;
///
   procedure TFormFatPedido.IniciaVarItem;
   begin
          wPMC := 0;
          wBaseIcms := 0; //<-----------------------------------
          wValorIcms := 0;
          wValorCredSimples := 0;
          wBasePIS := 0;
          wBaseCOFINS := 0;
          wAliquotaPIS := 0;
          wAliquotaCOFINS := 0;
          wValorPIS := 0;
          wValorCOFINS := 0;
          wCadProdAliqIcms := 0;
          wValorIPI := 0;
          rValorIPIUnidade := 0;
          wIPIFrete := 0;
          wRateioFreteSeguroDesp := 0;
          wPrecoMatPrima := 0;
          wBaseIcmsIndividual := 0;  //<---------------------------------------
          wValorIcmsIndividual := 0;
          wBaseIPIIndividual := 0;   //  ma
          wValorIPIIndividual := 0;   //  ma
          wBaseValorSubs := 0;
          wTeste := 0;
          wUfAliqIcmsSubCliRegra := 0;
          wUfAliqIcmsInterestadlRegra := 0;
          wReducaoBaseST := 0;
          wValorSubs := 0;
          wTemSubs := 'N'; // no cad Produto jko
          bIPIPorUnidade := False;
          wFreteIndividual := 0;
          wDespesaIndividual := 0;
          wSeguroIndividual := 0;
          wDescontoIndividual := 0;
          wDesctoValorIPI := 0;
          wDesctoValorICMS := 0;
          wFator := 0;
          wIcms  := 0;
          wIcmDifalST := 0;
          wDifalST := 0;
          wIcmEstad := 0;
          wBaseValorProd := 0;
          bIsentarICMS := False;
          rRateioTmp := 0;
   end;

Procedure TFormFatPedido.LeRegra ( pRegra:integer; cfopCodigo : string = '' );
    var AchouCfop, consumidorFinal, consumoProprio, regimeTributario: boolean;

    begin
         if qCLientes.Active then
         begin
           consumidorFinal := CdsPedidosCLI_CONSFINAL.AsString = 'S';
           consumoProprio := cdspedidosCLI_CONSU_PROPRIO.AsString = 'S';
           regimeTributario := qClientesCLI_REGIME_TRIBUTARIO.AsString = 'S'
         end
         else
         begin
           if FrmPedidoItem <> nil then
           begin
             consumidorFinal := FrmPedido.cbOrsConsFinal.ItemIndex = 0;
             consumoProprio := FrmPedido.rgOrsCliConsuProprio.ItemIndex = 0;
             regimeTributario := FrmPedido.cbOrsCliRegimeTributario.ItemIndex = 0;
           end;
         end;
         openaux ( 'SELECT * FROM ope_regra where opr_registro = ' + IntToStr( pRegra ) );
         if qAux.FieldByName('OPR_PERC_FCP').AsFloat > 0  then
           wAliqFCP :=  qAux.FieldByName('OPR_PERC_FCP').AsFloat
         Else
          wAliqFCP := 0;
         if CdsItemPedido.Active and (qAux.FieldByName('ope_destino').AsString = '') then
          cfopCodigo := CdsItemPedidoCFOP_Codigo.AsString
         else
         if qAux.FieldByName('ope_destino').AsString <> '' then
          cfopCodigo := qAux.fieldByName('ope_destino').AsString;

         if ( cfopCodigo = '' ) then // cfop por item, / nf várias cfops
         begin
              AchouCfop:=BuscaOperacaoNovo ( qAux.FieldByName('OPE_DESTINO').AsString );
              if not AchouCfop then
                 Raise EConvertError.Create( 'A Operação Fiscal Código: '+qAux.FieldByName('OPE_DESTINO').AsString+#13+
                                             'Informada na Regra: '+pRegra.ToString+#13+
                                             'Não foi localizada! ');
         end
         else
              BuscaOperacaoNovo ( cfopCodigo );
         if CdsItemPedido.Active then
           If not CdsItemPedidoalterou_cbenef.AsBoolean then
           begin
             if NOT (CdsItemPedido.State in dsEditModes) then
               CdsItemPedido.edit;
             CdsItemPedidoprd_cbenef.AsString := qAux.FieldByName('CBENEF').AsString;
             CdsItemPedido.Post;
           end;
        //cst 60 ICMS cobrado anteriormente por substituição tributária
         if (consumidorFinal) then
         begin
           wCST_CODIGO := qAux.FieldByName('STB_TRIBUTACAO').AsString;
           if (wCST_CODIGO = '10')  then
              wCST_CODIGO := wauxCST;
         end
         else   //CLI_CONSFINAL.AsString = 'N'
         begin

           if qAux.FieldByName('OPR_ISENTARICIMS').AsString = 'S' then
           begin
              wCST_CODIGO := '30';
              bIsentarICMS := True
           end
           else
              wCST_CODIGO := qAux.FieldByName('STB_TRIBUTACAO').AsString;
         end;


        wUfAliqIcmsSubCliRegra := qAux.FieldByName('OPR_ALIQ_ST_UF').AsFloat;
        wUfAliqIcmsInterestadlRegra := qAux.FieldByName('OPR_ALIQ_INTERESTADUAL').AsFloat; // adr
        wReducaoBaseST := qAux.FieldByName('OPR_REDUCAO_BASE_ST').AsFloat;
        if consumoProprio then  //consumo próprio é somente diferencial de aliquota
          wUfAliqMVA := 0
        else
        begin
          //REGIME TRIBUTÁRIO DO SIMPLES TEM SEU MVA PROPRIO S=SIMPLES P = PRESUMIDO R = REAL
          // if (CdsPedidosCLI_REGIME_TRIBUTARIO.AsString = 'S') then   // cliente é regime simples  em alguns estados tem MVA diferenciado
          if (regimeTributario) then   // cliente é regime simples  em alguns estados tem MVA diferenciado
            wUfAliqMVA := qAux.FieldByName('OPR_PERCENTUAL_MVA_SIMPLES').AsFloat
          else
            wUfAliqMVA := qAux.FieldByName('OPR_PERCENTUAL_MVA').AsFloat;

        end;

         qAux.Close;
    end;

















procedure TFormFatPedido.GravaItensNota;
var
   wSituacao, iRegCfopPrincipal, wValorSemMilhar, wCST_CODIGOProduto, wClassificacaoFiscal: string;
   bRegra: integer;
   vDescontoaux : Currency;
   rt2: Extended;
   wSomaDespesas, lBase: currency;
   sprd_Origem : string;
///

///
begin
     IniciaVar ;
     ObtemTotalNota; // loop item
     wSomaDespesas := RateioFrete {CdsNotaFiscalNF_VLFRETE.AsFloat} + CdsNotaFiscalNF_VLSEGURO.AsFloat + CdsNotaFiscalNF_DESP_ACES.AsFloat;
     RateioFrete_despesas; // loop item

     iRegCfopPrincipal := qOperFiscOPE_CODIGO.AsString;

     CdsItemPedido.First;
		 while not CdsItemPedido.Eof do
		 begin

					IniciaVarItem ;

					lIsProdutoEspecifico := CdsItemPedidoPRD_ESPECIFICO.asstring = 'S';
					lIsMedicamento :=CdsItemPedidoID_PRD_ESPECIFICO.asinteger=3;


					if lIsProdutoEspecifico and lIsMedicamento then
					begin
							 wReducaoBaseST := CdsItemPedidoPRD_ESPECIFICO_REDST.AsCurrency;
							 wPMC := DBInicio.BuscaUmDadoSqlAsFloat ( 'select prdl_preco_maximo from prd_lote where prdl_registro = '+CdsItemPedidoPrdl_Registro.AsString );
					end;

           BuscaOperacaoNovo ( CdsItemPedidoCFOP_Codigo.AsString );
           if (femp_crt = '1') AND (fOPT_SIMPLES = 'S') then // SIMPLES
              cstPISCOFINS := '99'
           Else
           If  qOperFiscOPE_TRIBPISCOFINS.AsString = 'S' then
           begin
             if trim (qOperFiscOPE_CST_PISCOFINS.AsString) <> '' then
               cstPISCOFINS := trim (qOperFiscOPE_CST_PISCOFINS.AsString)
             else
               cstPISCOFINS := BuscaUmDadoSqlAsString('SELECT PRD_CSTPISCOFINS FROM PRD0000 WHERE PRD_CODIGO = '+QuotedStr(CdsItemPedidoPRD_PRODUTO.AsString) );
             if cstPISCOFINS = '' then
               cstPISCOFINS := '01';
           end
           else
             cstPISCOFINS := '';
					// Regra Nova CFOP
					// Aqui realizamos a busca por uma regra caso nao encontre assumira o padrao
					// a pesquisa será pela tabela ope_regra

					//Busca Informações do Produto
//					OpenAux ( 'Select STB_TRIBUTACAO, IPI_CODIGO, prd_origem '+
//										'from PRD0000 '+
//										'where PRD_REFER = ' + qStr( CdsItemPedidoPRD_REFER.AsString ) +
//                    iif(DBInicio.empresa.wPMT_FATURA_MULTIEMPRESA,
//                         ConcatSe( '  and ', dbInicio.exclusivoSql( 'PRODUTOS' ,EmpCodigo) ),
//                         ConcatSe( '  and ', dbInicio.exclusivoSql( 'PRODUTOS' ) )));
					wCST_CODIGO := CdsItemPedido.FieldByName('STB_TRIBUTACAO').AsString;
					wCST_CODIGOProduto := CdsItemPedido.FieldByName('STB_TRIBUTACAO').AsString;
					wClassificacaoFiscal := CdsItemPedido.FieldByName('IPI_CODIGO').AsString;
          sprd_Origem :=  CdsItemPedido.FieldByName('prd_origem').AsString;
					qAux.Close;

					wauxCST := wCST_CODIGO;
					// regras uf
          if (CdsItemPedidoCFOP_Codigo.AsString = '') then
          begin
  					bRegra := BuscaRegra ( wClassificacaoFiscal, CdsPedidosCLI_UF.AsString, iRegCfopPrincipal,sprd_Origem  ) ;
  					BuscaOperacaoNovo ( iRegCfopPrincipal ) // usa cfop/regra definida na nf
          end else
          begin
            if CdsItemPedidoRegraCFOP.AsInteger >0 then //já foi processado a regra fiscal
            begin
              bRegra := CdsItemPedidoRegraCFOP.AsInteger;
              BuscaOperacaoNovo ( iRegCfopPrincipal ) // usa cfop/regra definida na nf
            end
            else // o usuario mudou a regra fiscal
            begin
              bRegra := BuscaRegra ( wClassificacaoFiscal, CdsPedidosCLI_UF.AsString, CdsItemPedidoCFOP_Codigo.AsString,sprd_Origem ) ;
  						BuscaOperacaoNovo ( CdsItemPedidoCFOP_Codigo.AsString ); // usa cfop/regra definida no item
            end;
          end;
 			    if bRegra <> 0 then //le regra uf
						 LeRegra( bRegra)
					else
					begin
							 if (CdsItemPedidoCFOP_Codigo.AsString = '') then
									BuscaOperacaoNovo ( iRegCfopPrincipal ) // usa cfop/regra definida na nf
							 else
									BuscaOperacaoNovo ( CdsItemPedidoCFOP_Codigo.AsString ); // usa cfop/regra definida no item
					end;
          bIsentarICMS := MatchStr(wCST_CODIGO,['30','60']) ;
					//se ST = 10, 60, 70 tem st
					if MatchStr(wCST_CODIGO,['10','30','70'])   then
						 wTemSubs := 'S'
					else
						 wTemSubs := 'N';

           if (dbInicio.GetParametroSistema('PMT_PEDIDO_IND_PLASTICA') = 'S')  then
           begin
              if (BuscaUmDadoSqlAsInteger(
                 ' SELECT COUNT(rfpc.PRD_REFER) ' +
                 ' FROM OPE_REGRA opr ' +
                 '   LEFT JOIN REGRA_FISCAL_PROD_CAP rfpc ON (rfpc.OPR_REGISTRO = opr.OPR_REGISTRO) ' +
                 '   LEFT JOIN OPE0000 o ON o.OPE_CODIGO = opr.OPE_CODIGO_ORIGEM ' +
                 ' WHERE rfpc.PRD_REFER = ' + QuotedStr(CdsItemPedidoPRD_REFER.AsString) +
                 '   AND rfPC.CAP_CODIGO = ' + IntToStr(StrToIntDef(CdsItemPedidoCAP_CODIGO.AsString, 0))
              ) > 0) and (wCST_CODIGO <> '00')
              then wTemSubs := 'S'
              else wTemSubs := 'N'
              ;
           end;










					if (CdsItemPedidoPRF_PRODUTO_AGREGADO.AsString = 'N') then // produto normal
					begin

							 //ShowMessage ( CdsItemPedidoprd_refer.asstring ) ;

							 if (CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat > 0) then
							 begin

										//wPRODUTO := CdsItemPedidoPRD_REFER.AsString + ' - ' + CdsItemPedidoPRF_PRDDESCRI.AsString;
										wValorProdIndividual := Uteis.RoundTo ( CdsItemPedidoPRF_PRECO.AsFloat * CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat , -2 );
										wCest := LerCestProduto( CdsItemPedidoPRD_REFER.AsString );
										BuscaIBPT( wClassificacaoFiscal, wIBPTAliqImp, wIBPTAliqNac, wIBPTAliqEst );
										if ((CdsItemPedidoPRD_ORIGEM.AsString = '1') or (CdsItemPedidoPRD_ORIGEM.AsString = '2') or (CdsItemPedidoPRD_ORIGEM.AsString = '3')) then  //1,2,3 -> importados
											 wIbptAliqFed := wIBPTAliqImp
										Else
											 wIbptAliqFed := wIBPTAliqNac;
                    wConsumidor := (cdsPedidosCLI_CONSFINAL.AsString = 'S');
                    wVenda := (qOperFiscOPE_TIPO_OPERACAO.AsString = 'V');

                     if (wConsumidor or (DBInicio.Empresa.fPMT_VALOR_APROX_TRIB  ='T')) and wVenda then // se (consumidor ou mostra ibpt para todos) e venda então
                     begin

                          if fwPMT_TRIB_NF then
                             wValorAproxTributosItem := Uteis.RoundTo( wValorProdIndividual * ( (fALIQ_CREDITO)/100 ), -2)
                          else
                            wValorAproxTributosItem := Uteis.RoundTo( wValorProdIndividual * ( (wIbptAliqFed + wIbptAliqEst )/100 ), -2);
                          wValorAproxTributosTot := wValorAproxTributosTot + wValorAproxTributosItem ;
                    end;
										wValorProd := Uteis.RoundTo ( wValorProd + wValorProdIndividual , -2 );

										//verifica se cfop entra no calculo do faturamento do contas a receber
										if (qOperFiscOPE_SEMVLCOM.AsString = 'N') or ((qOperFiscOPE_SEMVLCOM.AsString = 'S') and (qOperFiscOPE_SEMVLCOM_MOSTRAF.AsString = 'S')) then
                    begin
											 wValorProdFaturar := Uteis.RoundTo ( wValorProdFaturar + wValorProdIndividual, -2 );
                       geraFaturamento := True;
                    end;

										//
										OpenAux ( 'Select PR1.PRD_ALIQICM, PR1.PRD_ICMSUBS, PG1.PGR_COMISS, PR1.PRD_TEMSUB, PR1.STB_TRIBUTACAO, PR1.IPI_CODIGO, COALESCE(PG1.PGR_ATUALIZA_ESTOQUE,''S'') AS PGR_ATUALIZA_ESTOQUE '+
															'from PRD0000 PR1 '+
															'     left join PRD_GRUPO PG1 ON PR1.PGR_CODIGO = PG1.PGR_CODIGO '+
															'where PR1.PRD_REFER = '+qStr(CdsItemPedidoPRD_REFER.AsString)+
                              iif(DBInicio.empresa.wPMT_FATURA_MULTIEMPRESA,
                                   ConcatSe( '  and pr1.', dbInicio.exclusivoSql( 'PRODUTOS' ,EmpCodigo) ),
                                   ConcatSe( '  and pr1.', dbInicio.exclusivoSql( 'PRODUTOS'  )) ));

										// Comissão. Grava na FAT0000 o Total de item sem comissao para calculo de comissao
										if (qAux.FieldByName('PGR_COMISS').AsString = 'N') then
											 wTotalSemComissao := Uteis.RoundTo ( CdsItemPedidoPRF_PRECO.AsFloat * CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat , -2 ) ;
										// Se aliq ICMS informada no produto, assume aliquota do produto
										wCadProdAliqIcms := qAux.FieldByName('PRD_ALIQICM').AsFloat;
										if wCadProdAliqIcms > 0 then
												 wIcmsAliq := wCadProdAliqIcms;
										//Achar Regra da Classificação Fiscal por Estado
										if (qAux.FieldByName('IPI_CODIGO').AsString <> '') then
										begin
                        wIcmsAliq :=BuscaUmDadoSqlasFloat (  'SELECT IPII_ALIQUOTA FROM IPI0000_ICMS '+
                                                             'WHERE IPI_CODIGO = ' + QStr(qAux.FieldByName('IPI_CODIGO').AsString) +
                                                             ' and IPII_ESTADO = ' + QStr(CdsPedidosCLI_UF.AsString)+
                                                             ConcatSe( ' and ' , dbInicio.ExclusivoSql('TABELAS') ) );

												 if wIcmsAliq > 0 then
												 begin


															wALiqICmsCliente := wIcmsAliq;
															wCadProdAliqIcms := wIcmsAliq;
												 end;
										end;
										{Operação Fiscal - Tributar IPI -- empresa do simples nao tem IPI}
										if (qOperFiscOPE_TRIBIPI.AsString = 'S') then
										begin
												 if (wClassificacaoFiscal <> '') then
												 begin
															OpenAux( 'select IPI_VALOR_POR_ITEM from IPI0000 where IPI_CODIGO = ' + qStr(wClassificacaoFiscal) );
															if (qAux.FieldByName('IPI_VALOR_POR_ITEM').AsFloat > 0) then
															begin
																	 bIPIPorUnidade := True;
																	 rValorIPIUnidade := qAux.FieldByName('IPI_VALOR_POR_ITEM').AsFloat;
															end;
															qAux.Close;
												 end;

												 if (bIPIPorUnidade) then
														wValorIPI := rValorIPIUnidade * CdsItemPedidoPRF_QTDE.AsFloat
												 else
												 begin
															//rateio do frete/Seguro e desp. aces. na base do IPI  - Formula : FRETE/TOTAL DOS PRODUTOS DA NOTA*TOTAL UNITARIO DE CADA PRODUTO
															if (qOperFiscOPE_FRETEBASEIPI.AsString = 'S') then
															begin
																	 lBase := wSomaDespesas / wValorProdGeral * wValorProdIndividual;
																	 wIPIFrete := Uteis.RoundTo ( CdsItemPedidoPRF_IPIALIQ.AsFloat / 100 * lBase , -2 );
																	 wBaseIPIIndividual := Uteis.RoundTo( wBaseIPIIndividual + lBase , -2 );
															end
															else
																	wIPIFrete := 0;

															// Calculo IPI
															if CdsPedidosPED_DESCTOVL.AsFloat > 0 then    // é desconto para aplicar na nota
																	wValorIPI := Uteis.RoundTo( (CdsItemPedidoPRF_IPIALIQ.AsFloat/100) * ( CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat * CdsItemPedidoPRF_PRECO_BRUTO.AsFloat ), -2)    // p bruto
															else
																	wValorIPI := Uteis.RoundTo( (CdsItemPedidoPRF_IPIALIQ.AsFloat/100) * ( CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat * CdsItemPedidoPRF_PRECO.AsFloat ), -2);         // p liquido

															// Incluir Despesas de Importação na Base do IPI com rateio por item
															// Formula : DESPESAS DE IMPORTAÇÃO/TOTAL DOS PRODUTOS DA NOTA*TOTAL UNITARIO DE CADA PRODUTO
															if (qOperFiscOPE_DESPIMPORIPI.AsString = 'S') then
																 wIPIDESPIMPORT := Uteis.RoundTo ( (CdsItemPedidoPRF_IPIALIQ.AsFloat / 100) * (cdsNotaFiscalNF_DESP_IMPORT.AsFloat / wValorProdGeral * wValorProdIndividual), -2 )
															else
																 wIPIDESPIMPORT := 0;

															// Redução IPI
															if (qOperFiscOPE_REDU_IPI.AsFloat > 0) and (wValorIPI > 0) then //a variavel wValorIPIND soma todos os ipi dos produtos que tem icms exclusivo pode resultar em valor negativo}
																 wValorIPI := wValorIPI - Uteis.RoundTo ( wValorIPI * qOperFiscOPE_REDU_IPI.AsFloat / 100, -2);
												 end;

												 { Aplicar desconto no valor do IPI fazendo o rateio por item da nota - so aplicade desconto NO IPI quando é
													desconto nos itens de venda. se  marcado desconto na nota o IPI deve ser cheio sem o desconto}

												 if CdsPedidosPED_DESCTOVL.AsFloat > 0 then    // é desconto para aplicar na nota
												 begin
															// rateio do valor do desconto para cada item da nota (util para ICMS)
															wDesctoItemValor := Uteis.RoundTo ( CdsPedidosPED_DESCTOVL.AsFloat / wValorProdGeral * wValorProdIndividual, -2);
															// rateio do valor do IPI
															wDesctoValorIPI := Uteis.RoundTo ( (CdsItemPedidoPRF_IPIALIQ.AsFloat / 100) * (CdsPedidosPED_DESCTOVL.AsFloat/ wValorProdGeral * wValorProdIndividual), -2);
												 end
												 else
												 begin
															wDesctoItemValor := 0;
															wDesctoValorIPI := 0;
												 end;
										end;
										//verifica se haverá diferenca do rateio do frete despesa e seguro
										//Frete

                    if chkFreteProporcional.Checked
                      then rt1 := (Uteis.RoundTo( CdsItemPedidoPRF_PRECO.AsFloat * CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat, -2 ) / CdsPedidosPED_VLTOTAL_LIQ.AsFloat  )
                      else rt1 := (Uteis.RoundTo( CdsItemPedidoPRF_PRECO.AsFloat * CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat, -2 ) / wValorProdGeral );
										if (cdsNotaFiscalNF_VLFRETE.AsFloat > 0) then
										begin
												 rRateioTmp := rRateioTmp + Uteis.RoundTo(rt1 * cdsNotaFiscalNF_VLFRETE.AsFloat,-2);
												 wFreteIndividual := rRateioFreteDiferenca + rRateioTmp;
												 rRateioFreteDiferenca := 0;
										end;

										//Despesas
										if (cdsNotaFiscalNF_DESP_ACES.AsFloat > 0) OR (CdsNotaFiscalNF_VLDIFAL.asFloat > 0) then
										begin
												 rRateioTmp := {rRateioTmp +} Uteis.RoundTo(rt1 * (cdsNotaFiscalNF_DESP_ACES.AsFloat + CdsNotaFiscalNF_VLDIFAL.asFloat), -2);
												 wDespesaIndividual := rRateioDespesaDiferenca + rRateioTmp;
												 rRateioDespesaDiferenca := 0;
										end;

										//Seguro
										if (cdsNotaFiscalNF_VLSEGURO.asfloat > 0) then
										begin
												 rRateioTmp := {rRateioTmp +} Uteis.RoundTo(rt1 * cdsNotaFiscalNF_VLSEGURO.asfloat, -2);
												 wSeguroIndividual := rRateioSeguroDiferenca + rRateioTmp;
												 rRateioSeguroDiferenca := 0;
										end;

										//Desconto
										if (CdsPedidosPED_DESCTOVL.AsFloat > 0) then
										begin
												 rRateioTmp := {rRateioTmp +} Uteis.RoundTo(rt1 * CdsPedidosPED_DESCTOVL.AsFloat, -2);
												 wDescontoIndividual := rRateioDescontoDiferenca + rRateioTmp;
												 rRateioDescontoDiferenca := 0;
										end;
                    // Salva credito de ICMS se a empresa é do simples
										if ((fOPT_SIMPLES = 'S') and (fALIQ_CREDITO > 0)) then
											 wValorCredSimples := Uteis.RoundTo ( (wValorProdIndividual-wDescontoIndividual)   * fALIQ_CREDITO / 100 , -2 );

										{ Totalizar o IPI }
										if (wValorIPI > 0) then
										begin
												 // total individual de cada produto (IPI e rateios)

												 if CdsPedidosPED_DESCTOVL.AsFloat > 0 then    // é desconto para aplicar na nota não deve baixar do IPI,é preço bruto mesmo
												 begin
															if CdsItemPedidoPRF_PRECO_BRUTO.AsFloat<>CdsItemPedidoPRF_PRECO.AsFloat then
																 wBaseIPIIndividual := wBaseIPIIndividual + Uteis.RoundTo( CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat * CdsItemPedidoPRF_PRECO.AsFloat ,-2)
															Else
																 wBaseIPIIndividual := wBaseIPIIndividual + Uteis.RoundTo( CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat * CdsItemPedidoPRF_PRECO_BRUTO.AsFloat ,-2);
												 end
												 else
														wBaseIPIIndividual := wBaseIPIIndividual + Uteis.RoundTo( CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat * CdsItemPedidoPRF_PRECO.AsFloat ,-2);
                          // nova regra fiscal  publicada no DOU dia 09/03/2017 sobre o desconto incondicional resolução 01/2017
												 wBaseIPIIndividual := wBaseIPIIndividual - wDescontoIndividual;

												 wValorIPI := Uteis.RoundTo(wBaseIPIIndividual * CdsItemPedidoPRF_IPIALIQ.AsFloat / 100,-2);
												 wValorIPIIndividual := Uteis.RoundTo( wValorIPI + wIPIDESPIMPORT , -2 );
												 // totalização do IPI de TODOS os produtos
												 wTotalIPI := Uteis.RoundTo ( wTotalIPI + wValorIPIIndividual, -2);
												 wBaseIPI := Uteis.RoundTo ( wBaseIPI + wBaseIPIIndividual, -2);
												 //Verifica se o comando Não aplicar o total do IPI no total da nf esta ativo
												 if (qOperFiscOPE_IPI_TOTALNOTA.AsString = 'S') then
														wTotalIPITotalNF := 0    //wTotalIPITotalNF + wValorIPIIndividual;  - mp
												 else
														wTotalIPITotalNF := Uteis.RoundTo ( wTotalIPITotalNF + wValorIPIIndividual,-2);
												 // Acumula IPI na Base da ST - conforme legislação da ST
												 if (wTemSubs = 'S') then
														wBaseValorSubs := Uteis.RoundTo ( wBaseValorSubs + wValorIPIIndividual,-2);
										end;
										// Tributar ICMS verificar em Natureza da Operação
										// quando a empresa é do simples, preciso calcular o icms normal para fazer os calculos da substituição tributaria, se houver
										// antes de gravar sera zerado os valores de base e valor de icms
										// CST 40, 41 e 50 nao deve tributar ICMS
										if ((wCST_CODIGO <> '40') and (wCST_CODIGO <> '41') and (wCST_CODIGO <> '50')) or bIsentarICMS then
										begin
												 if (qOperFiscOPE_TRIBICMS.AsString = 'S') or ((fOPT_SIMPLES = 'S') and (GetCSOSN <> 900) and (femp_crt = '1')) then
												 begin
															// OPERAÇÃO FISCAL -Tributar ICMS = 'S'
															// aplicar aliquota do ICMS
															// não se preocupar, logo abaixo o sistema vai aplicar desconto nos icms se tiver desconto na nota

															if wUfAliqIcmsInterestadlRegra > 0 then
															begin
																	 wBaseIcmsIndividual := Uteis.RoundTo ( CdsItemPedidoPRF_PRECO.AsFloat * CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat, -2);

																	if (wBaseIcmsIndividual > 0) and (wAliqreduzidaICMS > 0) then
																		 wBaseIcmsIndividual := wBaseIcmsIndividual - (wBaseIcmsIndividual * (wAliqreduzidaICMS / 100));

																	if (wAliqreduzidaICMS <> 100) then    // ICMS NORMAL
																			begin
																			// Produtos importandos tributar com aliquota diferenciada 4%
																		//	if (wExterior = 'N') and ((CdsItemPedidoPRD_ORIGEM.AsString = '1') or (CdsItemPedidoPRD_ORIGEM.AsString = '2') or (CdsItemPedidoPRD_ORIGEM.AsString = '3') or (CdsItemPedidoPRD_ORIGEM.AsString = '8') ) then
//																				 begin
//																					 wUfAliqIcmsInterestadlRegra:= qIcmsICMS_PROD_IMPORTADO.AsFloat;
//																					 wIcmsAliq := wUfAliqIcmsInterestadlRegra;
//																				 end
//																				 else

{																						 wIcmsAliq := wUfAliqIcmsInterestadlRegra;  }

                                        if (wExterior = 'N') and (qIcmsICMS_PROD_IMPORTADO.AsFloat > 0) and
                                           (MatchStr(BuscaUmDadoSQLAsString('SELECT PRD_ORIGEM FROM PRD0000 p WHERE PRD_REFER = ' + QuotedStr(CdsItemPedidoPRD_REFER.AsString)),['1','2','3','8'])) then
                                        begin
                                          wIcmsAliq := qIcmsICMS_PROD_IMPORTADO.AsFloat;
                                          wUfAliqIcmsInterestadlRegra := qIcmsICMS_PROD_IMPORTADO.AsFloat;
                                        end
                                        else wIcmsAliq := wUfAliqIcmsInterestadlRegra ;





																			 wValorIcmsIndividual := wValorIcmsIndividual + Uteis.RoundTo ( ((CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat * CdsItemPedidoPRF_PRECO.AsFloat) - wDescontoIndividual) *  wUfAliqIcmsInterestadlRegra / 100, -2);
																			 // wValorIcmsIndividual := wValorIcmsIndividual + Uteis.RoundTo ( CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat * CdsItemPedidoPRF_PRECO.AsFloat *  wUfAliqIcmsInterestadlRegra / 100, -2);
																			end;
															end
															else
															if (wForaEstSN = 'S') then // venda interestadual
															begin
																	wBaseIcmsIndividual := Uteis.RoundTo ( (CdsItemPedidoPRF_PRECO.AsFloat * CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat) - wDescontoIndividual, -2);

																	if (wBaseIcmsIndividual > 0) and (wAliqreduzidaICMS > 0) then
																		 wBaseIcmsIndividual := wBaseIcmsIndividual - (wBaseIcmsIndividual * (wAliqreduzidaICMS / 100));

																	if (wAliqreduzidaICMS <> 100) then      // é icms normal
																	begin
																		 // Produtos importandos tributar com aliquota diferenciada 4%
																		 if (wExterior = 'N') and ((CdsItemPedidoPRD_ORIGEM.AsString = '1') or (CdsItemPedidoPRD_ORIGEM.AsString = '2') or (CdsItemPedidoPRD_ORIGEM.AsString = '3') or (CdsItemPedidoPRD_ORIGEM.AsString = '8') ) then
																					begin
																					 wUfAliqIcmsForaEst:= qIcmsICMS_PROD_IMPORTADO.AsFloat;
																					 wIcmsAliq := wUfAliqIcmsForaEst;
																					end
																		 else
																				 wIcmsAliq := wUfAliqIcmsForaEst;

																			wValorIcmsIndividual := wValorIcmsIndividual + Uteis.RoundTo(((CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat * CdsItemPedidoPRF_PRECO.AsFloat) - wDescontoIndividual) * wUfAliqIcmsForaEst / 100, -2);

																	end;

															end
															else
															if wCadProdAliqIcms > 0 then
															begin
																	// com aliquota no produto
																	// Incidência de ICMS VIA - PRODUTO
																	// Aliquota estadual -cadastro do produto é a tributação da UF da EMPRESA

																	wBaseIcmsIndividual := Uteis.RoundTo (CdsItemPedidoPRF_PRECO.AsFloat * CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat  - wDescontoIndividual,-2);

																	if (wBaseIcmsIndividual > 0) and (wAliqreduzidaICMS > 0) then
																		 wBaseIcmsIndividual := wBaseIcmsIndividual - (wBaseIcmsIndividual * wAliqreduzidaICMS / 100);

																	if (wAliqreduzidaICMS <> 100) then
																	begin
																			 wValorIcmsIndividual := wValorIcmsIndividual +
																															 Uteis.RoundTo(wBaseIcmsIndividual{CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat * CdsItemPedidoPRF_PRECO.AsFloat} * wCadProdAliqIcms / 100, -2);
																			 wIcmsAliq := wCadProdAliqIcms;
																	end;
															end
															else  // sem aliquota no produto- usa da tabela do estado
															begin

																	if (fOPT_SIMPLES = 'S') or (wForaEstSN = 'N') then
																	begin
																			 //wBaseIcmsIndividual := Uteis.RoundTo ( wBaseIcmsIndividual + SimpleUteis.RoundTo(CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat * CdsItemPedidoPRF_PRECO.AsFloat)));
																			 wBaseIcmsIndividual := Uteis.RoundTo( CdsItemPedidoPRF_PRECO.AsFloat * CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat , -2 );

																			 if (wBaseIcmsIndividual > 0) and (wAliqreduzidaICMS > 0) then
																					wBaseIcmsIndividual := wBaseIcmsIndividual - (wBaseIcmsIndividual * wAliqreduzidaICMS / 100);

																			 if (wAliqreduzidaICMS <> 100) then
																			 begin
																						wValorIcmsIndividual := wValorIcmsIndividual + Uteis.RoundTo ( ((CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat * CdsItemPedidoPRF_PRECO.AsFloat) - wDescontoIndividual) * wALiqICmsCliente / 100 , -2 );
																						wIcmsAliq := wALiqICmsCliente;
																			 end;
																	end;

															end;

															// Aplicar o valor do desconto no ICMS (com rateio) antes de acrescentar outros na base do ICMS
															if CdsPedidosPED_DESCTOVL.AsFloat > 0 then
															begin
																	// wValorIcmsIndividual := Uteis.RoundTo ( wValorIcmsIndividual - wDescontoIndividual , -2);
																	 // wValorIcmsIndividual := Uteis.RoundTo ( wValorIcmsIndividual - wDesctoValorICMS , -2);


   														     wDesctoValorICMS := Uteis.RoundTo ( (wIcmsAliq / 100) * (CdsPedidosPED_DESCTOVL.AsFloat/wValorProdGeral*wValorProdIndividual) , -2 );

																	 // calcula a base do icms referente ao icms com desconto
																	 wBaseIcmsIndividual := wValorProdIndividual - wDescontoIndividual;
																	 // wBaseIcmsIndividual := wValorProdIndividual - rRateioTmp;
																	 // wBaseIcmsIndividual := Uteis.RoundTo ( (wValorIcmsIndividual * 100 / wIcmsAliq), -2) - rRateioTmp;
															end
															else
																	wDesctoValorICMS := 0;

															// Acrescentar IPI na base do ICMS; operacao para consumidor final
															if (qOperFiscOPE_IPINABASEICMS.AsString = 'S') then
															begin
																	 wBaseIcmsIndividual := Uteis.RoundTo ( wBaseIcmsIndividual + wValorIPI + wIPIDESPIMPORT, -2);
																	 wValorIcmsIndividual := Uteis.RoundTo ( wBaseIcmsIndividual * wIcmsAliq / 100 ,-2);
															end;

															// Incluir frete rateando o valor do frete e desp. na base do ICMS

															if (qOperFiscOPE_FRETENABASE.AsString = 'S') and ((cdsNotaFiscalNF_VLFRETE.AsFloat > 0) or (cdsNotaFiscalNF_VLSEGURO.AsFloat > 0) or (cdsNotaFiscalNF_DESP_ACES.AsFloat > 0)) then
															begin
																	 wRateioFreteSeguroDesp := Uteis.RoundTo( (cdsNotaFiscalNF_VLFRETE.AsFloat + cdsNotaFiscalNF_VLSEGURO.AsFloat + cdsNotaFiscalNF_DESP_ACES.AsFloat) / wValorProdGeral * (CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat * CdsItemPedidoPRF_PRECO.AsFloat), -2);
																	 wBaseIcmsIndividual := Uteis.RoundTo ( wBaseIcmsIndividual + wRateioFreteSeguroDesp,-2);
																	 wValorIcmsIndividual := Uteis.RoundTo ( (wBaseIcmsIndividual * wIcmsAliq) / 100, -2);
															end;
                               wBaseIcms :=  wBaseIcmsIndividual ; //base de icms sem redução da base
															//aplicando o percentual (multiplicador) de diminuição da base do ICMS
															if qOperFiscOPE_INDICE_IMP.AsFloat > 0 then
															begin
																	 wBaseIcmsIndividual := Uteis.RoundTo ( wBaseIcmsIndividual - (wBaseIcmsIndividual * qOperFiscOPE_INDICE_IMP.AsFloat / 100),-2);
																	 wValorIcmsIndividual := Uteis.RoundTo ( wValorIcmsIndividual - (wValorIcmsIndividual * qOperFiscOPE_INDICE_IMP.AsFloat) / 100,-2);
															end;

															//aplicando o fator (divisor) de aumento para base do ICMS
															if qOperFiscOPE_AUMEN_ICMS.AsFloat > 0 then
															begin
																	 wBaseIcmsIndividual := Uteis.RoundTo ( wBaseIcmsIndividual / qOperFiscOPE_AUMEN_ICMS.AsFloat,-2 );
                                   wValorIcmsIndividual := Uteis.RoundTo ( (wBaseIcmsIndividual * wIcmsAliq) / 100, -2);
																	 //wValorIcmsIndividual := Uteis.RoundTo ( wValorIcmsIndividual / qOperFiscOPE_AUMEN_ICMS.AsFloat, -2 );
															end;

															// calcular redução da aliquota do ICMS que consta na tabela do ICMS do estado
															// BASE ICMS * REDUZIDA / ALIQUOTA INTERNA
															if (wAliqreduzidaICMS > 0) and (wAliqreduzidaICMS <> 100) then
															begin
																	 // a aliquota reduzida é calculada sobre a base do icms normal
																	 wValorIcmsIndividual := Uteis.RoundTo ( wBaseIcmsIndividual * wAliqreduzidaICMS / 100 , -2);
																	 // a base no icms normal agora é reduzida pela dividao do vl do icms pela aliq normal
																	 wBaseIcmsIndividual := Uteis.RoundTo ( wBaseIcmsIndividual * wAliqreduzidaICMS / wIcmsAliq, -2 );
															end;

															// Aplicar REDUÇÃO PERCENTUAL do valor do ICMS . Não aplicar reducao para empresa do simples pois so fazendo calculo para achar valor ST
															if (qOperFiscOPE_REDU_ICM.AsFloat > 0) then //and (fOPT_SIMPLES <> 'S') then
																wValorIcmsIndividual := Uteis.RoundTo ( wValorIcmsIndividual - (wValorIcmsIndividual * qOperFiscOPE_REDU_ICM.AsFloat/ 100),-2);

												 end;  // fim do laço ICMS

												 // ratear frete+seguro+despesas para substitução tributária
												 // na legislação da substituição tributária sempre é somado estes valores na base da substituição
												 if (wTemSubs = 'S') then
												 begin
															if wIcmsAliq=0 then
																 wIcmsAliq := wUfAliqIcmsForaEst;
															wRateioFreteSeguroDesp := Uteis.RoundTo ( (cdsNotaFiscalNF_VLFRETE.AsFloat + cdsNotaFiscalNF_VLSEGURO.AsFloat + cdsNotaFiscalNF_DESP_ACES.AsFloat) / wValorProdGeral * (CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat * CdsItemPedidoPRF_PRECO.AsFloat), -2);
                              wRateioFreteSeguroDesp := wRateioFreteSeguroDesp - wDescontoIndividual;
                              // wRateioFreteSeguroDesp := wRateioFreteSeguroDesp - (cdsPedidosPED_DESCTOVL.AsFloat / CdsItemPedido.RecordCount);
															wBaseValorSubs := Uteis.RoundTo ( wBaseValorSubs + wRateioFreteSeguroDesp, -2);
												 end;

										end;  // fim do laço CST

                    if not bIsentarICMS then
                    begin
                      // {Totalizando as base do Icms e o Vlr do Icms
                      wTotalBaseIcmsIndividual {BASE icms} := Uteis.RoundTo ( wTotalBaseIcmsIndividual + wBaseIcmsIndividual, -2);
                      wTotalBaseVlIcmsIndividual {valor icms} := Uteis.RoundTo ( wTotalBaseVlIcmsIndividual + wValorIcmsIndividual, -2);

                      wTotalBaseIcms := Uteis.RoundTo ( wTotalBaseIcms + wBaseIcms , -2);
                      wTotalVlBaseIcms := Uteis.RoundTo ( wTotalVlBaseIcms + wValorIcms, -2);
                    end;
										if ((CdsPedidosCLI_CONSFINAL.AsString = 'S') or (not (wTemSubs = 'S'))) then
										begin
												 // É consumidor final ou É venda interna -UF do cliente e da empresa emissora diferentes ou
												 wValorSubs := 0;
												 wBaseValorSubs := 0;
										end
										else // cliente nao é consumidor então aplicar MVA para a SUB.TRIB.
										begin
												 if (wTemSubs = 'S') then    // regras st
												 begin

															if lIsProdutoEspecifico and lIsMedicamento then
															begin
																	 wBaseValorSubs := Uteis.RoundTo( (CdsItemPedidoPRF_QTDE_FATURAR_CC.AsCurrency *  wPMC) * ( wReducaoBaseST / 100)  , -2 );
																	 wBaseValorSubs := Uteis.RoundTo( (CdsItemPedidoPRF_QTDE_FATURAR_CC.AsCurrency *  wPMC) - wBaseValorSubs , -2 );
																	 wIcmNoEstado :=   Uteis.RoundTo( (CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat * CdsItemPedidoPRF_PRECO.AsFloat) * ( wIcmsAliq / 100 ) , -2 );
																	 wIcmForaEstado := Uteis.RoundTo( wBaseValorSubs * (wUfAliqIcmsSubCli / 100), -2) ; // valor icm fora
																	 wValorSubs := wIcmForaEstado - wIcmNoEstado;

																	 if (wValorSubs > 0) then
																	 begin
																				wTotalBaseValorSubs := wTotalBaseValorSubs + wBaseValorSubs ;
																				wTotalValorSubs := wTotalValorSubs + wValorSubs ;
																	 end
																	 else
																			 wBaseValorSubs := 0;
															end
															else  // Verifica se o ST não é por CNAE
															if (CdsPedidosCLI_MODO_TRIB_ST.AsString = 'CNAE') and (CdsPedidosCNAE_CARGA_TRIB_MEDIA.AsFloat > 0) then
															begin
																	 wBaseValorSubs := Uteis.RoundTo ( wBaseValorSubs + (CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat * CdsItemPedidoPRF_PRECO.AsFloat), -2);
																	 wBaseValorSubs := wBaseValorSubs + wRateioFreteSeguroDesp;
																	 // Reducao da Base ST
																	 if (wReducaoBaseST > 0) and (wBaseValorSubs > 0) then
																		 wBaseValorSubs := wBaseValorSubs - (wBaseValorSubs * (wReducaoBaseST / 100));

																	 wCalBaseValorSubs := ((((wBaseValorSubs - wValorIPIIndividual) * (wUfAliqIcmsForaEst / 100)) + (wBaseValorSubs * (CdsPedidosCNAE_CARGA_TRIB_MEDIA.AsFloat / 100))) / (wUfAliqIcmsSubCli / 100));
																	 wValorSubs := wBaseValorSubs * (CdsPedidosCNAE_CARGA_TRIB_MEDIA.AsFloat / 100);
																	 wBaseValorSubs := wCalBaseValorSubs;

																	 if (wValorSubs > 0) then
																	 begin
																				wTotalBaseValorSubs := Uteis.RoundTo ( wTotalBaseValorSubs + wBaseValorSubs, -2);
																				wTotalValorSubs := Uteis.RoundTo ( wTotalValorSubs + wValorSubs, -2);
																	 end
																	 else
																			 wBaseValorSubs := 0;
															end
															else
															begin
																	 // Base Calc ST
																	 wBaseValorSubs := wBaseValorSubs + Uteis.RoundTo ( CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat * CdsItemPedidoPRF_PRECO.AsFloat, -2);
																	 wBaseValorProd := wBaseValorProd + Uteis.RoundTo ( CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat * CdsItemPedidoPRF_PRECO.AsFloat, -2);

																	 //Reducao da Base ST
																	 if (wReducaoBaseST > 0) and (wBaseValorSubs > 0) then
																			wBaseValorSubs := wBaseValorSubs - (wBaseValorSubs * wReducaoBaseST / 100);

																	 // UF destino
																	 if (wUfAliqIcmsSubCliRegra > 0) then
																			wUfAliqIcmsSubCli := wUfAliqIcmsSubCliRegra;

																	 // Regra Especial Calc Difal ST
                                   // nova regra de cálculo difal para todos os UF's
																	 if (bRegra<>0) and (wUfAliqMVA=0) and DBInicio.Empresa.PMT_HABILITAR_DIFAL Then  // MVA zerado na regra ou zerado por isenção icms para uso consumo (combustiveis)
																	 begin

																				wFator := RoundTo( (100 - wUfAliqIcmsSubCli) / 100, -3 );  // Fator -> Aliquota Interna: 18% = (100 - 18)/100 = 0,82
																				wIcms  := RoundTo( wBaseValorSubs * (wIcmsAliq/100) , -3 ); // 1000 * 4% = 40
                                        if bIsentarICMS then
                                          wIcms:= 0 ;
																				wDifalSt := RoundTo( wBaseValorSubs - wIcms, -3 ) ; // 1000 - 40 = 960
																				wDifalST := RoundTo( wDifalST / wFator,-3 ); // 960 / 0,82 = 1170,73

																				//wBaseValorSubs := wBaseValorProd ;


																				wDifalST := RoundTo( wDifalST * ( wUfAliqIcmsSubCli / 100 ), -3 ); // 1170,73 * 18% =210,43
																				wIcmDifalST := wDifalST - wIcms ; // 210,73 - 40 = 170,73
																				wDifalST := RoundTo( wIcmDifal / wBaseValorProd * 100, -3 ) ; // 170,73 / 1000 * 100 = 17,07

																				wValorSubs := wIcmDifalST;
																	 end
																	 Else
																	 Begin

																				wCalBaseValorSubs := Uteis.RoundTo ( wBaseValorSubs * wUfAliqMVA / 100, -3 );
																				wCalBaseValorSubs := Uteis.RoundTo ( wCalBaseValorSubs + wBaseValorSubs , -3);
																				wBaseValorSubs := wCalBaseValorSubs;

																				wUfResultMVA := Uteis.RoundTo ( wBaseValorSubs * wUfAliqIcmsSubCli / 100, -3 );
                                        if  not bIsentarICMS then
                                        begin
                                          if (wValorIcmsIndividual=0) and (wIcmsAliq<>0) then
                                             wIcmEstad := RoundTo( wBaseValorProd * (wIcmsAliq/100) , -3 )
                                          Else
                                             wIcmEstad := wValorIcmsIndividual;
                                        end;

																				if (wUfResultMVA > wValorIcmsIndividual ) then //VALOR DO ICMS SUBSTITUIÇÃO
																					 wValorSubs := Uteis.RoundTo ( wUfResultMVA - wIcmEstad, -3 )
																				else
																				begin
																						 wValorSubs := 0;
																						 wBaseValorSubs := 0;
																				end;

																	 end;

																	 if (wValorSubs > 0) then
																	 begin
                                     if ((bRegra<>0) or (wDifal>0)) and (wUfAliqMVA=0) and DBInicio.Empresa.PMT_HABILITAR_DIFAL Then
                                     begin
                                        wBaseValorSubs := wBaseValorSubs   +wValorSubs ;
																				wTotalBaseValorSubs := Uteis.RoundTo ( wTotalBaseValorSubs +wBaseValorSubs,-2 );
																				wTotalValorSubs := Uteis.RoundTo ( wTotalValorSubs + wValorSubs,-2 );
                                     end
                                     else
                                     begin
																				wTotalBaseValorSubs := Uteis.RoundTo ( wTotalBaseValorSubs + wBaseValorSubs,-2 );
																				wTotalValorSubs := Uteis.RoundTo ( wTotalValorSubs + wValorSubs,-2 );

                                     end;
																	 end
																	 else
																			 wBaseValorSubs := 0;

															end;
												 end
												 else
												 begin
															wValorSubs := 0;
															wBaseValorSubs := 0;
												 end;
										end;

										// PIS E COFINS é pelo valor dos produtos + frete+seguro+despesas-descontos quando houver
										// operação fiscal - Tributar PIS/COFINS - sobre pis e cofins vai frete + seguro + desp.acessorias

											 if (qOperFiscOPE_TRIBPISCOFINS.AsString = 'S') and (fEMP_PIS_ALIQ > 0) and (fEMP_COFINS_ALIQ > 0) then
											 begin

														// calcula desconto individual rateado
														vDescontoaux := (CdsPedidosPED_DESCTOVL.AsFloat / wValorProdGeral) * wValorProdIndividual;
														wRateioFreteSeguroDesp := Uteis.RoundTo ( (cdsNotaFiscalNF_VLFRETE.AsFloat + cdsNotaFiscalNF_VLSEGURO.AsFloat + cdsNotaFiscalNF_DESP_ACES.AsFloat) / wValorProdGeral * (CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat * CdsItemPedidoPRF_PRECO.AsFloat), -2);


														//PIS
                            if qOperFiscOPE_DESP_ACES_PIS_COFINS.AsString = 'S' then
  														wBasePIS := Uteis.RoundTo ( wValorProdIndividual + wRateioFreteSeguroDesp, -2)
                            else
                              wBasePIS := Uteis.RoundTo ( wValorProdIndividual, -2);

                            //  De acordo com a sentença do STF agora o ICMS não compoe mais a base de calculo do PIS e Cofins,
                            // então precisamos retirar o valor do ICMS de base de calculo
                            if (not DBInicio.Empresa.wPMT_RETIRAR_ICMS_BASECOFINSPIS)  then
                            begin
                                wBasePIS := wBasePIS - vDescontoaux;
                            end
                            else
                            begin
                              if bIsentarICMS then
                                wBasePIS := wBasePIS - vDescontoaux
                              else
    														wBasePIS := wBasePIS - vDescontoaux - wValorIcmsIndividual;
                            end;
														wAliquotaPIS := Uteis.RoundTo ( fEMP_PIS_ALIQ, -2);
                            if not MatchStr(femp_crt ,[ '1','2'])   then
                            begin
                              if not MatchStr(cstPISCOFINS,['04','05','06','07','08','09']) then
    														wValorPIS := Uteis.RoundTo ( wAliquotaPIS * wBasePIS / 100, -2) ;
                            end;


														//COFINS
                            if qOperFiscOPE_DESP_ACES_PIS_COFINS.AsString = 'S' then
                            	wBaseCOFINS := Uteis.RoundTo ( wValorProdIndividual + wRateioFreteSeguroDesp , -2 )
                            else
                              wBaseCOFINS := Uteis.RoundTo ( wValorProdIndividual , -2 );

                            if (not DBInicio.Empresa.wPMT_RETIRAR_ICMS_BASECOFINSPIS) then
                            begin
                                wBaseCOFINS := wBaseCOFINS - vDescontoaux;
                            end
                            else
                            begin
                              if bIsentarICMS then
    														wBaseCOFINS := wBaseCOFINS - vDescontoaux
                              else
                                wBaseCOFINS := wBaseCOFINS - vDescontoaux - wValorIcmsIndividual
                            end;
														wAliquotaCOFINS := Uteis.RoundTo ( fEMP_COFINS_ALIQ, -2);
                            if not MatchStr(femp_crt ,[ '1','2'])   then
                            begin
                               if not MatchStr(cstPISCOFINS,['04','05','06','07','08','09']) then
      														wValorCOFINS := Uteis.RoundTo ( (wAliquotaCOFINS * wBaseCOFINS) / 100, -2);

                            end;
                            if not MatchStr(cstPISCOFINS,['99','98','49']) then
                            begin
  														wValorTotalPIS := Uteis.RoundTo ( wValorTotalPIS + wValorPIS, -2);
	  													wValorTotalCOFINS := Uteis.RoundTo ( wValorTotalCOFINS + wValorCOFINS, -2 );
                            end;


                            //ncm que reduz valor liquido como desconto
                            if CdsItemPedidoIPI_REDVLLIQ.AsString = 'S' then
                              wDescPISCofins := wDescPISCofins + wValorPIS +  wValorCOFINS;

											 end;

										//zera valores de base e valor do icms que foram usados para calculo da substituição tributario caso necessario
										if ((fOPT_SIMPLES = 'S') and (GetCSOSN <> 900) and (femp_crt = '1')) or bIsentarICMS or (qOperFiscOPE_TRIBICMS.AsString = 'N') then
										begin
												 // tem variavel sobrando - revisar - 30/03/2011 marcio
												 wBaseIcms := 0;
												 wValorIcms := 0;
												 wIcmsAliq := 0;
												 wValorIcmsIndividual := 0;
												 wBaseIcmsIndividual := 0;
                         //wTotalBaseIcms
                         //não zerar isentar icms pode ter outros produtos que tem icms
//                         if not bIsentarICMS   then
//                         begin
//                           wTotalBaseIcms := 0;
//                           wTotalVlBaseIcms := 0;
//                           wTotalBaseIcmsIndividual := 0;
//                           wTotalBaseVlIcmsIndividual := 0;
//                         end;

										end;

										// Calcular o Preco da Materia-Prima
										openaux ( 'SELECT F1.PRD_REFER, CAST(SUM(F1.FTI_UC*P1.PRD_PCUSTO) AS NUMERIC(15,4)) '+
															'FROM FTC_IT01 F1 '+
															'     JOIN PRD0000 P1 ON (P1.PRD_REFER = F1.PRD_REFER_ITENS) '+
															'WHERE F1.PRD_REFER = ' + qStr(CdsItemPedidoPRD_REFER.AsString) + ' AND F1.FTI_MODE1= '+qStr('X')+
                              iif(DBInicio.empresa.wPMT_FATURA_MULTIEMPRESA,
                                   ConcatSe( '  and f1.', dbInicio.exclusivoSql( 'PRODUTOS' ,EmpCodigo) ),
                                   ConcatSe( '  and f1.', dbInicio.exclusivoSql( 'PRODUTOS' ) )) +

															' GROUP BY F1.PRD_REFER ORDER BY F1.PRD_REFER ' );

										if not qAux.IsEmpty then
											 wPrecoMatPrima := Uteis.RoundTo ( qAux.Fields[1].AsFloat , -4);



										CurrNumNota.Text := StrZero(CurrNumNota.Text, 6);
										Gravar_Item_Nota(StrZero(CurrNumNota.Text,6) , CdsItemPedidoPRD_REFER.AsString);

										// Atualiza a Qtde Faturada nos Itens do Pedido
										ExecSql( 'Update PED_IT01 set '+
														 'PRF_QTDEFAT  = (PRF_QTDEFAT + '+FloatTosql(CdsItemPedidoPRF_QTDE_FATURAR_CC.asFloat)+') '+
														 'where PRF_REGISTRO = '+qStr(CdsItemPedidoPRF_REGISTRO.AsString) ,false);
               end;
					end // é agregado e vai mostrar na nota se somente o parametro dizendo que deve imprimir agregado com valores zerados
          else if (CdsItemPedidoPRF_PRODUTO_SEMVALOR.AsString = 'S') then
          begin
 					  Gravar_Item_Nota(StrZero(CurrNumNota.Text,6) , CdsItemPedidoPRD_REFER.AsString);
          end;
          if EmpCodigo <> EmpCodigoOriginal then
            ExecSql( 'Update PED_IT01 set '+
                     ' EMP_CODIGO = '+QuotedStr(EmpCodigo) +
                      'where PRF_REGISTRO = '+qStr(CdsItemPedidoPRF_REGISTRO.AsString),false );

					CdsItemPedido.Next;
		 end;  //FIM WHILE CdsItemPedido

		 CdsItemPedido.First;
		 wCALCULO := (100 - ((100 * CdsPedidosPED_DESCTOPC1.AsFloat) / 100));
		 wCALCULO := (wCALCULO - ((wCALCULO * CdsPedidosPED_DESCTOPC2.AsFloat) / 100));
		 wPorcDescto := ((100 - wCALCULO));
end;

procedure TFormFatPedido.DBMemoObsExit(Sender: tObject);
begin
	sObsNota := CdsNotaFiscalNF_OBSERVACAO.AsString;
end;

procedure TFormFatPedido.RadEntradaClick(Sender: TObject);
begin
	inherited;
	AjustaFiltroCfop;
end;

procedure TFormFatPedido.RadSaidaClick(Sender: TObject);
begin
     inherited;
     AjustaFiltroCfop;
end;

procedure TFormFatPedido.RxDataEmissaoExit(Sender: TObject);
begin
  inherited;
  if RxDataEmissao.Date > RxDataSaida.Date then
  begin
       uteis.aviso('Data de Emissão não poder ser maior que a Data de Saída !');
       RxDataEmissao.SetFocus;
  end;
end;

procedure TFormFatPedido.EdTransportadoraCodigoExit(Sender: tObject);
begin
     EdTransportadoraCodigo.Text := StrZero(EdTransportadoraCodigo.Text, 3);
     if (EdTransportadoraCodigo.Text = '000') then
     begin
          EdTransportadoraCodigo.Clear;
          DBEditPlacaVeiculo.Clear;
          DBEdPlaca.Clear;
          CbTransportadora.Text := '';
     end
     else
     begin
          CbTransportadora.IdRetorno := EdTransportadoraCodigo.Text;
          if (CbTransportadora.IdRetorno<>'') then
             BuscarPlacaVeiculoTransportadora
          else
          begin
               uteis.aviso('Transportadora não localizada com o código informado');
               EdTransportadoraCodigo.SetFocus;

          end;
     end;
end;

function TFormFatPedido.EstoqueInsuficiente: boolean;
var Clone: TClientDataSet;
begin
    result:= False;
    if not (fwPMT_FATURAR_PENDENCIAS)  and (fwAtualizaEstoque = 'P') then
    begin
      clone := TClientDataSet.Create(Self);
      try
        clone.CloneCursor(CdsItemPedido,FALSE);
        clone.Filter := '(PRF_QTDE_FATURAR_CC > 0) AND (PRF_PRODUTO_AGREGADO =  ''N'') ';
        clone.Filtered := True;
        Result := clone.RecordCount =0 ;

      finally
        FreeAndNil(clone);
      end;


    end;
end;

procedure TFormFatPedido.CbTransportadoraSelect(Sender: tObject);
begin
     EdTransportadoraCodigo.Text := CbTransportadora.CodigoLista;
     BuscarPlacaVeiculoTransportadora ;
end;

procedure TFormFatPedido.btnAdicionarClick(Sender: TObject);
begin
  inherited;
  if not Assigned(frmpesqChaverefer) then
     frmPesqChaveRefer := TfrmPesqChaveRefer.Create(self);
  frmPesqChaveRefer.registro := ChavePrimariaNF;
  frmpesqchaverefer.ShowModal;
end;

procedure TFormFatPedido.btnEmpresaClick(Sender: TObject);
begin
  inherited;
  if not Assigned(frmPesqEmpresa) then
    frmPesqEmpresa := TfrmPesqEmpresa.Create(Application);
  frmPesqEmpresa.EmpCodigo := EmpCodigo;
  frmPesqEmpresa.ShowModal;
  if frmPesqEmpresa.IDRetorno <> '' then
  begin
    EmpCodigo := frmPesqEmpresa.IDRetorno;
    CarregarParametros;
    frmPesqEmpresa := nil;
  end;
end;

procedure TFormFatPedido.btnLimparClick(Sender: TObject);
begin
  inherited;
  CdsItemPedido.First;
  while not CdsItemPedido.Eof do
  begin
    CdsItemPedido.Edit;
    CdsItemPedidoPRF_QTDE_FATURAR_CC.asCurrency := 0;
    CdsItemPedidoTOTAL_FATURAR.asCurrency := 0;
    CdsItemPedido.Post;
    CdsItemPedido.Next;
  end;
end;

procedure TFormFatPedido.btnMudaNumeroFaturaClick(Sender: tObject);
var nomevar: string;
    N, C, NumeroFaturaAtual, NumeroFaturaNota: integer;
    bEscritaF: Boolean;
begin
     CurrNumNota.Text := StrZero(CurrNumNota.Text, CurrNumNota.MaxLength);
     nomevar := inputbox('Ínforme o Número da Fatura', 'Digite o número', '');
     val(nomevar, N, C);
     if c = 0 then
     begin
          bEscritaF := qOperFiscOPE_ESCRITA.AsString = 'S';
          NumeroFaturaAtual := CurrNumNota.AsInteger;
          NumeroFaturaNota := StrToInt(nomevar);

          if (VerificaNumeroUtilizado(NumeroFaturaNota)) then
             uteis.aviso('Este número já foi utilizado!')
          else
          begin
              if (NumeroFaturaAtual <= NumeroFaturaNota) then
              begin
                  if (bEscritaF) then
                     nomevar := 'NF_NOTANUMBER_S'
                  else
                     nomevar := 'NF_NOTANUMBER_N';
                  ExecSql( 'UPDATE sys_sequenciador '+
                           'SET sequencia_valor = ' + IntToStr(NumeroFaturaNota) +
                           ' WHERE sequencia_empresa = ' + QStr(EmpCodigo) +
                           ' AND sequencia_tabela = '+qStr('NF0001')+
                           ' AND sequencia_campo = '+qStr(nomevar) );
                  bIniciadoNumeracao := True;
                  bEscrita := bEscritaF;
              end
              else
              begin
                  if (bEscrita) then
                     SequenciadorPRC(dbConn, EmpCodigo, 'NF0001', 'NF_NOTANUMBER_S', 1, StrZero(CurrNumNota.Text,6))
                  else
                     SequenciadorPRC(dbConn, EmpCodigo, 'NF0001', 'NF_NOTANUMBER_N', 1, StrZero(CurrNumNota.Text,6));
                  bIniciadoNumeracao := True;
              end;
              bAlteradoManual := True;
              CurrNumNota.Text := StrZero(IntToStr(NumeroFaturaNota), 6);
         end
     end
     else
     if nomevar<>'' then
         showmessage('Informe um dado numérico !');
end;

procedure TFormFatPedido.CurrNumNotaChange(Sender: tObject);
begin
     btnMudaNumeroFatura.Enabled := False;
     if (StrZero(IntToStr(CurrNumNota.AsInteger), 6) <> '000000') and (StrZero(IntToStr(CurrNumNota.AsInteger), 6) <> '990000') then
        btnMudaNumeroFatura.Enabled := True;
end;

procedure TFormFatPedido.CurrNumNotaExit(Sender: TObject);
begin
     inherited;
     AdicionaNumeroFatura;
end;

function TFormFatPedido.VerificaNumeroUtilizado(numero: Integer): Boolean;
begin
     Result := BuscaUmDadoSqlasInteger ( 'Select cast(count(*) as integer) as conta from    FAT0000 '+
                                         'where FAT_CODIGO = '+qStr(StrZero(IntToStr(numero),6))+
                                          iif(DBInicio.empresa.wPMT_FATURA_MULTIEMPRESA,
                                         ConcatSe( ' and ', dbInicio.ExclusivoSql('RECEBER',EmpCodigo) ),
                                         ConcatSe( ' and ', dbInicio.ExclusivoSql('RECEBER') ))) <>0;
end;

procedure TFormFatPedido.DBEditPesoBrutoExit(Sender: tObject);
begin
      if cdsNotaFiscalNF_PESOBRU.AsFloat = 0 then
         w_Nao_Quer_Peso_Na_NF := 'S';     //usuario zerou peso e nao quer na nota
end;

procedure TFormFatPedido.DBEditPesoLiqExit(Sender: tObject);
begin
      if cdsNotaFiscalNF_PESOLIQ.AsFloat = 0 then
         w_Nao_Quer_Peso_Na_NF := 'S';     //usuario zerou peso e nao quer na nota
end;

Function TFormFatPedido.GetCSOSN: integer ;
begin
   result := fiCSOSN;
     if qOperFiscEMP_CSOSN.AsInteger<>0 then
        result := qOperFiscEMP_CSOSN.AsInteger; // pega da cfop
     if (qOperFiscEMP_CSOSN_ST.AsInteger <> 0) and (wTemSubs = 'S') then
       Result := qOperFiscEMP_CSOSN_ST.AsInteger;
end;

procedure TFormFatPedido.CdsItemPedidoPRD_REFERGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
     if Sender.asstring='' then
        text:=CdsItemPedidoPRDCO_CODIGO_ORIGINAL.AsString
     else
        text:=Sender.AsString ;

end;

procedure TFormFatPedido.CdsNotaFiscalAfterInsert(DataSet: TDataSet);
begin
     inherited;
     CdsNotaFiscalNF_SERIE.asstring := fSerieNF;
     CdsNotaFiscalNF_MODELO_NF.asstring := fwNFModelo;
     CdsNotaFiscalNF_HORASAIDA.AsString := TimeToStr(time);
     CdsNotaFiscalNF_VLFrete.AsFloat := 0;
     CdsNotaFiscalNF_VLSeguro.AsFloat := 0;
     CdsNotaFiscalNF_DESP_ACES.AsFloat := 0;
     CdsNotaFiscalNF_QTDE.AsFloat := 0;
     CdsNotaFiscalNF_MARCA.AsString := fwPrmMarca;
     CdsNotaFiscalNF_ESPECIE.AsString := fwPrmEspecie;
     CdsNotaFiscalNF_PESOBRU.AsFloat := 0;
     CdsNotaFiscalNF_PESOLIQ.AsFloat := 0;
     CdsNotaFiscalNF_COMPLEMENTAR.AsString := 'N';
end;

procedure TFormFatPedido.CdsRecParceBeforeInsert(DataSet: TDataSet);
var a: integer;
begin
  inherited;

  a:=1;
end;

procedure TFormFatPedido.BuscaIBPT( const pNCM: string; var vAliqImp, vAliqNac, vAliqEst: Currency ); // usado no fat0003
var vEX: string;
begin
     vEx:=BuscaUmDadoSqlAsString('SELECT IPI_EX FROM IPI0000 WHERE IPI_CODIGO='+qStr(pNCM));
     openAux3( 'Select IBPT_ALIQFEDNACIONAL, IBPT_ALIQFEDIMPORTADO, IBPT_ALIQESTADUAL FROM IBPT0000 '+
               'WHERE IBPT_TABELA=0 AND IBPT_NCM='+qStr(pNCM)+' AND IBPT_EX='+qStr(vEX) );
     vAliqNac:=qAux3.Fields[0].AsCurrency;
     vAliqImp:=qAux3.Fields[1].AsCurrency;
     vAliqEst:=qAux3.Fields[2].AsCurrency;
     qAux3.Close;
end;

Function TFormFatPedido.LerCestProduto( const RefProduto: string ):string; // usado em fat0003
begin
      Result  := BuscaUmDadoSqlAsString('select CEST_COD from PRD0000 where EMP_CODIGO='+qStr(EmpCodigo)+' AND PRD_REFER='+qStr(RefProduto));
End;


function TFormFatPedido.NotaParcial: boolean;
var clone: TClientDataSet;
begin
  clone := TClientDataSet.Create(Self);
  try
    result:= False;
    clone.CloneCursor(CdsItemPedido,false);
    clone.First;
    while not clone.Eof do
    begin
      if clone.FieldByName('PRF_QTDE').AsFloat <>  clone.FieldByName('PRF_QTDE_FATURAR_CC').AsFloat then
      begin
        result:= True;
        break;
      end;
      clone.Next;
    end;

  finally
    clone.Free;
  end;

end;

procedure TFormFatPedido.AdicionaNumeroFatura;
var seq: string;
begin
  BeginTransaction;
  try
    fat_codigo := '';
     if Integrar and (not bIniciadoNumeracao) then
     begin
      fat_codigo:= BuscaUmDadoSqlAsString('SELECT FIRST 1 FAT_CODIGO FROM FAT0000 '+
                                          ' WHERE PED_CODIGO = '+QuotedStr( CdsPedidosPED_CODIGO.AsString) +
                                        iif(DBInicio.empresa.wPMT_FATURA_MULTIEMPRESA,
                                       ConcatSe( ' and ', dbInicio.ExclusivoSql('RECEBER',EmpCodigo) ),
                                       ConcatSe( ' and ', dbInicio.ExclusivoSql('RECEBER') )));
      CurrNumNota.Text := StrZero(fat_codigo,6) ;

     end
     Else
       CurrNumNota.Text := StrZero(CurrNumNota.Text, 6);

     if (CbOper.idRetorno <> '') and (fat_codigo = '') then
     begin
         OpenAux('select ope_tipo from OPE0000_VIEW_PESQUISA where ope_codigo = '+QuotedStr(CbOper.idRetorno) );
         RadSaida.Checked :=  qaux.FieldByName('ope_tipo').AsString = 'S';
         RadEntrada.Checked :=  qaux.FieldByName('ope_tipo').AsString = 'E';
          if (not bIniciadoNumeracao) and (not chkNotaConsumidor.Checked) then
          begin
               if (qOperFiscOPE_ESCRITA.AsString = 'N') then  // sem nf
               begin
                    CurrNumNota.Text := SequenciadorPRC( dbConn, EmpCodigo, 'NF0001', 'NF_NOTANUMBER_N', 0);
                    bIniciadoNumeracao := True;
                    bEscrita := False;
               end
               else
               if (qOperFiscOPE_ESCRITA.AsString = 'S') then // com nf
               begin
                    CurrNumNota.Text := SequenciadorPRC( dbConn, EmpCodigo, 'NF0001', 'NF_NOTANUMBER_S',0 );
                    //seq := SequenciadorPRC( dbConn, EmpCodigo, 'NF0001', 'NF_NOTANUMBER_S', 1, CurrNumNota.Text);
                    bIniciadoNumeracao := True;
                    bEscrita := True;
               end;
          end
          else
          begin
               if ((QOperFiscOPE_ESCRITA.AsString = 'N') and (bEscrita)) or (chkNotaConsumidor.Checked) then
               begin
                    SequenciadorPRC( dbConn, EmpCodigo, 'NF0001', 'NF_NOTANUMBER_S', 1, CurrNumNota.Text);
                    CurrNumNota.Text := SequenciadorPRC( dbConn, EmpCodigo, 'NF0001', 'NF_NOTANUMBER_N', 0);

                    // fatura + 1 para nao pegar mesma sequencia do faturamento
                    //CurrNumNota.Text := IntToStr(StrToInt(CurrNumNota.Text)+1);

                    bIniciadoNumeracao := True;
                    bEscrita := False;
               end
               else
               if (QOperFiscOPE_ESCRITA.AsString = 'S') and (not bEscrita) then
               begin
                    SequenciadorPRC( dbConn, EmpCodigo, 'NF0001', 'NF_NOTANUMBER_N', 1, CurrNumNota.Text);
                    CurrNumNota.Text := SequenciadorPRC( dbConn, EmpCodigo, 'NF0001', 'NF_NOTANUMBER_S', 0);
                    bIniciadoNumeracao := True;
                    bEscrita := True;
               end;
          end;
     end;
     CurrNumNota.Text := StrZero(CurrNumNota.Text, 6);

     if (CurrNumNota.Text <> '000000') and not Integrar then
        if BuscaUmDadoSqlASINTEGER( 'SELECT NF_REGISTRO FROM NF0001 WHERE NF_NOTANUMBER = ' +
                                    qStr(STRZero(CurrNumNota.Text, 6)) +
                                    ' and EMP_CODIGO = ' + qStr(EmpCodigo) )>0 then
        begin
             bIniciadoNumeracao := False;
             AdicionaNumeroFatura;
        end;
     //CarregaTelaNF;
   committransaction;
  Except
    on E:EXception do
     raise Exception.Create(E.Message );
  end;
end;

procedure TFormFatPedido.RemoveNumeroFatura;
begin
  BeginTransaction;
  try
   if (bIniciadoNumeracao) and (not bAlteradoManual) then
   begin
        if (bEscrita) then
           SequenciadorPRC( dbConn, EmpCodigo, 'NF0001', 'NF_NOTANUMBER_S', 1, CurrNumNota.Text)
        else
           SequenciadorPRC( dbConn, EmpCodigo, 'NF0001', 'NF_NOTANUMBER_N', 1, CurrNumNota.Text);
        bIniciadoNumeracao := False;
        bEscrita := False;
   end;
   CurrNumNota.Text := sTRZero('0', 6);

  committransaction;
  Except
    on E:EXception do
     raise Exception.Create(E.Message );
  end;
end;



function TFormFatPedido.VerificaLancamentosContasReceber: Boolean;
var
  proxima, nParcelas, intervalo, j: integer;
  primeira, vencimento: TDate;
begin
  Result := True;

  OpenAux('SELECT * FROM PCL0000 WHERE PCL_CODIGO = ' + QuotedStr(CdsPedidosPCL_CODIGO.AsString) );
  nParcelas := qAux.FieldByName('PCL_NPARCELAS').AsInteger;

  if (
        BuscaUmDadoSqlAsInteger(
        'SELECT count(fP.FAT_CODIGO) FROM FAT0000 f ' +
        '  JOIN FAT_PC01 fp ON (fp.FAT_CODIGO = f.FAT_CODIGO  AND fp.EMP_CODIGO = f.EMP_CODIGO ) ' +
        ' AND f.FAT_CODIGO = ' + QuotedStr(StrZero(CurrNumNota.Text, 6)) + ' AND f.EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo)
        ) <> nParcelas
     )
  AND (
        (
          BuscaUmDadoSqlAsInteger(
          'SELECT count(f.FAT_CODIGO) FROM FAT0000 f ' +
          ' WHERE f.FAT_CODIGO = ' + QuotedStr(StrZero(CurrNumNota.Text, 6)) + ' AND f.EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo)) = 1
        )
        AND
        ( DBInicio.GetParametroSistema('PMT_LANCA_CONTA_CORRENTE_VERBA') = '0' )
      )
  then
  begin
    if MessageDlg('ATENÇÃO!!! ' + #13 + #13 + 'O Contas a Receber não foi lançado.' + #13 + #13 + 'Deseja prosseguir?', mtWarning, [mbYes, mbNo], 0) <> mrYes then
    begin
      Result := False;
      Exit;
    end;

  end;

  if BuscaUmDadoSqlAsCurrency(
    'SELECT SUM(fp.FPC_VLPARC) FROM FAT0000 f ' +
    ' JOIN FAT_PC01 fp ON (fp.FAT_CODIGO = f.FAT_CODIGO  AND fp.EMP_CODIGO = f.EMP_CODIGO ) ' +
    ' AND f.FAT_CODIGO = ' + QuotedStr(StrZero(CurrNumNota.Text, 6)) + ' AND f.EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo)
  ) <> wFAT_VLFAT
  then
  begin
    if MessageDlg('ATENÇÃO!!! ' + #13+ #13 + 'O total de parcelas lançadas no Contas a Receber diverge do total da fatura.'+ #13 + #13 + 'Deseja prosseguir?', mtWarning, [mbYes, mbNo], 0) <> mrYes then
    begin
      Result := False;
    end;
  end;

  intervalo := qAux.FieldByName('PCL_DIASENTREP').AsInteger;
  primeira := RxDataEmissao.Date + qAux.FieldByName('PCL_CARENC_PRI').AsInteger;
  vencimento := primeira;
  for j := 1 to nParcelas do
  begin
    OpenAux2('SELECT * FROM FAT_PC01 fp ' +
             ' WHERE FAT_CODIGO = '+ QuotedStr(StrZero(CurrNumNota.Text, 6)) +
             ' AND EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo) +
             ' AND FPC_DTEMIS = ' + DateToSQL(RxDataEmissao.Date) +
             ' AND FPC_VENCTO = ' + DateToSQL(vencimento)
            );
     if qAux2.IsEmpty then
       if MessageDlg('ATENÇÃO!!! ' + #13+ #13 + 'As datas de vencimento das parcelas lançadas no Contas a Receber divergem das datas da fatura.'+ #13 + #13 + 'Deseja prosseguir?', mtWarning, [mbYes, mbNo], 0) <> mrYes then
       begin
         Result := False;
         Exit;
       end;

    qAux.Next;
    vencimento := vencimento + intervalo;
  end;



end;

procedure TFormFatPedido.InsereCreditoContasReceber(CreditoContaCR: double);
var
  repCodigo,
  banCodigo,
  cctCodigo,
  pcxCodigo,
  fpcCobTipo,
  fpcTipodoc,
  fpcSitPag, // L
  fpcStatus, // Liquidada
  cliCodigo,
  fpcImpDup,
  empCodigo,
  fpcPrevisao,
  fpcStatusRemessa,
  fpcDescontado,
  fpcConfirmaDevolucao,
  fpcExclusao,
  usuLogin,
  fatNumSerie
   : string;

  fpcDtEmis,
  fpcVencto,
  fpcPagto : TDateTime;

  fpcVlParc,
  fpcVlPago : double;

  fpcNParcelas, // vamos ver se aceita 1
  banCodApelido,
  usuCodigo,
  fpgRegistro : integer;
begin


     if (DBInicio.GetParametroSistema('PMT_LANCA_CONTA_CORRENTE_VERBA') = '1') and (CreditoContaCR > 0) then
     begin
        FormFatPedido.CdsRecParce.First;
        repCodigo := FormFatPedido.CdsRecParceREP_CODIGO.AsString;
        banCodigo := FormFatPedido.CdsRecParceBAN_CODIGO.AsString;
        cctCodigo := FormFatPedido.CdsRecParceCCT_CODIGO.AsString;
        pcxCodigo := FormFatPedido.CdsRecParcePCX_CODIGO.AsString;
        fpcDtEmis := Date;
        fpcNParcelas := 1; // vamos ver se aceita 1
        fpcCobTipo := FormFatPedido.CdsRecParceFPC_COBTIPO.AsString;
        fpcTipodoc := FormFatPedido.CdsRecParceFPC_TIPODOC.AsString;
        fpcSitPag := 'L';
        fpcStatus := 'Liquidada';
        fpcVencto := Date;
        fpcPagto := Date;
        fpcVlParc := CreditoContaCR;
        fpcVlPago := CreditoContaCR;
        cliCodigo := FormFatPedido.CdsRecParceCLI_CODIGO.AsString;
        fpcImpDup := 'N';
        empCodigo := FormFatPedido.CdsRecParceEMP_CODIGO.AsString;
        fpcPrevisao := 'N';
        fpcStatusRemessa := 'N';
        banCodApelido := FormFatPedido.CdsRecParceBAN_COD_APELIDO.AsInteger;
        fpcDescontado := 'N';
        fpcConfirmaDevolucao := 'N';
        fpcExclusao := 'N';
        usuCodigo := FormFatPedido.CdsRecParceUSU_CODIGO.AsInteger;
        usuLogin := FormFatPedido.CdsRecParceUSU_LOGIN.AsString;
        fatNumSerie := FormFatPedido.CdsRecParceFAT_NUMSERIE.AsString;
        fpgRegistro := StrToInt(DBInicio.GetParametroSistema('PMT_LANCA_CC_VERBA_FPG_REGISTRO'));

        FormFatPedido.CdsRecParce.Append;
        FormFatPedido.CdsRecParceFAT_REGISTRO.asinteger:=dbInicio.GetNextSequence( 'GEN_FAT_PC01_REGISTRO');
        FormFatPedido.CdsRecParceFAT_CODIGO.AsString := strzero(FormFatPedido.CurrNumNota.Text, 6);
        FormFatPedido.CdsRecParceFPC_NUMER.AsString := '00';
        FormFatPedido.CdsRecParceREP_CODIGO.AsString := repCodigo;
        FormFatPedido.CdsRecParceBAN_CODIGO.AsString := banCodigo;
        FormFatPedido.CdsRecParcePCX_CODIGO.AsString := pcxCodigo ;
        FormFatPedido.CdsRecParceFPC_DTEMIS.AsDateTime := fpcDtEmis ;
        FormFatPedido.CdsRecParceFPC_NPARCELAS.AsInteger := fpcNParcelas ;
        FormFatPedido.CdsRecParceFPC_COBTIPO.AsString := fpcCobTipo ;
        FormFatPedido.CdsRecParceFPC_TIPODOC.AsString := fpcTipodoc ;
        FormFatPedido.CdsRecParceFPC_SITPAG.AsString := fpcSitPag ;
        FormFatPedido.CdsRecParceFPC_STATUS.AsString := fpcStatus ;
        FormFatPedido.CdsRecParceFPC_VENCTO.AsDateTime := fpcVencto ;
        FormFatPedido.CdsRecParceFPC_PAGTO.AsDateTime := fpcPagto ;
        FormFatPedido.CdsRecParceFPC_VLPARC.AsCurrency := fpcVlParc ;
        FormFatPedido.CdsRecParceFPC_VLPAGO.AsCurrency := fpcVlPago ;
        FormFatPedido.CdsRecParceCLI_CODIGO.AsString := cliCodigo ;
        FormFatPedido.CdsRecParceFPC_IMPDUP.AsString := fpcImpDup ;
        FormFatPedido.CdsRecParceEMP_CODIGO.AsString := empCodigo ;
        FormFatPedido.CdsRecParceFPC_PREVISAO.AsString := fpcPrevisao ;
        FormFatPedido.CdsRecParceFPC_STATUS_REMESSA.AsString := fpcStatusRemessa ;
        FormFatPedido.CdsRecParceBAN_COD_APELIDO.AsInteger := banCodApelido ;
        FormFatPedido.CdsRecParceFPC_DESCONTADO.AsString := fpcDescontado ;
        FormFatPedido.CdsRecParceFPC_CONFIRMADEVOLUCAO.AsString := fpcConfirmaDevolucao ;
        FormFatPedido.CdsRecParceFPC_EXCLUSAO.AsString := fpcExclusao ;
        FormFatPedido.CdsRecParceUSU_CODIGO.AsInteger := usuCodigo ;
        FormFatPedido.CdsRecParceUSU_LOGIN.AsString := usuLogin ;
        FormFatPedido.CdsRecParceFAT_NUMSERIE.AsString := fatNumSerie ;
        FormFatPedido.CdsRecParceFPG_REGISTRO.AsInteger := fpgRegistro ;
        FormFatPedido.CdsRecParce.Post;
        FormFatPedido.CdsRecParce.ApplyUpdates(0);
     end;




end;



procedure TFormFatPedido.NotaDeDevolucao;
begin
  OpenAux3('SELECT * ' +
          ' FROM ENF_DEVOLUCAO  ' +
          ' WHERE PED_CODIGO = ' + QuotedStr(CdsPedidosPED_CODIGO.AsString) + ' AND EMP_CODIGO = ' + QuotedStr(DBInicio.EMP_CODIGO)
  );

   CdsNotaFiscalNF_BASEICMS.AsFloat := qAux3.FieldByName('ENF_BASEICMS').AsFloat;
   CdsNotaFiscalNF_ALIQ_ICMS.AsFloat := qAux3.FieldByName('ENF_ALIQ_ICMS').AsFloat;
   CdsNotaFiscalNF_VL_ICMS.AsFloat := qAux3.FieldByName('ENF_VL_ICMS').AsFloat;
   CdsNotaFiscalNF_VLBASESUBTRIB.AsFloat := qAux3.FieldByName('ENF_VLBASESUBTRIB').AsFloat;
   CdsNotaFiscalNF_VL_SUBTRIB.AsFloat := qAux3.FieldByName('ENF_VL_SUBTRIB').AsFloat;
   CdsNotaFiscalNF_VL_IPI.AsFloat := qAux3.FieldByName('ENF_VL_IPI').AsFloat;
   CdsNotaFiscalNF_BASE_IPI.AsFloat := qAux3.FieldByName('ENF_BASE_IPI').AsFloat;
   // CdsNotaFiscalENF_VLPIS := NÃO EXISTE REFERENCIA NO COMPONENTE CdsNotaFiscal...
   CdsNotaFiscalNF_VALORTOT_COFINS.AsFloat := qAux3.FieldByName('ENF_VLCOFINS').AsFloat;
   CdsNotaFiscalNF_ALIQCOFINS.AsFloat := qAux3.FieldByName('ENF_ALIQCOFINS').AsFloat;
   CdsNotaFiscalNF_ALIQPIS.AsFloat := qAux3.FieldByName('ENF_ALIQPIS').AsFloat;
   // CdsNotaFiscalNF_CHAVE_NFE_REFERENCIADA.AsString; JÁ FOI ATRIBUIDO NO FORMSHOW

end;

procedure TFormFatPedido.ItensDaNotaDeDevolucao(var sNF_IPIALIQ, sNF_ICMSVALOR: Currency; sNF_SUBTRIBASE, sNF_ALIQSUBTRIB, sNF_VLSUBST: string)  ;
var
  EnfNotaNumber, EnfSerie, ForCodigo, EmpCodigo, prdRefer: string;
begin
  OpenAux3('SELECT * ' +
          ' FROM ENF_DEVOLUCAO  ' +
          ' WHERE PED_CODIGO = ' + QuotedStr(CdsPedidosPED_CODIGO.AsString) + ' AND EMP_CODIGO = ' + QuotedStr(DBInicio.EMP_CODIGO)
  );
  EnfNotaNumber := qAux3.FieldByName('ENF_NOTANUMBER').AsString;
  EnfSerie := qAux3.FieldByName('ENF_SERIE').AsString;
  ForCodigo := qAux3.FieldByName('FOR_CODIGO').AsString;
  EmpCodigo := qAux3.FieldByName('EMP_CODIGO').AsString;
  PrdRefer := CdsItemPedidoPRD_REFER.AsString;

  OpenAux3('SELECT * ' +
          ' FROM ENF_IT_DEVOLUCAO  ' +
          ' WHERE ENF_IT_NOTANUMBER = ' + QuotedStr(EnfNotaNumber) +
          ' AND ENF_SERIE = ' + QuotedStr(EnfSerie) +
          ' AND FOR_CODIGO = ' + QuotedStr(ForCodigo) +
          ' AND EMP_CODIGO = ' + QuotedStr(EmpCodigo) +
          ' AND PRD_REFER = ' + QuotedStr(PrdRefer)
  );
  wBaseIPIIndividual := qAux3.FieldByName('ENF_IT_BASEIPI').AsFloat;
  sNF_IPIALIQ := qAux3.FieldByName('ENF_IPIALIQ').AsFloat;
  wValorIPIIndividual := qAux3.FieldByName('ENF_IT_VLIPI').AsFloat;
  wBaseIcmsIndividual := qAux3.FieldByName('ENF_IT_BASEICMS').AsFloat;
  wIcmsAliq := qAux3.FieldByName('ENF_ICMSALIQ').AsFloat;
  sNF_ICMSVALOR := qAux3.FieldByName('ENF_ICMS').AsFloat;
  sNF_SUBTRIBASE := qAux3.FieldByName('ENF_IT_BASESUBTRIB').AsString;
  sNF_ALIQSUBTRIB := qAux3.FieldByName('ENF_IT_ALIQSUBTRIB').AsString;
  sNF_VLSUBST := qAux3.FieldByName('ENF_VLSUBST').AsString;
  wBasePIS := qAux3.FieldByName('ENF_BASEPIS').AsFloat;
  wAliquotaPIS := qAux3.FieldByName('ENF_IT_ALIQPIS').AsFloat;
  wValorPIS := qAux3.FieldByName('ENF_IT_VLPIS').AsFloat;
  wBaseCOFINS := qAux3.FieldByName('ENF_BASECOFINS').AsFloat;
  wAliquotaCOFINS := qAux3.FieldByName('ENF_IT_ALIQCOFINS').AsFloat;
  wValorCOFINS := qAux3.FieldByName('ENF_IT_VLCOFINS').AsFloat;
  wFreteIndividual := qAux3.FieldByName('ENF_IT_VALFRETE').AsFloat;
  wSeguroIndividual := qAux3.FieldByName('ENF_IT_VLSEGURO').AsFloat;
  wDespesaIndividual := qAux3.FieldByName('ENF_IT_VLDESP_ACES').AsFloat;
end;

end.

