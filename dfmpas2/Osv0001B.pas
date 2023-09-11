unit Osv0001B;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Mask,  rxToolEdit, Buttons, ComCtrls,
  ExtCtrls, DBCtrls,  rxCurrEdit, Provider, SqlExpr,SqlClientDataSet, DB, DBClient, DBLocal,
  DBLocalS, ImgList, Menus;

type
  TFormOrdServCentroB = class(TForm)
    Grp_Pedidos: TGroupBox;
    Grp_Itens: TGroupBox;
    DBGridGrupo: TDBGrid;
    DBGridItens: TDBGrid;
    Panel3: TPanel;
    Label1: TLabel;
    EdtPedido: TEdit;
    Panel5: TPanel;
    Bit_ExcluirPedido: TBitBtn;
    Panel4: TPanel;
    Label2: TLabel;
    EdtReferencia: TEdit;
    Panel6: TPanel;
    Bit_ExcluirItem: TBitBtn;
    SpeedProduto: TSpeedButton;
    SpeedPedido: TSpeedButton;
    Grp_Tipo: TGroupBox;
    Grp_OP: TGroupBox;
    Panel1: TPanel;
    Rad_simula: TRadioButton;
    Rad_Real: TRadioButton;
    Panel2: TPanel;
    Rad_Pedido: TRadioButton;
    Rad_Item: TRadioButton;
    Pan_Gerar: TPanel;
    Bit_GeraSimulacao: TBitBtn;
    Bit_GeraOP: TBitBtn;
    Label3: TLabel;
    CurrQtde: TRxCalcEdit;
    Pan_Menu: TPanel;
    Bit_Sair: TBitBtn;
    PanVariacao: TPanel;
    Panel9: TPanel;
    BitConfirmar: TBitBtn;
    BitCancelItem: TBitBtn;
    GroupBox5: TGroupBox;
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
    EdtRef: TEdit;
    EdtDescricaoVar: TEdit;
    CurrQtdeProd: TCurrencyEdit;
    CurrTotVar: TCurrencyEdit;
    CurrVar1: TCurrencyEdit;
    CurrVar2: TCurrencyEdit;
    CurrVar3: TCurrencyEdit;
    CurrVar4: TCurrencyEdit;
    CurrVar5: TCurrencyEdit;
    CurrVar6: TCurrencyEdit;
    CurrVar7: TCurrencyEdit;
    CurrVar8: TCurrencyEdit;
    SqlCdsPsvGrupo: TSQLClientDataSet;
    DsPsvGrupo: TDataSource;
    SqlCdsPsvGrupoPSG_REGISTRO: TIntegerField;
    SqlCdsPsvGrupoEMP_CODIGO: TStringField;
    SqlCdsPsvGrupoPED_CODIGO: TStringField;
    SqlCdsPsvGrupoCLI_CODIGO: TStringField;
    SqlCdsPsvGrupoCLI_RAZAO: TStringField;
    SqlCdsPs2: TSQLClientDataSet;
    DsPs2: TDataSource;
    SqlCdsPs2PS2_REGISTRO: TIntegerField;
    SqlCdsPs2EMP_CODIGO: TStringField;
    SqlCdsPs2PED_CODIGO: TStringField;
    SqlCdsPs2PRD_REFER: TStringField;
    SqlCdsPs2PS2_QTDE: TFMTBCdField;
    SqlCdsPs2PS2_QTDE1: TFMTBCdField;
    SqlCdsPs2PS2_QTDE2: TFMTBCdField;
    SqlCdsPs2PS2_QTDE3: TFMTBCdField;
    SqlCdsPs2PS2_QTDE4: TFMTBCdField;
    SqlCdsPs2PS2_QTDE5: TFMTBCdField;
    SqlCdsPs2PS2_QTDE6: TFMTBCdField;
    SqlCdsPs2PS2_QTDE7: TFMTBCdField;
    SqlCdsPs2PS2_QTDE8: TFMTBCdField;
    SqlCdsPs2PRD_DESCRI: TStringField;
    SqlCdsPedidos: TSQLClientDataSet;
    SqlCdsItensPedido: TSQLClientDataSet;
    SqlCdsPedidosEMP_CODIGO: TStringField;
    SqlCdsPedidosPED_CODIGO: TStringField;
    SqlCdsPedidosCLI_CODIGO: TStringField;
    Pan_Razao: TPanel;
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
    BitLimpar: TBitBtn;
    SqlCdsBuscaFicha: TSQLClientDataSet;
    SqlCdsItensFichas: TSQLClientDataSet;
    EdtVar1: TEdit;
    EdtVar2: TEdit;
    EdtVar3: TEdit;
    EdtVar4: TEdit;
    EdtVar5: TEdit;
    EdtVar6: TEdit;
    EdtVar7: TEdit;
    EdtVar8: TEdit;
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
    SqlCdsN1FTI_UC: TFMTBCdField;
    SqlCdsConsumoPRD_REFER: TStringField;
    SqlCdsConsumoPRD_DESCRI: TStringField;
    SqlCdsConsumoPRD_PCUSTO: TFMTBCdField;
    SqlCdsConsumoPRD_DCVAR1: TStringField;
    SqlCdsConsumoPRD_DCVAR2: TStringField;
    SqlCdsConsumoPRD_DCVAR3: TStringField;
    SqlCdsConsumoPRD_DCVAR4: TStringField;
    SqlCdsConsumoPRD_DCVAR5: TStringField;
    SqlCdsConsumoPRD_DCVAR6: TStringField;
    SqlCdsConsumoPRD_DCVAR7: TStringField;
    SqlCdsConsumoPRD_DCVAR8: TStringField;
    SqlCdsConsumoPRD_ESTOQUE: TFMTBCdField;
    SqlCdsConsumoPRD_ENTRADA: TFMTBCdField;
    SqlCdsConsumoPRD_SAIDA: TFMTBCdField;
    SqlCdsConsumoPRD_PENDENTE: TFMTBCdField;
    SqlCdsConsumoPRD_RESERVA: TFMTBCdField;
    SqlCdsConsumoWQTDE: TFMTBCdField;
    SqlCdsConsumoWQTDE1: TFMTBCdField;
    SqlCdsConsumoWQTDE2: TFMTBCdField;
    SqlCdsConsumoWQTDE3: TFMTBCdField;
    SqlCdsConsumoWQTDE4: TFMTBCdField;
    SqlCdsConsumoWQTDE5: TFMTBCdField;
    SqlCdsConsumoWQTDE6: TFMTBCdField;
    SqlCdsConsumoWQTDE7: TFMTBCdField;
    SqlCdsConsumoWQTDE8: TFMTBCdField;
    SqlCdsConsumoPRD_UND: TStringField;
    SqlCdsPs2PS2_FICHA: TStringField;
    ImageList1: TImageList;
    SqlCdsPs2PS2_FICHA_CC: TBooleanField;
    SqlCdsConsumoPS2_FICHA: TStringField;
    PopMenuItens: TPopupMenu;
    Ativa1: TMenuItem;
    Panel7: TPanel;
    PAN_OP: TPanel;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    CurrQtdeOP: TCurrencyEdit;
    GroupBox3: TGroupBox;
    Rad_OA: TRadioButton;
    RAD_OR: TRadioButton;
    RAD_OP: TRadioButton;
    SqlCdsItensPedidoPTI_CODIGO: TStringField;
    SqlCdsItensPedidoPTI_SIGLA: TStringField;
    SqlCdsConsumoPED_CODIGO: TStringField;
    SqlCdsGerarOP: TSQLClientDataSet;
    SqlCdsGerarOPPSI_REGISTRO: TIntegerField;
    SqlCdsGerarOPPED_CODIGO: TStringField;
    SqlCdsGerarOPPRD_REFER: TStringField;
    SqlCdsGerarOPPRD_REFER_ITENS: TStringField;
    SqlCdsGerarOPPRD_DESCRI: TStringField;
    SqlCdsGerarOPPRD_UND: TStringField;
    SqlCdsGerarOPPTI_SIGLA: TStringField;
    SqlCdsGerarOPPSI_CONSUMO: TFMTBCdField;
    GroupBox4: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Edt_Lote: TEdit;
    DtEmissao: TDateEdit;
    EdtORDEM: TEdit;
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
    SqlCdsConsumoEMP_CODIGO: TStringField;
    Edit1: TEdit;
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
    SqlCdsItensFichasFTI_UC: TFMTBCdField;
    SqlCdsConsumoPTI_SIGLA: TStringField;
    SqlCdsConsumoPRD_SIMULACAO: TFMTBCdField;
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
    procedure BitConfirmarClick(Sender: tObject);
    procedure CurrVar1Click(Sender: tObject);
    procedure CurrVar1Exit(Sender: tObject);
    procedure CurrVar2Click(Sender: tObject);
    procedure CurrVar2Exit(Sender: tObject);
    procedure CurrVar3Click(Sender: tObject);
    procedure CurrVar3Exit(Sender: tObject);
    procedure CurrVar4Click(Sender: tObject);
    procedure CurrVar4Exit(Sender: tObject);
    procedure CurrVar5Click(Sender: tObject);
    procedure CurrVar5Exit(Sender: tObject);
    procedure CurrVar6Click(Sender: tObject);
    procedure CurrVar6Exit(Sender: tObject);
    procedure CurrVar7Click(Sender: tObject);
    procedure CurrVar7Exit(Sender: tObject);
    procedure CurrVar8Click(Sender: tObject);
    procedure CurrVar8Exit(Sender: tObject);
    procedure Bit_ExcluirItemClick(Sender: tObject);
    procedure SpeedPedidoClick(Sender: tObject);
    procedure SpeedProdutoClick(Sender: tObject);
    procedure Rad_simulaClick(Sender: tObject);
    procedure Bit_GeraSimulacaoClick(Sender: tObject);
    procedure Bit_GeraOPClick(Sender: tObject);
    procedure DBGridItensDblClick(Sender: tObject);
    procedure EdtReferenciaClick(Sender: tObject);
    procedure DBGridItensDrawColumnCell(Sender: tObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SqlCdsPs2CalcFields(DataSet: TDataSet);
    procedure DBGridItensKeyPress(Sender: tObject; var Key: Char);
    procedure Ativa1Click(Sender: tObject);
    procedure EdtPedidoEnter(Sender: tObject);
    procedure EdtReferenciaEnter(Sender: tObject);
    procedure CurrQtdeEnter(Sender: tObject);
  private
    { Private declarations }
    //
    wTemFicha         : String[1];
//    wTpOP             : String[1];
    tSqlNivel         : array [1..99] of TSQLClientDataSet;
    tCodigoOP         : array [1..99] of String[8];
    iNivelTabela,
    X,
    wTotalQtdeOP,
    wQtdeOP,
    wDividir,
    yQtdeOP,
    yDividir,
    zQtdeOp,
    zDividir          : Integer;
    //
    wSelecionouPedido,
    wSelecionouItem   : Boolean;
    //
    wM1,wM2,wM3,wM4,
    wM5,wM6,wM7,wM8,
    xConsumo,
    wConsumo,
    tQtde,
    //
    wReserva,
    xReservado,
    xEmpenho,
    wProduzirQtde,
    wSaldoEstoque,
    wQtdePedido,
    wRestoOP,
    yRestoOP,
    zRestoOP,
    xSituaEstoque     : Double;
    //
    xRefer,
    xOrdemProducao,
    xRefer_itens,
    wEmp,
    wCOLUNA,
    wRefer,
    wRefer_Itens,
    wPedido,
    wDescri ,
    wMod1,
    wUnd              : String;
    wQuant1,
    wCusto            : Currency;
    sTabelaNivel      : TSQLClientDataSet;

    procedure LayOutTipo;
    procedure LayOutProducao;
    procedure DesabilitaObjetos;
    procedure HabilitaObjetos;
    procedure CalculaVariacao;
    procedure Incluir_Itens;
    procedure SeparaModelos;
    procedure GerarPrevisao;
    procedure GerarOp;

    procedure IncluirQtdenoCampoSimulcao(pEmpresa,pRefer,pQtde : String);

    procedure IncluirItensSimula(wRefer,wReferItens,wPedido :String; wConsumir,wCusto,wEstoque,wEntrada,wSaida,wPendente,wReserva : Currency);

    procedure IncluirOP(wORIGEM,wOP, wPRODUTO, wProdutoPai, wEmpresa : String; wQtdeProduzir : Currency);

    procedure IncluirItensOP(pORIGEM,pORDEM,pREFER,pREFERITEM,pEMPRESA,pSigla,pStatus: String; pConsumido,pQtde1,pQtde2,pQtde3,pQtde4,pQtde5,pQtde6,pQtde7,pQtde8,pReservado,pEmpenho : Currency);

    procedure TesteNIvel(wNivel:Integer;wRefer:String;wQtdes:Double);

    procedure TesteNivelOP(wNivel:Integer;wRefer:String;sQtde:Double);

    procedure CriarTabelaMemoria(iNivel:Integer);

    procedure DestrTabelaMemoria(iNivel:Integer);

    procedure BuscaFicha(wPRODUTO:String);

    procedure BuscaItensNivel(wNivel : Integer; wRefer:String; wQtdeProduzir : Double);

    procedure BuscaItensOPNivel(wNivel : Integer; wReferencia : String; wQtdeProduzir : Double);

    procedure SelecionouItem;

    procedure LimpaSimulacao;

    procedure LimparGrids;

    Function AtribuirLetra : String;

    procedure Atualiza_Flag_Item_Pedido(wFlag,wPedido,wProduto,wEmpresa :String);

    procedure Inserir_Separacao_Previsao(pEmpresa,pPedido,pMaterial,pUnd,pMode1:String;pQtde1,pQualMod,pCusto :Double);

  public
    { Public declarations }
    wLETRA1,wLETRA2 : Integer;
//    wQtdeProduzirPe : Integer;
    wQtdeProduzirPe : Double;
//    yQtdeProduzirPe : Integer;
    yQtdeProduzirPe : Double;
//    zQtdeProduzirPe : Integer;
    zQtdeProduzirPe : Double;
    sRefer_PaiOP    : String;
    wConsiderar     : String[1];
    wBtn_Pa,
    wBtn_Pi         : Boolean;
    wBtn_Cancel     : String[1];
  end;

var
  FormOrdServCentroB: TFormOrdServCentroB;

implementation

uses DataCad, RWFunc, Men0001, Ped0004, Ftc0002, PrevC002, DmProdu,
  Osv0002B, Osvn0007;

{$R *.dfm}





procedure TFormOrdServCentroB.FormShow(Sender: tObject);
begin
    left := 0;
    top  := 0;
    screen.cursor := crHourGlass;
    try
      //
      wSql1  := 'SELECT T1.*,C1.CLI_RAZAO FROM PSV_GRUPO T1 LEFT JOIN CLI0000 C1 ON (C1.CLI_CODIGO = T1.CLI_CODIGO) ';
      wOrdem := 'T1.PSG_REGISTRO DESC';
      SqlCdsPsvGrupo.Close;
      SqlCdsPsvGrupo.CommandText := SQLDEF('ORDEMPRODUCAO',wSql1,'',wOrdem,'T1.');
      SqlCdsPsvGrupo.Open;
      //
      wSql1  := 'SELECT T2.*,P1.PRD_DESCRI FROM PSV_IT02 T2 LEFT JOIN PRD0000 P1 ON (T2.PRD_REFER = P1.PRD_REFER) ';
      wOrdem := 'T2.PS2_REGISTRO DESC';
      SqlCdsPs2.Close;
      SqlCdsPs2.CommandText := SQLDEF('ORDEMPRODUCAO',wSql1,'',wOrdem,'T2.');
      SqlCdsPs2.Open;
      //
      Rad_Pedido.Checked := true;
      Rad_simula.Checked := true;
      LayOutProducao;
      LayOutTipo;
      {Verifica no parametro se a Ordens em Produção esta disponivel}
      if (FrmMenu.wPmtOPsProduzir = 'S') then
         begin
             RAD_OP.Enabled := true;
         end
      else
         begin
             RAD_OP.Enabled := False;
         end;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao abrir as tabelas ! '+e.message));
    end;
    screen.cursor := crDefault;
end;

procedure TFormOrdServCentroB.Bit_SairClick(Sender: tObject);
begin
    Close;
end;

procedure TFormOrdServCentroB.DBGridItensCellClick(Column: TColumn);
begin
    DBGridItens.Hint := SqlCdsPs2PRD_DESCRI.AsString;
    if (SqlCdsPs2.IsEmpty = False) then
       wSelecionouItem := true
    else
       wSelecionouItem := False;
end;

procedure TFormOrdServCentroB.DBGridGrupoCellClick(Column: TColumn);
begin
    DBGridGrupo.Hint := 'Codigo: '+SqlCdsPsvGrupoCLI_CODIGO.AsString+chr(13)+'Razão: '+SqlCdsPsvGrupoCLI_RAZAO.AsString;
    if (SqlCdsPsvGrupo.IsEmpty = False) then
       wSelecionouPedido := true
    else
       wSelecionouPedido := False;
end;

procedure TFormOrdServCentroB.EdtPedidoExit(Sender: tObject);
Var
  wVezPedido : Integer;
begin
    Screen.Cursor   := crHourGlass;
    EdtPedido.Color := clWindow;
    try
      if (EdtPedido.Text <> '') then
         begin
             EdtPedido.Text := StrZero(EdtPedido.Text,EdtPedido.MaxLength);
             //
             wSql1      := 'SELECT P2.EMP_CODIGO,P2.PED_CODIGO,P2.CLI_CODIGO,P2.PED_SITUACAO,C1.CLI_RAZAO FROM PED0000 P2 LEFT JOIN CLI0000 C1 ON (P2.CLI_CODIGO = C1.CLI_CODIGO)';
             wSeleciona := 'WHERE P2.PED_CODIGO = '''+EdtPedido.Text+'''';
             wOrdem     := 'P2.PED_CODIGO';
             //
             SqlCdsPedidos.Close;
             SqlCdsPedidos.CommandText := SQLDEF('ORDEMPRODUCAO',wSql1,wSeleciona,wOrdem,'P2.');
             SqlCdsPedidos.Open;
             if (SqlCdsPedidos.IsEmpty = False) then
                begin
                    Pan_Razao.Caption := SqlCdsPedidosCLI_RAZAO.AsString;
                    if (SqlCdsPedidosPED_SITUACAO.AsString <>'T') then  {Somente Pedidos Pendentes e Parcial}
                       begin
                           if uteis.confirmacao ( ('Deseja incluir o Pedido '''+EdtPedido.text+''' do Cliente '''+SqlCdsPedidosCLI_RAZAO.AsString+''' ?'))= Mryes then
                              begin
                                  {Verifica se o pedido ja foi inserido, caso contrario cancela a
                                   insercao}
                                  wSql1      := 'SELECT T1.*,C1.CLI_RAZAO FROM PSV_GRUPO T1 LEFT JOIN CLI0000 C1 ON (C1.CLI_CODIGO = T1.CLI_CODIGO) ';
                                  wSeleciona := 'WHERE T1.EMP_CODIGO = '''+SqlCdsPedidosEMP_CODIGO.AsString+''' AND T1.PED_CODIGO = '''+SqlCdsPedidosPED_CODIGO.AsString+''' AND T1.CLI_CODIGO = '''+SqlCdsPedidosCLI_CODIGO.AsString+'''';
                                  wOrdem     := ' ORDER BY T1.EMP_CODIGO,T1.PED_CODIGO,T1.CLI_CODIGO';
                                  DataCadastros.sqlUpdate.close;
                                  DataCadastros.SqlUpdate.sql.text :=wSql1+wSeleciona+wOrdem;
                                  DataCadastros.sqlUpdate.Open;
                                  if (DataCadastros.sqlUpdate.IsEmpty = true) then
                                     begin
                                         try
                                           {Gravando os Itens do Pedido}
                                           wSql1      := 'SELECT P2.EMP_CODIGO,P2.PED_CODIGO,P2.PRD_REFER,P1.PTI_CODIGO,P3.PTI_SIGLA,P2.PRF_QTDE,P2.PRF_VAR1,P2.PRF_VAR2,P2.PRF_VAR3,P2.PRF_VAR4,P2.PRF_VAR5,P2.PRF_VAR6,P2.PRF_VAR7,P2.PRF_VAR8 ';
                                           wSql2      := 'FROM PED_IT01 P2 LEFT JOIN PRD0000 P1 ON (P2.PRD_REFER = P1.PRD_REFER) LEFT JOIN PRD_TIPO P3 ON (P1.PTI_CODIGO = P3.PTI_CODIGO) ';
                                           wOrdem     := 'P2.EMP_CODIGO,P2.PED_CODIGO';
                                           {Verifica se a OP ja foi criada, se sim traz somente os item do pedido que possui o flag de
                                            PRF_OP = N}
                                           wSeleciona := 'where O1.PED_CODIGO = '''+EdtPedido.Text+'''';
                                           DataCadastros.sqlUpdate.Close;
                                           DataCadastros.SqlUpdate.sql.text :=SQLDEF('PEDIDOS','Select O1.PED_CODIGO,O1.PRD_REFER from OSV0001 O1',wSeleciona,'O1.PED_CODIGO','O1.');
                                           DataCadastros.sqlUpdate.Open;
                                           //
                                           if (DataCadastros.sqlUpdate.IsEmpty = True) then
                                              begin
                                                  wSeleciona := 'WHERE P2.EMP_CODIGO = '''+SqlCdsPedidosEMP_CODIGO.AsString+''' AND P2.PED_CODIGO = '''+SqlCdsPedidosPED_CODIGO.AsString+''''
                                              end
                                           else
                                              begin
                                                  {Verifica se existe algum item do pedido
                                                   sem ordem de producao.}
                                                  {Gravando os Itens do Pedido}
                                                  wSql1      := 'SELECT P2.EMP_CODIGO,P2.PED_CODIGO,P2.PRD_REFER,P1.PTI_CODIGO,P3.PTI_SIGLA,P2.PRF_QTDE,P2.PRF_VAR1,P2.PRF_VAR2,P2.PRF_VAR3,P2.PRF_VAR4,P2.PRF_VAR5,P2.PRF_VAR6,';
                                                  wSql2      := 'P2.PRF_VAR7,P2.PRF_VAR8,P2.PRF_OP FROM PED_IT01 P2 LEFT JOIN PRD0000 P1 ON (P2.PRD_REFER = P1.PRD_REFER) LEFT JOIN PRD_TIPO P3 ON (P1.PTI_CODIGO = P3.PTI_CODIGO) ';
                                                  wOrdem     := 'P2.EMP_CODIGO,P2.PED_CODIGO';
                                                  //
                                                  wSeleciona := 'WHERE P2.EMP_CODIGO = '''+SqlCdsPedidosEMP_CODIGO.AsString+''' AND P2.PED_CODIGO = '''+SqlCdsPedidosPED_CODIGO.AsString+''' AND P2.PRF_OP = ''N''';
                                                  DataCadastros.sqlUpdate.Close;
                                                  DataCadastros.SqlUpdate.sql.text :=SQLDEF('PEDIDOS',wSql1+wSql2,wSeleciona,'P2.PED_CODIGO','P2.');
                                                  DataCadastros.sqlUpdate.Open;
                                                  if (DataCadastros.sqlUpdate.FieldByName('PRF_OP').IsNull = True) then
                                                     begin
                                                         {Gravando os Itens do Pedido}
                                                         wSql1      := 'SELECT P2.EMP_CODIGO,P2.PED_CODIGO,P2.PRD_REFER,P1.PTI_CODIGO,P3.PTI_SIGLA,P2.PRF_QTDE,P2.PRF_VAR1,P2.PRF_VAR2,P2.PRF_VAR3,P2.PRF_VAR4,P2.PRF_VAR5,P2.PRF_VAR6,P2.PRF_VAR7,P2.PRF_VAR8 ';
                                                         wSql2      := 'FROM PED_IT01 P2 LEFT JOIN PRD0000 P1 ON (P2.PRD_REFER = P1.PRD_REFER) LEFT JOIN PRD_TIPO P3 ON (P1.PTI_CODIGO = P3.PTI_CODIGO) ';
                                                         wOrdem     := 'P2.EMP_CODIGO,P2.PED_CODIGO';
                                                         wSeleciona := 'WHERE P2.EMP_CODIGO = '''+SqlCdsPedidosEMP_CODIGO.AsString+''' AND P2.PED_CODIGO = '''+SqlCdsPedidosPED_CODIGO.AsString+''''
                                                     end
                                                  else
                                                     begin
                                                         if (DataCadastros.sqlUpdate.IsEmpty = False) and (DataCadastros.sqlUpdate.FieldByName('PRF_OP').AsString = 'N') then
                                                            begin
                                                                uteis.aviso('Pedido parcialmente produzido OP'+CHR(39)+'s !');
                                                                wSeleciona := 'WHERE P2.EMP_CODIGO = '''+SqlCdsPedidosEMP_CODIGO.AsString+''' AND P2.PED_CODIGO = '''+SqlCdsPedidosPED_CODIGO.AsString+''' AND P2.PRF_OP = ''N''';
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
                                           if (SqlCdsItensPedido.IsEmpty = false) then
                                              begin
                                                  wVezPedido := 1;
                                                  while not SqlCdsItensPedido.Eof do
                                                   begin
                                                       if (SqlCdsItensPedidoPTI_SIGLA.AsString = 'PA') OR (SqlCdsItensPedidoPTI_SIGLA.AsString = 'PI') then
                                                          begin
                                                              {Verifica se o Item do Pedido se tem Ficha Tecnica}
                                                              wSql1      := 'SELECT F1.PRD_REFER FROM FTC0000 F1 ';
                                                              wSeleciona := 'WHERE F1.PRD_REFER = '''+SqlCdsItensPedidoPRD_REFER.AsString+'''';
                                                              wOrdem     := 'F1.PRD_REFER';
                                                              DataCadastros.sqlUpdate.Close;
                                                              DataCadastros.SqlUpdate.sql.text :=SQLDEF('FICHATECNICA',wSql1,wSeleciona,wOrdem,'F1.');
                                                              DataCadastros.sqlUpdate.Open;
                                                              if (DataCadastros.sqlUpdate.IsEmpty = False) then
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
                                                              wSql1 := 'INSERT INTO PSV_IT02 ('+
                                                                           'EMP_CODIGO,'+
                                                                           'PED_CODIGO,'+
                                                                           'PRD_REFER,'+
                                                                           'PS2_QTDE,'+
                                                                           'PS2_QTDE1,'+
                                                                           'PS2_QTDE2,'+
                                                                           'PS2_QTDE3,'+
                                                                           'PS2_QTDE4,'+
                                                                           'PS2_QTDE5,'+
                                                                           'PS2_QTDE6,'+
                                                                           'PS2_QTDE7,'+
                                                                           'PS2_QTDE8,'+
                                                                           'PS2_FICHA)';
                                                              wSql2 := 'VALUES ('''+SqlCdsItensPedidoEMP_CODIGO.AsString+''','''+
                                                                                    SqlCdsItensPedidoPED_CODIGO.AsString+''','''+
                                                                                    SqlCdsItensPedidoPRD_REFER.AsString+''','''+
                                                                                    ValorAmericano(SqlCdsItensPedidoPRF_QTDE.AsString)+''','''+
                                                                                    ValorAmericano(SqlCdsItensPedidoPRF_VAR1.AsString)+''','''+
                                                                                    ValorAmericano(SqlCdsItensPedidoPRF_VAR2.AsString)+''','''+
                                                                                    ValorAmericano(SqlCdsItensPedidoPRF_VAR3.AsString)+''','''+
                                                                                    ValorAmericano(SqlCdsItensPedidoPRF_VAR4.AsString)+''','''+
                                                                                    ValorAmericano(SqlCdsItensPedidoPRF_VAR5.AsString)+''','''+
                                                                                    ValorAmericano(SqlCdsItensPedidoPRF_VAR6.AsString)+''','''+
                                                                                    ValorAmericano(SqlCdsItensPedidoPRF_VAR7.AsString)+''','''+
                                                                                    ValorAmericano(SqlCdsItensPedidoPRF_VAR8.AsString)+''','''+
                                                                                    wTemFicha+''')';
                                                              DataCadastros.sqlUpdate.close;
                                                              DataCadastros.SqlUpdate.sql.text :=wSql1+wSql2;
                                                              DataCadastros.sqlUpdate.Execsql;
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

procedure TFormOrdServCentroB.Bit_ExcluirPedidoClick(Sender: tObject);
begin
    if (wSelecionouPedido = true) then
       begin
           if uteis.confirmacao ( ('Deseja Excluir o Pedido: '+SqlCdsPsvGrupoPED_CODIGO.AsString+#9+#13+'Cliente: '+SqlCdsPsvGrupoCLI_CODIGO.AsString+' - '+SqlCdsPsvGrupoCLI_RAZAO.AsString+''' ?'))= Mryes then
              begin
                  try
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
                    {Atualizando os Grids}
                    SqlCdsPsvGrupo.Refresh;
                    SqlCdsPs2.Refresh;
                  except on E:EDataBaseError do
                     uteis.erro  (pchar('Erro ao excluir o Pedido do Grupo ! '+e.message));
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
           uteis.aviso('Selecione um pedido !');
           DBGridGrupo.SetFocus;
       end;
end;

procedure TFormOrdServCentroB.FormCreate(Sender: tObject);
begin
    wSelecionouPedido := False;
    wSelecionouItem   := False;
    wBtn_Cancel       := 'N';
    wSql1 := '';
    wSql2 := '';
    wSql3 := '';
end;

procedure TFormOrdServCentroB.BitLimparClick(Sender: tObject);
begin
    Screen.cursor := crHourGlass;
    try
      if (SqlCdsPsvGrupo.IsEmpty = false) or (SqlCdsPs2.IsEmpty = false) then
         begin
             if uteis.confirmacao ( 'Limpar simulação atual?')= idYes then
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
                end;
         end
      else
         begin
             uteis.aviso('Não há simulação a ser excluido !');
         end;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Error ao Limpar as tabelas ! '+e.message));
    end;
    Screen.Cursor:= crDefault;
end;

procedure TFormOrdServCentroB.Rad_PedidoClick(Sender: tObject);
begin
    LayOutProducao;
end;

procedure TFormOrdServCentroB.EdtReferenciaExit(Sender: tObject);
begin
    Screen.Cursor       := crHourGlass;
    EdtReferencia.Color := clWindow;
    try
      try
        if (EdtReferencia.Text <> '') then
           begin
               {Verifica se existe o produto cadastrado}
               DataCadastros.sqlUpdate.close;
               DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS','Select P4.PRD_REFER from PRD0000 P4','where P4.PRD_REFER = '''+EdtReferencia.Text+'''','P4.PRD_REFER','P4.');
               DataCadastros.sqlUpdate.Open;
               if DataCadastros.sqlUpdate.IsEmpty = false then
                  begin
                      {Verifica se o produto tem a Ficha Tecnica}
                      wSql1      := 'Select F1.*,P1.PRD_DESCRI,P1.PRD_PCUSTO,P1.PRD_UND,P1.PRD_DCVAR1,P1.PRD_DCVAR2,P1.PRD_DCVAR3,P1.PRD_DCVAR4,P1.PRD_DCVAR5,P1.PRD_DCVAR6,P1.PRD_DCVAR7,P1.PRD_DCVAR8 ';
                      wSql2      := 'from FTC0000 F1 JOIN PRD0000 P1 ON F1.PRD_REFER = P1.PRD_REFER ';
                      //
                      wSeleciona := 'WHERE F1.PRD_REFER = '''+EdtReferencia.Text+'''';
                      //
                      wOrdem     := 'F1.PRD_REFER';
                      //
                      SqlCdsBuscaFicha.Close;
                      SqlCdsBuscaFicha.CommandText := SQLDEF('FICHATECNICA',wSql1+wSql2,wSeleciona,wOrdem,'F1.');
                      SqlCdsBuscaFicha.Open;
                      if SqlCdsBuscaFicha.IsEmpty = false then
                         begin
                             EdtRef.Text          := SqlCdsBuscaFichaPRD_REFER.AsString;
                             EdtDescricaoVar.Text := SqlCdsBuscaFichaPRD_DESCRI.AsString;
                             CurrQtdeProd.Value   := CurrQtde.Value;
                             {Habilita somente as variaçoes existente do produto}
                             CurrVar1.Enabled := iif(SqlCdsBuscaFichaPRD_DCVAR1.IsNull = true,'False','True');
                             CurrVar2.Enabled := iif(SqlCdsBuscaFichaPRD_DCVAR2.IsNull = true,'False','True');
                             CurrVar3.Enabled := iif(SqlCdsBuscaFichaPRD_DCVAR3.IsNull = true,'False','True');
                             CurrVar4.Enabled := iif(SqlCdsBuscaFichaPRD_DCVAR4.IsNull = true,'False','True');
                             CurrVar5.Enabled := iif(SqlCdsBuscaFichaPRD_DCVAR5.IsNull = true,'False','True');
                             CurrVar6.Enabled := iif(SqlCdsBuscaFichaPRD_DCVAR6.IsNull = true,'False','True');
                             CurrVar7.Enabled := iif(SqlCdsBuscaFichaPRD_DCVAR7.IsNull = true,'False','True');
                             CurrVar8.Enabled := iif(SqlCdsBuscaFichaPRD_DCVAR8.IsNull = true,'False','True');
                             {}
                             EdtVar1.Text := SqlCdsBuscaFichaPRD_DCVAR1.AsString;
                             EdtVar2.Text := SqlCdsBuscaFichaPRD_DCVAR2.AsString;
                             EdtVar3.Text := SqlCdsBuscaFichaPRD_DCVAR3.AsString;
                             EdtVar4.Text := SqlCdsBuscaFichaPRD_DCVAR4.AsString;
                             EdtVar5.Text := SqlCdsBuscaFichaPRD_DCVAR5.AsString;
                             EdtVar6.Text := SqlCdsBuscaFichaPRD_DCVAR6.AsString;
                             EdtVar7.Text := SqlCdsBuscaFichaPRD_DCVAR7.AsString;
                             EdtVar8.Text := SqlCdsBuscaFichaPRD_DCVAR8.AsString;
                             wTemFicha    := 'S';
                         end
                      else
                         begin
                             uteis.aviso(Pchar('A Referência "'+EdtReferencia.Text+'" não Possui Ficha Técnica!'));
                             EdtReferencia.Text := '';
                             EdtReferencia.SetFocus;
                             EdtReferencia.SelectAll;
                         end;
                  end
               else
                  begin
                        uteis.aviso('Produto não cadastrado !');
                        EdtReferencia.Text := '';
                        EdtReferencia.SetFocus;
                  end;
           end;
      except on E:EDataBaseError do
         uteis.erro  (pchar('Erro ao localizar o produto ! '+e.message));
      end;
    finally
        SqlCdsBuscaFicha.close;
    end;
    Screen.Cursor := crdefault;
end;

procedure TFormOrdServCentroB.CurrQtdeExit(Sender: tObject);
begin
    CurrQtde.Color := clWindow;
    if (ActiveControl.Name = 'EdtReferencia') then
       exit;
    if (EdtReferencia.Text <> '') then
       begin
           if (CurrQtde.Value>0) then
              begin
                  if (FrmMenu.wVariacoes = 'S') then
                     begin
                         PanVariacao.Visible := true;
                         PanVariacao.Left    := 21;
                         PanVariacao.Top     := 167;
                         CurrQtdeProd.Value  := CurrQtde.Value;
                         CurrVar1.SetFocus;
                         DesabilitaObjetos;
                     end
                  else
                     begin
                         PanVariacao.Visible := False;
                         Incluir_Itens;
                         EdtReferencia.ReadOnly := False;
                         EdtReferencia.TabStop  := True;
                         EdtReferencia.Color    := clWindow;
                         CurrQtde.Value         := 0;
                         EdtReferencia.Text     := '';
                         EdtReferencia.SetFocus;
                         EdtReferencia.SelectAll;
                     end;
              end;
       end
    else
       begin
           uteis.aviso('Informa a referência do Produto !');
           CurrQtde.Value     := 0;
           EdtReferencia.Text := '';
           EdtReferencia.SetFocus;
           EdtReferencia.SelectAll;
       end;
end;

procedure TFormOrdServCentroB.DesabilitaOBjetos;
begin
    Grp_Tipo.Enabled    := False;
    Grp_OP.Enabled      := False;
    Grp_Pedidos.Enabled := False;
    Grp_Itens.Enabled   := False;
end;

procedure TFormOrdServCentroB.HabilitaObjetos;
begin
    Grp_Tipo.Enabled    := True;
    Grp_OP.Enabled      := True;
    Grp_Pedidos.Enabled := True;
    Grp_Itens.Enabled   := True;
end;

procedure TFormOrdServCentroB.BitCancelItemClick(Sender: tObject);
begin
    PanVariacao.Visible := False;
    HabilitaObjetos;
    CurrQtde.Value     := 0;
    EdtReferencia.Text := '';
    EdtReferencia.SelectAll;
end;

procedure TFormOrdServCentroB.BitConfirmarClick(Sender: tObject);
begin
    CalculaVariacao;
    if (CurrTotVar.Value = CurrQtdeProd.Value) then
       begin
           Incluir_Itens;
           PanVariacao.Visible := False;
           HabilitaObjetos;
           CurrQtde.Value     := 0;           
           EdtReferencia.Text := '';
           EdtReferencia.SetFocus;
           EdtReferencia.SelectAll;
       end
    else
       begin
           uteis.aviso('A Quantidade informada é diferente do Total das Variações !');
           CurrVAR1.SetFocus;
       end;
end;

procedure TFormOrdServCentroB.CalculaVariacao;
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

procedure TFormOrdServCentroB.Incluir_Itens;
begin
    Screen.Cursor := crHourGlass;
    try
      if (wSelecionouItem = False) then
         begin
             wSql1      := 'SELECT T2.EMP_CODIGO,T2.PED_CODIGO,T2.PRD_REFER FROM PSV_IT02 T2 ';
             wSeleciona := 'WHERE T2.EMP_CODIGO = '''+dbInicio.Empresa.EMP_CODIGO+''' AND T2.PED_CODIGO IS NULL AND PRD_REFER = '''+EdtReferencia.Text+'''';
             wOrdem     := ' ORDER BY T2.EMP_CODIGO,T2.PED_CODIGO,T2.PRD_REFER';
             DataCadastros.sqlUpdate.Close;
             DataCadastros.SqlUpdate.sql.text :=wSql1+wSeleciona+wOrdem;
             DataCadastros.sqlUpdate.Open;
             wSql1 := 'INSERT INTO PSV_IT02 ('+
                          'EMP_CODIGO,'+
                          'PED_CODIGO,'+
                          'PRD_REFER,'+
                          'PS2_QTDE,'+
                          'PS2_QTDE1,'+
                          'PS2_QTDE2,'+
                          'PS2_QTDE3,'+
                          'PS2_QTDE4,'+
                          'PS2_QTDE5,'+
                          'PS2_QTDE6,'+
                          'PS2_QTDE7,'+
                          'PS2_QTDE8,'+
                          'PS2_FICHA)';
             wSql2 := 'VALUES ('''+dbInicio.Empresa.EMP_CODIGO+''','+
                                   'Null'+','''+
                                   EdtReferencia.Text+''','''+
                                   ValorAmericano(CurrQtde.Text)+''','''+
                                   ValorAmericano(CurrVar1.Text)+''','''+
                                   ValorAmericano(CurrVar2.Text)+''','''+
                                   ValorAmericano(CurrVar3.Text)+''','''+
                                   ValorAmericano(CurrVar4.Text)+''','''+
                                   ValorAmericano(CurrVar5.Text)+''','''+
                                   ValorAmericano(CurrVar6.Text)+''','''+
                                   ValorAmericano(CurrVar7.Text)+''','''+
                                   ValorAmericano(CurrVar8.Text)+''','''+
                                   wTemFicha+''')';
             if (DataCadastros.sqlUpdate.IsEmpty = False) then
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
               wSql1 := 'UPDATE PSV_IT02 SET PS2_QTDE  = '+ValorAmericano(CurrQtde.Text)+','+
                                            'PS2_QTDE1 = '+ValorAmericano(CurrVar1.Text)+','+
                                            'PS2_QTDE2 = '+ValorAmericano(CurrVar2.Text)+','+
                                            'PS2_QTDE3 = '+ValorAmericano(CurrVar3.Text)+','+
                                            'PS2_QTDE4 = '+ValorAmericano(CurrVar4.Text)+','+
                                            'PS2_QTDE5 = '+ValorAmericano(CurrVar5.Text)+','+
                                            'PS2_QTDE6 = '+ValorAmericano(CurrVar6.Text)+','+
                                            'PS2_QTDE7 = '+ValorAmericano(CurrVar7.Text)+','+
                                            'PS2_QTDE8 = '+ValorAmericano(CurrVar8.Text);


               wSeleciona := 'WHERE PS2_REGISTRO = '''+SqlCdsPs2PS2_REGISTRO.AsString+'''';

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

procedure TFormOrdServCentroB.CurrVar1Click(Sender: tObject);
begin
    CurrVar1.SelectAll;
end;

procedure TFormOrdServCentroB.CurrVar1Exit(Sender: tObject);
begin
    CalculaVariacao;
end;

procedure TFormOrdServCentroB.CurrVar2Click(Sender: tObject);
begin
    CurrVar2.SelectAll;
end;

procedure TFormOrdServCentroB.CurrVar2Exit(Sender: tObject);
begin
    CalculaVariacao;
end;

procedure TFormOrdServCentroB.CurrVar3Click(Sender: tObject);
begin
    CurrVar3.SelectAll;
end;

procedure TFormOrdServCentroB.CurrVar3Exit(Sender: tObject);
begin
    CalculaVariacao;
end;

procedure TFormOrdServCentroB.CurrVar4Click(Sender: tObject);
begin
    CurrVar4.SelectAll;
end;

procedure TFormOrdServCentroB.CurrVar4Exit(Sender: tObject);
begin
    CalculaVariacao;
end;

procedure TFormOrdServCentroB.CurrVar5Click(Sender: tObject);
begin
    CurrVar5.SelectAll;
end;

procedure TFormOrdServCentroB.CurrVar5Exit(Sender: tObject);
begin
    CalculaVariacao;
end;

procedure TFormOrdServCentroB.CurrVar6Click(Sender: tObject);
begin
    CurrVar6.SelectAll;
end;

procedure TFormOrdServCentroB.CurrVar6Exit(Sender: tObject);
begin
    CalculaVariacao;
end;

procedure TFormOrdServCentroB.CurrVar7Click(Sender: tObject);
begin
    CurrVar7.SelectAll;
end;

procedure TFormOrdServCentroB.CurrVar7Exit(Sender: tObject);
begin
    CalculaVariacao;
end;

procedure TFormOrdServCentroB.CurrVar8Click(Sender: tObject);
begin
    CurrVar8.SelectAll;
end;

procedure TFormOrdServCentroB.CurrVar8Exit(Sender: tObject);
begin
    CalculaVariacao;
end;

procedure TFormOrdServCentroB.Bit_ExcluirItemClick(Sender: tObject);
begin
    if (wSelecionouItem = true) then
       begin
           if (SqlCdsPs2PED_CODIGO.IsNull = true) then
              begin
                  if uteis.confirmacao ( ('Deseja Excluir o Item: '+SqlCdsPs2PRD_REFER.AsString+' - '+SqlCdsPs2PRD_DESCRI.AsString+''' ?'))= Mryes then
                     begin
                         try
                           wSql1      := 'DELETE FROM PSV_IT02 ';
                           wSeleciona := 'WHERE PS2_REGISTRO = '''+SqlCdsPs2PS2_REGISTRO.AsString+'''';
                           DataCadastros.sqlUpdate.Close;
                           DataCadastros.SqlUpdate.sql.text :=wSql1+wSeleciona;
                           DataCadastros.sqlUpdate.Execsql;
                           {Atualizando os Grids}
                           SqlCdsPsvGrupo.Refresh;
                           SqlCdsPs2.Refresh;
                         except on E:EDataBaseError do
                            uteis.erro  (pchar('Erro ao excluir o Pedido do Grupo ! '+e.message));
                         end;
                     end;
              end
           else
              begin
                  uteis.aviso('Este produto não pode ser excluído. Pertence a um pedido !');
                  DBGridItens.SetFocus;
              end;
           wSelecionouItem    := False;
       end
    else
       begin
           uteis.aviso('Selecione um Produto !');
           DBGridItens.SetFocus;
       end;
end;

procedure TFormOrdServCentroB.SpeedPedidoClick(Sender: tObject);
begin
    try
      try
        FormPedidoGrid := TFormPedidoGrid.Create(Application);
        FormPedidoGrid.ShowModal;
      finally
        FormPedidoGrid.Destroy;
        FormPedidoGrid := nil;
      end;
    except
        //beep;
        uteis.erro  ('Ocorreu um erro na criação do formulário!');
    end;
end;

procedure TFormOrdServCentroB.SpeedProdutoClick(Sender: tObject);
begin
    try
      try
        FormFichaTecGrid := TFormFichaTecGrid.Create(Application);
        FormFichaTecGrid.ShowModal;
      finally
        FormFichaTecGrid.Destroy;
        FormFichaTecGrid := nil;
      end;
    except
        //beep;
        uteis.erro  ('Ocorreu um erro na criação do formulário!');
    end;
end;

procedure TFormOrdServCentroB.LayOutProducao;
begin
    if (Rad_Pedido.checked ) then
       begin
           if (SqlCdsPsvGrupo.Active = true) then
              SqlCdsPsvGrupo.Refresh;
           if (SqlCdsPs2.Active = true) then
              SqlCdsPs2.Refresh;
           EdtPedido.Color           := clWindow;
           EdtPedido.Enabled         := True;
           SpeedPedido.Enabled       := True;
           Pan_Razao.Enabled         := True;
           Bit_ExcluirPedido.Enabled := True;
           DBGridGrupo.Enabled       := True;
           EdtReferencia.Color       := $00D7D7D7;
           CurrQtde.Color            := $00D7D7D7;
           EdtReferencia.Enabled     := False;
           SpeedProduto.Enabled      := False;
           CurrQtde.Enabled          := False;
           Bit_ExcluirItem.Enabled   := False;
           DBGridItens.Enabled       := False;
           EdtPedido.SetFocus;
           EdtPedido.SelectAll;
       end;
    if (Rad_Item.checked ) then
       begin
           if (SqlCdsPsvGrupo.Active = true) then
              SqlCdsPsvGrupo.Refresh;
           if (SqlCdsPs2.Active = true) then
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
           DBGridItens.Enabled       := True;
           EdtReferencia.SetFocus;
           EdtReferencia.SelectAll;
       end;
end;

procedure TFormOrdServCentroB.Rad_simulaClick(Sender: tObject);
begin
    LayOutTipo;
end;

procedure TFormOrdServCentroB.LayOutTipo;
begin
    if (Rad_Simula.checked ) then
       begin
           Bit_GeraSimulacao.Enabled := True;
           Bit_GeraOP.Enabled        := False;
           PAN_OP.Enabled            := False;
       end;
    if (Rad_Real.checked ) then
       begin
           Bit_GeraSimulacao.Enabled := False;
           Bit_GeraOP.Enabled        := True;
           PAN_OP.Enabled            := True;
       end;
end;

procedure TFormOrdServCentroB.Bit_GeraSimulacaoClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    wBtn_Cancel   := 'N';
    wConsiderar   := 'N';
    if SqlCdsPs2.IsEmpty = true then
       begin
           uteis.aviso('Não existe referência para gerar simulação !');
           DBGridGrupo.SetFocus;
           exit;
       end;
    {Chama Formulario Considerar - Simulacao}
    try
      FormOrdServConsiderar := TFormOrdServConsiderar.Create(Application);
      FormOrdServConsiderar.ShowModal;
    finally
       FormOrdServConsiderar.Destroy;
       FormOrdServConsiderar := nil;
    end;
    if (wBtn_Cancel = 'N') then  // Na criacao do Formulario a variavel wBtn_Cancel Default é N
       begin
           try
             try
               LimpaSimulacao;
               // separa variacoes.Qtde de cada variacao fica toda na variacao 1
               SeparaModelos;
               // é mais rapido gerar c/modelos(variacoes)juntos
               GerarPrevisao;
               // cria formulario na memoria
               FormPrevConsGrid := TFormPrevConsGrid.Create(Application);
               FormPrevConsGrid.ShowModal;
             finally
               FormPrevConsGrid.Destroy;
               FormPrevConsGrid := nil;
             end;
           except
               //beep;
               uteis.erro  ('Ocorreu um erro na criação do formulário!');
           end;
       end;
    Screen.Cursor := crDefault;
end;

procedure TFormOrdServCentroB.SeparaModelos;
Var
  wI : Integer;
begin
    Screen.Cursor := crHourGlass;
    try
      wSql1 := 'SELECT T2.EMP_CODIGO,T2.PRD_REFER,T2.PS2_FICHA,T2.PED_CODIGO,P1.PRD_DESCRI,P1.PRD_UND,P2.PTI_SIGLA,P1.PRD_PCUSTO,P1.PRD_DCVAR1,P1.PRD_DCVAR2,P1.PRD_DCVAR3,P1.PRD_DCVAR4,P1.PRD_DCVAR5,P1.PRD_DCVAR6,P1.PRD_DCVAR7,P1.PRD_DCVAR8,';
      wSql2 := 'P1.PRD_ESTOQUE,P1.PRD_ENTRADA,P1.PRD_SAIDA,P1.PRD_PENDENTE,P1.PRD_RESERVA,P1.PRD_SIMULACAO,T2.PS2_QTDE AS WQTDE,T2.PS2_QTDE1 AS WQTDE1,T2.PS2_QTDE2 AS WQTDE2,T2.PS2_QTDE3 AS WQTDE3,T2.PS2_QTDE4 AS WQTDE4,T2.PS2_QTDE5 AS WQTDE5,';
      wSql3 := 'T2.PS2_QTDE6 AS WQTDE6,T2.PS2_QTDE7 AS WQTDE7,T2.PS2_QTDE8 AS WQTDE8 FROM PSV_IT02 T2 LEFT JOIN PRD0000 P1 ON (T2.PRD_REFER = P1.PRD_REFER) LEFT JOIN PRD_TIPO P2 ON (P1.PTI_CODIGO = P2.PTI_CODIGO) ';
      //
      wOrdem:= 'T2.PED_CODIGO,T2.PRD_REFER';
      SqlCdsConsumo.Close;
      SqlCdsConsumo.CommandText := SQLDEF('PRODUTOS',wSql1+wSql2+wSql3,'',wOrdem,'T2.');
      SqlCdsConsumo.Open;
      //
      if (SqlCdsConsumo.IsEmpty = False) then
         begin
             {SEPARA PRODUTOS UM MODELO(variação) POR PRODUTOS}
             SqlCdsConsumo.First;
             SqlCdsConsumo.DisableControls;
             while not SqlCdsConsumo.Eof do
              begin
                  if (FrmMenu.wVariacoes = 'S') then
                     begin
                         for wI := 1 to 8 do
                          begin
                              wQuant1 := 0;
                              if(wI = 1)and(SqlCdsConsumoWQTDE1.AsCurrency > 0)then
                                 begin
                                     wQuant1 := SqlCdsConsumoWQTDE1.AsCurrency;
                                     wMod1   := SqlCdsConsumoPRD_DCVAR1.AsString;
                                 end;
                              if(wI = 2)and(SqlCdsConsumoWQTDE2.AsCurrency > 0)then
                                 begin
                                     wQuant1 := SqlCdsConsumoWQTDE2.AsCurrency;
                                     wMod1   := SqlCdsConsumoPRD_DCVAR2.AsString;
                                 end;
                              if(wI = 3)and(SqlCdsConsumoWQTDE3.AsCurrency > 0)then
                                 begin
                                     wQuant1 := SqlCdsConsumoWQTDE3.AsCurrency;
                                     wMod1   := SqlCdsConsumoPRD_DCVAR3.AsString;
                                 end;
                              if(wI = 4)and(SqlCdsConsumoWQTDE4.AsCurrency > 0)then
                                 begin
                                     wQuant1 := SqlCdsConsumoWQTDE4.AsCurrency;
                                     wMod1   := SqlCdsConsumoPRD_DCVAR4.AsString;
                                 end;
                              if(wI = 5)and(SqlCdsConsumoWQTDE5.AsCurrency > 0)then
                                 begin
                                     wQuant1 := SqlCdsConsumoWQTDE5.AsCurrency;
                                     wMod1   := SqlCdsConsumoPRD_DCVAR5.AsString;
                                 end;
                              if(wI = 6)and(SqlCdsConsumoWQTDE6.AsCurrency > 0)then
                                 begin
                                     wQuant1 := SqlCdsConsumoWQTDE6.AsCurrency;
                                     wMod1   := SqlCdsConsumoPRD_DCVAR6.AsString;
                                 end;
                              if(wI = 7)and(SqlCdsConsumoWQTDE7.AsCurrency > 0)then
                                 begin
                                     wQuant1 := SqlCdsConsumoWQTDE7.AsCurrency;
                                     wMod1   := SqlCdsConsumoPRD_DCVAR7.AsString;
                                 end;
                              if(wI = 8)and(SqlCdsConsumoWQTDE8.AsCurrency > 0)then
                                 begin
                                     wQuant1 := SqlCdsConsumoWQTDE8.AsCurrency;
                                     wMod1   := SqlCdsConsumoPRD_DCVAR8.AsString;
                                 end;
                              wRefer       := SqlCdsConsumoPRD_REFER.AsString;
                              wPedido      := SqlCdsConsumoPED_CODIGO.AsString;
                              wDescri      := SqlCdsConsumoPRD_DESCRI.AsString;
                              wUnd         := SqlCdsConsumoPRD_UND.AsString;
                              wCusto       := SqlCdsConsumoPRD_PCUSTO.AsCurrency;
                              wEmp         := dbInicio.Empresa.EMP_CODIGO;
                              //
                              if (wQuant1>0) then
                                 begin
                                     {Considera o Estoque}
                                     if (wConsiderar = 'S') then
                                        begin
                                            try
                                              wSaldoEstoque := Retorna_Saldo_Estoque_Variacao(IntToStr(wI),
                                                                                              SqlCdsConsumoPRD_REFER.AsString,
                                                                                              SqlCdsConsumoEMP_CODIGO.AsString,
                                                                                              ValorAmericano(FloatToStr(wQuant1)));
                                              //
                                              if (wSaldoEstoque >= wQuant1) then
                                                 begin
                                                     wQtdeProduzirPe := 0;
                                                 end
                                              else
                                                 begin
                                                     wQtdeProduzirPe := (wQuant1 - wSaldoEstoque);
                                                 end;
                                              //
                                            except on E:EDataBaseError do
                                               uteis.erro  (pchar('Erro ao baixar o estoque da variacao ! '+e.message));
                                            end;
                                        end
                                     else
                                        begin
                                            {Não Considera o Estoque e o PA E PI esta marcado}
                                            if (wBtn_Pa = True) and (wBtn_Pi = True) then
                                               begin
                                                   wQtdeProduzirPe := wQuant1;
                                               end
                                            else
                                               begin
                                                   {PA - não esta marcado - Considera}
                                                   if (wBtn_Pa = False) then
                                                      begin
                                                          if (SqlCdsConsumoPTI_SIGLA.AsString = 'PA') then
                                                             begin
                                                                 wQtdeProduzirPe := (wQuant1 - wSaldoEstoque);
                                                             end;
                                                      end
                                                   else
                                                      begin
                                                          if (SqlCdsConsumoPTI_SIGLA.AsString = 'PA') then
                                                             begin
                                                                 wQtdeProduzirPe := (wQuant1);
                                                             end;
                                                      end;
                                                   {PI - não esta marcado}
                                                   if (wBtn_PI = False) then
                                                      begin
                                                          if (SqlCdsConsumoPTI_SIGLA.AsString = 'PI') then
                                                             begin
                                                                 wQtdeProduzirPe := (wQuant1 - wSaldoEstoque);
                                                             end;
                                                      end
                                                   else
                                                      begin
                                                          if (SqlCdsConsumoPTI_SIGLA.AsString = 'PI') then
                                                             begin
                                                                 wQtdeProduzirPe := (wQuant1);
                                                             end;
                                                      end;
                                                   //
                                               end;
                                        end;
                                     //
                                     Inserir_Separacao_Previsao(wEmp,
                                                                wPedido,
                                                                wRefer,
                                                                wUnd,
                                                                wMod1,
                                                                wQtdeProduzirPe,
                                                                wI,
                                                                wCusto);
                                 end;
                              //
                          end;
                     end
                  else
                     begin
                         wMod1        := SqlCdsConsumoPRD_DCVAR1.AsString;
                         wI           := 1;
                         wQuant1      := SqlCdsConsumoWQTDE.AsCurrency;
                         wRefer       := SqlCdsConsumoPRD_REFER.AsString;
                         wPedido      := SqlCdsConsumoPED_CODIGO.AsString;
                         wDescri      := SqlCdsConsumoPRD_DESCRI.AsString;
                         wUnd         := SqlCdsConsumoPRD_UND.AsString;
                         wCusto       := SqlCdsConsumoPRD_PCUSTO.AsCurrency;
                         wEmp         := dbInicio.Empresa.EMP_CODIGO;
                         //
                         if (wQuant1>0) then
                            begin
                                {Considera Estoque}
                                if (wConsiderar = 'S') then
                                   begin
                                       try
                                         wSaldoEstoque := Retorna_Saldo_Estoque_Variacao('0',
                                                                                         SqlCdsConsumoPRD_REFER.AsString,
                                                                                         SqlCdsConsumoEMP_CODIGO.AsString,
                                                                                         ValorAmericano(FloatToStr(wQuant1)));
                                         //
                                         if (wSaldoEstoque >= wQuant1) then
                                            begin
                                                wQtdeProduzirPe := 0;
                                            end
                                         else
                                            begin
                                                wQtdeProduzirPe := (wQuant1 - wSaldoEstoque);
                                            end;
                                         //
                                       except on E:EDataBaseError do
                                          uteis.erro  (pchar('Erro ao verificar o saldo do estoque da variacao ! '+e.message));
                                       end;
                                   end
                                else
                                   begin
                                       {Não Considera o Estoque e o PA E PI esta marcado}
                                       if (wBtn_Pa = True) and (wBtn_Pi = True) then
                                          begin
                                              wQtdeProduzirPe := wQuant1;
                                          end
                                       else
                                          begin
                                              {PA - não esta marcado - Considera}
                                              if (wBtn_Pa = False) then
                                                 begin
                                                     if (SqlCdsConsumoPTI_SIGLA.AsString = 'PA') then
                                                        begin
                                                            wQtdeProduzirPe := (wQuant1 - wSaldoEstoque);
                                                        end;
                                                 end
                                              else
                                                 begin
                                                     if (SqlCdsConsumoPTI_SIGLA.AsString = 'PA') then
                                                        begin
                                                            wQtdeProduzirPe := (wQuant1);
                                                        end;
                                                 end;
                                              {PI - não esta marcado}
                                              if (wBtn_PI = False) then
                                                 begin
                                                     if (SqlCdsConsumoPTI_SIGLA.AsString = 'PI') then
                                                        begin
                                                            wQtdeProduzirPe := (wQuant1 - wSaldoEstoque);
                                                        end;
                                                 end
                                              else
                                                 begin
                                                     if (SqlCdsConsumoPTI_SIGLA.AsString = 'PI') then
                                                        begin
                                                            wQtdeProduzirPe := (wQuant1);
                                                        end;
                                                 end;
                                              //
                                          end;
                                   end;
                                //
                                Inserir_Separacao_Previsao(wEmp,
                                                           wPedido,
                                                           wRefer,
                                                           wUnd,
                                                           wMod1,
                                                           wQtdeProduzirPe,
                                                           wI,
                                                           wCusto);
                            end;
                         //
                     end;
                  //
                SqlCdsConsumo.Next;
              end;
         end
      else
         begin
             uteis.aviso('Não há pedidos para gerar simulação !');
             DBGridGrupo.SetFocus;
         end;
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao fazer a separação ! '+e.Message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormOrdServCentroB.GerarPrevisao;
begin
    try
      wSql1 := 'SELECT T2.EMP_CODIGO,T2.PRD_REFER,T2.PED_CODIGO,T2.PS2_FICHA,P1.PRD_DESCRI,P1.PRD_UND,P2.PTI_SIGLA,P1.PRD_PCUSTO,P1.PRD_DCVAR1,P1.PRD_DCVAR2,P1.PRD_DCVAR3,P1.PRD_DCVAR4,P1.PRD_DCVAR5,P1.PRD_DCVAR6,P1.PRD_DCVAR7,P1.PRD_DCVAR8,';
      wSql2 := 'P1.PRD_ESTOQUE,P1.PRD_ENTRADA,P1.PRD_SAIDA,P1.PRD_PENDENTE,P1.PRD_RESERVA,P1.PRD_SIMULACAO,T2.PS2_QTDE  AS WQTDE,T2.PS2_QTDE1 AS WQTDE1,T2.PS2_QTDE2 AS WQTDE2,T2.PS2_QTDE3 AS WQTDE3,T2.PS2_QTDE4 AS WQTDE4,';
      wSql3 := 'T2.PS2_QTDE5 AS WQTDE5,T2.PS2_QTDE6 AS WQTDE6,T2.PS2_QTDE7 AS WQTDE7,T2.PS2_QTDE8 AS WQTDE8 FROM PSV_IT02 T2 LEFT JOIN PRD0000 P1 ON (T2.PRD_REFER = P1.PRD_REFER) LEFT JOIN PRD_TIPO P2 ON (P1.PTI_CODIGO = P2.PTI_CODIGO)';
      //
//      wSql1 := 'SELECT R1.PSV_REGISTRO,R1.PRD_REFER,P1.PRD_DESCRI,R1.PSV_MODE1,R1.PSV_QUANT1 FROM PSV0000 R1 LEFT JOIN PRD0000 P1 ON (P1.PRD_REFER = R1.PRD_REFER) ';
      //
      wOrdem:= 'T2.PED_CODIGO,T2.PRD_REFER';
      //
      SqlCdsConsumo.Close;
      SqlCdsConsumo.CommandText := SQLDEF('PRODUTOS',wSql1+wSql2+wSql3,'',wOrdem,'T2.');
      SqlCdsConsumo.Open;
      SqlCdsConsumo.First;
      SqlCdsConsumo.DisableControls;
      while not SqlCdsConsumo.Eof do
       begin
           if (SqlCdsConsumoPS2_FICHA.AsString = 'S') then
              begin
                  //
                  xRefer        := SqlCdsConsumoPRD_REFER.AsString;
                  //
                  wProduzirQtde := 0;
                  if (FrmMenu.wVariacoes = 'S') then
                     begin
                         if (SqlCdsConsumoWQTDE1.AsCurrency>0) then
                            wProduzirQtde := SqlCdsConsumoWQTDE1.AsCurrency;
                         if (SqlCdsConsumoWQTDE2.AsCurrency>0) then
                            wProduzirQtde := wProduzirQtde + SqlCdsConsumoWQTDE2.AsCurrency;
                         if (SqlCdsConsumoWQTDE3.AsCurrency>0) then
                            wProduzirQtde := wProduzirQtde + SqlCdsConsumoWQTDE3.AsCurrency;
                         if (SqlCdsConsumoWQTDE4.AsCurrency>0) then
                            wProduzirQtde := wProduzirQtde + SqlCdsConsumoWQTDE4.AsCurrency;
                         if (SqlCdsConsumoWQTDE5.AsCurrency>0) then
                            wProduzirQtde := wProduzirQtde + SqlCdsConsumoWQTDE5.AsCurrency;
                         if (SqlCdsConsumoWQTDE6.AsCurrency>0) then
                            wProduzirQtde := wProduzirQtde + SqlCdsConsumoWQTDE6.AsCurrency;
                         if (SqlCdsConsumoWQTDE7.AsCurrency>0) then
                            wProduzirQtde := wProduzirQtde + SqlCdsConsumoWQTDE7.AsCurrency;
                         if (SqlCdsConsumoWQTDE8.AsCurrency>0) then
                            wProduzirQtde := wProduzirQtde + SqlCdsConsumoWQTDE8.AsCurrency;
                     end
                  else
                     begin
                         wProduzirQtde := SqlCdsConsumoWQTDE.AsCurrency;
                     end;
                  //
                  wSaldoEstoque := Retorna_Saldo_Estoque(SqlCdsConsumoPRD_REFER.AsString,
                                                         SqlCdsConsumoEMP_CODIGO.AsString,
                                                         ValorAmericano(FloatToStr(wProduzirQtde)));
                  //
                  if (wConsiderar = 'S') then
                     begin
                         if (wSaldoEstoque >= wProduzirQtde) then
                            begin
                                wQtdeProduzirPe := 0;
                            end
                         else
                            begin
                                wQtdeProduzirPe := (wProduzirQtde - wSaldoEstoque);
                            end;
                     end
                  else
                     begin
                         {Não Considera o Estoque e o PA E PI esta marcado}
                         if (wBtn_Pa = True) and (wBtn_Pi = True) then
                            begin
                                wQtdeProduzirPe := wProduzirQtde;
                            end
                         else
                            begin
                                {PA - não esta marcado - Considera}
                                if (wBtn_Pa = False) then
                                   begin
                                       if (SqlCdsConsumoPTI_SIGLA.AsString = 'PA') then
                                          begin
                                              wQtdeProduzirPe := (wProduzirQtde - wSaldoEstoque);
                                          end;
                                   end
                                else
                                   begin
                                       if (SqlCdsConsumoPTI_SIGLA.AsString = 'PA') then
                                          begin
                                              wQtdeProduzirPe := (wProduzirQtde);
                                          end;
                                   end;
                                {PI - não esta marcado}
                                if (wBtn_PI = False) then
                                   begin
                                       if (SqlCdsConsumoPTI_SIGLA.AsString = 'PI') then
                                          begin
                                              wQtdeProduzirPe := (wProduzirQtde - wSaldoEstoque);
                                          end;
                                   end
                                else
                                   begin
                                       if (SqlCdsConsumoPTI_SIGLA.AsString = 'PI') then
                                          begin
                                              wQtdeProduzirPe := (wProduzirQtde);
                                          end;
                                   end;
                            end;
                         //
                     end;
                  {Verifica se o Item vai precisar gerar simulacao}
                  if (wQtdeProduzirPe>0) then
                     begin
                         IncluirItensSimula(SqlCdsConsumoPRD_REFER.AsString,
                                            '',
                                            SqlCdsConsumoPED_CODIGO.AsString,
                                            wQtdeProduzirPe,
                                            SqlCdsConsumoPRD_PCUSTO.AsCurrency,
                                            SqlCdsConsumoPRD_ESTOQUE.AsCurrency,
                                            SqlCdsConsumoPRD_ENTRADA.AsCurrency,
                                            SqlCdsConsumoPRD_SAIDA.AsCurrency,
                                            SqlCdsConsumoPRD_PENDENTE.AsCurrency,
                                            SqlCdsConsumoPRD_RESERVA.AsCurrency);
                         //
                         BuscaItensNivel(0,SqlCdsConsumoPRD_REFER.AsString,wQtdeProduzirPe);
                     end;
                  //
              end;
           SqlCdsConsumo.Next;
       end;
       SqlCdsConsumo.EnableControls;
    except on E:EDataBaseError do
      uteis.erro  (pchar('Erro ao abrir a tabela !'+e.message));
    end;
end;

procedure TFormOrdServCentroB.IncluirItensSimula(wRefer,wReferItens,wPedido :String; wConsumir,wCusto,wEstoque,wEntrada,wSaida,wPendente,wReserva : Currency);
Var
  pQtdeProduz,
  pSaldoSimulacao : Double;

begin
    Screen.Cursor := crHourGlass;
    try
      DmProducao.CdsPrevItens.Close;
      DmProducao.CdsPrevItens.CommandText := 'SELECT I1.* FROM PSV_IT01 I1 WHERE I1.PRD_REFER = '''+wRefer+''' AND I1.PRD_REFER_ITENS = '''+wReferItens+''' ORDER BY I1.PRD_REFER,I1.PRD_REFER_ITENS';
      DmProducao.CdsPrevItens.Open;
      //
      if DmProducao.CdsPrevItens.IsEmpty = false then
         begin
             DmProducao.CdsPrevItens.Edit;
             DmProducao.CdsPrevItensPSI_CONSUMO.AsCurrency     := DmProducao.CdsPrevItensPSI_CONSUMO.AsCurrency + wConsumir;
             DmProducao.CdsPrevItensPSI_ESTRESERVA.AsCurrency  := DmProducao.CdsPrevItensPSI_ESTRESERVA.AsCurrency + wReserva;
             //
             pQtdeProduz := (wConsumir - DmProducao.CdsPrevItensPSI_ESTANTEC.AsCurrency);
             //
             if (pQtdeProduz < 0) then
                begin
                    DmProducao.CdsPrevItensPSI_FALTA.AsCurrency := (DmProducao.CdsPrevItensPSI_ESTANTEC.AsCurrency - wConsumir);
                    DmProducao.CdsPrevItensPSI_STATUS.AsString  := 'C'; //Comprar produtos
                end
             else
                begin
                    DmProducao.CdsPrevItensPSI_FALTA.AsCurrency := 0;
                    DmProducao.CdsPrevItensPSI_STATUS.AsString  := 'P'; //produzir o produtos
                end;
         end
      else
         begin
             // novo registro p/ este codigo
             DmProducao.CdsPrevItens.Insert;
             DmProducao.CdsPrevItensPRD_REFER.AsString          := wRefer;
             DmProducao.CdsPrevItensPRD_REFER_ITENS.AsString    := IIF(wReferItens='',wRefer,wReferItens);
             DmProducao.CdsPrevItensPED_CODIGO.AsString         := wPedido;
             DmProducao.CdsPrevItensPSI_CUSTO.AsCurrency        := wCusto;
             DmProducao.CdsPrevItensPSI_ESTFISICO.AsCurrency    := (wEstoque + wEntrada)- wSaida;
             DmProducao.CdsPrevItensPSI_CONSUMO.AsCurrency      := wConsumir;
             DmProducao.CdsPrevItensPSI_ESTANTEC.AsCurrency     := DmProducao.CdsPrevItensPSI_ESTFISICO.AsCurrency + wPendente;
             DmProducao.CdsPrevItensPSI_ESTRESERVA.AsCurrency   := DmProducao.CdsPrevItensPSI_ESTRESERVA.AsCurrency + wReserva;
             //
             pSaldoSimulacao := (wEstoque + wEntrada)-(wSaida + DmProducao.CdsPrevItensPSI_ESTRESERVA.AsCurrency);
             //
             pQtdeProduz := (DmProducao.CdsPrevItensPSI_ESTANTEC.AsCurrency - wConsumir);
             //
             if (pQtdeProduz < 0) then
                begin
                    DmProducao.CdsPrevItensPSI_FALTA.AsCurrency := pQtdeProduz; //(DmProducao.CdsPrevItensPSI_ESTANTEC.AsCurrency - wConsumir);
                    DmProducao.CdsPrevItensPSI_STATUS.AsString  := 'C'; //'C'; //produzir o produtos
                end
             else
                begin
                    DmProducao.CdsPrevItensPSI_FALTA.AsCurrency := 0;
                    DmProducao.CdsPrevItensPSI_STATUS.AsString  := 'P'; //'P';//Comprar o produtos
                end;
         end;
      DmProducao.CdsPrevItensPSI_DISPONIVEL.AsCurrency := ((DmProducao.CdsPrevItensPSI_ESTFISICO.AsCurrency + DmProducao.CdsPrevItensPSI_ESTANTEC.AsCurrency)-DmProducao.CdsPrevItensPSI_FALTA.AsCurrency)-DmProducao.CdsPrevItensPSI_CONSUMO.AsCurrency;
      DmProducao.CdsPrevItens.ApplyUpdates(0);
      DmProducao.CdsPrevItens.Close;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao gravar os itens ! '+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormOrdServCentroB.BuscaItensNivel(wNivel: Integer; wRefer: String; wQtdeProduzir : Double);
begin
    wSql1      := 'SELECT I1.PRD_REFER,I1.PRD_REFER_ITENS,P1.PRD_DESCRI,P1.PRD_PCUSTO,P1.PRD_ESTOQUE,P1.PRD_ENTRADA,P1.PRD_SAIDA,P1.PRD_PENDENTE,P1.PRD_RESERVA,P1.PRD_UND,P2.PTI_SIGLA,';
    wSql2      := 'I1.FTI_MODE1,I1.FTI_MODE2,I1.FTI_MODE3,I1.FTI_MODE4,I1.FTI_MODE5,I1.FTI_MODE6,I1.FTI_MODE7,I1.FTI_MODE8,I1.FTI_UC FROM FTC_IT01 I1 ';
    wSql3      := 'LEFT JOIN PRD0000 P1 ON (I1.PRD_REFER_ITENS = P1.PRD_REFER) LEFT JOIN PRD_TIPO P2 ON (P1.PTI_CODIGO = P2.PTI_CODIGO) ';
    wSeleciona := 'WHERE I1.PRD_REFER = '''+wRefer+'''';
    wOrdem     := 'I1.PRD_REFER,P1.PRD_DESCRI';
    //
    CriarTabelaMemoria(1);
    //
    try
      try
        SqlCdsN1.Close;
        SqlCdsN1.CommandText := SQLDEF('FICHATECNICA',wSql1+wSql2+wSql3,wSeleciona,wOrdem,'I1.');
        SqlCdsN1.Open;
        if SqlCdsN1.IsEmpty = false then
           begin
               SqlCdsN1.First;
               while not SqlCdsN1.eof do
                begin
                    xRefer        := SqlCdsN1PRD_REFER.AsString;
                    xRefer_itens  := SqlCdsN1PRD_REFER_ITENS.AsString;
                    //
                    wConsumo := 0;
                    if (FrmMenu.wVariacoes = 'S') then
                       begin
                           if SqlCdsN1FTI_MODE1.AsString = 'X' then
                              wConsumo := SqlCdsConsumoWQTDE1.AsCurrency * SqlCdsN1FTI_UC.AsCurrency;
                           if SqlCdsN1FTI_MODE2.AsString = 'X' then
                              wConsumo := wConsumo+(SqlCdsConsumoWQTDE2.AsCurrency * SqlCdsN1FTI_UC.AsCurrency);
                           if SqlCdsN1FTI_MODE3.AsString = 'X' then
                              wConsumo := wConsumo+(SqlCdsConsumoWQTDE3.AsCurrency * SqlCdsN1FTI_UC.AsCurrency);
                           if SqlCdsN1FTI_MODE4.AsString = 'X' then
                              wConsumo := wConsumo+(SqlCdsConsumoWQTDE4.AsCurrency * SqlCdsN1FTI_UC.AsCurrency);
                           if SqlCdsN1FTI_MODE5.AsString = 'X' then
                              wConsumo := wConsumo+(SqlCdsConsumoWQTDE5.AsCurrency * SqlCdsN1FTI_UC.AsCurrency);
                           if SqlCdsN1FTI_MODE6.AsString = 'X' then
                              wConsumo := wConsumo+(SqlCdsConsumoWQTDE6.AsCurrency * SqlCdsN1FTI_UC.AsCurrency);
                           if SqlCdsN1FTI_MODE7.AsString = 'X' then
                              wConsumo := wConsumo+(SqlCdsConsumoWQTDE7.AsCurrency * SqlCdsN1FTI_UC.AsCurrency);
                           if SqlCdsN1FTI_MODE8.AsString = 'X' then
                              wConsumo := wConsumo+(SqlCdsConsumoWQTDE8.AsCurrency * SqlCdsN1FTI_UC.AsCurrency);
                       end
                    else
                       begin
//                           wConsumo := (SqlCdsConsumoWQTDE.AsCurrency * SqlCdsN1FTI_UC.AsCurrency);
                           wConsumo := (wQtdeProduzir * SqlCdsN1FTI_UC.AsCurrency);
                       end;
                    if wConsumo>0 then
                       begin
                           IncluirItensSimula(SqlCdsN1PRD_REFER.AsString,
                                              SqlCdsN1PRD_REFER_ITENS.AsString,
                                              SqlCdsConsumoPED_CODIGO.AsString,
                                              wConsumo,
                                              SqlCdsN1PRD_PCUSTO.AsCurrency,
                                              SqlCdsN1PRD_ESTOQUE.AsCurrency,
                                              SqlCdsN1PRD_ENTRADA.AsCurrency,
                                              SqlCdsN1PRD_SAIDA.AsCurrency,
                                              SqlCdsN1PRD_PENDENTE.AsCurrency,
                                              SqlCdsN1PRD_RESERVA.AsCurrency);
                           if (SqlCdsN1PTI_SIGLA.AsString = 'PA') OR (SqlCdsN1PTI_SIGLA.AsString = 'PI') then
                              begin
                                 TesteNIvel(1,SqlCdsN1PRD_REFER_ITENS.AsString,wConsumo);
                              end;
                       end;
                    SqlCdsN1.Next;
                end;
           end;
      except on E:EDataBaseError do
         uteis.erro  (pchar('Erro ao Localizar o Item do Nivel 1 ! '+e.message));
      end;
    finally
       DestrTabelaMemoria(1);
    end;
end;

procedure TFormOrdServCentroB.Bit_GeraOPClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    wBtn_Cancel   := 'N';
    try
      try
        if SqlCdsPs2.IsEmpty = true then
           begin
               uteis.aviso('Não existe referência para gerar ordem de produção !');
               DBGridGrupo.SetFocus;
               exit;
           end;
        if (RAD_OA.Checked = False) then
           begin
               {Chama Formulario Considerar}
               try
                 FormOrdServConsiderar := TFormOrdServConsiderar.Create(Application);
                 FormOrdServConsiderar.ShowModal;
               finally
                  FormOrdServConsiderar.Destroy;
                  FormOrdServConsiderar := nil;
               end;
           end
        else
           begin
               wConsiderar := 'N';
           end;
        if (wBtn_Cancel = 'N') then
           begin
               {ZERAR O GENERATORS CASO A TABELA OSV_IT02 ESTIVER VAZIA}
               DataCadastros.sqlUpdate.Close;
               DataCadastros.SqlUpdate.sql.text :='SELECT MAX(OSI_REGISTRO) AS wZerar FROM OSV_IT02';
               DataCadastros.sqlUpdate.Open;
               if DataCadastros.sqlUpdate.FieldByName('wZerar').IsNull = true then
                  begin
                      DataCadastros.sqlUpdate.Close;
                      DataCadastros.SqlUpdate.sql.text :='SET GENERATOR GEN_OSV_IT02 TO 0';
                      DataCadastros.sqlUpdate.Execsql;
                  end;
               //
               GerarOp;
               //
           end;
      except on E:EDataBaseError do
         uteis.erro  (pchar('Erro ao gerar a ordens de producao ! '+e.Message));
      end;
    finally
       begin
           if (wBtn_Cancel = 'N') then
              begin
                  uteis.aviso('Ordem de Produção gerado com sucesso ! ');
                  LimparGrids;
                  if (Rad_Pedido.checked ) then
                     EdtPedido.SetFocus;
                  if (Rad_Item.checked ) then
                     EdtReferencia.SetFocus;
              end
           else
              begin
                  if (Rad_Pedido.checked ) then
                     EdtPedido.SetFocus;
                  if (Rad_Item.checked ) then
                     EdtReferencia.SetFocus;
              end;
       end;
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormOrdServCentroB.TesteNIvel(wNivel:Integer;wRefer: String;wQtdes:Double);
Var
  wConsumo    : Double;
//  sTabelaNivel: TSQLClientDataSet;
  sReferencia : String;
begin
    //
    sReferencia := '';
    iNivelTabela:= wNivel;
    //
    wSql1      := 'SELECT I1.PRD_REFER,I1.PRD_REFER_ITENS,P1.PRD_DESCRI,P1.PRD_PCUSTO,P1.PRD_ESTOQUE,P1.PRD_ENTRADA,P1.PRD_SAIDA,P1.PRD_PENDENTE,P1.PRD_RESERVA,P1.PRD_UND,P2.PTI_SIGLA,';
    wSql2      := 'I1.FTI_MODE1,I1.FTI_MODE2,I1.FTI_MODE3,I1.FTI_MODE4,I1.FTI_MODE5,I1.FTI_MODE6,I1.FTI_MODE7,I1.FTI_MODE8,I1.FTI_UC FROM FTC_IT01 I1 ';
    wSql3      := 'LEFT JOIN PRD0000 P1 ON (I1.PRD_REFER_ITENS = P1.PRD_REFER) LEFT JOIN PRD_TIPO P2 ON (P1.PTI_CODIGO = P2.PTI_CODIGO) ';
    wSeleciona := 'WHERE I1.PRD_REFER = '''+wRefer+'''';
    wOrdem     := 'I1.PRD_REFER,I1.PRD_REFER_ITENS';
    try
      tSqlNivel[iNivelTabela].Close;
      tSqlNivel[iNivelTabela].CommandText := SQLDEF('FICHATECNICA',wSql1+wSql2+wSql3,wSeleciona,wOrdem,'I1.');
      tSqlNivel[iNivelTabela].Open;
      if (not tSqlNivel[iNivelTabela].IsEmpty) then
         begin
             tSqlNivel[iNivelTabela].First;
             while (not tSqlNivel[iNivelTabela].eof) do
              begin
                  wConsumo := 0;
                  if (FrmMenu.wVariacoes = 'S') then
                     begin
                         if tSqlNivel[iNivelTabela].FieldByName('FTI_MODE1').AsString = 'X' then
//                            wConsumo := SqlCdsConsumoWQTDE1.AsCurrency * tSqlNivel[iNivelTabela].FieldByName('FTI_UC').AsCurrency;
                            wConsumo := wQtdes * tSqlNivel[iNivelTabela].FieldByName('FTI_UC').AsCurrency;
                         if tSqlNivel[iNivelTabela].FieldByName('FTI_MODE2').AsString = 'X' then
//                            wConsumo := wConsumo+(SqlCdsConsumoWQTDE2.AsCurrency * tSqlNivel[iNivelTabela].FieldByName('FTI_UC').AsCurrency);
                            wConsumo := wConsumo+(wQtdes * tSqlNivel[iNivelTabela].FieldByName('FTI_UC').AsCurrency);
                         if tSqlNivel[iNivelTabela].FieldByName('FTI_MODE3').AsString = 'X' then
                            wConsumo := wConsumo+(wQtdes * tSqlNivel[iNivelTabela].FieldByName('FTI_UC').AsCurrency);
                         if tSqlNivel[iNivelTabela].FieldByName('FTI_MODE4').AsString = 'X' then
                            wConsumo := wConsumo+(wQtdes * tSqlNivel[iNivelTabela].FieldByName('FTI_UC').AsCurrency);
                         if tSqlNivel[iNivelTabela].FieldByName('FTI_MODE5').AsString = 'X' then
                            wConsumo := wConsumo+(wQtdes * tSqlNivel[iNivelTabela].FieldByName('FTI_UC').AsCurrency);
                         if tSqlNivel[iNivelTabela].FieldByName('FTI_MODE6').AsString = 'X' then
                            wConsumo := wConsumo+(wQtdes * tSqlNivel[iNivelTabela].FieldByName('FTI_UC').AsCurrency);
                         if tSqlNivel[iNivelTabela].FieldByName('FTI_MODE7').AsString = 'X' then
                            wConsumo := wConsumo+(wQtdes * tSqlNivel[iNivelTabela].FieldByName('FTI_UC').AsCurrency);
                         if tSqlNivel[iNivelTabela].FieldByName('FTI_MODE8').AsString = 'X' then
                            wConsumo := wConsumo+(wQtdes * tSqlNivel[iNivelTabela].FieldByName('FTI_UC').AsCurrency);
                     end
                  else
                     begin
                         wConsumo := (wQtdes * tSqlNivel[iNivelTabela].FieldByName('FTI_UC').AsCurrency);
                     end;
                  if wConsumo>0 then
                     begin
                         IncluirItensSimula(tSqlNivel[iNivelTabela].FieldByName('PRD_REFER').AsString,
                                            tSqlNivel[iNivelTabela].FieldByName('PRD_REFER_ITENS').AsString,
                                            SqlCdsConsumoPED_CODIGO.AsString,
                                            wConsumo,
                                            tSqlNivel[iNivelTabela].FieldByName('PRD_PCUSTO').AsCurrency,
                                            tSqlNivel[iNivelTabela].FieldByName('PRD_ESTOQUE').AsCurrency,
                                            tSqlNivel[iNivelTabela].FieldByName('PRD_ENTRADA').AsCurrency,
                                            tSqlNivel[iNivelTabela].FieldByName('PRD_SAIDA').AsCurrency,
                                            tSqlNivel[iNivelTabela].FieldByName('PRD_PENDENTE').AsCurrency,
                                            tSqlNivel[iNivelTabela].FieldByName('PRD_RESERVA').AsCurrency);
                         if (tSqlNivel[iNivelTabela].FieldByName('PTI_SIGLA').AsString = 'PA')
                         OR (tSqlNivel[iNivelTabela].FieldByName('PTI_SIGLA').AsString = 'PI') then
                            begin
                               sReferencia := tSqlNivel[iNivelTabela].FieldByName('PRD_REFER_ITENS').AsString;
                               Inc(iNivelTabela);
                               CriarTabelaMemoria(iNivelTabela);
                               TesteNIvel(iNivelTabela,sReferencia,wConsumo);
                            end;
                     end;
                  //
                  tSqlNivel[iNivelTabela].Next;
              end;
           if (iNivelTabela > 1) then
              begin
                 DestrTabelaMemoria(iNivelTabela);
                 Dec(iNivelTabela);
              end;
         end;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao Localizar o Item do Nivel 1 ! '+e.message));
    end;
end;

procedure TFormOrdServCentroB.CriarTabelaMemoria(iNivel:Integer);
begin
    tSqlNivel[iNivel]              := TSQLClientDataSet.Create(Application);
    tSqlNivel[iNivel].DBConnection := DataCadastros.SQLConnection1;
    tSqlNivel[iNivel].Name         := 'Nivel'+IntToStr(iNivel);
end;

procedure TFormOrdServCentroB.DestrTabelaMemoria(iNivel: Integer);
begin
    tSqlNivel[iNivel].Close;
    FreeAndNil(tSqlNivel[iNivel]);
end;

procedure TFormOrdServCentroB.DBGridItensDblClick(Sender: tObject);
begin
    SelecionouItem;
end;

procedure TFormOrdServCentroB.EdtReferenciaClick(Sender: tObject);
begin
    EdtReferencia.SelectAll;
    wSelecionouItem := False;
end;

procedure TFormOrdServCentroB.DBGridItensDrawColumnCell(Sender: tObject;
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

procedure TFormOrdServCentroB.SqlCdsPs2CalcFields(DataSet: TDataSet);
begin
    if (SqlCdsPs2PS2_FICHA.AsString = 'S') then
       SqlCdsPs2PS2_FICHA_CC.AsBoolean := True
    else
       SqlCdsPs2PS2_FICHA_CC.AsBoolean := False;
end;

procedure TFormOrdServCentroB.DBGridItensKeyPress(Sender: tObject;
  var Key: Char);
begin
    if (Key=#13) then
       begin
           SelecionouItem;
           key := #0;
       end;
end;

procedure TFormOrdServCentroB.SelecionouItem;
begin
    if (Rad_Item.checked ) then
       begin
           if (SqlCdsPs2PED_CODIGO.AsString = '') then
              begin
                  wSelecionouItem        := True;
                  EdtReferencia.Text     := SqlCdsPs2PRD_REFER.AsString;
                  EdtReferencia.ReadOnly := True;
                  EdtReferencia.TabStop  := False;
                  EdtReferencia.Color    := $00D7D7D7;
                  CurrQtde.Value         := SqlCdsPs2PS2_QTDE.AsCurrency;
                  CurrQtde.SetFocus;
                  CurrQtde.SelectAll;
              end
           else
              begin
                  uteis.aviso('Este item não pode ser alterado... Pertence a um pedido !');
                  DBGridItens.SetFocus;
                  wSelecionouItem := False;
              end;
       end
    else
       begin
           uteis.aviso('Seleciona Abrir Ordem Produção Por Produto !');
           Rad_Item.SetFocus;
       end;
end;

procedure TFormOrdServCentroB.Ativa1Click(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    try
      wSql1      := 'SELECT T1.PRD_REFER FROM FTC0000 T1 ';
      wSeleciona := 'WHERE T1.PRD_REFER = '''+SqlCdsPs2PRD_REFER.AsString+'''';
      wOrdem     := 'T1.PRD_REFER';
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('FICHATECNICA',wSql1,wSeleciona,wOrdem,'T1.');
      DataCadastros.sqlUpdate.Open;
      if (DataCadastros.sqlUpdate.IsEmpty = False) then
         begin
             wTemFicha  := 'S';
             wSql1      := 'UPDATE PSV_IT02 SET PS2_FICHA = '''+wTemFicha+'''';
             wSeleciona := 'WHERE PRD_REFER = '''+SqlCdsPs2PRD_REFER.AsString+'''';
             DataCadastros.sqlUpdate.Close;
             DataCadastros.SqlUpdate.sql.text :=SQLDEF('FICHATECNICA',wSql1,wSeleciona,'','');
             DataCadastros.sqlUpdate.Execsql;
             SqlCdsPs2.Refresh;
         end;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao atualizar a ficha tecnica ! '+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormOrdServCentroB.LimpaSimulacao;
begin
    try
      {Excluir os produtos da tabela PSV0000}
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :='DELETE FROM PSV0000 ';
      DataCadastros.sqlUpdate.Execsql;
      {Excluir os itens da tabela PSV_IT01}
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :='DELETE FROM PSV_IT01 ';
      DataCadastros.sqlUpdate.Execsql;
      {ZERA OS GENERATORS GEN_PSV0000}
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :='SET GENERATOR GEN_PSV0000 TO 0';
      DataCadastros.sqlUpdate.Execsql;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao limpar as tabelas ! '+e.message));
    end;
end;

procedure TFormOrdServCentroB.BuscaFicha(wPRODUTO: String);
begin
    Screen.Cursor := crHourGlass;
    try
      wSql1      := 'Select F1.*,P1.PRD_DESCRI,P1.PRD_PCUSTO,P1.PRD_UND,P1.PRD_DCVAR1,P1.PRD_DCVAR2,P1.PRD_DCVAR3,P1.PRD_DCVAR4,P1.PRD_DCVAR5,P1.PRD_DCVAR6,P1.PRD_DCVAR7,P1.PRD_DCVAR8 ';
      wSql2      := 'from FTC0000 F1 JOIN PRD0000 P1 ON F1.PRD_REFER = P1.PRD_REFER ';
      //
      wSeleciona := 'WHERE F1.PRD_REFER = '''+wPRODUTO+'''';
      //
      wOrdem     := 'F1.PRD_REFER';
      //
      SqlCdsBuscaFicha.Close;
      SqlCdsBuscaFicha.CommandText := SQLDEF('FICHATECNICA',wSql1+wSql2,wSeleciona,wOrdem,'F1.');
      SqlCdsBuscaFicha.Open;
    except on E:EdatabaseError do
      uteis.erro  (pchar('Erro ao localizar a ficha técnica !'+e.Message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormOrdServCentroB.GerarOp;
Var
  wX : Integer;
begin
    Screen.Cursor := crHourGlass;
    try
      //
      wSql1 := 'SELECT T2.EMP_CODIGO,T2.PRD_REFER,T2.PED_CODIGO,T2.PS2_FICHA,P1.PRD_DESCRI,P1.PRD_UND,P2.PTI_SIGLA,P1.PRD_PCUSTO,P1.PRD_DCVAR1,P1.PRD_DCVAR2,P1.PRD_DCVAR3,P1.PRD_DCVAR4,P1.PRD_DCVAR5,P1.PRD_DCVAR6,P1.PRD_DCVAR7,P1.PRD_DCVAR8,';
      wSql2 := 'P1.PRD_ESTOQUE,P1.PRD_ENTRADA,P1.PRD_SAIDA,P1.PRD_PENDENTE,P1.PRD_RESERVA,P1.PRD_SIMULACAO,T2.PS2_QTDE  AS WQTDE,T2.PS2_QTDE1 AS WQTDE1,T2.PS2_QTDE2 AS WQTDE2,T2.PS2_QTDE3 AS WQTDE3,T2.PS2_QTDE4 AS WQTDE4,';
      wSql3 := 'T2.PS2_QTDE5 AS WQTDE5,T2.PS2_QTDE6 AS WQTDE6,T2.PS2_QTDE7 AS WQTDE7,T2.PS2_QTDE8 AS WQTDE8 FROM PSV_IT02 T2 LEFT JOIN PRD0000 P1 ON (T2.PRD_REFER = P1.PRD_REFER) LEFT JOIN PRD_TIPO P2 ON (P1.PTI_CODIGO = P2.PTI_CODIGO)';
      //
      wOrdem:= 'T2.PED_CODIGO,T2.PRD_REFER';
      SqlCdsConsumo.Close;
      SqlCdsConsumo.CommandText := SQLDEF('PRODUTOS',wSql1+wSql2+wSql3,'',wOrdem,'T2.');
      SqlCdsConsumo.Open;
      SqlCdsConsumo.First;
      wDividir     := 0;
      wQtdePedido  := 0;
      wQtdeOP      := 0;
      wTotalQtdeOP := 0;
      wRestoOp     := 0;
      while not SqlCdsConsumo.eof do
       begin
           {Abre ordem de Producao}
           if (SqlCdsConsumoPS2_FICHA.AsString = 'S') then
              begin
                  wProduzirQtde := 0;
                  if (FrmMenu.wVariacoes = 'S') then
                     begin
                         if (SqlCdsConsumowQtde1.AsInteger>0) then
                            wProduzirQtde := SqlCdsConsumoWQTDE1.AsCurrency;
                         if (SqlCdsConsumowQtde2.AsInteger>0) then
                            wProduzirQtde := wProduzirQtde + SqlCdsConsumoWQTDE2.AsCurrency;
                         if (SqlCdsConsumowQtde3.AsInteger>0) then
                            wProduzirQtde := wProduzirQtde + SqlCdsConsumoWQTDE3.AsCurrency;
                         if (SqlCdsConsumowQtde4.AsInteger>0) then
                            wProduzirQtde := wProduzirQtde + SqlCdsConsumoWQTDE4.AsCurrency;
                         if (SqlCdsConsumowQtde5.AsInteger>0) then
                            wProduzirQtde := wProduzirQtde + SqlCdsConsumoWQTDE5.AsCurrency;
                         if (SqlCdsConsumowQtde6.AsInteger>0) then
                            wProduzirQtde := wProduzirQtde + SqlCdsConsumoWQTDE6.AsCurrency;
                         if (SqlCdsConsumowQtde7.AsInteger>0) then
                            wProduzirQtde := wProduzirQtde + SqlCdsConsumoWQTDE7.AsCurrency;
                         if (SqlCdsConsumowQtde8.AsInteger>0) then
                            wProduzirQtde := wProduzirQtde + SqlCdsConsumoWQTDE8.AsCurrency;
                     end
                  else
                     begin
                         wProduzirQtde := SqlCdsConsumowQtde.AsInteger;
                     end;
                  {Verifica o Saldo do Estoque para Utilizar nas OP's Reservada e Producao}
                  if ((Rad_OR.checked ) or (Rad_OP.checked )) then
                     begin
                         {Verifica o Saldo do Estoque
                         wSaldoEstoque := StrToInt(FloatToStr(Retorna_Saldo_Estoque(SqlCdsConsumoPRD_REFER.AsString,
                                                                                    SqlCdsConsumoEMP_CODIGO.AsString,
                                                                                    ValorAmericano(IntToStr(wProduzirQtde)))));
                         }
                         wSaldoEstoque := Retorna_Saldo_Estoque(SqlCdsConsumoPRD_REFER.AsString,
                                                                SqlCdsConsumoEMP_CODIGO.AsString,
                                                                ValorAmericano(FloatToStr(wProduzirQtde)));
                     end;
                  //
                  if (wConsiderar = 'S') then
                     begin
                         if (wSaldoEstoque >= wProduzirQtde) then
                            begin
                                {Reserva a qtde do pedido}
                                Reserva_Materia(SqlCdsConsumoPRD_REFER.AsString,
                                                ValorAmericano(FloatToStr(wProduzirQtde)),
                                                SqlCdsConsumoEMP_CODIGO.AsString);
                                wQtdeProduzirPe := 0;
                                {Atualiza o flag do item do pedido}
                                Atualiza_Flag_Item_Pedido('S',
                                                           SqlCdsConsumoPED_CODIGO.AsString,
                                                           SqlCdsConsumoPRD_REFER.AsString,
                                                           SqlCdsConsumoEMP_CODIGO.AsString);
                            end
                         else
                            begin
                                {Reserva a quantidade do Saldo}
                                Reserva_Materia(SqlCdsConsumoPRD_REFER.AsString,
                                                ValorAmericano(FloatToStr(wSaldoEstoque)),
                                                SqlCdsConsumoEMP_CODIGO.AsString);
                                //
                                wQtdeProduzirPe := (wProduzirQtde - wSaldoEstoque);
                            end;
                         if (Rad_OA.checked ) then
                            begin
                                wQtdeProduzirPe := wProduzirQtde;
                            end;
                     end
                  else
                     begin
                         {Não Considera o Estoque e o PA E PI esta marcado}
                         if (wBtn_Pa = True) and (wBtn_Pi = True) then
                            begin
                                wQtdeProduzirPe := wProduzirQtde;
                            end
                         else
                            begin
                                {PA - não esta marcado - Considera}
                                if (wBtn_Pa = False) then
                                   begin
                                       if (SqlCdsConsumoPTI_SIGLA.AsString = 'PA') then
                                          begin
                                              wQtdeProduzirPe := (wProduzirQtde - wSaldoEstoque);
                                          end;
                                   end
                                else
                                   begin
                                       if (SqlCdsConsumoPTI_SIGLA.AsString = 'PA') then
                                          begin
                                              wQtdeProduzirPe := (wProduzirQtde);
                                          end;
                                   end;
                                {PI - não esta marcado}
                                if (wBtn_PI = False) then
                                   begin
                                       if (SqlCdsConsumoPTI_SIGLA.AsString = 'PI') then
                                          begin
                                              wQtdeProduzirPe := (wProduzirQtde - wSaldoEstoque);
                                          end;
                                   end
                                else
                                   begin
                                       if (SqlCdsConsumoPTI_SIGLA.AsString = 'PI') then
                                          begin
                                              wQtdeProduzirPe := (wProduzirQtde);
                                          end;
                                   end;
                                //
                                Reserva_Materia(SqlCdsConsumoPRD_REFER.AsString,
                                                ValorAmericano(FloatToStr(wQtdeProduzirPe)),
                                                SqlCdsConsumoEMP_CODIGO.AsString);
                                //
                            end;
                         //
                     end;
                  //
                  {Se a Qtde Produzir >0, Gerar OP's}
                  if (wQtdeProduzirPe >0) then
                     begin
                         {Verifica se foi informado a quantidade a ser dividido}
                         if (CurrQtdeOP.Value = 0) then
                            begin
                                wDividir    := StrToInt(FloatToStr(wQtdeProduzirPe));
                                wQtdePedido := wQtdeProduzirPe;
                                wQtdeOp     := (StrToInt(FloatToStr(wQtdeProduzirPe)) DIV wDividir);
                            end
                         else
                            begin
                                wDividir    := CurrQtdeOP.AsInteger;
                                wQtdePedido := wQtdeProduzirPe;
                                wQtdeOP     := (StrToInt(FloatToStr(wQtdeProduzirPe)) DIV wDividir);
                            end;
                         //
                         wTotalQtdeOP := 0;
                         for wX := 1 to wQtdeOP do
                           begin
                               {Busca o Codigo da Ordem de Sequencia}
                               EdtORDEM.Text := SequenciadorPRC(DataCadastros.SQLConnection1,dbInicio.Empresa.EMP_CODIGO, 'OSV0001', 'OSV_CODIGO', 0);
                               EdtORDEM.Text := StrZero(EdtORDEM.Text,EdtORDEM.MaxLength);
                               //
                               BuscaFicha(SqlCdsConsumoPRD_REFER.AsString);
                               //
                               wProduzirQtde := 0;
                               wProduzirQtde := wDividir;
                               //
                               IncluirOP(EdtORDEM.Text,EdtORDEM.Text,SqlCdsConsumoPRD_REFER.AsString,SqlCdsConsumoPRD_REFER.AsString,SqlCdsConsumoEMP_CODIGO.AsString,wProduzirQtde);
                               //
                               BuscaItensOPNivel(0,SqlCdsConsumoPRD_REFER.AsString,wProduzirQtde);
                               //
                               wTotalQtdeOp := wTotalQtdeOp + wDividir;
                           end;
                           {Gera uma OP do resto da divisao exemplo:(730) 7 op de 100 e 1 op de 30}
                         if ((wQtdePedido - wTotalQtdeOP)>0) then
                            begin
                                wRestoOP := 0;
                                wRestoOP := (wQtdePedido - wTotalQtdeOP);
                                wProduzirQtde := 0;
                                wProduzirQtde := wRestoOP;
                                {Busca o Codigo da Ordem de Sequencia}
                                EdtORDEM.Text := SequenciadorPRC(DataCadastros.SQLConnection1,dbInicio.Empresa.EMP_CODIGO, 'OSV0001', 'OSV_CODIGO', 0);
                                EdtORDEM.Text := StrZero(EdtORDEM.Text,EdtORDEM.MaxLength);
                                //
                                BuscaFicha(SqlCdsConsumoPRD_REFER.AsString);
                                //
                                IncluirOP(EdtORDEM.Text,EdtORDEM.Text,SqlCdsConsumoPRD_REFER.AsString,SqlCdsConsumoPRD_REFER.AsString,SqlCdsConsumoEMP_CODIGO.AsString,wProduzirQtde);
                                //
                                BuscaItensOPNivel(0,SqlCdsConsumoPRD_REFER.AsString,wProduzirQtde);
                            end;
                     end;
                  {Atualiza o flag do item do pedido}
                  Atualiza_Flag_Item_Pedido('S',
                                             SqlCdsConsumoPED_CODIGO.AsString,
                                             SqlCdsConsumoPRD_REFER.AsString,
                                             SqlCdsConsumoEMP_CODIGO.AsString);
              end
           else
              begin
                  {Atualiza o flag do item do pedido}
                  Atualiza_Flag_Item_Pedido('N',
                                             SqlCdsConsumoPED_CODIGO.AsString,
                                             SqlCdsConsumoPRD_REFER.AsString,
                                             SqlCdsConsumoEMP_CODIGO.AsString);
              end;
           SqlCdsConsumo.Next;
       end;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao gerar as ordem de produção ! '+e.message));
    end;
    Screen.Cursor := crDefault;
end;

Procedure TFormOrdServCentroB.BuscaItensOPNivel(wNivel: Integer; wReferencia : String; wQtdeProduzir : Double);
Var
  yTotalQtdeOP,
  yQtdeProduzir,
  yY           : Integer;
  yProduzirQtde,
  yQtdePedido  : Double;

begin
    wSql1      := 'SELECT I1.PRD_REFER,I1.PRD_REFER_ITENS,P1.PRD_DESCRI,P1.PRD_PCUSTO,P1.PRD_ESTOQUE,P1.PRD_ENTRADA,P1.PRD_SAIDA,P1.PRD_PENDENTE,P1.PRD_RESERVA,P1.PRD_UND,P2.PTI_SIGLA,';
    wSql2      := 'I1.FTI_MODE1,I1.FTI_MODE2,I1.FTI_MODE3,I1.FTI_MODE4,I1.FTI_MODE5,I1.FTI_MODE6,I1.FTI_MODE7,I1.FTI_MODE8,I1.FTI_UC FROM FTC_IT01 I1 ';
    wSql3      := 'JOIN PRD0000 P1 ON (I1.PRD_REFER_ITENS = P1.PRD_REFER) JOIN PRD_TIPO P2 ON (P1.PTI_CODIGO = P2.PTI_CODIGO) ';
    wSeleciona := 'WHERE I1.PRD_REFER = '''+wReferencia+'''';
    wOrdem     := 'I1.PRD_REFER,P1.PRD_DESCRI';

    CriarTabelaMemoria(1);

    try
      try
        SqlCdsN1.Close;
        SqlCdsN1.CommandText := SQLDEF('FICHATECNICA',wSql1+wSql2+wSql3,wSeleciona,wOrdem,'I1.');
        SqlCdsN1.Open;
        if SqlCdsN1.IsEmpty = false then
           begin
               //
               wLETRA1 := 65;
               wLETRA2 := 64;
               X       := 01;
               //
               SqlCdsN1.First;
               while (SqlCdsN1PRD_REFER.AsString = wReferencia) and not (SqlCdsN1.eof) do
                begin
                    {Inserir os Itens da OP}
                    wM1:=0;wM2:=0;wM3:=0;wM4:=0;wM5:=0;wM6:=0;wM7:=0;wM8:=0;
                    //
                    xConsumo      := SqlCdsN1FTI_UC.AsCurrency;
                    xRefer        := SqlCdsN1PRD_REFER.AsString;
                    xRefer_itens  := SqlCdsN1PRD_REFER_ITENS.AsString;
                    xOrdemProducao:= EdtORDEM.Text;
                    //
                    if (FrmMenu.wVariacoes = 'S') then
                       begin
                           if SqlCdsN1FTI_MODE1.AsString = 'X' then
                              wM1 := SqlCdsConsumoWQTDE1.AsCurrency;
                           if SqlCdsN1FTI_MODE2.AsString = 'X' then
                              wM2 := SqlCdsConsumoWQTDE2.AsCurrency;
                           if SqlCdsN1FTI_MODE3.AsString = 'X' then
                              wM3 := SqlCdsConsumoWQTDE3.AsCurrency;
                           if SqlCdsN1FTI_MODE4.AsString = 'X' then
                              wM4 := SqlCdsConsumoWQTDE4.AsCurrency;
                           if SqlCdsN1FTI_MODE5.AsString = 'X' then
                              wM5 := SqlCdsConsumoWQTDE5.AsCurrency;
                           if SqlCdsN1FTI_MODE6.AsString = 'X' then
                              wM6 := SqlCdsConsumoWQTDE6.AsCurrency;
                           if SqlCdsN1FTI_MODE7.AsString = 'X' then
                              wM7 := SqlCdsConsumoWQTDE7.AsCurrency;
                           if SqlCdsN1FTI_MODE8.AsString = 'X' then
                              wM8 := SqlCdsConsumoWQTDE8.AsCurrency;
                       end
                    else
                       begin
                           wM1 := wQtdeProduzir;
                       end;
                    //
                    wConsumo := 0;
                    wConsumo := SqlCdsN1FTI_UC.AsCurrency;
                    //
                    if wConsumo>0 then
                       begin
                           {Fazer Conversao da Formula
                           wM1 := wM1 / FrmMenu.wPmt_Unformula;
                           wM2 := wM2 / FrmMenu.wPmt_Unformula;
                           wM3 := wM3 / FrmMenu.wPmt_Unformula;
                           wM4 := wM4 / FrmMenu.wPmt_Unformula;
                           wM5 := wM5 / FrmMenu.wPmt_Unformula;
                           wM6 := wM6 / FrmMenu.wPmt_Unformula;
                           wM7 := wM7 / FrmMenu.wPmt_Unformula;
                           wM8 := wM8 / FrmMenu.wPmt_Unformula;
                           {Calcula a Qtde para fazer a Reserva Temporaria}
                           wReserva := 0;
                           if (FrmMenu.wVariacoes = 'S') then
                              begin
                                  wReserva := ((wM1+wM2+wM3+wM4+wM5+wM6+wM7+wM8)*wConsumo)/ FrmMenu.wPmt_Unformula;
                              end
                           else
                              begin
                                  wReserva := (wM1*wConsumo)/ FrmMenu.wPmt_Unformula;
                              end;
                           //
                           {Solicitou OP's Abertas}
                           if (RAD_OA.checked ) then
                              begin
                                  xEmpenho       := 0;
                                  xReservado     := 0;
                                  wStatusEmpenho := 'N';
                              end;
                           //
                           if (SqlCdsN1PTI_SIGLA.AsString = 'PA') OR (SqlCdsN1PTI_SIGLA.AsString = 'PI') then
                              begin
                                  {Atribui a Qtde a ser produzida na variavel yQtdeProduzir
                                  para ser utilizada nas OP's Reservada ou OP's Producao}
                                  yQtdeProduzir := StrToInt(FloatToStr(wReserva));
                                  //
                                  {Verifica o saldo do produto no Estoque e atribui a
                                  variavel wSaldoEstoque para ser utilizada nas OP's
                                  Reservada ou OP's Producao}
                                  if ((Rad_OR.checked ) or (Rad_OP.checked )) then
                                     begin
                                         wSaldoEstoque := StrToInt(FloatToStr(Retorna_Saldo_Estoque(SqlCdsN1PRD_REFER_ITENS.AsString,
                                                                                                    SqlCdsConsumoEMP_CODIGO.AsString,
                                                                                                    IntToStr(yQtdeProduzir))));
                                     end;
                                  //
                                  {Considera o Estoque, que sera utilizado para OP's Reserva ou Producao}
                                  if (wConsiderar = 'S') then
                                     begin
                                         if (wSaldoEstoque >= yQtdeProduzir) then
                                            begin
                                                yQtdeProduzirPe := 0;
                                                if (RAD_OR.checked ) then
                                                   begin
                                                       xEmpenho   := 0;
                                                       xReservado := yQtdeProduzir;
                                                   end;
                                                if (RAD_OP.checked ) then
                                                   begin
                                                       xEmpenho   := yQtdeProduzir;
                                                       xReservado := 0;
                                                   end;
                                                wStatusEmpenho  := 'S';
                                            end
                                         else
                                            begin
                                                yQtdeProduzirPe := (yQtdeProduzir - wSaldoEstoque);
                                                if (RAD_OR.checked ) then
                                                   begin
                                                       xEmpenho   := 0;
                                                       xReservado := wSaldoEstoque;
                                                   end;
                                                if (RAD_OP.checked ) then
                                                   begin
                                                       xEmpenho   := wSaldoEstoque;
                                                       xReservado := 0;
                                                   end;
                                                wStatusEmpenho  := 'P';
                                            end;
                                         //
                                     end
                                  else
                                     begin
                                         {Não Considera o Estoque e o PA E PI esta marcado}
                                         if (wBtn_Pa = True) and (wBtn_Pi = True) then
                                            begin
                                                yQtdeProduzirPe := (yQtdeProduzir);
                                                xReservado      := 0;
                                                xEmpenho        := 0;
                                                wStatusEmpenho  := 'N';
                                            end
                                         else
                                            begin
                                                {PA - não esta marcado - Considera}
                                                if (wBtn_Pa = False) then
                                                   begin
                                                       if (SqlCdsN1PTI_SIGLA.AsString = 'PA') then
                                                          begin
                                                              yQtdeProduzirPe := (yQtdeProduzir - wSaldoEstoque); // Essa variavel verifica se vai precisar gerar OP's
                                                              if (wSaldoEstoque >= yQtdeProduzir) then
                                                                 begin
                                                                     if (RAD_OR.checked ) then
                                                                        begin
                                                                            xEmpenho   := 0;
                                                                            xReservado := (yQtdeProduzir);
                                                                        end;
                                                                     if (RAD_OP.checked ) then
                                                                        begin
                                                                            xEmpenho   := (yQtdeProduzir);
                                                                            xReservado := 0;
                                                                        end;
                                                                 end
                                                              else
                                                                 begin
                                                                     if (RAD_OR.checked ) then
                                                                        begin
                                                                            xEmpenho   := 0;
                                                                            xReservado := (wSaldoEstoque);
                                                                        end;
                                                                     if (RAD_OP.checked ) then
                                                                        begin
                                                                            xEmpenho   := (wSaldoEstoque);
                                                                            xReservado := 0;
                                                                        end;
                                                                 end;
                                                              //
                                                          end;
                                                   end
                                                else
                                                   begin
                                                       if (SqlCdsN1PTI_SIGLA.AsString = 'PA') then
                                                          begin
                                                              yQtdeProduzirPe := (yQtdeProduzir);
                                                              xEmpenho        := 0;
                                                              xReservado      := 0;
                                                              wStatusEmpenho  := 'N';
                                                          end;
                                                   end;
                                                {PI - não esta marcado}
                                                if (wBtn_PI = False) then
                                                   begin
                                                       if (SqlCdsN1PTI_SIGLA.AsString = 'PI') then
                                                          begin
                                                              yQtdeProduzirPe := (yQtdeProduzir - wSaldoEstoque);
                                                              if (wSaldoEstoque >= yQtdeProduzir) then
                                                                 begin
                                                                     if (RAD_OR.checked ) then
                                                                        begin
                                                                            xEmpenho   := 0;
                                                                            xReservado := (yQtdeProduzir);
                                                                        end;
                                                                     if (RAD_OP.checked ) then
                                                                        begin
                                                                            xEmpenho   := (yQtdeProduzir);
                                                                            xReservado := 0;
                                                                        end;
                                                                 end
                                                              else
                                                                 begin
                                                                     if (RAD_OR.checked ) then
                                                                        begin
                                                                            xEmpenho   := 0;
                                                                            xReservado := (wSaldoEstoque);
                                                                        end;
                                                                     if (RAD_OP.checked ) then
                                                                        begin
                                                                            xEmpenho   := (wSaldoEstoque);
                                                                            xReservado := 0;
                                                                        end;
                                                                 end;
                                                          end;
                                                   end
                                                else
                                                   begin
                                                       if (SqlCdsN1PTI_SIGLA.AsString = 'PI') then
                                                          begin
                                                              yQtdeProduzirPe := (yQtdeProduzir);
                                                              xEmpenho        := 0;
                                                              xReservado      := 0;
                                                              wStatusEmpenho  := 'N';
                                                          end;
                                                   end;
                                            end;
                                     end;
                                  //
                                  {Solicitou Reserva Reserva}
                                  if (RAD_OR.checked ) then
                                     begin
                                         {Reserva a qtde, solicitou a reserva}
                                         Reserva_Materia(SqlCdsN1PRD_REFER_ITENS.AsString,
                                                         ValorAmericano(FloatToStr(xReservado)),
                                                         SqlCdsConsumoEMP_CODIGO.AsString);
                                     end;
                                  //
                                  {Solicitou Producao}
                                  if (RAD_OP.checked ) then
                                     begin
                                         try
                                           Reserva_Materia(SqlCdsN1PRD_REFER_ITENS.AsString,
                                                           ValorAmericano(FloatToStr(xEmpenho)),
                                                           SqlCdsConsumoEMP_CODIGO.AsString);
                                           //
                                           {Inserir itens na tabela empenho que foram empenhado
                                            Parcial ou Concluido}
                                           if (wStatusEmpenho<>'N') then
                                              begin
                                                  Inserir_Empenho('A',
                                                                  EdtORDEM.Text,
                                                                  SqlCdsN1PRD_REFER_ITENS.AsString,
                                                                  SqlCdsConsumoEMP_CODIGO.AsString,
                                                                  DataAmericana(DateToStr(now)),
                                                                  ValorAmericano(FloatToStr(xEmpenho)));
                                                  //
                                                  {Baixa do Estoque a quantidade Apontada}
                                                  Baixa_Estoque('A',
                                                                SqlCdsN1PRD_REFER_ITENS.AsString,
                                                                SqlCdsConsumoEMP_CODIGO.AsString,
                                                                ValorAmericano(FloatToStr(xEmpenho)));
                                                  //
                                                  {Diminu da Reserva a Quantidade Apontada}
                                                  Diminui_Reserva_empenhada(SqlCdsConsumoEMP_CODIGO.AsString,
                                                                            SqlCdsN1PRD_REFER_ITENS.AsString,
                                                                            ValorAmericano(FloatToStr(xEmpenho)));
                                                  //
                                                  {Lança no Kardex o Movimento da qtde Apontada}
                                                  Atualiza_Kardex('A',
                                                                  EdtORDEM.Text,
                                                                  SqlCdsN1PRD_REFER_ITENS.AsString,
                                                                  SqlCdsConsumoEMP_CODIGO.AsString,
                                                                  DataAmericana(DateToStr(now)),
                                                                  ValorAmericano(FloatToStr(xEmpenho)));
                                                  //
                                              end;
                                         except on E:EDataBaseError do
                                            uteis.erro  (pchar('Erro ao inserir o registro na tabela Empenho ! '+e.message));
                                         end;
                                     end;
                              end
                           else
                              begin
                                  {Solicitou OP's Abertas}
                                  if (RAD_OA.checked ) then
                                     begin
                                         xEmpenho       := 0;
                                         xReservado     := 0;
                                         wStatusEmpenho := 'N';
                                     end;
                                  {Solicitou Reserva Reserva}
                                  if (RAD_OR.checked ) then
                                     begin
                                         xEmpenho   := 0;
                                         xReservado := Retorna_Saldo_Estoque(SqlCdsN1PRD_REFER_ITENS.AsString,
                                                                             SqlCdsConsumoEMP_CODIGO.AsString,
                                                                             FloatToStr(wReserva));
                                         {Reserva a qtde, solicitou a reserva}
                                         Reserva_Materia(SqlCdsN1PRD_REFER_ITENS.AsString,
                                                         ValorAmericano(FloatToStr(xReservado)),
                                                         SqlCdsConsumoEMP_CODIGO.AsString);
                                     end;
                                  //
                                  {Solicitou Producao}
                                  if (RAD_OP.checked ) then
                                     begin
                                         try
                                           xReservado := 0;
                                           {Verifica o Saldo do Item}
                                           xEmpenho   := Retorna_Saldo_Estoque(SqlCdsN1PRD_REFER_ITENS.AsString,
                                                                               SqlCdsConsumoEMP_CODIGO.AsString,
                                                                               FloatToStr(wReserva));
                                           {Atribui empenho}
                                           xSituaEstoque := xEmpenho;

                                           Reserva_Materia(SqlCdsN1PRD_REFER_ITENS.AsString,
                                                           ValorAmericano(FloatToStr(xSituaEstoque)),
                                                           SqlCdsConsumoEMP_CODIGO.AsString);
                                           //
                                           {Inserir itens na tabela empenho que foram empenhado
                                            Parcial ou Concluido}
                                           if (wStatusEmpenho<>'N') then
                                              begin
                                                  Inserir_Empenho('A',
                                                                  EdtORDEM.Text,
                                                                  SqlCdsN1PRD_REFER_ITENS.AsString,
                                                                  SqlCdsConsumoEMP_CODIGO.AsString,
                                                                  DataAmericana(DateToStr(now)),
                                                                  ValorAmericano(FloatToStr(xSituaEstoque)));
                                                  //
                                                  {Baixa do Estoque a quantidade Apontada}
                                                  Baixa_Estoque('A',
                                                                SqlCdsN1PRD_REFER_ITENS.AsString,
                                                                SqlCdsConsumoEMP_CODIGO.AsString,
                                                                ValorAmericano(FloatToStr(xSituaEstoque)));
                                                  //
                                                  {Diminu da Reserva a Quantidade Apontada}
                                                  Diminui_Reserva_empenhada(SqlCdsConsumoEMP_CODIGO.AsString,
                                                                            SqlCdsN1PRD_REFER_ITENS.AsString,
                                                                            ValorAmericano(FloatToStr(xSituaEstoque)));
                                                  //
                                                  {Lança no Kardex o Movimento da qtde Apontada}
                                                  Atualiza_Kardex('A',
                                                                  EdtORDEM.Text,
                                                                  SqlCdsN1PRD_REFER_ITENS.AsString,
                                                                  SqlCdsConsumoEMP_CODIGO.AsString,
                                                                  DataAmericana(DateToStr(now)),
                                                                  ValorAmericano(FloatToStr(xSituaEstoque)));
                                                  //
                                              end;
                                         except on E:EDataBaseError do
                                            uteis.erro  (pchar('Erro ao inserir o registro na tabela Empenho ! '+e.message));
                                         end;
                                     end;
                              end;
                           //
                           IncluirItensOP(EdtOrdem.Text,
                                          EdtORDEM.Text,
                                          SqlCdsN1PRD_REFER.AsString,
                                          SqlCdsN1PRD_REFER_ITENS.AsString,
                                          SqlCdsConsumoEMP_CODIGO.AsString,
                                          SqlCdsN1PTI_SIGLA.AsString,
                                          wStatusEmpenho,
                                          wConsumo,
                                          wM1,
                                          wM2,
                                          wM3,
                                          wM4,
                                          wM5,
                                          wM6,
                                          wM7,
                                          wM8,
                                          xReservado,
                                          xEmpenho);
                           if (SqlCdsN1PTI_SIGLA.AsString = 'PA') OR (SqlCdsN1PTI_SIGLA.AsString = 'PI') then
                              begin
                                  {Se a Qtde Produzir >0, Gera OP's}
                                  wRefer       := SqlCdsN1PRD_REFER.AsString;
                                  wRefer_Itens := SqlCdsN1PRD_REFER_ITENS.AsString;
                                  if (yQtdeProduzirPe>0) then
                                     begin
                                         yQtdeOP      := 0;
                                         yDividir     := 0;
                                         yRestoOP     := 0;
                                         {Verifica se foi informado a quantidade a ser dividido}
                                         if (CurrQtdeOP.Value = 0) then
                                            begin
                                                yDividir    := StrToInt(FloatToStr(yQtdeProduzirPe));
                                                yQtdePedido := yQtdeProduzirPe;
                                                yQtdeOp     := (StrToInt(FloatToStr(yQtdeProduzirPe)) DIV yDividir);
                                            end
                                         else
                                            begin
                                                yDividir    := CurrQtdeOP.AsInteger;
                                                yQtdePedido := yQtdeProduzirPe;
                                                yQtdeOP     := (StrToInt(FloatToStr(yQtdeProduzirPe)) DIV yDividir);
                                            end;
                                         //
                                         yTotalQtdeOP := 0;
                                         for yY := 1 to yQtdeOP do
                                          begin
                                              //
                                              Edit1.Text := EdtOrdem.Text + AtribuirLetra();
                                              //
                                              yProduzirQtde := yDividir;
                                              IncluirOP(EdtORDEM.Text,
                                                        Edit1.Text,
                                                        SqlCdsN1PRD_REFER_ITENS.AsString,
                                                        SqlCdsN1PRD_REFER.AsString,
                                                        SqlCdsConsumoEMP_CODIGO.AsString,
                                                        yProduzirQtde);
                                              TesteNivelOP(1,SqlCdsN1PRD_REFER_ITENS.AsString,yProduzirQtde);
                                              Inc(X);
                                              //
                                              yTotalQtdeOp := yTotalQtdeOp + yDividir;
                                          end;
                                         {Gera uma OP do resto da divisao exemplo:(730) 7 op de 100 e 1 op de 30}
                                         if ((yQtdePedido - yTotalQtdeOP)>0) then
                                            begin
                                                yRestoOP      := 0;
                                                yRestoOP      := (yQtdePedido - yTotalQtdeOP);
                                                yProduzirQtde := yRestoOP;
                                                Edit1.Text    := EdtOrdem.Text + AtribuirLetra();
                                                //
                                                IncluirOP(EdtORDEM.Text,
                                                          Edit1.Text,
                                                          SqlCdsN1PRD_REFER_ITENS.AsString,
                                                          SqlCdsN1PRD_REFER.AsString,
                                                          SqlCdsConsumoEMP_CODIGO.AsString,
                                                          yProduzirQtde);
                                                TesteNivelOP(1,SqlCdsN1PRD_REFER_ITENS.AsString,yProduzirQtde);
                                                Inc(X);
                                            end;
                                     end;
                              end;
                       end;
                    //
                    SqlCdsN1.Next;
                end;
               //
           end;
      except on E:EDataBaseError do
         uteis.erro  (pchar('Erro ao Localizar o Item do Nivel 1 ! '+e.message));
      end;
    finally
       DestrTabelaMemoria(1);
    end;
end;

procedure TFormOrdServCentroB.TesteNivelOP(wNivel: Integer;wRefer: String;sQtde:Double);
Var
//  sTabelaNivel: TSQLClientDataSet;
  sReferencia : String;
  zTotalQtdeOP,
  zQtdeProduzir,
  zY            : Integer;
  zProduzirQtde,  
  zQtdePedido   : Double;

begin
    //
    sReferencia := '';
    iNivelTabela:= wNivel;
    //
    wSql1      := 'SELECT I1.PRD_REFER,I1.PRD_REFER_ITENS,P1.PRD_DESCRI,P1.PRD_PCUSTO,P1.PRD_ESTOQUE,P1.PRD_ENTRADA,P1.PRD_SAIDA,P1.PRD_PENDENTE,P1.PRD_RESERVA,P1.PRD_UND,P2.PTI_SIGLA,';
    wSql2      := 'I1.FTI_MODE1,I1.FTI_MODE2,I1.FTI_MODE3,I1.FTI_MODE4,I1.FTI_MODE5,I1.FTI_MODE6,I1.FTI_MODE7,I1.FTI_MODE8,I1.FTI_UC FROM FTC_IT01 I1 ';
    wSql3      := 'JOIN PRD0000 P1 ON (I1.PRD_REFER_ITENS = P1.PRD_REFER) JOIN PRD_TIPO P2 ON (P1.PTI_CODIGO = P2.PTI_CODIGO) ';
    wSeleciona := 'WHERE I1.PRD_REFER = '''+wRefer+'''';
    wOrdem     := 'I1.PRD_REFER,P1.PRD_DESCRI';
    try
      try
        tSqlNivel[iNivelTabela].Close;
        tSqlNivel[iNivelTabela].CommandText := SQLDEF('FICHATECNICA',wSql1+wSql2+wSql3,wSeleciona,wOrdem,'I1.');
        tSqlNivel[iNivelTabela].Open;
        if (not tSqlNivel[iNivelTabela].IsEmpty) then
           begin
               tSqlNivel[iNivelTabela].First;
               while (tSqlNivel[iNivelTabela].FieldByName('PRD_REFER').AsString = wRefer)and not(tSqlNivel[iNivelTabela].eof) do
                begin
                    {Inserir os Itens da OP}
                    wM1:=0;wM2:=0;wM3:=0;wM4:=0;wM5:=0;wM6:=0;wM7:=0;wM8:=0;
                    //
                    xConsumo                := tSqlNivel[iNivelTabela].FieldByName('FTI_UC').AsCurrency;
                    xRefer                  := tSqlNivel[iNivelTabela].FieldByName('PRD_REFER').AsString;
                    xRefer_itens            := tSqlNivel[iNivelTabela].FieldByName('PRD_REFER_ITENS').AsString;
                    tCodigoOP[iNivelTabela] := Edit1.Text;
                    //
                    if (FrmMenu.wVariacoes = 'S') then
                       begin
                           if (SqlCdsN1FTI_MODE1.AsString = 'X') then
                              begin
                                  wM1 := sQtde;
                              end;
                           if (SqlCdsN1FTI_MODE2.AsString = 'X') then
                              begin
                                  wM2 := sQtde;
                              end;
                           if (SqlCdsN1FTI_MODE3.AsString = 'X') then
                              begin
                                  wM3 := sQtde;
                              end;
                           if (SqlCdsN1FTI_MODE4.AsString = 'X') then
                              begin
                                  wM4 := sQtde;
                              end;
                           if (SqlCdsN1FTI_MODE5.AsString = 'X') then
                              begin
                                  wM5 := sQtde;
                              end;
                           if (SqlCdsN1FTI_MODE6.AsString = 'X') then
                              begin
                                  wM6 := sQtde;
                              end;
                           if (SqlCdsN1FTI_MODE7.AsString = 'X') then
                              begin
                                  wM7 := sQtde;
                              end;
                           if (SqlCdsN1FTI_MODE8.AsString = 'X') then
                              begin
                                  wM8 := sQtde;
                              end;
                       end
                    else
                       begin
                           wM1 := sQtde;
                       end;
                    //
                    wConsumo := 0;
                    wConsumo := tSqlNivel[iNivelTabela].FieldByName('FTI_UC').AsCurrency;
                    //
                    if wConsumo>0 then
                       begin
                           {Fazer Conversao da Formula
                           zM1 := zM1 / FrmMenu.wPmt_Unformula;
                           zM2 := zM2 / FrmMenu.wPmt_Unformula;
                           zM3 := zM3 / FrmMenu.wPmt_Unformula;
                           zM4 := zM4 / FrmMenu.wPmt_Unformula;
                           zM5 := zM5 / FrmMenu.wPmt_Unformula;
                           zM6 := zM6 / FrmMenu.wPmt_Unformula;
                           zM7 := zM7 / FrmMenu.wPmt_Unformula;
                           zM8 := zM8 / FrmMenu.wPmt_Unformula;
                           {Calcula a Qtde para fazer a Reserva Temporaria}
                           //
                           wReserva := 0;
                           if (FrmMenu.wVariacoes = 'S') then
                              begin
                                  wReserva := ((wM1+wM2+wM3+wM4+wM5+wM6+wM7+wM8)*wConsumo)/ FrmMenu.wPmt_Unformula;
                              end
                           else
                              begin
                                  wReserva := (wM1*wConsumo)/ FrmMenu.wPmt_Unformula;
                              end;
                           //
                           {Solicitou OP's Abertas}
                           if (RAD_OA.checked ) then
                              begin
                                  xEmpenho       := 0;
                                  xReservado     := 0;
                                  wStatusEmpenho := 'N';
                              end;
                           //
                           if (tSqlNivel[iNivelTabela].FieldByName('PTI_SIGLA').AsString = 'PA') OR (tSqlNivel[iNivelTabela].FieldByName('PTI_SIGLA').AsString = 'PI') then
                              begin
                                  {Atribui a Qtde a ser produzida na variavel zQtdeProduzir
                                  para ser utilizada nas OP's Reservada ou OP's Producao}
                                  zQtdeProduzir := StrToInt(FloatToStr(wReserva));
                                  //
                                  {Verifica o saldo do produto no Estoque e atribui a
                                  variavel wSaldoEstoque para ser utilizada nas OP's
                                  Reservada ou OP's Producao}
                                  if ((Rad_OR.checked ) or (Rad_OP.checked )) then
                                     begin
                                         wSaldoEstoque := StrToInt(FloatToStr(Retorna_Saldo_Estoque(SqlCdsN1PRD_REFER_ITENS.AsString,
                                                                                                    SqlCdsConsumoEMP_CODIGO.AsString,
                                                                                                    IntToStr(zQtdeProduzir))));
                                     end;
                                  //
                                  {Considera o Estoque, que sera utilizado para OP's Reserva ou Producao}
                                  if (wConsiderar = 'S') then
                                     begin
                                         if (wSaldoEstoque >= zQtdeProduzir) then
                                            begin
                                                zQtdeProduzirPe := 0;
                                                if (RAD_OR.checked ) then
                                                   begin
                                                       xEmpenho   := 0;
                                                       xReservado := zQtdeProduzir;
                                                   end;
                                                if (RAD_OP.checked ) then
                                                   begin
                                                       xEmpenho   := zQtdeProduzir;
                                                       xReservado := 0;
                                                   end;
                                                wStatusEmpenho  := 'S';
                                            end
                                         else
                                            begin
                                                zQtdeProduzirPe := (zQtdeProduzir - wSaldoEstoque);
                                                if (RAD_OR.checked ) then
                                                   begin
                                                       xEmpenho   := 0;
                                                       xReservado := wSaldoEstoque;
                                                   end;
                                                if (RAD_OP.checked ) then
                                                   begin
                                                       xEmpenho   := wSaldoEstoque;
                                                       xReservado := 0;
                                                   end;
                                                wStatusEmpenho  := 'P';
                                            end;
                                         //
                                     end
                                  else
                                     begin
                                         {Não Considera o Estoque e o PA E PI esta marcado}
                                         if (wBtn_Pa = True) and (wBtn_Pi = True) then
                                            begin
                                                zQtdeProduzirPe := (zQtdeProduzir);
                                                xReservado      := 0;
                                                xEmpenho        := 0;
                                                wStatusEmpenho  := 'N';
                                            end
                                         else
                                            begin
                                                {PA - não esta marcado - Considera}
                                                if (wBtn_Pa = False) then
                                                   begin
                                                       if (tSqlNivel[iNivelTabela].FieldByName('PTI_SIGLA').AsString = 'PA') then
                                                          begin
                                                              zQtdeProduzirPe := (zQtdeProduzir - wSaldoEstoque); // Essa variavel verifica se vai precisar gerar OP's
                                                              if (wSaldoEstoque >= zQtdeProduzir) then
                                                                 begin
                                                                     if (RAD_OR.checked ) then
                                                                        begin
                                                                            xEmpenho   := 0;
                                                                            xReservado := (zQtdeProduzir);
                                                                        end;
                                                                     if (RAD_OP.checked ) then
                                                                        begin
                                                                            xEmpenho   := (zQtdeProduzir);
                                                                            xReservado := 0;
                                                                        end;
                                                                 end
                                                              else
                                                                 begin
                                                                     if (RAD_OR.checked ) then
                                                                        begin
                                                                            xEmpenho   := 0;
                                                                            xReservado := (wSaldoEstoque);
                                                                        end;
                                                                     if (RAD_OP.checked ) then
                                                                        begin
                                                                            xEmpenho   := (wSaldoEstoque);
                                                                            xReservado := 0;
                                                                        end;
                                                                 end;
                                                              //
                                                          end;
                                                   end
                                                else
                                                   begin
                                                       if (tSqlNivel[iNivelTabela].FieldByName('PTI_SIGLA').AsString = 'PA') then
                                                          begin
                                                              zQtdeProduzirPe := (zQtdeProduzir);
                                                              xEmpenho        := 0;
                                                              xReservado      := 0;
                                                              wStatusEmpenho  := 'N';
                                                          end;
                                                   end;
                                                {PI - não esta marcado}
                                                if (wBtn_PI = False) then
                                                   begin
                                                       if (tSqlNivel[iNivelTabela].FieldByName('PTI_SIGLA').AsString = 'PI') then
                                                          begin
                                                              zQtdeProduzirPe := (zQtdeProduzir - wSaldoEstoque);
                                                              if (wSaldoEstoque >= zQtdeProduzir) then
                                                                 begin
                                                                     if (RAD_OR.checked ) then
                                                                        begin
                                                                            xEmpenho   := 0;
                                                                            xReservado := (zQtdeProduzir);
                                                                        end;
                                                                     if (RAD_OP.checked ) then
                                                                        begin
                                                                            xEmpenho   := (zQtdeProduzir);
                                                                            xReservado := 0;
                                                                        end;
                                                                 end
                                                              else
                                                                 begin
                                                                     if (RAD_OR.checked ) then
                                                                        begin
                                                                            xEmpenho   := 0;
                                                                            xReservado := (wSaldoEstoque);
                                                                        end;
                                                                     if (RAD_OP.checked ) then
                                                                        begin
                                                                            xEmpenho   := (wSaldoEstoque);
                                                                            xReservado := 0;
                                                                        end;
                                                                 end;
                                                          end;
                                                   end
                                                else
                                                   begin
                                                       if (tSqlNivel[iNivelTabela].FieldByName('PTI_SIGLA').AsString = 'PI') then
                                                          begin
                                                              yQtdeProduzirPe := (zQtdeProduzir);
                                                              xEmpenho        := 0;
                                                              xReservado      := 0;
                                                              wStatusEmpenho  := 'N';
                                                          end;
                                                   end;
                                            end;
                                     end;
                                  //
                                  {Solicitou Reserva}
                                  if (RAD_OR.checked ) then
                                     begin
                                         {Reserva a qtde, solicitou a reserva}
                                         Reserva_Materia(tSqlNivel[iNivelTabela].FieldByName('PRD_REFER_ITENS').AsString,
                                                         ValorAmericano(FloatToStr(xReservado)),
                                                         SqlCdsConsumoEMP_CODIGO.AsString);
                                     end;
                                  //
                                  {Solicitou Producao}
                                  if (RAD_OP.checked ) then
                                     begin
                                         try
                                           Reserva_Materia(tSqlNivel[iNivelTabela].FieldByName('PRD_REFER_ITENS').AsString,
                                                           ValorAmericano(FloatToStr(xEmpenho)),
                                                           SqlCdsConsumoEMP_CODIGO.AsString);
                                           //
                                           {Inserir itens na tabela empenho que foram empenhado
                                            Parcial ou Concluido}
                                           if (wStatusEmpenho<>'N') then
                                              begin
                                                  Inserir_Empenho('A',
                                                                  tCodigoOP[iNivelTabela],
                                                                  tSqlNivel[iNivelTabela].FieldByName('PRD_REFER_ITENS').AsString,
                                                                  SqlCdsConsumoEMP_CODIGO.AsString,
                                                                  DataAmericana(DateToStr(now)),
                                                                  ValorAmericano(FloatToStr(xEmpenho)));
                                                  //
                                                  {Baixa do Estoque a quantidade Apontada}
                                                  Baixa_Estoque('A',
                                                                tSqlNivel[iNivelTabela].FieldByName('PRD_REFER_ITENS').AsString,
                                                                SqlCdsConsumoEMP_CODIGO.AsString,
                                                                ValorAmericano(FloatToStr(xEmpenho)));
                                                  //
                                                  {Diminu da Reserva a Quantidade Apontada}
                                                  Diminui_Reserva_empenhada(SqlCdsConsumoEMP_CODIGO.AsString,
                                                                            tSqlNivel[iNivelTabela].FieldByName('PRD_REFER_ITENS').AsString,
                                                                            ValorAmericano(FloatToStr(xEmpenho)));
                                                  //
                                                  {Lança no Kardex o Movimento da qtde Apontada}
                                                  Atualiza_Kardex('A',
                                                                  tCodigoOP[iNivelTabela],
                                                                  tSqlNivel[iNivelTabela].FieldByName('PRD_REFER_ITENS').AsString,
                                                                  SqlCdsConsumoEMP_CODIGO.AsString,
                                                                  DataAmericana(DateToStr(now)),
                                                                  ValorAmericano(FloatToStr(xEmpenho)));
                                                  //
                                              end;
                                         except on E:EDataBaseError do
                                            uteis.erro  (pchar('Erro ao inserir o registro na tabela Empenho ! '+e.message));
                                         end;
                                     end;
                              end
                           else
                              begin
                                  xConsumo                := tSqlNivel[iNivelTabela].FieldByName('FTI_UC').AsCurrency;
                                  xRefer                  := tSqlNivel[iNivelTabela].FieldByName('PRD_REFER').AsString;
                                  xRefer_itens            := tSqlNivel[iNivelTabela].FieldByName('PRD_REFER_ITENS').AsString;
                                  tCodigoOP[iNivelTabela] := Edit1.Text;
                                  {Solicitou OP's Abertas}
                                  if (RAD_OA.checked ) then
                                     begin
                                         xEmpenho       := 0;
                                         xReservado     := 0;
                                         wStatusEmpenho := 'N';
                                     end;
                                  {Solicitou Reserva Reserva}
                                  if (RAD_OR.checked ) then
                                     begin
                                         xEmpenho   := 0;
                                         xReservado := Retorna_Saldo_Estoque(tSqlNivel[iNivelTabela].FieldByName('PRD_REFER_ITENS').AsString,
                                                                             SqlCdsConsumoEMP_CODIGO.AsString,
                                                                             FloatToStr(wReserva));
                                         {Reserva a qtde, solicitou a reserva}
                                         Reserva_Materia(tSqlNivel[iNivelTabela].FieldByName('PRD_REFER_ITENS').AsString,
                                                         ValorAmericano(FloatToStr(xReservado)),
                                                         SqlCdsConsumoEMP_CODIGO.AsString);
                                     end;
                                  //
                                  {Solicitou Producao}
                                  if (RAD_OP.checked ) then
                                     begin
                                         try
                                           xReservado := 0;
                                           {Verifica o Saldo do Item}
                                           xEmpenho   := Retorna_Saldo_Estoque(tSqlNivel[iNivelTabela].FieldByName('PRD_REFER_ITENS').AsString,
                                                                               SqlCdsConsumoEMP_CODIGO.AsString,
                                                                               FloatToStr(wReserva));
                                           {Atribui empenho}
                                           xSituaEstoque := xEmpenho;

                                           Reserva_Materia(tSqlNivel[iNivelTabela].FieldByName('PRD_REFER_ITENS').AsString,
                                                           ValorAmericano(FloatToStr(xSituaEstoque)),
                                                           SqlCdsConsumoEMP_CODIGO.AsString);
                                           //
                                           {Inserir itens na tabela empenho que foram empenhado
                                            Parcial ou Concluido}
                                           if (wStatusEmpenho<>'N') then
                                              begin
                                                  Inserir_Empenho('A',
                                                                  tCodigoOP[iNivelTabela],
                                                                  tSqlNivel[iNivelTabela].FieldByName('PRD_REFER_ITENS').AsString,
                                                                  SqlCdsConsumoEMP_CODIGO.AsString,
                                                                  DataAmericana(DateToStr(now)),
                                                                  ValorAmericano(FloatToStr(xSituaEstoque)));
                                                  //
                                                  {Baixa do Estoque a quantidade Apontada}
                                                  Baixa_Estoque('A',
                                                                tSqlNivel[iNivelTabela].FieldByName('PRD_REFER_ITENS').AsString,
                                                                SqlCdsConsumoEMP_CODIGO.AsString,
                                                                ValorAmericano(FloatToStr(xSituaEstoque)));
                                                  //
                                                  {Diminu da Reserva a Quantidade Apontada}
                                                  Diminui_Reserva_empenhada(SqlCdsConsumoEMP_CODIGO.AsString,
                                                                            tSqlNivel[iNivelTabela].FieldByName('PRD_REFER_ITENS').AsString,
                                                                            ValorAmericano(FloatToStr(xSituaEstoque)));
                                                  //
                                                  {Lança no Kardex o Movimento da qtde Apontada}
                                                  Atualiza_Kardex('A',
                                                                  tCodigoOP[iNivelTabela],
                                                                  tSqlNivel[iNivelTabela].FieldByName('PRD_REFER_ITENS').AsString,
                                                                  SqlCdsConsumoEMP_CODIGO.AsString,
                                                                  DataAmericana(DateToStr(now)),
                                                                  ValorAmericano(FloatToStr(xSituaEstoque)));
                                                  //
                                              end;
                                         except on E:EDataBaseError do
                                            uteis.erro  (pchar('Erro ao inserir o registro na tabela Empenho ! '+e.message));
                                         end;
                                     end;
                              end;
                           //
                           IncluirItensOP(EdtOrdem.Text,
                                          tCodigoOP[iNivelTabela],
                                          tSqlNivel[iNivelTabela].FieldByName('PRD_REFER').AsString,
                                          tSqlNivel[iNivelTabela].FieldByName('PRD_REFER_ITENS').AsString,
                                          SqlCdsConsumoEMP_CODIGO.AsString,
                                          tSqlNivel[iNivelTabela].FieldByName('PTI_SIGLA').AsString,
                                          wStatusEmpenho,
                                          wConsumo,
                                          wM1,
                                          wM2,
                                          wM3,
                                          wM4,
                                          wM5,
                                          wM6,
                                          wM7,
                                          wM8,
                                          xReservado,
                                          xEmpenho);
                           //
                           if (tSqlNivel[iNivelTabela].FieldByName('PTI_SIGLA').AsString = 'PA') OR (tSqlNivel[iNivelTabela].FieldByName('PTI_SIGLA').AsString = 'PI') then
                              begin
                                  {Se a Qtde Produzir >0, Gera OP's}
                                  wRefer       := tSqlNivel[iNivelTabela].FieldByName('PRD_REFER').AsString;
                                  wRefer_Itens := tSqlNivel[iNivelTabela].FieldByName('PRD_REFER_ITENS').AsString;
                                  if (zQtdeProduzirPe>0) then
                                     begin
                                         zQtdeOP      := 0;
                                         zDividir     := 0;
                                         zRestoOP     := 0;
                                         {Verifica se foi informado a quantidade a ser dividido}
                                         if (CurrQtdeOP.Value = 0) then
                                            begin
                                                zDividir    := StrToInt(FloatToStr(zQtdeProduzirPe));
                                                zQtdePedido := zQtdeProduzirPe;
                                                zQtdeOp     := (StrToInt(FloatToStr(zQtdeProduzirPe)) DIV zDividir);
                                            end
                                         else
                                            begin
                                                zDividir    := CurrQtdeOP.AsInteger;
                                                zQtdePedido := zQtdeProduzirPe;
                                                zQtdeOP     := (StrToInt(FloatToStr(zQtdeProduzirPe)) DIV zDividir);
                                            end;
                                         //
                                         zTotalQtdeOP := 0;
                                         for zY := 1 to zQtdeOP do
                                          begin
                                              //
                                              Edit1.Text := EdtOrdem.Text + AtribuirLetra();
                                              //                                              //
                                              zProduzirQtde := zDividir;
                                              IncluirOP(EdtORDEM.Text,
                                                        Edit1.Text,
                                                        tSqlNivel[iNivelTabela].FieldByName('PRD_REFER_ITENS').AsString,
                                                        tSqlNivel[iNivelTabela].FieldByName('PRD_REFER').AsString,
                                                        SqlCdsConsumoEMP_CODIGO.AsString,
                                                        zProduzirQtde);
                                              sReferencia := tSqlNivel[iNivelTabela].FieldByName('PRD_REFER_ITENS').AsString;
                                              Inc(iNivelTabela);

                                              tCodigoOP[iNivelTabela] := Edit1.Text;

                                              CriarTabelaMemoria(iNivelTabela);
                                              TesteNivelOP(iNivelTabela,sReferencia,zProduzirQtde);
                                              Inc(X);
                                              //
                                              zTotalQtdeOp := zTotalQtdeOp + zDividir;
                                          end;
                                         {Gera uma OP do resto da divisao exemplo:(730) 7 op de 100 e 1 op de 30}
                                         if ((zQtdePedido - zTotalQtdeOP)>0) then
                                            begin
                                                zRestoOP      := 0;
                                                zRestoOP      := (zQtdePedido - zTotalQtdeOP);
                                                zProduzirQtde := zRestoOP;
                                                Edit1.Text    := EdtOrdem.Text + AtribuirLetra();
                                                //
                                                tCodigoOP[iNivelTabela] := Edit1.Text;
                                                IncluirOP(EdtORDEM.Text,
                                                          Edit1.Text,
                                                          tSqlNivel[iNivelTabela].FieldByName('PRD_REFER_ITENS').AsString,
                                                          tSqlNivel[iNivelTabela].FieldByName('PRD_REFER').AsString,
                                                          SqlCdsConsumoEMP_CODIGO.AsString,
                                                          zProduzirQtde);
                                                sReferencia := tSqlNivel[iNivelTabela].FieldByName('PRD_REFER_ITENS').AsString;
                                                Inc(iNivelTabela);
                                                //
                                                tCodigoOP[iNivelTabela] := Edit1.Text;
                                                //
                                                CriarTabelaMemoria(iNivelTabela);
                                                TesteNivelOP(iNivelTabela,sReferencia,zProduzirQtde);
                                                Inc(X);
                                            end;
                                     end;
                              end;
                       end;
                    tSqlNivel[iNivelTabela].Next;
                end;
               //
               if (iNivelTabela > 1) then
                  begin
                     DestrTabelaMemoria(iNivelTabela);
                     {Antes de Decrementar o Array que guarda o Codigo
                     limpar ele, para usar sua posicao para outro codigo}
                     tCodigoOP[iNivelTabela] := '';
                     Dec(iNivelTabela);
                     Edit1.Text := tCodigoOP[iNivelTabela];
                  end;
           end;
      except on E:EDataBaseError do
         uteis.erro  (pchar('Erro ao Localizar o Item do Nivel 1 ! '+e.message));
      end;
    finally
       //
    end;
end;

procedure TFormOrdServCentroB.IncluirOP(wORIGEM,wOP, wPRODUTO, wProdutoPai, wEmpresa : String; wQtdeProduzir : Currency);
Var
  wTipoOP : String[1];
begin
    try
      if (RAD_OA.checked ) then
         wTipoOP := 'A';
      if (RAD_OR.checked ) then
         wTipoOP := 'R';
      if (RAD_OP.checked ) then
         wTipoOP := 'P';
      //
      sRefer_PaiOP := wProdutoPai;
      //
      if (wProduto = wProdutoPai) then
         begin
             wSql1 := 'INSERT INTO OSV0001 ('+
                      'OSV_ORIGEM_PAI,'+
                      'OSV_CODIGO,'+
                      'FTC_CRIACAO,'+
                      'OSV_EMISSAO,'+
                      'OSV_QTDE,'+
                      'OSV_PRECOUNIT,'+
                      'FTC_TUP,'+
                      'PRD_REFER,'+
                      'PED_CODIGO,'+
                      'OSV_QTDE1,'+
                      'OSV_QTDE2,'+
                      'OSV_QTDE3,'+
                      'OSV_QTDE4,'+
                      'OSV_QTDE5,'+
                      'OSV_QTDE6,'+
                      'OSV_QTDE7,'+
                      'OSV_QTDE8,'+
                      'OSV_STATUS,'+
                      'EMP_CODIGO)';
             wSql2 := 'VALUES ('''+wORIGEM+''','''+
                                   wOP+''','+
                                   iif(SqlCdsBuscaFichaFTC_CRIACAO.IsNull=True,'null',chr(39)+DataAmericana(SqlCdsBuscaFichaFTC_CRIACAO.Text)+chr(39))+','''+
                                   DataAmericana(DateToStr(now))+''','''+
                                   ValorAmericano(CurrToStr(wQtdeProduzir))+''','''+
                                   ValorAmericano(SqlCdsBuscaFichaPRD_PCUSTO.Text)+''','''+
                                   ValorAmericano(SqlCdsBuscaFichaFTC_TUP.Text)+''','''+
                                   wPRODUTO+''','+
                                   IIF(SqlCdsConsumoPED_CODIGO.AsString='','null',chr(39)+SqlCdsConsumoPED_CODIGO.AsString+chr(39))+','''+
                                   IIF(FrmMenu.wVariacoes = 'S',ValorAmericano(SqlCdsConsumoWQTDE1.Text),'0')+''','''+
                                   IIF(FrmMenu.wVariacoes = 'S',ValorAmericano(SqlCdsConsumoWQTDE2.Text),'0')+''','''+
                                   IIF(FrmMenu.wVariacoes = 'S',ValorAmericano(SqlCdsConsumoWQTDE3.Text),'0')+''','''+
                                   IIF(FrmMenu.wVariacoes = 'S',ValorAmericano(SqlCdsConsumoWQTDE4.Text),'0')+''','''+
                                   IIF(FrmMenu.wVariacoes = 'S',ValorAmericano(SqlCdsConsumoWQTDE5.Text),'0')+''','''+
                                   IIF(FrmMenu.wVariacoes = 'S',ValorAmericano(SqlCdsConsumoWQTDE6.Text),'0')+''','''+
                                   IIF(FrmMenu.wVariacoes = 'S',ValorAmericano(SqlCdsConsumoWQTDE7.Text),'0')+''','''+
                                   IIF(FrmMenu.wVariacoes = 'S',ValorAmericano(SqlCdsConsumoWQTDE8.Text),'0')+''','''+
                                   wTipoOP+''','''+
                                   wEmpresa+''')';
         end
      else
         begin
             wSql1 := 'INSERT INTO OSV0001 ('+
                      'OSV_ORIGEM_PAI,'+
                      'OSV_CODIGO,'+
                      'FTC_CRIACAO,'+
                      'OSV_EMISSAO,'+
                      'OSV_QTDE,'+
                      'OSV_PRECOUNIT,'+
                      'FTC_TUP,'+
                      'PRD_REFER,'+
                      'PED_CODIGO,'+
                      'OSV_STATUS,'+
                      'EMP_CODIGO)';
             wSql2 := 'VALUES ('''+wORIGEM+''','''+
                                   wOP+''','+
                                   iif(SqlCdsBuscaFichaFTC_CRIACAO.IsNull=True,'null',chr(39)+DataAmericana(SqlCdsBuscaFichaFTC_CRIACAO.Text)+chr(39))+','''+
                                   DataAmericana(DateToStr(now))+''','''+
                                   ValorAmericano(CurrToStr(wQtdeProduzir))+''','''+
                                   ValorAmericano(SqlCdsBuscaFichaPRD_PCUSTO.Text)+''','''+
                                   ValorAmericano(SqlCdsBuscaFichaFTC_TUP.Text)+''','''+
                                   wPRODUTO+''','+
                                   IIF(SqlCdsConsumoPED_CODIGO.AsString='','null',chr(39)+SqlCdsConsumoPED_CODIGO.AsString+chr(39))+','''+
                                   wTipoOP+''','''+
                                   wEmpresa+''')';
         end;
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=wSql1+wSql2;
      DataCadastros.sqlUpdate.Execsql;
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao incluir a Ordem de Produção ! '+e.message));
    end;
end;

procedure TFormOrdServCentroB.IncluirItensOP(pORIGEM,pORDEM, pREFER, pREFERITEM,
  pEMPRESA,pSigla,pStatus: String; pConsumido, pQtde1, pQtde2, pQtde3, pQtde4, pQtde5, pQtde6,
  pQtde7, pQtde8, pReservado, pEmpenho: Currency);
Var
  xRefer,
  xReferItens : String;
begin
    try
      wSql1 := 'INSERT INTO OSV_IT02 ('+
               'OSI_CODIGO_ORIGEM,'+
               'OSI_CODIGO_ARVORE,'+
               'OSV_CODIGO,'+
               'PRD_REFER,'+
               'PRD_REFER_ITENS,'+
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
               'EMP_CODIGO) ';

      wSql2 := 'VALUES ('''+pOrigem+''','''+
                            pORDEM+''','''+
                            pORDEM+''','''+
                            pREFER+''','''+
                            pREFERITEM+''','''+
                            ValorAmericano(CurrToStr(pConsumido))+''','''+
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
                            pEMPRESA+''')';
      //
      xRefer      := pRefer;
      xReferItens := pReferItem;
      tQtde       := pConsumido;
      //
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=wSql1+wSql2;
      DataCadastros.sqlUpdate.Execsql;
      //
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao inserir os itens na tabela OSV_IT02 ! '+E.MESSAGE));
    end;
end;

procedure TFormOrdServCentroB.LimparGrids;
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
    {Excluir os produtos da tabela PSV0000}
    DataCadastros.sqlUpdate.Close;
    DataCadastros.SqlUpdate.sql.text :='DELETE FROM PSV0000 ';
    DataCadastros.sqlUpdate.Execsql;
    {Excluir os itens da tabela PSV_IT01}
    DataCadastros.sqlUpdate.Close;
    DataCadastros.SqlUpdate.sql.text :='DELETE FROM PSV_IT01 ';
    DataCadastros.sqlUpdate.Execsql;
    {ZERA OS GENERATORS GEN_PSV0000}
    DataCadastros.sqlUpdate.Close;
    DataCadastros.SqlUpdate.sql.text :='SET GENERATOR GEN_PSV0000 TO 0';
    DataCadastros.sqlUpdate.Execsql;
    {Atualizando os Grids}
    SqlCdsPsvGrupo.Refresh;
    SqlCdsPs2.Refresh;
end;

procedure TFormOrdServCentroB.EdtPedidoEnter(Sender: tObject);
begin
    EdtPedido.Color := $0080FFFF;
end;

procedure TFormOrdServCentroB.EdtReferenciaEnter(Sender: tObject);
begin
    EdtReferencia.Color := $0080FFFF;
end;

procedure TFormOrdServCentroB.CurrQtdeEnter(Sender: tObject);
begin
    CurrQtde.Color := $0080FFFF;
end;

function TFormOrdServCentroB.AtribuirLetra: String;
begin
    try
//    66666777777777788888888889
//    56789012345678901234567890
//    ABCdEFGHIJKLMNOPQRSTUVWXYZ
{
      if (wLETRA2<65) then
         begin
             wLETRA2 := 65;
         end
      else
         begin
}
             if (X >=1) and (X <= 26) then
                begin
                    INC(wLETRA2);
                    wCOLUNA := CHAR(ord(wLETRA1))+CHAR(ord(wLETRA2));
                end
             else
                begin
                    X := 1;
                    wLETRA2 := 65;
                    INC(wLETRA1);
                    wCOLUNA := CHAR(ord(wLETRA1))+CHAR(ord(wLETRA2));
                end;
//         end;
      Result := wColuna;
    except on E:EDataBaseError do
      uteis.erro  (pchar('erro ao gerar o codigo ! '));
    end;
end;


procedure TFormOrdServCentroB.Atualiza_Flag_Item_Pedido(wFlag, wPedido,
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

procedure TFormOrdServCentroB.Inserir_Separacao_Previsao(pEmpresa,pPedido,pMaterial,pUnd,pMode1 : String;pQtde1,pQualMod,pCusto : Double);
begin
    try
      {Inserir a Qtde da simulacao para obter o saldo}
      wSql1 := 'INSERT INTO PSV0000 ('+
                   'EMP_CODIGO,'+
                   'PED_CODIGO,'+
                   'PRD_REFER,'+
                   'PSV_UND,'+
                   'PSV_MODE1,'+
                   'PSV_QUANT1,'+
                   'PSV_QUALMOD,'+
                   'PSV_CUSTO)';
      wSql2 := 'VALUES ('''+pEmpresa+''','''+
                            pPEDIDO+''','''+
                            pMaterial+''','''+
                            pUnd+''','''+
                            pMode1+''','''+
                            ValorAmericano(FloatToStr(pQtde1))+''','''+
                            ValorAmericano(FloatToStr(pQualMod))+''','''+
                            ValorAmericano(FloatToStr(pCusto))+''')';
      //
      DataCadastros.sqlUpdate.close;
      DataCadastros.SqlUpdate.sql.text :=wSql1+wSql2;
      DataCadastros.sqlUpdate.Execsql;
    except on E:EDataBaseError do
      uteis.erro  (pchar('Erro ao inserir o Registro !'+e.Message));
    end;
end;

procedure TFormOrdServCentroB.IncluirQtdenoCampoSimulcao(pEmpresa,pRefer,pQtde:String);
begin
    try
      wSql1      := 'Update PRD0000 set PRD_SIMULACAO = PRD_SIMULACAO + ('+pQTDE+') ';
      wSeleciona := 'Where EMP_CODIGO = '''+pEmpresa+''' AND PRD_REFER = '''+pRefer+'''';
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=wSql1+wSeleciona;
      DataCadastros.sqlUpdate.Execsql;
    except on E:EDataBaseError do
      uteis.erro  (pchar('Erro ao inserir a quantidade no campo simulação ! '+e.message));
    end;
end;

end.

