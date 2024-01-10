unit OsvN0002;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, {uProcedimentos,}
  Dialogs, StdCtrls, Grids, DBGrids, Mask,  rxToolEdit, Buttons, ComCtrls, BaseDbEstoqueForm,
  ExtCtrls, DBCtrls,  rxCurrEdit, Provider, SqlExpr,SqlClientDataSet, DB, DBClient, DBLocal,
  DBLocalS, ImgList, Menus, ComboBoxRw, JvDBCheckBox, Data.DBXFirebird,
  System.ImageList, SimpleDS, SgDbSeachComboUnit, Iniciodb, Data.FMTBCd, ACBrEnterTab, ACBrBase, ACBrCalculadora, JvExMask, JvToolEdit;

type
  TFormOrdServCentroGerar = class(TfrmBaseDbEstoque)
    Grp_Pedidos: TGroupBox;
    Grp_Itens: TGroupBox;
    DBGridGrupo: TDBGrid;
    DBGridItens: TDBGrid;
    Grp_OP: TGroupBox;
    Panel2: TPanel;
    Rad_Pedido: TRadioButton;
    Rad_Item: TRadioButton;
    SqlCdsPsvGrupo: TSQLClientDataSet;
    DsPsvGrupo: TDataSource;
    SqlCdsPsvGrupoPSG_REGISTRO: TIntegerField;
    SqlCdsPsvGrupoEMP_CODIGO: TStringField;
    SqlCdsPsvGrupoPED_CODIGO: TStringField;
    SqlCdsPsvGrupoCLI_CODIGO: TStringField;
    SqlCdsPsvGrupoCLI_RAZAO: TStringField;
    SqlCdsPs2: TSQLClientDataSet;
    DsPs2: TDataSource;
    SqlCdsPedidos: TSQLClientDataSet;
    SqlCdsItensPedido: TSQLClientDataSet;
    SqlCdsPedidosEMP_CODIGO: TStringField;
    SqlCdsPedidosPED_CODIGO: TStringField;
    SqlCdsPedidosCLI_CODIGO: TStringField;
    SqlCdsPedidosCLI_RAZAO: TStringField;
    SqlCdsPedidosPED_SITUACAO: TStringField;
    SqlCdsItensPedidoEMP_CODIGO: TStringField;
    SqlCdsItensPedidoPED_CODIGO: TStringField;
    SqlCdsItensPedidoPRD_REFER: TStringField;
    SqlCdsItensPedidoPRF_QTDE: TFMTBCdField;
    SqlCdsItensPedidoPRF_VAR1: TFMTBCdField;
    SqlCdsItensPedidoPRF_VAR2: TFMTBCdField;
    SqlCdsItensPedidoPRF_VAR3: TFMTBCdField;
    SqlCdsItensPedidoPRF_VAR4: TFMTBCdField;
    SqlCdsItensPedidoPRF_VAR5: TFMTBCdField;
    SqlCdsItensPedidoPRF_VAR6: TFMTBCdField;
    SqlCdsItensPedidoPRF_VAR7: TFMTBCdField;
    SqlCdsItensPedidoPRF_VAR8: TFMTBCdField;
    SqlCdsBuscaFicha: TSQLClientDataSet;
    SqlCdsItensFichas: TSQLClientDataSet;
    SqlCdsConsumo: TSQLClientDataSet;
    SqlCdsN1: TSQLClientDataSet;
    SqlCdsN1PRD_REFER: TStringField;
    SqlCdsN1PRD_REFER_ITENS: TStringField;
    SqlCdsN1PRD_DESCRI: TStringField;
    SqlCdsN1PRD_PCUSTO: TFMTBCdField;
    SqlCdsN1PRD_ESTOQUE: TFMTBCdField;
    SqlCdsN1PRD_ENTRADA: TFMTBCdField;
    SqlCdsN1PRD_SAIDA: TFMTBCdField;
    SqlCdsN1PRD_PENDENTE: TFMTBCdField;
    SqlCdsN1PRD_RESERVA: TFMTBCdField;
    SqlCdsN1PRD_UND: TStringField;
    SqlCdsN1PTI_SIGLA: TStringField;
    SqlCdsN1FTI_MODE1: TStringField;
    SqlCdsN1FTI_MODE2: TStringField;
    SqlCdsN1FTI_MODE3: TStringField;
    SqlCdsN1FTI_MODE4: TStringField;
    SqlCdsN1FTI_MODE5: TStringField;
    SqlCdsN1FTI_MODE6: TStringField;
    SqlCdsN1FTI_MODE7: TStringField;
    SqlCdsN1FTI_MODE8: TStringField;
    SqlCdsN1FTI_UC: TFloatField;
    ImageList1: TImageList;
    PopMenuItens: TPopupMenu;
    Ativa1: TMenuItem;
    SqlCdsItensPedidoPTI_CODIGO: TStringField;
    SqlCdsItensPedidoPTI_SIGLA: TStringField;
    SqlCdsGerarOP: TSQLClientDataSet;
    SqlCdsGerarOPPSI_REGISTRO: TIntegerField;
    SqlCdsGerarOPPED_CODIGO: TStringField;
    SqlCdsGerarOPPRD_REFER: TStringField;
    SqlCdsGerarOPPRD_REFER_ITENS: TStringField;
    SqlCdsGerarOPPRD_DESCRI: TStringField;
    SqlCdsGerarOPPRD_UND: TStringField;
    SqlCdsGerarOPPTI_SIGLA: TStringField;
    SqlCdsGerarOPPSI_CONSUMO: TFMTBCdField;
    SqlCdsFicha: TSQLClientDataSet;
    SqlCdsFichaPRD_REFER: TStringField;
    SqlCdsFichaFTC_TUP: TFMTBCdField;
    SqlCdsFichaFTC_CRIACAO: TSQLTimeStampField;
    SqlCdsFichaFTC_PROC1: TStringField;
    SqlCdsFichaFTC_PROC2: TStringField;
    SqlCdsFichaFTC_PROC3: TStringField;
    SqlCdsFichaFTC_PROC4: TStringField;
    SqlCdsFichaFTC_PROC5: TStringField;
    SqlCdsFichaFTC_PROC6: TStringField;
    SqlCdsFichaFTC_PROC7: TStringField;
    SqlCdsFichaFTC_PROC8: TStringField;
    SqlCdsFichaFTC_FIXO: TFMTBCdField;
    SqlCdsFichaFTC_COMPLE: TFMTBCdField;
    SqlCdsFichaFTC_INDIRETA: TFMTBCdField;
    SqlCdsFichaFTC_LUCROUNID: TFMTBCdField;
    SqlCdsFichaEMP_CODIGO: TStringField;
    SqlCdsBuscaFichaPRD_REFER: TStringField;
    SqlCdsBuscaFichaFTC_TUP: TFMTBCdField;
    SqlCdsBuscaFichaFTC_CRIACAO: TSQLTimeStampField;
    SqlCdsBuscaFichaFTC_PROC1: TStringField;
    SqlCdsBuscaFichaFTC_PROC2: TStringField;
    SqlCdsBuscaFichaFTC_PROC3: TStringField;
    SqlCdsBuscaFichaFTC_PROC4: TStringField;
    SqlCdsBuscaFichaFTC_PROC5: TStringField;
    SqlCdsBuscaFichaFTC_PROC6: TStringField;
    SqlCdsBuscaFichaFTC_PROC7: TStringField;
    SqlCdsBuscaFichaFTC_PROC8: TStringField;
    SqlCdsBuscaFichaFTC_FIXO: TFMTBCdField;
    SqlCdsBuscaFichaFTC_COMPLE: TFMTBCdField;
    SqlCdsBuscaFichaFTC_INDIRETA: TFMTBCdField;
    SqlCdsBuscaFichaFTC_LUCROUNID: TFMTBCdField;
    SqlCdsBuscaFichaEMP_CODIGO: TStringField;
    SqlCdsBuscaFichaPRD_DESCRI: TStringField;
    SqlCdsBuscaFichaPRD_PCUSTO: TFMTBCdField;
    SqlCdsBuscaFichaPRD_UND: TStringField;
    SqlCdsBuscaFichaPRD_DCVAR1: TStringField;
    SqlCdsBuscaFichaPRD_DCVAR2: TStringField;
    SqlCdsBuscaFichaPRD_DCVAR3: TStringField;
    SqlCdsBuscaFichaPRD_DCVAR4: TStringField;
    SqlCdsBuscaFichaPRD_DCVAR5: TStringField;
    SqlCdsBuscaFichaPRD_DCVAR6: TStringField;
    SqlCdsBuscaFichaPRD_DCVAR7: TStringField;
    SqlCdsBuscaFichaPRD_DCVAR8: TStringField;
    SqlCdsItensFichasPRD_REFER: TStringField;
    SqlCdsItensFichasPRD_REFER_ITENS: TStringField;
    SqlCdsItensFichasPRD_DESCRI: TStringField;
    SqlCdsItensFichasPRD_PCUSTO: TFMTBCdField;
    SqlCdsItensFichasPRD_ESTOQUE: TFMTBCdField;
    SqlCdsItensFichasPRD_ENTRADA: TFMTBCdField;
    SqlCdsItensFichasPRD_SAIDA: TFMTBCdField;
    SqlCdsItensFichasPRD_PENDENTE: TFMTBCdField;
    SqlCdsItensFichasPRD_RESERVA: TFMTBCdField;
    SqlCdsItensFichasPRD_UND: TStringField;
    SqlCdsItensFichasPTI_SIGLA: TStringField;
    SqlCdsItensFichasFTI_MODE1: TStringField;
    SqlCdsItensFichasFTI_MODE2: TStringField;
    SqlCdsItensFichasFTI_MODE3: TStringField;
    SqlCdsItensFichasFTI_MODE4: TStringField;
    SqlCdsItensFichasFTI_MODE5: TStringField;
    SqlCdsItensFichasFTI_MODE6: TStringField;
    SqlCdsItensFichasFTI_MODE7: TStringField;
    SqlCdsItensFichasFTI_MODE8: TStringField;
    SqlCdsItensFichasFTI_UC: TFloatField;
    CdsTemp: TClientDataSet;
    CdsTempREFER: TStringField;
    CdsTempREFER_ORIGEN: TStringField;
    CdsTempNUM_OP: TStringField;
    CdsTempNUM_OP_ORIGEN: TStringField;
    CdsTempSIGLA: TStringField;
    CdsTempUC: TCurrencyField;
    CdsTempPED_CODIGO: TStringField;
    CdsTempSTATUS_PREV: TStringField;
    DsTemp: TDataSource;
    SqlCdsAux: TSQLClientDataSet;
    SqlCdsAuxPRD_REFER: TStringField;
    SqlCdsAuxFTC_CRIACAO: TSQLTimeStampField;
    SqlCdsAuxFTC_TUP: TFMTBCdField;
    SqlCdsAuxPRF_PRECO: TFMTBCdField;
    SqlCdsProc_Prod: TSQLClientDataSet;
    SqlCdsProc_ProdOSV_CODIGO: TStringField;
    SqlCdsProc_ProdEMP_CODIGO: TStringField;
    SqlCdsProc_ProdPED_CODIGO: TStringField;
    CdsTempVARIACAO: TStringField;
    SqlCdsItensPedidoPRF_REGISTRO: TIntegerField;
    CdsTempPAI: TStringField;
    CdsTempQTDE_SOLICITADA: TCurrencyField;
    CdsTempQTDE: TCurrencyField;
    CdsTempVAR1: TCurrencyField;
    CdsTempVAR2: TCurrencyField;
    CdsTempVAR3: TCurrencyField;
    CdsTempVAR4: TCurrencyField;
    CdsTempVAR5: TCurrencyField;
    CdsTempVAR6: TCurrencyField;
    CdsTempVAR7: TCurrencyField;
    CdsTempVAR8: TCurrencyField;
    PAN_OP: TPanel;
    Grp_Qtde: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    CurrQtdeOP: TCurrencyEdit;
    Grp_Tipo: TGroupBox;
    Rad_OA: TRadioButton;
    RAD_OP: TRadioButton;
    RAD_OR: TRadioButton;
    Panel3: TPanel;
    Label1: TLabel;
    SpeedPedido: TSpeedButton;
    EdtPedido: TEdit;
    Pan_Razao: TPanel;
    Panel4: TPanel;
    Label2: TLabel;
    SpeedProduto: TSpeedButton;
    Label3: TLabel;
    EdtReferencia: TEdit;
    CurrQtde: TRxCalcEdit;
    Bit_ExcluirPedido: TBitBtn;
    LabeNuLote: TLabel;
    Edt_Lote: TEdit;
    Label8: TLabel;
    cCodClie: TCurrencyEdit;
    Bit_ExcluirItem: TBitBtn;
    Panel5: TPanel;
    EdtORDEM: TEdit;
    Edit1: TEdit;
    EdOrdemOrigen: TEdit;
    BitConfirmaItem: TBitBtn;
    PaninfCli: TPanel;
    Label20: TLabel;
    Label50: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    Label36: TLabel;
    DBText4: TDBText;
    Lbl_Pessoa: TLabel;
    DBText6: TDBText;
    LBL_RAZAO: TLabel;
    SqlCdsPsvGrupoPED_DTENTRADA: TSQLTimeStampField;
    SqlCdsPsvGrupoPED_DTSAIDA: TSQLTimeStampField;
    SqlCdsPsvGrupoPED_VLTOTAL_BRUTO: TFMTBCdField;
    CdsTempCODCLI: TStringField;
    CdsTempNUMLOTE: TStringField;
    Bit_Cancelar: TBitBtn;
    Cds_Prod_Conv: TSQLClientDataSet;
    Cds_Prod_ConvPRD_REFER: TStringField;
    Cds_Prod_ConvPRD_UTILCONV: TStringField;
    Cds_Prod_ConvPRD_FATORC: TFMTBCdField;
    Cds_Prod_ConvPRD_DIVMULT: TStringField;
    CdsTempCONV: TCurrencyField;
    SQLCdsAlmox: TSQLClientDataSet;
    SQLCdsAlmoxAMX_CODIGO: TStringField;
    SQLCdsAlmoxAMX_DESCRI: TStringField;
    SQLCdsAlmoxAMX_TIPO: TStringField;
    SQLCdsAlmoxEMP_CODIGO: TStringField;
    SqlCdsItensFichasPRD_CODIGO: TStringField;
    SqlCdsParam: TSQLClientDataSet;
    SqlCdsParamPMT_CELULAPROD: TStringField;
    SqlCdsParamPMT_VARIACOES: TStringField;
    SqlCdsParamPMT_MDL_OP: TStringField;
    SqlCdsParamPMT_PROCESPROD: TStringField;
    SqlCdsParamPMT_UNFORMULA: TSmallintField;
    SqlCdsParamPMT_EMPRESACLASSE: TStringField;
    SqlCdsParamPMT_OPS_CONCLUIR: TStringField;
    lblcOMPLEMENTO: TLabel;
    Label10: TLabel;
    edtResponsavel: TEdit;
    Label11: TLabel;
    edtOrdemdeCompra: TEdit;
    dbedtComplemento: TDBEdit;
    Label12: TLabel;
    dbedtResponsavel: TDBEdit;
    Label13: TLabel;
    dbedtPS2_ORDEM_COMPRA: TDBEdit;
    CdsTempORDEMCOMPRA: TStringField;
    CdsTempRESPONSAVEL: TStringField;
    CdsTempGERAR_PI: TBooleanField;
    SqlCdsItensFichasPRG_REGISTRO: TIntegerField;
    CbRwClie: TSgDbSearchCombo;
    qCliente: TSQLQuery;
    Bit_GeraOP: TBitBtn;
    Bit_Sair: TBitBtn;
    Bit_GeraSimulacao: TBitBtn;
    BitLimpar: TBitBtn;
    Label6: TLabel;
    SqlCdsPs2PS2_REGISTRO: TIntegerField;
    SqlCdsPs2EMP_CODIGO: TStringField;
    SqlCdsPs2PED_CODIGO: TStringField;
    SqlCdsPs2PRD_REFER: TStringField;
    SqlCdsPs2PS2_QTDE: TFMTBCDField;
    SqlCdsPs2PS2_QTDE_CONVERTIDA: TFMTBCDField;
    SqlCdsPs2PS2_QTDE1: TFMTBCDField;
    SqlCdsPs2PS2_QTDE2: TFMTBCDField;
    SqlCdsPs2PS2_QTDE3: TFMTBCDField;
    SqlCdsPs2PS2_QTDE4: TFMTBCDField;
    SqlCdsPs2PS2_QTDE5: TFMTBCDField;
    SqlCdsPs2PS2_QTDE6: TFMTBCDField;
    SqlCdsPs2PS2_QTDE7: TFMTBCDField;
    SqlCdsPs2PS2_QTDE8: TFMTBCDField;
    SqlCdsPs2PS2_FICHA: TStringField;
    SqlCdsPs2CLI_CODIGO: TStringField;
    SqlCdsPs2PS2_LOTE: TStringField;
    SqlCdsPs2PS2_ORDEM_COMPRA: TStringField;
    SqlCdsPs2PS2_RESPONSAVEL: TStringField;
    SqlCdsPs2PS2_GERAR_PI: TStringField;
    SqlCdsPs2PS2_DTENTREGA: TSQLTimeStampField;
    SqlCdsPs2PRD_DESCRI: TStringField;
    SqlCdsPs2PRD_COMPL: TStringField;
    SqlCdsPs2CLI_RAZAO: TStringField;
    SqlCdsPs2PS2_FICHA_CC: TBooleanField;
    SqlCdsPedidosPED_DTSAIDA: TSQLTimeStampField;
    SqlCdsPedidosPED_NUMERO_PED_CLIENTE: TStringField;
    DsConsumo: TDataSource;
    SqlCdsConsumoPRD_REFER: TStringField;
    SqlCdsConsumoEMP_CODIGO: TStringField;
    SqlCdsConsumoPRD_CODIGO: TStringField;
    SqlCdsConsumoPED_CODIGO: TStringField;
    SqlCdsConsumoCLI_CODIGO: TStringField;
    SqlCdsConsumoPS2_LOTE: TStringField;
    SqlCdsConsumoPS2_FICHA: TStringField;
    SqlCdsConsumoPRD_DESCRI: TStringField;
    SqlCdsConsumoPRD_UND: TStringField;
    SqlCdsConsumoPTI_SIGLA: TStringField;
    SqlCdsConsumoPRD_PCUSTO: TFMTBCDField;
    SqlCdsConsumoPRD_DCVAR1: TStringField;
    SqlCdsConsumoPRD_ESTOQUE: TFMTBCDField;
    SqlCdsConsumoPRD_ENTRADA: TFMTBCDField;
    SqlCdsConsumoPRD_SAIDA: TFMTBCDField;
    SqlCdsConsumoPRD_PENDENTE: TFMTBCDField;
    SqlCdsConsumoPRD_RESERVA: TFMTBCDField;
    SqlCdsConsumoWQTDE: TFMTBCDField;
    SqlCdsConsumoCONV: TFMTBCDField;
    SqlCdsConsumoWQTDE1: TFMTBCDField;
    SqlCdsConsumoPS2_ORDEM_COMPRA: TStringField;
    SqlCdsConsumoPS2_RESPONSAVEL: TStringField;
    SqlCdsConsumoPS2_GERAR_PI: TStringField;
    SqlCdsConsumoPS2_DTENTREGA: TSQLTimeStampField;
    GroupBox1: TGroupBox;
    ProxNum_OP: TCurrencyEdit;
    Label7: TLabel;
    SqlCdsItensFichasFTI_REGISTRO: TIntegerField;
    SqlCdsItensFichasFTC_BASEFORMULA: TIntegerField;
    chkGerarPIOrdemProducao: TCheckBox;
    Label9: TLabel;
    EdAlmox: TEdit;
    CbAlmox: TComboBox;
    SqlCdsItensFichasOPE_CODIGO: TIntegerField;
    DtEntrega: TJvDateEdit;

    procedure FormShow(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure DBGridItensCellClick(Column: TColumn);
    procedure DBGridGrupoCellClick(Column: TColumn);
    procedure EdtPedidoExit(Sender: tObject);
    procedure Bit_ExcluirPedidoClick(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure BitLimparClick(Sender: tObject);
    procedure Rad_PedidoClick(Sender: tObject);
    procedure EdtReferenciaExit(Sender: tObject);
    procedure CurrQtdeExit(Sender: tObject);
    procedure BitCancelItemClick(Sender: tObject);
    procedure Bit_ExcluirItemClick(Sender: tObject);
    procedure SpeedPedidoClick(Sender: tObject);
    procedure SpeedProdutoClick(Sender: tObject);
    procedure Bit_GeraOPClick(Sender: tObject);
    procedure DBGridItensDblClick(Sender: tObject);
    procedure EdtReferenciaClick(Sender: tObject);
    procedure DBGridItensDrawColumnCell(Sender: tObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SqlCdsPs2CalcFields(DataSet: TDataSet);
    procedure DBGridItensKeyPress(Sender: tObject; var Key: Char);
    procedure Ativa1Click(Sender: tObject);
    procedure cCodClieEnter(Sender: tObject);
    procedure CbRwClieExit(Sender: tObject);
    procedure CbRwClieChange(Sender: tObject);
    procedure cCodClieExit(Sender: tObject);
    procedure Edt_LoteExit(Sender: tObject);
    procedure CbRwClieEnter(Sender: tObject);
    procedure BitConfirmaItemClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure EdtReferenciaChange(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure EdAlmoxClick(Sender: tObject);
    procedure EdAlmoxEnter(Sender: tObject);
    procedure EdAlmoxExit(Sender: tObject);
    procedure CbAlmoxClick(Sender: tObject);
    procedure CbAlmoxEnter(Sender: tObject);
    procedure CbAlmoxExit(Sender: tObject);
    procedure PreencheCombo;
    procedure FormDestroy(Sender: TObject);
    procedure CurrQtdeClick(Sender: TObject);
    procedure ProxNum_OPExit(Sender: TObject);
    procedure GerarFabricacao(cds: TClientDataSet);
    procedure GerarEspecificacoes(cds: TClientDataSet);

  private


    wPmt_Amx_Producao_saida : string;

    wTemFicha         : String[1];
    wSALDO_VARIA      : array [1..8]  of Integer;
    wALfabeto        : Integer;
    //
    bGerarOP,
    wnaoconsome,
    wSelecionouPedido,
    wSelecionouItem   : Boolean;
    //
    wM1,wM2,wM3,wM4,
    wM5,wM6,wM7,wM8,
    tQtde,
    //
    wReserva,
    xReservado,
    xEmpenho,
    wProduzirQtde,
    wSaldoEstoque,
    wQtdeTotal    : Double;
    //
    wCHECA_NUM_OP,
    xxRefer           : String;



    procedure LayOutProducao;
    procedure DesabilitaObjetos;
    procedure HabilitaObjetos;

    procedure Incluir_Itens;
    Procedure GerarOPNovo;
    procedure IncluirOP(const wORIGEM,wOP,wPAI, wPRODUTO,wVariacao, wProdutoPai, wEmpresa, wNumLote, CodClie, sResponsavel, sOrdemCOmpra, sGeraPI, sDtEntrega : String;wQtdeSolicitada,wQtdeProduzir,wQtdeReserva : Currency);
    procedure IncluirItensOP(const pORIGEM,pORDEM,pProdutoCodigo,pREFER,pREFERITEM,pEMPRESA,pSigla,pStatus,pOrigemOP: String;
                            const pConsumido,pQtde1,pQtde2,pQtde3,pQtde4,pQtde5,pQtde6,pQtde7,pQtde8,pReservado,pEmpenho : double;
                            const iRegistroGrade, ope_codigo:Integer);
    procedure SelecionouItem;
    procedure LimparGrids;
    procedure Atualiza_Flag_Item_Pedido(const wFlag,wPedido,wProduto,wEmpresa :String);
    function Busca_ItensFichaTecnica(const wReferencia:String):boolean;
    procedure GravaTempProduzir2(const pReferencia,pEmpresa,pSigla:String;pQtdeSolicitada,pQtdeProduzir:Double);
    Procedure CalculaConsumo;
    Procedure RetornarQtdeProduzir;
    Procedure GRavaOrdemRod(wQtde_Prod,wQtde_Reserva:Currency;wReferencia_prod:String);
    Procedure BuscarOPPrevisao;
    Procedure GravaConsumoTEmp;


    Procedure BuscaPreco_Ftc;
    Procedure Inserir_Itens_Pedido;
    procedure MascaraCNPJ_INFCLIE;
    procedure Habilita_Alteracao;
    procedure Desabilita_Alteracao;
    procedure Habilita_Digitacao_Item;
    procedure Desabilita_Digitacao_Item;
    procedure Limpar_Objetos;
    procedure Verifica_Se_Altera_Produto;
    {Funcoes}
    Function AtribuirLetra : String;
    Function ChechaVariacao(const wNum_Refer:string):Boolean;
    Function Verifica_Num_Lote:Boolean;
    function RetornaValorConversao(const sProduto:String;rValor:Real):Real;
    procedure Busca_Dados_Cliente(const sCodClie: String);
    procedure AlterarOPEmpenho(const sOrigem, sRefer:string);

  public
    { Public declarations }
    wLETRA1,wLETRA2 : Integer;
    wQtdeProduzirPe : Double;
    yQtdeProduzirPe : Double;
    zQtdeProduzirPe : Double;
    sRefer_PaiOP    : String;
    wConsiderar     : String[1];
    wBtn_Pa,
    wBtn_Pi         : Boolean;
    wBtn_Cancel     : String[1];

  end;

var
   FormOrdServCentroGerar: TFormOrdServCentroGerar;

implementation

uses Uteis, Men0001, DataCad, Ped0004, Ftc0002, OsvN0007, PrevCN002, DmProdu,
  OsvN0001, RwFunc, DataMov2, FrmTemporario, RwSQLComando;


{$R *.dfm}

procedure TFormOrdServCentroGerar.FormShow(Sender: tObject);
begin
    CdsTemp.EmptyDataSet;
    PaninfCli.Visible := False;

    try

      SqlCdsPsvGrupo.Close;
      SqlCdsPsvGrupo.CommandText :=  SQLDEF('ORDEMPRODUCAO','Select  T1.*,C1.CLI_RAZAO, P1.PED_DTENTRADA,P1.PED_DTSAIDA, P1.PED_VLTOTAL_BRUTO FROM PSV_GRUPO T1 ' +
                                                            ' LEFT JOIN CLI0000 C1 ON (C1.CLI_CODIGO = T1.CLI_CODIGO)   '+
                                                            ' LEFT JOIN PED0000 P1 ON (T1.PED_CODIGO = P1.PED_CODIGO) AND (P1.EMP_CODIGO = T1.EMP_CODIGO) ' ,'',
                                                            'T1.PSG_REGISTRO DESC','T1.');
      //

//      SqlCdsPsvGrupo.CommandText := FrmMenu.RwSqlGeralCmd.ComandoSql;
      SqlCdsPsvGrupo.Open;
      SqlCdsPs2.Close;
      SqlCdsPs2.CommandText := SQLDEF('ORDEMPRODUCAO','select T2.*, P1.PRD_DESCRI, P1.PRD_COMPL, C1.CLI_RAZAO from PSV_IT02 t2 '+
                                                      'LEFT JOIN PRD0000 P1 ON (T2.PRD_REFER = P1.PRD_REFER'+ConcatSe(' and p1.', DBInicio.ExclusivoSql('PRODUTOS')) +  ') '+
                                                      'LEFT JOIN CLI0000 C1 ON (T2.CLI_CODIGO = C1.CLI_CODIGO) ','', 'T2.PS2_REGISTRO DESC','t2.');
      SqlCdsPs2.Open;
      //
      LayOutProducao;
      {Verifica no parametro se a Ordens em Produção esta disponivel}
      if (FrmMenu.wPmtOPsProduzir = 'S') then
         begin
             RAD_OP.Enabled := true;
             RAD_OP.Checked := true;
         end
      else
         begin
             RAD_OP.Enabled := False;
         end;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao abrir as tabelas ! '+e.message));
    end;
    {Permitir seleção de almox. jko}
    if (dbInicio.Empresa.wMultiAlmox='S') then
       begin
          EdAlmox.Visible := true;
          Label9.Visible  := true;
          CbAlmox.Visible := true;
          PreencheCombo;
       end
    else
       begin
          EdAlmox.Text    := '000';
          EdAlmox.Visible := false;
          Label9.Visible  := false;
          CbAlmox.Visible := false;
       end;

   //  Mostrar Proximo numero da OP conforme generator atual
   DataCadastros.sqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text :='SELECT GEN_ID(GEN_NUM_OP, 1) as gNumOP FROM RDB$DATABASE';
   DataCadastros.sqlUpdate.Open;

   ProxNum_OP.Value := DataCadastros.sqlUpdate.FieldByName('gNumOP').AsInteger;

end;

procedure TFormOrdServCentroGerar.Bit_SairClick(Sender: tObject);
begin
  // sempre que sair deve decrementar generator
  DataCadastros.sqlUpdate.close;
  DataCadastros.sqlUpdate.SQL.Text :='Set generator GEN_NUM_OP to '+floattoStr(ProxNum_OP.Value-1)+'';
  DataCadastros.sqlUpdate.Execsql;
  //
  Close;

end;

procedure TFormOrdServCentroGerar.DBGridItensCellClick(Column: TColumn);
begin
   DBGridItens.Hint := SqlCdsPs2PRD_DESCRI.AsString;
end;

procedure TFormOrdServCentroGerar.DBGridGrupoCellClick(Column: TColumn);
begin
    DBGridGrupo.Hint := 'Codigo: '+SqlCdsPsvGrupoCLI_CODIGO.AsString+chr(13)+'Razão: '+SqlCdsPsvGrupoCLI_RAZAO.AsString;
    if not (SqlCdsPsvGrupo.IsEmpty ) then
       wSelecionouPedido := true
    else
       wSelecionouPedido := False;
end;

procedure TFormOrdServCentroGerar.EdtPedidoExit(Sender: tObject);
begin
    Screen.Cursor   := crHourGlass;
    try
      if (EdtPedido.Text <> '') then
         begin
             EdtPedido.Text := StrZero(EdtPedido.Text,EdtPedido.MaxLength);
             //
             wSql1      := 'Select P2.emp_codigo,P2.ped_codigo,P2.cli_codigo,P2.ped_situacao,p2.ped_dtSaida,p2.PED_NUMERO_PED_CLIENTE, C1.cli_razao From PED0000 P2 Left Join CLI0000 C1 ON (P2.cli_codigo = C1.cli_codigo)';
             wSeleciona := ' Where P2.ped_codigo = '''+EdtPedido.Text+'''';
             wOrdem     := ' P2.ped_codigo';
             //
             SqlCdsPedidos.Close;
             SqlCdsPedidos.CommandText := SQLDEF('PEDIDOS',wSql1,wSeleciona,wOrdem,'P2.');
             SqlCdsPedidos.Open;
             if not (SqlCdsPedidos.IsEmpty ) then
                begin
                    Pan_Razao.Caption := SqlCdsPedidosCLI_RAZAO.AsString;
                    if (SqlCdsPedidosPED_SITUACAO.AsString <>'T') then  {Somente Pedidos Pendentes e Parcial}
                       begin
                           if uteis.confirmacao ( ('Incluir na lista para produção o Pedido '''+EdtPedido.text+''' do Cliente '''+SqlCdsPedidosCLI_RAZAO.AsString+''' ?'))= Mryes then
                              begin
                                  {Verifica se o item do pedido tem ordem de produção gerada}
                                  if not (Verifica_Item_OP(SqlCdsPedidosEMP_CODIGO.AsString,SqlCdsPedidosPED_CODIGO.AsString) ) then
                                     Inserir_Itens_Pedido
                                  else
                                     begin
                                         uteis.aviso('Pedido já foi encaminhado para produção !');
                                         EdtPedido.Text    := '';
                                         Pan_Razao.Caption := '';
                                         EdtPedido.SetFocus;
                                         EdtPedido.SelectAll;
                                     end;
                              end
                           else
                              begin
                                  EdtPedido.Text    := '';
                                  Pan_Razao.Caption := '';
                                  EdtPedido.SetFocus;
                                  EdtPedido.SelectAll;
                              end;
                       end
                    else
                       begin
                           uteis.aviso('Pedido encontra-se faturado totalmente !');
                           EdtPedido.Text    := '';
                           Pan_Razao.Caption := '';
                           EdtPedido.SetFocus;
                           EdtPedido.SelectAll;
                       end;
                end
             else
                begin
                    uteis.aviso('Pedido não encontrado ! ');
                    EdtPedido.Text    := '';
                    Pan_Razao.Caption := '';
                    EdtPedido.SetFocus;
                    EdtPedido.SelectAll;
                end;
         end;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao localizar o pedido ! '+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormOrdServCentroGerar.Bit_ExcluirPedidoClick(Sender: tObject);
begin
   if (not SqlCdsPsvGrupo.IsEmpty) then
      begin
         if uteis.confirmacao ( ('Excluir da lista para a Produção o Pedido : '+SqlCdsPsvGrupoPED_CODIGO.AsString+#9+#13+'Cliente: '+SqlCdsPsvGrupoCLI_CODIGO.AsString+' - '+SqlCdsPsvGrupoCLI_RAZAO.AsString+''' ?'))= Mryes then
            begin
                try
                // desmarca os itens do pedido com Não gerado OP
                  wSql1      := 'Update PED_IT01 set PRF_OP = '+'''N''';
                  wSeleciona := ' where EMP_CODIGO = '''+SqlCdsPsvGrupoEMP_CODIGO.AsString+''' AND PED_CODIGO = '''+SqlCdsPsvGrupoPED_CODIGO.AsString+'''';
                  //
                  DataCadastros.sqlUpdate.Close;
                  DataCadastros.SqlUpdate.sql.text :=wSql1+wSeleciona;
                  DataCadastros.sqlUpdate.Execsql;
                   //
                  {Excluir os itens Adicionado}
                  wSql1      := 'DELETE FROM PSV_IT02 ';
                  wSeleciona := 'WHERE EMP_CODIGO = '''+SqlCdsPsvGrupoEMP_CODIGO.AsString+''' AND PED_CODIGO = '''+SqlCdsPsvGrupoPED_CODIGO.AsString+'''';
                  DataCadastros.sqlUpdate.Close;
                  DataCadastros.SqlUpdate.sql.text :=wSql1+wSeleciona;
                  DataCadastros.sqlUpdate.Execsql;
                  {Excluir o Pedido do grupo}
                  wSql1      := 'DELETE FROM PSV_GRUPO ';
                  wSeleciona := 'WHERE PSG_REGISTRO = '''+SqlCdsPsvGrupoPSG_REGISTRO.AsString+'''';
                  DataCadastros.sqlUpdate.Close;
                  DataCadastros.SqlUpdate.sql.text :=wSql1+wSeleciona;
                  DataCadastros.sqlUpdate.Execsql;

                  {Atualizando os Generators}
                    DataCadastros.sqlUpdate.close;
                    DataCadastros.SqlUpdate.sql.text :='SET GENERATOR GEN_PSVGRUPO TO 0';
                    DataCadastros.sqlUpdate.Execsql;
                    //
                    DataCadastros.sqlUpdate.close;
                    DataCadastros.SqlUpdate.sql.text :='SET GENERATOR GEN_PS2ITENS TO 0';
                    DataCadastros.sqlUpdate.Execsql;

                  {Atualizando os Grids}
                  SqlCdsPsvGrupo.Refresh;
                  SqlCdsPs2.Refresh;
                except on E:EDataBaseError do
                   uteis.erro  (pchar('Erro ao excluir o Pedido da lista ! '+e.message));
                end;
            end;
         wSelecionouPedido := False;
         EdtPedido.Text    := '';
         Pan_Razao.Caption := '';
         EdtPedido.SetFocus;
         EdtPedido.SelectAll;
      end
   else
      begin
         uteis.aviso('Não existe(m) pedido(s) à ser excluído(s) !');
         if (Rad_Pedido.Checked) then
            DBGridGrupo.SetFocus
         else
            DBGridItens.SetFocus;
      end;
end;

procedure TFormOrdServCentroGerar.FormCreate(Sender: tObject);
begin
    inherited;
    Self.width:=972;
    self.height:=629;


    wPmt_Amx_Producao_saida := dbInicio.GetParametroSistema('PMT_AMX_PRODUCAO_SAIDA');
    bGerarOP          := False;
    wSelecionouPedido := False;
    wSelecionouItem   := False;
    wNaoConsome       := False;
    //
    wBtn_Cancel       := 'N';
    wSql1 := '';
    wSql2 := '';
    wSql3 := '';
    SqlCdsParam.Close;
    SqlCdsParam.CommandText := SQLDEF('PARAMETROS','select P2.PMT_OPS_CONCLUIR,P2.PMT_CELULAPROD,P2.PMT_EMPRESACLASSE,P2.PMT_VARIACOES,P2.PMT_MDL_OP,P2.PMT_PROCESPROD,P2.PMT_UNFORMULA from PRMT0001 P2 ','','','P2.');
    SqlCdsParam.Open;


end;

procedure TFormOrdServCentroGerar.FormDestroy(Sender: TObject);
begin
  inherited;
  FormOrdServCentroGerar := Nil;
end;

procedure TFormOrdServCentroGerar.BitLimparClick(Sender: tObject);
begin
    Screen.cursor := crHourGlass;
    try
      if not (SqlCdsPsvGrupo.IsEmpty ) or not (SqlCdsPs2.IsEmpty) then
         begin
             if uteis.confirmacao ( 'Limpar toda lista dos produtos para fabricação?')= idYes then
                begin
                    {Limpado a tabela PSV_GRUPO}
                    DataCadastros.sqlUpdate.close;
                    DataCadastros.SqlUpdate.sql.text :='DELETE FROM PSV_GRUPO';
                    DataCadastros.sqlUpdate.Execsql;
                    {Limpado a tabela PSV_IT02}
                    DataCadastros.sqlUpdate.close;
                    DataCadastros.SqlUpdate.sql.text :='DELETE FROM PSV_IT02';
                    DataCadastros.sqlUpdate.Execsql;
                    {Atualizando os Generators}
                    DataCadastros.sqlUpdate.close;
                    DataCadastros.SqlUpdate.sql.text :='SET GENERATOR GEN_PSVGRUPO TO 0';
                    DataCadastros.sqlUpdate.Execsql;
                    //
                    DataCadastros.sqlUpdate.close;
                    DataCadastros.SqlUpdate.sql.text :='SET GENERATOR GEN_PS2ITENS TO 0';
                    DataCadastros.sqlUpdate.Execsql;
                    {Atualizando os Grids}
                    SqlCdsPsvGrupo.Refresh;
                    SqlCdsPs2.Refresh;
                    EdtReferencia.ReadOnly := False;
                    EdtReferencia.TabStop  := TRue;
                end;
         end
      else
         begin
             uteis.aviso('Não há simulação à ser excluída !');
         end;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Error ao Limpar as tabelas ! '+e.message));
    end;
    Screen.Cursor:= crDefault;
end;

procedure TFormOrdServCentroGerar.Rad_PedidoClick(Sender: tObject);
begin
    LayOutProducao;
end;

procedure TFormOrdServCentroGerar.EdtReferenciaExit(Sender: tObject);
begin
    if (ActiveControl <> Nil)
    and(ActiveControl.Name <> 'Bit_Cancelar')
    and(ActiveControl.Name <> 'SpeedProduto')
    and(ActiveControl.Name <> 'Bit_Sair') then
       begin
          Screen.Cursor       := crHourGlass;
          try
            try
              if (EdtReferencia.Text <> '') then
                 begin
                     {Verifica se existe a ficha técnica do produto}
                     SqlCdsBuscaFicha.close;
                     SqlCdsBuscaFicha.CommandText := SQLDEF('PRODUTOS','SELECT F1.*,P1.PRD_DESCRI,P1.PRD_PCUSTO,P1.PRD_UND,P1.PRD_DCVAR1,P1.PRD_DCVAR2,P1.PRD_DCVAR3,P1.PRD_DCVAR4,P1.PRD_DCVAR5, '+
                     ' P1.PRD_DCVAR6,P1.PRD_DCVAR7,P1.PRD_DCVAR8 FROM FTC0000 F1 JOIN PRD0000 P1 ON F1.PRD_REFER = P1.PRD_REFER','where F1.PRD_REFER = '''+EdtReferencia.Text+'''','F1.PRD_REFER','P1.');
                     SqlCdsBuscaFicha.Open;
                     if (SqlCdsBuscaFicha.IsEmpty) then
                        begin
                           uteis.aviso('Produto informado não tem nenhum item na Ficha Técnica!');
                           EdtReferencia.SetFocus;
                        end;
                 end;

                  Pan_Razao.Caption := SqlCdsBuscaFichaPRD_DESCRI.AsString;
            except on E:EDataBaseError do
               uteis.erro  (pchar('Erro ao localizar o produto ! '+e.message));
            end;
          finally
              SqlCdsBuscaFicha.close;
          end;


         Screen.Cursor := crdefault;



       end;
end;

procedure TFormOrdServCentroGerar.CurrQtdeClick(Sender: TObject);
begin
  inherited;
   Pan_Razao.Caption := SqlCdsBuscaFichaPRD_DESCRI.AsString;
end;

procedure TFormOrdServCentroGerar.CurrQtdeExit(Sender: tObject);
begin
    if (ActiveControl <> Nil)
       and(ActiveControl.Name <> 'EdtReferencia')
       and(ActiveControl.Name <> 'DBGridItens')
       and(ActiveControl.Name <> 'Bit_Sair') then
       if (EdtReferencia.Text = '') then
       begin
                 uteis.aviso('Informa a referência do Produto !');
                 CurrQtde.Value     := 0;
                 EdtReferencia.Text := '';
                 EdtReferencia.SetFocus;
                 EdtReferencia.SelectAll;
       end;
end;

procedure TFormOrdServCentroGerar.DesabilitaOBjetos;
begin
    Grp_OP.Enabled      := False;
    Grp_Pedidos.Enabled := False;
    Grp_Itens.Enabled   := False;
    Grp_Qtde.Enabled    := False;
    Grp_Tipo.Enabled    := False;
    Bit_GeraOP.Enabled  := False;
  //  Bit_Pcp.Enabled     := False;
    BitLimpar.Enabled   := False;
    Bit_Sair.Enabled    := False;
end;

procedure TFormOrdServCentroGerar.HabilitaObjetos;
begin
    Grp_OP.Enabled      := True;
    Grp_Pedidos.Enabled := True;
    Grp_Itens.Enabled   := True;
    Grp_Qtde.Enabled    := True;
    Grp_Tipo.Enabled    := True;
    Bit_GeraOP.Enabled  := True;
    //Bit_Pcp.Enabled     := True;
    BitLimpar.Enabled   := True;
    Bit_Sair.Enabled    := True;
end;

procedure TFormOrdServCentroGerar.BitCancelItemClick(Sender: tObject);
begin
    HabilitaObjetos;
    CurrQtde.Value     := 0;
    EdtReferencia.Text := '';
    EdtReferencia.SelectAll;
end;

procedure TFormOrdServCentroGerar.Incluir_Itens;
Var
  sNumLote,
  sCodClie : String;
  rValorConvertido:Real;
begin
    Screen.Cursor := crHourGlass;
    try
      {incluir no PSV = PREVISAO DE CONSUMO}
      //
      sNumLote         := '';
      sCodClie         := '';
      rValorConvertido := 0;
      if (Trim(Edt_Lote.Text) <> '') then
         sNumLote := chr(39)+Edt_Lote.Text+chr(39)
      else
         sNumLote := 'null';
      //
      if (cCodClie.AsInteger > 0) then
         sCodClie := Chr(39)+StrZero(cCodClie.Text,5)+Chr(39)
      else
         sCodClie := 'null';
      //
      if not (wSelecionouItem) then
      begin
         {Verifica se o Item do Pedido tem Ficha Tecnica}
         wSql1      := 'SELECT F1.PRD_REFER FROM FTC0000 F1 ';
         wSeleciona := 'WHERE F1.PRD_REFER = '''+EdtReferencia.Text+'''';
         wOrdem     := 'F1.PRD_REFER';
         DataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,wSeleciona,wOrdem,'F1.');
         DataCadastros.sqlUpdate.Open;
         if not (DataCadastros.sqlUpdate.IsEmpty) then
                wTemFicha := 'S'
         else
                wTemFicha := 'N';

         wSql1      := 'SELECT T2.EMP_CODIGO,T2.PED_CODIGO,T2.PRD_REFER FROM PSV_IT02 T2 ';
         wSeleciona := 'WHERE T2.EMP_CODIGO = '''+dbInicio.Empresa.EMP_CODIGO+''' AND T2.PED_CODIGO IS NULL AND PRD_REFER = '''+EdtReferencia.Text+'''';
         wOrdem     := ' ORDER BY T2.EMP_CODIGO,T2.PED_CODIGO,T2.PRD_REFER';
         DataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :=wSql1+wSeleciona+wOrdem;
         DataCadastros.sqlUpdate.Open;
         rValorConvertido := RetornaValorConversao(EdtReferencia.Text,CurrQtde.Value);
         wSql1 := 'INSERT INTO PSV_IT02 ('+
                      'EMP_CODIGO,'+
                      'PED_CODIGO,'+
                      'PRD_REFER,'+
                      'PS2_QTDE,'+
                      'PS2_QTDE_CONVERTIDA,'+
                     {'PS2_QTDE1,'+
                      'PS2_QTDE2,'+
                      'PS2_QTDE3,'+
                      'PS2_QTDE4,'+
                      'PS2_QTDE5,'+
                      'PS2_QTDE6,'+
                      'PS2_QTDE7,'+
                      'PS2_QTDE8,'+}
                      'PS2_FICHA,'+
                      'PS2_LOTE,'+
                      'PS2_ORDEM_COMPRA,'+
                      'PS2_RESPONSAVEL,'+
                      'PS2_GERAR_PI,'+
                      'PS2_DTENTREGA,'+
                      'CLI_CODIGO)';
         wSql2 := 'VALUES ('''+dbInicio.Empresa.EMP_CODIGO+''','+
                               'Null'+','''+
                               EdtReferencia.Text+''','''+
                               ValorAmericano(IIF(rValorConvertido>0,FloatToStr(rValorConvertido),CurrQtde.Text))+''','''+
                               ValorAmericano(FloatToStr(CurrQtde.Value))+''','''+
                               wTemFicha+''','+
                               sNumLote+','+
                               QuotedStr(edtOrdemdeCompra.Text)+','+
                               QuotedStr(edtResponsavel.Text)+','+
                               QuotedStr(IIF(chkGerarPIOrdemProducao.Checked,'S','N'))+','+
                               qstr(DataAmericana(DateToStr(DtEntrega.Date)))+','+
                               sCodClie+')';
         if not (DataCadastros.sqlUpdate.IsEmpty) then
         begin
            if uteis.confirmacao ( ('Produto já foi incluso. Deseja incluir novamente !'))=mrYes then
            begin
               DataCadastros.sqlUpdate.close;
               DataCadastros.SqlUpdate.sql.text :=wSql1+wSql2;
               DataCadastros.sqlUpdate.Execsql;
               SqlCdsPs2.Refresh;
            end;
         end
         else
         begin
            DataCadastros.sqlUpdate.close;
            DataCadastros.SqlUpdate.sql.text :=wSql1+wSql2;
            DataCadastros.sqlUpdate.Execsql;
            SqlCdsPs2.Refresh;
         end;
  end
  else
  begin
     try
       rValorConvertido := RetornaValorConversao(EdtReferencia.Text,CurrQtde.Value);
       wSql1 := 'UPDATE PSV_IT02 SET PS2_QTDE  = '+ValorAmericano(CurrQtde.Text)+','+
                                    'PS2_QTDE_CONVERTIDA = '+ValorAmericano(FloatToStr(rValorConvertido))+','+
                                    'PS2_ORDEM_COMPRA = '+QuotedStr(edtOrdemdeCompra.Text)+','+
                                    'PS2_RESPONSAVEL = '+QuotedStr(edtResponsavel.Text)+','+
                                    'PS2_GERAR_PI = '+QuotedStr(iif(chkGerarPIOrdemProducao.Checked,'S','N'))+','+
                                    'PS2_LOTE  = '+sNumLote+','+
                                    'PS2_DTENTREGA = '+qstr(DataAmericana(DateToStr(DtEntrega.Date)))+','+
                                    'CLI_CODIGO = '+sCodClie+' ';


       wSeleciona := 'Where PS2_REGISTRO = '''+SqlCdsPs2PS2_REGISTRO.AsString+'''';

       DataCadastros.sqlUpdate.close;
       DataCadastros.SqlUpdate.sql.text :=wSql1+wSeleciona;
       DataCadastros.sqlUpdate.Execsql;
       SqlCdsPs2.Refresh;
       wSelecionouItem := False;
     except on E:EDataBaseError do
         uteis.erro  (pchar('Erro ao alterar os dados ! '+e.message));
     end;
      end;
  except on E:EDataBaseError do
     uteis.erro  (pchar('Erro ao inserir o item ! '+e.message));
  end;
    Screen.Cursor := crDefault;
end;

procedure TFormOrdServCentroGerar.Bit_ExcluirItemClick(Sender: tObject);
begin
   if (not SqlCdsPs2.IsEmpty) then
      begin
         if uteis.confirmacao ( ('Retirar o produto da lista para gerar OP do item: '+SqlCdsPs2PRD_REFER.AsString+' - '+SqlCdsPs2PRD_DESCRI.AsString+''' ?'))= Mryes then
            begin
                try
                  wSql1      := 'DELETE FROM PSV_IT02 ';
                  wSeleciona := 'WHERE PS2_REGISTRO = '''+SqlCdsPs2PS2_REGISTRO.AsString+'''';
                  DataCadastros.sqlUpdate.Close;
                  DataCadastros.SqlUpdate.sql.text :=wSql1+wSeleciona;
                  DataCadastros.sqlUpdate.Execsql;
                  {Atualizando os Grids}
                  SqlCdsPsvGrupo.Refresh;
                  EdtReferencia.ReadOnly := False;
                  EdtReferencia.TabStop  := True;
                  SqlCdsPs2.Refresh;
                except on E:EDataBaseError do
                   uteis.erro  (pchar('Erro ao retirar o Pedido do Grupo ! '+e.message));
                end;
            end;
      end
   else
      begin
         uteis.aviso('Não existe(m) produto(s) para ser excluído(s) !');
         if (Rad_Item.Checked) then
            DBGridItens.SetFocus
         else
            DBGridGrupo.SetFocus;   
      end;
end;

procedure TFormOrdServCentroGerar.SpeedPedidoClick(Sender: tObject);
begin
     FormPedidoGrid := TFormPedidoGrid.Create(Application);
     try
        FormPedidoGrid.ShowModal;
        EdtPedido.Text := FormPedidoGrid.idRetorno;
     finally
        FreeAndNil(FormPedidoGrid);
     end;
end;

procedure TFormOrdServCentroGerar.SpeedProdutoClick(Sender: tObject);
begin
  FormFichaTecGrid := TFormFichaTecGrid.Create(Application);
  try
     FormFichaTecGrid.ShowModal;
  finally
    FreeAndNil(FormFichaTecGrid);
  end;
end;

procedure TFormOrdServCentroGerar.LayOutProducao;
begin
    if (Rad_Pedido.checked ) then
       begin
           if (SqlCdsPsvGrupo.Active ) then
              SqlCdsPsvGrupo.Refresh;

           if (SqlCdsPs2.Active) then
              SqlCdsPs2.Refresh;

           EdtPedido.Color           := clWindow;
           EdtPedido.Enabled         := True;
           SpeedPedido.Enabled       := True;
           Pan_Razao.Enabled         := True;
           Bit_ExcluirPedido.Enabled := True;
           DBGridGrupo.Enabled       := True;
           EdtReferencia.Color       := $00D7D7D7;
           CurrQtde.Color            := $00D7D7D7;
           //
           cCodClie.Color            := $00D7D7D7;
           cCodClie.TabStop          := False;
           cCodClie.ReadOnly         := True;
           CbRwClie.Color            := $00D7D7D7;
           CbRwClie.TabStop          := False;
           CbRwClie.Enabled          := False;
           //
           Edt_Lote.Color            := $00D7D7D7;
           Edt_Lote.TabStop          := False;
           Edt_Lote.Enabled          := False;

           edtResponsavel.Color    := $00D7D7D7;
           edtResponsavel.ReadOnly := True;
           edtResponsavel.TabStop  := False;
           //
           edtOrdemdeCompra.Color    := $00D7D7D7;
           edtOrdemdeCompra.ReadOnly := True;
           edtOrdemdeCompra.TabStop  := False;

           DtEntrega.Color           := $00D7D7D7;
           DtEntrega.ReadOnly        := True;
           DtEntrega.TabStop         := False;
           //
          // chkGerarPIOrdemProducao.Enabled := False;
           //
           BitConfirmaItem.Enabled   := False;
           //
           EdtReferencia.Enabled     := False;
           SpeedProduto.Enabled      := False;
           CurrQtde.Enabled          := False;
           Bit_ExcluirItem.Enabled   := False;
           BitLimpar.Enabled         := False;
           DBGridItens.Enabled       := True;
           EdtPedido.SetFocus;
           EdtPedido.SelectAll;
       end
    else
    if (Rad_Item.checked ) then
       begin
           if (SqlCdsPsvGrupo.Active ) then
              SqlCdsPsvGrupo.Refresh;
           if (SqlCdsPs2.Active ) then
              SqlCdsPs2.Refresh;
           EdtPedido.Color           := $00D7D7D7;
           Bit_ExcluirPedido.Enabled := False;
           EdtPedido.Enabled         := False;
           SpeedPedido.Enabled       := False;
           Pan_Razao.Enabled         := False;
           DBGridGrupo.Enabled       := False;

           EdtReferencia.Color       := clWindow;
           CurrQtde.Color            := clWindow;
           EdtReferencia.Enabled     := True;
           SpeedProduto.Enabled      := True;
           CurrQtde.Enabled          := True;
           Bit_ExcluirItem.Enabled   := True;
           BitLimpar.Enabled         := True;
           BitConfirmaItem.Enabled   := False;

           DBGridItens.Enabled       := True;
           //
           cCodClie.Color            := clWindow;
           cCodClie.TabStop          := True;
           cCodClie.ReadOnly         := False;
           CbRwClie.Color            := clWindow;
           CbRwClie.TabStop          := True;
           CbRwClie.Enabled          := True;

           edtResponsavel.Color    := clWindow;
           edtResponsavel.ReadOnly := False;
           edtResponsavel.TabStop  := True;
           //
           edtOrdemdeCompra.Color    := clWindow;
           edtOrdemdeCompra.ReadOnly := False;
           edtOrdemdeCompra.TabStop  := True;
           //
           DtEntrega.Color           := clWindow;
           DtEntrega.ReadOnly        := False;
           DtEntrega.TabStop         := True;
           //
          // chkGerarPIOrdemProducao.Enabled := True;

           //
           {Verificar se o Numero do Lote e Automatico/Manual}
           if (FrmMenu.sGerarNumLote = 'A') then   //automático desabilita
              begin
                 Edt_Lote.Color   := $00D7D7D7;
                 Edt_Lote.Enabled := False;
                 Edt_Lote.TabStop := False;
                 LabeNuLote.Caption := 'Nº Lote:';
              end
           else
              begin  //Manual habilita para o usuario pode digitar
                 Edt_Lote.Color   := clWindow;
                 Edt_Lote.Enabled := True;
                 Edt_Lote.TabStop := True;
                 LabeNuLote.Caption := 'Nº Pré-Lote:';
              end;
           //
           Desabilita_Digitacao_Item;
           EdtReferencia.SetFocus;
           EdtReferencia.SelectAll;
       end;
end;

procedure TFormOrdServCentroGerar.Bit_GeraOPClick(Sender: tObject);
var
wUltimaOP_BD : integer;
begin

   wALfabeto := 0;
   //  Verificar numeração da Ultima OP
   DataCadastros.sqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text :='SELECT MAX(OSV_CODIGO_PAI ) as xUltima FROM OSV0001';
   DataCadastros.sqlUpdate.Open;
   //
   if DataCadastros.sqlUpdate.FieldByName('xUltima').IsNull then
      wUltimaOP_BD := 0
   else
     wUltimaOP_BD := DataCadastros.sqlUpdate.FieldByName('xUltima').AsInteger;
   //
   // verificar numero OP para comparar se numero foi alterado pelo usuario ou alterado na eliminação do estorno
   DataCadastros.sqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text :='SELECT OSV_CODIGO FROM OSV0001';
   DataCadastros.sqlUpdate.Open;
   //
   if DataCadastros.SqlUpdate.Locate('OSV_CODIGO',STRZERO(CurrToStr(ProxNum_OP.Value),6),[]) then
   begin
     ShowMessage('Já existe no sistema uma OP com numeração '+STRZERO(CurrToStr(ProxNum_OP.Value),6)+ ' ! '+#13+#13+
                  'Altere numero da Próxima OP ou verifique no PCP antes de continuar.');
     exit
   end;

    if wUltimaOP_BD > ProxNum_OP.Value then
      if uteis.confirmacao('Atenção existe no sistema a OP '+strzero(FloattoStr(wUltimaOP_BD),6)+' que é maior que  '+strzero(FloattoStr(ProxNum_OP.Value),6)+' Confirma mesmo OP Nº '+strzero(FloattoStr(ProxNum_OP.Value),6)+' ?') = idNo then
             exit;

  // as proximas rotinas irão incrementar generator novamente, então para não pular numero decrementamos antes
  DataCadastros.sqlUpdate.close;
  DataCadastros.sqlUpdate.SQL.Text :='Set generator GEN_NUM_OP to '+floattoStr(ProxNum_OP.Value-1)+'';
  DataCadastros.sqlUpdate.Execsql;


   if (SqlCdsPs2.IsEmpty) then
   begin
         uteis.aviso('Não existe referência para gerar ordem de produção !');
         DBGridItens.SetFocus;
   end
   else
   begin

         if (FrmMenu.sGerarNumLote = 'M') and (NOT Rad_Pedido.Checked) then
         begin
               if (not Verifica_Num_Lote) then
               begin
                     uteis.aviso('Produto(s) adicionado(s) falta(m) informar o Número do Lote !');
                     Rad_Item.Checked := True;
                     bGerarOP         := False;
                     DBGridItens.SetFocus;
               end
               else
                   bGerarOP := True;
         end
         else
             bGerarOP := True;

         if (bGerarOP) then
         begin
              try
                 Screen.Cursor := crHourGlass;
                 try

                    if not RAD_OA.Checked then
                    begin
                         FormOrdServConsiderar := TFormOrdServConsiderar.Create(Application);
                         try
                            FormOrdServConsiderar.ShowModal;
                         finally
                            FreeAndNil(FormOrdServConsiderar);

                         end;
                         SqlCdsPs2.Refresh;
                    end
                    else
                        wConsiderar := 'N';

                    if (wBtn_Cancel = 'N') then
                    begin
                         // ZERAR O GENERATORS CASO A TABELA OSV_IT02 ESTIVER VAZIA
                         DataCadastros.sqlUpdate.Close;
                         DataCadastros.SqlUpdate.sql.text :='SELECT MAX(OSI_REGISTRO) AS wZerar FROM OSV_IT02';
                         DataCadastros.sqlUpdate.Open;
                         if DataCadastros.sqlUpdate.FieldByName('wZerar').IsNull  then
                         begin
                               DataCadastros.sqlUpdate.Close;
                               DataCadastros.SqlUpdate.sql.text :='SET GENERATOR GEN_OSV_IT02 TO 0';
                               DataCadastros.sqlUpdate.Execsql;
                         end;
                         //
                         GerarOPNovo
                         //
                    end;

                 except
                       on E:EDataBaseError do
                       begin
                            Screen.Cursor := crDefault;
                            //beep;
                            uteis.erro  (pchar('Erro ao gerar a ordens de produção ! '+#13#10+
                                       'Mensagem erro : '+e.Message));
                       end;
                 end;
              finally
                     if (wBtn_Cancel = 'N') then
                     begin
                          // Faz o Apontamento das OP em producao
                          if (RAD_OP.Checked) then
                          begin
                               CdsTemp.First;
                               While not CdsTemp.Eof do
                               begin
                                    if (CdsTempSTATUS_PREV.AsString = 'S') then
                                    begin
                                           wReferencia := CdsTempREFER.AsString;
                                           xxRefer       := CdsTempREFER.AsString;
                                           wCHECA_NUM_OP := CdsTempNUM_OP.AsString;
                                           // Chama as OP'S na tabela OSV_IT02 gerada pelo temporario
                                           wSQL1      := 'Select X1.OSV_CODIGO,X1.EMP_CODIGO,X1.PED_CODIGO from OSV0001 X1 ';
                                           wSeleciona := 'where X1.OSV_CODIGO_PAI = '''+CdsTempNUM_OP.AsString+'''';
                                           //
                                           SqlCdsProc_Prod.Close;
                                           SqlCdsProc_Prod.CommandText := SQLDEF('ORDEMPRODUCAO',wSQL1,wSeleciona,'','X1.');
                                           SqlCdsProc_Prod.Open;
                                           SqlCdsProc_Prod.First;
                                           while not SqlCdsProc_Prod.Eof do
                                           begin
                                                Proc_producao(SqlCdsProc_Prod.FieldByName('OSV_CODIGO').AsString,
                                                              'P',
                                                              SqlCdsProc_Prod.FieldByName('EMP_CODIGO').AsString,
                                                              SqlCdsProc_Prod.FieldByName('PED_CODIGO').AsString);
                                                SqlCdsProc_Prod.Next;
                                           end;
                                    end;
                                    CdsTemp.Next;
                               end;
                          end
                          else
                          {Faz a Reserva das OP's}
                          if (RAD_OR.Checked) then
                          begin
                               CdsTemp.First;
                               While not CdsTemp.Eof do
                               begin
                                     if (CdsTempSTATUS_PREV.AsString = 'S') then
                                     begin
                                           xxRefer       := CdsTempREFER.AsString;
                                           wCHECA_NUM_OP := CdsTempNUM_OP.AsString;
                                           {Chama as OP'S na tabela OSV_IT02 gerada pelo temporario}
                                           wSQL1      := 'Select X1.OSV_CODIGO,X1.EMP_CODIGO,X1.PED_CODIGO from OSV0001 X1 ';
                                           wSeleciona := 'where X1.OSV_CODIGO_PAI = '''+CdsTempNUM_OP.AsString+'''';
                                           //
                                           SqlCdsProc_Prod.Close;
                                           SqlCdsProc_Prod.CommandText := SQLDEF('ORDEMPRODUCAO',wSQL1,wSeleciona,'','X1.');
                                           SqlCdsProc_Prod.Open;
                                           SqlCdsProc_Prod.First;
                                           while not SqlCdsProc_Prod.Eof do
                                           begin
                                               Proc_producao(SqlCdsProc_Prod.FieldByName('OSV_CODIGO').AsString,
                                                             'R',
                                                             SqlCdsProc_Prod.FieldByName('EMP_CODIGO').AsString,
                                                             SqlCdsProc_Prod.FieldByName('PED_CODIGO').AsString);
                                               SqlCdsProc_Prod.Next;
                                           end;
                                     end;
                                     CdsTemp.Next;
                               end;
                          end;
                          Screen.Cursor := crDefault;

                          LimparGrids;

                          uteis.aviso('Ordem de Produção gerado com sucesso ! ');
                          //
                          cCodClie.AsInteger := 0;
                          CbRwClie.idRetorno := '';
                          Edt_Lote.Text      := '';
                          //
                          CdsTemp.EmptyDataSet;
                          if (Rad_Pedido.checked ) then
                             EdtPedido.SetFocus;

                          if (Rad_Item.checked ) then
                             EdtReferencia.SetFocus;

                       { apos GERAR já abrirá automaticamente a tela do PCP . Não deu para permitir ir a tela e voltar o sistema perde-se
                       ao adicionar itens na lista - 29/07/17 marcio   }
                       ////////////////////////////////////////////////////
                           if not assigned(FormOrdServCentroNovo) then
                           begin
                             FormOrdServCentroNovo := TFormOrdServCentroNovo.Create(Application);
                             if (MDIChildCount > 1) then
                                 SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
                             else
                                 FormOrdServCentroNovo.Top := 0;
                             end;
                            FormOrdServCentroNovo.Show;
                            //
                            FormOrdServCentroGerar.Release;
                            FormOrdServCentroGerar := Nil;
                       ////////////////////////////////////////////////////////

                     end
                     else
                     begin
                           if (Rad_Pedido.Checked) then
                              EdtPedido.SetFocus;
                           if (Rad_Item.Checked) then
                              EdtReferencia.SetFocus;
                     end;

              end;
         end;
   end;// FIM SE NÃO ESTIVER  VAZIO -  ELSE DE if (SqlCdsPs2.IsEmpty) then
end;

procedure TFormOrdServCentroGerar.DBGridItensDblClick(Sender: tObject);
begin
    Verifica_Se_Altera_Produto;

end;

procedure TFormOrdServCentroGerar.EdtReferenciaClick(Sender: tObject);
begin
    EdtReferencia.SelectAll;
    wSelecionouItem := False;
end;

procedure TFormOrdServCentroGerar.DBGridItensDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    if Column.Field = (SqlCdsPs2PS2_FICHA_CC) then
         begin
             DBGridItens.Canvas.FillRect(Rect);
             if (SqlCdsPs2PS2_FICHA_CC.AsBoolean) then
                ImageList1.Draw(DBGridItens.Canvas,Rect.Left+03,Rect.Top+1,2)
             else
                ImageList1.Draw(DBGridItens.Canvas,Rect.Left+03,Rect.Top+1,1);
         end;
end;

procedure TFormOrdServCentroGerar.SqlCdsPs2CalcFields(DataSet: TDataSet);
begin
    if (SqlCdsPs2PS2_FICHA.AsString = 'S') then
       SqlCdsPs2PS2_FICHA_CC.AsBoolean := True
    else
       SqlCdsPs2PS2_FICHA_CC.AsBoolean := False;
end;

procedure TFormOrdServCentroGerar.DBGridItensKeyPress(Sender: tObject;
  var Key: Char);
begin
    if (Key=#13) then
       begin
           Verifica_Se_Altera_Produto;
           key := #0;
       end;
end;

procedure TFormOrdServCentroGerar.SelecionouItem;
begin
    if (Rad_Item.checked ) then
       begin
          wSelecionouItem         := True;
          EdtReferencia.Text      := SqlCdsPs2PRD_REFER.AsString;
          EdtReferencia.ReadOnly  := True;
          EdtReferencia.TabStop   := False;
          EdtReferencia.Color     := $00D7D7D7;

          edtResponsavel.Text     := SqlCdsPs2PS2_RESPONSAVEL.AsString;
          edtOrdemdeCompra.Text   := SqlCdsPs2PS2_ORDEM_COMPRA.AsString;
          DtEntrega.Date          := SqlCdsPs2PS2_DTENTREGA.AsDateTime;
          chkGerarPIOrdemProducao.Checked := SqlCdsPs2PS2_GERAR_PI.AsString = 'S';

          Edt_Lote.Text           := SqlCdsPs2PS2_LOTE.AsString;
          cCodClie.Text           := StrZero(SqlCdsPs2CLI_CODIGO.AsString,5);
          CbRwClie.idRetorno      := StrZero(SqlCdsPs2CLI_CODIGO.AsString,5);
          if (CbRwClie.idRetorno='') then
          begin
                cCodClie.AsInteger := 0;
                if (PanInfCli.Visible) then
                   PaninfCli.Visible := False;
          end
          else
          begin
                if (not PanInfCli.Visible) then
                   PaninfCli.Visible := True;
                Busca_Dados_Cliente(StrZero(SqlCdsPs2CLI_CODIGO.AsString,5));
                MascaraCNPJ_INFCLIE;
          end;
          //
          if (SqlCdsPs2PED_CODIGO.AsString = '') then
             Habilita_Alteracao
          else
             Desabilita_Alteracao;
          //
          DesabilitaOBjetos;
       end
    else
       begin
           uteis.aviso('Seleciona Abrir Ordem Produção Por Produto !');
           Rad_Item.SetFocus;
       end;
end;

procedure TFormOrdServCentroGerar.Busca_Dados_Cliente(const sCodClie: String);
begin
   {Monta Sql}
   if (sCodClie <> '') then
      begin
         FrmMenu.RwSqlGeralCmd.MontarSql      := False;
         FrmMenu.RwSqlGeralCmd.ResetaCampos   := True;
         FrmMenu.RwSqlGeralCmd.CodigoEmpresa  := StrToInt(dbInicio.Empresa.EMP_CODIGO);
         FrmMenu.RwSqlGeralCmd.MultiEmpresa   := True;
         FrmMenu.RwSqlGeralCmd.TipoSql        := Consultar;
         FrmMenu.RwSqlGeralCmd.Apelido        := 'T1.';
         FrmMenu.RwSqlGeralCmd.Campos         := 'T1.REP_CODIGO,'+
                                                 'T1.TRP_CODIGO,'+
                                                 'T1.CLI_RAZAO,'+
                                                 'T1.CLI_CODIGO,'+
                                                 'T1.CLI_INATIVO,'+
                                                 'T1.CLI_MOTIVO,'+
                                                 'T1.CLI_DTINATIVO,'+
                                                 'T1.CLI_CGC,'+
                                                 'T1.CLI_UF,'+
                                                 'T1.CLI_CIDADE,'+
                                                 'T1.CLI_ENDERE,'+
                                                 'T1.PCL_CODIGO,'+
                                                 'T1.CLI_DESC1,'+
                                                 'T1.CLI_DESC2';
         FrmMenu.RwSqlGeralCmd.Tabela         := 'CLI0000';
         FrmMenu.RwSqlGeralCmd.UniaoTabelas   := '';
         FrmMenu.RwSqlGeralCmd.Compartilhar   := 'CLIENTES';
         FrmMenu.RwSqlGeralCmd.Condicao       := 'T1.CLI_CODIGO = '''+sCodClie+'''';
         FrmMenu.RwSqlGeralCmd.CamposAgrupar  := '';
         FrmMenu.RwSqlGeralCmd.CamposOrdernar := 'T1.CLI_CODIGO';
         FrmMenu.RwSqlGeralCmd.MontarSql      := True;
         //
         DataMovimento2.CdsConsultaClie.Close;
         DataMovimento2.CdsConsultaClie.CommandText := FrmMenu.RwSqlGeralCmd.ComandoSql;
         DataMovimento2.CdsConsultaClie.Open;
      end;
end;


procedure TFormOrdServCentroGerar.AlterarOPEmpenho(const sOrigem, sRefer: string);
begin
    Screen.Cursor := crHourGlass;
    try
     // if (DataCadastros.sqlUpdate.IsEmpty = False) then
       //  begin
      wSql1      := 'UPDATE OSV_IT02 SET OSI_STATUSEMPENHO = ''S''';
      wSeleciona := 'WHERE PRD_REFER_ITENS = '''+sRefer+''' AND OSV_CODIGO = '''+sOrigem+'''';
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=wSql1+wSeleciona;
      DataCadastros.sqlUpdate.Execsql;
         //end;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao atualizar a ficha tecnica ! '+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormOrdServCentroGerar.Ativa1Click(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    try
      wSql1      := 'SELECT T1.PRD_REFER FROM FTC0000 T1 ';
      wSeleciona := 'WHERE T1.PRD_REFER = '''+SqlCdsPs2PRD_REFER.AsString+'''';
      wOrdem     := 'T1.PRD_REFER';
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,wSeleciona,wOrdem,'T1.');
      DataCadastros.sqlUpdate.Open;
      if not (DataCadastros.sqlUpdate.IsEmpty ) then
         begin
             wTemFicha  := 'S';
             wSql1      := 'UPDATE PSV_IT02 SET PS2_FICHA = '''+wTemFicha+'''';
             wSeleciona := 'WHERE PRD_REFER = '''+SqlCdsPs2PRD_REFER.AsString+'''';
             DataCadastros.sqlUpdate.Close;
             DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,wSeleciona,'','');
             DataCadastros.sqlUpdate.Execsql;
             SqlCdsPs2.Refresh;
         end;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao atualizar a ficha tecnica ! '+e.message));
    end;
    Screen.Cursor := crDefault;
end;


procedure TFormOrdServCentroGerar.IncluirOP(const wORIGEM,wOP,wPAI, wPRODUTO,wVariacao, wProdutoPai, wEmpresa, wNumLote, CodClie , sResponsavel, sOrdemCOmpra, sGeraPI, sDtEntrega : String; wQtdeSolicitada,wQtdeProduzir,wQtdeReserva : Currency);
Var
  sNumLote,
  sCodClie : String;
  wTipoOP  : String[1];
  sObs1,sObs2,sObs3,sObs4,sObs5,sObs6,sObs7:String;
  sObservacao:WideString;

begin
   //Pega OBS do Pedido e adiciona na OP
   if (SqlCdsConsumoPED_CODIGO.AsString <> '') then
   begin
         //Pega Observacao do Pedido
         DataCadastros.sqlUpdate2.Close;
         DataCadastros.sqlUpdate2.sql.text := 'SELECT t1.PED_OBSERVACAO FROM PED0000 T1 WHERE T1.PED_CODIGO = '+QuotedStr(SqlCdsConsumoPED_CODIGO.AsString)+' and t1.EMP_CODIGO = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+'';
         DataCadastros.sqlUpdate2.open;

         if (not DataCadastros.sqlUpdate2.IsEmpty) then
            sObservacao := DataCadastros.sqlUpdate2.FieldByName('PED_OBSERVACAO').AsString;

         DataCadastros.sqlUpdate2.Close;


         try
            sObs1 := copy(sObservacao,1,100)
         except
            sObs1 := '';
         end;
         try
            sObs2 := copy(sObservacao,101,100)
         except
            sObs2 := '';
         end;
         try
            sObs3 := copy(sObservacao,201,100)
         except
            sObs3 := '';
         end;
         try
            sObs4 := copy(sObservacao,301,100)
         except
            sObs4 := '';
         end;
         try
            sObs5 := copy(sObservacao,401,100)
         except
            sObs5 := '';
         end;
         try
            sObs6 := copy(sObservacao,501,100)
         except
            sObs6 := '';
         end;
         try
            sObs7 := copy(sObservacao,601,100)
         except
            sObs7 := '';
         end;

   end;


   try
     if (RAD_OA.checked ) then
        wTipoOP := 'A';
     if (RAD_OR.checked ) then
        wTipoOP := 'R';
     if (RAD_OP.checked ) then
        wTipoOP := 'P';
     //
     sNumLote := '';
     sCodClie := '';
     //
     sRefer_PaiOP := wProdutoPai;
     {busca dados do preco unitario do pedido , ftc criacao da ficha, ftc_tup}
     BuscaPreco_Ftc;
     //
     if (Trim(CodClie) <> '') then
        sCodClie := CodClie
     else
        sCodClie := 'null';

     //
     if (FrmMenu.sGerarNumLote = 'A') then
        sNumLote := wOP
     else
        sNumLote := wNumLote;
     //
     if (wProduto = wProdutoPai) then
     begin
           wSql1 := 'INSERT INTO OSV0001 ('+
                    'OSV_CODIGO_PAI,'+
                    'OSV_PAI,'+
                    'OSV_CODIGO,'+
                    'FTC_CRIACAO,'+
                    'OSV_EMISSAO,'+
                    'OSV_PRECOUNIT,'+
                    'FTC_TUP,'+
                    'PRD_REFER,'+
                    'OSV_VARIACAO,'+
                    'PED_CODIGO,'+
                    'OSV_QTDE_SOLICITADA,'+
                    'OSV_ESTOQUE,'+
                    'OSV_QTDE,'+
                    'OSV_QTDE1,'+
                    'OSV_QTDE2,'+
                    'OSV_QTDE3,'+
                    'OSV_QTDE4,'+
                    'OSV_QTDE5,'+
                    'OSV_QTDE6,'+
                    'OSV_QTDE7,'+
                    'OSV_QTDE8,'+
                    'OSV_ORDEM_COMPRA,'+
                    'OSV_RESPONSAVEL,'+

                    'OSV_OBS1,'+
                    'OSV_OBS2,'+
                    'OSV_OBS3,'+
                    'OSV_OBS4,'+
                    'OSV_OBS5,'+
                    'OSV_OBS6,'+
                    'OSV_OBS7,'+

                    'OSV_GERAR_PI,'+
                    'OSV_STATUS,'+
                    'CLI_CODIGO,'+
                    'OSV_DTENTREGA,'+
                    'OSV_LOTE,'+
                    'EMP_CODIGO)';

           if ChechaVariacao(wPRODUTO)  then
           begin
                 {se o produto tiver variacao}
                 wSql2 := 'VALUES ('''+wORIGEM+''','''+
                                       wPAI+''','''+
                                       wOP+''','+
                                       iif(SqlCdsAuxFTC_CRIACAO.IsNull,'null',chr(39)+DataAmericana(SqlCdsAuxFTC_CRIACAO.Text)+chr(39))+','''+
                                       DataAmericana(DateToStr(now))+''','''+
                                       ValorAmericano(SqlCdsAuxPRF_PRECO.Text)+''','''+
                                       ValorAmericano(SqlCdsAuxFTC_TUP.Text)+''','''+
                                       wPRODUTO+''','''+
                                       wVariacao+''','+
                                       Iif(SqlCdsConsumoPED_CODIGO.AsString='','null',chr(39)+SqlCdsConsumoPED_CODIGO.AsString+chr(39))+','+
                                       ValorAmericano(FloatToStr(wQtdeSolicitada))+','+
                                       ValorAmericano(FloatToStr(wQtdeReserva))+','+
                                       ValorAmericano(FloatToStr(wQtdeProduzir))+','+
                                       QuotedStr(CdsTempORDEMCOMPRA.AsString)+','+
                                       QuotedStr(CdsTempRESPONSAVEL.AsString)+','+

                                       QuotedStr(sObs1)+','+
                                       QuotedStr(sObs2)+','+
                                       QuotedStr(sObs3)+','+
                                       QuotedStr(sObs4)+','+
                                       QuotedStr(sObs5)+','+
                                       QuotedStr(sObs6)+','+
                                       QuotedStr(sObs7)+','+

                                       QuotedStr(iif(CdsTempGERAR_PI.AsBoolean,'S','N'))+','+
                                       wTipoOP+''','''+
                                       sCodClie+''','+
                                       QuotedStr(sDtEntrega)+','+
                                       IIF(Trim(sNumLote)='','null',chr(39)+sNumLote+chr(39))+','''+
                                       wEmpresa+''')';
           end
           else
           begin
                 {se o produto nao tiver variacao}
                 wSql1 := 'INSERT INTO OSV0001 ('+
                          'OSV_CODIGO_PAI,'+
                          'OSV_PAI,'+
                          'OSV_CODIGO,'+
                          'FTC_CRIACAO,'+
                          'OSV_EMISSAO,'+
                          'OSV_QTDE_SOLICITADA,'+
                          'OSV_ESTOQUE,'+
                          'OSV_QTDE,'+
                          'OSV_QTDE_CONVERTIDA,'+
                          'OSV_PRECOUNIT,'+
                          'FTC_TUP,'+
                          'PRD_REFER,'+
                          'PED_CODIGO,'+
                          'OSV_ORDEM_COMPRA,'+
                          'OSV_RESPONSAVEL,'+

                          'OSV_OBS1,'+
                          'OSV_OBS2,'+
                          'OSV_OBS3,'+
                          'OSV_OBS4,'+
                          'OSV_OBS5,'+
                          'OSV_OBS6,'+
                          'OSV_OBS7,'+

                          'OSV_GERAR_PI,'+
                          'OSV_STATUS,'+
                          'CLI_CODIGO,'+
                          'OSV_DTENTREGA,'+
                          'OSV_LOTE,'+
                          'EMP_CODIGO)';
                 wSql2 := 'VALUES ('''+wORIGEM+''','''+
                                       wPAI+''','''+
                                       wOP+''','+
                                       iif(sqlCdsauxFTC_CRIACAO.IsNull,'null',chr(39)+DataAmericana(SqlCdsAuxFTC_CRIACAO.Text)+chr(39))+','''+
                                       DataAmericana(DateToStr(now))+''','+
                                       ValorAmericano(FloatToStr(wQtdeSolicitada))+','+
                                       ValorAmericano(FloatToStr(wQtdeReserva))+','+
                                       ValorAmericano(FloatToStr(wQtdeProduzir))+','+
                                       ValorAmericano(FloatToStr(SqlCdsConsumoCONV.AsCurrency))+','''+     //ValorAmericano(FloatToStr(wQtdeProduzir))+','''+     //
                                       ValorAmericano(FloatToStr(SqlCdsAuxPRF_PRECO.AsCurrency))+''','''+
                                       ValorAmericano(SqlCdsAuxFTC_TUP.Text)+''','''+
                                       wPRODUTO+''','+
                                       IIF(SqlCdsConsumoPED_CODIGO.AsString='','null',chr(39)+SqlCdsConsumoPED_CODIGO.AsString+chr(39))+','+
                                       QuotedStr(CdsTempORDEMCOMPRA.AsString)+','+
                                       QuotedStr(CdsTempRESPONSAVEL.AsString)+','+

                                       QuotedStr(sObs1)+','+
                                       QuotedStr(sObs2)+','+
                                       QuotedStr(sObs3)+','+
                                       QuotedStr(sObs4)+','+
                                       QuotedStr(sObs5)+','+
                                       QuotedStr(sObs6)+','+
                                       QuotedStr(sObs7)+','+

                                       QuotedStr(iif(CdsTempGERAR_PI.AsBoolean,'S','N'))+','''+
                                       wTipoOP+''','''+
                                       sCodClie+''','+
                                       QuotedStr(sDtEntrega)+','+
                                       IIF(Trim(sNumLote)='','null',chr(39)+sNumLote+chr(39))+','''+
                                       wEmpresa+''')';
           end;
     end
     else
     begin
           wSql1 := 'INSERT INTO OSV0001 ('+
                    'OSV_CODIGO_PAI,'+
                    'OSV_PAI,'+
                    'OSV_CODIGO,'+
                    'FTC_CRIACAO,'+
                    'OSV_EMISSAO,'+
                    'OSV_QTDE_SOLICITADA,'+
                    'OSV_ESTOQUE,'+
                    'OSV_QTDE,'+
                    'OSV_QTDE_CONVERTIDA,'+
                    'OSV_PRECOUNIT,'+
                    'FTC_TUP,'+
                    'PRD_REFER,'+
                    'PED_CODIGO,'+
                    'OSV_ORDEM_COMPRA,'+
                    'OSV_RESPONSAVEL,'+

                    'OSV_OBS1,'+
                    'OSV_OBS2,'+
                    'OSV_OBS3,'+
                    'OSV_OBS4,'+
                    'OSV_OBS5,'+
                    'OSV_OBS6,'+
                    'OSV_OBS7,'+


                    'OSV_GERAR_PI,'+
                    'OSV_STATUS,'+
                    'CLI_CODIGO,'+
                    'OSV_DTENTREGA,'+
                    'OSV_LOTE,'+
                    'EMP_CODIGO)';
           wSql2 := 'VALUES ('''+wORIGEM+''','''+
                                 wPAI+''','''+
                                 wOP+''','+
                                 iif(SqlCdsAuxFTC_CRIACAO.IsNull,'null',chr(39)+DataAmericana(SqlCdsAuxFTC_CRIACAO.Text)+chr(39))+','''+
                                 DataAmericana(DateToStr(now))+''','+
                                 ValorAmericano(FloatToStr(wQtdeSolicitada))+','+
                                 //                                 ValorAmericano(CurrToStr(wQtdeSolicitada))+','+
                                 ValorAmericano(FloatToStr(wQtdeReserva))+','+
                                 ValorAmericano(FloatToStr(wQtdeProduzir))+','+
                                 ValorAmericano(FloatToStr(SqlCdsConsumoCONV.AsCurrency))+','''+     //ValorAmericano(FloatToStr(wQtdeProduzir))+','''+     //
                                 ValorAmericano(SqlCdsAuxPRF_PRECO.Text)+''','''+
                                 ValorAmericano(SqlCdsAuxFTC_TUP.Text)+''','''+
                                 wPRODUTO+''','+
                                 IIF(SqlCdsConsumoPED_CODIGO.AsString='','null',chr(39)+SqlCdsConsumoPED_CODIGO.AsString+chr(39))+','+
                                 QuotedStr(CdsTempORDEMCOMPRA.AsString)+','+
                                 QuotedStr(CdsTempRESPONSAVEL.AsString)+','+
                                  //
                                 QuotedStr(sObs1)+','+
                                 QuotedStr(sObs2)+','+
                                 QuotedStr(sObs3)+','+
                                 QuotedStr(sObs4)+','+
                                 QuotedStr(sObs5)+','+
                                 QuotedStr(sObs6)+','+
                                 QuotedStr(sObs7)+','+
                                 //
                                 QuotedStr(iif(CdsTempGERAR_PI.AsBoolean,'S','N'))+','''+
                                 wTipoOP+''','''+
                                 sCodClie+''','+
                                 QuotedStr(sDtEntrega)+','+
                                 IIF(Trim(sNumLote)='','null',chr(39)+sNumLote+chr(39))+','''+
                                 wEmpresa+''')';
     end;

     DataCadastros.sqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.text :=wSql1+wSql2;
     DataCadastros.sqlUpdate.Execsql;

   except on E:EDataBaseError do
      uteis.erro  (pchar('Erro ao incluir a Ordem de Produção ! '+e.message));
   end;
end;

procedure TFormOrdServCentroGerar.IncluirItensOP(const pORIGEM,pORDEM, pProdutoCodigo, pREFER, pREFERITEM,
  pEMPRESA,pSigla,pStatus,pOrigemOP: String;const  pConsumido, pQtde1, pQtde2, pQtde3, pQtde4, pQtde5, pQtde6,
  pQtde7, pQtde8, pReservado, pEmpenho: double ;const iRegistroGrade, ope_codigo:Integer);
Var


  xStatus_compra : String;
  iRegistro : integer;
  consumo : Double;
  baseformula : integer;
begin
    try
      if SqlCdsItensFichasFTC_BASEFORMULA.AsInteger = 0  then // evitar o erro de zero
         baseformula:=1
      else
         baseformula := SqlCdsItensFichasFTC_BASEFORMULA.AsInteger ;
      consumo := RoundTo((pConsumido/baseformula),- dbInicio.Empresa.fPMT_QTDE_DEC_PED);
      iRegistro := dbInicio.GetNextSequence('gen_osv_it02');
      wSql1 := 'INSERT INTO OSV_IT02 ('+
               'OSI_REGISTRO,'+
               'OSI_CODIGO_ORIGEM,'+
               'OSI_CODIGO_ARVORE,'+
               'OSV_CODIGO,'+
               'PRD_REFER,'+
               'PRD_REFER_ITENS,'+
               'PRG_REGISTRO,'+
               'OSI_UC,'+
               'OSI_QTDE1,'+
               'OSI_QTDE2,'+
               'OSI_QTDE3,'+
               'OSI_QTDE4,'+
               'OSI_QTDE5,'+
               'OSI_QTDE6,'+
               'OSI_QTDE7,'+
               'OSI_QTDE8,'+
               'OSI_RESERVADO,'+
               'OSI_EMPENHO,'+
               'OSI_STATUSEMPENHO,'+
               'OSI_ORIGEM,'+
               'OSI_REQ_COMPRA,'+
               'EMP_CODIGO,'+
               'OPE_CODIGO ) ';


      wSql2 := 'VALUES ('''+IntToStr(iRegistro)+''','''+
                            pOrigem+''','''+
                            pORDEM+''','''+
                            pORDEM+''','''+
                            pREFER+''','''+
                            pREFERITEM+''','''+
                            IntToStr(iRegistroGrade)+''','''+
                            FloatToSQL(consumo)+''','''+
                            ValorAmericano(FloatToStr(pQtde1))+''','''+
                            ValorAmericano(FloatToStr(pQtde2))+''','''+
                            ValorAmericano(FloatToStr(pQtde3))+''','''+
                            ValorAmericano(FloatToStr(pQtde4))+''','''+
                            ValorAmericano(FloatToStr(pQtde5))+''','''+
                            ValorAmericano(FloatToStr(pQtde6))+''','''+
                            ValorAmericano(FloatToStr(pQtde7))+''','''+
                            ValorAmericano(FloatToStr(pQtde8))+''','''+
                            ValorAmericano(FloatToStr(pReservado))+''','''+
                            ValorAmericano(FloatToStr(pEmpenho))+''','''+
                            pStatus+''','''+
                            pOrigemOP+''','''+
                            xStatus_Compra+''','''+
                            pEMPRESA+  ''','+
                            IntToStr(ope_codigo) + ')';
      //


      tQtde       := pConsumido;
      //
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=wSql1+wSql2;
      DataCadastros.sqlUpdate.Execsql;

    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao inserir os itens na tabela OSV_IT02 ! '+E.MESSAGE));
    end;
end;

procedure TFormOrdServCentroGerar.LimparGrids;
begin
    {Limpado a tabela PSV_GRUPO}
    DataCadastros.sqlUpdate.close;
    DataCadastros.SqlUpdate.sql.text :='DELETE FROM PSV_GRUPO';
    DataCadastros.sqlUpdate.Execsql;
    {Limpado a tabela PSV_IT02}

    DataMovimento2.sqlaux.close;
    DataMovimento2.sqlaux.sql.text := 'DELETE FROM PSV_IT02';
    DataMovimento2.sqlaux.ExecSql;
    {Atualizando os Generators}
    DataCadastros.sqlUpdate.close;
    DataCadastros.SqlUpdate.sql.text :='SET GENERATOR GEN_PSVGRUPO TO 0';
    DataCadastros.sqlUpdate.Execsql;
    //
    DataMovimento2.sqlaux.close;
    DataMovimento2.sqlaux.sql.text := 'SET GENERATOR GEN_PS2ITENS TO 0';
    DataMovimento2.sqlaux.ExecSql;
    {Excluir os produtos da tabela PSV0000}
    DataCadastros.sqlUpdate.Close;
    DataCadastros.SqlUpdate.sql.text :='DELETE FROM PSV0000 ';
    DataCadastros.sqlUpdate.Execsql;
    {Excluir os itens da tabela PSV_IT01}
    DataMovimento2.sqlaux.Close;
    DataMovimento2.sqlaux.sql.text := 'DELETE FROM PSV_IT01 ';
    DataMovimento2.sqlaux.ExecSql;
    {ZERA OS GENERATORS GEN_PSV0000}
    DataCadastros.sqlUpdate.Close;
    DataCadastros.SqlUpdate.sql.text :='SET GENERATOR GEN_PSV0000 TO 0';
    DataCadastros.sqlUpdate.Execsql;
    {Atualizando os Grids}
    SqlCdsPsvGrupo.Refresh;
    SqlCdsPs2.Refresh;
end;

function TFormOrdServCentroGerar.AtribuirLetra: String;
begin
    try
      Inc(wALfabeto);
      Result := '-'+IntToStr(wALfabeto);
    except on E:EDataBaseError do
      uteis.erro  (pchar('erro ao gerar o codigo ! '));
    end;
end;

procedure TFormOrdServCentroGerar.Atualiza_Flag_Item_Pedido(const wFlag, wPedido,
  wProduto, wEmpresa: String);
begin
    try
      wSql1      := 'Update PED_IT01 set PRF_OP = '''+wFlag+'''';
      wSeleciona := ' where EMP_CODIGO = '''+wEmpresa+''' AND PED_CODIGO = '''+wPedido+''' AND PRD_REFER = '''+wProduto+'''';
      //
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=wSql1+wSeleciona;
      DataCadastros.sqlUpdate.Execsql;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao atualizar o Flag do Item do Pedido ! '+e.message));
    end;
end;
// gera as operações que devem ser seguidas na ordem de produção e posteriormente apontadas
procedure TFormOrdServCentroGerar.GerarEspecificacoes(cds: TClientDataSet);
var clone : TClientDataSet;

begin
 clone := TClientDataSet.Create(Self);
 try
  clone.CloneCursor(cds,true);
  clone.First;
  while not clone.Eof do
  begin
    try
    DataCadastros.sqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.text :=
      'INSERT INTO ESPECIFICACOES_REALIZADAS (ESR_CODIGO,FAB_CODIGO, ESR_NOME, ESR_PADROES, ESR_COL1, '+
      ' ESR_COL2,ESR_COL3,ESR_COL4,ESR_COL5,ESR_COL6,ESR_COL7 )                                      '+
      ' SELECT gen_id (GEN_ESP_REALIZADAS,1 ), FAB_CODIGO, ESP_NOME, ESP_PADROES,                    '+
      '   ESP_COL1,ESP_COL2,ESP_COL3,ESP_COL4,ESP_COL5,ESP_COL6,ESP_COL7                             '+
      '  FROM ENGENHARIA_PROCESSO EP                                                                 '+
      '  INNER JOIN PRD0000 P1 ON (P1.PRD_CODIGO = EP.PRD_CODIGO)                                    '+
      '  INNER JOIN ESPECIFICACOES e1 ON (E1.ENG_CODIGO = EP.ENG_CODIGO)                             '+
      '  INNER JOIN FABRICACAO FB ON (FB.ENG_CODIGO = EP.ENG_CODIGO)                                 '+
      ' WHERE p1.PRD_REFER = '+ qstr(clone.FieldByName('REFER').AsString) +
      ' AND FB.OSV_CODIGO = ' + qstr(clone.fieldbyname('NUM_OP_ORIGEN').AsString);

     DataCadastros.sqlUpdate.Execsql;
    except
    on e:exception do
    begin
     uteis.erro  (Pchar('Ocorreu uma erro nas operações do processo !'+e.message));
     raise;
    end;
    end;
    clone.Next;
  end;
 finally
  FreeAndNil(clone);


 end;
end;

procedure TFormOrdServCentroGerar.GerarFabricacao(cds: TClientDataSet);
var clone : TClientDataSet;

begin
 clone := TClientDataSet.Create(Self);
 try
  clone.CloneCursor(cds,true);
  clone.First;
  while not clone.Eof do
  begin
     try
     DataCadastros.sqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.text :='INSERT INTO FABRICACAO (FAB_CODIGO, PRD_CODIGO, OPE_CODIGO, sequencia, TEMPO_ESTIMADO, ENG_CODIGO, FAB_OBSERVACAO, OSV_CODIGO,  eqp_codigo )   '+
                                        ' SELECT gen_id (GEN_FABRICACAO,1 ), EP.PRD_CODIGO, OPE_CODIGO, sequencia,TEMPO_ESTIMADO , ENG_CODIGO, ENG_OBSERVACAO, ' + QuotedStr(clone.fieldbyname('NUM_OP_ORIGEN').AsString) +  ',eqp_codigo'+
                                        ' FROM ENGENHARIA_PROCESSO EP                                                                            '+
                                        ' INNER JOIN PRD0000 P1 ON (P1.PRD_CODIGO = EP.PRD_CODIGO)                                               '+
                                        ' WHERE PRD_REFER = '+ qstr(clone.FieldByName('REFER').AsString)+
                                        ConcatSe('and P1.',dbinicio.ExclusivoSql('PRODUTOS')) ;

     DataCadastros.sqlUpdate.Execsql;
     except
     on e:exception do
     begin
      uteis.erro  (Pchar('Ocorreu uma erro nas operações do processo !'+e.message));
      raise;
     end;

     end;
     clone.Next;
  end;


 finally
  FreeAndNil(clone);
 end;

end;

procedure TFormOrdServCentroGerar.GerarOPNovo;
var

   savePlace :TBookMark;
   WRefer_pai:String;
begin

     BuscarOpPrevisao; //{ abre tabela SqlCdsConsumo mas da erro toke - desativada}


//    SqlCdsConsumo.Open;
    SqlCdsConsumo.First;

    GravaConsumoTemp; //{passa os produtos a produzir para a tabela temporaria}
    GerarFabricacao(CdsTemp);
    GerarEspecificacoes(CdsTemp);
    //wAlfabeto := 0;
    wLETRA1   := 64;
    wLETRA2   := 64;

   {CdsTemp deve ficar sempre active = true }
    CdsTemp.First;

    wRefer_Pai    := CdsTempREFER.AsString;
    wCHECA_NUM_OP := CdsTempNUM_OP.AsString;
    CdsTemp.First;

    while not CdsTemp.Eof do
    begin
         saveplace := Cdstemp.GetBookmark;
         if (CdsTempSTATUS_PREV.AsString = 'S') then
            GravaOrdemRod( CdsTempQTDE.AsCurrency, wReserva, CdsTempREFER.AsString)
         else
         begin
              xxRefer := CdsTempREFER.AsString;
              RetornarQtdeProduzir;
              GravaOrdemRod( wProduzirQtde, wReserva, CdsTempREFER.AsString)
         end;
         CdsTemp.GotoBookmark(savePlace);
         Cdstemp.Next;
     end;



end;

function TFormOrdServCentroGerar.Busca_ItensFichaTecnica(const wReferencia: String):boolean;
Var
   wSQL1,wSQL2,wSQL3,wSeleciona:String;
    sEmpresa :String;

begin

   sEmpresa := '';


   if DBInicio.Exclusivo('PRODUTOS') then
      sEmpresa := '  and P1.EMP_CODIGO = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO);


   if ((CdsTempSIGLA.AsString = 'KT') and (DBInicio.Empresa.wPMT_VALOR_KIT ) and (SqlCdsPsvGrupo.RecordCount > 0)) then
  begin
   wSql1:= ' SELECT  0 as PRG_REGISTRO, 0 as FTI_REGISTRO, PK.PRD_REFER, P1.PRD_REFER as PRD_REFER_ITENS, P1.PRD_CODIGO, P1.PRD_DESCRI, P1.PRD_PCUSTO, '+
           ' P1.PRD_ESTOQUE,	P1.PRD_ENTRADA,	P1.PRD_SAIDA,	P1.PRD_PENDENTE,P1.PRD_RESERVA,                                                     '+
           ' P1.PRD_UND,P2.PTI_SIGLA,FTC_BASEFORMULA, '''' as FTI_MODE1, '''' as FTI_MODE2, '''' as FTI_MODE3,                                  '+
           ' '''' as FTI_MODE4, '''' as FTI_MODE5, '''' as FTI_MODE6, '''' as FTI_MODE7, '''' as FTI_MODE8, P3.PRF_QTDE as FTI_UC, 0 as ope_codigo   '+
           ' FROM ped_it01 P3                                                                                                       '+
           ' INNER JOIN PRD0000 P1 ON (P3.PRD_CODIGO = P1.PRD_CODIGO '+sEmpresa+ ')                                                 '+
           ' INNER JOIN PED_IT01 PK ON (P3.PRF_REGISTRO_VINCULADO = PK.PRF_REGISTRO AND PK.PRD_REFER = '+ QuotedStr(wReferencia)     +
           ' AND PK.PED_CODIGO = P3.PED_CODIGO)   '                                                                                  +
           '  LEFT JOIN FTC0000 F1 ON (PK.PRD_REFER = F1.PRD_REFER	)                                                               '+
           '  LEFT JOIN PRD_TIPO P2 ON (P1.PTI_CODIGO = P2.PTI_CODIGO	)                                                             '+
           '  WHERE P3.PED_CODIGO = '+ QuotedStr(SqlCdsPsvGrupoPED_CODIGO.AsString)+
           '  ORDER BY P3.PRF_REGISTRO ';

     SqlCdsItensFichas.close;
     try
       SqlCdsItensFichas.commandText := wSQL1 ;

       SqlCdsItensFichas.open;
       SqlCdsItensFichas.First;
     except
         on  E : exception do
         showmessage (E.message );
     end;
    end
  else
  begin

    wSql1      := 'Select I1.PRG_REGISTRO,I1.FTI_REGISTRO,I1.PRD_REFER,I1.PRD_REFER_ITENS,P1.PRD_CODIGO, P1.PRD_DESCRI,P1.PRD_PCUSTO,P1.PRD_ESTOQUE,P1.PRD_ENTRADA,'+
                  'P1.PRD_SAIDA,P1.PRD_PENDENTE,P1.PRD_RESERVA,P1.PRD_UND,P2.PTI_SIGLA,F1.FTC_BASEFORMULA,';
    wSql2      := 'I1.FTI_MODE1,I1.FTI_MODE2,I1.FTI_MODE3,I1.FTI_MODE4,I1.FTI_MODE5,I1.FTI_MODE6,I1.FTI_MODE7,I1.FTI_MODE8,I1.FTI_UC, I1.ope_codigo FROM FTC_IT01 I1 ';
    wSql3      := 'LEFT JOIN PRD0000 P1 on (I1.PRD_REFER_ITENS = P1.PRD_REFER'+sEmpresa+') LEFT JOIN PRD_TIPO P2 ON (P1.PTI_CODIGO = P2.PTI_CODIGO) '+
                  'LEFT JOIN FTC0000 F1 ON (I1.PRD_REFER = F1.PRD_REFER) ';   // add marcio 13/09/17
    wSeleciona := 'WHERE I1.PRD_REFER = '''+wReferencia+'''';
    wOrdem     := 'order by I1.FTI_REGISTRO';

    SqlCdsItensFichas.close;

   try
     SqlCdsItensFichas.commandText := wSQL1 + wSQL2 + wSQL3 + wSeleciona + wOrdem;
     SqlCdsItensFichas.open;
     SqlCdsItensFichas.First;
   except
       on  E : exception do
       showmessage (E.message );
   end;


    SqlCdsItensFichas.commandText := wSQL1 + wSQL2 + wSQL3 + wSeleciona + wOrdem;
    SqlCdsItensFichas.open;
    SqlCdsItensFichas.First;
  end;
   Result := not (SqlCdsItensFichas.Eof);
end;


procedure TFormOrdServCentroGerar.CalculaConsumo;
var
wprod :String;
Sld_est:Currency;
begin
    {zeraVariaçoes}
    wM1:=0;wM2:=0;wM3:=0;wM4:=0;wM5:=0;wM6:=0;wM7:=0;wM8:=0;
    wQtdeTotal := 0;
    //
    xxRefer := SqlCdsItensFichasPRD_REFER_ITENS.AsString;
    //
    wprod := DBInicio.BuscaUmDadoSqlAsString(SQLDEF('PRODUTOS','select prd_codigo from prd0000 pr','where PRD_REFER = '+QuotedStr(xxRefer),'','pr.') ) ;
    Sld_est:=KardexRetornaSaldo(wprod, wPmt_Amx_Producao_saida,'');
          {foi retirada a opcao de multiplicar pelo consumo da ficha teecinca}

    if wConsiderar = 'S' then
    begin
      if Sld_est > (CdsTempQTDE.AsCurrency+Sld_est) then
        wM1 := (CdsTempQTDE.AsCurrency+Sld_est)
      else
        wM1 := Sld_est;
    end
    else
      wM1 := (CdsTempQTDE.AsCurrency);

    wQtdeTotal := wM1+wM2+wM3+wM4+wM5+wM6+wM7+wM8;
    //
    if wQtdeTotal = 0 then
       wNaoConsome := true;
end;

procedure TFormOrdServCentroGerar.RetornarQtdeProduzir;
var
  wSALDO_ESTOQUE,
  wQtdeOP :Currency;
  prd:string;
begin
   xxRefer := CdsTempREFER.AsString;
   wQtdeOP := (CdsTempQTDE.AsCurrency);
   {Tem que arrumar essa rotina para levar em consideração as variaçoes}
   if (wConsiderar = 'S') then   {Se for para produçao sera feito o consumo}
   begin
          xxRefer := CdsTempREFER.AsString;
          if (not ChechaVariacao(CdsTempREFER.AsString) ) and ((CdsTempSIGLA.asstring = 'PA') or (CdsTempSIGLA.asstring = 'PI')) then
          begin
                {verifica se o Produto tem variação se não tiver produz qtde total}
                wM1 := wQtdeOP;
          end;
          //wSALDO_ESTOQUE  := Retorna_Saldo_Estoque(CdsTempREFER.AsString,
          //                                         SqlCdsConsumoEMP_CODIGO.AsString,
          //                                         FloatToStr(wQtdeOP));
          prd:= DBInicio.BuscaUmDadoSqlAsString(SQLDEF('PRODUTOS','select prd_codigo from prd0000 pr','where PRD_REFER = '+QuotedStr(CdsTempREFER.AsString),'','pr.') ) ;
          wSALDO_ESTOQUE := KardexRetornaSaldo(prd,wPmt_Amx_Producao_saida,'');
          //
          if (wSALDO_ESTOQUE > 0) then
          begin
                 if (wQtdeOP >= wSALDO_ESTOQUE) then
                 begin
                        wReserva      := wSALDO_ESTOQUE;
                        if wConsiderar = 'S' then
                          wProduzirQtde :=  wQtdeOP
                        else
                        wProduzirQtde := (wQtdeOP - wSALDO_ESTOQUE);
                 end
                 else
                 begin
                        if wConsiderar = 'S' then
                          wProduzirQtde := wQtdeOP
                        else
                          wProduzirQtde := 0;
                        wReserva      := 0;
                 end;
          end
          else
             wProduzirQtde := wQtdeOP;
   end
   else
   begin
          xxRefer       := SqlCdsItensFichasPRD_REFER_ITENS.AsString;
          wReserva      := 0;
          wProduzirQtde := wQtdeOP;
   end;
end;

procedure TFormOrdServCentroGerar.GravaOrdemRod(wQtde_Prod,wQtde_Reserva:currency;wReferencia_prod:String);
var
  wTEste :String;
  bProduzirPI:Boolean;
begin
   wTeste := CdsTempREFER.AsString;
   xxRefer := wReferencia_prod;
   bProduzirPI := CdsTempGERAR_PI.AsBoolean;
   if CdsTempSTATUS_PREV.AsString = 'S' then
   begin
         {utilizado para verficar se é um produto da grade}
         wAlfabeto := 0;//Variavel para implmentar letra na ordem
         wLETRA1   := 64;
         wLETRA2   := 64;
         EdtORDEM.Text := CdsTempNUM_OP.AsString;
         //
         IncluirOP(CdsTempNUM_OP.AsString,                 //wORIGEM
                   CdsTempNUM_OP.AsString,                 //wOP
                   'P',                                    //wPAI
                   CdsTempREFER.AsString,                  //wPRODUTO
                   CdsTempVARIACAO.AsString,               //wVariacao
                   CdsTempREFER.AsString,                  //wPRODUTOPAI                        C
                   SqlCdsConsumoEMP_CODIGO.AsString,       //wEMPRESA
                   SqlCdsConsumoPS2_LOTE.AsString,         //wNumLote
                   SqlCdsConsumoCLI_CODIGO.AsString,       //CodClie
                   SqlCdsConsumoPS2_RESPONSAVEL.AsString,
                   SqlCdsConsumoPS2_ORDEM_COMPRA.AsString,
                   SqlCdsConsumoPS2_GERAR_PI.AsString,
                   DataAmericana(DateToStr(SqlCdsConsumoPS2_DTENTREGA.AsDateTime)),
                   CurrQtde.Value,    //CdsTempQTDE_SOLICITADA.AsCurrency,      //wQTDESOLICITADA
                   wQtde_Prod,                             //wQTDEPRODUZIR
                   wReserva);                              //wQTDERESERVA
   end
   else
   begin
         {verifica se ouve alteraçao da op para zerar as letras}
         if wCHECA_NUM_OP <> CdsTempNUM_OP.AsString then
         begin
               wAlfabeto := 1;//Variavel para implmentar letra na ordem

               wLETRA1   := 64;
               wLETRA2   := 64;
               wCHECA_NUM_OP := CdsTempNUM_OP.AsString;
         end;
         if (wQtde_Prod > 0) then
         begin

                 //tirar letras
                //EdtORDEM.Text     := IntToStr(StrToInt(CdsTempNUM_OP.AsString)+1);
                EdtORDEM.Text     := CdsTempNUM_OP.AsString + AtribuirLetra;
                IncluirOP(CdsTempNUM_OP_ORIGEN.AsString,        //wORIGEM
                          EdtOrdem.Text,                        //wOP
                          'F',                                  //wPAI
                          CdsTempREFER.AsString,                //wPRODUTO
                          CdsTempVARIACAO.AsString,             //wVariacao
                          CdsTempREFER_ORIGEN.AsString,         //wPRODUTOPAI
                          SqlCdsConsumoEMP_CODIGO.AsString,     //wEMPRESA
                          SqlCdsConsumoPS2_LOTE.AsString,       //wNumLote
                          SqlCdsConsumoCLI_CODIGO.AsString,     //CodClie
                          SqlCdsConsumoPS2_RESPONSAVEL.AsString,
                          SqlCdsConsumoPS2_ORDEM_COMPRA.AsString,
                          SqlCdsConsumoPS2_GERAR_PI.AsString,
                          DataAmericana(DateToStr(SqlCdsConsumoPS2_DTENTREGA.AsDateTime)),
                          CurrQtde.Value,    //CdsTempQTDE_SOLICITADA.AsCurrency,    //wQTDESOLICITADA
                          wQtde_Prod,                           //wQTDEPRODUZIR
                          wReserva);                            //wQTDERESERVA
         end;
   end;

   {não foi enpemhado nada}
   wStatusEmpenho := 'N';
   wSaldoEstoque  := 0;
   {busca os itens/materia prima do produto}
   if not (Busca_ItensFichaTecnica(CdsTempREFER.AsString)) and ((CdsTempSIGLA.AsString = 'PA') or (CdsTempSIGLA.AsString = 'PI') or (CdsTempSIGLA.AsString = 'KT')) and (wConsiderar = 'S') then
     AlterarOPEmpenho(CdsTempNUM_OP_ORIGEN.AsString,CdsTempREFER.AsString);

   while not SqlCdsItensFichas.Eof do
   begin
       xxRefer     := SqlCdsItensFichasPRD_REFER_ITENS.AsString;
       wNaoConsome := False;
       {Grava na tabela temporaria os PI's encontrado nos itens da ficha tecnica}
       if  bProduzirPI  and ( ( SqlCdsItensFichasPTI_SIGLA.AsString = 'PA') or (SqlCdsItensFichasPTI_SIGLA.AsString = 'PI') or (SqlCdsItensFichasPTI_SIGLA.AsString = 'KT'))  then
       begin
             //  xxRefer := SqlCdsItensFichasPRD_REFER_ITENS.AsString;
               GravaTempProduzir2(SqlCdsItensFichasPRD_REFER_ITENS.AsString,
                                  dbInicio.Empresa.EMP_CODIGO,
                                  SqlCdsItensFichasPTI_SIGLA.AsString,
                                  wQtde_Prod,
                                  wQtde_Prod);
               CalculaConsumo; //{Calcula o consumo }
       end
       else
       begin
             {materias-primas}
              //tipo do produto ferramenta não multiplica
              if (SqlCdsItensFichasPTI_SIGLA.AsString = 'FE') or (SqlCdsItensFichasFTC_BASEFORMULA.AsInteger = wQtde_Prod) then
                 wM1 := (SqlCdsItensFichasFTI_UC.AsFloat)
              else
                 wM1 := (wQtde_Prod * SqlCdsItensFichasFTI_UC.AsFloat)/SqlCdsItensFichasFTC_BASEFORMULA.AsInteger;
       end;
       //if wNaoConsome = false then {se a variacao for consumir então grava o item}
       //begin
             //xxRefer := SqlCdsItensFichasPRD_REFER_ITENS.AsString;
             if wConsiderar = 'S' then
             begin
                 if (wQtde_Prod > 0) then
                   if wM1 > (SqlCdsItensFichasFTI_UC.AsFloat * wQtde_Prod) then
                     wM1 := SqlCdsItensFichasFTI_UC.AsFloat * wQtde_Prod;
                 if (wQtde_Prod <= 0) then
                   if wM1 > (SqlCdsItensFichasFTI_UC.AsFloat * SqlCdsConsumoWQTDE.AsCurrency) then
                     wM1 := SqlCdsItensFichasFTI_UC.AsFloat * SqlCdsConsumoWQTDE.AsCurrency;
                 if wM1 = 0 then
                   wM1 := SqlCdsItensFichasFTI_UC.AsFloat;

                     if (DBInicio.Empresa.wPMT_VALOR_KIT) and (SqlCdsPsvGrupo.RecordCount > 0) then
                     begin
                        IncluirItensOP(CdsTempNUM_OP_ORIGEN.AsString,
                                       EdtORDEM.Text,
                                       SqlCdsItensFichasPRD_CODIGO.AsString,
                                       IIF(SqlCdsItensFichasPRD_REFER.AsString=SqlCdsItensFichasPRD_REFER_ITENS.AsString,CdsTempREFER.AsString,SqlCdsItensFichasPRD_REFER.AsString),
                                       SqlCdsItensFichasPRD_REFER_ITENS.AsString,
                                       SqlCdsConsumoEMP_CODIGO.AsString,
                                       SqlCdsItensFichasPTI_SIGLA.AsString,
                                       wStatusEmpenho,
                                       'P',  //P = Produçao / A = Almoxarifado
                                       SqlCdsItensFichasFTI_UC.AsFloat,
                                       wM1,
                                       wM2,
                                       wM3,
                                       wM4,
                                       wM5,
                                       wM6,
                                       wM7,
                                       wM8,
                                       xReservado,
                                       xEmpenho,
                                       SqlCdsItensFichasPRG_REGISTRO.AsInteger, SqlCdsItensFichasOPE_CODIGO.AsInteger);
                     end
                     else
                     begin
                        IncluirItensOP(CdsTempNUM_OP_ORIGEN.AsString,
                                       EdtORDEM.Text,
                                       SqlCdsItensFichasPRD_CODIGO.AsString,
                                       SqlCdsItensFichasPRD_REFER.AsString,
                                       SqlCdsItensFichasPRD_REFER_ITENS.AsString,
                                       SqlCdsConsumoEMP_CODIGO.AsString,
                                       SqlCdsItensFichasPTI_SIGLA.AsString,
                                       wStatusEmpenho,
                                       'P',  //P = Produçao / A = Almoxarifado
                                       SqlCdsItensFichasFTI_UC.AsFloat,
                                       wM1,
                                       wM2,
                                       wM3,
                                       wM4,
                                       wM5,
                                       wM6,
                                       wM7,
                                       wM8,
                                       xReservado,
                                       xEmpenho,
                                       SqlCdsItensFichasPRG_REGISTRO.AsInteger, SqlCdsItensFichasOPE_CODIGO.AsInteger);
                     end;


             end;
             if wConsiderar = 'N' then
             begin
               if (wQtde_Prod > 0) then
               begin
                     if (DBInicio.Empresa.wPMT_VALOR_KIT) and (SqlCdsPsvGrupo.RecordCount > 0) then
                     begin

                       IncluirItensOP(CdsTempNUM_OP_ORIGEN.AsString,
                                     EdtORDEM.Text,
                                     SqlCdsItensFichasPRD_CODIGO.AsString,
                                     IIF(SqlCdsItensFichasPRD_REFER.AsString=SqlCdsItensFichasPRD_REFER_ITENS.AsString,CdsTempREFER.AsString,SqlCdsItensFichasPRD_REFER.AsString),
                                     SqlCdsItensFichasPRD_REFER_ITENS.AsString,
                                     SqlCdsConsumoEMP_CODIGO.AsString,
                                     SqlCdsItensFichasPTI_SIGLA.AsString,
                                     wStatusEmpenho,
                                     'P',  //P = Produçao / A = Almoxarifado
                                     SqlCdsItensFichasFTI_UC.AsFloat,
                                     wM1,
                                     wM2,
                                     wM3,
                                     wM4,
                                     wM5,
                                     wM6,
                                     wM7,
                                     wM8,
                                     xReservado,
                                     xEmpenho,
                                     SqlCdsItensFichasPRG_REGISTRO.AsInteger,SqlCdsItensFichasOPE_CODIGO.AsInteger);
                     end
                     else
                     begin
                       IncluirItensOP(CdsTempNUM_OP_ORIGEN.AsString,
                                     EdtORDEM.Text,
                                     SqlCdsItensFichasPRD_CODIGO.AsString,
                                     SqlCdsItensFichasPRD_REFER.AsString,
                                     SqlCdsItensFichasPRD_REFER_ITENS.AsString,
                                     SqlCdsConsumoEMP_CODIGO.AsString,
                                     SqlCdsItensFichasPTI_SIGLA.AsString,
                                     wStatusEmpenho,
                                     'P',  //P = Produçao / A = Almoxarifado
                                     SqlCdsItensFichasFTI_UC.AsFloat,
                                     wM1,
                                     wM2,
                                     wM3,
                                     wM4,
                                     wM5,
                                     wM6,
                                     wM7,
                                     wM8,
                                     xReservado,
                                     xEmpenho,
                                     SqlCdsItensFichasPRG_REGISTRO.AsInteger,SqlCdsItensFichasOPE_CODIGO.AsInteger);
                     end;
               end;
             end;
       //end;
       //
       SqlCdsItensFichas.Next;
    end;
   //
end;

procedure TFormOrdServCentroGerar.BuscarOPPrevisao;
begin
   {Monta Sql}
   FrmMenu.RwSqlGeralCmd.MontarSql      := False;
   FrmMenu.RwSqlGeralCmd.ResetaCampos   := True;
   FrmMenu.RwSqlGeralCmd.CodigoEmpresa  := StrToInt(dbInicio.Empresa.EMP_CODIGO);
   FrmMenu.RwSqlGeralCmd.MultiEmpresa   := True;
   FrmMenu.RwSqlGeralCmd.TipoSql        := Consultar;
   FrmMenu.RwSqlGeralCmd.Apelido        := 'T2.';
   FrmMenu.RwSqlGeralCmd.Campos         := 'T2.EMP_CODIGO,'+
                                           'P1.PRD_CODIGO,'+
                                           'T2.PRD_REFER,'+
                                           'T2.PED_CODIGO,'+
                                           'T2.CLI_CODIGO,'+
                                           'T2.PS2_LOTE,'+
                                           'T2.PS2_FICHA,'+
                                           'P1.PRD_DESCRI,'+
                                           'P1.PRD_UND,'+
                                           'P2.PTI_SIGLA,'+
                                           'P1.PRD_PCUSTO,'+
                                           'P1.PRD_DCVAR1,'+
                                           'P1.PRD_ESTOQUE,'+
                                           'P1.PRD_ENTRADA,'+
                                           'P1.PRD_SAIDA,'+
                                           'P1.PRD_PENDENTE,'+
                                           'P1.PRD_RESERVA,'+
                                           'T2.PS2_QTDE  AS WQTDE,'+
                                           'T2.PS2_QTDE_CONVERTIDA AS CONV,'+
                                           'T2.PS2_QTDE1 AS WQTDE1,'+
                                           'T2.PS2_ORDEM_COMPRA,'+
                                           'T2.PS2_RESPONSAVEL,'+
                                           'T2.PS2_GERAR_PI,'+
                                           'T2.PS2_DTENTREGA';
   FrmMenu.RwSqlGeralCmd.Tabela         := 'PSV_IT02';
   FrmMenu.RwSqlGeralCmd.UniaoTabelas   := 'LEFT JOIN PRD0000 P1 ON (T2.PRD_REFER = P1.PRD_REFER '+ConcatSe(' and p1.', DBInicio.ExclusivoSql('PRODUTOS')) +' ) '+
                                           'LEFT JOIN PRD_TIPO P2 ON (P1.PTI_CODIGO = P2.PTI_CODIGO) ';
   FrmMenu.RwSqlGeralCmd.Compartilhar   := 'ORDEMPRODUCAO';
   FrmMenu.RwSqlGeralCmd.Condicao       := '';
   FrmMenu.RwSqlGeralCmd.CamposOrdernar := 'T2.PED_CODIGO,T2.PRD_REFER';
   FrmMenu.RwSqlGeralCmd.MontarSql      := True;
   //
   SqlCdsConsumo.Close;
   SqlCdsConsumo.CommandText := FrmMenu.RwSqlGeralCmd.ComandoSql;
   SqlCdsConsumo.Open;
   SqlCdsConsumo.First;
end;

procedure TFormOrdServCentroGerar.GravaConsumoTemp;
var
  X,wDIVID : Integer;
  wresto,wSolicitada :Currency;
  wQTDE_PRODUZIR :  Currency;
  wQtdeOP :Currency;
begin
   {}
   wQtdeOP        := 0;
   wSaldoEstoque  := 0;
   wREsto         := 0;
   wReserva       := 0;
//   for wteste := 1 to 8 do
//   begin
//        wQTDE_PRODUZIR[wteste] := 0;
//   end;
   SqlCdsConsumo.First;
   while not sqlCdsConsumo.Eof do
   begin
       xxRefer     := SqlCdsConsumoPRD_REFER.AsString;
       wSolicitada := 0;
       if (SqlCdsConsumoPS2_FICHA.AsString = 'S') then
       begin
              begin
                    if CurrQtdeOp.AsInteger > 0 then
                    begin
                          wQTDE_PRODUZIR := SqlCdsConsumoWQTDE.AsInteger; // qiqi
                          wDIVID   := (StrToInt(FloatToStr(wQTDE_PRODUZIR)) div CurrQtdeOP.AsInteger);
                          wresto   := (StrToInt(FloatToStr(wQTDE_PRODUZIR)) mod CurrQtdeOP.AsInteger);
                          wQtdeOP  := CurrQtdeOP.AsInteger;
                    end
                    else
                    begin
                          wDIVID := 1;
                          wQTDE_PRODUZIR := SqlCdsConsumoWQTDE.AsCurrency; // qiqi
                          wQtdeOP := wQTDE_PRODUZIR;
                    end;
                    //
                    for X := 1 to (wDIVID) do
                    begin
                        DmProducao.StpOSV0001.ExecProc;
                        EdOrdemOrigen.Text := dmProducao.StpOSV0001.Params[0].AsString;
                        EdOrdemOrigen.Text := StrZero(EdOrdemOrigen.Text,EdtORDEM.MaxLength);
                        EdtORDEM.Text      := EdOrdemOrigen.Text;
                        //
                        if (wSaldoEstoque >= SqlCdsConsumoWQTDE.AsCurrency) then
                           wReserva := SqlCdsConsumoWQTDE.AsCurrency
                        else
                           wReserva := wSaldoEstoque;
                        //
                        {Atualizar na tabela PRD0000 os campos PRD_RESERVA/PRD_EMPENHO}
                        if (RAD_OR.checked ) then
                        begin
                               {Reserva a quantidade do Saldo}
                               if (dbInicio.GetParametroSistema('PMT_ATULIZA_ESTOQUE')  = 'F') then
                               begin
                                      Reserva_Materia(SqlCdsConsumoPRD_REFER.AsString,
                                                      ValorAmericano(FloatToStr(wReserva)));
                               end;
                        end;
                        if (RAD_OP.checked ) then
                        begin
                               Atualiza_Empenho_Estoque('P',
                                                        SqlCdsConsumoPRD_REFER.AsString,
                                                        ValorAmericano(FloatToStr(wReserva)));
                        end;
                        //
                        CdsTemp.Append;
                        CdsTempREFER.AsString             := SqlCdsConsumoPRD_REFER.AsString;
                        CdsTempREFER_ORIGEN.AsString      := SqlCdsConsumoPRD_REFER.AsString;
                        CdsTempNUM_OP.AsString            := EdtORDEM.Text;
                        CdsTempNUM_OP_ORIGEN.AsString     := EdtORDEM.Text;
                        CdsTempQTDE_SOLICITADA.AsCurrency := SqlCdsConsumoWQTDE.AsCurrency;
                        CdsTempQTDE.AsCurrency            := wQtdeOP;
                        CdsTempVAR1.AsCurrency            := wQtdeOP;
                        CdsTempSIGLA.AsString             := SqlCdsConsumoPTI_SIGLA.AsString;
                        CdsTempPED_CODIGO.AsString        := SqlCdsConsumoPED_CODIGO.AsString;
                        CdsTempSTATUS_PREV.AsString       := 'S';
                        CdsTempUC.AsCurrency              := 1;
                        CdsTempNUMLOTE.AsString           := SqlCdsConsumoPS2_LOTE.AsString;
                        CdsTempORDEMCOMPRA.AsString       := SqlCdsConsumoPS2_ORDEM_COMPRA.AsString;
                        CdsTempRESPONSAVEL.AsString       := SqlCdsConsumoPS2_RESPONSAVEL.AsString;
                        CdsTempGERAR_PI.AsBoolean         := SqlCdsConsumoPS2_GERAR_PI.AsString = 'S';
                        //CdsTEmpPS2_DTENTREGA.AsDatetime   := SqlCdsConsumoPS2_DTENTREGA.AsDateTime;
                        CdsTempCODCLI.AsString            := SqlCdsConsumoCLI_CODIGO.AsString;
                        CdsTempCONV.AsCurrency            := SqlCdsConsumoCONV.AsCurrency;
                        CdsTemp.Post;
                    end;
                    //
                    if (wResto > 0) then
                    begin
                          {gera uma ordem com a sobra da divisao}
                          DmProducao.StpOSV0001.ExecProc;
                          EdOrdemOrigen.Text := dmProducao.StpOSV0001.Params[0].AsString;
                          EdOrdemOrigen.Text := StrZero(EdOrdemOrigen.Text,EdtORDEM.MaxLength);
                          EdtORDEM.Text      := EdOrdemOrigen.Text;
                          //
                          if (wSaldoEstoque >= SqlCdsConsumoWQTDE.AsCurrency) then
                             wReserva := SqlCdsConsumoWQTDE.AsCurrency
                          else
                             wReserva := wSaldoEstoque;
                          //
                          {Atualizar na tabela PRD0000 os campos PRD_RESERVA/PRD_EMPENHO}
                          if (RAD_OR.checked ) then
                          begin
                                 {Reserva a quantidade do Saldo}
                                 if (dbInicio.GetParametroSistema('PMT_ATULIZA_ESTOQUE')  = 'F') then
                                 begin
                                        Reserva_Materia(SqlCdsConsumoPRD_REFER.AsString,
                                                        ValorAmericano(FloatToStr(wReserva)));
                                 end;
                          end;
                          if (RAD_OP.checked ) then
                          begin
                                 Atualiza_Empenho_Estoque('P',
                                                          SqlCdsConsumoPRD_REFER.AsString,
                                                          ValorAmericano(FloatToStr(wReserva)));
                          end;
                          //
                          CdsTemp.Append;
                          CdsTempREFER.AsString             := SqlCdsConsumoPRD_REFER.AsString;
                          CdsTempREFER_ORIGEN.AsString      := SqlCdsConsumoPRD_REFER.AsString;
                          CdsTempNUM_OP.AsString            := EdtORDEM.Text;
                          CdsTempNUM_OP_ORIGEN.AsString     := EdtORDEM.Text;
                          CdsTempQTDE_SOLICITADA.AsCurrency := SqlCdsConsumoWQTDE.AsCurrency;
                          CdsTempQTDE.AsCurrency            := wresto;
                          CdsTempVAR1.AsCurrency            := wresto;
                          CdsTempSIGLA.AsString             := SqlCdsConsumoPTI_SIGLA.AsString;
                          CdsTempPED_CODIGO.AsString        := SqlCdsConsumoPED_CODIGO.AsString;
                          CdsTempSTATUS_PREV.AsString       := 'S';
                          CdsTempUC.AsCurrency              := 1;
                          CdsTempNUMLOTE.AsString           := SqlCdsConsumoPS2_LOTE.AsString;
                          CdsTempORDEMCOMPRA.AsString       := SqlCdsConsumoPS2_ORDEM_COMPRA.AsString;
                          CdsTempRESPONSAVEL.AsString       := SqlCdsConsumoPS2_RESPONSAVEL.AsString;
                          //CdsTempPS2_DTENTREGA.AsDatetime   := SqlCdsConsumoPS2_DTENTREGA.AsDateTime;
                          CdsTempGERAR_PI.AsBoolean         := SqlCdsConsumoPS2_GERAR_PI.AsString = 'S';
                          CdsTempCODCLI.AsString            := SqlCdsConsumoCLI_CODIGO.AsString;
                          CdsTempCONV.AsCurrency            := SqlCdsConsumoCONV.AsCurrency;
                          CdsTemp.Post;
                    end;
              end;
              //
              {Atualiza o flag do item do pedido}
              if (SqlCdsConsumoPS2_FICHA.AsString = 'S') Then
                 wTemFicha := 'S'
              else
                 wTemFicha := 'N';
              Atualiza_Flag_Item_Pedido(wTemFicha,
                                        SqlCdsConsumoPED_CODIGO.AsString,
                                        SqlCdsConsumoPRD_REFER.AsString,
                                        SqlCdsConsumoEMP_CODIGO.AsString);
       end;
       SqlCdsConsumo.Next;
   end;
end;
//
function TFormOrdServCentroGerar.ChechaVariacao(const wNum_Refer:string): Boolean;
var
X:integer;

begin
   {Verifica se o produto a ser produzido tem variacao}
   {ex : Produto Pai tem variacao mais o produto intermediario nao tem ,
   no entanto a qtde a produzir deve ser total e nao quebrar por
   variacao = ao produto pai}
   result := False;
   DataCadastros.sqlUpdate.close;
   DataCadastros.SqlUpdate.sql.text :=SqlDEf('PRODUTOS','Select PRD_DCVAR1,PRD_DCVAR2,PRD_DCVAR3,PRD_DCVAR4,PRD_DCVAR5,PRD_DCVAR6,PRD_DCVAR7,PRD_DCVAR8,PRD_VAR1,PRD_VAR2,PRD_VAR3,PRD_VAR4,PRD_VAR5,PRD_VAR6,PRD_VAR7,PRD_VAR8 from PRD0000','Where PRD_REFER = '''+wNum_Refer+'''','','');
   DataCadastros.sqlUpdate.open;
   if not DataCAdastros.sqlUpdate.IsEmpty then
   begin
          if (Trim(DataCadastros.sqlUpdate.FieldByName('PRD_DCVAR2').AsString) = '') and (Trim(DataCadastros.sqlUpdate.FieldByName('PRD_DCVAR3').AsString) = '') and
             (Trim(DataCadastros.sqlUpdate.FieldByName('PRD_DCVAR4').AsString) = '') and (Trim(DataCadastros.sqlUpdate.FieldByName('PRD_DCVAR5').AsString) = '') and
             (Trim(DataCadastros.sqlUpdate.FieldByName('PRD_DCVAR6').AsString) = '') and (Trim(DataCadastros.sqlUpdate.FieldByName('PRD_DCVAR7').AsString) = '') and
             (Trim(DataCadastros.sqlUpdate.FieldByName('PRD_DCVAR8').AsString) = '') then
          begin
                 result := False;
                 for X := 1 to 8 do
                     wSALDO_VARIA[x]:= 0;
          end
          else
          begin
                 result := True;
                 {retorna o saldo do estoque de cada variacao}
                 for X := 1 to 8 do
                     wSALDO_VARIA[x]:= DataCadastros.sqlUpdate.FieldByName('PRD_VAR'+IntToStr(X)).Asinteger;
          end;
   end;
end;

procedure TFormOrdServCentroGerar.BuscaPreco_Ftc;
begin
    {busca o preco do item ref ao pedido , busca dados da ficha técnica}
    SqlCdsaux.close;
    SqlCdsaux.commandtext := sqldef('PEDIDOS','Select F1.PRD_REFER,F1.FTC_CRIACAO,F1.FTC_TUP,P1.PRF_PRECO from PED_IT01 P1 left join FTC0000 F1 on (F1.PRD_REFER = P1.PRD_REFER)','where P1.PED_CODIGO = '''+CdsTempPED_CODIGO.AsString+''' and P1.PRD_REFER = '''+CdsTempREFER.AsString+'''','','P1.');
    SqlCdsaux.Open;
end;

procedure TFormOrdServCentroGerar.GravaTempProduzir2(const pReferencia,pEmpresa,pSigla: String; pQtdeSolicitada,pQtdeProduzir: Double);
var
  wxQtde, wxQtdeOrigem, WX1,WX2,WX3,WX4,WX5,wx6,WX7,WX8, sld_est :Currency;
  wOP_PAI, prd_codigo:String;
begin
    //
    {grava arquivo temporario dos P.AS}
    {antes de dar o append recebe as variacoes da referencia pai}
    xxRefer := pReferencia;
    //verifica se nao e ferramenta   -
    if (SqlCdsItensFichasPTI_SIGLA.AsString = 'FE') then
    begin
         wXQtde  := (pQtdeProduzir          );
         wx1     := (CdsTempVAR1.AsCurrency );
         wx2     := (CdsTempVAR2.AsCurrency );
         wx3     := (CdsTempVAR3.AsCurrency );
         wx4     := (CdsTempVAR4.AsCurrency );
         wx5     := (CdsTempVAR5.AsCurrency );
         wx6     := (CdsTempVAR6.AsCurrency );
         wx7     := (CdsTempVAR7.AsCurrency );
         wx8     := (CdsTempVAR8.AsCurrency );
    end
    else
    begin
         wXQtde  := (pQtdeProduzir * SqlCdsItensFichasFTI_UC.AsCurrency) / SqlCdsItensFichasFTC_BASEFORMULA.AsInteger;

         wXQtdeOrigem  := wXQtde;
         if (wConsiderar='S') then
         begin
              prd_codigo := DBInicio.BuscaUmDadoSqlAsString(SQLDEF('PRODUTOS','select prd_codigo from prd0000 pr','where PRD_REFER = '+QuotedStr(xxRefer),'','pr.') ) ;
              Sld_est:=KardexRetornaSaldo(prd_codigo, wPmt_Amx_Producao_saida,'');
              if sld_est>0 then
              begin
                  wXQtde  := wXQtde  - sld_est;
                  if wXQtde<0 then
                     wXQtde:=0;
              end;
         end;
         wx1     := (CdsTempVAR1.AsCurrency * SqlCdsItensFichasFTI_UC.AsCurrency) / SqlCdsItensFichasFTC_BASEFORMULA.AsInteger;
         wx2     := (CdsTempVAR2.AsCurrency * SqlCdsItensFichasFTI_UC.AsCurrency) / SqlCdsItensFichasFTC_BASEFORMULA.AsInteger;
         wx3     := (CdsTempVAR3.AsCurrency * SqlCdsItensFichasFTI_UC.AsCurrency) / SqlCdsItensFichasFTC_BASEFORMULA.AsInteger;
         wx4     := (CdsTempVAR4.AsCurrency * SqlCdsItensFichasFTI_UC.AsCurrency) / SqlCdsItensFichasFTC_BASEFORMULA.AsInteger;
         wx5     := (CdsTempVAR5.AsCurrency * SqlCdsItensFichasFTI_UC.AsCurrency) / SqlCdsItensFichasFTC_BASEFORMULA.AsInteger;
         wx6     := (CdsTempVAR6.AsCurrency * SqlCdsItensFichasFTI_UC.AsCurrency) / SqlCdsItensFichasFTC_BASEFORMULA.AsInteger;
         wx7     := (CdsTempVAR7.AsCurrency * SqlCdsItensFichasFTI_UC.AsCurrency) / SqlCdsItensFichasFTC_BASEFORMULA.AsInteger;
         wx8     := (CdsTempVAR8.AsCurrency * SqlCdsItensFichasFTI_UC.AsCurrency) / SqlCdsItensFichasFTC_BASEFORMULA.AsInteger;
    end;
    //
    wOP_Pai := CdsTempNUM_OP.AsString;
    CdsTemp.Last;
    {*******************}
    {Rotina para gravar no arquivo temporario em memoria dos produtos que forem ser produzidos}
    CdsTemp.Append;
    CdsTempREFER.AsString             := SqlCdsItensFichasPRD_REFER_ITENS.AsString;
    CdsTempREFER_ORIGEN.AsString      := SqlCdsItensFichasPRD_REFER.AsString;
    CdsTempNUM_OP_ORIGEN.AsString     := wOP_Pai;
    CdsTempNUM_OP.AsString            := wOP_Pai;
    CdsTempQTDE_SOLICITADA.AsCurrency := wXQtdeOrigem;
    CdsTempQTDE.AsCurrency            := wXQtde;
    CdsTempVAR1.AsCurrency            := wX1;
    CdsTempVAR2.AsCurrency            := wX2;
    CdsTempVAR3.AsCurrency            := wX3;
    CdsTempVAR4.AsCurrency            := wX4;
    CdsTempVAR5.AsCurrency            := wX5;
    CdsTempVAR6.AsCurrency            := wX6;
    CdsTempVAR7.AsCurrency            := wX7;
    CdsTempVAR8.AsCurrency            := wX8;
    CdsTempSIGLA.AsString             := SqlCdsItensFichasPTI_SIGLA.AsString;
    CdsTempUC.AsCurrency              := (SqlCdsItensFichasFTI_UC.AsCurrency/SqlCdsItensFichasFTC_BASEFORMULA.AsInteger);
    CdsTempGERAR_PI.AsBoolean         := True;
    CdsTempSTATUS_PREV.AsString       := 'N';
    CdsTemp.Post;
end;

procedure TFormOrdServCentroGerar.Inserir_Itens_Pedido;
Var
  wVezPedido : Integer;
  rValorCondertido:Real;
   sEmpresa:String;

begin
   sEmpresa := '';

   if DBInicio.Exclusivo('PRODUTOS') then
      sEmpresa := '  and P2.EMP_CODIGO = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO);



    {Verifica se o pedido ja foi inserido, caso contrario cancela a
     insercao}
    rValorCondertido := 0;
    wSql1            := 'SELECT T1.*,C1.CLI_RAZAO FROM PSV_GRUPO T1 LEFT JOIN CLI0000 C1 ON (C1.CLI_CODIGO = T1.CLI_CODIGO) ';
    wSeleciona       := 'WHERE T1.EMP_CODIGO = '''+SqlCdsPedidosEMP_CODIGO.AsString+''' AND T1.PED_CODIGO = '''+SqlCdsPedidosPED_CODIGO.AsString+''' AND T1.CLI_CODIGO = '''+SqlCdsPedidosCLI_CODIGO.AsString+'''';
    wOrdem           := ' ORDER BY T1.EMP_CODIGO,T1.PED_CODIGO,T1.CLI_CODIGO';
    DataCadastros.sqlUpdate.close;
    DataCadastros.SqlUpdate.sql.text :=wSql1+wSeleciona+wOrdem;
    DataCadastros.sqlUpdate.Open;
    if (DataCadastros.sqlUpdate.IsEmpty) then
    begin
           try
             {Gravando os Itens do Pedido}
             wSql1      := 'SELECT P2.PRF_REGISTRO,P2.EMP_CODIGO,P2.PED_CODIGO,P2.PRD_REFER,P1.PTI_CODIGO,P3.PTI_SIGLA,P2.PRF_QTDE,P2.PRF_VAR1,P2.PRF_VAR2,P2.PRF_VAR3,P2.PRF_VAR4,P2.PRF_VAR5,P2.PRF_VAR6,';
             wSql2      := 'P2.PRF_VAR7,P2.PRF_VAR8 FROM PED_IT01 P2 LEFT JOIN PRD0000 P1 ON (P2.PRD_REFER = P1.PRD_REFER '+sEmpresa+') LEFT JOIN PRD_TIPO P3 ON (P1.PTI_CODIGO = P3.PTI_CODIGO) ';
             wOrdem     := 'P2.EMP_CODIGO,P2.PED_CODIGO';
             {Verifica se a OP ja foi criada, se sim traz somente
             os item do pedido que possui o flag de PRF_OP = N}
             wSeleciona := 'where O1.PED_CODIGO = '''+EdtPedido.Text+''' ';
             DataCadastros.sqlUpdate.Close;
             DataCadastros.SqlUpdate.sql.text :=SQLDEF('PEDIDOS','Select O1.PED_CODIGO,O1.PRD_REFER from OSV0001 O1',wSeleciona,'O1.PED_CODIGO','O1.');
             DataCadastros.sqlUpdate.Open;
             //
             if (DataCadastros.sqlUpdate.IsEmpty ) then
             begin
                    wSeleciona := 'WHERE P2.EMP_CODIGO = '''+SqlCdsPedidosEMP_CODIGO.AsString+''' AND P2.PED_CODIGO = '''+SqlCdsPedidosPED_CODIGO.AsString+'''  and p2.PRF_PRODUTO_AGREGADO <> ''S'''
             end
             else
             begin
                    {Verifica se existe algum item do pedido
                     sem ordem de producao.}
                    {Gravando os Itens do Pedido}
                    wSql1      := 'SELECT P2.PRF_REGISTRO,P2.EMP_CODIGO,P2.PED_CODIGO,P2.PRD_REFER,P1.PTI_CODIGO,P3.PTI_SIGLA,P2.PRF_QTDE,P2.PRF_VAR1,P2.PRF_VAR2,P2.PRF_VAR3,P2.PRF_VAR4,P2.PRF_VAR5,P2.PRF_VAR6,';
                    wSql2      := 'P2.PRF_VAR7,P2.PRF_VAR8,P2.PRF_OP FROM PED_IT01 P2 LEFT JOIN PRD0000 P1 ON (P2.PRD_REFER = P1.PRD_REFER '+sEmpresa+') LEFT JOIN PRD_TIPO P3 ON (P1.PTI_CODIGO = P3.PTI_CODIGO) ';
                    wOrdem     := 'P2.EMP_CODIGO,P2.PED_CODIGO';
                    //
                    wSeleciona := 'WHERE P2.EMP_CODIGO = '''+SqlCdsPedidosEMP_CODIGO.AsString+''' AND P2.PED_CODIGO = '''+SqlCdsPedidosPED_CODIGO.AsString+''' AND P2.PRF_OP = ''N''  and p2.PRF_PRODUTO_AGREGADO <> ''S''';
                    DataCadastros.sqlUpdate.Close;
                    DataCadastros.SqlUpdate.sql.text :=SQLDEF('PEDIDOS',wSql1+wSql2,wSeleciona,'P2.PED_CODIGO','P2.');
                    DataCadastros.sqlUpdate.Open;
                    if (DataCadastros.sqlUpdate.FieldByName('PRF_OP').IsNull ) then   // pedido nunca foi para produção
                    begin
                           {Gravando os Itens do Pedido}
                           wSql1      := 'SELECT P2.PRF_REGISTRO,P2.EMP_CODIGO,P2.PED_CODIGO,P2.PRD_REFER,P1.PTI_CODIGO,P3.PTI_SIGLA,P2.PRF_QTDE,P2.PRF_VAR1,P2.PRF_VAR2,P2.PRF_VAR3,P2.PRF_VAR4,P2.PRF_VAR5,P2.PRF_VAR6,';
                           wSql2      := 'P2.PRF_VAR7,P2.PRF_VAR8 FROM PED_IT01 P2 LEFT JOIN PRD0000 P1 ON (P2.PRD_REFER = P1.PRD_REFER '+sEmpresa+') LEFT JOIN PRD_TIPO P3 ON (P1.PTI_CODIGO = P3.PTI_CODIGO) ';
                           wOrdem     := 'P2.EMP_CODIGO,P2.PED_CODIGO';
                           wSeleciona := 'WHERE P2.EMP_CODIGO = '''+SqlCdsPedidosEMP_CODIGO.AsString+''' AND P2.PED_CODIGO = '''+SqlCdsPedidosPED_CODIGO.AsString+'''  and p2.PRF_PRODUTO_AGREGADO <> ''S'' '
                    end
                    else
                    begin
                           if (not DataCadastros.sqlUpdate.IsEmpty) and (DataCadastros.sqlUpdate.FieldByName('PRF_OP').AsString = 'N') then
                           begin
                                  uteis.aviso('Pedido parcialmente produzido ou não confirmado anteriormente'+CHR(39)+'s !');

                                  wSeleciona := 'WHERE P2.EMP_CODIGO = '''+SqlCdsPedidosEMP_CODIGO.AsString+''' AND P2.PED_CODIGO = '''+SqlCdsPedidosPED_CODIGO.AsString+''' AND P2.PRF_OP = ''N''  and p2.PRF_PRODUTO_AGREGADO <> ''S''';
                           end
                           else
                           begin
                                  if (DataCadastros.sqlUpdate.FieldByName('PRF_OP').AsString = 'S') then
                                  begin
                                         uteis.aviso('Pedido já foi totalmente produzido OP'+CHR(39)+'s !');
                                         Pan_razao.Caption := '';
                                         EdtPedido.Text    := '';
                                         EdtPedido.SetFocus;
                                         SqlCdsPedidos.Close;
                                         DataCadastros.sqlUpdate.Close;
                                         Screen.Cursor := crDefault;
                                         exit;
                                  end;
                           end;
                    end;
             end;
             //
             SqlCdsItensPedido.Close;
             SqlCdsItensPedido.CommandText := SQLDEF('ORDEMPRODUCAO',wSql1+wSql2,wSeleciona,wOrdem,'P2.');
             SqlCdsItensPedido.Open;
             if not (SqlCdsItensPedido.IsEmpty ) then
             begin
                    wVezPedido := 1;
                    while not SqlCdsItensPedido.Eof do
                    begin
                      if (DBInicio.Empresa.wPMT_VALOR_KIT) and (SqlCdsPsvGrupo.RecordCount > 0) then
                      begin
                         if (SqlCdsItensPedidoPTI_SIGLA.AsString = 'KT') then
                         begin
                                {Verifica se o Item do Pedido se tem Ficha Tecnica}
                                wSql1      := 'SELECT F1.PRD_REFER FROM FTC0000 F1 ';
                                wSeleciona := 'WHERE F1.PRD_REFER = '''+SqlCdsItensPedidoPRD_REFER.AsString+'''';
                                wOrdem     := 'F1.PRD_REFER';
                                DataCadastros.sqlUpdate.Close;
                                DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,wSeleciona,wOrdem,'F1.');
                                DataCadastros.sqlUpdate.Open;
                                if not (DataCadastros.sqlUpdate.IsEmpty ) then
                                begin
                                       wTemFicha := 'S';
                                end
                                else
                                begin
                                       wTemFicha := 'N';
                                end;
                                {Grava somente uma vez os dados do pedido}
                                if (wVezPedido = 1) then
                                begin
                                       wSql1 := 'INSERT INTO PSV_GRUPO ('+
                                                   'EMP_CODIGO,'+
                                                   'PED_CODIGO,'+
                                                   'CLI_CODIGO) ';
                                       wSql2 := 'VALUES ('''+SqlCdsPedidosEMP_CODIGO.AsString+''','''+
                                                             SqlCdsPedidosPED_CODIGO.AsString+''','''+
                                                             SqlCdsPedidosCLI_CODIGO.AsString+''')';
                                       {Gravando Pedido}
                                       DataCadastros.sqlUpdate.close;
                                       DataCadastros.SqlUpdate.sql.text :=wSql1+wSql2;
                                       DataCadastros.sqlUpdate.Execsql;
                                       Inc(wVezPedido);
                                end;
                                rValorCondertido := RetornaValorConversao(SqlCdsItensPedidoPRD_REFER.AsString,
                                                                          SqlCdsItensPedidoPRF_QTDE.AsCurrency);
                                wSql1 := 'INSERT INTO PSV_IT02 ('+
                                             'EMP_CODIGO,'+
                                             'PED_CODIGO,'+
                                             'PRD_REFER,'+
                                             'PS2_QTDE,'+
                                             'PS2_QTDE_CONVERTIDA,'+
                                             'PS2_QTDE1,'+
                                             'PS2_QTDE2,'+
                                             'PS2_QTDE3,'+
                                             'PS2_QTDE4,'+
                                             'PS2_QTDE5,'+
                                             'PS2_QTDE6,'+
                                             'PS2_QTDE7,'+
                                             'PS2_QTDE8,'+
                                             'PS2_FICHA,'+
                                             'PS2_ORDEM_COMPRA,'+
                                             'PS2_DTENTREGA,'+
                                             'PS2_GERAR_PI,'+
                                             'CLI_CODIGO)';
                                wSql2 := 'VALUES ('''+SqlCdsItensPedidoEMP_CODIGO.AsString+''','''+
                                                      SqlCdsItensPedidoPED_CODIGO.AsString+''','''+
                                                      SqlCdsItensPedidoPRD_REFER.AsString+''','''+
                                                      ValorAmericano(SqlCdsItensPedidoPRF_QTDE.AsString)+''','''+
                                                      ValorAmericano(FloatToStr(rValorCondertido))+''','''+
                                                      ValorAmericano(SqlCdsItensPedidoPRF_VAR1.AsString)+''','''+
                                                      ValorAmericano(SqlCdsItensPedidoPRF_VAR2.AsString)+''','''+
                                                      ValorAmericano(SqlCdsItensPedidoPRF_VAR3.AsString)+''','''+
                                                      ValorAmericano(SqlCdsItensPedidoPRF_VAR4.AsString)+''','''+
                                                      ValorAmericano(SqlCdsItensPedidoPRF_VAR5.AsString)+''','''+
                                                      ValorAmericano(SqlCdsItensPedidoPRF_VAR6.AsString)+''','''+
                                                      ValorAmericano(SqlCdsItensPedidoPRF_VAR7.AsString)+''','''+
                                                      ValorAmericano(SqlCdsItensPedidoPRF_VAR8.AsString)+''','''+
                                                      wTemFicha+''','''+
                                                      SqlCdsPedidosPED_NUMERO_PED_CLIENTE.AsString+''','''+
                                                      DataAmericana(DateToStr(SqlCdsPedidosPED_DTSAIDA.AsDateTime))+''','+
                                                      QuotedStr(IIF(chkGerarPIOrdemProducao.Checked,'S','N'))+','+
                                                      QuotedStr(SqlCdsPedidosCLI_CODIGO.AsString) +')';
                                DataCadastros.sqlUpdate.close;
                                DataCadastros.SqlUpdate.sql.text :=wSql1+wSql2;
                                DataCadastros.sqlUpdate.Execsql;
                         end
                      end
                      else
                      begin
                         if (SqlCdsItensPedidoPTI_SIGLA.AsString = 'PA') OR (SqlCdsItensPedidoPTI_SIGLA.AsString = 'PI') OR (SqlCdsItensPedidoPTI_SIGLA.AsString = 'KT') then
                         begin
                                {Verifica se o Item do Pedido se tem Ficha Tecnica}
                                wSql1      := 'SELECT F1.PRD_REFER FROM FTC0000 F1 ';
                                wSeleciona := 'WHERE F1.PRD_REFER = '''+SqlCdsItensPedidoPRD_REFER.AsString+'''';
                                wOrdem     := 'F1.PRD_REFER';
                                DataCadastros.sqlUpdate.Close;
                                DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,wSeleciona,wOrdem,'F1.');
                                DataCadastros.sqlUpdate.Open;
                                if not (DataCadastros.sqlUpdate.IsEmpty ) then
                                begin
                                       wTemFicha := 'S';
                                end
                                else
                                begin
                                       wTemFicha := 'N';
                                end;
                                {Grava somente uma vez os dados do pedido}
                                if (wVezPedido = 1) then
                                begin
                                       wSql1 := 'INSERT INTO PSV_GRUPO ('+
                                                   'EMP_CODIGO,'+
                                                   'PED_CODIGO,'+
                                                   'CLI_CODIGO) ';
                                       wSql2 := 'VALUES ('''+SqlCdsPedidosEMP_CODIGO.AsString+''','''+
                                                             SqlCdsPedidosPED_CODIGO.AsString+''','''+
                                                             SqlCdsPedidosCLI_CODIGO.AsString+''')';
                                       {Gravando Pedido}
                                       DataCadastros.sqlUpdate.close;
                                       DataCadastros.SqlUpdate.sql.text :=wSql1+wSql2;
                                       DataCadastros.sqlUpdate.Execsql;
                                       Inc(wVezPedido);
                                end;
                                rValorCondertido := RetornaValorConversao(SqlCdsItensPedidoPRD_REFER.AsString,
                                                                          SqlCdsItensPedidoPRF_QTDE.AsCurrency);
                                wSql1 := 'INSERT INTO PSV_IT02 ('+
                                             'EMP_CODIGO,'+
                                             'PED_CODIGO,'+
                                             'PRD_REFER,'+
                                             'PS2_QTDE,'+
                                             'PS2_QTDE_CONVERTIDA,'+
                                             'PS2_QTDE1,'+
                                             'PS2_QTDE2,'+
                                             'PS2_QTDE3,'+
                                             'PS2_QTDE4,'+
                                             'PS2_QTDE5,'+
                                             'PS2_QTDE6,'+
                                             'PS2_QTDE7,'+
                                             'PS2_QTDE8,'+
                                             'PS2_FICHA,'+
                                             'PS2_ORDEM_COMPRA,'+
                                             'PS2_DTENTREGA,'+
                                             'PS2_GERAR_PI,'+
                                             'CLI_CODIGO)';
                                wSql2 := 'VALUES ('''+SqlCdsItensPedidoEMP_CODIGO.AsString+''','''+
                                                      SqlCdsItensPedidoPED_CODIGO.AsString+''','''+
                                                      SqlCdsItensPedidoPRD_REFER.AsString+''','''+
                                                      ValorAmericano(SqlCdsItensPedidoPRF_QTDE.AsString)+''','''+
                                                      ValorAmericano(FloatToStr(rValorCondertido))+''','''+
                                                      ValorAmericano(SqlCdsItensPedidoPRF_VAR1.AsString)+''','''+
                                                      ValorAmericano(SqlCdsItensPedidoPRF_VAR2.AsString)+''','''+
                                                      ValorAmericano(SqlCdsItensPedidoPRF_VAR3.AsString)+''','''+
                                                      ValorAmericano(SqlCdsItensPedidoPRF_VAR4.AsString)+''','''+
                                                      ValorAmericano(SqlCdsItensPedidoPRF_VAR5.AsString)+''','''+
                                                      ValorAmericano(SqlCdsItensPedidoPRF_VAR6.AsString)+''','''+
                                                      ValorAmericano(SqlCdsItensPedidoPRF_VAR7.AsString)+''','''+
                                                      ValorAmericano(SqlCdsItensPedidoPRF_VAR8.AsString)+''','''+
                                                      wTemFicha+''','''+
                                                      SqlCdsPedidosPED_NUMERO_PED_CLIENTE.AsString+''','''+
                                                      DataAmericana(DateToStr(SqlCdsPedidosPED_DTSAIDA.AsDateTime))+''','+
                                                      QuotedStr(IIF(chkGerarPIOrdemProducao.Checked,'S','N'))+','+
                                                      QuotedStr(SqlCdsPedidosCLI_CODIGO.AsString)+')';
                                DataCadastros.sqlUpdate.close;
                                DataCadastros.SqlUpdate.sql.text :=wSql1+wSql2;
                                DataCadastros.sqlUpdate.Execsql;
                         end
                      end;
                         SqlCdsItensPedido.Next;
                    end;
             end;
             {Atualizando os Grids}
             SqlCdsPsvGrupo.Refresh;
             SqlCdsPs2.Refresh;
             EdtPedido.Text    := '';
             Pan_Razao.Caption := '';
             EdtPedido.SetFocus;
             EdtPedido.SelectAll;
           except on E:EDataBaseError do
              uteis.erro  (pchar('Erro ao inserir o pedido ! '+e.message));
           end;
    end
    else
    begin
           uteis.aviso('Pedido já foi incluído ! ');
           EdtPedido.Text    := '';
           Pan_Razao.Caption := '';
           EdtPedido.SetFocus;
           EdtPedido.SelectAll;
    end;
end;

procedure TFormOrdServCentroGerar.MascaraCNPJ_INFCLIE;
begin
   LBL_RAZAO.Caption := '';
   If Length(DataMovimento2.CdsConsultaClieCli_CGC.AsString) =14  then
   begin
          DataMovimento2.CdsConsultaClieCLI_CGC.EditMask := '99.999.999/9999-99;0;_';
          Lbl_Pessoa.Caption := 'CNPJ:';
   end
   else
   // pessoa fisica
   begin
          DataMovimento2.CdsConsultaClieCLI_CGC.EditMask := '999.999.999-99;0;_';
          Lbl_Pessoa.Caption := 'CPF:';
   end;
   LBL_RAZAO.Caption := copy(DataMovimento2.CdsConsultaClieCLI_RAZAO.AsString,1,35);
end;

procedure TFormOrdServCentroGerar.cCodClieEnter(Sender: tObject);
begin
   if (not PaninfCli.Visible) then
      PaninfCli.Visible := True;
end;

procedure TFormOrdServCentroGerar.CbRwClieExit(Sender: tObject);
begin
   if (PaninfCli.Visible) then
      PaninfCli.Visible := False;
end;

procedure TFormOrdServCentroGerar.CbRwClieChange(Sender: tObject);
begin
   cCodClie.Text := CbRwClie.IdRetorno;
   Busca_Dados_Cliente(StrZero(cCodClie.Text,5));
   MascaraCNPJ_INFCLIE;
end;

procedure TFormOrdServCentroGerar.cCodClieExit(Sender: tObject);
begin
    screen.Cursor  := crHourGlass;
    if (ActiveControl <> Nil) and(ActiveControl.Name <> 'Bit_Sair') then
       begin
          if (Trim(cCodClie.Text)<> '') then
             begin
                CbRwClie.idRetorno := StrZero(cCodClie.Text,5);
                if (CbRwClie.idRetorno='') then
                   begin
                      //beep;
                      uteis.aviso('Cliente não localizado com o código informando !');
                      cCodClie.SetFocus;
                      cCodClie.SelectAll;
                      PanInfCli.Visible  := false;
                      PaninfCli.SendToBack;
                   end
                else
                   begin
                      Busca_Dados_Cliente(StrZero(cCodClie.Text,5));
                      MascaraCNPJ_INFCLIE;
                   end;
             end;
       end;
    if (PaninfCli.Visible) then
       PaninfCli.Visible := False;
    screen.cursor:=crDefault;
end;

procedure TFormOrdServCentroGerar.Edt_LoteExit(Sender: tObject);
begin
   if (ActiveControl <> Nil)
   and(ActiveControl.Name <> 'EdtReferencia')
   and(ActiveControl.Name <> 'Bit_Sair')
   and(ActiveControl.Name <> 'CurrQtde')
   and(ActiveControl.Name <> 'CbRwClie')
   and(ActiveControl.Name <> 'DBGridItens')
   and(ActiveControl.Name <> 'Bit_Cancelar') 
   and(ActiveControl.Name <> 'SpeedProduto') then
      begin
         if (FrmMenu.sGerarNumLote = 'M')
         and (Trim(Edt_Lote.Text) = '') then
            begin
               uteis.aviso('Informe o Número do Lote !');
               Edt_Lote.SetFocus;
               Edt_Lote.SelectAll;
            end;
      end;
end;

procedure TFormOrdServCentroGerar.CbRwClieEnter(Sender: tObject);
begin
   if (not PaninfCli.Visible) then
      begin
         PaninfCli.Visible := True;
         if (cCodClie.Text = '') then
            begin
               LBL_RAZAO.Caption := '';
               DataMovimento2.CdsConsultaClie.Close;
            end;
      end;
end;

procedure TFormOrdServCentroGerar.BitConfirmaItemClick(Sender: tObject);
begin
   if (Trim(EdtReferencia.Text) = '') then
   begin
         uteis.aviso('Informe a Referência !');
         EdtReferencia.SetFocus;
         EdtReferencia.SelectAll;
   end
   else
   if (CurrQtde.AsInteger = 0) then
   begin
         uteis.aviso('Informe a Quantidade !');
         CurrQtde.SetFocus;
         CurrQtde.SelectAll;
   end
   else
   if (FrmMenu.sGerarNumLote = 'M') and (Trim(Edt_Lote.Text) = '') then
   begin
         uteis.aviso('Informe o Número do Lote !');
         Edt_Lote.SetFocus;
         Edt_Lote.SelectAll;
   end
   else
   begin
         Incluir_Itens;
         wSelecionouItem        := False;
         EdtReferencia.ReadOnly := False;
         EdtReferencia.TabStop  := True;
         EdtReferencia.Color    := clWindow;
         HabilitaObjetos;
         //
         Habilita_Alteracao;
         //
         Limpar_Objetos;
         //
         EdtReferencia.SetFocus;
         EdtReferencia.SelectAll;
   end;
end;

procedure TFormOrdServCentroGerar.Habilita_Alteracao;
begin
   CurrQtde.color    := clWindow;
   CurrQtde.ReadOnly := False;
   CurrQtde.TabStop  := True;
   CurrQtde.Value    := SqlCdsPs2PS2_QTDE.AsCurrency;
   //
   cCodClie.Color    := clWindow;
   cCodClie.ReadOnly := False;
   cCodClie.TabStop  := True;
   //
   CurrQtde.Color    := clWindow;
   CurrQtde.ReadOnly := False;
   CurrQtde.TabStop  := True;
   //
   edtResponsavel.Color    := clWindow;
   edtResponsavel.ReadOnly := False;
   edtResponsavel.TabStop  := True;
   //
   edtOrdemdeCompra.Color    := clWindow;
   edtOrdemdeCompra.ReadOnly := False;
   edtOrdemdeCompra.TabStop  := True;
   //
  // chkGerarPIOrdemProducao.Enabled := True;
   //
   CurrQtde.SetFocus;
   CurrQtde.SelectAll;
   //
   CbRwClie.Color    := clWindow;
   CbRwClie.TabStop  := True;
   CbRwClie.Enabled  := True;
   //
   if (wSelecionouItem) then
      SpeedProduto.Enabled := False
   else
      SpeedProduto.Enabled := True;
end;

procedure TFormOrdServCentroGerar.Desabilita_Alteracao;
begin
   CurrQtde.color    := $00D7D7D7;
   CurrQtde.ReadOnly := True;
   CurrQtde.TabStop  := False;
   CurrQtde.Value    := SqlCdsPs2PS2_QTDE.AsCurrency;
   //
   cCodClie.Color    := $00D7D7D7;
   cCodClie.ReadOnly := True;
   cCodClie.TabStop  := False;
   //
   CurrQtde.Color    := $00D7D7D7;
   CurrQtde.ReadOnly := True;
   CurrQtde.TabStop  := False;
   //

   edtResponsavel.Color    := $00D7D7D7;
   edtResponsavel.ReadOnly := True;
   edtResponsavel.TabStop  := False;
   //
   edtOrdemdeCompra.Color    := $00D7D7D7;
   edtOrdemdeCompra.ReadOnly := True;
   edtOrdemdeCompra.TabStop  := False;
   //
 //  chkGerarPIOrdemProducao.Enabled := False;


   //
   Edt_Lote.SetFocus;
   Edt_Lote.SelectAll;
   //
   CbRwClie.Color    := $00D7D7D7;
   CbRwClie.TabStop  := False;
   CbRwClie.Enabled  := False;
   //
   SpeedProduto.Enabled := False;

end;

procedure TFormOrdServCentroGerar.Limpar_Objetos;
begin
   EdtReferencia.Text := '';
//   cCodClie.Text := '';
   CurrQtde.AsInteger := 0;
   Edt_Lote.Text      := '';
   cCodClie.AsInteger := 0;
   CbRwClie.idRetorno   := '';

   edtResponsavel.Clear;
   edtOrdemdeCompra.Clear;
   DtEntrega.Clear;
   //
  // chkGerarPIOrdemProducao.Checked := True;


   if (PaninfCli.Visible) then
      PaninfCli.Visible := False;
end;


procedure TFormOrdServCentroGerar.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
   SQLCdsAlmox.Close; // jko
   inherited;
   Action := CaFree;
end;

function TFormOrdServCentroGerar.Verifica_Num_Lote: Boolean;
begin
   Result := True;
   SqlCdsPs2.DisableControls;
   SqlCdsPs2.First;
   while (not SqlCdsPs2.Eof) do
    begin
       if (Trim(SqlCdsPs2PS2_LOTE.AsString) = '') then
          Result := False;
       SqlCdsPs2.Next;
    end;
   SqlCdsPs2.First;
   SqlCdsPs2.EnableControls;
end;

procedure TFormOrdServCentroGerar.EdtReferenciaChange(Sender: tObject);
begin
   if (Trim(EdtReferencia.Text)<> '') then
      begin
         BitConfirmaItem.Enabled := True;
         Bit_Cancelar.Visible    := True;
         Bit_Cancelar.Enabled    := True;
         Bit_ExcluirItem.Enabled := False;
         DesabilitaObjetos;
         Habilita_Digitacao_Item;
      end
   else
      begin
         BitConfirmaItem.Enabled := False;
         Bit_ExcluirItem.Enabled := True;
         Bit_Cancelar.Visible    := False;
         Bit_Cancelar.Enabled    := False;
         HabilitaObjetos;
         Desabilita_Digitacao_Item;
      end;
end;

procedure TFormOrdServCentroGerar.Verifica_Se_Altera_Produto;
begin
   if (FrmMenu.sGerarNumLote = 'A') and (SqlCdsPs2PED_CODIGO.AsString <> '') then
      begin
         uteis.aviso('Produto adicionado não pode ser modificado porque é referente a um Pedido !');
         DBGridItens.SetFocus;
      end
   else
      SelecionouItem;

end;

procedure TFormOrdServCentroGerar.Bit_CancelarClick(Sender: tObject);
begin
   BitConfirmaItem.Enabled := False;
   Bit_ExcluirItem.Enabled := True;
   Bit_Cancelar.Visible    := False;
   Bit_Cancelar.Enabled    := False;
   HabilitaObjetos;
   Limpar_Objetos;
   EdtReferencia.SetFocus;
end;

procedure TFormOrdServCentroGerar.Desabilita_Digitacao_Item;
begin
   CurrQtde.Color    := $00D7D7D7;
   CurrQtde.ReadOnly := True;
   CurrQtde.TabStop  := False;
   //
   Edt_Lote.Color    := $00D7D7D7;
   Edt_Lote.ReadOnly := True;
   Edt_Lote.TabStop  := False;
   //
   cCodClie.Color    := $00D7D7D7;
   cCodClie.ReadOnly := True;
   cCodClie.TabStop  := False;
   //
   CbRwClie.color    := $00D7D7D7;
   CbRwClie.Enabled  := False;
   CbRwClie.TabStop  := True;

   edtResponsavel.Color    := $00D7D7D7;
   edtResponsavel.ReadOnly := True;
   edtResponsavel.TabStop  := False;
   //
   edtOrdemdeCompra.Color    := $00D7D7D7;
   edtOrdemdeCompra.ReadOnly := True;
   edtOrdemdeCompra.TabStop  := False;
   //
   DtEntrega.Color             := $00D7D7D7;
   DtEntrega.ReadOnly          := True;
   DtEntrega.TabStop           := False;
   //
  // chkGerarPIOrdemProducao.Enabled := False;
end;

procedure TFormOrdServCentroGerar.Habilita_Digitacao_Item;
begin
   CurrQtde.Color    := clWindow;
   CurrQtde.ReadOnly := False;
   CurrQtde.TabStop  := True;
   //
   if (FrmMenu.sGerarNumLote = 'M') then
      begin
         Edt_Lote.Color    := clWindow;
         Edt_Lote.ReadOnly := False;
         Edt_Lote.TabStop  := True;
      end
   else
      begin
         Edt_Lote.Color    := $00D7D7D7;
         Edt_Lote.ReadOnly := True;
         Edt_Lote.TabStop  := False;
      end;
   //
   cCodClie.Color    := clWindow;
   cCodClie.ReadOnly := False;
   cCodClie.TabStop  := True;
   //
   CbRwClie.color    := clWindow;
   CbRwClie.Enabled  := True;
   CbRwClie.TabStop  := True;

   edtResponsavel.Color    := clWindow;
   edtResponsavel.ReadOnly := false;
   edtResponsavel.TabStop  := true;
   //
   edtOrdemdeCompra.Color    := clWindow;
   edtOrdemdeCompra.ReadOnly := False;
   edtOrdemdeCompra.TabStop  := true;
   //
   DtEntrega.Color             := clWindow;
   DtEntrega.ReadOnly          := False;
   DtEntrega.TabStop           := true;

   DtEntrega.Date   := now;
   //
   //chkGerarPIOrdemProducao.Enabled := True;
end;


function TFormOrdServCentroGerar.RetornaValorConversao(
  const sProduto: String;rValor:Real): Real;
   var
      rTmpFator:Real;
begin
   {conversão}
   rTmpFator := 0;
   wSql1      := 'SELECT '+
                 'T1.PRD_REFER, '+
                 'COALESCE(T1.PRD_UTILCONV,''N'') AS PRD_UTILCONV, '+
                 'COALESCE(T1.PRD_FATOR_PROD,0) AS PRD_FATORC, '+
                 'COALESCE(T1.PRD_DIV_MULT_PROD,''N'') AS PRD_DIVMULT';
   wSql2      := ' FROM PRD0000  T1 ';

   wSeleciona := 'WHERE T1.PRD_REFER = '''+Trim(sProduto)+'''';
   wOrdem     := 'T1.PRD_REFER ';
   //
   Cds_Prod_Conv.Close;
   Cds_Prod_Conv.CommandText := SQLDEF('PRODUTOS',wSql1+wSql2,wSeleciona,wOrdem,'T1.');
   Cds_Prod_Conv.Open;
   if ((Cds_Prod_ConvPRD_UTILCONV.AsString = 'S')
   and(Cds_Prod_ConvPRD_FATORC.AsCurrency > 0)) then
      begin
         rTmpFator := Cds_Prod_ConvPRD_FATORC.AsCurrency;
         if (Cds_Prod_ConvPRD_DIVMULT.AsString = 'M') then
            begin
               rValor := rValor*rTmpFator;
            end
         else
            begin
               rValor := rValor/rTmpFator;
            end;
         rTmpFator := rValor;
      end
   else
      rTmpFator := rValor;
   Result := rTmpFator;
end;


{ Tratamento das informações do almoxarifado }
procedure TFormOrdServCentroGerar.EdAlmoxClick(Sender: tObject);
begin
   EdAlmox.SelectAll;
end;

procedure TFormOrdServCentroGerar.EdAlmoxEnter(Sender: tObject);
begin
   EdAlmox.SelectAll;
   EdAlmox.Color := $0080FFFF;
end;

procedure TFormOrdServCentroGerar.EdAlmoxExit(Sender: tObject);
begin
   EdAlmox.Color := clWindow;
   EdAlmox.Text  := StrZero(EdAlmox.Text,EdAlmox.MaxLength);
   if not (EdAlmox.Text='000') then
      begin
         if SQLCdsAlmox.Locate('AMX_CODIGO',EdAlmox.Text,[])  then
            begin
               CbAlmox.Text  := SQLCdsAlmoxAMX_DESCRI.AsString;
               CbAlmox.Color := clWindow;
               screen.cursor := crDefault;
            end;
      end
   else
      begin
         CbAlmox.Text  := '';
         CbAlmox.Color := clWindow;
      end;
end;

procedure TFormOrdServCentroGerar.CbAlmoxClick(Sender: tObject);
begin

  if SQLCdsAlmox.Locate('AMX_DESCRI',CbAlmox.Text,[])  then
       begin
          CbAlmox.Color := clWindow;
          EdAlmox.Text  := SQLCdsAlmoxAMX_CODIGO.AsString;
       end
    else
       begin
          CbAlmox.Color := clWindow;
          EdAlmox.Text  := '000';
       end;

end;

procedure TFormOrdServCentroGerar.CbAlmoxEnter(Sender: tObject);
begin
   CbAlmox.SelectAll;
   CbAlmox.Color := $0080FFFF;
end;

procedure TFormOrdServCentroGerar.CbAlmoxExit(Sender: tObject);
begin
   if SQLCdsAlmox.Locate('AMX_DESCRI',CbAlmox.Text,[]) then
      begin
          EdAlmox.Text  := SQLCdsAlmoxAMX_CODIGO.AsString;
          CbAlmox.Color := clWindow;
      end
   else
      begin
          CbAlmox.Color     := clWindow;
          CbAlmox.Text      := '';
          CbAlmox.ItemIndex := 0;

          //if not (EdAlmox.Text='000') then
          //   begin



         //       uteis.aviso('x1 Almoxarifado não encontrado !');
                // CbAlmox.SetFocus;
         //    end;
          CbAlmox.SelectAll;
         // CbAlmox.Color := clWindow;
      end;
end;

procedure TFormOrdServCentroGerar.PreencheCombo;
begin
   screen.cursor := crHourGlass;
   try
      SQLCdsAlmox.Close;
      SQLCdsAlmox.CommandText := SQLDEF('TABELAS','SELECT * FROM ALMOX0000','','AMX_DESCRI','');
      SQLCdsAlmox.Open;
      SQLCdsAlmox.First;
      CbAlmox.Items.Clear;
      CbAlmox.Items.Add('');
      while not SQLCdsAlmox.Eof do
         begin
            CbAlmox.Items.Add(SQLCdsAlmoxAMX_DESCRI.AsString);
            SQLCdsAlmox.Next;
         end;
      EdAlmox.Text      := '000';
      CbAlmox.ItemIndex := 0;
   except on E:EDataBaseError do
      uteis.erro  (pchar('Erro ao preencher a combo Almox. !'+e.message));
   end;
end;

procedure TFormOrdServCentroGerar.ProxNum_OPExit(Sender: TObject);
begin
  inherited;
  // altarer generator atual
  DataCadastros.sqlUpdate.close;
  DataCadastros.sqlUpdate.SQL.Text :='Set generator GEN_NUM_OP to '+floattoStr(ProxNum_OP.Value)+'';
  DataCadastros.sqlUpdate.Execsql;

end;

end.



