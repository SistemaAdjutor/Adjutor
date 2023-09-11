{*************************************************************************
| Programa...: Ped0001- Nome formulario = FormPedidos
| Objetivo...: Cadastro e  Manutenção de Pedidos
| Analista...: Marcio Neu Pacheco
|
| Comentários:      
|
|
|
| Criação............: Jan/99
| Ultima Alteração...: ABRIL/2012
| Alterado por.......: Márcio Pacheco
|
|
**************************************************************************}
unit Ped0001;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, Mask, Buttons, ExtCtrls, Grids, DBGrids, Db, DBTables,
  RwFunc, StdCtrls,  rxToolEdit, RXDBCtrl, Provider, SqlExpr,SqlClientDataSet, DBClient,
  DBLocal, DBLocalS,  rxCurrEdit, ComCtrls, Menus, ImgList,{{DBXpress,}
  ComboBoxRw, jpeg, frxClass, frxDBSet, frxExportPDF, FMTBCd, SimpleDS,
  Data.DBXFirebird, SgDbSeachComboUnit;
type
  TFormPedidos = class(TForm)
    PageControlPed: TPageControl;
    TabSheeVendas: TTabSheet;
    TabSheetClientes: TTabSheet;
    TabSheetReserva: TTabSheet;
    Pn_dados: TPanel;
    Label62: TLabel;
    Label1: TLabel;
    Label18: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label23: TLabel;
    Label31: TLabel;
    LblCnpj: TLabel;
    spCliente: TSpeedButton;
    GrpDesconto: TGroupBox;
    ChkDescto: TDBCheckBox;
    DBePcl_codigo: TDBEdit;
    CbxPcl1: TComboBoxRw;
    GrpDescto2: TGroupBox;
    PanDescP: TPanel;
    Label15: TLabel;
    Label49: TLabel;
    Label32: TLabel;
    CurrDesctoIndice: TCurrencyEdit;
    CurrDesctoPc1: TCurrencyEdit;
    CurrDesctoPc2: TCurrencyEdit;
    RadDescPorc: TRadioButton;
    RadDescValor: TRadioButton;
    PanDescV: TPanel;
    EdtPed_codigo: TEdit;
    DBeCli_codigo: TDBEdit;
    DBeRep_codigo: TDBEdit;
    DbeTRP_CODIGO: TDBEdit;
    CbFreteT: TComboBox;
    CbFreteR: TComboBox;
    DbeTrp_Redesp: TDBEdit;
    DtEntrada: TDateEdit;
    DtEntrega: TDateEdit;
    GbComissao: TGroupBox;
    Lbl_Rep: TLabel;
    Lbl_Sup: TLabel;
    Lbl_Ger: TLabel;
    DBeComis1: TDBEdit;
    DBeComis2: TDBEdit;
    DBeComis3: TDBEdit;
    MskCnpj: TMaskEdit;
    Pn_Botoes: TPanel;
    Bit_Sair: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_novo: TBitBtn;
    PanDuplicar: TPanel;
    BTN_DUPLICAR: TBitBtn;
    Pn_Relatorio: TPanel;
    Bit_Lista: TBitBtn;
    Bit_Relatorio: TBitBtn;
    CbClientes1: TComboBoxRw;
    CbRepresentantes1: TComboBoxRw;
    CbTransp1: TComboBoxRw;
    CbRedesp1: TComboBoxRw;
    DBEOpv_codigo: TDBEdit;
    CbTipo1: TComboBoxRw;
    EdtClienteRazao: TEdit;
    PanKardex: TPanel;
    Bit_Kardex: TBitBtn;
    Bit_Estoque: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Grb_Var: TGroupBox;
    Label52: TLabel;
    Label53: TLabel;
    DBEDcVar1: TDBEdit;
    DBEDcVar2: TDBEdit;
    DBEDcVar3: TDBEdit;
    DBEDcVar4: TDBEdit;
    DBEDcVar5: TDBEdit;
    DBEDcVar6: TDBEdit;
    DBEDcVar7: TDBEdit;
    DBEDcVar8: TDBEdit;
    CurrQtde1: TCurrencyEdit;
    CurrQtde2: TCurrencyEdit;
    CurrQtde3: TCurrencyEdit;
    CurrQtde4: TCurrencyEdit;
    CurrQtde5: TCurrencyEdit;
    CurrQtde6: TCurrencyEdit;
    CurrQtde7: TCurrencyEdit;
    CurrQtde8: TCurrencyEdit;
    Panel3: TPanel;
    Label24: TLabel;
    Label26: TLabel;
    Label10: TLabel;
    Label28: TLabel;
    Label33: TLabel;
    Label27: TLabel;
    Label67: TLabel;
    CurrTotal: TCurrencyEdit;
    CurrTotIpi: TCurrencyEdit;
    CurrDesconto: TCurrencyEdit;
    CurrSubTotal: TCurrencyEdit;
    DBedtItensPedidos: TDBEdit;
    CurrTotalQtde: TCurrencyEdit;
    CurrTotalPeso: TCurrencyEdit;
    GbAviso: TGroupBox;
    DBEdit26: TDBEdit;
    GbObs: TGroupBox;
    ScrollBox1: TScrollBox;
    DbePedObs1: TDBEdit;
    DbePedObs2: TDBEdit;
    DbePedObs3: TDBEdit;
    DbePedObs4: TDBEdit;
    DbePedObs5: TDBEdit;
    DbePedObs6: TDBEdit;
    DbePedObs7: TDBEdit;
    DBGridItensPed: TDBGrid;
    TabSheet3: TTabSheet;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label16: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    DBGrid1: TDBGrid;
    DBEdtNF_BASEICMS: TDBEdit;
    DBEdtNF_VL_ICMS: TDBEdit;
    DBEdtNF_BASE_IPI: TDBEdit;
    DBEdtNF_VL_IPI: TDBEdit;
    DBEdtNF_VLBASESUBTRIB: TDBEdit;
    DBEdtNF_VL_SUBTRIB: TDBEdit;
    DBEdtNF_BASE_ISS: TDBEdit;
    DBEdtNF_VALOR_ISS: TDBEdit;
    DBEdtNF_VLFRETE: TDBEdit;
    DBEdtNF_VLSEGURO: TDBEdit;
    DBEdtNF_DESP_ACES: TDBEdit;
    GroupBox3: TGroupBox;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBGrid3: TDBGrid;
    GbTups: TGroupBox;
    Label51: TLabel;
    Label60: TLabel;
    CurrTotups: TCurrencyEdit;
    CurrVlTups: TCurrencyEdit;
    PopupMenu1: TPopupMenu;
    Excluir1: TMenuItem;
    Alterar1: TMenuItem;
    N1: TMenuItem;
    Alterarcomisso1: TMenuItem;
    SqlSaldo: TSQLClientDataSet;
    SqlSaldoPRD_VAR1: TFMTBCdField;
    SqlSaldoPRD_VAR2: TFMTBCdField;
    SqlSaldoPRD_VAR3: TFMTBCdField;
    SqlSaldoPRD_VAR4: TFMTBCdField;
    SqlSaldoPRD_VAR5: TFMTBCdField;
    SqlSaldoPRD_VAR6: TFMTBCdField;
    SqlSaldoPRD_VAR7: TFMTBCdField;
    SqlSaldoPRD_VAR8: TFMTBCdField;
    SqlSaldoPRD_RESERVA_VAR1: TFMTBCdField;
    SqlSaldoPRD_RESERVA_VAR2: TFMTBCdField;
    SqlSaldoPRD_RESERVA_VAR3: TFMTBCdField;
    SqlSaldoPRD_RESERVA_VAR4: TFMTBCdField;
    SqlSaldoPRD_RESERVA_VAR5: TFMTBCdField;
    SqlSaldoPRD_RESERVA_VAR6: TFMTBCdField;
    SqlSaldoPRD_RESERVA_VAR7: TFMTBCdField;
    SqlSaldoPRD_RESERVA_VAR8: TFMTBCdField;
    DsSaldo: TDataSource;
    SqlAtEstoque: TSQLClientDataSet;
    SqlAtEstoquePTI_ATUALIZAR_ESTOQUE: TStringField;
    SqlAtEstoquePGR_ATUALIZA_ESTOQUE: TStringField;
    SqlAtEstoquePGR_CODIGO: TStringField;
    CdsConsultaEstoque: TSQLClientDataSet;
    CdsConsultaEstoquePRD_CODIGO: TStringField;
    CdsConsultaEstoquePRD_REFER: TStringField;
    CdsConsultaEstoquePTI_SIGLA: TStringField;
    CdsConsultaEstoquePRD_PVENDA: TFMTBCdField;
    CdsConsultaEstoquePRD_DCVAR1: TStringField;
    CdsConsultaEstoquePRD_DCVAR2: TStringField;
    CdsConsultaEstoquePRD_DCVAR3: TStringField;
    CdsConsultaEstoquePRD_DCVAR4: TStringField;
    CdsConsultaEstoquePRD_DCVAR5: TStringField;
    CdsConsultaEstoquePRD_DCVAR6: TStringField;
    CdsConsultaEstoquePRD_DCVAR7: TStringField;
    CdsConsultaEstoquePRD_DCVAR8: TStringField;
    CdsConsultaEstoquePGR_CODIGO: TStringField;
    CdsConsultaEstoqueIPI_ALIQ: TFMTBCdField;
    CdsConsultaEstoquePRD_QDTE: TFMTBCdField;
    CdsConsultaEstoquePTI_ATUALIZAR_ESTOQUE: TStringField;
    CdsConsultaEstoquePGR_ATUALIZA_ESTOQUE: TStringField;
    CdsConsultaEstoquePRD_PVENDA2: TFMTBCdField;
    CdsConsultaEstoquePRD_PVENDA3: TFMTBCdField;
    CdsConsultaEstoquePRD_PVENDA4: TFMTBCdField;
    CdsConsultaEstoquePRD_PVENDA5: TFMTBCdField;
    CdsConsultaEstoquePRD_PVENDA6: TFMTBCdField;
    CdsConsultaEstoquePRD_DESCRI: TStringField;
    CdsTipo: TSQLClientDataSet;
    CdsTipoOPV_CODIGO: TIntegerField;
    CdsTipoOPV_DESCRICAO: TStringField;
    CdsTipoOPV_ATESTOQUE: TStringField;
    CdsTipoOPV_TIPO: TStringField;
    CdsTipoEMP_CODIGO: TStringField;
    SqlCdsPcl: TSQLClientDataSet;
    SqlCdsPclPCL_CODIGO: TStringField;
    SqlCdsPclPCL_NOME: TStringField;
    SqlCdsPclPCL_DISPONIVEL: TStringField;
    SqlCdsPclEMP_CODIGO: TStringField;
    PanVariacao: TPanel;
    BitConfirmar: TBitBtn;
    BitCancelItem: TBitBtn;
    GroupBox1: TGroupBox;
    Bevel3: TBevel;
    Label54: TLabel;
    Bevel1: TBevel;
    Label56: TLabel;
    Label55: TLabel;
    Bevel2: TBevel;
    Label57: TLabel;
    Label58: TLabel;
    Bevel4: TBevel;
    Label59: TLabel;
    Bevel5: TBevel;
    Label65: TLabel;
    Bevel6: TBevel;
    Label66: TLabel;
    EdtRef: TEdit;
    EdtDescricaoVar: TEdit;
    CurrQtdeProd: TCurrencyEdit;
    DBEdtPRD_DCVAR1: TDBEdit;
    DBEdtPRD_DCVAR2: TDBEdit;
    DBEdtPRD_DCVAR3: TDBEdit;
    DBEdtPRD_DCVAR4: TDBEdit;
    DBEdtPRD_DCVAR5: TDBEdit;
    DBEdtPRD_DCVAR6: TDBEdit;
    DBEdtPRD_DCVAR7: TDBEdit;
    DBEdtPRD_DCVAR8: TDBEdit;
    CurrTotVar: TCurrencyEdit;
    CurrVar1: TCurrencyEdit;
    CurrVar2: TCurrencyEdit;
    CurrVar3: TCurrencyEdit;
    CurrVar4: TCurrencyEdit;
    CurrVar5: TCurrencyEdit;
    CurrVar6: TCurrencyEdit;
    CurrVar7: TCurrencyEdit;
    CurrVar8: TCurrencyEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    Panel2: TPanel;
    GbSitucao: TGroupBox;
    PanSituacao: TPanel;
    GroupBox4: TGroupBox;
    Label61: TLabel;
    DBEVLFRETE: TDBEdit;
    Label63: TLabel;
    DBEVLDESP: TDBEdit;
    Label64: TLabel;
    DBEVLSEGURO: TDBEdit;
    Label68: TLabel;
    DBEVLDESPImport: TDBEdit;
    GroupBox5: TGroupBox;
    Label4: TLabel;
    Label17: TLabel;
    Label20: TLabel;
    Label25: TLabel;
    Label36: TLabel;
    Label50: TLabel;
    Label69: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    DbeCli_razao: TDBEdit;
    DbeCli_endere: TDBEdit;
    DbeCli_cidade: TDBEdit;
    DbeCli_fone: TDBEdit;
    DbeCli_fax: TDBEdit;
    DbeCli_dtinicio: TDBDateEdit;
    DbeCLI_BAIRRO: TDBEdit;
    DbeCli_emailNfe: TDBEdit;
    DbeCli_Fantasia: TDBEdit;
    GroupBox7: TGroupBox;
    RadPequena: TRadioButton;
    RadMedia: TRadioButton;
    RadGrande: TRadioButton;
    DBECLIUF: TDBEdit;
    DbeCliCep: TDBEdit;
    Label70: TLabel;
    Label79: TLabel;
    Label81: TLabel;
    DbeCli_contato: TDBEdit;
    DbeCli_funcont: TDBEdit;
    DBEEmail_contato: TDBEdit;
    Panel1: TPanel;
    Label71: TLabel;
    Grp_Credito: TGroupBox;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label80: TLabel;
    Label82: TLabel;
    DbeLimiteCred: TDBEdit;
    DbeLimiteUtiliz: TDBEdit;
    DbePediAbertos: TDBEdit;
    DbeValorUltimaCompra: TDBEdit;
    DBeUltCompra: TDBDateEdit;
    GroupBox6: TGroupBox;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    DbeCli_Endentr: TDBEdit;
    DbeCli_cidentr: TDBEdit;
    DbeCli_ufentr: TDBEdit;
    DbeCli_cepentr: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit27: TDBEdit;
    GroupBox8: TGroupBox;
    DBGridClientesProd: TDBGrid;
    SQLClienteProd: TSQLClientDataSet;
    DsClientProd: TDataSource;
    SQLClienteProdPRD_REFER: TStringField;
    SQLClienteProdPED_CODIGO: TStringField;
    SQLClienteProdPRD_DESCRI: TStringField;
    SQLClienteProdNF_QTDE: TFMTBCdField;
    SQLClienteProdNF_PRECO: TFMTBCdField;
    SQLClienteProdNF_IPIVALOR: TFMTBCdField;
    SQLClienteProdNF_VLSUBST: TFMTBCdField;
    SQLClienteProdNF_IDESCTO1: TFMTBCdField;
    BitPesquisa: TBitBtn;
    GroupBox9: TGroupBox;
    RadRazao: TRadioButton;
    RadCodigo: TRadioButton;
    RadCgc: TRadioButton;
    RadCPF: TRadioButton;
    RadFantasia: TRadioButton;
    GbLista: TGroupBox;
    Msk_busca: TMaskEdit;
    DBECLI_CGC: TDBEdit;
    Label89: TLabel;
    DBEdit28: TDBEdit;
    SQLClienteProdNF_NUM_NFE: TIntegerField;
    SQLClienteProdNF_EMISSAO: TDateField;
    SQLClienteProdCC_TOTAL: TFloatField;
    Panel4: TPanel;
    BitVendaHistorico: TBitBtn;
    PanVendaH: TPanel;
    Panel5: TPanel;
    DBGrid2: TDBGrid;
    Label90: TLabel;
    EditProdutoVendas: TEdit;
    BitSairHistoricoProd: TBitBtn;
    SpXhistorico: TSpeedButton;
    SQLReservaProd: TSQLClientDataSet;
    DsReservaProd: TDataSource;
    SQLReservaPed: TSQLClientDataSet;
    DsReservaPed: TDataSource;
    SQLReservaProdPRD_REFER: TStringField;
    SQLReservaProdPRF_PRDDESCRI: TStringField;
    SQLReservaProdSQTDE: TFMTBCdField;
    GroupBox10: TGroupBox;
    GroupBox11: TGroupBox;
    DBGrid4: TDBGrid;
    DBGrid5: TDBGrid;
    SQLReservaPedPED_CODIGO: TStringField;
    SQLReservaPedPRD_REFER: TStringField;
    SQLReservaPedPED_DTENTRADA: TSQLTimeStampField;
    SQLReservaPedCLI_CODIGO: TStringField;
    SQLReservaPedCLI_RAZAO: TStringField;
    SQLReservaPedREP_CODIGO: TStringField;
    SQLReservaPedREP_NOME: TStringField;
    SQLReservaPedSQTDEFATURAR: TFMTBCdField;
    BitPesqReservaProd: TBitBtn;
    BitCancelaReservaProd: TBitBtn;
    GroupBox12: TGroupBox;
    EditProdReserva: TEdit;
    CurrDesctoVl: TCurrencyEdit;
    CdsTipoAMX_DESTINO: TStringField;
    CdsTipoAMX_ORIGEM: TStringField;
    CBOrdemServico: TDBCheckBox;
    SQLPedidosFast: TSQLClientDataSet;
    SQLPedidosFastPED_CODIGO: TStringField;
    SQLPedidosFastPED_DTENTRADA: TSQLTimeStampField;
    SQLPedidosFastPED_DTSAIDA: TSQLTimeStampField;
    SQLPedidosFastPED_EXPEDICAO: TStringField;
    SQLPedidosFastPED_COMIS1: TFMTBCdField;
    SQLPedidosFastPED_COMIS2: TFMTBCdField;
    SQLPedidosFastPED_COMIS3: TFMTBCdField;
    SQLPedidosFastPED_FRETE: TStringField;
    SQLPedidosFastPED_FRETE2: TStringField;
    SQLPedidosFastPED_SITCRED: TStringField;
    SQLPedidosFastPED_PRIORIDADE: TStringField;
    SQLPedidosFastPED_DESCTONF: TStringField;
    SQLPedidosFastPED_DESCTOPC1: TFMTBCdField;
    SQLPedidosFastPED_DESCTOPC2: TFMTBCdField;
    SQLPedidosFastPED_DESCTOVL: TFMTBCdField;
    SQLPedidosFastPED_TOTUPS: TFMTBCdField;
    SQLPedidosFastPED_VLTUPS: TFMTBCdField;
    SQLPedidosFastPED_VLTOTAL_LIQ: TFMTBCdField;
    SQLPedidosFastPED_VLTOTAL_IPI: TFMTBCdField;
    SQLPedidosFastPED_VLTOTAL_BRUTO: TFMTBCdField;
    SQLPedidosFastPED_OBSNOTA: TStringField;
    SQLPedidosFastPED_OBSG1: TStringField;
    SQLPedidosFastPED_OBSG2: TStringField;
    SQLPedidosFastPED_OBSG3: TStringField;
    SQLPedidosFastPED_OBSG4: TStringField;
    SQLPedidosFastPED_OBSG5: TStringField;
    SQLPedidosFastPED_OBSG6: TStringField;
    SQLPedidosFastPED_OBSG7: TStringField;
    SQLPedidosFastCLI_CODIGO: TStringField;
    SQLPedidosFastCLI_RAZAO: TStringField;
    SQLPedidosFastCLI_FANTASIA: TStringField;
    SQLPedidosFastCLI_ENDERE: TStringField;
    SQLPedidosFastCLI_BAIRRO: TStringField;
    SQLPedidosFastCLI_CIDADE: TStringField;
    SQLPedidosFastCLI_UF: TStringField;
    SQLPedidosFastCLI_CEP: TStringField;
    SQLPedidosFastCLI_PESSOA: TStringField;
    SQLPedidosFastCLI_CGC: TStringField;
    SQLPedidosFastCLI_INSC: TStringField;
    SQLPedidosFastCLI_CONTATO: TStringField;
    SQLPedidosFastCLI_FONE: TStringField;
    SQLPedidosFastCLI_FAX: TStringField;
    SQLPedidosFastCLI_ENDENTR: TStringField;
    SQLPedidosFastCLI_CIDENTR: TStringField;
    SQLPedidosFastCLI_UFENTR: TStringField;
    SQLPedidosFastCLI_CEPENTR: TStringField;
    SQLPedidosFastCLI_ENDFAT: TStringField;
    SQLPedidosFastCLI_CIDFAT: TStringField;
    SQLPedidosFastCLI_UFFAT: TStringField;
    SQLPedidosFastCLI_CEPFAT: TStringField;
    SQLPedidosFastCLI_EMAIL: TStringField;
    SQLPedidosFastREP_CODIGO: TStringField;
    SQLPedidosFastREP_NOME: TStringField;
    SQLPedidosFastPCL_CODIGO: TStringField;
    SQLPedidosFastPCL_NOME: TStringField;
    SQLPedidosFastTRP_CODIGO: TStringField;
    SQLPedidosFastTRP_RAZAO: TStringField;
    SQLPedidosFastTRP_FONE: TStringField;
    SQLPedidosFastTRP_REDESP: TStringField;
    SQLPedidosFastTRP_RAZAO_1: TStringField;
    SQLPedidosFastTRP_FONE_1: TStringField;
    SQLPedidosFastOPV_CODIGO: TIntegerField;
    SQLPedidosFastOPV_DESCRICAO: TStringField;
    DSPedidoFast: TDataSource;
    frxDataPedido: TfrxDBDataset;
    frxPedido: TfrxReport;
    SQLItensPedidoFast: TSQLClientDataSet;
    SQLItensPedidoFastPRF_REGISTRO: TIntegerField;
    SQLItensPedidoFastPED_CODIGO: TStringField;
    SQLItensPedidoFastPRD_REFER: TStringField;
    SQLItensPedidoFastPRF_QTDE: TFMTBCdField;
    SQLItensPedidoFastPRF_QTDEFAT: TFMTBCdField;
    SQLItensPedidoFastPRF_PRECO: TFMTBCdField;
    SQLItensPedidoFastPRF_SITUACAO: TStringField;
    SQLItensPedidoFastPRF_ITEMCOMIS: TFMTBCdField;
    SQLItensPedidoFastPRF_IPIALIQ: TFMTBCdField;
    SQLItensPedidoFastPRF_ICMSALIQ: TFMTBCdField;
    SQLItensPedidoFastPRF_PRDDESCRI: TStringField;
    SQLItensPedidoFastPRF_VAR1: TFMTBCdField;
    SQLItensPedidoFastPRF_VAR2: TFMTBCdField;
    SQLItensPedidoFastPRF_VAR3: TFMTBCdField;
    SQLItensPedidoFastPRF_VAR4: TFMTBCdField;
    SQLItensPedidoFastPRF_VAR5: TFMTBCdField;
    SQLItensPedidoFastPRF_VAR6: TFMTBCdField;
    SQLItensPedidoFastPRF_VAR7: TFMTBCdField;
    SQLItensPedidoFastPRF_VAR8: TFMTBCdField;
    SQLItensPedidoFastEMP_CODIGO: TStringField;
    SQLItensPedidoFastPRF_PRECO_BRUTO: TFMTBCdField;
    SQLItensPedidoFastPRF_OP: TStringField;
    SQLItensPedidoFastPRF_QTDE_FAT_VAR1: TFMTBCdField;
    SQLItensPedidoFastPRF_QTDE_FAT_VAR2: TFMTBCdField;
    SQLItensPedidoFastPRF_QTDE_FAT_VAR3: TFMTBCdField;
    SQLItensPedidoFastPRF_QTDE_FAT_VAR4: TFMTBCdField;
    SQLItensPedidoFastPRF_QTDE_FAT_VAR5: TFMTBCdField;
    SQLItensPedidoFastPRF_QTDE_FAT_VAR6: TFMTBCdField;
    SQLItensPedidoFastPRF_QTDE_FAT_VAR7: TFMTBCdField;
    SQLItensPedidoFastPRF_QTDE_FAT_VAR8: TFMTBCdField;
    SQLItensPedidoFastPRF_FLAG_ATUALIZA_ESTOQUE: TStringField;
    SQLItensPedidoFastPRF_ORIGEM_ITEM: TStringField;
    SQLItensPedidoFastPRF_PRODUTO_AGREGADO: TStringField;
    SQLItensPedidoFastPRF_VALOR_ICMS: TFMTBCdField;
    SQLItensPedidoFastUSU_CODIGO: TIntegerField;
    SQLItensPedidoFastPRD_CODIGO: TStringField;
    SQLItensPedidoFastAMX_CODIGO_DESTINO: TStringField;
    SQLItensPedidoFastAMX_CODIGO_ORIGEM: TStringField;
    SQLItensPedidoFastPRD_UND: TStringField;
    SQLItensPedidoFastPRD_PESOKG: TFMTBCdField;
    SQLItensPedidoFastPRD_DCVAR1: TStringField;
    SQLItensPedidoFastPRD_DCVAR2: TStringField;
    SQLItensPedidoFastPRD_DCVAR3: TStringField;
    SQLItensPedidoFastPRD_DCVAR4: TStringField;
    SQLItensPedidoFastPRD_DCVAR5: TStringField;
    SQLItensPedidoFastPRD_DCVAR6: TStringField;
    SQLItensPedidoFastPRD_DCVAR7: TStringField;
    SQLItensPedidoFastPRD_DCVAR8: TStringField;
    SQLItensPedidoFastPTI_SIGLA: TStringField;
    DSItensPedidoFast: TDataSource;
    frxDataItensPedido: TfrxDBDataset;
    SQLItensPedidoFastCC_PRECO_TOT: TFloatField;
    frxPDFExport1: TfrxPDFExport;
    Panel6: TPanel;
    BiImprimeEnvia: TBitBtn;
    SQLPedidosFastCLI_EMAIL_ALTERNATIVO: TStringField;
    PanComissao: TPanel;
    GroupBox2: TGroupBox;
    Label29: TLabel;
    DBEditNovacomissao: TDBEdit;
    BtnComissCAncela: TButton;
    BtnComissConfirma: TButton;
    TabSheet2: TTabSheet;
    GroupBox13: TGroupBox;
    GroupBox14: TGroupBox;
    DBGrid6: TDBGrid;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    DBGrid7: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    SqlPedidoDI: TSQLDataSet;
    CdSPedidoDI: TClientDataSet;
    DSPPedidoDI: TDataSetProvider;
    DSPedidoDI: TDataSource;
    SqlPedidoDIPID_REGISTRO: TIntegerField;
    SqlPedidoDIPRF_REGISTRO: TIntegerField;
    SqlPedidoDIPID_NUMERO_DI: TStringField;
    SqlPedidoDIPID_DATA_DI: TDateField;
    SqlPedidoDIPID_LOCAL_DESEMBARACO: TStringField;
    SqlPedidoDIPID_DATA_DESEMBARACO: TDateField;
    SqlPedidoDIPID_CODIGO_EXPORTADOR: TStringField;
    SQLPedidoDIAdicao: TSQLDataSet;
    DSPPedidoDIAdicao: TDataSetProvider;
    CdSPedidoDIAdicao: TClientDataSet;
    DSPedidoDIAdicao: TDataSource;
    SQLPedidoDIAdicaoPDA_REGISTRO: TIntegerField;
    SQLPedidoDIAdicaoPID_REGISTRO: TIntegerField;
    SQLPedidoDIAdicaoPDA_ADICAO: TIntegerField;
    SQLPedidoDIAdicaoPDA_SEQ_ADICAO: TIntegerField;
    SQLPedidoDIAdicaoPDA_CODIGO_FABRICANTE: TStringField;
    CdSPedidoDIAdicaoPDA_REGISTRO: TIntegerField;
    CdSPedidoDIAdicaoPID_REGISTRO: TIntegerField;
    CdSPedidoDIAdicaoPDA_ADICAO: TIntegerField;
    CdSPedidoDIAdicaoPDA_SEQ_ADICAO: TIntegerField;
    CdSPedidoDIAdicaoPDA_CODIGO_FABRICANTE: TStringField;
    CdSPedidoDIPID_REGISTRO: TIntegerField;
    CdSPedidoDIPRF_REGISTRO: TIntegerField;
    CdSPedidoDIPID_NUMERO_DI: TStringField;
    CdSPedidoDIPID_DATA_DI: TDateField;
    CdSPedidoDIPID_LOCAL_DESEMBARACO: TStringField;
    CdSPedidoDIPID_DATA_DESEMBARACO: TDateField;
    CdSPedidoDIPID_CODIGO_EXPORTADOR: TStringField;
    DBEdit1: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DsPedItem: TDataSource;
    SqlPedidoDIPID_UF_DESEMBARACO: TStringField;
    CdSPedidoDIPID_UF_DESEMBARACO: TStringField;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    Panel7: TPanel;
    ImgProduto: TImage;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    GbItem: TGroupBox;
    Label5: TLabel;
    Label11: TLabel;
    Label30: TLabel;
    Label35: TLabel;
    Label9: TLabel;
    Label14: TLabel;
    Label37: TLabel;
    SpPesquisa: TSpeedButton;
    Label34: TLabel;
    LblAlmox: TLabel;
    Label100: TLabel;
    CurrIPI: TCurrencyEdit;
    EdDescricao: TEdit;
    CurrQtde: TCurrencyEdit;
    CurrPreco: TCurrencyEdit;
    CurrPrecoBruto: TCurrencyEdit;
    CurrSaldo: TCurrencyEdit;
    CurrDesc1: TCurrencyEdit;
    CurrDesc2: TCurrencyEdit;
    CbRef: TComboBox;
    Chk_Agregado: TCheckBox;
    DBeAlmox: TDBEdit;
    CbAlmox1: TComboBoxRw;
    TabSheet5: TTabSheet;
    GroupBox15: TGroupBox;
    Label19: TLabel;
    EdDescricaoClone: TEdit;
    Label101: TLabel;
    EdComplemento: TEdit;
    CdsConsultaEstoquePRD_COMPL: TStringField;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    SpeedTipo: TSpeedButton;
    PanTipo: TPanel;
    SQLItensPedidoFastPRF_IDESCTO1: TFloatField;
    SQLItensPedidoFastPRF_IDESCTO2: TFloatField;
    procedure MudaCorCampos(Sender: tObject);
    procedure DefinePmts;
    Procedure VerificaEdicao;
    procedure Bit_SairClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure Bit_ListaClick(Sender: tObject);
    procedure Bit_novoClick(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure EdtPed_codigoExit(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure DbeTRP_CODIGOExit(Sender: tObject);
    procedure DbeTrp_RedespExit(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure EdtPed_codigoClick(Sender: tObject);
    procedure Bit_RelatorioClick(Sender: tObject);
    Function  validaCampos:Boolean;
    Function  ChecarDescto:Boolean;
    procedure DtEntradaExit(Sender: tObject);
    procedure SpeedFaturarClick(Sender: tObject);
    procedure DbGrPedItemDblClick(Sender: tObject);
    procedure DtEntregaExit(Sender: tObject);
    procedure RadDescPorcClick(Sender: tObject);
    procedure RadDescValorClick(Sender: tObject);
    procedure CbRefExit(Sender: tObject);
    procedure CurrQtdeExit(Sender: tObject);
    procedure CurrDesc2Exit(Sender: tObject);
    procedure CurrIPIExit(Sender: tObject);
    procedure CurrPrecoBrutoExit(Sender: tObject);
    procedure FormKeyPress(Sender: tObject; var Key: Char);
    procedure Excluir1Click(Sender: tObject);
    procedure Alterar1Click(Sender: tObject);
    procedure SpeedButton3Click(Sender: tObject);
    procedure CurrDescTotalKeyPress(Sender: tObject; var Key: Char);
    procedure PageControl1Change(Sender: tObject);
    procedure DBEdit26KeyPress(Sender: tObject; var Key: Char);
    procedure RadDescItemClick(Sender: tObject);
    procedure RadDescNotaClick(Sender: tObject);
    procedure DbeVar1Exit(Sender: tObject);
    procedure DbeCli_CodigoExit(Sender: tObject);
    procedure DbeRep_CodigoExit(Sender: tObject);
    procedure CurrDesctoPc2Exit(Sender: tObject);
    procedure CurrDesctoVlExit(Sender: tObject);
    procedure CurrDesctoPc1Exit(Sender: tObject);
    procedure DtEntradaButtonClick(Sender: tObject);
    procedure DtEntradaKeyPress(Sender: tObject; var Key: Char);
    procedure DtEntradaEnter(Sender: tObject);
    procedure DtEntregaEnter(Sender: tObject);
    procedure DtEntregaKeyPress(Sender: tObject; var Key: Char);
    procedure EdtPed_codigoChange(Sender: tObject);
    procedure CurrDesctoPc1Click(Sender: tObject);
    procedure SpPesquisaClick(Sender: tObject);
    procedure DBeCli_codigoKeyPress(Sender: tObject; var Key: Char);
    procedure DBeCli_codigoChange(Sender: tObject);
    procedure DBeAlmoxExit(Sender: tObject);
    procedure BitCancelItemClick(Sender: tObject);
    procedure BitConfirmarClick(Sender: tObject);
    procedure CurrVar1Exit(Sender: tObject);
    procedure CurrVar1Click(Sender: tObject);
    procedure CurrVar2Click(Sender: tObject);
    procedure CurrVar3Click(Sender: tObject);
    procedure CurrVar4Click(Sender: tObject);
    procedure CurrVar5Click(Sender: tObject);
    procedure CurrVar6Click(Sender: tObject);
    procedure CurrVar7Click(Sender: tObject);
    procedure CurrVar8Click(Sender: tObject);
    procedure ScrollBox1Enter(Sender: tObject);
    procedure ChkDesctoClick(Sender: tObject);
    procedure RadDescPorcEnter(Sender: tObject);
    procedure RadDescValorEnter(Sender: tObject);
    procedure CbFreteTExit(Sender: tObject);
    procedure CbFreteRExit(Sender: tObject);
    procedure Bit_KardexClick(Sender: tObject);
    procedure DbePedObs7KeyPress(Sender: tObject; var Key: Char);
    procedure BTN_DUPLICARClick(Sender: tObject);
    procedure DBEVLFRETEExit(Sender: tObject);
    procedure DBEVLDESPExit(Sender: tObject);
    procedure DBEVLDESPImportExit(Sender: tObject);
    procedure DBEVLSEGUROExit(Sender: tObject);
    procedure ChkDesctoEnter(Sender: tObject);
    procedure CurrDesctoPc1Enter(Sender: tObject);
    procedure CurrDesctoPc2Enter(Sender: tObject);
    procedure DbeTRP_CODIGOEnter(Sender: tObject);
    procedure DbeTrp_RedespEnter(Sender: tObject);
    procedure Alterarcomisso1Click(Sender: tObject);
    procedure BtnComissConfirmaClick(Sender: tObject);
    procedure BtnComissCAncelaClick(Sender: tObject);
    procedure DBEditNovacomissaoKeyPress(Sender: tObject; var Key: Char);
    procedure FormCreate(Sender: tObject);
    procedure CurrDesctoVlClick(Sender: tObject);
    procedure CurrDesctoVlEnter(Sender: tObject);
    procedure CurrVar2Exit(Sender: tObject);
    procedure CurrVar3Exit(Sender: tObject);
    procedure CurrVar4Exit(Sender: tObject);
    procedure CurrVar5Exit(Sender: tObject);
    procedure CurrVar6Exit(Sender: tObject);
    procedure CurrVar7Exit(Sender: tObject);
    procedure CurrVar8Exit(Sender: tObject);
    procedure CurrQtdeEnter(Sender: tObject);
    procedure Bit_EstoqueClick(Sender: tObject);
    procedure CurrVar1Enter(Sender: tObject);
    procedure CurrVar2Enter(Sender: tObject);
    procedure CurrVar3Enter(Sender: tObject);
    procedure CurrVar4Enter(Sender: tObject);
    procedure CurrVar5Enter(Sender: tObject);
    procedure CurrVar6Enter(Sender: tObject);
    procedure CurrVar7Enter(Sender: tObject);
    procedure CurrVar8Enter(Sender: tObject);
    procedure CbFreteTChange(Sender: tObject);
    procedure CbFreteRChange(Sender: tObject);
    procedure GrpDescontoExit(Sender: tObject);
    procedure Chk_AgregadoClick(Sender: tObject);
    procedure CbRefChange(Sender: tObject);
    procedure CbClientes1Change(Sender: tObject);
    procedure CbClientes1Click(Sender: tObject);
    procedure CbClientes1Enter(Sender: tObject);
    procedure DBeCli_codigoEnter(Sender: tObject);
    procedure CbRepresentantes1Change(Sender: tObject);
    procedure CbRepresentantes1Exit(Sender: tObject);
    procedure CbTransp1Change(Sender: tObject);
    procedure CbRedesp1Change(Sender: tObject);
    procedure CbTransp1Enter(Sender: tObject);
    procedure CbRedesp1Enter(Sender: tObject);
    procedure CbTransp1Exit(Sender: tObject);
    procedure CbRedesp1Exit(Sender: tObject);
    procedure DBeAlmoxEnter(Sender: tObject);
    procedure CbAlmox1Change(Sender: tObject);
    procedure CbAlmox1Enter(Sender: tObject);
    procedure CbAlmox1Exit(Sender: tObject);
    procedure CbTipo1Exit(Sender: tObject);
    procedure CbxPcl1Change(Sender: tObject);
    procedure CbxPcl1Exit(Sender: tObject);
    procedure DBeCli_codigoClick(Sender: tObject);
    procedure CbTipo1Click(Sender: tObject);
    procedure spClienteClick(Sender: tObject);
    procedure MudouTipo_S;
    procedure MudouTipo_N;
    procedure DBGridItensPedDblClick(Sender: tObject);
    procedure DBGridItensPedDrawColumnCell(Sender: tObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridItensPedKeyDown(Sender: tObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridItensPedKeyPress(Sender: tObject; var Key: Char);
    procedure EdDescricaoExit(Sender: tObject);
    procedure CbTipo1Change(Sender: tObject);
    procedure TabSheetClientesShow(Sender: tObject);
    procedure BitPesquisaClick(Sender: tObject);
    procedure Msk_buscaEnter(Sender: tObject);
    procedure Msk_buscaExit(Sender: tObject);
    procedure Msk_buscaKeyPress(Sender: tObject; var Key: Char);
    procedure RadRazaoClick(Sender: tObject);
    procedure RadCodigoClick(Sender: tObject);
    procedure RadFantasiaClick(Sender: tObject);
    procedure RadCgcClick(Sender: tObject);
    procedure RadCPFClick(Sender: tObject);
    procedure SQLClienteProdCalcFields(DataSet: TDataSet);
    procedure BitVendaHistoricoClick(Sender: tObject);
    procedure BitSairHistoricoProdClick(Sender: tObject);
    procedure SpXhistoricoClick(Sender: tObject);
    procedure PanVendaHExit(Sender: tObject);
    procedure TabSheetReservaShow(Sender: tObject);
    procedure SQLReservaProdAfterScroll(DataSet: TDataSet);
    procedure BitPesqReservaProdClick(Sender: tObject);
    procedure BitCancelaReservaProdClick(Sender: tObject);
    procedure ChkDesctoExit(Sender: tObject);
    procedure CurrDesctoIndiceExit(Sender: tObject);
    procedure TabSheetClientesExit(Sender: tObject);
    procedure TabSheetReservaExit(Sender: tObject);
    procedure BiImprimeEnviaClick(Sender: tObject);
    procedure SQLItensPedidoFastCalcFields(DataSet: TDataSet);
    procedure frxPedidoGetValue(const VarName: String; var Value: Variant);
    procedure DsPedItemDataChange(Sender: tObject; Field: TField);
    procedure DSPedidoDIDataChange(Sender: tObject; Field: TField);
    procedure CdSPedidoDIAfterInsert(DataSet: TDataSet);
    procedure CdSPedidoDIAdicaoAfterInsert(DataSet: TDataSet);
    procedure DSPedidoDIStateChange(Sender: tObject);
    procedure CdSPedidoDIAfterPost(DataSet: TDataSet);
    procedure CdSPedidoDIAdicaoAfterPost(DataSet: TDataSet);
    procedure TabSheet5Show(Sender: tObject);
    procedure TabSheet4Show(Sender: tObject);
    procedure SpeedTipoClick(Sender: tObject);
  private
    { Private declarations }

    wTransacaoITEM :tTransactionDesc;
    wTipoAtEstoque_Anterior,
    wNomeTipoAnterior,
    wTipoAtEstoque,//Var utilizada para verficar se atualiza o estoque pelo tipo do pedido
    wDtEntrada,wDtEntrega,
    wTecla,
    wBotao,
    wCodTipo,
    wCodCliente,
    wProdCodigo,
    wProdRegistro,
    wTups         : String;
    wIndexTipo,
    wIndexPcl,
    wTotalItensPed,
    wItensPedido,
    wUltimoItem   : Integer;
    wCALCULO,
    wDESC,
    wPorcentagem,
    wTeste        : double;
    wAchouCli,
    bVenda        : Boolean;
    w_Saldo_Anterior,
    w_old_qtde,
    w_old_Variacao1,
    w_old_Variacao2,
    w_old_Variacao3,
    w_old_Variacao4,
    w_old_Variacao5,
    w_old_Variacao6,
    w_old_Variacao7,
    w_old_Variacao8,
    w_Dif_Qtde,
    w_Dif_Variacao1,
    w_Dif_Variacao2,
    w_Dif_Variacao3,
    w_Dif_Variacao4,
    w_Dif_Variacao5,
    w_Dif_Variacao6,
    w_Dif_Variacao7,
    w_Dif_Variacao8,
    wSaldoAtual     : Currency;
    wSigla          : String[2];
    wIncluir,
    wIncluiu_Itens,
    wAlterar        :Boolean;
    wTabelacomissao : array[1..6] of double;
    wTabelapreco    : array[1..6] of double;
    {campos}
    CampoEdit     :TEdit;
    CampoDBEdit   :TDBEdit;
    CampoData     :TDateEdit;
    CampoTDBCombo :TDBComboBox;
    CampoCombo    :TcomboBox;
    CampoTDBLuk   :TDBLookupComboBox;
    CampoCurrency :TCurrencyEdit;
    Function  VerificaRestricao(Inativ:string):String;
    Function RetornaPercentualComissao(wCodITem:String):Currency;
    Procedure VerFaturas;
    Procedure PreencheCombo;
    Procedure DeleteItens;
    Procedure AtivaParametrosUsuarios;
    Procedure BuscaProduto;
    Procedure GravaItem;
    Procedure LimpaItem;
    procedure AlteraItem;
    Procedure LimparDados;
    Procedure BuscaSaldo(pRefer:String);
    Procedure Mostra_Saldo(pRefer:String);
    Procedure BuscaNotas;
    Procedure DesabilitaComponentes;
    Procedure MascaraCNPJ;
    procedure MascaraCNPJ_INFCLIE;
    Procedure HabilitaDescto;
    Procedure InserirPedido;
    Procedure HabDadosItemAlterar;
    Procedure DesDadosItemAlterar;
    Procedure CalculaVariacao;
    procedure Processo_Verificar;
    procedure ALTERAR_VALOR_PEDIDO;
    procedure Habilita_Kardex;
    Procedure HabilitaComissaoItem;
    Procedure DesabilitaComissaoItem;
    Procedure ConfiguraGRade;
    Procedure ExcluirItem;
    procedure ChamaTelaVariacao;
    procedure Incluir_Qtde_Pedido;
    procedure MensagemTipo;
    procedure Verifica_baixa_Estoque(pRefer:String);
    procedure Altera_Item_Selecionado;
    procedure Confirma_Exclusao_Item;
    procedure Processo_Atualiza_Estoque;
    procedure Limpa_Variaveis_variacao;
    procedure Busca_Tipo(sCodTipo:String);
    procedure LayOutPesq;
    procedure BuscaprodutosCliente;
    procedure BuscaVendaHistorico;
    Procedure BuscaprodutosReservas;
    procedure BuscaTipoPadrao;
    Procedure GravaMediaComissao;

    Function VerificaCampos:Boolean;
    Function Verifica_Saldo(fRefer:String;fVar:Integer;fQtde,cSaldoEstoque: Currency):Boolean;

    Function Verifica_Saldo_Variacao:Boolean;
    Function Verifica_Transp_Ativa(sCodigo:String):Boolean;
    Function BuscapedidosReservas(wreserva_Prd_refer:string):boolean;
    Function Validardesconto(xdesconto:string) : Boolean;

  public
    { Public declarations }
    {VARIAVEIS UTILIZADA NESTE PROCEDIMENTO, SAO ATRIBUIDAS OS VALORES DO ARQUIVO DE PARAMETRO}
    wComis_Grp,wNumer_Pedido,wPedItemDesc,wKardex,wReserva_Pedido_Producao : String[1];
    wComis_Rep,wComis_Sup,wComis_Ger : Currency;
    wAchouPed,
    bConf_Saldo_Variacao : Boolean;
    procedure CalculaPed;
    procedure BuscaItens;
    procedure CalculaTup;
    procedure DesabilitaBotoes;
    procedure HabilitaBotoes;
    procedure BuscaCodigo;
    Procedure BuscaItensnota;
    Procedure HabilitaComponentes;
    Procedure MostraDados;
    procedure CalculaIndiceDescto;
    Procedure VerificaSitPedido;
  end;

var
  FormPedidos: TFormPedidos;
  wReferencia : string;

implementation

{$R *.DFM}

uses Uteis, Ped0004, GImpPedi, Ped0003, Fat0002, Prd0006,
  Ped0007, PedItem, DataCad, DataMov, DataCad1, Men0001,
  Ped0002, Ped0009, DataMov2, {uProcedimentos,} Cli0002, Math, Email0000;


procedure TFormPedidos.MudaCorCampos(Sender: tObject);
begin
  {cor dos campos TDBEdit}
   if Assigned(CampoDbEdit) then
      begin
         CampoDbEdit.color := clWindow;
      end;
   if ActiveControl is TDBEdit then
      begin
         if (TDBEdit(ActiveControl).color = $00D7D7D7) or (TDBEdit(ActiveControl).color = $00FCFCE9) then
            begin
               exit;
            end;
         TDBEdit(ActiveControl).color := $0080FFFF;
         CampoDbEdit := TDBEdit(ActiveControl);
      end
   else
      begin
         CampoDbEdit := nil;
      end;

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
  {CampoData     :TDateEdit}
   if Assigned(CampoData) then
      begin
         CampoData.color := clWindow;
      end;
   if ActiveControl is TDateEdit then
      begin
         TDateEdit(ActiveControl).color := $0080FFFF;
         CampoData := TDateEdit(ActiveControl);
      end
   else
      begin
         CampoData := nil;
      end;
  {CampoTDBCombo:TDBComboBox}
   if Assigned(CampoTDBCombo) then
      begin
         CampoTDBCombo.color := clWindow;
      end;
   if ActiveControl is TDBComboBox then
      begin
         TDBComboBox(ActiveControl).color := $0080FFFF;
         CampoTDBCombo := TDBComboBox(ActiveControl);
      end
   else
      begin
         CampoTDBCombo := nil;
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
  {CampoCombo:TComboBox}
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
   {Currency}
   if Assigned(CampoCurrency) then
      begin
         CampoCurrency.color := clWindow;
      end;
   if ActiveControl is TCurrencyEdit then
      begin
         if TCurrencyEdit(ActiveControl).color = $00D7D7D7 then
            begin
               exit;
            end;
         TCurrencyEdit(ActiveControl).color := $0080FFFF;
         CampoCurrency := TCurrencyEdit(ActiveControl);
      end
   else
      begin
         CampoCurrency := nil;
      end;
end;

Procedure TFormPedidos.AtivaParametrosUsuarios;
var
wDescontoMaximoUsuario : currency;
a : string;
begin
    CurrPrecoBruto.ReadOnly      := iif(dbInicio.Empresa.AlteraPrecoBruto_P = 'S',False,True);
    CurrPreco.ReadOnly           := iif(dbInicio.Empresa.AlteraPrecoliquido_P = 'S',False,True);
    Bit_Relatorio.Enabled        := iif(dbInicio.Empresa.AcessoRelatorios_P = 'S',True,False);
    CurrDesc1.ReadOnly           := iif(dbInicio.Empresa.AlteraDesctoPedido_P = 'S',False,True);
    CurrDesc2.ReadOnly           := iif(dbInicio.Empresa.AlteraDesctoPedido_P = 'S',False,True);
   // BiImprimeEnvia.Enabled       := iif(dbInicio.Empresa.ReemisaodePedido_P = 'S',True,False);
    Bit_Excluir.Enabled          := iif(dbInicio.Empresa.ExclusaodePedido_P = 'S',True,False);
    { menu item - altera comissao}
    a:= PopupMenu1.Items.Items[3].Caption;
    PopupMenu1.Items.Items[3].Enabled := iif(dbInicio.Empresa.AlteraComissaoItem = 'S',True,False);
    wDescontoMaximoUsuario       := dbInicio.Empresa.DesctoMaximo_P;


end;


procedure TFormPedidos.BuscaCodigo;
begin
    // Busca código digitado na tabela
    try
      if  EdtPed_codigo.Text <> '' then
          begin
              DataMovimento.CdsPedidos.Close;
              DataMovimento.CdsPedidos.CommandText := SQLDEF('PEDIDOS','Select * from PED0000','where PED_CODIGO = '''+EdtPed_codigo.Text+'''','','');
              DataMovimento.CdsPedidos.Open;
              if (not DataMovimento.CdsPedidos.IsEmpty) then
                 begin
                     MostraDados;
                     BuscaItens;
                     CbClientes1.Enabled   := false;
                     DBeCli_codigo.Enabled := false;
                     { edit recebe o cliente localizado na combo. combo desativada para uso mais as rotinas continuam em funcionamento}
                    EdtClienteRazao.Text := cbclientes1.Text;
                 end
              else
                 begin
                     uteis.aviso('Pedido não encontrado !');
                     EdtPed_codigo.SetFocus;
                     EdtPed_codigo.SelectAll;
                 end;
              VerificaSitPedido;
              EdtPed_codigo.Enabled := true;
              EdtPed_codigo.SetFocus;
          end;
     except on E:EdatabaseError do
         uteis.erro  (pchar('Erro ao localizar pedido !'+e.Message));
     end;
end;

procedure TFormPedidos.Bit_SairClick(Sender: tObject);
begin
    close;
end;

procedure TFormPedidos.FormShow(Sender: tObject);
begin
    {Left   := 0;
    Top    := 0;
    Height := 577;
    Width  := 842;   }

    PageControlPed.Activepage := TabSheeVendas;
 
    wIncluir     := false;
    wAlterar     := False;
    wBotao       := '';
    CBOrdemServico.Enabled := FrmMenu.bUtilizaNfse;
    //
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
    screen.cursor := CrHourglass;
    //
    PreencheCombo;
    LimparDados;
    //
    CbClientes1.ItemIndex := -1;
    CbTipo1.Text := '';
    EdtPed_Codigo.Clear;
    EdtPed_Codigo.Hint := 'Digite o Nº do pedido para consulta. '+#13+'Pressione <Esc> para nova consulta !';
    DBeCli_codigo.Text := '';
    DBeRep_codigo.Text := '';
    //
    try
      dataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=SqlDef('Parametros','Select PMT_ATULIZA_ESTOQUE,PMT_TUPPEDIDO,PMT_COMIS_GRP,PMT_VARIACOES,PMT_NUMER_PEDIDO,PMT_COMIS_REP,PMT_COMIS_SUP,PMT_COMIS_GER,PMT_PEDITEMDESC,PMT_ITENS_PEDIDO,PMT_KARDEX_PEDIDO,PMT_QTDE_DEC_PED FROM PRMT0001 ','','EMP_CODIGO','');
      dataCadastros.sqlUpdate.Open;
      {**********************************************************************
      ***  PARAMETROS GLOBAIS ***
      ***  VARIAVEIS UTILIZADAS
      *********************************************************************}
      wComis_Grp    := dataCadastros.sqlUpdate.FIELDBYNAME('PMT_COMIS_GRP').AsString;
      wPedItemDesc  := dataCadastros.sqlUpdate.FIELDBYNAME('PMT_PEDITEMDESC').AsString;
      wComis_Rep    := dataCadastros.sqlUpdate.FIELDBYNAME('PMT_COMIS_REP').AsCurrency;
      wComis_Sup    := dataCadastros.sqlUpdate.FIELDBYNAME('PMT_COMIS_SUP').AsCurrency;
      wComis_Ger    := dataCadastros.sqlUpdate.FIELDBYNAME('PMT_COMIS_GER').AsCurrency;
      wTotalItensPed:= dataCadastros.sqlUpdate.FIELDBYNAME('PMT_ITENS_PEDIDO').AsInteger;
      wTups         := dataCadastros.sqlUpdate.FIELDBYNAME('PMT_TUPPEDIDO').AsString;
      wKardex       := dataCadastros.sqlUpdate.FIELDBYNAME('PMT_KARDEX_PEDIDO').AsString;
      wReserva_Pedido_Producao := dataCadastros.sqlUpdate.FIELDBYNAME('PMT_ATULIZA_ESTOQUE').AsString;

      {PARAMETRO PARA CONFIGURAR CASAS DECIMAIS}
      case DataCadastros.sqlUpdate.FieldByName('PMT_QTDE_DEC_PED').AsInteger of
         0:Begin
              DataMovimento.CdsPedItemPRF_PRECO.DisplayFormat    := '###,###,##0.00';
              DataMovimento.CdsPedItemPRF_PRECO.EditFormat       := '###,###,##0.00';
              DataMovimento.CdsPedItemPRF_TOTAL_CC.DisplayFormat := '###,###,##0.00';
              CurrPrecoBruto.DisplayFormat := '###,###,##0.00';
              CurrPreco.DisplayFormat      := '###,###,##0.00';
           end;
         1:Begin
              DataMovimento.CdsPedItemPRF_PRECO.DisplayFormat    := '###,###,##0.00';
              DataMovimento.CdsPedItemPRF_PRECO.EditFormat       := '###,###,##0.00';
              DataMovimento.CdsPedItemPRF_TOTAL_CC.DisplayFormat := '###,###,##0.00';
              CurrPrecoBruto.DisplayFormat := '###,###,##0.00';
              CurrPreco.DisplayFormat      := '###,###,##0.00';
           end;
         2:Begin
              DataMovimento.CdsPedItemPRF_PRECO.DisplayFormat    := '###,###,##0.00';
              DataMovimento.CdsPedItemPRF_PRECO.EditFormat       := '###,###,##0.00';
              DataMovimento.CdsPedItemPRF_TOTAL_CC.DisplayFormat := '###,###,##0.00';
              CurrPrecoBruto.DisplayFormat := '###,###,##0.00';
              CurrPreco.DisplayFormat      := '###,###,##0.00';
           end;
         3:Begin
              DataMovimento.CdsPedItemPRF_PRECO.DisplayFormat    := '###,###,##0.000';
              DataMovimento.CdsPedItemPRF_PRECO.EditFormat       := '###,###,##0.000';
              DataMovimento.CdsPedItemPRF_TOTAL_CC.DisplayFormat := '###,###,##0.000';
              CurrPrecoBruto.DisplayFormat := '###,###,##0.000';
              CurrPreco.DisplayFormat      := '###,###,##0.000';
           end;
         4:Begin
              DataMovimento.CdsPedItemPRF_PRECO.DisplayFormat    := '###,###,##0.0000';
              DataMovimento.CdsPedItemPRF_PRECO.EditFormat       := '###,###,##0.0000';
              DataMovimento.CdsPedItemPRF_TOTAL_CC.DisplayFormat := '###,###,##0.0000';
              CurrPrecoBruto.DisplayFormat := '###,###,##0.0000';
              CurrPreco.DisplayFormat      := '###,###,##0.0000';
           end;
         5:Begin
              DataMovimento.CdsPedItemPRF_PRECO.DisplayFormat    := '###,###,##0.00000';
              DataMovimento.CdsPedItemPRF_TOTAL_CC.DisplayFormat := '###,###,##0.00000';
              DataMovimento.CdsPedItemPRF_PRECO.EditFormat       := '###,###,##0.00000';
              CurrPrecoBruto.DisplayFormat := '###,###,##0.00000';
              CurrPreco.DisplayFormat      := '###,###,##0.00000';
           end;
      end;
      CurrPrecoBruto.DecimalPlaces := DataCadastros.sqlUpdate.FieldByName('PMT_QTDE_DEC_PED').AsInteger;
      CurrPreco.DecimalPlaces      := DataCadastros.sqlUpdate.FieldByName('PMT_QTDE_DEC_PED').AsInteger;
      //
      if (wPedItemDesc = 'S') then //Verifica no parametro se pode deixar alterar a descricao
         begin
             EdDescricao.ReadOnly := false;
             EdDescricao.Color    := clWindow;
         end
      else
         begin
             EdDescricao.ReadOnly := True;
             EdDescricao.Color    := $00D7D7D7;
         end;
      dataCadastros.sqlUpdate.Close;
      //
      ConfiguraGRade;

    except on E:EdatabaseError do
       uteis.erro  (Pchar('Impossível acessar a tabela "Parametros". '+e.Message));
    end;
    // Disponibilizar comissoes de Vendas quando em Grupo

    if wComis_Grp = 'S' then
       // comissao é em grupo : mostrar supervisor e gerente
       begin
           // Comissão por Produto ou Escala
           if (frmmenu.PARAMENTROS.PAR_COMISSAO_ITEM = 'S') OR (frmmenu.PARAMENTROS.PAR_COMISSAO_ESCALA = 'S') then
             begin
             GbComissao.Visible := true;
             Lbl_Rep.Visible        := True;
             DBeComis1.Visible      := True;
             DBeComis1.ReadOnly     := True;
             DBeComis1.Color        := $00D7D7D7;
             Lbl_Sup.Visible        := false;
             DBeComis2.Visible      := false;
             Lbl_Ger.Visible        := false;
             DBeComis3.Visible      := false;
             end
          else
           begin
               Lbl_Rep.Visible        := True;
               DBeComis1.Visible      := True;
               Lbl_Sup.Visible        := True;
               DBeComis2.Visible      := True;
               Lbl_Ger.Visible        := True;
               DBeComis3.Visible      := True;
            end;
       end
    else
       begin
            // Comissão por Produto ou Escala
           if (frmmenu.PARAMENTROS.PAR_COMISSAO_ITEM = 'S') OR (frmmenu.PARAMENTROS.PAR_COMISSAO_ESCALA = 'S') then
             begin
             GbComissao.Visible := true;
             Lbl_Rep.Visible        := True;
             DBeComis1.Visible      := True;
             DBeComis1.ReadOnly     := True;
             DBeComis1.Color        := $00D7D7D7;
             Lbl_Sup.Visible        := false;
             DBeComis2.Visible      := false;
             Lbl_Ger.Visible        := false;
             DBeComis3.Visible      := false;
             end
          else
             begin
                 Lbl_Rep.Visible        := True;
                 DBeComis1.Visible      := True;
                 Lbl_Sup.Visible        := False;
                 DBeComis2.Visible      := False;
                 Lbl_Ger.Visible        := False;
                 DBeComis3.Visible      := False;
             end;
       end;
    if wTups = 'S' then
       begin
           GbTups.Visible := True;
       end
    else
       begin
           GbTups.Visible := False;
       end;
    DBeAlmox.Text           := FrmMenu.wPmt_Amx_Venda;
    DBeAlmox.Text           := StrZero(DBeAlmox.Text,DBeAlmox.MaxLength);
    CbAlmox1.TextoLocalizar := StrZero(DBeAlmox.Text,DBeAlmox.MaxLength);
    CbAlmox1.Localizar      := True;

    if (FrmMenu.wBtnDuplica = 'S') then
       begin
           PanDuplicar.Visible := True;
       end
    else
       begin
           PanDuplicar.Visible := False;
       end;
    if (FrmMenu.wProdutoAgregado = 'S') then
       Chk_Agregado.Visible := True
    else
       Chk_Agregado.Visible := False;
    //

    HabilitaBotoes;
    PageControl1.ActivePageIndex := 0;
    wIndexTipo := 0;
    wIndexPcl  := 0;
    EdtPed_codigo.SetFocus;
    screen.cursor:=CrDefault;
end;

procedure TFormPedidos.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    if DataMovimento.CdsPedidos.State in [dsEdit,dsInsert] then
       begin
          if Validacampos = False Then
             CanClose := False;
       end;
    VerificaEdicao;
end;

procedure TFormPedidos.HabilitaBotoes;
begin
    if (FrmMenu.wBtnDuplica = 'S') then
       BTN_DUPLICAR.Enabled   := True;

    Bit_novo.Enabled      := True;
    Bit_Excluir.Enabled   := True;
    Bit_Sair.Visible      := True;
    Bit_Relatorio.Enabled := True;
    Bit_Lista.Enabled     := True;
    Bit_Gravar.Enabled    := False;
    Bit_Cancelar.Visible  := False;
    EdtPed_codigo.Enabled := True;
    spCliente.Enabled     := false;
    //SpeedButton1.Enabled  := false;

    AtivaParametrosUsuarios;

end;

procedure TFormPedidos.DesabilitaBotoes;
begin
    if (FrmMenu.wBtnDuplica = 'S') then
       BTN_DUPLICAR.Enabled   := False;
    Bit_novo.Enabled      := False;
    Bit_Excluir.Enabled   := False;
    Bit_Sair.Visible      := False;
    Bit_Relatorio.Enabled := False;
    Bit_Lista.Enabled     := False;
    Bit_Gravar.Enabled    := True;
    Bit_Cancelar.Visible  := True;
    spCliente.Enabled     := True;
    //SpeedButton1.Enabled     := True;
    //if DataMovimento.CdsPedidos.State in [dsBrowse,dsEdit] then
    //   wAlterar           := True;
end;

Function TFormPedidos.ValidaCampos:Boolean;
begin
    // palavra reservada : retorno da funcao
    result := True;
    //
    //Obriga escolha de um cliente
    if CbxPcl1.Text = '' then
       begin
           uteis.aviso('Informe a condição de Pagto !');
           CbxPcl1.SetFocus;
           result := False;
           exit;
       end;
    if DBeCli_codigo.Text = '' then
       begin
           uteis.aviso('Informe um cliente !');
           DbeCli_Codigo.SetFocus;
           result := False;
           exit;
       end;
    //obriga escolha de um representante
    if DBeRep_codigo.Text = '' then
       begin
           uteis.aviso('Informe um representante!');
           if DbeRep_codigo.Enabled = true then
              DbeRep_codigo.SetFocus;
           result := False;
           exit;
       end;
    if DtEntrada.Text = '  /  /    ' then
       begin
           uteis.aviso('Informe a data de entrada!');
           DtEntrada.SetFocus;
           result := False;
           exit;
       end;
    if DtEntrega.Text = '  /  /    ' then
       begin
           uteis.aviso('informe a data de entrega !');
           DtEntrega.SetFocus;
           result := False;
           exit;
       end;
    //if dbInicio.Empresa.wMultiAlmox = 'S' then
    //   begin
           if (DBeAlmox.Text = '') then
              begin
                  uteis.aviso('Informe um  almoxarifado !');
                  DBeAlmox.SetFocus;
                  result := false;
                  exit;
              end;
      // end;
    if (DbeTRP_CODIGO.Text <> '') and (CbFreteT.Text = '') then
       begin
           uteis.aviso('Informe a condição do pagamento da transportadora !');
           CbFreteT.SetFocus;
           CbFreteT.SelectAll;
           result := False;
           exit;
       end;
    if (DbeTrp_Redesp.Text <> '') and (CbFreteR.Text = '')then
       begin
           uteis.aviso('Informe a condição do pagamento da transportadora-redespacho !');
           CbFreteR.SetFocus;
           CbFreteR.SelectAll;
           result := False;
           exit;
       end;
end;

procedure TFormPedidos.Bit_ListaClick(Sender: tObject);
begin
  try
    try
      {controle das transacoes}
      FormPedidoGrid := TFormPedidoGrid.Create(Application);
      FormPedidoGrid.ShowModal;
    finally
      FormPedidoGrid.Destroy;
      FormPedidoGrid := nil; //  nil é - From Assigned = False
      Pagecontrol1.ActivePageIndex := 0;
      Screen.OnActiveControlChange := mudaCorCampos;
      wIncluir := false;
      EdtPed_codigo.SetFocus;
    end;
  except
      //beep;
      uteis.erro  ('Ocorreu um erro na criação do formulário!');
  end;
end;

procedure TFormPedidos.Bit_novoClick(Sender: tObject);
begin
    try
      wIncluir := true;
      wAlterar := False;
      wIncluiu_Itens := False;
      wBotao   := 'I'; //Botao Incluir
      PageControl1.ActivePageIndex := 0;
      CbClientes1.Text     := '';
      screen.Cursor := crHourglass;
      DataMovimento.CdsPedidos.Close;
      if (DataMovimento.CdsPedItem.Active) then
         DataMovimento.CdsPedItem.Close;
      LimparDados;
      LimpaItem;
      DtEntrada.Date                                := date;
      DtEntrega.Date                                := date;

      HabilitaComponentes;
      if (FrmMenu.wNumer_Pedido <> 'A') then
         begin
             EdtPed_codigo.ReadOnly := False;;
             EdtPed_codigo.Enabled := true;
             EdtPed_codigo.SetFocus;
             EdtPed_codigo.SelectAll;
         end
      else
         begin
             EdtPed_codigo.ReadOnly := true;
             InserirPedido;
         end;
//      MensagemTipo;
      DesabilitaBotoes;
      EdtClienteRazao.Text := '';
      DBeAlmox.Text           := FrmMenu.wPmt_Amx_Venda;
      DBeAlmox.Text           := StrZero(DBeAlmox.Text,DBeAlmox.MaxLength);
      CbAlmox1.TextoLocalizar := StrZero(DBeAlmox.Text,DBeAlmox.MaxLength);
      CbAlmox1.Localizar      := True;
      screen.Cursor := crDefault;
    except on E:EdataBaseError do
       uteis.erro  (pchar('Erro ao inserir o registro !'+e.message));
    end;
end;

procedure TFormPedidos.Bit_ExcluirClick(Sender: tObject);
begin
    if (EdtPed_codigo.Text <> '') then
       begin
           Screen.cursor :=crHourglass;
           wIncluir := false;
           try
             if DataMovimento.CdsPedidos.IsEmpty Then   //evita exclussão de registro
                begin                                      // em uma Tabela Vazia.
                    messagebeep($ffff);
                    uteis.aviso('Não Existe Pedido Cadastrado !');
                    Screen.Cursor := crDefault;
                    exit;
                end;
             if DataMovimento.CdsPedidosPED_SITUACAO.AsString = 'T' Then
                begin
                    uteis.aviso('Pedido faturado. Não pode ser excluído !');
                    edtPed_Codigo.SetFocus;
                    Screen.Cursor := crDefault;
                end
             else
                begin
                    if uteis.confirmacao ( ('Deseja Excluir o Pedido '''+EdtPed_codigo.text+''' do Cliente '''+CbClientes1.Text+''' ?'))= Mryes then
                       begin
                           if (not DataMovimento.CdsPedItem.IsEmpty) then
                              DeleteItens;
                           DataMovimento.CdsPedidos.Delete;
                           LimparDados;
                           LimpaItem;
                           EdtClienteRazao.Text := '';
                           DataMovimento.CdsPedItem.Close;
                           DataMovimento.CdsPedidos.ApplyUpdates(0);
                       end;
                    screen.cursor := crDefault;
                    if DataMovimento.CdsPedidos.IsEmpty Then  //Evita alteração antes que se
                       begin                              //inclua registros na tabela.
                           EdtPed_codigo.Enabled := False;
                           DataMovimento.dsPedidos.AutoEdit := False;
                           DesabilitaComponentes;
                       end
                    else
                      begin
                          HabilitaComponentes;
                      end;
                end;
             if (wIncluir = True) then
                wIncluir := False;
             EdtPed_codigo.Enabled := true;
             EdtPed_Codigo.SetFocus;
             EdtPed_Codigo.SelectAll;
             Screen.Cursor := crDefault;
           except on E:EdatabaseError do
              uteis.erro  (Pchar('Erro ao exlcuir pedido !'+e.message));
           end;
       end
    else
       begin
           uteis.aviso('Informe o Número do Pedido !');
           EdtPed_codigo.Enabled := true;
           EdtPed_codigo.SetFocus;
       end;
end;

procedure TFormPedidos.Bit_CancelarClick(Sender: tObject);
var
wMensagem :String;
begin
  screen.cursor := CrHourglass;
  try
    if (DataMovimento.CdsPedidos.State in [dsinactive]) then
       wMensagem := 'Deseja sair da emissão de pedidos ?'
    else
    if (DataMovimento.CdsPedidos.State in [dsBrowse]) then
       wMensagem := 'Deseja realmente abandonar este pedido ?'
    else
    if (DataMovimento.CdsPedidos.State in [dsEdit]) then
       wMensagem := 'Deseja realmente cancelar a alteração do pedido ?'
    else
    if (DataMovimento.CdsPedidos.State in [dsInsert]) then
       wMensagem := 'Deseja realmente cancelar a digitação do pedido ?';
    if not (DataMovimento.CdsPedidos.State in [dsBrowse]) then
      if uteis.confirmacao ( (wMensagem))=mryes then
      begin
        DBeCli_codigo.Enabled := false;
        CbClientes1.Enabled    := false;
        if DataMovimento.CdsPedidos.IsEmpty Then   // Tabela vazia
        begin
          DataMovimento.DsPedidos.AutoEdit := False;
        end;
        if (DataMovimento.CdsPedidos.State = DsInsert) then
        begin
          if (not DataMovimento.CdsPedItem.IsEmpty) then
            DeleteItens;
          if (FrmMenu.wNumer_Pedido = 'A') then   //Numeraçao automatica
            SequenciadorPRC(DataCadastros.SQLConnection1, dbInicio.Empresa.EMP_CODIGO ,'PED0000', 'PED_CODIGO', 1, EdtPed_codigo.Text);

        end;
        if (DataMovimento.CdsPedidos.State in [dsInsert,dsEdit]) then
           DataMovimento.CdsPedidos.Cancel;
          //
          DataMovimento.CdsPedItem.Close;
          DataMovimento.CdsPedidos.Close;
          screen.cursor := crDefault;
          wIncluir      := false;
          wAlterar      := false;
          HabilitaBotoes;
          LimpaItem;
          LimparDados;
          DesabilitaComponentes;
          EdtPed_codigo.Enabled := true;
          EdtPed_codigo.Color   := $0080FFFF;

       end
    else
      begin
         HabilitaComponentes;
      end;
    screen.cursor := crDefault;
    if (EdtPed_Codigo.Enabled) then
    begin
      EdtPed_codigo.SetFocus;
      EdtPed_codigo.SelectAll;
    end
   else
    begin
      if (CbTipo1.Enabled) then
      begin
        CbTipo1.SetFocus;
        CbTipo1.SelectAll;
      end;
    end;
    //limpa
    EdtClienteRazao.Text := '';

  except on E:EDataBaseError do
     uteis.erro  (pchar('Erro ao cancelar o registro ! '+e.message));
  end;
  Screen.Cursor := crDefault;
end;

Procedure TFormPedidos.VerificaEdicao;
begin
    // verifica estado da tabela em edicao e inclusao
    if DataMovimento.CdsPedidos.State in [dsEdit,dsInsert] then
       begin
           if uteis.confirmacao ( 'Deseja salvar alterações ?') = idyes then
             begin
                 if (DataMovimento.CdsPedidos.State in [dsInsert,dsEdit]) then
                    DataMovimento.CdsPedidos.ApplyUpdates(0);
                 HabilitaBotoes;
             end
           else
             begin
                 if (DataMovimento.CdsPedidos.State = DsInsert) then
                    begin
                        if (FrmMenu.wNumer_Pedido = 'A') then   //Numeraçao automatica
                           SequenciadorPRC(DataCadastros.SQLConnection1, dbInicio.Empresa.EMP_CODIGO ,'PED0000', 'PED_CODIGO', 1, EdtPed_codigo.Text);
                    end;
                 DataMovimento.CdsPedidos.Cancel;
                 HabilitaBotoes;
             end;
       end;
end;

procedure TFormPedidos.DefinePmts;
Begin
    //****************************************************************************
    // ***  PARAMETROS GLOBAIS *** //
    // Buscar comissoes de Vendas definidas na configuração
    //Representante :
    DataMovimento.CdsPedidosPED_COMIS1.AsCurrency := wComis_Rep;
    DBeComis1.Field.AsCurrency := wComis_Rep;
    if wCOMIS_GRP = 'S' then
       // comissao é em grupo : mostrar supervisor e gerente
       begin
           if DataMovimento.CdsPedidos.State in [dsInsert] then
              begin
                  // Supervisor :
                  DataMovimento.CdsPedidosPED_COMIS2.AsCurrency := wCOMIS_SUP;
                  DBeComis2.Field.AsCurrency := wComis_Sup;
                  // Gerente :
                  DataMovimento.CdsPedidosPED_COMIS3.AsCurrency := wCOMIS_GER;
                  DBeComis3.Field.AsCurrency := wComis_Ger;
              end;
       end;
end;

procedure TFormPedidos.EdtPed_codigoExit(Sender: tObject);
begin
    if (ActiveControl <> nil)
    and(ActiveControl.Name <> 'Bit_Lista')
    and(ActiveControl.Name <> 'Bit_Relatorio')
    and(ActiveControl.Name <> 'Bit_Estoque')
    and(ActiveControl.Name <> 'BTN_DUPLICAR')
    and(ActiveControl.Name <> 'Bit_novo')
    and(ActiveControl.Name <> 'Bit_Excluir')
    and(ActiveControl.Name <> 'Bit_Gravar')
    and(ActiveControl.Name <> 'Bit_Cancelar')
    and(ActiveControl.Name <> 'Bit_Sair') then
       begin
           screen.Cursor := crHourglass;
           if (wIncluir = false) then
              begin
                  if (wAchouPed = False) and (EdtPed_Codigo.Text <> '') then
                     begin
                         if (FrmMenu.wNumer_Pedido = 'A') then
                            begin
                                wNPedido           := StrZero(ExtrairNumeros(EdtPed_codigo.Text),6);
                                wNLetra            := ExtrairLetra(EdtPed_codigo.Text);
                                EdtPed_codigo.Text := wNPedido+wNLetra;
                            end;
                         if (EdtPed_codigo.text <> '') then
                            begin
                                try
                                  DataMovimento.CdsPedidos.Close;
                                  DataMovimento.CdsPedidos.CommandText := SQLDEF('PEDIDOS','SELECT P1.* FROM PED0000 P1 ','WHERE P1.PED_CODIGO = '''+EdtPed_codigo.Text+'''','P1.PED_CODIGO','P1.');
                                  DataMovimento.CdsPedidos.Open;
                                  if DataMovimento.CdsPedidos.IsEmpty = false then
                                     begin
                                         MostraDados;
                                         BuscaItens;
                                         CbClientes1.Enabled    := false;
                                         DBeCli_codigo.Enabled  := false;

                                         InserirPedido;

                                         EdtPed_codigo.Enabled := False;
                                         EdtPed_Codigo.Color   := $00D7D7D7;

                                         VerificaSitPedido;
                                         { edit recebe o cliente localizado na combo. combo desativada para uso mais as rotinas continuam em funcionamento}
                                         EdtClienteRazao.Text := cbclientes1.Text;

                                     end
                                  else
                                     begin
                                         LimparDados;
                                         if (DataMovimento.CdsPedItem.IsEmpty=False) then
                                            DataMovimento.CdsPedItem.Close;
                                         uteis.aviso('Pedido não encontrado !');
                                         EdtPed_codigo.Text := '';
                                         EdtPed_codigo.Enabled := true;
                                         EdtPed_codigo.Color   := clWindow;
                                         EdtPed_codigo.SetFocus;
                                         EdtPed_codigo.SelectAll;
                                     end;
                                except on E:EDataBaseError do
                                   uteis.erro  (pchar('Erro ao localizar pedido !'+e.Message));
                                end;
                            end;
                     end
                  else
                     begin
                         if (EdtPed_Codigo.Text <> '') then
                            EdtPed_codigo.Enabled := False;
                     end;
              end
           else
              begin
                  if (wIncluir = true) and (FrmMenu.wNumer_Pedido = 'M') then //(DataMovimento.CdsPedidos.State in [DsInsert]) and (wNumer_Pedido = 'M') then
                     begin
                         // numeracao manual, checar se existe o ped. digitado
                         wNPedido           := StrZero(ExtrairNumeros(EdtPed_codigo.Text),6);
                         wNLetra            := ExtrairLetra(EdtPed_codigo.Text);
                         EdtPed_codigo.Text := wNPedido+wNLetra;
                         try
                           DataCadastros.sqlUpdate.Close;
                           DataCadastros.SqlUpdate.sql.text :=SQLDEF('PEDIDOS','Select PED_CODIGO from PED0000','Where PED_CODIGO = '''+EdtPed_codigo.Text+'''','','');
                           DataCadastros.sqlUpdate.Open;
                           if DataCadastros.sqlUpdate.IsEmpty = false then
                              begin
                                  uteis.aviso('Pedido já Cadastrado.');
                                  if DataMovimento.CdsPedidos.State in [dsInsert] then
                                     DataMovimento.CdsPedidos.CancelUpdates;
                                  BuscaCodigo;
                                  HabilitaBotoes;
                                  wIncluir := false;
                                  EdtPed_codigo.Enabled := true;
                                  EdtPed_codigo.Color   := clWindow;
                                  EdtPed_codigo.SetFocus;
                                  EdtPed_codigo.SelectAll;
                                  VerificaSitPedido;
                              end
                           else
                              begin
                                  inserirPedido;
                              end;
                           DataCadastros.sqlUpdate.Close;
                         except on E:EdatabaseError do
                           uteis.erro  (Pchar('Erro ao pesquisar pedido !'+e.Message));
                         end;
                     end
                  else
                     begin
                         wNPedido           := StrZero(ExtrairNumeros(EdtPed_codigo.Text),6);
                         wNLetra            := ExtrairLetra(EdtPed_codigo.Text);
                         EdtPed_codigo.Text := wNPedido+wNLetra;
                         DataCadastros.sqlUpdate.Close;
                         DataCadastros.SqlUpdate.sql.text :=SQLDEF('PEDIDOS','Select P1.PED_CODIGO from PED0000 P1','Where P1.PED_CODIGO = '''+EdtPed_codigo.Text+'''','P1.PED_CODIGO','P1.');
                         DataCadastros.sqlUpdate.Open;
                         if DataCadastros.sqlUpdate.IsEmpty = false then
                            begin
                                BuscaCodigo;
                                HabilitaBotoes;
                                wIncluir := false;
                                EdtPed_codigo.Enabled := true;
                                EdtPed_codigo.Color   := clWindow;
                                EdtPed_codigo.SetFocus;
                                EdtPed_codigo.SelectAll;
                                VerificaSitPedido;
                                uteis.aviso('Pedido já Cadastrado.');
                                if DataMovimento.CdsPedidos.State in [dsInsert] then
                                   DataMovimento.CdsPedidos.CancelUpdates;
                            end
                         else
                            begin
                                EdtPed_codigo.Enabled := false;
                                EdtPed_codigo.Color   := $00D7D7D7;
                            end;
                     end;
              end;
           if (CbTipo1.Enabled = True) then
              CbTipo1.SetFocus;
           Screen.Cursor := crDefault;
       end;
end;

procedure TFormPedidos.Bit_GravarClick(Sender: tObject);
Var
  bGravar : Boolean;
begin
   // se foi solicitado desconto da nota é obrigatório informar o percentual ou valor do desconto
   if ChkDescto.checked  then
      if (CurrDesctoPc1.Value = 0) AND (CurrDesctoVl.Value = 0) then
        begin
         uteis.erro  ('Foi solicitado desconto na nota, favor informar qual o desconto.');
         CurrDesctoPc1.SetFocus;
         exit;
        end;

   try
     if (DataMovimento.CdsPedItem.IsEmpty) then
        begin
           uteis.aviso('É necessário informar os itens do pedido !');
           Cbref.SetFocus;
        end
     else
     if (Trim(CbxPcl1.Text) = '') then
        begin
           uteis.aviso('Informe O Prazo de pagamento!');
           CbxPcl1.SetFocus;
        end
     else
        begin
           if (ValidaCampos) then
              begin
                 if (DataMovimento.CdsPedidos.State in [dsInsert,dsEdit]) then
                    begin
                       if (wIncluir) then
                          begin
                             if (DBeRep_codigo.Field.Text <> '')
                             and(not Verifica_Representante_Ativo(StrZero(DBeRep_codigo.Text,3))) then
                                begin
                                   uteis.aviso('Representante inativo !');
                                   DBeRep_codigo.SetFocus;
                                   DBeRep_codigo.SelectAll;
                                   bGravar := False;
                                end
                             else
                             if (DbeTRP_codigo.Field.AsString <> '')
                             and(not Verifica_Transp_Ativa(DbeTRP_codigo.Text)) then
                                begin
                                   uteis.aviso('Transportadora Inativa !');
                                   CbFreteT.ItemIndex        := 0;
                                   DbeTRP_codigo.SetFocus;
                                   DbeTRP_codigo.SelectAll;
                                   bGravar := False;
                                end
                             else
                             if (DbeTrp_Redesp.Field.AsString <> '')
                             and(not Verifica_Transp_Ativa(DbeTrp_Redesp.Text)) then
                                begin
                                   uteis.aviso('Transportadora Redespacho Inativa !');
                                   CbFreteR.ItemIndex        := 0;
                                   DbeTrp_Redesp.SetFocus;
                                   DbeTrp_Redesp.SelectAll;
                                   bGravar := False;
                                end
                             else
                                bGravar := True;
                          end
                       else
                          bGravar := True;
                    end;
              end;

        end;
     if (bGravar) then
        begin
           DBeCli_codigo.Enabled := false;
           CbClientes1.Enabled   := false;
           wIncluir              := False;
           wAchouPed             := False;
           wAchouCli             := False;
           wIncluiu_Itens        := False;

           DataMovimento.CdsPedidosPED_CODIGO.AsString          := EdtPed_codigo.Text;
           DataMovimento.CdsPedidosPED_DTENTRADA.AsDateTime     := DtEntrada.Date;
           DataMovimento.CdsPedidosPED_DTSAIDA.AsDateTime       := DtEntrega.date;
           {Comissoes em Grupo}
           if wComis_Grp = 'N' then
              begin
                  DataMovimento.CdsPedidosPED_COMIS2.AsCurrency := 0;
                  DataMovimento.CdsPedidosPED_COMIS3.AsCurrency := 0;
              end;
           { Comissão por produto ou tab.Escalonada - gravar média dos itens }

           if (frmmenu.PARAMENTROS.PAR_COMISSAO_ITEM = 'S') OR (frmmenu.PARAMENTROS.PAR_COMISSAO_ESCALA = 'S') then
               GravaMediaComissao;

           {ITEMINDEX = 0 = '' 1 = PAGO   = 2 PAGAR }
           DataMovimento.CdsPedidosPED_FRETE.AsString           := iif(CbFreteT.ItemIndex = 0,'',IIF(CbFreteT.ItemIndex = 1,'C','F'));
           DataMovimento.CdsPedidosPED_FRETE2.AsString          := iif(CbFreteR.ItemIndex = 0,'',IIF(CbFreteR.ItemIndex = 1,'C','F'));
           DataMovimento.CdsPedidosPED_TpDescto.AsString        := iif(RadDescPorc.checked ,'P',iif(RadDescValor.checked ,'V',''));
           DataMovimento.CdsPedidosPED_DESCTOPC1.AsCurrency     := CurrDesctoPc1.Value;
           DataMovimento.CdsPedidosPED_DESCTOPC2.AsCurrency     := CurrDesctoPc2.Value;
           DataMovimento.CdsPedidosPED_DESCTOVL.AsCurrency      := CurrDesconto.Value;
           DataMovimento.CdsPedidosPED_VLTOTAL_LIQ.AsCurrency   := CurrSubTotal.Value;
           DataMovimento.CdsPedidosPED_VLTOTAL_IPI.AsCurrency   := CurrTotIpi.Value;
           DataMovimento.CdsPedidosPED_VLTOTAL_BRUTO.AsCurrency := CurrTotal.Value;
           DataMovimento.CdsPedidosPED_TOTUPS.AsCurrency        := CurrTotups.Value;
           DataMovimento.CdsPedidosPED_VLTUPS.AsCurrency        := CurrVlTups.Value;
           DataMovimento.CdsPedidosEMP_CODIGO.AsString          := dbInicio.Empresa.EMP_CODIGO;
           DataMovimento.CdsPedidos.ApplyUpdates(0);
           DataMovimento.CdsPedidos.Close;
           DataMovimento.CdsPedidos.Open;
           DataMovimento.CdsPedidos.Last;

           {grava todas as alteraçoes do db}

           HabilitaBotoes;

           PageControl1.ActivePageIndex := 0;
           EdtPed_codigo.Enabled := true;
           EdtPed_codigo.Color   := clWindow;

           EdtPed_Codigo.Setfocus;
           if (FrmMenu.wBtnDuplica = 'S') then
              begin
                  BTN_DUPLICAR.Enabled := True;
              end;

           Mostradados;

        end;



   except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao gravar pedido !'+e.Message));
   end;
end;

Procedure TFormPedidos.GravaMediaComissao;
var
wTotal,wTotalcom,wMediaComissao : Currency;
begin
   wTotalcom := 0;
   wTotal    := 0;
   // itens do pedido
   DataMovimento.CdsPedItem.Prior;
   while not DataMovimento.CdsPedItem.eof do
    begin
     wTotal := wTotal + (DataMovimento.CdsPedItemPRF_QTDE.AsCurrency* DataMovimento.CdsPedItemPRF_PRECO.AsCurrency);
     wTotalcom := wTotalcom + (DataMovimento.CdsPedItemPRF_QTDE.AsCurrency* DataMovimento.CdsPedItemPRF_PRECO.AsCurrency) * (DataMovimento.CdsPedItemPRF_ITEMCOMIS.AsCurrency/100);
     DataMovimento.CdsPedItem.Next;
    end;
   wMediaComissao := (wTotalcom / wTotal)*100;
   // gravar no pedido
   DataMovimento.CdsPedidosPED_COMIS1.AsCurrency := wMediaComissao;


end;

Procedure TFormPedidos.VerFaturas;
begin
    {*** verificar se o cliente tem faturas em aberto, avisa e
     libera p/ consultar de imediato  }
    // pesquisar somente as faturas pendentes do cliente
    // nao precisa selecionar por em pois o cliente já esta definido
    try
      FormPedFatura.SqlCdsDupFat.Close;
      FormPedFatura.SqlCdsDupFat.CommandText := 'select f1.fat_codigo,f1.fpc_numer,f1.fpc_vlparc,f1.fpc_vencto,f1.fpc_vlPago,f1.fpc_pagto,fpc_status,b1.ban_apelido from fat_pc01 f1 '+
                                                'left join ban0000 b1 on b1.ban_codigo = f1.ban_codigo where f1.cli_codigo = '''+DBeCli_codigo.Field.text+'''order by f1.cli_codigo';
      FormPedFatura.SqlCdsDupFat.Open;
      if not FormPedFatura.SqlCdsDupFat.IsEmpty then
         begin
             if uteis.confirmacao ( 'Este Cliente tem Faturas em aberto. Consultar ?')= Mryes then
                begin
                    try
                      try
                        FormPedFatura := TFormPedFatura.Create(Application);
                        FormPedFatura.ShowModal;
                      finally
                        FormPedFatura.Destroy;
                        FormPedFatura := nil //  nil é - From Assigned = False
                      end;
                    except on E:EdataBaseError do
                       uteis.erro  (pchar('Ocorreu um erro na criação do formulário faturas!'+e.message));
                    end;
                end;
         end;
    except on E:EdataBaseError do
        uteis.erro  (pchar('Erro ao Abriar as Tabelas !'+e.message));
    end;
end;

procedure TFormPedidos.DbeTRP_CODIGOExit(Sender: tObject);
begin
   screen.Cursor := crHourGlass;
   if (ActiveControl <> Nil)
   and(ActiveControl.Name <> 'Bit_Cancelar')
   and(ActiveControl.Name <> 'Bit_Sair') then
      begin
         if (Trim(DbeTRP_CODIGO.Field.Text)<> '') then
            begin
               CbTransp1.TextoLocalizar := StrZero(DbeTRP_CODIGO.Text,3);
               CbTransp1.Localizar      := True;
               if (CbTransp1.Localizado = False) then
                  begin
                     //beep;
                     uteis.aviso('Transportadora não encontrada com o código informado !');
                     DbeTRP_CODIGO.SetFocus;
                     DbeTRP_CODIGO.SelectAll;
                  end
               else
                  begin
                     if (Datamovimento.CdsPedidos.State in [dsInsert,dsEdit]) then
                        begin
                           if (DbeTRP_codigo.Field.AsString <> '')
                           and(not Verifica_Transp_Ativa(StrZero(DbeTRP_CODIGO.Text,3))) then
                              begin
                                 uteis.aviso('Transportadora Inativa !');
                                 CbTransp1.Text            := '';
                                 DbeTRP_codigo.Field.Text  := '';
                                 CbFreteT.ItemIndex        := 0;
                                 DbeTRP_codigo.SetFocus;
                              end
                           else
                              begin
                                 DbeTRP_CODIGO.Field.Text := StrZero(DbeTRP_CODIGO.Text,3);
                                 //
                                 if (CbFreteT.ItemIndex = 0) then
                                    CbFreteT.ItemIndex := 2;
                              end;
                        end;
                  end;
             end
           else   // em branco
             begin
               CbTransp1.Text            := '';
               CbFreteT.ItemIndex        := 0;
             end;
      end;
    screen.cursor:=crDefault;
end;

procedure TFormPedidos.DbeTrp_RedespExit(Sender: tObject);
begin
   screen.Cursor := crHourGlass;
   if (ActiveControl <> Nil)
   and(ActiveControl.Name <> 'Bit_Cancelar')
   and(ActiveControl.Name <> 'Bit_Sair') then
      begin
         if (Trim(DbeTrp_Redesp.Text)<> '') then
            begin
               CbRedesp1.TextoLocalizar := StrZero(DbeTrp_Redesp.Text,3);
               CbRedesp1.Localizar      := True;
               if (CbRedesp1.Localizado = False) then
                  begin
                     //beep;
                     uteis.aviso('Transportadora Redespacho não encontrada com o código informado !');
                     DbeTrp_Redesp.SetFocus;
                     DbeTrp_Redesp.SelectAll;
                  end
               else
                  begin
                     if (Datamovimento.CdsPedidos.State in [dsInsert,dsEdit]) then
                        begin
                           if (DbeTrp_Redesp.Field.AsString <> '')
                           and(not Verifica_Transp_Ativa(StrZero(DbeTrp_Redesp.Text,3))) then
                              begin
                                 uteis.aviso('Transportadora Redespacho Inativa !');
                                 CbRedesp1.Text            := '';
                                 DbeTrp_Redesp.Field.Text  := '';
                                 CbFreteR.ItemIndex        := 0;
                                 DbeTrp_Redesp.SetFocus;
                              end
                           else
                              begin
                                 DbeTrp_Redesp.Field.Text := StrZero(DbeTrp_Redesp.Text,3);
                                 if (CbFreteR.ItemIndex = 0) then
                                    CbFreteR.ItemIndex := 2;
                              end;
                        end;
                  end;
            end;
      end;
    screen.cursor:=crDefault;
end;

procedure TFormPedidos.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
    try
      CdsTipo.Close;
      DataMovimento.CdsPedidos.Close;
      DataMovimento.CdsPedItem.Close;
      SqlCdsPcl.Close;
      //
      CbClientes1.CarregarCombo       := False;
      CbRepresentantes1.CarregarCombo := False;
      CbTransp1.CarregarCombo         := False;
      CbRedesp1.CarregarCombo         := False;
      CbAlmox1.CarregarCombo          := False;
      CbTipo1.CarregarCombo           := False;
      CbxPcl1.CarregarCombo           := False;
      //
    except on e:EDataBaseError do
      uteis.erro  (pchar('Erro ao fechar as tabelas !'+e.message));
    end;
    screen.cursor := CrDefault;
end;

procedure TFormPedidos.EdtPed_codigoClick(Sender: tObject);
begin
    wTecla := '';
    EdtPed_codigo.Color := $0080FFFF;
    EdtPed_codigo.SelectAll;
    
end;

procedure TFormPedidos.Bit_RelatorioClick(Sender: tObject);
begin
    try
      try
        FormGImpPedido := TFormGImpPedido.Create(Application);
        FormGImpPedido.ShowModal;
      finally
        FormGImpPedido.Destroy;
        FormGImpPedido := nil; //  nil é - From Assigned = False
      end;
    except
        //beep;
        uteis.erro  ('Ocorreu um Erro na Criação do Formulário!');
    end;
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
end;

procedure TFormPedidos.CalculaPed;
Var
 wDscIndice,
 wDscBase,
 wVlr1,
 wVlr2,
 wVlr3,
 wCalculo,
 wTotal_Bruto,
 wTotal_venda,
 wVLIPI,
 wQuant,
 wVLFaturado,
 wDesconto,
 wDesctoUnit,
 wTotalPeso: Double;
 wQtdeItens : Integer;
 wteste1 :string;
begin
    Screen.Cursor := crHourGlass;
    If DataMovimento.CdsPedItem.Active = true then
       begin
           //Faz calculo dos totais
           {Limpar variaveis e totais}
           wTeste             := 0;
           wTotal_bruto       := 0;
           wTotal_venda       := 0;
           wVLIPI             := 0;
           wQuant             := 0;
           wVLFaturado        := 0;
           wDesconto          := 0;
           wDesctoUnit        := 0;
           CurrTotal.Value    := 0;
           CurrSubTotal.Value := 0;
           CurrTotIpi.Value   := 0;
           CurrTotalQtde.Value:= 0;
           wItensPedido       := 0;
           wQtdeItens         := 0;
           wTotalPeso         := 0;

           wDscIndice         := 0;

           DataMovimento.CdsPedItem.DisableControls;

           { CALCULAR O DESCONTO TOTAL DO PEDIDO}
           if (ChkDescto.checked ) then
              begin
                 {leitura dos ITENS, calcular índice desconto}
                 DataMovimento.CdsPedItem.First;          //first deixa dsBrowse
                 While not DataMovimento.CdsPedItem.EOF do
                     begin

                        {ITENS}

                        wTotal_Bruto := wTotal_Bruto + DataMovimento.CdsPedItemPRF_TOTAL_BRUTO_CC.AsCurrency;
                        DataMovimento.CdsPedItem.Next;
                     end;

                 if (wTotal_Bruto>0) then
                    begin
                       if RadDescPorc.checked  then
                          begin
                             CurrDesctoVl.Value  := wTotal_Bruto*CurrDesctoIndice.value/100;
                             wDscIndice          := CurrDesctoIndice.value/100;
                             CurrDesconto.Value  := CurrDesctoVl.Value;
                          end
                       else
                          begin
                             wDscIndice          := (CurrDesctoVl.Value / wTotal_Bruto);
                             CurrDesconto.Value  := CurrDesctoVl.Value;
                          end;
                    end;
                    wTotal_bruto := 0;
              end;

           {re-leitura ITENS}
           DataMovimento.CdsPedItem.First;          //first deixa dsBrowse
           While not DataMovimento.CdsPedItem.EOF do
             Begin

                 {ITENS}

                 wQtdeItens   := wQtdeItens + 1;

                 wQuant       := wQuant   + DataMovimento.CdsPedItemPRF_QTDE.AsCurrency;

                 wTotalPeso   := wTotalPeso + (DataMovimento.CdsPedItemPRD_PESOKG.AsFloat * wQuant);

                 {preco bruto = preco do item no estoque}
                 wTotal_Bruto := wTotal_Bruto + DataMovimento.CdsPedItemPRF_TOTAL_BRUTO_CC.AsCurrency;

                 { jko preco venda = preco bruto - desconto
                 wTotal_venda := wTotal_venda + DataMovimento.CdsPedItemPRF_TOTAL_CC.AsCurrency;
                 wVLIPI       := wVLIPI + ((DataMovimento.CdsPedItemPRF_TOTAL_CC.AsCurrency * DataMovimento.CdsPedItemPRF_IPIALIQ.AsCurrency) / 100);
                 }
                 //

                 {preco venda}
                 wTotal_venda := wTotal_venda + DataMovimento.CdsPedItemPRF_TOTAL_CC.AsCurrency;

                 {desconto aplicado em cada item do pedido}
                 wDscBase := (DataMovimento.CdsPedItemPRF_TOTAL_CC.AsCurrency * wDscIndice);

                 {ipi}
                 wVLIPI   := wVLIPI + (((DataMovimento.CdsPedItemPRF_TOTAL_CC.AsCurrency - wDscBase)*DataMovimento.CdsPedItemPRF_IPIALIQ.AsCurrency) / 100);


                 { Verificar itens já faturados }
                 if DataMovimento.CdsPedItemPRF_SITUACAO.AsString = 'F' then  //Faturado
                    begin
                       wDesctoUnit := 0;
                       wVLFaturado := wVLFaturado + DataMovimento.CdsPedItemPRF_TOTAL_CC.AsCurrency;
                    end;

                 DataMovimento.CdsPedItem.Next;

             end;


           wItensPedido        := wQtdeItens;
           CurrTotalQtde.Value := wQuant;
           CurrSubTotal.Value  := wTotal_Venda;

           CurrTotIpi.Value := wVLIPI;

           //
           wTeste           := ((DataMovimento.CdsPedidosPED_VLFRETE.AsCurrency+DataMovimento.CdsPedidosPED_DESP_ACES.AsCurrency){+ DataMovimento.CdsPedidosPED_DESP_IMPOR.AsCurrency)}+
                                 DataMovimento.CdsPedidosPED_VLSEGURO.AsCurrency);
           //
           CurrTotal.Value  := (((wTotal_venda + wVLIPI) + wTeste ) - CurrDesctoVl.Value);
           //
           CurrTotalPeso.Value := wTotalPeso;
           DataMovimento.CdsPedItem.EnableControls;
       end;
    Screen.Cursor := crDefault;
end;

Function TFormPedidos.VerificaRestricao(Inativ:string):String;
var
winativo:string;
begin
    winativo:=Inativ;
    if DataMovimento2.CdsConsultaClieCLI_INATIVO.AsString = 'I' then
       begin
           uteis.aviso(Pchar(DataMovimento2.CdsConsultaClieCLI_RAZAO.AsString+#13+#13+'Cliente com Restrição desde : '+DateTimeToStr(DataMovimento2.CdsConsultaClieCLI_DTINATIVO.AsDateTime)+#13+'Motivo: '+DataMovimento2.CdsConsultaClieCLI_MOTIVO.AsString));
           if (DataMovimento.CdsPedidos.State = DsInsert) then
              begin
                  if (FrmMenu.wNumer_Pedido = 'A') then   //Numeraçao automatica
                     SequenciadorPRC(DataCadastros.SQLConnection1, dbInicio.Empresa.EMP_CODIGO ,'PED0000', 'PED_CODIGO', 1, EdtPed_codigo.Text);
              end;
           DataMovimento.CdsPedidos.Cancel;
           LimparDados;
           habilitabotoes;
           EdtPed_codigo.Clear;
           EdtPed_codigo.SetFocus;
           EdtPed_codigo.SelectAll;
           winativo:='S';
       end;
    Result:=(winativo);
end;

procedure TFormPedidos.DtEntradaExit(Sender: tObject);
begin
    if not TestaDataStr(DtEntrada.Text) then
       DtEntrada.setfocus;
end;

procedure TFormPedidos.SpeedFaturarClick(Sender: tObject);
begin
    VerificaEdicao;
    // p/ nao deixar faturar sem estar preenchido parcela
    if DataMovimento.CdsPedidosPCL_CODIGO.AsString = '' then
       begin
           uteis.erro  ('É necessário preencher condições de pagamento');
           exit
       end;
    //
    Try
      Try
        FormFaturar := TFormFaturar.Create (Application);
        FormFaturar.ShowModal;
      finally
        FormFaturar.Destroy;
        FormFaturar:= nil;
      end;
    except
      //beep;
      uteis.erro  ('Ocorreu um erro na criação do Relatório!');
    end;
end;

procedure TFormPedidos.DbGrPedItemDblClick(Sender: tObject);
begin
    try
      try
        FormPedItens := TFormPedItens.Create(Application);
        FormPedItens.ShowModal;
      finally
        FormPedItens.Destroy;
        FormPedItens := nil //  nil é - From Assigned = False
      end;
    except
        //beep;
        uteis.erro  ('Ocorreu um erro na criação do formulário!');
    end;
end;

procedure TFormPedidos.DtEntregaExit(Sender: tObject);
begin
    if not TestaDataStr(DtEntrega.Text) then
       DtEntrega.setfocus
    else
       begin
           If Dtentrada.Date > dtEntrega.Date then
              begin
                  uteis.aviso('Data de Entrega deve ser maior que a data de entrada !');
                  DtEntrega.SetFocus;
              end;
       end;
end;

procedure TFormPedidos.PreencheCombo;
begin
    try
      {Clientes}
      CbClientes1.CodigoEmpresa     := StrToInt(dbInicio.Empresa.EMP_CODIGO);
      CbClientes1.CarregarCombo     := True;
      {Representante}
      CbRepresentantes1.CodigoEmpresa := StrToInt(dbInicio.Empresa.EMP_CODIGO);
      CbRepresentantes1.CarregarCombo := True;
      {Transportadora}
      CbTransp1.CodigoEmpresa := StrToInt(dbInicio.Empresa.EMP_CODIGO);
      CbTransp1.CarregarCombo := True;
      {Transportadora Redespacho}
      CbRedesp1.CodigoEmpresa := StrToInt(dbInicio.Empresa.EMP_CODIGO);
      CbRedesp1.CarregarCombo := True;
      {Almoxarifado}
      //if dbInicio.Empresa.wMultiAlmox = 'S' then
      //   begin
            CBALMOX1.CodigoEmpresa := StrToInt(dbInicio.Empresa.EMP_CODIGO);
            CBALMOX1.CarregarCombo := True;
      //   end;
      //Carrega o almoxarifado dos parametros
      DBeAlmox.Text                  := FrmMenu.wPmt_Amx_Venda;
      DBeAlmox.Text                  := StrZero(DBeAlmox.Text,DBeAlmox.MaxLength);
      CbAlmox1.TextoLocalizar := StrZero(DBeAlmox.Text,DBeAlmox.MaxLength);
      CbAlmox1.Localizar      := True;
      {Tipo}
      CbTipo1.CodigoEmpresa := StrToInt(dbInicio.Empresa.EMP_CODIGO);
      CbTipo1.CarregarCombo := True;
      {Parcelas}
      CbxPcl1.CodigoEmpresa := StrToInt(dbInicio.Empresa.EMP_CODIGO);
      CbxPcl1.CarregarCombo := True;
      //
      {Produtos Carrega a Combo da Referencia do produto}
      DataCadastros.sqlUpdate.close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS','SELECT P1.PRD_REFER FROM PRD0000 P1','','P1.PRD_REFER','P1.');
      DataCadastros.sqlUpdate.Open;
      DataCadastros.sqlUpdate.DisableControls;
      DataCadastros.sqlUpdate.First;
      CbRef.Clear;
      while not DataCadastros.sqlUpdate.eof do
       begin
           CbRef.Items.Add(DataCadastros.sqlUpdate.FieldByName('PRD_REFER').AsString);
           DataCadastros.sqlUpdate.Next;
       end;
      DataCadastros.sqlUpdate.EnableControls;
      CbRef.Text := '';
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao Carregar a combos !'+E.MESSAGE));
    end;
end;

procedure TFormPedidos.DeleteItens;
begin
    {Delete os itens do pedido}
    try
      DataMovimento.CdsPedItem.DisableControls;
      DataMovimento.CdsPedItem.First;
      while not DataMovimento.CdsPedItem.Eof do
       begin
           Verifica_baixa_Estoque(DataMovimento.CdsPedItemPRD_REFER.AsString);
           if ((SqlAtEstoquePTI_ATUALIZAR_ESTOQUE.AsString = 'S') and
               (wTipoAtEstoque = 'S'))  then
              begin
                  if ((SqlAtEstoquePGR_ATUALIZA_ESTOQUE.AsString = 'S')or(SqlAtEstoquePGR_ATUALIZA_ESTOQUE.AsString = '')) then
                     begin
                       if (FrmMenu.wAtualiza_Estoque = 'P') then
                       begin
                         (*Lança no Kardex*)
                         if (DataMovimento.CdsPedItemPRF_QTDE.AsFloat <> 0) then
                            begin
                               KardexLancamento(DataMovimento.CdsPedItemPRF_REGISTRO.AsString,
                                               'PED',
                                               DataMovimento.CdsPedItemAMX_CODIGO_DESTINO.AsString,
                                               '',
                                               DataMovimento.CdsPedItemPRD_CODIGO.AsString,
                                               '',//grade
                                               '',
                                               'E',
                                               '',
                                               '',//novo esquema de lote
                                               'EXCLUSÃO OU CANCELAMENTO DO PEDIDO',
                                               Now,
                                               DataMovimento.CdsPedItemPRF_QTDE.AsFloat,
                                               EdtPed_codigo.Text,
                                               DBeCli_codigo.Text+'-'+EdtClienteRazao.Text,
                                               DataMovimento.CdsPedItemPRF_PRECO.AsFloat);
                            end;
                         if (DataMovimento.CdsPedItemPRF_FLAG_ATUALIZA_ESTOQUE.AsString = 'S') then
                            begin
                                Lanca_Movimento_reserva_Almox('E',
                                                              DBeAlmox.Text,
                                                              DataMovimento.CdsPedItemPRD_REFER.AsString,
                                                              DataMovimento.CdsPedItemPRF_QTDE.AsString);
                                //
                                Diminui_Reserva_empenhada(dbInicio.Empresa.EMP_CODIGO,DataMovimento.CdsPedItemPRD_REFER.AsString,DataMovimento.CdsPedItemPRF_QTDE.asstring);
                                if (FrmMenu.wVariacoes = 'S') then
                                   begin
                                       Atualiza_Estoque_Variacao('C',
                                                                 DataMovimento.CdsPedItemPRD_REFER.Text,
                                                                 DataMovimento.CdsPedItemPRF_VAR1.AsString,
                                                                 DataMovimento.CdsPedItemPRF_VAR2.AsString,
                                                                 DataMovimento.CdsPedItemPRF_VAR3.AsString,
                                                                 DataMovimento.CdsPedItemPRF_VAR4.AsString,
                                                                 DataMovimento.CdsPedItemPRF_VAR5.AsString,
                                                                 DataMovimento.CdsPedItemPRF_VAR6.AsString,
                                                                 DataMovimento.CdsPedItemPRF_VAR7.AsString,
                                                                 DataMovimento.CdsPedItemPRF_VAR8.AsString);
                                       Atualiza_Reserva_Variacao_Estoque('D',
                                                                         DataMovimento.CdsPedItemPRD_REFER.Text,
                                                                         DataMovimento.CdsPedItemPRF_VAR1.AsString,
                                                                         DataMovimento.CdsPedItemPRF_VAR2.AsString,
                                                                         DataMovimento.CdsPedItemPRF_VAR3.AsString,
                                                                         DataMovimento.CdsPedItemPRF_VAR4.AsString,
                                                                         DataMovimento.CdsPedItemPRF_VAR5.AsString,
                                                                         DataMovimento.CdsPedItemPRF_VAR6.AsString,
                                                                         DataMovimento.CdsPedItemPRF_VAR7.AsString,
                                                                         DataMovimento.CdsPedItemPRF_VAR8.AsString);
                                   end;
                            end;
                       end;
                     end
                  else
                     begin
                         if ((SqlAtEstoquePGR_CODIGO.IsNull)) then
                            begin
                                if (DataMovimento.CdsPedItemPRF_FLAG_ATUALIZA_ESTOQUE.AsString = 'S') then
                                   begin
                                       Lanca_Movimento_reserva_Almox('E',
                                                                     DBeAlmox.Text,
                                                                     DataMovimento.CdsPedItemPRD_REFER.AsString,
                                                                     DataMovimento.CdsPedItemPRF_QTDE.AsString);
                                       //
                                       Diminui_Reserva_empenhada(dbInicio.Empresa.EMP_CODIGO,DataMovimento.CdsPedItemPRD_REFER.AsString,DataMovimento.CdsPedItemPRF_QTDE.asstring);
                                       if (FrmMenu.wVariacoes = 'S') then
                                          begin
                                              Atualiza_Estoque_Variacao('C',
                                                                        DataMovimento.CdsPedItemPRD_REFER.Text,
                                                                        DataMovimento.CdsPedItemPRF_VAR1.AsString,
                                                                        DataMovimento.CdsPedItemPRF_VAR2.AsString,
                                                                        DataMovimento.CdsPedItemPRF_VAR3.AsString,
                                                                        DataMovimento.CdsPedItemPRF_VAR4.AsString,
                                                                        DataMovimento.CdsPedItemPRF_VAR5.AsString,
                                                                        DataMovimento.CdsPedItemPRF_VAR6.AsString,
                                                                        DataMovimento.CdsPedItemPRF_VAR7.AsString,
                                                                        DataMovimento.CdsPedItemPRF_VAR8.AsString);
                                       Atualiza_Reserva_Variacao_Estoque('D',
                                                                         DataMovimento.CdsPedItemPRD_REFER.Text,
                                                                         DataMovimento.CdsPedItemPRF_VAR1.AsString,
                                                                         DataMovimento.CdsPedItemPRF_VAR2.AsString,
                                                                         DataMovimento.CdsPedItemPRF_VAR3.AsString,
                                                                         DataMovimento.CdsPedItemPRF_VAR4.AsString,
                                                                         DataMovimento.CdsPedItemPRF_VAR5.AsString,
                                                                         DataMovimento.CdsPedItemPRF_VAR6.AsString,
                                                                         DataMovimento.CdsPedItemPRF_VAR7.AsString,
                                                                         DataMovimento.CdsPedItemPRF_VAR8.AsString);
                                          end;
                                   end;
                            end;
                     end;
              end;
           DataMovimento.CdsPedItem.Next;
       end;
      DataMovimento.CdsPedItem.EnableControls;
      //
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('PEDIDOS','DELETE FROM PED_IT01 ','WHERE PED_CODIGO = '''+EdtPed_codigo.Text+'''','','');
      DataCadastros.sqlUpdate.Execsql;
      DataMovimento.CdsPedItem.Close;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao excluir itens !'+e.Message));
    end;
end;

procedure TFormPedidos.BuscaItens;
begin
    try
      wSql1      := 'Select P1.*,P2.PTI_CODIGO,P3.PTI_SIGLA,P2.PRD_CODIGO,P2.PRD_PESOKG,P2.PRD_PESOLIQ,P2.PRD_DCVAR1,P2.PRD_DCVAR2,P2.PRD_DCVAR3,P2.PRD_DCVAR4,P2.PRD_DCVAR5,P2.PRD_DCVAR6,P2.PRD_DCVAR7,P2.PRD_DCVAR8';
      wSql2      := ' from PED_IT01 P1 LEFT JOIN PRD0000 P2 on (P1.PRD_REFER = P2.PRD_REFER) LEFT JOIN PRD_TIPO P3 ON (P2.PTI_CODIGO = P3.PTI_CODIGO) ';
      wSeleciona := 'where PED_CODIGO = '''+EdtPed_codigo.Text+'''';
      wOrdem     := 'P1.PRF_REGISTRO';
      //
      DataMovimento.CdsPedItem.Close;
      DataMovimento.CdsPedItem.CommandText := SQLDEF('PEDIDOS',wSql1+wSql2,wSeleciona,wOrdem,'P1.');
      DataMovimento.CdsPedItem.Open;
      DataMovimento.CdsPedItem.First;
      wIncluiu_Itens := True;

      CalculaPed;

      DataMovimento.CdsPedItem.First;
      if wTups = 'S' then
         CalculaTup;
    except on E:EDatabaseError do
        uteis.erro  (Pchar('Impossível acessar itens do pedido !'+e.Message));
    end;
end;

procedure TFormPedidos.MostraDados;
var
wCALCULO : Currency;
begin
   EdtPed_codigo.Text       := DataMovimento.CdsPedidosPED_CODIGO.AsString;
   DtEntrada.Date           := DataMovimento.CdsPedidosPED_DTENTRADA.AsDateTime;
   DtEntrega.Date           := DataMovimento.CdsPedidosPED_DTSAIDA.AsDateTime;
   CurrSubTotal.Value       := DataMovimento.CdsPedidosPED_VLTOTAL_LIQ.AsCurrency;
   CurrTotIpi.Value         := DataMovimento.CdsPedidosPED_VLTOTAL_IPI.AsCurrency;
   CurrTotal.Value          := DataMovimento.CdsPedidosPED_VLTOTAL_BRUTO.AsCurrency;
   if DataMovimento.CdsPedidosPED_DESCTONF.AsString = 'S' then
      begin
         {Aplica o desconto na Nota/Item}
         {Tipo de desconto (Percentual/Valor)}
         RadDescPorc.Checked      := iif(DataMovimento.CdsPedidosPED_TPDESCTO.AsString = 'P','TRUE','FALSE');
         RadDescValor.Checked     := iif(DataMovimento.CdsPedidosPED_TPDESCTO.AsString = 'V','TRUE','FALSE');
         if (RadDescPorc.Checked) then
            begin
               PanDescP.Visible := True;
               PanDescV.Visible := False;
            end
         else
            begin
               PanDescP.Visible := False;
               PanDescV.Visible := True;
            end;
         {Valor do Porcentual1}
         CurrDesctoPc1.Value      := DataMovimento.CdsPedidosPED_DESCTOPC1.AsCurrency;
         {Valor do Porcentual2}
         CurrDesctoPc2.Value      := DataMovimento.CdsPedidosPED_DESCTOPC2.AsCurrency;
         {Valor do desconto}
         CurrDesctoVl.Value       := DataMovimento.CdsPedidosPED_DESCTOVL.AsCurrency;
         CurrDesconto.Value       := DataMovimento.CdsPedidosPED_DESCTOVL.AsCurrency;

         CalculaIndiceDescto;

      end;
   {Clientes}
   CbClientes1.TextoLocalizar      := StrZero(DBeCli_codigo.Text,5);
   CbClientes1.Localizar           := True;
   if (CbClientes1.Localizado) then
      MascaraCNPJ;
   {Representante}
   Cbrepresentantes1.TextoLocalizar      := StrZero(DBeRep_codigo.Text,3);
   Cbrepresentantes1.Localizar           := True;
   {Transportadora}
   cbtransp1.TextoLocalizar      := StrZero(DbeTRP_CODIGO.Text,3);
   cbtransp1.Localizar           := True;
   {Transportadora Redespacho}
   CbRedesp1.TextoLocalizar      := StrZero(DbeTrp_Redesp.Text,3);
   CbRedesp1.Localizar           := True;
   {Tipo}
   CbTipo1.TextoLocalizar        := DBEOpv_codigo.Text;
   CbTipo1.Localizar             := True;
   if (CbTipo1.Localizado) then
      begin
         Busca_Tipo(DBEOpv_codigo.Text);

         wTipoAtEstoque          := CdsTipoOPV_ATESTOQUE.AsString;
         if (wTipoAtEstoque_Anterior = '') then
            wTipoAtEstoque_Anterior := wTipoAtEstoque;
         //wTipoAtEstoque_Anterior := iif(wTipoAtEstoque_Anterior = '',wTipoAtEstoque,iif(wTipoAtEstoque = 'S','N','S'));
         wNomeTipoAnterior       := CbTipo1.Text;

         MensagemTipo;
      end
   else
      begin
         CbTipo1.Text := '';
      end;
   {Almoxarifado}
   //if (dbInicio.Empresa.wMultiAlmox = 'S') then
   //   begin
         CbAlmox1.TextoLocalizar := StrZero(DBeAlmox.Text,DBeAlmox.MaxLength);
         CbAlmox1.Localizar      := True;
   //   end;
   //
   CbFreteT.ItemIndex := iif(DataMovimento.CdsPedidosPED_FRETE.AsString  = '',0,iif(DataMovimento.CdsPedidosPED_FRETE.AsString  = 'C',1,2));
   CbFreteR.ItemIndex := iif(DataMovimento.CdsPedidosPED_FRETE2.AsString = '',0,iif(DataMovimento.CdsPedidosPED_FRETE2.AsString = 'C',1,2));
   {Atribui os desconto}
   wCodTipo := DataMovimento.CdsPedidosOPV_CODIGO.AsString;
   //
   {Condiçao de Pagamento}
   CbxPcl1.TextoLocalizar        := StrZero(DBePcl_codigo.Text,3);
   CbxPcl1.Localizar             := True;
end;

procedure TFormPedidos.RadDescPorcClick(Sender: tObject);
begin
   RadDescPorc.Enabled := true;
   PanDescP.Visible    := true;
   PanDescV.Visible    := false;
end;

procedure TFormPedidos.RadDescValorClick(Sender: tObject);
begin
   PanDescP.Visible     := False;
   PanDescV.Visible     := true;
   RadDescValor.Enabled := true;
end;

procedure TFormPedidos.BuscaProduto;
var
wPosicao:Integer;
begin
    //checar se é produto c/ final [9999]
    if (Copy(CbRef.Text,1,4) = '9999') AND (wPedItemDesc = 'S') then
       begin
           // liberar digitação da descricao
           EdDescricao.ReadOnly := False;
           EdDescricao.Color    := clWindow;
           EdDescricao.TabStop  := True;
       end
    else
    if (Copy(CbRef.Text,1,4) <> '9999') AND (wPedItemDesc = 'N') then
       begin
           EdDescricao.ReadOnly := True;
           EdDescricao.Color    := $00D7D7D7;
           EdDescricao.TabStop  := False;
       end;
    if (CbRef.Text <> '9999') then
       begin
          BuscaSaldo(CbRef.Text);
          EdDescricao.Text   := CdsConsultaEstoquePRD_DESCRI.AsString;
          EdComplemento.Text := CdsConsultaEstoquePRD_COMPL.AsString;
          wProdCodigo        := CdsConsultaEstoquePRD_CODIGO.AsString;
         // na inclusao pega o desconto que esta no cadastro do cliente
         CurrDesc1.Value     := DataMovimento2.CdsConsultaClieCLI_DESC1.AsFloat;
         CurrDesc2.Value     := DataMovimento2.CdsConsultaClieCLI_DESC2.AsFloat;
       end;
end;

procedure TFormPedidos.CbRefExit(Sender: tObject);
begin
    if (ActiveControl <> nil)
    and(ActiveControl.Name<> 'Bit_Gravar')
    and(ActiveControl.Name<> 'Bit_Cancelar')
    and(ActiveControl.Name<> 'Bit_Sair')
    and(ActiveControl.Name<> 'DBGridItensPed')
    and(ActiveControl.Name<> 'SpPesquisa') then
        Processo_Verificar;

end;

procedure TFormPedidos.GravaItem;
var
   bAltera:Boolean;
begin
   bAltera := False;
    try
    if DataMovimento.CdsPedidos.State = dsbrowse then
         DataMovimento.CdsPedidos.Edit;
      {essa transacao é somente para a gravação do item /reserva de estque }
      wTransacaoItem.TransactionID  := RetornaTransacao;
      wTransacaoItem.IsolationLevel := xilREADCOMMITTED;
      DataCadastros.SQLConnection1.StartTransaction(wTransacaoItem);
      //
      if DataMovimento.CdsPedItem.Active = false then
         BuscaItens;
      //
      if (CbRef.Text <> '9999') then
         begin
             if DataMovimento.CdsPedItem.Locate('PRD_REFER',CbRef.Text,[]) = false then
                begin
                    DataMovimento.CdsPedItem.Insert;
                    if ((CdsConsultaEstoquePTI_SIGLA.AsString = 'PA') or
                        (CdsConsultaEstoquePTI_SIGLA.AsString = 'PI')) then
                       DataMovimento.CdsPedItemPRF_OP.AsString := 'N';
                end
             else
                begin
                    bAltera := True;
                    DataMovimento.CdsPedItem.Edit;
                end;
         end
      else
         begin
             DataMovimento.CdsPedItem.Insert;
             DataMovimento.CdsPedItemPRF_REGISTRO.AsInteger     := RetornaGenerator('GEN_ITEM_PEDIDO',true);
             if ((CdsConsultaEstoquePTI_SIGLA.AsString = 'PA') or
                 (CdsConsultaEstoquePTI_SIGLA.AsString = 'PI')) then
                DataMovimento.CdsPedItemPRF_OP.AsString := 'S';
         end;
      DataMovimento.CdsPedItemEMP_CODIGO.Value           := dbInicio.Empresa.EMP_CODIGO;
      DataMovimento.CdsPedItemPED_CODIGO.AsString        := EdtPed_codigo.Text;
      DataMovimento.CdsPedItemPRF_SITUACAO.Value         := 'F'; //F = À FATURAR /P= FATURADO PARCIAL /T = FATURADO TOTAL
      {Coloca no item do pedido o flag para atualizar o estoque}
//      DataMovimento.CdsPedItemPRF_FLAG_ATUALIZA_ESTOQUE.AsString := wTipoAtEstoque;
      //traz da tabela de produto a descricao,codigo e preco
      DataMovimento.CdsPedItemPRF_PRDDESCRI.Value        := EdDescricao.Text;
      DataMovimento.CdsPedItemPRF_COMPL_DESCRI.Value     := EdComplemento.Text;
      DataMovimento.CdsPedItemPRD_REFER.Value            := CbRef.Text;
      DataMovimento.CdsPedItemPRD_CODIGO.Value           := wProdCodigo;
      DataMovimento.CdsPedItemUSU_CODIGO.AsString        := dbInicio.Usuario.Codigo;
      (*Definir regra do almoxarifado de destino*)
      DataMovimento.CdsPedItemAMX_CODIGO_DESTINO.AsString := DBeAlmox.Text;
     { marcio 02/03/12 - nao vamos usar desta forma mais} //DataMovimento.CdsPedItemAMX_CODIGO_ORIGEM.AsString := CdsTipoAMX_ORIGEM.AsString;


      //!!!!!



      DataMovimento.CdsPedItemPRF_PRECO.AsString         := CurrPreco.Text;
      DataMovimento.CdsPedItemPRF_PRECO_BRUTO.AsString   := CurrPrecoBruto.Text;
      DataMovimento.CdsPedItemPRF_QTDE.AsCurrency        := CurrQtde.Value;
      DataMovimento.CdsPedItemPRF_IDESCTO1.AsCurrency    := CurrDesc1.Value;
      DataMovimento.CdsPedItemPRF_IDESCTO2.AsCurrency    := CurrDesc2.Value;
      DataMovimento.CdsPedItemPRF_PRODUTO_AGREGADO.AsString := iif(Chk_Agregado.checked ,'S','N');
      {Na insercao do item, a origem do Item sempre será Letra O (ó)(pedido Original)}
      if (DataMovimento.CdsPedidos.State in [dsInsert]) then
         DataMovimento.CdsPedItemPRF_ORIGEM_ITEM.AsString := 'O';
      {Quando um pedido for Alterado, verifica se o pedido é Duplicado, se nao for o Pedido
       duplicado, a origem do Item será a letra O (ó)}

      if (DataMovimento.CdsPedidos.State in [dsEdit]) then
         begin
            if (DataMovimento.CdsPedidosPED_FLAG_PED_DUPL.AsString = 'N') then
               DataMovimento.CdsPedItemPRF_ORIGEM_ITEM.AsString := 'O' {Novo ITEM NO PEDIDO ORIGINAL}
            else
              begin
                 if DataMovimento.CdsPedItem.State in [dsEdit] then
                  DataMovimento.CdsPedItemPRF_ORIGEM_ITEM.AsString := 'A'; {ALTERA ITEM NO PEDIDO DUPLICADO}
                 if DataMovimento.CdsPedItem.State in [dsInsert] then
                  DataMovimento.CdsPedItemPRF_ORIGEM_ITEM.AsString := 'N'; {NOVO ITEM NO PEDIDO DUPLICADO}
              end;
         end;
//      RetornaPercentualComissao
      {Só atualiza comissao se for inserção se for update mantem a comissao
       pois a mesma pode ter sido alterada }
      if DataMovimento.CdsPedItem.State = DsInsert then
         DataMovimento.CdsPedItemPRF_ITEMCOMIS.AsCurrency := RetornaPercentualComissao(CbRef.Text);
      //
      DataMovimento.CdsPedItemPRF_IPIALIQ.AsCurrency     := currIPI.Value;
      //
      if (FrmMenu.wVariacoes = 'S') then
         begin
             DataMovimento.CdsPedItemPRF_VAR1.AsCurrency := CurrVar1.Value;
             DataMovimento.CdsPedItemPRF_VAR2.AsCurrency := CurrVar2.Value;
             DataMovimento.CdsPedItemPRF_VAR3.AsCurrency := CurrVar3.Value;
             DataMovimento.CdsPedItemPRF_VAR4.AsCurrency := CurrVar4.Value;
             DataMovimento.CdsPedItemPRF_VAR5.AsCurrency := CurrVar5.Value;
             DataMovimento.CdsPedItemPRF_VAR6.AsCurrency := CurrVar6.Value;
             DataMovimento.CdsPedItemPRF_VAR7.AsCurrency := CurrVar7.Value;
             DataMovimento.CdsPedItemPRF_VAR8.AsCurrency := CurrVar8.Value;
         end;
      {reserva o material se o tipo do pedido estiver com o flag de atualizar estoque}
      if ((CdsConsultaEstoquePTI_ATUALIZAR_ESTOQUE.AsString = 'S')
      and(wTipoAtEstoque = 'S')) then
         begin
             if (CdsConsultaEstoquePGR_ATUALIZA_ESTOQUE.AsString = 'S') then
                begin
                    DataMovimento.CdsPedItemPRF_FLAG_ATUALIZA_ESTOQUE.AsString := 'S';
                    if (FrmMenu.wAtualiza_Estoque = 'P') then
                       begin
                           {Reserva a quantidade no estoque}
                            Reserva_Materia(CbRef.Text,ValorAmericano(FloatToStr(w_Dif_Qtde)));
                           (*Lança no Kardex*)
                           if (w_Dif_Qtde <> 0) then
                              begin
                                 KardexLancamento(DataMovimento.CdsPedItemPRF_REGISTRO.AsString,
                                                 'PED',
                                                 DBeAlmox.Text,
                                                 '',
                                                 wProdCodigo,
                                                 '',//grade
                                                 '',
                                                 iif(w_Dif_Qtde < 0,'E','S'),
                                                 '',
                                                 '',//Novo esquema de lote
                                                 iif(bAltera,'ALTERAÇÃO DE ITEM DO PEDIDO','VENDA'),
                                                 Now,
                                                 iif(w_Dif_Qtde < 0,w_Dif_Qtde * -1,w_Dif_Qtde),
                                                 EdtPed_codigo.Text,
                                                 DBeCli_codigo.Text+'-'+EdtClienteRazao.Text,
                                                 DataMovimento.CdsPedItemPRF_PRECO.AsFloat
                                                 );
                              end;

                           if (FrmMenu.wVariacoes = 'S') then
                              begin
//                                  if (DataMovimento.CdsPedItemPRF_ORIGEM_ITEM.AsString <> 'D') then
 //                                    begin
                                       {Baixa as Qtde(s) das Variaçoes no Estoque (Saldo)}
                                       Atualiza_Estoque_Variacao('D',
                                                                 CbRef.Text,
                                                                 CurrVar1.Text,
                                                                 CurrVar2.Text,
                                                                 CurrVar3.Text,
                                                                 CurrVar4.Text,
                                                                 CurrVar5.Text,
                                                                 CurrVar6.Text,
                                                                 CurrVar7.Text,
                                                                 CurrVar8.Text);
                                       //
                                       Atualiza_Reserva_Variacao_Estoque('C',
                                                                         CbRef.Text,
                                                                         CurrVar1.Text,
                                                                         CurrVar2.Text,
                                                                         CurrVar3.Text,
                                                                         CurrVar4.Text,
                                                                         CurrVar5.Text,
                                                                         CurrVar6.Text,
                                                                         CurrVar7.Text,
                                                                         CurrVar8.Text);
//                                     end;
                              end;
                       end;
                end
             else
                begin
                    if ((CdsConsultaEstoquePGR_CODIGO.IsNull)
                    or (CdsConsultaEstoquePGR_CODIGO.AsString = '')) then
                       begin
                           DataMovimento.CdsPedItemPRF_FLAG_ATUALIZA_ESTOQUE.AsString := 'S';
                           if (FrmMenu.wAtualiza_Estoque = 'P') then
                              begin
                                  {Reserva a quantidade no estoque}
                                  Reserva_Materia(CbRef.Text,
                                                  ValorAmericano(FloatToStr(w_Dif_Qtde)));
                                  (*Lança no Kardex*)
                                  if (w_Dif_Qtde <> 0) then
                                     begin
                                        KardexLancamento(DataMovimento.CdsPedItemPRF_REGISTRO.AsString,
                                                        'PED',
                                                        DBeAlmox.Text,
                                                        '',
                                                        wProdCodigo,
                                                        '',//grade
                                                        '',
                                                        iif(w_Dif_Qtde < 0,'E','S'),
                                                        '',
                                                        '',//Novo esquema de lote
                                                        iif(bAltera,'ALTERAÇÃO DE ITEM DO PEDIDO','VENDA'),
                                                        Now,
                                                        iif(w_Dif_Qtde < 0,w_Dif_Qtde * -1,w_Dif_Qtde),
                                                        EdtPed_codigo.Text,
                                                        DBeCli_codigo.Text+'-'+EdtClienteRazao.Text,
                                                        DataMovimento.CdsPedItemPRF_PRECO.AsFloat);
                                     end;
                                  if (FrmMenu.wVariacoes = 'S') then
                                     begin
//                                         if (DataMovimento.CdsPedItemPRF_ORIGEM_ITEM.AsString <> 'D') then
//                                            begin
                                                {Baixa as Qtde(s) das Variaçoes no Estoque (Saldo)}
                                                Atualiza_Estoque_Variacao('D',
                                                                          CbRef.Text,
                                                                          CurrVar1.Text,
                                                                          CurrVar2.Text,
                                                                          CurrVar3.Text,
                                                                          CurrVar4.Text,
                                                                          CurrVar5.Text,
                                                                          CurrVar6.Text,
                                                                          CurrVar7.Text,
                                                                          CurrVar8.Text);
                                                //
                                                Atualiza_Reserva_Variacao_Estoque('C',
                                                                                  CbRef.Text,
                                                                                  CurrVar1.Text,
                                                                                  CurrVar2.Text,
                                                                                  CurrVar3.Text,
                                                                                  CurrVar4.Text,
                                                                                  CurrVar5.Text,
                                                                                  CurrVar6.Text,
                                                                                  CurrVar7.Text,
                                                                                  CurrVar8.Text);
//                                            end;
                                     end;
                              end;
                       end
                    else
                    if (CdsConsultaEstoquePGR_ATUALIZA_ESTOQUE.AsString = 'N') then
                       begin
                           DataMovimento.CdsPedItemPRF_FLAG_ATUALIZA_ESTOQUE.AsString := 'N';
                       end;
                end;
         end
      else
         begin
            DataMovimento.CdsPedItemPRF_FLAG_ATUALIZA_ESTOQUE.AsString := 'N';
         end;
      //
      wAlterar := False;
      DataMovimento.CdsPedItem.ApplyUpdates(0);
      if (dbInicio.Empresa.wMultiAlmox = 'S') then
         begin
            {Faz lançamento na Tabela PRD_RESERVA_ALMOX, quando utiliza Almoxarifado}
            if (DataMovimento.CdsPedItemPRF_FLAG_ATUALIZA_ESTOQUE.AsString = 'S') then
               begin
                  Lanca_Movimento_reserva_Almox('A',
                                                DBeAlmox.Text,
                                                CbRef.Text,
                                                ValorAmericano(FloatToStr(w_Dif_Qtde)));
     //                                         CurrQtde.Text);
               end;
         end;
      //
      CalculaPed;
//      DataMovimento.CdsPedItem.First;
      ALTERAR_VALOR_PEDIDO;
      //
      if DataMovimento.CdsPedidos.State in [dsBrowse] then
         DataMovimento.CdsPedidos.Edit;
      //
      {grava commint}
      DataCadastros.SQLConnection1.Commit(wTransacaoItem);
//      LimpaItem;
      //
      CbRef.SetFocus;
    except
    on E:EdatabaseError do
       begin
        DataCadastros.SQLConnection1.Rollback(wTransacaoItem);
        uteis.erro  (pchar('Erro ao gravar item !'+e.Message));
        CbRef.SetFocus;
       end;
    on E: Exception  do
       begin
        DataCadastros.SQLConnection1.Rollback(wTransacaoItem);
        uteis.erro  (pchar('Ocorreu uma exceção ao gravar item !'+e.Message));
        CbRef.SetFocus;
       end;
    end;
end;

procedure TFormPedidos.LimpaItem;
begin
    {Limpa campos dos itens}
    CbRef.Text := '';
    wProdCodigo := '';
    EdDescricao.Clear;
    EdDescricaoClone.Clear;
    EdComplemento.Clear;
    CurrQtde.Value    := 0;
    CurrPreco.Value   := 0;
    CurrDesc1.Value   := 0;
    CurrDesc2.Value   := 0;
    CurrIpi.Value     := 0;
    CurrDesc1.Clear;
    CurrDesc2.Clear;
    CurrSaldo.Clear;
    CurrPrecoBruto.Clear;
    Chk_Agregado.Checked := False;
    CbRef.Text := '';
end;

procedure TFormPedidos.CurrDesc2Exit(Sender: tObject);
var
wdesconto : string;
begin
    wCALCULO := 0;
    wCALCULO := ( 100      - (( 100      * CurrDesc1.Value ) / 100));
    wCALCULO := ( wCALCULO - (( wCALCULO * CurrDesc2.Value ) / 100));
    {mostra o resultado}
    wDesc := (100 - wCALCULO );
    CurrPreco.Value := (currPrecoBruto.Value - ((currPrecoBruto.Value * wDesc) /100));

    wdesconto := CurrToStr(wDesc);
    if Validardesconto(wdesconto) = False then
       CurrDesc1.SetFocus;

    // forçar focu no proximo objeto
    Currpreco.SetFocus;

end;

Function TFormPedidos.Validardesconto(xdesconto:string) : boolean;
var
xdescontopego : double;
begin
    xdescontopego := StrToFloat(xdesconto);
    if dbInicio.Empresa.DesctoMaximo_P = 0 then
       // zero = desconto totalmente liberado
       result := true
    else
      if xdescontopego > dbInicio.Empresa.DesctoMaximo_P then
        begin
        uteis.aviso(Pchar('O Desconto praticado foi de '+FloatToStr(xdescontopego)+' % o máximo autorizado é de '+FloatToStr(dbInicio.Empresa.DesctoMaximo_P)+' %'));
        result := False;
        end
      else
        result := True;

end;

procedure TFormPedidos.CurrIPIExit(Sender: tObject);
Var
savePlace :TBookMark;
begin
    if (wTecla = 'vk_Escape') then
       exit;
    if (ActiveControl.Name = 'Bit_Cancelar') or (ActiveControl.Name = 'Bit_Sair') or
       (ActiveControl.Name = 'SpPesquisa') or
       (ActiveControl.Name = 'CurrQtde') or (ActiveControl.Name = 'EdDescricao') or
       (ActiveControl.Name = 'CurrDesc1') or (ActiveControl.Name = 'CurrDesc2') or
       ((ActiveControl.Name = 'Bit_Kardex') and (Bit_Kardex.Visible=True)) then
       exit;

    if (CbRef.Text <> '') then
       begin
           saveplace := DataMovimento.CdsPedItem.GetBookmark;
           if (wItensPedido>=wTotalItensPed) then
              begin
                  uteis.aviso('Quantidade de itens por pedido, excedeu !');
                  LimpaItem;
                  HabDadosItemAlterar;
                  wAlterar := False;
                  wTecla   := '';
                  DBGridItensPed.SetFocus;
                  exit;
              end
           else
              begin
                  wItensPedido := wItensPedido + 1;
              end;
           if (DBeAlmox.Text = '') then
              begin
                  uteis.aviso('Informe o Almoxarifado !');
                  if (DBeAlmox.Enabled) then
                     DBeAlmox.SetFocus;
              end
            else
           if (CurrPrecoBruto.Value = 0)
           and(not Chk_Agregado.Checked) then
              begin
                  uteis.aviso('Informe o preço do produto para o pedido !');
                  CurrPrecoBruto.SetFocus;
              end
           else
           if (FrmMenu.wVariacoes = 'N') then
              begin
                  if (CbRef.Text <> '9999') then
                     begin
                         if (FrmMenu.wAtualiza_Estoque = 'P') and (wTipoAtEstoque = 'S') then
                            begin
                               //if (Verifica_Saldo(CbRef.Text,0,CurrQtde.Value,CurrSaldo.Value) = False) then fernando 09/02/2012
                               if (dbInicio.KardexRetornaSaldo(wProdCodigo,DBeAlmox.Text) < CurrQtde.Value) then
                                  begin
                                      BuscaSaldo(CbRef.Text);
                                      uteis.aviso('Saldo insulficiênte para este pedido !');
                                      CurrQtde.SetFocus;
                                      CurrQtde.SelectAll;
                                  end
                               else
                                  begin
                                      HabDadosItemAlterar;
                                      GravaItem;
                                      //
                                      CalculaPed;
                                      DataMovimento.CdsPedItem.First;
                                      ALTERAR_VALOR_PEDIDO;
                                      //
                                      if DataMovimento.CdsPedidos.State in [dsBrowse] then
                                         DataMovimento.CdsPedidos.Edit;
                                      //
                                      LimpaItem;
                                      //
                                      Limpa_Variaveis_variacao;
                                      //
                                      CbRef.SetFocus;
                                      BuscaItens;
                                      wIncluiu_Itens := True;
                                      if (wAlterar = False) then
                                         begin
                                             DataMovimento.CdsPedItem.Last
                                         end
                                      else
                                         begin
                                             DataMovimento.CdsPedItem.Locate('PRF_REGISTRO',wUltimoItem,[]);
                                             DBGridItensPed.SetFocus;
                                         end;
                                  end;
                            end
                         else
                            begin
                               HabDadosItemAlterar;
                               if (wAlterar) then
                                 Confirma_Exclusao_Item;
                               GravaItem;
                               //
                               CalculaPed;
                               DataMovimento.CdsPedItem.First;
                               ALTERAR_VALOR_PEDIDO;
                               //
                               if DataMovimento.CdsPedidos.State in [dsBrowse] then
                                  DataMovimento.CdsPedidos.Edit;
                               //
                               LimpaItem;
                               //
                               CbRef.SetFocus;
                               BuscaItens;
                               wIncluiu_Itens := True;
                               if (wAlterar = False) then
                                  begin
                                      DataMovimento.CdsPedItem.Last
                                  end
                               else
                                  begin
                                      DataMovimento.CdsPedItem.Locate('PRF_REGISTRO',wUltimoItem,[]);
                                      DBGridItensPed.SetFocus;
                                  end;
                            end;
                     end;
              end
           else
           if (FrmMenu.wVariacoes = 'S') and
              (Verifica_Saldo_Variacao = False) and
              (CbRef.Text <> '9999') then
              begin
                  Mostra_Saldo(EdtRef.text);
                  uteis.aviso('Saldo insulficiênte para este pedido !'+#13#10+'Verifique as Quantidade das variações !');
                  CurrQtde.SetFocus;
                  CurrQtde.SelectAll;
              end
           else
              begin
                  HabDadosItemAlterar;
                  if (wAlterar) then
                     Confirma_Exclusao_Item;
                  GravaItem;
                  //
                  CalculaPed;
                  DataMovimento.CdsPedItem.First;
                  ALTERAR_VALOR_PEDIDO;
                  //
                  if DataMovimento.CdsPedidos.State in [dsBrowse] then
                     DataMovimento.CdsPedidos.Edit;
                  //
                  LimpaItem;
                  //
                  CbRef.SetFocus;
                  BuscaItens;
                  wIncluiu_Itens := True;
                  if (wAlterar = False) then
                     begin
                         DataMovimento.CdsPedItem.Last
                     end
                  else
                     begin
                         DataMovimento.CdsPedItem.Locate('PRF_REGISTRO',wUltimoItem,[]);
                         DBGridItensPed.SetFocus;
                     end;
              end;

           DataMovimento.CdsPedItem.GotoBookmark(savePlace);
       end
    else
       begin
          LimpaItem;
       end;
     // botao kardex fica atras do botao estoque;
     Bit_kardex.SendToBack;
   //zerando variavel de quantidade
  w_old_qtde := 0;
  w_Dif_Qtde := 0;
  CurrPrecoBruto.Enabled := True;
  //DBGridItensPed.SetFocus;
  CbRef.SetFocus;
end;

procedure TFormPedidos.CurrPrecoBrutoExit(Sender: tObject);
begin
    if (wTecla = 'vk_Escape') then
       exit;
    if (ActiveControl.Name = 'Bit_Cancelar') or (ActiveControl.Name = 'Bit_Sair') or
       (ActiveControl.Name = 'CbRef') or (ActiveControl.Name = 'SpPesquisa') or
       (ActiveControl.Name = 'CurrQtde') or (ActiveControl.Name = 'EdDescricao') or
       ((ActiveControl.Name = 'Bit_Kardex') and (Bit_Kardex.Visible=True)) then
       exit;
    {verifica se foi digitado o item para obrigar colocar o preco}
    if CbRef.Text <> '' then
       begin
           if (CurrPrecoBruto.Value = 0)
           and(not Chk_Agregado.Checked) then
              begin
                  uteis.aviso('Informe o preço do produto!');
                  CurrPrecoBruto.SetFocus;
              end
           else
              begin
                  if (not Chk_Agregado.Checked) then
                     begin
                        if chkDescto.checked  then
                           CurrPreco.Value := CurrPrecoBruto.Value
                        else
                           CurrPreco.Value := CurrPrecoBruto.Value;
                     end
                  else
                     begin
                        if chkDescto.checked  then
                           CurrPreco.Value := 0
                        else
                           CurrPreco.Value := 0;
                     end;
              end;
      end;
end;

procedure TFormPedidos.AlteraItem;
begin
  try
      if DataMovimento.CdsPedidosPED_SITUACAO.AsString <> 'T' then
      begin
        CbRef.Text              := DataMovimento.CdsPedItemPRD_REFER.asstring;
        wProdCodigo             := DataMovimento.CdsPedItemPRD_CODIGO.AsString;
        EdDescricao.Text        := DataMovimento.CdsPedItemPRF_PRDDESCRI.AsString;
        EdComplemento.Text      := DataMovimento.CdsPedItemPRF_COMPL_DESCRI.AsString;
        CurrQtde.Value          := DataMovimento.CdsPedItemPRF_QTDE.AsCurrency;
        CurrDesc1.Value         := DataMovimento.CdsPedItemPRF_IDESCTO1.AsCurrency;
        CurrDesc2.Value         := DataMovimento.CdsPedItemPRF_IDESCTO2.AsCurrency;
        CurrIpi.Value           := DataMovimento.CdsPedItemPRF_IPIALIQ.AsCurrency;
        CurrPreco.Value         := DataMovimento.CdsPedItemPRF_PRECO.AsFloat;
        CurrPrecoBruto.Value    := DataMovimento.CdsPedItemPRF_PRECO_BRUTO.AsFloat;
        Chk_Agregado.Checked    := iif(DataMovimento.CdsPedItemPRF_PRODUTO_AGREGADO.AsString = 'S','True','False');
        w_Saldo_Anterior        := DataMovimento.CdsPedItemPRF_QTDE.AsCurrency;
        DBeAlmox.Text           := StrZero(DataMovimento.CdsPedItemAMX_CODIGO_DESTINO.AsString,DBeAlmox.MaxLength);
        CbAlmox1.TextoLocalizar := StrZero(DBeAlmox.Text,DBeAlmox.MaxLength);
        CbAlmox1.Localizar      := True;
        CurrSaldo.Value := dbInicio.KardexRetornaSaldo(wProdCodigo,DBeAlmox.Text);
        if (CbRef.text <> '9999') then
           BuscaSaldo(CbRef.text);

        if (FrmMenu.wVariacoes = 'S') then
        begin
          CurrVar1.Value := DataMovimento.CdsPedItemPRF_VAR1.AsCurrency;
          CurrVar2.Value := DataMovimento.CdsPedItemPRF_VAR2.AsCurrency;
          CurrVar3.Value := DataMovimento.CdsPedItemPRF_VAR3.AsCurrency;
          CurrVar4.Value := DataMovimento.CdsPedItemPRF_VAR4.AsCurrency;
          CurrVar5.Value := DataMovimento.CdsPedItemPRF_VAR5.AsCurrency;
          CurrVar6.Value := DataMovimento.CdsPedItemPRF_VAR6.AsCurrency;
          CurrVar7.Value := DataMovimento.CdsPedItemPRF_VAR7.AsCurrency;
          CurrVar8.Value := DataMovimento.CdsPedItemPRF_VAR8.AsCurrency;
        end;

        DesDadosItemAlterar;

        if (wPedItemDesc = 'S') then //Verifica no parametro se pode deixar alterar a descricao
        begin
          if (GbItem.Enabled) then
            if (EdDescricao.ReadOnly = False) then
            //begin
            //  EdDescricao.Enabled  := True;
           //   EdDescricao.ReadOnly := False;
              EdDescricao.SetFocus;
          //  end;
        end
       else
        begin
           CurrQtde.SetFocus;
        end;

      end
     else
      begin
        uteis.aviso('Este pedido não pode ser alterado. Encontra-se faturado !');
        VerificaSitPedido;
        w_Saldo_Anterior := 0;
      end;

    except on E:eDatabaseError do
        uteis.erro  (pchar('Impossível selecionar arquivo !'+e.Message));
  end;
end;

procedure TFormPedidos.LimparDados;
begin
    EdtPed_codigo.Text    := '';
    DBeCli_codigo.Text    := '';
    DBeRep_codigo.Text    := '';
    DbeTRP_CODIGO.Text    := '';
    CbTipo1.text          := '';
    CbClientes1.text      := '';
    CbRepresentantes1.Text:= '';
    CbTRansp1.Text        := '';
    CbRedesp1.Text        := '';
   // CbAlmox1.Text         := '';
    PanSituacao.Caption   := '';
    MskCnpj.Text          := '';
    Cbtransp1.Text        := '';
    cbredesp1.Text        := '';
    CbxPcl1.Text           := '';
    //DBText1.Caption       := '';
    //DBText2.Caption       := '';
    //DBText3.Caption       := '';
    DtEntrada.Text        := '';
    DtEntrega.Text        := '';
    MskCnpj.Text          := '';
    PanSituacao.Caption   := '';
    LblCnpj.Caption       := 'CNPJ';
 //    ChkDescto.Checked     := false;
    RadDescPorc.Checked   := false;
    RadDescValor.Checked  := false;
    CbFreteT.ItemIndex    := 0;
    CbFreteR.ItemIndex    := 0;
    CurrTotalQtde.Value   := 0;
    CurrSubTotal.Value    := 0;
    CurrDesconto.Value    := 0;
    CurrTotIpi.Value      := 0;
    CurrTotal.Value       := 0;
    CurrQtde1.Value       := 0;
    CurrQtde2.Value       := 0;
    CurrQtde3.Value       := 0;
    CurrQtde4.Value       := 0;
    CurrQtde5.Value       := 0;
    CurrQtde6.Value       := 0;
    CurrQtde7.Value       := 0;
    CurrQtde8.Value       := 0;
    PanTipo.Visible       := False;
    wProdCodigo           := '';

end;

procedure TFormPedidos.FormKeyPress(Sender: tObject; var Key: Char);
begin
    if (key = #27) then
       begin
           wTecla := 'vk_Escape';
          
           if ((Bit_Cancelar.Visible)
           or (Trim(EdtPed_codigo.Text) <> '')) then
              begin
                 Bit_cancelar.Click;
                 wTecla := '';
              end
           else
           if (Bit_Sair.Visible)
           and(Trim(EdtPed_codigo.Text) = '') then
              Close;
           key := #0;
       end;
end;

procedure TFormPedidos.Excluir1Click(Sender: tObject);
begin
   ExcluirItem;
end;

procedure TFormPedidos.Alterar1Click(Sender: tObject);
begin
    if (DataMovimento.CdsPedItem.IsEmpty = False) then
       begin
           wAlterar := True;
           DBeAlmox.Enabled := False;
           CbAlmox1.Enabled := False;
           if DataMovimento.CdsPedItem.State in [dsBrowse] then
              DataMovimento.CdsPedItem.Edit;
           if DataMovimento.CdsPedItem.IsEmpty = false then
              AlteraItem
           else
              CbRef.SetFocus;
       end
    else
       begin
           uteis.aviso('Não há item do pedido a ser alterado !');
           DBGridItensPed.SetFocus;
       end;
end;

procedure TFormPedidos.SpeedButton3Click(Sender: tObject);
begin
    if (DataMovimento.CdsPedItem.State = DsEdit) or (DataMovimento.CdsPedItem.State = DsEdit) then
       begin
           if uteis.confirmacao ( 'Confirma a variação do Produto ?')=mryes then
              DataMovimento.CdsPedItem.ApplyUpdates(0)
           else
              DataMovimento.CdsPedItem.CancelUpdates;
       end;
    cbRef.SetFocus;
end;

procedure TFormPedidos.CurrDescTotalKeyPress(Sender: tObject;
  var Key: Char);
begin
    if key = #13 then
       begin
           CbRef.SetFocus;
           Key := #0;
       end;
end;

procedure TFormPedidos.PageControl1Change(Sender: tObject);
begin
    case Pagecontrol1.ActivePageIndex of
     1:Begin
           BuscaNotas;
       end;
    end;
end;

procedure TFormPedidos.BuscaNotas;
begin
    {Busca notas e itens da nota fiscal}
    try
      // fechar a SqlNota senao nao abre CdsNotafiscal.open
      DataMovimento.SQlNota.Close;
      DataMovimento.CdsNotaFiscal.Close;
      DataMovimento.CdsNotaFiscal.CommandText := SQLDEF('PEDIDOS','SELECT NF1.* FROM NF0001 NF1 ','WHERE NF1.PED_CODIGO = '''+DataMovimento.CdsPedidosPED_CODIGO.AsString+'''','NF1.PED_CODIGO','NF1.');
      DataMovimento.CdsNotaFiscal.Open;
      if (DataMovimento.CdsNotaFiscal.IsEmpty = False) then
         begin
             DataMovimento.CdsNotaFiscal.First;
             BuscaItensNota;
         end
      else
         begin
             DataMovimento.CdsNotaFiscal.Close;
         end;
      except on E:EdatabaseError do
         uteis.erro  (pchar('Erro ao localizar notas fiscais ref. ao pedido !'+e.Message));
      end;
end;

procedure TFormPedidos.BuscaItensnota;
begin
    try
      DataMovimento.CdsItemNota.Close;
      DataMovimento.CdsItemNota.CommandText := SQLDEF('PEDIDOS','SELECT NF2.* FROM NF_IT01 NF2 ','WHERE NF2.NF_IT_NOTANUMER = '''+DataMovimento.CdsNotaFiscalNF_NOTANUMBER.AsString+''' AND NF2.PED_CODIGO = '''+EdtPed_codigo.Text+'''','NF2.NF_IT_NOTANUMER','NF2.');
      DataMovimento.CdsItemNota.Open;
    except on E:EdatabaseError do
       uteis.erro  (pchar('Erro ao localizar itens da nota fiscal !'+e.message));
    end;
end;

procedure TFormPedidos.HabilitaComponentes;
begin
    CbClientes1.Enabled      := False;   //true;  desativada em 20/10/2010 márcio
    DtEntrada.Enabled        := true;
    DtEntrega.Enabled        := true;
    CbxPcl1.Enabled          := true;
    DBeRep_codigo.Enabled    := true;
    CbRepresentantes1.Enabled := true;
    GbComissao.Enabled       := true;
    DbeTRP_codigo.Enabled    := true;
    CbTransp1.Enabled        := true;
    cbFreteT.Enabled         := true;
    DbeTrp_Redesp.Enabled    := true;
    CbRedesp1.Enabled        := true;
    CbFreteR.Enabled         := true;
    GrpDesconto.Enabled      := true;
    GrpDescto2.Enabled       := true;
    GbItem.Enabled           := true;
    CbRef.Enabled            := true;
    SpPesquisa.Enabled       := true;
    GbObs.Enabled            := true;
    gbAviso.Enabled          := true;
end;

procedure TFormPedidos.DesabilitaComponentes;
begin
    {Desbalita todos os componentes do formaluario para o usuario não alterar nada}
    {utilizado na abertura do form quando nenhum pedido esta selecionado}
    EdtPed_codigo.Enabled    := true;
    CbTipo1.Enabled          := false;
    DBeCli_codigo.Enabled    := False;
    DBeRep_codigo.Enabled    := false;
    CbClientes1.Enabled      := false;
    CbTipo1.Enabled          := false;
    DtEntrada.Enabled        := false;
    DtEntrega.Enabled        := false;
    DbeTRP_codigo.Enabled    := false;
    CbTransp1.Enabled        := false;
    CbFreteT.Enabled         := false;
    cbFreteR.Enabled         := false;
    CbRedesp1.Enabled        := false;
    CbRepresentantes1.Enabled := false;
    DBeRep_codigo.Enabled    := false;
    DbeTrp_Redesp.Enabled    := false;
    CbxPCL1.Enabled          := false;
    GrpDesconto.Enabled      := False;
    GrpDescto2.Enabled       := False;
    gbItem.Enabled           := False;
    GbObs.Enabled            := false;
    gbAviso.Enabled          := false;
    gbComissao.Enabled       := true;
end;

procedure TFormPedidos.MascaraCNPJ;
begin
  if CbClientes1.Text <> EmptyStr then
  begin
    if CbClientes1.CodigoLista <> EmptyStr then
    DBeCli_codigo.Text := CbClientes1.CodigoLista;
    if DataMovimento.CdsPedidos.State in [dsEdit, dsInsert] then
    else
    Busca_Dados_Cliente(StrZero(DBeCli_codigo.Text,5));
  end;
    If Length(DataMovimento2.CdsConsultaClieCli_CGC.AsString) =14  then
       begin
          MskCnpj.EditMask := '99.999.999/9999-99;0;_';
          DataMovimento2.CdsConsultaClieCLI_CGC.EditMask := '99.999.999/9999-99;0;_';
           if (DataMovimento.CdsPedidos.State in [dsInsert, dsEdit, dsbrowse]) and (DBeCli_codigo.Text <> EmptyStr) then
             MskCnpj.Text := DataMovimento2.CdsConsultaClieCLI_CGC.AsString;

           lblcnpj.Caption := 'CNPJ:';
       end
    else
       // pessoa fisica
       begin
          MskCnpj.EditMask := '999.999.999-99;0;_';
          DataMovimento2.CdsConsultaClieCLI_CGC.EditMask := '999.999.999-99;0;_';
           if (DataMovimento.CdsPedidos.State in [dsInsert, dsEdit, dsbrowse]) and (DBeCli_codigo.Text <> EmptyStr) then
             MskCnpj.Text := DataMovimento2.CdsConsultaClieCLI_CGC.AsString;
           lblcnpj.Caption := 'CNPF:';
       end;
end;

procedure TFormPedidos.DBEdit26KeyPress(Sender: tObject; var Key: Char);
begin
    if key = #13 then
       begin
           Bit_gravar.SetFocus;
           Key := #0;
       end;
end;

procedure TFormPedidos.RadDescItemClick(Sender: tObject);
begin
    RadDescValor.Enabled := false;
    PanDescV.Visible     := false;
    PanDescP.Visible     := true;
    RadDescPorc.Checked  := true;
end;

procedure TFormPedidos.RadDescNotaClick(Sender: tObject);
begin
    RadDescPorc.Enabled  := true;
    PanDescP.Visible     := true;
    PanDescV.Visible     := false;
    RadDescValor.Enabled := true;
end;

procedure TFormPedidos.DbeVar1Exit(Sender: tObject);
begin
    if DataMovimento.CdsPedItem.State in [dsEdit] then
       DataMovimento.CdsPedItem.ApplyUpdates(0);
end;

procedure TFormPedidos.DbeCli_CodigoExit(Sender: tObject);
begin
    screen.Cursor := crHourGlass;
    if (ActiveControl <> Nil) and(ActiveControl.Name <> 'Bit_Cancelar')and(ActiveControl.Name <> 'Bit_Sair') then
       begin
          if (Trim(DBeCli_codigo.Text)<> '') then
             begin
                CbClientes1.TextoLocalizar := StrZero(DBeCli_codigo.Text,5);
                CbClientes1.Localizar := True;
                if (CbClientes1.Localizado = False) then
                   begin
                      //beep;
                      uteis.aviso('Cliente não localizado com o código informando !');
                      DBeCli_codigo.SelectAll;
                      DbeCli_codigo.Text := '';
                      DbeCli_codigo.SetFocus;
                      DBeRep_codigo.Text     := '';
                      CbRepresentantes1.Text := '';
                      DbeTRP_CODIGO.Text     := '';
                      CbTransp1.Text         := '';
                      CbFreteT.ItemIndex     := 0;
                   end
                else
                   begin
                      if (DBeCli_codigo.Text <> '') then
                         begin
                            if DataMovimento.CdsPedidos.State in [dsBrowse] then
                               DataMovimento.CdsPedidos.Edit;
                            //
                            Busca_Dados_Cliente(StrZero(DBeCli_codigo.Text,5));
                            { edit recebe o cliente localizado na combo. combo desativada para uso mais as rotinas continuam em funcionamento}
                            EdtClienteRazao.Text := cbclientes1.Text;
                            //
                            if DataMovimento.CdsPedidos.State in [dsEdit,dsInsert] then
                               begin
                                   wAchouCli   := true;
                                   DbeCli_codigo.field.Text := StrZero(DbeCli_codigo.Text,DbeCli_codigo.MaxLength);
                                   DBeRep_codigo.field.Text := DataMovimento2.CdsConsultaClieREP_CODIGO.AsString;
                                   DbeTRP_CODIGO.field.Text := DataMovimento2.CdsConsultaClieTRP_CODIGO.AsString;
                                   DBePcl_codigo.Field.text := DataMovimento2.CdsConsultaCliePCL_CODIGO.Asstring;
                                   //
                                   if not SqlCdsPcl.Active then
                                      SqlCdsPcl.Open;
                                   //
                                   if SqlCdsPcl.Locate('PCL_CODIGO', DBePcl_codigo.Field.text, [])= true then
                                       CbxPcl1.Text := SqlCdsPclPCL_NOME.AsString;
                               end;

                            {Representante}
                            Cbrepresentantes1.TextoLocalizar      := StrZero(DBeRep_codigo.Text,3);
                            Cbrepresentantes1.Localizar           := True;
                      if (DbeTRP_CODIGO.Field.Text = '') then
                          begin
                           DbeTRP_CODIGO.Field.Text := '';
                           CbTransp1.Text           := '';
                           CbFreteT.ItemIndex       := 0;
                          end;

                         end;
                      if (VerificaRestricao(DataMovimento2.CdsConsultaClieCLI_INATIVO.AsString)='A') then
                         begin
                             DBeCli_codigo.Field.Text := DataMovimento2.CdsConsultaClieCLI_CODIGO.AsString;
                             //
                             if (DbeTRP_CODIGO.Field.Text <> '') then
                                begin
                                   {Transportadora}
                                   CbTransp1.TextoLocalizar      := StrZero(DbeTRP_CODIGO.Text,3);
                                   CbTransp1.Localizar           := True;
                                   if (not CbTransp1.Localizado) then
                                      begin
                                         DbeTRP_CODIGO.Field.Text := '';
                                         CbTransp1.Text           := '';
                                         CbFreteT.ItemIndex       := 0;
                                      end;
                                end
                             else
                                begin
                                   DbeTRP_CODIGO.Field.Text := '';
                                   CbTransp1.Text           := '';
                                   CbFreteT.ItemIndex       := 0;
                                end;
                             MascaraCNPJ;
                         end;
                   end;
             end;
             //
             if (DbeCli_codigo.Text = '') and (ActiveControl.Name <> 'Bit_Cancelar') and (ActiveControl.Name <> 'spCliente') then
                begin
                  //beep;
                  uteis.aviso('Informe o código do cliente ou clique na Busca !');
                  DBeCli_codigo.SelectAll;
                  DbeCli_codigo.SetFocus;
                end;

       end;
    screen.cursor:=crDefault;
end;

procedure TFormPedidos.DbeRep_CodigoExit(Sender: tObject);
begin
   screen.Cursor := crHourGlass;
   if (ActiveControl <> Nil)
   and(ActiveControl.Name <> 'Bit_Cancelar')
   and(ActiveControl.Name <> 'Bit_Sair') then
      begin
         if (Trim(DBeRep_codigo.Text)<> '') then
            begin
               CbRepresentantes1.TextoLocalizar := StrZero(DBeRep_codigo.Text,3);
               CbRepresentantes1.Localizar := True;
               if (CbRepresentantes1.Localizado = False) then
                  begin
                     //beep;
                     uteis.aviso('Informe o Código do Representante !');
                     DBeRep_codigo.SetFocus;
                     DBeRep_codigo.SelectAll;
                  end
               else
                  begin
                     if (Datamovimento.CdsPedidos.State in [dsInsert,dsEdit]) then
                        begin
                           if (DBeRep_codigo.Field.Text <> '')
                           and(not Verifica_Representante_Ativo(StrZero(DBeRep_codigo.Text,3))) then
                              begin
                                 uteis.aviso('Representante inativo !');
                                 DBeRep_codigo.Field.Clear;
                                 CbRepresentantes1.Text := '';
                                 DBeRep_codigo.SetFocus;
                              end
                           else
                              begin
                                 DBeRep_codigo.Field.Text := StrZero(DBeRep_codigo.Text,3);
                              end;
                        end;
                  end;
            end;
      end;
   screen.cursor:=crDefault;
end;

procedure TFormPedidos.CurrDesctoPc1Exit(Sender: tObject);
begin
    if ChkDescto.checked  then
       begin
           if DataMovimento.CdsPedidos.State in [dsBrowse] then
              DataMovimento.CdsPedidos.Edit;

           CalculaIndiceDescto;
           CalculaPed;

       end;
end;

procedure TFormPedidos.CalculaIndiceDescto;
begin
   // faz calculo pelo primeiro percentual
   CurrDesctoIndice.Value:= 100-(100*CurrDesctoPc1.Value/100); // tirar o percentual de 100
   CurrDesctoIndice.Value:= 100-CurrDesctoIndice.Value; // 100 - o valor do desconto

   // faz calculo pelo segundo percentual
     if  CurrDesctoPc2.Value > 0 then
        begin
        CurrDesctoIndice.Value:= 100-CurrDesctoIndice.Value;   // valor já esta com calculo do primeiro percentual
        CurrDesctoIndice.Value:= CurrDesctoIndice.Value-(CurrDesctoIndice.Value*CurrDesctoPc2.Value/100);
        CurrDesctoIndice.Value:=  CurrDesctoIndice.Value/100*10;     // é o indice de perc1+perc2
        end;

end;

procedure TFormPedidos.CurrDesctoPc2Exit(Sender: tObject);
begin
    if ChkDescto.checked  then
       begin
           if DataMovimento.CdsPedidos.State in [dsBrowse] then
              DataMovimento.CdsPedidos.Edit;


           CalculaIndiceDescto;
           CalculaPed;

       end;
end;

procedure TFormPedidos.CurrDesctoVlExit(Sender: tObject);
begin
    if ChkDescto.checked  then
       begin
           if DataMovimento.CdsPedidos.State in [dsBrowse] then
              DataMovimento.CdsPedidos.Edit;

          CalculaPed;

       end;
end;

function TFormPedidos.ChecarDescto: Boolean;
begin
    {Esta funcao server para veriricar se nos itens do pedido tem descto,
     caso nao tem desconto deixa aplicar o desconto}
    try
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :='select Sum(prf_preco_bruto-prf_preco) as Teste from ped_it01 WHERE PED_CODIGO = '''+EdtPed_codigo.Text+'''';
      DataCadastros.sqlUpdate.Open;
      if DataCadastros.sqlUpdate.IsEmpty then
         begin
             Result := False;
             uteis.aviso('Não tem itens cadastrados para aplicar desconto !');
             CbRef.SetFocus;
         end
      else
         begin
             if DataCadastros.sqlUpdate.FieldByName('Teste').AsCurrency = 0 then
                begin
                    Result := True;
                end
             else
                begin
                    Result := False;
                    uteis.aviso('Não pode aplicar desconto porquê tem item com desconto(s) !');
                    ChkDescto.Checked := False;
                    DBGridItensPed.SetFocus;
                end;
         end;
      DataCadastros.sqlUpdate.Close;
    except on E:EdataBaseError do
       uteis.erro  (pchar('Erro ao abrir a tabela !'+e.message));
    end;
end;


procedure TFormPedidos.HabilitaDescto;
begin
    if ChkDescto.checked  then
       begin
           if (not Chk_Agregado.Checked) then
              begin
                 RadDescPorc.Enabled     := true;
                 RadDescPorc.Checked     := true;
                 RadDescValor.Enabled    := true;
                 CurrDesctoPc1.Enabled   := true;
                 CurrDesc1.Color         := $00D7D7D7;
                 CurrDesc1.TabStop       := False;
                 CurrDesc1.ReadOnly      := true;
                 CurrDesctoPc2.Enabled   := true;
                 CurrDesc2.Color         := $00D7D7D7;
                 CurrDesc2.TabStop       := False;
                 CurrDesc2.ReadOnly      := true;
                 CurrDesctoVl.Enabled    := true;
                 CurrDesctoIndice.Enabled := true;
              end;
       end
    else
       begin
          if (not Chk_Agregado.Checked) then
             begin
                {Deixa visualizar o desconto padrao}
                CurrDesc1.Color         := clWindow;
                CurrDesc1.TabStop       := True;
                CurrDesc1.ReadOnly      := False;
                CurrDesc2.Color         := clWindow;
                CurrDesc2.TabStop       := True;
                CurrDesc2.ReadOnly      := False;
                CurrDesctoPc1.Value     := 0;
                CurrDesctoPc2.Value     := 0;
                CurrDesctoIndice.Value   := 0;
                CurrDesconto.Value      := 0;
                if (DataMovimento.CdsPedidos.State in [dsInsert,dsEdit]) then
                   DataMovimento.CdsPedidosPED_DESCTONF.AsString := 'N';
                PanDescP.Visible        := true;
                PanDescV.Visible        := false;
                RadDescPorc.Checked     := false;
                RadDescPorc.Enabled     := false;
                RadDescValor.Checked    := false;
                RadDescValor.Enabled    := false;
                CurrDesctoPc1.Enabled   := false;
                CurrDesctoPc2.Enabled   := false;
                CurrDesctoVl.Enabled    := false;
                CurrDesctoIndice.Enabled := false;
             end;
       end;
    if (DataMovimento.CdsPedItem.Active) then
       begin
          CalculaPed;
          DataMovimento.CdsPedItem.First;
       end;
    if wTups = 'S' then
       CalculaTup;
end;

procedure TFormPedidos.DtEntradaButtonClick(Sender: tObject);
begin
    if DataMovimento.CdsPedidos.State in [dsBrowse] then
       DataMovimento.CdsPedidos.Edit;
end;

procedure TFormPedidos.DtEntradaKeyPress(Sender: tObject; var Key: Char);
begin
    if key = #13 then
       begin
           if wDtEntrada<>DtEntrada.Text then
              begin
                  if DataMovimento.CdsPedidos.State in [dsBrowse] then
                     DataMovimento.CdsPedidos.Edit;
              end;
           key :=#0;
       end;
end;

procedure TFormPedidos.DtEntradaEnter(Sender: tObject);
begin
    wDtEntrada := DtEntrada.Text;
end;

procedure TFormPedidos.DtEntregaEnter(Sender: tObject);
begin
    wDtEntrega := DtEntrega.Text;
end;

procedure TFormPedidos.DtEntregaKeyPress(Sender: tObject; var Key: Char);
begin
    if key = #13 then
       begin
           if wDtEntrega<>DtEntrega.Text then
              begin
                  if DataMovimento.CdsPedidos.State in [dsBrowse] then
                     DataMovimento.CdsPedidos.Edit;
              end;
           key :=#0;
       end;
end;

procedure TFormPedidos.EdtPed_codigoChange(Sender: tObject);
begin
    if EdtPed_codigo.Text <> '' then
       begin
           if (wIncluir = true) then
              begin
                  DBeCli_codigo.Enabled := true;
                  CbClientes1.Enabled   := false;   //true; desativada em 20/10/10 marcio
                  BTN_DUPLICAR.Enabled  := False;
              end
           else
              begin
                  BTN_DUPLICAR.Enabled := True;
              end;
       end
    else
       begin
           DesabilitaComponentes;
//           Bit_Kardex.Enabled   := False;
           BTN_DUPLICAR.Enabled := False;
       end;
end;

procedure TFormPedidos.CurrDesctoPc1Click(Sender: tObject);
begin
    if ChkDescto.checked  then
       begin
           if (RadDescPorc.Checked = false) and (RadDescValor.Checked = false) then
              begin
                  uteis.aviso('Favor informar tipo de Desconto (Percentual/Valor) !');
                  RadDescPorc.Checked := true;
                  RadDescPorc.SetFocus;
              end;
       end;
end;

procedure TFormPedidos.VerificaSitPedido;
begin
    if DataMovimento.CdsPedidosPED_SITUACAO.AsString = 'P' then
       begin
           PanSituacao.Caption := ' FATURADO PARCIAL';
           PanSituacao.Color := clGreen;
           PanSituacao.Font.color := clBlack;

           HabilitaComponentes;
//            DesabilitaBotoes;
       end;
    if DataMovimento.CdsPedidosPED_SITUACAO.AsString = 'F' then
       begin
           PanSituacao.Caption := ' À FATURAR';
           PanSituacao.color := clBtnFace;
           PanSituacao.Font.color := clblack;
           
           HabilitaComponentes;
//            DesabilitaBotoes;
       end;
    if DataMovimento.CdsPedidosPED_SITUACAO.AsString = 'T' then
       begin
           PanSituacao.Caption := ' FATURADO TOTAL';
           PanSituacao.color := clBlue;
           PanSituacao.Font.color := clWhite;

           DesabilitaComponentes;  //Foi liberado para o usuario alterar o pedido faturado.

           if DataMovimento.CdsPedidos.State in [dsEdit,dsInsert] then
              DataMovimento.CdsPedidos.CancelUpdates;

           HabilitaBotoes;
       end;
end;

procedure TFormPedidos.InserirPedido;
begin
    {inicializa transacao do pedido}
    {Abrir o pedidos com o numero inexistente}
    if (wIncluir = true) then
       begin
           if (FrmMenu.wNumer_Pedido = 'A') then
              begin
                  EdtPed_codigo.Text    := StrZero(SequenciadorPRC(DataCadastros.SQLConnection1, dbInicio.Empresa.EMP_CODIGO ,'PED0000', 'PED_CODIGO', 0),6);
                  DataCadastros.sqlUpdate.Close;
                  DataCadastros.SqlUpdate.sql.text :=SQLDEF('PEDIDOS','Select P1.PED_CODIGO from PED0000 P1','Where P1.PED_CODIGO = '''+EdtPed_codigo.Text+'''','P1.PED_CODIGO','P1.');
                  DataCadastros.sqlUpdate.Open;
                  if DataCadastros.sqlUpdate.IsEmpty = false then
                     begin
                         BuscaCodigo;
                         HabilitaBotoes;
                         wIncluir := false;
                         VerificaSitPedido;
//                         CbTipo.Enabled := False;
                         uteis.aviso('Pedido já Cadastrado.');
                         if DataMovimento.CdsPedidos.State in [dsInsert] then
                            DataMovimento.CdsPedidos.CancelUpdates;
                     end;
                  DataCadastros.sqlUpdate.Close;
                  //
                  EdtPed_codigo.Enabled := true;
                  EdtPed_codigo.Color   := clWindow;
                  EdtPed_codigo.SetFocus;
                  EdtPed_codigo.SelectAll;
              end;
           DataMovimento.CdsPedidos.Close;
           DataMovimento.CdsPedidos.CommandText := SQLDEF('PEDIDOS','Select Pe1.* from PED0000 Pe1 ','where Pe1.PED_CODIGO = '''+EdtPed_codigo.Text+'''','Pe1.PED_CODIGO','Pe1.');
           DataMovimento.CdsPedidos.Open;
           if (DataMovimento.DsPedidos.AutoEdit = false) then
              DataMovimento.DsPedidos.AutoEdit := true;
           if DataMovimento.CdsPedidos.IsEmpty = true then
              begin
                  HabilitaComponentes;
                  DataMovimento.CdsPedidos.Insert;
                  DBeComis1.Field.AsCurrency   := 0;
                  DBeComis2.Field.AsCurrency   := 0;
                  DBeComis3.Field.AsCurrency   := 0;
                  DBEVLFRETE.Field.AsCurrency  := 0;
                  DBEVLDESP.Field.AsCurrency   := 0;
                  DBEVLDESPImport.Field.AsCurrency   := 0;                  
                  DBEVLSEGURO.Field.AsCurrency := 0;
                  DataMovimento.CdsPedItem.Close;
                  DefinePmts;  // proc. local = Continua com parametros GLOBAIS
                  //************************************************************************
                  CbFreteT.ItemIndex                                 := 0;
                  CbFreteR.ItemIndex                                 := 0;
                  EdtPed_codigo.Enabled                              := true;
                  PanSituacao.Caption                                := ' À FATURAR ';
                  DataMovimento.CdsPedidosPED_DESCTONF.AsString      := 'N';
                  DataMovimento.CdsPedidosPED_SITUACAO.AsString      := 'F';
                  DataMovimento.CdsPedidosPED_OS.AsString            := 'N'; 
                  // trazer o Tipo que esta marcado como Padrao = S
                  BuscaTipoPadrao;

                  DataMovimento.CdsPedidosOPV_CODIGO.AsInteger       := StrToInt(wCodTipo);

                  Busca_Tipo(wCodTipo);
                  //wCodTipo                                           := '15';
                 // wTipoAtEstoque                                     := 'S';
                  DataMovimento.CdsPedidosPED_FLAG_PED_DUPL.AsString := 'N';
                  MensagemTipo;
              end;
       end;
end;

procedure TFormPedidos.SpPesquisaClick(Sender: tObject);
begin
    try
      FormProdutoGrid := TFormProdutoGrid.Create(Application);
      FormProdutoGrid.Tag := 0;
      FormProdutoGrid.ShowModal;
    finally
      begin
          FormProdutoGrid.Destroy;
          FormProdutoGrid := nil;
          if (CbRef.Text <>'') then
             BuscaProduto;

          Screen.OnActiveControlChange   := MudaCorCampos;
          // focus para fazer verificacoes no exit da combo
          CbRef.SetFocus;
          if (CbRef.Text <>'') then
             Chk_Agregado.Enabled := True
          else
             Chk_Agregado.Enabled := False;
      end;
    end;
end;

procedure TFormPedidos.DBeCli_codigoKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then  //
       begin
           //beep;
           Key := #0;
       end;
end;

procedure TFormPedidos.DBeCli_codigoChange(Sender: tObject);
begin
   if (DataMovimento.CdsPedidos.State in [dsInsert]) then
      begin
         if (wBotao = 'I') then
            begin
              MascaraCNPJ_INFCLIE;
            end;
      end;
end;

procedure TFormPedidos.DBeAlmoxExit(Sender: tObject);
begin
   screen.Cursor := crHourGlass;
   if (ActiveControl <> Nil)
   and(ActiveControl.Name <> 'Bit_Cancelar')
   and(ActiveControl.Name <> 'Bit_Sair') then
      begin
         if (Trim(DBeAlmox.Text)<> '') then
            begin
               CbAlmox1.TextoLocalizar := StrZero(DBeAlmox.Text,DBeAlmox.MaxLength);
               CbAlmox1.Localizar      := True;
               if (CbAlmox1.Localizado = False) then
                  begin
                     //beep;
                     uteis.aviso('Almoxarifado destino não encontrado !');
                     DBeAlmox.SetFocus;
                     DBeAlmox.SelectAll;
                  end
               else
                  begin
                     if Datamovimento.CdsPedidos.State = DsBrowse then
                        Datamovimento.CdsPedidos.Edit;
                  end;
               DBeAlmox.Field.Text := StrZero(DBeAlmox.Text,DBeAlmox.MaxLength);
               CurrSaldo.Value := dbInicio.KardexRetornaSaldo(wProdCodigo,DBeAlmox.Text);
            end;
      end;
    screen.cursor:=crDefault;
end;

procedure TFormPedidos.DesDadosItemAlterar;
begin
    if (wIncluir = True) then
       begin
           CbRef.Enabled          := True;
           SpPesquisa.Visible     := True;
           DBeAlmox.Enabled       := True;
           CbAlmox1.Enabled       := True;
       end
    else
       begin
           CbRef.Enabled          := False;
           SpPesquisa.Visible     := False;
           DBeAlmox.Enabled       := False;
           CbAlmox1.Enabled       := False;
           if (wIncluir = False) then
              begin
              EdDescricao.Enabled := True;
              CurrQtde.Enabled   := True;
              end;
       end;
    DesabilitaBotoes;

    Pn_Relatorio.Enabled   := False;
    Bit_Gravar.Enabled     := False;
    Bit_Cancelar.Enabled   := False;
 //   Pn_Botoes.Enabled      := False;
 //   Pn_dados.Enabled       := False;
 //   GbAviso.Enabled        := False;
 //   GbObs.Enabled          := False;
    Grb_Var.Enabled        := False;
    DBGridItensPed.Enabled := False;
    GbComissao.Enabled     := False;
    GrpDesconto.Enabled    := False;
    GrpDescto2.Enabled     := False;
    GbSitucao.Enabled      := False;
    TabSheet3.TabVisible   := False;
    Chk_Agregado.Enabled   := True;
end;

procedure TFormPedidos.HabDadosItemAlterar;
begin
    CbRef.Enabled          := True;
    SpPesquisa.Visible     := True;
    Bit_Gravar.Enabled     := True;
    Bit_Cancelar.Enabled   := True;
    Pn_Relatorio.Enabled   := True;
  //  Pn_Botoes.Enabled      := True;
  //  Pn_dados.Enabled       := true;
  //  GbAviso.Enabled        := True;
  //  GbObs.Enabled          := True;
    Grb_Var.Enabled        := True;
    DBGridItensPed.Enabled := True;
    GbComissao.Enabled     := True;
    GrpDesconto.Enabled    := True;
    GrpDescto2.Enabled     := True;
    GbSitucao.Enabled      := True;
    TabSheet3.TabVisible   := True;
    CurrQtde.Enabled       := True;
    Chk_Agregado.Enabled   := False;
end;

procedure TFormPedidos.CurrQtdeExit(Sender: tObject);
begin
    if (wTecla = 'vk_Escape') then
       exit;
    if (ActiveControl.Name = 'Bit_Cancelar') or (ActiveControl.Name = 'Bit_Sair') or
       (ActiveControl.Name = 'CbRef') or (ActiveControl.Name = 'SpPesquisa') or
       (ActiveControl.Name = 'EdDescricao') or (ActiveControl.Name = 'DBGridItensPed')or
       ((ActiveControl.Name = 'Bit_Kardex') or (ActiveControl.Name = 'CbAlmox1') or (ActiveControl.Name = 'DBeAlmox') and (Bit_Kardex.Visible=True)) then
       exit;
    {verifica se foi digitado o item para obrigar colocar a qtde}
    if (CbRef.Text <> '') then
       begin
           if CurrQtde.Value = 0 then
              begin
                  uteis.aviso('Informe a quantidade de produto!');
                  CurrQtde.SetFocus;
              end
           else
              begin
                  if DataMovimento.CdsPedidos.State in [dsBrowse,dsEdit] then
                     begin
                         if (wAlterar = True) then
                            begin
                                wSigla := DataMovimento.CdsPedItemPTI_SIGLA.AsString;
                            end
                         else
                            begin
                                wSigla := CdsConsultaEstoquePTI_SIGLA.AsString;
                            end;
                     end
                  else
                     begin
                         if (wAlterar = False) then
                            begin
                                wSigla := CdsConsultaEstoquePTI_SIGLA.AsString;
                            end
                         else
                            begin
                                wSigla := DataMovimento.CdsPedItemPTI_SIGLA.AsString;
                            end;
                     end;
                  //
                  if (FrmMenu.wAtualiza_Estoque = 'P') then  //Atualiza Reserva pelo pedido
                     begin
                         {Verifica se no tipo de produto atualiza o estoque}
                         if ((CdsConsultaEstoquePTI_ATUALIZAR_ESTOQUE.AsString = 'S')
                         and(wTipoAtEstoque = 'S')) then
                            begin
                                if (CdsConsultaEstoquePGR_ATUALIZA_ESTOQUE.AsString = 'S') then
                                   begin
                                       if (CurrQtde.Value <= (CurrSaldo.Value + w_Saldo_Anterior)) then {}
                                          begin
                                              Incluir_Qtde_Pedido;
                                          end
                                       else
                                          begin
                                              uteis.aviso('Saldo insulficiênte para este pedido !');
                                              w_Dif_Qtde     := 0;
                                              wSaldoAtual    := 0;
                                              CurrQtde.Value := w_Old_Qtde;
                                              wSaldoAtual    := (CurrSaldo.Value + w_Saldo_Anterior);
//                                              if (wSaldoAtual > 0) then
//                                                 CurrQtde.SetFocus
//                                              else
//                                                 CbRef.SetFocus;
                                              HabilitaComponentes;
                                              HabDadosItemAlterar;
                                              LimpaItem;
                                              CbRef.SetFocus;
//                                              DBGridItensPed.SetFocus;
                                          end;
                                   end
                                else
                                   begin
                                       if ((CdsConsultaEstoquePGR_CODIGO.IsNull)
                                       or (CdsConsultaEstoquePGR_CODIGO.AsString = '')) then
                                          begin
                                             if (CurrQtde.Value <= (CurrSaldo.Value + w_Saldo_Anterior)) then {}
                                                begin
                                                    Incluir_Qtde_Pedido;
                                                end
                                             else
                                                begin
                                                    uteis.aviso('Saldo insulficiênte para este pedido !');
                                                    w_Dif_Qtde     := 0;
                                                    wSaldoAtual    := 0;
                                                    CurrQtde.Value := w_Old_Qtde;
                                                    wSaldoAtual    := (CurrSaldo.Value + w_Saldo_Anterior);
      //                                              if (wSaldoAtual > 0) then
      //                                                 CurrQtde.SetFocus
      //                                              else
      //                                                 CbRef.SetFocus;
                                                    HabilitaComponentes;
                                                    HabDadosItemAlterar;
                                                    LimpaItem;
                                                    CbRef.SetFocus;
//                                                    DBGridItensPed.SetFocus;
                                                end;
                                          end;
                                   end;
                            end
                         else
                            begin
                               if (wTipoAtEstoque = 'S') then
                                  begin
                                     if (CurrQtde.Value <= (CurrSaldo.Value + w_Saldo_Anterior)) then {}
                                        begin
                                            Incluir_Qtde_Pedido;
                                        end
                                     else
                                        begin
                                            uteis.aviso('Saldo insulficiênte para este pedido !');
                                            w_Dif_Qtde     := 0;
                                            wSaldoAtual    := 0;
                                            CurrQtde.Value := w_Old_Qtde;
                                            wSaldoAtual    := (CurrSaldo.Value + w_Saldo_Anterior);
      //                                      if (wSaldoAtual > 0) then
      //                                         CurrQtde.SetFocus
      //                                      else
      //                                         CbRef.SetFocus;
                                            HabilitaComponentes;
                                            HabDadosItemAlterar;
                                            LimpaItem;
                                            CbRef.SetFocus;
      //                                      DBGridItensPed.SetFocus;
                                        end;
                                  end
                               else
                               if (wTipoAtEstoque = 'N') then
                                  begin
                                     Incluir_Qtde_Pedido;
                                  end;
                            end;
                     end
                  else
                     begin
                         Incluir_Qtde_Pedido;
                     end;
              end;
       end;
end;

procedure TFormPedidos.BitConfirmarClick(Sender: tObject);
Var
wRefer : String;
begin
    BitConfirmar.SetFocus;
    bVenda := False;
    CalculaVariacao;
    if (CurrTotVar.Value = CurrQtdeProd.Value) then
       begin
           if (Verifica_Saldo_Variacao = False) then
              begin
                  Mostra_Saldo(EdtRef.text);
                  uteis.aviso('Saldo insuficiênte para este pedido !'+#13#10+'Verifique as Quantidade das variações !');
                  CurrVAR1.Value := w_old_Variacao1;
                  CurrVAR2.Value := w_old_Variacao2;
                  CurrVAR3.Value := w_old_Variacao3;
                  CurrVAR4.Value := w_old_Variacao4;
                  CurrVAR5.Value := w_old_Variacao5;
                  CurrVAR6.Value := w_old_Variacao6;
                  CurrVAR7.Value := w_old_Variacao7;
                  CurrVAR8.Value := w_old_Variacao8;
                  CurrVar1.SetFocus;
                  CurrVar1.SelectAll;
              end
           else
              begin
                  GbItem.Enabled       := True;
                  Pn_Relatorio.Enabled := True;
                  Pn_Relatorio.Enabled := True;
                  PanVariacao.Visible  := false;
                  {Grava na tabela temporaria a diferença alterada}
                  Mostra_Saldo(CbRef.Text);
                  HabDadosItemAlterar;
                  Bit_Gravar.Enabled   := False;
                  Bit_Cancelar.Enabled := False;
                  BuscaSaldo(CbRef.Text);
                  CurrPrecoBruto.SetFocus;
                  CurrPrecoBruto.SelectAll;
              end;
       end
    else
       begin
           uteis.aviso('A Quantidade informada é diferente do Total das Variações !');
           CurrVAR1.SetFocus;
           CurrVar1.SelectAll;
       end;
end;

procedure TFormPedidos.BitCancelItemClick(Sender: tObject);
begin
    if DataMovimento.CdsPedidos.State in [dsEdit] then
       begin
           if (DataMovimento.CdsPedidos.State = DsInsert) then
              begin
                  if (FrmMenu.wNumer_Pedido = 'A') then   //Numeraçao automatica
                     SequenciadorPRC(DataCadastros.SQLConnection1, dbInicio.Empresa.EMP_CODIGO ,'PED0000', 'PED_CODIGO', 1, EdtPed_codigo.Text);
              end;
          DataMovimento.CdsPedidos.Cancel;
       end;
    GbItem.Enabled := True;
    //HabilitaComponentes;
    HabDadosItemAlterar;
    Pn_Relatorio.Enabled := True;
    Pn_Relatorio.Enabled := True;
    PanVariacao.Visible  := false;
    BuscaSaldo(CbRef.Text);
    CurrQtde.SetFocus;
    CurrQtde.SelectAll;
end;

procedure TFormPedidos.CalculaVariacao;
begin
    CurrTotVar.Value := (CurrVAR1.Value+
                         CurrVAR2.Value+
                         CurrVAR3.Value+
                         CurrVAR4.Value+
                         CurrVAR5.Value+
                         CurrVAR6.Value+
                         CurrVAR7.Value+
                         CurrVAR8.Value);
end;

procedure TFormPedidos.CurrVar1Click(Sender: tObject);
begin
    CurrVar1.SelectAll;
end;

procedure TFormPedidos.CurrVar2Click(Sender: tObject);
begin
    CurrVar2.SelectAll;
end;

procedure TFormPedidos.CurrVar3Click(Sender: tObject);
begin
    CurrVar3.SelectAll;
end;

procedure TFormPedidos.CurrVar4Click(Sender: tObject);
begin
    CurrVar4.SelectAll;
end;

procedure TFormPedidos.CurrVar5Click(Sender: tObject);
begin
    CurrVar5.SelectAll;
end;

procedure TFormPedidos.CurrVar6Click(Sender: tObject);
begin
    CurrVar6.SelectAll;
end;

procedure TFormPedidos.CurrVar7Click(Sender: tObject);
begin
    CurrVar7.SelectAll;
end;

procedure TFormPedidos.CurrVar8Click(Sender: tObject);
begin
    CurrVar8.SelectAll;
end;

procedure TFormPedidos.ScrollBox1Enter(Sender: tObject);
begin
    DbePedObs1.SetFocus;
end;

procedure TFormPedidos.ChkDesctoClick(Sender: tObject);
begin
    HabilitaDescto;
end;

procedure TFormPedidos.RadDescPorcEnter(Sender: tObject);
begin
    if DataMovimento.CdsPedidos.State in [dsBrowse] then
       DataMovimento.CdsPedidos.Edit;
end;

procedure TFormPedidos.RadDescValorEnter(Sender: tObject);
begin
    if DataMovimento.CdsPedidos.State in [dsBrowse] then
       DataMovimento.CdsPedidos.Edit;
end;

procedure TFormPedidos.CbFreteTExit(Sender: tObject);
begin
    if (CbTransp1.Text <> '') and (CbFreteT.Text = '') then
       begin
           uteis.aviso('Informe a condição do frete da transportadora !');
           CbFreteT.SetFocus;
           CbFreteT.SelectAll;
       end
    else   
    if (CbFreteT.ItemIndex <> 0) and (CbTransp1.Text = '') then
       begin
           uteis.aviso('Informe a transportadora !');
           DbeTRP_CODIGO.SetFocus;
           DbeTRP_CODIGO.SelectAll;
       end;
end;

procedure TFormPedidos.CbFreteRExit(Sender: tObject);
begin
    if (CbRedesp1.Text <> '') and (CbFreteR.Text = '') then
       begin
           uteis.aviso('Informe a condição do frete da transportadora-redespacho !');
           CbFreteR.SetFocus;
           CbFreteR.SelectAll;
       end
    else   
    if (CbFreteR.ItemIndex <> 0) and (CbRedesp1.Text = '') then
       begin
           uteis.aviso('Informe o Redespacho !');
           DbeTrp_Redesp.SetFocus;
           DbeTrp_Redesp.SelectAll;
       end;

end;

procedure TFormPedidos.CalculaTup;
Var
 wQtdeTup : Currency;
begin
    Screen.Cursor := crHourGlass;
    If DataMovimento.CdsPedItem.Active = true then
       begin
           //Faz calculo dos totais
           DataMovimento.CdsPedItem.DisableControls;
           {Limpar variaveis e totais}
           wQtdeTup := 0;
           DataMovimento.CdsPedItem.First;          //first deixa dsBrowse
           While not DataMovimento.CdsPedItem.EOF do
             Begin
                 DataCadastros.sqlUpdate.Close;
                 DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS','SELECT F1.FTC_TUP FROM FTC0000 F1','WHERE F1.PRD_REFER = '''+DataMovimento.CdsPedItemPRD_REFER.TEXT+'''','F1.PRD_REFER','F1.');
                 DataCadastros.sqlUpdate.Open;
                 if (not DataCadastros.sqlUpdate.IsEmpty) then
                    begin
                        wQtdeTup := wQtdeTup + (DataMovimento.CdsPedItemPRF_QTDE.AsCurrency * DataCadastros.sqlUpdate.FieldByName('FTC_TUP').AsCurrency);
                    end;
                 DataMovimento.CdsPedItem.Next;
             end;
           CurrTotups.Value := wQtdeTup;
           if (CurrTotups.Value>0) then
              CurrVlTups.Value := CurrTotal.Value/CurrTotups.Value
           else
              if (CurrTotups.value = 0) then
                 CurrVlTups.Value := 0;
           DataMovimento.CdsPedItem.EnableControls;
       end;
    Screen.Cursor := crDefault;
end;

procedure TFormPedidos.Bit_KardexClick(Sender: tObject);
begin
  if (CbRef.Text <> EmptyStr) then
  begin

    if (EdtPed_codigo.Text <> '') then
       begin
           if (CbRef.Text <> '') then
              begin
                  try
                    try
                      FrmKardexPedido := TFrmKardexPedido.Create(Application);
                      FrmKardexPedido.ShowModal;
                    finally
                      FrmKardexPedido.Destroy;
                      FrmKardexPedido := nil;
                      if (CurrPrecoBruto.Value=0) then
                         begin
                             CurrPrecoBruto.SetFocus;
                             CurrPrecoBruto.SelectAll;
                         end;
                      if (CurrQtde.Value=0) then
                         begin
                             CurrQtde.SetFocus;
                             CurrQtde.SelectAll;
                         end
                      else
                         begin
                             CurrQtde.SetFocus;
                         end;
                    end;
                  except
                      //beep;
                      uteis.erro  ('Ocorreu um erro na criação do formulário!');
                  end;
              end
           else
              begin
                  uteis.aviso('Informe a Referência !');
                  DBGridItensPed.SetFocus;
              end;
       end
    else
       begin
           uteis.aviso('Informe o número do pedido ! ');
           EdtPed_codigo.SetFocus;
           EdtPed_codigo.SelectAll;
       end;
  end else
  begin
    Bit_Estoque.Click;
  end;
end;

procedure TFormPedidos.DbePedObs7KeyPress(Sender: tObject; var Key: Char);
begin
    if (key = #13) then
       begin
           DBEdit26.SetFocus;
           Key := #0;
       end;
end;

procedure TFormPedidos.Processo_Verificar;
begin
    if (EdtPed_codigo.Text <> '') then
       begin
           if (CbRef.Text <> '') then
              begin
                  if (DataMovimento.CdsPedItem.IsEmpty = False) then
                     begin
                         if (DataMovimento.CdsPedItem.Locate('PRD_REFER',CbRef.Text,[])= False) then
                            begin
                                w_Saldo_Anterior := 0;
                                wIncluir         := True;
                                BuscaProduto;
                                {marcio - almox do anterior } //DBeAlmox.Text := FrmMenu.wPmt_Amx_Venda;
                                DBeAlmox.Text := StrZero(DBeAlmox.Text,DBeAlmox.MaxLength);
                                //  esta linha da erro dataset not edit .... marcio-> DBeAlmox.Field.Text := StrZero(DBeAlmox.Text,DBeAlmox.MaxLength);
                                CbAlmox1.TextoLocalizar := StrZero(DBeAlmox.Text,DBeAlmox.MaxLength);
                                CbAlmox1.Localizar      := True;
                                if (DataMovimento.CdsPedidos.State in [dsBrowse]) then
                                   DataMovimento.CdsPedidos.Edit;
                            end
                         else
                            begin
                                if (Copy(CbRef.Text,1,4) <> '9999') then
                                   begin
                                       MessageDlg('Referência informada já cadastrada !',mtWarning,[mbOK],0);

                                             w_Saldo_Anterior     := DataMovimento.CdsPedItemPRF_QTDE.AsCurrency;
                                             BuscaSaldo(CbRef.Text);
                                             EdDescricao.Text     := DataMovimento.CdsPedItemPRF_PRDDESCRI.AsString;
                                             EdComplemento.Text   := DataMovimento.CdsPedItemPRF_COMPL_DESCRI.AsString;
                                             CurrQtde.Value       := DataMovimento.CdsPedItemPRF_QTDE.AsCurrency;
                                             CurrDesc1.Value      := DataMovimento.CdsPedItemPRF_IDESCTO1.AsCurrency;
                                             CurrDesc2.Value      := DataMovimento.CdsPedItemPRF_IDESCTO2.AsCurrency;
                                             CurrIpi.Value        := DataMovimento.CdsPedItemPRF_IPIALIQ.AsCurrency;
                                             CurrPreco.Value      := DataMovimento.CdsPedItemPRF_PRECO.AsCurrency;
                                             CurrPrecoBruto.Value := DataMovimento.CdsPedItemPRF_PRECO_BRUTO.AsCurrency;
                                             wIncluir             := False;
                                             wAlterar             := True;

                                   end;
                            end;
                     end
                  else
                     begin
                         w_Saldo_Anterior := 0;
                         BuscaProduto;
                     end;
              end;
           if (wPedItemDesc = 'S') then
              begin
                  begin
                      EdDescricao.SetFocus;
                  end
              end
           else
              CurrQtde.SetFocus;
           //

       end
    else
       begin
           uteis.aviso('Não há pedido selecionado para inclusão de itens !');
       end;
end;

procedure TFormPedidos.BTN_DUPLICARClick(Sender: tObject);
Var
  wProximo_Pedido : String;
begin
    if (EdtPed_codigo.Text <> '') then
       begin
           if (DataMovimento.CdsPedidosPED_SITUACAO.AsString = 'F') then
              begin
                 wProximo_Pedido := Copy(EdtPed_codigo.Text,1,6)+Atribui_Letra_Pedido(EdtPed_codigo.text);
                 DataCadastros.sqlUpdate.Close;
                 DataCadastros.SqlUpdate.sql.text :=SQLDEF('PEDIDOS','Select P1.PED_CODIGO from PED0000 P1','Where PED_CODIGO = '''+wProximo_Pedido+'''','P1.PED_CODIGO','P1.');
                 DataCadastros.sqlUpdate.Open;
                 if (DataCadastros.sqlUpdate.IsEmpty = False) then
                    begin
                        uteis.aviso(pchar('Existe pedido duplicado com o Nº: '+wProximo_Pedido+' !'));
                        DataCadastros.sqlUpdate.Close;
                        BTN_DUPLICAR.SetFocus;
                    end
                 else
                    begin
                        try
                          try
                            wBotao             := 'D'; //Botao Duplicar
                            if (RadDescValor.checked) then
                               begin
                                   uteis.aviso(pchar('Atenção o pedido tem desconto por valor.'+#13#10+'O pedido será duplicado.'+#13#10+'O valor do desconto não fará parte do pedido duplicado.'+#13#10+'Favor verificar o desconto do pedido Duplicado.'));
                               end;
                            FormPedidoDuplicar := TFormPedidoDuplicar.Create(Application);
                            FormPedidoDuplicar.Edt_Cod_Pedido.Text  := EdtPed_codigo.Text;
                            FormPedidoDuplicar.Edt_Nome_Pedido.Text := CbClientes1.Text;

                            FormPedidoDuplicar.Edt_Cod_Cliente.Text  := DBeCli_codigo.Text;
                            FormPedidoDuplicar.edClienteDestino.Text := DBeCli_codigo.Text;

                            FormPedidoDuplicar.ShowModal;
                          finally
                            begin
                                FormPedidoDuplicar.Destroy;
                                FormPedidoDuplicar           := nil;
                                Pagecontrol1.ActivePageIndex := 0;
                                Screen.OnActiveControlChange := mudaCorCampos;
                                wIncluir                     := false;
                            end;
                          end;
                        except
                            //beep;
                            uteis.erro  ('Ocorreu um erro na criação do formulário!');
                        end;
                    end;
              end
           else
              begin
                  uteis.aviso('Este pedido não pode ser duplicado. Pedido já faturado !');
                  EdtPed_codigo.Enabled := true;
                  EdtPed_codigo.SetFocus;
              end;
       end
    else
       begin
           uteis.aviso('Informe o Número do Pedido !');
           EdtPed_codigo.Enabled := true;
           EdtPed_codigo.SetFocus;
       end;
end;

procedure TFormPedidos.ALTERAR_VALOR_PEDIDO;
begin
    try
      wSql1 := 'UPDATE PED0000 SET PED_VLTOTAL_LIQ = '+ValorAmericano(FloatToStr(CurrSubTotal.Value))+
                                 ',PED_VLTOTAL_BRUTO = '+ValorAmericano(FloatToStr(CurrTotal.Value))+
                                 ',PED_VLTOTAL_IPI = '+ValorAmericano(FloatToStr(CurrTotIPI.Value))+
                                 ',PED_TOTUPS      = '+ValorAmericano(FloatToStr(CurrTotups.Value))+
                                 ',PED_VLTUPS      = '+ValorAmericano(FloatToStr(CurrVlTups.Value));
      DataMovimento2.sqlaux2.Close;
      DataMovimento2.sqlaux2.sql.text := SqlDef('PEDIDOS',wSql1,' WHERE PED_CODIGO = '''+EdtPed_codigo.Text+'''','','');
      DataMovimento2.sqlaux2.Execute;
    except on E:EdataBaseError do
       uteis.erro  (pchar('Erro ao atualizar a tabela de pedidos !'+e.message));
    end;
end;

procedure TFormPedidos.DBEVLFRETEExit(Sender: tObject);
begin
    if (DBEVLFRETE.Text <> '0') then
       begin
          if (DataMovimento.CdsPedItem.Active) then
             begin
                CalculaPed;
                DataMovimento.CdsPedItem.First;
             end;
       end;
end;

procedure TFormPedidos.DBEVLDESPExit(Sender: tObject);
begin
    if (DBEVLDESP.Text <> '0') then
       begin
          if (DataMovimento.CdsPedItem.Active) then
             begin
                CalculaPed;
                DataMovimento.CdsPedItem.First;
             end;
       end;
end;

procedure TFormPedidos.DBEVLSEGUROExit(Sender: tObject);
begin
    if (DBEVLSEGURO.Text <> '0') then
       begin
          if (DataMovimento.CdsPedItem.Active) then
             begin
                CalculaPed;
                DataMovimento.CdsPedItem.First;
             end;
       end;
end;

procedure TFormPedidos.ChkDesctoEnter(Sender: tObject);
begin
    HabilitaDescto;
 
end;

procedure TFormPedidos.CurrDesctoPc1Enter(Sender: tObject);
begin
    CurrDesctoPc1.SelectAll;
end;

procedure TFormPedidos.CurrDesctoPc2Enter(Sender: tObject);
begin
    CurrDesctoPc2.SelectAll;
end;

procedure TFormPedidos.DbeTRP_CODIGOEnter(Sender: tObject);
begin
    DbeTRP_CODIGO.SelectAll;
end;

procedure TFormPedidos.DbeTrp_RedespEnter(Sender: tObject);
begin
    DbeTrp_Redesp.SelectAll;
end;

procedure TFormPedidos.Habilita_Kardex;
begin

end;

function TFormPedidos.RetornaPercentualComissao(
  wCodITem: String): Currency;
var
wSQL,wWhere:string;
i :Integer;
begin
{ Funçao calcula o percentual de comissão somente na inclusão do item, na alteração no recalculará }
   if frmmenu.PARAMENTROS.PAR_COMISSAO_ITEM = 'S' then
      begin
         wSQL   := 'Select P1.PRD_COMISSAO,P2.PTI_COMISSAO,P3.PGR_COM_PERC,P3.PGR_COMISS from PRD0000 P1 left join PRD_TIPO P2 on (P2.PTI_CODIGO = P1.PTI_CODIGO) left join PRD_GRUPO P3 on(P3.PGR_CODIGO = P1.PGR_CODIGO)';
         wWhere := ' where P1.PRD_REFER = '''+wCodItem+'''';

              DataMovimento2.sqlaux.close;
              DataMovimento2.sqlaux.sql.text := SqlDef('PRODUTOS',wSQL,wWhere,'','P1.');
              DataMovimento2.sqlaux.Open;
              if DataMovimento2.sqlaux.IsEmpty = false then
                 begin
                     // se tem comissao no produto
                     if dataMovimento2.sqlaux.FieldByName('PRD_COMISSAO').AsCurrency > 0 then
                        begin
                            Result := dataMovimento2.sqlaux.FieldByName('PRD_COMISSAO').AsCurrency;
                        end
                     else
                        // se tem comissao no tipo
                        if dataMovimento2.sqlaux.FieldByName('PTI_COMISSAO').AsCurrency > 0 then
                          begin
                              Result := dataMovimento2.sqlaux.FieldByName('PTI_COMISSAO').AsCurrency;
                          end
                        else
                         // se tem comissao no grupo
                         if dataMovimento2.sqlaux.FieldByName('PGR_COM_PERC').AsCurrency > 0 then
                             begin
                                Result := dataMovimento2.sqlaux.FieldByName('PGR_COM_PERC').AsCurrency;
                             end
                         else
                            Result := DBeComis1.Field.Value;
                 end
              else
                 Result := 0;
       end
   else
      if frmmenu.PARAMENTROS.PAR_COMISSAO_ESCALA = 'S' then
         begin
         wSQL   := 'select t1.PRD_REFER,t1.LIN_CODIGO,t2.MKP_CODIGO,t2.LIN_CODIGO,t2.MKP_COMIS1,t2.MKP_COMIS2,t2.MKP_COMIS3,t2.MKP_COMIS4,t2.MKP_COMIS5,t2.MKP_COMIS6,t2.MKP_TIPOCALCULO,t2.MKP_AC_DC FROM PRD0000 t1 left join MKP0000 t2 ON  (t1.LIN_CODIGO = t2.LIN_CODIGO)';
         wWhere := ' where T1.PRD_REFER = '''+wCodItem+'''';
         DataMovimento2.sqlaux.close;
         DataMovimento2.sqlaux.sql.text := SqlDef('PRODUTOS',wSQL,wWhere,'','T1.');
         DataMovimento2.sqlaux.Open;
           if DataMovimento2.sqlaux.IsEmpty = false then
              begin
              {carregar comissoes no array}
              wTabelacomissao[1]  := dataMovimento2.sqlaux.FieldByName('MKP_COMIS1').AsCurrency;
              wTabelacomissao[2]  := dataMovimento2.sqlaux.FieldByName('MKP_COMIS2').AsCurrency;
              wTabelacomissao[3]  := dataMovimento2.sqlaux.FieldByName('MKP_COMIS3').AsCurrency;
              wTabelacomissao[4]  := dataMovimento2.sqlaux.FieldByName('MKP_COMIS4').AsCurrency;
              wTabelacomissao[5]  := dataMovimento2.sqlaux.FieldByName('MKP_COMIS5').AsCurrency;
              wTabelacomissao[6]  := dataMovimento2.sqlaux.FieldByName('MKP_COMIS6').AsCurrency;
              { carregar preços do produto }
              wTabelapreco[1]  := CdsConsultaEstoquePRD_PVENDA.AsCurrency;
              wTabelapreco[2]  := CdsConsultaEstoquePRD_PVENDA2.AsCurrency;
              wTabelapreco[3]  := CdsConsultaEstoquePRD_PVENDA3.AsCurrency;
              wTabelapreco[4]  := CdsConsultaEstoquePRD_PVENDA4.AsCurrency;
              wTabelapreco[5]  := CdsConsultaEstoquePRD_PVENDA5.AsCurrency;
              wTabelapreco[6]  := CdsConsultaEstoquePRD_PVENDA6.AsCurrency;
              //
              { CALCULAR COMISSAO PROPORCIONAL PELA TABELA ESCALONADA }
              for i := 1 to 6 do
                begin
                // Calculo para Acrescimeto progressivo nos preço
                if dataMovimento2.sqlaux.FieldByName('MKP_AC_DC').AsString = 'A' then
                  begin
                    // testar o primeiro - preço menor que o primeiro preço PVENDA
                    if CurrPreco.Value < wTabelapreco[1] then
                       Result :=  wTabelacomissao[1];
                    //  para preço exato
                    if CurrPreco.Value = wTabelapreco[i] then
                        Result :=  wTabelacomissao[i];
                    // pega ultima comissao valida se tem preco na tabela
                    if CurrPreco.Value > wTabelapreco[i] then
                        if wTabelapreco[i] > 0 then
                           Result :=  wTabelacomissao[i];

                    // se preço não é exato da tabela verificar entre qual tabela de preço o preço vendido se encontra
                    if (CurrPreco.Value > wTabelapreco[i]) and (CurrPreco.Value <= wTabelapreco[i+1]) then
                         // se opção de calculo é De até
                         if  dataMovimento2.sqlaux.FieldByName('MKP_TIPOCALCULO').AsString = 'D' then
                           Result := wTabelacomissao[i]
                         else
                           // se opçao de calculo é proporcional - fazer a regra de tres
                         Result :=  CurrPreco.Value * wTabelacomissao[i] / wTabelapreco[i];
                   end
                 else
                   // Calculo para Desconto progressivo nos preços (mesma rotina do aumento com os sinais > < invertidos)
                   begin
                    // se o preço já é maior que o primeira tabela então pegar maior comissao
                    if CurrPreco.Value > wTabelapreco[1] then
                      Result :=  wTabelacomissao[1];
                    //  para preço exato
                    if CurrPreco.Value = wTabelapreco[i] then
                         Result :=  wTabelacomissao[i];
                     // pega ultima comissao valida se tem preco na tabela
                    if CurrPreco.Value < wTabelapreco[i] then
                        if wTabelapreco[i] < 0 then
                           Result :=  wTabelacomissao[i];
                    // se preço não é exato da tabela verificar entre qual tabela de preço o preço vendido se encontra
                    if (CurrPreco.Value < wTabelapreco[i]) and (CurrPreco.Value >= wTabelapreco[i+1]) then
                         // se opção de calculo é De até
                         if  dataMovimento2.sqlaux.FieldByName('MKP_TIPOCALCULO').AsString = 'D' then
                           Result := wTabelacomissao[i]
                         else
                           // se opçao de calculo é proporcional - fazer a regra de tres
                         Result :=  CurrPreco.Value * wTabelacomissao[i] / wTabelapreco[i];


                   end;
                 end; //for


              end;
         end
      else
         // comissao somente pelo percentual do Pedido 
         Result := 0;

end;



procedure TFormPedidos.Alterarcomisso1Click(Sender: tObject);
begin

  HabilitaComissaoItem;

end;

procedure TFormPedidos.BtnComissConfirmaClick(Sender: tObject);
begin
 if uteis.confirmacao ( ('Confirma a alteração da comissão de : '+DataMovimento.CdsPedItemPRD_REFER.asString+' - '+DataMovimento.CdsPedItemPRF_PRDDESCRI.AsString+' ?'))=mryes then
    DataMovimento.CdsPedItem.ApplyUpdates(0)
 else
    DataMovimento.CdsPedItem.Cancel;

DesabilitaComissaoItem;
end;

procedure TFormPedidos.HabilitaComissaoItem;
begin

  {Visible true no painel da comissao e desabilita os compoentens do form}
  PanComissao.Visible  := true;
  DBEditNovacomissao.SetFocus;
  Pn_Dados.Enabled     := false;

end;

procedure TFormPedidos.DesabilitaComissaoItem;
begin

  {Visible false no painel da comissao e habilita os compoentens do form}
  PanComissao.Visible  := False;
  Pn_Dados.Enabled     := True;

end;

procedure TFormPedidos.BtnComissCAncelaClick(Sender: tObject);
begin
  DataMovimento.CdsPedItem.Cancel;
  DesabilitaComissaoItem;
end;

procedure TFormPedidos.DBEditNovacomissaoKeyPress(Sender: tObject; var Key: Char);
begin
   if key = #13 then
      begin
          BtnComissConfirma.Click;
          Key := #0;
      end;
end;

procedure TFormPedidos.ConfiguraGRade;
begin
   {Verifica parametros e configura a grade}
    {Verifica o Parametro de Variaçao}
    if (FrmMenu.wVariacoes = 'S') then
       begin
           Grb_Var.Visible := True;
           DBGridItensPed.Height := 117;
           //DBGridItensPed.Width  := 825;
       end
    else
       begin
           Grb_Var.Visible := False;
           DBGridItensPed.Height := 165;
           //DBGridItensPed.Width  := 825;
       end;
      PopupMenu1.Items[3].Visible       := true;
    {
     DBGridItensPed.Columns[0].Width := 20;  //id
     DBGridItensPed.Columns[1].Width := 90;  //Referencia
     DBGridItensPed.Columns[2].Width := 310; //Descricao
     DBGridItensPed.Columns[3].Width := 68;  //Qtde
     DBGridItensPed.Columns[4].Width := 65;  //Qtde Fat
     DBGridItensPed.Columns[5].Width := 72;  //PReco
     DBGridItensPed.Columns[6].Width := 78;  //Total
     DBGridItensPed.Columns[7].Width := 30;  //Ipi
     if (FrmMenu.wBtnDuplica = 'S') then
        begin
          DBGridItensPed.Columns[8].Visible := True;
          DBGridItensPed.Columns[8].Width   := 14;  //Origem
          DBGridItensPed.Columns[2].Width := 300; //Descricao
        end
     else
        begin
          DBGridItensPed.Columns[8].Visible := False;
          DBGridItensPed.Columns[2].Width := 314; //Descricao
        end;
     DBGridItensPed.Columns[9].Width   := 45;  //Comissao
     DBGridItensPed.Columns[9].Visible := True;//comissao
       }

end;

procedure TFormPedidos.ExcluirItem;
begin
  if (DataMovimento.CdsPedItem.IsEmpty = False) then
  begin

      if DataMovimento.CdsPedidosPED_SITUACAO.AsString <> 'T' then
      begin
        if (DataMovimento.CdsPedItemPRF_SITUACAO.AsString <> 'F') then
        begin
          uteis.aviso('O item deste pedido não pode ser excluído. O item encontra-se faturado !');
          VerificaSitPedido;
        end
      else
       begin
         if uteis.confirmacao ( ('Confirma exclusão do item '''+DataMovimento.CdsPedItemPRD_REFER.asstring+''' ?'))=mryes then
         begin
           try
             Confirma_Exclusao_Item;
             SqlAtEstoque.Close;
             DataMovimento.CdsPedItem.Delete;
             DataMovimento.CdsPedItem.ApplyUpdates(0);
             DataMovimento.CdsPedItem.Refresh;
 //                                   dataCadastros.SQLConnection1.Commit(wTransacaoItem);
             LimpaItem;
             CalculaPed;
             DataMovimento.CdsPedItem.First;
             if wTups = 'S' then
              CalculaTup;
             ALTERAR_VALOR_PEDIDO;
             {Verifica se a Tabela dos Itens do Pedido esta Vazia, se
              estiver vazia habilita o Tipo para ser alterado}
             if (DataMovimento.CdsPedItem.IsEmpty) then
             begin
               wIncluiu_Itens := False;
             end;
           except on
             e:EDatabaseError do
             begin
               uteis.erro  (pchar('Erro ao excuir item !'+e.Message));
               DataCadastros.SQLConnection1.Rollback(wTRansacaoItem);
             end;
           end;
         end;
       end;
      end
    else
     begin
       uteis.aviso('O item deste pedido não pode ser excluído. o Pedido encontra-se faturado !');
       VerificaSitPedido;
     end;
 
  end
  else
 begin
     uteis.aviso('Não há item do pedido para ser excluído !');
     DBGridItensPed.SetFocus;
 end;
end;

procedure TFormPedidos.FormCreate(Sender: tObject);
begin
   w_Saldo_Anterior     := 0;
   Chk_Agregado.Checked := False;
   wAlterar             := False;
   wIncluiu_Itens       := False;
   wIncluir             := False;
   wAchouPed            := False;

   AtivaParametrosUsuarios;
   
end;

procedure TFormPedidos.CurrDesctoVlClick(Sender: tObject);
begin
    if ChkDescto.checked  then
       begin
           if DataMovimento.CdsPedidos.State in [dsBrowse] then
              DataMovimento.CdsPedidos.Edit;

       end;
end;

procedure TFormPedidos.CurrDesctoVlEnter(Sender: tObject);
begin
    CurrDesctoVl.SelectAll;
end;

procedure TFormPedidos.BuscaSaldo(pRefer: String);
begin
    wSql1     := 'Select P1.PRD_CODIGO,P1.PRD_REFER,P1.PRD_DESCRI,P1.PRD_COMPL,P2.PTI_SIGLA,P2.PTI_ATUALIZAR_ESTOQUE,P3.PGR_ATUALIZA_ESTOQUE,P1.PRD_PVENDA,P1.PRD_DCVAR1,P1.PRD_DCVAR2,P1.PRD_DCVAR3,P1.PRD_DCVAR4,P1.PRD_DCVAR5,';
    wSql2     := 'P1.PRD_DCVAR6,P1.PRD_DCVAR7,P1.PRD_DCVAR8,P1.PRD_PVENDA2,P1.PRD_PVENDA3,P1.PRD_PVENDA4,P1.PRD_PVENDA5,P1.PRD_PVENDA6,P1.PGR_CODIGO,I1.IPI_ALIQ,((P1.PRD_ESTOQUE + P1.PRD_ENTRADA)-(P1.PRD_SAIDA+P1.PRD_RESERVA+P1.PRD_EMPENHO)) as PRD_QDTE from PRD0000 P1 ';
    wSql3     := 'LEFT JOIN IPI0000 I1 ON (P1.IPI_CODIGO = I1.IPI_CODIGO) LEFT JOIN PRD_TIPO P2 ON (P2.PTI_CODIGO = P1.PTI_CODIGO) LEFT JOIN PRD_GRUPO P3 ON (P1.PGR_CODIGO = P3.PGR_CODIGO) ';

    wSeleciona := 'where P1.PRD_REFER = '''+CbRef.Text+'''';
    wOrdem     := 'P1.PRD_REFER ';
    //
    CdsConsultaEstoque.Close;
    CdsConsultaEstoque.CommandText := SQLDEF('PRODUTOS',wSql1+wSql2+wSql3,wSeleciona,wOrdem,'P1.');
    CdsConsultaEstoque.Open;
    if CdsConsultaEstoque.IsEmpty = false then
       begin
//           EdDescricao.Text := CdsConsultaEstoquePRD_DESCRI.AsString;
//           if (dbInicio.Empresa.wMultiAlmox = 'S') then
//              CurrSaldo.Value := Retorna_Saldo_Almox(CbRef.Text,DBeAlmox.Text)
//           else
              //CurrSaldo.Value := CdsConsultaEstoquePRD_QDTE.AsCurrency;  Fernando 09/02/2012
           CurrSaldo.Value := dbInicio.KardexRetornaSaldo(wProdCodigo,DBeAlmox.Text);
           if (wAlterar = False) then
              begin
                 CurrPreco.Value  := iif(((CdsConsultaEstoquePRD_PVENDA.AsCurrency = 0) and (wAlterar = True)),DataMovimento.CdsPedItemPRF_PRECO_BRUTO.AsCurrency,CdsConsultaEstoquePRD_PVENDA.AsCurrency);
                 CurrIpi.Value        := CdsConsultaEstoqueIPI_ALIQ.AsCurrency;
                 CurrPRecoBruto.Value := iif(((CdsConsultaEstoquePRD_PVENDA.AsCurrency = 0) and (wAlterar = True)),DataMovimento.CdsPedItemPRF_PRECO_BRUTO.AsCurrency,CdsConsultaEstoquePRD_PVENDA.AsCurrency);
              end;
           {se NÃO for desconto da nota então desconto no item}
           if ChkDescto.Checked = false then
              begin
                  If RadDescPorc.Checked  = true then
                     begin
                         CurrDesc1.Value := CurrDesctoPC1.Value;
                         CurrDesc2.Value := CurrDesctoPC2.Value;
                     end;
              end;
       end
    else
       begin
           uteis.aviso('Não há produto cadastrado com a referência informada !');
           CbRef.SetFocus;
           Exit;
       end;
end;

procedure TFormPedidos.CurrVar1Exit(Sender: tObject);
begin
    if (ActiveControl<> nil)
    and(ActiveControl.Name <> 'BitCancelItem')
    and(EdtPed_codigo.Text <> '') then
       begin
           SqlSaldo.Edit;
           SqlSaldo.FieldByName('PRD_VAR1').AsCurrency         := (SqlSaldo.FieldByName('PRD_VAR1').AsCurrency + w_old_variacao1);
           SqlSaldo.FieldByName('PRD_RESERVA_VAR1').AsCurrency := (SqlSaldo.FieldByName('PRD_RESERVA_VAR1').AsCurrency - w_old_variacao1);
           SqlSaldo.Post;
           if ((DBEdit2.Field.Value + DataMovimento.CdsPedItemPRF_VAR1.AsCurrency) > 0) then
              begin
//                  SqlSaldo.Edit;
//                  SqlSaldo.FieldByName('PRD_VAR1').AsCurrency         := (SqlSaldo.FieldByName('PRD_VAR1').AsCurrency + w_old_variacao1);
//                  SqlSaldo.FieldByName('PRD_RESERVA_VAR1').AsCurrency := (SqlSaldo.FieldByName('PRD_RESERVA_VAR1').AsCurrency - w_old_variacao1);
//                  SqlSaldo.Post;
                  if (CurrVar1.Value <= (DBEdit2.Field.Value + DataMovimento.CdsPedItemPRF_VAR1.AsCurrency)) then
                     begin
                        SqlSaldo.Edit;
                        SqlSaldo.FieldByName('PRD_RESERVA_VAR1').AsCurrency := (SqlSaldo.FieldByName('PRD_RESERVA_VAR1').AsCurrency + CurrVar1.Value);
                        SqlSaldo.FieldByName('PRD_VAR1').AsCurrency         := (SqlSaldo.FieldByName('PRD_VAR1').AsCurrency - CurrVar1.Value);
                        SqlSaldo.Post;
                        CalculaVariacao;
                     end
                  else
                     begin
                         uteis.aviso('Quantidade Informada é maior que o saldo do estoque !');
                         w_old_variacao1  := 0;
                         CurrVar1.Value   := 0;
                         CurrVar1.SetFocus;
                         CurrVar1.SelectAll;
                     end;
              end
           else
              begin
                  w_old_variacao1  := 0;
                  CurrVar1.Value   := 0;
              end;
       end;
end;

procedure TFormPedidos.CurrVar2Exit(Sender: tObject);
begin
    if (ActiveControl<> nil)
    and(ActiveControl.Name <> 'BitCancelItem')
    and(ActiveControl.Name <> 'CurrVar1') then
       begin
           SqlSaldo.Edit;
           SqlSaldo.FieldByName('PRD_VAR2').AsCurrency         := (SqlSaldo.FieldByName('PRD_VAR2').AsCurrency + w_old_variacao2);
           SqlSaldo.FieldByName('PRD_RESERVA_VAR2').AsCurrency := (SqlSaldo.FieldByName('PRD_RESERVA_VAR2').AsCurrency - w_old_variacao2);
           SqlSaldo.Post;
           //
           if ((DBEdit3.Field.Value + DataMovimento.CdsPedItemPRF_VAR2.AsCurrency) > 0) then
              begin
//                  SqlSaldo.Edit;
//                  SqlSaldo.FieldByName('PRD_VAR2').AsCurrency         := (SqlSaldo.FieldByName('PRD_VAR2').AsCurrency + w_old_variacao2);
//                  SqlSaldo.FieldByName('PRD_RESERVA_VAR2').AsCurrency := (SqlSaldo.FieldByName('PRD_RESERVA_VAR2').AsCurrency - w_old_variacao2);
//                  SqlSaldo.Post;
                  if (CurrVar2.Value <= (DBEdit3.Field.Value + DataMovimento.CdsPedItemPRF_VAR2.AsCurrency)) then
                     begin
                        SqlSaldo.Edit;
                        SqlSaldo.FieldByName('PRD_RESERVA_VAR2').AsCurrency := (SqlSaldo.FieldByName('PRD_RESERVA_VAR2').AsCurrency + CurrVar2.Value);
                        SqlSaldo.FieldByName('PRD_VAR2').AsCurrency         := (SqlSaldo.FieldByName('PRD_VAR2').AsCurrency - CurrVar2.Value);
                        SqlSaldo.Post;
                        CalculaVariacao;
                     end
                  else
                     begin
                         uteis.aviso('Quantidade Informada é maior que o saldo do estoque !');
                         w_old_variacao2  := 0;
                         CurrVar2.Value   := 0;
                         CurrVar2.SetFocus;
                         CurrVar2.SelectAll;
                     end;
              end
           else
              begin
                  w_old_variacao2  := 0;
                  CurrVar2.Value   := 0;
              end;
       end;
end;

procedure TFormPedidos.CurrVar3Exit(Sender: tObject);
begin
    if (ActiveControl<> nil)
    and(ActiveControl.Name <> 'BitCancelItem')
    and(ActiveControl.Name <> 'CurrVar1')
    and(ActiveControl.Name <> 'CurrVar2') then
       begin
           SqlSaldo.Edit;
           SqlSaldo.FieldByName('PRD_VAR3').AsCurrency         := (SqlSaldo.FieldByName('PRD_VAR3').AsCurrency + w_old_variacao3);
           SqlSaldo.FieldByName('PRD_RESERVA_VAR3').AsCurrency := (SqlSaldo.FieldByName('PRD_RESERVA_VAR3').AsCurrency - w_old_variacao3);
           SqlSaldo.Post;
           //
           if ((DBEdit4.Field.Value + DataMovimento.CdsPedItemPRF_VAR3.AsCurrency) > 0) then
              begin
//                  SqlSaldo.Edit;
//                  SqlSaldo.FieldByName('PRD_VAR3').AsCurrency         := (SqlSaldo.FieldByName('PRD_VAR3').AsCurrency + w_old_variacao3);
//                  SqlSaldo.FieldByName('PRD_RESERVA_VAR3').AsCurrency := (SqlSaldo.FieldByName('PRD_RESERVA_VAR3').AsCurrency - w_old_variacao3);
//                  SqlSaldo.Post;
                  if (CurrVar3.Value <= (DBEdit4.Field.Value + DataMovimento.CdsPedItemPRF_VAR3.AsCurrency)) then
                     begin
                        SqlSaldo.Edit;
                        SqlSaldo.FieldByName('PRD_RESERVA_VAR3').AsCurrency := (SqlSaldo.FieldByName('PRD_RESERVA_VAR3').AsCurrency + CurrVar3.Value);
                        SqlSaldo.FieldByName('PRD_VAR3').AsCurrency         := (SqlSaldo.FieldByName('PRD_VAR3').AsCurrency - CurrVar3.Value);
                        SqlSaldo.Post;
                        CalculaVariacao;
                     end
                  else
                     begin
                         uteis.aviso('Quantidade Informada é maior que o saldo do estoque !');
                         w_old_variacao3  := 0;
                         CurrVar3.Value   := 0;
                         CurrVar3.SetFocus;
                         CurrVar3.SelectAll;
                     end;
              end
           else
              begin
                  w_old_variacao3  := 0;
                  CurrVar3.Value   := 0;
              end;
       end;
end;

procedure TFormPedidos.CurrVar4Exit(Sender: tObject);
begin
    if (ActiveControl<> nil)
    and(ActiveControl.Name <> 'BitCancelItem')
    and(ActiveControl.Name <> 'CurrVar1')
    and(ActiveControl.Name <> 'CurrVar2')
    and(ActiveControl.Name <> 'CurrVar3') then
       begin
           SqlSaldo.Edit;
           SqlSaldo.FieldByName('PRD_VAR4').AsCurrency         := (SqlSaldo.FieldByName('PRD_VAR4').AsCurrency + w_old_variacao4);
           SqlSaldo.FieldByName('PRD_RESERVA_VAR4').AsCurrency := (SqlSaldo.FieldByName('PRD_RESERVA_VAR4').AsCurrency - w_old_variacao4);
           SqlSaldo.Post;
           if ((DBEdit5.Field.Value + DataMovimento.CdsPedItemPRF_VAR4.AsCurrency) > 0) then
              begin
//                  SqlSaldo.Edit;
//                  SqlSaldo.FieldByName('PRD_VAR4').AsCurrency         := (SqlSaldo.FieldByName('PRD_VAR4').AsCurrency + w_old_variacao4);
//                  SqlSaldo.FieldByName('PRD_RESERVA_VAR4').AsCurrency := (SqlSaldo.FieldByName('PRD_RESERVA_VAR4').AsCurrency - w_old_variacao4);
//                  SqlSaldo.Post;
                  if (CurrVar4.Value <= (DBEdit5.Field.Value + DataMovimento.CdsPedItemPRF_VAR4.AsCurrency)) then
                     begin
                        SqlSaldo.Edit;
                        SqlSaldo.FieldByName('PRD_RESERVA_VAR4').AsCurrency := (SqlSaldo.FieldByName('PRD_RESERVA_VAR4').AsCurrency + CurrVar4.Value);
                        SqlSaldo.FieldByName('PRD_VAR4').AsCurrency         := (SqlSaldo.FieldByName('PRD_VAR4').AsCurrency - CurrVar4.Value);
                        SqlSaldo.Post;
                        CalculaVariacao;
                     end
                  else
                     begin
                         uteis.aviso('Quantidade Informada é maior que o saldo do estoque !');
                         w_old_variacao4  := 0;
                         CurrVar4.Value   := 0;
                         CurrVar4.SetFocus;
                         CurrVar4.SelectAll;
                     end;
              end
           else
              begin
                  w_old_variacao4  := 0;
                  CurrVar4.Value   := 0;
              end;
       end;
end;

procedure TFormPedidos.CurrVar5Exit(Sender: tObject);
begin
    if (ActiveControl<> nil)
    and(ActiveControl.Name <> 'BitCancelItem')
    and(ActiveControl.Name <> 'CurrVar1')
    and(ActiveControl.Name <> 'CurrVar2')
    and(ActiveControl.Name <> 'CurrVar3')
    and(ActiveControl.Name <> 'CurrVar4') then
       begin
           SqlSaldo.Edit;
           SqlSaldo.FieldByName('PRD_VAR5').AsCurrency         := (SqlSaldo.FieldByName('PRD_VAR5').AsCurrency + w_old_variacao5);
           SqlSaldo.FieldByName('PRD_RESERVA_VAR5').AsCurrency := (SqlSaldo.FieldByName('PRD_RESERVA_VAR5').AsCurrency - w_old_variacao5);
           SqlSaldo.Post;
           if ((DBEdit6.Field.Value + DataMovimento.CdsPedItemPRF_VAR5.AsCurrency) > 0) then
              begin
//                  SqlSaldo.Edit;
//                  SqlSaldo.FieldByName('PRD_VAR5').AsCurrency         := (SqlSaldo.FieldByName('PRD_VAR5').AsCurrency + w_old_variacao5);
//                  SqlSaldo.FieldByName('PRD_RESERVA_VAR5').AsCurrency := (SqlSaldo.FieldByName('PRD_RESERVA_VAR5').AsCurrency - w_old_variacao5);
//                  SqlSaldo.Post;
                  if (CurrVar5.Value <= (DBEdit6.Field.Value + DataMovimento.CdsPedItemPRF_VAR5.AsCurrency)) then
                     begin
                        SqlSaldo.Edit;
                        SqlSaldo.FieldByName('PRD_RESERVA_VAR5').AsCurrency := (SqlSaldo.FieldByName('PRD_RESERVA_VAR5').AsCurrency + CurrVar5.Value);
                        SqlSaldo.FieldByName('PRD_VAR5').AsCurrency         := (SqlSaldo.FieldByName('PRD_VAR5').AsCurrency - CurrVar5.Value);
                        SqlSaldo.Post;
                         //
                        CalculaVariacao;
                     end
                  else
                     begin
                         uteis.aviso('Quantidade Informada é maior que o saldo do estoque !');
                         w_old_variacao5  := 0;
                         CurrVar5.Value   := 0;
                         CurrVar5.SetFocus;
                         CurrVar5.SelectAll;
                     end;
              end
           else
              begin
                  w_old_variacao5  := 0;
                  CurrVar5.Value   := 0;
              end;
       end;
end;

procedure TFormPedidos.CurrVar6Exit(Sender: tObject);
begin
    if (ActiveControl<> nil)
    and(ActiveControl.Name <> 'BitCancelItem')
    and(ActiveControl.Name <> 'CurrVar1')
    and(ActiveControl.Name <> 'CurrVar2')
    and(ActiveControl.Name <> 'CurrVar3')
    and(ActiveControl.Name <> 'CurrVar4')
    and(ActiveControl.Name <> 'CurrVar5') then
       begin
           SqlSaldo.Edit;
           SqlSaldo.FieldByName('PRD_VAR6').AsCurrency         := (SqlSaldo.FieldByName('PRD_VAR6').AsCurrency + w_old_variacao6);
           SqlSaldo.FieldByName('PRD_RESERVA_VAR6').AsCurrency := (SqlSaldo.FieldByName('PRD_RESERVA_VAR6').AsCurrency - w_old_variacao6);
           SqlSaldo.Post;
           if ((DBEdit7.Field.Value + DataMovimento.CdsPedItemPRF_VAR6.AsCurrency) > 0) then
              begin
//                  SqlSaldo.Edit;
//                  SqlSaldo.FieldByName('PRD_VAR6').AsCurrency         := (SqlSaldo.FieldByName('PRD_VAR6').AsCurrency + w_old_variacao6);
//                  SqlSaldo.FieldByName('PRD_RESERVA_VAR6').AsCurrency := (SqlSaldo.FieldByName('PRD_RESERVA_VAR6').AsCurrency - w_old_variacao6);
//                  SqlSaldo.Post;
                  if (CurrVar6.Value <= (DBEdit7.Field.Value + DataMovimento.CdsPedItemPRF_VAR6.AsCurrency)) then
                     begin
                        SqlSaldo.Edit;
                        SqlSaldo.FieldByName('PRD_RESERVA_VAR6').AsCurrency := (SqlSaldo.FieldByName('PRD_RESERVA_VAR6').AsCurrency + CurrVar6.Value);
                        SqlSaldo.FieldByName('PRD_VAR6').AsCurrency         := (SqlSaldo.FieldByName('PRD_VAR6').AsCurrency - CurrVar6.Value);
                        SqlSaldo.Post;
                         //
                        CalculaVariacao;
                     end
                  else
                     begin
                         uteis.aviso('Quantidade Informada é maior que o saldo do estoque !');
                         w_old_variacao6  := 0;
                         CurrVar6.Value   := 0;
                         CurrVar6.SetFocus;
                         CurrVar6.SelectAll;
                     end;
              end
           else
              begin
                  w_old_variacao6  := 0;
                  CurrVar6.Value   := 0;
              end;
       end;
end;

procedure TFormPedidos.CurrVar7Exit(Sender: tObject);
begin
    if (ActiveControl<> nil)
    and(ActiveControl.Name <> 'BitCancelItem')
    and(ActiveControl.Name <> 'CurrVar1')
    and(ActiveControl.Name <> 'CurrVar2')
    and(ActiveControl.Name <> 'CurrVar3')
    and(ActiveControl.Name <> 'CurrVar4')
    and(ActiveControl.Name <> 'CurrVar5')
    and(ActiveControl.Name <> 'CurrVar6') then
       begin
           SqlSaldo.Edit;
           SqlSaldo.FieldByName('PRD_VAR7').AsCurrency         := (SqlSaldo.FieldByName('PRD_VAR7').AsCurrency + w_old_variacao7);
           SqlSaldo.FieldByName('PRD_RESERVA_VAR7').AsCurrency := (SqlSaldo.FieldByName('PRD_RESERVA_VAR7').AsCurrency - w_old_variacao7);
           SqlSaldo.Post;
           if ((DBEdit8.Field.Value + DataMovimento.CdsPedItemPRF_VAR7.AsCurrency) > 0) then
              begin
//                  SqlSaldo.Edit;
//                  SqlSaldo.FieldByName('PRD_VAR7').AsCurrency         := (SqlSaldo.FieldByName('PRD_VAR7').AsCurrency + w_old_variacao7);
//                  SqlSaldo.FieldByName('PRD_RESERVA_VAR7').AsCurrency := (SqlSaldo.FieldByName('PRD_RESERVA_VAR7').AsCurrency - w_old_variacao7);
//                  SqlSaldo.Post;
                  if (CurrVar7.Value <= (DBEdit8.Field.Value + DataMovimento.CdsPedItemPRF_VAR7.AsCurrency)) then
                     begin
                        SqlSaldo.Edit;
                        SqlSaldo.FieldByName('PRD_RESERVA_VAR7').AsCurrency := (SqlSaldo.FieldByName('PRD_RESERVA_VAR7').AsCurrency + CurrVar7.Value);
                        SqlSaldo.FieldByName('PRD_VAR7').AsCurrency         := (SqlSaldo.FieldByName('PRD_VAR7').AsCurrency - CurrVar7.Value);
                        SqlSaldo.Post;
                         //
                       CalculaVariacao;
                     end
                  else
                     begin
                         uteis.aviso('Quantidade Informada é maior que o saldo do estoque !');
                         w_old_variacao7  := 0;
                         CurrVar7.Value   := 0;
                         CurrVar7.SetFocus;
                         CurrVar7.SelectAll;
                     end;
              end
           else
              begin
                  w_old_variacao7  := 0;
                  CurrVar7.Value   := 0;
              end;
       end;
end;

procedure TFormPedidos.CurrVar8Exit(Sender: tObject);
begin
    if (ActiveControl<> nil)
    and(ActiveControl.Name <> 'BitCancelItem')
    and(ActiveControl.Name <> 'CurrVar1')
    and(ActiveControl.Name <> 'CurrVar2')
    and(ActiveControl.Name <> 'CurrVar3')
    and(ActiveControl.Name <> 'CurrVar4')
    and(ActiveControl.Name <> 'CurrVar5')
    and(ActiveControl.Name <> 'CurrVar6')
    and(ActiveControl.Name <> 'CurrVar7') then
       begin
           SqlSaldo.Edit;
           SqlSaldo.FieldByName('PRD_VAR8').AsCurrency         := (SqlSaldo.FieldByName('PRD_VAR8').AsCurrency + w_old_variacao8);
           SqlSaldo.FieldByName('PRD_RESERVA_VAR8').AsCurrency := (SqlSaldo.FieldByName('PRD_RESERVA_VAR8').AsCurrency - w_old_variacao8);
           SqlSaldo.Post;
           if ((DBEdit8.Field.Value + DataMovimento.CdsPedItemPRF_VAR7.AsCurrency) > 0) then
              begin
//                  SqlSaldo.Edit;
//                  SqlSaldo.FieldByName('PRD_VAR8').AsCurrency         := (SqlSaldo.FieldByName('PRD_VAR8').AsCurrency + w_old_variacao8);
//                  SqlSaldo.FieldByName('PRD_RESERVA_VAR8').AsCurrency := (SqlSaldo.FieldByName('PRD_RESERVA_VAR8').AsCurrency - w_old_variacao8);
//                  SqlSaldo.Post;
                  if (CurrVar8.Value <= (DBEdit9.Field.Value + DataMovimento.CdsPedItemPRF_VAR8.AsCurrency)) then
                     begin
                        SqlSaldo.Edit;
                        SqlSaldo.FieldByName('PRD_RESERVA_VAR8').AsCurrency := (SqlSaldo.FieldByName('PRD_RESERVA_VAR8').AsCurrency + CurrVar8.Value);
                        SqlSaldo.FieldByName('PRD_VAR8').AsCurrency         := (SqlSaldo.FieldByName('PRD_VAR8').AsCurrency - CurrVar8.Value);
                        SqlSaldo.Post;
                         //
                        CalculaVariacao;
                     end
                  else
                     begin
                         uteis.aviso('Quantidade Informada é maior que o saldo do estoque !');
                         w_old_variacao8  := 0;
                         CurrVar8.Value   := 0;
                         CurrVar8.SetFocus;
                         CurrVar8.SelectAll;
                     end;
              end
           else
              begin
                  w_old_variacao8  := 0;
                  CurrVar8.Value   := 0;
              end;
       end;
end;

procedure TFormPedidos.CurrQtdeEnter(Sender: tObject);
begin
 // traz botao movimento do kardex
     Bit_kardex.BringToFront;
     
    if (wAlterar = True) then
       w_old_Qtde := CurrQtde.Value
    else
       w_old_Qtde := 0;
end;

procedure TFormPedidos.ChamaTelaVariacao;
begin
    if (CdsConsultaEstoquePRD_DCVAR1.AsString <>'')
    or (CdsConsultaEstoquePRD_DCVAR2.AsString <>'')
    or (CdsConsultaEstoquePRD_DCVAR3.AsString <>'')
    or (CdsConsultaEstoquePRD_DCVAR4.AsString <>'')
    or (CdsConsultaEstoquePRD_DCVAR5.AsString <>'')
    or (CdsConsultaEstoquePRD_DCVAR6.AsString <>'')
    or (CdsConsultaEstoquePRD_DCVAR7.AsString <>'')
    or (CdsConsultaEstoquePRD_DCVAR8.AsString <>'') then
       begin
           if DataMovimento.CdsPedidos.State in [dsBrowse] then
              DataMovimento.CdsPedidos.Edit;
           //
           GbItem.Enabled       := false;
           Pn_Relatorio.Enabled := false;
           Pn_Relatorio.Enabled := false;
           PanVariacao.Visible  := true;
           PanVariacao.Left     := 356;
           PanVariacao.Top      := 169;
           EdtRef.Text          := CbRef.Text;
           EdtDescricaoVar.Text := EdDescricao.Text;
           CurrQtdeProd.Value   := CurrQtde.Value;
           //
           DesDadosItemAlterar;
           //
           Limpa_Variaveis_variacao;
           //
           //
           Mostra_Saldo(EdtRef.text);
           //
(*
           CurrVar1.Value := DataMovimento.CdsPedItemPRF_VAR1.AsCurrency;
           CurrVar2.Value := DataMovimento.CdsPedItemPRF_VAR2.AsCurrency;
           CurrVar3.Value := DataMovimento.CdsPedItemPRF_VAR3.AsCurrency;
           CurrVar4.Value := DataMovimento.CdsPedItemPRF_VAR4.AsCurrency;
           CurrVar5.Value := DataMovimento.CdsPedItemPRF_VAR5.AsCurrency;
           CurrVar6.Value := DataMovimento.CdsPedItemPRF_VAR6.AsCurrency;
           CurrVar7.Value := DataMovimento.CdsPedItemPRF_VAR7.AsCurrency;
           CurrVar8.Value := DataMovimento.CdsPedItemPRF_VAR8.AsCurrency;
*)           
           if (wAlterar = False) then
              begin
                  CurrVar1.Value := 0;CurrVar2.Value := 0;CurrVar3.Value := 0;CurrVar4.Value := 0;
                  CurrVar5.Value := 0;CurrVar6.Value := 0;CurrVar7.Value := 0;CurrVar8.Value := 0;
                  DBEdtPRD_DCVAR1.Text := CdsConsultaEstoquePRD_DCVAR1.AsString;
                  DBEdtPRD_DCVAR2.Text := CdsConsultaEstoquePRD_DCVAR2.AsString;
                  DBEdtPRD_DCVAR3.Text := CdsConsultaEstoquePRD_DCVAR3.AsString;
                  DBEdtPRD_DCVAR4.Text := CdsConsultaEstoquePRD_DCVAR4.AsString;
                  DBEdtPRD_DCVAR5.Text := CdsConsultaEstoquePRD_DCVAR5.AsString;
                  DBEdtPRD_DCVAR6.Text := CdsConsultaEstoquePRD_DCVAR6.AsString;
                  DBEdtPRD_DCVAR7.Text := CdsConsultaEstoquePRD_DCVAR7.AsString;
                  DBEdtPRD_DCVAR8.Text := CdsConsultaEstoquePRD_DCVAR8.AsString;
              end
           else
              begin
                  CurrVar1.Value := DataMovimento.CdsPedItemPRF_VAR1.AsCurrency;
                  CurrVar2.Value := DataMovimento.CdsPedItemPRF_VAR2.AsCurrency;
                  CurrVar3.Value := DataMovimento.CdsPedItemPRF_VAR3.AsCurrency;
                  CurrVar4.Value := DataMovimento.CdsPedItemPRF_VAR4.AsCurrency;
                  CurrVar5.Value := DataMovimento.CdsPedItemPRF_VAR5.AsCurrency;
                  CurrVar6.Value := DataMovimento.CdsPedItemPRF_VAR6.AsCurrency;
                  CurrVar7.Value := DataMovimento.CdsPedItemPRF_VAR7.AsCurrency;
                  CurrVar8.Value := DataMovimento.CdsPedItemPRF_VAR8.AsCurrency;
              end;

           CurrVAR1.SetFocus;
           CurrVAR2.Enabled := iif(DBEdtPRD_DCVAR2.Text <> '',true,false);
           CurrVAR3.Enabled := iif(DBEdtPRD_DCVAR3.Text <> '',true,false);
           CurrVAR4.Enabled := iif(DBEdtPRD_DCVAR4.Text <> '',true,false);
           CurrVAR5.Enabled := iif(DBEdtPRD_DCVAR5.Text <> '',true,false);
           CurrVAR6.Enabled := iif(DBEdtPRD_DCVAR6.Text <> '',true,false);
           CurrVAR7.Enabled := iif(DBEdtPRD_DCVAR7.Text <> '',true,false);
           CurrVAR8.Enabled := iif(DBEdtPRD_DCVAR8.Text <> '',true,false);
           CalculaVariacao;
       end;
end;

procedure TFormPedidos.Incluir_Qtde_Pedido;
begin
    if ((wAlterar = True)) then
       w_Dif_Qtde := (CurrQtde.Value - w_Old_Qtde)
    else
       w_Dif_Qtde := CurrQtde.Value;
    //
    if (FrmMenu.wVariacoes = 'S') then
       begin
           if (wSigla = 'PA') OR (wSigla = 'PI') then
              begin
                  ChamaTelaVariacao;
              end;
       end;
end;

procedure TFormPedidos.MensagemTipo;
begin
  if (wReserva_Pedido_Producao = 'P') then
  begin
    if (wTipoAtEstoque ='S') then {se reservava agora nao reserva mais da entrada }
    begin
      PanTipo.Visible    := True;
      PanTipo.Font.Color := clGreen;
      PanTipo.Caption    := ' Baixa Estoque do produtos ';
    end
   else
    begin
      PanTipo.Visible    := True;
      PanTipo.Font.Color := clRed;
      PanTipo.Caption    := ' Não Baixa Estoque do produtos ';
    end;
  end;
{  if (wReserva_Pedido_Producao = 'F') then
  begin
    if (wTipoAtEstoque ='S') then //se reservava agora nao reserva mais da entrada 
    begin
      PanTipo.Visible    := True;
      PanTipo.Font.Color := clGreen;
      PanTipo.Caption    := 'Baixa estoque ao faturar pedido';
    end
   else
    begin
      PanTipo.Visible    := True;
      PanTipo.Font.Color := clRed;
      PanTipo.Caption    := 'Não baixa estoque ao faturar pedido';
    end;
  end; }
end;

procedure TFormPedidos.Verifica_baixa_Estoque(pRefer: String);
begin
    try
      wSql1      := 'Select P2.PTI_ATUALIZAR_ESTOQUE,P1.PGR_CODIGO,P3.PGR_ATUALIZA_ESTOQUE From PRD0000 P1 LEFT JOIN PRD_TIPO P2 ON (P1.pti_codigo = P2.PTI_CODIGO) LEFT JOIN PRD_GRUPO P3 ON (P1.pgr_codigo = P3.pgr_codigo) ';
      wSeleciona := 'where P1.PRD_REFER = '''+pRefer+'''';
      //
      SqlAtEstoque.Close;
      SqlAtEstoque.CommandText := SQLDEF('PRODUTOS',wSql1,wSeleciona,'P1.PRD_REFER','P1.');
      SqlAtEstoque.Open;
    except on E:EdataBaseError do
       uteis.erro  (pchar('Erro ao localizar o item ! '+e.message));
    end;
end;

procedure TFormPedidos.Altera_Item_Selecionado;
begin
//  if DataMovimento.CdsPedidos.State in [dsEdit,dsInsert] then
//  begin
//     uteis.aviso('É necessário gravar o pedido antes de alterar o item');
//     Exit;
//  end;

    if (DataMovimento.CdsPedItem.IsEmpty = false) then
       begin
           wAlterar := true;
           wIncluir := false;
           wTecla   := '';
//           if (DataMovimento.CdsPedItemPRF_ORIGEM_ITEM.AsString <> 'D') then
              AlteraItem;
//           else
//              begin
//                 uteis.aviso('Este item não pode ser alterado !');
//                 DBGridItensPed.SetFocus;
 //             end;
       end
    else
       CbRef.SetFocus;

     // traz botao movimento do kardex
     Bit_kardex.BringToFront;

end;

procedure TFormPedidos.Bit_EstoqueClick(Sender: tObject);
begin
    try
      FormProdutoGrid := TFormProdutoGrid.Create(Application);
      FormProdutoGrid.Tag := 1;
      FormProdutoGrid.ShowModal;
    finally
      begin
          FormProdutoGrid.Destroy;
          FormProdutoGrid := nil;
          Screen.OnActiveControlChange   := MudaCorCampos;
      end;
    end;
end;

function TFormPedidos.VerificaCampos: Boolean;
begin
   Result := True;
   if (DBeCli_codigo.Text <> '') then
      begin
         uteis.aviso('Informe um Cliente !');
         DBeCli_codigo.SetFocus;
         DBeCli_codigo.SelectAll;
         Result := False;
      end
   else
   if (CbxPcl1.Text <> '') then
      begin
         uteis.aviso('Informe a condição de pagamento !');
         CbxPcl1.SetFocus;
         CbxPcl1.SelectAll;
         Result := False;
      end
   else
   if (DBeRep_codigo.Text <> '') then
      begin
         uteis.aviso('Informe um Representante !');
         DBeRep_codigo.SetFocus;
         DBeRep_codigo.SelectAll;
         Result := False;
      end;
end;

procedure TFormPedidos.Confirma_Exclusao_Item;
begin
    try
      Verifica_baixa_Estoque(DataMovimento.CdsPedItemPRD_REFER.AsString);
      //
      if (not SqlAtEstoque.isEmpty) then
         begin
             if ((SqlAtEstoquePTI_ATUALIZAR_ESTOQUE.AsString = 'S') and
                 (wTipoAtEstoque = 'S')) then
                begin
                    if (SqlAtEstoquePGR_ATUALIZA_ESTOQUE.AsString = 'S') then
                       begin
                           if (DataMovimento.CdsPedItemPRF_FLAG_ATUALIZA_ESTOQUE.AsString = 'S') then
                              begin
                                  (*Lança no Kardex*)
                                  if (DataMovimento.CdsPedItemPRF_QTDE.AsFloat <> 0)and(FrmMenu.wAtualiza_Estoque = 'P') then
                                     begin
                                        if (FrmMenu.wAtualiza_Estoque = 'P') then
                                          begin
                                            KardexLancamento(DataMovimento.CdsPedItemPRF_REGISTRO.AsString,
                                                      'PED',
                                                      DataMovimento.CdsPedItemAMX_CODIGO_DESTINO.AsString,
                                                      '',
                                                      DataMovimento.CdsPedItemPRD_CODIGO.AsString,
                                                      '',//grade
                                                      '',
                                                      'E',
                                                      '',
                                                      '',//Novo esquema de lote
                                                      'EXCLUSÃO DE ITEM DO PEDIDO',
                                                      Now,
                                                      DataMovimento.CdsPedItemPRF_QTDE.AsFloat,
                                                      EdtPed_codigo.Text,
                                                      DBeCli_codigo.Text+'-'+EdtClienteRazao.Text,
                                                      DataMovimento.CdsPedItemPRF_PRECO.AsFloat);
                                          end;
                                     end;
                                  if (dbInicio.Empresa.wMultiAlmox = 'S') then
                                     Lanca_Movimento_reserva_Almox('E',
                                                                   DBeAlmox.Text,
                                                                   DataMovimento.CdsPedItemPRD_REFER.AsString,
                                                                   DataMovimento.CdsPedItemPRF_QTDE.AsString);
                                  //
                                  if (wAlterar = False) then
                                     Diminui_Reserva_empenhada(dbInicio.Empresa.EMP_CODIGO,DataMovimento.CdsPedItemPRD_REFER.AsString,DataMovimento.CdsPedItemPRF_QTDE.asstring);
                                  if (FrmMenu.wVariacoes = 'S') then
                                     begin
                                         Atualiza_Estoque_Variacao('C',
                                                                   DataMovimento.CdsPedItemPRD_REFER.Text,
                                                                   DataMovimento.CdsPedItemPRF_VAR1.AsString,
                                                                   DataMovimento.CdsPedItemPRF_VAR2.AsString,
                                                                   DataMovimento.CdsPedItemPRF_VAR3.AsString,
                                                                   DataMovimento.CdsPedItemPRF_VAR4.AsString,
                                                                   DataMovimento.CdsPedItemPRF_VAR5.AsString,
                                                                   DataMovimento.CdsPedItemPRF_VAR6.AsString,
                                                                   DataMovimento.CdsPedItemPRF_VAR7.AsString,
                                                                   DataMovimento.CdsPedItemPRF_VAR8.AsString);
                                         //
                                         Atualiza_Reserva_Variacao_Estoque('D',
                                                                           DataMovimento.CdsPedItemPRD_REFER.Text,
                                                                           DataMovimento.CdsPedItemPRF_VAR1.AsString,
                                                                           DataMovimento.CdsPedItemPRF_VAR2.AsString,
                                                                           DataMovimento.CdsPedItemPRF_VAR3.AsString,
                                                                           DataMovimento.CdsPedItemPRF_VAR4.AsString,
                                                                           DataMovimento.CdsPedItemPRF_VAR5.AsString,
                                                                           DataMovimento.CdsPedItemPRF_VAR6.AsString,
                                                                           DataMovimento.CdsPedItemPRF_VAR7.AsString,
                                                                           DataMovimento.CdsPedItemPRF_VAR8.AsString);
                                     end;
                              end;
                       end
                    else
                       begin
                           if (SqlAtEstoquePGR_CODIGO.IsNull) then
                              begin
                                  if (DataMovimento.CdsPedItemPRF_FLAG_ATUALIZA_ESTOQUE.AsString = 'S') then
                                     begin
                                         (*Lança no Kardex*)
                                         if (DataMovimento.CdsPedItemPRF_QTDE.AsFloat <> 0) then
                                            begin
                                               KardexLancamento(DataMovimento.CdsPedItemPRF_REGISTRO.AsString,
                                                               'PED',
                                                               DataMovimento.CdsPedItemAMX_CODIGO_DESTINO.AsString,
                                                               '',
                                                               DataMovimento.CdsPedItemPRD_CODIGO.AsString,
                                                               '',//grade
                                                               '',
                                                               'E',
                                                               '',
                                                               '',//Novo esquema de lote
                                                               'EXCLUSÃO DE ITEM DO PEDIDO',
                                                               Now,
                                                               DataMovimento.CdsPedItemPRF_QTDE.AsFloat,
                                                               EdtPed_codigo.Text,
                                                               DBeCli_codigo.Text+'-'+EdtClienteRazao.Text,
                                                               DataMovimento.CdsPedItemPRF_PRECO.AsFloat);
                                            end;


                                         Lanca_Movimento_reserva_Almox('E',
                                                                       DBeAlmox.Text,
                                                                       DataMovimento.CdsPedItemPRD_REFER.AsString,
                                                                       DataMovimento.CdsPedItemPRF_QTDE.AsString);
                                         //
                                         Diminui_Reserva_empenhada(dbInicio.Empresa.EMP_CODIGO,DataMovimento.CdsPedItemPRD_REFER.AsString,DataMovimento.CdsPedItemPRF_QTDE.asstring);
                                         if (FrmMenu.wVariacoes = 'S') then
                                            begin
                                                Atualiza_Estoque_Variacao('C',
                                                                          DataMovimento.CdsPedItemPRD_REFER.Text,
                                                                          DataMovimento.CdsPedItemPRF_VAR1.AsString,
                                                                          DataMovimento.CdsPedItemPRF_VAR2.AsString,
                                                                          DataMovimento.CdsPedItemPRF_VAR3.AsString,
                                                                          DataMovimento.CdsPedItemPRF_VAR4.AsString,
                                                                          DataMovimento.CdsPedItemPRF_VAR5.AsString,
                                                                          DataMovimento.CdsPedItemPRF_VAR6.AsString,
                                                                          DataMovimento.CdsPedItemPRF_VAR7.AsString,
                                                                          DataMovimento.CdsPedItemPRF_VAR8.AsString);
                                                //
                                                Atualiza_Reserva_Variacao_Estoque('D',
                                                                                  DataMovimento.CdsPedItemPRD_REFER.Text,
                                                                                  DataMovimento.CdsPedItemPRF_VAR1.AsString,
                                                                                  DataMovimento.CdsPedItemPRF_VAR2.AsString,
                                                                                  DataMovimento.CdsPedItemPRF_VAR3.AsString,
                                                                                  DataMovimento.CdsPedItemPRF_VAR4.AsString,
                                                                                  DataMovimento.CdsPedItemPRF_VAR5.AsString,
                                                                                  DataMovimento.CdsPedItemPRF_VAR6.AsString,
                                                                                  DataMovimento.CdsPedItemPRF_VAR7.AsString,
                                                                                  DataMovimento.CdsPedItemPRF_VAR8.AsString);
                                            end;
                                     end;
                              end;
                       end;
                end;
         end;
    except
      on E:EDataBaseError do
         begin
             uteis.erro  (pchar('Erro ao excuir item !'+e.Message));
         end;
    end;
end;

function TFormPedidos.Verifica_Saldo(fRefer:String;fVar:Integer;fQtde,cSaldoEstoque:Currency): Boolean;
begin
   if (dbInicio.Empresa.wMultiAlmox = 'N') then 
       begin
           wSeleciona := ' WHERE P1.PRD_REFER = '''+fRefer+'''';
           if (FrmMenu.wVariacoes = 'S') then
              begin
                 if (fVar = 1) then
                    wSql1 := 'Select P1.PRD_VAR1 AS WSALDO from PRD0000 P1';
                 if (fVar = 2) then
                    wSql1 := 'Select P1.PRD_VAR2 AS WSALDO from PRD0000 P1';
                 if (fVar = 3) then
                    wSql1 := 'Select P1.PRD_VAR3 AS WSALDO from PRD0000 P1';
                 if (fVar = 4) then
                    wSql1 := 'Select P1.PRD_VAR4 AS WSALDO from PRD0000 P1';
                 if (fVar = 5) then
                    wSql1 := 'Select P1.PRD_VAR5 AS WSALDO from PRD0000 P1';
                 if (fVar = 6) then
                    wSql1 := 'Select P1.PRD_VAR6 AS WSALDO from PRD0000 P1';
                 if (fVar = 7) then
                    wSql1 := 'Select P1.PRD_VAR7 AS WSALDO from PRD0000 P1';
                 if (fVar = 8) then
                    wSql1 := 'Select P1.PRD_VAR8 AS WSALDO from PRD0000 P1';
                 //
                 DataCadastros.sqlUpdate.Close;
                 DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,wSeleciona,'','P1.');
                 DataCadastros.sqlUpdate.Open;
                 if (not DataCadastros.sqlUpdate.IsEmpty) then
                    begin
                        if (fQtde <= (DataCadastros.sqlUpdate.FieldByName('WSALDO').AsCurrency + cSaldoEstoque)) then
                           Result := True
                        else
                           Result := False;
                        DataCadastros.sqlUpdate.Close;
                    end;
              end
           else
              begin
                  if (FrmMenu.wAtualiza_Estoque = 'P') then
                     wSql1 := 'Select ((P1.PRD_ESTOQUE+P1.PRD_ENTRADA)-(P1.PRD_SAIDA+P1.PRD_RESERVA)) AS WSALDO from PRD0000 P1 '
                  else
                     wSql1 := 'Select ((P1.PRD_ESTOQUE+P1.PRD_ENTRADA)-(P1.PRD_SAIDA+P1.PRD_RESERVA+P1.PRD_EMPENHO)) AS WSALDO from PRD0000 P1 ';
                 //
                 DataCadastros.sqlUpdate.Close;
                 DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,wSeleciona,'','P1.');
                 DataCadastros.sqlUpdate.Open;
                 if (not DataCadastros.sqlUpdate.IsEmpty) then
                    begin
                        if (fQtde <= (DataCadastros.sqlUpdate.FieldByName('WSALDO').AsCurrency + w_Saldo_Anterior)) then
                           Result := True
                        else
                           Result := False;
                        DataCadastros.sqlUpdate.Close;
                    end;
              end;
       end;
{
    else
    if (dbInicio.Empresa.wMultiAlmox = 'S') then
       begin
          if (FrmMenu.wVariacoes = 'S') then
             begin

             end
          else
          if (FrmMenu.wVariacoes = 'N') then
             begin

             end
       end;
}
end;

procedure TFormPedidos.Mostra_Saldo(pRefer: String);
begin
    try
      wSql1      := 'Select P1.PRD_VAR1,P1.PRD_VAR2,P1.PRD_VAR3,P1.PRD_VAR4,P1.PRD_VAR5,P1.PRD_VAR6,P1.PRD_VAR7,P1.PRD_VAR8,P1.PRD_RESERVA_VAR1,P1.PRD_RESERVA_VAR2,';
      wSql2      := 'P1.PRD_RESERVA_VAR3,P1.PRD_RESERVA_VAR4,P1.PRD_RESERVA_VAR5,P1.PRD_RESERVA_VAR6,P1.PRD_RESERVA_VAR7,P1.PRD_RESERVA_VAR8 from PRD0000 P1 ';
      wSeleciona := 'where P1.PRD_REFER = '''+pRefer+'''';
      wOrdem     := 'P1.PRD_REFER';
      //

      SqlSaldo.Close;
      SqlSaldo.CommandText := SQLDEF('PRODUTOS',wSql1+wSql2,wSeleciona,wOrdem,'P1.');
      SqlSaldo.Open;
      w_old_Variacao1 := 0;
      w_old_Variacao2 := 0;
      w_old_Variacao3 := 0;
      w_old_Variacao4 := 0;
      w_old_Variacao5 := 0;
      w_old_Variacao6 := 0;
      w_old_Variacao7 := 0;
      w_old_Variacao8 := 0;//SqlSaldo.FieldByName('PRD_RESERVA_VAR8').AsCurrency;
    except
      on E:EDataBaseError do
        begin
            uteis.erro  (pchar('Erro ao mostrar o Saldo do produto: '+pRefer+#13#10+
                       'Mensagem erro: '+e.message));
        end;
    end;
end;

procedure TFormPedidos.Processo_Atualiza_Estoque;
begin
    {reserva o material se o tipo do pedido estiver com o flag de atualizar estoque}
    if ((CdsConsultaEstoquePTI_ATUALIZAR_ESTOQUE.AsString = 'S') and
        (wTipoAtEstoque = 'S')) then
       begin
           if (CdsConsultaEstoquePGR_ATUALIZA_ESTOQUE.AsString = 'S') then
              begin
//                  if (DataMovimento.CdsPedItemPRF_ORIGEM_ITEM.AsString <> 'D') then
                     {Coloca no item do pedido o flag para atualizar o estoque}
//                     DataMovimento.CdsPedItemPRF_FLAG_ATUALIZA_ESTOQUE.AsString := 'S';
                  if (FrmMenu.wAtualiza_Estoque = 'P') then
                    begin
                         (*Lança no Kardex*)

                         {Reserva a quantidade no estoque}
                         Reserva_Materia(CbRef.Text,
                                         ValorAmericano(FloatToStr(w_Dif_Qtde)));
                         if (FrmMenu.wVariacoes = 'S') then
                            begin
//                                if (DataMovimento.CdsPedItemPRF_ORIGEM_ITEM.AsString <> 'D') then
 //                                  begin
                                       {Baixa as Qtde(s) das Variaçoes no Estoque (Saldo)}
                                       Atualiza_Estoque_Variacao('D',
                                                                 CbRef.Text,
                                                                 CurrVar1.Text,
                                                                 CurrVar2.Text,
                                                                 CurrVar3.Text,
                                                                 CurrVar4.Text,
                                                                 CurrVar5.Text,
                                                                 CurrVar6.Text,
                                                                 CurrVar7.Text,
                                                                 CurrVar8.Text);
                                       //
                                       Atualiza_Reserva_Variacao_Estoque('C',
                                                                         CbRef.Text,
                                                                         CurrVar1.Text,
                                                                         CurrVar2.Text,
                                                                         CurrVar3.Text,
                                                                         CurrVar4.Text,
                                                                         CurrVar5.Text,
                                                                         CurrVar6.Text,
                                                                         CurrVar7.Text,
                                                                         CurrVar8.Text);
//                                   end;
                            end;
                     end;
              end
           else
              begin
                  if ((CdsConsultaEstoquePGR_CODIGO.IsNull)
                  or (CdsConsultaEstoquePGR_CODIGO.AsString = '')) then
                     begin
//                         if (DataMovimento.CdsPedItemPRF_ORIGEM_ITEM.AsString <> 'D') then
                            {Coloca no item do pedido o flag para atualizar o estoque}
//                            DataMovimento.CdsPedItemPRF_FLAG_ATUALIZA_ESTOQUE.AsString := 'S';
                         if (FrmMenu.wAtualiza_Estoque = 'P') then
                            begin
                                (*Lança no Kardex*)


                                {Reserva a quantidade no estoque}
                                Reserva_Materia(CbRef.Text,
                                                ValorAmericano(FloatToStr(w_Dif_Qtde)));
                                if (FrmMenu.wVariacoes = 'S') then
                                   begin
//                                       if (DataMovimento.CdsPedItemPRF_ORIGEM_ITEM.AsString <> 'D') then
//                                          begin
                                              {Baixa as Qtde(s) das Variaçoes no Estoque (Saldo)}
                                              Atualiza_Estoque_Variacao('D',
                                                                        CbRef.Text,
                                                                        CurrVar1.Text,
                                                                        CurrVar2.Text,
                                                                        CurrVar3.Text,
                                                                        CurrVar4.Text,
                                                                        CurrVar5.Text,
                                                                        CurrVar6.Text,
                                                                        CurrVar7.Text,
                                                                        CurrVar8.Text);
                                              //
                                              Atualiza_Reserva_Variacao_Estoque('C',
                                                                                CbRef.Text,
                                                                                CurrVar1.Text,
                                                                                CurrVar2.Text,
                                                                                CurrVar3.Text,
                                                                                CurrVar4.Text,
                                                                                CurrVar5.Text,
                                                                                CurrVar6.Text,
                                                                                CurrVar7.Text,
                                                                                CurrVar8.Text);
//                                          end;
                                   end;
                            end;
                     end;
              end;
       end;
    //

end;

function TFormPedidos.Verifica_Saldo_Variacao: Boolean;
begin
    bConf_Saldo_Variacao := True;
    Result := False;
    if (CurrVar1.Enabled)
    and(CurrVar1.Value > 0)
    and(bConf_Saldo_Variacao) then
       begin
           Result := Verifica_Saldo(CbRef.Text,1,CurrVar1.value,DataMovimento.CdsPedItemPRF_VAR1.AsCurrency);
           bConf_Saldo_Variacao := Result;
       end;
    if (CurrVar2.Enabled)
    and(CurrVar2.Value > 0)
    and(bConf_Saldo_Variacao) then
       begin
           Result := Verifica_Saldo(CbRef.Text,2,CurrVar2.value,DataMovimento.CdsPedItemPRF_VAR2.AsCurrency);
           bConf_Saldo_Variacao := Result;
       end;
    if (CurrVar3.Enabled)
    and(CurrVar3.Value > 0)
    and(bConf_Saldo_Variacao) then
       begin
           Result := Verifica_Saldo(CbRef.Text,3,CurrVar3.value,DataMovimento.CdsPedItemPRF_VAR3.AsCurrency);
           bConf_Saldo_Variacao := Result;
       end;
    if (CurrVar4.Enabled)
    and(CurrVar4.Value > 0)
    and(bConf_Saldo_Variacao) then
       begin
           Result := Verifica_Saldo(CbRef.Text,4,CurrVar4.value,DataMovimento.CdsPedItemPRF_VAR4.AsCurrency);
           bConf_Saldo_Variacao := Result;
       end;
    if (CurrVar5.Enabled)
    and(CurrVar5.Value > 0)
    and(bConf_Saldo_Variacao) then
       begin
           Result := Verifica_Saldo(CbRef.Text,5,CurrVar5.value,DataMovimento.CdsPedItemPRF_VAR5.AsCurrency);
           bConf_Saldo_Variacao := Result;
       end;
    if (CurrVar6.Enabled)
    and(CurrVar6.Value > 0)
    and(bConf_Saldo_Variacao) then
       begin
           Result := Verifica_Saldo(CbRef.Text,6,CurrVar6.value,DataMovimento.CdsPedItemPRF_VAR6.AsCurrency);
           bConf_Saldo_Variacao := Result;
       end;
    if (CurrVar7.Enabled)
    and(CurrVar7.Value > 0)
    and(bConf_Saldo_Variacao) then
       begin
           Result := Verifica_Saldo(CbRef.Text,7,CurrVar7.value,DataMovimento.CdsPedItemPRF_VAR7.AsCurrency);
           bConf_Saldo_Variacao := Result;
       end;
    if (CurrVar8.Enabled)
    and(CurrVar8.Value > 0)
    and(bConf_Saldo_Variacao) then
       begin
           Result := Verifica_Saldo(CbRef.Text,8,CurrVar8.value,DataMovimento.CdsPedItemPRF_VAR8.AsCurrency);
           bConf_Saldo_Variacao := Result;
       end;
    //
end;

procedure TFormPedidos.Limpa_Variaveis_variacao;
begin
    w_Old_Variacao1 := 0;
    w_Old_Variacao2 := 0;
    w_Old_Variacao3 := 0;
    w_Old_Variacao4 := 0;
    w_Old_Variacao5 := 0;
    w_Old_Variacao6 := 0;
    w_Old_Variacao7 := 0;
    w_Old_Variacao8 := 0;
    //
    w_Dif_Variacao1 := 0;
    w_Dif_Variacao2 := 0;
    w_Dif_Variacao3 := 0;
    w_Dif_Variacao4 := 0;
    w_Dif_Variacao5 := 0;
    w_Dif_Variacao6 := 0;
    w_Dif_Variacao7 := 0;
    w_Dif_Variacao8 := 0;
end;

procedure TFormPedidos.CurrVar1Enter(Sender: tObject);
begin
   w_old_variacao1 := CurrVar1.Value;
end;

procedure TFormPedidos.CurrVar2Enter(Sender: tObject);
begin
   w_old_variacao2 := CurrVar2.Value;
end;

procedure TFormPedidos.CurrVar3Enter(Sender: tObject);
begin
   w_old_variacao3 := CurrVar3.Value;
end;

procedure TFormPedidos.CurrVar4Enter(Sender: tObject);
begin
   w_old_variacao4 := CurrVar4.Value;
end;

procedure TFormPedidos.CurrVar5Enter(Sender: tObject);
begin
   w_old_variacao5 := CurrVar5.Value;
end;

procedure TFormPedidos.CurrVar6Enter(Sender: tObject);
begin
   w_old_variacao6 := CurrVar6.Value;
end;

procedure TFormPedidos.CurrVar7Enter(Sender: tObject);
begin
   w_old_variacao7 := CurrVar7.Value;
end;

procedure TFormPedidos.CurrVar8Enter(Sender: tObject);
begin
   w_old_variacao8 := CurrVar8.Value;
end;

procedure TFormPedidos.CbFreteTChange(Sender: tObject);
begin
    if Datamovimento.CdsPedidos.State = DsBrowse then
       DataMovimento.CdsPedidos.Edit;
end;

procedure TFormPedidos.CbFreteRChange(Sender: tObject);
begin
    if Datamovimento.CdsPedidos.State = DsBrowse then
       DataMovimento.CdsPedidos.Edit;
end;

procedure TFormPedidos.GrpDescontoExit(Sender: tObject);
begin
   if (not ChkDescto.Checked) then
      CbRef.SetFocus;
end;

procedure TFormPedidos.Chk_AgregadoClick(Sender: tObject);
begin
   if (CbRef.Text <> '') then
      begin
         if (Chk_Agregado.Checked) then
            begin
               CurrPrecoBruto.Enabled := False;
               CurrPrecoBruto.Value := 0;
               CurrDesc1.Value      := 0;
               CurrDesc2.Value      := 0;
               CurrIPI.Value        := 0;
            end
         else
            begin
               CurrPrecoBruto.Enabled := True;
               if (CbRef.Text <> '') then
                  if (CdsConsultaEstoque.Locate('PRD_REFER',CbRef.Text,[])) then
                     begin
                        CurrPrecoBruto.Value := CdsConsultaEstoquePRD_PVENDA.AsCurrency;
                        CurrIPI.Value        := CdsConsultaEstoqueIPI_ALIQ.AsCurrency; 
                     end;
            end;
      end;
end;

procedure TFormPedidos.CbRefChange(Sender: tObject);
begin

   if (CbRef.Text <>'') then
      begin
      BuscaProduto;
      Chk_Agregado.Enabled := True
      end
   else
      Chk_Agregado.Enabled := False;
end;

function TFormPedidos.Verifica_Transp_Ativa(sCodigo: String): Boolean;
begin
   try
     wSql1      := 'Select T1.TRP_ATIVO FROM TRP0000 T1 ';
     wSeleciona := 'WHERE T1.TRP_CODIGO = '''+sCodigo+'''';
     //
     DataCadastros.sqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.text :=SQLDEF('TRANSPORTADORAS',wSql1,wSeleciona,'','T1.');
     DataCadastros.sqlUpdate.Open;
     if (not DataCadastros.sqlUpdate.IsEmpty) then
        begin
           if (DataCadastros.sqlUpdate.FieldByName('TRP_ATIVO').Asstring ='S') then
              Result := True
           else
              Result := False;
        end;
     DataCadastros.sqlUpdate.Close;
   except
     on E:EDataBaseError do
       begin
          uteis.erro  (pchar('Erro ao Verificar a Transportadora !'+#13#10+
                     'Mensagem erro: '+e.message));
       end;
   end;
end;

procedure TFormPedidos.CbClientes1Change(Sender: tObject);
begin
  if CbClientes1.Text <> EmptyStr then
  begin
    DBeCli_codigo.Text := CbClientes1.CodigoLista;
//    Busca_Dados_Cliente(PreenchezeroEsquerda(DBeCli_codigo.Text,5));
    Busca_Dados_Cliente(StrZero(CbClientes1.CodigoLista,5));
//    Busca_Dados_Cliente(StrZero(DBeCli_codigo.Text,5));
    MascaraCNPJ_INFCLIE;
    MascaraCNPJ;
  end;
end;

procedure TFormPedidos.CbClientes1Click(Sender: tObject);
begin
   { desativada o uso desta combo para buscar cliente pela gride - 21/10/2010 marcio }

    screen.Cursor := crHourGlass;
    if (ActiveControl <> Nil)
    and(ActiveControl.Name <> 'Bit_Cancelar')
    and(ActiveControl.Name <> 'Bit_Sair') then
       begin
          if (Trim(CbClientes1.Text)<>'') then
             begin

                CbClientes1.TextoLocalizar := StrZero(DBeCli_codigo.Text,5);
                CbClientes1.Localizar      := True;
                if (CbClientes1.Localizado = False) then
                   begin
                    { nao precisa desta checagem, dá cliente nao localizado... tirado em 01/10/2010 marcio
                    //  //beep;
                    //  uteis.aviso('Cliente não localizado !');
                    //  DBeCli_codigo.SetFocus;
                    //  DBeCli_codigo.SelectAll;    }
                   end
                else
                   begin
                      if (DBeCli_codigo.Text <> '') then
                         Busca_Dados_Cliente(StrZero(DBeCli_codigo.Text,5));
                      if DataMovimento.CdsPedidos.State in [dsEdit,dsInsert] then
                         begin
                             DbeCli_codigo.field.Text := StrZero(DbeCli_codigo.Text,DbeCli_codigo.MaxLength);
                             DBeRep_codigo.field.Text := DataMovimento2.CdsConsultaClieREP_CODIGO.AsString;
                             DbeTRP_CODIGO.field.Text := DataMovimento2.CdsConsultaClieTRP_CODIGO.AsString;
                             DbeTRP_CODIGOExit(self);
                             DBePcl_codigo.Field.Text := DataMovimento2.CdsConsultaCliePCL_CODIGO.AsString;
                            //
                             if not SqlCdsPcl.Active then
                                SqlCdsPcl.Open;

                             if SqlCdsPcl.Locate('PCL_CODIGO', DBePcl_codigo.Field.text, []) = true then
                                 CbxPcl1.Text := SqlCdsPclPCL_NOME.AsString;
                         end;
                      {Representante}
                      Cbrepresentantes1.TextoLocalizar      := StrZero(DBeRep_codigo.Text,3);
                      Cbrepresentantes1.Localizar           := True;
                      if (DbeTRP_CODIGO.Field.Text = '') and (DataMovimento.CdsPedidos.State in [dsEdit,dsInsert]) then
                      begin
                        DbeTRP_CODIGO.Field.Text := '';
                        CbTransp1.Text           := '';
                        CbFreteT.ItemIndex       := 0;
                      end;

                      if (VerificaRestricao(DataMovimento2.CdsConsultaClieCLI_INATIVO.AsString)='A') then
                         begin
                            DBeCli_codigo.Text := DataMovimento2.CdsConsultaClieCLI_CODIGO.AsString;
                            if (DbeTRP_CODIGO.Field.Text <> '') then
                               begin
                                  {Transportadora}
                                  CbTransp1.TextoLocalizar      := StrZero(DbeTRP_CODIGO.Text,3);
                                  CbTransp1.Localizar           := True;
                                  DbeTRP_CODIGOExit(self);
                                  if (not CbTransp1.Localizado) then
                                     begin
                                        DbeTRP_CODIGO.Field.Text := '';
                                        CbTransp1.Text           := '';
                                        CbFreteT.ItemIndex       := 0;
                                     end
                                  else
                                     begin
                                        if (CbFreteT.ItemIndex = 0) then
                                           CbFreteT.ItemIndex := 2;
                                     end;
                               end
                            else
                               begin
                                  DbeTRP_CODIGO.Field.Text := '';
                                  CbTransp1.Text           := '';
                                  CbFreteT.ItemIndex       := 0;
                               end;
                             MascaraCNPJ;
                         end;
                   end;
             end;
       end;
    screen.cursor:=crDefault;
    
end;

procedure TFormPedidos.CbClientes1Enter(Sender: tObject);
begin
    CbClientes1.SelectAll;

end;

procedure TFormPedidos.DBeCli_codigoEnter(Sender: tObject);
begin
   DBeCli_codigo.SelectAll;
end;

procedure TFormPedidos.CbRepresentantes1Change(Sender: tObject);
begin
   DBeRep_codigo.Text := CbRepresentantes1.CodigoLista;
end;

procedure TFormPedidos.CbRepresentantes1Exit(Sender: tObject);
begin
    screen.Cursor := crHourGlass;
    if (wTecla = 'vk_Escape') then
       exit;
    if (ActiveControl <> Nil)
    and(ActiveControl.Name <> 'DBeRep_codigo')
    and(ActiveControl.Name <> 'Bit_Cancelar')
    and(ActiveControl.Name <> 'Bit_Sair') then
       begin
          if (Trim(CbRepresentantes1.Text)<>'') then
             begin
                CbRepresentantes1.TextoLocalizar := StrZero(DBeRep_codigo.Text,3);
                CbRepresentantes1.Localizar      := True;
                if (CbRepresentantes1.Localizado = False) then
                   begin
                      //beep;
                      uteis.aviso('Vendedor não localizado !');
                      DBeRep_codigo.SetFocus;
                      DBeRep_codigo.SelectAll;
                   end
                else
                   begin
                      if DataMovimento.CdsPedidos.State in [dsInsert,dsEdit] then
                         begin
                            if (DBeRep_codigo.Field.Text <> '')
                            and(not Verifica_Representante_Ativo(StrZero(DBeRep_codigo.Text,3))) then
                               begin
                                  uteis.aviso('Vendedor inativo !');
                                  CbRepresentantes1.SetFocus;
                                  CbRepresentantes1.SelectAll;
                               end
                            else
                               begin
                                  DBeRep_codigo.Field.Text := StrZero(DBeRep_codigo.Text,3);
                               end;
                         end;
                   end;
             end;
       end;
    screen.cursor:=crDefault;
end;

procedure TFormPedidos.CbTransp1Change(Sender: tObject);
begin
   DbeTRP_CODIGO.Text := CbTransp1.CodigoLista;
end;

procedure TFormPedidos.CbRedesp1Change(Sender: tObject);
begin
   DbeTrp_Redesp.Text := CbRedesp1.CodigoLista;
end;

procedure TFormPedidos.CbTransp1Enter(Sender: tObject);
begin
   CbTransp1.SelectAll;
end;

procedure TFormPedidos.CbRedesp1Enter(Sender: tObject);
begin
   CbRedesp1.SelectAll;
end;

procedure TFormPedidos.CbTransp1Exit(Sender: tObject);
begin
   screen.Cursor := crHourGlass;
   if (ActiveControl <> Nil)
   and(ActiveControl.Name <> 'DbeTRP_CODIGO')
   and(ActiveControl.Name <> 'Bit_Cancelar')
   and(ActiveControl.Name <> 'Bit_Sair') then
      begin
         if (Trim(CbTransp1.Text)<>'') then
            begin
               CbTransp1.TextoLocalizar := StrZero(DbeTRP_CODIGO.Text,3);
               CbTransp1.Localizar      := True;
               if (CbTransp1.Localizado = False) then
                  begin
                     //beep;
                     uteis.aviso('Transportadora não localizado !');
                     DbeTRP_CODIGO.SetFocus;
                     DbeTRP_CODIGO.SelectAll;
                  end
               else
                  begin
                     if (Datamovimento.CdsPedidos.State in [dsInsert,dsEdit]) then
                        begin
                           if (DbeTRP_codigo.Field.AsString <> '')
                           and(not Verifica_Transp_Ativa(DbeTRP_codigo.Text)) then
                              begin
                                 uteis.aviso('Transportadora Inativa !');
                                 if (ActiveControl <> Nil)
                                 and(ActiveControl.Name <> 'DbeTRP_codigo') then
                                    begin
                                       CbTransp1.Text           := '';
                                       DbeTRP_codigo.Field.Text := '';
                                       CbFreteT.ItemIndex       := 0;
                                    end;
                              end
                           else
                              begin
                                 DbeTRP_CODIGO.Field.Text := StrZero(DbeTRP_CODIGO.Text,3);
                                 if (CbFreteT.ItemIndex = 0) then
                                    CbFreteT.ItemIndex := 2;
                              end;
                        end;
                  end;
            end;
      end;
   screen.cursor:=crDefault;
end;

procedure TFormPedidos.CbRedesp1Exit(Sender: tObject);
begin
   screen.Cursor := crHourGlass;
   if (ActiveControl <> Nil)
   and(ActiveControl.Name <> 'DbeTrp_Redesp')
   and(ActiveControl.Name <> 'Bit_Cancelar')
   and(ActiveControl.Name <> 'Bit_Sair') then
      begin
         if (Trim(CbRedesp1.Text)<>'') then
            begin
               CbRedesp1.TextoLocalizar := StrZero(DbeTrp_Redesp.Text,3);
               CbRedesp1.Localizar      := True;
               if (CbRedesp1.Localizado = False) then
                  begin
                     //beep;
                     uteis.aviso('Transportadora Redespacho não localizado !');
                     DbeTrp_Redesp.SetFocus;
                     DbeTrp_Redesp.SelectAll;
                  end
               else
                  begin
                     if (Datamovimento.CdsPedidos.State in [dsInsert,dsEdit]) then
                        begin
                           if (DbeTrp_Redesp.Field.AsString <> '')
                           and(not Verifica_Transp_Ativa(DbeTrp_Redesp.Text)) then
                              begin
                                 uteis.aviso('Transportadora Inativa !');
                                 if (ActiveControl <> Nil)
                                 and(ActiveControl.Name <> 'DbeTrp_Redesp') then
                                    begin
                                       CbRedesp1.Text           := '';
                                       DbeTrp_Redesp.Field.Text := '';
                                       CbFreteR.ItemIndex       := 0;
                                       CbRedesp1.SetFocus;
                                    end;
                              end
                           else
                              begin
                                 DbeTrp_Redesp.Field.Text := StrZero(DbeTrp_Redesp.Text,3);
                                 if (CbFreteR.ItemIndex = 0) then
                                    CbFreteR.ItemIndex := 2;
                              end;
                        end;
                  end;
            end;
      end;
   screen.cursor:=crDefault;
end;

procedure TFormPedidos.DBeAlmoxEnter(Sender: tObject);
begin
   DBeAlmox.SelectAll;
end;

procedure TFormPedidos.CbAlmox1Change(Sender: tObject);
begin
   DBeAlmox.Text := CbAlmox1.CodigoLista;
end;

procedure TFormPedidos.CbAlmox1Enter(Sender: tObject);
begin
   CbAlmox1.SelectAll;
end;

procedure TFormPedidos.CbAlmox1Exit(Sender: tObject);
begin
   screen.Cursor := crHourGlass;
   if (ActiveControl <> Nil)
   and(ActiveControl.Name <> 'DBeAlmox')
   and(ActiveControl.Name <> 'Bit_Cancelar')
   and(ActiveControl.Name <> 'Bit_Sair') then
      begin
         if (Trim(CbAlmox1.Text)<>'') then
            begin
               CbAlmox1.TextoLocalizar := StrZero(DBeAlmox.Text,DBeAlmox.MaxLength);
               CbAlmox1.Localizar      := True;
               if (CbAlmox1.Localizado = False) then
                  begin
                     //beep;
                     uteis.aviso('Almoxarifado destino não encontrado !');
                     DBeAlmox.SetFocus;
                     DBeAlmox.SelectAll;
                  end
               else
                  begin
                     DBeAlmox.Field.Text := StrZero(DBeAlmox.Text,DBeAlmox.MaxLength);
                     CurrSaldo.Value := dbInicio.KardexRetornaSaldo(wProdCodigo,DBeAlmox.Text);
                  end;
            end;
      end;
   screen.cursor:=crDefault;
end;

procedure TFormPedidos.Busca_Tipo(sCodTipo: String);
begin
   CdsTipo.Close;
   CdsTipo.CommandText := 'Select O1.* From OPV0000 O1 Where OPV_CODIGO = '''+sCodTipo+'''';
   CdsTipo.Open;
end;

procedure TFormPedidos.BuscaTipoPadrao;
var
   iVenda, i:Integer;
begin
   {AO INSERIR NOVO PEDIDO VERIFICAR COM O TIPO PADRAO CARREGAR NA COMBO }
   DataCadastros.sqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text :=SQLDEF('TABELAS','Select OPV_CODIGO,OPV_ATESTOQUE,OPV_DESCRICAO from OPV0000','Where OPV_TIPOPADRAO = ''S'' and OPV_TIPO = ''S''','','');
   DataCadastros.sqlUpdate.Open;
   wCodTipo       := IntToStr(DataCadastros.sqlUpdate.FieldByName('OPV_CODIGO').AsInteger);
   wTipoAtEstoque := DataCadastros.sqlUpdate.FieldByName('OPV_ATESTOQUE').AsString;
   i := 0;
   while (i < CbTipo1.Items.Count) do
      begin
         if (CbTipo1.Items[i] = DataCadastros.sqlUpdate.FieldByName('OPV_DESCRICAO').AsString) then
            CbTipo1.ItemIndex := i;
         Inc(i);
      end;
end;


procedure TFormPedidos.CbTipo1Exit(Sender: tObject);
Var
  wMensagem:String;
begin

   if (ActiveControl <> Nil)
   and(ActiveControl.Name <> 'Bit_Cancelar')
   and(ActiveControl.Name <> 'Bit_Sair')
   and(ActiveControl.Name <> 'Bit_novo') then
      begin
         if (Trim(CbTipo1.Text)<>'') then
            begin
               CbTipo1.TextoLocalizar := DBEOpv_codigo.Text;
               CbTipo1.Localizar      := True;
               if (CbTipo1.Localizado = False) then
                  begin
                     //beep;
                     uteis.aviso('Tipo não localizado !');
                     DBEOpv_codigo.SetFocus;
                     DBEOpv_codigo.SelectAll;
                  end
               else
                  begin
                     wMensagem := '';
                     Busca_Tipo(DBEOpv_codigo.Text);
                     if (wIncluiu_Itens = True) then
                        begin
                        // eliminado programação
                        end
                     else
                        begin
                           wTipoAtEstoque_Anterior := CdsTipoOPV_ATESTOQUE.AsString;
                        end;
                     if (CbTipo1.Enabled) then
                        begin
                           if (DtEntrada.Enabled) then
                              DtEntrada.SetFocus;
                           SpeedTipo.Click;
                        end;

                  end;
            end
         else
         if (DataMovimento.CdsPedidos.State in [DsInsert,DsBrowse]) then
            if (DBEOpv_Codigo.Field.IsNull) and (CbTipo1.Text = '') then
               begin
                   uteis.aviso('Informe o Tipo por favor.');
                   CbTipo1.SetFocus;
               end;
         
      end;




end;

procedure TFormPedidos.CbxPcl1Change(Sender: tObject);
begin
   if (Datamovimento.CdsPedidos.State in [dsInsert,dsEdit]) then
      DBePcl_codigo.Field.AsString := CbxPcl1.CodigoLista;
end;

procedure TFormPedidos.CbxPcl1Exit(Sender: tObject);
begin
  if (wTecla = 'vk_Escape') then
    exit;
  screen.Cursor := crHourGlass;
  if (ActiveControl <> Nil) and(ActiveControl.Name <> 'DbeTrp_Redesp')and(ActiveControl.Name <> 'Bit_Cancelar')and(ActiveControl.Name <> 'Bit_Sair') then
  begin
    if (Trim(CbxPcl1.Text)<>'') then
    begin
      CbxPcl1.TextoLocalizar := StrZero(DBePcl_codigo.Text,3);
      CbxPcl1.Localizar      := True;
      if not SqlCdsPcl.Active then
        SqlCdsPcl.Open;
      if not SqlCdsPcl.Locate('PCL_NOME', CbxPcl1.Text, []) = true then
//      if (CbxPcl1.Localizado = False) then
      begin
        //beep;
        uteis.aviso('Parcelamento não encontrado !');
        CbxPcl1.SetFocus;
        CbxPcl1.SelectAll;
        SqlCdsPcl.Close;
      end
    else
      begin
        if (Datamovimento.CdsPedidos.State in [dsInsert,dsEdit]) then
        begin
          if (not Verifica_Condicao_Pagto(StrZero(DBePcl_codigo.Text,3))) then
          begin
            uteis.aviso('Condição de Pagame nto Inativa !');
            CbxPcl1.SetFocus;
            CbxPcl1.SelectAll;
          end
        else
          DBePcl_codigo.Field.Text := StrZero(DBePcl_codigo.Text,3);
        end;
      end;
    end
  else
    begin
      uteis.aviso('Informe a condição de pagamento !');
      CbxPcl1.SetFocus;
    end;
  end;
  screen.cursor:=crDefault;
end;

procedure TFormPedidos.MascaraCNPJ_INFCLIE;
begin
   //LBL_RAZAO.Caption := '';
   If Length(DataMovimento2.CdsConsultaClieCli_CGC.AsString) =14  then
      begin
          DataMovimento2.CdsConsultaClieCLI_CGC.EditMask := '99.999.999/9999-99;0;_';
          LblCnpj.Caption := 'CNPJ:'; //Lbl_Pessoa.Caption := 'CNPJ:';
      end
   else
      // pessoa fisica
      begin
          DataMovimento2.CdsConsultaClieCLI_CGC.EditMask := '999.999.999-99;0;_';
          LblCnpj.Caption := 'CNPF:';//Lbl_Pessoa.Caption := 'CPF:';
      end;

   //LBL_RAZAO.Caption := copy(DataMovimento2.CdsConsultaClieCLI_RAZAO.AsString,1,35);

end;

procedure TFormPedidos.DBeCli_codigoClick(Sender: tObject);
begin
   DBeCli_codigo.SelectAll;
end;

procedure TFormPedidos.CbTipo1Click(Sender: tObject);
begin
  if (DataMovimento.CdsPedidos.State in [dsBrowse]) then
    DataMovimento.CdsPedidos.Edit;
end;

procedure TFormPedidos.spClienteClick(Sender: tObject);
begin

  try
     try {Cria e chama formulário de Lista}
       FormClienteGrid := TFormClienteGrid.Create(Application);
       FormClienteGrid.Tag := 1;
       FormClienteGrid.ShowModal;
     finally
       FormClienteGrid.Destroy;
       FormClienteGrid := nil //  nil é - From Assigned = False
     end;
   except
       //beep;
       uteis.erro  ('Ocorreu um erro na criação do formulário!');
   end;
end;

procedure TFormPedidos.MudouTipo_S;
{ mudou de Pedido de Venda (S) para Orçamento (N)
  Produto será retirado da Reserva - volta para o Estoque    }
begin
  try
    DataMovimento.CdsPedItem.First;
    while not DataMovimento.CdsPedItem.Eof do
    begin
      Diminui_Reserva_empenhada(dbInicio.Empresa.EMP_CODIGO,DataMovimento.CdsPedItemPRD_REFER.AsString,DataMovimento.CdsPedItemPRF_QTDE.asstring);
      // Gravar flag atualiza estoque = N
      if DataMovimento.CdsPedItem.State in [dsBrowse] then
         begin
            KardexLancamento(DataMovimento.CdsPedItemPRF_REGISTRO.AsString,
                             'PED',
                             DataMovimento.CdsPedItemAMX_CODIGO_DESTINO.AsString,
                             '',
                             DataMovimento.CdsPedItemPRD_CODIGO.AsString,
                             '',//grade
                             '',
                             'E',
                             '',
                             '',//Novo esquema de loote
                             'MUDANÇA PARA ORÇAMENTO',
                             Now,
                             DataMovimento.CdsPedItemPRF_QTDE.AsFloat,
                             EdtPed_codigo.Text,
                             DBeCli_codigo.Text+'-'+EdtClienteRazao.Text,
                             DataMovimento.CdsPedItemPRF_PRECO.AsFloat);
         DataMovimento.CdsPedItem.Edit;
         DataMovimento.CdsPedItemPRF_FLAG_ATUALIZA_ESTOQUE.AsString := 'N';
         DataMovimento.CdsPedItem.ApplyUpdates(0);
         end;


      DataMovimento.CdsPedItem.Next;
    end;
  except on E:EdatabaseError do
     uteis.erro  (Pchar('Erro ao atualizar estoque!'+e.Message));
  end;
end;


procedure TFormPedidos.MudouTipo_N;
{ mudou de Orçamento (N) para pedido de Venda (S)
  Produto será retirado do estoque - Reserva     }
var
wSaldoEstoque,wMudou_qtde : double;

begin
  try
    DataMovimento.CdsPedItem.First;
    while not DataMovimento.CdsPedItem.Eof do
    begin
      //wSaldoEstoque :=  Retorna_Qtde_Estoque(DataMovimento.CdsPedItemPRD_REFER.AsString,dbInicio.Empresa.EMP_CODIGO);
      wSaldoEstoque := dbInicio.KardexRetornaSaldo(DataMovimento.CdsPedItemPRD_CODIGO.AsString,DataMovimento.CdsPedItemAMX_CODIGO_DESTINO.AsString);
      if wSaldoEstoque <= 0 then
        begin
        uteis.aviso(Pchar('Sem saldo no estoque ! O produto seguinte não será atendido : '+DataMovimento.CdsPedItemPRD_REFER.AsString));
        // excluir o item do pedido
         DataMovimento.CdsPedItem.Delete;
         DataMovimento.CdsPedItem.ApplyUpdates(0);
         DataMovimento.CdsPedItem.Refresh;
         LimpaItem;
         //CalculaPed;
         //ALTERAR_VALOR_PEDIDO;
         DataMovimento.CdsPedItem.Prior;
        end
      else
         begin
         // validar se ao passar de orçamento para venda o item tem a qtde que foi solicitada
         if wSaldoEstoque < DataMovimento.CdsPedItemPRF_QTDE.AsFloat then
            begin
              wMudou_qtde := DataMovimento.CdsPedItemPRF_QTDE.AsFloat - wSaldoEstoque;
              uteis.aviso(Pchar('Não esta mais disponivel no estoque a Qtde solicitada: '+DataMovimento.CdsPedItemPRF_QTDE.Asstring+#13+
                          'Verifique! Foi diminuido a Qtde do item : '+DataMovimento.CdsPedItemPRD_REFER.AsString));
              Aumenta_Reserva_empenhada(dbInicio.Empresa.EMP_CODIGO,DataMovimento.CdsPedItemPRD_REFER.AsString,FloatToStr(wSaldoEstoque));
              KardexLancamento(DataMovimento.CdsPedItemPRF_REGISTRO.AsString,
                                               'PED',
                                               DataMovimento.CdsPedItemAMX_CODIGO_DESTINO.AsString,
                                               '',
                                               DataMovimento.CdsPedItemPRD_CODIGO.AsString,
                                               '',//grade
                                               '',
                                               'S',
                                               '',
                                               '',//Novo esquema de lote
                                               'CONVERSÃO DE ORÇAMENTO PARA VENDA',
                                               Now,
                                               wSaldoEstoque,
                                               EdtPed_codigo.Text,
                                               DBeCli_codigo.Text+'-'+EdtClienteRazao.Text,
                                               DataMovimento.CdsPedItemPRF_PRECO.AsFloat);
           //   CalculaPed;
            //  ALTERAR_VALOR_PEDIDO;
            end
         else
            Aumenta_Reserva_empenhada(dbInicio.Empresa.EMP_CODIGO,DataMovimento.CdsPedItemPRD_REFER.AsString,DataMovimento.CdsPedItemPRF_QTDE.Asstring);
            // Gravar flag atualiza estoque = S
          KardexLancamento(DataMovimento.CdsPedItemPRF_REGISTRO.AsString,
                           'PED',
                           DataMovimento.CdsPedItemAMX_CODIGO_DESTINO.AsString,
                           '',
                           DataMovimento.CdsPedItemPRD_CODIGO.AsString,
                           '',//grade
                           '',
                           'S',
                           '',
                           '',//Novo esquema de lote
                           'CONVERSÃO DE ORÇAMENTO PARA VENDA',
                           Now,
                           DataMovimento.CdsPedItemPRF_QTDE.AsFloat,
                           EdtPed_codigo.Text,
                           DBeCli_codigo.Text+'-'+EdtClienteRazao.Text,
                           DataMovimento.CdsPedItemPRF_PRECO.AsFloat);
          if DataMovimento.CdsPedItem.State in [dsBrowse] then
             begin
             DataMovimento.CdsPedItem.Edit;
             DataMovimento.CdsPedItemPRF_FLAG_ATUALIZA_ESTOQUE.AsString := 'S';
             if wSaldoEstoque < DataMovimento.CdsPedItemPRF_QTDE.AsFloat then
                DataMovimento.CdsPedItemPRF_QTDE.AsFloat := wSaldoEstoque;

             DataMovimento.CdsPedItem.ApplyUpdates(0);
             end;

         DataMovimento.CdsPedItem.Next;

         end;
         // gravar e reatualizar os totais do pedido , pois os itens podem ter sido mudados e alterado o valor do pedido
         if (DataMovimento.CdsPedidos.State in [dsBrowse]) then
             begin
             CalculaPed;
             ALTERAR_VALOR_PEDIDO;

             DesabilitaBotoes;
             DataMovimento.CdsPedidos.Edit;
             end;

    end;
  except on E:EdatabaseError do
     uteis.erro  (Pchar('Erro ao atualizar estoque!'+e.Message));
  end;
end;

procedure TFormPedidos.DBGridItensPedDblClick(Sender: tObject);
begin
 Altera_Item_Selecionado;
end;

procedure TFormPedidos.DBGridItensPedDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (not odd(DataMovimento.CdsPedItem.RecNo)) then

 { desligado por mitivo de deixar escuro o primeito item da grid ao entar na tela }
 // if not (GdSelected in State) then
//  begin
//    DBGridItensPed.Canvas.Brush.Color := $00FFEFDF; { cor para dar o azulzinho tipo zebrado na grid }
//    DBGridItensPed.Canvas.FillRect(rect);
//    DBGridItensPed.DefaultDrawDataCell(Rect,column.Field,state);
//  end;

  //Mudar a Cor da Fonte quando Produto tiver o Flag de Agregado como Sim (S)
  if (DBGridItensPed.Focused) then
  begin
    if DataMovimento.CdsPedItemPRF_PRODUTO_AGREGADO.AsString = 'S' then
    DBGridItensPed.Canvas.Font.Color := clRed
  else
    DBGridItensPed.Canvas.Font.Color := clBlack;
  if (gdSelected in State) then
  DBGridItensPed.Canvas.Font.Color := clWindow;
  DBGridItensPed.DefaultDrawDataCell(Rect, DBGridItensPed.Columns[datacol].field, State);
  end else
  begin
    if DataMovimento.CdsPedItemPRF_PRODUTO_AGREGADO.AsString = 'S' then
    DBGridItensPed.Canvas.Font.Color := clRed
    else
    DBGridItensPed.Canvas.Font.Color := clBlack;
    DBGridItensPed.DefaultDrawDataCell(Rect, DBGridItensPed.Columns[datacol].field, State);
  end;

end;

procedure TFormPedidos.DBGridItensPedKeyDown(Sender: tObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_DELETE then
  begin
    ExcluirItem;
  end;
end;

procedure TFormPedidos.DBGridItensPedKeyPress(Sender: tObject; var Key: Char);
begin
  if (key = #13) then
  begin
    Altera_Item_Selecionado;
    Key := #0;
  end; 
end;

procedure TFormPedidos.DBEVLDESPImportExit(Sender: tObject);
begin
  if (DBEVLDESPImport.Text <> '0') then
  begin
     if (DataMovimento.CdsPedItem.Active) then
     begin
       CalculaPed;
       DataMovimento.CdsPedItem.First;
     end;
  end;
end;

procedure TFormPedidos.EdDescricaoExit(Sender: tObject);
begin
    // traz botao movimento do kardex
     Bit_kardex.BringToFront;
end;

procedure TFormPedidos.CbTipo1Change(Sender: tObject);
begin
   { VERIFICAR SE O TIPO DO PEDIDO FOI MUDADO    }
   DBEOpv_codigo.Text := CbTipo1.CodigoLista;
   if (DBEOpv_codigo.Text <> '') then
      begin
         Busca_Tipo(DBEOpv_codigo.Text);
         wTipoAtEstoque      := CdsTipoOPV_ATESTOQUE.AsString;
         MensagemTipo;
         if DataMovimento.CdsPedidos.State = DsBrowse then
            DataMovimento.CdsPedidos.Edit;

      end
   else
      begin
          PanTipo.Caption := '';   // ssssssssssssssssss
      end;

  //verifica mudança na operação do pedido
  DataCadastros.sqlUpdate.Close;
  DataCadastros.SqlUpdate.sql.text :=SQLDEF('PEDIDOS','Select * from PED_IT01','where PED_CODIGO = '''+EdtPed_codigo.Text+'''','','');
  DataCadastros.sqlUpdate.Open;
  if DataCadastros.sqlUpdate.IsEmpty = false then
  begin
    if (wTipoAtEstoque <> wTipoAtEstoque_Anterior) then
    begin
      if (wTipoAtEstoque ='S') then
      begin
        uteis.aviso(pchar('O Tipo '+ wNomeTipoAnterior+' foi mudado para '+CbTipo1.Text+#13+#13+
              'Os itens do pedido serão retirados do estoque.'));
      end
    else
      begin
        uteis.aviso(pchar('O Tipo '+ wNomeTipoAnterior+' foi mudado para '+CbTipo1.Text+#13+#13+
              'Os produtos ficarão disponíveis no estoque novamente.'));
      end;
    end;
  end;
  { FIM DO VERIFICAR TIPO}
end;

procedure TFormPedidos.TabSheetClientesShow(Sender: tObject);
var
wCli_codigo : string;
begin
     if Msk_busca.Text = '' then
        begin
        wCli_codigo := StrZero(DBeCli_codigo.Text,5);
        DataCadastros.CdsClientes.Close;
        DataCadastros.CdsClientes.CommandText   := SQLDEF('CLIENTES','SELECT C1.* FROM CLI0000 C1 ','Where C1.CLI_CODIGO = '''+wCli_codigo+'''','C1.CLI_CODIGO','C1.');
        DataCadastros.CdsClientes.Open;
        end;

     if not DataCadastros.CdsClientes.IsEmpty then
        BuscaprodutosCliente;

    // mostrar mascara cnpj ou CPF no registro atual
    if Length(trim(DBECLI_CGC.Text)) = 14 then
       DataCadastros.CdsClientes.FieldByName('CLI_CGC').EditMask := '99\.999\.999\/9999\-99;0;_'
    else
       DataCadastros.CdsClientes.FieldByName('CLI_CGC').EditMask := '999\.999\.999\-99;0;_';



end;

procedure TFormPedidos.BitPesquisaClick(Sender: tObject);
begin
   if RadRazao.checked  then
     begin
     DataCadastros.CdsClientes.Close;
     DataCadastros.CdsClientes.CommandText   := SQLDEF('CLIENTES','SELECT C1.* FROM CLI0000 C1 ','Where C1.CLI_RAZAO LIKE'+QuotedStr('%'+Msk_busca.Text+'%')+'','C1.CLI_CODIGO','C1.');
     DataCadastros.CdsClientes.Open;
     DataCadastros.CdsClientes.Refresh;
     end;
   if RadCodigo.checked  then
      begin
      DataCadastros.CdsClientes.Close;
      DataCadastros.CdsClientes.CommandText   := SQLDEF('CLIENTES','SELECT C1.* FROM CLI0000 C1 ','Where C1.CLI_CODIGO = '''+StrZero(Msk_busca.Text,5)+'''','C1.CLI_CODIGO','C1.');
      DataCadastros.CdsClientes.Open;
      DataCadastros.CdsClientes.Refresh;
      end;

   if RadFantasia.checked  then
      begin
      DataCadastros.CdsClientes.Close;
      DataCadastros.CdsClientes.CommandText   := SQLDEF('CLIENTES','SELECT C1.* FROM CLI0000 C1 ','Where C1.CLI_FANTASIA LIKE'+QuotedStr('%'+Msk_busca.Text+'%')+'','C1.CLI_CODIGO','C1.');
      DataCadastros.CdsClientes.Open;
      DataCadastros.CdsClientes.Refresh;
      end;

   if (RadCgc.checked ) or (RadCPF.checked ) then
      begin
      DataCadastros.CdsClientes.Close;
      DataCadastros.CdsClientes.CommandText   := SQLDEF('CLIENTES','SELECT C1.* FROM CLI0000 C1 ','Where C1.CLI_CGC = '''+Msk_busca.Text+'''','C1.CLI_CODIGO','C1.');
      DataCadastros.CdsClientes.Open;
      DataCadastros.CdsClientes.Refresh;
      end;

    if DataCadastros.CdsClientes.IsEmpty then
       begin
         uteis.aviso('O Cliente pesquisado não foi encontrado.');
       end
     else
       begin
         BuscaprodutosCliente;
       end;


    // mostrar mascara cnpj ou CPF no registro atual
    if Length(trim(DBECLI_CGC.Text)) = 14 then
       DataCadastros.CdsClientes.FieldByName('CLI_CGC').EditMask := '99\.999\.999\/9999\-99;0;_'
    else
       DataCadastros.CdsClientes.FieldByName('CLI_CGC').EditMask := '999\.999\.999\-99;0;_';

     Msk_busca.text      := '';

end;

procedure TFormPedidos.BuscaprodutosCliente;
var
wsql1 : string;
begin

   wsql1 := 'SELECT T1.PRD_REFER,T1.PED_CODIGO,t1.PRD_DESCRI,t1.NF_QTDE,t1.NF_PRECO,t1.NF_IPIVALOR,t1.NF_VLSUBST,t1.NF_IDESCTO1,t2.CLI_CODIGO,t2.NF_NUM_NFE,t2.NF_EMISSAO FROM NF_IT01 t1 join NF0001 t2 on (t1.NF_IT_NOTANUMER = t2.NF_NOTANUMBER)';
   SQLClienteProd.close;
   SQLClienteProd.CommandText := SQLDEF('CLIENTES',wsql1,'WHERE t2.CLI_CODIGO = '+QuotedStr(DataCadastros.CdsClientesCLI_CODIGO.Text)+'','t1.PRD_REFER,t2.NF_EMISSAO','T2.');
   SQLClienteProd.Open;

end;


procedure TFormPedidos.LayOutPesq;
begin
    if RadCodigo.checked  then
       begin
           GBLista.Caption     := 'Código do Cliente:';
           GBLista.Width       := 100;
           Msk_busca.text      := '';
           Msk_busca.MaxLength := 5;
           Msk_busca.Width     := 50;
           Msk_busca.EditMask  := '';
           Msk_busca.SetFocus;
       end;
    if RadRazao.checked  then
       begin
           GBLista.Caption     := 'Razão Social do Cliente:';
           GBLista.Width       := 351;
           Msk_busca.text      := '';
           Msk_busca.MaxLength := 50;
           Msk_busca.Width     := 340;
           Msk_busca.EditMask  := '';
           Msk_busca.SetFocus;
       end;
    if RadFantasia.checked  then
       begin
           GBLista.Caption     := 'Nome Fantasia do Cliente:';
           GBLista.Width       := 351;
           Msk_busca.text      := '';
           Msk_busca.MaxLength := 50;
           Msk_busca.Width     := 340;
           Msk_busca.EditMask  := '';
           Msk_busca.SetFocus;
       end;
    if RadCPF.checked  then
       begin
           GbLista.Caption     := 'CPF do Cliente:';
           GbLista.Width       := 130;
           Msk_busca.Text      := '';
           Msk_busca.MaxLength := 11;
           Msk_busca.Width     := 117;
           Msk_busca.EditMask  := '999.999.999-99;0;_';
           Msk_busca.SetFocus;
       end;
    if RadCgc.checked  then
       begin
           GbLista.Caption     := 'CNPJ do Cliente:';
           GbLista.Width       := 130;
           Msk_busca.Text      := '';
           Msk_busca.MaxLength := 14;
           Msk_busca.Width     := 117;
           Msk_busca.EditMask  := '99.999.999/9999-99;0;_';
           Msk_busca.SetFocus;
       end;

end;

procedure TFormPedidos.Msk_buscaEnter(Sender: tObject);
begin
    Msk_busca.Text  := '';
    //BitPesquisa.Click;
    Msk_busca.Color := $0080FFFF;
    Msk_busca.SelectAll;
end;

procedure TFormPedidos.Msk_buscaExit(Sender: tObject);
begin
  Msk_busca.Color := clWindow;
end;

procedure TFormPedidos.Msk_buscaKeyPress(Sender: tObject; var Key: Char);
begin
  if RadCodigo.checked  then
       begin
           if not(Key in['0'..'9',#8]) then
              begin
                  //beep;
                  Key:=#0;
              end;
       end;
end;

procedure TFormPedidos.RadRazaoClick(Sender: tObject);
begin
LayOutPesq;
end;

procedure TFormPedidos.RadCodigoClick(Sender: tObject);
begin
LayOutPesq;
end;

procedure TFormPedidos.RadFantasiaClick(Sender: tObject);
begin
LayOutPesq;
end;

procedure TFormPedidos.RadCgcClick(Sender: tObject);
begin
LayOutPesq;
end;

procedure TFormPedidos.RadCPFClick(Sender: tObject);
begin
LayOutPesq;
end;

procedure TFormPedidos.SQLClienteProdCalcFields(DataSet: TDataSet);
begin
   //preço total do item
    SQLClienteProdCC_TOTAL.AsFloat := SQLClienteProdNF_QTDE.AsFloat*SQLClienteProdNF_PRECO.AsFloat;

end;

procedure TFormPedidos.BitVendaHistoricoClick(Sender: tObject);
var
wsql1 :string;
begin
   PanVendaH.BringToFront;
   PanVendaH.Visible := true;
   PanVendaH.top     := 315;
   PanVendaH.Left    := 135;
   //
   BuscaVendaHistorico;


end;

procedure TFormPedidos.BuscaVendaHistorico;
var
wsql1, wRefer :string;
begin
   if CbRef.Text <> '' then
       begin
       wRefer := CbRef.Text;
       EditProdutoVendas.Text := EdDescricao.Text;
       end
   else
      begin
      wRefer := DataMovimento.CdsPedItemPRD_REFER.AsString;
      EditProdutoVendas.Text := DataMovimento.CdsPedItemPRF_PRDDESCRI.AsString;
      end;
   //
   wsql1 := 'SELECT T1.PRD_REFER,T1.PED_CODIGO,t1.PRD_DESCRI,t1.NF_QTDE,t1.NF_PRECO,t1.NF_IPIVALOR,t1.NF_VLSUBST,t1.NF_IDESCTO1,t2.CLI_CODIGO,t2.NF_NUM_NFE,t2.NF_EMISSAO FROM NF_IT01 t1 join NF0001 t2 on (t1.NF_IT_NOTANUMER = t2.NF_NOTANUMBER)';
   // abrir o produto em seleção referente a vendas anteriores do cliente
   SQLClienteProd.close;
   SQLClienteProd.CommandText := SQLDEF('CLIENTES',wsql1,'WHERE t2.CLI_CODIGO = '+QuotedStr(DBeCli_codigo.Text)+' and t1.PRD_REFER = '+QuotedStr(wRefer)+'','t1.PRD_REFER,t2.NF_EMISSAO','T2.');
   SQLClienteProd.Open;
   
end;


procedure TFormPedidos.BitSairHistoricoProdClick(Sender: tObject);
begin
    PanVendaH.Visible := false;
    SQLClienteProd.close;
end;

procedure TFormPedidos.SpXhistoricoClick(Sender: tObject);
begin
    PanVendaH.Visible := false;
    SQLClienteProd.close;
end;

procedure TFormPedidos.PanVendaHExit(Sender: tObject);
begin
   PanVendaH.Visible := false;
   SQLClienteProd.close;
end;

procedure TFormPedidos.TabSheetReservaShow(Sender: tObject);
begin

    BuscaprodutosReservas;

end;

Procedure TFormPedidos.BuscaprodutosReservas;
var
wsql1,wsql2,wsql3 :string;
begin
  wsql1 := '';
  wsql2 := '';
  wsql3 := '';
   // buscar todos os produtos que estao na Reserva
   wsql1 := 'SELECT T1.PRD_REFER,T1.PRF_PRDDESCRI,SUM(T1.PRF_QTDE) AS SQTDE FROM PED_IT01 T1 ';
   wsql2 := 'WHERE T1.PRF_SITUACAO <> ''T'' AND T1.PRF_FLAG_ATUALIZA_ESTOQUE = ''S'' GROUP BY T1.PRD_REFER,T1.PRF_PRDDESCRI ';
   wsql3 := 'ORDER BY T1.PRD_REFER';

   if Share('PEDIDOS') = 'E' Then
     begin
     SQLReservaProd.Close;
     SQLReservaProd.CommandText :=wsql1+wsql2+wsql3;
     SQLReservaProd.Open;
     end;


   // buscar os pedidos refente a cada produto que esta na reserva
   BuscapedidosReservas(SQLReservaProdPRD_REFER.AsString);

end;


Function TFormPedidos.BuscapedidosReservas(wreserva_Prd_refer:string):boolean;
var
wsql1,wsql2 : string;
begin
   wsql1 := '';
   wsql2 := '';
   wsql1 := 'SELECT T1.PED_CODIGO,T1.PRD_REFER,T2.PED_DTENTRADA,T2.CLI_CODIGO,T3.CLI_RAZAO,T2.REP_CODIGO,T4.REP_NOME,(T1.PRF_QTDE-T1.PRF_QTDEFAT) AS SQTDEFATURAR FROM PED_IT01 T1 ';
   wsql2 := 'JOIN PED0000 T2 ON (T1.PED_CODIGO = T2.PED_CODIGO) JOIN CLI0000 T3 ON (T2.CLI_CODIGO = T3.CLI_CODIGO) JOIN REP0000 T4 ON (T2.REP_CODIGO = T4.REP_CODIGO)';

   SQLReservaPed.Close;
   SQLReservaPed.CommandText := SQLDEF('PEDIDOS',wsql1+wsql2,'WHERE T1.PRF_SITUACAO <> ''T'' AND T1.PRF_FLAG_ATUALIZA_ESTOQUE = ''S'' and T1.PRD_REFER ='''+wreserva_Prd_refer+'''','T2.PED_DTENTRADA','T1.');
   SQLReservaPed.Open;

   Result := True;

end;



procedure TFormPedidos.SQLReservaProdAfterScroll(DataSet: TDataSet);
begin
// buscar os pedidos refente a cada produto que esta na reserva
   BuscapedidosReservas(SQLReservaProdPRD_REFER.AsString);
end;

procedure TFormPedidos.BitPesqReservaProdClick(Sender: tObject);
var
wsql1,wsql2,wsql3 :string;
begin
  // busca somente o produto da pesquisa

  if EditProdReserva.Text <> '' then
    begin
     wsql1 := '';
     wsql2 := '';
     wsql3 := '';
     // buscar todos os produtos que estao na Reserva
     wsql1 := 'SELECT T1.PRD_REFER,T1.PRF_PRDDESCRI,SUM(T1.PRF_QTDE) AS SQTDE FROM PED_IT01 T1 ';
     wsql2 := 'WHERE T1.PRF_SITUACAO <> ''T'' AND T1.PRF_FLAG_ATUALIZA_ESTOQUE = ''S'' and T1.PRD_REFER = '''+EditProdReserva.Text+''' GROUP BY T1.PRD_REFER,T1.PRF_PRDDESCRI ';
     wsql3 := 'ORDER BY T1.PRD_REFER';

     if Share('PEDIDOS') = 'E' Then
       begin
       SQLReservaProd.Close;
       SQLReservaProd.CommandText :=wsql1+wsql2+wsql3;
       SQLReservaProd.Open;
       end;
     if  not SQLReservaProd.IsEmpty then
        // buscar os pedidos refente a cada produto que esta na reserva
         BuscapedidosReservas(SQLReservaProdPRD_REFER.AsString)
      else
        begin
        uteis.aviso('Produto não consta na reserva de pedidos abertos');
        // carregar tela com todos os produtos novamente
        BitCancelaReservaProd.Click;
        end;

    end;
end;

procedure TFormPedidos.BitCancelaReservaProdClick(Sender: tObject);
begin
  EditProdReserva.Text := '';

  BuscaprodutosReservas;

end;

procedure TFormPedidos.ChkDesctoExit(Sender: tObject);
begin
   if ChkDescto.Checked = False then
      begin
      CurrDesctoPc1.Value    := 0;
      CurrDesctoPc2.Value    := 0;
      CurrDesctoIndice.Value := 0;
      CurrDesctoVl.value     := 0;

      CalculaIndiceDescto;
      CalculaPed;
      end;
end;

procedure TFormPedidos.CurrDesctoIndiceExit(Sender: tObject);
begin
  CalculaIndiceDescto;
  CalculaPed;

end;

procedure TFormPedidos.TabSheetClientesExit(Sender: tObject);
begin
   SQLClienteProd.close;
end;

procedure TFormPedidos.TabSheetReservaExit(Sender: tObject);
begin
    SQLReservaProd.Close;
    SQLReservaPed.Close;
end;

procedure TFormPedidos.BiImprimeEnviaClick(Sender: tObject);
begin
   {Pedido no Fast Report}
           if FormPedidos.EdtPed_codigo.Text = '' then
              begin
              uteis.erro  ('O Pedido precisa estar na tela para Imprimir ou Enviar!');
              exit;
           end;
      // pedido
      wSeleciona :=' where PED.PED_CODIGO = '''+DataMovimento.CdsPedidosPED_CODIGO.AsString+'''';
      wOrdem     :=' PED.PED_CODIGO';
      wSql1 := 'Select PED.PED_CODIGO,PED.PED_DTENTRADA,PED.PED_DTSAIDA,PED.PED_EXPEDICAO,PED.PED_COMIS1,PED.PED_COMIS2,PED.PED_COMIS3,PED.PED_FRETE,PED.PED_FRETE2,PED.PED_SITCRED,PED.PED_PRIORIDADE,PED.PED_TOTUPS,PED.PED_VLTUPS,';
      wSql2 := 'PED.PED_DESCTONF,PED.PED_DESCTOPC1,PED.PED_DESCTOPC2,PED.PED_DESCTOVL,PED.PED_VLTOTAL_LIQ,PED.PED_VLTOTAL_IPI,PED.PED_VLTOTAL_BRUTO,PED.PED_OBSNOTA,PED.PED_OBSG1,PED.PED_OBSG2,PED.PED_OBSG3,CLI.CLI_EMAIL_ALTERNATIVO,';
      wSql3 := 'PED.PED_OBSG4,PED.PED_OBSG5,PED.PED_OBSG6,PED.PED_OBSG7,PED.CLI_CODIGO,CLI.CLI_RAZAO,CLI.CLI_FANTASIA,CLI.CLI_ENDERE,CLI.CLI_BAIRRO,CLI.CLI_CIDADE,CLI.CLI_UF,CLI.CLI_CEP,CLI.CLI_PESSOA,CLI.CLI_CGC,CLI.CLI_INSC,CLI.CLI_CONTATO,';
      wSql4 := 'CLI.CLI_FONE,CLI.CLI_FAX,CLI.CLI_ENDENTR,CLI.CLI_CIDENTR,CLI.CLI_UFENTR,CLI.CLI_CEPENTR,CLI.CLI_ENDFAT,CLI.CLI_CIDFAT,CLI.CLI_UFFAT,CLI.CLI_CEPFAT,CLI.CLI_EMAIL,PED.REP_CODIGO,REP.REP_NOME,PED.PCL_CODIGO,PCL.PCL_NOME,PED.TRP_CODIGO,';
      wSql5 := 'TRP.TRP_RAZAO,TRP.TRP_FONE,PED.TRP_REDESP,TRR.TRP_RAZAO,TRR.TRP_FONE,PED.OPV_CODIGO,OPV.OPV_DESCRICAO from PED0000 PED LEFT JOIN CLI0000 CLI on PED.cli_codigo = CLI.cli_codigo LEFT JOIN REP0000 REP on PED.rep_codigo = REP.rep_codigo ';
      wSql6 := 'LEFT JOIN PCL0000 PCL on PED.pcl_codigo = PCL.pcl_codigo LEFT JOIN TRP0000 TRP on PED.trp_codigo = TRP.trp_codigo LEFT JOIN TRP0000 TRR ON PED.trp_redesp = TRR.trp_codigo LEFT JOIN OPV0000 OPV ON (OPV.OPV_CODIGO = PED.OPV_CODIGO) ';
      SQLPedidosFast.Close;
      SQLPedidosFast.CommandText := SQLDEF('PEDIDOS',wSql1+wSql2+wSql3+wSql4+wSql5+wSql6,wSeleciona,wOrdem,'PED.');
      SQLPedidosFast.Open;

      // itens do pedido
      wSql1 := 'Select PIT.*,PTI.PTI_SIGLA,';
      wSql2 := 'PRD.PRD_UND,PRD.PRD_PESOKG,PRD.PRD_PESOLIQ,PRD.PRD_DCVAR1,PRD.PRD_DCVAR2,PRD.PRD_DCVAR3,PRD.PRD_DCVAR4,PRD.PRD_DCVAR5,PRD.PRD_DCVAR6,PRD.PRD_DCVAR7,PRD.PRD_DCVAR8 from PED_IT01 PIT ';
      wSql3 := 'LEFT JOIN PRD0000 PRD ON (PIT.PRD_REFER = PRD.PRD_REFER) LEFT JOIN PRD_TIPO PTI ON (PRD.PTI_CODIGO = PTI.PTI_CODIGO) ';
      SQLItensPedidoFast.Close;
      SQLItensPedidoFast.CommandText := SQLDEF('PEDIDOS',wSql1+wSql2+wSql3,'where PIT.PED_CODIGO = '''+SQLPedidosFastPED_CODIGO.AsString+'''','PIT.PRF_REGISTRO','PIT.');
      SQLItensPedidoFast.Open;

      
      frxPedido.ShowReport();
      if (uteis.confirmacao  ( 'Gostaria de Enviar por Email?')=mrYes) then
        begin
          try
            CreateDirectory(PWideChar(dbInicio.SistemaLocal+'pedidos'), nil);
          except

          end;
          frxPDFExport1.DefaultPath := dbInicio.SistemaLocal+'pedidos';
          frxPDFExport1.FileName    := SQLPedidosFastPED_CODIGO.AsString + '.pdf';
          frxPDFExport1.ShowDialog  := False;
          frxPedido.PrepareReport();
          frxPedido.Export(frxPDFExport1);
          try
            FrmEmail := TFrmEmail.Create(Application);
            FrmEmail.sCaminhoArquivo := dbInicio.SistemaLocal+'pedidos\'+SQLPedidosFastPED_CODIGO.AsString + '.pdf';
            FrmEmail.sEmailCliente   := SQLPedidosFastCLI_EMAIL_ALTERNATIVO.AsString;
            FrmEmail.sAssunto        := 'Pedido de '+SQLPedidosFastOPV_DESCRICAO.AsString+ ' ' +  SQLPedidosFastPED_CODIGO.AsString;
            FrmEmail.ProcessarInformacoes;
          finally
            FrmEmail.Destroy;
            FrmEmail := Nil;
          end;
        end;

end;

procedure TFormPedidos.SQLItensPedidoFastCalcFields(DataSet: TDataSet);
begin
    SQLItensPedidoFastCC_PRECO_TOT.AsFloat := SQLItensPedidoFastPRF_QTDE.AsFloat * SQLItensPedidoFastPRF_PRECO.AsFloat ;
end;

procedure TFormPedidos.frxPedidoGetValue(const VarName: String;
  var Value: Variant);
begin
  if (VarName  = 'PEDIDO') then
      Value := IIF(SQLPedidosFastOPV_CODIGO.AsString = '16','ORÇAMENTO:','PEDIDO:')
  else
  if (VarName  = 'RAZAO') then
     Value := dbInicio.Empresa.RAZAO
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
  if (VarName  = 'FONE') then
     Value := dbInicio.Empresa.FONE
  else
  if (VarName  = 'EMAIL') then
     Value := dbInicio.Empresa.EMAILVENDA
  else
  if (VarName  = 'CNPJ') then
     Value := dbInicio.Empresa.CNPJ_CNPF
  else
  if (VarName  = 'INSCR') then
     Value := dbInicio.Empresa.INSC_EST
  else
  if (VarName  = 'CLICNPJ') then
     Value := MascaraCNPJ_CPF(SQLPedidosFastCLI_CGC.AsString)
  else
  if (VarName  = 'CLI_FONE') then
     Value := MascaraFone(SQLPedidosFastCLI_FONE.AsString)
  else
  if (VarName  = 'CLI_FAX') then
     Value := MascaraFone(SQLPedidosFastCLI_FAX.AsString)
  else
  if (VarName  = 'PED_FRETE') then
     Value := IIF(SQLPedidosFastPED_FRETE.AsString = ' ','',IIF(SQLPedidosFastPED_FRETE.Asstring = 'C','PAGO','À PAGAR'))
  else
  if (VarName  = 'CLI_CEP') then
      Value := MascaraCep(SQLPedidosFastCLI_CEP.AsString);

  if (FileExists(dbInicio.Empresa.CaminhoLogo)) then
     TfrxPictureView(frxPedido.FindObject('LogoEmpresa')).Picture := FrmMenu.ImglogoMenu.Picture;
end;

procedure TFormPedidos.DsPedItemDataChange(Sender: tObject; Field: TField);
begin

  CdSPedidoDI.Close;
  if (DsPedItem.State = dsBrowse) then
    begin
      CdSPedidoDI.CommandText := 'SELECT T1.*  FROM PED_IT01_DI T1 WHERE T1.PRF_REGISTRO = '+iif(DataMovimento.CdsPedItem.IsEmpty,'-1',DataMovimento.CdsPedItemPRF_REGISTRO.AsString);
      CdSPedidoDI.Open;
    end;
  
end;

procedure TFormPedidos.DSPedidoDIDataChange(Sender: tObject;
  Field: TField);
begin
  CdSPedidoDIAdicao.Close;
  if ((not CdSPedidoDI.IsEmpty) and (CdSPedidoDIPID_REGISTRO.AsString <> '')) then
    begin
      CdSPedidoDIAdicao.CommandText := 'SELECT T1.*  FROM PED_IT01_DI_ADICAO T1 WHERE T1.PID_REGISTRO = '+iif(CdSPedidoDI.IsEmpty,'-1',CdSPedidoDIPID_REGISTRO.AsString);
      CdSPedidoDIAdicao.Open;
    end;
end;

procedure TFormPedidos.CdSPedidoDIAfterInsert(DataSet: TDataSet);
begin
  CdSPedidoDIPID_REGISTRO.AsInteger := RetornaGenerator('gen_ped_it01_di_id',true);
  CdSPedidoDIPRF_REGISTRO.AsInteger := DataMovimento.CdsPedItemPRF_REGISTRO.AsInteger;
  DBEdit1.SetFocus;
  DBEdit1.SelectAll;
end;

procedure TFormPedidos.CdSPedidoDIAdicaoAfterInsert(DataSet: TDataSet);
begin
  CdSPedidoDIAdicaoPDA_REGISTRO.AsInteger := RetornaGenerator('gen_ped_it01_di_adicao_id',true);
  CdSPedidoDIAdicaoPID_REGISTRO.AsInteger := CdSPedidoDIPID_REGISTRO.AsInteger;
  DBEdit33.SetFocus;
  DBEdit33.SelectAll;
end;

procedure TFormPedidos.DSPedidoDIStateChange(Sender: tObject);
begin
  CdSPedidoDIAdicao.Close;
  if ((not CdSPedidoDI.IsEmpty) and (CdSPedidoDIPID_REGISTRO.AsString <> '')) then
    begin
      CdSPedidoDIAdicao.CommandText := 'SELECT T1.*  FROM PED_IT01_DI_ADICAO T1 WHERE T1.PID_REGISTRO = '+iif(CdSPedidoDI.IsEmpty,'-1',CdSPedidoDIPID_REGISTRO.AsString);
      CdSPedidoDIAdicao.Open;
    end;
end;

procedure TFormPedidos.CdSPedidoDIAfterPost(DataSet: TDataSet);
begin
  try
    CdSPedidoDI.ApplyUpdates(0);
  except

  end;
  CdSPedidoDIAdicao.Close;
  if ((not CdSPedidoDI.IsEmpty) and (CdSPedidoDIPID_REGISTRO.AsString <> '')) then
    begin
      CdSPedidoDIAdicao.CommandText := 'SELECT T1.*  FROM PED_IT01_DI_ADICAO T1 WHERE T1.PID_REGISTRO = '+iif(CdSPedidoDI.IsEmpty,'-1',CdSPedidoDIPID_REGISTRO.AsString);
      CdSPedidoDIAdicao.Open;
    end;
end;

procedure TFormPedidos.CdSPedidoDIAdicaoAfterPost(DataSet: TDataSet);
begin
  try
    CdSPedidoDIAdicao.ApplyUpdates(0);
  except

  end;
end;

procedure TFormPedidos.TabSheet5Show(Sender: tObject);
begin
// mostra comforme o item na gride
if (CbRef.Text = '') and (EdDescricao.Text = '') then
     begin
     EdDescricaoClone.Text := DataMovimento.CdsPedItemPRF_PRDDESCRI.AsString;
     EdComplemento.Text    := DataMovimento.CdsPedItemPRF_COMPL_DESCRI.AsString;
     end
   else
     // entrando com uma nova referencia
     EdDescricaoClone.Text := EdDescricao.Text;
end;

procedure TFormPedidos.TabSheet4Show(Sender: tObject);
begin
 if DataMovimento.CdsPedItem.State in [dsBrowse] then
    CurrQtde.SetFocus;

end;

procedure TFormPedidos.SpeedTipoClick(Sender: tObject);
begin
   if (CbTipo1.Enabled = False) then
      begin
         CbTipo1.Style := csOwnerDrawFixed;
         CbTipo1.Enabled := true;
         CbTipo1.SetFocus;
      end
   else
      begin
         CbTipo1.Style := csSimple;
         CbTipo1.Enabled := false;
         if (wTipoAtEstoque <> wTipoAtEstoque_Anterior) then
            begin
               if (wReserva_Pedido_Producao = 'P') then
               begin
                 if (wTipoAtEstoque ='S') then
                 begin
                   MudouTipo_N;
                   uteis.aviso('Produtos foram retirados do Estoque para a Reserva.');
                 end
                else
                 begin
                   MudouTipo_S;
                   uteis.aviso('Produtos sairam da Reserva e voltaram ao Estoque !');
                 end;
               end;
            end;
         
      end;
end;

end.





