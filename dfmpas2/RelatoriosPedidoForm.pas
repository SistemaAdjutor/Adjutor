unit RelatoriosPedidoForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseDBForm, {{DBXpress,}  DB, SqlExpr, ACBrBase, ACBrCalculadora,
  ExtCtrls, Provider, DBClient, DBLocal, DBLocalS, frxClass, frxDBSet,
  frxExportXLS, frxExportRTF, frxExportPDF, FMTBCd, jPeg, Data.DBXInterBase,
  Data.DBXFirebird, ACBrEnterTab, ACBrETQ, frxExportXLSX, frxCross, SYSTEM.StrUtils, System.Threading,
  frxExportBaseDialog;

type
  TFrmRelatoriosPedido = class(TfrmBaseDB)
    frxPedidoRomaneioCodOriginal: TfrxReport;
    frxPedidoRomaneioM3: TfrxReport;
    frxPedidoOrcamentoImagemSoTotal: TfrxReport;
    frxPedidoOrcamento: TfrxReport;
    frxPedidoOrcamentoLinha: TfrxReport;
    frxPedido: TfrxReport;
    frxPedidoOrcamentoImagem: TfrxReport;
    frxPedidoOrcamentoImagemGrande: TfrxReport;
    frxRTFExport1: TfrxRTFExport;
    frxXLSExport1: TfrxXLSExport;
    frxPedidoSemValor: TfrxReport;
    frxPedidoLinha: TfrxReport;
    FrxRomaneioBSC: TfrxReport;
    frxDataPedido: TfrxDBDataset;
    frxDataItensPedido: TfrxDBDataset;
    qPedidos: TSQLQuery;
    qPedidosItem: TSQLQuery;
    dspPedidosItem: TDataSetProvider;
    CdsPedidosItem: TClientDataSet;
    CdsPedidosItemPED_CODIGO: TStringField;
    CdsPedidosItemPRD_REFER: TStringField;
    cdsPedidosItemPRF_QTDE_CALC: TFMTBCDField;
    CdsPedidosItemPRF_QTDEFAT: TFMTBCdField;
    CdsPedidosItemPRF_PRECO: TFMTBCdField;
    CdsPedidosItemPRF_IDESCTO1: TFloatField;
    CdsPedidosItemPRF_IDESCTO2: TFloatField;
    CdsPedidosItemPRF_SITUACAO: TStringField;
    CdsPedidosItemPRF_ITEMCOMIS: TFMTBCdField;
    CdsPedidosItemPRF_IPIALIQ: TFMTBCdField;
    CdsPedidosItemPRF_ICMSALIQ: TFMTBCdField;
    CdsPedidosItemPRF_PRDDESCRI: TStringField;
    CdsPedidosItemPRF_VAR1: TFMTBCdField;
    CdsPedidosItemPRF_VAR2: TFMTBCdField;
    CdsPedidosItemPRF_VAR3: TFMTBCdField;
    CdsPedidosItemPRF_VAR4: TFMTBCdField;
    CdsPedidosItemPRF_VAR5: TFMTBCdField;
    CdsPedidosItemPRF_VAR6: TFMTBCdField;
    CdsPedidosItemPRF_VAR7: TFMTBCdField;
    CdsPedidosItemPRF_VAR8: TFMTBCdField;
    CdsPedidosItemEMP_CODIGO: TStringField;
    CdsPedidosItemPRF_PRECO_BRUTO: TFMTBCdField;
    CdsPedidosItemPRF_OP: TStringField;
    CdsPedidosItemPRF_QTDE_FAT_VAR1: TFMTBCdField;
    CdsPedidosItemPRF_QTDE_FAT_VAR2: TFMTBCdField;
    CdsPedidosItemPRF_QTDE_FAT_VAR3: TFMTBCdField;
    CdsPedidosItemPRF_QTDE_FAT_VAR4: TFMTBCdField;
    CdsPedidosItemPRF_QTDE_FAT_VAR5: TFMTBCdField;
    CdsPedidosItemPRF_QTDE_FAT_VAR6: TFMTBCdField;
    CdsPedidosItemPRF_QTDE_FAT_VAR7: TFMTBCdField;
    CdsPedidosItemPRF_QTDE_FAT_VAR8: TFMTBCdField;
    CdsPedidosItemPRF_FLAG_ATUALIZA_ESTOQUE: TStringField;
    CdsPedidosItemPRF_ORIGEM_ITEM: TStringField;
    CdsPedidosItemPRF_PRODUTO_AGREGADO: TStringField;
    CdsPedidosItemPRF_VALOR_ICMS: TFMTBCdField;
    CdsPedidosItemUSU_CODIGO: TIntegerField;
    CdsPedidosItemPRD_CODIGO: TStringField;
    CdsPedidosItemAMX_CODIGO_DESTINO: TStringField;
    CdsPedidosItemAMX_CODIGO_ORIGEM: TStringField;
    CdsPedidosItemPRD_UND: TStringField;
    CdsPedidosItemPRD_PESOKG: TFMTBCdField;
    CdsPedidosItemPRD_DCVAR1: TStringField;
    CdsPedidosItemPRD_DCVAR2: TStringField;
    CdsPedidosItemPRD_DCVAR3: TStringField;
    CdsPedidosItemPRD_DCVAR4: TStringField;
    CdsPedidosItemPRD_DCVAR5: TStringField;
    CdsPedidosItemPRD_DCVAR6: TStringField;
    CdsPedidosItemPRD_DCVAR7: TStringField;
    CdsPedidosItemPRD_DCVAR8: TStringField;
    CdsPedidosItemPTI_SIGLA: TStringField;
    CdsPedidosItemCC_PRECO_TOT: TFloatField;
    CdsPedidosItemPRF_COMPL_DESCRI: TStringField;
    CdsPedidosItemDESCRICAO: TStringField;
    CdsPedidosItemLIN_DESCRI: TStringField;
    CdsPedidosItemIPI_CODIGO: TStringField;
    CdsPedidosItemPRG_INDICE: TFMTBCdField;
    CdsPedidosItemPRF_VALOR_ST: TFMTBCdField;
    CdsPedidosItemREFERENCIA: TStringField;
    CdsPedidosItemM3: TFMTBCdField;
    CdsPedidosItemPRDE_ENDERECO: TStringField;
    CdsPedidosItemPRD_EMBALA: TStringField;
    CdsPedidosItemPRD_PESOLIQ: TFMTBCdField;
    CdsPedidosItemPESOKG: TFMTBCdField;
    frxPDFExport1: TfrxPDFExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxPedidoGrade2: TfrxReport;
    frxPedidoGrade: TfrxReport;
    qPedidosItemGrade: TSQLQuery;
    qPedidosItemGradeREFERENCIA: TStringField;
    qPedidosItemGradePRD_DESCRI: TStringField;
    qPedidosItemGradePRF_QTDE: TFMTBCDField;
    qPedidosItemGradePRF_PRECO: TFMTBCDField;
    qPedidosItemGradePRF_TOTAL: TFMTBCDField;
    frxDataItensPedidoGrade: TfrxDBDataset;
    dspPedidoItemGrade: TDataSetProvider;
    CdsPedItemGrade: TClientDataSet;
    CdsPedItemGradeREFERENCIA: TStringField;
    CdsPedItemGradeDESCRICAO: TStringField;
    CdsPedItemGradePRF_QTDE: TFMTBCDField;
    CdsPedItemGradePRF_PRECO: TFMTBCDField;
    CdsPedItemGradePRF_TOTAL: TFMTBCDField;
    CdsPedItemGradeLIN_DESCRI: TStringField;
    cdsPedidosItemPRF_QTDE: TFMTBCDField;
    dspPedido: TDataSetProvider;
    cdspedido: TClientDataSet;
    cdspedidoPED_CODIGO: TStringField;
    cdspedidoPED_DTENTRADA: TSQLTimeStampField;
    cdspedidoPED_DTSAIDA: TSQLTimeStampField;
    cdspedidoPED_EXPEDICAO: TStringField;
    cdspedidoPED_COMIS1: TFMTBCDField;
    cdspedidoPED_COMIS2: TFMTBCDField;
    cdspedidoPED_COMIS3: TFMTBCDField;
    cdspedidoPED_FRETE: TStringField;
    cdspedidoPED_FRETE2: TStringField;
    cdspedidoPED_SITCRED: TStringField;
    cdspedidoPED_PRIORIDADE: TStringField;
    cdspedidoPED_DESCTONF: TStringField;
    cdspedidoPED_DESCTOPC1: TFMTBCDField;
    cdspedidoPED_DESCTOPC2: TFMTBCDField;
    cdspedidoPED_DESCTOVL: TFMTBCDField;
    cdspedidoPED_TOTUPS: TFMTBCDField;
    cdspedidoPED_VLTUPS: TFMTBCDField;
    cdspedidoPED_VLTOTAL_IPI: TFMTBCDField;
    cdspedidoPED_VLTOTAL_BRUTO: TFMTBCDField;
    cdspedidoCLI_CODIGO: TStringField;
    cdspedidoCLI_RAZAO: TStringField;
    cdspedidoCLI_FANTASIA: TStringField;
    cdspedidoCLI_ENDERE: TStringField;
    cdspedidoCLI_BAIRRO: TStringField;
    cdspedidoCLI_CIDADE: TStringField;
    cdspedidoCLI_UF: TStringField;
    cdspedidoCLI_CEP: TStringField;
    cdspedidoCLI_PESSOA: TStringField;
    cdspedidoCLI_CGC: TStringField;
    cdspedidoCLI_INSC: TStringField;
    cdspedidoCLI_CONTATO: TStringField;
    cdspedidoCLI_FONE: TStringField;
    cdspedidoCLI_FAX: TStringField;
    cdspedidoCLI_ENDENTR: TStringField;
    cdspedidoCLI_CIDENTR: TStringField;
    cdspedidoCLI_UFENTR: TStringField;
    cdspedidoCLI_CEPENTR: TStringField;
    cdspedidoCLI_ENDFAT: TStringField;
    cdspedidoCLI_CIDFAT: TStringField;
    cdspedidoCLI_UFFAT: TStringField;
    cdspedidoCLI_CEPFAT: TStringField;
    cdspedidoCLI_EMAIL: TStringField;
    cdspedidoREP_CODIGO: TStringField;
    cdspedidoREP_NOME: TStringField;
    cdspedidoPCL_CODIGO: TStringField;
    cdspedidoPCL_NOME: TStringField;
    cdspedidoTRP_CODIGO: TStringField;
    cdspedidoTRP_RAZAO: TStringField;
    cdspedidoTRP_FONE: TStringField;
    cdspedidoTRP_REDESP: TStringField;
    cdspedidoTRP_RAZAO_1: TStringField;
    cdspedidoTRP_FONE_1: TStringField;
    cdspedidoOPV_CODIGO: TIntegerField;
    cdspedidoOPV_DESCRICAO: TStringField;
    cdspedidoCLI_EMAIL_ALTERNATIVO: TStringField;
    cdspedidoPED_OBSERVACAO: TBlobField;
    cdspedidoPED_CONTATO_CLIENTE: TStringField;
    cdspedidoPMT_MOTIVO: TStringField;
    cdspedidoPED_SITUACAO: TStringField;
    cdspedidoPED_VLFRETE: TFMTBCDField;
    cdspedidoPED_VALOR_ST: TFMTBCDField;
    cdspedidoPESO: TFMTBCDField;
    cdspedidoCIDADE_ENTREGA: TStringField;
    cdspedidoPCX_CODIGO: TStringField;
    cdspedidoPCX_DESCRI: TStringField;
    cdspedidoPED_PLACA: TStringField;
    cdspedidoREP_EMAIL: TStringField;
    cdsPedidosItemPRF_REGISTRO_VINCULADO: TIntegerField;
    FrxPedidoPrazos: TfrxReport;
    frxRomaneioProducao: TfrxReport;
    qOperacoes: TSQLQuery;
    frxOperacoes: TfrxDBDataset;
    qOperacoesope_descricao: TStringField;
    cdspedidoPED_NUMERO_PED_CLIENTE: TStringField;
    cdsPedidosItemPRF_PESOKG: TFMTBCDField;
    frxPedidoPesoGrade: TfrxReport;
    frxOrdemServico: TfrxReport;
    cdsPedidosItemPRD_PRODSERV: TStringField;
    cdsPedidosItemPRF_QTDE_KIT: TLargeintField;
    cdsPedidosItemPRDD_SIGLA: TStringField;
    cdsPedidosItemSEQUENCIA: TStringField;
    cdspedidoFPG_DESCRICAO: TStringField;
    cdsPedidosItemPRF_PRAZO_DIAS: TStringField;
    cdsPedidosItemPRF_QTDEPEND: TFMTBCDField;
    frxRomaneioKit: TfrxReport;
    frxDataItensKit: TfrxDBDataset;
    cdsPedidosItemregistro: TIntegerField;
    dspItemsKit: TDataSetProvider;
    qItemsKit: TSQLQuery;
    cdsItensKit: TClientDataSet;
    cdsItensKitPED_CODIGO: TStringField;
    cdsItensKitPRD_REFER: TStringField;
    cdsItensKitPRF_QTDE: TFMTBCDField;
    cdsItensKitPRF_QTDE_CALC: TFMTBCDField;
    cdsItensKitPRF_QTDEFAT: TFMTBCDField;
    cdsItensKitPRF_PRECO: TFMTBCDField;
    cdsItensKitPRF_IDESCTO1: TFloatField;
    cdsItensKitPRF_IDESCTO2: TFloatField;
    cdsItensKitPRF_SITUACAO: TStringField;
    cdsItensKitPRF_ITEMCOMIS: TFMTBCDField;
    cdsItensKitPRF_IPIALIQ: TFMTBCDField;
    cdsItensKitPRF_ICMSALIQ: TFMTBCDField;
    cdsItensKitPRF_PRDDESCRI: TStringField;
    cdsItensKitPRF_VAR1: TFMTBCDField;
    cdsItensKitPRF_VAR2: TFMTBCDField;
    cdsItensKitPRF_VAR3: TFMTBCDField;
    cdsItensKitPRF_VAR4: TFMTBCDField;
    cdsItensKitPRF_VAR5: TFMTBCDField;
    cdsItensKitPRF_VAR6: TFMTBCDField;
    cdsItensKitPRF_VAR7: TFMTBCDField;
    cdsItensKitPRF_VAR8: TFMTBCDField;
    cdsItensKitEMP_CODIGO: TStringField;
    cdsItensKitPRF_PRECO_BRUTO: TFMTBCDField;
    cdsItensKitPRF_OP: TStringField;
    cdsItensKitPRF_QTDE_FAT_VAR1: TFMTBCDField;
    cdsItensKitPRF_QTDE_FAT_VAR2: TFMTBCDField;
    cdsItensKitPRF_QTDE_FAT_VAR3: TFMTBCDField;
    cdsItensKitPRF_QTDE_FAT_VAR4: TFMTBCDField;
    cdsItensKitPRF_QTDE_FAT_VAR5: TFMTBCDField;
    cdsItensKitPRF_QTDE_FAT_VAR6: TFMTBCDField;
    cdsItensKitPRF_QTDE_FAT_VAR7: TFMTBCDField;
    cdsItensKitPRF_QTDE_FAT_VAR8: TFMTBCDField;
    cdsItensKitPRF_FLAG_ATUALIZA_ESTOQUE: TStringField;
    cdsItensKitPRF_ORIGEM_ITEM: TStringField;
    cdsItensKitPRF_VALOR_ICMS: TFMTBCDField;
    cdsItensKitPRF_PRODUTO_AGREGADO: TStringField;
    cdsItensKitUSU_CODIGO: TIntegerField;
    cdsItensKitPRD_CODIGO: TStringField;
    cdsItensKitAMX_CODIGO_DESTINO: TStringField;
    cdsItensKitAMX_CODIGO_ORIGEM: TStringField;
    cdsItensKitPRD_UND: TStringField;
    cdsItensKitPRD_PESOKG: TFMTBCDField;
    cdsItensKitPRD_DCVAR1: TStringField;
    cdsItensKitPRD_DCVAR2: TStringField;
    cdsItensKitPRD_DCVAR3: TStringField;
    cdsItensKitPRD_DCVAR4: TStringField;
    cdsItensKitPRD_DCVAR5: TStringField;
    cdsItensKitPRD_DCVAR6: TStringField;
    cdsItensKitPRD_DCVAR7: TStringField;
    cdsItensKitPRD_DCVAR8: TStringField;
    cdsItensKitPTI_SIGLA: TStringField;
    cdsItensKitCC_PRECO_TOT: TFloatField;
    cdsItensKitPRF_COMPL_DESCRI: TStringField;
    cdsItensKitDESCRICAO: TStringField;
    cdsItensKitLIN_DESCRI: TStringField;
    cdsItensKitIPI_CODIGO: TStringField;
    cdsItensKitPRG_INDICE: TFMTBCDField;
    cdsItensKitPRF_VALOR_ST: TFMTBCDField;
    cdsItensKitREFERENCIA: TStringField;
    cdsItensKitM3: TFMTBCDField;
    cdsItensKitPRDE_ENDERECO: TStringField;
    cdsItensKitPRD_EMBALA: TStringField;
    cdsItensKitPRD_PESOLIQ: TFMTBCDField;
    cdsItensKitPESOKG: TFMTBCDField;
    cdsItensKitPRF_REGISTRO_VINCULADO: TIntegerField;
    cdsItensKitPRF_PESOKG: TFMTBCDField;
    cdsItensKitPRD_PRODSERV: TStringField;
    cdsItensKitPRF_QTDE_KIT: TLargeintField;
    cdsItensKitPRDD_SIGLA: TStringField;
    cdsItensKitSEQUENCIA: TStringField;
    cdsItensKitPRF_PRAZO_DIAS: TStringField;
    cdsItensKitPRF_QTDEPEND: TFMTBCDField;
    cdsItensKitregistro: TIntegerField;
    cdsPedidosItemestoque: TFMTBCDField;
    cdsItensKitestoque: TFMTBCDField;
    frxPedidoPrazosResumido: TfrxReport;
    frxOrcamentoCabResumido: TfrxReport;
    frxRomaneioCabResumido: TfrxReport;
    frxPedidoPPAC: TfrxReport;
    cdsPedidosItemPRF_REGISTRO: TFMTBCDField;
    frxPedidoPpacSimples: TfrxReport;
    cdspedidoPED_SubcabecalhoPPAC: TBlobField;
    frxPedidoOrcamentoImagemBig: TfrxReport;
    cdsPedidosItemPRD_FOTO: TBlobField;
    cdsPedidosItemPRDCO_CODIGO_ORIGINAL: TStringField;
    frxPedidoRomaneio: TfrxReport;
    frxRomaneioCorte: TfrxReport;
    qMola: TSQLQuery;
    frxDataMola: TfrxDBDataset;
    frxPedidoEspaco: TfrxReport;
    cdsMola: TClientDataSet;
    dspMola: TDataSetProvider;
    cdsMolaTM_DIAMETRO_INT_MAIOR: TStringField;
    cdsMolaTM_DIAMETRO_INT_MENOR: TStringField;
    cdsMolaMMO_DIAMETRO_INT_MAIOR: TStringField;
    cdsMolaMMO_TOLERANCIA_DI_MAIOR_MAX: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_DI_MAIOR_MIN: TFMTBCDField;
    cdsMolaMMO_DIAMETRO_INT_MENOR: TStringField;
    cdsMolaMMO_TOLERANCIA_DI_MENOR_MAX: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_DI_MENOR_MIN: TFMTBCDField;
    cdsMolaTM_DIAMETRO_ARAME: TStringField;
    cdsMolaTM_DIAMETRO_INTERNO: TStringField;
    cdsMolaTM_DIAMETRO_MEDIO: TStringField;
    cdsMolaTM_DIAMETRO_EXTERNO: TStringField;
    cdsMolaTM_DIAMETRO_EXTERNO_MEIO: TStringField;
    cdsMolaTM_DIAMETRO_EXT_MAIOR: TStringField;
    cdsMolaTM_DIAMETRO_EXT_MENOR: TStringField;
    cdsMolaTM_PASSO: TStringField;
    cdsMolaTM_COM_LIVRE: TStringField;
    cdsMolaTM_COMP_CORPO: TStringField;
    cdsMolaTM_ALT_GANCHO: TStringField;
    cdsMolaTM_ABERT_GANCHO: TStringField;
    cdsMolaTM_COMP_GANCHO: TStringField;
    cdsMolaTM_DESENVOLVIMENTO: TStringField;
    cdsMolaTM_ESPIRAIS_UTEIS: TStringField;
    cdsMolaTM_ESPIRAL_TOTAL: TStringField;
    cdsMolaTM_SENTIDO: TStringField;
    cdsMolaTM_PESO: TStringField;
    cdsMolaTM_MAQUINA: TStringField;
    cdsMolaTM_MANDRIL: TStringField;
    cdsMolaTM_CACHIMBO: TStringField;
    cdsMolaTM_COPIADOR: TStringField;
    cdsMolaTM_GANCHO: TStringField;
    cdsMolaTM_DISCO: TStringField;
    cdsMolaTM_OUTROS: TStringField;
    cdsMolaTM_TIPOEMBALAGEM: TStringField;
    cdsMolaTM_LOCALIZACAO: TStringField;
    cdsMolaTM_SETOR: TStringField;
    cdsMolaTM_VAO: TStringField;
    cdsMolaMMO_CODIGO: TIntegerField;
    cdsMolaPRD_CODIGO: TStringField;
    cdsMolaART_CODIGO: TIntegerField;
    cdsMolaARA_CODIGO: TIntegerField;
    cdsMolaCMO_CODIGO: TIntegerField;
    cdsMolaGAN_CODIGO: TIntegerField;
    cdsMolaACO_CODIGO: TIntegerField;
    cdsMolaASU_CODIGO: TIntegerField;
    cdsMolaTSU_CODIGO: TIntegerField;
    cdsMolaMMO_TEMPO_PRODUCAO: TIntegerField;
    cdsMolaMMO_PESO_ESPECIFICO: TFMTBCDField;
    cdsMolaMMO_CISALHAMENTO: TFMTBCDField;
    cdsMolaMMO_RES_TRACAO: TFMTBCDField;
    cdsMolaMMO_TRATAMENTO_TERMICO: TStringField;
    cdsMolaMMO_TEMPO_TEMPERA: TIntegerField;
    cdsMolaMMO_TEMPERATURA_TEMPERA: TFMTBCDField;
    cdsMolaMMO_TEMPO_REVENIMENTO: TIntegerField;
    cdsMolaMMO_TEMPERATURA_REVENIMENTO: TFMTBCDField;
    cdsMolaMMO_DUREZA_MINIMA: TIntegerField;
    cdsMolaMMO_DUREZA_MAXIMA: TIntegerField;
    cdsMolaMMO_TRATAMENTO_SUPERFICIAL: TStringField;
    cdsMolaMMO_DIAMETRO_ARAME: TStringField;
    cdsMolaMMO_TOLERANCIA_DIA_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_DIA_MAX: TFMTBCDField;
    cdsMolaMMO_DIAMETRO_INTERNO: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_DI_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_DI_MAX: TFMTBCDField;
    cdsMolaMMO_DIAMETRO_MEDIO: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_DM_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_DM_MAX: TFMTBCDField;
    cdsMolaMMO_DIAMETRO_EXTERNO: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_DE_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_DE_MAX: TFMTBCDField;
    cdsMolaMMO_DIAMETRO_EXTERNO_MEIO: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_DEM_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_DEM_MAX: TFMTBCDField;
    cdsMolaMMO_VAO: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_VAO_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_VAO_MAX: TFMTBCDField;
    cdsMolaMMO_PASSO: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_PASSO_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_PASSO_MAX: TFMTBCDField;
    cdsMolaMMO_COM_LIVRE: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_LIVRE_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_LIVRE_MAX: TFMTBCDField;
    cdsMolaMMO_COM_SOLIDO: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_SOLIDO_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_SOLIDO_MAX: TFMTBCDField;
    cdsMolaMMO_ESPIRAIS_UTEIS: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_ESPUTEIS_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_ESPUTEIS_MAX: TFMTBCDField;
    cdsMolaMMO_ESPIRAL_TOTAL: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_ESPT_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_ESPT_MAX: TFMTBCDField;
    cdsMolaMMO_DESENVOLVIMENTO: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_DES_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_DES_MAX: TFMTBCDField;
    cdsMolaMMO_RETIFICADO: TStringField;
    cdsMolaMMO_PARALIELISMO: TIntegerField;
    cdsMolaMMO_PERPENDICULARIMO: TFMTBCDField;
    cdsMolaMMO_SENTIDO: TStringField;
    cdsMolaMMO_PESO: TFMTBCDField;
    cdsMolaMMO_OBSERVACAO: TBlobField;
    cdsMolaMMO_CONSTANTE_ESPE: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_CONST_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_CONST_MAX: TFMTBCDField;
    cdsMolaMMO_CONSTANTE_CALCULADA: TFMTBCDField;
    cdsMolaMMO_CONST_CALC_MIN: TFMTBCDField;
    cdsMolaMMO_CONST_CALC_MAX: TFMTBCDField;
    cdsMolaMMO_ALTURAL1: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_ALT1_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_ALT1_MAX: TFMTBCDField;
    cdsMolaMMO_ALTURAL2: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_ALT2_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_ALT2_MAX: TFMTBCDField;
    cdsMolaMMO_ALTURAL3: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_ALT3_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_ALT3_MAX: TFMTBCDField;
    cdsMolaMMO_ALTURAL4: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_ALT4_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_ALT4_MAX: TFMTBCDField;
    cdsMolaMMO_CURSOS1: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_CURS1_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_CURS1_MAX: TFMTBCDField;
    cdsMolaMMO_CURSOS2: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_CURS2_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_CURS2_MAX: TFMTBCDField;
    cdsMolaMMO_CURSOS3: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_CURS3_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_CURS3_MAX: TFMTBCDField;
    cdsMolaMMO_CURSOS4: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_CURS4_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_CURS4_MAX: TFMTBCDField;
    cdsMolaMMO_CARGAP1: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_CARGA1_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_CARGA1_MAX: TFMTBCDField;
    cdsMolaMMO_CARGAP2: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_CARGA2_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_CARGA2_MAX: TFMTBCDField;
    cdsMolaMMO_CARGAP3: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_CARGA3_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_CARGA3_MAX: TFMTBCDField;
    cdsMolaMMO_CARGAP4: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_CARGA4_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_CARGA4_MAX: TFMTBCDField;
    cdsMolaMMO_TENSAO1: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_TENSAO1_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_TENSAO1_MAX: TFMTBCDField;
    cdsMolaMMO_TENSAO2: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_TENSAO2_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_TENSAO2_MAX: TFMTBCDField;
    cdsMolaMMO_TENSAO3: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_TENSAO3_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_TENSAO3_MAX: TFMTBCDField;
    cdsMolaMMO_TENSAO4: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_TENSAO4_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_TENSAO4_MAX: TFMTBCDField;
    cdsMolaMMO_CARGA: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_CARGA_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_CARGA_MAX: TFMTBCDField;
    cdsMolaMMO_TENSAO: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_TEN_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_TEN_MAX: TFMTBCDField;
    cdsMolaMMO_MAQUINA: TStringField;
    cdsMolaMMO_MANDRIL: TStringField;
    cdsMolaMMO_CACHIMBO: TStringField;
    cdsMolaMMO_COPIADOR: TStringField;
    cdsMolaMMO_GANCHO: TStringField;
    cdsMolaMMO_DISCO: TStringField;
    cdsMolaMMO_OUTROS: TStringField;
    cdsMolaMMO_LOCALIZACAO: TStringField;
    cdsMolaMMO_SETOR: TStringField;
    cdsMolaMMO_OBSGERAIS: TBlobField;
    cdsMolaMMO_TIPOEMBALAGEM: TStringField;
    cdsMolaMMO_COMP_CORPO: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_COMP_CORPO_MAX: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_COMP_CORPO_MIN: TFMTBCDField;
    cdsMolaMMO_ALT_GANCHO: TStringField;
    cdsMolaMMO_TOLERANCIA_ALT_GANCHO_MAX: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_ALT_GANCHO_MIN: TFMTBCDField;
    cdsMolaMMO_ABERT_GANCHO: TStringField;
    cdsMolaMMO_TOLERANCIA_ABERT_GANCHO_MAX: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_ABERT_GANCHO_MIN: TFMTBCDField;
    cdsMolaMMO_COMP_GANCHO: TFMTBCDField;
    cdsMolaMMO_DIAMETRO_EXT_MAIOR: TFMTBCDField;
    cdsMolaMMO_DIAMETRO_EXT_MENOR: TFMTBCDField;
    cdsMolaMMO_PERDA: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_DE_MAIOR_MIN: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_DE_MAIOR_MAX: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_DE_MENOR_MAX: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_COMP_GANCHO_MAX: TFMTBCDField;
    cdsMolaMMO_TOLERANCIA_COMP_GANCHO_MIN: TFMTBCDField;
    cdsMolaARA_NOME: TStringField;
    cdsMolaART_NOME: TStringField;
    cdsMolaCMO_NOME: TStringField;
    cdsMolaTSU_NOME: TStringField;
    cdsMolaASU_NOME: TStringField;
    cdsMolaACO_NOME: TStringField;
    cdsMolaPRD_DESCRI: TStringField;
    cdsMolaPRD_REFER: TStringField;
    cdsMolaPRF_QTDE: TFMTBCDField;
    cdsMolaGAN_NOME: TStringField;
    cdsMolaTEM_DESCRICAO: TStringField;
    cdsPedidosItemPRF_PRAZO_ENTREGA: TDateField;
    cdsMolaPRF_PRAZO_ENTREGA: TDateField;
    cdsPedidosItemDATA_ENTREGA: TDateField;
    cdspedidoIOP_NORDEM: TStringField;
    cdsMolaIOP_NORDEM: TStringField;
    frxRomaneioIndustria: TfrxReport;
    frxRomaneioPlanilha: TfrxReport;
    cdspedidoPED_VLTOTAL_LIQ: TFMTBCDField;
    cdsMolaMMO_TIPO: TStringField;
    cdsMolaMMO_VARIACAO: TStringField;
    frxOrdemProducaoCompleto: TfrxReport;
    cdsMolaPRF_SEQUENCIA: TIntegerField;
    cdsMolaPED_CODIGO: TStringField;
    cdsMolaEMP_CODIGO: TStringField;
    frxReport1: TfrxReport;
    cdsMolaPRD_CODORIGINAL: TStringField;
    cdsMolaPRD_FOTO: TBlobField;
    cdspedidoPED_VLDIFAL: TFMTBCDField;
    cdspedidoPED_DESP_ACES: TFMTBCDField;
    frxOrdemProducaoModelos: TfrxReport;
    cdsMolaMMO_TOLERANCIA_DE_MENOR_MIN: TFMTBCDField;
    cdsMolaMMO_ARQUIVO_FICHA_TECNICA: TStringField;
    cdsMolaMMO_EXTREMIDADE_MOLA_MATERIA: TStringField;
    procedure CdsPedidosItemCalcFields(DataSet: TDataSet);
    procedure frxPedidoOrcamentoGetValue(const VarName: String;
      var Value: Variant);
    procedure FormCreate(Sender: tObject);
    procedure FormDestroy(Sender: tObject);
    procedure cdsPedidosItemDESCRICAOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsPedidosItemPRF_PRDDESCRIGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsPedidosItemAfterOpen(DataSet: TDataSet);
    procedure frxPedidoOrcamentoImagemBigBeforePrint(Sender: TfrxReportComponent);
    procedure frxOrdemProducaoOriGetValue(const VarName: string; var Value: Variant);
    procedure frxOrdemProducaoModelosBeginDoc(Sender: TObject);
    procedure frxOrdemProducaoModelosGetValue(const VarName: string; var Value: Variant);
    procedure frxOrdemProducaoGetValue(const VarName: string; var Value: Variant);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    fOrsCliente: string;
    fClienteTelefone: string;
    fDiaEntrega: string;
    fOrsEmail: string;
    fCliUF: string;
    fOrsDiaValidade: string;
    fPedidoTipo: string;
    sOrcamentoObs:String;
    sPedidoTitulo:string;
    MinhaImagem:TJPEGImage;
    fTipo: string;
    fPedidoSemItemKit: boolean;
    email_de_enviado: string;
    relatorio: TfrxReport;
    sPedidoObs: string;
    fMemoPedido: String;
    fMemoProducao: String;
    fMemoMsgAdicional:string;
    fclientecodigo:string;
    fOrsFone:string;
    fOrsFax:string;
    fCabecalhoResumido: boolean;
    function TemKit:boolean;
  public
    procedure ImprimePedido(bVisualiza: Boolean; const sTipo, nPedido, nVendedor:String);
    procedure GravarFotos;
    procedure GravarFotosMola;
    property OrsFone:string write fOrsFone;
    property OrsFax:string write fOrsFax;
    property clientecodigo:string write fclientecodigo;
    property OrsCliente:string Write fOrsCliente;
    property CliUF:string Write fCliUF;
    property clientetelefone:string write fClienteTelefone;
    Property DiaEntrega:string write fDiaEntrega;
    Property OrsEmail:string write fOrsEmail;
    Property OrsDiaValidade:string Write fOrsDiaValidade;
    property PedidoTipo:string write fPedidoTipo;
    property PedidoSemItemKit:boolean read fPedidoSemItemKit write fPedidoSemItemKit;
    property MemoPedido: String write fMemoPedido;
    property MemoProducao: String write fMemoProducao;
    property MemoMsgAdicional:string write fMemoMsgAdicional;
    property CabecalhoResumido : boolean read fCabecalhoResumido write fCabecalhoResumido;
  end;

var
  FrmRelatoriosPedido: TFrmRelatoriosPedido;

implementation

uses Uteis, InicioDB, rwFunc, Men0001, Email0001, DataCad, Vcl.Clipbrd, uPedido;

{$R *.dfm}


procedure TFrmRelatoriosPedido.ImprimePedido(bVisualiza: Boolean;const  sTipo, nPedido, nVendedor:String);
var
   sEmpresa:String;
   tcr : TfrmEMAIL0001;
   emailValor: double;
   emailCliente, emailPedido: string;
   stgrade : TStringList;
   sgradeHead : string;
   sgradeLinha: string;
   kit: boolean;
  i: integer;

   function preencherVazio(valor: string; q: integer;Direcao: string): string;
   var i: integer  ;
   begin

    for I := 0 to q+3 do
      if Direcao = 'D' then
         valor := valor + CHR(32)
      else
         valor := CHR(32) + valor;
      result := valor;

   end;

   function espaco (valor :string; tamTitulo: integer = 0): string;
   var lados, sobra : integer;
   begin
    if tamtitulo > 13 then begin
       tamtitulo:= 12;
       valor := copy(valor,0,11);
    end;
     lados := (12- Length(valor))  div 2;
     sobra := (12- Length(valor)) mod 2;
     valor:= preencherVazio(valor,lados,'D') ;
     result := preencherVazio(valor,lados+sobra,'E');

   end;
   function FormataCabecalho (titulo :string): string;
   var lados, sobra : integer;
   begin
    if length(titulo) > 13 then
       titulo := copy(titulo,0,11);

    lados := (12-length(titulo)) div 2;
    sobra := (12-length(titulo)) mod 2;

    titulo := preencherVazio(titulo,lados,'D') ;
    result := preencherVazio(titulo,lados+sobra,'E');

   end;



   procedure SetMsgOrcamento;
   begin
        sOrcamentoObs := DBInicio.BuscaUmDadoSqlAsString('SELECT PMT_MENSAGEM_PADRAO_ORCAMENTO FROM PRMT0001 WHERE EMP_CODIGO = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO));
   end;
///
   procedure SetCCustoVisible( cmpRel: TfrxMemoView );
   begin
        if Assigned( cmpRel ) then
           cmpRel.Visible:=(cdsPedidoPCX_CODIGO.AsString<>'');
   end;
///

begin
   // pedido

   TrimAppmemorySize;

   sEmpresa := '';
   fTipo := sTipo;

   if DBInicio.Exclusivo('PRODUTOS') then
      sEmpresa := ' and PIT.emp_codigo = PRD.emp_codigo ';

   wSeleciona :=' where PED.PED_CODIGO = '+qStr(nPedido);
   wOrdem     :=' PED.PED_CODIGO';
   // pedido
   cdspedido.Close;
   qPedidos.Sql.Clear;
   qPedidos.Sql.Add('Select DISTINCT PED.PED_CONTATO_CLIENTE,');
   // qPedidos.Sql.Add('       IOP.IOP_NORDEM,');
   qPedidos.Sql.Add('       '''' as IOP_NORDEM,');
   qPedidos.Sql.Add('       PED.PED_CODIGO,');
   qPedidos.Sql.Add('       PED.PED_DTENTRADA,');
   qPedidos.Sql.Add('       PED.PED_DTSAIDA,');
   qPedidos.Sql.Add('       PED.PED_EXPEDICAO,');
   qPedidos.Sql.Add('       PED.PED_COMIS1,');
   qPedidos.Sql.Add('       PED.PED_COMIS2,');
   qPedidos.Sql.Add('       PED.PED_COMIS3,');
   qPedidos.Sql.Add('       PED.PED_FRETE ,');
   qPedidos.Sql.Add('       PED.PED_FRETE2,');
   qPedidos.Sql.Add('       PED.PED_SITCRED,');
   qPedidos.Sql.Add('       PED.PED_PRIORIDADE,');
   qPedidos.Sql.Add('       PED.PED_TOTUPS,');
   qPedidos.SQL.Add('       PED_SUBCABECALHOPPAC,');
   qPedidos.Sql.Add('       PED.PED_VLTUPS,');
   qPedidos.Sql.Add('       ( select coalesce(sum(t1.prf_qtde * t2.prd_pesokg),0) FROM ped_it01 T1 JOIN prd0000 T2 ON (t2.prd_refer = t1.prd_refer) WHERE T1.ped_codigo = ped.ped_codigo) as peso,');
   qPedidos.Sql.Add('       case ' );
   qPedidos.Sql.Add('          when (PED.ENDERECO_ENTREGA > 0) ' );
   qPedidos.Sql.Add('          then '+qStr('ENDEREÇO DE ENTREGA: ')+'||CAST(ENDER.DESCRICAO AS VARCHAR(30) CHARACTER SET WIN1252)||'+qStr(' BAIRRO: ')+'||coalesce(CAST(ENDER.BAIRRO AS VARCHAR(30) CHARACTER SET WIN1252),'+qStr('')+')||'+qStr(' CIDADE: ')+'||coalesce(ENDER.CIDADE,CLI.cli_cidade)||'+qStr(' CEP: ')+'||coalesce(ENDER.CEP,'+qStr('')+') ' );
   qPedidos.Sql.Add('          else '+qStr('') );
   qPedidos.Sql.Add('       end AS CIDADE_ENTREGA,');
   qPedidos.Sql.Add('       PED.PED_DESCTONF,');
   qPedidos.Sql.Add('       PED.PED_DESCTOPC1,');
   qPedidos.Sql.Add('       PED.PED_DESCTOPC2,');
   qPedidos.Sql.Add('       PED.PED_DESCTOVL,');
   qPedidos.Sql.Add('       PED.PED_VLTOTAL_LIQ,');
   qPedidos.Sql.Add('       PED.PED_VLTOTAL_IPI,');
   qPedidos.Sql.Add('       PED.PED_VLDIFAL,');
   qPedidos.Sql.Add('       PED.PED_VLTOTAL_BRUTO,');
   qPedidos.Sql.Add('       CLI.CLI_EMAIL_ALTERNATIVO,');
   qPedidos.Sql.Add('       t4.PMT_MOTIVO,');
   qPedidos.Sql.Add('       PED.PED_SITUACAO,');
   qPedidos.Sql.Add('       PED.PED_VLFRETE ,');
   qPedidos.Sql.Add('       PED.PED_DESP_ACES,');
   qPedidos.Sql.Add('       PED.PED_OBSERVACAO,');
   qPedidos.Sql.Add('       PED.PED_VALOR_ST,');
   qPedidos.Sql.Add('       PED.CLI_CODIGO,');
   qPedidos.Sql.Add('       CLI.CLI_RAZAO,');
   qPedidos.Sql.Add('       CLI.CLI_FANTASIA,');
   qPedidos.Sql.Add('       CLI.CLI_ENDERE,');
   qPedidos.Sql.Add('       CLI.CLI_BAIRRO,');
   qPedidos.Sql.Add('       CLI.CLI_CIDADE,');
   qPedidos.Sql.Add('       CLI.CLI_UF,');
   qPedidos.Sql.Add('       CLI.CLI_CEP,');
   qPedidos.Sql.Add('       CLI.CLI_PESSOA,');
   qPedidos.Sql.Add('       CLI.CLI_CGC,');
   qPedidos.Sql.Add('       CLI.CLI_INSC,');
   qPedidos.Sql.Add('       CLI.CLI_CONTATO,');
   qPedidos.Sql.Add('       CLI.CLI_FONE,');
   qPedidos.Sql.Add('       CLI.CLI_FAX,');
   qPedidos.Sql.Add('       CLI.CLI_ENDENTR,');
   qPedidos.Sql.Add('       CLI.CLI_CIDENTR,');
   qPedidos.Sql.Add('       CLI.CLI_UFENTR,');
   qPedidos.Sql.Add('       CLI.CLI_CEPENTR,');
   qPedidos.Sql.Add('       CLI.CLI_ENDFAT,');
   qPedidos.Sql.Add('       CLI.CLI_CIDFAT,');
   qPedidos.Sql.Add('       CLI.CLI_UFFAT,');
   qPedidos.Sql.Add('       CLI.CLI_CEPFAT,');
   qPedidos.Sql.Add('       CLI.CLI_EMAIL,');
   qPedidos.Sql.Add('       PED.REP_CODIGO,');
   qPedidos.Sql.Add('       REP.REP_NOME,');
   qPedidos.Sql.Add('       REP.REP_EMAIL,');
   qPedidos.Sql.Add('       PED.PCL_CODIGO,');
   qPedidos.Sql.Add('       PCL.PCL_NOME,');
   qPedidos.Sql.Add('       PED.TRP_CODIGO,');
   qPedidos.Sql.Add('       TRP.TRP_RAZAO,');
   qPedidos.Sql.Add('       TRP.TRP_FONE,');
   qPedidos.Sql.Add('       PED.TRP_REDESP,');
   qPedidos.Sql.Add('       TRR.TRP_RAZAO,');
   qPedidos.Sql.Add('       TRR.TRP_FONE,');
   qPedidos.Sql.Add('       PED.OPV_CODIGO,');
   qPedidos.Sql.Add('       OPV.OPV_DESCRICAO,');
   qPedidos.Sql.Add('       ped.PCX_CODIGO,');
   qPedidos.Sql.Add('       PCX.PCX_DESCRI,');
   qPedidos.Sql.Add('       PED.PED_PLACA,');
   qpedidos.SQL.Add('       PED_NUMERO_PED_CLIENTE,');
   qPedidos.SQL.Add('       FPG_DESCRICAO');
   qPedidos.Sql.Add('from PED0000 PED');
   qPedidos.Sql.Add('     LEFT JOIN CLI0000 CLI on PED.cli_codigo = CLI.cli_codigo' );
   qPedidos.Sql.Add('     LEFT JOIN REP0000 REP on PED.rep_codigo = REP.rep_codigo' );
   qPedidos.Sql.Add('     left join PED_MOTIVO t4 on (t4.PMT_REGISTRO = PED.PMT_REGISTRO)' );
   qPedidos.Sql.Add('     LEFT JOIN PCL0000 PCL on PED.pcl_codigo = PCL.pcl_codigo' );
   qPedidos.Sql.Add('     LEFT JOIN TRP0000 TRP on PED.trp_codigo = TRP.trp_codigo' );
   qPedidos.Sql.Add('     LEFT JOIN TRP0000 TRR ON PED.trp_redesp = TRR.trp_codigo' );
   qPedidos.Sql.Add('     LEFT JOIN OPV0000 OPV ON (OPV.OPV_CODIGO = PED.OPV_CODIGO)' );
   qPedidos.Sql.Add('     LEFT JOIN ENDERECO ENDER ON ENDER.CODIGO = PED.ENDERECO_ENTREGA' );
   qPedidos.Sql.Add('     LEFT JOIN PCX0000 PCX ON PCX.PCX_CODIGO = PED.PCX_CODIGO AND PCX.EMP_CODIGO=PED.EMP_CODIGO' );
   qPedidos.SQL.Add('     LEFT JOIN FORMA_PAGAMENTO FPG ON (FPG.FPG_REGISTRO = PED.FPG_REGISTRO)  ');
   qPedidos.SQL.Add('     LEFT JOIN ORDEMPRODUCAO op ON op.PED_CODIGO = ped.PED_CODIGO  ');
   qPedidos.SQL.Add('     LEFT JOIN ITEM_ORDEMPRODUCAO iop ON iop.OPR_CODIGO = op.OPR_CODIGO   ');
   qPedidos.Sql.Add('where PED.PED_CODIGO = '+qStr(nPedido) + ConcatSe(' and ped.', dbInicio.ExclusivoSql('pedidos') ) );
   qPedidos.Sql.Add('ORDER BY PED.PED_CODIGO');

//   qPedidos.Open;
   if DBInicio.IsDesenvolvimento then
     CopyToClipBoard(qPedidos.SQL.Text);
   cdspedido.Open;

    if sTipo ='GRD' then
    with qPedidosItemGrade, sql do
    begin
     Clear;
     // totais por produto
     Add('SELECT pit.PRF_REGISTRO, pit.PRD_REFER REFERENCIA, ');
	   Add(' PRD.PRD_DESCRI as DESCRICAO,');
	   Add(' SUM(pit.PRF_QTDE) prf_qtde,');
	   Add(' round( (SUM(pit.PRF_QTDE * pit.PRF_PRECO)/SUM(pit.PRF_QTDE)), 2) prf_preco,');
	   Add(' SUM(pit.PRF_QTDE * pit.PRF_PRECO) prf_total');
     Add(' from ped_it01 pit');
     Add(' left join prd0000 prd on (pit.prd_refer = prd.prd_refer'+sempresa+')');
     Add(' where PIT.PED_CODIGO = '+qStr(nPedido) + ConcatSe(' and PIT.', dbInicio.ExclusivoSql('pedidos') ) );
     Add(' GROUP BY 1, 2, 3'  );
     Add(' ORDER BY pit.PRF_REGISTRO');
     qPedidosItemGrade.open;
     CdsPedItemGrade.Open;

     DataCadastros.SqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.text:= '  SELECT DISTINCT t3.PRG_DESCRICAO as GRADE  '+
                                         'from ped_it01 pit   '+
                                         ' left join prd0000 prd on (pit.prd_refer = prd.prd_refer) '+
                                         ' inner JOIN prd_grade t3 on (t3.prg_registro = pit.prg_registro) '+
                                         ' WHERE ped_codigo = '+qStr(nPedido) + ConcatSe(' and PIT.', dbInicio.ExclusivoSql('pedidos') ) +
                                         ' ORDER BY pit.PRF_REGISTRO, pit.PRF_SEQUENCIA ' ;;

     DataCadastros.sqlUpdate.Open;


     // formatação do cabeçalho
     stgrade := TStringList.Create;
     DataCadastros.sqlUpdate.First;
     sgradeHead := '';
     while not DataCadastros.sqlUpdate.Eof do
     begin
       stgrade.Add(DataCadastros.SqlUpdate.FieldByName('GRADE').AsString);
       sgradeHead := sgradeHead +  FormataCabecalho(DataCadastros.SqlUpdate.FieldByName('GRADE').AsString);
       DataCadastros.sqlUpdate.Next;
     end;

     DataCadastros.sqlUpdate.Close;

//     try

//     finally
//       FreeAndNil;
//     end;


    DataCadastros.sqlUpdate1.Close;
    DataCadastros.sqlUpdate1.sql.text:=  'SELECT pit.PRF_REGISTRO, pit.PRD_REFER as PRD_REFER, '+
                                         '	  t3.PRG_DESCRICAO as GRADE, '+
                                         '	  sum(pit.prf_qtde) as prf_qtde '+
                                         ' from ped_it01 pit'+
                                         ' left join prd0000 prd on (pit.prd_refer = prd.prd_refer) '+
                                         ' inner JOIN prd_grade t3 on (t3.prg_registro = pit.prg_registro) '+
                                         ' WHERE ped_codigo = '+qStr(nPedido) + ConcatSe(' and PIT.', dbInicio.ExclusivoSql('pedidos') ) +
                                         ' group by 1, 2, 3 '+
                                         ' ORDER BY pit.PRF_REGISTRO' ;


    DataCadastros.sqlUpdate1.Open;
    DataCadastros.sqlUpdate1.First;
    CdsPedItemGrade.First;

      while not CdsPedItemGrade.Eof do
      begin
        sgradeLinha:= '';
        for i :=0 to stgrade.Count-1 do
        begin
          if DataCadastros.SqlUpdate1.Locate('PRD_REFER;GRADE',VarArrayOf([CdsPedItemGrade.FieldByName('REFERENCIA').Asstring,stgrade[i]]),[]) then
             sgradeLinha :=sgradeLinha  +   espaco(trim(IntToStr(DataCadastros.SqlUpdate1.FieldByName('prf_qtde').AsInteger)) ,Length(stgrade[i]))
          else
             sgradeLinha := sgradeLinha +  espaco('....',Length(stgrade[i]))
        end;
       CdsPedItemGrade.Edit;
       CdsPedItemGrade.FieldByName('lin_descri').AsString := sgradeLinha;
       CdsPedItemGrade.Post;
       CdsPedItemGrade.Next;
      end;
    end
    else
    with qPedidosItem, sql do
    begin
      Clear;
      //IPI_CODIGO
      Add( 'Select '+
            '	CASE ' +
            '   WHEN PIT.PRF_PRAZO_ENTREGA is NULL THEN CAST(pd.PED_DTSAIDA AS date) ' +
            '   ELSE  PIT.PRF_PRAZO_ENTREGA ' +
            ' END AS DATA_ENTREGA,  ' +
           ' cast(CASE PRF_PRODUTO_AGREGADO  '+
           '         WHEN ''N'' THEN pit.PRF_REGISTRO '+
           '         WHEN ''S'' THEN pit.prf_registro_vinculado|| ''.'' ||  PRF_REGISTRO   '+
           '  END AS NUMERIC(14,8)) PRF_REGISTRO, prf_registro as registro, ');
      Add( ' case when (t3.prg_medida_1 > 0.0 and t3.prg_medida_2 > 0.0 and t3.prg_medida_3 > 0.0) '+
                            'then cast( cast(t3.prg_medida_1 as real) * cast(t3.prg_medida_2  as real) * cast(t3.prg_medida_3 as real) * cast(pit.prf_qtde as real) as Numeric(18,3) ) '+
                            'else 0 '+
                            'end as M3, ');
      Add('   case WHEN PRF_REGISTRO_VINCULADO = 0 THEN   (SELECT PRD_REFER FROM pCd_retorna_referencia_item_ped(pit.emp_codigo, pit.prf_registro)) ');
      Add('	ELSE prd.prd_refer	END   as REFERENCIA,');
      Add(' pit.PRF_PRDDESCRI DESCRICAO, ');
      Add(' T44.prdd_sigla ,')                         ;
////      Add('       coalesce( PIT.PRF_PRDDESCRI,'+qStr('')+')');
////      if dbInicio.GetParametroSistema('PMT_COMP_ITEM_PEDIDO') = 'S' then
//      Add('           ||'+qStr(' ')+'||coalesce(PIT.prf_compl_descri,'+qStr('')+')' );
//      Add('           ||'+qStr(' ')+'||coalesce( case');
//      Add('                                      when (T44.prdd_sigla <> '+qStr('')+')' );
//      Add('                                      THEN '+qStr('[')+'||T44.prdd_sigla||'+qStr(']') );
//      Add('                                      END,'+qStr('')+') AS DESCRICAO, ');
      Add('       case when (PIT.PRD_UND is null) or (PIT.PRD_UND = '''') THEN PRD.PRD_UND ELSE PIT.PRD_UND END AS PRD_UND,');
      Add('       COALESCE(PIT.NCM_CODIGO,PRD.ipi_codigo) AS IPI_CODIGO,');
      Add(' PRF_QTDE');
      Add(',PRF_QTDEFAT');
      Add(',PRF_QTDE_ENV_PRODUCAO');
      Add(',PRF_QTDE_REC_PRODUCAO');
      Add(',PRF_PRECO');
      Add(',PRF_CUSTO');
      Add(',PRF_PRAZO_ENTREGA');
      Add(',PRF_MARGEM_PRODUTO');
      Add(',PRF_IDESCTO1');
      Add(',PRF_IDESCTO2');
      Add(',PRF_SITUACAO');
      Add(',PRF_ITEMCOMIS');
      Add(',PRF_IPIALIQ');
      Add(',PRF_ICMSALIQ');
      Add(',PRF_PRDDESCRI');
      Add(',PRF_VAR1');
      Add(',PRF_VAR2');
      Add(',PRF_VAR3');
      Add(',PRF_VAR4');
      Add(',PRF_VAR5');
      Add(',PRF_VAR6');
      Add(',PRF_VAR7');
      Add(',PRF_VAR8');
      Add(',PRF_PRECO_BRUTO');
      Add(',PRF_OP');
      Add(',PRF_QTDE_FAT_VAR1');
      Add(',PRF_QTDE_FAT_VAR2');
      Add(',PRF_QTDE_FAT_VAR3');
      Add(',PRF_QTDE_FAT_VAR4');
      Add(',PRF_QTDE_FAT_VAR5');
      Add(',PRF_QTDE_FAT_VAR6');
      Add(',PRF_QTDE_FAT_VAR7');
      Add(',PRF_QTDE_FAT_VAR8');
      Add(',PRF_FLAG_ATUALIZA_ESTOQUE');
      Add(',PRF_ORIGEM_ITEM');
      Add(',PRF_PRODUTO_AGREGADO');
      Add(',PRF_VALOR_ICMS');
      Add(',USU_CODIGO');
      Add(',PRF_COMPL_DESCRI');
      Add(',pit.PRG_REGISTRO');
      Add(',PRF_PCP_QTDE_ATENDIDA');
      Add(',PRF_PCP_QTDE_ESTOQUE');
      Add(',PRF_ACRESCIMO');
      Add(',PRDL_REGISTRO');
      Add(',PRF_B2B_PEDIDO_COMPRA');
      Add(',PRF_B2B_ITEM_PEDIDO_COMPRA');
      Add(',PRF_VALOR_ST');
      Add(',pit.OPE_NATUREZA');
      Add(',ITT_REGISTRO');
      Add(',pit.PRDD_REGISTRO');
      Add(',pit.PRF_PRECO_ORIGINAL');
      Add(',pit.PRF_TABPRECO');
      Add(',pit.PRDCO_CODIGO_ORIGINAL');
      Add(',pit.ID_DIRETIVAS');
      Add(',pit.OPE_CODIGO');
      Add(',pit.PRD_CODIGO');
      Add(',pit.AMX_CODIGO_DESTINO');
      Add(',pit.AMX_CODIGO_ORIGEM');
      Add(',pit.USOU_VERBA');
      Add(',pit.VALOR_VERBA');
      Add(',pit.ped_codigo');
      Add(',pit.emp_codigo');
      Add(',pit.prd_refer,');
      add(' CASE    ');
      add('    WHEN (PRF_REGISTRO_VINCULADO > 0) and (PRF_PRODUTO_AGREGADO = ''S'') '+
                      ' THEN (SELECT prf_qtde FROM PED_IT01 WHERE pit.PRF_REGISTRO_VINCULADO = PRF_REGISTRO ) * pit.PRF_qtde ');
      add('    ELSE PRF_qtde  ');
      add('  END PRF_QTDE_CALC ,' );
      Add('       PTI.PTI_SIGLA,');
      Add('       t4.lin_descri,');
      Add('       t5.prde_endereco,');
      Add('       PRD.PRD_EMBALA,');
      Add('       PRD.PRD_PESOKG,');
      Add('       PRD.PRD_PESOLIQ,');
      Add('       PRD.PRD_DCVAR1,');
      Add('       PRD.PRD_DCVAR2,');
      Add('       PRD.PRD_DCVAR3,');
      Add('       PRD.PRD_DCVAR4,');
      Add('       PRD.PRD_DCVAR5,');
      Add('       PRD.PRD_DCVAR6,');
      Add('       PRD.PRD_DCVAR7,');
      Add('       PRD.PRD_DCVAR8,');
      Add('       T3.PRG_INDICE,');
      Add('       PD.PED_NUMERO_PED_CLIENTE,');
      Add('       pit.PRF_REGISTRO_VINCULADO, ');
      Add('       cast (pit.PRF_REGISTRO as integer) PRF_REGISTRO, ');
      Add('       PRD_PRODSERV, ');
      Add('       PRF_QTDEPEND, ');
      Add(' COALESCE((SELECT SUM(COALESCE(kas_saldo,0)) FROM KARDEX_ALMOX_SALDO KS WHERE PRD_CODIGO = pit.PRD_CODIGO AND pit.AMX_CODIGO_DESTINO = KS.AMX_CODIGO),0) ESTOQUE, ');
      Add('(SELECT ROUND(PRF_QTDE) FROM PED_IT01 it2 WHERE it2.PRF_REGISTRO = pit.PRF_REGISTRO_VINCULADO) PRF_QTDE_KIT, ');
      Add('       CAST ( (prd.prd_pesoliq * pit.prf_qtde) AS NUMERIC(15,5) ) As PesoKG, ');

      Add('    case PRF_PRAZO_DIAS WHEN NULL THEN '''' WHEN 0 THEN ''Imediato'' when 1 then ''1 dia'' else cast(PRF_PRAZO_DIAS as varchar(3)) || '' dias'' end  '+
          '|| CASE WHEN PRF_QTDEPEND > 0 THEN ''*'' ELSE '''' END PRF_PRAZO_DIAS , ' );
      Add('  (CASE WHEN PRF_PESOKG = 0 THEN PRD_PESOliq ELSE PRF_PESOKG END)  as PRF_PESOKG ');
      add('from ped_it01 pit ');
      add('     JOIN PED0000 pd ON pd.PED_CODIGO = pit.PED_CODIGO  AND pd.EMP_CODIGO = pit.EMP_CODIGO' );
      add('     left join prd0000 prd on (prd.prd_refer = IIF(Coalesce(pit.prd_refer,'+qStr('')+')='+qStr('')+',pit.prdco_codigo_original,pit.prd_refer) '+sempresa+')');
      add('     left join prd_tipo pti on (prd.pti_codigo = pti.pti_codigo)');
      add('     left join prd_grade t3 on (t3.prg_registro = pit.prg_registro) ');
      add('     left join prd_diretiva t44 on (t44.prdd_registro = pit.prdd_registro)');
      add('     left join prd_linha t4 on (t4.lin_codigo = prd.lin_codigo)');
      add('     left join prd0000_enderecamento t5 on (t5.prde_registro = prd.prde_registro)');
      Add('where PIT.PED_CODIGO = '+qStr(nPedido) + ConcatSe(' and PIT.', dbInicio.ExclusivoSql('pedidos') ) );
      if sTipo = 'OP' then
        add(' AND pTI.PTI_SIGLA = ''PA''');

      if  MatchStr(stipo,['ROMKIT','PEDKIT', 'PPAC']) then
      begin
       qItemsKit.SQL.Text := qPedidosItem.SQL.Text;
       qItemsKit.SQL.Add('      and pit.PRF_PRODUTO_AGREGADO = '+qStr('S') );
//       qItemsKit.SQL.Add('ORDER BY  pit.prd_refer');
      end;
       if PedidoSemItemKit then
          Add('      and pit.PRF_PRODUTO_AGREGADO<>'+qStr('S') );

      Add('ORDER BY pit.PRF_SEQUENCIA');

      if DBInicio.IsDesenvolvimento then
        CopyToClipBoard(qPedidosItem.SQL.Text);

       CdsPedidosItem.Open;
    end;

   if sTipo = 'ROMPRD' then
   begin
    qOperacoes.Close;
    qOperacoes.SQL.Clear;
    qOperacoes.SQL.Text :=
          'SELECT ope_descricao from OPERACOES op ';
    qOperacoes.Open;

   end;
   sPedidoTitulo := fPedidoTipo;
   CdsPedidosItem.Filtered := False;
   if dbInicio.USUARIO.EMAIL_USUARIO <> '' then
      email_de_enviado := dbInicio.USUARIO.EMAIL_USUARIO     // email da senha de usuario
   else
     if dbInicio.Empresa.EMAILVENDA <> '' then
        email_de_enviado := dbInicio.EMPRESA.EMAILVENDA
     else
        email_de_enviado := dbInicio.EMPRESA.Email;
   if stipo= 'SEV' then
   begin
     relatorio:= frxOrdemServico;
     sPedidoObs    := fMemoPedido;
   end
   else
   if stipo= 'SEVS' then
   begin
     CdsPedidosItem.Filter:= 'PRD_PRODSERV = ''S'' ';
     CdsPedidosItem.Filtered := True;
     relatorio:= frxOrdemServico;
     sPedidoObs    := fMemoPedido;
   end
   else
   if stipo= 'PPAC' then
   begin
     relatorio := frxPedidoPPAC;
     sPedidoObs := fMemoPedido;
   end
   else
   if stipo= 'PPACSI' then
   begin
     relatorio := frxPedidoPpacSimples;
     sPedidoObs := fMemoPedido;
   end
   else
   if sTipo = 'GRD' then
   begin
      relatorio := frxPedidoGrade;
      TfrxMemoView(relatorio.FindObject('mDescGrades')).Text :=  sgradeHead;
      sPedidoObs    := fMemoPedido;
   end
   else
   if (sTipo = 'LINHA') then //Sem Valor
   BEGIN
      relatorio := frxPedidoLinha;
      sPedidoObs    := fMemoPedido;
      TfrxMemoView(relatorio.FindObject('Memo85')).Text:=sPedidoTitulo;
   END
   else
   if (sTipo = 'SV') then //Sem Valor
   BEGIN
      relatorio := frxPedidoSemValor;
      TfrxMemoView(relatorio.FindObject('Memo85')).Text:=sPedidoTitulo;
   END
   else
   if (sTipo = 'IMG') then //Sem Valor
   BEGIN
      GravarFotos;
      relatorio := frxPedidoOrcamentoImagem;
      TfrxMemoView(relatorio.FindObject('Memo85')).Text:=sPedidoTitulo;
   END
   else
   if (sTipo = 'IMGG') then //Sem Valor
   BEGIN
      GravarFotos;
      relatorio := frxPedidoOrcamentoImagemGrande;
      TfrxMemoView(relatorio.FindObject('Memo85')).Text:=sPedidoTitulo;
   END
   else
   if (sTipo = 'IMGBIG') then
   begin
      GravarFotos;
      relatorio := frxPedidoOrcamentoImagemBig;
      TfrxMemoView(relatorio.FindObject('Memo85')).Text := sPedidoTitulo;
   end
   else
   if (sTipo = 'ROM') and CabecalhoResumido then
      relatorio := frxRomaneioCabResumido
   else
   if (sTipo = 'ROM') then //Sem Valor
      relatorio := frxPedidoRomaneio
   else
   if (sTipo = 'ROM3') then //Sem Valor
      relatorio := frxPedidoRomaneioM3
   else
   if (sTipo = 'ROMIND') then
      relatorio := frxRomaneioIndustria
   else
   if (sTipo = 'ROMORIG') then //Sem Valor
      relatorio := frxPedidoRomaneioCodOriginal
   else
   if (sTipo = 'ROMCORTE') then //Sem Valor
      relatorio := frxRomaneioCorte
   else
   if stipo = 'ROMPRD' then // romaneio produção
      relatorio := frxRomaneioProducao
   else
   if (sTipo = 'BSC') then //Sem Valor
      relatorio := frxRomaneioBSC
   else
   if (sTipo = 'ROMANEIOPLANILHA') then
      relatorio := frxRomaneioPlanilha
   else
   if MatchStr(stipo,['ROMKIT','PEDKIT']) then
   begin
     relatorio := frxRomaneioKit;
     relatorio.FindObject('fieldPreco').Visible :=  ( STIPO = 'PEDKIT');
     relatorio.FindObject('laPreco').Visible :=  ( STIPO = 'PEDKIT') ;
     relatorio.FindObject('fieldPreco').Top := 0 ;

     relatorio.FindObject('labelvalortotal').Visible :=  ( STIPO = 'PEDKIT') ;
     relatorio.FindObject('campovalortotal').Visible :=  ( STIPO = 'PEDKIT') ;
     relatorio.FindObject('campovalortotal').Top := 0 ;

     relatorio.FindObject('labellocalizacao').Visible :=  ( STIPO = 'ROMKIT') ;
     relatorio.FindObject('campolocalizacao').Visible :=  ( STIPO = 'ROMKIT') ;
     relatorio.FindObject('campolocalizacao').Top :=  0;
     if ( STIPO = 'ROMKIT')  then
          relatorio.FindObject('campolocalizacao').Top := 0 ;


     relatorio.FindObject('totalpedido').Visible :=  ( STIPO = 'PEDKIT') ;

     kit := temkit;
     relatorio.FindObject('PageDetalheKT').Visible := Kit;

     if sTipo = 'ROMKIT' then
       TfrxMemoView(relatorio.FindObject('titulorelatorio')).Text := 'ROMANEIO DE '+sPedidoTitulo
     else
        TfrxMemoView(relatorio.FindObject('titulorelatorio')).Text :=sPedidoTitulo;


     cdsItensKit.Open;

   end
   else
   if (sTipo = 'ORCAMENTOIMAGEMTOTAL') then //Sem Valor
   BEGIN
      GravarFotos;
      CdsPedidosItem.First;
      relatorio := frxPedidoOrcamentoImagemSoTotal;
      TfrxMemoView(relatorio.FindObject('Memo85')).Text:=sPedidoTitulo;
   END
   else
   if (sTipo = 'ORCAMENTOLINHA') then
   begin
         SetMsgOrcamento;
         relatorio := frxPedidoOrcamentoLinha;
         TfrxMemoView(relatorio.FindObject('Memo85')).Text:=sPedidoTitulo;              
   end
   else
   if (sTipo = 'OR') then //Orçamento
   begin
        SetMsgOrcamento;
        if CabecalhoResumido then
          relatorio := frxOrcamentoCabResumido
        else
          relatorio := frxPedidoOrcamento;
        TfrxMemoView(relatorio.FindObject('Memo85')).Text:=sPedidoTitulo;
   end
   else
   IF (sTipo = 'ORCMAIS') then
   begin
        relatorio := frxPedido;
        sPedidoObs    := fMemoPedido;
        TfrxMemoView(relatorio.FindObject('Memo85')).Text:=sPedidoTitulo;
        TfrxMemoView(relatorio.FindObject('Memo4')).Text:='ORÇAMENTO:';
        TfrxMemoView(relatorio.FindObject('mmOrc')).Visible := True;
        TfrxMemoView(relatorio.FindObject('ValorSt')).Text := 'Prazo (dias úteis)';
        TfrxMemoView(relatorio.FindObject('ValorStField')).DataField := 'PRF_PRAZO_DIAS';
        //TfrxLineView(relatorio.FindObject('lnOrc')).Visible := True;
   end
   else if sTipo = 'PRZ' then
   begin
     if CabecalhoResumido then
      relatorio := frxPedidoPrazosResumido
     else
      relatorio := FrxPedidoPrazos;
      sPedidoObs    := fMemoPedido;

   end
   else    if STIPO = 'PESOGRADE' then
   begin
      relatorio := frxPedidoPesoGrade;
      TfrxMemoView(relatorio.FindObject('Memo85')).Text:=sPedidoTitulo;
       sPedidoObs    := fMemoPedido;
   end
   else if STIPO = 'ESPACO' then
   begin
     relatorio := frxPedidoEspaco;
   end
   else if sTipo = 'OP' then
   begin
      cdsMola.DisableControls;
      try
        //ShowMessage(nPedido);
        cdsMola.Close;
        qMola.SQL.Clear;
        qMola.SQL.Text := 'SELECT ' +
        ' it.PRF_SEQUENCIA, pd.ped_codigo, pd.emp_codigo, it.PRDCO_CODIGO_ORIGINAL as PRD_CODORIGINAL, ' +
        ' iop.IOP_NORDEM, tm.MMO_TIPO, tm.MMO_VARIACAO, ' +
        ' cast(CASE PRF_PRODUTO_AGREGADO  '+
        '         WHEN ''N'' THEN it.PRF_REGISTRO '+
        '         WHEN ''S'' THEN it.prf_registro_vinculado|| ''.'' ||  it.PRF_REGISTRO   '+
        '  END AS NUMERIC(14,8)) PRF_REGISTRO, it.prf_registro as registro, ' +
        '	CASE ' +
        '   WHEN IT.PRF_PRAZO_ENTREGA is NULL THEN CAST(pd.PED_DTSAIDA AS date) ' +
        '   ELSE  IT.PRF_PRAZO_ENTREGA ' +
        ' END AS PRF_PRAZO_ENTREGA,  ' +
        ' MMO.MMO_ARQUIVO_FICHA_TECNICA, ' +
        ' TM.MMO_DIAMETRO_INT_MAIOR TM_DIAMETRO_INT_MAIOR, TM.MMO_DIAMETRO_INT_MENOR TM_DIAMETRO_INT_MENOR,' +
    		' MMO.MMO_DIAMETRO_INT_MAIOR, MMO.MMO_TOLERANCIA_DI_MAIOR_MAX, MMO.MMO_TOLERANCIA_DI_MAIOR_MIN, ' +
		    ' MMO.MMO_DIAMETRO_INT_MENOR, MMO.MMO_TOLERANCIA_DI_MENOR_MAX, MMO.MMO_TOLERANCIA_DI_MENOR_MIN, ' +
        ' TM.MMO_DIAMETRO_ARAME TM_DIAMETRO_ARAME, TM.MMO_DIAMETRO_INTERNO TM_DIAMETRO_INTERNO, ' +
        ' TM.MMO_DIAMETRO_MEDIO TM_DIAMETRO_MEDIO, TM.MMO_DIAMETRO_EXTERNO TM_DIAMETRO_EXTERNO, ' +
        ' TM.MMO_DIAMETRO_EXTERNO_MEIO TM_DIAMETRO_EXTERNO_MEIO, TM.MMO_DIAMETRO_EXT_MAIOR TM_DIAMETRO_EXT_MAIOR, ' +
        ' TM.MMO_DIAMETRO_EXT_MENOR TM_DIAMETRO_EXT_MENOR, TM.MMO_PASSO TM_PASSO, ' +
        ' TM.MMO_COM_LIVRE TM_COM_LIVRE, TM.MMO_COMP_CORPO TM_COMP_CORPO, ' +
        ' TM.MMO_ALT_GANCHO TM_ALT_GANCHO, TM.MMO_ABERT_GANCHO TM_ABERT_GANCHO, ' +
        ' TM.MMO_COMP_GANCHO TM_COMP_GANCHO, TM.MMO_DESENVOLVIMENTO TM_DESENVOLVIMENTO, ' +
        ' TM.MMO_ESPIRAIS_UTEIS TM_ESPIRAIS_UTEIS, TM.MMO_ESPIRAL_TOTAL TM_ESPIRAL_TOTAL, ' +
        ' TM.MMO_SENTIDO TM_SENTIDO, TM.MMO_PESO TM_PESO, TM.MMO_MAQUINA TM_MAQUINA, ' +
        ' TM.MMO_MANDRIL TM_MANDRIL, TM.MMO_CACHIMBO TM_CACHIMBO, TM.MMO_COPIADOR TM_COPIADOR, ' +
        ' TM.MMO_GANCHO TM_GANCHO, TM.MMO_DISCO TM_DISCO, TM.MMO_OUTROS TM_OUTROS, ' +
        ' TM.MMO_TIPOEMBALAGEM TM_TIPOEMBALAGEM, TM.MMO_LOCALIZACAO TM_LOCALIZACAO, ' +
        ' TM.MMO_SETOR TM_SETOR, TM.MMO_VAO TM_VAO, ' +
        ' MMO.MMO_CODIGO, MMO.PRD_CODIGO, MMO.ART_CODIGO, MMO.ARA_CODIGO, MMO.CMO_CODIGO, MMO.GAN_CODIGO, '+
        ' MMO.ACO_CODIGO, MMO.ASU_CODIGO, MMO.TSU_CODIGO, MMO.MMO_TEMPO_PRODUCAO, MMO.MMO_PESO_ESPECIFICO, MMO.MMO_CISALHAMENTO, '+
        ' MMO.MMO_RES_TRACAO, MMO.MMO_TRATAMENTO_TERMICO, MMO.MMO_TEMPO_TEMPERA, MMO.MMO_TEMPERATURA_TEMPERA, '+
        ' MMO.MMO_TEMPO_REVENIMENTO, MMO.MMO_TEMPERATURA_REVENIMENTO, MMO.MMO_DUREZA_MINIMA, MMO.MMO_DUREZA_MAXIMA, '+
        ' MMO.MMO_TRATAMENTO_SUPERFICIAL, MMO.MMO_DIAMETRO_ARAME, MMO.MMO_TOLERANCIA_DIA_MIN, MMO.MMO_TOLERANCIA_DIA_MAX, '+
        ' MMO.MMO_DIAMETRO_INTERNO, MMO.MMO_TOLERANCIA_DI_MIN, MMO.MMO_TOLERANCIA_DI_MAX, MMO.MMO_DIAMETRO_MEDIO, '+
        ' MMO.MMO_TOLERANCIA_DM_MIN, MMO.MMO_TOLERANCIA_DM_MAX, MMO.MMO_DIAMETRO_EXTERNO, MMO.MMO_TOLERANCIA_DE_MIN, '+
        ' MMO.MMO_TOLERANCIA_DE_MAX, MMO.MMO_DIAMETRO_EXTERNO_MEIO, MMO.MMO_TOLERANCIA_DEM_MIN, MMO.MMO_TOLERANCIA_DEM_MAX, '+
        ' MMO.MMO_VAO, MMO.MMO_TOLERANCIA_VAO_MIN, MMO.MMO_TOLERANCIA_VAO_MAX, MMO.MMO_PASSO, MMO.MMO_TOLERANCIA_PASSO_MIN, '+
        ' MMO.MMO_TOLERANCIA_PASSO_MAX, MMO.MMO_COM_LIVRE, MMO.MMO_TOLERANCIA_LIVRE_MIN, MMO.MMO_TOLERANCIA_LIVRE_MAX, MMO.MMO_COM_SOLIDO, '+
        ' MMO.MMO_TOLERANCIA_SOLIDO_MIN, MMO.MMO_TOLERANCIA_SOLIDO_MAX, MMO.MMO_ESPIRAIS_UTEIS, MMO.MMO_TOLERANCIA_ESPUTEIS_MIN, '+
        ' MMO.MMO_TOLERANCIA_ESPUTEIS_MAX, MMO.MMO_ESPIRAL_TOTAL, MMO.MMO_TOLERANCIA_ESPT_MIN, MMO.MMO_TOLERANCIA_ESPT_MAX, '+
        ' MMO.MMO_DESENVOLVIMENTO, MMO.MMO_TOLERANCIA_DES_MIN, MMO.MMO_TOLERANCIA_DES_MAX, MMO.MMO_RETIFICADO, MMO.MMO_PARALIELISMO, '+
        ' MMO.MMO_PERPENDICULARIMO, MMO.MMO_SENTIDO, MMO.MMO_PESO, MMO.MMO_OBSERVACAO, MMO.MMO_CONSTANTE_ESPE, MMO.MMO_TOLERANCIA_CONST_MIN, '+
        ' MMO.MMO_TOLERANCIA_CONST_MAX, MMO.MMO_CONSTANTE_CALCULADA, MMO.MMO_CONST_CALC_MIN, MMO.MMO_CONST_CALC_MAX, MMO.MMO_ALTURAL1, '+
        ' MMO.MMO_TOLERANCIA_ALT1_MIN, MMO.MMO_TOLERANCIA_ALT1_MAX, MMO.MMO_ALTURAL2, MMO.MMO_TOLERANCIA_ALT2_MIN, '+
        ' MMO.MMO_TOLERANCIA_ALT2_MAX, MMO.MMO_ALTURAL3, MMO.MMO_TOLERANCIA_ALT3_MIN, MMO.MMO_TOLERANCIA_ALT3_MAX, '+
        ' MMO.MMO_ALTURAL4, MMO.MMO_TOLERANCIA_ALT4_MIN, MMO.MMO_TOLERANCIA_ALT4_MAX, MMO.MMO_CURSOS1, MMO.MMO_TOLERANCIA_CURS1_MIN, '+
        ' MMO.MMO_TOLERANCIA_CURS1_MAX, MMO.MMO_CURSOS2, MMO.MMO_TOLERANCIA_CURS2_MIN, MMO.MMO_TOLERANCIA_CURS2_MAX, MMO.MMO_CURSOS3, '+
        ' MMO.MMO_TOLERANCIA_CURS3_MIN, MMO.MMO_TOLERANCIA_CURS3_MAX, MMO.MMO_CURSOS4, MMO.MMO_TOLERANCIA_CURS4_MIN, '+
        ' MMO.MMO_TOLERANCIA_CURS4_MAX, MMO.MMO_CARGAP1, MMO.MMO_TOLERANCIA_CARGA1_MIN, MMO.MMO_TOLERANCIA_CARGA1_MAX, MMO.MMO_CARGAP2, '+
        ' MMO.MMO_TOLERANCIA_CARGA2_MIN, MMO.MMO_TOLERANCIA_CARGA2_MAX, MMO.MMO_CARGAP3, MMO.MMO_TOLERANCIA_CARGA3_MIN, '+
        ' MMO.MMO_TOLERANCIA_CARGA3_MAX, MMO.MMO_CARGAP4, MMO.MMO_TOLERANCIA_CARGA4_MIN, MMO.MMO_TOLERANCIA_CARGA4_MAX, '+
        ' MMO.MMO_TENSAO1, MMO.MMO_TOLERANCIA_TENSAO1_MIN, MMO.MMO_TOLERANCIA_TENSAO1_MAX, MMO.MMO_TENSAO2, MMO.MMO_TOLERANCIA_TENSAO2_MIN, '+
        ' MMO.MMO_TOLERANCIA_TENSAO2_MAX, MMO.MMO_TENSAO3, MMO.MMO_TOLERANCIA_TENSAO3_MIN, MMO.MMO_TOLERANCIA_TENSAO3_MAX, MMO.MMO_TENSAO4, '+
        ' MMO.MMO_TOLERANCIA_TENSAO4_MIN, MMO.MMO_TOLERANCIA_TENSAO4_MAX, MMO.MMO_CARGA, MMO.MMO_TOLERANCIA_CARGA_MIN, '+
        ' MMO.MMO_TOLERANCIA_CARGA_MAX, MMO.MMO_TENSAO, MMO.MMO_TOLERANCIA_TEN_MIN, MMO.MMO_TOLERANCIA_TEN_MAX, MMO.MMO_MAQUINA, '+
        ' MMO.MMO_MANDRIL, MMO.MMO_CACHIMBO, MMO.MMO_COPIADOR, MMO.MMO_GANCHO, MMO.MMO_DISCO, MMO.MMO_OUTROS, MMO.MMO_LOCALIZACAO, '+
        ' MMO.MMO_SETOR, MMO.MMO_OBSGERAIS, MMO.MMO_TIPOEMBALAGEM, MMO.MMO_COMP_CORPO, MMO.MMO_TOLERANCIA_COMP_CORPO_MAX, '+
        ' MMO.MMO_TOLERANCIA_COMP_CORPO_MIN, MMO.MMO_ALT_GANCHO, MMO.MMO_TOLERANCIA_ALT_GANCHO_MAX, MMO.MMO_TOLERANCIA_ALT_GANCHO_MIN, '+
        ' MMO.MMO_ABERT_GANCHO, MMO.MMO_TOLERANCIA_ABERT_GANCHO_MAX, MMO.MMO_TOLERANCIA_ABERT_GANCHO_MIN, MMO.MMO_COMP_GANCHO, '+
        ' MMO.MMO_DIAMETRO_EXT_MAIOR, MMO.MMO_DIAMETRO_EXT_MENOR, MMO.MMO_PERDA, MMO.MMO_TOLERANCIA_DE_MAIOR_MIN, MMO.MMO_TOLERANCIA_DE_MAIOR_MAX, ' +
        ' MMO.MMO_TOLERANCIA_DE_MENOR_MIN, MMO.MMO_TOLERANCIA_DE_MENOR_MAX, MMO.MMO_EXTREMIDADE_MOLA_MATERIA, ' +
        ' MMO.MMO_TOLERANCIA_COMP_GANCHO_MAX, MMO.MMO_TOLERANCIA_COMP_GANCHO_MIN, ARA.NOME AS ARA_NOME, ART.ART_NOME, CMO_NOME, '+
        ' TSU.TSU_NOME, ASU.ASU_NOME, ACO.ACO_NOME, PRD.PRD_DESCRI, PRD.PRD_REFER, IT.PRF_QTDE, GA.GAN_NOME, TP.TEM_DESCRICAO '+
        ' FROM MOLA_MATERIA MMO ' +
        ' LEFT JOIN ARAME ARA ON (ARA.ARA_CODIGO = MMO.ARA_CODIGO) '+
        ' LEFT JOIN ARTEFATO ART ON(ART.ART_CODIGO = MMO.ART_CODIGO) LEFT JOIN CLASSIFICACAO_MOLA CMO ON(CMO.CMO_CODIGO = MMO.CMO_CODIGO) '+
        ' LEFT JOIN TRATAMENTO_SUPERFICIAL TSU ON(TSU.TSU_CODIGO = MMO.TSU_CODIGO) '+
        ' LEFT JOIN ACABAMENTO_SUPERFICIAL ASU ON(ASU.ASU_CODIGO = MMO.ASU_CODIGO) '+
        ' LEFT JOIN ACABAMENTO_CORES ACO ON(ACO.ACO_CODIGO = MMO.ACO_CODIGO) '+
        ' LEFT JOIN GANCHO GA ON(GA.GAN_CODIGO = MMO.GAN_CODIGO) ' +
        ' JOIN PRD0000 PRD ON (PRD.PRD_CODIGO = MMO.PRD_CODIGO) ' +
        ' JOIN PED_IT01 IT ON (IT.PRD_REFER = PRD.PRD_REFER AND IT.PED_CODIGO = '+ qstr(nPedido) +') '+
        ' JOIN PED0000 pd ON (pd.ped_codigo =  IT.PED_CODIGO) ' +
        ' JOIN TIPO_MOLA TM ON(TM.PTI_CODIGO = PRD.PTI_CODIGO) ' +
        ' LEFT JOIN TIPO_EMBALAGEM TP ON (TP.TEM_CODIGO = MMO.TEM_CODIGO) ' +
        ' LEFT JOIN ORDEMPRODUCAO op ON (op.PED_CODIGO = it.PED_CODIGO) ' +
        ' LEFT JOIN ITEM_ORDEMPRODUCAO iop ON (ioP.OPR_CODIGO = op.OPR_CODIGO AND IT.PRD_REFER = PRD.PRD_REFER AND iop.PRf_REGISTRO = it.PRf_REGISTRO) ' +
        '      WHERE MMO.PRD_CODIGO IN (SELECT prd_codigo FROM PRD0000 PRD JOIN prd_tipo TI ON(PRD.PTI_CODIGO = TI.PTI_CODIGO) '+
        ' WHERE TI.PTI_SIGLA = ''PA'' AND PRD.PRD_REFER IN (SELECT PRD_REFER FROM ped_it01 WHERE PED_CODIGO = '+ qStr(nPedido)+'))' +
        ' ORDER BY it.PRF_SEQUENCIA';

        //qMola.SQL.Text := ' SELECT * FROM MOLA_MATERIA where PRD_CODIGO IN '+
        //'(SELECT prd_codigo FROM PRD0000 PRD JOIN prd_tipo TI ON(PRD.PTI_CODIGO = TI.PTI_CODIGO) '+
        //'WHERE TI.PTI_SIGLA = ''PA'' AND PRD.PRD_REFER IN (SELECT PRD_REFER FROM ped_it01 WHERE PED_CODIGO = '+ qStr(nPedido)+'))';

        // Clipboard.AsText := qMola.SQL.Text;
      finally
       cdsMola.EnableControls;
       if DBInicio.IsDesenvolvimento then
        CopyToClipBoard(qMola.SQL.Text);

       cdsMola.Open;
      end;

{
      TIPO DA MOLA
      C = Compressão
      R = Tração
      O = Torção
      D = Condutor

      VARIAÇÃO
      P = Paralela
      C = Conica
      B = Biconica
      V = Convexa
 }
      GravarFotosMola;
      frxOrdemProducaoModelos.ShowReport();

   end
   else
   begin
         relatorio := frxPedido;
         if (sTipo = 'ESPELHO') then
         begin
               sPedidoTitulo := 'ESPELHO DA NOTA';
               sPedidoObs    := fMemoMsgAdicional;
               TfrxMemoView(relatorio.FindObject('Memo4')).Text:='NÚMERO:';
         end
         else if PedidoSemItemKit then
         begin
           TfrxMemoView(relatorio.FindObject('ValorSt')).Text := 'Prazo (dias úteis)';
           TfrxMemoView(relatorio.FindObject('ValorStField')).DataField := 'PRF_PRAZO_DIAS';
           sPedidoObs    := fMemoPedido;
         end
         else
         begin
              //sPedidoTitulo := 'PEDIDO';
              sPedidoObs    := fMemoPedido;
              TfrxMemoView(relatorio.FindObject('Memo4')).Text:='PEDIDO:';
         end;

         if (cdsPedidoPED_SITUACAO.AsString = 'C') then
            sPedidoTitulo := sPedidoTitulo+' CANCELADO - '+cdspedidoPMT_MOTIVO.AsString;
         TfrxMemoView(relatorio.FindObject('Memo85')).Text:=sPedidoTitulo;
         IF cdspedidoCIDADE_ENTREGA.AsString<>'' then
            TfrxMemoView(relatorio.FindObject('Memo107')).Visible:=True;
   end;


   if sTipo <> 'OP' then
   begin

     SetCCustoVisible ( TfrxMemoView(relatorio.FindObject('lbCCusto')) ) ;
     SetCCustoVisible ( TfrxMemoView(relatorio.FindObject('mmCCusto1')) ) ;
     SetCCustoVisible ( TfrxMemoView(relatorio.FindObject('mmCCusto2')) ) ;

     TfrxPictureView(relatorio.FindObject('LogoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);
     if Assigned ( TfrxPictureView(relatorio.FindObject('LogoEmpresa2')) ) then
        TfrxPictureView(relatorio.FindObject('LogoEmpresa2')).Picture.Assign(DBInicio.Empresa.LOGO);

     if Assigned ( TfrxPictureView(relatorio.FindObject('LogoEmpresa3'))) then
      TfrxPictureView(relatorio.FindObject('LogoEmpresa3')).Picture.Assign(DBInicio.Empresa.LOGO);

     if (bVisualiza) then
        relatorio.ShowReport()
     Else  // envia email
     begin

          try
            CreateDirectory(PWideChar(dbInicio.SistemaLocal+'pedidos'), nil);
          except
          end;

          frxPDFExport1.DefaultPath := dbInicio.SistemaLocal+'pedidos';
          frxPDFExport1.FileName    := nPedido + '.pdf';
          frxPDFExport1.ShowDialog  := False;
          emailValor := cdsPedidoPED_VLTOTAL_LIQ.AsFloat;
          emailCliente := cdspedidoCLI_CODIGO.AsString;
          emailPedido := cdspedidoPED_CODIGO.AsString;
          relatorio.PrepareReport();
          relatorio.Export(frxPDFExport1);

          tcr := TfrmEmail0001.Create(Nil);
          try
             tcr.modulo := 'Pedido';
             tcr.titulo := sPedidoTitulo + ' - Ped - ' + emailPedido + ' - R$ ' +  FormatFloat('##0.00', emailValor) ;

             tcr.sClienteCodigo := fclientecodigo;
             tcr.sCaminhoArquivo := dbInicio.SistemaLocal+'pedidos\'+nPedido + '.pdf';
            // tcr.sEmailCliente :=
             //tcr.email_de_enviado := dbInicio.BuscaUmDadoSqlasString( 'Select REP_EMAIL from REP0000 Where REP_CODIGO = '+QuotedStr(nVendedor) );
             tcr.sEmailCliente   := iif(Trim(fOrsEMail) <> '', fOrsEmail, cdsPedidoCLI_EMAIL_ALTERNATIVO.AsString );
             tcr.sAssunto        := 'Pedido de '+fPedidoTipo+ ' ' +  nPedido+' - '+dbInicio.Empresa.FANTASIA;
             tcr.ProcessarInformacoes;
             if tcr.ssucesso  then
               GravaHistoricoEmail(tcr.modulo, tcr.EdMail.Text,  tcr.titulo, 'C', emailCliente, Now, DBInicio.Usuario.CODIGO, tcr.sCaminhoArquivo);

          finally
                 FreeAndNil(tcr);
          end;
     end;
   end;

   TrimAppmemorySize;

end;



function TFrmRelatoriosPedido.TemKit: boolean;
var clone: TClientDataSet;
begin
  clone := TClientDataSet.Create(Self);
  try
    clone.CloneCursor(CdsPedidosItem,false);
    clone.Filter := 'PTI_SIGLA =''KT''';
    clone.Filtered := True;
    result := clone.RecordCount > 0 ;
  finally
    clone.Free;
  end;

end;

procedure TFrmRelatoriosPedido.cdsPedidosItemAfterOpen(DataSet: TDataSet);
var clone: TClientDataSet;
 i,j : integer;
begin
  inherited;
  clone := TClientDataSet.Create(Self);
  try
    clone.CloneCursor(TCustomClientDataSet(DataSet) ,false);
    clone.First;
    i:=0;
    while not clone.Eof do
    begin
      clone.Edit;
      if clone.FieldByName('PRF_PRODUTO_AGREGADO').AsString = 'N' then
      begin
       inc(i);
       clone.FieldByName('SEQUENCIA').AsString := IntToStr(i);
       j:= 0;
      end
      else
      begin
       inc(j);
       clone.FieldByName('SEQUENCIA').AsString := IntToStr(i) +'.'+IntToStr(j);
      end;
      clone.Post;
      clone.Next;
    end;
  finally
    clone.Free;
  end;
end;

procedure TFrmRelatoriosPedido.CdsPedidosItemCalcFields(DataSet: TDataSet);
begin
  inherited;
  CdsPedidosItemCC_PRECO_TOT.asCurrency := cdsPedidosItemPRF_QTDE_CALC.AsFloat*CdsPedidosItemPRF_PRECO.AsFloat;
end;

procedure TFrmRelatoriosPedido.frxOrdemProducaoOriGetValue(const VarName: string; var Value: Variant);
begin
  inherited;
  if (VarName  = 'RAZAO') then
     Value := DBInicio.Empresa.RAZAO;
end;

procedure TFrmRelatoriosPedido.frxOrdemProducaoGetValue(const VarName: string; var Value: Variant);
begin
  inherited;
  if (VarName  = 'RAZAO') then
     Value := DBInicio.Empresa.RAZAO;
end;

procedure TFrmRelatoriosPedido.frxOrdemProducaoModelosBeginDoc(Sender: TObject);
begin
  inherited;
  TfrxPictureView(frxOrdemProducaoModelos.FindObject('LogoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);
end;

procedure TFrmRelatoriosPedido.frxOrdemProducaoModelosGetValue(const VarName: string; var Value: Variant);
begin
  inherited;
  if (VarName  = 'RAZAO') then
     Value := DBInicio.Empresa.RAZAO
  else
  if (VarName  = 'MATERIAPRIMA') then
  begin
    if cdsMolaPRD_CODORIGINAL.AsString = '' then
      Value := cdsMolaPRD_REFER.AsString + ' - ' + cdsMolaPRD_DESCRI.AsString
    else
      Value := cdsMolaPRD_CODORIGINAL.AsString;
  end
  else
  if (VarName  = 'MMO_TRATAMENTO_TERMICO') then
  begin
    if cdsMolaMMO_TRATAMENTO_TERMICO.AsString = 'N' then
      Value := 'Não'
    else if cdsMolaMMO_TRATAMENTO_TERMICO.AsString = 'R' then
      Value := 'REVENIMENTO'
    else if cdsMolaMMO_TRATAMENTO_TERMICO.AsString = 'A' then
      Value := 'ALIVIO DE TENSÃO'
    else if cdsMolaMMO_TRATAMENTO_TERMICO.AsString = 'C' then
      Value := 'CEMENTAÇÃO'
    else if cdsMolaMMO_TRATAMENTO_TERMICO.AsString = 'T' then
      Value := 'TEMPERA E REVENIMENTO'
    else if cdsMolaMMO_TRATAMENTO_TERMICO.AsString = 'I' then
      Value := 'ISENTO';
  end
  else if (VarName  = 'ArquivoFichaTecnica') then
  begin
    if cdsMolaMMO_ARQUIVO_FICHA_TECNICA.AsString <> '' then
      TfrxPictureView(frxOrdemProducaoModelos.FindObject('ArquivoFichaTecnica')).Picture.LoadFromFile(cdsMolaMMO_ARQUIVO_FICHA_TECNICA.AsString);
    Value := '';
  end;





end;

procedure TFrmRelatoriosPedido.frxPedidoOrcamentoGetValue(
  const VarName: String; var Value: Variant);
var s1, s2: string;
begin
  inherited;
  if (VarName = 'DATAENTREGA') then
  begin
      if (DBInicio.GetParametroSistema('PMT_REL_DATA_EXPEDICAO') = 'S') then
        Value := 'Data de EXPEDIÇÂO:'
      else
        Value := 'Data de ENTREGA:';

  end
  else
  if (VarName = 'PEDIDO1') then
  begin
      if (fTipo <> 'ESPELHO') then
        Value := sPedidoTitulo
      else
        Value := 'ESPELHO DA NOTA'
  end
  else
  if (VarName  = 'CLIENTE') then
  begin
      if (fOrsCliente <> '') then
         Value := fOrsCliente
      else
         Value := cdspedidoCLI_RAZAO.AsString;
  end
  else
  if (VarName  = 'CLI_EMAIL') then
  begin
      if (fOrsEmail <> '') then
         Value := fOrsEmail
      else
         Value := cdspedidoCLI_EMAIL.AsString;
  end
  else
  if (VarName  = 'CLI_UF') then
  begin
      if (fCliUF <> '') then
         Value := fCliUF
      else
         Value := cdspedidoCLI_UF.AsString;
  end
  else
  if (VarName  = 'CFOP') then
  begin
    Value := frmPedido.edCfop.Text;
  end
  else
  if (VarName  = 'FONECLI') then
  begin
      if (fOrsCliente <> '') then
         Value := MascaraFone(fOrsFone)
      else
         Value := MascaraFone(cdsPedidoCLI_FONE.AsString)
  end
  else
  if (VarName  = 'CLI_FAX') then
  begin
      if (fOrsFax <> '') then
         Value := MascaraFone(fOrsFax)
      else
         Value := MascaraFone(cdspedidoCLI_FAX.AsString);
  end
  else
  if (VarName  = 'ENTREGA') then
      Value := fDiaEntrega
  else
  if (VarName  = 'EMAILCLI') then
      Value := fOrsEmail
  else
  if (VarName  = 'EMAIL') then
     Value := email_de_enviado
  else
  if (VarName  = 'VALIDADE') then
     Value := fOrsDiaValidade
  else
  if (VarName  = 'PEDIDO') then
      Value := fPedidoTipo
  else
  if (VarName  = 'RAZAO') then
  begin
     if CabecalhoResumido then
       Value := DBInicio.Empresa.FANTASIA
     else
       Value := DBInicio.Empresa.RAZAO
  end
  else
  if (VarName  = 'ENDERECO') then
     Value := DBInicio.Empresa.ENDERECO
  else
  if (VarName  = 'CEP')  then
       Value := DBInicio.Empresa.CEP
  else
  if (VarName  = 'CIDADE') then
       Value := DBInicio.Empresa.CIDADE
  else
  if (VarName  = 'UF') then
     Value := DBInicio.Empresa.UF
  else
  if (VarName  = 'SITE')   then
     Value := DBInicio.Empresa.HOME_PAGE
  else
  if (VarName  = 'FONE') then
     Value := DBInicio.Empresa.FONE
  else
  if (VarName  = 'CNPJ')  then
     Value := DBInicio.Empresa.CNPJ_CNPF
  else
  if (VarName  = 'INSCR') then
     Value := DBInicio.Empresa.INSC_EST
  else
  if (VarName  = 'CLICNPJ') then
     Value := MascaraCNPJ_CPF(cdspedidoCLI_CGC.AsString)
  else
  if (VarName  = 'OBSERVACAO') then
     Value := sPedidoObs
  else
  if (VarName  = 'DIFAL') then
  begin
    if cdspedidoPED_VLDIFAL.AsFloat > 0 then
      Value := 'VALOR DE R$ ' +  FormatFloat('##0.00', cdspedidoPED_VLDIFAL.AsFloat) + ' INSERIDO EM DESPESAS ACESSÓRIAS REFERENTE AO IMPOSTO DIFAL'
    else
      Value := '';
  end
  else
  if (VarName  = 'OBSORCAMENTO') then
  begin
     s1 := Trim(StringReplace(cdspedidoPED_OBSERVACAO.AsString, #13 + #10, '', [rfReplaceAll]));
     s2 := Trim(StringReplace(sOrcamentoObs, #13 + #10, '', [rfReplaceAll]));
     Value := iif(s1 = s2, '', sOrcamentoObs);
  end
  else
  if (VarName  = 'CLI_FONE') then
     Value := MascaraFone(cdsPedidoCLI_FONE.AsString)
  else
  if (VarName  = 'CLI_FAX') then
     Value := MascaraFone(cdsPedidoCLI_FAX.AsString)
  else
  if (VarName  = 'TITULO') or (VarName  = 'titulo') then
     Value := sPedidoTitulo
  else
  if (VarName  = 'PESO_TOTAL_LIQUIDO') then
     Value := FrmPedido.CurTotalPesoLiquido.Text
  else
  if (VarName  = 'PED_NUMERO_PED_CLIENTE') then
     Value := cdspedidoPED_NUMERO_PED_CLIENTE.AsString
  else
  if (VarName  = 'PED_FRETE') then
     Value:= IIF(cdsPedidoPED_FRETE.Asstring = '0','0-Emitente (CIF)',
             IIF(cdsPedidoPED_FRETE.Asstring = '1','1-Destinatário (FOB)',
             IIF(cdsPedidoPED_FRETE.Asstring = '2','2-Terceiros','9-Sem frete')))

  else
  if (VarName  = 'CLI_CEP') then
      Value := MascaraCep(cdsPedidoCLI_CEP.AsString);


end;

procedure TFrmRelatoriosPedido.frxPedidoOrcamentoImagemBigBeforePrint(Sender: TfrxReportComponent);
begin
  inherited;
  if Assigned(DbInicio.Nfe.Logo) and not(DBInicio.Nfe.Logo.Empty) then
  begin
    TfrxPictureView(frxPedidoOrcamentoImagemBig.FindObject('logoempresa')).Picture.Bitmap.Assign(DbInicio.Nfe.Logo);
    TfrxPictureView(frxPedidoOrcamentoImagemBig.FindObject('logoempresa2')).Picture.Bitmap.Assign(DbInicio.Nfe.Logo);
  end
  else
  begin
  TfrxPictureView(frxPedidoOrcamentoImagemBig.FindObject('logoempresa')).Picture.Bitmap.Assign(DBInicio.Empresa.LOGO);
  TfrxPictureView(frxPedidoOrcamentoImagemBig.FindObject('logoempresa2')).Picture.Bitmap.Assign(DBInicio.Empresa.LOGO);
  end;


end;

procedure TFrmRelatoriosPedido.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
  inherited;
  if (VarName  = 'RAZAO') then
     Value := DBInicio.Empresa.RAZAO;

end;

procedure TFrmRelatoriosPedido.GravarFotos;

Var
   searchResult : TSearchRec;
   Task: ITask;
   Imagem: TImage ;
   lStream: tStream;
   lJpeg:TJPEGImage;
begin
  CdsPedidosItem.First;
  CdsPedidosItem.DisableControls;
  try
    while not CdsPedidosItem.Eof do
    begin
      CdsPedidosItem.Edit;
      if FindFirst(DBInicio.Empresa.spmt_CaminhoFoto+'\'+cdsPedidosItemPRD_REFER.AsString+'.*', faAnyFile, searchResult) = 0 then
          TBlobField( cdsPedidosItemPRD_FOTO).LoadFromFile(DBInicio.Empresa.spmt_CaminhoFoto+'\'+searchResult.Name);
      CdsPedidosItem.Post;
      CdsPedidosItem.Next;
    end;
  finally
   CdsPedidosItem.EnableControls;
  end;
end;

procedure TFrmRelatoriosPedido.GravarFotosMola;

Var
   searchResult : TSearchRec;
   Task: ITask;
   Imagem: TImage ;
   lStream: tStream;
   lJpeg:TJPEGImage;
begin
  cdsMola.First;
  cdsMola.DisableControls;
  try
    while not cdsMola.Eof do
    begin
      cdsMola.Edit;
      if FindFirst(DBInicio.Empresa.spmt_CaminhoFoto+'\'+cdsMolaPRD_REFER.AsString+'.*', faAnyFile, searchResult) = 0 then
          TBlobField( cdsMolaPRD_FOTO).LoadFromFile(DBInicio.Empresa.spmt_CaminhoFoto+'\'+searchResult.Name);
      cdsMola.Post;
      cdsMola.Next;
    end;
  finally
   cdsMola.First;
   CdsPedidosItem.EnableControls;
  end;
end;

procedure TFrmRelatoriosPedido.cdsPedidosItemDESCRICAOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
var descr : string ;
begin
  inherited;
  if dbInicio.GetParametroSistema('PMT_COMP_ITEM_PEDIDO') = 'S' then
    descr := cdsPedidosItemDESCRICAO.AsString + ' ' + CdsPedidosItemPRF_COMPL_DESCRI.AsString
  else
    descr := cdsPedidosItemDESCRICAO.AsString;
  if (CdsPedidosItemPRF_PRODUTO_AGREGADO.AsString = 'S') then
    Text := descr + ' [ '+ IntToStr(cdsPedidosItemPRF_QTDE_KIT.AsInteger) + ' x '+
       IntToStr(cdsPedidosItemPRF_QTDE.AsInteger) +  ' ]'
  else if (cdsPedidosItemPRDD_SIGLA.AsString <> '') and (CdsPedidosItemPRF_PRODUTO_AGREGADO.AsString = 'N')  then
    text :=  descr + '[ '+  cdsPedidosItemPRDD_SIGLA.AsString + ' ]'
  else
    Text := descr ;



end;

procedure TFrmRelatoriosPedido.cdsPedidosItemPRF_PRDDESCRIGetText(Sender: TField; var Text: string; DisplayText: Boolean);
var descr : string ;
begin
  inherited;
  if dbInicio.GetParametroSistema('PMT_COMP_ITEM_PEDIDO') = 'S' then
    descr := cdsPedidosItemPRF_PRDDESCRI.AsString + ' ' + CdsPedidosItemPRF_COMPL_DESCRI.AsString
  else
    descr := cdsPedidosItemPRF_PRDDESCRI.AsString;
  if (CdsPedidosItemPRF_PRODUTO_AGREGADO.AsString = 'S') then
    Text := descr + ' [ '+ IntToStr(cdsPedidosItemPRF_QTDE_KIT.AsInteger) + ' x '+
       IntToStr(cdsPedidosItemPRF_QTDE.AsInteger) +  ' ]'
  else if (cdsPedidosItemPRDD_SIGLA.AsString <> '') and (CdsPedidosItemPRF_PRODUTO_AGREGADO.AsString = 'N')  then
    text :=  descr + '[ '+  cdsPedidosItemPRDD_SIGLA.AsString + ' ]'
  else
    Text := descr ;

end;

Procedure TFrmRelatoriosPedido.FormCreate(Sender: tObject);
var qry: TSQLQuery ;
    stream: TStream;

begin
  inherited;
  fOrsCliente:='';
  fClienteTelefone:='';
  fDiaEntrega:='';
  fOrsEmail:='';
  sOrcamentoObs:='';
  sPedidoTitulo:='';
  fTipo:='';
 // MinhaImagem := TJPEGImage.Create;
//  qry := TSQLQuery.Create(self);
//  try
//     qry.SQLConnection:=DBConn;
//     qry.SQL.Text:='SELECT EMP_LOGO FROM EMP0000 WHERE EMP_CODIGO ='+QuotedStr(DBInicio.Empresa.EMP_CODIGO);
//     qry.Open;
//     stream := TMemoryStream.Create;
//     try
//        stream := qry.CreateBlobStream(qry.FieldByName('EMP_LOGO'),bmRead);
//        MinhaImagem.LoadFromStream(stream);
//     finally
//            FreeAndNil(stream);
//     end;
//  finally
//         qry.Close;
//         FreeAndNil( qry );
//  end;
end;

procedure TFrmRelatoriosPedido.FormDestroy(Sender: tObject);
begin
  inherited;
  FreeAndNil( MinhaImagem );
end;

end.


